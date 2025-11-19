@interface TSWPTranscriber
+ (id)transcriberWithIdentifier:(id)a3 displayName:(id)a4 romanizationLocaleID:(id)a5 transformIdentifier:(id)a6;
- (TSWPTranscriber)initWithIdentifier:(id)a3 displayName:(id)a4 romanizationLocaleID:(id)a5 transformIdentifier:(id)a6;
- (id)transcribeText:(id)a3 withLocale:(id)a4;
- (void)dealloc;
@end

@implementation TSWPTranscriber

- (TSWPTranscriber)initWithIdentifier:(id)a3 displayName:(id)a4 romanizationLocaleID:(id)a5 transformIdentifier:(id)a6
{
  v12.receiver = self;
  v12.super_class = TSWPTranscriber;
  v10 = [(TSWPTranscriber *)&v12 init];
  if (v10)
  {
    v10->_identifier = [a3 copy];
    v10->_displayName = [a4 copy];
    v10->_transformIdentifier = [a6 copy];
    v10->_romanizationLocale = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:a5];
  }

  return v10;
}

+ (id)transcriberWithIdentifier:(id)a3 displayName:(id)a4 romanizationLocaleID:(id)a5 transformIdentifier:(id)a6
{
  v6 = [objc_alloc(objc_opt_class()) initWithIdentifier:a3 displayName:a4 romanizationLocaleID:a5 transformIdentifier:a6];

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPTranscriber;
  [(TSWPTranscriber *)&v3 dealloc];
}

- (id)transcribeText:(id)a3 withLocale:(id)a4
{
  v7 = [MEMORY[0x277CCAB68] string];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v16.length = [a3 length];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__TSWPTranscriber_transcribeText_withLocale___block_invoke;
  v10[3] = &unk_279D49930;
  v11 = 1;
  v10[4] = v7;
  v10[5] = a3;
  v10[6] = self;
  v10[7] = &v12;
  v16.location = 0;
  TSWPEnumerateWordsInStringWithBlock(a3, v16, a4, v10);
  if ([a3 length])
  {
    v8 = v13[3];
    if (v8 < [a3 length] - 1)
    {
      [v7 appendString:{objc_msgSend(a3, "substringFromIndex:", v13[3])}];
    }
  }

  _Block_object_dispose(&v12, 8);
  return v7;
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