@interface PKWebServiceTorinoFeature
- (PKWebServiceTorinoFeature)initWithDictionary:(id)dictionary region:(id)region;
@end

@implementation PKWebServiceTorinoFeature

- (PKWebServiceTorinoFeature)initWithDictionary:(id)dictionary region:(id)region
{
  dictionaryCopy = dictionary;
  v7 = [(PKWebServiceRegionFeature *)self initWithFeatureType:6 dictionary:dictionaryCopy region:region];
  if (v7)
  {
    v8 = [dictionaryCopy PKArrayForKey:@"implicitFeatureSupportedNetworks"];
    implicitFeatureSupportedNetworks = v7->_implicitFeatureSupportedNetworks;
    v7->_implicitFeatureSupportedNetworks = v8;
  }

  return v7;
}

@end