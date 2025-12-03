@interface WPResources
+ (id)sharedInstance;
- (id).cxx_construct;
- (id)loadTrackerBlockerRuleListForStore:completionHandler:;
- (id)prepareResourceMonitorRulesForStore:completionHandler:;
- (uint64_t)_requestSource:options:completionHandler:;
- (uint64_t)requestAllowedLinkFilteringData:completionHandler:;
- (uint64_t)requestFingerprintingScripts:completionHandler:;
- (uint64_t)requestLinkFilteringData:completionHandler:;
- (uint64_t)requestResourceMonitorRulesData:completionHandler:;
- (uint64_t)requestRestrictedOpenerDomains:completionHandler:;
- (uint64_t)requestStorageAccessPromptQuirksData:completionHandler:;
- (uint64_t)requestStorageAccessUserAgentStringQuirksData:completionHandler:;
- (uint64_t)requestTrackerBlockerContentExtension:completionHandler:;
- (uint64_t)requestTrackerDomainNames:completionHandler:;
- (uint64_t)requestTrackerDomainNamesData:completionHandler:;
- (uint64_t)requestTrackerNetworkAddresses:completionHandler:;
- (uint64_t)requestTrackerQueryParameters:completionHandler:;
- (void)_doWithCachedLinkFilteringData:(id)data;
- (void)_installMessageHandlerForTesting:(id)testing;
- (void)_makeXPCTimeoutInstantForTesting;
- (void)_requestSource:(unsigned __int8)source options:(id)options completionHandler:(id)handler;
- (void)_requestSource:options:completionHandler:;
- (void)_resetStateForTesting;
- (void)_waitForCachedLinkFilteringData;
- (void)loadTrackerBlockerRuleListForStore:(id)store completionHandler:(id)handler;
- (void)loadTrackerBlockerRuleListForStore:completionHandler:;
- (void)prepareResourceMonitorRulesForStore:(id)store completionHandler:(id)handler;
- (void)prepareResourceMonitorRulesForStore:completionHandler:;
- (void)requestAllowedLinkFilteringData:(id)data completionHandler:(id)handler;
- (void)requestAllowedLinkFilteringData:completionHandler:;
- (void)requestFingerprintingScripts:(id)scripts completionHandler:(id)handler;
- (void)requestFingerprintingScripts:completionHandler:;
- (void)requestLinkFilteringData:(id)data completionHandler:(id)handler;
- (void)requestLinkFilteringData:completionHandler:;
- (void)requestResourceMonitorRulesData:(id)data completionHandler:(id)handler;
- (void)requestResourceMonitorRulesData:completionHandler:;
- (void)requestRestrictedOpenerDomains:(id)domains completionHandler:(id)handler;
- (void)requestRestrictedOpenerDomains:completionHandler:;
- (void)requestStorageAccessPromptQuirksData:(id)data completionHandler:(id)handler;
- (void)requestStorageAccessPromptQuirksData:completionHandler:;
- (void)requestStorageAccessUserAgentStringQuirksData:(id)data completionHandler:(id)handler;
- (void)requestStorageAccessUserAgentStringQuirksData:completionHandler:;
- (void)requestTrackerBlockerContentExtension:(id)extension completionHandler:(id)handler;
- (void)requestTrackerBlockerContentExtension:completionHandler:;
- (void)requestTrackerDomainNames:(id)names completionHandler:(id)handler;
- (void)requestTrackerDomainNames:completionHandler:;
- (void)requestTrackerDomainNamesData:(id)data completionHandler:(id)handler;
- (void)requestTrackerDomainNamesData:completionHandler:;
- (void)requestTrackerNetworkAddresses:(id)addresses completionHandler:(id)handler;
- (void)requestTrackerNetworkAddresses:completionHandler:;
- (void)requestTrackerQueryParameters:(id)parameters completionHandler:(id)handler;
- (void)requestTrackerQueryParameters:completionHandler:;
@end

@implementation WPResources

