@interface UITextView(PKAppearanceAdditions)
- (id)pk_childrenForAppearance;
- (void)pk_applyAppearance:()PKAppearanceAdditions;
- (void)pk_setAttributedTextRespectingTextAndBackgroundColors:()PKAppearanceAdditions;
@end

@implementation UITextView(PKAppearanceAdditions)

- (id)pk_childrenForAppearance
{
  array = [MEMORY[0x1E695DF70] array];
  inputView = [self inputView];

  if (inputView)
  {
    inputView2 = [self inputView];
    [array addObject:inputView2];
  }

  inputAccessoryView = [self inputAccessoryView];

  if (inputAccessoryView)
  {
    inputAccessoryView2 = [self inputAccessoryView];
    [array addObject:inputAccessoryView2];
  }

  v7 = [array copy];

  return v7;
}

- (void)pk_applyAppearance:()PKAppearanceAdditions
{
  v9 = a3;
  keyboardAppearance = [self keyboardAppearance];
  if ([v9 hasDarkAppearance])
  {
    v5 = 1;
LABEL_5:
    [self setKeyboardAppearance:v5];
    goto LABEL_6;
  }

  if (keyboardAppearance == 1)
  {
    v5 = 0;
    goto LABEL_5;
  }

LABEL_6:
  if (keyboardAppearance != [self keyboardAppearance] && objc_msgSend(self, "isFirstResponder"))
  {
    [self reloadInputViews];
  }

  textColor = [v9 textColor];
  [self setTextColor:textColor];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [self setBackgroundColor:clearColor];

  attributedText = [self attributedText];
  [self pk_setAttributedTextRespectingTextAndBackgroundColors:attributedText];
}

- (void)pk_setAttributedTextRespectingTextAndBackgroundColors:()PKAppearanceAdditions
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