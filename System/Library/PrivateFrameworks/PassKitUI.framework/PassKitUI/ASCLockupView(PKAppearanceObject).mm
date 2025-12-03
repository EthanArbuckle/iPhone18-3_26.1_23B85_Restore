@interface ASCLockupView(PKAppearanceObject)
- (void)pk_applyAppearance:()PKAppearanceObject;
@end

@implementation ASCLockupView(PKAppearanceObject)

- (void)pk_applyAppearance:()PKAppearanceObject
{
  v4 = a3;
  foregroundColor = [v4 foregroundColor];
  [self setBackgroundColor:foregroundColor];

  tintColor = [v4 tintColor];

  [self setTintColor:tintColor];
}

@end