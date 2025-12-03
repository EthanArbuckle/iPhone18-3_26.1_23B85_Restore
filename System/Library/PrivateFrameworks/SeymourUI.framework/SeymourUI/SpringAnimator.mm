@interface SpringAnimator
- (void)displayLinkFired:(id)fired;
@end

@implementation SpringAnimator

- (void)displayLinkFired:(id)fired
{
  firedCopy = fired;

  sub_20BBB6164();
}

@end