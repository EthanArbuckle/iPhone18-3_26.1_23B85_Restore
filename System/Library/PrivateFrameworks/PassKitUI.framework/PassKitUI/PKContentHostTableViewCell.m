@interface PKContentHostTableViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKContentHostTableViewCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setHostedContentView:(id)a3;
@end

@implementation PKContentHostTableViewCell

- (PKContentHostTableViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PKContentHostTableViewCell;
  v3 = [(PKContentHostTableViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] clearColor];
    [(PKContentHostTableViewCell *)v3 setBackgroundColor:v4];
  }

  return v3;
}

- (void)setHostedContentView:(id)a3
{
  v4 = a3;
  hostedContentView = self->_hostedContentView;
  if (hostedContentView)
  {
    [(UIView *)hostedContentView removeFromSuperview];
    v6 = self->_hostedContentView;
  }

  else
  {
    v6 = 0;
  }

  self->_hostedContentView = v4;
  v7 = v4;

  v8 = [(PKContentHostTableViewCell *)self contentView];
  [v8 addSubview:v7];

  [(PKContentHostTableViewCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKContentHostTableViewCell;
  [(PKContentHostTableViewCell *)&v4 layoutSubviews];
  hostedContentView = self->_hostedContentView;
  if (hostedContentView)
  {
    [(PKContentHostTableViewCell *)self bounds];
    [(UIView *)hostedContentView setFrame:?];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UIView *)self->_hostedContentView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end