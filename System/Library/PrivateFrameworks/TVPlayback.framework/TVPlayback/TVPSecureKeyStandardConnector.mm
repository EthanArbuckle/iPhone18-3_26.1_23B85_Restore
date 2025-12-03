@interface TVPSecureKeyStandardConnector
- (TVPSecureKeyStandardConnector)init;
- (id)secureKeyStandardLoader:(id)loader requestForFetchingDataFromURL:(id)l;
- (id)secureKeyStandardLoader:(id)loader requestForPostingData:(id)data toURL:(id)l;
- (void)secureKeyStandardLoader:(id)loader sendAsynchronousRequest:(id)request completionHandler:(id)handler;
@end

@implementation TVPSecureKeyStandardConnector

- (TVPSecureKeyStandardConnector)init
{
  v6.receiver = self;
  v6.super_class = TVPSecureKeyStandardConnector;
  v2 = [(TVPSecureKeyStandardConnector *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v3;

    [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:5];
  }

  return v2;
}

- (id)secureKeyStandardLoader:(id)loader requestForFetchingDataFromURL:(id)l
{
  v4 = MEMORY[0x277CCAB70];
  lCopy = l;
  v6 = [[v4 alloc] initWithURL:lCopy];

  [v6 setHTTPMethod:@"GET"];
  [v6 setTimeoutInterval:30.0];

  return v6;
}

- (id)secureKeyStandardLoader:(id)loader requestForPostingData:(id)data toURL:(id)l
{
  v6 = MEMORY[0x277CCAB70];
  lCopy = l;
  dataCopy = data;
  v9 = [[v6 alloc] initWithURL:lCopy];

  [v9 setHTTPMethod:@"POST"];
  [v9 setHTTPBody:dataCopy];

  [v9 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  [v9 setTimeoutInterval:30.0];

  return v9;
}

- (void)secureKeyStandardLoader:(id)loader sendAsynchronousRequest:(id)request completionHandler:(id)handler
{
  loaderCopy = loader;
  requestCopy = request;
  handlerCopy = handler;
  v11 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURLRequest:requestCopy];
  [v11 setITunesStoreRequest:1];
  objc_initWeak(&location, v11);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __99__TVPSecureKeyStandardConnector_secureKeyStandardLoader_sendAsynchronousRequest_completionHandler___block_invoke;
  v14[3] = &unk_279D7D280;
  v12 = handlerCopy;
  v15 = v12;
  objc_copyWeak(&v16, &location);
  [v11 setOutputBlock:v14];
  operationQueue = [(TVPSecureKeyStandardConnector *)self operationQueue];
  [operationQueue addOperation:v11];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __99__TVPSecureKeyStandardConnector_secureKeyStandardLoader_sendAsynchronousRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __99__TVPSecureKeyStandardConnector_secureKeyStandardLoader_sendAsynchronousRequest_completionHandler___block_invoke_2;
  v9[3] = &unk_279D7D258;
  v12 = *(a1 + 32);
  v10 = v5;
  v7 = v5;
  objc_copyWeak(&v13, (a1 + 40));
  v11 = v6;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  objc_destroyWeak(&v13);
}

void __99__TVPSecureKeyStandardConnector_secureKeyStandardLoader_sendAsynchronousRequest_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [WeakRetained URLResponse];
  (*(v2 + 16))(v2, v3, v4, *(a1 + 40));
}

@end