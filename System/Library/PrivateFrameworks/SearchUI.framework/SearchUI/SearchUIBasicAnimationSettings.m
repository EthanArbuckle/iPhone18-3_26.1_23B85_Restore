@interface SearchUIBasicAnimationSettings
- (CABasicAnimation)coreAnimation;
- (UIViewPropertyAnimator)propertyAnimator;
- (_TtC8SearchUI30SearchUIBasicAnimationSettings)init;
- (double)delay;
- (double)duration;
- (void)setDelay:(double)a3;
- (void)setDuration:(double)a3;
@end

@implementation SearchUIBasicAnimationSettings

- (double)duration
{
  v3 = OBJC_IVAR____TtC8SearchUI30SearchUIBasicAnimationSettings_duration;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDuration:(double)a3
{
  v5 = OBJC_IVAR____TtC8SearchUI30SearchUIBasicAnimationSettings_duration;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)delay
{
  v3 = OBJC_IVAR____TtC8SearchUI30SearchUIBasicAnimationSettings_delay;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDelay:(double)a3
{
  v5 = OBJC_IVAR____TtC8SearchUI30SearchUIBasicAnimationSettings_delay;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (CABasicAnimation)coreAnimation
{
  v3 = objc_allocWithZone(MEMORY[0x1E6979318]);
  v4 = self;
  v5 = [v3 init];
  v6 = OBJC_IVAR____TtC8SearchUI30SearchUIBasicAnimationSettings_duration;
  swift_beginAccess();
  [v5 setDuration_];

  return v5;
}

- (UIViewPropertyAnimator)propertyAnimator
{
  v3 = OBJC_IVAR____TtC8SearchUI30SearchUIBasicAnimationSettings_duration;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  v5 = objc_allocWithZone(MEMORY[0x1E69DC908]);
  v6 = self;
  v7 = [v5 initWithAnimationCurve_];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v7 timingParameters:v4];

  return v8;
}

- (_TtC8SearchUI30SearchUIBasicAnimationSettings)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end