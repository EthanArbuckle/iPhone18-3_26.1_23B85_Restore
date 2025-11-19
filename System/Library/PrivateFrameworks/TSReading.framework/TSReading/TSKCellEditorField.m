@interface TSKCellEditorField
- (TSKCellEditorField)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setLeftSymbol:(id)a3;
- (void)setRightSymbol:(id)a3;
- (void)setText:(id)a3;
@end

@implementation TSKCellEditorField

- (TSKCellEditorField)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = TSKCellEditorField;
  v7 = [(TSKCellEditorField *)&v9 initWithFrame:?];
  if (v7)
  {
    v7->mTextView = [objc_alloc(MEMORY[0x277D75C40]) initWithFrame:{x, y, width, height}];
    v7->mLeftSymbolView = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{x, y, width, height}];
    v7->mRightSymbolView = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{x, y, width, height}];
    [(UILabel *)v7->mLeftSymbolView setBackgroundColor:[(TSKCellEditorField *)v7 p_symbolContainerBackgroundColor]];
    [(UILabel *)v7->mRightSymbolView setBackgroundColor:[(TSKCellEditorField *)v7 p_symbolContainerBackgroundColor]];
    [-[UILabel layer](v7->mLeftSymbolView "layer")];
    [-[UILabel layer](v7->mRightSymbolView "layer")];
    -[TSKCellEditorField setBackgroundColor:](v7, "setBackgroundColor:", [MEMORY[0x277D75348] colorWithRed:0.678431373 green:0.745098039 blue:0.678431373 alpha:1.0]);
    -[UITextView setBackgroundColor:](v7->mTextView, "setBackgroundColor:", [MEMORY[0x277D75348] colorWithRed:0.678431373 green:0.745098039 blue:0.678431373 alpha:1.0]);
    -[UITextView setFont:](v7->mTextView, "setFont:", [MEMORY[0x277D74300] systemFontOfSize:36.0]);
    [(TSKCellEditorField *)v7 addSubview:v7->mTextView];
    [(TSKCellEditorField *)v7 addSubview:v7->mLeftSymbolView];
    [(TSKCellEditorField *)v7 addSubview:v7->mRightSymbolView];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKCellEditorField;
  [(TSKCellEditorField *)&v3 dealloc];
}

- (void)setText:(id)a3
{
  [(UITextView *)self->mTextView setText:a3];

  [(TSKCellEditorField *)self setNeedsLayout];
}

- (void)setLeftSymbol:(id)a3
{
  [(UILabel *)self->mLeftSymbolView setText:a3];

  [(TSKCellEditorField *)self setNeedsLayout];
}

- (void)setRightSymbol:(id)a3
{
  [(UILabel *)self->mRightSymbolView setText:a3];

  [(TSKCellEditorField *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  [(TSKCellEditorField *)self frame];
  v4 = v3;
  v5 = [(UILabel *)[(TSKCellEditorField *)self leftSymbolView] text];
  v6 = [(TSKCellEditorField *)self leftSymbolView];
  if (v5)
  {
    [(UILabel *)v6 setHidden:0];
    [(UILabel *)[(TSKCellEditorField *)self leftSymbolView] sizeToFit];
    [(UILabel *)[(TSKCellEditorField *)self leftSymbolView] frame];
    [(UILabel *)[(TSKCellEditorField *)self leftSymbolView] setFrame:0.0, v7, v8, v9];
    [(UILabel *)[(TSKCellEditorField *)self leftSymbolView] bounds];
    v11 = v10;
  }

  else
  {
    [(UILabel *)v6 setHidden:1];
    v11 = 0.0;
  }

  v12 = [(UILabel *)[(TSKCellEditorField *)self rightSymbolView] text];
  v13 = [(TSKCellEditorField *)self rightSymbolView];
  if (v12)
  {
    [(UILabel *)v13 setHidden:0];
    [(UILabel *)[(TSKCellEditorField *)self rightSymbolView] sizeToFit];
    [(UILabel *)[(TSKCellEditorField *)self rightSymbolView] frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [(TSKCellEditorField *)self frame];
    v21 = v20;
    [(UILabel *)[(TSKCellEditorField *)self rightSymbolView] frame];
    v4 = v21 - v22;
    [(UILabel *)[(TSKCellEditorField *)self rightSymbolView] setFrame:v4, v15, v17, v19];
  }

  else
  {
    [(UILabel *)v13 setHidden:1];
  }

  [(TSKCellEditorField *)self frame];
  v24 = v23;
  v25 = [(TSKCellEditorField *)self textView];

  [(UITextView *)v25 setFrame:v11, 0.0, v4 - v11, v24];
}

@end