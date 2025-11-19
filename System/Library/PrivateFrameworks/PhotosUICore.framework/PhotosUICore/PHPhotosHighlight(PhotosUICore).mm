@interface PHPhotosHighlight(PhotosUICore)
- (__CFString)px_navigationURLHost;
- (uint64_t)px_curationType;
@end

@implementation PHPhotosHighlight(PhotosUICore)

- (uint64_t)px_curationType
{
  v2 = [a1 preferredCurationType];
  v3 = +[PXCuratedLibrarySettings sharedInstance];
  v4 = [v3 useCustomDaysCurationType];

  if (!v4)
  {
    return v2;
  }

  v5 = [a1 assetCollectionSubtype];
  if (v5 != 1000000304 && v5 != 1000000301)
  {
    return v2;
  }

  v6 = +[PXCuratedLibrarySettings sharedInstance];
  v7 = [v6 daysCurationType];

  return v7;
}

- (__CFString)px_navigationURLHost
{
  if ([a1 px_isEvent])
  {
    return @"events";
  }

  if ([a1 px_isTrip])
  {
    return @"trips";
  }

  return @"highlights";
}

@end