@interface CHHandle(TUIntentHandler)
+ (id)tu_normalizedCHHandlesFromTUHandle:()TUIntentHandler isoCountryCodes:;
- (id)tu_tuHandle;
@end

@implementation CHHandle(TUIntentHandler)

- (id)tu_tuHandle
{
  v2 = [a1 value];
  v3 = [v2 length];

  if (v3)
  {
    v4 = [a1 type];
    if (v4 < 2)
    {
      v8 = [a1 value];
      v9 = [v8 _appearsToBePhoneNumber];

      if (v9)
      {
        v6 = 2;
      }

      else
      {
        v10 = [a1 value];
        v11 = [v10 _appearsToBeEmail];

        if (v11)
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
      if (v4 == 2)
      {
        v5 = 2;
      }

      if (v4 == 3)
      {
        v6 = 3;
      }

      else
      {
        v6 = v5;
      }
    }

    v12 = objc_alloc(MEMORY[0x277D6EEE8]);
    v13 = [a1 value];
    v7 = [v12 initWithType:v6 value:v13];
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
  v8 = [v5 type];
  switch(v8)
  {
    case 1:
      v21 = MEMORY[0x277CF7D30];
      v19 = [v5 value];
      v20 = [v21 normalizedGenericHandleForValue:v19];
      break;
    case 3:
      v18 = MEMORY[0x277CF7D30];
      v19 = [v5 value];
      v20 = [v18 normalizedEmailAddressHandleForValue:v19];
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
              v16 = [v5 value];
              v17 = [v15 normalizedPhoneNumberHandleForValue:v16 isoCountryCode:v14];

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
      v19 = [v5 value];
      v20 = [v22 normalizedPhoneNumberHandleForValue:v19 isoCountryCode:0];
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