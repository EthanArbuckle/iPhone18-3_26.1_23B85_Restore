@interface SPUISContactStore
+ (id)_contactWithEmail:(id)a3 keysToFetch:(id)a4;
+ (id)_contactsWithEmails:(id)a3 keysToFetch:(id)a4;
+ (id)_contactsWithIds:(id)a3;
+ (id)_defaultKeysForContactByIdentifier;
+ (id)contactForContactIdentifier:(id)a3;
+ (id)contactStore;
+ (id)contactWithEmail:(id)a3;
+ (id)contactWithEmailForMailResults:(id)a3;
+ (void)_clearCachedContacts;
+ (void)initialize;
+ (void)precacheContactsForResults:(id)a3;
@end

@implementation SPUISContactStore

+ (void)initialize
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___SPUISContactStore;
  objc_msgSendSuper2(&v4, sel_initialize);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__SPUISContactStore_initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (initialize_onceToken != -1)
  {
    dispatch_once(&initialize_onceToken, block);
  }
}

void __31__SPUISContactStore_initialize__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = _SPUISEmailToContactCache;
  _SPUISEmailToContactCache = v2;

  v4 = objc_opt_new();
  v5 = _SPUISIdToContactCache;
  _SPUISIdToContactCache = v4;

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:*(a1 + 32) selector:sel__clearCachedContacts name:@"UIApplicationDidReceiveMemoryWarningNotification" object:0];
}

+ (id)contactStore
{
  if (contactStore_sContactStoreOnce != -1)
  {
    +[SPUISContactStore contactStore];
  }

  v3 = contactStore_sContactStore;

  return v3;
}

uint64_t __33__SPUISContactStore_contactStore__block_invoke()
{
  contactStore_sContactStore = objc_alloc_init(MEMORY[0x277CBDAB8]);

  return MEMORY[0x2821F96F8]();
}

+ (id)_defaultKeysForContactByIdentifier
{
  v6[9] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:{0, *MEMORY[0x277CBD000], *MEMORY[0x277CBCFF8], *MEMORY[0x277CBCFC0], *MEMORY[0x277CBD098], *MEMORY[0x277CBD0C8], *MEMORY[0x277CBCF90], *MEMORY[0x277CBD138], *MEMORY[0x277CBD090]}];
  v6[8] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:9];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)contactForContactIdentifier:(id)a3
{
  v4 = a3;
  v5 = [_SPUISIdToContactCache objectForKey:v4];
  if (!v5)
  {
    v6 = [a1 _defaultKeysForContactByIdentifier];
    v7 = [a1 contactStore];
    v14 = 0;
    v5 = [v7 unifiedContactWithIdentifier:v4 keysToFetch:v6 error:&v14];
    v8 = v14;

    v9 = _SPUISIdToContactCache;
    if (v5)
    {
      [_SPUISIdToContactCache setObject:v5 forKey:v4];
    }

    else
    {
      v10 = [MEMORY[0x277CBEB68] null];
      [v9 setObject:v10 forKey:v4];
    }
  }

  v11 = [MEMORY[0x277CBEB68] null];
  v12 = [v5 isEqual:v11];

  if (v12)
  {

    v5 = 0;
  }

  return v5;
}

+ (id)contactWithEmail:(id)a3
{
  v4 = a3;
  v5 = [_SPUISEmailToContactCache objectForKey:v4];
  if (!v5)
  {
    v5 = [a1 _contactWithEmail:v4 keysToFetch:MEMORY[0x277CBEBF8]];
  }

  v6 = [MEMORY[0x277CBEB68] null];
  v7 = [v5 isEqual:v6];

  if (v7)
  {

    v5 = 0;
  }

  return v5;
}

+ (id)contactWithEmailForMailResults:(id)a3
{
  v4 = a3;
  v5 = [_SPUISEmailToContactCache objectForKey:v4];
  if (!v5)
  {
    v6 = +[SPUISMailResultBuilder contactKeysToFetch];
    v5 = [a1 _contactWithEmail:v4 keysToFetch:v6];

    v7 = _SPUISEmailToContactCache;
    if (v5)
    {
      [_SPUISEmailToContactCache setObject:v5 forKey:v4];
    }

    else
    {
      v8 = [MEMORY[0x277CBEB68] null];
      [v7 setObject:v8 forKey:v4];

      v5 = 0;
    }
  }

  v9 = [MEMORY[0x277CBEB68] null];
  v10 = [v5 isEqual:v9];

  if (v10)
  {

    v5 = 0;
  }

  return v5;
}

+ (id)_contactWithEmail:(id)a3 keysToFetch:(id)a4
{
  v5 = MEMORY[0x277CBDA58];
  v6 = a4;
  v7 = [v5 predicateForContactsMatchingEmailAddress:a3];
  v8 = [objc_opt_class() contactStore];
  v9 = [v8 unifiedContactsMatchingPredicate:v7 keysToFetch:v6 error:0];

  v10 = [v9 firstObject];

  return v10;
}

+ (void)_clearCachedContacts
{
  [_SPUISEmailToContactCache removeAllObjects];
  v2 = _SPUISIdToContactCache;

  [v2 removeAllObjects];
}

