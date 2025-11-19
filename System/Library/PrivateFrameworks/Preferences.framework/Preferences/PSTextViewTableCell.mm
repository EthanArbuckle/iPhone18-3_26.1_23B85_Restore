@interface PSTextViewTableCell
- (BOOL)resignFirstResponder;
- (PSTextViewTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)_adjustTextView:(id)a3 updateTable:(BOOL)a4 withSpecifier:(id)a5;
- (void)cellRemovedFromView;
- (void)layoutSubviews;
- (void)setTextView:(id)a3;
- (void)setValue:(id)a3;
- (void)textContentViewDidEndEditing:(id)a3;
@end

@implementation PSTextViewTableCell

- (PSTextViewTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  v20.receiver = self;
  v20.super_class = PSTextViewTableCell;
  v10 = [(PSTableCell *)&v20 initWithStyle:a3 reuseIdentifier:v8 specifier:v9];
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
    if (v9[2])
    {
      WeakRetained = objc_loadWeakRetained(v9 + 1);
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v17 = [v9 performGetter];
        [(PSTextViewTableCell *)v11 setValue:v17];
      }
    }

    if (v9[3] && v9[2])
    {
      v18 = objc_loadWeakRetained(v9 + 1);
      [(PSTableCell *)v11 setValueChangedTarget:v18 action:v9[3] specifier:v9];
    }
  }

  return v11;
}

- (void)setValue:(id)a3
{
  [(UITextContentView *)self->_textView setContentToHTMLString:a3];
  [(PSTextViewTableCell *)self setNeedsLayout];

  [(PSTextViewTableCell *)self layoutIfNeeded];
}

- (void)cellRemovedFromView
{
  v3 = [(PSTableCell *)self specifier];
  v5.receiver = self;
  v5.super_class = PSTextViewTableCell;
  [(PSTableCell *)&v5 cellRemovedFromView];
  if ([(UITextContentView *)self->_textView isEditing])
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    [(PSTableCell *)self setSpecifier:v3];
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PSTextViewTableCell;
  [(PSTableCell *)&v5 layoutSubviews];
  v3 = [(PSTextViewTableCell *)self textView];
  v4 = [(PSTableCell *)self specifier];
  [(PSTextViewTableCell *)self _adjustTextView:v3 updateTable:1 withSpecifier:v4];
}

- (void)_adjustTextView:(id)a3 updateTable:(BOOL)a4 withSpecifier:(id)a5
{
  v6 = a4;
  v25 = a3;
  v7 = a5;
  v8 = [v7 propertyForKey:@"textViewBottomMargin"];
  if (v8)
  {
    v9 = [v25 text];
    v10 = PSTextViewInsets();
    v12 = v11;
    v13 = [v25 webView];
    [v13 frame];
    v14 = v12 + v10 + CGRectGetHeight(v27);
    [v8 floatValue];
    v16 = v14 + v15;

    *&v17 = v16;
    v18 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
    v19 = [v7 propertyForKey:@"height"];
    v20 = [v19 isEqual:v18];

    if ((v20 & 1) == 0)
    {
      if (v6)
      {
        v21 = [v7 target];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = [v7 target];
          v23 = [v22 table];
        }

        else
        {
          v23 = 0;
        }

        v24 = [MEMORY[0x1E69DD250] areAnimationsEnabled];
        [MEMORY[0x1E69DD250] setAnimationsEnabled:0];
        [v23 beginUpdates];
        [v7 setProperty:v18 forKey:@"height"];
        [v23 endUpdates];
        [MEMORY[0x1E69DD250] setAnimationsEnabled:v24];
      }

      else
      {
        [v7 setProperty:v18 forKey:@"height"];
      }
    }
  }
}

- (void)textContentViewDidEndEditing:(id)a3
{
  v11 = a3;
  v4 = [(PSTableCell *)self cellTarget];
  if (v4)
  {
    v5 = v4;
    v6 = [(PSTableCell *)self specifier];

    if (v6)
    {
      [(PSTableCell *)self cellAction];
      v7 = [(PSTableCell *)self cellTarget];
      v8 = [v11 contentAsHTMLString];
      v9 = [(PSTableCell *)self specifier];
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

- (void)setTextView:(id)a3
{
  v5 = a3;
  if (self->_textView != v5)
  {
    v8 = v5;
    v6 = [(PSTextViewTableCell *)self contentView];
    [v6 addSubview:v8];

    textView = self->_textView;
    if (textView)
    {
      [(UITextContentView *)textView removeFromSuperview];
    }

    objc_storeStrong(&self->_textView, a3);
    [(UITextContentView *)self->_textView setDelegate:self];
    v5 = v8;
  }
}

@end