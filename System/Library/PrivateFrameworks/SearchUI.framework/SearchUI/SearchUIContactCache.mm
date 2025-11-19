@interface SearchUIContactCache
+ (SearchUIContactCache)sharedCache;
+ (id)placeholderContact;
- (SearchUIContactCache)init;
- (id)contactForContactViewController:(id)a3;
- (id)contactForIdentifier:(id)a3;
- (id)contactsForIdentifiers:(id)a3;
- (void)computeObjectsForKeys:(id)a3 completionHandler:(id)a4;
- (void)fetchContactForIdentifier:(id)a3 completionHandler:(id)a4;
- (void)fetchContactForPerson:(id)a3 completionHandler:(id)a4;
- (void)fetchContactsForIdentifiers:(id)a3 completionHandler:(id)a4;
@end

@implementation SearchUIContactCache

+ (SearchUIContactCache)sharedCache
{
  if (sharedCache_onceToken_2 != -1)
  {
    +[SearchUIContactCache sharedCache];
  }

  v3 = sharedCache_sharedCache_0;

  return v3;
}

uint64_t __35__SearchUIContactCache_sharedCache__block_invoke()
{
  sharedCache_sharedCache_0 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (SearchUIContactCache)init
{
  v11.receiver = self;
  v11.super_class = SearchUIContactCache;
  v2 = [(TLKAsyncCache *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [v3 setIncludeSuggestedContacts:1];
    v4 = [objc_alloc(MEMORY[0x1E695CE18]) initWithConfiguration:v3];
    [(SearchUIContactCache *)v2 setContactStore:v4];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = *MEMORY[0x1E695C3D8];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __28__SearchUIContactCache_init__block_invoke;
    v9[3] = &unk_1E85B4808;
    v10 = v2;
    v7 = [v5 addObserverForName:v6 object:0 queue:0 usingBlock:v9];
  }

  return v2;
}

- (void)fetchContactForPerson:(id)a3 completionHandler:(id)a4
{
  v48[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 contactIdentifier];

  if (v8)
  {
    v9 = [v6 contactIdentifier];
    v48[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __64__SearchUIContactCache_fetchContactForPerson_completionHandler___block_invoke;
    v44[3] = &unk_1E85B47B8;
    v45 = v7;
    [(SearchUIContactCache *)self fetchContactsForIdentifiers:v10 completionHandler:v44];

    v11 = v45;
  }

  else
  {
    v35 = v7;
    v12 = objc_opt_new();
    v13 = [v6 displayName];
    v14 = [v13 length];

    if (v14)
    {
      v15 = [SearchUIUtilities localizedStringForKey:@"MAYBE_CONTACT_STRING"];
      [v12 setNamePrefix:v15];

      v16 = objc_opt_new();
      v17 = [v6 displayName];
      v18 = [v16 personNameComponentsFromString:v17];

      [v18 overrideComponentsInContact:v12];
    }

    v34 = v12;
    v19 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v20 = [v6 phoneNumbers];
    v21 = [v20 countByEnumeratingWithState:&v40 objects:v47 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v41;
      do
      {
        v24 = 0;
        do
        {
          if (*v41 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:{*(*(&v40 + 1) + 8 * v24), v34}];
          v26 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:0 value:v25];
          [v19 addObject:v26];

          ++v24;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v40 objects:v47 count:16];
      }

      while (v22);
    }

    v11 = v34;
    [v34 setPhoneNumbers:v19];
    v27 = objc_opt_new();
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v28 = [v6 emailAddresses];
    v29 = [v28 countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v37;
      do
      {
        v32 = 0;
        do
        {
          if (*v37 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:0 value:{*(*(&v36 + 1) + 8 * v32), v34}];
          [v27 addObject:v33];

          ++v32;
        }

        while (v30 != v32);
        v30 = [v28 countByEnumeratingWithState:&v36 objects:v46 count:16];
      }

      while (v30);
    }

    [v11 setEmailAddresses:v27];
    v7 = v35;
    v35[2](v35, v11);
  }
}

void __64__SearchUIContactCache_fetchContactForPerson_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 firstObject];
  (*(v2 + 16))(v2, v3);
}

