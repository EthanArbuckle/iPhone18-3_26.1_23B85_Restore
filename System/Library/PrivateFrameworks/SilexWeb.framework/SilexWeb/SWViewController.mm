@interface SWViewController
- (BOOL)allowsRemoteInspection;
- (BOOL)webView:(id)view shouldPreviewElement:(id)element;
- (NSURL)URL;
- (SWViewController)initWithWebView:(id)view setupManager:(id)manager scriptsManager:(id)scriptsManager messageHandlerManager:(id)handlerManager navigationManager:(id)navigationManager errorReporter:(id)reporter documentStateReporter:(id)stateReporter timeoutManager:(id)self0 terminationManager:(id)self1 contentRuleManager:(id)self2 reachabilityProvider:(id)self3 logger:(id)self4 sessionManager:(id)self5 datastoreSynchronizationManager:(id)self6 localDatastoreManager:(id)self7 URLSchemeHandlerManager:(id)self8;
- (id)accessibilityElements;
- (id)inputAccessoryView;
- (id)webView:(id)view previewingViewControllerForElement:(id)element defaultActions:(id)actions;
- (void)_webView:(id)view navigation:(id)navigation didSameDocumentNavigation:(int64_t)documentNavigation;
- (void)initiateLoadingWithLoader:(id)loader;
- (void)loadHTMLString:(id)string baseURL:(id)l;
- (void)loadLocalDatastore:(id)datastore options:(unint64_t)options completion:(id)completion;
- (void)loadURL:(id)l cachePolicy:(unint64_t)policy;
- (void)prewarm;
- (void)removeMenusForIdentifiers:(id)identifiers;
- (void)setHiddenPocketEdges:(unint64_t)edges;
- (void)setInputAccessoryView:(id)view;
- (void)setShortcutsBarWithLeadingGroups:(id)groups trailingGroups:(id)trailingGroups;
- (void)setTextInputTraits:(id)traits;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)webView:(id)view commitPreviewingViewController:(id)controller;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webViewSetNeedsLayout;
- (void)webViewWebContentProcessDidTerminate:(id)terminate;
@end

@implementation SWViewController

