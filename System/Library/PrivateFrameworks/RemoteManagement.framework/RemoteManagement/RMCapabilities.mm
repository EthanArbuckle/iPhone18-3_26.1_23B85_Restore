@interface RMCapabilities
+ (BOOL)isClassItemSupported:(Class)a3 enrollmentType:(int64_t)a4 scope:(int64_t)a5 protocolType:(unint64_t)a6;
+ (BOOL)isConfigurationSchemaItemSupported:(id)a3 enrollmentType:(int64_t)a4 scope:(int64_t)a5 protocolType:(unint64_t)a6;
+ (BOOL)isStatusSchemaItemSupported:(id)a3 enrollmentType:(int64_t)a4 scope:(int64_t)a5 protocolType:(unint64_t)a6;
+ (NSMutableDictionary)capabilitiesByCapabilitiesType;
+ (id)_clientCapabilitiesModelForEnrollmentType:(int64_t)a3 scope:(int64_t)a4 protocolType:(unint64_t)a5;
+ (id)_supportedActivationsForEnrollmentType:(int64_t)a3 scope:(int64_t)a4 protocolType:(unint64_t)a5;
+ (id)_supportedAssetsForEnrollmentType:(int64_t)a3 scope:(int64_t)a4 protocolType:(unint64_t)a5;
+ (id)_supportedClasses:(id)a3 enrollmentType:(int64_t)a4 scope:(int64_t)a5 protocolType:(unint64_t)a6;
+ (id)_supportedConfigurationSchemas:(id)a3 enrollmentType:(int64_t)a4 scope:(int64_t)a5 protocolType:(unint64_t)a6;
+ (id)_supportedConfigurationsForEnrollmentType:(int64_t)a3 scope:(int64_t)a4 protocolType:(unint64_t)a5;
+ (id)_supportedManagementForEnrollmentType:(int64_t)a3 scope:(int64_t)a4 protocolType:(unint64_t)a5;
+ (id)_supportedPayloadsForEnrollmentType:(int64_t)a3 scope:(int64_t)a4 protocolType:(unint64_t)a5;
+ (id)_supportedStatusClasses:(id)a3 enrollmentType:(int64_t)a4 scope:(int64_t)a5 protocolType:(unint64_t)a6;
+ (id)_supportedStatusItemsForEnrollmentType:(int64_t)a3 scope:(int64_t)a4 protocolType:(unint64_t)a5;
+ (id)_supportedStatusSchemas:(id)a3 enrollmentType:(int64_t)a4 scope:(int64_t)a5 protocolType:(unint64_t)a6;
+ (id)capabilitiesForEnrollmentType:(int64_t)a3 scope:(int64_t)a4 protocolType:(unint64_t)a5;
- (RMCapabilities)initWithClientCapabilitiesModel:(id)a3;
@end

@implementation RMCapabilities

+ (id)capabilitiesForEnrollmentType:(int64_t)a3 scope:(int64_t)a4 protocolType:(unint64_t)a5
{
  v9 = [NSString stringWithFormat:@"%ld-%ld-%lu", a3, a4, a5];
  v10 = [a1 capabilitiesByCapabilitiesType];
  v11 = [v10 objectForKeyedSubscript:v9];

  if (!v11)
  {
    v12 = [RMCapabilities alloc];
    v13 = [RMCapabilities _clientCapabilitiesModelForEnrollmentType:a3 scope:a4 protocolType:a5];
    v11 = [(RMCapabilities *)v12 initWithClientCapabilitiesModel:v13];

    v14 = [a1 capabilitiesByCapabilitiesType];
    [v14 setObject:v11 forKeyedSubscript:v9];
  }

  return v11;
}

+ (BOOL)isClassItemSupported:(Class)a3 enrollmentType:(int64_t)a4 scope:(int64_t)a5 protocolType:(unint64_t)a6
{
  v9 = [RMModelSharedDefinitions currentPlatform:a3];

  return [(objc_class *)a3 isSupportedForPlatform:v9 scope:a5 enrollmentType:a4];
}

