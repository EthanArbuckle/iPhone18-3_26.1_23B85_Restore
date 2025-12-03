@interface SAUIDisambiguationList(SiriUIFoundationAdditions)
- (BOOL)sruif_hasButton;
- (__CFString)_speakableFinalDelimiterForSpeakableString:()SiriUIFoundationAdditions usingParser:;
- (id)_speakableStringFromString:()SiriUIFoundationAdditions usingParser:;
- (id)sruif_combinedSpeakableText;
@end

@implementation SAUIDisambiguationList(SiriUIFoundationAdditions)

- (id)sruif_combinedSpeakableText
{
  string = [MEMORY[0x277CCAB68] string];
  sruif_speakableUtteranceParserForCurrentLanguage = [MEMORY[0x277CEF430] sruif_speakableUtteranceParserForCurrentLanguage];
  [sruif_speakableUtteranceParserForCurrentLanguage setHandleTTSCodes:1];
  speakableText = [self speakableText];
  v5 = [self _speakableStringFromString:speakableText usingParser:sruif_speakableUtteranceParserForCurrentLanguage];

  speakableDelimiter = [self speakableDelimiter];
  v7 = [self _speakableStringFromString:speakableDelimiter usingParser:sruif_speakableUtteranceParserForCurrentLanguage];

  speakableSuffix = [self speakableSuffix];
  v9 = [self _speakableStringFromString:speakableSuffix usingParser:sruif_speakableUtteranceParserForCurrentLanguage];

  if ([v5 length])
  {
    [string appendString:v5];
  }

  items = [self items];
  v11 = [items count];

  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 1;
  items2 = [self items];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __80__SAUIDisambiguationList_SiriUIFoundationAdditions__sruif_combinedSpeakableText__block_invoke;
  v22 = &unk_279C62A88;
  selfCopy = self;
  v13 = sruif_speakableUtteranceParserForCurrentLanguage;
  v24 = v13;
  v27 = v29;
  v28 = v11;
  v14 = string;
  v25 = v14;
  v15 = v7;
  v26 = v15;
  [items2 enumerateObjectsUsingBlock:&v19];

  if ([v9 length])
  {
    [v14 appendString:v9];
  }

  if ([v14 length])
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  _Block_object_dispose(v29, 8);

  return v17;
}

- (id)_speakableStringFromString:()SiriUIFoundationAdditions usingParser:
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    v7 = [v6 parseStringWithFormat:v5 error:0];
    v8 = [v7 copy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (__CFString)_speakableFinalDelimiterForSpeakableString:()SiriUIFoundationAdditions usingParser:
{
  v6 = a3;
  v7 = a4;
  v8 = SRUIFGetLanguageCode();
  if ([v8 hasPrefix:@"es"])
  {
    if (FirstCharacterOfStringIsInCharacterSetInString(v6, @"oó"))
    {
      v9 = @" u ";
      goto LABEL_8;
    }
  }

  else if ([v8 hasPrefix:@"it"] && (FirstCharacterOfStringIsInCharacterSetInString(v6, @"aeiouıᅡ-ᅵ") & 1) != 0)
  {
    v9 = @" od ";
    goto LABEL_8;
  }

  speakableFinalDelimiter = [self speakableFinalDelimiter];
  v9 = [self _speakableStringFromString:speakableFinalDelimiter usingParser:v7];

LABEL_8:

  return v9;
}

- (BOOL)sruif_hasButton
{
  items = [self items];
  v2 = [items count] != 0;

  return v2;
}

@end