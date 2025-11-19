@interface UITextField(PKAppearanceObject)
- (id)pk_childrenForAppearance;
- (void)pk_applyAppearance:()PKAppearanceObject;
- (void)pk_setPlaceholderColor:()PKAppearanceObject;
@end

@implementation UITextField(PKAppearanceObject)

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

  return v2;
}

- (void)pk_applyAppearance:()PKAppearanceObject
{
  v23 = a3;
  v4 = [a1 keyboardAppearance];
  if ([v23 hasDarkAppearance])
  {
    v5 = 1;
LABEL_5:
    [a1 setKeyboardAppearance:v5];
    goto LABEL_6;
  }

  if ([a1 keyboardAppearance] == 1)
  {
    v5 = 0;
    goto LABEL_5;
  }

LABEL_6:
  if (v4 != [a1 keyboardAppearance] && objc_msgSend(a1, "isFirstResponder"))
  {
    [a1 reloadInputViews];
  }

  v6 = [v23 editableTextColor];
  [a1 setTextColor:v6];

  v7 = [v23 editablePlaceholderTextColor];
  [a1 pk_setPlaceholderColor:v7];

  v8 = [v23 editableInsertionPointColor];
  [a1 setInsertionPointColor:v8];

  v9 = [v23 editableSelectionBarColor];
  [a1 setSelectionBarColor:v9];

  v10 = [v23 editableSelectionHighlightColor];
  [a1 setSelectionHighlightColor:v10];

  v11 = UIImageGetTextFieldClearButton();
  v12 = [v23 editableTextColor];
  v13 = [v11 _flatImageWithColor:v12];

  v14 = [a1 _clearButton];
  [v14 setImage:v13 forState:0];

  v15 = UIImageGetTextFieldClearButtonPressed();
  v16 = [v23 editablePlaceholderTextColor];
  v17 = [v15 _flatImageWithColor:v16];

  v18 = [a1 _clearButton];
  [v18 setImage:v17 forState:1];

  v19 = UIImageGetTextFieldClearButtonDisabled();
  v20 = [v23 editablePlaceholderTextColor];
  v21 = [v19 _flatImageWithColor:v20];

  v22 = [a1 _clearButton];
  [v22 setImage:v21 forState:2];
}

- (void)pk_setPlaceholderColor:()PKAppearanceObject
{
  v4 = a3;
  objc_setAssociatedObject(a1, sel_pk_placeholderColor, v4, 1);
  v5 = [a1 _placeholderLabel];
  [v5 setTextColor:v4];
}

@end