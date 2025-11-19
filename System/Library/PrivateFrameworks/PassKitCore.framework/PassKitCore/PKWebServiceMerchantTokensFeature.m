@interface PKWebServiceMerchantTokensFeature
- (PKWebServiceMerchantTokensFeature)initWithDictionary:(id)a3 region:(id)a4;
@end

@implementation PKWebServiceMerchantTokensFeature

- (PKWebServiceMerchantTokensFeature)initWithDictionary:(id)a3 region:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = PKWebServiceMerchantTokensFeature;
  v7 = [(PKWebServiceRegionFeature *)&v11 initWithFeatureType:3 dictionary:v6 region:a4];
  if (v7)
  {
    v8 = [v6 PKSetContaining:objc_opt_class() forKey:@"credentialTypesRequiringDPANNotifications"];
    credentialTypesRequiringDPANNotifications = v7->_credentialTypesRequiringDPANNotifications;
    v7->_credentialTypesRequiringDPANNotifications = v8;
  }

  return v7;
}

@end