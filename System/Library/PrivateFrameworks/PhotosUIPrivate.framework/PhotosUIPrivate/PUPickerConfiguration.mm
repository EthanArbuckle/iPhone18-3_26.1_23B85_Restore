@interface PUPickerConfiguration
+ (id)_fetchOrderedItemObjectIDsWithPhotoLibrary:(id)a3 itemIdentifiers:(id)a4 sourceType:(int64_t)a5;
+ (id)limitedLibraryApplicationPreselectedObjectIDsOrCreateEmptySelectionWithTrustedIdentifier:(id)a3 auditToken:(id *)a4 photoLibrary:(id)a5;
+ (id)limitedLibraryApplicationTrustedIdentifierWithConnection:(id)a3 purposedIdentifier:(id)a4 error:(id *)a5;
- (BOOL)allowsCollectionNavigation;
- (BOOL)allowsConfidentialWarning;
- (BOOL)allowsContextMenuInteraction;
- (BOOL)allowsInteractivePopGesture;
- (BOOL)allowsNavigationPushPopAnimation;
- (BOOL)allowsNewItemCreation;
- (BOOL)allowsOpeningStagingArea;
- (BOOL)allowsSelectionStaging;
- (BOOL)allowsSidebar;
- (BOOL)allowsSwipeToSelect;
- (BOOL)canIncludeCaptionByDefault;
- (BOOL)canIncludeLocationByDefault;
- (BOOL)disableAutoPlaybackInPreview;
- (BOOL)disableAutoPreferredContentSize;
- (BOOL)excludesEmptyItems;
- (BOOL)excludesFavoritesAlbum;
- (BOOL)excludesHiddenAlbum;
- (BOOL)excludesLocationMetadataSubtitle;
- (BOOL)excludesOptionsMenu;
- (BOOL)excludesSharedAlbums;
- (BOOL)excludesSortAndFilterMenu;
- (BOOL)hasClearBackgroundColor;
- (BOOL)hasFilterablePHPickerFilter;
- (BOOL)hasPreselection;
- (BOOL)isOrderedSelection;
- (BOOL)isProcessingSuggestions;
- (BOOL)isValidConfiguration;
- (BOOL)pickerClientHasFullLibraryAccess;
- (BOOL)pickerClientHasLibraryAccess;
- (BOOL)pickerClientHasLibraryAccessWithoutPrivateEntitlements;
- (BOOL)pickerClientShouldRespectOptionsMenu;
- (BOOL)shouldDisableInlinePlayback;
- (BOOL)shouldShowCommunicationSafetyIntervention;
- (BOOL)shouldShowOnboardingHeaderView;
- (BOOL)shouldShowOnboardingOverlayView;
- (BOOL)shouldShowPhotosIndicator;
- (BOOL)showsWallpaperSuggestions;
- (NSArray)customSortDescriptors;
- (NSString)confirmationTitle;
- (NSString)fetchType;
- (NSString)initialSearchText;
- (NSString)prompt;
- (NSString)title;
- (PUPickerConfiguration)init;
- (PUPickerConfiguration)initWithPHPickerConfiguration:(id)a3 connection:(id)a4;
- (PUPickerConfiguration)initWithPHPickerConfiguration:(id)a3 connection:(id)a4 overriddenGeneratedFilter:(id)a5 allowsDownload:(BOOL)a6 usesMemoriesLayout:(BOOL)a7;
- (id)cancellationImageNameWithBehavior:(int64_t)a3;
- (id)cancellationTitleWithBehavior:(int64_t)a3;
- (id)fetchOrderedItemObjectIDsUsingItemIdentifiers:(id)a3;
- (id)initForUIImagePickerControllerWithPHPickerConfiguration:(id)a3 connection:(id)a4 overriddenGeneratedFilter:(id)a5;
- (id)locationMetadataSubtitleWithSelectionCount:(int64_t)a3 includesLocation:(BOOL)a4 usesShortVersion:(BOOL)a5 leadingImageName:(id *)a6;
- (id)promptWithSelectionCount:(int64_t)a3;
- (id)stagingSubtitleWithSelectionCount:(int64_t)a3 includesLocation:(BOOL)a4 subtitleLeadingImageName:(id *)a5;
- (id)stagingTitleWithSelectionCount:(int64_t)a3 selectionMediaType:(int64_t)a4;
- (int64_t)cancellationBehaviorWithTraitCollection:(id)a3;
- (int64_t)cancellationSystemItemWithBehavior:(int64_t)a3;
- (int64_t)clientEncodingPolicy;
- (int64_t)confirmationBehavior;
- (int64_t)confirmationSystemItem;
- (int64_t)minimumSelectionLimit;
- (int64_t)primaryButtonType;
- (int64_t)secondaryButtonType;
- (int64_t)selectionLimit;
- (int64_t)sourceType;
- (unint64_t)disabledCapabilities;
- (unint64_t)edgesWithoutContentMargins;
- (void)setDidDismissOnboardingHeaderView:(BOOL)a3;
- (void)setDidDismissOnboardingOverlayView:(BOOL)a3;
- (void)setDidShowPhotosIndicator:(BOOL)a3;
- (void)setEdgesWithoutContentMargins:(unint64_t)a3;
- (void)setInteractiveBarTransitionFractionExpanded:(double)a3;
- (void)setMinimumSelectionLimit:(int64_t)a3;
- (void)setPrimaryButtonType:(int64_t)a3;
- (void)setPrompt:(id)a3;
- (void)setSecondaryButtonType:(int64_t)a3;
- (void)setSelectionLimit:(int64_t)a3;
- (void)setSupportsInteractiveBarTransition:(BOOL)a3;
- (void)setTitle:(id)a3;
@end

@implementation PUPickerConfiguration

+ (id)_fetchOrderedItemObjectIDsWithPhotoLibrary:(id)a3 itemIdentifiers:(id)a4 sourceType:(int64_t)a5
{
  v7 = sub_1B3C9C788();
  v8 = a3;
  v9 = sub_1B3881E08(v8, v7, a5);

  return v9;
}

- (BOOL)showsWallpaperSuggestions
{
  v2 = [(PUPickerConfiguration *)self suggestionGroup];
  v3 = [v2 isForWallpaper];

  return v3;
}

- (int64_t)clientEncodingPolicy
{
  result = [(PUPickerConfiguration *)self preferredAssetRepresentationMode];
  if (result >= 3)
  {
    return 0;
  }

  return result;
}

- (NSArray)customSortDescriptors
{
  v7[3] = *MEMORY[0x1E69E9840];
  if ([(PUPickerConfiguration *)self usesMemoriesLayout])
  {
    v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
    v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:{1, v2}];
    v7[1] = v3;
    v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"sortToken" ascending:1];
    v7[2] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isProcessingSuggestions
{
  v17[2] = *MEMORY[0x1E69E9840];
  if ([(PUPickerConfiguration *)self showsWallpaperSuggestions])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v4 = [(PUPickerConfiguration *)self generatedFilter];
    LODWORD(v3) = [v4 containsStickersFilter];

    if (v3)
    {
      v5 = [(PUPickerConfiguration *)self photoLibrary];
      v6 = [v5 librarySpecificFetchOptions];

      [v6 setIncludeAssetSourceTypes:5];
      v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kind", 0];
      [v6 setInternalPredicate:v7];

      [v6 setIncludeGuestAssets:1];
      [v6 setShouldPrefetchCount:1];
      v8 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v6];
      v3 = [v8 count];

      v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= 0", @"stickerConfidenceScore"];
      v10 = MEMORY[0x1E696AB28];
      v11 = [v6 internalPredicate];
      v17[0] = v11;
      v17[1] = v9;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
      v13 = [v10 andPredicateWithSubpredicates:v12];
      [v6 setInternalPredicate:v13];

      v14 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v6];
      v15 = [v14 count];

      LOBYTE(v3) = v3 >= 0xB && v15 / v3 < 0.9;
    }
  }

  return v3;
}

- (BOOL)shouldDisableInlinePlayback
{
  v2 = [(PUPickerConfiguration *)self phPickerConfiguration];
  v3 = ([v2 _disabledPrivateCapabilities] >> 3) & 1;

  return v3;
}

- (BOOL)pickerClientShouldRespectOptionsMenu
{
  v3 = [(PUPickerConfiguration *)self pickerClientIdentification];
  v4 = [v3 trustedCallerBundleID];

  if (pickerClientShouldRespectOptionsMenu_onceToken != -1)
  {
    dispatch_once(&pickerClientShouldRespectOptionsMenu_onceToken, &__block_literal_global_40676);
  }

  if (PFIsPhotosMessagesApp() & 1) != 0 || ([pickerClientShouldRespectOptionsMenu_supportedBundleIDs containsObject:v4])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = ![(PUPickerConfiguration *)self pickerClientHasFullLibraryAccess];
  }

  return v5;
}

