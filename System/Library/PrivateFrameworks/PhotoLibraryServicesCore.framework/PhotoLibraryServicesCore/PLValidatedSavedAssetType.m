@interface PLValidatedSavedAssetType
+ (BOOL)allowSavedAssetTypeMutationFrom:(signed __int16)a3 to:(signed __int16)a4;
+ (id)predicateArrayArgumentForMask:(unsigned int)a3;
+ (id)predicateForExcludeMask:(unsigned int)a3 useIndex:(BOOL)a4;
+ (id)predicateForExcludeMask:(unsigned int)a3 useIndex:(BOOL)a4 keyPathPrefix:(id)a5;
+ (id)predicateForIncludeMask:(unsigned int)a3 useIndex:(BOOL)a4;
+ (id)predicateForIncludeMask:(unsigned int)a3 useIndex:(BOOL)a4 keyPathPrefix:(id)a5 formatPrefix:(id)a6;
+ (id)subpredicatesForExcludeMask:(unsigned int)a3;
+ (id)subpredicatesForIncludeMask:(unsigned int)a3;
+ (unint64_t)mapSavedAssetType:(signed __int16)a3 unknown:(unint64_t)a4 photoBooth:(unint64_t)a5 photoStream:(unint64_t)a6 camera:(unint64_t)a7 cloudShared:(unint64_t)a8 cameraConnectionKit:(unint64_t)a9 cloudPhotoLibrary:(unint64_t)a10 wallpaper_UNUSED:(unint64_t)a11 momentShared:(unint64_t)a12 placeholder:(unint64_t)a13 referenced:(unint64_t)a14 alternate:(unint64_t)a15 guest:(unint64_t)a16 companionSynced:(unint64_t)a17 recovered:(unint64_t)a18 legacyImport:(unint64_t)a19 collectionShare:(unint64_t)a20 unrecognized:(unint64_t)a21;
+ (unsigned)maskForAddAssetToLibraryScopeIfShareEverythingPolicyEnabled;
+ (unsigned)maskForAddingLocalVideoKeyFrameResourceExclusions;
+ (unsigned)maskForAllPhotosAlbum;
+ (unsigned)maskForAllowedForAnalysis;
+ (unsigned)maskForAllowedForMediaAnalysis;
+ (unsigned)maskForAllowedForSceneAnalysis;
+ (unsigned)maskForAllowedToPromoteToGuestAsset;
+ (unsigned)maskForAllowedToPromoteToUserLibrary;
+ (unsigned)maskForAllowedToResetGuestAssetPromotion;
+ (unsigned)maskForAssetStackProcessingExclusions;
+ (unsigned)maskForAssetsAllowingLockedResourceTransfer;
+ (unsigned)maskForAssetsAllowingVirtualFullSizeRender;
+ (unsigned)maskForAssetsEligibleForCloudKitTransport;
+ (unsigned)maskForAssetsEligibleForFileSystemImportSavedAssetTypeUpdate;
+ (unsigned)maskForAssetsExcludedFromOTARestore;
+ (unsigned)maskForAssetsIncludedInMoments;
+ (unsigned)maskForAutoDeleteAssetsUponMomentShareTrash;
+ (unsigned)maskForAvalancheSupportedAssets;
+ (unsigned)maskForAvalancheSupportedAssetsFromFinderSync;
+ (unsigned)maskForAvalancheSupportedAssetsFromUserLibrary;
+ (unsigned)maskForBurstsAlbumExclusions;
+ (unsigned)maskForCanDeleteEmptyPathForCorruptAssetsDuringFilesystemImport;
+ (unsigned)maskForCloudPhotoLibrarySizesFromDBExclusions;
+ (unsigned)maskForCompleteStateIsRelevant;
+ (unsigned)maskForCouldBeStoredInDCIM;
+ (unsigned)maskForCplQuotaExclusions;
+ (unsigned)maskForDuplicateProcessingExclusions;
+ (unsigned)maskForFavoritesAlbumExclusions;
+ (unsigned)maskForFeatureAvailabilityForSceneAnalysis:(BOOL)a3;
+ (unsigned)maskForFixIncorrectAddedDateExclusions;
+ (unsigned)maskForFixupAssetPersistenceExclusions;
+ (unsigned)maskForGenerateAddedDateExclusions;
+ (unsigned)maskForIncludeInCPLCounts;
+ (unsigned)maskForIsValidForBackup;
+ (unsigned)maskForIsValidForFileSystemPersistence;
+ (unsigned)maskForLibraryScopeRuleEvaluationExclusions;
+ (unsigned)maskForMigrateLegacyVideoAdjustmentsExclusions;
+ (unsigned)maskForNotifyALAssetsLibraryWithChangesCloudSharedExclusions;
+ (unsigned)maskForNotifyALAssetsLibraryWithChangesExclusions;
+ (unsigned)maskForPLFetchingAlbumExclusions;
+ (unsigned)maskForPLSyncClientIncompleteAssetExclusions;
+ (unsigned)maskForPlacesAlbum;
+ (unsigned)maskForPopulateFaceRegionsExclusions;
+ (unsigned)maskForRecentlyAddedAlbumExclusions;
+ (unsigned)maskForRecentlyEditedAlbumExclusions;
+ (unsigned)maskForRecoverSupplementalResourcesForAsset;
+ (unsigned)maskForSearchIndexExclusions;
+ (unsigned)maskForSelfiesAlbumExclusions;
+ (unsigned)maskForSharedLibraryExclusions;
+ (unsigned)maskForSmartAlbumExclusions;
+ (unsigned)maskForSocialGroupKeyAssetFetch;
+ (unsigned)maskForStoreDemoContent;
+ (unsigned)maskForSuppressPtpInfo;
+ (unsigned)maskForSyndicationIdentifierFetchExclusions;
+ (unsigned)maskForTagScreenshotsExclusions;
+ (unsigned)maskForTriggerRebuildForPathCorruptionExclusions;
+ (unsigned)maskForUpdateMogulSubtypeExclusions;
+ (unsigned)maskForUserLibrary;
+ (unsigned)maskForValidSavedAssetTypesDuringMacMigration;
+ (unsigned)validatedSavedAssetTypeMaskUnknown:(BOOL)a3 photoBooth:(BOOL)a4 photoStream:(BOOL)a5 camera:(BOOL)a6 cloudShared:(BOOL)a7 cameraConnectionKit:(BOOL)a8 cloudPhotoLibrary:(BOOL)a9 wallpaper_UNUSED:(BOOL)a10 momentShared:(BOOL)a11 placeholder:(BOOL)a12 referenced:(BOOL)a13 alternate:(BOOL)a14 guest:(BOOL)a15 companionSynced:(BOOL)a16 recovered:(BOOL)a17 collectionShare:(BOOL)a18 legacyImport:(BOOL)a19;
+ (void)executeBlockForSavedAssetType:(signed __int16)a3 unknown:(id)a4 photoBooth:(id)a5 photoStream:(id)a6 camera:(id)a7 cloudShared:(id)a8 cameraConnectionKit:(id)a9 cloudPhotoLibrary:(id)a10 wallpaper_UNUSED:(id)a11 momentShared:(id)a12 placeholder:(id)a13 referenced:(id)a14 alternate:(id)a15 guest:(id)a16 companionSynced:(id)a17 recovered:(id)a18 legacyImport:(id)a19 collectionShare:(id)a20 unrecognized:(id)a21;
@end

