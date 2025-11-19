@interface PHAssetCollection(PXDisplayAssetAdoption)
- (BOOL)isEnriched;
- (BOOL)isEnrichmentComplete;
- (BOOL)px_isContentSyndicationAlbum;
- (BOOL)px_isOwnedCloudKitSharedAlbum;
- (id)localizedDateDescription;
- (id)localizedDateDescriptionWithOptions:()PXDisplayAssetAdoption;
- (id)localizedDebugDescription;
- (id)localizedShortDateDescription;
- (id)localizedSmartDescription;
- (id)px_symbolImageName;
- (uint64_t)px_allowsImplicitSelectionForProjectOrSharingAction;
- (uint64_t)px_canContainPotentiallySensitiveContent;
- (uint64_t)px_containsPrivateContent;
- (uint64_t)px_highlightEnrichmentState;
- (uint64_t)px_highlightKind;
- (uint64_t)px_isAllAlbumsVirtualCollection;
- (uint64_t)px_isAllProjectsVirtualCollection;
- (uint64_t)px_isBookmarksVirtualCollection;
- (uint64_t)px_isCloudKitSharedAlbum;
- (uint64_t)px_isCollectionsVirtualCollection;
- (uint64_t)px_isContentSyndicationAllPhotosAlbum;
- (uint64_t)px_isContentSyndicationVirtualCollection;
- (uint64_t)px_isEventsVirtualCollection;
- (uint64_t)px_isFeaturedPhotosCollection;
- (uint64_t)px_isHighlightEnrichedWithAssetMetadataAndScenesProcessed;
- (uint64_t)px_isImportHistoryCollection;
- (uint64_t)px_isLemonadeUtilitiesAlbum;
- (uint64_t)px_isLibraryVirtualCollection;
- (uint64_t)px_isMapVirtualCollection;
- (uint64_t)px_isMediaTypeSmartAlbum;
- (uint64_t)px_isMemoriesVirtualCollection;
- (uint64_t)px_isMomentShareVirtualCollection;
- (uint64_t)px_isMomentsVirtualCollection;
- (uint64_t)px_isOwnedStreamSharedAlbum;
- (uint64_t)px_isPeopleVirtualCollection;
- (uint64_t)px_isPerson;
- (uint64_t)px_isPickerVirtualCollection;
- (uint64_t)px_isRecentlyEditedCollection;
- (uint64_t)px_isRecentlySavedCollection;
- (uint64_t)px_isRecentlySharedCollection;
- (uint64_t)px_isRecentlyViewedCollection;
- (uint64_t)px_isRootSmartAlbum;
- (uint64_t)px_isSavedTodayCollection;
- (uint64_t)px_isSearchResultsVirtualCollection;
- (uint64_t)px_isSharedActivityVirtualCollection;
- (uint64_t)px_isSharedAlbum;
- (uint64_t)px_isSharedAlbumsVirtualCollection;
- (uint64_t)px_isSharedLibrarySharingSuggestion;
- (uint64_t)px_isSmartAlbum;
- (uint64_t)px_isSocialGroup;
- (uint64_t)px_isStreamSharedAlbumMultipleContributorsEnabled;
- (uint64_t)px_isTripsVirtualCollection;
- (uint64_t)px_isVirtualCollection;
- (uint64_t)px_isWallpaperSuggestionsVirtualCollection;
@end

@implementation PHAssetCollection(PXDisplayAssetAdoption)

- (uint64_t)px_isCloudKitSharedAlbum
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    return [a1 assetCollectionType] == 12 && objc_msgSend(a1, "assetCollectionSubtype") == 103;
  }

  return result;
}

- (uint64_t)px_isSharedAlbum
{
  if ([a1 px_isStreamSharedAlbum])
  {
    return 1;
  }

  return [a1 px_isCloudKitSharedAlbum];
}

- (uint64_t)px_isSharedLibrarySharingSuggestion
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([a1 isSharingSuggestion])
  {
    return 1;
  }

  v3 = [a1 transientIdentifier];
  v4 = [v3 isEqualToString:@"PXSharedLibrarySharingSuggestionTransientIdentifier"];

  return v4;
}

- (uint64_t)px_canContainPotentiallySensitiveContent
{
  result = [a1 px_isSharedAlbum];
  if (result)
  {
    v2 = MEMORY[0x1E6978AB0];

    return [v2 sensitiveContentAnalysisEnabled];
  }

  return result;
}

