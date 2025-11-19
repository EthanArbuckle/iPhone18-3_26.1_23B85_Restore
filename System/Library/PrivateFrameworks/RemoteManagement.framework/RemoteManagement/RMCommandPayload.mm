@interface RMCommandPayload
- (BOOL)validateForInsert:(id *)a3;
- (BOOL)validateForUpdate:(id *)a3;
- (NSString)managementSourceIdentifier;
- (id)reportDetails;
@end

@implementation RMCommandPayload

- (NSString)managementSourceIdentifier
{
  v2 = [(RMCommandPayload *)self managementSource];
  v3 = [v2 identifier];

  return v3;
}

- (BOOL)validateForInsert:(id *)a3
{
  v5 = objc_opt_new();
  v20.receiver = self;
  v20.super_class = RMCommandPayload;
  v21 = 0;
  v6 = [(RMCommandPayload *)&v20 validateForInsert:&v21];
  v7 = v21;
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
  v13 = [(RMCommandPayload *)self managementSource];
  if (!v13)
  {
    v14 = [RMErrorUtilities createMissingMandatoryPropertyErrorWithPropertyNamed:@"managementSource" onObject:self];
    [v5 addObject:v14];
  }

  v15 = v5;
  v16 = [v15 count];
  v17 = v16;
  if (a3 && v16)
  {
    v18 = [RMErrorUtilities createMultipleValidationErrorOrReturnTheSingleErrorWithErrors:v15];
    if (v18)
    {
      v18 = v18;
      *a3 = v18;
    }
  }

  return v17 == 0;
}

- (BOOL)validateForUpdate:(id *)a3
{
  v32 = objc_opt_new();
  v38.receiver = self;
  v38.super_class = RMCommandPayload;
  v39 = 0;
  v4 = [(RMCommandPayload *)&v38 validateForUpdate:&v39];
  v5 = v39;
  v6 = v5;
  if (v4)
  {
    goto LABEL_9;
  }

  v7 = [v5 domain];
  if (![v7 isEqualToString:NSCocoaErrorDomain])
  {

    goto LABEL_8;
  }

  v8 = [v6 code];

  if (v8 != 1560)
  {
LABEL_8:
    [v32 addObject:v6];
    goto LABEL_9;
  }

  v9 = [v6 userInfo];
  v10 = [v9 objectForKeyedSubscript:NSDetailedErrorsKey];

  if ([v10 count])
  {
    [v32 addObjectsFromArray:v10];
  }

LABEL_9:
  v29 = v6;
  v30 = a3;
  v11 = [(RMCommandPayload *)self changedValues];
  v28 = [v11 allKeys];
  v12 = [(RMCommandPayload *)self committedValuesForKeys:?];
  v41[0] = @"identifier";
  v41[1] = @"managementSource";
  v41[2] = @"payload";
  [NSArray arrayWithObjects:v41 count:3];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v37 = 0u;
  v13 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v35;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v34 + 1) + 8 * i);
        v18 = [v12 objectForKeyedSubscript:v17];
        if (v18)
        {
          v19 = [v11 objectForKeyedSubscript:v17];
          if (([v18 isEqual:v19] & 1) == 0)
          {
            v20 = +[NSNull null];
            v21 = [v18 isEqual:v20];

            if ((v21 & 1) == 0)
            {
              v22 = [RMErrorUtilities createCannotChangeValueErrorForPropertyNamed:v17 onObject:self];
              [v32 addObject:v22];
            }
          }
        }
      }

      v14 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v14);
  }

  v23 = v32;
  v24 = [v23 count];
  v25 = v24;
  if (v30 && v24)
  {
    v26 = [RMErrorUtilities createMultipleValidationErrorOrReturnTheSingleErrorWithErrors:v23];
    if (v26)
    {
      v26 = v26;
      *v30 = v26;
    }
  }

  return v25 == 0;
}

- (id)reportDetails
{
  v3 = objc_opt_new();
  v4 = [(RMCommandPayload *)self type];
  [v3 setObject:v4 forKeyedSubscript:@"type"];

  v5 = [(RMCommandPayload *)self identifier];
  [v3 setObject:v5 forKeyedSubscript:@"identifier"];

  v6 = [(RMCommandPayload *)self state];
  v7 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v6 status]);
  [v3 setObject:v7 forKeyedSubscript:@"state.status"];

  v8 = [v3 copy];

  return v8;
}

@end