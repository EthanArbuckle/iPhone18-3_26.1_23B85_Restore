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
  if ([self isKeyAvailable:*MEMORY[0x1E695C208]])
  {
    [self emailAddresses];
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
            value = [v9 value];
            v11 = [value isEqualToString:v4];

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
  type = [v4 type];
  if (type != 1)
  {
    if (type == 2)
    {
      normalizedValue = [v4 normalizedValue];
      if (normalizedValue || ([v4 value], (normalizedValue = objc_claimAutoreleasedReturnValue()) != 0))
      {
        normalizedValue2 = normalizedValue;
        v10 = objc_alloc(MEMORY[0x1E695CF50]);
        isoCountryCode = [v4 isoCountryCode];
        value = [v10 initWithStringValue:normalizedValue2 countryCode:isoCountryCode];

        v12 = [self tu_labeledValueForPhoneNumber:value];
LABEL_15:

        goto LABEL_16;
      }
    }

    else if (type == 3)
    {
      normalizedValue2 = [v4 normalizedValue];
      value = normalizedValue2;
      if (!normalizedValue2)
      {
        value = [v4 value];
      }

      v8 = [self tu_labeledValueForEmailAddress:value];
      goto LABEL_14;
    }

    v12 = 0;
    goto LABEL_17;
  }

  normalizedValue2 = [v4 normalizedValue];
  value = normalizedValue2;
  if (!normalizedValue2)
  {
    value = [v4 value];
  }

  v8 = [self tu_labeledValueForSocialProfileWithUsername:value];
LABEL_14:
  v12 = v8;
  if (!normalizedValue2)
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
  if ([self isKeyAvailable:*MEMORY[0x1E695C330]])
  {
    [self phoneNumbers];
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
            value = [v9 value];
            v11 = [value isLikePhoneNumber:v4];

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
  if ([self isKeyAvailable:*MEMORY[0x1E695C3D0]])
  {
    [self socialProfiles];
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
          value = [v9 value];
          username = [value username];
          v12 = [username isEqualToString:v4];

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
  type = [v4 type];
  if (type == 1)
  {
    normalizedValue = [v4 normalizedValue];
    value = normalizedValue;
    if (!normalizedValue)
    {
      value = [v4 value];
    }

    v8 = [self tu_labeledValueForSocialProfileWithUsername:value];
    if (!normalizedValue)
    {
    }

    v23 = objc_opt_respondsToSelector();
    v10 = MEMORY[0x1E695CEE0];
    label = [v8 label];
    if (v23)
    {
      v12 = MEMORY[0x1E695C3D0];
      goto LABEL_21;
    }

    v20 = [v10 localizedStringForLabel:label];

    if ([v20 length])
    {
      goto LABEL_32;
    }

    v24 = TUBundle();
    label = v24;
    v25 = @"CONTACTS_SOCIAL_PROFILE_LABEL";
LABEL_26:
    v26 = [v24 localizedStringForKey:v25 value:&stru_1F098C218 table:@"TelephonyUtilities"];

    v20 = v26;
    goto LABEL_31;
  }

  if (type == 2)
  {
    normalizedValue2 = [v4 normalizedValue];
    if (!normalizedValue2)
    {
      normalizedValue2 = [v4 value];
      if (!normalizedValue2)
      {
        goto LABEL_14;
      }
    }

    label = normalizedValue2;
    v14 = objc_alloc(MEMORY[0x1E695CF50]);
    isoCountryCode = [v4 isoCountryCode];
    v16 = [v14 initWithStringValue:label countryCode:isoCountryCode];

    v8 = [self tu_labeledValueForPhoneNumber:v16];
    v17 = objc_opt_respondsToSelector();
    v18 = MEMORY[0x1E695CEE0];
    label2 = [v8 label];
    if (v17)
    {
      v20 = [v18 localizedDisplayStringForLabel:label2 propertyName:*MEMORY[0x1E695C330]];
    }

    else
    {
      v20 = [v18 localizedStringForLabel:label2];

      if ([v20 length])
      {
LABEL_30:

        goto LABEL_31;
      }

      label2 = TUBundle();
      v27 = [label2 localizedStringForKey:@"CONTACTS_PHONE_LABEL" value:&stru_1F098C218 table:@"TelephonyUtilities"];

      v20 = v27;
    }

    goto LABEL_30;
  }

  if (type != 3)
  {
LABEL_14:
    v8 = 0;
    v20 = 0;
    goto LABEL_32;
  }

  normalizedValue3 = [v4 normalizedValue];
  value2 = normalizedValue3;
  if (!normalizedValue3)
  {
    value2 = [v4 value];
  }

  v8 = [self tu_labeledValueForEmailAddress:value2];
  if (!normalizedValue3)
  {
  }

  v9 = objc_opt_respondsToSelector();
  v10 = MEMORY[0x1E695CEE0];
  label = [v8 label];
  if ((v9 & 1) == 0)
  {
    v20 = [v10 localizedStringForLabel:label];

    if ([v20 length])
    {
      goto LABEL_32;
    }

    v24 = TUBundle();
    label = v24;
    v25 = @"CONTACTS_EMAIL_LABEL";
    goto LABEL_26;
  }

  v12 = MEMORY[0x1E695C208];
LABEL_21:
  v20 = [v10 localizedDisplayStringForLabel:label propertyName:*v12];
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
  phoneNumbers = [self phoneNumbers];
  v4 = [phoneNumbers countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(phoneNumbers);
        }

        value = [*(*(&v16 + 1) + 8 * i) value];
        v9 = value;
        if (value)
        {
          stringValue = [value stringValue];
          countryCode = [v9 countryCode];
          v12 = [TUHandle normalizedPhoneNumberHandleForValue:stringValue isoCountryCode:countryCode];

          if (v12)
          {
            [v2 addObject:v12];
          }
        }
      }

      v5 = [phoneNumbers countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  array = [v2 array];

  v14 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)tuHandlesForEmailAddresses
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  emailAddresses = [self emailAddresses];
  v4 = [emailAddresses countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(emailAddresses);
        }

        value = [*(*(&v13 + 1) + 8 * i) value];
        if ([value length])
        {
          v9 = [TUHandle normalizedEmailAddressHandleForValue:value];
          if (v9)
          {
            [v2 addObject:v9];
          }
        }
      }

      v5 = [emailAddresses countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  array = [v2 array];

  v11 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)allTUHandles
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  tuHandlesForPhoneNumbers = [self tuHandlesForPhoneNumbers];
  tuHandlesForEmailAddresses = [self tuHandlesForEmailAddresses];
  [v2 addObjectsFromArray:tuHandlesForPhoneNumbers];
  [v2 addObjectsFromArray:tuHandlesForEmailAddresses];
  v5 = [v2 copy];

  return v5;
}

@end