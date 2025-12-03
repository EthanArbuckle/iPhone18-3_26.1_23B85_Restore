@interface PUPickerConfiguration
+ (id)_fetchOrderedItemObjectIDsWithPhotoLibrary:(id)library itemIdentifiers:(id)identifiers sourceType:(int64_t)type;
+ (id)limitedLibraryApplicationPreselectedObjectIDsOrCreateEmptySelectionWithTrustedIdentifier:(id)identifier auditToken:(id *)token photoLibrary:(id)library;
+ (id)limitedLibraryApplicationTrustedIdentifierWithConnection:(id)connection purposedIdentifier:(id)identifier error:(id *)error;
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
- (PUPickerConfiguration)initWithPHPickerConfiguration:(id)configuration connection:(id)connection;
- (PUPickerConfiguration)initWithPHPickerConfiguration:(id)configuration connection:(id)connection overriddenGeneratedFilter:(id)filter allowsDownload:(BOOL)download usesMemoriesLayout:(BOOL)layout;
- (id)cancellationImageNameWithBehavior:(int64_t)behavior;
- (id)cancellationTitleWithBehavior:(int64_t)behavior;
- (id)fetchOrderedItemObjectIDsUsingItemIdentifiers:(id)identifiers;
- (id)initForUIImagePickerControllerWithPHPickerConfiguration:(id)configuration connection:(id)connection overriddenGeneratedFilter:(id)filter;
- (id)locationMetadataSubtitleWithSelectionCount:(int64_t)count includesLocation:(BOOL)location usesShortVersion:(BOOL)version leadingImageName:(id *)name;
- (id)promptWithSelectionCount:(int64_t)count;
- (id)stagingSubtitleWithSelectionCount:(int64_t)count includesLocation:(BOOL)location subtitleLeadingImageName:(id *)name;
- (id)stagingTitleWithSelectionCount:(int64_t)count selectionMediaType:(int64_t)type;
- (int64_t)cancellationBehaviorWithTraitCollection:(id)collection;
- (int64_t)cancellationSystemItemWithBehavior:(int64_t)behavior;
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
- (void)setDidDismissOnboardingHeaderView:(BOOL)view;
- (void)setDidDismissOnboardingOverlayView:(BOOL)view;
- (void)setDidShowPhotosIndicator:(BOOL)indicator;
- (void)setEdgesWithoutContentMargins:(unint64_t)margins;
- (void)setInteractiveBarTransitionFractionExpanded:(double)expanded;
- (void)setMinimumSelectionLimit:(int64_t)limit;
- (void)setPrimaryButtonType:(int64_t)type;
- (void)setPrompt:(id)prompt;
- (void)setSecondaryButtonType:(int64_t)type;
- (void)setSelectionLimit:(int64_t)limit;
- (void)setSupportsInteractiveBarTransition:(BOOL)transition;
- (void)setTitle:(id)title;
@end

@implementation PUPickerConfiguration

+ (id)_fetchOrderedItemObjectIDsWithPhotoLibrary:(id)library itemIdentifiers:(id)identifiers sourceType:(int64_t)type
{
  v7 = sub_1B3C9C788();
  libraryCopy = library;
  v9 = sub_1B3881E08(libraryCopy, v7, type);

  return v9;
}

- (BOOL)showsWallpaperSuggestions
{
  suggestionGroup = [(PUPickerConfiguration *)self suggestionGroup];
  isForWallpaper = [suggestionGroup isForWallpaper];

  return isForWallpaper;
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
    generatedFilter = [(PUPickerConfiguration *)self generatedFilter];
    LODWORD(v3) = [generatedFilter containsStickersFilter];

    if (v3)
    {
      photoLibrary = [(PUPickerConfiguration *)self photoLibrary];
      librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

      [librarySpecificFetchOptions setIncludeAssetSourceTypes:5];
      v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kind", 0];
      [librarySpecificFetchOptions setInternalPredicate:v7];

      [librarySpecificFetchOptions setIncludeGuestAssets:1];
      [librarySpecificFetchOptions setShouldPrefetchCount:1];
      v8 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:librarySpecificFetchOptions];
      v3 = [v8 count];

      v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= 0", @"stickerConfidenceScore"];
      v10 = MEMORY[0x1E696AB28];
      internalPredicate = [librarySpecificFetchOptions internalPredicate];
      v17[0] = internalPredicate;
      v17[1] = v9;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
      v13 = [v10 andPredicateWithSubpredicates:v12];
      [librarySpecificFetchOptions setInternalPredicate:v13];

      v14 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:librarySpecificFetchOptions];
      v15 = [v14 count];

      LOBYTE(v3) = v3 >= 0xB && v15 / v3 < 0.9;
    }
  }

  return v3;
}

- (BOOL)shouldDisableInlinePlayback
{
  phPickerConfiguration = [(PUPickerConfiguration *)self phPickerConfiguration];
  v3 = ([phPickerConfiguration _disabledPrivateCapabilities] >> 3) & 1;

  return v3;
}

- (BOOL)pickerClientShouldRespectOptionsMenu
{
  pickerClientIdentification = [(PUPickerConfiguration *)self pickerClientIdentification];
  trustedCallerBundleID = [pickerClientIdentification trustedCallerBundleID];

  if (pickerClientShouldRespectOptionsMenu_onceToken != -1)
  {
    dispatch_once(&pickerClientShouldRespectOptionsMenu_onceToken, &__block_literal_global_40676);
  }

  if (PFIsPhotosMessagesApp() & 1) != 0 || ([pickerClientShouldRespectOptionsMenu_supportedBundleIDs containsObject:trustedCallerBundleID])
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
    phPickerConfiguration = [(PUPickerConfiguration *)self phPickerConfiguration];
    _limitedLibraryHeaderDismissedBefore = [phPickerConfiguration _limitedLibraryHeaderDismissedBefore];

    if (_limitedLibraryHeaderDismissedBefore)
    {
      return 0;
    }
  }

  if (![(PUPickerConfiguration *)self isLimitedLibraryPicker])
  {
    phPickerConfiguration2 = [(PUPickerConfiguration *)self phPickerConfiguration];
    _onboardingHeaderDismissedBefore = [phPickerConfiguration2 _onboardingHeaderDismissedBefore];

    if (_onboardingHeaderDismissedBefore)
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
  phPickerConfiguration = [(PUPickerConfiguration *)self phPickerConfiguration];
  disabledCapabilities = [phPickerConfiguration disabledCapabilities];

  if ((disabledCapabilities & 0x10) != 0)
  {
    return 0;
  }

  v4 = MEMORY[0x1E69C3A20];

  return [v4 userSafetyInterventionCheckRequired];
}

- (BOOL)allowsConfidentialWarning
{
  phPickerConfiguration = [(PUPickerConfiguration *)self phPickerConfiguration];
  v3 = ([phPickerConfiguration _disabledPrivateCapabilities] & 0x80) == 0;

  return v3;
}

- (BOOL)disableAutoPlaybackInPreview
{
  phPickerConfiguration = [(PUPickerConfiguration *)self phPickerConfiguration];
  v3 = ([phPickerConfiguration _disabledPrivateCapabilities] >> 13) & 1;

  return v3;
}

- (BOOL)disableAutoPreferredContentSize
{
  phPickerConfiguration = [(PUPickerConfiguration *)self phPickerConfiguration];
  v3 = ([phPickerConfiguration _disabledPrivateCapabilities] >> 12) & 1;

  return v3;
}

