@interface GQHPagesFloatingDrawable
+ (int)beginDrawables:(id)drawables;
+ (int)endDrawables:(id)drawables;
@end

@implementation GQHPagesFloatingDrawable

+ (int)beginDrawables:(id)drawables
{
  [objc_msgSend(drawables "generatorState")];
  [drawables setDoExternalTextWrap:1];
  return 1;
}

+ (int)endDrawables:(id)drawables
{
  [objc_msgSend(drawables "generatorState")];
  [drawables setDoExternalTextWrap:0];
  return 1;
}

@end