@interface SPDeviceEventFetchResult
- (SPDeviceEventFetchResult)initWithCoder:(id)a3;
- (SPDeviceEventFetchResult)initWithResults:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPDeviceEventFetchResult

- (SPDeviceEventFetchResult)initWithResults:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SPDeviceEventFetchResult;
  v5 = [(SPDeviceEventFetchResult *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SPDeviceEventFetchResult *)v5 setBeaconEventByBeaconIdentifier:v4];
  }

  return v6;
}

- (SPDeviceEventFetchResult)initWithCoder:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:3];
  v7 = [v4 setWithArray:{v6, v11, v12}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"beaconEventByBeaconIdentifier"];

  [(SPDeviceEventFetchResult *)self setBeaconEventByBeaconIdentifier:v8];
  v9 = *MEMORY[0x277D85DE8];
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SPDeviceEventFetchResult *)self beaconEventByBeaconIdentifier];
  [v4 encodeObject:v5 forKey:@"beaconEventByBeaconIdentifier"];
}

@end