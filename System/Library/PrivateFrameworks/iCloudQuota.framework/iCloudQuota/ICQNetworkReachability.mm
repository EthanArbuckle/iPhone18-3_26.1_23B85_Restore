@interface ICQNetworkReachability
+ (BOOL)isNetworkReachable;
+ (BOOL)isWifiEnabled;
@end

@implementation ICQNetworkReachability

+ (BOOL)isNetworkReachable
{
  v3 = objc_alloc_init(MEMORY[0x277CEC5D0]);
  if ([v3 airplaneMode] && !objc_msgSend(self, "isWifiEnabled"))
  {
    isNetworkReachable = 0;
  }

  else
  {
    mEMORY[0x277CEC5B8] = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
    isNetworkReachable = [mEMORY[0x277CEC5B8] isNetworkReachable];
  }

  return isNetworkReachable;
}

+ (BOOL)isWifiEnabled
{
  mEMORY[0x277CEC5B8] = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  isWiFiEnabled = [mEMORY[0x277CEC5B8] isWiFiEnabled];

  return isWiFiEnabled;
}

@end