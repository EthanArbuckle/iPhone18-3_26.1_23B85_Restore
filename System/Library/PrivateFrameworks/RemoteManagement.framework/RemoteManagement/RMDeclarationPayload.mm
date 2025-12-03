@interface RMDeclarationPayload
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
- (NSString)description;
- (NSString)managementSourceIdentifier;
- (id)reportDetails;
- (signed)_currentLoadState;
- (void)_validateLoadStateWithErrors:(id)errors;
- (void)_validateManagementSourceWithErrors:(id)errors;
- (void)_validateSetOncePropertiesWithErrors:(id)errors;
@end

@implementation RMDeclarationPayload

- (NSString)description
{
  entity = [(RMDeclarationPayload *)self entity];
  name = [entity name];
  identifier = [(RMDeclarationPayload *)self identifier];
  serverToken = [(RMDeclarationPayload *)self serverToken];
  v7 = [NSString stringWithFormat:@"<%@ { identifier = %@, token = %@ }>", name, identifier, serverToken];

  return v7;
}

- (NSString)managementSourceIdentifier
{
  managementSource = [(RMDeclarationPayload *)self managementSource];
  identifier = [managementSource identifier];

  return identifier;
}

- (BOOL)validateForInsert:(id *)insert
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

  domain = [v7 domain];
  if (![domain isEqualToString:NSCocoaErrorDomain])
  {

    goto LABEL_8;
  }

  code = [v8 code];

  if (code != 1560)
  {
LABEL_8:
    [v5 addObject:v8];
    goto LABEL_9;
  }

  userInfo = [v8 userInfo];
  v12 = [userInfo objectForKeyedSubscript:NSDetailedErrorsKey];

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
  if (insert && v14)
  {
    v16 = [RMErrorUtilities createMultipleValidationErrorOrReturnTheSingleErrorWithErrors:v13];
    if (v16)
    {
      v16 = v16;
      *insert = v16;
    }
  }

  return v15 == 0;
}

- (BOOL)validateForUpdate:(id *)update
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

  domain = [v7 domain];
  if (![domain isEqualToString:NSCocoaErrorDomain])
  {

    goto LABEL_8;
  }

  code = [v8 code];

  if (code != 1560)
  {
LABEL_8:
    [v5 addObject:v8];
    goto LABEL_9;
  }

  userInfo = [v8 userInfo];
  v12 = [userInfo objectForKeyedSubscript:NSDetailedErrorsKey];

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
  if (update && v14)
  {
    v16 = [RMErrorUtilities createMultipleValidationErrorOrReturnTheSingleErrorWithErrors:v13];
    if (v16)
    {
      v16 = v16;
      *update = v16;
    }
  }

  return v15 == 0;
}

- (void)_validateManagementSourceWithErrors:(id)errors
{
  errorsCopy = errors;
  managementSource = [(RMDeclarationPayload *)self managementSource];
  if (!managementSource)
  {
    v5 = [RMErrorUtilities createMissingMandatoryPropertyErrorWithPropertyNamed:@"managementSource" onObject:self];
    [errorsCopy addObject:v5];
  }
}

- (void)_validateSetOncePropertiesWithErrors:(id)errors
{
  errorsCopy = errors;
  changedValues = [(RMDeclarationPayload *)self changedValues];
  allKeys = [changedValues allKeys];
  selfCopy = self;
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
          v12 = [changedValues objectForKeyedSubscript:v10];
          if (([v11 isEqual:v12] & 1) == 0)
          {
            v13 = +[NSNull null];
            v14 = [v11 isEqual:v13];

            if ((v14 & 1) == 0)
            {
              v15 = [RMErrorUtilities createCannotChangeValueErrorForPropertyNamed:v10 onObject:selfCopy];
              [errorsCopy addObject:v15];
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
    v17 = [changedValues objectForKeyedSubscript:@"serverToken"];
    if (-[RMDeclarationPayload _currentLoadState](selfCopy, "_currentLoadState") && ([v16 isEqual:v17] & 1) == 0)
    {
      v18 = [RMErrorUtilities createCannotChangeValueErrorForPropertyNamed:@"serverToken" onObject:selfCopy];
      [errorsCopy addObject:v18];
    }
  }
}

- (signed)_currentLoadState
{
  changedValues = [(RMDeclarationPayload *)self changedValues];
  v4 = [changedValues objectForKeyedSubscript:@"loadState"];

  if (v4)
  {
    v10 = @"loadState";
    v5 = [NSArray arrayWithObjects:&v10 count:1];
    v6 = [(RMDeclarationPayload *)self committedValuesForKeys:v5];
    v7 = [v6 objectForKeyedSubscript:@"loadState"];

    integerValue = [v7 integerValue];
  }

  else
  {
    integerValue = [(RMDeclarationPayload *)self loadState];
  }

  return integerValue;
}

- (void)_validateLoadStateWithErrors:(id)errors
{
  errorsCopy = errors;
  loadState = [(RMDeclarationPayload *)self loadState];
  payload = [(RMDeclarationPayload *)self payload];
  v6 = payload;
  v7 = loadState == 4 || loadState == 1;
  if (v7 && !payload)
  {
    v8 = &off_1000D6E50;
LABEL_11:
    v9 = [NSNumber numberWithShort:loadState];
    v10 = [RMErrorUtilities createMismatchedValuesErrorForPropertyNamed:@"loadState" onObject:self expected:v8 actual:v9];
    [errorsCopy addObject:v10];

    goto LABEL_12;
  }

  if (!loadState && payload)
  {
    loadState = 0;
    v8 = &off_1000D6E68;
    goto LABEL_11;
  }

LABEL_12:
}

- (id)reportDetails
{
  v3 = objc_opt_new();
  declarationType = [(RMDeclarationPayload *)self declarationType];

  if (declarationType)
  {
    declarationType2 = [(RMDeclarationPayload *)self declarationType];
    [v3 setObject:declarationType2 forKeyedSubscript:@"declarationType"];
  }

  identifier = [(RMDeclarationPayload *)self identifier];
  [v3 setObject:identifier forKeyedSubscript:@"identifier"];

  serverToken = [(RMDeclarationPayload *)self serverToken];
  [v3 setObject:serverToken forKeyedSubscript:@"serverToken"];

  loadState = [(RMDeclarationPayload *)self loadState];
  if (loadState > 3)
  {
    v9 = @"unknown";
  }

  else
  {
    v9 = *(&off_1000D19A8 + loadState);
  }

  [v3 setObject:v9 forKeyedSubscript:@"loadState"];
  state = [(RMDeclarationPayload *)self state];
  if ([state conformsToProtocol:&OBJC_PROTOCOL___RMReportDetails])
  {
    state2 = [(RMDeclarationPayload *)self state];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      state3 = [(RMDeclarationPayload *)self state];
      reportDetails = [state3 reportDetails];
      v15 = @"state";
LABEL_13:
      [v3 setObject:reportDetails forKeyedSubscript:v15];

      goto LABEL_14;
    }
  }

  else
  {
  }

  state3 = [(RMDeclarationPayload *)self state];
  if ([state3 conformsToProtocol:&OBJC_PROTOCOL___RMDeclarationPayloadActivatableState])
  {
    state4 = [(RMDeclarationPayload *)self state];
    v17 = objc_opt_respondsToSelector();

    if ((v17 & 1) == 0)
    {
      goto LABEL_15;
    }

    state3 = [(RMDeclarationPayload *)self state];
    reportDetails = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [state3 active]);
    v15 = @"active";
    goto LABEL_13;
  }

LABEL_14:

LABEL_15:
  v18 = [v3 copy];

  return v18;
}

@end