- (BOOL)hasClearBackgroundColor
{
  phPickerConfiguration = [(PUPickerConfiguration *)self phPickerConfiguration];
  v3 = ([phPickerConfiguration _disabledPrivateCapabilities] >> 4) & 1;

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
  phPickerConfiguration = [(PUPickerConfiguration *)self phPickerConfiguration];
  v3 = ([phPickerConfiguration _disabledPrivateCapabilities] & 0x4000) == 0;

  return v3;
}

- (BOOL)allowsNewItemCreation
{
  phPickerConfiguration = [(PUPickerConfiguration *)self phPickerConfiguration];
  _disabledPrivateCapabilities = [phPickerConfiguration _disabledPrivateCapabilities];

  if ((_disabledPrivateCapabilities & 0x20) != 0 || [(PUPickerConfiguration *)self primaryButtonType]|| [(PUPickerConfiguration *)self sourceType]!= 2)
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
  phPickerConfiguration = [(PUPickerConfiguration *)self phPickerConfiguration];
  _disabledPrivateCapabilities = [phPickerConfiguration _disabledPrivateCapabilities];
  result = (_disabledPrivateCapabilities & 0x100) != 0 || ([(PUPickerConfiguration *)self suggestionGroup], v5 = ;
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
    phPickerConfiguration = [(PUPickerConfiguration *)self phPickerConfiguration];
    v4 = ([phPickerConfiguration _disabledPrivateCapabilities] >> 2) & 1;
  }

  return v4;
}

- (BOOL)excludesFavoritesAlbum
{
  phPickerConfiguration = [(PUPickerConfiguration *)self phPickerConfiguration];
  v3 = ([phPickerConfiguration _disabledPrivateCapabilities] >> 15) & 1;

  return v3;
}

- (BOOL)excludesHiddenAlbum
{
  phPickerConfiguration = [(PUPickerConfiguration *)self phPickerConfiguration];
  _disabledPrivateCapabilities = [phPickerConfiguration _disabledPrivateCapabilities];

  return (_disabledPrivateCapabilities & 2) != 0 || [(PUPickerConfiguration *)self _pickerClientSDKIsDawnAndBelow]&& [(PUPickerConfiguration *)self isLimitedLibraryPicker];
}

- (BOOL)excludesSharedAlbums
{
  phPickerConfiguration = [(PUPickerConfiguration *)self phPickerConfiguration];
  _disabledPrivateCapabilities = [phPickerConfiguration _disabledPrivateCapabilities];

  return (_disabledPrivateCapabilities & 1) != 0 || [(PUPickerConfiguration *)self _pickerClientSDKIsDawnAndBelow]&& [(PUPickerConfiguration *)self isLimitedLibraryPicker];
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
  phPickerConfiguration = [(PUPickerConfiguration *)self phPickerConfiguration];
  _usesOpenPanelLayout = [phPickerConfiguration _usesOpenPanelLayout];

  return _usesOpenPanelLayout ^ 1;
}

- (BOOL)allowsSidebar
{
  if (([(PUPickerConfiguration *)self edgesWithoutContentMargins]& 2) != 0)
  {
    return 0;
  }

  albumsConfiguration = [(PUPickerConfiguration *)self albumsConfiguration];
  if (albumsConfiguration)
  {

    return 0;
  }

  peopleConfiguration = [(PUPickerConfiguration *)self peopleConfiguration];

  if (peopleConfiguration)
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

  generatedFilter = [(PUPickerConfiguration *)self generatedFilter];
  allowsAlbums = [generatedFilter allowsAlbums];

  return allowsAlbums;
}

- (BOOL)allowsNavigationPushPopAnimation
{
  phPickerConfiguration = [(PUPickerConfiguration *)self phPickerConfiguration];
  _usesOpenPanelLayout = [phPickerConfiguration _usesOpenPanelLayout];

  return _usesOpenPanelLayout ^ 1;
}

- (BOOL)allowsInteractivePopGesture
{
  phPickerConfiguration = [(PUPickerConfiguration *)self phPickerConfiguration];
  _usesOpenPanelLayout = [phPickerConfiguration _usesOpenPanelLayout];

  return _usesOpenPanelLayout ^ 1;
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
  selection = [(PUPickerConfiguration *)self selection];
  if (selection != 1)
  {
    LOBYTE(selection) = [(PUPickerConfiguration *)self selection]== 3;
  }

  return selection;
}

- (BOOL)hasPreselection
{
  preselectedItemIdentifiers = [(PUPickerConfiguration *)self preselectedItemIdentifiers];
  if ([preselectedItemIdentifiers count])
  {
    v4 = 1;
  }

  else
  {
    preselectedItemObjectIDs = [(PUPickerConfiguration *)self preselectedItemObjectIDs];
    v4 = [preselectedItemObjectIDs count] != 0;
  }

  return v4;
}

- (BOOL)hasFilterablePHPickerFilter
{
  generatedFilter = [(PUPickerConfiguration *)self generatedFilter];
  v3 = [generatedFilter requiredAssetTypes] != 131070;

  return v3;
}

- (int64_t)minimumSelectionLimit
{
  phPickerConfiguration = [(PUPickerConfiguration *)self phPickerConfiguration];
  minimumSelectionLimit = [phPickerConfiguration minimumSelectionLimit];

  if (minimumSelectionLimit == 0x7FFFFFFFFFFFFFFFLL)
  {
    return [(PUPickerConfiguration *)self hasPreselection]^ 1;
  }

  phPickerConfiguration2 = [(PUPickerConfiguration *)self phPickerConfiguration];
  minimumSelectionLimit2 = [phPickerConfiguration2 minimumSelectionLimit];

  return minimumSelectionLimit2;
}

- (int64_t)selectionLimit
{
  phPickerConfiguration = [(PUPickerConfiguration *)self phPickerConfiguration];
  selectionLimit = [phPickerConfiguration selectionLimit];

  return selectionLimit;
}

- (NSString)fetchType
{
  sourceType = [(PUPickerConfiguration *)self sourceType];
  if ((sourceType - 1) > 5)
  {
    v3 = MEMORY[0x1E6978D98];
  }

  else
  {
    v3 = qword_1E7B79470[sourceType - 1];
  }

  v4 = *v3;

  return v4;
}

- (int64_t)sourceType
{
  phPickerConfiguration = [(PUPickerConfiguration *)self phPickerConfiguration];
  _sourceType = [phPickerConfiguration _sourceType];

  return _sourceType;
}

- (unint64_t)disabledCapabilities
{
  phPickerConfiguration = [(PUPickerConfiguration *)self phPickerConfiguration];
  disabledCapabilities = [phPickerConfiguration disabledCapabilities];

  return disabledCapabilities;
}

- (unint64_t)edgesWithoutContentMargins
{
  phPickerConfiguration = [(PUPickerConfiguration *)self phPickerConfiguration];
  edgesWithoutContentMargins = [phPickerConfiguration edgesWithoutContentMargins];

  return edgesWithoutContentMargins;
}

