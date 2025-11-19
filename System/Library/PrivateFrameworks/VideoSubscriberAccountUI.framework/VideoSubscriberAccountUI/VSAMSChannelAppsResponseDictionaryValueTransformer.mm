@interface VSAMSChannelAppsResponseDictionaryValueTransformer
- (id)parseAppData:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation VSAMSChannelAppsResponseDictionaryValueTransformer

- (id)transformedValue:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v42 = v4;
    _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "Handling response %@", buf, 0xCu);
  }

  v6 = objc_alloc_init(VSIdentityProviderChannelAppsResponse);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  objc_opt_class();
  v9 = 0x277CE2000;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_26;
  }

  v10 = [v4 vs_arrayOfDictionariesForKey:@"data"];
  v11 = [v10 firstObject];
  v12 = [v11 vs_dictionaryForKey:@"relationships"];

  v13 = [v12 vs_dictionaryForKey:@"subscription-apps"];
  v14 = [v12 vs_dictionaryForKey:@"channel-apps"];
  v15 = [v12 vs_dictionaryForKey:@"apps"];
  v16 = !v12 || v13 == 0;
  v39 = v15;
  v40 = v14;
  v17 = v16 || v14 == 0;
  v18 = v17 || v15 == 0;
  v19 = !v18;
  v37 = v19;
  v38 = v13;
  if (v18)
  {
    v9 = 0x277CE2000uLL;
    v30 = MEMORY[0x277CE2250];
    v20 = [(VSAMSChannelAppsResponseDictionaryValueTransformer *)self parseAppData:v4];
    v29 = [v30 failableWithObject:v20];
  }

  else
  {
    v34 = self;
    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = [v13 vs_arrayForKey:@"data"];
    if (v21)
    {
      [v20 addObjectsFromArray:v21];
    }

    v22 = [v14 vs_arrayForKey:@"data"];
    if (v22)
    {
      [v20 addObjectsFromArray:v22];
    }

    v33 = v22;
    v36 = v21;
    v23 = [v39 vs_arrayForKey:@"data"];
    if (v23)
    {
      [v20 addObjectsFromArray:v23];
    }

    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v24 setObject:v20 forKey:@"data"];
    v25 = [(VSAMSChannelAppsResponseDictionaryValueTransformer *)v34 parseAppData:v24];
    v26 = [v25 allApps];
    [v7 addObjectsFromArray:v26];

    v27 = [v25 appsByChannelID];
    v35 = v7;
    v28 = v23;
    v29 = [v27 mutableCopy];
    [v8 addEntriesFromDictionary:v29];

    v7 = v35;
    v9 = 0x277CE2000;
  }

  if (v37)
  {
LABEL_26:
    [(VSIdentityProviderChannelAppsResponse *)v6 setAllApps:v7];
    [(VSIdentityProviderChannelAppsResponse *)v6 setAppsByChannelID:v8];
    v29 = [*(v9 + 592) failableWithObject:v6];
  }

  v31 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)parseAppData:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v28 = objc_alloc_init(VSIdentityProviderChannelAppsResponse);
  v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v32 = [MEMORY[0x277CCAE68] valueTransformerForName:@"VSAMSAppsValueTransformer"];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v27 = v3;
  obj = [v3 vs_arrayOfDictionariesForKey:@"data"];
  v33 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v33)
  {
    v31 = *v43;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v43 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v42 + 1) + 8 * i);
        v7 = [v32 transformedValue:v6];
        if (v7)
        {
          v37 = i;
          v8 = [v6 vs_dictionaryForKey:@"meta"];
          v9 = [v8 vs_arrayOfStringsForKey:@"channels"];
          v36 = v8;
          v10 = [v8 vs_arrayOfStringsForKey:@"subscriptions"];
          v34 = v10;
          v35 = v9;
          if (v9)
          {
            v11 = v9;
          }

          else
          {
            v11 = v10;
          }

          v12 = v11;
          v13 = v12;
          if (v12)
          {
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            v14 = [v12 countByEnumeratingWithState:&v38 objects:v46 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v39;
              do
              {
                for (j = 0; j != v15; ++j)
                {
                  if (*v39 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v18 = *(*(&v38 + 1) + 8 * j);
                  v19 = [v4 objectForKey:v18];
                  v20 = v19;
                  if (v19)
                  {
                    v21 = v19;
                  }

                  else
                  {
                    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  }

                  v22 = v21;

                  [v22 addObject:v7];
                  [v4 setObject:v22 forKey:v18];
                }

                v15 = [v13 countByEnumeratingWithState:&v38 objects:v46 count:16];
              }

              while (v15);
            }
          }

          v23 = 1;
          if (v34)
          {
            v23 = 2;
          }

          if (v35)
          {
            v24 = 0;
          }

          else
          {
            v24 = v23;
          }

          [v7 setAppType:v24];
          [v30 addObject:v7];

          i = v37;
        }
      }

      v33 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v33);
  }

  [(VSIdentityProviderChannelAppsResponse *)v28 setAllApps:v30];
  [(VSIdentityProviderChannelAppsResponse *)v28 setAppsByChannelID:v4];

  v25 = *MEMORY[0x277D85DE8];

  return v28;
}

@end