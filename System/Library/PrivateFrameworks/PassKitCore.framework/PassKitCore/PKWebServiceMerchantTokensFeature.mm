@interface PKWebServiceMerchantTokensFeature
- (PKWebServiceMerchantTokensFeature)initWithDictionary:(id)dictionary region:(id)region;
@end

@implementation PKWebServiceMerchantTokensFeature

- (PKWebServiceMerchantTokensFeature)initWithDictionary:(id)dictionary region:(id)region
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = PKWebServiceMerchantTokensFeature;
  v7 = [(PKWebServiceRegionFeature *)&v11 initWithFeatureType:3 dictionary:dictionaryCopy region:region];
  if (v7)
  {
    v8 = [dictionaryCopy PKSetContaining:objc_opt_class() forKey:@"credentialTypesRequiringDPANNotifications"];
    credentialTypesRequiringDPANNotifications = v7->_credentialTypesRequiringDPANNotifications;
    v7->_credentialTypesRequiringDPANNotifications = v8;
  }

  return v7;
}

@end