- (int64_t)confirmationSystemItem
{
  primaryButtonType = [(PUPickerConfiguration *)self primaryButtonType];
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  if (primaryButtonType <= 2)
  {
    if (primaryButtonType)
    {
      if (primaryButtonType == 2)
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
      confirmationBehavior = [(PUPickerConfiguration *)self confirmationBehavior];
      if (confirmationBehavior >= 5)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        return qword_1B3D0D298[confirmationBehavior];
      }
    }
  }

  else
  {
    if (primaryButtonType == 5)
    {
      v4 = 3;
    }

    if (primaryButtonType == 4)
    {
      v4 = 2;
    }

    if (primaryButtonType == 3)
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
  primaryButtonType = [(PUPickerConfiguration *)self primaryButtonType];
  v4 = 0;
  if (primaryButtonType <= 3)
  {
    if (primaryButtonType)
    {
      if (primaryButtonType != 2 && primaryButtonType != 3)
      {
        goto LABEL_14;
      }
    }

    else
    {
      confirmationBehavior = [(PUPickerConfiguration *)self confirmationBehavior];
      if (confirmationBehavior && confirmationBehavior != 3 && confirmationBehavior != 1)
      {
        v4 = 0;
        goto LABEL_14;
      }
    }

LABEL_13:
    v4 = PXLocalizedString();
    goto LABEL_14;
  }

  if (primaryButtonType == 4 || primaryButtonType == 5 || primaryButtonType == 6)
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
  phPickerConfiguration = [(PUPickerConfiguration *)self phPickerConfiguration];
  _secondaryButtonType = [phPickerConfiguration _secondaryButtonType];

  return _secondaryButtonType;
}

- (int64_t)primaryButtonType
{
  phPickerConfiguration = [(PUPickerConfiguration *)self phPickerConfiguration];
  _primaryButtonType = [phPickerConfiguration _primaryButtonType];

  return _primaryButtonType;
}

- (NSString)title
{
  phPickerConfiguration = [(PUPickerConfiguration *)self phPickerConfiguration];
  title = [phPickerConfiguration title];
  v5 = title;
  if (title)
  {
    v6 = title;
  }

  else
  {
    phPickerConfiguration2 = [(PUPickerConfiguration *)self phPickerConfiguration];
    generatedFilter = [(PUPickerConfiguration *)self generatedFilter];
    containerCollectionTitle = [(PUPickerConfiguration *)self containerCollectionTitle];
    v6 = PUPickerConfigurationGetTitle(phPickerConfiguration2, generatedFilter, containerCollectionTitle);
  }

  return v6;
}

- (NSString)prompt
{
  phPickerConfiguration = [(PUPickerConfiguration *)self phPickerConfiguration];
  prompt = [phPickerConfiguration prompt];

  return prompt;
}

- (NSString)initialSearchText
{
  phPickerConfiguration = [(PUPickerConfiguration *)self phPickerConfiguration];
  _searchText = [phPickerConfiguration _searchText];

  return _searchText;
}

- (id)locationMetadataSubtitleWithSelectionCount:(int64_t)count includesLocation:(BOOL)location usesShortVersion:(BOOL)version leadingImageName:(id *)name
{
  versionCopy = version;
  locationCopy = location;
  if ([(PUPickerConfiguration *)self excludesLocationMetadataSubtitle])
  {
    v9 = 0;
    if (name)
    {
      *name = 0;
    }
  }

  else
  {
    if (versionCopy)
    {
      if (name)
      {
        *name = 0;
      }
    }

    else if (name)
    {
      if (locationCopy)
      {
        v10 = @"location.fill";
      }

      else
      {
        v10 = @"location.slash";
      }

      *name = v10;
    }

    v9 = PXLocalizedString();
  }

  return v9;
}

- (id)stagingSubtitleWithSelectionCount:(int64_t)count includesLocation:(BOOL)location subtitleLeadingImageName:(id *)name
{
  locationCopy = location;
  if (!name)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerConfiguration.m" lineNumber:852 description:{@"Invalid parameter not satisfying: %@", @"outSubtitleLeadingImageName"}];
  }

  phPickerConfiguration = [(PUPickerConfiguration *)self phPickerConfiguration];
  _disabledPrivateCapabilities = [phPickerConfiguration _disabledPrivateCapabilities];

  if ((_disabledPrivateCapabilities & 0x800) != 0 || [(PUPickerConfiguration *)self excludesLocationMetadataSubtitle])
  {
    v11 = 0;
    *name = 0;
  }

  else
  {
    if (MEMORY[0x1B8C6D660]())
    {
      allowsOpeningStagingArea = [(PUPickerConfiguration *)self allowsOpeningStagingArea];
      v13 = count > 0 && allowsOpeningStagingArea;
    }

    else
    {
      v13 = 0;
    }

    v11 = [(PUPickerConfiguration *)self locationMetadataSubtitleWithSelectionCount:count includesLocation:locationCopy usesShortVersion:v13 leadingImageName:name];
  }

  return v11;
}

- (id)stagingTitleWithSelectionCount:(int64_t)count selectionMediaType:(int64_t)type
{
  if ([(PUPickerConfiguration *)self isSingleSelection])
  {
    v7 = 0;
    goto LABEL_37;
  }

  sourceType = [(PUPickerConfiguration *)self sourceType];
  v9 = sourceType;
  if (count < 1)
  {
    if (sourceType == 4)
    {
      photoLibrary = [(PUPickerConfiguration *)self photoLibrary];
      [photoLibrary px_peoplePetsHomeVisibility];
    }

    v15 = PXLocalizedString();
  }

  else
  {
    allowsOpeningStagingArea = [(PUPickerConfiguration *)self allowsOpeningStagingArea];
    if (v9 > 3)
    {
      switch(v9)
      {
        case 6:
          if (allowsOpeningStagingArea)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerConfiguration.m" lineNumber:800 description:{@"Invalid parameter not satisfying: %@", @"!self.allowsOpeningStagingArea"}];
          }

          goto LABEL_33;
        case 5:
          if (allowsOpeningStagingArea)
          {
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPickerConfiguration.m" lineNumber:794 description:{@"Invalid parameter not satisfying: %@", @"!self.allowsOpeningStagingArea"}];
          }

          goto LABEL_33;
        case 4:
          if (allowsOpeningStagingArea)
          {
            currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUPickerConfiguration.m" lineNumber:778 description:{@"Invalid parameter not satisfying: %@", @"!self.allowsOpeningStagingArea"}];
          }

          photoLibrary2 = [(PUPickerConfiguration *)self photoLibrary];
          [photoLibrary2 px_peoplePetsHomeVisibility];

          goto LABEL_33;
      }
    }

    else
    {
      switch(v9)
      {
        case 1:
          if (allowsOpeningStagingArea)
          {
            currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler4 handleFailureInMethod:a2 object:self file:@"PUPickerConfiguration.m" lineNumber:788 description:{@"Invalid parameter not satisfying: %@", @"!self.allowsOpeningStagingArea"}];
          }

          goto LABEL_33;
        case 2:
          if (allowsOpeningStagingArea)
          {
            currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler5 handleFailureInMethod:a2 object:self file:@"PUPickerConfiguration.m" lineNumber:797 description:{@"Invalid parameter not satisfying: %@", @"!self.allowsOpeningStagingArea"}];
          }

          goto LABEL_33;
        case 3:
          if (allowsOpeningStagingArea)
          {
            currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler6 handleFailureInMethod:a2 object:self file:@"PUPickerConfiguration.m" lineNumber:791 description:{@"Invalid parameter not satisfying: %@", @"!self.allowsOpeningStagingArea"}];
          }

          goto LABEL_33;
      }
    }

    if (allowsOpeningStagingArea)
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

