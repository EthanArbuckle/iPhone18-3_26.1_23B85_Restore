@interface UINavigationBar(PKAppearanceObject)
- (void)pk_applyAppearance:()PKAppearanceObject;
@end

@implementation UINavigationBar(PKAppearanceObject)

- (void)pk_applyAppearance:()PKAppearanceObject
{
  v4 = a3;
  if ([v4 hasDarkAppearance])
  {
    [self setBarStyle:1];
    [self setTranslucent:1];
  }

  tintColor = [v4 tintColor];
  [self setTintColor:tintColor];

  navBarPointImage = [v4 navBarPointImage];
  [self setBackgroundImage:navBarPointImage forBarMetrics:0];

  navBarShadowPointImage = [v4 navBarShadowPointImage];

  [self setShadowImage:navBarShadowPointImage];
}

@end