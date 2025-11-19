@interface _LTTranslationCandidate(Daemon)
- (void)initWithFormattedString:()Daemon sanitizedFormattedString:confidence:lowConfidence:romanization:tokens:preToPostITN:;
- (void)initWithFormattedString:()Daemon sanitizedFormattedString:confidence:lowConfidence:romanization:tokens:preToPostITN:stableString:;
- (void)updateWithEngineMeta:()Daemon locale:;
@end

@implementation _LTTranslationCandidate(Daemon)

- (void)initWithFormattedString:()Daemon sanitizedFormattedString:confidence:lowConfidence:romanization:tokens:preToPostITN:
{
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v25.receiver = a1;
  v25.super_class = &off_284890220;
  v21 = objc_msgSendSuper2(&v25, sel_init);
  v22 = v21;
  if (v21)
  {
    [v21 setFormattedString:v16];
    [v22 setSanitizedFormattedString:v17];
    [v22 setConfidence:a2];
    [v22 setLowConfidence:a6];
    [v22 setPreToPostITN:v20];
    [v22 setTokens:v19];
    [v22 setRomanization:v18];
    [v22 setStableString:0];
    v23 = v22;
  }

  return v22;
}

- (void)initWithFormattedString:()Daemon sanitizedFormattedString:confidence:lowConfidence:romanization:tokens:preToPostITN:stableString:
{
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v27.receiver = a1;
  v27.super_class = &off_284890220;
  v23 = objc_msgSendSuper2(&v27, sel_init);
  v24 = v23;
  if (v23)
  {
    [v23 setFormattedString:v17];
    [v24 setSanitizedFormattedString:v18];
    [v24 setConfidence:a2];
    [v24 setLowConfidence:a6];
    [v24 setPreToPostITN:v21];
    [v24 setTokens:v20];
    [v24 setRomanization:v19];
    [v24 setStableString:v22];
    v25 = v24;
  }

  return v24;
}

- (void)updateWithEngineMeta:()Daemon locale:
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v8 = [v6 dataUsingEncoding:4];
    v29 = 0;
    v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:0 error:&v29];
    v10 = v29;
    v11 = _LTOSLogTranslationEngine();
    v12 = v11;
    if (!v9)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [_LTTranslationCandidate(Daemon) updateWithEngineMeta:v10 locale:v12];
      }

      goto LABEL_26;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [_LTTranslationCandidate(Daemon) updateWithEngineMeta:v9 locale:v12];
    }

    v13 = [MEMORY[0x277CE1C30] statisticsWithEngineMeta:v9 locale:v7];
    [a1 setStatistics:v13];

    v14 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v15 = [v14 BOOLForKey:@"DisambiguationEnabled"];

    if ((v15 & 1) == 0)
    {
      v18 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *v28 = 0;
        _os_log_impl(&dword_232E53000, v18, OS_LOG_TYPE_INFO, "Skipping loading sense data from meta because it's disabled in user defaults", v28, 2u);
      }

      [a1 setSenses:0];
      goto LABEL_26;
    }

    v16 = [v9 objectForKeyedSubscript:@"senses"];
    if (v16)
    {
      v17 = [MEMORY[0x277CE1C20] sensesFromArray:v16];
    }

    else
    {
      v19 = [v9 objectForKeyedSubscript:@"status"];
      v20 = [v19 isEqualToString:@"phrasebook_exact"];

      if (!v20)
      {
LABEL_16:
        v22 = [v9 objectForKeyedSubscript:@"gender_alternatives"];
        if (v22)
        {
          v23 = [MEMORY[0x277CE1C08] genderAlternativesFromDictionary:v22];
          [a1 setGenderAlternatives:v23];
        }

        v24 = [v9 objectForKeyedSubscript:@"romanization"];
        v25 = [a1 sanitizedFormattedString];
        if (!v25 && v24 && [v24 length])
        {
          v26 = [a1 romanization];

          if (!v26)
          {
            [a1 setRomanization:v24];
            v27 = _LTOSLogTranslationEngine();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              [_LTTranslationCandidate(Daemon) updateWithEngineMeta:v27 locale:a1];
            }
          }
        }

        else
        {
        }

LABEL_26:
        goto LABEL_27;
      }

      v17 = [MEMORY[0x277CE1C20] senseWithPhrasebookMatchMeta:v9];
    }

    v21 = v17;
    [a1 setSenses:v17];

    goto LABEL_16;
  }

LABEL_27:
}

- (void)updateWithEngineMeta:()Daemon locale:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_232E53000, a2, OS_LOG_TYPE_DEBUG, "Translation candidate meta: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)updateWithEngineMeta:()Daemon locale:.cold.2(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 romanization];
  v6 = 138739971;
  v7 = v4;
  _os_log_debug_impl(&dword_232E53000, v3, OS_LOG_TYPE_DEBUG, "Setting romanization from meta JSON string: %{sensitive}@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateWithEngineMeta:()Daemon locale:.cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_232E53000, a2, OS_LOG_TYPE_ERROR, "Skipping meta, failed to parse as JSON: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end