@interface PKWebServiceProvisioningCardReaderFeature
- (BOOL)isSupportedForNetwork:(int64_t)a3 device:(id)a4;
- (PKWebServiceProvisioningCardReaderFeature)initWithDictionary:(id)a3 region:(id)a4;
@end

@implementation PKWebServiceProvisioningCardReaderFeature

- (PKWebServiceProvisioningCardReaderFeature)initWithDictionary:(id)a3 region:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = PKWebServiceProvisioningCardReaderFeature;
  v7 = [(PKWebServiceRegionFeature *)&v12 initWithFeatureType:19 dictionary:v6 region:a4];
  if (v7)
  {
    v8 = [v6 PKArrayContaining:objc_opt_class() forKey:@"networks"];
    v9 = [v8 pk_arrayBySafelyApplyingBlock:&__block_literal_global_22];
    networkConfigurations = v7->_networkConfigurations;
    v7->_networkConfigurations = v9;
  }

  return v7;
}

PKWebServiceProvisioningCardReaderNetworkConfiguration *__71__PKWebServiceProvisioningCardReaderFeature_initWithDictionary_region___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKWebServiceProvisioningCardReaderNetworkConfiguration alloc] initWithDictionary:v2];

  return v3;
}

- (BOOL)isSupportedForNetwork:(int64_t)a3 device:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = [a4 deviceClass];
  v7 = +[PKOSVersionRequirement fromDeviceVersion];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_networkConfigurations;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if ([v13 network] == a3)
        {
          v14 = [v13 versionRange];
          v15 = v14;
          if (!v14 || [v14 versionMeetsRequirements:v7 deviceClass:v6]) && (objc_msgSend(v13, "blocked"))
          {

            v16 = 0;
            goto LABEL_15;
          }
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_15:

  return v16;
}

@end