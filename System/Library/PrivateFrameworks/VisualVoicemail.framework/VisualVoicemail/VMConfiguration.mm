@interface VMConfiguration
+ (BOOL)isSystemLocaleSupportedForTranscription;
+ (NSLocale)localeForTranscriptionLanguage;
+ (NSLocale)matchLocaleForTranscriptionLanguage;
+ (float)confidenceLowQualityThreshold;
+ (float)confidenceSegmentThreshold;
+ (float)confidenceThreshold;
+ (id)VMAssetNgasrSupportedLocales:(BOOL)locales;
+ (id)confidenceThresholdFromAssetForKey:(id)key;
+ (id)confidenceThresholdFromDefaultsForKey:(id)key;
+ (id)getVMConcatenationDelimiterforLocale:(int64_t)locale;
+ (id)metadataDictionaryForSpeechAssetWithLanguage:(id)language;
@end

@implementation VMConfiguration

+ (NSLocale)matchLocaleForTranscriptionLanguage
{
  v28 = *MEMORY[0x277D85DE8];
  if ([objc_opt_class() isSystemLocaleSupportedForTranscription])
  {
    vMASRSupportedLocales = [objc_opt_class() VMASRSupportedLocales];
    preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
    v4 = [MEMORY[0x277CBEAF8] matchedLanguagesFromAvailableLanguages:vMASRSupportedLocales forPreferredLanguages:preferredLanguages];
    v5 = [v4 count];
    firstObject2 = vm_framework_log();
    v7 = os_log_type_enabled(firstObject2, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v8 = [preferredLanguages componentsJoinedByString:{@", "}];
        v9 = [vMASRSupportedLocales componentsJoinedByString:{@", "}];
        v10 = [v4 componentsJoinedByString:{@", "}];
        firstObject = [v4 firstObject];
        v20 = 138413058;
        v21 = v8;
        v22 = 2112;
        v23 = v9;
        v24 = 2112;
        v25 = v10;
        v26 = 2112;
        v27 = firstObject;
        _os_log_impl(&dword_2721BA000, firstObject2, OS_LOG_TYPE_DEFAULT, "matchLocaleForTranscriptionLanguage: Mapping preferred languages (%@) to languages supported by Siri: (%@). Mapped languages: (%@) Returning identifier %@", &v20, 0x2Au);
      }

      v12 = MEMORY[0x277CBEAF8];
      firstObject2 = [v4 firstObject];
      v13 = [v12 localeWithLocaleIdentifier:firstObject2];
    }

    else
    {
      if (v7)
      {
        v16 = [preferredLanguages componentsJoinedByString:{@", "}];
        v17 = [vMASRSupportedLocales componentsJoinedByString:{@", "}];
        v20 = 138412546;
        v21 = v16;
        v22 = 2112;
        v23 = v17;
        _os_log_impl(&dword_2721BA000, firstObject2, OS_LOG_TYPE_DEFAULT, "matchLocaleForTranscriptionLanguage: No preferred languages (%@) supported by Siri: (%@).", &v20, 0x16u);
      }

      v13 = 0;
    }

    v14 = v13;
    v15 = v14;
  }

  else
  {
    v14 = vm_framework_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_2721BA000, v14, OS_LOG_TYPE_DEFAULT, "matchLocaleForTranscriptionLanguage: Transcription not supported for system locale", &v20, 2u);
    }

    v15 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (BOOL)isSystemLocaleSupportedForTranscription
{
  v15 = *MEMORY[0x277D85DE8];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  regionCode = [currentLocale regionCode];
  if (regionCode)
  {
    languageCode = [currentLocale languageCode];
    languageIdentifier = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-%@", languageCode, regionCode];
  }

  else
  {
    languageIdentifier = [currentLocale languageIdentifier];
  }

  vMExpansionAvailableLocales = [objc_opt_class() VMExpansionAvailableLocales];
  v7 = [vMExpansionAvailableLocales containsObject:languageIdentifier];
  v8 = vm_framework_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = languageIdentifier;
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&dword_2721BA000, v8, OS_LOG_TYPE_DEFAULT, "isSystemLocaleSupportedForTranscription: System locale's language identifier = %@, is it enabled? %d", buf, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)VMAssetNgasrSupportedLocales:(BOOL)locales
{
  if (locales)
  {
    return &unk_28817AC68;
  }

  else
  {
    return &unk_28817AC80;
  }
}

