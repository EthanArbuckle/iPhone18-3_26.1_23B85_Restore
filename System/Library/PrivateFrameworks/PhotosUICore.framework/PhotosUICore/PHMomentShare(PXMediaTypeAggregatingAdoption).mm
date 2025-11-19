@interface PHMomentShare(PXMediaTypeAggregatingAdoption)
- (uint64_t)aggregateMediaType;
@end

@implementation PHMomentShare(PXMediaTypeAggregatingAdoption)

- (uint64_t)aggregateMediaType
{
  v2 = [a1 photosCount];
  v3 = [a1 videosCount];
  result = [a1 assetCount];
  if (result)
  {
    if (v3 || v2 != result)
    {
      if (v3 == result && v2 == 0)
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