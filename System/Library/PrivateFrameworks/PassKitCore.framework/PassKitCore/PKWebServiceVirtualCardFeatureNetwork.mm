@interface PKWebServiceVirtualCardFeatureNetwork
+ (id)virtualCardFeatureNetworksFromDictionary:(id)dictionary;
- (BOOL)isSupportedOnDevice:(id)device;
- (PKWebServiceVirtualCardFeatureNetwork)initWithDictionary:(id)dictionary network:(int64_t)network;
@end

@implementation PKWebServiceVirtualCardFeatureNetwork

+ (id)virtualCardFeatureNetworksFromDictionary:(id)dictionary
{
  v3 = MEMORY[0x1E695DF90];
  dictionaryCopy = dictionary;
  v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
  v6 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v6 setNumberStyle:1];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __82__PKWebServiceVirtualCardFeatureNetwork_virtualCardFeatureNetworksFromDictionary___block_invoke;
  v14 = &unk_1E79C9928;
  v15 = v6;
  v16 = v5;
  v7 = v5;
  v8 = v6;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:&v11];

  v9 = [v7 copy];

  return v9;
}

void __82__PKWebServiceVirtualCardFeatureNetwork_virtualCardFeatureNetworksFromDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = [*(a1 + 32) numberFromString:v5];
    if (v7)
    {
      v8 = v7;
      v9 = [[PKWebServiceVirtualCardFeatureNetwork alloc] initWithDictionary:v6 network:[v7 integerValue]];
      if (v9)
      {
        [*(a1 + 40) setObject:v9 forKeyedSubscript:v8];
      }
    }

    else
    {
      v14 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v5;
        _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Couldn't parse version requirement for network: Key was not a number: '%@'", &v15, 0xCu);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v15 = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Couldn't parse version requirement for network: Unexpected class (key: %@, value: %@)", &v15, 0x16u);
    }
  }
}

- (PKWebServiceVirtualCardFeatureNetwork)initWithDictionary:(id)dictionary network:(int64_t)network
{
  dictionaryCopy = dictionary;
  v7 = [(PKWebServiceVirtualCardFeatureNetwork *)self init];
  v8 = v7;
  if (v7)
  {
    v7->_network = network;
    v7->_implicitlySupported = [dictionaryCopy PKBoolForKey:@"implicitlySupported"];
    v9 = [dictionaryCopy PKNumberForKey:@"refreshType"];
    refreshType = v8->_refreshType;
    v8->_refreshType = v9;

    v11 = [dictionaryCopy PKDictionaryForKey:@"versionRange"];
    v12 = [[PKOSVersionRequirementRange alloc] initWithDictionary:v11];
    versions = v8->_versions;
    v8->_versions = v12;
  }

  return v8;
}

- (BOOL)isSupportedOnDevice:(id)device
{
  if (!self->_versions)
  {
    return 1;
  }

  selfCopy = self;
  deviceClass = [device deviceClass];
  v5 = +[PKOSVersionRequirement fromDeviceVersion];
  LOBYTE(selfCopy) = [(PKOSVersionRequirementRange *)selfCopy->_versions versionMeetsRequirements:v5 deviceClass:deviceClass];

  return selfCopy;
}

@end