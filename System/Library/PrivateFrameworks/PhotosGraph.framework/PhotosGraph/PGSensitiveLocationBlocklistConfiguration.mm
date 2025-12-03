@interface PGSensitiveLocationBlocklistConfiguration
+ (BOOL)dateInterval:(id)interval intersectsSensitiveDateIntervals:(id)intervals;
+ (BOOL)isAssetAtSensitiveLocationAndDate:(id)date;
+ (BOOL)isSensitiveLocation:(id)location duringDateInterval:(id)interval;
+ (id)dateFormatter;
+ (id)obfuscatedBlocklistFromUnobfuscatedBlocklist:(id)blocklist;
+ (id)resolveConfigurationDictionary:(id)dictionary;
+ (id)sensitiveLocationBlocklist;
+ (id)sensitiveLocationBlocklistConfigurations;
+ (id)sensitiveLocationBlocklistConfigurationsLocal;
+ (id)sensitiveLocationBlocklistLocal;
+ (id)unobfuscatedBlocklistFromObfuscatedBlocklist:(id)blocklist;
- (PGSensitiveLocationBlocklistConfiguration)initWithConfigurationDictionary:(id)dictionary;
@end

@implementation PGSensitiveLocationBlocklistConfiguration

- (PGSensitiveLocationBlocklistConfiguration)initWithConfigurationDictionary:(id)dictionary
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = [PGSensitiveLocationBlocklistConfiguration resolveConfigurationDictionary:dictionary];
  v5 = [[PGDictionaryConfigurationSource alloc] initWithDictionary:v4];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v10.receiver = self;
  v10.super_class = PGSensitiveLocationBlocklistConfiguration;
  v7 = [(PGConfiguration *)&v10 initWithSources:v6 version:1.0];

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)dateFormatter
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];

  return v2;
}

+ (id)sensitiveLocationBlocklistConfigurationsLocal
{
  v18 = *MEMORY[0x277D85DE8];
  sensitiveLocationBlocklistLocal = [self sensitiveLocationBlocklistLocal];
  if ([sensitiveLocationBlocklistLocal count])
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = sensitiveLocationBlocklistLocal;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [v4 objectForKeyedSubscript:{*(*(&v13 + 1) + 8 * i), v13}];
          v10 = [[PGSensitiveLocationBlocklistConfiguration alloc] initWithConfigurationDictionary:v9];
          if (v10)
          {
            [v3 addObject:v10];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)sensitiveLocationBlocklistLocal
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"assets_394/sbl" withExtension:@"plist"];

  v12 = 0;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v3 error:&v12];
  v5 = v12;
  if (v5)
  {
    v6 = +[PGLogging sharedLogging];
    loggingConnection = [v6 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGSenLoc] Error loading local file: %@", buf, 0xCu);
    }
  }

  if (![v4 count])
  {
    v8 = +[PGLogging sharedLogging];
    loggingConnection2 = [v8 loggingConnection];

    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[PGSenLoc] Error: Empty local file loaded.", buf, 2u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)obfuscatedBlocklistFromUnobfuscatedBlocklist:(id)blocklist
{
  v51 = *MEMORY[0x277D85DE8];
  blocklistCopy = blocklist;
  v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v40 = +[PGSensitiveLocationBlocklistConfiguration dateFormatter];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v4 = blocklistCopy;
  v33 = [v4 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v33)
  {
    v30 = v4;
    v31 = *v46;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v46 != v31)
        {
          objc_enumerationMutation(v4);
        }

        v6 = *(*(&v45 + 1) + 8 * i);
        v7 = [v4 objectForKeyedSubscript:v6];
        v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v38 = [v7 objectForKeyedSubscript:@"sensitiveDateIntervalsAsDictionaries"];
        if (v38)
        {
          v34 = v6;
          v35 = v8;
          v36 = v7;
          v37 = i;
          v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          obj = v38;
          v10 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v42;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v42 != v12)
                {
                  objc_enumerationMutation(obj);
                }

                v14 = *(*(&v41 + 1) + 8 * j);
                v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
                v16 = [v14 objectForKeyedSubscript:@"startDate"];

                if (v16)
                {
                  v17 = [v14 objectForKeyedSubscript:@"startDate"];
                  v18 = [PGObfuscation obfuscatedStringFromPlaintextDate:v17 usingDateFormatter:v40];
                  [v15 setObject:v18 forKeyedSubscript:@"d"];
                }

                v19 = [v14 objectForKeyedSubscript:@"endDate"];

                if (v19)
                {
                  v20 = [v14 objectForKeyedSubscript:@"endDate"];
                  v21 = [PGObfuscation obfuscatedStringFromPlaintextDate:v20 usingDateFormatter:v40];
                  [v15 setObject:v21 forKeyedSubscript:@"l"];
                }

                [v9 addObject:v15];
              }

              v11 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
            }

            while (v11);
          }

          v8 = v35;
          [v35 setObject:v9 forKeyedSubscript:@"e"];

          v4 = v30;
          v7 = v36;
          i = v37;
          v6 = v34;
        }

        v22 = [v7 objectForKeyedSubscript:@"latitude"];
        if (v22)
        {
          v23 = [PGObfuscation obfuscatedStringFromPlaintextNumber:v22];
          [v8 setObject:v23 forKeyedSubscript:@"n"];
        }

        v24 = [v7 objectForKeyedSubscript:@"longitude"];
        if (v24)
        {
          v25 = [PGObfuscation obfuscatedStringFromPlaintextNumber:v24];
          [v8 setObject:v25 forKeyedSubscript:@"c"];
        }

        v26 = [v7 objectForKeyedSubscript:@"radius"];
        if (v26)
        {
          v27 = [PGObfuscation obfuscatedStringFromPlaintextNumber:v26];
          [v8 setObject:v27 forKeyedSubscript:@"g"];
        }

        [v32 setObject:v8 forKeyedSubscript:v6];
      }

      v33 = [v4 countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v33);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v32;
}

