@interface SXProxyConfiguration
+ (id)direct;
- (SXProxyConfiguration)initWithHost:(id)host;
- (SXProxyConfiguration)initWithProxyAutoConfigScript:(id)script;
@end

@implementation SXProxyConfiguration

+ (id)direct
{
  v2 = [[self alloc] initWithProxyAutoConfigScript:{@"function FindProxyForURL(url, host){return 'DIRECT';}"}];

  return v2;
}

- (SXProxyConfiguration)initWithProxyAutoConfigScript:(id)script
{
  scriptCopy = script;
  v9.receiver = self;
  v9.super_class = SXProxyConfiguration;
  v5 = [(SXProxyConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [scriptCopy copy];
    proxyAutoConfigScript = v5->_proxyAutoConfigScript;
    v5->_proxyAutoConfigScript = v6;
  }

  return v5;
}

- (SXProxyConfiguration)initWithHost:(id)host
{
  hostCopy = host;
  v11.receiver = self;
  v11.super_class = SXProxyConfiguration;
  v6 = [(SXProxyConfiguration *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_proxyHost, host);
    hostCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"function FindProxyForURL(url, host){return 'PROXY %@'}", hostCopy];;
    proxyAutoConfigScript = v7->_proxyAutoConfigScript;
    v7->_proxyAutoConfigScript = hostCopy;
  }

  return v7;
}

@end