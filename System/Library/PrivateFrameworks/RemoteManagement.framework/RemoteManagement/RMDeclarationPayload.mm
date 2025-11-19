@interface RMDeclarationPayload
- (BOOL)validateForInsert:(id *)a3;
- (BOOL)validateForUpdate:(id *)a3;
- (NSString)description;
- (NSString)managementSourceIdentifier;
- (id)reportDetails;
- (signed)_currentLoadState;
- (void)_validateLoadStateWithErrors:(id)a3;
- (void)_validateManagementSourceWithErrors:(id)a3;
- (void)_validateSetOncePropertiesWithErrors:(id)a3;
@end

@implementation RMDeclarationPayload

- (NSString)description
{
  v3 = [(RMDeclarationPayload *)self entity];
  v4 = [v3 name];
  v5 = [(RMDeclarationPayload *)self identifier];
  v6 = [(RMDeclarationPayload *)self serverToken];
  v7 = [NSString stringWithFormat:@"<%@ { identifier = %@, token = %@ }>", v4, v5, v6];

  return v7;
}

- (NSString)managementSourceIdentifier
{
  v2 = [(RMDeclarationPayload *)self managementSource];
  v3 = [v2 identifier];

  return v3;
}

- (BOOL)validateForInsert:(id *)a3
{
  v5 = objc_opt_new();
  v18.receiver = self;
  v18.super_class = RMDeclarationPayload;
  v19 = 0;
  v6 = [(RMDeclarationPayload *)&v18 validateForInsert:&v19];
  v7 = v19;
  v8 = v7;
  if (v6)
  {
    goto LABEL_9;
  }

  v9 = [v7 domain];
  if (![v9 isEqualToString:NSCocoaErrorDomain])
  {

    goto LABEL_8;
  }

  v10 = [v8 code];

  if (v10 != 1560)
  {
LABEL_8:
    [v5 addObject:v8];
    goto LABEL_9;
  }

  v11 = [v8 userInfo];
  v12 = [v11 objectForKeyedSubscript:NSDetailedErrorsKey];

  if ([v12 count])
  {
    [v5 addObjectsFromArray:v12];
  }

LABEL_9:
  [(RMDeclarationPayload *)self _validateManagementSourceWithErrors:v5];
  [(RMDeclarationPayload *)self _validateLoadStateWithErrors:v5];
  v13 = v5;
  v14 = [v13 count];
  v15 = v14;
  if (a3 && v14)
  {
    v16 = [RMErrorUtilities createMultipleValidationErrorOrReturnTheSingleErrorWithErrors:v13];
    if (v16)
    {
      v16 = v16;
      *a3 = v16;
    }
  }

  return v15 == 0;
}

- (BOOL)validateForUpdate:(id *)a3
{
  v5 = objc_opt_new();
  v18.receiver = self;
  v18.super_class = RMDeclarationPayload;
  v19 = 0;
  v6 = [(RMDeclarationPayload *)&v18 validateForUpdate:&v19];
  v7 = v19;
  v8 = v7;
  if (v6)
  {
    goto LABEL_9;
  }

  v9 = [v7 domain];
  if (![v9 isEqualToString:NSCocoaErrorDomain])
  {

    goto LABEL_8;
  }

  v10 = [v8 code];

  if (v10 != 1560)
  {
LABEL_8:
    [v5 addObject:v8];
    goto LABEL_9;
  }

  v11 = [v8 userInfo];
  v12 = [v11 objectForKeyedSubscript:NSDetailedErrorsKey];

  if ([v12 count])
  {
    [v5 addObjectsFromArray:v12];
  }

LABEL_9:
  [(RMDeclarationPayload *)self _validateSetOncePropertiesWithErrors:v5];
  [(RMDeclarationPayload *)self _validateLoadStateWithErrors:v5];
  v13 = v5;
  v14 = [v13 count];
  v15 = v14;
  if (a3 && v14)
  {
    v16 = [RMErrorUtilities createMultipleValidationErrorOrReturnTheSingleErrorWithErrors:v13];
    if (v16)
    {
      v16 = v16;
      *a3 = v16;
    }
  }

  return v15 == 0;
}

- (void)_validateManagementSourceWithErrors:(id)a3
{
  v6 = a3;
  v4 = [(RMDeclarationPayload *)self managementSource];
  if (!v4)
  {
    v5 = [RMErrorUtilities createMissingMandatoryPropertyErrorWithPropertyNamed:@"managementSource" onObject:self];
    [v6 addObject:v5];
  }
}

