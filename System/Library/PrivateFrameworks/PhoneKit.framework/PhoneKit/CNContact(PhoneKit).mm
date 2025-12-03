@interface CNContact(PhoneKit)
- (BOOL)canExceedUnifyingThreshold;
- (id)labeledValueForEmailAddress:()PhoneKit;
- (id)labeledValueForPhoneNumber:()PhoneKit;
- (id)labeledValueForSocialProfileWithUsername:()PhoneKit;
- (id)labeledValueForTelephoneNumber:()PhoneKit;
@end

@implementation CNContact(PhoneKit)

- (BOOL)canExceedUnifyingThreshold
{
  phoneNumbers = [self phoneNumbers];
  if ([phoneNumbers count] > 0x14)
  {
    v4 = 1;
  }

  else
  {
    emailAddresses = [self emailAddresses];
    if ([emailAddresses count] <= 0x14)
    {
      postalAddresses = [self postalAddresses];
      if ([postalAddresses count] <= 0x14)
      {
        urlAddresses = [self urlAddresses];
        if ([urlAddresses count] <= 0x14)
        {
          contactRelations = [self contactRelations];
          if ([contactRelations count] <= 0x14)
          {
            socialProfiles = [self socialProfiles];
            if ([socialProfiles count] <= 0x14)
            {
              instantMessageAddresses = [self instantMessageAddresses];
              v4 = [instantMessageAddresses count] > 0x14;
            }

            else
            {
              v4 = 1;
            }
          }

          else
          {
            v4 = 1;
          }
        }

        else
        {
          v4 = 1;
        }
      }

      else
      {
        v4 = 1;
      }
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (id)labeledValueForEmailAddress:()PhoneKit
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([self isKeyAvailable:*MEMORY[0x277CBCFC0]])
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
          if (([v9 isSuggested] & 1) == 0)
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

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)labeledValueForPhoneNumber:()PhoneKit
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([self isKeyAvailable:*MEMORY[0x277CBD098]])
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
          if (([v9 isSuggested] & 1) == 0)
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

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)labeledValueForSocialProfileWithUsername:()PhoneKit
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([self isKeyAvailable:*MEMORY[0x277CBD138]])
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

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)labeledValueForTelephoneNumber:()PhoneKit
{
  v4 = a3;
  v5 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:v4];
  if (v5)
  {
    v6 = [self labeledValueForPhoneNumber:v5];
  }

  else
  {
    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CNContact(PhoneKit) *)v4 labeledValueForTelephoneNumber:v7];
    }

    v6 = 0;
  }

  return v6;
}

- (void)labeledValueForTelephoneNumber:()PhoneKit .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25E4EC000, a2, OS_LOG_TYPE_ERROR, "Could not create a CNPhoneNumber for the specified telephone number (%@).", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end