@interface RUILoader
- (BOOL)anyWebViewLoading;
- (BOOL)receivedValidResponse:(id)response forRequest:(id)request;
- (RUIDecodingUserInfo)decodingUserInfo;
- (RUILoader)init;
- (RUIParserDelegate)parserDelegate;
- (id)sessionConfiguration;
- (id)urlSessionDelegate;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)_finishLoadWithObjectModel:(id)model url:(id)url actionSignal:(id)signal error:(id)error;
- (void)_handleShouldLoadRequestResult:(id)result completionHandler:(id)handler;
- (void)_loadResourcesWithURL:(id)l;
- (void)_showPrimaryAlertForObjectModel:(id)model completion:(id)completion;
- (void)cancel;
- (void)completePendingPageRefresh;
- (void)dealloc;
- (void)didParseData;
- (void)failWithError:(id)error forRequest:(id)request;
- (void)initializeSwift;
- (void)loadRequest:(id)request;
- (void)loadXMLUIWithData:(id)data baseURL:(id)l;
- (void)loadXMLUIWithRequest:(id)request;
- (void)loadXMLUIWithURL:(id)l;
- (void)parseData:(id)data;
- (void)parseData:(id)data completion:(id)completion;
- (void)shouldLoadRequest:(id)request completionHandler:(id)handler;
- (void)webViewFinishedLoadingWithURL:(id)l;
@end

@implementation RUILoader

- (RUILoader)init
{
  v6.receiver = self;
  v6.super_class = RUILoader;
  v2 = [(RUIHTTPRequest *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingRefreshPageIDs = v2->_pendingRefreshPageIDs;
    v2->_pendingRefreshPageIDs = v3;

    [(RUILoader *)v2 initializeSwift];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = RUILoader;
  [(RUIHTTPRequest *)&v4 dealloc];
}

- (void)cancel
{
  v9 = *MEMORY[0x277D85DE8];
  if (_isInternalInstall() && _isInternalInstall())
  {
    v3 = _RUILoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      *buf = 138412290;
      v8 = callStackSymbols;
      _os_log_impl(&dword_21B93D000, v3, OS_LOG_TYPE_DEFAULT, "RemoteUILoader cancel %@", buf, 0xCu);
    }
  }

  url = self->_url;
  self->_url = 0;

  v6.receiver = self;
  v6.super_class = RUILoader;
  [(RUIHTTPRequest *)&v6 cancel];
}

- (void)loadRequest:(id)request
{
  v24 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = requestCopy;
  if (!self->_url)
  {
    v6 = [requestCopy URL];
    url = self->_url;
    self->_url = v6;
  }

  delegate = [(RUIHTTPRequest *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    telemetryDelegate = [delegate telemetryDelegate];
    v10 = [RUITelemetryElement alloc];
    v11 = [[RUIXMLElement alloc] initWithName:&stru_282D68F58];
    v12 = [(RUITelemetryElement *)v10 initWithXMLElement:v11 url:self->_url];
    [telemetryDelegate willLoadURL:v12];
  }

  v13 = [v5 mutableCopy];
  v14 = [v13 valueForHTTPHeaderField:@"Accept"];

  if (!v14)
  {
    [v13 setValue:@"application/x-buddyml" forHTTPHeaderField:@"Accept"];
    if (!self->_userInterfaceStyle)
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      traitCollection = [mainScreen traitCollection];
      self->_userInterfaceStyle = [traitCollection userInterfaceStyle];

      if (_isInternalInstall())
      {
        v17 = _RUILoggingFacility();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [MEMORY[0x277CCABB0] numberWithInteger:self->_userInterfaceStyle];
          *buf = 138412290;
          v23 = v18;
          _os_log_impl(&dword_21B93D000, v17, OS_LOG_TYPE_DEFAULT, "User interface style unknown, grabbing from mainScreen - %@", buf, 0xCu);
        }
      }
    }

    v19 = [MEMORY[0x277CCABB0] numberWithInteger:self->_userInterfaceStyle];
    stringValue = [v19 stringValue];
    [v13 setValue:stringValue forHTTPHeaderField:@"X-Apple-I-Appearance"];
  }

  v21.receiver = self;
  v21.super_class = RUILoader;
  [(RUIHTTPRequest *)&v21 loadRequest:v13];
}

