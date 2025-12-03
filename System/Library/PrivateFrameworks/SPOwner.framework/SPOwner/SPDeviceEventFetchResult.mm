@interface SPDeviceEventFetchResult
- (SPDeviceEventFetchResult)initWithCoder:(id)coder;
- (SPDeviceEventFetchResult)initWithResults:(id)results;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPDeviceEventFetchResult

- (SPDeviceEventFetchResult)initWithResults:(id)results
{
  resultsCopy = results;
  v8.receiver = self;
  v8.super_class = SPDeviceEventFetchResult;
  v5 = [(SPDeviceEventFetchResult *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SPDeviceEventFetchResult *)v5 setBeaconEventByBeaconIdentifier:resultsCopy];
  }

  return v6;
}

- (SPDeviceEventFetchResult)initWithCoder:(id)coder
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:3];
  v7 = [v4 setWithArray:{v6, v11, v12}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"beaconEventByBeaconIdentifier"];

  [(SPDeviceEventFetchResult *)self setBeaconEventByBeaconIdentifier:v8];
  v9 = *MEMORY[0x277D85DE8];
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  beaconEventByBeaconIdentifier = [(SPDeviceEventFetchResult *)self beaconEventByBeaconIdentifier];
  [coderCopy encodeObject:beaconEventByBeaconIdentifier forKey:@"beaconEventByBeaconIdentifier"];
}

@end