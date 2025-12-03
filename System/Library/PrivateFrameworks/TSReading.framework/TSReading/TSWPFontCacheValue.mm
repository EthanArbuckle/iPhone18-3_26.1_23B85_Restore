@interface TSWPFontCacheValue
+ (id)cacheValueWithCTFont:(__CTFont *)font;
- (TSWPFontCacheValue)initWithCTFont:(__CTFont *)font;
- (void)dealloc;
@end

@implementation TSWPFontCacheValue

+ (id)cacheValueWithCTFont:(__CTFont *)font
{
  v3 = [objc_alloc(objc_opt_class()) initWithCTFont:font];

  return v3;
}

- (TSWPFontCacheValue)initWithCTFont:(__CTFont *)font
{
  v7.receiver = self;
  v7.super_class = TSWPFontCacheValue;
  v4 = [(TSWPFontCacheValue *)&v7 init];
  v5 = v4;
  if (font && v4)
  {
    v4->_ctFont = CFRetain(font);
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