@interface PKWebServiceTorinoFeature
- (PKWebServiceTorinoFeature)initWithDictionary:(id)a3 region:(id)a4;
@end

@implementation PKWebServiceTorinoFeature

- (PKWebServiceTorinoFeature)initWithDictionary:(id)a3 region:(id)a4
{
  v6 = a3;
  v7 = [(PKWebServiceRegionFeature *)self initWithFeatureType:6 dictionary:v6 region:a4];
  if (v7)
  {
    v8 = [v6 PKArrayForKey:@"implicitFeatureSupportedNetworks"];
    implicitFeatureSupportedNetworks = v7->_implicitFeatureSupportedNetworks;
    v7->_implicitFeatureSupportedNetworks = v8;
  }

  return v7;
}

@end