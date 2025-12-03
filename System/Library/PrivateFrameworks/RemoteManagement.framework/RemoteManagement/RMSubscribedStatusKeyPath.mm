@interface RMSubscribedStatusKeyPath
+ (id)fetchRequestWithKeyPaths:(id)paths;
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
- (id)reportDetails;
- (void)_validateManagementSourceWithErrors:(id)errors;
- (void)_validateSetOncePropertiesWithErrors:(id)errors;
- (void)awakeFromInsert;
@end

@implementation RMSubscribedStatusKeyPath

- (void)awakeFromInsert
{
  v4.receiver = self;
  v4.super_class = RMSubscribedStatusKeyPath;
  [(RMSubscribedStatusKeyPath *)&v4 awakeFromInsert];
  v3 = objc_opt_new();
  [(RMSubscribedStatusKeyPath *)self setPrimitiveValue:v3 forKey:@"lastReceivedDate"];
}

- (BOOL)validateForInsert:(id *)insert
{
  v5 = objc_opt_new();
  v18.receiver = self;
  v18.super_class = RMSubscribedStatusKeyPath;
  v19 = 0;
  v6 = [(RMSubscribedStatusKeyPath *)&v18 validateForInsert:&v19];
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
  [(RMSubscribedStatusKeyPath *)self _validateManagementSourceWithErrors:v5];
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
  v18.super_class = RMSubscribedStatusKeyPath;
  v19 = 0;
  v6 = [(RMSubscribedStatusKeyPath *)&v18 validateForUpdate:&v19];
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
  [(RMSubscribedStatusKeyPath *)self _validateSetOncePropertiesWithErrors:v5];
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
  managementSource = [(RMSubscribedStatusKeyPath *)self managementSource];
  if (!managementSource)
  {
    v5 = [RMErrorUtilities createMissingMandatoryPropertyErrorWithPropertyNamed:@"managementSource" onObject:self];
    [errorsCopy addObject:v5];
  }
}

- (void)_validateSetOncePropertiesWithErrors:(id)errors
{
  errorsCopy = errors;
  changedValues = [(RMSubscribedStatusKeyPath *)self changedValues];
  allKeys = [changedValues allKeys];
  selfCopy = self;
  v5 = [(RMSubscribedStatusKeyPath *)self committedValuesForKeys:?];
  v25 = @"managementSource";
  [NSArray arrayWithObjects:&v25 count:1];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v23 = 0u;
  v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
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

      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }
}

+ (id)fetchRequestWithKeyPaths:(id)paths
{
  pathsCopy = paths;
  fetchRequest = [self fetchRequest];
  pathsCopy = [NSPredicate predicateWithFormat:@"(%K IN %@)", @"keyPath", pathsCopy];

  [fetchRequest setPredicate:pathsCopy];

  return fetchRequest;
}

- (id)reportDetails
{
  v4 = objc_opt_new();
  lastAcknowledgedDate = [(RMSubscribedStatusKeyPath *)self lastAcknowledgedDate];
  [v4 setObject:lastAcknowledgedDate forKeyedSubscript:@"lastAcknowledgedDate"];

  lastReceivedDate = [(RMSubscribedStatusKeyPath *)self lastReceivedDate];
  [v4 setObject:lastReceivedDate forKeyedSubscript:@"lastReceivedDate"];

  keyPath = [(RMSubscribedStatusKeyPath *)self keyPath];
  [v4 setObject:keyPath forKeyedSubscript:@"keyPath"];

  lastAcknowledgedDate2 = [(RMSubscribedStatusKeyPath *)self lastAcknowledgedDate];
  if (lastAcknowledgedDate2)
  {
    lastAcknowledgedDate3 = [(RMSubscribedStatusKeyPath *)self lastAcknowledgedDate];
    self = [(RMSubscribedStatusKeyPath *)self lastReceivedDate];
    v9 = [lastAcknowledgedDate3 isEqualToDate:self] ^ 1;
  }

  else
  {
    v9 = 1;
  }

  v10 = [NSNumber numberWithInt:v9];
  [v4 setObject:v10 forKeyedSubscript:@"needsSync"];

  if (lastAcknowledgedDate2)
  {
  }

  return v4;
}

@end