@interface PPHarvestingUtils
+ (id)appBlocklist;
+ (id)contactHandlesForSearchableItem:(id)item;
+ (id)scoredEntitiesFromMapsIntent:(id)intent;
+ (id)textContentFromSearchableItem:(id)item;
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

+ (id)scoredEntitiesFromMapsIntent:(id)intent
{
  v84 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  backingStore = [intentCopy backingStore];
  if (objc_opt_respondsToSelector())
  {
    v5 = backingStore;
    parameters = [v5 parameters];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      parameters2 = [v5 parameters];
      v9 = pp_default_log_handle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v83 = [parameters2 count];
        _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_INFO, "PPNamedEntityPlugin: Maps intent parameter count: %tu", buf, 0xCu);
      }

      v67 = v5;
      v68 = backingStore;
      v69 = intentCopy;

      v75 = objc_opt_new();
      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      languageCode = [currentLocale languageCode];

      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v11 = parameters2;
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
            value2 = pp_default_log_handle();
            if (os_log_type_enabled(value2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23224A000, value2, OS_LOG_TYPE_DEFAULT, "PPNamedEntityPlugin: ignoring Maps intent property since it is missing role and/or payload", buf, 2u);
            }

            goto LABEL_17;
          }

          role = [v16 role];
          v18 = [role isEqualToString:@"title"];

          if (v18)
          {
            goto LABEL_13;
          }

          role2 = [v16 role];
          v26 = [role2 isEqualToString:@"Street"];

          if (v26)
          {
            payload = [v16 payload];
            payloadStringValues = [payload payloadStringValues];
            firstObject = [payloadStringValues firstObject];
            value = [firstObject value];

            if ([value length])
            {
              value2 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:value category:8 language:languageCode];
              v31 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:value2 score:0.5];
              [v75 addObject:v31];

              v74 = value;
LABEL_17:

              goto LABEL_18;
            }

            v74 = value;
          }

          else
          {
            role3 = [v16 role];
            v33 = [role3 isEqualToString:@"Name"];

            if (v33)
            {
LABEL_13:
              payload2 = [v16 payload];
              payloadStringValues2 = [payload2 payloadStringValues];
              firstObject2 = [payloadStringValues2 firstObject];
              value2 = [firstObject2 value];

              if ([value2 length])
              {
                v23 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:value2 category:3 language:languageCode];
                v24 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v23 score:0.5];
                [v75 addObject:v24];
              }

              goto LABEL_17;
            }

            role4 = [v16 role];
            v35 = [role4 isEqualToString:@"City"];

            if (v35)
            {
              payload3 = [v16 payload];
              payloadStringValues3 = [payload3 payloadStringValues];
              firstObject3 = [payloadStringValues3 firstObject];
              value3 = [firstObject3 value];

              if ([value3 length])
              {
                value2 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:value3 category:9 language:languageCode];
                v40 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:value2 score:0.5];
                [v75 addObject:v40];

                v73 = value3;
                goto LABEL_17;
              }

              v73 = value3;
            }

            else
            {
              role5 = [v16 role];
              v42 = [role5 isEqualToString:@"ZIP"];

              if (v42)
              {
                value2 = [v16 payload];
                payloadStringValues4 = [value2 payloadStringValues];
                firstObject4 = [payloadStringValues4 firstObject];
                value4 = [firstObject4 value];

                v72 = value4;
                goto LABEL_17;
              }

              role6 = [v16 role];
              v47 = [role6 isEqualToString:@"State"];

              if (v47)
              {
                payload4 = [v16 payload];
                payloadStringValues5 = [payload4 payloadStringValues];
                firstObject5 = [payloadStringValues5 firstObject];
                value5 = [firstObject5 value];

                if ([value5 length])
                {
                  value2 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:value5 category:10 language:languageCode];
                  v52 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:value2 score:0.5];
                  [v75 addObject:v52];

                  v71 = value5;
                  goto LABEL_17;
                }

                v71 = value5;
              }

              else
              {
                role7 = [v16 role];
                v54 = [role7 isEqualToString:@"Country"];

                if (v54)
                {
                  payload5 = [v16 payload];
                  payloadStringValues6 = [payload5 payloadStringValues];
                  firstObject6 = [payloadStringValues6 firstObject];
                  value6 = [firstObject6 value];

                  if ([value6 length])
                  {
                    value2 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:value6 category:11 language:languageCode];
                    v59 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:value2 score:0.5];
                    [v75 addObject:v59];

                    v70 = value6;
                    goto LABEL_17;
                  }

                  v70 = value6;
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
          backingStore = v68;
          if ([v62 length])
          {
            v63 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:v62 category:12 language:languageCode];
            v64 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v63 score:0.5];
            [v75 addObject:v64];
          }

          v61 = v75;

          intentCopy = v69;
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

