@interface BYLocationController
+ (id)sharedBuddyLocationController;
- (BOOL)getCountryFromNVRAM;
- (BOOL)getCountryFromTelephony;
- (BYLocationController)init;
- (id)_checkForAliases:(id)a3;
- (id)_checkForAliasesOrInvalid:(id)a3;
- (id)_checkedArrayForString:(id)a3;
- (id)_countriesFromDefaults;
- (id)_countryFromTelephony;
- (id)_languagesForRegionsUsingSIMRegionService:(id)a3;
- (id)_subregionLanguagesForRegion:(id)a3 subregionsCodes:(id)a4;
- (id)aliasDict;
- (id)guessedLanguages;
- (void)_closeWifiConnection;
- (void)_countryFromTelephony;
- (void)_getWifiDevice;
- (void)_scanComplete:(id)a3 error:(BOOL)a4;
- (void)_scanWifiList;
- (void)_scanWifiListWithDevice:(__WiFiDeviceClient *)a3;
- (void)_setGuessedCountryDefault:(id)a3;
- (void)_startWifiScan;
- (void)configureForAnalytics:(id)a3;
- (void)dealloc;
- (void)reset;
- (void)setFakeMode:(BOOL)a3;
@end

@implementation BYLocationController

+ (id)sharedBuddyLocationController
{
  v2 = sharedBuddyLocationController_sharedBuddyLocationController;
  if (!sharedBuddyLocationController_sharedBuddyLocationController)
  {
    v3 = objc_alloc_init(BYLocationController);
    v4 = sharedBuddyLocationController_sharedBuddyLocationController;
    sharedBuddyLocationController_sharedBuddyLocationController = v3;

    v2 = sharedBuddyLocationController_sharedBuddyLocationController;
  }

  return v2;
}

- (void)configureForAnalytics:(id)a3
{
  v6 = a3;
  v4 = [(BYLocationController *)self recommendedLocaleAnalyticsEvent];

  if (!v4)
  {
    v5 = [[BYAnalyticsEventRecommendedLocale alloc] initWithAnalyticsManager:v6];
    [(BYLocationController *)self setRecommendedLocaleAnalyticsEvent:v5];
  }
}

- (id)_countryFromTelephony
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:0];
  v35 = 0;
  v3 = [v2 getSubscriptionInfoWithError:&v35];
  v4 = v35;
  if (v4)
  {
    v5 = v4;
    v6 = _BYLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BYLocationController *)v5 _countryFromTelephony:v6];
    }

    v13 = 0;
    goto LABEL_18;
  }

  v14 = [v3 subscriptionsInUse];
  v13 = [v14 count];

  if (!v13)
  {
    v5 = 0;
    goto LABEL_16;
  }

  v15 = [v3 subscriptionsInUse];
  v16 = [v15 objectAtIndexedSubscript:0];
  v34 = 0;
  v17 = [v2 copyMobileCountryCode:v16 error:&v34];
  v5 = v34;

  if (v5)
  {
    v18 = _BYLoggingFacility();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(BYLocationController *)v5 _countryFromTelephony:v18];
    }

    v13 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v33 = 0;
  v13 = [v2 copyMobileSubscriberIsoCountryCode:v17 error:&v33];
  v5 = v33;
  if (v5)
  {
    v18 = _BYLoggingFacility();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(BYLocationController *)v5 _countryFromTelephony:v18];
    }

    goto LABEL_14;
  }

LABEL_15:

LABEL_16:
  v6 = _BYLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = v13;
    _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "Country from Telephony: %@", buf, 0xCu);
  }

LABEL_18:

  v31 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)aliasDict
{
  aliasDict = self->_aliasDict;
  if (!aliasDict)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v4 pathForResource:@"CountryAlias" ofType:@"plist"];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v5];
    v7 = self->_aliasDict;
    self->_aliasDict = v6;

    aliasDict = self->_aliasDict;
  }

  return aliasDict;
}