+ (id)getVMConcatenationDelimiterforLocale:(int64_t)locale
{
  if (locale == 1010)
  {
    return &stru_2881762E0;
  }

  else
  {
    return @" ";
  }
}

+ (NSLocale)localeForTranscriptionLanguage
{
  v23 = *MEMORY[0x277D85DE8];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  if (currentLocale)
  {
    if (!_os_feature_enabled_impl())
    {
      v11 = currentLocale;
      languageIdentifier = [v11 languageIdentifier];
      v13 = [languageIdentifier isEqualToString:@"en-CA"];

      if (v13)
      {
        v14 = vm_framework_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v21) = 0;
          _os_log_impl(&dword_2721BA000, v14, OS_LOG_TYPE_DEFAULT, "localeForTranscriptionLanguage: Mapping Canadian Siri to US Siri language for transcription", &v21, 2u);
        }

        v15 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en-US"];

        v11 = v15;
      }

      v16 = vm_framework_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        localeIdentifier = [v11 localeIdentifier];
        v21 = 138412290;
        v22 = localeIdentifier;
        _os_log_impl(&dword_2721BA000, v16, OS_LOG_TYPE_DEFAULT, "localeForTranscriptionLanguage: Returning %@", &v21, 0xCu);
      }

      v7 = v11;
      goto LABEL_17;
    }

    matchLocaleForTranscriptionLanguage = [objc_opt_class() matchLocaleForTranscriptionLanguage];
    v4 = vm_framework_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (matchLocaleForTranscriptionLanguage)
    {
      if (v5)
      {
        localeIdentifier2 = [matchLocaleForTranscriptionLanguage localeIdentifier];
        v21 = 138412290;
        v22 = localeIdentifier2;
        _os_log_impl(&dword_2721BA000, v4, OS_LOG_TYPE_DEFAULT, "localeForTranscriptionLanguage: Returning %@", &v21, 0xCu);
      }

      v7 = matchLocaleForTranscriptionLanguage;
LABEL_17:
      v9 = v7;
      v10 = v7;
      goto LABEL_18;
    }

    if (v5)
    {
      localeIdentifier3 = [currentLocale localeIdentifier];
      v21 = 138412290;
      v22 = localeIdentifier3;
      _os_log_impl(&dword_2721BA000, v4, OS_LOG_TYPE_DEFAULT, "localeForTranscriptionLanguage: No preferred languages supported by Siri. Defaulting to fallback current %@", &v21, 0xCu);
    }

    v10 = currentLocale;
    v9 = 0;
  }

  else
  {
    v8 = vm_framework_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_2721BA000, v8, OS_LOG_TYPE_DEFAULT, "localeForTranscriptionLanguage: Error: nil system locale returned.", &v21, 2u);
    }

    v9 = 0;
    v10 = 0;
  }

