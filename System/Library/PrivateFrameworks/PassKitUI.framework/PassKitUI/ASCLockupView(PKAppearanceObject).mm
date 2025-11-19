@interface ASCLockupView(PKAppearanceObject)
- (void)pk_applyAppearance:()PKAppearanceObject;
@end

@implementation ASCLockupView(PKAppearanceObject)

- (void)pk_applyAppearance:()PKAppearanceObject
{
  v4 = a3;
  v5 = [v4 foregroundColor];
  [a1 setBackgroundColor:v5];

  v6 = [v4 tintColor];

  [a1 setTintColor:v6];
}

@end