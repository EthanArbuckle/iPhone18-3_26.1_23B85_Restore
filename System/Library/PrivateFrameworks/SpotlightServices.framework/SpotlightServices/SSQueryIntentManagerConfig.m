@interface SSQueryIntentManagerConfig
+ (id)_getParsecDomainMapping;
+ (id)_parseConditionalExtraSuggestions:(id)a3;
+ (id)_parseIntentOverrides:(id)a3;
+ (id)_parseServerDomainExclusionSet:(id)a3;
+ (id)sharedInstance;
- (BOOL)expired;
- (BOOL)getBoolParameter:(id)a3;
- (float)getFloatParameter:(id)a3;
- (id)_defaultOptions;
- (int)getIntParameter:(id)a3;
- (void)_clearConfig;
- (void)_updateInternalConfig:(id)a3;
- (void)update:(BOOL)a3;
- (void)updateWithResources:(id)a3 defaults:(id)a4;
@end

@implementation SSQueryIntentManagerConfig

- (void)_clearConfig
{
  baseConfig = self->_baseConfig;
  self->_baseConfig = 0;

  resources = self->_resources;
  self->_resources = 0;

  v5 = [MEMORY[0x1E695DFD8] setWithArray:MEMORY[0x1E695E0F0]];
  serverDomainDemotionExclusionSet = self->_serverDomainDemotionExclusionSet;
  self->_serverDomainDemotionExclusionSet = v5;

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)getBoolParameter:(id)a3
{
  v3 = [(NSDictionary *)self->_config objectForKeyedSubscript:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (int)getIntParameter:(id)a3
{
  v3 = [(NSDictionary *)self->_config objectForKeyedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (float)getFloatParameter:(id)a3
{
  v3 = [(NSDictionary *)self->_config objectForKeyedSubscript:a3];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (id)_defaultOptions
{
  if (_defaultOptions_onceToken != -1)
  {
    [SSQueryIntentManagerConfig _defaultOptions];
  }

  v3 = _defaultOptions__defaults;

  return v3;
}

void __45__SSQueryIntentManagerConfig__defaultOptions__block_invoke()
{
  v4[26] = *MEMORY[0x1E69E9840];
  v3[0] = @"IntentModelingEnabledMobile";
  v3[1] = @"IntentModelingEnabledDesktop";
  v4[0] = MEMORY[0x1E695E118];
  v4[1] = MEMORY[0x1E695E110];
  v3[2] = @"IntentModelingShowWebAsTypedBaseline";
  v3[3] = @"IntentModelingShowWebAsTypedLocal";
  v4[2] = MEMORY[0x1E695E118];
  v4[3] = MEMORY[0x1E695E118];
  v3[4] = @"IntentModelingShowWebAsTypedLocalStrong";
  v3[5] = @"IntentModelingShowWebAsTypedServer";
  v4[4] = MEMORY[0x1E695E118];
  v4[5] = MEMORY[0x1E695E118];
  v3[6] = @"IntentModelingLocalSuggestionQuotaBaseline";
  v3[7] = @"IntentModelingLocalSuggestionQuotaLocal";
  v4[6] = &unk_1F55B6A80;
  v4[7] = &unk_1F55B6A98;
  v3[8] = @"IntentModelingLocalSuggestionQuotaLocalStrong";
  v3[9] = @"IntentModelingLocalSuggestionQuotaServer";
  v4[8] = &unk_1F55B6A98;
  v4[9] = &unk_1F55B6A98;
  v3[10] = @"IntentModelingServerSuggestionQuotaBaseline";
  v3[11] = @"IntentModelingServerSuggestionQuotaLocal";
  v4[10] = &unk_1F55B6A80;
  v4[11] = &unk_1F55B6A98;
  v3[12] = @"IntentModelingServerSuggestionQuotaLocalStrong";
  v3[13] = @"IntentModelingServerSuggestionQuotaServer";
  v4[12] = &unk_1F55B6A98;
  v4[13] = &unk_1F55B6A80;
  v3[14] = @"IntentModelingServerSectionDisplayStrategyLocal";
  v3[15] = @"IntentModelingServerSectionDisplayStrategyLocalStrong";
  v4[14] = &unk_1F55B6AB0;
  v4[15] = &unk_1F55B6AC8;
  v3[16] = @"IntentModelingServerWeatherIntent";
  v3[17] = @"IntentModelingServerAppAccelerator";
  v4[16] = MEMORY[0x1E695E118];
  v4[17] = MEMORY[0x1E695E110];
  v3[18] = @"IntentModelingPhotosIntent";
  v3[19] = @"IntentModelingServerDomainsExcludedForDemotion";
  v4[18] = MEMORY[0x1E695E118];
  v4[19] = @"apps";
  v3[20] = @"IntentModelingSuppressSuggestionsUpToPrefixLength";
  v3[21] = @"IntentModelingShowSuggestionsAsOfPrefixLength";
  v4[20] = &unk_1F55B6A80;
  v4[21] = &unk_1F55B6A80;
  v3[22] = @"IntentModelingMapsPoiIntent";
  v3[23] = @"IntentModelingConditionalExtraSuggestions";
  v4[22] = MEMORY[0x1E695E118];
  v4[23] = &stru_1F556FE60;
  v3[24] = @"IntentModelingIntentOverrides";
  v3[25] = @"IntentModelingSafariEngagementThreshold";
  v4[24] = &stru_1F556FE60;
  v4[25] = &unk_1F55B6EE8;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:26];
  v1 = _defaultOptions__defaults;
  _defaultOptions__defaults = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_7 != -1)
  {
    +[SSQueryIntentManagerConfig sharedInstance];
  }

  [sharedInstance_sharedInstance_4 update];
  v2 = sharedInstance_sharedInstance_4;

  return v2;
}

uint64_t __44__SSQueryIntentManagerConfig_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_4 = objc_alloc_init(SSQueryIntentManagerConfig);

  return MEMORY[0x1EEE66BB8]();
}

- (void)_updateInternalConfig:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"IntentModelingServerDomainsExcludedForDemotion"];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [SSQueryIntentManagerConfig _parseServerDomainExclusionSet:v5];
      serverDomainDemotionExclusionSet = self->_serverDomainDemotionExclusionSet;
      self->_serverDomainDemotionExclusionSet = v6;

      v8 = SSGeneralLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = self->_serverDomainDemotionExclusionSet;
        v21 = 138412546;
        v22 = @"IntentModelingServerDomainsExcludedForDemotion";
        v23 = 2112;
        v24 = v9;
        _os_log_impl(&dword_1D9F69000, v8, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][IntentModeling][Config] Processed value for %@ = %@", &v21, 0x16u);
      }
    }
  }

  v10 = [v4 objectForKeyedSubscript:@"IntentModelingConditionalExtraSuggestions"];

  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [SSQueryIntentManagerConfig _parseConditionalExtraSuggestions:v10];
      conditionalExtraSuggestions = self->_conditionalExtraSuggestions;
      self->_conditionalExtraSuggestions = v11;

      v13 = SSGeneralLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = self->_conditionalExtraSuggestions;
        v21 = 138412546;
        v22 = @"IntentModelingConditionalExtraSuggestions";
        v23 = 2112;
        v24 = v14;
        _os_log_impl(&dword_1D9F69000, v13, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][IntentModeling][Config] Processed value for %@ = %@", &v21, 0x16u);
      }
    }
  }

  v15 = [v4 objectForKeyedSubscript:@"IntentModelingIntentOverrides"];

  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [SSQueryIntentManagerConfig _parseIntentOverrides:v15];
      intentOverrides = self->_intentOverrides;
      self->_intentOverrides = v16;

      v18 = SSGeneralLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = self->_intentOverrides;
        v21 = 138412546;
        v22 = @"IntentModelingIntentOverrides";
        v23 = 2112;
        v24 = v19;
        _os_log_impl(&dword_1D9F69000, v18, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][IntentModeling][Config] Processed value for %@ = %@", &v21, 0x16u);
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)updateWithResources:(id)a3 defaults:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  resources = self->_resources;
  location = &self->_resources;
  if (v7 && !resources)
  {
    objc_storeStrong(location, a3);
    v10 = SSGeneralLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *location;
      *buf = 138412290;
      v43 = v11;
      _os_log_impl(&dword_1D9F69000, v10, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][IntentModeling][Config] Resources: %@", buf, 0xCu);
    }

    resources = *location;
  }

  if (resources && [(SRResources *)resources hasUpdates])
  {
    baseConfig = self->_baseConfig;
    self->_baseConfig = 0;

    v13 = SSGeneralLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D9F69000, v13, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][IntentModeling][Config] hasUpdates, clearing config", buf, 2u);
    }
  }

  v14 = self->_baseConfig;
  if (!v14)
  {
    v15 = SSGeneralLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D9F69000, v15, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][IntentModeling][Config] Init config", buf, 2u);
    }

    if (!v8)
    {
      v8 = [(SSQueryIntentManagerConfig *)self _defaultOptions];
    }

    v33 = v8;
    v34 = self;
    v16 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v8];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = [(NSDictionary *)v16 allKeys];
    v17 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
    v35 = v7;
    if (!v17)
    {
      v19 = 0;
      goto LABEL_32;
    }

    v18 = v17;
    v19 = 0;
    v20 = *v39;
    p_resources = &self->_resources;
    while (1)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v39 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v38 + 1) + 8 * i);
        if (*p_resources)
        {
          v24 = [(SRResources *)*p_resources objectForKey:*(*(&v38 + 1) + 8 * i)];

          if (v24)
          {
            [(NSDictionary *)v16 setObject:v24 forKeyedSubscript:v23];
            v25 = @"Override";
            v19 = v24;
            goto LABEL_26;
          }

          v19 = 0;
        }

        v25 = @"Loaded";