- (id)promptWithSelectionCount:(int64_t)count
{
  selectionLimit = [(PUPickerConfiguration *)self selectionLimit];
  if (count >= 1 && selectionLimit >= 2 && [(PUPickerConfiguration *)self selectionLimit]- 5 <= count)
  {
    goto LABEL_10;
  }

  prompt = [(PUPickerConfiguration *)self prompt];

  if (!prompt)
  {
    if ([(PUPickerConfiguration *)self isLimitedLibraryPicker])
    {
      [(PUPickerConfiguration *)self hasPreselection];
      prompt2 = PXLocalizedString();
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
    generatedFilter = [(PUPickerConfiguration *)self generatedFilter];
    [generatedFilter displayAssetMediaType];
    photoLibrary = [(PUPickerConfiguration *)self photoLibrary];
    [photoLibrary px_peoplePetsHomeVisibility];
    v10 = PUPickerConfigurationGetSelectionLimitString();

    goto LABEL_13;
  }

  prompt2 = [(PUPickerConfiguration *)self prompt];
LABEL_12:
  v10 = prompt2;
LABEL_13:

  return v10;
}

- (int64_t)cancellationSystemItemWithBehavior:(int64_t)behavior
{
  secondaryButtonType = [(PUPickerConfiguration *)self secondaryButtonType];
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (behavior == 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (behavior == 3)
  {
    v6 = 24;
  }

  if (!secondaryButtonType)
  {
    v5 = v6;
  }

  if (secondaryButtonType == 2)
  {
    v5 = 1;
  }

  if (secondaryButtonType == 4)
  {
    return 24;
  }

  else
  {
    return v5;
  }
}

- (id)cancellationImageNameWithBehavior:(int64_t)behavior
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

- (id)cancellationTitleWithBehavior:(int64_t)behavior
{
  secondaryButtonType = [(PUPickerConfiguration *)self secondaryButtonType];
  v5 = 0;
  if (secondaryButtonType <= 2)
  {
    if (secondaryButtonType)
    {
      if (secondaryButtonType != 2)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if ((behavior - 1) < 3)
    {
LABEL_12:
      v5 = PXLocalizedString();
      goto LABEL_13;
    }

    v5 = 0;
  }

  else if (secondaryButtonType == 3 || secondaryButtonType == 4 || secondaryButtonType == 5)
  {
    goto LABEL_12;
  }

LABEL_13:

  return v5;
}

- (int64_t)cancellationBehaviorWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  secondaryButtonType = [(PUPickerConfiguration *)self secondaryButtonType];
  if (secondaryButtonType <= 2)
  {
    if (secondaryButtonType)
    {
      if (secondaryButtonType == 2)
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
      _presentationSemanticContext = [collectionCopy _presentationSemanticContext];
      disabledCapabilities = [(PUPickerConfiguration *)self disabledCapabilities];
      v7 = 0;
      if (_presentationSemanticContext != 3 && (disabledCapabilities & 8) == 0)
      {
        if ([(PUPickerConfiguration *)self selection]== 2 || [(PUPickerConfiguration *)self selection]== 3)
        {
          phPickerConfiguration = [(PUPickerConfiguration *)self phPickerConfiguration];
          _disabledPrivateCapabilities = [phPickerConfiguration _disabledPrivateCapabilities];

          if ((_disabledPrivateCapabilities & 0x400) != 0)
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
    if (secondaryButtonType != 4)
    {
      v6 = secondaryButtonType == 5;
    }

    if (secondaryButtonType == 3)
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

- (id)fetchOrderedItemObjectIDsUsingItemIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  photoLibrary = [(PUPickerConfiguration *)self photoLibrary];
  v6 = [PUPickerConfiguration _fetchOrderedItemObjectIDsWithPhotoLibrary:photoLibrary itemIdentifiers:identifiersCopy sourceType:[(PUPickerConfiguration *)self sourceType]];

  return v6;
}

- (void)setInteractiveBarTransitionFractionExpanded:(double)expanded
{
  if (self->_interactiveBarTransitionFractionExpanded != expanded)
  {
    self->_interactiveBarTransitionFractionExpanded = expanded;
    [(PUPickerConfiguration *)self signalChange:64];
  }
}

- (void)setSupportsInteractiveBarTransition:(BOOL)transition
{
  if (self->_supportsInteractiveBarTransition != transition)
  {
    self->_supportsInteractiveBarTransition = transition;
    [(PUPickerConfiguration *)self signalChange:32];
  }
}

- (void)setDidShowPhotosIndicator:(BOOL)indicator
{
  if (self->_didShowPhotosIndicator != indicator)
  {
    self->_didShowPhotosIndicator = indicator;
    [(PUPickerConfiguration *)self signalChange:16];
  }
}

- (void)setDidDismissOnboardingHeaderView:(BOOL)view
{
  if (self->_didDismissOnboardingHeaderView != view)
  {
    self->_didDismissOnboardingHeaderView = view;
    [(PUPickerConfiguration *)self signalChange:8];
  }
}

- (void)setDidDismissOnboardingOverlayView:(BOOL)view
{
  if (self->_didDismissOnboardingOverlayView != view)
  {
    self->_didDismissOnboardingOverlayView = view;
    [(PUPickerConfiguration *)self signalChange:4];
  }
}

- (void)setSecondaryButtonType:(int64_t)type
{
  if ([(PHPickerConfiguration *)self->_phPickerConfiguration _secondaryButtonType]!= type)
  {
    [(PHPickerConfiguration *)self->_phPickerConfiguration _setSecondaryButtonType:type];

    [(PUPickerConfiguration *)self signalChange:4096];
  }
}

- (void)setPrimaryButtonType:(int64_t)type
{
  if ([(PHPickerConfiguration *)self->_phPickerConfiguration _primaryButtonType]!= type)
  {
    [(PHPickerConfiguration *)self->_phPickerConfiguration _setPrimaryButtonType:type];

    [(PUPickerConfiguration *)self signalChange:2048];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = [(PHPickerConfiguration *)self->_phPickerConfiguration title];
  if (title == titleCopy)
  {
  }

  else
  {
    v5 = [titleCopy isEqual:title];

    if ((v5 & 1) == 0)
    {
      [(PHPickerConfiguration *)self->_phPickerConfiguration setTitle:titleCopy];
      [(PUPickerConfiguration *)self signalChange:1024];
    }
  }
}

- (void)setPrompt:(id)prompt
{
  promptCopy = prompt;
  prompt = [(PHPickerConfiguration *)self->_phPickerConfiguration prompt];
  if (prompt == promptCopy)
  {
  }

  else
  {
    v5 = [promptCopy isEqual:prompt];

    if ((v5 & 1) == 0)
    {
      [(PHPickerConfiguration *)self->_phPickerConfiguration setPrompt:promptCopy];
      [(PUPickerConfiguration *)self signalChange:512];
    }
  }
}

- (void)setMinimumSelectionLimit:(int64_t)limit
{
  if ([(PHPickerConfiguration *)self->_phPickerConfiguration minimumSelectionLimit]!= limit)
  {
    [(PHPickerConfiguration *)self->_phPickerConfiguration setMinimumSelectionLimit:limit];

    [(PUPickerConfiguration *)self signalChange:256];
  }
}

- (void)setSelectionLimit:(int64_t)limit
{
  if ([(PHPickerConfiguration *)self->_phPickerConfiguration selectionLimit]!= limit)
  {
    [(PHPickerConfiguration *)self->_phPickerConfiguration setSelectionLimit:limit];

    [(PUPickerConfiguration *)self signalChange:2];
  }
}

- (void)setEdgesWithoutContentMargins:(unint64_t)margins
{
  if ([(PHPickerConfiguration *)self->_phPickerConfiguration edgesWithoutContentMargins]!= margins)
  {
    [(PHPickerConfiguration *)self->_phPickerConfiguration setEdgesWithoutContentMargins:margins];

    [(PUPickerConfiguration *)self signalChange:1];
  }
}

- (BOOL)isValidConfiguration
{
  preferredAssetRepresentationMode = [(PUPickerConfiguration *)self preferredAssetRepresentationMode];
  v4 = preferredAssetRepresentationMode >= *MEMORY[0x1E6979190];
  if (preferredAssetRepresentationMode < *MEMORY[0x1E6979190])
  {
    v5 = PLPickerGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v89 = 0;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_ERROR, "asset representation mode too small", v89, 2u);
    }
  }

  preferredAssetRepresentationMode2 = [(PUPickerConfiguration *)self preferredAssetRepresentationMode];
  if (preferredAssetRepresentationMode2 > *MEMORY[0x1E6979188])
  {
    v7 = PLPickerGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v89 = 0;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "asset representation mode too big", v89, 2u);
    }

    v4 = 0;
  }

  selection = [(PUPickerConfiguration *)self selection];
  if (selection < *MEMORY[0x1E69791A0])
  {
    v9 = PLPickerGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v89 = 0;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "selection too small", v89, 2u);
    }

    v4 = 0;
  }

  selection2 = [(PUPickerConfiguration *)self selection];
  if (selection2 > *MEMORY[0x1E6979198])
  {
    v11 = PLPickerGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v89 = 0;
      _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_ERROR, "selection too big", v89, 2u);
    }

    v4 = 0;
  }

  mode = [(PUPickerConfiguration *)self mode];
  if (mode < *MEMORY[0x1E69791B0])
  {
    v13 = PLPickerGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v89 = 0;
      _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_ERROR, "mode too small", v89, 2u);
    }

    v4 = 0;
  }

  mode2 = [(PUPickerConfiguration *)self mode];
  if (mode2 > *MEMORY[0x1E69791A8])
  {
    v15 = PLPickerGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v89 = 0;
      _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_ERROR, "mode too big", v89, 2u);
    }

    v4 = 0;
  }

  sourceType = [(PUPickerConfiguration *)self sourceType];
  if (sourceType < *MEMORY[0x1E6979250])
  {
    v17 = PLPickerGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v89 = 0;
      _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_ERROR, "source type too small", v89, 2u);
    }

    v4 = 0;
  }

  sourceType2 = [(PUPickerConfiguration *)self sourceType];
  if (sourceType2 > *MEMORY[0x1E6979248])
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

  phPickerConfiguration = [(PUPickerConfiguration *)self phPickerConfiguration];
  filter = [phPickerConfiguration filter];
  _puPickerFilter = [filter _puPickerFilter];
  if (_puPickerFilter)
  {
    v26 = _puPickerFilter;
    phPickerConfiguration2 = [(PUPickerConfiguration *)self phPickerConfiguration];
    filter2 = [phPickerConfiguration2 filter];
    _puPickerFilter2 = [filter2 _puPickerFilter];
    isValidFilter = [_puPickerFilter2 isValidFilter];

    if (isValidFilter)
    {
      goto LABEL_53;
    }

    phPickerConfiguration = PLPickerGetLog();
    if (os_log_type_enabled(phPickerConfiguration, OS_LOG_TYPE_ERROR))
    {
      *v89 = 0;
      _os_log_impl(&dword_1B36F3000, phPickerConfiguration, OS_LOG_TYPE_ERROR, "invalid filter", v89, 2u);
    }

    v4 = 0;
  }

  else
  {
  }

