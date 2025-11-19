@interface SearchUISpringAnimationSettings
- (CABasicAnimation)coreAnimation;
- (UIViewPropertyAnimator)propertyAnimator;
- (_TtC8SearchUI31SearchUISpringAnimationSettings)init;
- (double)bounce;
- (double)delay;
- (double)perceptualDuration;
- (void)setBounce:(double)a3;
- (void)setDelay:(double)a3;
- (void)setPerceptualDuration:(double)a3;
@end

@implementation SearchUISpringAnimationSettings

- (double)bounce
{
  v3 = OBJC_IVAR____TtC8SearchUI31SearchUISpringAnimationSettings_bounce;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBounce:(double)a3
{
  v5 = OBJC_IVAR____TtC8SearchUI31SearchUISpringAnimationSettings_bounce;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)perceptualDuration
{
  v3 = OBJC_IVAR____TtC8SearchUI31SearchUISpringAnimationSettings_perceptualDuration;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setPerceptualDuration:(double)a3
{
  v5 = OBJC_IVAR____TtC8SearchUI31SearchUISpringAnimationSettings_perceptualDuration;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)delay
{
  v3 = OBJC_IVAR____TtC8SearchUI31SearchUISpringAnimationSettings_delay;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDelay:(double)a3
{
  v5 = OBJC_IVAR____TtC8SearchUI31SearchUISpringAnimationSettings_delay;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (CABasicAnimation)coreAnimation
{
  v3 = OBJC_IVAR____TtC8SearchUI31SearchUISpringAnimationSettings_perceptualDuration;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  v5 = OBJC_IVAR____TtC8SearchUI31SearchUISpringAnimationSettings_bounce;
  swift_beginAccess();
  v6 = [objc_allocWithZone(MEMORY[0x1E69794A8]) initWithPerceptualDuration:v4 bounce:*(&self->super.isa + v5)];

  return v6;
}

- (UIViewPropertyAnimator)propertyAnimator
{
  v3 = OBJC_IVAR____TtC8SearchUI31SearchUISpringAnimationSettings_perceptualDuration;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  v5 = OBJC_IVAR____TtC8SearchUI31SearchUISpringAnimationSettings_bounce;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  v7 = objc_allocWithZone(MEMORY[0x1E69DCF88]);
  v8 = self;
  v9 = [v7 initWithDuration:v4 bounce:v6];
  v10 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v9 timingParameters:0.0];

  return v10;
}

- (_TtC8SearchUI31SearchUISpringAnimationSettings)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end