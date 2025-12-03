@interface _LTTranslationCandidate(Osprey)
- (id)initWithOspreyMtResponsePhrase:()Osprey locale:censorSpeech:;
- (id)initWithOspreyMtResponsePhrase:()Osprey locale:injectingGenderTranslation:genderInjectedMetaInfo:;
- (id)initWithOspreyPhrase:()Osprey;
- (void)updateWithMetaInfoData:()Osprey;
@end

@implementation _LTTranslationCandidate(Osprey)

- (id)initWithOspreyPhrase:()Osprey
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = &off_284890220;
  v5 = objc_msgSendSuper2(&v13, sel_init);
  if (v5)
  {
    [v4 confidence];
    [v5 setConfidence:v6];
    translated_tokens = [v4 translated_tokens];
    v8 = [translated_tokens _ltCompactMap:&__block_literal_global_32];
    [v5 setTokens:v8];

    lt_formattedString = [v4 lt_formattedString];
    [v5 setFormattedString:lt_formattedString];

    meta_info_data = [v4 meta_info_data];
    [v5 updateWithMetaInfoData:meta_info_data];

    v11 = v5;
  }

  return v5;
}

- (id)initWithOspreyMtResponsePhrase:()Osprey locale:censorSpeech:
{
  v8 = a3;
  v9 = a4;
  v20.receiver = self;
  v20.super_class = &off_284890220;
  v10 = objc_msgSendSuper2(&v20, sel_init);
  if (v10)
  {
    [v8 confidence];
    [v10 setConfidence:v11];
    translation_phrase = [v8 translation_phrase];
    [v10 setFormattedString:translation_phrase];

    if (a5)
    {
      v13 = MEMORY[0x277CE1BE8];
      formattedString = [v10 formattedString];
      LODWORD(v13) = [v13 stringContainsRedaction:formattedString];

      if (v13)
      {
        formattedString2 = [v10 formattedString];
        [v10 setSanitizedFormattedString:formattedString2];
      }
    }

    [v10 setLowConfidence:{objc_msgSend(v8, "low_confidence")}];
    meta_info_data = [v8 meta_info_data];
    [v10 updateWithMetaInfoData:meta_info_data];

    meta_info = [v8 meta_info];
    [v10 updateWithEngineMeta:meta_info locale:v9];

    v18 = v10;
  }

  return v10;
}

- (id)initWithOspreyMtResponsePhrase:()Osprey locale:injectingGenderTranslation:genderInjectedMetaInfo:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = &off_284890220;
  v14 = objc_msgSendSuper2(&v19, sel_init);
  if (v14)
  {
    [v10 confidence];
    [v14 setConfidence:v15];
    [v14 setFormattedString:v12];
    [v14 setLowConfidence:{objc_msgSend(v10, "low_confidence")}];
    meta_info_data = [v10 meta_info_data];
    [v14 updateWithMetaInfoData:meta_info_data];

    [v14 updateWithEngineMeta:v13 locale:v11];
    v17 = v14;
  }

  return v14;
}

- (void)updateWithMetaInfoData:()Osprey
{
  v4 = a3;
  sanitizedFormattedString = [self sanitizedFormattedString];

  if (!sanitizedFormattedString)
  {
    romanization = [v4 romanization];
    v7 = romanization;
    if (romanization && [romanization length])
    {
      [self setRomanization:v7];
      v8 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [(_LTTranslationCandidate(Osprey) *)v8 updateWithMetaInfoData:self];
      }
    }

    else
    {
      v9 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [_LTDisambiguationNode(Daemon) _nodeWithText:v9 links:? numberOfSelectionSpans:? romanization:?];
      }
    }
  }
}

- (void)updateWithMetaInfoData:()Osprey .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 romanization];
  v6 = 138739971;
  v7 = v4;
  _os_log_debug_impl(&dword_232E53000, v3, OS_LOG_TYPE_DEBUG, "Setting romanization from meta_info_data: %{sensitive}@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end