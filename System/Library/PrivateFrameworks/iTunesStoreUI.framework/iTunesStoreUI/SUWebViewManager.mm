@interface SUWebViewManager
+ (id)defaultLocalStoragePath;
- (BOOL)_presentModalAlertWithMessage:(id)message includingCancelButton:(BOOL)button configurationHandler:(id)handler;
- (BOOL)respondsToSelector:(SEL)selector;
- (SUWebViewManager)initWithClientInterface:(id)interface;
- (id)DOMElementForScriptInterface:(id)interface element:(id)element;
- (id)_delegate;
- (id)_locateStorePageViewController;
- (id)_userIdentifier;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)parentViewControllerForScriptInterface:(id)interface;
- (id)performanceMetricsForScriptInterface:(id)interface;
- (id)uiWebView:(id)view identifierForInitialRequest:(id)request fromDataSource:(id)source;
- (id)webThreadWebView:(id)view resource:(id)resource willSendRequest:(id)request redirectResponse:(id)response fromDataSource:(id)source;
- (id)webView:(id)view runJavaScriptTextInputPanelWithPrompt:(id)prompt defaultText:(id)text initiatedByFrame:(id)frame;
- (uint64_t)_delegate;
- (void)_beginUsingNetwork;
- (void)_cancelUsingNetwork;
- (void)_endUsingNetwork;
- (void)_enumerateScriptInterfacesWithBlock:(id)block;
- (void)_requestWebScriptReloadWithContext:(id)context;
- (void)connectToWebView:(id)view;
- (void)dealloc;
- (void)disconnectFromWebView;
- (void)dispatchEvent:(id)event forName:(id)name synchronously:(BOOL)synchronously;
- (void)forwardInvocation:(id)invocation;
- (void)scriptInterface:(id)interface requireCellularForResourceWithURL:(id)l;
- (void)setAuthenticationContext:(id)context;
- (void)setScriptWindowContext:(id)context;
- (void)uiWebView:(id)view decidePolicyForMIMEType:(id)type request:(id)request frame:(id)frame decisionListener:(id)listener;
- (void)uiWebView:(id)view resource:(id)resource didFailLoadingWithError:(id)error fromDataSource:(id)source;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action request:(id)request frame:(id)frame decisionListener:(id)listener;
- (void)webView:(id)view didClearWindowObject:(id)object forFrame:(id)frame;
- (void)webView:(id)view didFailLoadWithError:(id)error;
- (void)webView:(id)view didFirstLayoutInFrame:(id)frame;
- (void)webView:(id)view didParseSource:(id)source fromURL:(id)l sourceId:(int64_t)id forWebFrame:(id)frame;
- (void)webView:(id)view didReceiveTitle:(id)title forFrame:(id)frame;
- (void)webView:(id)view didStartProvisionalLoadForFrame:(id)frame;
- (void)webView:(id)view documentViewDidSetFrame:(CGRect)frame;
- (void)webView:(id)view exceptionWasRaised:(id)raised sourceId:(int64_t)id line:(int)line forWebFrame:(id)frame;
- (void)webView:(id)view resource:(id)resource didReceiveResponse:(id)response fromDataSource:(id)source;
- (void)webViewDidFinishLoad:(id)load;
- (void)webViewDidStartLoad:(id)load;
@end

@implementation SUWebViewManager

- (SUWebViewManager)initWithClientInterface:(id)interface
{
  v9.receiver = self;
  v9.super_class = SUWebViewManager;
  v4 = [(SUWebViewManager *)&v9 init];
  if (v4)
  {
    v4->_clientInterface = interface;
    v4->_lock = objc_alloc_init(MEMORY[0x1E696AD10]);
    v4->_webFramesPendingInitialRequest = CFSetCreateMutable(0, 0, 0);
    mEMORY[0x1E69E47F8] = [MEMORY[0x1E69E47F8] sharedCache];
    v6 = [objc_msgSend(mEMORY[0x1E69E47F8] URLBagForContext:{objc_msgSend(MEMORY[0x1E69D49F8], "contextWithBagType:", 0)), "valueForKey:", @"p2-client-options"}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 objectForKey:@"suppress-cookie-hosts"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4->_suppressCookiesHosts = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v7];
      }
    }
  }

  return v4;
}

- (void)dealloc
{
  [(SUWebViewManager *)self _cancelUsingNetwork];
  scriptInterfaces = self->_scriptInterfaces;
  if (scriptInterfaces)
  {
    memset(&enumerator, 0, sizeof(enumerator));
    NSEnumerateMapTable(&enumerator, scriptInterfaces);
    value = 0;
    key = 0;
    while (NSNextMapEnumeratorPair(&enumerator, &key, &value))
    {
      [value setDelegate:0];
      [value tearDownUserInterface];
    }

    NSEndMapTableEnumeration(&enumerator);
    NSFreeMapTable(self->_scriptInterfaces);
  }

  webFramesPendingInitialRequest = self->_webFramesPendingInitialRequest;
  if (webFramesPendingInitialRequest)
  {
    CFRelease(webFramesPendingInitialRequest);
  }

  v5.receiver = self;
  v5.super_class = SUWebViewManager;
  [(SUWebViewManager *)&v5 dealloc];
}