+ (id)unobfuscatedBlocklistFromObfuscatedBlocklist:(id)blocklist
{
  v51 = *MEMORY[0x277D85DE8];
  blocklistCopy = blocklist;
  v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v40 = +[PGSensitiveLocationBlocklistConfiguration dateFormatter];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v4 = blocklistCopy;
  v33 = [v4 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v33)
  {
    v30 = v4;
    v31 = *v46;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v46 != v31)
        {
          objc_enumerationMutation(v4);
        }

        v6 = *(*(&v45 + 1) + 8 * i);
        v7 = [v4 objectForKeyedSubscript:v6];
        v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v38 = [v7 objectForKeyedSubscript:@"e"];
        if (v38)
        {
          v34 = v6;
          v35 = v8;
          v36 = v7;
          v37 = i;
          v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          obj = v38;
          v10 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v42;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v42 != v12)
                {
                  objc_enumerationMutation(obj);
                }

                v14 = *(*(&v41 + 1) + 8 * j);
                v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
                v16 = [v14 objectForKeyedSubscript:@"d"];

                if (v16)
                {
                  v17 = [v14 objectForKeyedSubscript:@"d"];
                  v18 = [PGObfuscation plaintextDateFromObfuscatedString:v17 usingDateFormatter:v40];
                  [v15 setObject:v18 forKeyedSubscript:@"startDate"];
                }

                v19 = [v14 objectForKeyedSubscript:@"l"];

                if (v19)
                {
                  v20 = [v14 objectForKeyedSubscript:@"l"];
                  v21 = [PGObfuscation plaintextDateFromObfuscatedString:v20 usingDateFormatter:v40];
                  [v15 setObject:v21 forKeyedSubscript:@"endDate"];
                }

                [v9 addObject:v15];
              }

              v11 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
            }

            while (v11);
          }

          v8 = v35;
          [v35 setObject:v9 forKeyedSubscript:@"sensitiveDateIntervalsAsDictionaries"];

          v4 = v30;
          v7 = v36;
          i = v37;
          v6 = v34;
        }

        v22 = [v7 objectForKeyedSubscript:@"n"];
        if (v22)
        {
          v23 = [PGObfuscation plaintextNumberFromObfuscatedString:v22];
          [v8 setObject:v23 forKeyedSubscript:@"latitude"];
        }

        v24 = [v7 objectForKeyedSubscript:@"c"];
        if (v24)
        {
          v25 = [PGObfuscation plaintextNumberFromObfuscatedString:v24];
          [v8 setObject:v25 forKeyedSubscript:@"longitude"];
        }

        v26 = [v7 objectForKeyedSubscript:@"g"];
        if (v26)
        {
          v27 = [PGObfuscation plaintextNumberFromObfuscatedString:v26];
          [v8 setObject:v27 forKeyedSubscript:@"radius"];
        }

        [v32 setObject:v8 forKeyedSubscript:v6];
      }

      v33 = [v4 countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v33);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v32;
}

