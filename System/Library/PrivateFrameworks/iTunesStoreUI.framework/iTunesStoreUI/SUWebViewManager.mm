@interface SUWebViewManager
+ (id)defaultLocalStoragePath;
- (BOOL)_presentModalAlertWithMessage:(id)a3 includingCancelButton:(BOOL)a4 configurationHandler:(id)a5;
- (BOOL)respondsToSelector:(SEL)a3;
- (SUWebViewManager)initWithClientInterface:(id)a3;
- (id)DOMElementForScriptInterface:(id)a3 element:(id)a4;
- (id)_delegate;
- (id)_locateStorePageViewController;
- (id)_userIdentifier;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)parentViewControllerForScriptInterface:(id)a3;
- (id)performanceMetricsForScriptInterface:(id)a3;
- (id)uiWebView:(id)a3 identifierForInitialRequest:(id)a4 fromDataSource:(id)a5;
- (id)webThreadWebView:(id)a3 resource:(id)a4 willSendRequest:(id)a5 redirectResponse:(id)a6 fromDataSource:(id)a7;
- (id)webView:(id)a3 runJavaScriptTextInputPanelWithPrompt:(id)a4 defaultText:(id)a5 initiatedByFrame:(id)a6;
- (uint64_t)_delegate;
- (void)_beginUsingNetwork;
- (void)_cancelUsingNetwork;
- (void)_endUsingNetwork;
- (void)_enumerateScriptInterfacesWithBlock:(id)a3;
- (void)_requestWebScriptReloadWithContext:(id)a3;
- (void)connectToWebView:(id)a3;
- (void)dealloc;
- (void)disconnectFromWebView;
- (void)dispatchEvent:(id)a3 forName:(id)a4 synchronously:(BOOL)a5;
- (void)forwardInvocation:(id)a3;
- (void)scriptInterface:(id)a3 requireCellularForResourceWithURL:(id)a4;
- (void)setAuthenticationContext:(id)a3;
- (void)setScriptWindowContext:(id)a3;
- (void)uiWebView:(id)a3 decidePolicyForMIMEType:(id)a4 request:(id)a5 frame:(id)a6 decisionListener:(id)a7;
- (void)uiWebView:(id)a3 resource:(id)a4 didFailLoadingWithError:(id)a5 fromDataSource:(id)a6;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 request:(id)a5 frame:(id)a6 decisionListener:(id)a7;
- (void)webView:(id)a3 didClearWindowObject:(id)a4 forFrame:(id)a5;
- (void)webView:(id)a3 didFailLoadWithError:(id)a4;
- (void)webView:(id)a3 didFirstLayoutInFrame:(id)a4;
- (void)webView:(id)a3 didParseSource:(id)a4 fromURL:(id)a5 sourceId:(int64_t)a6 forWebFrame:(id)a7;
- (void)webView:(id)a3 didReceiveTitle:(id)a4 forFrame:(id)a5;
- (void)webView:(id)a3 didStartProvisionalLoadForFrame:(id)a4;
- (void)webView:(id)a3 documentViewDidSetFrame:(CGRect)a4;
- (void)webView:(id)a3 exceptionWasRaised:(id)a4 sourceId:(int64_t)a5 line:(int)a6 forWebFrame:(id)a7;
- (void)webView:(id)a3 resource:(id)a4 didReceiveResponse:(id)a5 fromDataSource:(id)a6;
- (void)webViewDidFinishLoad:(id)a3;
- (void)webViewDidStartLoad:(id)a3;
@end

@implementation SUWebViewManager