+ (id)defaultLocalStoragePath
{
  if (!defaultLocalStoragePath_sLocalStoragePath)
  {
    v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
    if ([(NSArray *)v3 count])
    {
      v4 = [objc_msgSend(-[NSArray objectAtIndex:](v3 objectAtIndex:{0), "stringByAppendingPathComponent:", @"com.apple.iTunesStore", "stringByAppendingPathComponent:", @"LocalStorage"}];
      if ([MEMORY[0x1E696AC08] ensureDirectoryExists:v4])
      {
        defaultLocalStoragePath_sLocalStoragePath = v4;
      }
    }
  }

  return defaultLocalStoragePath_sLocalStoragePath;
}

- (void)connectToWebView:(id)view
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_webView != view)
  {
    [(SUWebViewManager *)self disconnectFromWebView];
    self->_webView = view;
    [view setDelegate:self];
    if (self->_webView)
    {
      v5 = [objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] == 1;
      _scrollView = [(UIWebView *)self->_webView _scrollView];
      [_scrollView setDecelerationRate:0.998];
      [_scrollView _setShowsBackgroundShadow:v5];
      _browserView = [(UIWebView *)self->_webView _browserView];
      [_browserView setViewportSize:0xFFFFFFLL forDocumentTypes:{*MEMORY[0x1E69DE7A0], *MEMORY[0x1E69DE798]}];
      [_browserView setAllowsDataDetectorsSheet:0];
      [_browserView setAllowsImageSheet:0];
      [_browserView setAllowsLinkSheet:0];
      [_browserView setAllowsUserScaling:0 forDocumentTypes:0xFFFFFFLL];
      [_browserView setDoubleTapEnabled:0];
      [_browserView setInputViewObeysDOMFocus:0];
      webView = [_browserView webView];
      userAgent = [(SUClientInterface *)self->_clientInterface userAgent];
      if (!userAgent)
      {
        userAgent = [MEMORY[0x1E69E4808] copyUserAgent];
      }

      [webView setCustomUserAgent:userAgent];

      v10 = [objc_alloc(MEMORY[0x1E69E2F78]) initWithIdentifier:@"iTunesStorePreferences"];
      [v10 setCacheModel:2];
      [v10 setJavaScriptEnabled:1];
      [v10 setOfflineWebApplicationCacheEnabled:1];
      localStoragePath = [(SUClientInterface *)self->_clientInterface localStoragePath];
      if (localStoragePath)
      {
        [v10 _setLocalStorageDatabasePath:localStoragePath];
      }

      if (CFPreferencesGetAppBooleanValue(@"DebugJavaScript", *MEMORY[0x1E69E4848], 0))
      {
        mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
        shouldLog = [mEMORY[0x1E69D4938] shouldLog];
        if ([mEMORY[0x1E69D4938] shouldLogToDisk])
        {
          v14 = shouldLog | 2;
        }

        else
        {
          v14 = shouldLog;
        }

        if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEBUG))
        {
          v14 &= 2u;
        }

        if (v14)
        {
          v20 = 138412290;
          v21 = objc_opt_class();
          LODWORD(v19) = 12;
          v18 = &v20;
          v15 = _os_log_send_and_compose_impl();
          if (v15)
          {
            v16 = v15;
            v17 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, &v20, v19}];
            free(v16);
            v18 = v17;
            SSFileLog();
          }
        }

        [webView setScriptDebugDelegate:{self, v18}];
      }

      [webView setPreferences:v10];

      [(UIWebView *)self->_webView setDataDetectorTypes:0];
      [(UIWebView *)self->_webView setScalesPageToFit:0];
      [(UIWebView *)self->_webView _setWebSelectionEnabled:0];
      [(UIWebView *)self->_webView _setDrawInWebThread:1];
      [(UIWebView *)self->_webView _setDrawsCheckeredPattern:0];
      [(UIWebView *)self->_webView setMediaPlaybackRequiresUserAction:0];
      if ([webView frameLoadDelegate] != self)
      {
        -[SUWebViewManager setOriginalFrameLoadDelegate:](self, "setOriginalFrameLoadDelegate:", [webView frameLoadDelegate]);
      }

      if ([webView policyDelegate] != self)
      {
        -[SUWebViewManager setOriginalPolicyDelegate:](self, "setOriginalPolicyDelegate:", [webView policyDelegate]);
      }

      if ([webView resourceLoadDelegate] != self)
      {
        -[SUWebViewManager setOriginalResourceLoadDelegate:](self, "setOriginalResourceLoadDelegate:", [webView resourceLoadDelegate]);
      }

      if ([webView UIDelegate] != self)
      {
        -[SUWebViewManager setOriginalUIDelegate:](self, "setOriginalUIDelegate:", [webView UIDelegate]);
      }

      [webView setFrameLoadDelegate:self];
      [webView setPolicyDelegate:self];
      [webView setResourceLoadDelegate:self];
      [webView setUIDelegate:self];
    }
  }
}

- (void)disconnectFromWebView
{
  WebThreadLock();
  v3 = [-[UIWebView _browserView](self->_webView "_browserView")];
  if ([v3 frameLoadDelegate] == self)
  {
    [v3 setFrameLoadDelegate:0];
  }

  if ([v3 policyDelegate] == self)
  {
    [v3 setPolicyDelegate:0];
  }

  if ([v3 resourceLoadDelegate] == self)
  {
    [v3 setResourceLoadDelegate:0];
  }

  if ([v3 scriptDebugDelegate] == self)
  {
    [v3 setScriptDebugDelegate:0];
  }

  if ([v3 UIDelegate] == self)
  {
    [v3 setUIDelegate:0];
  }

  [(UIWebView *)self->_webView setDelegate:0];
  self->_webView = 0;
}

- (void)dispatchEvent:(id)event forName:(id)name synchronously:(BOOL)synchronously
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__SUWebViewManager_dispatchEvent_forName_synchronously___block_invoke;
  v5[3] = &unk_1E8166190;
  v5[4] = event;
  v5[5] = name;
  synchronouslyCopy = synchronously;
  [(SUWebViewManager *)self _enumerateScriptInterfacesWithBlock:v5];
}

