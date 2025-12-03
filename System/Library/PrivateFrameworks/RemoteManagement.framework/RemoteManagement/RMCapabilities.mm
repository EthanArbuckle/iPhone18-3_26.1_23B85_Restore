@interface RMCapabilities
+ (BOOL)isClassItemSupported:(Class)supported enrollmentType:(int64_t)type scope:(int64_t)scope protocolType:(unint64_t)protocolType;
+ (BOOL)isConfigurationSchemaItemSupported:(id)supported enrollmentType:(int64_t)type scope:(int64_t)scope protocolType:(unint64_t)protocolType;
+ (BOOL)isStatusSchemaItemSupported:(id)supported enrollmentType:(int64_t)type scope:(int64_t)scope protocolType:(unint64_t)protocolType;
+ (NSMutableDictionary)capabilitiesByCapabilitiesType;
+ (id)_clientCapabilitiesModelForEnrollmentType:(int64_t)type scope:(int64_t)scope protocolType:(unint64_t)protocolType;
+ (id)_supportedActivationsForEnrollmentType:(int64_t)type scope:(int64_t)scope protocolType:(unint64_t)protocolType;
+ (id)_supportedAssetsForEnrollmentType:(int64_t)type scope:(int64_t)scope protocolType:(unint64_t)protocolType;
+ (id)_supportedClasses:(id)classes enrollmentType:(int64_t)type scope:(int64_t)scope protocolType:(unint64_t)protocolType;
+ (id)_supportedConfigurationSchemas:(id)schemas enrollmentType:(int64_t)type scope:(int64_t)scope protocolType:(unint64_t)protocolType;
+ (id)_supportedConfigurationsForEnrollmentType:(int64_t)type scope:(int64_t)scope protocolType:(unint64_t)protocolType;
+ (id)_supportedManagementForEnrollmentType:(int64_t)type scope:(int64_t)scope protocolType:(unint64_t)protocolType;
+ (id)_supportedPayloadsForEnrollmentType:(int64_t)type scope:(int64_t)scope protocolType:(unint64_t)protocolType;
+ (id)_supportedStatusClasses:(id)classes enrollmentType:(int64_t)type scope:(int64_t)scope protocolType:(unint64_t)protocolType;
+ (id)_supportedStatusItemsForEnrollmentType:(int64_t)type scope:(int64_t)scope protocolType:(unint64_t)protocolType;
+ (id)_supportedStatusSchemas:(id)schemas enrollmentType:(int64_t)type scope:(int64_t)scope protocolType:(unint64_t)protocolType;
+ (id)capabilitiesForEnrollmentType:(int64_t)type scope:(int64_t)scope protocolType:(unint64_t)protocolType;
- (RMCapabilities)initWithClientCapabilitiesModel:(id)model;
@end

@implementation RMCapabilities

+ (id)capabilitiesForEnrollmentType:(int64_t)type scope:(int64_t)scope protocolType:(unint64_t)protocolType
{
  protocolType = [NSString stringWithFormat:@"%ld-%ld-%lu", type, scope, protocolType];
  capabilitiesByCapabilitiesType = [self capabilitiesByCapabilitiesType];
  v11 = [capabilitiesByCapabilitiesType objectForKeyedSubscript:protocolType];

  if (!v11)
  {
    v12 = [RMCapabilities alloc];
    v13 = [RMCapabilities _clientCapabilitiesModelForEnrollmentType:type scope:scope protocolType:protocolType];
    v11 = [(RMCapabilities *)v12 initWithClientCapabilitiesModel:v13];

    capabilitiesByCapabilitiesType2 = [self capabilitiesByCapabilitiesType];
    [capabilitiesByCapabilitiesType2 setObject:v11 forKeyedSubscript:protocolType];
  }

  return v11;
}

+ (BOOL)isClassItemSupported:(Class)supported enrollmentType:(int64_t)type scope:(int64_t)scope protocolType:(unint64_t)protocolType
{
  v9 = [RMModelSharedDefinitions currentPlatform:supported];

  return [(objc_class *)supported isSupportedForPlatform:v9 scope:scope enrollmentType:type];
}

