@interface INPerson
+ (id)tu_personMatchingHandle:(id)a3 contactsDataSource:(id)a4 isoCountryCodes:(id)a5;
- (BOOL)usesScoreBasedEncoding;
- (id)extractRecommendation;
- (id)tu_allContactIdentifiers;
- (id)tu_contactsMatchingIdentifiers:(id)a3 contactsDataSource:(id)a4 identifierToContactCache:(id)a5;
- (id)tu_handlesMatchingPersonWithContactsDataSource:(id)a3 identifierToContactCache:(id)a4;
- (id)tu_matchingINPersonHandlesByContactIdentifier;
- (id)tu_personWithFormattedHandleForISOCountryCodes:(id)a3;
@end

@implementation INPerson

- (id)tu_allContactIdentifiers
{
  v3 = objc_alloc_init(NSMutableOrderedSet);
  v4 = [(INPerson *)self contactIdentifier];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(INPerson *)self contactIdentifier];
    [v3 addObject:v6];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [(INPerson *)self siriMatches];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 contactIdentifier];
        v14 = [v13 length];

        if (v14)
        {
          v15 = [v12 contactIdentifier];
          [v3 addObject:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v16 = [v3 array];

  return v16;
}

- (id)tu_matchingINPersonHandlesByContactIdentifier
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(INPerson *)self siriMatches];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 contactIdentifier];
        if ([v10 length])
        {
          v11 = [v9 personHandle];

          if (!v11)
          {
            continue;
          }

          v12 = [v9 contactIdentifier];
          v10 = [v3 objectForKeyedSubscript:v12];

          if (!v10)
          {
            v10 = objc_alloc_init(NSMutableArray);
            v13 = [v9 contactIdentifier];
            [v3 setObject:v10 forKeyedSubscript:v13];
          }

          v14 = [v9 personHandle];
          [v10 addObject:v14];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v15 = [v3 copy];

  return v15;
}

- (id)tu_personWithFormattedHandleForISOCountryCodes:(id)a3
{
  v4 = a3;
  v5 = [(INPerson *)self personHandle];
  v6 = [v5 value];
  if ([v5 type] == 2 || !objc_msgSend(v5, "type") && objc_msgSend(v6, "_appearsToBePhoneNumber"))
  {
    v7 = [v4 firstObject];
    v8 = [CNPhoneNumber phoneNumberWithDigits:v6 countryCode:v7];
    v9 = [v8 formattedStringValue];

    [v5 setValue:v9 forKey:@"value"];
  }

  v10 = [(INPerson *)self mutableCopy];
  [v10 setPersonHandle:v5];

  return v10;
}

- (id)tu_handlesMatchingPersonWithContactsDataSource:(id)a3 identifierToContactCache:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = IntentHandlerDefaultLog();
  v9 = os_signpost_id_generate(v8);

  v10 = IntentHandlerDefaultLog();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "handlesMatchingPerson", "", buf, 2u);
  }

  v12 = objc_alloc_init(NSMutableArray);
  v13 = [(INPerson *)self personHandle];
  v14 = [v13 value];
  v15 = [v14 length];

  if (v15)
  {
    v16 = [TUHandle handleWithPerson:self];
    [v12 addObject:v16];
  }

  else
  {
    v52 = [(INPerson *)self tu_allContactIdentifiers];
    v53 = v7;
    v54 = v6;
    v17 = [INPerson tu_contactsMatchingIdentifiers:"tu_contactsMatchingIdentifiers:contactsDataSource:identifierToContactCache:" contactsDataSource:? identifierToContactCache:?];
    v18 = [(INPerson *)self personHandle];
    v19 = [v18 type];

    v20 = v19 < 3;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = v17;
    v61 = [obj countByEnumeratingWithState:&v70 objects:v77 count:16];
    if (v61)
    {
      v60 = v20 & (3u >> (v19 & 7));
      v59 = v20 & (v19 ^ 1);
      v58 = *v71;
      v55 = self;
      do
      {
        for (i = 0; i != v61; i = i + 1)
        {
          if (*v71 != v58)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v70 + 1) + 8 * i);
          if (v59)
          {
            v23 = [(INPerson *)self personHandle];
            v24 = [v23 label];
            v57 = v22;
            v25 = [v22 tu_phoneNumbersMatchingPersonHandleLabel:v24];

            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v26 = v25;
            v27 = [v26 countByEnumeratingWithState:&v66 objects:v76 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v67;
              do
              {
                for (j = 0; j != v28; j = j + 1)
                {
                  if (*v67 != v29)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v31 = *(*(&v66 + 1) + 8 * j);
                  v32 = [TUHandle alloc];
                  v33 = [v31 value];
                  v34 = [v33 stringValue];
                  v35 = [v32 initWithType:2 value:v34];

                  [v12 addObject:v35];
                }

                v28 = [v26 countByEnumeratingWithState:&v66 objects:v76 count:16];
              }

              while (v28);
            }

            self = v55;
            v22 = v57;
          }

          if (v60)
          {
            v36 = [(INPerson *)self personHandle];
            v37 = [v36 label];
            v38 = [v22 tu_emailAddressesMatchingPersonHandleLabel:v37];

            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v39 = v38;
            v40 = [v39 countByEnumeratingWithState:&v62 objects:v75 count:16];
            if (v40)
            {
              v41 = v40;
              v42 = *v63;
              do
              {
                for (k = 0; k != v41; k = k + 1)
                {
                  if (*v63 != v42)
                  {
                    objc_enumerationMutation(v39);
                  }

                  v44 = *(*(&v62 + 1) + 8 * k);
                  v45 = [TUHandle alloc];
                  v46 = [v44 value];
                  v47 = [v45 initWithType:3 value:v46];

                  [v12 addObject:v47];
                }

                v41 = [v39 countByEnumeratingWithState:&v62 objects:v75 count:16];
              }

              while (v41);
            }
          }
        }

        v61 = [obj countByEnumeratingWithState:&v70 objects:v77 count:16];
      }

      while (v61);
    }

    v7 = v53;
    v6 = v54;
    v16 = v52;
  }

  v48 = IntentHandlerDefaultLog();
  v49 = v48;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v49, OS_SIGNPOST_INTERVAL_END, v9, "handlesMatchingPerson", "", buf, 2u);
  }

  v50 = [v12 copy];

  return v50;
}

