@interface PUAvalancheReviewControllerPadSpec
- (double)interItemSpacing;
@end

@implementation PUAvalancheReviewControllerPadSpec

- (double)interItemSpacing
{
  v2 = PLIsTallScreen();
  result = 15.0;
  if (v2)
  {
    return 10.0;
  }

  return result;
}

@end