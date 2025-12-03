@interface UIButton(PKAppearanceObject)
- (void)pk_applyAppearance:()PKAppearanceObject;
@end

@implementation UIButton(PKAppearanceObject)

- (void)pk_applyAppearance:()PKAppearanceObject
{
  v4 = a3;
  buttonTextColor = [v4 buttonTextColor];
  [self setTitleColor:buttonTextColor forState:0];

  buttonDisabledTextColor = [v4 buttonDisabledTextColor];
  [self setTitleColor:buttonDisabledTextColor forState:2];

  buttonBackgroundColor = [v4 buttonBackgroundColor];

  [self setBackgroundColor:buttonBackgroundColor];
}

@end