@interface SWViewController
- (BOOL)allowsRemoteInspection;
- (BOOL)webView:(id)a3 shouldPreviewElement:(id)a4;
- (NSURL)URL;
- (SWViewController)initWithWebView:(id)a3 setupManager:(id)a4 scriptsManager:(id)a5 messageHandlerManager:(id)a6 navigationManager:(id)a7 errorReporter:(id)a8 documentStateReporter:(id)a9 timeoutManager:(id)a10 terminationManager:(id)a11 contentRuleManager:(id)a12 reachabilityProvider:(id)a13 logger:(id)a14 sessionManager:(id)a15 datastoreSynchronizationManager:(id)a16 localDatastoreManager:(id)a17 URLSchemeHandlerManager:(id)a18;
- (id)accessibilityElements;
- (id)inputAccessoryView;
- (id)webView:(id)a3 previewingViewControllerForElement:(id)a4 defaultActions:(id)a5;
- (void)_webView:(id)a3 navigation:(id)a4 didSameDocumentNavigation:(int64_t)a5;
- (void)initiateLoadingWithLoader:(id)a3;
- (void)loadHTMLString:(id)a3 baseURL:(id)a4;
- (void)loadLocalDatastore:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)loadURL:(id)a3 cachePolicy:(unint64_t)a4;
- (void)prewarm;
- (void)removeMenusForIdentifiers:(id)a3;
- (void)setHiddenPocketEdges:(unint64_t)a3;
- (void)setInputAccessoryView:(id)a3;
- (void)setShortcutsBarWithLeadingGroups:(id)a3 trailingGroups:(id)a4;
- (void)setTextInputTraits:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)webView:(id)a3 commitPreviewingViewController:(id)a4;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5;
- (void)webViewSetNeedsLayout;
- (void)webViewWebContentProcessDidTerminate:(id)a3;
@end

@implementation SWViewController

- (SWViewController)initWithWebView:(id)a3 setupManager:(id)a4 scriptsManager:(id)a5 messageHandlerManager:(id)a6 navigationManager:(id)a7 errorReporter:(id)a8 documentStateReporter:(id)a9 timeoutManager:(id)a10 terminationManager:(id)a11 contentRuleManager:(id)a12 reachabilityProvider:(id)a13 logger:(id)a14 sessionManager:(id)a15 datastoreSynchronizationManager:(id)a16 localDatastoreManager:(id)a17 URLSchemeHandlerManager:(id)a18
{
  v23 = a3;
  v42 = a4;
  v41 = a5;
  v40 = a6;
  v39 = a7;
  v29 = a8;
  v38 = a8;
  v37 = a9;
  v24 = a10;
  v44 = a11;
  v36 = a12;
  v35 = a13;
  v34 = a14;
  v33 = a15;
  v32 = a16;
  v31 = a17;
  v30 = a18;
  v50.receiver = self;
  v50.super_class = SWViewController;
  v25 = [(SWViewController *)&v50 initWithNibName:0 bundle:0];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_webView, a3);
    [(SWWebView *)v26->_webView setNavigationDelegate:v26];
    [(SWWebView *)v26->_webView setUIDelegate:v26];
    [(SWWebView *)v26->_webView _setFullscreenDelegate:v26];
    [(SWWebView *)v26->_webView _setInputDelegate:v26];
    objc_storeStrong(&v26->_setupManager, a4);
    objc_storeStrong(&v26->_scriptsManager, a5);
    objc_storeStrong(&v26->_messageHandlerManager, a6);
    objc_storeStrong(&v26->_navigationManager, a7);
    objc_storeStrong(&v26->_errorReporter, v29);
    objc_storeStrong(&v26->_documentStateReporter, a9);
    objc_storeStrong(&v26->_timeoutManager, a10);
    objc_storeStrong(&v26->_terminationManager, a11);
    objc_storeStrong(&v26->_contentRuleManager, a12);
    objc_storeStrong(&v26->_reachabilityProvider, a13);
    objc_storeStrong(&v26->_logger, a14);
    objc_storeStrong(&v26->_sessionManager, a15);
    objc_storeStrong(&v26->_datastoreSynchronizationManager, a16);
    objc_storeStrong(&v26->_localDatastoreManager, a17);
    objc_storeStrong(&v26->_URLSchemeHandlerManager, a18);
    objc_initWeak(&location, v26);
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __314__SWViewController_initWithWebView_setupManager_scriptsManager_messageHandlerManager_navigationManager_errorReporter_documentStateReporter_timeoutManager_terminationManager_contentRuleManager_reachabilityProvider_logger_sessionManager_datastoreSynchronizationManager_localDatastoreManager_URLSchemeHandlerManager___block_invoke;
    v47[3] = &unk_1E84DB2B8;
    objc_copyWeak(&v48, &location);
    [v24 onTimeout:v47];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __314__SWViewController_initWithWebView_setupManager_scriptsManager_messageHandlerManager_navigationManager_errorReporter_documentStateReporter_timeoutManager_terminationManager_contentRuleManager_reachabilityProvider_logger_sessionManager_datastoreSynchronizationManager_localDatastoreManager_URLSchemeHandlerManager___block_invoke_2;
    v45[3] = &unk_1E84DB2B8;
    objc_copyWeak(&v46, &location);
    [v44 onRetry:v45];
    objc_destroyWeak(&v46);
    objc_destroyWeak(&v48);
    objc_destroyWeak(&location);
  }

  return v26;
}

