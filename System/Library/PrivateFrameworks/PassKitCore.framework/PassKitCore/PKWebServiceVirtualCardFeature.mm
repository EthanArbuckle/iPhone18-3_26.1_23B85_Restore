@interface PKWebServiceVirtualCardFeature
+ (id)virtualCardFeatureWithWebService:(id)service;
- (BOOL)doesPaymentApplication:(id)application supportVPANOnDevice:(id)device associatedAccountFeatureIdentifier:(unint64_t)identifier;
- (PKWebServiceVirtualCardFeature)initWithFeatureType:(int64_t)type dictionary:(id)dictionary region:(id)region;
- (unint64_t)refreshTypeForPaymentApplication:(id)application;
@end

@implementation PKWebServiceVirtualCardFeature

- (PKWebServiceVirtualCardFeature)initWithFeatureType:(int64_t)type dictionary:(id)dictionary region:(id)region
{
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = PKWebServiceVirtualCardFeature;
  v9 = [(PKWebServiceRegionFeature *)&v24 initWithFeatureType:type dictionary:dictionaryCopy region:region];
  if (v9)
  {
    v10 = [dictionaryCopy PKStringForKey:@"walletMerchantId"];
    merchantId = v9->_merchantId;
    v9->_merchantId = v10;

    v12 = [dictionaryCopy PKSetContaining:objc_opt_class() forKey:@"implicitFeatureSupportedNetworks"];
    v13 = v12;
    if (!v12)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    }

    objc_storeStrong(&v9->_implicitlySupportedNetworks, v13);
    if (!v12)
    {
    }

    v14 = [dictionaryCopy PKDictionaryForKey:@"networksMinimumVersion"];
    v15 = [PKWebServiceVirtualCardFeatureNetwork virtualCardFeatureNetworksFromDictionary:v14];
    v16 = [v15 copy];
    networks = v9->_networks;
    v9->_networks = v16;

    v18 = [dictionaryCopy PKDictionaryForKey:@"cashVPAN"];
    v19 = [v18 PKDictionaryForKey:@"networksMinimumVersion"];
    v20 = [PKWebServiceVirtualCardFeatureNetwork virtualCardFeatureNetworksFromDictionary:v19];
    v21 = [v20 copy];
    cashVPANNetworks = v9->_cashVPANNetworks;
    v9->_cashVPANNetworks = v21;
  }

  return v9;
}

+ (id)virtualCardFeatureWithWebService:(id)service
{
  serviceCopy = service;
  if (!os_variant_has_internal_ui() || ([serviceCopy targetDevice], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "paymentWebService:supportedRegionFeatureOfType:", serviceCopy, 8), v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    targetDevice = [serviceCopy targetDevice];
    v5 = [targetDevice paymentWebService:serviceCopy supportedRegionFeatureOfType:7];
  }

  return v5;
}

- (BOOL)doesPaymentApplication:(id)application supportVPANOnDevice:(id)device associatedAccountFeatureIdentifier:(unint64_t)identifier
{
  v30 = *MEMORY[0x1E69E9840];
  applicationCopy = application;
  deviceCopy = device;
  supportsVirtualCardNumber = [applicationCopy supportsVirtualCardNumber];
  v11 = supportsVirtualCardNumber;
  v12 = supportsVirtualCardNumber != 0;
  if (supportsVirtualCardNumber)
  {
    if (([supportsVirtualCardNumber BOOLValue] & 1) == 0)
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

  paymentNetworkIdentifier = [applicationCopy paymentNetworkIdentifier];
  if (identifier == 1 || (implicitlySupportedNetworks = self->_implicitlySupportedNetworks, [MEMORY[0x1E696AD98] numberWithInteger:paymentNetworkIdentifier], v15 = objc_claimAutoreleasedReturnValue(), LOBYTE(implicitlySupportedNetworks) = -[NSSet containsObject:](implicitlySupportedNetworks, "containsObject:", v15), v15, (implicitlySupportedNetworks & 1) == 0))
  {
    networks = self->_networks;
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:paymentNetworkIdentifier];
    v18 = [(NSDictionary *)networks objectForKeyedSubscript:v17];

    if (identifier == 1)
    {
      cashVPANNetworks = self->_cashVPANNetworks;
      v20 = [MEMORY[0x1E696AD98] numberWithInteger:paymentNetworkIdentifier];
      v21 = [(NSDictionary *)cashVPANNetworks objectForKeyedSubscript:v20];

      v18 = v21;
    }

    if (v18)
    {
      if (([v18 isSupportedOnDevice:deviceCopy]& 1) != 0)
      {
        implicitlySupported = [v18 implicitlySupported];
        v23 = PKLogFacilityTypeGetObject(7uLL);
        v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        if (implicitlySupported)
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

- (unint64_t)refreshTypeForPaymentApplication:(id)application
{
  applicationCopy = application;
  virtualCardRefreshTypeNumber = [applicationCopy virtualCardRefreshTypeNumber];

  if (virtualCardRefreshTypeNumber)
  {
    virtualCardRefreshTypeNumber2 = [applicationCopy virtualCardRefreshTypeNumber];
  }

  else
  {
    networks = self->_networks;
    v8 = MEMORY[0x1E696AD98];
    paymentNetworkIdentifier = [applicationCopy paymentNetworkIdentifier];

    v10 = [v8 numberWithInteger:paymentNetworkIdentifier];
    v11 = [(NSDictionary *)networks objectForKeyedSubscript:v10];
    virtualCardRefreshTypeNumber2 = [v11 refreshType];

    if (!virtualCardRefreshTypeNumber2)
    {
      integerValue = 0;
      goto LABEL_5;
    }
  }

  integerValue = [virtualCardRefreshTypeNumber2 integerValue];
LABEL_5:

  return integerValue;
}

@end