- (id)_checkForAliases:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(BYLocationController *)self aliasDict];
    v6 = [v5 objectForKey:@"countryAlias"];

    v7 = [v4 count];
    if (v7)
    {
      v9 = v7;
      v10 = 0;
      *&v8 = 138412546;
      v19 = v8;
      do
      {
        v11 = [v4 objectAtIndexedSubscript:{v10, v19}];
        v12 = [v6 objectForKey:v11];
        if (v12)
        {
          v13 = _BYLoggingFacility();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v19;
            v22 = v11;
            v23 = 2112;
            v24 = v12;
            _os_log_impl(&dword_1B862F000, v13, OS_LOG_TYPE_DEFAULT, "Setup Assistant Location: Found country '%@', but this is an alias for '%@'", buf, 0x16u);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = v12;
          }

          else
          {
            v20 = v12;
            v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
          }

          v16 = v14;
          [v4 replaceObjectsInRange:v10 withObjectsFromArray:{1, v14}];
          v15 = [v16 count];
        }

        else
        {
          v15 = 1;
        }

        v10 += v15;
      }

      while (v10 < v9);
    }
  }

  v17 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_checkForAliasesOrInvalid:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v27 = v4;
  if (!self->_validCountries)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v7 = [MEMORY[0x1E695DF58] availableLocaleIdentifiers];
    v8 = [v7 countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v33;
      v11 = *MEMORY[0x1E695D978];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = MEMORY[0x1E695DF58];
          v14 = [MEMORY[0x1E695DF58] canonicalLocaleIdentifierFromString:*(*(&v32 + 1) + 8 * i)];
          v15 = [v13 componentsFromLocaleIdentifier:v14];

          v16 = [v15 objectForKey:v11];
          if (v16)
          {
            [(NSSet *)v6 addObject:v16];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v32 objects:v39 count:16];
      }

      while (v9);
    }

    validCountries = self->_validCountries;
    self->_validCountries = v6;

    v4 = v27;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = [(BYLocationController *)self _checkForAliases:v4];
  v19 = [v18 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v28 + 1) + 8 * j);
        if ([(NSSet *)self->_validCountries containsObject:v23])
        {
          [v5 addObject:v23];
        }

        else
        {
          v24 = _BYLoggingFacility();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v37 = v23;
            _os_log_impl(&dword_1B862F000, v24, OS_LOG_TYPE_DEFAULT, "Setup Assistant Location: Found country '%@', but this is not a valid country code, ignoring", buf, 0xCu);
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v20);
  }

  v25 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_checkedArrayForString:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithObject:?];
    v5 = [(BYLocationController *)self _checkForAliases:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_countriesFromDefaults
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 objectForKey:@"GuessedCountry"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = _BYLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "N";
    if (self->_fakeMode)
    {
      v7 = "Y";
    }

    v13 = 138412546;
    v14 = v5;
    v15 = 2080;
    v16 = v7;
    _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "Setup Assistant Location: stored in defaults: countries = '%@' fake mode? %s", &v13, 0x16u);
  }

  if ([v5 count] && self->_fakeMode)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  v9 = _BYLoggingFacility();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v8;
    _os_log_impl(&dword_1B862F000, v9, OS_LOG_TYPE_DEFAULT, "Setup Assistant Location: countries from defaults = '%@'", &v13, 0xCu);
  }

  v10 = v8;
  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)_setGuessedCountryDefault:(id)a3
{
  v3 = MEMORY[0x1E695E000];
  v4 = a3;
  v5 = [v3 standardUserDefaults];
  [v5 setObject:v4 forKey:@"GuessedCountry"];
}