LABEL_53:
  phPickerConfiguration3 = [(PUPickerConfiguration *)self phPickerConfiguration];
  _aspectRatio = [phPickerConfiguration3 _aspectRatio];
  [_aspectRatio _aspectRatio];
  if (v33 > 0.0)
  {

LABEL_59:
    goto LABEL_60;
  }

  phPickerConfiguration4 = [(PUPickerConfiguration *)self phPickerConfiguration];
  _aspectRatio2 = [phPickerConfiguration4 _aspectRatio];
  [_aspectRatio2 _aspectRatio];
  v37 = v36;
  v38 = *MEMORY[0x1E6979180];

  if (v37 != v38)
  {
    phPickerConfiguration3 = PLPickerGetLog();
    if (os_log_type_enabled(phPickerConfiguration3, OS_LOG_TYPE_ERROR))
    {
      *v89 = 0;
      _os_log_impl(&dword_1B36F3000, phPickerConfiguration3, OS_LOG_TYPE_ERROR, "aspect ratio too small", v89, 2u);
    }

    v4 = 0;
    goto LABEL_59;
  }

LABEL_60:
  if (![(PUPickerConfiguration *)self receivedPhotoLibrary])
  {
    preselectedItemObjectIDs = [(PUPickerConfiguration *)self preselectedItemObjectIDs];
    v40 = [preselectedItemObjectIDs count];

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
    preselectedItemIdentifiers = [(PUPickerConfiguration *)self preselectedItemIdentifiers];
    v43 = [preselectedItemIdentifiers count];

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
    preselectedItemObjectIDs2 = [(PUPickerConfiguration *)self preselectedItemObjectIDs];
    v46 = [preselectedItemObjectIDs2 count];
    preselectedItemIdentifiers2 = [(PUPickerConfiguration *)self preselectedItemIdentifiers];
    v48 = [preselectedItemIdentifiers2 count];

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

  peopleConfiguration = [(PUPickerConfiguration *)self peopleConfiguration];

  if (peopleConfiguration)
  {
    if (![(PUPickerConfiguration *)self receivedPhotoLibrary])
    {
      peopleConfiguration2 = [(PUPickerConfiguration *)self peopleConfiguration];
      _identifiers = [peopleConfiguration2 _identifiers];
      v53 = [_identifiers count];

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
      peopleConfiguration3 = [(PUPickerConfiguration *)self peopleConfiguration];
      suggestedIdentifiers = [peopleConfiguration3 suggestedIdentifiers];
      v57 = [suggestedIdentifiers count];

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
      peopleConfiguration4 = [(PUPickerConfiguration *)self peopleConfiguration];
      disabledIdentifiers = [peopleConfiguration4 disabledIdentifiers];
      v61 = [disabledIdentifiers count];

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

    pickerClientIdentification = [(PUPickerConfiguration *)self pickerClientIdentification];
    trustedCallerBundleID = [pickerClientIdentification trustedCallerBundleID];

    if (([trustedCallerBundleID isEqualToString:@"com.apple.Preferences"] & 1) == 0 && (objc_msgSend(trustedCallerBundleID, "isEqualToString:", @"com.apple.Photos") & 1) == 0 && (objc_msgSend(trustedCallerBundleID, "isEqualToString:", *MEMORY[0x1E69C4140]) & 1) == 0 && (objc_msgSend(trustedCallerBundleID, "isEqualToString:", @"com.apple.mobileslideshow") & 1) == 0 && (objc_msgSend(trustedCallerBundleID, "isEqualToString:", @"com.apple.Bridge") & 1) == 0)
    {
      peopleConfiguration5 = [(PUPickerConfiguration *)self peopleConfiguration];
      suggestedIdentifiers2 = [peopleConfiguration5 suggestedIdentifiers];
      v67 = [suggestedIdentifiers2 count];

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

  albumsConfiguration = [(PUPickerConfiguration *)self albumsConfiguration];

  if (albumsConfiguration)
  {
    if (![(PUPickerConfiguration *)self receivedPhotoLibrary])
    {
      albumsConfiguration2 = [(PUPickerConfiguration *)self albumsConfiguration];
      _identifiers2 = [albumsConfiguration2 _identifiers];
      v72 = [_identifiers2 count];

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
      albumsConfiguration3 = [(PUPickerConfiguration *)self albumsConfiguration];
      suggestedIdentifiers3 = [albumsConfiguration3 suggestedIdentifiers];
      v76 = [suggestedIdentifiers3 count];

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
      albumsConfiguration4 = [(PUPickerConfiguration *)self albumsConfiguration];
      disabledIdentifiers2 = [albumsConfiguration4 disabledIdentifiers];
      v80 = [disabledIdentifiers2 count];

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

    limitedLibraryClientIdentifier = [(PUPickerConfiguration *)self limitedLibraryClientIdentifier];
    v84 = [limitedLibraryClientIdentifier length];

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

    limitedLibraryError = [(PUPickerConfiguration *)self LimitedLibraryError];

    if (limitedLibraryError)
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

- (PUPickerConfiguration)initWithPHPickerConfiguration:(id)configuration connection:(id)connection overriddenGeneratedFilter:(id)filter allowsDownload:(BOOL)download usesMemoriesLayout:(BOOL)layout
{
  v156 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  connectionCopy = connection;
  filterCopy = filter;
  if (!configurationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerConfiguration.m" lineNumber:253 description:{@"Invalid parameter not satisfying: %@", @"phPickerConfiguration != nil"}];
  }

  v147.receiver = self;
  v147.super_class = PUPickerConfiguration;
  v16 = [(PUPickerConfiguration *)&v147 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_phPickerConfiguration, configuration);
    preferredAssetRepresentationMode = [configurationCopy preferredAssetRepresentationMode];
    IsCompatibilityConversionDisabled = PXPreferencesIsCompatibilityConversionDisabled();
    if (preferredAssetRepresentationMode)
    {
      IsCompatibilityConversionDisabled = preferredAssetRepresentationMode;
    }

    v17->_preferredAssetRepresentationMode = IsCompatibilityConversionDisabled;
    v17->_selection = [configurationCopy selection];
    v17->_mode = [configurationCopy mode];
    if (filterCopy)
    {
      v20 = filterCopy;
    }

    else
    {
      v21 = [PUPickerGeneratedFilter alloc];
      filter = [configurationCopy filter];
      _puPickerFilter = [filter _puPickerFilter];
      v20 = [(PUPickerGeneratedFilter *)v21 initWithFilter:_puPickerFilter];
    }

    v141 = v20;
    objc_storeStrong(&v17->_generatedFilter, v20);
    photoLibrary = [configurationCopy photoLibrary];
    v25 = photoLibrary;
    if (photoLibrary)
    {
      imagePickerPhotoLibrary = photoLibrary;
    }

    else
    {
      imagePickerPhotoLibrary = [MEMORY[0x1E69789A8] imagePickerPhotoLibrary];
    }

    v27 = imagePickerPhotoLibrary;

    objc_storeStrong(&v17->_photoLibrary, v27);
    photoLibrary2 = [configurationCopy photoLibrary];
    v17->_receivedPhotoLibrary = photoLibrary2 != 0;

    v17->_onlyReturnsIdentifiers = [configurationCopy _onlyReturnsIdentifiers];
    v17->_allowsDownscaling = [configurationCopy _allowsDownscaling];
    v17->_allowsEncodingPolicyModification = [configurationCopy _allowsEncodingPolicyModification];
    _suggestionGroup = [configurationCopy _suggestionGroup];
    suggestionGroup = v17->_suggestionGroup;
    v17->_suggestionGroup = _suggestionGroup;

    _albumsConfiguration = [configurationCopy _albumsConfiguration];
    albumsConfiguration = v17->_albumsConfiguration;
    v17->_albumsConfiguration = _albumsConfiguration;

    _peopleConfiguration = [configurationCopy _peopleConfiguration];
    peopleConfiguration = v17->_peopleConfiguration;
    v17->_peopleConfiguration = _peopleConfiguration;

    v17->_usesMemoriesLayout = layout;
    _peopleConfiguration2 = [configurationCopy _peopleConfiguration];

    v142 = filterCopy;
    if (_peopleConfiguration2)
    {
      _peopleConfiguration3 = [configurationCopy _peopleConfiguration];
      suggestedIdentifiers = [_peopleConfiguration3 suggestedIdentifiers];

      v38 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithArray:suggestedIdentifiers];
      _peopleConfiguration4 = [configurationCopy _peopleConfiguration];
      _identifiers = [_peopleConfiguration4 _identifiers];

      if ([_identifiers count])
      {
        [v38 addObjectsFromArray:_identifiers];
      }

      if ([v38 count])
      {
        v41 = [v38 copy];
        allPersonIdentifiers = v17->_allPersonIdentifiers;
        v17->_allPersonIdentifiers = v41;
      }
    }

    v17->_allowsDownload = download;
    v143 = v27;
    if (connectionCopy)
    {
      v43 = [objc_alloc(MEMORY[0x1E69BF1E0]) initWithConnection:connectionCopy];
      trustedCallerBundleID = [v43 trustedCallerBundleID];
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
        localizedName = [v47 localizedName];
        pickerClientDisplayName = v17->_pickerClientDisplayName;
        v17->_pickerClientDisplayName = localizedName;

        sDKVersion = [v47 SDKVersion];
        v17->_pickerClientSDKVersion = [sDKVersion integerValue];

        if (!trustedCallerBundleID)
        {
          trustedCallerBundleID = [v47 bundleIdentifier];
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
      trustedCallerBundleID = 0;
      v46 = 0;
      v43 = 0;
      v45 = 1;
    }

    v140 = v43;
    objc_storeStrong(&v17->_pickerClientIdentification, v43);
    v17->_pickerClientAccessAllowedResult = v45;
    v17->_pickerClientIsEntitledForOrHasPrivateLibraryAccess = v46;
    v139 = trustedCallerBundleID;
    objc_storeStrong(&v17->_pickerClientBundleIdentifier, trustedCallerBundleID);
    _purposedLimitedLibraryApplicationIdentifier = [configurationCopy _purposedLimitedLibraryApplicationIdentifier];
    v54 = _purposedLimitedLibraryApplicationIdentifier != 0;

    if (_purposedLimitedLibraryApplicationIdentifier)
    {
      _purposedLimitedLibraryApplicationIdentifier2 = [configurationCopy _purposedLimitedLibraryApplicationIdentifier];
      v145 = 0;
      v56 = [PUPickerConfiguration limitedLibraryApplicationTrustedIdentifierWithConnection:connectionCopy purposedIdentifier:_purposedLimitedLibraryApplicationIdentifier2 error:&v145];
      _purposedLimitedLibraryApplicationIdentifier = v145;
    }

    else
    {
      v56 = 0;
    }

    v17->_isLimitedLibraryPicker = v54;
    objc_storeStrong(&v17->_limitedLibraryClientIdentifier, v56);
    v138 = _purposedLimitedLibraryApplicationIdentifier;
    objc_storeStrong(&v17->_LimitedLibraryError, _purposedLimitedLibraryApplicationIdentifier);
    v57 = MEMORY[0x1E695DFB8];
    preselectedItemIdentifiers = [configurationCopy preselectedItemIdentifiers];
    v59 = [v57 orderedSetWithArray:preselectedItemIdentifiers];
    preselectedItemIdentifiers = v17->_preselectedItemIdentifiers;
    v17->_preselectedItemIdentifiers = v59;

    if (v56)
    {
      if (connectionCopy)
      {
        [connectionCopy auditToken];
      }

      else
      {
        *v154 = 0u;
        v155 = 0u;
      }

      preselectedItemIdentifiers2 = [PUPickerConfiguration limitedLibraryApplicationPreselectedObjectIDsOrCreateEmptySelectionWithTrustedIdentifier:v56 auditToken:v154 photoLibrary:v27];
      v62 = [MEMORY[0x1E695DFB8] orderedSetWithArray:preselectedItemIdentifiers2];
    }

    else
    {
      preselectedItemIdentifiers2 = [configurationCopy preselectedItemIdentifiers];
      v62 = +[PUPickerConfiguration _fetchOrderedItemObjectIDsWithPhotoLibrary:itemIdentifiers:sourceType:](PUPickerConfiguration, "_fetchOrderedItemObjectIDsWithPhotoLibrary:itemIdentifiers:sourceType:", v27, preselectedItemIdentifiers2, [configurationCopy _sourceType]);
    }

    preselectedItemObjectIDs = v17->_preselectedItemObjectIDs;
    v17->_preselectedItemObjectIDs = v62;

    if ([configurationCopy _sourceType] == 1 || objc_msgSend(configurationCopy, "_sourceType") == 3 || objc_msgSend(configurationCopy, "_sourceType") == 4)
    {
      v64 = 0;
    }

    else
    {
      librarySpecificFetchOptions = [v27 librarySpecificFetchOptions];
      [librarySpecificFetchOptions setIncludeAllPhotosSmartAlbum:1];
      _containerIdentifier = [configurationCopy _containerIdentifier];
      if (_containerIdentifier)
      {
        v84 = PUPickerConfigurationGetFetchType(configurationCopy);
        v85 = *MEMORY[0x1E6978DC0];
        if ([v84 isEqualToString:*MEMORY[0x1E6978DC0]])
        {
          v86 = configurationCopy;
          v87 = PUPickerConfigurationGetFetchType(v86);
          _containerIdentifier2 = [v86 _containerIdentifier];
          v131 = v84;
          v133 = librarySpecificFetchOptions;
          v135 = v87;
          if (_containerIdentifier2)
          {
            v128 = _containerIdentifier2;
            if ([v87 isEqualToString:v85])
            {
              v89 = PLPickerGetLog();
              if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
              {
                *v154 = 138412290;
                *&v154[4] = v128;
                _os_log_impl(&dword_1B36F3000, v89, OS_LOG_TYPE_DEFAULT, "Looking for person with identifier: %@", v154, 0xCu);
              }

              photoLibrary3 = [v86 photoLibrary];
              librarySpecificFetchOptions2 = [photoLibrary3 librarySpecificFetchOptions];

              [librarySpecificFetchOptions2 setFetchLimit:1];
              [librarySpecificFetchOptions2 setPersonContext:5];
              px_defaultDetectionTypes = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
              v125 = librarySpecificFetchOptions2;
              [librarySpecificFetchOptions2 setIncludedDetectionTypes:px_defaultDetectionTypes];

              v93 = MEMORY[0x1E6978980];
              *v154 = v128;
              v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:1];
              v95 = [v93 fetchPersonsWithLocalIdentifiers:v94 options:librarySpecificFetchOptions2];
              firstObject = [v95 firstObject];

              _containerIdentifier2 = v128;
            }

            else
            {
              firstObject = 0;
              _containerIdentifier2 = v128;
            }
          }

          else
          {
            firstObject = 0;
          }

          librarySpecificFetchOptions3 = [v27 librarySpecificFetchOptions];
          [librarySpecificFetchOptions3 setIncludeTorsoAndFaceDetectionData:1];
          v130 = librarySpecificFetchOptions3;
          v127 = [MEMORY[0x1E6978630] fetchAssetsForPerson:firstObject options:librarySpecificFetchOptions3];
          v110 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:? title:? identifier:?];
          v111 = MEMORY[0x1E6978760];
          v124 = v110;
          v151 = v110;
          v112 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v151 count:1];
          v113 = [v111 transientCollectionListWithCollections:v112 title:&stru_1F2AC6818];

          v114 = [MEMORY[0x1E6978830] fetchOptionsWithPhotoLibrary:v27 orObject:0];
          v136 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v113 options:v114];
          px_localizedName = [firstObject px_localizedName];
          if ([px_localizedName length])
          {
            px_localizedName2 = [firstObject px_localizedName];
          }

          else
          {
            v150 = firstObject;
            v116 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v150 count:1];
            px_localizedName2 = PXLocalizedStringForPeople();
          }

          v104 = v131;

          librarySpecificFetchOptions = v133;
        }

        else if ([v84 isEqualToString:*MEMORY[0x1E6978DD8]])
        {
          firstObject = PUPickerConfigurationGetSocialGroup(configurationCopy);
          librarySpecificFetchOptions4 = [v27 librarySpecificFetchOptions];
          v126 = [MEMORY[0x1E6978630] fetchExclusiveAssetsForSocialGroup:firstObject options:librarySpecificFetchOptions4];
          v123 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v126 title:&stru_1F2AC6818 identifier:_containerIdentifier];
          v99 = MEMORY[0x1E6978760];
          v149 = v123;
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v149 count:1];
          v132 = v84;
          v100 = v134 = librarySpecificFetchOptions;
          v101 = [v99 transientCollectionListWithCollections:v100 title:&stru_1F2AC6818];

          v102 = [MEMORY[0x1E6978830] fetchOptionsWithPhotoLibrary:v27 orObject:0];
          v136 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v101 options:v102];
          px_localizedName2 = [firstObject localizedTitle];

          v104 = v132;
          librarySpecificFetchOptions = v134;
        }

        else
        {
          v104 = v84;
          v105 = PLPickerGetLog();
          if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
          {
            *v154 = 138412290;
            *&v154[4] = _containerIdentifier;
            _os_log_impl(&dword_1B36F3000, v105, OS_LOG_TYPE_DEFAULT, "Looking for custom asset collection with identifier: %@", v154, 0xCu);
          }

          v106 = MEMORY[0x1E6978650];
          v148 = _containerIdentifier;
          v107 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v148 count:1];
          v108 = [v106 fetchAssetCollectionsWithLocalIdentifiers:v107 options:librarySpecificFetchOptions];

          v136 = v108;
          firstObject = [v108 firstObject];
          px_localizedName2 = [firstObject localizedTitle];
        }

        v98 = px_localizedName2;
        v97 = v136;
      }

      else
      {
        v97 = 0;
        v98 = 0;
      }

      firstObject2 = [(PHFetchResult *)v97 firstObject];

      if (!firstObject2)
      {
        v118 = PLPickerGetLog();
        if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
        {
          *v154 = 0;
          _os_log_impl(&dword_1B36F3000, v118, OS_LOG_TYPE_DEFAULT, "No custom collection specified/found. Using all photos asset collection.", v154, 2u);
        }

        v119 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:2 subtype:1000000205 options:librarySpecificFetchOptions];

        v98 = 0;
        v97 = v119;
      }

      containerCollectionFetchResult = v17->_containerCollectionFetchResult;
      v17->_containerCollectionFetchResult = v97;
      v121 = v97;

      v64 = v98;
      objc_storeStrong(&v17->_containerCollectionTitle, v98);
    }

    _peopleConfiguration5 = [configurationCopy _peopleConfiguration];
    suggestedIdentifiers2 = [_peopleConfiguration5 suggestedIdentifiers];
    v67 = suggestedIdentifiers2;
    v68 = MEMORY[0x1E695E0F0];
    if (suggestedIdentifiers2)
    {
      v69 = suggestedIdentifiers2;
    }

    else
    {
      v69 = MEMORY[0x1E695E0F0];
    }

    v70 = v69;

    if ([v70 count])
    {
      photoLibrary4 = [(PUPickerConfiguration *)v17 photoLibrary];
      librarySpecificFetchOptions5 = [photoLibrary4 librarySpecificFetchOptions];

      v73 = [MEMORY[0x1E6978980] fetchPersonsWithLocalIdentifiers:v70 options:librarySpecificFetchOptions5];
      v74 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v70];
      v68 = [v73 px_fetchedObjectIDsSortedByLocalIdentifiers:v74];
    }

    v75 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v68];
    suggestedItemObjectIDs = v17->_suggestedItemObjectIDs;
    v17->_suggestedItemObjectIDs = v75;

    v77 = PUPickerConfigurationGetTitle(configurationCopy, v141, v64);
    v78 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssets:MEMORY[0x1E695E0F0] title:v77 identifier:*MEMORY[0x1E69C41A8] photoLibrary:v143];
    allPhotosVirtualCollection = v17->_allPhotosVirtualCollection;
    v17->_allPhotosVirtualCollection = v78;

    v17->_supportsInteractiveBarTransition = 0;
    v17->_interactiveBarTransitionFractionExpanded = 1.0;
    v17->_interactiveBarTransitionWindowHeight = 0.0;

    filterCopy = v142;
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

