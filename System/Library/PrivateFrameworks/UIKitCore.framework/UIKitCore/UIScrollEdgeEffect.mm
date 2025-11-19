@interface UIScrollEdgeEffect
- (BOOL)_prefersSolidColorHardPocket;
- (BOOL)isHidden;
- (UIScrollEdgeEffect)init;
- (UIScrollEdgeEffectStyle)style;
- (UIView)_overrideGeometryView;
- (int64_t)_fixedUserInterfaceStyle;
- (int64_t)_preferredUserInterfaceStyle;
- (void)_setColor:(id)a3;
- (void)_setFixedUserInterfaceStyle:(int64_t)a3;
- (void)_setOverrideGeometryView:(id)a3;
- (void)_setPreferredUserInterfaceStyle:(int64_t)a3;
- (void)_setPrefersSolidColorHardPocket:(BOOL)a3;
- (void)setHidden:(BOOL)a3;
- (void)setStyle:(id)a3;
@end

@implementation UIScrollEdgeEffect

- (UIScrollEdgeEffectStyle)style
{
  v3 = *(&self->super.isa + OBJC_IVAR___UIScrollEdgeEffect_state);
  swift_getKeyPath();
  sub_188F700B4();
  v4 = self;
  sub_18A4A2C08();

  v5 = *(v3 + 16);
  v6 = v5;

  return v5;
}

- (void)setStyle:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188F6E6B8(v4);
}

- (BOOL)isHidden
{
  v3 = *(&self->super.isa + OBJC_IVAR___UIScrollEdgeEffect_state);
  swift_getKeyPath();
  sub_188F700B4();
  v4 = self;
  sub_18A4A2C08();

  v5 = *(v3 + 24);

  return v5;
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_188F6F45C(v3);
}

- (void)_setColor:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_188F6F5B4(a3);
}

- (BOOL)_prefersSolidColorHardPocket
{
  v3 = *(&self->super.isa + OBJC_IVAR___UIScrollEdgeEffect_state);
  swift_getKeyPath();
  sub_188F700B4();
  v4 = self;
  sub_18A4A2C08();

  v5 = *(v3 + 25);

  return v5;
}

- (void)_setPrefersSolidColorHardPocket:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_188F6F714(v3);
}

- (int64_t)_preferredUserInterfaceStyle
{
  v3 = *(&self->super.isa + OBJC_IVAR___UIScrollEdgeEffect_state);
  swift_getKeyPath();
  sub_188F700B4();
  v4 = self;
  sub_18A4A2C08();

  v5 = *(v3 + 32);

  return v5;
}

- (void)_setPreferredUserInterfaceStyle:(int64_t)a3
{
  v4 = self;
  sub_188F6F8EC(a3);
}

- (int64_t)_fixedUserInterfaceStyle
{
  v3 = *(&self->super.isa + OBJC_IVAR___UIScrollEdgeEffect_state);
  swift_getKeyPath();
  sub_188F700B4();
  v4 = self;
  sub_18A4A2C08();

  v5 = *(v3 + 40);

  return v5;
}

- (void)_setFixedUserInterfaceStyle:(int64_t)a3
{
  v4 = self;
  sub_188F6FAB8(a3);
}

- (UIView)_overrideGeometryView
{
  swift_getKeyPath();
  sub_188F700B4();
  v3 = self;
  sub_18A4A2C08();

  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)_setOverrideGeometryView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_188F6EFD8(a3);
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