+ (BOOL)isConfigurationSchemaItemSupported:(id)a3 enrollmentType:(int64_t)a4 scope:(int64_t)a5 protocolType:(unint64_t)a6
{
  v8 = a3;
  LOBYTE(a5) = [v8 isSupportedForPlatform:+[RMModelSharedDefinitions currentPlatform](RMModelSharedDefinitions scope:"currentPlatform") enrollmentType:{a5, a4}];

  return a5;
}

+ (BOOL)isStatusSchemaItemSupported:(id)a3 enrollmentType:(int64_t)a4 scope:(int64_t)a5 protocolType:(unint64_t)a6
{
  v8 = a3;
  LOBYTE(a5) = [v8 isSupportedForPlatform:+[RMModelSharedDefinitions currentPlatform](RMModelSharedDefinitions scope:"currentPlatform") enrollmentType:{a5, a4}];

  return a5;
}

+ (NSMutableDictionary)capabilitiesByCapabilitiesType
{
  if (qword_1000E6700 != -1)
  {
    sub_10000CA3C();
  }

  v3 = qword_1000E66F8;

  return v3;
}

- (RMCapabilities)initWithClientCapabilitiesModel:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = RMCapabilities;
  v6 = [(RMCapabilities *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_status, a3);
    v8 = v5;
    v9 = [v8 serializeWithType:1];
    v10 = [NSJSONSerialization dataWithJSONObject:v9 options:10 error:0];

    v11 = [v10 RMModelSHA1HexString];

    versionHash = v7->_versionHash;
    v7->_versionHash = v11;
  }

  return v7;
}

+ (id)_clientCapabilitiesModelForEnrollmentType:(int64_t)a3 scope:(int64_t)a4 protocolType:(unint64_t)a5
{
  v9 = [RMModelAnyPayload buildFromDictionary:&__NSDictionary0__struct];
  v10 = [a1 _supportedPayloadsForEnrollmentType:a3 scope:a4 protocolType:a5];
  v11 = [RMModelStatusManagementClientCapabilities buildWithSupportedVersions:&off_1000D6E08 supportedFeatures:v9 supportedPayloads:v10];

  return v11;
}

+ (id)_supportedPayloadsForEnrollmentType:(int64_t)a3 scope:(int64_t)a4 protocolType:(unint64_t)a5
{
  v9 = [a1 _supportedActivationsForEnrollmentType:? scope:? protocolType:?];
  v10 = [a1 _supportedAssetsForEnrollmentType:a3 scope:a4 protocolType:a5];
  v11 = [a1 _supportedConfigurationsForEnrollmentType:a3 scope:a4 protocolType:a5];
  v12 = [a1 _supportedManagementForEnrollmentType:a3 scope:a4 protocolType:a5];
  v13 = [a1 _supportedStatusItemsForEnrollmentType:a3 scope:a4 protocolType:a5];
  v14 = [RMModelStatusManagementClientCapabilities_SupportedPayloadsDeclarations buildWithActivations:v9 assets:v10 configurations:v11 management:v12];
  v15 = [RMModelStatusManagementClientCapabilities_SupportedPayloads buildWithDeclarations:v14 statusItems:v13];

  return v15;
}

+ (id)_supportedActivationsForEnrollmentType:(int64_t)a3 scope:(int64_t)a4 protocolType:(unint64_t)a5
{
  v9 = +[RMModelClasses allActivationClasses];
  v10 = [a1 _supportedClasses:v9 enrollmentType:a3 scope:a4 protocolType:a5];

  return v10;
}

+ (id)_supportedAssetsForEnrollmentType:(int64_t)a3 scope:(int64_t)a4 protocolType:(unint64_t)a5
{
  v9 = +[RMModelClasses allAssetClasses];
  v10 = [a1 _supportedClasses:v9 enrollmentType:a3 scope:a4 protocolType:a5];

  return v10;
}