- (id)initForUIImagePickerControllerWithPHPickerConfiguration:(id)configuration connection:(id)connection overriddenGeneratedFilter:(id)filter
{
  configurationCopy = configuration;
  connectionCopy = connection;
  filterCopy = filter;
  if (!configurationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerConfiguration.m" lineNumber:238 description:{@"Invalid parameter not satisfying: %@", @"phPickerConfiguration != nil"}];
  }

  v12 = -[PUPickerConfiguration initWithPHPickerConfiguration:connection:overriddenGeneratedFilter:allowsDownload:usesMemoriesLayout:](self, "initWithPHPickerConfiguration:connection:overriddenGeneratedFilter:allowsDownload:usesMemoriesLayout:", configurationCopy, connectionCopy, filterCopy, [configurationCopy _onlyReturnsIdentifiers] ^ 1, objc_msgSend(configurationCopy, "_usesMemoriesLayout"));

  return v12;
}

- (PUPickerConfiguration)initWithPHPickerConfiguration:(id)configuration connection:(id)connection
{
  configurationCopy = configuration;
  connectionCopy = connection;
  if (!configurationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerConfiguration.m" lineNumber:225 description:{@"Invalid parameter not satisfying: %@", @"phPickerConfiguration != nil"}];
  }

  v9 = -[PUPickerConfiguration initWithPHPickerConfiguration:connection:overriddenGeneratedFilter:allowsDownload:usesMemoriesLayout:](self, "initWithPHPickerConfiguration:connection:overriddenGeneratedFilter:allowsDownload:usesMemoriesLayout:", configurationCopy, connectionCopy, 0, 0, [configurationCopy _usesMemoriesLayout]);

  return v9;
}

