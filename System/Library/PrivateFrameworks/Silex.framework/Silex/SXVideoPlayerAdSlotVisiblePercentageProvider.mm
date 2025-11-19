@interface SXVideoPlayerAdSlotVisiblePercentageProvider
- (double)visiblePercentageOfObject:(id)a3;
@end

@implementation SXVideoPlayerAdSlotVisiblePercentageProvider

- (double)visiblePercentageOfObject:(id)a3
{
  v3 = [a3 mode];
  result = 0.0;
  if (v3 == 1)
  {
    return 1.0;
  }

  return result;
}

@end