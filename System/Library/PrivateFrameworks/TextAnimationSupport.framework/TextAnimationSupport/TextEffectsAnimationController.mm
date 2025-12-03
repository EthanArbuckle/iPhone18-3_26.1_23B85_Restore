@interface TextEffectsAnimationController
- (void)displayLink:(id)link;
@end

@implementation TextEffectsAnimationController

- (void)displayLink:(id)link
{
  linkCopy = link;

  [linkCopy targetTimestamp];
  TextEffectsAnimationController.displayLinkUpdate(at:removeFinished:)(1, v4);
}

@end