@interface CHHandle
+ (id)tu_normalizedCHHandlesFromTUHandle:(id)handle isoCountryCodes:(id)codes;
- (TUHandle)tu_tuHandle;
@end

@implementation CHHandle

- (TUHandle)tu_tuHandle
{
  value = [(CHHandle *)self value];
  v4 = [value length];

  if (v4)
  {
    type = [(CHHandle *)self type];
    if (type < 2)
    {
      value2 = [(CHHandle *)self value];
      _appearsToBePhoneNumber = [value2 _appearsToBePhoneNumber];

      if (_appearsToBePhoneNumber)
      {
        v7 = 2;
      }

      else
      {
        value3 = [(CHHandle *)self value];
        _appearsToBeEmail = [value3 _appearsToBeEmail];

        if (_appearsToBeEmail)
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
      if (type == 2)
      {
        v6 = 2;
      }

      if (type == 3)
      {
        v7 = 3;
      }

      else
      {
        v7 = v6;
      }
    }

    v13 = [TUHandle alloc];
    value4 = [(CHHandle *)self value];
    v8 = [v13 initWithType:v7 value:value4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)tu_normalizedCHHandlesFromTUHandle:(id)handle isoCountryCodes:(id)codes
{
  handleCopy = handle;
  codesCopy = codes;
  v7 = objc_alloc_init(NSMutableArray);
  type = [handleCopy type];
  if (type == 1)
  {
    value = [handleCopy value];
    v18 = [CHHandle normalizedGenericHandleForValue:value];
  }

  else if (type == 3)
  {
    value = [handleCopy value];
    v18 = [CHHandle normalizedEmailAddressHandleForValue:value];
  }

  else
  {
    if (type != 2)
    {
      goto LABEL_21;
    }

    if ([codesCopy count])
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = codesCopy;
      v9 = codesCopy;
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
            value2 = [handleCopy value];
            v16 = [CHHandle normalizedPhoneNumberHandleForValue:value2 isoCountryCode:v14];

            if (v16)
            {
              [v7 addObject:v16];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v11);
      }

      codesCopy = v22;
      goto LABEL_21;
    }

    value = [handleCopy value];
    v18 = [CHHandle normalizedPhoneNumberHandleForValue:value isoCountryCode:0];
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