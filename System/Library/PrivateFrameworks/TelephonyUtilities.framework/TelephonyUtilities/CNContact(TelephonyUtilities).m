@interface CNContact(TelephonyUtilities)
- (id)allTUHandles;
- (id)tuHandlesForEmailAddresses;
- (id)tuHandlesForPhoneNumbers;
- (id)tu_labeledValueForEmailAddress:()TelephonyUtilities;
- (id)tu_labeledValueForHandle:()TelephonyUtilities;
- (id)tu_labeledValueForPhoneNumber:()TelephonyUtilities;
- (id)tu_labeledValueForSocialProfileWithUsername:()TelephonyUtilities;
- (id)tu_localizedDisplayStringForHandle:()TelephonyUtilities;
@end

@implementation CNContact(TelephonyUtilities)

- (id)tu_labeledValueForEmailAddress:()TelephonyUtilities
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([a1 isKeyAvailable:*MEMORY[0x1E695C208]])
  {
    [a1 emailAddresses];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v17 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          if (([v9 tuIsSuggested] & 1) == 0)
          {
            v10 = [v9 value];
            v11 = [v10 isEqualToString:v4];

            if (v11)
            {
              v6 = v9;
              goto LABEL_14;
            }
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)tu_labeledValueForHandle:()TelephonyUtilities
{
  v4 = a3;
  v5 = [v4 type];
  if (v5 != 1)
  {
    if (v5 == 2)
    {
      v9 = [v4 normalizedValue];
      if (v9 || ([v4 value], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v6 = v9;
        v10 = objc_alloc(MEMORY[0x1E695CF50]);
        v11 = [v4 isoCountryCode];
        v7 = [v10 initWithStringValue:v6 countryCode:v11];

        v12 = [a1 tu_labeledValueForPhoneNumber:v7];
LABEL_15:

        goto LABEL_16;
      }
    }

    else if (v5 == 3)
    {
      v6 = [v4 normalizedValue];
      v7 = v6;
      if (!v6)
      {
        v7 = [v4 value];
      }

      v8 = [a1 tu_labeledValueForEmailAddress:v7];
      goto LABEL_14;
    }

    v12 = 0;
    goto LABEL_17;
  }

  v6 = [v4 normalizedValue];
  v7 = v6;
  if (!v6)
  {
    v7 = [v4 value];
  }

  v8 = [a1 tu_labeledValueForSocialProfileWithUsername:v7];
LABEL_14:
  v12 = v8;
  if (!v6)
  {
    goto LABEL_15;
  }

LABEL_16:

LABEL_17:

  return v12;
}

- (id)tu_labeledValueForPhoneNumber:()TelephonyUtilities
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([a1 isKeyAvailable:*MEMORY[0x1E695C330]])
  {
    [a1 phoneNumbers];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v17 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          if (([v9 tuIsSuggested] & 1) == 0)
          {
            v10 = [v9 value];
            v11 = [v10 isLikePhoneNumber:v4];

            if (v11)
            {
              v6 = v9;
              goto LABEL_14;
            }
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)tu_labeledValueForSocialProfileWithUsername:()TelephonyUtilities
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([a1 isKeyAvailable:*MEMORY[0x1E695C3D0]])
  {
    [a1 socialProfiles];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v18 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = *v16;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [v9 value];
          v11 = [v10 username];
          v12 = [v11 isEqualToString:v4];

          if (v12)
          {
            v6 = v9;

            goto LABEL_13;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v6 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)tu_localizedDisplayStringForHandle:()TelephonyUtilities
{
  v4 = a3;
  v5 = [v4 type];
  if (v5 == 1)
  {
    v21 = [v4 normalizedValue];
    v22 = v21;
    if (!v21)
    {
      v22 = [v4 value];
    }

    v8 = [a1 tu_labeledValueForSocialProfileWithUsername:v22];
    if (!v21)
    {
    }

    v23 = objc_opt_respondsToSelector();
    v10 = MEMORY[0x1E695CEE0];
    v11 = [v8 label];
    if (v23)
    {
      v12 = MEMORY[0x1E695C3D0];
      goto LABEL_21;
    }

    v20 = [v10 localizedStringForLabel:v11];

    if ([v20 length])
    {
      goto LABEL_32;
    }

    v24 = TUBundle();
    v11 = v24;
    v25 = @"CONTACTS_SOCIAL_PROFILE_LABEL";
LABEL_26:
    v26 = [v24 localizedStringForKey:v25 value:&stru_1F098C218 table:@"TelephonyUtilities"];

    v20 = v26;
    goto LABEL_31;
  }

  if (v5 == 2)
  {
    v13 = [v4 normalizedValue];
    if (!v13)
    {
      v13 = [v4 value];
      if (!v13)
      {
        goto LABEL_14;
      }
    }

    v11 = v13;
    v14 = objc_alloc(MEMORY[0x1E695CF50]);
    v15 = [v4 isoCountryCode];
    v16 = [v14 initWithStringValue:v11 countryCode:v15];

    v8 = [a1 tu_labeledValueForPhoneNumber:v16];
    v17 = objc_opt_respondsToSelector();
    v18 = MEMORY[0x1E695CEE0];
    v19 = [v8 label];
    if (v17)
    {
      v20 = [v18 localizedDisplayStringForLabel:v19 propertyName:*MEMORY[0x1E695C330]];
    }

    else
    {
      v20 = [v18 localizedStringForLabel:v19];

      if ([v20 length])
      {
LABEL_30:

        goto LABEL_31;
      }

      v19 = TUBundle();
      v27 = [v19 localizedStringForKey:@"CONTACTS_PHONE_LABEL" value:&stru_1F098C218 table:@"TelephonyUtilities"];

      v20 = v27;
    }

    goto LABEL_30;
  }

  if (v5 != 3)
  {
LABEL_14:
    v8 = 0;
    v20 = 0;
    goto LABEL_32;
  }

  v6 = [v4 normalizedValue];
  v7 = v6;
  if (!v6)
  {
    v7 = [v4 value];
  }

  v8 = [a1 tu_labeledValueForEmailAddress:v7];
  if (!v6)
  {
  }

  v9 = objc_opt_respondsToSelector();
  v10 = MEMORY[0x1E695CEE0];
  v11 = [v8 label];
  if ((v9 & 1) == 0)
  {
    v20 = [v10 localizedStringForLabel:v11];

    if ([v20 length])
    {
      goto LABEL_32;
    }

    v24 = TUBundle();
    v11 = v24;
    v25 = @"CONTACTS_EMAIL_LABEL";
    goto LABEL_26;
  }

  v12 = MEMORY[0x1E695C208];
LABEL_21:
  v20 = [v10 localizedDisplayStringForLabel:v11 propertyName:*v12];
LABEL_31:

LABEL_32:

  return v20;
}

- (id)tuHandlesForPhoneNumbers
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [a1 phoneNumbers];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v16 + 1) + 8 * i) value];
        v9 = v8;
        if (v8)
        {
          v10 = [v8 stringValue];
          v11 = [v9 countryCode];
          v12 = [TUHandle normalizedPhoneNumberHandleForValue:v10 isoCountryCode:v11];

          if (v12)
          {
            [v2 addObject:v12];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v13 = [v2 array];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)tuHandlesForEmailAddresses
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [a1 emailAddresses];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v13 + 1) + 8 * i) value];
        if ([v8 length])
        {
          v9 = [TUHandle normalizedEmailAddressHandleForValue:v8];
          if (v9)
          {
            [v2 addObject:v9];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v10 = [v2 array];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)allTUHandles
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [a1 tuHandlesForPhoneNumbers];
  v4 = [a1 tuHandlesForEmailAddresses];
  [v2 addObjectsFromArray:v3];
  [v2 addObjectsFromArray:v4];
  v5 = [v2 copy];

  return v5;
}

@end