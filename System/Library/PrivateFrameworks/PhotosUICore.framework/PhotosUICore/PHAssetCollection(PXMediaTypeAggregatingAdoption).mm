@interface PHAssetCollection(PXMediaTypeAggregatingAdoption)
- (uint64_t)aggregateMediaType;
@end

@implementation PHAssetCollection(PXMediaTypeAggregatingAdoption)

- (uint64_t)aggregateMediaType
{
  estimatedPhotosCount = [self estimatedPhotosCount];
  estimatedVideosCount = [self estimatedVideosCount];
  result = [self estimatedAssetCount];
  if (result)
  {
    if (estimatedVideosCount || estimatedPhotosCount != result)
    {
      if (estimatedVideosCount == result && estimatedPhotosCount == 0)
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