@interface SUWebViewController
- (CGRect)documentBounds;
- (CGSize)minimumViewSize;
- (SUWebView)webView;
- (id)_placeholderBackgroundView;
- (id)copyArchivableContext;
- (id)copyDefaultScriptProperties;
- (id)copyObjectForScriptFromPoolWithClass:(Class)class;
- (id)copyScriptProperties;
- (id)displayedURL;
- (id)navigationItemForScriptInterface;
- (id)newRotationController;
- (id)newScriptInterface;
- (id)storePageProtocol;
- (void)_addPlaceholderBackgroundView;
- (void)_applySavedScrollOffsetIfPossible;
- (void)_applyScriptProperties:(id)properties;
- (void)_finishLoadWithResult:(BOOL)result error:(id)error;
- (void)_getURLRequestForOperation:(id)operation block:(id)block;
- (void)_loadURLRequest:(id)request;
- (void)_loadWithURLOperation:(id)operation completionBlock:(id)block;
- (void)_prepareToLoadURL:(id)l;
- (void)_reloadBackgroundViewPropertiesWithScriptProperties:(id)properties;
- (void)_reloadObjectPool;
- (void)_reloadPlaceholderBackgroundView;
- (void)_reloadUI;
- (void)_removePlaceholderBackgroundView;
- (void)_sendOrientationWillChangeToInterfaceOrientation:(int64_t)orientation;
- (void)_setExistingNavigationItem:(id)item;
- (void)_setPerformanceMetrics:(id)metrics;
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForeground;
- (void)dealloc;
- (void)invalidate;
- (void)keyboardDidHideWithInfo:(id)info;
- (void)keyboardWillShowWithInfo:(id)info;
- (void)loadView;
- (void)parentViewControllerHierarchyDidChange;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)reloadWithStorePage:(id)page forURL:(id)l;
- (void)setAuthenticationContext:(id)context;
- (void)setScriptProperties:(id)properties;
- (void)setStorePageProtocol:(id)protocol;
- (void)storePageCleanupBeforeTearDown;
- (void)storePageProtocolDidChange;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)webViewManager:(id)manager didFailLoadWithError:(id)error;
- (void)webViewManager:(id)manager didReceivePrimaryResponse:(id)response;
- (void)webViewManager:(id)manager didRejectInvalidRequest:(id)request;
- (void)webViewManager:(id)manager webDocumentViewDidSetFrame:(CGRect)frame;
- (void)webViewManager:(id)manager willInjectScriptInterface:(id)interface;
- (void)webViewManagerDidFinishLoad:(id)load;
- (void)webViewManagerDidStartLoad:(id)load;
@end

@implementation SUWebViewController

- (void)dealloc
{
  [(SUWebViewManager *)self->_webViewManager disconnectFromWebView];
  [(SUWebViewManager *)self->_webViewManager setDelegate:0];

  v3.receiver = self;
  v3.super_class = SUWebViewController;
  [(SUViewController *)&v3 dealloc];
}

- (id)newScriptInterface
{
  result = [(SUClientInterface *)[(SUViewController *)self clientInterface] _newScriptInterface];
  if (!result)
  {

    return +[SUClientDispatch newScriptInterface];
  }

  return result;
}

- (void)setAuthenticationContext:(id)context
{
  authenticationContext = self->_authenticationContext;
  if (authenticationContext != context)
  {

    self->_authenticationContext = [context mutableCopy];
    style = [(SUWebViewController *)self style];
    authenticationContext = self->_authenticationContext;
    if (style == 1)
    {
      [(SSMutableAuthenticationContext *)self->_authenticationContext setShouldFollowAccountButtons:1];
      authenticationContext = self->_authenticationContext;
    }
  }

  webViewManager = self->_webViewManager;

  [(SUWebViewManager *)webViewManager setAuthenticationContext:authenticationContext];
}

- (SUWebView)webView
{
  v21 = *MEMORY[0x1E69E9840];
  _UIApplicationLoadWebKit();
  if (self->_webViewManager)
  {
    goto LABEL_15;
  }

  defaultStore = self->_authenticationContext;
  if (!defaultStore)
  {
    account = self->_account;
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v7 &= 2u;
    }

    if (account)
    {
      if (v7)
      {
        v19 = 138412290;
        v20 = objc_opt_class();
        LODWORD(v18) = 12;
        v8 = _os_log_send_and_compose_impl();
        if (v8)
        {
          v9 = v8;
          [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v19, v18}];
          free(v9);
          SSFileLog();
        }
      }

      defaultStore = [objc_alloc(MEMORY[0x1E69D4888]) initWithBackingAccount:self->_account];
      if (!defaultStore)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v7)
      {
        v19 = 138412290;
        v20 = objc_opt_class();
        LODWORD(v18) = 12;
        v17 = &v19;
        v14 = _os_log_send_and_compose_impl();
        if (v14)
        {
          v15 = v14;
          v16 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v19, v18}];
          free(v15);
          v17 = v16;
          SSFileLog();
        }
      }

      defaultStore = [objc_msgSend(MEMORY[0x1E69D4890] defaultStore];
      self->_account = [(SSMutableAuthenticationContext *)defaultStore backingAccount];
      if (!defaultStore)
      {
        goto LABEL_14;
      }
    }

    defaultStore = [objc_alloc(MEMORY[0x1E69D4898]) initWithAccount:defaultStore];
  }

LABEL_14:
  v10 = [[SUWebViewManager alloc] initWithClientInterface:[(SUViewController *)self clientInterface]];
  self->_webViewManager = v10;
  [(SUWebViewManager *)v10 setAccount:self->_account];
  [(SUWebViewManager *)self->_webViewManager setAuthenticationContext:defaultStore];
  [(SUWebViewManager *)self->_webViewManager setDelegate:self];
  [(SUWebViewManager *)self->_webViewManager setInitialRequestPerformance:self->_performanceMetrics];
  [(SUWebViewManager *)self->_webViewManager setShouldSignRequests:self->_shouldSignRequests];
  [(SUWebViewManager *)self->_webViewManager setTidHeaders:[(SUWebViewController *)self tidHeaders]];
  [(SUWebViewManager *)self->_webViewManager connectToWebView:self->_webView];

