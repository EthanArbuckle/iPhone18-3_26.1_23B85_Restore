@interface VUINetworkReachabilityMonitorObjCProxy
+ (NSString)networkReachabilityDidChangeNotificationName;
+ (NSString)networkReachableUserInfoKey;
@end

@implementation VUINetworkReachabilityMonitorObjCProxy

+ (NSString)networkReachabilityDidChangeNotificationName
{
  v2 = static VUINetworkReachabilityMonitorObjCProxy.networkReachabilityDidChangeNotificationName.getter();

  return v2;
}

+ (NSString)networkReachableUserInfoKey
{
  static VUINetworkReachabilityMonitorObjCProxy.networkReachableUserInfoKey.getter();
  v2 = sub_1E4205ED4();

  return v2;
}

@end