@interface NSBundle(SensorKitUI)
+ (uint64_t)skui_bundle;
+ (void)skui_bundleForAuthorizationService:()SensorKitUI;
- (uint64_t)srui_localizedAuthorizationConfirmationDetail;
- (uint64_t)srui_localizedPrivacyPolicyLinkTitle;
- (uint64_t)srui_localizedResearchPurpose;
- (uint64_t)srui_localizedStudyDataAlertTitleWithAuthGroupName:()SensorKitUI;
@end

@implementation NSBundle(SensorKitUI)

+ (uint64_t)skui_bundle
{
  v0 = MEMORY[0x277CCA8D8];
  v1 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/PrivateFrameworks/SensorKitUI.framework" isDirectory:1];

  return [v0 bundleWithURL:v1];
}

+ (void)skui_bundleForAuthorizationService:()SensorKitUI
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v26[0] = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/Library/SensorKit/AuthGroups" isDirectory:1 relativeToURL:0];
  v26[1] = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/PrivateFrameworks/SensorKitUI.framework/AuthGroups" isDirectory:1 relativeToURL:0];
  obj = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v14 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v14)
  {
    v16 = *v22;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v5 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v6 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v18;
LABEL_8:
          v9 = 0;
          while (1)
          {
            if (*v18 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = [MEMORY[0x277CCA8D8] bundleWithURL:*(*(&v17 + 1) + 8 * v9)];
            if (v10)
            {
              v11 = v10;
              if ([objc_msgSend(v10 objectForInfoDictionaryKey:{@"SRAuthService", "isEqualToString:", a3}] & 1) != 0 || (objc_msgSend(objc_msgSend(v11, "objectForInfoDictionaryKey:", @"SRWriterAuthService"), "isEqualToString:", a3))
              {
                goto LABEL_20;
              }
            }

            if (v7 == ++v9)
            {
              v7 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
              if (v7)
              {
                goto LABEL_8;
              }

              break;
            }
          }
        }
      }

      v11 = 0;
      v14 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_20:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (uint64_t)srui_localizedPrivacyPolicyLinkTitle
{
  v1 = [a1 sr_bundleType];
  if (v1 == 1)
  {
    v2 = 35;
  }

  else
  {
    if (v1 != 2)
    {
      return 0;
    }

    v2 = 34;
  }

  v3 = MEMORY[0x277CCACA8];

  return [v3 srui_localizedStringForCode:v2];
}

- (uint64_t)srui_localizedResearchPurpose
{
  v1 = [a1 sr_bundleType];
  if (v1 == 1)
  {
    v2 = 76;
  }

  else
  {
    if (v1 != 2)
    {
      return 0;
    }

    v2 = 77;
  }

  v3 = MEMORY[0x277CCACA8];

  return [v3 srui_localizedStringForCode:v2];
}

- (uint64_t)srui_localizedStudyDataAlertTitleWithAuthGroupName:()SensorKitUI
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [a1 sr_bundleType];
  if (v5 == 2)
  {
    v12 = 0;
    v9 = [MEMORY[0x277CCACA8] srui_localizedStringForCode:38];
    v7 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@%@" error:&v12, objc_msgSend(a1, "sk_appName"), a3];
    if (!v7)
    {
      if (_MergedGlobals_9 != -1)
      {
        dispatch_once(&_MergedGlobals_9, &__block_literal_global_4);
      }

      v8 = qword_28001A308;
      if (os_log_type_enabled(qword_28001A308, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v14 = v12;
        goto LABEL_13;
      }
    }
  }

  else
  {
    if (v5 != 1)
    {
      v7 = 0;
      goto LABEL_15;
    }

    v12 = 0;
    v6 = [MEMORY[0x277CCACA8] srui_localizedStringForCode:37];
    v7 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:&v12, a3];
    if (!v7)
    {
      if (_MergedGlobals_9 != -1)
      {
        dispatch_once(&_MergedGlobals_9, &__block_literal_global_4);
      }

      v8 = qword_28001A308;
      if (os_log_type_enabled(qword_28001A308, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v14 = v12;
LABEL_13:
        _os_log_fault_impl(&dword_265602000, v8, OS_LOG_TYPE_FAULT, "Failed to localize string because %{public}@", buf, 0xCu);
      }
    }
  }

LABEL_15:
  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (uint64_t)srui_localizedAuthorizationConfirmationDetail
{
  v1 = [a1 sr_bundleType];
  if (v1 == 1)
  {
    v2 = 53;
  }

  else
  {
    if (v1 != 2)
    {
      return 0;
    }

    v2 = 52;
  }

  v3 = MEMORY[0x277CCACA8];

  return [v3 srui_localizedStringForCode:v2];
}

@end