@interface _PRMonogramFontSpec
+ (id)specForFontWithName:(id)a3 baseSize:(double)a4 tracking:(double)a5;
@end

@implementation _PRMonogramFontSpec

+ (id)specForFontWithName:(id)a3 baseSize:(double)a4 tracking:(double)a5
{
  v7 = a3;
  v8 = objc_alloc_init(_PRMonogramFontSpec);
  v9 = [v7 copy];

  fontName = v8->_fontName;
  v8->_fontName = v9;

  v8->_baseSize = a4;
  v8->_tracking = a5;

  return v8;
}

@end