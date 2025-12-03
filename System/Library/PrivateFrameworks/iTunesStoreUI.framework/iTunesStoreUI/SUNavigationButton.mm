@interface SUNavigationButton
- (CGRect)_accessoryViewRectForContentRect:(CGRect)rect;
- (CGRect)titleRectForContentRect:(CGRect)rect;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)accessoryViewInsets;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAccessoryView:(id)view;
- (void)setAccessoryViewInsets:(UIEdgeInsets)insets;
@end

@implementation SUNavigationButton

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUNavigationButton;
  [(UINavigationButton *)&v3 dealloc];
}

- (void)setAccessoryView:(id)view
{
  accessoryView = self->_accessoryView;
  if (accessoryView != view)
  {
    [(UIView *)accessoryView removeFromSuperview];

    viewCopy = view;
    self->_accessoryView = viewCopy;
    if (viewCopy)
    {

      [(SUNavigationButton *)self addSubview:viewCopy];
    }
  }
}

- (void)setAccessoryViewInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_accessoryViewInsets.top, v3), vceqq_f64(*&self->_accessoryViewInsets.bottom, v4)))) & 1) == 0)
  {
    self->_accessoryViewInsets = insets;
    [(SUNavigationButton *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  if (self->_accessoryView)
  {
    [(SUNavigationButton *)self bounds];
    [(SUNavigationButton *)self contentRectForBounds:?];
    accessoryView = self->_accessoryView;
    [(SUNavigationButton *)self _accessoryViewRectForContentRect:?];
    [(UIView *)accessoryView setFrame:?];
  }

  v4.receiver = self;
  v4.super_class = SUNavigationButton;
  [(UINavigationButton *)&v4 layoutSubviews];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v13.receiver = self;
  v13.super_class = SUNavigationButton;
  [(UINavigationButton *)&v13 sizeThatFits:fits.width, fits.height];
  v5 = v4;
  v7 = v6;
  accessoryView = self->_accessoryView;
  if (accessoryView)
  {
    [(UIView *)accessoryView frame];
    if (v7 < v10 + self->_accessoryViewInsets.top + self->_accessoryViewInsets.bottom)
    {
      v7 = v10 + self->_accessoryViewInsets.top + self->_accessoryViewInsets.bottom;
    }

    v5 = v5 + v9 + self->_accessoryViewInsets.left + self->_accessoryViewInsets.right;
  }

  v11 = v5;
  v12 = v7;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGRect)titleRectForContentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v24.receiver = self;
  v24.super_class = SUNavigationButton;
  [(SUNavigationButton *)&v24 titleRectForContentRect:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (self->_accessoryView)
  {
    [(SUNavigationButton *)self _accessoryViewRectForContentRect:x, y, width, height];
    v16 = v15;
    [(SUNavigationButton *)self titleEdgeInsets];
    v18 = x + v17;
    v19 = v16 - (x + v17);
    if (v12 >= v19)
    {
      v12 = v19;
    }

    v20 = (v19 - v12) * 0.5;
    v8 = v18 + floorf(v20);
  }

  v21 = v10;
  v22 = v12;
  v23 = v14;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v8;
  return result;
}

- (CGRect)_accessoryViewRectForContentRect:(CGRect)rect
{
  y = rect.origin.y;
  top = self->_accessoryViewInsets.top;
  left = self->_accessoryViewInsets.left;
  v6 = rect.origin.x + left;
  v7 = y + top;
  v8 = rect.size.width - (left + self->_accessoryViewInsets.right);
  v9 = rect.size.height - (top + self->_accessoryViewInsets.bottom);
  [(UIView *)self->_accessoryView frame];
  v11 = v10;
  v13 = v12;
  v19.origin.x = v6;
  v19.origin.y = v7;
  v19.size.width = v8;
  v19.size.height = v9;
  v14 = CGRectGetMaxX(v19) - v11;
  v15 = (v9 - v13) * 0.5;
  v16 = y + floorf(v15);
  v17 = v11;
  v18 = v13;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v14;
  return result;
}

- (UIEdgeInsets)accessoryViewInsets
{
  top = self->_accessoryViewInsets.top;
  left = self->_accessoryViewInsets.left;
  bottom = self->_accessoryViewInsets.bottom;
  right = self->_accessoryViewInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end