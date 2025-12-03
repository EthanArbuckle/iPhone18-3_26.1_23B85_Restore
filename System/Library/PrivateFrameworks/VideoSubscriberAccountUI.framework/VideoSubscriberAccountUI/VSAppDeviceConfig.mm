@interface VSAppDeviceConfig
- (CGSize)screenSize;
- (VSAppDeviceConfig)init;
- (id)storeFrontCountryCode;
- (id)timeZone;
@end

@implementation VSAppDeviceConfig

- (VSAppDeviceConfig)init
{
  v6.receiver = self;
  v6.super_class = VSAppDeviceConfig;
  v2 = [(VSAppDeviceConfig *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    privateQueue = v2->_privateQueue;
    v2->_privateQueue = v3;

    [(NSOperationQueue *)v2->_privateQueue setName:@"VSAppDeviceConfig"];
  }

  return v2;
}

- (CGSize)screenSize
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)storeFrontCountryCode
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  v2 = objc_alloc_init(MEMORY[0x277CE22E8]);
  [v2 start];
  [v2 waitUntilFinished];
  result = [v2 result];
  forceUnwrapObject = [result forceUnwrapObject];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__VSAppDeviceConfig_storeFrontCountryCode__block_invoke;
  v7[3] = &unk_279E19A40;
  v7[4] = &v8;
  [forceUnwrapObject unwrapObject:v7 error:&__block_literal_global_5];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __42__VSAppDeviceConfig_storeFrontCountryCode__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = VSErrorLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __42__VSAppDeviceConfig_storeFrontCountryCode__block_invoke_2_cold_1(v2, v3);
  }
}

- (id)timeZone
{
  autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  v3 = [autoupdatingCurrentLocale objectForKey:*MEMORY[0x277CBE678]];
  timeZone = [v3 timeZone];

  return timeZone;
}

void __42__VSAppDeviceConfig_storeFrontCountryCode__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_270DD4000, a2, OS_LOG_TYPE_ERROR, "Error fetching bag store country code: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end