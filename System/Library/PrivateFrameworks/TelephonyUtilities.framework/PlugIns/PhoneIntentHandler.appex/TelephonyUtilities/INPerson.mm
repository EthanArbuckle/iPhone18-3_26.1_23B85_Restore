@interface INPerson
+ (id)tu_personMatchingHandle:(id)handle contactsDataSource:(id)source isoCountryCodes:(id)codes;
- (BOOL)usesScoreBasedEncoding;
- (id)extractRecommendation;
- (id)tu_allContactIdentifiers;
- (id)tu_contactsMatchingIdentifiers:(id)identifiers contactsDataSource:(id)source identifierToContactCache:(id)cache;
- (id)tu_handlesMatchingPersonWithContactsDataSource:(id)source identifierToContactCache:(id)cache;
- (id)tu_matchingINPersonHandlesByContactIdentifier;
- (id)tu_personWithFormattedHandleForISOCountryCodes:(id)codes;
@end

@implementation INPerson

- (id)tu_allContactIdentifiers
{
  v3 = objc_alloc_init(NSMutableOrderedSet);
  contactIdentifier = [(INPerson *)self contactIdentifier];
  v5 = [contactIdentifier length];

  if (v5)
  {
    contactIdentifier2 = [(INPerson *)self contactIdentifier];
    [v3 addObject:contactIdentifier2];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  siriMatches = [(INPerson *)self siriMatches];
  v8 = [siriMatches countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(siriMatches);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        contactIdentifier3 = [v12 contactIdentifier];
        v14 = [contactIdentifier3 length];

        if (v14)
        {
          contactIdentifier4 = [v12 contactIdentifier];
          [v3 addObject:contactIdentifier4];
        }
      }

      v9 = [siriMatches countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  array = [v3 array];

  return array;
}

- (id)tu_matchingINPersonHandlesByContactIdentifier
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  siriMatches = [(INPerson *)self siriMatches];
  v5 = [siriMatches countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(siriMatches);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        contactIdentifier = [v9 contactIdentifier];
        if ([contactIdentifier length])
        {
          personHandle = [v9 personHandle];

          if (!personHandle)
          {
            continue;
          }

          contactIdentifier2 = [v9 contactIdentifier];
          contactIdentifier = [v3 objectForKeyedSubscript:contactIdentifier2];

          if (!contactIdentifier)
          {
            contactIdentifier = objc_alloc_init(NSMutableArray);
            contactIdentifier3 = [v9 contactIdentifier];
            [v3 setObject:contactIdentifier forKeyedSubscript:contactIdentifier3];
          }

          personHandle2 = [v9 personHandle];
          [contactIdentifier addObject:personHandle2];
        }
      }

      v6 = [siriMatches countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v15 = [v3 copy];

  return v15;
}

- (id)tu_personWithFormattedHandleForISOCountryCodes:(id)codes
{
  codesCopy = codes;
  personHandle = [(INPerson *)self personHandle];
  value = [personHandle value];
  if ([personHandle type] == 2 || !objc_msgSend(personHandle, "type") && objc_msgSend(value, "_appearsToBePhoneNumber"))
  {
    firstObject = [codesCopy firstObject];
    v8 = [CNPhoneNumber phoneNumberWithDigits:value countryCode:firstObject];
    formattedStringValue = [v8 formattedStringValue];

    [personHandle setValue:formattedStringValue forKey:@"value"];
  }

  v10 = [(INPerson *)self mutableCopy];
  [v10 setPersonHandle:personHandle];

  return v10;
}

- (id)tu_handlesMatchingPersonWithContactsDataSource:(id)source identifierToContactCache:(id)cache
{
  sourceCopy = source;
  cacheCopy = cache;
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
  personHandle = [(INPerson *)self personHandle];
  value = [personHandle value];
  v15 = [value length];

  if (v15)
  {
    v16 = [TUHandle handleWithPerson:self];
    [v12 addObject:v16];
  }

  else
  {
    tu_allContactIdentifiers = [(INPerson *)self tu_allContactIdentifiers];
    v53 = cacheCopy;
    v54 = sourceCopy;
    v17 = [INPerson tu_contactsMatchingIdentifiers:"tu_contactsMatchingIdentifiers:contactsDataSource:identifierToContactCache:" contactsDataSource:? identifierToContactCache:?];
    personHandle2 = [(INPerson *)self personHandle];
    type = [personHandle2 type];

    v20 = type < 3;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = v17;
    v61 = [obj countByEnumeratingWithState:&v70 objects:v77 count:16];
    if (v61)
    {
      v60 = v20 & (3u >> (type & 7));
      v59 = v20 & (type ^ 1);
      v58 = *v71;
      selfCopy = self;
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
            personHandle3 = [(INPerson *)self personHandle];
            label = [personHandle3 label];
            v57 = v22;
            v25 = [v22 tu_phoneNumbersMatchingPersonHandleLabel:label];

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
                  value2 = [v31 value];
                  stringValue = [value2 stringValue];
                  v35 = [v32 initWithType:2 value:stringValue];

                  [v12 addObject:v35];
                }

                v28 = [v26 countByEnumeratingWithState:&v66 objects:v76 count:16];
              }

              while (v28);
            }

            self = selfCopy;
            v22 = v57;
          }

          if (v60)
          {
            personHandle4 = [(INPerson *)self personHandle];
            label2 = [personHandle4 label];
            v38 = [v22 tu_emailAddressesMatchingPersonHandleLabel:label2];

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
                  value3 = [v44 value];
                  v47 = [v45 initWithType:3 value:value3];

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

    cacheCopy = v53;
    sourceCopy = v54;
    v16 = tu_allContactIdentifiers;
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

- (id)tu_contactsMatchingIdentifiers:(id)identifiers contactsDataSource:(id)source identifierToContactCache:(id)cache
{
  identifiersCopy = identifiers;
  sourceCopy = source;
  cacheCopy = cache;
  if ([identifiersCopy count])
  {
    v52 = sourceCopy;
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
    v51 = identifiersCopy;
    v16 = identifiersCopy;
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
          v22 = [cacheCopy objectForKey:v21];
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

    sourceCopy = v52;
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
            identifier = [v41 identifier];
            [cacheCopy setObject:v41 forKey:identifier];

            [v15 addObject:v41];
          }

          v38 = [v36 countByEnumeratingWithState:&v53 objects:v62 count:16];
        }

        while (v38);
      }

      sourceCopy = v52;
    }

    v43 = IntentHandlerDefaultLog();
    v44 = v43;
    if (v50 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, OS_SIGNPOST_INTERVAL_END, spid, "contactsMatchingIdentifiers", "", buf, 2u);
    }

    v45 = [v15 copy];
    identifiersCopy = v51;
  }

  else
  {
    v45 = &__NSArray0__struct;
  }

  return v45;
}