void __61__PUPickerConfiguration_pickerClientShouldRespectOptionsMenu__block_invoke()
{
  v0 = pickerClientShouldRespectOptionsMenu_supportedBundleIDs;
  pickerClientShouldRespectOptionsMenu_supportedBundleIDs = &unk_1F2B7CF08;
}

- (BOOL)pickerClientHasFullLibraryAccess
{
  [(PUPickerConfiguration *)self pickerClientAccessAllowedResult];
  if (PLPhotosFullAccessAllowed())
  {
    return 1;
  }

  return [(PUPickerConfiguration *)self pickerClientIsEntitledForOrHasPrivateLibraryAccess];
}

- (BOOL)pickerClientHasLibraryAccess
{
  [(PUPickerConfiguration *)self pickerClientAccessAllowedResult];
  if (PLPhotosAccessAllowed())
  {
    return 1;
  }

  return [(PUPickerConfiguration *)self pickerClientIsEntitledForOrHasPrivateLibraryAccess];
}

- (BOOL)pickerClientHasLibraryAccessWithoutPrivateEntitlements
{
  [(PUPickerConfiguration *)self pickerClientAccessAllowedResult];

  return PLPhotosAccessAllowed();
}

- (BOOL)shouldShowOnboardingHeaderView
{
  if ([(PUPickerConfiguration *)self isLimitedLibraryPicker])
  {
    v3 = [(PUPickerConfiguration *)self phPickerConfiguration];
    v4 = [v3 _limitedLibraryHeaderDismissedBefore];

    if (v4)
    {
      return 0;
    }
  }

  if (![(PUPickerConfiguration *)self isLimitedLibraryPicker])
  {
    v5 = [(PUPickerConfiguration *)self phPickerConfiguration];
    v6 = [v5 _onboardingHeaderDismissedBefore];

    if (v6)
    {
      return 0;
    }
  }

  if ([(PUPickerConfiguration *)self pickerClientHasFullLibraryAccess]|| ([(PUPickerConfiguration *)self edgesWithoutContentMargins]& 1) != 0 || [(PUPickerConfiguration *)self mode]== 1 || [(PUPickerConfiguration *)self supportsInteractiveBarTransition])
  {
    return 0;
  }

  else
  {
    return ![(PUPickerConfiguration *)self didDismissOnboardingHeaderView];
  }
}

- (BOOL)shouldShowOnboardingOverlayView
{
  if (-[PUPickerConfiguration pickerClientHasFullLibraryAccess](self, "pickerClientHasFullLibraryAccess") || (PFIsPhotosAppAnyPlatform() & 1) != 0 || (-[PUPickerConfiguration phPickerConfiguration](self, "phPickerConfiguration"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 _onboardingOverlayDismissedBefore], v3, (v4 & 1) != 0))
  {
    LOBYTE(v5) = 0;
  }

  else if (([(PUPickerConfiguration *)self edgesWithoutContentMargins]& 1) != 0 || [(PUPickerConfiguration *)self mode]== 1 || (v5 = [(PUPickerConfiguration *)self supportsInteractiveBarTransition]))
  {
    LOBYTE(v5) = ![(PUPickerConfiguration *)self didDismissOnboardingOverlayView];
  }

  return v5;
}

- (BOOL)shouldShowPhotosIndicator
{
  if ([(PUPickerConfiguration *)self didShowPhotosIndicator])
  {
    return 0;
  }

  else
  {
    return ![(PUPickerConfiguration *)self pickerClientHasFullLibraryAccess];
  }
}

- (BOOL)shouldShowCommunicationSafetyIntervention
{
  v2 = [(PUPickerConfiguration *)self phPickerConfiguration];
  v3 = [v2 disabledCapabilities];

  if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  v4 = MEMORY[0x1E69C3A20];

  return [v4 userSafetyInterventionCheckRequired];
}

- (BOOL)allowsConfidentialWarning
{
  v2 = [(PUPickerConfiguration *)self phPickerConfiguration];
  v3 = ([v2 _disabledPrivateCapabilities] & 0x80) == 0;

  return v3;
}

- (BOOL)disableAutoPlaybackInPreview
{
  v2 = [(PUPickerConfiguration *)self phPickerConfiguration];
  v3 = ([v2 _disabledPrivateCapabilities] >> 13) & 1;

  return v3;
}

- (BOOL)disableAutoPreferredContentSize
{
  v2 = [(PUPickerConfiguration *)self phPickerConfiguration];
  v3 = ([v2 _disabledPrivateCapabilities] >> 12) & 1;

  return v3;
}

- (BOOL)hasClearBackgroundColor
{
  v2 = [(PUPickerConfiguration *)self phPickerConfiguration];
  v3 = ([v2 _disabledPrivateCapabilities] >> 4) & 1;

  return v3;
}

- (BOOL)canIncludeCaptionByDefault
{
  v2 = PLIsLockdownMode();
  if (v2)
  {
    v3 = PLPickerGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "Lockdown mode is enabled, excluding caption metadata by default.", v5, 2u);
    }
  }

  return v2 ^ 1;
}

- (BOOL)canIncludeLocationByDefault
{
  v2 = PLIsLockdownMode();
  if (v2)
  {
    v3 = PLPickerGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "Lockdown mode is enabled, excluding location metadata by default.", v5, 2u);
    }
  }

  return v2 ^ 1;
}

- (BOOL)excludesEmptyItems
{
  v2 = [(PUPickerConfiguration *)self phPickerConfiguration];
  v3 = ([v2 _disabledPrivateCapabilities] & 0x4000) == 0;

  return v3;
}

- (BOOL)allowsNewItemCreation
{
  v3 = [(PUPickerConfiguration *)self phPickerConfiguration];
  v4 = [v3 _disabledPrivateCapabilities];

  if ((v4 & 0x20) != 0 || [(PUPickerConfiguration *)self primaryButtonType]|| [(PUPickerConfiguration *)self sourceType]!= 2)
  {
    return 0;
  }

  return [(PUPickerConfiguration *)self isSingleSelection];
}

- (BOOL)excludesLocationMetadataSubtitle
{
  if ([(PUPickerConfiguration *)self isLimitedLibraryPicker]|| [(PUPickerConfiguration *)self sourceType])
  {
    return 1;
  }

  else
  {
    return ![(PUPickerConfiguration *)self pickerClientShouldRespectOptionsMenu];
  }
}

- (BOOL)excludesSortAndFilterMenu
{
  v3 = [(PUPickerConfiguration *)self phPickerConfiguration];
  v4 = [v3 _disabledPrivateCapabilities];
  result = (v4 & 0x100) != 0 || ([(PUPickerConfiguration *)self suggestionGroup], v5 = ;
  return result;
}

- (BOOL)excludesOptionsMenu
{
  if ([(PUPickerConfiguration *)self sourceType]|| ![(PUPickerConfiguration *)self pickerClientShouldRespectOptionsMenu])
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v3 = [(PUPickerConfiguration *)self phPickerConfiguration];
    v4 = ([v3 _disabledPrivateCapabilities] >> 2) & 1;
  }

  return v4;
}

- (BOOL)excludesFavoritesAlbum
{
  v2 = [(PUPickerConfiguration *)self phPickerConfiguration];
  v3 = ([v2 _disabledPrivateCapabilities] >> 15) & 1;

  return v3;
}

- (BOOL)excludesHiddenAlbum
{
  v3 = [(PUPickerConfiguration *)self phPickerConfiguration];
  v4 = [v3 _disabledPrivateCapabilities];

  return (v4 & 2) != 0 || [(PUPickerConfiguration *)self _pickerClientSDKIsDawnAndBelow]&& [(PUPickerConfiguration *)self isLimitedLibraryPicker];
}

- (BOOL)excludesSharedAlbums
{
  v3 = [(PUPickerConfiguration *)self phPickerConfiguration];
  v4 = [v3 _disabledPrivateCapabilities];

  return (v4 & 1) != 0 || [(PUPickerConfiguration *)self _pickerClientSDKIsDawnAndBelow]&& [(PUPickerConfiguration *)self isLimitedLibraryPicker];
}

- (BOOL)allowsOpeningStagingArea
{
  if (([(PUPickerConfiguration *)self disabledCapabilities]& 2) != 0 || [(PUPickerConfiguration *)self sourceType]|| [(PUPickerConfiguration *)self mode]== 1)
  {
    return 0;
  }

  else
  {
    return ![(PUPickerConfiguration *)self isSingleSelection];
  }
}

- (BOOL)allowsSelectionStaging
{
  v2 = [(PUPickerConfiguration *)self phPickerConfiguration];
  v3 = [v2 _usesOpenPanelLayout];

  return v3 ^ 1;
}

