@interface ICQUIExtensionKitHelpers
+ (BOOL)isExtensionKitProcess;
+ (BOOL)isExtensionKitURL:(id)l;
@end

@implementation ICQUIExtensionKitHelpers

+ (BOOL)isExtensionKitURL:(id)l
{
  v26 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (lCopy)
  {
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:lCopy resolvingAgainstBaseURL:1];
    queryItems = [v18 queryItems];
    v5 = [queryItems countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(queryItems);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          name = [v9 name];
          if ([name isEqualToString:@"useExtensionKit"])
          {
            value = [v9 value];
            v12 = [value isEqualToString:@"false"];

            if (v12)
            {
              v15 = _ICQGetLogSystem();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v24 = lCopy;
                _os_log_impl(&dword_275623000, v15, OS_LOG_TYPE_DEFAULT, "Upsell URL ExtensionKit query param is set to false in URL: %@", buf, 0xCu);
              }

              v13 = 0;
              goto LABEL_22;
            }
          }

          else
          {
          }
        }

        v6 = [queryItems countByEnumeratingWithState:&v19 objects:v25 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    queryItems = _ICQGetLogSystem();
    if (os_log_type_enabled(queryItems, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = lCopy;
      _os_log_impl(&dword_275623000, queryItems, OS_LOG_TYPE_DEFAULT, "Upsell URL does not contain ExtensionKit query param, defaulting to new ExtensionKit flow. URL: %@", buf, 0xCu);
    }

    v13 = 1;
LABEL_22:
    v14 = v18;
  }

  else
  {
    v14 = _ICQGetLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ICQUIExtensionKitHelpers isExtensionKitURL:v14];
    }

    v13 = 0;
  }

  return v13;
}

+ (BOOL)isExtensionKitProcess
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:@"com.apple.iCloudQuotaUI.RemoteiCloudQuotaUI"];

  return v4;
}

+ (void)isExtensionKitURL:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "+[ICQUIExtensionKitHelpers isExtensionKitURL:]";
  _os_log_error_impl(&dword_275623000, log, OS_LOG_TYPE_ERROR, "nil URL was passed to %s", &v1, 0xCu);
}

@end