@interface UITextField(PKAppearanceObject)
- (id)pk_childrenForAppearance;
- (void)pk_applyAppearance:()PKAppearanceObject;
- (void)pk_setPlaceholderColor:()PKAppearanceObject;
@end

@implementation UITextField(PKAppearanceObject)

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

  return array;
}

- (void)pk_applyAppearance:()PKAppearanceObject
{
  v23 = a3;
  keyboardAppearance = [self keyboardAppearance];
  if ([v23 hasDarkAppearance])
  {
    v5 = 1;
LABEL_5:
    [self setKeyboardAppearance:v5];
    goto LABEL_6;
  }

  if ([self keyboardAppearance] == 1)
  {
    v5 = 0;
    goto LABEL_5;
  }

LABEL_6:
  if (keyboardAppearance != [self keyboardAppearance] && objc_msgSend(self, "isFirstResponder"))
  {
    [self reloadInputViews];
  }

  editableTextColor = [v23 editableTextColor];
  [self setTextColor:editableTextColor];

  editablePlaceholderTextColor = [v23 editablePlaceholderTextColor];
  [self pk_setPlaceholderColor:editablePlaceholderTextColor];

  editableInsertionPointColor = [v23 editableInsertionPointColor];
  [self setInsertionPointColor:editableInsertionPointColor];

  editableSelectionBarColor = [v23 editableSelectionBarColor];
  [self setSelectionBarColor:editableSelectionBarColor];

  editableSelectionHighlightColor = [v23 editableSelectionHighlightColor];
  [self setSelectionHighlightColor:editableSelectionHighlightColor];

  v11 = UIImageGetTextFieldClearButton();
  editableTextColor2 = [v23 editableTextColor];
  v13 = [v11 _flatImageWithColor:editableTextColor2];

  _clearButton = [self _clearButton];
  [_clearButton setImage:v13 forState:0];

  v15 = UIImageGetTextFieldClearButtonPressed();
  editablePlaceholderTextColor2 = [v23 editablePlaceholderTextColor];
  v17 = [v15 _flatImageWithColor:editablePlaceholderTextColor2];

  _clearButton2 = [self _clearButton];
  [_clearButton2 setImage:v17 forState:1];

  v19 = UIImageGetTextFieldClearButtonDisabled();
  editablePlaceholderTextColor3 = [v23 editablePlaceholderTextColor];
  v21 = [v19 _flatImageWithColor:editablePlaceholderTextColor3];

  _clearButton3 = [self _clearButton];
  [_clearButton3 setImage:v21 forState:2];
}

- (void)pk_setPlaceholderColor:()PKAppearanceObject
{
  v4 = a3;
  objc_setAssociatedObject(self, sel_pk_placeholderColor, v4, 1);
  _placeholderLabel = [self _placeholderLabel];
  [_placeholderLabel setTextColor:v4];
}

@end