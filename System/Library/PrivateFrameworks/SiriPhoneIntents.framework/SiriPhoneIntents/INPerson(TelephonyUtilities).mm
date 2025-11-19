@interface INPerson(TelephonyUtilities)
+ (id)tu_personMatchingHandle:()TelephonyUtilities contactsDataSource:isoCountryCodes:;
- (id)tu_allContactIdentifiers;
- (id)tu_contactsMatchingIdentifiers:()TelephonyUtilities contactsDataSource:identifierToContactCache:;
- (id)tu_handlesMatchingPersonWithContactsDataSource:()TelephonyUtilities identifierToContactCache:;
- (id)tu_matchingINPersonHandlesByContactIdentifier;
- (id)tu_personWithFormattedHandleForISOCountryCodes:()TelephonyUtilities;
@end

@implementation INPerson(TelephonyUtilities)

- (id)tu_allContactIdentifiers
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v3 = [a1 contactIdentifier];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [a1 contactIdentifier];
    [v2 addObject:v5];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [a1 siriMatches];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 contactIdentifier];
        v13 = [v12 length];

        if (v13)
        {
          v14 = [v11 contactIdentifier];
          [v2 addObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [v2 array];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)tu_matchingINPersonHandlesByContactIdentifier
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [a1 siriMatches];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v8 contactIdentifier];
        if ([v9 length])
        {
          v10 = [v8 personHandle];

          if (!v10)
          {
            continue;
          }

          v11 = [v8 contactIdentifier];
          v9 = [v2 objectForKeyedSubscript:v11];

          if (!v9)
          {
            v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v12 = [v8 contactIdentifier];
            [v2 setObject:v9 forKeyedSubscript:v12];
          }

          v13 = [v8 personHandle];
          [v9 addObject:v13];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v14 = [v2 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)tu_personWithFormattedHandleForISOCountryCodes:()TelephonyUtilities
{
  v4 = a3;
  v5 = [a1 personHandle];
  v6 = [v5 value];
  if ([v5 type] == 2 || !objc_msgSend(v5, "type") && objc_msgSend(v6, "_appearsToBePhoneNumber"))
  {
    v7 = MEMORY[0x277CBDB70];
    v8 = [v4 firstObject];
    v9 = [v7 phoneNumberWithDigits:v6 countryCode:v8];
    v10 = [v9 formattedStringValue];

    [v5 setValue:v10 forKey:@"value"];
  }

  v11 = [a1 mutableCopy];
  [v11 setPersonHandle:v5];

  return v11;
}

- (id)tu_handlesMatchingPersonWithContactsDataSource:()TelephonyUtilities identifierToContactCache:
{
  v79 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = IntentHandlerDefaultLog();
  v9 = os_signpost_id_generate(v8);

  v10 = IntentHandlerDefaultLog();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2688A7000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "handlesMatchingPerson", "", buf, 2u);
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = [a1 personHandle];
  v14 = [v13 value];
  v15 = [v14 length];

  if (v15)
  {
    v16 = [MEMORY[0x277D6EEE8] handleWithPerson:a1];
    [v12 addObject:v16];
  }

  else
  {
    v53 = [a1 tu_allContactIdentifiers];
    v54 = v7;
    v55 = v6;
    v17 = [a1 tu_contactsMatchingIdentifiers:? contactsDataSource:? identifierToContactCache:?];
    v18 = [a1 personHandle];
    v19 = [v18 type];

    v20 = v19 < 3;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = v17;
    v62 = [obj countByEnumeratingWithState:&v71 objects:v78 count:16];
    if (v62)
    {
      v61 = v20 & (3u >> (v19 & 7));
      v60 = v20 & (v19 ^ 1);
      v59 = *v72;
      v56 = a1;
      do
      {
        for (i = 0; i != v62; ++i)
        {
          if (*v72 != v59)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v71 + 1) + 8 * i);
          if (v60)
          {
            v23 = [a1 personHandle];
            v24 = [v23 label];
            v58 = v22;
            v25 = [v22 tu_phoneNumbersMatchingPersonHandleLabel:v24];

            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v26 = v25;
            v27 = [v26 countByEnumeratingWithState:&v67 objects:v77 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v68;
              do
              {
                for (j = 0; j != v28; ++j)
                {
                  if (*v68 != v29)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v31 = *(*(&v67 + 1) + 8 * j);
                  v32 = objc_alloc(MEMORY[0x277D6EEE8]);
                  v33 = [v31 value];
                  v34 = [v33 stringValue];
                  v35 = [v32 initWithType:2 value:v34];

                  [v12 addObject:v35];
                }

                v28 = [v26 countByEnumeratingWithState:&v67 objects:v77 count:16];
              }

              while (v28);
            }

            a1 = v56;
            v22 = v58;
          }

          if (v61)
          {
            v36 = [a1 personHandle];
            v37 = [v36 label];
            v38 = [v22 tu_emailAddressesMatchingPersonHandleLabel:v37];

            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            v39 = v38;
            v40 = [v39 countByEnumeratingWithState:&v63 objects:v76 count:16];
            if (v40)
            {
              v41 = v40;
              v42 = *v64;
              do
              {
                for (k = 0; k != v41; ++k)
                {
                  if (*v64 != v42)
                  {
                    objc_enumerationMutation(v39);
                  }

                  v44 = *(*(&v63 + 1) + 8 * k);
                  v45 = objc_alloc(MEMORY[0x277D6EEE8]);
                  v46 = [v44 value];
                  v47 = [v45 initWithType:3 value:v46];

                  [v12 addObject:v47];
                }

                v41 = [v39 countByEnumeratingWithState:&v63 objects:v76 count:16];
              }

              while (v41);
            }
          }
        }

        v62 = [obj countByEnumeratingWithState:&v71 objects:v78 count:16];
      }

      while (v62);
    }

    v7 = v54;
    v6 = v55;
    v16 = v53;
  }

  v48 = IntentHandlerDefaultLog();
  v49 = v48;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2688A7000, v49, OS_SIGNPOST_INTERVAL_END, v9, "handlesMatchingPerson", "", buf, 2u);
  }

  v50 = [v12 copy];
  v51 = *MEMORY[0x277D85DE8];

  return v50;
}

