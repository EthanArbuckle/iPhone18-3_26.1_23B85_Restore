@interface PLValidatedSavedAssetType
+ (BOOL)allowSavedAssetTypeMutationFrom:(signed __int16)from to:(signed __int16)to;
+ (id)predicateArrayArgumentForMask:(unsigned int)mask;
+ (id)predicateForExcludeMask:(unsigned int)mask useIndex:(BOOL)index;
+ (id)predicateForExcludeMask:(unsigned int)mask useIndex:(BOOL)index keyPathPrefix:(id)prefix;
+ (id)predicateForIncludeMask:(unsigned int)mask useIndex:(BOOL)index;
+ (id)predicateForIncludeMask:(unsigned int)mask useIndex:(BOOL)index keyPathPrefix:(id)prefix formatPrefix:(id)formatPrefix;
+ (id)subpredicatesForExcludeMask:(unsigned int)mask;
+ (id)subpredicatesForIncludeMask:(unsigned int)mask;
+ (unint64_t)mapSavedAssetType:(signed __int16)type unknown:(unint64_t)unknown photoBooth:(unint64_t)booth photoStream:(unint64_t)stream camera:(unint64_t)camera cloudShared:(unint64_t)shared cameraConnectionKit:(unint64_t)kit cloudPhotoLibrary:(unint64_t)self0 wallpaper_UNUSED:(unint64_t)self1 momentShared:(unint64_t)self2 placeholder:(unint64_t)self3 referenced:(unint64_t)self4 alternate:(unint64_t)self5 guest:(unint64_t)self6 companionSynced:(unint64_t)self7 recovered:(unint64_t)self8 legacyImport:(unint64_t)self9 collectionShare:(unint64_t)share unrecognized:(unint64_t)unrecognized;
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
+ (unsigned)maskForFeatureAvailabilityForSceneAnalysis:(BOOL)analysis;
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
+ (unsigned)validatedSavedAssetTypeMaskUnknown:(BOOL)unknown photoBooth:(BOOL)booth photoStream:(BOOL)stream camera:(BOOL)camera cloudShared:(BOOL)shared cameraConnectionKit:(BOOL)kit cloudPhotoLibrary:(BOOL)library wallpaper_UNUSED:(BOOL)self0 momentShared:(BOOL)self1 placeholder:(BOOL)self2 referenced:(BOOL)self3 alternate:(BOOL)self4 guest:(BOOL)self5 companionSynced:(BOOL)self6 recovered:(BOOL)self7 collectionShare:(BOOL)self8 legacyImport:(BOOL)self9;
+ (void)executeBlockForSavedAssetType:(signed __int16)type unknown:(id)unknown photoBooth:(id)booth photoStream:(id)stream camera:(id)camera cloudShared:(id)shared cameraConnectionKit:(id)kit cloudPhotoLibrary:(id)self0 wallpaper_UNUSED:(id)self1 momentShared:(id)self2 placeholder:(id)self3 referenced:(id)self4 alternate:(id)self5 guest:(id)self6 companionSynced:(id)self7 recovered:(id)self8 legacyImport:(id)self9 collectionShare:(id)share unrecognized:(id)unrecognized;
@end

@implementation PLValidatedSavedAssetType

