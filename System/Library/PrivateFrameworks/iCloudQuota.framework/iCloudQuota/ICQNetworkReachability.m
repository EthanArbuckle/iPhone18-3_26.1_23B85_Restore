@interface ICQNetworkReachability
+ (BOOL)isNetworkReachable;
+ (BOOL)isWifiEnabled;
@end

@implementation ICQNetworkReachability

+ (BOOL)isNetworkReachable
{
  v3 = objc_alloc_init(MEMORY[0x277CEC5D0]);
  if ([v3 airplaneMode] && !objc_msgSend(a1, "isWifiEnabled"))
  {
    v5 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
    v5 = [v4 isNetworkReachable];
  }

  return v5;
}

+ (BOOL)isWifiEnabled
{
  v2 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  v3 = [v2 isWiFiEnabled];

  return v3;
}

@end