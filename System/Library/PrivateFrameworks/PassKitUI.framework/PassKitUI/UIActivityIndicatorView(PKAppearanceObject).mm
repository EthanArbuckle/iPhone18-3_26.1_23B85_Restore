@interface UIActivityIndicatorView(PKAppearanceObject)
- (void)pk_applyAppearance:()PKAppearanceObject;
@end

@implementation UIActivityIndicatorView(PKAppearanceObject)

- (void)pk_applyAppearance:()PKAppearanceObject
{
  v4 = [a3 textColor];
  [a1 setColor:v4];
}

@end