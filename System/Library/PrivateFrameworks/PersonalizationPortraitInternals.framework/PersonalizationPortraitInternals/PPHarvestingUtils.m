@interface PPHarvestingUtils
+ (id)appBlocklist;
+ (id)contactHandlesForSearchableItem:(id)a3;
+ (id)scoredEntitiesFromMapsIntent:(id)a3;
+ (id)textContentFromSearchableItem:(id)a3;
@end

@implementation PPHarvestingUtils

+ (id)appBlocklist
{
  if (appBlocklist_onceToken != -1)
  {
    dispatch_once(&appBlocklist_onceToken, &__block_literal_global_4426);
  }

  v3 = appBlocklist_blocklist;

  return v3;
}

+ (id)scoredEntitiesFromMapsIntent:(id)a3
{
  v84 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 backingStore];
  if (objc_opt_respondsToSelector())
  {
    v5 = v4;
    v6 = [v5 parameters];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [v5 parameters];
      v9 = pp_default_log_handle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v83 = [v8 count];
        _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_INFO, "PPNamedEntityPlugin: Maps intent parameter count: %tu", buf, 0xCu);
      }

      v67 = v5;
      v68 = v4;
      v69 = v3;

      v75 = objc_opt_new();
      v10 = [MEMORY[0x277CBEAF8] currentLocale];
      v76 = [v10 languageCode];

      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v11 = v8;
      v12 = [v11 countByEnumeratingWithState:&v77 objects:v81 count:16];
      if (!v12)
      {
        v70 = 0;
        v71 = 0;
        v72 = 0;
        v73 = 0;
        v74 = 0;
        goto LABEL_48;
      }

      v13 = v12;
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 0;
      v74 = 0;
      v14 = *v78;
      while (1)
      {
        v15 = 0;
        do
        {
          if (*v78 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v77 + 1) + 8 * v15);
          if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
          {
            v22 = pp_default_log_handle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23224A000, v22, OS_LOG_TYPE_DEFAULT, "PPNamedEntityPlugin: ignoring Maps intent property since it is missing role and/or payload", buf, 2u);
            }

            goto LABEL_17;
          }

          v17 = [v16 role];
          v18 = [v17 isEqualToString:@"title"];

          if (v18)
          {
            goto LABEL_13;
          }

          v25 = [v16 role];
          v26 = [v25 isEqualToString:@"Street"];

          if (v26)
          {
            v27 = [v16 payload];
            v28 = [v27 payloadStringValues];
            v29 = [v28 firstObject];
            v30 = [v29 value];

            if ([v30 length])
            {
              v22 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:v30 category:8 language:v76];
              v31 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v22 score:0.5];
              [v75 addObject:v31];

              v74 = v30;
LABEL_17:

              goto LABEL_18;
            }

            v74 = v30;
          }

          else
          {
            v32 = [v16 role];
            v33 = [v32 isEqualToString:@"Name"];

            if (v33)
            {
LABEL_13:
              v19 = [v16 payload];
              v20 = [v19 payloadStringValues];
              v21 = [v20 firstObject];
              v22 = [v21 value];

              if ([v22 length])
              {
                v23 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:v22 category:3 language:v76];
                v24 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v23 score:0.5];
                [v75 addObject:v24];
              }

              goto LABEL_17;
            }

            v34 = [v16 role];
            v35 = [v34 isEqualToString:@"City"];

            if (v35)
            {
              v36 = [v16 payload];
              v37 = [v36 payloadStringValues];
              v38 = [v37 firstObject];
              v39 = [v38 value];

              if ([v39 length])
              {
                v22 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:v39 category:9 language:v76];
                v40 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v22 score:0.5];
                [v75 addObject:v40];

                v73 = v39;
                goto LABEL_17;
              }

              v73 = v39;
            }

            else
            {
              v41 = [v16 role];
              v42 = [v41 isEqualToString:@"ZIP"];

              if (v42)
              {
                v22 = [v16 payload];
                v43 = [v22 payloadStringValues];
                v44 = [v43 firstObject];
                v45 = [v44 value];

                v72 = v45;
                goto LABEL_17;
              }

              v46 = [v16 role];
              v47 = [v46 isEqualToString:@"State"];

              if (v47)
              {
                v48 = [v16 payload];
                v49 = [v48 payloadStringValues];
                v50 = [v49 firstObject];
                v51 = [v50 value];

                if ([v51 length])
                {
                  v22 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:v51 category:10 language:v76];
                  v52 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v22 score:0.5];
                  [v75 addObject:v52];

                  v71 = v51;
                  goto LABEL_17;
                }

                v71 = v51;
              }

              else
              {
                v53 = [v16 role];
                v54 = [v53 isEqualToString:@"Country"];

                if (v54)
                {
                  v55 = [v16 payload];
                  v56 = [v55 payloadStringValues];
                  v57 = [v56 firstObject];
                  v58 = [v57 value];

                  if ([v58 length])
                  {
                    v22 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:v58 category:11 language:v76];
                    v59 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v22 score:0.5];
                    [v75 addObject:v59];

                    v70 = v58;
                    goto LABEL_17;
                  }

                  v70 = v58;
                }
              }
            }
          }

