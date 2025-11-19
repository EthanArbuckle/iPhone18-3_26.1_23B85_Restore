@interface PKWebServiceVirtualCardFeature
+ (id)virtualCardFeatureWithWebService:(id)a3;
- (BOOL)doesPaymentApplication:(id)a3 supportVPANOnDevice:(id)a4 associatedAccountFeatureIdentifier:(unint64_t)a5;
- (PKWebServiceVirtualCardFeature)initWithFeatureType:(int64_t)a3 dictionary:(id)a4 region:(id)a5;
- (unint64_t)refreshTypeForPaymentApplication:(id)a3;
@end

@implementation PKWebServiceVirtualCardFeature

- (PKWebServiceVirtualCardFeature)initWithFeatureType:(int64_t)a3 dictionary:(id)a4 region:(id)a5
{
  v8 = a4;
  v24.receiver = self;
  v24.super_class = PKWebServiceVirtualCardFeature;
  v9 = [(PKWebServiceRegionFeature *)&v24 initWithFeatureType:a3 dictionary:v8 region:a5];
  if (v9)
  {
    v10 = [v8 PKStringForKey:@"walletMerchantId"];
    merchantId = v9->_merchantId;
    v9->_merchantId = v10;

    v12 = [v8 PKSetContaining:objc_opt_class() forKey:@"implicitFeatureSupportedNetworks"];
    v13 = v12;
    if (!v12)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    }

    objc_storeStrong(&v9->_implicitlySupportedNetworks, v13);
    if (!v12)
    {
    }

    v14 = [v8 PKDictionaryForKey:@"networksMinimumVersion"];
    v15 = [PKWebServiceVirtualCardFeatureNetwork virtualCardFeatureNetworksFromDictionary:v14];
    v16 = [v15 copy];
    networks = v9->_networks;
    v9->_networks = v16;

    v18 = [v8 PKDictionaryForKey:@"cashVPAN"];
    v19 = [v18 PKDictionaryForKey:@"networksMinimumVersion"];
    v20 = [PKWebServiceVirtualCardFeatureNetwork virtualCardFeatureNetworksFromDictionary:v19];
    v21 = [v20 copy];
    cashVPANNetworks = v9->_cashVPANNetworks;
    v9->_cashVPANNetworks = v21;
  }

  return v9;
}

+ (id)virtualCardFeatureWithWebService:(id)a3
{
  v3 = a3;
  if (!os_variant_has_internal_ui() || ([v3 targetDevice], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "paymentWebService:supportedRegionFeatureOfType:", v3, 8), v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v6 = [v3 targetDevice];
    v5 = [v6 paymentWebService:v3 supportedRegionFeatureOfType:7];
  }

  return v5;
}

- (BOOL)doesPaymentApplication:(id)a3 supportVPANOnDevice:(id)a4 associatedAccountFeatureIdentifier:(unint64_t)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v8 supportsVirtualCardNumber];
  v11 = v10;
  v12 = v10 != 0;
  if (v10)
  {
    if (([v10 BOOLValue] & 1) == 0)
    {
      v18 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "Not offering VPAN (pass opts-out)", buf, 2u);
      }

      v12 = 0;
      goto LABEL_26;
    }

    v27 = 1;
  }

  else
  {
    v27 = 0;
  }

  v13 = [v8 paymentNetworkIdentifier];
  if (a5 == 1 || (implicitlySupportedNetworks = self->_implicitlySupportedNetworks, [MEMORY[0x1E696AD98] numberWithInteger:v13], v15 = objc_claimAutoreleasedReturnValue(), LOBYTE(implicitlySupportedNetworks) = -[NSSet containsObject:](implicitlySupportedNetworks, "containsObject:", v15), v15, (implicitlySupportedNetworks & 1) == 0))
  {
    networks = self->_networks;
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
    v18 = [(NSDictionary *)networks objectForKeyedSubscript:v17];

    if (a5 == 1)
    {
      cashVPANNetworks = self->_cashVPANNetworks;
      v20 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
      v21 = [(NSDictionary *)cashVPANNetworks objectForKeyedSubscript:v20];

      v18 = v21;
    }

    if (v18)
    {
      if (([v18 isSupportedOnDevice:v9]& 1) != 0)
      {
        v22 = [v18 implicitlySupported];
        v23 = PKLogFacilityTypeGetObject(7uLL);
        v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        if (v22)
        {
          if (v24)
          {
            *buf = 0;
            _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "Offering VPAN (network implicitly supported)", buf, 2u);
          }

          v12 = 1;
        }

        else if (v24)
        {
          *buf = 134217984;
          v29 = v27;
          _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "Offering VPAN if pass supports it: %lu", buf, 0xCu);
        }

        goto LABEL_25;
      }

      v23 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v25 = "Not offering VPAN (doesn't meet version requirement)";
        goto LABEL_23;
      }
    }

    else
    {
      v23 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v25 = "Not offering VPAN (network not enabled)";
LABEL_23:
        _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, v25, buf, 2u);
      }
    }

    v12 = 0;
LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

  v12 = 1;
LABEL_27:

  return v12;
}

- (unint64_t)refreshTypeForPaymentApplication:(id)a3
{
  v4 = a3;
  v5 = [v4 virtualCardRefreshTypeNumber];

  if (v5)
  {
    v6 = [v4 virtualCardRefreshTypeNumber];
  }

  else
  {
    networks = self->_networks;
    v8 = MEMORY[0x1E696AD98];
    v9 = [v4 paymentNetworkIdentifier];

    v10 = [v8 numberWithInteger:v9];
    v11 = [(NSDictionary *)networks objectForKeyedSubscript:v10];
    v6 = [v11 refreshType];

    if (!v6)
    {
      v12 = 0;
      goto LABEL_5;
    }
  }

  v12 = [v6 integerValue];
LABEL_5:

  return v12;
}

@end