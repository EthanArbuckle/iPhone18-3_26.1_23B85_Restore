@interface TimelineVFXEngineController
- (void)reduceMotionDidChange;
@end

@implementation TimelineVFXEngineController

- (void)reduceMotionDidChange
{
  v3 = objc_opt_self();

  (*(self->super.isa + 210))([v3 px_accessibilityIsReduceMotionEnabled]);
}

@end