- (SUWebViewManager)initWithClientInterface:(id)a3
{
  v9.receiver = self;
  v9.super_class = SUWebViewManager;
  v4 = [(SUWebViewManager *)&v9 init];
  if (v4)
  {
    v4->_clientInterface = a3;
    v4->_lock = objc_alloc_init(MEMORY[0x1E696AD10]);
    v4->_webFramesPendingInitialRequest = CFSetCreateMutable(0, 0, 0);
    v5 = [MEMORY[0x1E69E47F8] sharedCache];
    v6 = [objc_msgSend(v5 URLBagForContext:{objc_msgSend(MEMORY[0x1E69D49F8], "contextWithBagType:", 0)), "valueForKey:", @"p2-client-options"}];
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

- (void)connectToWebView:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_webView != a3)
  {
    [(SUWebViewManager *)self disconnectFromWebView];
    self->_webView = a3;
    [a3 setDelegate:self];
    if (self->_webView)
    {
      v5 = [objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] == 1;
      v6 = [(UIWebView *)self->_webView _scrollView];
      [v6 setDecelerationRate:0.998];
      [v6 _setShowsBackgroundShadow:v5];
      v7 = [(UIWebView *)self->_webView _browserView];
      [v7 setViewportSize:0xFFFFFFLL forDocumentTypes:{*MEMORY[0x1E69DE7A0], *MEMORY[0x1E69DE798]}];
      [v7 setAllowsDataDetectorsSheet:0];
      [v7 setAllowsImageSheet:0];
      [v7 setAllowsLinkSheet:0];
      [v7 setAllowsUserScaling:0 forDocumentTypes:0xFFFFFFLL];
      [v7 setDoubleTapEnabled:0];
      [v7 setInputViewObeysDOMFocus:0];
      v8 = [v7 webView];
      v9 = [(SUClientInterface *)self->_clientInterface userAgent];
      if (!v9)
      {
        v9 = [MEMORY[0x1E69E4808] copyUserAgent];
      }

      [v8 setCustomUserAgent:v9];

      v10 = [objc_alloc(MEMORY[0x1E69E2F78]) initWithIdentifier:@"iTunesStorePreferences"];
      [v10 setCacheModel:2];
      [v10 setJavaScriptEnabled:1];
      [v10 setOfflineWebApplicationCacheEnabled:1];
      v11 = [(SUClientInterface *)self->_clientInterface localStoragePath];
      if (v11)
      {
        [v10 _setLocalStorageDatabasePath:v11];
      }

      if (CFPreferencesGetAppBooleanValue(@"DebugJavaScript", *MEMORY[0x1E69E4848], 0))
      {
        v12 = [MEMORY[0x1E69D4938] sharedConfig];
        v13 = [v12 shouldLog];
        if ([v12 shouldLogToDisk])
        {
          v14 = v13 | 2;
        }

        else
        {
          v14 = v13;
        }

        if (!os_log_type_enabled([v12 OSLogObject], OS_LOG_TYPE_DEBUG))
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

        [v8 setScriptDebugDelegate:{self, v18}];
      }

      [v8 setPreferences:v10];

      [(UIWebView *)self->_webView setDataDetectorTypes:0];
      [(UIWebView *)self->_webView setScalesPageToFit:0];
      [(UIWebView *)self->_webView _setWebSelectionEnabled:0];
      [(UIWebView *)self->_webView _setDrawInWebThread:1];
      [(UIWebView *)self->_webView _setDrawsCheckeredPattern:0];
      [(UIWebView *)self->_webView setMediaPlaybackRequiresUserAction:0];
      if ([v8 frameLoadDelegate] != self)
      {
        -[SUWebViewManager setOriginalFrameLoadDelegate:](self, "setOriginalFrameLoadDelegate:", [v8 frameLoadDelegate]);
      }

      if ([v8 policyDelegate] != self)
      {
        -[SUWebViewManager setOriginalPolicyDelegate:](self, "setOriginalPolicyDelegate:", [v8 policyDelegate]);
      }

      if ([v8 resourceLoadDelegate] != self)
      {
        -[SUWebViewManager setOriginalResourceLoadDelegate:](self, "setOriginalResourceLoadDelegate:", [v8 resourceLoadDelegate]);
      }

      if ([v8 UIDelegate] != self)
      {
        -[SUWebViewManager setOriginalUIDelegate:](self, "setOriginalUIDelegate:", [v8 UIDelegate]);
      }

      [v8 setFrameLoadDelegate:self];
      [v8 setPolicyDelegate:self];
      [v8 setResourceLoadDelegate:self];
      [v8 setUIDelegate:self];
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

- (void)dispatchEvent:(id)a3 forName:(id)a4 synchronously:(BOOL)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__SUWebViewManager_dispatchEvent_forName_synchronously___block_invoke;
  v5[3] = &unk_1E8166190;
  v5[4] = a3;
  v5[5] = a4;
  v6 = a5;
  [(SUWebViewManager *)self _enumerateScriptInterfacesWithBlock:v5];
}

- (void)setAuthenticationContext:(id)a3
{
  authenticationContext = self->_authenticationContext;
  if (authenticationContext != a3)
  {
    v8[7] = v3;
    v8[8] = v4;

    self->_authenticationContext = [a3 copy];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__SUWebViewManager_setAuthenticationContext___block_invoke;
    v8[3] = &unk_1E81661B8;
    v8[4] = a3;
    [(SUWebViewManager *)self _enumerateScriptInterfacesWithBlock:v8];
  }
}

- (void)setScriptWindowContext:(id)a3
{
  if (self->_scriptWindowContext != a3)
  {
    v7[7] = v3;
    v7[8] = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      self->_scriptWindowContext = a3;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __43__SUWebViewManager_setScriptWindowContext___block_invoke;
      v7[3] = &unk_1E81661B8;
      v7[4] = a3;
      [(SUWebViewManager *)self _enumerateScriptInterfacesWithBlock:v7];
    }
  }
}

- (void)forwardInvocation:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [a3 selector];
  if (objc_opt_respondsToSelector())
  {
    originalFrameLoadDelegate = self->_originalFrameLoadDelegate;
LABEL_9:

    [a3 invokeWithTarget:originalFrameLoadDelegate];
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

  v7 = [MEMORY[0x1E69D4938] sharedConfig];
  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v9 &= 2u;
  }

  if (v9)
  {
    v13 = 138412546;
    v14 = objc_opt_class();
    v15 = 2112;
    v16 = NSStringFromSelector(v5);
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

- (id)methodSignatureForSelector:(SEL)a3
{
  v6.receiver = self;
  v6.super_class = SUWebViewManager;
  result = [(SUWebViewManager *)&v6 methodSignatureForSelector:?];
  if (!result)
  {
    result = [self->_originalFrameLoadDelegate methodSignatureForSelector:a3];
    if (!result)
    {
      result = [self->_originalResourceLoadDelegate methodSignatureForSelector:a3];
      if (!result)
      {
        result = [self->_originalPolicyDelegate methodSignatureForSelector:a3];
        if (!result)
        {
          return [self->_originalUIDelegate methodSignatureForSelector:a3];
        }
      }
    }
  }

  return result;
}

- (BOOL)respondsToSelector:(SEL)a3
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

- (id)DOMElementForScriptInterface:(id)a3 element:(id)a4
{
  v5 = [[SUDOMElement alloc] initWithDOMElement:a4];
  [(SUDOMElement *)v5 setWebView:self->_webView];

  return v5;
}

- (id)parentViewControllerForScriptInterface:(id)a3
{
  v4 = [(SUWebViewManager *)self _delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v4 viewControllerForWebViewManager:self];
}

- (id)performanceMetricsForScriptInterface:(id)a3
{
  WebThreadLock();
  if ([objc_msgSend(a3 "webFrame")])
  {
    return 0;
  }

  v6 = self->_initialRequestPerformance;

  return v6;
}

- (void)scriptInterface:(id)a3 requireCellularForResourceWithURL:(id)a4
{
  [(NSLock *)self->_lock lock];
  requireCellularURLs = self->_requireCellularURLs;
  if (!requireCellularURLs)
  {
    requireCellularURLs = objc_alloc_init(MEMORY[0x1E695DFA8]);
    self->_requireCellularURLs = requireCellularURLs;
  }

  [(NSMutableSet *)requireCellularURLs addObject:a4];
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)webView:(id)a3 documentViewDidSetFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [(SUWebViewManager *)self _delegate];
  if (objc_opt_respondsToSelector())
  {

    [v9 webViewManager:self webDocumentViewDidSetFrame:{x, y, width, height}];
  }
}

- (void)uiWebView:(id)a3 decidePolicyForMIMEType:(id)a4 request:(id)a5 frame:(id)a6 decisionListener:(id)a7
{
  v27 = *MEMORY[0x1E69E9840];
  if ([a4 rangeOfString:@"html" options:{1, a5, a6}] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [(SUWebViewManager *)self _delegate];
    if (objc_opt_respondsToSelector())
    {
      v12 = [MEMORY[0x1E69D4938] sharedConfig];
      v13 = [v12 shouldLog];
      if ([v12 shouldLogToDisk])
      {
        v14 = v13 | 2;
      }

      else
      {
        v14 = v13;
      }

      if (!os_log_type_enabled([v12 OSLogObject], OS_LOG_TYPE_DEBUG))
      {
        v14 &= 2u;
      }

      if (v14)
      {
        v21 = 138412802;
        v22 = objc_opt_class();
        v23 = 2112;
        v24 = a4;
        v25 = 2112;
        v26 = [a5 URL];
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

      v18 = self;
      [v11 webViewManager:self didRejectInvalidRequest:a5];
    }

    [a7 ignore];
  }

  else
  {

    [a7 use];
  }
}

- (id)uiWebView:(id)a3 identifierForInitialRequest:(id)a4 fromDataSource:(id)a5
{
  v8 = [a5 webFrame];
  if (!CFSetContainsValue(self->_webFramesPendingInitialRequest, v8) || ![objc_msgSend(a4 "URL")] || (v9 = @"1", CFSetRemoveValue(self->_webFramesPendingInitialRequest, v8), !v9))
  {
    v9 = objc_alloc_init(MEMORY[0x1E69E58C0]);
  }

  [(NSLock *)self->_lock lock];
  v10 = -[NSMutableSet containsObject:](self->_requireCellularURLs, "containsObject:", [a4 URL]);
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

- (void)uiWebView:(id)a3 resource:(id)a4 didFailLoadingWithError:(id)a5 fromDataSource:(id)a6
{
  v23 = *MEMORY[0x1E69E9840];
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
    v17 = 138543874;
    v18 = objc_opt_class();
    v19 = 2112;
    v20 = a4;
    v21 = 2112;
    v22 = a5;
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

- (id)webThreadWebView:(id)a3 resource:(id)a4 willSendRequest:(id)a5 redirectResponse:(id)a6 fromDataSource:(id)a7
{
  v89 = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    [(SUWebViewManager *)self _beginUsingNetwork];
  }

  v12 = [a5 mutableCopy];
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

  if (!os_log_type_enabled([v13 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v15 &= 2u;
  }

  if (v15)
  {
    v85 = 138543618;
    v86 = objc_opt_class();
    v87 = 2112;
    v88 = a5;
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

  if (a4 == @"1")
  {
    [(NSLock *)self->_lock lock];
    v19 = self->_pendingWebScriptReloadContext;

    self->_pendingWebScriptReloadContext = 0;
    [(NSLock *)self->_lock unlock];
    if (v19 && [objc_msgSend(objc_msgSend(a7 "initialRequest")])
    {
      v39 = [(SUWebScriptReloadContext *)v19 referringUserAgent];
      if (v39)
      {
        [v12 setValue:v39 forHTTPHeaderField:@"ref-user-agent"];
      }

      v40 = [(NSURL *)[(SUWebScriptReloadContext *)v19 referrerURL] absoluteString];
      if (v40)
      {
        [v12 setValue:v40 forHTTPHeaderField:@"referer"];
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
    v23 = [(SSAuthenticationContext *)[(SUWebViewManager *)self authenticationContext] requiredUniqueIdentifier];
    [MEMORY[0x1E69E47E0] addITunesStoreHeadersToRequest:v12 withAccountIdentifier:v23];
    if (v23 && [v23 unsignedLongLongValue])
    {
      v24 = [v23 stringValue];
      [v12 setValue:v24 forHTTPHeaderField:*MEMORY[0x1E69D4C50]];
    }

    v25 = [(SUWebViewManager *)self _userIdentifier];
    v26 = [MEMORY[0x1E69D4A10] sharedStorage];
    v27 = v26;
    if (a6)
    {
      [v26 setCookiesForHTTPResponse:a6 userIdentifier:v25];
    }

    v28 = [v27 cookieHeadersForURL:v21 userIdentifier:v25];
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

  v34 = [(SUWebViewManager *)self account];
  if (v34)
  {
    v35 = v34;
    v79 = 0;
    v36 = objc_alloc_init(MEMORY[0x1E6959A48]);
    v37 = [v36 credentialForAccount:v35 serviceID:*MEMORY[0x1E698C240] error:&v79];

    if (v37)
    {
      v38 = [v37 token];
      if (v38)
      {
        [v12 setValue:v38 forHTTPHeaderField:*MEMORY[0x1E69D4C58]];
        goto LABEL_62;
      }

      v49 = [MEMORY[0x1E69D4938] sharedConfig];
      v50 = [v49 shouldLog];
      if ([v49 shouldLogToDisk])
      {
        v51 = v50 | 2;
      }

      else
      {
        v51 = v50;
      }

      if (!os_log_type_enabled([v49 OSLogObject], OS_LOG_TYPE_DEFAULT))
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
      v45 = [MEMORY[0x1E69D4938] sharedConfig];
      v46 = [v45 shouldLog];
      if ([v45 shouldLogToDisk])
      {
        v47 = v46 | 2;
      }

      else
      {
        v47 = v46;
      }

      if (!os_log_type_enabled([v45 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v47 &= 2u;
      }

      if (v47)
      {
        v48 = objc_opt_class();
        v85 = 138543618;
        v86 = v48;
        v87 = 2114;
        v88 = v79;
        LODWORD(v77) = 22;
        v75 = &v85;
        goto LABEL_60;
      }
    }

LABEL_62:
    v56 = [MEMORY[0x1E698B890] clientInfoHeader];
    if (v56)
    {
      [v12 setValue:v56 forHTTPHeaderField:*MEMORY[0x1E69D4C60]];
    }

    else
    {
      v58 = [MEMORY[0x1E69D4938] sharedConfig];
      v59 = [v58 shouldLog];
      if ([v58 shouldLogToDisk])
      {
        v60 = v59 | 2;
      }

      else
      {
        v60 = v59;
      }

      if (!os_log_type_enabled([v58 OSLogObject], OS_LOG_TYPE_DEFAULT))
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

    v57 = [(ACAccount *)v35 aa_altDSID];
    if (v57)
    {
      [v12 setValue:v57 forHTTPHeaderField:*MEMORY[0x1E69D4C48]];
      goto LABEL_83;
    }

    v65 = [MEMORY[0x1E69D4938] sharedConfig];
    v66 = [v65 shouldLog];
    if ([v65 shouldLogToDisk])
    {
      v67 = v66 | 2;
    }

    else
    {
      v67 = v66;
    }

    if (!os_log_type_enabled([v65 OSLogObject], OS_LOG_TYPE_DEFAULT))
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

  v41 = [MEMORY[0x1E69D4938] sharedConfig];
  v42 = [v41 shouldLog];
  if ([v41 shouldLogToDisk])
  {
    v43 = v42 | 2;
  }

  else
  {
    v43 = v42;
  }

  if (!os_log_type_enabled([v41 OSLogObject], OS_LOG_TYPE_DEFAULT))
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
    v72 = [(SUWebViewManager *)self tidHeaders];
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __94__SUWebViewManager_webThreadWebView_resource_willSendRequest_redirectResponse_fromDataSource___block_invoke;
    v78[3] = &unk_1E81661E0;
    v78[4] = v12;
    [(NSDictionary *)v72 enumerateKeysAndObjectsUsingBlock:v78];
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

- (void)webView:(id)a3 didFailLoadWithError:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E69D4938] sharedConfig];
  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v16 = 138543618;
    v17 = objc_opt_class();
    v18 = 2112;
    v19 = a4;
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

  v12 = [(SUWebViewManager *)self _delegate];
  if (objc_opt_respondsToSelector())
  {
    v13 = self;
    [v12 webViewManager:self didFailLoadWithError:a4];
  }

  [(SUWebViewManager *)self _cancelUsingNetwork];
}

- (void)webViewDidFinishLoad:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
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

  v11 = [(SUWebViewManager *)self _delegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = self;
    [v11 webViewManagerDidFinishLoad:self];
  }

  if (!self->_initialLoadReported && ([a3 isLoading] & 1) == 0)
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

- (void)webViewDidStartLoad:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
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

  v10 = [(SUWebViewManager *)self _delegate];
  if (objc_opt_respondsToSelector())
  {
    v11 = self;
    [v10 webViewManagerDidStartLoad:self];
  }
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 request:(id)a5 frame:(id)a6 decisionListener:(id)a7
{
  v10 = [(SUWebViewManager *)self _locateStorePageViewController:a3];
  if (!v10 || ([v10 decidePolicyForWebNavigationAction:a4 request:a5 decisionListener:a7] & 1) == 0)
  {

    [a7 use];
  }
}

- (void)webView:(id)a3 didClearWindowObject:(id)a4 forFrame:(id)a5
{
  v9 = [(SUWebViewManager *)self _delegate];
  scriptInterfaces = self->_scriptInterfaces;
  if (scriptInterfaces)
  {
    v11 = NSMapGet(scriptInterfaces, a5);
    [v11 setDelegate:0];
    [v11 tearDownUserInterface];
    NSMapRemove(self->_scriptInterfaces, a5);
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || (v12 = [v9 newScriptInterfaceForWebViewManager:self]) == 0)
  {
    v12 = [(SUClientInterface *)self->_clientInterface _newScriptInterface];
    if (!v12)
    {
      v12 = +[SUClientDispatch newScriptInterface];
      if (!v12)
      {
        v12 = objc_alloc_init(SUScriptInterface);
      }
    }
  }

  v13 = v12;
  [(SUScriptInterface *)v12 setAuthenticationContext:[(SUWebViewManager *)self authenticationContext]];
  [(SUScriptInterface *)v13 setClientInterface:self->_clientInterface];
  [(SUScriptInterface *)v13 setDelegate:self];
  [(SUScriptInterface *)v13 setWebFrame:a5];
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

  NSMapInsert(v14, a5, v13);
  if (objc_opt_respondsToSelector())
  {
    [v9 webViewManager:self willInjectScriptInterface:v13];
  }

  [a4 setValue:v13 forKey:@"iTunes"];

  if (objc_opt_respondsToSelector())
  {
    [self->_originalFrameLoadDelegate webView:a3 didClearWindowObject:a4 forFrame:a5];
  }
}

- (void)webView:(id)a3 didFirstLayoutInFrame:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {
    [self->_originalFrameLoadDelegate webView:a3 didFirstLayoutInFrame:a4];
  }

  v7 = [MEMORY[0x1E69D4938] sharedConfig];
  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEFAULT))
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
    v18 = [objc_msgSend(objc_msgSend(a4 "dataSource")];
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

- (void)webView:(id)a3 didReceiveTitle:(id)a4 forFrame:(id)a5
{
  if ([objc_msgSend(a5 webView] == a5)
  {
    v7 = [(SUWebViewManager *)self _delegate];
    if (objc_opt_respondsToSelector())
    {
      v8 = self;

      [v7 webViewManager:self didReceiveTitle:a4];
    }
  }
}

- (void)webView:(id)a3 didStartProvisionalLoadForFrame:(id)a4
{
  if (objc_opt_respondsToSelector())
  {
    [self->_originalFrameLoadDelegate webView:a3 didStartProvisionalLoadForFrame:a4];
  }

  if ([a3 mainFrame] == a4 && self->_scriptInterfaces)
  {
    [(SUWebViewManager *)self _enumerateScriptInterfacesWithBlock:&__block_literal_global_10];
    NSFreeMapTable(self->_scriptInterfaces);
    self->_scriptInterfaces = 0;
  }

  webFramesPendingInitialRequest = self->_webFramesPendingInitialRequest;

  CFSetAddValue(webFramesPendingInitialRequest, a4);
}

uint64_t __60__SUWebViewManager_webView_didStartProvisionalLoadForFrame___block_invoke(uint64_t a1, void *a2)
{
  [a2 setDelegate:0];

  return [a2 tearDownUserInterface];
}

- (void)webView:(id)a3 resource:(id)a4 didReceiveResponse:(id)a5 fromDataSource:(id)a6
{
  v27 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {
    [self->_originalResourceLoadDelegate webView:a3 resource:a4 didReceiveResponse:a5 fromDataSource:a6];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [a5 URL];
    if (([objc_msgSend(v11 "scheme")] & 1) == 0)
    {
      v12 = [MEMORY[0x1E69D4938] sharedConfig];
      v13 = [v12 shouldLog];
      if ([v12 shouldLogToDisk])
      {
        v14 = v13 | 2;
      }

      else
      {
        v14 = v13;
      }

      if (!os_log_type_enabled([v12 OSLogObject], OS_LOG_TYPE_DEBUG))
      {
        v14 &= 2u;
      }

      if (v14)
      {
        v21 = 138412802;
        v22 = objc_opt_class();
        v23 = 2048;
        v24 = [a5 statusCode];
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

    if (a4 == @"1")
    {
      v17 = [(SUWebViewManager *)self _userIdentifier];
      [MEMORY[0x1E69E47E0] handleITunesStoreResponseHeaders:a5 request:objc_msgSend(a6 withAccountIdentifier:"request") shouldRetry:{v17, 0}];
      [objc_msgSend(MEMORY[0x1E69D4A10] "sharedStorage")];
      v18 = [(SUWebViewManager *)self _delegate];
      if (objc_opt_respondsToSelector())
      {
        v19 = self;
        [v18 webViewManager:self didReceivePrimaryResponse:a5];
      }
    }
  }
}

- (void)webView:(id)a3 didParseSource:(id)a4 fromURL:(id)a5 sourceId:(int64_t)a6 forWebFrame:(id)a7
{
  if (a5)
  {
    NSLog(&cfstr_JavascriptDidP.isa, a2, a3, a4, a5, a6, a7, a6, a5);
  }
}

- (void)webView:(id)a3 exceptionWasRaised:(id)a4 sourceId:(int64_t)a5 line:(int)a6 forWebFrame:(id)a7
{
  v7 = *&a6;
  v10 = [a4 exception];
  v11 = [v10 valueForKey:@"name"];
  v12 = [v10 valueForKey:@"message"];
  v13 = 0;
  if (v11 && v12)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", v11, v12];
  }

  NSLog(&cfstr_JavascriptExce.isa, v13, [a4 functionName], a5, v7);
}

- (id)webView:(id)a3 runJavaScriptTextInputPanelWithPrompt:(id)a4 defaultText:(id)a5 initiatedByFrame:(id)a6
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
  v8[4] = a5;
  v8[5] = &v9;
  if ([(SUWebViewManager *)self _presentModalAlertWithMessage:a4 includingCancelButton:1 configurationHandler:v8, a6])
  {
    v6 = [v10[5] text];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v9, 8);
  return v6;
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

- (void)_requestWebScriptReloadWithContext:(id)a3
{
  v6 = [a3 copy];
  [(NSLock *)self->_lock lock];
  pendingWebScriptReloadContext = self->_pendingWebScriptReloadContext;
  if (pendingWebScriptReloadContext != v6)
  {

    self->_pendingWebScriptReloadContext = v6;
  }

  [(NSLock *)self->_lock unlock];
  v5 = [(SUWebScriptReloadContext *)v6 _copyScriptDictionaryRepresentation];
  [(SUWebViewManager *)self dispatchEvent:v5 forName:@"reloadrequested"];
}

- (id)_locateStorePageViewController
{
  v3 = [(SUWebViewManager *)self _delegate];
  if (objc_opt_respondsToSelector())
  {
    for (i = [v3 viewControllerForWebViewManager:self]; ; i = objc_msgSend(v5, "parentViewController"))
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
  v3 = [MEMORY[0x1E69E4778] sharedInstance];

  [v3 beginUsingNetwork];
}

- (void)_cancelUsingNetwork
{
  [(NSLock *)self->_lock lock];
  usingNetworkCount = self->_usingNetworkCount;
  self->_usingNetworkCount = 0;
  [(NSLock *)self->_lock unlock];
  v4 = [MEMORY[0x1E69E4778] sharedInstance];
  if (usingNetworkCount >= 1)
  {
    v5 = v4;
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
    v6 = [MEMORY[0x1E69E4778] sharedInstance];

    [v6 endUsingNetwork];
  }
}

- (void)_enumerateScriptInterfacesWithBlock:(id)a3
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
      (*(a3 + 2))(a3, value);
    }

    NSEndMapTableEnumeration(&enumerator);
  }
}

- (BOOL)_presentModalAlertWithMessage:(id)a3 includingCancelButton:(BOOL)a4 configurationHandler:(id)a5
{
  v6 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v8 = [MEMORY[0x1E69DC650] alertControllerWithTitle:a3 message:0 preferredStyle:1];
  if (a5)
  {
    (*(a5 + 2))(a5, v8);
  }

  if (v6)
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
  v13 = [(SUWebViewManager *)self _delegate];
  if (objc_opt_respondsToSelector())
  {
    v14 = [v13 viewControllerForWebViewManager:self];
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
  v2 = [(SSAuthenticationContext *)[(SUWebViewManager *)self authenticationContext] requiredUniqueIdentifier];
  if (v2)
  {
    v3 = v2;
    if ([v2 unsignedLongLongValue])
    {
      return v3;
    }
  }

  v5 = [objc_msgSend(MEMORY[0x1E69D4890] "defaultStore")];

  return [v5 uniqueIdentifier];
}

- (uint64_t)_delegate
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"SUWebViewManager.m" lineNumber:847 description:@"Not main thread"];
}

@end