LABEL_26:
        v26 = SSGeneralLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [(NSDictionary *)v16 objectForKeyedSubscript:v23];
          *buf = 138412802;
          v43 = v25;
          v44 = 2112;
          v45 = v23;
          v46 = 2112;
          v47 = v27;
          _os_log_impl(&dword_1D9F69000, v26, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][IntentModeling][Config] %@ value for %@ = %@", buf, 0x20u);

          p_resources = location;
        }
      }

      v18 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
      if (!v18)
      {
LABEL_32:

        self = v34;
        v28 = v34->_baseConfig;
        v34->_baseConfig = v16;
        v29 = v16;

        [(SSQueryIntentManagerConfig *)v34 _updateInternalConfig:v29];
        v14 = v34->_baseConfig;
        v7 = v35;
        v8 = v33;
        break;
      }
    }
  }

  objc_storeStrong(&self->_config, v14);
  v30 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:300.0];
  expirationDate = self->_expirationDate;
  self->_expirationDate = v30;

  v32 = *MEMORY[0x1E69E9840];
}

- (BOOL)expired
{
  if (!self->_expirationDate)
  {
    return 1;
  }

  v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:0.0];
  v4 = [v3 compare:self->_expirationDate] == 1;

  return v4;
}

- (void)update:(BOOL)a3
{
  if (a3 || [(SSQueryIntentManagerConfig *)self expired])
  {
    os_unfair_lock_lock(&sConfigLock);
    v4 = [MEMORY[0x1E69D3E28] sharedResourcesManager];
    v5 = [v4 resourcesForClient:@"Spotlight" options:&unk_1F55B7920];

    [(SSQueryIntentManagerConfig *)self updateWithResources:v5 defaults:0];
    os_unfair_lock_unlock(&sConfigLock);
  }
}

