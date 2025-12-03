@interface TKVibrationPickerTableViewCell
- (BOOL)_isDisplayingRemovableTextField;
- (NSString)labelText;
- (TKVibrationPickerTableViewCell)initWithReuseIdentifier:(id)identifier;
- (TKVibrationPickerTableViewCellDelegate)delegate;
- (UIColor)highlightedTextColor;
- (UIFont)regularTextFont;
- (void)_layoutRemovableTextField;
- (void)_makeRemovableTextFieldEditable:(BOOL)editable;
- (void)didTransitionToState:(unint64_t)state;
- (void)layoutSubviews;
- (void)makeTextFieldResignFirstResponderIfNeeded;
- (void)setChecked:(BOOL)checked;
- (void)setEditable:(BOOL)editable;
- (void)setHighlightedTextColor:(id)color;
- (void)setLabelText:(id)text;
- (void)setRegularTextColor:(id)color;
- (void)setRegularTextFont:(id)font;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)willTransitionToState:(unint64_t)state;
@end

@implementation TKVibrationPickerTableViewCell

- (TKVibrationPickerTableViewCell)initWithReuseIdentifier:(id)identifier
{
  v3 = [(TKVibrationPickerTableViewCell *)self initWithStyle:1 reuseIdentifier:identifier];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75BB8]);
    removableTextField = v3->_removableTextField;
    v3->_removableTextField = v4;

    [TKVibrationInterfaceUtilities configureVibrationNameTextField:v3->_removableTextField];
    textLabel = [(TKVibrationPickerTableViewCell *)v3 textLabel];
    v7 = v3->_removableTextField;
    textColor = [textLabel textColor];
    [(UITextField *)v7 setTextColor:textColor];

    v9 = v3->_removableTextField;
    backgroundColor = [textLabel backgroundColor];
    [(UITextField *)v9 setBackgroundColor:backgroundColor];

    [(UITextField *)v3->_removableTextField setDelegate:v3];
    v11 = +[TKUIKitConstants defaultTableViewCellTextColor];
    [(TKVibrationPickerTableViewCell *)v3 setRegularTextColor:v11];
  }

  return v3;
}

- (void)setEditable:(BOOL)editable
{
  if (self->_editable != editable)
  {
    self->_editable = editable;
    if (!editable)
    {
      [(TKVibrationPickerTableViewCell *)self _makeRemovableTextFieldEditable:0];
    }
  }
}

- (NSString)labelText
{
  if ([(TKVibrationPickerTableViewCell *)self _isDisplayingRemovableTextField])
  {
    text = [(UITextField *)self->_removableTextField text];
  }

  else
  {
    textLabel = [(TKVibrationPickerTableViewCell *)self textLabel];
    text = [textLabel text];
  }

  return text;
}

- (void)setLabelText:(id)text
{
  textCopy = text;
  if ([(TKVibrationPickerTableViewCell *)self _isDisplayingRemovableTextField])
  {
    [(UITextField *)self->_removableTextField setText:textCopy];
  }

  else
  {
    textLabel = [(TKVibrationPickerTableViewCell *)self textLabel];
    [textLabel setText:textCopy];
  }
}

- (UIFont)regularTextFont
{
  textLabel = [(TKVibrationPickerTableViewCell *)self textLabel];
  font = [textLabel font];

  return font;
}

- (void)setRegularTextFont:(id)font
{
  fontCopy = font;
  textLabel = [(TKVibrationPickerTableViewCell *)self textLabel];
  font = [textLabel font];

  if (font != fontCopy)
  {
    textLabel2 = [(TKVibrationPickerTableViewCell *)self textLabel];
    [textLabel2 setFont:fontCopy];

    [(UITextField *)self->_removableTextField setFont:fontCopy];
  }
}

- (void)setRegularTextColor:(id)color
{
  colorCopy = color;
  if (self->_regularTextColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(&self->_regularTextColor, color);
    textLabel = [(TKVibrationPickerTableViewCell *)self textLabel];
    [textLabel setTextColor:v7];

    colorCopy = [(UITextField *)self->_removableTextField setTextColor:v7];
  }

  MEMORY[0x2821F9730](colorCopy);
}

- (UIColor)highlightedTextColor
{
  textLabel = [(TKVibrationPickerTableViewCell *)self textLabel];
  highlightedTextColor = [textLabel highlightedTextColor];

  return highlightedTextColor;
}