+ (id)sharedInstance
{
  if (+[WPResources sharedInstance]::onceToken != -1)
  {
    +[WPResources sharedInstance];
  }

  v3 = +[WPResources sharedInstance]::sharedInstance;

  return v3;
}

uint64_t __29__WPResources_sharedInstance__block_invoke()
{
  +[WPResources sharedInstance]::sharedInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id).cxx_construct
{
  *(self + 2) = 850045863;
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 9) = 0;
  return self;
}

- (void)_requestSource:(unsigned __int8)source options:(id)options completionHandler:(id)handler
{
  v12[4] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  v9 = WebPrivacy::Client::shared(handlerCopy);
  afterUpdates = [optionsCopy afterUpdates];
  v12[0] = &unk_2882BD8D0;
  v12[1] = MEMORY[0x2743DC460](handlerCopy);
  v12[3] = v12;
  WebPrivacy::Client::getList(v9, source, &afterUpdates, v12);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v12);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)requestTrackerBlockerContentExtension:(id)extension completionHandler:(id)handler
{
  v10[4] = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  handlerCopy = handler;
  v7 = WebPrivacy::Client::shared(handlerCopy);
  afterUpdates = [extensionCopy afterUpdates];
  v10[0] = &unk_2882BD918;
  v10[1] = MEMORY[0x2743DC460](handlerCopy);
  v10[3] = v10;
  WebPrivacy::Client::getList(v7, 1, &afterUpdates, v10);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v10);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)requestResourceMonitorRulesData:(id)data completionHandler:(id)handler
{
  v10[4] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  handlerCopy = handler;
  v7 = WebPrivacy::Client::shared(handlerCopy);
  afterUpdates = [dataCopy afterUpdates];
  v10[0] = &unk_2882BD960;
  v10[1] = MEMORY[0x2743DC460](handlerCopy);
  v10[3] = v10;
  WebPrivacy::Client::getList(v7, 10, &afterUpdates, v10);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v10);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)requestTrackerQueryParameters:(id)parameters completionHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  handlerCopy = handler;
  inited = objc_initWeak(&location, self);
  v9 = WebPrivacy::Client::shared(inited);
  afterUpdates = [parametersCopy afterUpdates];
  objc_copyWeak(&to, &location);
  v13 = MEMORY[0x2743DC460](handlerCopy);
  v18 = 0;
  v16 = &unk_2882BD9A8;
  objc_moveWeak(v17, &to);
  v10 = v13;
  v13 = 0;
  v17[1] = v10;
  v18 = &v16;
  objc_destroyWeak(&to);
  WebPrivacy::Client::getList(v9, 2, &afterUpdates, &v16);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](&v16);
  objc_destroyWeak(&location);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)requestLinkFilteringData:(id)data completionHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  handlerCopy = handler;
  inited = objc_initWeak(&location, self);
  v9 = WebPrivacy::Client::shared(inited);
  afterUpdates = [dataCopy afterUpdates];
  objc_copyWeak(&to, &location);
  v13 = MEMORY[0x2743DC460](handlerCopy);
  v18 = 0;
  v16 = &unk_2882BD9F0;
  objc_moveWeak(v17, &to);
  v10 = v13;
  v13 = 0;
  v17[1] = v10;
  v18 = &v16;
  objc_destroyWeak(&to);
  WebPrivacy::Client::getList(v9, 2, &afterUpdates, &v16);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](&v16);
  objc_destroyWeak(&location);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)requestAllowedLinkFilteringData:(id)data completionHandler:(id)handler
{
  v10[4] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  handlerCopy = handler;
  v7 = WebPrivacy::Client::shared(handlerCopy);
  afterUpdates = [dataCopy afterUpdates];
  v10[0] = &unk_2882BDA38;
  v10[1] = MEMORY[0x2743DC460](handlerCopy);
  v10[3] = v10;
  WebPrivacy::Client::getList(v7, 5, &afterUpdates, v10);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v10);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)requestTrackerDomainNames:(id)names completionHandler:(id)handler
{
  v10[4] = *MEMORY[0x277D85DE8];
  namesCopy = names;
  handlerCopy = handler;
  v7 = WebPrivacy::Client::shared(handlerCopy);
  afterUpdates = [namesCopy afterUpdates];
  v10[0] = &unk_2882BDA80;
  v10[1] = MEMORY[0x2743DC460](handlerCopy);
  v10[3] = v10;
  WebPrivacy::Client::getList(v7, 3, &afterUpdates, v10);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v10);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)requestTrackerDomainNamesData:(id)data completionHandler:(id)handler
{
  v10[4] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  handlerCopy = handler;
  v7 = WebPrivacy::Client::shared(handlerCopy);
  afterUpdates = [dataCopy afterUpdates];
  v10[0] = &unk_2882BDAC8;
  v10[1] = MEMORY[0x2743DC460](handlerCopy);
  v10[3] = v10;
  WebPrivacy::Client::getList(v7, 3, &afterUpdates, v10);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v10);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)requestTrackerNetworkAddresses:(id)addresses completionHandler:(id)handler
{
  v10[4] = *MEMORY[0x277D85DE8];
  addressesCopy = addresses;
  handlerCopy = handler;
  v7 = WebPrivacy::Client::shared(handlerCopy);
  afterUpdates = [addressesCopy afterUpdates];
  v10[0] = &unk_2882BDB10;
  v10[1] = MEMORY[0x2743DC460](handlerCopy);
  v10[3] = v10;
  WebPrivacy::Client::getList(v7, 4, &afterUpdates, v10);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v10);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)requestStorageAccessUserAgentStringQuirksData:(id)data completionHandler:(id)handler
{
  v10[4] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  handlerCopy = handler;
  v7 = WebPrivacy::Client::shared(handlerCopy);
  afterUpdates = [dataCopy afterUpdates];
  v10[0] = &unk_2882BDB58;
  v10[1] = MEMORY[0x2743DC460](handlerCopy);
  v10[3] = v10;
  WebPrivacy::Client::getList(v7, 6, &afterUpdates, v10);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v10);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)requestStorageAccessPromptQuirksData:(id)data completionHandler:(id)handler
{
  v10[4] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  handlerCopy = handler;
  v7 = WebPrivacy::Client::shared(handlerCopy);
  afterUpdates = [dataCopy afterUpdates];
  v10[0] = &unk_2882BDBA0;
  v10[1] = MEMORY[0x2743DC460](handlerCopy);
  v10[3] = v10;
  WebPrivacy::Client::getList(v7, 7, &afterUpdates, v10);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v10);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)requestRestrictedOpenerDomains:(id)domains completionHandler:(id)handler
{
  v10[4] = *MEMORY[0x277D85DE8];
  domainsCopy = domains;
  handlerCopy = handler;
  v7 = WebPrivacy::Client::shared(handlerCopy);
  afterUpdates = [domainsCopy afterUpdates];
  v10[0] = &unk_2882BDBE8;
  v10[1] = MEMORY[0x2743DC460](handlerCopy);
  v10[3] = v10;
  WebPrivacy::Client::getList(v7, 8, &afterUpdates, v10);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v10);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)requestFingerprintingScripts:(id)scripts completionHandler:(id)handler
{
  v10[4] = *MEMORY[0x277D85DE8];
  scriptsCopy = scripts;
  handlerCopy = handler;
  v7 = WebPrivacy::Client::shared(handlerCopy);
  afterUpdates = [scriptsCopy afterUpdates];
  v10[0] = &unk_2882BDC30;
  v10[1] = MEMORY[0x2743DC460](handlerCopy);
  v10[3] = v10;
  WebPrivacy::Client::getList(v7, 9, &afterUpdates, v10);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v10);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)loadTrackerBlockerRuleListForStore:(id)store completionHandler:(id)handler
{
  v12[4] = *MEMORY[0x277D85DE8];
  storeCopy = store;
  handlerCopy = handler;
  v7 = WebPrivacy::Client::shared(handlerCopy);
  v11 = 1;
  v8 = MEMORY[0x2743DC460](handlerCopy);
  v9 = storeCopy;
  v12[0] = &unk_2882BDC78;
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = v12;
  WebPrivacy::Client::getList(v7, 1, &v11, v12);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v12);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)prepareResourceMonitorRulesForStore:(id)store completionHandler:(id)handler
{
  v12[4] = *MEMORY[0x277D85DE8];
  storeCopy = store;
  handlerCopy = handler;
  v7 = WebPrivacy::Client::shared(handlerCopy);
  v11 = 1;
  v8 = MEMORY[0x2743DC460](handlerCopy);
  v9 = storeCopy;
  v12[0] = &unk_2882BDCE0;
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = v12;
  WebPrivacy::Client::getList(v7, 10, &v11, v12);
  std::__function::__value_func<void ()(WebPrivacy::MessageError,Platform::ArrayView<unsigned char> &&)>::~__value_func[abi:nn200100](v12);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_doWithCachedLinkFilteringData:(id)data
{
  dataCopy = data;
  std::mutex::lock((self + 16));
  dataCopy[2](dataCopy, *(self + 1));
  std::mutex::unlock((self + 16));
}

- (void)_waitForCachedLinkFilteringData
{
  std::mutex::lock((self + 16));
  if (![*(self + 1) count])
  {
    v3 = WebPrivacy::Client::shared(0);
    WebPrivacy::Client::getList(v3, 2u, &v12);
    if (v12)
    {
      Platform::SharedMemory::view(v12);
      if (v4)
      {
        v9[0] = Platform::SharedMemory::view(v12);
        v9[1] = v5;
        WebPrivacy::createLinkFilteringData(v9, &v10);
        v6 = v11;
        if (!v11)
        {
          scopedQueryParameters = [v10 scopedQueryParameters];
          v8 = *(self + 1);
          *(self + 1) = scopedQueryParameters;

          v6 = v11;
        }
      }
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }
  }

  std::mutex::unlock((self + 16));
}

- (void)_installMessageHandlerForTesting:(id)testing
{
  testingCopy = testing;
  v3 = WebPrivacy::Client::shared(testingCopy);
  v4 = MEMORY[0x2743DC460](testingCopy);
  v5 = *(v3 + 416);
  *(v3 + 416) = v4;
}

- (void)_resetStateForTesting
{
  v3 = WebPrivacy::Client::shared(self);
  WebPrivacy::Client::resetStateForTesting(v3);
  std::mutex::lock((self + 16));
  v4 = *(self + 1);
  *(self + 1) = 0;

  std::mutex::unlock((self + 16));
}

- (void)_makeXPCTimeoutInstantForTesting
{
  v2 = WebPrivacy::Client::shared(self);
  *(v2 + 448) = 0;
  *(v2 + 456) = 1;
}

- (void)_requestSource:options:completionHandler:
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  WebPrivacy::createSourceString(a3, &v16);
  v5 = v16;
  v6 = v17;
  v7 = *(self + 8);
  v8 = v5;
  v9 = v6;
  if (v8)
  {
    v7[2](v7, v8, 0);
  }

  else if (v4)
  {
    v10 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA470];
    if (v4 > 3)
    {
      v11 = "Invalid";
    }

    else
    {
      v11 = off_279EAF488[v4 - 1];
    }

    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];
    v19[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v14 = [v10 errorWithDomain:@"WebPrivacyErrorDomain" code:v4 userInfo:v13];
    (v7)[2](v7, 0, v14);
  }

  else
  {
    (v7)[2](v7, 0, v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_requestSource:options:completionHandler:
{
  *a2 = &unk_2882BD8D0;
  result = MEMORY[0x2743DC460](*(self + 8));
  a2[1] = result;
  return result;
}

- (void)requestTrackerBlockerContentExtension:completionHandler:
{
  v4 = *a2;
  WebPrivacy::createContentExtensionSource(a3, &v5);
  callCompletionHandler<void({block_pointer} {__strong})(NSData *,NSError *)>(*(self + 8), v5, v6, v4);
}

- (uint64_t)requestTrackerBlockerContentExtension:completionHandler:
{
  *a2 = &unk_2882BD918;
  result = MEMORY[0x2743DC460](*(self + 8));
  a2[1] = result;
  return result;
}

- (void)requestResourceMonitorRulesData:completionHandler:
{
  v4 = *a2;
  WebPrivacy::createContentExtensionSource(a3, &v5);
  callCompletionHandler<void({block_pointer} {__strong})(NSData *,NSError *)>(*(self + 8), v5, v6, v4);
}

- (uint64_t)requestResourceMonitorRulesData:completionHandler:
{
  *a2 = &unk_2882BD960;
  result = MEMORY[0x2743DC460](*(self + 8));
  a2[1] = result;
  return result;
}

- (void)requestTrackerQueryParameters:completionHandler:
{
  v37[1] = *MEMORY[0x277D85DE8];
  v28 = *a2;
  WebPrivacy::createLinkFilteringData(a3, &v33);
  WeakRetained = objc_loadWeakRetained((self + 8));
  if (WeakRetained)
  {
    v5 = v33 == 0;

    if (!v5)
    {
      v6 = objc_loadWeakRetained((self + 8));
      std::mutex::lock((v6 + 16));
      scopedQueryParameters = [v33 scopedQueryParameters];
      v8 = *(v6 + 1);
      *(v6 + 1) = scopedQueryParameters;

      std::mutex::unlock((v6 + 16));
    }
  }

  v9 = objc_opt_new();
  [v33 scopedQueryParameters];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v10 = v30 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v11)
  {
    v12 = *v30;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        v15 = [v10 objectForKeyedSubscript:v14];
        domains = [v15 domains];
        v17 = [domains count] == 0;

        if (v17)
        {
          [v9 addObject:v14];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v11);
  }

  v18 = v34;
  v19 = *(self + 16);
  v20 = v9;
  v21 = v18;
  if (v20)
  {
    v19[2](v19, v20, 0);
  }

  else if (v28)
  {
    v22 = MEMORY[0x277CCA9B8];
    v36 = *MEMORY[0x277CCA470];
    if (v28 > 3)
    {
      v23 = "Invalid";
    }

    else
    {
      v23 = off_279EAF488[v28 - 1];
    }

    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:v23];
    v37[0] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v26 = [v22 errorWithDomain:@"WebPrivacyErrorDomain" code:v28 userInfo:v25];
    (v19)[2](v19, 0, v26);
  }

  else
  {
    (v19)[2](v19, 0, v21);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (uint64_t)requestTrackerQueryParameters:completionHandler:
{
  *a2 = &unk_2882BD9A8;
  objc_copyWeak((a2 + 8), (self + 8));
  result = MEMORY[0x2743DC460](*(self + 16));
  *(a2 + 16) = result;
  return result;
}

- (void)requestLinkFilteringData:completionHandler:
{
  v4 = *a2;
  WebPrivacy::createLinkFilteringData(a3, &v10);
  WeakRetained = objc_loadWeakRetained((self + 8));
  if (WeakRetained)
  {
    v6 = v10;

    if (v6)
    {
      v7 = objc_loadWeakRetained((self + 8));
      std::mutex::lock((v7 + 16));
      scopedQueryParameters = [v10 scopedQueryParameters];
      v9 = *(v7 + 1);
      *(v7 + 1) = scopedQueryParameters;

      std::mutex::unlock((v7 + 16));
    }
  }

  callCompletionHandler<void({block_pointer} {__strong})(WPLinkFilteringData *,NSError *)>(*(self + 16), v10, v11, v4);
}

- (uint64_t)requestLinkFilteringData:completionHandler:
{
  *a2 = &unk_2882BD9F0;
  objc_copyWeak((a2 + 8), (self + 8));
  result = MEMORY[0x2743DC460](*(self + 16));
  *(a2 + 16) = result;
  return result;
}

- (void)requestAllowedLinkFilteringData:completionHandler:
{
  v4 = *a2;
  WebPrivacy::createLinkFilteringData(a3, &v5);
  callCompletionHandler<void({block_pointer} {__strong})(WPLinkFilteringData *,NSError *)>(*(self + 8), v5, v6, v4);
}

- (uint64_t)requestAllowedLinkFilteringData:completionHandler:
{
  *a2 = &unk_2882BDA38;
  result = MEMORY[0x2743DC460](*(self + 8));
  a2[1] = result;
  return result;
}

- (void)requestTrackerDomainNames:completionHandler:
{
  v4 = *a2;
  WebPrivacy::createTrackerDomainNamesJSONData(a3, &v5);
  callCompletionHandler<void({block_pointer} {__strong})(NSData *,NSError *)>(*(self + 8), v5, v6, v4);
}

- (uint64_t)requestTrackerDomainNames:completionHandler:
{
  *a2 = &unk_2882BDA80;
  result = MEMORY[0x2743DC460](*(self + 8));
  a2[1] = result;
  return result;
}

- (void)requestTrackerDomainNamesData:completionHandler:
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  WebPrivacy::createTrackerDomainNamesData(a3, &v16);
  v5 = v16;
  v6 = v17;
  v7 = *(self + 8);
  v8 = v5;
  v9 = v6;
  if (v8)
  {
    v7[2](v7, v8, 0);
  }

  else if (v4)
  {
    v10 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA470];
    if (v4 > 3)
    {
      v11 = "Invalid";
    }

    else
    {
      v11 = off_279EAF488[v4 - 1];
    }

    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];
    v19[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v14 = [v10 errorWithDomain:@"WebPrivacyErrorDomain" code:v4 userInfo:v13];
    (v7)[2](v7, 0, v14);
  }

  else
  {
    (v7)[2](v7, 0, v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (uint64_t)requestTrackerDomainNamesData:completionHandler:
{
  *a2 = &unk_2882BDAC8;
  result = MEMORY[0x2743DC460](*(self + 8));
  a2[1] = result;
  return result;
}

- (void)requestTrackerNetworkAddresses:completionHandler:
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  WebPrivacy::createTrackerNetworkAddressesList(a3, &v16);
  v5 = v16;
  v6 = v17;
  v7 = *(self + 8);
  v8 = v5;
  v9 = v6;
  if (v8)
  {
    v7[2](v7, v8, 0);
  }

  else if (v4)
  {
    v10 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA470];
    if (v4 > 3)
    {
      v11 = "Invalid";
    }

    else
    {
      v11 = off_279EAF488[v4 - 1];
    }

    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];
    v19[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v14 = [v10 errorWithDomain:@"WebPrivacyErrorDomain" code:v4 userInfo:v13];
    (v7)[2](v7, 0, v14);
  }

  else
  {
    (v7)[2](v7, 0, v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (uint64_t)requestTrackerNetworkAddresses:completionHandler:
{
  *a2 = &unk_2882BDB10;
  result = MEMORY[0x2743DC460](*(self + 8));
  a2[1] = result;
  return result;
}

- (void)requestStorageAccessUserAgentStringQuirksData:completionHandler:
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  WebPrivacy::createStorageAccessUserAgentStringQuirksData(a3, &v16);
  v5 = v16;
  v6 = v17;
  v7 = *(self + 8);
  v8 = v5;
  v9 = v6;
  if (v8)
  {
    v7[2](v7, v8, 0);
  }

  else if (v4)
  {
    v10 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA470];
    if (v4 > 3)
    {
      v11 = "Invalid";
    }

    else
    {
      v11 = off_279EAF488[v4 - 1];
    }

    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];
    v19[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v14 = [v10 errorWithDomain:@"WebPrivacyErrorDomain" code:v4 userInfo:v13];
    (v7)[2](v7, 0, v14);
  }

  else
  {
    (v7)[2](v7, 0, v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (uint64_t)requestStorageAccessUserAgentStringQuirksData:completionHandler:
{
  *a2 = &unk_2882BDB58;
  result = MEMORY[0x2743DC460](*(self + 8));
  a2[1] = result;
  return result;
}

- (void)requestStorageAccessPromptQuirksData:completionHandler:
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  WebPrivacy::createStorageAccessPromptQuirksData(a3, &v16);
  v5 = v16;
  v6 = v17;
  v7 = *(self + 8);
  v8 = v5;
  v9 = v6;
  if (v8)
  {
    v7[2](v7, v8, 0);
  }

  else if (v4)
  {
    v10 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA470];
    if (v4 > 3)
    {
      v11 = "Invalid";
    }

    else
    {
      v11 = off_279EAF488[v4 - 1];
    }

    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];
    v19[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v14 = [v10 errorWithDomain:@"WebPrivacyErrorDomain" code:v4 userInfo:v13];
    (v7)[2](v7, 0, v14);
  }

  else
  {
    (v7)[2](v7, 0, v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (uint64_t)requestStorageAccessPromptQuirksData:completionHandler:
{
  *a2 = &unk_2882BDBA0;
  result = MEMORY[0x2743DC460](*(self + 8));
  a2[1] = result;
  return result;
}

- (void)requestRestrictedOpenerDomains:completionHandler:
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  WebPrivacy::createRestrictedOpenerDomains(a3, &v16);
  v5 = v16;
  v6 = v17;
  v7 = *(self + 8);
  v8 = v5;
  v9 = v6;
  if (v8)
  {
    v7[2](v7, v8, 0);
  }

  else if (v4)
  {
    v10 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA470];
    if (v4 > 3)
    {
      v11 = "Invalid";
    }

    else
    {
      v11 = off_279EAF488[v4 - 1];
    }

    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];
    v19[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v14 = [v10 errorWithDomain:@"WebPrivacyErrorDomain" code:v4 userInfo:v13];
    (v7)[2](v7, 0, v14);
  }

  else
  {
    (v7)[2](v7, 0, v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (uint64_t)requestRestrictedOpenerDomains:completionHandler:
{
  *a2 = &unk_2882BDBE8;
  result = MEMORY[0x2743DC460](*(self + 8));
  a2[1] = result;
  return result;
}

- (void)requestFingerprintingScripts:completionHandler:
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  WebPrivacy::createFingerprintingScripts(a3, &v16);
  v5 = v16;
  v6 = v17;
  v7 = *(self + 8);
  v8 = v5;
  v9 = v6;
  if (v8)
  {
    v7[2](v7, v8, 0);
  }

  else if (v4)
  {
    v10 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA470];
    if (v4 > 3)
    {
      v11 = "Invalid";
    }

    else
    {
      v11 = off_279EAF488[v4 - 1];
    }

    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];
    v19[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v14 = [v10 errorWithDomain:@"WebPrivacyErrorDomain" code:v4 userInfo:v13];
    (v7)[2](v7, 0, v14);
  }

  else
  {
    (v7)[2](v7, 0, v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (uint64_t)requestFingerprintingScripts:completionHandler:
{
  *a2 = &unk_2882BDC30;
  result = MEMORY[0x2743DC460](*(self + 8));
  a2[1] = result;
  return result;
}

- (void)loadTrackerBlockerRuleListForStore:completionHandler:
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_273D20000, v0, v1, "Failed to request tracker block list rules: invalid database state", v2, v3, v4, v5, v6);
}

- (id)loadTrackerBlockerRuleListForStore:completionHandler:
{
  *a2 = &unk_2882BDC78;
  a2[1] = MEMORY[0x2743DC460](*(self + 8));
  result = *(self + 16);
  a2[2] = result;
  return result;
}

- (void)prepareResourceMonitorRulesForStore:completionHandler:
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_273D20000, v0, v1, "Failed to request resource monitor url rules: invalid database state", v2, v3, v4, v5, v6);
}

- (id)prepareResourceMonitorRulesForStore:completionHandler:
{
  *a2 = &unk_2882BDCE0;
  a2[1] = MEMORY[0x2743DC460](*(self + 8));
  result = *(self + 16);
  a2[2] = result;
  return result;
}

@end