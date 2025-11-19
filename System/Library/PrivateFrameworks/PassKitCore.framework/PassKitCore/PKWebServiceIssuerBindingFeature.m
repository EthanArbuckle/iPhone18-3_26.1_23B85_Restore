@interface PKWebServiceIssuerBindingFeature
- (PKWebServiceIssuerBindingFeature)initWithDictionary:(id)a3 region:(id)a4;
@end

@implementation PKWebServiceIssuerBindingFeature

- (PKWebServiceIssuerBindingFeature)initWithDictionary:(id)a3 region:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = PKWebServiceIssuerBindingFeature;
  v7 = [(PKWebServiceRegionFeature *)&v10 initWithFeatureType:11 dictionary:v6 region:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"enabled"];

    if (v8)
    {
      v7->_enabled = [v6 PKBoolForKey:@"enabled"];
    }

    else
    {
      v7->_enabled = 1;
    }
  }

  return v7;
}

@end