+ (BOOL)isAssetAtSensitiveLocationAndDate:(id)date
{
  dateCopy = date;
  localCreationDate = [dateCopy localCreationDate];

  if (localCreationDate)
  {
    v6 = objc_alloc(MEMORY[0x277CCA970]);
    localCreationDate2 = [dateCopy localCreationDate];
    localCreationDate3 = [dateCopy localCreationDate];
    loggingConnection = [v6 initWithStartDate:localCreationDate2 endDate:localCreationDate3];

    location = [dateCopy location];
    v11 = [self isSensitiveLocation:location duringDateInterval:loggingConnection];
  }

  else
  {
    v12 = +[PGLogging sharedLogging];
    loggingConnection = [v12 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGSenLoc] Error: Asset passed in with no local creation date.", v14, 2u);
    }

    v11 = 0;
  }

  return v11;
}

+ (BOOL)dateInterval:(id)interval intersectsSensitiveDateIntervals:(id)intervals
{
  v17 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  intervalsCopy = intervals;
  v7 = [intervalsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(intervalsCopy);
        }

        if ([intervalCopy intersectsDateInterval:{*(*(&v12 + 1) + 8 * i), v12}])
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [intervalsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (BOOL)isSensitiveLocation:(id)location duringDateInterval:(id)interval
{
  v35 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  if (location)
  {
    [location coordinate];
    v32 = v7;
    v33 = v8;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    sensitiveLocationBlocklistConfigurations = [self sensitiveLocationBlocklistConfigurations];
    v10 = [sensitiveLocationBlocklistConfigurations countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(sensitiveLocationBlocklistConfigurations);
          }

          v14 = *(*(&v28 + 1) + 8 * i);
          [v14 latitude];
          v16 = v15;
          [v14 longitude];
          v18 = CLLocationCoordinate2DMake(v16, v17);
          CLLocationCoordinate2DGetDistanceFrom();
          v20 = v19;
          sensitiveDateIntervals = [v14 sensitiveDateIntervals];
          [v14 radius];
          v23 = v20 <= v22 && sensitiveDateIntervals == 0;
          v24 = v23;
          if (!v23 && v20 <= v22)
          {
            v24 = [self dateInterval:intervalCopy intersectsSensitiveDateIntervals:sensitiveDateIntervals];
          }

          if (v24)
          {
            v25 = 1;
            goto LABEL_21;
          }
        }

        v11 = [sensitiveLocationBlocklistConfigurations countByEnumeratingWithState:&v28 objects:v34 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v25 = 0;
LABEL_21:
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

+ (id)sensitiveLocationBlocklistConfigurations
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__PGSensitiveLocationBlocklistConfiguration_sensitiveLocationBlocklistConfigurations__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sensitiveLocationBlocklistConfigurations_onceToken != -1)
  {
    dispatch_once(&sensitiveLocationBlocklistConfigurations_onceToken, block);
  }

  v2 = sensitiveLocationBlocklistConfigurations_locationBlocklistConfigurations;

  return v2;
}

void __85__PGSensitiveLocationBlocklistConfiguration_sensitiveLocationBlocklistConfigurations__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) sensitiveLocationBlocklist];
  if ([v1 count])
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3 = sensitiveLocationBlocklistConfigurations_locationBlocklistConfigurations;
    sensitiveLocationBlocklistConfigurations_locationBlocklistConfigurations = v2;

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v1;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [v4 objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * v8), v12}];
          v10 = [[PGSensitiveLocationBlocklistConfiguration alloc] initWithConfigurationDictionary:v9];
          if (v10)
          {
            [sensitiveLocationBlocklistConfigurations_locationBlocklistConfigurations addObject:v10];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)sensitiveLocationBlocklist
{
  v3 = objc_alloc_init(PGRemoteConfiguration);
  v4 = [(PGRemoteConfiguration *)v3 dictionaryValueForKey:@"com.apple.photos.memories.sbl" withFallbackValue:MEMORY[0x277CBEC10]];
  if (![v4 count])
  {
    v5 = +[PGLogging sharedLogging];
    loggingConnection = [v5 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGSenLoc] Couldn't load the senloc, falling back...", v9, 2u);
    }

    sensitiveLocationBlocklistLocal = [self sensitiveLocationBlocklistLocal];

    v4 = sensitiveLocationBlocklistLocal;
  }

  return v4;
}

