@interface PKWebServiceIssuerBindingFeature
- (PKWebServiceIssuerBindingFeature)initWithDictionary:(id)dictionary region:(id)region;
@end

@implementation PKWebServiceIssuerBindingFeature

- (PKWebServiceIssuerBindingFeature)initWithDictionary:(id)dictionary region:(id)region
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = PKWebServiceIssuerBindingFeature;
  v7 = [(PKWebServiceRegionFeature *)&v10 initWithFeatureType:11 dictionary:dictionaryCopy region:region];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"enabled"];

    if (v8)
    {
      v7->_enabled = [dictionaryCopy PKBoolForKey:@"enabled"];
    }

    else
    {
      v7->_enabled = 1;
    }
  }

  return v7;
}

@end