LABEL_18:

  v18 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (float)confidenceThreshold
{
  v15 = *MEMORY[0x277D85DE8];
  confidenceThresholdFromAsset = [self confidenceThresholdFromAsset];
  v4 = confidenceThresholdFromAsset;
  if (confidenceThresholdFromAsset)
  {
    [confidenceThresholdFromAsset floatValue];
    v6 = v5;
  }

  else
  {
    v7 = [self confidenceThresholdFromDefaultsForKey:@"VoicemailTranscriptionConfidenceThreshold"];

    if (v7)
    {
      v8 = [self confidenceThresholdFromDefaultsForKey:@"VoicemailTranscriptionConfidenceThreshold"];
      [v8 floatValue];
      v6 = v9;
    }

    else
    {
      v6 = 0.45096;
    }
  }

  v10 = vm_framework_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = v6;
    _os_log_impl(&dword_2721BA000, v10, OS_LOG_TYPE_DEFAULT, "Returning confidenceThreshold of %f", &v13, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (float)confidenceLowQualityThreshold
{
  v15 = *MEMORY[0x277D85DE8];
  confidenceLowQualityThresholdFromAsset = [self confidenceLowQualityThresholdFromAsset];
  v4 = confidenceLowQualityThresholdFromAsset;
  if (confidenceLowQualityThresholdFromAsset)
  {
    [confidenceLowQualityThresholdFromAsset floatValue];
    v6 = v5;
  }

  else
  {
    v7 = [self confidenceThresholdFromDefaultsForKey:@"VoicemailTranscriptionLowQualityConfidenceThreshold"];

    if (v7)
    {
      v8 = [self confidenceThresholdFromDefaultsForKey:@"VoicemailTranscriptionLowQualityConfidenceThreshold"];
      [v8 floatValue];
      v6 = v9;
    }

    else
    {
      v6 = 0.6878;
    }
  }

  v10 = vm_framework_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = v6;
    _os_log_impl(&dword_2721BA000, v10, OS_LOG_TYPE_DEFAULT, "Returning confidenceLowQualityThreshold of %f", &v13, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (float)confidenceSegmentThreshold
{
  v15 = *MEMORY[0x277D85DE8];
  confidenceSegmentThresholdFromAsset = [self confidenceSegmentThresholdFromAsset];
  v4 = confidenceSegmentThresholdFromAsset;
  if (confidenceSegmentThresholdFromAsset)
  {
    [confidenceSegmentThresholdFromAsset floatValue];
    v6 = v5;
  }

  else
  {
    v7 = [self confidenceThresholdFromDefaultsForKey:@"VoicemailTranscriptionSegmentConfidenceThreshold"];

    if (v7)
    {
      v8 = [self confidenceThresholdFromDefaultsForKey:@"VoicemailTranscriptionSegmentConfidenceThreshold"];
      [v8 floatValue];
      v6 = v9;
    }

    else
    {
      v6 = 0.3;
    }
  }

  v10 = vm_framework_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = v6;
    _os_log_impl(&dword_2721BA000, v10, OS_LOG_TYPE_DEFAULT, "Returning confidenceSegmentThreshold of %f", &v13, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)confidenceThresholdFromDefaultsForKey:(id)key
{
  v3 = CFPreferencesCopyAppValue(key, @"com.apple.visualvoicemail");
  v4 = v3;
  if (v3)
  {
    v5 = CFGetTypeID(v3);
    if (v5 != CFNumberGetTypeID())
    {
      CFRelease(v4);
      v4 = 0;
    }
  }

  return v4;
}

+ (id)confidenceThresholdFromAssetForKey:(id)key
{
  v25 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  localeForTranscriptionLanguage = [self localeForTranscriptionLanguage];
  localeIdentifier = [localeForTranscriptionLanguage localeIdentifier];

  v7 = [MEMORY[0x277CBEAF8] canonicalLanguageIdentifierFromString:localeIdentifier];
  v8 = [self metadataDictionaryForSpeechAssetWithLanguage:v7];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_15;
  }

  v10 = [v8 objectForKeyedSubscript:@"voicemail-confidence-parameters"];
  v11 = vm_framework_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (!v10)
  {
    if (v12)
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_2721BA000, v11, OS_LOG_TYPE_DEFAULT, "Could not find a confidence threshold dictionary in this asset metadata", &v21, 2u);
    }

    goto LABEL_14;
  }

  if (v12)
  {
    v21 = 138412290;
    v22 = v10;
    _os_log_impl(&dword_2721BA000, v11, OS_LOG_TYPE_DEFAULT, "Found confidence dictionary in asset: %@", &v21, 0xCu);
  }

  v13 = [v10 objectForKeyedSubscript:keyCopy];
  v14 = MEMORY[0x277CCABB0];
  [v13 floatValue];
  v11 = [v14 numberWithFloat:?];

  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v11 floatValue], v15 < 0.0) || ([v11 floatValue], v16 > 1.0))
    {
      v17 = vm_framework_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(VMConfiguration *)v11 confidenceThresholdFromAssetForKey:v17];
      }

