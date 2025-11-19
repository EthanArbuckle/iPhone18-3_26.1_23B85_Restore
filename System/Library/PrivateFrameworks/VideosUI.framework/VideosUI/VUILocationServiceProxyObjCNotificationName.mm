@interface VUILocationServiceProxyObjCNotificationName
+ (NSString)locationAuthorizationDidChange;
+ (NSString)locationDidChange;
@end

@implementation VUILocationServiceProxyObjCNotificationName

+ (NSString)locationAuthorizationDidChange
{
  v2 = static VUILocationServiceProxyObjCNotificationName.locationAuthorizationDidChange.getter();

  return v2;
}

+ (NSString)locationDidChange
{
  v2 = static VUILocationServiceProxyObjCNotificationName.locationDidChange.getter();

  return v2;
}

@end