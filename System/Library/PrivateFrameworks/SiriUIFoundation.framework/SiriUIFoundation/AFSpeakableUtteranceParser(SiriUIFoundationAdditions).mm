@interface AFSpeakableUtteranceParser(SiriUIFoundationAdditions)
+ (id)_domainsForStringWithFormat:()SiriUIFoundationAdditions;
+ (id)sruif_speakableUtteranceParserForCurrentLanguage;
- (id)_builtInDomains;
- (uint64_t)sruif_hasExternalDomainsForStringWithFormat:()SiriUIFoundationAdditions shouldRedactLog:;
@end

@implementation AFSpeakableUtteranceParser(SiriUIFoundationAdditions)

+ (id)sruif_speakableUtteranceParserForCurrentLanguage
{
  v0 = objc_alloc(MEMORY[0x277CBEAF8]);
  v1 = SRUIFGetLanguageCode();
  v2 = [v0 initWithLocaleIdentifier:v1];

  v3 = [objc_alloc(MEMORY[0x277CEF430]) initWithLocale:v2];

  return v3;
}

- (uint64_t)sruif_hasExternalDomainsForStringWithFormat:()SiriUIFoundationAdditions shouldRedactLog:
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [objc_opt_class() _domainsForStringWithFormat:v6];
  if (v7)
  {
    _builtInDomains = [self _builtInDomains];
    v9 = [v7 isSubsetOfSet:_builtInDomains] ^ 1;
  }

  else
  {
    v9 = 1;
  }

  v10 = *MEMORY[0x277CEF098];
  v11 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO);
  if (a4)
  {
    if (v11)
    {
      v15 = 136315651;
      v16 = "[AFSpeakableUtteranceParser(SiriUIFoundationAdditions) sruif_hasExternalDomainsForStringWithFormat:shouldRedactLog:]";
      v17 = 2117;
      v18 = v6;
      v19 = 1024;
      v20 = v9;
      v12 = "%s Format string: %{sensitive}@ has external domains: %d";
LABEL_9:
      _os_log_impl(&dword_26951F000, v10, OS_LOG_TYPE_INFO, v12, &v15, 0x1Cu);
    }
  }

  else if (v11)
  {
    v15 = 136315650;
    v16 = "[AFSpeakableUtteranceParser(SiriUIFoundationAdditions) sruif_hasExternalDomainsForStringWithFormat:shouldRedactLog:]";
    v17 = 2112;
    v18 = v6;
    v19 = 1024;
    v20 = v9;
    v12 = "%s Format string: %@ has external domains: %d";
    goto LABEL_9;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)_builtInDomains
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if ([self handleTTSCodes])
  {
    [v2 addObject:@"tts"];
  }

  if ([self handlesFunctions])
  {
    [v2 addObject:@"fn"];
  }

  return v2;
}

+ (id)_domainsForStringWithFormat:()SiriUIFoundationAdditions
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__2;
  v24[4] = __Block_byref_object_dispose__2;
  v25 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v5 = [v3 length];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __85__AFSpeakableUtteranceParser_SiriUIFoundationAdditions___domainsForStringWithFormat___block_invoke;
  v11[3] = &unk_279C62610;
  v13 = &v20;
  v14 = &v16;
  v15 = v24;
  v6 = v4;
  v12 = v6;
  [v3 enumerateSubstringsInRange:0 options:v5 usingBlock:{2, v11}];
  if ((v21[3] & 1) != 0 || *(v17 + 24) == 1)
  {

    v7 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(AFSpeakableUtteranceParser(SiriUIFoundationAdditions) *)v3 _domainsForStringWithFormat:v7];
    }

    v6 = 0;
  }

  v8 = v12;
  v9 = v6;

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(v24, 8);

  return v9;
}

+ (void)_domainsForStringWithFormat:()SiriUIFoundationAdditions .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "+[AFSpeakableUtteranceParser(SiriUIFoundationAdditions) _domainsForStringWithFormat:]";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_26951F000, a2, OS_LOG_TYPE_ERROR, "%s Malformed parse for format string: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end