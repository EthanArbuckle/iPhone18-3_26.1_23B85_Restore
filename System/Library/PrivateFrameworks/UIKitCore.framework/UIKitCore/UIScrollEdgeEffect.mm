@interface UIScrollEdgeEffect
- (BOOL)_prefersSolidColorHardPocket;
- (BOOL)isHidden;
- (UIScrollEdgeEffect)init;
- (UIScrollEdgeEffectStyle)style;
- (UIView)_overrideGeometryView;
- (int64_t)_fixedUserInterfaceStyle;
- (int64_t)_preferredUserInterfaceStyle;
- (void)_setColor:(id)color;
- (void)_setFixedUserInterfaceStyle:(int64_t)style;
- (void)_setOverrideGeometryView:(id)view;
- (void)_setPreferredUserInterfaceStyle:(int64_t)style;
- (void)_setPrefersSolidColorHardPocket:(BOOL)pocket;
- (void)setHidden:(BOOL)hidden;
- (void)setStyle:(id)style;
@end

@implementation UIScrollEdgeEffect

- (UIScrollEdgeEffectStyle)style
{
  v3 = *(&self->super.isa + OBJC_IVAR___UIScrollEdgeEffect_state);
  swift_getKeyPath();
  sub_188F700B4();
  selfCopy = self;
  sub_18A4A2C08();

  v5 = *(v3 + 16);
  v6 = v5;

  return v5;
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  selfCopy = self;
  sub_188F6E6B8(styleCopy);
}

- (BOOL)isHidden
{
  v3 = *(&self->super.isa + OBJC_IVAR___UIScrollEdgeEffect_state);
  swift_getKeyPath();
  sub_188F700B4();
  selfCopy = self;
  sub_18A4A2C08();

  v5 = *(v3 + 24);

  return v5;
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  selfCopy = self;
  sub_188F6F45C(hiddenCopy);
}

- (void)_setColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_188F6F5B4(color);
}

- (BOOL)_prefersSolidColorHardPocket
{
  v3 = *(&self->super.isa + OBJC_IVAR___UIScrollEdgeEffect_state);
  swift_getKeyPath();
  sub_188F700B4();
  selfCopy = self;
  sub_18A4A2C08();

  v5 = *(v3 + 25);

  return v5;
}

- (void)_setPrefersSolidColorHardPocket:(BOOL)pocket
{
  pocketCopy = pocket;
  selfCopy = self;
  sub_188F6F714(pocketCopy);
}

- (int64_t)_preferredUserInterfaceStyle
{
  v3 = *(&self->super.isa + OBJC_IVAR___UIScrollEdgeEffect_state);
  swift_getKeyPath();
  sub_188F700B4();
  selfCopy = self;
  sub_18A4A2C08();

  v5 = *(v3 + 32);

  return v5;
}

- (void)_setPreferredUserInterfaceStyle:(int64_t)style
{
  selfCopy = self;
  sub_188F6F8EC(style);
}

- (int64_t)_fixedUserInterfaceStyle
{
  v3 = *(&self->super.isa + OBJC_IVAR___UIScrollEdgeEffect_state);
  swift_getKeyPath();
  sub_188F700B4();
  selfCopy = self;
  sub_18A4A2C08();

  v5 = *(v3 + 40);

  return v5;
}

- (void)_setFixedUserInterfaceStyle:(int64_t)style
{
  selfCopy = self;
  sub_188F6FAB8(style);
}

- (UIView)_overrideGeometryView
{
  swift_getKeyPath();
  sub_188F700B4();
  selfCopy = self;
  sub_18A4A2C08();

  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)_setOverrideGeometryView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_188F6EFD8(view);
}

- (UIScrollEdgeEffect)init
{
  v3 = OBJC_IVAR___UIScrollEdgeEffect_state;
  _s5StateCMa();
  swift_allocObject();
  *(&self->super.isa + v3) = sub_188F6F1FC();
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR___UIScrollEdgeEffect_color) = 0;
  v5.receiver = self;
  v5.super_class = UIScrollEdgeEffect;
  return [(UIScrollEdgeEffect *)&v5 init];
}

@end