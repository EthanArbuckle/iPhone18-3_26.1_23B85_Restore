@interface SPSecureLocationsSubscriptionResult
- (SPSecureLocationsSubscriptionResult)init;
- (SPSecureLocationsSubscriptionResult)initWithCoder:(id)coder;
- (SPSecureLocationsSubscriptionResult)initWithExpiryTime:(double)time locations:(id)locations;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SPSecureLocationsSubscriptionResult);
  locations = [(SPSecureLocationsSubscriptionResult *)self locations];
  [(SPSecureLocationsSubscriptionResult *)v4 setLocations:locations];

  [(SPSecureLocationsSubscriptionResult *)self expiresIn];
  [(SPSecureLocationsSubscriptionResult *)v4 setExpiresIn:?];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  locations = self->_locations;
  coderCopy = coder;
  [coderCopy encodeObject:locations forKey:@"locations"];
  [coderCopy encodeDouble:@"expiresIn" forKey:self->_expiresIn];
}

- (SPSecureLocationsSubscriptionResult)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"locations"];
  locations = self->_locations;
  self->_locations = v8;

  [coderCopy decodeDoubleForKey:@"expiresIn"];
  v11 = v10;

  self->_expiresIn = v11;
  v12 = *MEMORY[0x277D85DE8];
  return self;
}

- (SPSecureLocationsSubscriptionResult)initWithExpiryTime:(double)time locations:(id)locations
{
  objc_storeStrong(&self->_locations, locations);
  self->_expiresIn = time;
  return self;
}

@end