void __314__SWViewController_initWithWebView_setupManager_scriptsManager_messageHandlerManager_navigationManager_errorReporter_documentStateReporter_timeoutManager_terminationManager_contentRuleManager_reachabilityProvider_logger_sessionManager_datastoreSynchronizationManager_localDatastoreManager_URLSchemeHandlerManager___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x1E695DFF8] URLWithString:@"about:blank"];
  [WeakRetained loadURL:v1];
}

void __314__SWViewController_initWithWebView_setupManager_scriptsManager_messageHandlerManager_navigationManager_errorReporter_documentStateReporter_timeoutManager_terminationManager_contentRuleManager_reachabilityProvider_logger_sessionManager_datastoreSynchronizationManager_localDatastoreManager_URLSchemeHandlerManager___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained loader];
  [v1 load];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = SWViewController;
  [(SWViewController *)&v7 viewDidLoad];
  v3 = [(SWViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v4];

  v5 = [(SWViewController *)self view];
  v6 = [(SWViewController *)self webView];
  [v5 addSubview:v6];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SWViewController;
  [(SWViewController *)&v5 viewDidLayoutSubviews];
  if (!self->_isWebViewPresentingInFullScreen)
  {
    v3 = [(SWViewController *)self webView];
    v4 = [(SWViewController *)self view];
    [v4 bounds];
    [v3 setFrame:?];
  }
}

- (void)prewarm
{
  v3 = [(SWViewController *)self webView];
  v2 = [v3 loadHTMLString:&stru_1F5242A90 baseURL:0];
}

- (void)webViewSetNeedsLayout
{
  v2 = [(SWViewController *)self webView];
  [v2 setNeedsLayout];
}

- (NSURL)URL
{
  v2 = [(SWViewController *)self webView];
  v3 = [v2 URL];

  return v3;
}

- (void)loadURL:(id)a3 cachePolicy:(unint64_t)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __40__SWViewController_loadURL_cachePolicy___block_invoke;
  v12 = &unk_1E84DBB60;
  objc_copyWeak(v14, &location);
  v7 = v6;
  v13 = v7;
  v14[1] = a4;
  v8 = [SWLoader loaderWithBlock:&v9];
  [(SWViewController *)self initiateLoadingWithLoader:v8, v9, v10, v11, v12];

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