- (id)tu_contactsMatchingIdentifiers:()TelephonyUtilities contactsDataSource:identifierToContactCache:
{
  v69 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 count])
  {
    v54 = v8;
    v10 = IntentHandlerDefaultLog();
    v11 = os_signpost_id_generate(v10);

    v12 = IntentHandlerDefaultLog();
    v13 = v12;
    v52 = v11 - 1;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2688A7000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "contactsMatchingIdentifiers", "", buf, 2u);
    }

    spid = v11;

    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v53 = v7;
    v16 = v7;
    v17 = [v16 countByEnumeratingWithState:&v60 objects:v68 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v61;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v61 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v60 + 1) + 8 * i);
          v22 = [v9 objectForKey:v21];
          if (v22)
          {
            v23 = v15;
            v24 = v22;
          }

          else
          {
            v23 = v14;
            v24 = v21;
          }

          [v23 addObject:v24];
        }

        v18 = [v16 countByEnumeratingWithState:&v60 objects:v68 count:16];
      }

      while (v18);
    }

    v8 = v54;
    if ([v14 count])
    {
      v25 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v67 = v16;
        _os_log_impl(&dword_2688A7000, v25, OS_LOG_TYPE_DEFAULT, "Looking up contact in the contact store matching identifiers: %@", buf, 0xCu);
      }

      v26 = [MEMORY[0x277CBDA58] predicateForContactsWithIdentifiers:v14];
      v27 = *MEMORY[0x277CBCFC0];
      v65[0] = *MEMORY[0x277CBD098];
      v65[1] = v27;
      [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:2];
      v49 = v59 = 0;
      v50 = v26;
      v28 = [v54 unifiedContactsMatchingPredicate:v26 keysToFetch:? error:?];
      v29 = 0;
      if (v29)
      {
        v30 = IntentHandlerDefaultLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [(INPerson(TelephonyUtilities) *)v29 tu_contactsMatchingIdentifiers:v30 contactsDataSource:v31 identifierToContactCache:v32, v33, v34, v35, v36];
        }
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v37 = v28;
      v38 = [v37 countByEnumeratingWithState:&v55 objects:v64 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v56;
        do
        {
          for (j = 0; j != v39; ++j)
          {
            if (*v56 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v55 + 1) + 8 * j);
            v43 = [v42 identifier];
            [v9 setObject:v42 forKey:v43];

            [v15 addObject:v42];
          }

          v39 = [v37 countByEnumeratingWithState:&v55 objects:v64 count:16];
        }

        while (v39);
      }

      v8 = v54;
    }

    v44 = IntentHandlerDefaultLog();
    v45 = v44;
    if (v52 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2688A7000, v45, OS_SIGNPOST_INTERVAL_END, spid, "contactsMatchingIdentifiers", "", buf, 2u);
    }

    v46 = [v15 copy];
    v7 = v53;
  }

  else
  {
    v46 = MEMORY[0x277CBEBF8];
  }

  v47 = *MEMORY[0x277D85DE8];

  return v46;
}