+ (id)tu_personMatchingHandle:(id)handle contactsDataSource:(id)source isoCountryCodes:(id)codes
{
  handleCopy = handle;
  sourceCopy = source;
  codesCopy = codes;
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
    v63 = handleCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Looking up contact in the contact store matching handle: %@", buf, 0xCu);
  }

  type = [handleCopy type];
  if (type == 1)
  {
    value = [handleCopy value];
    _appearsToBePhoneNumber = [value _appearsToBePhoneNumber];

    if (!_appearsToBePhoneNumber)
    {
      value2 = [handleCopy value];
      _appearsToBeEmail = [value2 _appearsToBeEmail];

      if (!_appearsToBeEmail)
      {
        goto LABEL_33;
      }

LABEL_9:
      value3 = [handleCopy value];
      v18 = [CNContact predicateForContactsMatchingEmailAddress:value3];
      goto LABEL_12;
    }
  }

  else if (type != 2)
  {
    if (type != 3)
    {
      goto LABEL_33;
    }

    goto LABEL_9;
  }

  value3 = [handleCopy value];
  v21 = [CNPhoneNumber phoneNumberWithStringValue:value3];
  v18 = [CNContact predicateForContactsMatchingPhoneNumber:v21];

LABEL_12:
  if (v18)
  {
    v61[0] = CNContactPhoneNumbersKey;
    v61[1] = CNContactEmailAddressesKey;
    v22 = +[NSPersonNameComponents descriptorForUsedKeys];
    v61[2] = v22;
    v23 = [NSArray arrayWithObjects:v61 count:3];

    v59 = sourceCopy;
    v60 = 0;
    v58 = v23;
    v24 = [sourceCopy unifiedContactsMatchingPredicate:v18 keysToFetch:v23 error:&v60];
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
        firstObject = [v24 firstObject];
        v36 = firstObject;
        v57 = v25;
        if (firstObject)
        {
          v37 = codesCopy;
          v38 = [firstObject tu_personHandleMatchingHandle:handleCopy isoCountryCodes:codesCopy];
          v39 = [NSPersonNameComponents componentsForContact:v36];
        }

        else
        {
          v40 = [INPersonHandle alloc];
          v37 = codesCopy;
          v38 = [v40 tu_initUnlabledPersonHandleWithTUHandle:handleCopy isoCountryCodes:codesCopy];

          v39 = 0;
        }

        v41 = [INPerson alloc];
        identifier = [v36 identifier];
        LOBYTE(v55) = 0;
        v43 = [v41 initWithPersonHandle:v38 nameComponents:v39 displayName:0 image:0 contactIdentifier:identifier customIdentifier:0 isMe:v55];

        v44 = IntentHandlerDefaultLog();
        v45 = v44;
        if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v45, OS_SIGNPOST_INTERVAL_END, spid, "personMatchingHandle", "", buf, 2u);
        }

        sourceCopy = v59;
        codesCopy = v37;
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
    sub_10002F368(handleCopy, v18, v48, v49, v50, v51, v52, v53);
  }

  v43 = 0;
