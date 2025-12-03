@interface UILabel(PKAppearanceObject)
- (void)pk_applyAppearance:()PKAppearanceObject;
- (void)pk_setAttributedTextRespectingTextAndBackgroundColors:()PKAppearanceObject;
@end

@implementation UILabel(PKAppearanceObject)

- (void)pk_applyAppearance:()PKAppearanceObject
{
  textColor = [a3 textColor];
  [self setTextColor:textColor];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [self setBackgroundColor:clearColor];

  attributedText = [self attributedText];
  [self pk_setAttributedTextRespectingTextAndBackgroundColors:attributedText];
}

- (void)pk_setAttributedTextRespectingTextAndBackgroundColors:()PKAppearanceObject
{
  v4 = *MEMORY[0x1E69DB650];
  v10 = a3;
  textColor = [self textColor];
  v6 = PKAttributedStringSetAttributeForKey(v10, v4, textColor);

  v7 = *MEMORY[0x1E69DB600];
  backgroundColor = [self backgroundColor];
  v9 = PKAttributedStringSetAttributeForKey(v10, v7, backgroundColor);

  [self setAttributedText:v10];
}

@end