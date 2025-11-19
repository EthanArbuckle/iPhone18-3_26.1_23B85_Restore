@interface PKEducationalMessageTableCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKEducationalMessageTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)layoutSubviews;
- (void)setSpecifier:(id)a3;
@end

@implementation PKEducationalMessageTableCell

- (PKEducationalMessageTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = PKEducationalMessageTableCell;
  v9 = [(PSTableCell *)&v12 initWithStyle:a3 reuseIdentifier:a4];
  v10 = v9;
  if (v9)
  {
    [(PKEducationalMessageTableCell *)v9 setSpecifier:v8];
    [(PKEducationalMessageTableCell *)v10 setAutoresizingMask:18];
  }

  return v10;
}

- (void)setSpecifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x1E69C57F8]));
  v6 = [WeakRetained isEqual:v4];

  if ((v6 & 1) == 0)
  {
    v13.receiver = self;
    v13.super_class = PKEducationalMessageTableCell;
    [(PSTableCell *)&v13 setSpecifier:v4];
    messageView = self->_messageView;
    if (messageView)
    {
      [(PKEducationalMessageView *)messageView removeFromSuperview];
      v8 = self->_messageView;
      self->_messageView = 0;
    }

    v9 = [v4 objectForKeyedSubscript:@"messageViewConfigurationKey"];
    if (v9)
    {
      v10 = [[PKEducationalMessageView alloc] initWithConfiguration:v9];
      v11 = self->_messageView;
      self->_messageView = v10;

      v12 = [(PKEducationalMessageTableCell *)self contentView];
      [v12 addSubview:self->_messageView];
    }
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKEducationalMessageTableCell;
  [(PSTableCell *)&v5 layoutSubviews];
  messageView = self->_messageView;
  v4 = [(PKEducationalMessageTableCell *)self contentView];
  [v4 bounds];
  [(PKEducationalMessageView *)messageView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKEducationalMessageView *)self->_messageView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end