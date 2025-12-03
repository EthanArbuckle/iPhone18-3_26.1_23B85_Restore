@interface TIAutoshiftRegularExpressionLoader
+ (TIAutoshiftRegularExpressionLoader)loaderWithSentenceDelimiters:(id)delimiters trailingChars:(id)chars prefixChars:(id)prefixChars;
- (NSRegularExpression)regex;
- (TIAutoshiftRegularExpressionLoader)initWithSentenceDelimiters:(id)delimiters trailingChars:(id)chars prefixChars:(id)prefixChars;
- (void)startBackgroundLoad;
@end

@implementation TIAutoshiftRegularExpressionLoader

- (NSRegularExpression)regex
{
  regex = self->_regex;
  if (!regex)
  {
    sentenceDelimitingCharacters = [(TIAutoshiftRegularExpressionLoader *)self sentenceDelimitingCharacters];
    sentenceTrailingCharacters = [(TIAutoshiftRegularExpressionLoader *)self sentenceTrailingCharacters];
    nextSentencePrefixCharacters = [(TIAutoshiftRegularExpressionLoader *)self nextSentencePrefixCharacters];
    v7 = createAutoshiftRegularExpression(sentenceDelimitingCharacters, sentenceTrailingCharacters, nextSentencePrefixCharacters);
    v8 = self->_regex;
    self->_regex = v7;

    regex = self->_regex;
  }

  return regex;
}

- (void)startBackgroundLoad
{
  v2 = _TIQueueBackground();
  TIDispatchAsync();
}

void __57__TIAutoshiftRegularExpressionLoader_startBackgroundLoad__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sentenceDelimitingCharacters];
  v3 = [*(a1 + 32) sentenceTrailingCharacters];
  v4 = [*(a1 + 32) nextSentencePrefixCharacters];
  v5 = createAutoshiftRegularExpression(v2, v3, v4);

  v7 = *(a1 + 32);
  v6 = v5;
  TIDispatchAsync();
}

- (TIAutoshiftRegularExpressionLoader)initWithSentenceDelimiters:(id)delimiters trailingChars:(id)chars prefixChars:(id)prefixChars
{
  delimitersCopy = delimiters;
  charsCopy = chars;
  prefixCharsCopy = prefixChars;
  v19.receiver = self;
  v19.super_class = TIAutoshiftRegularExpressionLoader;
  v11 = [(TIAutoshiftRegularExpressionLoader *)&v19 init];
  if (v11)
  {
    v12 = [delimitersCopy copy];
    sentenceDelimitingCharacters = v11->_sentenceDelimitingCharacters;
    v11->_sentenceDelimitingCharacters = v12;

    v14 = [charsCopy copy];
    sentenceTrailingCharacters = v11->_sentenceTrailingCharacters;
    v11->_sentenceTrailingCharacters = v14;

    v16 = [prefixCharsCopy copy];
    nextSentencePrefixCharacters = v11->_nextSentencePrefixCharacters;
    v11->_nextSentencePrefixCharacters = v16;
  }

  return v11;
}

+ (TIAutoshiftRegularExpressionLoader)loaderWithSentenceDelimiters:(id)delimiters trailingChars:(id)chars prefixChars:(id)prefixChars
{
  prefixCharsCopy = prefixChars;
  charsCopy = chars;
  delimitersCopy = delimiters;
  v11 = [[self alloc] initWithSentenceDelimiters:delimitersCopy trailingChars:charsCopy prefixChars:prefixCharsCopy];

  return v11;
}

@end