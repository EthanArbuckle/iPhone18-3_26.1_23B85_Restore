@interface GQHPagesFloatingDrawable
+ (int)beginDrawables:(id)a3;
+ (int)endDrawables:(id)a3;
@end

@implementation GQHPagesFloatingDrawable

+ (int)beginDrawables:(id)a3
{
  [objc_msgSend(a3 "generatorState")];
  [a3 setDoExternalTextWrap:1];
  return 1;
}

+ (int)endDrawables:(id)a3
{
  [objc_msgSend(a3 "generatorState")];
  [a3 setDoExternalTextWrap:0];
  return 1;
}

@end