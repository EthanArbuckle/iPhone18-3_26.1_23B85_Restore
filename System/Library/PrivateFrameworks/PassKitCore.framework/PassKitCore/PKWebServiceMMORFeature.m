@interface PKWebServiceMMORFeature
- (PKWebServiceMMORFeature)initWithDictionary:(id)a3 region:(id)a4;
@end

@implementation PKWebServiceMMORFeature

- (PKWebServiceMMORFeature)initWithDictionary:(id)a3 region:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = PKWebServiceMMORFeature;
  v7 = [(PKWebServiceRegionFeature *)&v11 initWithFeatureType:4 dictionary:v6 region:a4];
  if (v7)
  {
    v8 = [v6 PKSetContaining:objc_opt_class() forKey:@"implicitFeatureSupportedNetworks"];
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