- (void)setHighlightedTextColor:(id)color
{
  colorCopy = color;
  textLabel = [(TKVibrationPickerTableViewCell *)self textLabel];
  [textLabel setHighlightedTextColor:colorCopy];
}

- (void)setChecked:(BOOL)checked
{
  checkedCopy = checked;
  accessoryType = [(TKVibrationPickerTableViewCell *)self accessoryType];
  if (checkedCopy || !accessoryType)
  {
    if (!checkedCopy || accessoryType == 3)
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
  textLabel = [(TKVibrationPickerTableViewCell *)self textLabel];
  regularTextColor = [(TKVibrationPickerTableViewCell *)self regularTextColor];
  [textLabel setTextColor:regularTextColor];
}

- (BOOL)_isDisplayingRemovableTextField
{
  superview = [(UITextField *)self->_removableTextField superview];
  v3 = superview != 0;

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
    textLabel = [(TKVibrationPickerTableViewCell *)self textLabel];
    font = [textLabel font];
    [(UITextField *)self->_removableTextField setFont:font];
    contentView = [(TKVibrationPickerTableViewCell *)self contentView];
    [contentView bounds];
    v18 = CGRectInset(v17, 10.0, 0.0);
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
    indentationLevel = [(TKVibrationPickerTableViewCell *)self indentationLevel];
    [(TKVibrationPickerTableViewCell *)self indentationWidth];
    v11 = v10 * indentationLevel;
    v19.origin.x = x + v10 * indentationLevel;
    v19.size.width = width - v11;
    v12 = v19.origin.x + 5.0;
    v19.origin.y = y;
    v19.size.height = height;
    v13 = CGRectGetMaxX(v19) + -10.0;
    [font descender];
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

- (void)didTransitionToState:(unint64_t)state
{
  stateCopy = state;
  v5.receiver = self;
  v5.super_class = TKVibrationPickerTableViewCell;
  [(TKVibrationPickerTableViewCell *)&v5 didTransitionToState:?];
  if (stateCopy)
  {
    [(TKVibrationPickerTableViewCell *)self _makeRemovableTextFieldEditable:[(TKVibrationPickerTableViewCell *)self isEditable]];
  }
}

- (void)willTransitionToState:(unint64_t)state
{
  stateCopy = state;
  v5.receiver = self;
  v5.super_class = TKVibrationPickerTableViewCell;
  [(TKVibrationPickerTableViewCell *)&v5 willTransitionToState:?];
  if ((stateCopy & 1) == 0)
  {
    [(TKVibrationPickerTableViewCell *)self _makeRemovableTextFieldEditable:0];
  }
}

- (void)_makeRemovableTextFieldEditable:(BOOL)editable
{
  editableCopy = editable;
  if ([(TKVibrationPickerTableViewCell *)self _isDisplayingRemovableTextField]!= editable)
  {
    textLabel = [(TKVibrationPickerTableViewCell *)self textLabel];
    removableTextField = self->_removableTextField;
    if (editableCopy)
    {
      text = [textLabel text];
      [(UITextField *)removableTextField setText:text];

      [textLabel setText:0];
      contentView = [(TKVibrationPickerTableViewCell *)self contentView];
      [contentView addSubview:self->_removableTextField];
    }

    else
    {
      text2 = [(UITextField *)self->_removableTextField text];
      [textLabel setText:text2];

      areAnimationsEnabled = [MEMORY[0x277D75D18] areAnimationsEnabled];
      [MEMORY[0x277D75D18] setAnimationsEnabled:1];
      [(UITextField *)self->_removableTextField resignFirstResponder];
      [MEMORY[0x277D75D18] setAnimationsEnabled:areAnimationsEnabled];
      [(UITextField *)self->_removableTextField setText:0];
      [(UITextField *)self->_removableTextField removeFromSuperview];
    }
  }
}

- (void)textFieldDidBeginEditing:(id)editing
{
  if ((UIKeyboardIsAutomaticAppearanceEnabled() & 1) == 0 && (UIKeyboardAutomaticIsOnScreen() & 1) == 0)
  {

    MEMORY[0x2821DE5F0]();
  }
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  delegate = [(TKVibrationPickerTableViewCell *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    text = [editingCopy text];
    [delegate vibrationPickerTableViewCell:self endedEditingWithText:text];
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