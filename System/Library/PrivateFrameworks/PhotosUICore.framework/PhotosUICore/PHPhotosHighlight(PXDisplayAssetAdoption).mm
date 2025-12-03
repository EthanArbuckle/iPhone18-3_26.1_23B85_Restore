@interface PHPhotosHighlight(PXDisplayAssetAdoption)
- (__CFString)px_symbolImageName;
- (uint64_t)px_isTrip;
@end

@implementation PHPhotosHighlight(PXDisplayAssetAdoption)

- (__CFString)px_symbolImageName
{
  if ([self px_isTrip])
  {
    v1 = @"suitcase";
  }

  else
  {
    v1 = @"rectangle.stack";
  }

  return v1;
}

- (uint64_t)px_isTrip
{
  result = [self type];
  if (result != 1)
  {
    return [self type] == 2;
  }

  return result;
}

@end