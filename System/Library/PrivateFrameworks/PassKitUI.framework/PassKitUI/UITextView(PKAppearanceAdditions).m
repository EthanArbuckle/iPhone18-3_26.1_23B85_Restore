@interface UITextView(PKAppearanceAdditions)
- (id)pk_childrenForAppearance;
- (void)pk_applyAppearance:()PKAppearanceAdditions;
- (void)pk_setAttributedTextRespectingTextAndBackgroundColors:()PKAppearanceAdditions;
@end

@implementation UITextView(PKAppearanceAdditions)

- (id)pk_childrenForAppearance
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [a1 inputView];

  if (v3)
  {
    v4 = [a1 inputView];
    [v2 addObject:v4];
  }

  v5 = [a1 inputAccessoryView];

  if (v5)
  {
    v6 = [a1 inputAccessoryView];
    [v2 addObject:v6];
  }

  v7 = [v2 copy];

  return v7;
}

- (void)pk_applyAppearance:()PKAppearanceAdditions
{
  v9 = a3;
  v4 = [a1 keyboardAppearance];
  if ([v9 hasDarkAppearance])
  {
    v5 = 1;
LABEL_5:
    [a1 setKeyboardAppearance:v5];
    goto LABEL_6;
  }

  if (v4 == 1)
  {
    v5 = 0;
    goto LABEL_5;
  }

LABEL_6:
  if (v4 != [a1 keyboardAppearance] && objc_msgSend(a1, "isFirstResponder"))
  {
    [a1 reloadInputViews];
  }

  v6 = [v9 textColor];
  [a1 setTextColor:v6];

  v7 = [MEMORY[0x1E69DC888] clearColor];
  [a1 setBackgroundColor:v7];

  v8 = [a1 attributedText];
  [a1 pk_setAttributedTextRespectingTextAndBackgroundColors:v8];
}

- (void)pk_setAttributedTextRespectingTextAndBackgroundColors:()PKAppearanceAdditions
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