- (id)tu_contactsMatchingIdentifiers:(id)a3 contactsDataSource:(id)a4 identifierToContactCache:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 count])
  {
    v52 = v8;
    v10 = IntentHandlerDefaultLog();
    v11 = os_signpost_id_generate(v10);

    v12 = IntentHandlerDefaultLog();
    v13 = v12;
    v50 = v11 - 1;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "contactsMatchingIdentifiers", "", buf, 2u);
    }

    spid = v11;

    v14 = objc_alloc_init(NSMutableArray);
    v15 = objc_alloc_init(NSMutableArray);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v51 = v7;
    v16 = v7;
    v17 = [v16 countByEnumeratingWithState:&v58 objects:v66 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v59;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v59 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v58 + 1) + 8 * i);
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

        v18 = [v16 countByEnumeratingWithState:&v58 objects:v66 count:16];
      }

      while (v18);
    }

    v8 = v52;
    if ([v14 count])
    {
      v25 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v65 = v16;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Looking up contact in the contact store matching identifiers: %@", buf, 0xCu);
      }

      v26 = [CNContact predicateForContactsWithIdentifiers:v14];
      v63[0] = CNContactPhoneNumbersKey;
      v63[1] = CNContactEmailAddressesKey;
      [NSArray arrayWithObjects:v63 count:2];
      v47 = v57 = 0;
      v48 = v26;
      v27 = [v52 unifiedContactsMatchingPredicate:v26 keysToFetch:? error:?];
      v28 = 0;
      if (v28)
      {
        v29 = IntentHandlerDefaultLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_10002F2FC(v28, v29, v30, v31, v32, v33, v34, v35);
        }
      }

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v36 = v27;
      v37 = [v36 countByEnumeratingWithState:&v53 objects:v62 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v54;
        do
        {
          for (j = 0; j != v38; j = j + 1)
          {
            if (*v54 != v39)
            {
              objc_enumerationMutation(v36);
            }

            v41 = *(*(&v53 + 1) + 8 * j);
            v42 = [v41 identifier];
            [v9 setObject:v41 forKey:v42];

            [v15 addObject:v41];
          }

          v38 = [v36 countByEnumeratingWithState:&v53 objects:v62 count:16];
        }

        while (v38);
      }

      v8 = v52;
    }

    v43 = IntentHandlerDefaultLog();
    v44 = v43;
    if (v50 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, OS_SIGNPOST_INTERVAL_END, spid, "contactsMatchingIdentifiers", "", buf, 2u);
    }

    v45 = [v15 copy];
    v7 = v51;
  }

  else
  {
    v45 = &__NSArray0__struct;
  }

  return v45;
}

+ (id)tu_personMatchingHandle:(id)a3 contactsDataSource:(id)a4 isoCountryCodes:(id)a5
{
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "personMatchingHandle", "", buf, 2u);
  }

  v15 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v63 = v7;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Looking up contact in the contact store matching handle: %@", buf, 0xCu);
  }

  v16 = [v7 type];
  if (v16 == 1)
  {
    v19 = [v7 value];
    v20 = [v19 _appearsToBePhoneNumber];

    if (!v20)
    {
      v46 = [v7 value];
      v47 = [v46 _appearsToBeEmail];

      if (!v47)
      {
        goto LABEL_33;
      }

LABEL_9:
      v17 = [v7 value];
      v18 = [CNContact predicateForContactsMatchingEmailAddress:v17];
      goto LABEL_12;
    }
  }

  else if (v16 != 2)
  {
    if (v16 != 3)
    {
      goto LABEL_33;
    }

    goto LABEL_9;
  }

  v17 = [v7 value];
  v21 = [CNPhoneNumber phoneNumberWithStringValue:v17];
  v18 = [CNContact predicateForContactsMatchingPhoneNumber:v21];

