@interface MOContextHistoryReader
- (id)_getFrameworkClientIdentity;
- (void)loadPersonalizedContextWithOptions:(id)a3 withReply:(id)a4;
@end

@implementation MOContextHistoryReader

- (id)_getFrameworkClientIdentity
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = SecTaskCreateFromSelf(0);
  if (v2)
  {
    v3 = v2;
    v4 = SecTaskCopyValueForEntitlement(v2, @"application-identifier", 0);
    if (v4)
    {
      v5 = v4;
      v6 = CFGetTypeID(v4);
      if (v6 == CFStringGetTypeID())
      {
        CFRelease(v3);
        goto LABEL_8;
      }
    }

    CFRelease(v3);
  }

  v5 = [MEMORY[0x277CCACA8] stringWithCString:*_CFGetProgname() encoding:4];
LABEL_8:
  v7 = objc_opt_new();
  v8 = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = [v8 bundleIdentifier];

  if (v9)
  {
    [v7 setObject:v9 forKeyedSubscript:@"bundle-Id"];
  }

  if (v5)
  {
    [v7 setObject:v5 forKeyedSubscript:@"alt-Id"];
    if ([&unk_2870323E8 containsObject:v5])
    {
      v10 = _mo_log_facility_get_os_log(MOLogFacilityContextCrossPlatform);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_25E48F000, v10, OS_LOG_TYPE_DEFAULT, "Client is photoanalysisd test alias.", &v15, 2u);
      }

      v9 = @"com.apple.photoanalysisd";
    }
  }

  v11 = _mo_log_facility_get_os_log(MOLogFacilityContextCrossPlatform);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v9;
    _os_log_impl(&dword_25E48F000, v11, OS_LOG_TYPE_DEFAULT, "client bundle-id: %@", &v15, 0xCu);
  }

  v12 = _mo_log_facility_get_os_log(MOLogFacilityContextCrossPlatform);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v5;
    _os_log_impl(&dword_25E48F000, v12, OS_LOG_TYPE_DEFAULT, "client alt-id: %@", &v15, 0xCu);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)loadPersonalizedContextWithOptions:(id)a3 withReply:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = _mo_log_facility_get_os_log(MOLogFacilityContextCrossPlatform);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_25E48F000, v5, OS_LOG_TYPE_INFO, "Context biome stream persistency unavailable", v10, 2u);
  }

  v6 = MEMORY[0x277CCA9B8];
  v11 = *MEMORY[0x277CCA450];
  v12[0] = @"Context biome stream persistency unavailable";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v6 errorWithDomain:@"MOContextErrorDomain" code:1025 userInfo:v7];
  v4[2](v4, 0, v8);

  v9 = *MEMORY[0x277D85DE8];
}

@end