- (void)setAuthenticationContext:(id)context
{
  authenticationContext = self->_authenticationContext;
  if (authenticationContext != context)
  {
    v8[7] = v3;
    v8[8] = v4;

    self->_authenticationContext = [context copy];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__SUWebViewManager_setAuthenticationContext___block_invoke;
    v8[3] = &unk_1E81661B8;
    v8[4] = context;
    [(SUWebViewManager *)self _enumerateScriptInterfacesWithBlock:v8];
  }
}

- (void)setScriptWindowContext:(id)context
{
  if (self->_scriptWindowContext != context)
  {
    v7[7] = v3;
    v7[8] = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      self->_scriptWindowContext = context;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __43__SUWebViewManager_setScriptWindowContext___block_invoke;
      v7[3] = &unk_1E81661B8;
      v7[4] = context;
      [(SUWebViewManager *)self _enumerateScriptInterfacesWithBlock:v7];
    }
  }
}

- (void)forwardInvocation:(id)invocation
{
  v17 = *MEMORY[0x1E69E9840];
  selector = [invocation selector];
  if (objc_opt_respondsToSelector())
  {
    originalFrameLoadDelegate = self->_originalFrameLoadDelegate;
LABEL_9:

    [invocation invokeWithTarget:originalFrameLoadDelegate];
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    originalFrameLoadDelegate = self->_originalPolicyDelegate;
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    originalFrameLoadDelegate = self->_originalResourceLoadDelegate;
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    originalFrameLoadDelegate = self->_originalUIDelegate;
    goto LABEL_9;
  }

  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v9 = shouldLog | 2;
  }

  else
  {
    v9 = shouldLog;
  }

  if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v9 &= 2u;
  }

  if (v9)
  {
    v13 = 138412546;
    v14 = objc_opt_class();
    v15 = 2112;
    v16 = NSStringFromSelector(selector);
    LODWORD(v12) = 22;
    v10 = _os_log_send_and_compose_impl();
    if (v10)
    {
      v11 = v10;
      [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v13, v12}];
      free(v11);
      SSFileLog();
    }
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v6.receiver = self;
  v6.super_class = SUWebViewManager;
  result = [(SUWebViewManager *)&v6 methodSignatureForSelector:?];
  if (!result)
  {
    result = [self->_originalFrameLoadDelegate methodSignatureForSelector:selector];
    if (!result)
    {
      result = [self->_originalResourceLoadDelegate methodSignatureForSelector:selector];
      if (!result)
      {
        result = [self->_originalPolicyDelegate methodSignatureForSelector:selector];
        if (!result)
        {
          return [self->_originalUIDelegate methodSignatureForSelector:selector];
        }
      }
    }
  }

  return result;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v5.receiver = self;
  v5.super_class = SUWebViewManager;
  if ([(SUWebViewManager *)&v5 respondsToSelector:?]|| (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = objc_opt_respondsToSelector();
  }

  return v3 & 1;
}

- (id)DOMElementForScriptInterface:(id)interface element:(id)element
{
  v5 = [[SUDOMElement alloc] initWithDOMElement:element];
  [(SUDOMElement *)v5 setWebView:self->_webView];

  return v5;
}

- (id)parentViewControllerForScriptInterface:(id)interface
{
  _delegate = [(SUWebViewManager *)self _delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [_delegate viewControllerForWebViewManager:self];
}

- (id)performanceMetricsForScriptInterface:(id)interface
{
  WebThreadLock();
  if ([objc_msgSend(interface "webFrame")])
  {
    return 0;
  }

  v6 = self->_initialRequestPerformance;

  return v6;
}

- (void)scriptInterface:(id)interface requireCellularForResourceWithURL:(id)l
{
  [(NSLock *)self->_lock lock];
  requireCellularURLs = self->_requireCellularURLs;
  if (!requireCellularURLs)
  {
    requireCellularURLs = objc_alloc_init(MEMORY[0x1E695DFA8]);
    self->_requireCellularURLs = requireCellularURLs;
  }

  [(NSMutableSet *)requireCellularURLs addObject:l];
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)webView:(id)view documentViewDidSetFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  _delegate = [(SUWebViewManager *)self _delegate];
  if (objc_opt_respondsToSelector())
  {

    [_delegate webViewManager:self webDocumentViewDidSetFrame:{x, y, width, height}];
  }
}

- (void)uiWebView:(id)view decidePolicyForMIMEType:(id)type request:(id)request frame:(id)frame decisionListener:(id)listener
{
  v27 = *MEMORY[0x1E69E9840];
  if ([type rangeOfString:@"html" options:{1, request, frame}] == 0x7FFFFFFFFFFFFFFFLL)
  {
    _delegate = [(SUWebViewManager *)self _delegate];
    if (objc_opt_respondsToSelector())
    {
      mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog = [mEMORY[0x1E69D4938] shouldLog];
      if ([mEMORY[0x1E69D4938] shouldLogToDisk])
      {
        v14 = shouldLog | 2;
      }

      else
      {
        v14 = shouldLog;
      }

      if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEBUG))
      {
        v14 &= 2u;
      }

      if (v14)
      {
        v21 = 138412802;
        v22 = objc_opt_class();
        v23 = 2112;
        typeCopy = type;
        v25 = 2112;
        v26 = [request URL];
        LODWORD(v20) = 32;
        v19 = &v21;
        v15 = _os_log_send_and_compose_impl();
        if (v15)
        {
          v16 = v15;
          v17 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, &v21, v20}];
          free(v16);
          v19 = v17;
          SSFileLog();
        }
      }

      selfCopy = self;
      [_delegate webViewManager:self didRejectInvalidRequest:request];
    }

    [listener ignore];
  }

  else
  {

    [listener use];
  }
}

