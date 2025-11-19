@interface TextEffectsAnimationController
- (void)displayLink:(id)a3;
@end

@implementation TextEffectsAnimationController

- (void)displayLink:(id)a3
{
  v3 = a3;

  [v3 targetTimestamp];
  TextEffectsAnimationController.displayLinkUpdate(at:removeFinished:)(1, v4);
}

@end