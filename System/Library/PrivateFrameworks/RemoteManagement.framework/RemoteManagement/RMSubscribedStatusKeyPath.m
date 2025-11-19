@interface RMSubscribedStatusKeyPath
+ (id)fetchRequestWithKeyPaths:(id)a3;
- (BOOL)validateForInsert:(id *)a3;
- (BOOL)validateForUpdate:(id *)a3;
- (id)reportDetails;
- (void)_validateManagementSourceWithErrors:(id)a3;
- (void)_validateSetOncePropertiesWithErrors:(id)a3;
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

- (BOOL)validateForInsert:(id *)a3
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
  [(RMSubscribedStatusKeyPath *)self _validateManagementSourceWithErrors:v5];
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
  v18.super_class = RMSubscribedStatusKeyPath;
  v19 = 0;
  v6 = [(RMSubscribedStatusKeyPath *)&v18 validateForUpdate:&v19];
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
  [(RMSubscribedStatusKeyPath *)self _validateSetOncePropertiesWithErrors:v5];
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
  v4 = [(RMSubscribedStatusKeyPath *)self managementSource];
  if (!v4)
  {
    v5 = [RMErrorUtilities createMissingMandatoryPropertyErrorWithPropertyNamed:@"managementSource" onObject:self];
    [v6 addObject:v5];
  }
}

- (void)_validateSetOncePropertiesWithErrors:(id)a3
{
  v18 = a3;
  v4 = [(RMSubscribedStatusKeyPath *)self changedValues];
  v16 = [v4 allKeys];
  v17 = self;
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
          v12 = [v4 objectForKeyedSubscript:v10];
          if (([v11 isEqual:v12] & 1) == 0)
          {
            v13 = +[NSNull null];
            v14 = [v11 isEqual:v13];

            if ((v14 & 1) == 0)
            {
              v15 = [RMErrorUtilities createCannotChangeValueErrorForPropertyNamed:v10 onObject:v17];
              [v18 addObject:v15];
            }
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }
}

+ (id)fetchRequestWithKeyPaths:(id)a3
{
  v4 = a3;
  v5 = [a1 fetchRequest];
  v6 = [NSPredicate predicateWithFormat:@"(%K IN %@)", @"keyPath", v4];

  [v5 setPredicate:v6];

  return v5;
}

- (id)reportDetails
{
  v4 = objc_opt_new();
  v5 = [(RMSubscribedStatusKeyPath *)self lastAcknowledgedDate];
  [v4 setObject:v5 forKeyedSubscript:@"lastAcknowledgedDate"];

  v6 = [(RMSubscribedStatusKeyPath *)self lastReceivedDate];
  [v4 setObject:v6 forKeyedSubscript:@"lastReceivedDate"];

  v7 = [(RMSubscribedStatusKeyPath *)self keyPath];
  [v4 setObject:v7 forKeyedSubscript:@"keyPath"];

  v8 = [(RMSubscribedStatusKeyPath *)self lastAcknowledgedDate];
  if (v8)
  {
    v2 = [(RMSubscribedStatusKeyPath *)self lastAcknowledgedDate];
    self = [(RMSubscribedStatusKeyPath *)self lastReceivedDate];
    v9 = [v2 isEqualToDate:self] ^ 1;
  }

  else
  {
    v9 = 1;
  }

  v10 = [NSNumber numberWithInt:v9];
  [v4 setObject:v10 forKeyedSubscript:@"needsSync"];

  if (v8)
  {
  }

  return v4;
}

@end