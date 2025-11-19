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
    [a1 setBackgroundColor:v5];
  }

  v6 = [v4 tintColor];
  [a1 _setHighlightColor:v6];

  v7 = [v4 textColor];

  [a1 _setTextColor:v7];
}

@end