@interface VSWebAuthenticationViewController
- (VSAuthenticationViewControllerDelegate)delegate;
- (id)_canonicalRequestForRequest:(id)request;
- (void)_cancelButtonPressed:(id)pressed;
- (void)_didBeginActivity;
- (void)_didEndActivity;
- (void)_retrieveMessages;
- (void)_sendMessage:(id)message;
- (void)_sendMessages:(id)messages;
- (void)_startObservingViewModel:(id)model;
- (void)_stopObservingViewModel:(id)model;
- (void)dealloc;
- (void)didAddMessagesToMessageQueue:(id)queue;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCancellationAllowed:(BOOL)allowed;
- (void)setViewModel:(id)model;
- (void)viewDidLoad;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
@end

@implementation VSWebAuthenticationViewController

- (void)dealloc
{
  [(VSWebAuthenticationViewController *)self _stopObservingViewModel:self->_viewModel];
  v3.receiver = self;
  v3.super_class = VSWebAuthenticationViewController;
  [(VSWebAuthenticationViewController *)&v3 dealloc];
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (self->_viewModel != modelCopy)
  {
    v6 = modelCopy;
    [(VSWebAuthenticationViewController *)self _stopObservingViewModel:?];
    objc_storeStrong(&self->_viewModel, model);
    [(VSWebAuthenticationViewController *)self _startObservingViewModel:self->_viewModel];
    modelCopy = v6;
  }
}

- (void)_didBeginActivity
{
  webView = [(VSWebAuthenticationViewController *)self webView];
  [webView setHidden:1];

  activityIndicator = [(VSWebAuthenticationViewController *)self activityIndicator];
  [activityIndicator startAnimating];
}

- (void)_didEndActivity
{
  webView = [(VSWebAuthenticationViewController *)self webView];
  [webView setHidden:0];

  activityIndicator = [(VSWebAuthenticationViewController *)self activityIndicator];
  [activityIndicator stopAnimating];
}

- (void)_cancelButtonPressed:(id)pressed
{
  delegate = [(VSWebAuthenticationViewController *)self delegate];
  [delegate authenticationViewControllerDidCancel:self];
}

- (void)_sendMessage:(id)message
{
  v14 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  webView = [(VSWebAuthenticationViewController *)self webView];
  v6 = VSScriptMessageDispatchInjection(messageCopy);
  v7 = VSDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = messageCopy;
    _os_log_impl(&dword_270DD4000, v7, OS_LOG_TYPE_DEFAULT, "Will inject message to web: %@", buf, 0xCu);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__VSWebAuthenticationViewController__sendMessage___block_invoke;
  v10[3] = &unk_279E1A3C0;
  v11 = messageCopy;
  v8 = messageCopy;
  [webView evaluateJavaScript:v6 completionHandler:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __50__VSWebAuthenticationViewController__sendMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = VSDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_270DD4000, v7, OS_LOG_TYPE_DEFAULT, "Result of message injection: %@", &v11, 0xCu);
    }
  }

  else
  {
    v7 = VSErrorLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __50__VSWebAuthenticationViewController__sendMessage___block_invoke_cold_1();
    }
  }

  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_270DD4000, v8, OS_LOG_TYPE_DEFAULT, "Did inject message: %@", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_retrieveMessages
{
  webView = [(VSWebAuthenticationViewController *)self webView];
  v4 = [webView URL];
  v5 = objc_alloc_init(VSScriptSecurityOrigin);
  scheme = [v4 scheme];
  [(VSScriptSecurityOrigin *)v5 setScheme:scheme];

  host = [v4 host];
  [(VSScriptSecurityOrigin *)v5 setHost:host];

  port = [v4 port];
  -[VSScriptSecurityOrigin setPort:](v5, "setPort:", [port integerValue]);

  v9 = VSDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270DD4000, v9, OS_LOG_TYPE_DEFAULT, "Will retrieve messages.", buf, 2u);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__VSWebAuthenticationViewController__retrieveMessages__block_invoke;
  v11[3] = &unk_279E1A3E8;
  v12 = v5;
  selfCopy = self;
  v10 = v5;
  [webView evaluateJavaScript:@"VideoSubscriberAccount._retrieveMessages();" completionHandler:v11];
}