LABEL_15:
  result = self->_webView;
  if (!result)
  {
    copyScriptProperties = [(SUWebViewController *)self copyScriptProperties];
    v13 = [[SUWebView alloc] initWithFrame:0.0, 0.0, 0.0, 1.0];
    self->_webView = v13;
    [(SUWebViewManager *)self->_webViewManager connectToWebView:v13];
    -[SUWebView setBackgroundColor:](self->_webView, "setBackgroundColor:", [MEMORY[0x1E69DC888] systemBackgroundColor]);
    [(SUWebViewController *)self _applyScriptProperties:copyScriptProperties];

    return self->_webView;
  }

  return result;
}

- (void)applicationDidEnterBackground
{
  [[(SUWebViewController *)self webView] setHidden:1];
  [(SUWebViewManager *)self->_webViewManager dispatchEvent:0 forName:@"diddisappear"];
  v3.receiver = self;
  v3.super_class = SUWebViewController;
  [(SUViewController *)&v3 applicationDidEnterBackground];
}

- (void)applicationWillEnterForeground
{
  [[(SUWebViewController *)self webView] setHidden:0];
  [(SUWebViewManager *)self->_webViewManager dispatchEvent:0 forName:@"didreappear"];
  v3.receiver = self;
  v3.super_class = SUWebViewController;
  [(SUViewController *)&v3 applicationWillEnterForeground];
}

- (id)copyArchivableContext
{
  v8.receiver = self;
  v8.super_class = SUWebViewController;
  copyArchivableContext = [(SUViewController *)&v8 copyArchivableContext];
  if (![(SUViewController *)self shouldExcludeFromNavigationHistory])
  {
    scrollView = [(SUWebView *)self->_webView scrollView];
    if (scrollView)
    {
      v5 = MEMORY[0x1E696B098];
      [scrollView contentOffset];
      v6 = [v5 valueWithCGPoint:?];
LABEL_6:
      [copyArchivableContext setValue:v6 forMetadataKey:@"offset"];
      return copyArchivableContext;
    }

    if ([(SUViewController *)self _restoredContext])
    {
      v6 = [(SUViewControllerContext *)[(SUViewController *)self _restoredContext] valueForMetadataKey:@"offset"];
      goto LABEL_6;
    }
  }

  return copyArchivableContext;
}

- (id)copyDefaultScriptProperties
{
  v8.receiver = self;
  v8.super_class = SUWebViewController;
  copyDefaultScriptProperties = [(SUViewController *)&v8 copyDefaultScriptProperties];
  [copyDefaultScriptProperties setDoubleTapEnabled:0];
  [copyDefaultScriptProperties setFlashesScrollIndicators:1];
  [copyDefaultScriptProperties setInputViewObeysDOMFocus:0];
  [copyDefaultScriptProperties setScrollingDisabled:0];
  [copyDefaultScriptProperties setShouldShowFormAccessory:1];
  mEMORY[0x1E69E47F8] = [MEMORY[0x1E69E47F8] sharedCache];
  v4 = [objc_msgSend(mEMORY[0x1E69E47F8] URLBagForContext:{objc_msgSend(MEMORY[0x1E69D49F8], "contextWithBagType:", 0)), "valueForKey:", @"p2-client-options"}];
  objc_opt_class();
  v5 = 0;
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 objectForKey:@"load-progressively"];
  }

  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  [copyDefaultScriptProperties setShouldLoadProgressively:bOOLValue];
  return copyDefaultScriptProperties;
}

- (id)copyScriptProperties
{
  v8.receiver = self;
  v8.super_class = SUWebViewController;
  copyScriptProperties = [(SUViewController *)&v8 copyScriptProperties];
  webView = self->_webView;
  if (webView)
  {
    [copyScriptProperties setBackgroundColor:{-[SUWebView backgroundColor](webView, "backgroundColor")}];
    [copyScriptProperties setAlwaysDispatchesScrollEvents:{-[SUWebView _alwaysDispatchesScrollEvents](self->_webView, "_alwaysDispatchesScrollEvents")}];
    _browserView = [(SUWebView *)self->_webView _browserView];
    [copyScriptProperties setDoubleTapEnabled:{objc_msgSend(_browserView, "isDoubleTapEnabled")}];
    [copyScriptProperties setInputViewObeysDOMFocus:{objc_msgSend(_browserView, "inputViewObeysDOMFocus")}];
    [copyScriptProperties setScrollingDisabled:{-[SUWebView isScrollingEnabled](self->_webView, "isScrollingEnabled") ^ 1}];
    [copyScriptProperties setShouldShowFormAccessory:{objc_msgSend(_browserView, "isAccessoryEnabled")}];
    scrollView = [(SUWebView *)self->_webView scrollView];
    [copyScriptProperties setScrollContentInsets:SUUIScrollViewGetDefaultContentInset(scrollView)];
    [copyScriptProperties setShowsBackgroundShadow:{objc_msgSend(scrollView, "_showsBackgroundShadow")}];
    [copyScriptProperties setShowsHorizontalScrollIndicator:{objc_msgSend(scrollView, "showsHorizontalScrollIndicator")}];
    [copyScriptProperties setShowsVerticalScrollIndicator:{objc_msgSend(scrollView, "showsVerticalScrollIndicator")}];
  }

  return copyScriptProperties;
}

- (id)copyObjectForScriptFromPoolWithClass:(Class)class
{
  v4 = [(SUObjectPool *)self->_objectPool copyPoppedObjectForClass:class];
  if (-[SUWebView isLoading](self->_webView, "isLoading") && [v4 conformsToProtocol:&unk_1F423BE40])
  {
    [v4 setDeferringInterfaceUpdates:1];
  }

  return v4;
}

- (id)displayedURL
{
  displayedURL = self->_displayedURL;
  if (displayedURL)
  {
    v3 = displayedURL;

    return v3;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SUWebViewController;
    return [(UIViewController *)&v5 displayedURL];
  }
}

