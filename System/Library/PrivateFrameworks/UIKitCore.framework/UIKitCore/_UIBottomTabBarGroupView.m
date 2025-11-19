@interface _UIBottomTabBarGroupView
- (_UIBottomTabBarGroupView)initWithFrame:(CGRect)a3;
@end

@implementation _UIBottomTabBarGroupView

- (_UIBottomTabBarGroupView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = _UIBottomTabBarGroupView;
  v3 = [(UIView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(_UITouchPassthroughView);
    contentView = v3->_contentView;
    v3->_contentView = &v4->super;

    [(UIView *)v3 addSubview:v3->_contentView];
    v6 = objc_opt_new();
    [(UIView *)v3 _setBackground:v6];
  }

  return v3;
}

@end