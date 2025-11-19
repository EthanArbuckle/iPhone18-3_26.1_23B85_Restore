@interface PKPaymentSetupProductsSectionFactoryContext
+ (id)contextWithPrimaryRegion:(id)a3 primaryCountryName:(id)a4 secondaryRegion:(id)a5 secondaryCountryName:(id)a6 location:(id)a7 tokenizerCharacterSet:(id)a8;
- (PKPaymentSetupProductsSectionFactoryContext)initWithPrimaryRegion:(id)a3 primaryCountryName:(id)a4 secondaryRegion:(id)a5 secondaryCountryName:(id)a6 location:(id)a7 tokenizerCharacterSet:(id)a8;
- (id)description;
@end

@implementation PKPaymentSetupProductsSectionFactoryContext

+ (id)contextWithPrimaryRegion:(id)a3 primaryCountryName:(id)a4 secondaryRegion:(id)a5 secondaryCountryName:(id)a6 location:(id)a7 tokenizerCharacterSet:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [[a1 alloc] initWithPrimaryRegion:v19 primaryCountryName:v18 secondaryRegion:v17 secondaryCountryName:v16 location:v15 tokenizerCharacterSet:v14];

  return v20;
}

- (PKPaymentSetupProductsSectionFactoryContext)initWithPrimaryRegion:(id)a3 primaryCountryName:(id)a4 secondaryRegion:(id)a5 secondaryCountryName:(id)a6 location:(id)a7 tokenizerCharacterSet:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = PKPaymentSetupProductsSectionFactoryContext;
  v18 = [(PKPaymentSetupProductsSectionFactoryContext *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_primaryRegion, a3);
    objc_storeStrong(&v19->_primaryCountryName, a4);
    objc_storeStrong(&v19->_secondaryRegion, a5);
    objc_storeStrong(&v19->_secondaryCountryName, a6);
    objc_storeStrong(&v19->_location, a7);
    objc_storeStrong(&v19->_tokenizerCharacterSet, a8);
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