- (CGRect)documentBounds
{
  _browserView = [(SUWebView *)self->_webView _browserView];
  if (_browserView)
  {
    [_browserView documentBounds];
  }

  else
  {
    v3 = *MEMORY[0x1E695F050];
    v4 = *(MEMORY[0x1E695F050] + 8);
    v5 = *(MEMORY[0x1E695F050] + 16);
    v6 = *(MEMORY[0x1E695F050] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)invalidate
{
  if (![(SUViewController *)self isVisible])
  {
    self->_hasEverAppeared = 0;
  }

  v3.receiver = self;
  v3.super_class = SUWebViewController;
  [(SUViewController *)&v3 invalidate];
}

- (void)keyboardDidHideWithInfo:(id)info
{
  [(SUWebView *)self->_webView _updateScrollerViewForInputView:?];
  v5.receiver = self;
  v5.super_class = SUWebViewController;
  [(UIViewController *)&v5 keyboardDidHideWithInfo:info];
}

- (void)keyboardWillShowWithInfo:(id)info
{
  [(SUWebView *)self->_webView _updateScrollerViewForInputView:?];
  v5.receiver = self;
  v5.super_class = SUWebViewController;
  [(UIViewController *)&v5 keyboardWillShowWithInfo:info];
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v3 setAutoresizingMask:18];
  [(SUWebViewController *)self setView:v3];
}

- (CGSize)minimumViewSize
{
  if (self->_webView)
  {
    [-[SUWebView _browserView](self->_webView "_browserView")];
    v3 = v2;
    v5 = v4;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SUWebViewController;
    [(UIViewController *)&v6 minimumViewSize];
  }

  result.height = v5;
  result.width = v3;
  return result;
}

- (id)navigationItemForScriptInterface
{
  delayedNavigationItem = self->_delayedNavigationItem;
  if (!delayedNavigationItem)
  {
    goto LABEL_4;
  }

  wrappedNavigationItem = [(SUDelayedNavigationItem *)delayedNavigationItem wrappedNavigationItem];
  navigationItem = [(SUViewController *)self navigationItem];
  result = self->_delayedNavigationItem;
  if (wrappedNavigationItem != navigationItem)
  {

    self->_delayedNavigationItem = 0;
LABEL_4:
    v7 = [[SUDelayedNavigationItem alloc] initWithNavigationItem:[(SUViewController *)self navigationItem]];
    self->_delayedNavigationItem = v7;
    [(SUDelayedNavigationItem *)v7 setShouldDelayChanges:self->_objectPool != 0];
    return self->_delayedNavigationItem;
  }

  if (!result)
  {
    goto LABEL_4;
  }

  return result;
}

- (void)parentViewControllerHierarchyDidChange
{
  if ([(SUWebViewController *)self _placeholderBackgroundView])
  {
    [(SUWebViewController *)self _reloadPlaceholderBackgroundView];
  }

  -[SUWebViewManager setScriptWindowContext:](self->_webViewManager, "setScriptWindowContext:", [-[SUWebViewController parentViewController](self "parentViewController")]);
  v3.receiver = self;
  v3.super_class = SUWebViewController;
  [(UIViewController *)&v3 parentViewControllerHierarchyDidChange];
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  for (i = -[SUWebViewController parentViewController](self, "parentViewController"); i; i = [i parentViewController])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }
  }

  if ([i bridgedNavigation])
  {
    parentViewController = [i parentViewController];

    [parentViewController presentViewController:controller animated:animatedCopy completion:0];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SUWebViewController;
    [(SUWebViewController *)&v11 presentViewController:controller animated:animatedCopy completion:completion];
  }
}

- (void)reloadWithStorePage:(id)page forURL:(id)l
{
  v33 = *MEMORY[0x1E69E9840];
  [(SUWebViewController *)self _prepareToLoadURL:l];
  webView = [(SUWebViewController *)self webView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v10 = shouldLog | 2;
    }

    else
    {
      v10 = shouldLog;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v31 = 138543362;
      v32 = objc_opt_class();
      LODWORD(v30) = 12;
      v11 = _os_log_send_and_compose_impl();
      if (v11)
      {
        v12 = v11;
        [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v31, v30}];
        free(v12);
        SSFileLog();
      }
    }

    [(SUWebView *)webView loadData:page MIMEType:@"text/html" textEncodingName:CFStringConvertEncodingToIANACharSetName(0x8000100u) baseURL:l];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
      if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
      {
        v15 = shouldLog2 | 2;
      }

      else
      {
        v15 = shouldLog2;
      }

      if (!os_log_type_enabled([mEMORY[0x1E69D4938]2 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v15 &= 2u;
      }

      if (v15)
      {
        v31 = 138543362;
        v32 = objc_opt_class();
        LODWORD(v30) = 12;
        v29 = &v31;
        v16 = _os_log_send_and_compose_impl();
        if (v16)
        {
          v17 = v16;
          v18 = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:{4, &v31, v30}];
          free(v17);
          v29 = v18;
          SSFileLog();
        }
      }

      [(SUWebView *)webView loadHTMLString:page baseURL:l, v29];
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      mEMORY[0x1E69D4938]3 = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog3 = [mEMORY[0x1E69D4938]3 shouldLog];
      if ([mEMORY[0x1E69D4938]3 shouldLogToDisk])
      {
        v22 = shouldLog3 | 2;
      }

      else
      {
        v22 = shouldLog3;
      }

      if (!os_log_type_enabled([mEMORY[0x1E69D4938]3 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v22 &= 2u;
      }

      if (isKindOfClass)
      {
        if (v22)
        {
          v31 = 138543362;
          v32 = objc_opt_class();
          LODWORD(v30) = 12;
          v29 = &v31;
          v23 = _os_log_send_and_compose_impl();
          if (v23)
          {
            v24 = v23;
            v25 = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:{4, &v31, v30}];
            free(v24);
            v29 = v25;
            SSFileLog();
          }
        }

        [(SUWebView *)webView loadArchive:page, v29];
      }

      else
      {
        if (v22)
        {
          v31 = 138543362;
          v32 = objc_opt_class();
          LODWORD(v30) = 12;
          v29 = &v31;
          v26 = _os_log_send_and_compose_impl();
          if (v26)
          {
            v27 = v26;
            v28 = [MEMORY[0x1E696AEC0] stringWithCString:v26 encoding:{4, &v31, v30}];
            free(v27);
            v29 = v28;
            SSFileLog();
          }
        }

        [(SUWebViewController *)self _reloadUI];
        [(SUWebViewController *)self setViewIsReady:1];
      }
    }
  }
}

- (void)_setExistingNavigationItem:(id)item
{
  [(SUDelayedNavigationItem *)self->_delayedNavigationItem setWrappedNavigationItem:?];
  v5.receiver = self;
  v5.super_class = SUWebViewController;
  [(SUViewController *)&v5 _setExistingNavigationItem:item];
}

