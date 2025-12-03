@interface BFFImageContainerView
- (BFFImageContainerView)initWithFrame:(CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation BFFImageContainerView

- (BFFImageContainerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v6.receiver = self;
  v6.super_class = BFFImageContainerView;
  result = [(BFFImageContainerView *)&v6 initWithFrame:frame.origin.x, frame.origin.y];
  if (result)
  {
    result->_preferredSize.width = width;
    result->_preferredSize.height = height;
  }

  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = self->_preferredSize.width;
  height = self->_preferredSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)layoutSubviews
{
  subviews = [(BFFImageContainerView *)self subviews];
  firstObject = [subviews firstObject];

  [(BFFImageContainerView *)self bounds];
  if (firstObject)
  {
    v5 = v4;
    [firstObject frame];
    v7 = v6;
    v9 = v8;
    [(BFFImageContainerView *)self bounds];
    v11 = (v10 - v7) * 0.5;
    [firstObject setFrame:{floorf(v11), v5 - v9, v7, v9}];
  }
}

@end