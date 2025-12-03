@interface SXVideoPlayerAdSlotVisiblePercentageProvider
- (double)visiblePercentageOfObject:(id)object;
@end

@implementation SXVideoPlayerAdSlotVisiblePercentageProvider

- (double)visiblePercentageOfObject:(id)object
{
  mode = [object mode];
  result = 0.0;
  if (mode == 1)
  {
    return 1.0;
  }

  return result;
}

@end