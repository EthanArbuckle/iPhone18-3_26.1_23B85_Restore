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
    return [self assetCollectionType] == 12 && objc_msgSend(self, "assetCollectionSubtype") == 103;
  }

  return result;
}

- (uint64_t)px_isSharedAlbum
{
  if ([self px_isStreamSharedAlbum])
  {
    return 1;
  }

  return [self px_isCloudKitSharedAlbum];
}

- (uint64_t)px_isSharedLibrarySharingSuggestion
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([self isSharingSuggestion])
  {
    return 1;
  }

  transientIdentifier = [self transientIdentifier];
  v4 = [transientIdentifier isEqualToString:@"PXSharedLibrarySharingSuggestionTransientIdentifier"];

  return v4;
}

- (uint64_t)px_canContainPotentiallySensitiveContent
{
  result = [self px_isSharedAlbum];
  if (result)
  {
    v2 = MEMORY[0x1E6978AB0];

    return [v2 sensitiveContentAnalysisEnabled];
  }

  return result;
}

- (uint64_t)px_isStreamSharedAlbumMultipleContributorsEnabled
{
  result = [self px_isStreamSharedAlbum];
  if (result)
  {
    return [self assetCollectionType] == 12 && objc_msgSend(self, "publicPermission") == 3;
  }

  return result;
}

- (uint64_t)px_isOwnedStreamSharedAlbum
{
  result = [self px_isStreamSharedAlbum];
  if (result)
  {
    return [self assetCollectionType] == 12 && objc_msgSend(self, "status") == 1;
  }

  return result;
}

- (BOOL)px_isOwnedCloudKitSharedAlbum
{
  if (!_os_feature_enabled_impl() || ![self px_isCloudKitSharedAlbum])
  {
    return 0;
  }

  selfCopy = self;
  v5 = selfCopy;
  if (!selfCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:0 file:@"PHAsset+PXDisplayAssetAdoption.m" lineNumber:1440 description:{@"%@ should conform to protocol %@, but it is nil", @"self", @"PHShare"}];
LABEL_10:

    goto LABEL_5;
  }

  if (([selfCopy conformsToProtocol:&unk_1F1B0E9A0] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    px_descriptionForAssertionMessage = [v5 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:v5 file:@"PHAsset+PXDisplayAssetAdoption.m" lineNumber:1440 description:{@"%@ should conform to protocol %@, but %@ doesn't", @"self", @"PHShare", px_descriptionForAssertionMessage}];

    goto LABEL_10;
  }

LABEL_5:
  v6 = [v5 status] == 1;

  return v6;
}

