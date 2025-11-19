@interface BYLocaleDataSource
+ (id)newWithLanguage:(id)a3;
- (id)otherLocaleAtIndex:(unint64_t)a3;
- (id)recommendedLocaleAtIndex:(unint64_t)a3;
- (unint64_t)numberOfOtherLocales;
- (unint64_t)numberOfRecommendedLocales;
- (void)reloadData;
- (void)setLanguage:(id)a3;
@end

@implementation BYLocaleDataSource

+ (id)newWithLanguage:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setLanguage:v3];

  return v4;
}

- (void)reloadData
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = +[BYLocationController sharedBuddyLocationController];
  v4 = [v3 guessedCountries];

  v5 = [(BYLocaleDataSource *)self language];
  if (!v5 || (v6 = v5, v7 = [v4 count], v6, v7))
  {
LABEL_7:
    v42 = 0;
    goto LABEL_8;
  }

  v8 = +[BYLocationController sharedBuddyLocationController];
  v9 = [v8 guessedCountries];

  if (v9)
  {
    v10 = _BYLoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v10, OS_LOG_TYPE_DEFAULT, "No guessed region found and forcing guessed country from location.", buf, 2u);
    }

    goto LABEL_7;
  }

  v37 = MEMORY[0x1E695DF58];
  v38 = [(BYLocaleDataSource *)self language];
  v39 = [v37 baseLanguageFromLanguage:v38];

  v42 = [MEMORY[0x1E695DF58] exemplarRegionForLanguage:v39];

LABEL_8:
  v11 = _BYLoggingFacility();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v49 = v42;
    v50 = 2114;
    v51 = v4;
    _os_log_impl(&dword_1B862F000, v11, OS_LOG_TYPE_DEFAULT, "Setup Assistant Locale: initializing with exemplar region %{public}@ countries = %{public}@", buf, 0x16u);
  }

  v40 = v4;

  v12 = [MEMORY[0x1E695DF70] array];
  v13 = [MEMORY[0x1E695DF70] array];
  [(BYLocaleDataSource *)self setSuggestedCountries:v13];

  v14 = [MEMORY[0x1E695DF70] array];
  [(BYLocaleDataSource *)self setMoreCountries:v14];

  [(BYLocaleDataSource *)self setHasRecommendedLocaleFromLanguage:0];
  v15 = [MEMORY[0x1E695DF58] supportedRegions];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v44;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v44 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v43 + 1) + 8 * i);
        v21 = MEMORY[0x1E695DF58];
        v22 = [(BYLocaleDataSource *)self language];
        v23 = [v21 localeWithLocaleIdentifier:v22];
        v24 = [v23 localizedStringForRegion:v20 context:3 short:0];

        if ([v24 isEqualToString:v20])
        {
          v25 = _BYLoggingFacility();
          if (os_log_type_enabled(&v25->super, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v49 = v20;
            _os_log_impl(&dword_1B862F000, &v25->super, OS_LOG_TYPE_DEFAULT, "Missing localization for country code: %{public}@", buf, 0xCu);
          }
        }

        else
        {
          if (![v24 length])
          {
            goto LABEL_25;
          }

          v25 = objc_alloc_init(BYLocaleCountry);
          [(BYLocaleCountry *)v25 setName:v24];
          [(BYLocaleCountry *)v25 setCode:v20];
          if (([v12 containsObject:v25] & 1) == 0)
          {
            [v12 addObject:v25];
            if (([v40 containsObject:v20] & 1) != 0 || objc_msgSend(v42, "isEqualToString:", v20))
            {
              v26 = [(BYLocaleDataSource *)self suggestedCountries];
              [v26 addObject:v25];

              if ([v42 isEqualToString:v20])
              {
                [(BYLocaleDataSource *)self setHasRecommendedLocaleFromLanguage:1];
              }
            }
          }
        }

LABEL_25:
      }

      v17 = [v15 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v17);
  }

  [(BYLocaleDataSource *)self setMoreCountries:v12, v40];
  v27 = [(BYLocaleDataSource *)self moreCountries];
  v28 = [(BYLocaleDataSource *)self suggestedCountries];
  [v27 removeObjectsInArray:v28];

  v29 = [(BYLocaleDataSource *)self language];
  if ([v29 length])
  {
    v30 = MEMORY[0x1E695DF58];
    v31 = [(BYLocaleDataSource *)self language];
    v32 = [v30 localeWithLocaleIdentifier:v31];
  }

  else
  {
    v32 = 0;
  }

  v33 = [BYLocaleCountry comparatorForLocale:v32];
  v34 = [(BYLocaleDataSource *)self moreCountries];
  [v34 sortUsingComparator:v33];

  v35 = [(BYLocaleDataSource *)self suggestedCountries];
  [v35 sortUsingComparator:v33];

  v36 = *MEMORY[0x1E69E9840];
}

- (unint64_t)numberOfRecommendedLocales
{
  v2 = [(BYLocaleDataSource *)self suggestedCountries];
  v3 = [v2 count];

  return v3;
}

- (unint64_t)numberOfOtherLocales
{
  v2 = [(BYLocaleDataSource *)self moreCountries];
  v3 = [v2 count];

  return v3;
}

- (id)recommendedLocaleAtIndex:(unint64_t)a3
{
  v4 = [(BYLocaleDataSource *)self suggestedCountries];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (id)otherLocaleAtIndex:(unint64_t)a3
{
  v4 = [(BYLocaleDataSource *)self moreCountries];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (void)setLanguage:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    if (![(NSString *)self->_language isEqualToString:v4])
    {
      v5 = [v7 copy];
      language = self->_language;
      self->_language = v5;

      [(BYLocaleDataSource *)self reloadData];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

@end