- (BOOL)allowsSidebar
{
  if (([(PUPickerConfiguration *)self edgesWithoutContentMargins]& 2) != 0)
  {
    return 0;
  }

  v3 = [(PUPickerConfiguration *)self albumsConfiguration];
  if (v3)
  {

    return 0;
  }

  v4 = [(PUPickerConfiguration *)self peopleConfiguration];

  if (v4)
  {
    return 0;
  }

  return [(PUPickerConfiguration *)self allowsCollectionNavigation];
}

- (BOOL)allowsCollectionNavigation
{
  if (([(PUPickerConfiguration *)self disabledCapabilities]& 4) != 0 || [(PUPickerConfiguration *)self hasClearBackgroundColor]|| [(PUPickerConfiguration *)self sourceType]|| [(PUPickerConfiguration *)self mode]== 1)
  {
    return 0;
  }

  v4 = [(PUPickerConfiguration *)self generatedFilter];
  v5 = [v4 allowsAlbums];

  return v5;
}

- (BOOL)allowsNavigationPushPopAnimation
{
  v2 = [(PUPickerConfiguration *)self phPickerConfiguration];
  v3 = [v2 _usesOpenPanelLayout];

  return v3 ^ 1;
}

- (BOOL)allowsInteractivePopGesture
{
  v2 = [(PUPickerConfiguration *)self phPickerConfiguration];
  v3 = [v2 _usesOpenPanelLayout];

  return v3 ^ 1;
}

- (BOOL)allowsSwipeToSelect
{
  if ([(PUPickerConfiguration *)self mode]== 1 || [(PUPickerConfiguration *)self isPeopleOrPetsPicker]|| [(PUPickerConfiguration *)self isOrderedSelection])
  {
    return 0;
  }

  else
  {
    return ![(PUPickerConfiguration *)self shouldPassthroughSelection];
  }
}

- (BOOL)allowsContextMenuInteraction
{
  if (![(PUPickerConfiguration *)self supportsInteractiveBarTransition]|| ([(PUPickerConfiguration *)self interactiveBarTransitionFractionExpanded], (v3 = PXFloatApproximatelyEqualToFloat()) != 0))
  {
    LOBYTE(v3) = (~[(PUPickerConfiguration *)self edgesWithoutContentMargins]& 0xF) != 0;
  }

  return v3;
}

- (BOOL)isOrderedSelection
{
  v3 = [(PUPickerConfiguration *)self selection];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(PUPickerConfiguration *)self selection]== 3;
  }

  return v3;
}

- (BOOL)hasPreselection
{
  v3 = [(PUPickerConfiguration *)self preselectedItemIdentifiers];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(PUPickerConfiguration *)self preselectedItemObjectIDs];
    v4 = [v5 count] != 0;
  }

  return v4;
}

- (BOOL)hasFilterablePHPickerFilter
{
  v2 = [(PUPickerConfiguration *)self generatedFilter];
  v3 = [v2 requiredAssetTypes] != 131070;

  return v3;
}

- (int64_t)minimumSelectionLimit
{
  v3 = [(PUPickerConfiguration *)self phPickerConfiguration];
  v4 = [v3 minimumSelectionLimit];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return [(PUPickerConfiguration *)self hasPreselection]^ 1;
  }

  v6 = [(PUPickerConfiguration *)self phPickerConfiguration];
  v7 = [v6 minimumSelectionLimit];

  return v7;
}

- (int64_t)selectionLimit
{
  v2 = [(PUPickerConfiguration *)self phPickerConfiguration];
  v3 = [v2 selectionLimit];

  return v3;
}

- (NSString)fetchType
{
  v2 = [(PUPickerConfiguration *)self sourceType];
  if ((v2 - 1) > 5)
  {
    v3 = MEMORY[0x1E6978D98];
  }

  else
  {
    v3 = qword_1E7B79470[v2 - 1];
  }

  v4 = *v3;

  return v4;
}

- (int64_t)sourceType
{
  v2 = [(PUPickerConfiguration *)self phPickerConfiguration];
  v3 = [v2 _sourceType];

  return v3;
}

- (unint64_t)disabledCapabilities
{
  v2 = [(PUPickerConfiguration *)self phPickerConfiguration];
  v3 = [v2 disabledCapabilities];

  return v3;
}

- (unint64_t)edgesWithoutContentMargins
{
  v2 = [(PUPickerConfiguration *)self phPickerConfiguration];
  v3 = [v2 edgesWithoutContentMargins];

  return v3;
}

- (int64_t)confirmationSystemItem
{
  v3 = [(PUPickerConfiguration *)self primaryButtonType];
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  if (v3 <= 2)
  {
    if (v3)
    {
      if (v3 == 2)
      {
        return 4;
      }

      else
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v6 = [(PUPickerConfiguration *)self confirmationBehavior];
      if (v6 >= 5)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        return qword_1B3D0D298[v6];
      }
    }
  }

  else
  {
    if (v3 == 5)
    {
      v4 = 3;
    }

    if (v3 == 4)
    {
      v4 = 2;
    }

    if (v3 == 3)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }
}

- (NSString)confirmationTitle
{
  v3 = [(PUPickerConfiguration *)self primaryButtonType];
  v4 = 0;
  if (v3 <= 3)
  {
    if (v3)
    {
      if (v3 != 2 && v3 != 3)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v5 = [(PUPickerConfiguration *)self confirmationBehavior];
      if (v5 && v5 != 3 && v5 != 1)
      {
        v4 = 0;
        goto LABEL_14;
      }
    }

LABEL_13:
    v4 = PXLocalizedString();
    goto LABEL_14;
  }

  if (v3 == 4 || v3 == 5 || v3 == 6)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v4;
}

- (int64_t)confirmationBehavior
{
  if ([(PUPickerConfiguration *)self isSingleSelection])
  {
    return 4;
  }

  if ([(PUPickerConfiguration *)self selection]== 2 || [(PUPickerConfiguration *)self selection]== 3)
  {
    if (([(PUPickerConfiguration *)self disabledCapabilities]& 8) != 0)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    return [(PUPickerConfiguration *)self hasPreselection]|| [(PUPickerConfiguration *)self minimumSelectionLimit]== 0;
  }
}

- (int64_t)secondaryButtonType
{
  v2 = [(PUPickerConfiguration *)self phPickerConfiguration];
  v3 = [v2 _secondaryButtonType];

  return v3;
}

- (int64_t)primaryButtonType
{
  v2 = [(PUPickerConfiguration *)self phPickerConfiguration];
  v3 = [v2 _primaryButtonType];

  return v3;
}

- (NSString)title
{
  v3 = [(PUPickerConfiguration *)self phPickerConfiguration];
  v4 = [v3 title];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(PUPickerConfiguration *)self phPickerConfiguration];
    v8 = [(PUPickerConfiguration *)self generatedFilter];
    v9 = [(PUPickerConfiguration *)self containerCollectionTitle];
    v6 = PUPickerConfigurationGetTitle(v7, v8, v9);
  }

  return v6;
}

- (NSString)prompt
{
  v2 = [(PUPickerConfiguration *)self phPickerConfiguration];
  v3 = [v2 prompt];

  return v3;
}

- (NSString)initialSearchText
{
  v2 = [(PUPickerConfiguration *)self phPickerConfiguration];
  v3 = [v2 _searchText];

  return v3;
}

- (id)locationMetadataSubtitleWithSelectionCount:(int64_t)a3 includesLocation:(BOOL)a4 usesShortVersion:(BOOL)a5 leadingImageName:(id *)a6
{
  v7 = a5;
  v8 = a4;
  if ([(PUPickerConfiguration *)self excludesLocationMetadataSubtitle])
  {
    v9 = 0;
    if (a6)
    {
      *a6 = 0;
    }
  }

  else
  {
    if (v7)
    {
      if (a6)
      {
        *a6 = 0;
      }
    }

    else if (a6)
    {
      if (v8)
      {
        v10 = @"location.fill";
      }

      else
      {
        v10 = @"location.slash";
      }

      *a6 = v10;
    }

    v9 = PXLocalizedString();
  }

  return v9;
}

- (id)stagingSubtitleWithSelectionCount:(int64_t)a3 includesLocation:(BOOL)a4 subtitleLeadingImageName:(id *)a5
{
  v6 = a4;
  if (!a5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PUPickerConfiguration.m" lineNumber:852 description:{@"Invalid parameter not satisfying: %@", @"outSubtitleLeadingImageName"}];
  }

  v9 = [(PUPickerConfiguration *)self phPickerConfiguration];
  v10 = [v9 _disabledPrivateCapabilities];

  if ((v10 & 0x800) != 0 || [(PUPickerConfiguration *)self excludesLocationMetadataSubtitle])
  {
    v11 = 0;
    *a5 = 0;
  }

  else
  {
    if (MEMORY[0x1B8C6D660]())
    {
      v12 = [(PUPickerConfiguration *)self allowsOpeningStagingArea];
      v13 = a3 > 0 && v12;
    }

    else
    {
      v13 = 0;
    }

    v11 = [(PUPickerConfiguration *)self locationMetadataSubtitleWithSelectionCount:a3 includesLocation:v6 usesShortVersion:v13 leadingImageName:a5];
  }

  return v11;
}

