@interface RMSDiscoverySession
+ (id)localDiscoverySession;
+ (id)proxyDiscoverySession;
@end

@implementation RMSDiscoverySession

+ (id)localDiscoverySession
{
  v2 = objc_alloc_init(RMSLocalDiscoverySession);

  return v2;
}

+ (id)proxyDiscoverySession
{
  v2 = objc_alloc_init(RMSDiscoverySessionProxy);

  return v2;
}

@end