@interface _LTTranslationStatistics(Daemon)
+ (id)statisticsWithEngineMeta:()Daemon locale:;
+ (uint64_t)_countWithTokenString:()Daemon countCharacters:;
- (void)copyWithZone:()Daemon;
@end

@implementation _LTTranslationStatistics(Daemon)

+ (uint64_t)_countWithTokenString:()Daemon countCharacters:
{
  if (a4)
  {
    _ltRemoveAllWhitespaces = [a3 _ltRemoveAllWhitespaces];
    v5 = [_ltRemoveAllWhitespaces length];
  }

  else
  {
    _ltRemoveAllWhitespaces = [a3 _ltTrimWhitespaces];
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v7 = [_ltRemoveAllWhitespaces componentsSeparatedByCharactersInSet:whitespaceCharacterSet];
    v5 = [v7 count];
  }

  return v5;
}

+ (id)statisticsWithEngineMeta:()Daemon locale:
{
  v6 = a3;
  v7 = MEMORY[0x277CE1C30];
  v8 = a4;
  v9 = objc_alloc_init(v7);
  IsCharacterBasedLocale = _LTPreferencesIsCharacterBasedLocale(v8);

  v11 = [v6 objectForKeyedSubscript:@"firstleg sentencepiece encoder input"];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [v6 objectForKeyedSubscript:@"sentencepiece encoder input"];
  }

  v14 = v13;

  if ([v14 length])
  {
    [v9 setInputTokenCount:{objc_msgSend(self, "_countWithTokenString:countCharacters:", v14, IsCharacterBasedLocale)}];
  }

  v15 = [v6 objectForKeyedSubscript:@"firstleg sentencepiece decoder output"];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = [v6 objectForKeyedSubscript:@"sentencepiece decoder output"];
  }

  v18 = v17;

  if ([v18 length])
  {
    [v9 setInputSubtokenCount:{objc_msgSend(self, "_countWithTokenString:countCharacters:", v18, IsCharacterBasedLocale)}];
  }

  return v9;
}

- (void)copyWithZone:()Daemon
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setInputTokenCount:{objc_msgSend(self, "inputTokenCount")}];
  [v4 setInputSubtokenCount:{objc_msgSend(self, "inputSubtokenCount")}];
  return v4;
}

@end