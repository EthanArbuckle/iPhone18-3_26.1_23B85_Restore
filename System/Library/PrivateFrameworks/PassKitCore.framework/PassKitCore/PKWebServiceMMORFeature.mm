@interface PKWebServiceMMORFeature
- (PKWebServiceMMORFeature)initWithDictionary:(id)dictionary region:(id)region;
@end

@implementation PKWebServiceMMORFeature

- (PKWebServiceMMORFeature)initWithDictionary:(id)dictionary region:(id)region
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = PKWebServiceMMORFeature;
  v7 = [(PKWebServiceRegionFeature *)&v11 initWithFeatureType:4 dictionary:dictionaryCopy region:region];
  if (v7)
  {
    v8 = [dictionaryCopy PKSetContaining:objc_opt_class() forKey:@"implicitFeatureSupportedNetworks"];
    v9 = v8;
    if (!v8)
    {
      v9 = objc_opt_new();
    }

    objc_storeStrong(&v7->_supportedNetworks, v9);
    if (!v8)
    {
    }
  }

  return v7;
}

@end