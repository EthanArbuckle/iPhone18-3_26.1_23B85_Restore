@interface BYLocaleDataSource
+ (id)newWithLanguage:(id)language;
- (id)otherLocaleAtIndex:(unint64_t)index;
- (id)recommendedLocaleAtIndex:(unint64_t)index;
- (unint64_t)numberOfOtherLocales;
- (unint64_t)numberOfRecommendedLocales;
- (void)reloadData;
- (void)setLanguage:(id)language;
@end

@implementation BYLocaleDataSource

+ (id)newWithLanguage:(id)language
{
  languageCopy = language;
  v4 = objc_opt_new();
  [v4 setLanguage:languageCopy];

  return v4;
}

- (void)reloadData
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = +[BYLocationController sharedBuddyLocationController];
  guessedCountries = [v3 guessedCountries];

  language = [(BYLocaleDataSource *)self language];
  if (!language || (v6 = language, v7 = [guessedCountries count], v6, v7))
  {
LABEL_7:
    v42 = 0;
    goto LABEL_8;
  }

  v8 = +[BYLocationController sharedBuddyLocationController];
  guessedCountries2 = [v8 guessedCountries];

  if (guessedCountries2)
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
  language2 = [(BYLocaleDataSource *)self language];
  v39 = [v37 baseLanguageFromLanguage:language2];

  v42 = [MEMORY[0x1E695DF58] exemplarRegionForLanguage:v39];

LABEL_8:
  v11 = _BYLoggingFacility();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v49 = v42;
    v50 = 2114;
    v51 = guessedCountries;
    _os_log_impl(&dword_1B862F000, v11, OS_LOG_TYPE_DEFAULT, "Setup Assistant Locale: initializing with exemplar region %{public}@ countries = %{public}@", buf, 0x16u);
  }

  v40 = guessedCountries;

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  [(BYLocaleDataSource *)self setSuggestedCountries:array2];

  array3 = [MEMORY[0x1E695DF70] array];
  [(BYLocaleDataSource *)self setMoreCountries:array3];

  [(BYLocaleDataSource *)self setHasRecommendedLocaleFromLanguage:0];
  supportedRegions = [MEMORY[0x1E695DF58] supportedRegions];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v16 = [supportedRegions countByEnumeratingWithState:&v43 objects:v47 count:16];
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
          objc_enumerationMutation(supportedRegions);
        }

        v20 = *(*(&v43 + 1) + 8 * i);
        v21 = MEMORY[0x1E695DF58];
        language3 = [(BYLocaleDataSource *)self language];
        v23 = [v21 localeWithLocaleIdentifier:language3];
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
          if (([array containsObject:v25] & 1) == 0)
          {
            [array addObject:v25];
            if (([v40 containsObject:v20] & 1) != 0 || objc_msgSend(v42, "isEqualToString:", v20))
            {
              suggestedCountries = [(BYLocaleDataSource *)self suggestedCountries];
              [suggestedCountries addObject:v25];

              if ([v42 isEqualToString:v20])
              {
                [(BYLocaleDataSource *)self setHasRecommendedLocaleFromLanguage:1];
              }
            }
          }
        }

LABEL_25:
      }

      v17 = [supportedRegions countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v17);
  }

  [(BYLocaleDataSource *)self setMoreCountries:array, v40];
  moreCountries = [(BYLocaleDataSource *)self moreCountries];
  suggestedCountries2 = [(BYLocaleDataSource *)self suggestedCountries];
  [moreCountries removeObjectsInArray:suggestedCountries2];

  language4 = [(BYLocaleDataSource *)self language];
  if ([language4 length])
  {
    v30 = MEMORY[0x1E695DF58];
    language5 = [(BYLocaleDataSource *)self language];
    v32 = [v30 localeWithLocaleIdentifier:language5];
  }

  else
  {
    v32 = 0;
  }

  v33 = [BYLocaleCountry comparatorForLocale:v32];
  moreCountries2 = [(BYLocaleDataSource *)self moreCountries];
  [moreCountries2 sortUsingComparator:v33];

  suggestedCountries3 = [(BYLocaleDataSource *)self suggestedCountries];
  [suggestedCountries3 sortUsingComparator:v33];

  v36 = *MEMORY[0x1E69E9840];
}

- (unint64_t)numberOfRecommendedLocales
{
  suggestedCountries = [(BYLocaleDataSource *)self suggestedCountries];
  v3 = [suggestedCountries count];

  return v3;
}

- (unint64_t)numberOfOtherLocales
{
  moreCountries = [(BYLocaleDataSource *)self moreCountries];
  v3 = [moreCountries count];

  return v3;
}

- (id)recommendedLocaleAtIndex:(unint64_t)index
{
  suggestedCountries = [(BYLocaleDataSource *)self suggestedCountries];
  v5 = [suggestedCountries objectAtIndexedSubscript:index];

  return v5;
}

- (id)otherLocaleAtIndex:(unint64_t)index
{
  moreCountries = [(BYLocaleDataSource *)self moreCountries];
  v5 = [moreCountries objectAtIndexedSubscript:index];

  return v5;
}

- (void)setLanguage:(id)language
{
  languageCopy = language;
  if (languageCopy)
  {
    v7 = languageCopy;
    if (![(NSString *)self->_language isEqualToString:languageCopy])
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