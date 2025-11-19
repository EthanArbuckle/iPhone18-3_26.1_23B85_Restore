@interface SXProxyConfiguration
+ (id)direct;
- (SXProxyConfiguration)initWithHost:(id)a3;
- (SXProxyConfiguration)initWithProxyAutoConfigScript:(id)a3;
@end

@implementation SXProxyConfiguration

+ (id)direct
{
  v2 = [[a1 alloc] initWithProxyAutoConfigScript:{@"function FindProxyForURL(url, host){return 'DIRECT';}"}];

  return v2;
}

- (SXProxyConfiguration)initWithProxyAutoConfigScript:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SXProxyConfiguration;
  v5 = [(SXProxyConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    proxyAutoConfigScript = v5->_proxyAutoConfigScript;
    v5->_proxyAutoConfigScript = v6;
  }

  return v5;
}

- (SXProxyConfiguration)initWithHost:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SXProxyConfiguration;
  v6 = [(SXProxyConfiguration *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_proxyHost, a3);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"function FindProxyForURL(url, host){return 'PROXY %@'}", v5];;
    proxyAutoConfigScript = v7->_proxyAutoConfigScript;
    v7->_proxyAutoConfigScript = v8;
  }

  return v7;
}

@end