- (id)uiWebView:(id)view identifierForInitialRequest:(id)request fromDataSource:(id)source
{
  webFrame = [source webFrame];
  if (!CFSetContainsValue(self->_webFramesPendingInitialRequest, webFrame) || ![objc_msgSend(request "URL")] || (v9 = @"1", CFSetRemoveValue(self->_webFramesPendingInitialRequest, webFrame), !v9))
  {
    v9 = objc_alloc_init(MEMORY[0x1E69E58C0]);
  }

  [(NSLock *)self->_lock lock];
  v10 = -[NSMutableSet containsObject:](self->_requireCellularURLs, "containsObject:", [request URL]);
  [(NSLock *)self->_lock unlock];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12 = ISWeakLinkedStringConstantForString();
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v13 setObject:v12 forKey:*MEMORY[0x1E695AE48]];
    [v11 setObject:v13 forKey:*MEMORY[0x1E695AEB0]];

    objc_setAssociatedObject(v9, "com.apple.iTunesStoreUI.SUWebViewManager.connectionProperties", v11, 0x301);
  }

  return v9;
}

- (void)uiWebView:(id)view resource:(id)resource didFailLoadingWithError:(id)error fromDataSource:(id)source
{
  v23 = *MEMORY[0x1E69E9840];
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
    v17 = 138543874;
    v18 = objc_opt_class();
    v19 = 2112;
    resourceCopy = resource;
    v21 = 2112;
    errorCopy = error;
    LODWORD(v16) = 32;
    v15 = &v17;
    v12 = _os_log_send_and_compose_impl();
    if (v12)
    {
      v13 = v12;
      v14 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v17, v16}];
      free(v13);
      v15 = v14;
      SSFileLog();
    }
  }

  [(SUWebViewManager *)self _endUsingNetwork];
}