+ (BOOL)isConfigurationSchemaItemSupported:(id)supported enrollmentType:(int64_t)type scope:(int64_t)scope protocolType:(unint64_t)protocolType
{
  supportedCopy = supported;
  LOBYTE(scope) = [supportedCopy isSupportedForPlatform:+[RMModelSharedDefinitions currentPlatform](RMModelSharedDefinitions scope:"currentPlatform") enrollmentType:{scope, type}];

  return scope;
}

+ (BOOL)isStatusSchemaItemSupported:(id)supported enrollmentType:(int64_t)type scope:(int64_t)scope protocolType:(unint64_t)protocolType
{
  supportedCopy = supported;
  LOBYTE(scope) = [supportedCopy isSupportedForPlatform:+[RMModelSharedDefinitions currentPlatform](RMModelSharedDefinitions scope:"currentPlatform") enrollmentType:{scope, type}];

  return scope;
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

- (RMCapabilities)initWithClientCapabilitiesModel:(id)model
{
  modelCopy = model;
  v14.receiver = self;
  v14.super_class = RMCapabilities;
  v6 = [(RMCapabilities *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_status, model);
    v8 = modelCopy;
    v9 = [v8 serializeWithType:1];
    v10 = [NSJSONSerialization dataWithJSONObject:v9 options:10 error:0];

    rMModelSHA1HexString = [v10 RMModelSHA1HexString];

    versionHash = v7->_versionHash;
    v7->_versionHash = rMModelSHA1HexString;
  }

  return v7;
}

+ (id)_clientCapabilitiesModelForEnrollmentType:(int64_t)type scope:(int64_t)scope protocolType:(unint64_t)protocolType
{
  v9 = [RMModelAnyPayload buildFromDictionary:&__NSDictionary0__struct];
  v10 = [self _supportedPayloadsForEnrollmentType:type scope:scope protocolType:protocolType];
  v11 = [RMModelStatusManagementClientCapabilities buildWithSupportedVersions:&off_1000D6E08 supportedFeatures:v9 supportedPayloads:v10];

  return v11;
}

+ (id)_supportedPayloadsForEnrollmentType:(int64_t)type scope:(int64_t)scope protocolType:(unint64_t)protocolType
{
  v9 = [self _supportedActivationsForEnrollmentType:? scope:? protocolType:?];
  v10 = [self _supportedAssetsForEnrollmentType:type scope:scope protocolType:protocolType];
  v11 = [self _supportedConfigurationsForEnrollmentType:type scope:scope protocolType:protocolType];
  v12 = [self _supportedManagementForEnrollmentType:type scope:scope protocolType:protocolType];
  v13 = [self _supportedStatusItemsForEnrollmentType:type scope:scope protocolType:protocolType];
  v14 = [RMModelStatusManagementClientCapabilities_SupportedPayloadsDeclarations buildWithActivations:v9 assets:v10 configurations:v11 management:v12];
  v15 = [RMModelStatusManagementClientCapabilities_SupportedPayloads buildWithDeclarations:v14 statusItems:v13];

  return v15;
}

+ (id)_supportedActivationsForEnrollmentType:(int64_t)type scope:(int64_t)scope protocolType:(unint64_t)protocolType
{
  v9 = +[RMModelClasses allActivationClasses];
  v10 = [self _supportedClasses:v9 enrollmentType:type scope:scope protocolType:protocolType];

  return v10;
}

+ (id)_supportedAssetsForEnrollmentType:(int64_t)type scope:(int64_t)scope protocolType:(unint64_t)protocolType
{
  v9 = +[RMModelClasses allAssetClasses];
  v10 = [self _supportedClasses:v9 enrollmentType:type scope:scope protocolType:protocolType];

  return v10;
}

+ (id)_supportedConfigurationsForEnrollmentType:(int64_t)type scope:(int64_t)scope protocolType:(unint64_t)protocolType
{
  v9 = +[RMModelClasses allConfigurationClasses];
  v10 = [self _supportedClasses:v9 enrollmentType:type scope:scope protocolType:protocolType];

  v11 = +[RMModelConfigurationSchema schemas];
  allValues = [v11 allValues];
  v13 = [self _supportedConfigurationSchemas:allValues enrollmentType:type scope:scope protocolType:protocolType];

  v14 = [v10 arrayByAddingObjectsFromArray:v13];
  v15 = [v14 mutableCopy];

  [v15 sortUsingSelector:"caseInsensitiveCompare:"];

  return v15;
}

+ (id)_supportedManagementForEnrollmentType:(int64_t)type scope:(int64_t)scope protocolType:(unint64_t)protocolType
{
  v9 = +[RMModelClasses allManagementClasses];
  v10 = [self _supportedClasses:v9 enrollmentType:type scope:scope protocolType:protocolType];

  return v10;
}

+ (id)_supportedStatusItemsForEnrollmentType:(int64_t)type scope:(int64_t)scope protocolType:(unint64_t)protocolType
{
  v9 = +[RMModelClasses allStatusItemClasses];
  v10 = [v9 mutableCopy];

  if (protocolType)
  {
    [v10 removeObject:objc_opt_class()];
  }

  v11 = [self _supportedStatusClasses:v10 enrollmentType:type scope:scope protocolType:protocolType];
  v12 = +[RMModelStatusSchema schemas];
  allValues = [v12 allValues];
  v14 = [self _supportedStatusSchemas:allValues enrollmentType:type scope:scope protocolType:protocolType];

  v15 = [v11 arrayByAddingObjectsFromArray:v14];
  v16 = [v15 mutableCopy];

  [v16 sortUsingSelector:"caseInsensitiveCompare:"];

  return v16;
}

+ (id)_supportedClasses:(id)classes enrollmentType:(int64_t)type scope:(int64_t)scope protocolType:(unint64_t)protocolType
{
  classesCopy = classes;
  v18 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [classesCopy count]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = classesCopy;
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
        registeredIdentifier = [v15 registeredIdentifier];
        if (+[RMFeatureFlags isAllowedDeclarationType:](RMFeatureFlags, "isAllowedDeclarationType:", registeredIdentifier) && [self isClassItemSupported:v15 enrollmentType:type scope:scope protocolType:protocolType])
        {
          [v18 addObject:registeredIdentifier];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  [v18 sortUsingSelector:"caseInsensitiveCompare:"];

  return v18;
}

+ (id)_supportedConfigurationSchemas:(id)schemas enrollmentType:(int64_t)type scope:(int64_t)scope protocolType:(unint64_t)protocolType
{
  schemasCopy = schemas;
  v18 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [schemasCopy count]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = schemasCopy;
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
        configurationType = [v15 configurationType];
        if (+[RMFeatureFlags isAllowedDeclarationType:](RMFeatureFlags, "isAllowedDeclarationType:", configurationType) && [self isConfigurationSchemaItemSupported:v15 enrollmentType:type scope:scope protocolType:protocolType])
        {
          [v18 addObject:configurationType];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  [v18 sortUsingSelector:"caseInsensitiveCompare:"];

  return v18;
}

+ (id)_supportedStatusClasses:(id)classes enrollmentType:(int64_t)type scope:(int64_t)scope protocolType:(unint64_t)protocolType
{
  classesCopy = classes;
  v18 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [classesCopy count]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = classesCopy;
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
        statusItemType = [v15 statusItemType];
        if (+[RMFeatureFlags isAllowedStatusItem:](RMFeatureFlags, "isAllowedStatusItem:", statusItemType) && [self isClassItemSupported:v15 enrollmentType:type scope:scope protocolType:protocolType])
        {
          [v18 addObject:statusItemType];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  [v18 sortUsingSelector:"caseInsensitiveCompare:"];

  return v18;
}

+ (id)_supportedStatusSchemas:(id)schemas enrollmentType:(int64_t)type scope:(int64_t)scope protocolType:(unint64_t)protocolType
{
  schemasCopy = schemas;
  v18 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [schemasCopy count]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = schemasCopy;
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
        statusType = [v15 statusType];
        if (+[RMFeatureFlags isAllowedDeclarationType:](RMFeatureFlags, "isAllowedDeclarationType:", statusType) && [self isStatusSchemaItemSupported:v15 enrollmentType:type scope:scope protocolType:protocolType])
        {
          [v18 addObject:statusType];
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