- (void)setScriptProperties:(id)properties
{
  v5.receiver = self;
  v5.super_class = SUWebViewController;
  [(SUViewController *)&v5 setScriptProperties:?];
  [(SUWebViewController *)self _applyScriptProperties:properties];
}

- (void)setStorePageProtocol:(id)protocol
{
  storePageProtocol = self->_storePageProtocol;
  if (storePageProtocol != protocol)
  {

    self->_storePageProtocol = protocol;

    [(SUWebViewController *)self storePageProtocolDidChange];
  }
}

- (id)storePageProtocol
{
  result = self->_storePageProtocol;
  if (!result)
  {
    result = objc_alloc_init(SUStorePageProtocol);
    self->_storePageProtocol = result;
  }

  return result;
}

- (void)storePageCleanupBeforeTearDown
{
  [(SUWebViewManager *)self->_webViewManager disconnectFromWebView];
  [(SUWebViewManager *)self->_webViewManager setDelegate:0];

  self->_webViewManager = 0;
  v3.receiver = self;
  v3.super_class = SUWebViewController;
  [(UIViewController *)&v3 storePageCleanupBeforeTearDown];
}

- (void)storePageProtocolDidChange
{
  if ([(SUWebViewController *)self isViewLoaded]&& ([(SUWebView *)self->_webView isLoading]& 1) == 0)
  {
    [(SUWebViewController *)self _reloadUI];
  }

  v3.receiver = self;
  v3.super_class = SUWebViewController;
  [(SUViewController *)&v3 storePageProtocolDidChange];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  if (self->_hasEverAppeared)
  {
    [(SUWebViewManager *)self->_webViewManager dispatchEvent:0 forName:@"didreappear"];
  }

  self->_hasEverAppeared = 1;
  copyScriptProperties = [(SUWebViewController *)self copyScriptProperties];
  [(SUWebViewController *)self _applyScriptProperties:copyScriptProperties];
  if ((-[SUWebView isLoading](self->_webView, "isLoading") & 1) == 0 && -[SUWebView request](self->_webView, "request") && [copyScriptProperties flashesScrollIndicators])
  {
    [-[SUWebView _scrollView](self->_webView "_scrollView")];
  }

  v6.receiver = self;
  v6.super_class = SUWebViewController;
  [(SUViewController *)&v6 viewDidAppear:appearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(SUWebViewManager *)self->_webViewManager dispatchEvent:0 forName:@"diddisappear"];
  [-[SUWebView _scrollView](self->_webView "_scrollView")];
  v5.receiver = self;
  v5.super_class = SUWebViewController;
  [(SUViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (self->_hasEverAppeared)
  {
    v5 = [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
    if ([(SUWebViewController *)self viewIsReady]&& self->_lastKnownOrientation != v5)
    {
      [(SUWebView *)self->_webView beginSynchronousLayout];
      [(SUWebViewController *)self _sendOrientationWillChangeToInterfaceOrientation:v5];
      [(SUWebView *)self->_webView endSynchronousLayout];
      [-[SUWebView _browserView](self->_webView "_browserView")];
    }

    self->_lastKnownOrientation = v5;
    [(SUWebViewManager *)self->_webViewManager dispatchEvent:0 forName:@"willreappear"];
  }

  v6.receiver = self;
  v6.super_class = SUWebViewController;
  [(SUViewController *)&v6 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(SUWebViewManager *)self->_webViewManager dispatchEvent:0 forName:@"willdisappear"];
  self->_lastKnownOrientation = [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  v5.receiver = self;
  v5.super_class = SUWebViewController;
  [(SUViewController *)&v5 viewWillDisappear:disappearCopy];
}

- (id)newRotationController
{
  v3 = [SUWebViewRotationController alloc];

  return [(SURotationController *)v3 initWithViewController:self];
}

- (void)webViewManager:(id)manager didFailLoadWithError:(id)error
{
  if ([error code] != -999)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

    [(SUWebViewController *)self _finishLoadWithResult:0 error:error];
  }
}

- (void)webViewManager:(id)manager didReceivePrimaryResponse:(id)response
{
  v31 = *MEMORY[0x1E69E9840];
  if (!self->_mescalSession)
  {
    goto LABEL_20;
  }

  [response allHeaderFields];
  v6 = ISDictionaryValueForCaseInsensitiveString();
  if (![v6 length])
  {
    goto LABEL_20;
  }

  v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
  v26 = 0;
  v8 = [(SUMescalSession *)self->_mescalSession verifyPrimeSignature:v7 error:&v26];
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v11 = shouldLog | 2;
  }

  else
  {
    v11 = shouldLog;
  }

  oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
  if (v8)
  {
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 2;
    }

    if (v13)
    {
      v14 = objc_opt_class();
      v15 = [response URL];
      v27 = 138412546;
      v28 = v14;
      v29 = 2112;
      v30 = v15;
      LODWORD(v25) = 22;
      v24 = &v27;
      goto LABEL_17;
    }
  }

  else
  {
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v11;
    }

    else
    {
      v16 = v11 & 2;
    }

    if (v16)
    {
      v17 = objc_opt_class();
      v27 = 138412546;
      v28 = v17;
      v29 = 2112;
      v30 = v26;
      LODWORD(v25) = 22;
      v24 = &v27;
LABEL_17:
      v18 = _os_log_send_and_compose_impl();
      if (v18)
      {
        v19 = v18;
        v20 = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:{4, &v27, v25}];
        free(v19);
        v24 = v20;
        SSFileLog();
      }
    }
  }

LABEL_20:
  v21 = [response URL];
  displayedURL = self->_displayedURL;
  if (displayedURL != v21)
  {
    v23 = v21;

    self->_displayedURL = [v23 copy];
  }
}

- (void)webViewManager:(id)manager didRejectInvalidRequest:(id)request
{
  if (self->_loadBlock)
  {
    v5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"SUErrorDomain" code:1 userInfo:0];
    [(SUWebViewController *)self _finishLoadWithResult:0 error:?];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURLRequest:request];
    [(UIViewController *)self reloadWithURLRequestProperties:?];
  }
}