- (id)webThreadWebView:(id)view resource:(id)resource willSendRequest:(id)request redirectResponse:(id)response fromDataSource:(id)source
{
  v89 = *MEMORY[0x1E69E9840];
  if (!response)
  {
    [(SUWebViewManager *)self _beginUsingNetwork];
  }

  v12 = [request mutableCopy];
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v15 = shouldLog | 2;
  }

  else
  {
    v15 = shouldLog;
  }

  if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_INFO))
  {
    v15 &= 2u;
  }

  if (v15)
  {
    v85 = 138543618;
    v86 = objc_opt_class();
    v87 = 2112;
    requestCopy = request;
    LODWORD(v77) = 22;
    v74 = &v85;
    v16 = _os_log_send_and_compose_impl();
    if (v16)
    {
      v17 = v16;
      v18 = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:{4, &v85, v77}];
      free(v17);
      v74 = v18;
      SSFileLog();
    }
  }

  if (resource == @"1")
  {
    [(NSLock *)self->_lock lock];
    v19 = self->_pendingWebScriptReloadContext;

    self->_pendingWebScriptReloadContext = 0;
    [(NSLock *)self->_lock unlock];
    if (v19 && [objc_msgSend(objc_msgSend(source "initialRequest")])
    {
      referringUserAgent = [(SUWebScriptReloadContext *)v19 referringUserAgent];
      if (referringUserAgent)
      {
        [v12 setValue:referringUserAgent forHTTPHeaderField:@"ref-user-agent"];
      }

      absoluteString = [(NSURL *)[(SUWebScriptReloadContext *)v19 referrerURL] absoluteString];
      if (absoluteString)
      {
        [v12 setValue:absoluteString forHTTPHeaderField:@"referer"];
      }
    }
  }

  else
  {
    v19 = 0;
  }

  [v12 setHTTPShouldHandleCookies:0];
  v20 = [v12 URL];
  v21 = v20;
  suppressCookiesHosts = self->_suppressCookiesHosts;
  if (!suppressCookiesHosts || !-[NSSet containsObject:](suppressCookiesHosts, "containsObject:", [v20 host]))
  {
    requiredUniqueIdentifier = [(SSAuthenticationContext *)[(SUWebViewManager *)self authenticationContext] requiredUniqueIdentifier];
    [MEMORY[0x1E69E47E0] addITunesStoreHeadersToRequest:v12 withAccountIdentifier:requiredUniqueIdentifier];
    if (requiredUniqueIdentifier && [requiredUniqueIdentifier unsignedLongLongValue])
    {
      stringValue = [requiredUniqueIdentifier stringValue];
      [v12 setValue:stringValue forHTTPHeaderField:*MEMORY[0x1E69D4C50]];
    }

    _userIdentifier = [(SUWebViewManager *)self _userIdentifier];
    mEMORY[0x1E69D4A10] = [MEMORY[0x1E69D4A10] sharedStorage];
    v27 = mEMORY[0x1E69D4A10];
    if (response)
    {
      [mEMORY[0x1E69D4A10] setCookiesForHTTPResponse:response userIdentifier:_userIdentifier];
    }

    v28 = [v27 cookieHeadersForURL:v21 userIdentifier:_userIdentifier];
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v29 = [v28 countByEnumeratingWithState:&v80 objects:v84 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v81;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v81 != v31)
          {
            objc_enumerationMutation(v28);
          }

          [v12 setValue:objc_msgSend(v28 forHTTPHeaderField:{"objectForKey:", *(*(&v80 + 1) + 8 * i)), *(*(&v80 + 1) + 8 * i)}];
        }

        v30 = [v28 countByEnumeratingWithState:&v80 objects:v84 count:16];
      }

      while (v30);
    }

    if ([(SUWebViewManager *)self shouldSignRequests])
    {
      v33 = objc_alloc_init(getAKAppleIDServerResourceLoadDelegateClass());
      [v33 setShouldSendAbsintheHeader:1];
      [v33 signRequest:v12];
    }
  }

  account = [(SUWebViewManager *)self account];
  if (account)
  {
    v35 = account;
    v79 = 0;
    v36 = objc_alloc_init(MEMORY[0x1E6959A48]);
    v37 = [v36 credentialForAccount:v35 serviceID:*MEMORY[0x1E698C240] error:&v79];

    if (v37)
    {
      token = [v37 token];
      if (token)
      {
        [v12 setValue:token forHTTPHeaderField:*MEMORY[0x1E69D4C58]];
        goto LABEL_62;
      }

      mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
      if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
      {
        v51 = shouldLog2 | 2;
      }

      else
      {
        v51 = shouldLog2;
      }

      if (!os_log_type_enabled([mEMORY[0x1E69D4938]2 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v51 &= 2u;
      }

      if (v51)
      {
        v52 = objc_opt_class();
        v85 = 138543362;
        v86 = v52;
        LODWORD(v77) = 12;
        v75 = &v85;
LABEL_60:
        v53 = _os_log_send_and_compose_impl();
        if (v53)
        {
          v54 = v53;
          v55 = [MEMORY[0x1E696AEC0] stringWithCString:v53 encoding:{4, &v85, v77}];
          free(v54);
          v75 = v55;
          SSFileLog();
        }
      }
    }

    else
    {
      mEMORY[0x1E69D4938]3 = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog3 = [mEMORY[0x1E69D4938]3 shouldLog];
      if ([mEMORY[0x1E69D4938]3 shouldLogToDisk])
      {
        v47 = shouldLog3 | 2;
      }

      else
      {
        v47 = shouldLog3;
      }

      if (!os_log_type_enabled([mEMORY[0x1E69D4938]3 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v47 &= 2u;
      }

      if (v47)
      {
        v48 = objc_opt_class();
        v85 = 138543618;
        v86 = v48;
        v87 = 2114;
        requestCopy = v79;
        LODWORD(v77) = 22;
        v75 = &v85;
        goto LABEL_60;
      }
    }

LABEL_62:
    clientInfoHeader = [MEMORY[0x1E698B890] clientInfoHeader];
    if (clientInfoHeader)
    {
      [v12 setValue:clientInfoHeader forHTTPHeaderField:*MEMORY[0x1E69D4C60]];
    }

    else
    {
      mEMORY[0x1E69D4938]4 = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog4 = [mEMORY[0x1E69D4938]4 shouldLog];
      if ([mEMORY[0x1E69D4938]4 shouldLogToDisk])
      {
        v60 = shouldLog4 | 2;
      }

      else
      {
        v60 = shouldLog4;
      }

      if (!os_log_type_enabled([mEMORY[0x1E69D4938]4 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v60 &= 2u;
      }

      if (v60)
      {
        v61 = objc_opt_class();
        v85 = 138543362;
        v86 = v61;
        LODWORD(v77) = 12;
        v76 = &v85;
        v62 = _os_log_send_and_compose_impl();
        if (v62)
        {
          v63 = v62;
          v64 = [MEMORY[0x1E696AEC0] stringWithCString:v62 encoding:{4, &v85, v77}];
          free(v63);
          v76 = v64;
          SSFileLog();
        }
      }
    }

    aa_altDSID = [(ACAccount *)v35 aa_altDSID];
    if (aa_altDSID)
    {
      [v12 setValue:aa_altDSID forHTTPHeaderField:*MEMORY[0x1E69D4C48]];
      goto LABEL_83;
    }

    mEMORY[0x1E69D4938]5 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog5 = [mEMORY[0x1E69D4938]5 shouldLog];
    if ([mEMORY[0x1E69D4938]5 shouldLogToDisk])
    {
      v67 = shouldLog5 | 2;
    }

    else
    {
      v67 = shouldLog5;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938]5 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v67 &= 2u;
    }

    if (v67)
    {
      v68 = objc_opt_class();
      v85 = 138543362;
      v86 = v68;
      LODWORD(v77) = 12;
      v75 = &v85;
LABEL_81:
      v69 = _os_log_send_and_compose_impl();
      if (v69)
      {
        v70 = v69;
        v71 = [MEMORY[0x1E696AEC0] stringWithCString:v69 encoding:{4, &v85, v77}];
        free(v70);
        v75 = v71;
        SSFileLog();
      }

      goto LABEL_83;
    }

    goto LABEL_83;
  }

  mEMORY[0x1E69D4938]6 = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog6 = [mEMORY[0x1E69D4938]6 shouldLog];
  if ([mEMORY[0x1E69D4938]6 shouldLogToDisk])
  {
    v43 = shouldLog6 | 2;
  }

  else
  {
    v43 = shouldLog6;
  }

  if (!os_log_type_enabled([mEMORY[0x1E69D4938]6 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v43 &= 2u;
  }

  if (v43)
  {
    v44 = objc_opt_class();
    v85 = 138543362;
    v86 = v44;
    LODWORD(v77) = 12;
    v75 = &v85;
    goto LABEL_81;
  }

LABEL_83:
  if ([(SUWebViewManager *)self tidHeaders])
  {
    tidHeaders = [(SUWebViewManager *)self tidHeaders];
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __94__SUWebViewManager_webThreadWebView_resource_willSendRequest_redirectResponse_fromDataSource___block_invoke;
    v78[3] = &unk_1E81661E0;
    v78[4] = v12;
    [(NSDictionary *)tidHeaders enumerateKeysAndObjectsUsingBlock:v78];
  }

  return v12;
}

uint64_t __94__SUWebViewManager_webThreadWebView_resource_willSendRequest_redirectResponse_fromDataSource___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      return [*(result + 32) setValue:a3 forHTTPHeaderField:a2];
    }
  }

  return result;
}

- (void)webView:(id)view didFailLoadWithError:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v8 = shouldLog | 2;
  }

  else
  {
    v8 = shouldLog;
  }

  if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v16 = 138543618;
    v17 = objc_opt_class();
    v18 = 2112;
    errorCopy = error;
    LODWORD(v15) = 22;
    v14 = &v16;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v16, v15}];
      free(v10);
      v14 = v11;
      SSFileLog();
    }
  }

  _delegate = [(SUWebViewManager *)self _delegate];
  if (objc_opt_respondsToSelector())
  {
    selfCopy = self;
    [_delegate webViewManager:self didFailLoadWithError:error];
  }

  [(SUWebViewManager *)self _cancelUsingNetwork];
}

