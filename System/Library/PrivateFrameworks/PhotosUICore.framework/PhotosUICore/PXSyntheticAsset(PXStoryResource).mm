@interface PXSyntheticAsset(PXStoryResource)
- (double)px_storyResourceFetchBestPlaybackRange;
@end

@implementation PXSyntheticAsset(PXStoryResource)

- (double)px_storyResourceFetchBestPlaybackRange
{
  result = 0.0;
  self[1] = 0u;
  self[2] = 0u;
  *self = 0u;
  return result;
}

@end