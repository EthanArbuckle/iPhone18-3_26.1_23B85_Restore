@interface MeditationCountdownView
- (_TtC9SeymourUI23MeditationCountdownView)initWithCoder:(id)coder;
- (_TtC9SeymourUI23MeditationCountdownView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation MeditationCountdownView

- (_TtC9SeymourUI23MeditationCountdownView)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI23MeditationCountdownView_onCountdownStep);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI23MeditationCountdownView_onCountdownWindUp);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI23MeditationCountdownView_onCountdownFadeOut);
  *v5 = 0;
  v5[1] = 0;
  v6 = (&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI23MeditationCountdownView_onCountdownCompleted);
  *v6 = 0;
  v6[1] = 0;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for MeditationCountdownView();
  [(MeditationCountdownView *)&v2 layoutSubviews];
}

- (_TtC9SeymourUI23MeditationCountdownView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end