- (void)webViewDidFinishLoad:(id)load
{
  v17 = *MEMORY[0x1E69E9840];
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
    v15 = 138543362;
    v16 = objc_opt_class();
    LODWORD(v14) = 12;
    v13 = &v15;
    v8 = _os_log_send_and_compose_impl();
    if (v8)
    {
      v9 = v8;
      v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v15, v14}];
      free(v9);
      v13 = v10;
      SSFileLog();
    }
  }

  _delegate = [(SUWebViewManager *)self _delegate];
  if (objc_opt_respondsToSelector())
  {
    selfCopy = self;
    [_delegate webViewManagerDidFinishLoad:self];
  }

  if (!self->_initialLoadReported && ([load isLoading] & 1) == 0)
  {
    [(SUClientInterface *)self->_clientInterface delegate];
    if (objc_opt_respondsToSelector())
    {
      [(SUClientInterfaceDelegate *)[(SUClientInterface *)self->_clientInterface delegate] clientInterfaceDidFinishLoading:self->_clientInterface];
      self->_initialLoadReported = 1;
    }
  }

  [(SUWebViewManager *)self _cancelUsingNetwork];
}

- (void)webViewDidStartLoad:(id)load
{
  v16 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v14 = 138543362;
    v15 = objc_opt_class();
    LODWORD(v13) = 12;
    v12 = &v14;
    v7 = _os_log_send_and_compose_impl();
    if (v7)
    {
      v8 = v7;
      v9 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v14, v13}];
      free(v8);
      v12 = v9;
      SSFileLog();
    }
  }

  _delegate = [(SUWebViewManager *)self _delegate];
  if (objc_opt_respondsToSelector())
  {
    selfCopy = self;
    [_delegate webViewManagerDidStartLoad:self];
  }
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action request:(id)request frame:(id)frame decisionListener:(id)listener
{
  v10 = [(SUWebViewManager *)self _locateStorePageViewController:view];
  if (!v10 || ([v10 decidePolicyForWebNavigationAction:action request:request decisionListener:listener] & 1) == 0)
  {

    [listener use];
  }
}

- (void)webView:(id)view didClearWindowObject:(id)object forFrame:(id)frame
{
  _delegate = [(SUWebViewManager *)self _delegate];
  scriptInterfaces = self->_scriptInterfaces;
  if (scriptInterfaces)
  {
    v11 = NSMapGet(scriptInterfaces, frame);
    [v11 setDelegate:0];
    [v11 tearDownUserInterface];
    NSMapRemove(self->_scriptInterfaces, frame);
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || (_newScriptInterface = [_delegate newScriptInterfaceForWebViewManager:self]) == 0)
  {
    _newScriptInterface = [(SUClientInterface *)self->_clientInterface _newScriptInterface];
    if (!_newScriptInterface)
    {
      _newScriptInterface = +[SUClientDispatch newScriptInterface];
      if (!_newScriptInterface)
      {
        _newScriptInterface = objc_alloc_init(SUScriptInterface);
      }
    }
  }

  v13 = _newScriptInterface;
  [(SUScriptInterface *)_newScriptInterface setAuthenticationContext:[(SUWebViewManager *)self authenticationContext]];
  [(SUScriptInterface *)v13 setClientInterface:self->_clientInterface];
  [(SUScriptInterface *)v13 setDelegate:self];
  [(SUScriptInterface *)v13 setWebFrame:frame];
  v14 = self->_scriptInterfaces;
  if (!v14)
  {
    v15 = *(MEMORY[0x1E696A760] + 16);
    *&keyCallBacks.hash = *MEMORY[0x1E696A760];
    *&keyCallBacks.retain = v15;
    *&keyCallBacks.describe = *(MEMORY[0x1E696A760] + 32);
    v16 = **&MEMORY[0x1E696A788];
    v14 = NSCreateMapTable(&keyCallBacks, &v16, 0);
    self->_scriptInterfaces = v14;
  }

  NSMapInsert(v14, frame, v13);
  if (objc_opt_respondsToSelector())
  {
    [_delegate webViewManager:self willInjectScriptInterface:v13];
  }

  [object setValue:v13 forKey:@"iTunes"];

  if (objc_opt_respondsToSelector())
  {
    [self->_originalFrameLoadDelegate webView:view didClearWindowObject:object forFrame:frame];
  }
}

- (void)webView:(id)view didFirstLayoutInFrame:(id)frame
{
  v19 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {
    [self->_originalFrameLoadDelegate webView:view didFirstLayoutInFrame:frame];
  }

  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v9 = shouldLog | 2;
  }

  else
  {
    v9 = shouldLog;
  }

  if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v9 &= 2u;
  }

  if (v9)
  {
    v13 = 138412802;
    v14 = objc_opt_class();
    v15 = 2048;
    Current = CFAbsoluteTimeGetCurrent();
    v17 = 2112;
    v18 = [objc_msgSend(objc_msgSend(frame "dataSource")];
    LODWORD(v12) = 32;
    v10 = _os_log_send_and_compose_impl();
    if (v10)
    {
      v11 = v10;
      [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v13, v12}];
      free(v11);
      SSFileLog();
    }
  }
}