- (SWViewController)initWithWebView:(id)view setupManager:(id)manager scriptsManager:(id)scriptsManager messageHandlerManager:(id)handlerManager navigationManager:(id)navigationManager errorReporter:(id)reporter documentStateReporter:(id)stateReporter timeoutManager:(id)self0 terminationManager:(id)self1 contentRuleManager:(id)self2 reachabilityProvider:(id)self3 logger:(id)self4 sessionManager:(id)self5 datastoreSynchronizationManager:(id)self6 localDatastoreManager:(id)self7 URLSchemeHandlerManager:(id)self8
{
  viewCopy = view;
  managerCopy = manager;
  scriptsManagerCopy = scriptsManager;
  handlerManagerCopy = handlerManager;
  navigationManagerCopy = navigationManager;
  reporterCopy = reporter;
  reporterCopy2 = reporter;
  stateReporterCopy = stateReporter;
  timeoutManagerCopy = timeoutManager;
  terminationManagerCopy = terminationManager;
  ruleManagerCopy = ruleManager;
  providerCopy = provider;
  loggerCopy = logger;
  sessionManagerCopy = sessionManager;
  synchronizationManagerCopy = synchronizationManager;
  datastoreManagerCopy = datastoreManager;
  schemeHandlerManagerCopy = schemeHandlerManager;
  v50.receiver = self;
  v50.super_class = SWViewController;
  v25 = [(SWViewController *)&v50 initWithNibName:0 bundle:0];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_webView, view);
    [(SWWebView *)v26->_webView setNavigationDelegate:v26];
    [(SWWebView *)v26->_webView setUIDelegate:v26];
    [(SWWebView *)v26->_webView _setFullscreenDelegate:v26];
    [(SWWebView *)v26->_webView _setInputDelegate:v26];
    objc_storeStrong(&v26->_setupManager, manager);
    objc_storeStrong(&v26->_scriptsManager, scriptsManager);
    objc_storeStrong(&v26->_messageHandlerManager, handlerManager);
    objc_storeStrong(&v26->_navigationManager, navigationManager);
    objc_storeStrong(&v26->_errorReporter, reporterCopy);
    objc_storeStrong(&v26->_documentStateReporter, stateReporter);
    objc_storeStrong(&v26->_timeoutManager, timeoutManager);
    objc_storeStrong(&v26->_terminationManager, terminationManager);
    objc_storeStrong(&v26->_contentRuleManager, ruleManager);
    objc_storeStrong(&v26->_reachabilityProvider, provider);
    objc_storeStrong(&v26->_logger, logger);
    objc_storeStrong(&v26->_sessionManager, sessionManager);
    objc_storeStrong(&v26->_datastoreSynchronizationManager, synchronizationManager);
    objc_storeStrong(&v26->_localDatastoreManager, datastoreManager);
    objc_storeStrong(&v26->_URLSchemeHandlerManager, schemeHandlerManager);
    objc_initWeak(&location, v26);
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __314__SWViewController_initWithWebView_setupManager_scriptsManager_messageHandlerManager_navigationManager_errorReporter_documentStateReporter_timeoutManager_terminationManager_contentRuleManager_reachabilityProvider_logger_sessionManager_datastoreSynchronizationManager_localDatastoreManager_URLSchemeHandlerManager___block_invoke;
    v47[3] = &unk_1E84DB2B8;
    objc_copyWeak(&v48, &location);
    [timeoutManagerCopy onTimeout:v47];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __314__SWViewController_initWithWebView_setupManager_scriptsManager_messageHandlerManager_navigationManager_errorReporter_documentStateReporter_timeoutManager_terminationManager_contentRuleManager_reachabilityProvider_logger_sessionManager_datastoreSynchronizationManager_localDatastoreManager_URLSchemeHandlerManager___block_invoke_2;
    v45[3] = &unk_1E84DB2B8;
    objc_copyWeak(&v46, &location);
    [terminationManagerCopy onRetry:v45];
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
  view = [(SWViewController *)self view];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [view setBackgroundColor:clearColor];

  view2 = [(SWViewController *)self view];
  webView = [(SWViewController *)self webView];
  [view2 addSubview:webView];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SWViewController;
  [(SWViewController *)&v5 viewDidLayoutSubviews];
  if (!self->_isWebViewPresentingInFullScreen)
  {
    webView = [(SWViewController *)self webView];
    view = [(SWViewController *)self view];
    [view bounds];
    [webView setFrame:?];
  }
}

- (void)prewarm
{
  webView = [(SWViewController *)self webView];
  v2 = [webView loadHTMLString:&stru_1F5242A90 baseURL:0];
}

- (void)webViewSetNeedsLayout
{
  webView = [(SWViewController *)self webView];
  [webView setNeedsLayout];
}

- (NSURL)URL
{
  webView = [(SWViewController *)self webView];
  v3 = [webView URL];

  return v3;
}

