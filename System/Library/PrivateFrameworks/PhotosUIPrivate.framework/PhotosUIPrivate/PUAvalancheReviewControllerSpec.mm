@interface PUAvalancheReviewControllerSpec
- (CGSize)selectionBadgeSize;
- (UIOffset)selectionBadgeOffset;
- (double)interItemSpacing;
@end

@implementation PUAvalancheReviewControllerSpec

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

- (UIOffset)selectionBadgeOffset
{
  v2 = 5.0;
  v3 = 5.0;
  result.vertical = v3;
  result.horizontal = v2;
  return result;
}

- (CGSize)selectionBadgeSize
{
  v2 = 31.0;
  v3 = 31.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end