+ (id)textContentFromSearchableItem:(id)item
{
  itemCopy = item;
  attributeSet = [itemCopy attributeSet];

  if (!attributeSet)
  {
    title = 0;
    goto LABEL_25;
  }

  v5 = *MEMORY[0x277D3A698];
  bundleID = [itemCopy bundleID];
  if ([v5 isEqualToString:bundleID])
  {
    v7 = *MEMORY[0x277D41E90];
    attributeSet2 = [itemCopy attributeSet];
    textContentDataSource = [attributeSet2 textContentDataSource];
    LODWORD(v7) = [v7 isEqualToString:textContentDataSource];

    if (v7)
    {
      attributeSet3 = [itemCopy attributeSet];
      title = [attributeSet3 title];

      goto LABEL_25;
    }
  }

  else
  {
  }

  v12 = *MEMORY[0x277D3A690];
  bundleID2 = [itemCopy bundleID];
  LODWORD(v12) = [v12 isEqualToString:bundleID2];

  if (v12)
  {
    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    attributeSet4 = [itemCopy attributeSet];
    title2 = [attributeSet4 title];
    attributeSet5 = [itemCopy attributeSet];
    comment = [attributeSet5 comment];
LABEL_16:
    v25 = comment;
    title = [v14 initWithFormat:@"%@\n\n%@", title2, comment];

    goto LABEL_25;
  }

  v19 = *MEMORY[0x277D3A658];
  bundleID3 = [itemCopy bundleID];
  LODWORD(v19) = [v19 isEqualToString:bundleID3];

  if (!v19)
  {
    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    attributeSet4 = [itemCopy attributeSet];
    title2 = [attributeSet4 title];
    attributeSet5 = [itemCopy attributeSet];
    comment = [attributeSet5 textContentNoCopy];
    goto LABEL_16;
  }

  context = objc_autoreleasePoolPush();
  attributeSet6 = [itemCopy attributeSet];
  v22 = [attributeSet6 attributeForKey:@"com_apple_mobilesms_lpTitle"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject = [v22 firstObject];

    v22 = firstObject;
  }

  if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v24 = v22;
  }

  else
  {
    v24 = &stru_284759D38;
  }

  attributeSet7 = [itemCopy attributeSet];
  v27 = [attributeSet7 attributeForKey:@"com_apple_mobilesms_lpDescription"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject2 = [v27 firstObject];

    v27 = firstObject2;
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
  attributeSet8 = [itemCopy attributeSet];
  title3 = [attributeSet8 title];
  attributeSet9 = [itemCopy attributeSet];
  textContentNoCopy = [attributeSet9 textContentNoCopy];
  title = [v30 initWithFormat:@"%@\n\n%@\n\n%@\n\n%@", title3, textContentNoCopy, v24, v29];

  objc_autoreleasePoolPop(context);
LABEL_25:

  return title;
}

+ (id)contactHandlesForSearchableItem:(id)item
{
  v55 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v4 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  attributeSet = [itemCopy attributeSet];
  authors = [attributeSet authors];

  v7 = [authors countByEnumeratingWithState:&v48 objects:v54 count:16];
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
          objc_enumerationMutation(authors);
        }

        v11 = *(*(&v48 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = MEMORY[0x277D41E30];
        handles = [v11 handles];
        v15 = [v13 sanitizeHandles:handles];
        [v4 addObjectsFromArray:v15];

        objc_autoreleasePoolPop(v12);
      }

      v8 = [authors countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v8);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  attributeSet2 = [itemCopy attributeSet];
  primaryRecipients = [attributeSet2 primaryRecipients];

  v18 = [primaryRecipients countByEnumeratingWithState:&v44 objects:v53 count:16];
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
          objc_enumerationMutation(primaryRecipients);
        }

        v22 = *(*(&v44 + 1) + 8 * j);
        v23 = objc_autoreleasePoolPush();
        v24 = MEMORY[0x277D41E30];
        handles2 = [v22 handles];
        v26 = [v24 sanitizeHandles:handles2];
        [v4 addObjectsFromArray:v26];

        objc_autoreleasePoolPop(v23);
      }

      v19 = [primaryRecipients countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v19);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  attributeSet3 = [itemCopy attributeSet];
  additionalRecipients = [attributeSet3 additionalRecipients];

  v29 = [additionalRecipients countByEnumeratingWithState:&v40 objects:v52 count:16];
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
          objc_enumerationMutation(additionalRecipients);
        }

        v33 = *(*(&v40 + 1) + 8 * k);
        v34 = objc_autoreleasePoolPush();
        v35 = MEMORY[0x277D41E30];
        handles3 = [v33 handles];
        v37 = [v35 sanitizeHandles:handles3];
        [v4 addObjectsFromArray:v37];

        objc_autoreleasePoolPop(v34);
      }

      v30 = [additionalRecipients countByEnumeratingWithState:&v40 objects:v52 count:16];
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