- (void)webViewManager:(id)manager willInjectScriptInterface:(id)interface
{
  parentViewController = [-[SUWebViewController parentViewController](self parentViewController];

  [interface setScriptWindowContext:parentViewController];
}

- (void)webViewManagerDidFinishLoad:(id)load
{
  v42 = *MEMORY[0x1E69E9840];
  _browserView = [(SUWebView *)self->_webView _browserView];
  WebThreadLock();
  v5 = [objc_msgSend(objc_msgSend(objc_msgSend(_browserView "webView")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 statusCode] - 400) <= 0x257)
  {
    [(UIViewController *)self handleStoreFailureWithError:SSError()];
  }

  [(SUDelayedNavigationItem *)self->_delayedNavigationItem commitDelayedChanges];
  [(SUDelayedNavigationItem *)self->_delayedNavigationItem setShouldDelayChanges:0];
  vendedObjects = [(SUObjectPool *)self->_objectPool vendedObjects];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [(NSArray *)vendedObjects countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(vendedObjects);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        if ([v11 conformsToProtocol:&unk_1F423BE40])
        {
          [v11 setDeferringInterfaceUpdates:0];
        }
      }

      v8 = [(NSArray *)vendedObjects countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v8);
  }

  self->_objectPool = 0;
  [(SUWebViewController *)self _reloadUI];
  [(SUWebViewController *)self _removePlaceholderBackgroundView];
  selfCopy = self;
  [(SUWebViewController *)self setViewIsReady:1];
  [(SUWebViewController *)self _applySavedScrollOffsetIfPossible];
  copyScriptProperties = [(SUWebViewController *)self copyScriptProperties];
  if ([copyScriptProperties flashesScrollIndicators])
  {
    [-[SUWebView _scrollView](self->_webView "_scrollView")];
  }

  v28 = 0;
  if ([(SUWebView *)self->_webView getStatusBarStyle:&v28])
  {
    if (v28)
    {
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      [mEMORY[0x1E69DC668] setStatusBarStyle:v28];
    }

    else
    {
      SUSetStatusBarStyleWithBarStyle([(SUViewController *)self ITunesStoreUIBarStyle], 0);
    }
  }

  if (self->_performanceMetrics)
  {
    Current = CFAbsoluteTimeGetCurrent();
    [(ISURLRequestPerformance *)self->_performanceMetrics setRenderFinishTime:?];
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v18 = shouldLog | 2;
    }

    else
    {
      v18 = shouldLog;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v18 &= 2u;
    }

    if (v18)
    {
      v19 = objc_opt_class();
      [(ISURLRequestPerformance *)self->_performanceMetrics renderEndInterval];
      v21 = v20;
      v22 = [-[ISURLRequestPerformance URLResponse](self->_performanceMetrics "URLResponse")];
      v33 = 138413058;
      v34 = v19;
      v35 = 2048;
      v36 = Current;
      v37 = 2048;
      v38 = v21;
      v39 = 2112;
      v40 = v22;
      LODWORD(v27) = 42;
      v26 = &v33;
      v23 = _os_log_send_and_compose_impl();
      if (v23)
      {
        v24 = v23;
        v25 = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:{4, &v33, v27}];
        free(v24);
        v26 = v25;
        SSFileLog();
      }
    }
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
  [(SUWebViewController *)self _finishLoadWithResult:1 error:0];
}

- (void)webViewManagerDidStartLoad:(id)load
{
  v21 = *MEMORY[0x1E69E9840];
  [(SUDelayedNavigationItem *)self->_delayedNavigationItem setShouldDelayChanges:1];
  if (self->_performanceMetrics)
  {
    Current = CFAbsoluteTimeGetCurrent();
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v8 = objc_opt_class();
      v9 = [-[ISURLRequestPerformance URLResponse](self->_performanceMetrics "URLResponse")];
      v15 = 138412802;
      v16 = v8;
      v17 = 2048;
      v18 = Current;
      v19 = 2112;
      v20 = v9;
      LODWORD(v14) = 32;
      v13 = &v15;
      v10 = _os_log_send_and_compose_impl();
      if (v10)
      {
        v11 = v10;
        v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v15, v14}];
        free(v11);
        v13 = v12;
        SSFileLog();
      }
    }

    [(ISURLRequestPerformance *)self->_performanceMetrics setRenderBeginTime:Current, v13];
  }

  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
}

- (void)webViewManager:(id)manager webDocumentViewDidSetFrame:(CGRect)frame
{
  [(SUWebViewController *)self _applySavedScrollOffsetIfPossible:manager];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

  [defaultCenter postNotificationName:@"SUViewControllerDocumentBoundsDidChangeNotification" object:self];
}

- (void)_loadWithURLOperation:(id)operation completionBlock:(id)block
{
  v20 = *MEMORY[0x1E69E9840];
  loadBlock = self->_loadBlock;
  if (loadBlock != block)
  {

    self->_loadBlock = [block copy];
  }

  v8 = [MEMORY[0x1E69D4A30] weakReferenceWithObject:self];
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v11 = shouldLog | 2;
  }

  else
  {
    v11 = shouldLog;
  }

  if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v11 &= 2u;
  }

  if (v11)
  {
    v18 = 138543362;
    v19 = objc_opt_class();
    LODWORD(v16) = 12;
    v15 = &v18;
    v12 = _os_log_send_and_compose_impl();
    if (v12)
    {
      v13 = v12;
      v14 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v18, v16}];
      free(v13);
      v15 = v14;
      SSFileLog();
    }
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __61__SUWebViewController__loadWithURLOperation_completionBlock___block_invoke;
  v17[3] = &unk_1E8164C40;
  v17[4] = self;
  v17[5] = v8;
  [(SUWebViewController *)self _getURLRequestForOperation:operation block:v17, v15];
}

uint64_t __61__SUWebViewController__loadWithURLOperation_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69D4938] sharedConfig];
  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v13 = 138543618;
    v14 = objc_opt_class();
    v15 = 2112;
    v16 = a2;
    LODWORD(v12) = 22;
    v11 = &v13;
    v7 = _os_log_send_and_compose_impl();
    if (v7)
    {
      v8 = v7;
      v9 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v13, v12}];
      free(v8);
      v11 = v9;
      SSFileLog();
    }
  }

  return [objc_msgSend(*(a1 + 40) object];
}

- (void)_setPerformanceMetrics:(id)metrics
{
  performanceMetrics = self->_performanceMetrics;
  if (performanceMetrics != metrics)
  {

    self->_performanceMetrics = metrics;
    webViewManager = self->_webViewManager;

    [(SUWebViewManager *)webViewManager setInitialRequestPerformance:metrics];
  }
}

