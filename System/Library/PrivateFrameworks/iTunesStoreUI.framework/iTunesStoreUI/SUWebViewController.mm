@interface SUWebViewController
- (CGRect)documentBounds;
- (CGSize)minimumViewSize;
- (SUWebView)webView;
- (id)_placeholderBackgroundView;
- (id)copyArchivableContext;
- (id)copyDefaultScriptProperties;
- (id)copyObjectForScriptFromPoolWithClass:(Class)a3;
- (id)copyScriptProperties;
- (id)displayedURL;
- (id)navigationItemForScriptInterface;
- (id)newRotationController;
- (id)newScriptInterface;
- (id)storePageProtocol;
- (void)_addPlaceholderBackgroundView;
- (void)_applySavedScrollOffsetIfPossible;
- (void)_applyScriptProperties:(id)a3;
- (void)_finishLoadWithResult:(BOOL)a3 error:(id)a4;
- (void)_getURLRequestForOperation:(id)a3 block:(id)a4;
- (void)_loadURLRequest:(id)a3;
- (void)_loadWithURLOperation:(id)a3 completionBlock:(id)a4;
- (void)_prepareToLoadURL:(id)a3;
- (void)_reloadBackgroundViewPropertiesWithScriptProperties:(id)a3;
- (void)_reloadObjectPool;
- (void)_reloadPlaceholderBackgroundView;
- (void)_reloadUI;
- (void)_removePlaceholderBackgroundView;
- (void)_sendOrientationWillChangeToInterfaceOrientation:(int64_t)a3;
- (void)_setExistingNavigationItem:(id)a3;
- (void)_setPerformanceMetrics:(id)a3;
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForeground;
- (void)dealloc;
- (void)invalidate;
- (void)keyboardDidHideWithInfo:(id)a3;
- (void)keyboardWillShowWithInfo:(id)a3;
- (void)loadView;
- (void)parentViewControllerHierarchyDidChange;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)reloadWithStorePage:(id)a3 forURL:(id)a4;
- (void)setAuthenticationContext:(id)a3;
- (void)setScriptProperties:(id)a3;
- (void)setStorePageProtocol:(id)a3;
- (void)storePageCleanupBeforeTearDown;
- (void)storePageProtocolDidChange;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)webViewManager:(id)a3 didFailLoadWithError:(id)a4;
- (void)webViewManager:(id)a3 didReceivePrimaryResponse:(id)a4;
- (void)webViewManager:(id)a3 didRejectInvalidRequest:(id)a4;
- (void)webViewManager:(id)a3 webDocumentViewDidSetFrame:(CGRect)a4;
- (void)webViewManager:(id)a3 willInjectScriptInterface:(id)a4;
- (void)webViewManagerDidFinishLoad:(id)a3;
- (void)webViewManagerDidStartLoad:(id)a3;
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

- (void)setAuthenticationContext:(id)a3
{
  authenticationContext = self->_authenticationContext;
  if (authenticationContext != a3)
  {

    self->_authenticationContext = [a3 mutableCopy];
    v6 = [(SUWebViewController *)self style];
    authenticationContext = self->_authenticationContext;
    if (v6 == 1)
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

  v3 = self->_authenticationContext;
  if (!v3)
  {
    account = self->_account;
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

    if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEFAULT))
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

      v3 = [objc_alloc(MEMORY[0x1E69D4888]) initWithBackingAccount:self->_account];
      if (!v3)
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

      v3 = [objc_msgSend(MEMORY[0x1E69D4890] defaultStore];
      self->_account = [(SSMutableAuthenticationContext *)v3 backingAccount];
      if (!v3)
      {
        goto LABEL_14;
      }
    }

    v3 = [objc_alloc(MEMORY[0x1E69D4898]) initWithAccount:v3];
  }

LABEL_14:
  v10 = [[SUWebViewManager alloc] initWithClientInterface:[(SUViewController *)self clientInterface]];
  self->_webViewManager = v10;
  [(SUWebViewManager *)v10 setAccount:self->_account];
  [(SUWebViewManager *)self->_webViewManager setAuthenticationContext:v3];
  [(SUWebViewManager *)self->_webViewManager setDelegate:self];
  [(SUWebViewManager *)self->_webViewManager setInitialRequestPerformance:self->_performanceMetrics];
  [(SUWebViewManager *)self->_webViewManager setShouldSignRequests:self->_shouldSignRequests];
  [(SUWebViewManager *)self->_webViewManager setTidHeaders:[(SUWebViewController *)self tidHeaders]];
  [(SUWebViewManager *)self->_webViewManager connectToWebView:self->_webView];