- (void)_handleShouldLoadRequestResult:(id)result completionHandler:(id)handler
{
  resultCopy = result;
  handlerCopy = handler;
  v8 = [resultCopy URL];
  url = self->_url;
  self->_url = v8;

  if (!resultCopy || -[RUILoader allowNonSecureHTTP](self, "allowNonSecureHTTP") || ([resultCopy URL], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "scheme"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", @"https"), v11, v10, (v12 & 1) != 0))
  {
    handlerCopy[2](handlerCopy, resultCopy, 0);
  }

  else
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __62__RUILoader__handleShouldLoadRequestResult_completionHandler___block_invoke;
    v17 = &unk_2782E84F8;
    selfCopy = self;
    v19 = resultCopy;
    dispatch_async(MEMORY[0x277D85CD0], &v14);
    v13 = [RUIHTTPRequest nonSecureConnectionNotAllowedError:v14];
    (handlerCopy)[2](handlerCopy, 0, v13);
  }
}

void __62__RUILoader__handleShouldLoadRequestResult_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[RUIHTTPRequest nonSecureConnectionNotAllowedError];
  [v2 failWithError:v3 forRequest:*(a1 + 40)];
}

- (void)shouldLoadRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  delegate = [(RUIHTTPRequest *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(RUIHTTPRequest *)self delegate];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __49__RUILoader_shouldLoadRequest_completionHandler___block_invoke;
    v16[3] = &unk_2782E85E8;
    v16[4] = self;
    v17 = handlerCopy;
    [delegate2 loader:self willLoadRequest:requestCopy redirectResponse:0 completionHandler:v16];
  }

  else
  {
    v11 = requestCopy;
    delegate3 = [(RUIHTTPRequest *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      delegate4 = [(RUIHTTPRequest *)self delegate];
      v15 = [delegate4 loader:self willLoadRequest:v11 redirectResponse:0];

      v11 = v15;
    }

    [(RUILoader *)self _handleShouldLoadRequestResult:v11 completionHandler:handlerCopy];
  }
}

uint64_t __49__RUILoader_shouldLoadRequest_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return [*(a1 + 32) _handleShouldLoadRequestResult:a2 completionHandler:*(a1 + 40)];
  }
}

- (id)sessionConfiguration
{
  delegate = [(RUIHTTPRequest *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(RUIHTTPRequest *)self delegate];
    v6 = [delegate2 sessionConfigurationForLoader:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)urlSessionDelegate
{
  sessionDelegateAdapter = self->_sessionDelegateAdapter;
  if (!sessionDelegateAdapter)
  {
    v4 = objc_alloc_init(_RUILoaderSessionDelegateAdapter);
    v5 = self->_sessionDelegateAdapter;
    self->_sessionDelegateAdapter = v4;

    [(_RUILoaderSessionDelegateAdapter *)self->_sessionDelegateAdapter setDelegate:self];
    sessionDelegateAdapter = self->_sessionDelegateAdapter;
  }

  return sessionDelegateAdapter;
}

- (void)loadXMLUIWithURL:(id)l
{
  lCopy = l;
  v5 = [MEMORY[0x277CCAD20] requestWithURL:?];
  [(RUILoader *)self loadRequest:v5];
  if ([(RUIHTTPRequest *)self isLoading])
  {
    objc_storeStrong(&self->_url, l);
  }
}

- (void)loadXMLUIWithRequest:(id)request
{
  requestCopy = request;
  [(RUILoader *)self loadRequest:?];
  if ([(RUIHTTPRequest *)self isLoading])
  {
    v4 = [requestCopy URL];
    url = self->_url;
    self->_url = v4;
  }
}

- (void)loadXMLUIWithData:(id)data baseURL:(id)l
{
  objc_storeStrong(&self->_url, l);
  dataCopy = data;
  [(RUILoader *)self parseData:dataCopy];

  [(RUILoader *)self didParseData];
}

- (void)parseData:(id)data
{
  dataCopy = data;
  v5 = [RUIParser alloc];
  url = self->_url;
  style = self->_style;
  WeakRetained = objc_loadWeakRetained(&self->_parserDelegate);
  decodingUserInfo = [(RUILoader *)self decodingUserInfo];
  v9 = [(RUIParser *)v5 initWithXML:dataCopy baseURL:url style:style delegate:WeakRetained decodingUserInfo:decodingUserInfo];

  parser = self->_parser;
  self->_parser = v9;
}

- (void)parseData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v8 = [RUIParser alloc];
  url = self->_url;
  style = self->_style;
  WeakRetained = objc_loadWeakRetained(&self->_parserDelegate);
  decodingUserInfo = [(RUILoader *)self decodingUserInfo];
  v13 = [(RUIParser *)v8 initWithBaseURL:url style:style delegate:WeakRetained decodingUserInfo:decodingUserInfo];
  parser = self->_parser;
  self->_parser = v13;

  v15 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__RUILoader_parseData_completion___block_invoke;
  block[3] = &unk_2782E8610;
  block[4] = self;
  v19 = dataCopy;
  v20 = completionCopy;
  v16 = completionCopy;
  v17 = dataCopy;
  dispatch_async(v15, block);
}

void __34__RUILoader_parseData_completion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) parseXML:*(a1 + 40)];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__RUILoader_parseData_completion___block_invoke_2;
  block[3] = &unk_2782E8610;
  block[4] = *(a1 + 32);
  v5 = v2;
  v6 = *(a1 + 48);
  v3 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __34__RUILoader_parseData_completion___block_invoke_2(void *a1)
{
  [*(a1[4] + 40) parseObjectModelWithXMLElement:a1[5]];
  v2 = *(a1[6] + 16);

  return v2();
}

