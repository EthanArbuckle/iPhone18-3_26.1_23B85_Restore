@interface WFUserInfoManager
- (WFUserInfoManager)init;
- (void)dealloc;
- (void)readUserIdentifierAndNotify;
@end

@implementation WFUserInfoManager

- (WFUserInfoManager)init
{
  v15.receiver = self;
  v15.super_class = WFUserInfoManager;
  v2 = [(WFUserInfoManager *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.WeatherFoundation.ubiquitousKVSCommunicationsQueue", v3);
    ubiquitousKVSCommunicationsQueue = v2->_ubiquitousKVSCommunicationsQueue;
    v2->_ubiquitousKVSCommunicationsQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.WeatherFoundation.callbackQueue", v6);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v7;

    v9 = [objc_alloc(MEMORY[0x277CCAD80]) _initWithStoreIdentifier:@"com.apple.weather" usingEndToEndEncryption:1];
    encryptedStore = v2->_encryptedStore;
    v2->_encryptedStore = v9;

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    v12 = *MEMORY[0x277CCA7C0];
    v13 = [(WFUserInfoManager *)v2 encryptedStore];
    [v11 addObserver:v2 selector:sel_encryptedStoreChanged_ name:v12 object:v13];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = WFUserInfoManager;
  [(WFUserInfoManager *)&v4 dealloc];
}

- (void)readUserIdentifierAndNotify
{
  v3 = [(WFUserInfoManager *)self ubiquitousKVSCommunicationsQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__WFUserInfoManager_readUserIdentifierAndNotify__block_invoke;
  block[3] = &unk_279E6D9A8;
  block[4] = self;
  dispatch_async(v3, block);
}

void __48__WFUserInfoManager_readUserIdentifierAndNotify__block_invoke(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v2 = getMKBDeviceUnlockedSinceBootSymbolLoc_ptr;
  v14 = getMKBDeviceUnlockedSinceBootSymbolLoc_ptr;
  if (!getMKBDeviceUnlockedSinceBootSymbolLoc_ptr)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke;
    v10[3] = &unk_279E6EA68;
    v10[4] = &v11;
    __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke(v10);
    v2 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v2)
  {
    v7 = __48__WFUserInfoManager_readUserIdentifierAndNotify__block_invoke_cold_1();
    _Block_object_dispose(&v11, 8);
    _Unwind_Resume(v7);
  }

  if (v2() == 1)
  {
    v3 = [*(a1 + 32) encryptedStore];
    v4 = [v3 stringForKey:@"userIdentifier"];
  }

  else
  {
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.weather.foundation.userInfoManager.errorDomain" code:1 userInfo:0];
    v4 = 0;
  }

  v5 = [*(a1 + 32) callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__WFUserInfoManager_readUserIdentifierAndNotify__block_invoke_2;
  block[3] = &unk_279E6EA40;
  block[4] = *(a1 + 32);
  v9 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

void __48__WFUserInfoManager_readUserIdentifierAndNotify__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 userInfoManager:*(a1 + 32) didSynchronizeUserIdentifier:*(a1 + 40)];
}

uint64_t __48__WFUserInfoManager_readUserIdentifierAndNotify__block_invoke_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return [WFWeatherAlmanacParserV3 parseForecastData:v0 types:? location:? locale:? date:? error:? rules:?];
}

@end