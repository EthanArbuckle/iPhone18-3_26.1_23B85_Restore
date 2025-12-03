@interface PLSearchIndexCountrySynonymProvider
+ (id)_loadAllSynonymsData;
- (PLSearchIndexCountrySynonymProvider)initWithLocalizationPreferences:(id)preferences;
@end

@implementation PLSearchIndexCountrySynonymProvider

- (PLSearchIndexCountrySynonymProvider)initWithLocalizationPreferences:(id)preferences
{
  v50 = *MEMORY[0x1E69E9840];
  preferencesCopy = preferences;
  v47.receiver = self;
  v47.super_class = PLSearchIndexCountrySynonymProvider;
  v5 = [(PLSearchIndexCountrySynonymProvider *)&v47 init];
  if (v5)
  {
    _loadAllSynonymsData = [objc_opt_class() _loadAllSynonymsData];
    v7 = MEMORY[0x1E696AAE8];
    v36 = _loadAllSynonymsData;
    allKeys = [_loadAllSynonymsData allKeys];
    v9 = [v7 preferredLocalizationsFromArray:allKeys forPreferences:preferencesCopy];

    v34 = v5;
    v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v11 = MEMORY[0x1E696AAE8];
    v33 = v10;
    localizations = [v10 localizations];
    v35 = preferencesCopy;
    v13 = [v11 preferredLocalizationsFromArray:localizations forPreferences:preferencesCopy];

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v9;
    v15 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v44;
      do
      {
        v18 = 0;
        v37 = v16;
        do
        {
          if (*v44 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v43 + 1) + 8 * v18);
          if ([v13 containsObject:v19])
          {
            v20 = v13;
            v21 = [v36 objectForKeyedSubscript:v19];
            v39 = 0u;
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v22 = [v21 countByEnumeratingWithState:&v39 objects:v48 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v40;
              do
              {
                for (i = 0; i != v23; ++i)
                {
                  if (*v40 != v24)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v26 = *(*(&v39 + 1) + 8 * i);
                  v27 = [v14 objectForKeyedSubscript:v26];

                  if (!v27)
                  {
                    v28 = [v21 objectForKeyedSubscript:v26];
                    [v14 setObject:v28 forKeyedSubscript:v26];
                  }
                }

                v23 = [v21 countByEnumeratingWithState:&v39 objects:v48 count:16];
              }

              while (v23);
            }

            v13 = v20;
            v16 = v37;
          }

          ++v18;
        }

        while (v18 != v16);
        v16 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v16);
    }

    v29 = [v14 copy];
    v5 = v34;
    countrySynonymsByCountryCode = v34->_countrySynonymsByCountryCode;
    v34->_countrySynonymsByCountryCode = v29;

    v31 = v34;
    preferencesCopy = v35;
  }

  return v5;
}

+ (id)_loadAllSynonymsData
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"countrySynonyms" withExtension:@"plist"];
  v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:v3];

  return v4;
}

@end