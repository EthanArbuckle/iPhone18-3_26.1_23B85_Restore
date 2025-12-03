@interface PKEducationalMessageTableViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKEducationalMessageTableViewCell)initWithReuseIdentifier:(id)identifier configuration:(id)configuration;
- (void)layoutSubviews;
@end

@implementation PKEducationalMessageTableViewCell

- (PKEducationalMessageTableViewCell)initWithReuseIdentifier:(id)identifier configuration:(id)configuration
{
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = PKEducationalMessageTableViewCell;
  v7 = [(PKEducationalMessageTableViewCell *)&v12 initWithStyle:0 reuseIdentifier:identifier];
  if (v7)
  {
    v8 = [[PKEducationalMessageView alloc] initWithConfiguration:configurationCopy];
    messageView = v7->_messageView;
    v7->_messageView = v8;

    contentView = [(PKEducationalMessageTableViewCell *)v7 contentView];
    [contentView addSubview:v7->_messageView];
  }

  return v7;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKEducationalMessageTableViewCell;
  [(PKEducationalMessageTableViewCell *)&v5 layoutSubviews];
  messageView = self->_messageView;
  contentView = [(PKEducationalMessageTableViewCell *)self contentView];
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