{% if not (theme.duoshuo and theme.duoshuo.shortname) and not theme.duoshuo_shortname %}
{% if theme.gitalk.enable and theme.gitalk.client_id %}
<!-- LOCAL: You can save these files to your site and update links -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/gitalk@1/dist/gitalk.css">
  <script src="https://cdn.jsdelivr.net/npm/gitalk@1/dist/gitalk.min.js"></script>
<!-- END LOCAL -->

    {% if theme.gitalk.cleanly %}
      <style>
      </style>
    {% endif %}

    {% if page.comments %}
      <script type="text/javascript">
      function renderGitalk(){
        var t = '{{ page.title }}'.replace(/,/, "，");
        var gitalk = new Gitalk({
            clientID: '{{ theme.gitalk.client_id }}',
            clientSecret: '{{ theme.gitalk.client_secret }}',
            repo: '{{ theme.gitalk.github_repo }}',
            owner: '{{ theme.gitalk.github_user }}',
            admin: ['{{ theme.gitalk.github_user }}'],
            id: t.length > 45 ? (t.substring(0, 45) + '...') : t,
            labels: ['Gitalk'],
            distractionFreeMode: false
            });
        gitalk.render('gitalk-container');
      }

      {% if not theme.gitalk.lazy %}
      renderGitalk();
      {% else %}
      function showGitalk(){
        document.getElementById("gitalk-display-button").style.display = "none";
        document.getElementById("gitalk-container").style.display = "block";
        renderGitalk();
      }
      {% endif %}
      </script>
    {% endif %}

{% endif %}
{% endif %}
