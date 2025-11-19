@interface PKWebServicePaymentOffersFeature
- (BOOL)isSupportedOnDevice:(id)a3;
- (PKWebServicePaymentOffersFeature)initWithDictionary:(id)a3 region:(id)a4;
- (id)description;
@end

@implementation PKWebServicePaymentOffersFeature

- (PKWebServicePaymentOffersFeature)initWithDictionary:(id)a3 region:(id)a4
{
  v5.receiver = self;
  v5.super_class = PKWebServicePaymentOffersFeature;
  return [(PKWebServiceRegionFeature *)&v5 initWithFeatureType:15 dictionary:a3 region:a4];
}

- (BOOL)isSupportedOnDevice:(id)a3
{
  v4 = a3;
  v5 = [(PKWebServiceRegionFeature *)self versionRange];

  if (v5)
  {
    v6 = [v4 deviceClass];
    v7 = +[PKOSVersionRequirement fromDeviceVersion];
    v8 = [(PKWebServiceRegionFeature *)self versionRange];
    v9 = [v8 versionMeetsRequirements:v7 deviceClass:v6];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  v7 = [(PKWebServiceRegionFeature *)self versionRange];
  v8 = [v7 asDictionary];
  [v6 appendFormat:@"versionRange: '%@'; ", v8];

  [v6 appendFormat:@">"];
  v9 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v9;
}

@end