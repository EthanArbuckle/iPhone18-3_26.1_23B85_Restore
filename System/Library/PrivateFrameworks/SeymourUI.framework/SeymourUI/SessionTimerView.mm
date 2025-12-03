@interface SessionTimerView
- (CGSize)intrinsicContentSize;
- (_TtC9SeymourUI16SessionTimerView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)updateDuration:(double)duration;
@end

@implementation SessionTimerView

- (void)updateDuration:(double)duration
{
  selfCopy = self;
  sub_20BDFBFEC(duration);
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
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
  selfCopy = self;
  if (v3)
  {
    [v3 stopAnimation_];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for SessionTimerView();
  [(SessionTimerView *)&v5 dealloc];
}

- (_TtC9SeymourUI16SessionTimerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end