- (id)stagingTitleWithSelectionCount:(int64_t)a3 selectionMediaType:(int64_t)a4
{
  if ([(PUPickerConfiguration *)self isSingleSelection])
  {
    v7 = 0;
    goto LABEL_37;
  }

  v8 = [(PUPickerConfiguration *)self sourceType];
  v9 = v8;
  if (a3 < 1)
  {
    if (v8 == 4)
    {
      v13 = [(PUPickerConfiguration *)self photoLibrary];
      [v13 px_peoplePetsHomeVisibility];
    }

    v15 = PXLocalizedString();
  }

  else
  {
    v10 = [(PUPickerConfiguration *)self allowsOpeningStagingArea];
    if (v9 > 3)
    {
      switch(v9)
      {
        case 6:
          if (v10)
          {
            v18 = [MEMORY[0x1E696AAA8] currentHandler];
            [v18 handleFailureInMethod:a2 object:self file:@"PUPickerConfiguration.m" lineNumber:800 description:{@"Invalid parameter not satisfying: %@", @"!self.allowsOpeningStagingArea"}];
          }

          goto LABEL_33;
        case 5:
          if (v10)
          {
            v21 = [MEMORY[0x1E696AAA8] currentHandler];
            [v21 handleFailureInMethod:a2 object:self file:@"PUPickerConfiguration.m" lineNumber:794 description:{@"Invalid parameter not satisfying: %@", @"!self.allowsOpeningStagingArea"}];
          }

          goto LABEL_33;
        case 4:
          if (v10)
          {
            v19 = [MEMORY[0x1E696AAA8] currentHandler];
            [v19 handleFailureInMethod:a2 object:self file:@"PUPickerConfiguration.m" lineNumber:778 description:{@"Invalid parameter not satisfying: %@", @"!self.allowsOpeningStagingArea"}];
          }

          v12 = [(PUPickerConfiguration *)self photoLibrary];
          [v12 px_peoplePetsHomeVisibility];

          goto LABEL_33;
      }
    }

    else
    {
      switch(v9)
      {
        case 1:
          if (v10)
          {
            v17 = [MEMORY[0x1E696AAA8] currentHandler];
            [v17 handleFailureInMethod:a2 object:self file:@"PUPickerConfiguration.m" lineNumber:788 description:{@"Invalid parameter not satisfying: %@", @"!self.allowsOpeningStagingArea"}];
          }

          goto LABEL_33;
        case 2:
          if (v10)
          {
            v20 = [MEMORY[0x1E696AAA8] currentHandler];
            [v20 handleFailureInMethod:a2 object:self file:@"PUPickerConfiguration.m" lineNumber:797 description:{@"Invalid parameter not satisfying: %@", @"!self.allowsOpeningStagingArea"}];
          }

          goto LABEL_33;
        case 3:
          if (v10)
          {
            v11 = [MEMORY[0x1E696AAA8] currentHandler];
            [v11 handleFailureInMethod:a2 object:self file:@"PUPickerConfiguration.m" lineNumber:791 description:{@"Invalid parameter not satisfying: %@", @"!self.allowsOpeningStagingArea"}];
          }

          goto LABEL_33;
      }
    }

    if (v10)
    {
LABEL_33:
      v14 = PXLocalizedString();
      v7 = PXLocalizedStringWithValidatedFormat();

      goto LABEL_37;
    }

    v15 = PXLocalizedSelectionMessageForAssetsCount();
  }

  v7 = v15;
LABEL_37:

  return v7;
}

- (id)promptWithSelectionCount:(int64_t)a3
{
  v5 = [(PUPickerConfiguration *)self selectionLimit];
  if (a3 >= 1 && v5 >= 2 && [(PUPickerConfiguration *)self selectionLimit]- 5 <= a3)
  {
    goto LABEL_10;
  }

  v6 = [(PUPickerConfiguration *)self prompt];

  if (!v6)
  {
    if ([(PUPickerConfiguration *)self isLimitedLibraryPicker])
    {
      [(PUPickerConfiguration *)self hasPreselection];
      v7 = PXLocalizedString();
      goto LABEL_12;
    }

    if ([(PUPickerConfiguration *)self selectionLimit]< 2 || [(PUPickerConfiguration *)self selectionLimit]> 100)
    {
      v10 = 0;
      goto LABEL_13;
    }

LABEL_10:
    [(PUPickerConfiguration *)self selectionLimit];
    [(PUPickerConfiguration *)self sourceType];
    v8 = [(PUPickerConfiguration *)self generatedFilter];
    [v8 displayAssetMediaType];
    v9 = [(PUPickerConfiguration *)self photoLibrary];
    [v9 px_peoplePetsHomeVisibility];
    v10 = PUPickerConfigurationGetSelectionLimitString();

    goto LABEL_13;
  }

  v7 = [(PUPickerConfiguration *)self prompt];
LABEL_12:
  v10 = v7;
LABEL_13:

  return v10;
}

- (int64_t)cancellationSystemItemWithBehavior:(int64_t)a3
{
  v4 = [(PUPickerConfiguration *)self secondaryButtonType];
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 == 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (a3 == 3)
  {
    v6 = 24;
  }

  if (!v4)
  {
    v5 = v6;
  }

  if (v4 == 2)
  {
    v5 = 1;
  }

  if (v4 == 4)
  {
    return 24;
  }

  else
  {
    return v5;
  }
}

- (id)cancellationImageNameWithBehavior:(int64_t)a3
{
  if ([(PUPickerConfiguration *)self secondaryButtonType]== 3)
  {
    return @"chevron.backward";
  }

  else
  {
    return 0;
  }
}

- (id)cancellationTitleWithBehavior:(int64_t)a3
{
  v4 = [(PUPickerConfiguration *)self secondaryButtonType];
  v5 = 0;
  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 != 2)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if ((a3 - 1) < 3)
    {
LABEL_12:
      v5 = PXLocalizedString();
      goto LABEL_13;
    }

    v5 = 0;
  }

  else if (v4 == 3 || v4 == 4 || v4 == 5)
  {
    goto LABEL_12;
  }

LABEL_13:

  return v5;
}

- (int64_t)cancellationBehaviorWithTraitCollection:(id)a3
{
  v4 = a3;
  v5 = [(PUPickerConfiguration *)self secondaryButtonType];
  if (v5 <= 2)
  {
    if (v5)
    {
      if (v5 == 2)
      {
        v7 = 2;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v8 = [v4 _presentationSemanticContext];
      v9 = [(PUPickerConfiguration *)self disabledCapabilities];
      v7 = 0;
      if (v8 != 3 && (v9 & 8) == 0)
      {
        if ([(PUPickerConfiguration *)self selection]== 2 || [(PUPickerConfiguration *)self selection]== 3)
        {
          v10 = [(PUPickerConfiguration *)self phPickerConfiguration];
          v11 = [v10 _disabledPrivateCapabilities];

          if ((v11 & 0x400) != 0)
          {
            v7 = 2;
          }

          else
          {
            v7 = 1;
          }
        }

        else
        {
          v7 = 2;
        }
      }
    }
  }

  else
  {
    v6 = 3;
    if (v5 != 4)
    {
      v6 = v5 == 5;
    }

    if (v5 == 3)
    {
      v7 = 2;
    }

    else
    {
      v7 = v6;
    }
  }

  return v7;
}

- (id)fetchOrderedItemObjectIDsUsingItemIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(PUPickerConfiguration *)self photoLibrary];
  v6 = [PUPickerConfiguration _fetchOrderedItemObjectIDsWithPhotoLibrary:v5 itemIdentifiers:v4 sourceType:[(PUPickerConfiguration *)self sourceType]];

  return v6;
}

- (void)setInteractiveBarTransitionFractionExpanded:(double)a3
{
  if (self->_interactiveBarTransitionFractionExpanded != a3)
  {
    self->_interactiveBarTransitionFractionExpanded = a3;
    [(PUPickerConfiguration *)self signalChange:64];
  }
}

- (void)setSupportsInteractiveBarTransition:(BOOL)a3
{
  if (self->_supportsInteractiveBarTransition != a3)
  {
    self->_supportsInteractiveBarTransition = a3;
    [(PUPickerConfiguration *)self signalChange:32];
  }
}

- (void)setDidShowPhotosIndicator:(BOOL)a3
{
  if (self->_didShowPhotosIndicator != a3)
  {
    self->_didShowPhotosIndicator = a3;
    [(PUPickerConfiguration *)self signalChange:16];
  }
}

