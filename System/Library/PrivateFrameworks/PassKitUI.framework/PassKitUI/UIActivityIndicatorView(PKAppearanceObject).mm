@interface UIActivityIndicatorView(PKAppearanceObject)
- (void)pk_applyAppearance:()PKAppearanceObject;
@end

@implementation UIActivityIndicatorView(PKAppearanceObject)

- (void)pk_applyAppearance:()PKAppearanceObject
{
  textColor = [a3 textColor];
  [self setColor:textColor];
}

@end