- (BYLocationController)init
{
  v16 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = BYLocationController;
  v2 = [(BYLocationController *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_numberOfWiFiScanAttemptsRemaining = 5;
    v4 = +[BYPreferencesController buddyPreferencesInternal];
    v5 = [v4 objectForKey:@"SuggestedCountries"];

    if (v5)
    {
      v6 = _BYLoggingFacility();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v5;
        _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "Using override suggested countries: %@", buf, 0xCu);
      }

      v3->forceGuessedCountries = 1;
      if ([v5 count])
      {
        objc_storeStrong(&v3->_guessedCountries, v5);
        v7 = [(NSArray *)v3->_guessedCountries firstObject];
      }

      else
      {
        guessedCountries = v3->_guessedCountries;
        v3->_guessedCountries = MEMORY[0x1E695E0F0];

        v7 = &stru_1F309EFF0;
      }

      guessedCountryFromTelephony = v3->_guessedCountryFromTelephony;
      v3->_guessedCountryFromTelephony = &v7->isa;
    }

    else if (!v3->_guessedCountries)
    {
      [(BYLocationController *)v3 getCountryFromTelephony];
      v8 = [(BYLocationController *)v3 recommendedLocaleAnalyticsEvent];
      [v8 setSource:2];

      if (!v3->_guessedCountries)
      {
        [(BYLocationController *)v3 _startWifiScan];
        if (!v3->_guessedCountries)
        {
          [(BYLocationController *)v3 getCountryFromNVRAM];
        }
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)dealloc
{
  [(BYLocationController *)self _closeWifiConnection];
  v3.receiver = self;
  v3.super_class = BYLocationController;
  [(BYLocationController *)&v3 dealloc];
}

- (BOOL)getCountryFromTelephony
{
  guessedCountryFromTelephony = self->_guessedCountryFromTelephony;
  if (!guessedCountryFromTelephony)
  {
    v4 = [(BYLocationController *)self _countryFromTelephony];
    v5 = self->_guessedCountryFromTelephony;
    self->_guessedCountryFromTelephony = v4;

    v6 = [(NSString *)self->_guessedCountryFromTelephony length];
    guessedCountryFromTelephony = self->_guessedCountryFromTelephony;
    if (v6)
    {
      v7 = [(NSString *)guessedCountryFromTelephony uppercaseString];
      v8 = [(BYLocationController *)self _checkedArrayForString:v7];
      [(BYLocationController *)self setGuessedCountries:v8];

      [(BYLocationController *)self _setGuessedCountryDefault:self->_guessedCountries];
      guessedCountryFromTelephony = self->_guessedCountryFromTelephony;
    }
  }

  return guessedCountryFromTelephony != 0;
}

- (BOOL)getCountryFromNVRAM
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (getCountryFromNVRAM_onceToken != -1)
  {
    [BYLocationController getCountryFromNVRAM];
  }

  if (getCountryFromNVRAM_nvramCountry)
  {
    v6[0] = getCountryFromNVRAM_nvramCountry;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    [(BYLocationController *)self setGuessedCountries:v3];

    [(BYLocationController *)self _setGuessedCountryDefault:self->_guessedCountries];
    result = getCountryFromNVRAM_nvramCountry != 0;
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __43__BYLocationController_getCountryFromNVRAM__block_invoke()
{
  result = IORegistryEntryFromPath(*MEMORY[0x1E696CD60], "IODeviceTree:/options");
  if (result)
  {
    v1 = result;
    CFProperty = IORegistryEntryCreateCFProperty(result, @"SetupCountryOverride", *MEMORY[0x1E695E480], 0);
    IOObjectRelease(v1);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = CFProperty;
      v3 = [v2 bytes];
      if ([v2 length])
      {
        v4 = 0;
        while (*(v3 + v4))
        {
          if (++v4 >= [v2 length])
          {
            goto LABEL_10;
          }
        }

        if (!v4)
        {
          goto LABEL_11;
        }

LABEL_10:
        v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v3 length:v4 encoding:4];
        v6 = getCountryFromNVRAM_nvramCountry;
        getCountryFromNVRAM_nvramCountry = v5;
      }

LABEL_11:
    }

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

- (id)guessedLanguages
{
  v2 = self;
  v51 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_guessedCountries count])
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v36 = [MEMORY[0x1E695DF70] array];
    v4 = objc_alloc_init(BYSIMRegionService);
    v5 = [(BYLocationController *)v2 _languagesForRegionsUsingSIMRegionService:v4];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v33 = v2;
    obj = v2->_guessedCountries;
    v6 = [(NSArray *)obj countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v6)
    {
      v7 = v6;
      v35 = *v42;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v42 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v41 + 1) + 8 * i);
          v10 = [MEMORY[0x1E69AAE08] preferredLanguagesForRegion:v9];
          v11 = objc_alloc_init(MEMORY[0x1E695DFA0]);
          v12 = [v5 objectForKeyedSubscript:v9];
          if (v12)
          {
            v13 = v12;
            v14 = [v5 objectForKeyedSubscript:v9];
            v15 = [v14 count];

            if (v15)
            {
              v16 = [v5 objectForKeyedSubscript:v9];
              [v11 addObjectsFromArray:v16];
            }
          }

          [v11 addObjectsFromArray:v10];
          v17 = [v11 array];
          v18 = [v17 reverseObjectEnumerator];
          v19 = [v18 allObjects];

          v20 = _BYLoggingFacility();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v47 = v9;
            v48 = 2112;
            v49 = v19;
            _os_log_impl(&dword_1B862F000, v20, OS_LOG_TYPE_DEFAULT, "Setup Assistant Location: Languages (in reverse order) for country %@ = %@", buf, 0x16u);
          }

          [v36 addObject:v19];
        }

        v7 = [(NSArray *)obj countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v7);
    }

    while (1)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v21 = v36;
      v22 = [v21 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (!v22)
      {
        break;
      }

      v23 = v22;
      v24 = 0;
      v25 = *v38;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v38 != v25)
          {
            objc_enumerationMutation(v21);
          }

          v27 = *(*(&v37 + 1) + 8 * j);
          v28 = [v27 lastObject];
          if (v28)
          {
            if (([v3 containsObject:v28] & 1) == 0)
            {
              [v3 addObject:v28];
            }

            [v27 removeLastObject];
            v24 = 1;
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v23);

      if ((v24 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

LABEL_30:
    v2 = v33;
  }

  else
  {
    v3 = 0;
  }

  v29 = _BYLoggingFacility();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    guessedCountries = v2->_guessedCountries;
    *buf = 138412546;
    v47 = guessedCountries;
    v48 = 2112;
    v49 = v3;
    _os_log_impl(&dword_1B862F000, v29, OS_LOG_TYPE_DEFAULT, "Setup Assistant Location: Languages for countries %@ = %@", buf, 0x16u);
  }

  if (!v2->_firstGuessedLanguages)
  {
    [(BYLocationController *)v2 setFirstGuessedLanguages:v3];
  }

  v31 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_languagesForRegionsUsingSIMRegionService:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v40 = v4;
  obj = [v4 cellularNetworkInformation];
  v6 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v6)
  {
    v7 = v6;
    v42 = *v48;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v48 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v47 + 1) + 8 * i);
        v10 = _BYLoggingFacility();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B862F000, v10, OS_LOG_TYPE_DEFAULT, "Getting subregion languages for Home Region", buf, 2u);
        }

        v11 = [v9 homeCountryISOCode];
        v12 = [v9 homeSubregionISOCodes];
        v13 = [(BYLocationController *)self _subregionLanguagesForRegion:v11 subregionsCodes:v12];

        v14 = _BYLoggingFacility();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v53 = v13;
          _os_log_impl(&dword_1B862F000, v14, OS_LOG_TYPE_DEFAULT, "Home subregion languages: %@", buf, 0xCu);
        }

        v15 = [v5 objectForKeyedSubscript:v11];

        if (!v15)
        {
          v16 = objc_opt_new();
          [v5 setObject:v16 forKeyedSubscript:v11];
        }

        v17 = [v5 objectForKeyedSubscript:v11];
        [v17 addObjectsFromArray:v13];

        v18 = _BYLoggingFacility();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B862F000, v18, OS_LOG_TYPE_DEFAULT, "Getting subregion languages for Network Region", buf, 2u);
        }

        v19 = [v9 networkCountryISOCode];
        v20 = [v9 networkSubregionISOCodes];
        v21 = [(BYLocationController *)self _subregionLanguagesForRegion:v19 subregionsCodes:v20];

        v22 = _BYLoggingFacility();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v53 = v21;
          _os_log_impl(&dword_1B862F000, v22, OS_LOG_TYPE_DEFAULT, "Network subregion languages: %@", buf, 0xCu);
        }

        v23 = [v5 objectForKeyedSubscript:v19];

        if (!v23)
        {
          v24 = objc_opt_new();
          [v5 setObject:v24 forKeyedSubscript:v19];
        }

        v25 = [v5 objectForKeyedSubscript:v19];
        [v25 addObjectsFromArray:v21];
      }

      v7 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v7);
  }

  v26 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v27 = [v5 allKeys];
  v28 = [v27 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v44;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v44 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v43 + 1) + 8 * j);
        v33 = [v5 objectForKeyedSubscript:v32];
        v34 = [v33 array];
        v35 = [v32 uppercaseString];
        [v26 setObject:v34 forKeyedSubscript:v35];
      }

      v29 = [v27 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v29);
  }

  if ([v26 count])
  {
    v36 = _BYLoggingFacility();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v53 = v26;
      _os_log_impl(&dword_1B862F000, v36, OS_LOG_TYPE_DEFAULT, "Subregion languages: %@", buf, 0xCu);
    }
  }

  v37 = [v26 copy];

  v38 = *MEMORY[0x1E69E9840];

  return v37;
}