LABEL_36:

  return v43;
}

- (BOOL)usesScoreBasedEncoding
{
  scoredAlternatives = [(INPerson *)self scoredAlternatives];
  if ([scoredAlternatives count])
  {
    scoredAlternatives2 = [(INPerson *)self scoredAlternatives];
    v5 = [scoredAlternatives2 objectAtIndexedSubscript:0];
    score = [v5 score];
    v7 = score != 0;
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
    scoredAlternatives = [(INPerson *)self scoredAlternatives];
    v6 = [scoredAlternatives countByEnumeratingWithState:&v40 objects:v46 count:16];
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
            objc_enumerationMutation(scoredAlternatives);
          }

          v10 = *(*(&v40 + 1) + 8 * i);
          person = [v10 person];
          contactIdentifier = [person contactIdentifier];

          if ([contactIdentifier length])
          {
            [v4 addObject:contactIdentifier];
            v13 = [v3 valueForKey:contactIdentifier];
            score = [v10 score];
            v15 = score;
            if (score)
            {
              v16 = score;
            }

            else
            {
              v16 = [NSNumber numberWithFloat:0.0];
            }

            v17 = v16;

            if (!v13 || [v17 compare:v13] == 1)
            {
              [v3 setValue:v17 forKey:contactIdentifier];
            }
          }
        }

        v7 = [scoredAlternatives countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v7);
    }

    v18 = [v3 copy];
    array = [v4 array];

    if ([array count])
    {
      if ([v18 count] == 1)
      {
        allValues = [v18 allValues];
        firstObject = [allValues firstObject];

        [firstObject floatValue];
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
    contactIdentifier2 = [(INPerson *)self contactIdentifier];
    v25 = [contactIdentifier2 length];

    if (v25)
    {
      contactIdentifier3 = [(INPerson *)self contactIdentifier];
      v45 = contactIdentifier3;
      v23 = 1;
      array = [NSArray arrayWithObjects:&v45 count:1];

      goto LABEL_31;
    }

    siriMatches = [(INPerson *)self siriMatches];
    if ([siriMatches count] == 1)
    {
      siriMatches2 = [(INPerson *)self siriMatches];
      firstObject2 = [siriMatches2 firstObject];
      contactIdentifier4 = [firstObject2 contactIdentifier];

      if (contactIdentifier4)
      {
        siriMatches3 = [(INPerson *)self siriMatches];
        firstObject3 = [siriMatches3 firstObject];
        contactIdentifier5 = [firstObject3 contactIdentifier];
        v44 = contactIdentifier5;
        array = [NSArray arrayWithObjects:&v44 count:1];

        v23 = 2;
        goto LABEL_31;
      }
    }

    else
    {
    }

    siriMatches4 = [(INPerson *)self siriMatches];
    v37 = [siriMatches4 count];

    if (v37 < 2)
    {
      v23 = 0;
      array = &__NSArray0__struct;
    }

    else
    {
      siriMatches5 = [(INPerson *)self siriMatches];
      v39 = NSStringFromSelector("contactIdentifier");
      array = [siriMatches5 valueForKey:v39];

      v23 = 3;
    }
  }

LABEL_31:
  v34 = [[SiriMatchRecommendation alloc] initWithType:v23 contactIdentifiers:array];

  return v34;
}

@end