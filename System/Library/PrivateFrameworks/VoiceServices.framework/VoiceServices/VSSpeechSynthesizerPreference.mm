@interface VSSpeechSynthesizerPreference
+ (id)availableLanguages;
+ (id)fallbackLanguageForLanguage:(id)language;
@end

@implementation VSSpeechSynthesizerPreference

+ (id)fallbackLanguageForLanguage:(id)language
{
  v4 = [language stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
  availableLanguages = [self availableLanguages];
  v6 = [availableLanguages containsObject:v4];

  if (v6)
  {
    v7 = v4;
LABEL_7:
    v9 = v7;
    goto LABEL_8;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__VSSpeechSynthesizerPreference_fallbackLanguageForLanguage___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (fallbackLanguageForLanguage__onceToken != -1)
  {
    dispatch_once(&fallbackLanguageForLanguage__onceToken, block);
  }

  v8 = [fallbackLanguageForLanguage__fallbacks objectForKeyedSubscript:v4];

  if (v8)
  {
    v7 = [fallbackLanguageForLanguage__fallbacks objectForKeyedSubscript:v4];
    goto LABEL_7;
  }

  v11 = [v4 rangeOfString:@"-"];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [v4 substringWithRange:{0, v11}];
    if (v12)
    {
      v13 = [fallbackLanguageForLanguage__fallbacks objectForKeyedSubscript:v12];

      if (v13)
      {
        v9 = [fallbackLanguageForLanguage__fallbacks objectForKeyedSubscript:v12];

        goto LABEL_8;
      }
    }
  }

  v9 = @"en-US";
LABEL_8:

  return v9;
}

void __61__VSSpeechSynthesizerPreference_fallbackLanguageForLanguage___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v2 pathForResource:@"tts_language_fallbacks" ofType:@"plist"];

  v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v5];
  v4 = fallbackLanguageForLanguage__fallbacks;
  fallbackLanguageForLanguage__fallbacks = v3;
}

+ (id)availableLanguages
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__VSSpeechSynthesizerPreference_availableLanguages__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (availableLanguages_onceToken != -1)
  {
    dispatch_once(&availableLanguages_onceToken, block);
  }

  v2 = availableLanguages__availableLanguages;

  return v2;
}

void __51__VSSpeechSynthesizerPreference_availableLanguages__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v2 pathForResource:@"tts_languages" ofType:@"plist"];

  v3 = [MEMORY[0x277CBEA60] arrayWithContentsOfFile:v6];
  v4 = [MEMORY[0x277CBEB98] setWithArray:v3];
  v5 = availableLanguages__availableLanguages;
  availableLanguages__availableLanguages = v4;
}

@end