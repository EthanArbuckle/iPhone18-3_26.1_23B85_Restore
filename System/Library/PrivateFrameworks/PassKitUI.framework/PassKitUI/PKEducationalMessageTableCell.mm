@interface PKEducationalMessageTableCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKEducationalMessageTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)layoutSubviews;
- (void)setSpecifier:(id)specifier;
@end

@implementation PKEducationalMessageTableCell

- (PKEducationalMessageTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v12.receiver = self;
  v12.super_class = PKEducationalMessageTableCell;
  v9 = [(PSTableCell *)&v12 initWithStyle:style reuseIdentifier:identifier];
  v10 = v9;
  if (v9)
  {
    [(PKEducationalMessageTableCell *)v9 setSpecifier:specifierCopy];
    [(PKEducationalMessageTableCell *)v10 setAutoresizingMask:18];
  }

  return v10;
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x1E69C57F8]));
  v6 = [WeakRetained isEqual:specifierCopy];

  if ((v6 & 1) == 0)
  {
    v13.receiver = self;
    v13.super_class = PKEducationalMessageTableCell;
    [(PSTableCell *)&v13 setSpecifier:specifierCopy];
    messageView = self->_messageView;
    if (messageView)
    {
      [(PKEducationalMessageView *)messageView removeFromSuperview];
      v8 = self->_messageView;
      self->_messageView = 0;
    }

    v9 = [specifierCopy objectForKeyedSubscript:@"messageViewConfigurationKey"];
    if (v9)
    {
      v10 = [[PKEducationalMessageView alloc] initWithConfiguration:v9];
      v11 = self->_messageView;
      self->_messageView = v10;

      contentView = [(PKEducationalMessageTableCell *)self contentView];
      [contentView addSubview:self->_messageView];
    }
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKEducationalMessageTableCell;
  [(PSTableCell *)&v5 layoutSubviews];
  messageView = self->_messageView;
  contentView = [(PKEducationalMessageTableCell *)self contentView];
  [contentView bounds];
  [(PKEducationalMessageView *)messageView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKEducationalMessageView *)self->_messageView sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end