- (id)_subregionLanguagesForRegion:(id)a3 subregionsCodes:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = _BYLoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v5;
    _os_log_impl(&dword_1B862F000, v7, OS_LOG_TYPE_DEFAULT, "Region ISO Code: %@", buf, 0xCu);
  }

  v8 = _BYLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v6;
    _os_log_impl(&dword_1B862F000, v8, OS_LOG_TYPE_DEFAULT, "Subregions ISO Codes: %@", buf, 0xCu);
  }

  v9 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v6;
  v10 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v27;
    *&v11 = 138412802;
    v24 = v11;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v16 = [v15 componentsSeparatedByString:{@"-", v24}];
        v17 = [v16 lastObject];
        v18 = [v17 lowercaseString];

        v19 = [MEMORY[0x1E695DF58] languagesForRegion:v5 subdivision:v18 withThreshold:2 filter:0];
        v20 = _BYLoggingFacility();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v24;
          v31 = v5;
          v32 = 2112;
          v33 = v15;
          v34 = 2112;
          v35 = v19;
          _os_log_impl(&dword_1B862F000, v20, OS_LOG_TYPE_DEFAULT, "Language codes for region %@, subregion %@: %@", buf, 0x20u);
        }

        [v9 addObjectsFromArray:v19];
      }

      v12 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v12);
  }

  v21 = [v9 copy];
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (void)setFakeMode:(BOOL)a3
{
  self->_fakeMode = a3;
  if (a3)
  {
    v4 = [(BYLocationController *)self _countriesFromDefaults];
    [(BYLocationController *)self setGuessedCountries:v4];

    v5 = [(BYLocationController *)self recommendedLocaleAnalyticsEvent];
    [v5 setSource:1];
  }
}

