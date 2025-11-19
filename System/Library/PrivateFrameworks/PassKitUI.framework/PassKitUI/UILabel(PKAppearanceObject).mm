@interface UILabel(PKAppearanceObject)
- (void)pk_applyAppearance:()PKAppearanceObject;
- (void)pk_setAttributedTextRespectingTextAndBackgroundColors:()PKAppearanceObject;
@end

@implementation UILabel(PKAppearanceObject)

- (void)pk_applyAppearance:()PKAppearanceObject
{
  v4 = [a3 textColor];
  [a1 setTextColor:v4];

  v5 = [MEMORY[0x1E69DC888] clearColor];
  [a1 setBackgroundColor:v5];

  v6 = [a1 attributedText];
  [a1 pk_setAttributedTextRespectingTextAndBackgroundColors:v6];
}

- (void)pk_setAttributedTextRespectingTextAndBackgroundColors:()PKAppearanceObject
{
  v4 = *MEMORY[0x1E69DB650];
  v10 = a3;
  v5 = [a1 textColor];
  v6 = PKAttributedStringSetAttributeForKey(v10, v4, v5);

  v7 = *MEMORY[0x1E69DB600];
  v8 = [a1 backgroundColor];
  v9 = PKAttributedStringSetAttributeForKey(v10, v7, v8);

  [a1 setAttributedText:v10];
}

@end