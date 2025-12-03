@interface UIView(PKAppearanceObject)
- (void)pk_applyAppearance:()PKAppearanceObject;
@end

@implementation UIView(PKAppearanceObject)

- (void)pk_applyAppearance:()PKAppearanceObject
{
  v4 = a3;
  backgroundColor = [v4 backgroundColor];
  [self setBackgroundColor:backgroundColor];

  tintColor = [v4 tintColor];

  [self setTintColor:tintColor];
}

@end