- (void)_startWifiScan
{
  self->fWifiManager = 0;
  self->fWifiDevice = 0;
  v3 = *MEMORY[0x1E695E480];
  v4 = WiFiManagerClientCreate();
  self->fWifiManager = v4;
  if (v4)
  {
    CFRunLoopGetCurrent();
    v5 = *MEMORY[0x1E695E8D0];
    WiFiManagerClientScheduleWithRunLoop();
    [(BYLocationController *)self _getWifiDevice];
  }

  else
  {
    v6 = _BYLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "Setup Assistant Location: WiFiManagerClientCreate failed", v8, 2u);
    }
  }

  if (self->fWifiDevice)
  {
    [(BYLocationController *)self _scanWifiList];
  }

  else
  {
    fWifiManager = self->fWifiManager;
    WiFiManagerClientRegisterDeviceAttachmentCallback();
  }
}

- (void)_getWifiDevice
{
  fWifiManager = self->fWifiManager;
  v4 = WiFiManagerClientCopyDevices();
  if (v4)
  {
    v5 = v4;
    if (CFArrayGetCount(v4))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
      self->fWifiDevice = ValueAtIndex;
      if (ValueAtIndex)
      {
        v7 = CFGetTypeID(ValueAtIndex);
        if (v7 == WiFiDeviceClientGetTypeID())
        {
          CFRetain(self->fWifiDevice);
LABEL_15:
          CFRelease(v5);
          return;
        }
      }

      v9 = _BYLoggingFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 0;
        v10 = "Setup Assistant Location: could not get wifi device";
        v11 = &v12;
LABEL_13:
        _os_log_impl(&dword_1B862F000, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
      }
    }

    else
    {
      v9 = _BYLoggingFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        v10 = "Setup Assistant Location: no WiFi devices found";
        v11 = v13;
        goto LABEL_13;
      }
    }

    goto LABEL_15;
  }

  v8 = _BYLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v8, OS_LOG_TYPE_DEFAULT, "Setup Assistant Location: WiFiManagerClientCopyDevices failed", buf, 2u);
  }
}

