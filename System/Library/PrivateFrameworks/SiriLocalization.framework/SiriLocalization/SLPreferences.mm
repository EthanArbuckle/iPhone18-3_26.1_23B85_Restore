@interface SLPreferences
+ (id)allSupportedLocales;
+ (id)builtInHorsemanLanguages;
+ (id)builtInLocales;
+ (id)builtInMultiUserLanguages;
+ (id)builtInVisionLanguages;
+ (id)builtInZeusLanguages;
+ (id)builtIniOSLanguages;
+ (id)configValueForKey:(id)a3;
+ (id)internalLocales;
+ (id)valueForKeyWithContext:(__CFString *)a3 withDomain:(__CFString *)a4;
@end

@implementation SLPreferences

+ (id)allSupportedLocales
{
  if (allSupportedLocales_onceToken != -1)
  {
    dispatch_once(&allSupportedLocales_onceToken, &__block_literal_global_7);
  }

  v3 = allSupportedLocales_sAllCodes;

  return v3;
}

void __36__SLPreferences_allSupportedLocales__block_invoke()
{
  v0 = +[SLPreferences builtInLocales];
  v1 = allSupportedLocales_sAllCodes;
  allSupportedLocales_sAllCodes = v0;

  v4 = +[SLPreferences internalLocales];
  v2 = [allSupportedLocales_sAllCodes setByAddingObjectsFromSet:v4];
  v3 = allSupportedLocales_sAllCodes;
  allSupportedLocales_sAllCodes = v2;
}

+ (id)builtInLocales
{
  if (builtInLocales_onceToken != -1)
  {
    dispatch_once(&builtInLocales_onceToken, &__block_literal_global);
  }

  v3 = builtInLocales_sStaticLanguages;

  return v3;
}