- (uint64_t)px_isStreamSharedAlbumMultipleContributorsEnabled
{
  result = [a1 px_isStreamSharedAlbum];
  if (result)
  {
    return [a1 assetCollectionType] == 12 && objc_msgSend(a1, "publicPermission") == 3;
  }

  return result;
}

- (uint64_t)px_isOwnedStreamSharedAlbum
{
  result = [a1 px_isStreamSharedAlbum];
  if (result)
  {
    return [a1 assetCollectionType] == 12 && objc_msgSend(a1, "status") == 1;
  }

  return result;
}

- (BOOL)px_isOwnedCloudKitSharedAlbum
{
  if (!_os_feature_enabled_impl() || ![a1 px_isCloudKitSharedAlbum])
  {
    return 0;
  }

  v4 = a1;
  v5 = v4;
  if (!v4)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:0 file:@"PHAsset+PXDisplayAssetAdoption.m" lineNumber:1440 description:{@"%@ should conform to protocol %@, but it is nil", @"self", @"PHShare"}];
LABEL_10:

    goto LABEL_5;
  }

  if (([v4 conformsToProtocol:&unk_1F1B0E9A0] & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [v5 px_descriptionForAssertionMessage];
    [v8 handleFailureInMethod:a2 object:v5 file:@"PHAsset+PXDisplayAssetAdoption.m" lineNumber:1440 description:{@"%@ should conform to protocol %@, but %@ doesn't", @"self", @"PHShare", v9}];

    goto LABEL_10;
  }

LABEL_5:
  v6 = [v5 status] == 1;

  return v6;
}

