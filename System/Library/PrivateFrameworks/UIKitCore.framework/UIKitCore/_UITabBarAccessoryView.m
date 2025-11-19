@interface _UITabBarAccessoryView
- (BOOL)shouldUpdateFocusInContext:(id)a3;
- (CGSize)preferredSize;
- (_UITabBarAccessoryView)init;
- (_UITabBarAccessoryView)initWithFrame:(CGRect)a3;
- (void)commonInit;
@end

@implementation _UITabBarAccessoryView

- (_UITabBarAccessoryView)init
{
  v5.receiver = self;
  v5.super_class = _UITabBarAccessoryView;
  v2 = [(UIView *)&v5 initWithFrame:0.0, 0.0, 200.0, 68.0];
  v3 = v2;
  if (v2)
  {
    [(_UITabBarAccessoryView *)v2 commonInit];
  }

  return v3;
}

- (_UITabBarAccessoryView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _UITabBarAccessoryView;
  v3 = [(UIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_UITabBarAccessoryView *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  v3 = objc_alloc_init(UIView);
  contentView = self->_contentView;
  self->_contentView = v3;

  [(UIView *)self bounds];
  [(UIView *)self->_contentView setFrame:?];
  [(UIView *)self->_contentView setAutoresizingMask:18];
  v5 = self->_contentView;

  [(UIView *)self addSubview:v5];
}

- (BOOL)shouldUpdateFocusInContext:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UITabBarAccessoryView;
  if ([(UIView *)&v9 shouldUpdateFocusInContext:v4])
  {
    v5 = [v4 nextFocusedView];
    if ([v5 isDescendantOfView:self])
    {
      if ([v4 focusHeading] == 4)
      {

LABEL_9:
        v6 = [v4 _isInitialMovement];
        goto LABEL_10;
      }

      v7 = [v4 focusHeading];

      if (v7 == 8)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

LABEL_10:

  return v6;
}

- (CGSize)preferredSize
{
  width = self->_preferredSize.width;
  height = self->_preferredSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end