void __31__SLPreferences_builtInLocales__block_invoke()
{
  v27 = *MEMORY[0x277D85DE8];
  if (+[SFPlatform isAppleTV])
  {
    v0 = +[SLPreferences builtInZeusLanguages];
  }

  else if (+[SFPlatform isHorseman])
  {
    v0 = +[SLPreferences builtInHorsemanLanguages];
  }

  else
  {
    if (+[SFPlatform isVision])
    {
      +[SLPreferences builtInVisionLanguages];
    }

    else
    {
      +[SLPreferences builtIniOSLanguages];
    }
    v0 = ;
  }

  v1 = v0;
  v2 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v19;
    *&v5 = 136315394;
    v17 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:{v9, v17, v18}];
        v11 = SLLogContext;
        if (!v10 && os_log_type_enabled(SLLogContext, OS_LOG_TYPE_FAULT))
        {
          *buf = v17;
          v23 = "+[SLPreferences builtInLocales]_block_invoke";
          v24 = 2112;
          v25 = v9;
          _os_log_fault_impl(&dword_2675BB000, v11, OS_LOG_TYPE_FAULT, "%s Could not create NSLocale with identifier: %@", buf, 0x16u);
          v11 = SLLogContext;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = v11;
          v13 = [v10 languageCode];
          *buf = v17;
          v23 = "+[SLPreferences builtInLocales]_block_invoke";
          v24 = 2112;
          v25 = v13;
          _os_log_debug_impl(&dword_2675BB000, v12, OS_LOG_TYPE_DEBUG, "%s Adding language '%@' to built in locale codes", buf, 0x16u);
        }

        [v2 addObject:v10];
      }

      v6 = [v3 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v6);
  }

  v14 = [MEMORY[0x277CBEB98] setWithSet:v2];
  v15 = builtInLocales_sStaticLanguages;
  builtInLocales_sStaticLanguages = v14;

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)internalLocales
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = [SLPreferences backedUpPreferencesValueForKey:@"Additional Languages"];
  v3 = [SLPreferences configValueForKey:@"Additional Languages"];
  if ([v2 count] || objc_msgSend(v3, "count"))
  {
    v4 = objc_opt_new();
    v23 = v3;
    v24 = v2;
    if (v3)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v5 = v3;
      v6 = [v5 countByEnumeratingWithState:&v29 objects:v38 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v30;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v30 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v29 + 1) + 8 * i);
            v11 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:{v10, v23, v24}];
            if (v11)
            {
              [v4 addObject:v11];
            }

            else
            {
              v12 = SLLogContext;
              if (os_log_type_enabled(SLLogContext, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v35 = "+[SLPreferences internalLocales]";
                v36 = 2112;
                v37 = v10;
                _os_log_error_impl(&dword_2675BB000, v12, OS_LOG_TYPE_ERROR, "%s Could not create NSLocale with identifier: %@", buf, 0x16u);
              }
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v29 objects:v38 count:16];
        }

        while (v7);
      }

      v3 = v23;
      v2 = v24;
    }

    if (v2)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v13 = v2;
      v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v26;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v26 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v25 + 1) + 8 * j);
            v19 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:{v18, v23, v24}];
            if (v19)
            {
              [v4 addObject:v19];
            }

            else
            {
              v20 = SLLogContext;
              if (os_log_type_enabled(SLLogContext, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v35 = "+[SLPreferences internalLocales]";
                v36 = 2112;
                v37 = v18;
                _os_log_error_impl(&dword_2675BB000, v20, OS_LOG_TYPE_ERROR, "%s Could not create NSLocale with identifier: %@", buf, 0x16u);
              }
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
        }

        while (v15);
      }

      v3 = v23;
      v2 = v24;
    }
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] set];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)builtIniOSLanguages
{
  v5[42] = *MEMORY[0x277D85DE8];
  v5[0] = @"en-US";
  v5[1] = @"de-DE";
  v5[2] = @"de-CH";
  v5[3] = @"en-AU";
  v5[4] = @"en-GB";
  v5[5] = @"en-CA";
  v5[6] = @"en-SG";
  v5[7] = @"es-ES";
  v5[8] = @"es-MX";
  v5[9] = @"es-US";
  v5[10] = @"fr-FR";
  v5[11] = @"fr-CA";
  v5[12] = @"fr-CH";
  v5[13] = @"it-IT";
  v5[14] = @"it-CH";
  v5[15] = @"ja-JP";
  v5[16] = @"ko-KR";
  v5[17] = @"zh-CN";
  v5[18] = @"zh-TW";
  v5[19] = @"zh-HK";
  v5[20] = @"pt-BR";
  v5[21] = @"da-DK";
  v5[22] = @"nl-NL";
  v5[23] = @"en-NZ";
  v5[24] = @"en-IN";
  v5[25] = @"ru-RU";
  v5[26] = @"sv-SE";
  v5[27] = @"th-TH";
  v5[28] = @"tr-TR";
  v5[29] = @"nb-NO";
  v5[30] = @"de-AT";
  v5[31] = @"fr-BE";
  v5[32] = @"nl-BE";
  v5[33] = @"ar-SA";
  v5[34] = @"fi-FI";
  v5[35] = @"he-IL";
  v5[36] = @"ms-MY";
  v5[37] = @"es-CL";
  v5[38] = @"en-ZA";
  v5[39] = @"yue-CN";
  v5[40] = @"en-IE";
  v5[41] = @"vi-VN";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:42];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)builtInVisionLanguages
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"en-US";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)builtInHorsemanLanguages
{
  v5[39] = *MEMORY[0x277D85DE8];
  v5[0] = @"en-US";
  v5[1] = @"en-GB";
  v5[2] = @"en-AU";
  v5[3] = @"en-CA";
  v5[4] = @"fr-FR";
  v5[5] = @"de-DE";
  v5[6] = @"fr-CA";
  v5[7] = @"es-US";
  v5[8] = @"es-MX";
  v5[9] = @"es-ES";
  v5[10] = @"zh-CN";
  v5[11] = @"yue-CN";
  v5[12] = @"zh-HK";
  v5[13] = @"ja-JP";
  v5[14] = @"zh-TW";
  v5[15] = @"en-IN";
  v5[16] = @"en-IE";
  v5[17] = @"en-NZ";
  v5[18] = @"de-AT";
  v5[19] = @"it-IT";
  v5[20] = @"ru-RU";
  v5[21] = @"nl-NL";
  v5[22] = @"nl-BE";
  v5[23] = @"fr-BE";
  v5[24] = @"fr-CH";
  v5[25] = @"de-CH";
  v5[26] = @"it-CH";
  v5[27] = @"nb-NO";
  v5[28] = @"sv-SE";
  v5[29] = @"en-ZA";
  v5[30] = @"es-CL";
  v5[31] = @"fi-FI";
  v5[32] = @"en-SG";
  v5[33] = @"da-DK";
  v5[34] = @"he-IL";
  v5[35] = @"th-TH";
  v5[36] = @"ar-SA";
  v5[37] = @"tr-TR";
  v5[38] = @"ms-MY";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:39];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)builtInZeusLanguages
{
  v5[39] = *MEMORY[0x277D85DE8];
  v5[0] = @"en-US";
  v5[1] = @"de-DE";
  v5[2] = @"en-AU";
  v5[3] = @"en-CA";
  v5[4] = @"en-GB";
  v5[5] = @"es-ES";
  v5[6] = @"es-MX";
  v5[7] = @"es-US";
  v5[8] = @"fr-CA";
  v5[9] = @"fr-FR";
  v5[10] = @"ja-JP";
  v5[11] = @"nb-NO";
  v5[12] = @"nl-NL";
  v5[13] = @"pt-BR";
  v5[14] = @"sv-SE";
  v5[15] = @"en-IE";
  v5[16] = @"en-NZ";
  v5[17] = @"de-AT";
  v5[18] = @"en-IN";
  v5[19] = @"ko-KR";
  v5[20] = @"it-IT";
  v5[21] = @"zh-HK";
  v5[22] = @"zh-TW";
  v5[23] = @"ru-RU";
  v5[24] = @"fr-BE";
  v5[25] = @"nl-BE";
  v5[26] = @"fr-CH";
  v5[27] = @"de-CH";
  v5[28] = @"it-CH";
  v5[29] = @"es-CL";
  v5[30] = @"en-ZA";
  v5[31] = @"fi-FI";
  v5[32] = @"en-SG";
  v5[33] = @"da-DK";
  v5[34] = @"he-IL";
  v5[35] = @"th-TH";
  v5[36] = @"ar-SA";
  v5[37] = @"tr-TR";
  v5[38] = @"ms-MY";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:39];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)builtInMultiUserLanguages
{
  v65 = *MEMORY[0x277D85DE8];
  if (+[SFPlatform isAppleTV](SFPlatform, "isAppleTV") && +[SFFeatureFlags isLassoEnabled])
  {
    v47 = @"en-AU";
    v48 = @"en-CA";
    v49 = @"en-GB";
    v50 = @"en-IE";
    v51 = @"en-IN";
    v52 = @"en-NZ";
    v53 = @"es-MX";
    v54 = @"es-US";
    v55 = @"es-ES";
    v56 = @"de-DE";
    v57 = @"de-AT";
    v58 = @"de-CH";
    v59 = @"fr-FR";
    v60 = @"fr-CA";
    v61 = @"fr-CH";
    v62 = @"ja-JP";
    v63 = @"zh-HK";
    v64 = @"en-US";
    v2 = MEMORY[0x277CBEA60];
    v3 = &v47;
    v4 = 18;
  }

  else
  {
    v8 = @"en-US";
    v9 = @"en-GB";
    v10 = @"en-AU";
    v11 = @"en-CA";
    v12 = @"en-IE";
    v13 = @"en-NZ";
    v14 = @"fr-FR";
    v15 = @"fr-CA";
    v16 = @"es-MX";
    v17 = @"es-US";
    v18 = @"es-ES";
    v19 = @"de-DE";
    v20 = @"de-AT";
    v21 = @"fr-CH";
    v22 = @"de-CH";
    v23 = @"en-IN";
    v24 = @"it-CH";
    v25 = @"it-IT";
    v26 = @"ru-RU";
    v27 = @"fr-BE";
    v28 = @"nl-BE";
    v29 = @"nl-NL";
    v30 = @"nb-NO";
    v31 = @"sv-SE";
    v32 = @"zh-CN";
    v33 = @"yue-CN";
    v34 = @"zh-HK";
    v35 = @"zh-TW";
    v36 = @"ja-JP";
    v37 = @"en-ZA";
    v38 = @"es-CL";
    v39 = @"fi-FI";
    v40 = @"en-SG";
    v41 = @"da-DK";
    v42 = @"he-IL";
    v43 = @"th-TH";
    v44 = @"ar-SA";
    v45 = @"tr-TR";
    v46 = @"ms-MY";
    v2 = MEMORY[0x277CBEA60];
    v3 = &v8;
    v4 = 39;
  }

  v5 = [v2 arrayWithObjects:v3 count:{v4, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64}];
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)valueForKeyWithContext:(__CFString *)a3 withDomain:(__CFString *)a4
{
  v4 = CFPreferencesCopyAppValue(a3, a4);

  return v4;
}

+ (id)configValueForKey:(id)a3
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = a3;
  v5 = +[SFPlatform systemRootDirectory];
  v6 = [v5 stringByAppendingPathComponent:@"AppleInternal/Library/Assistant/InternalConfig.plist"];
  v7 = [v3 fileURLWithPath:v6];

  v8 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v7];
  v9 = [v8 objectForKey:v4];

  return v9;
}

@end