@interface TIAutoshiftRegularExpressionLoader
+ (TIAutoshiftRegularExpressionLoader)loaderWithSentenceDelimiters:(id)a3 trailingChars:(id)a4 prefixChars:(id)a5;
- (NSRegularExpression)regex;
- (TIAutoshiftRegularExpressionLoader)initWithSentenceDelimiters:(id)a3 trailingChars:(id)a4 prefixChars:(id)a5;
- (void)startBackgroundLoad;
@end

@implementation TIAutoshiftRegularExpressionLoader

- (NSRegularExpression)regex
{
  regex = self->_regex;
  if (!regex)
  {
    v4 = [(TIAutoshiftRegularExpressionLoader *)self sentenceDelimitingCharacters];
    v5 = [(TIAutoshiftRegularExpressionLoader *)self sentenceTrailingCharacters];
    v6 = [(TIAutoshiftRegularExpressionLoader *)self nextSentencePrefixCharacters];
    v7 = createAutoshiftRegularExpression(v4, v5, v6);
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

- (TIAutoshiftRegularExpressionLoader)initWithSentenceDelimiters:(id)a3 trailingChars:(id)a4 prefixChars:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = TIAutoshiftRegularExpressionLoader;
  v11 = [(TIAutoshiftRegularExpressionLoader *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    sentenceDelimitingCharacters = v11->_sentenceDelimitingCharacters;
    v11->_sentenceDelimitingCharacters = v12;

    v14 = [v9 copy];
    sentenceTrailingCharacters = v11->_sentenceTrailingCharacters;
    v11->_sentenceTrailingCharacters = v14;

    v16 = [v10 copy];
    nextSentencePrefixCharacters = v11->_nextSentencePrefixCharacters;
    v11->_nextSentencePrefixCharacters = v16;
  }

  return v11;
}

+ (TIAutoshiftRegularExpressionLoader)loaderWithSentenceDelimiters:(id)a3 trailingChars:(id)a4 prefixChars:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithSentenceDelimiters:v10 trailingChars:v9 prefixChars:v8];

  return v11;
}

@end