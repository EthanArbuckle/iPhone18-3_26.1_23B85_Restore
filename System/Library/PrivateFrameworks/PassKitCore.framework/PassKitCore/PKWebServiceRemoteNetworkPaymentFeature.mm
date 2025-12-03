@interface PKWebServiceRemoteNetworkPaymentFeature
- (PKWebServiceRemoteNetworkPaymentFeature)initWithDictionary:(id)dictionary region:(id)region;
@end

@implementation PKWebServiceRemoteNetworkPaymentFeature

- (PKWebServiceRemoteNetworkPaymentFeature)initWithDictionary:(id)dictionary region:(id)region
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = PKWebServiceRemoteNetworkPaymentFeature;
  v7 = [(PKWebServiceRegionFeature *)&v19 initWithFeatureType:17 dictionary:dictionaryCopy region:region];
  if (v7)
  {
    v8 = [dictionaryCopy PKNumberForKey:@"enabled"];
    v9 = v8;
    if (v8)
    {
      bOOLValue = [v8 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    v7->_enabled = bOOLValue;
    v11 = [dictionaryCopy PKArrayForKey:@"unsupportedIssuerCardCountryCodes"];
    v12 = v11;
    v13 = MEMORY[0x1E695E0F0];
    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v7->_unsupportedIssuerCardCountryCodes, v14);

    v15 = [dictionaryCopy PKArrayForKey:@"unsupportedNetworks"];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v13;
    }

    objc_storeStrong(&v7->_unsupportedNetworks, v17);
  }

  return v7;
}

@end