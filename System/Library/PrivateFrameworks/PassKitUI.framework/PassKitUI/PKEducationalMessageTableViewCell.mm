@interface PKEducationalMessageTableViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKEducationalMessageTableViewCell)initWithReuseIdentifier:(id)a3 configuration:(id)a4;
- (void)layoutSubviews;
@end

@implementation PKEducationalMessageTableViewCell

- (PKEducationalMessageTableViewCell)initWithReuseIdentifier:(id)a3 configuration:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = PKEducationalMessageTableViewCell;
  v7 = [(PKEducationalMessageTableViewCell *)&v12 initWithStyle:0 reuseIdentifier:a3];
  if (v7)
  {
    v8 = [[PKEducationalMessageView alloc] initWithConfiguration:v6];
    messageView = v7->_messageView;
    v7->_messageView = v8;

    v10 = [(PKEducationalMessageTableViewCell *)v7 contentView];
    [v10 addSubview:v7->_messageView];
  }

  return v7;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKEducationalMessageTableViewCell;
  [(PKEducationalMessageTableViewCell *)&v5 layoutSubviews];
  messageView = self->_messageView;
  v4 = [(PKEducationalMessageTableViewCell *)self contentView];
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