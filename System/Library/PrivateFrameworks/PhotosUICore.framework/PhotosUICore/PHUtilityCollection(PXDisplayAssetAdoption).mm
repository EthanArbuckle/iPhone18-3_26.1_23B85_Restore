@interface PHUtilityCollection(PXDisplayAssetAdoption)
- (__CFString)px_symbolImageName;
@end

@implementation PHUtilityCollection(PXDisplayAssetAdoption)

- (__CFString)px_symbolImageName
{
  v1 = [self type] - 1;
  if (v1 > 5)
  {
    return @"rectangle.stack";
  }

  else
  {
    return off_1E773CC00[v1];
  }
}

@end