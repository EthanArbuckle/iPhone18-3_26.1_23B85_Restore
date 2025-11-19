@interface PXLemonadeSettings
+ (PXLemonadeSettings)sharedInstance;
- (BOOL)enableTabs;
- (void)createChildren;
- (void)setDefaultValues;
- (void)setEnableTabs:(BOOL)a3;
@end

@implementation PXLemonadeSettings

+ (PXLemonadeSettings)sharedInstance
{
  if (sharedInstance_onceToken_115412 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_115412, &__block_literal_global_115413);
  }

  v3 = sharedInstance_sharedInstance_115414;

  return v3;
}

void __36__PXLemonadeSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 lemonadeSettings];
  v1 = sharedInstance_sharedInstance_115414;
  sharedInstance_sharedInstance_115414 = v0;
}

- (void)createChildren
{
  v3 = [(PTSettings *)[PXLemonadeOneUpSettings alloc] initWithDefaultValues];
  [(PXLemonadeSettings *)self setOneUpSettings:v3];
}

- (void)setDefaultValues
{
  v7.receiver = self;
  v7.super_class = PXLemonadeSettings;
  [(PTSettings *)&v7 setDefaultValues];
  [(PXLemonadeSettings *)self setProfileButtonShapeOutset:4.0];
  [(PXLemonadeSettings *)self setSearchButtonShapeOutset:4.0];
  [(PXLemonadeSettings *)self setSelectButtonShapeOutset:4.0];
  [(PXLemonadeSettings *)self setNavigationBarLegibilityEDRBoost:0.125];
  [(PXLemonadeSettings *)self setEnableNavigationBarBlur:1];
  [(PXLemonadeSettings *)self setEnableNavigationBarBlurInCollections:1];
  [(PXLemonadeSettings *)self setNavigationBarBlurLegibilityEDRBoost:0.25];
  [(PXLemonadeSettings *)self setNavigationBarBlurRadius:1.5];
  [(PXLemonadeSettings *)self setNavigationBarBlurDistanceToBaseline:90.0];
  [(PXLemonadeSettings *)self setNavigationBarTintCurve:4];
  [(PXLemonadeSettings *)self setNavigationBarTintOpacity:0.6];
  [(PXLemonadeSettings *)self setAllowProfileIcon:1];
  [(PXLemonadeSettings *)self setNavigationBarAnimationDuration:0.3];
  [(PXLemonadeSettings *)self setNavigationBarTitleAppearDuration:0.45];
  [(PXLemonadeSettings *)self setNavigationBarTitleAppearDelay:0.05];
  [(PXLemonadeSettings *)self setNavigationBarTitleDisappearDuration:0.2];
  [(PXLemonadeSettings *)self setDefaultPhoneFeedNavigationType:1];
  [(PXLemonadeSettings *)self setEnableInlinePlaybackMemories:1];
  [(PXLemonadeSettings *)self setEnableInlinePlaybackTrips:1];
  [(PXLemonadeSettings *)self setEnableInlinePlaybackTripsShelf:1];
  [(PXLemonadeSettings *)self setEnableInlinePlaybackEvents:0];
  [(PXLemonadeSettings *)self setEnableInlinePlaybackSocialGroupShelf:1];
  [(PXLemonadeSettings *)self setEnableInlinePlaybackSocialGroupFeed:1];
  [(PXLemonadeSettings *)self setHideInlinePlayerOnFirstSegment:1];
  [(PXLemonadeSettings *)self setOpacityOfPlayerOnFirstSegment:0.0];
  [(PXLemonadeSettings *)self setInlinePlayerFirstSegmentPlaceholderDuration:2.0];
  [(PXLemonadeSettings *)self setInlinePlayerFrameLatencyApproximation:0.2];
  [(PXLemonadeSettings *)self setInlinePlayerPlaceholderKenBurnsScale:1.08];
  [(PXLemonadeSettings *)self setInlinePlayerPlaceholderKenBurnsExtraDuration:1.0];
  [(PXLemonadeSettings *)self setEnableInlinePlaybackOnHover:1];
  [(PXLemonadeSettings *)self setInlinePlaybackOnHoverPlaybackDelay:0.75];
  [(PXLemonadeSettings *)self setAlwaysFilterPlaceholder:0];
  [(PXLemonadeSettings *)self setIOSPlaceholderActionForMacOS:0];
  [(PXLemonadeSettings *)self setInlinePlaybackMaxConcurrentPlayers:1];
  [(PXLemonadeSettings *)self setInlinePlaybackMaxPreloadPlayers:1];
  [(PXLemonadeSettings *)self setInlinePlaybackMaxSupportedVisiblePlayers:30];
  [(PXLemonadeSettings *)self setEnableInlinePlaybackDebugHUD:0];
  [(PXLemonadeSettings *)self setInlinePlaybackSimulateMainPresenterDisappearanceOnDismissal:0];
  [(PXLemonadeSettings *)self setInlinePlaybackVisibilityThreshold:0.75];
  [(PXLemonadeSettings *)self setInlinePlayerCoveredDurationForPause:1.0];
  [(PXLemonadeSettings *)self setPreferNewPlayerForFeeds:0];
  [(PXLemonadeSettings *)self setMaxNumberOfSharedAlbumActivityItemsToShow:8];
  [(PXLemonadeSettings *)self setEnableCollectionsSortButton:1];
  [(PXLemonadeSettings *)self setEnableUserSmartAlbums:0];
  [(PXLemonadeSettings *)self setEventsAlgorithm:10];
  [(PXLemonadeSettings *)self setEnableEventsCellCollageStyle:0];
  [(PXLemonadeSettings *)self setEventsCellItemAspectRatio:1.17];
  [(PXLemonadeSettings *)self setShouldRemoveFilteredEventsFromUI:1];
  [(PXLemonadeSettings *)self setEventFilterType:1];
  [(PXLemonadeSettings *)self setEventsPromotionScoreThreshold:0.45];
  [(PXLemonadeSettings *)self setEventsExtendedCountThreshold:4];
  [(PXLemonadeSettings *)self setEventsSummaryCountThreshold:3];
  [(PXLemonadeSettings *)self setEnableEventsDebugOverlay:0];
  [(PXLemonadeSettings *)self setEnableSavedToday:1];
  [(PXLemonadeSettings *)self setSavedTodayToleranceInHours:2.0];
  [(PXLemonadeSettings *)self setTripsSource:1];
  [(PXLemonadeSettings *)self setIgnoreSharedLibraryFilterForFeaturedPhotos:1];
  [(PXLemonadeSettings *)self setEnableSolariumDetailsView:MEMORY[0x1A590D320]([(PXLemonadeSettings *)self setEnableNewDetailsView:1])];
  [(PXLemonadeSettings *)self setDetailsViewHeaderImplementation:1];
  [(PXLemonadeSettings *)self setSolariumDetailsViewPreviewHeaderKind:1];
  [(PXLemonadeSettings *)self setSolariumDetailsViewPreviewHeaderAssetDisplayDuration:3.0];
  [(PXLemonadeSettings *)self setSolariumDetailsViewPreviewHeaderCrossFadeDuration:0.2];
  [(PXLemonadeSettings *)self setEnablePreviewSharing:1];
  [(PXLemonadeSettings *)self setEnablePreviewCaching:0];
  [(PXLemonadeSettings *)self setEnablePreviewKeyAsset:1];
  [(PXLemonadeSettings *)self setSimulateDetailsViewLeaking:0];
  [(PXLemonadeSettings *)self setSimulatedDetailsViewLoadingDelay:0.0];
  [(PXLemonadeSettings *)self setSimulatedPreviewPlayerDelay:0.0];
  [(PXLemonadeSettings *)self setScrubberKind:0];
  [(PXLemonadeSettings *)self setEnableDetailsViewHorizontalKeyboardScrolling:0];
  [(PXLemonadeSettings *)self setEnableDetailsViewHorizontalPaging:1];
  [(PXLemonadeSettings *)self setHorizontalPagingTechnique:0];
  [(PXLemonadeSettings *)self setEnableHorizontalPagingHint:1];
  [(PXLemonadeSettings *)self setHorizontalPagingHintMaximumScale:0.22];
  [(PXLemonadeSettings *)self setEnableAggregatedHighlightGridInEditorial:0];
  [(PXLemonadeSettings *)self setAggregatedHighlightColumns:3];
  [(PXLemonadeSettings *)self setLowQualityAggregationPromotionScoreThreshold:0.35];
  [(PXLemonadeSettings *)self setDetailsViewHeaderAspectRatio:0.84];
  [(PXLemonadeSettings *)self setEnableFocusMapLensOnAnchors:1];
  [(PXLemonadeSettings *)self setMapLensAnchorFocusKilometerRadius:0.5];
  [(PXLemonadeSettings *)self setEnableDetailsViewPrototype:0];
  [(PXLemonadeSettings *)self setDynamicHeaderChromeHidingDelay:2.0];
  [(PXLemonadeSettings *)self setDynamicHeaderDebugOverlay:0];
  [(PXLemonadeSettings *)self setDynamicHeaderDebugBehavior:0];
  [(PXLemonadeSettings *)self setDynamicHeaderMaximumDelayFromPreview:2.0];
  [(PXLemonadeSettings *)self setDynamicHeaderMaximumDelayFromMovie:0.3];
  [(PXLemonadeSettings *)self setDynamicHeaderDismissAreaBottomInset:0.0];
  [(PXLemonadeSettings *)self setDetailsDismissArea:1];
  [(PXLemonadeSettings *)self setEnableProtoBanner:0];
  [(PXLemonadeSettings *)self setTopTitleVerticalSpace:123.0];
  [(PXLemonadeSettings *)self setTitleOverlayScaleAtTop:0.75];
  [(PXLemonadeSettings *)self setBannerTopMargin:10.0];
  [(PXLemonadeSettings *)self setTitleOverlayScaleDistance:150.0];
  [(PXLemonadeSettings *)self setTitleOverlayTopDetentTolerance:3.0];
  [(PXLemonadeSettings *)self setTitleOverlaySingleLineTopDetentTolerance:34.0];
  [(PXLemonadeSettings *)self setMovieCurationAffordance:1];
  [(PXLemonadeSettings *)self setAlwaysShowCurationToggleButton:0];
  [(PXLemonadeSettings *)self setScrollThresholdForTopCenteredTitle:20.0];
  [(PXLemonadeSettings *)self setMaximumBlurRadius:7.0];
  [(PXLemonadeSettings *)self setMapTabInitialKilometerRadius:100.0];
  [(PXLemonadeSettings *)self setMapTileInitialKilometerDiameter:self->_mapTabInitialKilometerRadius * 1000.0];
  [(PXLemonadeSettings *)self setEnableUtilityPrototypeCollections:0];
  [(PXLemonadeSettings *)self setEnableRecentlySharedCollection:1];
  [(PXLemonadeSettings *)self setEnableRecentlyViewedCollection:1];
  [(PXLemonadeSettings *)self setEnableRecentlyEditedCollection:1];
  [(PXLemonadeSettings *)self setEnableDocumentsSection:1];
  [(PXLemonadeSettings *)self setMaximumNumberOfAssetsForPlaybackAsMemory:500];
  [(PXLemonadeSettings *)self setMinimumNumberOfAssetsForPlaybackAsMemory:4];
  [(PXLemonadeSettings *)self setEnableCuratedLibrary:1];
  [(PXLemonadeSettings *)self setEnableCubeMode:0];
  [(PXLemonadeSettings *)self setEnableRadarButton:1];
  [(PXLemonadeSettings *)self setEnableMonthLocationTitles:0];
  [(PXLemonadeSettings *)self setEnableMonthHeroPromotion:0];
  [(PXLemonadeSettings *)self setShowSharedLibraryPill:0];
  [(PXLemonadeSettings *)self setSharedWithYouOnlyFilterIncludesUnsaved:0];
  [(PXLemonadeSettings *)self setResetAllPhotosOnDismiss:1];
  [(PXLemonadeSettings *)self setMinimumCuratedLibraryVisibleFractionForExpansion:0.25];
  [(PXLemonadeSettings *)self setYearsAndMonthsMode:2];
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4)
  {
    v5 = 13;
  }

  else
  {
    v5 = 10;
  }

  [(PXLemonadeSettings *)self setCollectionPreviewTransition:v4 != 0];
  [(PXLemonadeSettings *)self setEnableKenBurnsInCollectionPreview:1];
  [(PXLemonadeSettings *)self setCollectionPreviewKenBurnsScaleDirection:2];
  [(PXLemonadeSettings *)self setCuratedLibraryExpansionGestureSpringStiffness:150.0];
  [(PXLemonadeSettings *)self setCuratedLibraryExpansionToggleSpringStiffness:110.0];
  [(PXLemonadeSettings *)self setCuratedLibraryExpansionFastToggleSpringStiffness:250.0];
  [(PXLemonadeSettings *)self setCuratedLibraryChromeAutoAnimateSpringStiffness:50.0];
  [(PXLemonadeSettings *)self setCuratedLibraryExpansionMinScrollDistance:100.0];
  [(PXLemonadeSettings *)self setCuratedLibraryCollapseMinScrollDistance:100.0];
  [(PXLemonadeSettings *)self setCuratedLibraryBottomPadding:22.0];
  [(PXLemonadeSettings *)self setCuratedLibraryTransitionToolbarBlurRadius:20.0];
  [(PXLemonadeSettings *)self setCuratedLibraryTransitionShelfHeaderBlurRadius:5.0];
  [(PXLemonadeSettings *)self setCuratedLibraryTransitionChromeExpandPercentage:0.85];
  [(PXLemonadeSettings *)self setCuratedLibraryTransitionChromeCollapsePercentage:1.0];
  [(PXLemonadeSettings *)self setEnableSearchResultDiffAnimation:0];
  [(PXLemonadeSettings *)self setEnableMetadataSearch:1];
  [(PXLemonadeSettings *)self setEnableEmbeddingSearch:1];
  [(PXLemonadeSettings *)self setMaxRankedAssetSearchResults:v5];
  [(PXLemonadeSettings *)self setMaxRankedCollectionSearchResults:6];
  [(PXLemonadeSettings *)self setMaxSearchSuggestions:4];
  [(PXLemonadeSettings *)self setMaxCuratedCollectionsPerType:2];
  [(PXLemonadeSettings *)self setEnableZKWForPad:1];
  [(PXLemonadeSettings *)self setOverrideSuggestionPills:0];
  [(PXLemonadeSettings *)self setShowSearchDebugBadges:0];
  [(PXLemonadeSettings *)self setImplicitSearchScopeForPickerSuggestionScopeSearch:1];
  [(PXLemonadeSettings *)self setEnableExactMatchResults:0];
  [(PXLemonadeSettings *)self setEnableHybridMatchResults:1];
  [(PXLemonadeSettings *)self setMinNumberOfResultsForNextTokenGeneration:*MEMORY[0x1E6978FA0]];
  [(PXLemonadeSettings *)self setSearchQueryTimeout:*MEMORY[0x1E6978FA8]];
  [(PXLemonadeSettings *)self setEnableEmbeddingOnlyResultsInExactMatches:1];
  [(PXLemonadeSettings *)self setEnableFullPageScreenshots:0];
  [(PXLemonadeSettings *)self setEnableFullPageScreenshotDebuggingOverlays:0];
  [(PXLemonadeSettings *)self setLimitFullPageScreenshotScale:0];
  [(PXLemonadeSettings *)self setLimitFullPageScreenshotSize:1];
  [(PXLemonadeSettings *)self setMaximumFullPageScreenshotDimension:10000.0];
  [(PXLemonadeSettings *)self setEnableStackCounting:0];
  [(PXLemonadeSettings *)self setEnablePhotosChallenge:1];
  [(PXLemonadeSettings *)self setEnableShelfIPadLayout:1];
  [(PXLemonadeSettings *)self setEnableShelfDrawBorders:0];
  [(PXLemonadeSettings *)self setEnableHeaderTitleChevron:1];
  [(PXLemonadeSettings *)self setEnableSidebarHeaderSelection:MEMORY[0x1A590D320]([(PXLemonadeSettings *)self setShelfSpacing:36.0]) ^ 1];
  [(PXLemonadeSettings *)self setEnableDismissPersistence:0];
  [(PXLemonadeSettings *)self setOnlyDismissedInProfile:1];
  [(PXLemonadeSettings *)self setIncludeSharedAlbumsActivityInProfileNotifications:1];
  [(PXLemonadeSettings *)self setHideNotifications:0];
  [(PXLemonadeSettings *)self setMaxNumberOfMainViewUnreadSharedAlbumsActivityNotifications:1];
  [(PXLemonadeSettings *)self setMaxNumberOfAccountViewUnreadSharedAlbumsActivityNotifications:5];
  [(PXLemonadeSettings *)self setWallpaperLoadingTimeout:5.0];
  [(PXLemonadeSettings *)self setWallpaperLoadingArtificialDelay:0.0];
  [(PXLemonadeSettings *)self setForceShowProcessingUI:0];
  [(PXLemonadeSettings *)self setForceHideProcessingUI:0];
  [(PXLemonadeSettings *)self setForceRenderingStatus:0];
  [(PXLemonadeSettings *)self setUseFeatureAvailabilityReporter:0];
  [(PXLemonadeSettings *)self setSectionedFeedTabBarItemSpacing:8.0];
  [(PXLemonadeSettings *)self setDefaultFloatingToolbarBottomInset:20.0];
  [(PXLemonadeSettings *)self setEnableLiveBlurForAllAssets:0];
  [(PXLemonadeSettings *)self setEnableShelves:1];
  [(PXLemonadeSettings *)self setEnableShelvesLoader:1];
  [(PXLemonadeSettings *)self setEnableShelvesLoaderGradualDelivery:1];
  v6 = [MEMORY[0x1E69DC938] currentDevice];
  -[PXLemonadeSettings setEnabledShelvesLazyVStack:](self, "setEnabledShelvesLazyVStack:", [v6 userInterfaceIdiom] == 0);

  [(PXLemonadeSettings *)self setEnableResponsiveScrolling:0];
  [(PXLemonadeSettings *)self setEnableLoadingStatusHUD:0];
  [(PXLemonadeSettings *)self setSimulateEmptyShelves:0];
  [(PXLemonadeSettings *)self setSimulateFromMyMacAlbums:0];
  [(PXLemonadeSettings *)self setEnablePhototypes:0];
  self->_enableTabs = MEMORY[0x1A590D320]([(PXLemonadeSettings *)self setSamplePhototypeVisibility:0]);
}

- (BOOL)enableTabs
{
  if (self->_enableTabs)
  {
    JUMPOUT(0x1A590D320);
  }

  return 0;
}

- (void)setEnableTabs:(BOOL)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1A590D320](self, a2);
  }

  else
  {
    v4 = 0;
  }

  self->_enableTabs = v4;
}

@end