+ (id)tu_personMatchingHandle:()TelephonyUtilities contactsDataSource:isoCountryCodes:
{
  v69 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = IntentHandlerDefaultLog();
  v11 = os_signpost_id_generate(v10);

  v12 = IntentHandlerDefaultLog();
  v13 = v12;
  v14 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2688A7000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "personMatchingHandle", "", buf, 2u);
  }

  v15 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v68 = v7;
    _os_log_impl(&dword_2688A7000, v15, OS_LOG_TYPE_DEFAULT, "Looking up contact in the contact store matching handle: %@", buf, 0xCu);
  }

  v16 = [v7 type];
  switch(v16)
  {
    case 1:
      v20 = [v7 value];
      v21 = [v20 _appearsToBePhoneNumber];

      if (!v21)
      {
        v50 = [v7 value];
        v51 = [v50 _appearsToBeEmail];

        if (!v51)
        {
          goto LABEL_33;
        }

LABEL_9:
        v17 = MEMORY[0x277CBDA58];
        v18 = [v7 value];
        v19 = [v17 predicateForContactsMatchingEmailAddress:v18];
        goto LABEL_12;
      }

      break;
    case 2:
      break;
    case 3:
      goto LABEL_9;
    default:
      goto LABEL_33;
  }

  v22 = MEMORY[0x277CBDA58];
  v23 = MEMORY[0x277CBDB70];
  v18 = [v7 value];
  v24 = [v23 phoneNumberWithStringValue:v18];
  v19 = [v22 predicateForContactsMatchingPhoneNumber:v24];

LABEL_12:
  if (v19)
  {
    v25 = *MEMORY[0x277CBCFC0];
    v66[0] = *MEMORY[0x277CBD098];
    v66[1] = v25;
    v26 = [MEMORY[0x277CCAC00] descriptorForUsedKeys];
    v66[2] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:3];

    v64 = v8;
    v65 = 0;
    v63 = v27;
    v28 = [v8 unifiedContactsMatchingPredicate:v19 keysToFetch:v27 error:&v65];
    v29 = v65;
    if (v29)
    {
      v30 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [(INPerson(TelephonyUtilities) *)v29 tu_contactsMatchingIdentifiers:v30 contactsDataSource:v31 identifierToContactCache:v32, v33, v34, v35, v36];
      }
    }

    if ([v28 count])
    {
      if ([v28 count] < 2)
      {
LABEL_25:
        spid = v11;
        v39 = [v28 firstObject];
        v40 = v39;
        v62 = v29;
        if (v39)
        {
          v41 = v9;
          v42 = [v39 tu_personHandleMatchingHandle:v7 isoCountryCodes:v9];
          v43 = [MEMORY[0x277CCAC00] componentsForContact:v40];
        }

        else
        {
          v44 = objc_alloc(MEMORY[0x277CD3E98]);
          v41 = v9;
          v42 = [v44 tu_initUnlabledPersonHandleWithTUHandle:v7 isoCountryCodes:v9];

          v43 = 0;
        }

        v45 = objc_alloc(MEMORY[0x277CD3E90]);
        v46 = [v40 identifier];
        LOBYTE(v60) = 0;
        v47 = [v45 initWithPersonHandle:v42 nameComponents:v43 displayName:0 image:0 contactIdentifier:v46 customIdentifier:0 isMe:v60];

        v48 = IntentHandlerDefaultLog();
        v49 = v48;
        if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_2688A7000, v49, OS_SIGNPOST_INTERVAL_END, spid, "personMatchingHandle", "", buf, 2u);
        }

        v8 = v64;
        v9 = v41;
        goto LABEL_36;
      }

      v37 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v38 = "[WARN] Multiple contacts match handle, using the first one arbitrarily";
LABEL_23:
        _os_log_impl(&dword_2688A7000, v37, OS_LOG_TYPE_DEFAULT, v38, buf, 2u);
      }
    }

    else
    {
      v37 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v38 = "No contacts match handle";
        goto LABEL_23;
      }
    }

    goto LABEL_25;
  }

LABEL_33:
  v19 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [(INPerson(TelephonyUtilities) *)v7 tu_personMatchingHandle:v19 contactsDataSource:v52 isoCountryCodes:v53, v54, v55, v56, v57];
  }

  v47 = 0;
LABEL_36:

  v58 = *MEMORY[0x277D85DE8];

  return v47;
}

- (void)tu_contactsMatchingIdentifiers:()TelephonyUtilities contactsDataSource:identifierToContactCache:.cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2688A7000, a2, a3, "Error performing contact search: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)tu_personMatchingHandle:()TelephonyUtilities contactsDataSource:isoCountryCodes:.cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2688A7000, a2, a3, "Could not construct contact search predicate from handle: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end