@interface PulseAnimator
- (void)displayLinkFired:(id)fired;
@end

@implementation PulseAnimator

- (void)displayLinkFired:(id)fired
{
  firedCopy = fired;

  sub_20BC16B50(firedCopy);
}

@end