- (void)_scanWifiListWithDevice:(__WiFiDeviceClient *)a3
{
  if (a3)
  {
    self->fWifiDevice = a3;
    CFRetain(a3);

    [(BYLocationController *)self _scanWifiList];
  }

  else
  {

    [(BYLocationController *)self _closeWifiConnection];
  }
}

- (void)_scanWifiList
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Setup Assistant Location: Starting Wi-Fi scan...", buf, 2u);
  }

  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = [MEMORY[0x1E695DF00] date];
  [(BYLocationController *)self setWirelessScanStartDate:v5];

  fWifiDevice = self->fWifiDevice;
  v7 = WiFiDeviceClientScanAsync();
  if (v7)
  {
    v8 = v7;
    v9 = _BYLoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v15 = v8;
      _os_log_impl(&dword_1B862F000, v9, OS_LOG_TYPE_DEFAULT, "Setup Assistant Location: Wi-Fi scan failed with error %d", buf, 8u);
    }

    if ([(BYLocationController *)self numberOfWiFiScanAttemptsRemaining])
    {
      v10 = _BYLoggingFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B862F000, v10, OS_LOG_TYPE_DEFAULT, "Setup Assistant Location: Retrying Wi-Fi scan after a delay...", buf, 2u);
      }

      [(BYLocationController *)self setNumberOfWiFiScanAttemptsRemaining:[(BYLocationController *)self numberOfWiFiScanAttemptsRemaining]- 1];
      v11 = dispatch_time(0, 500000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __37__BYLocationController__scanWifiList__block_invoke;
      block[3] = &unk_1E7D027A8;
      block[4] = self;
      dispatch_after(v11, MEMORY[0x1E69E96A0], block);
    }

    else
    {
      [(BYLocationController *)self _closeWifiConnection];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __37__BYLocationController__scanWifiList__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[2] || !v2[7])
  {
    v3 = _BYLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Setup Assistant Location: Wi-Fi scan re-attempt unnecessary", v4, 2u);
    }
  }

  else
  {

    [v2 _scanWifiList];
  }
}

