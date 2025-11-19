@interface StartCallIntentHandlerUtilities
+ (BOOL)contactsShareHandleValue:(id)a3;
+ (id)contactWithMostHandles:(id)a3;
+ (id)inPersonFromContact:(id)a3 handleValue:(id)a4 handleType:(int64_t)a5 handleLabel:(id)a6;
+ (id)sortContacts:(id)a3 withIdentifiers:(id)a4;
+ (void)populatePersonsByTUHandleFrom:(id)a3 personsByTUHandle:(id)a4 tuHandleOrderedSet:(id)a5;
@end

@implementation StartCallIntentHandlerUtilities

+ (id)sortContacts:(id)a3 withIdentifiers:(id)a4
{
  v42 = a3;
  v5 = a4;
  v6 = IntentHandlerDefaultLog();
  v7 = os_signpost_id_generate(v6);

  v8 = IntentHandlerDefaultLog();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "sortMatchingContactsWithIdentifiers", "", buf, 2u);
  }

  if (v42)
  {
    spid = v7;
    v37 = v7 - 1;
    v40 = objc_alloc_init(NSMutableArray);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v38 = v5;
    obj = v5;
    v10 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
    if (v10)
    {
      v11 = v10;
      v41 = *v52;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v52 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v51 + 1) + 8 * i);
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v14 = v42;
          v15 = [v14 countByEnumeratingWithState:&v47 objects:v57 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v48;
            while (2)
            {
              for (j = 0; j != v16; j = j + 1)
              {
                if (*v48 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v47 + 1) + 8 * j);
                v20 = [v19 identifier];
                v21 = [v13 isEqualToString:v20];

                if (v21)
                {
                  [v40 addObject:v19];
                  goto LABEL_20;
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v47 objects:v57 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

LABEL_20:
        }

        v11 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
      }

      while (v11);
    }

    v22 = v40;
    v23 = [v40 count];
    if (v23 != [v42 count])
    {
      v24 = objc_alloc_init(NSMutableSet);
      [v24 addObjectsFromArray:v40];
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v25 = v42;
      v26 = [v25 countByEnumeratingWithState:&v43 objects:v56 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v44;
        do
        {
          for (k = 0; k != v27; k = k + 1)
          {
            if (*v44 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v43 + 1) + 8 * k);
            if (([v24 containsObject:v30] & 1) == 0)
            {
              [v40 addObject:v30];
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v43 objects:v56 count:16];
        }

        while (v27);
      }
    }

    v31 = IntentHandlerDefaultLog();
    v32 = v31;
    if (v37 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_INTERVAL_END, spid, "sortMatchingContactsWithIdentifiers", "", buf, 2u);
    }

    v33 = [v40 copy];
    v5 = v38;
  }

  else
  {
    v34 = IntentHandlerDefaultLog();
    v22 = v34;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_END, v7, "sortMatchingContactsWithIdentifiers", "", buf, 2u);
    }

    v33 = &__NSArray0__struct;
  }

  return v33;
}

+ (id)inPersonFromContact:(id)a3 handleValue:(id)a4 handleType:(int64_t)a5 handleLabel:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [[INPersonHandle alloc] initWithValue:v10 type:a5 label:v9];

  v13 = [CNContactFormatter stringFromContact:v11 style:0];
  v14 = [NSPersonNameComponents componentsForContact:v11];
  v15 = [INPerson alloc];
  v16 = [v11 identifier];
  LOBYTE(v20) = 0;
  v17 = [v15 initWithPersonHandle:v12 nameComponents:v14 displayName:v13 image:0 contactIdentifier:v16 customIdentifier:0 isMe:v20];

  v18 = [v11 phonemeData];

  [v17 setPhonemeData:v18];

  return v17;
}

+ (BOOL)contactsShareHandleValue:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v38 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v35 = v3;
    obj = v3;
    v4 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
    if (v4)
    {
      v5 = v4;
      v37 = *v52;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v52 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v51 + 1) + 8 * i);
          v8 = objc_alloc_init(NSMutableSet);
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v9 = [v7 phoneNumbers];
          v10 = [v9 countByEnumeratingWithState:&v47 objects:v57 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v48;
            do
            {
              for (j = 0; j != v11; j = j + 1)
              {
                if (*v48 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = [*(*(&v47 + 1) + 8 * j) value];
                v15 = [v14 unformattedInternationalStringValue];

                [v8 addObject:v15];
              }

              v11 = [v9 countByEnumeratingWithState:&v47 objects:v57 count:16];
            }

            while (v11);
          }

          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v16 = [v7 emailAddresses];
          v17 = [v16 countByEnumeratingWithState:&v43 objects:v56 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v44;
            do
            {
              for (k = 0; k != v18; k = k + 1)
              {
                if (*v44 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = [*(*(&v43 + 1) + 8 * k) value];
                v22 = [v21 lowercaseString];
                [v8 addObject:v22];
              }

              v18 = [v16 countByEnumeratingWithState:&v43 objects:v56 count:16];
            }

            while (v18);
          }

          v23 = [v8 copy];
          [v38 setObject:v23 forKey:v7];
        }

        v5 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
      }

      while (v5);
    }

    v24 = [NSMutableSet alloc];
    v25 = [v38 allValues];
    v26 = [v25 firstObject];
    v27 = [v24 initWithSet:v26];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v28 = [v38 allValues];
    v29 = [v28 countByEnumeratingWithState:&v39 objects:v55 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v40;
      do
      {
        for (m = 0; m != v30; m = m + 1)
        {
          if (*v40 != v31)
          {
            objc_enumerationMutation(v28);
          }

          [v27 intersectSet:{*(*(&v39 + 1) + 8 * m), v35}];
        }

        v30 = [v28 countByEnumeratingWithState:&v39 objects:v55 count:16];
      }

      while (v30);
    }

    v33 = [v27 count] != 0;
    v3 = v35;
  }

  else
  {
    v33 = 1;
  }

  return v33;
}

+ (id)contactWithMostHandles:(id)a3
{
  v3 = a3;
  v4 = [v3 firstObject];
  v5 = [v4 emailAddresses];
  v6 = [v5 count];
  v7 = [v4 phoneNumbers];
  v8 = [v7 count];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v3;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = &v6[v8];
    v13 = *v23;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = [v15 emailAddresses];
        v17 = [v16 count];
        v18 = [v15 phoneNumbers];
        v19 = &v17[[v18 count]];

        if (v19 > v12)
        {
          v20 = v15;

          v12 = v19;
          v4 = v20;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  return v4;
}

+ (void)populatePersonsByTUHandleFrom:(id)a3 personsByTUHandle:(id)a4 tuHandleOrderedSet:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = [TUHandle handleWithPerson:v14];
        if (v15)
        {
          [v9 addObject:v15];
          v16 = [v8 objectForKeyedSubscript:v15];
          if (!v16)
          {
            v16 = objc_alloc_init(NSMutableArray);
            [v8 setObject:v16 forKeyedSubscript:v15];
          }

          [v16 addObject:v14];
        }
      }

      v11 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

@end