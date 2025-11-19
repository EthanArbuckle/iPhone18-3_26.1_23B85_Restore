@interface VSLocalizedString
+ (id)appendRandomizationKey:(id)a3 withCount:(int)a4;
+ (id)localizedInterstitialStringForKey:(id)a3 language:(id)a4;
+ (id)localizedStringForKey:(id)a3 language:(id)a4 table:(id)a5;
+ (id)predefinedStringForKey:(id)a3 language:(id)a4 table:(id)a5;
@end

@implementation VSLocalizedString

+ (id)localizedInterstitialStringForKey:(id)a3 language:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 == @"VOICE_SERVICES_NETWORK_STALL")
  {
    v6 = [a1 appendRandomizationKey:@"VOICE_SERVICES_NETWORK_STALL" withCount:3];
  }

  v8 = [a1 localizedStringForKey:v6 language:v7 table:@"Interstitials"];

  return v8;
}

+ (id)appendRandomizationKey:(id)a3 withCount:(int)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%d", v5, (rand() % a4 + 1)];

  return v6;
}

+ (id)predefinedStringForKey:(id)a3 language:(id)a4 table:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = VSGetLogDefault();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v24 = 138412546;
    v25 = v8;
    v26 = 2114;
    v27 = v9;
    _os_log_impl(&dword_272850000, v11, OS_LOG_TYPE_INFO, "Searching predefined string for '%@' in '%{public}@'", &v24, 0x16u);
  }

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 pathForResource:v9 ofType:@"strings" inDirectory:v10];

  v14 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v13];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 objectForKeyedSubscript:v8];

    if (v16)
    {
      v17 = [v15 objectForKeyedSubscript:v8];
LABEL_13:
      v21 = v17;
      goto LABEL_14;
    }
  }

  v18 = [v9 isEqualToString:@"en-US"];
  v19 = VSGetLogDefault();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
  if ((v18 & 1) == 0)
  {
    if (v20)
    {
      v24 = 138543618;
      v25 = v9;
      v26 = 2112;
      v27 = v8;
      _os_log_error_impl(&dword_272850000, v19, OS_LOG_TYPE_ERROR, "Unable to find '%{public}@' predefined string for key '%@', return default en-US string", &v24, 0x16u);
    }

    v17 = [a1 predefinedStringForKey:v8 language:@"en-US" table:v10];
    goto LABEL_13;
  }

  if (v20)
  {
    v24 = 138543618;
    v25 = v9;
    v26 = 2112;
    v27 = v8;
    _os_log_error_impl(&dword_272850000, v19, OS_LOG_TYPE_ERROR, "Unable to find '%{public}@' predefined string for key '%@', return empty string", &v24, 0x16u);
  }

  v21 = &stru_2881D71A8;
LABEL_14:

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)localizedStringForKey:(id)a3 language:(id)a4 table:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v35 = a5;
  v9 = VSGetLogDefault();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v43 = v7;
    v44 = 2114;
    v45 = v8;
    _os_log_impl(&dword_272850000, v9, OS_LOG_TYPE_INFO, "Localize for '%@' in '%{public}@'", buf, 0x16u);
  }

  v34 = v7;
  v33 = [v7 stringByAppendingString:@"_MALE"];
  v10 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/VoiceServices.framework/"];
  v11 = MEMORY[0x277CCA8D8];
  v12 = [v10 localizations];
  v32 = v8;
  v41 = v8;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
  v14 = [v11 preferredLocalizationsFromArray:v12 forPreferences:v13];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v16)
  {
    goto LABEL_13;
  }

  v17 = v16;
  v18 = *v37;
  while (2)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v37 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = [v10 URLForResource:v35 withExtension:@"strings" subdirectory:0 localization:*(*(&v36 + 1) + 8 * i)];
      v21 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v20];
      v22 = v21;
      if (v21)
      {
        v23 = [v21 objectForKeyedSubscript:v34];

        if (v23)
        {
          v27 = v34;
          v28 = v34;
        }

        else
        {
          v24 = [v22 objectForKeyedSubscript:v33];

          if (!v24)
          {
            goto LABEL_11;
          }

          v28 = v33;
          v27 = v34;
        }

        v26 = [v22 objectForKeyedSubscript:v28];

        v25 = v15;
        goto LABEL_18;
      }

LABEL_11:
    }

    v17 = [v15 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v17)
    {
      continue;
    }

    break;
  }

LABEL_13:

  v25 = VSGetLogDefault();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v29 = v32;
    v43 = v32;
    v44 = 2112;
    v27 = v34;
    v45 = v34;
    _os_log_error_impl(&dword_272850000, v25, OS_LOG_TYPE_ERROR, "Unable to find '%{public}@' localized string for key '%@', return empty string", buf, 0x16u);
    v26 = &stru_2881D71A8;
  }

  else
  {
    v26 = &stru_2881D71A8;
    v27 = v34;
LABEL_18:
    v29 = v32;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v26;
}

@end