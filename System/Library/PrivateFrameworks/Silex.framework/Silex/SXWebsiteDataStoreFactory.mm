@interface SXWebsiteDataStoreFactory
- (SXWebsiteDataStoreFactory)initWithProxyConfiguration:(id)a3;
- (id)createWebsiteDataStore;
@end

@implementation SXWebsiteDataStoreFactory

- (SXWebsiteDataStoreFactory)initWithProxyConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SXWebsiteDataStoreFactory;
  v6 = [(SXWebsiteDataStoreFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_proxyConfiguration, a3);
  }

  return v7;
}

- (id)createWebsiteDataStore
{
  v3 = [objc_alloc(MEMORY[0x1E6985430]) initNonPersistentConfiguration];
  v4 = [(SXProxyConfiguration *)self->_proxyConfiguration proxyAutoConfigScript];
  if ([(SXProxyConfiguration *)self->_proxyConfiguration usePrivateRelay])
  {
    [v3 setSourceApplicationSecondaryIdentifier:@"com.apple.news.embedded-content"];
  }

  else if (v4)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    [v5 setObject:v4 forKey:*MEMORY[0x1E695ADC8]];
    [v5 setObject:*MEMORY[0x1E695ADE8] forKey:*MEMORY[0x1E695AE00]];
    [v5 setObject:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E6982638]];
    [v3 setProxyConfiguration:v5];
    [v3 setRequiresSecureHTTPSProxyConnection:1];
    [v3 setPreventsSystemHTTPProxyAuthentication:1];
  }

  v6 = [objc_alloc(MEMORY[0x1E69853B8]) _initWithConfiguration:v3];
  [v6 _setResourceLoadStatisticsEnabled:1];

  return v6;
}

@end