LABEL_15:
  result = self->_webView;
  if (!result)
  {
    v12 = [(SUWebViewController *)self copyScriptProperties];
    v13 = [[SUWebView alloc] initWithFrame:0.0, 0.0, 0.0, 1.0];
    self->_webView = v13;
    [(SUWebViewManager *)self->_webViewManager connectToWebView:v13];
    -[SUWebView setBackgroundColor:](self->_webView, "setBackgroundColor:", [MEMORY[0x1E69DC888] systemBackgroundColor]);
    [(SUWebViewController *)self _applyScriptProperties:v12];

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
  v3 = [(SUViewController *)&v8 copyArchivableContext];
  if (![(SUViewController *)self shouldExcludeFromNavigationHistory])
  {
    v4 = [(SUWebView *)self->_webView scrollView];
    if (v4)
    {
      v5 = MEMORY[0x1E696B098];
      [v4 contentOffset];
      v6 = [v5 valueWithCGPoint:?];
LABEL_6:
      [v3 setValue:v6 forMetadataKey:@"offset"];
      return v3;
    }

    if ([(SUViewController *)self _restoredContext])
    {
      v6 = [(SUViewControllerContext *)[(SUViewController *)self _restoredContext] valueForMetadataKey:@"offset"];
      goto LABEL_6;
    }
  }

  return v3;
}

- (id)copyDefaultScriptProperties
{
  v8.receiver = self;
  v8.super_class = SUWebViewController;
  v2 = [(SUViewController *)&v8 copyDefaultScriptProperties];
  [v2 setDoubleTapEnabled:0];
  [v2 setFlashesScrollIndicators:1];
  [v2 setInputViewObeysDOMFocus:0];
  [v2 setScrollingDisabled:0];
  [v2 setShouldShowFormAccessory:1];
  v3 = [MEMORY[0x1E69E47F8] sharedCache];
  v4 = [objc_msgSend(v3 URLBagForContext:{objc_msgSend(MEMORY[0x1E69D49F8], "contextWithBagType:", 0)), "valueForKey:", @"p2-client-options"}];
  objc_opt_class();
  v5 = 0;
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 objectForKey:@"load-progressively"];
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 1;
  }

  [v2 setShouldLoadProgressively:v6];
  return v2;
}

- (id)copyScriptProperties
{
  v8.receiver = self;
  v8.super_class = SUWebViewController;
  v3 = [(SUViewController *)&v8 copyScriptProperties];
  webView = self->_webView;
  if (webView)
  {
    [v3 setBackgroundColor:{-[SUWebView backgroundColor](webView, "backgroundColor")}];
    [v3 setAlwaysDispatchesScrollEvents:{-[SUWebView _alwaysDispatchesScrollEvents](self->_webView, "_alwaysDispatchesScrollEvents")}];
    v5 = [(SUWebView *)self->_webView _browserView];
    [v3 setDoubleTapEnabled:{objc_msgSend(v5, "isDoubleTapEnabled")}];
    [v3 setInputViewObeysDOMFocus:{objc_msgSend(v5, "inputViewObeysDOMFocus")}];
    [v3 setScrollingDisabled:{-[SUWebView isScrollingEnabled](self->_webView, "isScrollingEnabled") ^ 1}];
    [v3 setShouldShowFormAccessory:{objc_msgSend(v5, "isAccessoryEnabled")}];
    v6 = [(SUWebView *)self->_webView scrollView];
    [v3 setScrollContentInsets:SUUIScrollViewGetDefaultContentInset(v6)];
    [v3 setShowsBackgroundShadow:{objc_msgSend(v6, "_showsBackgroundShadow")}];
    [v3 setShowsHorizontalScrollIndicator:{objc_msgSend(v6, "showsHorizontalScrollIndicator")}];
    [v3 setShowsVerticalScrollIndicator:{objc_msgSend(v6, "showsVerticalScrollIndicator")}];
  }

  return v3;
}

