@interface SASBookendAnimationConfiguration
- (SASBookendAnimationConfiguration)init;
- (void)setPreferedAnimationStartingPoint:(unint64_t)a3;
- (void)setPreferredTermOfAddress:(int64_t)a3;
- (void)useWatchVariant:(BOOL)a3;
@end

@implementation SASBookendAnimationConfiguration

- (void)setPreferedAnimationStartingPoint:(unint64_t)a3
{
  v4 = self + OBJC_IVAR___SASBookendAnimationConfiguration_preferredStartingPoint;
  swift_beginAccess();
  *v4 = a3;
  v4[8] = 0;
}

- (void)useWatchVariant:(BOOL)a3
{
  v5 = OBJC_IVAR___SASBookendAnimationConfiguration_useWatchVariant;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (void)setPreferredTermOfAddress:(int64_t)a3
{
  v4 = self;
  sub_265A86B9C(a3);
}

- (SASBookendAnimationConfiguration)init
{
  v2 = (&self->super.isa + OBJC_IVAR___SASBookendAnimationConfiguration_preferredTermOfAddress);
  *v2 = 0;
  v2[1] = 0;
  v3 = self + OBJC_IVAR___SASBookendAnimationConfiguration_preferredStartingPoint;
  *v3 = 0;
  v3[8] = 1;
  *(&self->super.isa + OBJC_IVAR___SASBookendAnimationConfiguration_useWatchVariant) = 2;
  v5.receiver = self;
  v5.super_class = SASBookendAnimationConfiguration;
  return [(SASBookendAnimationConfiguration *)&v5 init];
}

@end