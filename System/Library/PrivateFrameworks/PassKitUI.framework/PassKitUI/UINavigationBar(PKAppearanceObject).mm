@interface UINavigationBar(PKAppearanceObject)
- (void)pk_applyAppearance:()PKAppearanceObject;
@end

@implementation UINavigationBar(PKAppearanceObject)

- (void)pk_applyAppearance:()PKAppearanceObject
{
  v4 = a3;
  if ([v4 hasDarkAppearance])
  {
    [a1 setBarStyle:1];
    [a1 setTranslucent:1];
  }

  v5 = [v4 tintColor];
  [a1 setTintColor:v5];

  v6 = [v4 navBarPointImage];
  [a1 setBackgroundImage:v6 forBarMetrics:0];

  v7 = [v4 navBarShadowPointImage];

  [a1 setShadowImage:v7];
}

@end