@implementation PLValidatedSavedAssetType

+ (unsigned)maskForAllPhotosAlbum
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 0;
  return [a1 validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:1 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:0x101000100000001 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForUserLibrary
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 0;
  return [a1 validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:0 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:0x100000001 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForPlacesAlbum
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 256;
  return [a1 validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:1 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:0x1010101010001 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForFavoritesAlbumExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:0 cameraConnectionKit:0 cloudPhotoLibrary:0x10001010000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForSocialGroupKeyAssetFetch
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 256;
  return [a1 validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:1 camera:1 cloudShared:1 cameraConnectionKit:1 cloudPhotoLibrary:0x100000001 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForFeatureAvailabilityForSceneAnalysis:(BOOL)a3
{
  v3 = a3;
  v4 = [a1 maskForUserLibrary];
  if (v3)
  {
    v5 = 32784;
  }

  else
  {
    v5 = 0x8000;
  }

  return v4 | v5;
}

+ (unsigned)maskForCplQuotaExclusions
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 257;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:1 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:0x101010101010000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAssetsAllowingVirtualFullSizeRender
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 0;
  return [a1 validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:0 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:0x100000001 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAssetsAllowingLockedResourceTransfer
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 0;
  return [a1 validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:0 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:1 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAssetStackProcessingExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:1 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:0x101010001010100 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForDuplicateProcessingExclusions
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 257;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:1 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:0x101010101010100 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForSyndicationIdentifierFetchExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:0 cameraConnectionKit:0 cloudPhotoLibrary:16842752 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAllowedToPromoteToUserLibrary
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 0;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:0 cameraConnectionKit:0 cloudPhotoLibrary:0x1000000000000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAllowedToResetGuestAssetPromotion
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 0;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:1 cloudShared:0 cameraConnectionKit:0 cloudPhotoLibrary:0x1000000000000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAllowedToPromoteToGuestAsset
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 0;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:1 cloudShared:0 cameraConnectionKit:0 cloudPhotoLibrary:0x1000000000000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForLibraryScopeRuleEvaluationExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:0x100010001010000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForCompleteStateIsRelevant
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 0;
  return [a1 validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:0 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:0x101000100000101 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForSuppressPtpInfo
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 257;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:1 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:0x10000010100 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForRecoverSupplementalResourcesForAsset
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 0;
  return [a1 validatedSavedAssetTypeMaskUnknown:1 photoBooth:0 photoStream:0 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:0x101000000000000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForIsValidForFileSystemPersistence
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 0;
  return [a1 validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:1 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:0x100010000000101 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForIsValidForBackup
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 256;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:1 photoStream:1 camera:1 cloudShared:1 cameraConnectionKit:1 cloudPhotoLibrary:0x101010100010001 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForSearchIndexExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:0x10001010000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForCloudPhotoLibrarySizesFromDBExclusions
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 1;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:1 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:0x101010000000000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAssetsExcludedFromOTARestore
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 257;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:1 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:16843008 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForNotifyALAssetsLibraryWithChangesCloudSharedExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:16842752 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForNotifyALAssetsLibraryWithChangesExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 1;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:0 cameraConnectionKit:0 cloudPhotoLibrary:0x1000000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForUpdateMogulSubtypeExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 1;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:0 cameraConnectionKit:0 cloudPhotoLibrary:0x100000000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAddingLocalVideoKeyFrameResourceExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 1;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:0 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForFixupAssetPersistenceExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:16842752 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForTagScreenshotsExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:16842752 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForFixIncorrectAddedDateExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:1 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:16842752 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForGenerateAddedDateExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:16842752 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForPopulateFaceRegionsExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:16842752 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForCanDeleteEmptyPathForCorruptAssetsDuringFilesystemImport
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 1;
  return [a1 validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:1 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:0x101010000000100 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForTriggerRebuildForPathCorruptionExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 1;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:1 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:0 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAutoDeleteAssetsUponMomentShareTrash
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 0;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:0 cameraConnectionKit:0 cloudPhotoLibrary:16842752 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAllowedForSceneAnalysis
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 256;
  return [a1 validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:0 camera:1 cloudShared:1 cameraConnectionKit:1 cloudPhotoLibrary:0x1000100000001 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAllowedForMediaAnalysis
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 0;
  return [a1 validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:0 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:0x1000100000001 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAllowedForAnalysis
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 0;
  return [a1 validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:0 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:0x1010100000001 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForIncludeInCPLCounts
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 0;
  return [a1 validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:1 camera:1 cloudShared:1 cameraConnectionKit:1 cloudPhotoLibrary:1 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAddAssetToLibraryScopeIfShareEverythingPolicyEnabled
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 0;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:1 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForPLSyncClientIncompleteAssetExclusions
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 257;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:1 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:0x10001010000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForStoreDemoContent
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 0;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:1 cloudShared:0 cameraConnectionKit:0 cloudPhotoLibrary:0x100000000000001 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForValidSavedAssetTypesDuringMacMigration
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 256;
  return [a1 validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:1 camera:1 cloudShared:1 cameraConnectionKit:1 cloudPhotoLibrary:0x101010100010001 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForMigrateLegacyVideoAdjustmentsExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:16842753 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForCouldBeStoredInDCIM
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 1;
  return [a1 validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:0 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:0x101010000000001 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForSharedLibraryExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:0x10001010000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAssetsEligibleForFileSystemImportSavedAssetTypeUpdate
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 0;
  return [a1 validatedSavedAssetTypeMaskUnknown:1 photoBooth:0 photoStream:0 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:1 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForRecentlyEditedAlbumExclusions
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 257;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:0x100010001010000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForBurstsAlbumExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:0 cameraConnectionKit:0 cloudPhotoLibrary:0x10001010000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForRecentlyAddedAlbumExclusions
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 257;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:0x10001010000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForSelfiesAlbumExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:0x10001010000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForPLFetchingAlbumExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:0x10001010000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForSmartAlbumExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:0x10000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAvalancheSupportedAssetsFromFinderSync
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 0;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:0 cameraConnectionKit:0 cloudPhotoLibrary:0 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAvalancheSupportedAssetsFromUserLibrary
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 0;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:0x10100000001 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAvalancheSupportedAssets
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 0;
  return [a1 validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:0x10100000001 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAssetsIncludedInMoments
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 0;
  return [a1 validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:1 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:0x1000100000001 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAssetsEligibleForCloudKitTransport
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 256;
  return [a1 validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:0 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:16842753 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (id)predicateArrayArgumentForMask:(unsigned int)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__PLValidatedSavedAssetType_predicateArrayArgumentForMask___block_invoke;
  v9[3] = &unk_1E79305D8;
  v5 = v4;
  v10 = v5;
  v6 = v9;
  v7 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v12 = __PLValidatedSavedAssetTypeForEnabledTypesExecuteBlock_block_invoke;
  v13 = &unk_1E7930600;
  v15 = a3;
  v14 = v6;
  do
  {
    v12(v11, word_1AAA8F4E0[v7++]);
  }

  while (v7 != 17);

  return v5;
}

void __59__PLValidatedSavedAssetType_predicateArrayArgumentForMask___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithShort:a2];
  [v2 addObject:v3];
}

+ (id)subpredicatesForExcludeMask:(unsigned int)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = __57__PLValidatedSavedAssetType_subpredicatesForExcludeMask___block_invoke;
  v11 = &unk_1E79305B0;
  v14 = a3;
  v6 = v5;
  v7 = 0;
  v12 = v6;
  v13 = a1;
  do
  {
    v10(v9, word_1AAA8F4E0[v7++]);
  }

  while (v7 != 17);

  return v6;
}

void __57__PLValidatedSavedAssetType_subpredicatesForExcludeMask___block_invoke(uint64_t a1, uint64_t a2)
{
  if (PLValidatedSavedAssetTypeApplies(*(a1 + 48), a2))
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) predicateForExcludeSavedAssetType:a2];
    [v4 addObject:v5];
  }
}

+ (id)subpredicatesForIncludeMask:(unsigned int)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = __57__PLValidatedSavedAssetType_subpredicatesForIncludeMask___block_invoke;
  v11 = &unk_1E79305B0;
  v14 = a3;
  v6 = v5;
  v7 = 0;
  v12 = v6;
  v13 = a1;
  do
  {
    v10(v9, word_1AAA8F4E0[v7++]);
  }

  while (v7 != 17);

  return v6;
}

void __57__PLValidatedSavedAssetType_subpredicatesForIncludeMask___block_invoke(uint64_t a1, uint64_t a2)
{
  if (PLValidatedSavedAssetTypeApplies(*(a1 + 48), a2))
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) predicateForIncludeSavedAssetType:a2];
    [v4 addObject:v5];
  }
}

+ (id)predicateForExcludeMask:(unsigned int)a3 useIndex:(BOOL)a4 keyPathPrefix:(id)a5
{
  v5 = a4;
  v6 = *&a3;
  v8 = a5;
  v9 = [a1 predicateArrayArgumentForMask:v6];
  if (v5)
  {
    v10 = @"NOT %K.savedAssetType IN %@";
  }

  else
  {
    v10 = @"NOT noindex:(%K.savedAssetType) IN %@";
  }

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:v10, v8, v9];

  return v11;
}

+ (id)predicateForIncludeMask:(unsigned int)a3 useIndex:(BOOL)a4 keyPathPrefix:(id)a5 formatPrefix:(id)a6
{
  v7 = a4;
  v8 = *&a3;
  v10 = a5;
  v11 = a6;
  v12 = [a1 predicateArrayArgumentForMask:v8];
  v13 = @"noindex:(%K.savedAssetType) IN %@";
  if (v7)
  {
    v13 = @"%K.savedAssetType IN %@";
  }

  v14 = v13;
  if (v11)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v11, v14];

    v14 = v15;
  }

  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:v14, v10, v12];

  return v16;
}

+ (id)predicateForExcludeMask:(unsigned int)a3 useIndex:(BOOL)a4
{
  v4 = a4;
  v5 = [a1 predicateArrayArgumentForMask:*&a3];
  if (v4)
  {
    v6 = @"NOT (savedAssetType IN %@)";
  }

  else
  {
    v6 = @"NOT (noindex:(savedAssetType) IN %@)";
  }

  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:v6, v5];

  return v7;
}

+ (id)predicateForIncludeMask:(unsigned int)a3 useIndex:(BOOL)a4
{
  v4 = a4;
  v5 = [a1 predicateArrayArgumentForMask:*&a3];
  if (v4)
  {
    v6 = @"savedAssetType IN %@";
  }

  else
  {
    v6 = @"noindex:(savedAssetType) IN %@";
  }

  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:v6, v5];

  return v7;
}

+ (BOOL)allowSavedAssetTypeMutationFrom:(signed __int16)a3 to:(signed __int16)a4
{
  if (!a3)
  {
    return 1;
  }

  v4 = a4;
  v5 = a3;
  if (a3 == a4 || PLValidatedSavedAssetTypeApplies(+[PLValidatedSavedAssetType _maskForCMMMutatingFrom](PLValidatedSavedAssetType, "_maskForCMMMutatingFrom"), a3) && (PLValidatedSavedAssetTypeApplies(+[PLValidatedSavedAssetType _maskForCMMMutatingTo], v4) & 1) != 0)
  {
    return 1;
  }

  if (PLValidatedSavedAssetTypeApplies(+[PLValidatedSavedAssetType _maskForCollectionShareMutatingFrom](PLValidatedSavedAssetType, "_maskForCollectionShareMutatingFrom"), v5) && (PLValidatedSavedAssetTypeApplies(+[PLValidatedSavedAssetType _maskForCollectionShareMutatingTo](PLValidatedSavedAssetType, "_maskForCollectionShareMutatingTo"), v4) & 1) != 0 || PLValidatedSavedAssetTypeApplies(+[PLValidatedSavedAssetType _maskForRecoveredMutatingFrom](PLValidatedSavedAssetType, "_maskForRecoveredMutatingFrom"), v5) && (PLValidatedSavedAssetTypeApplies(+[PLValidatedSavedAssetType _maskRecoveredForMutatingTo](PLValidatedSavedAssetType, "_maskRecoveredForMutatingTo"), v4) & 1) != 0 || PLValidatedSavedAssetTypeApplies(+[PLValidatedSavedAssetType _maskForGuestMutatingFrom](PLValidatedSavedAssetType, "_maskForGuestMutatingFrom"), v5) && (PLValidatedSavedAssetTypeApplies(+[PLValidatedSavedAssetType _maskForGuestMutatingTo], v4) & 1) != 0)
  {
    return 1;
  }

  return PFProcessIsLaunchedToExecuteTests();
}

+ (void)executeBlockForSavedAssetType:(signed __int16)a3 unknown:(id)a4 photoBooth:(id)a5 photoStream:(id)a6 camera:(id)a7 cloudShared:(id)a8 cameraConnectionKit:(id)a9 cloudPhotoLibrary:(id)a10 wallpaper_UNUSED:(id)a11 momentShared:(id)a12 placeholder:(id)a13 referenced:(id)a14 alternate:(id)a15 guest:(id)a16 companionSynced:(id)a17 recovered:(id)a18 legacyImport:(id)a19 collectionShare:(id)a20 unrecognized:(id)a21
{
  v36 = a3;
  v45 = a4;
  v37 = a5;
  v25 = a6;
  v26 = a7;
  v44 = a8;
  v43 = a9;
  v42 = a10;
  v41 = a11;
  v40 = a12;
  v39 = a13;
  v38 = a14;
  v27 = a15;
  v28 = a16;
  v29 = a17;
  v30 = a18;
  v31 = a19;
  v32 = a20;
  v33 = a21;
  v34 = v45;
  v35 = v37;
  switch(v36)
  {
    case 0:
      break;
    case 1:
      v34 = v37;
      break;
    case 2:
      v34 = v25;
      break;
    case 3:
      v34 = v26;
      break;
    case 4:
      v34 = v44;
      break;
    case 5:
      v34 = v43;
      break;
    case 6:
      v34 = v42;
      break;
    case 7:
      v34 = v41;
      break;
    case 8:
      v34 = v40;
      break;
    case 9:
      v34 = v39;
      break;
    case 10:
      v34 = v38;
      break;
    case 11:
      v34 = v27;
      break;
    case 12:
      v34 = v28;
      break;
    case 13:
      v34 = v29;
      break;
    case 14:
      v34 = v30;
      break;
    case 15:
      goto LABEL_4;
    case 16:
      v34 = v32;
      break;
    default:
      v34 = v31;
      v35 = v37;
      if (v36 != 256)
      {
LABEL_4:
        v34 = v33;
      }

      break;
  }

  v34[2]();
}

+ (unint64_t)mapSavedAssetType:(signed __int16)a3 unknown:(unint64_t)a4 photoBooth:(unint64_t)a5 photoStream:(unint64_t)a6 camera:(unint64_t)a7 cloudShared:(unint64_t)a8 cameraConnectionKit:(unint64_t)a9 cloudPhotoLibrary:(unint64_t)a10 wallpaper_UNUSED:(unint64_t)a11 momentShared:(unint64_t)a12 placeholder:(unint64_t)a13 referenced:(unint64_t)a14 alternate:(unint64_t)a15 guest:(unint64_t)a16 companionSynced:(unint64_t)a17 recovered:(unint64_t)a18 legacyImport:(unint64_t)a19 collectionShare:(unint64_t)a20 unrecognized:(unint64_t)a21
{
  v21 = a3;
  v28 = *MEMORY[0x1E69E9840];
  switch(a3)
  {
    case 0:
      return a4;
    case 1:
      a4 = a5;
      break;
    case 2:
      a4 = a6;
      break;
    case 3:
      a4 = a7;
      break;
    case 4:
      a4 = a8;
      break;
    case 5:
      a4 = a9;
      break;
    case 6:
      a4 = a10;
      break;
    case 7:
      a4 = a11;
      break;
    case 8:
      a4 = a12;
      break;
    case 9:
      a4 = a13;
      break;
    case 10:
      a4 = a14;
      break;
    case 11:
      a4 = a15;
      break;
    case 12:
      a4 = a16;
      break;
    case 13:
      a4 = a17;
      break;
    case 14:
      a4 = a18;
      break;
    case 15:
      goto LABEL_5;
    case 16:
      a4 = a20;
      break;
    default:
      if (a3 == 256)
      {
        a4 = a19;
      }

      else
      {
LABEL_5:
        a4 = a21;
        v23 = PLBackendGetLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          v25[0] = 67109376;
          v25[1] = v21;
          v26 = 2048;
          v27 = a21;
          _os_log_impl(&dword_1AA9BD000, v23, OS_LOG_TYPE_FAULT, "Unexpected savedAssetType %d, returning %tu", v25, 0x12u);
        }
      }

      break;
  }

  return a4;
}

+ (unsigned)validatedSavedAssetTypeMaskUnknown:(BOOL)a3 photoBooth:(BOOL)a4 photoStream:(BOOL)a5 camera:(BOOL)a6 cloudShared:(BOOL)a7 cameraConnectionKit:(BOOL)a8 cloudPhotoLibrary:(BOOL)a9 wallpaper_UNUSED:(BOOL)a10 momentShared:(BOOL)a11 placeholder:(BOOL)a12 referenced:(BOOL)a13 alternate:(BOOL)a14 guest:(BOOL)a15 companionSynced:(BOOL)a16 recovered:(BOOL)a17 collectionShare:(BOOL)a18 legacyImport:(BOOL)a19
{
  if (a4)
  {
    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19 | a3;
  if (a5)
  {
    v21 = 4;
  }

  else
  {
    v21 = 0;
  }

  if (a6)
  {
    v22 = 8;
  }

  else
  {
    v22 = 0;
  }

  v23 = v20 | v21 | v22;
  if (a7)
  {
    v24 = 16;
  }

  else
  {
    v24 = 0;
  }

  if (a8)
  {
    v25 = 32;
  }

  else
  {
    v25 = 0;
  }

  if (a9)
  {
    v26 = 64;
  }

  else
  {
    v26 = 0;
  }

  v27 = v23 | v24 | v25;
  if (a10)
  {
    v28 = 128;
  }

  else
  {
    v28 = 0;
  }

  if (a11)
  {
    v29 = 256;
  }

  else
  {
    v29 = 0;
  }

  if (a12)
  {
    v30 = 512;
  }

  else
  {
    v30 = 0;
  }

  if (a13)
  {
    v31 = 1024;
  }

  else
  {
    v31 = 0;
  }

  if (a14)
  {
    v32 = 2048;
  }

  else
  {
    v32 = 0;
  }

  if (a15)
  {
    v33 = 4096;
  }

  else
  {
    v33 = 0;
  }

  if (a16)
  {
    v34 = 0x2000;
  }

  else
  {
    v34 = 0;
  }

  if (a17)
  {
    v35 = 0x4000;
  }

  else
  {
    v35 = 0;
  }

  if (a19)
  {
    v36 = 0x8000;
  }

  else
  {
    v36 = 0;
  }

  if (a18)
  {
    v37 = 0x10000;
  }

  else
  {
    v37 = 0;
  }

  return v27 | v26 | v28 | v29 | v30 | v31 | v32 | v33 | v34 | v35 | v37 | v36;
}

@end