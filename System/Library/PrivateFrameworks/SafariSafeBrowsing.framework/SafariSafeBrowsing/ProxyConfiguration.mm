@interface ProxyConfiguration
+ (BOOL)isProxyError:(id)error;
- (ProxyConfiguration)initWithDeviceIdentificationToken:(id)token;
- (void)applyToRequest:(id)request;
@end

@implementation ProxyConfiguration

+ (BOOL)isProxyError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277CBACE8]])
  {
    v5 = [errorCopy code] == 310;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (ProxyConfiguration)initWithDeviceIdentificationToken:(id)token
{
  tokenCopy = token;
  v14.receiver = self;
  v14.super_class = ProxyConfiguration;
  v6 = [(ProxyConfiguration *)&v14 init];
  v7 = v6;
  v8 = 0;
  if (tokenCopy && v6)
  {
    if (Backend::Google::SSBUtilities::shouldConsultWithTencent(v6))
    {
      v8 = 0;
    }

    else
    {
      v9 = +[RemoteConfigurationController sharedController];
      googleProviderConfiguration = [v9 googleProviderConfiguration];
      proxyOff = [googleProviderConfiguration proxyOff];

      if (proxyOff)
      {
        v8 = 0;
      }

      else
      {
        proxy = v7->_proxy;
        v7->_proxy = &unk_2838D2380;

        objc_storeStrong(&v7->_deviceIdentificationToken, token);
        v8 = v7;
      }
    }
  }

  return v8;
}

- (void)applyToRequest:(id)request
{
  v22 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  proxy = [(ProxyConfiguration *)self proxy];

  if (proxy)
  {
    proxy2 = [(ProxyConfiguration *)self proxy];
    CFURLRequestSetProxySettings();
  }

  deviceIdentificationToken = [(ProxyConfiguration *)self deviceIdentificationToken];

  if (deviceIdentificationToken)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    deviceIdentificationToken2 = [(ProxyConfiguration *)self deviceIdentificationToken];
    allKeys = [deviceIdentificationToken2 allKeys];

    v10 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          v13 = *(*(&v17 + 1) + 8 * v12);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            deviceIdentificationToken3 = [(ProxyConfiguration *)self deviceIdentificationToken];
            v15 = [deviceIdentificationToken3 objectForKeyedSubscript:v13];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [requestCopy setValue:v15 forHTTPHeaderField:v13];
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end