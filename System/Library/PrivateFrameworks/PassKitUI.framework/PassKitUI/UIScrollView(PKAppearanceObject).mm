@interface UIScrollView(PKAppearanceObject)
- (uint64_t)pk_applyAppearance:()PKAppearanceObject;
@end

@implementation UIScrollView(PKAppearanceObject)

- (uint64_t)pk_applyAppearance:()PKAppearanceObject
{
  if ([a3 hasDarkAppearance])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return [self setIndicatorStyle:v4];
}

@end