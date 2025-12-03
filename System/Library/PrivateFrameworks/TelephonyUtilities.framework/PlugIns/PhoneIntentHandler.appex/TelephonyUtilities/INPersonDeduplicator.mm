@interface INPersonDeduplicator
+ (id)dedupeINPersons:(id)persons;
@end

@implementation INPersonDeduplicator

+ (id)dedupeINPersons:(id)persons
{
  personsCopy = persons;
  if ([personsCopy count] > 1)
  {
    v5 = objc_alloc_init(NSMutableOrderedSet);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v6 = personsCopy;
    v7 = [v6 countByEnumeratingWithState:&v42 objects:v53 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v43;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v43 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [[INPersonWrapper alloc] initWithINPerson:*(*(&v42 + 1) + 8 * i)];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v42 objects:v53 count:16];
      }

      while (v8);
    }

    v12 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v6 count];
      v14 = [v5 count];
      *buf = 134218240;
      v50 = v13;
      v51 = 2048;
      v52 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Before deduping: %ld, After deduping: %ld", buf, 0x16u);
    }

    firstObject = [v5 firstObject];
    tuHandle = [firstObject tuHandle];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v17 = v5;
    v18 = [v17 countByEnumeratingWithState:&v38 objects:v48 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v39;
      while (2)
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v39 != v20)
          {
            objc_enumerationMutation(v17);
          }

          tuHandle2 = [*(*(&v38 + 1) + 8 * j) tuHandle];
          v23 = TUHandlesAreCanonicallyEqual();

          if (!v23)
          {

            firstObject2 = objc_alloc_init(NSMutableArray);
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v27 = v17;
            v28 = [v27 countByEnumeratingWithState:&v34 objects:v46 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v35;
              do
              {
                for (k = 0; k != v29; k = k + 1)
                {
                  if (*v35 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  inPerson = [*(*(&v34 + 1) + 8 * k) inPerson];
                  [firstObject2 addObject:inPerson];
                }

                v29 = [v27 countByEnumeratingWithState:&v34 objects:v46 count:16];
              }

              while (v29);
            }

            v4 = [firstObject2 copy];
            goto LABEL_31;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v38 objects:v48 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v24 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "All persons have equivalent handle values", buf, 2u);
    }

    firstObject2 = [v17 firstObject];
    inPerson2 = [firstObject2 inPerson];
    v47 = inPerson2;
    v4 = [NSArray arrayWithObjects:&v47 count:1];

LABEL_31:
  }

  else
  {
    v4 = personsCopy;
  }

  return v4;
}

@end