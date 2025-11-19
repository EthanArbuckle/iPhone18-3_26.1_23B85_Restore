@interface ProxyConfiguration
+ (BOOL)isProxyError:(id)a3;
- (ProxyConfiguration)initWithDeviceIdentificationToken:(id)a3;
- (void)applyToRequest:(id)a3;
@end

@implementation ProxyConfiguration

+ (BOOL)isProxyError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:*MEMORY[0x277CBACE8]])
  {
    v5 = [v3 code] == 310;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (ProxyConfiguration)initWithDeviceIdentificationToken:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = ProxyConfiguration;
  v6 = [(ProxyConfiguration *)&v14 init];
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    if (Backend::Google::SSBUtilities::shouldConsultWithTencent(v6))
    {
      v8 = 0;
    }

    else
    {
      v9 = +[RemoteConfigurationController sharedController];
      v10 = [v9 googleProviderConfiguration];
      v11 = [v10 proxyOff];

      if (v11)
      {
        v8 = 0;
      }

      else
      {
        proxy = v7->_proxy;
        v7->_proxy = &unk_2838D2380;

        objc_storeStrong(&v7->_deviceIdentificationToken, a3);
        v8 = v7;
      }
    }
  }

  return v8;
}

- (void)applyToRequest:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ProxyConfiguration *)self proxy];

  if (v5)
  {
    v6 = [(ProxyConfiguration *)self proxy];
    CFURLRequestSetProxySettings();
  }

  v7 = [(ProxyConfiguration *)self deviceIdentificationToken];

  if (v7)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [(ProxyConfiguration *)self deviceIdentificationToken];
    v9 = [v8 allKeys];

    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v17 + 1) + 8 * v12);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [(ProxyConfiguration *)self deviceIdentificationToken];
            v15 = [v14 objectForKeyedSubscript:v13];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v4 setValue:v15 forHTTPHeaderField:v13];
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end