@interface WKDynamicRotationManager
- (void)displayLinkFired:(id)fired;
@end

@implementation WKDynamicRotationManager

- (void)displayLinkFired:(id)fired
{
  firedCopy = fired;

  sub_1E4A6DA90(firedCopy);
}

@end