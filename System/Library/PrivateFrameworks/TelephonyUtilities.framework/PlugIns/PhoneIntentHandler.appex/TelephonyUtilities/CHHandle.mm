@interface CHHandle
+ (id)tu_normalizedCHHandlesFromTUHandle:(id)a3 isoCountryCodes:(id)a4;
- (TUHandle)tu_tuHandle;
@end

@implementation CHHandle

- (TUHandle)tu_tuHandle
{
  v3 = [(CHHandle *)self value];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(CHHandle *)self type];
    if (v5 < 2)
    {
      v9 = [(CHHandle *)self value];
      v10 = [v9 _appearsToBePhoneNumber];

      if (v10)
      {
        v7 = 2;
      }

      else
      {
        v11 = [(CHHandle *)self value];
        v12 = [v11 _appearsToBeEmail];

        if (v12)
        {
          v7 = 3;
        }

        else
        {
          v7 = 1;
        }
      }
    }

    else
    {
      v6 = 1;
      if (v5 == 2)
      {
        v6 = 2;
      }

      if (v5 == 3)
      {
        v7 = 3;
      }

      else
      {
        v7 = v6;
      }
    }

    v13 = [TUHandle alloc];
    v14 = [(CHHandle *)self value];
    v8 = [v13 initWithType:v7 value:v14];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)tu_normalizedCHHandlesFromTUHandle:(id)a3 isoCountryCodes:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableArray);
  v8 = [v5 type];
  if (v8 == 1)
  {
    v17 = [v5 value];
    v18 = [CHHandle normalizedGenericHandleForValue:v17];
  }

  else if (v8 == 3)
  {
    v17 = [v5 value];
    v18 = [CHHandle normalizedEmailAddressHandleForValue:v17];
  }

  else
  {
    if (v8 != 2)
    {
      goto LABEL_21;
    }

    if ([v6 count])
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = v6;
      v9 = v6;
      v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v24;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v24 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v23 + 1) + 8 * i);
            v15 = [v5 value];
            v16 = [CHHandle normalizedPhoneNumberHandleForValue:v15 isoCountryCode:v14];

            if (v16)
            {
              [v7 addObject:v16];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v11);
      }

      v6 = v22;
      goto LABEL_21;
    }

    v17 = [v5 value];
    v18 = [CHHandle normalizedPhoneNumberHandleForValue:v17 isoCountryCode:0];
  }

  v19 = v18;

  if (v19)
  {
    [v7 addObject:v19];
  }

LABEL_21:
  v20 = [v7 copy];

  return v20;
}

@end