void __54__VSWebAuthenticationViewController__retrieveMessages__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = VSErrorLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __54__VSWebAuthenticationViewController__retrieveMessages__block_invoke_cold_1();
    }

LABEL_4:

    goto LABEL_5;
  }

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v5;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v11 = *MEMORY[0x277CBE660];
        v12 = MEMORY[0x277CBEAD8];
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        [v12 raise:v11 format:{@"Unexpectedly, VSForceUnwrapNullable(result) was %@, instead of NSString.", v14}];
      }

      v7 = [v9 dataUsingEncoding:4];
      if (v7)
      {
        v38 = 0;
        v15 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v38];
        v16 = v38;
        if (v15)
        {
          v17 = v15;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v33 = v5;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v18 = MEMORY[0x277CBEAD8];
              v19 = *MEMORY[0x277CBE660];
              v20 = objc_opt_class();
              v21 = NSStringFromClass(v20);
              [v18 raise:v19 format:{@"Unexpectedly, messages was %@, instead of NSArray.", v21}];
            }

            v22 = v17;
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v23 = [v22 countByEnumeratingWithState:&v34 objects:v39 count:16];
            if (v23)
            {
              v24 = v23;
              v30 = v17;
              v31 = v15;
              v32 = v16;
              v25 = *v35;
              do
              {
                for (i = 0; i != v24; ++i)
                {
                  if (*v35 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v27 = VSScriptMessageForValueFromContextWithOrigin(*(*(&v34 + 1) + 8 * i), *(a1 + 32));
                  if (v27)
                  {
                    v28 = [*(a1 + 40) viewModel];
                    v29 = [v28 messagesFromWeb];
                    [v29 addMessage:v27];
                  }
                }

                v24 = [v22 countByEnumeratingWithState:&v34 objects:v39 count:16];
              }

              while (v24);
              v16 = v32;
              v5 = v33;
              v17 = v30;
              v15 = v31;
            }

            else
            {
              v5 = v33;
            }
          }

          else
          {
            v22 = VSErrorLogObject();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              __54__VSWebAuthenticationViewController__retrieveMessages__block_invoke_cold_2();
            }
          }
        }

        else
        {
          v17 = VSErrorLogObject();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            __54__VSWebAuthenticationViewController__retrieveMessages__block_invoke_cold_3();
          }
        }
      }

      else
      {
        v16 = VSErrorLogObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          __54__VSWebAuthenticationViewController__retrieveMessages__block_invoke_cold_4();
        }
      }

      goto LABEL_4;
    }
  }

LABEL_5:

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_sendMessages:(id)messages
{
  messagesCopy = messages;
  webView = [(VSWebAuthenticationViewController *)self webView];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__VSWebAuthenticationViewController__sendMessages___block_invoke;
  v7[3] = &unk_279E1A3E8;
  v8 = messagesCopy;
  selfCopy = self;
  v6 = messagesCopy;
  [webView evaluateJavaScript:@"location.origin" completionHandler:v7];
}

