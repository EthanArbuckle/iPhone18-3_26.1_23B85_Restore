@interface TKVibrationPickerTableViewCell
- (BOOL)_isDisplayingRemovableTextField;
- (NSString)labelText;
- (TKVibrationPickerTableViewCell)initWithReuseIdentifier:(id)a3;
- (TKVibrationPickerTableViewCellDelegate)delegate;
- (UIColor)highlightedTextColor;
- (UIFont)regularTextFont;
- (void)_layoutRemovableTextField;
- (void)_makeRemovableTextFieldEditable:(BOOL)a3;
- (void)didTransitionToState:(unint64_t)a3;
- (void)layoutSubviews;
- (void)makeTextFieldResignFirstResponderIfNeeded;
- (void)setChecked:(BOOL)a3;
- (void)setEditable:(BOOL)a3;
- (void)setHighlightedTextColor:(id)a3;
- (void)setLabelText:(id)a3;
- (void)setRegularTextColor:(id)a3;
- (void)setRegularTextFont:(id)a3;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)willTransitionToState:(unint64_t)a3;
@end

@implementation TKVibrationPickerTableViewCell

- (TKVibrationPickerTableViewCell)initWithReuseIdentifier:(id)a3
{
  v3 = [(TKVibrationPickerTableViewCell *)self initWithStyle:1 reuseIdentifier:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75BB8]);
    removableTextField = v3->_removableTextField;
    v3->_removableTextField = v4;

    [TKVibrationInterfaceUtilities configureVibrationNameTextField:v3->_removableTextField];
    v6 = [(TKVibrationPickerTableViewCell *)v3 textLabel];
    v7 = v3->_removableTextField;
    v8 = [v6 textColor];
    [(UITextField *)v7 setTextColor:v8];

    v9 = v3->_removableTextField;
    v10 = [v6 backgroundColor];
    [(UITextField *)v9 setBackgroundColor:v10];

    [(UITextField *)v3->_removableTextField setDelegate:v3];
    v11 = +[TKUIKitConstants defaultTableViewCellTextColor];
    [(TKVibrationPickerTableViewCell *)v3 setRegularTextColor:v11];
  }

  return v3;
}

- (void)setEditable:(BOOL)a3
{
  if (self->_editable != a3)
  {
    self->_editable = a3;
    if (!a3)
    {
      [(TKVibrationPickerTableViewCell *)self _makeRemovableTextFieldEditable:0];
    }
  }
}

- (NSString)labelText
{
  if ([(TKVibrationPickerTableViewCell *)self _isDisplayingRemovableTextField])
  {
    v3 = [(UITextField *)self->_removableTextField text];
  }

  else
  {
    v4 = [(TKVibrationPickerTableViewCell *)self textLabel];
    v3 = [v4 text];
  }

  return v3;
}

- (void)setLabelText:(id)a3
{
  v5 = a3;
  if ([(TKVibrationPickerTableViewCell *)self _isDisplayingRemovableTextField])
  {
    [(UITextField *)self->_removableTextField setText:v5];
  }

  else
  {
    v4 = [(TKVibrationPickerTableViewCell *)self textLabel];
    [v4 setText:v5];
  }
}

- (UIFont)regularTextFont
{
  v2 = [(TKVibrationPickerTableViewCell *)self textLabel];
  v3 = [v2 font];

  return v3;
}

- (void)setRegularTextFont:(id)a3
{
  v7 = a3;
  v4 = [(TKVibrationPickerTableViewCell *)self textLabel];
  v5 = [v4 font];

  if (v5 != v7)
  {
    v6 = [(TKVibrationPickerTableViewCell *)self textLabel];
    [v6 setFont:v7];

    [(UITextField *)self->_removableTextField setFont:v7];
  }
}

- (void)setRegularTextColor:(id)a3
{
  v5 = a3;
  if (self->_regularTextColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_regularTextColor, a3);
    v6 = [(TKVibrationPickerTableViewCell *)self textLabel];
    [v6 setTextColor:v7];

    v5 = [(UITextField *)self->_removableTextField setTextColor:v7];
  }

  MEMORY[0x2821F9730](v5);
}

- (UIColor)highlightedTextColor
{
  v2 = [(TKVibrationPickerTableViewCell *)self textLabel];
  v3 = [v2 highlightedTextColor];

  return v3;
}

- (void)setHighlightedTextColor:(id)a3
{
  v4 = a3;
  v5 = [(TKVibrationPickerTableViewCell *)self textLabel];
  [v5 setHighlightedTextColor:v4];
}