- (void)_validateSetOncePropertiesWithErrors:(id)a3
{
  v21 = a3;
  v4 = [(RMDeclarationPayload *)self changedValues];
  v19 = [v4 allKeys];
  v20 = self;
  v5 = [(RMDeclarationPayload *)self committedValuesForKeys:?];
  v28[0] = @"declarationType";
  v28[1] = @"identifier";
  v28[2] = @"managementSource";
  v28[3] = @"payload";
  v28[4] = @"state";
  [NSArray arrayWithObjects:v28 count:5];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v26 = 0u;
  v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:v10];
        if (v11)
        {
          v12 = [v4 objectForKeyedSubscript:v10];
          if (([v11 isEqual:v12] & 1) == 0)
          {
            v13 = +[NSNull null];
            v14 = [v11 isEqual:v13];

            if ((v14 & 1) == 0)
            {
              v15 = [RMErrorUtilities createCannotChangeValueErrorForPropertyNamed:v10 onObject:v20];
              [v21 addObject:v15];
            }
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  v16 = [v5 objectForKeyedSubscript:@"serverToken"];
  if (v16)
  {
    v17 = [v4 objectForKeyedSubscript:@"serverToken"];
    if (-[RMDeclarationPayload _currentLoadState](v20, "_currentLoadState") && ([v16 isEqual:v17] & 1) == 0)
    {
      v18 = [RMErrorUtilities createCannotChangeValueErrorForPropertyNamed:@"serverToken" onObject:v20];
      [v21 addObject:v18];
    }
  }
}

- (signed)_currentLoadState
{
  v3 = [(RMDeclarationPayload *)self changedValues];
  v4 = [v3 objectForKeyedSubscript:@"loadState"];

  if (v4)
  {
    v10 = @"loadState";
    v5 = [NSArray arrayWithObjects:&v10 count:1];
    v6 = [(RMDeclarationPayload *)self committedValuesForKeys:v5];
    v7 = [v6 objectForKeyedSubscript:@"loadState"];

    v8 = [v7 integerValue];
  }

  else
  {
    v8 = [(RMDeclarationPayload *)self loadState];
  }

  return v8;
}

- (void)_validateLoadStateWithErrors:(id)a3
{
  v11 = a3;
  v4 = [(RMDeclarationPayload *)self loadState];
  v5 = [(RMDeclarationPayload *)self payload];
  v6 = v5;
  v7 = v4 == 4 || v4 == 1;
  if (v7 && !v5)
  {
    v8 = &off_1000D6E50;
LABEL_11:
    v9 = [NSNumber numberWithShort:v4];
    v10 = [RMErrorUtilities createMismatchedValuesErrorForPropertyNamed:@"loadState" onObject:self expected:v8 actual:v9];
    [v11 addObject:v10];

    goto LABEL_12;
  }

  if (!v4 && v5)
  {
    v4 = 0;
    v8 = &off_1000D6E68;
    goto LABEL_11;
  }

LABEL_12:
}

- (id)reportDetails
{
  v3 = objc_opt_new();
  v4 = [(RMDeclarationPayload *)self declarationType];

  if (v4)
  {
    v5 = [(RMDeclarationPayload *)self declarationType];
    [v3 setObject:v5 forKeyedSubscript:@"declarationType"];
  }

  v6 = [(RMDeclarationPayload *)self identifier];
  [v3 setObject:v6 forKeyedSubscript:@"identifier"];

  v7 = [(RMDeclarationPayload *)self serverToken];
  [v3 setObject:v7 forKeyedSubscript:@"serverToken"];

  v8 = [(RMDeclarationPayload *)self loadState];
  if (v8 > 3)
  {
    v9 = @"unknown";
  }

  else
  {
    v9 = *(&off_1000D19A8 + v8);
  }

  [v3 setObject:v9 forKeyedSubscript:@"loadState"];
  v10 = [(RMDeclarationPayload *)self state];
  if ([v10 conformsToProtocol:&OBJC_PROTOCOL___RMReportDetails])
  {
    v11 = [(RMDeclarationPayload *)self state];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(RMDeclarationPayload *)self state];
      v14 = [v13 reportDetails];
      v15 = @"state";
LABEL_13:
      [v3 setObject:v14 forKeyedSubscript:v15];

      goto LABEL_14;
    }
  }

  else
  {
  }

  v13 = [(RMDeclarationPayload *)self state];
  if ([v13 conformsToProtocol:&OBJC_PROTOCOL___RMDeclarationPayloadActivatableState])
  {
    v16 = [(RMDeclarationPayload *)self state];
    v17 = objc_opt_respondsToSelector();

    if ((v17 & 1) == 0)
    {
      goto LABEL_15;
    }

    v13 = [(RMDeclarationPayload *)self state];
    v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v13 active]);
    v15 = @"active";
    goto LABEL_13;
  }

LABEL_14:

LABEL_15:
  v18 = [v3 copy];

  return v18;
}

@end