- (void)_loadResourcesWithURL:(id)l
{
  lCopy = l;
  delegate = [(RUIHTTPRequest *)self delegate];
  uiObjectModel = [(RUIParser *)self->_parser uiObjectModel];
  actionSignal = [(RUIParser *)self->_parser actionSignal];
  succeeded = [(RUIParser *)self->_parser succeeded];
  error = [(RUIParser *)self->_parser error];
  v10 = error;
  if (succeeded)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __35__RUILoader__loadResourcesWithURL___block_invoke;
    aBlock[3] = &unk_2782E8480;
    aBlock[4] = self;
    v11 = uiObjectModel;
    v27 = v11;
    v12 = lCopy;
    v28 = v12;
    v13 = actionSignal;
    v29 = v13;
    v10 = v10;
    v30 = v10;
    v14 = _Block_copy(aBlock);
    if (objc_opt_respondsToSelector())
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __35__RUILoader__loadResourcesWithURL___block_invoke_2;
      v20[3] = &unk_2782E8480;
      v21 = delegate;
      selfCopy = self;
      v23 = v11;
      v24 = v12;
      v25 = v13;
      v15 = _Block_copy(v20);

      v14 = v15;
    }

    v16 = +[RUIInternalResourceLoader shared];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __35__RUILoader__loadResourcesWithURL___block_invoke_4;
    v18[3] = &unk_2782E8660;
    v19 = v14;
    v17 = v14;
    [v16 loadWithCompletionHandler:v18];
  }

  else
  {
    if (!error)
    {
      v10 = [RUIHTTPRequest errorWithCode:4];
    }

    [(RUILoader *)self _finishLoadWithObjectModel:uiObjectModel url:lCopy actionSignal:actionSignal error:v10];
  }
}

void __35__RUILoader__loadResourcesWithURL___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__RUILoader__loadResourcesWithURL___block_invoke_3;
  v8[3] = &unk_2782E8638;
  v7 = *(a1 + 40);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v2 loader:v7 loadResourcesForObjectModel:v3 completion:v8];
}

