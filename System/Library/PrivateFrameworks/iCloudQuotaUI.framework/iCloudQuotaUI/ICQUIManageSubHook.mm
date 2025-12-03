@interface ICQUIManageSubHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)_openAMSUIWithBag:(id)bag version:(id)version key:(id)key query:(id)query completion:(id)completion;
- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
- (void)webViewController:(id)controller didFinishPurchaseWithResult:(id)result error:(id)error;
@end

@implementation ICQUIManageSubHook

- (BOOL)shouldMatchElement:(id)element
{
  name = [element name];
  v4 = [name isEqualToString:@"ICQManageSubAction"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)model
{
  clientInfo = [model clientInfo];
  v4 = [clientInfo objectForKeyedSubscript:*MEMORY[0x277D46250]];
  v5 = [v4 isEqualToString:@"ICQManageSubAction"];

  return v5;
}

- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  completionCopy = completion;
  attributesCopy = attributes;
  v12 = _ICQGetLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    name = [elementCopy name];
    v19 = 138412290;
    v20 = name;
    _os_log_impl(&dword_275623000, v12, OS_LOG_TYPE_DEFAULT, "Processing Manage Sub RUI hook with element %@", &v19, 0xCu);
  }

  v14 = [attributesCopy objectForKeyedSubscript:@"bagProfile"];
  v15 = [attributesCopy objectForKeyedSubscript:@"bagProfileVersion"];
  v16 = [attributesCopy objectForKeyedSubscript:@"bagURLKey"];
  v17 = [attributesCopy objectForKeyedSubscript:@"queryParams"];

  if (v14 && v15 && v16)
  {
    [(ICQUIManageSubHook *)self _openAMSUIWithBag:v14 version:v15 key:v16 query:v17 completion:completionCopy];
  }

  else
  {
    v18 = _ICQGetLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = 138413058;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      v23 = 2112;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      _os_log_error_impl(&dword_275623000, v18, OS_LOG_TYPE_ERROR, "Manage Subs Hook - Attributes missing in element bag: %@, version: %@, bagURLKey: %@ query:%@", &v19, 0x2Au);
    }
  }
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  completionCopy = completion;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    name = [modelCopy name];
    v19 = 138412290;
    v20 = name;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Processing Manage Sub RUI hook with model %@", &v19, 0xCu);
  }

  clientInfo = [modelCopy clientInfo];
  v11 = [clientInfo objectForKeyedSubscript:@"bagProfile"];

  clientInfo2 = [modelCopy clientInfo];
  v13 = [clientInfo2 objectForKeyedSubscript:@"bagProfileVersion"];

  clientInfo3 = [modelCopy clientInfo];
  v15 = [clientInfo3 objectForKeyedSubscript:@"bagURLKey"];

  clientInfo4 = [modelCopy clientInfo];
  v17 = [clientInfo4 objectForKeyedSubscript:@"queryParams"];

  if (v11 && v13 && v15)
  {
    [(ICQUIManageSubHook *)self _openAMSUIWithBag:v11 version:v13 key:v15 query:v17 completion:completionCopy];
  }

  else
  {
    v18 = _ICQGetLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = 138413058;
      v20 = v11;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v15;
      v25 = 2112;
      v26 = v17;
      _os_log_error_impl(&dword_275623000, v18, OS_LOG_TYPE_ERROR, "Manage Subs Hook - Attributes missing in element bag: %@, version: %@, bagURLKey: %@ query:%@", &v19, 0x2Au);
    }
  }
}