- (id)copyObjectForScriptFromPoolWithClass:(Class)a3
{
  v4 = [(SUObjectPool *)self->_objectPool copyPoppedObjectForClass:a3];
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
  v2 = [(SUWebView *)self->_webView _browserView];
  if (v2)
  {
    [v2 documentBounds];
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

- (void)keyboardDidHideWithInfo:(id)a3
{
  [(SUWebView *)self->_webView _updateScrollerViewForInputView:?];
  v5.receiver = self;
  v5.super_class = SUWebViewController;
  [(UIViewController *)&v5 keyboardDidHideWithInfo:a3];
}

- (void)keyboardWillShowWithInfo:(id)a3
{
  [(SUWebView *)self->_webView _updateScrollerViewForInputView:?];
  v5.receiver = self;
  v5.super_class = SUWebViewController;
  [(UIViewController *)&v5 keyboardWillShowWithInfo:a3];
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

  v4 = [(SUDelayedNavigationItem *)delayedNavigationItem wrappedNavigationItem];
  v5 = [(SUViewController *)self navigationItem];
  result = self->_delayedNavigationItem;
  if (v4 != v5)
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

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
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
    v10 = [i parentViewController];

    [v10 presentViewController:a3 animated:v6 completion:0];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SUWebViewController;
    [(SUWebViewController *)&v11 presentViewController:a3 animated:v6 completion:a5];
  }
}

- (void)reloadWithStorePage:(id)a3 forURL:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  [(SUWebViewController *)self _prepareToLoadURL:a4];
  v7 = [(SUWebViewController *)self webView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MEMORY[0x1E69D4938] sharedConfig];
    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    if (!os_log_type_enabled([v8 OSLogObject], OS_LOG_TYPE_DEFAULT))
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

    [(SUWebView *)v7 loadData:a3 MIMEType:@"text/html" textEncodingName:CFStringConvertEncodingToIANACharSetName(0x8000100u) baseURL:a4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [MEMORY[0x1E69D4938] sharedConfig];
      v14 = [v13 shouldLog];
      if ([v13 shouldLogToDisk])
      {
        v15 = v14 | 2;
      }

      else
      {
        v15 = v14;
      }

      if (!os_log_type_enabled([v13 OSLogObject], OS_LOG_TYPE_DEFAULT))
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

      [(SUWebView *)v7 loadHTMLString:a3 baseURL:a4, v29];
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v20 = [MEMORY[0x1E69D4938] sharedConfig];
      v21 = [v20 shouldLog];
      if ([v20 shouldLogToDisk])
      {
        v22 = v21 | 2;
      }

      else
      {
        v22 = v21;
      }

      if (!os_log_type_enabled([v20 OSLogObject], OS_LOG_TYPE_DEFAULT))
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

        [(SUWebView *)v7 loadArchive:a3, v29];
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

- (void)_setExistingNavigationItem:(id)a3
{
  [(SUDelayedNavigationItem *)self->_delayedNavigationItem setWrappedNavigationItem:?];
  v5.receiver = self;
  v5.super_class = SUWebViewController;
  [(SUViewController *)&v5 _setExistingNavigationItem:a3];
}

- (void)setScriptProperties:(id)a3
{
  v5.receiver = self;
  v5.super_class = SUWebViewController;
  [(SUViewController *)&v5 setScriptProperties:?];
  [(SUWebViewController *)self _applyScriptProperties:a3];
}

- (void)setStorePageProtocol:(id)a3
{
  storePageProtocol = self->_storePageProtocol;
  if (storePageProtocol != a3)
  {

    self->_storePageProtocol = a3;

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

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  if (self->_hasEverAppeared)
  {
    [(SUWebViewManager *)self->_webViewManager dispatchEvent:0 forName:@"didreappear"];
  }

  self->_hasEverAppeared = 1;
  v5 = [(SUWebViewController *)self copyScriptProperties];
  [(SUWebViewController *)self _applyScriptProperties:v5];
  if ((-[SUWebView isLoading](self->_webView, "isLoading") & 1) == 0 && -[SUWebView request](self->_webView, "request") && [v5 flashesScrollIndicators])
  {
    [-[SUWebView _scrollView](self->_webView "_scrollView")];
  }

  v6.receiver = self;
  v6.super_class = SUWebViewController;
  [(SUViewController *)&v6 viewDidAppear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  [(SUWebViewManager *)self->_webViewManager dispatchEvent:0 forName:@"diddisappear"];
  [-[SUWebView _scrollView](self->_webView "_scrollView")];
  v5.receiver = self;
  v5.super_class = SUWebViewController;
  [(SUViewController *)&v5 viewDidDisappear:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
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
  [(SUViewController *)&v6 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(SUWebViewManager *)self->_webViewManager dispatchEvent:0 forName:@"willdisappear"];
  self->_lastKnownOrientation = [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  v5.receiver = self;
  v5.super_class = SUWebViewController;
  [(SUViewController *)&v5 viewWillDisappear:v3];
}

- (id)newRotationController
{
  v3 = [SUWebViewRotationController alloc];

  return [(SURotationController *)v3 initWithViewController:self];
}

- (void)webViewManager:(id)a3 didFailLoadWithError:(id)a4
{
  if ([a4 code] != -999)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

    [(SUWebViewController *)self _finishLoadWithResult:0 error:a4];
  }
}

- (void)webViewManager:(id)a3 didReceivePrimaryResponse:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  if (!self->_mescalSession)
  {
    goto LABEL_20;
  }

  [a4 allHeaderFields];
  v6 = ISDictionaryValueForCaseInsensitiveString();
  if (![v6 length])
  {
    goto LABEL_20;
  }

  v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
  v26 = 0;
  v8 = [(SUMescalSession *)self->_mescalSession verifyPrimeSignature:v7 error:&v26];
  v9 = [MEMORY[0x1E69D4938] sharedConfig];
  v10 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = v10 | 2;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v9 OSLogObject];
  if (v8)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
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
      v15 = [a4 URL];
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
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
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
  v21 = [a4 URL];
  displayedURL = self->_displayedURL;
  if (displayedURL != v21)
  {
    v23 = v21;

    self->_displayedURL = [v23 copy];
  }
}

- (void)webViewManager:(id)a3 didRejectInvalidRequest:(id)a4
{
  if (self->_loadBlock)
  {
    v5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"SUErrorDomain" code:1 userInfo:0];
    [(SUWebViewController *)self _finishLoadWithResult:0 error:?];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURLRequest:a4];
    [(UIViewController *)self reloadWithURLRequestProperties:?];
  }
}

- (void)webViewManager:(id)a3 willInjectScriptInterface:(id)a4
{
  v5 = [-[SUWebViewController parentViewController](self parentViewController];

  [a4 setScriptWindowContext:v5];
}

- (void)webViewManagerDidFinishLoad:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = [(SUWebView *)self->_webView _browserView];
  WebThreadLock();
  v5 = [objc_msgSend(objc_msgSend(objc_msgSend(v4 "webView")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 statusCode] - 400) <= 0x257)
  {
    [(UIViewController *)self handleStoreFailureWithError:SSError()];
  }

  [(SUDelayedNavigationItem *)self->_delayedNavigationItem commitDelayedChanges];
  [(SUDelayedNavigationItem *)self->_delayedNavigationItem setShouldDelayChanges:0];
  v6 = [(SUObjectPool *)self->_objectPool vendedObjects];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v29 objects:v41 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        if ([v11 conformsToProtocol:&unk_1F423BE40])
        {
          [v11 setDeferringInterfaceUpdates:0];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v8);
  }

  self->_objectPool = 0;
  [(SUWebViewController *)self _reloadUI];
  [(SUWebViewController *)self _removePlaceholderBackgroundView];
  v12 = self;
  [(SUWebViewController *)self setViewIsReady:1];
  [(SUWebViewController *)self _applySavedScrollOffsetIfPossible];
  v13 = [(SUWebViewController *)self copyScriptProperties];
  if ([v13 flashesScrollIndicators])
  {
    [-[SUWebView _scrollView](self->_webView "_scrollView")];
  }

  v28 = 0;
  if ([(SUWebView *)self->_webView getStatusBarStyle:&v28])
  {
    if (v28)
    {
      v14 = [MEMORY[0x1E69DC668] sharedApplication];
      [v14 setStatusBarStyle:v28];
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
    v16 = [MEMORY[0x1E69D4938] sharedConfig];
    v17 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    if (!os_log_type_enabled([v16 OSLogObject], OS_LOG_TYPE_DEFAULT))
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

- (void)webViewManagerDidStartLoad:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  [(SUDelayedNavigationItem *)self->_delayedNavigationItem setShouldDelayChanges:1];
  if (self->_performanceMetrics)
  {
    Current = CFAbsoluteTimeGetCurrent();
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

    if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEFAULT))
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

- (void)webViewManager:(id)a3 webDocumentViewDidSetFrame:(CGRect)a4
{
  [(SUWebViewController *)self _applySavedScrollOffsetIfPossible:a3];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];

  [v5 postNotificationName:@"SUViewControllerDocumentBoundsDidChangeNotification" object:self];
}

- (void)_loadWithURLOperation:(id)a3 completionBlock:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  loadBlock = self->_loadBlock;
  if (loadBlock != a4)
  {

    self->_loadBlock = [a4 copy];
  }

  v8 = [MEMORY[0x1E69D4A30] weakReferenceWithObject:self];
  v9 = [MEMORY[0x1E69D4938] sharedConfig];
  v10 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = v10 | 2;
  }

  else
  {
    v11 = v10;
  }

  if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_DEFAULT))
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
  [(SUWebViewController *)self _getURLRequestForOperation:a3 block:v17, v15];
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

