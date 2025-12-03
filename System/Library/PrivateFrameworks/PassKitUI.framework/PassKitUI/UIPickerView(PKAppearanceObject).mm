@interface UIPickerView(PKAppearanceObject)
- (void)pk_applyAppearance:()PKAppearanceObject;
@end

@implementation UIPickerView(PKAppearanceObject)

- (void)pk_applyAppearance:()PKAppearanceObject
{
  v4 = a3;
  if ([v4 hasDarkAppearance])
  {
    v5 = [MEMORY[0x1E69DC888] colorWithRed:0.366 green:0.366 blue:0.366 alpha:1.0];
    [self setBackgroundColor:v5];
  }

  tintColor = [v4 tintColor];
  [self _setHighlightColor:tintColor];

  textColor = [v4 textColor];

  [self _setTextColor:textColor];
}

@end