+ (id)_contactsWithEmails:(id)a3 keysToFetch:(id)a4
{
  v6 = *MEMORY[0x277CBCFC0];
  v7 = a3;
  v8 = [a4 arrayByAddingObject:v6];
  v9 = [MEMORY[0x277CBDA58] predicateForContactsMatchingHandleStrings:v7];

  v10 = [objc_alloc(MEMORY[0x277CBDA70]) initWithKeysToFetch:v8];
  [v10 setPredicate:v9];
  v11 = [a1 contactStore];
  v17 = 0;
  v12 = [v11 executeFetchRequest:v10 error:&v17];
  v13 = v17;

  if (v12)
  {
    v14 = [v12 value];
  }

  else
  {
    v15 = SPUISGeneralLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[SPUISContactStore _contactsWithEmails:keysToFetch:];
    }

    v14 = 0;
  }

  return v14;
}

+ (id)_contactsWithIds:(id)a3
{
  v4 = [MEMORY[0x277CBDA58] predicateForContactsWithIdentifiers:a3];
  v5 = objc_alloc(MEMORY[0x277CBDA70]);
  v6 = [a1 _defaultKeysForContactByIdentifier];
  v7 = [v5 initWithKeysToFetch:v6];

  [v7 setPredicate:v4];
  v8 = [a1 contactStore];
  v14 = 0;
  v9 = [v8 executeFetchRequest:v7 error:&v14];
  v10 = v14;

  if (v9)
  {
    v11 = [v9 value];
  }

  else
  {
    v12 = SPUISGeneralLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[SPUISContactStore _contactsWithEmails:keysToFetch:];
    }

    v11 = 0;
  }

  return v11;
}

+ (void)precacheContactsForResults:(id)a3
{
  v87 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [SPUISMailResultBuilder authorEmailsFromResults:v3];
  v5 = objc_opt_new();
  v53 = [_SPUISEmailToContactCache mapTableRepresentation];
  v6 = [v53 keyEnumerator];
  v7 = [v6 allObjects];

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v78 objects:v86 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v79;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v79 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v78 + 1) + 8 * i);
        if (([v7 containsObject:v13] & 1) == 0)
        {
          [v5 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v78 objects:v86 count:16];
    }

    while (v10);
  }

  v52 = v7;

  v54 = v3;
  v14 = [SPUISContactResultBuilder contactIdentifiersFromResults:v3];
  v15 = objc_opt_new();
  v51 = [_SPUISIdToContactCache mapTableRepresentation];
  v16 = [v51 keyEnumerator];
  v17 = [v16 allObjects];

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v18 = v14;
  v19 = [v18 countByEnumeratingWithState:&v74 objects:v85 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v75;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v75 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v74 + 1) + 8 * j);
        if (([v17 containsObject:v23] & 1) == 0)
        {
          [v15 addObject:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v74 objects:v85 count:16];
    }

    while (v20);
  }

  v56 = v8;
  v57 = v5;
  v55 = v18;
  if ([v5 count])
  {
    v24 = +[SPUISMailResultBuilder contactKeysToFetch];
    v25 = [a1 _contactsWithEmails:v5 keysToFetch:v24];

    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __48__SPUISContactStore_precacheContactsForResults___block_invoke;
    v72[3] = &unk_279D0BF88;
    v26 = v5;
    v73 = v26;
    v50 = v25;
    [v25 enumerateKeysAndObjectsUsingBlock:v72];
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v27 = v26;
    v28 = [v27 countByEnumeratingWithState:&v68 objects:v84 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v69;
      do
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v69 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v68 + 1) + 8 * k);
          v33 = _SPUISEmailToContactCache;
          v34 = [MEMORY[0x277CBEB68] null];
          [v33 setObject:v34 forKey:v32];
        }

        v29 = [v27 countByEnumeratingWithState:&v68 objects:v84 count:16];
      }

      while (v29);
    }

    v8 = v56;
    v18 = v55;
  }

  if ([v15 count])
  {
    [a1 _contactsWithIds:v15];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    obja = v67 = 0u;
    v35 = [obja countByEnumeratingWithState:&v64 objects:v83 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v65;
      do
      {
        for (m = 0; m != v36; ++m)
        {
          if (*v65 != v37)
          {
            objc_enumerationMutation(obja);
          }

          v39 = *(*(&v64 + 1) + 8 * m);
          v40 = [v39 identifier];
          [_SPUISIdToContactCache setObject:v39 forKey:v40];
          [v15 removeObject:v40];
        }

        v36 = [obja countByEnumeratingWithState:&v64 objects:v83 count:16];
      }

      while (v36);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v41 = v15;
    v42 = [v41 countByEnumeratingWithState:&v60 objects:v82 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v61;
      do
      {
        for (n = 0; n != v43; ++n)
        {
          if (*v61 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v60 + 1) + 8 * n);
          v47 = _SPUISIdToContactCache;
          v48 = [MEMORY[0x277CBEB68] null];
          [v47 setObject:v48 forKey:v46];
        }

        v43 = [v41 countByEnumeratingWithState:&v60 objects:v82 count:16];
      }

      while (v43);
    }

    v8 = v56;
    v5 = v57;
    v18 = v55;
  }

  v49 = *MEMORY[0x277D85DE8];
}

void __48__SPUISContactStore_precacheContactsForResults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 firstObject];
  if (v5)
  {
    [_SPUISEmailToContactCache setObject:v5 forKey:v6];
    [*(a1 + 32) removeObject:v6];
  }
}

+ (void)_contactsWithEmails:keysToFetch:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26B882000, v0, v1, "Error fetching contacts for fetchRequest %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end