@interface WADeviceAnalytics_BandsInNetwork
- (WADeviceAnalytics_BandsInNetwork)initWithNetwork:(id)a3;
- (id)description;
@end

@implementation WADeviceAnalytics_BandsInNetwork

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(WADeviceAnalytics_BandsInNetwork *)self ssid];
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

  v7 = [(WADeviceAnalytics_BandsInNetwork *)self has6GHz];
  v8 = @"6Ghz ";
  if (!v7)
  {
    v8 = &stru_1F481C4A0;
  }

  v9 = [v3 stringWithFormat:@"%@: %@%@%@", v4, v5, v6, v8];

  return v9;
}

- (WADeviceAnalytics_BandsInNetwork)initWithNetwork:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8.receiver = self;
    v8.super_class = WADeviceAnalytics_BandsInNetwork;
    v5 = [(WADeviceAnalytics_BandsInNetwork *)&v8 init];
    if (v5)
    {
      v6 = [v4 ssid];
      [(WADeviceAnalytics_BandsInNetwork *)v5 setSsid:v6];

      -[WADeviceAnalytics_BandsInNetwork setHas2GHz:](v5, "setHas2GHz:", [v4 has2GHz]);
      -[WADeviceAnalytics_BandsInNetwork setHas5GHz:](v5, "setHas5GHz:", [v4 has5GHz]);
      -[WADeviceAnalytics_BandsInNetwork setHas6GHz:](v5, "setHas6GHz:", [v4 has6GHz]);
    }
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

@end