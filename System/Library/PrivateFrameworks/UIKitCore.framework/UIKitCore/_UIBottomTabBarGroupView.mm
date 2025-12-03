@interface _UIBottomTabBarGroupView
- (_UIBottomTabBarGroupView)initWithFrame:(CGRect)frame;
@end

@implementation _UIBottomTabBarGroupView

- (_UIBottomTabBarGroupView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = _UIBottomTabBarGroupView;
  v3 = [(UIView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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