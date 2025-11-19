@interface PUAvalancheReviewControllerPhoneSpec
- (double)interItemSpacing;
@end

@implementation PUAvalancheReviewControllerPhoneSpec

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