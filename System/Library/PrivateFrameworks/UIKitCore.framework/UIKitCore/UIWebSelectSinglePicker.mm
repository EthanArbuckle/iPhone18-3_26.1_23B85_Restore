@interface UIWebSelectSinglePicker
- (UIWebSelectSinglePicker)initWithDOMHTMLSelectElement:(id)a3 allItems:(id)a4;
- (id)pickerView:(id)a3 attributedTitleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (void)controlEndEditing;
- (void)dealloc;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
@end

@implementation UIWebSelectSinglePicker

- (UIWebSelectSinglePicker)initWithDOMHTMLSelectElement:(id)a3 allItems:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = UIWebSelectSinglePicker;
  v6 = [(UIPickerView *)&v21 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    [(UIPickerView *)v6 setDelegate:v6];
    [(UIPickerView *)v7 setDataSource:v7];
    [(UIView *)v7 setAutoresizingMask:18];
    v7->_selectNode = a3;
    v7->_optionItems = a4;
    v7->_selectedOptionItem = 0;
    v7->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    v7->_optionToSelectWhenDone = 0;
    v7->_indexToSelectWhenDone = 0x7FFFFFFFFFFFFFFFLL;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    optionItems = v7->_optionItems;
    v9 = [(NSArray *)optionItems countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(optionItems);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          if (([(UIWebSelectedItemPrivate *)v14 isGroup]& 1) == 0)
          {
            if ([(UIWebSelectedItemPrivate *)v14 selected])
            {
              v7->_selectedOptionItem = v14;
              v7->_selectedIndex = v11;
              goto LABEL_14;
            }

            ++v11;
          }
        }

        v10 = [(NSArray *)optionItems countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
    [(UIPickerView *)v7 reloadAllComponents];
    selectedIndex = v7->_selectedIndex;
    if (selectedIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(UIPickerView *)v7 selectRow:selectedIndex inComponent:0 animated:0];
    }
  }

  return v7;
}

- (void)dealloc
{
  [(UIPickerView *)self setDelegate:0];
  [(UIPickerView *)self setDataSource:0];

  v3.receiver = self;
  v3.super_class = UIWebSelectSinglePicker;
  [(UIPickerView *)&v3 dealloc];
}

- (void)controlEndEditing
{
  optionToSelectWhenDone = self->_optionToSelectWhenDone;
  if (optionToSelectWhenDone && optionToSelectWhenDone != self->_selectedOptionItem)
  {
    WebThreadLock();
    [(UIWebSelectedItemPrivate *)self->_selectedOptionItem unselect];
    [(DOMHTMLSelectElement *)self->_selectNode _activateItemAtIndex:LODWORD(self->_indexToSelectWhenDone)];
    v4 = self->_optionToSelectWhenDone;

    [(UIWebSelectedItemPrivate *)v4 setSelected:1];
  }
}

- (id)pickerView:(id)a3 attributedTitleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  WebThreadLock();
  v7 = [-[NSArray objectAtIndex:](self->_optionItems objectAtIndex:{a4), "node"}];
  v8 = [objc_msgSend(v7 "text")];
  v9 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v8];
  if ([v7 disabled])
  {
    [v9 addAttribute:*off_1E70EC920 value:+[UIColor colorWithWhite:alpha:](UIColor range:{"colorWithWhite:alpha:", 0.0, 0.3), 0, objc_msgSend(v8, "length")}];
  }

  return v9;
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  WebThreadLock();
  if ([objc_msgSend(-[NSArray objectAtIndex:](self->_optionItems objectAtIndex:{a4), "node"), "disabled"}])
  {
    v7 = a4;
    while (v7 > 0)
    {
      if (([objc_msgSend(-[NSArray objectAtIndex:](self->_optionItems objectAtIndex:{--v7), "node"), "disabled"}] & 1) == 0)
      {
LABEL_10:
        [(UIPickerView *)self selectRow:v7 inComponent:0 animated:1];
        a4 = v7;
        goto LABEL_11;
      }
    }

    v7 = a4;
    while (++v7 < [(NSArray *)self->_optionItems count])
    {
      if (([objc_msgSend(-[NSArray objectAtIndex:](self->_optionItems objectAtIndex:{v7), "node"), "disabled"}] & 1) == 0)
      {
        if (v7 == 0x7FFFFFFFFFFFFFFFLL)
        {
          return;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_11:
    self->_indexToSelectWhenDone = a4;
    self->_optionToSelectWhenDone = [(NSArray *)self->_optionItems objectAtIndex:a4];
  }
}

@end