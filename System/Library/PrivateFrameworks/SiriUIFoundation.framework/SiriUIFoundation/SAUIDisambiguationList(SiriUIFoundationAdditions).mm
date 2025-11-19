@interface SAUIDisambiguationList(SiriUIFoundationAdditions)
- (BOOL)sruif_hasButton;
- (__CFString)_speakableFinalDelimiterForSpeakableString:()SiriUIFoundationAdditions usingParser:;
- (id)_speakableStringFromString:()SiriUIFoundationAdditions usingParser:;
- (id)sruif_combinedSpeakableText;
@end

@implementation SAUIDisambiguationList(SiriUIFoundationAdditions)

- (id)sruif_combinedSpeakableText
{
  v2 = [MEMORY[0x277CCAB68] string];
  v3 = [MEMORY[0x277CEF430] sruif_speakableUtteranceParserForCurrentLanguage];
  [v3 setHandleTTSCodes:1];
  v4 = [a1 speakableText];
  v5 = [a1 _speakableStringFromString:v4 usingParser:v3];

  v6 = [a1 speakableDelimiter];
  v7 = [a1 _speakableStringFromString:v6 usingParser:v3];

  v8 = [a1 speakableSuffix];
  v9 = [a1 _speakableStringFromString:v8 usingParser:v3];

  if ([v5 length])
  {
    [v2 appendString:v5];
  }

  v10 = [a1 items];
  v11 = [v10 count];

  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 1;
  v12 = [a1 items];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __80__SAUIDisambiguationList_SiriUIFoundationAdditions__sruif_combinedSpeakableText__block_invoke;
  v22 = &unk_279C62A88;
  v23 = a1;
  v13 = v3;
  v24 = v13;
  v27 = v29;
  v28 = v11;
  v14 = v2;
  v25 = v14;
  v15 = v7;
  v26 = v15;
  [v12 enumerateObjectsUsingBlock:&v19];

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

  v10 = [a1 speakableFinalDelimiter];
  v9 = [a1 _speakableStringFromString:v10 usingParser:v7];

LABEL_8:

  return v9;
}

- (BOOL)sruif_hasButton
{
  v1 = [a1 items];
  v2 = [v1 count] != 0;

  return v2;
}

@end