- (void)_addPlaceholderBackgroundView
{
  _browserView = [[(SUWebViewController *)self webView] _browserView];
  [_browserView setBackgroundColor:{objc_msgSend(MEMORY[0x1E69DC888], "clearColor")}];
  [_browserView setOpaque:0];
  [_browserView setNeedsDisplay];
  if (![(SUWebViewController *)self _placeholderBackgroundView])
  {

    [(SUWebViewController *)self _reloadPlaceholderBackgroundView];
  }
}

- (void)_applySavedScrollOffsetIfPossible
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  v5 = [(SUViewControllerContext *)[(SUViewController *)self _restoredContext] valueForMetadataKey:@"offset"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 CGPointValue];
  }

  else
  {
    objc_opt_class();
    v8 = v4;
    v9 = v3;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v10 = CGPointFromString(v5);
    y = v10.y;
    x = v10.x;
  }

  v9 = x;
  v8 = y;
LABEL_6:
  if (v9 != v3 || v8 != v4)
  {
    scrollView = [(SUWebView *)self->_webView scrollView];
    if (scrollView)
    {
      v13 = scrollView;
      [scrollView contentOffset];
      if (v14 < 0.00000011920929)
      {
        [v13 contentSize];
        if (v8 > 0.0)
        {
          v16 = v15;
          [v13 frame];
          if (v8 <= v16 - v17)
          {
            [v13 setContentOffset:{v9, v8}];

            [(SUViewController *)self resetRestoredContext];
          }
        }
      }
    }
  }
}

- (void)_applyScriptProperties:(id)properties
{
  if (properties)
  {
    webView = self->_webView;
    if (webView)
    {
      _scrollView = [(SUWebView *)webView _scrollView];
      [_scrollView setShowsHorizontalScrollIndicator:{objc_msgSend(properties, "showsHorizontalScrollIndicator")}];
      [_scrollView setShowsVerticalScrollIndicator:{objc_msgSend(properties, "showsVerticalScrollIndicator")}];
      [properties scrollContentInsets];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      if (_UIApplicationUsesLegacyUI())
      {
        SUUIScrollViewSetDefaultContentInset(_scrollView, v8, v10, v12, v14);
      }

      -[SUWebView _setAlwaysDispatchesScrollEvents:](self->_webView, "_setAlwaysDispatchesScrollEvents:", [properties alwaysDispatchesScrollEvents]);
      showsBackgroundShadow = [properties showsBackgroundShadow];
      topExtensionColor = [properties topExtensionColor];
      if (topExtensionColor)
      {
        v17 = topExtensionColor;
        if (!SUGradientColorIsPatternColor(topExtensionColor, 0))
        {
          [_scrollView setTopExtensionViewColor:0];
          [(SUWebView *)self->_webView setShowsTopBackgroundShadow:showsBackgroundShadow];
          [(SUWebView *)self->_webView setTopBackgroundColor:v17];
          showsBackgroundShadow = 0;
          goto LABEL_11;
        }

        v18 = _scrollView;
        v19 = v17;
      }

      else
      {
        v18 = _scrollView;
        v19 = 0;
      }

      [v18 setTopExtensionViewColor:v19];
      [(SUWebView *)self->_webView setTopBackgroundColor:0];
LABEL_11:
      [_scrollView _setShowsBackgroundShadow:showsBackgroundShadow];
      _browserView = [(SUWebView *)self->_webView _browserView];
      [_browserView setAccessoryEnabled:{objc_msgSend(properties, "shouldShowFormAccessory")}];
      [_browserView setDoubleTapEnabled:{objc_msgSend(properties, "isDoubleTapEnabled")}];
      [_browserView setInputViewObeysDOMFocus:{objc_msgSend(properties, "inputViewObeysDOMFocus")}];
      -[SUWebView setScrollingEnabled:](self->_webView, "setScrollingEnabled:", [properties isScrollingDisabled] ^ 1);
    }
  }

  [(SUWebViewController *)self _reloadBackgroundViewPropertiesWithScriptProperties:properties];
}

- (void)_finishLoadWithResult:(BOOL)result error:(id)error
{
  loadBlock = self->_loadBlock;
  if (loadBlock)
  {
    resultCopy = result;
    v9 = loadBlock;
    selfCopy = self;

    self->_loadBlock = 0;
    v9[2](v9, resultCopy, error);
  }
}

