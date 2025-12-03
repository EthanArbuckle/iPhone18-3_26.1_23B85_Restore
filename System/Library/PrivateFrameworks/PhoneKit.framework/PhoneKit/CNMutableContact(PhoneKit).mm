@interface CNMutableContact(PhoneKit)
+ (id)contactForHandle:()PhoneKit isoCountryCode:metadataCache:;
+ (id)contactForRecentCall:()PhoneKit metadataCache:;
+ (void)suggestedContactForHandle:()PhoneKit isoCountryCode:metadataCache:;
@end

@implementation CNMutableContact(PhoneKit)

+ (id)contactForHandle:()PhoneKit isoCountryCode:metadataCache:
{
  v30[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x277CBDB38]);
  value = [v8 value];
  if ([value length])
  {
    if (v10)
    {
      v13 = [self suggestedContactForHandle:v8 isoCountryCode:v9 metadataCache:v10];
      v14 = v13;
      if (v13)
      {
        v15 = v13;

        v11 = v15;
      }

      v16 = [objc_alloc(MEMORY[0x277D6EF00]) initWithDestinationID:value isoCountryCode:v9];
      if (v16)
      {
        v17 = [v10 metadataForDestinationID:v16];
        v18 = [v17 metadataForProvider:objc_opt_class()];
        if (v18)
        {
          [v11 setOrganizationName:v18];
        }
      }
    }

    v19 = value;
    type = [v8 type];
    if (type == 2)
    {
      v21 = [MEMORY[0x277CBDB70] phoneNumberWithDigits:v19 countryCode:v9];
    }

    else
    {
      if (type != 1)
      {
        goto LABEL_15;
      }

      v21 = [objc_alloc(MEMORY[0x277CBDBB0]) initWithUrlString:0 username:v19 userIdentifier:0 service:0];
    }

    v22 = v21;

    v19 = v22;
LABEL_15:
    v23 = [MEMORY[0x277CBDB20] labeledValueWithLabel:0 value:v19];
    type2 = [v8 type];
    switch(type2)
    {
      case 3:
        v28 = v23;
        v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
        [v11 setEmailAddresses:v25];
        break;
      case 2:
        v29 = v23;
        v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
        [v11 setPhoneNumbers:v25];
        break;
      case 1:
        v30[0] = v23;
        v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
        [v11 setSocialProfiles:v25];
        break;
      default:
LABEL_22:

        goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_23:

  v26 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)contactForRecentCall:()PhoneKit metadataCache:
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D6EEE8] handleForCHRecentCall:v6];
  if (v8)
  {
    isoCountryCode = [v6 isoCountryCode];
    if ([v8 type] == 2)
    {
      if (![isoCountryCode length])
      {
        callStatus = [v6 callStatus];
        if (callStatus != *MEMORY[0x277CF7D90] && callStatus != *MEMORY[0x277CF7D78])
        {
          v13 = *MEMORY[0x277CF7DA0];
        }

        v14 = TUCountryCodeForIncomingCall();

        isoCountryCode = v14;
      }

      if ([isoCountryCode length])
      {
        v15 = TUHomeCountryCode();
        if (([isoCountryCode isEqualToString:v15] & 1) == 0)
        {
          value = [v8 value];
          v17 = TUNumberToDial();

          v18 = [objc_alloc(MEMORY[0x277D6EEE8]) initWithType:objc_msgSend(v8 value:{"type"), v17}];
          v8 = v18;
        }
      }
    }

    v12 = [self contactForHandle:v8 isoCountryCode:isoCountryCode metadataCache:v7];
    imageURL = [v6 imageURL];

    if (imageURL)
    {
      name = [v6 name];
      [v12 setOrganizationName:name];

      [v12 setContactType:1];
    }

    else
    {
      [v12 setContactType:{objc_msgSend(v6, "callDirectoryIdentityType") == 2}];
      if ([v12 contactType])
      {
        fullName = [v6 fullName];
        [v12 setOrganizationName:fullName];
      }

      else
      {
        givenName = [v6 givenName];
        [v12 setGivenName:givenName];

        fullName = [v6 familyName];
        [v12 setFamilyName:fullName];
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (void)suggestedContactForHandle:()PhoneKit isoCountryCode:metadataCache:
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  [v9 providers];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = v29 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = *v27;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v27 != v12)
      {
        objc_enumerationMutation(v10);
      }

      v14 = *(*(&v26 + 1) + 8 * v13);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v17 = objc_opt_class();
    value = [v7 value];
    v15 = [v17 newestSuggestedContactForDestinationID:value];

    if (!v15)
    {
      v11 = 0;
      goto LABEL_17;
    }

    v11 = [v15 mutableCopy];
    v19 = objc_alloc(MEMORY[0x277D6EF00]);
    value2 = [v7 value];
    v16 = [v19 initWithDestinationID:value2 isoCountryCode:v8];

    if (v16)
    {
      v21 = [v9 metadataForDestinationID:v16];
      v22 = [v21 metadataForProvider:objc_opt_class()];
      if ([v22 length])
      {
        [v11 setContactType:1];
        [v11 setOrganizationName:v22];
      }
    }
  }

  else
  {
LABEL_9:
    v15 = 0;
    v16 = v10;
  }

LABEL_17:
  v23 = v11;

  v24 = *MEMORY[0x277D85DE8];
  return v11;
}

@end