- (void)setDidDismissOnboardingHeaderView:(BOOL)a3
{
  if (self->_didDismissOnboardingHeaderView != a3)
  {
    self->_didDismissOnboardingHeaderView = a3;
    [(PUPickerConfiguration *)self signalChange:8];
  }
}

- (void)setDidDismissOnboardingOverlayView:(BOOL)a3
{
  if (self->_didDismissOnboardingOverlayView != a3)
  {
    self->_didDismissOnboardingOverlayView = a3;
    [(PUPickerConfiguration *)self signalChange:4];
  }
}

- (void)setSecondaryButtonType:(int64_t)a3
{
  if ([(PHPickerConfiguration *)self->_phPickerConfiguration _secondaryButtonType]!= a3)
  {
    [(PHPickerConfiguration *)self->_phPickerConfiguration _setSecondaryButtonType:a3];

    [(PUPickerConfiguration *)self signalChange:4096];
  }
}

- (void)setPrimaryButtonType:(int64_t)a3
{
  if ([(PHPickerConfiguration *)self->_phPickerConfiguration _primaryButtonType]!= a3)
  {
    [(PHPickerConfiguration *)self->_phPickerConfiguration _setPrimaryButtonType:a3];

    [(PUPickerConfiguration *)self signalChange:2048];
  }
}

- (void)setTitle:(id)a3
{
  v6 = a3;
  v4 = [(PHPickerConfiguration *)self->_phPickerConfiguration title];
  if (v4 == v6)
  {
  }

  else
  {
    v5 = [v6 isEqual:v4];

    if ((v5 & 1) == 0)
    {
      [(PHPickerConfiguration *)self->_phPickerConfiguration setTitle:v6];
      [(PUPickerConfiguration *)self signalChange:1024];
    }
  }
}

- (void)setPrompt:(id)a3
{
  v6 = a3;
  v4 = [(PHPickerConfiguration *)self->_phPickerConfiguration prompt];
  if (v4 == v6)
  {
  }

  else
  {
    v5 = [v6 isEqual:v4];

    if ((v5 & 1) == 0)
    {
      [(PHPickerConfiguration *)self->_phPickerConfiguration setPrompt:v6];
      [(PUPickerConfiguration *)self signalChange:512];
    }
  }
}

- (void)setMinimumSelectionLimit:(int64_t)a3
{
  if ([(PHPickerConfiguration *)self->_phPickerConfiguration minimumSelectionLimit]!= a3)
  {
    [(PHPickerConfiguration *)self->_phPickerConfiguration setMinimumSelectionLimit:a3];

    [(PUPickerConfiguration *)self signalChange:256];
  }
}

- (void)setSelectionLimit:(int64_t)a3
{
  if ([(PHPickerConfiguration *)self->_phPickerConfiguration selectionLimit]!= a3)
  {
    [(PHPickerConfiguration *)self->_phPickerConfiguration setSelectionLimit:a3];

    [(PUPickerConfiguration *)self signalChange:2];
  }
}

- (void)setEdgesWithoutContentMargins:(unint64_t)a3
{
  if ([(PHPickerConfiguration *)self->_phPickerConfiguration edgesWithoutContentMargins]!= a3)
  {
    [(PHPickerConfiguration *)self->_phPickerConfiguration setEdgesWithoutContentMargins:a3];

    [(PUPickerConfiguration *)self signalChange:1];
  }
}

- (BOOL)isValidConfiguration
{
  v3 = [(PUPickerConfiguration *)self preferredAssetRepresentationMode];
  v4 = v3 >= *MEMORY[0x1E6979190];
  if (v3 < *MEMORY[0x1E6979190])
  {
    v5 = PLPickerGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v89 = 0;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_ERROR, "asset representation mode too small", v89, 2u);
    }
  }

  v6 = [(PUPickerConfiguration *)self preferredAssetRepresentationMode];
  if (v6 > *MEMORY[0x1E6979188])
  {
    v7 = PLPickerGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v89 = 0;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "asset representation mode too big", v89, 2u);
    }

    v4 = 0;
  }

  v8 = [(PUPickerConfiguration *)self selection];
  if (v8 < *MEMORY[0x1E69791A0])
  {
    v9 = PLPickerGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v89 = 0;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "selection too small", v89, 2u);
    }

    v4 = 0;
  }

  v10 = [(PUPickerConfiguration *)self selection];
  if (v10 > *MEMORY[0x1E6979198])
  {
    v11 = PLPickerGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v89 = 0;
      _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_ERROR, "selection too big", v89, 2u);
    }

    v4 = 0;
  }

  v12 = [(PUPickerConfiguration *)self mode];
  if (v12 < *MEMORY[0x1E69791B0])
  {
    v13 = PLPickerGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v89 = 0;
      _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_ERROR, "mode too small", v89, 2u);
    }

    v4 = 0;
  }

  v14 = [(PUPickerConfiguration *)self mode];
  if (v14 > *MEMORY[0x1E69791A8])
  {
    v15 = PLPickerGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v89 = 0;
      _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_ERROR, "mode too big", v89, 2u);
    }

    v4 = 0;
  }

  v16 = [(PUPickerConfiguration *)self sourceType];
  if (v16 < *MEMORY[0x1E6979250])
  {
    v17 = PLPickerGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v89 = 0;
      _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_ERROR, "source type too small", v89, 2u);
    }

    v4 = 0;
  }

  v18 = [(PUPickerConfiguration *)self sourceType];
  if (v18 > *MEMORY[0x1E6979248])
  {
    v19 = PLPickerGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v89 = 0;
      _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_ERROR, "source type too big", v89, 2u);
    }

    v4 = 0;
  }

  if ([(PUPickerConfiguration *)self selectionLimit]< 0)
  {
    v20 = PLPickerGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v89 = 0;
      _os_log_impl(&dword_1B36F3000, v20, OS_LOG_TYPE_ERROR, "selection limit is negative", v89, 2u);
    }

    v4 = 0;
  }

  if ([(PUPickerConfiguration *)self minimumSelectionLimit]< 0)
  {
    v21 = PLPickerGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *v89 = 0;
      _os_log_impl(&dword_1B36F3000, v21, OS_LOG_TYPE_ERROR, "lower selection limit is negative", v89, 2u);
    }

    v4 = 0;
  }

  if (![(PUPickerConfiguration *)self receivedPhotoLibrary]&& [(PUPickerConfiguration *)self onlyReturnsIdentifiers])
  {
    v22 = PLPickerGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *v89 = 0;
      _os_log_impl(&dword_1B36F3000, v22, OS_LOG_TYPE_ERROR, "requested identifiers without specified photo library", v89, 2u);
    }

    v4 = 0;
  }

  v23 = [(PUPickerConfiguration *)self phPickerConfiguration];
  v24 = [v23 filter];
  v25 = [v24 _puPickerFilter];
  if (v25)
  {
    v26 = v25;
    v27 = [(PUPickerConfiguration *)self phPickerConfiguration];
    v28 = [v27 filter];
    v29 = [v28 _puPickerFilter];
    v30 = [v29 isValidFilter];

    if (v30)
    {
      goto LABEL_53;
    }

    v23 = PLPickerGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *v89 = 0;
      _os_log_impl(&dword_1B36F3000, v23, OS_LOG_TYPE_ERROR, "invalid filter", v89, 2u);
    }

    v4 = 0;
  }

  else
  {
  }

LABEL_53:
  v31 = [(PUPickerConfiguration *)self phPickerConfiguration];
  v32 = [v31 _aspectRatio];
  [v32 _aspectRatio];
  if (v33 > 0.0)
  {

LABEL_59:
    goto LABEL_60;
  }

  v34 = [(PUPickerConfiguration *)self phPickerConfiguration];
  v35 = [v34 _aspectRatio];
  [v35 _aspectRatio];
  v37 = v36;
  v38 = *MEMORY[0x1E6979180];

  if (v37 != v38)
  {
    v31 = PLPickerGetLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *v89 = 0;
      _os_log_impl(&dword_1B36F3000, v31, OS_LOG_TYPE_ERROR, "aspect ratio too small", v89, 2u);
    }

    v4 = 0;
    goto LABEL_59;
  }

