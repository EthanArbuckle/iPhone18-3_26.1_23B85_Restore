@interface TSWPTranscriber
+ (id)transcriberWithIdentifier:(id)identifier displayName:(id)name romanizationLocaleID:(id)d transformIdentifier:(id)transformIdentifier;
- (TSWPTranscriber)initWithIdentifier:(id)identifier displayName:(id)name romanizationLocaleID:(id)d transformIdentifier:(id)transformIdentifier;
- (id)transcribeText:(id)text withLocale:(id)locale;
- (void)dealloc;
@end

@implementation TSWPTranscriber

- (TSWPTranscriber)initWithIdentifier:(id)identifier displayName:(id)name romanizationLocaleID:(id)d transformIdentifier:(id)transformIdentifier
{
  v12.receiver = self;
  v12.super_class = TSWPTranscriber;
  v10 = [(TSWPTranscriber *)&v12 init];
  if (v10)
  {
    v10->_identifier = [identifier copy];
    v10->_displayName = [name copy];
    v10->_transformIdentifier = [transformIdentifier copy];
    v10->_romanizationLocale = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:d];
  }

  return v10;
}

+ (id)transcriberWithIdentifier:(id)identifier displayName:(id)name romanizationLocaleID:(id)d transformIdentifier:(id)transformIdentifier
{
  v6 = [objc_alloc(objc_opt_class()) initWithIdentifier:identifier displayName:name romanizationLocaleID:d transformIdentifier:transformIdentifier];

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPTranscriber;
  [(TSWPTranscriber *)&v3 dealloc];
}

- (id)transcribeText:(id)text withLocale:(id)locale
{
  string = [MEMORY[0x277CCAB68] string];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v16.length = [text length];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__TSWPTranscriber_transcribeText_withLocale___block_invoke;
  v10[3] = &unk_279D49930;
  v11 = 1;
  v10[4] = string;
  v10[5] = text;
  v10[6] = self;
  v10[7] = &v12;
  v16.location = 0;
  TSWPEnumerateWordsInStringWithBlock(text, v16, locale, v10);
  if ([text length])
  {
    v8 = v13[3];
    if (v8 < [text length] - 1)
    {
      [string appendString:{objc_msgSend(text, "substringFromIndex:", v13[3])}];
    }
  }

  _Block_object_dispose(&v12, 8);
  return string;
}

CFTypeRef __45__TSWPTranscriber_transcribeText_withLocale___block_invoke(uint64_t a1, CFStringTokenizerRef tokenizer)
{
  result = CFStringTokenizerCopyCurrentTokenAttribute(tokenizer, 0x10000uLL);
  if (result)
  {
    v5 = result;
    if (*(a1 + 64) == 1)
    {
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(tokenizer);
      v7 = *(*(a1 + 56) + 8);
      if (CurrentTokenRange.location > *(v7 + 24))
      {
        [*(a1 + 32) appendString:{objc_msgSend(*(a1 + 40), "substringWithRange:")}];
        v7 = *(*(a1 + 56) + 8);
      }

      *(v7 + 24) = CurrentTokenRange.location + CurrentTokenRange.length;
    }

    v8.length = [v5 length];
    [*(a1 + 32) appendString:v5];

    return CFStringTransform(*(a1 + 32), &v8, *(*(a1 + 48) + 24), 0);
  }

  return result;
}

@end