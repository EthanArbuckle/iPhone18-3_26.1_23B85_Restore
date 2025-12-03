@interface SCRCPunctuationVerboseness
+ (id)punctuationDictionaryForLevel:(int64_t)level;
+ (id)punctuationKeyForString:(id)string;
+ (id)userExposedPunctuationCharacters;
+ (id)verbosenessDictionaryForLevel:(int64_t)level;
@end

@implementation SCRCPunctuationVerboseness

+ (id)punctuationKeyForString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%04hx", objc_msgSend(stringCopy, "characterAtIndex:", 0)];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)punctuationDictionaryForLevel:(int64_t)level
{
  if (level > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_279B71650[level];
  }

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = MEMORY[0x277CBEAC0];
  v6 = [v4 URLForResource:v3 withExtension:@"scrconfig"];
  v7 = [v5 dictionaryWithContentsOfURL:v6];

  return v7;
}

+ (id)userExposedPunctuationCharacters
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SCRCPunctuationVerboseness_userExposedPunctuationCharacters__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (userExposedPunctuationCharacters_onceToken != -1)
  {
    dispatch_once(&userExposedPunctuationCharacters_onceToken, block);
  }

  v2 = userExposedPunctuationCharacters_Keys;

  return v2;
}

void __62__SCRCPunctuationVerboseness_userExposedPunctuationCharacters__block_invoke()
{
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v0 = MEMORY[0x277CBEAC0];
  v1 = [v5 URLForResource:@"SCRCPunctuation_UserExposed" withExtension:@"scrconfig"];
  v2 = [v0 dictionaryWithContentsOfURL:v1];
  v3 = [v2 allKeys];
  v4 = userExposedPunctuationCharacters_Keys;
  userExposedPunctuationCharacters_Keys = v3;
}

+ (id)verbosenessDictionaryForLevel:(int64_t)level
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SCRCPunctuationVerboseness_verbosenessDictionaryForLevel___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (verbosenessDictionaryForLevel__once != -1)
  {
    dispatch_once(&verbosenessDictionaryForLevel__once, block);
  }

  v4 = verbosenessDictionaryForLevel__verbosenessDictionariesForLevels;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:level];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

void __60__SCRCPunctuationVerboseness_verbosenessDictionaryForLevel___block_invoke(uint64_t a1)
{
  v11 = [MEMORY[0x277CBEB38] dictionary];
  v2 = [*(a1 + 32) punctuationDictionaryForLevel:2];
  v3 = [*(a1 + 32) punctuationDictionaryForLevel:1];
  v4 = [*(a1 + 32) punctuationDictionaryForLevel:0];
  [v11 setObject:v2 forKeyedSubscript:&unk_28763AB98];
  v5 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v2];
  [v5 addEntriesFromDictionary:v3];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v5];
  [v11 setObject:v6 forKeyedSubscript:&unk_28763ABB0];

  v7 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v5];
  [v7 addEntriesFromDictionary:v4];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v7];
  [v11 setObject:v8 forKeyedSubscript:&unk_28763ABC8];

  v9 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v11];
  v10 = verbosenessDictionaryForLevel__verbosenessDictionariesForLevels;
  verbosenessDictionaryForLevel__verbosenessDictionariesForLevels = v9;
}

@end