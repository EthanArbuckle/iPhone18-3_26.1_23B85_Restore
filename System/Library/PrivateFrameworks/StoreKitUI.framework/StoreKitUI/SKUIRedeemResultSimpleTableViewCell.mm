@interface SKUIRedeemResultSimpleTableViewCell
- (UIEdgeInsets)childContentInsets;
- (void)layoutSubviews;
- (void)setChildContentView:(id)a3;
@end

@implementation SKUIRedeemResultSimpleTableViewCell

- (void)setChildContentView:(id)a3
{
  v5 = a3;
  childContentView = self->_childContentView;
  v8 = v5;
  if (childContentView == v5)
  {
    if (!v5 || [(UIView *)childContentView isDescendantOfView:self])
    {
      goto LABEL_9;
    }

LABEL_8:
    v7 = [(SKUIRedeemResultSimpleTableViewCell *)self contentView];
    [v7 addSubview:self->_childContentView];

    [(SKUIRedeemResultSimpleTableViewCell *)self setNeedsLayout];
    goto LABEL_9;
  }

  if ([(UIView *)childContentView isDescendantOfView:self])
  {
    [(UIView *)self->_childContentView removeFromSuperview];
  }

  objc_storeStrong(&self->_childContentView, a3);
  if (v8)
  {
    goto LABEL_8;
  }

LABEL_9:

  MEMORY[0x2821F96F8]();
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = SKUIRedeemResultSimpleTableViewCell;
  [(SKUIRedeemResultSimpleTableViewCell *)&v10 layoutSubviews];
  [(UIView *)self->_childContentView frame];
  v4 = v3;
  v6 = v5;
  v7 = [(SKUIRedeemResultSimpleTableViewCell *)self contentView];
  [v7 frame];
  v9 = (v8 - v4) * 0.5;

  [(UIView *)self->_childContentView setFrame:v9, self->_childContentInsets.top, v4, v6];
}

- (UIEdgeInsets)childContentInsets
{
  top = self->_childContentInsets.top;
  left = self->_childContentInsets.left;
  bottom = self->_childContentInsets.bottom;
  right = self->_childContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end