- (void)_scanComplete:(id)a3 error:(BOOL)a4
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (!a4 && !self->_guessedCountries)
  {
    v8 = [v6 count];
    if (!v8)
    {
LABEL_46:
      v40 = [MEMORY[0x1E696AD88] defaultCenter];
      [v40 postNotificationName:@"BYCountryScanCompletedNotification" object:0];

      goto LABEL_47;
    }

    v9 = v8;
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = objc_alloc_init(MEMORY[0x1E696AB50]);
    v12 = 0;
    v58 = 3;
    do
    {
      [v7 objectAtIndexedSubscript:v12];

      if (WiFiNetworkGet11dCountryCodeFromIe())
      {
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v59 length:2 encoding:1];
        [v10 addObject:v13];
      }

      ++v12;
    }

    while (v9 != v12);
    v14 = [(BYLocationController *)self _checkForAliasesOrInvalid:v10];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v54 objects:v66 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v55;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v55 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [v11 addObject:*(*(&v54 + 1) + 8 * i)];
        }

        v16 = [v14 countByEnumeratingWithState:&v54 objects:v66 count:16];
      }

      while (v16);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v19 = v11;
    v20 = [v19 countByEnumeratingWithState:&v50 objects:v65 count:16];
    if (v20)
    {
      v42 = v14;
      v43 = v10;
      v44 = v7;
      v45 = self;
      v21 = 0;
      v22 = *v51;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v51 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v50 + 1) + 8 * j);
          v25 = [v19 countForObject:{v24, v42}];
          v26 = _BYLoggingFacility();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v62 = v25;
            v63 = 2112;
            v64 = v24;
            _os_log_impl(&dword_1B862F000, v26, OS_LOG_TYPE_DEFAULT, "Setup Assistant Location: Wifi scan found %lu APs for '%@'", buf, 0x16u);
          }

          if (v25 > v21)
          {
            v21 = v25;
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v50 objects:v65 count:16];
      }

      while (v20);

      if (!v21)
      {
        v20 = 0;
        v7 = v44;
        v14 = v42;
        v10 = v43;
        goto LABEL_39;
      }

      v20 = [MEMORY[0x1E695DF70] array];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v27 = v19;
      v28 = [v27 countByEnumeratingWithState:&v46 objects:v60 count:16];
      v10 = v43;
      v7 = v44;
      if (v28)
      {
        v29 = v28;
        v30 = *v47;
        do
        {
          for (k = 0; k != v29; ++k)
          {
            if (*v47 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v46 + 1) + 8 * k);
            if ([v27 countForObject:v32] == v21)
            {
              [v20 addObject:v32];
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v46 objects:v60 count:16];
        }

        while (v29);
      }

      self = v45;
      v14 = v42;
    }

LABEL_39:
    v33 = [v20 count];
    v34 = _BYLoggingFacility();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
    if (v33)
    {
      if (v35)
      {
        *buf = 138412290;
        v62 = v20;
        _os_log_impl(&dword_1B862F000, v34, OS_LOG_TYPE_DEFAULT, "Setup Assistant Location: Wifi scan guessed countries: '%@'", buf, 0xCu);
      }

      [(BYLocationController *)self setGuessedCountries:v20];
      [(BYLocationController *)self _setGuessedCountryDefault:self->_guessedCountries];
      v36 = [(BYLocationController *)self wirelessScanStartDate];
      [v36 timeIntervalSinceNow];
      v38 = -v37;

      v39 = [(BYLocationController *)self recommendedLocaleAnalyticsEvent];
      [v39 setSource:3];

      v34 = [(BYLocationController *)self recommendedLocaleAnalyticsEvent];
      [v34 setDurationOfWiFiScan:v38];
    }

    else if (v35)
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v34, OS_LOG_TYPE_DEFAULT, "No valid countries in Wifi scan.", buf, 2u);
    }

    goto LABEL_46;
  }

LABEL_47:
  [(BYLocationController *)self _closeWifiConnection];

  v41 = *MEMORY[0x1E69E9840];
}

- (void)_closeWifiConnection
{
  if (self->fWifiManager)
  {
    CFRunLoopGetCurrent();
    v3 = *MEMORY[0x1E695E8D0];
    WiFiManagerClientUnscheduleFromRunLoop();
    CFRelease(self->fWifiManager);
    self->fWifiManager = 0;
  }

  fWifiDevice = self->fWifiDevice;
  if (fWifiDevice)
  {
    CFRelease(fWifiDevice);
    self->fWifiDevice = 0;
  }
}

- (void)reset
{
  [(BYLocationController *)self setGuessedCountries:0];
  guessedCountryFromTelephony = self->_guessedCountryFromTelephony;
  self->_guessedCountryFromTelephony = 0;
}

- (void)_countryFromTelephony
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3(&dword_1B862F000, a2, a3, "Failed to get country code from MCC: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end