@interface UIWebSelectMultiplePicker
- (UIWebSelectMultiplePicker)initWithDOMHTMLSelectElement:(id)element cachedItems:(id)items singleSelectionItem:(id)item singleSelectionIndex:(unint64_t)index multipleSelection:(BOOL)selection;
- (id)pickerView:(id)view viewForRow:(int64_t)row forComponent:(int64_t)component reusingView:(id)reusingView;
- (int)_itemIndexForRowIndex:(int)index;
- (void)dealloc;
- (void)layoutSubviews;
- (void)pickerView:(id)view row:(int)row column:(int)column checked:(BOOL)checked;
@end

@implementation UIWebSelectMultiplePicker

- (UIWebSelectMultiplePicker)initWithDOMHTMLSelectElement:(id)element cachedItems:(id)items singleSelectionItem:(id)item singleSelectionIndex:(unint64_t)index multipleSelection:(BOOL)selection
{
  selectionCopy = selection;
  v17.receiver = self;
  v17.super_class = UIWebSelectMultiplePicker;
  v12 = [(UIPickerView *)&v17 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v13 = v12;
  if (v12)
  {
    [(UIView *)v12 setAutoresizingMask:18];
    [(UIPickerView *)v13 setDataSource:v13];
    [(UIPickerView *)v13 setDelegate:v13];
    [(UIPickerView *)v13 _setUsesCheckedSelection:1];
    [(UIPickerView *)v13 _setMagnifierEnabled:0];
    [(UIWebSelectMultiplePicker *)v13 set_selectionNode:element];
    [(UIWebSelectMultiplePicker *)v13 set_cachedItems:items];
    [(UIWebSelectMultiplePicker *)v13 set_singleSelectionItem:item];
    v13->_singleSelectionIndex = index;
    v16 = 0;
    [element getTextWritingDirection:&v16 override:0];
    v13->_textAlignment = 2 * (v16 != 0);
    [(UIPickerView *)v13 setAllowsMultipleSelection:selectionCopy];
    +[UIKeyboard defaultSizeForInterfaceOrientation:](UIKeyboard, "defaultSizeForInterfaceOrientation:", [UIApp _defaultSceneInterfaceOrientationReturningUnknownForNilScene:0]);
    [(UIView *)v13 setSize:?];
    [(UIPickerView *)v13 reloadAllComponents];
    singleSelectionIndex = v13->_singleSelectionIndex;
    if (singleSelectionIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(UIPickerView *)v13 selectRow:singleSelectionIndex inComponent:0 animated:0];
    }
  }

  return v13;
}

- (void)dealloc
{
  [(UIPickerView *)self setDataSource:0];
  [(UIPickerView *)self setDelegate:0];
  [(UIWebSelectMultiplePicker *)self set_selectionNode:0];
  [(UIWebSelectMultiplePicker *)self set_cachedItems:0];
  [(UIWebSelectMultiplePicker *)self set_singleSelectionItem:0];
  v3.receiver = self;
  v3.super_class = UIWebSelectMultiplePicker;
  [(UIPickerView *)&v3 dealloc];
}

- (void)layoutSubviews
{
  _needsLayout = [(UIPickerView *)self _needsLayout];
  v8.receiver = self;
  v8.super_class = UIWebSelectMultiplePicker;
  [(UIPickerView *)&v8 layoutSubviews];
  if (_needsLayout)
  {
    singleSelectionIndex = self->_singleSelectionIndex;
    if (singleSelectionIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(UIPickerView *)self selectRow:singleSelectionIndex inComponent:0 animated:0];
    }
  }

  layoutWidth = self->_layoutWidth;
  [(UIView *)self frame];
  if (layoutWidth != v6)
  {
    [(UIPickerView *)self reloadAllComponents];
    [(UIView *)self frame];
    self->_layoutWidth = v7;
  }
}

- (id)pickerView:(id)view viewForRow:(int64_t)row forComponent:(int64_t)component reusingView:(id)reusingView
{
  WebThreadLock();
  v9 = [objc_msgSend(-[NSArray objectAtIndex:](self->_cachedItems objectAtIndex:{row), "node"), "createPickerCell"}];
  [(UIPickerView *)self _contentSizeForRow:row inComponent:component];
  v11 = v10;
  v13 = v12;
  [v9 setFrame:{0.0, 0.0, v10, v12}];
  titleLabel = [v9 titleLabel];
  [v9 labelWidthForBounds:{0.0, 0.0, v11, v13}];
  v16 = v15;
  font = [titleLabel font];
  if (v16 != self->_maximumTextWidth || self->_fontSize == 0.0)
  {
    self->_maximumTextWidth = v16;
    [objc_msgSend(titleLabel "font")];
    self->_fontSize = adjustedFontSize(font, self->_cachedItems, v16, v18);
  }

  [titleLabel setFont:{objc_msgSend(font, "fontWithSize:")}];
  [titleLabel setLineBreakMode:0];
  [titleLabel setNumberOfLines:2];
  [titleLabel setTextAlignment:self->_textAlignment];
  return v9;
}

- (int)_itemIndexForRowIndex:(int)index
{
  v4 = 0;
  indexCopy = index;
  v6 = -1;
  do
  {
    v6 += [-[NSArray objectAtIndex:](self->_cachedItems objectAtIndex:{v4++), "isGroup"}] ^ 1;
  }

  while (v4 <= indexCopy);
  return v6;
}

- (void)pickerView:(id)view row:(int)row column:(int)column checked:(BOOL)checked
{
  checkedCopy = checked;
  v7 = *&row;
  WebThreadLock();
  v9 = [(NSArray *)self->_cachedItems objectAtIndex:v7];
  if ([(UIPickerView *)self allowsMultipleSelection])
  {
    [(DOMHTMLSelectElement *)[(UIWebSelectMultiplePicker *)self _selectionNode] _activateItemAtIndex:[(UIWebSelectMultiplePicker *)self _itemIndexForRowIndex:v7] allowMultipleSelection:1];
  }

  else
  {
    [(UIWebSelectedItemPrivate *)self->_singleSelectionItem unselect];
    [(UIWebSelectMultiplePicker *)self set_singleSelectionItem:v9];
    self->_singleSelectionIndex = v7;
    if (!checkedCopy)
    {
      return;
    }

    [(DOMHTMLSelectElement *)[(UIWebSelectMultiplePicker *)self _selectionNode] _activateItemAtIndex:[(UIWebSelectMultiplePicker *)self _itemIndexForRowIndex:v7]];
  }

  [v9 setSelected:checkedCopy];
}

@end