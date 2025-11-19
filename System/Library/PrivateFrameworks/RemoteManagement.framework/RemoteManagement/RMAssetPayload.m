@interface RMAssetPayload
- (BOOL)_loadAnyDeclaration:(id)a3 error:(id *)a4;
- (BOOL)loadPayload:(id)a3 error:(id *)a4;
- (BOOL)reloadReturningError:(id *)a3;
- (id)reportDetails;
@end

@implementation RMAssetPayload

- (id)reportDetails
{
  v8.receiver = self;
  v8.super_class = RMAssetPayload;
  v3 = [(RMDeclarationPayload *)&v8 reportDetails];
  v4 = [v3 mutableCopy];

  v5 = [NSNumber numberWithBool:[(RMAssetPayload *)self prefetch]];
  [v4 setObject:v5 forKeyedSubscript:@"prefetch"];

  v6 = [v4 copy];

  return v6;
}

- (BOOL)loadPayload:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(RMAssetPayload *)self _loadAnyDeclaration:v6 error:a4];
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
      v7 = v9 != 0;
      if (v9)
      {
        [(RMAssetPayload *)self setPayload:v9];
        v12 = [v8 declarationType];
        [(RMAssetPayload *)self setDeclarationType:v12];

        v13 = [(RMAssetPayload *)self serverToken];
        v14 = [v8 declarationServerToken];
        if (v13 != v14 && ([v13 isEqualToString:v14] & 1) == 0)
        {
          [(RMAssetPayload *)self setServerToken:v14];
        }

        [(RMAssetPayload *)self setLoadState:1];
      }

      else
      {
        if (a4 && v10)
        {
          v19 = v10;
          *a4 = v11;
        }

        [(RMAssetPayload *)self failedLoadingWithError:v11];
      }
    }

    else
    {
      v15 = +[RMModelAssetBase rm_payloadTypeName];
      v16 = [objc_opt_class() rm_payloadTypeName];
      v17 = [RMErrorUtilities createIncorrectPayloadTypeErrorWithExpectedType:v15 actualType:v16];

      if (a4 && v17)
      {
        v18 = v17;
        *a4 = v17;
      }

      [(RMAssetPayload *)self failedLoadingWithError:v17];

      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)reloadReturningError:(id *)a3
{
  v5 = [(RMAssetPayload *)self payload];
  v14 = 0;
  v6 = [RMModelDeclarationBase loadData:v5 serializationType:0 error:&v14];
  v7 = v14;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = 1;
      [(RMAssetPayload *)self setLoadState:1];
    }

    else
    {
      v9 = +[RMModelAssetBase rm_payloadTypeName];
      v10 = [objc_opt_class() rm_payloadTypeName];
      v11 = [RMErrorUtilities createIncorrectPayloadTypeErrorWithExpectedType:v9 actualType:v10];

      if (a3 && v11)
      {
        v12 = v11;
        *a3 = v11;
      }

      [(RMAssetPayload *)self failedLoadingWithError:v11];

      v8 = 0;
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
    [(RMAssetPayload *)self setPayload:v7];
    v10 = [v6 declarationType];
    [(RMAssetPayload *)self setDeclarationType:v10];

    v11 = [(RMAssetPayload *)self serverToken];
    v12 = [v6 declarationServerToken];
    if (v11 != v12 && ([v11 isEqualToString:v12] & 1) == 0)
    {
      [(RMAssetPayload *)self setServerToken:v12];
    }

    [(RMAssetPayload *)self setLoadState:4];
  }

  else
  {
    if (a4 && v8)
    {
      v13 = v8;
      *a4 = v9;
    }

    [(RMAssetPayload *)self failedLoadingWithError:v9];
  }

  return v7 != 0;
}

@end