- (void)_finishLoadWithObjectModel:(id)model url:(id)url actionSignal:(id)signal error:(id)error
{
  v43 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  urlCopy = url;
  signalCopy = signal;
  errorCopy = error;
  if (_isInternalInstall())
  {
    v14 = _RUILoggingFacility();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = urlCopy;
      _os_log_impl(&dword_21B93D000, v14, OS_LOG_TYPE_DEFAULT, "Finished load of %@", &buf, 0xCu);
    }
  }

  selfCopy = self;
  delegate = [(RUIHTTPRequest *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    request = [(RUIHTTPRequest *)selfCopy request];
    [delegate loader:selfCopy didFinishLoadWithError:errorCopy forRequest:request];

LABEL_9:
    v18 = 1;
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    [delegate loader:selfCopy didFinishLoadWithError:errorCopy];
    goto LABEL_9;
  }

  v18 = 0;
LABEL_11:
  *&buf = 0;
  *(&buf + 1) = &buf;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy_;
  v41 = __Block_byref_object_dispose_;
  v19 = signalCopy;
  v42 = v19;
  if (*(*(&buf + 1) + 40))
  {
    v20 = 1;
  }

  else
  {
    primaryAlert = [modelCopy primaryAlert];
    if (primaryAlert)
    {
      v20 = 1;
    }

    else
    {
      clientInfo = [modelCopy clientInfo];
      v20 = [clientInfo count] != 0;
    }
  }

  [modelCopy setSourceURL:urlCopy];
  if (objc_opt_respondsToSelector())
  {
    telemetryDelegate = [delegate telemetryDelegate];
    [modelCopy setTelemetryDelegate:telemetryDelegate];
  }

  delegate2 = [(RUIHTTPRequest *)selfCopy delegate];
  [modelCopy setDelegate:delegate2];

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __63__RUILoader__finishLoadWithObjectModel_url_actionSignal_error___block_invoke;
  v30[3] = &unk_2782E8688;
  v25 = errorCopy;
  v36 = v20;
  v31 = v25;
  p_buf = &buf;
  v26 = modelCopy;
  v32 = v26;
  v27 = delegate;
  v33 = v27;
  v34 = selfCopy;
  v37 = v18;
  [(RUILoader *)selfCopy _showPrimaryAlertForObjectModel:v26 completion:v30];
  parser = selfCopy->_parser;
  selfCopy->_parser = 0;

  url = selfCopy->_url;
  selfCopy->_url = 0;

  _Block_object_dispose(&buf, 8);
}

void __63__RUILoader__finishLoadWithObjectModel_url_actionSignal_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) || *(a1 + 72) != 1)
  {
    if (_isInternalInstall())
    {
      v10 = _RUILoggingFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_21B93D000, v10, OS_LOG_TYPE_DEFAULT, "No object model in server response", location, 2u);
      }
    }

    if (*(a1 + 73) & 1) == 0 && (objc_opt_respondsToSelector())
    {
      [*(a1 + 48) loader:*(a1 + 56) didFailWithError:*(a1 + 32)];
    }

    [*(a1 + 56) completePendingPageRefresh];
  }

  else
  {
    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v2 = [*(a1 + 40) primaryAlert];

      if (v2)
      {
        v3 = [RUIActionSignal signalWithType:7];
        v4 = *(*(a1 + 64) + 8);
        v5 = *(v4 + 40);
        *(v4 + 40) = v3;
      }
    }

    if (objc_opt_respondsToSelector())
    {
      objc_initWeak(location, *(a1 + 56));
      v7 = *(a1 + 40);
      v6 = *(a1 + 48);
      v8 = *(a1 + 56);
      v9 = *(*(*(a1 + 64) + 8) + 40);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __63__RUILoader__finishLoadWithObjectModel_url_actionSignal_error___block_invoke_2;
      v12[3] = &unk_2782E81C8;
      objc_copyWeak(&v13, location);
      [v6 loader:v8 receivedObjectModel:v7 topActionSignal:v9 completion:v12];
      objc_destroyWeak(&v13);
LABEL_19:
      objc_destroyWeak(location);
      return;
    }

    if (objc_opt_respondsToSelector())
    {
      objc_initWeak(location, *(a1 + 56));
      [*(a1 + 48) loader:*(a1 + 56) receivedObjectModel:*(a1 + 40) topActionSignal:*(*(*(a1 + 64) + 8) + 40)];
      [*(a1 + 56) completePendingPageRefresh];
      goto LABEL_19;
    }

    [*(a1 + 48) loader:*(a1 + 56) receivedObjectModel:*(a1 + 40) actionSignal:{objc_msgSend(*(*(*(a1 + 64) + 8) + 40), "topSignal")}];
    v11 = *(a1 + 56);

    [v11 completePendingPageRefresh];
  }
}

void __63__RUILoader__finishLoadWithObjectModel_url_actionSignal_error___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained completePendingPageRefresh];
}

- (void)completePendingPageRefresh
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__RUILoader_completePendingPageRefresh__block_invoke;
  block[3] = &unk_2782E7F30;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __39__RUILoader_completePendingPageRefresh__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) pendingRefreshPageIDs];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [MEMORY[0x277CCAB98] defaultCenter];
        [v8 postNotificationName:@"RUIPageRefreshRequestedNotification" object:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = [*(a1 + 32) pendingRefreshPageIDs];
  [v9 removeAllObjects];
}

