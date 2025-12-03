@interface WADeviceAnalytics_BandsInNetwork
- (WADeviceAnalytics_BandsInNetwork)initWithNetwork:(id)network;
- (id)description;
@end

@implementation WADeviceAnalytics_BandsInNetwork

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  ssid = [(WADeviceAnalytics_BandsInNetwork *)self ssid];
  if ([(WADeviceAnalytics_BandsInNetwork *)self has2GHz])
  {
    v5 = @"2.4Ghz ";
  }

  else
  {
    v5 = &stru_1F481C4A0;
  }

  if ([(WADeviceAnalytics_BandsInNetwork *)self has5GHz])
  {
    v6 = @"5Ghz ";
  }

  else
  {
    v6 = &stru_1F481C4A0;
  }

  has6GHz = [(WADeviceAnalytics_BandsInNetwork *)self has6GHz];
  v8 = @"6Ghz ";
  if (!has6GHz)
  {
    v8 = &stru_1F481C4A0;
  }

  v9 = [v3 stringWithFormat:@"%@: %@%@%@", ssid, v5, v6, v8];

  return v9;
}

- (WADeviceAnalytics_BandsInNetwork)initWithNetwork:(id)network
{
  networkCopy = network;
  if (networkCopy)
  {
    v8.receiver = self;
    v8.super_class = WADeviceAnalytics_BandsInNetwork;
    v5 = [(WADeviceAnalytics_BandsInNetwork *)&v8 init];
    if (v5)
    {
      ssid = [networkCopy ssid];
      [(WADeviceAnalytics_BandsInNetwork *)v5 setSsid:ssid];

      -[WADeviceAnalytics_BandsInNetwork setHas2GHz:](v5, "setHas2GHz:", [networkCopy has2GHz]);
      -[WADeviceAnalytics_BandsInNetwork setHas5GHz:](v5, "setHas5GHz:", [networkCopy has5GHz]);
      -[WADeviceAnalytics_BandsInNetwork setHas6GHz:](v5, "setHas6GHz:", [networkCopy has6GHz]);
    }
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

@end