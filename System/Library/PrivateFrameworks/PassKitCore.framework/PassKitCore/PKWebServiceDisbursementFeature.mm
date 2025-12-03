@interface PKWebServiceDisbursementFeature
+ (id)disbursementFeatureWithWebService:(id)service;
- (PKWebServiceDisbursementFeature)initWithDictionary:(id)dictionary region:(id)region;
- (PKWebServiceDisbursementFeature)initWithSupportedNetworks:(id)networks;
@end

@implementation PKWebServiceDisbursementFeature

- (PKWebServiceDisbursementFeature)initWithDictionary:(id)dictionary region:(id)region
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = PKWebServiceDisbursementFeature;
  v7 = [(PKWebServiceRegionFeature *)&v11 initWithFeatureType:9 dictionary:dictionaryCopy region:region];
  if (v7)
  {
    v8 = [dictionaryCopy PKSetContaining:objc_opt_class() forKey:@"implicitFeatureSupportedNetworks"];
    v9 = v8;
    if (!v8)
    {
      v9 = objc_opt_new();
    }

    objc_storeStrong(&v7->_supportedNetworks, v9);
    if (!v8)
    {
    }
  }

  return v7;
}

- (PKWebServiceDisbursementFeature)initWithSupportedNetworks:(id)networks
{
  networksCopy = networks;
  v9.receiver = self;
  v9.super_class = PKWebServiceDisbursementFeature;
  v5 = [(PKWebServiceDisbursementFeature *)&v9 init];
  if (v5)
  {
    v6 = [networksCopy copy];
    supportedNetworks = v5->_supportedNetworks;
    v5->_supportedNetworks = v6;
  }

  return v5;
}

+ (id)disbursementFeatureWithWebService:(id)service
{
  serviceCopy = service;
  targetDevice = [serviceCopy targetDevice];
  v6 = [targetDevice paymentWebService:serviceCopy supportedRegionFeatureOfType:9];

  if (!v6)
  {
    v7 = [PKWebServiceDisbursementFeature alloc];
    fallbackSupportedNetworksIfNoFeatureFound = [self fallbackSupportedNetworksIfNoFeatureFound];
    v6 = [(PKWebServiceDisbursementFeature *)v7 initWithSupportedNetworks:fallbackSupportedNetworksIfNoFeatureFound];
  }

  return v6;
}

@end