- (void)_showPrimaryAlertForObjectModel:(id)model completion:(id)completion
{
  modelCopy = model;
  completionCopy = completion;
  delegate = [(RUIHTTPRequest *)self delegate];
  v9 = objc_opt_respondsToSelector();

  delegate2 = [(RUIHTTPRequest *)self delegate];
  delegate3 = delegate2;
  if (v9)
  {
    viewControllerForAlertPresentation = [delegate2 viewControllerForAlertPresentation];
LABEL_5:
    v14 = viewControllerForAlertPresentation;

    goto LABEL_7;
  }

  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    delegate3 = [(RUIHTTPRequest *)self delegate];
    viewControllerForAlertPresentation = [delegate3 parentViewControllerForObjectModel:modelCopy];
    goto LABEL_5;
  }

  v14 = 0;
LABEL_7:
  primaryAlert = [modelCopy primaryAlert];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy_;
  v19[4] = __Block_byref_object_dispose_;
  selfCopy = self;
  if (primaryAlert)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __56__RUILoader__showPrimaryAlertForObjectModel_completion___block_invoke;
    v16[3] = &unk_2782E86B0;
    v17 = completionCopy;
    v18 = v19;
    [primaryAlert runAlertInController:v14 completion:v16];
  }

  else
  {
    completionCopy[2](completionCopy);
  }

  _Block_object_dispose(v19, 8);
}

void __56__RUILoader__showPrimaryAlertForObjectModel_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (BOOL)anyWebViewLoading
{
  v17 = *MEMORY[0x277D85DE8];
  uiObjectModel = [(RUIParser *)self->_parser uiObjectModel];
  [uiObjectModel allPages];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        if ([v7 hasWebView])
        {
          webViewOM = [v7 webViewOM];
          webView = [webViewOM webView];
          isLoading = [webView isLoading];

          if (isLoading)
          {
            LOBYTE(v4) = 1;
            goto LABEL_12;
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v4;
}

- (void)didParseData
{
  v3 = self->_url;
  if ([(RUILoader *)self anyWebViewLoading])
  {
    objc_initWeak(&location, self);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v5 = RUIWebViewDidFinishLoadNotification;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __25__RUILoader_didParseData__block_invoke;
    v8[3] = &unk_2782E86D8;
    objc_copyWeak(&v10, &location);
    v9 = v3;
    v6 = [defaultCenter addObserverForName:v5 object:0 queue:0 usingBlock:v8];
    webViewLoadNotificationObserver = self->_webViewLoadNotificationObserver;
    self->_webViewLoadNotificationObserver = v6;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    [(RUILoader *)self allWebViewsFinishedLoadingWithURL:v3];
  }
}

void __25__RUILoader_didParseData__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained webViewFinishedLoadingWithURL:*(a1 + 32)];
}

- (void)webViewFinishedLoadingWithURL:(id)l
{
  lCopy = l;
  if (![(RUILoader *)self anyWebViewLoading])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self->_webViewLoadNotificationObserver];

    [(RUILoader *)self allWebViewsFinishedLoadingWithURL:lCopy];
  }
}

- (void)failWithError:(id)error forRequest:(id)request
{
  v19 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  requestCopy = request;
  if (_isInternalInstall())
  {
    v8 = _RUILoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = errorCopy;
      _os_log_impl(&dword_21B93D000, v8, OS_LOG_TYPE_DEFAULT, "RUILoader failed with error %@", &v17, 0xCu);
    }
  }

  delegate = [(RUIHTTPRequest *)self delegate];
  v10 = objc_opt_respondsToSelector();

  delegate2 = [(RUIHTTPRequest *)self delegate];
  delegate4 = delegate2;
  if (v10)
  {
    [delegate2 loader:self didFinishLoadWithError:errorCopy forRequest:requestCopy];
LABEL_11:

    goto LABEL_12;
  }

  v13 = objc_opt_respondsToSelector();

  delegate3 = [(RUIHTTPRequest *)self delegate];
  delegate4 = delegate3;
  if (v13)
  {
    [delegate3 loader:self didFinishLoadWithError:errorCopy];
    goto LABEL_11;
  }

  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    delegate4 = [(RUIHTTPRequest *)self delegate];
    [delegate4 loader:self didFailWithError:errorCopy];
    goto LABEL_11;
  }

LABEL_12:
  url = self->_url;
  self->_url = 0;
}

