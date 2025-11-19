@interface PHCollection(PXDisplayAssetAdoption)
- (uint64_t)px_allowsKeyAssetDisplay;
- (uint64_t)px_allowsMoveToPersonalLibrary;
- (uint64_t)px_allowsMoveToSharedLibrary;
- (uint64_t)px_canRearrangeContent;
- (uint64_t)px_isInReadWriteCloudLibrary;
- (uint64_t)px_isRecentsCollection;
- (uint64_t)px_isUserCreated;
@end

@implementation PHCollection(PXDisplayAssetAdoption)

- (uint64_t)px_isInReadWriteCloudLibrary
{
  v1 = [a1 photoLibrary];
  if ([v1 isCloudPhotoLibraryEnabled])
  {
    v2 = [v1 isReadOnlyCloudPhotoLibrary] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)px_isRecentsCollection
{
  if ([a1 px_isRecentlyViewedCollection] & 1) != 0 || (objc_msgSend(a1, "px_isRecentlyEditedCollection"))
  {
    return 1;
  }

  return [a1 px_isRecentlySharedCollection];
}

- (uint64_t)px_isUserCreated
{
  if ([a1 px_isRegularAlbum])
  {
    return [a1 isTransient] ^ 1;
  }

  if ([a1 px_isRegularFolder])
  {
    return [a1 isTransient] ^ 1;
  }

  if ([a1 px_isUserSmartAlbum])
  {
    return [a1 isTransient] ^ 1;
  }

  result = [a1 px_isProject];
  if (result)
  {
    return [a1 isTransient] ^ 1;
  }

  return result;
}

- (uint64_t)px_allowsMoveToPersonalLibrary
{
  if ([a1 px_isRecentlyDeletedSmartAlbum])
  {
    return 0;
  }

  else
  {
    return [a1 px_isRecoveredSmartAlbum] ^ 1;
  }
}

- (uint64_t)px_allowsMoveToSharedLibrary
{
  if ([a1 px_isRecentlyDeletedSmartAlbum])
  {
    return 0;
  }

  else
  {
    return [a1 px_isRecoveredSmartAlbum] ^ 1;
  }
}

- (uint64_t)px_canRearrangeContent
{
  if ([a1 canPerformEditOperation:5] & 1) != 0 || (objc_msgSend(a1, "px_isMediaTypesFolder") & 1) != 0 || (objc_msgSend(a1, "px_isUtilitiesFolder"))
  {
    return 1;
  }

  return [a1 px_isBookmarksFolder];
}

- (uint64_t)px_allowsKeyAssetDisplay
{
  if ([a1 px_isRegularAlbum] & 1) != 0 || (objc_msgSend(a1, "px_isSharedAlbum") & 1) != 0 || (objc_msgSend(a1, "px_isFavoritesSmartAlbum") & 1) != 0 || (objc_msgSend(a1, "px_isRecentsSmartAlbum") & 1) != 0 || (objc_msgSend(a1, "px_isRegularFolder") & 1) != 0 || (objc_msgSend(a1, "px_isMacSyncedAlbum"))
  {
    return 1;
  }

  return [a1 px_isMacSyncedFacesFolder];
}

@end