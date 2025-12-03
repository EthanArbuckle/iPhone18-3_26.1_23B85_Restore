@interface WADeviceAnalytics_AdaptiveRoamingBSSParams
- (WADeviceAnalytics_AdaptiveRoamingBSSParams)initWithBSS:(id)s;
@end

@implementation WADeviceAnalytics_AdaptiveRoamingBSSParams

- (WADeviceAnalytics_AdaptiveRoamingBSSParams)initWithBSS:(id)s
{
  sCopy = s;
  if (sCopy)
  {
    v12.receiver = self;
    v12.super_class = WADeviceAnalytics_AdaptiveRoamingBSSParams;
    v5 = [(WADeviceAnalytics_AdaptiveRoamingBSSParams *)&v12 init];
    if (v5)
    {
      bssid = [sCopy bssid];
      [(WADeviceAnalytics_AdaptiveRoamingBSSParams *)v5 setBssid:bssid];

      v7 = [RoamPolicyStore neighborChannelsAsArrayOfChanInfo:sCopy];
      [(WADeviceAnalytics_AdaptiveRoamingBSSParams *)v5 setNeighborChannels:v7];

      -[WADeviceAnalytics_AdaptiveRoamingBSSParams setRssiRoamTrigger:](v5, "setRssiRoamTrigger:", [sCopy roamTriggerRssi]);
      v8 = MEMORY[0x1E695DEC8];
      neighborBSSIDs = [sCopy neighborBSSIDs];
      v10 = [v8 arrayWithArray:neighborBSSIDs];
      [(WADeviceAnalytics_AdaptiveRoamingBSSParams *)v5 setNeighbors:v10];
    }
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

@end