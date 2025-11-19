@interface TSWPFontCacheValue
+ (id)cacheValueWithCTFont:(__CTFont *)a3;
- (TSWPFontCacheValue)initWithCTFont:(__CTFont *)a3;
- (void)dealloc;
@end

@implementation TSWPFontCacheValue

+ (id)cacheValueWithCTFont:(__CTFont *)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithCTFont:a3];

  return v3;
}

- (TSWPFontCacheValue)initWithCTFont:(__CTFont *)a3
{
  v7.receiver = self;
  v7.super_class = TSWPFontCacheValue;
  v4 = [(TSWPFontCacheValue *)&v7 init];
  v5 = v4;
  if (a3 && v4)
  {
    v4->_ctFont = CFRetain(a3);
  }

  return v5;
}

- (void)dealloc
{
  ctFont = self->_ctFont;
  if (ctFont)
  {
    CFRelease(ctFont);
    self->_ctFont = 0;
  }

  v4.receiver = self;
  v4.super_class = TSWPFontCacheValue;
  [(TSWPFontCacheValue *)&v4 dealloc];
}

@end