@interface SBHIconManager
+ (id)undoActionNameForDraggedIcons:(id)a3;
- (APSubjectMonitorSubscription)appPrototectionSubjectMonitorSubscription;
- (BOOL)_alwaysPresentStackConfigurationSheet;
- (BOOL)_determineIfAvocadoHostViewControllerIsVisible:(id)a3;
- (BOOL)_determineIfAvocadoHostViewControllerIsVisible:(id)a3 withinStackViewController:(id)a4;
- (BOOL)_isShowingLeadingCustomViewSearch;
- (BOOL)_isShowingLeadingCustomViewSearchOrTransitioning;
- (BOOL)_isShowingOrTransitioningToSearchableLeadingCustomView;
- (BOOL)_isShowingPullDownSearchOrTransitioning;
- (BOOL)_isShowingSearchableLeadingCustomView;
- (BOOL)_shouldLibraryOverlayAllowSwipeToDismissGesture:(id)a3;
- (BOOL)_shouldParallaxInIconLocation:(id)a3;
- (BOOL)_shouldRespondToIconCloseBoxes;
- (BOOL)_shouldUseHomeScreenLargeIconSize;
- (BOOL)addDefaultFirstPageWidgetsToHomeScreen:(BOOL)a3;
- (BOOL)addDefaultSecondPageWidgetsToHomeScreen:(BOOL)a3;
- (BOOL)addDefaultWidgetsToHomeScreen;
- (BOOL)allowsBadgingForIcon:(id)a3;
- (BOOL)allowsBadgingForIconLocation:(id)a3;
- (BOOL)allowsFocus;
- (BOOL)allowsNestedFolders;
- (BOOL)applyOriginaliconStateForWidgetDiscoverability;
- (BOOL)areAnyIconShareSheetsShowing;
- (BOOL)canAddIconToIgnoredList:(id)a3;
- (BOOL)canCloseFolders;
- (BOOL)canOpenFolderForIcon:(id)a3;
- (BOOL)canSaveIconState:(id)a3;
- (BOOL)canSwapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)a3 withApplicationIconsWithWithBundleIdentifier:(id)a4;
- (BOOL)canSwapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)a3 withApplicationIconsWithWithBundleIdentifier:(id)a4 focusModeIdentifier:(id)a5;
- (BOOL)clearTodayLayout;
- (BOOL)contextMenuManager:(id)a3 shouldBeginContextMenuPresentationForIconView:(id)a4;
- (BOOL)contextMenuManager:(id)a3 shouldPreviewOverlapMenuForIconView:(id)a4;
- (BOOL)currentHomeScreenWallpaperDimState;
- (BOOL)dismissSpotlightAnimated:(BOOL)a3 completionHandler:(id)a4;
- (BOOL)dismissSpotlightOrTodayViewAnimated:(BOOL)a3;
- (BOOL)folderController:(id)a3 canChangeCurrentPageIndexToIndex:(int64_t)a4;
- (BOOL)folderControllerShouldClose:(id)a3 withPinchGesture:(id)a4;
- (BOOL)hasAnimatingFolder;
- (BOOL)hasConfiguredFilesStackWithURL:(id)a3;
- (BOOL)hasOpenFolder;
- (BOOL)hasOpenFolderInLocation:(id)a3;
- (BOOL)hasRootFolderController;
- (BOOL)hasRootViewController;
- (BOOL)icon:(id)a3 canReceiveGrabbedIcon:(id)a4;
- (BOOL)iconDragManager:(id)a3 canAcceptDropInSession:(id)a4 inIconListView:(id)a5;
- (BOOL)iconDragManager:(id)a3 canAddDragItemsToSession:(id)a4 fromIconView:(id)a5;
- (BOOL)iconDragManager:(id)a3 canBeginDragForIconView:(id)a4;
- (BOOL)iconDragManager:(id)a3 canBeginIconDragForIconView:(id)a4;
- (BOOL)iconDragManager:(id)a3 dragsSupportSystemDragsForIconView:(id)a4;
- (BOOL)iconDragManager:(id)a3 shouldDuplicateIconsInDragSession:(id)a4;
- (BOOL)iconModel:(id)a3 shouldAvoidPlacingIconOnFirstPage:(id)a4;
- (BOOL)iconModel:(id)a3 shouldLeaveGapForMissingArchivedIconWithIdentifier:(id)a4;
- (BOOL)iconModel:(id)a3 shouldPlaceIconOnIgnoredList:(id)a4;
- (BOOL)iconShouldAllowTap:(id)a3;
- (BOOL)iconView:(id)a3 editingModeGestureRecognizerDidFire:(id)a4;
- (BOOL)iconView:(id)a3 shouldActivateApplicationShortcutItem:(id)a4 atIndex:(unint64_t)a5;
- (BOOL)iconView:(id)a3 shouldContinueToUseBackgroundViewForComponents:(id)a4;
- (BOOL)iconView:(id)a3 supportsConfigurationForDataSource:(id)a4;
- (BOOL)iconViewDisplaysAccessories:(id)a3;
- (BOOL)iconViewDisplaysCloseBox:(id)a3;
- (BOOL)iconViewDisplaysLabel:(id)a3;
- (BOOL)iconViewDisplaysResizeHandle:(id)a3;
- (BOOL)iconsShouldAllowCloseBoxes;
- (BOOL)isAnimatingFolderIconTransitionForIconDragManager:(id)a3;
- (BOOL)isCustomIconElementValid:(id)a3;
- (BOOL)isCustomLeadingViewTodayView;
- (BOOL)isDisplayingIcon:(id)a3 inLocation:(id)a4 options:(unint64_t)a5;
- (BOOL)isDisplayingIcon:(id)a3 inLocations:(id)a4;
- (BOOL)isDisplayingIcon:(id)a3 options:(unint64_t)a4;
- (BOOL)isDisplayingIcon:(id)a3 queryOptions:(unint64_t)a4;
- (BOOL)isDisplayingIconView:(id)a3;
- (BOOL)isDisplayingIconView:(id)a3 inLocation:(id)a4;
- (BOOL)isDisplayingIconView:(id)a3 options:(unint64_t)a4;
- (BOOL)isEditing;
- (BOOL)isEditingAllowed;
- (BOOL)isEditingAllowedForIconListView:(id)a3;
- (BOOL)isEditingAllowedForIconLocation:(id)a3;
- (BOOL)isEditingAllowedForIconView:(id)a3;
- (BOOL)isEditingForIconListView:(id)a3;
- (BOOL)isEditingForIconLocation:(id)a3;
- (BOOL)isFloatingDockSupported;
- (BOOL)isFloatingDockUtilitiesSupported;
- (BOOL)isFloatingDockVisible;
- (BOOL)isFolderOpenForIconDragManager:(id)a3;
- (BOOL)isFolderPageManagementUIVisible;
- (BOOL)isFolderScrolling;
- (BOOL)isIconContentPossiblyVisibleOverApplication;
- (BOOL)isIconDragging;
- (BOOL)isIconIgnored:(id)a3;
- (BOOL)isIconViewRecycled:(id)a3;
- (BOOL)isIconVisiblyRepresented:(id)a3;
- (BOOL)isMainDisplayLibraryViewVisible;
- (BOOL)isOverlayTodayOrLibraryViewVisible;
- (BOOL)isPerformingCancelledCollapseTransition;
- (BOOL)isPerformingCancelledExpandTransition;
- (BOOL)isPerformingExpandTransition;
- (BOOL)isPresentingIconLocation:(id)a3;
- (BOOL)isRootFolderContentVisible;
- (BOOL)isRootFolderScrolling;
- (BOOL)isScrolling;
- (BOOL)isShowingIconContextMenu;
- (BOOL)isShowingModalInteraction;
- (BOOL)isShowingOrTransitioningToTrailingCustomView;
- (BOOL)isShowingPullDownOrLeadingCustomViewSearch;
- (BOOL)isShowingPullDownSearch;
- (BOOL)isShowingPullDownSearchOrTransitioningToVisible;
- (BOOL)isShowingSpotlightOrLeadingCustomView;
- (BOOL)isTodayViewEffectivelyVisible;
- (BOOL)isTrackingScroll;
- (BOOL)isTransitioning;
- (BOOL)isTransitioningHomeScreenState;
- (BOOL)isWidgetValid:(id)a3 iconSizeClass:(id)a4;
- (BOOL)listsAllowRotatedLayoutForFolderClass:(Class)a3;
- (BOOL)multiplexingManager:(id)a3 shouldCacheRecentViewController:(id)a4 forIdentifier:(id)a5;
- (BOOL)openApplicationWindowsContextMenuProvider:(id)a3 canProvideContextMenuSectionsForBundleIdentifier:(id)a4;
- (BOOL)presentHomeScreenIconsAnimated:(BOOL)a3;
- (BOOL)presentSpotlightFromSource:(unint64_t)a3 animated:(BOOL)a4 completionHandler:(id)a5;
- (BOOL)prototypeSettingBumpLeastUsedApps;
- (BOOL)prototypeSettingEditButtonAsUndo;
- (BOOL)prototypeSettingShowExtraLargeTVWidget;
- (BOOL)prototypeSettingShowWidgetIntroduction;
- (BOOL)prototypeSettingSimpleBottomSnaking;
- (BOOL)recentDocumentsContextMenuProvider:(id)a3 canProvideContextMenuSectionsForBundleIdentifier:(id)a4;
- (BOOL)relayout;
- (BOOL)requestDeleteFileStackIcon:(id)a3;
- (BOOL)resetIconLayoutWithOptions:(unint64_t)a3;
- (BOOL)resetTodayLayout;
- (BOOL)rootFolder:(id)a3 canAddIcon:(id)a4 toIconList:(id)a5 inFolder:(id)a6;
- (BOOL)rootFolder:(id)a3 canBounceIcon:(id)a4;
- (BOOL)rootFolder:(id)a3 isGridLayoutValid:(id)a4 forIconList:(id)a5 inFolder:(id)a6;
- (BOOL)rootFolderContainsSuggestedWidget;
- (BOOL)rootFolderContainsWidgets;
- (BOOL)rootFolderController:(id)a3 allowsRemovalOfIconDataSourceWithinStack:(id)a4;
- (BOOL)rootFolderControllerCanUseSeparateWindowForRotation:(id)a3;
- (BOOL)rootFolderControllerDidSetPrototypeSettingEditAsUndo:(id)a3;
- (BOOL)shouldEnforceMaxCombinedUserAndUtilitiesIconCountForFloatingDock;
- (BOOL)shouldGroupSystemApplicationShortcutItemsForIconView:(id)a3 atLocation:(CGPoint)a4;
- (BOOL)shouldHighlightTouchedIconView:(id)a3;
- (BOOL)shouldRecycleIconView:(id)a3;
- (BOOL)swapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)a3 withApplicationIconsWithWithBundleIdentifier:(id)a4;
- (BOOL)swapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)a3 withApplicationIconsWithWithBundleIdentifier:(id)a4 focusModeIdentifier:(id)a5;
- (BOOL)swapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)a3 withApplicationIconsWithWithBundleIdentifier:(id)a4 inRootFolder:(id)a5 focusModeIdentifier:(id)a6;
- (BOOL)userHasUsedWidget;
- (BOOL)viewMap:(id)a3 shouldRecycleView:(id)a4;
- (BOOL)widgetIconIsOnboardingWidget:(id)a3;
- (BOOL)widgetStackViewController:(id)a3 isDataSourceBlockedForScreenTimeExpiration:(id)a4;
- (BOOL)widgetStackViewControllerCanFlashPageControl:(id)a3;
- (CGRect)iconView:(id)a3 contentBoundingRectForConfigurationInteraction:(id)a4;
- (CHSWidgetExtensionProvider)widgetExtensionProvider;
- (Class)controllerClassForFolder:(id)a3;
- (Class)controllerClassForFolderClass:(Class)a3;
- (Class)iconModel:(id)a3 iconClassForApplicationWithBundleIdentifier:(id)a4 proposedClass:(Class)a5;
- (Class)iconViewClass;
- (NSArray)defaultFirstPageSuggestedWidgetIcons;
- (NSArray)defaultSecondPageSuggestedWidgetIcons;
- (NSSet)presentedIconLocations;
- (NSString)statisticsSummary;
- (PUIStylePickerViewController)currentStylePickerViewController;
- (SBFolder)openedFolder;
- (SBFolderController)openedFolderController;
- (SBFolderIconImageCache)folderIconImageCache;
- (SBHIconGridSize)listGridSizeForFolderClass:(Class)a3;
- (SBHIconGridSize)listWithNonDefaultSizedIconsGridSizeForFolderClass:(Class)a3;
- (SBHIconImageCache)iconImageCache;
- (SBHIconManager)init;
- (SBHIconManagerDelegate)delegate;
- (SBHIconManagerWidgetMetricsDelegate)widgetMetricsDelegate;
- (SBHLegibilitySettings)legibilitySettings;
- (SBHProactivePageSuggestionsManager)proactivePageSuggestionsManager;
- (SBIconImageInfo)folderMiniIconImageInfo;
- (SBIconImageInfo)rootIconImageInfo;
- (SBIconLabelImageCache)iconLabelImageCache;
- (SBIconListView)currentRootIconList;
- (SBIconListView)dockListView;
- (SBIconListView)effectiveDockListView;
- (SBIconListView)floatingDockListView;
- (SBIconListView)floatingDockSuggestionsListView;
- (SBSearchGesture)searchGesture;
- (UIEdgeInsets)contentOverlayInsetsFromParentIfAvailableForFolderController:(id)a3;
- (UIEdgeInsets)statusBarEdgeInsetsForFolderController:(id)a3;
- (UIImpactFeedbackGenerator)iconEditingFeedbackBehavior;
- (double)defaultIconLayoutAnimationDurationForIconDragManager:(id)a3;
- (double)distanceToTopOfSpotlightIconsForRootFolderController:(id)a3;
- (double)externalDockHeightForRootFolderController:(id)a3;
- (double)iconDragManager:(id)a3 additionalDragLiftScaleForIconView:(id)a4;
- (double)maxExternalDockHeightForRootFolderController:(id)a3;
- (double)minimumHomeScreenScaleForFolderController:(id)a3;
- (double)preferredExternalDockVerticalMarginForRootFolderController:(id)a3;
- (double)verticalMarginPercentageForConfigurationOfIconView:(id)a3;
- (id)_archivedIntentForDataSource:(id)a3 inIcon:(id)a4 loadingIfNecessary:(BOOL)a5;
- (id)_containerViewControllerForPersonDetailInteractionTargetingIconView:(id)a3;
- (id)_containerViewForPersonDetailInteractionTargetingIconView:(id)a3;
- (id)_createAppropriateRootViewControllerForRootFolder:(id)a3;
- (id)_createRootFolderControllerForRootFolder:(id)a3;
- (id)_createRootTableControllerForRootFolder:(id)a3;
- (id)_currentFolderController;
- (id)_customViewControllerForResizingIcon:(id)a3 gridSizeClass:(id)a4 dataSource:(id)a5 location:(id)a6;
- (id)_dumpRootFolderForStateCapture:(id)a3;
- (id)_effectiveAppPredictionViewControllersForUniqueIdentifier;
- (id)_effectiveTodayViewController;
- (id)_effectiveWidgetMultiplexingManager;
- (id)_fetchCurrentStyleConfiguration;
- (id)_folderControllerForIcon:(id)a3 inLocation:(id)a4;
- (id)_homeScreenContentViewForPersonDetailInteractionTargetingIconView:(id)a3;
- (id)_iconForDescriptor:(id)a3;
- (id)_iconLabelImageParametersForPrewarm:(unint64_t)a3;
- (id)_intentForDataSource:(id)a3 inIcon:(id)a4 loadingFromArchiveIfNecessary:(BOOL)a5 usingDefaultIntentIfNecessary:(BOOL)a6;
- (id)_intentForWidget:(id)a3 ofIcon:(id)a4 loadingFromArchiveIfNecessary:(BOOL)a5 usingDefaultIntentIfNecessary:(BOOL)a6;
- (id)_libraryViewControllers;
- (id)_makeCustomViewControllerForWidgetIcon:(id)a3 dataSource:(id)a4 location:(id)a5;
- (id)_makeCustomViewControllerForWidgetIcon:(id)a3 dataSource:(id)a4 location:(id)a5 gridSizeClass:(id)a6;
- (id)_multiplexingViewControllerForIcon:(id)a3 dataSource:(id)a4 location:(id)a5 withPriority:(unint64_t)a6;
- (id)_newIntentForDataSource:(id)a3 inIcon:(id)a4 loadingFromArchiveIfNecessary:(BOOL)a5 usingDefaultIntentIfNecessary:(BOOL)a6;
- (id)_personDetailInteractionContextForPersonURL:(id)a3 iconView:(id)a4;
- (id)_proposedFolderNameForGrabbedIcon:(id)a3 recipientIcon:(id)a4;
- (id)_stackConfigurationForStackIcon:(id)a3;
- (id)_stashedIconsWithRemovableDataSourcesForStashedIcons:(id)a3 newIcons:(id)a4;
- (id)_stateCaptureString;
- (id)_widgetIntroductionHomeScreenPreviewView;
- (id)accessibilityTintColorForIconView:(id)a3;
- (id)accessibilityTintColorForScreenRect:(CGRect)a3;
- (id)addApplicationPlaceholders:(id)a3;
- (id)addWidgetSheetConfigurationManager:(id)a3 containerBundleIdentiferForDescriptor:(id)a4;
- (id)addWidgetSheetConfigurationManager:(id)a3 vendorNameForAppWithBundleIdentifier:(id)a4;
- (id)addWidgetSheetConfigurationManagerCreatingIfNecessary:(BOOL)a3;
- (id)addWidgetSheetViewControllerForAddWidgetSheetConfigurationManager:(id)a3;
- (id)addWidgetsToEachPage;
- (id)additionalIconViewsToUpdateDuringColorPicking;
- (id)allowedGridSizeClassesForDock;
- (id)allowedGridSizeClassesForTodayList;
- (id)animator:(id)a3 animationSettingsForOperation:(unint64_t)a4 childViewController:(id)a5;
- (id)appPredictionViewControllerForIconView:(id)a3;
- (id)appPredictionsIconViewDisplayingIconView:(id)a3 options:(unint64_t)a4;
- (id)applicationShortcutSectionOrderingForIconView:(id)a3;
- (id)applicationWithBundleIdentifier:(id)a3;
- (id)backgroundViewForDockForRootFolderController:(id)a3;
- (id)backgroundViewForEditingDoneButtonForRootFolderController:(id)a3;
- (id)beginHidingIconsFromLayout:(id)a3 reason:(id)a4 options:(unint64_t)a5;
- (id)bestHomeScreenLocationForIcon:(id)a3;
- (id)bestLocationForIcon:(id)a3;
- (id)cachingImageAppearances;
- (id)cachingImageStyleConfiguration;
- (id)captureHomeScreenOnboardingSnapshot;
- (id)contextMenuManager:(id)a3 containerViewForPresentingContextMenuForIconView:(id)a4;
- (id)contextMenuManager:(id)a3 orderedActionContextMenuProvidersForIconView:(id)a4;
- (id)createNewFolderFromRecipientIcon:(id)a3 grabbedIcon:(id)a4;
- (id)customImageViewControllerForIconView:(id)a3;
- (id)dataSourceForOpenApplicationWindowsContextMenuProvider:(id)a3;
- (id)debuggingActiveWidgetInfo;
- (id)defaultIconStateForIconModel:(id)a3;
- (id)dequeueReusableIconViewOfClass:(Class)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)fakeStatusBarForFolderController:(id)a3;
- (id)firstIconViewForIcon:(id)a3;
- (id)firstIconViewForIcon:(id)a3 excludingLocations:(id)a4;
- (id)firstIconViewForIcon:(id)a3 inLocations:(id)a4;
- (id)firstIconViewForIcon:(id)a3 options:(unint64_t)a4;
- (id)firstIconViewWithOptions:(unint64_t)a3 iconPassingTest:(id)a4;
- (id)floatingDockUtilitiesListView;
- (id)floatingDockViewControllerForView:(id)a3;
- (id)folderControllerForFolder:(id)a3;
- (id)folderControllerWantsToHideStatusBar:(id)a3 animated:(BOOL)a4;
- (id)gridPathForIcon:(id)a3;
- (id)gridSizeClassDomain;
- (id)gridSizeClassSizesForIconModel:(id)a3;
- (id)highPriorityCachingImageAppearancesForIconImageStyleConfiguration:(id)a3;
- (id)homescreenIconAccessoryViewMap;
- (id)homescreenIconImageViewMap;
- (id)homescreenIconLabelAccessoryViewMap;
- (id)iconDataSourceForReplacingAppIconWithWidgetIcon:(id)a3;
- (id)iconDragManager:(id)a3 dragPreviewForIconView:(id)a4;
- (id)iconDragManager:(id)a3 targetedDragPreviewForIconView:(id)a4 item:(id)a5 session:(id)a6 previewParameters:(id)a7;
- (id)iconForReplacingWidgetIconWithAppIcon:(id)a3;
- (id)iconGridSizeClassSizes;
- (id)iconListViewForIndexPath:(id)a3;
- (id)iconLocationForList:(id)a3 inFolder:(id)a4 ofRootFolder:(id)a5;
- (id)iconLocationForListsWithNonDefaultSizedIcons;
- (id)iconModel:(id)a3 allowedGridSizeClassesForFolderClass:(Class)a4;
- (id)iconModel:(id)a3 customInsertionGridPathForIcon:(id)a4 inRootFolder:(id)a5;
- (id)iconModel:(id)a3 customInsertionIndexPathForIcon:(id)a4 inRootFolder:(id)a5;
- (id)iconModel:(id)a3 validatedFileStackIconForFileStackIcon:(id)a4;
- (id)iconSizeChangeAnimator:(id)a3 intentForWidget:(id)a4;
- (id)iconSizeChangeAnimator:(id)a3 viewControllerForIconDataSource:(id)a4 icon:(id)a5 gridSizeClass:(id)a6;
- (id)iconView:(id)a3 applicationShortcutItemsWithProposedItems:(id)a4;
- (id)iconView:(id)a3 backgroundViewForComponentsOfType:(int64_t)a4;
- (id)iconView:(id)a3 configurationInteractionForDataSource:(id)a4;
- (id)iconView:(id)a3 containerViewControllerForConfigurationInteraction:(id)a4;
- (id)iconView:(id)a3 containerViewForConfigurationInteraction:(id)a4;
- (id)iconView:(id)a3 homeScreenContentViewForConfigurationInteraction:(id)a4;
- (id)iconView:(id)a3 iconAccessoryViewOfClass:(Class)a4;
- (id)iconView:(id)a3 iconLabelAccessoryViewOfType:(int64_t)a4;
- (id)iconView:(id)a3 labelContentWithParameters:(id)a4;
- (id)iconView:(id)a3 labelImageWithParameters:(id)a4;
- (id)iconViewForIcon:(id)a3 location:(id)a4 options:(unint64_t)a5;
- (id)iconViewMap;
- (id)iconViewShowingContextMenu;
- (id)iconViewsToPreviewForIconStylePicker;
- (id)iconsToRecacheForIconStylePickerPreview;
- (id)iconsToRecacheForImageAppearanceChange;
- (id)imageViewForIconView:(id)a3;
- (id)launchActionsForIconView:(id)a3;
- (id)launchURLForIconView:(id)a3;
- (id)leadingTodayViewController;
- (id)listRotatedLayoutClusterGridSizeClassForIconModel:(id)a3;
- (id)listViewsToUpdateDuringColorPicking;
- (id)localizedDefaultFolderName;
- (id)localizedFolderNameForDefaultDisplayName:(id)a3;
- (id)lowPriorityCachingImageAppearancesForIconImageStyleConfiguration:(id)a3;
- (id)makeResizedCopyOfWidgetIcon:(id)a3 withGridSizeClass:(id)a4;
- (id)metricsForCHSWidget:(id)a3 inLocation:(id)a4;
- (id)nestingViewController:(id)a3 interactionControllerForAnimationController:(id)a4;
- (id)onboardingWidgetPreviewsForWidgetIcon:(id)a3;
- (id)parallaxSettingsForComponentsOfIconView:(id)a3;
- (id)persistedHomeScreenColorConfiguration;
- (id)preWarmCustomViewControllerForWidgetIcon:(id)a3;
- (id)preWarmCustomViewControllerForWidgetIcon:(id)a3 withGridSizeClass:(id)a4;
- (id)precacheLayersForIcons:(id)a3 appearances:(id)a4 reason:(id)a5;
- (id)prepareForUndo;
- (id)primaryWindowScene;
- (id)prioritizedCachingImageAppearances;
- (id)prioritizedCachingImageAppearancesForIconImageStyleConfiguration:(id)a3 priority:(int64_t)a4;
- (id)promoteSuggestedWidget:(id)a3 withinStack:(id)a4;
- (id)reasonToDisallowInteractionOnIconView:(id)a3;
- (id)reasonToDisallowTapOnIconView:(id)a3;
- (id)recycledViewsContainerProviderForViewMap:(id)a3;
- (id)replaceApplicationPlaceholderWithApplication:(id)a3;
- (id)resizeGestureHandler:(id)a3 intentForWidget:(id)a4;
- (id)resizeGestureHandler:(id)a3 viewControllerForIconDataSource:(id)a4 icon:(id)a5 gridSizeClass:(id)a6;
- (id)resizeGestureHandlerForIconView:(id)a3;
- (id)rootFolder:(id)a3 shouldBounceIcon:(id)a4 afterInsertingIcons:(id)a5 forIconList:(id)a6 inFolder:(id)a7;
- (id)rootFolderController:(id)a3 dragPreviewForIconView:(id)a4;
- (id)rootFolderController:(id)a3 draggedIconForStackConfigurationInteractionForIdentifier:(id)a4;
- (id)rootIconListAtIndex:(int64_t)a3;
- (id)rootListLayout;
- (id)rootViewForIconDragManager:(id)a3;
- (id)screenSnapshotProviderForComponentsOfIconView:(id)a3;
- (id)silhouetteLayoutForPageAtIndex:(unint64_t)a3;
- (id)stackConfigurationInteractionForIconView:(id)a3;
- (id)statusBarStyleRequestForFolderController:(id)a3;
- (id)succinctDescription;
- (id)supportedGridSizeClassesForIconView:(id)a3;
- (id)supportedGridSizeClassesForWidgetWithKind:(id)a3 extensionBundleIdentifier:(id)a4 containerBundleIdentifier:(id)a5;
- (id)supportedIconGridSizeClassesForResizeOfIconView:(id)a3;
- (id)todayViewControllers;
- (id)trailingLibraryViewController;
- (id)validatedWidgetIconForWidgetIcon:(id)a3;
- (id)viewControllerForPresentingViewControllers;
- (id)viewMap:(id)a3 makeNewViewOfClass:(Class)a4;
- (id)visibleIconsToRecacheForImageAppearanceChange;
- (id)widgetBackgroundViewMap;
- (id)widgetIconWithWidgetExtensionIdentifiers:(id)a3 widgetKinds:(id)a4 sizeClass:(id)a5;
- (id)widgetInsertionRippleIconAnimatorForIcon:(id)a3 iconListView:(id)a4 withReferenceIconView:(id)a5;
- (id)widgetMetricsProvider:(id)a3 listLayoutProviderForScreenType:(unint64_t)a4;
- (id)widgetStackViewController:(id)a3 containerApplicationNameForDataSource:(id)a4;
- (id)widgetStackViewController:(id)a3 viewControllerForDataSource:(id)a4;
- (id)windowForIconDragPreviewsForIconDragManager:(id)a3 forWindowScene:(id)a4;
- (id)windowForStackConfigurationIconDragPreviewsForRootFolderController:(id)a3 forWindowScene:(id)a4;
- (int64_t)closeBoxTypeForIconView:(id)a3;
- (int64_t)contextMenuManager:(id)a3 preferredMenuElementOrderForIconView:(id)a4;
- (int64_t)currentIconListIndex;
- (int64_t)iconDragManager:(id)a3 draggingStartLocationForIconView:(id)a4 proposedStartLocation:(int64_t)a5;
- (int64_t)iconView:(id)a3 userInterfaceStyleForConfigurationInteraction:(id)a4;
- (int64_t)interfaceOrientation;
- (int64_t)listsFixedIconLocationBehavior;
- (int64_t)listsFixedIconLocationBehaviorForFolderClass:(Class)a3;
- (int64_t)listsIconDisplacementBehavior;
- (int64_t)listsIconDisplacementBehaviorForFolderClass:(Class)a3;
- (unint64_t)addWidgetSheetStyleForRootFolderController:(id)a3;
- (unint64_t)allowedInterfaceOrientations;
- (unint64_t)columnCountForTodayList;
- (unint64_t)contextMenuManager:(id)a3 supportedMultitaskingShortcutActionsForIconView:(id)a4;
- (unint64_t)effectiveRootFolderControllerContentVisibility;
- (unint64_t)focusEffectTypeForIconView:(id)a3;
- (unint64_t)gridCellInfoOptions;
- (unint64_t)iconModel:(id)a3 maxColumnCountForListInRootFolderWithInterfaceOrientation:(int64_t)a4;
- (unint64_t)iconModel:(id)a3 maxRowCountForListInRootFolderWithInterfaceOrientation:(int64_t)a4;
- (unint64_t)maxIconCountForDock;
- (unint64_t)maxIconCountForDockUtilities;
- (unint64_t)maxListCountForFolders;
- (unint64_t)possibleInterfaceOrientations;
- (unint64_t)supportedMultitaskingShortcutActionsForIconView:(id)a3;
- (unint64_t)viewMap:(id)a3 maxRecycledViewsOfClass:(Class)a4;
- (void)_addTouchedIconView:(id)a3;
- (void)_animateFolderIcon:(id)a3 open:(BOOL)a4 location:(id)a5 animated:(BOOL)a6 withCompletion:(id)a7;
- (void)_applyBarButtonItemsToStylePicker:(id)a3 forHomeScreenConfiguration:(id)a4;
- (void)_archiveConfiguration:(id)a3 forDataSource:(id)a4 ofIcon:(id)a5;
- (void)_beginObservingLeafIconsInModel:(id)a3;
- (void)_cleanupForClosingFolderAnimated:(BOOL)a3;
- (void)_cleanupLabelCachesWithReason:(id)a3;
- (void)_clearStashedIconsForRelayout;
- (void)_closeFolderController:(id)a3 animated:(BOOL)a4 withCompletion:(id)a5;
- (void)_compactRootListsAfterFolderCloseWithAnimation:(BOOL)a3;
- (void)_configureRootFolderConfiguration:(id)a3;
- (void)_discardEndEditingTimerAndDontResetUntilReasonIsRemoved:(id)a3;
- (void)_dismissStylePickerViewControllerImmediately;
- (void)_endObservingLeafIconsInModel:(id)a3;
- (void)_engageWallpaperTintColorDropper:(id)a3;
- (void)_enqueueTransitionName:(id)a3 withHandler:(id)a4;
- (void)_ensureRootFolderController;
- (void)_ensureWidgetIsVisibleForDebuggingWithDescriptor:(id)a3 sizeClass:(int64_t)a4;
- (void)_enumerateEditableViewController:(id)a3 usingBlock:(id)a4;
- (void)_fetchWallpaperProminentColor:(id)a3;
- (void)_finishResetRootIconListsReusingPreviousControllers:(BOOL)a3;
- (void)_folderDidFinishOpenClose:(BOOL)a3 animated:(BOOL)a4 success:(BOOL)a5;
- (void)_handleRemovedDataSource:(id)a3 ofIcon:(id)a4;
- (void)_handleUpdatedConfiguration:(id)a3 forDataSource:(id)a4 ofIcon:(id)a5 archiving:(BOOL)a6;
- (void)_iconModelDidLayout:(id)a3;
- (void)_iconVisibilityChanged:(id)a3;
- (void)_invalidateWallpaperTintColorDropper;
- (void)_loadAndSaveDefaultIntentIfNecessaryForWidget:(id)a3 ofIcon:(id)a4 viewController:(id)a5;
- (void)_noteUserIsInteractingWithIcons;
- (void)_precacheDataForRootIcons;
- (void)_precacheDataForRootIconsAfterIconAppearanceChange;
- (void)_precacheImagesForRootIcons;
- (void)_precacheImagesForRootIconsForStyleConfiguration:(id)a3;
- (void)_precacheIntentsForRootIcons;
- (void)_precacheLabelsForRootIcons:(BOOL)a3 reason:(id)a4;
- (void)_prepareToResetRootIconLists;
- (void)_presentStylePickerViewController;
- (void)_presentStylePickerViewControllerForStylePickerConfiguration:(id)a3;
- (void)_processPendingDefaultIntents;
- (void)_removeReasonToNotResetEndEditingTimer:(id)a3;
- (void)_removeTouchedIconView:(id)a3;
- (void)_resetHomescreenIconStateTo:(id)a3;
- (void)_restartEditingEndTimer;
- (void)_scrollToLastIconPageIfNecessaryForLibraryOverlayDismissal:(id)a3;
- (void)_setupApplicationShortcutItemsForPresentation:(id)a3;
- (void)_setupStateCaptureHandleIfNeeded;
- (void)_todayViewControllerSuppressesEditingStateForListViews:(BOOL)a3;
- (void)_toggleHomeScreenIconSize:(id)a3;
- (void)_tryScrollToIconToRevealAnimated:(BOOL)a3;
- (void)_updateCaptureOnlyBackgroundViewForCustomIconImageViewController:(id)a3;
- (void)_updateIconView:(id)a3 forCustomIconImageViewController:(id)a4;
- (void)_updateLegibilitySettings;
- (void)_updateMaximumEditingIconSizeForFloatingDockViewController:(id)a3;
- (void)_updateOverlayOcclusionForRootFolderController;
- (void)_updateOverscrollModalLibraryForScrollToPresented:(BOOL)a3;
- (void)_updateShouldUseHomeScreenLargeIconSize:(BOOL)a3;
- (void)_updateStyleConfiguration:(id)a3;
- (void)_updateVisibleIconsViewsForAllowableCloseBoxes;
- (void)_updateWidgetMultiplexingViewController:(id)a3 forIconView:(id)a4;
- (void)_validateAndRepairIntentsForConfigurableWidgets;
- (void)_willAnimateWidgetInsertion;
- (void)addAdditionalIconImageCacheForPrecaching:(id)a3;
- (void)addAllEligibleIconsToIgnoredList;
- (void)addApplicationIconWithBundleIdentifier:(id)a3 toPage:(unint64_t)a4 coordinate:(SBIconCoordinate)a5;
- (void)addApplicationIconWithBundleIdentifier:(id)a3 toPage:(unint64_t)a4 coordinate:(SBIconCoordinate)a5 orientation:(int64_t)a6;
- (void)addApplicationIconWithBundleIdentifier:(id)a3 toPage:(unint64_t)a4 iconIndex:(unint64_t)a5;
- (void)addDebugIconOfSizeClass:(id)a3 toPage:(unint64_t)a4 coordinate:(SBIconCoordinate)a5;
- (void)addDebugIconOfSizeClass:(id)a3 toPage:(unint64_t)a4 coordinate:(SBIconCoordinate)a5 orientation:(int64_t)a6;
- (void)addDebugIconOfSizeClass:(id)a3 toPage:(unint64_t)a4 iconIndex:(unint64_t)a5;
- (void)addFileStackWithURL:(id)a3;
- (void)addFolderPresentationObserver:(id)a3;
- (void)addIconToIgnoredList:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)addIcons:(id)a3 intoFolderIcon:(id)a4 openFolderOnFinish:(BOOL)a5 completion:(id)a6;
- (void)addNewIconToDesignatedLocation:(id)a3 options:(unint64_t)a4;
- (void)addNewIconsToDesignatedLocations:(id)a3 saveIconState:(BOOL)a4;
- (void)addPageStateObserver:(id)a3;
- (void)addReasonToIgnoreUserPreferenceForAddingNewIconsToHomeScreen:(id)a3;
- (void)addSuggestedActiveWidgetToStack:(id)a3;
- (void)addWidgetStackToCurrentPage;
- (void)addWidgetStackWithIdentifiers:(id)a3 toPage:(int64_t)a4 withSizeClass:(id)a5;
- (void)addWidgetWithIdentifier:(id)a3 toPage:(int64_t)a4 withSizeClass:(id)a5;
- (void)addWidgets:(id)a3 toGridPath:(id)a4 overflowOptions:(unint64_t)a5;
- (void)animateToDefaultStateWithCompletionHandler:(id)a3;
- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4;
- (void)cancelAllDrags;
- (void)cancelAllFolderScrolling;
- (void)changeSizeOfWidgetIcon:(id)a3 toSizeClass:(id)a4 animated:(BOOL)a5 completionHandler:(id)a6;
- (void)checkForInvalidCustomElements;
- (void)checkForInvalidWidgets;
- (void)clearHighlightedIcon;
- (void)clearHighlightedIcon:(id)a3;
- (void)closeFolderAnimated:(BOOL)a3 withCompletion:(id)a4;
- (void)configureFeedbackView:(id)a3;
- (void)configureFloatingDockViewController:(id)a3;
- (void)configureIconView:(id)a3 forIcon:(id)a4;
- (void)configureLibraryViewController:(id)a3;
- (void)contextMenuManager:(id)a3 iconView:(id)a4 willUseContextMenuStyle:(id)a5;
- (void)continueChangingSizeOfWidgetIcon:(id)a3 toSizeClass:(id)a4 newIcon:(id)a5 displayedIconView:(id)a6 listView:(id)a7 resizedViewController:(id)a8 undoPreparation:(id)a9 previousIconGridPath:(id)a10 currentIconGridPath:(id)a11 animated:(BOOL)a12 completionHandler:(id)a13;
- (void)dealloc;
- (void)didDeleteIconState:(id)a3;
- (void)didSaveIconState:(id)a3;
- (void)disableUserInteractionForWidgetDiscoverability;
- (void)dismissFolderPageManagementUI;
- (void)dismissIconContextMenu;
- (void)dismissIconShareSheets;
- (void)dismissLibraryForIconDragManager:(id)a3 windowScene:(id)a4;
- (void)dismissModalInteractions;
- (void)dismissModalInteractionsImmediately;
- (void)dismissTodayOverlayForIconDragManager:(id)a3;
- (void)displayEnterEditingModeFeatureIntroductions;
- (void)displayFeatureIntroductionItemIfUnlocked:(id)a3;
- (void)displayPronouncedContainerViewVisibility:(BOOL)a3 isVertical:(BOOL)a4;
- (void)editingDidChangeWithFeedbackBehavior:(id)a3 location:(CGPoint)a4;
- (void)enableUserInteractionForWidgetDiscoverability;
- (void)ensureFixedIconLocationsIfNecessary;
- (void)enumerateAllIconImageCachesUsingBlock:(id)a3;
- (void)enumerateAppPredictionViewControllersInIconLocationGroup:(id)a3 withOptions:(unint64_t)a4 usingBlock:(id)a5;
- (void)enumerateAppPredictionViewControllersWithIconViewsInIconLocationGroup:(id)a3 withOptions:(unint64_t)a4 usingBlock:(id)a5;
- (void)enumerateDisplayedIconViewsForIcon:(id)a3 usingBlock:(id)a4;
- (void)enumerateDisplayedIconViewsUsingBlock:(id)a3;
- (void)enumerateEditableViewControllersUsingBlock:(id)a3;
- (void)enumerateIconViewQueryableChildrenWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)enumerateIconViewsDisplayedInAppPredictionsInLocationGroup:(id)a3 withOptions:(unint64_t)a4 usingBlock:(id)a5;
- (void)enumerateKnownIconViewsUsingBlock:(id)a3;
- (void)enumeratePageStateObserversUsingBlock:(id)a3;
- (void)enumerateViewsToUpdateDuringColorPickingUsingListViewBlock:(id)a3 iconViewBlock:(id)a4;
- (void)finishInstallingIconAnimated:(BOOL)a3;
- (void)floatingDockViewController:(id)a3 didChangeContentHeight:(double)a4 animated:(BOOL)a5;
- (void)floatingDockViewController:(id)a3 wantsToBeginEditingAtScreenLocation:(CGPoint)a4;
- (void)floatingDockViewController:(id)a3 willCloseFolderController:(id)a4;
- (void)floatingDockViewController:(id)a3 willOpenFolderController:(id)a4;
- (void)folder:(id)a3 didAddIcons:(id)a4 removedIcons:(id)a5;
- (void)folder:(id)a3 didReplaceIcon:(id)a4 withIcon:(id)a5;
- (void)folder:(id)a3 listHiddenDidChange:(id)a4;
- (void)folderController:(id)a3 willRemoveFakeStatusBar:(id)a4;
- (void)folderController:(id)a3 willUseIconTransitionAnimator:(id)a4 forOperation:(int64_t)a5 onViewController:(id)a6 animated:(BOOL)a7;
- (void)folderControllerDidEndScrolling:(id)a3;
- (void)folderControllerShouldBeginEditing:(id)a3 withHaptic:(BOOL)a4;
- (void)folderControllerWillBeginScrolling:(id)a3;
- (void)folderControllerWillClose:(id)a3;
- (void)folderControllerWillOpen:(id)a3;
- (void)folderIconImageCache;
- (void)getListView:(id *)a3 folder:(id *)a4 relativePath:(id *)a5 forIndexPath:(id)a6;
- (void)getStatistics:(SBHIconManagerStatistics *)a3;
- (void)hasAnimatingFolderChanged;
- (void)hideSiriSuggestionOnWidgetFromStack:(id)a3;
- (void)hideSuggestedWidgetFromStack:(id)a3;
- (void)highlightIconView:(id)a3;
- (void)icon:(id)a3 touchEnded:(BOOL)a4;
- (void)iconCloseBoxTapped:(id)a3;
- (void)iconDragManager:(id)a3 didAddItemsToIconDragWithUniqueIdentifier:(id)a4 numberOfDraggedItems:(unint64_t)a5;
- (void)iconDragManager:(id)a3 didEndIconDragWithUniqueIdentifier:(id)a4 numberOfDraggedItems:(unint64_t)a5;
- (void)iconDragManager:(id)a3 didSpringLoadIconView:(id)a4;
- (void)iconDragManager:(id)a3 iconDropSessionDidEnter:(id)a4;
- (void)iconDragManager:(id)a3 iconView:(id)a4 willAnimateDragLiftWithAnimator:(id)a5 session:(id)a6;
- (void)iconDragManager:(id)a3 willBeginIconDragWithUniqueIdentifier:(id)a4 numberOfDraggedItems:(unint64_t)a5;
- (void)iconDragManagerIconDraggingDidChange:(id)a3;
- (void)iconModel:(id)a3 didAddIcon:(id)a4;
- (void)iconModel:(id)a3 launchIcon:(id)a4 fromLocation:(id)a5 context:(id)a6;
- (void)iconModel:(id)a3 willRemoveIcon:(id)a4;
- (void)iconSizeButtonTriggered;
- (void)iconTapped:(id)a3 modifierFlags:(int64_t)a4;
- (void)iconTouchBegan:(id)a3;
- (void)iconView:(id)a3 configurationDidEndWithInteraction:(id)a4;
- (void)iconView:(id)a3 configurationDidUpdateWithInteraction:(id)a4;
- (void)iconView:(id)a3 configurationWillBeginWithInteraction:(id)a4;
- (void)iconView:(id)a3 configurationWillEndWithInteraction:(id)a4;
- (void)iconView:(id)a3 didChangeCustomImageViewController:(id)a4;
- (void)iconView:(id)a3 didDiscardCustomImageViewController:(id)a4;
- (void)iconView:(id)a3 dropSessionDidEnter:(id)a4;
- (void)iconView:(id)a3 dropSessionDidExit:(id)a4;
- (void)iconView:(id)a3 wantsResizeToGridSizeClass:(id)a4 completionHandler:(id)a5;
- (void)iconView:(id)a3 willRemoveIconAccessoryView:(id)a4;
- (void)iconView:(id)a3 willRemoveIconImageView:(id)a4;
- (void)iconView:(id)a3 willRemoveIconLabelAccessoryView:(id)a4;
- (void)iconViewDidBeginTrackingPossibleResize:(id)a3 context:(id)a4;
- (void)iconViewDidEndTrackingPossibleResize:(id)a3 context:(id)a4;
- (void)informUsageMonitorOfTodayViewVisibilityChange:(id)a3;
- (void)informUsageMonitorOfVisibleIconRectsForTodayViewController:(id)a3;
- (void)insertIcons:(id)a3 intoWidgetStack:(id)a4;
- (void)invalidateOnboardingWidgetPreviewViewControllers;
- (void)launchFolderFromIconView:(id)a3 withActions:(id)a4 modifierFlags:(int64_t)a5;
- (void)launchFromIconView:(id)a3 withActions:(id)a4 modifierFlags:(int64_t)a5;
- (void)layoutIconListsWithAnimationType:(int64_t)a3 forceRelayout:(BOOL)a4;
- (void)libraryViewController:(id)a3 didAcceptDrop:(id)a4;
- (void)libraryViewController:(id)a3 willDismissSearchController:(id)a4;
- (void)libraryViewController:(id)a3 willLaunchIcon:(id)a4 fromLocation:(id)a5;
- (void)libraryViewController:(id)a3 willPresentSearchController:(id)a4;
- (void)libraryViewControllerDidDismiss:(id)a3;
- (void)libraryViewControllerDidPresent:(id)a3;
- (void)minimumHomeScreenScaleDidChange;
- (void)modalInteractionDidEnd:(id)a3;
- (void)modalInteractionWillBegin:(id)a3;
- (void)moveIconToHiddenPage:(id)a3;
- (void)multiplexingManager:(id)a3 cachedRecentViewController:(id)a4 forIdentifier:(id)a5;
- (void)multiplexingManager:(id)a3 willRemoveViewController:(id)a4 forIdentifier:(id)a5;
- (void)multiplexingWrapperViewControllerDidChangeGridAlignment:(id)a3;
- (void)multiplexingWrapperViewControllerWillChangeGridAlignment:(id)a3;
- (void)nestingViewController:(id)a3 willPerformOperation:(int64_t)a4 onViewController:(id)a5 withTransitionCoordinator:(id)a6;
- (void)noteFloatingDockWillAnimateChangeInHeight;
- (void)noteFloatingDockWillChangeHeight;
- (void)noteIconStateChangedExternally;
- (void)noteIconViewWillZoomDown:(id)a3;
- (void)noteInterfaceOrientationChanged;
- (void)noteRootFolderDidMutate;
- (void)openFolderIcon:(id)a3 location:(id)a4 animated:(BOOL)a5 withCompletion:(id)a6;
- (void)organizeAllIconsAcrossPagesWithPageCount:(unint64_t)a3;
- (void)organizeAllIconsIntoFoldersWithPageCount:(unint64_t)a3;
- (void)performAfterAllIconTouchesFinishedUsingBlock:(id)a3;
- (void)performAfterCachingWidgetIntentsUsingBlock:(id)a3;
- (void)performAfterIconContextMenuDismissesUsingBlock:(id)a3;
- (void)popExpandedIconFromLocation:(id)a3 interactionContext:(id)a4 animated:(BOOL)a5 completionHandler:(id)a6;
- (void)popModalInteraction;
- (void)popToCurrentRootIconList;
- (void)popToCurrentRootIconListWhenPossible;
- (void)prepareModalWidgetIntroductionWidgetViewSnapshots;
- (void)presentLeadingCustomViewWithCompletion:(id)a3;
- (void)presentLibraryForIconDragManager:(id)a3 windowScene:(id)a4;
- (void)presentTodayOverlay;
- (void)presentTodayOverlayForIconDragManager:(id)a3;
- (void)presentTrailingCustomViewWithCompletion:(id)a3;
- (void)prototypeSetDefaultSecondPageWidgetIcons;
- (void)purgeUnnecessaryAppearanceIconImageData;
- (void)pushExpandedIcon:(id)a3 location:(id)a4 context:(id)a5 animated:(BOOL)a6 completionHandler:(id)a7;
- (void)pushExpandedIcon:(id)a3 location:(id)a4 context:(id)a5 forcePoppingPriorExpandedIcon:(BOOL)a6 animated:(BOOL)a7 completionHandler:(id)a8;
- (void)randomizeAllIconsAcrossPagesWithPageCount:(unint64_t)a3;
- (void)recycleIconView:(id)a3;
- (void)refreshAppPredictionBadges;
- (void)relayout;
- (void)removeAllIconAnimations;
- (void)removeAllWidgetIcons;
- (void)removeFileStackWithURL:(id)a3;
- (void)removeFirstWidgetFromRootFolderListAtIndex:(unint64_t)a3;
- (void)removeFolderPresentationObserver:(id)a3;
- (void)removeIcon:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)removeReasonToIgnoreUserPreferenceForAddingNewIconsToHomeScreen:(id)a3;
- (void)removeWidgetDiscoverabilityContainerViewsAndPopoverWhenNeeded:(BOOL)a3;
- (void)removeWidgetIconsFromHomeScreen;
- (void)replaceAppIcon:(id)a3 withWidgetOfSize:(id)a4;
- (void)replaceApplicationPlaceholderWithApplication:(id)a3 completionHandler:(id)a4;
- (void)replaceFolderIcon:(id)a3 byContainedIcon:(id)a4 animated:(BOOL)a5;
- (void)replaceHomescreenWithWidgets;
- (void)replaceWidgetIconWithAppIcon:(id)a3;
- (void)resetAllIconImageCaches;
- (void)resetRootIconLists;
- (void)resizeGestureHandler:(id)a3 didFinishWithGridSizeClass:(id)a4;
- (void)revealIcon:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5;
- (void)rootFolder:(id)a3 wantsToDoPageHidingEducationWithCompletion:(id)a4;
- (void)rootFolderController:(id)a3 didDismissPageManagementWithLayoutManager:(id)a4 context:(id)a5;
- (void)rootFolderController:(id)a3 didDismissWidgetEditingViewController:(id)a4;
- (void)rootFolderController:(id)a3 didEndOverscrollOnFirstPageWithVelocity:(double)a4 translation:(double)a5;
- (void)rootFolderController:(id)a3 didEndOverscrollOnLastPageWithVelocity:(double)a4 translation:(double)a5;
- (void)rootFolderController:(id)a3 didOverscrollOnFirstPageByAmount:(double)a4;
- (void)rootFolderController:(id)a3 didOverscrollOnLastPageByAmount:(double)a4;
- (void)rootFolderController:(id)a3 didPresentWidgetEditingViewController:(id)a4;
- (void)rootFolderController:(id)a3 handleInsertionForWidgetIcon:(id)a4 withReferenceIconView:(id)a5 fromPresenter:(id)a6 dismissViewControllerHandler:(id)a7;
- (void)rootFolderController:(id)a3 noteDragItemWasConsumedExternallyForDropSession:(id)a4;
- (void)rootFolderController:(id)a3 prepareAddSheetViewController:(id)a4;
- (void)rootFolderController:(id)a3 setSuppressesEditingStateForExternalDockListViews:(BOOL)a4;
- (void)rootFolderController:(id)a3 statusBarInsetsDidChange:(UIEdgeInsets)a4;
- (void)rootFolderController:(id)a3 viewDidTransitionToSize:(CGSize)a4;
- (void)rootFolderController:(id)a3 wantsToAdjustLeadingCustomContentForEdgeBounceForScrollOffset:(CGPoint)a4;
- (void)rootFolderController:(id)a3 willDismissPageManagementUsingAnimator:(id)a4 context:(id)a5;
- (void)rootFolderController:(id)a3 willDismissWidgetEditingViewController:(id)a4;
- (void)rootFolderController:(id)a3 willPresentAddSheetViewController:(id)a4;
- (void)rootFolderController:(id)a3 willPresentPageManagementWithLayoutManager:(id)a4 animator:(id)a5 context:(id)a6;
- (void)rootFolderController:(id)a3 willPresentWidgetEditingViewController:(id)a4;
- (void)rootFolderController:(id)a3 willUsePropertyAnimator:(id)a4 toTransitionToState:(int64_t)a5;
- (void)rootFolderController:(id)a3 willUseTransitionContext:(id)a4 toTransitionToState:(int64_t)a5;
- (void)rootFolderControllerDidAcceptWidgetIntroduction:(id)a3;
- (void)rootFolderControllerDidEditWidgetIntroduction:(id)a3;
- (void)rootFolderControllerDidUndoWidgetIntroduction:(id)a3;
- (void)rootFolderControllerViewDidDisappear:(id)a3;
- (void)rootFolderControllerViewWillAppear:(id)a3;
- (void)rootFolderControllerWantsHomeScreenWallpaperViewControllerPresented:(id)a3;
- (void)rootFolderPageStateProvider:(id)a3 didContinueTransitionToState:(int64_t)a4 progress:(double)a5;
- (void)rootFolderPageStateProvider:(id)a3 didEndTransitionFromState:(int64_t)a4 toState:(int64_t)a5 successfully:(BOOL)a6;
- (void)rootFolderPageStateProvider:(id)a3 willBeginTransitionToState:(int64_t)a4 animated:(BOOL)a5 interactive:(BOOL)a6;
- (void)rootFolderPageStateProvider:(id)a3 willEndTransitionToState:(int64_t)a4 successfully:(BOOL)a5;
- (void)runDownloadingIconTest;
- (void)runRemoveAndRestoreIconTest;
- (void)saveGridPath:(id)a3 asPriorLocationBeforeResizeForIcon:(id)a4;
- (void)saveOriginalIconStateForWidgetDiscoverability;
- (void)scrollToDefaultWidgets;
- (void)scrollToIconListContainingIcon:(id)a3 animate:(BOOL)a4;
- (void)setAnimatingFolderCreation:(BOOL)a3;
- (void)setAnimatingFolderOpeningOrClosing:(BOOL)a3;
- (void)setContentVisibility:(unint64_t)a3;
- (void)setEditing:(BOOL)a3 forIconLocation:(id)a4;
- (void)setEditing:(BOOL)a3 fromIconListView:(id)a4;
- (void)setEditing:(BOOL)a3 fromIconView:(id)a4;
- (void)setEditing:(BOOL)a3 withFeedbackBehavior:(id)a4 location:(CGPoint)a5;
- (void)setFloatingDockViewController:(id)a3;
- (void)setIconModel:(id)a3;
- (void)setIconStylePickerVisible:(BOOL)a3;
- (void)setIconToReveal:(id)a3 revealingPrevious:(BOOL)a4;
- (void)setIdleModeText:(id)a3;
- (void)setLeadingCustomViewControllers:(id)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setListLayoutProvider:(id)a3 animated:(BOOL)a4;
- (void)setListLayoutProviderLayoutOptions:(unint64_t)a3 animated:(BOOL)a4;
- (void)setMainDisplayLibraryViewVisibilityTransitioning:(BOOL)a3;
- (void)setMainDisplayLibraryViewVisible:(BOOL)a3;
- (void)setMainDisplayLibraryViewVisible:(BOOL)a3 libraryViewTransitioning:(BOOL)a4;
- (void)setOverlayCoverSheetTodayViewController:(id)a3;
- (void)setOverlayCoverSheetTodayViewVisible:(BOOL)a3;
- (void)setOverlayLibraryViewController:(id)a3;
- (void)setOverlayTodayViewController:(id)a3;
- (void)setOverlayTodayViewVisibilityTransitioning:(BOOL)a3;
- (void)setOverlayTodayViewVisible:(BOOL)a3;
- (void)setOverlayTodayViewVisible:(BOOL)a3 todayViewTransitioning:(BOOL)a4;
- (void)setPrefersFlatImageLayers:(BOOL)a3;
- (void)setPreviewInteractingIconView:(id)a3;
- (void)setRootFolder:(id)a3;
- (void)setRootFolderController:(id)a3;
- (void)setTemporaryIntent:(id)a3 forIconWithIdentifier:(id)a4 widgetUniqueIdentifier:(id)a5;
- (void)setTrailingCustomViewControllers:(id)a3;
- (void)setUsageMonitoringEnabled:(BOOL)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)setupHomeScreenForWidgetScrollPerformanceTest;
- (void)shuffleWidgetStackForTestRecipe;
- (void)stylePickerViewController:(id)a3 didUpdateDesiredDetent:(double)a4;
- (void)stylePickerViewController:(id)a3 didUpdateHomeScreenConfiguration:(id)a4;
- (void)stylePickerViewControllerDidFinish:(id)a3;
- (void)tearDownAndResetRootIconLists;
- (void)todayViewController:(id)a3 didChangePresentationProgress:(double)a4 newPresentationProgress:(double)a5 fromLeading:(BOOL)a6;
- (void)toggleHomeScreenWallpaperDim:(id)a3;
- (void)toggleSuggestedWidgetInStackForTestRecipe;
- (void)tryScrollToIconToRevealAnimated:(BOOL)a3;
- (void)undoChangeWithPreparation:(id)a3;
- (void)undoDefaultTVWidget;
- (void)undoDefaultWidgets:(BOOL)a3;
- (void)undoPreparation:(id)a3 registerWithUndoManager:(id)a4 actionName:(id)a5 observer:(id)a6;
- (void)uninstallIcon:(id)a3 animate:(BOOL)a4 completion:(id)a5;
- (void)unscatterAnimated:(BOOL)a3 afterDelay:(double)a4 withCompletion:(id)a5;
- (void)updateAppPredictionViewControllersWithListLayoutProvider:(id)a3 oldListLayoutProvider:(id)a4 animated:(BOOL)a5;
- (void)updateIconViewAccessoryVisibility;
- (void)updateLargeIconsEnabledForAppPredictionViewController:(id)a3 animated:(BOOL)a4;
- (void)updatePronouncedContainerViewVisibility:(BOOL)a3 vertical:(BOOL)a4;
- (void)updateVisibleIconsToShowLeafIcons:(id)a3 hideLeafIcons:(id)a4;
- (void)updateWidgetDiscoverabilityUserPreferencesByDeletingWidget:(id)a3;
- (void)updateWidgetViewControllersWithCustomDisplayConfiguration:(id)a3;
- (void)updateWidgetViewControllersWithRenderScheme:(id)a3;
- (void)widgetHostViewController:(id)a3 requestsLaunch:(id)a4;
- (void)widgetHostViewControllerUsesSystemBackgroundMaterialDidChange:(id)a3;
- (void)widgetStackViewController:(id)a3 didActivateDataSource:(id)a4 fromUserInteraction:(BOOL)a5;
- (void)widgetStackViewController:(id)a3 didFinishUsingBackgroundView:(id)a4;
- (void)widgetStackViewController:(id)a3 didRemoveViewController:(id)a4;
- (void)widgetStackViewControllerDidFlashPageControl:(id)a3;
@end

@implementation SBHIconManager

- (BOOL)isShowingPullDownSearch
{
  v2 = [(SBHIconManager *)self rootFolderController];
  v3 = [v2 isPullDownSearchVisible];

  return v3;
}

- (unint64_t)effectiveRootFolderControllerContentVisibility
{
  v3 = [(SBHIconManager *)self contentVisibility];
  if (SBHContentVisibilityIsVisible(v3))
  {
    if ([(SBHIconManager *)self isOverlayTodayViewVisible]&& ![(SBHIconManager *)self isOverlayTodayViewVisibilityTransitioning])
    {
      v3 = 1;
    }

    if ([(SBHIconManager *)self isMainDisplayLibraryViewVisible])
    {
      if (![(SBHIconManager *)self isMainDisplayLibraryViewVisibilityTransitioning])
      {
        v4 = [(SBHIconManager *)self trailingLibraryViewController];

        if (!v4)
        {
          return 1;
        }
      }
    }
  }

  return v3;
}

- (BOOL)isShowingModalInteraction
{
  v3 = [(SBHIconManager *)self currentConfiguringIconView];

  if (v3)
  {
    return 1;
  }

  v4 = [(SBHIconManager *)self currentPersonDetailInteraction];

  if (v4)
  {
    return 1;
  }

  return [(SBHIconManager *)self isIconStylePickerVisible];
}

- (BOOL)isEditing
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  if (self->_editing)
  {
    v2 = 1;
  }

  else
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __27__SBHIconManager_isEditing__block_invoke;
    v4[3] = &unk_1E808FD98;
    v4[4] = &v5;
    [(SBHIconManager *)self enumerateEditableViewControllersUsingBlock:v4];
    v2 = *(v6 + 24);
  }

  _Block_object_dispose(&v5, 8);
  return v2 & 1;
}

uint64_t __27__SBHIconManager_isEditing__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 isEditing];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (id)_libraryViewControllers
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 libraryViewControllersForIconManager:self];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(SBHIconManager *)self overlayLibraryViewController];
  if (v5 && ([v4 containsObject:v5] & 1) == 0)
  {
    if (v4)
    {
      v6 = [v4 arrayByAddingObject:v5];

      v4 = v6;
    }

    else
    {
      v8[0] = v5;
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    }
  }

  return v4;
}

- (SBHIconManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)areAnyIconShareSheetsShowing
{
  v2 = [(SBHIconManager *)self iconShareSheetManager];
  v3 = [v2 areAnyAppIconShareSheetsShowing];

  return v3;
}

- (id)leadingTodayViewController
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(SBHIconManager *)self leadingCustomViewControllers];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v11 + 1) + 8 * v6);
      v8 = (objc_opt_respondsToSelector() & 1) != 0 ? v7 : 0;
      v9 = v8;

      if (v9)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v7 = 0;
  }

  return v7;
}

- (BOOL)isMainDisplayLibraryViewVisible
{
  if (self->_mainDisplayLibraryViewVisible)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v4 = [(SBHIconManager *)self trailingLibraryViewController];
    v2 = (v4 != 0) & [(SBHIconManager *)self isShowingOrTransitioningToTrailingCustomView];
  }

  return v2;
}

- (id)_currentFolderController
{
  v3 = [(SBHIconManager *)self openedFolderController];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(SBHIconManager *)self rootFolderController];
  }

  v6 = v5;

  return v6;
}

- (SBFolderController)openedFolderController
{
  v3 = [(SBHIconManager *)self floatingDockViewController];
  v4 = [v3 presentedFolderController];

  if (!v4)
  {
    v5 = [(SBHIconManager *)self rootFolderController];
    v4 = [v5 deepestFolderController];
  }

  return v4;
}

- (BOOL)isShowingOrTransitioningToTrailingCustomView
{
  v2 = [(SBHIconManager *)self rootFolderController];
  v3 = [v2 isTrailingCustomViewVisibleOrTransitionDestination];

  return v3;
}

- (id)trailingLibraryViewController
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(SBHIconManager *)self trailingCustomViewControllers];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = objc_opt_self();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)isTodayViewEffectivelyVisible
{
  v3 = [(SBHIconManager *)self isOverlayTodayViewVisible];
  v4 = [(SBHIconManager *)self isCustomLeadingViewTodayView];
  if (v4)
  {
    LOBYTE(v4) = [(SBHIconManager *)self isShowingLeadingCustomView];
  }

  return v3 || v4;
}

- (void)clearHighlightedIcon
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [(SBHIconManager *)self highlightedIconView];
  if (v3)
  {
    v4 = SBLogIcon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_INFO, "Clearing highlight from icon view: %@", &v5, 0xCu);
    }

    [v3 setHighlighted:0];
    [(SBHIconManager *)self setHighlightedIconView:0];
  }
}

- (BOOL)isCustomLeadingViewTodayView
{
  v2 = [(SBHIconManager *)self leadingTodayViewController];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_isShowingSearchableLeadingCustomView
{
  v2 = [(SBHIconManager *)self rootFolderController];
  v3 = [v2 isOnLeadingCustomPage];

  return v3;
}

- (BOOL)isPerformingCancelledExpandTransition
{
  v3 = [(SBHIconManager *)self isTransitioning];
  if (v3)
  {
    v3 = [(SBHomeScreenIconTransitionAnimator *)self->_currentTransitionAnimator isCancelled];
    if (v3)
    {
      LOBYTE(v3) = [(SBHomeScreenIconTransitionAnimator *)self->_currentTransitionAnimator currentOperation]== 1;
    }
  }

  return v3;
}

- (BOOL)isTransitioning
{
  v2 = [(SBHIconManager *)self currentTransitionAnimator];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)hasOpenFolder
{
  v3 = [(SBHIconManager *)self floatingDockViewController];
  if ([v3 isPresentingFolder])
  {
    v4 = 1;
  }

  else if ([(SBHIconManager *)self hasRootFolderController])
  {
    v5 = [(SBHIconManager *)self rootViewController];
    v6 = [v5 deepestFolderController];

    if (v6)
    {
      v4 = 1;
    }

    else
    {
      v7 = [(SBHIconManager *)self rootFolderController];
      v8 = [v7 deepestFolderController];

      if (v8)
      {
        v4 = 1;
      }

      else
      {
        v9 = [(SBHIconManager *)self _currentFolderController];
        v10 = [v9 deepestFolderController];
        v4 = v10 != 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasRootFolderController
{
  v2 = [(SBHIconManager *)self rootFolderController];
  v3 = v2 != 0;

  return v3;
}

- (id)_effectiveAppPredictionViewControllersForUniqueIdentifier
{
  appPredictionViewControllersForUniqueIdentifier = self->_appPredictionViewControllersForUniqueIdentifier;
  if (!appPredictionViewControllersForUniqueIdentifier)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = self->_appPredictionViewControllersForUniqueIdentifier;
    self->_appPredictionViewControllersForUniqueIdentifier = v4;

    appPredictionViewControllersForUniqueIdentifier = self->_appPredictionViewControllersForUniqueIdentifier;
  }

  return appPredictionViewControllersForUniqueIdentifier;
}

- (id)homescreenIconImageViewMap
{
  homescreenIconImageViewMap = self->_homescreenIconImageViewMap;
  if (!homescreenIconImageViewMap)
  {
    v4 = [[SBHReusableViewMap alloc] initWithDelegate:self];
    v5 = self->_homescreenIconImageViewMap;
    self->_homescreenIconImageViewMap = v4;

    [(SBHReusableViewMap *)self->_homescreenIconImageViewMap addRecycledViewsOfClass:objc_opt_class() upToCount:24];
    homescreenIconImageViewMap = self->_homescreenIconImageViewMap;
  }

  return homescreenIconImageViewMap;
}

- (id)widgetBackgroundViewMap
{
  widgetBackgroundViewMap = self->_widgetBackgroundViewMap;
  if (!widgetBackgroundViewMap)
  {
    v4 = [[SBHReusableViewMap alloc] initWithDelegate:self];
    v5 = self->_widgetBackgroundViewMap;
    self->_widgetBackgroundViewMap = v4;

    [(SBHReusableViewMap *)self->_widgetBackgroundViewMap addRecycledViewsOfClass:objc_opt_class() upToCount:2];
    widgetBackgroundViewMap = self->_widgetBackgroundViewMap;
  }

  return widgetBackgroundViewMap;
}

- (id)homescreenIconAccessoryViewMap
{
  homescreenIconAccessoryViewMap = self->_homescreenIconAccessoryViewMap;
  if (!homescreenIconAccessoryViewMap)
  {
    v4 = [[SBHReusableViewMap alloc] initWithDelegate:self];
    v5 = self->_homescreenIconAccessoryViewMap;
    self->_homescreenIconAccessoryViewMap = v4;

    homescreenIconAccessoryViewMap = self->_homescreenIconAccessoryViewMap;
  }

  return homescreenIconAccessoryViewMap;
}

- (id)_effectiveTodayViewController
{
  if ([(SBHIconManager *)self isTodayViewEffectivelyVisible])
  {
    v3 = [(SBHIconManager *)self leadingTodayViewController];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = [(SBHIconManager *)self overlayTodayViewController];
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (UIImpactFeedbackGenerator)iconEditingFeedbackBehavior
{
  iconEditingFeedbackBehavior = self->_iconEditingFeedbackBehavior;
  if (!iconEditingFeedbackBehavior)
  {
    v4 = [(SBHIconManager *)self rootViewController];
    v5 = [v4 view];
    [(SBHIconManager *)self configureFeedbackView:v5];

    iconEditingFeedbackBehavior = self->_iconEditingFeedbackBehavior;
  }

  return iconEditingFeedbackBehavior;
}

- (BOOL)_isShowingPullDownSearchOrTransitioning
{
  v3 = [(SBHIconManager *)self rootFolderController];
  if ([v3 isPullDownSearchVisibleOrTransitioning])
  {
    v4 = [(SBHIconManager *)self rootFolderController];
    v5 = [v4 isOnLeadingCustomPage] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)_isShowingLeadingCustomViewSearchOrTransitioning
{
  v2 = [(SBHIconManager *)self rootFolderController];
  v3 = [v2 isLeadingCustomViewSearchVisibleOrTransitioning];

  return v3;
}

- (BOOL)isFolderScrolling
{
  v2 = [(SBHIconManager *)self openedFolderController];
  v3 = [v2 isScrolling];

  return v3;
}

- (BOOL)isRootFolderScrolling
{
  v2 = [(SBHIconManager *)self rootViewController];
  v3 = [v2 isScrolling];

  return v3;
}

- (void)cancelAllFolderScrolling
{
  if ([(SBHIconManager *)self isScrolling])
  {
    v3 = [(SBHIconManager *)self rootViewController];
    [v3 cancelScrolling];
  }
}

- (BOOL)isScrolling
{
  if ([(SBHIconManager *)self isRootFolderScrolling])
  {
    return 1;
  }

  return [(SBHIconManager *)self isFolderScrolling];
}

- (SBIconLabelImageCache)iconLabelImageCache
{
  labelImageCache = self->_labelImageCache;
  if (labelImageCache)
  {
    v3 = labelImageCache;
  }

  else if (self->_listLayoutProvider && self->_iconModel && ([(SBHIconManager *)self rootFolderController], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(SBHIconManager *)self rootFolderController];
    v7 = [v6 traitCollection];
    [v7 displayScale];
    v9 = v8;

    v10 = [v6 traitCollection];
    v11 = [v10 preferredContentSizeCategory];

    v12 = [(SBHIconManager *)self listLayoutProvider];
    v13 = [v12 layoutForIconLocation:@"SBIconLocationRoot"];

    [(objc_class *)[(SBHIconManager *)self iconViewClass] maxLabelSizeForListLayout:v13 contentSizeCategory:v11 options:0];
    v16 = [[SBIconLabelImageCache alloc] initWithMaxLabelSize:v14 scale:v15, v9];
    v17 = self->_labelImageCache;
    self->_labelImageCache = v16;

    v18 = self->_labelImageCache;
    v19 = [(SBHIconManager *)self legibilitySettings];
    [(SBIconLabelImageCache *)v18 setLegibilitySettings:v19];

    v3 = self->_labelImageCache;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isShowingPullDownSearchOrTransitioningToVisible
{
  v2 = [(SBHIconManager *)self rootFolderController];
  v3 = [v2 isPullDownSearchVisibleOrTransitioningToVisible];

  return v3;
}

- (BOOL)isPerformingExpandTransition
{
  if (![(SBHIconManager *)self isTransitioning])
  {
    return 0;
  }

  v3 = [(SBHIconManager *)self currentTransitionAnimator];
  v4 = [v3 currentOperation] == 0;

  return v4;
}

- (id)iconLocationForListsWithNonDefaultSizedIcons
{
  v2 = [(SBHIconManager *)self listLayoutProvider];
  v3 = [objc_opt_class() defaultIconLocationForListsWithNonDefaultSizedIcons];
  v4 = [v2 layoutForIconLocation:@"SBIconLocationRoot"];
  v5 = [v2 layoutForIconLocation:v3];
  v6 = SBHIconListLayoutListGridSize(v4, 1);
  v7 = SBHIconListLayoutListGridSize(v5, 1);
  [v4 layoutInsetsForOrientation:1];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v5 layoutInsetsForOrientation:1];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = SBHIconGridSizeEqualToIconGridSize(v6, v7);
  v25 = v3;
  if (v24)
  {
    if (v13 == v21 && v15 == v23 && v9 == v17 && v11 == v19)
    {
      v25 = @"SBIconLocationRoot";
    }

    else
    {
      v25 = v3;
    }
  }

  v29 = v25;

  return v25;
}

- (BOOL)hasAnimatingFolder
{
  if ([(SBHIconManager *)self isAnimatingFolderOpeningOrClosing])
  {
    return 1;
  }

  return [(SBHIconManager *)self isAnimatingFolderCreation];
}

- (BOOL)isIconDragging
{
  v2 = [(SBHIconManager *)self iconDragManager];
  v3 = [v2 isIconDragging];

  return v3;
}

- (BOOL)isTransitioningHomeScreenState
{
  v2 = [(SBHIconManager *)self rootFolderController];
  v3 = [v2 isTransitioningPageState];

  return v3;
}

- (id)iconViewMap
{
  iconViewMap = self->_iconViewMap;
  if (!iconViewMap)
  {
    v4 = [[SBHReusableViewMap alloc] initWithDelegate:self];
    v5 = self->_iconViewMap;
    self->_iconViewMap = v4;

    v6 = [(SBHIconManager *)self listLayoutProvider];
    v7 = [v6 layoutForIconLocation:@"SBIconLocationRoot"];

    -[SBHReusableViewMap addRecycledViewsOfClass:upToCount:](self->_iconViewMap, "addRecycledViewsOfClass:upToCount:", -[SBHIconManager iconViewClass](self, "iconViewClass"), ([v7 numberOfColumnsForOrientation:1] + 2) * objc_msgSend(v7, "numberOfRowsForOrientation:", 1));
    iconViewMap = self->_iconViewMap;
  }

  return iconViewMap;
}

- (BOOL)isShowingSpotlightOrLeadingCustomView
{
  if ([(SBHIconManager *)self isShowingPullDownSearchOrTransitioningToVisible])
  {
    return 1;
  }

  return [(SBHIconManager *)self _isShowingSearchableLeadingCustomView];
}

- (BOOL)iconsShouldAllowCloseBoxes
{
  v2 = [(SBHIconManager *)self iconDragManager];
  v3 = [v2 isTrackingMultipleItemIconDrags];

  return v3 ^ 1;
}

- (BOOL)isEditingAllowed
{
  v3 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 isEditingAllowedForIconManager:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)gridSizeClassDomain
{
  v2 = [(SBHIconManager *)self iconModel];
  v3 = [v2 gridSizeClassDomain];

  return v3;
}

- (id)_effectiveWidgetMultiplexingManager
{
  if (!self->_widgetMultiplexingManagersForLayoutOptions)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    widgetMultiplexingManagersForLayoutOptions = self->_widgetMultiplexingManagersForLayoutOptions;
    self->_widgetMultiplexingManagersForLayoutOptions = v3;
  }

  v5 = _SBHLayoutOptionsKeyTypeForListLayoutProvider(self->_listLayoutProvider);
  v6 = [(NSMutableDictionary *)self->_widgetMultiplexingManagersForLayoutOptions objectForKey:v5];
  if (!v6)
  {
    v6 = [[SBHMultiplexingManager alloc] initWithDelegate:self];
    [(SBHMultiplexingManager *)v6 setCachedRecentViewControllerCountLimit:10];
    [(NSMutableDictionary *)self->_widgetMultiplexingManagersForLayoutOptions setObject:v6 forKey:v5];
  }

  return v6;
}

- (CHSWidgetExtensionProvider)widgetExtensionProvider
{
  widgetExtensionProvider = self->_widgetExtensionProvider;
  if (!widgetExtensionProvider)
  {
    v4 = [(SBHWidgetMetricsProvider *)self->_widgetMetricsProvider systemDefaultMetricsSpecification];
    v5 = [MEMORY[0x1E695DFA8] set];
    pendingWidgetIntentConfigurationInitializations = self->_pendingWidgetIntentConfigurationInitializations;
    self->_pendingWidgetIntentConfigurationInitializations = v5;

    v7 = objc_alloc_init(MEMORY[0x1E69943C0]);
    v8 = self->_widgetExtensionProvider;
    self->_widgetExtensionProvider = v7;

    [(CHSWidgetExtensionProvider *)self->_widgetExtensionProvider registerObserver:self];
    widgetExtensionProvider = self->_widgetExtensionProvider;
  }

  return widgetExtensionProvider;
}

- (void)_restartEditingEndTimer
{
  if (![(NSCountedSet *)self->_reasonsToNotRestartEditingTimer count])
  {
    v3 = [(SBHIconManager *)self editingEndTimer];
    [v3 invalidate];

    if ([(SBHIconManager *)self isEditing]&& ![(SBHIconManager *)self isIconDragging])
    {
      objc_initWeak(&location, self);
      v5 = MEMORY[0x1E695DFF0];
      v6 = MEMORY[0x1E69E9820];
      v7 = 3221225472;
      v8 = __41__SBHIconManager__restartEditingEndTimer__block_invoke;
      v9 = &unk_1E808BC98;
      objc_copyWeak(&v10, &location);
      v4 = [v5 scheduledTimerWithTimeInterval:0 repeats:&v6 block:30.0];
      [v4 setTolerance:{10.0, v6, v7, v8, v9}];
      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }

    else
    {
      v4 = 0;
    }

    [(SBHIconManager *)self setEditingEndTimer:v4];
  }
}

- (void)_noteUserIsInteractingWithIcons
{
  v3 = [(SBHIconManager *)self rootViewController];
  [v3 noteUserIsInteractingWithIcons];

  [(SBHIconManager *)self _restartEditingEndTimer];
}

- (id)homescreenIconLabelAccessoryViewMap
{
  homescreenIconLabelAccessoryViewMap = self->_homescreenIconLabelAccessoryViewMap;
  if (!homescreenIconLabelAccessoryViewMap)
  {
    v4 = [[SBHReusableViewMap alloc] initWithDelegate:self];
    v5 = self->_homescreenIconLabelAccessoryViewMap;
    self->_homescreenIconLabelAccessoryViewMap = v4;

    homescreenIconLabelAccessoryViewMap = self->_homescreenIconLabelAccessoryViewMap;
  }

  return homescreenIconLabelAccessoryViewMap;
}

- (BOOL)_isShowingOrTransitioningToSearchableLeadingCustomView
{
  v2 = [(SBHIconManager *)self rootFolderController];
  v3 = [v2 isLeadingCustomViewVisibleOrTransitionDestination];

  return v3;
}

- (SBHIconManager)init
{
  v70[1] = *MEMORY[0x1E69E9840];
  v67.receiver = self;
  v67.super_class = SBHIconManager;
  v2 = [(SBHIconManager *)&v67 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69D4030]);
    v4 = *(v2 + 120);
    *(v2 + 120) = v3;

    v5 = +[SBHLegibilitySettings defaultLegibilitySettings];
    v6 = *(v2 + 64);
    *(v2 + 64) = v5;

    v7 = objc_alloc_init(SBHDefaultIconListLayoutProvider);
    v8 = *(v2 + 79);
    *(v2 + 79) = v7;

    v9 = objc_alloc_init(SBHWidgetMetricsProvider);
    v10 = *(v2 + 122);
    *(v2 + 122) = v9;

    [*(v2 + 122) setDelegate:v2];
    v11 = [*(v2 + 79) layoutForIconLocation:@"SBIconLocationDock"];
    v12 = SBHIconListLayoutMaximumIconCount(v11);
    v13 = [*(v2 + 79) layoutForIconLocation:@"SBIconLocationRoot"];
    v14 = 3 * SBHIconListLayoutMaximumIconCount(v13);
    v15 = [*(v2 + 79) layoutForIconLocation:@"SBIconLocationFolder"];
    *(v2 + 10) = v14 + v12 + SBHIconListLayoutMaximumIconCount(v15);

    v16 = objc_alloc_init(SBIconDragManager);
    v17 = *(v2 + 84);
    *(v2 + 84) = v16;

    [*(v2 + 84) setDelegate:v2];
    v18 = [[SBHIconShareSheetManager alloc] initWithIconManager:v2];
    v19 = *(v2 + 85);
    *(v2 + 85) = v18;

    v20 = [[SBHFocusModeManager alloc] initWithIconManager:v2];
    v21 = *(v2 + 77);
    *(v2 + 77) = v20;

    v22 = objc_alloc(MEMORY[0x1E698E6A8]);
    v23 = [v22 initWithName:@"com.apple.SpringBoardHome.iconManager.transitions" onQueue:MEMORY[0x1E69E96A0]];
    v24 = *(v2 + 93);
    *(v2 + 93) = v23;

    v25 = SBFEffectiveHomeButtonType();
    v26 = 1;
    v27 = 1;
    v2[488] = v25 == 2;
    if (v25 != 2)
    {
      v28 = [MEMORY[0x1E69DC938] currentDevice];
      v29 = [v28 userInterfaceIdiom];

      v27 = (v29 & 0xFFFFFFFFFFFFFFFBLL) == 1;
    }

    v2[488] = v27;
    v2[489] = 1;
    v30 = +[SBHHomeScreenDomain rootSettings];
    v31 = *(v2 + 95);
    *(v2 + 95) = v30;

    [*(v2 + 95) addKeyObserver:v2];
    v32 = [*(v2 + 95) rootFolderSettings];
    v33 = *(v2 + 96);
    *(v2 + 96) = v32;

    [*(v2 + 96) addKeyObserver:v2];
    v34 = [*(v2 + 95) iconSettings];
    v35 = [v34 badgeParallaxSettings];
    v36 = *(v2 + 104);
    *(v2 + 104) = v35;

    [*(v2 + 104) addKeyObserver:v2];
    v37 = +[SBHHomeScreenDomain rootSettings];
    v38 = [v37 widgetIntroductionSettings];
    v39 = *(v2 + 106);
    *(v2 + 106) = v38;

    [*(v2 + 106) addKeyObserver:v2];
    objc_storeStrong(v2 + 125, @"SBHIconGridSizeClassSmall");
    objc_storeStrong(v2 + 127, @"SBHIconGridSizeClassSmall");
    v40 = [*(v2 + 95) legibilityLabelSettings];
    v41 = *(v2 + 107);
    *(v2 + 107) = v40;

    [*(v2 + 107) addKeyObserver:v2];
    *(v2 + 65) = 0;
    *(v2 + 505) = 257;
    if ((MGGetBoolAnswer() & 1) == 0)
    {
      v26 = SBHPerformanceFlagEnabled(0);
    }

    v2[493] = v26;
    if (SBHPerformanceFlagEnabled(1))
    {
      v42 = +[SBHLightSourceManager sharedManager];
      v43 = [v42 pauseUpdatesForReason:@"performanceFlagDisableSpecularEverywhere"];
      v44 = *(v2 + 117);
      *(v2 + 117) = v43;
    }

    v45 = [MEMORY[0x1E696AD88] defaultCenter];
    [v45 addObserver:v2 selector:sel__reduceTransparencyStatusDidChange_ name:*MEMORY[0x1E69DD920] object:0];
    [v45 addObserver:v2 selector:sel__sizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
    [v2 _setupStateCaptureHandleIfNeeded];
    v46 = objc_alloc_init(SBHWidgetIntroductionFeatureIntroductionItem);
    v47 = *(v2 + 130);
    *(v2 + 130) = v46;

    [*(v2 + 130) setIconManager:v2];
    v48 = objc_alloc_init(SBHFeatureIntroductionManager);
    v49 = *(v2 + 78);
    *(v2 + 78) = v48;

    [*(v2 + 78) addFeatureIntroductionItem:*(v2 + 130) atLocations:14];
    v50 = [MEMORY[0x1E698B0F0] subjectMonitorRegistry];
    v51 = [v50 addMonitor:v2 subjectMask:1 subscriptionOptions:1];
    objc_storeWeak(v2 + 87, v51);

    v52 = objc_alloc_init(SBHIconViewApplicationShortcutsContextMenuProvider);
    [(SBHIconViewApplicationShortcutsContextMenuProvider *)v52 setDelegate:v2];
    v53 = [SBHIconViewContextMenuManager alloc];
    v70[0] = v52;
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:1];
    v55 = [(SBHIconViewContextMenuManager *)v53 initWithContextMenuActionProviders:v54 previewProviders:0];
    v56 = *(v2 + 88);
    *(v2 + 88) = v55;

    v57 = [MEMORY[0x1E69DC938] currentDevice];
    v58 = [v57 userInterfaceIdiom];

    if ((v58 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v59 = objc_alloc_init(SBHOpenApplicationWindowsContextMenuProvider);
      [(SBHOpenApplicationWindowsContextMenuProvider *)v59 setDelegate:v2];
      v60 = objc_alloc_init(SBHRecentDocumentsContextMenuProvider);
      [(SBHRecentDocumentsContextMenuProvider *)v60 setDelegate:v2];
      v61 = *(v2 + 88);
      v69[0] = v60;
      v69[1] = v59;
      v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:2];
      [v61 addContextMenuActionProviders:v62];

      v63 = objc_alloc_init(SBHIconViewFileStackConfigurationContextMenuProvider);
      [(SBHIconViewFileStackConfigurationContextMenuProvider *)v63 setDelegate:v2];
      v64 = *(v2 + 88);
      v68 = v63;
      v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
      [v64 addContextMenuActionProviders:v65];
    }

    [*(v2 + 88) setDelegate:v2];
  }

  return v2;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_stateCaptureHandle invalidate];
  [(SBIconLabelImageCache *)self->_labelImageCache invalidate];
  labelImageCache = self->_labelImageCache;
  self->_labelImageCache = 0;

  WeakRetained = objc_loadWeakRetained(&self->_appPrototectionSubjectMonitorSubscription);
  [WeakRetained invalidate];

  [(BSInvalidatable *)self->_performanceFlagDisableLightAngleUpdatesAssertion invalidate];
  v5.receiver = self;
  v5.super_class = SBHIconManager;
  [(SBHIconManager *)&v5 dealloc];
}

- (SBSearchGesture)searchGesture
{
  v2 = [(SBHIconManager *)self rootFolderController];
  v3 = [v2 searchGesture];

  return v3;
}

- (int64_t)interfaceOrientation
{
  v3 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 interfaceOrientationForIconManager:self];
  }

  else
  {
    v5 = [(SBHIconManager *)self rootViewController];
    v6 = v5;
    if (v5)
    {
      v4 = [v5 orientation];
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (unint64_t)allowedInterfaceOrientations
{
  v3 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 allowedInterfaceOrientationsForIconManager:self];
  }

  else
  {
    v4 = 30;
  }

  return v4;
}

- (unint64_t)possibleInterfaceOrientations
{
  v3 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 possibleInterfaceOrientationsForIconManager:self];
  }

  else
  {
    v4 = 30;
  }

  return v4;
}

- (void)noteInterfaceOrientationChanged
{
  if ([(SBHIconManager *)self hasRootViewController])
  {
    v5 = [(SBHIconManager *)self rootFolderController];
    v3 = [(SBHIconManager *)self interfaceOrientation];
    [v5 setOrientation:v3];
    v4 = [v5 folderView];
    [v4 setOrientation:v3];
  }
}

- (id)primaryWindowScene
{
  v3 = [(SBHIconManager *)self rootFolderController];
  v4 = [v3 view];
  v5 = [v4 window];

  v6 = [v5 windowScene];
  if (!v6)
  {
    v7 = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v6 = [v7 primaryWindowSceneForIconManager:self];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)hasRootViewController
{
  v2 = [(SBHIconManager *)self rootViewController];
  v3 = v2 != 0;

  return v3;
}

- (void)setIconModel:(id)a3
{
  v5 = a3;
  if (self->_iconModel != v5)
  {
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 removeObserver:self name:@"SBIconModelWillLayoutIconStateNotification" object:self->_iconModel];
    [v6 removeObserver:self name:@"SBIconModelDidLayoutIconStateNotification" object:self->_iconModel];
    [v6 removeObserver:self name:@"SBIconModelVisibilityDidChangeNotification" object:self->_iconModel];
    [(SBHIconManager *)self _endObservingLeafIconsInModel:self->_iconModel];
    v7 = [(SBHIconModel *)self->_iconModel rootFolder];
    [v7 removeFolderObserver:self];

    v8 = [(SBHIconModel *)self->_iconModel delegate];

    if (v8 == self)
    {
      [(SBHIconModel *)self->_iconModel setDelegate:0];
    }

    [(SBHIconManager *)self _prepareToResetRootIconLists];
    homescreenIconAccessoryViewMap = self->_homescreenIconAccessoryViewMap;
    self->_homescreenIconAccessoryViewMap = 0;

    homescreenIconLabelAccessoryViewMap = self->_homescreenIconLabelAccessoryViewMap;
    self->_homescreenIconLabelAccessoryViewMap = 0;

    homescreenIconImageViewMap = self->_homescreenIconImageViewMap;
    self->_homescreenIconImageViewMap = 0;

    [(SBIconLabelImageCache *)self->_labelImageCache invalidate];
    labelImageCache = self->_labelImageCache;
    self->_labelImageCache = 0;

    [(SBHIconManager *)self resetAllIconImageCaches];
    folderIconImageCache = self->_folderIconImageCache;
    self->_folderIconImageCache = 0;

    objc_storeStrong(&self->_iconModel, a3);
    if ([(SBHIconManager *)self ownsIconModel])
    {
      [(SBHIconModel *)self->_iconModel setDelegate:self];
    }

    [v6 addObserver:self selector:sel__iconModelWillLayout_ name:@"SBIconModelWillLayoutIconStateNotification" object:self->_iconModel];
    [v6 addObserver:self selector:sel__iconModelDidLayout_ name:@"SBIconModelDidLayoutIconStateNotification" object:self->_iconModel];
    [v6 addObserver:self selector:sel__iconVisibilityChanged_ name:@"SBIconModelVisibilityDidChangeNotification" object:self->_iconModel];
    [(SBHIconModel *)self->_iconModel layoutIfNeeded];
    v14 = [(SBHIconModel *)self->_iconModel rootFolder];
    [(SBHIconManager *)self setRootFolder:v14];
    v15 = [(SBHIconManager *)self _rootFolderForRootViewControllerForRootFolder:v14];
    v16 = [(SBHIconManager *)self rootViewController];
    [v16 setFolder:v15];

    [v6 postNotificationName:@"SBHIconManagerIconModelDidChange" object:self];
    [(SBHIconManager *)self _beginObservingLeafIconsInModel:self->_iconModel];
    v17 = *MEMORY[0x1E69DDA98];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __31__SBHIconManager_setIconModel___block_invoke;
    v22[3] = &unk_1E8088C90;
    v22[4] = self;
    [v17 _performBlockAfterCATransactionCommits:v22];
    [(SBHIconManager *)self noteRootFolderDidMutate];
    v18 = [(SBHIconManager *)self addWidgetSheetConfigurationManagerCreatingIfNecessary:0];
    [v18 setIconModel:v5];

    v19 = [(SBHIconManager *)self floatingDockViewController];
    v20 = [v14 dock];
    [v19 setDockListModel:v20];
    v21 = [v14 dockUtilities];
    [v19 setDockUtilitiesListModel:v21];
  }
}

- (void)setRootFolder:(id)a3
{
  v5 = a3;
  rootFolder = self->_rootFolder;
  if (rootFolder != v5)
  {
    v13 = v5;
    p_rootFolder = &self->_rootFolder;
    v8 = [(SBRootFolder *)rootFolder delegate];

    if (v8 == self)
    {
      [(SBRootFolder *)*p_rootFolder setDelegate:0];
    }

    [(SBFolder *)self->_rootFolder removeFolderObserver:self];
    v9 = [(SBFolder *)self->_rootFolder badgeBehaviorProvider];

    if (v9 == self)
    {
      [(SBFolder *)*p_rootFolder setBadgeBehaviorProvider:0];
    }

    objc_storeStrong(&self->_rootFolder, a3);
    if ([(SBHIconManager *)self ownsIconModel])
    {
      [(SBRootFolder *)self->_rootFolder setDelegate:self];
      [(SBFolder *)self->_rootFolder setBadgeBehaviorProvider:self];
    }

    [(SBFolder *)self->_rootFolder addFolderObserver:self];
    v10 = [(SBRootFolder *)v13 dock];
    v11 = [(SBHIconManager *)self floatingDockViewController];
    [v11 setDockListModel:v10];
    v12 = [(SBRootFolder *)v13 dockUtilities];
    [v11 setDockUtilitiesListModel:v12];

    v5 = v13;
  }

  MEMORY[0x1EEE66BB8](rootFolder, v5);
}

- (BOOL)relayout
{
  v3 = [(SBHIconManager *)self hasAnimatingFolder];
  if (v3)
  {
    [(SBHIconManager *)self setNeedsRelayout:1];
    v4 = SBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SBHIconManager relayout];
    }
  }

  else
  {
    v5 = [(SBHIconManager *)self iconModel];
    [v5 layout];

    [(SBHIconManager *)self setNeedsRelayout:0];
  }

  return !v3;
}

- (Class)iconViewClass
{
  v3 = objc_opt_self();
  v4 = [(SBHIconManager *)self isMemberOfClass:v3];

  if ((v4 & 1) != 0 || (subclassIconViewClass = self->_subclassIconViewClass) == 0 && (objc_opt_self(), v6 = objc_claimAutoreleasedReturnValue(), v7 = -[SBHIconManager controllerClassForFolderClass:](self, "controllerClassForFolderClass:", v6), v6, v8 = objc_alloc(-[objc_class listViewClass](v7, "listViewClass")), -[SBHIconManager listLayoutProvider](self, "listLayoutProvider"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v8 initWithModel:0 layoutProvider:v9 iconLocation:@"SBIconLocationFolder" orientation:1 iconViewProvider:0], v9, self->_subclassIconViewClass = objc_msgSend(v10, "baseIconViewClass"), v10, (subclassIconViewClass = self->_subclassIconViewClass) == 0))
  {
    subclassIconViewClass = objc_opt_self();
  }

  return subclassIconViewClass;
}

- (id)cachingImageStyleConfiguration
{
  v3 = [(SBHIconManager *)self rootViewController];
  v4 = [v3 traitCollection];
  v5 = [v4 sbh_iconImageStyleConfiguration];
  if (v5)
  {
    goto LABEL_5;
  }

  v6 = [(SBHIconManager *)self _fetchCurrentStyleConfiguration];
  if (!v6 || (v7 = v6, [SBHIconImageStyleConfiguration styleConfigurationWithHomeScreenConfiguration:v6], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v5 = +[SBHIconImageStyleConfiguration defaultStyleConfiguration];
LABEL_5:
    v8 = v5;
  }

  return v8;
}

- (id)cachingImageAppearances
{
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  v4 = [(SBHIconManager *)self rootViewController];
  v5 = [v4 traitCollection];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = MEMORY[0x1E69DD1B8];
    v8 = [(SBHIconManager *)self _fetchCurrentStyleConfiguration];
    v6 = [v7 sbh_traitCollectionWithHomeScreenStyleConfiguration:v8];

    if (!v6)
    {
      goto LABEL_11;
    }
  }

  if ([v6 sbh_automaticallyChangesWithUserInterfaceStyle])
  {
    if ([v6 userInterfaceStyle] == 2)
    {
      v9 = +[SBHIconImageAppearance darkAppearance];
      [v3 setObject:v9 forKey:@"primary"];

      +[SBHIconImageAppearance lightAppearance];
    }

    else
    {
      v12 = +[SBHIconImageAppearance lightAppearance];
      [v3 setObject:v12 forKey:@"primary"];

      +[SBHIconImageAppearance darkAppearance];
    }
    v10 = ;
    v11 = @"secondary";
  }

  else
  {
    v10 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:v6];
    v11 = @"primary";
  }

  [v3 setObject:v10 forKey:v11];

LABEL_11:
  if (![v3 count])
  {
    v13 = +[SBHIconImageAppearance defaultAppearance];
    [v3 setObject:v13 forKey:@"primary"];
  }

  return v3;
}

- (id)prioritizedCachingImageAppearances
{
  v2 = [(SBHIconManager *)self cachingImageAppearances];
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__SBHIconManager_prioritizedCachingImageAppearances__block_invoke;
  v6[3] = &unk_1E808FC08;
  v4 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

void __52__SBHIconManager_prioritizedCachingImageAppearances__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if ([a2 isEqualToString:@"primary"])
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(a1 + 32);
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
  [v7 setObject:v8 forKey:v5];
}

- (id)prioritizedCachingImageAppearancesForIconImageStyleConfiguration:(id)a3 priority:(int64_t)a4
{
  v6 = MEMORY[0x1E695DF90];
  v7 = a3;
  v8 = [[v6 alloc] initWithCapacity:2];
  v9 = [(SBHIconManager *)self rootFolderController];
  if (!v9)
  {
    v9 = [(SBHIconManager *)self primaryWindowScene];
  }

  v10 = [v9 traitCollection];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 userInterfaceStyle];
  }

  else
  {
    v12 = 1;
  }

  v13 = [v7 iconImageAppearanceWithUserInterfaceStyle:v12];
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v8 setObject:v14 forKey:v13];

  v15 = [v7 variant];
  if (v15 == 2)
  {
    v16 = [v13 appearanceType];
    if (v16 <= 2)
    {
      if (v16)
      {
        if (v16 == 1)
        {
          v17 = +[SBHIconImageAppearance lightAppearance];
        }

        else
        {
          if (v16 != 2)
          {
            goto LABEL_21;
          }

          v17 = +[SBHIconImageAppearance clearDarkAppearance];
        }
      }

      else
      {
        v17 = +[SBHIconImageAppearance darkAppearance];
      }

LABEL_19:
      v20 = v17;
      if (!v17)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    switch(v16)
    {
      case 3:
        v17 = +[SBHIconImageAppearance clearLightAppearance];
        goto LABEL_19;
      case 4:
        v18 = [v13 tintColor];
        v19 = [SBHIconImageAppearance tintedDarkAppearanceWithTintColor:v18];
        break;
      case 5:
        v18 = [v13 tintColor];
        v19 = [SBHIconImageAppearance tintedLightAppearanceWithTintColor:v18];
        break;
      default:
        goto LABEL_21;
    }

    v20 = v19;

    if (v20)
    {
LABEL_20:
      [v8 setObject:&unk_1F3DB2900 forKey:v20];
    }
  }

LABEL_21:

  return v8;
}

- (id)highPriorityCachingImageAppearancesForIconImageStyleConfiguration:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBHIconManager *)self rootFolderController];
  if (!v5)
  {
    v5 = [(SBHIconManager *)self primaryWindowScene];
  }

  v6 = [v5 traitCollection];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 userInterfaceStyle];
  }

  else
  {
    v8 = 1;
  }

  v9 = [v4 iconImageAppearanceWithUserInterfaceStyle:v8];
  v12[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

  return v10;
}

- (id)lowPriorityCachingImageAppearancesForIconImageStyleConfiguration:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBHIconManager *)self rootFolderController];
  if (!v5)
  {
    v5 = [(SBHIconManager *)self primaryWindowScene];
  }

  v6 = [v5 traitCollection];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 userInterfaceStyle];
  }

  else
  {
    v8 = 1;
  }

  v9 = [v4 iconImageAppearanceWithUserInterfaceStyle:v8];
  v10 = [v4 variant];

  if (v10 != 2)
  {
    goto LABEL_23;
  }

  v11 = [v9 appearanceType];
  v12 = MEMORY[0x1E695E0F0];
  if (v11 > 2)
  {
    if (v11 != 3)
    {
      if (v11 == 4)
      {
        v14 = [v9 tintColor];
        v15 = [SBHIconImageAppearance tintedDarkAppearanceWithTintColor:v14];
      }

      else
      {
        if (v11 != 5)
        {
          goto LABEL_24;
        }

        v14 = [v9 tintColor];
        v15 = [SBHIconImageAppearance tintedLightAppearanceWithTintColor:v14];
      }

      v16 = v15;

      if (v16)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    v13 = +[SBHIconImageAppearance clearLightAppearance];
  }

  else if (v11)
  {
    if (v11 == 1)
    {
      v13 = +[SBHIconImageAppearance lightAppearance];
    }

    else
    {
      if (v11 != 2)
      {
        goto LABEL_24;
      }

      v13 = +[SBHIconImageAppearance clearDarkAppearance];
    }
  }

  else
  {
    v13 = +[SBHIconImageAppearance darkAppearance];
  }

  v16 = v13;
  if (v13)
  {
LABEL_20:
    v18[0] = v16;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];

    goto LABEL_24;
  }

LABEL_23:
  v12 = MEMORY[0x1E695E0F0];
LABEL_24:

  return v12;
}

- (void)_precacheDataForRootIcons
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = SBLogWidgets();
  if (os_signpost_enabled(v3))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_PRECACHE", " enableTelemetry=YES ", &v9, 2u);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "Preparing to begin precaching images and labels for root icons", &v9, 2u);
  }

  [(SBHIconManager *)self _precacheLabelsForRootIcons:0 reason:@"precacheDataForRootIcons"];
  [(SBHIconManager *)self _precacheIntentsForRootIcons];
  [(SBHIconManager *)self _precacheImagesForRootIcons];
  v6 = CFAbsoluteTimeGetCurrent();
  v7 = SBLogIcon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = v6 - Current;
    _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_DEFAULT, "Finished starting background precache for images and labels in %fs", &v9, 0xCu);
  }

  v8 = SBLogWidgets();
  if (os_signpost_enabled(v8))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_PRECACHE", " enableTelemetry=YES ", &v9, 2u);
  }
}

- (id)_iconLabelImageParametersForPrewarm:(unint64_t)a3
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = [(SBHIconManager *)self rootFolder];
  v5 = [(SBHIconManager *)self iconImageCache];
  v6 = [(SBHIconManager *)self folderIconImageCache];
  v7 = [(SBHIconManager *)self iconLocationForPrecachingImages];
  v8 = [(SBHIconManager *)self legibilitySettings];
  v9 = objc_alloc([(SBHIconManager *)self iconViewClass]);
  v10 = [(SBHIconManager *)self listLayoutProvider];
  v11 = [v9 initWithConfigurationOptions:212 listLayoutProvider:v10];

  [v11 setDelegate:self];
  v51 = v5;
  [v11 setIconImageCache:v5];
  v50 = v6;
  [v11 setFolderIconImageCache:v6];
  [v11 setLocation:v7];
  v12 = +[SBIconLabelViewPrewarmFactory sharedInstance];
  [v11 setIconLabelViewFactory:v12];

  v48 = [(SBHIconManager *)self cachingImageAppearances];
  v13 = [v48 objectForKey:@"primary"];
  v14 = [v11 traitOverrides];
  v15 = objc_opt_self();
  v46 = v13;
  [v14 setObject:v13 forTrait:v15];

  v16 = objc_alloc_init(SBIconLabelImageParametersBuilder);
  v49 = v11;
  [v11 configureLabelImageParametersBuilder:v16];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__SBHIconManager__iconLabelImageParametersForPrewarm___block_invoke;
  aBlock[3] = &unk_1E808FC30;
  v43 = v16;
  v60 = v43;
  v45 = v7;
  v61 = v45;
  v44 = v8;
  v62 = v44;
  v17 = _Block_copy(aBlock);
  v18 = objc_opt_new();
  v52 = v4;
  v19 = [v4 icons];
  [v18 addObjectsFromArray:v19];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v20 = [(SBHIconManager *)self _libraryViewControllers];
  v21 = [v20 countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v56;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v56 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v55 + 1) + 8 * i);
        v26 = [v25 categoriesRootFolder];
        v27 = [v26 allIcons];

        if ([v27 count])
        {
          [v18 unionSet:v27];
        }

        v28 = [v25 podTopLevelDisplayedIcons];
        if (v28)
        {
          v29 = [v18 bs_array];
          v30 = [v28 sbh_arrayByRemovingObjectsFromArray:v29];

          [v18 addObjectsFromArray:v30];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v22);
  }

  v31 = [v18 bs_array];
  v32 = [v31 count];
  v33 = MEMORY[0x1E695DFA0];
  if (a3 == 0x7FFFFFFFFFFFFFFFLL || (v34 = v32, v32 <= a3))
  {
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __54__SBHIconManager__iconLabelImageParametersForPrewarm___block_invoke_2;
    v53[3] = &unk_1E808FC58;
    v54 = v17;
    v41 = [v31 bs_mapNoNulls:v53];
    v40 = [v33 orderedSetWithArray:v41];

    v35 = v54;
  }

  else
  {
    v35 = objc_opt_new();
    v36 = objc_opt_new();
    while ([v35 count] < a3)
    {
      if ([v36 count] >= v34)
      {
        break;
      }

      v37 = arc4random_uniform(v34);
      if (([v36 containsIndex:v37] & 1) == 0)
      {
        v38 = [v31 objectAtIndex:v37];
        [v36 addIndex:v37];
        v39 = (*(v17 + 2))(v17, v38);
        if (v39)
        {
          [v35 addObject:v39];
        }
      }
    }

    v40 = [v35 copy];
  }

  return v40;
}

uint64_t __54__SBHIconManager__iconLabelImageParametersForPrewarm___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setIcon:a2 forLocation:*(a1 + 40)];
  [*(a1 + 32) setLegibilitySettings:*(a1 + 48)];
  v3 = *(a1 + 32);

  return [v3 buildParameters];
}

- (void)_cleanupLabelCachesWithReason:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBHIconManager *)self rootFolder];
  v6 = [(SBHIconManager *)self currentRootIconList];
  v7 = [v6 model];

  if (v7 || ([v5 firstList], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = [(SBHIconManager *)self _libraryViewControllers];
    v9 = [v8 count];

    if (v9)
    {
      v10 = [MEMORY[0x1E696AEC0] sbh_bootInstanceIdentifier];
      v11 = [MEMORY[0x1E695E000] standardUserDefaults];
      v12 = [v11 stringForKey:@"last_label_cache_cleanup"];
      if ([v12 isEqualToString:v10])
      {
        v13 = SBLogLabels();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v26) = 0;
          _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_DEFAULT, "_cleanupLabelCachesWithReason: skipping cleanup; already accomplished for this boot.", &v26, 2u);
        }
      }

      else
      {
        if (![v12 length])
        {
          v25 = SBLogLabels();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v26) = 0;
            _os_log_impl(&dword_1BEB18000, v25, OS_LOG_TYPE_DEFAULT, "_cleanupLabelCachesWithReason: never cleaned up ever, so not going to do it today.", &v26, 2u);
          }

          [v11 setObject:v10 forKey:@"last_label_cache_cleanup"];
          goto LABEL_20;
        }

        if (_cleanupLabelCachesWithReason__onceToken != -1)
        {
          [SBHIconManager _cleanupLabelCachesWithReason:];
        }

        Current = CFAbsoluteTimeGetCurrent();
        v15 = SBLogLabels();
        v16 = v15;
        v17 = _cleanupLabelCachesWithReason__signpostID;
        if ((_cleanupLabelCachesWithReason__signpostID - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
        {
          LOWORD(v26) = 0;
          _os_signpost_emit_with_name_impl(&dword_1BEB18000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v17, "_cleanupLabelCachesWithReason:", "", &v26, 2u);
        }

        v13 = [(SBHIconManager *)self iconLabelImageCache];
        v18 = [(SBHIconManager *)self _iconLabelImageParametersForPrewarm:0x7FFFFFFFFFFFFFFFLL];
        v19 = [v18 set];
        [v13 ensureLabelImagesAreCached:v19];

        [v11 setObject:v10 forKey:@"last_label_cache_cleanup"];
        v20 = CFAbsoluteTimeGetCurrent();
        v21 = SBLogLabels();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v26 = 138543618;
          v27 = v4;
          v28 = 2048;
          v29 = v20 - Current;
          _os_log_impl(&dword_1BEB18000, v21, OS_LOG_TYPE_DEFAULT, "_cleanupLabelCachesWithReason: %{public}@; generation %f", &v26, 0x16u);
        }

        v22 = SBLogLabels();
        v23 = v22;
        v24 = _cleanupLabelCachesWithReason__signpostID;
        if ((_cleanupLabelCachesWithReason__signpostID - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
        {
          LOWORD(v26) = 0;
          _os_signpost_emit_with_name_impl(&dword_1BEB18000, v23, OS_SIGNPOST_INTERVAL_END, v24, "_cleanupLabelCachesWithReason:", "", &v26, 2u);
        }
      }

LABEL_20:
      self->_labelCachesNecessitateCleanup = 0;
    }
  }
}

void __48__SBHIconManager__cleanupLabelCachesWithReason___block_invoke()
{
  v0 = SBLogLabels();
  _cleanupLabelCachesWithReason__signpostID = os_signpost_id_generate(v0);
}

- (void)_precacheLabelsForRootIcons:(BOOL)a3 reason:(id)a4
{
  v4 = a3;
  v63 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(SBHIconManager *)self rootFolder];
  v8 = [(SBHIconManager *)self currentRootIconList];
  v9 = [v8 model];

  if (!v9)
  {
    v10 = [v7 firstList];
    if (!v10)
    {
      goto LABEL_46;
    }

    v9 = v10;
  }

  v11 = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  v12 = [(SBHIconManager *)self iconLabelImageCache];
  if (_precacheLabelsForRootIcons_reason__onceToken != -1)
  {
    [SBHIconManager _precacheLabelsForRootIcons:reason:];
  }

  v13 = SBLogLabels();
  v14 = v13;
  v15 = _precacheLabelsForRootIcons_reason__signpostID;
  if ((_precacheLabelsForRootIcons_reason__signpostID - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v15, "_precacheLabelsForRootIcons", "", buf, 2u);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v46 = v7;
  v47 = v6;
  v45 = v11;
  if (v4)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Forced reason: %@", v6];;
  }

  else if (self->_precacheLabelsGeneration)
  {
    if ([v12 numberOfCachedLabelImages])
    {
      if ([(SBHIconManager *)self _shouldUseHomeScreenLargeIconSize])
      {
        v18 = 0;
        v19 = 0;
        v17 = @"Labels are not being drawn right now; don't precache anything label wise.";
      }

      else
      {
        v20 = [(SBHIconManager *)self legibilitySettings];
        if (!v20)
        {
          v20 = +[SBHLegibilitySettings defaultLegibilitySettings];
        }

        v21 = MEMORY[0x1E696AEC0];
        v22 = SBHFeatureEnabled(0);
        v23 = @"NO";
        if (v22)
        {
          v23 = @"YES";
        }

        v17 = [v21 stringWithFormat:@"read gooder is enabled: %@", v23];
        [(SBHIconManager *)self _iconLabelImageParametersForPrewarm:5];
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v24 = v51 = 0u;
        v25 = [v24 countByEnumeratingWithState:&v48 objects:v62 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v49;
          while (2)
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v49 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = [v12 cachedLabelContentForParameters:*(*(&v48 + 1) + 8 * i)];

              if (!v29)
              {

                v17 = @"legibility cache fault detected";
                goto LABEL_31;
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v48 objects:v62 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }
        }

        v18 = 0;
        v19 = 0;
        v7 = v46;
        v6 = v47;
        v11 = v45;
      }

      goto LABEL_40;
    }

    v17 = @"no images currently cached; def need to rebuild";
  }

  else
  {
    self->_labelCachesNecessitateCleanup = 1;
    v17 = @"first run";
  }

LABEL_31:
  v30 = [v12 numberOfCachedLegibilityImages];
  v31 = [v12 numberOfCachedLabelImages];
  v32 = [(SBHIconManager *)self _iconLabelImageParametersForPrewarm:0x7FFFFFFFFFFFFFFFLL];
  v33 = [v32 array];
  [v12 prewarmLabelImages:v33];

  v34 = [v12 numberOfCachedLegibilityImages];
  v35 = [v12 numberOfCachedLabelImages];
  if (v35 != v31)
  {
    v36 = SBLogLabels();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&v53 = v35 - v31;
      _os_log_impl(&dword_1BEB18000, v36, OS_LOG_TYPE_DEFAULT, "_precacheLabelsForRootIcons: new cache hits: %lu", buf, 0xCu);
    }
  }

  *&v37 = v34 - v30;
  v6 = v47;
  v11 = v45;
  if (v37 != 0.0)
  {
    v38 = SBLogLabels();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v53 = v37;
      _os_log_impl(&dword_1BEB18000, v38, OS_LOG_TYPE_DEFAULT, "_precacheLabelsForRootIcons: new legibility cache hits: %lu", buf, 0xCu);
    }
  }

  v19 = v35 != v31;
  v18 = 1;
  v7 = v46;
LABEL_40:
  v39 = CFAbsoluteTimeGetCurrent();
  v40 = SBLogLabels();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    precacheLabelsGeneration = self->_precacheLabelsGeneration;
    *buf = 134219010;
    v53 = v39 - Current;
    v54 = 1024;
    v55 = v18;
    v56 = 1024;
    v57 = v19;
    v58 = 2114;
    v59 = v17;
    v60 = 2048;
    v61 = precacheLabelsGeneration;
    _os_log_impl(&dword_1BEB18000, v40, OS_LOG_TYPE_DEFAULT, "_precacheLabelsForRootIcons: %f; should prewarm? %{BOOL}u did prewarm? %{BOOL}u reason: %{public}@; generation %lu", buf, 0x2Cu);
  }

  ++self->_precacheLabelsGeneration;
  v42 = SBLogLabels();
  v43 = v42;
  v44 = _precacheLabelsForRootIcons_reason__signpostID;
  if ((_precacheLabelsForRootIcons_reason__signpostID - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v43, OS_SIGNPOST_INTERVAL_END, v44, "_precacheLabelsForRootIcons", "", buf, 2u);
  }

  [(SBHIconManager *)self setPrecachedContentSizeCategory:v11];
LABEL_46:
}

void __53__SBHIconManager__precacheLabelsForRootIcons_reason___block_invoke()
{
  v0 = SBLogLabels();
  _precacheLabelsForRootIcons_reason__signpostID = os_signpost_id_generate(v0);
}

- (void)_precacheIntentsForRootIcons
{
  v3 = [(SBHIconManager *)self rootFolder];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__SBHIconManager__precacheIntentsForRootIcons__block_invoke;
  v4[3] = &unk_1E808DA78;
  v4[4] = self;
  [v3 enumerateAllIconsWithOptions:1 usingBlock:v4];
}

void __46__SBHIconManager__precacheIntentsForRootIcons__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isWidgetIcon])
  {
    v4 = v3;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v4 iconDataSources];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(a1 + 32) _intentForDataSource:*(*(&v11 + 1) + 8 * v9++) inIcon:v4 loadingFromArchiveIfNecessary:1 usingDefaultIntentIfNecessary:1];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)_precacheImagesForRootIcons
{
  v3 = [(SBHIconManager *)self cachingImageStyleConfiguration];
  [(SBHIconManager *)self _precacheImagesForRootIconsForStyleConfiguration:v3];
}

- (void)_precacheImagesForRootIconsForStyleConfiguration:(id)a3
{
  v153 = *MEMORY[0x1E69E9840];
  v89 = a3;
  queue = [(SBHIconManager *)self iconPrecachingHighPriorityQueue];
  if (!queue)
  {
    queue = BSDispatchQueueCreateSerialWithQoS();
    [(SBHIconManager *)self setIconPrecachingHighPriorityQueue:?];
  }

  SerialWithQoS = [(SBHIconManager *)self iconPrecachingMediumPriorityQueue];
  if (!SerialWithQoS)
  {
    SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
    [(SBHIconManager *)self setIconPrecachingMediumPriorityQueue:?];
  }

  v91 = [(SBHIconManager *)self iconPrecachingLowPriorityQueue];
  if (!v91)
  {
    v91 = BSDispatchQueueCreateSerialWithQoS();
    [(SBHIconManager *)self setIconPrecachingLowPriorityQueue:?];
  }

  v94 = [(SBHIconManager *)self rootFolder];
  v4 = [(SBHIconManager *)self currentRootIconList];
  v5 = [v4 model];

  if (v5 && (v6 = v5, [v94 indexOfList:v5] != 0x7FFFFFFFFFFFFFFFLL) || (objc_msgSend(v94, "firstList"), v7 = objc_claimAutoreleasedReturnValue(), v5, (v6 = v7) != 0))
  {
    v85 = v6;
    v8 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v9 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v10 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v11 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v86 = [v94 dock];
    [v86 directlyContainedApplicationIcons];
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v12 = v148 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v147 objects:v152 count:16];
    if (v13)
    {
      v14 = *v148;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v148 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = [*(*(&v147 + 1) + 8 * i) applicationBundleID];
          [v8 addObject:v16];
          [v10 addObject:v16];
        }

        v13 = [v12 countByEnumeratingWithState:&v147 objects:v152 count:16];
      }

      while (v13);
    }

    v146[0] = 0;
    v146[1] = v146;
    v146[2] = 0x2020000000;
    v146[3] = 3;
    v140[0] = MEMORY[0x1E69E9820];
    v140[1] = 3221225472;
    v140[2] = __67__SBHIconManager__precacheImagesForRootIconsForStyleConfiguration___block_invoke;
    v140[3] = &unk_1E808FC80;
    v82 = v11;
    v141 = v82;
    v17 = v9;
    v142 = v17;
    v18 = v10;
    v143 = v18;
    v145 = v146;
    v83 = v8;
    v144 = v83;
    [v94 enumerateListsNearestToList:v85 usingBlock:v140];
    v19 = [(SBHIconManager *)self _libraryViewControllers];
    v84 = [v19 firstObject];

    v20 = [v84 iconPrecachingInfo];
    v88 = [v20 topLevelIcons];
    v90 = v20;
    v87 = [v20 additionalIcons];
    v21 = [v88 bs_compactMap:&__block_literal_global_200];
    v79 = [v87 bs_compactMap:&__block_literal_global_203];
    [v20 topLevelImageInfo];
    v75 = v23;
    v77 = v22;
    v73 = v24;
    v26 = v25;
    [v20 additionalImageInfo];
    v70 = v28;
    v71 = v27;
    v68 = v30;
    v69 = v29;
    v66 = [v94 ignoredList];
    v65 = [v66 icons];
    v31 = [v65 mutableCopy];
    v32 = v31;
    if (v90)
    {
      [v31 removeObjectsInArray:v88];
      [v32 removeObjectsInArray:v87];
    }

    v67 = v21;
    v64 = v32;
    [v32 bs_filter:&__block_literal_global_206];
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v33 = v137 = 0u;
    v34 = [v33 countByEnumeratingWithState:&v136 objects:v151 count:16];
    if (v34)
    {
      v35 = *v137;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v137 != v35)
          {
            objc_enumerationMutation(v33);
          }

          v37 = [*(*(&v136 + 1) + 8 * j) applicationBundleID];
          [v17 addObject:v37];
          [v18 addObject:v37];
        }

        v34 = [v33 countByEnumeratingWithState:&v136 objects:v151 count:16];
      }

      while (v34);
    }

    v38 = [(SBHIconManager *)self highPriorityCachingImageAppearancesForIconImageStyleConfiguration:v89];
    v39 = [(SBHIconManager *)self lowPriorityCachingImageAppearancesForIconImageStyleConfiguration:v89];
    v40 = [v83 array];
    v41 = [v17 array];
    v63 = [v18 array];
    v42 = [v82 array];
    [(SBHIconManager *)self rootIconImageInfo];
    v62 = v43;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    [(SBHIconManager *)self folderMiniIconImageInfo];
    v81 = v50;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__SBHIconManager__precacheImagesForRootIconsForStyleConfiguration___block_invoke_6;
    block[3] = &unk_1E808FCA8;
    v57 = v38;
    v115 = v57;
    v116 = v40;
    v120 = v45;
    v121 = v47;
    v122 = v49;
    v123 = v62;
    v58 = v42;
    v124 = v52;
    v125 = v54;
    v126 = v56;
    v127 = v81;
    v117 = v58;
    v118 = v67;
    v128 = v26;
    v129 = v77;
    v130 = v75;
    v131 = v73;
    v119 = v79;
    v132 = v71;
    v133 = v70;
    v134 = v69;
    v135 = v68;
    v76 = v79;
    v74 = v67;
    v72 = v40;
    dispatch_async(queue, block);
    v107[0] = MEMORY[0x1E69E9820];
    v107[1] = 3221225472;
    v107[2] = __67__SBHIconManager__precacheImagesForRootIconsForStyleConfiguration___block_invoke_7;
    v107[3] = &unk_1E808B778;
    v108 = v57;
    v109 = v41;
    v110 = v45;
    v111 = v47;
    v112 = v49;
    v113 = v62;
    v80 = v41;
    v78 = v57;
    dispatch_async(SerialWithQoS, v107);
    v95[0] = MEMORY[0x1E69E9820];
    v95[1] = 3221225472;
    v95[2] = __67__SBHIconManager__precacheImagesForRootIconsForStyleConfiguration___block_invoke_8;
    v95[3] = &unk_1E808FCD0;
    v96 = v39;
    v97 = v63;
    v99 = v45;
    v100 = v47;
    v101 = v49;
    v102 = v62;
    v98 = v58;
    v103 = v52;
    v104 = v54;
    v105 = v56;
    v106 = v81;
    v59 = v58;
    v60 = v63;
    v61 = v39;
    dispatch_async(v91, v95);

    _Block_object_dispose(v146, 8);
  }
}

void __67__SBHIconManager__precacheImagesForRootIconsForStyleConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [a2 icons];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        if ([v8 isFolderIcon])
        {
          v9 = [v8 folder];
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __67__SBHIconManager__precacheImagesForRootIconsForStyleConfiguration___block_invoke_2;
          v13[3] = &unk_1E808ED00;
          v14 = *(a1 + 32);
          v15 = *(a1 + 40);
          v16 = *(a1 + 48);
          [v9 enumerateListsUsingBlock:v13];
        }

        else
        {
          if (![v8 isApplicationIcon])
          {
            continue;
          }

          v9 = [v8 applicationBundleID];
          v10 = 56;
          if (!*(*(*(a1 + 64) + 8) + 24))
          {
            v10 = 40;
          }

          [*(a1 + v10) addObject:v9];
          [*(a1 + 48) addObject:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 24);
  if (v12)
  {
    *(v11 + 24) = v12 - 1;
  }
}

void __67__SBHIconManager__precacheImagesForRootIconsForStyleConfiguration___block_invoke_2(id *a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [a2 directlyContainedApplicationIcons];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) applicationBundleID];
        if (!a3)
        {
          [a1[4] addObject:v10];
        }

        [a1[5] addObject:v10];
        [a1[6] addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

id __67__SBHIconManager__precacheImagesForRootIconsForStyleConfiguration___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v2 applicationBundleID];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __67__SBHIconManager__precacheImagesForRootIconsForStyleConfiguration___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v2 applicationBundleID];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __67__SBHIconManager__precacheImagesForRootIconsForStyleConfiguration___block_invoke_6(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        SBHCacheIconImagesForApplicationsWithImageAppearance(*(a1 + 40), v7, 3, *(a1 + 72), *(a1 + 80), *(a1 + 88));
        SBHCacheIconImagesForApplicationsWithImageAppearance(*(a1 + 48), v7, 3, *(a1 + 104), *(a1 + 112), *(a1 + 120));
        SBHCacheIconImagesForApplicationsWithImageAppearance(*(a1 + 56), v7, 3, *(a1 + 136), *(a1 + 144), *(a1 + 152));
        SBHCacheIconImagesForApplicationsWithImageAppearance(*(a1 + 64), v7, 3, *(a1 + 168), *(a1 + 176), *(a1 + 184));
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void __67__SBHIconManager__precacheImagesForRootIconsForStyleConfiguration___block_invoke_7(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        SBHCacheIconImagesForApplicationsWithImageAppearance(*(a1 + 40), *(*(&v7 + 1) + 8 * v6++), 3, *(a1 + 48), *(a1 + 56), *(a1 + 64));
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void __67__SBHIconManager__precacheImagesForRootIconsForStyleConfiguration___block_invoke_8(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        SBHCacheIconImagesForApplicationsWithImageAppearance(*(a1 + 40), v7, 3, *(a1 + 56), *(a1 + 64), *(a1 + 72));
        SBHCacheIconImagesForApplicationsWithImageAppearance(*(a1 + 48), v7, 3, *(a1 + 88), *(a1 + 96), *(a1 + 104));
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)addAdditionalIconImageCacheForPrecaching:(id)a3
{
  v4 = a3;
  additionalPrecachingIconImageCaches = self->_additionalPrecachingIconImageCaches;
  v12 = v4;
  if (!additionalPrecachingIconImageCaches)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_additionalPrecachingIconImageCaches;
    self->_additionalPrecachingIconImageCaches = v6;

    v4 = v12;
    additionalPrecachingIconImageCaches = self->_additionalPrecachingIconImageCaches;
  }

  [(NSMutableSet *)additionalPrecachingIconImageCaches addObject:v4];
  v8 = [(SBHIconManager *)self iconsToRecacheForImageAppearanceChange];
  v9 = [(SBHIconManager *)self prioritizedCachingImageAppearances];
  v10 = [v9 allKeys];
  v11 = [v12 cacheImagesForIcons:v8 imageAppearances:v10 priority:0 reason:@"add additional icon image cache" options:0 completionHandler:0];
}

- (id)iconsToRecacheForImageAppearanceChange
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(SBHIconManager *)self rootFolder];
  v5 = [(SBHIconManager *)self currentRootIconList];
  v6 = [v5 model];

  if (v6)
  {
    v7 = [v4 dock];
    v8 = [v7 icons];
    [v3 addObjectsFromArray:v8];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __56__SBHIconManager_iconsToRecacheForImageAppearanceChange__block_invoke;
    v15[3] = &unk_1E808E678;
    v9 = v3;
    v16 = v9;
    [v4 enumerateListsNearestToList:v6 usingBlock:v15];
    v10 = [v4 ignoredList];
    v11 = [v10 icons];
    [v9 addObjectsFromArray:v11];
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__SBHIconManager_iconsToRecacheForImageAppearanceChange__block_invoke_2;
    v13[3] = &unk_1E808DA78;
    v14 = v3;
    [v4 enumerateAllIconsWithOptions:1 usingBlock:v13];
    v7 = v14;
  }

  return v3;
}

void __56__SBHIconManager_iconsToRecacheForImageAppearanceChange__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [a2 icons];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 isFolderIcon])
        {
          v9 = [v8 folder];
          v10 = [v9 firstList];
          v11 = [v10 icons];
          [*(a1 + 32) addObjectsFromArray:v11];
        }

        else
        {
          [*(a1 + 32) addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (id)visibleIconsToRecacheForImageAppearanceChange
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(SBHIconManager *)self rootFolder];
  v5 = [v4 dock];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__SBHIconManager_visibleIconsToRecacheForImageAppearanceChange__block_invoke;
  v15[3] = &unk_1E808A678;
  v6 = v3;
  v16 = v6;
  [v5 enumerateIconsUsingBlock:v15];
  v7 = [(SBHIconManager *)self currentRootIconList];
  v8 = [v7 model];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__SBHIconManager_visibleIconsToRecacheForImageAppearanceChange__block_invoke_2;
  v13[3] = &unk_1E808A678;
  v9 = v6;
  v14 = v9;
  [v8 enumerateIconsUsingBlock:v13];
  v10 = v14;
  v11 = v9;

  return v9;
}

- (void)_precacheDataForRootIconsAfterIconAppearanceChange
{
  if (![(SBHIconManager *)self isIconStylePickerVisible])
  {

    [(SBHIconManager *)self _precacheDataForRootIcons];
  }
}

- (void)purgeUnnecessaryAppearanceIconImageData
{
  v7 = [(SBHIconManager *)self prioritizedCachingImageAppearances];
  v3 = [v7 allKeys];
  v4 = +[SBHIconImageAppearance tintableAppearance];
  v5 = [v3 arrayByAddingObject:v4];

  v6 = [(SBHIconManager *)self iconImageCache];
  [v6 purgeAllCachedImagesForAppearancesOtherThanAppearances:v5];
}

- (void)updateVisibleIconsToShowLeafIcons:(id)a3 hideLeafIcons:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(SBHIconManager *)self iconModel];
  v9 = [(SBHIconManager *)self rootFolder];
  if (!self->_previousIconLocationTracker)
  {
    v10 = objc_alloc_init(SBIconPreviousLocationTracker);
    previousIconLocationTracker = self->_previousIconLocationTracker;
    self->_previousIconLocationTracker = v10;
  }

  if (!self->_previousIconLocations)
  {
    v12 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    previousIconLocations = self->_previousIconLocations;
    self->_previousIconLocations = v12;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v14 = v7;
  v15 = [v14 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v40;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v40 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v39 + 1) + 8 * i);
        [(SBIconPreviousLocationTracker *)self->_previousIconLocationTracker captureLocationInfoForIcon:v19 inModel:v8];
        v20 = [v9 relativePathForIcon:v19 listGridCellInfoOptions:0];
        [(NSMapTable *)self->_previousIconLocations setObject:v20 forKey:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v16);
  }

  if ([v6 count])
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v21 = v6;
    v22 = [v21 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v36;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v36 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [(SBHIconManager *)self addNewIconToDesignatedLocation:*(*(&v35 + 1) + 8 * j) options:0];
        }

        v23 = [v21 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v23);
    }

    if (![v14 count])
    {
      goto LABEL_31;
    }

    goto LABEL_23;
  }

  if ([v14 count])
  {
LABEL_23:
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v26 = v14;
    v27 = [v26 countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v32;
      do
      {
        for (k = 0; k != v28; ++k)
        {
          if (*v32 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [v9 removeIcon:*(*(&v31 + 1) + 8 * k) options:{0x100000, v31}];
        }

        v28 = [v26 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v28);
    }

LABEL_31:
    [(SBHIconManager *)self layoutIconListsWithAnimationType:-1, v31];
    [v8 saveIconStateIfNeeded];
  }
}

- (void)_clearStashedIconsForRelayout
{
  v29 = *MEMORY[0x1E69E9840];
  v17 = [(SBHIconManager *)self iconModel];
  v3 = [v17 leafIcons];
  v4 = [v3 allObjects];

  v16 = v4;
  v5 = [(SBHIconManager *)self _stashedIconsWithRemovableDataSourcesForStashedIcons:self->_stashedLeafIconsForRelayout newIcons:v4];
  self->_shouldStashIconsForRelayout = 0;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [v5 allKeys];
  v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v11 = [v5 objectForKey:v10];
        v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v20;
          do
          {
            v15 = 0;
            do
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(v11);
              }

              [(SBHIconManager *)self _handleRemovedDataSource:*(*(&v19 + 1) + 8 * v15++) ofIcon:v10];
            }

            while (v13 != v15);
            v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v13);
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_stashedLeafIconsForRelayout removeAllObjects];
}

- (id)_stashedIconsWithRemovableDataSourcesForStashedIcons:(id)a3 newIcons:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v31 = a4;
  v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v5;
  v28 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v28)
  {
    v27 = *v44;
    do
    {
      v6 = 0;
      do
      {
        if (*v44 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v6;
        v7 = *(*(&v43 + 1) + 8 * v6);
        v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v8 = [v7 iconDataSources];
        v9 = [v8 countByEnumeratingWithState:&v39 objects:v50 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v40;
          v33 = v8;
          v34 = v7;
          v32 = *v40;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v40 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v39 + 1) + 8 * i);
              if ((objc_opt_respondsToSelector() & 1) != 0 && [v13 iconSupportsConfiguration:v7])
              {
                v37 = 0u;
                v38 = 0u;
                v35 = 0u;
                v36 = 0u;
                v14 = v31;
                v15 = [v14 countByEnumeratingWithState:&v35 objects:v49 count:16];
                if (v15)
                {
                  v16 = v15;
                  v17 = *v36;
                  while (2)
                  {
                    for (j = 0; j != v16; ++j)
                    {
                      if (*v36 != v17)
                      {
                        objc_enumerationMutation(v14);
                      }

                      v19 = *(*(&v35 + 1) + 8 * j);
                      v20 = [v13 uniqueIdentifier];
                      v21 = [v19 firstIconDataSourceWithUniqueIdentifier:v20];

                      if (v21)
                      {

                        goto LABEL_23;
                      }
                    }

                    v16 = [v14 countByEnumeratingWithState:&v35 objects:v49 count:16];
                    if (v16)
                    {
                      continue;
                    }

                    break;
                  }
                }

                [v30 addObject:v13];
LABEL_23:
                v8 = v33;
                v7 = v34;
                v11 = v32;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v39 objects:v50 count:16];
          }

          while (v10);
        }

        if ([v30 count])
        {
          [v26 setObject:v30 forKey:v7];
        }

        v6 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v28);
  }

  v22 = SBLogWidgetIntent();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v26 allKeys];
    *buf = 138412290;
    v48 = v23;
    _os_log_impl(&dword_1BEB18000, v22, OS_LOG_TYPE_DEFAULT, "stashedIconsWithRemovableDataSources:%@", buf, 0xCu);
  }

  return v26;
}

- (void)resetRootIconLists
{
  [(SBHIconManager *)self _prepareToResetRootIconLists];

  [(SBHIconManager *)self _finishResetRootIconLists];
}

- (void)tearDownAndResetRootIconLists
{
  [(SBHIconManager *)self _prepareToResetRootIconLists];

  [(SBHIconManager *)self _finishResetRootIconListsReusingPreviousControllers:0];
}

- (void)_prepareToResetRootIconLists
{
  v3 = SBLogIcon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_DEFAULT, "_prepareToResetRootIconLists", buf, 2u);
  }

  [(SBHIconManager *)self setResettingRootIconLists:1];
  v4 = [(SBHIconManager *)self rootFolder];
  if (v4)
  {
    v5 = [(SBHIconManager *)self _currentFolderController];
    v6 = [v5 currentIconListView];
    v7 = [v6 model];

    v8 = [v4 indexPathForList:v7];
    v9 = [v4 uniqueIdentifiersForIndexPath:v8];
    [(SBHIconManager *)self setPostResetPathIdentifiers:v9];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __46__SBHIconManager__prepareToResetRootIconLists__block_invoke;
    v13[3] = &unk_1E808DA78;
    v13[4] = self;
    [v4 enumerateAllIconsWithOptions:1 usingBlock:v13];
  }

  v10 = [(NSMutableSet *)self->_touchedIconViews anyObject];
  v11 = [v10 window];
  v12 = [v11 _eventRoutingScene];

  if (v12)
  {
    [*MEMORY[0x1E69DDA98] _cancelAllEventsOfType:0 onEventRoutingScene:v12];
  }
}

void __46__SBHIconManager__prepareToResetRootIconLists__block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(*(a1 + 32) + 344) == 1)
  {
    v4 = objc_opt_class();
    v5 = v3;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [v7 iconDataSources];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          if ((objc_opt_respondsToSelector() & 1) != 0 && [v13 iconSupportsConfiguration:v7])
          {
            if (!*(*(a1 + 32) + 352))
            {
              v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v15 = *(a1 + 32);
              v16 = *(v15 + 352);
              *(v15 + 352) = v14;
            }

            v17 = SBLogWidgetIntent();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v23 = v7;
              _os_log_impl(&dword_1BEB18000, v17, OS_LOG_TYPE_DEFAULT, "Stashing leaf icon:%@ during relayout", buf, 0xCu);
            }

            [*(*(a1 + 32) + 352) addObject:v7];
            goto LABEL_22;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }
}

- (void)_finishResetRootIconListsReusingPreviousControllers:(BOOL)a3
{
  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "_finishResetRootIconLists", v18, 2u);
  }

  v6 = [(SBHIconManager *)self delegate];
  v7 = [(SBHIconManager *)self rootViewController];
  v8 = [(SBHIconManager *)self rootFolderController];
  if (!a3)
  {
    if (objc_opt_respondsToSelector())
    {
      [v6 iconManager:self willDestroyRootFolderController:v8];
    }

    [(SBHIconManager *)self setRootFolderController:0];

    if (objc_opt_respondsToSelector())
    {
      [v6 iconManager:self willDestroyRootViewController:v7];
    }

    [(SBHIconManager *)self setRootViewController:0];

    v8 = 0;
    v7 = 0;
  }

  v9 = [(SBHIconModel *)self->_iconModel rootFolder];
  if (!v9)
  {
    [(SBHIconModel *)self->_iconModel layout];
    v9 = [(SBHIconModel *)self->_iconModel rootFolder];
  }

  [(SBHIconManager *)self setRootFolder:v9];
  [(SBHIconManager *)self ensureFixedIconLocationsIfNecessary];
  if (v7)
  {
    v10 = [(SBHIconManager *)self _rootFolderForRootViewControllerForRootFolder:v9];
    [v7 setFolder:v10];
    v11 = [(SBHIconManager *)self iconImageCache];
    [v7 setIconImageCache:v11];

    v12 = [(SBHIconManager *)self folderIconImageCache];
    [v7 setFolderIconImageCache:v12];

    v13 = [(SBHIconManager *)self interfaceOrientation];
    [v8 setOrientation:v13];
    v14 = [v8 folderView];
    [v14 setOrientation:v13];

    v15 = [(SBHIconManager *)self postResetPathIdentifiers];
    if (v15)
    {
      [v8 restoreExpandedPathIdentifiers:v15];
      [(SBHIconManager *)self setPostResetPathIdentifiers:0];
    }
  }

  else
  {
    v10 = [(SBHIconManager *)self _createAppropriateRootViewControllerForRootFolder:v9];
    [(SBHIconManager *)self setRootViewController:v10];
    v16 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [(SBHIconManager *)self setRootFolderController:v10];
    }

    [v10 setEditing:-[SBHIconManager isEditing](self animated:{"isEditing"), 0}];
    if (objc_opt_respondsToSelector())
    {
      [v6 iconManager:self didCreateRootViewController:v10];
    }

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 postNotificationName:@"SBHIconManagerRootViewControllerDidChange" object:self];
  }

  [(SBHIconManager *)self setResettingRootIconLists:0];
}

- (id)_createAppropriateRootViewControllerForRootFolder:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self homeScreenSettings];
  if ([v5 usesMinimumViableHomeScreen])
  {
    v6 = MGGetBoolAnswer();

    if (v6)
    {
      v7 = [(SBHIconManager *)self _createRootTableControllerForRootFolder:v4];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = [(SBHIconManager *)self _createRootFolderControllerForRootFolder:v4];
LABEL_6:
  v8 = v7;

  return v8;
}

- (void)_configureRootFolderConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self listLayoutProvider];
  [v4 setListLayoutProvider:v5];

  [v4 setOrientation:{-[SBHIconManager interfaceOrientation](self, "interfaceOrientation")}];
  [v4 setAllowedOrientations:{-[SBHIconManager possibleInterfaceOrientations](self, "possibleInterfaceOrientations")}];
  [v4 setIconViewProvider:self];
  v6 = [(SBHIconManager *)self folderIconImageCache];
  [v4 setFolderIconImageCache:v6];

  v7 = [(SBHIconManager *)self iconImageCache];
  [v4 setIconImageCache:v7];

  v8 = [(SBHIconManager *)self legibilitySettings];
  [v4 setLegibilitySettings:v8];

  [v4 setDelegate:self];
  [v4 setFolderDelegate:self];
  [v4 setShowsDoneButtonWhileEditing:{-[SBHIconManager showsDoneButtonWhileEditing](self, "showsDoneButtonWhileEditing")}];
  if ([(SBHIconManager *)self isFloatingDockSupported])
  {
    v9 = objc_alloc_init(SBHLibraryOverscrollViewController);
    [v4 setTrailingCustomViewController:v9];

    [v4 setDockExternal:1];
    v10 = SBLogIcon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_INFO, "making external dock since floating dock is supported", v11, 2u);
    }
  }
}

- (id)_createRootFolderControllerForRootFolder:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBHIconManager *)self controllerClassForFolderClass:objc_opt_class()];
  v6 = objc_alloc_init(SBRootFolderControllerConfiguration);
  [(SBFolderControllerConfiguration *)v6 setFolder:v4];
  [(SBHIconManager *)self _configureRootFolderConfiguration:v6];
  v7 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v26 = v5;
    [v7 iconManager:self willUseRootFolderControllerConfiguration:v6];
    v8 = [(SBHIconManager *)self legibilitySettings];
    v9 = [(SBRootFolderControllerConfiguration *)v6 leadingCustomViewControllers];
    if (v9)
    {
      [(SBHIconManager *)self setLeadingCustomViewControllers:v9];
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v31 objects:v38 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v32;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v32 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v31 + 1) + 8 * i) setLegibilitySettings:v8];
          }

          v12 = [v10 countByEnumeratingWithState:&v31 objects:v38 count:16];
        }

        while (v12);
      }
    }

    v15 = [(SBRootFolderControllerConfiguration *)v6 trailingCustomViewControllers];
    if (v15)
    {
      v25 = v4;
      [(SBHIconManager *)self setTrailingCustomViewControllers:v15];
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v16 = v15;
      v17 = [v16 countByEnumeratingWithState:&v27 objects:v37 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v28;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v28 != v19)
            {
              objc_enumerationMutation(v16);
            }

            [*(*(&v27 + 1) + 8 * j) setLegibilitySettings:v8];
          }

          v18 = [v16 countByEnumeratingWithState:&v27 objects:v37 count:16];
        }

        while (v18);
      }

      v4 = v25;
    }

    v5 = v26;
  }

  v21 = [[v5 alloc] initWithConfiguration:v6];
  [v21 setOpen:1];
  [v21 addPageStateObserver:self];
  [v21 setContentVisibility:{-[SBHIconManager effectiveRootFolderControllerContentVisibility](self, "effectiveRootFolderControllerContentVisibility")}];
  [(SBHIconManager *)self setRootFolderController:v21];
  v22 = [(SBHIconManager *)self postResetPathIdentifiers];
  if (v22)
  {
    if (([v21 restoreExpandedPathIdentifiers:v22] & 1) == 0)
    {
      v23 = SBLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v36 = v22;
        _os_log_impl(&dword_1BEB18000, v23, OS_LOG_TYPE_INFO, "_resetRootIconLists: restoreExpandedPathIdentifiers: failed with path '%@'.", buf, 0xCu);
      }
    }

    [(SBHIconManager *)self setPostResetPathIdentifiers:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v7 iconManager:self didCreateRootFolderController:v21];
  }

  return v21;
}

- (id)_createRootTableControllerForRootFolder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SBHIconRootTableViewController);
  v6 = [(SBHIconManager *)self legibilitySettings];
  [(SBHIconRootTableViewController *)v5 setLegibilitySettings:v6];

  v7 = [(SBHIconManager *)self folderIconImageCache];
  [(SBHIconRootTableViewController *)v5 setFolderIconImageCache:v7];

  v8 = [(SBHIconManager *)self iconImageCache];
  [(SBHIconRootTableViewController *)v5 setIconImageCache:v8];

  [(SBHIconRootTableViewController *)v5 setFolder:v4];

  return v5;
}

- (void)_ensureRootFolderController
{
  v3 = [(SBHIconManager *)self rootFolderController];

  if (!v3)
  {

    [(SBHIconManager *)self _finishResetRootIconLists];
  }
}

- (void)setRootFolderController:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  rootFolderController = self->_rootFolderController;
  if (rootFolderController != v5)
  {
    if (rootFolderController)
    {
      v7 = [(SBHIconManager *)self rootFolderControllerIconStyleChangeRegistration];
      if (v7)
      {
        [(SBRootFolderController *)self->_rootFolderController unregisterForTraitChanges:v7];
        [(SBHIconManager *)self setRootFolderControllerIconStyleChangeRegistration:0];
      }
    }

    objc_storeStrong(&self->_rootFolderController, a3);
    if (v5)
    {
      v8 = objc_opt_self();
      v16[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      v10 = [(SBRootFolderController *)v5 registerForTraitChanges:v9 withTarget:self action:sel__precacheDataForRootIconsAfterIconAppearanceChange];

      [(SBHIconManager *)self setRootFolderControllerIconStyleChangeRegistration:v10];
      v11 = [(SBRootFolderController *)v5 traitCollection];
      [v11 displayScale];
      v13 = v12;

      [(SBIconLabelImageCache *)self->_labelImageCache scale];
      if (v13 != v14)
      {
        [(SBIconLabelImageCache *)self->_labelImageCache invalidate];
        labelImageCache = self->_labelImageCache;
        self->_labelImageCache = 0;
      }
    }
  }
}

- (void)setLeadingCustomViewControllers:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((BSEqualArrays() & 1) == 0)
  {
    v5 = [v4 copy];
    leadingCustomViewControllers = self->_leadingCustomViewControllers;
    self->_leadingCustomViewControllers = v5;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = objc_opt_self();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            [(SBHIconManager *)self configureLibraryViewController:v12];
          }

          v15 = v12;
          if (objc_opt_respondsToSelector())
          {
            v16 = v15;
          }

          else
          {
            v16 = 0;
          }

          v17 = v16;

          if (v17)
          {
            [v17 addObserver:self];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }
  }
}

- (void)setTrailingCustomViewControllers:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((BSEqualArrays() & 1) == 0)
  {
    v5 = [v4 copy];
    trailingCustomViewControllers = self->_trailingCustomViewControllers;
    self->_trailingCustomViewControllers = v5;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * v11);
          v13 = objc_opt_self();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            [(SBHIconManager *)self configureLibraryViewController:v12, v15];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }
}

- (void)configureLibraryViewController:(id)a3
{
  v4 = a3;
  [v4 setBadgeBehaviorProvider:self];
  [v4 setPrefersFlatImageLayers:{-[SBHIconManager prefersFlatImageLayers](self, "prefersFlatImageLayers")}];
}

- (void)_ensureWidgetIsVisibleForDebuggingWithDescriptor:(id)a3 sizeClass:(int64_t)a4
{
  v6 = a3;
  v7 = [(SBHIconManager *)self iconModel];
  v8 = [v6 extensionBundleIdentifier];
  v9 = [v6 kind];
  v10 = [v7 widgetIconsContainingWidgetsMatchingExtensionBundleIdentifier:v8 kind:v9 sizeClass:a4];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__SBHIconManager__ensureWidgetIsVisibleForDebuggingWithDescriptor_sizeClass___block_invoke;
  v13[3] = &unk_1E808B200;
  v14 = v10;
  v15 = v6;
  v16 = self;
  v17 = a4;
  v11 = v6;
  v12 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], v13);
}

void __77__SBHIconManager__ensureWidgetIsVisibleForDebuggingWithDescriptor_sizeClass___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) firstObject];
  v3 = SBLogWidgets();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (!v2)
  {
    if (v4)
    {
      v7 = [*(a1 + 40) extensionBundleIdentifier];
      v8 = [*(a1 + 40) kind];
      *buf = 138412546;
      v21 = v7;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_DEFAULT, "Installing new widget for debugging: %@ %@", buf, 0x16u);
    }

    v3 = [*(a1 + 48) rootFolderController];
    v2 = [v3 widgetIconForDescriptor:*(a1 + 40) sizeClass:*(a1 + 56)];
    v9 = [v3 folder];
    v10 = [v9 canAddIcon:v2];

    v11 = [v3 folder];
    v5 = v11;
    if (v10)
    {
      v12 = [v11 addIcon:v2];
LABEL_10:

      goto LABEL_11;
    }

    v6 = [v11 todayList];
    v13 = [v6 insertIcon:v2 atIndex:0];
LABEL_9:

    goto LABEL_10;
  }

  if (v4)
  {
    v5 = [*(a1 + 40) extensionBundleIdentifier];
    v6 = [*(a1 + 40) kind];
    *buf = 138412546;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_DEFAULT, "Found existing widgetIcon for debugging: %@ %@", buf, 0x16u);
    goto LABEL_9;
  }

LABEL_11:

  [*(a1 + 48) scrollToIconListContainingIcon:v2 animate:1];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __77__SBHIconManager__ensureWidgetIsVisibleForDebuggingWithDescriptor_sizeClass___block_invoke_239;
  v18[3] = &unk_1E808FD00;
  v19 = *(a1 + 40);
  v14 = [v2 firstWidgetPassingTest:v18];
  if (v14)
  {
    v15 = [v2 activeWidget];
    v16 = [v15 isEqual:v14];

    if ((v16 & 1) == 0)
    {
      v17 = SBLogWidgets();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v14;
        _os_log_impl(&dword_1BEB18000, v17, OS_LOG_TYPE_DEFAULT, "Setting active targetWidget: %@", buf, 0xCu);
      }

      [v2 setActiveWidget:v14];
    }
  }
}

uint64_t __77__SBHIconManager__ensureWidgetIsVisibleForDebuggingWithDescriptor_sizeClass___block_invoke_239(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 extensionBundleIdentifier];
  v5 = [*(a1 + 32) extensionBundleIdentifier];
  if ([v4 isEqualToString:v5])
  {
    v6 = [v3 kind];
    v7 = [*(a1 + 32) kind];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setListLayoutProvider:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (self->_listLayoutProvider != v7)
  {
    p_listLayoutProvider = &self->_listLayoutProvider;
    if ([(SBHIconManager *)self hasRootViewController])
    {
      v9 = [(SBHIconManager *)self isResettingRootIconLists];
    }

    else
    {
      v9 = 1;
    }

    v10 = SBHIconListLayoutProviderListGridSizeMatchesListLayoutProvider(*p_listLayoutProvider, v7, @"SBIconLocationRoot", 1);
    if (!v9 && !v10)
    {
      [(SBHIconManager *)self _prepareToResetRootIconLists];
    }

    v37 = [(SBIconListLayoutProvider *)v7 layoutForIconLocation:@"SBIconLocationRoot"];
    [v37 iconImageInfo];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = *p_listLayoutProvider;
    v20 = [v19 layoutForIconLocation:@"SBIconLocationRoot"];
    [v20 iconImageInfo];
    if (!SBIconImageInfoEqualToIconImageInfo(v12, v14, v16, v18, v21, v22, v23, v24))
    {
      [(SBHIconManager *)self resetAllIconImageCaches];
      folderIconImageCache = self->_folderIconImageCache;
      self->_folderIconImageCache = 0;
    }

    [(SBIconLabelImageCache *)self->_labelImageCache invalidate];
    labelImageCache = self->_labelImageCache;
    self->_labelImageCache = 0;

    v27 = [(SBHIconManager *)self addWidgetSheetConfigurationManagerCreatingIfNecessary:0];
    [v27 setListLayoutProvider:v7];

    objc_storeStrong(&self->_listLayoutProvider, a3);
    if (v9 || v10)
    {
      if (!v9 && v10)
      {
        v28 = [(SBHIconManager *)self usageMonitor];
        [v28 noteIconManagerListLayoutProviderChanged];

        v29 = [(SBHIconManager *)self rootFolderController];
        [v29 setListLayoutProvider:v7 animated:v4];
        v30 = [(SBHIconManager *)self iconImageCache];
        [v29 setIconImageCache:v30];

        v31 = [(SBHIconManager *)self folderIconImageCache];
        [v29 setFolderIconImageCache:v31];

        v32 = [(SBHIconManager *)self todayViewControllers];
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __49__SBHIconManager_setListLayoutProvider_animated___block_invoke;
        v38[3] = &unk_1E808FD28;
        v33 = v7;
        v39 = v33;
        v40 = v4;
        [v32 enumerateObjectsUsingBlock:v38];

        v34 = [(SBHIconManager *)self floatingDockViewController];
        [v34 setListLayoutProvider:v33 animated:v4];

        [(SBHIconManager *)self updateAppPredictionViewControllersWithListLayoutProvider:self->_listLayoutProvider oldListLayoutProvider:v19 animated:v4];
      }
    }

    else
    {
      [(SBHIconManager *)self _finishResetRootIconListsReusingPreviousControllers:0];
    }

    v35 = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v35 iconManagerListLayoutProviderDidChange:self];
    }

    v36 = [MEMORY[0x1E696AD88] defaultCenter];
    [v36 postNotificationName:@"SBHIconManagerListLayoutProviderDidChange" object:self];
  }
}

- (void)setListLayoutProviderLayoutOptions:(unint64_t)a3 animated:(BOOL)a4
{
  if (self->_listLayoutProviderLayoutOptions != a3)
  {
    v5 = a4;
    self->_listLayoutProviderLayoutOptions = a3;
    v8 = [[SBHDefaultIconListLayoutProvider alloc] initWithLayoutOptions:a3];
    [(SBHIconManager *)self setListLayoutProvider:v8 animated:v5];
    v7 = [(SBHIconManager *)self floatingDockViewController];
    [(SBHIconManager *)self _updateMaximumEditingIconSizeForFloatingDockViewController:v7];
  }
}

- (id)widgetMetricsProvider:(id)a3 listLayoutProviderForScreenType:(unint64_t)a4
{
  v6 = [(SBHIconManager *)self widgetMetricsDelegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 iconManager:self widgetMetricsListLayoutProviderForScreenType:a4];
  }

  else
  {
    v7 = [[SBHDefaultIconListLayoutProvider alloc] initWithScreenType:a4];
  }

  v8 = v7;

  return v8;
}

- (SBHLegibilitySettings)legibilitySettings
{
  if (!os_variant_has_internal_content() || (-[SBHIconManager legibilityLabelSettings](self, "legibilityLabelSettings"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 overrideLegibilitySettings], v3, !v4) || (-[SBHIconManager legibilityLabelSettings](self, "legibilityLabelSettings"), v5 = objc_claimAutoreleasedReturnValue(), +[SBHLegibilityLabelSettings generatedLegibilitySettingsForSettings:existingSettings:](SBHLegibilityLabelSettings, "generatedLegibilitySettingsForSettings:existingSettings:", v5, self->_legibilitySettings), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v6 = self->_legibilitySettings;
  }

  return v6;
}

- (void)setLegibilitySettings:(id)a3
{
  obj = [SBHLegibilitySettings legibilitySettingsForLegibilitySettings:a3];
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, obj);
    [(SBHIconManager *)self _updateLegibilitySettings];
  }
}

- (void)_updateLegibilitySettings
{
  v38 = *MEMORY[0x1E69E9840];
  [(SBHIconManager *)self setPrecachedContentSizeCategory:0];
  v3 = [(SBHIconManager *)self legibilitySettings];
  v4 = [(SBHIconManager *)self iconLabelImageCache];
  [v4 setLegibilitySettings:v3];

  [(SBHIconManager *)self _precacheLabelsForRootIcons:SBHFeatureEnabled(0) ^ 1 reason:@"legibility settings were updated"];
  v5 = [(SBHIconManager *)self rootViewController];
  [v5 setLegibilitySettings:v3];

  v6 = [(SBHIconManager *)self floatingDockViewController];
  [v6 setLegibilitySettings:v3];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [(SBHIconManager *)self leadingCustomViewControllers];
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      v11 = 0;
      do
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v31 + 1) + 8 * v11++) setLegibilitySettings:v3];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v9);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = [(SBHIconManager *)self trailingCustomViewControllers];
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    do
    {
      v16 = 0;
      do
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v27 + 1) + 8 * v16++) setLegibilitySettings:v3];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v14);
  }

  v17 = [(SBHIconManager *)self overlayTodayViewController];
  [v17 setLegibilitySettings:v3];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v18 = [(SBHIconManager *)self _libraryViewControllers];
  v19 = [v18 countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v24;
    do
    {
      v22 = 0;
      do
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v23 + 1) + 8 * v22++) setLegibilitySettings:v3];
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v23 objects:v35 count:16];
    }

    while (v20);
  }
}

- (void)setFloatingDockViewController:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_floatingDockViewController != v5)
  {
    v6 = SBLogIcon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_INFO, "setting floating dock view controller to %{public}@", &v7, 0xCu);
    }

    if ([(SBHIconManager *)self hasRootViewController])
    {
      [(SBHIconManager *)self _prepareToResetRootIconLists];
      [(SBFloatingDockViewController *)self->_floatingDockViewController setIconDelegate:0];
      objc_storeStrong(&self->_floatingDockViewController, a3);
      [(SBHIconManager *)self configureFloatingDockViewController:v5];
      [(SBHIconManager *)self _finishResetRootIconLists];
    }

    else
    {
      [(SBFloatingDockViewController *)self->_floatingDockViewController setIconDelegate:0];
      objc_storeStrong(&self->_floatingDockViewController, a3);
      [(SBHIconManager *)self configureFloatingDockViewController:v5];
    }
  }
}

- (void)configureFloatingDockViewController:(id)a3
{
  v6 = a3;
  v4 = [v6 iconDelegate];
  if (([(SBHIconManager *)self isEqual:v4]& 1) == 0)
  {
    [v6 setIconDelegate:0];
  }

  v5 = [(SBHIconManager *)self legibilitySettings];
  [v6 setLegibilitySettings:v5];
  [(SBHIconManager *)self _updateMaximumEditingIconSizeForFloatingDockViewController:v6];
  [v6 setPrefersFlatImageLayers:{-[SBHIconManager prefersFlatImageLayers](self, "prefersFlatImageLayers")}];
}

- (void)_updateMaximumEditingIconSizeForFloatingDockViewController:(id)a3
{
  v11 = a3;
  v4 = [(SBHIconManager *)self listLayoutProvider];
  v5 = [v4 layoutForIconLocation:@"SBIconLocationFloatingDock"];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 floatingDockVisualConfiguration];
    [v6 maximumEditingIconSize];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v8 = *MEMORY[0x1E695F060];
    v10 = *(MEMORY[0x1E695F060] + 8);
  }

  [v11 setMaximumEditingIconSize:{v8, v10}];
}

- (id)floatingDockViewControllerForView:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconManager:self floatingDockViewControllerForView:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setOverlayTodayViewController:(id)a3
{
  v5 = a3;
  overlayTodayViewController = self->_overlayTodayViewController;
  if (overlayTodayViewController != v5)
  {
    v9 = v5;
    [overlayTodayViewController removeObserver:self];
    objc_storeStrong(&self->_overlayTodayViewController, a3);
    v7 = self->_overlayTodayViewController;
    v8 = [(SBHIconManager *)self legibilitySettings];
    [(SBHTodayViewControlling *)v7 setLegibilitySettings:v8];

    overlayTodayViewController = [(SBHIconManager *)self isUsageMonitoringEnabled];
    v5 = v9;
    if (overlayTodayViewController)
    {
      overlayTodayViewController = [(SBHTodayViewControlling *)self->_overlayTodayViewController addObserver:self];
      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](overlayTodayViewController, v5);
}

- (void)setOverlayCoverSheetTodayViewController:(id)a3
{
  v5 = a3;
  overlayCoverSheetTodayViewController = self->_overlayCoverSheetTodayViewController;
  if (overlayCoverSheetTodayViewController != v5)
  {
    v7 = v5;
    [overlayCoverSheetTodayViewController removeObserver:self];
    objc_storeStrong(&self->_overlayCoverSheetTodayViewController, a3);
    overlayCoverSheetTodayViewController = [(SBHIconManager *)self isUsageMonitoringEnabled];
    v5 = v7;
    if (overlayCoverSheetTodayViewController)
    {
      overlayCoverSheetTodayViewController = [(SBHTodayViewControlling *)self->_overlayCoverSheetTodayViewController addObserver:self];
      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](overlayCoverSheetTodayViewController, v5);
}

- (id)todayViewControllers
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(SBHIconManager *)self overlayTodayViewController];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [(SBHIconManager *)self overlayCoverSheetTodayViewController];
  if (v5)
  {
    [v3 addObject:v5];
  }

  v6 = [(SBHIconManager *)self leadingTodayViewController];
  if (v6)
  {
    [v3 addObject:v6];
  }

  return v3;
}

- (void)setOverlayLibraryViewController:(id)a3
{
  v5 = a3;
  if (self->_overlayLibraryViewController != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_overlayLibraryViewController, a3);
    overlayLibraryViewController = self->_overlayLibraryViewController;
    v7 = [(SBHIconManager *)self legibilitySettings];
    [(SBHLibraryViewController *)overlayLibraryViewController setLegibilitySettings:v7];

    [(SBHIconManager *)self configureLibraryViewController:v8];
    v5 = v8;
  }
}

- (BOOL)isOverlayTodayOrLibraryViewVisible
{
  if ([(SBHIconManager *)self isOverlayTodayViewVisible])
  {
    return 1;
  }

  return [(SBHIconManager *)self isMainDisplayLibraryViewVisible];
}

- (BOOL)isFloatingDockSupported
{
  v3 = [(SBHIconManager *)self floatingDockViewController];

  v4 = [(SBHIconManager *)self delegate];
  if (v3)
  {
    v5 = 1;
  }

  else if (objc_opt_respondsToSelector())
  {
    v5 = [v4 isFloatingDockSupportedForIconManager:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isFloatingDockUtilitiesSupported
{
  if (![(SBHIconManager *)self isFloatingDockSupported])
  {
    return 0;
  }

  v3 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 isFloatingDockUtilitiesSupportedForIconManager:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isFloatingDockVisible
{
  v3 = [(SBHIconManager *)self floatingDockViewController];

  if (!v3)
  {
    return 0;
  }

  v4 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 isFloatingDockVisibleForIconManager:self];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)setOverlayCoverSheetTodayViewVisible:(BOOL)a3
{
  if (self->_overlayCoverSheetTodayViewVisible != a3)
  {
    v4 = a3;
    self->_overlayCoverSheetTodayViewVisible = a3;
    v6 = [(SBHIconManager *)self usageMonitor];
    v8 = v6;
    if (v4)
    {
      [v6 noteIconManagerCoverSheetTodayViewDidAppear];
      v7 = [(SBHIconManager *)self overlayCoverSheetTodayViewController];
      [(SBHIconManager *)self informUsageMonitorOfVisibleIconRectsForTodayViewController:v7];
    }

    else
    {
      [v6 noteIconManagerCoverSheetTodayViewDidDisappear];
    }
  }
}

- (void)setOverlayTodayViewVisible:(BOOL)a3
{
  if (self->_overlayTodayViewVisible != a3)
  {
    self->_overlayTodayViewVisible = a3;
    [(SBHIconManager *)self _updateOverlayOcclusionForRootFolderController];
    v5 = [(SBHIconManager *)self overlayTodayViewController];
    [(SBHIconManager *)self informUsageMonitorOfTodayViewVisibilityChange:v5];
  }
}

- (void)setOverlayTodayViewVisibilityTransitioning:(BOOL)a3
{
  if (self->_overlayTodayViewVisibilityTransitioning != a3)
  {
    self->_overlayTodayViewVisibilityTransitioning = a3;
    [(SBHIconManager *)self _updateOverlayOcclusionForRootFolderController];
  }
}

- (void)setOverlayTodayViewVisible:(BOOL)a3 todayViewTransitioning:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  overlayTodayViewVisible = self->_overlayTodayViewVisible;
  if (!a4)
  {
    if (!self->_overlayTodayViewVisibilityTransitioning)
    {
      goto LABEL_10;
    }

    if (!a3 && self->_overlayTodayViewIsDismissingFromFullyPresented)
    {
      v9 = [(SBHIconManager *)self rootFolderController];
      v10 = [v9 rootFolderView];
      [v10 _flashPageDotsForReason:@"today-view-dismiss"];
    }

    v8 = 0;
    goto LABEL_9;
  }

  v8 = self->_overlayTodayViewVisible;
  if (!self->_overlayTodayViewVisibilityTransitioning)
  {
LABEL_9:
    self->_overlayTodayViewIsDismissingFromFullyPresented = v8;
  }

LABEL_10:
  if (overlayTodayViewVisible == v5)
  {
    if (self->_overlayTodayViewVisibilityTransitioning != v4)
    {
      self->_overlayTodayViewVisible = v5;
      self->_overlayTodayViewVisibilityTransitioning = v4;

      [(SBHIconManager *)self _updateOverlayOcclusionForRootFolderController];
    }
  }

  else
  {
    self->_overlayTodayViewVisible = v5;
    self->_overlayTodayViewVisibilityTransitioning = v4;
    [(SBHIconManager *)self _updateOverlayOcclusionForRootFolderController];
    v11 = [(SBHIconManager *)self overlayTodayViewController];
    [(SBHIconManager *)self informUsageMonitorOfTodayViewVisibilityChange:v11];
  }
}

- (void)informUsageMonitorOfTodayViewVisibilityChange:(id)a3
{
  v5 = a3;
  v4 = [(SBHIconManager *)self usageMonitor];
  if ([(SBHIconManager *)self isTodayViewEffectivelyVisible])
  {
    [v4 noteIconManagerOverlayTodayViewDidAppear];
    [(SBHIconManager *)self informUsageMonitorOfVisibleIconRectsForTodayViewController:v5];
  }

  else
  {
    [v4 noteIconManagerOverlayTodayViewDidDisappear];
  }
}

- (void)informUsageMonitorOfVisibleIconRectsForTodayViewController:(id)a3
{
  v4 = a3;
  if ([(SBHIconManager *)self isUsageMonitoringEnabled])
  {
    v5 = [v4 scrollView];
    [v5 visibleBounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __77__SBHIconManager_informUsageMonitorOfVisibleIconRectsForTodayViewController___block_invoke;
    v19[3] = &__block_descriptor_64_e24_v16__0__SBIconListView_8l;
    *&v19[4] = v6;
    *&v19[5] = v8;
    *&v19[6] = v10;
    *&v19[7] = v12;
    v14 = _Block_copy(v19);
    v15 = [v4 listView];
    v16 = [v15 iconVisibilityInfoForRect:1 normalized:{v7, v9, v11, v13}];
    v14[2](v14, v15);
    v17 = [v16 visibleIconRects];
    v18 = [(SBHIconManager *)self usageMonitor];
    [(SBHIconManager *)self overlayCoverSheetTodayViewController];

    [v18 noteIconManagerTodayViewAtLocation:1 didScrollToRevealIcons:v17];
  }
}

void __77__SBHIconManager_informUsageMonitorOfVisibleIconRectsForTodayViewController___block_invoke(double *a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 iconVisibilityInfoForRect:0 normalized:{a1[4], a1[5], a1[6], a1[7]}];
  [v3 icons];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v36 = 0u;
  v5 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v34;
    v22 = *v34;
    v23 = v3;
    do
    {
      v8 = 0;
      v24 = v6;
      do
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v33 + 1) + 8 * v8);
        v10 = [v3 displayedIconViewForIcon:v9];
        v11 = [v10 customIconImageViewController];
        if ([v11 sbh_isWidgetStackViewController])
        {
          v27 = v10;
          v28 = v8;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v26 = v11;
          v12 = [v11 widgetViewControllers];
          v13 = [v12 countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v30;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v30 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v29 + 1) + 8 * i);
                if ([v17 sbh_isMultiplexingViewController])
                {
                  v18 = [v17 multiplexedViewController];
                }

                else
                {
                  v18 = v17;
                }

                v19 = v18;
                v20 = objc_opt_self();
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  [v4 visibleRectForIcon:v9];
                  [v19 setVisibleBounds:?];
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v29 objects:v37 count:16];
            }

            while (v14);
          }

          v7 = v22;
          v3 = v23;
          v6 = v24;
          v10 = v27;
          v8 = v28;
          v11 = v26;
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v6);
  }
}

- (void)setMainDisplayLibraryViewVisible:(BOOL)a3
{
  if (self->_mainDisplayLibraryViewVisible != a3)
  {
    self->_mainDisplayLibraryViewVisible = a3;
    [(SBHIconManager *)self _updateOverlayOcclusionForRootFolderController];
  }
}

- (void)setMainDisplayLibraryViewVisibilityTransitioning:(BOOL)a3
{
  if (self->_mainDisplayLibraryViewVisibilityTransitioning != a3)
  {
    self->_mainDisplayLibraryViewVisibilityTransitioning = a3;
    [(SBHIconManager *)self _updateOverlayOcclusionForRootFolderController];
  }
}

- (void)setMainDisplayLibraryViewVisible:(BOOL)a3 libraryViewTransitioning:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (a4)
  {
    if (!self->_mainDisplayLibraryViewVisibilityTransitioning)
    {
      mainDisplayLibraryViewVisible = self->_mainDisplayLibraryViewVisible;
LABEL_9:
      self->_mainDisplayLibraryViewIsDismissingFromFullyPresented = mainDisplayLibraryViewVisible;
    }
  }

  else if (self->_mainDisplayLibraryViewVisibilityTransitioning)
  {
    if (!a3 && self->_mainDisplayLibraryViewIsDismissingFromFullyPresented)
    {
      v8 = [(SBHIconManager *)self rootFolderController];
      v9 = [v8 rootFolderView];
      [v9 _flashPageDotsForReason:@"library-dismiss"];
    }

    mainDisplayLibraryViewVisible = 0;
    goto LABEL_9;
  }

  if (self->_mainDisplayLibraryViewVisible != v5 || self->_mainDisplayLibraryViewVisibilityTransitioning != v4)
  {
    self->_mainDisplayLibraryViewVisible = v5;
    self->_mainDisplayLibraryViewVisibilityTransitioning = v4;

    [(SBHIconManager *)self _updateOverlayOcclusionForRootFolderController];
  }
}

- (void)_updateOverlayOcclusionForRootFolderController
{
  v4 = self->_overlayTodayViewVisible || self->_mainDisplayLibraryViewVisible;
  v5 = [(SBHIconManager *)self effectiveRootFolderControllerContentVisibility];
  [(SBRootFolderController *)self->_rootFolderController setOccludedByOverlay:v4];
  [(SBFolderController *)self->_rootFolderController setContentVisibility:v5];
  rootFolderController = self->_rootFolderController;
  v7 = NSStringFromSelector(a2);
  [(SBRootFolderController *)rootFolderController setParallaxDisabled:v4 forReason:v7];
}

- (void)presentTodayOverlay
{
  v3 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 presentTodayOverlayForIconManager:self];
  }
}

- (int64_t)listsFixedIconLocationBehavior
{
  v3 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 iconManagerListsFixedIconLocationBehavior:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)listsIconDisplacementBehavior
{
  v3 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 iconManagerListsIconDisplacementBehavior:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)ensureFixedIconLocationsIfNecessary
{
  if ([(SBHIconManager *)self listsFixedIconLocationBehavior])
  {
    v3 = [(SBHIconManager *)self rootFolder];
    [v3 enumerateListsWithOptions:4 usingBlock:&__block_literal_global_278];
  }
}

- (id)_folderControllerForIcon:(id)a3 inLocation:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7 || ![v6 isFolderIcon] || !SBIconLocationGroupContainsLocation(@"SBIconLocationGroupAppLibrary", v7))
  {
    goto LABEL_17;
  }

  v8 = [(SBHIconManager *)self trailingLibraryViewController];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [(SBHIconManager *)self _libraryViewControllers];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([v13 isDisplayingIcon:v6])
        {
          v10 = v13;
          goto LABEL_14;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
  if ((v9, (v14 = v8) == 0) && (v14 = v10) == 0 || ([v14 folderController], v15 = objc_claimAutoreleasedReturnValue(), v10, v8, !v15))
  {
LABEL_17:
    v15 = [(SBHIconManager *)self rootFolderController];
  }

  return v15;
}

- (void)setEditing:(BOOL)a3 withFeedbackBehavior:(id)a4 location:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v53 = *MEMORY[0x1E69E9840];
  v9 = a4;
  if (!a3)
  {
    if (![(SBHIconManager *)self isEditing])
    {
      goto LABEL_34;
    }

    self->_editing = 0;
LABEL_7:
    [(NSMutableSet *)self->_partialEditingIconLocations removeAllObjects];
    [(SBHIconManager *)self _invalidateWallpaperTintColorDropper];
    if (self->_editingActivity)
    {
      os_activity_scope_leave(&self->_editingActivityScope);
      editingActivity = self->_editingActivity;
      self->_editingActivity = 0;
    }

    v16 = [(SBHIconManager *)self rootFolder];
    [v16 enumerateAllIconsWithOptions:1 usingBlock:&__block_literal_global_281];

    v13 = 0;
    v14 = 0;
    goto LABEL_10;
  }

  v10 = [(SBHIconManager *)self isEditingAllowed];
  if (v10 == [(SBHIconManager *)self isEditing])
  {
    goto LABEL_34;
  }

  self->_editing = v10;
  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = _os_activity_create(&dword_1BEB18000, "editing mode", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12 = self->_editingActivity;
  self->_editingActivity = v11;

  os_activity_scope_enter(self->_editingActivity, &self->_editingActivityScope);
  v13 = 1;
  v14 = 1;
LABEL_10:
  v17 = SBLogIcon();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v52 = v14;
    _os_log_impl(&dword_1BEB18000, v17, OS_LOG_TYPE_DEFAULT, "Editing state changed: %{BOOL}u", buf, 8u);
  }

  [(SBHIconManager *)self setPreviewInteractingIconView:0];
  v18 = [(SBHIconManager *)self floatingDockViewController];
  [v18 setEditing:v13 animated:1];

  v19 = [(SBHIconManager *)self rootViewController];
  [v19 setEditing:v13 animated:1];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v20 = [(SBHIconManager *)self leadingCustomViewControllers];
  v21 = [v20 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v45;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v45 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v44 + 1) + 8 * i) setEditing:v13 animated:1];
      }

      v22 = [v20 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v22);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v25 = [(SBHIconManager *)self trailingCustomViewControllers];
  v26 = [v25 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v41;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v41 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [*(*(&v40 + 1) + 8 * j) setEditing:v13 animated:1];
      }

      v27 = [v25 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v27);
  }

  v30 = [(SBHIconManager *)self overlayTodayViewController];
  [v30 setEditing:v13 animated:1];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v31 = [(SBHIconManager *)self _libraryViewControllers];
  v32 = [v31 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v37;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v37 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [*(*(&v36 + 1) + 8 * k) setEditing:v13 animated:1];
      }

      v33 = [v31 countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v33);
  }

  [(SBHIconManager *)self editingDidChangeWithFeedbackBehavior:v9 location:x, y];
LABEL_34:
}

void __59__SBHIconManager_setEditing_withFeedbackBehavior_location___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isFolderIcon])
  {
    v2 = [v3 folder];
    [v2 setCancelable:0];
  }
}

- (void)editingDidChangeWithFeedbackBehavior:(id)a3 location:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v15 = a3;
  v7 = [(SBHIconManager *)self isEditing];
  v8 = [(SBHIconManager *)self iconModel];
  if (v7)
  {
    [v15 impactOccurredWithIntensity:1.0 atLocation:{x, y}];
    [(SBHIconManager *)self _restartEditingEndTimer];
    [(SBHIconManager *)self displayEnterEditingModeFeatureIntroductions];
  }

  else
  {
    v9 = [(SBHIconManager *)self editingAutosaveDisableAssertion];
    [v9 invalidate];

    [(SBHIconManager *)self setEditingAutosaveDisableAssertion:0];
    [v8 saveIconStateIfNeeded];
    [v8 clearDesiredIconState];
    v10 = [(SBHIconManager *)self editingEndTimer];
    [v10 invalidate];

    [(SBHIconManager *)self setEditingEndTimer:0];
  }

  v11 = [(SBHIconManager *)self searchGesture];
  [v11 setDisabled:v7 forReason:@"SBHIconManager Editing"];

  v12 = [(SBHIconManager *)self iconDragManager];
  [v12 noteIconManagerEditingDidChange];

  v13 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v13 iconManagerEditingDidChange:self];
  }

  v14 = [MEMORY[0x1E696AD88] defaultCenter];
  [v14 postNotificationName:@"SBHIconManagerEditingStateChanged" object:self];

  if (!v7)
  {
    [(SBHIconManager *)self enumerateKnownIconViewsUsingBlock:&__block_literal_global_286];
  }
}

- (void)setEditing:(BOOL)a3 fromIconListView:(id)a4
{
  v4 = a3;
  v7 = a4;
  if ([(SBHIconManager *)self isEditingAllowed])
  {
    [(SBHIconManager *)self setEditing:v4];
  }

  else if ([(SBHIconManager *)self isEditingAllowedForIconListView:v7])
  {
    v6 = [v7 iconLocation];
    [(SBHIconManager *)self setEditing:v4 forIconLocation:v6];
  }
}

- (void)setEditing:(BOOL)a3 fromIconView:(id)a4
{
  v4 = a3;
  v7 = a4;
  if ([(SBHIconManager *)self isEditingAllowedForIconView:?])
  {
    if ([(SBHIconManager *)self isEditingAllowed])
    {
      [(SBHIconManager *)self setEditing:v4];
    }

    else
    {
      v6 = [v7 location];
      [(SBHIconManager *)self setEditing:v4 forIconLocation:v6];
    }
  }
}

- (void)setEditing:(BOOL)a3 forIconLocation:(id)a4
{
  v4 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  partialEditingIconLocations = self->_partialEditingIconLocations;
  if (v4)
  {
    if (!partialEditingIconLocations)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v9 = self->_partialEditingIconLocations;
      self->_partialEditingIconLocations = v8;

      partialEditingIconLocations = self->_partialEditingIconLocations;
    }

    [(NSMutableSet *)partialEditingIconLocations addObject:v6];
  }

  else
  {
    [(NSMutableSet *)partialEditingIconLocations removeObject:v6];
  }

  if (SBIconLocationGroupContainsLocation(@"SBIconLocationGroupTodayView", v6))
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = [(SBHIconManager *)self leadingCustomViewControllers];
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v16 + 1) + 8 * v14++) setEditing:v4];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }

    v15 = [(SBHIconManager *)self overlayTodayViewController];
    [v15 setEditing:v4];

    goto LABEL_16;
  }

  if (SBIconLocationGroupContainsLocation(@"SBIconLocationGroupFloatingDock", v6))
  {
LABEL_16:
    [(SBHIconManager *)self editingDidChange];
  }
}

- (BOOL)isEditingForIconLocation:(id)a3
{
  v4 = a3;
  if ([(SBHIconManager *)self isEditing])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(NSMutableSet *)self->_partialEditingIconLocations containsObject:v4];
  }

  return v5;
}

- (BOOL)isEditingAllowedForIconLocation:(id)a3
{
  v4 = a3;
  if (-[SBHIconManager isEditingAllowed](self, "isEditingAllowed") || -[SBHIconManager isIconContentPossiblyVisibleOverApplication](self, "isIconContentPossiblyVisibleOverApplication") && ((SBIconLocationGroupContainsLocation(@"SBIconLocationGroupFloatingDock", v4) & 1) != 0 || ([v4 isEqualToString:@"SBIconLocationFolder"] & 1) != 0))
  {
    v5 = 1;
  }

  else
  {
    v6 = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v6 iconManager:self isPartialEditingAllowedForIconLocation:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEditingAllowedForIconView:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconManager:self isEditingAllowedForIconView:v4];
  }

  else
  {
    v6 = 1;
  }

  v7 = [v4 location];
  v8 = [(SBHIconManager *)self isEditingAllowedForIconLocation:v7];

  return v6 & v8;
}

- (BOOL)isEditingAllowedForIconListView:(id)a3
{
  v4 = [a3 iconLocation];
  LOBYTE(self) = [(SBHIconManager *)self isEditingAllowedForIconLocation:v4];

  return self;
}

- (BOOL)isEditingForIconListView:(id)a3
{
  v4 = [a3 iconLocation];
  LOBYTE(self) = [(SBHIconManager *)self isEditingForIconLocation:v4];

  return self;
}

- (void)enumerateEditableViewControllersUsingBlock:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBHIconManager *)self rootViewController];
  [(SBHIconManager *)self _enumerateEditableViewController:v5 usingBlock:v4];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(SBHIconManager *)self leadingCustomViewControllers];
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(SBHIconManager *)self _enumerateEditableViewController:*(*(&v21 + 1) + 8 * v10++) usingBlock:v4];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  v11 = [(SBHIconManager *)self overlayTodayViewController];
  [(SBHIconManager *)self _enumerateEditableViewController:v11 usingBlock:v4];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = [(SBHIconManager *)self _libraryViewControllers];
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(SBHIconManager *)self _enumerateEditableViewController:*(*(&v17 + 1) + 8 * v16++) usingBlock:v4];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

- (void)_enumerateEditableViewController:(id)a3 usingBlock:(id)a4
{
  if (a3)
  {
    v4 = 0;
    (*(a4 + 2))(a4, a3, &v4);
  }
}

void __41__SBHIconManager__restartEditingEndTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isEditing])
  {
    [WeakRetained setEditing:0];
  }
}

- (void)configureFeedbackView:(id)a3
{
  v4 = MEMORY[0x1E69DCAE8];
  v5 = a3;
  v6 = [v4 alloc];
  v9 = [MEMORY[0x1E69DD560] defaultConfiguration];
  v7 = [v6 initWithConfiguration:v9 view:v5];

  iconEditingFeedbackBehavior = self->_iconEditingFeedbackBehavior;
  self->_iconEditingFeedbackBehavior = v7;
}

- (void)displayEnterEditingModeFeatureIntroductions
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(SBHIconManager *)self delegate];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(SBHIconManager *)self featureIntroductionManager];
  v5 = [v4 featureIntroductionItemAtLocation:8];
  v6 = [v5 allObjects];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v3 iconManager:self displayFeatureIntroductionItem:v11 atLocation:8];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)displayFeatureIntroductionItemIfUnlocked:(id)a3
{
  v5 = a3;
  v4 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 iconManager:self displayFeatureIntroductionItemIfUnlocked:v5];
  }
}

- (void)_addTouchedIconView:(id)a3
{
  v4 = a3;
  touchedIconViews = self->_touchedIconViews;
  v8 = v4;
  if (!touchedIconViews)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_touchedIconViews;
    self->_touchedIconViews = v6;

    v4 = v8;
    touchedIconViews = self->_touchedIconViews;
  }

  [(NSMutableSet *)touchedIconViews addObject:v4];
}

- (void)_removeTouchedIconView:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self->_touchedIconViews removeObject:a3];
  if (![(NSMutableSet *)self->_touchedIconViews count])
  {
    iconTouchesFinishedBlocks = self->_iconTouchesFinishedBlocks;
    if (iconTouchesFinishedBlocks)
    {
      v5 = iconTouchesFinishedBlocks;
      v6 = self->_iconTouchesFinishedBlocks;
      self->_iconTouchesFinishedBlocks = 0;

      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v7 = v5;
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v13;
        do
        {
          v11 = 0;
          do
          {
            if (*v13 != v10)
            {
              objc_enumerationMutation(v7);
            }

            (*(*(*(&v12 + 1) + 8 * v11) + 16))(*(*(&v12 + 1) + 8 * v11));
            ++v11;
          }

          while (v9 != v11);
          v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v9);
      }
    }
  }
}

- (void)performAfterAllIconTouchesFinishedUsingBlock:(id)a3
{
  v4 = a3;
  if ([(SBHIconManager *)self isIconTouched])
  {
    v5 = SBLogIcon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "Will perform block after icon touches are finished", v11, 2u);
    }

    iconTouchesFinishedBlocks = self->_iconTouchesFinishedBlocks;
    if (!iconTouchesFinishedBlocks)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v8 = self->_iconTouchesFinishedBlocks;
      self->_iconTouchesFinishedBlocks = v7;

      iconTouchesFinishedBlocks = self->_iconTouchesFinishedBlocks;
    }

    v9 = [v4 copy];
    v10 = _Block_copy(v9);
    [(NSMutableArray *)iconTouchesFinishedBlocks addObject:v10];
  }

  else
  {
    v4[2](v4);
  }
}

- (BOOL)shouldHighlightTouchedIconView:(id)a3
{
  v4 = a3;
  v5 = [v4 icon];
  v6 = [(SBHIconManager *)self reasonToDisallowTapOnIconView:v4];

  if (v6 || ([v4 isGrabbed] & 1) != 0 || objc_msgSend(v5, "isFolderIcon") && !-[SBHIconManager canOpenFolderForIcon:](self, "canOpenFolderForIcon:", v5) || (-[SBHIconManager iconDragManager](self, "iconDragManager"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isTrackingDroppingIconDrags"), v7, (v8 & 1) != 0) || (objc_msgSend(v4, "isPaused") & 1) != 0)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = [v4 lastTouchWasPointer] ^ 1;
  }

  return v9;
}

- (void)highlightIconView:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBHIconManager *)self highlightedIconView];
  if (v5 == v4)
  {
    v6 = SBLogIcon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v9 = 138412290;
      *&v9[4] = v4;
      v8 = "Icon view is already highlighted: %@";
LABEL_10:
      _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_INFO, v8, v9, 0xCu);
    }

LABEL_11:

    goto LABEL_12;
  }

  v6 = SBLogIcon();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (!v5)
  {
    if (v7)
    {
      *v9 = 138412290;
      *&v9[4] = v4;
      v8 = "Highlighting icon view: %@";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v7)
  {
    *v9 = 138412546;
    *&v9[4] = v5;
    *&v9[12] = 2112;
    *&v9[14] = v4;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_INFO, "Unhighlighting icon view '%@' to highlight '%@'", v9, 0x16u);
  }

  [v5 setHighlighted:0];
LABEL_12:
  [v4 setHighlighted:{1, *v9}];
  [(SBHIconManager *)self setHighlightedIconView:v4];
}

- (void)clearHighlightedIcon:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBHIconManager *)self highlightedIconView];
  v6 = [v5 icon];
  v7 = [v6 isEqual:v4];

  if (v7)
  {
    v8 = SBLogIcon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_INFO, "Clearing highlight from icon view: %@", &v9, 0xCu);
    }

    [v5 setHighlighted:0];
    [(SBHIconManager *)self setHighlightedIconView:0];
  }
}

- (SBIconListView)currentRootIconList
{
  v2 = [(SBHIconManager *)self rootFolderController];
  v3 = [v2 currentIconListView];

  return v3;
}

- (id)rootIconListAtIndex:(int64_t)a3
{
  if (a3 == 10000)
  {
    v3 = [(SBHIconManager *)self effectiveDockListView];
LABEL_5:
    v5 = v3;
    goto LABEL_7;
  }

  if (a3 == 40000)
  {
    v3 = [(SBHIconManager *)self effectiveDockUtilitiesListView];
    goto LABEL_5;
  }

  v6 = [(SBHIconManager *)self rootFolderController];
  v5 = [v6 iconListViewAtIndex:a3];

LABEL_7:

  return v5;
}

- (SBIconListView)dockListView
{
  v2 = [(SBHIconManager *)self rootFolderController];
  v3 = [v2 dockListView];

  return v3;
}

- (SBIconListView)floatingDockListView
{
  v2 = [(SBHIconManager *)self floatingDockViewController];
  v3 = [v2 userIconListView];

  return v3;
}

- (id)floatingDockUtilitiesListView
{
  v2 = [(SBHIconManager *)self floatingDockViewController];
  v3 = [v2 utilitiesIconListView];

  return v3;
}

- (SBIconListView)floatingDockSuggestionsListView
{
  v2 = [(SBHIconManager *)self floatingDockViewController];
  v3 = [v2 recentIconListView];

  return v3;
}

- (BOOL)shouldEnforceMaxCombinedUserAndUtilitiesIconCountForFloatingDock
{
  v3 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(SBHIconManager *)self floatingDockViewController];
    v5 = [v3 iconManager:self shouldEnforceMaxCombinedUserAndUtilitiesIconCountForFloatingDock:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (SBIconListView)effectiveDockListView
{
  v3 = [(SBHIconManager *)self dockListView];
  if (!v3)
  {
    v3 = [(SBHIconManager *)self floatingDockListView];
  }

  return v3;
}

- (BOOL)_shouldRespondToIconCloseBoxes
{
  v2 = [(SBHIconManager *)self iconDragManager];
  v3 = [v2 isTrackingActiveOrDroppingIconDrags];

  return v3 ^ 1;
}

- (void)enumerateDisplayedIconViewsUsingBlock:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBHIconManager *)self rootViewController];
  [v5 enumerateDisplayedIconViewsUsingBlock:v4];

  v6 = [(SBHIconManager *)self floatingDockViewController];
  [v6 enumerateDisplayedIconViewsUsingBlock:v4];

  v7 = [(SBHIconManager *)self _effectiveTodayViewController];
  [v7 enumerateDisplayedIconViewsUsingBlock:v4];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [(SBHIconManager *)self _libraryViewControllers];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) enumerateDisplayedIconViewsUsingBlock:v4];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)enumerateDisplayedIconViewsForIcon:(id)a3 usingBlock:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(SBHIconManager *)self rootViewController];
  [v8 enumerateDisplayedIconViewsForIcon:v6 usingBlock:v7];

  v9 = [(SBHIconManager *)self floatingDockViewController];
  [v9 enumerateDisplayedIconViewsForIcon:v6 usingBlock:v7];

  v10 = [(SBHIconManager *)self _effectiveTodayViewController];
  [v10 enumerateDisplayedIconViewsForIcon:v6 usingBlock:v7];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = [(SBHIconManager *)self _libraryViewControllers];
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v16 + 1) + 8 * v15++) enumerateDisplayedIconViewsForIcon:v6 usingBlock:v7];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)enumerateKnownIconViewsUsingBlock:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBHIconManager *)self iconViewMap];
  [v5 enumerateRecycledViewsUsingBlock:v4];

  v6 = [(SBHIconManager *)self rootViewController];
  [v6 enumerateDisplayedIconViewsUsingBlock:v4];

  v7 = [(SBHIconManager *)self floatingDockViewController];
  [v7 enumerateDisplayedIconViewsUsingBlock:v4];

  v8 = [(SBHIconManager *)self overlayTodayViewController];
  [v8 enumerateDisplayedIconViewsUsingBlock:v4];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = [(SBHIconManager *)self _libraryViewControllers];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13++) enumerateDisplayedIconViewsUsingBlock:v4];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)_updateVisibleIconsViewsForAllowableCloseBoxes
{
  v3 = [(SBHIconManager *)self iconsShouldAllowCloseBoxes];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__SBHIconManager__updateVisibleIconsViewsForAllowableCloseBoxes__block_invoke;
  v4[3] = &unk_1E808CC60;
  v4[4] = self;
  v5 = v3;
  [(SBHIconManager *)self enumerateDisplayedIconViewsUsingBlock:v4];
}

void __64__SBHIconManager__updateVisibleIconsViewsForAllowableCloseBoxes__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 continuityItem];
  if (v3)
  {
  }

  else if ([*(a1 + 32) iconViewDisplaysCloseBox:v5])
  {
    v4 = *(a1 + 40);
    goto LABEL_6;
  }

  v4 = 0;
LABEL_6:
  [v5 setAllowsCloseBox:v4 & 1];
}

- (BOOL)isIconVisiblyRepresented:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self rootFolder];
  v6 = [v5 containsIcon:v4];

  return v6;
}

- (BOOL)isIconIgnored:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self rootFolder];
  v6 = [v5 ignoredList];
  v7 = [v6 directlyContainsIcon:v4];

  return v7;
}

- (id)applicationWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self iconModel];
  v6 = [v5 applicationIconForBundleIdentifier:v4];

  v7 = [v6 application];

  return v7;
}

- (id)addApplicationPlaceholders:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBHIconManager *)self iconModel];
  v20 = [(SBHIconManager *)self rootFolder];
  v21 = [MEMORY[0x1E695DFA8] set];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v18 = 0;
    v22 = *v26;
    obj = v6;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [v10 applicationBundleIdentifier];
        v12 = [v5 applicationIconsForBundleIdentifier:v11];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __45__SBHIconManager_addApplicationPlaceholders___block_invoke;
        v23[3] = &unk_1E808FDE8;
        v13 = v12;
        v24 = v13;
        [(SBHIconManager *)self enumerateAllIconImageCachesUsingBlock:v23];
        v14 = [v5 addApplicationPlaceholder:v10];
        if (v14)
        {
          [v21 addObject:v14];
          v15 = [v20 indexPathForIcon:v14];

          if (!v15)
          {
            if ([v10 isNewAppInstallFromStore])
            {
              v16 = 64;
            }

            else
            {
              v16 = 0;
            }

            [(SBHIconManager *)self addNewIconToDesignatedLocation:v14 options:v16];
            v18 = 1;
          }
        }
      }

      v6 = obj;
      v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);

    if (v18)
    {
      [v5 saveIconStateIfNeeded];
    }
  }

  else
  {
  }

  return v21;
}

- (id)replaceApplicationPlaceholderWithApplication:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBHIconManager *)self iconModel];
  v6 = [v4 bundleIdentifier];
  v7 = [v5 applicationIconsForBundleIdentifier:v6];
  if ([v7 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v16 + 1) + 8 * i) replaceIconDataSourcesWithApplication:{v4, v16}];
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }

    v7 = v8;
  }

  else
  {
    v8 = [v5 addApplication:v4];
    if (v8)
    {
      [(SBHIconManager *)self addNewIconToDesignatedLocation:v8 options:4];
      v20 = v8;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];

      v7 = v13;
    }
  }

  v14 = [v7 firstObject];

  return v14;
}

- (void)replaceApplicationPlaceholderWithApplication:(id)a3 completionHandler:(id)a4
{
  v11 = a4;
  v6 = a3;
  v7 = [(SBHIconManager *)self iconModel];
  v8 = [v7 addApplication:v6];

  v9 = [(SBHIconManager *)self rootFolder];
  v10 = [v9 indexPathForIcon:v8];

  if (!v10)
  {
    [(SBHIconManager *)self addNewIconToDesignatedLocation:v8 options:4];
  }

  if (v11)
  {
    v11[2](v11, v8);
  }
}

- (void)uninstallIcon:(id)a3 animate:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    if (![v8 isUninstalled])
    {
      v10 = SBLogIcon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        v20 = v6;
        v21 = 2112;
        v22 = v8;
        _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "Uninstall icon animated=%{BOOL}u : %@", buf, 0x12u);
      }

      [v8 setUninstalled];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __51__SBHIconManager_uninstallIcon_animate_completion___block_invoke;
      v15[3] = &unk_1E808FE10;
      v16 = v8;
      v17 = self;
      v18 = v9;
      [(SBHIconManager *)self removeIcon:v16 options:v6 completion:v15];

      goto LABEL_13;
    }
  }

  else
  {
    v11 = SBLogCommon();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      NSLog(&cfstr_NoIconGivenToU.isa);
    }

    if (([0 isUninstalled] & 1) == 0)
    {
      v14 = SBLogIcon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [SBHIconManager uninstallIcon:animate:completion:];
      }

      if (v9)
      {
        goto LABEL_12;
      }

      goto LABEL_13;
    }
  }

  v13 = SBLogIcon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v20 = v6;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_DEFAULT, "Ignoring uninstall icon animated=%{BOOL}u because it is already uninstalled : %@", buf, 0x12u);
  }

  if (v9)
  {
LABEL_12:
    (*(v9 + 2))(v9, 0);
  }

LABEL_13:
}

uint64_t __51__SBHIconManager_uninstallIcon_animate_completion___block_invoke(uint64_t a1, int a2)
{
  [*(a1 + 32) completeUninstall];
  if (a2)
  {
    if ([*(a1 + 32) isWidgetIcon])
    {
      v4 = [*(a1 + 40) homeScreenDefaults];
      v5 = [v4 userDidUndoSuggestedWidget];

      if ((v5 & 1) == 0)
      {
        [*(a1 + 40) updateWidgetDiscoverabilityUserPreferencesByDeletingWidget:*(a1 + 32)];
      }
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

- (void)addIconToIgnoredList:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v6 = a4;
  v57 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v10 = v6 & 1;
    v11 = SBLogIcon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v54 = v6 & 1;
      v55 = 2112;
      v56 = v8;
      _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, "Uninstall icon animated=%{BOOL}u : %@", buf, 0x12u);
    }

    if ([v8 isFolderIcon] && !-[SBHIconManager canAddIconToIgnoredList:](self, "canAddIconToIgnoredList:", v8))
    {
      v38 = [v8 folder];
      v12 = [v38 allIcons];
      v13 = [v12 copy];

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v47 objects:v52 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v48;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v48 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v47 + 1) + 8 * i);
            if ([(SBHIconManager *)self canAddIconToIgnoredList:v19])
            {
              [(SBHIconManager *)self removeIcon:v19 options:2 completion:0];
            }

            else
            {
              [(SBHIconManager *)self addNewIconToDesignatedLocation:v19 options:40];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v47 objects:v52 count:16];
        }

        while (v16);
      }
    }

    v20 = v10 | 2;
    v21 = [(SBHIconManager *)self iconModel];
    if ([v8 isLeafIcon] && (objc_msgSend(v8, "applicationBundleID"), (v22 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v23 = v22;
      v24 = [v21 applicationIconsForBundleIdentifier:v22];

      if ((v6 & 2) != 0)
      {
LABEL_20:
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v25 = v24;
        v26 = [v25 countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v44;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v44 != v28)
              {
                objc_enumerationMutation(v25);
              }

              [(SBHIconManager *)self removeIcon:*(*(&v43 + 1) + 8 * j) options:v20 completion:0];
            }

            v27 = [v25 countByEnumeratingWithState:&v43 objects:v51 count:16];
          }

          while (v27);
        }

        if (v9)
        {
          v9[2](v9, 1);
        }

LABEL_43:

        goto LABEL_44;
      }
    }

    else
    {
      v24 = MEMORY[0x1E695E0F0];
      if ((v6 & 2) != 0)
      {
        goto LABEL_20;
      }
    }

    if ([v8 isApplicationIcon] && objc_msgSend(v24, "count") >= 2)
    {
      if ([v8 leafIdentifierAndApplicationBundleIDMatches])
      {
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __58__SBHIconManager_addIconToIgnoredList_options_completion___block_invoke;
        v41[3] = &unk_1E808FE38;
        v8 = v8;
        v42 = v8;
        v30 = [v24 indexOfObjectPassingTest:v41];
        if (v30 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v31 = 0;
        }

        else
        {
          v31 = [v24 objectAtIndex:v30];
        }

        v35 = [v21 rootFolder];
        v36 = v35;
        if (v31)
        {
          [v35 swapIcon:v8 withIcon:v31 options:0];
          v37 = v31;

          v8 = v37;
        }
      }
    }

    else
    {
      v10 |= 2uLL;
    }

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __58__SBHIconManager_addIconToIgnoredList_options_completion___block_invoke_2;
    v39[3] = &unk_1E808A0B8;
    v40 = v9;
    [(SBHIconManager *)self removeIcon:v8 options:v10 completion:v39];

    goto LABEL_43;
  }

  v32 = SBLogCommon();
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG);

  if (v33)
  {
    NSLog(&cfstr_NoIconGivenToH.isa);
  }

  v34 = SBLogIcon();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    [SBHIconManager addIconToIgnoredList:options:completion:];
  }

  if (v9)
  {
    v9[2](v9, 0);
  }

LABEL_44:
}

uint64_t __58__SBHIconManager_addIconToIgnoredList_options_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (BOOL)canAddIconToIgnoredList:(id)a3
{
  v4 = a3;
  if ([v4 isLeafIcon] && (objc_msgSend(v4, "isWidgetIcon") & 1) == 0)
  {
    v6 = [(SBHIconManager *)self delegate];
    v5 = (objc_opt_respondsToSelector() & 1) == 0 || [v6 iconManager:self canAddIconToIgnoredList:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)removeIcon:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v10 = [(SBHIconManager *)self rootFolder];
    v11 = [v10 indexPathForIcon:v8];
    v12 = [(SBHIconManager *)self iconModel];
    v13 = [(SBHIconManager *)self gridCellInfoOptions];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__SBHIconManager_removeIcon_options_completion___block_invoke;
    aBlock[3] = &unk_1E808FE60;
    v14 = v12;
    v40 = v14;
    v15 = v10;
    v41 = v15;
    v42 = v13;
    v43 = a4;
    v16 = _Block_copy(aBlock);
    if (v11)
    {
      v37 = v14;
      v17 = [v15 folderContainingIndexPath:v11 relativeIndexPath:0];
      v18 = [(SBHIconManager *)self iconListViewForIndexPath:v11];
      v19 = [v18 displayedIconViewForIcon:v8];
      v20 = v19;
      if (v19)
      {
        [v19 setAllowsEditingAnimation:0];
        [v18 markIcon:v8 asNeedingAnimation:0];
      }

      v21 = [v17 startCoalescingContentChangesForReason:@"SBIconManager.removeIcon"];
      v16[2](v16, v8);
      v36 = v21;
      [v21 invalidate];
      if (v17 != v15 && [v17 isEmpty])
      {
        if ([(SBHIconManager *)self hasOpenFolder])
        {
          [(SBHIconManager *)self popExpandedIconAnimated:1 completionHandler:0];
        }

        else
        {
          v26 = [v17 icon];
          [(SBHIconManager *)self uninstallIcon:v26 animate:1];
        }
      }

      v38 = v11;
      v27 = [v8 gridSizeClass];
      if (v27 == @"SBHIconGridSizeClassDefault")
      {
        v34 = 0;
      }

      else
      {
        [v8 gridSizeClass];
        v35 = v9;
        v28 = v17;
        v29 = v15;
        v30 = v20;
        v31 = v18;
        v33 = v32 = v16;
        v34 = [v33 isEqualToString:@"SBHIconGridSizeClassDefault"] ^ 1;

        v16 = v32;
        v18 = v31;
        v20 = v30;
        v15 = v29;
        v17 = v28;
        v9 = v35;
      }

      [(SBHIconManager *)self layoutIconListsWithAnimationType:v34];
      if (v9)
      {
        v9[2](v9, 1);
      }

      v14 = v37;
      v11 = v38;
    }

    else
    {
      v25 = SBLogIcon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [SBHIconManager removeIcon:options:completion:];
      }

      if ([v8 isLeafIcon] && objc_msgSend(v14, "shouldSkipAddingIcon:toRootFolder:", v8, v15))
      {
        v16[2](v16, v8);
      }

      if (v9)
      {
        v9[2](v9, 0);
      }
    }
  }

  else
  {
    v22 = SBLogCommon();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);

    if (v23)
    {
      NSLog(&cfstr_NoIconGivenToR.isa);
    }

    v24 = SBLogIcon();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [SBHIconManager removeIcon:options:completion:];
    }

    if (v9)
    {
      v9[2](v9, 0);
    }
  }
}

void __48__SBHIconManager_removeIcon_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (![v8 isLeafIcon])
  {
    v3 = 0;
LABEL_6:
    v4 = v8;
    goto LABEL_7;
  }

  v3 = [v8 leafIdentifier];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = [*(a1 + 32) leafIconForIdentifier:v3];
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_7:
  [*(a1 + 40) removeIcon:v4 options:26214400 listGridCellInfoOptions:*(a1 + 48)];
  v5 = [*(a1 + 40) ignoredList];
  v6 = v5;
  if ((*(a1 + 56) & 2) != 0 && [v5 isAllowedToContainIcon:v4])
  {
    v7 = [v6 addIcon:v4];
  }

  else
  {
    [*(a1 + 32) removeIcon:v4];
  }

  [*(a1 + 32) saveIconStateIfNeeded];
}

- (void)addNewIconsToDesignatedLocations:(id)a3 saveIconState:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(SBHIconManager *)self addNewIconToDesignatedLocation:*(*(&v12 + 1) + 8 * v10++) options:0];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if (v4)
  {
    v11 = [(SBHIconManager *)self iconModel];
    [v11 saveIconStateIfNeeded];
  }
}

- (void)addNewIconToDesignatedLocation:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SBHIconManager *)self iconModel];
  if ((a4 & 8) != 0)
  {
    [(SBHIconManager *)self addReasonToIgnoreUserPreferenceForAddingNewIconsToHomeScreen:@"SBHIconManagerAddNewIconOverridingUserPreference"];
  }

  [v7 addIconToDesignatedLocation:v6 options:(a4 >> 3) & 0xE | (a4 >> 2) & 1 listGridCellInfoOptions:{-[SBHIconManager gridCellInfoOptions](self, "gridCellInfoOptions")}];
  v8 = [v7 rootFolder];
  v9 = [v8 indexPathForIcon:v6];
  if ((a4 & 8) != 0)
  {
    [(SBHIconManager *)self removeReasonToIgnoreUserPreferenceForAddingNewIconsToHomeScreen:@"SBHIconManagerAddNewIconOverridingUserPreference"];
  }

  v10 = a4 & 4;
  if (v9)
  {
    v11 = [(SBHIconManager *)self iconListViewForIndexPath:v9];
  }

  else
  {
    v11 = 0;
  }

  [v11 markIcon:v6 asNeedingAnimation:1];
  [v11 layoutIconsIfNeededWithAnimationType:0 options:0];
  v12 = [(SBHIconManager *)self rootFolderController];
  if ((a4 & 2) != 0 && v9)
  {
    v13 = a4 & 1;
    v14 = [v12 pageIndexForIconListModelIndex:SBFolderRelativeListIndex(v9)];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57__SBHIconManager_addNewIconToDesignatedLocation_options___block_invoke;
    v15[3] = &unk_1E808B1B0;
    v16 = v12;
    v17 = v14;
    v18 = v13;
    [(SBHIconManager *)self performAfterIconContextMenuDismissesUsingBlock:v15];
  }

  if (v10)
  {
    [v7 saveIconStateIfNeeded];
  }
}

- (void)addReasonToIgnoreUserPreferenceForAddingNewIconsToHomeScreen:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "Overriding user preference for adding new icons to the home screen for reason: %@", &v9, 0xCu);
  }

  reasonsToIgnoreUserPreferenceForAddingNewIconsToHomeScreen = self->_reasonsToIgnoreUserPreferenceForAddingNewIconsToHomeScreen;
  if (!reasonsToIgnoreUserPreferenceForAddingNewIconsToHomeScreen)
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AB50]);
    v8 = self->_reasonsToIgnoreUserPreferenceForAddingNewIconsToHomeScreen;
    self->_reasonsToIgnoreUserPreferenceForAddingNewIconsToHomeScreen = v7;

    reasonsToIgnoreUserPreferenceForAddingNewIconsToHomeScreen = self->_reasonsToIgnoreUserPreferenceForAddingNewIconsToHomeScreen;
  }

  [(NSCountedSet *)reasonsToIgnoreUserPreferenceForAddingNewIconsToHomeScreen addObject:v4];
}

- (void)removeReasonToIgnoreUserPreferenceForAddingNewIconsToHomeScreen:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "End overriding user preference for adding new icons to the home screen for reason: %@", &v6, 0xCu);
  }

  [(NSCountedSet *)self->_reasonsToIgnoreUserPreferenceForAddingNewIconsToHomeScreen removeObject:v4];
}

- (void)scrollToIconListContainingIcon:(id)a3 animate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SBHIconManager *)self rootFolder];
  v8 = [(SBHIconManager *)self rootFolder];
  v9 = [v8 indexPathForIcon:v6];
  v15 = 0;
  v10 = [v7 folderContainingIndexPath:v9 relativeIndexPath:&v15];
  v11 = v15;

  if (v10)
  {
    v12 = SBFolderRelativeListIndex(v11);
    v13 = [(SBHIconManager *)self rootFolder];

    if (v10 == v13)
    {
      if (v12 == 20000)
      {
        [(SBHIconManager *)self presentTodayOverlay];
        goto LABEL_8;
      }

      if (v12 == 10000)
      {
        goto LABEL_8;
      }

      v14 = [(SBHIconManager *)self rootFolderController];
      [v14 setCurrentPageIndex:objc_msgSend(v14 animated:{"pageIndexForIconListModelIndex:", v12), v4}];
    }

    else
    {
      v14 = [(SBHIconManager *)self _currentFolderController];
      [v14 setCurrentPageIndexToListDirectlyContainingIcon:v6 animated:v4];
    }
  }

LABEL_8:
}

- (BOOL)_shouldLibraryOverlayAllowSwipeToDismissGesture:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self rootFolderController];
  v6 = [v4 view];

  v7 = [v6 window];
  v8 = [v7 windowScene];
  v9 = [v5 view];
  v10 = [v9 window];
  v11 = [v10 windowScene];

  if (v8 == v11 && ((v13 = [v5 currentPageIndex], v13 == objc_msgSend(v5, "trailingCustomViewPageIndex")) || objc_msgSend(v5, "destinationPageState") == 4))
  {
    v12 = [v5 isScrollTracking] ^ 1;
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (void)_scrollToLastIconPageIfNecessaryForLibraryOverlayDismissal:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBHIconManager *)self rootFolderController];
  v6 = [v4 view];

  v7 = [v6 window];
  v8 = [v7 windowScene];
  v9 = [v5 view];
  v10 = [v9 window];
  v11 = [v10 windowScene];

  if (v8 == v11)
  {
    v12 = [v5 currentPageIndex];
    if ((v12 == [v5 trailingCustomViewPageIndex] || objc_msgSend(v5, "destinationPageState") == 4) && (objc_msgSend(v5, "isScrollTracking") & 1) == 0 && !-[SBHIconManager disablesScrollingToLastIconPageForLibraryDismissal](self, "disablesScrollingToLastIconPageForLibraryDismissal"))
    {
      v13 = [(SBHIconManager *)self contentVisibility];
      v14 = SBLogIcon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16[0] = 67109120;
        v16[1] = v13 != 2;
        _os_log_impl(&dword_1BEB18000, v14, OS_LOG_TYPE_DEFAULT, "Scrolling to last icon page due to modal library dismissal; animating scroll: %{BOOL}u", v16, 8u);
      }

      v15 = [v5 lastIconPageIndex];
      if (v13 == 2)
      {
        [v5 setCurrentPageIndex:v15 animated:0];
      }

      else
      {
        [v5 scrollUsingDecelerationAnimationToPageIndex:v15 withCompletionHandler:0];
      }
    }
  }
}

- (void)animateToDefaultStateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self rootFolderController];
  [v5 scrollUsingDecelerationAnimationToDefaultPageWithCompletionHandler:v4];
}

- (void)setIconToReveal:(id)a3 revealingPrevious:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  iconToReveal = self->_iconToReveal;
  if (iconToReveal != v7)
  {
    v10 = v7;
    if (iconToReveal)
    {
      v9 = !v4;
    }

    else
    {
      v9 = 1;
    }

    if (!v9 && ([(SBIcon *)iconToReveal isEqual:v7]& 1) == 0)
    {
      [(SBHIconManager *)self addNewIconToDesignatedLocation:self->_iconToReveal options:4];
    }

    objc_storeStrong(&self->_iconToReveal, a3);
    v7 = v10;
  }

  MEMORY[0x1EEE66BB8](iconToReveal, v7);
}

- (void)finishInstallingIconAnimated:(BOOL)a3
{
  v3 = a3;
  v9 = [(SBHIconManager *)self iconToReveal];
  if (v9)
  {
    v5 = [(SBHIconManager *)self rootFolder];
    v6 = [v5 containsIcon:v9];

    if ((v6 & 1) == 0)
    {
      if (v3)
      {
        v7 = 5;
      }

      else
      {
        v7 = 4;
      }

      [(SBHIconManager *)self addNewIconToDesignatedLocation:v9 options:v7];
    }
  }

  v8 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 iconManagerDidFinishInstallForIcon:self];
  }

  [(SBHIconManager *)self setIconToReveal:0 revealingPrevious:0];
  [(SBHIconModel *)self->_iconModel saveIconStateIfNeeded];
}

- (void)tryScrollToIconToRevealAnimated:(BOOL)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = MEMORY[0x1BFB4EF60](a3, a2);
  v7 = [v5 stringWithFormat:@"tryScrollToIconToRevealAnimated:%@", v6];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__SBHIconManager_tryScrollToIconToRevealAnimated___block_invoke;
  v8[3] = &unk_1E80897D8;
  v8[4] = self;
  v9 = a3;
  [(SBHIconManager *)self _enqueueTransitionName:v7 withHandler:v8];
}

- (void)_tryScrollToIconToRevealAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBHIconManager *)self rootViewController];
  v6 = [(SBHIconManager *)self rootFolderController];
  v7 = [(SBHIconManager *)self iconToReveal];
  if (v7)
  {
    if (([v6 isLeadingCustomViewVisible] & 1) != 0 || objc_msgSend(v6, "isPullDownSearchVisible"))
    {
      [(SBHIconManager *)self finishInstallingIconAnimated:0];
    }

    else
    {
      v8 = [(SBHIconManager *)self rootFolder];
      v9 = [v8 indexPathForIcon:v7];

      if (!v9)
      {
        [(SBHIconManager *)self finishInstallingIconAnimated:0];
      }

      v10 = self->_iconToReveal;
      [(SBHIconManager *)self setIconToReveal:0 revealingPrevious:0];
      [(SBHIconManager *)self popToCurrentRootIconList];
      [(SBHIconManager *)self setIconToReveal:v10 revealingPrevious:0];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __51__SBHIconManager__tryScrollToIconToRevealAnimated___block_invoke;
      v11[3] = &unk_1E808B508;
      v11[4] = self;
      v12 = v3;
      [v5 revealIcon:v7 animated:v3 completionHandler:v11];
    }
  }
}

- (void)revealIcon:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(SBHIconManager *)self rootViewController];
  v11 = [(SBHIconManager *)self rootFolder];
  v12 = [v11 indexPathForIcon:v8];
  if (v12)
  {
    v13 = [v11 folderContainingIndexPath:v12 relativeIndexPath:0];
    v22 = [(SBHIconManager *)self openedFolderController];
    v14 = [v22 folder];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __56__SBHIconManager_revealIcon_animated_completionHandler___block_invoke;
    aBlock[3] = &unk_1E808FE88;
    v23 = v10;
    v15 = v10;
    v36 = v15;
    v37 = v8;
    v39 = v6;
    v24 = v9;
    v38 = v9;
    v16 = _Block_copy(aBlock);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __56__SBHIconManager_revealIcon_animated_completionHandler___block_invoke_2;
    v27[3] = &unk_1E808FED8;
    v17 = v13;
    v28 = v17;
    v29 = v11;
    v18 = v14;
    v30 = v18;
    v34 = v6;
    v31 = v15;
    v32 = self;
    v19 = v16;
    v33 = v19;
    v20 = _Block_copy(v27);
    v21 = v20;
    if (!v18 || v18 == v17)
    {
      v20[2](v20);
    }

    else
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __56__SBHIconManager_revealIcon_animated_completionHandler___block_invoke_5;
      v25[3] = &unk_1E808A0B8;
      v26 = v20;
      [(SBHIconManager *)self popExpandedIconAnimated:v6 completionHandler:v25];
    }

    v10 = v23;
    v9 = v24;
  }

  else if (v9)
  {
    (*(v9 + 2))(v9, 0);
  }
}

void __56__SBHIconManager_revealIcon_animated_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 == *(a1 + 40) || ((v3 = *(a1 + 48)) != 0 ? (v4 = v3 == v2) : (v4 = 0), v4))
  {
    v10 = *(*(a1 + 72) + 16);

    v10();
  }

  else
  {
    v5 = [v2 icon];
    v6 = *(a1 + 80);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__SBHIconManager_revealIcon_animated_completionHandler___block_invoke_3;
    v11[3] = &unk_1E808FEB0;
    v7 = *(a1 + 56);
    v8 = *(a1 + 72);
    v11[4] = *(a1 + 64);
    v12 = v5;
    v14 = v6;
    v13 = v8;
    v9 = v5;
    [v7 revealIcon:v9 animated:v6 completionHandler:v11];
  }
}

void __56__SBHIconManager_revealIcon_animated_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) bestLocationForIcon:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__SBHIconManager_revealIcon_animated_completionHandler___block_invoke_4;
  v6[3] = &unk_1E808A0B8;
  v7 = *(a1 + 48);
  [v3 pushExpandedIcon:v4 location:v2 context:0 animated:v5 completionHandler:v6];
}

- (void)layoutIconListsWithAnimationType:(int64_t)a3 forceRelayout:(BOOL)a4
{
  v4 = a4;
  v30 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [(SBHIconManager *)self rootFolderController];
  v8 = [v7 folderControllers];

  v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      v12 = 0;
      do
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v24 + 1) + 8 * v12++) layoutIconListsWithAnimationType:a3 forceRelayout:v4];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v10);
  }

  v13 = [(SBHIconManager *)self floatingDockViewController];
  [v13 layoutUserControlledIconListsWithAnimationType:a3 forceRelayout:v4];

  v14 = [(SBHIconManager *)self _effectiveTodayViewController];
  [v14 layoutIconListViewWithAnimationType:a3 forceRelayout:v4];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = [(SBHIconManager *)self _libraryViewControllers];
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v20 + 1) + 8 * v19++) layoutIconListsWithAnimationType:a3 forceRelayout:v4];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v17);
  }
}

- (void)unscatterAnimated:(BOOL)a3 afterDelay:(double)a4 withCompletion:(id)a5
{
  v6 = a3;
  v8 = a5;
  [(SBHIconManager *)self setAnimatingForUnscatter:1];
  [(SBHIconManager *)self setEditing:0];
  [(SBHIconManager *)self _ensureRootFolderController];
  v9 = [(SBHIconManager *)self rootFolderController];
  if (v9)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__SBHIconManager_unscatterAnimated_afterDelay_withCompletion___block_invoke;
    v10[3] = &unk_1E808B3C0;
    v10[4] = self;
    v11 = v8;
    [v9 unscatterAnimated:v6 afterDelay:v10 withCompletion:a4];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, 0);
  }
}

uint64_t __62__SBHIconManager_unscatterAnimated_afterDelay_withCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAnimatingForUnscatter:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)getListView:(id *)a3 folder:(id *)a4 relativePath:(id *)a5 forIndexPath:(id)a6
{
  v10 = a6;
  v11 = [(SBHIconManager *)self rootFolder];
  v23 = 0;
  v12 = [v11 folderContainingIndexPath:v10 relativeIndexPath:&v23];

  v13 = v23;
  if (a3)
  {
    v14 = [(SBHIconManager *)self rootFolderController];
    v15 = [v14 folderControllerForFolder:v12];
    if ([v15 isOpen])
    {
      v16 = SBFolderRelativeListIndex(v13);
      v17 = [v15 iconListViewForIconListModelIndex:v16];
      if (v17)
      {
LABEL_13:
        v20 = v17;
        *a3 = v17;

        goto LABEL_14;
      }

      if ([v12 isRootFolder])
      {
        switch(v16)
        {
          case 20000:
            v18 = [(SBHIconManager *)self _effectiveTodayViewController];
            v17 = [v18 listView];

            goto LABEL_13;
          case 10000:
            v19 = [(SBHIconManager *)self floatingDockListView];
LABEL_11:
            v17 = v19;
            goto LABEL_13;
          case 40000:
            v19 = [(SBHIconManager *)self floatingDockUtilitiesListView];
            goto LABEL_11;
        }
      }
    }

    v17 = 0;
    goto LABEL_13;
  }

LABEL_14:
  if (a4)
  {
    v21 = v12;
    *a4 = v12;
  }

  if (a5)
  {
    v22 = v13;
    *a5 = v13;
  }
}

- (id)iconListViewForIndexPath:(id)a3
{
  v5 = 0;
  [(SBHIconManager *)self getListView:&v5 folder:0 relativePath:0 forIndexPath:a3];
  v3 = v5;

  return v3;
}

- (SBFolderIconImageCache)folderIconImageCache
{
  p_folderIconImageCache = &self->_folderIconImageCache;
  folderIconImageCache = self->_folderIconImageCache;
  if (!folderIconImageCache)
  {
    v5 = [(SBHIconManager *)self listLayoutProvider];
    v6 = [v5 layoutForIconLocation:@"SBIconLocationFolder"];

    v7 = [SBFolderIconImageCache alloc];
    v8 = [(SBHIconManager *)self iconImageCache];
    v9 = [(SBFolderIconImageCache *)v7 initWithListLayout:v6 iconImageCache:v8];
    v10 = self->_folderIconImageCache;
    self->_folderIconImageCache = v9;

    v11 = SBLogIcon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(SBHIconManager *)p_folderIconImageCache folderIconImageCache];
    }

    folderIconImageCache = *p_folderIconImageCache;
  }

  return folderIconImageCache;
}

- (SBHIconImageCache)iconImageCache
{
  iconImageCache = self->_iconImageCache;
  if (!iconImageCache)
  {
    v4 = [(SBHIconManager *)self listLayoutProvider];
    v5 = [v4 layoutForIconLocation:@"SBIconLocationRoot"];
    [v5 iconImageInfo];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [[SBHIconImageCache alloc] initWithName:@"iconImages" iconImageInfo:v7, v9, v11, v13];
    v15 = self->_iconImageCache;
    self->_iconImageCache = v14;

    v16 = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v16 iconManager:self willUseIconImageCache:self->_iconImageCache];
    }

    iconImageCache = self->_iconImageCache;
  }

  return iconImageCache;
}

- (void)enumerateAllIconImageCachesUsingBlock:(id)a3
{
  if (self->_iconImageCache)
  {
    (*(a3 + 2))(a3);
  }
}

- (void)resetAllIconImageCaches
{
  [(SBHIconManager *)self enumerateAllIconImageCachesUsingBlock:&__block_literal_global_342];
  iconImageCache = self->_iconImageCache;
  self->_iconImageCache = 0;
}

- (id)rootListLayout
{
  v2 = [(SBHIconManager *)self listLayoutProvider];
  v3 = [v2 layoutForIconLocation:@"SBIconLocationRoot"];

  return v3;
}

- (SBIconImageInfo)rootIconImageInfo
{
  v3 = [(SBHIconManager *)self iconImageCache];
  [v3 iconImageInfo];

  return result;
}

- (SBIconImageInfo)folderMiniIconImageInfo
{
  v3 = [(SBHIconManager *)self rootListLayout];
  SBHIconListLayoutFolderIconGridCellIconImageInfo(v3);

  return result;
}

- (id)addWidgetSheetConfigurationManagerCreatingIfNecessary:(BOOL)a3
{
  addWidgetSheetConfigurationManager = self->_addWidgetSheetConfigurationManager;
  if (addWidgetSheetConfigurationManager)
  {
    v5 = 1;
  }

  else
  {
    v5 = !a3;
  }

  if (!v5)
  {
    v6 = [SBHAddWidgetSheetConfigurationManager alloc];
    v7 = [(SBHIconManager *)self widgetExtensionProvider];
    v8 = [(SBHAddWidgetSheetConfigurationManager *)v6 initWithWidgetExtensionProvider:v7];

    [(SBHAddWidgetSheetConfigurationManager *)v8 setConfigurationManagerDelegate:self];
    v9 = [(SBHIconManager *)self iconModel];
    [(SBHAddWidgetSheetConfigurationManager *)v8 setIconModel:v9];

    v10 = [(SBHIconManager *)self listLayoutProvider];
    [(SBHAddWidgetSheetConfigurationManager *)v8 setListLayoutProvider:v10];

    v11 = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v12 = [v11 addWidgetSheetStyleForIconManager:self];
    }

    else
    {
      v12 = 0;
    }

    [(SBHAddWidgetSheetConfigurationManager *)v8 setAddWidgetSheetStyle:v12];
    v13 = self->_addWidgetSheetConfigurationManager;
    self->_addWidgetSheetConfigurationManager = v8;

    addWidgetSheetConfigurationManager = self->_addWidgetSheetConfigurationManager;
  }

  return addWidgetSheetConfigurationManager;
}

- (BOOL)shouldRecycleIconView:(id)a3
{
  v4 = a3;
  if (!-[SBHIconManager recyclesIconViews](self, "recyclesIconViews") || ([v4 _wantsAutolayout] & 1) != 0 || (-[SBHIconManager iconDragManager](self, "iconDragManager"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isTrackingDragOriginatingFromIconView:", v4), v5, (v6 & 1) != 0) || (-[SBHIconManager iconDragManager](self, "iconDragManager"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isTrackingDropIntoDestinationIconView:", v4), v7, (v8 & 1) != 0) || (objc_msgSend(v4, "isShowingContextMenu") & 1) != 0 || (objc_msgSend(v4, "isShowingConfigurationCard") & 1) != 0 || (objc_msgSend(v4, "isCursorActive") & 1) != 0)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = [v4 isCrossfadingImageWithView] ^ 1;
  }

  return v9;
}

- (BOOL)isRootFolderContentVisible
{
  v3 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 isRootFolderContentVisibleForIconManager:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)isIconContentPossiblyVisibleOverApplication
{
  v3 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 isIconContentPossiblyVisibleOverApplicationForIconManager:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setContentVisibility:(unint64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_contentVisibility != a3)
  {
    v5 = SBLogIcon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = SBHStringFromContentVisibility(a3);
      v15 = 138543362;
      v16 = v6;
      _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "Changing icon manager content visibility to %{public}@", &v15, 0xCu);
    }

    self->_contentVisibility = a3;
    v7 = [(SBHIconManager *)self rootViewController];
    [v7 setContentVisibility:{-[SBHIconManager effectiveRootFolderControllerContentVisibility](self, "effectiveRootFolderControllerContentVisibility")}];

    v8 = [(SBHIconManager *)self floatingDockViewController];
    if ([v8 isPresentingLibrary])
    {
      v9 = [v8 libraryViewController];
      [v9 setContentVisibility:0];
    }

    if (a3 == 2 && [(SBHIconManager *)self isShowingModalInteraction])
    {
      [(SBHIconManager *)self dismissModalInteractionsImmediately];
    }

    v10 = [(SBHIconManager *)self contentHiddenPauseLightAngleUpdatesAssertion];
    v11 = v10;
    if (a3 != 2 || v10)
    {
      if (a3 != 2 && v10)
      {
        [v10 invalidate];
        [(SBHIconManager *)self setContentHiddenPauseLightAngleUpdatesAssertion:0];
      }
    }

    else
    {
      v12 = +[SBHLightSourceManager sharedManager];
      v13 = [v12 pauseUpdatesForReason:@"content hidden"];

      [(SBHIconManager *)self setContentHiddenPauseLightAngleUpdatesAssertion:v13];
    }

    v14 = [(SBHIconManager *)self usageMonitor];
    [v14 noteIconManagerContentOccludedChanged];

    if (a3 == 2 && self->_labelCachesNecessitateCleanup)
    {
      [(SBHIconManager *)self _cleanupLabelCachesWithReason:@"content is hidden; we can cleanup now"];
    }
  }
}

- (void)setIdleModeText:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self rootViewController];
  [v5 setIdleText:v4];
}

- (void)removeAllIconAnimations
{
  v3 = [(SBHIconManager *)self currentRootIconList];
  [v3 removeAllIconAnimations];

  v5 = [(SBHIconManager *)self dockListView];
  v4 = [v5 layer];
  [v4 removeAllAnimations];
}

- (void)noteFloatingDockWillChangeHeight
{
  v2 = [(SBHIconManager *)self rootViewController];
  v3 = [v2 contentView];

  [v3 setNeedsLayout];
}

- (void)noteFloatingDockWillAnimateChangeInHeight
{
  v2 = [(SBHIconManager *)self rootViewController];
  v3 = [v2 contentView];

  [v3 layoutIfNeeded];
}

- (void)noteIconViewWillZoomDown:(id)a3
{
  v15 = a3;
  v4 = [(SBHIconManager *)self floatingDockViewControllerForView:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 libraryViewController];
    if (([v5 isPresentingLibrary] & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = [(SBHIconManager *)self overlayLibraryViewController];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [(SBHIconManager *)self trailingLibraryViewController];
    }

    v6 = v9;

    if (![(SBHIconManager *)self isMainDisplayLibraryViewVisible])
    {
      goto LABEL_10;
    }
  }

  v10 = [v15 location];
  v11 = SBIconLocationGroupContainsLocation(@"SBIconLocationGroupAppLibrary", v10);

  if (v11)
  {
    [v6 noteIconViewWillZoomDown:v15];
  }

LABEL_10:
  if ([(SBHIconManager *)self isOverlayTodayViewVisible])
  {
    v12 = [(SBHIconManager *)self overlayTodayViewController];
    v13 = [v12 isDisplayingIconView:v15];

    if (v13)
    {
      v14 = [(SBHIconManager *)self overlayTodayViewController];
      [v14 noteIconViewWillZoomDown:v15];
    }
  }
}

- (id)viewControllerForPresentingViewControllers
{
  v3 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 viewControllerForPresentingViewControllersForIconManager:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)accessibilityTintColorForScreenRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 iconManager:self accessibilityTintColorForScreenRect:{x, y, width, height}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)moveIconToHiddenPage:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__SBHIconManager_moveIconToHiddenPage___block_invoke;
  v6[3] = &unk_1E80893F0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SBHIconManager *)self removeIcon:v5 options:1 completion:v6];
}

void __39__SBHIconManager_moveIconToHiddenPage___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) rootFolder];
  [v2 removeIcon:*(a1 + 40) options:0];
}

- (BOOL)resetIconLayoutWithOptions:(unint64_t)a3
{
  v3 = a3;
  [(SBHIconManager *)self addReasonToIgnoreUserPreferenceForAddingNewIconsToHomeScreen:@"resetIconLayout"];
  v5 = [(SBHIconManager *)self iconModel];
  v6 = [v5 deleteIconStateWithOptions:v3 & 1];
  [v5 clearDesiredIconStateWithOptions:v3 & 1];
  [(SBHIconManager *)self removeReasonToIgnoreUserPreferenceForAddingNewIconsToHomeScreen:@"resetIconLayout"];

  return v6;
}

- (BOOL)resetTodayLayout
{
  v2 = [(SBHIconManager *)self iconModel];
  v3 = [v2 defaultIconState];
  v4 = [[SBHIconStateUnarchiver alloc] initWithArchive:v3 iconModel:v2];
  v5 = [(SBHIconStateUnarchiver *)v4 unarchive];
  if ([v5 isValid])
  {
    v6 = [v5 rootFolder];
    v7 = [v2 rootFolder];
    v8 = v7;
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = !v9;
    if (!v9)
    {
      v11 = [v7 todayList];
      v16 = [v11 icons];
      [v11 removeAllIcons];
      [v2 removeIcons:v16];
      v12 = [v6 todayList];
      v13 = [v12 icons];

      v14 = [v11 addIcons:v13];
      [v2 saveIconStateIfNeeded];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)clearTodayLayout
{
  v2 = [(SBHIconManager *)self iconModel];
  v3 = [v2 rootFolder];
  v4 = [v3 todayList];
  [v4 removeAllIcons];

  [v2 saveIconStateIfNeeded];
  return 1;
}

- (void)minimumHomeScreenScaleDidChange
{
  v2 = [(SBHIconManager *)self rootFolderController];
  [v2 minimumHomeScreenScaleDidChange];
}

- (void)runDownloadingIconTest
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = [(SBHIconManager *)self iconModel];
  v3 = [v2 leafIcons];
  v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v6)
  {
    v7 = *v30;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        if ([v2 isIconVisible:v9] && objc_msgSend(v9, "isApplicationIcon"))
        {
          v10 = [v9 applicationBundleID];
          v11 = [v9 application];
          v12 = v11;
          if (v10)
          {
            v13 = v11 == 0;
          }

          else
          {
            v13 = 1;
          }

          if (!v13)
          {
            v14 = objc_alloc_init(SBHFakeApplicationPlaceholder);
            [(SBHFakeApplicationPlaceholder *)v14 setApplicationBundleIdentifier:v10];
            v15 = [v9 displayName];
            [(SBHFakeApplicationPlaceholder *)v14 setApplicationDisplayName:v15];

            [v4 addObject:v14];
            [v22 setObject:v12 forKey:v10];
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v6);
  }

  v16 = [(SBHIconManager *)self addApplicationPlaceholders:v4];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v28[3] = 0;
  v17 = MEMORY[0x1E695DFF0];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __40__SBHIconManager_runDownloadingIconTest__block_invoke;
  v23[3] = &unk_1E808FF20;
  v27 = v28;
  v18 = v4;
  v24 = v18;
  v19 = v22;
  v25 = v19;
  v26 = self;
  v20 = [v17 scheduledTimerWithTimeInterval:1 repeats:v23 block:0.25];

  _Block_object_dispose(v28, 8);
}

void __40__SBHIconManager_runDownloadingIconTest__block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24) + 0.1;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      v8 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v22 + 1) + 8 * v8++) setProgress:*(*(*(a1 + 56) + 8) + 24)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  if (*(*(*(a1 + 56) + 8) + 24) >= 1.0)
  {
    [v3 invalidate];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = *(a1 + 32);
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(a1 + 40);
          v15 = [*(*(&v18 + 1) + 8 * v13) applicationBundleIdentifier];
          v16 = [v14 objectForKey:v15];

          v17 = [*(a1 + 48) replaceApplicationPlaceholderWithApplication:v16];
          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v11);
    }
  }
}

- (void)runRemoveAndRestoreIconTest
{
  v3 = [(SBHIconManager *)self iconModel];
  v4 = [v3 leafIcons];
  v5 = [v4 mutableCopy];

  v6 = [MEMORY[0x1E695DFA8] set];
  v7 = MEMORY[0x1E695DFF0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__SBHIconManager_runRemoveAndRestoreIconTest__block_invoke;
  v11[3] = &unk_1E808FF48;
  v12 = v5;
  v13 = self;
  v14 = v6;
  v8 = v6;
  v9 = v5;
  v10 = [v7 scheduledTimerWithTimeInterval:1 repeats:v11 block:0.1];
}

void __45__SBHIconManager_runRemoveAndRestoreIconTest__block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if ([a1[4] count])
  {
    v4 = [a1[4] anyObject];
    [a1[4] removeObject:v4];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__SBHIconManager_runRemoveAndRestoreIconTest__block_invoke_2;
    v8[3] = &unk_1E80893F0;
    v5 = a1[5];
    v9 = a1[6];
    v10 = v4;
    v6 = v4;
    [v5 removeIcon:v6 options:1 completion:v8];
  }

  else if ([a1[6] count])
  {
    v7 = [a1[6] anyObject];
    [a1[6] removeObject:v7];
    [a1[5] addNewIconToDesignatedLocation:v7 options:3];
  }

  else
  {
    [v3 invalidate];
  }
}

- (void)addAllEligibleIconsToIgnoredList
{
  v9 = [(SBHIconManager *)self iconModel];
  v3 = [v9 leafIcons];
  v4 = [(SBHIconManager *)self rootFolder];
  v5 = [v4 ignoredList];
  v6 = [v3 allObjects];
  v7 = [v5 allowedIconsForIcons:v6];

  v8 = [v5 addIcons:v7];
  [v4 pruneEmptyFolders];
  [v4 compactLists];
}

- (void)removeAllWidgetIcons
{
  v4 = [(SBHIconManager *)self iconModel];
  v2 = [v4 widgetIcons];
  v3 = [v2 allObjects];

  [v4 removeIcons:v3];
}

- (void)removeWidgetIconsFromHomeScreen
{
  v2 = [(SBHIconManager *)self iconModel];
  v3 = [v2 rootFolder];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__SBHIconManager_removeWidgetIconsFromHomeScreen__block_invoke;
  v6[3] = &unk_1E808E678;
  v7 = v4;
  v5 = v4;
  [v3 enumerateListsWithOptions:4 usingBlock:v6];
  [v2 removeIcons:v5];
}

void __49__SBHIconManager_removeWidgetIconsFromHomeScreen__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 directlyContainedIconsPassingTest:&__block_literal_global_367];
  [*(a1 + 32) addObjectsFromArray:v3];
}

- (void)addFileStackWithURL:(id)a3
{
  v8 = a3;
  if ([(SBHIconManager *)self isFloatingDockSupported])
  {
    v4 = [(SBHIconManager *)self floatingDockViewController];
    if (v4)
    {
      v5 = [[SBHFileStackIcon alloc] initWithUniqueLeafIdentifier];
      [(SBHFileStackIcon *)v5 setUrl:v8];
      v6 = [v4 dockUtilitiesListModel];
      v7 = [v6 addIcon:v5];
    }
  }
}

- (BOOL)hasConfiguredFilesStackWithURL:(id)a3
{
  v4 = a3;
  if ([(SBHIconManager *)self isFloatingDockSupported])
  {
    v5 = [(SBHIconManager *)self floatingDockViewController];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 dockUtilitiesListModel];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __49__SBHIconManager_hasConfiguredFilesStackWithURL___block_invoke;
      v11[3] = &unk_1E808BFD8;
      v12 = v4;
      v8 = [v7 iconsPassingTest:v11];
      v9 = [v8 count] != 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __49__SBHIconManager_hasConfiguredFilesStackWithURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isFileStackIcon])
  {
    v4 = objc_opt_class();
    v5 = v3;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = v6;

    v9 = [v8 url];

    v10 = [v9 URLByStandardizingPath];
    v11 = [*(a1 + 32) URLByStandardizingPath];
    v7 = [v10 isEqual:v11];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)removeFileStackWithURL:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(SBHIconManager *)self isFloatingDockSupported])
  {
    v5 = [(SBHIconManager *)self floatingDockViewController];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 dockUtilitiesListModel];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __41__SBHIconManager_removeFileStackWithURL___block_invoke;
      v17[3] = &unk_1E808BFD8;
      v18 = v4;
      v8 = [v7 iconsPassingTest:v17];
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v19 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v14;
        do
        {
          v12 = 0;
          do
          {
            if (*v14 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [v7 removeIcon:*(*(&v13 + 1) + 8 * v12++)];
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v13 objects:v19 count:16];
        }

        while (v10);
      }
    }
  }
}

uint64_t __41__SBHIconManager_removeFileStackWithURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isFileStackIcon])
  {
    v4 = objc_opt_class();
    v5 = v3;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = v6;

    v9 = [v8 url];

    v10 = [v9 URLByStandardizingPath];
    v11 = [*(a1 + 32) URLByStandardizingPath];
    v7 = [v10 isEqual:v11];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)shuffleWidgetStackForTestRecipe
{
  v14 = [(SBHIconManager *)self currentRootIconList];
  v2 = [v14 icons];
  v3 = [v2 bs_firstObjectPassingTest:&__block_literal_global_370];

  if (v3)
  {
    v4 = [v3 iconDataSourceCount];
    v5 = [v3 iconDataSources];
    v6 = [v3 activeDataSource];
    v7 = [v5 indexOfObject:v6];

    v8 = arc4random();
    v9 = v8 % v4;
    if (v9 + 1 == v4)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v9 == v7)
    {
      v11 = v10;
    }

    else
    {
      v11 = v8 % v4;
    }

    v12 = [v3 iconDataSources];
    v13 = [v12 objectAtIndex:v11];

    [v3 setStackChangeReason:1];
    [v3 setActiveDataSource:v13];
  }
}

- (void)toggleSuggestedWidgetInStackForTestRecipe
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [(SBHIconManager *)self currentRootIconList];
  v4 = [v3 icons];
  v5 = [v4 bs_firstObjectPassingTest:&__block_literal_global_372];

  if (v5)
  {
    v6 = [v5 widgets];
    v7 = [v6 bs_firstObjectPassingTest:&__block_literal_global_374];

    if (v7)
    {
      [v5 setStackChangeReason:3];
      [v5 removeIconDataSource:v7];
    }

    else
    {
      v8 = [[SBHWidget alloc] initWithKind:@"com.apple.weather" extensionBundleIdentifier:@"com.apple.weather.widget"];
      v7 = [(SBHWidget *)v8 copyWithSuggestionSource:1];

      v9 = SBHWeatherWidgetTestIntent();
      v10 = [v5 uniqueIdentifier];
      v11 = [v7 uniqueIdentifier];
      [(SBHIconManager *)self setTemporaryIntent:v9 forIconWithIdentifier:v10 widgetUniqueIdentifier:v11];

      [v5 setStackChangeReason:2];
      v16[0] = v7;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      v13 = MEMORY[0x1E696AC90];
      v14 = [v5 iconDataSources];
      v15 = [v13 indexSetWithIndex:{objc_msgSend(v14, "count")}];
      [v5 insertIconDataSources:v12 atIndexes:v15];

      [v5 setActiveDataSource:v7];
    }
  }
}

- (void)organizeAllIconsIntoFoldersWithPageCount:(unint64_t)a3
{
  v32 = [(SBHIconManager *)self iconModel];
  v5 = [(SBHIconManager *)self rootFolder];
  [v32 visibleLeafIcons];
  v31 = v30 = self;
  v6 = [(SBHIconManager *)self listLayoutProvider];
  v7 = [v6 layoutForIconLocation:@"SBIconLocationRoot"];

  v29 = v7;
  v8 = SBHIconListLayoutMaximumIconCount(v7);
  v9 = [v5 maxListCount];
  if (v9 >= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = v9;
  }

  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10 * v8];
  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10 * v8];
  if (v10 * v8)
  {
    v13 = 1;
    v14 = v10 * v8;
    do
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Folder %lu", v13, v29];
      v16 = [v32 makeFolderWithDisplayName:v15];

      v17 = [[SBFolderIcon alloc] initWithFolder:v16];
      [v11 addObject:v16];
      [v12 addObject:v17];

      ++v13;
      --v14;
    }

    while (v14);
  }

  v18 = [v31 mutableCopy];
  if ([v18 count])
  {
    v19 = 0;
    do
    {
      v20 = [v18 anyObject];
      [v18 removeObject:v20];
      v21 = [v11 objectAtIndex:v19];
      v22 = [v21 addIcon:v20];
      v23 = [v21 containsIcon:v20];
      if (v19 + 1 < v10 * v8)
      {
        v24 = v19 + 1;
      }

      else
      {
        v24 = 0;
      }

      if (v23)
      {
        v19 = v24;
      }
    }

    while ([v18 count]);
  }

  [v5 removeAllLists];
  for (; v10; --v10)
  {
    v25 = [v12 count];
    if (v8 >= v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = v8;
    }

    v27 = [v12 subarrayWithRange:{0, v26}];
    [v12 removeObjectsInRange:{0, v26}];
    v28 = [v5 addListWithIcons:v27];
  }

  [(SBHIconManager *)v30 layoutIconListsWithAnimationType:-1];
  [(SBHIconManager *)v30 _precacheDataForRootIcons];
}

- (void)organizeAllIconsAcrossPagesWithPageCount:(unint64_t)a3
{
  v23 = [(SBHIconManager *)self iconModel];
  v5 = [(SBHIconManager *)self rootFolder];
  v6 = [v23 visibleLeafIcons];
  v7 = [v6 allObjects];
  v8 = [v7 sortedArrayUsingSelector:sel_localizedCompareDisplayNames_];

  v9 = [(SBHIconManager *)self listLayoutProvider];
  v10 = [v9 layoutForIconLocation:@"SBIconLocationRoot"];

  v11 = [v5 maxListCount];
  if (v11 >= a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = v11;
  }

  v13 = [v8 count];
  v14 = v13 / v12;
  v15 = SBHIconListLayoutMaximumIconCount(v10);
  if (v13 / v12 >= v15)
  {
    v14 = v15;
  }

  [v5 removeAllLists];
  v16 = 0;
  if (v12 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v12;
  }

  do
  {
    v18 = [v8 subarrayWithRange:{v16 * v14, v14}];
    v19 = [v5 addListWithIcons:v18];

    ++v16;
    --v17;
  }

  while (v17);
  v20 = [v8 subarrayWithRange:{v14 * v12, v13 - v14 * v12}];
  v21 = [v5 ignoredList];
  v22 = [v21 addIcons:v20];

  [(SBHIconManager *)self layoutIconListsWithAnimationType:-1];
}

- (void)randomizeAllIconsAcrossPagesWithPageCount:(unint64_t)a3
{
  v71 = *MEMORY[0x1E69E9840];
  v56 = [(SBHIconManager *)self iconModel];
  v5 = [(SBHIconManager *)self rootFolder];
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v59 = v5;
  v7 = [v5 lists];
  v8 = [v7 countByEnumeratingWithState:&v65 objects:v70 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v66;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v66 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v65 + 1) + 8 * i);
        v13 = objc_opt_self();
        [v12 addIconsOfClass:v13 toSet:v6];
      }

      v9 = [v7 countByEnumeratingWithState:&v65 objects:v70 count:16];
    }

    while (v9);
  }

  v54 = self;
  v14 = [(SBHIconManager *)self listLayoutProvider];
  v15 = [v14 layoutForIconLocation:@"SBIconLocationRoot"];

  v16 = [v59 maxListCount];
  if (v16 >= a3)
  {
    v17 = a3;
  }

  else
  {
    v17 = v16;
  }

  v58 = v17;
  v18 = [v6 count];
  v52 = v15;
  v19 = SBHIconListLayoutMaximumIconCount(v15);
  [v59 removeAllLists];
  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v55 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v18 >= 8)
  {
    v21 = 8;
  }

  else
  {
    v21 = v18;
  }

  v22 = arc4random_uniform(v21);
  v23 = v22 + 1;
  if (v22 != -1)
  {
    v24 = 0;
    do
    {
      if (![v6 count])
      {
        break;
      }

      v25 = arc4random_uniform(2u) + 1;
      v26 = [v56 makeFolderWithDisplayName:@"Folder"];
      v27 = v26;
      while ([v26 iconCount] < v25 && objc_msgSend(v6, "count"))
      {
        v28 = [v6 anyObject];
        if ([v27 canAddIcon:v28])
        {
          v29 = [v27 addIcon:v28];
        }

        else
        {
          [v20 addObject:v28];
        }

        [v6 removeObject:v28];

        v26 = v27;
      }

      v30 = [[SBFolderIcon alloc] initWithFolder:v27];
      [v20 addObject:v30];
      [v55 addObject:v27];

      ++v24;
    }

    while (v24 != v23);
  }

  v31 = [v6 allObjects];
  [v20 addObjectsFromArray:v31];

  if (v58)
  {
    v32 = 0;
    __upper_bound = v19 - 4;
    do
    {
      v60 = v32;
      v33 = arc4random_uniform(__upper_bound) + 4;
      v34 = [v59 addEmptyList];
      if (v33)
      {
        v35 = 0;
        while ([v20 count])
        {
          v36 = arc4random_uniform([v20 count]);
          v37 = [v20 objectAtIndex:v36];
          if ([v34 allowsAddingIcon:v37])
          {
            v38 = [v34 addIcon:v37];
            [v20 removeObjectAtIndex:v36];
            ++v35;
          }

          else
          {
            v39 = [v37 gridSizeClass];
            v40 = v39;
            if (v39 == @"SBHIconGridSizeClassDefault")
            {

LABEL_37:
              break;
            }

            v41 = [v37 gridSizeClass];
            v42 = [v41 isEqualToString:@"SBHIconGridSizeClassDefault"];

            if (v42)
            {
              goto LABEL_37;
            }
          }

          if (v35 >= v33)
          {
            break;
          }
        }
      }

      v32 = v60 + 1;
    }

    while (v60 + 1 != v58);
  }

  while ([v20 count])
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v43 = v55;
    v44 = [v43 countByEnumeratingWithState:&v61 objects:v69 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v62;
LABEL_42:
      v47 = 0;
      while (1)
      {
        if (*v62 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = *(*(&v61 + 1) + 8 * v47);
        v49 = [v20 lastObject];
        if (!v49)
        {
          break;
        }

        v50 = v49;
        if ([v48 canAddIcon:v49])
        {
          v51 = [v48 addIcon:v50];
        }

        [v20 removeLastObject];

        if (v45 == ++v47)
        {
          v45 = [v43 countByEnumeratingWithState:&v61 objects:v69 count:16];
          if (v45)
          {
            goto LABEL_42;
          }

          break;
        }
      }
    }
  }

  [(SBHIconManager *)v54 layoutIconListsWithAnimationType:-1];
}

- (void)replaceHomescreenWithWidgets
{
  v3 = [(SBHIconManager *)self delegate];
  v4 = [v3 testSetupForIconManagerWidgetScrollTest:self];

  [(SBHIconManager *)self _resetHomescreenIconStateTo:v4];
}

- (id)addWidgetsToEachPage
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [(SBHIconManager *)self rootFolder];
  v4 = [(SBHIconManager *)self widgetExtensionProvider];
  v5 = [v4 sbh_descriptors];
  v6 = [v5 valueForKey:@"extensionBundleIdentifier"];

  v7 = [(SBHIconManager *)self delegate];
  v8 = [v7 testSetupForIconManagerAddWidgetsToEachPage:self];

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __38__SBHIconManager_addWidgetsToEachPage__block_invoke;
  v29[3] = &unk_1E808FF90;
  v24 = v6;
  v30 = v24;
  v9 = [v8 bs_filter:v29];

  v10 = [MEMORY[0x1E695DF70] array];
  v11 = [v3 firstVisibleListIndex];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [(SBHIconManager *)self _iconForDescriptor:*(*(&v25 + 1) + 8 * i)];
        if (v17)
        {
          v18 = v17;
          v19 = [v3 gridPathWithListAtIndex:v11 gridCellIndex:0 listGridCellInfoOptions:{-[SBHIconManager gridCellInfoOptions](self, "gridCellInfoOptions")}];
          v20 = [v3 insertIcon:v18 atGridPath:v19 options:2];
          v21 = [v3 nextVisibleListIndexAfterIndex:v11];
          if (v21 == 0x7FFFFFFFFFFFFFFFLL)
          {

            goto LABEL_13;
          }

          v11 = v21;
          [v10 addObject:v18];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v22 = [v10 copy];

  return v22;
}

uint64_t __38__SBHIconManager_addWidgetsToEachPage__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = *(a1 + 32);
  v9 = [v7 bundleIdentifier];

  v10 = [v8 containsObject:v9];
  return v10;
}

- (void)setupHomeScreenForWidgetScrollPerformanceTest
{
  v3 = [(SBHIconManager *)self delegate];
  v4 = [v3 testSetupForIconManagerWidgetScrollPerformanceTest:self];

  [(SBHIconManager *)self _resetHomescreenIconStateTo:v4];
}

- (void)_resetHomescreenIconStateTo:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20 = [(SBHIconManager *)self rootFolder];
  [v20 removeAllLists];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      v8 = 0;
      do
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * v8);
        v10 = [v20 addEmptyList];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v11 = v9;
        v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v22;
          do
          {
            v15 = 0;
            do
            {
              if (*v22 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [(SBHIconManager *)self _iconForDescriptor:*(*(&v21 + 1) + 8 * v15)];
              if (v16)
              {
                v17 = [v10 addIcon:v16];
              }

              ++v15;
            }

            while (v13 != v15);
            v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v13);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v6);
  }

  v18 = [v20 model];
  [v18 saveIconStateIfNeeded];
}

- (id)_iconForDescriptor:(id)a3
{
  v37[1] = *MEMORY[0x1E69E9840];
  v24 = a3;
  v4 = [v24 sbh_iconDescriptorType];
  if ((v4 - 2) >= 2)
  {
    if (v4 == 1)
    {
      v6 = v24;
      v7 = self;
      v8 = [(SBHIconManager *)self iconModel];
      v9 = [v6 bundleIdentifier];

      v10 = [v8 leafIconForIdentifier:v9];

      v11 = [(SBHIconManager *)v7 iconModel];
      v12 = [v11 addAdditionalIconMatchingIcon:v10];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x3032000000;
    v32[3] = __Block_byref_object_copy__23;
    v32[4] = __Block_byref_object_dispose__23;
    v33 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __37__SBHIconManager__iconForDescriptor___block_invoke;
    aBlock[3] = &unk_1E808FFB8;
    aBlock[4] = self;
    aBlock[5] = v32;
    v25 = self;
    v5 = _Block_copy(aBlock);
    if ([v24 sbh_iconDescriptorType] == 3)
    {
      [v24 widgetIconDescriptors];
    }

    else
    {
      v37[0] = v24;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
    }
    v13 = ;
    v12 = [(SBLeafIcon *)[SBWidgetIcon alloc] initWithUniqueLeafIdentifier];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v13;
    v14 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v14)
    {
      v15 = *v28;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v27 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = [v17 element];
            [(SBLeafIcon *)v12 addIconDataSource:v18];
          }

          else
          {
            v18 = v5[2](v5, v17);
            if (v18)
            {
              v19 = [(SBHIconManager *)v25 gridSizeClassDomain];
              v20 = [v18 sbh_iconDataSourceInDomain:v19];
              v21 = SBLogWidgets();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v35 = v20;
                _os_log_impl(&dword_1BEB18000, v21, OS_LOG_TYPE_DEFAULT, "Widget %{public}@ created from descriptor.", buf, 0xCu);
              }

              [(SBLeafIcon *)v12 addIconDataSource:v20];
            }
          }
        }

        v14 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v14);
    }

    v22 = [v24 sizeClass];
    [(SBIcon *)v12 setGridSizeClass:v22];

    _Block_object_dispose(v32, 8);
  }

  return v12;
}

id __37__SBHIconManager__iconForDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 bundleIdentifier];
    v9 = [v7 widgetIdentifier];
    v10 = *(*(*(a1 + 40) + 8) + 40);
    if (!v10)
    {
      v11 = [*(a1 + 32) widgetExtensionProvider];
      v12 = [v11 sbh_descriptors];
      v13 = [v12 copy];
      v14 = *(*(a1 + 40) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      v10 = *(*(*(a1 + 40) + 8) + 40);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = v10;
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v17)
    {
      v24 = v5;
      v18 = *v26;
      while (2)
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v25 + 1) + 8 * i);
          v21 = [v20 extensionBundleIdentifier];
          v22 = [v20 kind];
          if ([v8 isEqual:v21] && (objc_msgSend(v9, "isEqual:", v22) & 1) != 0)
          {
            v17 = v20;

            goto LABEL_21;
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }

LABEL_21:
      v5 = v24;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)addWidgetStackToCurrentPage
{
  v16 = [(SBHIconManager *)self rootFolder];
  v3 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 testSetupHomeScreenForWidgetScrollPerformanceTest:self];
    v5 = [[SBHTestWidgetStackIconDescriptor alloc] initWithWidgetIconDescriptors:v4];
    v6 = [(SBHIconManager *)self _iconForDescriptor:v5];

    v7 = [v6 iconDataSources];
    v8 = [v7 objectAtIndex:2];
    [v6 setActiveDataSource:v8];

    v9 = [MEMORY[0x1E69DC938] currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if ((v10 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v11 = [v16 todayList];
      v12 = [v11 insertIcon:v6 atIndex:0];
      v13 = [(SBHIconManager *)self _effectiveTodayViewController];
      v14 = [v13 listView];
      [v14 layoutIconsNow];
    }

    else
    {
      v11 = [(SBHIconManager *)self rootFolderController];
      v13 = [v11 folderView];
      v14 = [v16 gridPathWithListAtIndex:objc_msgSend(v13 gridCellIndex:"iconListModelIndexForPageIndex:" listGridCellInfoOptions:{objc_msgSend(v13, "currentPageIndex")), 0, -[SBHIconManager gridCellInfoOptions](self, "gridCellInfoOptions")}];
      v15 = [v16 insertIcon:v6 atGridPath:v14 options:2];
      [v11 layoutIconListsWithAnimationType:-1 forceRelayout:0];
    }
  }
}

- (id)widgetIconWithWidgetExtensionIdentifiers:(id)a3 widgetKinds:(id)a4 sizeClass:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[SBWidgetIcon alloc] initWithWidgetExtensionIdentifiers:v9 widgetKinds:v8];

  [(SBIcon *)v10 setGridSizeClass:v7];

  return v10;
}

- (void)addWidgets:(id)a3 toGridPath:(id)a4 overflowOptions:(unint64_t)a5
{
  v107 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(SBHIconManager *)self rootFolder];
  if ([(SBHIconManager *)self prototypeSettingSimpleBottomSnaking])
  {
    v79 = a5;
    v11 = [(SBHIconManager *)self iconGridSizeClassSizes];
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    obj = v8;
    v12 = [obj countByEnumeratingWithState:&v92 objects:v106 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = v10;
      LODWORD(v15) = 0;
      v16 = *v93;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v93 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = [*(*(&v92 + 1) + 8 * i) gridSizeClass];
          v15 = [v11 gridSizeAreaForGridSizeClass:v18] + v15;
        }

        v13 = [obj countByEnumeratingWithState:&v92 objects:v106 count:16];
      }

      while (v13);
      v10 = v14;
    }

    else
    {
      v15 = 0;
    }

    v20 = [v10 listAtGridPath:v9];
    v21 = [v20 numberOfIcons];
    v22 = [v20 maxNumberOfIcons];
    if (v22 - v21 > v15)
    {
      v23 = -1;
    }

    else
    {
      v23 = v22 - v15;
    }

    v81 = v23;
    if (v23 < 0 || (v24 = v21 - 1, v21 - 1 < 0))
    {
      v69 = SBLogWidgetDiscoverabilityMigration();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BEB18000, v69, OS_LOG_TYPE_DEFAULT, "Nothing to bump for onboarding widgets", buf, 2u);
      }

      v70 = [v10 insertIcons:obj atGridPath:v9 options:v79];
    }

    else
    {
      v78 = [v10 indexOfList:v20];
      v76 = [MEMORY[0x1E695DF70] array];
      v80 = [MEMORY[0x1E695DF70] array];
      v77 = v8;
      if ([(SBHIconManager *)self prototypeSettingBumpLeastUsedApps])
      {
        v73 = v21;
        v25 = v21 - v81;
        v26 = [(SBHIconManager *)self atxIconRanker];

        if (!v26)
        {
          v27 = objc_alloc_init(MEMORY[0x1E698AF00]);
          [(SBHIconManager *)self setAtxIconRanker:v27];
        }

        v72 = v21 - 1;
        v75 = v9;
        v28 = [(SBHIconManager *)self atxIconRanker];
        v29 = [v28 iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex:v78];

        v30 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v29];
        v31 = [v30 array];

        v32 = [v29 count];
        if (v25 >= v32)
        {
          v33 = v32;
        }

        else
        {
          v33 = v25;
        }

        v34 = [v31 subarrayWithRange:{0, v33}];

        v35 = SBLogWidgetDiscoverabilityMigration();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v97 = v29;
          v98 = 2112;
          v99 = v34;
          _os_log_impl(&dword_1BEB18000, v35, OS_LOG_TYPE_DEFAULT, "Home screen icon index ranking: %@, trimed ranking: %@", buf, 0x16u);
        }

        v71 = v29;
        v74 = v10;

        v36 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecordOriginalIndex];
        [v36 addObjectsFromArray:v34];

        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v82 = v34;
        v37 = [v82 countByEnumeratingWithState:&v88 objects:v105 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v89;
          do
          {
            for (j = 0; j != v38; ++j)
            {
              if (*v89 != v39)
              {
                objc_enumerationMutation(v82);
              }

              v41 = [*(*(&v88 + 1) + 8 * j) integerValue];
              if (v41 < [v20 numberOfIcons])
              {
                v42 = [v20 iconAtIndex:v41];
                v43 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsBumpedIconUsageRanking];
                [v43 addObject:v42];

                if (!v41)
                {
                  goto LABEL_36;
                }

                v44 = v41 - 1;
                if (v44 >= [v20 numberOfIcons])
                {
                  v45 = [v20 lastIcon];
                  if (!v45)
                  {
                    goto LABEL_36;
                  }

LABEL_34:
                  v46 = v45;
                  v47 = v46;
                }

                else
                {
                  v45 = [v20 iconAtIndex:v44];
                  if (v45)
                  {
                    goto LABEL_34;
                  }

LABEL_36:
                  v46 = [MEMORY[0x1E695DFB0] null];
                  v47 = 0;
                }

                v48 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecord];
                [v48 setObject:v46 forKey:v42];

                continue;
              }
            }

            v38 = [v82 countByEnumeratingWithState:&v88 objects:v105 count:16];
          }

          while (v38);
        }

        v49 = SBLogWidgetDiscoverabilityMigration();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsBumpedIconUsageRanking];
          v51 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecord];
          *buf = 138412546;
          v97 = v50;
          v98 = 2112;
          v99 = v51;
          _os_log_impl(&dword_1BEB18000, v49, OS_LOG_TYPE_DEFAULT, "Adding onboarding widgets by overflow icons: %@ \n usage record: %@", buf, 0x16u);
        }

        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v52 = [v20 icons];
        v53 = [v52 countByEnumeratingWithState:&v84 objects:v104 count:16];
        if (v53)
        {
          v54 = v53;
          v55 = *v85;
          do
          {
            for (k = 0; k != v54; ++k)
            {
              if (*v85 != v55)
              {
                objc_enumerationMutation(v52);
              }

              v57 = *(*(&v84 + 1) + 8 * k);
              v58 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsBumpedIconUsageRanking];
              v59 = [v58 containsObject:v57];

              if (v59)
              {
                [v20 removeIcon:v57];
                v60 = [v20 addIcon:v57];
              }
            }

            v54 = [v52 countByEnumeratingWithState:&v84 objects:v104 count:16];
          }

          while (v54);
        }

        v10 = v74;
        v9 = v75;
        v24 = v72;
        v21 = v73;
      }

      v61 = v78 + 1;
      if (v24 >= v81)
      {
        do
        {
          v62 = v21 - 1;
          if (v62 >= [v20 numberOfIcons])
          {
            break;
          }

          [v20 iconAtIndex:v62];
          v64 = v63 = v62;
          [v20 removeIcon:v64];
          [v76 insertObject:v64 atIndex:0];
          v65 = [MEMORY[0x1E696AC88] indexPathWithIconIndex:v63 listIndex:v61];
          [v80 insertObject:v65 atIndex:0];

          v21 = v63;
        }

        while (v63 > v81);
      }

      if ([v10 listCount] <= v61)
      {
        v66 = [v10 addEmptyList];
      }

      v67 = SBLogWidgetDiscoverabilityMigration();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v97 = obj;
        v98 = 2112;
        v99 = v10;
        v100 = 2112;
        v101 = v9;
        v102 = 1024;
        v103 = v79;
        _os_log_impl(&dword_1BEB18000, v67, OS_LOG_TYPE_DEFAULT, "Insert icons(%@) to rootFolder(%@) at gridPath(%@) with overflowOptions(%d)", buf, 0x26u);
      }

      v68 = [v10 insertIcons:obj atGridPath:v9 options:v79];
      [v10 _swapInsertIcons:v76 atIndexPaths:v80];

      v8 = v77;
    }
  }

  else
  {
    v19 = [v10 insertIcons:v8 atGridPath:v9 options:a5];
  }
}

- (void)addWidgetWithIdentifier:(id)a3 toPage:(int64_t)a4 withSizeClass:(id)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v8 = MEMORY[0x1E695DEC8];
  v9 = a5;
  v10 = a3;
  v11 = [v8 arrayWithObjects:&v12 count:1];

  [(SBHIconManager *)self addWidgetStackWithIdentifiers:v11 toPage:a4 withSizeClass:v9, v12, v13];
}

- (void)addWidgetStackWithIdentifiers:(id)a3 toPage:(int64_t)a4 withSizeClass:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v26 = a5;
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = [MEMORY[0x1E695DF70] array];
  v25 = self;
  v11 = [(SBHIconManager *)self rootFolder];
  v24 = [v11 gridPathWithListAtIndex:a4 gridCellIndex:0 listGridCellInfoOptions:0];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v28;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v27 + 1) + 8 * i);
        if ([v18 containsString:{@", "}])
        {
          v19 = [v18 componentsSeparatedByString:{@", "}];

          v20 = [v19 objectAtIndexedSubscript:0];
          [v9 addObject:v20];

          if ([v19 count] < 2)
          {
            [MEMORY[0x1E695DFB0] null];
          }

          else
          {
            [v19 objectAtIndexedSubscript:1];
          }
          v21 = ;
          v15 = v19;
        }

        else
        {
          [v9 addObject:v18];
          v21 = [MEMORY[0x1E695DFB0] null];
        }

        [v10 addObject:v21];
      }

      v14 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  v22 = [(SBHIconManager *)v25 widgetIconWithWidgetExtensionIdentifiers:v9 widgetKinds:v10 sizeClass:v26];
  v31 = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  [(SBHIconManager *)v25 addWidgets:v23 toGridPath:v24 overflowOptions:2];
}

- (void)removeFirstWidgetFromRootFolderListAtIndex:(unint64_t)a3
{
  v7 = [(SBHIconManager *)self rootFolder];
  v4 = [v7 listAtIndex:a3];
  v5 = [v4 directlyContainedIconsPassingTest:&__block_literal_global_411];
  if ([v5 count])
  {
    v6 = [v5 firstObject];
    [v7 removeIcon:v6 options:0x800000];
  }
}

- (void)addApplicationIconWithBundleIdentifier:(id)a3 toPage:(unint64_t)a4 iconIndex:(unint64_t)a5
{
  v8 = a3;
  v15 = [(SBHIconManager *)self iconModel];
  v9 = [v15 applicationIconForBundleIdentifier:v8];

  if (v9)
  {
    v10 = [v15 rootFolder];
    if (([v10 isIconInIgnoredList:v9] & 1) == 0)
    {
      v11 = [v15 addAdditionalIconMatchingIcon:v9];

      v9 = v11;
    }
  }

  v12 = [(SBHIconManager *)self rootFolder];
  v13 = [MEMORY[0x1E696AC88] indexPathWithIconIndex:a5 listIndex:a4];
  v14 = [v12 insertIcon:v9 atIndexPath:v13 options:2];
}

- (void)addApplicationIconWithBundleIdentifier:(id)a3 toPage:(unint64_t)a4 coordinate:(SBIconCoordinate)a5
{
  row = a5.row;
  column = a5.column;
  v9 = a3;
  [(SBHIconManager *)self addApplicationIconWithBundleIdentifier:v9 toPage:a4 coordinate:column orientation:row, [(SBHIconManager *)self interfaceOrientation]];
}

- (void)addApplicationIconWithBundleIdentifier:(id)a3 toPage:(unint64_t)a4 coordinate:(SBIconCoordinate)a5 orientation:(int64_t)a6
{
  row = a5.row;
  column = a5.column;
  v11 = a3;
  v24 = [(SBHIconManager *)self iconModel];
  v12 = [v24 applicationIconForBundleIdentifier:v11];

  if (v12)
  {
    v13 = [v24 rootFolder];
    if (([v13 isIconInIgnoredList:v12] & 1) == 0)
    {
      v14 = [v24 addAdditionalIconMatchingIcon:v12];

      v12 = v14;
    }
  }

  v15 = [(SBHIconManager *)self rootFolder];
  v16 = [v15 listAtIndex:a4];
  v17 = [(SBHIconManager *)self gridCellInfoOptionsForOrientation:a6];
  v18 = [v16 gridCellInfoWithOptions:v17];
  v19 = [v18 gridCellIndexForCoordinate:{column, row}];
  v20 = [SBHIconGridPath alloc];
  v21 = [v16 uniqueIdentifier];
  v22 = [(SBHIconGridPath *)v20 initWithFolderIdentifier:0 listIdentifier:v21 gridCellIndex:v19 gridCellInfoOptions:v17];

  v23 = [v15 insertIcon:v12 atGridPath:v22 options:2];
}

- (void)addDebugIconOfSizeClass:(id)a3 toPage:(unint64_t)a4 iconIndex:(unint64_t)a5
{
  v8 = a3;
  v12 = [(SBLeafIcon *)[SBDebugIcon alloc] initWithUniqueLeafIdentifier];
  [(SBIcon *)v12 setGridSizeClass:v8];

  v9 = [(SBHIconManager *)self rootFolder];
  v10 = [MEMORY[0x1E696AC88] indexPathWithIconIndex:a5 listIndex:a4];
  v11 = [v9 insertIcon:v12 atIndexPath:v10 options:2];
}

- (void)addDebugIconOfSizeClass:(id)a3 toPage:(unint64_t)a4 coordinate:(SBIconCoordinate)a5
{
  row = a5.row;
  column = a5.column;
  v9 = a3;
  [(SBHIconManager *)self addDebugIconOfSizeClass:v9 toPage:a4 coordinate:column orientation:row, [(SBHIconManager *)self interfaceOrientation]];
}

- (void)addDebugIconOfSizeClass:(id)a3 toPage:(unint64_t)a4 coordinate:(SBIconCoordinate)a5 orientation:(int64_t)a6
{
  row = a5.row;
  column = a5.column;
  v11 = a3;
  v21 = [(SBHIconManager *)self rootFolder];
  v12 = [v21 listAtIndex:a4];
  v13 = [(SBHIconManager *)self gridCellInfoOptionsForOrientation:a6];
  v14 = [v12 gridCellInfoWithOptions:v13];
  v15 = [v14 gridCellIndexForCoordinate:{column, row}];
  v16 = [SBHIconGridPath alloc];
  v17 = [v12 uniqueIdentifier];
  v18 = [(SBHIconGridPath *)v16 initWithFolderIdentifier:0 listIdentifier:v17 gridCellIndex:v15 gridCellInfoOptions:v13];

  v19 = [(SBLeafIcon *)[SBDebugIcon alloc] initWithUniqueLeafIdentifier];
  [(SBIcon *)v19 setGridSizeClass:v11];

  v20 = [v21 insertIcon:v19 atGridPath:v18 options:2];
}

- (id)debuggingActiveWidgetInfo
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__SBHIconManager_debuggingActiveWidgetInfo__block_invoke;
  aBlock[3] = &unk_1E808FFE0;
  v18 = v3;
  v28 = v18;
  v29 = &v40;
  v30 = &v36;
  v31 = &v32;
  v4 = _Block_copy(aBlock);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __43__SBHIconManager_debuggingActiveWidgetInfo__block_invoke_2;
  v25[3] = &unk_1E8090008;
  v5 = v4;
  v26 = v5;
  [(SBHIconManager *)self enumerateDisplayedIconViewsUsingBlock:v25];
  v6 = [(SBHIconManager *)self _effectiveWidgetMultiplexingManager];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __43__SBHIconManager_debuggingActiveWidgetInfo__block_invoke_3;
  v23[3] = &unk_1E8090030;
  v7 = v5;
  v24 = v7;
  [v6 enumerateAllViewControllersUsingBlock:v23];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [(NSMapTable *)self->_iconViewsForCustomIconImageViewController keyEnumerator];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v44 count:16];
  if (v9)
  {
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = objc_opt_self();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v15 = [v12 contentViewController];
          (*(v7 + 2))(v7, v15);
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v19 objects:v44 count:16];
    }

    while (v9);
  }

  v16 = objc_alloc_init(MEMORY[0x1E69D4208]);
  [v16 setLiveWidgetCount:v41[3]];
  [v16 setStaticWidgetCount:v37[3]];
  [v16 setFakeWidgetCount:v33[3]];

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);

  return v16;
}

void __43__SBHIconManager_debuggingActiveWidgetInfo__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    v3 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v5 = [v8 presentationMode] - 1;
      v6 = v8;
      if (v5 > 2)
      {
LABEL_7:
        [*(a1 + 32) addObject:v6];
        goto LABEL_8;
      }

      v7 = qword_1BEE88750[v5];
    }

    else
    {
      v7 = 56;
      v6 = v8;
    }

    ++*(*(*(a1 + v7) + 8) + 24);
    goto LABEL_7;
  }

LABEL_8:
}

void __43__SBHIconManager_debuggingActiveWidgetInfo__block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [a2 customIconImageViewController];
  if ([v3 sbh_isWidgetStackViewController])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [v3 widgetViewControllers];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          if ([v9 sbh_isMultiplexingViewController])
          {
            v10 = [v9 multiplexedViewController];
          }

          else
          {
            v10 = v9;
          }

          v11 = v10;
          if (v10)
          {
            (*(*(a1 + 32) + 16))();
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }
}

- (void)setUsageMonitoringEnabled:(BOOL)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_usageMonitoringEnabled != a3)
  {
    v3 = a3;
    self->_usageMonitoringEnabled = a3;
    if (a3)
    {
      v5 = [[SBHHomeScreenUsageMonitor alloc] initWithIconManager:self];
    }

    else
    {
      v5 = 0;
    }

    [(SBHIconManager *)self setUsageMonitor:v5];
    v6 = [(SBHIconManager *)self todayViewControllers];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if (v3)
          {
            [v11 addObserver:self];
          }

          else
          {
            [v11 removeObserver:self];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (BOOL)isFolderPageManagementUIVisible
{
  v2 = [(SBHIconManager *)self rootFolderController];
  v3 = [v2 isPageManagementUIVisible];

  return v3;
}

- (void)dismissFolderPageManagementUI
{
  v2 = [(SBHIconManager *)self rootFolderController];
  [v2 exitPageManagementUIWithCompletionHandler:0];
}

- (id)silhouetteLayoutForPageAtIndex:(unint64_t)a3
{
  v5 = [(SBHIconManager *)self rootFolderController];
  if ([v5 iconListViewCount] <= a3)
  {
    v69 = 0;
  }

  else
  {
    v6 = [v5 rootFolderView];
    v7 = [v5 iconListViewAtIndex:a3];
    [v6 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [v7 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v100 = v9;
    v129.origin.x = v9;
    v95 = v11;
    v96 = v13;
    v129.origin.y = v11;
    v129.size.width = v13;
    v24 = v15;
    v129.size.height = v15;
    Height = CGRectGetHeight(v129);
    v98 = [v7 requireAllIconsShownForReason:@"silhouetteLayout"];
    v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__SBHIconManager_silhouetteLayoutForPageAtIndex___block_invoke;
    aBlock[3] = &unk_1E8090058;
    v99 = Height;
    v127 = Height;
    v27 = v26;
    v126 = v27;
    v28 = _Block_copy(aBlock);
    v118[0] = MEMORY[0x1E69E9820];
    v118[1] = 3221225472;
    v118[2] = __49__SBHIconManager_silhouetteLayoutForPageAtIndex___block_invoke_2;
    v118[3] = &unk_1E8090080;
    v29 = v28;
    v120 = v29;
    v119 = v7;
    v121 = v17;
    v122 = v19;
    v123 = v21;
    v124 = v23;
    v97 = v119;
    [v119 enumerateIconViewsUsingBlock:v118];
    v30 = [(SBHIconManager *)self floatingDockViewController];
    v94 = v29;
    if (v30)
    {
      v115[0] = MEMORY[0x1E69E9820];
      v115[1] = 3221225472;
      v115[2] = __49__SBHIconManager_silhouetteLayoutForPageAtIndex___block_invoke_3;
      v115[3] = &unk_1E8090058;
      v117 = Height;
      v116 = v27;
      v31 = _Block_copy(v115);
      v108[0] = MEMORY[0x1E69E9820];
      v108[1] = 3221225472;
      v108[2] = __49__SBHIconManager_silhouetteLayoutForPageAtIndex___block_invoke_4;
      v108[3] = &unk_1E80900A8;
      v110 = v31;
      v32 = v6;
      v109 = v32;
      v33 = v95;
      v34 = v96;
      v111 = v9;
      v112 = v95;
      v113 = v96;
      v114 = v24;
      v93 = v31;
      [v30 enumerateDisplayedIconViewsUsingBlock:v108];
      v35 = [v30 dockView];
      [v35 mainPlatterView];
      v37 = v36 = v6;
      v38 = [v35 window];
      v39 = [v38 screen];
      v40 = [v39 coordinateSpace];

      [v37 frame];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v49 = [v37 superview];
      [v49 convertRect:v40 toCoordinateSpace:{v42, v44, v46, v48}];
      v51 = v50;
      v53 = v52;
      v55 = v54;
      v57 = v56;

      [v32 convertRect:v40 fromCoordinateSpace:{v51, v53, v55, v57}];
      v59 = v58;
      v61 = v60;
      v63 = v62;
      v65 = v64;
      [v35 currentDockContinuousCornerRadius];
      v67 = v66;

      v6 = v36;
      v68 = v116;
    }

    else
    {
      v68 = [v5 dockIconListView];
      v101[0] = MEMORY[0x1E69E9820];
      v101[1] = 3221225472;
      v101[2] = __49__SBHIconManager_silhouetteLayoutForPageAtIndex___block_invoke_5;
      v101[3] = &unk_1E8090080;
      v103 = v29;
      v70 = v6;
      v102 = v70;
      v33 = v95;
      v34 = v96;
      v104 = v9;
      v105 = v95;
      v106 = v96;
      v107 = v24;
      [v68 enumerateIconViewsUsingBlock:v101];
      v71 = [v70 dockView];
      v72 = [v71 backgroundView];
      [v72 frame];
      v74 = v73;
      v76 = v75;
      v78 = v77;
      v80 = v79;
      v81 = [v72 superview];
      [v70 convertRect:v81 fromView:{v74, v76, v78, v80}];
      v59 = v82;
      v61 = v83;
      v63 = v84;
      v65 = v85;

      [v72 _cornerRadius];
      v67 = v86;
    }

    v87 = SBHNormalizedRectFromSubRect(v100, v33, v34, v24, v59, v61, v63, v65);
    v91 = [objc_alloc(MEMORY[0x1E69D4230]) initWithFrame:v87 cornerRadius:{v88, v89, v90, v67 / v99}];
    [v98 invalidate];
    v69 = [objc_alloc(MEMORY[0x1E69D4248]) initWithIcons:v27 dock:v91];
  }

  return v69;
}

void __49__SBHIconManager_silhouetteLayoutForPageAtIndex___block_invoke(uint64_t a1, void *a2, void *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v13 = a3;
  v14 = a2;
  [v14 iconImageVisibleFrame];
  [v13 convertRect:v14 fromView:?];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = SBHNormalizedRectFromSubRect(a4, a5, a6, a7, v16, v18, v20, v22);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  [v14 iconImageInfo];
  v31 = v30;

  v32 = [objc_alloc(MEMORY[0x1E69D4230]) initWithFrame:v23 cornerRadius:{v25, v27, v29, v31 / *(a1 + 40)}];
  [*(a1 + 32) addObject:v32];
}

void __49__SBHIconManager_silhouetteLayoutForPageAtIndex___block_invoke_3(uint64_t a1, void *a2, void *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v13 = a3;
  v14 = a2;
  [v14 iconImageVisibleFrame];
  [v14 convertRect:0 toView:?];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [v14 window];
  [v23 convertRect:0 toWindow:{v16, v18, v20, v22}];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = [v13 window];

  [v32 convertRect:0 fromWindow:{v25, v27, v29, v31}];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v41 = SBHNormalizedRectFromSubRect(a4, a5, a6, a7, v34, v36, v38, v40);
  v43 = v42;
  v45 = v44;
  v47 = v46;
  [v14 iconImageInfo];
  v49 = v48;

  v50 = [objc_alloc(MEMORY[0x1E69D4230]) initWithFrame:v41 cornerRadius:{v43, v45, v47, v49 / *(a1 + 40)}];
  [*(a1 + 32) addObject:v50];
}

- (id)iconsToRecacheForIconStylePickerPreview
{
  v2 = [(SBHIconManager *)self rootViewController];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__SBHIconManager_iconsToRecacheForIconStylePickerPreview__block_invoke;
  v6[3] = &unk_1E8089928;
  v4 = v3;
  v7 = v4;
  [v2 enumerateDisplayedIconViewsUsingBlock:v6];

  return v4;
}

void __57__SBHIconManager_iconsToRecacheForIconStylePickerPreview__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 icon];
  [*(a1 + 32) addObject:v4];
  if ([v4 isFolderIcon])
  {
    v5 = [v4 folder];
    v6 = [v3 visibleMiniIconListIndex];
    v7 = [v3 firstVisibleMiniIconIndex];
    v8 = [v3 lastVisibleMiniIconIndex];
    v9 = [v5 listAtIndex:v6];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__SBHIconManager_iconsToRecacheForIconStylePickerPreview__block_invoke_2;
    v10[3] = &unk_1E80900D0;
    v12 = v7;
    v13 = v8;
    v11 = *(a1 + 32);
    [v9 enumerateIconsUsingBlock:v10];
  }
}

uint64_t __57__SBHIconManager_iconsToRecacheForIconStylePickerPreview__block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (*(a1 + 40) <= a3 && *(a1 + 48) >= a3)
  {
    v8 = v5;
    v5 = [*(a1 + 32) addObject:v5];
    v6 = v8;
  }

  return MEMORY[0x1EEE66BB8](v5, v6);
}

- (id)iconViewsToPreviewForIconStylePicker
{
  v2 = [(SBHIconManager *)self rootViewController];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__SBHIconManager_iconViewsToPreviewForIconStylePicker__block_invoke;
  v6[3] = &unk_1E8089928;
  v4 = v3;
  v7 = v4;
  [v2 enumerateDisplayedIconViewsUsingBlock:v6];

  return v4;
}

- (id)precacheLayersForIcons:(id)a3 appearances:(id)a4 reason:(id)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v31 = a4;
  v9 = a5;
  v10 = [[SBHCompoundAssertion alloc] initWithReason:v9];
  [(SBHIconManager *)self rootIconImageInfo];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v8;
  v32 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v32)
  {
    v30 = *v39;
    do
    {
      v19 = 0;
      do
      {
        if (*v39 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v19;
        v20 = *(*(&v38 + 1) + 8 * v19);
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v21 = v31;
        v22 = [v21 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v35;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v35 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = [MEMORY[0x1E69DD1B8] sbh_traitCollectionWithIconImageAppearance:*(*(&v34 + 1) + 8 * i)];
              v27 = [v20 prefetchIconLayerWithInfo:v26 traitCollection:1 imageOptions:0 priority:v9 reason:0 prefetchBehavior:{v12, v14, v16, v18}];
              if (v27)
              {
                [(SBHCompoundAssertion *)v10 addAssertion:v27];
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v34 objects:v42 count:16];
          }

          while (v23);
        }

        v19 = v33 + 1;
      }

      while (v33 + 1 != v32);
      v32 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v32);
  }

  return v10;
}

- (void)cancelAllDrags
{
  v2 = [(SBHIconManager *)self iconDragManager];
  [v2 cancelAllDrags];
}

- (BOOL)iconDragManager:(id)a3 canBeginIconDragForIconView:(id)a4
{
  v5 = a4;
  v6 = [(SBHIconManager *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v6 iconManagerCanBeginIconDrags:self] || (objc_opt_respondsToSelector() & 1) != 0 && !objc_msgSend(v6, "iconManager:canBeginDragForIconView:", self, v5) || (-[SBHIconManager reasonToDisallowInteractionOnIconView:](self, "reasonToDisallowInteractionOnIconView:", v5), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v9 = [v5 icon];
    v10 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v12 = v9;
      v13 = [v5 draggingStartLocation];
      v14 = MEMORY[0x1E698B0D0];
      v15 = [v12 applicationBundleID];
      v16 = [v14 applicationWithBundleIdentifier:v15];

      if (v13 == 4)
      {
        v8 = [v16 isHidden] ^ 1;
      }

      else
      {
        LOBYTE(v8) = 1;
      }
    }

    else
    {
      LOBYTE(v8) = 1;
    }
  }

  return v8;
}

- (void)iconDragManager:(id)a3 iconView:(id)a4 willAnimateDragLiftWithAnimator:(id)a5 session:(id)a6
{
  v7 = a4;
  [(SBHIconManager *)self _restartEditingEndTimer];
  v8 = [v7 icon];

  [(SBHIconManager *)self clearHighlightedIcon:v8];
}

- (void)iconDragManagerIconDraggingDidChange:(id)a3
{
  v4 = [a3 isIconDragging];
  [(SBHIconManager *)self _restartEditingEndTimer];
  v5 = [(SBHIconManager *)self rootFolderController];
  [v5 setAllowsAutoscrollToLeadingCustomView:v4 ^ 1];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"SBHIconManagerIconDraggingChanged" object:self];

  v7 = [(SBHIconManager *)self searchGesture];
  [v7 setDisabled:v4 forReason:@"SBHIconManager Dragging"];

  v8 = [(SBHIconManager *)self floatingDockViewController];
  [v8 setIconsDragging:v4];

  [(SBHIconManager *)self _updateVisibleIconsViewsForAllowableCloseBoxes];
  v9 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 iconManagerIconDraggingDidChange:self];
  }
}

- (id)iconDragManager:(id)a3 dragPreviewForIconView:(id)a4
{
  v5 = a4;
  v6 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 iconManager:self dragPreviewForIconView:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)windowForIconDragPreviewsForIconDragManager:(id)a3 forWindowScene:(id)a4
{
  v5 = a4;
  v6 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 windowForIconDragPreviewsForIconManager:self forWindowScene:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)iconDragManager:(id)a3 targetedDragPreviewForIconView:(id)a4 item:(id)a5 session:(id)a6 previewParameters:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v16 = [v15 iconManager:self targetedDragPreviewForIconView:v11 item:v12 session:v13 previewParameters:v14];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)rootViewForIconDragManager:(id)a3
{
  v3 = [(SBHIconManager *)self rootFolderController];
  v4 = [v3 view];

  return v4;
}

- (void)iconDragManager:(id)a3 willBeginIconDragWithUniqueIdentifier:(id)a4 numberOfDraggedItems:(unint64_t)a5
{
  v8 = a4;
  v7 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 iconManager:self willBeginIconDragWithUniqueIdentifier:v8 numberOfDraggedItems:a5];
  }
}

- (void)iconDragManager:(id)a3 didAddItemsToIconDragWithUniqueIdentifier:(id)a4 numberOfDraggedItems:(unint64_t)a5
{
  v8 = a4;
  v7 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 iconManager:self didAddItemsToIconDragWithUniqueIdentifier:v8 numberOfDraggedItems:a5];
  }
}

- (void)iconDragManager:(id)a3 didEndIconDragWithUniqueIdentifier:(id)a4 numberOfDraggedItems:(unint64_t)a5
{
  v8 = a4;
  v7 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 iconManager:self didEndIconDragWithUniqueIdentifier:v8 numberOfDraggedItems:a5];
  }
}

- (void)iconDragManager:(id)a3 iconDropSessionDidEnter:(id)a4
{
  v6 = a4;
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 iconManager:self iconDropSessionDidEnter:v6];
  }
}

- (BOOL)iconDragManager:(id)a3 canBeginDragForIconView:(id)a4
{
  v5 = a4;
  v6 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 iconManager:self canBeginDragForIconView:v5];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)iconDragManager:(id)a3 canAddDragItemsToSession:(id)a4 fromIconView:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 iconManager:self canAddDragItemsToSession:v7 fromIconView:v8];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)iconDragManager:(id)a3 canAcceptDropInSession:(id)a4 inIconListView:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 iconManager:self canAcceptDropInSession:v7 inIconListView:v8];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (double)iconDragManager:(id)a3 additionalDragLiftScaleForIconView:(id)a4
{
  v5 = a4;
  v6 = [(SBHIconManager *)self delegate];
  v7 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v6 iconManager:self additionalDragLiftScaleForIconView:v5];
    v7 = v8;
  }

  return v7;
}

- (int64_t)iconDragManager:(id)a3 draggingStartLocationForIconView:(id)a4 proposedStartLocation:(int64_t)a5
{
  v7 = a4;
  v8 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    a5 = [v8 iconManager:self draggingStartLocationForIconView:v7 proposedStartLocation:a5];
  }

  return a5;
}

- (void)presentTodayOverlayForIconDragManager:(id)a3
{
  v4 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 presentTodayOverlayForIconManager:self];
  }
}

- (void)dismissTodayOverlayForIconDragManager:(id)a3
{
  v4 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 dismissTodayOverlayForIconManager:self];
  }
}

- (void)presentLibraryForIconDragManager:(id)a3 windowScene:(id)a4
{
  v6 = a4;
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 presentLibraryForIconManager:self windowScene:v6 animated:1];
  }
}

- (void)dismissLibraryForIconDragManager:(id)a3 windowScene:(id)a4
{
  v6 = a4;
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 dismissLibraryForIconManager:self windowScene:v6 animated:1];
  }
}

- (BOOL)isAnimatingFolderIconTransitionForIconDragManager:(id)a3
{
  v3 = [(SBHIconManager *)self currentTransitionAnimator];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 iconAnimator];
    v6 = [v5 isAnimating];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isFolderOpenForIconDragManager:(id)a3
{
  v3 = [(SBHIconManager *)self openedFolderController];
  v4 = v3 != 0;

  return v4;
}

- (double)defaultIconLayoutAnimationDurationForIconDragManager:(id)a3
{
  v3 = objc_opt_class();

  [v3 defaultIconLayoutAnimationDuration];
  return result;
}

- (BOOL)iconDragManager:(id)a3 shouldDuplicateIconsInDragSession:(id)a4
{
  v4 = [a4 items];
  v5 = [v4 firstObject];
  v6 = [v5 sbh_appDragLocalContext];
  v7 = [v6 startLocation] == 4;

  return v7;
}

- (void)iconDragManager:(id)a3 didSpringLoadIconView:(id)a4
{
  v6 = a4;
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 iconManager:self didSpringLoadIconView:v6];
  }
}

- (BOOL)iconDragManager:(id)a3 dragsSupportSystemDragsForIconView:(id)a4
{
  v5 = a4;
  v6 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 iconManager:self dragsSupportSystemDragsForIconView:v5];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)insertIcons:(id)a3 intoWidgetStack:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBHIconManager *)self iconModel];
  [v6 addDataSourcesFromWidgetIcons:v7];

  [v8 removeIcons:v7];
}

- (void)addSuggestedActiveWidgetToStack:(id)a3
{
  v6 = a3;
  v4 = [v6 firstSuggestedIconDataSource];
  v5 = [(SBHIconManager *)self promoteSuggestedWidget:v4 withinStack:v6];
}

- (id)promoteSuggestedWidget:(id)a3 withinStack:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (!v6 || !v7)
  {
    goto LABEL_18;
  }

  v10 = [v6 uniqueIdentifier];
  v11 = [(SBHIconManager *)self _effectiveWidgetMultiplexingManager];
  v12 = [v11 viewControllerForIdentifier:v10];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (![v6 suggestionSource])
    {
      NSLog(&cfstr_SbhwidgetDoesN.isa);
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = 0;
      goto LABEL_11;
    }

    if (![v6 suggestionSource])
    {
      NSLog(&cfstr_FakewidgetDoes.isa);
    }
  }

  v9 = [v6 copyWithSuggestionSource:0];
LABEL_11:
  [v8 replaceIconDataSource:v6 withIconDataSource:v9];
  v13 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v15 = [v12 widget];
    v16 = [v15 intentReference];
    v17 = [v16 intent];

    if (v17)
    {
      v18 = [v15 extensionIdentity];
      v23 = [v18 extensionBundleIdentifier];

      v19 = [v15 kind];
      v20 = SBLogIcon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v25 = v23;
        v26 = 2112;
        v27 = v19;
        v28 = 2112;
        v29 = v17;
        _os_log_impl(&dword_1BEB18000, v20, OS_LOG_TYPE_DEFAULT, "Saving intent for 'added' suggested widget (%@ - %@): %@", buf, 0x20u);
      }

      [(SBHIconManager *)self _archiveConfiguration:v17 forDataSource:v9 ofIcon:v8];
    }
  }

  v21 = [(SBHIconManager *)self usageMonitor];
  [v21 noteUserAddedWidgetIconStackSuggestion:v8];

LABEL_18:

  return v9;
}

- (void)hideSuggestedWidgetFromStack:(id)a3
{
  v5 = a3;
  v4 = [(SBHIconManager *)self usageMonitor];
  [v4 noteUserDislikedWidgetIconStackSuggestion:v5];

  [v5 removeFirstSuggestedIconDataSource];
}

- (void)hideSiriSuggestionOnWidgetFromStack:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self usageMonitor];
  [v5 noteUserDislikedSiriSuggestionOnWidgetIconStackSuggestion:v4];
}

- (id)gridPathForIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self rootFolder];
  v6 = [v5 gridPathForIcon:v4 listGridCellInfoOptions:{-[SBHIconManager gridCellInfoOptions](self, "gridCellInfoOptions")}];

  return v6;
}

- (void)saveGridPath:(id)a3 asPriorLocationBeforeResizeForIcon:(id)a4
{
  v10 = a3;
  v6 = a4;
  previousIconGridPathsBeforeResize = self->_previousIconGridPathsBeforeResize;
  if (!previousIconGridPathsBeforeResize)
  {
    v8 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v9 = self->_previousIconGridPathsBeforeResize;
    self->_previousIconGridPathsBeforeResize = v8;

    previousIconGridPathsBeforeResize = self->_previousIconGridPathsBeforeResize;
  }

  [(NSMapTable *)previousIconGridPathsBeforeResize setObject:v10 forKey:v6];
}

- (void)changeSizeOfWidgetIcon:(id)a3 toSizeClass:(id)a4 animated:(BOOL)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(SBHIconManager *)self rootFolder];
  v14 = [v13 indexPathForIcon:v10];
  if (v14)
  {
    v15 = [v10 gridSizeClass];
    v16 = v15;
    if (v15 == v11)
    {
    }

    else
    {
      v17 = [v10 gridSizeClass];
      v18 = [v17 isEqualToString:v11];

      if (!v18)
      {
        v28 = [(SBHIconManager *)self prepareForUndo];
        v19 = [(SBHIconManager *)self delegate];
        v20 = [(SBHIconManager *)self makeResizedCopyOfWidgetIcon:v10 withGridSizeClass:v11];
        if (objc_opt_respondsToSelector())
        {
          [v19 iconManager:self willChangeSizeOfIcon:v10 toSizeClass:v11 byReplacingWithIcon:v20];
        }

        v27 = v19;
        v32 = [(SBHIconManager *)self preWarmCustomViewControllerForWidgetIcon:v20];
        v21 = [(SBHIconManager *)self iconListViewForIndexPath:v14];
        v22 = [v21 displayedIconViewForIcon:v10];
        v31 = [(NSMapTable *)self->_previousIconGridPathsBeforeResize objectForKey:v10];
        [(SBHIconManager *)self gridPathForIcon:v10];
        v30 = v29 = v22;
        if (v22)
        {
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __80__SBHIconManager_changeSizeOfWidgetIcon_toSizeClass_animated_completionHandler___block_invoke;
          v33[3] = &unk_1E8090100;
          v33[4] = self;
          v34 = v10;
          v35 = v11;
          v36 = v20;
          v37 = v22;
          v38 = v21;
          v39 = v32;
          v23 = v20;
          v24 = a5;
          v25 = v28;
          v40 = v28;
          v41 = v31;
          v42 = v30;
          v44 = v24;
          v20 = v23;
          v43 = v12;
          [v37 performAfterContextMenusDismissUsingBlock:v33];
        }

        else
        {
          LOBYTE(v26) = a5;
          v25 = v28;
          [(SBHIconManager *)self continueChangingSizeOfWidgetIcon:v10 toSizeClass:v11 newIcon:v20 displayedIconView:0 listView:v21 resizedViewController:v32 undoPreparation:v28 previousIconGridPath:v31 currentIconGridPath:v30 animated:v26 completionHandler:v12];
        }

        goto LABEL_13;
      }
    }
  }

  if (v12)
  {
    v12[2](v12);
  }

LABEL_13:
}

- (void)continueChangingSizeOfWidgetIcon:(id)a3 toSizeClass:(id)a4 newIcon:(id)a5 displayedIconView:(id)a6 listView:(id)a7 resizedViewController:(id)a8 undoPreparation:(id)a9 previousIconGridPath:(id)a10 currentIconGridPath:(id)a11 animated:(BOOL)a12 completionHandler:(id)a13
{
  v56[1] = *MEMORY[0x1E69E9840];
  v45 = a3;
  v18 = a4;
  v47 = a5;
  v19 = a6;
  v20 = a7;
  v46 = a9;
  v49 = a10;
  v21 = a13;
  v40 = a11;
  v22 = [(SBHIconManager *)self delegate];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __204__SBHIconManager_continueChangingSizeOfWidgetIcon_toSizeClass_newIcon_displayedIconView_listView_resizedViewController_undoPreparation_previousIconGridPath_currentIconGridPath_animated_completionHandler___block_invoke;
  aBlock[3] = &unk_1E8090128;
  aBlock[4] = self;
  v44 = v45;
  v51 = v44;
  v42 = v22;
  v52 = v42;
  v23 = v18;
  v24 = v19;
  v43 = v23;
  v53 = v23;
  v25 = v47;
  v54 = v25;
  v41 = v21;
  v55 = v41;
  v26 = _Block_copy(aBlock);
  v48 = v24;
  if (a12)
  {
    v27 = [(SBHIconManager *)self widgetMetricsProvider];
    v28 = [[SBIconListViewIconSizeChangeAnimator alloc] initWithIconView:v24 iconListView:v20 widgetMetricsProvider:v27];
    [(SBIconListViewIconSizeChangeAnimator *)v28 setDelegate:self];
    [(SBIconListViewIconSizeChangeAnimator *)v28 addAnimationCompletionHandler:v26];
  }

  else
  {
    v28 = 0;
  }

  v29 = [(SBHIconManager *)self iconModel];
  v30 = [(SBHIconManager *)self rootFolder];
  v31 = [(SBHIconManager *)self gridCellInfoOptions];
  if ([v30 containsIcon:v44])
  {
    v56[0] = v25;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
    v33 = [v30 replaceIcon:v44 withIcons:v32 options:8390146 listGridCellInfoOptions:v31];
  }

  else
  {
    v32 = [v20 model];
    v34 = [v30 addIcon:v25 toList:v32 options:8390146];
  }

  v35 = v48;
  if (v49)
  {
    v36 = [v30 insertIcon:v25 atGridPath:v49 options:1024];
  }

  [v29 removeIcon:v44];
  [v29 addIcon:v25];
  [v20 layoutIconsIfNeededUsingAnimator:v28 options:0];
  [(SBHIconManager *)self saveGridPath:v40 asPriorLocationBeforeResizeForIcon:v25];

  v37 = [v20 undoManager];
  if (v37)
  {
    v38 = SBHBundle();
    v39 = [v38 localizedStringForKey:@"UNDO_RESIZE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    [v46 registerWithUndoManager:v37 actionName:v39 observer:0];

    v35 = v48;
  }

  if (!a12)
  {
    v26[2](v26);
  }
}

void __204__SBHIconManager_continueChangingSizeOfWidgetIcon_toSizeClass_newIcon_displayedIconView_listView_resizedViewController_undoPreparation_previousIconGridPath_currentIconGridPath_animated_completionHandler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _effectiveWidgetMultiplexingManager];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [*(a1 + 40) iconDataSources];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v9 = [v8 uniqueIdentifier];
          [v2 discardCachedRecentViewControllersForIdentifier:v9];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 48) iconManager:*(a1 + 32) didChangeSizeOfIcon:*(a1 + 40) toSizeClass:*(a1 + 56) byReplacingWithIcon:*(a1 + 64)];
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

- (id)makeResizedCopyOfWidgetIcon:(id)a3 withGridSizeClass:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v27 = v6;
  v8 = [v6 copyWithUniqueLeafIdentifier];
  [v8 setGridSizeClass:v7];
  v26 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = objc_opt_respondsToSelector();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v8 iconDataSources];
  v11 = [v10 copy];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    v25 = *v30;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        v17 = objc_opt_self();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass & 1) != 0 || (objc_opt_self(), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_opt_isKindOfClass(), v19, (v20))
        {
          v21 = [v16 copyWithUniqueIdentifier];
          [v8 replaceIconDataSource:v16 withIconDataSource:v21];
          if (v21 != 0 && (v9 & 1) != 0)
          {
            v22 = [v26 iconManager:self configurationDataForDataSource:v16 ofIcon:v27];
            v14 = v25;
            [v26 iconManager:self dataSource:v21 ofIcon:v8 didUpdateConfigurationData:v22];
          }
        }

        else
        {
          v21 = 0;
        }
      }

      v13 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v13);
  }

  return v8;
}

- (void)replaceWidgetIconWithAppIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self rootFolder];
  v6 = [v5 listContainingIcon:v4];
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = v4;
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      v35 = v10;
      v11 = [(SBHIconManager *)self prepareForUndo];
      v36 = [(SBHIconManager *)self iconModel];
      v12 = [(SBHIconManager *)self iconForReplacingWidgetIconWithAppIcon:v8];
      v13 = [v5 containsIcon:v12];
      v14 = v12;
      v15 = v14;
      if ([v14 isLeafIcon])
      {
        v15 = v14;
        if (v13)
        {
          v15 = [v36 addAdditionalIconMatchingIcon:v14];
        }
      }

      v10 = v35;
      if (v15)
      {
        v30 = v14;
        v34 = v11;
        v33 = [(SBHIconManager *)self rootFolderController];
        v16 = [v33 iconListViewWithIconListModel:v6];
        v17 = [v16 displayedIconViewForIcon:v35];
        v27 = [(NSMapTable *)self->_previousIconGridPathsBeforeResize objectForKey:v8];
        v31 = [(SBHIconManager *)self gridPathForIcon:v8];
        v18 = [(SBHIconManager *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [v18 iconManager:self willChangeSizeOfIcon:v8 toSizeClass:@"SBHIconGridSizeClassDefault" byReplacingWithIcon:v15];
        }

        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __47__SBHIconManager_replaceWidgetIconWithAppIcon___block_invoke;
        v37[3] = &unk_1E8090150;
        v38 = v5;
        v19 = v35;
        v39 = v19;
        v40 = self;
        v41 = v17;
        v29 = v16;
        v42 = v29;
        v28 = v18;
        v43 = v28;
        v44 = v8;
        v20 = v15;
        v45 = v20;
        v21 = v27;
        v46 = v21;
        v47 = v36;
        v22 = v31;
        v48 = v22;
        v49 = v34;
        v32 = v41;
        [v41 performAfterContextMenusDismissUsingBlock:v37];
        if (!self->_previousWidgetDataSourceBeforeResize)
        {
          v23 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
          previousWidgetDataSourceBeforeResize = self->_previousWidgetDataSourceBeforeResize;
          self->_previousWidgetDataSourceBeforeResize = v23;
        }

        v25 = [v19 activeDataSource];
        [(NSMapTable *)self->_previousWidgetDataSourceBeforeResize setObject:v25 forKey:v20];

        v11 = v34;
        v10 = v35;
        v26 = v33;
        v14 = v30;
      }

      else
      {
        v26 = SBLogWidgets();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [SBHIconManager replaceWidgetIconWithAppIcon:];
        }
      }
    }
  }
}

void __47__SBHIconManager_replaceWidgetIconWithAppIcon___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) containsIcon:*(a1 + 40)])
  {
    v2 = [*(a1 + 48) widgetMetricsProvider];
    v3 = [[SBIconListViewIconSizeChangeAnimator alloc] initWithIconView:*(a1 + 56) iconListView:*(a1 + 64) widgetMetricsProvider:v2];
    [(SBIconListViewIconSizeChangeAnimator *)v3 setDelegate:*(a1 + 48)];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __47__SBHIconManager_replaceWidgetIconWithAppIcon___block_invoke_2;
    v15 = &unk_1E8089E68;
    v4 = *(a1 + 72);
    v5 = *(a1 + 48);
    v16 = v4;
    v17 = v5;
    v18 = *(a1 + 80);
    v19 = *(a1 + 88);
    [(SBIconListViewIconSizeChangeAnimator *)v3 addAnimationCompletionHandler:&v12];
    [*(a1 + 32) replaceIcon:*(a1 + 40) withIcon:*(a1 + 88) options:{8389634, v12, v13, v14, v15}];
    v6 = *(a1 + 96);
    if (v6)
    {
      v7 = [*(a1 + 32) insertIcon:*(a1 + 88) atGridPath:v6 options:1024];
    }

    [*(a1 + 104) removeIcon:*(a1 + 40)];
    [*(a1 + 64) layoutIconsIfNeededUsingAnimator:v3 options:0];
    [*(a1 + 48) saveGridPath:*(a1 + 112) asPriorLocationBeforeResizeForIcon:*(a1 + 88)];
    v8 = [*(a1 + 64) undoManager];
    if (v8)
    {
      v9 = *(a1 + 120);
      v10 = SBHBundle();
      v11 = [v10 localizedStringForKey:@"UNDO_RESIZE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      [v9 registerWithUndoManager:v8 actionName:v11 observer:0];
    }
  }
}

uint64_t __47__SBHIconManager_replaceWidgetIconWithAppIcon___block_invoke_2(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];

    return [v3 iconManager:v4 didChangeSizeOfIcon:v5 toSizeClass:@"SBHIconGridSizeClassDefault" byReplacingWithIcon:v6];
  }

  return result;
}

- (id)iconForReplacingWidgetIconWithAppIcon:(id)a3
{
  v4 = a3;
  if ([v4 isLeafIcon])
  {
    v5 = [v4 activeDataSource];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass())) && ([v5 containerBundleIdentifier], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v6;
      v8 = [(SBHIconManager *)self iconModel];
      v9 = [v8 applicationIconForBundleIdentifier:v7];
      v10 = [(SBHIconManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v11 = [v10 iconManager:self applicationIconForReplacingIconWithAppIcon:v4 proposedApplicationIcon:v9];

        v9 = v11;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)replaceAppIcon:(id)a3 withWidgetOfSize:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBHIconManager *)self rootFolder];
  v9 = [v8 indexPathForIcon:v6];
  if (v9)
  {
    v10 = [(SBHIconManager *)self prepareForUndo];
    v11 = [(SBHIconManager *)self iconDataSourceForReplacingAppIconWithWidgetIcon:v6];
    if (v11)
    {
      v12 = v11;
      v34 = v10;
      if (objc_opt_respondsToSelector())
      {
        v13 = [v12 copyWithUniqueIdentifier];

        v12 = v13;
      }

      v31 = v8;
      v14 = [(SBLeafIcon *)[SBWidgetIcon alloc] initWithUniqueLeafIdentifier];
      v33 = v12;
      [(SBLeafIcon *)v14 addIconDataSource:v12];
      [(SBIcon *)v14 setGridSizeClass:v7];
      v32 = [(SBHIconManager *)self preWarmCustomViewControllerForWidgetIcon:v14];
      v15 = [(SBHIconManager *)self iconListViewForIndexPath:v9];
      v16 = [v15 displayedIconViewForIcon:v6];
      v17 = [(NSMapTable *)self->_previousIconGridPathsBeforeResize objectForKey:v6];
      v18 = [(SBHIconManager *)self gridPathForIcon:v6];
      [(SBHIconManager *)self delegate];
      v20 = v19 = v7;
      if (objc_opt_respondsToSelector())
      {
        [v20 iconManager:self willChangeSizeOfIcon:v6 toSizeClass:v19 byReplacingWithIcon:v14];
      }

      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __50__SBHIconManager_replaceAppIcon_withWidgetOfSize___block_invoke;
      v35[3] = &unk_1E8090150;
      v36 = v32;
      v37 = self;
      v38 = v16;
      v39 = v15;
      v40 = v20;
      v41 = v6;
      v30 = v19;
      v42 = v19;
      v43 = v14;
      v21 = v16;
      v8 = v31;
      v44 = v31;
      v45 = v17;
      v46 = v18;
      v47 = v34;
      v22 = v18;
      v10 = v34;
      v29 = v22;
      v28 = v17;
      v23 = v14;
      v24 = v20;
      v25 = v15;
      v26 = v21;
      v27 = v32;
      [v26 performAfterContextMenusDismissUsingBlock:v35];

      v7 = v30;
    }
  }
}

void __50__SBHIconManager_replaceAppIcon_withWidgetOfSize___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) widgetMetricsProvider];
  v3 = [[SBIconListViewIconSizeChangeAnimator alloc] initWithIconView:*(a1 + 48) iconListView:*(a1 + 56) widgetMetricsProvider:v2];
  [(SBIconListViewIconSizeChangeAnimator *)v3 setDelegate:*(a1 + 40)];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__SBHIconManager_replaceAppIcon_withWidgetOfSize___block_invoke_2;
  v15[3] = &unk_1E808C340;
  v4 = *(a1 + 64);
  v5 = *(a1 + 40);
  v16 = v4;
  v17 = v5;
  v18 = *(a1 + 72);
  v19 = *(a1 + 80);
  v20 = *(a1 + 88);
  [(SBIconListViewIconSizeChangeAnimator *)v3 addAnimationCompletionHandler:v15];
  v6 = [*(a1 + 40) iconModel];
  [*(a1 + 96) replaceIcon:*(a1 + 72) withIcon:*(a1 + 88) options:8390154];
  if ([*(a1 + 40) canAddIconToIgnoredList:*(a1 + 72)])
  {
    v7 = [*(a1 + 96) ignoredList];
    v8 = [v7 addIcon:*(a1 + 72)];
  }

  v9 = *(a1 + 104);
  if (v9)
  {
    v10 = [*(a1 + 96) insertIcon:*(a1 + 88) atGridPath:v9 options:1024];
  }

  [v6 addIcon:*(a1 + 88)];
  [*(a1 + 56) layoutIconsIfNeededUsingAnimator:v3 options:0];
  [*(a1 + 40) saveGridPath:*(a1 + 112) asPriorLocationBeforeResizeForIcon:*(a1 + 88)];
  v11 = [*(a1 + 56) undoManager];
  if (v11)
  {
    v12 = *(a1 + 120);
    v13 = SBHBundle();
    v14 = [v13 localizedStringForKey:@"UNDO_RESIZE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    [v12 registerWithUndoManager:v11 actionName:v14 observer:0];
  }
}

uint64_t __50__SBHIconManager_replaceAppIcon_withWidgetOfSize___block_invoke_2(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];
    v7 = a1[8];

    return [v3 iconManager:v4 didChangeSizeOfIcon:v5 toSizeClass:v6 byReplacingWithIcon:v7];
  }

  return result;
}

- (id)iconDataSourceForReplacingAppIconWithWidgetIcon:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_previousWidgetDataSourceBeforeResize objectForKey:v4];
  if (!v5)
  {
    v6 = [v4 applicationBundleID];
    v7 = [(SBHIconManager *)self widgetExtensionProvider];
    v8 = [v7 sbh_defaultDescriptorForContainerBundleIdentifier:v6];

    v9 = [(SBHIconManager *)self gridSizeClassDomain];
    v5 = [v8 sbh_iconDataSourceInDomain:v9];
  }

  v10 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v11 = [v10 iconManager:self widgetDataSourceForReplacingIconWithWidget:v4 proposedWidgetDataSource:v5];

    v5 = v11;
  }

  return v5;
}

- (id)_intentForWidget:(id)a3 ofIcon:(id)a4 loadingFromArchiveIfNecessary:(BOOL)a5 usingDefaultIntentIfNecessary:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = [v10 uniqueIdentifier];
  v13 = [(SBHIconManager *)self _intentForDataSource:v10 inIcon:v11 loadingFromArchiveIfNecessary:0 usingDefaultIntentIfNecessary:0];
  v14 = v13;
  if (!v13)
  {
    v15 = [(SBHIconManager *)self _effectiveWidgetMultiplexingManager];
    v16 = [v15 viewControllerForIdentifier:v12];

    if ([v16 sbh_isWidgetHostViewController])
    {
      v17 = [v16 widget];
      [v17 intentReference];
      v21 = v7;
      v19 = v18 = v6;
      v14 = [v19 intent];

      v6 = v18;
      v7 = v21;

      if (v14)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v14 = [(SBHIconManager *)self _intentForDataSource:v10 inIcon:v11 loadingFromArchiveIfNecessary:v7 usingDefaultIntentIfNecessary:v6];
  }

LABEL_7:

  return v14;
}

- (void)setTemporaryIntent:(id)a3 forIconWithIdentifier:(id)a4 widgetUniqueIdentifier:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 iconManager:self setTemporaryIntent:v11 forIconWithIdentifier:v8 widgetUniqueIdentifier:v9];
  }
}

- (BOOL)canOpenFolderForIcon:(id)a3
{
  v4 = a3;
  if ([v4 isFolderIcon])
  {
    v5 = [(SBHIconManager *)self iconDragManager];
    v6 = [v5 isTrackingDroppingIconDrags];

    if ((v6 & 1) == 0)
    {
      v8 = [(SBHIconManager *)self floatingDockViewController];
      v9 = v8;
      if (v8)
      {
        v10 = [v8 isPresentingLibrary];
        v11 = [v4 folder];
        if ((v10 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v12 = [(SBHIconManager *)self isMainDisplayLibraryViewVisible];
        v11 = [v4 folder];
        if (!v12)
        {
          goto LABEL_9;
        }
      }

      if (![v11 isLibraryCategoryFolder])
      {
        v7 = 0;
        goto LABEL_11;
      }

LABEL_9:
      v7 = 1;
LABEL_11:

      goto LABEL_12;
    }
  }

  v7 = 0;
LABEL_12:

  return v7;
}

- (BOOL)canCloseFolders
{
  v2 = [(SBHIconManager *)self iconDragManager];
  v3 = [v2 isTrackingDroppingIconDrags];

  return v3 ^ 1;
}

- (BOOL)hasOpenFolderInLocation:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self floatingDockViewController];
  if ([v5 isPresentingIconLocation:v4] && (objc_msgSend(v5, "isPresentingFolder") & 1) != 0)
  {
    v6 = 1;
  }

  else if ([(SBHIconManager *)self hasRootFolderController])
  {
    v7 = [(SBHIconManager *)self rootViewController];
    if ([v7 isPresentingIconLocation:v4] && (objc_msgSend(v7, "deepestFolderController"), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      v6 = 1;
    }

    else
    {
      v9 = [(SBHIconManager *)self rootFolderController];
      if ([v9 isPresentingIconLocation:v4] && (objc_msgSend(v9, "deepestFolderController"), v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
      {
        v6 = 1;
      }

      else
      {
        v11 = [(SBHIconManager *)self _currentFolderController];
        if ([v11 isPresentingIconLocation:v4])
        {
          v12 = [v11 deepestFolderController];
          v6 = v12 != 0;
        }

        else
        {
          v6 = 0;
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SBFolder)openedFolder
{
  v3 = [(SBHIconManager *)self floatingDockViewController];
  v4 = [v3 presentedFolderController];
  v5 = [v4 folder];

  if (!v5)
  {
    v6 = [(SBHIconManager *)self openedFolderController];
    v5 = [v6 folder];
  }

  return v5;
}

- (void)setAnimatingFolderOpeningOrClosing:(BOOL)a3
{
  if (self->_animatingFolderOpeningOrClosing != a3)
  {
    v5 = [(SBHIconManager *)self hasAnimatingFolder];
    self->_animatingFolderOpeningOrClosing = a3;
    if (v5 != [(SBHIconManager *)self hasAnimatingFolder])
    {

      [(SBHIconManager *)self hasAnimatingFolderChanged];
    }
  }
}

- (void)setAnimatingFolderCreation:(BOOL)a3
{
  if (self->_animatingFolderCreation != a3)
  {
    v5 = [(SBHIconManager *)self hasAnimatingFolder];
    self->_animatingFolderCreation = a3;
    if (v5 != [(SBHIconManager *)self hasAnimatingFolder])
    {

      [(SBHIconManager *)self hasAnimatingFolderChanged];
    }
  }
}

- (void)hasAnimatingFolderChanged
{
  if (![(SBHIconManager *)self hasAnimatingFolder]&& self->_needsRelayout)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_DEFAULT, "SBHIconManager: requesting delayed relayout because folder finished animating.", v5, 2u);
    }

    [(SBHIconManager *)self relayout];
  }

  v4 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 iconManagerFolderAnimatingDidChange:self];
  }
}

- (BOOL)allowsNestedFolders
{
  v2 = +[SBHHomeScreenDomain rootSettings];
  v3 = [v2 folderSettings];
  v4 = [v3 allowNestedFolders];

  return v4;
}

- (unint64_t)maxListCountForFolders
{
  v3 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 maximumListCountForFoldersForIconManager:self];
  }

  else
  {
    v4 = 15;
  }

  return v4;
}

- (unint64_t)maxIconCountForDock
{
  v3 = [(SBHIconManager *)self isFloatingDockSupported];
  v4 = SBIconLocationFloatingDock;
  if (!v3)
  {
    v4 = SBIconLocationDock;
  }

  v5 = *v4;
  v6 = [(SBHIconManager *)self listLayoutProvider];
  v7 = [v6 layoutForIconLocation:v5];

  v8 = SBHIconListLayoutMaximumIconCount(v7);
  return v8;
}

- (unint64_t)maxIconCountForDockUtilities
{
  v3 = [(SBHIconManager *)self isFloatingDockUtilitiesSupported];
  v4 = SBIconLocationFloatingDockUtilities;
  if (!v3)
  {
    v4 = &SBIconLocationNone;
  }

  v5 = *v4;
  v6 = [(SBHIconManager *)self listLayoutProvider];
  v7 = [v6 layoutForIconLocation:v5];

  v8 = SBHIconListLayoutMaximumIconCount(v7);
  return v8;
}

- (unint64_t)columnCountForTodayList
{
  v2 = [(SBHIconManager *)self listLayoutProvider];
  v3 = [v2 layoutForIconLocation:@"SBIconLocationTodayView"];

  v4 = [v3 numberOfColumnsForOrientation:1];
  return v4;
}

- (id)allowedGridSizeClassesForDock
{
  v3 = [(SBHIconManager *)self isFloatingDockSupported];
  v4 = SBIconLocationFloatingDock;
  if (!v3)
  {
    v4 = SBIconLocationDock;
  }

  v5 = *v4;
  v6 = [(SBHIconManager *)self listLayoutProvider];
  v7 = [v6 layoutForIconLocation:v5];

  v8 = SBHIconListLayoutSupportedIconGridSizeClasses(v7);

  return v8;
}

- (id)allowedGridSizeClassesForTodayList
{
  v2 = [(SBHIconManager *)self listLayoutProvider];
  v3 = [v2 layoutForIconLocation:@"SBIconLocationTodayView"];

  v4 = SBHIconListLayoutSupportedIconGridSizeClasses(v3);

  return v4;
}

- (SBHIconGridSize)listGridSizeForFolderClass:(Class)a3
{
  v4 = [(objc_class *)[(SBHIconManager *)self controllerClassForFolderClass:a3] iconLocation];
  v5 = [(SBHIconManager *)self listLayoutProvider];
  v6 = [v5 layoutForIconLocation:v4];

  if (v6)
  {
    v7 = SBHIconListLayoutListGridSize(v6, 1);
    v8 = v7 & 0xFFFF0000;
    v9 = v7;
  }

  else
  {
    v8 = 196608;
    v9 = 3;
  }

  return (v8 | v9);
}

- (SBHIconGridSize)listWithNonDefaultSizedIconsGridSizeForFolderClass:(Class)a3
{
  v5 = [(SBHIconManager *)self iconLocationForListsWithNonDefaultSizedIcons];
  v6 = objc_opt_self();
  if (![(objc_class *)a3 isSubclassOfClass:v6])
  {

    goto LABEL_6;
  }

  v7 = [v5 isEqualToString:@"SBIconLocationRoot"];

  if (v7)
  {
LABEL_6:
    v10 = 0;
    goto LABEL_9;
  }

  v8 = [(SBHIconManager *)self listLayoutProvider];
  v9 = [v8 layoutForIconLocation:v5];

  if (v9)
  {
    v10 = SBHIconListLayoutListGridSize(v9, 1);
  }

  else
  {
    v10 = 0;
  }

LABEL_9:
  return v10;
}

- (BOOL)listsAllowRotatedLayoutForFolderClass:(Class)a3
{
  v5 = [(SBHIconManager *)self delegate];
  v6 = objc_opt_self();
  if (![(objc_class *)a3 isSubclassOfClass:v6])
  {

    goto LABEL_5;
  }

  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0)
  {
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v8 = [v5 listsAllowRotatedLayoutForIconManager:self];
LABEL_6:

  return v8;
}

- (int64_t)listsFixedIconLocationBehaviorForFolderClass:(Class)a3
{
  v5 = objc_opt_self();
  LODWORD(a3) = [(objc_class *)a3 isSubclassOfClass:v5];

  if (!a3)
  {
    return 0;
  }

  return [(SBHIconManager *)self listsFixedIconLocationBehavior];
}

- (int64_t)listsIconDisplacementBehaviorForFolderClass:(Class)a3
{
  v5 = objc_opt_self();
  LODWORD(a3) = [(objc_class *)a3 isSubclassOfClass:v5];

  if (!a3)
  {
    return 1;
  }

  return [(SBHIconManager *)self listsIconDisplacementBehavior];
}

- (id)iconGridSizeClassSizes
{
  v3 = [(SBHIconManager *)self listLayoutProvider];
  v4 = [v3 layoutForIconLocation:@"SBIconLocationRoot"];

  v5 = SBHIconListLayoutIconGridSizeClassSizes(v4, [(SBHIconManager *)self interfaceOrientation]);

  return v5;
}

- (id)supportedGridSizeClassesForWidgetWithKind:(id)a3 extensionBundleIdentifier:(id)a4 containerBundleIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SBHIconManager *)self widgetExtensionProvider];
  v12 = [v11 sbh_descriptorWithKind:v10 extensionBundleIdentifier:v9 containerBundleIdentifier:v8];

  v13 = [(SBHIconManager *)self gridSizeClassDomain];
  v14 = v13;
  if (v12)
  {
    v15 = -[SBHIconGridSizeClassSet initWithCHSWidgetFamilyMask:inDomain:]([SBHIconGridSizeClassSet alloc], "initWithCHSWidgetFamilyMask:inDomain:", [v12 supportedFamilies], v13);
  }

  else
  {
    v15 = [v13 allNonDefaultGridSizeClasses];
  }

  v16 = v15;

  return v16;
}

- (int64_t)currentIconListIndex
{
  v2 = [(SBHIconManager *)self rootViewController];
  v3 = [v2 currentPageIndex];

  return v3;
}

- (id)folderControllerForFolder:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self rootFolderController];
  v6 = [v5 folderControllerForFolder:v4];

  if (!v6)
  {
    v7 = [(SBHIconManager *)self floatingDockViewController];
    v8 = [v7 presentedFolderController];

    v9 = [v8 folder];
    v10 = [v9 isEqual:v4];

    if (v10)
    {
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)createNewFolderFromRecipientIcon:(id)a3 grabbedIcon:(id)a4
{
  v6 = a3;
  v7 = [(SBHIconManager *)self _proposedFolderNameForGrabbedIcon:a4 recipientIcon:v6];
  v8 = [(SBHIconManager *)self iconModel];
  v9 = [v8 makeFolderWithDisplayName:v7];
  [v9 setCancelable:1];
  v10 = [[SBFolderIcon alloc] initWithFolder:v9];
  v11 = [(SBHIconManager *)self rootFolder];
  [v11 replaceIcon:v6 withIcon:v10];

  [v8 addIcon:v10];

  return v9;
}

- (void)addIcons:(id)a3 intoFolderIcon:(id)a4 openFolderOnFinish:(BOOL)a5 completion:(id)a6
{
  v20 = a5;
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v10 folder];
  v13 = [v12 startCoalescingContentChangesForReason:@"SBHIconManager.addIcons:intoFolderIcon:"];
  v21 = [(SBHIconManager *)self rootFolder];
  v14 = [v21 indexPathForIcon:v10];
  v22 = 0;
  [(SBHIconManager *)self getListView:&v22 folder:0 relativePath:0 forIndexPath:v14];
  v15 = v22;
  v16 = [v15 iconViewForIcon:v10];
  v17 = [v16 superview];
  [v17 bringSubviewToFront:v16];

  [v16 setAllowsEditingAnimation:0];
  v18 = [v12 addIcons:v9];
  if (v20)
  {
    [(SBHIconManager *)self setAnimatingFolderCreation:1];
    [v16 setAllowsEditingAnimation:1];
    [v13 invalidate];
    v19 = [v16 location];
    [(SBHIconManager *)self pushExpandedIcon:v10 location:v19 context:0 animated:1 completionHandler:0];

    if (!v11)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [v16 setAllowsEditingAnimation:1];
  [v13 invalidate];
  if (v11)
  {
LABEL_5:
    v11[2](v11);
  }

LABEL_6:
  [(SBHIconManager *)self setAnimatingFolderCreation:0];
}

- (void)replaceFolderIcon:(id)a3 byContainedIcon:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(SBHIconManager *)self rootFolder];
  v11 = [v10 indexPathForIcon:v8];
  if (v11)
  {
    v12 = [(SBHIconManager *)self iconListViewForIndexPath:v11];
    v13 = [v12 iconViewForIcon:v8];
    [v13 frameForMiniIconAtIndex:0];
    v51 = v15;
    v52 = v14;
    v17 = v16;
    v19 = v18;
    [v10 replaceIcon:v8 withIcon:v9];
    v20 = [v12 iconViewForIcon:v9];
    v21 = [v12 layout];
    [v21 iconImageInfo];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = SBHIconListLayoutFolderIconGridCellSize(v21);
    if (v5)
    {
      v32 = v30;
      v33 = v31;
      v48 = [v12 traitCollection];
      v50 = v13;
      v34 = objc_alloc(MEMORY[0x1E69DCAE0]);
      [v20 iconImageSnapshot];
      v35 = v49 = v21;
      v36 = [v34 initWithImage:v35];

      v37 = [(SBHIconManager *)self folderIconImageCache];
      v47 = [v37 gridCellImageOfSize:v9 forIcon:v48 iconImageInfo:v32 compatibleWithTraitCollection:{v33, v23, v25, v27, v29}];

      v38 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v47];
      [v20 setIconImageAndAccessoryAlpha:0.0];
      [v20 setIconLabelAlpha:0.0];
      [v20 setRefusesRecipientStatus:1];
      v39 = [v36 layer];
      [v39 setAllowsEdgeAntialiasing:1];

      v40 = [v38 layer];
      [v40 setAllowsEdgeAntialiasing:1];

      [v36 setFrame:{v52, v51, v17, v19}];
      [v38 setFrame:{v52, v51, v17, v19}];
      [v20 addSubview:v36];
      [v20 addSubview:v38];
      v53 = MEMORY[0x1E69DD250];
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __61__SBHIconManager_replaceFolderIcon_byContainedIcon_animated___block_invoke;
      v61[3] = &unk_1E8088F88;
      v41 = v20;
      v62 = v41;
      v63 = v36;
      v64 = v38;
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __61__SBHIconManager_replaceFolderIcon_byContainedIcon_animated___block_invoke_2;
      v56[3] = &unk_1E808CE88;
      v57 = v12;
      v58 = v9;
      v59 = v63;
      v60 = v64;
      v42 = v64;
      v43 = v63;
      [v53 animateWithDuration:v61 animations:v56 completion:0.5];
      v44 = MEMORY[0x1E69DD250];
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __61__SBHIconManager_replaceFolderIcon_byContainedIcon_animated___block_invoke_4;
      v54[3] = &unk_1E8088C90;
      v55 = v41;
      v45 = v44;
      v21 = v49;
      v13 = v50;
      [v45 animateWithDuration:0 delay:v54 options:0 animations:0.15 completion:0.35];
    }

LABEL_9:
    goto LABEL_10;
  }

  if (([v10 containsIcon:v9] & 1) == 0)
  {
    v12 = [(SBHIconManager *)self _currentFolderController];
    v13 = [v12 currentIconListView];
    v20 = [v13 model];
    if (!v20)
    {
      v20 = [v10 firstList];
    }

    v46 = [v10 addIcon:v9 toList:v20 options:0];
    goto LABEL_9;
  }

LABEL_10:
}

uint64_t __61__SBHIconManager_replaceFolderIcon_byContainedIcon_animated___block_invoke(id *a1)
{
  [a1[4] iconImageFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [a1[5] setFrame:?];
  [a1[6] setFrame:{v3, v5, v7, v9}];
  v10 = a1[6];

  return [v10 setAlpha:0.0];
}

void __61__SBHIconManager_replaceFolderIcon_byContainedIcon_animated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) iconViewForIcon:*(a1 + 40)];
  [v2 setIconImageAlpha:1.0];
  [v2 setIconAccessoryAlpha:0.0];
  [v2 setRefusesRecipientStatus:0];
  v3 = MEMORY[0x1E69DD250];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__SBHIconManager_replaceFolderIcon_byContainedIcon_animated___block_invoke_3;
  v5[3] = &unk_1E8088C90;
  v6 = v2;
  v4 = v2;
  [v3 animateWithDuration:v5 animations:0.15];
  [*(a1 + 48) removeFromSuperview];
  [*(a1 + 56) removeFromSuperview];
}

- (id)localizedDefaultFolderName
{
  v3 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 localizedDefaultFolderNameForIconManager:self];
  }

  else
  {
    [MEMORY[0x1E69DD350] _localizedFolderNameForName:@"Folder"];
  }
  v4 = ;

  return v4;
}

- (id)localizedFolderNameForDefaultDisplayName:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 iconManager:self localizedFolderNameForDefaultDisplayName:v4];
  }

  else
  {
    [(SBHIconManager *)self localizedDefaultFolderName];
  }
  v6 = ;

  return v6;
}

- (id)_proposedFolderNameForGrabbedIcon:(id)a3 recipientIcon:(id)a4
{
  v23 = self;
  v5 = a3;
  v6 = a4;
  v26 = v5;
  v7 = [v5 folderTitleOptions];
  v25 = v6;
  v8 = [v6 folderTitleOptions];
  v9 = [v7 count];
  v10 = [v8 count];
  v29 = v9;
  v27 = v9 + v10 - 2;
  if (v27 >= 0)
  {
    v11 = v10;
    v12 = 0;
    v28 = v9 - 1;
    do
    {
      if (v12 >= v28)
      {
        v13 = v29 - 1;
      }

      else
      {
        v13 = v12;
      }

      if (v29 >= 1)
      {
        v14 = 0;
        do
        {
          v15 = [v7 objectAtIndex:{v14, v23}];
          if (v11 < 1)
          {
LABEL_13:
          }

          else
          {
            v16 = 1;
            while (1)
            {
              v17 = [v8 objectAtIndex:v16 - 1];
              v18 = [v15 isEqualToString:v17];

              if (v18)
              {
                break;
              }

              if (v11 > v16)
              {
                v19 = v14 + v16++;
                if (v19 <= v12)
                {
                  continue;
                }
              }

              goto LABEL_13;
            }

            if (v15)
            {
              goto LABEL_23;
            }
          }

          v20 = v14++ == v13;
        }

        while (!v20);
      }

      v20 = v12++ == v27;
    }

    while (!v20);
  }

  v21 = [v26 folderFallbackTitle];
  if (!v21)
  {
    v21 = [v25 folderFallbackTitle];
    if (!v21)
    {
      v21 = [v24 localizedDefaultFolderName];
    }
  }

  v15 = v21;
LABEL_23:

  return v15;
}

- (void)pushExpandedIcon:(id)a3 location:(id)a4 context:(id)a5 animated:(BOOL)a6 completionHandler:(id)a7
{
  v36 = a6;
  v52 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v37 = a7;
  v14 = SBLogIcon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v47 = v11;
    v48 = 2114;
    v49 = v12;
    v50 = 2112;
    v51 = v13;
    _os_log_impl(&dword_1BEB18000, v14, OS_LOG_TYPE_DEFAULT, "push expanded icon %@ from location %{public}@ with context: %@", buf, 0x20u);
  }

  if (!v13 || (objc_opt_respondsToSelector() & 1) == 0 || ([v13 iconView], v15 = objc_claimAutoreleasedReturnValue(), -[SBHIconManager floatingDockViewControllerForView:](self, "floatingDockViewControllerForView:", v15), v16 = objc_claimAutoreleasedReturnValue(), v15, !v16))
  {
    v16 = [(SBHIconManager *)self floatingDockViewController];
  }

  if ([v16 isPresentingIconLocation:v12] && objc_msgSend(v11, "isFolderIcon"))
  {
    v17 = SBLogIcon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BEB18000, v17, OS_LOG_TYPE_DEFAULT, "telling floating dock view controller to open folder", buf, 2u);
    }

    [v16 presentFolderForIcon:v11 location:v12 animated:v36 completion:v37];
  }

  else
  {
    currentTransitionAnimator = self->_currentTransitionAnimator;
    if (currentTransitionAnimator)
    {
      if ([(SBHomeScreenIconTransitionAnimator *)currentTransitionAnimator currentOperation]== 1)
      {
        v19 = SBLogIcon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BEB18000, v19, OS_LOG_TYPE_DEFAULT, "a folder is collapsing when trying to open folder", buf, 2u);
        }

        v20 = [(SBHomeScreenIconTransitionAnimator *)self->_currentTransitionAnimator childViewController];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = [v20 folder];
          v22 = [v21 icon];
        }

        else
        {
          v22 = 0;
        }

        v29 = SBLogIcon();
        v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
        if (v22 == v11)
        {
          if (v30)
          {
            *buf = 0;
            _os_log_impl(&dword_1BEB18000, v29, OS_LOG_TYPE_DEFAULT, "collapsing folder is the same as what we are trying to open; reversing", buf, 2u);
          }

          if (v37)
          {
            currentExpandCompletions = self->_currentExpandCompletions;
            if (!currentExpandCompletions)
            {
              v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v33 = self->_currentExpandCompletions;
              self->_currentExpandCompletions = v32;

              currentExpandCompletions = self->_currentExpandCompletions;
            }

            v34 = [v37 copy];
            v35 = _Block_copy(v34);
            [(NSMutableArray *)currentExpandCompletions addObject:v35];
          }

          [(SBHomeScreenIconTransitionAnimator *)self->_currentTransitionAnimator reverse];
        }

        else
        {
          if (v30)
          {
            *buf = 0;
            _os_log_impl(&dword_1BEB18000, v29, OS_LOG_TYPE_DEFAULT, "will wait to open folder until folder is finished closing", buf, 2u);
          }

          if ([(BSEventQueue *)self->_transitionEventQueue isEmpty])
          {
            v42[0] = MEMORY[0x1E69E9820];
            v42[1] = 3221225472;
            v42[2] = __79__SBHIconManager_pushExpandedIcon_location_context_animated_completionHandler___block_invoke;
            v42[3] = &unk_1E8089E68;
            v42[4] = self;
            v43 = v11;
            v44 = v12;
            v45 = v13;
            [(SBHIconManager *)self _enqueueTransitionName:@"Request to open a folder while another folder is still closing" withHandler:v42];
          }

          if (v37)
          {
            (*(v37 + 2))(v37, 0);
          }
        }
      }

      else if (v37)
      {
        v25 = SBLogIcon();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BEB18000, v25, OS_LOG_TYPE_DEFAULT, "a folder is transitioning (not collapsing) when trying to open folder; rejecting", buf, 2u);
        }

        (*(v37 + 2))(v37, 0);
      }
    }

    else
    {
      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __79__SBHIconManager_pushExpandedIcon_location_context_animated_completionHandler___block_invoke_531;
      aBlock[3] = &unk_1E808EA20;
      objc_copyWeak(&v40, &location);
      v23 = v37;
      v39 = v23;
      v24 = _Block_copy(aBlock);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SBHIconManager *)self openFolderIcon:v11 location:v12 animated:v36 withCompletion:v24];
      }

      else
      {
        v26 = [(SBHIconManager *)self delegate];
        v27 = objc_opt_respondsToSelector();
        v28 = SBLogIcon();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v47 = v11;
          v48 = 1024;
          LODWORD(v49) = v27 & 1;
          _os_log_impl(&dword_1BEB18000, v28, OS_LOG_TYPE_DEFAULT, "Unknown icon for pushing expanded icon: %@. Delegate can handle: %{BOOL}u", buf, 0x12u);
        }

        if (v27)
        {
          [v26 iconManager:self launchIcon:v11 location:v12 animated:v36 completionHandler:v23];
        }

        else if (v23)
        {
          (*(v23 + 2))(v23, 0);
        }
      }

      objc_destroyWeak(&v40);
      objc_destroyWeak(&location);
    }
  }
}

void *__79__SBHIconManager_pushExpandedIcon_location_context_animated_completionHandler___block_invoke(void *a1)
{
  result = a1[4];
  if (!result[83])
  {
    return [result pushExpandedIcon:a1[5] location:a1[6] context:a1[7] animated:1 completionHandler:0];
  }

  return result;
}

void __79__SBHIconManager_pushExpandedIcon_location_context_animated_completionHandler___block_invoke_531(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, a2);
  }

  if (WeakRetained)
  {
    v6 = WeakRetained[14];
    v7 = WeakRetained[15];
    v8 = WeakRetained[14];
    WeakRetained[14] = 0;

    v9 = WeakRetained[15];
    WeakRetained[15] = 0;

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        v14 = 0;
        do
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          (*(*(*(&v24 + 1) + 8 * v14++) + 16))();
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v12);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = v7;
    v16 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v21;
      do
      {
        v19 = 0;
        do
        {
          if (*v21 != v18)
          {
            objc_enumerationMutation(v15);
          }

          (*(*(*(&v20 + 1) + 8 * v19) + 16))(*(*(&v20 + 1) + 8 * v19));
          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v17);
    }
  }
}

- (void)pushExpandedIcon:(id)a3 location:(id)a4 context:(id)a5 forcePoppingPriorExpandedIcon:(BOOL)a6 animated:(BOOL)a7 completionHandler:(id)a8
{
  v9 = a7;
  v10 = a6;
  v17 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a8;
  if (v10)
  {
    [(SBHIconManager *)self popExpandedIconAnimated:0 completionHandler:0];
  }

  [(SBHIconManager *)self pushExpandedIcon:v17 location:v14 context:v15 animated:v9 completionHandler:v16];
}

- (void)popExpandedIconFromLocation:(id)a3 interactionContext:(id)a4 animated:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(SBHIconManager *)self floatingDockViewController];
  v14 = [v13 isPresentingFolder];
  if ([v13 isPresentingIconLocation:v10])
  {
    if (!v14)
    {
LABEL_8:
      if (v12)
      {
        v12[2](v12, 0);
      }

      goto LABEL_20;
    }

LABEL_5:
    [v13 dismissPresentedFolderAnimated:v7 completion:v12];
    goto LABEL_20;
  }

  if (v14)
  {
    goto LABEL_5;
  }

  currentTransitionAnimator = self->_currentTransitionAnimator;
  if (currentTransitionAnimator)
  {
    if ([(SBHomeScreenIconTransitionAnimator *)currentTransitionAnimator currentOperation])
    {
      goto LABEL_8;
    }

    if (v12)
    {
      currentCollapseCompletions = self->_currentCollapseCompletions;
      if (!currentCollapseCompletions)
      {
        v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v22 = self->_currentCollapseCompletions;
        self->_currentCollapseCompletions = v21;

        currentCollapseCompletions = self->_currentCollapseCompletions;
      }

      v23 = [v12 copy];
      v24 = _Block_copy(v23);
      [(NSMutableArray *)currentCollapseCompletions addObject:v24];
    }

    [(SBHomeScreenIconTransitionAnimator *)self->_currentTransitionAnimator reverse];
  }

  else
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __92__SBHIconManager_popExpandedIconFromLocation_interactionContext_animated_completionHandler___block_invoke;
    aBlock[3] = &unk_1E808EA20;
    objc_copyWeak(&v27, &location);
    v16 = v12;
    v26 = v16;
    v17 = _Block_copy(aBlock);
    [(SBHIconManager *)self setCurrentInteractionContext:v11];
    v18 = [(SBHIconManager *)self rootFolderController];
    v19 = [v18 deepestNestedDescendantViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SBHIconManager *)self closeFolderAnimated:v7 withCompletion:v17];
    }

    else if (v16)
    {
      v16[2](v16, 0);
    }

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

LABEL_20:
}

void __92__SBHIconManager_popExpandedIconFromLocation_interactionContext_animated_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, a2);
  }

  if (WeakRetained)
  {
    v6 = WeakRetained[14];
    v7 = WeakRetained[15];
    v8 = WeakRetained[14];
    WeakRetained[14] = 0;

    v9 = WeakRetained[15];
    WeakRetained[15] = 0;

    [WeakRetained setCurrentInteractionContext:0];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        v14 = 0;
        do
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          (*(*(*(&v24 + 1) + 8 * v14++) + 16))();
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v12);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = v7;
    v16 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v21;
      do
      {
        v19 = 0;
        do
        {
          if (*v21 != v18)
          {
            objc_enumerationMutation(v15);
          }

          (*(*(*(&v20 + 1) + 8 * v19) + 16))(*(*(&v20 + 1) + 8 * v19));
          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v17);
    }
  }
}

- (void)popToCurrentRootIconList
{
  v3 = [(SBHIconManager *)self openedFolderController];
  do
  {
    if (!v3)
    {
      break;
    }

    v4 = v3;
    [(SBHIconManager *)self popExpandedIconAnimated:0 completionHandler:0];
    v6 = [(SBHIconManager *)self openedFolderController];

    v5 = [v6 isEqual:v4];
    v3 = v6;
  }

  while (!v5);
}

- (void)popToCurrentRootIconListWhenPossible
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __54__SBHIconManager_popToCurrentRootIconListWhenPossible__block_invoke;
  v2[3] = &unk_1E8088C90;
  v2[4] = self;
  [(SBHIconManager *)self _enqueueTransitionName:@"popToCurrentRootIconList" withHandler:v2];
}

- (BOOL)isPerformingCancelledCollapseTransition
{
  if (![(SBHIconManager *)self isTransitioning])
  {
    return 0;
  }

  v3 = [(SBHIconManager *)self currentTransitionAnimator];
  if ([v3 isCancelled])
  {
    v4 = [(SBHIconManager *)self currentTransitionAnimator];
    v5 = [v4 currentOperation] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isTrackingScroll
{
  v3 = [(SBHIconManager *)self rootViewController];
  v4 = [v3 isScrollTracking];

  if (v4)
  {
    return 1;
  }

  v6 = [(SBHIconManager *)self openedFolderController];
  v7 = [v6 isScrollTracking];

  return v7;
}

- (void)openFolderIcon:(id)a3 location:(id)a4 animated:(BOOL)a5 withCompletion:(id)a6
{
  v7 = a5;
  v36 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = SBLogIcon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = v10;
    v34 = 2114;
    v35 = v11;
    _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_DEFAULT, "open folder icon %@ location %{public}@", buf, 0x16u);
  }

  if (v10 && [(SBHIconManager *)self canOpenFolderForIcon:v10])
  {
    if ([(SBHIconManager *)self isShowingIconContextMenu])
    {
      v14 = SBLogIcon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BEB18000, v14, OS_LOG_TYPE_DEFAULT, "will wait until context menus are dismissed", buf, 2u);
      }

      objc_storeWeak(&self->_pendingFolderIconToOpen, v10);
      objc_initWeak(buf, self);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __66__SBHIconManager_openFolderIcon_location_animated_withCompletion___block_invoke;
      v26[3] = &unk_1E8090178;
      objc_copyWeak(&v30, buf);
      v29 = v12;
      v27 = v10;
      v28 = v11;
      v31 = v7;
      [(SBHIconManager *)self performAfterIconContextMenuDismissesUsingBlock:v26];

      objc_destroyWeak(&v30);
      objc_destroyWeak(buf);
    }

    else
    {
      objc_storeWeak(&self->_pendingFolderIconToOpen, 0);
      v16 = [v10 folder];
      v17 = [(SBHIconManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [v17 iconManager:self willOpenFolder:v16];
      }

      v18 = [(SBHIconManager *)self iconDragManager];
      [v18 noteFolderControllerWillOpen];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __66__SBHIconManager_openFolderIcon_location_animated_withCompletion___block_invoke_2;
      v21[3] = &unk_1E808B370;
      v22 = v17;
      v23 = self;
      v24 = v16;
      v25 = v12;
      v19 = v16;
      v20 = v17;
      [(SBHIconManager *)self _animateFolderIcon:v10 open:1 location:v11 animated:v7 withCompletion:v21];
      if (!v7)
      {
        [(SBHIconManager *)self setAnimatingFolderOpeningOrClosing:0];
      }
    }
  }

  else
  {
    v15 = SBLogIcon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v33 = v10;
      _os_log_impl(&dword_1BEB18000, v15, OS_LOG_TYPE_INFO, "IGNORING. Icon = %@", buf, 0xCu);
    }

    if (v12)
    {
      (*(v12 + 2))(v12, 0);
    }
  }
}

void __66__SBHIconManager_openFolderIcon_location_animated_withCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (WeakRetained && SBIconViewQueryingDisplayingIconInLocation(WeakRetained, *(a1 + 32), *(a1 + 40), 1))
  {
    [v4 openFolderIcon:*(a1 + 32) location:*(a1 + 40) animated:*(a1 + 64) withCompletion:*(a1 + 48)];
  }

  else
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      (*(v3 + 16))(v3, 0);
    }
  }
}

uint64_t __66__SBHIconManager_openFolderIcon_location_animated_withCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = SBLogIcon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "finished opening folder: %{BOOL}u", v6, 8u);
  }

  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) iconManager:*(a1 + 40) didOpenFolder:*(a1 + 48)];
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

- (void)closeFolderAnimated:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SBHIconManager *)self rootFolderController];
  v8 = [v7 deepestFolderController];

  [(SBHIconManager *)self _closeFolderController:v8 animated:v4 withCompletion:v6];
}

- (void)_closeFolderController:(id)a3 animated:(BOOL)a4 withCompletion:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (v8 && [(SBHIconManager *)self canCloseFolders])
  {
    v10 = [(SBHIconManager *)self openedFolder];
    [(SBHIconManager *)self setClosingFolder:v10];
    v11 = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v11 iconManager:self willCloseFolder:v10];
    }

    v12 = [(SBHIconManager *)self iconDragManager];
    [v12 noteFolderControllerWillClose:v8];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __65__SBHIconManager__closeFolderController_animated_withCompletion___block_invoke;
    v17[3] = &unk_1E808FED8;
    v17[4] = self;
    v18 = v10;
    v23 = a4;
    v19 = v12;
    v20 = v8;
    v21 = v11;
    v22 = v9;
    v13 = v11;
    v14 = v12;
    v15 = v10;
    [(SBHIconManager *)self _enqueueTransitionName:@"Close Folder" withHandler:v17];
  }

  else
  {
    v16 = SBLogIcon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v8;
      _os_log_impl(&dword_1BEB18000, v16, OS_LOG_TYPE_INFO, "IGNORING. Controller = %@", buf, 0xCu);
    }

    if (v9)
    {
      (*(v9 + 2))(v9, 0);
    }
  }
}

void __65__SBHIconManager__closeFolderController_animated_withCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) icon];
  v4 = *(a1 + 80);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __65__SBHIconManager__closeFolderController_animated_withCompletion___block_invoke_2;
  v11 = &unk_1E80901A0;
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = *(a1 + 72);
  [v2 _animateFolderIcon:v3 open:0 location:@"SBIconLocationNone" animated:v4 withCompletion:&v8];

  if ((*(a1 + 80) & 1) == 0)
  {
    [*(a1 + 32) _cleanupForClosingFolderAnimated:{0, v8, v9, v10, v11, v12, v13, v14, v15, v16}];
    [*(a1 + 32) _compactRootListsAfterFolderCloseWithAnimation:0];
  }
}

uint64_t __65__SBHIconManager__closeFolderController_animated_withCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) noteFolderControllerDidClose:*(a1 + 40)];
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 48) iconManager:*(a1 + 56) didCloseFolder:*(a1 + 64)];
  }

  result = *(a1 + 72);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_animateFolderIcon:(id)a3 open:(BOOL)a4 location:(id)a5 animated:(BOOL)a6 withCompletion:(id)a7
{
  v8 = a6;
  v10 = a4;
  v25 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a7;
  if (!v12 && v10)
  {
    goto LABEL_3;
  }

  if (v10)
  {
    if ([(SBHIconManager *)self canOpenFolderForIcon:v12])
    {
      goto LABEL_11;
    }

LABEL_3:
    v15 = SBLogIcon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = v12;
      _os_log_impl(&dword_1BEB18000, v15, OS_LOG_TYPE_INFO, "IGNORING. Icon = %@", buf, 0xCu);
    }

    if (v14)
    {
      v14[2](v14, 0);
    }

    goto LABEL_17;
  }

  if (![(SBHIconManager *)self canCloseFolders])
  {
    goto LABEL_3;
  }

LABEL_11:
  if (v8)
  {
    [(SBHIconManager *)self setAnimatingFolderOpeningOrClosing:1];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__SBHIconManager__animateFolderIcon_open_location_animated_withCompletion___block_invoke;
  aBlock[3] = &unk_1E80901C8;
  aBlock[4] = self;
  v21 = v10;
  v22 = v8;
  v20 = v14;
  v16 = _Block_copy(aBlock);
  v17 = [(SBHIconManager *)self _folderControllerForIcon:v12 inLocation:v13];
  v18 = v17;
  if (v10)
  {
    [v17 pushFolderIcon:v12 location:v13 animated:v8 completion:v16];
  }

  else
  {
    [v17 popFolderAnimated:v8 completion:v16];
  }

LABEL_17:
}

uint64_t __75__SBHIconManager__animateFolderIcon_open_location_animated_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _folderDidFinishOpenClose:*(a1 + 48) animated:*(a1 + 49) success:a2];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)_folderDidFinishOpenClose:(BOOL)a3 animated:(BOOL)a4 success:(BOOL)a5
{
  if (!a3)
  {
    if (a5)
    {
      [(SBHIconManager *)self _cleanupForClosingFolderAnimated:a4];
    }

    else
    {
      closingFolder = self->_closingFolder;
      self->_closingFolder = 0;
    }
  }

  if ([(SBHIconManager *)self hasAnimatingFolder]&& self->_iconToReveal)
  {
    [(SBHIconManager *)self finishInstallingIconAnimated:1];
  }

  [(SBHIconManager *)self setAnimatingFolderOpeningOrClosing:0];
}

- (void)_cleanupForClosingFolderAnimated:(BOOL)a3
{
  closingFolder = self->_closingFolder;
  if (!closingFolder)
  {
    return;
  }

  v5 = a3;
  [(SBFolder *)closingFolder compactLists];
  v6 = [(SBFolder *)self->_closingFolder icon];
  v7 = [(SBFolder *)self->_closingFolder allIcons];
  v8 = [v7 count];
  if (![(SBFolder *)self->_closingFolder shouldRemoveWhenEmpty])
  {
    v9 = 0;
    v11 = v6;
LABEL_9:
    v6 = 0;
    goto LABEL_14;
  }

  if (v8)
  {
    v9 = 0;
    if ([(SBFolder *)self->_closingFolder isCancelable]&& v8 == 1)
    {
      v9 = [v7 anyObject];
      v11 = 0;
    }

    else
    {
      v11 = v6;
      v6 = 0;
    }

    goto LABEL_14;
  }

  if (v6)
  {
    [(SBHIconManager *)self uninstallIcon:v6 animate:v5];

    v11 = 0;
    v9 = 0;
    goto LABEL_9;
  }

  v11 = 0;
  v9 = 0;
LABEL_14:
  if ([(SBHIconManager *)self hasAnimatingFolder]&& self->_iconToReveal)
  {
    [(SBHIconManager *)self finishInstallingIconAnimated:1];
  }

  [(SBHIconManager *)self setAnimatingFolderOpeningOrClosing:0];
  if (v9 && v6)
  {
    [(SBHIconManager *)self replaceFolderIcon:v6 byContainedIcon:v9 animated:v5];
  }

  v10 = self->_closingFolder;
  self->_closingFolder = 0;
}

- (void)_compactRootListsAfterFolderCloseWithAnimation:(BOOL)a3
{
  if (a3)
  {
    [(SBHIconManager *)self layoutIconListsWithAnimationType:0 forceRelayout:1];
  }
}

- (void)_enqueueTransitionName:(id)a3 withHandler:(id)a4
{
  v6 = [MEMORY[0x1E698E6B0] eventWithName:a3 handler:a4];
  v5 = [(SBHIconManager *)self transitionEventQueue];
  [v5 executeOrInsertEvent:v6 atPosition:1];
}

- (BOOL)_shouldParallaxInIconLocation:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self rootFolderController];
  v6 = [v5 nonDockPresentedIconLocations];
  v7 = [v6 containsObject:v4];

  return v7;
}

- (unint64_t)gridCellInfoOptions
{
  v3 = [(SBHIconManager *)self interfaceOrientation];

  return [(SBHIconManager *)self gridCellInfoOptionsForOrientation:v3];
}

- (void)presentLeadingCustomViewWithCompletion:(id)a3
{
  v4 = a3;
  [(SBHIconManager *)self _ensureRootFolderController];
  v5 = [(SBHIconManager *)self rootFolderController];
  [v5 performPageStateTransitionToState:2 reason:@"activate leading custom view" animated:1 completionHandler:v4];
}

- (void)presentTrailingCustomViewWithCompletion:(id)a3
{
  v4 = a3;
  [(SBHIconManager *)self _ensureRootFolderController];
  v5 = [(SBHIconManager *)self rootFolderController];
  [v5 performPageStateTransitionToState:4 reason:@"activate trailing custom view" animated:1 completionHandler:v4];
}

- (BOOL)presentSpotlightFromSource:(unint64_t)a3 animated:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [(SBHIconManager *)self rootFolderController];
  [v9 setPresentationSource:a3];
  if (a3 == 5)
  {
    [(SBHIconManager *)self popToCurrentRootIconList];
  }

  [v9 presentSpotlightAnimated:v5 completionHandler:v8];
  v10 = [v9 isAnySearchVisibleOrTransitioning];
  [v9 setPresentationSource:0];

  return v10;
}

- (BOOL)dismissSpotlightOrTodayViewAnimated:(BOOL)a3
{
  v4 = [(SBHIconManager *)self presentHomeScreenIconsAnimated:a3];
  v5 = [(SBHIconManager *)self delegate];
  [v5 dismissTodayOverlayForIconManager:self];

  return v4;
}

- (BOOL)presentHomeScreenIconsAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(SBHIconManager *)self _isShowingPullDownSearchOrTransitioning]|| (v5 = [(SBHIconManager *)self _isShowingLeadingCustomViewSearchOrTransitioning]))
  {
    v6 = [(SBHIconManager *)self rootFolderController];
    [v6 performPageStateTransitionToState:0 reason:@"dismiss spotlight or today view" animated:v3 completionHandler:0];

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)dismissSpotlightAnimated:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SBHIconManager *)self rootFolderController];
  v8 = [v7 isAnySearchVisibleOrTransitioning];

  v9 = [(SBHIconManager *)self rootFolderController];
  [v9 dismissSpotlightAnimated:v4 completionHandler:v6];

  return v8;
}

- (BOOL)isShowingPullDownOrLeadingCustomViewSearch
{
  if ([(SBHIconManager *)self isShowingPullDownSearchOrTransitioningToVisible])
  {
    return 1;
  }

  return [(SBHIconManager *)self _isShowingLeadingCustomViewSearch];
}

- (BOOL)_isShowingLeadingCustomViewSearch
{
  v2 = [(SBHIconManager *)self rootFolderController];
  v3 = [v2 isLeadingCustomViewSearchVisible];

  return v3;
}

- (unint64_t)supportedMultitaskingShortcutActionsForIconView:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconManager:self supportedMultitaskingShortcutActionsForIconView:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)iconViewShowingContextMenu
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__23;
  v9 = __Block_byref_object_dispose__23;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__SBHIconManager_iconViewShowingContextMenu__block_invoke;
  v4[3] = &unk_1E80901F0;
  v4[4] = &v5;
  [(SBHIconManager *)self enumerateDisplayedIconViewsUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __44__SBHIconManager_iconViewShowingContextMenu__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 isShowingContextMenu])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (BOOL)isShowingIconContextMenu
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [(SBHIconManager *)self iconViewShowingContextMenu];
  if (v2)
  {
    v3 = SBLogIcon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [v2 location];
      v5 = [v2 icon];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v9 = 138543618;
      v10 = v4;
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_DEFAULT, "isShowingIconContextMenu at location '%{public}@' for icon type '%{public}@'", &v9, 0x16u);
    }
  }

  return v2 != 0;
}

- (void)dismissIconContextMenu
{
  v2 = [(SBHIconManager *)self iconViewShowingContextMenu];
  [v2 dismissContextMenuWithCompletion:0];
}

- (void)performAfterIconContextMenuDismissesUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self iconViewShowingContextMenu];
  v6 = v5;
  if (v5)
  {
    [v5 performAfterContextMenusDismissUsingBlock:v4];
  }

  else
  {
    v4[2](v4);
  }
}

- (void)dismissIconShareSheets
{
  v2 = [(SBHIconManager *)self iconShareSheetManager];
  [v2 dismissIconShareSheetsIfNecessaryAndCleanUp];
}

- (id)prepareForUndo
{
  v2 = [[SBHIconManagerUndoPreparation alloc] initWithIconManager:self];

  return v2;
}

- (void)undoPreparation:(id)a3 registerWithUndoManager:(id)a4 actionName:(id)a5 observer:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 originalRootFolder];
  v15 = [(SBHIconManager *)self rootFolder];

  if (v14 == v15)
  {
    [v10 setObserver:v13];
    [v11 removeAllActionsWithTarget:self];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __78__SBHIconManager_undoPreparation_registerWithUndoManager_actionName_observer___block_invoke;
    v20[3] = &unk_1E808AA10;
    v21 = v10;
    [v11 registerUndoWithTarget:self handler:v20];
    if (v12)
    {
      [v11 setActionName:v12];
    }

    v16 = dispatch_time(0, 480000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__SBHIconManager_undoPreparation_registerWithUndoManager_actionName_observer___block_invoke_2;
    block[3] = &unk_1E8088F18;
    v18 = v11;
    v19 = self;
    dispatch_after(v16, MEMORY[0x1E69E96A0], block);
  }
}

- (void)undoChangeWithPreparation:(id)a3
{
  v65[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBHIconManager *)self rootFolderController];
  v40 = v5;
  if (v5)
  {
    v65[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:1];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v57 objects:v64 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v58;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v58 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [[SBIconDragUndoLayoutDelegatePreModificationInfo alloc] initWithRootFolderController:*(*(&v57 + 1) + 8 * i)];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v57 objects:v64 count:16];
    }

    while (v10);
  }

  v39 = v8;

  v14 = [(SBHIconManager *)self folderIconImageCache];
  [v14 purgeAllCachedFolderImages];

  v15 = [v4 observer];
  [v15 willUndo];
  v38 = self;
  v16 = [(SBHIconManager *)self rootFolder];
  v41 = v4;
  v35 = [v4 unmodifiedOriginalRootFolder];
  v17 = [v16 setListsFromFolder:?];
  v36 = v16;
  [v16 compactLists];
  v37 = v15;
  [v15 didUndo];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v7;
  v44 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
  v18 = 0;
  v19 = 0;
  if (v44)
  {
    v43 = *v54;
    do
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v54 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v53 + 1) + 8 * j);
        v22 = [[SBIconDragUndoLayoutDelegate alloc] initWithPreModificationInfo:v21];
        if (v22)
        {
          v23 = v18;
          if (!v19)
          {
            v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v24 = [v21 visibleListViews];
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v25 = [v24 countByEnumeratingWithState:&v49 objects:v62 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v50;
            do
            {
              for (k = 0; k != v26; ++k)
              {
                if (*v50 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v29 = [*(*(&v49 + 1) + 8 * k) addOverridingLayoutDelegate:v22 reason:@"UndoDrag"];
                if (v29)
                {
                  [v19 addObject:v29];
                }
              }

              v26 = [v24 countByEnumeratingWithState:&v49 objects:v62 count:16];
            }

            while (v26);
          }

          v18 = v23;
          if (!v23)
          {
            v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v18 addObject:v22];
        }
      }

      v44 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
    }

    while (v44);
  }

  [(SBHIconManager *)v38 layoutIconListsWithAnimationType:0 forceRelayout:0];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v30 = v19;
  v31 = [v30 countByEnumeratingWithState:&v45 objects:v61 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v46;
    do
    {
      for (m = 0; m != v32; ++m)
      {
        if (*v46 != v33)
        {
          objc_enumerationMutation(v30);
        }

        [*(*(&v45 + 1) + 8 * m) invalidate];
      }

      v32 = [v30 countByEnumeratingWithState:&v45 objects:v61 count:16];
    }

    while (v32);
  }
}

+ (id)undoActionNameForDraggedIcons:(id)a3
{
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
    if ([v4 isApplicationIcon])
    {
      v5 = SBHBundle();
      v6 = v5;
      v7 = @"UNDO_DRAG_APP";
    }

    else if ([v4 isWidgetIcon])
    {
      v5 = SBHBundle();
      v6 = v5;
      v7 = @"UNDO_DRAG_WIDGET";
    }

    else if ([v4 isFolderIcon])
    {
      v5 = SBHBundle();
      v6 = v5;
      v7 = @"UNDO_DRAG_FOLDER";
    }

    else
    {
      v10 = [v4 isBookmarkIcon];
      v5 = SBHBundle();
      v6 = v5;
      if (v10)
      {
        v7 = @"UNDO_DRAG_BOOKMARK";
      }

      else
      {
        v7 = @"UNDO_DRAG";
      }
    }

    v8 = [v5 localizedStringForKey:v7 value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  }

  else
  {
    v4 = SBHBundle();
    v8 = [v4 localizedStringForKey:@"UNDO_DRAG" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  }

  return v8;
}

- (void)getStatistics:(SBHIconManagerStatistics *)a3
{
  a3->var0 = self->_relayoutCount;
  a3->var2 = [(SBHReusableViewMap *)self->_iconViewMap recycledViewCount];
  a3->var3 = [(SBHReusableViewMap *)self->_iconViewMap viewRecyclingCount];
  a3->var4 = [(SBHReusableViewMap *)self->_homescreenIconAccessoryViewMap recycledViewCount];
  a3->var5 = [(SBHReusableViewMap *)self->_homescreenIconAccessoryViewMap viewRecyclingCount];
  a3->var6 = [(SBHReusableViewMap *)self->_homescreenIconLabelAccessoryViewMap recycledViewCount];
  a3->var7 = [(SBHReusableViewMap *)self->_homescreenIconLabelAccessoryViewMap viewRecyclingCount];
  a3->var8 = [(SBHReusableViewMap *)self->_homescreenIconImageViewMap recycledViewCount];
  a3->var9 = [(SBHReusableViewMap *)self->_homescreenIconImageViewMap viewRecyclingCount];
  a3->var10 = [(SBIconLabelImageCache *)self->_labelImageCache numberOfCachedLabelImages];
  a3->var11 = [(SBIconLabelImageCache *)self->_labelImageCache numberOfCachedLabelHits];
  a3->var12 = [(SBIconLabelImageCache *)self->_labelImageCache numberOfCachedLabelMisses];
  if (SBHFeatureEnabled(0))
  {
    a3->var13 = [(SBIconLabelImageCache *)self->_labelImageCache numberOfCachedLegibilityImages];
    a3->var14 = [(SBIconLabelImageCache *)self->_labelImageCache numberOfCachedLegibilityHits];
    a3->var15 = [(SBIconLabelImageCache *)self->_labelImageCache numberOfCachedLegibilityMisses];
  }

  a3->var16 = [(SBHIconImageCache *)self->_iconImageCache numberOfCachedImages];
  a3->var17 = [(SBHIconImageCache *)self->_iconImageCache numberOfCacheHits];
  a3->var18 = [(SBHIconImageCache *)self->_iconImageCache numberOfCacheMisses];
  a3->var19 = [(SBHIconImageCache *)self->_iconImageCache numberOfMainThreadImageLoads];
  a3->var20 = [(SBHIconImageCache *)self->_iconImageCache numberOfUnmaskedCachedImages];
  a3->var21 = [(SBHIconImageCache *)self->_iconImageCache numberOfUnmaskedCacheHits];
  a3->var22 = [(SBHIconImageCache *)self->_iconImageCache numberOfUnmaskedCacheMisses];
  a3->var23 = [(SBFolderIconImageCache *)self->_folderIconImageCache numberOfCachedImages];
  a3->var24 = [(SBFolderIconImageCache *)self->_folderIconImageCache numberOfCacheHits];
  a3->var25 = [(SBFolderIconImageCache *)self->_folderIconImageCache numberOfCacheMisses];
  a3->var1 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__SBHIconManager_getStatistics___block_invoke;
  v5[3] = &__block_descriptor_40_e24_v24__0__SBIconView_8_B16l;
  v5[4] = a3;
  [(SBHIconManager *)self enumerateDisplayedIconViewsUsingBlock:v5];
}

- (NSString)statisticsSummary
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  [(SBHIconManager *)self getStatistics:&v4];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relayouts: %lu\nDisplayed icon views: %lu\nRecycled icon views: %lu\nIcon view recyclings: %lu\nRecycled icon accessory views: %lu\nIcon accessory view recyclings: %lu\nRecycled icon label accessory views: %lu\nIcon label accessory view recyclings: %lu\nRecycled icon image views: %lu\nIcon image view recyclings: %lu\nLabel cache live/hits/misses: %lu/%lu/%lu\nLegibility cache live/hits/misses: %lu/%lu/%lu\nImage cache live/hits/misses/main: %lu/%lu/%lu/%lu (unmasked: %lu/%lu/%lu)\nFolder image cache live/hits/misses: %lu/%lu/%lu", v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16];

  return v2;
}

- (SBHProactivePageSuggestionsManager)proactivePageSuggestionsManager
{
  proactivePageSuggestionsManager = self->_proactivePageSuggestionsManager;
  if (!proactivePageSuggestionsManager)
  {
    v4 = [[SBHProactivePageSuggestionsManager alloc] initWithIconManager:self];
    v5 = self->_proactivePageSuggestionsManager;
    self->_proactivePageSuggestionsManager = v4;

    proactivePageSuggestionsManager = self->_proactivePageSuggestionsManager;
  }

  return proactivePageSuggestionsManager;
}

- (id)_makeCustomViewControllerForWidgetIcon:(id)a3 dataSource:(id)a4 location:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 gridSizeClass];
  v12 = [(SBHIconManager *)self _makeCustomViewControllerForWidgetIcon:v10 dataSource:v9 location:v8 gridSizeClass:v11];

  return v12;
}

- (id)_makeCustomViewControllerForWidgetIcon:(id)a3 dataSource:(id)a4 location:(id)a5 gridSizeClass:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(SBHIconManager *)self delegate];
  v15 = objc_opt_self();
  v69 = v11;
  if (objc_opt_isKindOfClass())
  {
    v16 = v11;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v18 = [v17 kind];
  v19 = [v17 extensionBundleIdentifier];
  v20 = [v17 containerBundleIdentifier];
  v21 = [(SBHIconManager *)self gridSizeClassDomain];
  if (v17)
  {
    v22 = v18 == 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = v22 || v19 == 0;
  v70 = v21;
  v67 = v13;
  v68 = v12;
  v65 = v20;
  v66 = v18;
  if (v23)
  {
    v24 = v14;
    if (objc_opt_respondsToSelector())
    {
      v25 = v14;
      v26 = v69;
      v27 = [v25 iconManager:self viewControllerForCustomIcon:v10 element:v69];
    }

    else
    {
      v27 = 0;
      v26 = v69;
    }

    v28 = v70;
  }

  else
  {
    v29 = v21;
    v64 = 1;
    v63 = v10;
    v30 = [(SBHIconManager *)self _intentForWidget:v17 ofIcon:v10 creatingIfNecessary:1];
    v31 = [v29 chsWidgetFamilyForIconGridSizeClass:v13];
    v32 = v20;
    v33 = v31;
    v62 = v19;
    v60 = [objc_alloc(MEMORY[0x1E6994290]) initWithExtensionBundleIdentifier:v19 containerBundleIdentifier:v32 deviceIdentifier:0];
    v61 = v30;
    v34 = [objc_alloc(MEMORY[0x1E6994370]) initWithExtensionIdentity:v60 kind:v18 family:v33 intent:v30 activityIdentifier:0];
    v35 = [(SBHIconManager *)self metricsForCHSWidget:v34 inLocation:v12];
    v36 = [v12 isEqualToString:@"SBIconLocationAddWidgetSheet"];
    v37 = [v17 suggestionSource];
    v38 = SBIconLocationGroupContainsLocation(@"SBIconLocationGroupTodayView", v12);
    v24 = v14;
    v26 = v69;
    if ((v38 & 1) == 0)
    {
      if (objc_opt_respondsToSelector())
      {
        v64 = [v24 iconManagerWidgetsCanAppearInSecureEnvironment:self];
      }

      else
      {
        v64 = 0;
      }
    }

    if (v37 == 3)
    {
      v39 = 1;
    }

    else
    {
      v39 = v36;
    }

    v40 = [SBHWidgetViewController alloc];
    v41 = [v17 uniqueIdentifier];
    v27 = [(SBHWidgetViewController *)v40 initWithWidget:v34 metrics:v35 widgetConfigurationIdentifier:v41];

    aliveWidgetViewControllersHashTable = self->_aliveWidgetViewControllersHashTable;
    if (!aliveWidgetViewControllersHashTable)
    {
      v43 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v44 = self->_aliveWidgetViewControllersHashTable;
      self->_aliveWidgetViewControllersHashTable = v43;

      aliveWidgetViewControllersHashTable = self->_aliveWidgetViewControllersHashTable;
    }

    v59 = v35;
    [(NSHashTable *)aliveWidgetViewControllersHashTable addObject:v27];
    [(SBHWidgetViewController *)v27 setDelegate:self];
    [(SBHWidgetViewController *)v27 setContentType:v39];
    [(SBHWidgetViewController *)v27 setCanAppearInSecureEnvironment:v64];
    [(SBHWidgetViewController *)v27 setDrawSystemBackgroundMaterialIfNecessary:1];
    v45 = [(SBHIconManager *)self widgetExtensionProvider];
    [(SBHWidgetViewController *)v27 sbh_setWidgetExtensionProvider:v45];

    if (objc_opt_respondsToSelector())
    {
      [v24 iconManager:self configureColorSchemeForWidgetViewController:v27];
    }

    v19 = v62;
    v10 = v63;
    v28 = v70;
    if (objc_opt_respondsToSelector())
    {
      [v24 iconManager:self configureBackgroundViewPolicyForWidgetViewController:v27];
    }

    if (objc_opt_respondsToSelector())
    {
      v46 = [v24 iconManager:self customDisplayConfigurationForWidgetViewController:v27];
      [(SBHWidgetViewController *)v27 sbh_setCustomDisplayConfiguration:v46];

      v28 = v70;
    }

    [(SBHWidgetViewController *)v27 setShouldShareTouchesWithHost:1];
    if (v36)
    {
      v47 = 2;
    }

    else
    {
      v47 = 0;
    }

    [(SBHWidgetViewController *)v27 setVisibility:v47];
    if (!v61)
    {
      [(SBHIconManager *)self _loadAndSaveDefaultIntentIfNecessaryForWidget:v17 ofIcon:v63 viewController:v27];
    }
  }

  v48 = MEMORY[0x1E696AEC0];
  v49 = [v26 icon:v10 displayNameForLocation:@"SBIconLocationRoot"];
  v50 = [v48 stringWithFormat:@"widget:%@", v49];
  [(SBHWidgetViewController *)v27 setAccessibilityValue:v50];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v72 = 0;
    v73 = &v72;
    v74 = 0x2050000000;
    v51 = getAPUIAppPredictionViewControllerClass_softClass_0;
    v75 = getAPUIAppPredictionViewControllerClass_softClass_0;
    if (!getAPUIAppPredictionViewControllerClass_softClass_0)
    {
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __getAPUIAppPredictionViewControllerClass_block_invoke_0;
      v71[3] = &unk_1E8089848;
      v71[4] = &v72;
      __getAPUIAppPredictionViewControllerClass_block_invoke_0(v71);
      v51 = v73[3];
    }

    v52 = v51;
    _Block_object_dispose(&v72, 8);
    v53 = v27;
    if (v51)
    {
      if (objc_opt_isKindOfClass())
      {
        v54 = v53;
      }

      else
      {
        v54 = 0;
      }
    }

    else
    {
      v54 = 0;
    }

    v55 = v54;

    [(SBHIconManager *)self updateLargeIconsEnabledForAppPredictionViewController:v55 animated:0];
    v56 = [(SBHIconManager *)self _effectiveAppPredictionViewControllersForUniqueIdentifier];
    v57 = [v26 uniqueIdentifier];
    [v56 setObject:v55 forKey:v57];

    v28 = v70;
  }

  return v27;
}

- (void)updateWidgetViewControllersWithRenderScheme:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self _effectiveWidgetMultiplexingManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__SBHIconManager_updateWidgetViewControllersWithRenderScheme___block_invoke;
  v7[3] = &unk_1E8090238;
  v8 = v4;
  v6 = v4;
  [v5 enumerateAllViewControllersUsingBlock:v7];
}

void __62__SBHIconManager_updateWidgetViewControllersWithRenderScheme___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v7 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [v6 setRenderScheme:*(a1 + 32)];
}

- (void)updateWidgetViewControllersWithCustomDisplayConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self _effectiveWidgetMultiplexingManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__SBHIconManager_updateWidgetViewControllersWithCustomDisplayConfiguration___block_invoke;
  v7[3] = &unk_1E8090238;
  v8 = v4;
  v6 = v4;
  [v5 enumerateAllViewControllersUsingBlock:v7];
}

void __76__SBHIconManager_updateWidgetViewControllersWithCustomDisplayConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v7 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [v6 sbh_setCustomDisplayConfiguration:*(a1 + 32)];
}

- (void)_loadAndSaveDefaultIntentIfNecessaryForWidget:(id)a3 ofIcon:(id)a4 viewController:(id)a5
{
  v59 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  val = a5;
  v10 = [val widget];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  v13 = v12;
  v14 = [v13 extensionIdentity];
  v36 = [v14 extensionBundleIdentifier];

  v35 = [v13 kind];
  v15 = [(SBHIconManager *)self _intentForWidget:v8 ofIcon:v9 loadingFromArchiveIfNecessary:1 usingDefaultIntentIfNecessary:0];
  if (v15)
  {
    v16 = [(SBHIconManager *)self iconModel];
    v17 = [v16 widgetIcons];
    if ([v17 containsObject:v9])
    {
      v18 = [(SBHIconManager *)self _archivedIntentForDataSource:v8 inIcon:v9 loadingIfNecessary:1];

      if (!v18)
      {
        v19 = SBLogIcon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v54 = v36;
          v55 = 2112;
          v56 = v35;
          v57 = 2112;
          v58 = v15;
          _os_log_impl(&dword_1BEB18000, v19, OS_LOG_TYPE_DEFAULT, "Archiving intent that was missing from archive for widget (%@ - %@): %@", buf, 0x20u);
        }

        [(SBHIconManager *)self _archiveConfiguration:v15 forDataSource:v8 ofIcon:v9];
      }
    }

    else
    {
    }

    v24 = [v11 intentReference];
    v25 = [v24 intent];

    if (!v25 || (v26 = [v25 _indexingHash], v26 != objc_msgSend(v15, "_indexingHash")))
    {
      v27 = [v11 widgetByReplacingIntent:v15];
      [val setWidget:v27];
    }
  }

  else
  {
    objc_initWeak(&location, val);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __86__SBHIconManager__loadAndSaveDefaultIntentIfNecessaryForWidget_ofIcon_viewController___block_invoke;
    aBlock[3] = &unk_1E8090260;
    aBlock[4] = self;
    v20 = v13;
    v45 = v20;
    v21 = v36;
    v46 = v21;
    v22 = v35;
    v47 = v22;
    v32 = v9;
    v48 = v32;
    v31 = v8;
    v49 = v31;
    objc_copyWeak(&v51, &location);
    v50 = v11;
    v33 = _Block_copy(aBlock);
    v23 = [(SBHIconManager *)self widgetExtensionProvider];
    v34 = [v23 sbh_descriptorForWidgetIdentifiable:v20];

    if (v34)
    {
      v33[2](v33, v34, &__block_literal_global_605);
    }

    else
    {
      v28 = SBLogIcon();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v54 = v21;
        v55 = 2112;
        v56 = v22;
        v57 = 2112;
        v58 = 0;
        _os_log_impl(&dword_1BEB18000, v28, OS_LOG_TYPE_DEFAULT, "Missing intent and no descriptor intent found for widget: %@ - %@ - descriptor: %@", buf, 0x20u);
      }

      objc_initWeak(buf, self);
      pendingWidgetIntentConfigurationInitializations = self->_pendingWidgetIntentConfigurationInitializations;
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __86__SBHIconManager__loadAndSaveDefaultIntentIfNecessaryForWidget_ofIcon_viewController___block_invoke_606;
      v38[3] = &unk_1E8090288;
      objc_copyWeak(&v43, buf);
      v39 = v31;
      v40 = v32;
      v41 = v20;
      v42 = v33;
      v30 = _Block_copy(v38);
      [(NSMutableSet *)pendingWidgetIntentConfigurationInitializations addObject:v30];

      objc_destroyWeak(&v43);
      objc_destroyWeak(buf);
    }

    objc_destroyWeak(&v51);
    objc_destroyWeak(&location);
  }
}

void __86__SBHIconManager__loadAndSaveDefaultIntentIfNecessaryForWidget_ofIcon_viewController___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [*(a1 + 32) widgetExtensionProvider];
  v6 = [v5 sbh_descriptorForWidgetIdentifiable:*(a1 + 40)];

  v7 = [v6 defaultIntentReference];
  v8 = [v7 intent];

  v9 = SBLogIcon();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      v24 = 138412802;
      v25 = v11;
      v26 = 2112;
      v27 = v12;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "Default intent for widget (%@ - %@): %@", &v24, 0x20u);
    }

    v13 = [*(a1 + 32) iconModel];
    v14 = [v13 widgetIcons];
    v15 = [v14 containsObject:*(a1 + 64)];

    v16 = [*(a1 + 32) _archivedIntentForDataSource:*(a1 + 72) inIcon:*(a1 + 64) loadingIfNecessary:0];

    if (v15 && !v16)
    {
      v17 = SBLogIcon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 48);
        v19 = *(a1 + 56);
        v24 = 138412802;
        v25 = v18;
        v26 = 2112;
        v27 = v19;
        v28 = 2112;
        v29 = v8;
        _os_log_impl(&dword_1BEB18000, v17, OS_LOG_TYPE_DEFAULT, "Saving new default intent for widget (%@ - %@): %@", &v24, 0x20u);
      }

      [*(a1 + 32) _archiveConfiguration:v8 forDataSource:*(a1 + 72) ofIcon:*(a1 + 64)];
    }

    WeakRetained = objc_loadWeakRetained((a1 + 88));
    v21 = [WeakRetained widget];
    v22 = *(a1 + 80);

    if (v21 == v22)
    {
      v23 = [*(a1 + 80) widgetByReplacingIntent:v8];
      [WeakRetained setWidget:v23];
    }

    v4[2](v4, 1);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __86__SBHIconManager__loadAndSaveDefaultIntentIfNecessaryForWidget_ofIcon_viewController___block_invoke_cold_1();
    }

    v4[2](v4, 0);
  }
}

void __86__SBHIconManager__loadAndSaveDefaultIntentIfNecessaryForWidget_ofIcon_viewController___block_invoke_606(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    [*(a1 + 32) resetDisplayName];
    [*(a1 + 40) updateLabel];
    v4 = [WeakRetained widgetExtensionProvider];
    v5 = [v4 sbh_descriptorForWidgetIdentifiable:*(a1 + 48)];

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6[2](v6, 1);
  }
}

- (void)performAfterCachingWidgetIntentsUsingBlock:(id)a3
{
  v4 = a3;
  if ([(NSMutableSet *)self->_pendingWidgetIntentConfigurationInitializations count]|| [(NSMutableSet *)self->_activeWidgetIntentConfigurationInitializations count])
  {
    if (!self->_performAfterPendingWidgetIntentConfigurationBlocks)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      performAfterPendingWidgetIntentConfigurationBlocks = self->_performAfterPendingWidgetIntentConfigurationBlocks;
      self->_performAfterPendingWidgetIntentConfigurationBlocks = v5;
    }

    v7 = [v4 copy];
    v8 = self->_performAfterPendingWidgetIntentConfigurationBlocks;
    v9 = _Block_copy(v7);
    [(NSMutableArray *)v8 addObject:v9];

    if ([(NSMutableSet *)self->_pendingWidgetIntentConfigurationInitializations count])
    {
      [(SBHIconManager *)self _processPendingDefaultIntents];
    }

    v10 = dispatch_time(0, 30000000000);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__SBHIconManager_performAfterCachingWidgetIntentsUsingBlock___block_invoke;
    v12[3] = &unk_1E8088D68;
    v12[4] = self;
    v13 = v7;
    v11 = v7;
    dispatch_after(v10, MEMORY[0x1E69E96A0], v12);
  }

  else
  {
    v4[2](v4);
  }
}

void __61__SBHIconManager_performAfterCachingWidgetIntentsUsingBlock___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 272);
  v3 = _Block_copy(*(a1 + 40));
  LODWORD(v2) = [v2 containsObject:v3];

  if (v2)
  {
    v4 = *(*(a1 + 32) + 272);
    v5 = _Block_copy(*(a1 + 40));
    [v4 removeObject:v5];

    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

- (id)_newIntentForDataSource:(id)a3 inIcon:(id)a4 loadingFromArchiveIfNecessary:(BOOL)a5 usingDefaultIntentIfNecessary:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = [(SBHIconManager *)self _archivedIntentForDataSource:v10 inIcon:v11 loadingIfNecessary:v7];
  if (!v12 && v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [(SBHIconManager *)self widgetExtensionProvider];
      v14 = [v13 sbh_descriptorForWidgetIdentifiable:v10];

      v15 = [v14 defaultIntentReference];
      v12 = [v15 intent];

      v16 = SBLogWidgetIntent();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [SBHIconManager _newIntentForDataSource:v11 inIcon:v16 loadingFromArchiveIfNecessary:? usingDefaultIntentIfNecessary:?];
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)_intentForDataSource:(id)a3 inIcon:(id)a4 loadingFromArchiveIfNecessary:(BOOL)a5 usingDefaultIntentIfNecessary:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  if (objc_opt_respondsToSelector())
  {
    v12 = [v10 uniqueIdentifier];
    if (v12)
    {
      v13 = [(NSMutableDictionary *)self->_widgetIntents objectForKey:v12];
      if (v13)
      {
        v14 = v13;
        goto LABEL_13;
      }

      v15 = 1;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
    v12 = 0;
  }

  v16 = [(SBHIconManager *)self _newIntentForDataSource:v10 inIcon:v11 loadingFromArchiveIfNecessary:v7 usingDefaultIntentIfNecessary:v6];
  v14 = v16;
  if (v15 && v16)
  {
    widgetIntents = self->_widgetIntents;
    if (!widgetIntents)
    {
      v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v19 = self->_widgetIntents;
      self->_widgetIntents = v18;

      widgetIntents = self->_widgetIntents;
    }

    [(NSMutableDictionary *)widgetIntents setObject:v14 forKey:v12];
  }

LABEL_13:

  return v14;
}

- (id)_archivedIntentForDataSource:(id)a3 inIcon:(id)a4 loadingIfNecessary:(BOOL)a5
{
  v5 = a5;
  v52 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v11 = 0;
    v10 = 0;
LABEL_7:
    v12 = 0;
LABEL_8:
    if (!v5)
    {
      goto LABEL_23;
    }

    v13 = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v14 = [v13 iconManager:self configurationDataForDataSource:v8 ofIcon:v9];
      if (v14)
      {
        v15 = v14;
        v16 = MEMORY[0x1E696ACD0];
        v17 = objc_opt_self();
        v43 = 0;
        v11 = [v16 unarchivedObjectOfClass:v17 fromData:v15 error:&v43];
        v18 = v43;

        v19 = SBLogWidgetIntent();
        v20 = v19;
        if (v11)
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v11 _indexingHash];
            *buf = 134218242;
            v45 = v21;
            v46 = 2114;
            v47 = v15;
            _os_log_impl(&dword_1BEB18000, v20, OS_LOG_TYPE_DEFAULT, "Successfully unarchived widget intent '%llu' from %{public}@", buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          [SBHIconManager _archivedIntentForDataSource:inIcon:loadingIfNecessary:];
        }

        v42 = v18;

        v29 = objc_opt_class();
        v30 = v8;
        if (v29)
        {
          if (objc_opt_isKindOfClass())
          {
            v31 = v30;
          }

          else
          {
            v31 = 0;
          }
        }

        else
        {
          v31 = 0;
        }

        v32 = v31;

        v33 = [v32 extensionBundleIdentifier];

        if ([v33 isEqualToString:@"com.apple.mobilecal.CalendarWidgetExtension"])
        {
          v41 = v15;
          v34 = [v11 _className];
          v35 = [v34 isEqualToString:@"CalendarSpatialWidgetIntent"];

          if ((v35 & 1) == 0)
          {
            v15 = v41;
            v36 = v42;
            goto LABEL_38;
          }

          v33 = v11;
          v11 = 0;
          v15 = v41;
        }

        v36 = v42;

LABEL_38:
        v37 = v12 ^ 1;
        if (!v11)
        {
          v37 = 1;
        }

        if ((v37 & 1) == 0)
        {
          archivedWidgetIntents = self->_archivedWidgetIntents;
          if (!archivedWidgetIntents)
          {
            v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v40 = self->_archivedWidgetIntents;
            self->_archivedWidgetIntents = v39;

            archivedWidgetIntents = self->_archivedWidgetIntents;
          }

          [(NSMutableDictionary *)archivedWidgetIntents setObject:v11 forKey:v10];
        }

        goto LABEL_22;
      }

      if (__sb__runningInSpringBoard())
      {
        v22 = SBLogWidgetIntent();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v9 applicationBundleID];
          v24 = [v9 activeDataSource];
          v25 = SBHConfigurationIdentifierFromDataSource(v24);
          v26 = [v9 activeDataSource];
          v27 = SBHUniqueIdentifierOfDataSource(v26);
          *buf = 138544130;
          v45 = v9;
          v46 = 2114;
          v47 = v23;
          v48 = 2114;
          v49 = v25;
          v50 = 2114;
          v51 = v27;
          _os_log_impl(&dword_1BEB18000, v22, OS_LOG_TYPE_DEFAULT, "Archived widget intent data not found for icon: %{public}@, bundleID=%{public}@, storageIdentifier: %{public}@, dataSourceUniqueIdentifier: %{public}@", buf, 0x2Au);
        }

LABEL_17:
      }
    }

    else if (__sb__runningInSpringBoard())
    {
      v22 = SBLogWidgetIntent();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        [SBHIconManager _archivedIntentForDataSource:inIcon:loadingIfNecessary:];
      }

      goto LABEL_17;
    }

    v11 = 0;
LABEL_22:

    goto LABEL_23;
  }

  v10 = [v8 uniqueIdentifier];
  if (!v10)
  {
    v11 = 0;
    goto LABEL_7;
  }

  v11 = [(NSMutableDictionary *)self->_archivedWidgetIntents objectForKey:v10];
  v12 = 1;
  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_23:

  return v11;
}

- (id)_stackConfigurationForStackIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self _alwaysPresentStackConfigurationSheet];
  if (([v4 isWidgetStackIcon] & 1) != 0 || v5)
  {
    v6 = objc_alloc_init(SBHStackConfiguration);
    -[SBHStackConfiguration setAllowsSuggestions:](v6, "setAllowsSuggestions:", [v4 allowsSuggestions]);
    -[SBHStackConfiguration setAllowsExternalSuggestions:](v6, "setAllowsExternalSuggestions:", [v4 allowsExternalSuggestions]);
    v7 = [v4 iconDataSources];
    [(SBHStackConfiguration *)v6 setDataSources:v7];

    v8 = [v4 gridSizeClass];
    [(SBHStackConfiguration *)v6 setSizeClass:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)validatedWidgetIconForWidgetIcon:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 gridSizeClass];
  v6 = [v4 widgets];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v30;
    *&v8 = 138412546;
    v23 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        if (![(SBHIconManager *)self isWidgetValid:v12 iconSizeClass:v5, v23])
        {
          v13 = SBLogWidgets();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v23;
            v35 = v12;
            v36 = 2112;
            v37 = v4;
            _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_DEFAULT, "Removing iconDataSource:%@ from widgetIcon:%@ as it is no longer valid", buf, 0x16u);
          }

          [v4 removeIconDataSource:v12];
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v9);
  }

  v14 = [v4 iconDataSourcesOfClass:objc_opt_class()];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v15)
  {
    v17 = v15;
    v18 = *v26;
    *&v16 = 138412546;
    v24 = v16;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v25 + 1) + 8 * j);
        if (![(SBHIconManager *)self isCustomIconElementValid:v20, v24])
        {
          v21 = SBLogWidgets();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v24;
            v35 = v20;
            v36 = 2112;
            v37 = v4;
            _os_log_impl(&dword_1BEB18000, v21, OS_LOG_TYPE_DEFAULT, "Removing iconDataSource:%@ from widgetIcon:%@ as it is no longer valid", buf, 0x16u);
          }

          [v4 removeIconDataSource:v20];
        }
      }

      v17 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v17);
  }

  return v4;
}

- (BOOL)isCustomIconElementValid:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 containerBundleIdentifier];
  v5 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:v4];
  if (([v5 isLocked] & 1) != 0 || objc_msgSend(v5, "isHidden"))
  {
    v6 = SBLogWidgets();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "Application is locked or hidden; fakeWidget is invalid: %@", &v9, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)isWidgetValid:(id)a3 iconSizeClass:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(SBHIconManager *)self widgetExtensionProvider];
  v9 = [v8 sbh_descriptorForWidgetIdentifiable:v6];
  v10 = [(SBHIconManager *)self delegate];
  v11 = [(SBHIconManager *)self gridSizeClassDomain];
  if (v9)
  {
    v25 = v10;
    v12 = -[SBHIconGridSizeClassSet initWithCHSWidgetFamilyMask:inDomain:]([SBHIconGridSizeClassSet alloc], "initWithCHSWidgetFamilyMask:inDomain:", [v9 supportedFamilies], v11);
    LODWORD(v13) = [(SBHIconGridSizeClassSet *)v12 containsGridSizeClass:v7];
    if ((v13 & 1) == 0)
    {
      v14 = SBLogWidgets();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v6;
        _os_log_impl(&dword_1BEB18000, v14, OS_LOG_TYPE_DEFAULT, "Icon size class no longer supported for widget; removing widget: %@", buf, 0xCu);
      }
    }

    v15 = v6;
    v16 = v8;
    v17 = v11;
    v18 = v7;
    v19 = [v9 extensionIdentity];
    v20 = [v19 containerBundleIdentifier];

    if (objc_opt_respondsToSelector())
    {
      v21 = [v25 iconManager:self containerBundleIdentifierForDescriptor:v9];

      v20 = v21;
    }

    v22 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:v20];
    v23 = v22;
    v7 = v18;
    if (v13)
    {
      v11 = v17;
      if (([v22 isLocked] & 1) != 0 || objc_msgSend(v23, "isHidden"))
      {
        v13 = SBLogWidgets();
        v8 = v16;
        v6 = v15;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v27 = v15;
          _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_DEFAULT, "Icon is locked or hidden; removing widget: %@", buf, 0xCu);
        }

        LOBYTE(v13) = 0;
        goto LABEL_21;
      }

      LOBYTE(v13) = 1;
    }

    else
    {
      v11 = v17;
    }

    v8 = v16;
    v6 = v15;
LABEL_21:
    v10 = v25;

    goto LABEL_25;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v10 iconManager:self isWidgetValid:v6])
  {
    v12 = SBLogWidgets();
    if (os_log_type_enabled(&v12->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v6;
      _os_log_impl(&dword_1BEB18000, &v12->super, OS_LOG_TYPE_DEFAULT, "No widget descriptor found for widget, but delegate says to keep it: %@", buf, 0xCu);
    }

    LOBYTE(v13) = 1;
  }

  else
  {
    v12 = SBLogWidgets();
    if (os_log_type_enabled(&v12->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v6;
      _os_log_impl(&dword_1BEB18000, &v12->super, OS_LOG_TYPE_DEFAULT, "No widget descriptor found for widget; removing widget: %@", buf, 0xCu);
    }

    LOBYTE(v13) = 0;
  }

LABEL_25:

  return v13;
}

- (void)checkForInvalidWidgets
{
  v19 = *MEMORY[0x1E69E9840];
  v11 = [(SBHIconManager *)self iconModel];
  v3 = [v11 widgetIcons];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [(SBHIconManager *)self validatedWidgetIconForWidgetIcon:v8];
        if (![v9 iconDataSourceCount])
        {
          v10 = SBLogWidgets();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v17 = v8;
            _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "Last data source removed for widget icon; removing icon: %@", buf, 0xCu);
          }

          [(SBHIconManager *)self removeIcon:v8 options:1 completion:0];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v5);
  }
}

- (void)_validateAndRepairIntentsForConfigurableWidgets
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = SBLogWidgets();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_DEFAULT, "validating/repairing intents for configurable widgets", buf, 2u);
  }

  v26 = [(SBHIconManager *)self iconModel];
  [v26 widgetIcons];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v34 = 0u;
  v4 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v32;
    v27 = *v32;
    do
    {
      v7 = 0;
      v28 = v5;
      do
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * v7);
        v9 = [v8 activeWidget];
        v10 = v9;
        if (v9)
        {
          v11 = [v9 uniqueIdentifier];
          v12 = [(SBHIconManager *)self _effectiveWidgetMultiplexingManager];
          v30 = v11;
          v13 = [v12 viewControllerForIdentifier:v11];

          v14 = objc_opt_class();
          v15 = v13;
          if (v14)
          {
            if (objc_opt_isKindOfClass())
            {
              v16 = v15;
            }

            else
            {
              v16 = 0;
            }
          }

          else
          {
            v16 = 0;
          }

          v17 = v16;

          if (v17)
          {
            v18 = [v17 widget];
            v19 = v18;
            if (v18)
            {
              v20 = v18;
            }

            else
            {
              v20 = v10;
            }

            v21 = v20;
            [(SBHIconManager *)self widgetExtensionProvider];
            v23 = v22 = self;
            v24 = [v23 sbh_descriptorForWidgetIdentifiable:v21];

            v25 = [v24 intentType];

            if (v25)
            {
              [(SBHIconManager *)v22 _loadAndSaveDefaultIntentIfNecessaryForWidget:v10 ofIcon:v8 viewController:v17];
            }

            self = v22;
            v6 = v27;
            v5 = v28;
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v5);
  }
}

- (void)checkForInvalidCustomElements
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (id)metricsForCHSWidget:(id)a3 inLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBHIconManager *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v8 iconManager:self metricsForCHSWidget:v6 inLocation:v7], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v10 = [(SBHIconManager *)self widgetMetricsProvider];
    v9 = [v10 systemMetricsForWidget:v6];
  }

  return v9;
}

- (void)widgetHostViewController:(id)a3 requestsLaunch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBHIconManager *)self _effectiveWidgetMultiplexingManager];
  v9 = [v8 activeMultiplexingViewControllerForViewController:v6];

  v10 = [(NSMapTable *)self->_iconViewsForWidgetMultiplexingViewController objectForKey:v9];
  if (([v10 isShowingContextMenu] & 1) == 0 && !-[SBHIconManager isEditing](self, "isEditing"))
  {
    v11 = [(SBHIconManager *)self currentStylePickerViewController];

    if (!v11)
    {
      v12 = [v10 icon];
      v13 = objc_opt_class();
      v14 = v12;
      if (v13)
      {
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      v17 = [v16 activeWidget];
      if (!v17)
      {
        goto LABEL_45;
      }

      [v6 widget];
      v18 = v49 = v16;
      v19 = [v18 extensionIdentity];
      [v19 extensionBundleIdentifier];
      v20 = v50 = v17;
      v21 = [v50 extensionBundleIdentifier];
      v22 = [v20 isEqualToString:v21];

      v17 = v50;
      v16 = v49;
      if (!v22)
      {
        goto LABEL_45;
      }

      v23 = [(SBHIconManager *)self delegate];
      v24 = [v50 extensionBundleIdentifier];
      if (objc_opt_respondsToSelector())
      {
        v51 = 0;
        v25 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:v24 error:&v51];
        v26 = v51;
        if (!v25)
        {
          v27 = SBLogWidgets();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            [SBHIconManager widgetHostViewController:requestsLaunch:];
          }
        }

        v47 = v26;
        v28 = [v25 containingBundleRecord];
        v29 = v28;
        if (v25 && !v28)
        {
          v30 = SBLogWidgets();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [SBHIconManager widgetHostViewController:requestsLaunch:];
          }
        }

        v31 = [v29 bundleIdentifier];
        if (v31)
        {
          v45 = [v23 iconManager:self isIconVisibleForBundleIdentifier:v31];
        }

        else
        {
          v45 = 0;
        }

        v17 = v50;
      }

      else
      {
        v45 = 0;
      }

      v32 = [v7 action];
      [v7 url];
      v48 = v46 = v24;
      if (v48)
      {
        v33 = [v17 containerBundleIdentifier];
        if ([v33 isEqualToString:@"com.apple.PeopleViewService"])
        {
          v34 = [(SBHHomeScreenSettings *)self->_homeScreenSettings widgetSettings];
          [v34 personDetailInteractionSettings];
          v35 = v32;
          v37 = v36 = v23;
          v43 = [v37 usesCardStyle];

          v23 = v36;
          v32 = v35;

          if (v43)
          {
            v38 = [(SBHIconManager *)self _personDetailInteractionContextForPersonURL:v48 iconView:v10];
            v39 = [[SBHPeopleWidgetPersonDetailInteraction alloc] initWithInteractionContext:v38];
            [(SBHPeopleWidgetPersonDetailInteraction *)v39 setModalInteractionDelegate:self];
            [(SBHPeopleWidgetPersonDetailInteraction *)v39 beginInteractionAnimated:1];

            v17 = v50;
LABEL_44:

            v16 = v49;
            [(SBHHomeScreenUsageMonitor *)self->_usageMonitor noteUserTappedWidgetIcon:v49 withURL:v48];

LABEL_45:
            goto LABEL_46;
          }
        }

        else
        {
        }

        if (objc_opt_respondsToSelector())
        {
          v38 = [v23 iconManager:self bundleIdentifierToLaunchForWidgetURL:v48];
          v17 = v50;
          if (v38)
          {
            v44 = v23;
            v40 = [v50 containerBundleIdentifier];
            v41 = [v38 isEqualToString:v40];

            if (((v45 | v41) & 1) != 0 || ![v7 isEntitledToOpenSystemProcesses])
            {
              v23 = v44;
            }

            else
            {
              v23 = v44;
              if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
              {
                if (objc_opt_respondsToSelector())
                {
                  [v44 iconManager:self iconView:v10 widgetWantsLaunchForBundleIdentifier:v38 withAction:v32];
                }

                else if (objc_opt_respondsToSelector())
                {
                  [v44 iconManager:self widgetWantsLaunchForBundleIdentifier:v38 withAction:v32];
                }

                else
                {
                  [v44 iconManager:self wantsLaunchForWidgetURL:v48];
                }

                goto LABEL_44;
              }
            }
          }
        }

        else
        {
          v38 = 0;
          v17 = v50;
        }
      }

      else
      {
        v38 = 0;
      }

      [(SBHIconManager *)self highlightIconView:v10];
      v42 = [MEMORY[0x1E695DFD8] setWithObject:v32];
      [(SBHIconManager *)self launchFromIconView:v10 withActions:v42 modifierFlags:0];

      goto LABEL_44;
    }
  }

LABEL_46:
}

- (void)widgetHostViewControllerUsesSystemBackgroundMaterialDidChange:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self _effectiveWidgetMultiplexingManager];
  v15 = [v5 activeMultiplexingViewControllerForViewController:v4];

  v6 = [(NSMapTable *)self->_iconViewsForWidgetMultiplexingViewController objectForKey:v15];
  v7 = [(NSMapTable *)self->_widgetViewControllersForIconView objectForKey:v6];
  if (v7)
  {
    v8 = [v6 icon];
    v9 = [(SBFolder *)self->_rootFolder indexPathForIcon:v8];
    v10 = [(SBHIconManager *)self iconListViewForIndexPath:v9];
    [v10 _insertOrRemoveCaptureOnlyBackgroundViewIfNecessaryForIconView:v6];
    v11 = objc_opt_class();
    v12 = v7;
    if (v11)
    {
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    [v14 evaluateBackground];
  }
}

- (BOOL)_determineIfAvocadoHostViewControllerIsVisible:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__SBHIconManager__determineIfAvocadoHostViewControllerIsVisible___block_invoke;
  aBlock[3] = &unk_1E80902B0;
  aBlock[4] = self;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  v6 = _Block_copy(aBlock);
  [(SBHIconManager *)self enumerateDisplayedIconViewsUsingBlock:v6];
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

uint64_t __65__SBHIconManager__determineIfAvocadoHostViewControllerIsVisible___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 customIconImageViewController];
  v6 = v5;
  if (v5)
  {
    v8 = v5;
    v5 = [v5 sbh_isWidgetStackViewController];
    v6 = v8;
    if (v5)
    {
      v5 = [*(a1 + 32) _determineIfAvocadoHostViewControllerIsVisible:*(a1 + 40) withinStackViewController:v8];
      v6 = v8;
      if (v5)
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
        *a3 = 1;
      }
    }
  }

  return MEMORY[0x1EEE66BB8](v5, v6);
}

- (BOOL)_determineIfAvocadoHostViewControllerIsVisible:(id)a3 withinStackViewController:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [a4 widgetViewControllers];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 multiplexedViewController];

        if (v11 == v5)
        {
          LOBYTE(v7) = [v10 bs_isAppearingOrAppeared];
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)multiplexingManager:(id)a3 willRemoveViewController:(id)a4 forIdentifier:(id)a5
{
  v10 = a4;
  v7 = a5;
  if ([v10 sbh_isWidgetHostViewController])
  {
    v8 = v10;
    [v8 setPresentationMode:1];
    [v8 invalidate];
  }

  v9 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 iconManager:self willRemoveViewControllerForIdentifier:v7];
  }
}

- (BOOL)multiplexingManager:(id)a3 shouldCacheRecentViewController:(id)a4 forIdentifier:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  if ([v8 hasSuffix:@":Preview"])
  {
    v9 = 0;
  }

  else
  {
    v10 = [(SBHIconManager *)self iconModel];
    v11 = [v10 widgetIconsContainingWidgetsMatchingUniqueIdentifier:v8];
    if ([v11 count])
    {
      v12 = [(SBHIconManager *)self delegate];
      if ((objc_opt_respondsToSelector() & 1) != 0 && ![v12 iconManager:self shouldCacheRecentViewController:v7 forIdentifier:v8])
      {
        v16 = SBLogWidgetCleanup();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138543362;
          v19 = v7;
          _os_log_impl(&dword_1BEB18000, v16, OS_LOG_TYPE_DEFAULT, "Discarding %{public}@; will not cache", &v18, 0xCu);
        }

        v9 = 0;
      }

      else
      {
        v13 = [v7 bs_isAppearingOrAppeared];
        v14 = SBLogWidgetCleanup();
        v15 = v14;
        if (v13)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [SBHIconManager multiplexingManager:shouldCacheRecentViewController:forIdentifier:];
          }

          [v7 bs_beginAppearanceTransition:0 animated:0];
          [v7 bs_endAppearanceTransition];
        }

        else
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v18 = 138543362;
            v19 = v7;
            _os_log_impl(&dword_1BEB18000, v15, OS_LOG_TYPE_DEFAULT, "Choosing to cache widget %{public}@ ", &v18, 0xCu);
          }
        }

        v9 = 1;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)multiplexingManager:(id)a3 cachedRecentViewController:(id)a4 forIdentifier:(id)a5
{
  v5 = a4;
  if ([v5 sbh_isWidgetHostViewController])
  {
    [v5 setPresentationMode:1];
  }
}

- (id)_multiplexingViewControllerForIcon:(id)a3 dataSource:(id)a4 location:(id)a5 withPriority:(unint64_t)a6
{
  v25 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v11 uniqueIdentifier];
  v14 = v13;
  v15 = 0;
  if (v10 && v11 && v13)
  {
    v16 = [(SBHIconManager *)self _effectiveWidgetMultiplexingManager];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 isEqualToString:@"SBIconLocationAddWidgetSheet"])
    {
      v17 = [v14 stringByAppendingString:@":Preview"];

      v14 = v17;
    }

    if (([v16 hasViewControllerForIdentifier:v14] & 1) == 0)
    {
      v18 = SBLogIcon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v21 = 138412546;
        v22 = v10;
        v23 = 2112;
        v24 = v11;
        _os_log_impl(&dword_1BEB18000, v18, OS_LOG_TYPE_INFO, "Creating new view controller for icon: %@, data source: %@", &v21, 0x16u);
      }

      v19 = [(SBHIconManager *)self _makeCustomViewControllerForWidgetIcon:v10 dataSource:v11 location:v12];
      [v16 setViewController:v19 forIdentifier:v14];
    }

    v15 = [v16 newMultiplexingViewControllerForIdentifier:v14 atLevel:a6];
  }

  return v15;
}

- (id)widgetStackViewController:(id)a3 viewControllerForDataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 widgetIcon];
  v9 = [(NSMapTable *)self->_iconViewsForCustomIconImageViewController objectForKey:v6];
  if (v9)
  {
    goto LABEL_2;
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [v6 host];
    v12 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      if (v9)
      {
LABEL_2:
        v10 = [v9 location];
        v11 = [v9 customIconImageViewControllerPriority];
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  NSLog(&cfstr_MissingIconvie.isa);
  v10 = @"SBIconLocationRoot";
  v9 = 0;
  v11 = 0;
LABEL_9:
  v14 = [(SBHIconManager *)self _multiplexingViewControllerForIcon:v8 dataSource:v7 location:v10 withPriority:v11];

  [(SBHIconManager *)self _updateWidgetMultiplexingViewController:v14 forIconView:v9];

  return v14;
}

- (id)widgetStackViewController:(id)a3 containerApplicationNameForDataSource:(id)a4
{
  v5 = [(SBHIconManager *)self containerBundleIdentifierForDataSource:a4];
  if (v5)
  {
    v6 = [(SBHIconManager *)self applicationWithBundleIdentifier:v5];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 displayName];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)widgetStackViewController:(id)a3 isDataSourceBlockedForScreenTimeExpiration:(id)a4
{
  v5 = [(SBHIconManager *)self containerBundleIdentifierForDataSource:a4];
  if (v5)
  {
    v6 = [(SBHIconManager *)self iconModel];
    v7 = [(SBHIconManager *)self delegate];
    v8 = [v6 applicationIconForBundleIdentifier:v5];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 isTimedOut];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v11 = 0;
        goto LABEL_8;
      }

      v10 = [v7 iconManager:self isTimedOutForDataSourceContainerBundleIdentifier:v5];
    }

    v11 = v10;
LABEL_8:

    goto LABEL_9;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (void)widgetStackViewController:(id)a3 didActivateDataSource:(id)a4 fromUserInteraction:(BOOL)a5
{
  v5 = a5;
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v8 widgetIcon];
  v11 = v10;
  if (v9 && ([v10 hasIconDataSource:v9] & 1) == 0)
  {
    v14 = SBLogIcon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SBHIconManager widgetStackViewController:v9 didActivateDataSource:v11 fromUserInteraction:v14];
    }
  }

  else
  {
    if (v5)
    {
      [v11 setStackChangeReason:1];
      [v11 setLastUserSelectedDataSource:v9];
      v12 = SBLogIcon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v11 uniqueIdentifier];
        v15 = 138412546;
        v16 = v9;
        v17 = 2112;
        v18 = v13;
        _os_log_impl(&dword_1BEB18000, v12, OS_LOG_TYPE_DEFAULT, "Activating data source due to user scroll and setting last user selected data source: %@ for: %@", &v15, 0x16u);
      }
    }

    else
    {
      [v11 setStackChangeReason:5];
      v12 = SBLogIcon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_1BEB18000, v12, OS_LOG_TYPE_DEFAULT, "Activating data source due to other scroll view interaction", &v15, 2u);
      }
    }

    [v11 setActiveDataSource:v9];
    [(SBHIconManager *)self _updateCaptureOnlyBackgroundViewForCustomIconImageViewController:v8];
  }
}

- (void)widgetStackViewController:(id)a3 didRemoveViewController:(id)a4
{
  v6 = a4;
  v5 = [(SBHIconManager *)self _effectiveWidgetMultiplexingManager];
  [v5 discardMultiplexingViewController:v6];

  [(NSMapTable *)self->_iconViewsForWidgetMultiplexingViewController removeObjectForKey:v6];
}

- (void)widgetStackViewController:(id)a3 didFinishUsingBackgroundView:(id)a4
{
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SBHIconManager *)self widgetBackgroundViewMap];
    [v5 recycleView:v6];
  }
}

- (BOOL)widgetStackViewControllerCanFlashPageControl:(id)a3
{
  v4 = a3;
  if ([(SBHIconManager *)self limitsWidgetStackPageControlFlashesToSession])
  {
    v5 = [v4 widgetIcon];
    v6 = [v5 uniqueIdentifier];
    if (v6)
    {
      v7 = [(NSMutableSet *)self->_widgetIconIdentifiersForPageControlFlashes containsObject:v6]^ 1;
    }

    else
    {
      LOBYTE(v7) = 1;
    }
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (void)widgetStackViewControllerDidFlashPageControl:(id)a3
{
  v8 = [a3 widgetIcon];
  v4 = [v8 uniqueIdentifier];
  if (v4)
  {
    widgetIconIdentifiersForPageControlFlashes = self->_widgetIconIdentifiersForPageControlFlashes;
    if (!widgetIconIdentifiersForPageControlFlashes)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v7 = self->_widgetIconIdentifiersForPageControlFlashes;
      self->_widgetIconIdentifiersForPageControlFlashes = v6;

      widgetIconIdentifiersForPageControlFlashes = self->_widgetIconIdentifiersForPageControlFlashes;
    }

    [(NSMutableSet *)widgetIconIdentifiersForPageControlFlashes addObject:v4];
  }
}

- (void)multiplexingWrapperViewControllerWillChangeGridAlignment:(id)a3
{
  v4 = a3;
  if (([v4 isGridAligned] & 1) == 0)
  {
    [(SBHIconManager *)self _updateCaptureOnlyBackgroundViewForCustomIconImageViewController:v4];
  }
}

- (void)multiplexingWrapperViewControllerDidChangeGridAlignment:(id)a3
{
  v4 = a3;
  if (([v4 isGridAligned] & 1) == 0)
  {
    [(SBHIconManager *)self _updateCaptureOnlyBackgroundViewForCustomIconImageViewController:v4];
  }
}

- (void)_updateCaptureOnlyBackgroundViewForCustomIconImageViewController:(id)a3
{
  v10 = a3;
  v4 = objc_opt_respondsToSelector();
  v5 = v10;
  if (v4)
  {
    v6 = [v10 icon];
    v7 = [(SBFolder *)self->_rootFolder indexPathForIcon:v6];
    v8 = [(SBHIconManager *)self iconListViewForIndexPath:v7];
    if ([v8 containsIcon:v6])
    {
      v9 = [(NSMapTable *)self->_iconViewsForCustomIconImageViewController objectForKey:v10];
      if (v9)
      {
        [v8 _insertOrRemoveCaptureOnlyBackgroundViewIfNecessaryForIconView:v9];
      }
    }

    v5 = v10;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)iconTouchBegan:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(SBHIconManager *)self _addTouchedIconView:v4];
  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "Icon touch began: %@", &v11, 0xCu);
  }

  v6 = [v4 icon];
  v7 = [(SBHIconManager *)self delegate];
  if ([(SBHIconManager *)self shouldHighlightTouchedIconView:v4])
  {
    [(SBHIconManager *)self highlightIconView:v4];
  }

  v8 = [(SBHIconManager *)self reasonToDisallowTapOnIconView:v4];
  if (v8)
  {
    v9 = SBLogIcon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_DEFAULT, "Icon tap not allowed because %@: %@", &v11, 0x16u);
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [v7 iconManager:self possibleUserIconTapBegan:v4];
    }

    v10 = mach_absolute_time();
    [v6 possibleUserTapBeganWithAbsoluteTime:v10 andContinuousTime:mach_continuous_time()];
    if (objc_opt_respondsToSelector())
    {
      [v7 iconManager:self possibleUserIconTapBeganAfterInformingIcon:v4];
    }
  }
}

- (void)icon:(id)a3 touchEnded:(BOOL)a4
{
  v4 = a4;
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(SBHIconManager *)self _removeTouchedIconView:v6];
  v7 = SBLogIcon();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v8)
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_DEFAULT, "Icon touch canceled (tap gesture may still succeed): %@", &v11, 0xCu);
    }

    v7 = [v6 icon];
    [v7 possibleUserTapDidCancel];
  }

  else if (v8)
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_DEFAULT, "Icon touch ended: %@", &v11, 0xCu);
  }

  v9 = [(SBHIconManager *)self iconEditingFeedbackBehavior];
  if ([v9 isActive])
  {
    [v9 deactivate];
  }

  v10 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 iconManager:self touchesEndedForIconView:v6];
  }
}

- (BOOL)iconShouldAllowTap:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBHIconManager *)self reasonToDisallowTapOnIconView:v4];
  v6 = [v4 icon];

  v7 = SBLogIcon();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v8)
    {
      v9 = [v6 uniqueIdentifier];
      v14 = 138412546;
      v15 = v9;
      v16 = 2114;
      v17 = v5;
      v10 = "Disallowing tap for icon view '%@' for reason '%{public}@'";
      v11 = v7;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, v10, &v14, v12);
    }
  }

  else if (v8)
  {
    v9 = [v6 uniqueIdentifier];
    v14 = 138412290;
    v15 = v9;
    v10 = "Allowing tap for icon view '%@'";
    v11 = v7;
    v12 = 12;
    goto LABEL_6;
  }

  return v5 == 0;
}

- (id)reasonToDisallowTapOnIconView:(id)a3
{
  v4 = a3;
  v5 = [v4 icon];
  v6 = [v5 isWidgetIcon];
  if (-[SBHIconManager isEditing](self, "isEditing") && !(v6 & 1 | (([v5 isLeafIcon] & 1) == 0)))
  {
    v7 = @"editing";
    goto LABEL_27;
  }

  if ([v4 isGrabbed])
  {
    v7 = @"icon is grabbed";
    goto LABEL_27;
  }

  if ([v5 isFolderIcon] && !-[SBHIconManager canOpenFolderForIcon:](self, "canOpenFolderForIcon:", v5))
  {
    v7 = @"can't open folder icon";
  }

  else
  {
    v8 = [(SBHIconManager *)self iconDragManager];
    v9 = [v8 isTrackingDroppingIconDrags];

    if (v9)
    {
      v7 = @"tracking dropping icon drags";
      goto LABEL_27;
    }

    v10 = [(SBHIconManager *)self iconDragManager];
    if ([v10 isTrackingUserActiveIconDrags])
    {
      v11 = [v5 isWidgetIcon];

      if (v11)
      {
        v7 = @"can't open widget while dragging";
        goto LABEL_27;
      }
    }

    else
    {
    }

    if (([v5 isLaunchEnabled] & 1) != 0 || -[SBHIconManager isEditing](self, "isEditing") && objc_msgSend(v5, "isWidgetStackIcon"))
    {
      v12 = objc_opt_self();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v7 = @"placeholder";
      }

      else if ([(SBHIconManager *)self isDismissingMenuForFolderPresentation])
      {
        v7 = @"dismissing menu for folder";
      }

      else
      {
        v14 = [(SBHIconManager *)self delegate];
        if ((objc_opt_respondsToSelector() & 1) == 0 || ([v14 iconManager:self reasonToDisallowTapOnIconView:v4], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v7 = [(SBHIconManager *)self reasonToDisallowInteractionOnIconView:v4];
        }
      }
    }

    else
    {
      v7 = @"icon launch not enabled";
    }
  }

LABEL_27:

  return v7;
}

- (id)reasonToDisallowInteractionOnIconView:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconManager:self reasonToDisallowInteractionOnIconView:v4];
  }

  else if ([(SBHIconManager *)self shouldDisableUserInteractionForWidgetDiscoverability])
  {
    v6 = @"widget discoverability";
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)launchFromIconView:(id)a3 withActions:(id)a4 modifierFlags:(int64_t)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v8 icon];
  v11 = [v8 location];
  v12 = [(SBHIconManager *)self delegate];
  v13 = SBLogIcon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v8;
    _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_DEFAULT, "Icon tapped: %@", buf, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [v12 iconManager:self willPrepareIconViewForLaunch:v8];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__SBHIconManager_launchFromIconView_withActions_modifierFlags___block_invoke;
  aBlock[3] = &unk_1E80902D8;
  v14 = v8;
  v27 = v14;
  v15 = v10;
  v28 = v15;
  v29 = self;
  v30 = v9;
  v31 = v12;
  v32 = v11;
  v33 = a5;
  v16 = v11;
  v17 = v12;
  v18 = v9;
  v19 = _Block_copy(aBlock);
  v20 = [(SBHIconManager *)self floatingDockViewControllerForView:v14];
  v21 = v20;
  if (v20)
  {
    v22 = [v20 isPresentingLibrary];
  }

  else
  {
    if ([(SBHIconManager *)self isShowingOrTransitioningToTrailingCustomView])
    {
      v23 = [(SBHIconManager *)self _currentFolderController];
LABEL_16:
      v19[2](v19);
      goto LABEL_17;
    }

    v22 = [(SBHIconManager *)self isMainDisplayLibraryViewVisible];
  }

  v24 = v22;
  v23 = [(SBHIconManager *)self _currentFolderController];
  if ((v24 & 1) != 0 || -[SBHIconManager isShowingLeadingCustomView](self, "isShowingLeadingCustomView") || ![v23 isDisplayingIconView:v14])
  {
    goto LABEL_16;
  }

  v25 = SBLogIcon();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v35 = v14;
    _os_log_impl(&dword_1BEB18000, v25, OS_LOG_TYPE_INFO, "Telling current folder controller to prepare to launch: %@", buf, 0xCu);
  }

  [v23 prepareToLaunchTappedIcon:v15 completionHandler:v19];
LABEL_17:
  [(SBHIconManager *)self setPreviewInteractingIconView:0];
}

void __63__SBHIconManager_launchFromIconView_withActions_modifierFlags___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) icon];
  v3 = *(a1 + 40);

  if (v2 != v3)
  {
    v4 = SBLogIcon();
    if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      v23 = 138412546;
      v24 = v5;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_1BEB18000, &v4->super, OS_LOG_TYPE_DEFAULT, "Skipping launch because icon and iconView no longer match. icon %@, iconView: %@", &v23, 0x16u);
    }

LABEL_4:

    return;
  }

  if ([*(a1 + 40) isFolderIcon])
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 80);

    [v8 launchFolderFromIconView:v7 withActions:v9 modifierFlags:v10];
  }

  else if (objc_opt_respondsToSelector())
  {
    v11 = SBLogIcon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 80);
      v23 = 138412546;
      v24 = v12;
      v25 = 2048;
      v26 = v13;
      _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, "Telling delegate to launch with actions: %@ modifierFlags: %ld", &v23, 0x16u);
    }

    [*(a1 + 64) iconManager:*(a1 + 48) launchIconForIconView:*(a1 + 32) withActions:*(a1 + 56) modifierFlags:*(a1 + 80)];
  }

  else if (objc_opt_respondsToSelector())
  {
    v14 = SBLogIcon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v23 = 138412290;
      v24 = v15;
      _os_log_impl(&dword_1BEB18000, v14, OS_LOG_TYPE_DEFAULT, "Telling delegate to launch with actions: %@", &v23, 0xCu);
    }

    [*(a1 + 64) iconManager:*(a1 + 48) launchIconForIconView:*(a1 + 32) withActions:*(a1 + 56)];
  }

  else
  {
    v16 = objc_opt_respondsToSelector();
    v17 = SBLogIcon();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if ((v16 & 1) == 0)
    {
      if (v18)
      {
        v20 = *(a1 + 32);
        v23 = 138412290;
        v24 = v20;
        _os_log_impl(&dword_1BEB18000, v17, OS_LOG_TYPE_DEFAULT, "Instructing icon to launch manually: %@", &v23, 0xCu);
      }

      v4 = objc_alloc_init(SBHIconLaunchContext);
      [(SBHIconLaunchContext *)v4 setIconView:*(a1 + 32)];
      v21 = [*(a1 + 40) performLaunchFromLocation:*(a1 + 72) context:v4];
      v22 = SBLogIcon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 67109120;
        LODWORD(v24) = v21;
        _os_log_impl(&dword_1BEB18000, v22, OS_LOG_TYPE_DEFAULT, "Icon handled launch: %{BOOL}u", &v23, 8u);
      }

      goto LABEL_4;
    }

    if (v18)
    {
      v19 = *(a1 + 32);
      v23 = 138412290;
      v24 = v19;
      _os_log_impl(&dword_1BEB18000, v17, OS_LOG_TYPE_DEFAULT, "Telling delegate to launch: %@", &v23, 0xCu);
    }

    [*(a1 + 64) iconManager:*(a1 + 48) launchIconForIconView:*(a1 + 32)];
  }
}

- (void)launchFolderFromIconView:(id)a3 withActions:(id)a4 modifierFlags:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 icon];
  v10 = [v7 location];
  v11 = objc_alloc_init(SBHIconLaunchContext);
  [(SBHIconLaunchContext *)v11 setIconView:v7];
  [(SBHIconLaunchContext *)v11 setActions:v8];
  v12 = +[SBHIconViewContextMenuStateController sharedInstance];
  v13 = [v12 areAnyIconViewContextMenusShowing];

  if (!v13)
  {
    goto LABEL_4;
  }

  v14 = [(SBHIconManager *)self previewInteractingIconView];
  v15 = [v14 icon];

  if (v9 != v15)
  {
    v16 = +[SBHIconViewContextMenuStateController sharedInstance];
    [v16 earlyTerminateAnyContextMenuAnimations];

LABEL_4:
    [(SBHIconManager *)self pushExpandedIcon:v9 location:v10 context:v11 forcePoppingPriorExpandedIcon:1 animated:1 completionHandler:0];
    goto LABEL_5;
  }

  v17 = SBLogIcon();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1BEB18000, v17, OS_LOG_TYPE_INFO, "Dismissing quick actions before opening folder", buf, 2u);
  }

  [(SBHIconManager *)self setDismissingMenuForFolderPresentation:1];
  objc_initWeak(buf, self);
  v18 = +[SBHIconViewContextMenuStateController sharedInstance];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __69__SBHIconManager_launchFolderFromIconView_withActions_modifierFlags___block_invoke;
  v19[3] = &unk_1E8090300;
  objc_copyWeak(&v24, buf);
  v20 = v9;
  v21 = v7;
  v22 = v10;
  v23 = v11;
  [v18 dismissAppIconForceTouchControllers:v19];

  [(SBHIconManager *)self dismissIconShareSheets];
  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);
LABEL_5:
}

void __69__SBHIconManager_launchFolderFromIconView_withActions_modifierFlags___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained setDismissingMenuForFolderPresentation:0];
  if ([WeakRetained isDisplayingIcon:*(a1 + 32)] && (objc_msgSend(*(a1 + 40), "icon"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqual:", *(a1 + 32)), v3, v4))
  {
    [WeakRetained pushExpandedIcon:*(a1 + 32) location:*(a1 + 48) context:*(a1 + 56) forcePoppingPriorExpandedIcon:1 animated:1 completionHandler:0];
  }

  else
  {
    v5 = SBLogIcon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "Skipping opening folder after dismissing quick actions", v6, 2u);
    }
  }
}

- (void)iconTapped:(id)a3 modifierFlags:(int64_t)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(SBHIconManager *)self highlightIconView:v6];
  v7 = [v6 icon];
  v8 = [(SBHIconManager *)self delegate];
  v9 = [(SBHIconManager *)self iconDragManager];
  [v9 noteIconTapped];
  if ([v7 isFileStackIcon])
  {
    if (objc_opt_respondsToSelector())
    {
      [v8 iconManager:self tapFloatingDockStackIconView:v6];
    }
  }

  else if ([v7 isLeafIcon] && -[SBHIconManager isEditing](self, "isEditing"))
  {
    if ([v6 supportsStackConfigurationCard])
    {
      v10 = SBLogIcon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v6;
        _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "Starting stack configuration of icon due to tap: %@", buf, 0xCu);
      }

      [v6 presentStackConfigurationCard];
    }

    else if ([v6 supportsConfigurationCard])
    {
      v21 = SBLogIcon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v6;
        _os_log_impl(&dword_1BEB18000, v21, OS_LOG_TYPE_DEFAULT, "Starting configuration of icon due to tap: %@", buf, 0xCu);
      }

      [v6 presentConfigurationCard];
    }

    else
    {
      [(SBHIconManager *)self clearHighlightedIcon];
      v22 = SBLogIcon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v6;
        _os_log_impl(&dword_1BEB18000, v22, OS_LOG_TYPE_DEFAULT, "Ignoring tap to icon because of editing: %@", buf, 0xCu);
      }
    }
  }

  else if ([v7 isLaunchEnabled])
  {
    if ([v7 isWidgetIcon] && (objc_msgSend(v7, "activeWidget"), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = v11;
      v13 = [v11 uniqueIdentifier];
      v14 = [(SBHIconManager *)self _effectiveWidgetMultiplexingManager];
      v15 = [v14 viewControllerForIdentifier:v13];

      if ([v15 sbh_isWidgetHostViewController])
      {
        v16 = v15;
        v17 = [v6 customIconImageViewController];
        if ([v17 sbh_isWidgetStackViewController])
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        v19 = v18;
        if (([v19 isWidgetHitTestingDisabled] & 1) == 0)
        {
          v24 = [v19 sbh_underlyingAvocadoHostViewControllers];
          if ([v24 containsObject:v16])
          {
            v23 = [v16 shouldShareTouchesWithHost];

            if (v23)
            {
              [v16 requestLaunch];
            }
          }

          else
          {
          }
        }
      }
    }

    else
    {
      v12 = [(SBHIconManager *)self launchActionsForIconView:v6];
      [(SBHIconManager *)self launchFromIconView:v6 withActions:v12 modifierFlags:a4];
    }
  }

  else
  {
    v20 = SBLogIcon();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v6;
      _os_log_impl(&dword_1BEB18000, v20, OS_LOG_TYPE_DEFAULT, "Ignoring tap to icon because launching is not allowed: %@", buf, 0xCu);
    }

    [(SBHIconManager *)self clearHighlightedIcon];
    if (objc_opt_respondsToSelector())
    {
      [v8 iconManager:self didReceiveTapOnLaunchDisabledIconView:v6];
    }
  }
}

- (BOOL)icon:(id)a3 canReceiveGrabbedIcon:(id)a4
{
  v6 = a4;
  v7 = [a3 icon];
  if ([(SBHIconManager *)self hasOpenFolder])
  {
    v8 = ([v6 isWidgetIcon] & 1) == 0 && -[SBHIconManager allowsNestedFolders](self, "allowsNestedFolders");
  }

  else if ([v7 isWidgetIcon] && objc_msgSend(v6, "isWidgetIcon"))
  {
    v9 = [v7 iconDataSourcesExcludingSuggestionsCount];
    v10 = [v6 iconDataSourcesExcludingSuggestionsCount] + v9;
    v11 = +[SBHHomeScreenDomain rootSettings];
    v12 = [v11 widgetSettings];
    v8 = v10 <= [v12 maximumWidgetsInAStack];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)iconCloseBoxTapped:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "Icon close box tapped: %@", &v9, 0xCu);
  }

  [(SBHIconManager *)self _noteUserIsInteractingWithIcons];
  [(SBHIconManager *)self _restartEditingEndTimer];
  if ([(SBHIconManager *)self _shouldRespondToIconCloseBoxes])
  {
    v6 = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v6 iconManager:self iconCloseBoxTapped:v4];
    }

    v7 = [v4 icon];
    v8 = [v4 location];
    if (objc_opt_respondsToSelector())
    {
      [v6 iconManager:self wantsUninstallForIcon:v7 location:v8];
    }
  }
}

- (BOOL)iconViewDisplaysAccessories:(id)a3
{
  v4 = a3;
  v5 = [v4 icon];
  if ([(SBHIconManager *)self allowsBadgingForIcon:v5])
  {
    v6 = [v4 location];
    v7 = [(SBHIconManager *)self allowsBadgingForIconLocation:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)iconViewDisplaysCloseBox:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconManager:self iconViewDisplaysCloseBox:v4];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)iconViewDisplaysLabel:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconManager:self iconViewDisplaysLabel:v4];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)iconViewDisplaysResizeHandle:(id)a3
{
  v3 = [a3 icon];
  v4 = [v3 isWidgetIcon];

  return v4;
}

- (BOOL)allowsFocus
{
  v3 = [(SBHIconManager *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v3 isFocusAllowedForIconManager:self])
  {
    v4 = ![(SBHIconManager *)self isEditing];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (unint64_t)focusEffectTypeForIconView:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconManager:self focusEffectTypeForIconView:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)iconView:(id)a3 editingModeGestureRecognizerDidFire:(id)a4
{
  v5 = a3;
  v6 = [(SBHIconManager *)self isEditingAllowed];
  v7 = !v6 | [(SBHIconManager *)self isEditing];
  if (v7)
  {
    if (!v6 && [(SBHIconManager *)self isEditingAllowedForIconView:v5])
    {
      [(SBHIconManager *)self setEditing:1 fromIconView:v5];
    }
  }

  else
  {
    [(SBHIconManager *)self setEditing:1];
  }

  return (v7 & 1) == 0;
}

- (void)setPreviewInteractingIconView:(id)a3
{
  v5 = a3;
  previewInteractingIconView = self->_previewInteractingIconView;
  if (previewInteractingIconView != v5)
  {
    v9 = v5;
    v7 = previewInteractingIconView;
    objc_storeStrong(&self->_previewInteractingIconView, a3);
    if (v7)
    {
      v8 = [(SBHIconManager *)self iconDragManager];
      [v8 informQuickActionPlatterDidFinishPresentation:v7];
    }

    v5 = v9;
  }
}

- (id)launchActionsForIconView:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 iconManager:self launchActionsForIconView:v4];
  }

  else
  {
    [MEMORY[0x1E695DFD8] set];
  }
  v6 = ;

  return v6;
}

- (id)launchURLForIconView:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconManager:self launchURLForIconView:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)imageViewForIconView:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self homescreenIconImageViewMap];
  v6 = [v4 expectedIconImageViewClass];

  v7 = [v5 viewOfClass:v6];

  return v7;
}

- (void)iconView:(id)a3 willRemoveIconImageView:(id)a4
{
  v5 = a4;
  v6 = [(SBHIconManager *)self homescreenIconImageViewMap];
  [v6 recycleView:v5];
}

- (id)iconView:(id)a3 iconAccessoryViewOfClass:(Class)a4
{
  v5 = [(SBHIconManager *)self homescreenIconAccessoryViewMap];
  v6 = [v5 viewOfClass:a4];

  return v6;
}

- (void)iconView:(id)a3 willRemoveIconAccessoryView:(id)a4
{
  v5 = a4;
  v6 = [(SBHIconManager *)self homescreenIconAccessoryViewMap];
  [v6 recycleView:v5];
}

- (id)parallaxSettingsForComponentsOfIconView:(id)a3
{
  v4 = a3;
  v5 = [v4 location];
  if (!-[SBHIconManager _shouldParallaxInIconLocation:](self, "_shouldParallaxInIconLocation:", v5) || ![MEMORY[0x1E69DD250] _motionEffectsSupported])
  {
    goto LABEL_5;
  }

  v6 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 iconManager:self supportsParallaxForIconView:v4];

    if (!v7)
    {
LABEL_5:
      v8 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v10 = +[SBHHomeScreenDomain rootSettings];
  v11 = [v10 iconSettings];
  v8 = [v11 badgeParallaxSettings];

LABEL_6:

  return v8;
}

- (id)iconView:(id)a3 iconLabelAccessoryViewOfType:(int64_t)a4
{
  v5 = [(SBHIconManager *)self homescreenIconLabelAccessoryViewMap];
  v6 = [v5 viewOfClass:SBViewClassForIconLabelAccessoryType(a4)];

  return v6;
}

- (void)iconView:(id)a3 willRemoveIconLabelAccessoryView:(id)a4
{
  v5 = a4;
  v6 = [(SBHIconManager *)self homescreenIconLabelAccessoryViewMap];
  [v6 recycleView:v5];
}

- (id)iconView:(id)a3 labelImageWithParameters:(id)a4
{
  v5 = a4;
  v6 = [(SBHIconManager *)self iconLabelImageCache];
  v7 = [v6 labelImageWithParameters:v5];

  return v7;
}

- (id)iconView:(id)a3 labelContentWithParameters:(id)a4
{
  v5 = a4;
  v6 = [(SBHIconManager *)self iconLabelImageCache];
  v7 = [v6 labelContentWithParameters:v5];

  return v7;
}

- (int64_t)closeBoxTypeForIconView:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconManager:self closeBoxTypeForIconView:v4 proposedType:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)supportedGridSizeClassesForIconView:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v21 = [v20 icon];
  if (![v21 isWidgetIcon])
  {
    goto LABEL_24;
  }

  v22 = v21;
  v3 = [v22 iconDataSources];
  v23 = [(SBHIconManager *)self gridSizeClassDomain];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = v3;
  v5 = 0;
  v6 = [v4 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v6)
  {
    v7 = *v33;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v32 + 1) + 8 * i);
        v10 = objc_opt_self();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v12 = v9;
          v13 = [(SBHIconManager *)self widgetExtensionProvider];
          v14 = [v13 sbh_descriptorForWidgetIdentifiable:v12];

          v15 = -[SBHIconGridSizeClassSet initWithCHSWidgetFamilyMask:inDomain:]([SBHIconGridSizeClassSet alloc], "initWithCHSWidgetFamilyMask:inDomain:", [v14 supportedFamilies], v23);
          if (!v15)
          {
            continue;
          }
        }

        else
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            continue;
          }

          v15 = [v9 supportedGridSizeClassesForIcon:v22];
          if (!v15)
          {
            continue;
          }
        }

        if (v5)
        {
          [v5 intersectGridSizeClassSet:v15];
        }

        else
        {
          v5 = [(SBHIconGridSizeClassSet *)v15 mutableCopy];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (!v6)
      {
        break;
      }
    }
  }

  v16 = [v20 location];
  if ([v5 containsGridSizeClass:@"SBHIconGridSizeClassNewsLargeTall"] && SBIconLocationGroupContainsLocation(@"SBIconLocationGroupTodayView", v16))
  {
    v17 = [(SBHIconManager *)self rootFolder];
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __54__SBHIconManager_supportedGridSizeClassesForIconView___block_invoke;
    v25[3] = &unk_1E8090328;
    v26 = v22;
    v27 = &v28;
    [v17 enumerateTodayListIconsUsingBlock:v25];
    if (*(v29 + 24) == 1)
    {
      [v5 removeGridSizeClass:@"SBHIconGridSizeClassNewsLargeTall"];
    }

    _Block_object_dispose(&v28, 8);
  }

  if (!v5)
  {
LABEL_24:
    v18 = [(SBHIconManager *)self gridSizeClassDomain];
    v5 = [v18 allGridSizeClasses];
  }

  return v5;
}

void __54__SBHIconManager_supportedGridSizeClassesForIconView___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v6 = [v12 gridSizeClass];
  v7 = v6;
  if (v6 == @"SBHIconGridSizeClassNewsLargeTall")
  {
    v11 = *(a1 + 32);

    v10 = v12;
    if (v11 == v12)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v8 = [v12 gridSizeClass];
  if (([v8 isEqualToString:@"SBHIconGridSizeClassNewsLargeTall"] & 1) == 0)
  {

    v10 = v12;
    goto LABEL_8;
  }

  v9 = *(a1 + 32);

  v10 = v12;
  if (v9 != v12)
  {
LABEL_6:
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

LABEL_8:
}

- (id)supportedIconGridSizeClassesForResizeOfIconView:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self supportedGridSizeClassesForIconView:v4];
  v6 = [v4 icon];

  if (![v6 isWidgetStackIcon])
  {
    if ([v6 isWidgetIcon])
    {
      v7 = [(SBHIconManager *)self iconForReplacingWidgetIconWithAppIcon:v6];
      if ([v7 isApplicationIcon])
      {
        v8 = [v7 application];
        v9 = v8;
        if (v8 && ([v8 hasHiddenTag] & 1) == 0)
        {
          v10 = [v5 gridSizeClassSetByAddingGridSizeClass:@"SBHIconGridSizeClassDefault"];

          v5 = v10;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    if ([v6 isApplicationIcon])
    {
      v11 = MEMORY[0x1E698B0D0];
      v12 = [v6 applicationBundleID];
      v13 = [v11 applicationWithBundleIdentifier:v12];

      if ([v13 isLocked])
      {
        v14 = +[SBHIconGridSizeClassSet gridSizeClassSetForDefaultGridSizeClass];

        goto LABEL_17;
      }

      v15 = [(SBHIconManager *)self iconDataSourceForReplacingAppIconWithWidgetIcon:v6];
      if (objc_opt_respondsToSelector())
      {
        [v15 supportedGridSizeClassesForIcon:v6];
      }

      else
      {
        +[SBHIconGridSizeClassSet gridSizeClassSetForDefaultGridSizeClass];
      }
      v16 = ;

      v5 = v16;
    }
  }

  v5 = v5;
  v14 = v5;
LABEL_17:

  return v14;
}

- (BOOL)allowsBadgingForIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconManager:self allowsBadgingForIcon:v4];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)allowsBadgingForIconLocation:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconManager:self allowsBadgingForIconLocation:v4];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)iconView:(id)a3 backgroundViewForComponentsOfType:(int64_t)a4
{
  v6 = a3;
  v7 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 iconManager:self backgroundViewForComponentsOfType:a4 forIconView:v6];
    if (v8)
    {
      goto LABEL_9;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 iconManager:self backgroundViewForComponentsOfIconView:v6];
    if (v8)
    {
      goto LABEL_9;
    }
  }

  v9 = [v6 icon];
  v10 = [v9 isWidgetIcon];

  if (!v10)
  {
    goto LABEL_10;
  }

  if (a4 != 4)
  {
    if (a4 == 5)
    {
      v8 = objc_alloc_init(SBHMultiplexingWrapperGlassBackgroundView);
LABEL_9:
      v11 = v8;
      goto LABEL_11;
    }

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v13 = [(SBHIconManager *)self widgetBackgroundViewMap];
  v11 = [v13 viewOfClass:objc_opt_class()];

LABEL_11:

  return v11;
}

- (BOOL)iconView:(id)a3 shouldContinueToUseBackgroundViewForComponents:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 iconManager:self shouldContinueToUseBackgroundView:v7 forComponentsOfIconView:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)screenSnapshotProviderForComponentsOfIconView:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconManager:self screenSnapshotProviderForComponentsOfIconView:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)accessibilityTintColorForIconView:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconManager:self accessibilityTintColorForIconView:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)customImageViewControllerForIconView:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 icon];
  if ([v6 isWidgetIcon])
  {
    widgetViewControllersForIconView = self->_widgetViewControllersForIconView;
    if (!widgetViewControllersForIconView)
    {
      v8 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
      v9 = self->_widgetViewControllersForIconView;
      self->_widgetViewControllersForIconView = v8;

      widgetViewControllersForIconView = self->_widgetViewControllersForIconView;
    }

    v10 = [(NSMapTable *)widgetViewControllersForIconView objectForKey:v5];
    if (objc_opt_respondsToSelector())
    {
      v11 = [(SBHWidgetAddGalleryWidgetViewController *)v10 icon];

      if (v11 != v6)
      {

LABEL_11:
        v12 = v6;
        v13 = [v12 activeDataSource];
        v14 = [v5 location];
        if ([v14 isEqualToString:@"SBIconLocationAddWidgetSheet"])
        {
          if (([v12 isWidgetStackIcon] & 1) == 0)
          {
            v15 = objc_opt_self();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v17 = SBLogWidgets();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v39 = v5;
                _os_log_impl(&dword_1BEB18000, v17, OS_LOG_TYPE_DEFAULT, "Creating new widget custom image view controller for icon view: %@", buf, 0xCu);
              }

              v18 = [(SBHIconManager *)self _makeCustomViewControllerForWidgetIcon:v12 dataSource:v13 location:v14];
              v10 = [[SBHWidgetAddGalleryWidgetViewController alloc] initWithContentViewController:v18];

              if (!v10)
              {
                goto LABEL_28;
              }

LABEL_27:
              [(SBHIconManager *)self rootFolderController];
              v25 = v24 = v13;
              [v25 updatePresentationModeFolderContextForIconView:v5];

              v13 = v24;
              goto LABEL_28;
            }
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = -[SBHIconManager _multiplexingViewControllerForIcon:dataSource:location:withPriority:](self, "_multiplexingViewControllerForIcon:dataSource:location:withPriority:", v12, v13, v14, [v5 customIconImageViewControllerPriority]);
          v20 = objc_opt_class();
          v21 = v19;
          v35 = v14;
          if (v20)
          {
            if (objc_opt_isKindOfClass())
            {
              v22 = v21;
            }

            else
            {
              v22 = 0;
            }
          }

          else
          {
            v22 = 0;
          }

          v27 = v22;

          [(SBHIconManager *)self _updateWidgetMultiplexingViewController:v27 forIconView:v5];
          v28 = [(SBHIconManager *)self delegate];
          v37 = v12;
          if (objc_opt_respondsToSelector())
          {
            v29 = [v28 iconManager:self canCustomElementAlignWithGrid:v13];
          }

          else
          {
            v29 = 0;
          }

          v30 = [(SBHIconManager *)self _effectiveAppPredictionViewControllersForUniqueIdentifier];
          v36 = v13;
          v31 = [v13 uniqueIdentifier];
          v32 = [v30 objectForKey:v31];

          if (!v32)
          {
            [(SBHIconManager *)a2 customImageViewControllerForIconView:?];
          }

          v33 = [SBHMultiplexingWrapperViewController alloc];
          v34 = [v5 location];
          v10 = [(SBHMultiplexingWrapperViewController *)v33 initWithIcon:v37 location:v34 multiplexingViewController:v27 appPredictionViewController:v32 canAlignWithGrid:v29];

          v12 = v37;
          [(SBHWidgetAddGalleryWidgetViewController *)v10 setDelegate:self];

          v14 = v35;
          v13 = v36;
          if (v10)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v23 = SBLogWidgets();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v39 = v5;
            _os_log_impl(&dword_1BEB18000, v23, OS_LOG_TYPE_DEFAULT, "Creating new widget stack view controller for icon view: %@", buf, 0xCu);
          }

          v10 = [[SBHWidgetStackViewController alloc] initWithIcon:v12 iconListLayoutProvider:self->_listLayoutProvider];
          [(SBHWidgetAddGalleryWidgetViewController *)v10 setDataSource:self];
          [(SBHWidgetAddGalleryWidgetViewController *)v10 setDelegate:self];
          [(SBHWidgetAddGalleryWidgetViewController *)v10 setAutomaticallyUpdatesVisiblySettled:0];
          -[SBHWidgetAddGalleryWidgetViewController setShowsSquareCorners:](v10, "setShowsSquareCorners:", [v5 showsSquareCorners]);
          if (v10)
          {
            goto LABEL_27;
          }
        }

LABEL_28:
        [(NSMapTable *)self->_widgetViewControllersForIconView setObject:v10 forKey:v5];

        if (!v10)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }
    }

    if (!v10)
    {
      goto LABEL_11;
    }

LABEL_29:
    [(SBHIconManager *)self _updateIconView:v5 forCustomIconImageViewController:v10];
    goto LABEL_30;
  }

  if (![v6 isDebugIcon])
  {
    v10 = 0;
    goto LABEL_30;
  }

  v10 = [[SBHDebugIconViewController alloc] initWithIcon:v6];
  if (v10)
  {
    goto LABEL_29;
  }

LABEL_30:

  return v10;
}

- (void)iconViewDidBeginTrackingPossibleResize:(id)a3 context:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [v17 icon];
  if ([v7 isWidgetIcon])
  {
    v8 = v7;
    v9 = [v17 nextSmallerGridSizeClassForResize];
    if (v9)
    {
      v10 = [(SBHIconManager *)self preWarmCustomViewControllerForWidgetIcon:v8 withGridSizeClass:v9];
      if (v10)
      {
        v11 = v10;
        [v6 setObject:v10 forKey:@"smallerViewController"];
      }
    }

    v12 = [v17 nextLargerGridSizeClassForResize];
    if (v12)
    {
      v13 = [(SBHIconManager *)self preWarmCustomViewControllerForWidgetIcon:v8 withGridSizeClass:v12];
      if (v13)
      {
        v14 = v13;
        [v6 setObject:v13 forKey:@"largerViewController"];
      }
    }

    v15 = [(SBHIconManager *)self rootFolderController];
    v16 = [v15 disableAutoScrollForReason:@"icon resize"];
    if (v16)
    {
      [v6 setObject:v16 forKey:@"autoScrollAssertion"];
    }
  }
}

- (id)preWarmCustomViewControllerForWidgetIcon:(id)a3 withGridSizeClass:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 gridSizeClass];
  v9 = v8;
  if (v8 == v7)
  {
  }

  else
  {
    v10 = [v6 gridSizeClass];
    v11 = [v10 isEqualToString:v7];

    if (!v11)
    {
      v12 = [(SBHIconManager *)self makeResizedCopyOfWidgetIcon:v6 withGridSizeClass:v7];
      v13 = [(SBHIconManager *)self preWarmCustomViewControllerForWidgetIcon:v12];

      goto LABEL_6;
    }
  }

  v13 = [(SBHIconManager *)self preWarmCustomViewControllerForWidgetIcon:v6];
LABEL_6:

  return v13;
}

- (id)preWarmCustomViewControllerForWidgetIcon:(id)a3
{
  v4 = a3;
  v5 = [v4 activeDataSource];
  v6 = [(SBHIconManager *)self _multiplexingViewControllerForIcon:v4 dataSource:v5 location:@"SBIconLocationRoot" withPriority:0];

  [v6 beginAppearanceTransition:1 animated:0];
  [v6 endAppearanceTransition];

  return v6;
}

- (id)_customViewControllerForResizingIcon:(id)a3 gridSizeClass:(id)a4 dataSource:(id)a5 location:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass & 1) != 0 || (objc_opt_self(), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_opt_isKindOfClass(), v16, (v17))
  {
    v18 = [(SBHIconManager *)self _makeCustomViewControllerForWidgetIcon:v10 dataSource:v12 location:v13 gridSizeClass:v11];
  }

  else if (v11 && ![v11 isEqualToString:@"SBHIconGridSizeClassDefault"])
  {
    v18 = 0;
  }

  else
  {
    v20 = [SBHLeafIconCustomImageViewController alloc];
    v21 = [(SBHIconManager *)self iconImageCache];
    v18 = [(SBHLeafIconCustomImageViewController *)v20 initWithIcon:v10 iconImageCache:v21];
  }

  return v18;
}

- (void)iconView:(id)a3 wantsResizeToGridSizeClass:(id)a4 completionHandler:(id)a5
{
  v10 = a4;
  v8 = a5;
  v9 = [a3 icon];
  if ([v9 isWidgetIcon])
  {
    [(SBHIconManager *)self changeSizeOfWidgetIcon:v9 toSizeClass:v10 animated:1 completionHandler:v8];
    [(SBHIconManager *)self _restartEditingEndTimer];
  }

  else if (v8)
  {
    v8[2](v8);
  }
}

- (void)iconViewDidEndTrackingPossibleResize:(id)a3 context:(id)a4
{
  v4 = a4;
  v5 = [v4 objectForKey:@"autoScrollAssertion"];
  [v5 invalidate];
  [v4 removeObjectForKey:@"autoScrollAssertion"];
}

- (id)resizeGestureHandlerForIconView:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 icon];
  if ([v5 isWidgetIcon])
  {
    v6 = [v5 activeDataSource];
    if (v6)
    {
      v7 = [(SBHIconManager *)self rootFolderController];
      v8 = [v7 rootFolderView];
      v9 = [v8 iconListViewDisplayingIconView:v4];

      if (v9)
      {
LABEL_16:
        [(SBHIconManager *)self _discardEndEditingTimerAndDontResetUntilReasonIsRemoved:@"widget resize"];
        v15 = [(SBHIconManager *)self widgetMetricsProvider];
        v10 = [[SBWidgetIconResizeGestureHandler alloc] initWithIconView:v4 iconListView:v9 widgetMetricsProvider:v15];
        [(SBWidgetIconResizeGestureHandler *)v10 setDelegate:self];
      }

      else
      {
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v9 = [(SBHIconManager *)self todayViewControllers];
        v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          v11 = *v18;
          while (2)
          {
            for (i = 0; i != v10; i = (i + 1))
            {
              if (*v18 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = *(*(&v17 + 1) + 8 * i);
              if ([v13 isDisplayingIconView:v4])
              {
                v14 = [v13 listView];

                v9 = v14;
                goto LABEL_16;
              }
            }

            v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_setupApplicationShortcutItemsForPresentation:(id)a3
{
  v6 = a3;
  [(SBHIconManager *)self setPreviewInteractingIconView:?];
  v4 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 iconManager:self applicationShortcutItemsForIconView:v6];
  }

  else
  {
    v5 = 0;
  }

  [v6 setApplicationShortcutItems:v5];
}

- (BOOL)iconView:(id)a3 supportsConfigurationForDataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    if (v8)
    {
      v9 = [(SBHIconManager *)self widgetExtensionProvider];
      v10 = [v9 sbh_descriptors];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __62__SBHIconManager_iconView_supportsConfigurationForDataSource___block_invoke;
      v23[3] = &unk_1E8090350;
      v11 = v8;
      v24 = v11;
      v12 = [v10 bs_firstObjectPassingTest:v23];

      v13 = [v12 intentType];

      if (v13)
      {
        v14 = [v6 icon];
        if ([v14 isWidgetIcon])
        {
          v15 = [v6 icon];
        }

        else
        {
          v15 = 0;
        }

        v16 = [(SBHIconManager *)self _intentForWidget:v11 ofIcon:v15 creatingIfNecessary:0];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(self) = 1;
        }

        else
        {
          self = [v16 _codableDescription];
          [(SBHIconManager *)self attributes];
          v22 = v11;
          v18 = v17 = v9;
          [v18 allValues];
          v19 = v21 = v15;

          v9 = v17;
          v11 = v22;

          LOBYTE(self) = [v19 bs_containsObjectPassingTest:&__block_literal_global_787];
          v15 = v21;
        }
      }

      if (v13)
      {

        goto LABEL_21;
      }
    }

LABEL_20:
    LOBYTE(self) = 0;
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    LOBYTE(self) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_20;
    }

    LOBYTE(self) = _os_feature_enabled_impl();
  }

LABEL_21:

  return self & 1;
}

uint64_t __62__SBHIconManager_iconView_supportsConfigurationForDataSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 extensionBundleIdentifier];
  v5 = [*(a1 + 32) extensionBundleIdentifier];
  if ([v4 isEqualToString:v5])
  {
    v6 = [v3 kind];
    v7 = [*(a1 + 32) kind];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)iconView:(id)a3 configurationInteractionForDataSource:(id)a4
{
  v6 = a4;
  v7 = [a3 icon];
  v8 = objc_opt_class();
  v9 = v7;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = objc_opt_class();
    v13 = v6;
    if (v12)
    {
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v17 = v14;

    v18 = [(SBHIconManager *)self widgetExtensionProvider];
    v19 = [v18 sbh_descriptorForWidgetIdentifiable:v17];
    v20 = [(SBHIconManager *)self _intentForWidget:v17 ofIcon:v11 creatingIfNecessary:0];

    if (!v19)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [SBHSpecialWidgetDescriptor alloc];
    v16 = 2;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [SBHSpecialWidgetDescriptor alloc];
      v16 = 6;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = SBLogIcon();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [SBHIconManager iconView:configurationInteractionForDataSource:];
        }

        v20 = 0;
        v19 = 0;
        goto LABEL_26;
      }

      v15 = [SBHSpecialWidgetDescriptor alloc];
      v16 = 3;
    }
  }

  v19 = [(SBHSpecialWidgetDescriptor *)v15 initWithType:v16];
  v20 = [(SBHIconManager *)self _newIntentForDataSource:v6 inIcon:v11];
  if (v19)
  {
LABEL_21:
    if (v20)
    {
      v21 = [SBHWidgetConfigurationInteraction alloc];
      v22 = [v11 gridSizeClass];
      v23 = [(SBHIconManager *)self gridSizeClassDomain];
      v24 = [(SBHWidgetConfigurationInteraction *)v21 initWithDescriptor:v19 gridSizeClass:v22 gridSizeClassDomain:v23 intent:v20 configuredDataSource:v6];

      goto LABEL_29;
    }
  }

LABEL_26:
  v26 = SBLogIcon();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [SBHIconManager iconView:configurationInteractionForDataSource:];
  }

  v24 = 0;
LABEL_29:

  return v24;
}

- (id)stackConfigurationInteractionForIconView:(id)a3
{
  v4 = a3;
  v5 = [v4 icon];
  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [(SBHIconManager *)self delegate];
  v11 = [(SBHIconManager *)self _alwaysPresentStackConfigurationSheet];
  if (([v9 isWidgetStackIcon] & 1) != 0 || v11)
  {
    v12 = [(SBHIconManager *)self _stackConfigurationForStackIcon:v9];
    if (v12)
    {
      v13 = [(SBHIconManager *)self rootFolderController];
      v14 = [SBHStackConfigurationInteraction alloc];
      v15 = [(SBHIconManager *)self listLayoutProvider];
      v29 = v12;
      v12 = [(SBHStackConfigurationInteraction *)v14 initWithConfiguration:v12 iconView:v4 iconViewProvider:self listLayoutProvider:v15];

      v16 = [(SBHIconManager *)self iconView:v4 containerViewControllerForConfigurationInteraction:v12];
      if ((objc_opt_respondsToSelector() & 1) == 0 || (v17 = objc_opt_respondsToSelector(), v18 = v16, (v17 & 1) == 0))
      {
        v18 = v13;
      }

      v28 = v16;
      v19 = v18;
      [(SBHStackConfigurationInteraction *)v12 setPresenter:v19];
      v20 = [v4 window];
      v21 = v20;
      if (v20)
      {
        [v20 interfaceOrientation];
      }

      if (v19 == v13)
      {
        [v13 showsAddWidgetButtonWhileEditingAllowedOrientations];
      }

      v27 = SBFInterfaceOrientationMaskContainsInterfaceOrientation();
      if (objc_opt_respondsToSelector())
      {
        v22 = [v10 iconManager:self stackConfigurationInteractionDelegateForIconView:v4];
      }

      else
      {
        v22 = v13;
      }

      v23 = v22;
      [(SBHStackConfigurationInteraction *)v12 setStackConfigurationDelegate:v22];
      if (objc_opt_respondsToSelector())
      {
        v24 = [v10 iconManager:self stackConfigurationViewControllerAppearanceDelegateForIconView:v4];
      }

      else
      {
        v24 = v13;
      }

      v25 = v24;
      [(SBHStackConfigurationInteraction *)v12 setAppearanceDelegate:v24];
      [(SBHStackConfigurationInteraction *)v12 setShowsAddButton:v27];
      [(SBHStackConfigurationInteraction *)v12 setShowsDoneButton:[(SBHIconManager *)self showsDoneButtonWhileEditing]];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)iconView:(id)a3 containerViewControllerForConfigurationInteraction:(id)a4
{
  v5 = a3;
  v6 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 iconManager:self containerViewControllerForConfigurationOfIconView:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)iconView:(id)a3 containerViewForConfigurationInteraction:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 iconManager:self containerViewForConfigurationOfIconView:v7];
  }

  else
  {
    v10 = [(SBHIconManager *)self iconView:v7 containerViewControllerForConfigurationInteraction:v6];

    v9 = [v10 view];
    v7 = v10;
  }

  return v9;
}

- (CGRect)iconView:(id)a3 contentBoundingRectForConfigurationInteraction:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 iconManager:self contentBoundingRectForConfigurationOfIconView:v7];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v17 = [(SBHIconManager *)self iconView:v7 containerViewForConfigurationInteraction:v6];

    [v17 bounds];
    v10 = v18;
    v12 = v19;
    v14 = v20;
    v16 = v21;
    v7 = v17;
  }

  v22 = v10;
  v23 = v12;
  v24 = v14;
  v25 = v16;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (int64_t)iconView:(id)a3 userInterfaceStyleForConfigurationInteraction:(id)a4
{
  v5 = a3;
  v6 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 iconManager:self userInterfaceStyleForConfigurationOfIconView:v5];
  }

  else
  {
    v8 = [v5 traitCollection];

    v7 = [v8 userInterfaceStyle];
    v5 = v8;
  }

  return v7;
}

- (id)iconView:(id)a3 homeScreenContentViewForConfigurationInteraction:(id)a4
{
  v5 = a3;
  v6 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 iconManager:self homeScreenContentViewForConfigurationOfIconView:v5];
  }

  else
  {
    v8 = [(SBHIconManager *)self rootFolderController];
    v7 = [v8 view];
  }

  return v7;
}

- (void)iconView:(id)a3 configurationDidUpdateWithInteraction:(id)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a3 icon];
  if ([v7 isLeafIcon])
  {
    v8 = v7;
    if ([v8 isWidgetIcon])
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    v11 = [v6 configuration];
    v12 = objc_opt_class();
    v13 = v11;
    if (v12)
    {
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (v15)
    {
      v49 = v8;
      v50 = v7;
      v51 = v6;
      [v10 setAllowsSuggestions:{objc_msgSend(v15, "allowsSuggestions")}];
      [v10 setAllowsExternalSuggestions:{objc_msgSend(v15, "allowsExternalSuggestions")}];
      v48 = v15;
      v16 = [v15 dataSources];
      v17 = [v10 iconDataSources];
      v18 = [v16 differenceFromArray:v17];

      v19 = [v18 insertions];
      v53 = [v19 bs_mapNoNulls:&__block_literal_global_813];

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v20 = [v18 removals];
      v21 = [v20 countByEnumeratingWithState:&v58 objects:v64 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v59;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v59 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = [*(*(&v58 + 1) + 8 * i) object];
            if ([v53 containsObject:v25])
            {
              v26 = self->_movedStackConfigDataSources;
              if (!v26)
              {
                v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
              }

              [(NSMutableArray *)v26 addObject:v25];
              movedStackConfigDataSources = self->_movedStackConfigDataSources;
              self->_movedStackConfigDataSources = v26;
            }

            [v10 removeIconDataSource:v25];
          }

          v22 = [v20 countByEnumeratingWithState:&v58 objects:v64 count:16];
        }

        while (v22);
      }

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v47 = v18;
      obj = [v18 insertions];
      v28 = [obj countByEnumeratingWithState:&v54 objects:v63 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v55;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v55 != v30)
            {
              objc_enumerationMutation(obj);
            }

            v32 = *(*(&v54 + 1) + 8 * j);
            v33 = [v32 object];
            v62 = v33;
            v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
            v35 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(v32, "index")}];
            [v10 insertIconDataSources:v34 atIndexes:v35];

            v36 = self->_movedStackConfigDataSources;
            v37 = [v32 object];
            LODWORD(v36) = [(NSMutableArray *)v36 containsObject:v37];

            if (v36)
            {
              v38 = self->_movedStackConfigDataSources;
              v39 = [v32 object];
              [(NSMutableArray *)v38 removeObject:v39];
            }
          }

          v29 = [obj countByEnumeratingWithState:&v54 objects:v63 count:16];
        }

        while (v29);
      }

      v40 = [(SBHIconManager *)self rootFolder];
      [v40 markIconStateDirty];

      v7 = v50;
      v6 = v51;
      v15 = v48;
      v8 = v49;
    }

    else
    {
      v41 = [v6 configuredDataSource];
      v42 = v41;
      if (v41)
      {
        v43 = v41;
      }

      else
      {
        v43 = [v8 activeDataSource];
      }

      v44 = v43;

      v45 = [v6 configuration];
      [(SBHIconManager *)self _handleUpdatedConfiguration:v45 forDataSource:v44 ofIcon:v8 archiving:1];
    }

    v46 = [(SBHIconManager *)self usageMonitor];
    [v46 noteUserConfiguredIcon:v8];
  }
}

- (void)_handleUpdatedConfiguration:(id)a3 forDataSource:(id)a4 ofIcon:(id)a5 archiving:(BOOL)a6
{
  v6 = a6;
  v42 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v11;
  if ([v12 isWidgetIcon])
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v16 = objc_opt_class();
  v17 = v13;
  if (v16)
  {
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  if (!v19)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = SBHShortcutsFolderElement;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = SBHShortcutsSingleElement;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v20 = 0;
          if (!v6)
          {
            goto LABEL_25;
          }

          goto LABEL_21;
        }

        v27 = SBHFilesElement;
      }
    }

    v20 = objc_alloc_init(v27);
    if (!v6)
    {
      goto LABEL_25;
    }

LABEL_21:
    if (v20)
    {
      v28 = v20;
    }

    else
    {
      v28 = v17;
    }

    [(SBHIconManager *)self _archiveConfiguration:v10 forDataSource:v28 ofIcon:v12];
    goto LABEL_25;
  }

  v20 = [v19 copyWithUniqueIdentifier];
  v21 = SBLogWidgets();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    [v19 extensionBundleIdentifier];
    v22 = v31 = v6;
    [v19 uniqueIdentifier];
    v23 = v32 = self;
    v24 = [v20 extensionBundleIdentifier];
    [v20 uniqueIdentifier];
    v33 = v15;
    v26 = v25 = v10;
    *buf = 138544130;
    v35 = v22;
    v36 = 2114;
    v37 = v23;
    v38 = 2114;
    v39 = v24;
    v40 = 2114;
    v41 = v26;
    _os_log_impl(&dword_1BEB18000, v21, OS_LOG_TYPE_DEFAULT, "Widget %{public}@ %{public}@ created to replace widget %{public}@ %{public}@.", buf, 0x2Au);

    v10 = v25;
    v15 = v33;

    self = v32;
    v6 = v31;
  }

  if (v6)
  {
    goto LABEL_21;
  }

LABEL_25:
  if (v20)
  {
    [v15 replaceIconDataSource:v17 withIconDataSource:v20];
    v29 = SBLogIcon();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v15 uniqueIdentifier];
      *buf = 138412546;
      v35 = v20;
      v36 = 2112;
      v37 = v30;
      _os_log_impl(&dword_1BEB18000, v29, OS_LOG_TYPE_DEFAULT, "Setting last user selected data source due to configuration update: %@ for: %@", buf, 0x16u);
    }

    [v15 setLastUserSelectedDataSource:v20];
  }
}

- (void)_archiveConfiguration:(id)a3 forDataSource:(id)a4 ofIcon:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_class();
  v12 = v8;
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (objc_opt_respondsToSelector())
  {
    v15 = [v9 uniqueIdentifier];
  }

  else
  {
    v15 = 0;
  }

  v26 = 0;
  v16 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v26];
  v17 = v26;
  v18 = v17;
  if (!v16 || v17)
  {
    v19 = SBLogIcon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [SBHIconManager _archiveConfiguration:forDataSource:ofIcon:];
    }
  }

  else
  {
    v19 = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v19 iconManager:self dataSource:v9 ofIcon:v10 didUpdateConfigurationData:v16];
    }

    if (v14 && v15)
    {
      archivedWidgetIntents = self->_archivedWidgetIntents;
      if (!archivedWidgetIntents)
      {
        v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v22 = self->_archivedWidgetIntents;
        self->_archivedWidgetIntents = v21;

        archivedWidgetIntents = self->_archivedWidgetIntents;
      }

      [(NSMutableDictionary *)archivedWidgetIntents setObject:v14 forKey:v15];
    }
  }

  if (v14 && v15)
  {
    widgetIntents = self->_widgetIntents;
    if (!widgetIntents)
    {
      v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v25 = self->_widgetIntents;
      self->_widgetIntents = v24;

      widgetIntents = self->_widgetIntents;
    }

    [(NSMutableDictionary *)widgetIntents setObject:v14 forKey:v15];
  }
}

- (void)iconView:(id)a3 configurationWillBeginWithInteraction:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(SBHIconManager *)self currentConfiguringIconView];
  if (v7 != v9)
  {
    [(SBHIconManager *)self dismissModalInteractionsImmediately];
    [(SBHIconManager *)self setCurrentConfiguringIconView:v9];
  }

  [(SBHIconManager *)self _discardEndEditingTimerAndDontResetUntilReasonIsRemoved:@"IconViewConfiguration"];
  v8 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 iconManager:self iconView:v9 configurationWillBeginWithInteraction:v6];
  }
}

- (void)iconView:(id)a3 configurationWillEndWithInteraction:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 iconManager:self iconView:v8 configurationWillEndWithInteraction:v6];
  }
}

- (void)iconView:(id)a3 configurationDidEndWithInteraction:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(SBHIconManager *)self currentConfiguringIconView];

  if (v7 == v10)
  {
    [(SBHIconManager *)self setCurrentConfiguringIconView:0];
  }

  [(SBHIconManager *)self _removeReasonToNotResetEndEditingTimer:@"IconViewConfiguration"];
  v8 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 iconManager:self iconView:v10 configurationDidEndWithInteraction:v6];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v10 icon];
    if (![v9 iconDataSourceCount])
    {
      [(SBHIconManager *)self uninstallIcon:v9 animate:1];
    }
  }
}

- (BOOL)_alwaysPresentStackConfigurationSheet
{
  v3 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 iconManagerAllowsWidgetStackWithSingleWidgetToPresentStackConfigurationSheet:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)verticalMarginPercentageForConfigurationOfIconView:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self delegate];
  v6 = -1.0;
  if (objc_opt_respondsToSelector())
  {
    [v5 iconManager:self verticalMarginPercentageForConfigurationOfIconView:v4];
    v6 = v7;
  }

  return v6;
}

- (void)modalInteractionWillBegin:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(SBHIconManager *)self currentPersonDetailInteraction];
    v5 = v7;
    if (v4 != v5)
    {
      [(SBHIconManager *)self dismissModalInteractionsImmediately];
      [(SBHIconManager *)self setCurrentPersonDetailInteraction:v5];
    }
  }

  v6 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 iconManager:self modalInteractionWillBegin:v7];
  }
}

- (void)modalInteractionDidEnd:(id)a3
{
  v6 = a3;
  v4 = [(SBHIconManager *)self currentPersonDetailInteraction];

  if (v4 == v6)
  {
    [(SBHIconManager *)self setCurrentPersonDetailInteraction:0];
  }

  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 iconManager:self modalInteractionDidEnd:v6];
  }
}

- (id)_containerViewControllerForPersonDetailInteractionTargetingIconView:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconManager:self containerViewControllerForModalInteractionFromIconView:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_containerViewForPersonDetailInteractionTargetingIconView:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconManager:self containerViewForModalInteractionFromIconView:v4];
  }

  else
  {
    v7 = [(SBHIconManager *)self _containerViewControllerForPersonDetailInteractionTargetingIconView:v4];

    v6 = [v7 view];
    v4 = v7;
  }

  return v6;
}

- (id)_homeScreenContentViewForPersonDetailInteractionTargetingIconView:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconManager:self homeScreenContentViewForModalInteractionFromIconView:v4];
  }

  else
  {
    v7 = [(SBHIconManager *)self rootFolderController];
    v6 = [v7 view];
  }

  return v6;
}

- (id)_personDetailInteractionContextForPersonURL:(id)a3 iconView:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 representativeIconViewForModalInteractions];
  v9 = [(SBHIconManager *)self _containerViewControllerForPersonDetailInteractionTargetingIconView:v6];
  v10 = [(SBHIconManager *)self _containerViewForPersonDetailInteractionTargetingIconView:v6];
  v11 = [(SBHIconManager *)self _homeScreenContentViewForPersonDetailInteractionTargetingIconView:v6];
  [v11 bounds];
  [v11 convertRect:v10 toView:?];
  v16 = [[SBHPeopleWidgetPersonDetailInteractionContext alloc] initWithPersonURL:v7 sourceIconView:v8 referenceIconView:v6 containerViewController:v9 containerView:v10 homeScreenContentView:v11 homeScreenContentFrame:v12, v13, v14, v15];

  return v16;
}

- (id)widgetInsertionRippleIconAnimatorForIcon:(id)a3 iconListView:(id)a4 withReferenceIconView:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9 || (-[SBHIconManager rootFolder](self, "rootFolder"), v11 = objc_claimAutoreleasedReturnValue(), [v11 indexPathForIcon:v8], v12 = objc_claimAutoreleasedReturnValue(), -[SBHIconManager iconListViewForIndexPath:](self, "iconListViewForIndexPath:", v12), v9 = objc_claimAutoreleasedReturnValue(), v12, v11, v9))
  {
    v13 = [v9 iconLocation];
    if (SBIconLocationGroupContainsLocation(@"SBIconLocationGroupRoot", v13))
    {
      v14 = [(SBHIconManager *)self dockListView];
    }

    else
    {
      v14 = 0;
    }

    v15 = [v13 isEqualToString:@"SBIconLocationStackConfiguration"];
    v16 = [(SBHIconManager *)self listLayoutProvider];
    v17 = [v16 layoutForIconLocation:@"SBIconLocationRoot"];

    v18 = [SBHWidgetInsertionRippleIconAnimator alloc];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __94__SBHIconManager_widgetInsertionRippleIconAnimatorForIcon_iconListView_withReferenceIconView___block_invoke;
    v21[3] = &unk_1E8088C90;
    v21[4] = self;
    v19 = [(SBHWidgetInsertionRippleIconAnimator *)v18 initWithIconListView:v9 widgetIcon:v8 referenceLayout:v17 referenceIconView:v10 additionalIconListView:v14 preludeBlock:v21];
    [(SBHWidgetInsertionRippleIconAnimator *)v19 setKeepsJumpingIconAboveListViewAsLongAsPossible:v15];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)_willAnimateWidgetInsertion
{
  v3 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 iconManagerWillAnimateWidgetInsertion:self];
  }
}

- (void)popModalInteraction
{
  v4 = [(SBHIconManager *)self currentConfiguringIconView];
  [v4 popConfigurationCard];
  [v4 popStackConfigurationCard];
  v3 = [(SBHIconManager *)self currentPersonDetailInteraction];
  [v3 endInteractionAnimated:1];
}

- (void)dismissModalInteractions
{
  v4 = [(SBHIconManager *)self currentConfiguringIconView];
  [v4 dismissConfigurationCard];
  [v4 dismissStackConfigurationCard];
  [(SBHIconManager *)self setIconStylePickerVisible:0];
  v3 = [(SBHIconManager *)self currentPersonDetailInteraction];
  [v3 endInteractionAnimated:1];
}

- (void)dismissModalInteractionsImmediately
{
  v4 = [(SBHIconManager *)self currentConfiguringIconView];
  [v4 dismissConfigurationCardImmediately];
  [v4 dismissStackConfigurationCardImmediately];
  [(SBHIconManager *)self _dismissStylePickerViewControllerImmediately];
  v3 = [(SBHIconManager *)self currentPersonDetailInteraction];
  [v3 endInteractionAnimated:0];
}

- (void)iconView:(id)a3 didChangeCustomImageViewController:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(NSMapTable *)self->_widgetViewControllersForIconView objectForKey:v10];
  if (v7 == v6)
  {
    [(NSMapTable *)self->_widgetViewControllersForIconView removeObjectForKey:v10];
  }

  [(NSMapTable *)self->_iconViewsForCustomIconImageViewController removeObjectForKey:v6];
  v8 = [v10 customIconImageViewController];
  [(SBHIconManager *)self _updateIconView:v10 forCustomIconImageViewController:v8];
  [(SBHIconManager *)self _updateCaptureOnlyBackgroundViewForCustomIconImageViewController:v8];
  if ([v8 sbh_isWidgetStackViewController])
  {
    v9 = v8;
    [v9 setDelegate:self];
    [v9 setDataSource:self];
  }
}

- (void)_updateIconView:(id)a3 forCustomIconImageViewController:(id)a4
{
  v10 = a3;
  v6 = a4;
  iconViewsForCustomIconImageViewController = self->_iconViewsForCustomIconImageViewController;
  if (!iconViewsForCustomIconImageViewController)
  {
    v8 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    v9 = self->_iconViewsForCustomIconImageViewController;
    self->_iconViewsForCustomIconImageViewController = v8;

    iconViewsForCustomIconImageViewController = self->_iconViewsForCustomIconImageViewController;
  }

  [(NSMapTable *)iconViewsForCustomIconImageViewController setObject:v10 forKey:v6];
}

- (void)_updateWidgetMultiplexingViewController:(id)a3 forIconView:(id)a4
{
  v10 = a3;
  v6 = a4;
  iconViewsForWidgetMultiplexingViewController = self->_iconViewsForWidgetMultiplexingViewController;
  if (!iconViewsForWidgetMultiplexingViewController)
  {
    v8 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    v9 = self->_iconViewsForWidgetMultiplexingViewController;
    self->_iconViewsForWidgetMultiplexingViewController = v8;

    iconViewsForWidgetMultiplexingViewController = self->_iconViewsForWidgetMultiplexingViewController;
  }

  [(NSMapTable *)iconViewsForWidgetMultiplexingViewController setObject:v6 forKey:v10];
}

- (void)iconView:(id)a3 didDiscardCustomImageViewController:(id)a4
{
  v17 = a4;
  if ([v17 sbh_isWidgetStackViewController])
  {
    v5 = v17;
    [v5 setDelegate:0];
    [v5 setDataSource:0];
  }

  v6 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = v17;
    v9 = [(SBHIconManager *)self _effectiveWidgetMultiplexingManager];
    v10 = [v8 multiplexingViewController];
    [v9 discardMultiplexingViewController:v10];

    iconViewsForWidgetMultiplexingViewController = self->_iconViewsForWidgetMultiplexingViewController;
    v12 = [v8 multiplexingViewController];
    [(NSMapTable *)iconViewsForWidgetMultiplexingViewController removeObjectForKey:v12];

    [v8 setDelegate:0];
  }

  v13 = objc_opt_self();
  v14 = objc_opt_isKindOfClass();

  if (v14)
  {
    v15 = [v17 contentViewController];
    if ([v15 sbh_isWidgetHostViewController])
    {
      [v15 invalidate];
    }
  }

  v16 = [v17 parentViewController];
  [v16 bs_removeChildViewController:v17];

  [(NSMapTable *)self->_iconViewsForCustomIconImageViewController removeObjectForKey:v17];
}

- (void)iconView:(id)a3 dropSessionDidEnter:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 iconManager:self iconView:v8 contentDropSessionDidEnter:v6];
  }
}

- (void)iconView:(id)a3 dropSessionDidExit:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 iconManager:self iconView:v8 contentDropSessionDidExit:v6];
  }
}

- (BOOL)contextMenuManager:(id)a3 shouldBeginContextMenuPresentationForIconView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBHIconManager *)self reasonToDisallowInteractionOnIconView:v7];
  if (v8 || ([(SBHIconManager *)self previewInteractingIconView], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else if (![(SBHIconManager *)self isEditing])
  {
    v11 = [(SBHIconManager *)self currentTransitionAnimator];

    if (!v11)
    {
      v12 = [v7 icon];
      v13 = [v12 isFolderIcon];

      if (!v13 || (WeakRetained = objc_loadWeakRetained(&self->_pendingFolderIconToOpen), WeakRetained, !WeakRetained))
      {
        [(SBHIconManager *)self _setupApplicationShortcutItemsForPresentation:v7];
        v9 = 1;
        goto LABEL_5;
      }
    }
  }

  v9 = 0;
LABEL_5:

  return v9;
}

- (id)contextMenuManager:(id)a3 containerViewForPresentingContextMenuForIconView:(id)a4
{
  v5 = a4;
  v6 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 iconManager:self containerViewForPresentingContextMenuForIconView:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)contextMenuManager:(id)a3 iconView:(id)a4 willUseContextMenuStyle:(id)a5
{
  v9 = a4;
  v7 = a5;
  v8 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 iconManager:self iconView:v9 willUseContextMenuStyle:v7];
  }
}

- (unint64_t)contextMenuManager:(id)a3 supportedMultitaskingShortcutActionsForIconView:(id)a4
{
  v5 = a4;
  v6 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 iconManager:self supportedMultitaskingShortcutActionsForIconView:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)contextMenuManager:(id)a3 shouldPreviewOverlapMenuForIconView:(id)a4
{
  v5 = a4;
  v6 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 iconManager:self shouldPreviewOverlapMenuForIconView:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)contextMenuManager:(id)a3 orderedActionContextMenuProvidersForIconView:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a4 location];
  v7 = SBIconLocationGroupContainsLocation(@"SBIconLocationGroupFloatingDock", v6);

  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = v5;
    v13 = [v5 contextMenuActionProviders];
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v24 + 1) + 8 * i);
          v19 = [v18 contextMenuActionSectionType];
          if (v19 == 1)
          {
            v20 = v10;
          }

          else
          {
            v20 = v12;
          }

          if (v19 == 2)
          {
            v20 = v11;
          }

          if (v19 == 3)
          {
            v21 = v9;
          }

          else
          {
            v21 = v20;
          }

          [v21 addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v15);
    }

    [v8 addObjectsFromArray:v12];
    [v8 addObjectsFromArray:v11];
    [v8 addObjectsFromArray:v10];
    [v8 addObjectsFromArray:v9];

    v5 = v23;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)contextMenuManager:(id)a3 preferredMenuElementOrderForIconView:(id)a4
{
  v5 = a4;
  v6 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 iconManager:self preferredMenuElementOrderForIconView:v5];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)iconView:(id)a3 applicationShortcutItemsWithProposedItems:(id)a4
{
  v6 = a4;
  v7 = [a3 location];
  v8 = MEMORY[0x1E696AE18];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __69__SBHIconManager_iconView_applicationShortcutItemsWithProposedItems___block_invoke;
  v16 = &unk_1E80903B8;
  v17 = self;
  v18 = v7;
  v9 = v7;
  v10 = [v8 predicateWithBlock:&v13];
  v11 = [v6 filteredArrayUsingPredicate:{v10, v13, v14, v15, v16, v17}];

  return v11;
}

uint64_t __69__SBHIconManager_iconView_applicationShortcutItemsWithProposedItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 type];
  v5 = [v4 isEqualToString:@"com.apple.springboardhome.application-shortcut-item.rearrange-icons"];

  if (!v5)
  {
LABEL_6:
    v7 = [v3 type];
    v8 = [v7 isEqualToString:@"com.apple.springboardhome.application-shortcut-item.delete-app"];

    if (!v8 || [*(a1 + 32) isRootFolderContentVisible])
    {
      v6 = 1;
      goto LABEL_10;
    }

LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  if (![*(a1 + 32) isRootFolderContentVisible])
  {
    goto LABEL_9;
  }

  if (!SBIconLocationGroupContainsLocation(@"SBIconLocationGroupTodayView", *(a1 + 40)))
  {
    if (SBIconLocationGroupContainsLocation(@"SBIconLocationGroupAppLibrary", *(a1 + 40)))
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v6 = [*(a1 + 32) isOverlayCoverSheetTodayViewVisible] ^ 1;
LABEL_10:

  return v6;
}

- (BOOL)iconView:(id)a3 shouldActivateApplicationShortcutItem:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(SBHIconManager *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v10 iconManager:self shouldActivateApplicationShortcutItem:v9 atIndex:a5 forIconView:v8] || (WeakRetained = objc_loadWeakRetained(&self->_pendingFolderIconToOpen), WeakRetained, WeakRetained))
  {
    v12 = 0;
  }

  else
  {
    [(SBHIconManager *)self setPreviewInteractingIconView:0];
    v12 = 1;
  }

  return v12;
}

- (BOOL)shouldGroupSystemApplicationShortcutItemsForIconView:(id)a3 atLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 iconManager:self shouldGroupSystemApplicationShortcutItemsForIconView:v7];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(SBHIconViewContextMenuManager *)self->_contextMenuManager shouldGroupSystemApplicationShortcutItemsForIconView:v7 atLocation:x, y];

  return v10 & v9;
}

- (id)applicationShortcutSectionOrderingForIconView:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconManager:self applicationShortcutSectionOrderingForIconView:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)dataSourceForOpenApplicationWindowsContextMenuProvider:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconManager:self dataSourceForOpenApplicationWindowsContextMenuProvider:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)openApplicationWindowsContextMenuProvider:(id)a3 canProvideContextMenuSectionsForBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 iconManager:self openApplicationWindowsContextMenuProvider:v6 canProvideContextMenuSectionsForBundleIdentifier:v7];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)recentDocumentsContextMenuProvider:(id)a3 canProvideContextMenuSectionsForBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 iconManager:self recentDocumentsContextMenuProvider:v6 canProvideContextMenuSectionsForBundleIdentifier:v7];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)requestDeleteFileStackIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconManager:self requestDeleteFileStackIcon:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_beginObservingLeafIconsInModel:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = objc_opt_self();
  v6 = [v4 iconsOfClass:{v5, 0}];

  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) addObserver:self];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_endObservingLeafIconsInModel:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = objc_opt_self();
  v6 = [v4 iconsOfClass:{v5, 0}];

  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) removeObserver:self];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (unint64_t)viewMap:(id)a3 maxRecycledViewsOfClass:(Class)a4
{
  v5 = a3;
  v6 = [(SBHIconManager *)self iconViewMap];

  if (v6 == v5 || ([(SBHIconManager *)self homescreenIconAccessoryViewMap], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == v5) || ([(SBHIconManager *)self homescreenIconLabelAccessoryViewMap], v8 = objc_claimAutoreleasedReturnValue(), v8, v8 == v5))
  {
    maxIconViewsInHierarchy = self->_maxIconViewsInHierarchy;
  }

  else
  {
    v9 = [(SBHIconManager *)self homescreenIconImageViewMap];

    if (v9 == v5)
    {
      maxIconViewsInHierarchy = -1;
    }

    else
    {
      v10 = [(SBHIconManager *)self widgetBackgroundViewMap];

      if (v10 == v5)
      {
        maxIconViewsInHierarchy = 10;
      }

      else
      {
        maxIconViewsInHierarchy = 0;
      }
    }
  }

  return maxIconViewsInHierarchy;
}

- (id)recycledViewsContainerProviderForViewMap:(id)a3
{
  v4 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 recycledViewsContainerProviderForIconManager:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)viewMap:(id)a3 makeNewViewOfClass:(Class)a4
{
  v6 = a3;
  v7 = [(SBHIconManager *)self widgetBackgroundViewMap];

  if (v7 == v6)
  {
    v10 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:0];
    v11 = [SBIconView componentBackgroundViewOfType:4 compatibleWithTraitCollection:v10 initialWeighting:1.0];
  }

  else
  {
    v8 = objc_opt_self();

    if (v8 != a4)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v12 = [SBIconView alloc];
    v10 = [(SBHIconManager *)self listLayoutProvider];
    v11 = [(SBIconView *)v12 initWithConfigurationOptions:0 listLayoutProvider:v10];
  }

  v9 = v11;

LABEL_7:

  return v9;
}

- (BOOL)viewMap:(id)a3 shouldRecycleView:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    LOBYTE(self) = [(SBHIconManager *)self shouldRecycleIconView:v7];
  }

  else
  {
    v8 = [(SBHIconManager *)self widgetBackgroundViewMap];

    if (v8 == v6)
    {
      LODWORD(self) = [v7 _wantsAutolayout] ^ 1;
    }

    else
    {
      LOBYTE(self) = 1;
    }
  }

  return self;
}

- (void)enumerateIconViewQueryableChildrenWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v74 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  v53 = v6;
  if ((a3 & 0x20) == 0 || (a3 &= ~0x20uLL, v69 = 0, v70 = &v69, v71 = 0x2020000000, v72 = 0, v66[0] = MEMORY[0x1E69E9820], v66[1] = 3221225472, v66[2] = __75__SBHIconManager_enumerateIconViewQueryableChildrenWithOptions_usingBlock___block_invoke, v66[3] = &unk_1E80903E0, v67 = v6, v68 = &v69, [(SBHIconManager *)self enumerateIconViewQueryableChildrenWithOptions:a3 | 0x40 usingBlock:v66], v8 = *(v70 + 24), v67, _Block_object_dispose(&v69, 8), v7 = v53, (v8 & 1) == 0))
  {
    v69 = 0;
    v70 = &v69;
    if (((a3 & 3) != 0) | a3 & 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = (a3 >> 3) & 1;
    }

    v71 = 0x2020000000;
    v72 = 0;
    v10 = [(SBHIconManager *)self floatingDockViewController];
    v11 = (a3 & 0x80) != 0 || [(SBHIconManager *)self isFloatingDockVisible];
    v12 = v9 ^ 1;
    if (v10)
    {
      if ((v12 | v11))
      {
        v13 = v70;
        *(v70 + 24) = 0;
        (v7)[2](v7, v10, a3, v13 + 3);
        if (v70[3])
        {
          goto LABEL_75;
        }
      }
    }

    if ((a3 & 3) != 0 && [(SBHIconManager *)self isShowingModalInteraction])
    {
      goto LABEL_75;
    }

    v14 = [(SBHIconManager *)self leadingTodayViewController];
    v15 = [(SBHIconManager *)self overlayTodayViewController];
    v51 = v15;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    v17 = v16;
    v18 = [(SBHIconManager *)self isTodayViewEffectivelyVisible];
    v52 = v10;
    v50 = v14;
    if (v14)
    {
      v19 = [v14 isSpotlightVisible];
    }

    else
    {
      v19 = [v51 isSpotlightVisible];
    }

    if (v17)
    {
      if ((v9 & (!v18 | v19) & 1) == 0)
      {
        v23 = v70;
        *(v70 + 24) = 0;
        (v7)[2](v7, v17, a3, v23 + 3);
        if (v70[3] & 1) != 0 || (v62[0] = MEMORY[0x1E69E9820], v62[1] = 3221225472, v62[2] = __75__SBHIconManager_enumerateIconViewQueryableChildrenWithOptions_usingBlock___block_invoke_2, v62[3] = &unk_1E8090408, v63 = v7, v64 = &v69, v65 = a3, [(SBHIconManager *)self enumerateAppPredictionViewControllersInIconLocationGroup:@"SBIconLocationGroupTodayView" withOptions:a3 usingBlock:v62], v63, v7 = v53, (v70[3]))
        {
LABEL_74:

          v10 = v52;
LABEL_75:

          _Block_object_dispose(&v69, 8);
          v7 = v53;
          goto LABEL_76;
        }
      }
    }

    v49 = v17;
    if ([(SBHIconManager *)self isShowingOrTransitioningToTrailingCustomView])
    {
      if (v10)
      {
        v20 = 1;
        goto LABEL_26;
      }

      v21 = [(SBHIconManager *)self trailingLibraryViewController];
      v20 = 1;
    }

    else
    {
      v20 = [(SBHIconManager *)self isMainDisplayLibraryViewVisible];
      if (v10)
      {
LABEL_26:
        v21 = [v10 libraryViewController];
        v22 = [v10 isPresentingLibrary];
        if (!v21)
        {
          goto LABEL_39;
        }

LABEL_34:
        if (v22 && ((v12 | v20) & 1) != 0)
        {
          v24 = v70;
          *(v70 + 24) = 0;
          (v7)[2](v7, v21, a3, v24 + 3);
          if ((v70[3] & 1) != 0 || (a3 & 3) != 0 && (v18 || v20))
          {
            goto LABEL_73;
          }

          goto LABEL_41;
        }

LABEL_39:
        if ((a3 & 3) != 0 && (v18 || v20))
        {
          goto LABEL_73;
        }

LABEL_41:
        v25 = [(SBHIconManager *)self contentVisibility];
        if ((a3 & 5) == 1 && v25 - 3 >= 0xFFFFFFFFFFFFFFFELL)
        {
          goto LABEL_73;
        }

        v26 = [(SBHIconManager *)self _currentFolderController];
        v48 = v21;
        if (self->_closingFolder || [(SBHIconManager *)self isPerformingCancelledExpandTransition])
        {
          v27 = [(SBHIconManager *)self rootFolderController];

          v26 = v27;
        }

        if (!v26)
        {
          goto LABEL_52;
        }

        v28 = v70;
        *(v70 + 24) = 0;
        (v53)[2](v53, v26, a3, v28 + 3);
        if (a3 & 1) == 0 || (v70[3])
        {
          if ((v70[3] & 1) == 0)
          {
LABEL_52:
            v31 = [(SBHIconManager *)self rootViewController];
            v32 = v31;
            if (v26 || !v31 || (v33 = v70, *(v70 + 24) = 0, (v53)[2](v53, v31, a3, v33 + 3), (v70[3] & 1) == 0))
            {
              if ((a3 & 0x40) != 0 || (*(v70 + 24) = 0, v58[0] = MEMORY[0x1E69E9820], v58[1] = 3221225472, v58[2] = __75__SBHIconManager_enumerateIconViewQueryableChildrenWithOptions_usingBlock___block_invoke_3, v58[3] = &unk_1E8090408, v59 = v53, v60 = &v69, v61 = a3, [(SBHIconManager *)self enumerateAppPredictionViewControllersInIconLocationGroup:@"SBIconLocationGroupRoot" withOptions:a3 usingBlock:v58], v34 = *(v70 + 24), v59, (v34 & 1) == 0))
              {
                v56 = 0u;
                v57 = 0u;
                v54 = 0u;
                v55 = 0u;
                v35 = [(SBHIconManager *)self trailingCustomViewControllers];
                v36 = [v35 countByEnumeratingWithState:&v54 objects:v73 count:16];
                v47 = v32;
                if (v36)
                {
                  v37 = *v55;
LABEL_59:
                  v38 = 0;
                  while (1)
                  {
                    if (*v55 != v37)
                    {
                      objc_enumerationMutation(v35);
                    }

                    v39 = *(*(&v54 + 1) + 8 * v38);
                    if (objc_opt_respondsToSelector())
                    {
                      v40 = [(SBHIconManager *)self rootFolderController];
                      v41 = [v40 pageState] == 4;

                      if (v41)
                      {
                        v42 = [v39 iconViewQueryable];
                        v43 = (objc_opt_respondsToSelector() & 1) != 0 ? v42 : 0;
                        v44 = v43;

                        v45 = v70;
                        *(v70 + 24) = 0;
                        (v53)[2](v53, v44, a3, v45 + 3);
                        v46 = *(v70 + 24);

                        if (v46)
                        {
                          break;
                        }
                      }
                    }

                    if (v36 == ++v38)
                    {
                      v36 = [v35 countByEnumeratingWithState:&v54 objects:v73 count:16];
                      if (v36)
                      {
                        goto LABEL_59;
                      }

                      break;
                    }
                  }
                }

                v32 = v47;
              }
            }
          }
        }

        else
        {
          v29 = [(SBHIconManager *)self rootFolderController];
          v30 = v26 == v29;

          if (v30)
          {
            goto LABEL_52;
          }
        }

        v21 = v48;
LABEL_73:

        v17 = v49;
        goto LABEL_74;
      }

      v21 = [(SBHIconManager *)self overlayLibraryViewController];
    }

    v22 = 1;
    if (!v21)
    {
      goto LABEL_39;
    }

    goto LABEL_34;
  }

LABEL_76:
}

uint64_t __75__SBHIconManager_enumerateIconViewQueryableChildrenWithOptions_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t __75__SBHIconManager_enumerateIconViewQueryableChildrenWithOptions_usingBlock___block_invoke_3(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

- (void)enumerateAppPredictionViewControllersInIconLocationGroup:(id)a3 withOptions:(unint64_t)a4 usingBlock:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __98__SBHIconManager_enumerateAppPredictionViewControllersInIconLocationGroup_withOptions_usingBlock___block_invoke;
  v10[3] = &unk_1E8090430;
  v11 = v8;
  v9 = v8;
  [(SBHIconManager *)self enumerateAppPredictionViewControllersWithIconViewsInIconLocationGroup:a3 withOptions:a4 usingBlock:v10];
}

- (void)enumerateAppPredictionViewControllersWithIconViewsInIconLocationGroup:(id)a3 withOptions:(unint64_t)a4 usingBlock:(id)a5
{
  v6 = a4;
  v28 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v20 = a5;
  v26 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [(SBHIconManager *)self _effectiveAppPredictionViewControllersForUniqueIdentifier];
  v9 = [v8 objectEnumerator];

  v10 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [(SBHIconManager *)self _effectiveWidgetMultiplexingManager];
        v16 = [v15 activeMultiplexingViewControllerForViewController:v14];

        v17 = [(NSMapTable *)self->_iconViewsForWidgetMultiplexingViewController objectForKey:v16];
        v18 = v17;
        if (v17)
        {
          if ((v6 & 1) == 0 || ([v17 effectiveIconImageAlpha], (BSFloatIsZero() & 1) == 0) && objc_msgSend(v18, "_isInAWindow"))
          {
            v19 = [v18 location];
            if (SBIconLocationGroupContainsLocation(v21, v19))
            {
              v26 = 0;
              v20[2](v20, v14, v18, &v26);
              if (v26 == 1)
              {

                goto LABEL_17;
              }
            }
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
}

- (void)enumerateIconViewsDisplayedInAppPredictionsInLocationGroup:(id)a3 withOptions:(unint64_t)a4 usingBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 isEqualToString:@"SBIconLocationGroupTodayView"])
  {
    v10 = [(SBHIconManager *)self _effectiveTodayViewController];
    if (!v10 || (a4 & 1) != 0 && ![(SBHIconManager *)self isTodayViewEffectivelyVisible])
    {

      goto LABEL_8;
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __100__SBHIconManager_enumerateIconViewsDisplayedInAppPredictionsInLocationGroup_withOptions_usingBlock___block_invoke;
  v11[3] = &unk_1E8090430;
  v12 = v9;
  [(SBHIconManager *)self enumerateAppPredictionViewControllersWithIconViewsInIconLocationGroup:v8 withOptions:a4 usingBlock:v11];

LABEL_8:
}

void __100__SBHIconManager_enumerateIconViewsDisplayedInAppPredictionsInLocationGroup_withOptions_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __100__SBHIconManager_enumerateIconViewsDisplayedInAppPredictionsInLocationGroup_withOptions_usingBlock___block_invoke_2;
  v6[3] = &unk_1E8090458;
  v7 = *(a1 + 32);
  v8 = a4;
  [a2 enumerateDisplayedIconViewsUsingBlock:v6];
}

uint64_t __100__SBHIconManager_enumerateIconViewsDisplayedInAppPredictionsInLocationGroup_withOptions_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (*a3 == 1)
  {
    **(a1 + 40) = 1;
  }

  return result;
}

- (id)appPredictionsIconViewDisplayingIconView:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__23;
  v23 = __Block_byref_object_dispose__23;
  v24 = 0;
  v7 = [(SBHIconManager *)self _effectiveTodayViewController];
  if (v7 && ((a4 & 1) == 0 || [(SBHIconManager *)self isTodayViewEffectivelyVisible]))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __67__SBHIconManager_appPredictionsIconViewDisplayingIconView_options___block_invoke;
    v15[3] = &unk_1E8090480;
    v16 = v6;
    v17 = &v19;
    v18 = a4;
    [(SBHIconManager *)self enumerateAppPredictionViewControllersWithIconViewsInIconLocationGroup:@"SBIconLocationGroupTodayView" withOptions:a4 usingBlock:v15];
  }

  v8 = v20[5];
  if (!v8)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__SBHIconManager_appPredictionsIconViewDisplayingIconView_options___block_invoke_2;
    v11[3] = &unk_1E8090480;
    v12 = v6;
    v13 = &v19;
    v14 = a4;
    [(SBHIconManager *)self enumerateAppPredictionViewControllersWithIconViewsInIconLocationGroup:@"SBIconLocationGroupRoot" withOptions:a4 usingBlock:v11];

    v8 = v20[5];
  }

  v9 = v8;

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __67__SBHIconManager_appPredictionsIconViewDisplayingIconView_options___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if (SBIconViewQueryingDisplayingIconView(a2, *(a1 + 32), *(a1 + 48)))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

void __67__SBHIconManager_appPredictionsIconViewDisplayingIconView_options___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if (SBIconViewQueryingDisplayingIconView(a2, *(a1 + 32), *(a1 + 48)))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (id)appPredictionViewControllerForIconView:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__23;
  v19 = __Block_byref_object_dispose__23;
  v20 = 0;
  v5 = [(SBHIconManager *)self _effectiveTodayViewController];
  if (v5)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__SBHIconManager_appPredictionViewControllerForIconView___block_invoke;
    v12[3] = &unk_1E80904A8;
    v13 = v4;
    v14 = &v15;
    [(SBHIconManager *)self enumerateAppPredictionViewControllersInIconLocationGroup:@"SBIconLocationGroupTodayView" withOptions:0 usingBlock:v12];
  }

  v6 = v16[5];
  if (!v6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__SBHIconManager_appPredictionViewControllerForIconView___block_invoke_2;
    v9[3] = &unk_1E80904A8;
    v10 = v4;
    v11 = &v15;
    [(SBHIconManager *)self enumerateAppPredictionViewControllersInIconLocationGroup:@"SBIconLocationGroupRoot" withOptions:0 usingBlock:v9];

    v6 = v16[5];
  }

  v7 = v6;

  _Block_object_dispose(&v15, 8);

  return v7;
}

void __57__SBHIconManager_appPredictionViewControllerForIconView___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if (SBIconViewQueryingDisplayingIconView(v6, *(a1 + 32), 0))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void __57__SBHIconManager_appPredictionViewControllerForIconView___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if (SBIconViewQueryingDisplayingIconView(v6, *(a1 + 32), 0))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (void)refreshAppPredictionBadges
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(SBHIconManager *)self _effectiveAppPredictionViewControllersForUniqueIdentifier];
  v3 = [v2 objectEnumerator];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) enumerateDisplayedIconViewsUsingBlock:&__block_literal_global_880];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void __44__SBHIconManager_refreshAppPredictionBadges__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 icon];
  [v2 noteBadgeDidChange];
}

- (void)updateAppPredictionViewControllersWithListLayoutProvider:(id)a3 oldListLayoutProvider:(id)a4 animated:(BOOL)a5
{
  appPredictionViewControllersForUniqueIdentifier = self->_appPredictionViewControllersForUniqueIdentifier;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __106__SBHIconManager_updateAppPredictionViewControllersWithListLayoutProvider_oldListLayoutProvider_animated___block_invoke;
  v6[3] = &unk_1E80904D0;
  v6[4] = self;
  v7 = a5;
  [(NSMutableDictionary *)appPredictionViewControllersForUniqueIdentifier enumerateKeysAndObjectsUsingBlock:v6, a4];
}

- (void)updateLargeIconsEnabledForAppPredictionViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [v6 setLargeIconsEnabled:(-[SBHIconManager listLayoutProviderLayoutOptions](self animated:{"listLayoutProviderLayoutOptions") >> 3) & 1, v4}];
}

- (id)iconViewForIcon:(id)a3 location:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__23;
  v22 = __Block_byref_object_dispose__23;
  v23 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__SBHIconManager_iconViewForIcon_location_options___block_invoke;
  v14[3] = &unk_1E80904F8;
  v10 = v9;
  v15 = v10;
  v17 = &v18;
  v11 = v8;
  v16 = v11;
  [(SBHIconManager *)self enumerateIconViewQueryableChildrenWithOptions:a5 usingBlock:v14];
  v12 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v12;
}

void __51__SBHIconManager_iconViewForIcon_location_options___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  if ([v10 isPresentingIconLocation:*(a1 + 32)])
  {
    v7 = SBIconViewQueryingIconViewForIconInLocation(v10, *(a1 + 40), *(a1 + 32), a3);
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    *a4 = 1;
  }
}

- (id)firstIconViewForIcon:(id)a3 inLocations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__23;
  v20 = __Block_byref_object_dispose__23;
  v21 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__SBHIconManager_firstIconViewForIcon_inLocations___block_invoke;
  v12[3] = &unk_1E8090520;
  v15 = &v16;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  [(SBHIconManager *)self enumerateIconViewQueryableChildrenUsingBlock:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __51__SBHIconManager_firstIconViewForIcon_inLocations___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 firstIconViewForIcon:a1[4] inLocations:a1[5]];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(a1[6] + 8) + 40))
  {
    *a4 = 1;
  }
}

- (id)firstIconViewWithOptions:(unint64_t)a3 iconPassingTest:(id)a4
{
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__23;
  v19 = __Block_byref_object_dispose__23;
  v20 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__SBHIconManager_firstIconViewWithOptions_iconPassingTest___block_invoke;
  v11[3] = &unk_1E8090548;
  v13 = &v15;
  v14 = a2;
  v8 = v7;
  v12 = v8;
  [(SBHIconManager *)self enumerateIconViewQueryableChildrenWithOptions:a3 usingBlock:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __59__SBHIconManager_firstIconViewWithOptions_iconPassingTest___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = objc_opt_respondsToSelector();
  if (v7)
  {
    v8 = [v9 firstIconViewWithOptions:a3 iconPassingTest:*(a1 + 32)];
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
  if (v7)
  {
  }

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

- (id)firstIconViewForIcon:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__23;
  v15 = __Block_byref_object_dispose__23;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__SBHIconManager_firstIconViewForIcon___block_invoke;
  v8[3] = &unk_1E8090570;
  v10 = &v11;
  v5 = v4;
  v9 = v5;
  [(SBHIconManager *)self enumerateIconViewQueryableChildrenWithOptions:1 usingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __39__SBHIconManager_firstIconViewForIcon___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 firstIconViewForIcon:*(a1 + 32)];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

- (id)firstIconViewForIcon:(id)a3 excludingLocations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__23;
  v20 = __Block_byref_object_dispose__23;
  v21 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__SBHIconManager_firstIconViewForIcon_excludingLocations___block_invoke;
  v12[3] = &unk_1E8090520;
  v15 = &v16;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  [(SBHIconManager *)self enumerateIconViewQueryableChildrenWithOptions:1 usingBlock:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __58__SBHIconManager_firstIconViewForIcon_excludingLocations___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 firstIconViewForIcon:a1[4] excludingLocations:a1[5]];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(a1[6] + 8) + 40))
  {
    *a4 = 1;
  }
}

- (BOOL)isDisplayingIcon:(id)a3 inLocation:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__SBHIconManager_isDisplayingIcon_inLocation_options___block_invoke;
  v13[3] = &unk_1E80904F8;
  v10 = v9;
  v14 = v10;
  v16 = &v17;
  v11 = v8;
  v15 = v11;
  [(SBHIconManager *)self enumerateIconViewQueryableChildrenWithOptions:a5 usingBlock:v13];
  LOBYTE(a5) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return a5;
}

void __54__SBHIconManager_isDisplayingIcon_inLocation_options___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 isPresentingIconLocation:*(a1 + 32)])
  {
    *(*(*(a1 + 48) + 8) + 24) = SBIconViewQueryingDisplayingIconInLocation(v7, *(a1 + 40), *(a1 + 32), a3);
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

- (BOOL)isDisplayingIconView:(id)a3 inLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__SBHIconManager_isDisplayingIconView_inLocation___block_invoke;
  v11[3] = &unk_1E80904F8;
  v8 = v7;
  v12 = v8;
  v14 = &v15;
  v9 = v6;
  v13 = v9;
  [(SBHIconManager *)self enumerateIconViewQueryableChildrenUsingBlock:v11];
  LOBYTE(self) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return self;
}

void __50__SBHIconManager_isDisplayingIconView_inLocation___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 isPresentingIconLocation:a1[4]])
  {
    *(*(a1[6] + 8) + 24) = [v6 isDisplayingIconView:a1[5] inLocation:a1[4]];
  }

  if (*(*(a1[6] + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

- (BOOL)isDisplayingIcon:(id)a3 inLocations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__SBHIconManager_isDisplayingIcon_inLocations___block_invoke;
  v11[3] = &unk_1E80904F8;
  v8 = v7;
  v12 = v8;
  v14 = &v15;
  v9 = v6;
  v13 = v9;
  [(SBHIconManager *)self enumerateIconViewQueryableChildrenUsingBlock:v11];
  LOBYTE(self) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return self;
}

void __47__SBHIconManager_isDisplayingIcon_inLocations___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if ([v6 isPresentingIconLocation:{v12, v13}])
        {
          *(*(*(a1 + 48) + 8) + 24) = [v6 isDisplayingIcon:*(a1 + 40) inLocation:v12];
        }

        if (*(*(*(a1 + 48) + 8) + 24) == 1)
        {
          *a4 = 1;
          goto LABEL_13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (BOOL)isDisplayingIconView:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__SBHIconManager_isDisplayingIconView___block_invoke;
  v7[3] = &unk_1E8090570;
  v9 = &v10;
  v5 = v4;
  v8 = v5;
  [(SBHIconManager *)self enumerateIconViewQueryableChildrenWithOptions:1 usingBlock:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __39__SBHIconManager_isDisplayingIconView___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isDisplayingIconView:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  return result;
}

- (BOOL)isDisplayingIcon:(id)a3 queryOptions:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v10 = 0;
    if ((v4 & 2) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = [(SBHIconManager *)self rootFolder];
    v8 = [v7 indexPathForIcon:v6];
    v9 = [v7 folderContainingIndexPath:v8 relativeIndexPath:0];
    v10 = [v9 icon];

    if ((v4 & 2) != 0)
    {
LABEL_12:
      if ((v4 & 4) == 0)
      {
        v13 = [(SBHIconManager *)self _effectiveTodayViewController];
        v14 = v13;
        if (v13 && ([v13 isDisplayingIcon:v6] & 1) != 0)
        {

          goto LABEL_22;
        }
      }

      if ([(SBHIconManager *)self isRootFolderContentVisible])
      {
        v15 = [(SBHIconManager *)self _currentFolderController];
        v16 = v15;
        if (v10 && ([v15 isDisplayingIcon:v10] & 1) != 0)
        {

          goto LABEL_22;
        }

        v17 = [v16 isDisplayingIcon:v6];

        if (v17)
        {
          goto LABEL_22;
        }
      }

      v18 = 0;
      goto LABEL_24;
    }
  }

  v11 = [(SBHIconManager *)self floatingDockViewController];

  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = [(SBHIconManager *)self floatingDockViewController];
  if (!-[SBHIconManager isFloatingDockVisible](self, "isFloatingDockVisible") || (!v10 || ([v12 isDisplayingIcon:v10] & 1) == 0) && (objc_msgSend(v12, "isDisplayingIcon:", v6) & 1) == 0)
  {

    goto LABEL_12;
  }

LABEL_22:
  v18 = 1;
LABEL_24:

  return v18;
}

- (id)bestLocationForIcon:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__23;
  v15 = __Block_byref_object_dispose__23;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__SBHIconManager_bestLocationForIcon___block_invoke;
  v8[3] = &unk_1E808E8E8;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(SBHIconManager *)self enumerateIconViewQueryableChildrenUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __38__SBHIconManager_bestLocationForIcon___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a2;
  [v6 presentedIconLocations];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if ([v6 isDisplayingIcon:*(a1 + 32) inLocation:{v12, v13}])
        {
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), v12);
          *a4 = 1;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (id)bestHomeScreenLocationForIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self rootFolder];
  v6 = [v5 indexPathForIcon:v4];

  if (v6)
  {
    if ([v5 isIconAtIndexPathInDock:v6])
    {
      v7 = SBIconLocationDock;
LABEL_4:
      v8 = *v7;
      goto LABEL_8;
    }

    if (([v5 isIconAtIndexPathInTodayList:v6] & 1) == 0 && (objc_msgSend(v5, "isIconAtIndexPathInIgnoredList:", v6) & 1) == 0)
    {
      v10 = [v5 folderContainingIndexPath:v6 relativeIndexPath:0];

      v7 = SBIconLocationFolder;
      if (v10 == v5)
      {
        v7 = SBIconLocationRoot;
      }

      goto LABEL_4;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (id)firstIconViewForIcon:(id)a3 options:(unint64_t)a4
{
  v7 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__23;
  v21 = __Block_byref_object_dispose__23;
  v22 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__SBHIconManager_firstIconViewForIcon_options___block_invoke;
  v14[3] = &unk_1E808E938;
  v16 = &v17;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__SBHIconManager_firstIconViewForIcon_options___block_invoke_2;
  v11[3] = &unk_1E808E960;
  v13 = &v17;
  v8 = v15;
  v12 = v8;
  SBIconViewQueryingHandleMethodRecursion(self, a4, a2, v14, v11);
  v9 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v9;
}

BOOL __47__SBHIconManager_firstIconViewForIcon_options___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [a2 firstIconViewForIcon:*(a1 + 32) options:a3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

BOOL __47__SBHIconManager_firstIconViewForIcon_options___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 firstIconViewForIcon:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (BOOL)isDisplayingIcon:(id)a3 options:(unint64_t)a4
{
  v7 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __43__SBHIconManager_isDisplayingIcon_options___block_invoke;
  v13[3] = &unk_1E808E938;
  v15 = &v16;
  v14 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__SBHIconManager_isDisplayingIcon_options___block_invoke_2;
  v10[3] = &unk_1E808E960;
  v12 = &v16;
  v8 = v14;
  v11 = v8;
  SBIconViewQueryingHandleMethodRecursion(self, a4, a2, v13, v10);
  LOBYTE(a4) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return a4;
}

- (BOOL)isDisplayingIconView:(id)a3 options:(unint64_t)a4
{
  v7 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__SBHIconManager_isDisplayingIconView_options___block_invoke;
  v13[3] = &unk_1E808E938;
  v15 = &v16;
  v14 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__SBHIconManager_isDisplayingIconView_options___block_invoke_2;
  v10[3] = &unk_1E808E960;
  v12 = &v16;
  v8 = v14;
  v11 = v8;
  SBIconViewQueryingHandleMethodRecursion(self, a4, a2, v13, v10);
  LOBYTE(a4) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return a4;
}

- (id)dequeueReusableIconViewOfClass:(Class)a3
{
  v4 = [(SBHIconManager *)self iconViewMap];
  v5 = [v4 dequeueReusableViewOfClass:a3];

  return v5;
}

- (void)recycleIconView:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self iconViewMap];
  [v5 recycleView:v4];
}

- (BOOL)isIconViewRecycled:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self iconViewMap];
  v6 = [v5 isViewRecycled:v4];

  return v6;
}

- (void)configureIconView:(id)a3 forIcon:(id)a4
{
  v10 = a3;
  v6 = a4;
  [v10 setAllowsCloseBox:{-[SBHIconManager iconsShouldAllowCloseBoxes](self, "iconsShouldAllowCloseBoxes")}];
  [v10 setAllowsResizeHandle:1];
  [v10 setDelegate:self];
  [v10 addObserver:self];
  v7 = [v10 location];
  if ((SBIconLocationGroupContainsLocation(@"SBIconLocationGroupRoot", v7) & 1) != 0 || [v7 isEqualToString:@"SBIconLocationFolder"])
  {
    [v10 setDisplaysIconStatusInLabel:1];
  }

  v8 = [(SBHIconManager *)self iconDragManager];
  [v8 configureIconView:v10];
  [v10 setImageLoadingBehavior:1];
  [v10 setPrefersFlatImageLayers:{-[SBHIconManager prefersFlatImageLayers](self, "prefersFlatImageLayers")}];
  v9 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 iconManager:self configureIconView:v10 forIcon:v6];
  }
}

- (BOOL)isPresentingIconLocation:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self _currentFolderController];
  if ([v5 isPresentingIconLocation:v4])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(SBHIconManager *)self floatingDockViewController];
    v8 = v7;
    v6 = 0;
    if (v7)
    {
      [v7 dockOffscreenProgress];
      if (v9 < 1.0 && ([v8 isPresentingIconLocation:v4] & 1) != 0)
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (NSSet)presentedIconLocations
{
  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = [(SBHIconManager *)self _currentFolderController];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 presentedIconLocations];
    [v3 unionSet:v6];
  }

  v7 = [(SBHIconManager *)self floatingDockViewController];
  v8 = v7;
  if (v7)
  {
    [v7 dockOffscreenProgress];
    if (v9 < 1.0)
    {
      v10 = [v8 presentedIconLocations];
      [v3 unionSet:v10];
    }
  }

  return v3;
}

- (Class)controllerClassForFolder:(id)a3
{
  v4 = objc_opt_class();

  return [(SBHIconManager *)self controllerClassForFolderClass:v4];
}

- (Class)controllerClassForFolderClass:(Class)a3
{
  if (a3)
  {
    v5 = objc_opt_self();
    v6 = [(objc_class *)a3 isSubclassOfClass:v5];

    if (v6)
    {
      v7 = objc_opt_class();
    }

    else
    {
      v7 = objc_opt_self();
    }

    v8 = v7;
    v9 = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v8 = [v9 iconManager:self folderControllerClassForFolderClass:a3 proposedClass:v8];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)folderController:(id)a3 canChangeCurrentPageIndexToIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 iconManager:self folderController:v6 canChangeCurrentPageIndexToIndex:a4];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)folderControllerShouldClose:(id)a3 withPinchGesture:(id)a4
{
  v6 = a4;
  v7 = [a3 originatingIconLocation];
  if (v6)
  {
    v8 = [[SBWorkspaceInteractionContext alloc] initWithGestureRecognizer:v6];
  }

  else
  {
    v8 = 0;
  }

  [(SBHIconManager *)self popExpandedIconFromLocation:v7 interactionContext:v8 animated:1 completionHandler:0];

  return 0;
}

- (void)folderControllerShouldBeginEditing:(id)a3 withHaptic:(BOOL)a4
{
  v19 = a3;
  if ([(SBHIconManager *)self isEditingAllowed])
  {
    v6 = [v19 view];
    v7 = [v19 view];
    [v7 center];
    v9 = v8;
    v11 = v10;
    v12 = [(SBHIconManager *)self iconEditingFeedbackBehavior];
    v13 = [v12 view];
    [v6 convertPoint:v13 toView:{v9, v11}];
    v15 = v14;
    v17 = v16;

    if (a4)
    {
      v18 = [(SBHIconManager *)self iconEditingFeedbackBehavior];
      [(SBHIconManager *)self setEditing:1 withFeedbackBehavior:v18 location:v15, v17];
    }

    else
    {
      [(SBHIconManager *)self setEditing:1 withFeedbackBehavior:0 location:v15, v17];
    }
  }
}

- (void)folderControllerWillBeginScrolling:(id)a3
{
  v11 = a3;
  v4 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 iconManager:self folderControllerWillBeginScrolling:v11];
  }

  v5 = [(SBHIconManager *)self iconDragManager];
  [v5 noteFolderBeganScrolling];

  [(SBHIconManager *)self _discardEndEditingTimerAndDontResetUntilReasonIsRemoved:@"FOLDER_IS_BEING_SCROLLED"];
  v6 = [(SBHIconManager *)self rootFolderController];
  [v6 bringWidgetIntroductionPopoverToFront];

  v7 = [(SBHIconManager *)self leadingTodayViewController];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 cancelTouchesOnIconViews];
    v9 = [(SBHIconManager *)self todayViewCancelTouchesScrollingAssertion];
    [v9 invalidate];

    [(SBHIconManager *)self setTodayViewCancelTouchesScrollingAssertion:v8];
  }

  v10 = [(SBHIconManager *)self trailingLibraryViewController];
  if (objc_opt_respondsToSelector())
  {
    [v10 folderControllerWillBeginScrolling:v11];
  }
}

- (void)folderControllerDidEndScrolling:(id)a3
{
  v10 = a3;
  v4 = [(SBHIconManager *)self iconToReveal];

  if (v4)
  {
    [(SBHIconManager *)self finishInstallingIconAnimated:1];
  }

  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 iconManager:self folderControllerDidEndScrolling:v10];
  }

  [(SBHIconManager *)self _removeReasonToNotResetEndEditingTimer:@"FOLDER_IS_BEING_SCROLLED"];
  v6 = [(SBHIconManager *)self rootFolderController];
  [v6 bringWidgetIntroductionPopoverToFront];

  v7 = [(SBHIconManager *)self todayViewCancelTouchesScrollingAssertion];
  [v7 invalidate];

  [(SBHIconManager *)self setTodayViewCancelTouchesScrollingAssertion:0];
  v8 = [(SBHIconManager *)self isShowingOrTransitioningToLeadingCustomView]|| [(SBHIconManager *)self isShowingOrTransitioningToTrailingCustomView];
  [(SBRootFolderController *)self->_rootFolderController setParallaxDisabled:v8 forReason:@"Custom leading/trailing view is not visible"];
  v9 = [(SBHIconManager *)self trailingLibraryViewController];
  if (v9 && ![(SBFolderController *)self->_rootFolderController isEditing])
  {
    [v9 _dismissExpandedPods:-[SBHIconManager isShowingOrTransitioningToTrailingCustomView](self completion:{"isShowingOrTransitioningToTrailingCustomView"), 0}];
  }
}

- (void)_discardEndEditingTimerAndDontResetUntilReasonIsRemoved:(id)a3
{
  v8 = a3;
  if ([(SBHIconManager *)self isEditing])
  {
    if (!self->_reasonsToNotRestartEditingTimer)
    {
      v4 = objc_opt_new();
      reasonsToNotRestartEditingTimer = self->_reasonsToNotRestartEditingTimer;
      self->_reasonsToNotRestartEditingTimer = v4;
    }

    v6 = [(SBHIconManager *)self editingEndTimer];
    if (v6)
    {
      v7 = v6;
      [v6 invalidate];
      [(SBHIconManager *)self setEditingEndTimer:0];
    }

    [(NSCountedSet *)self->_reasonsToNotRestartEditingTimer addObject:v8];
  }
}

- (void)_removeReasonToNotResetEndEditingTimer:(id)a3
{
  v6 = a3;
  v4 = [(SBHIconManager *)self isEditing];
  reasonsToNotRestartEditingTimer = self->_reasonsToNotRestartEditingTimer;
  if (v4)
  {
    [(NSCountedSet *)reasonsToNotRestartEditingTimer removeObject:v6];
    [(SBHIconManager *)self _restartEditingEndTimer];
  }

  else
  {
    self->_reasonsToNotRestartEditingTimer = 0;
  }
}

- (double)minimumHomeScreenScaleForFolderController:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self delegate];
  v6 = 1.0;
  if (objc_opt_respondsToSelector())
  {
    [v5 iconManager:self minimumHomeScreenScaleForFolderController:v4];
    v6 = v7;
  }

  return v6;
}

- (UIEdgeInsets)contentOverlayInsetsFromParentIfAvailableForFolderController:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 iconManager:self contentOverlayInsetsFromParentIfAvailableForFolderController:v4];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = *MEMORY[0x1E69DDCE0];
    v9 = *(MEMORY[0x1E69DDCE0] + 8);
    v11 = *(MEMORY[0x1E69DDCE0] + 16);
    v13 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (void)folderControllerWillOpen:(id)a3
{
  v5 = a3;
  [(SBHIconManager *)self setPreviewInteractingIconView:0];
  [(SBHIconManager *)self _noteUserIsInteractingWithIcons];
  v4 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 iconManager:self willOpenFolderController:v5];
  }
}

- (void)folderControllerWillClose:(id)a3
{
  v5 = a3;
  [(SBHIconManager *)self _noteUserIsInteractingWithIcons];
  v4 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 iconManager:self willCloseFolderController:v5];
  }
}

- (id)folderControllerWantsToHideStatusBar:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 iconManager:self wantsToHideStatusBarForFolderController:v6 animated:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)fakeStatusBarForFolderController:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconManager:self fakeStatusBarForFolderController:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)statusBarStyleRequestForFolderController:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconManager:self statusBarStyleRequestForFolderController:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)folderController:(id)a3 willRemoveFakeStatusBar:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 iconManager:self willRemoveFakeStatusBar:v6 forFolderController:v8];
  }
}

- (UIEdgeInsets)statusBarEdgeInsetsForFolderController:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 iconManager:self statusBarEdgeInsetsForFolderController:v4];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = *MEMORY[0x1E69DDCE0];
    v9 = *(MEMORY[0x1E69DDCE0] + 8);
    v11 = *(MEMORY[0x1E69DDCE0] + 16);
    v13 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (void)folderController:(id)a3 willUseIconTransitionAnimator:(id)a4 forOperation:(int64_t)a5 onViewController:(id)a6 animated:(BOOL)a7
{
  v8 = a4;
  [v8 setDelegate:self];
  [(SBHIconManager *)self setCurrentTransitionAnimator:v8];
}

- (void)rootFolderController:(id)a3 wantsToAdjustLeadingCustomContentForEdgeBounceForScrollOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 iconManager:self wantsToAdjustLeadingCustomContentForEdgeBounceForScrollOffset:{x, y}];
  }
}

- (double)distanceToTopOfSpotlightIconsForRootFolderController:(id)a3
{
  v4 = [(SBHIconManager *)self delegate];
  v5 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v4 distanceToTopOfSpotlightIconsForIconManager:self];
    v5 = v6;
  }

  return v5;
}

- (double)maxExternalDockHeightForRootFolderController:(id)a3
{
  v3 = [(SBHIconManager *)self floatingDockViewController];
  [v3 maximumContentHeight];
  v5 = v4;

  return v5;
}

- (double)externalDockHeightForRootFolderController:(id)a3
{
  v3 = [(SBHIconManager *)self floatingDockViewController];
  [v3 contentHeight];
  v5 = v4;

  return v5;
}

- (double)preferredExternalDockVerticalMarginForRootFolderController:(id)a3
{
  v3 = [(SBHIconManager *)self floatingDockViewController];
  [v3 preferredVerticalMargin];
  v5 = v4;

  return v5;
}

- (void)rootFolderController:(id)a3 setSuppressesEditingStateForExternalDockListViews:(BOOL)a4
{
  v4 = a4;
  v5 = [(SBHIconManager *)self floatingDockViewController];
  [v5 setSuppressesEditingStateForListViews:v4];
}

- (id)backgroundViewForDockForRootFolderController:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconManager:self backgroundViewForDockForRootFolderController:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)backgroundViewForEditingDoneButtonForRootFolderController:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconManager:self backgroundViewForEditingDoneButtonForRootFolderController:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)rootFolderControllerCanUseSeparateWindowForRotation:(id)a3
{
  v4 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 iconManagerCanUseSeparateWindowForRotation:self];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)rootFolderController:(id)a3 statusBarInsetsDidChange:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v9 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 iconManager:self statusBarInsetsDidChange:{top, left, bottom, right}];
  }
}

- (void)rootFolderController:(id)a3 willUseTransitionContext:(id)a4 toTransitionToState:(int64_t)a5
{
  v10 = a3;
  v8 = a4;
  v9 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 iconManager:self rootFolderController:v10 willUseTransitionContext:v8 toTransitionToState:a5];
  }
}

- (void)rootFolderController:(id)a3 willUsePropertyAnimator:(id)a4 toTransitionToState:(int64_t)a5
{
  v10 = a3;
  v8 = a4;
  v9 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 iconManager:self rootFolderController:v10 willUsePropertyAnimator:v8 toTransitionToState:a5];
  }
}

- (void)rootFolderController:(id)a3 didOverscrollOnFirstPageByAmount:(double)a4
{
  v7 = a3;
  v6 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 iconManager:self rootFolderController:v7 didOverscrollOnFirstPageByAmount:a4];
  }
}

- (void)rootFolderController:(id)a3 didEndOverscrollOnFirstPageWithVelocity:(double)a4 translation:(double)a5
{
  v9 = a3;
  v8 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 iconManager:self rootFolderController:v9 didEndOverscrollOnFirstPageWithVelocity:a4 translation:a5];
  }
}

- (void)rootFolderController:(id)a3 didOverscrollOnLastPageByAmount:(double)a4
{
  v7 = a3;
  v6 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 iconManager:self rootFolderController:v7 didOverscrollOnLastPageByAmount:a4];
  }
}

- (void)rootFolderController:(id)a3 didEndOverscrollOnLastPageWithVelocity:(double)a4 translation:(double)a5
{
  v9 = a3;
  v8 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 iconManager:self rootFolderController:v9 didEndOverscrollOnLastPageWithVelocity:a4 translation:a5];
  }
}

- (void)rootFolderControllerViewWillAppear:(id)a3
{
  v3 = [(SBHIconManager *)self usageMonitor];
  [v3 noteIconManagerRootFolderControllerViewWillAppear];
}

- (void)rootFolderControllerViewDidDisappear:(id)a3
{
  v3 = [(SBHIconManager *)self usageMonitor];
  [v3 noteIconManagerRootFolderControllerViewDidDisappear];
}

- (void)rootFolderController:(id)a3 viewDidTransitionToSize:(CGSize)a4
{
  v4 = [(SBHIconManager *)self iconShareSheetManager:a3];
  [v4 showIconShareSheetsIfAnyWereHiddenForRotationAnimation];
}

- (void)rootFolderControllerWantsHomeScreenWallpaperViewControllerPresented:(id)a3
{
  v4 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 iconManagerWantsHomeScreenWallpaperEditorViewControllerPresented:self];
  }
}

- (void)iconSizeButtonTriggered
{
  v3 = [(SBHIconStyleLabelHidingView *)self->_labelHidingView shouldUseLargeIcons];

  [(SBHIconManager *)self _updateShouldUseHomeScreenLargeIconSize:v3];
}

- (void)floatingDockViewController:(id)a3 didChangeContentHeight:(double)a4 animated:(BOOL)a5
{
  v5 = [(SBHIconManager *)self rootViewController:a3];
  v6 = [v5 contentView];

  [v6 layoutIfNeeded];
}

- (void)floatingDockViewController:(id)a3 willOpenFolderController:(id)a4
{
  v5 = [(SBHIconManager *)self rootFolderController:a3];
  v4 = [v5 folderView];
  [v4 setSuppressesEditingStateForListViews:1];
}

- (void)floatingDockViewController:(id)a3 willCloseFolderController:(id)a4
{
  v5 = [(SBHIconManager *)self rootFolderController:a3];
  v4 = [v5 folderView];
  [v4 setSuppressesEditingStateForListViews:0];
}

- (void)floatingDockViewController:(id)a3 wantsToBeginEditingAtScreenLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v16 = [(SBHIconManager *)self iconEditingFeedbackBehavior];
  v8 = [v16 view];
  v9 = [v7 _screen];

  v10 = [v9 coordinateSpace];
  v11 = [v8 coordinateSpace];
  [v10 convertPoint:v11 toCoordinateSpace:{x, y}];
  v13 = v12;
  v15 = v14;

  [(SBHIconManager *)self setEditing:1 withFeedbackBehavior:v16 location:v13, v15];
}

- (id)_fetchCurrentStyleConfiguration
{
  v3 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 iconStylePickerConfigurationForIconManager:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateStyleConfiguration:(id)a3
{
  v5 = a3;
  v4 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 updateStyleConfiguration:v5 forIconManager:self];
  }
}

- (void)_toggleHomeScreenIconSize:(id)a3
{
  v6 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 iconManagerWantsIconSizeToggled:self];
  }

  v4 = [(SBHIconManager *)self _shouldUseHomeScreenLargeIconSize];
  v5 = [(UIBarButtonItem *)self->_iconSizeBarButtonItem customView];
  [v5 setSelected:v4 animated:1];
  [(SBHIconManager *)self _precacheLabelsForRootIcons:v4 ^ 1 reason:@"home screen large icon size toggled"];
}

- (void)_updateShouldUseHomeScreenLargeIconSize:(BOOL)a3
{
  if ([(SBHIconManager *)self _shouldUseHomeScreenLargeIconSize]!= a3)
  {
    v5 = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 iconManagerWantsIconSizeToggled:self];
    }

    v4 = [(UIBarButtonItem *)self->_iconSizeBarButtonItem customView];
    [v4 setSelected:-[SBHIconManager _shouldUseHomeScreenLargeIconSize](self animated:{"_shouldUseHomeScreenLargeIconSize"), 1}];
    [(SBHIconManager *)self _precacheLabelsForRootIcons:1 reason:@"home screen large icon size toggled"];
  }
}

- (BOOL)_shouldUseHomeScreenLargeIconSize
{
  v3 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 shouldUseHomeScreenLargeIconSizeForIconManager:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)toggleHomeScreenWallpaperDim:(id)a3
{
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 iconManagerToggleHomeScreenWallpaperDimming:self];
  }

  v4 = [(UIBarButtonItem *)self->_dimBarButtonItem customView];
  [v4 setSelected:-[SBHIconManager currentHomeScreenWallpaperDimState](self animated:{"currentHomeScreenWallpaperDimState"), 1}];
}

- (BOOL)currentHomeScreenWallpaperDimState
{
  v3 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 isHomeScreenWallpaperDimmedForIconManager:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_engageWallpaperTintColorDropper:(id)a3
{
  v4 = SBLogIconStylePicker();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "Activating tint color eyedropper...", buf, 2u);
  }

  if (self->_isHomeScreenTintColorEyeDropperActive)
  {
    v5 = SBLogIconStylePicker();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "Eye dropper is already active, bailing.", buf, 2u);
    }
  }

  else
  {
    self->_isHomeScreenTintColorEyeDropperActive = 1;
    v6 = [(SBHIconManager *)self rootViewController];
    v7 = [(SBHIconManager *)self currentStylePickerViewController];
    v8 = [v7 navigationController];
    v9 = [v8 sheetPresentationController];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __51__SBHIconManager__engageWallpaperTintColorDropper___block_invoke;
    v21[3] = &unk_1E8088F18;
    v10 = v9;
    v22 = v10;
    v5 = v6;
    v23 = v5;
    [v10 animateChanges:v21];
    v11 = objc_opt_new();
    eyeDropperColorSampler = self->_eyeDropperColorSampler;
    self->_eyeDropperColorSampler = v11;

    [(_UIColorSampler *)self->_eyeDropperColorSampler setFloatEyedropperOnStart:1];
    v13 = SBLogIconStylePicker();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_DEFAULT, "Showing tint color eyedropper", buf, 2u);
    }

    v14 = self->_eyeDropperColorSampler;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __51__SBHIconManager__engageWallpaperTintColorDropper___block_invoke_967;
    v17[3] = &unk_1E80905A0;
    v18 = v10;
    v19 = self;
    v20 = v7;
    v15 = v7;
    v16 = v10;
    [(_UIColorSampler *)v14 showSamplerWithSelectionHandler:v17];
  }
}

void __51__SBHIconManager__engageWallpaperTintColorDropper___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setHidden:1];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"SBHIconManagerWillPresentEyeDropperNotification" object:0];

  v3 = [*(a1 + 40) contentView];
  [v3 setAlpha:0.0];
}

void __51__SBHIconManager__engageWallpaperTintColorDropper___block_invoke_967(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v4 = v3;
  BSDispatchMain();
}

uint64_t __51__SBHIconManager__engageWallpaperTintColorDropper___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = SBLogIconStylePicker();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1BEB18000, v2, OS_LOG_TYPE_DEFAULT, "Eyedropper called selection handler with color: %{public}@", &v5, 0xCu);
  }

  [*(a1 + 40) _setHidden:0];
  result = [*(a1 + 48) _invalidateWallpaperTintColorDropper];
  if (*(a1 + 32))
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      return [*(a1 + 56) _updateHomeScreenCustomColorToColor:*(a1 + 32)];
    }
  }

  return result;
}

- (void)_invalidateWallpaperTintColorDropper
{
  v3 = SBLogIconStylePicker();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating tint color eyedropper...", buf, 2u);
  }

  if (self->_isHomeScreenTintColorEyeDropperActive)
  {
    self->_isHomeScreenTintColorEyeDropperActive = 0;
    v4 = [(SBHIconManager *)self rootViewController];
    v5 = [(SBHIconManager *)self currentStylePickerViewController];
    v6 = [v5 navigationController];
    v7 = [v6 sheetPresentationController];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__SBHIconManager__invalidateWallpaperTintColorDropper__block_invoke;
    aBlock[3] = &unk_1E8088C90;
    v13 = v4;
    v8 = v4;
    v9 = _Block_copy(aBlock);
    v10 = v9;
    if (v7)
    {
      [v7 animateChanges:v9];
    }

    else
    {
      (*(v9 + 2))(v9);
    }

    eyeDropperColorSampler = self->_eyeDropperColorSampler;
    self->_eyeDropperColorSampler = 0;
  }

  else
  {
    v5 = SBLogIconStylePicker();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "Eyedropper is not active, bailing", buf, 2u);
    }
  }
}

void __54__SBHIconManager__invalidateWallpaperTintColorDropper__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"SBHIconManagerDidDismissEyeDropperNotification" object:0];

  v3 = [*(a1 + 32) contentView];
  [v3 setAlpha:1.0];

  v4 = SBLogIconStylePicker();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "Finished invalidating tint color eyedropper", v5, 2u);
  }
}

- (void)rootFolderController:(id)a3 willPresentPageManagementWithLayoutManager:(id)a4 animator:(id)a5 context:(id)a6
{
  v15 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [(SBHIconManager *)self iconDragManager];
  [v11 cancelAllDrags];

  [(SBHIconManager *)self _discardEndEditingTimerAndDontResetUntilReasonIsRemoved:@"FolderPageManagement"];
  v12 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v13 = [(SBHIconManager *)self focusModeManager];
    v14 = [v13 activeFocusMode];
    [v15 setActiveFocusMode:v14];
    [v12 iconManager:self willPresentPageManagementWithLayoutManager:v15 animator:v9 context:v10];
  }
}

- (void)rootFolderController:(id)a3 willDismissPageManagementUsingAnimator:(id)a4 context:(id)a5
{
  v10 = a4;
  v7 = a5;
  v8 = [(SBHIconManager *)self iconDragManager];
  [v8 cancelAllDrags];

  [(SBHIconManager *)self _removeReasonToNotResetEndEditingTimer:@"FolderPageManagement"];
  v9 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 iconManager:self willDismissPageManagementUsingAnimator:v10 context:v7];
  }
}

- (void)rootFolderController:(id)a3 didDismissPageManagementWithLayoutManager:(id)a4 context:(id)a5
{
  v9 = a4;
  v7 = a5;
  v8 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 iconManager:self didDismissPageManagementWithLayoutManager:v9 context:v7];
  }
}

- (id)rootFolderController:(id)a3 draggedIconForStackConfigurationInteractionForIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(SBHIconManager *)self iconDragManager];
  v7 = [v6 draggedIconForIdentifier:v5];

  return v7;
}

- (void)rootFolderController:(id)a3 handleInsertionForWidgetIcon:(id)a4 withReferenceIconView:(id)a5 fromPresenter:(id)a6 dismissViewControllerHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v54 = v12;
  v53 = [v12 folder];
  v17 = [v53 todayList];
  v18 = objc_opt_class();
  v19 = v15;
  if (v18)
  {
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  v22 = [(SBHIconManager *)self _effectiveTodayViewController];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __133__SBHIconManager_rootFolderController_handleInsertionForWidgetIcon_withReferenceIconView_fromPresenter_dismissViewControllerHandler___block_invoke;
  aBlock[3] = &unk_1E80905D0;
  aBlock[4] = self;
  v23 = _Block_copy(aBlock);
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __133__SBHIconManager_rootFolderController_handleInsertionForWidgetIcon_withReferenceIconView_fromPresenter_dismissViewControllerHandler___block_invoke_2;
  v66[3] = &unk_1E80906C0;
  v24 = v13;
  v67 = v24;
  v25 = v17;
  v68 = v25;
  v69 = self;
  v26 = v21;
  v70 = v26;
  v52 = v14;
  v71 = v52;
  v51 = v23;
  v73 = v51;
  v27 = v16;
  v74 = v27;
  v28 = v22;
  v72 = v28;
  v29 = _Block_copy(v66);
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __133__SBHIconManager_rootFolderController_handleInsertionForWidgetIcon_withReferenceIconView_fromPresenter_dismissViewControllerHandler___block_invoke_8;
  v59[3] = &unk_1E80906E8;
  v30 = v28;
  v60 = v30;
  v31 = v25;
  v61 = v31;
  v32 = v24;
  v62 = v32;
  v33 = v27;
  v63 = self;
  v64 = v33;
  v34 = v29;
  v65 = v34;
  v35 = _Block_copy(v59);
  if ([v19 presenterType] == 1)
  {
    v35[2](v35);
  }

  else if ([v19 presenterType] == 2 && v26)
  {
    v36 = [v26 iconListView];
    v37 = [v36 model];

    (*(v34 + 2))(v34, v37);
  }

  else
  {
    v38 = [v54 currentIconListModel];
    if ([v38 isAllowedToContainIcon:v32])
    {
      v49 = [(SBHIconManager *)self gridCellInfoOptions];
      v39 = [v38 bestGridCellIndexForInsertingIcon:v32 gridCellInfoOptions:?];
      v50 = v38;
      if (v39 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v40 = [v53 addIcon:v32 toList:v38 options:10];
      }

      else
      {
        v48 = v39;
        v47 = [SBHIconGridPath alloc];
        v46 = [v38 uniqueIdentifier];
        v41 = [(SBHIconGridPath *)v47 initWithFolderIdentifier:0 listIdentifier:v46 gridCellIndex:v48 gridCellInfoOptions:v49];

        v42 = [v53 insertIcon:v32 atGridPath:v41 options:16777218];
      }

      [v54 setCurrentPageIndexToListDirectlyContainingIcon:v32 animated:0];
      v43 = [v54 currentIconListView];
      v44 = [(SBHIconManager *)self widgetInsertionRippleIconAnimatorForIcon:v32 iconListView:0 withReferenceIconView:v52];
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __133__SBHIconManager_rootFolderController_handleInsertionForWidgetIcon_withReferenceIconView_fromPresenter_dismissViewControllerHandler___block_invoke_9;
      v55[3] = &unk_1E80905F8;
      v58 = v51;
      v56 = v32;
      v57 = v43;
      v45 = v43;
      [v44 animateWithCompletion:v55];
      v33[2](v33);

      v38 = v50;
    }

    else
    {
      v35[2](v35);
    }
  }
}

void __133__SBHIconManager_rootFolderController_handleInsertionForWidgetIcon_withReferenceIconView_fromPresenter_dismissViewControllerHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9 = [a3 displayedIconViewForIcon:v5];
  v6 = [v5 activeWidget];

  if (v9 && v6)
  {
    v7 = [*(a1 + 32) widgetExtensionProvider];
    v8 = [v7 sbh_descriptorForWidgetIdentifiable:v6];

    if ([v9 supportsConfigurationCard] && objc_msgSend(v8, "promptsForUserConfiguration"))
    {
      [v9 presentConfigurationCard];
    }
  }
}

void __133__SBHIconManager_rootFolderController_handleInsertionForWidgetIcon_withReferenceIconView_fromPresenter_dismissViewControllerHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SBPlaceholderIcon placeholderForIcon:*(a1 + 32)];
  v5 = [v3 addIcon:v4];
  if ([v3 directlyContainsIcon:v4])
  {
    v6 = *(a1 + 40);
    if (v6 == v3)
    {
      v8 = [*(a1 + 48) rootFolder];
      v9 = [v8 indexPathForIcon:v4];
      v7 = [*(a1 + 48) iconListViewForIndexPath:v9];
    }

    else
    {
      v7 = [*(a1 + 56) iconListView];
    }

    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x2020000000;
    v46 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __133__SBHIconManager_rootFolderController_handleInsertionForWidgetIcon_withReferenceIconView_fromPresenter_dismissViewControllerHandler___block_invoke_3;
    aBlock[3] = &unk_1E8090648;
    v10 = *(a1 + 48);
    v44 = v45;
    aBlock[4] = v10;
    v37 = v3;
    v11 = v4;
    v38 = v11;
    v39 = *(a1 + 32);
    v27 = v7;
    v40 = v27;
    v41 = *(a1 + 64);
    v42 = *(a1 + 80);
    v43 = *(a1 + 88);
    v12 = _Block_copy(aBlock);
    v13 = objc_alloc_init(SBIconListLayoutBlockObserver);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __133__SBHIconManager_rootFolderController_handleInsertionForWidgetIcon_withReferenceIconView_fromPresenter_dismissViewControllerHandler___block_invoke_6;
    v32[3] = &unk_1E8090670;
    v14 = v13;
    v33 = v14;
    v15 = v11;
    v34 = v15;
    v16 = v12;
    v35 = v16;
    [(SBIconListLayoutBlockObserver *)v14 setDidAddIconViewBlock:v32];
    [v27 addLayoutObserver:v14];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __133__SBHIconManager_rootFolderController_handleInsertionForWidgetIcon_withReferenceIconView_fromPresenter_dismissViewControllerHandler___block_invoke_7;
    v28[3] = &unk_1E8090698;
    v17 = v14;
    v29 = v17;
    v31 = v45;
    v30 = *(a1 + 88);
    v18 = _Block_copy(v28);
    if (v6 == v3)
    {
      v23 = *(a1 + 72);
      v24 = [MEMORY[0x1E69DC938] currentDevice];
      v25 = [v24 userInterfaceIdiom];

      [v23 scrollIconToVisible:v15 atPosition:0 animated:(v25 & 0xFFFFFFFFFFFFFFFBLL) == 1 completion:v18];
      [*(a1 + 72) listView];
    }

    else
    {
      v19 = *(a1 + 56);
      v20 = [MEMORY[0x1E69DC938] currentDevice];
      v21 = [v20 userInterfaceIdiom];

      [v19 scrollIconToVisible:v15 animated:(v21 & 0xFFFFFFFFFFFFFFFBLL) == 1 completion:v18];
      [*(a1 + 56) iconListView];
    }
    v22 = ;
    v26 = [v22 displayedIconViewForIcon:v15];

    if (v26)
    {
      [(SBIconListLayoutBlockObserver *)v17 invalidate];
      v16[2](v16, 0.0);
    }

    _Block_object_dispose(v45, 8);
  }

  else
  {
    (*(*(a1 + 88) + 16))();
  }
}

void __133__SBHIconManager_rootFolderController_handleInsertionForWidgetIcon_withReferenceIconView_fromPresenter_dismissViewControllerHandler___block_invoke_3(uint64_t a1, double a2)
{
  v2 = *(*(a1 + 96) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    v4 = dispatch_time(0, (a2 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __133__SBHIconManager_rootFolderController_handleInsertionForWidgetIcon_withReferenceIconView_fromPresenter_dismissViewControllerHandler___block_invoke_4;
    block[3] = &unk_1E8090620;
    v15 = *(a1 + 32);
    v5 = *(&v15 + 1);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    *&v8 = v6;
    *(&v8 + 1) = v7;
    v17 = v15;
    v18 = v8;
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    v11 = *(a1 + 80);
    v12 = *(a1 + 88);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    *&v14 = v9;
    *(&v14 + 1) = v10;
    v19 = v14;
    v20 = v13;
    dispatch_after(v4, MEMORY[0x1E69E96A0], block);
  }
}

void __133__SBHIconManager_rootFolderController_handleInsertionForWidgetIcon_withReferenceIconView_fromPresenter_dismissViewControllerHandler___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 40) replaceIcon:*(a1 + 48) withIcon:*(a1 + 56) gridCellInfoOptions:objc_msgSend(*(a1 + 32) mutationOptions:{"gridCellInfoOptions"), 0}];
  [*(a1 + 64) layoutAndCreateIcon:*(a1 + 56)];
  v3 = [*(a1 + 32) widgetInsertionRippleIconAnimatorForIcon:*(a1 + 56) iconListView:*(a1 + 64) withReferenceIconView:*(a1 + 72)];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __133__SBHIconManager_rootFolderController_handleInsertionForWidgetIcon_withReferenceIconView_fromPresenter_dismissViewControllerHandler___block_invoke_5;
  v4[3] = &unk_1E80905F8;
  v7 = *(a1 + 80);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  [v3 animateWithCompletion:v4];
  (*(*(a1 + 88) + 16))();
}

void __133__SBHIconManager_rootFolderController_handleInsertionForWidgetIcon_withReferenceIconView_fromPresenter_dismissViewControllerHandler___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *(a1 + 32);
  v5 = [a3 icon];
  v6 = [v5 isEqual:*(a1 + 40)];

  if (v6)
  {
    v7 = *(a1 + 48);
    v8 = [MEMORY[0x1E69DC938] currentDevice];
    v9 = [v8 userInterfaceIdiom];

    v10.n128_u64[0] = 0x3FD3333333333333;
    if ((v9 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v10.n128_f64[0] = 0.0;
    }

    (*(v7 + 16))(v7, v10);
    [v11 invalidate];
  }
}

uint64_t __133__SBHIconManager_rootFolderController_handleInsertionForWidgetIcon_withReferenceIconView_fromPresenter_dismissViewControllerHandler___block_invoke_7(uint64_t a1)
{
  result = [*(a1 + 32) invalidate];
  v3 = *(*(a1 + 48) + 8);
  if ((*(v3 + 24) & 1) == 0)
  {
    *(v3 + 24) = 1;
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  return result;
}

uint64_t __133__SBHIconManager_rootFolderController_handleInsertionForWidgetIcon_withReferenceIconView_fromPresenter_dismissViewControllerHandler___block_invoke_8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 72) + 16);

    return v2();
  }

  else
  {
    v4 = [*(a1 + 40) addIcon:*(a1 + 48)];
    (*(*(a1 + 64) + 16))();
    v5 = *(a1 + 56);

    return [v5 presentTodayOverlay];
  }
}

- (void)rootFolderController:(id)a3 noteDragItemWasConsumedExternallyForDropSession:(id)a4
{
  v5 = a4;
  v6 = [(SBHIconManager *)self iconDragManager];
  [v6 noteDragItemWasConsumedExternallyForDropSession:v5];
}

- (id)rootFolderController:(id)a3 dragPreviewForIconView:(id)a4
{
  v5 = a4;
  v6 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 iconManager:self dragPreviewForIconView:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)windowForStackConfigurationIconDragPreviewsForRootFolderController:(id)a3 forWindowScene:(id)a4
{
  v5 = a4;
  v6 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 windowForIconDragPreviewsForIconManager:self forWindowScene:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)rootFolderController:(id)a3 allowsRemovalOfIconDataSourceWithinStack:(id)a4
{
  v5 = a4;
  v6 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 iconManager:self allowsRemovalOfIconDataSourceWithinStack:v5];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)rootFolderController:(id)a3 willPresentWidgetEditingViewController:(id)a4
{
  v6 = [(SBHIconManager *)self delegate:a3];
  if (objc_opt_respondsToSelector())
  {
    [v6 iconManagerWillPresentWidgetEditing:self];
  }

  [(SBHIconManager *)self _discardEndEditingTimerAndDontResetUntilReasonIsRemoved:@"WIDGET_EDITING_PRESENTED"];
  v5 = [(SBHIconManager *)self _effectiveWidgetMultiplexingManager];
  [v5 discardCachedRecentViewControllers];
}

- (void)rootFolderController:(id)a3 didPresentWidgetEditingViewController:(id)a4
{
  v8 = a4;
  v5 = [(SBHIconManager *)self _effectiveTodayViewController];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 keepIconImageViewControllersStaticForReason:@"WIDGET_EDITING_PRESENTED"];
    if (v6)
    {
      v7 = [v8 userInfo];
      [v7 setObject:v6 forKey:@"WIDGET_EDITING_PRESENTED"];
    }
  }
}

- (void)rootFolderController:(id)a3 willDismissWidgetEditingViewController:(id)a4
{
  v4 = a4;
  v5 = [v4 userInfo];
  v7 = [v5 objectForKey:@"WIDGET_EDITING_PRESENTED"];

  [v7 invalidate];
  v6 = [v4 userInfo];

  [v6 removeObjectForKey:@"WIDGET_EDITING_PRESENTED"];
}

- (void)rootFolderController:(id)a3 didDismissWidgetEditingViewController:(id)a4
{
  v5 = [(SBHIconManager *)self delegate:a3];
  if (objc_opt_respondsToSelector())
  {
    [v5 iconManagerDidDismissWidgetEditing:self];
  }

  [(SBHIconManager *)self _removeReasonToNotResetEndEditingTimer:@"WIDGET_EDITING_PRESENTED"];
}

- (void)rootFolderController:(id)a3 prepareAddSheetViewController:(id)a4
{
  v6 = a4;
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 iconManager:self prepareAddSheetViewController:v6];
  }
}

- (void)rootFolderController:(id)a3 willPresentAddSheetViewController:(id)a4
{
  v4 = [(SBHIconManager *)self usageMonitor:a3];
  [v4 noteAddWidgetSheetWillPresent];
}

- (unint64_t)addWidgetSheetStyleForRootFolderController:(id)a3
{
  v3 = [(SBHIconManager *)self addWidgetSheetConfigurationManager];
  v4 = [v3 addWidgetSheetStyle];

  return v4;
}

- (void)rootFolderControllerDidAcceptWidgetIntroduction:(id)a3
{
  v5 = [(SBHIconManager *)self usageMonitor];
  v4 = [(SBHIconManager *)self defaultFirstPageWidgetDescriptors];
  [v5 noteWidgetDiscoverabilityDidAcceptSuggestion:v4];
}

- (void)rootFolderControllerDidUndoWidgetIntroduction:(id)a3
{
  [(SBHIconManager *)self undoDefaultWidgets:0];
  v5 = [(SBHIconManager *)self usageMonitor];
  v4 = [(SBHIconManager *)self defaultFirstPageWidgetDescriptors];
  [v5 noteWidgetDiscoverabilityDidRejectSuggestion:v4];
}

- (void)rootFolderControllerDidEditWidgetIntroduction:(id)a3
{
  v3 = [(SBHIconManager *)self usageMonitor];
  [v3 noteWidgetDiscoverabilityDidEnterEditingMode];
}

- (BOOL)rootFolderControllerDidSetPrototypeSettingEditAsUndo:(id)a3
{
  if ([(SBHIconManager *)self prototypeSettingEditButtonAsUndo])
  {
    return 1;
  }

  if (!__sb__runningInSpringBoard())
  {
    v4 = [MEMORY[0x1E69DC938] currentDevice];
    v3 = [v4 userInterfaceIdiom] == 0;

    return v3;
  }

  return !SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1;
}

- (id)nestingViewController:(id)a3 interactionControllerForAnimationController:(id)a4
{
  currentTransitionAnimator = self->_currentTransitionAnimator;
  if (currentTransitionAnimator != a4 || [(SBHomeScreenIconTransitionAnimator *)currentTransitionAnimator operation]!= 1)
  {
    v13 = 0;
    goto LABEL_9;
  }

  v6 = [(SBHIconManager *)self currentInteractionContext];
  v7 = [v6 interactionProgress];
  if (v7)
  {
    v8 = v7;
LABEL_5:
    [(UIInteractionProgress *)v8 percentComplete];
    if (BSFloatLessThanFloat())
    {
      v9 = +[SBHHomeScreenDomain rootSettings];
      v10 = [v9 iconAnimationSettings];

      v11 = [(SBHomeScreenIconTransitionAnimator *)self->_currentTransitionAnimator childViewController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v10 maxFolderCloseHintProgress];
      }

      else
      {
        [v10 maxAppSuspendHintProgress];
      }

      v20 = v12;

      v13 = [[SBHintInteractor alloc] initWithInteractionProgress:v8 maxHintProgress:v20];
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v15 = [v6 gestureRecognizer];
  v10 = v15;
  if (!v15 || ([v15 state] - 1) > 1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = 0;
    v13 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v16 = +[SBHHomeScreenDomain rootSettings];
  v17 = [v16 folderSettings];
  [v17 minPinchScale];
  v19 = v18;

  v8 = [[SBPinchInteractionProgress alloc] initWithPinchGesture:v10 minPinchScale:v19];
  if (v8)
  {
    goto LABEL_5;
  }

LABEL_16:
  v13 = 0;
LABEL_21:

LABEL_9:

  return v13;
}

- (void)nestingViewController:(id)a3 willPerformOperation:(int64_t)a4 onViewController:(id)a5 withTransitionCoordinator:(id)a6
{
  v55 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = v11;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v15 = 0;
  v16 = isKindOfClass & 1;
  v17 = a4 == 1;
  if (a4 != 1 && (isKindOfClass & 1) != 0)
  {
    v18 = [(SBHIconManager *)self rootFolder];
    v19 = [v13 folder];
    v15 = [v18 indexPathForFolder:v19];
    if (v15)
    {
      v39 = v19;
      v41 = v10;
      v20 = [(SBHIconManager *)self rootViewController];
      v21 = [v20 currentPageIndex];

      v22 = [(SBHIconManager *)self rootFolderController];
      v23 = [v22 iconListModelIndexForPageIndex:v21];

      if ([v18 isValidListIndex:v23])
      {
        v24 = [v18 listAtIndex:v23];
        if (v24)
        {
          v25 = [v18 indexPathForFirstFreeSlotStartingAtList:v24 avoidingFirstList:0];
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
        v24 = 0;
      }

      v26 = [(SBHIconManager *)self iconDragManager];
      [v26 setIndexPath:v25 whenRevertingIconsWithPathPrefix:v15];

      v27 = v15;
      v10 = v41;
      v17 = a4 == 1;
      v19 = v39;
    }
  }

  v28 = [(BSEventQueue *)self->_transitionEventQueue acquireLockForReason:@"performingTransitionOperation"];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __104__SBHIconManager_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke;
  v52[3] = &unk_1E808D418;
  v53 = v17;
  v52[4] = self;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __104__SBHIconManager_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke_3;
  v47[3] = &unk_1E8090710;
  v47[4] = self;
  v51 = v16;
  v29 = v13;
  v48 = v29;
  v30 = v15;
  v49 = v30;
  v31 = v28;
  v50 = v31;
  [v12 animateAlongsideTransition:v52 completion:v47];
  if ([v12 isAnimated])
  {
    [v12 animateAlongsideTransition:&__block_literal_global_1011 completion:0];
  }

  if (v16)
  {
    v40 = v30;
    v42 = v10;
    v32 = v29;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v33 = [(NSHashTable *)self->_folderPresentationObservers copy];
    v34 = [v33 countByEnumeratingWithState:&v43 objects:v54 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v44;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v44 != v36)
          {
            objc_enumerationMutation(v33);
          }

          [*(*(&v43 + 1) + 8 * i) iconManager:self willPerformTransitionWithFolder:v32 presenting:a4 == 1 withTransitionCoordinator:v12];
        }

        v35 = [v33 countByEnumeratingWithState:&v43 objects:v54 count:16];
      }

      while (v35);
    }

    v30 = v40;
    v10 = v42;
  }

  v38 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v38 iconManager:self nestingViewController:v10 willPerformOperation:a4 onViewController:v29 withTransitionCoordinator:v12];
  }
}

void __104__SBHIconManager_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isCancelled];
  if (*(a1 + 40) == 1 && (v4 & 1) == 0 && ([v3 transitionWasRestarted] & 1) == 0)
  {
    v5 = MEMORY[0x1E698E7D0];
    v6 = [MEMORY[0x1E698E608] settingsWithDuration:0.15];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __104__SBHIconManager_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke_2;
    v7[3] = &unk_1E8088C90;
    v7[4] = *(a1 + 32);
    [v5 animateWithSettings:v6 actions:v7];
  }
}

void __104__SBHIconManager_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) clearHighlightedIcon];
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 40);
    v3 = [v2 view];
    v4 = [v2 contentView];

    v5 = [v4 superview];

    if (v5 != v3)
    {
      [v3 addSubview:v4];
      [v3 setNeedsLayout];
    }
  }

  if (*(a1 + 48))
  {
    v6 = [*(a1 + 32) iconDragManager];
    [v6 setIndexPath:0 whenRevertingIconsWithPathPrefix:*(a1 + 48)];
  }

  [*(a1 + 32) setCurrentTransitionAnimator:0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __104__SBHIconManager_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke_4;
  v7[3] = &unk_1E8088F18;
  v7[4] = *(a1 + 32);
  v8 = *(a1 + 56);
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

uint64_t __104__SBHIconManager_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke_5(uint64_t a1, void *a2)
{
  result = [a2 isInteractive];
  if ((result & 1) == 0)
  {
    v3 = MEMORY[0x1E69DD250];

    return [v3 _recenterMotionEffects];
  }

  return result;
}

- (id)animator:(id)a3 animationSettingsForOperation:(unint64_t)a4 childViewController:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 iconAnimator];
  v11 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = [v11 iconManager:self animator:v8 animationSettingsForOperation:a4 childViewController:v9];
    goto LABEL_21;
  }

  v13 = +[SBHHomeScreenDomain rootSettings];
  v14 = [v13 iconAnimationSettings];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [v14 reducedMotionSettings];
LABEL_19:
    v12 = v15;
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a4)
    {
      [v14 folderCloseSettings];
    }

    else
    {
      [v14 folderOpenSettings];
    }

    v15 = LABEL_14:;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a4)
    {
      [v14 crossfadeSuspendSettings];
    }

    else
    {
      [v14 crossfadeLaunchSettings];
    }

    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a4)
    {
      [v14 centerSuspendSettings];
    }

    else
    {
      [v14 centerLaunchSettings];
    }

    goto LABEL_14;
  }

  v12 = 0;
LABEL_20:

LABEL_21:

  return v12;
}

- (unint64_t)iconModel:(id)a3 maxRowCountForListInRootFolderWithInterfaceOrientation:(int64_t)a4
{
  v5 = [(SBHIconManager *)self listLayoutProvider];
  v6 = [v5 layoutForIconLocation:@"SBIconLocationRoot"];
  v7 = [v6 numberOfRowsForOrientation:a4];

  return v7;
}

- (unint64_t)iconModel:(id)a3 maxColumnCountForListInRootFolderWithInterfaceOrientation:(int64_t)a4
{
  v5 = [(SBHIconManager *)self listLayoutProvider];
  v6 = [v5 layoutForIconLocation:@"SBIconLocationRoot"];
  v7 = [v6 numberOfColumnsForOrientation:a4];

  return v7;
}

- (id)gridSizeClassSizesForIconModel:(id)a3
{
  v3 = [(SBHIconManager *)self listLayoutProvider];
  v4 = [v3 layoutForIconLocation:@"SBIconLocationRoot"];

  v5 = SBHIconListLayoutIconGridSizeClassSizes(v4, 1);

  return v5;
}

- (id)iconModel:(id)a3 allowedGridSizeClassesForFolderClass:(Class)a4
{
  v5 = [(objc_class *)[(SBHIconManager *)self controllerClassForFolderClass:a4] iconLocation];
  v6 = [(SBHIconManager *)self listLayoutProvider];
  v7 = [v6 layoutForIconLocation:v5];

  if (v7)
  {
    SBHIconListLayoutSupportedIconGridSizeClasses(v7);
  }

  else
  {
    +[SBHIconGridSizeClassSet gridSizeClassSetForDefaultGridSizeClass];
  }
  v8 = ;

  return v8;
}

- (id)listRotatedLayoutClusterGridSizeClassForIconModel:(id)a3
{
  v3 = [(SBHIconManager *)self listLayoutProvider];
  v4 = [v3 layoutForIconLocation:@"SBIconLocationRoot"];

  v5 = SBHIconListLayoutRotatedLayoutGridCellClusterSizeClass(v4);

  return v5;
}

- (id)iconModel:(id)a3 customInsertionIndexPathForIcon:(id)a4 inRootFolder:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__23;
  v41 = __Block_byref_object_dispose__23;
  v42 = 0;
  v11 = [(SBIconPreviousLocationTracker *)self->_previousIconLocationTracker previousLocationInfoForIcon:v9];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 folder];
    v14 = [v12 folderName];
    v15 = v14;
    if (v13)
    {
      v16 = [v13 indexPathForFirstFreeSlotAvoidingFirstList:0];
      v17 = v38[5];
      v38[5] = v16;
    }

    else if (v14)
    {
      v33 = 0;
      v34 = &v33;
      v35 = 0x2020000000;
      v36 = 0;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __73__SBHIconManager_iconModel_customInsertionIndexPathForIcon_inRootFolder___block_invoke;
      v29[3] = &unk_1E8090758;
      v18 = v14;
      v30 = v18;
      v31 = &v37;
      v32 = &v33;
      [v10 enumerateAllIconsUsingBlock:v29];
      if ((v34[3] & 1) == 0)
      {
        v19 = [v8 makeFolderWithDisplayName:v18];
        v20 = [[SBFolderIcon alloc] initWithFolder:v19];
        v21 = [v10 addIcon:v20];
        v22 = [(SBHIconManager *)self iconModel];
        [v22 addIcon:v20];

        v23 = [v10 indexPathForIcon:v20];
        if (v23)
        {
          v24 = [v19 indexPathForFirstFreeSlotAvoidingFirstList:0];
          v25 = [v24 bs_indexPathByAddingPrefix:v23];
          v26 = v38[5];
          v38[5] = v25;
        }
      }

      _Block_object_dispose(&v33, 8);
    }
  }

  v27 = v38[5];

  _Block_object_dispose(&v37, 8);

  return v27;
}

void __73__SBHIconManager_iconModel_customInsertionIndexPathForIcon_inRootFolder___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v14 = a2;
  v7 = a3;
  if ([v14 isFolderIcon])
  {
    v8 = [v14 folder];
    v9 = [v8 displayName];
    if ([*(a1 + 32) isEqualToString:v9])
    {
      v10 = [v8 indexPathForFirstFreeSlotAvoidingFirstList:0];
      v11 = [v10 bs_indexPathByAddingPrefix:v7];
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      *(*(*(a1 + 48) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

- (id)iconModel:(id)a3 customInsertionGridPathForIcon:(id)a4 inRootFolder:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 iconManager:self customInsertionGridPathForIcon:v7 inRootFolder:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)canSaveIconState:(id)a3
{
  if (self->_iconModel != a3)
  {
    return 0;
  }

  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v5 iconManagerCanSaveIconState:self];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)didSaveIconState:(id)a3
{
  if (self->_iconModel == a3)
  {
    v5 = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 iconManagerDidSaveIconState:self];
    }
  }
}

- (void)didDeleteIconState:(id)a3
{
  if (self->_iconModel == a3 && ([a3 isLayingOut] & 1) == 0)
  {

    [(SBHIconManager *)self noteIconStateChangedExternally];
  }
}

- (id)defaultIconStateForIconModel:(id)a3
{
  if (self->_iconModel == a3)
  {
    v5 = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v3 = [v5 defaultIconStateForIconManager:self];
    }

    else
    {
      v3 = MEMORY[0x1E695E0F8];
    }
  }

  else
  {
    v3 = MEMORY[0x1E695E0F8];
  }

  return v3;
}

- (BOOL)iconModel:(id)a3 shouldAvoidPlacingIconOnFirstPage:(id)a4
{
  v6 = a4;
  if (self->_iconModel == a3)
  {
    v8 = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v7 = [v8 iconManager:self shouldAvoidPlacingIconOnFirstPage:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)iconModel:(id)a3 shouldPlaceIconOnIgnoredList:(id)a4
{
  v6 = a4;
  if (self->_iconModel == a3 && ![(NSCountedSet *)self->_reasonsToIgnoreUserPreferenceForAddingNewIconsToHomeScreen count])
  {
    v9 = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v7 = [v9 iconManager:self shouldPlaceIconOnIgnoredList:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)iconModel:(id)a3 launchIcon:(id)a4 fromLocation:(id)a5 context:(id)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (self->_iconModel == v10)
  {
    if ([v11 isFolderIcon])
    {
      v14 = [v11 folder];
      v16 = [(SBHIconManager *)self rootFolderController];
      v17 = [v16 folderControllerForFolder:v14];
      v18 = SBLogIcon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = v11;
        _os_log_impl(&dword_1BEB18000, v18, OS_LOG_TYPE_DEFAULT, "SBHIconManager will open folder from icon %@", &v20, 0xCu);
      }

      if ([v17 isOpen])
      {
        v19 = SBLogIcon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v20) = 0;
          _os_log_impl(&dword_1BEB18000, v19, OS_LOG_TYPE_DEFAULT, "need to close previous folder before opening new one", &v20, 2u);
        }

        [(SBHIconManager *)self popExpandedIconAnimated:0 completionHandler:0];
      }

      [(SBHIconManager *)self pushExpandedIcon:v11 location:v12 context:v13 animated:1 completionHandler:0];
    }

    else
    {
      v14 = [v13 iconView];
      if (!v14)
      {
        goto LABEL_15;
      }

      v16 = [(SBHIconManager *)self launchActionsForIconView:v14];
      [(SBHIconManager *)self launchFromIconView:v14 withActions:v16 modifierFlags:0];
    }

    goto LABEL_15;
  }

  v14 = SBLogIcon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    iconModel = self->_iconModel;
    v20 = 138412802;
    v21 = v11;
    v22 = 2048;
    v23 = v10;
    v24 = 2048;
    v25 = iconModel;
    _os_log_impl(&dword_1BEB18000, v14, OS_LOG_TYPE_DEFAULT, "SBHIconManager asked to launch an icon (%@) from an unknown icon model (model: %p, ours: %p", &v20, 0x20u);
  }

LABEL_15:
}

- (void)iconModel:(id)a3 didAddIcon:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if ([v5 isLeafIcon])
  {
    [v5 addObserver:self];
    if ([v5 isWidgetIcon])
    {
      v6 = v5;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = [v6 widgets];
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          v11 = 0;
          do
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [(SBHIconManager *)self _loadAndSaveDefaultIntentIfNecessaryForWidget:*(*(&v13 + 1) + 8 * v11++) ofIcon:v6 viewController:0];
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v9);
      }

      v12 = [(SBHIconManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [v12 iconManagerDidAddOrRemoveWidgetIcon:self];
      }
    }
  }
}

- (void)iconModel:(id)a3 willRemoveIcon:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 displayNameForLocation:@"SBIconLocationRoot"];
  if (v6)
  {
    labelImageCache = self->_labelImageCache;
    v8 = [MEMORY[0x1E695DFD8] setWithObject:v6];
    [(SBIconLabelImageCache *)labelImageCache removeLabelContentForText:v8];
  }

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __43__SBHIconManager_iconModel_willRemoveIcon___block_invoke;
  v34[3] = &unk_1E808FDE8;
  v9 = v5;
  v35 = v9;
  [(SBHIconManager *)self enumerateAllIconImageCachesUsingBlock:v34];
  if ([v9 isLeafIcon])
  {
    [v9 removeObserver:self];
    v10 = v9;
    v11 = [v10 iconDataSources];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v37 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      do
      {
        v15 = 0;
        do
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(SBHIconManager *)self _handleRemovedDataSource:*(*(&v30 + 1) + 8 * v15++) ofIcon:v10];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v30 objects:v37 count:16];
      }

      while (v13);
    }
  }

  if ([v9 isWidgetIcon])
  {
    v25 = v6;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = [v9 iconDataSources];
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      do
      {
        v20 = 0;
        do
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v26 + 1) + 8 * v20);
          if (objc_opt_respondsToSelector())
          {
            v22 = [v21 uniqueIdentifier];
            v23 = [(SBHIconManager *)self _effectiveWidgetMultiplexingManager];
            [v23 discardCachedRecentViewControllersForIdentifier:v22];
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v26 objects:v36 count:16];
      }

      while (v18);
    }

    v24 = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v24 iconManagerDidAddOrRemoveWidgetIcon:self];
    }

    v6 = v25;
  }
}

void __43__SBHIconManager_iconModel_willRemoveIcon___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v2 = MEMORY[0x1E695DEC8];
  v3 = a2;
  v4 = [v2 arrayWithObjects:&v5 count:1];
  [v3 purgeCachedImagesForIcons:{v4, v5, v6}];
}

- (void)_handleRemovedDataSource:(id)a3 ofIcon:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = SBLogWidgets();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = v6;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_DEFAULT, "handleRemovedDataSource:%@ ofIcon:%@", buf, 0x16u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [(SBHIconModel *)self->_iconModel widgetIcons];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
LABEL_5:
    v13 = 0;
    while (1)
    {
      if (*v18 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v17 + 1) + 8 * v13);
      if ([v14 isEqual:v7] & 1) == 0 && (objc_msgSend(v14, "hasIconDataSource:", v6))
      {
        goto LABEL_21;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  if (([(NSMutableArray *)self->_movedStackConfigDataSources containsObject:v6]& 1) == 0)
  {
    if (!self->_shouldStashIconsForRelayout && (objc_opt_respondsToSelector() & 1) != 0 && [v6 iconSupportsConfiguration:v7])
    {
      v15 = [(SBHIconManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [v15 iconManager:self didRemoveConfigurableDataSource:v6 ofIcon:v7];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 uniqueIdentifier];
      [(NSMutableDictionary *)self->_widgetIntents removeObjectForKey:v9];
      [(NSMutableDictionary *)self->_archivedWidgetIntents removeObjectForKey:v9];
      v16 = [(SBHIconManager *)self _effectiveWidgetMultiplexingManager];
      [v16 discardCachedRecentViewControllersForIdentifier:v9];

LABEL_21:
    }
  }
}

- (Class)iconModel:(id)a3 iconClassForApplicationWithBundleIdentifier:(id)a4 proposedClass:(Class)a5
{
  v7 = a4;
  v8 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    a5 = [v8 iconManager:self iconClassForApplicationWithBundleIdentifier:v7 proposedClass:a5];
  }

  v9 = a5;

  return a5;
}

- (id)iconModel:(id)a3 validatedFileStackIconForFileStackIcon:(id)a4
{
  v5 = a4;
  v6 = [(SBHIconManager *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v6 iconManager:self isFileStackIconValid:v5])
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (BOOL)iconModel:(id)a3 shouldLeaveGapForMissingArchivedIconWithIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 iconManager:self shouldLeaveGapForMissingArchivedIconWithIdentifier:v5];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)_iconModelDidLayout:(id)a3
{
  v4 = [(SBHIconModel *)self->_iconModel rootFolder];
  [(SBHIconManager *)self setRootFolder:?];
  [(NSMutableDictionary *)self->_widgetIntents removeAllObjects];
  [(NSMutableDictionary *)self->_archivedWidgetIntents removeAllObjects];
  [(SBHIconManager *)self _precacheDataForRootIcons];
  self->_shouldStashIconsForRelayout = 0;
  [(SBHIconManager *)self _clearStashedIconsForRelayout];
  [(SBHIconManager *)self _finishResetRootIconLists];
  [(SBHIconManager *)self noteRootFolderDidMutate];
  if (self->_iconToReveal && ![(SBHIconModel *)self->_iconModel containsIcon:?])
  {
    [(SBHIconManager *)self setIconToReveal:0 revealingPrevious:0];
  }

  ++self->_relayoutCount;
}

- (void)_iconVisibilityChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v8 = [v5 objectForKey:@"SBIconModelIconsToShowKey"];

  v6 = [v4 userInfo];

  v7 = [v6 objectForKey:@"SBIconModelIconsToHideKey"];

  [(SBHIconManager *)self updateVisibleIconsToShowLeafIcons:v8 hideLeafIcons:v7];
}

- (void)noteIconStateChangedExternally
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __48__SBHIconManager_noteIconStateChangedExternally__block_invoke;
  v2[3] = &unk_1E8088C90;
  v2[4] = self;
  [(SBHIconManager *)self _enqueueTransitionName:@"noteIconStateChangedExternally" withHandler:v2];
}

void __48__SBHIconManager_noteIconStateChangedExternally__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setEditing:0];
  if ([*(a1 + 32) hasOpenFolder])
  {
    [*(a1 + 32) popToCurrentRootIconList];
  }

  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 iconManagerDidNoteIconStateChangedExternally:*(a1 + 32)];
  }

  v3 = [*(a1 + 32) iconModel];
  [v3 clearDesiredIconState];
  v4 = SBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_INFO, "Relaying out icon model due because the icon state changed externally.", v7, 2u);
  }

  [*(a1 + 32) relayout];
  v5 = [*(a1 + 32) rootFolderController];
  v6 = [*(a1 + 32) rootFolderController];
  [v5 setCurrentPageIndex:objc_msgSend(v6 animated:{"defaultPageIndex"), 0}];
}

- (void)noteRootFolderDidMutate
{
  previousIconGridPathsBeforeResize = self->_previousIconGridPathsBeforeResize;
  self->_previousIconGridPathsBeforeResize = 0;

  v4 = [(SBHIconManager *)self iconDragManager];
  [v4 noteRootFolderDidMutate];
}

- (BOOL)rootFolder:(id)a3 canBounceIcon:(id)a4
{
  v4 = [(SBHIconManager *)self iconDragManager:a3];
  v5 = [v4 isIconDragging];

  return v5;
}

- (id)iconLocationForList:(id)a3 inFolder:(id)a4 ofRootFolder:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SBHIconManager *)self rootFolder];
  v12 = @"SBIconLocationNone";
  v13 = [v10 todayList];

  if (v13 == v8)
  {
    v16 = SBIconLocationTodayView;
  }

  else
  {
    v14 = [v10 dock];

    if (v14 == v8)
    {
      v17 = [(SBHIconManager *)self isFloatingDockSupported];
      v16 = SBIconLocationFloatingDock;
      if (!v17)
      {
        v16 = SBIconLocationDock;
      }
    }

    else
    {
      v15 = [v10 dockUtilities];

      if (v15 == v8)
      {
        v16 = SBIconLocationFloatingDockUtilities;
      }

      else if (v9 && ([v9 isRootFolder] & 1) == 0)
      {
        v16 = SBIconLocationFolder;
      }

      else
      {
        if (v11 != v10)
        {
          goto LABEL_15;
        }

        v16 = SBIconLocationRoot;
      }
    }
  }

  v18 = *v16;

  v12 = v18;
LABEL_15:

  return v12;
}

- (BOOL)rootFolder:(id)a3 canAddIcon:(id)a4 toIconList:(id)a5 inFolder:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(SBHIconManager *)self rootFolder];

  if (v14 == v10)
  {
    v16 = [(SBHIconManager *)self iconLocationForList:v12 inFolder:v13 ofRootFolder:v10];
    if (SBIconLocationGroupContainsLocation(@"SBIconLocationGroupFloatingDock", v16) && (-[SBHIconManager floatingDockViewController](self, "floatingDockViewController"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 canAddIcon:v11 toIconList:v12 inFolder:v13], v17, !v18))
    {
      v15 = 0;
    }

    else
    {
      v19 = [(SBHIconManager *)self listLayoutProvider];
      v20 = [v19 layoutForIconLocation:v16];

      v21 = [v11 gridSizeClass];
      v22 = SBHIconListLayoutSupportsIconGridSizeClass(v20, v21);

      if (v22)
      {
        v23 = [(SBHIconManager *)self delegate];
        v15 = 0;
        if ((objc_opt_respondsToSelector() & 1) == 0 || [v23 iconManager:self canAddIcon:v11 toIconList:v12 inFolder:v13])
        {
          v24 = [v10 ignoredList];

          if (v24 != v12 || [(SBHIconManager *)self canAddIconToIgnoredList:v11])
          {
            v15 = 1;
          }
        }
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (BOOL)rootFolder:(id)a3 isGridLayoutValid:(id)a4 forIconList:(id)a5 inFolder:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(SBHIconManager *)self iconLocationForList:v12 inFolder:a6 ofRootFolder:v10];
  if (SBIconLocationGroupContainsLocation(@"SBIconLocationGroupRoot", v13))
  {
    v14 = [(SBHIconManager *)self listLayoutProvider];
    v15 = [v14 layoutForIconLocation:v13];

    v16 = [v12 allowedGridSizeClasses];
    if (SBHIconListLayoutSupportsIconGridSizeClass(v15, @"SBHIconGridSizeClassExtraLarge") && [v16 containsGridSizeClass:@"SBHIconGridSizeClassExtraLarge"])
    {
      v17 = [v10 iconGridSizeClassSizes];
      v18 = [v17 gridSizeForGridSizeClass:@"SBHIconGridSizeClassExtraLarge"];
      v19 = v18;
      v20 = SBHIconGridSizeGetArea(v18) < 2 || [v11 countOfIconsOfSize:v19] < 3;
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 1;
  }

  return v20;
}

- (id)rootFolder:(id)a3 shouldBounceIcon:(id)a4 afterInsertingIcons:(id)a5 forIconList:(id)a6 inFolder:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(SBHIconManager *)self iconLocationForList:v14 inFolder:a7 ofRootFolder:a3];
  if (!SBIconLocationGroupContainsLocation(@"SBIconLocationGroupRoot", v15))
  {
    goto LABEL_6;
  }

  v16 = [v14 directlyContainedIconsPassingTest:&__block_literal_global_1050];
  if ([v16 count] < 3)
  {
LABEL_5:

LABEL_6:
    v18 = v12;
    goto LABEL_7;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __87__SBHIconManager_rootFolder_shouldBounceIcon_afterInsertingIcons_forIconList_inFolder___block_invoke_2;
  v20[3] = &unk_1E808BFD8;
  v21 = v13;
  v17 = [v16 indexOfObjectWithOptions:2 passingTest:v20];
  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {

    goto LABEL_5;
  }

  v18 = [v16 objectAtIndex:v17];

LABEL_7:

  return v18;
}

uint64_t __87__SBHIconManager_rootFolder_shouldBounceIcon_afterInsertingIcons_forIconList_inFolder___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 gridSizeClass];
  if (v3 == @"SBHIconGridSizeClassExtraLarge")
  {
    v5 = 1;
  }

  else
  {
    v4 = [v2 gridSizeClass];
    v5 = [v4 isEqualToString:@"SBHIconGridSizeClassExtraLarge"];
  }

  return v5;
}

- (void)rootFolder:(id)a3 wantsToDoPageHidingEducationWithCompletion:(id)a4
{
  v5 = a4;
  v6 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__SBHIconManager_rootFolder_wantsToDoPageHidingEducationWithCompletion___block_invoke;
    v7[3] = &unk_1E808B3C0;
    v7[4] = self;
    v8 = v5;
    [v6 iconManager:self prepareForPageHidingEducationWithCompletionHandler:v7];
  }

  else if (v5)
  {
    (*(v5 + 2))(v5, 0);
  }
}

uint64_t __72__SBHIconManager_rootFolder_wantsToDoPageHidingEducationWithCompletion___block_invoke(uint64_t a1, int a2)
{
  if (a2 && [*(a1 + 32) isEditingAllowed])
  {
    [*(a1 + 32) setEditing:1 withFeedbackBehavior:0 location:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    v3 = [*(a1 + 32) rootFolderController];
    [v3 _doPageManagementEducation];
  }

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)addPageStateObserver:(id)a3
{
  v4 = a3;
  pageStateObservers = self->_pageStateObservers;
  v8 = v4;
  if (!pageStateObservers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_pageStateObservers;
    self->_pageStateObservers = v6;

    v4 = v8;
    pageStateObservers = self->_pageStateObservers;
  }

  [(NSHashTable *)pageStateObservers addObject:v4];
}

- (void)enumeratePageStateObserversUsingBlock:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSHashTable *)self->_pageStateObservers allObjects];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4[2](v4, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)rootFolderPageStateProvider:(id)a3 willBeginTransitionToState:(int64_t)a4 animated:(BOOL)a5 interactive:(BOOL)a6
{
  v10 = a3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __94__SBHIconManager_rootFolderPageStateProvider_willBeginTransitionToState_animated_interactive___block_invoke;
  v12[3] = &unk_1E80894B0;
  v13 = v10;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v11 = v10;
  [(SBHIconManager *)self enumeratePageStateObserversUsingBlock:v12];
  [(SBHIconManager *)self setCanPresentOverscrollLibraryForPageTransition:1];
  [(SBHIconManager *)self setCanDismissOverscrollLibraryForPageTransition:1];
}

- (void)rootFolderPageStateProvider:(id)a3 didContinueTransitionToState:(int64_t)a4 progress:(double)a5
{
  v8 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__SBHIconManager_rootFolderPageStateProvider_didContinueTransitionToState_progress___block_invoke;
  v11[3] = &unk_1E8089518;
  v9 = v8;
  v12 = v9;
  v13 = a4;
  v14 = a5;
  [(SBHIconManager *)self enumeratePageStateObserversUsingBlock:v11];
  if (a4 == 4)
  {
    if (a5 > 0.5 || [v9 pageState] == 4)
    {
      if ([(SBHIconManager *)self canPresentOverscrollLibraryForPageTransition]&& ![(SBHIconManager *)self isTrackingScroll])
      {
        v10 = 1;
LABEL_13:
        [(SBHIconManager *)self _updateOverscrollModalLibraryForScrollToPresented:v10];
        [(SBHIconManager *)self setCanPresentOverscrollLibraryForPageTransition:v10 ^ 1];
        goto LABEL_14;
      }
    }

    else if ([(SBHIconManager *)self canDismissOverscrollLibraryForPageTransition])
    {
      v10 = 0;
      goto LABEL_13;
    }
  }

  else if (!a4 && a5 > 0.5 && [(SBHIconManager *)self canDismissOverscrollLibraryForPageTransition])
  {
    [(SBHIconManager *)self _updateOverscrollModalLibraryForScrollToPresented:0];
    v10 = 0;
LABEL_14:
    [(SBHIconManager *)self setCanDismissOverscrollLibraryForPageTransition:v10];
  }
}

- (void)rootFolderPageStateProvider:(id)a3 willEndTransitionToState:(int64_t)a4 successfully:(BOOL)a5
{
  v8 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__SBHIconManager_rootFolderPageStateProvider_willEndTransitionToState_successfully___block_invoke;
  v10[3] = &unk_1E8089540;
  v11 = v8;
  v12 = a4;
  v13 = a5;
  v9 = v8;
  [(SBHIconManager *)self enumeratePageStateObserversUsingBlock:v10];
}

- (void)rootFolderPageStateProvider:(id)a3 didEndTransitionFromState:(int64_t)a4 toState:(int64_t)a5 successfully:(BOOL)a6
{
  v10 = a3;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __93__SBHIconManager_rootFolderPageStateProvider_didEndTransitionFromState_toState_successfully___block_invoke;
  v15 = &unk_1E8089568;
  v11 = v10;
  v16 = v11;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  [(SBHIconManager *)self enumeratePageStateObserversUsingBlock:&v12];
  if ([v11 pageState] == 4)
  {
    [(SBHIconManager *)self _updateOverscrollModalLibraryForScrollToPresented:1];
  }
}

- (void)_updateOverscrollModalLibraryForScrollToPresented:(BOOL)a3
{
  v3 = a3;
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(SBHIconManager *)self _currentFolderController];
    v7 = [v5 iconManager:self floatingDockViewControllerForViewController:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 isPresentingLibrary];
  if (v3)
  {
    if ((v8 & 1) == 0)
    {
      [v7 presentLibraryAnimated:1 completion:0];
      v13 = *MEMORY[0x1E69D4548];
      v14[0] = &unk_1F3DB2918;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v10 = MEMORY[0x1E69D3F90];
      v11 = v9;
      v12 = [v10 sharedInstance];
      [v12 emitEvent:51 withPayload:v11];
    }
  }

  else if (v8)
  {
    [v7 dismissLibraryAnimated:1 completion:0];
  }
}

- (void)libraryViewControllerDidPresent:(id)a3
{
  v4 = [(SBHIconManager *)self trailingLibraryViewController];
  v5 = v4;
  if (v4)
  {
    v8 = v4;
    v4 = [(SBHIconManager *)self isShowingOrTransitioningToTrailingCustomView];
    v5 = v8;
    if (v4)
    {
      if (!self->_trailingCustomLibraryPrewarmAssertion)
      {
        v6 = [v8 acquireLibrarySearchPrewarmAssertionForReason:@"Coplanar trailing custom library is presented"];
        trailingCustomLibraryPrewarmAssertion = self->_trailingCustomLibraryPrewarmAssertion;
        self->_trailingCustomLibraryPrewarmAssertion = v6;

        v5 = v8;
      }
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)libraryViewControllerDidDismiss:(id)a3
{
  v4 = [(SBHIconManager *)self trailingLibraryViewController];
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    v4 = [(SBHIconManager *)self isShowingOrTransitioningToTrailingCustomView];
    v5 = v7;
    if ((v4 & 1) == 0)
    {
      [(BSInvalidatable *)self->_trailingCustomLibraryPrewarmAssertion invalidate];
      trailingCustomLibraryPrewarmAssertion = self->_trailingCustomLibraryPrewarmAssertion;
      self->_trailingCustomLibraryPrewarmAssertion = 0;

      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)libraryViewController:(id)a3 willPresentSearchController:(id)a4
{
  if ([(SBHIconManager *)self isEditing:a3])
  {
    [(SBHIconManager *)self setEditing:0];
    self->_editingShouldBeReEnabledAfterLibrarySearchControllerIsDismissed = 1;
  }
}

- (void)libraryViewController:(id)a3 willDismissSearchController:(id)a4
{
  if (self->_editingShouldBeReEnabledAfterLibrarySearchControllerIsDismissed && [(SBHIconManager *)self isEditingAllowed:a3])
  {
    [(SBHIconManager *)self setEditing:1];
  }

  self->_editingShouldBeReEnabledAfterLibrarySearchControllerIsDismissed = 0;
}

- (void)libraryViewController:(id)a3 willLaunchIcon:(id)a4 fromLocation:(id)a5
{
  if ([a5 isEqual:{@"SBIconLocationAppLibrarySearch", a4}])
  {
    self->_editingShouldBeReEnabledAfterLibrarySearchControllerIsDismissed = 0;
  }
}

- (void)libraryViewController:(id)a3 didAcceptDrop:(id)a4
{
  v5 = a4;
  v6 = [(SBHIconManager *)self iconDragManager];
  [v6 noteDragItemWasConsumedExternallyForDropSession:v5];
}

- (void)todayViewController:(id)a3 didChangePresentationProgress:(double)a4 newPresentationProgress:(double)a5 fromLeading:(BOOL)a6
{
  v8 = a3;
  if (a5 <= 1.0)
  {
    v9 = v8;
    [(SBHIconManager *)self _todayViewControllerSuppressesEditingStateForListViews:a5 == 1.0];
    v8 = v9;
  }
}

- (void)_todayViewControllerSuppressesEditingStateForListViews:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBHIconManager *)self rootFolderController];
  v6 = [v5 rootFolderView];
  [v6 setSuppressesEditingStateForListViews:v3];

  v7 = [(SBHIconManager *)self floatingDockViewController];
  [v7 setSuppressesEditingStateForListViews:v3];
}

- (void)addFolderPresentationObserver:(id)a3
{
  v4 = a3;
  folderPresentationObservers = self->_folderPresentationObservers;
  v8 = v4;
  if (!folderPresentationObservers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_folderPresentationObservers;
    self->_folderPresentationObservers = v6;

    v4 = v8;
    folderPresentationObservers = self->_folderPresentationObservers;
  }

  [(NSHashTable *)folderPresentationObservers addObject:v4];
}

- (void)removeFolderPresentationObserver:(id)a3
{
  [(NSHashTable *)self->_folderPresentationObservers removeObject:a3];
  if (![(NSHashTable *)self->_folderPresentationObservers count])
  {
    folderPresentationObservers = self->_folderPresentationObservers;
    self->_folderPresentationObservers = 0;
  }
}

void __58__SBHIconManager_extensionsDidChangeForExtensionProvider___block_invoke(uint64_t a1)
{
  v2 = SBLogWidgets();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BEB18000, v2, OS_LOG_TYPE_DEFAULT, "widget extensions changed", v4, 2u);
  }

  [*(a1 + 32) checkForInvalidWidgets];
  [*(a1 + 32) _validateAndRepairIntentsForConfigurableWidgets];
  [*(a1 + 32) _processPendingDefaultIntents];
  v3 = [*(a1 + 32) rootFolderController];
  [v3 updatePresentedWidgetEditingViewController];
}

- (void)_processPendingDefaultIntents
{
  v22 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  pendingWidgetIntentConfigurationInitializations = self->_pendingWidgetIntentConfigurationInitializations;
  ++self->_descriptorsChangedSequenceNumber;
  v4 = [(NSMutableSet *)pendingWidgetIntentConfigurationInitializations count];
  if (v4)
  {
    v5 = v4;
    activeWidgetIntentConfigurationInitializations = self->_activeWidgetIntentConfigurationInitializations;
    if (!activeWidgetIntentConfigurationInitializations)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v8 = self->_activeWidgetIntentConfigurationInitializations;
      self->_activeWidgetIntentConfigurationInitializations = v7;

      activeWidgetIntentConfigurationInitializations = self->_activeWidgetIntentConfigurationInitializations;
    }

    [(NSMutableSet *)activeWidgetIntentConfigurationInitializations unionSet:self->_pendingWidgetIntentConfigurationInitializations];
    [(NSMutableSet *)self->_pendingWidgetIntentConfigurationInitializations removeAllObjects];
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2020000000;
    v18[3] = 0;
    v9 = SBLogIcon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v21 = v5;
      _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_DEFAULT, "Descriptors changed. Attempting %d default intent loading operations", buf, 8u);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v10 = [(NSMutableSet *)self->_activeWidgetIntentConfigurationInitializations copy];
    v11 = [v10 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v11)
    {
      v12 = *v15;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v10);
          }

          (*(*(*(&v14 + 1) + 8 * i) + 16))();
        }

        v11 = [v10 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v11);
    }

    _Block_object_dispose(v18, 8);
  }
}

void __47__SBHIconManager__processPendingDefaultIntents__block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  ++*(*(*(a1 + 48) + 8) + 24);
  v2 = *(a1 + 72);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2 == 1)
  {
    v5 = *(v4 + 264);
    v6 = _Block_copy(v3);
    [v5 removeObject:v6];
  }

  else
  {
    v7 = *(v4 + 256);
    v6 = _Block_copy(v3);
    [v7 addObject:v6];
  }

  v8 = SBLogIcon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(*(a1 + 32) + 264) count];
    *buf = 67109120;
    v27 = v9;
    _os_log_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_DEFAULT, "Remaining default intent operations: %d", buf, 8u);
  }

  if (*(*(*(a1 + 48) + 8) + 24) == *(a1 + 56))
  {
    v10 = *(a1 + 32);
    if (*(a1 + 64) != *(v10 + 248))
    {
      v11 = [*(v10 + 256) count];
      v12 = *(a1 + 32);
      if (v11)
      {
        [v12 _processPendingDefaultIntents];
      }

      else if ([v12[33] count])
      {
        v13 = *(*(a1 + 32) + 272);
        v14 = *(a1 + 32);
        v15 = *(v14 + 272);
        *(v14 + 272) = 0;

        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v16 = v13;
        v17 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v22;
          do
          {
            v20 = 0;
            do
            {
              if (*v22 != v19)
              {
                objc_enumerationMutation(v16);
              }

              (*(*(*(&v21 + 1) + 8 * v20) + 16))(*(*(&v21 + 1) + 8 * v20));
              ++v20;
            }

            while (v18 != v20);
            v18 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
          }

          while (v18);
        }
      }
    }
  }
}

- (NSArray)defaultFirstPageSuggestedWidgetIcons
{
  v72 = *MEMORY[0x1E69E9840];
  defaultFirstPageSuggestedWidgetIcons = self->_defaultFirstPageSuggestedWidgetIcons;
  if (defaultFirstPageSuggestedWidgetIcons)
  {
    v3 = defaultFirstPageSuggestedWidgetIcons;
    goto LABEL_45;
  }

  v5 = [(SBHIconManager *)self delegate];
  v46 = [(SBHIconManager *)self gridSizeClassDomain];
  v6 = [(SBHIconManager *)self defaultFirstPageWidgetDescriptors];
  if (v6)
  {
    v41 = v5;
    v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v45 = [(SBHIconManager *)self defaultFirstPageWidgetSizeClass];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = v6;
    v47 = [obj countByEnumeratingWithState:&v62 objects:v71 count:16];
    if (v47)
    {
      v43 = *v63;
      do
      {
        v7 = 0;
        do
        {
          if (*v63 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v49 = v7;
          v8 = *(*(&v62 + 1) + 8 * v7);
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v9 = v8;
          v10 = [v9 countByEnumeratingWithState:&v58 objects:v70 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v59;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v59 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v58 + 1) + 8 * i);
                v15 = SBLogWidgetDiscoverabilityMigration();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v69 = v14;
                  _os_log_impl(&dword_1BEB18000, v15, OS_LOG_TYPE_DEFAULT, "[ContainerBundleIdentifier debugging] avocado descriptors from proactive = %@", buf, 0xCu);
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v58 objects:v70 count:16];
            }

            while (v11);
          }

          v16 = [[SBWidgetIcon alloc] initWithCHSWidgetDescriptors:v9 inDomain:v46];
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v48 = v16;
          v17 = [(SBWidgetIcon *)v16 widgets];
          v18 = [v17 countByEnumeratingWithState:&v54 objects:v67 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v55;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v55 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v54 + 1) + 8 * j);
                v23 = SBLogWidgetDiscoverabilityMigration();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  v24 = [v22 containerBundleIdentifier];
                  *buf = 138412290;
                  v69 = v24;
                  _os_log_impl(&dword_1BEB18000, v23, OS_LOG_TYPE_DEFAULT, "[ContainerBundleIdentifier debugging] container bundle identifier = %@", buf, 0xCu);
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v54 objects:v67 count:16];
            }

            while (v19);
          }

          [(SBIcon *)v48 setGridSizeClass:v45];
          [v44 addObject:v48];

          v7 = v49 + 1;
        }

        while (v49 + 1 != v47);
        v47 = [obj countByEnumeratingWithState:&v62 objects:v71 count:16];
      }

      while (v47);
    }

    v25 = v44;
    v26 = SBLogWidgetDiscoverabilityMigration();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v69 = v25;
      _os_log_impl(&dword_1BEB18000, v26, OS_LOG_TYPE_DEFAULT, "Proactive provided widgets %@", buf, 0xCu);
    }

    v27 = v25;
    v5 = v41;
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v27 = 0;
      goto LABEL_33;
    }

    v27 = [v5 fallbackDefaultFirstPageWidgetsForIconManager:self];
    v25 = SBLogWidgetDiscoverabilityMigration();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v69 = v27;
      _os_log_impl(&dword_1BEB18000, v25, OS_LOG_TYPE_DEFAULT, "Fallback widgets %@", buf, 0xCu);
    }
  }

LABEL_33:
  v28 = v27;
  v29 = objc_opt_respondsToSelector();
  v30 = SBLogWidgetDiscoverabilityMigration();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v69) = v29 & 1;
    _os_log_impl(&dword_1BEB18000, v30, OS_LOG_TYPE_DEFAULT, "Call builder %d", buf, 8u);
  }

  v31 = v28;
  if (v29)
  {
    v31 = [v5 iconManager:self willAddDefaultFirstPageWidgetsBasedOnPinnedWidgets:MEMORY[0x1E695E0F0] suggestionWidgets:v28];
  }

  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v31, "count")}];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v32 = v31;
  v33 = [v32 countByEnumeratingWithState:&v50 objects:v66 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v51;
    do
    {
      for (k = 0; k != v34; ++k)
      {
        if (*v51 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = [*(*(&v50 + 1) + 8 * k) copyWithSuggestionSource:2];
        [(NSArray *)v3 addObject:v37];
      }

      v34 = [v32 countByEnumeratingWithState:&v50 objects:v66 count:16];
    }

    while (v34);
  }

  v38 = [MEMORY[0x1E695DEC8] arrayWithArray:v3];
  v39 = self->_defaultFirstPageSuggestedWidgetIcons;
  self->_defaultFirstPageSuggestedWidgetIcons = v38;

LABEL_45:

  return v3;
}

- (void)prototypeSetDefaultSecondPageWidgetIcons
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(SBHIconManager *)self widgetExtensionProvider];
  v4 = [[SBHWidget alloc] initWithKind:@"com.apple.tv" extensionBundleIdentifier:@"com.apple.tv.TVWidgetExtension"];
  v5 = [v3 sbh_descriptorForWidgetIdentifiable:v4];
  v6 = v5;
  if (v5)
  {
    v9 = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
    v10[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [(SBHIconManager *)self setDefaultSecondPageWidgetDescriptors:v8];

    [(SBHIconManager *)self setDefaultSecondPageWidgetSizeClass:@"SBHIconGridSizeClassExtraLarge"];
  }
}

- (NSArray)defaultSecondPageSuggestedWidgetIcons
{
  v23 = *MEMORY[0x1E69E9840];
  defaultSecondPageSuggestedWidgetIcons = self->_defaultSecondPageSuggestedWidgetIcons;
  if (defaultSecondPageSuggestedWidgetIcons)
  {
    v3 = defaultSecondPageSuggestedWidgetIcons;
  }

  else
  {
    v5 = [(SBHIconManager *)self defaultSecondPageWidgetDescriptors];
    if (v5)
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v6 = [(SBHIconManager *)self defaultSecondPageWidgetSizeClass];
      v7 = [(SBHIconManager *)self gridSizeClassDomain];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v17 = v5;
      v8 = v5;
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [[SBWidgetIcon alloc] initWithCHSWidgetDescriptors:*(*(&v18 + 1) + 8 * i) suggestionSource:2 inDomain:v7];
            [(SBIcon *)v13 setGridSizeClass:v6];
            [(NSArray *)v3 addObject:v13];
          }

          v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v10);
      }

      v5 = v17;
    }

    else
    {
      v3 = 0;
    }

    v14 = [MEMORY[0x1E695DEC8] arrayWithArray:v3];
    v15 = self->_defaultSecondPageSuggestedWidgetIcons;
    self->_defaultSecondPageSuggestedWidgetIcons = v14;
  }

  return v3;
}

- (BOOL)rootFolderContainsWidgets
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(SBHIconManager *)self rootFolder];
  v3 = [v2 lists];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = objc_opt_self();
        LOBYTE(v7) = [v7 directlyContainsIconOfClass:v8];

        if (v7)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)saveOriginalIconStateForWidgetDiscoverability
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(SBHIconManager *)self iconModel];
  [v3 saveIconStateIfNeeded];
  v4 = [v3 store];
  v12 = 0;
  v5 = [v4 loadCurrentIconState:&v12];
  v6 = v12;
  if (!v5)
  {
    v7 = SBLogWidgetDiscoverabilityMigration();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *buf = 138412290;
        v14 = v6;
        v9 = "Save original icon state error: %@";
        v10 = v7;
        v11 = 12;
LABEL_8:
        _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      }
    }

    else if (v8)
    {
      *buf = 0;
      v9 = "Save original icon state is empty";
      v10 = v7;
      v11 = 2;
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem setOriginalIconStateBeforeWidgetDiscoverability:v5];
LABEL_10:
}

- (BOOL)applyOriginaliconStateForWidgetDiscoverability
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(SBHIconManager *)self iconModel];
  [v3 saveIconStateIfNeeded];
  v4 = [v3 store];
  v5 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem originalIconStateBeforeWidgetDiscoverability];
  v14 = 0;
  v6 = [v4 saveCurrentIconState:v5 error:&v14];
  v7 = v14;

  if (!v6)
  {
    v8 = SBLogWidgetDiscoverabilityMigration();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        *buf = 138412290;
        v16 = v7;
        v10 = "Apply original icon state error: %@";
        v11 = v8;
        v12 = 12;
LABEL_8:
        _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      }
    }

    else if (v9)
    {
      *buf = 0;
      v10 = "Apply original icon state failed";
      v11 = v8;
      v12 = 2;
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  [v3 layout];
LABEL_10:

  return v6;
}

- (BOOL)addDefaultWidgetsToHomeScreen
{
  v3 = [(SBHIconManager *)self rootFolder];
  if (v3 && ![(SBHIconManager *)self rootFolderContainsWidgets])
  {
    v5 = SBLogWidgetDiscoverabilityMigration();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "Saving original icon state", buf, 2u);
    }

    [(SBHIconManager *)self saveOriginalIconStateForWidgetDiscoverability];
    v6 = SBLogWidgetDiscoverabilityMigration();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "Adding default widgets to home screen.", v9, 2u);
    }

    [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem resetDefaultWidgetsUndoInfo];
    v7 = [(SBHIconManager *)self addDefaultFirstPageWidgetsToHomeScreen:0];
    v4 = v7 | [(SBHIconManager *)self addDefaultSecondPageWidgetsToHomeScreen:0];
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (void)displayPronouncedContainerViewVisibility:(BOOL)a3 isVertical:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v24 = *MEMORY[0x1E69E9840];
  v7 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 iconManagerShouldShowWidgetIntroductionPopoverForDefaultWidgets:self];
  }

  else
  {
    v8 = 1;
  }

  v9 = [(SBHIconManager *)self rootFolderController];
  v10 = [v9 canShowWidgetIntroduction];

  v11 = [(SBHIconManager *)self homeScreenDefaults];
  v12 = [v11 shouldShowWidgetIntroductionPopover];

  v13 = SBLogWidgetDiscoverabilityMigration();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134218752;
    v17 = v8;
    v18 = 2048;
    v19 = v10;
    v20 = 2048;
    v21 = v12;
    v22 = 2048;
    v23 = v5;
    _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_DEFAULT, "IM pronounced container: shouldShowPopover(%ld), rootFolderControllerCanShow(%ld), userDefaultsShouldShow(%ld), force(%ld)", &v16, 0x2Au);
  }

  if ((v8 & v10 & v12 & 1) != 0 || v5)
  {
    v14 = [(SBHIconManager *)self usageMonitor];
    [v14 noteWidgetDiscoverabilityStarted];

    [(SBHIconManager *)self updatePronouncedContainerViewVisibility:1 vertical:v4];
    v15 = [(SBHIconManager *)self homeScreenDefaults];
    [v15 setShouldShowWidgetIntroductionPopover:0];
  }
}

- (BOOL)addDefaultFirstPageWidgetsToHomeScreen:(BOOL)a3
{
  v3 = a3;
  v64 = *MEMORY[0x1E69E9840];
  v5 = [(SBHIconManager *)self defaultFirstPageSuggestedWidgetIcons];
  v6 = SBLogWidgetDiscoverabilityMigration();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v63 = v5;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "Default first page widget icons %@", buf, 0xCu);
  }

  v7 = [(__CFString *)v5 count];
  if (v7)
  {
    v8 = [(SBHIconManager *)self rootFolder];
    v9 = [v8 firstVisibleListIndex];

    v10 = [(SBHIconManager *)self rootFolder];
    v11 = [v10 listAtIndex:v9];

    if ([(__CFString *)v5 count]!= 4)
    {
      goto LABEL_30;
    }

    v60 = [(__CFString *)v5 objectAtIndex:0];
    v12 = [v60 gridSizeClass];
    if (v12 != @"SBHIconGridSizeClassSmall")
    {
      v13 = v3;
      v14 = v11;
      v15 = [(__CFString *)v5 objectAtIndex:0];
      v16 = [v15 gridSizeClass];
      if (![v16 isEqualToString:@"SBHIconGridSizeClassSmall"])
      {

        v11 = v14;
        v3 = v13;
        goto LABEL_30;
      }

      v49 = v15;
      v10 = v16;
      v11 = v14;
      v3 = v13;
    }

    v59 = [(__CFString *)v5 objectAtIndex:1];
    v58 = [v59 gridSizeClass];
    v56 = v10;
    if (v58 != @"SBHIconGridSizeClassSmall")
    {
      v51 = [(__CFString *)v5 objectAtIndex:1];
      v50 = [v51 gridSizeClass];
      if (![v50 isEqualToString:@"SBHIconGridSizeClassSmall"])
      {
        v57 = 0;
        v17 = v58;
        goto LABEL_23;
      }
    }

    v53 = [(__CFString *)v5 objectAtIndex:2];
    v52 = [v53 gridSizeClass];
    if (v52 == @"SBHIconGridSizeClassMedium")
    {
      v47 = v12;
      v48 = v11;
      v54 = v3;
    }

    else
    {
      v46 = [(__CFString *)v5 objectAtIndex:2];
      v45 = [v46 gridSizeClass];
      if (![v45 isEqualToString:@"SBHIconGridSizeClassMedium"])
      {
        v57 = 0;
        v23 = v52;
        goto LABEL_21;
      }

      v47 = v12;
      v48 = v11;
      v54 = v3;
    }

    v18 = [(__CFString *)v5 objectAtIndex:3];
    v19 = [v18 gridSizeClass];
    v20 = v19;
    if (v19 == @"SBHIconGridSizeClassLarge")
    {

      v57 = 1;
    }

    else
    {
      v21 = [(__CFString *)v5 objectAtIndex:3];
      v22 = [v21 gridSizeClass];
      v57 = [v22 isEqualToString:@"SBHIconGridSizeClassLarge"];
    }

    v23 = v52;
    v3 = v54;
    v12 = v47;
    v11 = v48;
    if (v52 == @"SBHIconGridSizeClassMedium")
    {
LABEL_22:

      v17 = v58;
      if (v58 == @"SBHIconGridSizeClassSmall")
      {
LABEL_24:

        if (v12 == @"SBHIconGridSizeClassSmall")
        {

          if (!v57)
          {
            goto LABEL_30;
          }
        }

        else
        {

          if ((v57 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        if ([v11 numberOfIcons] >= 9)
        {
          v24 = [(SBHIconManager *)self rootFolder];
          v25 = [v24 gridPathWithListAtIndex:0 gridCellIndex:0 listGridCellInfoOptions:{-[SBHIconManager gridCellInfoOptionsForInsertingDefaultWidgets](self, "gridCellInfoOptionsForInsertingDefaultWidgets")}];

          v26 = MEMORY[0x1E695DEC8];
          v27 = [(__CFString *)v5 subarrayWithRange:0, 2];
          v61 = [v26 arrayWithArray:v27];

          v28 = [(SBHIconManager *)self rootFolder];
          v29 = [v28 gridPathWithListAtIndex:0 gridCellIndex:4 listGridCellInfoOptions:{-[SBHIconManager gridCellInfoOptionsForInsertingDefaultWidgets](self, "gridCellInfoOptionsForInsertingDefaultWidgets")}];

          v30 = MEMORY[0x1E695DEC8];
          [(__CFString *)v5 objectAtIndex:2];
          v31 = v55 = v3;
          v32 = [v30 arrayWithObject:v31];

          [(SBHIconManager *)self rootFolder];
          v34 = v33 = v11;
          v35 = [v34 gridPathWithListAtIndex:0 gridCellIndex:12 listGridCellInfoOptions:{-[SBHIconManager gridCellInfoOptionsForInsertingDefaultWidgets](self, "gridCellInfoOptionsForInsertingDefaultWidgets")}];

          v36 = MEMORY[0x1E695DEC8];
          v37 = [(__CFString *)v5 lastObject];
          v38 = [v36 arrayWithObject:v37];

          [(SBHIconManager *)self beginStopUpdatingDefaultWidgetsBumpedIconRecord];
          [(SBHIconManager *)self addWidgets:v61 toGridPath:v25 overflowOptions:0];
          [(SBHIconManager *)self addWidgets:v32 toGridPath:v29 overflowOptions:0];
          [(SBHIconManager *)self addWidgets:v38 toGridPath:v35 overflowOptions:0];
          [(SBHIconManager *)self endStopUpdatingDefaultWidgetsBumpedIconRecord];

          v11 = v33;
          v3 = v55;

          v39 = 1;
LABEL_33:

          [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem setIsVerticalWidgetIntroduction:v39];
          [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem setForceShowWidgetIntroduction:v3];

          goto LABEL_34;
        }

LABEL_30:
        v40 = [(SBHIconManager *)self rootFolder];
        v25 = [v40 gridPathWithListAtIndex:v9 gridCellIndex:0 listGridCellInfoOptions:{-[SBHIconManager gridCellInfoOptionsForInsertingDefaultWidgets](self, "gridCellInfoOptionsForInsertingDefaultWidgets")}];

        [(SBHIconManager *)self beginStopUpdatingDefaultWidgetsBumpedIconRecord];
        v41 = SBLogWidgetDiscoverabilityMigration();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v63 = v5;
          _os_log_impl(&dword_1BEB18000, v41, OS_LOG_TYPE_DEFAULT, "Add first page default widget icons(%@) to model", buf, 0xCu);
        }

        [(SBHIconManager *)self addWidgets:v5 toGridPath:v25 overflowOptions:0];
        [(SBHIconManager *)self endStopUpdatingDefaultWidgetsBumpedIconRecord];
        v39 = 0;
        goto LABEL_33;
      }

LABEL_23:

      goto LABEL_24;
    }

LABEL_21:

    goto LABEL_22;
  }

LABEL_34:
  v42 = SBLogWidgetDiscoverabilityMigration();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = @"not added";
    if (v7)
    {
      v43 = @"added";
    }

    *buf = 138412290;
    v63 = v43;
    _os_log_impl(&dword_1BEB18000, v42, OS_LOG_TYPE_DEFAULT, "First page widgets are %@", buf, 0xCu);
  }

  return v7 != 0;
}

- (BOOL)addDefaultSecondPageWidgetsToHomeScreen:(BOOL)a3
{
  v36 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    [(SBHIconManager *)self prototypeSetDefaultSecondPageWidgetIcons];
  }

  v4 = [(SBHIconManager *)self defaultSecondPageSuggestedWidgetIcons];
  if ([v4 count])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v30;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v29 + 1) + 8 * i) activeWidget];
          v11 = [v10 extensionBundleIdentifier];

          v12 = [(SBHIconManager *)self rootFolder];
          v13 = [v12 containsWidgetWithExtensionBundleIdentifier:v11];

          if (v13)
          {
            v20 = [(SBHIconManager *)self proactiveWidgetSuggesterClient];
            [v20 logEventForDefaultWidgetSuggestionType:1 event:1];

            LOBYTE(v21) = 0;
            goto LABEL_24;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v14 = [(SBHIconManager *)self rootFolder];
    v15 = [v14 firstVisibleListIndex];

    v16 = [(SBHIconManager *)self rootFolder];
    v17 = [v16 nextVisibleListIndexAfterIndex:v15];

    v18 = [(SBHIconManager *)self rootFolder];
    v19 = v18;
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v18 addEmptyListRemovingLeastRecentlyHiddenListIfNecessary];
    }

    else
    {
      [v18 listAtIndex:v17];
    }
    v22 = ;

    v21 = v22 != 0;
    if (v22)
    {
      v23 = [(SBHIconManager *)self rootFolder];
      v24 = [v23 indexOfList:v22];

      v25 = [(SBHIconManager *)self rootFolder];
      v26 = [v25 gridPathWithListAtIndex:v24 gridCellIndex:0 listGridCellInfoOptions:{-[SBHIconManager gridCellInfoOptionsForInsertingDefaultWidgets](self, "gridCellInfoOptionsForInsertingDefaultWidgets")}];

      [(SBHIconManager *)self beginStopUpdatingDefaultWidgetsBumpedIconRecord];
      [(SBHIconManager *)self addWidgets:v5 toGridPath:v26 overflowOptions:0];
      [(SBHIconManager *)self endStopUpdatingDefaultWidgetsBumpedIconRecord];
    }
  }

  else
  {
    v21 = 0;
  }

  v5 = SBLogWidgetDiscoverabilityMigration();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v27 = @"not added";
    if (v21)
    {
      v27 = @"added";
    }

    *buf = 138412290;
    v34 = v27;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "Second page widgets are %@", buf, 0xCu);
  }

LABEL_24:

  return v21;
}

- (BOOL)userHasUsedWidget
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.DuetExpertCenter.AppPredictionExpert"];
  v3 = [v2 BOOLForKey:@"hasHadWidgetsOnHomeScreen"];
  v4 = SBLogWidgetDiscoverabilityMigration();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "User has had widget = %ld", &v6, 0xCu);
  }

  return v3;
}

- (void)undoDefaultWidgets:(BOOL)a3
{
  [(SBHIconManager *)self updatePronouncedContainerViewVisibility:0 vertical:0];
  if (![(SBHIconManager *)self applyOriginaliconStateForWidgetDiscoverability])
  {
    v5 = [(SBHIconManager *)self defaultFirstPageSuggestedWidgetIcons];
    v6 = [(SBHIconManager *)self defaultSecondPageSuggestedWidgetIcons];
    v7 = [(SBHIconManager *)self iconModel];
    v8 = [MEMORY[0x1E69DC938] currentDevice];
    v9 = [v8 userInterfaceIdiom];

    if ((v9 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [v7 removeIcons:v6];
    }

    [v7 removeIcons:v5];
  }

  if (!a3)
  {
    v10 = [(SBHIconManager *)self homeScreenDefaults];
    [v10 setUserDidUndoSuggestedWidget:1];

    [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem resetDefaultWidgetsUndoInfo];
    v11 = [(SBHIconManager *)self widgetIntroductionSettings];
    [v11 setShowWidgetIntroConvenienceControl:0];
  }
}

- (void)undoDefaultTVWidget
{
  [(SBHIconManager *)self updatePronouncedContainerViewVisibility:0 vertical:0];
  v5 = [(SBHIconManager *)self defaultSecondPageSuggestedWidgetIcons];
  v3 = [(SBHIconManager *)self iconModel];
  [v3 removeIcons:v5];
  v4 = [(SBHIconManager *)self widgetIntroductionSettings];
  [v4 setShowXLTVWidget:0];
}

- (BOOL)rootFolderContainsSuggestedWidget
{
  v3 = [(SBHIconManager *)self homeScreenDefaults];
  v4 = [v3 userDidUndoSuggestedWidget];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v6 = [(SBHIconManager *)self rootFolder];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__SBHIconManager_rootFolderContainsSuggestedWidget__block_invoke;
    v8[3] = &unk_1E8090328;
    v8[4] = self;
    v8[5] = &v9;
    [v6 enumerateAllIconsUsingBlock:v8];

    v5 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
  }

  return v5 & 1;
}

void __51__SBHIconManager_rootFolderContainsSuggestedWidget__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && [*(a1 + 32) widgetIconIsOnboardingWidget:v8])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)updateWidgetDiscoverabilityUserPreferencesByDeletingWidget:(id)a3
{
  v9 = a3;
  v4 = [(SBHIconManager *)self homeScreenDefaults];
  if (([v4 userHasDeletedSuggestedWidget] & 1) == 0)
  {
    v5 = [(SBHIconManager *)self widgetIconIsOnboardingWidget:v9];

    if (!v5)
    {
      goto LABEL_5;
    }

    v4 = [(SBHIconManager *)self homeScreenDefaults];
    [v4 setUserHasDeletedSuggestedWidget:1];
  }

LABEL_5:
  if ([(SBHIconManager *)self rootFolderContainsSuggestedWidget])
  {
    v6 = [(SBHIconManager *)self defaultSecondPageSuggestedWidgetIcons];
    v7 = [v6 containsObject:v9];

    if (!v7)
    {
      goto LABEL_10;
    }

    v8 = [(SBHIconManager *)self proactiveWidgetSuggesterClient];
    [v8 logEventForDefaultWidgetSuggestionType:1 event:3];
  }

  else
  {
    v8 = [(SBHIconManager *)self homeScreenDefaults];
    [v8 setUserDidUndoSuggestedWidget:1];
  }

LABEL_10:
}

- (void)disableUserInteractionForWidgetDiscoverability
{
  v3 = [(SBHIconManager *)self rootFolderController];
  [v3 setScrollingDisabled:1 forReason:@"SBHIconManager WidgetDiscoverability"];

  [(SBHIconManager *)self setShouldDisableUserInteractionForWidgetDiscoverability:1];
}

- (void)enableUserInteractionForWidgetDiscoverability
{
  v3 = [(SBHIconManager *)self rootFolderController];
  [v3 setScrollingDisabled:0 forReason:@"SBHIconManager WidgetDiscoverability"];

  [(SBHIconManager *)self setShouldDisableUserInteractionForWidgetDiscoverability:0];
}

- (void)updatePronouncedContainerViewVisibility:(BOOL)a3 vertical:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(SBHIconManager *)self rootFolderController];
  [v6 updatePronouncedContainerViewVisibilityIfPossible:v5 vertical:v4];
}

- (BOOL)prototypeSettingShowWidgetIntroduction
{
  v2 = [(SBHIconManager *)self widgetIntroductionSettings];
  v3 = [v2 showWidgetIntroConvenienceControl];

  return v3;
}

- (BOOL)prototypeSettingEditButtonAsUndo
{
  v2 = [(SBHIconManager *)self widgetIntroductionSettings];
  v3 = [v2 editButtonAsUndo];

  return v3;
}

- (BOOL)prototypeSettingSimpleBottomSnaking
{
  v2 = [(SBHIconManager *)self widgetIntroductionSettings];
  v3 = [v2 simpleBottomSnaking];

  return v3;
}

- (BOOL)prototypeSettingBumpLeastUsedApps
{
  v2 = [(SBHIconManager *)self widgetIntroductionSettings];
  v3 = [v2 bumpLeastUsedApps];

  return v3;
}

- (BOOL)prototypeSettingShowExtraLargeTVWidget
{
  v2 = [(SBHIconManager *)self widgetIntroductionSettings];
  v3 = [v2 showXLTVWidget];

  return v3;
}

- (void)scrollToDefaultWidgets
{
  v2 = [(SBHIconManager *)self rootFolderController];
  [v2 setCurrentPageIndex:objc_msgSend(v2 animated:"firstIconPageIndex") completion:{0, 0}];
}

- (void)prepareModalWidgetIntroductionWidgetViewSnapshots
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = [(SBHIconManager *)self defaultFirstPageSuggestedWidgetIcons];
  v4 = [v3 lastObject];

  v5 = [(SBHIconManager *)self rootViewController];
  v6 = [v5 firstIconViewForIcon:v4 options:64];

  [v6 iconImageCenter];
  [v6 convertPoint:0 toView:?];
  v8 = v7;
  v10 = v9;
  [v6 iconImageSize];
  v12 = v11;
  v14 = v13;
  v15 = MEMORY[0x1E695DEC8];
  v16 = [(SBHIconManager *)self onboardingWidgetPreviewsForWidgetIcon:v4];
  v45 = [v15 arrayWithArray:v16];

  v17 = [(SBHIconManager *)self defaultFirstPageSuggestedWidgetIcons];
  v18 = [v17 firstObject];

  v19 = [(SBHIconManager *)self rootViewController];
  v20 = [v19 firstIconViewForIcon:v18 options:64];

  [v20 iconImageCenter];
  [v20 convertPoint:0 toView:?];
  v22 = v21;
  v24 = v23;
  [v20 iconImageSize];
  v26 = v25;
  v28 = v27;
  v29 = MEMORY[0x1E695DEC8];
  v30 = [(SBHIconManager *)self onboardingWidgetPreviewsForWidgetIcon:v18];
  v31 = [v29 arrayWithArray:v30];

  v32 = SBLogWidgetDiscoverabilityMigration();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    [v20 iconImageCenter];
    v33 = NSStringFromCGPoint(v51);
    [v6 iconImageCenter];
    v34 = NSStringFromCGPoint(v52);
    *buf = 138412546;
    v47 = v33;
    v48 = 2112;
    v49 = v34;
    _os_log_impl(&dword_1BEB18000, v32, OS_LOG_TYPE_DEFAULT, "Static original widget center(%@); falling original widget center(%@)", buf, 0x16u);
  }

  v35 = SBLogWidgetDiscoverabilityMigration();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v53.x = v22;
    v53.y = v24;
    v36 = NSStringFromCGPoint(v53);
    v54.x = v8;
    v54.y = v10;
    v37 = NSStringFromCGPoint(v54);
    *buf = 138412546;
    v47 = v36;
    v48 = 2112;
    v49 = v37;
    _os_log_impl(&dword_1BEB18000, v35, OS_LOG_TYPE_DEFAULT, "Static widget center(%@); falling widget center(%@)", buf, 0x16u);
  }

  v38 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem modalIntroductionViewController];

  if (v38)
  {
    v39 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem modalIntroductionViewController];
    [v39 setOnboardingFallingWidgetPreviews:v45];

    v40 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem modalIntroductionViewController];
    [v40 setOnboardingFallingWidgetCenterPoint:{v8, v10}];

    v41 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem modalIntroductionViewController];
    [v41 setOnboardingFallingWidgetBounds:{0.0, 0.0, v12, v14}];

    v42 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem modalIntroductionViewController];
    [v42 setOnboardingStaticWidgetPreviews:v31];

    v43 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem modalIntroductionViewController];
    [v43 setOnboardingStaticWidgetCenterPoint:{v22, v24}];

    v44 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem modalIntroductionViewController];
    [v44 setOnboardingStaticWidgetBounds:{0.0, 0.0, v26, v28}];
  }
}

- (id)_widgetIntroductionHomeScreenPreviewView
{
  v3 = [(SBHIconManager *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [WeakRetained widgetIntroductionPreviewViewForIconManager:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)invalidateOnboardingWidgetPreviewViewControllers
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(SBHIconManager *)self chuisOnboardingWidgetViewControllers];
  if (v3)
  {
    v4 = v3;
    v5 = [(SBHIconManager *)self chuisOnboardingWidgetViewControllers];
    v6 = [v5 count];

    if (v6)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v7 = [(SBHIconManager *)self chuisOnboardingWidgetViewControllers];
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          v11 = 0;
          do
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [*(*(&v13 + 1) + 8 * v11++) invalidate];
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v9);
      }

      v12 = [(SBHIconManager *)self chuisOnboardingWidgetViewControllers];
      [v12 removeAllObjects];
    }
  }

  [(SBHIconManager *)self setChuisOnboardingWidgetViewControllers:0];
}

- (id)onboardingWidgetPreviewsForWidgetIcon:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBHIconManager *)self chuisOnboardingWidgetViewControllers];

  if (!v5)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    chuisOnboardingWidgetViewControllers = self->_chuisOnboardingWidgetViewControllers;
    self->_chuisOnboardingWidgetViewControllers = v6;
  }

  v37 = self;
  v34 = [(SBHIconManager *)self gridSizeClassDomain];
  v33 = [MEMORY[0x1E695DF70] array];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v35 = v4;
  obj = [v4 iconDataSources];
  v38 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v38)
  {
    v8 = *v40;
    v32 = *v40;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v39 + 1) + 8 * i);
        v11 = objc_opt_self();
        if (objc_opt_isKindOfClass())
        {
          v12 = v10;
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;

        v14 = [v13 kind];
        v15 = [v13 extensionBundleIdentifier];
        v16 = [v13 containerBundleIdentifier];
        if (v13)
        {
          v17 = v14 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (!v17 && v15 != 0)
        {
          v19 = [(SBHIconManager *)v37 _intentForWidget:v13 ofIcon:v35 creatingIfNecessary:1];
          v20 = [v35 gridSizeClass];
          v21 = [v34 chsWidgetFamilyForIconGridSizeClass:v20];
          v22 = [objc_alloc(MEMORY[0x1E6994290]) initWithExtensionBundleIdentifier:v15 containerBundleIdentifier:v16 deviceIdentifier:0];
          v23 = [objc_alloc(MEMORY[0x1E6994370]) initWithExtensionIdentity:v22 kind:v14 family:v21 intent:v19 activityIdentifier:0];

          if (v23)
          {
            v24 = [(SBHIconManager *)v37 widgetMetricsProvider];
            v25 = [v24 systemMetricsForWidget:v23];

            v26 = objc_alloc(MEMORY[0x1E6994530]);
            v27 = [v13 uniqueIdentifier];
            v28 = [v26 initWithWidget:v23 metrics:v25 widgetConfigurationIdentifier:v27];

            v8 = v32;
            v29 = [(SBHIconManager *)v37 chuisOnboardingWidgetViewControllers];
            [v29 addObject:v28];

            v30 = [v28 view];
            [v33 addObject:v30];
          }
        }
      }

      v38 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v38);
  }

  return v33;
}

- (void)removeWidgetDiscoverabilityContainerViewsAndPopoverWhenNeeded:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBHIconManager *)self rootFolder];
  v6 = [(SBHIconManager *)self rootFolder];
  v7 = [v5 listAtIndex:{objc_msgSend(v6, "firstVisibleListIndex")}];

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__SBHIconManager_removeWidgetDiscoverabilityContainerViewsAndPopoverWhenNeeded___block_invoke;
  v9[3] = &unk_1E80907D0;
  v9[4] = self;
  v9[5] = &v10;
  [v7 enumerateIconsWithOptions:0 usingBlock:v9];
  if (*(v11 + 24) != 1 || v3)
  {
    [(SBHIconManager *)self updatePronouncedContainerViewVisibility:0 vertical:[(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem isVerticalWidgetIntroduction]];
  }

  _Block_object_dispose(&v10, 8);
}

void __80__SBHIconManager_removeWidgetDiscoverabilityContainerViewsAndPopoverWhenNeeded___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 isWidgetIcon])
  {
    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) widgetIconIsOnboardingWidget:v6];
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *a4 = 1;
    }
  }
}

- (BOOL)widgetIconIsOnboardingWidget:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a3 widgets];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 suggestionSource] == 2)
        {
          v6 = 1;
        }

        else if ([v9 suggestionSource] != 2)
        {
          v5 |= [v9 suggestionSource] != 1;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
    LOBYTE(v4) = v6 & (v5 ^ 1);
  }

  return v4 & 1;
}

- (id)captureHomeScreenOnboardingSnapshot
{
  v3 = SBLogWidgetDiscoverabilityMigration();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_DEFAULT, "Capture home screen preview for widget discoverability introduction", v6, 2u);
  }

  v4 = [(SBHIconManager *)self _widgetIntroductionHomeScreenPreviewView];

  return v4;
}

- (BOOL)swapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)a3 withApplicationIconsWithWithBundleIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBHIconManager *)self focusModeManager];
  v9 = [v8 activeFocusMode];
  v10 = [v9 identifier];
  LOBYTE(self) = [(SBHIconManager *)self swapApplicationIconsInProminentPositionsWithBundleIdentifier:v7 withApplicationIconsWithWithBundleIdentifier:v6 focusModeIdentifier:v10];

  return self;
}

- (BOOL)swapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)a3 withApplicationIconsWithWithBundleIdentifier:(id)a4 focusModeIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SBHIconManager *)self rootFolder];
  LOBYTE(self) = [(SBHIconManager *)self swapApplicationIconsInProminentPositionsWithBundleIdentifier:v10 withApplicationIconsWithWithBundleIdentifier:v9 inRootFolder:v11 focusModeIdentifier:v8];

  return self;
}

- (BOOL)swapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)a3 withApplicationIconsWithWithBundleIdentifier:(id)a4 inRootFolder:(id)a5 focusModeIdentifier:(id)a6
{
  v87[2] = *MEMORY[0x1E69E9840];
  v57 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v61 = [(SBHIconManager *)self iconModel];
  v13 = [v11 firstList];
  v14 = [v11 dock];
  v52 = v12;
  if (v12)
  {
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = __157__SBHIconManager_swapApplicationIconsInProminentPositionsWithBundleIdentifier_withApplicationIconsWithWithBundleIdentifier_inRootFolder_focusModeIdentifier___block_invoke;
    v81[3] = &unk_1E80907F8;
    v82 = v12;
    v15 = [v11 indexesOfListsPassingTest:v81];
    if ([v15 count])
    {
      v16 = [v11 listAtIndex:{objc_msgSend(v15, "firstIndex")}];

      v13 = v16;
    }
  }

  v50 = v14;
  v51 = v13;
  v87[0] = v14;
  v87[1] = v13;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:2];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v80 = 0u;
  v17 = [obj countByEnumeratingWithState:&v77 objects:v86 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v78;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v78 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v77 + 1) + 8 * i);
        v75[0] = MEMORY[0x1E69E9820];
        v75[1] = 3221225472;
        v75[2] = __157__SBHIconManager_swapApplicationIconsInProminentPositionsWithBundleIdentifier_withApplicationIconsWithWithBundleIdentifier_inRootFolder_focusModeIdentifier___block_invoke_2;
        v75[3] = &unk_1E808BFD8;
        v76 = v10;
        if ([v21 directlyContainsIconPassingTest:v75])
        {
          v29 = SBLogIcon();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            [SBHIconManager swapApplicationIconsInProminentPositionsWithBundleIdentifier:withApplicationIconsWithWithBundleIdentifier:inRootFolder:focusModeIdentifier:];
          }

          v30 = 0;
          v31 = v76;
          v22 = obj;
          v24 = obj;
          v23 = v10;
          goto LABEL_21;
        }
      }

      v18 = [obj countByEnumeratingWithState:&v77 objects:v86 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v22 = obj;

  v23 = v10;
  v24 = [v61 applicationIconForBundleIdentifier:v10];
  if (v24)
  {
    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __157__SBHIconManager_swapApplicationIconsInProminentPositionsWithBundleIdentifier_withApplicationIconsWithWithBundleIdentifier_inRootFolder_focusModeIdentifier___block_invoke_1089;
    v73[3] = &unk_1E8090820;
    v74 = v10;
    v25 = [v11 iconsPassingTest:v73];
    v26 = [v25 allObjects];

    if ([v26 count])
    {
      v27 = [v26 indexOfObjectIdenticalTo:v24];
      if (!v27 || v27 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_27;
      }

      v28 = [v26 mutableCopy];
      [v28 removeObject:v24];
      [v28 insertObject:v24 atIndex:0];
    }

    else
    {
      v85 = v24;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v85 count:1];
      v26 = v28 = v26;
    }

LABEL_27:
    v34 = [v26 objectEnumerator];
    v56 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v59 = obj;
    v35 = [v59 countByEnumeratingWithState:&v69 objects:v84 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v70;
      v54 = *v70;
      v55 = v26;
      do
      {
        v38 = 0;
        v58 = v36;
        do
        {
          if (*v70 != v37)
          {
            objc_enumerationMutation(v59);
          }

          v39 = *(*(&v69 + 1) + 8 * v38);
          if (([v39 directlyContainsAnyIconInArray:v26] & 1) == 0)
          {
            v60 = v38;
            v66[0] = MEMORY[0x1E69E9820];
            v66[1] = 3221225472;
            v66[2] = __157__SBHIconManager_swapApplicationIconsInProminentPositionsWithBundleIdentifier_withApplicationIconsWithWithBundleIdentifier_inRootFolder_focusModeIdentifier___block_invoke_2_1091;
            v66[3] = &unk_1E8090848;
            v67 = v57;
            v40 = v56;
            v68 = v40;
            v41 = [v39 directlyContainedIconsPassingTest:v66];
            v62 = 0u;
            v63 = 0u;
            v64 = 0u;
            v65 = 0u;
            v42 = [v41 countByEnumeratingWithState:&v62 objects:v83 count:16];
            if (v42)
            {
              v43 = v42;
              v44 = *v63;
              do
              {
                for (j = 0; j != v43; ++j)
                {
                  if (*v63 != v44)
                  {
                    objc_enumerationMutation(v41);
                  }

                  v46 = *(*(&v62 + 1) + 8 * j);
                  v47 = [v34 nextObject];
                  if (!v47)
                  {
                    v47 = [v61 addAdditionalIconMatchingIcon:v24];
                  }

                  [v11 swapIcon:v46 withIcon:v47 options:0];
                  [v40 addObject:v46];
                }

                v43 = [v41 countByEnumeratingWithState:&v62 objects:v83 count:16];
              }

              while (v43);
            }

            v37 = v54;
            v26 = v55;
            v36 = v58;
            v38 = v60;
          }

          ++v38;
        }

        while (v38 != v36);
        v36 = [v59 countByEnumeratingWithState:&v69 objects:v84 count:16];
      }

      while (v36);
    }

    v30 = [v56 count] != 0;
    v31 = v74;
    v23 = v49;
    v33 = v50;
    v32 = v51;
    v22 = obj;
    goto LABEL_46;
  }

  v31 = SBLogIcon();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    [SBHIconManager swapApplicationIconsInProminentPositionsWithBundleIdentifier:withApplicationIconsWithWithBundleIdentifier:inRootFolder:focusModeIdentifier:];
  }

  v30 = 0;
LABEL_21:
  v33 = v50;
  v32 = v51;
LABEL_46:

  return v30;
}

uint64_t __157__SBHIconManager_swapApplicationIconsInProminentPositionsWithBundleIdentifier_withApplicationIconsWithWithBundleIdentifier_inRootFolder_focusModeIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 focusModeIdentifiers];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

uint64_t __157__SBHIconManager_swapApplicationIconsInProminentPositionsWithBundleIdentifier_withApplicationIconsWithWithBundleIdentifier_inRootFolder_focusModeIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isApplicationIcon])
  {
    v3 = [v2 applicationBundleID];
    v4 = BSEqualObjects();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __157__SBHIconManager_swapApplicationIconsInProminentPositionsWithBundleIdentifier_withApplicationIconsWithWithBundleIdentifier_inRootFolder_focusModeIdentifier___block_invoke_1089(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isApplicationIcon])
  {
    v4 = [v3 applicationBundleID];
    v5 = [v4 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __157__SBHIconManager_swapApplicationIconsInProminentPositionsWithBundleIdentifier_withApplicationIconsWithWithBundleIdentifier_inRootFolder_focusModeIdentifier___block_invoke_2_1091(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isApplicationIcon])
  {
    v4 = [v3 applicationBundleID];
    if ([v4 isEqualToString:*(a1 + 32)])
    {
      v5 = [*(a1 + 40) containsObject:v3] ^ 1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)canSwapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)a3 withApplicationIconsWithWithBundleIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBHIconManager *)self focusModeManager];
  v9 = [v8 activeFocusMode];
  v10 = [v9 identifier];
  LOBYTE(self) = [(SBHIconManager *)self canSwapApplicationIconsInProminentPositionsWithBundleIdentifier:v7 withApplicationIconsWithWithBundleIdentifier:v6 focusModeIdentifier:v10];

  return self;
}

- (BOOL)canSwapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)a3 withApplicationIconsWithWithBundleIdentifier:(id)a4 focusModeIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SBHIconManager *)self rootFolder];
  v12 = [v11 copy];
  LOBYTE(self) = [(SBHIconManager *)self swapApplicationIconsInProminentPositionsWithBundleIdentifier:v10 withApplicationIconsWithWithBundleIdentifier:v9 inRootFolder:v12 focusModeIdentifier:v8];

  return self;
}

- (void)setPrefersFlatImageLayers:(BOOL)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_prefersFlatImageLayers != a3)
  {
    v3 = a3;
    self->_prefersFlatImageLayers = a3;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __44__SBHIconManager_setPrefersFlatImageLayers___block_invoke;
    v15[3] = &__block_descriptor_33_e24_v24__0__SBIconView_8_B16l;
    v16 = a3;
    [(SBHIconManager *)self enumerateDisplayedIconViewsUsingBlock:v15];
    v5 = [(SBHIconManager *)self floatingDockViewController];
    [v5 setPrefersFlatImageLayers:v3];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [(SBHIconManager *)self _libraryViewControllers];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) setPrefersFlatImageLayers:v3];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (void)folder:(id)a3 didAddIcons:(id)a4 removedIcons:(id)a5
{
  v103 = *MEMORY[0x1E69E9840];
  v6 = a5;
  [(SBHIconManager *)self noteRootFolderDidMutate];
  if (![(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem stopUpdatingDefaultWidgetsBumpedIconRecord])
  {
    [(SBHIconManager *)self beginStopUpdatingDefaultWidgetsBumpedIconRecord];
    v80 = [(SBHIconManager *)self iconGridSizeClassSizes];
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v78 = v6;
    v7 = [v6 allObjects];
    v8 = [v7 countByEnumeratingWithState:&v96 objects:v102 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v97;
      v82 = v7;
      v79 = *v97;
      do
      {
        v11 = 0;
        v81 = v9;
        do
        {
          if (*v97 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v96 + 1) + 8 * v11);
          if ([v12 isWidgetIcon] && -[SBHIconManager widgetIconIsOnboardingWidget:](self, "widgetIconIsOnboardingWidget:", v12))
          {
            obj = v12;
            v84 = [obj gridSizeClass];
            v13 = [v80 gridSizeAreaForGridSizeClass:?];
            v14 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsBumpedIconUsageRanking];
            v15 = [v14 count];

            if (v15 >= v13)
            {
              v15 = v13;
            }

            v16 = [(SBHIconManager *)self rootFolder];
            v17 = [(SBHIconManager *)self rootFolder];
            v18 = [v16 listAtIndex:{objc_msgSend(v17, "firstVisibleListIndex")}];

            v19 = [v18 maxNumberOfIcons];
            v20 = [v18 numberOfIcons];
            v87 = v15;
            if (v20 + v15 <= v19)
            {
              v21 = v20;
            }

            else
            {
              v21 = v19 - v15;
            }

            v22 = [(SBHIconManager *)self rootFolder];
            v23 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsBumpedIconUsageRanking];
            v24 = [v23 firstObject];
            v25 = [v22 indexOfListContainingIcon:v24];

            v85 = v11;
            v83 = v18;
            if (v25 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v94 = 0u;
              v95 = 0u;
              v92 = 0u;
              v93 = 0u;
              v26 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecordOriginalIndex];
              v27 = [v26 countByEnumeratingWithState:&v92 objects:v101 count:16];
              if (v27)
              {
                v28 = v27;
                v29 = *v93;
                do
                {
                  for (i = 0; i != v28; ++i)
                  {
                    if (*v93 != v29)
                    {
                      objc_enumerationMutation(v26);
                    }

                    v31 = [*(*(&v92 + 1) + 8 * i) integerValue];
                    if (v31 < v21)
                    {
                      v21 = v31;
                    }
                  }

                  v28 = [v26 countByEnumeratingWithState:&v92 objects:v101 count:16];
                }

                while (v28);
              }
            }

            if (v87)
            {
              v32 = 0;
              while (1)
              {
                v33 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsBumpedIconUsageRanking];
                v34 = [v33 firstObject];

                v35 = v34;
                v36 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecordKeyForIcon:v35];
                v37 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecord];
                v38 = [v37 objectForKey:v36];

                v39 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecord];
                v40 = [v39 allKeys];
                v41 = [v40 containsObject:v38];

                if (v41)
                {
                  v42 = v35;
                  do
                  {
                    v43 = v38;

                    v44 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecordKeyForIcon:v43];
                    v45 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecord];
                    v38 = [v45 objectForKey:v44];

                    v46 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecord];
                    v47 = [v46 allKeys];
                    v48 = [v47 containsObject:v38];

                    v42 = v43;
                  }

                  while ((v48 & 1) != 0);
                }

                else
                {
                  v43 = v35;
                }

                v49 = [MEMORY[0x1E695DFB0] null];
                v50 = [v38 isEqual:v49];

                if (v50)
                {
                  break;
                }

                if (v38)
                {
                  v51 = [(SBHIconManager *)self rootFolder];
                  v53 = [v51 insertIcon:v35 afterIcon:v38 options:0 listGridCellInfoOptions:0];
                  goto LABEL_36;
                }

LABEL_37:
                v54 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecord];
                [v54 removeObjectForKey:v35];

                v55 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsBumpedIconUsageRanking];
                [v55 removeObjectAtIndex:0];

                v56 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecordOriginalIndex];
                [v56 removeObjectAtIndex:0];

                if (++v32 == v87)
                {
                  goto LABEL_38;
                }
              }

              v51 = [(SBHIconManager *)self rootFolder];
              v52 = [v51 prependIcon:v35 options:0];
LABEL_36:

              goto LABEL_37;
            }

LABEL_38:
            v57 = [(SBHIconManager *)self rootFolder];
            v58 = [(SBHIconManager *)self rootFolder];
            v59 = [v57 nextVisibleListIndexAfterIndex:{objc_msgSend(v58, "firstVisibleListIndex")}];

            v60 = [MEMORY[0x1E696AC88] indexPathWithIconIndex:v21 listIndex:v59];
            v61 = [(SBHIconManager *)self rootFolder];
            [v61 _swapRestoreIconCount:v87 toLocation:v60];

            [(SBHIconManager *)self removeWidgetDiscoverabilityContainerViewsAndPopoverWhenNeeded:0];
            v9 = v81;
            v7 = v82;
            v10 = v79;
            v62 = v83;
            v63 = v84;
LABEL_51:

            v11 = v85;
            goto LABEL_52;
          }

          v64 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsBumpedIconUsageRanking];
          v65 = [v64 containsObject:v12];

          if (v65)
          {
            v66 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecord];
            v67 = [v66 allValues];
            v68 = [v67 containsObject:v12];

            if (v68)
            {
              v90 = 0u;
              v91 = 0u;
              v88 = 0u;
              v89 = 0u;
              v69 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecord];
              v70 = [v69 allKeys];

              obj = v70;
              v71 = [v70 countByEnumeratingWithState:&v88 objects:v100 count:16];
              if (v71)
              {
                v72 = v71;
                v85 = v11;
                v73 = *v89;
                while (2)
                {
                  for (j = 0; j != v72; ++j)
                  {
                    if (*v89 != v73)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v75 = *(*(&v88 + 1) + 8 * j);
                    v76 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecord];
                    v63 = [v76 objectForKey:v75];

                    if ([v63 isEqual:v12])
                    {
                      v77 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecord];
                      [v77 removeObjectForKey:v75];

                      v62 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsBumpedIconUsageRanking];
                      [v62 removeObject:v75];
                      v7 = v82;
                      goto LABEL_51;
                    }
                  }

                  v72 = [obj countByEnumeratingWithState:&v88 objects:v100 count:16];
                  if (v72)
                  {
                    continue;
                  }

                  break;
                }

                v11 = v85;
                v7 = v82;
              }

LABEL_52:
            }
          }

          ++v11;
        }

        while (v11 != v9);
        v9 = [v7 countByEnumeratingWithState:&v96 objects:v102 count:16];
      }

      while (v9);
    }

    [(SBHIconManager *)self endStopUpdatingDefaultWidgetsBumpedIconRecord];
    v6 = v78;
  }
}

- (void)folder:(id)a3 didReplaceIcon:(id)a4 withIcon:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a4;
  [(SBHIconManager *)self noteRootFolderDidMutate];
  if (![(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem stopUpdatingDefaultWidgetsBumpedIconRecord])
  {
    if ([v6 isWidgetIcon] && -[SBHIconManager widgetIconIsOnboardingWidget:](self, "widgetIconIsOnboardingWidget:", v6))
    {
      [(SBHIconManager *)self removeWidgetDiscoverabilityContainerViewsAndPopoverWhenNeeded:0];
    }

    v7 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecord];
    v8 = [v7 allValues];
    v9 = [v8 containsObject:v6];

    if (v9)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecord];
      v11 = [v10 allKeys];

      v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v21;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v20 + 1) + 8 * i);
            v17 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecord];
            v18 = [v17 objectForKey:v16];

            if ([v18 isEqual:v6])
            {
              v19 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecord];
              [v19 setObject:v6 forKey:v16];

              goto LABEL_16;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:
    }
  }
}

- (void)folder:(id)a3 listHiddenDidChange:(id)a4
{
  v8 = a4;
  [(SBHIconManager *)self noteRootFolderDidMutate];
  v5 = [(SBHIconManager *)self rootFolder];
  v6 = [v5 firstVisibleListIndex];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v5 listAtIndex:v6];
    if ([v7 isEqual:v8])
    {
      -[SBHWidgetIntroductionFeatureIntroductionItem setStopUpdatingDefaultWidgetsBumpedIconRecord:](self->_widgetIntroductionItem, "setStopUpdatingDefaultWidgetsBumpedIconRecord:", [v8 isHidden]);
    }
  }
}

- (id)addWidgetSheetViewControllerForAddWidgetSheetConfigurationManager:(id)a3
{
  v4 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 addWidgetSheetViewControllerForIconManager:self];
  }

  else
  {
    [(SBRootFolderController *)self->_rootFolderController addSheetViewController];
  }
  v5 = ;

  return v5;
}

- (id)addWidgetSheetConfigurationManager:(id)a3 vendorNameForAppWithBundleIdentifier:(id)a4
{
  v4 = [(SBHIconManager *)self applicationWithBundleIdentifier:a4];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 vendorName];
  }

  else
  {
    v5 = 0;
  }

  if (!-[__CFString length](v5, "length") && (objc_opt_respondsToSelector() & 1) != 0 && [v4 isAppleApplication])
  {

    v5 = @"Apple";
  }

  return v5;
}

- (id)addWidgetSheetConfigurationManager:(id)a3 containerBundleIdentiferForDescriptor:(id)a4
{
  v5 = a4;
  v6 = [v5 extensionIdentity];
  v7 = [v6 containerBundleIdentifier];

  v8 = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 iconManager:self containerBundleIdentifierForDescriptor:v5];

    v7 = v9;
  }

  return v7;
}

- (id)beginHidingIconsFromLayout:(id)a3 reason:(id)a4 options:(unint64_t)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [[SBHIconLayoutHidingCompoundAssertion alloc] initWithInvalidationHandler:0 icons:v8 reason:v9 options:a5];
  v11 = [(SBHIconManager *)self rootFolderController];
  [(SBHIconLayoutHidingCompoundAssertion *)v10 addAssertionFromChild:v11];

  v12 = [(SBHIconManager *)self folderIconImageCache];
  [(SBHIconLayoutHidingCompoundAssertion *)v10 addAssertionFromChild:v12];

  v13 = [(SBHIconManager *)self floatingDockListView];
  if (v13)
  {
    [(SBHIconLayoutHidingCompoundAssertion *)v10 addAssertionFromChild:v13];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = [(SBHIconManager *)self todayViewControllers];
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v21 + 1) + 8 * i) listView];
        [(SBHIconLayoutHidingCompoundAssertion *)v10 addAssertionFromChild:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  return v10;
}

- (void)setIconStylePickerVisible:(BOOL)a3
{
  if (self->_iconStylePickerVisible == a3)
  {
    return;
  }

  self->_iconStylePickerVisible = a3;
  v14 = [(SBHIconManager *)self currentStylePickerViewController];
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = v6;
  if (a3)
  {
    [v6 postNotificationName:@"SBHIconManagerWillPresentStyleEditingSheetNotification" object:0];

LABEL_6:
    v8 = v14;
    goto LABEL_7;
  }

  [v6 postNotificationName:@"SBHIconManagerDidDismissStyleEditingSheetNotification" object:0];

  v8 = v14;
  if (v14)
  {
    v9 = [v14 navigationController];
    v10 = [v9 sheetPresentationController];
    v11 = [v10 sourceView];
    [v11 removeFromSuperview];

    v12 = [v14 navigationController];
    v13 = [v12 presentingViewController];
    [v13 dismissViewControllerAnimated:1 completion:0];

    [(SBHIconManager *)self setCurrentStylePickerViewController:0];
    goto LABEL_6;
  }

LABEL_7:
}

- (void)_dismissStylePickerViewControllerImmediately
{
  v5 = [(SBHIconManager *)self currentStylePickerViewController];
  v3 = [v5 navigationController];
  v4 = [v3 presentingViewController];
  [v4 dismissViewControllerAnimated:1 completion:0];

  [(SBHIconManager *)self setCurrentStylePickerViewController:0];
  [(SBHIconManager *)self setIconStylePickerVisible:0];
}

- (void)stylePickerViewController:(id)a3 didUpdateHomeScreenConfiguration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v15 = [SBHIconImageStyleConfiguration styleConfigurationWithHomeScreenConfiguration:v6];
  v8 = [(SBHIconManager *)self stylePreviewManager];
  [v8 setImageStyleConfiguration:v15];
  [(SBHIconManager *)self setDidChangeIconStyleWithColorPicker:1];
  objc_setAssociatedObject(v7, &SBHLastHomeScreenConfigurationKey, v6, 1);
  [(SBHIconManager *)self _applyBarButtonItemsToStylePicker:v7 forHomeScreenConfiguration:v6];

  v9 = [v6 styleType];
  v10 = [v6 styleVariant];

  v11 = [(SBHIconManager *)self currentHomeScreenWallpaperDimState];
  if (v9 == 5 && (v10 & 0xFFFFFFFFFFFFFFFDLL) == 0 && v11 || (v9 == 5 ? (v12 = v10 == 1) : (v12 = 0), !v12 ? (v13 = (v9 - 5) >= 0xFFFFFFFFFFFFFFFELL) : (v13 = 1), v13 ? (v14 = 0) : (v14 = 1), ((v14 | v11) & 1) == 0))
  {
    [(SBHIconManager *)self toggleHomeScreenWallpaperDim:0];
  }
}

- (void)stylePickerViewControllerDidFinish:(id)a3
{
  v4 = a3;
  [(SBHIconManager *)self setCurrentStylePickerViewController:0];
  [(SBHIconManager *)self setIconStylePickerVisible:0];
  v5 = [(SBHIconManager *)self usageMonitor];
  [v5 noteIconStylePickerDidDismiss];

  v9 = [(SBHIconManager *)self stylePreviewManager];
  v6 = objc_getAssociatedObject(v4, &SBHLastHomeScreenConfigurationKey);

  if (v6)
  {
    v7 = [SBHIconImageStyleConfiguration styleConfigurationWithHomeScreenConfiguration:v6];
    [v9 setImageStyleConfiguration:v7];
    [(SBHIconManager *)self _updateStyleConfiguration:v6];
  }

  v8 = [SBHIconImageStyleConfiguration styleConfigurationWithHomeScreenConfiguration:v6];
  [(SBHIconManager *)self _precacheImagesForRootIconsForStyleConfiguration:v8];
  [v9 invalidate];
  [(SBHIconManager *)self setStylePreviewManager:0];
}

- (void)stylePickerViewController:(id)a3 didUpdateDesiredDetent:(double)a4
{
  v4 = [a3 navigationController];
  v5 = [v4 sheetPresentationController];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__SBHIconManager_stylePickerViewController_didUpdateDesiredDetent___block_invoke;
  v7[3] = &unk_1E8088C90;
  v8 = v5;
  v6 = v5;
  [v6 animateChanges:v7];
}

- (void)_presentStylePickerViewController
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __51__SBHIconManager__presentStylePickerViewController__block_invoke;
  v2[3] = &unk_1E808F560;
  v2[4] = self;
  [(SBHIconManager *)self _fetchWallpaperProminentColor:v2];
}

void __51__SBHIconManager__presentStylePickerViewController__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = v3;
  BSDispatchMain();
}

void __51__SBHIconManager__presentStylePickerViewController__block_invoke_2(uint64_t a1)
{
  v8 = [*(a1 + 32) persistedHomeScreenColorConfiguration];
  v2 = [v8 mutableCopy];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    getPUIMutableStylePickerConfigurationClass();
    v4 = objc_opt_new();
  }

  v5 = v4;

  if ([v8 styleType] != 3)
  {
    [v5 setAccentColor:*(a1 + 40)];
  }

  [v5 setSuggestedAccentColor:*(a1 + 40)];
  v6 = [getPUIMutableStylePickerConfigurationClass() defaultStylePickerConfigurationForRole:0];
  [v6 setHomeScreenConfiguration:v5];
  v7 = [objc_alloc(getPUIStylePickerComponentsClass()) initWithComponent:*MEMORY[0x1E69C5678]];
  [v6 setComponents:v7];

  [*(a1 + 32) _presentStylePickerViewControllerForStylePickerConfiguration:v6];
}

- (void)_applyBarButtonItemsToStylePicker:(id)a3 forHomeScreenConfiguration:(id)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!self->_eyeDropperControl)
  {
    v8 = [SBHStyleTintButton alloc];
    v9 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"eyedropper"];
    v10 = [(SBHStyleTintButton *)v8 initWithImage:v9];
    eyeDropperControl = self->_eyeDropperControl;
    self->_eyeDropperControl = v10;

    [(SBHStyleTintButton *)self->_eyeDropperControl addTarget:self action:sel__engageWallpaperTintColorDropper_ forControlEvents:64];
    [(SBHStyleTintButton *)self->_eyeDropperControl sizeToFit];
  }

  if (!self->_wallpaperDimButton)
  {
    v12 = [SBHWallpaperDimControl alloc];
    v13 = [(SBHIconStylePickerControl *)v12 initWithFrame:@"Dim Icon Asset" URLForResource:@"ca" extenstion:@"dim" enabledState:@"not dim" disabledState:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    wallpaperDimButton = self->_wallpaperDimButton;
    self->_wallpaperDimButton = v13;

    [(SBHIconStylePickerControl *)self->_wallpaperDimButton setReferenceLayoutView:self->_eyeDropperControl];
    [(SBHIconStylePickerControl *)self->_wallpaperDimButton setAutoresizingMask:0];
    [(SBHIconStylePickerControl *)self->_wallpaperDimButton addTarget:self action:sel_toggleHomeScreenWallpaperDim_ forControlEvents:64];
  }

  dimBarButtonItem = self->_dimBarButtonItem;
  if (dimBarButtonItem)
  {
    v16 = [(UIBarButtonItem *)dimBarButtonItem customView];
    [v16 setSelected:-[SBHIconManager currentHomeScreenWallpaperDimState](self animated:{"currentHomeScreenWallpaperDimState"), 1}];
  }

  else
  {
    v17 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:self->_wallpaperDimButton];
    v18 = self->_dimBarButtonItem;
    self->_dimBarButtonItem = v17;

    [(UIBarButtonItem *)self->_dimBarButtonItem setHidesSharedBackground:1];
    [(SBHIconStylePickerControl *)self->_wallpaperDimButton setSelected:[(SBHIconManager *)self currentHomeScreenWallpaperDimState] animated:0];
  }

  v28[0] = self->_dimBarButtonItem;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  [v6 setLeadingBarButtonItems:v19];

  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!self->_iconSizeButton)
  {
    v21 = [SBHIconStylePickerControl alloc];
    v22 = [(SBHIconStylePickerControl *)v21 initWithFrame:@"Icon Size Toggle" URLForResource:@"ca" extenstion:@"on" enabledState:@"off" disabledState:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    iconSizeButton = self->_iconSizeButton;
    self->_iconSizeButton = v22;

    [(SBHIconStylePickerControl *)self->_iconSizeButton setReferenceLayoutView:self->_eyeDropperControl];
    [(SBHIconStylePickerControl *)self->_iconSizeButton setAutoresizingMask:0];
    [(SBHIconStylePickerControl *)self->_iconSizeButton addTarget:self action:sel__toggleHomeScreenIconSize_ forControlEvents:64];
  }

  iconSizeBarButtonItem = self->_iconSizeBarButtonItem;
  if (iconSizeBarButtonItem)
  {
    v25 = [(UIBarButtonItem *)iconSizeBarButtonItem customView];
    [v25 setSelected:-[SBHIconManager _shouldUseHomeScreenLargeIconSize](self animated:{"_shouldUseHomeScreenLargeIconSize"), 1}];
  }

  else
  {
    v26 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:self->_iconSizeButton];
    v27 = self->_iconSizeBarButtonItem;
    self->_iconSizeBarButtonItem = v26;

    [(UIBarButtonItem *)self->_iconSizeBarButtonItem setHidesSharedBackground:1];
    [(SBHIconStylePickerControl *)self->_iconSizeButton setSelected:[(SBHIconManager *)self _shouldUseHomeScreenLargeIconSize] animated:0];
  }

  [v20 addObject:self->_iconSizeBarButtonItem];
  [v6 setTrailingBarButtonItems:v20];
}

- (void)_presentStylePickerViewControllerForStylePickerConfiguration:(id)a3
{
  v63[1] = *MEMORY[0x1E69E9840];
  v58 = a3;
  v4 = [(SBHIconManager *)self currentStylePickerViewController];

  if (!v4)
  {
    object = [objc_alloc(getPUIStylePickerViewControllerClass()) initWithStylePickerConfiguration:v58];
    v5 = SBHBundle();
    v6 = [v5 localizedStringForKey:@"STYLE_PICKER_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    [object setTitle:v6];

    [object setDelegate:self];
    [(SBHIconManager *)self setCurrentStylePickerViewController:object];
    v7 = [v58 homeScreenConfiguration];
    objc_setAssociatedObject(object, &SBHLastHomeScreenConfigurationKey, v7, 1);

    v57 = [[SBHNavigationController alloc] initWithRootViewController:object];
    v8 = [MEMORY[0x1E69DC888] clearColor];
    [(SBHNavigationController *)v57 setModalPresentedBackgroundColor:v8];

    [(SBHNavigationController *)v57 setModalPresentationStyle:2];
    objc_initWeak(&location, self);
    v9 = [v58 homeScreenConfiguration];
    [(SBHIconManager *)self _applyBarButtonItemsToStylePicker:object forHomeScreenConfiguration:v9];

    v10 = [(SBHIconManager *)self rootFolderController];
    v55 = [v10 contentView];

    v59 = [(SBHNavigationController *)v57 sheetPresentationController];
    v11 = [MEMORY[0x1E69DC938] currentDevice];
    v12 = [v11 userInterfaceIdiom];

    if ((v12 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [v55 bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v21 = [v55 _screen];
      [v21 scale];
      v52 = v22;
      UIRectCenteredXInRectScale();
      v24 = v23;
      v26 = v25;
      v28 = v27;

      v64.origin.x = v14;
      v64.origin.y = v16;
      v64.size.width = v18;
      v64.size.height = v20;
      MaxY = CGRectGetMaxY(v64);
      v30 = [v55 viewWithTag:{748373893, v52}];
      if (!v30)
      {
        v30 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v24, MaxY + -20.0, v26, v28}];
        [v30 setAutoresizingMask:18];
        [v30 setTag:748373893];
        [v30 setUserInteractionEnabled:0];
        v31 = [MEMORY[0x1E69DC888] clearColor];
        [v30 setBackgroundColor:v31];

        [v55 addSubview:v30];
      }

      [v59 setSourceView:v30];
      [object desiredDetent];
      v33 = v32;
      [(SBHNavigationController *)v57 setPreferredContentSize:500.0, v32];
      [object setPreferredContentSize:{500.0, v33}];
      v34 = [v59 traitOverrides];
      [v34 setVerticalSizeClass:1];

      v35 = [v59 traitOverrides];
      [v35 setHorizontalSizeClass:1];

      v36 = [(SBHNavigationController *)v57 traitOverrides];
      [v36 setVerticalSizeClass:1];

      v37 = [(SBHNavigationController *)v57 traitOverrides];
      [v37 setHorizontalSizeClass:1];
    }

    if (objc_opt_respondsToSelector())
    {
      [v59 _setPrefersSymmetricCorners:1];
    }

    [v59 _setShouldDismissWhenTappedOutside:1];
    v38 = MEMORY[0x1E69DCF58];
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __79__SBHIconManager__presentStylePickerViewControllerForStylePickerConfiguration___block_invoke;
    v60[3] = &unk_1E8090888;
    objc_copyWeak(&v61, &location);
    v53 = [v38 customDetentWithIdentifier:@"stylePickerViewControllerDetent" resolver:v60];
    v63[0] = v53;
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:1];
    [v59 setDetents:v54];
    [(SBHIconManager *)self setIconStylePickerVisible:1];
    v39 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:8 size:1];
    [v39 setSubvariant:@"customizeSheet"];
    [v59 _setNonLargeBackground:v39];
    [v59 _setLargeBackground:v39];
    v40 = [(SBHNavigationController *)v57 navigationBar];
    v41 = [v40 traitOverrides];
    [v41 setUserInterfaceStyle:2];

    v42 = [(SBHIconManager *)self listViewsToUpdateDuringColorPicking];
    v43 = [(SBHIconManager *)self additionalIconViewsToUpdateDuringColorPicking];
    v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v45 = [(SBHIconManager *)self rootFolderController];
    if (v45)
    {
      [v44 addObject:v45];
    }

    v46 = [(SBHIconManager *)self floatingDockViewController];
    if (v46)
    {
      [v44 addObject:v46];
    }

    v47 = [[SBHIconStylePreviewManager alloc] initWithTraitOverridableObjects:v44 iconListViews:v42 additionalIconViews:v43];
    [(SBHIconManager *)self setStylePreviewManager:v47];
    v48 = [MEMORY[0x1E69DC938] currentDevice];
    v49 = [v48 userInterfaceIdiom];

    if ((v49 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v50 = [(SBHIconManager *)self floatingDockViewController];
      v51 = [v50 parentViewController];
      [v51 presentViewController:v57 animated:1 completion:0];
    }

    else
    {
      v50 = [(SBHIconManager *)self rootFolderController];
      [v50 presentViewController:v57 animated:1 completion:0];
    }

    [(SBHIconManager *)self setEditing:0];
    [(SBHIconManager *)self setDidChangeIconStyleWithColorPicker:0];

    objc_destroyWeak(&v61);
    objc_destroyWeak(&location);
  }
}

double __79__SBHIconManager__presentStylePickerViewControllerForStylePickerConfiguration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained currentStylePickerViewController];
    [v3 desiredDetent];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (void)_fetchWallpaperProminentColor:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    if (os_variant_has_internal_content())
    {
      v5 = [MEMORY[0x1E695E000] standardUserDefaults];
      v6 = [v5 stringForKey:@"KEYNOTE_OVERRIDE_PROMINENT_COLOR"];
      if (v6)
      {
        v7 = [MEMORY[0x1E69DC888] sbh_colorWithHexString:v6];
        if (v7)
        {
          v8 = v7;
          v10[2](v10, v7);

LABEL_10:
          v4 = v10;
          goto LABEL_11;
        }
      }
    }

    v5 = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 iconManagerPreferredProminentPosterColor:self handler:v10];
    }

    else
    {
      v9 = [MEMORY[0x1E69DC888] orangeColor];
      v10[2](v10, v9);
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (id)listViewsToUpdateDuringColorPicking
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(SBHIconManager *)self currentRootIconList];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [(SBHIconManager *)self dockListView];
  if (v5)
  {
    [v3 addObject:v5];
  }

  v6 = [(SBHIconManager *)self floatingDockViewController];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__SBHIconManager_listViewsToUpdateDuringColorPicking__block_invoke;
  v15[3] = &unk_1E80908B0;
  v7 = v3;
  v16 = v7;
  [v6 enumerateIconListsUsingBlock:v15];
  v8 = [(SBHIconManager *)self todayViewControllers];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__SBHIconManager_listViewsToUpdateDuringColorPicking__block_invoke_2;
  v13[3] = &unk_1E80908D8;
  v9 = v7;
  v14 = v9;
  [v8 enumerateObjectsUsingBlock:v13];

  v10 = v14;
  v11 = v9;

  return v9;
}

void __53__SBHIconManager_listViewsToUpdateDuringColorPicking__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 listView];
  [v2 addObject:v3];
}

- (id)additionalIconViewsToUpdateDuringColorPicking
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(SBHIconManager *)self _effectiveAppPredictionViewControllersForUniqueIdentifier];
  v5 = [v4 objectEnumerator];

  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 bs_isAppearingOrAppeared])
        {
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __63__SBHIconManager_additionalIconViewsToUpdateDuringColorPicking__block_invoke;
          v14[3] = &unk_1E8089928;
          v15 = v3;
          [v10 enumerateDisplayedIconViewsUsingBlock:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v11 = [(SBHIconManager *)self floatingDockViewController];
  v12 = [v11 libraryPodIconViewIfLoaded];
  if (v12)
  {
    [v3 addObject:v12];
  }

  return v3;
}

- (void)enumerateViewsToUpdateDuringColorPickingUsingListViewBlock:(id)a3 iconViewBlock:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(SBHIconManager *)self currentRootIconList];
  if (v8)
  {
    v6[2](v6, v8);
    if (v7)
    {
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __91__SBHIconManager_enumerateViewsToUpdateDuringColorPickingUsingListViewBlock_iconViewBlock___block_invoke;
      v39[3] = &unk_1E8090008;
      v40 = v7;
      [v8 enumerateDisplayedIconViewsUsingBlock:v39];
    }
  }

  v24 = v8;
  v9 = [(SBHIconManager *)self dockListView];
  if (v9)
  {
    v6[2](v6, v9);
    if (v7)
    {
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __91__SBHIconManager_enumerateViewsToUpdateDuringColorPickingUsingListViewBlock_iconViewBlock___block_invoke_2;
      v37[3] = &unk_1E8090008;
      v38 = v7;
      [v9 enumerateDisplayedIconViewsUsingBlock:v37];
    }
  }

  v10 = [(SBHIconManager *)self floatingDockViewController];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __91__SBHIconManager_enumerateViewsToUpdateDuringColorPickingUsingListViewBlock_iconViewBlock___block_invoke_3;
  v34[3] = &unk_1E8090900;
  v11 = v6;
  v35 = v11;
  v12 = v7;
  v36 = v12;
  [v10 enumerateIconListsUsingBlock:v34];
  v13 = [(SBHIconManager *)self todayViewControllers];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __91__SBHIconManager_enumerateViewsToUpdateDuringColorPickingUsingListViewBlock_iconViewBlock___block_invoke_5;
  v31[3] = &unk_1E8090928;
  v23 = v11;
  v32 = v23;
  v14 = v12;
  v33 = v14;
  [v13 enumerateObjectsUsingBlock:v31];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = [(SBHIconManager *)self _effectiveAppPredictionViewControllersForUniqueIdentifier];
  v16 = [v15 objectEnumerator];

  v17 = [v16 countByEnumeratingWithState:&v27 objects:v41 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v28;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v27 + 1) + 8 * i);
        if ([v21 bs_isAppearingOrAppeared])
        {
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __91__SBHIconManager_enumerateViewsToUpdateDuringColorPickingUsingListViewBlock_iconViewBlock___block_invoke_7;
          v25[3] = &unk_1E8090008;
          v26 = v14;
          [v21 enumerateDisplayedIconViewsUsingBlock:v25];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v27 objects:v41 count:16];
    }

    while (v18);
  }

  if (v14)
  {
    v22 = [v10 libraryPodIconViewIfLoaded];
    if (v22)
    {
      (*(v14 + 2))(v14, v22);
    }
  }
}

void __91__SBHIconManager_enumerateViewsToUpdateDuringColorPickingUsingListViewBlock_iconViewBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
  v4 = *(a1 + 40);
  if (v4)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __91__SBHIconManager_enumerateViewsToUpdateDuringColorPickingUsingListViewBlock_iconViewBlock___block_invoke_4;
    v5[3] = &unk_1E8090008;
    v6 = v4;
    [v3 enumerateDisplayedIconViewsUsingBlock:v5];
  }
}

void __91__SBHIconManager_enumerateViewsToUpdateDuringColorPickingUsingListViewBlock_iconViewBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 listView];
  (*(v4 + 16))(v4, v5);

  if (*(a1 + 40))
  {
    v6 = [v3 listView];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __91__SBHIconManager_enumerateViewsToUpdateDuringColorPickingUsingListViewBlock_iconViewBlock___block_invoke_6;
    v7[3] = &unk_1E8090008;
    v8 = *(a1 + 40);
    [v6 enumerateDisplayedIconViewsUsingBlock:v7];
  }
}

- (id)persistedHomeScreenColorConfiguration
{
  v3 = [(SBHIconManager *)self _fetchCurrentStyleConfiguration];
  if (!v3)
  {
    getPUIMutableStylePickerHomeScreenConfigurationClass();
    v4 = objc_opt_new();
    v5 = [(SBHomeScreenDefaults *)self->_homeScreenDefaults iconTintColor];

    if (v5)
    {
      v6 = [(SBHomeScreenDefaults *)self->_homeScreenDefaults iconTintColor];
      [v4 setAccentColor:v6];

      [v4 setStyleType:3];
    }

    v3 = [v4 copy];
  }

  v7 = [(SBHIconManager *)self interfaceOrientation];
  v8 = [[SBHDefaultIconListLayoutProvider alloc] initWithLayoutOptions:0];
  v9 = [(SBHDefaultIconListLayoutProvider *)v8 layoutForIconLocation:@"SBIconLocationRoot"];
  [v9 iconImageInfo];
  v11 = v10;
  v13 = v12;
  [v9 iconImageInfo];
  v42 = v14;
  v15 = SBHIconListLayoutListIconSpacing(v9, v7);
  v17 = v16;
  [v9 layoutInsetsForOrientation:v7];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [v3 layoutInsets];
  v32 = v29 == v21 && v26 == v19 && v28 == v25 && v27 == v23;
  if (!v32 || (([v3 iconSpacing], v34 == v15) ? (v35 = v33 == v17) : (v35 = 0), !v35 || ((objc_msgSend(v3, "iconSize"), v37 == v11) ? (v38 = v36 == v13) : (v38 = 0), !v38 || (objc_msgSend(v3, "iconContinuousCornerRadius"), (BSFloatEqualToFloat() & 1) == 0))))
  {
    v39 = [v3 mutableCopy];
    [v39 setIconSize:{v11, v13}];
    [v39 setIconContinuousCornerRadius:v42];
    [v39 setLayoutInsets:{v19, v21, v23, v25}];
    [v39 setIconSpacing:{v15, v17}];
    v40 = [v39 copy];

    v3 = v40;
  }

  return v3;
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v20 = a3;
  v6 = a4;
  v7 = [(SBHIconManager *)self homeScreenSettings];

  if (v7 == v20)
  {
    if ([v6 isEqualToString:@"usesMinimumViableHomeScreen"])
    {
      [(SBHIconManager *)self tearDownAndResetRootIconLists];
    }
  }

  else
  {
    v8 = [(SBHIconManager *)self rootFolderSettings];

    if (v8 == v20)
    {
      v12 = [(SBHIconManager *)self rootFolderSettings];
      if ([v6 isEqualToString:@"adjustableLayoutEnabled"])
      {
        v13 = [v12 isAdjustableLayoutEnabled];
        v14 = off_1E8086BC0;
        if (!v13)
        {
          v14 = off_1E8086CC8;
        }

        v15 = [objc_alloc(*v14) initWithLayoutOptions:{-[SBHIconManager listLayoutProviderLayoutOptions](self, "listLayoutProviderLayoutOptions")}];
        [(SBHIconManager *)self setListLayoutProvider:v15];
      }

      else if ([v12 shouldRebuildLayoutOnChangesToValueForKey:v6] && objc_msgSend(v12, "isAdjustableLayoutEnabled"))
      {
        [(SBHIconManager *)self tearDownAndResetRootIconLists];
      }
    }

    else
    {
      v9 = [(SBHIconManager *)self badgeParallaxSettings];

      if (v9 == v20)
      {
        [(SBHIconManager *)self enumerateKnownIconViewsUsingBlock:&__block_literal_global_1168];
      }

      else
      {
        v10 = [(SBHIconManager *)self widgetIntroductionSettings];

        if (v10 == v20)
        {
          if ([v6 isEqualToString:@"showWidgetIntroConvenienceControl"])
          {
            if ([(SBHIconManager *)self prototypeSettingShowWidgetIntroduction])
            {
              v16 = [(SBHIconManager *)self homeScreenDefaults];
              [v16 setShouldAddDefaultWidgetsToHomeScreen:1];

              v17 = [(SBHIconManager *)self homeScreenDefaults];
              [v17 setShouldShowWidgetIntroductionPopover:1];

              if (![(SBHIconManager *)self rootFolderContainsWidgets])
              {
                [(SBHIconManager *)self addDefaultFirstPageWidgetsToHomeScreen:1];
                [(SBHIconManager *)self addDefaultSecondPageWidgetsToHomeScreen:0];
              }

              v18 = [(SBHIconManager *)self homeScreenDefaults];
              [v18 setShouldAddDefaultWidgetsToHomeScreen:0];

              v19 = [(SBHIconManager *)self homeScreenDefaults];
              [v19 setShouldShowWidgetIntroductionPopover:0];
            }

            else
            {
              [(SBHIconManager *)self undoDefaultWidgets:0];
            }
          }

          else if ([v6 isEqualToString:@"showXLTVWidget"])
          {
            if ([(SBHIconManager *)self prototypeSettingShowExtraLargeTVWidget])
            {
              [(SBHIconManager *)self addDefaultSecondPageWidgetsToHomeScreen:1];
            }

            else
            {
              [(SBHIconManager *)self undoDefaultTVWidget];
            }
          }
        }

        else
        {
          v11 = [(SBHIconManager *)self legibilityLabelSettings];

          if (v11 == v20)
          {
            [(SBIconLabelImageCache *)self->_labelImageCache removeAllObjects];
            [(SBHIconManager *)self _updateLegibilitySettings];
          }
        }
      }
    }
  }
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHIconManager *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  v5 = [v4 appendBool:-[SBHIconManager isEditing](self withName:{"isEditing"), @"isEditing"}];
  v6 = [(SBHIconManager *)self iconModel];
  v7 = [v4 appendObject:v6 withName:@"model"];

  v8 = [(SBHIconManager *)self listLayoutProvider];
  v9 = [v4 appendObject:v8 withName:@"listLayoutProvider"];

  v10 = [(SBHIconManager *)self rootViewController];
  v11 = [v4 appendObject:v10 withName:@"rootViewController"];

  v12 = [v4 appendObject:self->_touchedIconViews withName:@"touchedIconViews" skipIfNil:1];
  v13 = [v4 appendBool:-[SBHIconManager isIconDragging](self withName:"isIconDragging") ifEqualTo:{@"isIconDragging", 1}];
  v14 = [v4 appendBool:-[SBHIconManager ownsIconModel](self withName:"ownsIconModel") ifEqualTo:{@"ownsIconModel", 0}];
  if ([(NSCountedSet *)self->_reasonsToIgnoreUserPreferenceForAddingNewIconsToHomeScreen count])
  {
    v15 = [v4 appendObject:self->_reasonsToIgnoreUserPreferenceForAddingNewIconsToHomeScreen withName:@"reasonsToIgnoreUserPreferenceForAddingNewIconsToHomeScreen"];
  }

  return v4;
}

- (id)succinctDescription
{
  v2 = [(SBHIconManager *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (void)_setupStateCaptureHandleIfNeeded
{
  if (!self->_stateCaptureHandle)
  {
    objc_initWeak(&location, self);
    v3 = MEMORY[0x1E69E96A0];
    objc_copyWeak(&v6, &location);
    v4 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureHandle = self->_stateCaptureHandle;
    self->_stateCaptureHandle = v4;

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

id __50__SBHIconManager__setupStateCaptureHandleIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _stateCaptureString];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_stateCaptureString
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(SBHIconManager *)self rootFolder];
  [v3 bs_safeAddObject:v4];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(SBHIconManager *)self _libraryViewControllers];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * i) categoriesRootFolder];
        [v3 bs_safeAddObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __37__SBHIconManager__stateCaptureString__block_invoke;
  v14[3] = &unk_1E8090950;
  v14[4] = self;
  v11 = [v3 bs_map:v14];
  v12 = [v11 description];

  return v12;
}

- (id)_dumpRootFolderForStateCapture:(id)a3
{
  v4 = a3;
  v5 = [v4 badgeBehaviorProvider];
  v6 = objc_opt_new();
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p>", objc_opt_class(), v5];
  [v6 setObject:v7 forKeyedSubscript:@"delegate"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v5 != 0];
  [v6 setObject:v8 forKeyedSubscript:@"delegate supports badge checking"];

  if (v5)
  {
    v9 = objc_opt_new();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __49__SBHIconManager__dumpRootFolderForStateCapture___block_invoke;
    v14[3] = &unk_1E808D9B0;
    v14[4] = self;
    v15 = v9;
    v10 = v9;
    [v4 enumerateAllIconsWithOptions:1 usingBlock:v14];
    v11 = [v10 copy];
    [v6 setObject:v11 forKeyedSubscript:@"icons supporting badges"];
  }

  v12 = [v4 description];
  [v6 setObject:v12 forKeyedSubscript:@"description"];

  return v6;
}

void __49__SBHIconManager__dumpRootFolderForStateCapture___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([v5 isFolderIcon] & 1) == 0 && (objc_msgSend(v5, "isWidgetIcon") & 1) == 0 && (objc_msgSend(v5, "isWidgetStackIcon") & 1) == 0 && objc_msgSend(v5, "isLeafIcon") && objc_msgSend(*(a1 + 32), "allowsBadgingForIcon:", v5))
  {
    v3 = *(a1 + 40);
    v4 = [v5 leafIdentifier];
    [v3 addObject:v4];
  }
}

- (void)updateIconViewAccessoryVisibility
{
  [(SBHIconManager *)self refreshAppPredictionBadges];
  v3 = [(SBHIconManager *)self rootFolder];
  [v3 enumerateAllIconsWithOptions:1 usingBlock:&__block_literal_global_1221];
}

void __51__SBHIconManager_updateIconViewAccessoryVisibility__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (([v2 isFolderIcon] & 1) == 0)
  {
    [v2 noteBadgeDidChange];
  }
}

- (void)resizeGestureHandler:(id)a3 didFinishWithGridSizeClass:(id)a4
{
  v9 = a4;
  v6 = [a3 iconView];
  v7 = [v6 icon];
  v8 = [v7 gridSizeClass];
  if ([v7 isWidgetIcon] && v8 != v9 && (objc_msgSend(v8, "isEqualToString:", v9) & 1) == 0)
  {
    [(SBHIconManager *)self changeSizeOfWidgetIcon:v7 toSizeClass:v9 animated:0 completionHandler:0];
  }

  [(SBHIconManager *)self _removeReasonToNotResetEndEditingTimer:@"widget resize"];
}

- (id)resizeGestureHandler:(id)a3 intentForWidget:(id)a4
{
  v6 = a4;
  v7 = [a3 iconView];
  v8 = [v7 icon];

  v9 = 0;
  if ([v8 isWidgetIcon] && v8)
  {
    v9 = [(SBHIconManager *)self _intentForWidget:v6 ofIcon:v8 creatingIfNecessary:1];
  }

  return v9;
}

- (id)resizeGestureHandler:(id)a3 viewControllerForIconDataSource:(id)a4 icon:(id)a5 gridSizeClass:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [a3 iconView];
  v14 = [v13 location];
  v15 = [(SBHIconManager *)self _customViewControllerForResizingIcon:v11 gridSizeClass:v10 dataSource:v12 location:v14];

  return v15;
}

- (id)iconSizeChangeAnimator:(id)a3 intentForWidget:(id)a4
{
  v6 = a4;
  v7 = [a3 iconView];
  v8 = [v7 icon];

  v9 = 0;
  if ([v8 isWidgetIcon] && v8)
  {
    v9 = [(SBHIconManager *)self _intentForWidget:v6 ofIcon:v8 creatingIfNecessary:1];
  }

  return v9;
}

- (id)iconSizeChangeAnimator:(id)a3 viewControllerForIconDataSource:(id)a4 icon:(id)a5 gridSizeClass:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [a3 iconView];
  v14 = [v13 location];
  v15 = [(SBHIconManager *)self _customViewControllerForResizingIcon:v11 gridSizeClass:v10 dataSource:v12 location:v14];

  return v15;
}

- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__SBHIconManager_appProtectionSubjectsChanged_forSubscription___block_invoke;
  v7[3] = &unk_1E8088F18;
  v8 = v5;
  v9 = self;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __63__SBHIconManager_appProtectionSubjectsChanged_forSubscription___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) appPrototectionSubjectMonitorSubscription];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    v4 = *(a1 + 40);

    [v4 checkForInvalidWidgets];
  }
}

- (APSubjectMonitorSubscription)appPrototectionSubjectMonitorSubscription
{
  WeakRetained = objc_loadWeakRetained(&self->_appPrototectionSubjectMonitorSubscription);

  return WeakRetained;
}

- (PUIStylePickerViewController)currentStylePickerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_currentStylePickerViewController);

  return WeakRetained;
}

- (SBHIconManagerWidgetMetricsDelegate)widgetMetricsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_widgetMetricsDelegate);

  return WeakRetained;
}

- (void)relayout
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)uninstallIcon:animate:completion:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addIconToIgnoredList:options:completion:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)removeIcon:options:completion:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)removeIcon:options:completion:.cold.2()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)folderIconImageCache
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_DEBUG, "Creating new SBFolderIconImageCache: %p", &v3, 0xCu);
}

- (void)_newIntentForDataSource:(void *)a1 inIcon:(NSObject *)a2 loadingFromArchiveIfNecessary:usingDefaultIntentIfNecessary:.cold.1(void *a1, NSObject *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [a1 applicationBundleID];
  v5 = [a1 activeDataSource];
  v6 = SBHConfigurationIdentifierFromDataSource(v5);
  v7 = 138543874;
  v8 = a1;
  v9 = 2114;
  v10 = v4;
  v11 = 2114;
  v12 = v6;
  _os_log_debug_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_DEBUG, "Replacing widget icon's intent configuration data with default intent because the archived intent could not be found: %{public}@, bundleID=%{public}@,  dataSourceStorageIdentifier: %{public}@", &v7, 0x20u);
}

- (void)widgetHostViewController:requestsLaunch:.cold.1()
{
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)widgetHostViewController:requestsLaunch:.cold.2()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)multiplexingManager:shouldCacheRecentViewController:forIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)widgetStackViewController:(uint64_t)a1 didActivateDataSource:(void *)a2 fromUserInteraction:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a2 uniqueIdentifier];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1BEB18000, a3, OS_LOG_TYPE_ERROR, "Trying to active data source due to user scroll but the data source is unknown! %@ for: %@", &v6, 0x16u);
}

- (void)customImageViewControllerForIconView:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"appPredictionViewController != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBHIconManager.m";
    v16 = 1024;
    v17 = 8764;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1BEB18000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)iconView:configurationInteractionForDataSource:.cold.1()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)iconView:configurationInteractionForDataSource:.cold.2()
{
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)swapApplicationIconsInProminentPositionsWithBundleIdentifier:withApplicationIconsWithWithBundleIdentifier:inRootFolder:focusModeIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)swapApplicationIconsInProminentPositionsWithBundleIdentifier:withApplicationIconsWithWithBundleIdentifier:inRootFolder:focusModeIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end