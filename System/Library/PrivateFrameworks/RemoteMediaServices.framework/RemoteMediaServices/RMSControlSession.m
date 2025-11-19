@interface RMSControlSession
+ (id)daapControlSession;
+ (id)localControlSession;
+ (id)proxyControlSession;
@end

@implementation RMSControlSession

+ (id)daapControlSession
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)localControlSession
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)proxyControlSession
{
  v2 = objc_opt_new();

  return v2;
}

@end