LABEL_60:
  if (![(PUPickerConfiguration *)self receivedPhotoLibrary])
  {
    v39 = [(PUPickerConfiguration *)self preselectedItemObjectIDs];
    v40 = [v39 count];

    if (v40)
    {
      v41 = PLPickerGetLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *v89 = 0;
        _os_log_impl(&dword_1B36F3000, v41, OS_LOG_TYPE_ERROR, "provided preselection without specified photo library", v89, 2u);
      }

      v4 = 0;
    }
  }

  if (![(PUPickerConfiguration *)self receivedPhotoLibrary])
  {
    v42 = [(PUPickerConfiguration *)self preselectedItemIdentifiers];
    v43 = [v42 count];

    if (v43)
    {
      v44 = PLPickerGetLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *v89 = 0;
        _os_log_impl(&dword_1B36F3000, v44, OS_LOG_TYPE_ERROR, "provided preselection without specified photo library", v89, 2u);
      }

      v4 = 0;
    }
  }

  if (![(PUPickerConfiguration *)self isLimitedLibraryPicker])
  {
    v45 = [(PUPickerConfiguration *)self preselectedItemObjectIDs];
    v46 = [v45 count];
    v47 = [(PUPickerConfiguration *)self preselectedItemIdentifiers];
    v48 = [v47 count];

    if (v46 > v48)
    {
      v49 = PLPickerGetLog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *v89 = 0;
        _os_log_impl(&dword_1B36F3000, v49, OS_LOG_TYPE_ERROR, "found more preselection than expected", v89, 2u);
      }

      v4 = 0;
    }
  }

  v50 = [(PUPickerConfiguration *)self peopleConfiguration];

  if (v50)
  {
    if (![(PUPickerConfiguration *)self receivedPhotoLibrary])
    {
      v51 = [(PUPickerConfiguration *)self peopleConfiguration];
      v52 = [v51 _identifiers];
      v53 = [v52 count];

      if (v53)
      {
        v54 = PLPickerGetLog();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          *v89 = 0;
          _os_log_impl(&dword_1B36F3000, v54, OS_LOG_TYPE_ERROR, "provided people without specified photo library", v89, 2u);
        }

        v4 = 0;
      }
    }

    if (![(PUPickerConfiguration *)self receivedPhotoLibrary])
    {
      v55 = [(PUPickerConfiguration *)self peopleConfiguration];
      v56 = [v55 suggestedIdentifiers];
      v57 = [v56 count];

      if (v57)
      {
        v58 = PLPickerGetLog();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          *v89 = 0;
          _os_log_impl(&dword_1B36F3000, v58, OS_LOG_TYPE_ERROR, "provided suggested people without specified photo library", v89, 2u);
        }

        v4 = 0;
      }
    }

    if (![(PUPickerConfiguration *)self receivedPhotoLibrary])
    {
      v59 = [(PUPickerConfiguration *)self peopleConfiguration];
      v60 = [v59 disabledIdentifiers];
      v61 = [v60 count];

      if (v61)
      {
        v62 = PLPickerGetLog();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          *v89 = 0;
          _os_log_impl(&dword_1B36F3000, v62, OS_LOG_TYPE_ERROR, "provided disabled people without specified photo library", v89, 2u);
        }

        v4 = 0;
      }
    }

    v63 = [(PUPickerConfiguration *)self pickerClientIdentification];
    v64 = [v63 trustedCallerBundleID];

    if (([v64 isEqualToString:@"com.apple.Preferences"] & 1) == 0 && (objc_msgSend(v64, "isEqualToString:", @"com.apple.Photos") & 1) == 0 && (objc_msgSend(v64, "isEqualToString:", *MEMORY[0x1E69C4140]) & 1) == 0 && (objc_msgSend(v64, "isEqualToString:", @"com.apple.mobileslideshow") & 1) == 0 && (objc_msgSend(v64, "isEqualToString:", @"com.apple.Bridge") & 1) == 0)
    {
      v65 = [(PUPickerConfiguration *)self peopleConfiguration];
      v66 = [v65 suggestedIdentifiers];
      v67 = [v66 count];

      if (v67)
      {
        v68 = PLPickerGetLog();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          *v89 = 0;
          _os_log_impl(&dword_1B36F3000, v68, OS_LOG_TYPE_ERROR, "untrusted caller provided people suggestion", v89, 2u);
        }

        v4 = 0;
      }
    }
  }

  v69 = [(PUPickerConfiguration *)self albumsConfiguration];

  if (v69)
  {
    if (![(PUPickerConfiguration *)self receivedPhotoLibrary])
    {
      v70 = [(PUPickerConfiguration *)self albumsConfiguration];
      v71 = [v70 _identifiers];
      v72 = [v71 count];

      if (v72)
      {
        v73 = PLPickerGetLog();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          *v89 = 0;
          _os_log_impl(&dword_1B36F3000, v73, OS_LOG_TYPE_ERROR, "provided albums without specified photo library", v89, 2u);
        }

        v4 = 0;
      }
    }

    if (![(PUPickerConfiguration *)self receivedPhotoLibrary])
    {
      v74 = [(PUPickerConfiguration *)self albumsConfiguration];
      v75 = [v74 suggestedIdentifiers];
      v76 = [v75 count];

      if (v76)
      {
        v77 = PLPickerGetLog();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          *v89 = 0;
          _os_log_impl(&dword_1B36F3000, v77, OS_LOG_TYPE_ERROR, "provided suggested albums without specified photo library", v89, 2u);
        }

        v4 = 0;
      }
    }

    if (![(PUPickerConfiguration *)self receivedPhotoLibrary])
    {
      v78 = [(PUPickerConfiguration *)self albumsConfiguration];
      v79 = [v78 disabledIdentifiers];
      v80 = [v79 count];

      if (v80)
      {
        v81 = PLPickerGetLog();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          *v89 = 0;
          _os_log_impl(&dword_1B36F3000, v81, OS_LOG_TYPE_ERROR, "provided disabled albums without specified photo library", v89, 2u);
        }

        v4 = 0;
      }
    }
  }

  if ([(PUPickerConfiguration *)self isLimitedLibraryPicker])
  {
    if (![(PUPickerConfiguration *)self receivedPhotoLibrary])
    {
      v82 = PLPickerGetLog();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        *v89 = 0;
        _os_log_impl(&dword_1B36F3000, v82, OS_LOG_TYPE_ERROR, "limited library picker without specified photo library", v89, 2u);
      }

      v4 = 0;
    }

    v83 = [(PUPickerConfiguration *)self limitedLibraryClientIdentifier];
    v84 = [v83 length];

    if (!v84)
    {
      v85 = PLPickerGetLog();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        *v89 = 0;
        _os_log_impl(&dword_1B36F3000, v85, OS_LOG_TYPE_ERROR, "limited library picker without client identifier", v89, 2u);
      }

      v4 = 0;
    }

    v86 = [(PUPickerConfiguration *)self LimitedLibraryError];

    if (v86)
    {
      v87 = PLPickerGetLog();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        *v89 = 0;
        _os_log_impl(&dword_1B36F3000, v87, OS_LOG_TYPE_ERROR, "limited library picker with client error", v89, 2u);
      }

      return 0;
    }
  }

  return v4;
}

