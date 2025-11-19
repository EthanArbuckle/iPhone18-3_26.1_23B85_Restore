@interface MetricPlaybackTracker
- (void)handleAppBackground;
@end

@implementation MetricPlaybackTracker

- (void)handleAppBackground
{

  if (sub_20C59EC4C() != 2)
  {
    *(&self->super.isa + OBJC_IVAR____TtC12SeymourMedia21MetricPlaybackTracker_expectedWorkoutPlaybackPause) = 2;
  }
}

@end