@interface UIToolbar(PKAppearanceObject)
- (void)pk_applyAppearance:()PKAppearanceObject;
@end

@implementation UIToolbar(PKAppearanceObject)

- (void)pk_applyAppearance:()PKAppearanceObject
{
  v4 = a3;
  tintColor = [v4 tintColor];
  [self setTintColor:tintColor];

  navBarPointImage = [v4 navBarPointImage];
  [self setBackgroundImage:navBarPointImage forToolbarPosition:0 barMetrics:0];

  navBarShadowPointImage = [v4 navBarShadowPointImage];

  [self setShadowImage:navBarShadowPointImage forToolbarPosition:0];
}

@end