- (PUPickerConfiguration)initWithPHPickerConfiguration:(id)a3 connection:(id)a4 overriddenGeneratedFilter:(id)a5 allowsDownload:(BOOL)a6 usesMemoriesLayout:(BOOL)a7
{
  v156 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v144 = a4;
  v15 = a5;
  if (!v14)
  {
    v122 = [MEMORY[0x1E696AAA8] currentHandler];
    [v122 handleFailureInMethod:a2 object:self file:@"PUPickerConfiguration.m" lineNumber:253 description:{@"Invalid parameter not satisfying: %@", @"phPickerConfiguration != nil"}];
  }

  v147.receiver = self;
  v147.super_class = PUPickerConfiguration;
  v16 = [(PUPickerConfiguration *)&v147 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_phPickerConfiguration, a3);
    v18 = [v14 preferredAssetRepresentationMode];
    IsCompatibilityConversionDisabled = PXPreferencesIsCompatibilityConversionDisabled();
    if (v18)
    {
      IsCompatibilityConversionDisabled = v18;
    }

    v17->_preferredAssetRepresentationMode = IsCompatibilityConversionDisabled;
    v17->_selection = [v14 selection];
    v17->_mode = [v14 mode];
    if (v15)
    {
      v20 = v15;
    }

    else
    {
      v21 = [PUPickerGeneratedFilter alloc];
      v22 = [v14 filter];
      v23 = [v22 _puPickerFilter];
      v20 = [(PUPickerGeneratedFilter *)v21 initWithFilter:v23];
    }

    v141 = v20;
    objc_storeStrong(&v17->_generatedFilter, v20);
    v24 = [v14 photoLibrary];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = [MEMORY[0x1E69789A8] imagePickerPhotoLibrary];
    }

    v27 = v26;

    objc_storeStrong(&v17->_photoLibrary, v27);
    v28 = [v14 photoLibrary];
    v17->_receivedPhotoLibrary = v28 != 0;

    v17->_onlyReturnsIdentifiers = [v14 _onlyReturnsIdentifiers];
    v17->_allowsDownscaling = [v14 _allowsDownscaling];
    v17->_allowsEncodingPolicyModification = [v14 _allowsEncodingPolicyModification];
    v29 = [v14 _suggestionGroup];
    suggestionGroup = v17->_suggestionGroup;
    v17->_suggestionGroup = v29;

    v31 = [v14 _albumsConfiguration];
    albumsConfiguration = v17->_albumsConfiguration;
    v17->_albumsConfiguration = v31;

    v33 = [v14 _peopleConfiguration];
    peopleConfiguration = v17->_peopleConfiguration;
    v17->_peopleConfiguration = v33;

    v17->_usesMemoriesLayout = a7;
    v35 = [v14 _peopleConfiguration];

    v142 = v15;
    if (v35)
    {
      v36 = [v14 _peopleConfiguration];
      v37 = [v36 suggestedIdentifiers];

      v38 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithArray:v37];
      v39 = [v14 _peopleConfiguration];
      v40 = [v39 _identifiers];

      if ([v40 count])
      {
        [v38 addObjectsFromArray:v40];
      }

      if ([v38 count])
      {
        v41 = [v38 copy];
        allPersonIdentifiers = v17->_allPersonIdentifiers;
        v17->_allPersonIdentifiers = v41;
      }
    }

    v17->_allowsDownload = a6;
    v143 = v27;
    if (v144)
    {
      v43 = [objc_alloc(MEMORY[0x1E69BF1E0]) initWithConnection:v144];
      v44 = [v43 trustedCallerBundleID];
      *v154 = 0u;
      v155 = 0u;
      if (v43)
      {
        [v43 clientAuditToken];
      }

      *buf = *v154;
      v153 = v155;
      v45 = PLPhotosAccessAllowedResultForClientAuditToken();
      *buf = *v154;
      v153 = v155;
      v46 = [MEMORY[0x1E69BF2F0] isEntitledForPhotoKitOrPrivatePhotosTCCForToken:buf];
      v146 = 0;
      *buf = *v154;
      v153 = v155;
      v47 = [MEMORY[0x1E6963620] bundleRecordForAuditToken:buf error:&v146];
      v48 = v146;
      if (v47)
      {
        v49 = [v47 localizedName];
        pickerClientDisplayName = v17->_pickerClientDisplayName;
        v17->_pickerClientDisplayName = v49;

        v51 = [v47 SDKVersion];
        v17->_pickerClientSDKVersion = [v51 integerValue];

        if (!v44)
        {
          v44 = [v47 bundleIdentifier];
        }
      }

      else
      {
        v52 = PLPickerGetLog();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v48;
          _os_log_impl(&dword_1B36F3000, v52, OS_LOG_TYPE_ERROR, "Failed to obtain bundle record: %@", buf, 0xCu);
        }
      }

      v27 = v143;
    }

    else
    {
      v44 = 0;
      v46 = 0;
      v43 = 0;
      v45 = 1;
    }

    v140 = v43;
    objc_storeStrong(&v17->_pickerClientIdentification, v43);
    v17->_pickerClientAccessAllowedResult = v45;
    v17->_pickerClientIsEntitledForOrHasPrivateLibraryAccess = v46;
    v139 = v44;
    objc_storeStrong(&v17->_pickerClientBundleIdentifier, v44);
    v53 = [v14 _purposedLimitedLibraryApplicationIdentifier];
    v54 = v53 != 0;

    if (v53)
    {
      v55 = [v14 _purposedLimitedLibraryApplicationIdentifier];
      v145 = 0;
      v56 = [PUPickerConfiguration limitedLibraryApplicationTrustedIdentifierWithConnection:v144 purposedIdentifier:v55 error:&v145];
      v53 = v145;
    }

    else
    {
      v56 = 0;
    }

    v17->_isLimitedLibraryPicker = v54;
    objc_storeStrong(&v17->_limitedLibraryClientIdentifier, v56);
    v138 = v53;
    objc_storeStrong(&v17->_LimitedLibraryError, v53);
    v57 = MEMORY[0x1E695DFB8];
    v58 = [v14 preselectedItemIdentifiers];
    v59 = [v57 orderedSetWithArray:v58];
    preselectedItemIdentifiers = v17->_preselectedItemIdentifiers;
    v17->_preselectedItemIdentifiers = v59;

    if (v56)
    {
      if (v144)
      {
        [v144 auditToken];
      }

      else
      {
        *v154 = 0u;
        v155 = 0u;
      }

      v61 = [PUPickerConfiguration limitedLibraryApplicationPreselectedObjectIDsOrCreateEmptySelectionWithTrustedIdentifier:v56 auditToken:v154 photoLibrary:v27];
      v62 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v61];
    }

    else
    {
      v61 = [v14 preselectedItemIdentifiers];
      v62 = +[PUPickerConfiguration _fetchOrderedItemObjectIDsWithPhotoLibrary:itemIdentifiers:sourceType:](PUPickerConfiguration, "_fetchOrderedItemObjectIDsWithPhotoLibrary:itemIdentifiers:sourceType:", v27, v61, [v14 _sourceType]);
    }

    preselectedItemObjectIDs = v17->_preselectedItemObjectIDs;
    v17->_preselectedItemObjectIDs = v62;

    if ([v14 _sourceType] == 1 || objc_msgSend(v14, "_sourceType") == 3 || objc_msgSend(v14, "_sourceType") == 4)
    {
      v64 = 0;
    }

    else
    {
      v83 = [v27 librarySpecificFetchOptions];
      [v83 setIncludeAllPhotosSmartAlbum:1];
      v137 = [v14 _containerIdentifier];
      if (v137)
      {
        v84 = PUPickerConfigurationGetFetchType(v14);
        v85 = *MEMORY[0x1E6978DC0];
        if ([v84 isEqualToString:*MEMORY[0x1E6978DC0]])
        {
          v86 = v14;
          v87 = PUPickerConfigurationGetFetchType(v86);
          v88 = [v86 _containerIdentifier];
          v131 = v84;
          v133 = v83;
          v135 = v87;
          if (v88)
          {
            v128 = v88;
            if ([v87 isEqualToString:v85])
            {
              v89 = PLPickerGetLog();
              if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
              {
                *v154 = 138412290;
                *&v154[4] = v128;
                _os_log_impl(&dword_1B36F3000, v89, OS_LOG_TYPE_DEFAULT, "Looking for person with identifier: %@", v154, 0xCu);
              }

              v90 = [v86 photoLibrary];
              v91 = [v90 librarySpecificFetchOptions];

              [v91 setFetchLimit:1];
              [v91 setPersonContext:5];
              v92 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
              v125 = v91;
              [v91 setIncludedDetectionTypes:v92];

              v93 = MEMORY[0x1E6978980];
              *v154 = v128;
              v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:1];
              v95 = [v93 fetchPersonsWithLocalIdentifiers:v94 options:v91];
              v96 = [v95 firstObject];

              v88 = v128;
            }

            else
            {
              v96 = 0;
              v88 = v128;
            }
          }

          else
          {
            v96 = 0;
          }

          v109 = [v27 librarySpecificFetchOptions];
          [v109 setIncludeTorsoAndFaceDetectionData:1];
          v130 = v109;
          v127 = [MEMORY[0x1E6978630] fetchAssetsForPerson:v96 options:v109];
          v110 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:? title:? identifier:?];
          v111 = MEMORY[0x1E6978760];
          v124 = v110;
          v151 = v110;
          v112 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v151 count:1];
          v113 = [v111 transientCollectionListWithCollections:v112 title:&stru_1F2AC6818];

          v114 = [MEMORY[0x1E6978830] fetchOptionsWithPhotoLibrary:v27 orObject:0];
          v136 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v113 options:v114];
          v115 = [v96 px_localizedName];
          if ([v115 length])
          {
            v103 = [v96 px_localizedName];
          }

          else
          {
            v150 = v96;
            v116 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v150 count:1];
            v103 = PXLocalizedStringForPeople();
          }

          v104 = v131;

          v83 = v133;
        }

        else if ([v84 isEqualToString:*MEMORY[0x1E6978DD8]])
        {
          v96 = PUPickerConfigurationGetSocialGroup(v14);
          v129 = [v27 librarySpecificFetchOptions];
          v126 = [MEMORY[0x1E6978630] fetchExclusiveAssetsForSocialGroup:v96 options:v129];
          v123 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v126 title:&stru_1F2AC6818 identifier:v137];
          v99 = MEMORY[0x1E6978760];
          v149 = v123;
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v149 count:1];
          v132 = v84;
          v100 = v134 = v83;
          v101 = [v99 transientCollectionListWithCollections:v100 title:&stru_1F2AC6818];

          v102 = [MEMORY[0x1E6978830] fetchOptionsWithPhotoLibrary:v27 orObject:0];
          v136 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v101 options:v102];
          v103 = [v96 localizedTitle];

          v104 = v132;
          v83 = v134;
        }

        else
        {
          v104 = v84;
          v105 = PLPickerGetLog();
          if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
          {
            *v154 = 138412290;
            *&v154[4] = v137;
            _os_log_impl(&dword_1B36F3000, v105, OS_LOG_TYPE_DEFAULT, "Looking for custom asset collection with identifier: %@", v154, 0xCu);
          }

          v106 = MEMORY[0x1E6978650];
          v148 = v137;
          v107 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v148 count:1];
          v108 = [v106 fetchAssetCollectionsWithLocalIdentifiers:v107 options:v83];

          v136 = v108;
          v96 = [v108 firstObject];
          v103 = [v96 localizedTitle];
        }

        v98 = v103;
        v97 = v136;
      }

      else
      {
        v97 = 0;
        v98 = 0;
      }

      v117 = [(PHFetchResult *)v97 firstObject];

      if (!v117)
      {
        v118 = PLPickerGetLog();
        if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
        {
          *v154 = 0;
          _os_log_impl(&dword_1B36F3000, v118, OS_LOG_TYPE_DEFAULT, "No custom collection specified/found. Using all photos asset collection.", v154, 2u);
        }

        v119 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:2 subtype:1000000205 options:v83];

        v98 = 0;
        v97 = v119;
      }

      containerCollectionFetchResult = v17->_containerCollectionFetchResult;
      v17->_containerCollectionFetchResult = v97;
      v121 = v97;

      v64 = v98;
      objc_storeStrong(&v17->_containerCollectionTitle, v98);
    }

    v65 = [v14 _peopleConfiguration];
    v66 = [v65 suggestedIdentifiers];
    v67 = v66;
    v68 = MEMORY[0x1E695E0F0];
    if (v66)
    {
      v69 = v66;
    }

    else
    {
      v69 = MEMORY[0x1E695E0F0];
    }

    v70 = v69;

    if ([v70 count])
    {
      v71 = [(PUPickerConfiguration *)v17 photoLibrary];
      v72 = [v71 librarySpecificFetchOptions];

      v73 = [MEMORY[0x1E6978980] fetchPersonsWithLocalIdentifiers:v70 options:v72];
      v74 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v70];
      v68 = [v73 px_fetchedObjectIDsSortedByLocalIdentifiers:v74];
    }

    v75 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v68];
    suggestedItemObjectIDs = v17->_suggestedItemObjectIDs;
    v17->_suggestedItemObjectIDs = v75;

    v77 = PUPickerConfigurationGetTitle(v14, v141, v64);
    v78 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssets:MEMORY[0x1E695E0F0] title:v77 identifier:*MEMORY[0x1E69C41A8] photoLibrary:v143];
    allPhotosVirtualCollection = v17->_allPhotosVirtualCollection;
    v17->_allPhotosVirtualCollection = v78;

    v17->_supportsInteractiveBarTransition = 0;
    v17->_interactiveBarTransitionFractionExpanded = 1.0;
    v17->_interactiveBarTransitionWindowHeight = 0.0;

    v15 = v142;
  }

  if ([(PUPickerConfiguration *)v17 isValidConfiguration])
  {
    v80 = v17;
  }

  else
  {
    v80 = 0;
  }

  v81 = v80;

  return v81;
}