void __51__VSWebAuthenticationViewController__sendMessages___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = MEMORY[0x277CBEAD8];
        v7 = *MEMORY[0x277CBE660];
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        [v6 raise:v7 format:{@"Unexpectedly, result was %@, instead of NSString.", v9}];
      }

      v10 = v5;
      v11 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:v10];
      if (v11)
      {
        v12 = objc_alloc_init(VSScriptSecurityOrigin);
        v13 = [v11 scheme];
        [(VSScriptSecurityOrigin *)v12 setScheme:v13];

        v14 = [v11 host];
        [(VSScriptSecurityOrigin *)v12 setHost:v14];

        v23 = v11;
        v15 = [v11 port];
        -[VSScriptSecurityOrigin setPort:](v12, "setPort:", [v15 integerValue]);

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v16 = *(a1 + 32);
        v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v25;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v25 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v24 + 1) + 8 * i);
              if (VSShouldSendScriptMessageToContextWithOrigin(v21, v12))
              {
                [*(a1 + 40) _sendMessage:v21];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
          }

          while (v18);
        }

        v11 = v23;
      }

      else
      {
        v12 = VSErrorLogObject();
        if (os_log_type_enabled(&v12->super, OS_LOG_TYPE_ERROR))
        {
          __51__VSWebAuthenticationViewController__sendMessages___block_invoke_cold_2();
        }
      }
    }

    else
    {
      v10 = VSErrorLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __51__VSWebAuthenticationViewController__sendMessages___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v5 = VSErrorLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __51__VSWebAuthenticationViewController__sendMessages___block_invoke_cold_3();
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_startObservingViewModel:(id)model
{
  v4 = kVSKeyValueObservingContext_SourceURL;
  modelCopy = model;
  [modelCopy addObserver:self forKeyPath:@"sourceURL" options:4 context:v4];
  messagesToWeb = [modelCopy messagesToWeb];

  [messagesToWeb setDelegate:self];
}

- (void)_stopObservingViewModel:(id)model
{
  v4 = kVSKeyValueObservingContext_SourceURL;
  modelCopy = model;
  [modelCopy removeObserver:self forKeyPath:@"sourceURL" context:v4];
  messagesToWeb = [modelCopy messagesToWeb];

  [messagesToWeb setDelegate:0];
}

- (id)_canonicalRequestForRequest:(id)request
{
  v3 = [request mutableCopy];
  [v3 _CFURLRequest];
  vs_sharedCookieStorage = [MEMORY[0x277CCAA38] vs_sharedCookieStorage];
  [vs_sharedCookieStorage _cookieStorage];
  CFURLRequestSetHTTPCookieStorage();
  [v3 setHTTPShouldHandleCookies:1];

  return v3;
}

- (void)didAddMessagesToMessageQueue:(id)queue
{
  queueCopy = queue;
  v3 = queueCopy;
  VSPerformBlockOnMainThread();
}

void __66__VSWebAuthenticationViewController_didAddMessagesToMessageQueue___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isViewLoaded])
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) removeAllMessages];
    [v2 _sendMessages:v3];
  }
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  viewCopy = view;
  v9 = VSScriptMessageSupportInjection(0);
  [viewCopy evaluateJavaScript:v9 completionHandler:&__block_literal_global_13];

  viewModel = [(VSWebAuthenticationViewController *)self viewModel];
  messagesToWeb = [viewModel messagesToWeb];
  removeAllMessages = [messagesToWeb removeAllMessages];
  [(VSWebAuthenticationViewController *)self _sendMessages:removeAllMessages];

  [(VSWebAuthenticationViewController *)self _didEndActivity];
}

void __65__VSWebAuthenticationViewController_webView_didFinishNavigation___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = VSErrorLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __65__VSWebAuthenticationViewController_webView_didFinishNavigation___block_invoke_cold_1();
    }
  }
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  v8 = [(VSWebAuthenticationViewController *)self viewModel:view];
  messagesToWeb = [v8 messagesToWeb];
  removeAllMessages = [messagesToWeb removeAllMessages];
  [(VSWebAuthenticationViewController *)self _sendMessages:removeAllMessages];

  [(VSWebAuthenticationViewController *)self _didEndActivity];
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  request = [action request];
  v9 = [request URL];
  v10 = VSIsScriptMessageNotificationURL(v9);
  v11 = VSDefaultLogObject();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v15 = 138412290;
      v16 = request;
      _os_log_impl(&dword_270DD4000, v11, OS_LOG_TYPE_DEFAULT, "Web view will *not* load request: %@", &v15, 0xCu);
    }

    [(VSWebAuthenticationViewController *)self _retrieveMessages];
    v13 = 0;
  }

  else
  {
    if (v12)
    {
      v15 = 138412290;
      v16 = request;
      _os_log_impl(&dword_270DD4000, v11, OS_LOG_TYPE_DEFAULT, "Web view will load request %@", &v15, 0xCu);
    }

    v13 = 1;
  }

  handlerCopy[2](handlerCopy, v13);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setCancellationAllowed:(BOOL)allowed
{
  if (self->_cancellationAllowed != allowed)
  {
    self->_cancellationAllowed = allowed;
    if (allowed)
    {
      vs_frameworkBundle = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
      v6 = [vs_frameworkBundle localizedStringForKey:@"CANCEL_TITLE" value:0 table:0];

      v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v6 style:0 target:self action:sel__cancelButtonPressed_];
    }

    else
    {
      v8 = 0;
    }

    navigationItem = [(VSWebAuthenticationViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v8];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  if (kVSKeyValueObservingContext_SourceURL == context)
  {
    if ([(VSWebAuthenticationViewController *)self isViewLoaded])
    {
      webView = [(VSWebAuthenticationViewController *)self webView];
      if (!objectCopy)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The objectOrNil parameter must not be nil."];
      }

      v13 = objectCopy;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v14 = MEMORY[0x277CBEAD8];
        v15 = *MEMORY[0x277CBE660];
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        [v14 raise:v15 format:{@"Unexpectedly, object was %@, instead of VSWebAuthenticationViewModel.", v17}];
      }

      v18 = v13;
      if (!pathCopy)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The keyPathOrNil parameter must not be nil."];
      }

      v19 = [v18 valueForKeyPath:pathCopy];
      if (v19)
      {
        v20 = [MEMORY[0x277CCAD20] requestWithURL:v19];
        v21 = [(VSWebAuthenticationViewController *)self _canonicalRequestForRequest:v20];

        v22 = [webView loadRequest:v21];
      }

      else
      {
        [webView stopLoading];
      }
    }
  }

  else
  {
    v23.receiver = self;
    v23.super_class = VSWebAuthenticationViewController;
    [(VSWebAuthenticationViewController *)&v23 observeValueForKeyPath:pathCopy ofObject:objectCopy change:change context:context];
  }
}

