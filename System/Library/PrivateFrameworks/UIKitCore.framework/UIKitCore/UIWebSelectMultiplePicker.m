@interface UIWebSelectMultiplePicker
- (UIWebSelectMultiplePicker)initWithDOMHTMLSelectElement:(id)a3 cachedItems:(id)a4 singleSelectionItem:(id)a5 singleSelectionIndex:(unint64_t)a6 multipleSelection:(BOOL)a7;
- (id)pickerView:(id)a3 viewForRow:(int64_t)a4 forComponent:(int64_t)a5 reusingView:(id)a6;
- (int)_itemIndexForRowIndex:(int)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)pickerView:(id)a3 row:(int)a4 column:(int)a5 checked:(BOOL)a6;
@end

@implementation UIWebSelectMultiplePicker

- (UIWebSelectMultiplePicker)initWithDOMHTMLSelectElement:(id)a3 cachedItems:(id)a4 singleSelectionItem:(id)a5 singleSelectionIndex:(unint64_t)a6 multipleSelection:(BOOL)a7
{
  v7 = a7;
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
    [(UIWebSelectMultiplePicker *)v13 set_selectionNode:a3];
    [(UIWebSelectMultiplePicker *)v13 set_cachedItems:a4];
    [(UIWebSelectMultiplePicker *)v13 set_singleSelectionItem:a5];
    v13->_singleSelectionIndex = a6;
    v16 = 0;
    [a3 getTextWritingDirection:&v16 override:0];
    v13->_textAlignment = 2 * (v16 != 0);
    [(UIPickerView *)v13 setAllowsMultipleSelection:v7];
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
  v3 = [(UIPickerView *)self _needsLayout];
  v8.receiver = self;
  v8.super_class = UIWebSelectMultiplePicker;
  [(UIPickerView *)&v8 layoutSubviews];
  if (v3)
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

- (id)pickerView:(id)a3 viewForRow:(int64_t)a4 forComponent:(int64_t)a5 reusingView:(id)a6
{
  WebThreadLock();
  v9 = [objc_msgSend(-[NSArray objectAtIndex:](self->_cachedItems objectAtIndex:{a4), "node"), "createPickerCell"}];
  [(UIPickerView *)self _contentSizeForRow:a4 inComponent:a5];
  v11 = v10;
  v13 = v12;
  [v9 setFrame:{0.0, 0.0, v10, v12}];
  v14 = [v9 titleLabel];
  [v9 labelWidthForBounds:{0.0, 0.0, v11, v13}];
  v16 = v15;
  v17 = [v14 font];
  if (v16 != self->_maximumTextWidth || self->_fontSize == 0.0)
  {
    self->_maximumTextWidth = v16;
    [objc_msgSend(v14 "font")];
    self->_fontSize = adjustedFontSize(v17, self->_cachedItems, v16, v18);
  }

  [v14 setFont:{objc_msgSend(v17, "fontWithSize:")}];
  [v14 setLineBreakMode:0];
  [v14 setNumberOfLines:2];
  [v14 setTextAlignment:self->_textAlignment];
  return v9;
}

- (int)_itemIndexForRowIndex:(int)a3
{
  v4 = 0;
  v5 = a3;
  v6 = -1;
  do
  {
    v6 += [-[NSArray objectAtIndex:](self->_cachedItems objectAtIndex:{v4++), "isGroup"}] ^ 1;
  }

  while (v4 <= v5);
  return v6;
}

- (void)pickerView:(id)a3 row:(int)a4 column:(int)a5 checked:(BOOL)a6
{
  v6 = a6;
  v7 = *&a4;
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
    if (!v6)
    {
      return;
    }

    [(DOMHTMLSelectElement *)[(UIWebSelectMultiplePicker *)self _selectionNode] _activateItemAtIndex:[(UIWebSelectMultiplePicker *)self _itemIndexForRowIndex:v7]];
  }

  [v9 setSelected:v6];
}

@end