- (void)loadURL:(id)l cachePolicy:(unint64_t)policy
{
  lCopy = l;
  objc_initWeak(&location, self);
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __40__SWViewController_loadURL_cachePolicy___block_invoke;
  v12 = &unk_1E84DBB60;
  objc_copyWeak(v14, &location);
  v7 = lCopy;
  v13 = v7;
  v14[1] = policy;
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

- (void)loadHTMLString:(id)string baseURL:(id)l
{
  stringCopy = string;
  lCopy = l;
  objc_initWeak(&location, self);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __43__SWViewController_loadHTMLString_baseURL___block_invoke;
  v14 = &unk_1E84DBBB0;
  objc_copyWeak(&v17, &location);
  v8 = lCopy;
  v15 = v8;
  v9 = stringCopy;
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

- (void)loadLocalDatastore:(id)datastore options:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  datastoreCopy = datastore;
  localDatastoreManager = [(SWViewController *)self localDatastoreManager];
  sessionManager = [(SWViewController *)self sessionManager];
  session = [sessionManager session];
  [localDatastoreManager updateDatastore:datastoreCopy originatingSession:session options:options completion:completionCopy];
}

- (void)initiateLoadingWithLoader:(id)loader
{
  [(SWViewController *)self setLoader:loader];
  loader = [(SWViewController *)self loader];
  [loader load];
}

- (BOOL)allowsRemoteInspection
{
  webView = [(SWViewController *)self webView];
  _allowsRemoteInspection = [webView _allowsRemoteInspection];

  return _allowsRemoteInspection;
}

- (void)webViewWebContentProcessDidTerminate:(id)terminate
{
  terminationManager = [(SWViewController *)self terminationManager];
  [terminationManager webContentProcessTerminated];
}

- (void)_webView:(id)view navigation:(id)navigation didSameDocumentNavigation:(int64_t)documentNavigation
{
  v5 = [(SWViewController *)self documentStateReporter:view];
  [v5 documentIsReady];
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  if ([actionCopy navigationType])
  {
    v8 = 1;
  }

  else
  {
    navigationManager = [(SWViewController *)self navigationManager];
    request = [actionCopy request];
    v11 = [navigationManager actionForRequest:request];

    if (v11 > 2)
    {
      goto LABEL_6;
    }

    v8 = qword_1D7651930[v11];
  }

  handlerCopy[2](handlerCopy, v8);
LABEL_6:
}

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  errorCopy = error;
  errorReporter = [(SWViewController *)self errorReporter];
  [errorReporter reportError:errorCopy];
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  errorCopy = error;
  errorReporter = [(SWViewController *)self errorReporter];
  [errorReporter reportError:errorCopy];
}

- (BOOL)webView:(id)view shouldPreviewElement:(id)element
{
  elementCopy = element;
  navigationManager = [(SWViewController *)self navigationManager];
  v7 = MEMORY[0x1E696AF68];
  linkURL = [elementCopy linkURL];

  v9 = [v7 requestWithURL:linkURL];
  LOBYTE(v7) = [navigationManager shouldPreviewRequest:v9];

  return v7;
}

- (id)webView:(id)view previewingViewControllerForElement:(id)element defaultActions:(id)actions
{
  elementCopy = element;
  navigationManager = [(SWViewController *)self navigationManager];
  v8 = MEMORY[0x1E696AF68];
  linkURL = [elementCopy linkURL];

  v10 = [v8 requestWithURL:linkURL];
  v11 = [navigationManager previewViewControllerForRequest:v10];

  return v11;
}

- (void)webView:(id)view commitPreviewingViewController:(id)controller
{
  controllerCopy = controller;
  navigationManager = [(SWViewController *)self navigationManager];
  [navigationManager commitViewController:controllerCopy];
}

- (id)accessibilityElements
{
  v6[1] = *MEMORY[0x1E69E9840];
  webView = [(SWViewController *)self webView];
  v6[0] = webView;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)inputAccessoryView
{
  webView = [(SWViewController *)self webView];
  inputAccessoryView = [webView inputAccessoryView];

  return inputAccessoryView;
}

- (void)setInputAccessoryView:(id)view
{
  viewCopy = view;
  webView = [(SWViewController *)self webView];
  [webView setInputAccessoryView:viewCopy];

  firstResponder = [(SWViewController *)self firstResponder];
  [firstResponder reloadInputViews];
}

- (void)setTextInputTraits:(id)traits
{
  traitsCopy = traits;
  webView = [(SWViewController *)self webView];
  [webView setTextInputTraits:traitsCopy];
}

- (void)setShortcutsBarWithLeadingGroups:(id)groups trailingGroups:(id)trailingGroups
{
  trailingGroupsCopy = trailingGroups;
  groupsCopy = groups;
  webView = [(SWViewController *)self webView];
  [webView setShortcutsBarWithLeadingGroups:groupsCopy trailingGroups:trailingGroupsCopy];
}

- (void)removeMenusForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  webView = [(SWViewController *)self webView];
  [webView removeMenusForIdentifiers:identifiersCopy];
}

- (void)setHiddenPocketEdges:(unint64_t)edges
{
  webView = [(SWViewController *)self webView];
  scrollView = [webView scrollView];
  [scrollView _setHiddenPocketEdges:edges];
}

@end