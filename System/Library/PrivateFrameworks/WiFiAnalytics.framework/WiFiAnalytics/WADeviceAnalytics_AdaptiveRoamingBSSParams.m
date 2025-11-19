@interface WADeviceAnalytics_AdaptiveRoamingBSSParams
- (WADeviceAnalytics_AdaptiveRoamingBSSParams)initWithBSS:(id)a3;
@end

@implementation WADeviceAnalytics_AdaptiveRoamingBSSParams

- (WADeviceAnalytics_AdaptiveRoamingBSSParams)initWithBSS:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12.receiver = self;
    v12.super_class = WADeviceAnalytics_AdaptiveRoamingBSSParams;
    v5 = [(WADeviceAnalytics_AdaptiveRoamingBSSParams *)&v12 init];
    if (v5)
    {
      v6 = [v4 bssid];
      [(WADeviceAnalytics_AdaptiveRoamingBSSParams *)v5 setBssid:v6];

      v7 = [RoamPolicyStore neighborChannelsAsArrayOfChanInfo:v4];
      [(WADeviceAnalytics_AdaptiveRoamingBSSParams *)v5 setNeighborChannels:v7];

      -[WADeviceAnalytics_AdaptiveRoamingBSSParams setRssiRoamTrigger:](v5, "setRssiRoamTrigger:", [v4 roamTriggerRssi]);
      v8 = MEMORY[0x1E695DEC8];
      v9 = [v4 neighborBSSIDs];
      v10 = [v8 arrayWithArray:v9];
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