+ (unsigned)maskForAllPhotosAlbum
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 0;
  return [self validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:1 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:0x101000100000001 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForUserLibrary
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 0;
  return [self validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:0 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:0x100000001 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForPlacesAlbum
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 256;
  return [self validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:1 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:0x1010101010001 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForFavoritesAlbumExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:0 cameraConnectionKit:0 cloudPhotoLibrary:0x10001010000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForSocialGroupKeyAssetFetch
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 256;
  return [self validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:1 camera:1 cloudShared:1 cameraConnectionKit:1 cloudPhotoLibrary:0x100000001 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForFeatureAvailabilityForSceneAnalysis:(BOOL)analysis
{
  analysisCopy = analysis;
  maskForUserLibrary = [self maskForUserLibrary];
  if (analysisCopy)
  {
    v5 = 32784;
  }

  else
  {
    v5 = 0x8000;
  }

  return maskForUserLibrary | v5;
}

+ (unsigned)maskForCplQuotaExclusions
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 257;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:1 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:0x101010101010000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAssetsAllowingVirtualFullSizeRender
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 0;
  return [self validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:0 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:0x100000001 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAssetsAllowingLockedResourceTransfer
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 0;
  return [self validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:0 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:1 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAssetStackProcessingExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:1 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:0x101010001010100 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForDuplicateProcessingExclusions
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 257;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:1 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:0x101010101010100 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForSyndicationIdentifierFetchExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:0 cameraConnectionKit:0 cloudPhotoLibrary:16842752 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAllowedToPromoteToUserLibrary
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 0;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:0 cameraConnectionKit:0 cloudPhotoLibrary:0x1000000000000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAllowedToResetGuestAssetPromotion
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 0;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:1 cloudShared:0 cameraConnectionKit:0 cloudPhotoLibrary:0x1000000000000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAllowedToPromoteToGuestAsset
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 0;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:1 cloudShared:0 cameraConnectionKit:0 cloudPhotoLibrary:0x1000000000000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForLibraryScopeRuleEvaluationExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:0x100010001010000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForCompleteStateIsRelevant
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 0;
  return [self validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:0 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:0x101000100000101 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForSuppressPtpInfo
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 257;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:1 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:0x10000010100 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForRecoverSupplementalResourcesForAsset
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 0;
  return [self validatedSavedAssetTypeMaskUnknown:1 photoBooth:0 photoStream:0 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:0x101000000000000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForIsValidForFileSystemPersistence
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 0;
  return [self validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:1 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:0x100010000000101 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForIsValidForBackup
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 256;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:1 photoStream:1 camera:1 cloudShared:1 cameraConnectionKit:1 cloudPhotoLibrary:0x101010100010001 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForSearchIndexExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:0x10001010000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForCloudPhotoLibrarySizesFromDBExclusions
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 1;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:1 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:0x101010000000000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAssetsExcludedFromOTARestore
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 257;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:1 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:16843008 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForNotifyALAssetsLibraryWithChangesCloudSharedExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:16842752 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForNotifyALAssetsLibraryWithChangesExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 1;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:0 cameraConnectionKit:0 cloudPhotoLibrary:0x1000000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForUpdateMogulSubtypeExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 1;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:0 cameraConnectionKit:0 cloudPhotoLibrary:0x100000000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAddingLocalVideoKeyFrameResourceExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 1;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:0 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForFixupAssetPersistenceExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:16842752 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForTagScreenshotsExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:16842752 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForFixIncorrectAddedDateExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:1 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:16842752 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForGenerateAddedDateExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:16842752 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForPopulateFaceRegionsExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:16842752 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForCanDeleteEmptyPathForCorruptAssetsDuringFilesystemImport
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 1;
  return [self validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:1 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:0x101010000000100 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForTriggerRebuildForPathCorruptionExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 1;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:1 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:0 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAutoDeleteAssetsUponMomentShareTrash
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 0;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:0 cameraConnectionKit:0 cloudPhotoLibrary:16842752 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAllowedForSceneAnalysis
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 256;
  return [self validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:0 camera:1 cloudShared:1 cameraConnectionKit:1 cloudPhotoLibrary:0x1000100000001 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAllowedForMediaAnalysis
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 0;
  return [self validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:0 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:0x1000100000001 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAllowedForAnalysis
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 0;
  return [self validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:0 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:0x1010100000001 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForIncludeInCPLCounts
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 0;
  return [self validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:1 camera:1 cloudShared:1 cameraConnectionKit:1 cloudPhotoLibrary:1 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAddAssetToLibraryScopeIfShareEverythingPolicyEnabled
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 0;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:1 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForPLSyncClientIncompleteAssetExclusions
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 257;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:1 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:0x10001010000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForStoreDemoContent
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 0;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:1 cloudShared:0 cameraConnectionKit:0 cloudPhotoLibrary:0x100000000000001 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForValidSavedAssetTypesDuringMacMigration
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 256;
  return [self validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:1 camera:1 cloudShared:1 cameraConnectionKit:1 cloudPhotoLibrary:0x101010100010001 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForMigrateLegacyVideoAdjustmentsExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:16842753 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForCouldBeStoredInDCIM
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 1;
  return [self validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:0 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:0x101010000000001 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForSharedLibraryExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:0x10001010000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAssetsEligibleForFileSystemImportSavedAssetTypeUpdate
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 0;
  return [self validatedSavedAssetTypeMaskUnknown:1 photoBooth:0 photoStream:0 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:1 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForRecentlyEditedAlbumExclusions
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 257;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:0x100010001010000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForBurstsAlbumExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:0 cameraConnectionKit:0 cloudPhotoLibrary:0x10001010000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForRecentlyAddedAlbumExclusions
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 257;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:0x10001010000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForSelfiesAlbumExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:0x10001010000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForPLFetchingAlbumExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:0x10001010000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForSmartAlbumExclusions
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 257;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:1 cameraConnectionKit:0 cloudPhotoLibrary:0x10000 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAvalancheSupportedAssetsFromFinderSync
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 0;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:0 cameraConnectionKit:0 cloudPhotoLibrary:0 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAvalancheSupportedAssetsFromUserLibrary
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 0;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:0x10100000001 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAvalancheSupportedAssets
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 0;
  return [self validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:0x10100000001 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAssetsIncludedInMoments
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 0;
  return [self validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:1 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:0x1000100000001 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (unsigned)maskForAssetsEligibleForCloudKitTransport
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 256;
  return [self validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:0 camera:1 cloudShared:0 cameraConnectionKit:1 cloudPhotoLibrary:16842753 wallpaper_UNUSED:v3 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
}

+ (id)predicateArrayArgumentForMask:(unsigned int)mask
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
  maskCopy = mask;
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

+ (id)subpredicatesForExcludeMask:(unsigned int)mask
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = __57__PLValidatedSavedAssetType_subpredicatesForExcludeMask___block_invoke;
  v11 = &unk_1E79305B0;
  maskCopy = mask;
  v6 = v5;
  v7 = 0;
  v12 = v6;
  selfCopy = self;
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

+ (id)subpredicatesForIncludeMask:(unsigned int)mask
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = __57__PLValidatedSavedAssetType_subpredicatesForIncludeMask___block_invoke;
  v11 = &unk_1E79305B0;
  maskCopy = mask;
  v6 = v5;
  v7 = 0;
  v12 = v6;
  selfCopy = self;
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

+ (id)predicateForExcludeMask:(unsigned int)mask useIndex:(BOOL)index keyPathPrefix:(id)prefix
{
  indexCopy = index;
  v6 = *&mask;
  prefixCopy = prefix;
  v9 = [self predicateArrayArgumentForMask:v6];
  if (indexCopy)
  {
    v10 = @"NOT %K.savedAssetType IN %@";
  }

  else
  {
    v10 = @"NOT noindex:(%K.savedAssetType) IN %@";
  }

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:v10, prefixCopy, v9];

  return v11;
}

+ (id)predicateForIncludeMask:(unsigned int)mask useIndex:(BOOL)index keyPathPrefix:(id)prefix formatPrefix:(id)formatPrefix
{
  indexCopy = index;
  v8 = *&mask;
  prefixCopy = prefix;
  formatPrefixCopy = formatPrefix;
  v12 = [self predicateArrayArgumentForMask:v8];
  v13 = @"noindex:(%K.savedAssetType) IN %@";
  if (indexCopy)
  {
    v13 = @"%K.savedAssetType IN %@";
  }

  v14 = v13;
  if (formatPrefixCopy)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", formatPrefixCopy, v14];

    v14 = v15;
  }

  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:v14, prefixCopy, v12];

  return v16;
}

+ (id)predicateForExcludeMask:(unsigned int)mask useIndex:(BOOL)index
{
  indexCopy = index;
  v5 = [self predicateArrayArgumentForMask:*&mask];
  if (indexCopy)
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

+ (id)predicateForIncludeMask:(unsigned int)mask useIndex:(BOOL)index
{
  indexCopy = index;
  v5 = [self predicateArrayArgumentForMask:*&mask];
  if (indexCopy)
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

+ (BOOL)allowSavedAssetTypeMutationFrom:(signed __int16)from to:(signed __int16)to
{
  if (!from)
  {
    return 1;
  }

  toCopy = to;
  fromCopy = from;
  if (from == to || PLValidatedSavedAssetTypeApplies(+[PLValidatedSavedAssetType _maskForCMMMutatingFrom](PLValidatedSavedAssetType, "_maskForCMMMutatingFrom"), from) && (PLValidatedSavedAssetTypeApplies(+[PLValidatedSavedAssetType _maskForCMMMutatingTo], toCopy) & 1) != 0)
  {
    return 1;
  }

  if (PLValidatedSavedAssetTypeApplies(+[PLValidatedSavedAssetType _maskForCollectionShareMutatingFrom](PLValidatedSavedAssetType, "_maskForCollectionShareMutatingFrom"), fromCopy) && (PLValidatedSavedAssetTypeApplies(+[PLValidatedSavedAssetType _maskForCollectionShareMutatingTo](PLValidatedSavedAssetType, "_maskForCollectionShareMutatingTo"), toCopy) & 1) != 0 || PLValidatedSavedAssetTypeApplies(+[PLValidatedSavedAssetType _maskForRecoveredMutatingFrom](PLValidatedSavedAssetType, "_maskForRecoveredMutatingFrom"), fromCopy) && (PLValidatedSavedAssetTypeApplies(+[PLValidatedSavedAssetType _maskRecoveredForMutatingTo](PLValidatedSavedAssetType, "_maskRecoveredForMutatingTo"), toCopy) & 1) != 0 || PLValidatedSavedAssetTypeApplies(+[PLValidatedSavedAssetType _maskForGuestMutatingFrom](PLValidatedSavedAssetType, "_maskForGuestMutatingFrom"), fromCopy) && (PLValidatedSavedAssetTypeApplies(+[PLValidatedSavedAssetType _maskForGuestMutatingTo], toCopy) & 1) != 0)
  {
    return 1;
  }

  return PFProcessIsLaunchedToExecuteTests();
}

+ (void)executeBlockForSavedAssetType:(signed __int16)type unknown:(id)unknown photoBooth:(id)booth photoStream:(id)stream camera:(id)camera cloudShared:(id)shared cameraConnectionKit:(id)kit cloudPhotoLibrary:(id)self0 wallpaper_UNUSED:(id)self1 momentShared:(id)self2 placeholder:(id)self3 referenced:(id)self4 alternate:(id)self5 guest:(id)self6 companionSynced:(id)self7 recovered:(id)self8 legacyImport:(id)self9 collectionShare:(id)share unrecognized:(id)unrecognized
{
  typeCopy = type;
  unknownCopy = unknown;
  boothCopy = booth;
  streamCopy = stream;
  cameraCopy = camera;
  sharedCopy = shared;
  kitCopy = kit;
  libraryCopy = library;
  dCopy = d;
  momentSharedCopy = momentShared;
  placeholderCopy = placeholder;
  referencedCopy = referenced;
  alternateCopy = alternate;
  guestCopy = guest;
  syncedCopy = synced;
  recoveredCopy = recovered;
  importCopy = import;
  shareCopy = share;
  unrecognizedCopy = unrecognized;
  v34 = unknownCopy;
  v35 = boothCopy;
  switch(typeCopy)
  {
    case 0:
      break;
    case 1:
      v34 = boothCopy;
      break;
    case 2:
      v34 = streamCopy;
      break;
    case 3:
      v34 = cameraCopy;
      break;
    case 4:
      v34 = sharedCopy;
      break;
    case 5:
      v34 = kitCopy;
      break;
    case 6:
      v34 = libraryCopy;
      break;
    case 7:
      v34 = dCopy;
      break;
    case 8:
      v34 = momentSharedCopy;
      break;
    case 9:
      v34 = placeholderCopy;
      break;
    case 10:
      v34 = referencedCopy;
      break;
    case 11:
      v34 = alternateCopy;
      break;
    case 12:
      v34 = guestCopy;
      break;
    case 13:
      v34 = syncedCopy;
      break;
    case 14:
      v34 = recoveredCopy;
      break;
    case 15:
      goto LABEL_4;
    case 16:
      v34 = shareCopy;
      break;
    default:
      v34 = importCopy;
      v35 = boothCopy;
      if (typeCopy != 256)
      {
LABEL_4:
        v34 = unrecognizedCopy;
      }

      break;
  }

  v34[2]();
}

+ (unint64_t)mapSavedAssetType:(signed __int16)type unknown:(unint64_t)unknown photoBooth:(unint64_t)booth photoStream:(unint64_t)stream camera:(unint64_t)camera cloudShared:(unint64_t)shared cameraConnectionKit:(unint64_t)kit cloudPhotoLibrary:(unint64_t)self0 wallpaper_UNUSED:(unint64_t)self1 momentShared:(unint64_t)self2 placeholder:(unint64_t)self3 referenced:(unint64_t)self4 alternate:(unint64_t)self5 guest:(unint64_t)self6 companionSynced:(unint64_t)self7 recovered:(unint64_t)self8 legacyImport:(unint64_t)self9 collectionShare:(unint64_t)share unrecognized:(unint64_t)unrecognized
{
  typeCopy = type;
  v28 = *MEMORY[0x1E69E9840];
  switch(type)
  {
    case 0:
      return unknown;
    case 1:
      unknown = booth;
      break;
    case 2:
      unknown = stream;
      break;
    case 3:
      unknown = camera;
      break;
    case 4:
      unknown = shared;
      break;
    case 5:
      unknown = kit;
      break;
    case 6:
      unknown = library;
      break;
    case 7:
      unknown = d;
      break;
    case 8:
      unknown = momentShared;
      break;
    case 9:
      unknown = placeholder;
      break;
    case 10:
      unknown = referenced;
      break;
    case 11:
      unknown = alternate;
      break;
    case 12:
      unknown = guest;
      break;
    case 13:
      unknown = synced;
      break;
    case 14:
      unknown = recovered;
      break;
    case 15:
      goto LABEL_5;
    case 16:
      unknown = share;
      break;
    default:
      if (type == 256)
      {
        unknown = import;
      }

      else
      {
LABEL_5:
        unknown = unrecognized;
        v23 = PLBackendGetLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          v25[0] = 67109376;
          v25[1] = typeCopy;
          v26 = 2048;
          unrecognizedCopy = unrecognized;
          _os_log_impl(&dword_1AA9BD000, v23, OS_LOG_TYPE_FAULT, "Unexpected savedAssetType %d, returning %tu", v25, 0x12u);
        }
      }

      break;
  }

  return unknown;
}

+ (unsigned)validatedSavedAssetTypeMaskUnknown:(BOOL)unknown photoBooth:(BOOL)booth photoStream:(BOOL)stream camera:(BOOL)camera cloudShared:(BOOL)shared cameraConnectionKit:(BOOL)kit cloudPhotoLibrary:(BOOL)library wallpaper_UNUSED:(BOOL)self0 momentShared:(BOOL)self1 placeholder:(BOOL)self2 referenced:(BOOL)self3 alternate:(BOOL)self4 guest:(BOOL)self5 companionSynced:(BOOL)self6 recovered:(BOOL)self7 collectionShare:(BOOL)self8 legacyImport:(BOOL)self9
{
  if (booth)
  {
    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19 | unknown;
  if (stream)
  {
    v21 = 4;
  }

  else
  {
    v21 = 0;
  }

  if (camera)
  {
    v22 = 8;
  }

  else
  {
    v22 = 0;
  }

  v23 = v20 | v21 | v22;
  if (shared)
  {
    v24 = 16;
  }

  else
  {
    v24 = 0;
  }

  if (kit)
  {
    v25 = 32;
  }

  else
  {
    v25 = 0;
  }

  if (library)
  {
    v26 = 64;
  }

  else
  {
    v26 = 0;
  }

  v27 = v23 | v24 | v25;
  if (d)
  {
    v28 = 128;
  }

  else
  {
    v28 = 0;
  }

  if (momentShared)
  {
    v29 = 256;
  }

  else
  {
    v29 = 0;
  }

  if (placeholder)
  {
    v30 = 512;
  }

  else
  {
    v30 = 0;
  }

  if (referenced)
  {
    v31 = 1024;
  }

  else
  {
    v31 = 0;
  }

  if (alternate)
  {
    v32 = 2048;
  }

  else
  {
    v32 = 0;
  }

  if (guest)
  {
    v33 = 4096;
  }

  else
  {
    v33 = 0;
  }

  if (synced)
  {
    v34 = 0x2000;
  }

  else
  {
    v34 = 0;
  }

  if (recovered)
  {
    v35 = 0x4000;
  }

  else
  {
    v35 = 0;
  }

  if (import)
  {
    v36 = 0x8000;
  }

  else
  {
    v36 = 0;
  }

  if (share)
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