@interface RMConfigurationPayload
+ (BOOL)isSignificantChange:(id)change;
- (BOOL)_loadAnyDeclaration:(id)declaration error:(id *)error;
- (BOOL)_updatePropertiesForConfiguration:(id)configuration error:(id *)error;
- (BOOL)loadPayload:(id)payload error:(id *)error;
- (BOOL)reloadReturningError:(id *)error;
- (id)reportDetails;
@end

@implementation RMConfigurationPayload

+ (BOOL)isSignificantChange:(id)change
{
  changeCopy = change;
  v4 = [NSSet setWithObject:@"ui"];
  v5 = [changeCopy isSubsetOfSet:v4];

  return v5 ^ 1;
}

- (id)reportDetails
{
  v16.receiver = self;
  v16.super_class = RMConfigurationPayload;
  reportDetails = [(RMDeclarationPayload *)&v16 reportDetails];
  v4 = [reportDetails mutableCopy];

  assetReferences = [(RMConfigurationPayload *)self assetReferences];
  if ([assetReferences count])
  {
    v6 = [assetReferences valueForKey:@"assetIdentifier"];
    allObjects = [v6 allObjects];
    v8 = [allObjects sortedArrayUsingSelector:"caseInsensitiveCompare:"];
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  [v4 setObject:v8 forKeyedSubscript:@"assetReferences"];

  v9 = [(RMConfigurationPayload *)self ui];
  v10 = v9;
  if (v9)
  {
    visible = [v9 visible];
    v12 = @"hidden";
    if (visible)
    {
      v12 = @"visible";
    }

    v13 = v12;
  }

  else
  {
    v13 = @"undefined";
  }

  [v4 setObject:v13 forKeyedSubscript:@"ui"];

  v14 = [v4 copy];

  return v14;
}

- (BOOL)loadPayload:(id)payload error:(id *)error
{
  payloadCopy = payload;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(RMConfigurationPayload *)self _loadAnyDeclaration:payloadCopy error:error];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = payloadCopy;
      v21 = 0;
      v9 = [v8 serializeAsDataWithType:0 error:&v21];
      v10 = v21;
      v11 = v10;
      if (v9)
      {
        [(RMConfigurationPayload *)self setPayload:v9];
        declarationType = [v8 declarationType];
        [(RMConfigurationPayload *)self setDeclarationType:declarationType];

        [(RMConfigurationPayload *)self setLoadState:1];
        serverToken = [(RMConfigurationPayload *)self serverToken];
        declarationServerToken = [v8 declarationServerToken];
        if (serverToken != declarationServerToken && ([serverToken isEqualToString:declarationServerToken] & 1) == 0)
        {
          [(RMConfigurationPayload *)self setServerToken:declarationServerToken];
        }

        v7 = [(RMConfigurationPayload *)self _updatePropertiesForConfiguration:v8 error:error];
      }

      else
      {
        if (error && v10)
        {
          v19 = v10;
          *error = v11;
        }

        [(RMConfigurationPayload *)self failedLoadingWithError:v11];
        v7 = 0;
      }
    }

    else
    {
      v15 = +[RMModelConfigurationBase rm_payloadTypeName];
      rm_payloadTypeName = [objc_opt_class() rm_payloadTypeName];
      v17 = [RMErrorUtilities createIncorrectPayloadTypeErrorWithExpectedType:v15 actualType:rm_payloadTypeName];

      if (error && v17)
      {
        v18 = v17;
        *error = v17;
      }

      [(RMConfigurationPayload *)self failedLoadingWithError:v17];

      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)reloadReturningError:(id *)error
{
  payload = [(RMConfigurationPayload *)self payload];
  v14 = 0;
  v6 = [RMModelDeclarationBase loadData:payload serializationType:0 error:&v14];
  v7 = v14;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(RMConfigurationPayload *)self _updatePropertiesForConfiguration:v6 error:error];
      if (v8)
      {
        [(RMConfigurationPayload *)self setLoadState:1];
      }
    }

    else
    {
      v9 = +[RMModelConfigurationBase rm_payloadTypeName];
      rm_payloadTypeName = [objc_opt_class() rm_payloadTypeName];
      v11 = [RMErrorUtilities createIncorrectPayloadTypeErrorWithExpectedType:v9 actualType:rm_payloadTypeName];

      if (error && v11)
      {
        v12 = v11;
        *error = v11;
      }

      [(RMConfigurationPayload *)self failedLoadingWithError:v11];

      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (BOOL)_loadAnyDeclaration:(id)declaration error:(id *)error
{
  declarationCopy = declaration;
  v15 = 0;
  v7 = [declarationCopy serializeAsDataWithType:0 error:&v15];
  v8 = v15;
  v9 = v8;
  if (v7)
  {
    [(RMConfigurationPayload *)self setPayload:v7];
    declarationType = [declarationCopy declarationType];
    [(RMConfigurationPayload *)self setDeclarationType:declarationType];

    serverToken = [(RMConfigurationPayload *)self serverToken];
    declarationServerToken = [declarationCopy declarationServerToken];
    if (serverToken != declarationServerToken && ([serverToken isEqualToString:declarationServerToken] & 1) == 0)
    {
      [(RMConfigurationPayload *)self setServerToken:declarationServerToken];
    }

    [(RMConfigurationPayload *)self setLoadState:4];
  }

  else
  {
    if (error && v8)
    {
      v13 = v8;
      *error = v9;
    }

    [(RMConfigurationPayload *)self failedLoadingWithError:v9];
  }

  return v7 != 0;
}

- (BOOL)_updatePropertiesForConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  managedObjectContext = [(RMConfigurationPayload *)self managedObjectContext];
  v20 = configurationCopy;
  assetReferences = [configurationCopy assetReferences];
  v8 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [assetReferences count]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = assetReferences;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        identifier = [*(*(&v21 + 1) + 8 * v13) identifier];
        v15 = [v8 objectForKeyedSubscript:identifier];

        if (!v15)
        {
          v16 = [[RMAssetPayloadReference alloc] initWithContext:managedObjectContext];
          [(RMAssetPayloadReference *)v16 setAssetIdentifier:identifier];
          [v8 setObject:v16 forKeyedSubscript:identifier];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  allValues = [v8 allValues];
  v18 = [NSSet setWithArray:allValues];
  [(RMConfigurationPayload *)self setAssetReferences:v18];

  return 1;
}

@end