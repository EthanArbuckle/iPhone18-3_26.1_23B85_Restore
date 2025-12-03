@interface _UITabButton
- (BOOL)canBecomeFocused;
- (CGPoint)center;
- (CGRect)bounds;
- (CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UITabBar)tabBar;
- (_UITabButton)initWithFrame:(CGRect)frame;
- (double)alpha;
- (id)_systemDefaultFocusGroupIdentifier;
- (id)_unselectedTintColor;
- (void)_invalidateSizeCache;
- (void)_setBadgeColor:(id)color;
- (void)_setBadgeOffset:(UIOffset)offset;
- (void)_setBadgeTextAttributes:(id)attributes forState:(unint64_t)state;
- (void)_setBadgeValue:(id)value;
- (void)_setShowsHighlightedState:(BOOL)state;
- (void)_setUnselectedTintColor:(id)color;
- (void)_showSelectedIndicator:(BOOL)indicator changeSelection:(BOOL)selection;
- (void)_updateUserInterfaceStyleIfNeeded;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)setAlpha:(double)alpha;
- (void)setBounds:(CGRect)bounds;
- (void)setCenter:(CGPoint)center;
- (void)setFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)setSpringLoaded:(BOOL)loaded;
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selfCopy = self;
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

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  selfCopy = self;
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

- (void)setCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  selfCopy = self;
  sub_189203310(x, y);
}

- (double)alpha
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for _UITabButton();
  [(UIView *)&v3 alpha];
  return result;
}

- (void)setAlpha:(double)alpha
{
  selfCopy = self;
  sub_189203450(alpha);
}

- (id)_unselectedTintColor
{
  selfCopy = self;
  v3 = sub_189203534();

  return v3;
}

- (void)_setUnselectedTintColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_18920667C(color, 0);
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v7.receiver = self;
  v7.super_class = type metadata accessor for _UITabButton();
  v4 = v7.receiver;
  [(UIControl *)&v7 setSelected:selectedCopy];
  sub_189202C38();
  sub_189205B48();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong setSelected_];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = type metadata accessor for _UITabButton();
  v4 = v5.receiver;
  [(UIControl *)&v5 setHighlighted:highlightedCopy];
  sub_189203A18();
}

- (id)_systemDefaultFocusGroupIdentifier
{
  selfCopy = self;
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
  selfCopy = self;
  if ([(UIControl *)selfCopy isEnabled]&& *(selfCopy + OBJC_IVAR____UITabButton_overrideItemState + 8) == 1 && (v3 = [(UIView *)selfCopy _focusBehavior]) != 0)
  {
    tabBarButtonCanBecomeFocused = [(_UIFocusPlatformBehavior *)v3 tabBarButtonCanBecomeFocused];
    swift_unknownObjectRelease();
  }

  else
  {
    tabBarButtonCanBecomeFocused = 0;
  }

  return tabBarButtonCanBecomeFocused;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_189203C98(contextCopy, coordinatorCopy);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
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
  selfCopy = self;
  sub_189204760();
}

- (void)_updateUserInterfaceStyleIfNeeded
{
  selfCopy = self;
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

- (void)_setShowsHighlightedState:(BOOL)state
{
  *(self + OBJC_IVAR____UITabButton__showsHighlightedState) = state;
  selfCopy = self;
  if ([(_UITabButton *)selfCopy isHighlighted])
  {
    sub_189205B48();
  }
}

- (void)_setBadgeValue:(id)value
{
  selfCopy = self;
  sub_189205920();
  v3 = selfCopy + OBJC_IVAR____UITabButton_tabBarButtonDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(selfCopy, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

- (void)_setBadgeOffset:(UIOffset)offset
{
  selfCopy = self;
  v3 = sub_18920362C();
  sub_189205F28(v3);
  v4 = selfCopy + OBJC_IVAR____UITabButton_tabBarButtonDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(selfCopy, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (void)_setBadgeColor:(id)color
{
  selfCopy = self;
  v3 = sub_18920362C();
  sub_189205F28(v3);
  v4 = selfCopy + OBJC_IVAR____UITabButton_tabBarButtonDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(selfCopy, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (void)_setBadgeTextAttributes:(id)attributes forState:(unint64_t)state
{
  selfCopy = self;
  v4 = sub_18920362C();
  sub_189205F28(v4);
  v5 = selfCopy + OBJC_IVAR____UITabButton_tabBarButtonDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(selfCopy, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (void)_showSelectedIndicator:(BOOL)indicator changeSelection:(BOOL)selection
{
  if (selection)
  {
    [(_UITabButton *)self setSelected:indicator];
  }
}

- (void)setSpringLoaded:(BOOL)loaded
{
  selfCopy = self;
  sub_189206D2C(loaded);
}

- (_UITabButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end