- (void)_setPerformanceMetrics:(id)a3
{
  performanceMetrics = self->_performanceMetrics;
  if (performanceMetrics != a3)
  {

    self->_performanceMetrics = a3;
    webViewManager = self->_webViewManager;

    [(SUWebViewManager *)webViewManager setInitialRequestPerformance:a3];
  }
}

- (void)_addPlaceholderBackgroundView
{
  v3 = [[(SUWebViewController *)self webView] _browserView];
  [v3 setBackgroundColor:{objc_msgSend(MEMORY[0x1E69DC888], "clearColor")}];
  [v3 setOpaque:0];
  [v3 setNeedsDisplay];
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
    v12 = [(SUWebView *)self->_webView scrollView];
    if (v12)
    {
      v13 = v12;
      [v12 contentOffset];
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

- (void)_applyScriptProperties:(id)a3
{
  if (a3)
  {
    webView = self->_webView;
    if (webView)
    {
      v6 = [(SUWebView *)webView _scrollView];
      [v6 setShowsHorizontalScrollIndicator:{objc_msgSend(a3, "showsHorizontalScrollIndicator")}];
      [v6 setShowsVerticalScrollIndicator:{objc_msgSend(a3, "showsVerticalScrollIndicator")}];
      [a3 scrollContentInsets];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      if (_UIApplicationUsesLegacyUI())
      {
        SUUIScrollViewSetDefaultContentInset(v6, v8, v10, v12, v14);
      }

      -[SUWebView _setAlwaysDispatchesScrollEvents:](self->_webView, "_setAlwaysDispatchesScrollEvents:", [a3 alwaysDispatchesScrollEvents]);
      v15 = [a3 showsBackgroundShadow];
      v16 = [a3 topExtensionColor];
      if (v16)
      {
        v17 = v16;
        if (!SUGradientColorIsPatternColor(v16, 0))
        {
          [v6 setTopExtensionViewColor:0];
          [(SUWebView *)self->_webView setShowsTopBackgroundShadow:v15];
          [(SUWebView *)self->_webView setTopBackgroundColor:v17];
          v15 = 0;
          goto LABEL_11;
        }

        v18 = v6;
        v19 = v17;
      }

      else
      {
        v18 = v6;
        v19 = 0;
      }

      [v18 setTopExtensionViewColor:v19];
      [(SUWebView *)self->_webView setTopBackgroundColor:0];
LABEL_11:
      [v6 _setShowsBackgroundShadow:v15];
      v20 = [(SUWebView *)self->_webView _browserView];
      [v20 setAccessoryEnabled:{objc_msgSend(a3, "shouldShowFormAccessory")}];
      [v20 setDoubleTapEnabled:{objc_msgSend(a3, "isDoubleTapEnabled")}];
      [v20 setInputViewObeysDOMFocus:{objc_msgSend(a3, "inputViewObeysDOMFocus")}];
      -[SUWebView setScrollingEnabled:](self->_webView, "setScrollingEnabled:", [a3 isScrollingDisabled] ^ 1);
    }
  }

  [(SUWebViewController *)self _reloadBackgroundViewPropertiesWithScriptProperties:a3];
}

- (void)_finishLoadWithResult:(BOOL)a3 error:(id)a4
{
  loadBlock = self->_loadBlock;
  if (loadBlock)
  {
    v6 = a3;
    v9 = loadBlock;
    v8 = self;

    self->_loadBlock = 0;
    v9[2](v9, v6, a4);
  }
}

- (void)_getURLRequestForOperation:(id)a3 block:(id)a4
{
  v7 = [a3 requestProperties];
  v8 = [MEMORY[0x1E69D49F8] contextWithBagType:{objc_msgSend(v7, "URLBagType")}];
  v9 = [objc_alloc(MEMORY[0x1E69E4770]) initWithBagContext:v8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__SUWebViewController__getURLRequestForOperation_block___block_invoke;
  v10[3] = &unk_1E8164C90;
  v10[4] = v9;
  v10[5] = self;
  v10[6] = v7;
  v10[7] = a3;
  v10[8] = v8;
  v10[9] = a4;
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

- (void)_loadURLRequest:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3)
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

    if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEFAULT))
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
      v19 = [a3 URL];
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

    -[SUWebViewController _prepareToLoadURL:](self, "_prepareToLoadURL:", [a3 URL]);
    [[(SUWebViewController *)self webView] loadRequest:a3];
  }

  else
  {
    v11 = SSError();

    [(SUWebViewController *)self _finishLoadWithResult:0 error:v11];
  }
}

