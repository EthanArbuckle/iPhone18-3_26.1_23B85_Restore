@interface SUSSoftwareUpdateReleaseNotesDetail
- (SUSSoftwareUpdateReleaseNotesDetail)init;
- (void)setReleaseNotes:(id)notes;
- (void)viewDidLoad;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
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
  selfCopy = self;
  v55[1] = a2;
  v18 = MEMORY[0x277CCACA8];
  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v20 localizedStringForKey:@"RELEASE_NOTES_HTML_FONT" value:&stru_287B74428 table:@"Software Update"];
  v55[0] = [v18 stringWithFormat:@"<span style=%@>%@</span>", v19, selfCopy->_releaseNotes];
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  v2 = objc_alloc(MEMORY[0x277CE3850]);
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  webView = selfCopy->_webView;
  selfCopy->_webView = v3;
  *&v5 = MEMORY[0x277D82BD8](webView).n128_u64[0];
  webView = [(SUSSoftwareUpdateReleaseNotesDetail *)selfCopy webView];
  [(WKWebView *)webView setNavigationDelegate:selfCopy];
  *&v6 = MEMORY[0x277D82BD8](webView).n128_u64[0];
  webView2 = [(SUSSoftwareUpdateReleaseNotesDetail *)selfCopy webView];
  v7 = [(WKWebView *)webView2 loadHTMLString:v55[0] baseURL:?];
  *&v8 = MEMORY[0x277D82BD8](webView2).n128_u64[0];
  webView3 = [(SUSSoftwareUpdateReleaseNotesDetail *)selfCopy webView];
  [(WKWebView *)webView3 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v9 = MEMORY[0x277D82BD8](webView3).n128_u64[0];
  webView4 = [(SUSSoftwareUpdateReleaseNotesDetail *)selfCopy webView];
  [(WKWebView *)webView4 setOpaque:0];
  *&v10 = MEMORY[0x277D82BD8](webView4).n128_u64[0];
  webView5 = [(SUSSoftwareUpdateReleaseNotesDetail *)selfCopy webView];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(WKWebView *)webView5 setBackgroundColor:?];
  MEMORY[0x277D82BD8](clearColor);
  *&v11 = MEMORY[0x277D82BD8](webView5).n128_u64[0];
  webView6 = [(SUSSoftwareUpdateReleaseNotesDetail *)selfCopy webView];
  [(WKWebView *)webView6 setAccessibilityIdentifier:@"SUSSoftwareUpdateReleaseNotesDetailReleaseNotes"];
  *&v12 = MEMORY[0x277D82BD8](webView6).n128_u64[0];
  view = [(SUSSoftwareUpdateReleaseNotesDetail *)selfCopy view];
  webView7 = [(SUSSoftwareUpdateReleaseNotesDetail *)selfCopy webView];
  [view addSubview:?];
  MEMORY[0x277D82BD8](webView7);
  *&v13 = MEMORY[0x277D82BD8](view).n128_u64[0];
  webView8 = [(SUSSoftwareUpdateReleaseNotesDetail *)selfCopy webView];
  topAnchor = [(WKWebView *)webView8 topAnchor];
  view2 = [(SUSSoftwareUpdateReleaseNotesDetail *)selfCopy view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v30 = [topAnchor constraintEqualToAnchor:?];
  [v30 setActive:1];
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide);
  MEMORY[0x277D82BD8](view2);
  MEMORY[0x277D82BD8](topAnchor);
  *&v14 = MEMORY[0x277D82BD8](webView8).n128_u64[0];
  webView9 = [(SUSSoftwareUpdateReleaseNotesDetail *)selfCopy webView];
  leadingAnchor = [(WKWebView *)webView9 leadingAnchor];
  view3 = [(SUSSoftwareUpdateReleaseNotesDetail *)selfCopy view];
  safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
  v36 = [leadingAnchor constraintEqualToAnchor:?];
  [v36 setActive:1];
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide2);
  MEMORY[0x277D82BD8](view3);
  MEMORY[0x277D82BD8](leadingAnchor);
  *&v15 = MEMORY[0x277D82BD8](webView9).n128_u64[0];
  webView10 = [(SUSSoftwareUpdateReleaseNotesDetail *)selfCopy webView];
  trailingAnchor = [(WKWebView *)webView10 trailingAnchor];
  view4 = [(SUSSoftwareUpdateReleaseNotesDetail *)selfCopy view];
  safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide3 trailingAnchor];
  v42 = [trailingAnchor constraintEqualToAnchor:?];
  [v42 setActive:1];
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide3);
  MEMORY[0x277D82BD8](view4);
  MEMORY[0x277D82BD8](trailingAnchor);
  *&v16 = MEMORY[0x277D82BD8](webView10).n128_u64[0];
  webView11 = [(SUSSoftwareUpdateReleaseNotesDetail *)selfCopy webView];
  bottomAnchor = [(WKWebView *)webView11 bottomAnchor];
  view5 = [(SUSSoftwareUpdateReleaseNotesDetail *)selfCopy view];
  safeAreaLayoutGuide4 = [view5 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
  v48 = [bottomAnchor constraintEqualToAnchor:?];
  [v48 setActive:1];
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide4);
  MEMORY[0x277D82BD8](view5);
  MEMORY[0x277D82BD8](bottomAnchor);
  *&v17 = MEMORY[0x277D82BD8](webView11).n128_u64[0];
  v54.receiver = selfCopy;
  v54.super_class = SUSSoftwareUpdateReleaseNotesDetail;
  [(SUSSoftwareUpdateReleaseNotesDetail *)&v54 viewDidLoad];
  objc_storeStrong(v55, 0);
}

- (void)setReleaseNotes:(id)notes
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, notes);
  if (location[0] != selfCopy->_releaseNotes)
  {
    objc_storeStrong(&selfCopy->_releaseNotes, location[0]);
    v5 = +[SUSReleaseNotesProcessor sharedInstance];
    v7 = [(SUSReleaseNotesProcessor *)v5 normalizeHtmlReleaseNotes:selfCopy->_releaseNotes];
    *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
    webView = [(SUSSoftwareUpdateReleaseNotesDetail *)selfCopy webView];
    v4 = [(WKWebView *)webView loadHTMLString:v7 baseURL:?];
    MEMORY[0x277D82BD8](webView);
    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v12 = 0;
  objc_storeStrong(&v12, action);
  v11 = 0;
  objc_storeStrong(&v11, handler);
  if ([v12 navigationType])
  {
    (*(v11 + 2))(v11, 1);
  }

  else
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    request = [v12 request];
    v6 = [request URL];
    [mEMORY[0x277D75128] openURL:? options:? completionHandler:?];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](request);
    v5 = MEMORY[0x277D82BD8](mEMORY[0x277D75128]);
    (*(v11 + 2))(v11, 0, v5);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

@end