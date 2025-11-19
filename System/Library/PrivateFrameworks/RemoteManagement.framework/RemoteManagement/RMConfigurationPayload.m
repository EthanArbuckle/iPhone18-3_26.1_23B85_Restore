@interface RMConfigurationPayload
+ (BOOL)isSignificantChange:(id)a3;
- (BOOL)_loadAnyDeclaration:(id)a3 error:(id *)a4;
- (BOOL)_updatePropertiesForConfiguration:(id)a3 error:(id *)a4;
- (BOOL)loadPayload:(id)a3 error:(id *)a4;
- (BOOL)reloadReturningError:(id *)a3;
- (id)reportDetails;
@end

@implementation RMConfigurationPayload

+ (BOOL)isSignificantChange:(id)a3
{
  v3 = a3;
  v4 = [NSSet setWithObject:@"ui"];
  v5 = [v3 isSubsetOfSet:v4];

  return v5 ^ 1;
}

- (id)reportDetails
{
  v16.receiver = self;
  v16.super_class = RMConfigurationPayload;
  v3 = [(RMDeclarationPayload *)&v16 reportDetails];
  v4 = [v3 mutableCopy];

  v5 = [(RMConfigurationPayload *)self assetReferences];
  if ([v5 count])
  {
    v6 = [v5 valueForKey:@"assetIdentifier"];
    v7 = [v6 allObjects];
    v8 = [v7 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
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
    v11 = [v9 visible];
    v12 = @"hidden";
    if (v11)
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

- (BOOL)loadPayload:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(RMConfigurationPayload *)self _loadAnyDeclaration:v6 error:a4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
      v21 = 0;
      v9 = [v8 serializeAsDataWithType:0 error:&v21];
      v10 = v21;
      v11 = v10;
      if (v9)
      {
        [(RMConfigurationPayload *)self setPayload:v9];
        v12 = [v8 declarationType];
        [(RMConfigurationPayload *)self setDeclarationType:v12];

        [(RMConfigurationPayload *)self setLoadState:1];
        v13 = [(RMConfigurationPayload *)self serverToken];
        v14 = [v8 declarationServerToken];
        if (v13 != v14 && ([v13 isEqualToString:v14] & 1) == 0)
        {
          [(RMConfigurationPayload *)self setServerToken:v14];
        }

        v7 = [(RMConfigurationPayload *)self _updatePropertiesForConfiguration:v8 error:a4];
      }

      else
      {
        if (a4 && v10)
        {
          v19 = v10;
          *a4 = v11;
        }

        [(RMConfigurationPayload *)self failedLoadingWithError:v11];
        v7 = 0;
      }
    }

    else
    {
      v15 = +[RMModelConfigurationBase rm_payloadTypeName];
      v16 = [objc_opt_class() rm_payloadTypeName];
      v17 = [RMErrorUtilities createIncorrectPayloadTypeErrorWithExpectedType:v15 actualType:v16];

      if (a4 && v17)
      {
        v18 = v17;
        *a4 = v17;
      }

      [(RMConfigurationPayload *)self failedLoadingWithError:v17];

      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)reloadReturningError:(id *)a3
{
  v5 = [(RMConfigurationPayload *)self payload];
  v14 = 0;
  v6 = [RMModelDeclarationBase loadData:v5 serializationType:0 error:&v14];
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
      v8 = [(RMConfigurationPayload *)self _updatePropertiesForConfiguration:v6 error:a3];
      if (v8)
      {
        [(RMConfigurationPayload *)self setLoadState:1];
      }
    }

    else
    {
      v9 = +[RMModelConfigurationBase rm_payloadTypeName];
      v10 = [objc_opt_class() rm_payloadTypeName];
      v11 = [RMErrorUtilities createIncorrectPayloadTypeErrorWithExpectedType:v9 actualType:v10];

      if (a3 && v11)
      {
        v12 = v11;
        *a3 = v11;
      }

      [(RMConfigurationPayload *)self failedLoadingWithError:v11];

      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (BOOL)_loadAnyDeclaration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15 = 0;
  v7 = [v6 serializeAsDataWithType:0 error:&v15];
  v8 = v15;
  v9 = v8;
  if (v7)
  {
    [(RMConfigurationPayload *)self setPayload:v7];
    v10 = [v6 declarationType];
    [(RMConfigurationPayload *)self setDeclarationType:v10];

    v11 = [(RMConfigurationPayload *)self serverToken];
    v12 = [v6 declarationServerToken];
    if (v11 != v12 && ([v11 isEqualToString:v12] & 1) == 0)
    {
      [(RMConfigurationPayload *)self setServerToken:v12];
    }

    [(RMConfigurationPayload *)self setLoadState:4];
  }

  else
  {
    if (a4 && v8)
    {
      v13 = v8;
      *a4 = v9;
    }

    [(RMConfigurationPayload *)self failedLoadingWithError:v9];
  }

  return v7 != 0;
}

- (BOOL)_updatePropertiesForConfiguration:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(RMConfigurationPayload *)self managedObjectContext];
  v20 = v5;
  v7 = [v5 assetReferences];
  v8 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v7 count]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v7;
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

        v14 = [*(*(&v21 + 1) + 8 * v13) identifier];
        v15 = [v8 objectForKeyedSubscript:v14];

        if (!v15)
        {
          v16 = [[RMAssetPayloadReference alloc] initWithContext:v6];
          [(RMAssetPayloadReference *)v16 setAssetIdentifier:v14];
          [v8 setObject:v16 forKeyedSubscript:v14];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v17 = [v8 allValues];
  v18 = [NSSet setWithArray:v17];
  [(RMConfigurationPayload *)self setAssetReferences:v18];

  return 1;
}

@end