void __40__SWViewController_loadURL_cachePolicy___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = [WeakRetained sessionManager];
  [v3 refresh];

  v4 = [a1[4] absoluteString];
  v5 = [v4 isEqualToString:@"about:blank"];

  v6 = objc_loadWeakRetained(a1 + 5);
  v7 = [v6 documentStateReporter];
  v8 = v7;
  if (v5)
  {
    [v7 documentWillUnload];
  }

  else
  {
    [v7 documentStartedLoading];
  }

  v9 = objc_loadWeakRetained(a1 + 5);
  v10 = [v9 logger];
  v11 = [a1[4] absoluteString];
  [v10 bindValue:v11 forKey:@"URL"];

  v12 = objc_loadWeakRetained(a1 + 5);
  v13 = [v12 contentRuleManager];
  v14 = [v13 configureContentRules];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __40__SWViewController_loadURL_cachePolicy___block_invoke_2;
  v16[3] = &unk_1E84DBB38;
  v17 = a1[4];
  objc_copyWeak(v18, a1 + 5);
  v18[1] = a1[6];
  v15 = [v14 then:v16];

  objc_destroyWeak(v18);
}

id __40__SWViewController_loadURL_cachePolicy___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) isFileURL];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [MEMORY[0x1E696AD68] requestWithURL:v3];
    [v4 setAttribution:1];
    v5 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:*(a1 + 32) resolvingAgainstBaseURL:1];
    [v5 setQuery:0];
    [v5 setFragment:0];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [WeakRetained webView];
    v8 = [v5 URL];
    v9 = [v8 URLByDeletingLastPathComponent];
    v10 = [v7 loadFileRequest:v4 allowingReadAccessToURL:v9];
  }

  else
  {
    v4 = [MEMORY[0x1E696AD68] requestWithURL:v3 cachePolicy:*(a1 + 48) timeoutInterval:10.0];
    [v4 setAttribution:1];
    v5 = objc_loadWeakRetained((a1 + 40));
    WeakRetained = [v5 webView];
    v10 = [WeakRetained loadRequest:v4];
  }

  return v10;
}

- (void)loadHTMLString:(id)a3 baseURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __43__SWViewController_loadHTMLString_baseURL___block_invoke;
  v14 = &unk_1E84DBBB0;
  objc_copyWeak(&v17, &location);
  v8 = v7;
  v15 = v8;
  v9 = v6;
  v16 = v9;
  v10 = [SWLoader loaderWithBlock:&v11];
  [(SWViewController *)self initiateLoadingWithLoader:v10, v11, v12, v13, v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __43__SWViewController_loadHTMLString_baseURL___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained sessionManager];
  [v3 refresh];

  v4 = [a1[4] absoluteString];
  v5 = [v4 isEqualToString:@"about:blank"];

  v6 = objc_loadWeakRetained(a1 + 6);
  v7 = [v6 documentStateReporter];
  v8 = v7;
  if (v5)
  {
    [v7 documentWillUnload];
  }

  else
  {
    [v7 documentStartedLoading];
  }

  v9 = objc_loadWeakRetained(a1 + 6);
  v10 = [v9 logger];
  v11 = [a1[4] absoluteString];
  [v10 bindValue:v11 forKey:@"baseURL"];

  v12 = objc_loadWeakRetained(a1 + 6);
  v13 = [v12 contentRuleManager];
  v14 = [v13 configureContentRules];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __43__SWViewController_loadHTMLString_baseURL___block_invoke_2;
  v16[3] = &unk_1E84DBB88;
  v17 = a1[4];
  objc_copyWeak(&v19, a1 + 6);
  v18 = a1[5];
  v15 = [v14 then:v16];

  objc_destroyWeak(&v19);
}

id __43__SWViewController_loadHTMLString_baseURL___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD68] requestWithURL:*(a1 + 32)];
  [v2 setAttribution:1];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained webView];
  v5 = [v4 loadSimulatedRequest:v2 responseHTMLString:*(a1 + 40)];

  return v5;
}