- (BOOL)receivedValidResponse:(id)response forRequest:(id)request
{
  v21 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    allHeaderFields = [responseCopy allHeaderFields];
    if (_isInternalInstall())
    {
      v9 = _RUILoggingFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = allHeaderFields;
        _os_log_impl(&dword_21B93D000, v9, OS_LOG_TYPE_DEFAULT, "loader receivedValidResponse. headers: %@", buf, 0xCu);
      }
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __46__RUILoader_receivedValidResponse_forRequest___block_invoke;
    v18[3] = &unk_2782E8700;
    v18[4] = self;
    [allHeaderFields enumerateKeysAndObjectsUsingBlock:v18];
    delegate = [(RUIHTTPRequest *)self delegate];
    v11 = objc_opt_respondsToSelector();

    delegate2 = [(RUIHTTPRequest *)self delegate];
    delegate3 = delegate2;
    if (v11)
    {
      [delegate2 loader:self didReceiveHTTPResponse:responseCopy forRequest:requestCopy];
    }

    else
    {
      v14 = objc_opt_respondsToSelector();

      if ((v14 & 1) == 0)
      {
LABEL_11:

        goto LABEL_12;
      }

      delegate3 = [(RUIHTTPRequest *)self delegate];
      [delegate3 loader:self didReceiveHTTPResponse:responseCopy];
    }

    goto LABEL_11;
  }

LABEL_12:
  v17.receiver = self;
  v17.super_class = RUILoader;
  v15 = [(RUIHTTPRequest *)&v17 receivedValidResponse:responseCopy forRequest:requestCopy];

  return v15;
}

void __46__RUILoader_receivedValidResponse_forRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 lowercaseString];
  v7 = [v6 isEqualToString:@"x-apple-i-refresh-page"];

  if (v7)
  {
    if (_isInternalInstall())
    {
      v8 = _RUILoggingFacility();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(&dword_21B93D000, v8, OS_LOG_TYPE_DEFAULT, "Posting RUIPageRefreshRequestedNotification for page: %@", &v12, 0xCu);
      }
    }

    v9 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v10 = [v5 stringByTrimmingCharactersInSet:v9];

    v11 = [*(a1 + 32) pendingRefreshPageIDs];
    [v11 addObject:v10];
  }
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  redirectionCopy = redirection;
  requestCopy = request;
  handlerCopy = handler;
  if (_isInternalInstall())
  {
    v13 = _RUILoggingFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [redirectionCopy URL];
      v15 = [requestCopy URL];
      *buf = 138412546;
      v25 = v14;
      v26 = 2112;
      v27 = v15;
      _os_log_impl(&dword_21B93D000, v13, OS_LOG_TYPE_DEFAULT, "Loader processing redirect from %@ to %@", buf, 0x16u);
    }
  }

  if (redirectionCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __85__RUILoader_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke;
    aBlock[3] = &unk_2782E8728;
    aBlock[4] = self;
    v23 = handlerCopy;
    v16 = _Block_copy(aBlock);
    delegate = [(RUIHTTPRequest *)self delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      delegate2 = [(RUIHTTPRequest *)self delegate];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __85__RUILoader_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_2;
      v20[3] = &unk_2782E8750;
      v21 = v16;
      [delegate2 loader:self willLoadRequest:requestCopy redirectResponse:redirectionCopy completionHandler:v20];
    }

    else
    {
      (*(v16 + 2))(v16, requestCopy);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, requestCopy);
  }
}

void __85__RUILoader_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    v4 = [v3 URL];
    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
    *(v5 + 48) = v4;

    v7 = [v8 mutableCopy];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(a1 + 32) cancel];
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __85__RUILoader_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    a2 = 0;
  }

  return (*(v3 + 16))(v3, a2);
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  delegate = [(RUIHTTPRequest *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(RUIHTTPRequest *)self delegate];
    [delegate2 loader:self didReceiveChallenge:challengeCopy completionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 1, 0);
  }
}

- (RUIParserDelegate)parserDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_parserDelegate);

  return WeakRetained;
}

- (void)initializeSwift
{
  selfCopy = self;
  RUILoader.initializeSwift()();
}

- (RUIDecodingUserInfo)decodingUserInfo
{
  selfCopy = self;
  sub_21B9C07A0(&type metadata for DecodingUserInfoAssociatedKey, &off_28172C550, &v5);

  v3 = v5;

  return v3;
}

@end