- (void)_getURLRequestForOperation:(id)operation block:(id)block
{
  requestProperties = [operation requestProperties];
  v8 = [MEMORY[0x1E69D49F8] contextWithBagType:{objc_msgSend(requestProperties, "URLBagType")}];
  v9 = [objc_alloc(MEMORY[0x1E69E4770]) initWithBagContext:v8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__SUWebViewController__getURLRequestForOperation_block___block_invoke;
  v10[3] = &unk_1E8164C90;
  v10[4] = v9;
  v10[5] = self;
  v10[6] = requestProperties;
  v10[7] = operation;
  v10[8] = v8;
  v10[9] = block;
  [v9 setCompletionBlock:v10];
  [(SUViewController *)self enqueueOperation:v9 cancelOnDealloc:0];
}

uint64_t __56__SUWebViewController__getURLRequestForOperation_block___block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) success] & 1) == 0)
  {
    v5 = [MEMORY[0x1E69D4938] sharedConfig];
    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v7 &= 2u;
    }

    if (!v7)
    {
      goto LABEL_40;
    }

    v8 = objc_opt_class();
    v9 = [*(a1 + 32) error];
    v50 = 138543618;
    v51 = v8;
    v52 = 2112;
    v53 = v9;
    LODWORD(v47) = 22;
    goto LABEL_13;
  }

  v2 = [*(a1 + 48) URL];
  v3 = *(a1 + 48);
  if (v2)
  {
    if ([v3 URLBagType] == 3 && (objc_msgSend(objc_msgSend(v2, "host"), "isEqualToString:", @"localhost") & 1) != 0)
    {
      v4 = 1;
    }

    else if ([objc_msgSend(*(a1 + 32) "URLBag")])
    {
      v4 = [objc_msgSend(v2 "scheme")];
    }

    else
    {
      v4 = 0;
    }

    v14 = [MEMORY[0x1E698CD40] createBagForSubProfile];
    v49 = 0;
    if ([objc_msgSend(MEMORY[0x1E698CD40] verifyTrustedURL:v2 bag:{v14), "resultWithError:", &v49}])
    {
      if (v4)
      {
LABEL_52:
        v10 = [*(a1 + 56) newRequestWithURL:{v2, v46}];
        goto LABEL_53;
      }
    }

    else
    {
      v15 = [MEMORY[0x1E69D4938] sharedConfig];
      v16 = [v15 shouldLog];
      if ([v15 shouldLogToDisk])
      {
        v17 = v16 | 2;
      }

      else
      {
        v17 = v16;
      }

      if (!os_log_type_enabled([v15 OSLogObject], OS_LOG_TYPE_ERROR))
      {
        v17 &= 2u;
      }

      if (v17)
      {
        v18 = objc_opt_class();
        v50 = 138543362;
        v51 = v18;
        LODWORD(v47) = 12;
        v46 = &v50;
        v19 = _os_log_send_and_compose_impl();
        if (v19)
        {
          v20 = v19;
          v21 = [MEMORY[0x1E696AEC0] stringWithCString:v19 encoding:{4, &v50, v47}];
          free(v20);
          v46 = v21;
          SSFileLog();
        }
      }
    }

    v22 = [MEMORY[0x1E69D4938] sharedConfig];
    v23 = [v22 shouldLog];
    if ([v22 shouldLogToDisk])
    {
      v24 = v23 | 2;
    }

    else
    {
      v24 = v23;
    }

    if (!os_log_type_enabled([v22 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v24 &= 2u;
    }

    if (!v24)
    {
      goto LABEL_40;
    }

    v25 = objc_opt_class();
    v50 = 138543618;
    v51 = v25;
    v52 = 2112;
    v53 = v2;
    LODWORD(v47) = 22;
    v10 = _os_log_send_and_compose_impl();
    if (v10)
    {
      v26 = v10;
      [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v50, v47}];
      free(v26);
      goto LABEL_39;
    }

    goto LABEL_53;
  }

  v12 = [v3 URLBagURLBlock];
  if (v12)
  {
    v13 = (*(v12 + 16))(v12, *(a1 + 64));
    goto LABEL_43;
  }

  v27 = [*(a1 + 48) URLBagKey];
  if (v27)
  {
    v13 = [objc_msgSend(*(a1 + 32) "URLBag")];
LABEL_43:
    v2 = v13;
    if (v13)
    {
      v28 = [MEMORY[0x1E69D4938] sharedConfig];
      v29 = [v28 shouldLog];
      if ([v28 shouldLogToDisk])
      {
        v30 = v29 | 2;
      }

      else
      {
        v30 = v29;
      }

      if (!os_log_type_enabled([v28 OSLogObject], OS_LOG_TYPE_DEBUG))
      {
        v30 &= 2u;
      }

      if (v30)
      {
        v50 = 138543618;
        v51 = objc_opt_class();
        v52 = 2112;
        v53 = v2;
        LODWORD(v47) = 22;
        v46 = &v50;
        v31 = _os_log_send_and_compose_impl();
        if (v31)
        {
          v32 = v31;
          v33 = [MEMORY[0x1E696AEC0] stringWithCString:v31 encoding:{4, &v50, v47}];
          free(v32);
          v46 = v33;
          SSFileLog();
        }
      }

      goto LABEL_52;
    }

    goto LABEL_62;
  }

  v36 = [MEMORY[0x1E69D4938] sharedConfig];
  v37 = [v36 shouldLog];
  if ([v36 shouldLogToDisk])
  {
    v38 = v37 | 2;
  }

  else
  {
    v38 = v37;
  }

  if (!os_log_type_enabled([v36 OSLogObject], OS_LOG_TYPE_ERROR))
  {
    v38 &= 2u;
  }

  if (v38)
  {
    v50 = 138543618;
    v51 = objc_opt_class();
    v52 = 2114;
    v53 = 0;
    LODWORD(v47) = 22;
    v46 = &v50;
    v39 = _os_log_send_and_compose_impl();
    if (v39)
    {
      v40 = v39;
      v41 = [MEMORY[0x1E696AEC0] stringWithCString:v39 encoding:{4, &v50, v47}];
      free(v40);
      v46 = v41;
      SSFileLog();
    }
  }

LABEL_62:
  v42 = [MEMORY[0x1E69D4938] sharedConfig];
  v43 = [v42 shouldLog];
  if ([v42 shouldLogToDisk])
  {
    v44 = v43 | 2;
  }

  else
  {
    v44 = v43;
  }

  if (!os_log_type_enabled([v42 OSLogObject], OS_LOG_TYPE_ERROR))
  {
    v44 &= 2u;
  }

  if (!v44)
  {
    goto LABEL_40;
  }

  v45 = objc_opt_class();
  v50 = 138543362;
  v51 = v45;
  LODWORD(v47) = 12;
LABEL_13:
  v10 = _os_log_send_and_compose_impl();
  if (v10)
  {
    v11 = v10;
    [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v50, v47}];
    free(v11);
LABEL_39:
    SSFileLog();
LABEL_40:
    v10 = 0;
  }

LABEL_53:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__SUWebViewController__getURLRequestForOperation_block___block_invoke_156;
  block[3] = &unk_1E8164C68;
  v34 = *(a1 + 72);
  block[4] = v10;
  block[5] = v34;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  return [*(a1 + 32) setCompletionBlock:0];
}

void __56__SUWebViewController__getURLRequestForOperation_block___block_invoke_156(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
}

- (void)_loadURLRequest:(id)request
{
  v20 = *MEMORY[0x1E69E9840];
  if (request)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v14 = 138543874;
      v15 = objc_opt_class();
      v16 = 2048;
      Current = CFAbsoluteTimeGetCurrent();
      v18 = 2112;
      v19 = [request URL];
      LODWORD(v13) = 32;
      v12 = &v14;
      v8 = _os_log_send_and_compose_impl();
      if (v8)
      {
        v9 = v8;
        v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v14, v13}];
        free(v9);
        v12 = v10;
        SSFileLog();
      }
    }

    -[SUWebViewController _prepareToLoadURL:](self, "_prepareToLoadURL:", [request URL]);
    [[(SUWebViewController *)self webView] loadRequest:request];
  }

  else
  {
    v11 = SSError();

    [(SUWebViewController *)self _finishLoadWithResult:0 error:v11];
  }
}

