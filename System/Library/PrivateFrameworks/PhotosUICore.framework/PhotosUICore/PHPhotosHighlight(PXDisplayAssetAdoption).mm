@interface PHPhotosHighlight(PXDisplayAssetAdoption)
- (__CFString)px_symbolImageName;
- (uint64_t)px_isTrip;
@end

@implementation PHPhotosHighlight(PXDisplayAssetAdoption)

- (__CFString)px_symbolImageName
{
  if ([a1 px_isTrip])
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
  result = [a1 type];
  if (result != 1)
  {
    return [a1 type] == 2;
  }

  return result;
}

@end