- (void)setChecked:(BOOL)a3
{
  v3 = a3;
  v5 = [(TKVibrationPickerTableViewCell *)self accessoryType];
  if (v3 || !v5)
  {
    if (!v3 || v5 == 3)
    {
      return;
    }

    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  [(TKVibrationPickerTableViewCell *)self setAccessoryType:v6];
  v8 = [(TKVibrationPickerTableViewCell *)self textLabel];
  v7 = [(TKVibrationPickerTableViewCell *)self regularTextColor];
  [v8 setTextColor:v7];
}

- (BOOL)_isDisplayingRemovableTextField
{
  v2 = [(UITextField *)self->_removableTextField superview];
  v3 = v2 != 0;

  return v3;
}

- (void)makeTextFieldResignFirstResponderIfNeeded
{
  if ([(UITextField *)self->_removableTextField isFirstResponder])
  {
    removableTextField = self->_removableTextField;

    [(UITextField *)removableTextField resignFirstResponder];
  }
}

- (void)_layoutRemovableTextField
{
  if (self->_removableTextField)
  {
    v15 = [(TKVibrationPickerTableViewCell *)self textLabel];
    v3 = [v15 font];
    [(UITextField *)self->_removableTextField setFont:v3];
    v4 = [(TKVibrationPickerTableViewCell *)self contentView];
    [v4 bounds];
    v18 = CGRectInset(v17, 10.0, 0.0);
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
    v9 = [(TKVibrationPickerTableViewCell *)self indentationLevel];
    [(TKVibrationPickerTableViewCell *)self indentationWidth];
    v11 = v10 * v9;
    v19.origin.x = x + v10 * v9;
    v19.size.width = width - v11;
    v12 = v19.origin.x + 5.0;
    v19.origin.y = y;
    v19.size.height = height;
    v13 = CGRectGetMaxX(v19) + -10.0;
    [v3 descender];
    [(UITextField *)self->_removableTextField setFrame:v12, 0.0, v13, height + fabs(ceil(v14))];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TKVibrationPickerTableViewCell;
  [(TKVibrationPickerTableViewCell *)&v3 layoutSubviews];
  [(TKVibrationPickerTableViewCell *)self _layoutRemovableTextField];
}

- (void)didTransitionToState:(unint64_t)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = TKVibrationPickerTableViewCell;
  [(TKVibrationPickerTableViewCell *)&v5 didTransitionToState:?];
  if (v3)
  {
    [(TKVibrationPickerTableViewCell *)self _makeRemovableTextFieldEditable:[(TKVibrationPickerTableViewCell *)self isEditable]];
  }
}

- (void)willTransitionToState:(unint64_t)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = TKVibrationPickerTableViewCell;
  [(TKVibrationPickerTableViewCell *)&v5 willTransitionToState:?];
  if ((v3 & 1) == 0)
  {
    [(TKVibrationPickerTableViewCell *)self _makeRemovableTextFieldEditable:0];
  }
}

- (void)_makeRemovableTextFieldEditable:(BOOL)a3
{
  v3 = a3;
  if ([(TKVibrationPickerTableViewCell *)self _isDisplayingRemovableTextField]!= a3)
  {
    v10 = [(TKVibrationPickerTableViewCell *)self textLabel];
    removableTextField = self->_removableTextField;
    if (v3)
    {
      v6 = [v10 text];
      [(UITextField *)removableTextField setText:v6];

      [v10 setText:0];
      v7 = [(TKVibrationPickerTableViewCell *)self contentView];
      [v7 addSubview:self->_removableTextField];
    }

    else
    {
      v8 = [(UITextField *)self->_removableTextField text];
      [v10 setText:v8];

      v9 = [MEMORY[0x277D75D18] areAnimationsEnabled];
      [MEMORY[0x277D75D18] setAnimationsEnabled:1];
      [(UITextField *)self->_removableTextField resignFirstResponder];
      [MEMORY[0x277D75D18] setAnimationsEnabled:v9];
      [(UITextField *)self->_removableTextField setText:0];
      [(UITextField *)self->_removableTextField removeFromSuperview];
    }
  }
}

- (void)textFieldDidBeginEditing:(id)a3
{
  if ((UIKeyboardIsAutomaticAppearanceEnabled() & 1) == 0 && (UIKeyboardAutomaticIsOnScreen() & 1) == 0)
  {

    MEMORY[0x2821DE5F0]();
  }
}

- (void)textFieldDidEndEditing:(id)a3
{
  v6 = a3;
  v4 = [(TKVibrationPickerTableViewCell *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v6 text];
    [v4 vibrationPickerTableViewCell:self endedEditingWithText:v5];
  }

  if ((UIKeyboardIsAutomaticAppearanceEnabled() & 1) == 0)
  {
    UIKeyboardForceOrderOutAutomatic();
  }
}

- (TKVibrationPickerTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end