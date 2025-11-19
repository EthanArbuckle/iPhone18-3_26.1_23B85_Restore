@interface KeychainSyncCountryInfo
+ (id)allCountries;
+ (id)countryInfoForCountryCode:(id)a3 dialingPrefix:(id)a4;
+ (id)countryInfoWithDictionary:(id)a3;
+ (void)_loadCountriesIfNeeded;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation KeychainSyncCountryInfo

+ (void)_loadCountriesIfNeeded
{
  if (_loadCountriesIfNeeded_onceToken != -1)
  {
    +[KeychainSyncCountryInfo _loadCountriesIfNeeded];
  }
}

void __49__KeychainSyncCountryInfo__loadCountriesIfNeeded__block_invoke()
{
  v23 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DEC8];
  v1 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v2 = [v1 pathForResource:@"CountryCodes" ofType:@"plist"];
  v3 = [v0 arrayWithContentsOfFile:v2];

  v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v16 = [MEMORY[0x1E695DF58] currentLocale];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    v8 = *MEMORY[0x1E695D978];
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [KeychainSyncCountryInfo countryInfoWithDictionary:v10];
          v12 = v11;
          if (v11)
          {
            v13 = [v11 countryCode];
            v14 = [v16 displayNameForKey:v8 value:v13];

            [v12 setLocalizedCountryName:v14];
            [v17 addObject:v12];
          }
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  [v17 sortUsingComparator:&__block_literal_global_24];
  v15 = _countryInfoCountries;
  _countryInfoCountries = v17;
}

uint64_t __49__KeychainSyncCountryInfo__loadCountriesIfNeeded__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 localizedCountryName];
  v7 = v6;
  if (!v6)
  {
    v7 = [v4 countryName];
  }

  v8 = [v5 localizedCountryName];
  if (v8)
  {
    v9 = [v7 localizedCompare:v8];
  }

  else
  {
    v10 = [v5 countryName];
    v9 = [v7 localizedCompare:v10];
  }

  if (!v6)
  {
  }

  return v9;
}

+ (id)allCountries
{
  [a1 _loadCountriesIfNeeded];
  v2 = _countryInfoCountries;

  return v2;
}

+ (id)countryInfoWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"prefix"];
  v5 = [v3 objectForKey:@"name"];
  v6 = [v3 objectForKey:@"code"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && [v4 length] && (objc_opt_class(), (objc_opt_isKindOfClass()) && objc_msgSend(v5, "length") && (objc_opt_class(), (objc_opt_isKindOfClass()) && objc_msgSend(v6, "length"))
  {
    v7 = objc_alloc_init(KeychainSyncCountryInfo);
    [(KeychainSyncCountryInfo *)v7 setCountryCode:v6];
    [(KeychainSyncCountryInfo *)v7 setCountryName:v5];
    [(KeychainSyncCountryInfo *)v7 setDialingPrefix:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)countryInfoForCountryCode:(id)a3 dialingPrefix:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [a1 allCountries];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 countryCode];
        if ([v13 isEqualToString:v6])
        {
          if (![v7 length])
          {

LABEL_15:
            v9 = v12;
            goto LABEL_16;
          }

          v14 = [v12 dialingPrefix];
          v15 = [v14 isEqualToString:v7];

          if (v15)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(KeychainSyncCountryInfo *)self countryCode];
    v6 = [v4 countryCode];
    if ([v5 isEqualToString:v6])
    {
      v7 = [(KeychainSyncCountryInfo *)self dialingPrefix];
      v8 = [v4 dialingPrefix];
      v9 = [v7 isEqualToString:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(KeychainSyncCountryInfo);
  v5 = [(KeychainSyncCountryInfo *)self countryCode];
  [(KeychainSyncCountryInfo *)v4 setCountryCode:v5];

  v6 = [(KeychainSyncCountryInfo *)self countryName];
  [(KeychainSyncCountryInfo *)v4 setCountryName:v6];

  v7 = [(KeychainSyncCountryInfo *)self localizedCountryName];
  [(KeychainSyncCountryInfo *)v4 setLocalizedCountryName:v7];

  v8 = [(KeychainSyncCountryInfo *)self dialingPrefix];
  [(KeychainSyncCountryInfo *)v4 setDialingPrefix:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [objc_opt_class() description];
  v5 = [(KeychainSyncCountryInfo *)self dialingPrefix];
  v6 = [(KeychainSyncCountryInfo *)self countryName];
  v7 = [v3 stringWithFormat:@"<%@: %p +%@ (%@)>", v4, self, v5, v6];

  return v7;
}

@end