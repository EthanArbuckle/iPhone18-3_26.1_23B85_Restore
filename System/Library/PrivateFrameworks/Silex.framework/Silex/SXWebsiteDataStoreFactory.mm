@interface SXWebsiteDataStoreFactory
- (SXWebsiteDataStoreFactory)initWithProxyConfiguration:(id)configuration;
- (id)createWebsiteDataStore;
@end

@implementation SXWebsiteDataStoreFactory

- (SXWebsiteDataStoreFactory)initWithProxyConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = SXWebsiteDataStoreFactory;
  v6 = [(SXWebsiteDataStoreFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_proxyConfiguration, configuration);
  }

  return v7;
}

- (id)createWebsiteDataStore
{
  initNonPersistentConfiguration = [objc_alloc(MEMORY[0x1E6985430]) initNonPersistentConfiguration];
  proxyAutoConfigScript = [(SXProxyConfiguration *)self->_proxyConfiguration proxyAutoConfigScript];
  if ([(SXProxyConfiguration *)self->_proxyConfiguration usePrivateRelay])
  {
    [initNonPersistentConfiguration setSourceApplicationSecondaryIdentifier:@"com.apple.news.embedded-content"];
  }

  else if (proxyAutoConfigScript)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:proxyAutoConfigScript forKey:*MEMORY[0x1E695ADC8]];
    [dictionary setObject:*MEMORY[0x1E695ADE8] forKey:*MEMORY[0x1E695AE00]];
    [dictionary setObject:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E6982638]];
    [initNonPersistentConfiguration setProxyConfiguration:dictionary];
    [initNonPersistentConfiguration setRequiresSecureHTTPSProxyConnection:1];
    [initNonPersistentConfiguration setPreventsSystemHTTPProxyAuthentication:1];
  }

  v6 = [objc_alloc(MEMORY[0x1E69853B8]) _initWithConfiguration:initNonPersistentConfiguration];
  [v6 _setResourceLoadStatisticsEnabled:1];

  return v6;
}

@end