- (BOOL)px_isContentSyndicationAlbum
{
  v2 = +[PXContentSyndicationSettings sharedInstance];
  dataSourceType = [v2 dataSourceType];
  if (dataSourceType > 5)
  {
    if (dataSourceType != 6 || ([self px_isMomentShare] & 1) == 0)
    {
      v6 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    photoLibrary = [self photoLibrary];
    wellKnownPhotoLibraryIdentifier = [photoLibrary wellKnownPhotoLibraryIdentifier];

    if (wellKnownPhotoLibraryIdentifier != 3)
    {
      v6 = [self assetCollectionSubtype] == 1000000501;
      goto LABEL_7;
    }
  }

  v6 = 1;
LABEL_7:

  return v6;
}

- (uint64_t)px_isHighlightEnrichedWithAssetMetadataAndScenesProcessed
{
  result = [self px_isHighlight];
  if (result)
  {
    return [self px_highlightEnrichmentState] > 2;
  }

  return result;
}

- (uint64_t)px_containsPrivateContent
{
  v2 = +[PXContentPrivacySettings sharedInstance];
  simulationMode = [v2 simulationMode];
  if (simulationMode == 1)
  {
    px_isPrivacySensitiveAlbum = [self px_isPrivacySensitiveAlbum];
  }

  else if (simulationMode || ![self containsPrivateContent])
  {
    px_isPrivacySensitiveAlbum = 0;
  }

  else
  {
    v4 = [PXContentPrivacyController privacyControllerForCollection:self];
    px_isPrivacySensitiveAlbum = [v4 isContentPrivacyEnabled];
  }

  return px_isPrivacySensitiveAlbum;
}

- (uint64_t)px_isRecentlySharedCollection
{
  result = [self isTransient];
  if (result)
  {
    transientIdentifier = [self transientIdentifier];
    v4 = [transientIdentifier isEqualToString:@"PXRecentlySharedVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isRecentlyEditedCollection
{
  result = [self isTransient];
  if (result)
  {
    transientIdentifier = [self transientIdentifier];
    v4 = [transientIdentifier isEqualToString:@"PXRecentlyEditedVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isRecentlyViewedCollection
{
  result = [self isTransient];
  if (result)
  {
    transientIdentifier = [self transientIdentifier];
    v4 = [transientIdentifier isEqualToString:@"PXRecentlyViewedVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isMomentShareVirtualCollection
{
  result = [self isTransient];
  if (result)
  {
    transientIdentifier = [self transientIdentifier];
    v4 = [transientIdentifier isEqualToString:@"PXCompleteMyMomentVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isContentSyndicationAllPhotosAlbum
{
  result = [self isTransient];
  if (result)
  {
    transientIdentifier = [self transientIdentifier];
    v4 = [transientIdentifier isEqualToString:@"PXContentSyndicationAllPhotosAssetCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isMapVirtualCollection
{
  result = [self isTransient];
  if (result)
  {
    transientIdentifier = [self transientIdentifier];
    v4 = [transientIdentifier isEqualToString:@"PXTransientCollectionIdentifierMap"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isContentSyndicationVirtualCollection
{
  result = [self isTransient];
  if (result)
  {
    transientIdentifier = [self transientIdentifier];
    v4 = [transientIdentifier isEqualToString:@"PXContentSyndicationVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isSharedAlbumsVirtualCollection
{
  result = [self isTransient];
  if (result)
  {
    transientIdentifier = [self transientIdentifier];
    v4 = [transientIdentifier isEqualToString:@"PXAllSharedAlbumsVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isAllProjectsVirtualCollection
{
  result = [self isTransient];
  if (result)
  {
    transientIdentifier = [self transientIdentifier];
    v4 = [transientIdentifier isEqualToString:@"PXAllProjectsVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isAllAlbumsVirtualCollection
{
  result = [self isTransient];
  if (result)
  {
    transientIdentifier = [self transientIdentifier];
    v4 = [transientIdentifier isEqualToString:@"PXAllAlbumsVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isImportHistoryCollection
{
  result = [self isTransient];
  if (result)
  {
    transientIdentifier = [self transientIdentifier];
    v4 = [transientIdentifier isEqualToString:@"PXImportHistoryVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isSharedActivityVirtualCollection
{
  result = [self isTransient];
  if (result)
  {
    transientIdentifier = [self transientIdentifier];
    v4 = [transientIdentifier isEqualToString:@"PXSharedActivityVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isSocialGroup
{
  result = [self isTransient];
  if (result)
  {
    transientIdentifier = [self transientIdentifier];
    v4 = [transientIdentifier isEqualToString:@"PXSocialGroupVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isPerson
{
  result = [self isTransient];
  if (result)
  {
    transientIdentifier = [self transientIdentifier];
    v4 = [transientIdentifier isEqualToString:@"PXPersonVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isPeopleVirtualCollection
{
  result = [self isTransient];
  if (result)
  {
    transientIdentifier = [self transientIdentifier];
    v4 = [transientIdentifier isEqualToString:@"PXPeopleVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isMemoriesVirtualCollection
{
  result = [self isTransient];
  if (result)
  {
    transientIdentifier = [self transientIdentifier];
    v4 = [transientIdentifier isEqualToString:@"PXMemoriesVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isSearchResultsVirtualCollection
{
  transientIdentifier = [self transientIdentifier];
  v2 = [transientIdentifier isEqualToString:@"PXPhotosSearchResultsVirtualCollection"];

  return v2;
}

- (uint64_t)px_isBookmarksVirtualCollection
{
  result = [self isTransient];
  if (result)
  {
    transientIdentifier = [self transientIdentifier];
    v4 = [transientIdentifier isEqualToString:@"PXBookmarksVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isWallpaperSuggestionsVirtualCollection
{
  result = [self isTransient];
  if (result)
  {
    transientIdentifier = [self transientIdentifier];
    v4 = [transientIdentifier isEqualToString:@"PXWallpaperSuggestionsVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isCollectionsVirtualCollection
{
  transientIdentifier = [self transientIdentifier];
  v2 = [transientIdentifier isEqualToString:@"PXCollectionsVirtualCollection"];

  return v2;
}

- (uint64_t)px_isFeaturedPhotosCollection
{
  result = [self isTransient];
  if (result)
  {
    transientIdentifier = [self transientIdentifier];
    v4 = [transientIdentifier hasPrefix:@"PXFeaturedPhotosVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isTripsVirtualCollection
{
  result = [self isTransient];
  if (result)
  {
    transientIdentifier = [self transientIdentifier];
    v4 = [transientIdentifier isEqualToString:@"PXTripsVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isEventsVirtualCollection
{
  result = [self isTransient];
  if (result)
  {
    transientIdentifier = [self transientIdentifier];
    v4 = [transientIdentifier isEqualToString:@"PXEventsVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isMomentsVirtualCollection
{
  result = [self isTransient];
  if (result)
  {
    transientIdentifier = [self transientIdentifier];
    v4 = [transientIdentifier isEqualToString:@"PXMomentsVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isPickerVirtualCollection
{
  result = [self isTransient];
  if (result)
  {
    transientIdentifier = [self transientIdentifier];
    v4 = [transientIdentifier isEqualToString:@"PXPickerAllPhotosVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isLibraryVirtualCollection
{
  result = [self isTransient];
  if (result)
  {
    transientIdentifier = [self transientIdentifier];
    v4 = [transientIdentifier isEqualToString:@"PXPhotosVirtualCollection"];

    return v4;
  }

  return result;
}

- (uint64_t)px_isSavedTodayCollection
{
  transientIdentifier = [self transientIdentifier];
  v2 = [transientIdentifier hasPrefix:@"PXTransientCollectionIdentifierSavedToday"];

  return v2;
}

- (uint64_t)px_isRecentlySavedCollection
{
  if ([self assetCollectionSubtype] == 1000000218)
  {
    return 1;
  }

  return [self px_isSavedTodayCollection];
}

- (uint64_t)px_isLemonadeUtilitiesAlbum
{
  if ([self px_isUtilityCollection] & 1) != 0 || (objc_msgSend(self, "px_isRecentsCollection") & 1) != 0 || (objc_msgSend(self, "px_isHiddenSmartAlbum") & 1) != 0 || (objc_msgSend(self, "px_isRecoveredSmartAlbum") & 1) != 0 || (objc_msgSend(self, "px_isAllLibraryDuplicatesSmartAlbum") & 1) != 0 || (objc_msgSend(self, "px_isImportHistoryCollection") & 1) != 0 || (objc_msgSend(self, "px_isRecentlyDeletedSmartAlbum") & 1) != 0 || (objc_msgSend(self, "px_isRecentlySavedCollection") & 1) != 0 || (objc_msgSend(self, "px_isFavoritesSmartAlbum"))
  {
    return 1;
  }

  return [self px_isMapVirtualCollection];
}

- (uint64_t)px_isMediaTypeSmartAlbum
{
  px_mediaTypeSmartAlbumSubtypes = [objc_opt_class() px_mediaTypeSmartAlbumSubtypes];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "assetCollectionSubtype")}];
  v4 = [px_mediaTypeSmartAlbumSubtypes containsObject:v3];

  return v4;
}

- (uint64_t)px_isRootSmartAlbum
{
  result = [self px_isSmartAlbum];
  if (result)
  {
    if ([self px_isPlacesSmartAlbum] & 1) != 0 || (objc_msgSend(self, "px_isUserSmartAlbum") & 1) != 0 || (objc_msgSend(self, "px_isMediaTypeSmartAlbum"))
    {
      return 0;
    }

    else
    {
      return [self px_isLemonadeUtilitiesAlbum] ^ 1;
    }
  }

  return result;
}

- (uint64_t)px_isSmartAlbum
{
  if ([self assetCollectionType] == 2)
  {
    return [self isTransient] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)px_allowsImplicitSelectionForProjectOrSharingAction
{
  if ([self px_isRecentsSmartAlbum] & 1) != 0 || (objc_msgSend(self, "px_isImportHistoryCollection"))
  {
    return 0;
  }

  else
  {
    return [self px_isSearchResultsVirtualCollection] ^ 1;
  }
}

- (uint64_t)px_isVirtualCollection
{
  result = [self isTransient];
  if (result)
  {
    transientIdentifier = [self transientIdentifier];
    v4 = [transientIdentifier hasSuffix:@"VirtualCollection"];

    return v4;
  }

  return result;
}

- (id)px_symbolImageName
{
  if ([self isTransient])
  {
    transientIdentifier = [self transientIdentifier];
    v3 = PXSymbolNameForTransientCollectionIdentifier(transientIdentifier);
  }

  else
  {
    assetCollectionSubtype = [self assetCollectionSubtype];
    if (PXSymbolNameForAssetCollectionSubtype_onceToken != -1)
    {
      dispatch_once(&PXSymbolNameForAssetCollectionSubtype_onceToken, &__block_literal_global_933);
    }

    v5 = PXSymbolNameForAssetCollectionSubtype_symbolNames;
    transientIdentifier = [MEMORY[0x1E696AD98] numberWithInteger:assetCollectionSubtype];
    v3 = [v5 objectForKeyedSubscript:transientIdentifier];
  }

  v6 = v3;

  return v6;
}

- (id)localizedDebugDescription
{
  if ([self assetCollectionType] == 6)
  {
    selfCopy = self;
    if (selfCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        [selfCopy type];
        v5 = PHShortDescriptionForPhotosHighlightType();
        [selfCopy enrichmentState];
        v6 = PHShortDescriptionForPhotosHighlightEnrichmentState();
        v7 = [selfCopy countForCurationType:{objc_msgSend(selfCopy, "px_curationType")}];
        v8 = MEMORY[0x1E696AEC0];
        [selfCopy promotionScore];
        v10 = [v8 stringWithFormat:@"%@ | %@ | %.2f | %li", v5, v6, v9, v7];

        goto LABEL_6;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = objc_opt_class();
      v14 = NSStringFromClass(v15);
      px_descriptionForAssertionMessage = [selfCopy px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PHAsset+PXDisplayAssetAdoption.m" lineNumber:1021 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self", v14, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      [currentHandler handleFailureInMethod:a2 object:0 file:@"PHAsset+PXDisplayAssetAdoption.m" lineNumber:1021 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self", v14}];
    }

    goto LABEL_4;
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (id)localizedSmartDescription
{
  if ([self assetCollectionType] == 6)
  {
    selfCopy = self;
    if (selfCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        smartDescription = [selfCopy smartDescription];

        goto LABEL_6;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = objc_opt_class();
      v9 = NSStringFromClass(v10);
      px_descriptionForAssertionMessage = [selfCopy px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PHAsset+PXDisplayAssetAdoption.m" lineNumber:1013 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self", v9, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      [currentHandler handleFailureInMethod:a2 object:0 file:@"PHAsset+PXDisplayAssetAdoption.m" lineNumber:1013 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self", v9}];
    }

    goto LABEL_4;
  }

  smartDescription = 0;
LABEL_6:

  return smartDescription;
}

- (id)localizedDateDescriptionWithOptions:()PXDisplayAssetAdoption
{
  if ([self assetCollectionType] == 6)
  {
    selfCopy = self;
    if (selfCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        v7 = [selfCopy dateDescriptionWithOptions:a3 & 3];

        goto LABEL_6;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = objc_opt_class();
      v11 = NSStringFromClass(v12);
      px_descriptionForAssertionMessage = [selfCopy px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PHAsset+PXDisplayAssetAdoption.m" lineNumber:1005 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self", v11, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      [currentHandler handleFailureInMethod:a2 object:0 file:@"PHAsset+PXDisplayAssetAdoption.m" lineNumber:1005 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self", v11}];
    }

    goto LABEL_4;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (id)localizedShortDateDescription
{
  if ([self assetCollectionType] == 6)
  {
    selfCopy = self;
    if (selfCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        shortDateDescription = [selfCopy shortDateDescription];

        goto LABEL_6;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = objc_opt_class();
      v9 = NSStringFromClass(v10);
      px_descriptionForAssertionMessage = [selfCopy px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PHAsset+PXDisplayAssetAdoption.m" lineNumber:997 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self", v9, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      [currentHandler handleFailureInMethod:a2 object:0 file:@"PHAsset+PXDisplayAssetAdoption.m" lineNumber:997 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self", v9}];
    }

    goto LABEL_4;
  }

  shortDateDescription = 0;
LABEL_6:

  return shortDateDescription;
}

- (id)localizedDateDescription
{
  if ([self assetCollectionType] == 6)
  {
    selfCopy = self;
    if (selfCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        dateDescription = [selfCopy dateDescription];

        goto LABEL_6;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = objc_opt_class();
      v9 = NSStringFromClass(v10);
      px_descriptionForAssertionMessage = [selfCopy px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PHAsset+PXDisplayAssetAdoption.m" lineNumber:989 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self", v9, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      [currentHandler handleFailureInMethod:a2 object:0 file:@"PHAsset+PXDisplayAssetAdoption.m" lineNumber:989 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self", v9}];
    }

    goto LABEL_4;
  }

  dateDescription = 0;
LABEL_6:

  return dateDescription;
}

- (uint64_t)px_highlightKind
{
  if ([self assetCollectionType] == 6)
  {
    return [self kind];
  }

  else
  {
    return -1;
  }
}

- (uint64_t)px_highlightEnrichmentState
{
  if ([self assetCollectionType] != 6)
  {
    return 0;
  }

  return [self enrichmentState];
}

- (BOOL)isEnrichmentComplete
{
  if ([self assetCollectionType] == 4)
  {
    graphMemoryIdentifier = [self graphMemoryIdentifier];
    v3 = graphMemoryIdentifier != 0;
  }

  else
  {
    return [self assetCollectionType] == 6 && objc_msgSend(self, "enrichmentState") > 3;
  }

  return v3;
}

- (BOOL)isEnriched
{
  if ([self assetCollectionType] != 4)
  {
    return 0;
  }

  graphMemoryIdentifier = [self graphMemoryIdentifier];
  v3 = graphMemoryIdentifier != 0;

  return v3;
}

@end