- (void)webView:(id)view didReceiveTitle:(id)title forFrame:(id)frame
{
  if ([objc_msgSend(frame webView] == frame)
  {
    _delegate = [(SUWebViewManager *)self _delegate];
    if (objc_opt_respondsToSelector())
    {
      selfCopy = self;

      [_delegate webViewManager:self didReceiveTitle:title];
    }
  }
}

- (void)webView:(id)view didStartProvisionalLoadForFrame:(id)frame
{
  if (objc_opt_respondsToSelector())
  {
    [self->_originalFrameLoadDelegate webView:view didStartProvisionalLoadForFrame:frame];
  }

  if ([view mainFrame] == frame && self->_scriptInterfaces)
  {
    [(SUWebViewManager *)self _enumerateScriptInterfacesWithBlock:&__block_literal_global_10];
    NSFreeMapTable(self->_scriptInterfaces);
    self->_scriptInterfaces = 0;
  }

  webFramesPendingInitialRequest = self->_webFramesPendingInitialRequest;

  CFSetAddValue(webFramesPendingInitialRequest, frame);
}

uint64_t __60__SUWebViewManager_webView_didStartProvisionalLoadForFrame___block_invoke(uint64_t a1, void *a2)
{
  [a2 setDelegate:0];

  return [a2 tearDownUserInterface];
}

- (void)webView:(id)view resource:(id)resource didReceiveResponse:(id)response fromDataSource:(id)source
{
  v27 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {
    [self->_originalResourceLoadDelegate webView:view resource:resource didReceiveResponse:response fromDataSource:source];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [response URL];
    if (([objc_msgSend(v11 "scheme")] & 1) == 0)
    {
      mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog = [mEMORY[0x1E69D4938] shouldLog];
      if ([mEMORY[0x1E69D4938] shouldLogToDisk])
      {
        v14 = shouldLog | 2;
      }

      else
      {
        v14 = shouldLog;
      }

      if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEBUG))
      {
        v14 &= 2u;
      }

      if (v14)
      {
        v21 = 138412802;
        v22 = objc_opt_class();
        v23 = 2048;
        statusCode = [response statusCode];
        v25 = 2112;
        v26 = v11;
        LODWORD(v20) = 32;
        v15 = _os_log_send_and_compose_impl();
        if (v15)
        {
          v16 = v15;
          [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, &v21, v20}];
          free(v16);
          SSFileLog();
        }
      }
    }

    if (resource == @"1")
    {
      _userIdentifier = [(SUWebViewManager *)self _userIdentifier];
      [MEMORY[0x1E69E47E0] handleITunesStoreResponseHeaders:response request:objc_msgSend(source withAccountIdentifier:"request") shouldRetry:{_userIdentifier, 0}];
      [objc_msgSend(MEMORY[0x1E69D4A10] "sharedStorage")];
      _delegate = [(SUWebViewManager *)self _delegate];
      if (objc_opt_respondsToSelector())
      {
        selfCopy = self;
        [_delegate webViewManager:self didReceivePrimaryResponse:response];
      }
    }
  }
}

- (void)webView:(id)view didParseSource:(id)source fromURL:(id)l sourceId:(int64_t)id forWebFrame:(id)frame
{
  if (l)
  {
    NSLog(&cfstr_JavascriptDidP.isa, a2, view, source, l, id, frame, id, l);
  }
}

- (void)webView:(id)view exceptionWasRaised:(id)raised sourceId:(int64_t)id line:(int)line forWebFrame:(id)frame
{
  v7 = *&line;
  exception = [raised exception];
  v11 = [exception valueForKey:@"name"];
  v12 = [exception valueForKey:@"message"];
  v13 = 0;
  if (v11 && v12)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", v11, v12];
  }

  NSLog(&cfstr_JavascriptExce.isa, v13, [raised functionName], id, v7);
}

- (id)webView:(id)view runJavaScriptTextInputPanelWithPrompt:(id)prompt defaultText:(id)text initiatedByFrame:(id)frame
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__36;
  v13 = __Block_byref_object_dispose__36;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __95__SUWebViewManager_webView_runJavaScriptTextInputPanelWithPrompt_defaultText_initiatedByFrame___block_invoke;
  v8[3] = &unk_1E8166250;
  v8[4] = text;
  v8[5] = &v9;
  if ([(SUWebViewManager *)self _presentModalAlertWithMessage:prompt includingCancelButton:1 configurationHandler:v8, frame])
  {
    text = [v10[5] text];
  }

  else
  {
    text = 0;
  }

  _Block_object_dispose(&v9, 8);
  return text;
}

uint64_t __95__SUWebViewManager_webView_runJavaScriptTextInputPanelWithPrompt_defaultText_initiatedByFrame___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __95__SUWebViewManager_webView_runJavaScriptTextInputPanelWithPrompt_defaultText_initiatedByFrame___block_invoke_2;
  v3[3] = &unk_1E8166228;
  v4 = *(a1 + 32);
  return [a2 addTextFieldWithConfigurationHandler:v3];
}

uint64_t __95__SUWebViewManager_webView_runJavaScriptTextInputPanelWithPrompt_defaultText_initiatedByFrame___block_invoke_2(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 40) = a2;
  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 40) + 8) + 40);

  return [v4 setText:v3];
}

