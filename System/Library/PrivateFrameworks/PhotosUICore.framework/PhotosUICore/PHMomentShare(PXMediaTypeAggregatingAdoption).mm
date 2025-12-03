@interface PHMomentShare(PXMediaTypeAggregatingAdoption)
- (uint64_t)aggregateMediaType;
@end

@implementation PHMomentShare(PXMediaTypeAggregatingAdoption)

- (uint64_t)aggregateMediaType
{
  photosCount = [self photosCount];
  videosCount = [self videosCount];
  result = [self assetCount];
  if (result)
  {
    if (videosCount || photosCount != result)
    {
      if (videosCount == result && photosCount == 0)
      {
        return 2;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

@end