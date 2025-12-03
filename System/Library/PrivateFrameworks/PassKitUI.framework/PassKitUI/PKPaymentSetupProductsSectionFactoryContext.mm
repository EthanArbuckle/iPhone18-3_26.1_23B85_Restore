@interface PKPaymentSetupProductsSectionFactoryContext
+ (id)contextWithPrimaryRegion:(id)region primaryCountryName:(id)name secondaryRegion:(id)secondaryRegion secondaryCountryName:(id)countryName location:(id)location tokenizerCharacterSet:(id)set;
- (PKPaymentSetupProductsSectionFactoryContext)initWithPrimaryRegion:(id)region primaryCountryName:(id)name secondaryRegion:(id)secondaryRegion secondaryCountryName:(id)countryName location:(id)location tokenizerCharacterSet:(id)set;
- (id)description;
@end

@implementation PKPaymentSetupProductsSectionFactoryContext

+ (id)contextWithPrimaryRegion:(id)region primaryCountryName:(id)name secondaryRegion:(id)secondaryRegion secondaryCountryName:(id)countryName location:(id)location tokenizerCharacterSet:(id)set
{
  setCopy = set;
  locationCopy = location;
  countryNameCopy = countryName;
  secondaryRegionCopy = secondaryRegion;
  nameCopy = name;
  regionCopy = region;
  v20 = [[self alloc] initWithPrimaryRegion:regionCopy primaryCountryName:nameCopy secondaryRegion:secondaryRegionCopy secondaryCountryName:countryNameCopy location:locationCopy tokenizerCharacterSet:setCopy];

  return v20;
}

- (PKPaymentSetupProductsSectionFactoryContext)initWithPrimaryRegion:(id)region primaryCountryName:(id)name secondaryRegion:(id)secondaryRegion secondaryCountryName:(id)countryName location:(id)location tokenizerCharacterSet:(id)set
{
  regionCopy = region;
  nameCopy = name;
  secondaryRegionCopy = secondaryRegion;
  countryNameCopy = countryName;
  locationCopy = location;
  setCopy = set;
  v24.receiver = self;
  v24.super_class = PKPaymentSetupProductsSectionFactoryContext;
  v18 = [(PKPaymentSetupProductsSectionFactoryContext *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_primaryRegion, region);
    objc_storeStrong(&v19->_primaryCountryName, name);
    objc_storeStrong(&v19->_secondaryRegion, secondaryRegion);
    objc_storeStrong(&v19->_secondaryCountryName, countryName);
    objc_storeStrong(&v19->_location, location);
    objc_storeStrong(&v19->_tokenizerCharacterSet, set);
  }

  return v19;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"primaryRegion: '%@'; ", self->_primaryRegion];
  [v6 appendFormat:@"secondaryRegion: '%@'; ", self->_secondaryRegion];
  [v6 appendFormat:@"location: '%@'; ", self->_location];
  [v6 appendFormat:@">"];
  v7 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v7;
}

@end