@interface UIDirectionalLightEffectView
- (_TtC5UIKit28UIDirectionalLightEffectView)initWithCoder:(id)a3;
- (_TtC5UIKit28UIDirectionalLightEffectView)initWithFrame:(CGRect)a3;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
@end

@implementation UIDirectionalLightEffectView

- (_TtC5UIKit28UIDirectionalLightEffectView)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_idleTimer;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = 0;
  v4[24] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView__isPaused) = 0;
  v5 = OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_fillView;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(UIView) initWithFrame_];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_idleTimerImpl) = 0;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (_TtC5UIKit28UIDirectionalLightEffectView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for UIDirectionalLightEffectView();
  v2 = v4.receiver;
  [(UIView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_fillView];
  [v2 bounds];
  [v3 setFrame_];
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for UIDirectionalLightEffectView();
  v2 = v3.receiver;
  [(UIView *)&v3 didMoveToSuperview];
  sub_188E8691C();
}

@end