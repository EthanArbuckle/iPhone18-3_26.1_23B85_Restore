@interface SPSecureLocationsSubscriptionResult
- (SPSecureLocationsSubscriptionResult)init;
- (SPSecureLocationsSubscriptionResult)initWithCoder:(id)a3;
- (SPSecureLocationsSubscriptionResult)initWithExpiryTime:(double)a3 locations:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPSecureLocationsSubscriptionResult

- (SPSecureLocationsSubscriptionResult)init
{
  v6.receiver = self;
  v6.super_class = SPSecureLocationsSubscriptionResult;
  v2 = [(SPSecureLocationsSubscriptionResult *)&v6 init];
  v3 = v2;
  if (v2)
  {
    locations = v2->_locations;
    v2->_locations = MEMORY[0x277CBEBF8];

    v3->_expiresIn = 0.0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SPSecureLocationsSubscriptionResult);
  v5 = [(SPSecureLocationsSubscriptionResult *)self locations];
  [(SPSecureLocationsSubscriptionResult *)v4 setLocations:v5];

  [(SPSecureLocationsSubscriptionResult *)self expiresIn];
  [(SPSecureLocationsSubscriptionResult *)v4 setExpiresIn:?];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  locations = self->_locations;
  v5 = a3;
  [v5 encodeObject:locations forKey:@"locations"];
  [v5 encodeDouble:@"expiresIn" forKey:self->_expiresIn];
}

- (SPSecureLocationsSubscriptionResult)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"locations"];
  locations = self->_locations;
  self->_locations = v8;

  [v5 decodeDoubleForKey:@"expiresIn"];
  v11 = v10;

  self->_expiresIn = v11;
  v12 = *MEMORY[0x277D85DE8];
  return self;
}

- (SPSecureLocationsSubscriptionResult)initWithExpiryTime:(double)a3 locations:(id)a4
{
  objc_storeStrong(&self->_locations, a4);
  self->_expiresIn = a3;
  return self;
}

@end