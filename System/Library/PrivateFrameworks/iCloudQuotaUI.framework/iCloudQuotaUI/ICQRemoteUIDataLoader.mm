@interface ICQRemoteUIDataLoader
- (ICQRemoteUIDataLoader)init;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)addHeadersForRequest:(id)request withCompletion:(id)completion;
- (void)loadDataFromURL:(id)l completion:(id)completion;
@end

@implementation ICQRemoteUIDataLoader

- (ICQRemoteUIDataLoader)init
{
  v8.receiver = self;
  v8.super_class = ICQRemoteUIDataLoader;
  v2 = [(ICQRemoteUIDataLoader *)&v8 init];
  if (v2)
  {
    defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    v4 = [objc_alloc(MEMORY[0x277CF0188]) initWithIdentifier:@"ICQRemoteUILoaderSession"];
    [defaultSessionConfiguration set_appleIDContext:v4];

    v5 = [MEMORY[0x277CCAD30] sessionWithConfiguration:defaultSessionConfiguration];
    session = v2->_session;
    v2->_session = v5;
  }

  return v2;
}

- (void)addHeadersForRequest:(id)request withCompletion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v7 = [requestCopy mutableCopy];
  [v7 setValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
  [v7 setValue:@"application/x-buddyml" forHTTPHeaderField:@"Accept"];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__ICQRemoteUIDataLoader_addHeadersForRequest_withCompletion___block_invoke;
  v11[3] = &unk_27A65A5B8;
  v13 = v7;
  v14 = completionCopy;
  v12 = requestCopy;
  v8 = v7;
  v9 = completionCopy;
  v10 = requestCopy;
  [v8 icq_addHeadersForUpgradeWithCompletion:v11];
}

uint64_t __61__ICQRemoteUIDataLoader_addHeadersForRequest_withCompletion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) allHTTPHeaderFields];
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    v5 = [*(a1 + 32) HTTPBody];
    v6 = [v4 initWithData:v5 encoding:4];
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "Request headers: %@, body (decoded from data): %@", &v8, 0x16u);
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)loadDataFromURL:(id)l completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  lCopy = l;
  completionCopy = completion;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[ICQRemoteUIDataLoader loadDataFromURL:completion:]";
    v16 = 2112;
    v17 = lCopy;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "%s - server call to URL %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v9 = [MEMORY[0x277CCAB70] requestWithURL:lCopy cachePolicy:1 timeoutInterval:30.0];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__ICQRemoteUIDataLoader_loadDataFromURL_completion___block_invoke;
  v11[3] = &unk_27A65A608;
  objc_copyWeak(&v13, buf);
  v10 = completionCopy;
  v12 = v10;
  [(ICQRemoteUIDataLoader *)self addHeadersForRequest:v9 withCompletion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __52__ICQRemoteUIDataLoader_loadDataFromURL_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained session];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__ICQRemoteUIDataLoader_loadDataFromURL_completion___block_invoke_2;
  v7[3] = &unk_27A65A5E0;
  v8 = *(a1 + 32);
  v6 = [v5 dataTaskWithRequest:v3 completionHandler:v7];

  [v6 setDelegate:WeakRetained];
  [v6 resume];
}

void __52__ICQRemoteUIDataLoader_loadDataFromURL_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = _ICQGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __52__ICQRemoteUIDataLoader_loadDataFromURL_completion___block_invoke_2_cold_1(v9, v10);
    }

LABEL_4:

    (*(*(a1 + 32) + 16))();
    goto LABEL_19;
  }

  v11 = _ICQGetLogSystem();
  v10 = v11;
  if (!v7)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __52__ICQRemoteUIDataLoader_loadDataFromURL_completion___block_invoke_2_cold_3(v10);
    }

    goto LABEL_4;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v7;
    _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "Received remoteUI Page data %@", &v17, 0xCu);
  }

  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
  v13 = _ICQGetLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v12;
    _os_log_impl(&dword_275623000, v13, OS_LOG_TYPE_DEFAULT, "Received remoteUI XML %@", &v17, 0xCu);
  }

  if ([v12 containsString:@"forceRefresh=true"])
  {
    v14 = _ICQGetLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __52__ICQRemoteUIDataLoader_loadDataFromURL_completion___block_invoke_2_cold_2(v14);
    }

    +[ICQPurchase clearCacheAndNotifyClients];
    v15 = *(a1 + 32);
    v16 = ICQCreateError();
    (*(v15 + 16))(v15, 0, v16);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

LABEL_19:
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  requestCopy = request;
  v11 = _ICQGetLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[ICQRemoteUIDataLoader URLSession:task:willPerformHTTPRedirection:newRequest:completionHandler:]";
    _os_log_impl(&dword_275623000, v11, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __97__ICQRemoteUIDataLoader_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke;
  v13[3] = &unk_27A65A630;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [(ICQRemoteUIDataLoader *)self addHeadersForRequest:requestCopy withCompletion:v13];
}

void __52__ICQRemoteUIDataLoader_loadDataFromURL_completion___block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_275623000, a2, OS_LOG_TYPE_ERROR, "Error making HTTP call to url: %@", &v4, 0xCu);
}

void __52__ICQRemoteUIDataLoader_loadDataFromURL_completion___block_invoke_2_cold_3(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[ICQRemoteUIDataLoader loadDataFromURL:completion:]_block_invoke";
  _os_log_error_impl(&dword_275623000, log, OS_LOG_TYPE_ERROR, "Received no data and no error in %s!", &v1, 0xCu);
}

@end