- (void)_requestWebScriptReloadWithContext:(id)context
{
  v6 = [context copy];
  [(NSLock *)self->_lock lock];
  pendingWebScriptReloadContext = self->_pendingWebScriptReloadContext;
  if (pendingWebScriptReloadContext != v6)
  {

    self->_pendingWebScriptReloadContext = v6;
  }

  [(NSLock *)self->_lock unlock];
  _copyScriptDictionaryRepresentation = [(SUWebScriptReloadContext *)v6 _copyScriptDictionaryRepresentation];
  [(SUWebViewManager *)self dispatchEvent:_copyScriptDictionaryRepresentation forName:@"reloadrequested"];
}

- (id)_locateStorePageViewController
{
  _delegate = [(SUWebViewManager *)self _delegate];
  if (objc_opt_respondsToSelector())
  {
    for (i = [_delegate viewControllerForWebViewManager:self]; ; i = objc_msgSend(v5, "parentViewController"))
    {
      v5 = i;
      if (!i)
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (void)_beginUsingNetwork
{
  [(NSLock *)self->_lock lock];
  ++self->_usingNetworkCount;
  [(NSLock *)self->_lock unlock];
  mEMORY[0x1E69E4778] = [MEMORY[0x1E69E4778] sharedInstance];

  [mEMORY[0x1E69E4778] beginUsingNetwork];
}

- (void)_cancelUsingNetwork
{
  [(NSLock *)self->_lock lock];
  usingNetworkCount = self->_usingNetworkCount;
  self->_usingNetworkCount = 0;
  [(NSLock *)self->_lock unlock];
  mEMORY[0x1E69E4778] = [MEMORY[0x1E69E4778] sharedInstance];
  if (usingNetworkCount >= 1)
  {
    v5 = mEMORY[0x1E69E4778];
    v6 = usingNetworkCount + 1;
    do
    {
      [v5 endUsingNetwork];
      --v6;
    }

    while (v6 > 1);
  }
}

- (id)_delegate
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [(SUWebViewManager *)a2 _delegate];
  }

  return self->_delegate;
}

- (void)_endUsingNetwork
{
  [(NSLock *)self->_lock lock];
  usingNetworkCount = self->_usingNetworkCount;
  v4 = usingNetworkCount < 1;
  v5 = usingNetworkCount - 1;
  if (v4)
  {
    lock = self->_lock;

    [(NSLock *)lock unlock];
  }

  else
  {
    self->_usingNetworkCount = v5;
    [(NSLock *)self->_lock unlock];
    mEMORY[0x1E69E4778] = [MEMORY[0x1E69E4778] sharedInstance];

    [mEMORY[0x1E69E4778] endUsingNetwork];
  }
}

- (void)_enumerateScriptInterfacesWithBlock:(id)block
{
  scriptInterfaces = self->_scriptInterfaces;
  if (scriptInterfaces)
  {
    memset(&enumerator, 0, sizeof(enumerator));
    NSEnumerateMapTable(&enumerator, scriptInterfaces);
    value = 0;
    key = 0;
    while (NSNextMapEnumeratorPair(&enumerator, &key, &value))
    {
      (*(block + 2))(block, value);
    }

    NSEndMapTableEnumeration(&enumerator);
  }
}

- (BOOL)_presentModalAlertWithMessage:(id)message includingCancelButton:(BOOL)button configurationHandler:(id)handler
{
  buttonCopy = button;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v8 = [MEMORY[0x1E69DC650] alertControllerWithTitle:message message:0 preferredStyle:1];
  if (handler)
  {
    (*(handler + 2))(handler, v8);
  }

  if (buttonCopy)
  {
    v9 = MEMORY[0x1E69DC648];
    v10 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"CANCEL", &stru_1F41B3660, 0}];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __93__SUWebViewManager__presentModalAlertWithMessage_includingCancelButton_configurationHandler___block_invoke_2;
    v19[3] = &unk_1E8166278;
    v19[4] = &__block_literal_global_127;
    [v8 addAction:{objc_msgSend(v9, "actionWithTitle:style:handler:", v10, 1, v19)}];
  }

  v11 = MEMORY[0x1E69DC648];
  v12 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"OK", &stru_1F41B3660, 0}];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __93__SUWebViewManager__presentModalAlertWithMessage_includingCancelButton_configurationHandler___block_invoke_3;
  v18[3] = &unk_1E81662A0;
  v18[4] = &__block_literal_global_127;
  v18[5] = &v20;
  [v8 addAction:{objc_msgSend(v11, "actionWithTitle:style:handler:", v12, 0, v18)}];
  _delegate = [(SUWebViewManager *)self _delegate];
  if (objc_opt_respondsToSelector())
  {
    v14 = [_delegate viewControllerForWebViewManager:self];
    v15 = v14;
    if (v14)
    {
      [v14 presentViewController:v8 animated:1 completion:0];
      [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
    }
  }

  v16 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);
  return v16;
}

uint64_t __93__SUWebViewManager__presentModalAlertWithMessage_includingCancelButton_configurationHandler___block_invoke()
{
  v0 = [MEMORY[0x1E69DC668] sharedApplication];

  return [v0 stopModal];
}

- (id)_userIdentifier
{
  requiredUniqueIdentifier = [(SSAuthenticationContext *)[(SUWebViewManager *)self authenticationContext] requiredUniqueIdentifier];
  if (requiredUniqueIdentifier)
  {
    v3 = requiredUniqueIdentifier;
    if ([requiredUniqueIdentifier unsignedLongLongValue])
    {
      return v3;
    }
  }

  v5 = [objc_msgSend(MEMORY[0x1E69D4890] "defaultStore")];

  return [v5 uniqueIdentifier];
}

- (uint64_t)_delegate
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];

  return [currentHandler handleFailureInMethod:self object:a2 file:@"SUWebViewManager.m" lineNumber:847 description:@"Not main thread"];
}

@end