@interface WBSProcessProxyOverride
+ (void)overrideSystemHTTPProxy:(id)proxy HTTPSProxy:(id)sProxy;
+ (void)overrideSystemProxiesIfNeeded:(id)needed;
@end

@implementation WBSProcessProxyOverride

+ (void)overrideSystemHTTPProxy:(id)proxy HTTPSProxy:(id)sProxy
{
  proxyCopy = proxy;
  sProxyCopy = sProxy;
  if (proxyCopy | sProxyCopy)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (proxyCopy)
    {
      v7 = [MEMORY[0x1E695DFF8] safari_URLWithDataAsString:proxyCopy];
      host = [v7 host];
      if (host)
      {
        [dictionary setObject:host forKeyedSubscript:*MEMORY[0x1E695AE50]];
        port = [v7 port];
        if (port)
        {
          [dictionary setObject:port forKeyedSubscript:*MEMORY[0x1E695AE58]];
        }
      }

      else
      {
        NSLog(&cfstr_MalformedHttpP.isa, proxyCopy);
      }
    }

    if (sProxyCopy)
    {
      v10 = [MEMORY[0x1E695DFF8] safari_URLWithDataAsString:sProxyCopy];
      host2 = [v10 host];
      if (host2)
      {
        [dictionary setObject:host2 forKeyedSubscript:*MEMORY[0x1E695AE60]];
        port2 = [v10 port];
        if (port2)
        {
          [dictionary setObject:port2 forKeyedSubscript:*MEMORY[0x1E695AE68]];
        }
      }

      else
      {
        NSLog(&cfstr_MalformedHttps.isa, sProxyCopy);
      }
    }

    if ([dictionary count])
    {
      _CFNetworkSetOverrideSystemProxySettings();
    }
  }
}

+ (void)overrideSystemProxiesIfNeeded:(id)needed
{
  neededCopy = needed;
  v3 = [neededCopy stringForKey:@"DebugHTTPProxy"];
  if (!v3)
  {
    v3 = [neededCopy stringForKey:@"WebKit2HTTPProxy"];
  }

  v4 = [neededCopy stringForKey:@"DebugHTTPSProxy"];
  if (!v4)
  {
    v4 = [neededCopy stringForKey:@"WebKit2HTTPSProxy"];
  }

  [WBSProcessProxyOverride overrideSystemHTTPProxy:v3 HTTPSProxy:v4];
}

@end