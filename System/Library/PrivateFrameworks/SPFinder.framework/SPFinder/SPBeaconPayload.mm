@interface SPBeaconPayload
- (SPBeaconPayload)initWithAdvertisement:(id)a3 location:(id)a4;
- (SPBeaconPayload)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPBeaconPayload

- (SPBeaconPayload)initWithAdvertisement:(id)a3 location:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SPBeaconPayload;
  v8 = [(SPBeaconPayload *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SPBeaconPayload *)v8 setAdvertisement:v6];
    [(SPBeaconPayload *)v9 setLocation:v7];
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(SPBeaconPayload *)self advertisement];
  [v6 encodeObject:v4 forKey:@"advertisement"];

  v5 = [(SPBeaconPayload *)self location];
  [v6 encodeObject:v5 forKey:@"location"];

  [v6 encodeInteger:-[SPBeaconPayload observationValue](self forKey:{"observationValue"), @"observationValue"}];
  [v6 encodeBool:-[SPBeaconPayload refreshGeotag](self forKey:{"refreshGeotag"), @"refreshGeotag"}];
}

- (SPBeaconPayload)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"advertisement"];
  [(SPBeaconPayload *)self setAdvertisement:v5];

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  [(SPBeaconPayload *)self setLocation:v6];

  -[SPBeaconPayload setObservationValue:](self, "setObservationValue:", [v4 decodeIntegerForKey:@"observationValue"]);
  v7 = [v4 decodeBoolForKey:@"refreshGeotag"];

  [(SPBeaconPayload *)self setRefreshGeotag:v7];
  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SPBeaconPayload *)self advertisement];
  v5 = [(SPBeaconPayload *)self location];
  v6 = [v3 stringWithFormat:@"SPBeaconPayload [%@] [%@] value: %ld refreshGeotag: %d", v4, v5, -[SPBeaconPayload observationValue](self, "observationValue"), -[SPBeaconPayload refreshGeotag](self, "refreshGeotag")];

  return v6;
}

@end