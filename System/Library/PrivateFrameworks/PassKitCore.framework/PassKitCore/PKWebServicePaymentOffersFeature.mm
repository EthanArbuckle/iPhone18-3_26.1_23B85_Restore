@interface PKWebServicePaymentOffersFeature
- (BOOL)isSupportedOnDevice:(id)device;
- (PKWebServicePaymentOffersFeature)initWithDictionary:(id)dictionary region:(id)region;
- (id)description;
@end

@implementation PKWebServicePaymentOffersFeature

- (PKWebServicePaymentOffersFeature)initWithDictionary:(id)dictionary region:(id)region
{
  v5.receiver = self;
  v5.super_class = PKWebServicePaymentOffersFeature;
  return [(PKWebServiceRegionFeature *)&v5 initWithFeatureType:15 dictionary:dictionary region:region];
}

- (BOOL)isSupportedOnDevice:(id)device
{
  deviceCopy = device;
  versionRange = [(PKWebServiceRegionFeature *)self versionRange];

  if (versionRange)
  {
    deviceClass = [deviceCopy deviceClass];
    v7 = +[PKOSVersionRequirement fromDeviceVersion];
    versionRange2 = [(PKWebServiceRegionFeature *)self versionRange];
    v9 = [versionRange2 versionMeetsRequirements:v7 deviceClass:deviceClass];
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

  versionRange = [(PKWebServiceRegionFeature *)self versionRange];
  asDictionary = [versionRange asDictionary];
  [v6 appendFormat:@"versionRange: '%@'; ", asDictionary];

  [v6 appendFormat:@">"];
  v9 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v9;
}

@end