- (void)loadLocalDatastore:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v12 = [(SWViewController *)self localDatastoreManager];
  v10 = [(SWViewController *)self sessionManager];
  v11 = [v10 session];
  [v12 updateDatastore:v9 originatingSession:v11 options:a4 completion:v8];
}

- (void)initiateLoadingWithLoader:(id)a3
{
  [(SWViewController *)self setLoader:a3];
  v4 = [(SWViewController *)self loader];
  [v4 load];
}

- (BOOL)allowsRemoteInspection
{
  v2 = [(SWViewController *)self webView];
  v3 = [v2 _allowsRemoteInspection];

  return v3;
}

- (void)webViewWebContentProcessDidTerminate:(id)a3
{
  v3 = [(SWViewController *)self terminationManager];
  [v3 webContentProcessTerminated];
}

- (void)_webView:(id)a3 navigation:(id)a4 didSameDocumentNavigation:(int64_t)a5
{
  v5 = [(SWViewController *)self documentStateReporter:a3];
  [v5 documentIsReady];
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v12 = a4;
  v7 = a5;
  if ([v12 navigationType])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(SWViewController *)self navigationManager];
    v10 = [v12 request];
    v11 = [v9 actionForRequest:v10];

    if (v11 > 2)
    {
      goto LABEL_6;
    }

    v8 = qword_1D7651930[v11];
  }

  v7[2](v7, v8);
LABEL_6:
}

- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5
{
  v6 = a5;
  v7 = [(SWViewController *)self errorReporter];
  [v7 reportError:v6];
}

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  v6 = a5;
  v7 = [(SWViewController *)self errorReporter];
  [v7 reportError:v6];
}

- (BOOL)webView:(id)a3 shouldPreviewElement:(id)a4
{
  v5 = a4;
  v6 = [(SWViewController *)self navigationManager];
  v7 = MEMORY[0x1E696AF68];
  v8 = [v5 linkURL];

  v9 = [v7 requestWithURL:v8];
  LOBYTE(v7) = [v6 shouldPreviewRequest:v9];

  return v7;
}

- (id)webView:(id)a3 previewingViewControllerForElement:(id)a4 defaultActions:(id)a5
{
  v6 = a4;
  v7 = [(SWViewController *)self navigationManager];
  v8 = MEMORY[0x1E696AF68];
  v9 = [v6 linkURL];

  v10 = [v8 requestWithURL:v9];
  v11 = [v7 previewViewControllerForRequest:v10];

  return v11;
}

- (void)webView:(id)a3 commitPreviewingViewController:(id)a4
{
  v5 = a4;
  v6 = [(SWViewController *)self navigationManager];
  [v6 commitViewController:v5];
}

- (id)accessibilityElements
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(SWViewController *)self webView];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)inputAccessoryView
{
  v2 = [(SWViewController *)self webView];
  v3 = [v2 inputAccessoryView];

  return v3;
}

- (void)setInputAccessoryView:(id)a3
{
  v4 = a3;
  v5 = [(SWViewController *)self webView];
  [v5 setInputAccessoryView:v4];

  v6 = [(SWViewController *)self firstResponder];
  [v6 reloadInputViews];
}

- (void)setTextInputTraits:(id)a3
{
  v4 = a3;
  v5 = [(SWViewController *)self webView];
  [v5 setTextInputTraits:v4];
}

- (void)setShortcutsBarWithLeadingGroups:(id)a3 trailingGroups:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SWViewController *)self webView];
  [v8 setShortcutsBarWithLeadingGroups:v7 trailingGroups:v6];
}

- (void)removeMenusForIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(SWViewController *)self webView];
  [v5 removeMenusForIdentifiers:v4];
}

- (void)setHiddenPocketEdges:(unint64_t)a3
{
  v5 = [(SWViewController *)self webView];
  v4 = [v5 scrollView];
  [v4 _setHiddenPocketEdges:a3];
}

@end