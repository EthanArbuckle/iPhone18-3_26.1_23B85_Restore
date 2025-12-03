@interface SPBeaconPayload
- (SPBeaconPayload)initWithAdvertisement:(id)advertisement location:(id)location;
- (SPBeaconPayload)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPBeaconPayload

- (SPBeaconPayload)initWithAdvertisement:(id)advertisement location:(id)location
{
  advertisementCopy = advertisement;
  locationCopy = location;
  v11.receiver = self;
  v11.super_class = SPBeaconPayload;
  v8 = [(SPBeaconPayload *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SPBeaconPayload *)v8 setAdvertisement:advertisementCopy];
    [(SPBeaconPayload *)v9 setLocation:locationCopy];
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  advertisement = [(SPBeaconPayload *)self advertisement];
  [coderCopy encodeObject:advertisement forKey:@"advertisement"];

  location = [(SPBeaconPayload *)self location];
  [coderCopy encodeObject:location forKey:@"location"];

  [coderCopy encodeInteger:-[SPBeaconPayload observationValue](self forKey:{"observationValue"), @"observationValue"}];
  [coderCopy encodeBool:-[SPBeaconPayload refreshGeotag](self forKey:{"refreshGeotag"), @"refreshGeotag"}];
}

- (SPBeaconPayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"advertisement"];
  [(SPBeaconPayload *)self setAdvertisement:v5];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  [(SPBeaconPayload *)self setLocation:v6];

  -[SPBeaconPayload setObservationValue:](self, "setObservationValue:", [coderCopy decodeIntegerForKey:@"observationValue"]);
  v7 = [coderCopy decodeBoolForKey:@"refreshGeotag"];

  [(SPBeaconPayload *)self setRefreshGeotag:v7];
  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  advertisement = [(SPBeaconPayload *)self advertisement];
  location = [(SPBeaconPayload *)self location];
  v6 = [v3 stringWithFormat:@"SPBeaconPayload [%@] [%@] value: %ld refreshGeotag: %d", advertisement, location, -[SPBeaconPayload observationValue](self, "observationValue"), -[SPBeaconPayload refreshGeotag](self, "refreshGeotag")];

  return v6;
}

@end