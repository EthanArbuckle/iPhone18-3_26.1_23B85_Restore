@interface UIButton(PKAppearanceObject)
- (void)pk_applyAppearance:()PKAppearanceObject;
@end

@implementation UIButton(PKAppearanceObject)

- (void)pk_applyAppearance:()PKAppearanceObject
{
  v4 = a3;
  v5 = [v4 buttonTextColor];
  [a1 setTitleColor:v5 forState:0];

  v6 = [v4 buttonDisabledTextColor];
  [a1 setTitleColor:v6 forState:2];

  v7 = [v4 buttonBackgroundColor];

  [a1 setBackgroundColor:v7];
}

@end