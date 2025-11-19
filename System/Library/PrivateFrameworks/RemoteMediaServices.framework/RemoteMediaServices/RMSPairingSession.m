@interface RMSPairingSession
+ (id)localPairingSession;
+ (id)proxyPairingSession;
@end

@implementation RMSPairingSession

+ (id)localPairingSession
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)proxyPairingSession
{
  v2 = objc_opt_new();

  return v2;
}

@end