LABEL_12:
  if (v18)
  {
    v61[0] = CNContactPhoneNumbersKey;
    v61[1] = CNContactEmailAddressesKey;
    v22 = +[NSPersonNameComponents descriptorForUsedKeys];
    v61[2] = v22;
    v23 = [NSArray arrayWithObjects:v61 count:3];

    v59 = v8;
    v60 = 0;
    v58 = v23;
    v24 = [v8 unifiedContactsMatchingPredicate:v18 keysToFetch:v23 error:&v60];
    v25 = v60;
    if (v25)
    {
      v26 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10002F2FC(v25, v26, v27, v28, v29, v30, v31, v32);
      }
    }

    if ([v24 count])
    {
      if ([v24 count] < 2)
      {
LABEL_25:
        spid = v11;
        v35 = [v24 firstObject];
        v36 = v35;
        v57 = v25;
        if (v35)
        {
          v37 = v9;
          v38 = [v35 tu_personHandleMatchingHandle:v7 isoCountryCodes:v9];
          v39 = [NSPersonNameComponents componentsForContact:v36];
        }

        else
        {
          v40 = [INPersonHandle alloc];
          v37 = v9;
          v38 = [v40 tu_initUnlabledPersonHandleWithTUHandle:v7 isoCountryCodes:v9];

          v39 = 0;
        }

        v41 = [INPerson alloc];
        v42 = [v36 identifier];
        LOBYTE(v55) = 0;
        v43 = [v41 initWithPersonHandle:v38 nameComponents:v39 displayName:0 image:0 contactIdentifier:v42 customIdentifier:0 isMe:v55];

        v44 = IntentHandlerDefaultLog();
        v45 = v44;
        if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v45, OS_SIGNPOST_INTERVAL_END, spid, "personMatchingHandle", "", buf, 2u);
        }

        v8 = v59;
        v9 = v37;
        goto LABEL_36;
      }

      v33 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v34 = "[WARN] Multiple contacts match handle, using the first one arbitrarily";
LABEL_23:
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v34, buf, 2u);
      }
    }

    else
    {
      v33 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v34 = "No contacts match handle";
        goto LABEL_23;
      }
    }

    goto LABEL_25;
  }

LABEL_33:
  v18 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_10002F368(v7, v18, v48, v49, v50, v51, v52, v53);
  }

  v43 = 0;
LABEL_36:

  return v43;
}

- (BOOL)usesScoreBasedEncoding
{
  v3 = [(INPerson *)self scoredAlternatives];
  if ([v3 count])
  {
    v4 = [(INPerson *)self scoredAlternatives];
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v5 score];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)extractRecommendation
{
  if ([(INPerson *)self usesScoreBasedEncoding])
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = objc_alloc_init(NSMutableOrderedSet);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v5 = [(INPerson *)self scoredAlternatives];
    v6 = [v5 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v41;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v41 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v40 + 1) + 8 * i);
          v11 = [v10 person];
          v12 = [v11 contactIdentifier];

          if ([v12 length])
          {
            [v4 addObject:v12];
            v13 = [v3 valueForKey:v12];
            v14 = [v10 score];
            v15 = v14;
            if (v14)
            {
              v16 = v14;
            }

            else
            {
              v16 = [NSNumber numberWithFloat:0.0];
            }

            v17 = v16;

            if (!v13 || [v17 compare:v13] == 1)
            {
              [v3 setValue:v17 forKey:v12];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v7);
    }

    v18 = [v3 copy];
    v19 = [v4 array];

    if ([v19 count])
    {
      if ([v18 count] == 1)
      {
        v20 = [v18 allValues];
        v21 = [v20 firstObject];

        [v21 floatValue];
        if (v22 >= 0.7)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }
      }

      else
      {
        v23 = 3;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v24 = [(INPerson *)self contactIdentifier];
    v25 = [v24 length];

    if (v25)
    {
      v26 = [(INPerson *)self contactIdentifier];
      v45 = v26;
      v23 = 1;
      v19 = [NSArray arrayWithObjects:&v45 count:1];

      goto LABEL_31;
    }

    v27 = [(INPerson *)self siriMatches];
    if ([v27 count] == 1)
    {
      v28 = [(INPerson *)self siriMatches];
      v29 = [v28 firstObject];
      v30 = [v29 contactIdentifier];

      if (v30)
      {
        v31 = [(INPerson *)self siriMatches];
        v32 = [v31 firstObject];
        v33 = [v32 contactIdentifier];
        v44 = v33;
        v19 = [NSArray arrayWithObjects:&v44 count:1];

        v23 = 2;
        goto LABEL_31;
      }
    }

    else
    {
    }

    v36 = [(INPerson *)self siriMatches];
    v37 = [v36 count];

    if (v37 < 2)
    {
      v23 = 0;
      v19 = &__NSArray0__struct;
    }

    else
    {
      v38 = [(INPerson *)self siriMatches];
      v39 = NSStringFromSelector("contactIdentifier");
      v19 = [v38 valueForKey:v39];

      v23 = 3;
    }
  }

LABEL_31:
  v34 = [[SiriMatchRecommendation alloc] initWithType:v23 contactIdentifiers:v19];

  return v34;
}

@end