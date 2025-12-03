@interface PHPhotosHighlight(HighlightItem)
- (id)extendedCuratedAssets;
- (id)keyAssetForHighlightFilter:()HighlightItem;
- (uint64_t)numberOfAssetsInExtendedForSharingFilter:()HighlightItem;
- (uint64_t)visibilityStateForHighlightFilter:()HighlightItem;
@end

@implementation PHPhotosHighlight(HighlightItem)

- (uint64_t)visibilityStateForHighlightFilter:()HighlightItem
{
  if (a3 == 2)
  {
    return [self visibilityStateMixed];
  }

  if (a3 == 1)
  {
    return [self visibilityStateShared];
  }

  if (a3)
  {
    return 0;
  }

  return [self visibilityState];
}

- (id)keyAssetForHighlightFilter:()HighlightItem
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = [self keyAssetObjectIDForKindWithFilter:?];
  if (v2)
  {
    photoLibrary = [self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    [librarySpecificFetchOptions setIncludeGuestAssets:1];
    v5 = MEMORY[0x277CD97A8];
    v11[0] = v2;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v7 = [v5 fetchAssetsWithObjectIDs:v6 options:librarySpecificFetchOptions];

    firstObject = [v7 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (id)extendedCuratedAssets
{
  photoLibrary = [self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setIncludeGuestAssets:1];
  v4 = [MEMORY[0x277CD97A8] fetchExtendedCuratedAssetsInAssetCollection:self options:librarySpecificFetchOptions];
  fetchedObjects = [v4 fetchedObjects];

  return fetchedObjects;
}

- (uint64_t)numberOfAssetsInExtendedForSharingFilter:()HighlightItem
{
  kind = [self kind];
  if (kind == 3)
  {
    if (a3 == 2)
    {

      return [self dayGroupExtendedAssetsCountMixed];
    }

    else if (a3 == 1)
    {

      return [self dayGroupExtendedAssetsCountShared];
    }

    else
    {
      if (a3)
      {
        return 0;
      }

      return [self dayGroupExtendedAssetsCountPrivate];
    }
  }

  else
  {
    if (kind)
    {
      return 0;
    }

    switch(a3)
    {
      case 2:

        return [self extendedCountMixed];
      case 1:

        return [self extendedCountShared];
      case 0:

        return [self extendedCountPrivate];
      default:
        return 0;
    }
  }
}

@end