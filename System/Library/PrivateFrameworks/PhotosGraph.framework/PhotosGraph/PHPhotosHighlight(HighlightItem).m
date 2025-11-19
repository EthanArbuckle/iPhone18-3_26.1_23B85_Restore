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
    return [a1 visibilityStateMixed];
  }

  if (a3 == 1)
  {
    return [a1 visibilityStateShared];
  }

  if (a3)
  {
    return 0;
  }

  return [a1 visibilityState];
}

- (id)keyAssetForHighlightFilter:()HighlightItem
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 keyAssetObjectIDForKindWithFilter:?];
  if (v2)
  {
    v3 = [a1 photoLibrary];
    v4 = [v3 librarySpecificFetchOptions];

    [v4 setIncludeGuestAssets:1];
    v5 = MEMORY[0x277CD97A8];
    v11[0] = v2;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v7 = [v5 fetchAssetsWithObjectIDs:v6 options:v4];

    v8 = [v7 firstObject];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)extendedCuratedAssets
{
  v2 = [a1 photoLibrary];
  v3 = [v2 librarySpecificFetchOptions];

  [v3 setIncludeGuestAssets:1];
  v4 = [MEMORY[0x277CD97A8] fetchExtendedCuratedAssetsInAssetCollection:a1 options:v3];
  v5 = [v4 fetchedObjects];

  return v5;
}

- (uint64_t)numberOfAssetsInExtendedForSharingFilter:()HighlightItem
{
  v5 = [a1 kind];
  if (v5 == 3)
  {
    if (a3 == 2)
    {

      return [a1 dayGroupExtendedAssetsCountMixed];
    }

    else if (a3 == 1)
    {

      return [a1 dayGroupExtendedAssetsCountShared];
    }

    else
    {
      if (a3)
      {
        return 0;
      }

      return [a1 dayGroupExtendedAssetsCountPrivate];
    }
  }

  else
  {
    if (v5)
    {
      return 0;
    }

    switch(a3)
    {
      case 2:

        return [a1 extendedCountMixed];
      case 1:

        return [a1 extendedCountShared];
      case 0:

        return [a1 extendedCountPrivate];
      default:
        return 0;
    }
  }
}

@end