- (BOOL)px_isContentSyndicationAlbum
{
  v2 = +[PXContentSyndicationSettings sharedInstance];
  v3 = [v2 dataSourceType];
  if (v3 > 5)
  {
    if (v3 != 6 || ([a1 px_isMomentShare] & 1) == 0)
    {
      v6 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v4 = [a1 photoLibrary];
    v5 = [v4 wellKnownPhotoLibraryIdentifier];

    if (v5 != 3)
    {
      v6 = [a1 assetCollectionSubtype] == 1000000501;
      goto LABEL_7;
    }
  }

  v6 = 1;
LABEL_7:

  return v6;
}

- (uint64_t)px_isHighlightEnrichedWithAssetMetadataAndScenesProcessed
{
  result = [a1 px_isHighlight];
  if (result)
  {
    return [a1 px_highlightEnrichmentState] > 2;
  }

  return result;
}

- (uint64_t)px_containsPrivateContent
{
  v2 = +[PXContentPrivacySettings sharedInstance];
  v3 = [v2 simulationMode];
  if (v3 == 1)
  {
    v5 = [a1 px_isPrivacySensitiveAlbum];
  }

  else if (v3 || ![a1 containsPrivateContent])
  {
    v5 = 0;
  }

  else
  {
    v4 = [PXContentPrivacyController privacyControllerForCollection:a1];
    v5 = [v4 isContentPrivacyEnabled];
  }

  return v5;
}

- (uint64_t)px_isRecentlySharedCollection
{
  result = [a1 isTransient];
  if (result)
  {
    v3 = [a1 transientIdentifier];
    v4 = [v3 isEqualToString:@"PXRecentlySharedVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isRecentlyEditedCollection
{
  result = [a1 isTransient];
  if (result)
  {
    v3 = [a1 transientIdentifier];
    v4 = [v3 isEqualToString:@"PXRecentlyEditedVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isRecentlyViewedCollection
{
  result = [a1 isTransient];
  if (result)
  {
    v3 = [a1 transientIdentifier];
    v4 = [v3 isEqualToString:@"PXRecentlyViewedVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isMomentShareVirtualCollection
{
  result = [a1 isTransient];
  if (result)
  {
    v3 = [a1 transientIdentifier];
    v4 = [v3 isEqualToString:@"PXCompleteMyMomentVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isContentSyndicationAllPhotosAlbum
{
  result = [a1 isTransient];
  if (result)
  {
    v3 = [a1 transientIdentifier];
    v4 = [v3 isEqualToString:@"PXContentSyndicationAllPhotosAssetCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isMapVirtualCollection
{
  result = [a1 isTransient];
  if (result)
  {
    v3 = [a1 transientIdentifier];
    v4 = [v3 isEqualToString:@"PXTransientCollectionIdentifierMap"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isContentSyndicationVirtualCollection
{
  result = [a1 isTransient];
  if (result)
  {
    v3 = [a1 transientIdentifier];
    v4 = [v3 isEqualToString:@"PXContentSyndicationVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isSharedAlbumsVirtualCollection
{
  result = [a1 isTransient];
  if (result)
  {
    v3 = [a1 transientIdentifier];
    v4 = [v3 isEqualToString:@"PXAllSharedAlbumsVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isAllProjectsVirtualCollection
{
  result = [a1 isTransient];
  if (result)
  {
    v3 = [a1 transientIdentifier];
    v4 = [v3 isEqualToString:@"PXAllProjectsVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isAllAlbumsVirtualCollection
{
  result = [a1 isTransient];
  if (result)
  {
    v3 = [a1 transientIdentifier];
    v4 = [v3 isEqualToString:@"PXAllAlbumsVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isImportHistoryCollection
{
  result = [a1 isTransient];
  if (result)
  {
    v3 = [a1 transientIdentifier];
    v4 = [v3 isEqualToString:@"PXImportHistoryVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isSharedActivityVirtualCollection
{
  result = [a1 isTransient];
  if (result)
  {
    v3 = [a1 transientIdentifier];
    v4 = [v3 isEqualToString:@"PXSharedActivityVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isSocialGroup
{
  result = [a1 isTransient];
  if (result)
  {
    v3 = [a1 transientIdentifier];
    v4 = [v3 isEqualToString:@"PXSocialGroupVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isPerson
{
  result = [a1 isTransient];
  if (result)
  {
    v3 = [a1 transientIdentifier];
    v4 = [v3 isEqualToString:@"PXPersonVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isPeopleVirtualCollection
{
  result = [a1 isTransient];
  if (result)
  {
    v3 = [a1 transientIdentifier];
    v4 = [v3 isEqualToString:@"PXPeopleVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isMemoriesVirtualCollection
{
  result = [a1 isTransient];
  if (result)
  {
    v3 = [a1 transientIdentifier];
    v4 = [v3 isEqualToString:@"PXMemoriesVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isSearchResultsVirtualCollection
{
  v1 = [a1 transientIdentifier];
  v2 = [v1 isEqualToString:@"PXPhotosSearchResultsVirtualCollection"];

  return v2;
}

- (uint64_t)px_isBookmarksVirtualCollection
{
  result = [a1 isTransient];
  if (result)
  {
    v3 = [a1 transientIdentifier];
    v4 = [v3 isEqualToString:@"PXBookmarksVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isWallpaperSuggestionsVirtualCollection
{
  result = [a1 isTransient];
  if (result)
  {
    v3 = [a1 transientIdentifier];
    v4 = [v3 isEqualToString:@"PXWallpaperSuggestionsVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isCollectionsVirtualCollection
{
  v1 = [a1 transientIdentifier];
  v2 = [v1 isEqualToString:@"PXCollectionsVirtualCollection"];

  return v2;
}

- (uint64_t)px_isFeaturedPhotosCollection
{
  result = [a1 isTransient];
  if (result)
  {
    v3 = [a1 transientIdentifier];
    v4 = [v3 hasPrefix:@"PXFeaturedPhotosVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isTripsVirtualCollection
{
  result = [a1 isTransient];
  if (result)
  {
    v3 = [a1 transientIdentifier];
    v4 = [v3 isEqualToString:@"PXTripsVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isEventsVirtualCollection
{
  result = [a1 isTransient];
  if (result)
  {
    v3 = [a1 transientIdentifier];
    v4 = [v3 isEqualToString:@"PXEventsVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isMomentsVirtualCollection
{
  result = [a1 isTransient];
  if (result)
  {
    v3 = [a1 transientIdentifier];
    v4 = [v3 isEqualToString:@"PXMomentsVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isPickerVirtualCollection
{
  result = [a1 isTransient];
  if (result)
  {
    v3 = [a1 transientIdentifier];
    v4 = [v3 isEqualToString:@"PXPickerAllPhotosVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isLibraryVirtualCollection
{
  result = [a1 isTransient];
  if (result)
  {
    v3 = [a1 transientIdentifier];
    v4 = [v3 isEqualToString:@"PXPhotosVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isSavedTodayCollection
{
  v1 = [a1 transientIdentifier];
  v2 = [v1 hasPrefix:@"PXTransientCollectionIdentifierSavedToday"];

  return v2;
}

- (uint64_t)px_isRecentlySavedCollection
{
  if ([a1 assetCollectionSubtype] == 1000000218)
  {
    return 1;
  }

  return [a1 px_isSavedTodayCollection];
}

- (uint64_t)px_isLemonadeUtilitiesAlbum
{
  if ([a1 px_isUtilityCollection] & 1) != 0 || (objc_msgSend(a1, "px_isRecentsCollection") & 1) != 0 || (objc_msgSend(a1, "px_isHiddenSmartAlbum") & 1) != 0 || (objc_msgSend(a1, "px_isRecoveredSmartAlbum") & 1) != 0 || (objc_msgSend(a1, "px_isAllLibraryDuplicatesSmartAlbum") & 1) != 0 || (objc_msgSend(a1, "px_isImportHistoryCollection") & 1) != 0 || (objc_msgSend(a1, "px_isRecentlyDeletedSmartAlbum") & 1) != 0 || (objc_msgSend(a1, "px_isRecentlySavedCollection") & 1) != 0 || (objc_msgSend(a1, "px_isFavoritesSmartAlbum"))
  {
    return 1;
  }

  return [a1 px_isMapVirtualCollection];
}

- (uint64_t)px_isMediaTypeSmartAlbum
{
  v2 = [objc_opt_class() px_mediaTypeSmartAlbumSubtypes];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "assetCollectionSubtype")}];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (uint64_t)px_isRootSmartAlbum
{
  result = [a1 px_isSmartAlbum];
  if (result)
  {
    if ([a1 px_isPlacesSmartAlbum] & 1) != 0 || (objc_msgSend(a1, "px_isUserSmartAlbum") & 1) != 0 || (objc_msgSend(a1, "px_isMediaTypeSmartAlbum"))
    {
      return 0;
    }

    else
    {
      return [a1 px_isLemonadeUtilitiesAlbum] ^ 1;
    }
  }

  return result;
}

- (uint64_t)px_isSmartAlbum
{
  if ([a1 assetCollectionType] == 2)
  {
    return [a1 isTransient] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)px_allowsImplicitSelectionForProjectOrSharingAction
{
  if ([a1 px_isRecentsSmartAlbum] & 1) != 0 || (objc_msgSend(a1, "px_isImportHistoryCollection"))
  {
    return 0;
  }

  else
  {
    return [a1 px_isSearchResultsVirtualCollection] ^ 1;
  }
}

- (uint64_t)px_isVirtualCollection
{
  result = [a1 isTransient];
  if (result)
  {
    v3 = [a1 transientIdentifier];
    v4 = [v3 hasSuffix:@"VirtualCollection"];

    return v4;
  }

  return result;
}

- (id)px_symbolImageName
{
  if ([a1 isTransient])
  {
    v2 = [a1 transientIdentifier];
    v3 = PXSymbolNameForTransientCollectionIdentifier(v2);
  }

  else
  {
    v4 = [a1 assetCollectionSubtype];
    if (PXSymbolNameForAssetCollectionSubtype_onceToken != -1)
    {
      dispatch_once(&PXSymbolNameForAssetCollectionSubtype_onceToken, &__block_literal_global_933);
    }

    v5 = PXSymbolNameForAssetCollectionSubtype_symbolNames;
    v2 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
    v3 = [v5 objectForKeyedSubscript:v2];
  }

  v6 = v3;

  return v6;
}

- (id)localizedDebugDescription
{
  if ([a1 assetCollectionType] == 6)
  {
    v4 = a1;
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        [v4 type];
        v5 = PHShortDescriptionForPhotosHighlightType();
        [v4 enrichmentState];
        v6 = PHShortDescriptionForPhotosHighlightEnrichmentState();
        v7 = [v4 countForCurationType:{objc_msgSend(v4, "px_curationType")}];
        v8 = MEMORY[0x1E696AEC0];
        [v4 promotionScore];
        v10 = [v8 stringWithFormat:@"%@ | %@ | %.2f | %li", v5, v6, v9, v7];

        goto LABEL_6;
      }

      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = objc_opt_class();
      v14 = NSStringFromClass(v15);
      v16 = [v4 px_descriptionForAssertionMessage];
      [v12 handleFailureInMethod:a2 object:v4 file:@"PHAsset+PXDisplayAssetAdoption.m" lineNumber:1021 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self", v14, v16}];
    }

    else
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      [v12 handleFailureInMethod:a2 object:0 file:@"PHAsset+PXDisplayAssetAdoption.m" lineNumber:1021 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self", v14}];
    }

    goto LABEL_4;
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (id)localizedSmartDescription
{
  if ([a1 assetCollectionType] == 6)
  {
    v4 = a1;
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        v5 = [v4 smartDescription];

        goto LABEL_6;
      }

      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = objc_opt_class();
      v9 = NSStringFromClass(v10);
      v11 = [v4 px_descriptionForAssertionMessage];
      [v7 handleFailureInMethod:a2 object:v4 file:@"PHAsset+PXDisplayAssetAdoption.m" lineNumber:1013 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self", v9, v11}];
    }

    else
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      [v7 handleFailureInMethod:a2 object:0 file:@"PHAsset+PXDisplayAssetAdoption.m" lineNumber:1013 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self", v9}];
    }

    goto LABEL_4;
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (id)localizedDateDescriptionWithOptions:()PXDisplayAssetAdoption
{
  if ([a1 assetCollectionType] == 6)
  {
    v6 = a1;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        v7 = [v6 dateDescriptionWithOptions:a3 & 3];

        goto LABEL_6;
      }

      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = objc_opt_class();
      v11 = NSStringFromClass(v12);
      v13 = [v6 px_descriptionForAssertionMessage];
      [v9 handleFailureInMethod:a2 object:v6 file:@"PHAsset+PXDisplayAssetAdoption.m" lineNumber:1005 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self", v11, v13}];
    }

    else
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      [v9 handleFailureInMethod:a2 object:0 file:@"PHAsset+PXDisplayAssetAdoption.m" lineNumber:1005 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self", v11}];
    }

    goto LABEL_4;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (id)localizedShortDateDescription
{
  if ([a1 assetCollectionType] == 6)
  {
    v4 = a1;
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        v5 = [v4 shortDateDescription];

        goto LABEL_6;
      }

      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = objc_opt_class();
      v9 = NSStringFromClass(v10);
      v11 = [v4 px_descriptionForAssertionMessage];
      [v7 handleFailureInMethod:a2 object:v4 file:@"PHAsset+PXDisplayAssetAdoption.m" lineNumber:997 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self", v9, v11}];
    }

    else
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      [v7 handleFailureInMethod:a2 object:0 file:@"PHAsset+PXDisplayAssetAdoption.m" lineNumber:997 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self", v9}];
    }

    goto LABEL_4;
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (id)localizedDateDescription
{
  if ([a1 assetCollectionType] == 6)
  {
    v4 = a1;
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        v5 = [v4 dateDescription];

        goto LABEL_6;
      }

      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = objc_opt_class();
      v9 = NSStringFromClass(v10);
      v11 = [v4 px_descriptionForAssertionMessage];
      [v7 handleFailureInMethod:a2 object:v4 file:@"PHAsset+PXDisplayAssetAdoption.m" lineNumber:989 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self", v9, v11}];
    }

    else
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      [v7 handleFailureInMethod:a2 object:0 file:@"PHAsset+PXDisplayAssetAdoption.m" lineNumber:989 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self", v9}];
    }

    goto LABEL_4;
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (uint64_t)px_highlightKind
{
  if ([a1 assetCollectionType] == 6)
  {
    return [a1 kind];
  }

  else
  {
    return -1;
  }
}

- (uint64_t)px_highlightEnrichmentState
{
  if ([a1 assetCollectionType] != 6)
  {
    return 0;
  }

  return [a1 enrichmentState];
}

- (BOOL)isEnrichmentComplete
{
  if ([a1 assetCollectionType] == 4)
  {
    v2 = [a1 graphMemoryIdentifier];
    v3 = v2 != 0;
  }

  else
  {
    return [a1 assetCollectionType] == 6 && objc_msgSend(a1, "enrichmentState") > 3;
  }

  return v3;
}

- (BOOL)isEnriched
{
  if ([a1 assetCollectionType] != 4)
  {
    return 0;
  }

  v2 = [a1 graphMemoryIdentifier];
  v3 = v2 != 0;

  return v3;
}

@end