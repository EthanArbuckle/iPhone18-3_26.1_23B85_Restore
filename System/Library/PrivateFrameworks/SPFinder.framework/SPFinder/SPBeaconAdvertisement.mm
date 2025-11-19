@interface SPBeaconAdvertisement
- (SPBeaconAdvertisement)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPBeaconAdvertisement

- (SPBeaconAdvertisement)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"address"];
  [(SPBeaconAdvertisement *)self setAddress:v5];

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicKey"];
  [(SPBeaconAdvertisement *)self setPublicKey:v6];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceType"];
  [(SPBeaconAdvertisement *)self setDeviceType:v7];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"batteryState"];
  [(SPBeaconAdvertisement *)self setBatteryState:v8];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rawStatus"];
  -[SPBeaconAdvertisement setRawStatus:](self, "setRawStatus:", [v9 unsignedIntegerValue]);

  -[SPBeaconAdvertisement setRssi:](self, "setRssi:", [v4 decodeIntegerForKey:@"rssi"]);
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scanDate"];
  [(SPBeaconAdvertisement *)self setScanDate:v10];

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recordIdentifier"];
  [(SPBeaconAdvertisement *)self setRecordIdentifier:v11];

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];

  [(SPBeaconAdvertisement *)self setLocation:v12];
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SPBeaconAdvertisement *)self address];
  [v4 encodeObject:v5 forKey:@"address"];

  v6 = [(SPBeaconAdvertisement *)self publicKey];
  [v4 encodeObject:v6 forKey:@"publicKey"];

  v7 = [(SPBeaconAdvertisement *)self deviceType];
  [v4 encodeObject:v7 forKey:@"deviceType"];

  v8 = [(SPBeaconAdvertisement *)self batteryState];
  [v4 encodeObject:v8 forKey:@"batteryState"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[SPBeaconAdvertisement rawStatus](self, "rawStatus")}];
  [v4 encodeObject:v9 forKey:@"rawStatus"];

  [v4 encodeInteger:-[SPBeaconAdvertisement rssi](self forKey:{"rssi"), @"rssi"}];
  v10 = [(SPBeaconAdvertisement *)self scanDate];
  [v4 encodeObject:v10 forKey:@"scanDate"];

  v11 = [(SPBeaconAdvertisement *)self recordIdentifier];
  [v4 encodeObject:v11 forKey:@"recordIdentifier"];

  v12 = [(SPBeaconAdvertisement *)self location];
  [v4 encodeObject:v12 forKey:@"location"];
}

@end