- (void)viewDidLoad
{
  v42.receiver = self;
  v42.super_class = VSWebAuthenticationViewController;
  [(VSWebAuthenticationViewController *)&v42 viewDidLoad];
  view = [(VSWebAuthenticationViewController *)self view];
  groupTableViewBackgroundColor = [MEMORY[0x277D75348] groupTableViewBackgroundColor];
  [view setBackgroundColor:groupTableViewBackgroundColor];

  [view bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = objc_alloc_init(MEMORY[0x277CE3858]);
  nonPersistentDataStore = [MEMORY[0x277CE3868] nonPersistentDataStore];
  [v13 setWebsiteDataStore:nonPersistentDataStore];

  v15 = [objc_alloc(MEMORY[0x277CE3850]) initWithFrame:v13 configuration:{v6, v8, v10, v12}];
  [v15 setNavigationDelegate:self];
  [v15 setHidden:1];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:v15];
  [(VSWebAuthenticationViewController *)self setWebView:v15];
  v16 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:2];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:v16];
  [(VSWebAuthenticationViewController *)self setActivityIndicator:v16];
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  centerXAnchor = [v16 centerXAnchor];
  centerXAnchor2 = [view centerXAnchor];
  v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v17 addObject:v20];

  centerYAnchor = [v16 centerYAnchor];
  centerYAnchor2 = [view centerYAnchor];
  v23 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v17 addObject:v23];

  topAnchor = [v15 topAnchor];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v17 addObject:v27];

  bottomAnchor = [v15 bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v17 addObject:v30];

  leftAnchor = [v15 leftAnchor];
  leftAnchor2 = [view leftAnchor];
  v33 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v17 addObject:v33];

  rightAnchor = [v15 rightAnchor];
  rightAnchor2 = [view rightAnchor];
  v36 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v17 addObject:v36];

  [MEMORY[0x277CCAAD0] activateConstraints:v17];
  viewModel = [(VSWebAuthenticationViewController *)self viewModel];
  sourceURL = [viewModel sourceURL];

  v39 = [MEMORY[0x277CCAD20] requestWithURL:sourceURL];
  v40 = [(VSWebAuthenticationViewController *)self _canonicalRequestForRequest:v39];

  v41 = [v15 loadRequest:v40];
  VSAuthenticationViewControllerViewDidLoad(self);
}

- (VSAuthenticationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __50__VSWebAuthenticationViewController__sendMessage___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __54__VSWebAuthenticationViewController__retrieveMessages__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __54__VSWebAuthenticationViewController__retrieveMessages__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __54__VSWebAuthenticationViewController__retrieveMessages__block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __54__VSWebAuthenticationViewController__retrieveMessages__block_invoke_cold_4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __51__VSWebAuthenticationViewController__sendMessages___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __51__VSWebAuthenticationViewController__sendMessages___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __51__VSWebAuthenticationViewController__sendMessages___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__VSWebAuthenticationViewController_webView_didFinishNavigation___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end