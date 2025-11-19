@interface SUSSoftwareUpdateReleaseNotesDetail
- (SUSSoftwareUpdateReleaseNotesDetail)init;
- (void)setReleaseNotes:(id)a3;
- (void)viewDidLoad;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
@end

@implementation SUSSoftwareUpdateReleaseNotesDetail

- (SUSSoftwareUpdateReleaseNotesDetail)init
{
  v9 = a2;
  v10 = 0;
  v8.receiver = self;
  v8.super_class = SUSSoftwareUpdateReleaseNotesDetail;
  v10 = [(SUSSoftwareUpdateReleaseNotesDetail *)&v8 init];
  objc_storeStrong(&v10, v10);
  if (v10)
  {
    v4 = v10;
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"ABOUT_THIS_UPDATE"];
    v5 = [v7 localizedStringForKey:? value:? table:?];
    [(SUSSoftwareUpdateReleaseNotesDetail *)v4 setTitle:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
  }

  v3 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(&v10, 0);
  return v3;
}

- (void)viewDidLoad
{
  v56 = self;
  v55[1] = a2;
  v18 = MEMORY[0x277CCACA8];
  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v20 localizedStringForKey:@"RELEASE_NOTES_HTML_FONT" value:&stru_287B74428 table:@"Software Update"];
  v55[0] = [v18 stringWithFormat:@"<span style=%@>%@</span>", v19, v56->_releaseNotes];
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  v2 = objc_alloc(MEMORY[0x277CE3850]);
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  webView = v56->_webView;
  v56->_webView = v3;
  *&v5 = MEMORY[0x277D82BD8](webView).n128_u64[0];
  v21 = [(SUSSoftwareUpdateReleaseNotesDetail *)v56 webView];
  [(WKWebView *)v21 setNavigationDelegate:v56];
  *&v6 = MEMORY[0x277D82BD8](v21).n128_u64[0];
  v22 = [(SUSSoftwareUpdateReleaseNotesDetail *)v56 webView];
  v7 = [(WKWebView *)v22 loadHTMLString:v55[0] baseURL:?];
  *&v8 = MEMORY[0x277D82BD8](v22).n128_u64[0];
  v23 = [(SUSSoftwareUpdateReleaseNotesDetail *)v56 webView];
  [(WKWebView *)v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v9 = MEMORY[0x277D82BD8](v23).n128_u64[0];
  v24 = [(SUSSoftwareUpdateReleaseNotesDetail *)v56 webView];
  [(WKWebView *)v24 setOpaque:0];
  *&v10 = MEMORY[0x277D82BD8](v24).n128_u64[0];
  v26 = [(SUSSoftwareUpdateReleaseNotesDetail *)v56 webView];
  v25 = [MEMORY[0x277D75348] clearColor];
  [(WKWebView *)v26 setBackgroundColor:?];
  MEMORY[0x277D82BD8](v25);
  *&v11 = MEMORY[0x277D82BD8](v26).n128_u64[0];
  v27 = [(SUSSoftwareUpdateReleaseNotesDetail *)v56 webView];
  [(WKWebView *)v27 setAccessibilityIdentifier:@"SUSSoftwareUpdateReleaseNotesDetailReleaseNotes"];
  *&v12 = MEMORY[0x277D82BD8](v27).n128_u64[0];
  v29 = [(SUSSoftwareUpdateReleaseNotesDetail *)v56 view];
  v28 = [(SUSSoftwareUpdateReleaseNotesDetail *)v56 webView];
  [v29 addSubview:?];
  MEMORY[0x277D82BD8](v28);
  *&v13 = MEMORY[0x277D82BD8](v29).n128_u64[0];
  v35 = [(SUSSoftwareUpdateReleaseNotesDetail *)v56 webView];
  v34 = [(WKWebView *)v35 topAnchor];
  v33 = [(SUSSoftwareUpdateReleaseNotesDetail *)v56 view];
  v32 = [v33 safeAreaLayoutGuide];
  v31 = [v32 topAnchor];
  v30 = [v34 constraintEqualToAnchor:?];
  [v30 setActive:1];
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v34);
  *&v14 = MEMORY[0x277D82BD8](v35).n128_u64[0];
  v41 = [(SUSSoftwareUpdateReleaseNotesDetail *)v56 webView];
  v40 = [(WKWebView *)v41 leadingAnchor];
  v39 = [(SUSSoftwareUpdateReleaseNotesDetail *)v56 view];
  v38 = [v39 safeAreaLayoutGuide];
  v37 = [v38 leadingAnchor];
  v36 = [v40 constraintEqualToAnchor:?];
  [v36 setActive:1];
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](v40);
  *&v15 = MEMORY[0x277D82BD8](v41).n128_u64[0];
  v47 = [(SUSSoftwareUpdateReleaseNotesDetail *)v56 webView];
  v46 = [(WKWebView *)v47 trailingAnchor];
  v45 = [(SUSSoftwareUpdateReleaseNotesDetail *)v56 view];
  v44 = [v45 safeAreaLayoutGuide];
  v43 = [v44 trailingAnchor];
  v42 = [v46 constraintEqualToAnchor:?];
  [v42 setActive:1];
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](v46);
  *&v16 = MEMORY[0x277D82BD8](v47).n128_u64[0];
  v53 = [(SUSSoftwareUpdateReleaseNotesDetail *)v56 webView];
  v52 = [(WKWebView *)v53 bottomAnchor];
  v51 = [(SUSSoftwareUpdateReleaseNotesDetail *)v56 view];
  v50 = [v51 safeAreaLayoutGuide];
  v49 = [v50 bottomAnchor];
  v48 = [v52 constraintEqualToAnchor:?];
  [v48 setActive:1];
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BD8](v49);
  MEMORY[0x277D82BD8](v50);
  MEMORY[0x277D82BD8](v51);
  MEMORY[0x277D82BD8](v52);
  *&v17 = MEMORY[0x277D82BD8](v53).n128_u64[0];
  v54.receiver = v56;
  v54.super_class = SUSSoftwareUpdateReleaseNotesDetail;
  [(SUSSoftwareUpdateReleaseNotesDetail *)&v54 viewDidLoad];
  objc_storeStrong(v55, 0);
}

- (void)setReleaseNotes:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0] != v9->_releaseNotes)
  {
    objc_storeStrong(&v9->_releaseNotes, location[0]);
    v5 = +[SUSReleaseNotesProcessor sharedInstance];
    v7 = [(SUSReleaseNotesProcessor *)v5 normalizeHtmlReleaseNotes:v9->_releaseNotes];
    *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
    v6 = [(SUSSoftwareUpdateReleaseNotesDetail *)v9 webView];
    v4 = [(WKWebView *)v6 loadHTMLString:v7 baseURL:?];
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  if ([v12 navigationType])
  {
    (*(v11 + 2))(v11, 1);
  }

  else
  {
    v8 = [MEMORY[0x277D75128] sharedApplication];
    v7 = [v12 request];
    v6 = [v7 URL];
    [v8 openURL:? options:? completionHandler:?];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    v5 = MEMORY[0x277D82BD8](v8);
    (*(v11 + 2))(v11, 0, v5);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

@end