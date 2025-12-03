@interface PKWebServiceDocumentDeliveryFeature
+ (BOOL)isEnabledWithWebService:(id)service;
+ (id)featureWithWebService:(id)service;
+ (id)webServiceURLWithWebService:(id)service;
- (PKWebServiceDocumentDeliveryFeature)initWithDictionary:(id)dictionary region:(id)region;
@end

@implementation PKWebServiceDocumentDeliveryFeature

- (PKWebServiceDocumentDeliveryFeature)initWithDictionary:(id)dictionary region:(id)region
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = PKWebServiceDocumentDeliveryFeature;
  v7 = [(PKWebServiceRegionFeature *)&v14 initWithFeatureType:12 dictionary:dictionaryCopy region:region];
  if (v7 && (v7->_enabled = [dictionaryCopy PKBoolForKey:@"enabled"], objc_msgSend(dictionaryCopy, "PKURLForKey:", @"webServiceURL"), v8 = objc_claimAutoreleasedReturnValue(), webServiceURL = v7->_webServiceURL, v7->_webServiceURL = v8, webServiceURL, v7->_enabled) && !v7->_webServiceURL)
  {
    v12 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Missing webServiceURL for document delivery feature", v13, 2u);
    }

    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

+ (id)featureWithWebService:(id)service
{
  serviceCopy = service;
  if (!os_variant_has_internal_ui() || ([serviceCopy supportedRegionFeatureOfType:13 didFailOSVersionRequirements:0], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = [serviceCopy supportedRegionFeatureOfType:12 didFailOSVersionRequirements:0];
  }

  return v4;
}

+ (BOOL)isEnabledWithWebService:(id)service
{
  v3 = [self featureWithWebService:service];
  isEnabled = [v3 isEnabled];

  return isEnabled;
}

+ (id)webServiceURLWithWebService:(id)service
{
  v3 = [self featureWithWebService:service];
  webServiceURL = [v3 webServiceURL];

  return webServiceURL;
}

@end