LABEL_18:
          ++v15;
        }

        while (v13 != v15);
        v60 = [v11 countByEnumeratingWithState:&v77 objects:v81 count:16];
        v13 = v60;
        if (!v60)
        {
LABEL_48:

          v62 = [PPNamedEntitySupport fullAddressForStreetAddress:v74 city:v73 state:v71 postalCode:v72 country:v70];
          v4 = v68;
          if ([v62 length])
          {
            v63 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:v62 category:12 language:v76];
            v64 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v63 score:0.5];
            [v75 addObject:v64];
          }

          v61 = v75;

          v3 = v69;
          v5 = v67;
          goto LABEL_51;
        }
      }
    }

    v11 = pp_default_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, "PPNamedEntityPlugin: ignoring Maps intent since the parameters do not look like an array", buf, 2u);
    }

    v61 = MEMORY[0x277CBEBF8];
LABEL_51:
  }

  else
  {
    v5 = pp_default_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPNamedEntityPlugin: ignoring Maps intent since it isn't a generic intent with parameters", buf, 2u);
    }

    v61 = MEMORY[0x277CBEBF8];
  }

  v65 = *MEMORY[0x277D85DE8];

  return v61;
}

+ (id)textContentFromSearchableItem:(id)a3
{
  v3 = a3;
  v4 = [v3 attributeSet];

  if (!v4)
  {
    v11 = 0;
    goto LABEL_25;
  }

  v5 = *MEMORY[0x277D3A698];
  v6 = [v3 bundleID];
  if ([v5 isEqualToString:v6])
  {
    v7 = *MEMORY[0x277D41E90];
    v8 = [v3 attributeSet];
    v9 = [v8 textContentDataSource];
    LODWORD(v7) = [v7 isEqualToString:v9];

    if (v7)
    {
      v10 = [v3 attributeSet];
      v11 = [v10 title];

      goto LABEL_25;
    }
  }

  else
  {
  }

  v12 = *MEMORY[0x277D3A690];
  v13 = [v3 bundleID];
  LODWORD(v12) = [v12 isEqualToString:v13];

  if (v12)
  {
    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    v15 = [v3 attributeSet];
    v16 = [v15 title];
    v17 = [v3 attributeSet];
    v18 = [v17 comment];
LABEL_16:
    v25 = v18;
    v11 = [v14 initWithFormat:@"%@\n\n%@", v16, v18];

    goto LABEL_25;
  }

  v19 = *MEMORY[0x277D3A658];
  v20 = [v3 bundleID];
  LODWORD(v19) = [v19 isEqualToString:v20];

  if (!v19)
  {
    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    v15 = [v3 attributeSet];
    v16 = [v15 title];
    v17 = [v3 attributeSet];
    v18 = [v17 textContentNoCopy];
    goto LABEL_16;
  }

  context = objc_autoreleasePoolPush();
  v21 = [v3 attributeSet];
  v22 = [v21 attributeForKey:@"com_apple_mobilesms_lpTitle"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = [v22 firstObject];

    v22 = v23;
  }

  if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v24 = v22;
  }

  else
  {
    v24 = &stru_284759D38;
  }

  v26 = [v3 attributeSet];
  v27 = [v26 attributeForKey:@"com_apple_mobilesms_lpDescription"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = [v27 firstObject];

    v27 = v28;
  }

  if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v29 = v27;
  }

  else
  {
    v29 = &stru_284759D38;
  }

  v30 = objc_alloc(MEMORY[0x277CCACA8]);
  v31 = [v3 attributeSet];
  v32 = [v31 title];
  v33 = [v3 attributeSet];
  v34 = [v33 textContentNoCopy];
  v11 = [v30 initWithFormat:@"%@\n\n%@\n\n%@\n\n%@", v32, v34, v24, v29];

  objc_autoreleasePoolPop(context);
LABEL_25:

  return v11;
}

+ (id)contactHandlesForSearchableItem:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v5 = [v3 attributeSet];
  v6 = [v5 authors];

  v7 = [v6 countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v49;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v49 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v48 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = MEMORY[0x277D41E30];
        v14 = [v11 handles];
        v15 = [v13 sanitizeHandles:v14];
        [v4 addObjectsFromArray:v15];

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v8);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v16 = [v3 attributeSet];
  v17 = [v16 primaryRecipients];

  v18 = [v17 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v45;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v45 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v44 + 1) + 8 * j);
        v23 = objc_autoreleasePoolPush();
        v24 = MEMORY[0x277D41E30];
        v25 = [v22 handles];
        v26 = [v24 sanitizeHandles:v25];
        [v4 addObjectsFromArray:v26];

        objc_autoreleasePoolPop(v23);
      }

      v19 = [v17 countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v19);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v27 = [v3 attributeSet];
  v28 = [v27 additionalRecipients];

  v29 = [v28 countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v41;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v41 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v40 + 1) + 8 * k);
        v34 = objc_autoreleasePoolPush();
        v35 = MEMORY[0x277D41E30];
        v36 = [v33 handles];
        v37 = [v35 sanitizeHandles:v36];
        [v4 addObjectsFromArray:v37];

        objc_autoreleasePoolPop(v34);
      }

      v30 = [v28 countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v30);
  }

  v38 = *MEMORY[0x277D85DE8];

  return v4;
}

void __33__PPHarvestingUtils_appBlocklist__block_invoke()
{
  v0 = +[PPConnectionsParameters sharedInstance];
  v1 = [v0 donationBlockedApps];
  v2 = v1;
  v3 = MEMORY[0x277CBEBF8];
  if (v1)
  {
    v3 = v1;
  }

  v4 = v3;

  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v4];
  v6 = appBlocklist_blocklist;
  appBlocklist_blocklist = v5;
}

@end