- (id)_placeholderBackgroundView
{
  v2 = [(SUWebView *)self->_webView _scrollView];

  return [v2 viewWithTag:1886151271];
}

- (void)_prepareToLoadURL:(id)a3
{
  v5 = [(SUWebViewController *)self webView];
  [-[SUWebView _browserView](v5 "_browserView")];
  v6 = [MEMORY[0x1E69DC668] sharedApplication];
  [-[SUWebViewController view](self "view")];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(SUWebViewController *)self copyScriptProperties];
  if (![v15 shouldLoadProgressively] || objc_msgSend(v6, "launchedToTest") && (objc_msgSend(v6, "shouldRecordExtendedLaunchTime") & 1) != 0)
  {
    [(SUWebViewController *)self _removePlaceholderBackgroundView];
    [(SUWebView *)v5 removeFromSuperview];
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

  [(SUWebView *)v5 setAutoresizingMask:v16];
  [(SUWebViewController *)self setViewIsReady:v17];
  [(SUWebView *)v5 setFrame:v8, v10, v12, v14];

  self->_url = a3;
  self->_displayedURL = self->_url;

  [(SUWebViewController *)self _reloadObjectPool];
}

- (void)_reloadBackgroundViewPropertiesWithScriptProperties:(id)a3
{
  if ([(SUWebViewController *)self isViewLoaded])
  {
    v5 = [a3 usesBlurredBackground] ? objc_msgSend(MEMORY[0x1E69DC888], "clearColor") : objc_msgSend(a3, "backgroundColor");
    v6 = v5;
    if (v5)
    {
      v7 = [(SUWebViewController *)self view];
      [v7 setBackgroundColor:v6];
      [v6 alphaComponent];
      [v7 setOpaque:v8 == 1.0];
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
  v3 = [(SUWebViewController *)self copyScriptProperties];
  if ([v3 placeholderBackgroundGradient])
  {
    v4 = [v3 placeholderBackgroundGradient];
  }

  else
  {
    v4 = [-[UIViewController section](self "section")];
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  [v7 setBackgroundGradient:v4];
LABEL_5:
  [v7 setScriptProperties:v3];

  v5 = [[(SUWebViewController *)self webView] _scrollView];
  v6 = [v7 view];
  [v7 setView:0];
  [v5 bounds];
  [v6 setFrame:?];
  [v6 setTag:1886151271];
  [v5 insertSubview:v6 atIndex:0];

  [(SUWebViewController *)self removeChildViewController:v7];
}

- (void)_reloadUI
{
  v3 = [(SUWebViewController *)self view];
  v4 = [(SUWebViewController *)self webView];
  [(SUWebView *)v4 setAutoresizingMask:18];
  [v3 bounds];
  [(SUWebView *)v4 setFrame:?];
  [v3 addSubview:v4];
  v5 = [(SUWebView *)v4 title];
  if ([(NSString *)v5 length])
  {
    [(SUViewController *)self setTitle:v5 changeTabBarItem:0];
  }

  v6 = [(SUWebViewController *)self copyScriptProperties];
  [(SUWebViewController *)self _applyScriptProperties:v6];
}

- (void)_removePlaceholderBackgroundView
{
  v3 = [-[SUWebView _scrollView](self->_webView "_scrollView")];
  if (v3)
  {
    v4 = v3;
    v5 = [(SUWebView *)self->_webView _browserView];
    [v5 setBackgroundColor:{objc_msgSend(MEMORY[0x1E69DC888], "systemBackgroundColor")}];
    [v5 setOpaque:{-[SUWebView isOpaque](self->_webView, "isOpaque")}];
    [v5 setNeedsDisplay];

    [v4 removeFromSuperview];
  }
}

- (void)_sendOrientationWillChangeToInterfaceOrientation:(int64_t)a3
{
  v4 = 90;
  v5 = -90;
  v6 = 180;
  if (a3 != 2)
  {
    v6 = 0;
  }

  if (a3 != 4)
  {
    v5 = v6;
  }

  if (a3 != 3)
  {
    v4 = v5;
  }

  if (a3 == 1)
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