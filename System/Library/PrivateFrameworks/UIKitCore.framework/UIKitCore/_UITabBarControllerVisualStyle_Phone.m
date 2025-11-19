@interface _UITabBarControllerVisualStyle_Phone
- (UIEdgeInsets)bottomAccessoryInsets;
- (_UITabBarControllerVisualStyle_Phone)initWithInstance:(id)a3;
- (_UITabBarControllerVisualStyle_Phone)initWithTabBarController:(id)a3;
- (id)defaultAnimatorForFromViewController:(id)a3 toViewController:(id)a4;
- (void)loadViews;
- (void)navigationControllerDidUpdate:(id)a3;
- (void)selectedViewControllerDidChange;
- (void)setBarHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setBottomBarSuppressedByNavigation:(BOOL)a3 animated:(BOOL)a4;
- (void)tabBarDidChange;
- (void)tabContentDidChange:(id)a3;
- (void)updateBottomAccessoryAnimated:(BOOL)a3;
- (void)updateContainerBounds;
- (void)updateTabBarLayout;
- (void)updateViewControllers:(BOOL)a3;
@end

@implementation _UITabBarControllerVisualStyle_Phone

- (_UITabBarControllerVisualStyle_Phone)initWithTabBarController:(id)a3
{
  v5 = OBJC_IVAR____UITabBarControllerVisualStyle_Phone_scrollPocketContainerInteraction;
  v6 = objc_allocWithZone(_UIScrollPocketContainerInteraction);
  v7 = a3;
  *(&self->super.super.isa + v5) = [v6 initWithScrollView:0 edge:4];
  v8 = OBJC_IVAR____UITabBarControllerVisualStyle_Phone_containerWrapperView;
  type metadata accessor for _UITabBarContainerWrapperView();
  *(&self->super.super.isa + v8) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(&self->super.super.isa + OBJC_IVAR____UITabBarControllerVisualStyle_Phone____lazy_storage___containerView) = 0;
  v11.receiver = self;
  v11.super_class = _UITabBarControllerVisualStyle_Phone;
  v9 = [(_UITabBarControllerVisualStyle *)&v11 initWithTabBarController:v7];

  return v9;
}

- (void)updateTabBarLayout
{
  v2 = self;
  [(_UITabBarControllerVisualStyle_Phone *)v2 updateContainerBounds];
  v3.receiver = v2;
  v3.super_class = _UITabBarControllerVisualStyle_Phone;
  [(_UITabBarControllerVisualStyle *)&v3 updateTabBarLayout];
}

- (void)updateViewControllers:(BOOL)a3
{
  v3 = a3;
  v5 = self;
  v4 = [(_UITabBarControllerVisualStyle *)v5 tabBarController];
  [(UITabBarController *)v4 _rebuildTabBarItemsAnimated:v3];
}

- (void)loadViews
{
  v2 = self;
  sub_188B7A15C();
}

- (void)updateContainerBounds
{
  v2 = self;
  sub_188B7E1B8();
}

- (void)selectedViewControllerDidChange
{
  v2 = self;
  sub_188B86768();
}

- (void)tabContentDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188BF84E0(v4);
}

- (void)updateBottomAccessoryAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  v5 = sub_188B7E400();
  v6 = OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_layoutManager;
  v9 = v5;
  v7 = *&v5[OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_layoutManager];
  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  [v7 updateHostedElementsAnimated_];
  v8 = *&v9[v6];
  if (!v8)
  {
LABEL_7:
    __break(1u);
    return;
  }

  [v8 updateLayout];
}

- (void)navigationControllerDidUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_188B7E400();
  v7 = OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_layoutManager;
  v10 = v6;
  v8 = *&v6[OBJC_IVAR____TtC5UIKit22_UITabBarContainerView_layoutManager];
  if (!v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  [v8 updateHostedElementsAnimated_];
  v9 = *&v10[v7];
  if (!v9)
  {
LABEL_7:
    __break(1u);
    return;
  }

  [v9 updateLayout];
}

- (void)setBarHidden:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_18904584C(a3, a4);
}

- (void)setBottomBarSuppressedByNavigation:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_1890459D8(a3, a4);
}

- (void)tabBarDidChange
{
  v2 = self;
  sub_189045AE0();
}

- (UIEdgeInsets)bottomAccessoryInsets
{
  v2 = self;
  sub_189045D3C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (id)defaultAnimatorForFromViewController:(id)a3 toViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1890466B0();
  v10 = v9;

  return v10;
}

- (_UITabBarControllerVisualStyle_Phone)initWithInstance:(id)a3
{
  swift_unknownObjectRetain();
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  return _UITabBarControllerVisualStyle_Phone.init(instance:)(v4);
}

@end