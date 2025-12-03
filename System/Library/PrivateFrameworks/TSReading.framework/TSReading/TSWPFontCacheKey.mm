@interface TSWPFontCacheKey
+ (id)cacheKeyWithFontName:(id)name size:(double)size weight:(double)weight;
- (BOOL)isEqual:(id)equal;
- (TSWPFontCacheKey)initWithFontName:(id)name size:(double)size weight:(double)weight;
- (void)dealloc;
@end

@implementation TSWPFontCacheKey

+ (id)cacheKeyWithFontName:(id)name size:(double)size weight:(double)weight
{
  objc_sync_enter(self);
  v9 = +[TSWPFontCacheKey cacheKeyWithFontName:size:weight:]::sLastKey;
  if (!+[TSWPFontCacheKey cacheKeyWithFontName:size:weight:]::sLastKey || ([+[TSWPFontCacheKey cacheKeyWithFontName:size:weight:]::sLastKey fontSize], v9 = +[TSWPFontCacheKey cacheKeyWithFontName:size:weight:]::sLastKey, v10 != size) || (objc_msgSend(+[TSWPFontCacheKey cacheKeyWithFontName:size:weight:]::sLastKey, "fontWeight"), v9 = +[TSWPFontCacheKey cacheKeyWithFontName:size:weight:]::sLastKey, v11 != weight) || (v12 = objc_msgSend(objc_msgSend(+[TSWPFontCacheKey cacheKeyWithFontName:size:weight:]::sLastKey, "fontName"), "isEqualToString:", name), v9 = +[TSWPFontCacheKey cacheKeyWithFontName:size:weight:]::sLastKey, (v12 & 1) == 0))
  {

    v9 = [objc_alloc(objc_opt_class()) initWithFontName:name size:size weight:weight];
    +[TSWPFontCacheKey cacheKeyWithFontName:size:weight:]::sLastKey = v9;
  }

  v13 = v9;
  objc_sync_exit(self);
  return v13;
}

- (TSWPFontCacheKey)initWithFontName:(id)name size:(double)size weight:(double)weight
{
  v10.receiver = self;
  v10.super_class = TSWPFontCacheKey;
  v8 = [(TSWPFontCacheKey *)&v10 init];
  if (v8)
  {
    v8->_fontName = [name copy];
    v8->_fontSize = size;
    v8->_fontWeight = weight;
  }

  return v8;
}

- (void)dealloc
{
  self->_fontName = 0;
  v3.receiver = self;
  v3.super_class = TSWPFontCacheKey;
  [(TSWPFontCacheKey *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (!equal)
  {
    return 0;
  }

  v6 = v5;
  [v5 fontSize];
  if (v7 != self->_fontSize)
  {
    return 0;
  }

  [v6 fontWeight];
  if (v8 != self->_fontWeight)
  {
    return 0;
  }

  fontName = [v6 fontName];
  fontName = self->_fontName;

  return [fontName isEqualToString:fontName];
}

@end