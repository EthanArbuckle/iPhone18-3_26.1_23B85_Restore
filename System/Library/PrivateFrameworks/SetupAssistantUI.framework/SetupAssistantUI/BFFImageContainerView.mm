@interface BFFImageContainerView
- (BFFImageContainerView)initWithFrame:(CGRect)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation BFFImageContainerView

- (BFFImageContainerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v6.receiver = self;
  v6.super_class = BFFImageContainerView;
  result = [(BFFImageContainerView *)&v6 initWithFrame:a3.origin.x, a3.origin.y];
  if (result)
  {
    result->_preferredSize.width = width;
    result->_preferredSize.height = height;
  }

  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = self->_preferredSize.width;
  height = self->_preferredSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)layoutSubviews
{
  v3 = [(BFFImageContainerView *)self subviews];
  v12 = [v3 firstObject];

  [(BFFImageContainerView *)self bounds];
  if (v12)
  {
    v5 = v4;
    [v12 frame];
    v7 = v6;
    v9 = v8;
    [(BFFImageContainerView *)self bounds];
    v11 = (v10 - v7) * 0.5;
    [v12 setFrame:{floorf(v11), v5 - v9, v7, v9}];
  }
}

@end