@interface PSTextViewTableCell
- (BOOL)resignFirstResponder;
- (PSTextViewTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)_adjustTextView:(id)view updateTable:(BOOL)table withSpecifier:(id)specifier;
- (void)cellRemovedFromView;
- (void)layoutSubviews;
- (void)setTextView:(id)view;
- (void)setValue:(id)value;
- (void)textContentViewDidEndEditing:(id)editing;
@end

@implementation PSTextViewTableCell

- (PSTextViewTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  identifierCopy = identifier;
  specifierCopy = specifier;
  v20.receiver = self;
  v20.super_class = PSTextViewTableCell;
  v10 = [(PSTableCell *)&v20 initWithStyle:style reuseIdentifier:identifierCopy specifier:specifierCopy];
  v11 = v10;
  if (v10)
  {
    [(PSTextViewTableCell *)v10 setAccessoryType:0];
    [(PSTextViewTableCell *)v11 setSelectionStyle:0];
    v12 = [PSTextView alloc];
    v13 = [(UITextContentView *)v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(PSTextView *)v13 setCell:v11];
    [(PSTextView *)v13 setTextLoupeVisibility:1];
    v14 = UISystemFontForSize();
    [(UITextContentView *)v13 setFont:v14];

    [(PSTextViewTableCell *)v11 setTextView:v13];
    if (specifierCopy[2])
    {
      WeakRetained = objc_loadWeakRetained(specifierCopy + 1);
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        performGetter = [specifierCopy performGetter];
        [(PSTextViewTableCell *)v11 setValue:performGetter];
      }
    }

    if (specifierCopy[3] && specifierCopy[2])
    {
      v18 = objc_loadWeakRetained(specifierCopy + 1);
      [(PSTableCell *)v11 setValueChangedTarget:v18 action:specifierCopy[3] specifier:specifierCopy];
    }
  }

  return v11;
}

- (void)setValue:(id)value
{
  [(UITextContentView *)self->_textView setContentToHTMLString:value];
  [(PSTextViewTableCell *)self setNeedsLayout];

  [(PSTextViewTableCell *)self layoutIfNeeded];
}

- (void)cellRemovedFromView
{
  specifier = [(PSTableCell *)self specifier];
  v5.receiver = self;
  v5.super_class = PSTextViewTableCell;
  [(PSTableCell *)&v5 cellRemovedFromView];
  if ([(UITextContentView *)self->_textView isEditing])
  {
    v4 = specifier == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    [(PSTableCell *)self setSpecifier:specifier];
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PSTextViewTableCell;
  [(PSTableCell *)&v5 layoutSubviews];
  textView = [(PSTextViewTableCell *)self textView];
  specifier = [(PSTableCell *)self specifier];
  [(PSTextViewTableCell *)self _adjustTextView:textView updateTable:1 withSpecifier:specifier];
}

- (void)_adjustTextView:(id)view updateTable:(BOOL)table withSpecifier:(id)specifier
{
  tableCopy = table;
  viewCopy = view;
  specifierCopy = specifier;
  v8 = [specifierCopy propertyForKey:@"textViewBottomMargin"];
  if (v8)
  {
    text = [viewCopy text];
    v10 = PSTextViewInsets();
    v12 = v11;
    webView = [viewCopy webView];
    [webView frame];
    v14 = v12 + v10 + CGRectGetHeight(v27);
    [v8 floatValue];
    v16 = v14 + v15;

    *&v17 = v16;
    v18 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
    v19 = [specifierCopy propertyForKey:@"height"];
    v20 = [v19 isEqual:v18];

    if ((v20 & 1) == 0)
    {
      if (tableCopy)
      {
        target = [specifierCopy target];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          target2 = [specifierCopy target];
          table = [target2 table];
        }

        else
        {
          table = 0;
        }

        areAnimationsEnabled = [MEMORY[0x1E69DD250] areAnimationsEnabled];
        [MEMORY[0x1E69DD250] setAnimationsEnabled:0];
        [table beginUpdates];
        [specifierCopy setProperty:v18 forKey:@"height"];
        [table endUpdates];
        [MEMORY[0x1E69DD250] setAnimationsEnabled:areAnimationsEnabled];
      }

      else
      {
        [specifierCopy setProperty:v18 forKey:@"height"];
      }
    }
  }
}

- (void)textContentViewDidEndEditing:(id)editing
{
  editingCopy = editing;
  cellTarget = [(PSTableCell *)self cellTarget];
  if (cellTarget)
  {
    v5 = cellTarget;
    specifier = [(PSTableCell *)self specifier];

    if (specifier)
    {
      [(PSTableCell *)self cellAction];
      cellTarget2 = [(PSTableCell *)self cellTarget];
      contentAsHTMLString = [editingCopy contentAsHTMLString];
      specifier2 = [(PSTableCell *)self specifier];
      v10 = SFPerformSelector2();
    }
  }
}

- (BOOL)resignFirstResponder
{
  v5.receiver = self;
  v5.super_class = PSTextViewTableCell;
  if (![(PSTextViewTableCell *)&v5 isFirstResponder])
  {
    return [(UITextContentView *)self->_textView resignFirstResponder];
  }

  v4.receiver = self;
  v4.super_class = PSTextViewTableCell;
  return [(PSTextViewTableCell *)&v4 resignFirstResponder];
}

- (void)setTextView:(id)view
{
  viewCopy = view;
  if (self->_textView != viewCopy)
  {
    v8 = viewCopy;
    contentView = [(PSTextViewTableCell *)self contentView];
    [contentView addSubview:v8];

    textView = self->_textView;
    if (textView)
    {
      [(UITextContentView *)textView removeFromSuperview];
    }

    objc_storeStrong(&self->_textView, view);
    [(UITextContentView *)self->_textView setDelegate:self];
    viewCopy = v8;
  }
}

@end