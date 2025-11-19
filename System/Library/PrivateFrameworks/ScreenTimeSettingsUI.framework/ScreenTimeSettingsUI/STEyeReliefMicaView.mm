@interface STEyeReliefMicaView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC20ScreenTimeSettingsUI19STEyeReliefMicaView)initWithCoder:(id)a3;
- (id)makeCAPackage;
- (void)layoutSubviews;
@end

@implementation STEyeReliefMicaView

- (_TtC20ScreenTimeSettingsUI19STEyeReliefMicaView)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC20ScreenTimeSettingsUI19STEyeReliefMicaView_animator;
  type metadata accessor for STMicaAnimator();
  swift_allocObject();
  v6 = a3;
  *(&self->super.super.super.super.isa + v5) = STMicaAnimator.init(states:delay:)(qword_28766BB28, 1000000000000000000, 0);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ScreenTimeSettingsUI19STEyeReliefMicaView_stateSubscription) = 0;
  v7 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC20ScreenTimeSettingsUI19STEyeReliefMicaView_originalSize);
  *v7 = 0;
  v7[1] = 0;
  result = sub_264CC49FC();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for STEyeReliefMicaView();
  v2 = v3.receiver;
  [(STEyeReliefMicaView *)&v3 layoutSubviews];
  sub_264CBA024();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v8.size.height = a3.height;
  v8.size.width = a3.width;
  *&v6.size.width = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ScreenTimeSettingsUI19STEyeReliefMicaView_originalSize);
  v6.size.height = *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC20ScreenTimeSettingsUI19STEyeReliefMicaView_originalSize);
  v6.origin.x = 0.0;
  v6.origin.y = 0.0;
  v8.origin.x = 0.0;
  v8.origin.y = 0.0;
  v7 = CGRectIntersection(v6, v8);
  width = v7.size.width;
  height = v7.size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)makeCAPackage
{
  v2 = self;
  v3 = sub_264CBA2A0();

  return v3;
}

@end