- (void)_openAMSUIWithBag:(id)bag version:(id)version key:(id)key query:(id)query completion:(id)completion
{
  v35[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  queryCopy = query;
  completionCopy = completion;
  v15 = [MEMORY[0x277CEE3F8] bagForProfile:bag profileVersion:version];
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  ams_activeiCloudAccount = [defaultStore ams_activeiCloudAccount];

  v18 = [objc_alloc(MEMORY[0x277CEE940]) initWithBag:v15 account:ams_activeiCloudAccount clientInfo:0];
  v19 = [v15 URLForKey:keyCopy];
  [v18 setDelegate:self];
  v34 = @"source";
  v35[0] = @"iCloudFreshmint";
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  [v18 setClientOptions:v20];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v22 = [WeakRetained presentationContextForHook:self];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __69__ICQUIManageSubHook__openAMSUIWithBag_version_key_query_completion___block_invoke;
  v28[3] = &unk_27A65C6D8;
  v32 = v22;
  v33 = completionCopy;
  v29 = keyCopy;
  v30 = queryCopy;
  v31 = v18;
  v23 = v22;
  v24 = v18;
  v25 = queryCopy;
  v26 = completionCopy;
  v27 = keyCopy;
  [v19 valueWithCompletion:v28];
}

void __69__ICQUIManageSubHook__openAMSUIWithBag_version_key_query_completion___block_invoke(uint64_t a1, void *a2)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v3 resolvingAgainstBaseURL:0];
    if (v4)
    {
      v5 = [*(a1 + 40) hasPrefix:@"?"];
      v6 = *(a1 + 40);
      if (v5)
      {
        v7 = [v6 substringFromIndex:1];
      }

      else
      {
        v7 = v6;
      }

      v11 = v7;
      [v4 setPercentEncodedQuery:v7];
      v14 = [v4 URL];
      if (v14)
      {
        v15 = [objc_alloc(MEMORY[0x277CCAD20]) initWithURL:v14];
        v16 = [*(a1 + 48) loadRequest:v15];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __69__ICQUIManageSubHook__openAMSUIWithBag_version_key_query_completion___block_invoke_40;
        block[3] = &unk_27A65A708;
        v22 = *(a1 + 56);
        v23 = *(a1 + 48);
        dispatch_async(MEMORY[0x277D85CD0], block);

        v17 = v22;
      }

      else
      {
        v18 = _ICQGetLogSystem();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          __69__ICQUIManageSubHook__openAMSUIWithBag_version_key_query_completion___block_invoke_cold_1(v3, (a1 + 40), v18);
        }

        v19 = *(a1 + 64);
        v20 = MEMORY[0x277CCA9B8];
        v24 = *MEMORY[0x277CCA450];
        v25 = @"Unable to construct url with additional query params.";
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        v17 = [v20 errorWithDomain:@"com.apple.icloud.quota.ICQUIManageSubHook" code:0 userInfo:v15];
        (*(v19 + 16))(v19, 1, v17);
      }
    }

    else
    {
      v12 = *(a1 + 64);
      v13 = MEMORY[0x277CCA9B8];
      v26 = *MEMORY[0x277CCA450];
      v27 = @"Could not construct url componenets from url";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v14 = [v13 errorWithDomain:@"com.apple.icloud.quota.ICQUIManageSubHook" code:1 userInfo:v11];
      (*(v12 + 16))(v12, 1, v14);
    }
  }

  else
  {
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __69__ICQUIManageSubHook__openAMSUIWithBag_version_key_query_completion___block_invoke_cold_2(a1, v8);
    }

    v9 = *(a1 + 64);
    v10 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA450];
    v29[0] = @"Manage subs url unavailable in bag.";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v11 = [v10 errorWithDomain:@"com.apple.icloud.quota.ICQUIManageSubHook" code:2 userInfo:v4];
    (*(v9 + 16))(v9, 1, v11);
  }
}

- (void)webViewController:(id)controller didFinishPurchaseWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ICQUIManageSubHook webViewController:resultCopy didFinishPurchaseWithResult:errorCopy error:v8];
  }

  if (errorCopy)
  {
    v9 = _ICQGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ICQUIManageSubHook webViewController:errorCopy didFinishPurchaseWithResult:v9 error:?];
    }
  }

  else
  {
    v10 = [ICQPurchase clearCacheAndNotifyClientsWithCompletion:&__block_literal_global_19];
  }
}

void __74__ICQUIManageSubHook_webViewController_didFinishPurchaseWithResult_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __74__ICQUIManageSubHook_webViewController_didFinishPurchaseWithResult_error___block_invoke_cold_1(v3, v4);
  }
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __69__ICQUIManageSubHook__openAMSUIWithBag_version_key_query_completion___block_invoke_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_275623000, log, OS_LOG_TYPE_ERROR, "Unable to create composite URL from urls and query params. URL: %@ Query: %@", &v4, 0x16u);
}

void __69__ICQUIManageSubHook__openAMSUIWithBag_version_key_query_completion___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_275623000, a2, OS_LOG_TYPE_ERROR, "Manage Subs Hook - Unable to retreive URL from provided bag key %@. Bailing.", &v3, 0xCu);
}

- (void)webViewController:(uint64_t)a1 didFinishPurchaseWithResult:(void *)a2 error:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 localizedDescription];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&dword_275623000, a3, OS_LOG_TYPE_DEBUG, "Manage Subscriptions didFinishPurchaseWithResult: %@ Error: %@", &v6, 0x16u);
}

- (void)webViewController:(void *)a1 didFinishPurchaseWithResult:(NSObject *)a2 error:.cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_275623000, a2, OS_LOG_TYPE_ERROR, "Failed to complete purchase. Error: %@", &v4, 0xCu);
}

void __74__ICQUIManageSubHook_webViewController_didFinishPurchaseWithResult_error___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_275623000, a2, OS_LOG_TYPE_DEBUG, "Notified clients about purchase completion via Manage Subscriptions. Error: %@", &v4, 0xCu);
}

@end