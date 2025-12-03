@interface RMAssetPayload
- (BOOL)_loadAnyDeclaration:(id)declaration error:(id *)error;
- (BOOL)loadPayload:(id)payload error:(id *)error;
- (BOOL)reloadReturningError:(id *)error;
- (id)reportDetails;
@end

@implementation RMAssetPayload

- (id)reportDetails
{
  v8.receiver = self;
  v8.super_class = RMAssetPayload;
  reportDetails = [(RMDeclarationPayload *)&v8 reportDetails];
  v4 = [reportDetails mutableCopy];

  v5 = [NSNumber numberWithBool:[(RMAssetPayload *)self prefetch]];
  [v4 setObject:v5 forKeyedSubscript:@"prefetch"];

  v6 = [v4 copy];

  return v6;
}

- (BOOL)loadPayload:(id)payload error:(id *)error
{
  payloadCopy = payload;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(RMAssetPayload *)self _loadAnyDeclaration:payloadCopy error:error];
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
      v7 = v9 != 0;
      if (v9)
      {
        [(RMAssetPayload *)self setPayload:v9];
        declarationType = [v8 declarationType];
        [(RMAssetPayload *)self setDeclarationType:declarationType];

        serverToken = [(RMAssetPayload *)self serverToken];
        declarationServerToken = [v8 declarationServerToken];
        if (serverToken != declarationServerToken && ([serverToken isEqualToString:declarationServerToken] & 1) == 0)
        {
          [(RMAssetPayload *)self setServerToken:declarationServerToken];
        }

        [(RMAssetPayload *)self setLoadState:1];
      }

      else
      {
        if (error && v10)
        {
          v19 = v10;
          *error = v11;
        }

        [(RMAssetPayload *)self failedLoadingWithError:v11];
      }
    }

    else
    {
      v15 = +[RMModelAssetBase rm_payloadTypeName];
      rm_payloadTypeName = [objc_opt_class() rm_payloadTypeName];
      v17 = [RMErrorUtilities createIncorrectPayloadTypeErrorWithExpectedType:v15 actualType:rm_payloadTypeName];

      if (error && v17)
      {
        v18 = v17;
        *error = v17;
      }

      [(RMAssetPayload *)self failedLoadingWithError:v17];

      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)reloadReturningError:(id *)error
{
  payload = [(RMAssetPayload *)self payload];
  v14 = 0;
  v6 = [RMModelDeclarationBase loadData:payload serializationType:0 error:&v14];
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
      rm_payloadTypeName = [objc_opt_class() rm_payloadTypeName];
      v11 = [RMErrorUtilities createIncorrectPayloadTypeErrorWithExpectedType:v9 actualType:rm_payloadTypeName];

      if (error && v11)
      {
        v12 = v11;
        *error = v11;
      }

      [(RMAssetPayload *)self failedLoadingWithError:v11];

      v8 = 0;
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
    [(RMAssetPayload *)self setPayload:v7];
    declarationType = [declarationCopy declarationType];
    [(RMAssetPayload *)self setDeclarationType:declarationType];

    serverToken = [(RMAssetPayload *)self serverToken];
    declarationServerToken = [declarationCopy declarationServerToken];
    if (serverToken != declarationServerToken && ([serverToken isEqualToString:declarationServerToken] & 1) == 0)
    {
      [(RMAssetPayload *)self setServerToken:declarationServerToken];
    }

    [(RMAssetPayload *)self setLoadState:4];
  }

  else
  {
    if (error && v8)
    {
      v13 = v8;
      *error = v9;
    }

    [(RMAssetPayload *)self failedLoadingWithError:v9];
  }

  return v7 != 0;
}

@end