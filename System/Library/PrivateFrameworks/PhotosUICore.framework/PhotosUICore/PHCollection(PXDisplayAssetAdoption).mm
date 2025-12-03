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
  photoLibrary = [self photoLibrary];
  if ([photoLibrary isCloudPhotoLibraryEnabled])
  {
    v2 = [photoLibrary isReadOnlyCloudPhotoLibrary] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)px_isRecentsCollection
{
  if ([self px_isRecentlyViewedCollection] & 1) != 0 || (objc_msgSend(self, "px_isRecentlyEditedCollection"))
  {
    return 1;
  }

  return [self px_isRecentlySharedCollection];
}

- (uint64_t)px_isUserCreated
{
  if ([self px_isRegularAlbum])
  {
    return [self isTransient] ^ 1;
  }

  if ([self px_isRegularFolder])
  {
    return [self isTransient] ^ 1;
  }

  if ([self px_isUserSmartAlbum])
  {
    return [self isTransient] ^ 1;
  }

  result = [self px_isProject];
  if (result)
  {
    return [self isTransient] ^ 1;
  }

  return result;
}

- (uint64_t)px_allowsMoveToPersonalLibrary
{
  if ([self px_isRecentlyDeletedSmartAlbum])
  {
    return 0;
  }

  else
  {
    return [self px_isRecoveredSmartAlbum] ^ 1;
  }
}

- (uint64_t)px_allowsMoveToSharedLibrary
{
  if ([self px_isRecentlyDeletedSmartAlbum])
  {
    return 0;
  }

  else
  {
    return [self px_isRecoveredSmartAlbum] ^ 1;
  }
}

- (uint64_t)px_canRearrangeContent
{
  if ([self canPerformEditOperation:5] & 1) != 0 || (objc_msgSend(self, "px_isMediaTypesFolder") & 1) != 0 || (objc_msgSend(self, "px_isUtilitiesFolder"))
  {
    return 1;
  }

  return [self px_isBookmarksFolder];
}

- (uint64_t)px_allowsKeyAssetDisplay
{
  if ([self px_isRegularAlbum] & 1) != 0 || (objc_msgSend(self, "px_isSharedAlbum") & 1) != 0 || (objc_msgSend(self, "px_isFavoritesSmartAlbum") & 1) != 0 || (objc_msgSend(self, "px_isRecentsSmartAlbum") & 1) != 0 || (objc_msgSend(self, "px_isRegularFolder") & 1) != 0 || (objc_msgSend(self, "px_isMacSyncedAlbum"))
  {
    return 1;
  }

  return [self px_isMacSyncedFacesFolder];
}

@end