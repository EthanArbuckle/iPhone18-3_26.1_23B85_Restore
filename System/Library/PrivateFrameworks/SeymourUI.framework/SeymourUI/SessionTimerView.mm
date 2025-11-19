@interface SessionTimerView
- (CGSize)intrinsicContentSize;
- (_TtC9SeymourUI16SessionTimerView)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)updateDuration:(double)a3;
@end

@implementation SessionTimerView

- (void)updateDuration:(double)a3
{
  v4 = self;
  sub_20BDFBFEC(a3);
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = sub_20BDFC148();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)dealloc
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI16SessionTimerView_animator);
  v4 = self;
  if (v3)
  {
    [v3 stopAnimation_];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for SessionTimerView();
  [(SessionTimerView *)&v5 dealloc];
}

- (_TtC9SeymourUI16SessionTimerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end