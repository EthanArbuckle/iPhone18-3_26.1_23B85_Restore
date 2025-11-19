@interface _UITabButton
- (BOOL)canBecomeFocused;
- (CGPoint)center;
- (CGRect)bounds;
- (CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UITabBar)tabBar;
- (_UITabButton)initWithFrame:(CGRect)a3;
- (double)alpha;
- (id)_systemDefaultFocusGroupIdentifier;
- (id)_unselectedTintColor;
- (void)_invalidateSizeCache;
- (void)_setBadgeColor:(id)a3;
- (void)_setBadgeOffset:(UIOffset)a3;
- (void)_setBadgeTextAttributes:(id)a3 forState:(unint64_t)a4;
- (void)_setBadgeValue:(id)a3;
- (void)_setShowsHighlightedState:(BOOL)a3;
- (void)_setUnselectedTintColor:(id)a3;
- (void)_showSelectedIndicator:(BOOL)a3 changeSelection:(BOOL)a4;
- (void)_updateUserInterfaceStyleIfNeeded;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)setAlpha:(double)a3;
- (void)setBounds:(CGRect)a3;
- (void)setCenter:(CGPoint)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)setSpringLoaded:(BOOL)a3;
@end

@implementation _UITabButton

- (UITabBar)tabBar
{
  Strong = swift_unknownObjectUnownedLoadStrong();

  return Strong;
}

- (CGRect)frame
{
  sub_1892030E4(self, a2, &selRef_frame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_1892031B0(&selRef_setFrame_, &selRef_frame, x, y, width, height);
}

- (CGRect)bounds
{
  sub_1892030E4(self, a2, &selRef_bounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_1892031B0(&selRef_setBounds_, &selRef_bounds, x, y, width, height);
}

- (CGPoint)center
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for _UITabButton();
  [(UIView *)&v4 center];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setCenter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  sub_189203310(x, y);
}

- (double)alpha
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for _UITabButton();
  [(UIView *)&v3 alpha];
  return result;
}

- (void)setAlpha:(double)a3
{
  v4 = self;
  sub_189203450(a3);
}

- (id)_unselectedTintColor
{
  v2 = self;
  v3 = sub_189203534();

  return v3;
}

- (void)_setUnselectedTintColor:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_18920667C(a3, 0);
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for _UITabButton();
  v4 = v7.receiver;
  [(UIControl *)&v7 setSelected:v3];
  sub_189202C38();
  sub_189205B48();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong setSelected_];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for _UITabButton();
  v4 = v5.receiver;
  [(UIControl *)&v5 setHighlighted:v3];
  sub_189203A18();
}

- (id)_systemDefaultFocusGroupIdentifier
{
  v2 = self;
  sub_189203ACC();
  v4 = v3;

  if (v4)
  {
    v5 = sub_18A4A7258();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)canBecomeFocused
{
  v2 = self;
  if ([(UIControl *)v2 isEnabled]&& *(v2 + OBJC_IVAR____UITabButton_overrideItemState + 8) == 1 && (v3 = [(UIView *)v2 _focusBehavior]) != 0)
  {
    v4 = [(_UIFocusPlatformBehavior *)v3 tabBarButtonCanBecomeFocused];
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_189203C98(v6, v7);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_1892041F8(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_189204760();
}

- (void)_updateUserInterfaceStyleIfNeeded
{
  v2 = self;
  sub_189206854();
}

- (void)_invalidateSizeCache
{
  v2 = self + OBJC_IVAR____UITabButton_sizeCache;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  v2[64] = 1;
}

- (void)_setShowsHighlightedState:(BOOL)a3
{
  *(self + OBJC_IVAR____UITabButton__showsHighlightedState) = a3;
  v3 = self;
  if ([(_UITabButton *)v3 isHighlighted])
  {
    sub_189205B48();
  }
}

- (void)_setBadgeValue:(id)a3
{
  v6 = self;
  sub_189205920();
  v3 = v6 + OBJC_IVAR____UITabButton_tabBarButtonDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v6, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

- (void)_setBadgeOffset:(UIOffset)a3
{
  v7 = self;
  v3 = sub_18920362C();
  sub_189205F28(v3);
  v4 = v7 + OBJC_IVAR____UITabButton_tabBarButtonDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v7, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (void)_setBadgeColor:(id)a3
{
  v7 = self;
  v3 = sub_18920362C();
  sub_189205F28(v3);
  v4 = v7 + OBJC_IVAR____UITabButton_tabBarButtonDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v7, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (void)_setBadgeTextAttributes:(id)a3 forState:(unint64_t)a4
{
  v8 = self;
  v4 = sub_18920362C();
  sub_189205F28(v4);
  v5 = v8 + OBJC_IVAR____UITabButton_tabBarButtonDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v8, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (void)_showSelectedIndicator:(BOOL)a3 changeSelection:(BOOL)a4
{
  if (a4)
  {
    [(_UITabButton *)self setSelected:a3];
  }
}

- (void)setSpringLoaded:(BOOL)a3
{
  v4 = self;
  sub_189206D2C(a3);
}

- (_UITabButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end