@interface SPBeaconAdvertisement
- (SPBeaconAdvertisement)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPBeaconAdvertisement

- (SPBeaconAdvertisement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"address"];
  [(SPBeaconAdvertisement *)self setAddress:v5];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicKey"];
  [(SPBeaconAdvertisement *)self setPublicKey:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceType"];
  [(SPBeaconAdvertisement *)self setDeviceType:v7];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"batteryState"];
  [(SPBeaconAdvertisement *)self setBatteryState:v8];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawStatus"];
  -[SPBeaconAdvertisement setRawStatus:](self, "setRawStatus:", [v9 unsignedIntegerValue]);

  -[SPBeaconAdvertisement setRssi:](self, "setRssi:", [coderCopy decodeIntegerForKey:@"rssi"]);
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scanDate"];
  [(SPBeaconAdvertisement *)self setScanDate:v10];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recordIdentifier"];
  [(SPBeaconAdvertisement *)self setRecordIdentifier:v11];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];

  [(SPBeaconAdvertisement *)self setLocation:v12];
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  address = [(SPBeaconAdvertisement *)self address];
  [coderCopy encodeObject:address forKey:@"address"];

  publicKey = [(SPBeaconAdvertisement *)self publicKey];
  [coderCopy encodeObject:publicKey forKey:@"publicKey"];

  deviceType = [(SPBeaconAdvertisement *)self deviceType];
  [coderCopy encodeObject:deviceType forKey:@"deviceType"];

  batteryState = [(SPBeaconAdvertisement *)self batteryState];
  [coderCopy encodeObject:batteryState forKey:@"batteryState"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[SPBeaconAdvertisement rawStatus](self, "rawStatus")}];
  [coderCopy encodeObject:v9 forKey:@"rawStatus"];

  [coderCopy encodeInteger:-[SPBeaconAdvertisement rssi](self forKey:{"rssi"), @"rssi"}];
  scanDate = [(SPBeaconAdvertisement *)self scanDate];
  [coderCopy encodeObject:scanDate forKey:@"scanDate"];

  recordIdentifier = [(SPBeaconAdvertisement *)self recordIdentifier];
  [coderCopy encodeObject:recordIdentifier forKey:@"recordIdentifier"];

  location = [(SPBeaconAdvertisement *)self location];
  [coderCopy encodeObject:location forKey:@"location"];
}

@end