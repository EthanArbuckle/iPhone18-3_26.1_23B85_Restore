@interface NSLocale(MultilingualFlow)
+ (id)buddyDefaultKeyboards;
+ (id)buddyDefaultLanguages;
+ (id)buddyLocaleIdentifierFromIdentifier:()MultilingualFlow byAddingRegion:;
+ (id)buddySubregionLocalesForCellularInformation:()MultilingualFlow;
+ (id)buddySuggestedKeyboards;
+ (id)buddySuggestedLanguages;
@end

@implementation NSLocale(MultilingualFlow)

+ (id)buddySubregionLocalesForCellularInformation:()MultilingualFlow
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [MEMORY[0x277CBEAF8] currentLocale];
  v5 = [v4 objectForKey:*MEMORY[0x277CBE690]];
  v6 = [v5 isEqualToString:@"IN"];

  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v32 = v3;
    v8 = v3;
    v9 = [v8 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v40;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v40 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v39 + 1) + 8 * i);
          v14 = [v13 homeSubregionISOCodes];
          [v7 addObjectsFromArray:v14];

          v15 = [v13 networkSubregionISOCodes];
          [v7 addObjectsFromArray:v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v10);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v7;
    v16 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v36;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v36 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = [*(*(&v35 + 1) + 8 * j) stringByReplacingOccurrencesOfString:@"-" withString:&stru_287761F90];
          v21 = [v20 lowercaseString];

          v22 = objc_alloc(MEMORY[0x277CBEB38]);
          v23 = MEMORY[0x277CBEAF8];
          v24 = [MEMORY[0x277CBEAF8] currentLocale];
          v25 = [v24 localeIdentifier];
          v26 = [v23 componentsFromLocaleIdentifier:v25];
          v27 = [v22 initWithDictionary:v26];

          [v27 setValue:v21 forKey:@"sd"];
          v28 = MEMORY[0x277CBEAF8];
          v29 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v27];
          v30 = [v28 localeWithLocaleIdentifier:v29];

          [v34 addObject:v30];
        }

        v17 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v17);
    }

    v3 = v32;
  }

  return v34;
}

+ (id)buddySuggestedLanguages
{
  v21 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEAF8] currentLocale];
  v1 = objc_alloc_init(MEMORY[0x277D4DA58]);
  v2 = MEMORY[0x277CBEAF8];
  v3 = [v1 cellularNetworkInformation];
  v4 = [v2 buddySubregionLocalesForCellularInformation:v3];

  v5 = objc_alloc(MEMORY[0x277CBEB40]);
  v6 = [v0 languagesForMultilingualSetup];
  v7 = [v5 initWithArray:v6];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) languagesForMultilingualSetup];
        [v7 addObjectsFromArray:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [v7 array];

  return v14;
}

+ (id)buddyDefaultLanguages
{
  v21 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEAF8] currentLocale];
  v1 = objc_alloc_init(MEMORY[0x277D4DA58]);
  v2 = MEMORY[0x277CBEAF8];
  v3 = [v1 cellularNetworkInformation];
  v4 = [v2 buddySubregionLocalesForCellularInformation:v3];

  v5 = objc_alloc(MEMORY[0x277CBEB40]);
  v6 = [v0 defaultLanguagesForMultilingualSetup];
  v7 = [v5 initWithArray:v6];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) defaultLanguagesForMultilingualSetup];
        [v7 addObjectsFromArray:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [v7 array];

  return v14;
}

+ (id)buddySuggestedKeyboards
{
  v2 = [MEMORY[0x277CBEAF8] buddyDefaultLanguages];
  v3 = [v2 mutableCopy];

  v4 = [MEMORY[0x277CBEAF8] preferredLanguages];
  [v3 addObjectsFromArray:v4];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__NSLocale_MultilingualFlow__buddySuggestedKeyboards__block_invoke;
  v10[3] = &__block_descriptor_40_e28___NSLocale_16__0__NSString_8l;
  v10[4] = a1;
  v5 = [v3 buddy_mapOrderedSet:v10];
  v6 = [MEMORY[0x277D75688] sharedInputModeController];
  v7 = [v5 array];
  v8 = [v6 suggestedInputModesForLocales:v7];

  return v8;
}

+ (id)buddyDefaultKeyboards
{
  v1 = [a1 buddySuggestedKeyboards];
  v2 = [v1 buddy_filterToOrderedSet:&__block_literal_global];
  v3 = [v2 array];

  return v3;
}

+ (id)buddyLocaleIdentifierFromIdentifier:()MultilingualFlow byAddingRegion:
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:v5];
  v8 = [v7 mutableCopy];

  v9 = *MEMORY[0x277CBE690];
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277CBE690]];
  v11 = [v10 length];

  if (v11)
  {
    v12 = v5;
  }

  else
  {
    [v8 setObject:v6 forKeyedSubscript:v9];
    v12 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v8];
  }

  v13 = v12;

  return v13;
}

@end