- (id)_placeholderBackgroundView
{
  _scrollView = [(SUWebView *)self->_webView _scrollView];

  return [_scrollView viewWithTag:1886151271];
}

- (void)_prepareToLoadURL:(id)l
{
  webView = [(SUWebViewController *)self webView];
  [-[SUWebView _browserView](webView "_browserView")];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [-[SUWebViewController view](self "view")];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  copyScriptProperties = [(SUWebViewController *)self copyScriptProperties];
  if (![copyScriptProperties shouldLoadProgressively] || objc_msgSend(mEMORY[0x1E69DC668], "launchedToTest") && (objc_msgSend(mEMORY[0x1E69DC668], "shouldRecordExtendedLaunchTime") & 1) != 0)
  {
    [(SUWebViewController *)self _removePlaceholderBackgroundView];
    [(SUWebView *)webView removeFromSuperview];
    v16 = 0;
    v17 = 0;
    v14 = 1.0;
  }

  else
  {
    [(SUWebViewController *)self _addPlaceholderBackgroundView];
    [-[SUWebViewController view](self "view")];
    v17 = 1;
    v16 = 18;
  }

  [(SUWebView *)webView setAutoresizingMask:v16];
  [(SUWebViewController *)self setViewIsReady:v17];
  [(SUWebView *)webView setFrame:v8, v10, v12, v14];

  self->_url = l;
  self->_displayedURL = self->_url;

  [(SUWebViewController *)self _reloadObjectPool];
}

- (void)_reloadBackgroundViewPropertiesWithScriptProperties:(id)properties
{
  if ([(SUWebViewController *)self isViewLoaded])
  {
    v5 = [properties usesBlurredBackground] ? objc_msgSend(MEMORY[0x1E69DC888], "clearColor") : objc_msgSend(properties, "backgroundColor");
    v6 = v5;
    if (v5)
    {
      view = [(SUWebViewController *)self view];
      [view setBackgroundColor:v6];
      [v6 alphaComponent];
      [view setOpaque:v8 == 1.0];
      [(SUWebView *)self->_webView setBackgroundColor:v6];
      webView = self->_webView;
      [v6 alphaComponent];

      [(SUWebView *)webView setOpaque:v10 == 1.0];
    }
  }
}

- (void)_reloadObjectPool
{
  if ([(SUViewController *)self navigationController])
  {

    v3 = objc_alloc_init(SUObjectPool);
    self->_objectPool = v3;
    v4 = objc_opt_class();
    [(SUObjectPool *)v3 addObjectsOfClass:v4 count:2 forClass:objc_opt_class()];
    objectPool = self->_objectPool;
    v6 = objc_opt_class();
    [(SUObjectPool *)objectPool addObjectsOfClass:v6 count:1 forClass:objc_opt_class()];
    v7 = self->_objectPool;
    v8 = objc_opt_class();
    v9 = objc_opt_class();

    [(SUObjectPool *)v7 addObjectsOfClass:v8 count:1 forClass:v9];
  }
}

- (void)_reloadPlaceholderBackgroundView
{
  [-[SUWebViewController _placeholderBackgroundView](self "_placeholderBackgroundView")];
  v7 = [-[SUViewController viewControllerFactory](self "viewControllerFactory")];
  [v7 setClientInterface:{-[SUViewController clientInterface](self, "clientInterface")}];
  [(SUWebViewController *)self addChildViewController:v7];
  copyScriptProperties = [(SUWebViewController *)self copyScriptProperties];
  if ([copyScriptProperties placeholderBackgroundGradient])
  {
    placeholderBackgroundGradient = [copyScriptProperties placeholderBackgroundGradient];
  }

  else
  {
    placeholderBackgroundGradient = [-[UIViewController section](self "section")];
    if (!placeholderBackgroundGradient)
    {
      goto LABEL_5;
    }
  }

  [v7 setBackgroundGradient:placeholderBackgroundGradient];
LABEL_5:
  [v7 setScriptProperties:copyScriptProperties];

  _scrollView = [[(SUWebViewController *)self webView] _scrollView];
  view = [v7 view];
  [v7 setView:0];
  [_scrollView bounds];
  [view setFrame:?];
  [view setTag:1886151271];
  [_scrollView insertSubview:view atIndex:0];

  [(SUWebViewController *)self removeChildViewController:v7];
}

- (void)_reloadUI
{
  view = [(SUWebViewController *)self view];
  webView = [(SUWebViewController *)self webView];
  [(SUWebView *)webView setAutoresizingMask:18];
  [view bounds];
  [(SUWebView *)webView setFrame:?];
  [view addSubview:webView];
  title = [(SUWebView *)webView title];
  if ([(NSString *)title length])
  {
    [(SUViewController *)self setTitle:title changeTabBarItem:0];
  }

  copyScriptProperties = [(SUWebViewController *)self copyScriptProperties];
  [(SUWebViewController *)self _applyScriptProperties:copyScriptProperties];
}

- (void)_removePlaceholderBackgroundView
{
  v3 = [-[SUWebView _scrollView](self->_webView "_scrollView")];
  if (v3)
  {
    v4 = v3;
    _browserView = [(SUWebView *)self->_webView _browserView];
    [_browserView setBackgroundColor:{objc_msgSend(MEMORY[0x1E69DC888], "systemBackgroundColor")}];
    [_browserView setOpaque:{-[SUWebView isOpaque](self->_webView, "isOpaque")}];
    [_browserView setNeedsDisplay];

    [v4 removeFromSuperview];
  }
}

- (void)_sendOrientationWillChangeToInterfaceOrientation:(int64_t)orientation
{
  v4 = 90;
  v5 = -90;
  v6 = 180;
  if (orientation != 2)
  {
    v6 = 0;
  }

  if (orientation != 4)
  {
    v5 = v6;
  }

  if (orientation != 3)
  {
    v4 = v5;
  }

  if (orientation == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
  v10 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v8, @"orientation", 0}];
  v9 = [[SUScriptDictionary alloc] initWithDictionary:v10];
  [(SUWebViewManager *)self->_webViewManager dispatchEvent:v9 forName:@"orientationwillchange" synchronously:1];
}

@end