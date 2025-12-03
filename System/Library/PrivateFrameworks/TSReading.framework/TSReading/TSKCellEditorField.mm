@interface TSKCellEditorField
- (TSKCellEditorField)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setLeftSymbol:(id)symbol;
- (void)setRightSymbol:(id)symbol;
- (void)setText:(id)text;
@end

@implementation TSKCellEditorField

- (TSKCellEditorField)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (void)setText:(id)text
{
  [(UITextView *)self->mTextView setText:text];

  [(TSKCellEditorField *)self setNeedsLayout];
}

- (void)setLeftSymbol:(id)symbol
{
  [(UILabel *)self->mLeftSymbolView setText:symbol];

  [(TSKCellEditorField *)self setNeedsLayout];
}

- (void)setRightSymbol:(id)symbol
{
  [(UILabel *)self->mRightSymbolView setText:symbol];

  [(TSKCellEditorField *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  [(TSKCellEditorField *)self frame];
  v4 = v3;
  text = [(UILabel *)[(TSKCellEditorField *)self leftSymbolView] text];
  leftSymbolView = [(TSKCellEditorField *)self leftSymbolView];
  if (text)
  {
    [(UILabel *)leftSymbolView setHidden:0];
    [(UILabel *)[(TSKCellEditorField *)self leftSymbolView] sizeToFit];
    [(UILabel *)[(TSKCellEditorField *)self leftSymbolView] frame];
    [(UILabel *)[(TSKCellEditorField *)self leftSymbolView] setFrame:0.0, v7, v8, v9];
    [(UILabel *)[(TSKCellEditorField *)self leftSymbolView] bounds];
    v11 = v10;
  }

  else
  {
    [(UILabel *)leftSymbolView setHidden:1];
    v11 = 0.0;
  }

  text2 = [(UILabel *)[(TSKCellEditorField *)self rightSymbolView] text];
  rightSymbolView = [(TSKCellEditorField *)self rightSymbolView];
  if (text2)
  {
    [(UILabel *)rightSymbolView setHidden:0];
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
    [(UILabel *)rightSymbolView setHidden:1];
  }

  [(TSKCellEditorField *)self frame];
  v24 = v23;
  textView = [(TSKCellEditorField *)self textView];

  [(UITextView *)textView setFrame:v11, 0.0, v4 - v11, v24];
}

@end