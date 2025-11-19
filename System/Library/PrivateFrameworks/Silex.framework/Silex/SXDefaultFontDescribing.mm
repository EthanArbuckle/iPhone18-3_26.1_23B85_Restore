@interface SXDefaultFontDescribing
- (SXDefaultFontDescribing)init;
@end

@implementation SXDefaultFontDescribing

- (SXDefaultFontDescribing)init
{
  v8.receiver = self;
  v8.super_class = SXDefaultFontDescribing;
  v2 = [(SXDefaultFontDescribing *)&v8 init];
  v3 = v2;
  if (v2)
  {
    fontName = v2->_fontName;
    v2->_fontName = @"Helvetica";

    v5 = objc_alloc_init(SXDefaultFontAttributes);
    fontAttributes = v3->_fontAttributes;
    v3->_fontAttributes = v5;
  }

  return v3;
}

@end