- (void)fetchContactForIdentifier:(id)a3 completionHandler:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v12[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  }

  else
  {
    v8 = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__SearchUIContactCache_fetchContactForIdentifier_completionHandler___block_invoke;
  v10[3] = &unk_1E85B47B8;
  v9 = v7;
  v11 = v9;
  [(SearchUIContactCache *)self fetchContactsForIdentifiers:v8 completionHandler:v10];
  if (v6)
  {
  }
}

void __68__SearchUIContactCache_fetchContactForIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 firstObject];
  (*(v2 + 16))(v2, v3);
}

- (void)fetchContactsForIdentifiers:(id)a3 completionHandler:(id)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    [(TLKAsyncCache *)self getObjectsForKeys:v6 completionHandler:v7];
  }

  else
  {
    v8 = [objc_opt_class() placeholderContact];
    v10[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v7[2](v7, v9);
  }
}

- (void)computeObjectsForKeys:(id)a3 completionHandler:(id)a4
{
  v7 = a4;
  v8 = [(SearchUIContactCache *)self contactsForIdentifiers:a3];
  (*(a4 + 2))(v7, v8);
}

- (id)contactsForIdentifiers:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (contactsForIdentifiers__onceToken != -1)
  {
    [SearchUIContactCache contactsForIdentifiers:];
  }

  v5 = [MEMORY[0x1E695CD58] predicateForContactsWithIdentifiers:{v4, v4}];
  v6 = [(SearchUIContactCache *)self contactStore];
  v32 = v5;
  v7 = [v6 unifiedContactsMatchingPredicate:v5 keysToFetch:contactsForIdentifiers__requiredKeys error:0];

  v8 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v43;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v43 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v42 + 1) + 8 * i);
        v14 = [v13 identifier];
        [v8 setObject:v13 forKeyedSubscript:v14];

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v15 = [v13 linkedContacts];
        v16 = [v15 countByEnumeratingWithState:&v38 objects:v47 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v39;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v39 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = [*(*(&v38 + 1) + 8 * j) identifier];
              [v8 setObject:v13 forKeyedSubscript:v20];
            }

            v17 = [v15 countByEnumeratingWithState:&v38 objects:v47 count:16];
          }

          while (v17);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v10);
  }

  v21 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v22 = v31;
  v23 = [v22 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v35;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v35 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [v8 objectForKeyedSubscript:*(*(&v34 + 1) + 8 * k)];
        if (v27)
        {
          [v21 addObject:v27];
        }

        else
        {
          v28 = [objc_opt_class() placeholderContact];
          [v21 addObject:v28];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v24);
  }

  v29 = [v21 copy];

  return v29;
}

void __47__SearchUIContactCache_contactsForIdentifiers___block_invoke()
{
  v6[4] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695D130] descriptorForRequiredKeys];
  v1 = *MEMORY[0x1E695C268];
  v6[0] = v0;
  v6[1] = v1;
  v2 = [MEMORY[0x1E695D0C0] descriptorForRequiredKeysWithThreeDTouchEnabled:1];
  v6[2] = v2;
  v3 = [MEMORY[0x1E695D090] descriptorForRequiredKeys];
  v6[3] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];
  v5 = contactsForIdentifiers__requiredKeys;
  contactsForIdentifiers__requiredKeys = v4;
}

- (id)contactForIdentifier:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TLKAsyncCache *)self getCachedObjectIfAvailableForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
LABEL_3:
    v8 = v7;
    goto LABEL_6;
  }

  if (!v4)
  {
    v7 = [objc_opt_class() placeholderContact];
    goto LABEL_3;
  }

  v12[0] = v4;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10 = [(SearchUIContactCache *)self contactsForIdentifiers:v9];
  v8 = [v10 firstObject];

LABEL_6:

  return v8;
}

- (id)contactForContactViewController:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SearchUIContactCache *)self contactStore];
  v6 = [MEMORY[0x1E695D148] descriptorForRequiredKeys];
  v10[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v8 = [v5 unifiedContactWithIdentifier:v4 keysToFetch:v7 error:0];

  return v8;
}

+ (id)placeholderContact
{
  if (placeholderContact_onceToken != -1)
  {
    +[SearchUIContactCache placeholderContact];
  }

  v3 = placeholderContact_placeholderContact;

  return v3;
}

uint64_t __42__SearchUIContactCache_placeholderContact__block_invoke()
{
  placeholderContact_placeholderContact = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

@end