@interface TSKEditableTextFieldCell
- (TSKEditableTextFieldCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)beginEditing;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation TSKEditableTextFieldCell

- (TSKEditableTextFieldCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = TSKEditableTextFieldCell;
  v4 = [(TSKEditableTextFieldCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D75BB8]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v4->mTextField = v6;
    [(UITextField *)v6 setContentVerticalAlignment:0];
    [(UITextField *)v4->mTextField setTextAlignment:1];
    -[UITextField setFont:](v4->mTextField, "setFont:", [MEMORY[0x277D74300] systemFontOfSize:17.0]);
    [(UITextField *)v4->mTextField setReturnKeyType:9];
    [(UITextField *)v4->mTextField setUserInteractionEnabled:0];
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v4 selector:sel_textFieldDidEndEditing_ name:*MEMORY[0x277D770B8] object:v4->mTextField];
  }

  return v4;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  v3.receiver = self;
  v3.super_class = TSKEditableTextFieldCell;
  [(TSKEditableTextFieldCell *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = TSKEditableTextFieldCell;
  [(TSKEditableTextFieldCell *)&v15 layoutSubviews];
  [-[TSKEditableTextFieldCell contentView](self "contentView")];
  v17 = CGRectInset(v16, 10.0, 0.0);
  v18 = CGRectIntegral(v17);
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  v7 = [(UITextField *)self->mTextField contentVerticalAlignment];
  v8 = height + 1.0;
  if (height)
  {
    v8 = height;
  }

  if (!v7)
  {
    height = v8;
  }

  v9 = [(TSKEditableTextFieldCell *)self textLabel];
  v10 = [v9 text];
  if (v10 && [v10 length])
  {
    [v9 textRectForBounds:1 limitedToNumberOfLines:{x, y, width, height}];
    *&v11 = v11 + v12;
    v13 = *&v11;
    x = x + v13;
    width = width - v13;
  }

  if ([(TSKEditableTextFieldCell *)self showsReorderControl])
  {
    v14 = width + -40.0;
  }

  else
  {
    v14 = width;
  }

  [(UITextField *)self->mTextField setFrame:x, y, v14, height];
  [-[TSKEditableTextFieldCell contentView](self "contentView")];
}

- (void)beginEditing
{
  [(UITextField *)self->mTextField setUserInteractionEnabled:1];
  mTextField = self->mTextField;

  [(UITextField *)mTextField becomeFirstResponder];
}

@end