- (PUPickerConfiguration)init
{
  v4 = objc_alloc_init(MEMORY[0x1E69790E0]);
  v5 = [(PUPickerConfiguration *)self initWithPHPickerConfiguration:v4 connection:0];

  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:0 file:@"PUPickerConfiguration.m" lineNumber:218 description:@"Self must not be nil."];
  }

  return v5;
}

+ (id)limitedLibraryApplicationPreselectedObjectIDsOrCreateEmptySelectionWithTrustedIdentifier:(id)identifier auditToken:(id *)token photoLibrary:(id)library
{
  v31 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  libraryCopy = library;
  v9 = MEMORY[0x1E69BE510];
  managedObjectContextForCurrentQueueQoS = [libraryCopy managedObjectContextForCurrentQueueQoS];
  v11 = [v9 fetchLimitedLibraryFetchFilterWithApplicationIdentifier:identifierCopy inManagedObjectContext:managedObjectContextForCurrentQueueQoS];

  v12 = PLPickerGetLog();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      *buf = 138412290;
      *&buf[4] = identifierCopy;
      _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_DEFAULT, "Fetching existing selection for client: %@", buf, 0xCu);
    }

    entityName = [MEMORY[0x1E69BE540] entityName];
    libraryInternalClient = [v11 predicateForEntityName:entityName];

    if (!libraryInternalClient)
    {
      fetchedObjectIDs2 = MEMORY[0x1E695E0F0];
      goto LABEL_14;
    }

    librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
    v17 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
    v28 = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    [librarySpecificFetchOptions setSortDescriptors:v18];

    [librarySpecificFetchOptions setInternalPredicate:libraryInternalClient];
    [librarySpecificFetchOptions setIncludeAssetSourceTypes:5];
    v19 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:librarySpecificFetchOptions];
    fetchedObjectIDs = [v19 fetchedObjectIDs];
    v21 = [fetchedObjectIDs count];

    if (v21)
    {
      fetchedObjectIDs2 = [v19 fetchedObjectIDs];
    }

    else
    {
      fetchedObjectIDs2 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    if (v13)
    {
      *buf = 138412290;
      *&buf[4] = identifierCopy;
      _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_DEFAULT, "Creating initial empty fetch filter for client: %@", buf, 0xCu);
    }

    assetsdClient = [libraryCopy assetsdClient];
    libraryInternalClient = [assetsdClient libraryInternalClient];

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __138__PUPickerConfiguration_limitedLibraryApplicationPreselectedObjectIDsOrCreateEmptySelectionWithTrustedIdentifier_auditToken_photoLibrary___block_invoke;
    v26[3] = &unk_1E7B80280;
    v27 = identifierCopy;
    v24 = *&token->var0[4];
    *buf = *token->var0;
    v30 = v24;
    fetchedObjectIDs2 = MEMORY[0x1E695E0F0];
    [libraryInternalClient setFetchFilterWithAssets:MEMORY[0x1E695E0F0] forApplication:v27 withAuditToken:buf completionHandler:v26];
    librarySpecificFetchOptions = v27;
  }

LABEL_14:

  return fetchedObjectIDs2;
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

+ (id)limitedLibraryApplicationTrustedIdentifierWithConnection:(id)connection purposedIdentifier:(id)identifier error:(id *)error
{
  connectionCopy = connection;
  identifierCopy = identifier;
  if (!error)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerConfiguration.m" lineNumber:490 description:{@"Invalid parameter not satisfying: %@", @"outError != nil"}];

    if (connectionCopy)
    {
      goto LABEL_3;
    }

LABEL_12:
    v17 = MEMORY[0x1E696ABC0];
    v18 = @"Missing XPC connection.";
    goto LABEL_13;
  }

  if (!connectionCopy)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (![identifierCopy length])
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

  v11 = [connectionCopy valueForEntitlement:*MEMORY[0x1E69BF3D0]];
  bOOLValue = [v11 BOOLValue];

  if (bOOLValue)
  {
    v13 = identifierCopy;
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
  *error = v14;

  return v13;
}

@end