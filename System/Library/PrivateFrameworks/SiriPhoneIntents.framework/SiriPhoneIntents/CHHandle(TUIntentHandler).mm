@interface CHHandle(TUIntentHandler)
+ (id)tu_normalizedCHHandlesFromTUHandle:()TUIntentHandler isoCountryCodes:;
- (id)tu_tuHandle;
@end

@implementation CHHandle(TUIntentHandler)

- (id)tu_tuHandle
{
  value = [self value];
  v3 = [value length];

  if (v3)
  {
    type = [self type];
    if (type < 2)
    {
      value2 = [self value];
      _appearsToBePhoneNumber = [value2 _appearsToBePhoneNumber];

      if (_appearsToBePhoneNumber)
      {
        v6 = 2;
      }

      else
      {
        value3 = [self value];
        _appearsToBeEmail = [value3 _appearsToBeEmail];

        if (_appearsToBeEmail)
        {
          v6 = 3;
        }

        else
        {
          v6 = 1;
        }
      }
    }

    else
    {
      v5 = 1;
      if (type == 2)
      {
        v5 = 2;
      }

      if (type == 3)
      {
        v6 = 3;
      }

      else
      {
        v6 = v5;
      }
    }

    v12 = objc_alloc(MEMORY[0x277D6EEE8]);
    value4 = [self value];
    v7 = [v12 initWithType:v6 value:value4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)tu_normalizedCHHandlesFromTUHandle:()TUIntentHandler isoCountryCodes:
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  type = [v5 type];
  switch(type)
  {
    case 1:
      v21 = MEMORY[0x277CF7D30];
      value = [v5 value];
      v20 = [v21 normalizedGenericHandleForValue:value];
      break;
    case 3:
      v18 = MEMORY[0x277CF7D30];
      value = [v5 value];
      v20 = [v18 normalizedEmailAddressHandleForValue:value];
      break;
    case 2:
      if ([v6 count])
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v27 = v6;
        v9 = v6;
        v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v29;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v29 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v28 + 1) + 8 * i);
              v15 = MEMORY[0x277CF7D30];
              value2 = [v5 value];
              v17 = [v15 normalizedPhoneNumberHandleForValue:value2 isoCountryCode:v14];

              if (v17)
              {
                [v7 addObject:v17];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
          }

          while (v11);
        }

        v6 = v27;
        goto LABEL_21;
      }

      v22 = MEMORY[0x277CF7D30];
      value = [v5 value];
      v20 = [v22 normalizedPhoneNumberHandleForValue:value isoCountryCode:0];
      break;
    default:
      goto LABEL_21;
  }

  v23 = v20;

  if (v23)
  {
    [v7 addObject:v23];
  }

LABEL_21:
  v24 = [v7 copy];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

@end