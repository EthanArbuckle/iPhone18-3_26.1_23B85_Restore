@interface TIStickerQuery
+ (BOOL)_isStringStopWord:(id)a3;
- (BOOL)isStopWord;
- (NSString)normalizedQueryString;
- (TIStickerQuery)initWithQueryString:(id)a3;
- (unint64_t)length;
@end

@implementation TIStickerQuery

- (unint64_t)length
{
  v2 = [(TIStickerQuery *)self normalizedQueryString];
  v3 = [v2 length];

  return v3;
}

- (BOOL)isStopWord
{
  v3 = objc_opt_class();
  v4 = [(TIStickerQuery *)self normalizedQueryString];
  LOBYTE(v3) = [v3 _isStringStopWord:v4];

  return v3;
}

- (NSString)normalizedQueryString
{
  normalizedQueryString = self->_normalizedQueryString;
  if (!normalizedQueryString)
  {
    v4 = [(TIStickerQuery *)self queryString];
    v5 = [v4 lowercaseString];
    v6 = [v5 decomposedStringWithCanonicalMapping];
    v7 = self->_normalizedQueryString;
    self->_normalizedQueryString = v6;

    normalizedQueryString = self->_normalizedQueryString;
  }

  return normalizedQueryString;
}

- (TIStickerQuery)initWithQueryString:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TIStickerQuery;
  v6 = [(TIStickerQuery *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queryString, a3);
  }

  return v7;
}

+ (BOOL)_isStringStopWord:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (_isStringStopWord__onceToken != -1)
    {
      dispatch_once(&_isStringStopWord__onceToken, &__block_literal_global_13011);
    }

    v4 = [_isStringStopWord____stopwords containsObject:v3];
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