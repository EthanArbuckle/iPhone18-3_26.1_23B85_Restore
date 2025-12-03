@interface PKContentHostTableViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKContentHostTableViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setHostedContentView:(id)view;
@end

@implementation PKContentHostTableViewCell

- (PKContentHostTableViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PKContentHostTableViewCell;
  v3 = [(PKContentHostTableViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(PKContentHostTableViewCell *)v3 setBackgroundColor:clearColor];
  }

  return v3;
}

- (void)setHostedContentView:(id)view
{
  viewCopy = view;
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

  self->_hostedContentView = viewCopy;
  v7 = viewCopy;

  contentView = [(PKContentHostTableViewCell *)self contentView];
  [contentView addSubview:v7];

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

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIView *)self->_hostedContentView sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end