+ (id)resolveConfigurationDictionary:(id)dictionary
{
  v44 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [dictionaryCopy objectForKeyedSubscript:@"e"];
  v36 = +[PGSensitiveLocationBlocklistConfiguration dateFormatter];
  if (v5)
  {
    v33 = v4;
    v34 = dictionaryCopy;
    v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v32 = v5;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v38;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v38 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v37 + 1) + 8 * i);
          v12 = [v11 objectForKeyedSubscript:@"d"];

          if (v12)
          {
            v13 = [v11 objectForKeyedSubscript:@"d"];
            v12 = [PGObfuscation plaintextDateFromObfuscatedString:v13 usingDateFormatter:v36];
          }

          v14 = [v11 objectForKeyedSubscript:@"l"];

          if (v14)
          {
            v15 = [v11 objectForKeyedSubscript:@"l"];
            v16 = [PGObfuscation plaintextDateFromObfuscatedString:v15 usingDateFormatter:v36];

            if (v12 && v16)
            {
              v17 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v12 endDate:v16];
              [v35 addObject:v17];
            }
          }

          else
          {
            v16 = 0;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v8);
    }

    v4 = v33;
    [v33 setObject:v35 forKeyedSubscript:@"sensitiveDateIntervals"];

    dictionaryCopy = v34;
    v5 = v32;
  }

  v18 = [dictionaryCopy objectForKeyedSubscript:@"n"];
  if (v18)
  {
    v19 = [PGObfuscation plaintextNumberFromObfuscatedString:v18];
    [v4 setObject:v19 forKeyedSubscript:@"latitude"];
  }

  v20 = [v4 objectForKeyedSubscript:@"latitude"];

  if (v20)
  {
    loggingConnection2 = [dictionaryCopy objectForKeyedSubscript:@"c"];
    if (loggingConnection2)
    {
      v22 = [PGObfuscation plaintextNumberFromObfuscatedString:loggingConnection2];
      [v4 setObject:v22 forKeyedSubscript:@"longitude"];
    }

    v23 = [v4 objectForKeyedSubscript:@"longitude"];

    if (v23)
    {
      loggingConnection = [dictionaryCopy objectForKeyedSubscript:@"g"];
      if (loggingConnection)
      {
        v25 = [PGObfuscation plaintextNumberFromObfuscatedString:loggingConnection];
        [v4 setObject:v25 forKeyedSubscript:@"radius"];
      }

      v26 = [v4 objectForKeyedSubscript:@"radius"];
      if (!v26)
      {
        [v4 setObject:&unk_2844871A8 forKeyedSubscript:@"radius"];
      }

      v27 = v4;
    }

    else
    {
      v29 = +[PGLogging sharedLogging];
      loggingConnection = [v29 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = dictionaryCopy;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGSensitiveLocationBlocklistConfiguration] Error unobfuscating blocklist, couldn't find or unobfuscate required key longitude in entry. Entry is %@", buf, 0xCu);
      }

      v27 = 0;
    }
  }

  else
  {
    v28 = +[PGLogging sharedLogging];
    loggingConnection2 = [v28 loggingConnection];

    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v42 = dictionaryCopy;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "[PGSensitiveLocationBlocklistConfiguration] Error unobfuscating blocklist, couldn't find or unobfuscate required key latitude in entry. Entry is %@", buf, 0xCu);
    }

    v27 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v27;
}

@end