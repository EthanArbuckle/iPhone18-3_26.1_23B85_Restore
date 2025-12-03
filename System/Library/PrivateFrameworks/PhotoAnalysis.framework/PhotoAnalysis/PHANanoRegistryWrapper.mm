@interface PHANanoRegistryWrapper
+ (BOOL)hasValidWatchPaired;
@end

@implementation PHANanoRegistryWrapper

+ (BOOL)hasValidWatchPaired
{
  v22 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getAllDevices = [mEMORY[0x277D2BCF8] getAllDevices];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = getAllDevices;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    v8 = *MEMORY[0x277D2BB28];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 valueForProperty:v8];
        if (v11)
        {
        }

        else
        {
          v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"F27862F8-5179-4DB0-9F89-179EA7CB4011"];
          v13 = [v10 supportsCapability:v12];

          if (v13)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *v16 = 0;
              _os_log_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[PHANanoRegistryWrapper] has valid watch paired", v16, 2u);
            }

            v14 = 1;
            goto LABEL_16;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[PHANanoRegistryWrapper] no valid watch paired", v16, 2u);
    v14 = 0;
  }

LABEL_16:

  return v14;
}

@end