@interface _UITabBarContainerView
- (CGRect)frameForHostedElement:(int64_t)element options:(int64_t)options;
- (UITabBarController)tabBarController;
- (_TtC5UIKit22_UITabBarContainerView)initWithCoder:(id)coder;
- (_TtC5UIKit22_UITabBarContainerView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)safeAreaInsetsDidChange;
- (void)setTabBar:(id)bar;
- (void)updateLayoutContentSize;
@end

@implementation _UITabBarContainerView

- (void)safeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for _UITabBarContainerView();
  v2 = v4.receiver;
  [(UIView *)&v4 safeAreaInsetsDidChange];
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong updateTabBarLayout];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for _UITabBarContainerView();
  v2 = v5.receiver;
  [(UIView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_layoutManager];
  if (v3)
  {
    v4 = v3;
    [v4 updateLayout];
  }

  else
  {
    __break(1u);
  }
}

- (void)updateLayoutContentSize
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_188B82B94;
  *(v5 + 24) = v4;
  v8[4] = sub_188A4B574;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_188A4A968;
  v8[3] = &block_descriptor_83;
  v6 = _Block_copy(v8);
  selfCopy = self;

  [v3 performWithoutAnimation_];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

- (UITabBarController)tabBarController
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  selfCopy = self;
  tabBarController = [Strong tabBarController];

  return tabBarController;
}

- (CGRect)frameForHostedElement:(int64_t)element options:(int64_t)options
{
  v4 = OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_tabBar;
  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_tabBar);
  if (v5)
  {
    selfCopy = self;
    [(UIView *)selfCopy convertRect:*(&self->super.super.super.super.isa + v4) fromView:[(UITabBar *)v5 _frameForHostedElement:element options:options]];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = v11;
    v19 = v13;
    v20 = v15;
    v21 = v17;
  }

  else
  {
    __break(1u);
  }

  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)setTabBar:(id)bar
{
  v5 = OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_tabBar;
  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_tabBar);
  v7 = v6;
  barCopy = bar;
  selfCopy = self;
  sub_1890463C8(bar);
  v9 = *(&self->super.super.super.super.isa + v5);
  *(&self->super.super.super.super.isa + v5) = bar;
  v10 = barCopy;

  sub_1890464A0(v6);
}

- (_TtC5UIKit22_UITabBarContainerView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_tabBar) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_isBarHidden) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_layoutManager) = 0;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (_TtC5UIKit22_UITabBarContainerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end