+ (id)_getParsecDomainMapping
{
  if (_getParsecDomainMapping_onceToken != -1)
  {
    +[SSQueryIntentManagerConfig _getParsecDomainMapping];
  }

  v3 = _getParsecDomainMapping__domainMapping;

  return v3;
}

void __53__SSQueryIntentManagerConfig__getParsecDomainMapping__block_invoke()
{
  v4[18] = *MEMORY[0x1E69E9840];
  v3[0] = @"stocks";
  v3[1] = @"sports";
  v4[0] = @"com.apple.parsec.stocks";
  v4[1] = @"com.apple.parsec.sports";
  v3[2] = @"maps";
  v3[3] = @"movies";
  v4[2] = @"com.apple.parsec.maps";
  v4[3] = @"com.apple.parsec.movies";
  v3[4] = @"kg";
  v3[5] = @"web";
  v4[4] = @"com.apple.parsec.kg";
  v4[5] = @"com.apple.parsec.web_index";
  v3[6] = @"dictionary";
  v3[7] = @"weather";
  v4[6] = @"com.apple.parsec.dictionary";
  v4[7] = @"com.apple.parsec.weather";
  v3[8] = @"webimages";
  v3[9] = @"webanswers";
  v4[8] = @"com.apple.parsec.web_images";
  v4[9] = @"com.apple.parsec.web_answer.passage";
  v3[10] = @"apps";
  v3[11] = @"news";
  v4[10] = @"com.apple.parsec.itunes.iosSoftware";
  v4[11] = @"com.apple.parsec.news";
  v3[12] = @"flights";
  v3[13] = @"itunes.album";
  v4[12] = @"com.apple.parsec.flights";
  v4[13] = @"com.apple.parsec.itunes.album";
  v3[14] = @"itunes.artist";
  v3[15] = @"itunes.book";
  v4[14] = @"com.apple.parsec.itunes.artist";
  v4[15] = @"com.apple.parsec.itunes.book";
  v3[16] = @"itunes.podcast";
  v3[17] = @"itunes.song";
  v4[16] = @"com.apple.parsec.itunes.podcast";
  v4[17] = @"com.apple.parsec.itunes.song";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:18];
  v1 = _getParsecDomainMapping__domainMapping;
  _getParsecDomainMapping__domainMapping = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)_parseServerDomainExclusionSet:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] set];
  if (v3)
  {
    v5 = v3;
    v6 = +[SSQueryIntentManagerConfig _getParsecDomainMapping];
    v7 = [v5 lowercaseString];
    v8 = [v7 componentsSeparatedByString:{@", "}];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if (*(*(&v17 + 1) + 8 * i))
          {
            v14 = [v6 objectForKeyedSubscript:v17];
            if (v14)
            {
              [v4 addObject:v14];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)_parseConditionalExtraSuggestions:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v26 = [MEMORY[0x1E695DF90] dictionary];
  if (v3)
  {
    v25 = v3;
    v4 = v3;
    v5 = +[SSQueryIntentManagerConfig _getParsecDomainMapping];
    v24 = v4;
    v6 = [v4 lowercaseString];
    v7 = [v6 componentsSeparatedByString:{@", "}];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          if (v13 && [*(*(&v27 + 1) + 8 * i) containsString:@":"])
          {
            v14 = [v13 lowercaseString];
            v15 = [v14 componentsSeparatedByString:@":"];

            if ([v15 count] == 2)
            {
              v16 = [v15 objectAtIndexedSubscript:0];
              v17 = [v5 objectForKeyedSubscript:v16];

              v18 = [v15 objectAtIndexedSubscript:1];
              v19 = [v18 integerValue];

              if (v17)
              {
                v20 = v19 < 1;
              }

              else
              {
                v20 = 1;
              }

              if (!v20)
              {
                v21 = [MEMORY[0x1E696AD98] numberWithInteger:v19];
                [v26 setValue:v21 forKey:v17];
              }
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v10);
    }

    v3 = v25;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v26;
}

+ (id)_parseIntentOverrides:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v3)
  {
    v23 = v3;
    v4 = [v3 lowercaseString];
    v5 = [v4 componentsSeparatedByString:{@", "}];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v26;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v25 + 1) + 8 * i);
          if (v11 && [*(*(&v25 + 1) + 8 * i) containsString:@":"])
          {
            v12 = [v11 lowercaseString];
            v13 = [v12 componentsSeparatedByString:@":"];

            if ([v13 count] == 2)
            {
              v14 = [v13 objectAtIndexedSubscript:0];
              v15 = [v14 intValue];

              v16 = [v13 objectAtIndexedSubscript:1];
              v17 = [v16 intValue];

              if (v15 <= 0x15 && v17 <= 0x15)
              {
                v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v17];
                v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v15];
                [v24 setObject:v19 forKey:v20];
              }
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v8);
    }

    v3 = v23;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v24;
}

@end