LABEL_14:
LABEL_15:
      v11 = 0;
    }
  }

  v18 = vm_framework_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = v11;
    v23 = 2112;
    v24 = keyCopy;
    _os_log_impl(&dword_2721BA000, v18, OS_LOG_TYPE_DEFAULT, "Returning threshold from asset of %@, for key %@", &v21, 0x16u);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)metadataDictionaryForSpeechAssetWithLanguage:(id)language
{
  v48 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  v4 = vm_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = languageCopy;
    _os_log_impl(&dword_2721BA000, v4, OS_LOG_TYPE_DEFAULT, "Fetching JSON transcription object for %@", buf, 0xCu);
  }

  v5 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:@"com.apple.MobileAsset.EmbeddedSpeech"];
  [v5 addKeyValuePair:@"Language" with:languageCopy];
  [v5 returnTypes:1];
  v35 = languageCopy;
  if ([v5 queryMetaDataSync])
  {
    v6 = 0;
  }

  else
  {
    results = [v5 results];
    if (!results || (v8 = results, [v5 results], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v8, !v10))
    {
      v11 = vm_framework_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2721BA000, v11, OS_LOG_TYPE_DEFAULT, "No embedded speech assets were found", buf, 2u);
      }
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v34 = v5;
    obj = [v5 results];
    v12 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v12)
    {
      v14 = v12;
      v6 = 0;
      v15 = *v40;
      *&v13 = 138412290;
      v33 = v13;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v40 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v39 + 1) + 8 * i);
          getLocalUrl = [v17 getLocalUrl];
          v19 = vm_framework_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v44 = languageCopy;
            v45 = 2112;
            v46 = getLocalUrl;
            _os_log_impl(&dword_2721BA000, v19, OS_LOG_TYPE_DEFAULT, "Local url for language %@ is %@", buf, 0x16u);
          }

          if (getLocalUrl)
          {
            attributes = [v17 attributes];
            v21 = [attributes objectForKey:@"QuasarDir"];

            if (v21)
            {
              v22 = [getLocalUrl URLByAppendingPathComponent:v21];
              v23 = [v22 URLByAppendingPathComponent:@"mini.json"];

              v38 = v6;
              v24 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v23 options:0 error:&v38];
              v25 = v38;

              if (v24)
              {
                v37 = v25;
                v26 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v24 options:0 error:&v37];
                v6 = v37;

                if (v26)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v28 = vm_framework_log();
                    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_2721BA000, v28, OS_LOG_TYPE_DEFAULT, "Found appropriate JSON object in asset", buf, 2u);
                    }

                    v29 = vm_framework_log();
                    v5 = v34;
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = v33;
                      v44 = v26;
                      _os_log_impl(&dword_2721BA000, v29, OS_LOG_TYPE_DEFAULT, "Found metadata for speech asset: %@", buf, 0xCu);
                    }

                    goto LABEL_42;
                  }
                }

                v27 = vm_framework_log();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v44 = v6;
                  v45 = 2112;
                  v46 = v26;
                  _os_log_error_impl(&dword_2721BA000, v27, OS_LOG_TYPE_ERROR, "Did not find a JSON object in asset, error %@. Did find %@", buf, 0x16u);
                }

                languageCopy = v35;
              }

              else
              {
                v24 = vm_framework_log();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  *buf = v33;
                  v44 = v25;
                  _os_log_error_impl(&dword_2721BA000, v24, OS_LOG_TYPE_ERROR, "Skipping asset, no JSON data found file error %@", buf, 0xCu);
                }

                v6 = v25;
              }
            }
          }
        }

        v14 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = v34;
  }

  v29 = vm_framework_log();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    [VMConfiguration metadataDictionaryForSpeechAssetWithLanguage:v29];
  }

  v26 = 0;
LABEL_42:

  v30 = v26;
  v31 = *MEMORY[0x277D85DE8];
  return v26;
}

+ (void)confidenceThresholdFromAssetForKey:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2721BA000, a2, OS_LOG_TYPE_ERROR, "Confidence threshold failed a sanity check: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end