- (id)initForUIImagePickerControllerWithPHPickerConfiguration:(id)a3 connection:(id)a4 overriddenGeneratedFilter:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PUPickerConfiguration.m" lineNumber:238 description:{@"Invalid parameter not satisfying: %@", @"phPickerConfiguration != nil"}];
  }

  v12 = -[PUPickerConfiguration initWithPHPickerConfiguration:connection:overriddenGeneratedFilter:allowsDownload:usesMemoriesLayout:](self, "initWithPHPickerConfiguration:connection:overriddenGeneratedFilter:allowsDownload:usesMemoriesLayout:", v9, v10, v11, [v9 _onlyReturnsIdentifiers] ^ 1, objc_msgSend(v9, "_usesMemoriesLayout"));

  return v12;
}

- (PUPickerConfiguration)initWithPHPickerConfiguration:(id)a3 connection:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PUPickerConfiguration.m" lineNumber:225 description:{@"Invalid parameter not satisfying: %@", @"phPickerConfiguration != nil"}];
  }

  v9 = -[PUPickerConfiguration initWithPHPickerConfiguration:connection:overriddenGeneratedFilter:allowsDownload:usesMemoriesLayout:](self, "initWithPHPickerConfiguration:connection:overriddenGeneratedFilter:allowsDownload:usesMemoriesLayout:", v7, v8, 0, 0, [v7 _usesMemoriesLayout]);

  return v9;
}

- (PUPickerConfiguration)init
{
  v4 = objc_alloc_init(MEMORY[0x1E69790E0]);
  v5 = [(PUPickerConfiguration *)self initWithPHPickerConfiguration:v4 connection:0];

  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:0 file:@"PUPickerConfiguration.m" lineNumber:218 description:@"Self must not be nil."];
  }

  return v5;
}

+ (id)limitedLibraryApplicationPreselectedObjectIDsOrCreateEmptySelectionWithTrustedIdentifier:(id)a3 auditToken:(id *)a4 photoLibrary:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = MEMORY[0x1E69BE510];
  v10 = [v8 managedObjectContextForCurrentQueueQoS];
  v11 = [v9 fetchLimitedLibraryFetchFilterWithApplicationIdentifier:v7 inManagedObjectContext:v10];

  v12 = PLPickerGetLog();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      *buf = 138412290;
      *&buf[4] = v7;
      _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_DEFAULT, "Fetching existing selection for client: %@", buf, 0xCu);
    }

    v14 = [MEMORY[0x1E69BE540] entityName];
    v15 = [v11 predicateForEntityName:v14];

    if (!v15)
    {
      v22 = MEMORY[0x1E695E0F0];
      goto LABEL_14;
    }

    v16 = [v8 librarySpecificFetchOptions];
    v17 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
    v28 = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    [v16 setSortDescriptors:v18];

    [v16 setInternalPredicate:v15];
    [v16 setIncludeAssetSourceTypes:5];
    v19 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v16];
    v20 = [v19 fetchedObjectIDs];
    v21 = [v20 count];

    if (v21)
    {
      v22 = [v19 fetchedObjectIDs];
    }

    else
    {
      v22 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    if (v13)
    {
      *buf = 138412290;
      *&buf[4] = v7;
      _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_DEFAULT, "Creating initial empty fetch filter for client: %@", buf, 0xCu);
    }

    v23 = [v8 assetsdClient];
    v15 = [v23 libraryInternalClient];

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __138__PUPickerConfiguration_limitedLibraryApplicationPreselectedObjectIDsOrCreateEmptySelectionWithTrustedIdentifier_auditToken_photoLibrary___block_invoke;
    v26[3] = &unk_1E7B80280;
    v27 = v7;
    v24 = *&a4->var0[4];
    *buf = *a4->var0;
    v30 = v24;
    v22 = MEMORY[0x1E695E0F0];
    [v15 setFetchFilterWithAssets:MEMORY[0x1E695E0F0] forApplication:v27 withAuditToken:buf completionHandler:v26];
    v16 = v27;
  }

LABEL_14:

  return v22;
}

void __138__PUPickerConfiguration_limitedLibraryApplicationPreselectedObjectIDsOrCreateEmptySelectionWithTrustedIdentifier_auditToken_photoLibrary___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = PLPickerGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "Created initial empty fetch filter for client: %@, success: %@", &v7, 0x16u);
  }
}

+ (id)limitedLibraryApplicationTrustedIdentifierWithConnection:(id)a3 purposedIdentifier:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if (!a5)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"PUPickerConfiguration.m" lineNumber:490 description:{@"Invalid parameter not satisfying: %@", @"outError != nil"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_12:
    v17 = MEMORY[0x1E696ABC0];
    v18 = @"Missing XPC connection.";
    goto LABEL_13;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (![v10 length])
  {
    v15 = PLClientApplicationIdentifierFromXPCConnection();
    v13 = v15;
    if (v15)
    {
      v16 = v15;
      v14 = 0;
    }

    else
    {
      v14 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Missing trusted bundle identifier."];
    }

    goto LABEL_14;
  }

  v11 = [v9 valueForEntitlement:*MEMORY[0x1E69BF3D0]];
  v12 = [v11 BOOLValue];

  if (v12)
  {
    v13 = v10;
    v14 = 0;
    goto LABEL_14;
  }

  v17 = MEMORY[0x1E696ABC0];
  v18 = @"Missing entitlement.";
LABEL_13:
  v14 = [v17 px_genericErrorWithDebugDescription:v18];
  v13 = 0;
LABEL_14:
  v20 = v14;
  *a5 = v14;

  return v13;
}

@end