@interface TPSSiriLanguageValidation
- (TPSSiriLanguageValidation)initWithTargetLanguages:(id)a3 excludeLanguages:(id)a4;
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSSiriLanguageValidation

- (TPSSiriLanguageValidation)initWithTargetLanguages:(id)a3 excludeLanguages:(id)a4
{
  v6 = a4;
  v7 = [a3 valueForKeyPath:@"lowercaseString"];
  v8 = [v6 valueForKeyPath:@"lowercaseString"];

  v11.receiver = self;
  v11.super_class = TPSSiriLanguageValidation;
  v9 = [(TPSInclusivityValidation *)&v11 initWithTargetValues:v7 excludeValues:v8];

  return v9;
}

- (void)validateWithCompletion:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TPSSiriLanguageValidation *)self targetLanguages];
  if ([v5 count])
  {

    goto LABEL_4;
  }

  v6 = [(TPSSiriLanguageValidation *)self excludeLanguages];
  v7 = [v6 count];

  if (v7)
  {
LABEL_4:
    if (AFAssistantRestricted())
    {
      v8 = 0;
    }

    else
    {
      v9 = [MEMORY[0x277CEF368] sharedPreferences];
      v10 = [v9 languageCode];
      v8 = [v10 lowercaseString];

      if ([v8 length])
      {
        v11 = [(TPSSiriLanguageValidation *)self targetLanguages];
        if ([v11 count])
        {
          v12 = [(TPSSiriLanguageValidation *)self targetLanguages];
          v13 = [v12 containsObject:v8];
        }

        else
        {
          v13 = 1;
        }

        v15 = [(TPSSiriLanguageValidation *)self excludeLanguages];
        v16 = [v15 containsObject:v8];

        v14 = v13 & (v16 ^ 1u);
LABEL_15:
        v17 = [MEMORY[0x277D71778] targeting];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v19 = objc_opt_class();
          v20 = v19;
          v21 = [(TPSSiriLanguageValidation *)self targetLanguages];
          v22 = [v21 componentsJoinedByString:{@", "}];
          v23 = [(TPSSiriLanguageValidation *)self excludeLanguages];
          v24 = [v23 componentsJoinedByString:{@", "}];
          v25 = 138413314;
          v26 = v19;
          v27 = 2112;
          v28 = v8;
          v29 = 2112;
          v30 = v22;
          v31 = 2112;
          v32 = v24;
          v33 = 1024;
          v34 = v14;
          _os_log_debug_impl(&dword_232D6F000, v17, OS_LOG_TYPE_DEBUG, "%@ - checking Siri Language: %@, target languages: %@, exclude languages: %@. Valid: %d", &v25, 0x30u);
        }

        goto LABEL_18;
      }
    }

    v14 = 0;
    goto LABEL_15;
  }

  v8 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(TPSRegionsValidation *)self validateWithCompletion:v8];
  }

  v14 = 1;
LABEL_18:

  v4[2](v4, v14, 0);
  v18 = *MEMORY[0x277D85DE8];
}

@end