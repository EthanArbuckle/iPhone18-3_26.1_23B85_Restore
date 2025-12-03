@interface PHPhotosHighlight(PhotosUICore)
- (__CFString)px_navigationURLHost;
- (uint64_t)px_curationType;
@end

@implementation PHPhotosHighlight(PhotosUICore)

- (uint64_t)px_curationType
{
  preferredCurationType = [self preferredCurationType];
  v3 = +[PXCuratedLibrarySettings sharedInstance];
  useCustomDaysCurationType = [v3 useCustomDaysCurationType];

  if (!useCustomDaysCurationType)
  {
    return preferredCurationType;
  }

  assetCollectionSubtype = [self assetCollectionSubtype];
  if (assetCollectionSubtype != 1000000304 && assetCollectionSubtype != 1000000301)
  {
    return preferredCurationType;
  }

  v6 = +[PXCuratedLibrarySettings sharedInstance];
  daysCurationType = [v6 daysCurationType];

  return daysCurationType;
}

- (__CFString)px_navigationURLHost
{
  if ([self px_isEvent])
  {
    return @"events";
  }

  if ([self px_isTrip])
  {
    return @"trips";
  }

  return @"highlights";
}

@end