+ (id)_supportedConfigurationsForEnrollmentType:(int64_t)a3 scope:(int64_t)a4 protocolType:(unint64_t)a5
{
  v9 = +[RMModelClasses allConfigurationClasses];
  v10 = [a1 _supportedClasses:v9 enrollmentType:a3 scope:a4 protocolType:a5];

  v11 = +[RMModelConfigurationSchema schemas];
  v12 = [v11 allValues];
  v13 = [a1 _supportedConfigurationSchemas:v12 enrollmentType:a3 scope:a4 protocolType:a5];

  v14 = [v10 arrayByAddingObjectsFromArray:v13];
  v15 = [v14 mutableCopy];

  [v15 sortUsingSelector:"caseInsensitiveCompare:"];

  return v15;
}

+ (id)_supportedManagementForEnrollmentType:(int64_t)a3 scope:(int64_t)a4 protocolType:(unint64_t)a5
{
  v9 = +[RMModelClasses allManagementClasses];
  v10 = [a1 _supportedClasses:v9 enrollmentType:a3 scope:a4 protocolType:a5];

  return v10;
}

+ (id)_supportedStatusItemsForEnrollmentType:(int64_t)a3 scope:(int64_t)a4 protocolType:(unint64_t)a5
{
  v9 = +[RMModelClasses allStatusItemClasses];
  v10 = [v9 mutableCopy];

  if (a5)
  {
    [v10 removeObject:objc_opt_class()];
  }

  v11 = [a1 _supportedStatusClasses:v10 enrollmentType:a3 scope:a4 protocolType:a5];
  v12 = +[RMModelStatusSchema schemas];
  v13 = [v12 allValues];
  v14 = [a1 _supportedStatusSchemas:v13 enrollmentType:a3 scope:a4 protocolType:a5];

  v15 = [v11 arrayByAddingObjectsFromArray:v14];
  v16 = [v15 mutableCopy];

  [v16 sortUsingSelector:"caseInsensitiveCompare:"];

  return v16;
}

+ (id)_supportedClasses:(id)a3 enrollmentType:(int64_t)a4 scope:(int64_t)a5 protocolType:(unint64_t)a6
{
  v9 = a3;
  v18 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = [v15 registeredIdentifier];
        if (+[RMFeatureFlags isAllowedDeclarationType:](RMFeatureFlags, "isAllowedDeclarationType:", v16) && [a1 isClassItemSupported:v15 enrollmentType:a4 scope:a5 protocolType:a6])
        {
          [v18 addObject:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  [v18 sortUsingSelector:"caseInsensitiveCompare:"];

  return v18;
}

+ (id)_supportedConfigurationSchemas:(id)a3 enrollmentType:(int64_t)a4 scope:(int64_t)a5 protocolType:(unint64_t)a6
{
  v9 = a3;
  v18 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = [v15 configurationType];
        if (+[RMFeatureFlags isAllowedDeclarationType:](RMFeatureFlags, "isAllowedDeclarationType:", v16) && [a1 isConfigurationSchemaItemSupported:v15 enrollmentType:a4 scope:a5 protocolType:a6])
        {
          [v18 addObject:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  [v18 sortUsingSelector:"caseInsensitiveCompare:"];

  return v18;
}

+ (id)_supportedStatusClasses:(id)a3 enrollmentType:(int64_t)a4 scope:(int64_t)a5 protocolType:(unint64_t)a6
{
  v9 = a3;
  v18 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = [v15 statusItemType];
        if (+[RMFeatureFlags isAllowedStatusItem:](RMFeatureFlags, "isAllowedStatusItem:", v16) && [a1 isClassItemSupported:v15 enrollmentType:a4 scope:a5 protocolType:a6])
        {
          [v18 addObject:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  [v18 sortUsingSelector:"caseInsensitiveCompare:"];

  return v18;
}

+ (id)_supportedStatusSchemas:(id)a3 enrollmentType:(int64_t)a4 scope:(int64_t)a5 protocolType:(unint64_t)a6
{
  v9 = a3;
  v18 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = [v15 statusType];
        if (+[RMFeatureFlags isAllowedDeclarationType:](RMFeatureFlags, "isAllowedDeclarationType:", v16) && [a1 isStatusSchemaItemSupported:v15 enrollmentType:a4 scope:a5 protocolType:a6])
        {
          [v18 addObject:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  [v18 sortUsingSelector:"caseInsensitiveCompare:"];

  return v18;
}

@end