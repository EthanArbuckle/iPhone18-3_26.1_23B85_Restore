@interface TIStickerQuery
+ (BOOL)_isStringStopWord:(id)word;
- (BOOL)isStopWord;
- (NSString)normalizedQueryString;
- (TIStickerQuery)initWithQueryString:(id)string;
- (unint64_t)length;
@end

@implementation TIStickerQuery

- (unint64_t)length
{
  normalizedQueryString = [(TIStickerQuery *)self normalizedQueryString];
  v3 = [normalizedQueryString length];

  return v3;
}

- (BOOL)isStopWord
{
  v3 = objc_opt_class();
  normalizedQueryString = [(TIStickerQuery *)self normalizedQueryString];
  LOBYTE(v3) = [v3 _isStringStopWord:normalizedQueryString];

  return v3;
}

- (NSString)normalizedQueryString
{
  normalizedQueryString = self->_normalizedQueryString;
  if (!normalizedQueryString)
  {
    queryString = [(TIStickerQuery *)self queryString];
    lowercaseString = [queryString lowercaseString];
    decomposedStringWithCanonicalMapping = [lowercaseString decomposedStringWithCanonicalMapping];
    v7 = self->_normalizedQueryString;
    self->_normalizedQueryString = decomposedStringWithCanonicalMapping;

    normalizedQueryString = self->_normalizedQueryString;
  }

  return normalizedQueryString;
}

- (TIStickerQuery)initWithQueryString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = TIStickerQuery;
  v6 = [(TIStickerQuery *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queryString, string);
  }

  return v7;
}

+ (BOOL)_isStringStopWord:(id)word
{
  wordCopy = word;
  if (wordCopy)
  {
    if (_isStringStopWord__onceToken != -1)
    {
      dispatch_once(&_isStringStopWord__onceToken, &__block_literal_global_13011);
    }

    v4 = [_isStringStopWord____stopwords containsObject:wordCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __36__TIStickerQuery__isStringStopWord___block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithArray:&unk_28400BA18];
  v1 = _isStringStopWord____stopwords;
  _isStringStopWord____stopwords = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end