@interface UIToolbar(PKAppearanceObject)
- (void)pk_applyAppearance:()PKAppearanceObject;
@end

@implementation UIToolbar(PKAppearanceObject)

- (void)pk_applyAppearance:()PKAppearanceObject
{
  v4 = a3;
  v5 = [v4 tintColor];
  [a1 setTintColor:v5];

  v6 = [v4 navBarPointImage];
  [a1 setBackgroundImage:v6 forToolbarPosition:0 barMetrics:0];

  v7 = [v4 navBarShadowPointImage];

  [a1 setShadowImage:v7 forToolbarPosition:0];
}

@end