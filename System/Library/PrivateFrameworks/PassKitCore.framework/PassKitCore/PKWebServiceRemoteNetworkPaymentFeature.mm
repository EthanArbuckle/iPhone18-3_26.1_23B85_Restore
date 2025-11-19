@interface PKWebServiceRemoteNetworkPaymentFeature
- (PKWebServiceRemoteNetworkPaymentFeature)initWithDictionary:(id)a3 region:(id)a4;
@end

@implementation PKWebServiceRemoteNetworkPaymentFeature

- (PKWebServiceRemoteNetworkPaymentFeature)initWithDictionary:(id)a3 region:(id)a4
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = PKWebServiceRemoteNetworkPaymentFeature;
  v7 = [(PKWebServiceRegionFeature *)&v19 initWithFeatureType:17 dictionary:v6 region:a4];
  if (v7)
  {
    v8 = [v6 PKNumberForKey:@"enabled"];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 BOOLValue];
    }

    else
    {
      v10 = 1;
    }

    v7->_enabled = v10;
    v11 = [v6 PKArrayForKey:@"unsupportedIssuerCardCountryCodes"];
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

    v15 = [v6 PKArrayForKey:@"unsupportedNetworks"];
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