@interface _PRMonogramFontSpec
+ (id)specForFontWithName:(id)name baseSize:(double)size tracking:(double)tracking;
@end

@implementation _PRMonogramFontSpec

+ (id)specForFontWithName:(id)name baseSize:(double)size tracking:(double)tracking
{
  nameCopy = name;
  v8 = objc_alloc_init(_PRMonogramFontSpec);
  v9 = [nameCopy copy];

  fontName = v8->_fontName;
  v8->_fontName = v9;

  v8->_baseSize = size;
  v8->_tracking = tracking;

  return v8;
}

@end