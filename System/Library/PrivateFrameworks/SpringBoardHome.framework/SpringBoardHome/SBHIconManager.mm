@interface SBHIconManager
+ (id)undoActionNameForDraggedIcons:(id)icons;
- (APSubjectMonitorSubscription)appPrototectionSubjectMonitorSubscription;
- (BOOL)_alwaysPresentStackConfigurationSheet;
- (BOOL)_determineIfAvocadoHostViewControllerIsVisible:(id)visible;
- (BOOL)_determineIfAvocadoHostViewControllerIsVisible:(id)visible withinStackViewController:(id)controller;
- (BOOL)_isShowingLeadingCustomViewSearch;
- (BOOL)_isShowingLeadingCustomViewSearchOrTransitioning;
- (BOOL)_isShowingOrTransitioningToSearchableLeadingCustomView;
- (BOOL)_isShowingPullDownSearchOrTransitioning;
- (BOOL)_isShowingSearchableLeadingCustomView;
- (BOOL)_shouldLibraryOverlayAllowSwipeToDismissGesture:(id)gesture;
- (BOOL)_shouldParallaxInIconLocation:(id)location;
- (BOOL)_shouldRespondToIconCloseBoxes;
- (BOOL)_shouldUseHomeScreenLargeIconSize;
- (BOOL)addDefaultFirstPageWidgetsToHomeScreen:(BOOL)screen;
- (BOOL)addDefaultSecondPageWidgetsToHomeScreen:(BOOL)screen;
- (BOOL)addDefaultWidgetsToHomeScreen;
- (BOOL)allowsBadgingForIcon:(id)icon;
- (BOOL)allowsBadgingForIconLocation:(id)location;
- (BOOL)allowsFocus;
- (BOOL)allowsNestedFolders;
- (BOOL)applyOriginaliconStateForWidgetDiscoverability;
- (BOOL)areAnyIconShareSheetsShowing;
- (BOOL)canAddIconToIgnoredList:(id)list;
- (BOOL)canCloseFolders;
- (BOOL)canOpenFolderForIcon:(id)icon;
- (BOOL)canSaveIconState:(id)state;
- (BOOL)canSwapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)identifier withApplicationIconsWithWithBundleIdentifier:(id)bundleIdentifier;
- (BOOL)canSwapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)identifier withApplicationIconsWithWithBundleIdentifier:(id)bundleIdentifier focusModeIdentifier:(id)modeIdentifier;
- (BOOL)clearTodayLayout;
- (BOOL)contextMenuManager:(id)manager shouldBeginContextMenuPresentationForIconView:(id)view;
- (BOOL)contextMenuManager:(id)manager shouldPreviewOverlapMenuForIconView:(id)view;
- (BOOL)currentHomeScreenWallpaperDimState;
- (BOOL)dismissSpotlightAnimated:(BOOL)animated completionHandler:(id)handler;
- (BOOL)dismissSpotlightOrTodayViewAnimated:(BOOL)animated;
- (BOOL)folderController:(id)controller canChangeCurrentPageIndexToIndex:(int64_t)index;
- (BOOL)folderControllerShouldClose:(id)close withPinchGesture:(id)gesture;
- (BOOL)hasAnimatingFolder;
- (BOOL)hasConfiguredFilesStackWithURL:(id)l;
- (BOOL)hasOpenFolder;
- (BOOL)hasOpenFolderInLocation:(id)location;
- (BOOL)hasRootFolderController;
- (BOOL)hasRootViewController;
- (BOOL)icon:(id)icon canReceiveGrabbedIcon:(id)grabbedIcon;
- (BOOL)iconDragManager:(id)manager canAcceptDropInSession:(id)session inIconListView:(id)view;
- (BOOL)iconDragManager:(id)manager canAddDragItemsToSession:(id)session fromIconView:(id)view;
- (BOOL)iconDragManager:(id)manager canBeginDragForIconView:(id)view;
- (BOOL)iconDragManager:(id)manager canBeginIconDragForIconView:(id)view;
- (BOOL)iconDragManager:(id)manager dragsSupportSystemDragsForIconView:(id)view;
- (BOOL)iconDragManager:(id)manager shouldDuplicateIconsInDragSession:(id)session;
- (BOOL)iconModel:(id)model shouldAvoidPlacingIconOnFirstPage:(id)page;
- (BOOL)iconModel:(id)model shouldLeaveGapForMissingArchivedIconWithIdentifier:(id)identifier;
- (BOOL)iconModel:(id)model shouldPlaceIconOnIgnoredList:(id)list;
- (BOOL)iconShouldAllowTap:(id)tap;
- (BOOL)iconView:(id)view editingModeGestureRecognizerDidFire:(id)fire;
- (BOOL)iconView:(id)view shouldActivateApplicationShortcutItem:(id)item atIndex:(unint64_t)index;
- (BOOL)iconView:(id)view shouldContinueToUseBackgroundViewForComponents:(id)components;
- (BOOL)iconView:(id)view supportsConfigurationForDataSource:(id)source;
- (BOOL)iconViewDisplaysAccessories:(id)accessories;
- (BOOL)iconViewDisplaysCloseBox:(id)box;
- (BOOL)iconViewDisplaysLabel:(id)label;
- (BOOL)iconViewDisplaysResizeHandle:(id)handle;
- (BOOL)iconsShouldAllowCloseBoxes;
- (BOOL)isAnimatingFolderIconTransitionForIconDragManager:(id)manager;
- (BOOL)isCustomIconElementValid:(id)valid;
- (BOOL)isCustomLeadingViewTodayView;
- (BOOL)isDisplayingIcon:(id)icon inLocation:(id)location options:(unint64_t)options;
- (BOOL)isDisplayingIcon:(id)icon inLocations:(id)locations;
- (BOOL)isDisplayingIcon:(id)icon options:(unint64_t)options;
- (BOOL)isDisplayingIcon:(id)icon queryOptions:(unint64_t)options;
- (BOOL)isDisplayingIconView:(id)view;
- (BOOL)isDisplayingIconView:(id)view inLocation:(id)location;
- (BOOL)isDisplayingIconView:(id)view options:(unint64_t)options;
- (BOOL)isEditing;
- (BOOL)isEditingAllowed;
- (BOOL)isEditingAllowedForIconListView:(id)view;
- (BOOL)isEditingAllowedForIconLocation:(id)location;
- (BOOL)isEditingAllowedForIconView:(id)view;
- (BOOL)isEditingForIconListView:(id)view;
- (BOOL)isEditingForIconLocation:(id)location;
- (BOOL)isFloatingDockSupported;
- (BOOL)isFloatingDockUtilitiesSupported;
- (BOOL)isFloatingDockVisible;
- (BOOL)isFolderOpenForIconDragManager:(id)manager;
- (BOOL)isFolderPageManagementUIVisible;
- (BOOL)isFolderScrolling;
- (BOOL)isIconContentPossiblyVisibleOverApplication;
- (BOOL)isIconDragging;
- (BOOL)isIconIgnored:(id)ignored;
- (BOOL)isIconViewRecycled:(id)recycled;
- (BOOL)isIconVisiblyRepresented:(id)represented;
- (BOOL)isMainDisplayLibraryViewVisible;
- (BOOL)isOverlayTodayOrLibraryViewVisible;
- (BOOL)isPerformingCancelledCollapseTransition;
- (BOOL)isPerformingCancelledExpandTransition;
- (BOOL)isPerformingExpandTransition;
- (BOOL)isPresentingIconLocation:(id)location;
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
- (BOOL)isWidgetValid:(id)valid iconSizeClass:(id)class;
- (BOOL)listsAllowRotatedLayoutForFolderClass:(Class)class;
- (BOOL)multiplexingManager:(id)manager shouldCacheRecentViewController:(id)controller forIdentifier:(id)identifier;
- (BOOL)openApplicationWindowsContextMenuProvider:(id)provider canProvideContextMenuSectionsForBundleIdentifier:(id)identifier;
- (BOOL)presentHomeScreenIconsAnimated:(BOOL)animated;
- (BOOL)presentSpotlightFromSource:(unint64_t)source animated:(BOOL)animated completionHandler:(id)handler;
- (BOOL)prototypeSettingBumpLeastUsedApps;
- (BOOL)prototypeSettingEditButtonAsUndo;
- (BOOL)prototypeSettingShowExtraLargeTVWidget;
- (BOOL)prototypeSettingShowWidgetIntroduction;
- (BOOL)prototypeSettingSimpleBottomSnaking;
- (BOOL)recentDocumentsContextMenuProvider:(id)provider canProvideContextMenuSectionsForBundleIdentifier:(id)identifier;
- (BOOL)relayout;
- (BOOL)requestDeleteFileStackIcon:(id)icon;
- (BOOL)resetIconLayoutWithOptions:(unint64_t)options;
- (BOOL)resetTodayLayout;
- (BOOL)rootFolder:(id)folder canAddIcon:(id)icon toIconList:(id)list inFolder:(id)inFolder;
- (BOOL)rootFolder:(id)folder canBounceIcon:(id)icon;
- (BOOL)rootFolder:(id)folder isGridLayoutValid:(id)valid forIconList:(id)list inFolder:(id)inFolder;
- (BOOL)rootFolderContainsSuggestedWidget;
- (BOOL)rootFolderContainsWidgets;
- (BOOL)rootFolderController:(id)controller allowsRemovalOfIconDataSourceWithinStack:(id)stack;
- (BOOL)rootFolderControllerCanUseSeparateWindowForRotation:(id)rotation;
- (BOOL)rootFolderControllerDidSetPrototypeSettingEditAsUndo:(id)undo;
- (BOOL)shouldEnforceMaxCombinedUserAndUtilitiesIconCountForFloatingDock;
- (BOOL)shouldGroupSystemApplicationShortcutItemsForIconView:(id)view atLocation:(CGPoint)location;
- (BOOL)shouldHighlightTouchedIconView:(id)view;
- (BOOL)shouldRecycleIconView:(id)view;
- (BOOL)swapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)identifier withApplicationIconsWithWithBundleIdentifier:(id)bundleIdentifier;
- (BOOL)swapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)identifier withApplicationIconsWithWithBundleIdentifier:(id)bundleIdentifier focusModeIdentifier:(id)modeIdentifier;
- (BOOL)swapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)identifier withApplicationIconsWithWithBundleIdentifier:(id)bundleIdentifier inRootFolder:(id)folder focusModeIdentifier:(id)modeIdentifier;
- (BOOL)userHasUsedWidget;
- (BOOL)viewMap:(id)map shouldRecycleView:(id)view;
- (BOOL)widgetIconIsOnboardingWidget:(id)widget;
- (BOOL)widgetStackViewController:(id)controller isDataSourceBlockedForScreenTimeExpiration:(id)expiration;
- (BOOL)widgetStackViewControllerCanFlashPageControl:(id)control;
- (CGRect)iconView:(id)view contentBoundingRectForConfigurationInteraction:(id)interaction;
- (CHSWidgetExtensionProvider)widgetExtensionProvider;
- (Class)controllerClassForFolder:(id)folder;
- (Class)controllerClassForFolderClass:(Class)class;
- (Class)iconModel:(id)model iconClassForApplicationWithBundleIdentifier:(id)identifier proposedClass:(Class)class;
- (Class)iconViewClass;
- (NSArray)defaultFirstPageSuggestedWidgetIcons;
- (NSArray)defaultSecondPageSuggestedWidgetIcons;
- (NSSet)presentedIconLocations;
- (NSString)statisticsSummary;
- (PUIStylePickerViewController)currentStylePickerViewController;
- (SBFolder)openedFolder;
- (SBFolderController)openedFolderController;
- (SBFolderIconImageCache)folderIconImageCache;
- (SBHIconGridSize)listGridSizeForFolderClass:(Class)class;
- (SBHIconGridSize)listWithNonDefaultSizedIconsGridSizeForFolderClass:(Class)class;
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
- (UIEdgeInsets)contentOverlayInsetsFromParentIfAvailableForFolderController:(id)controller;
- (UIEdgeInsets)statusBarEdgeInsetsForFolderController:(id)controller;
- (UIImpactFeedbackGenerator)iconEditingFeedbackBehavior;
- (double)defaultIconLayoutAnimationDurationForIconDragManager:(id)manager;
- (double)distanceToTopOfSpotlightIconsForRootFolderController:(id)controller;
- (double)externalDockHeightForRootFolderController:(id)controller;
- (double)iconDragManager:(id)manager additionalDragLiftScaleForIconView:(id)view;
- (double)maxExternalDockHeightForRootFolderController:(id)controller;
- (double)minimumHomeScreenScaleForFolderController:(id)controller;
- (double)preferredExternalDockVerticalMarginForRootFolderController:(id)controller;
- (double)verticalMarginPercentageForConfigurationOfIconView:(id)view;
- (id)_archivedIntentForDataSource:(id)source inIcon:(id)icon loadingIfNecessary:(BOOL)necessary;
- (id)_containerViewControllerForPersonDetailInteractionTargetingIconView:(id)view;
- (id)_containerViewForPersonDetailInteractionTargetingIconView:(id)view;
- (id)_createAppropriateRootViewControllerForRootFolder:(id)folder;
- (id)_createRootFolderControllerForRootFolder:(id)folder;
- (id)_createRootTableControllerForRootFolder:(id)folder;
- (id)_currentFolderController;
- (id)_customViewControllerForResizingIcon:(id)icon gridSizeClass:(id)class dataSource:(id)source location:(id)location;
- (id)_dumpRootFolderForStateCapture:(id)capture;
- (id)_effectiveAppPredictionViewControllersForUniqueIdentifier;
- (id)_effectiveTodayViewController;
- (id)_effectiveWidgetMultiplexingManager;
- (id)_fetchCurrentStyleConfiguration;
- (id)_folderControllerForIcon:(id)icon inLocation:(id)location;
- (id)_homeScreenContentViewForPersonDetailInteractionTargetingIconView:(id)view;
- (id)_iconForDescriptor:(id)descriptor;
- (id)_iconLabelImageParametersForPrewarm:(unint64_t)prewarm;
- (id)_intentForDataSource:(id)source inIcon:(id)icon loadingFromArchiveIfNecessary:(BOOL)necessary usingDefaultIntentIfNecessary:(BOOL)ifNecessary;
- (id)_intentForWidget:(id)widget ofIcon:(id)icon loadingFromArchiveIfNecessary:(BOOL)necessary usingDefaultIntentIfNecessary:(BOOL)ifNecessary;
- (id)_libraryViewControllers;
- (id)_makeCustomViewControllerForWidgetIcon:(id)icon dataSource:(id)source location:(id)location;
- (id)_makeCustomViewControllerForWidgetIcon:(id)icon dataSource:(id)source location:(id)location gridSizeClass:(id)class;
- (id)_multiplexingViewControllerForIcon:(id)icon dataSource:(id)source location:(id)location withPriority:(unint64_t)priority;
- (id)_newIntentForDataSource:(id)source inIcon:(id)icon loadingFromArchiveIfNecessary:(BOOL)necessary usingDefaultIntentIfNecessary:(BOOL)ifNecessary;
- (id)_personDetailInteractionContextForPersonURL:(id)l iconView:(id)view;
- (id)_proposedFolderNameForGrabbedIcon:(id)icon recipientIcon:(id)recipientIcon;
- (id)_stackConfigurationForStackIcon:(id)icon;
- (id)_stashedIconsWithRemovableDataSourcesForStashedIcons:(id)icons newIcons:(id)newIcons;
- (id)_stateCaptureString;
- (id)_widgetIntroductionHomeScreenPreviewView;
- (id)accessibilityTintColorForIconView:(id)view;
- (id)accessibilityTintColorForScreenRect:(CGRect)rect;
- (id)addApplicationPlaceholders:(id)placeholders;
- (id)addWidgetSheetConfigurationManager:(id)manager containerBundleIdentiferForDescriptor:(id)descriptor;
- (id)addWidgetSheetConfigurationManager:(id)manager vendorNameForAppWithBundleIdentifier:(id)identifier;
- (id)addWidgetSheetConfigurationManagerCreatingIfNecessary:(BOOL)necessary;
- (id)addWidgetSheetViewControllerForAddWidgetSheetConfigurationManager:(id)manager;
- (id)addWidgetsToEachPage;
- (id)additionalIconViewsToUpdateDuringColorPicking;
- (id)allowedGridSizeClassesForDock;
- (id)allowedGridSizeClassesForTodayList;
- (id)animator:(id)animator animationSettingsForOperation:(unint64_t)operation childViewController:(id)controller;
- (id)appPredictionViewControllerForIconView:(id)view;
- (id)appPredictionsIconViewDisplayingIconView:(id)view options:(unint64_t)options;
- (id)applicationShortcutSectionOrderingForIconView:(id)view;
- (id)applicationWithBundleIdentifier:(id)identifier;
- (id)backgroundViewForDockForRootFolderController:(id)controller;
- (id)backgroundViewForEditingDoneButtonForRootFolderController:(id)controller;
- (id)beginHidingIconsFromLayout:(id)layout reason:(id)reason options:(unint64_t)options;
- (id)bestHomeScreenLocationForIcon:(id)icon;
- (id)bestLocationForIcon:(id)icon;
- (id)cachingImageAppearances;
- (id)cachingImageStyleConfiguration;
- (id)captureHomeScreenOnboardingSnapshot;
- (id)contextMenuManager:(id)manager containerViewForPresentingContextMenuForIconView:(id)view;
- (id)contextMenuManager:(id)manager orderedActionContextMenuProvidersForIconView:(id)view;
- (id)createNewFolderFromRecipientIcon:(id)icon grabbedIcon:(id)grabbedIcon;
- (id)customImageViewControllerForIconView:(id)view;
- (id)dataSourceForOpenApplicationWindowsContextMenuProvider:(id)provider;
- (id)debuggingActiveWidgetInfo;
- (id)defaultIconStateForIconModel:(id)model;
- (id)dequeueReusableIconViewOfClass:(Class)class;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)fakeStatusBarForFolderController:(id)controller;
- (id)firstIconViewForIcon:(id)icon;
- (id)firstIconViewForIcon:(id)icon excludingLocations:(id)locations;
- (id)firstIconViewForIcon:(id)icon inLocations:(id)locations;
- (id)firstIconViewForIcon:(id)icon options:(unint64_t)options;
- (id)firstIconViewWithOptions:(unint64_t)options iconPassingTest:(id)test;
- (id)floatingDockUtilitiesListView;
- (id)floatingDockViewControllerForView:(id)view;
- (id)folderControllerForFolder:(id)folder;
- (id)folderControllerWantsToHideStatusBar:(id)bar animated:(BOOL)animated;
- (id)gridPathForIcon:(id)icon;
- (id)gridSizeClassDomain;
- (id)gridSizeClassSizesForIconModel:(id)model;
- (id)highPriorityCachingImageAppearancesForIconImageStyleConfiguration:(id)configuration;
- (id)homescreenIconAccessoryViewMap;
- (id)homescreenIconImageViewMap;
- (id)homescreenIconLabelAccessoryViewMap;
- (id)iconDataSourceForReplacingAppIconWithWidgetIcon:(id)icon;
- (id)iconDragManager:(id)manager dragPreviewForIconView:(id)view;
- (id)iconDragManager:(id)manager targetedDragPreviewForIconView:(id)view item:(id)item session:(id)session previewParameters:(id)parameters;
- (id)iconForReplacingWidgetIconWithAppIcon:(id)icon;
- (id)iconGridSizeClassSizes;
- (id)iconListViewForIndexPath:(id)path;
- (id)iconLocationForList:(id)list inFolder:(id)folder ofRootFolder:(id)rootFolder;
- (id)iconLocationForListsWithNonDefaultSizedIcons;
- (id)iconModel:(id)model allowedGridSizeClassesForFolderClass:(Class)class;
- (id)iconModel:(id)model customInsertionGridPathForIcon:(id)icon inRootFolder:(id)folder;
- (id)iconModel:(id)model customInsertionIndexPathForIcon:(id)icon inRootFolder:(id)folder;
- (id)iconModel:(id)model validatedFileStackIconForFileStackIcon:(id)icon;
- (id)iconSizeChangeAnimator:(id)animator intentForWidget:(id)widget;
- (id)iconSizeChangeAnimator:(id)animator viewControllerForIconDataSource:(id)source icon:(id)icon gridSizeClass:(id)class;
- (id)iconView:(id)view applicationShortcutItemsWithProposedItems:(id)items;
- (id)iconView:(id)view backgroundViewForComponentsOfType:(int64_t)type;
- (id)iconView:(id)view configurationInteractionForDataSource:(id)source;
- (id)iconView:(id)view containerViewControllerForConfigurationInteraction:(id)interaction;
- (id)iconView:(id)view containerViewForConfigurationInteraction:(id)interaction;
- (id)iconView:(id)view homeScreenContentViewForConfigurationInteraction:(id)interaction;
- (id)iconView:(id)view iconAccessoryViewOfClass:(Class)class;
- (id)iconView:(id)view iconLabelAccessoryViewOfType:(int64_t)type;
- (id)iconView:(id)view labelContentWithParameters:(id)parameters;
- (id)iconView:(id)view labelImageWithParameters:(id)parameters;
- (id)iconViewForIcon:(id)icon location:(id)location options:(unint64_t)options;
- (id)iconViewMap;
- (id)iconViewShowingContextMenu;
- (id)iconViewsToPreviewForIconStylePicker;
- (id)iconsToRecacheForIconStylePickerPreview;
- (id)iconsToRecacheForImageAppearanceChange;
- (id)imageViewForIconView:(id)view;
- (id)launchActionsForIconView:(id)view;
- (id)launchURLForIconView:(id)view;
- (id)leadingTodayViewController;
- (id)listRotatedLayoutClusterGridSizeClassForIconModel:(id)model;
- (id)listViewsToUpdateDuringColorPicking;
- (id)localizedDefaultFolderName;
- (id)localizedFolderNameForDefaultDisplayName:(id)name;
- (id)lowPriorityCachingImageAppearancesForIconImageStyleConfiguration:(id)configuration;
- (id)makeResizedCopyOfWidgetIcon:(id)icon withGridSizeClass:(id)class;
- (id)metricsForCHSWidget:(id)widget inLocation:(id)location;
- (id)nestingViewController:(id)controller interactionControllerForAnimationController:(id)animationController;
- (id)onboardingWidgetPreviewsForWidgetIcon:(id)icon;
- (id)parallaxSettingsForComponentsOfIconView:(id)view;
- (id)persistedHomeScreenColorConfiguration;
- (id)preWarmCustomViewControllerForWidgetIcon:(id)icon;
- (id)preWarmCustomViewControllerForWidgetIcon:(id)icon withGridSizeClass:(id)class;
- (id)precacheLayersForIcons:(id)icons appearances:(id)appearances reason:(id)reason;
- (id)prepareForUndo;
- (id)primaryWindowScene;
- (id)prioritizedCachingImageAppearances;
- (id)prioritizedCachingImageAppearancesForIconImageStyleConfiguration:(id)configuration priority:(int64_t)priority;
- (id)promoteSuggestedWidget:(id)widget withinStack:(id)stack;
- (id)reasonToDisallowInteractionOnIconView:(id)view;
- (id)reasonToDisallowTapOnIconView:(id)view;
- (id)recycledViewsContainerProviderForViewMap:(id)map;
- (id)replaceApplicationPlaceholderWithApplication:(id)application;
- (id)resizeGestureHandler:(id)handler intentForWidget:(id)widget;
- (id)resizeGestureHandler:(id)handler viewControllerForIconDataSource:(id)source icon:(id)icon gridSizeClass:(id)class;
- (id)resizeGestureHandlerForIconView:(id)view;
- (id)rootFolder:(id)folder shouldBounceIcon:(id)icon afterInsertingIcons:(id)icons forIconList:(id)list inFolder:(id)inFolder;
- (id)rootFolderController:(id)controller dragPreviewForIconView:(id)view;
- (id)rootFolderController:(id)controller draggedIconForStackConfigurationInteractionForIdentifier:(id)identifier;
- (id)rootIconListAtIndex:(int64_t)index;
- (id)rootListLayout;
- (id)rootViewForIconDragManager:(id)manager;
- (id)screenSnapshotProviderForComponentsOfIconView:(id)view;
- (id)silhouetteLayoutForPageAtIndex:(unint64_t)index;
- (id)stackConfigurationInteractionForIconView:(id)view;
- (id)statusBarStyleRequestForFolderController:(id)controller;
- (id)succinctDescription;
- (id)supportedGridSizeClassesForIconView:(id)view;
- (id)supportedGridSizeClassesForWidgetWithKind:(id)kind extensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier;
- (id)supportedIconGridSizeClassesForResizeOfIconView:(id)view;
- (id)todayViewControllers;
- (id)trailingLibraryViewController;
- (id)validatedWidgetIconForWidgetIcon:(id)icon;
- (id)viewControllerForPresentingViewControllers;
- (id)viewMap:(id)map makeNewViewOfClass:(Class)class;
- (id)visibleIconsToRecacheForImageAppearanceChange;
- (id)widgetBackgroundViewMap;
- (id)widgetIconWithWidgetExtensionIdentifiers:(id)identifiers widgetKinds:(id)kinds sizeClass:(id)class;
- (id)widgetInsertionRippleIconAnimatorForIcon:(id)icon iconListView:(id)view withReferenceIconView:(id)iconView;
- (id)widgetMetricsProvider:(id)provider listLayoutProviderForScreenType:(unint64_t)type;
- (id)widgetStackViewController:(id)controller containerApplicationNameForDataSource:(id)source;
- (id)widgetStackViewController:(id)controller viewControllerForDataSource:(id)source;
- (id)windowForIconDragPreviewsForIconDragManager:(id)manager forWindowScene:(id)scene;
- (id)windowForStackConfigurationIconDragPreviewsForRootFolderController:(id)controller forWindowScene:(id)scene;
- (int64_t)closeBoxTypeForIconView:(id)view;
- (int64_t)contextMenuManager:(id)manager preferredMenuElementOrderForIconView:(id)view;
- (int64_t)currentIconListIndex;
- (int64_t)iconDragManager:(id)manager draggingStartLocationForIconView:(id)view proposedStartLocation:(int64_t)location;
- (int64_t)iconView:(id)view userInterfaceStyleForConfigurationInteraction:(id)interaction;
- (int64_t)interfaceOrientation;
- (int64_t)listsFixedIconLocationBehavior;
- (int64_t)listsFixedIconLocationBehaviorForFolderClass:(Class)class;
- (int64_t)listsIconDisplacementBehavior;
- (int64_t)listsIconDisplacementBehaviorForFolderClass:(Class)class;
- (unint64_t)addWidgetSheetStyleForRootFolderController:(id)controller;
- (unint64_t)allowedInterfaceOrientations;
- (unint64_t)columnCountForTodayList;
- (unint64_t)contextMenuManager:(id)manager supportedMultitaskingShortcutActionsForIconView:(id)view;
- (unint64_t)effectiveRootFolderControllerContentVisibility;
- (unint64_t)focusEffectTypeForIconView:(id)view;
- (unint64_t)gridCellInfoOptions;
- (unint64_t)iconModel:(id)model maxColumnCountForListInRootFolderWithInterfaceOrientation:(int64_t)orientation;
- (unint64_t)iconModel:(id)model maxRowCountForListInRootFolderWithInterfaceOrientation:(int64_t)orientation;
- (unint64_t)maxIconCountForDock;
- (unint64_t)maxIconCountForDockUtilities;
- (unint64_t)maxListCountForFolders;
- (unint64_t)possibleInterfaceOrientations;
- (unint64_t)supportedMultitaskingShortcutActionsForIconView:(id)view;
- (unint64_t)viewMap:(id)map maxRecycledViewsOfClass:(Class)class;
- (void)_addTouchedIconView:(id)view;
- (void)_animateFolderIcon:(id)icon open:(BOOL)open location:(id)location animated:(BOOL)animated withCompletion:(id)completion;
- (void)_applyBarButtonItemsToStylePicker:(id)picker forHomeScreenConfiguration:(id)configuration;
- (void)_archiveConfiguration:(id)configuration forDataSource:(id)source ofIcon:(id)icon;
- (void)_beginObservingLeafIconsInModel:(id)model;
- (void)_cleanupForClosingFolderAnimated:(BOOL)animated;
- (void)_cleanupLabelCachesWithReason:(id)reason;
- (void)_clearStashedIconsForRelayout;
- (void)_closeFolderController:(id)controller animated:(BOOL)animated withCompletion:(id)completion;
- (void)_compactRootListsAfterFolderCloseWithAnimation:(BOOL)animation;
- (void)_configureRootFolderConfiguration:(id)configuration;
- (void)_discardEndEditingTimerAndDontResetUntilReasonIsRemoved:(id)removed;
- (void)_dismissStylePickerViewControllerImmediately;
- (void)_endObservingLeafIconsInModel:(id)model;
- (void)_engageWallpaperTintColorDropper:(id)dropper;
- (void)_enqueueTransitionName:(id)name withHandler:(id)handler;
- (void)_ensureRootFolderController;
- (void)_ensureWidgetIsVisibleForDebuggingWithDescriptor:(id)descriptor sizeClass:(int64_t)class;
- (void)_enumerateEditableViewController:(id)controller usingBlock:(id)block;
- (void)_fetchWallpaperProminentColor:(id)color;
- (void)_finishResetRootIconListsReusingPreviousControllers:(BOOL)controllers;
- (void)_folderDidFinishOpenClose:(BOOL)close animated:(BOOL)animated success:(BOOL)success;
- (void)_handleRemovedDataSource:(id)source ofIcon:(id)icon;
- (void)_handleUpdatedConfiguration:(id)configuration forDataSource:(id)source ofIcon:(id)icon archiving:(BOOL)archiving;
- (void)_iconModelDidLayout:(id)layout;
- (void)_iconVisibilityChanged:(id)changed;
- (void)_invalidateWallpaperTintColorDropper;
- (void)_loadAndSaveDefaultIntentIfNecessaryForWidget:(id)widget ofIcon:(id)icon viewController:(id)controller;
- (void)_noteUserIsInteractingWithIcons;
- (void)_precacheDataForRootIcons;
- (void)_precacheDataForRootIconsAfterIconAppearanceChange;
- (void)_precacheImagesForRootIcons;
- (void)_precacheImagesForRootIconsForStyleConfiguration:(id)configuration;
- (void)_precacheIntentsForRootIcons;
- (void)_precacheLabelsForRootIcons:(BOOL)icons reason:(id)reason;
- (void)_prepareToResetRootIconLists;
- (void)_presentStylePickerViewController;
- (void)_presentStylePickerViewControllerForStylePickerConfiguration:(id)configuration;
- (void)_processPendingDefaultIntents;
- (void)_removeReasonToNotResetEndEditingTimer:(id)timer;
- (void)_removeTouchedIconView:(id)view;
- (void)_resetHomescreenIconStateTo:(id)to;
- (void)_restartEditingEndTimer;
- (void)_scrollToLastIconPageIfNecessaryForLibraryOverlayDismissal:(id)dismissal;
- (void)_setupApplicationShortcutItemsForPresentation:(id)presentation;
- (void)_setupStateCaptureHandleIfNeeded;
- (void)_todayViewControllerSuppressesEditingStateForListViews:(BOOL)views;
- (void)_toggleHomeScreenIconSize:(id)size;
- (void)_tryScrollToIconToRevealAnimated:(BOOL)animated;
- (void)_updateCaptureOnlyBackgroundViewForCustomIconImageViewController:(id)controller;
- (void)_updateIconView:(id)view forCustomIconImageViewController:(id)controller;
- (void)_updateLegibilitySettings;
- (void)_updateMaximumEditingIconSizeForFloatingDockViewController:(id)controller;
- (void)_updateOverlayOcclusionForRootFolderController;
- (void)_updateOverscrollModalLibraryForScrollToPresented:(BOOL)presented;
- (void)_updateShouldUseHomeScreenLargeIconSize:(BOOL)size;
- (void)_updateStyleConfiguration:(id)configuration;
- (void)_updateVisibleIconsViewsForAllowableCloseBoxes;
- (void)_updateWidgetMultiplexingViewController:(id)controller forIconView:(id)view;
- (void)_validateAndRepairIntentsForConfigurableWidgets;
- (void)_willAnimateWidgetInsertion;
- (void)addAdditionalIconImageCacheForPrecaching:(id)precaching;
- (void)addAllEligibleIconsToIgnoredList;
- (void)addApplicationIconWithBundleIdentifier:(id)identifier toPage:(unint64_t)page coordinate:(SBIconCoordinate)coordinate;
- (void)addApplicationIconWithBundleIdentifier:(id)identifier toPage:(unint64_t)page coordinate:(SBIconCoordinate)coordinate orientation:(int64_t)orientation;
- (void)addApplicationIconWithBundleIdentifier:(id)identifier toPage:(unint64_t)page iconIndex:(unint64_t)index;
- (void)addDebugIconOfSizeClass:(id)class toPage:(unint64_t)page coordinate:(SBIconCoordinate)coordinate;
- (void)addDebugIconOfSizeClass:(id)class toPage:(unint64_t)page coordinate:(SBIconCoordinate)coordinate orientation:(int64_t)orientation;
- (void)addDebugIconOfSizeClass:(id)class toPage:(unint64_t)page iconIndex:(unint64_t)index;
- (void)addFileStackWithURL:(id)l;
- (void)addFolderPresentationObserver:(id)observer;
- (void)addIconToIgnoredList:(id)list options:(unint64_t)options completion:(id)completion;
- (void)addIcons:(id)icons intoFolderIcon:(id)icon openFolderOnFinish:(BOOL)finish completion:(id)completion;
- (void)addNewIconToDesignatedLocation:(id)location options:(unint64_t)options;
- (void)addNewIconsToDesignatedLocations:(id)locations saveIconState:(BOOL)state;
- (void)addPageStateObserver:(id)observer;
- (void)addReasonToIgnoreUserPreferenceForAddingNewIconsToHomeScreen:(id)screen;
- (void)addSuggestedActiveWidgetToStack:(id)stack;
- (void)addWidgetStackToCurrentPage;
- (void)addWidgetStackWithIdentifiers:(id)identifiers toPage:(int64_t)page withSizeClass:(id)class;
- (void)addWidgetWithIdentifier:(id)identifier toPage:(int64_t)page withSizeClass:(id)class;
- (void)addWidgets:(id)widgets toGridPath:(id)path overflowOptions:(unint64_t)options;
- (void)animateToDefaultStateWithCompletionHandler:(id)handler;
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)cancelAllDrags;
- (void)cancelAllFolderScrolling;
- (void)changeSizeOfWidgetIcon:(id)icon toSizeClass:(id)class animated:(BOOL)animated completionHandler:(id)handler;
- (void)checkForInvalidCustomElements;
- (void)checkForInvalidWidgets;
- (void)clearHighlightedIcon;
- (void)clearHighlightedIcon:(id)icon;
- (void)closeFolderAnimated:(BOOL)animated withCompletion:(id)completion;
- (void)configureFeedbackView:(id)view;
- (void)configureFloatingDockViewController:(id)controller;
- (void)configureIconView:(id)view forIcon:(id)icon;
- (void)configureLibraryViewController:(id)controller;
- (void)contextMenuManager:(id)manager iconView:(id)view willUseContextMenuStyle:(id)style;
- (void)continueChangingSizeOfWidgetIcon:(id)icon toSizeClass:(id)class newIcon:(id)newIcon displayedIconView:(id)view listView:(id)listView resizedViewController:(id)controller undoPreparation:(id)preparation previousIconGridPath:(id)self0 currentIconGridPath:(id)self1 animated:(BOOL)self2 completionHandler:(id)self3;
- (void)dealloc;
- (void)didDeleteIconState:(id)state;
- (void)didSaveIconState:(id)state;
- (void)disableUserInteractionForWidgetDiscoverability;
- (void)dismissFolderPageManagementUI;
- (void)dismissIconContextMenu;
- (void)dismissIconShareSheets;
- (void)dismissLibraryForIconDragManager:(id)manager windowScene:(id)scene;
- (void)dismissModalInteractions;
- (void)dismissModalInteractionsImmediately;
- (void)dismissTodayOverlayForIconDragManager:(id)manager;
- (void)displayEnterEditingModeFeatureIntroductions;
- (void)displayFeatureIntroductionItemIfUnlocked:(id)unlocked;
- (void)displayPronouncedContainerViewVisibility:(BOOL)visibility isVertical:(BOOL)vertical;
- (void)editingDidChangeWithFeedbackBehavior:(id)behavior location:(CGPoint)location;
- (void)enableUserInteractionForWidgetDiscoverability;
- (void)ensureFixedIconLocationsIfNecessary;
- (void)enumerateAllIconImageCachesUsingBlock:(id)block;
- (void)enumerateAppPredictionViewControllersInIconLocationGroup:(id)group withOptions:(unint64_t)options usingBlock:(id)block;
- (void)enumerateAppPredictionViewControllersWithIconViewsInIconLocationGroup:(id)group withOptions:(unint64_t)options usingBlock:(id)block;
- (void)enumerateDisplayedIconViewsForIcon:(id)icon usingBlock:(id)block;
- (void)enumerateDisplayedIconViewsUsingBlock:(id)block;
- (void)enumerateEditableViewControllersUsingBlock:(id)block;
- (void)enumerateIconViewQueryableChildrenWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)enumerateIconViewsDisplayedInAppPredictionsInLocationGroup:(id)group withOptions:(unint64_t)options usingBlock:(id)block;
- (void)enumerateKnownIconViewsUsingBlock:(id)block;
- (void)enumeratePageStateObserversUsingBlock:(id)block;
- (void)enumerateViewsToUpdateDuringColorPickingUsingListViewBlock:(id)block iconViewBlock:(id)viewBlock;
- (void)finishInstallingIconAnimated:(BOOL)animated;
- (void)floatingDockViewController:(id)controller didChangeContentHeight:(double)height animated:(BOOL)animated;
- (void)floatingDockViewController:(id)controller wantsToBeginEditingAtScreenLocation:(CGPoint)location;
- (void)floatingDockViewController:(id)controller willCloseFolderController:(id)folderController;
- (void)floatingDockViewController:(id)controller willOpenFolderController:(id)folderController;
- (void)folder:(id)folder didAddIcons:(id)icons removedIcons:(id)removedIcons;
- (void)folder:(id)folder didReplaceIcon:(id)icon withIcon:(id)withIcon;
- (void)folder:(id)folder listHiddenDidChange:(id)change;
- (void)folderController:(id)controller willRemoveFakeStatusBar:(id)bar;
- (void)folderController:(id)controller willUseIconTransitionAnimator:(id)animator forOperation:(int64_t)operation onViewController:(id)viewController animated:(BOOL)animated;
- (void)folderControllerDidEndScrolling:(id)scrolling;
- (void)folderControllerShouldBeginEditing:(id)editing withHaptic:(BOOL)haptic;
- (void)folderControllerWillBeginScrolling:(id)scrolling;
- (void)folderControllerWillClose:(id)close;
- (void)folderControllerWillOpen:(id)open;
- (void)folderIconImageCache;
- (void)getListView:(id *)view folder:(id *)folder relativePath:(id *)path forIndexPath:(id)indexPath;
- (void)getStatistics:(SBHIconManagerStatistics *)statistics;
- (void)hasAnimatingFolderChanged;
- (void)hideSiriSuggestionOnWidgetFromStack:(id)stack;
- (void)hideSuggestedWidgetFromStack:(id)stack;
- (void)highlightIconView:(id)view;
- (void)icon:(id)icon touchEnded:(BOOL)ended;
- (void)iconCloseBoxTapped:(id)tapped;
- (void)iconDragManager:(id)manager didAddItemsToIconDragWithUniqueIdentifier:(id)identifier numberOfDraggedItems:(unint64_t)items;
- (void)iconDragManager:(id)manager didEndIconDragWithUniqueIdentifier:(id)identifier numberOfDraggedItems:(unint64_t)items;
- (void)iconDragManager:(id)manager didSpringLoadIconView:(id)view;
- (void)iconDragManager:(id)manager iconDropSessionDidEnter:(id)enter;
- (void)iconDragManager:(id)manager iconView:(id)view willAnimateDragLiftWithAnimator:(id)animator session:(id)session;
- (void)iconDragManager:(id)manager willBeginIconDragWithUniqueIdentifier:(id)identifier numberOfDraggedItems:(unint64_t)items;
- (void)iconDragManagerIconDraggingDidChange:(id)change;
- (void)iconModel:(id)model didAddIcon:(id)icon;
- (void)iconModel:(id)model launchIcon:(id)icon fromLocation:(id)location context:(id)context;
- (void)iconModel:(id)model willRemoveIcon:(id)icon;
- (void)iconSizeButtonTriggered;
- (void)iconTapped:(id)tapped modifierFlags:(int64_t)flags;
- (void)iconTouchBegan:(id)began;
- (void)iconView:(id)view configurationDidEndWithInteraction:(id)interaction;
- (void)iconView:(id)view configurationDidUpdateWithInteraction:(id)interaction;
- (void)iconView:(id)view configurationWillBeginWithInteraction:(id)interaction;
- (void)iconView:(id)view configurationWillEndWithInteraction:(id)interaction;
- (void)iconView:(id)view didChangeCustomImageViewController:(id)controller;
- (void)iconView:(id)view didDiscardCustomImageViewController:(id)controller;
- (void)iconView:(id)view dropSessionDidEnter:(id)enter;
- (void)iconView:(id)view dropSessionDidExit:(id)exit;
- (void)iconView:(id)view wantsResizeToGridSizeClass:(id)class completionHandler:(id)handler;
- (void)iconView:(id)view willRemoveIconAccessoryView:(id)accessoryView;
- (void)iconView:(id)view willRemoveIconImageView:(id)imageView;
- (void)iconView:(id)view willRemoveIconLabelAccessoryView:(id)accessoryView;
- (void)iconViewDidBeginTrackingPossibleResize:(id)resize context:(id)context;
- (void)iconViewDidEndTrackingPossibleResize:(id)resize context:(id)context;
- (void)informUsageMonitorOfTodayViewVisibilityChange:(id)change;
- (void)informUsageMonitorOfVisibleIconRectsForTodayViewController:(id)controller;
- (void)insertIcons:(id)icons intoWidgetStack:(id)stack;
- (void)invalidateOnboardingWidgetPreviewViewControllers;
- (void)launchFolderFromIconView:(id)view withActions:(id)actions modifierFlags:(int64_t)flags;
- (void)launchFromIconView:(id)view withActions:(id)actions modifierFlags:(int64_t)flags;
- (void)layoutIconListsWithAnimationType:(int64_t)type forceRelayout:(BOOL)relayout;
- (void)libraryViewController:(id)controller didAcceptDrop:(id)drop;
- (void)libraryViewController:(id)controller willDismissSearchController:(id)searchController;
- (void)libraryViewController:(id)controller willLaunchIcon:(id)icon fromLocation:(id)location;
- (void)libraryViewController:(id)controller willPresentSearchController:(id)searchController;
- (void)libraryViewControllerDidDismiss:(id)dismiss;
- (void)libraryViewControllerDidPresent:(id)present;
- (void)minimumHomeScreenScaleDidChange;
- (void)modalInteractionDidEnd:(id)end;
- (void)modalInteractionWillBegin:(id)begin;
- (void)moveIconToHiddenPage:(id)page;
- (void)multiplexingManager:(id)manager cachedRecentViewController:(id)controller forIdentifier:(id)identifier;
- (void)multiplexingManager:(id)manager willRemoveViewController:(id)controller forIdentifier:(id)identifier;
- (void)multiplexingWrapperViewControllerDidChangeGridAlignment:(id)alignment;
- (void)multiplexingWrapperViewControllerWillChangeGridAlignment:(id)alignment;
- (void)nestingViewController:(id)controller willPerformOperation:(int64_t)operation onViewController:(id)viewController withTransitionCoordinator:(id)coordinator;
- (void)noteFloatingDockWillAnimateChangeInHeight;
- (void)noteFloatingDockWillChangeHeight;
- (void)noteIconStateChangedExternally;
- (void)noteIconViewWillZoomDown:(id)down;
- (void)noteInterfaceOrientationChanged;
- (void)noteRootFolderDidMutate;
- (void)openFolderIcon:(id)icon location:(id)location animated:(BOOL)animated withCompletion:(id)completion;
- (void)organizeAllIconsAcrossPagesWithPageCount:(unint64_t)count;
- (void)organizeAllIconsIntoFoldersWithPageCount:(unint64_t)count;
- (void)performAfterAllIconTouchesFinishedUsingBlock:(id)block;
- (void)performAfterCachingWidgetIntentsUsingBlock:(id)block;
- (void)performAfterIconContextMenuDismissesUsingBlock:(id)block;
- (void)popExpandedIconFromLocation:(id)location interactionContext:(id)context animated:(BOOL)animated completionHandler:(id)handler;
- (void)popModalInteraction;
- (void)popToCurrentRootIconList;
- (void)popToCurrentRootIconListWhenPossible;
- (void)prepareModalWidgetIntroductionWidgetViewSnapshots;
- (void)presentLeadingCustomViewWithCompletion:(id)completion;
- (void)presentLibraryForIconDragManager:(id)manager windowScene:(id)scene;
- (void)presentTodayOverlay;
- (void)presentTodayOverlayForIconDragManager:(id)manager;
- (void)presentTrailingCustomViewWithCompletion:(id)completion;
- (void)prototypeSetDefaultSecondPageWidgetIcons;
- (void)purgeUnnecessaryAppearanceIconImageData;
- (void)pushExpandedIcon:(id)icon location:(id)location context:(id)context animated:(BOOL)animated completionHandler:(id)handler;
- (void)pushExpandedIcon:(id)icon location:(id)location context:(id)context forcePoppingPriorExpandedIcon:(BOOL)expandedIcon animated:(BOOL)animated completionHandler:(id)handler;
- (void)randomizeAllIconsAcrossPagesWithPageCount:(unint64_t)count;
- (void)recycleIconView:(id)view;
- (void)refreshAppPredictionBadges;
- (void)relayout;
- (void)removeAllIconAnimations;
- (void)removeAllWidgetIcons;
- (void)removeFileStackWithURL:(id)l;
- (void)removeFirstWidgetFromRootFolderListAtIndex:(unint64_t)index;
- (void)removeFolderPresentationObserver:(id)observer;
- (void)removeIcon:(id)icon options:(unint64_t)options completion:(id)completion;
- (void)removeReasonToIgnoreUserPreferenceForAddingNewIconsToHomeScreen:(id)screen;
- (void)removeWidgetDiscoverabilityContainerViewsAndPopoverWhenNeeded:(BOOL)needed;
- (void)removeWidgetIconsFromHomeScreen;
- (void)replaceAppIcon:(id)icon withWidgetOfSize:(id)size;
- (void)replaceApplicationPlaceholderWithApplication:(id)application completionHandler:(id)handler;
- (void)replaceFolderIcon:(id)icon byContainedIcon:(id)containedIcon animated:(BOOL)animated;
- (void)replaceHomescreenWithWidgets;
- (void)replaceWidgetIconWithAppIcon:(id)icon;
- (void)resetAllIconImageCaches;
- (void)resetRootIconLists;
- (void)resizeGestureHandler:(id)handler didFinishWithGridSizeClass:(id)class;
- (void)revealIcon:(id)icon animated:(BOOL)animated completionHandler:(id)handler;
- (void)rootFolder:(id)folder wantsToDoPageHidingEducationWithCompletion:(id)completion;
- (void)rootFolderController:(id)controller didDismissPageManagementWithLayoutManager:(id)manager context:(id)context;
- (void)rootFolderController:(id)controller didDismissWidgetEditingViewController:(id)viewController;
- (void)rootFolderController:(id)controller didEndOverscrollOnFirstPageWithVelocity:(double)velocity translation:(double)translation;
- (void)rootFolderController:(id)controller didEndOverscrollOnLastPageWithVelocity:(double)velocity translation:(double)translation;
- (void)rootFolderController:(id)controller didOverscrollOnFirstPageByAmount:(double)amount;
- (void)rootFolderController:(id)controller didOverscrollOnLastPageByAmount:(double)amount;
- (void)rootFolderController:(id)controller didPresentWidgetEditingViewController:(id)viewController;
- (void)rootFolderController:(id)controller handleInsertionForWidgetIcon:(id)icon withReferenceIconView:(id)view fromPresenter:(id)presenter dismissViewControllerHandler:(id)handler;
- (void)rootFolderController:(id)controller noteDragItemWasConsumedExternallyForDropSession:(id)session;
- (void)rootFolderController:(id)controller prepareAddSheetViewController:(id)viewController;
- (void)rootFolderController:(id)controller setSuppressesEditingStateForExternalDockListViews:(BOOL)views;
- (void)rootFolderController:(id)controller statusBarInsetsDidChange:(UIEdgeInsets)change;
- (void)rootFolderController:(id)controller viewDidTransitionToSize:(CGSize)size;
- (void)rootFolderController:(id)controller wantsToAdjustLeadingCustomContentForEdgeBounceForScrollOffset:(CGPoint)offset;
- (void)rootFolderController:(id)controller willDismissPageManagementUsingAnimator:(id)animator context:(id)context;
- (void)rootFolderController:(id)controller willDismissWidgetEditingViewController:(id)viewController;
- (void)rootFolderController:(id)controller willPresentAddSheetViewController:(id)viewController;
- (void)rootFolderController:(id)controller willPresentPageManagementWithLayoutManager:(id)manager animator:(id)animator context:(id)context;
- (void)rootFolderController:(id)controller willPresentWidgetEditingViewController:(id)viewController;
- (void)rootFolderController:(id)controller willUsePropertyAnimator:(id)animator toTransitionToState:(int64_t)state;
- (void)rootFolderController:(id)controller willUseTransitionContext:(id)context toTransitionToState:(int64_t)state;
- (void)rootFolderControllerDidAcceptWidgetIntroduction:(id)introduction;
- (void)rootFolderControllerDidEditWidgetIntroduction:(id)introduction;
- (void)rootFolderControllerDidUndoWidgetIntroduction:(id)introduction;
- (void)rootFolderControllerViewDidDisappear:(id)disappear;
- (void)rootFolderControllerViewWillAppear:(id)appear;
- (void)rootFolderControllerWantsHomeScreenWallpaperViewControllerPresented:(id)presented;
- (void)rootFolderPageStateProvider:(id)provider didContinueTransitionToState:(int64_t)state progress:(double)progress;
- (void)rootFolderPageStateProvider:(id)provider didEndTransitionFromState:(int64_t)state toState:(int64_t)toState successfully:(BOOL)successfully;
- (void)rootFolderPageStateProvider:(id)provider willBeginTransitionToState:(int64_t)state animated:(BOOL)animated interactive:(BOOL)interactive;
- (void)rootFolderPageStateProvider:(id)provider willEndTransitionToState:(int64_t)state successfully:(BOOL)successfully;
- (void)runDownloadingIconTest;
- (void)runRemoveAndRestoreIconTest;
- (void)saveGridPath:(id)path asPriorLocationBeforeResizeForIcon:(id)icon;
- (void)saveOriginalIconStateForWidgetDiscoverability;
- (void)scrollToDefaultWidgets;
- (void)scrollToIconListContainingIcon:(id)icon animate:(BOOL)animate;
- (void)setAnimatingFolderCreation:(BOOL)creation;
- (void)setAnimatingFolderOpeningOrClosing:(BOOL)closing;
- (void)setContentVisibility:(unint64_t)visibility;
- (void)setEditing:(BOOL)editing forIconLocation:(id)location;
- (void)setEditing:(BOOL)editing fromIconListView:(id)view;
- (void)setEditing:(BOOL)editing fromIconView:(id)view;
- (void)setEditing:(BOOL)editing withFeedbackBehavior:(id)behavior location:(CGPoint)location;
- (void)setFloatingDockViewController:(id)controller;
- (void)setIconModel:(id)model;
- (void)setIconStylePickerVisible:(BOOL)visible;
- (void)setIconToReveal:(id)reveal revealingPrevious:(BOOL)previous;
- (void)setIdleModeText:(id)text;
- (void)setLeadingCustomViewControllers:(id)controllers;
- (void)setLegibilitySettings:(id)settings;
- (void)setListLayoutProvider:(id)provider animated:(BOOL)animated;
- (void)setListLayoutProviderLayoutOptions:(unint64_t)options animated:(BOOL)animated;
- (void)setMainDisplayLibraryViewVisibilityTransitioning:(BOOL)transitioning;
- (void)setMainDisplayLibraryViewVisible:(BOOL)visible;
- (void)setMainDisplayLibraryViewVisible:(BOOL)visible libraryViewTransitioning:(BOOL)transitioning;
- (void)setOverlayCoverSheetTodayViewController:(id)controller;
- (void)setOverlayCoverSheetTodayViewVisible:(BOOL)visible;
- (void)setOverlayLibraryViewController:(id)controller;
- (void)setOverlayTodayViewController:(id)controller;
- (void)setOverlayTodayViewVisibilityTransitioning:(BOOL)transitioning;
- (void)setOverlayTodayViewVisible:(BOOL)visible;
- (void)setOverlayTodayViewVisible:(BOOL)visible todayViewTransitioning:(BOOL)transitioning;
- (void)setPrefersFlatImageLayers:(BOOL)layers;
- (void)setPreviewInteractingIconView:(id)view;
- (void)setRootFolder:(id)folder;
- (void)setRootFolderController:(id)controller;
- (void)setTemporaryIntent:(id)intent forIconWithIdentifier:(id)identifier widgetUniqueIdentifier:(id)uniqueIdentifier;
- (void)setTrailingCustomViewControllers:(id)controllers;
- (void)setUsageMonitoringEnabled:(BOOL)enabled;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)setupHomeScreenForWidgetScrollPerformanceTest;
- (void)shuffleWidgetStackForTestRecipe;
- (void)stylePickerViewController:(id)controller didUpdateDesiredDetent:(double)detent;
- (void)stylePickerViewController:(id)controller didUpdateHomeScreenConfiguration:(id)configuration;
- (void)stylePickerViewControllerDidFinish:(id)finish;
- (void)tearDownAndResetRootIconLists;
- (void)todayViewController:(id)controller didChangePresentationProgress:(double)progress newPresentationProgress:(double)presentationProgress fromLeading:(BOOL)leading;
- (void)toggleHomeScreenWallpaperDim:(id)dim;
- (void)toggleSuggestedWidgetInStackForTestRecipe;
- (void)tryScrollToIconToRevealAnimated:(BOOL)animated;
- (void)undoChangeWithPreparation:(id)preparation;
- (void)undoDefaultTVWidget;
- (void)undoDefaultWidgets:(BOOL)widgets;
- (void)undoPreparation:(id)preparation registerWithUndoManager:(id)manager actionName:(id)name observer:(id)observer;
- (void)uninstallIcon:(id)icon animate:(BOOL)animate completion:(id)completion;
- (void)unscatterAnimated:(BOOL)animated afterDelay:(double)delay withCompletion:(id)completion;
- (void)updateAppPredictionViewControllersWithListLayoutProvider:(id)provider oldListLayoutProvider:(id)layoutProvider animated:(BOOL)animated;
- (void)updateIconViewAccessoryVisibility;
- (void)updateLargeIconsEnabledForAppPredictionViewController:(id)controller animated:(BOOL)animated;
- (void)updatePronouncedContainerViewVisibility:(BOOL)visibility vertical:(BOOL)vertical;
- (void)updateVisibleIconsToShowLeafIcons:(id)icons hideLeafIcons:(id)leafIcons;
- (void)updateWidgetDiscoverabilityUserPreferencesByDeletingWidget:(id)widget;
- (void)updateWidgetViewControllersWithCustomDisplayConfiguration:(id)configuration;
- (void)updateWidgetViewControllersWithRenderScheme:(id)scheme;
- (void)widgetHostViewController:(id)controller requestsLaunch:(id)launch;
- (void)widgetHostViewControllerUsesSystemBackgroundMaterialDidChange:(id)change;
- (void)widgetStackViewController:(id)controller didActivateDataSource:(id)source fromUserInteraction:(BOOL)interaction;
- (void)widgetStackViewController:(id)controller didFinishUsingBackgroundView:(id)view;
- (void)widgetStackViewController:(id)controller didRemoveViewController:(id)viewController;
- (void)widgetStackViewControllerDidFlashPageControl:(id)control;
@end

@implementation SBHIconManager

- (BOOL)isShowingPullDownSearch
{
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  isPullDownSearchVisible = [rootFolderController isPullDownSearchVisible];

  return isPullDownSearchVisible;
}

- (unint64_t)effectiveRootFolderControllerContentVisibility
{
  contentVisibility = [(SBHIconManager *)self contentVisibility];
  if (SBHContentVisibilityIsVisible(contentVisibility))
  {
    if ([(SBHIconManager *)self isOverlayTodayViewVisible]&& ![(SBHIconManager *)self isOverlayTodayViewVisibilityTransitioning])
    {
      contentVisibility = 1;
    }

    if ([(SBHIconManager *)self isMainDisplayLibraryViewVisible])
    {
      if (![(SBHIconManager *)self isMainDisplayLibraryViewVisibilityTransitioning])
      {
        trailingLibraryViewController = [(SBHIconManager *)self trailingLibraryViewController];

        if (!trailingLibraryViewController)
        {
          return 1;
        }
      }
    }
  }

  return contentVisibility;
}

- (BOOL)isShowingModalInteraction
{
  currentConfiguringIconView = [(SBHIconManager *)self currentConfiguringIconView];

  if (currentConfiguringIconView)
  {
    return 1;
  }

  currentPersonDetailInteraction = [(SBHIconManager *)self currentPersonDetailInteraction];

  if (currentPersonDetailInteraction)
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
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate libraryViewControllersForIconManager:self];
  }

  else
  {
    v4 = 0;
  }

  overlayLibraryViewController = [(SBHIconManager *)self overlayLibraryViewController];
  if (overlayLibraryViewController && ([v4 containsObject:overlayLibraryViewController] & 1) == 0)
  {
    if (v4)
    {
      v6 = [v4 arrayByAddingObject:overlayLibraryViewController];

      v4 = v6;
    }

    else
    {
      v8[0] = overlayLibraryViewController;
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
  iconShareSheetManager = [(SBHIconManager *)self iconShareSheetManager];
  areAnyAppIconShareSheetsShowing = [iconShareSheetManager areAnyAppIconShareSheetsShowing];

  return areAnyAppIconShareSheetsShowing;
}

- (id)leadingTodayViewController
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  leadingCustomViewControllers = [(SBHIconManager *)self leadingCustomViewControllers];
  v3 = [leadingCustomViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
        objc_enumerationMutation(leadingCustomViewControllers);
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
        v4 = [leadingCustomViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
    trailingLibraryViewController = [(SBHIconManager *)self trailingLibraryViewController];
    v2 = (trailingLibraryViewController != 0) & [(SBHIconManager *)self isShowingOrTransitioningToTrailingCustomView];
  }

  return v2;
}

- (id)_currentFolderController
{
  openedFolderController = [(SBHIconManager *)self openedFolderController];
  v4 = openedFolderController;
  if (openedFolderController)
  {
    rootFolderController = openedFolderController;
  }

  else
  {
    rootFolderController = [(SBHIconManager *)self rootFolderController];
  }

  v6 = rootFolderController;

  return v6;
}

- (SBFolderController)openedFolderController
{
  floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
  presentedFolderController = [floatingDockViewController presentedFolderController];

  if (!presentedFolderController)
  {
    rootFolderController = [(SBHIconManager *)self rootFolderController];
    presentedFolderController = [rootFolderController deepestFolderController];
  }

  return presentedFolderController;
}

- (BOOL)isShowingOrTransitioningToTrailingCustomView
{
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  isTrailingCustomViewVisibleOrTransitionDestination = [rootFolderController isTrailingCustomViewVisibleOrTransitionDestination];

  return isTrailingCustomViewVisibleOrTransitionDestination;
}

- (id)trailingLibraryViewController
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  trailingCustomViewControllers = [(SBHIconManager *)self trailingCustomViewControllers];
  v3 = [trailingCustomViewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(trailingCustomViewControllers);
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

      v3 = [trailingCustomViewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  isOverlayTodayViewVisible = [(SBHIconManager *)self isOverlayTodayViewVisible];
  isCustomLeadingViewTodayView = [(SBHIconManager *)self isCustomLeadingViewTodayView];
  if (isCustomLeadingViewTodayView)
  {
    LOBYTE(isCustomLeadingViewTodayView) = [(SBHIconManager *)self isShowingLeadingCustomView];
  }

  return isOverlayTodayViewVisible || isCustomLeadingViewTodayView;
}

- (void)clearHighlightedIcon
{
  v7 = *MEMORY[0x1E69E9840];
  highlightedIconView = [(SBHIconManager *)self highlightedIconView];
  if (highlightedIconView)
  {
    v4 = SBLogIcon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = highlightedIconView;
      _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_INFO, "Clearing highlight from icon view: %@", &v5, 0xCu);
    }

    [highlightedIconView setHighlighted:0];
    [(SBHIconManager *)self setHighlightedIconView:0];
  }
}

- (BOOL)isCustomLeadingViewTodayView
{
  leadingTodayViewController = [(SBHIconManager *)self leadingTodayViewController];
  v3 = leadingTodayViewController != 0;

  return v3;
}

- (BOOL)_isShowingSearchableLeadingCustomView
{
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  isOnLeadingCustomPage = [rootFolderController isOnLeadingCustomPage];

  return isOnLeadingCustomPage;
}

- (BOOL)isPerformingCancelledExpandTransition
{
  isTransitioning = [(SBHIconManager *)self isTransitioning];
  if (isTransitioning)
  {
    isTransitioning = [(SBHomeScreenIconTransitionAnimator *)self->_currentTransitionAnimator isCancelled];
    if (isTransitioning)
    {
      LOBYTE(isTransitioning) = [(SBHomeScreenIconTransitionAnimator *)self->_currentTransitionAnimator currentOperation]== 1;
    }
  }

  return isTransitioning;
}

- (BOOL)isTransitioning
{
  currentTransitionAnimator = [(SBHIconManager *)self currentTransitionAnimator];
  v3 = currentTransitionAnimator != 0;

  return v3;
}

- (BOOL)hasOpenFolder
{
  floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
  if ([floatingDockViewController isPresentingFolder])
  {
    v4 = 1;
  }

  else if ([(SBHIconManager *)self hasRootFolderController])
  {
    rootViewController = [(SBHIconManager *)self rootViewController];
    deepestFolderController = [rootViewController deepestFolderController];

    if (deepestFolderController)
    {
      v4 = 1;
    }

    else
    {
      rootFolderController = [(SBHIconManager *)self rootFolderController];
      deepestFolderController2 = [rootFolderController deepestFolderController];

      if (deepestFolderController2)
      {
        v4 = 1;
      }

      else
      {
        _currentFolderController = [(SBHIconManager *)self _currentFolderController];
        deepestFolderController3 = [_currentFolderController deepestFolderController];
        v4 = deepestFolderController3 != 0;
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
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  v3 = rootFolderController != 0;

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
    leadingTodayViewController = [(SBHIconManager *)self leadingTodayViewController];
    v4 = leadingTodayViewController;
    if (leadingTodayViewController)
    {
      overlayTodayViewController = leadingTodayViewController;
    }

    else
    {
      overlayTodayViewController = [(SBHIconManager *)self overlayTodayViewController];
    }

    v6 = overlayTodayViewController;
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
    rootViewController = [(SBHIconManager *)self rootViewController];
    view = [rootViewController view];
    [(SBHIconManager *)self configureFeedbackView:view];

    iconEditingFeedbackBehavior = self->_iconEditingFeedbackBehavior;
  }

  return iconEditingFeedbackBehavior;
}

- (BOOL)_isShowingPullDownSearchOrTransitioning
{
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  if ([rootFolderController isPullDownSearchVisibleOrTransitioning])
  {
    rootFolderController2 = [(SBHIconManager *)self rootFolderController];
    v5 = [rootFolderController2 isOnLeadingCustomPage] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)_isShowingLeadingCustomViewSearchOrTransitioning
{
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  isLeadingCustomViewSearchVisibleOrTransitioning = [rootFolderController isLeadingCustomViewSearchVisibleOrTransitioning];

  return isLeadingCustomViewSearchVisibleOrTransitioning;
}

- (BOOL)isFolderScrolling
{
  openedFolderController = [(SBHIconManager *)self openedFolderController];
  isScrolling = [openedFolderController isScrolling];

  return isScrolling;
}

- (BOOL)isRootFolderScrolling
{
  rootViewController = [(SBHIconManager *)self rootViewController];
  isScrolling = [rootViewController isScrolling];

  return isScrolling;
}

- (void)cancelAllFolderScrolling
{
  if ([(SBHIconManager *)self isScrolling])
  {
    rootViewController = [(SBHIconManager *)self rootViewController];
    [rootViewController cancelScrolling];
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
    rootFolderController = [(SBHIconManager *)self rootFolderController];
    traitCollection = [rootFolderController traitCollection];
    [traitCollection displayScale];
    v9 = v8;

    traitCollection2 = [rootFolderController traitCollection];
    preferredContentSizeCategory = [traitCollection2 preferredContentSizeCategory];

    listLayoutProvider = [(SBHIconManager *)self listLayoutProvider];
    v13 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationRoot"];

    [(objc_class *)[(SBHIconManager *)self iconViewClass] maxLabelSizeForListLayout:v13 contentSizeCategory:preferredContentSizeCategory options:0];
    v16 = [[SBIconLabelImageCache alloc] initWithMaxLabelSize:v14 scale:v15, v9];
    v17 = self->_labelImageCache;
    self->_labelImageCache = v16;

    v18 = self->_labelImageCache;
    legibilitySettings = [(SBHIconManager *)self legibilitySettings];
    [(SBIconLabelImageCache *)v18 setLegibilitySettings:legibilitySettings];

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
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  isPullDownSearchVisibleOrTransitioningToVisible = [rootFolderController isPullDownSearchVisibleOrTransitioningToVisible];

  return isPullDownSearchVisibleOrTransitioningToVisible;
}

- (BOOL)isPerformingExpandTransition
{
  if (![(SBHIconManager *)self isTransitioning])
  {
    return 0;
  }

  currentTransitionAnimator = [(SBHIconManager *)self currentTransitionAnimator];
  v4 = [currentTransitionAnimator currentOperation] == 0;

  return v4;
}

- (id)iconLocationForListsWithNonDefaultSizedIcons
{
  listLayoutProvider = [(SBHIconManager *)self listLayoutProvider];
  defaultIconLocationForListsWithNonDefaultSizedIcons = [objc_opt_class() defaultIconLocationForListsWithNonDefaultSizedIcons];
  v4 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationRoot"];
  v5 = [listLayoutProvider layoutForIconLocation:defaultIconLocationForListsWithNonDefaultSizedIcons];
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
  v25 = defaultIconLocationForListsWithNonDefaultSizedIcons;
  if (v24)
  {
    if (v13 == v21 && v15 == v23 && v9 == v17 && v11 == v19)
    {
      v25 = @"SBIconLocationRoot";
    }

    else
    {
      v25 = defaultIconLocationForListsWithNonDefaultSizedIcons;
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
  iconDragManager = [(SBHIconManager *)self iconDragManager];
  isIconDragging = [iconDragManager isIconDragging];

  return isIconDragging;
}

- (BOOL)isTransitioningHomeScreenState
{
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  isTransitioningPageState = [rootFolderController isTransitioningPageState];

  return isTransitioningPageState;
}

- (id)iconViewMap
{
  iconViewMap = self->_iconViewMap;
  if (!iconViewMap)
  {
    v4 = [[SBHReusableViewMap alloc] initWithDelegate:self];
    v5 = self->_iconViewMap;
    self->_iconViewMap = v4;

    listLayoutProvider = [(SBHIconManager *)self listLayoutProvider];
    v7 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationRoot"];

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
  iconDragManager = [(SBHIconManager *)self iconDragManager];
  isTrackingMultipleItemIconDrags = [iconDragManager isTrackingMultipleItemIconDrags];

  return isTrackingMultipleItemIconDrags ^ 1;
}

- (BOOL)isEditingAllowed
{
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate isEditingAllowedForIconManager:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)gridSizeClassDomain
{
  iconModel = [(SBHIconManager *)self iconModel];
  gridSizeClassDomain = [iconModel gridSizeClassDomain];

  return gridSizeClassDomain;
}

- (id)_effectiveWidgetMultiplexingManager
{
  if (!self->_widgetMultiplexingManagersForLayoutOptions)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    widgetMultiplexingManagersForLayoutOptions = self->_widgetMultiplexingManagersForLayoutOptions;
    self->_widgetMultiplexingManagersForLayoutOptions = dictionary;
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
    systemDefaultMetricsSpecification = [(SBHWidgetMetricsProvider *)self->_widgetMetricsProvider systemDefaultMetricsSpecification];
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
    editingEndTimer = [(SBHIconManager *)self editingEndTimer];
    [editingEndTimer invalidate];

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
  rootViewController = [(SBHIconManager *)self rootViewController];
  [rootViewController noteUserIsInteractingWithIcons];

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
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  isLeadingCustomViewVisibleOrTransitionDestination = [rootFolderController isLeadingCustomViewVisibleOrTransitionDestination];

  return isLeadingCustomViewVisibleOrTransitionDestination;
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
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      v27 = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
    }

    v2[488] = v27;
    v2[489] = 1;
    v30 = +[SBHHomeScreenDomain rootSettings];
    v31 = *(v2 + 95);
    *(v2 + 95) = v30;

    [*(v2 + 95) addKeyObserver:v2];
    rootFolderSettings = [*(v2 + 95) rootFolderSettings];
    v33 = *(v2 + 96);
    *(v2 + 96) = rootFolderSettings;

    [*(v2 + 96) addKeyObserver:v2];
    iconSettings = [*(v2 + 95) iconSettings];
    badgeParallaxSettings = [iconSettings badgeParallaxSettings];
    v36 = *(v2 + 104);
    *(v2 + 104) = badgeParallaxSettings;

    [*(v2 + 104) addKeyObserver:v2];
    v37 = +[SBHHomeScreenDomain rootSettings];
    widgetIntroductionSettings = [v37 widgetIntroductionSettings];
    v39 = *(v2 + 106);
    *(v2 + 106) = widgetIntroductionSettings;

    [*(v2 + 106) addKeyObserver:v2];
    objc_storeStrong(v2 + 125, @"SBHIconGridSizeClassSmall");
    objc_storeStrong(v2 + 127, @"SBHIconGridSizeClassSmall");
    legibilityLabelSettings = [*(v2 + 95) legibilityLabelSettings];
    v41 = *(v2 + 107);
    *(v2 + 107) = legibilityLabelSettings;

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

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__reduceTransparencyStatusDidChange_ name:*MEMORY[0x1E69DD920] object:0];
    [defaultCenter addObserver:v2 selector:sel__sizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
    [v2 _setupStateCaptureHandleIfNeeded];
    v46 = objc_alloc_init(SBHWidgetIntroductionFeatureIntroductionItem);
    v47 = *(v2 + 130);
    *(v2 + 130) = v46;

    [*(v2 + 130) setIconManager:v2];
    v48 = objc_alloc_init(SBHFeatureIntroductionManager);
    v49 = *(v2 + 78);
    *(v2 + 78) = v48;

    [*(v2 + 78) addFeatureIntroductionItem:*(v2 + 130) atLocations:14];
    subjectMonitorRegistry = [MEMORY[0x1E698B0F0] subjectMonitorRegistry];
    v51 = [subjectMonitorRegistry addMonitor:v2 subjectMask:1 subscriptionOptions:1];
    objc_storeWeak(v2 + 87, v51);

    v52 = objc_alloc_init(SBHIconViewApplicationShortcutsContextMenuProvider);
    [(SBHIconViewApplicationShortcutsContextMenuProvider *)v52 setDelegate:v2];
    v53 = [SBHIconViewContextMenuManager alloc];
    v70[0] = v52;
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:1];
    v55 = [(SBHIconViewContextMenuManager *)v53 initWithContextMenuActionProviders:v54 previewProviders:0];
    v56 = *(v2 + 88);
    *(v2 + 88) = v55;

    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  searchGesture = [rootFolderController searchGesture];

  return searchGesture;
}

- (int64_t)interfaceOrientation
{
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    orientation = [delegate interfaceOrientationForIconManager:self];
  }

  else
  {
    rootViewController = [(SBHIconManager *)self rootViewController];
    v6 = rootViewController;
    if (rootViewController)
    {
      orientation = [rootViewController orientation];
    }

    else
    {
      orientation = 1;
    }
  }

  return orientation;
}

- (unint64_t)allowedInterfaceOrientations
{
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate allowedInterfaceOrientationsForIconManager:self];
  }

  else
  {
    v4 = 30;
  }

  return v4;
}

- (unint64_t)possibleInterfaceOrientations
{
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate possibleInterfaceOrientationsForIconManager:self];
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
    rootFolderController = [(SBHIconManager *)self rootFolderController];
    interfaceOrientation = [(SBHIconManager *)self interfaceOrientation];
    [rootFolderController setOrientation:interfaceOrientation];
    folderView = [rootFolderController folderView];
    [folderView setOrientation:interfaceOrientation];
  }
}

- (id)primaryWindowScene
{
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  view = [rootFolderController view];
  window = [view window];

  windowScene = [window windowScene];
  if (!windowScene)
  {
    delegate = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      windowScene = [delegate primaryWindowSceneForIconManager:self];
    }

    else
    {
      windowScene = 0;
    }
  }

  return windowScene;
}

- (BOOL)hasRootViewController
{
  rootViewController = [(SBHIconManager *)self rootViewController];
  v3 = rootViewController != 0;

  return v3;
}

- (void)setIconModel:(id)model
{
  modelCopy = model;
  if (self->_iconModel != modelCopy)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"SBIconModelWillLayoutIconStateNotification" object:self->_iconModel];
    [defaultCenter removeObserver:self name:@"SBIconModelDidLayoutIconStateNotification" object:self->_iconModel];
    [defaultCenter removeObserver:self name:@"SBIconModelVisibilityDidChangeNotification" object:self->_iconModel];
    [(SBHIconManager *)self _endObservingLeafIconsInModel:self->_iconModel];
    rootFolder = [(SBHIconModel *)self->_iconModel rootFolder];
    [rootFolder removeFolderObserver:self];

    delegate = [(SBHIconModel *)self->_iconModel delegate];

    if (delegate == self)
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

    objc_storeStrong(&self->_iconModel, model);
    if ([(SBHIconManager *)self ownsIconModel])
    {
      [(SBHIconModel *)self->_iconModel setDelegate:self];
    }

    [defaultCenter addObserver:self selector:sel__iconModelWillLayout_ name:@"SBIconModelWillLayoutIconStateNotification" object:self->_iconModel];
    [defaultCenter addObserver:self selector:sel__iconModelDidLayout_ name:@"SBIconModelDidLayoutIconStateNotification" object:self->_iconModel];
    [defaultCenter addObserver:self selector:sel__iconVisibilityChanged_ name:@"SBIconModelVisibilityDidChangeNotification" object:self->_iconModel];
    [(SBHIconModel *)self->_iconModel layoutIfNeeded];
    rootFolder2 = [(SBHIconModel *)self->_iconModel rootFolder];
    [(SBHIconManager *)self setRootFolder:rootFolder2];
    v15 = [(SBHIconManager *)self _rootFolderForRootViewControllerForRootFolder:rootFolder2];
    rootViewController = [(SBHIconManager *)self rootViewController];
    [rootViewController setFolder:v15];

    [defaultCenter postNotificationName:@"SBHIconManagerIconModelDidChange" object:self];
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
    [v18 setIconModel:modelCopy];

    floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
    dock = [rootFolder2 dock];
    [floatingDockViewController setDockListModel:dock];
    dockUtilities = [rootFolder2 dockUtilities];
    [floatingDockViewController setDockUtilitiesListModel:dockUtilities];
  }
}

- (void)setRootFolder:(id)folder
{
  folderCopy = folder;
  rootFolder = self->_rootFolder;
  if (rootFolder != folderCopy)
  {
    v13 = folderCopy;
    p_rootFolder = &self->_rootFolder;
    delegate = [(SBRootFolder *)rootFolder delegate];

    if (delegate == self)
    {
      [(SBRootFolder *)*p_rootFolder setDelegate:0];
    }

    [(SBFolder *)self->_rootFolder removeFolderObserver:self];
    badgeBehaviorProvider = [(SBFolder *)self->_rootFolder badgeBehaviorProvider];

    if (badgeBehaviorProvider == self)
    {
      [(SBFolder *)*p_rootFolder setBadgeBehaviorProvider:0];
    }

    objc_storeStrong(&self->_rootFolder, folder);
    if ([(SBHIconManager *)self ownsIconModel])
    {
      [(SBRootFolder *)self->_rootFolder setDelegate:self];
      [(SBFolder *)self->_rootFolder setBadgeBehaviorProvider:self];
    }

    [(SBFolder *)self->_rootFolder addFolderObserver:self];
    dock = [(SBRootFolder *)v13 dock];
    floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
    [floatingDockViewController setDockListModel:dock];
    dockUtilities = [(SBRootFolder *)v13 dockUtilities];
    [floatingDockViewController setDockUtilitiesListModel:dockUtilities];

    folderCopy = v13;
  }

  MEMORY[0x1EEE66BB8](rootFolder, folderCopy);
}

- (BOOL)relayout
{
  hasAnimatingFolder = [(SBHIconManager *)self hasAnimatingFolder];
  if (hasAnimatingFolder)
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
    iconModel = [(SBHIconManager *)self iconModel];
    [iconModel layout];

    [(SBHIconManager *)self setNeedsRelayout:0];
  }

  return !hasAnimatingFolder;
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
  rootViewController = [(SBHIconManager *)self rootViewController];
  traitCollection = [rootViewController traitCollection];
  sbh_iconImageStyleConfiguration = [traitCollection sbh_iconImageStyleConfiguration];
  if (sbh_iconImageStyleConfiguration)
  {
    goto LABEL_5;
  }

  _fetchCurrentStyleConfiguration = [(SBHIconManager *)self _fetchCurrentStyleConfiguration];
  if (!_fetchCurrentStyleConfiguration || (v7 = _fetchCurrentStyleConfiguration, [SBHIconImageStyleConfiguration styleConfigurationWithHomeScreenConfiguration:_fetchCurrentStyleConfiguration], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    sbh_iconImageStyleConfiguration = +[SBHIconImageStyleConfiguration defaultStyleConfiguration];
LABEL_5:
    v8 = sbh_iconImageStyleConfiguration;
  }

  return v8;
}

- (id)cachingImageAppearances
{
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  rootViewController = [(SBHIconManager *)self rootViewController];
  traitCollection = [rootViewController traitCollection];
  if (traitCollection)
  {
    v6 = traitCollection;
  }

  else
  {
    v7 = MEMORY[0x1E69DD1B8];
    _fetchCurrentStyleConfiguration = [(SBHIconManager *)self _fetchCurrentStyleConfiguration];
    v6 = [v7 sbh_traitCollectionWithHomeScreenStyleConfiguration:_fetchCurrentStyleConfiguration];

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
  cachingImageAppearances = [(SBHIconManager *)self cachingImageAppearances];
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__SBHIconManager_prioritizedCachingImageAppearances__block_invoke;
  v6[3] = &unk_1E808FC08;
  v4 = v3;
  v7 = v4;
  [cachingImageAppearances enumerateKeysAndObjectsUsingBlock:v6];

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

- (id)prioritizedCachingImageAppearancesForIconImageStyleConfiguration:(id)configuration priority:(int64_t)priority
{
  v6 = MEMORY[0x1E695DF90];
  configurationCopy = configuration;
  v8 = [[v6 alloc] initWithCapacity:2];
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  if (!rootFolderController)
  {
    rootFolderController = [(SBHIconManager *)self primaryWindowScene];
  }

  traitCollection = [rootFolderController traitCollection];
  v11 = traitCollection;
  if (traitCollection)
  {
    userInterfaceStyle = [traitCollection userInterfaceStyle];
  }

  else
  {
    userInterfaceStyle = 1;
  }

  v13 = [configurationCopy iconImageAppearanceWithUserInterfaceStyle:userInterfaceStyle];
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:priority];
  [v8 setObject:v14 forKey:v13];

  variant = [configurationCopy variant];
  if (variant == 2)
  {
    appearanceType = [v13 appearanceType];
    if (appearanceType <= 2)
    {
      if (appearanceType)
      {
        if (appearanceType == 1)
        {
          v17 = +[SBHIconImageAppearance lightAppearance];
        }

        else
        {
          if (appearanceType != 2)
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

    switch(appearanceType)
    {
      case 3:
        v17 = +[SBHIconImageAppearance clearLightAppearance];
        goto LABEL_19;
      case 4:
        tintColor = [v13 tintColor];
        v19 = [SBHIconImageAppearance tintedDarkAppearanceWithTintColor:tintColor];
        break;
      case 5:
        tintColor = [v13 tintColor];
        v19 = [SBHIconImageAppearance tintedLightAppearanceWithTintColor:tintColor];
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

- (id)highPriorityCachingImageAppearancesForIconImageStyleConfiguration:(id)configuration
{
  v12[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  if (!rootFolderController)
  {
    rootFolderController = [(SBHIconManager *)self primaryWindowScene];
  }

  traitCollection = [rootFolderController traitCollection];
  v7 = traitCollection;
  if (traitCollection)
  {
    userInterfaceStyle = [traitCollection userInterfaceStyle];
  }

  else
  {
    userInterfaceStyle = 1;
  }

  v9 = [configurationCopy iconImageAppearanceWithUserInterfaceStyle:userInterfaceStyle];
  v12[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

  return v10;
}

- (id)lowPriorityCachingImageAppearancesForIconImageStyleConfiguration:(id)configuration
{
  v18[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  if (!rootFolderController)
  {
    rootFolderController = [(SBHIconManager *)self primaryWindowScene];
  }

  traitCollection = [rootFolderController traitCollection];
  v7 = traitCollection;
  if (traitCollection)
  {
    userInterfaceStyle = [traitCollection userInterfaceStyle];
  }

  else
  {
    userInterfaceStyle = 1;
  }

  v9 = [configurationCopy iconImageAppearanceWithUserInterfaceStyle:userInterfaceStyle];
  variant = [configurationCopy variant];

  if (variant != 2)
  {
    goto LABEL_23;
  }

  appearanceType = [v9 appearanceType];
  v12 = MEMORY[0x1E695E0F0];
  if (appearanceType > 2)
  {
    if (appearanceType != 3)
    {
      if (appearanceType == 4)
      {
        tintColor = [v9 tintColor];
        v15 = [SBHIconImageAppearance tintedDarkAppearanceWithTintColor:tintColor];
      }

      else
      {
        if (appearanceType != 5)
        {
          goto LABEL_24;
        }

        tintColor = [v9 tintColor];
        v15 = [SBHIconImageAppearance tintedLightAppearanceWithTintColor:tintColor];
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

  else if (appearanceType)
  {
    if (appearanceType == 1)
    {
      v13 = +[SBHIconImageAppearance lightAppearance];
    }

    else
    {
      if (appearanceType != 2)
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

- (id)_iconLabelImageParametersForPrewarm:(unint64_t)prewarm
{
  v64 = *MEMORY[0x1E69E9840];
  rootFolder = [(SBHIconManager *)self rootFolder];
  iconImageCache = [(SBHIconManager *)self iconImageCache];
  folderIconImageCache = [(SBHIconManager *)self folderIconImageCache];
  iconLocationForPrecachingImages = [(SBHIconManager *)self iconLocationForPrecachingImages];
  legibilitySettings = [(SBHIconManager *)self legibilitySettings];
  v9 = objc_alloc([(SBHIconManager *)self iconViewClass]);
  listLayoutProvider = [(SBHIconManager *)self listLayoutProvider];
  v11 = [v9 initWithConfigurationOptions:212 listLayoutProvider:listLayoutProvider];

  [v11 setDelegate:self];
  v51 = iconImageCache;
  [v11 setIconImageCache:iconImageCache];
  v50 = folderIconImageCache;
  [v11 setFolderIconImageCache:folderIconImageCache];
  [v11 setLocation:iconLocationForPrecachingImages];
  v12 = +[SBIconLabelViewPrewarmFactory sharedInstance];
  [v11 setIconLabelViewFactory:v12];

  cachingImageAppearances = [(SBHIconManager *)self cachingImageAppearances];
  v13 = [cachingImageAppearances objectForKey:@"primary"];
  traitOverrides = [v11 traitOverrides];
  v15 = objc_opt_self();
  v46 = v13;
  [traitOverrides setObject:v13 forTrait:v15];

  v16 = objc_alloc_init(SBIconLabelImageParametersBuilder);
  v49 = v11;
  [v11 configureLabelImageParametersBuilder:v16];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__SBHIconManager__iconLabelImageParametersForPrewarm___block_invoke;
  aBlock[3] = &unk_1E808FC30;
  v43 = v16;
  v60 = v43;
  v45 = iconLocationForPrecachingImages;
  v61 = v45;
  v44 = legibilitySettings;
  v62 = v44;
  v17 = _Block_copy(aBlock);
  v18 = objc_opt_new();
  v52 = rootFolder;
  icons = [rootFolder icons];
  [v18 addObjectsFromArray:icons];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  _libraryViewControllers = [(SBHIconManager *)self _libraryViewControllers];
  v21 = [_libraryViewControllers countByEnumeratingWithState:&v55 objects:v63 count:16];
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
          objc_enumerationMutation(_libraryViewControllers);
        }

        v25 = *(*(&v55 + 1) + 8 * i);
        categoriesRootFolder = [v25 categoriesRootFolder];
        allIcons = [categoriesRootFolder allIcons];

        if ([allIcons count])
        {
          [v18 unionSet:allIcons];
        }

        podTopLevelDisplayedIcons = [v25 podTopLevelDisplayedIcons];
        if (podTopLevelDisplayedIcons)
        {
          bs_array = [v18 bs_array];
          v30 = [podTopLevelDisplayedIcons sbh_arrayByRemovingObjectsFromArray:bs_array];

          [v18 addObjectsFromArray:v30];
        }
      }

      v22 = [_libraryViewControllers countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v22);
  }

  bs_array2 = [v18 bs_array];
  v32 = [bs_array2 count];
  v33 = MEMORY[0x1E695DFA0];
  if (prewarm == 0x7FFFFFFFFFFFFFFFLL || (v34 = v32, v32 <= prewarm))
  {
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __54__SBHIconManager__iconLabelImageParametersForPrewarm___block_invoke_2;
    v53[3] = &unk_1E808FC58;
    v54 = v17;
    v41 = [bs_array2 bs_mapNoNulls:v53];
    v40 = [v33 orderedSetWithArray:v41];

    v35 = v54;
  }

  else
  {
    v35 = objc_opt_new();
    v36 = objc_opt_new();
    while ([v35 count] < prewarm)
    {
      if ([v36 count] >= v34)
      {
        break;
      }

      v37 = arc4random_uniform(v34);
      if (([v36 containsIndex:v37] & 1) == 0)
      {
        v38 = [bs_array2 objectAtIndex:v37];
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

- (void)_cleanupLabelCachesWithReason:(id)reason
{
  v30 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  rootFolder = [(SBHIconManager *)self rootFolder];
  currentRootIconList = [(SBHIconManager *)self currentRootIconList];
  model = [currentRootIconList model];

  if (model || ([rootFolder firstList], (model = objc_claimAutoreleasedReturnValue()) != 0))
  {
    _libraryViewControllers = [(SBHIconManager *)self _libraryViewControllers];
    v9 = [_libraryViewControllers count];

    if (v9)
    {
      sbh_bootInstanceIdentifier = [MEMORY[0x1E696AEC0] sbh_bootInstanceIdentifier];
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v12 = [standardUserDefaults stringForKey:@"last_label_cache_cleanup"];
      if ([v12 isEqualToString:sbh_bootInstanceIdentifier])
      {
        iconLabelImageCache = SBLogLabels();
        if (os_log_type_enabled(iconLabelImageCache, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v26) = 0;
          _os_log_impl(&dword_1BEB18000, iconLabelImageCache, OS_LOG_TYPE_DEFAULT, "_cleanupLabelCachesWithReason: skipping cleanup; already accomplished for this boot.", &v26, 2u);
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

          [standardUserDefaults setObject:sbh_bootInstanceIdentifier forKey:@"last_label_cache_cleanup"];
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

        iconLabelImageCache = [(SBHIconManager *)self iconLabelImageCache];
        v18 = [(SBHIconManager *)self _iconLabelImageParametersForPrewarm:0x7FFFFFFFFFFFFFFFLL];
        v19 = [v18 set];
        [iconLabelImageCache ensureLabelImagesAreCached:v19];

        [standardUserDefaults setObject:sbh_bootInstanceIdentifier forKey:@"last_label_cache_cleanup"];
        v20 = CFAbsoluteTimeGetCurrent();
        v21 = SBLogLabels();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v26 = 138543618;
          v27 = reasonCopy;
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

- (void)_precacheLabelsForRootIcons:(BOOL)icons reason:(id)reason
{
  iconsCopy = icons;
  v63 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  rootFolder = [(SBHIconManager *)self rootFolder];
  currentRootIconList = [(SBHIconManager *)self currentRootIconList];
  model = [currentRootIconList model];

  if (!model)
  {
    firstList = [rootFolder firstList];
    if (!firstList)
    {
      goto LABEL_46;
    }

    model = firstList;
  }

  preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  iconLabelImageCache = [(SBHIconManager *)self iconLabelImageCache];
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
  v46 = rootFolder;
  v47 = reasonCopy;
  v45 = preferredContentSizeCategory;
  if (iconsCopy)
  {
    reasonCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Forced reason: %@", reasonCopy];;
  }

  else if (self->_precacheLabelsGeneration)
  {
    if ([iconLabelImageCache numberOfCachedLabelImages])
    {
      if ([(SBHIconManager *)self _shouldUseHomeScreenLargeIconSize])
      {
        v18 = 0;
        v19 = 0;
        reasonCopy = @"Labels are not being drawn right now; don't precache anything label wise.";
      }

      else
      {
        legibilitySettings = [(SBHIconManager *)self legibilitySettings];
        if (!legibilitySettings)
        {
          legibilitySettings = +[SBHLegibilitySettings defaultLegibilitySettings];
        }

        v21 = MEMORY[0x1E696AEC0];
        v22 = SBHFeatureEnabled(0);
        v23 = @"NO";
        if (v22)
        {
          v23 = @"YES";
        }

        reasonCopy = [v21 stringWithFormat:@"read gooder is enabled: %@", v23];
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

              v29 = [iconLabelImageCache cachedLabelContentForParameters:*(*(&v48 + 1) + 8 * i)];

              if (!v29)
              {

                reasonCopy = @"legibility cache fault detected";
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
        rootFolder = v46;
        reasonCopy = v47;
        preferredContentSizeCategory = v45;
      }

      goto LABEL_40;
    }

    reasonCopy = @"no images currently cached; def need to rebuild";
  }

  else
  {
    self->_labelCachesNecessitateCleanup = 1;
    reasonCopy = @"first run";
  }

LABEL_31:
  numberOfCachedLegibilityImages = [iconLabelImageCache numberOfCachedLegibilityImages];
  numberOfCachedLabelImages = [iconLabelImageCache numberOfCachedLabelImages];
  v32 = [(SBHIconManager *)self _iconLabelImageParametersForPrewarm:0x7FFFFFFFFFFFFFFFLL];
  array = [v32 array];
  [iconLabelImageCache prewarmLabelImages:array];

  numberOfCachedLegibilityImages2 = [iconLabelImageCache numberOfCachedLegibilityImages];
  numberOfCachedLabelImages2 = [iconLabelImageCache numberOfCachedLabelImages];
  if (numberOfCachedLabelImages2 != numberOfCachedLabelImages)
  {
    v36 = SBLogLabels();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&v53 = numberOfCachedLabelImages2 - numberOfCachedLabelImages;
      _os_log_impl(&dword_1BEB18000, v36, OS_LOG_TYPE_DEFAULT, "_precacheLabelsForRootIcons: new cache hits: %lu", buf, 0xCu);
    }
  }

  *&v37 = numberOfCachedLegibilityImages2 - numberOfCachedLegibilityImages;
  reasonCopy = v47;
  preferredContentSizeCategory = v45;
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

  v19 = numberOfCachedLabelImages2 != numberOfCachedLabelImages;
  v18 = 1;
  rootFolder = v46;
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
    v59 = reasonCopy;
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

  [(SBHIconManager *)self setPrecachedContentSizeCategory:preferredContentSizeCategory];
LABEL_46:
}

void __53__SBHIconManager__precacheLabelsForRootIcons_reason___block_invoke()
{
  v0 = SBLogLabels();
  _precacheLabelsForRootIcons_reason__signpostID = os_signpost_id_generate(v0);
}

- (void)_precacheIntentsForRootIcons
{
  rootFolder = [(SBHIconManager *)self rootFolder];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__SBHIconManager__precacheIntentsForRootIcons__block_invoke;
  v4[3] = &unk_1E808DA78;
  v4[4] = self;
  [rootFolder enumerateAllIconsWithOptions:1 usingBlock:v4];
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
  cachingImageStyleConfiguration = [(SBHIconManager *)self cachingImageStyleConfiguration];
  [(SBHIconManager *)self _precacheImagesForRootIconsForStyleConfiguration:cachingImageStyleConfiguration];
}

- (void)_precacheImagesForRootIconsForStyleConfiguration:(id)configuration
{
  v153 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
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

  iconPrecachingLowPriorityQueue = [(SBHIconManager *)self iconPrecachingLowPriorityQueue];
  if (!iconPrecachingLowPriorityQueue)
  {
    iconPrecachingLowPriorityQueue = BSDispatchQueueCreateSerialWithQoS();
    [(SBHIconManager *)self setIconPrecachingLowPriorityQueue:?];
  }

  rootFolder = [(SBHIconManager *)self rootFolder];
  currentRootIconList = [(SBHIconManager *)self currentRootIconList];
  model = [currentRootIconList model];

  if (model && (v6 = model, [rootFolder indexOfList:model] != 0x7FFFFFFFFFFFFFFFLL) || (objc_msgSend(rootFolder, "firstList"), v7 = objc_claimAutoreleasedReturnValue(), model, (v6 = v7) != 0))
  {
    v85 = v6;
    v8 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v9 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v10 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v11 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    dock = [rootFolder dock];
    [dock directlyContainedApplicationIcons];
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

          applicationBundleID = [*(*(&v147 + 1) + 8 * i) applicationBundleID];
          [v8 addObject:applicationBundleID];
          [v10 addObject:applicationBundleID];
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
    [rootFolder enumerateListsNearestToList:v85 usingBlock:v140];
    _libraryViewControllers = [(SBHIconManager *)self _libraryViewControllers];
    firstObject = [_libraryViewControllers firstObject];

    iconPrecachingInfo = [firstObject iconPrecachingInfo];
    topLevelIcons = [iconPrecachingInfo topLevelIcons];
    v90 = iconPrecachingInfo;
    additionalIcons = [iconPrecachingInfo additionalIcons];
    v21 = [topLevelIcons bs_compactMap:&__block_literal_global_200];
    v79 = [additionalIcons bs_compactMap:&__block_literal_global_203];
    [iconPrecachingInfo topLevelImageInfo];
    v75 = v23;
    v77 = v22;
    v73 = v24;
    v26 = v25;
    [iconPrecachingInfo additionalImageInfo];
    v70 = v28;
    v71 = v27;
    v68 = v30;
    v69 = v29;
    ignoredList = [rootFolder ignoredList];
    icons = [ignoredList icons];
    v31 = [icons mutableCopy];
    v32 = v31;
    if (v90)
    {
      [v31 removeObjectsInArray:topLevelIcons];
      [v32 removeObjectsInArray:additionalIcons];
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

          applicationBundleID2 = [*(*(&v136 + 1) + 8 * j) applicationBundleID];
          [v17 addObject:applicationBundleID2];
          [v18 addObject:applicationBundleID2];
        }

        v34 = [v33 countByEnumeratingWithState:&v136 objects:v151 count:16];
      }

      while (v34);
    }

    v38 = [(SBHIconManager *)self highPriorityCachingImageAppearancesForIconImageStyleConfiguration:configurationCopy];
    v39 = [(SBHIconManager *)self lowPriorityCachingImageAppearancesForIconImageStyleConfiguration:configurationCopy];
    array = [v83 array];
    array2 = [v17 array];
    array3 = [v18 array];
    array4 = [v82 array];
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
    v116 = array;
    v120 = v45;
    v121 = v47;
    v122 = v49;
    v123 = v62;
    v58 = array4;
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
    v72 = array;
    dispatch_async(queue, block);
    v107[0] = MEMORY[0x1E69E9820];
    v107[1] = 3221225472;
    v107[2] = __67__SBHIconManager__precacheImagesForRootIconsForStyleConfiguration___block_invoke_7;
    v107[3] = &unk_1E808B778;
    v108 = v57;
    v109 = array2;
    v110 = v45;
    v111 = v47;
    v112 = v49;
    v113 = v62;
    v80 = array2;
    v78 = v57;
    dispatch_async(SerialWithQoS, v107);
    v95[0] = MEMORY[0x1E69E9820];
    v95[1] = 3221225472;
    v95[2] = __67__SBHIconManager__precacheImagesForRootIconsForStyleConfiguration___block_invoke_8;
    v95[3] = &unk_1E808FCD0;
    v96 = v39;
    v97 = array3;
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
    v60 = array3;
    v61 = v39;
    dispatch_async(iconPrecachingLowPriorityQueue, v95);

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

- (void)addAdditionalIconImageCacheForPrecaching:(id)precaching
{
  precachingCopy = precaching;
  additionalPrecachingIconImageCaches = self->_additionalPrecachingIconImageCaches;
  v12 = precachingCopy;
  if (!additionalPrecachingIconImageCaches)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_additionalPrecachingIconImageCaches;
    self->_additionalPrecachingIconImageCaches = v6;

    precachingCopy = v12;
    additionalPrecachingIconImageCaches = self->_additionalPrecachingIconImageCaches;
  }

  [(NSMutableSet *)additionalPrecachingIconImageCaches addObject:precachingCopy];
  iconsToRecacheForImageAppearanceChange = [(SBHIconManager *)self iconsToRecacheForImageAppearanceChange];
  prioritizedCachingImageAppearances = [(SBHIconManager *)self prioritizedCachingImageAppearances];
  allKeys = [prioritizedCachingImageAppearances allKeys];
  v11 = [v12 cacheImagesForIcons:iconsToRecacheForImageAppearanceChange imageAppearances:allKeys priority:0 reason:@"add additional icon image cache" options:0 completionHandler:0];
}

- (id)iconsToRecacheForImageAppearanceChange
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  rootFolder = [(SBHIconManager *)self rootFolder];
  currentRootIconList = [(SBHIconManager *)self currentRootIconList];
  model = [currentRootIconList model];

  if (model)
  {
    dock = [rootFolder dock];
    icons = [dock icons];
    [v3 addObjectsFromArray:icons];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __56__SBHIconManager_iconsToRecacheForImageAppearanceChange__block_invoke;
    v15[3] = &unk_1E808E678;
    v9 = v3;
    v16 = v9;
    [rootFolder enumerateListsNearestToList:model usingBlock:v15];
    ignoredList = [rootFolder ignoredList];
    icons2 = [ignoredList icons];
    [v9 addObjectsFromArray:icons2];
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__SBHIconManager_iconsToRecacheForImageAppearanceChange__block_invoke_2;
    v13[3] = &unk_1E808DA78;
    v14 = v3;
    [rootFolder enumerateAllIconsWithOptions:1 usingBlock:v13];
    dock = v14;
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
  rootFolder = [(SBHIconManager *)self rootFolder];
  dock = [rootFolder dock];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__SBHIconManager_visibleIconsToRecacheForImageAppearanceChange__block_invoke;
  v15[3] = &unk_1E808A678;
  v6 = v3;
  v16 = v6;
  [dock enumerateIconsUsingBlock:v15];
  currentRootIconList = [(SBHIconManager *)self currentRootIconList];
  model = [currentRootIconList model];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__SBHIconManager_visibleIconsToRecacheForImageAppearanceChange__block_invoke_2;
  v13[3] = &unk_1E808A678;
  v9 = v6;
  v14 = v9;
  [model enumerateIconsUsingBlock:v13];
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
  prioritizedCachingImageAppearances = [(SBHIconManager *)self prioritizedCachingImageAppearances];
  allKeys = [prioritizedCachingImageAppearances allKeys];
  v4 = +[SBHIconImageAppearance tintableAppearance];
  v5 = [allKeys arrayByAddingObject:v4];

  iconImageCache = [(SBHIconManager *)self iconImageCache];
  [iconImageCache purgeAllCachedImagesForAppearancesOtherThanAppearances:v5];
}

- (void)updateVisibleIconsToShowLeafIcons:(id)icons hideLeafIcons:(id)leafIcons
{
  v46 = *MEMORY[0x1E69E9840];
  iconsCopy = icons;
  leafIconsCopy = leafIcons;
  iconModel = [(SBHIconManager *)self iconModel];
  rootFolder = [(SBHIconManager *)self rootFolder];
  if (!self->_previousIconLocationTracker)
  {
    v10 = objc_alloc_init(SBIconPreviousLocationTracker);
    previousIconLocationTracker = self->_previousIconLocationTracker;
    self->_previousIconLocationTracker = v10;
  }

  if (!self->_previousIconLocations)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    previousIconLocations = self->_previousIconLocations;
    self->_previousIconLocations = weakToStrongObjectsMapTable;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v14 = leafIconsCopy;
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
        [(SBIconPreviousLocationTracker *)self->_previousIconLocationTracker captureLocationInfoForIcon:v19 inModel:iconModel];
        v20 = [rootFolder relativePathForIcon:v19 listGridCellInfoOptions:0];
        [(NSMapTable *)self->_previousIconLocations setObject:v20 forKey:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v16);
  }

  if ([iconsCopy count])
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v21 = iconsCopy;
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

          [rootFolder removeIcon:*(*(&v31 + 1) + 8 * k) options:{0x100000, v31}];
        }

        v28 = [v26 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v28);
    }

LABEL_31:
    [(SBHIconManager *)self layoutIconListsWithAnimationType:-1, v31];
    [iconModel saveIconStateIfNeeded];
  }
}

- (void)_clearStashedIconsForRelayout
{
  v29 = *MEMORY[0x1E69E9840];
  iconModel = [(SBHIconManager *)self iconModel];
  leafIcons = [iconModel leafIcons];
  allObjects = [leafIcons allObjects];

  v16 = allObjects;
  v5 = [(SBHIconManager *)self _stashedIconsWithRemovableDataSourcesForStashedIcons:self->_stashedLeafIconsForRelayout newIcons:allObjects];
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

- (id)_stashedIconsWithRemovableDataSourcesForStashedIcons:(id)icons newIcons:(id)newIcons
{
  v52 = *MEMORY[0x1E69E9840];
  iconsCopy = icons;
  newIconsCopy = newIcons;
  v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = iconsCopy;
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
        iconDataSources = [v7 iconDataSources];
        v9 = [iconDataSources countByEnumeratingWithState:&v39 objects:v50 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v40;
          v33 = iconDataSources;
          v34 = v7;
          v32 = *v40;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v40 != v11)
              {
                objc_enumerationMutation(iconDataSources);
              }

              v13 = *(*(&v39 + 1) + 8 * i);
              if ((objc_opt_respondsToSelector() & 1) != 0 && [v13 iconSupportsConfiguration:v7])
              {
                v37 = 0u;
                v38 = 0u;
                v35 = 0u;
                v36 = 0u;
                v14 = newIconsCopy;
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
                      uniqueIdentifier = [v13 uniqueIdentifier];
                      v21 = [v19 firstIconDataSourceWithUniqueIdentifier:uniqueIdentifier];

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
                iconDataSources = v33;
                v7 = v34;
                v11 = v32;
              }
            }

            v10 = [iconDataSources countByEnumeratingWithState:&v39 objects:v50 count:16];
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
    allKeys = [v26 allKeys];
    *buf = 138412290;
    v48 = allKeys;
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
  rootFolder = [(SBHIconManager *)self rootFolder];
  if (rootFolder)
  {
    _currentFolderController = [(SBHIconManager *)self _currentFolderController];
    currentIconListView = [_currentFolderController currentIconListView];
    model = [currentIconListView model];

    v8 = [rootFolder indexPathForList:model];
    v9 = [rootFolder uniqueIdentifiersForIndexPath:v8];
    [(SBHIconManager *)self setPostResetPathIdentifiers:v9];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __46__SBHIconManager__prepareToResetRootIconLists__block_invoke;
    v13[3] = &unk_1E808DA78;
    v13[4] = self;
    [rootFolder enumerateAllIconsWithOptions:1 usingBlock:v13];
  }

  anyObject = [(NSMutableSet *)self->_touchedIconViews anyObject];
  window = [anyObject window];
  _eventRoutingScene = [window _eventRoutingScene];

  if (_eventRoutingScene)
  {
    [*MEMORY[0x1E69DDA98] _cancelAllEventsOfType:0 onEventRoutingScene:_eventRoutingScene];
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

- (void)_finishResetRootIconListsReusingPreviousControllers:(BOOL)controllers
{
  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "_finishResetRootIconLists", v18, 2u);
  }

  delegate = [(SBHIconManager *)self delegate];
  rootViewController = [(SBHIconManager *)self rootViewController];
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  if (!controllers)
  {
    if (objc_opt_respondsToSelector())
    {
      [delegate iconManager:self willDestroyRootFolderController:rootFolderController];
    }

    [(SBHIconManager *)self setRootFolderController:0];

    if (objc_opt_respondsToSelector())
    {
      [delegate iconManager:self willDestroyRootViewController:rootViewController];
    }

    [(SBHIconManager *)self setRootViewController:0];

    rootFolderController = 0;
    rootViewController = 0;
  }

  rootFolder = [(SBHIconModel *)self->_iconModel rootFolder];
  if (!rootFolder)
  {
    [(SBHIconModel *)self->_iconModel layout];
    rootFolder = [(SBHIconModel *)self->_iconModel rootFolder];
  }

  [(SBHIconManager *)self setRootFolder:rootFolder];
  [(SBHIconManager *)self ensureFixedIconLocationsIfNecessary];
  if (rootViewController)
  {
    v10 = [(SBHIconManager *)self _rootFolderForRootViewControllerForRootFolder:rootFolder];
    [rootViewController setFolder:v10];
    iconImageCache = [(SBHIconManager *)self iconImageCache];
    [rootViewController setIconImageCache:iconImageCache];

    folderIconImageCache = [(SBHIconManager *)self folderIconImageCache];
    [rootViewController setFolderIconImageCache:folderIconImageCache];

    interfaceOrientation = [(SBHIconManager *)self interfaceOrientation];
    [rootFolderController setOrientation:interfaceOrientation];
    folderView = [rootFolderController folderView];
    [folderView setOrientation:interfaceOrientation];

    postResetPathIdentifiers = [(SBHIconManager *)self postResetPathIdentifiers];
    if (postResetPathIdentifiers)
    {
      [rootFolderController restoreExpandedPathIdentifiers:postResetPathIdentifiers];
      [(SBHIconManager *)self setPostResetPathIdentifiers:0];
    }
  }

  else
  {
    v10 = [(SBHIconManager *)self _createAppropriateRootViewControllerForRootFolder:rootFolder];
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
      [delegate iconManager:self didCreateRootViewController:v10];
    }

    postResetPathIdentifiers = [MEMORY[0x1E696AD88] defaultCenter];
    [postResetPathIdentifiers postNotificationName:@"SBHIconManagerRootViewControllerDidChange" object:self];
  }

  [(SBHIconManager *)self setResettingRootIconLists:0];
}

- (id)_createAppropriateRootViewControllerForRootFolder:(id)folder
{
  folderCopy = folder;
  homeScreenSettings = [(SBHIconManager *)self homeScreenSettings];
  if ([homeScreenSettings usesMinimumViableHomeScreen])
  {
    v6 = MGGetBoolAnswer();

    if (v6)
    {
      v7 = [(SBHIconManager *)self _createRootTableControllerForRootFolder:folderCopy];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = [(SBHIconManager *)self _createRootFolderControllerForRootFolder:folderCopy];
LABEL_6:
  v8 = v7;

  return v8;
}

- (void)_configureRootFolderConfiguration:(id)configuration
{
  configurationCopy = configuration;
  listLayoutProvider = [(SBHIconManager *)self listLayoutProvider];
  [configurationCopy setListLayoutProvider:listLayoutProvider];

  [configurationCopy setOrientation:{-[SBHIconManager interfaceOrientation](self, "interfaceOrientation")}];
  [configurationCopy setAllowedOrientations:{-[SBHIconManager possibleInterfaceOrientations](self, "possibleInterfaceOrientations")}];
  [configurationCopy setIconViewProvider:self];
  folderIconImageCache = [(SBHIconManager *)self folderIconImageCache];
  [configurationCopy setFolderIconImageCache:folderIconImageCache];

  iconImageCache = [(SBHIconManager *)self iconImageCache];
  [configurationCopy setIconImageCache:iconImageCache];

  legibilitySettings = [(SBHIconManager *)self legibilitySettings];
  [configurationCopy setLegibilitySettings:legibilitySettings];

  [configurationCopy setDelegate:self];
  [configurationCopy setFolderDelegate:self];
  [configurationCopy setShowsDoneButtonWhileEditing:{-[SBHIconManager showsDoneButtonWhileEditing](self, "showsDoneButtonWhileEditing")}];
  if ([(SBHIconManager *)self isFloatingDockSupported])
  {
    v9 = objc_alloc_init(SBHLibraryOverscrollViewController);
    [configurationCopy setTrailingCustomViewController:v9];

    [configurationCopy setDockExternal:1];
    v10 = SBLogIcon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_INFO, "making external dock since floating dock is supported", v11, 2u);
    }
  }
}

- (id)_createRootFolderControllerForRootFolder:(id)folder
{
  v39 = *MEMORY[0x1E69E9840];
  folderCopy = folder;
  v5 = [(SBHIconManager *)self controllerClassForFolderClass:objc_opt_class()];
  v6 = objc_alloc_init(SBRootFolderControllerConfiguration);
  [(SBFolderControllerConfiguration *)v6 setFolder:folderCopy];
  [(SBHIconManager *)self _configureRootFolderConfiguration:v6];
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v26 = v5;
    [delegate iconManager:self willUseRootFolderControllerConfiguration:v6];
    legibilitySettings = [(SBHIconManager *)self legibilitySettings];
    leadingCustomViewControllers = [(SBRootFolderControllerConfiguration *)v6 leadingCustomViewControllers];
    if (leadingCustomViewControllers)
    {
      [(SBHIconManager *)self setLeadingCustomViewControllers:leadingCustomViewControllers];
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v10 = leadingCustomViewControllers;
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

            [*(*(&v31 + 1) + 8 * i) setLegibilitySettings:legibilitySettings];
          }

          v12 = [v10 countByEnumeratingWithState:&v31 objects:v38 count:16];
        }

        while (v12);
      }
    }

    trailingCustomViewControllers = [(SBRootFolderControllerConfiguration *)v6 trailingCustomViewControllers];
    if (trailingCustomViewControllers)
    {
      v25 = folderCopy;
      [(SBHIconManager *)self setTrailingCustomViewControllers:trailingCustomViewControllers];
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v16 = trailingCustomViewControllers;
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

            [*(*(&v27 + 1) + 8 * j) setLegibilitySettings:legibilitySettings];
          }

          v18 = [v16 countByEnumeratingWithState:&v27 objects:v37 count:16];
        }

        while (v18);
      }

      folderCopy = v25;
    }

    v5 = v26;
  }

  v21 = [[v5 alloc] initWithConfiguration:v6];
  [v21 setOpen:1];
  [v21 addPageStateObserver:self];
  [v21 setContentVisibility:{-[SBHIconManager effectiveRootFolderControllerContentVisibility](self, "effectiveRootFolderControllerContentVisibility")}];
  [(SBHIconManager *)self setRootFolderController:v21];
  postResetPathIdentifiers = [(SBHIconManager *)self postResetPathIdentifiers];
  if (postResetPathIdentifiers)
  {
    if (([v21 restoreExpandedPathIdentifiers:postResetPathIdentifiers] & 1) == 0)
    {
      v23 = SBLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v36 = postResetPathIdentifiers;
        _os_log_impl(&dword_1BEB18000, v23, OS_LOG_TYPE_INFO, "_resetRootIconLists: restoreExpandedPathIdentifiers: failed with path '%@'.", buf, 0xCu);
      }
    }

    [(SBHIconManager *)self setPostResetPathIdentifiers:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self didCreateRootFolderController:v21];
  }

  return v21;
}

- (id)_createRootTableControllerForRootFolder:(id)folder
{
  folderCopy = folder;
  v5 = objc_alloc_init(SBHIconRootTableViewController);
  legibilitySettings = [(SBHIconManager *)self legibilitySettings];
  [(SBHIconRootTableViewController *)v5 setLegibilitySettings:legibilitySettings];

  folderIconImageCache = [(SBHIconManager *)self folderIconImageCache];
  [(SBHIconRootTableViewController *)v5 setFolderIconImageCache:folderIconImageCache];

  iconImageCache = [(SBHIconManager *)self iconImageCache];
  [(SBHIconRootTableViewController *)v5 setIconImageCache:iconImageCache];

  [(SBHIconRootTableViewController *)v5 setFolder:folderCopy];

  return v5;
}

- (void)_ensureRootFolderController
{
  rootFolderController = [(SBHIconManager *)self rootFolderController];

  if (!rootFolderController)
  {

    [(SBHIconManager *)self _finishResetRootIconLists];
  }
}

- (void)setRootFolderController:(id)controller
{
  v16[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  rootFolderController = self->_rootFolderController;
  if (rootFolderController != controllerCopy)
  {
    if (rootFolderController)
    {
      rootFolderControllerIconStyleChangeRegistration = [(SBHIconManager *)self rootFolderControllerIconStyleChangeRegistration];
      if (rootFolderControllerIconStyleChangeRegistration)
      {
        [(SBRootFolderController *)self->_rootFolderController unregisterForTraitChanges:rootFolderControllerIconStyleChangeRegistration];
        [(SBHIconManager *)self setRootFolderControllerIconStyleChangeRegistration:0];
      }
    }

    objc_storeStrong(&self->_rootFolderController, controller);
    if (controllerCopy)
    {
      v8 = objc_opt_self();
      v16[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      v10 = [(SBRootFolderController *)controllerCopy registerForTraitChanges:v9 withTarget:self action:sel__precacheDataForRootIconsAfterIconAppearanceChange];

      [(SBHIconManager *)self setRootFolderControllerIconStyleChangeRegistration:v10];
      traitCollection = [(SBRootFolderController *)controllerCopy traitCollection];
      [traitCollection displayScale];
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

- (void)setLeadingCustomViewControllers:(id)controllers
{
  v23 = *MEMORY[0x1E69E9840];
  controllersCopy = controllers;
  if ((BSEqualArrays() & 1) == 0)
  {
    v5 = [controllersCopy copy];
    leadingCustomViewControllers = self->_leadingCustomViewControllers;
    self->_leadingCustomViewControllers = v5;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = controllersCopy;
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

- (void)setTrailingCustomViewControllers:(id)controllers
{
  v20 = *MEMORY[0x1E69E9840];
  controllersCopy = controllers;
  if ((BSEqualArrays() & 1) == 0)
  {
    v5 = [controllersCopy copy];
    trailingCustomViewControllers = self->_trailingCustomViewControllers;
    self->_trailingCustomViewControllers = v5;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = controllersCopy;
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

- (void)configureLibraryViewController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy setBadgeBehaviorProvider:self];
  [controllerCopy setPrefersFlatImageLayers:{-[SBHIconManager prefersFlatImageLayers](self, "prefersFlatImageLayers")}];
}

- (void)_ensureWidgetIsVisibleForDebuggingWithDescriptor:(id)descriptor sizeClass:(int64_t)class
{
  descriptorCopy = descriptor;
  iconModel = [(SBHIconManager *)self iconModel];
  extensionBundleIdentifier = [descriptorCopy extensionBundleIdentifier];
  kind = [descriptorCopy kind];
  v10 = [iconModel widgetIconsContainingWidgetsMatchingExtensionBundleIdentifier:extensionBundleIdentifier kind:kind sizeClass:class];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__SBHIconManager__ensureWidgetIsVisibleForDebuggingWithDescriptor_sizeClass___block_invoke;
  v13[3] = &unk_1E808B200;
  v14 = v10;
  v15 = descriptorCopy;
  selfCopy = self;
  classCopy = class;
  v11 = descriptorCopy;
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

- (void)setListLayoutProvider:(id)provider animated:(BOOL)animated
{
  animatedCopy = animated;
  providerCopy = provider;
  if (self->_listLayoutProvider != providerCopy)
  {
    p_listLayoutProvider = &self->_listLayoutProvider;
    if ([(SBHIconManager *)self hasRootViewController])
    {
      isResettingRootIconLists = [(SBHIconManager *)self isResettingRootIconLists];
    }

    else
    {
      isResettingRootIconLists = 1;
    }

    v10 = SBHIconListLayoutProviderListGridSizeMatchesListLayoutProvider(*p_listLayoutProvider, providerCopy, @"SBIconLocationRoot", 1);
    if (!isResettingRootIconLists && !v10)
    {
      [(SBHIconManager *)self _prepareToResetRootIconLists];
    }

    v37 = [(SBIconListLayoutProvider *)providerCopy layoutForIconLocation:@"SBIconLocationRoot"];
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
    [v27 setListLayoutProvider:providerCopy];

    objc_storeStrong(&self->_listLayoutProvider, provider);
    if (isResettingRootIconLists || v10)
    {
      if (!isResettingRootIconLists && v10)
      {
        usageMonitor = [(SBHIconManager *)self usageMonitor];
        [usageMonitor noteIconManagerListLayoutProviderChanged];

        rootFolderController = [(SBHIconManager *)self rootFolderController];
        [rootFolderController setListLayoutProvider:providerCopy animated:animatedCopy];
        iconImageCache = [(SBHIconManager *)self iconImageCache];
        [rootFolderController setIconImageCache:iconImageCache];

        folderIconImageCache = [(SBHIconManager *)self folderIconImageCache];
        [rootFolderController setFolderIconImageCache:folderIconImageCache];

        todayViewControllers = [(SBHIconManager *)self todayViewControllers];
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __49__SBHIconManager_setListLayoutProvider_animated___block_invoke;
        v38[3] = &unk_1E808FD28;
        v33 = providerCopy;
        v39 = v33;
        v40 = animatedCopy;
        [todayViewControllers enumerateObjectsUsingBlock:v38];

        floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
        [floatingDockViewController setListLayoutProvider:v33 animated:animatedCopy];

        [(SBHIconManager *)self updateAppPredictionViewControllersWithListLayoutProvider:self->_listLayoutProvider oldListLayoutProvider:v19 animated:animatedCopy];
      }
    }

    else
    {
      [(SBHIconManager *)self _finishResetRootIconListsReusingPreviousControllers:0];
    }

    delegate = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate iconManagerListLayoutProviderDidChange:self];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"SBHIconManagerListLayoutProviderDidChange" object:self];
  }
}

- (void)setListLayoutProviderLayoutOptions:(unint64_t)options animated:(BOOL)animated
{
  if (self->_listLayoutProviderLayoutOptions != options)
  {
    animatedCopy = animated;
    self->_listLayoutProviderLayoutOptions = options;
    v8 = [[SBHDefaultIconListLayoutProvider alloc] initWithLayoutOptions:options];
    [(SBHIconManager *)self setListLayoutProvider:v8 animated:animatedCopy];
    floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
    [(SBHIconManager *)self _updateMaximumEditingIconSizeForFloatingDockViewController:floatingDockViewController];
  }
}

- (id)widgetMetricsProvider:(id)provider listLayoutProviderForScreenType:(unint64_t)type
{
  widgetMetricsDelegate = [(SBHIconManager *)self widgetMetricsDelegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [widgetMetricsDelegate iconManager:self widgetMetricsListLayoutProviderForScreenType:type];
  }

  else
  {
    v7 = [[SBHDefaultIconListLayoutProvider alloc] initWithScreenType:type];
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

- (void)setLegibilitySettings:(id)settings
{
  obj = [SBHLegibilitySettings legibilitySettingsForLegibilitySettings:settings];
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
  legibilitySettings = [(SBHIconManager *)self legibilitySettings];
  iconLabelImageCache = [(SBHIconManager *)self iconLabelImageCache];
  [iconLabelImageCache setLegibilitySettings:legibilitySettings];

  [(SBHIconManager *)self _precacheLabelsForRootIcons:SBHFeatureEnabled(0) ^ 1 reason:@"legibility settings were updated"];
  rootViewController = [(SBHIconManager *)self rootViewController];
  [rootViewController setLegibilitySettings:legibilitySettings];

  floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
  [floatingDockViewController setLegibilitySettings:legibilitySettings];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  leadingCustomViewControllers = [(SBHIconManager *)self leadingCustomViewControllers];
  v8 = [leadingCustomViewControllers countByEnumeratingWithState:&v31 objects:v37 count:16];
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
          objc_enumerationMutation(leadingCustomViewControllers);
        }

        [*(*(&v31 + 1) + 8 * v11++) setLegibilitySettings:legibilitySettings];
      }

      while (v9 != v11);
      v9 = [leadingCustomViewControllers countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v9);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  trailingCustomViewControllers = [(SBHIconManager *)self trailingCustomViewControllers];
  v13 = [trailingCustomViewControllers countByEnumeratingWithState:&v27 objects:v36 count:16];
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
          objc_enumerationMutation(trailingCustomViewControllers);
        }

        [*(*(&v27 + 1) + 8 * v16++) setLegibilitySettings:legibilitySettings];
      }

      while (v14 != v16);
      v14 = [trailingCustomViewControllers countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v14);
  }

  overlayTodayViewController = [(SBHIconManager *)self overlayTodayViewController];
  [overlayTodayViewController setLegibilitySettings:legibilitySettings];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  _libraryViewControllers = [(SBHIconManager *)self _libraryViewControllers];
  v19 = [_libraryViewControllers countByEnumeratingWithState:&v23 objects:v35 count:16];
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
          objc_enumerationMutation(_libraryViewControllers);
        }

        [*(*(&v23 + 1) + 8 * v22++) setLegibilitySettings:legibilitySettings];
      }

      while (v20 != v22);
      v20 = [_libraryViewControllers countByEnumeratingWithState:&v23 objects:v35 count:16];
    }

    while (v20);
  }
}

- (void)setFloatingDockViewController:(id)controller
{
  v9 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (self->_floatingDockViewController != controllerCopy)
  {
    v6 = SBLogIcon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138543362;
      v8 = controllerCopy;
      _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_INFO, "setting floating dock view controller to %{public}@", &v7, 0xCu);
    }

    if ([(SBHIconManager *)self hasRootViewController])
    {
      [(SBHIconManager *)self _prepareToResetRootIconLists];
      [(SBFloatingDockViewController *)self->_floatingDockViewController setIconDelegate:0];
      objc_storeStrong(&self->_floatingDockViewController, controller);
      [(SBHIconManager *)self configureFloatingDockViewController:controllerCopy];
      [(SBHIconManager *)self _finishResetRootIconLists];
    }

    else
    {
      [(SBFloatingDockViewController *)self->_floatingDockViewController setIconDelegate:0];
      objc_storeStrong(&self->_floatingDockViewController, controller);
      [(SBHIconManager *)self configureFloatingDockViewController:controllerCopy];
    }
  }
}

- (void)configureFloatingDockViewController:(id)controller
{
  controllerCopy = controller;
  iconDelegate = [controllerCopy iconDelegate];
  if (([(SBHIconManager *)self isEqual:iconDelegate]& 1) == 0)
  {
    [controllerCopy setIconDelegate:0];
  }

  legibilitySettings = [(SBHIconManager *)self legibilitySettings];
  [controllerCopy setLegibilitySettings:legibilitySettings];
  [(SBHIconManager *)self _updateMaximumEditingIconSizeForFloatingDockViewController:controllerCopy];
  [controllerCopy setPrefersFlatImageLayers:{-[SBHIconManager prefersFlatImageLayers](self, "prefersFlatImageLayers")}];
}

- (void)_updateMaximumEditingIconSizeForFloatingDockViewController:(id)controller
{
  controllerCopy = controller;
  listLayoutProvider = [(SBHIconManager *)self listLayoutProvider];
  v5 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationFloatingDock"];
  if (objc_opt_respondsToSelector())
  {
    floatingDockVisualConfiguration = [v5 floatingDockVisualConfiguration];
    [floatingDockVisualConfiguration maximumEditingIconSize];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v8 = *MEMORY[0x1E695F060];
    v10 = *(MEMORY[0x1E695F060] + 8);
  }

  [controllerCopy setMaximumEditingIconSize:{v8, v10}];
}

- (id)floatingDockViewControllerForView:(id)view
{
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate iconManager:self floatingDockViewControllerForView:viewCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setOverlayTodayViewController:(id)controller
{
  controllerCopy = controller;
  overlayTodayViewController = self->_overlayTodayViewController;
  if (overlayTodayViewController != controllerCopy)
  {
    v9 = controllerCopy;
    [overlayTodayViewController removeObserver:self];
    objc_storeStrong(&self->_overlayTodayViewController, controller);
    v7 = self->_overlayTodayViewController;
    legibilitySettings = [(SBHIconManager *)self legibilitySettings];
    [(SBHTodayViewControlling *)v7 setLegibilitySettings:legibilitySettings];

    overlayTodayViewController = [(SBHIconManager *)self isUsageMonitoringEnabled];
    controllerCopy = v9;
    if (overlayTodayViewController)
    {
      overlayTodayViewController = [(SBHTodayViewControlling *)self->_overlayTodayViewController addObserver:self];
      controllerCopy = v9;
    }
  }

  MEMORY[0x1EEE66BB8](overlayTodayViewController, controllerCopy);
}

- (void)setOverlayCoverSheetTodayViewController:(id)controller
{
  controllerCopy = controller;
  overlayCoverSheetTodayViewController = self->_overlayCoverSheetTodayViewController;
  if (overlayCoverSheetTodayViewController != controllerCopy)
  {
    v7 = controllerCopy;
    [overlayCoverSheetTodayViewController removeObserver:self];
    objc_storeStrong(&self->_overlayCoverSheetTodayViewController, controller);
    overlayCoverSheetTodayViewController = [(SBHIconManager *)self isUsageMonitoringEnabled];
    controllerCopy = v7;
    if (overlayCoverSheetTodayViewController)
    {
      overlayCoverSheetTodayViewController = [(SBHTodayViewControlling *)self->_overlayCoverSheetTodayViewController addObserver:self];
      controllerCopy = v7;
    }
  }

  MEMORY[0x1EEE66BB8](overlayCoverSheetTodayViewController, controllerCopy);
}

- (id)todayViewControllers
{
  array = [MEMORY[0x1E695DF70] array];
  overlayTodayViewController = [(SBHIconManager *)self overlayTodayViewController];
  if (overlayTodayViewController)
  {
    [array addObject:overlayTodayViewController];
  }

  overlayCoverSheetTodayViewController = [(SBHIconManager *)self overlayCoverSheetTodayViewController];
  if (overlayCoverSheetTodayViewController)
  {
    [array addObject:overlayCoverSheetTodayViewController];
  }

  leadingTodayViewController = [(SBHIconManager *)self leadingTodayViewController];
  if (leadingTodayViewController)
  {
    [array addObject:leadingTodayViewController];
  }

  return array;
}

- (void)setOverlayLibraryViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_overlayLibraryViewController != controllerCopy)
  {
    v8 = controllerCopy;
    objc_storeStrong(&self->_overlayLibraryViewController, controller);
    overlayLibraryViewController = self->_overlayLibraryViewController;
    legibilitySettings = [(SBHIconManager *)self legibilitySettings];
    [(SBHLibraryViewController *)overlayLibraryViewController setLegibilitySettings:legibilitySettings];

    [(SBHIconManager *)self configureLibraryViewController:v8];
    controllerCopy = v8;
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
  floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];

  delegate = [(SBHIconManager *)self delegate];
  if (floatingDockViewController)
  {
    v5 = 1;
  }

  else if (objc_opt_respondsToSelector())
  {
    v5 = [delegate isFloatingDockSupportedForIconManager:self];
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

  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate isFloatingDockUtilitiesSupportedForIconManager:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isFloatingDockVisible
{
  floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];

  if (!floatingDockViewController)
  {
    return 0;
  }

  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate isFloatingDockVisibleForIconManager:self];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)setOverlayCoverSheetTodayViewVisible:(BOOL)visible
{
  if (self->_overlayCoverSheetTodayViewVisible != visible)
  {
    visibleCopy = visible;
    self->_overlayCoverSheetTodayViewVisible = visible;
    usageMonitor = [(SBHIconManager *)self usageMonitor];
    v8 = usageMonitor;
    if (visibleCopy)
    {
      [usageMonitor noteIconManagerCoverSheetTodayViewDidAppear];
      overlayCoverSheetTodayViewController = [(SBHIconManager *)self overlayCoverSheetTodayViewController];
      [(SBHIconManager *)self informUsageMonitorOfVisibleIconRectsForTodayViewController:overlayCoverSheetTodayViewController];
    }

    else
    {
      [usageMonitor noteIconManagerCoverSheetTodayViewDidDisappear];
    }
  }
}

- (void)setOverlayTodayViewVisible:(BOOL)visible
{
  if (self->_overlayTodayViewVisible != visible)
  {
    self->_overlayTodayViewVisible = visible;
    [(SBHIconManager *)self _updateOverlayOcclusionForRootFolderController];
    overlayTodayViewController = [(SBHIconManager *)self overlayTodayViewController];
    [(SBHIconManager *)self informUsageMonitorOfTodayViewVisibilityChange:overlayTodayViewController];
  }
}

- (void)setOverlayTodayViewVisibilityTransitioning:(BOOL)transitioning
{
  if (self->_overlayTodayViewVisibilityTransitioning != transitioning)
  {
    self->_overlayTodayViewVisibilityTransitioning = transitioning;
    [(SBHIconManager *)self _updateOverlayOcclusionForRootFolderController];
  }
}

- (void)setOverlayTodayViewVisible:(BOOL)visible todayViewTransitioning:(BOOL)transitioning
{
  transitioningCopy = transitioning;
  visibleCopy = visible;
  overlayTodayViewVisible = self->_overlayTodayViewVisible;
  if (!transitioning)
  {
    if (!self->_overlayTodayViewVisibilityTransitioning)
    {
      goto LABEL_10;
    }

    if (!visible && self->_overlayTodayViewIsDismissingFromFullyPresented)
    {
      rootFolderController = [(SBHIconManager *)self rootFolderController];
      rootFolderView = [rootFolderController rootFolderView];
      [rootFolderView _flashPageDotsForReason:@"today-view-dismiss"];
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
  if (overlayTodayViewVisible == visibleCopy)
  {
    if (self->_overlayTodayViewVisibilityTransitioning != transitioningCopy)
    {
      self->_overlayTodayViewVisible = visibleCopy;
      self->_overlayTodayViewVisibilityTransitioning = transitioningCopy;

      [(SBHIconManager *)self _updateOverlayOcclusionForRootFolderController];
    }
  }

  else
  {
    self->_overlayTodayViewVisible = visibleCopy;
    self->_overlayTodayViewVisibilityTransitioning = transitioningCopy;
    [(SBHIconManager *)self _updateOverlayOcclusionForRootFolderController];
    overlayTodayViewController = [(SBHIconManager *)self overlayTodayViewController];
    [(SBHIconManager *)self informUsageMonitorOfTodayViewVisibilityChange:overlayTodayViewController];
  }
}

- (void)informUsageMonitorOfTodayViewVisibilityChange:(id)change
{
  changeCopy = change;
  usageMonitor = [(SBHIconManager *)self usageMonitor];
  if ([(SBHIconManager *)self isTodayViewEffectivelyVisible])
  {
    [usageMonitor noteIconManagerOverlayTodayViewDidAppear];
    [(SBHIconManager *)self informUsageMonitorOfVisibleIconRectsForTodayViewController:changeCopy];
  }

  else
  {
    [usageMonitor noteIconManagerOverlayTodayViewDidDisappear];
  }
}

- (void)informUsageMonitorOfVisibleIconRectsForTodayViewController:(id)controller
{
  controllerCopy = controller;
  if ([(SBHIconManager *)self isUsageMonitoringEnabled])
  {
    scrollView = [controllerCopy scrollView];
    [scrollView visibleBounds];
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
    listView = [controllerCopy listView];
    v16 = [listView iconVisibilityInfoForRect:1 normalized:{v7, v9, v11, v13}];
    v14[2](v14, listView);
    visibleIconRects = [v16 visibleIconRects];
    usageMonitor = [(SBHIconManager *)self usageMonitor];
    [(SBHIconManager *)self overlayCoverSheetTodayViewController];

    [usageMonitor noteIconManagerTodayViewAtLocation:1 didScrollToRevealIcons:visibleIconRects];
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

- (void)setMainDisplayLibraryViewVisible:(BOOL)visible
{
  if (self->_mainDisplayLibraryViewVisible != visible)
  {
    self->_mainDisplayLibraryViewVisible = visible;
    [(SBHIconManager *)self _updateOverlayOcclusionForRootFolderController];
  }
}

- (void)setMainDisplayLibraryViewVisibilityTransitioning:(BOOL)transitioning
{
  if (self->_mainDisplayLibraryViewVisibilityTransitioning != transitioning)
  {
    self->_mainDisplayLibraryViewVisibilityTransitioning = transitioning;
    [(SBHIconManager *)self _updateOverlayOcclusionForRootFolderController];
  }
}

- (void)setMainDisplayLibraryViewVisible:(BOOL)visible libraryViewTransitioning:(BOOL)transitioning
{
  transitioningCopy = transitioning;
  visibleCopy = visible;
  if (transitioning)
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
    if (!visible && self->_mainDisplayLibraryViewIsDismissingFromFullyPresented)
    {
      rootFolderController = [(SBHIconManager *)self rootFolderController];
      rootFolderView = [rootFolderController rootFolderView];
      [rootFolderView _flashPageDotsForReason:@"library-dismiss"];
    }

    mainDisplayLibraryViewVisible = 0;
    goto LABEL_9;
  }

  if (self->_mainDisplayLibraryViewVisible != visibleCopy || self->_mainDisplayLibraryViewVisibilityTransitioning != transitioningCopy)
  {
    self->_mainDisplayLibraryViewVisible = visibleCopy;
    self->_mainDisplayLibraryViewVisibilityTransitioning = transitioningCopy;

    [(SBHIconManager *)self _updateOverlayOcclusionForRootFolderController];
  }
}

- (void)_updateOverlayOcclusionForRootFolderController
{
  v4 = self->_overlayTodayViewVisible || self->_mainDisplayLibraryViewVisible;
  effectiveRootFolderControllerContentVisibility = [(SBHIconManager *)self effectiveRootFolderControllerContentVisibility];
  [(SBRootFolderController *)self->_rootFolderController setOccludedByOverlay:v4];
  [(SBFolderController *)self->_rootFolderController setContentVisibility:effectiveRootFolderControllerContentVisibility];
  rootFolderController = self->_rootFolderController;
  v7 = NSStringFromSelector(a2);
  [(SBRootFolderController *)rootFolderController setParallaxDisabled:v4 forReason:v7];
}

- (void)presentTodayOverlay
{
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate presentTodayOverlayForIconManager:self];
  }
}

- (int64_t)listsFixedIconLocationBehavior
{
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate iconManagerListsFixedIconLocationBehavior:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)listsIconDisplacementBehavior
{
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate iconManagerListsIconDisplacementBehavior:self];
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
    rootFolder = [(SBHIconManager *)self rootFolder];
    [rootFolder enumerateListsWithOptions:4 usingBlock:&__block_literal_global_278];
  }
}

- (id)_folderControllerForIcon:(id)icon inLocation:(id)location
{
  v22 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  locationCopy = location;
  if (!locationCopy || ![iconCopy isFolderIcon] || !SBIconLocationGroupContainsLocation(@"SBIconLocationGroupAppLibrary", locationCopy))
  {
    goto LABEL_17;
  }

  trailingLibraryViewController = [(SBHIconManager *)self trailingLibraryViewController];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  _libraryViewControllers = [(SBHIconManager *)self _libraryViewControllers];
  v10 = [_libraryViewControllers countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(_libraryViewControllers);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([v13 isDisplayingIcon:iconCopy])
        {
          v10 = v13;
          goto LABEL_14;
        }
      }

      v10 = [_libraryViewControllers countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
  if ((_libraryViewControllers, (v14 = trailingLibraryViewController) == 0) && (v14 = v10) == 0 || ([v14 folderController], rootFolderController = objc_claimAutoreleasedReturnValue(), v10, trailingLibraryViewController, !rootFolderController))
  {
LABEL_17:
    rootFolderController = [(SBHIconManager *)self rootFolderController];
  }

  return rootFolderController;
}

- (void)setEditing:(BOOL)editing withFeedbackBehavior:(id)behavior location:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v53 = *MEMORY[0x1E69E9840];
  behaviorCopy = behavior;
  if (!editing)
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

    rootFolder = [(SBHIconManager *)self rootFolder];
    [rootFolder enumerateAllIconsWithOptions:1 usingBlock:&__block_literal_global_281];

    v13 = 0;
    v14 = 0;
    goto LABEL_10;
  }

  isEditingAllowed = [(SBHIconManager *)self isEditingAllowed];
  if (isEditingAllowed == [(SBHIconManager *)self isEditing])
  {
    goto LABEL_34;
  }

  self->_editing = isEditingAllowed;
  if (!isEditingAllowed)
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
  floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
  [floatingDockViewController setEditing:v13 animated:1];

  rootViewController = [(SBHIconManager *)self rootViewController];
  [rootViewController setEditing:v13 animated:1];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  leadingCustomViewControllers = [(SBHIconManager *)self leadingCustomViewControllers];
  v21 = [leadingCustomViewControllers countByEnumeratingWithState:&v44 objects:v50 count:16];
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
          objc_enumerationMutation(leadingCustomViewControllers);
        }

        [*(*(&v44 + 1) + 8 * i) setEditing:v13 animated:1];
      }

      v22 = [leadingCustomViewControllers countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v22);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  trailingCustomViewControllers = [(SBHIconManager *)self trailingCustomViewControllers];
  v26 = [trailingCustomViewControllers countByEnumeratingWithState:&v40 objects:v49 count:16];
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
          objc_enumerationMutation(trailingCustomViewControllers);
        }

        [*(*(&v40 + 1) + 8 * j) setEditing:v13 animated:1];
      }

      v27 = [trailingCustomViewControllers countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v27);
  }

  overlayTodayViewController = [(SBHIconManager *)self overlayTodayViewController];
  [overlayTodayViewController setEditing:v13 animated:1];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  _libraryViewControllers = [(SBHIconManager *)self _libraryViewControllers];
  v32 = [_libraryViewControllers countByEnumeratingWithState:&v36 objects:v48 count:16];
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
          objc_enumerationMutation(_libraryViewControllers);
        }

        [*(*(&v36 + 1) + 8 * k) setEditing:v13 animated:1];
      }

      v33 = [_libraryViewControllers countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v33);
  }

  [(SBHIconManager *)self editingDidChangeWithFeedbackBehavior:behaviorCopy location:x, y];
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

- (void)editingDidChangeWithFeedbackBehavior:(id)behavior location:(CGPoint)location
{
  y = location.y;
  x = location.x;
  behaviorCopy = behavior;
  isEditing = [(SBHIconManager *)self isEditing];
  iconModel = [(SBHIconManager *)self iconModel];
  if (isEditing)
  {
    [behaviorCopy impactOccurredWithIntensity:1.0 atLocation:{x, y}];
    [(SBHIconManager *)self _restartEditingEndTimer];
    [(SBHIconManager *)self displayEnterEditingModeFeatureIntroductions];
  }

  else
  {
    editingAutosaveDisableAssertion = [(SBHIconManager *)self editingAutosaveDisableAssertion];
    [editingAutosaveDisableAssertion invalidate];

    [(SBHIconManager *)self setEditingAutosaveDisableAssertion:0];
    [iconModel saveIconStateIfNeeded];
    [iconModel clearDesiredIconState];
    editingEndTimer = [(SBHIconManager *)self editingEndTimer];
    [editingEndTimer invalidate];

    [(SBHIconManager *)self setEditingEndTimer:0];
  }

  searchGesture = [(SBHIconManager *)self searchGesture];
  [searchGesture setDisabled:isEditing forReason:@"SBHIconManager Editing"];

  iconDragManager = [(SBHIconManager *)self iconDragManager];
  [iconDragManager noteIconManagerEditingDidChange];

  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManagerEditingDidChange:self];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"SBHIconManagerEditingStateChanged" object:self];

  if (!isEditing)
  {
    [(SBHIconManager *)self enumerateKnownIconViewsUsingBlock:&__block_literal_global_286];
  }
}

- (void)setEditing:(BOOL)editing fromIconListView:(id)view
{
  editingCopy = editing;
  viewCopy = view;
  if ([(SBHIconManager *)self isEditingAllowed])
  {
    [(SBHIconManager *)self setEditing:editingCopy];
  }

  else if ([(SBHIconManager *)self isEditingAllowedForIconListView:viewCopy])
  {
    iconLocation = [viewCopy iconLocation];
    [(SBHIconManager *)self setEditing:editingCopy forIconLocation:iconLocation];
  }
}

- (void)setEditing:(BOOL)editing fromIconView:(id)view
{
  editingCopy = editing;
  viewCopy = view;
  if ([(SBHIconManager *)self isEditingAllowedForIconView:?])
  {
    if ([(SBHIconManager *)self isEditingAllowed])
    {
      [(SBHIconManager *)self setEditing:editingCopy];
    }

    else
    {
      location = [viewCopy location];
      [(SBHIconManager *)self setEditing:editingCopy forIconLocation:location];
    }
  }
}

- (void)setEditing:(BOOL)editing forIconLocation:(id)location
{
  editingCopy = editing;
  v21 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  partialEditingIconLocations = self->_partialEditingIconLocations;
  if (editingCopy)
  {
    if (!partialEditingIconLocations)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v9 = self->_partialEditingIconLocations;
      self->_partialEditingIconLocations = v8;

      partialEditingIconLocations = self->_partialEditingIconLocations;
    }

    [(NSMutableSet *)partialEditingIconLocations addObject:locationCopy];
  }

  else
  {
    [(NSMutableSet *)partialEditingIconLocations removeObject:locationCopy];
  }

  if (SBIconLocationGroupContainsLocation(@"SBIconLocationGroupTodayView", locationCopy))
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    leadingCustomViewControllers = [(SBHIconManager *)self leadingCustomViewControllers];
    v11 = [leadingCustomViewControllers countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(leadingCustomViewControllers);
          }

          [*(*(&v16 + 1) + 8 * v14++) setEditing:editingCopy];
        }

        while (v12 != v14);
        v12 = [leadingCustomViewControllers countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }

    overlayTodayViewController = [(SBHIconManager *)self overlayTodayViewController];
    [overlayTodayViewController setEditing:editingCopy];

    goto LABEL_16;
  }

  if (SBIconLocationGroupContainsLocation(@"SBIconLocationGroupFloatingDock", locationCopy))
  {
LABEL_16:
    [(SBHIconManager *)self editingDidChange];
  }
}

- (BOOL)isEditingForIconLocation:(id)location
{
  locationCopy = location;
  if ([(SBHIconManager *)self isEditing])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(NSMutableSet *)self->_partialEditingIconLocations containsObject:locationCopy];
  }

  return v5;
}

- (BOOL)isEditingAllowedForIconLocation:(id)location
{
  locationCopy = location;
  if (-[SBHIconManager isEditingAllowed](self, "isEditingAllowed") || -[SBHIconManager isIconContentPossiblyVisibleOverApplication](self, "isIconContentPossiblyVisibleOverApplication") && ((SBIconLocationGroupContainsLocation(@"SBIconLocationGroupFloatingDock", locationCopy) & 1) != 0 || ([locationCopy isEqualToString:@"SBIconLocationFolder"] & 1) != 0))
  {
    v5 = 1;
  }

  else
  {
    delegate = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v5 = [delegate iconManager:self isPartialEditingAllowedForIconLocation:locationCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEditingAllowedForIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate iconManager:self isEditingAllowedForIconView:viewCopy];
  }

  else
  {
    v6 = 1;
  }

  location = [viewCopy location];
  v8 = [(SBHIconManager *)self isEditingAllowedForIconLocation:location];

  return v6 & v8;
}

- (BOOL)isEditingAllowedForIconListView:(id)view
{
  iconLocation = [view iconLocation];
  LOBYTE(self) = [(SBHIconManager *)self isEditingAllowedForIconLocation:iconLocation];

  return self;
}

- (BOOL)isEditingForIconListView:(id)view
{
  iconLocation = [view iconLocation];
  LOBYTE(self) = [(SBHIconManager *)self isEditingForIconLocation:iconLocation];

  return self;
}

- (void)enumerateEditableViewControllersUsingBlock:(id)block
{
  v27 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  rootViewController = [(SBHIconManager *)self rootViewController];
  [(SBHIconManager *)self _enumerateEditableViewController:rootViewController usingBlock:blockCopy];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  leadingCustomViewControllers = [(SBHIconManager *)self leadingCustomViewControllers];
  v7 = [leadingCustomViewControllers countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(leadingCustomViewControllers);
        }

        [(SBHIconManager *)self _enumerateEditableViewController:*(*(&v21 + 1) + 8 * v10++) usingBlock:blockCopy];
      }

      while (v8 != v10);
      v8 = [leadingCustomViewControllers countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  overlayTodayViewController = [(SBHIconManager *)self overlayTodayViewController];
  [(SBHIconManager *)self _enumerateEditableViewController:overlayTodayViewController usingBlock:blockCopy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  _libraryViewControllers = [(SBHIconManager *)self _libraryViewControllers];
  v13 = [_libraryViewControllers countByEnumeratingWithState:&v17 objects:v25 count:16];
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
          objc_enumerationMutation(_libraryViewControllers);
        }

        [(SBHIconManager *)self _enumerateEditableViewController:*(*(&v17 + 1) + 8 * v16++) usingBlock:blockCopy];
      }

      while (v14 != v16);
      v14 = [_libraryViewControllers countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

- (void)_enumerateEditableViewController:(id)controller usingBlock:(id)block
{
  if (controller)
  {
    v4 = 0;
    (*(block + 2))(block, controller, &v4);
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

- (void)configureFeedbackView:(id)view
{
  v4 = MEMORY[0x1E69DCAE8];
  viewCopy = view;
  v6 = [v4 alloc];
  defaultConfiguration = [MEMORY[0x1E69DD560] defaultConfiguration];
  v7 = [v6 initWithConfiguration:defaultConfiguration view:viewCopy];

  iconEditingFeedbackBehavior = self->_iconEditingFeedbackBehavior;
  self->_iconEditingFeedbackBehavior = v7;
}

- (void)displayEnterEditingModeFeatureIntroductions
{
  v17 = *MEMORY[0x1E69E9840];
  delegate = [(SBHIconManager *)self delegate];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  featureIntroductionManager = [(SBHIconManager *)self featureIntroductionManager];
  v5 = [featureIntroductionManager featureIntroductionItemAtLocation:8];
  allObjects = [v5 allObjects];

  v7 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [delegate iconManager:self displayFeatureIntroductionItem:v11 atLocation:8];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)displayFeatureIntroductionItemIfUnlocked:(id)unlocked
{
  unlockedCopy = unlocked;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self displayFeatureIntroductionItemIfUnlocked:unlockedCopy];
  }
}

- (void)_addTouchedIconView:(id)view
{
  viewCopy = view;
  touchedIconViews = self->_touchedIconViews;
  v8 = viewCopy;
  if (!touchedIconViews)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_touchedIconViews;
    self->_touchedIconViews = v6;

    viewCopy = v8;
    touchedIconViews = self->_touchedIconViews;
  }

  [(NSMutableSet *)touchedIconViews addObject:viewCopy];
}

- (void)_removeTouchedIconView:(id)view
{
  v17 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self->_touchedIconViews removeObject:view];
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

- (void)performAfterAllIconTouchesFinishedUsingBlock:(id)block
{
  blockCopy = block;
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

    v9 = [blockCopy copy];
    v10 = _Block_copy(v9);
    [(NSMutableArray *)iconTouchesFinishedBlocks addObject:v10];
  }

  else
  {
    blockCopy[2](blockCopy);
  }
}

- (BOOL)shouldHighlightTouchedIconView:(id)view
{
  viewCopy = view;
  icon = [viewCopy icon];
  v6 = [(SBHIconManager *)self reasonToDisallowTapOnIconView:viewCopy];

  if (v6 || ([viewCopy isGrabbed] & 1) != 0 || objc_msgSend(icon, "isFolderIcon") && !-[SBHIconManager canOpenFolderForIcon:](self, "canOpenFolderForIcon:", icon) || (-[SBHIconManager iconDragManager](self, "iconDragManager"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isTrackingDroppingIconDrags"), v7, (v8 & 1) != 0) || (objc_msgSend(viewCopy, "isPaused") & 1) != 0)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = [viewCopy lastTouchWasPointer] ^ 1;
  }

  return v9;
}

- (void)highlightIconView:(id)view
{
  v10 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  highlightedIconView = [(SBHIconManager *)self highlightedIconView];
  if (highlightedIconView == viewCopy)
  {
    v6 = SBLogIcon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v9 = 138412290;
      *&v9[4] = viewCopy;
      v8 = "Icon view is already highlighted: %@";
LABEL_10:
      _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_INFO, v8, v9, 0xCu);
    }

LABEL_11:

    goto LABEL_12;
  }

  v6 = SBLogIcon();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (!highlightedIconView)
  {
    if (v7)
    {
      *v9 = 138412290;
      *&v9[4] = viewCopy;
      v8 = "Highlighting icon view: %@";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v7)
  {
    *v9 = 138412546;
    *&v9[4] = highlightedIconView;
    *&v9[12] = 2112;
    *&v9[14] = viewCopy;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_INFO, "Unhighlighting icon view '%@' to highlight '%@'", v9, 0x16u);
  }

  [highlightedIconView setHighlighted:0];
LABEL_12:
  [viewCopy setHighlighted:{1, *v9}];
  [(SBHIconManager *)self setHighlightedIconView:viewCopy];
}

- (void)clearHighlightedIcon:(id)icon
{
  v11 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  highlightedIconView = [(SBHIconManager *)self highlightedIconView];
  icon = [highlightedIconView icon];
  v7 = [icon isEqual:iconCopy];

  if (v7)
  {
    v8 = SBLogIcon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = highlightedIconView;
      _os_log_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_INFO, "Clearing highlight from icon view: %@", &v9, 0xCu);
    }

    [highlightedIconView setHighlighted:0];
    [(SBHIconManager *)self setHighlightedIconView:0];
  }
}

- (SBIconListView)currentRootIconList
{
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  currentIconListView = [rootFolderController currentIconListView];

  return currentIconListView;
}

- (id)rootIconListAtIndex:(int64_t)index
{
  if (index == 10000)
  {
    effectiveDockListView = [(SBHIconManager *)self effectiveDockListView];
LABEL_5:
    v5 = effectiveDockListView;
    goto LABEL_7;
  }

  if (index == 40000)
  {
    effectiveDockListView = [(SBHIconManager *)self effectiveDockUtilitiesListView];
    goto LABEL_5;
  }

  rootFolderController = [(SBHIconManager *)self rootFolderController];
  v5 = [rootFolderController iconListViewAtIndex:index];

LABEL_7:

  return v5;
}

- (SBIconListView)dockListView
{
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  dockListView = [rootFolderController dockListView];

  return dockListView;
}

- (SBIconListView)floatingDockListView
{
  floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
  userIconListView = [floatingDockViewController userIconListView];

  return userIconListView;
}

- (id)floatingDockUtilitiesListView
{
  floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
  utilitiesIconListView = [floatingDockViewController utilitiesIconListView];

  return utilitiesIconListView;
}

- (SBIconListView)floatingDockSuggestionsListView
{
  floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
  recentIconListView = [floatingDockViewController recentIconListView];

  return recentIconListView;
}

- (BOOL)shouldEnforceMaxCombinedUserAndUtilitiesIconCountForFloatingDock
{
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
    v5 = [delegate iconManager:self shouldEnforceMaxCombinedUserAndUtilitiesIconCountForFloatingDock:floatingDockViewController];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (SBIconListView)effectiveDockListView
{
  dockListView = [(SBHIconManager *)self dockListView];
  if (!dockListView)
  {
    dockListView = [(SBHIconManager *)self floatingDockListView];
  }

  return dockListView;
}

- (BOOL)_shouldRespondToIconCloseBoxes
{
  iconDragManager = [(SBHIconManager *)self iconDragManager];
  isTrackingActiveOrDroppingIconDrags = [iconDragManager isTrackingActiveOrDroppingIconDrags];

  return isTrackingActiveOrDroppingIconDrags ^ 1;
}

- (void)enumerateDisplayedIconViewsUsingBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  rootViewController = [(SBHIconManager *)self rootViewController];
  [rootViewController enumerateDisplayedIconViewsUsingBlock:blockCopy];

  floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
  [floatingDockViewController enumerateDisplayedIconViewsUsingBlock:blockCopy];

  _effectiveTodayViewController = [(SBHIconManager *)self _effectiveTodayViewController];
  [_effectiveTodayViewController enumerateDisplayedIconViewsUsingBlock:blockCopy];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  _libraryViewControllers = [(SBHIconManager *)self _libraryViewControllers];
  v9 = [_libraryViewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(_libraryViewControllers);
        }

        [*(*(&v13 + 1) + 8 * v12++) enumerateDisplayedIconViewsUsingBlock:blockCopy];
      }

      while (v10 != v12);
      v10 = [_libraryViewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)enumerateDisplayedIconViewsForIcon:(id)icon usingBlock:(id)block
{
  v21 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  blockCopy = block;
  rootViewController = [(SBHIconManager *)self rootViewController];
  [rootViewController enumerateDisplayedIconViewsForIcon:iconCopy usingBlock:blockCopy];

  floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
  [floatingDockViewController enumerateDisplayedIconViewsForIcon:iconCopy usingBlock:blockCopy];

  _effectiveTodayViewController = [(SBHIconManager *)self _effectiveTodayViewController];
  [_effectiveTodayViewController enumerateDisplayedIconViewsForIcon:iconCopy usingBlock:blockCopy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  _libraryViewControllers = [(SBHIconManager *)self _libraryViewControllers];
  v12 = [_libraryViewControllers countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(_libraryViewControllers);
        }

        [*(*(&v16 + 1) + 8 * v15++) enumerateDisplayedIconViewsForIcon:iconCopy usingBlock:blockCopy];
      }

      while (v13 != v15);
      v13 = [_libraryViewControllers countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)enumerateKnownIconViewsUsingBlock:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  iconViewMap = [(SBHIconManager *)self iconViewMap];
  [iconViewMap enumerateRecycledViewsUsingBlock:blockCopy];

  rootViewController = [(SBHIconManager *)self rootViewController];
  [rootViewController enumerateDisplayedIconViewsUsingBlock:blockCopy];

  floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
  [floatingDockViewController enumerateDisplayedIconViewsUsingBlock:blockCopy];

  overlayTodayViewController = [(SBHIconManager *)self overlayTodayViewController];
  [overlayTodayViewController enumerateDisplayedIconViewsUsingBlock:blockCopy];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  _libraryViewControllers = [(SBHIconManager *)self _libraryViewControllers];
  v10 = [_libraryViewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(_libraryViewControllers);
        }

        [*(*(&v14 + 1) + 8 * v13++) enumerateDisplayedIconViewsUsingBlock:blockCopy];
      }

      while (v11 != v13);
      v11 = [_libraryViewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)_updateVisibleIconsViewsForAllowableCloseBoxes
{
  iconsShouldAllowCloseBoxes = [(SBHIconManager *)self iconsShouldAllowCloseBoxes];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__SBHIconManager__updateVisibleIconsViewsForAllowableCloseBoxes__block_invoke;
  v4[3] = &unk_1E808CC60;
  v4[4] = self;
  v5 = iconsShouldAllowCloseBoxes;
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

- (BOOL)isIconVisiblyRepresented:(id)represented
{
  representedCopy = represented;
  rootFolder = [(SBHIconManager *)self rootFolder];
  v6 = [rootFolder containsIcon:representedCopy];

  return v6;
}

- (BOOL)isIconIgnored:(id)ignored
{
  ignoredCopy = ignored;
  rootFolder = [(SBHIconManager *)self rootFolder];
  ignoredList = [rootFolder ignoredList];
  v7 = [ignoredList directlyContainsIcon:ignoredCopy];

  return v7;
}

- (id)applicationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  iconModel = [(SBHIconManager *)self iconModel];
  v6 = [iconModel applicationIconForBundleIdentifier:identifierCopy];

  application = [v6 application];

  return application;
}

- (id)addApplicationPlaceholders:(id)placeholders
{
  v30 = *MEMORY[0x1E69E9840];
  placeholdersCopy = placeholders;
  iconModel = [(SBHIconManager *)self iconModel];
  rootFolder = [(SBHIconManager *)self rootFolder];
  v21 = [MEMORY[0x1E695DFA8] set];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = placeholdersCopy;
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
        applicationBundleIdentifier = [v10 applicationBundleIdentifier];
        v12 = [iconModel applicationIconsForBundleIdentifier:applicationBundleIdentifier];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __45__SBHIconManager_addApplicationPlaceholders___block_invoke;
        v23[3] = &unk_1E808FDE8;
        v13 = v12;
        v24 = v13;
        [(SBHIconManager *)self enumerateAllIconImageCachesUsingBlock:v23];
        v14 = [iconModel addApplicationPlaceholder:v10];
        if (v14)
        {
          [v21 addObject:v14];
          v15 = [rootFolder indexPathForIcon:v14];

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
      [iconModel saveIconStateIfNeeded];
    }
  }

  else
  {
  }

  return v21;
}

- (id)replaceApplicationPlaceholderWithApplication:(id)application
{
  v22 = *MEMORY[0x1E69E9840];
  applicationCopy = application;
  iconModel = [(SBHIconManager *)self iconModel];
  bundleIdentifier = [applicationCopy bundleIdentifier];
  v7 = [iconModel applicationIconsForBundleIdentifier:bundleIdentifier];
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

          [*(*(&v16 + 1) + 8 * i) replaceIconDataSourcesWithApplication:{applicationCopy, v16}];
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }

    v7 = v8;
  }

  else
  {
    v8 = [iconModel addApplication:applicationCopy];
    if (v8)
    {
      [(SBHIconManager *)self addNewIconToDesignatedLocation:v8 options:4];
      v20 = v8;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];

      v7 = v13;
    }
  }

  firstObject = [v7 firstObject];

  return firstObject;
}

- (void)replaceApplicationPlaceholderWithApplication:(id)application completionHandler:(id)handler
{
  handlerCopy = handler;
  applicationCopy = application;
  iconModel = [(SBHIconManager *)self iconModel];
  v8 = [iconModel addApplication:applicationCopy];

  rootFolder = [(SBHIconManager *)self rootFolder];
  v10 = [rootFolder indexPathForIcon:v8];

  if (!v10)
  {
    [(SBHIconManager *)self addNewIconToDesignatedLocation:v8 options:4];
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v8);
  }
}

- (void)uninstallIcon:(id)icon animate:(BOOL)animate completion:(id)completion
{
  animateCopy = animate;
  v23 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  completionCopy = completion;
  if (iconCopy)
  {
    if (![iconCopy isUninstalled])
    {
      v10 = SBLogIcon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        v20 = animateCopy;
        v21 = 2112;
        v22 = iconCopy;
        _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "Uninstall icon animated=%{BOOL}u : %@", buf, 0x12u);
      }

      [iconCopy setUninstalled];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __51__SBHIconManager_uninstallIcon_animate_completion___block_invoke;
      v15[3] = &unk_1E808FE10;
      v16 = iconCopy;
      selfCopy = self;
      v18 = completionCopy;
      [(SBHIconManager *)self removeIcon:v16 options:animateCopy completion:v15];

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

      if (completionCopy)
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
    v20 = animateCopy;
    v21 = 2112;
    v22 = iconCopy;
    _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_DEFAULT, "Ignoring uninstall icon animated=%{BOOL}u because it is already uninstalled : %@", buf, 0x12u);
  }

  if (completionCopy)
  {
LABEL_12:
    (*(completionCopy + 2))(completionCopy, 0);
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

- (void)addIconToIgnoredList:(id)list options:(unint64_t)options completion:(id)completion
{
  optionsCopy = options;
  v57 = *MEMORY[0x1E69E9840];
  listCopy = list;
  completionCopy = completion;
  if (listCopy)
  {
    v10 = optionsCopy & 1;
    v11 = SBLogIcon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v54 = optionsCopy & 1;
      v55 = 2112;
      v56 = listCopy;
      _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, "Uninstall icon animated=%{BOOL}u : %@", buf, 0x12u);
    }

    if ([listCopy isFolderIcon] && !-[SBHIconManager canAddIconToIgnoredList:](self, "canAddIconToIgnoredList:", listCopy))
    {
      folder = [listCopy folder];
      allIcons = [folder allIcons];
      v13 = [allIcons copy];

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
    iconModel = [(SBHIconManager *)self iconModel];
    if ([listCopy isLeafIcon] && (objc_msgSend(listCopy, "applicationBundleID"), (v22 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v23 = v22;
      v24 = [iconModel applicationIconsForBundleIdentifier:v22];

      if ((optionsCopy & 2) != 0)
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

        if (completionCopy)
        {
          completionCopy[2](completionCopy, 1);
        }

LABEL_43:

        goto LABEL_44;
      }
    }

    else
    {
      v24 = MEMORY[0x1E695E0F0];
      if ((optionsCopy & 2) != 0)
      {
        goto LABEL_20;
      }
    }

    if ([listCopy isApplicationIcon] && objc_msgSend(v24, "count") >= 2)
    {
      if ([listCopy leafIdentifierAndApplicationBundleIDMatches])
      {
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __58__SBHIconManager_addIconToIgnoredList_options_completion___block_invoke;
        v41[3] = &unk_1E808FE38;
        listCopy = listCopy;
        v42 = listCopy;
        v30 = [v24 indexOfObjectPassingTest:v41];
        if (v30 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v31 = 0;
        }

        else
        {
          v31 = [v24 objectAtIndex:v30];
        }

        rootFolder = [iconModel rootFolder];
        v36 = rootFolder;
        if (v31)
        {
          [rootFolder swapIcon:listCopy withIcon:v31 options:0];
          v37 = v31;

          listCopy = v37;
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
    v40 = completionCopy;
    [(SBHIconManager *)self removeIcon:listCopy options:v10 completion:v39];

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

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
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

- (BOOL)canAddIconToIgnoredList:(id)list
{
  listCopy = list;
  if ([listCopy isLeafIcon] && (objc_msgSend(listCopy, "isWidgetIcon") & 1) == 0)
  {
    delegate = [(SBHIconManager *)self delegate];
    v5 = (objc_opt_respondsToSelector() & 1) == 0 || [delegate iconManager:self canAddIconToIgnoredList:listCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)removeIcon:(id)icon options:(unint64_t)options completion:(id)completion
{
  iconCopy = icon;
  completionCopy = completion;
  if (iconCopy)
  {
    rootFolder = [(SBHIconManager *)self rootFolder];
    v11 = [rootFolder indexPathForIcon:iconCopy];
    iconModel = [(SBHIconManager *)self iconModel];
    gridCellInfoOptions = [(SBHIconManager *)self gridCellInfoOptions];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__SBHIconManager_removeIcon_options_completion___block_invoke;
    aBlock[3] = &unk_1E808FE60;
    v14 = iconModel;
    v40 = v14;
    v15 = rootFolder;
    v41 = v15;
    v42 = gridCellInfoOptions;
    optionsCopy = options;
    v16 = _Block_copy(aBlock);
    if (v11)
    {
      v37 = v14;
      v17 = [v15 folderContainingIndexPath:v11 relativeIndexPath:0];
      v18 = [(SBHIconManager *)self iconListViewForIndexPath:v11];
      v19 = [v18 displayedIconViewForIcon:iconCopy];
      v20 = v19;
      if (v19)
      {
        [v19 setAllowsEditingAnimation:0];
        [v18 markIcon:iconCopy asNeedingAnimation:0];
      }

      v21 = [v17 startCoalescingContentChangesForReason:@"SBIconManager.removeIcon"];
      v16[2](v16, iconCopy);
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
          icon = [v17 icon];
          [(SBHIconManager *)self uninstallIcon:icon animate:1];
        }
      }

      v38 = v11;
      gridSizeClass = [iconCopy gridSizeClass];
      if (gridSizeClass == @"SBHIconGridSizeClassDefault")
      {
        v34 = 0;
      }

      else
      {
        [iconCopy gridSizeClass];
        v35 = completionCopy;
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
        completionCopy = v35;
      }

      [(SBHIconManager *)self layoutIconListsWithAnimationType:v34];
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1);
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

      if ([iconCopy isLeafIcon] && objc_msgSend(v14, "shouldSkipAddingIcon:toRootFolder:", iconCopy, v15))
      {
        v16[2](v16, iconCopy);
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0);
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

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
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

- (void)addNewIconsToDesignatedLocations:(id)locations saveIconState:(BOOL)state
{
  stateCopy = state;
  v17 = *MEMORY[0x1E69E9840];
  locationsCopy = locations;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [locationsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(locationsCopy);
        }

        [(SBHIconManager *)self addNewIconToDesignatedLocation:*(*(&v12 + 1) + 8 * v10++) options:0];
      }

      while (v8 != v10);
      v8 = [locationsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if (stateCopy)
  {
    iconModel = [(SBHIconManager *)self iconModel];
    [iconModel saveIconStateIfNeeded];
  }
}

- (void)addNewIconToDesignatedLocation:(id)location options:(unint64_t)options
{
  locationCopy = location;
  iconModel = [(SBHIconManager *)self iconModel];
  if ((options & 8) != 0)
  {
    [(SBHIconManager *)self addReasonToIgnoreUserPreferenceForAddingNewIconsToHomeScreen:@"SBHIconManagerAddNewIconOverridingUserPreference"];
  }

  [iconModel addIconToDesignatedLocation:locationCopy options:(options >> 3) & 0xE | (options >> 2) & 1 listGridCellInfoOptions:{-[SBHIconManager gridCellInfoOptions](self, "gridCellInfoOptions")}];
  rootFolder = [iconModel rootFolder];
  v9 = [rootFolder indexPathForIcon:locationCopy];
  if ((options & 8) != 0)
  {
    [(SBHIconManager *)self removeReasonToIgnoreUserPreferenceForAddingNewIconsToHomeScreen:@"SBHIconManagerAddNewIconOverridingUserPreference"];
  }

  v10 = options & 4;
  if (v9)
  {
    v11 = [(SBHIconManager *)self iconListViewForIndexPath:v9];
  }

  else
  {
    v11 = 0;
  }

  [v11 markIcon:locationCopy asNeedingAnimation:1];
  [v11 layoutIconsIfNeededWithAnimationType:0 options:0];
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  if ((options & 2) != 0 && v9)
  {
    v13 = options & 1;
    v14 = [rootFolderController pageIndexForIconListModelIndex:SBFolderRelativeListIndex(v9)];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57__SBHIconManager_addNewIconToDesignatedLocation_options___block_invoke;
    v15[3] = &unk_1E808B1B0;
    v16 = rootFolderController;
    v17 = v14;
    v18 = v13;
    [(SBHIconManager *)self performAfterIconContextMenuDismissesUsingBlock:v15];
  }

  if (v10)
  {
    [iconModel saveIconStateIfNeeded];
  }
}

- (void)addReasonToIgnoreUserPreferenceForAddingNewIconsToHomeScreen:(id)screen
{
  v11 = *MEMORY[0x1E69E9840];
  screenCopy = screen;
  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = screenCopy;
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

  [(NSCountedSet *)reasonsToIgnoreUserPreferenceForAddingNewIconsToHomeScreen addObject:screenCopy];
}

- (void)removeReasonToIgnoreUserPreferenceForAddingNewIconsToHomeScreen:(id)screen
{
  v8 = *MEMORY[0x1E69E9840];
  screenCopy = screen;
  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = screenCopy;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "End overriding user preference for adding new icons to the home screen for reason: %@", &v6, 0xCu);
  }

  [(NSCountedSet *)self->_reasonsToIgnoreUserPreferenceForAddingNewIconsToHomeScreen removeObject:screenCopy];
}

- (void)scrollToIconListContainingIcon:(id)icon animate:(BOOL)animate
{
  animateCopy = animate;
  iconCopy = icon;
  rootFolder = [(SBHIconManager *)self rootFolder];
  rootFolder2 = [(SBHIconManager *)self rootFolder];
  v9 = [rootFolder2 indexPathForIcon:iconCopy];
  v15 = 0;
  v10 = [rootFolder folderContainingIndexPath:v9 relativeIndexPath:&v15];
  v11 = v15;

  if (v10)
  {
    v12 = SBFolderRelativeListIndex(v11);
    rootFolder3 = [(SBHIconManager *)self rootFolder];

    if (v10 == rootFolder3)
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

      rootFolderController = [(SBHIconManager *)self rootFolderController];
      [rootFolderController setCurrentPageIndex:objc_msgSend(rootFolderController animated:{"pageIndexForIconListModelIndex:", v12), animateCopy}];
    }

    else
    {
      rootFolderController = [(SBHIconManager *)self _currentFolderController];
      [rootFolderController setCurrentPageIndexToListDirectlyContainingIcon:iconCopy animated:animateCopy];
    }
  }

LABEL_8:
}

- (BOOL)_shouldLibraryOverlayAllowSwipeToDismissGesture:(id)gesture
{
  gestureCopy = gesture;
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  view = [gestureCopy view];

  window = [view window];
  windowScene = [window windowScene];
  view2 = [rootFolderController view];
  window2 = [view2 window];
  windowScene2 = [window2 windowScene];

  if (windowScene == windowScene2 && ((v13 = [rootFolderController currentPageIndex], v13 == objc_msgSend(rootFolderController, "trailingCustomViewPageIndex")) || objc_msgSend(rootFolderController, "destinationPageState") == 4))
  {
    v12 = [rootFolderController isScrollTracking] ^ 1;
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (void)_scrollToLastIconPageIfNecessaryForLibraryOverlayDismissal:(id)dismissal
{
  v17 = *MEMORY[0x1E69E9840];
  dismissalCopy = dismissal;
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  view = [dismissalCopy view];

  window = [view window];
  windowScene = [window windowScene];
  view2 = [rootFolderController view];
  window2 = [view2 window];
  windowScene2 = [window2 windowScene];

  if (windowScene == windowScene2)
  {
    currentPageIndex = [rootFolderController currentPageIndex];
    if ((currentPageIndex == [rootFolderController trailingCustomViewPageIndex] || objc_msgSend(rootFolderController, "destinationPageState") == 4) && (objc_msgSend(rootFolderController, "isScrollTracking") & 1) == 0 && !-[SBHIconManager disablesScrollingToLastIconPageForLibraryDismissal](self, "disablesScrollingToLastIconPageForLibraryDismissal"))
    {
      contentVisibility = [(SBHIconManager *)self contentVisibility];
      v14 = SBLogIcon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16[0] = 67109120;
        v16[1] = contentVisibility != 2;
        _os_log_impl(&dword_1BEB18000, v14, OS_LOG_TYPE_DEFAULT, "Scrolling to last icon page due to modal library dismissal; animating scroll: %{BOOL}u", v16, 8u);
      }

      lastIconPageIndex = [rootFolderController lastIconPageIndex];
      if (contentVisibility == 2)
      {
        [rootFolderController setCurrentPageIndex:lastIconPageIndex animated:0];
      }

      else
      {
        [rootFolderController scrollUsingDecelerationAnimationToPageIndex:lastIconPageIndex withCompletionHandler:0];
      }
    }
  }
}

- (void)animateToDefaultStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  [rootFolderController scrollUsingDecelerationAnimationToDefaultPageWithCompletionHandler:handlerCopy];
}

- (void)setIconToReveal:(id)reveal revealingPrevious:(BOOL)previous
{
  previousCopy = previous;
  revealCopy = reveal;
  iconToReveal = self->_iconToReveal;
  if (iconToReveal != revealCopy)
  {
    v10 = revealCopy;
    if (iconToReveal)
    {
      v9 = !previousCopy;
    }

    else
    {
      v9 = 1;
    }

    if (!v9 && ([(SBIcon *)iconToReveal isEqual:revealCopy]& 1) == 0)
    {
      [(SBHIconManager *)self addNewIconToDesignatedLocation:self->_iconToReveal options:4];
    }

    objc_storeStrong(&self->_iconToReveal, reveal);
    revealCopy = v10;
  }

  MEMORY[0x1EEE66BB8](iconToReveal, revealCopy);
}

- (void)finishInstallingIconAnimated:(BOOL)animated
{
  animatedCopy = animated;
  iconToReveal = [(SBHIconManager *)self iconToReveal];
  if (iconToReveal)
  {
    rootFolder = [(SBHIconManager *)self rootFolder];
    v6 = [rootFolder containsIcon:iconToReveal];

    if ((v6 & 1) == 0)
    {
      if (animatedCopy)
      {
        v7 = 5;
      }

      else
      {
        v7 = 4;
      }

      [(SBHIconManager *)self addNewIconToDesignatedLocation:iconToReveal options:v7];
    }
  }

  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManagerDidFinishInstallForIcon:self];
  }

  [(SBHIconManager *)self setIconToReveal:0 revealingPrevious:0];
  [(SBHIconModel *)self->_iconModel saveIconStateIfNeeded];
}

- (void)tryScrollToIconToRevealAnimated:(BOOL)animated
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = MEMORY[0x1BFB4EF60](animated, a2);
  v7 = [v5 stringWithFormat:@"tryScrollToIconToRevealAnimated:%@", v6];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__SBHIconManager_tryScrollToIconToRevealAnimated___block_invoke;
  v8[3] = &unk_1E80897D8;
  v8[4] = self;
  animatedCopy = animated;
  [(SBHIconManager *)self _enqueueTransitionName:v7 withHandler:v8];
}

- (void)_tryScrollToIconToRevealAnimated:(BOOL)animated
{
  animatedCopy = animated;
  rootViewController = [(SBHIconManager *)self rootViewController];
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  iconToReveal = [(SBHIconManager *)self iconToReveal];
  if (iconToReveal)
  {
    if (([rootFolderController isLeadingCustomViewVisible] & 1) != 0 || objc_msgSend(rootFolderController, "isPullDownSearchVisible"))
    {
      [(SBHIconManager *)self finishInstallingIconAnimated:0];
    }

    else
    {
      rootFolder = [(SBHIconManager *)self rootFolder];
      v9 = [rootFolder indexPathForIcon:iconToReveal];

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
      v12 = animatedCopy;
      [rootViewController revealIcon:iconToReveal animated:animatedCopy completionHandler:v11];
    }
  }
}

- (void)revealIcon:(id)icon animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  iconCopy = icon;
  handlerCopy = handler;
  rootViewController = [(SBHIconManager *)self rootViewController];
  rootFolder = [(SBHIconManager *)self rootFolder];
  v12 = [rootFolder indexPathForIcon:iconCopy];
  if (v12)
  {
    v13 = [rootFolder folderContainingIndexPath:v12 relativeIndexPath:0];
    openedFolderController = [(SBHIconManager *)self openedFolderController];
    folder = [openedFolderController folder];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __56__SBHIconManager_revealIcon_animated_completionHandler___block_invoke;
    aBlock[3] = &unk_1E808FE88;
    v23 = rootViewController;
    v15 = rootViewController;
    v36 = v15;
    v37 = iconCopy;
    v39 = animatedCopy;
    v24 = handlerCopy;
    v38 = handlerCopy;
    v16 = _Block_copy(aBlock);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __56__SBHIconManager_revealIcon_animated_completionHandler___block_invoke_2;
    v27[3] = &unk_1E808FED8;
    v17 = v13;
    v28 = v17;
    v29 = rootFolder;
    v18 = folder;
    v30 = v18;
    v34 = animatedCopy;
    v31 = v15;
    selfCopy = self;
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
      [(SBHIconManager *)self popExpandedIconAnimated:animatedCopy completionHandler:v25];
    }

    rootViewController = v23;
    handlerCopy = v24;
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
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

- (void)layoutIconListsWithAnimationType:(int64_t)type forceRelayout:(BOOL)relayout
{
  relayoutCopy = relayout;
  v30 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  folderControllers = [rootFolderController folderControllers];

  v9 = [folderControllers countByEnumeratingWithState:&v24 objects:v29 count:16];
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
          objc_enumerationMutation(folderControllers);
        }

        [*(*(&v24 + 1) + 8 * v12++) layoutIconListsWithAnimationType:type forceRelayout:relayoutCopy];
      }

      while (v10 != v12);
      v10 = [folderControllers countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v10);
  }

  floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
  [floatingDockViewController layoutUserControlledIconListsWithAnimationType:type forceRelayout:relayoutCopy];

  _effectiveTodayViewController = [(SBHIconManager *)self _effectiveTodayViewController];
  [_effectiveTodayViewController layoutIconListViewWithAnimationType:type forceRelayout:relayoutCopy];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  _libraryViewControllers = [(SBHIconManager *)self _libraryViewControllers];
  v16 = [_libraryViewControllers countByEnumeratingWithState:&v20 objects:v28 count:16];
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
          objc_enumerationMutation(_libraryViewControllers);
        }

        [*(*(&v20 + 1) + 8 * v19++) layoutIconListsWithAnimationType:type forceRelayout:relayoutCopy];
      }

      while (v17 != v19);
      v17 = [_libraryViewControllers countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v17);
  }
}

- (void)unscatterAnimated:(BOOL)animated afterDelay:(double)delay withCompletion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  [(SBHIconManager *)self setAnimatingForUnscatter:1];
  [(SBHIconManager *)self setEditing:0];
  [(SBHIconManager *)self _ensureRootFolderController];
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  if (rootFolderController)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__SBHIconManager_unscatterAnimated_afterDelay_withCompletion___block_invoke;
    v10[3] = &unk_1E808B3C0;
    v10[4] = self;
    v11 = completionCopy;
    [rootFolderController unscatterAnimated:animatedCopy afterDelay:v10 withCompletion:delay];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
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

- (void)getListView:(id *)view folder:(id *)folder relativePath:(id *)path forIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  rootFolder = [(SBHIconManager *)self rootFolder];
  v23 = 0;
  v12 = [rootFolder folderContainingIndexPath:indexPathCopy relativeIndexPath:&v23];

  v13 = v23;
  if (view)
  {
    rootFolderController = [(SBHIconManager *)self rootFolderController];
    v15 = [rootFolderController folderControllerForFolder:v12];
    if ([v15 isOpen])
    {
      v16 = SBFolderRelativeListIndex(v13);
      listView = [v15 iconListViewForIconListModelIndex:v16];
      if (listView)
      {
LABEL_13:
        v20 = listView;
        *view = listView;

        goto LABEL_14;
      }

      if ([v12 isRootFolder])
      {
        switch(v16)
        {
          case 20000:
            _effectiveTodayViewController = [(SBHIconManager *)self _effectiveTodayViewController];
            listView = [_effectiveTodayViewController listView];

            goto LABEL_13;
          case 10000:
            floatingDockListView = [(SBHIconManager *)self floatingDockListView];
LABEL_11:
            listView = floatingDockListView;
            goto LABEL_13;
          case 40000:
            floatingDockListView = [(SBHIconManager *)self floatingDockUtilitiesListView];
            goto LABEL_11;
        }
      }
    }

    listView = 0;
    goto LABEL_13;
  }

LABEL_14:
  if (folder)
  {
    v21 = v12;
    *folder = v12;
  }

  if (path)
  {
    v22 = v13;
    *path = v13;
  }
}

- (id)iconListViewForIndexPath:(id)path
{
  v5 = 0;
  [(SBHIconManager *)self getListView:&v5 folder:0 relativePath:0 forIndexPath:path];
  v3 = v5;

  return v3;
}

- (SBFolderIconImageCache)folderIconImageCache
{
  p_folderIconImageCache = &self->_folderIconImageCache;
  folderIconImageCache = self->_folderIconImageCache;
  if (!folderIconImageCache)
  {
    listLayoutProvider = [(SBHIconManager *)self listLayoutProvider];
    v6 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationFolder"];

    v7 = [SBFolderIconImageCache alloc];
    iconImageCache = [(SBHIconManager *)self iconImageCache];
    v9 = [(SBFolderIconImageCache *)v7 initWithListLayout:v6 iconImageCache:iconImageCache];
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
    listLayoutProvider = [(SBHIconManager *)self listLayoutProvider];
    v5 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationRoot"];
    [v5 iconImageInfo];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [[SBHIconImageCache alloc] initWithName:@"iconImages" iconImageInfo:v7, v9, v11, v13];
    v15 = self->_iconImageCache;
    self->_iconImageCache = v14;

    delegate = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate iconManager:self willUseIconImageCache:self->_iconImageCache];
    }

    iconImageCache = self->_iconImageCache;
  }

  return iconImageCache;
}

- (void)enumerateAllIconImageCachesUsingBlock:(id)block
{
  if (self->_iconImageCache)
  {
    (*(block + 2))(block);
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
  listLayoutProvider = [(SBHIconManager *)self listLayoutProvider];
  v3 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationRoot"];

  return v3;
}

- (SBIconImageInfo)rootIconImageInfo
{
  iconImageCache = [(SBHIconManager *)self iconImageCache];
  [iconImageCache iconImageInfo];

  return result;
}

- (SBIconImageInfo)folderMiniIconImageInfo
{
  rootListLayout = [(SBHIconManager *)self rootListLayout];
  SBHIconListLayoutFolderIconGridCellIconImageInfo(rootListLayout);

  return result;
}

- (id)addWidgetSheetConfigurationManagerCreatingIfNecessary:(BOOL)necessary
{
  addWidgetSheetConfigurationManager = self->_addWidgetSheetConfigurationManager;
  if (addWidgetSheetConfigurationManager)
  {
    v5 = 1;
  }

  else
  {
    v5 = !necessary;
  }

  if (!v5)
  {
    v6 = [SBHAddWidgetSheetConfigurationManager alloc];
    widgetExtensionProvider = [(SBHIconManager *)self widgetExtensionProvider];
    v8 = [(SBHAddWidgetSheetConfigurationManager *)v6 initWithWidgetExtensionProvider:widgetExtensionProvider];

    [(SBHAddWidgetSheetConfigurationManager *)v8 setConfigurationManagerDelegate:self];
    iconModel = [(SBHIconManager *)self iconModel];
    [(SBHAddWidgetSheetConfigurationManager *)v8 setIconModel:iconModel];

    listLayoutProvider = [(SBHIconManager *)self listLayoutProvider];
    [(SBHAddWidgetSheetConfigurationManager *)v8 setListLayoutProvider:listLayoutProvider];

    delegate = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v12 = [delegate addWidgetSheetStyleForIconManager:self];
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

- (BOOL)shouldRecycleIconView:(id)view
{
  viewCopy = view;
  if (!-[SBHIconManager recyclesIconViews](self, "recyclesIconViews") || ([viewCopy _wantsAutolayout] & 1) != 0 || (-[SBHIconManager iconDragManager](self, "iconDragManager"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isTrackingDragOriginatingFromIconView:", viewCopy), v5, (v6 & 1) != 0) || (-[SBHIconManager iconDragManager](self, "iconDragManager"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isTrackingDropIntoDestinationIconView:", viewCopy), v7, (v8 & 1) != 0) || (objc_msgSend(viewCopy, "isShowingContextMenu") & 1) != 0 || (objc_msgSend(viewCopy, "isShowingConfigurationCard") & 1) != 0 || (objc_msgSend(viewCopy, "isCursorActive") & 1) != 0)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = [viewCopy isCrossfadingImageWithView] ^ 1;
  }

  return v9;
}

- (BOOL)isRootFolderContentVisible
{
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate isRootFolderContentVisibleForIconManager:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)isIconContentPossiblyVisibleOverApplication
{
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate isIconContentPossiblyVisibleOverApplicationForIconManager:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setContentVisibility:(unint64_t)visibility
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_contentVisibility != visibility)
  {
    v5 = SBLogIcon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = SBHStringFromContentVisibility(visibility);
      v15 = 138543362;
      v16 = v6;
      _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "Changing icon manager content visibility to %{public}@", &v15, 0xCu);
    }

    self->_contentVisibility = visibility;
    rootViewController = [(SBHIconManager *)self rootViewController];
    [rootViewController setContentVisibility:{-[SBHIconManager effectiveRootFolderControllerContentVisibility](self, "effectiveRootFolderControllerContentVisibility")}];

    floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
    if ([floatingDockViewController isPresentingLibrary])
    {
      libraryViewController = [floatingDockViewController libraryViewController];
      [libraryViewController setContentVisibility:0];
    }

    if (visibility == 2 && [(SBHIconManager *)self isShowingModalInteraction])
    {
      [(SBHIconManager *)self dismissModalInteractionsImmediately];
    }

    contentHiddenPauseLightAngleUpdatesAssertion = [(SBHIconManager *)self contentHiddenPauseLightAngleUpdatesAssertion];
    v11 = contentHiddenPauseLightAngleUpdatesAssertion;
    if (visibility != 2 || contentHiddenPauseLightAngleUpdatesAssertion)
    {
      if (visibility != 2 && contentHiddenPauseLightAngleUpdatesAssertion)
      {
        [contentHiddenPauseLightAngleUpdatesAssertion invalidate];
        [(SBHIconManager *)self setContentHiddenPauseLightAngleUpdatesAssertion:0];
      }
    }

    else
    {
      v12 = +[SBHLightSourceManager sharedManager];
      v13 = [v12 pauseUpdatesForReason:@"content hidden"];

      [(SBHIconManager *)self setContentHiddenPauseLightAngleUpdatesAssertion:v13];
    }

    usageMonitor = [(SBHIconManager *)self usageMonitor];
    [usageMonitor noteIconManagerContentOccludedChanged];

    if (visibility == 2 && self->_labelCachesNecessitateCleanup)
    {
      [(SBHIconManager *)self _cleanupLabelCachesWithReason:@"content is hidden; we can cleanup now"];
    }
  }
}

- (void)setIdleModeText:(id)text
{
  textCopy = text;
  rootViewController = [(SBHIconManager *)self rootViewController];
  [rootViewController setIdleText:textCopy];
}

- (void)removeAllIconAnimations
{
  currentRootIconList = [(SBHIconManager *)self currentRootIconList];
  [currentRootIconList removeAllIconAnimations];

  dockListView = [(SBHIconManager *)self dockListView];
  layer = [dockListView layer];
  [layer removeAllAnimations];
}

- (void)noteFloatingDockWillChangeHeight
{
  rootViewController = [(SBHIconManager *)self rootViewController];
  contentView = [rootViewController contentView];

  [contentView setNeedsLayout];
}

- (void)noteFloatingDockWillAnimateChangeInHeight
{
  rootViewController = [(SBHIconManager *)self rootViewController];
  contentView = [rootViewController contentView];

  [contentView layoutIfNeeded];
}

- (void)noteIconViewWillZoomDown:(id)down
{
  downCopy = down;
  v4 = [(SBHIconManager *)self floatingDockViewControllerForView:?];
  v5 = v4;
  if (v4)
  {
    libraryViewController = [v4 libraryViewController];
    if (([v5 isPresentingLibrary] & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    overlayLibraryViewController = [(SBHIconManager *)self overlayLibraryViewController];
    v8 = overlayLibraryViewController;
    if (overlayLibraryViewController)
    {
      trailingLibraryViewController = overlayLibraryViewController;
    }

    else
    {
      trailingLibraryViewController = [(SBHIconManager *)self trailingLibraryViewController];
    }

    libraryViewController = trailingLibraryViewController;

    if (![(SBHIconManager *)self isMainDisplayLibraryViewVisible])
    {
      goto LABEL_10;
    }
  }

  location = [downCopy location];
  v11 = SBIconLocationGroupContainsLocation(@"SBIconLocationGroupAppLibrary", location);

  if (v11)
  {
    [libraryViewController noteIconViewWillZoomDown:downCopy];
  }

LABEL_10:
  if ([(SBHIconManager *)self isOverlayTodayViewVisible])
  {
    overlayTodayViewController = [(SBHIconManager *)self overlayTodayViewController];
    v13 = [overlayTodayViewController isDisplayingIconView:downCopy];

    if (v13)
    {
      overlayTodayViewController2 = [(SBHIconManager *)self overlayTodayViewController];
      [overlayTodayViewController2 noteIconViewWillZoomDown:downCopy];
    }
  }
}

- (id)viewControllerForPresentingViewControllers
{
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate viewControllerForPresentingViewControllersForIconManager:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)accessibilityTintColorForScreenRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [delegate iconManager:self accessibilityTintColorForScreenRect:{x, y, width, height}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)moveIconToHiddenPage:(id)page
{
  pageCopy = page;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__SBHIconManager_moveIconToHiddenPage___block_invoke;
  v6[3] = &unk_1E80893F0;
  v6[4] = self;
  v7 = pageCopy;
  v5 = pageCopy;
  [(SBHIconManager *)self removeIcon:v5 options:1 completion:v6];
}

void __39__SBHIconManager_moveIconToHiddenPage___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) rootFolder];
  [v2 removeIcon:*(a1 + 40) options:0];
}

- (BOOL)resetIconLayoutWithOptions:(unint64_t)options
{
  optionsCopy = options;
  [(SBHIconManager *)self addReasonToIgnoreUserPreferenceForAddingNewIconsToHomeScreen:@"resetIconLayout"];
  iconModel = [(SBHIconManager *)self iconModel];
  v6 = [iconModel deleteIconStateWithOptions:optionsCopy & 1];
  [iconModel clearDesiredIconStateWithOptions:optionsCopy & 1];
  [(SBHIconManager *)self removeReasonToIgnoreUserPreferenceForAddingNewIconsToHomeScreen:@"resetIconLayout"];

  return v6;
}

- (BOOL)resetTodayLayout
{
  iconModel = [(SBHIconManager *)self iconModel];
  defaultIconState = [iconModel defaultIconState];
  v4 = [[SBHIconStateUnarchiver alloc] initWithArchive:defaultIconState iconModel:iconModel];
  unarchive = [(SBHIconStateUnarchiver *)v4 unarchive];
  if ([unarchive isValid])
  {
    rootFolder = [unarchive rootFolder];
    rootFolder2 = [iconModel rootFolder];
    v8 = rootFolder2;
    if (rootFolder)
    {
      v9 = rootFolder2 == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = !v9;
    if (!v9)
    {
      todayList = [rootFolder2 todayList];
      icons = [todayList icons];
      [todayList removeAllIcons];
      [iconModel removeIcons:icons];
      todayList2 = [rootFolder todayList];
      icons2 = [todayList2 icons];

      v14 = [todayList addIcons:icons2];
      [iconModel saveIconStateIfNeeded];
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
  iconModel = [(SBHIconManager *)self iconModel];
  rootFolder = [iconModel rootFolder];
  todayList = [rootFolder todayList];
  [todayList removeAllIcons];

  [iconModel saveIconStateIfNeeded];
  return 1;
}

- (void)minimumHomeScreenScaleDidChange
{
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  [rootFolderController minimumHomeScreenScaleDidChange];
}

- (void)runDownloadingIconTest
{
  v34 = *MEMORY[0x1E69E9840];
  iconModel = [(SBHIconManager *)self iconModel];
  leafIcons = [iconModel leafIcons];
  v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(leafIcons, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = leafIcons;
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
        if ([iconModel isIconVisible:v9] && objc_msgSend(v9, "isApplicationIcon"))
        {
          applicationBundleID = [v9 applicationBundleID];
          application = [v9 application];
          v12 = application;
          if (applicationBundleID)
          {
            v13 = application == 0;
          }

          else
          {
            v13 = 1;
          }

          if (!v13)
          {
            v14 = objc_alloc_init(SBHFakeApplicationPlaceholder);
            [(SBHFakeApplicationPlaceholder *)v14 setApplicationBundleIdentifier:applicationBundleID];
            displayName = [v9 displayName];
            [(SBHFakeApplicationPlaceholder *)v14 setApplicationDisplayName:displayName];

            [v4 addObject:v14];
            [v22 setObject:v12 forKey:applicationBundleID];
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
  selfCopy = self;
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
  iconModel = [(SBHIconManager *)self iconModel];
  leafIcons = [iconModel leafIcons];
  v5 = [leafIcons mutableCopy];

  v6 = [MEMORY[0x1E695DFA8] set];
  v7 = MEMORY[0x1E695DFF0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__SBHIconManager_runRemoveAndRestoreIconTest__block_invoke;
  v11[3] = &unk_1E808FF48;
  v12 = v5;
  selfCopy = self;
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
  iconModel = [(SBHIconManager *)self iconModel];
  leafIcons = [iconModel leafIcons];
  rootFolder = [(SBHIconManager *)self rootFolder];
  ignoredList = [rootFolder ignoredList];
  allObjects = [leafIcons allObjects];
  v7 = [ignoredList allowedIconsForIcons:allObjects];

  v8 = [ignoredList addIcons:v7];
  [rootFolder pruneEmptyFolders];
  [rootFolder compactLists];
}

- (void)removeAllWidgetIcons
{
  iconModel = [(SBHIconManager *)self iconModel];
  widgetIcons = [iconModel widgetIcons];
  allObjects = [widgetIcons allObjects];

  [iconModel removeIcons:allObjects];
}

- (void)removeWidgetIconsFromHomeScreen
{
  iconModel = [(SBHIconManager *)self iconModel];
  rootFolder = [iconModel rootFolder];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__SBHIconManager_removeWidgetIconsFromHomeScreen__block_invoke;
  v6[3] = &unk_1E808E678;
  v7 = v4;
  v5 = v4;
  [rootFolder enumerateListsWithOptions:4 usingBlock:v6];
  [iconModel removeIcons:v5];
}

void __49__SBHIconManager_removeWidgetIconsFromHomeScreen__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 directlyContainedIconsPassingTest:&__block_literal_global_367];
  [*(a1 + 32) addObjectsFromArray:v3];
}

- (void)addFileStackWithURL:(id)l
{
  lCopy = l;
  if ([(SBHIconManager *)self isFloatingDockSupported])
  {
    floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
    if (floatingDockViewController)
    {
      initWithUniqueLeafIdentifier = [[SBHFileStackIcon alloc] initWithUniqueLeafIdentifier];
      [(SBHFileStackIcon *)initWithUniqueLeafIdentifier setUrl:lCopy];
      dockUtilitiesListModel = [floatingDockViewController dockUtilitiesListModel];
      v7 = [dockUtilitiesListModel addIcon:initWithUniqueLeafIdentifier];
    }
  }
}

- (BOOL)hasConfiguredFilesStackWithURL:(id)l
{
  lCopy = l;
  if ([(SBHIconManager *)self isFloatingDockSupported])
  {
    floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
    v6 = floatingDockViewController;
    if (floatingDockViewController)
    {
      dockUtilitiesListModel = [floatingDockViewController dockUtilitiesListModel];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __49__SBHIconManager_hasConfiguredFilesStackWithURL___block_invoke;
      v11[3] = &unk_1E808BFD8;
      v12 = lCopy;
      v8 = [dockUtilitiesListModel iconsPassingTest:v11];
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

- (void)removeFileStackWithURL:(id)l
{
  v20 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if ([(SBHIconManager *)self isFloatingDockSupported])
  {
    floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
    v6 = floatingDockViewController;
    if (floatingDockViewController)
    {
      dockUtilitiesListModel = [floatingDockViewController dockUtilitiesListModel];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __41__SBHIconManager_removeFileStackWithURL___block_invoke;
      v17[3] = &unk_1E808BFD8;
      v18 = lCopy;
      v8 = [dockUtilitiesListModel iconsPassingTest:v17];
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

            [dockUtilitiesListModel removeIcon:*(*(&v13 + 1) + 8 * v12++)];
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
  currentRootIconList = [(SBHIconManager *)self currentRootIconList];
  icons = [currentRootIconList icons];
  v3 = [icons bs_firstObjectPassingTest:&__block_literal_global_370];

  if (v3)
  {
    iconDataSourceCount = [v3 iconDataSourceCount];
    iconDataSources = [v3 iconDataSources];
    activeDataSource = [v3 activeDataSource];
    v7 = [iconDataSources indexOfObject:activeDataSource];

    v8 = arc4random();
    v9 = v8 % iconDataSourceCount;
    if (v9 + 1 == iconDataSourceCount)
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
      v11 = v8 % iconDataSourceCount;
    }

    iconDataSources2 = [v3 iconDataSources];
    v13 = [iconDataSources2 objectAtIndex:v11];

    [v3 setStackChangeReason:1];
    [v3 setActiveDataSource:v13];
  }
}

- (void)toggleSuggestedWidgetInStackForTestRecipe
{
  v16[1] = *MEMORY[0x1E69E9840];
  currentRootIconList = [(SBHIconManager *)self currentRootIconList];
  icons = [currentRootIconList icons];
  v5 = [icons bs_firstObjectPassingTest:&__block_literal_global_372];

  if (v5)
  {
    widgets = [v5 widgets];
    v7 = [widgets bs_firstObjectPassingTest:&__block_literal_global_374];

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
      uniqueIdentifier = [v5 uniqueIdentifier];
      uniqueIdentifier2 = [v7 uniqueIdentifier];
      [(SBHIconManager *)self setTemporaryIntent:v9 forIconWithIdentifier:uniqueIdentifier widgetUniqueIdentifier:uniqueIdentifier2];

      [v5 setStackChangeReason:2];
      v16[0] = v7;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      v13 = MEMORY[0x1E696AC90];
      iconDataSources = [v5 iconDataSources];
      v15 = [v13 indexSetWithIndex:{objc_msgSend(iconDataSources, "count")}];
      [v5 insertIconDataSources:v12 atIndexes:v15];

      [v5 setActiveDataSource:v7];
    }
  }
}

- (void)organizeAllIconsIntoFoldersWithPageCount:(unint64_t)count
{
  iconModel = [(SBHIconManager *)self iconModel];
  rootFolder = [(SBHIconManager *)self rootFolder];
  [iconModel visibleLeafIcons];
  v31 = v30 = self;
  listLayoutProvider = [(SBHIconManager *)self listLayoutProvider];
  v7 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationRoot"];

  v29 = v7;
  v8 = SBHIconListLayoutMaximumIconCount(v7);
  maxListCount = [rootFolder maxListCount];
  if (maxListCount >= count)
  {
    countCopy = count;
  }

  else
  {
    countCopy = maxListCount;
  }

  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:countCopy * v8];
  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:countCopy * v8];
  if (countCopy * v8)
  {
    v13 = 1;
    v14 = countCopy * v8;
    do
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Folder %lu", v13, v29];
      v16 = [iconModel makeFolderWithDisplayName:v15];

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
      anyObject = [v18 anyObject];
      [v18 removeObject:anyObject];
      v21 = [v11 objectAtIndex:v19];
      v22 = [v21 addIcon:anyObject];
      v23 = [v21 containsIcon:anyObject];
      if (v19 + 1 < countCopy * v8)
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

  [rootFolder removeAllLists];
  for (; countCopy; --countCopy)
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
    v28 = [rootFolder addListWithIcons:v27];
  }

  [(SBHIconManager *)v30 layoutIconListsWithAnimationType:-1];
  [(SBHIconManager *)v30 _precacheDataForRootIcons];
}

- (void)organizeAllIconsAcrossPagesWithPageCount:(unint64_t)count
{
  iconModel = [(SBHIconManager *)self iconModel];
  rootFolder = [(SBHIconManager *)self rootFolder];
  visibleLeafIcons = [iconModel visibleLeafIcons];
  allObjects = [visibleLeafIcons allObjects];
  v8 = [allObjects sortedArrayUsingSelector:sel_localizedCompareDisplayNames_];

  listLayoutProvider = [(SBHIconManager *)self listLayoutProvider];
  v10 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationRoot"];

  maxListCount = [rootFolder maxListCount];
  if (maxListCount >= count)
  {
    countCopy = count;
  }

  else
  {
    countCopy = maxListCount;
  }

  v13 = [v8 count];
  v14 = v13 / countCopy;
  v15 = SBHIconListLayoutMaximumIconCount(v10);
  if (v13 / countCopy >= v15)
  {
    v14 = v15;
  }

  [rootFolder removeAllLists];
  v16 = 0;
  if (countCopy <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = countCopy;
  }

  do
  {
    v18 = [v8 subarrayWithRange:{v16 * v14, v14}];
    v19 = [rootFolder addListWithIcons:v18];

    ++v16;
    --v17;
  }

  while (v17);
  v20 = [v8 subarrayWithRange:{v14 * countCopy, v13 - v14 * countCopy}];
  ignoredList = [rootFolder ignoredList];
  v22 = [ignoredList addIcons:v20];

  [(SBHIconManager *)self layoutIconListsWithAnimationType:-1];
}

- (void)randomizeAllIconsAcrossPagesWithPageCount:(unint64_t)count
{
  v71 = *MEMORY[0x1E69E9840];
  iconModel = [(SBHIconManager *)self iconModel];
  rootFolder = [(SBHIconManager *)self rootFolder];
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v59 = rootFolder;
  lists = [rootFolder lists];
  v8 = [lists countByEnumeratingWithState:&v65 objects:v70 count:16];
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
          objc_enumerationMutation(lists);
        }

        v12 = *(*(&v65 + 1) + 8 * i);
        v13 = objc_opt_self();
        [v12 addIconsOfClass:v13 toSet:v6];
      }

      v9 = [lists countByEnumeratingWithState:&v65 objects:v70 count:16];
    }

    while (v9);
  }

  selfCopy = self;
  listLayoutProvider = [(SBHIconManager *)self listLayoutProvider];
  v15 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationRoot"];

  maxListCount = [v59 maxListCount];
  if (maxListCount >= count)
  {
    countCopy = count;
  }

  else
  {
    countCopy = maxListCount;
  }

  v58 = countCopy;
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
      v26 = [iconModel makeFolderWithDisplayName:@"Folder"];
      v27 = v26;
      while ([v26 iconCount] < v25 && objc_msgSend(v6, "count"))
      {
        anyObject = [v6 anyObject];
        if ([v27 canAddIcon:anyObject])
        {
          v29 = [v27 addIcon:anyObject];
        }

        else
        {
          [v20 addObject:anyObject];
        }

        [v6 removeObject:anyObject];

        v26 = v27;
      }

      v30 = [[SBFolderIcon alloc] initWithFolder:v27];
      [v20 addObject:v30];
      [v55 addObject:v27];

      ++v24;
    }

    while (v24 != v23);
  }

  allObjects = [v6 allObjects];
  [v20 addObjectsFromArray:allObjects];

  if (v58)
  {
    v32 = 0;
    __upper_bound = v19 - 4;
    do
    {
      v60 = v32;
      v33 = arc4random_uniform(__upper_bound) + 4;
      addEmptyList = [v59 addEmptyList];
      if (v33)
      {
        v35 = 0;
        while ([v20 count])
        {
          v36 = arc4random_uniform([v20 count]);
          v37 = [v20 objectAtIndex:v36];
          if ([addEmptyList allowsAddingIcon:v37])
          {
            v38 = [addEmptyList addIcon:v37];
            [v20 removeObjectAtIndex:v36];
            ++v35;
          }

          else
          {
            gridSizeClass = [v37 gridSizeClass];
            v40 = gridSizeClass;
            if (gridSizeClass == @"SBHIconGridSizeClassDefault")
            {

LABEL_37:
              break;
            }

            gridSizeClass2 = [v37 gridSizeClass];
            v42 = [gridSizeClass2 isEqualToString:@"SBHIconGridSizeClassDefault"];

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
        lastObject = [v20 lastObject];
        if (!lastObject)
        {
          break;
        }

        v50 = lastObject;
        if ([v48 canAddIcon:lastObject])
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

  [(SBHIconManager *)selfCopy layoutIconListsWithAnimationType:-1];
}

- (void)replaceHomescreenWithWidgets
{
  delegate = [(SBHIconManager *)self delegate];
  v4 = [delegate testSetupForIconManagerWidgetScrollTest:self];

  [(SBHIconManager *)self _resetHomescreenIconStateTo:v4];
}

- (id)addWidgetsToEachPage
{
  v32 = *MEMORY[0x1E69E9840];
  rootFolder = [(SBHIconManager *)self rootFolder];
  widgetExtensionProvider = [(SBHIconManager *)self widgetExtensionProvider];
  sbh_descriptors = [widgetExtensionProvider sbh_descriptors];
  v6 = [sbh_descriptors valueForKey:@"extensionBundleIdentifier"];

  delegate = [(SBHIconManager *)self delegate];
  v8 = [delegate testSetupForIconManagerAddWidgetsToEachPage:self];

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __38__SBHIconManager_addWidgetsToEachPage__block_invoke;
  v29[3] = &unk_1E808FF90;
  v24 = v6;
  v30 = v24;
  v9 = [v8 bs_filter:v29];

  array = [MEMORY[0x1E695DF70] array];
  firstVisibleListIndex = [rootFolder firstVisibleListIndex];
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
          v19 = [rootFolder gridPathWithListAtIndex:firstVisibleListIndex gridCellIndex:0 listGridCellInfoOptions:{-[SBHIconManager gridCellInfoOptions](self, "gridCellInfoOptions")}];
          v20 = [rootFolder insertIcon:v18 atGridPath:v19 options:2];
          v21 = [rootFolder nextVisibleListIndexAfterIndex:firstVisibleListIndex];
          if (v21 == 0x7FFFFFFFFFFFFFFFLL)
          {

            goto LABEL_13;
          }

          firstVisibleListIndex = v21;
          [array addObject:v18];
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

  v22 = [array copy];

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
  delegate = [(SBHIconManager *)self delegate];
  v4 = [delegate testSetupForIconManagerWidgetScrollPerformanceTest:self];

  [(SBHIconManager *)self _resetHomescreenIconStateTo:v4];
}

- (void)_resetHomescreenIconStateTo:(id)to
{
  v31 = *MEMORY[0x1E69E9840];
  toCopy = to;
  rootFolder = [(SBHIconManager *)self rootFolder];
  [rootFolder removeAllLists];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = toCopy;
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
        addEmptyList = [rootFolder addEmptyList];
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
                v17 = [addEmptyList addIcon:v16];
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

  model = [rootFolder model];
  [model saveIconStateIfNeeded];
}

- (id)_iconForDescriptor:(id)descriptor
{
  v37[1] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  sbh_iconDescriptorType = [descriptorCopy sbh_iconDescriptorType];
  if ((sbh_iconDescriptorType - 2) >= 2)
  {
    if (sbh_iconDescriptorType == 1)
    {
      v6 = descriptorCopy;
      selfCopy = self;
      iconModel = [(SBHIconManager *)self iconModel];
      bundleIdentifier = [v6 bundleIdentifier];

      v10 = [iconModel leafIconForIdentifier:bundleIdentifier];

      iconModel2 = [(SBHIconManager *)selfCopy iconModel];
      initWithUniqueLeafIdentifier = [iconModel2 addAdditionalIconMatchingIcon:v10];
    }

    else
    {
      initWithUniqueLeafIdentifier = 0;
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
    selfCopy2 = self;
    v5 = _Block_copy(aBlock);
    if ([descriptorCopy sbh_iconDescriptorType] == 3)
    {
      [descriptorCopy widgetIconDescriptors];
    }

    else
    {
      v37[0] = descriptorCopy;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
    }
    v13 = ;
    initWithUniqueLeafIdentifier = [(SBLeafIcon *)[SBWidgetIcon alloc] initWithUniqueLeafIdentifier];
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
            element = [v17 element];
            [(SBLeafIcon *)initWithUniqueLeafIdentifier addIconDataSource:element];
          }

          else
          {
            element = v5[2](v5, v17);
            if (element)
            {
              gridSizeClassDomain = [(SBHIconManager *)selfCopy2 gridSizeClassDomain];
              v20 = [element sbh_iconDataSourceInDomain:gridSizeClassDomain];
              v21 = SBLogWidgets();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v35 = v20;
                _os_log_impl(&dword_1BEB18000, v21, OS_LOG_TYPE_DEFAULT, "Widget %{public}@ created from descriptor.", buf, 0xCu);
              }

              [(SBLeafIcon *)initWithUniqueLeafIdentifier addIconDataSource:v20];
            }
          }
        }

        v14 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v14);
    }

    sizeClass = [descriptorCopy sizeClass];
    [(SBIcon *)initWithUniqueLeafIdentifier setGridSizeClass:sizeClass];

    _Block_object_dispose(v32, 8);
  }

  return initWithUniqueLeafIdentifier;
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
  rootFolder = [(SBHIconManager *)self rootFolder];
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate testSetupHomeScreenForWidgetScrollPerformanceTest:self];
    v5 = [[SBHTestWidgetStackIconDescriptor alloc] initWithWidgetIconDescriptors:v4];
    v6 = [(SBHIconManager *)self _iconForDescriptor:v5];

    iconDataSources = [v6 iconDataSources];
    v8 = [iconDataSources objectAtIndex:2];
    [v6 setActiveDataSource:v8];

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      todayList = [rootFolder todayList];
      v12 = [todayList insertIcon:v6 atIndex:0];
      _effectiveTodayViewController = [(SBHIconManager *)self _effectiveTodayViewController];
      listView = [_effectiveTodayViewController listView];
      [listView layoutIconsNow];
    }

    else
    {
      todayList = [(SBHIconManager *)self rootFolderController];
      _effectiveTodayViewController = [todayList folderView];
      listView = [rootFolder gridPathWithListAtIndex:objc_msgSend(_effectiveTodayViewController gridCellIndex:"iconListModelIndexForPageIndex:" listGridCellInfoOptions:{objc_msgSend(_effectiveTodayViewController, "currentPageIndex")), 0, -[SBHIconManager gridCellInfoOptions](self, "gridCellInfoOptions")}];
      v15 = [rootFolder insertIcon:v6 atGridPath:listView options:2];
      [todayList layoutIconListsWithAnimationType:-1 forceRelayout:0];
    }
  }
}

- (id)widgetIconWithWidgetExtensionIdentifiers:(id)identifiers widgetKinds:(id)kinds sizeClass:(id)class
{
  classCopy = class;
  kindsCopy = kinds;
  identifiersCopy = identifiers;
  v10 = [[SBWidgetIcon alloc] initWithWidgetExtensionIdentifiers:identifiersCopy widgetKinds:kindsCopy];

  [(SBIcon *)v10 setGridSizeClass:classCopy];

  return v10;
}

- (void)addWidgets:(id)widgets toGridPath:(id)path overflowOptions:(unint64_t)options
{
  v107 = *MEMORY[0x1E69E9840];
  widgetsCopy = widgets;
  pathCopy = path;
  rootFolder = [(SBHIconManager *)self rootFolder];
  if ([(SBHIconManager *)self prototypeSettingSimpleBottomSnaking])
  {
    optionsCopy = options;
    iconGridSizeClassSizes = [(SBHIconManager *)self iconGridSizeClassSizes];
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    obj = widgetsCopy;
    v12 = [obj countByEnumeratingWithState:&v92 objects:v106 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = rootFolder;
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

          gridSizeClass = [*(*(&v92 + 1) + 8 * i) gridSizeClass];
          v15 = [iconGridSizeClassSizes gridSizeAreaForGridSizeClass:gridSizeClass] + v15;
        }

        v13 = [obj countByEnumeratingWithState:&v92 objects:v106 count:16];
      }

      while (v13);
      rootFolder = v14;
    }

    else
    {
      v15 = 0;
    }

    v20 = [rootFolder listAtGridPath:pathCopy];
    numberOfIcons = [v20 numberOfIcons];
    maxNumberOfIcons = [v20 maxNumberOfIcons];
    if (maxNumberOfIcons - numberOfIcons > v15)
    {
      v23 = -1;
    }

    else
    {
      v23 = maxNumberOfIcons - v15;
    }

    v81 = v23;
    if (v23 < 0 || (v24 = numberOfIcons - 1, numberOfIcons - 1 < 0))
    {
      v69 = SBLogWidgetDiscoverabilityMigration();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BEB18000, v69, OS_LOG_TYPE_DEFAULT, "Nothing to bump for onboarding widgets", buf, 2u);
      }

      v70 = [rootFolder insertIcons:obj atGridPath:pathCopy options:optionsCopy];
    }

    else
    {
      v78 = [rootFolder indexOfList:v20];
      array = [MEMORY[0x1E695DF70] array];
      array2 = [MEMORY[0x1E695DF70] array];
      v77 = widgetsCopy;
      if ([(SBHIconManager *)self prototypeSettingBumpLeastUsedApps])
      {
        v73 = numberOfIcons;
        v25 = numberOfIcons - v81;
        atxIconRanker = [(SBHIconManager *)self atxIconRanker];

        if (!atxIconRanker)
        {
          v27 = objc_alloc_init(MEMORY[0x1E698AF00]);
          [(SBHIconManager *)self setAtxIconRanker:v27];
        }

        v72 = numberOfIcons - 1;
        v75 = pathCopy;
        atxIconRanker2 = [(SBHIconManager *)self atxIconRanker];
        v29 = [atxIconRanker2 iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex:v78];

        v30 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v29];
        array3 = [v30 array];

        v32 = [v29 count];
        if (v25 >= v32)
        {
          v33 = v32;
        }

        else
        {
          v33 = v25;
        }

        v34 = [array3 subarrayWithRange:{0, v33}];

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
        v74 = rootFolder;

        defaultWidgetsIconsRestoringRecordOriginalIndex = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecordOriginalIndex];
        [defaultWidgetsIconsRestoringRecordOriginalIndex addObjectsFromArray:v34];

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

              integerValue = [*(*(&v88 + 1) + 8 * j) integerValue];
              if (integerValue < [v20 numberOfIcons])
              {
                v42 = [v20 iconAtIndex:integerValue];
                defaultWidgetsBumpedIconUsageRanking = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsBumpedIconUsageRanking];
                [defaultWidgetsBumpedIconUsageRanking addObject:v42];

                if (!integerValue)
                {
                  goto LABEL_36;
                }

                v44 = integerValue - 1;
                if (v44 >= [v20 numberOfIcons])
                {
                  lastIcon = [v20 lastIcon];
                  if (!lastIcon)
                  {
                    goto LABEL_36;
                  }

LABEL_34:
                  null = lastIcon;
                  v47 = null;
                }

                else
                {
                  lastIcon = [v20 iconAtIndex:v44];
                  if (lastIcon)
                  {
                    goto LABEL_34;
                  }

LABEL_36:
                  null = [MEMORY[0x1E695DFB0] null];
                  v47 = 0;
                }

                defaultWidgetsIconsRestoringRecord = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecord];
                [defaultWidgetsIconsRestoringRecord setObject:null forKey:v42];

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
          defaultWidgetsBumpedIconUsageRanking2 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsBumpedIconUsageRanking];
          defaultWidgetsIconsRestoringRecord2 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecord];
          *buf = 138412546;
          v97 = defaultWidgetsBumpedIconUsageRanking2;
          v98 = 2112;
          v99 = defaultWidgetsIconsRestoringRecord2;
          _os_log_impl(&dword_1BEB18000, v49, OS_LOG_TYPE_DEFAULT, "Adding onboarding widgets by overflow icons: %@ \n usage record: %@", buf, 0x16u);
        }

        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        icons = [v20 icons];
        v53 = [icons countByEnumeratingWithState:&v84 objects:v104 count:16];
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
                objc_enumerationMutation(icons);
              }

              v57 = *(*(&v84 + 1) + 8 * k);
              defaultWidgetsBumpedIconUsageRanking3 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsBumpedIconUsageRanking];
              v59 = [defaultWidgetsBumpedIconUsageRanking3 containsObject:v57];

              if (v59)
              {
                [v20 removeIcon:v57];
                v60 = [v20 addIcon:v57];
              }
            }

            v54 = [icons countByEnumeratingWithState:&v84 objects:v104 count:16];
          }

          while (v54);
        }

        rootFolder = v74;
        pathCopy = v75;
        v24 = v72;
        numberOfIcons = v73;
      }

      v61 = v78 + 1;
      if (v24 >= v81)
      {
        do
        {
          v62 = numberOfIcons - 1;
          if (v62 >= [v20 numberOfIcons])
          {
            break;
          }

          [v20 iconAtIndex:v62];
          v64 = v63 = v62;
          [v20 removeIcon:v64];
          [array insertObject:v64 atIndex:0];
          v65 = [MEMORY[0x1E696AC88] indexPathWithIconIndex:v63 listIndex:v61];
          [array2 insertObject:v65 atIndex:0];

          numberOfIcons = v63;
        }

        while (v63 > v81);
      }

      if ([rootFolder listCount] <= v61)
      {
        addEmptyList = [rootFolder addEmptyList];
      }

      v67 = SBLogWidgetDiscoverabilityMigration();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v97 = obj;
        v98 = 2112;
        v99 = rootFolder;
        v100 = 2112;
        v101 = pathCopy;
        v102 = 1024;
        v103 = optionsCopy;
        _os_log_impl(&dword_1BEB18000, v67, OS_LOG_TYPE_DEFAULT, "Insert icons(%@) to rootFolder(%@) at gridPath(%@) with overflowOptions(%d)", buf, 0x26u);
      }

      v68 = [rootFolder insertIcons:obj atGridPath:pathCopy options:optionsCopy];
      [rootFolder _swapInsertIcons:array atIndexPaths:array2];

      widgetsCopy = v77;
    }
  }

  else
  {
    v19 = [rootFolder insertIcons:widgetsCopy atGridPath:pathCopy options:options];
  }
}

- (void)addWidgetWithIdentifier:(id)identifier toPage:(int64_t)page withSizeClass:(id)class
{
  v13 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v8 = MEMORY[0x1E695DEC8];
  classCopy = class;
  identifierCopy2 = identifier;
  v11 = [v8 arrayWithObjects:&identifierCopy count:1];

  [(SBHIconManager *)self addWidgetStackWithIdentifiers:v11 toPage:page withSizeClass:classCopy, identifierCopy, v13];
}

- (void)addWidgetStackWithIdentifiers:(id)identifiers toPage:(int64_t)page withSizeClass:(id)class
{
  v33 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  classCopy = class;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  selfCopy = self;
  rootFolder = [(SBHIconManager *)self rootFolder];
  v24 = [rootFolder gridPathWithListAtIndex:page gridCellIndex:0 listGridCellInfoOptions:0];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = identifiersCopy;
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
          [array addObject:v20];

          if ([v19 count] < 2)
          {
            [MEMORY[0x1E695DFB0] null];
          }

          else
          {
            [v19 objectAtIndexedSubscript:1];
          }
          null = ;
          v15 = v19;
        }

        else
        {
          [array addObject:v18];
          null = [MEMORY[0x1E695DFB0] null];
        }

        [array2 addObject:null];
      }

      v14 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  v22 = [(SBHIconManager *)selfCopy widgetIconWithWidgetExtensionIdentifiers:array widgetKinds:array2 sizeClass:classCopy];
  v31 = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  [(SBHIconManager *)selfCopy addWidgets:v23 toGridPath:v24 overflowOptions:2];
}

- (void)removeFirstWidgetFromRootFolderListAtIndex:(unint64_t)index
{
  rootFolder = [(SBHIconManager *)self rootFolder];
  v4 = [rootFolder listAtIndex:index];
  v5 = [v4 directlyContainedIconsPassingTest:&__block_literal_global_411];
  if ([v5 count])
  {
    firstObject = [v5 firstObject];
    [rootFolder removeIcon:firstObject options:0x800000];
  }
}

- (void)addApplicationIconWithBundleIdentifier:(id)identifier toPage:(unint64_t)page iconIndex:(unint64_t)index
{
  identifierCopy = identifier;
  iconModel = [(SBHIconManager *)self iconModel];
  v9 = [iconModel applicationIconForBundleIdentifier:identifierCopy];

  if (v9)
  {
    rootFolder = [iconModel rootFolder];
    if (([rootFolder isIconInIgnoredList:v9] & 1) == 0)
    {
      v11 = [iconModel addAdditionalIconMatchingIcon:v9];

      v9 = v11;
    }
  }

  rootFolder2 = [(SBHIconManager *)self rootFolder];
  v13 = [MEMORY[0x1E696AC88] indexPathWithIconIndex:index listIndex:page];
  v14 = [rootFolder2 insertIcon:v9 atIndexPath:v13 options:2];
}

- (void)addApplicationIconWithBundleIdentifier:(id)identifier toPage:(unint64_t)page coordinate:(SBIconCoordinate)coordinate
{
  row = coordinate.row;
  column = coordinate.column;
  identifierCopy = identifier;
  [(SBHIconManager *)self addApplicationIconWithBundleIdentifier:identifierCopy toPage:page coordinate:column orientation:row, [(SBHIconManager *)self interfaceOrientation]];
}

- (void)addApplicationIconWithBundleIdentifier:(id)identifier toPage:(unint64_t)page coordinate:(SBIconCoordinate)coordinate orientation:(int64_t)orientation
{
  row = coordinate.row;
  column = coordinate.column;
  identifierCopy = identifier;
  iconModel = [(SBHIconManager *)self iconModel];
  v12 = [iconModel applicationIconForBundleIdentifier:identifierCopy];

  if (v12)
  {
    rootFolder = [iconModel rootFolder];
    if (([rootFolder isIconInIgnoredList:v12] & 1) == 0)
    {
      v14 = [iconModel addAdditionalIconMatchingIcon:v12];

      v12 = v14;
    }
  }

  rootFolder2 = [(SBHIconManager *)self rootFolder];
  v16 = [rootFolder2 listAtIndex:page];
  v17 = [(SBHIconManager *)self gridCellInfoOptionsForOrientation:orientation];
  v18 = [v16 gridCellInfoWithOptions:v17];
  v19 = [v18 gridCellIndexForCoordinate:{column, row}];
  v20 = [SBHIconGridPath alloc];
  uniqueIdentifier = [v16 uniqueIdentifier];
  v22 = [(SBHIconGridPath *)v20 initWithFolderIdentifier:0 listIdentifier:uniqueIdentifier gridCellIndex:v19 gridCellInfoOptions:v17];

  v23 = [rootFolder2 insertIcon:v12 atGridPath:v22 options:2];
}

- (void)addDebugIconOfSizeClass:(id)class toPage:(unint64_t)page iconIndex:(unint64_t)index
{
  classCopy = class;
  initWithUniqueLeafIdentifier = [(SBLeafIcon *)[SBDebugIcon alloc] initWithUniqueLeafIdentifier];
  [(SBIcon *)initWithUniqueLeafIdentifier setGridSizeClass:classCopy];

  rootFolder = [(SBHIconManager *)self rootFolder];
  v10 = [MEMORY[0x1E696AC88] indexPathWithIconIndex:index listIndex:page];
  v11 = [rootFolder insertIcon:initWithUniqueLeafIdentifier atIndexPath:v10 options:2];
}

- (void)addDebugIconOfSizeClass:(id)class toPage:(unint64_t)page coordinate:(SBIconCoordinate)coordinate
{
  row = coordinate.row;
  column = coordinate.column;
  classCopy = class;
  [(SBHIconManager *)self addDebugIconOfSizeClass:classCopy toPage:page coordinate:column orientation:row, [(SBHIconManager *)self interfaceOrientation]];
}

- (void)addDebugIconOfSizeClass:(id)class toPage:(unint64_t)page coordinate:(SBIconCoordinate)coordinate orientation:(int64_t)orientation
{
  row = coordinate.row;
  column = coordinate.column;
  classCopy = class;
  rootFolder = [(SBHIconManager *)self rootFolder];
  v12 = [rootFolder listAtIndex:page];
  v13 = [(SBHIconManager *)self gridCellInfoOptionsForOrientation:orientation];
  v14 = [v12 gridCellInfoWithOptions:v13];
  v15 = [v14 gridCellIndexForCoordinate:{column, row}];
  v16 = [SBHIconGridPath alloc];
  uniqueIdentifier = [v12 uniqueIdentifier];
  v18 = [(SBHIconGridPath *)v16 initWithFolderIdentifier:0 listIdentifier:uniqueIdentifier gridCellIndex:v15 gridCellInfoOptions:v13];

  initWithUniqueLeafIdentifier = [(SBLeafIcon *)[SBDebugIcon alloc] initWithUniqueLeafIdentifier];
  [(SBIcon *)initWithUniqueLeafIdentifier setGridSizeClass:classCopy];

  v20 = [rootFolder insertIcon:initWithUniqueLeafIdentifier atGridPath:v18 options:2];
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
  _effectiveWidgetMultiplexingManager = [(SBHIconManager *)self _effectiveWidgetMultiplexingManager];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __43__SBHIconManager_debuggingActiveWidgetInfo__block_invoke_3;
  v23[3] = &unk_1E8090030;
  v7 = v5;
  v24 = v7;
  [_effectiveWidgetMultiplexingManager enumerateAllViewControllersUsingBlock:v23];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  keyEnumerator = [(NSMapTable *)self->_iconViewsForCustomIconImageViewController keyEnumerator];
  v9 = [keyEnumerator countByEnumeratingWithState:&v19 objects:v44 count:16];
  if (v9)
  {
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = objc_opt_self();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          contentViewController = [v12 contentViewController];
          (*(v7 + 2))(v7, contentViewController);
        }
      }

      v9 = [keyEnumerator countByEnumeratingWithState:&v19 objects:v44 count:16];
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

- (void)setUsageMonitoringEnabled:(BOOL)enabled
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_usageMonitoringEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_usageMonitoringEnabled = enabled;
    if (enabled)
    {
      v5 = [[SBHHomeScreenUsageMonitor alloc] initWithIconManager:self];
    }

    else
    {
      v5 = 0;
    }

    [(SBHIconManager *)self setUsageMonitor:v5];
    todayViewControllers = [(SBHIconManager *)self todayViewControllers];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [todayViewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(todayViewControllers);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if (enabledCopy)
          {
            [v11 addObserver:self];
          }

          else
          {
            [v11 removeObserver:self];
          }
        }

        v8 = [todayViewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (BOOL)isFolderPageManagementUIVisible
{
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  isPageManagementUIVisible = [rootFolderController isPageManagementUIVisible];

  return isPageManagementUIVisible;
}

- (void)dismissFolderPageManagementUI
{
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  [rootFolderController exitPageManagementUIWithCompletionHandler:0];
}

- (id)silhouetteLayoutForPageAtIndex:(unint64_t)index
{
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  if ([rootFolderController iconListViewCount] <= index)
  {
    v69 = 0;
  }

  else
  {
    rootFolderView = [rootFolderController rootFolderView];
    v7 = [rootFolderController iconListViewAtIndex:index];
    [rootFolderView bounds];
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
    floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
    v94 = v29;
    if (floatingDockViewController)
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
      v32 = rootFolderView;
      v109 = v32;
      v33 = v95;
      v34 = v96;
      v111 = v9;
      v112 = v95;
      v113 = v96;
      v114 = v24;
      v93 = v31;
      [floatingDockViewController enumerateDisplayedIconViewsUsingBlock:v108];
      dockView = [floatingDockViewController dockView];
      [dockView mainPlatterView];
      v37 = v36 = rootFolderView;
      window = [dockView window];
      screen = [window screen];
      coordinateSpace = [screen coordinateSpace];

      [v37 frame];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;
      superview = [v37 superview];
      [superview convertRect:coordinateSpace toCoordinateSpace:{v42, v44, v46, v48}];
      v51 = v50;
      v53 = v52;
      v55 = v54;
      v57 = v56;

      [v32 convertRect:coordinateSpace fromCoordinateSpace:{v51, v53, v55, v57}];
      v59 = v58;
      v61 = v60;
      v63 = v62;
      v65 = v64;
      [dockView currentDockContinuousCornerRadius];
      v67 = v66;

      rootFolderView = v36;
      dockIconListView = v116;
    }

    else
    {
      dockIconListView = [rootFolderController dockIconListView];
      v101[0] = MEMORY[0x1E69E9820];
      v101[1] = 3221225472;
      v101[2] = __49__SBHIconManager_silhouetteLayoutForPageAtIndex___block_invoke_5;
      v101[3] = &unk_1E8090080;
      v103 = v29;
      v70 = rootFolderView;
      v102 = v70;
      v33 = v95;
      v34 = v96;
      v104 = v9;
      v105 = v95;
      v106 = v96;
      v107 = v24;
      [dockIconListView enumerateIconViewsUsingBlock:v101];
      dockView2 = [v70 dockView];
      backgroundView = [dockView2 backgroundView];
      [backgroundView frame];
      v74 = v73;
      v76 = v75;
      v78 = v77;
      v80 = v79;
      superview2 = [backgroundView superview];
      [v70 convertRect:superview2 fromView:{v74, v76, v78, v80}];
      v59 = v82;
      v61 = v83;
      v63 = v84;
      v65 = v85;

      [backgroundView _cornerRadius];
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
  rootViewController = [(SBHIconManager *)self rootViewController];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__SBHIconManager_iconsToRecacheForIconStylePickerPreview__block_invoke;
  v6[3] = &unk_1E8089928;
  v4 = v3;
  v7 = v4;
  [rootViewController enumerateDisplayedIconViewsUsingBlock:v6];

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
  rootViewController = [(SBHIconManager *)self rootViewController];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__SBHIconManager_iconViewsToPreviewForIconStylePicker__block_invoke;
  v6[3] = &unk_1E8089928;
  v4 = v3;
  v7 = v4;
  [rootViewController enumerateDisplayedIconViewsUsingBlock:v6];

  return v4;
}

- (id)precacheLayersForIcons:(id)icons appearances:(id)appearances reason:(id)reason
{
  v44 = *MEMORY[0x1E69E9840];
  iconsCopy = icons;
  appearancesCopy = appearances;
  reasonCopy = reason;
  v10 = [[SBHCompoundAssertion alloc] initWithReason:reasonCopy];
  [(SBHIconManager *)self rootIconImageInfo];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = iconsCopy;
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
        v21 = appearancesCopy;
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
              v27 = [v20 prefetchIconLayerWithInfo:v26 traitCollection:1 imageOptions:0 priority:reasonCopy reason:0 prefetchBehavior:{v12, v14, v16, v18}];
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
  iconDragManager = [(SBHIconManager *)self iconDragManager];
  [iconDragManager cancelAllDrags];
}

- (BOOL)iconDragManager:(id)manager canBeginIconDragForIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![delegate iconManagerCanBeginIconDrags:self] || (objc_opt_respondsToSelector() & 1) != 0 && !objc_msgSend(delegate, "iconManager:canBeginDragForIconView:", self, viewCopy) || (-[SBHIconManager reasonToDisallowInteractionOnIconView:](self, "reasonToDisallowInteractionOnIconView:", viewCopy), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    icon = [viewCopy icon];
    v10 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v12 = icon;
      draggingStartLocation = [viewCopy draggingStartLocation];
      v14 = MEMORY[0x1E698B0D0];
      applicationBundleID = [v12 applicationBundleID];
      v16 = [v14 applicationWithBundleIdentifier:applicationBundleID];

      if (draggingStartLocation == 4)
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

- (void)iconDragManager:(id)manager iconView:(id)view willAnimateDragLiftWithAnimator:(id)animator session:(id)session
{
  viewCopy = view;
  [(SBHIconManager *)self _restartEditingEndTimer];
  icon = [viewCopy icon];

  [(SBHIconManager *)self clearHighlightedIcon:icon];
}

- (void)iconDragManagerIconDraggingDidChange:(id)change
{
  isIconDragging = [change isIconDragging];
  [(SBHIconManager *)self _restartEditingEndTimer];
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  [rootFolderController setAllowsAutoscrollToLeadingCustomView:isIconDragging ^ 1];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"SBHIconManagerIconDraggingChanged" object:self];

  searchGesture = [(SBHIconManager *)self searchGesture];
  [searchGesture setDisabled:isIconDragging forReason:@"SBHIconManager Dragging"];

  floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
  [floatingDockViewController setIconsDragging:isIconDragging];

  [(SBHIconManager *)self _updateVisibleIconsViewsForAllowableCloseBoxes];
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManagerIconDraggingDidChange:self];
  }
}

- (id)iconDragManager:(id)manager dragPreviewForIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate iconManager:self dragPreviewForIconView:viewCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)windowForIconDragPreviewsForIconDragManager:(id)manager forWindowScene:(id)scene
{
  sceneCopy = scene;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate windowForIconDragPreviewsForIconManager:self forWindowScene:sceneCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)iconDragManager:(id)manager targetedDragPreviewForIconView:(id)view item:(id)item session:(id)session previewParameters:(id)parameters
{
  viewCopy = view;
  itemCopy = item;
  sessionCopy = session;
  parametersCopy = parameters;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v16 = [delegate iconManager:self targetedDragPreviewForIconView:viewCopy item:itemCopy session:sessionCopy previewParameters:parametersCopy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)rootViewForIconDragManager:(id)manager
{
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  view = [rootFolderController view];

  return view;
}

- (void)iconDragManager:(id)manager willBeginIconDragWithUniqueIdentifier:(id)identifier numberOfDraggedItems:(unint64_t)items
{
  identifierCopy = identifier;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self willBeginIconDragWithUniqueIdentifier:identifierCopy numberOfDraggedItems:items];
  }
}

- (void)iconDragManager:(id)manager didAddItemsToIconDragWithUniqueIdentifier:(id)identifier numberOfDraggedItems:(unint64_t)items
{
  identifierCopy = identifier;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self didAddItemsToIconDragWithUniqueIdentifier:identifierCopy numberOfDraggedItems:items];
  }
}

- (void)iconDragManager:(id)manager didEndIconDragWithUniqueIdentifier:(id)identifier numberOfDraggedItems:(unint64_t)items
{
  identifierCopy = identifier;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self didEndIconDragWithUniqueIdentifier:identifierCopy numberOfDraggedItems:items];
  }
}

- (void)iconDragManager:(id)manager iconDropSessionDidEnter:(id)enter
{
  enterCopy = enter;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self iconDropSessionDidEnter:enterCopy];
  }
}

- (BOOL)iconDragManager:(id)manager canBeginDragForIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate iconManager:self canBeginDragForIconView:viewCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)iconDragManager:(id)manager canAddDragItemsToSession:(id)session fromIconView:(id)view
{
  sessionCopy = session;
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [delegate iconManager:self canAddDragItemsToSession:sessionCopy fromIconView:viewCopy];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)iconDragManager:(id)manager canAcceptDropInSession:(id)session inIconListView:(id)view
{
  sessionCopy = session;
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [delegate iconManager:self canAcceptDropInSession:sessionCopy inIconListView:viewCopy];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (double)iconDragManager:(id)manager additionalDragLiftScaleForIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  v7 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self additionalDragLiftScaleForIconView:viewCopy];
    v7 = v8;
  }

  return v7;
}

- (int64_t)iconDragManager:(id)manager draggingStartLocationForIconView:(id)view proposedStartLocation:(int64_t)location
{
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    location = [delegate iconManager:self draggingStartLocationForIconView:viewCopy proposedStartLocation:location];
  }

  return location;
}

- (void)presentTodayOverlayForIconDragManager:(id)manager
{
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate presentTodayOverlayForIconManager:self];
  }
}

- (void)dismissTodayOverlayForIconDragManager:(id)manager
{
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate dismissTodayOverlayForIconManager:self];
  }
}

- (void)presentLibraryForIconDragManager:(id)manager windowScene:(id)scene
{
  sceneCopy = scene;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate presentLibraryForIconManager:self windowScene:sceneCopy animated:1];
  }
}

- (void)dismissLibraryForIconDragManager:(id)manager windowScene:(id)scene
{
  sceneCopy = scene;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate dismissLibraryForIconManager:self windowScene:sceneCopy animated:1];
  }
}

- (BOOL)isAnimatingFolderIconTransitionForIconDragManager:(id)manager
{
  currentTransitionAnimator = [(SBHIconManager *)self currentTransitionAnimator];
  v4 = currentTransitionAnimator;
  if (currentTransitionAnimator)
  {
    iconAnimator = [currentTransitionAnimator iconAnimator];
    isAnimating = [iconAnimator isAnimating];
  }

  else
  {
    isAnimating = 0;
  }

  return isAnimating;
}

- (BOOL)isFolderOpenForIconDragManager:(id)manager
{
  openedFolderController = [(SBHIconManager *)self openedFolderController];
  v4 = openedFolderController != 0;

  return v4;
}

- (double)defaultIconLayoutAnimationDurationForIconDragManager:(id)manager
{
  v3 = objc_opt_class();

  [v3 defaultIconLayoutAnimationDuration];
  return result;
}

- (BOOL)iconDragManager:(id)manager shouldDuplicateIconsInDragSession:(id)session
{
  items = [session items];
  firstObject = [items firstObject];
  sbh_appDragLocalContext = [firstObject sbh_appDragLocalContext];
  v7 = [sbh_appDragLocalContext startLocation] == 4;

  return v7;
}

- (void)iconDragManager:(id)manager didSpringLoadIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self didSpringLoadIconView:viewCopy];
  }
}

- (BOOL)iconDragManager:(id)manager dragsSupportSystemDragsForIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate iconManager:self dragsSupportSystemDragsForIconView:viewCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)insertIcons:(id)icons intoWidgetStack:(id)stack
{
  stackCopy = stack;
  iconsCopy = icons;
  iconModel = [(SBHIconManager *)self iconModel];
  [stackCopy addDataSourcesFromWidgetIcons:iconsCopy];

  [iconModel removeIcons:iconsCopy];
}

- (void)addSuggestedActiveWidgetToStack:(id)stack
{
  stackCopy = stack;
  firstSuggestedIconDataSource = [stackCopy firstSuggestedIconDataSource];
  v5 = [(SBHIconManager *)self promoteSuggestedWidget:firstSuggestedIconDataSource withinStack:stackCopy];
}

- (id)promoteSuggestedWidget:(id)widget withinStack:(id)stack
{
  v30 = *MEMORY[0x1E69E9840];
  widgetCopy = widget;
  stackCopy = stack;
  v8 = stackCopy;
  v9 = 0;
  if (!widgetCopy || !stackCopy)
  {
    goto LABEL_18;
  }

  uniqueIdentifier = [widgetCopy uniqueIdentifier];
  _effectiveWidgetMultiplexingManager = [(SBHIconManager *)self _effectiveWidgetMultiplexingManager];
  v12 = [_effectiveWidgetMultiplexingManager viewControllerForIdentifier:uniqueIdentifier];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (![widgetCopy suggestionSource])
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

    if (![widgetCopy suggestionSource])
    {
      NSLog(&cfstr_FakewidgetDoes.isa);
    }
  }

  v9 = [widgetCopy copyWithSuggestionSource:0];
LABEL_11:
  [v8 replaceIconDataSource:widgetCopy withIconDataSource:v9];
  v13 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    widget = [v12 widget];
    intentReference = [widget intentReference];
    intent = [intentReference intent];

    if (intent)
    {
      extensionIdentity = [widget extensionIdentity];
      extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];

      kind = [widget kind];
      v20 = SBLogIcon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v25 = extensionBundleIdentifier;
        v26 = 2112;
        v27 = kind;
        v28 = 2112;
        v29 = intent;
        _os_log_impl(&dword_1BEB18000, v20, OS_LOG_TYPE_DEFAULT, "Saving intent for 'added' suggested widget (%@ - %@): %@", buf, 0x20u);
      }

      [(SBHIconManager *)self _archiveConfiguration:intent forDataSource:v9 ofIcon:v8];
    }
  }

  usageMonitor = [(SBHIconManager *)self usageMonitor];
  [usageMonitor noteUserAddedWidgetIconStackSuggestion:v8];

LABEL_18:

  return v9;
}

- (void)hideSuggestedWidgetFromStack:(id)stack
{
  stackCopy = stack;
  usageMonitor = [(SBHIconManager *)self usageMonitor];
  [usageMonitor noteUserDislikedWidgetIconStackSuggestion:stackCopy];

  [stackCopy removeFirstSuggestedIconDataSource];
}

- (void)hideSiriSuggestionOnWidgetFromStack:(id)stack
{
  stackCopy = stack;
  usageMonitor = [(SBHIconManager *)self usageMonitor];
  [usageMonitor noteUserDislikedSiriSuggestionOnWidgetIconStackSuggestion:stackCopy];
}

- (id)gridPathForIcon:(id)icon
{
  iconCopy = icon;
  rootFolder = [(SBHIconManager *)self rootFolder];
  v6 = [rootFolder gridPathForIcon:iconCopy listGridCellInfoOptions:{-[SBHIconManager gridCellInfoOptions](self, "gridCellInfoOptions")}];

  return v6;
}

- (void)saveGridPath:(id)path asPriorLocationBeforeResizeForIcon:(id)icon
{
  pathCopy = path;
  iconCopy = icon;
  previousIconGridPathsBeforeResize = self->_previousIconGridPathsBeforeResize;
  if (!previousIconGridPathsBeforeResize)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v9 = self->_previousIconGridPathsBeforeResize;
    self->_previousIconGridPathsBeforeResize = weakToStrongObjectsMapTable;

    previousIconGridPathsBeforeResize = self->_previousIconGridPathsBeforeResize;
  }

  [(NSMapTable *)previousIconGridPathsBeforeResize setObject:pathCopy forKey:iconCopy];
}

- (void)changeSizeOfWidgetIcon:(id)icon toSizeClass:(id)class animated:(BOOL)animated completionHandler:(id)handler
{
  iconCopy = icon;
  classCopy = class;
  handlerCopy = handler;
  rootFolder = [(SBHIconManager *)self rootFolder];
  v14 = [rootFolder indexPathForIcon:iconCopy];
  if (v14)
  {
    gridSizeClass = [iconCopy gridSizeClass];
    v16 = gridSizeClass;
    if (gridSizeClass == classCopy)
    {
    }

    else
    {
      gridSizeClass2 = [iconCopy gridSizeClass];
      v18 = [gridSizeClass2 isEqualToString:classCopy];

      if (!v18)
      {
        prepareForUndo = [(SBHIconManager *)self prepareForUndo];
        delegate = [(SBHIconManager *)self delegate];
        v20 = [(SBHIconManager *)self makeResizedCopyOfWidgetIcon:iconCopy withGridSizeClass:classCopy];
        if (objc_opt_respondsToSelector())
        {
          [delegate iconManager:self willChangeSizeOfIcon:iconCopy toSizeClass:classCopy byReplacingWithIcon:v20];
        }

        v27 = delegate;
        v32 = [(SBHIconManager *)self preWarmCustomViewControllerForWidgetIcon:v20];
        v21 = [(SBHIconManager *)self iconListViewForIndexPath:v14];
        v22 = [v21 displayedIconViewForIcon:iconCopy];
        v31 = [(NSMapTable *)self->_previousIconGridPathsBeforeResize objectForKey:iconCopy];
        [(SBHIconManager *)self gridPathForIcon:iconCopy];
        v30 = v29 = v22;
        if (v22)
        {
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __80__SBHIconManager_changeSizeOfWidgetIcon_toSizeClass_animated_completionHandler___block_invoke;
          v33[3] = &unk_1E8090100;
          v33[4] = self;
          v34 = iconCopy;
          v35 = classCopy;
          v36 = v20;
          v37 = v22;
          v38 = v21;
          v39 = v32;
          v23 = v20;
          animatedCopy = animated;
          v25 = prepareForUndo;
          v40 = prepareForUndo;
          v41 = v31;
          v42 = v30;
          v44 = animatedCopy;
          v20 = v23;
          v43 = handlerCopy;
          [v37 performAfterContextMenusDismissUsingBlock:v33];
        }

        else
        {
          LOBYTE(v26) = animated;
          v25 = prepareForUndo;
          [(SBHIconManager *)self continueChangingSizeOfWidgetIcon:iconCopy toSizeClass:classCopy newIcon:v20 displayedIconView:0 listView:v21 resizedViewController:v32 undoPreparation:prepareForUndo previousIconGridPath:v31 currentIconGridPath:v30 animated:v26 completionHandler:handlerCopy];
        }

        goto LABEL_13;
      }
    }
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }

LABEL_13:
}

- (void)continueChangingSizeOfWidgetIcon:(id)icon toSizeClass:(id)class newIcon:(id)newIcon displayedIconView:(id)view listView:(id)listView resizedViewController:(id)controller undoPreparation:(id)preparation previousIconGridPath:(id)self0 currentIconGridPath:(id)self1 animated:(BOOL)self2 completionHandler:(id)self3
{
  v56[1] = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  classCopy = class;
  newIconCopy = newIcon;
  viewCopy = view;
  listViewCopy = listView;
  preparationCopy = preparation;
  pathCopy = path;
  handlerCopy = handler;
  gridPathCopy = gridPath;
  delegate = [(SBHIconManager *)self delegate];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __204__SBHIconManager_continueChangingSizeOfWidgetIcon_toSizeClass_newIcon_displayedIconView_listView_resizedViewController_undoPreparation_previousIconGridPath_currentIconGridPath_animated_completionHandler___block_invoke;
  aBlock[3] = &unk_1E8090128;
  aBlock[4] = self;
  v44 = iconCopy;
  v51 = v44;
  v42 = delegate;
  v52 = v42;
  v23 = classCopy;
  v24 = viewCopy;
  v43 = v23;
  v53 = v23;
  v25 = newIconCopy;
  v54 = v25;
  v41 = handlerCopy;
  v55 = v41;
  v26 = _Block_copy(aBlock);
  v48 = v24;
  if (animated)
  {
    widgetMetricsProvider = [(SBHIconManager *)self widgetMetricsProvider];
    v28 = [[SBIconListViewIconSizeChangeAnimator alloc] initWithIconView:v24 iconListView:listViewCopy widgetMetricsProvider:widgetMetricsProvider];
    [(SBIconListViewIconSizeChangeAnimator *)v28 setDelegate:self];
    [(SBIconListViewIconSizeChangeAnimator *)v28 addAnimationCompletionHandler:v26];
  }

  else
  {
    v28 = 0;
  }

  iconModel = [(SBHIconManager *)self iconModel];
  rootFolder = [(SBHIconManager *)self rootFolder];
  gridCellInfoOptions = [(SBHIconManager *)self gridCellInfoOptions];
  if ([rootFolder containsIcon:v44])
  {
    v56[0] = v25;
    model = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
    v33 = [rootFolder replaceIcon:v44 withIcons:model options:8390146 listGridCellInfoOptions:gridCellInfoOptions];
  }

  else
  {
    model = [listViewCopy model];
    v34 = [rootFolder addIcon:v25 toList:model options:8390146];
  }

  v35 = v48;
  if (pathCopy)
  {
    v36 = [rootFolder insertIcon:v25 atGridPath:pathCopy options:1024];
  }

  [iconModel removeIcon:v44];
  [iconModel addIcon:v25];
  [listViewCopy layoutIconsIfNeededUsingAnimator:v28 options:0];
  [(SBHIconManager *)self saveGridPath:gridPathCopy asPriorLocationBeforeResizeForIcon:v25];

  undoManager = [listViewCopy undoManager];
  if (undoManager)
  {
    v38 = SBHBundle();
    v39 = [v38 localizedStringForKey:@"UNDO_RESIZE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    [preparationCopy registerWithUndoManager:undoManager actionName:v39 observer:0];

    v35 = v48;
  }

  if (!animated)
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

- (id)makeResizedCopyOfWidgetIcon:(id)icon withGridSizeClass:(id)class
{
  v34 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  classCopy = class;
  v27 = iconCopy;
  copyWithUniqueLeafIdentifier = [iconCopy copyWithUniqueLeafIdentifier];
  [copyWithUniqueLeafIdentifier setGridSizeClass:classCopy];
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = objc_opt_respondsToSelector();
  }

  else
  {
    v9 = 0;
  }

  iconDataSources = [copyWithUniqueLeafIdentifier iconDataSources];
  v11 = [iconDataSources copy];

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
          copyWithUniqueIdentifier = [v16 copyWithUniqueIdentifier];
          [copyWithUniqueLeafIdentifier replaceIconDataSource:v16 withIconDataSource:copyWithUniqueIdentifier];
          if (copyWithUniqueIdentifier != 0 && (v9 & 1) != 0)
          {
            v22 = [delegate iconManager:self configurationDataForDataSource:v16 ofIcon:v27];
            v14 = v25;
            [delegate iconManager:self dataSource:copyWithUniqueIdentifier ofIcon:copyWithUniqueLeafIdentifier didUpdateConfigurationData:v22];
          }
        }

        else
        {
          copyWithUniqueIdentifier = 0;
        }
      }

      v13 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v13);
  }

  return copyWithUniqueLeafIdentifier;
}

- (void)replaceWidgetIconWithAppIcon:(id)icon
{
  iconCopy = icon;
  rootFolder = [(SBHIconManager *)self rootFolder];
  v6 = [rootFolder listContainingIcon:iconCopy];
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = iconCopy;
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
      prepareForUndo = [(SBHIconManager *)self prepareForUndo];
      iconModel = [(SBHIconManager *)self iconModel];
      v12 = [(SBHIconManager *)self iconForReplacingWidgetIconWithAppIcon:v8];
      v13 = [rootFolder containsIcon:v12];
      v14 = v12;
      v15 = v14;
      if ([v14 isLeafIcon])
      {
        v15 = v14;
        if (v13)
        {
          v15 = [iconModel addAdditionalIconMatchingIcon:v14];
        }
      }

      v10 = v35;
      if (v15)
      {
        v30 = v14;
        v34 = prepareForUndo;
        rootFolderController = [(SBHIconManager *)self rootFolderController];
        v16 = [rootFolderController iconListViewWithIconListModel:v6];
        v17 = [v16 displayedIconViewForIcon:v35];
        v27 = [(NSMapTable *)self->_previousIconGridPathsBeforeResize objectForKey:v8];
        v31 = [(SBHIconManager *)self gridPathForIcon:v8];
        delegate = [(SBHIconManager *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [delegate iconManager:self willChangeSizeOfIcon:v8 toSizeClass:@"SBHIconGridSizeClassDefault" byReplacingWithIcon:v15];
        }

        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __47__SBHIconManager_replaceWidgetIconWithAppIcon___block_invoke;
        v37[3] = &unk_1E8090150;
        v38 = rootFolder;
        v19 = v35;
        v39 = v19;
        selfCopy = self;
        v41 = v17;
        v29 = v16;
        v42 = v29;
        v28 = delegate;
        v43 = v28;
        v44 = v8;
        v20 = v15;
        v45 = v20;
        v21 = v27;
        v46 = v21;
        v47 = iconModel;
        v22 = v31;
        v48 = v22;
        v49 = v34;
        v32 = v41;
        [v41 performAfterContextMenusDismissUsingBlock:v37];
        if (!self->_previousWidgetDataSourceBeforeResize)
        {
          weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
          previousWidgetDataSourceBeforeResize = self->_previousWidgetDataSourceBeforeResize;
          self->_previousWidgetDataSourceBeforeResize = weakToStrongObjectsMapTable;
        }

        activeDataSource = [v19 activeDataSource];
        [(NSMapTable *)self->_previousWidgetDataSourceBeforeResize setObject:activeDataSource forKey:v20];

        prepareForUndo = v34;
        v10 = v35;
        v26 = rootFolderController;
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

- (id)iconForReplacingWidgetIconWithAppIcon:(id)icon
{
  iconCopy = icon;
  if ([iconCopy isLeafIcon])
  {
    activeDataSource = [iconCopy activeDataSource];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass())) && ([activeDataSource containerBundleIdentifier], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v6;
      iconModel = [(SBHIconManager *)self iconModel];
      v9 = [iconModel applicationIconForBundleIdentifier:v7];
      delegate = [(SBHIconManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v11 = [delegate iconManager:self applicationIconForReplacingIconWithAppIcon:iconCopy proposedApplicationIcon:v9];

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

- (void)replaceAppIcon:(id)icon withWidgetOfSize:(id)size
{
  iconCopy = icon;
  sizeCopy = size;
  rootFolder = [(SBHIconManager *)self rootFolder];
  v9 = [rootFolder indexPathForIcon:iconCopy];
  if (v9)
  {
    prepareForUndo = [(SBHIconManager *)self prepareForUndo];
    v11 = [(SBHIconManager *)self iconDataSourceForReplacingAppIconWithWidgetIcon:iconCopy];
    if (v11)
    {
      v12 = v11;
      v34 = prepareForUndo;
      if (objc_opt_respondsToSelector())
      {
        copyWithUniqueIdentifier = [v12 copyWithUniqueIdentifier];

        v12 = copyWithUniqueIdentifier;
      }

      v31 = rootFolder;
      initWithUniqueLeafIdentifier = [(SBLeafIcon *)[SBWidgetIcon alloc] initWithUniqueLeafIdentifier];
      v33 = v12;
      [(SBLeafIcon *)initWithUniqueLeafIdentifier addIconDataSource:v12];
      [(SBIcon *)initWithUniqueLeafIdentifier setGridSizeClass:sizeCopy];
      v32 = [(SBHIconManager *)self preWarmCustomViewControllerForWidgetIcon:initWithUniqueLeafIdentifier];
      v15 = [(SBHIconManager *)self iconListViewForIndexPath:v9];
      v16 = [v15 displayedIconViewForIcon:iconCopy];
      v17 = [(NSMapTable *)self->_previousIconGridPathsBeforeResize objectForKey:iconCopy];
      v18 = [(SBHIconManager *)self gridPathForIcon:iconCopy];
      [(SBHIconManager *)self delegate];
      v20 = v19 = sizeCopy;
      if (objc_opt_respondsToSelector())
      {
        [v20 iconManager:self willChangeSizeOfIcon:iconCopy toSizeClass:v19 byReplacingWithIcon:initWithUniqueLeafIdentifier];
      }

      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __50__SBHIconManager_replaceAppIcon_withWidgetOfSize___block_invoke;
      v35[3] = &unk_1E8090150;
      v36 = v32;
      selfCopy = self;
      v38 = v16;
      v39 = v15;
      v40 = v20;
      v41 = iconCopy;
      v30 = v19;
      v42 = v19;
      v43 = initWithUniqueLeafIdentifier;
      v21 = v16;
      rootFolder = v31;
      v44 = v31;
      v45 = v17;
      v46 = v18;
      v47 = v34;
      v22 = v18;
      prepareForUndo = v34;
      v29 = v22;
      v28 = v17;
      v23 = initWithUniqueLeafIdentifier;
      v24 = v20;
      v25 = v15;
      v26 = v21;
      v27 = v32;
      [v26 performAfterContextMenusDismissUsingBlock:v35];

      sizeCopy = v30;
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

- (id)iconDataSourceForReplacingAppIconWithWidgetIcon:(id)icon
{
  iconCopy = icon;
  v5 = [(NSMapTable *)self->_previousWidgetDataSourceBeforeResize objectForKey:iconCopy];
  if (!v5)
  {
    applicationBundleID = [iconCopy applicationBundleID];
    widgetExtensionProvider = [(SBHIconManager *)self widgetExtensionProvider];
    v8 = [widgetExtensionProvider sbh_defaultDescriptorForContainerBundleIdentifier:applicationBundleID];

    gridSizeClassDomain = [(SBHIconManager *)self gridSizeClassDomain];
    v5 = [v8 sbh_iconDataSourceInDomain:gridSizeClassDomain];
  }

  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v11 = [delegate iconManager:self widgetDataSourceForReplacingIconWithWidget:iconCopy proposedWidgetDataSource:v5];

    v5 = v11;
  }

  return v5;
}

- (id)_intentForWidget:(id)widget ofIcon:(id)icon loadingFromArchiveIfNecessary:(BOOL)necessary usingDefaultIntentIfNecessary:(BOOL)ifNecessary
{
  ifNecessaryCopy = ifNecessary;
  necessaryCopy = necessary;
  widgetCopy = widget;
  iconCopy = icon;
  uniqueIdentifier = [widgetCopy uniqueIdentifier];
  v13 = [(SBHIconManager *)self _intentForDataSource:widgetCopy inIcon:iconCopy loadingFromArchiveIfNecessary:0 usingDefaultIntentIfNecessary:0];
  intent = v13;
  if (!v13)
  {
    _effectiveWidgetMultiplexingManager = [(SBHIconManager *)self _effectiveWidgetMultiplexingManager];
    v16 = [_effectiveWidgetMultiplexingManager viewControllerForIdentifier:uniqueIdentifier];

    if ([v16 sbh_isWidgetHostViewController])
    {
      widget = [v16 widget];
      [widget intentReference];
      v21 = necessaryCopy;
      v19 = v18 = ifNecessaryCopy;
      intent = [v19 intent];

      ifNecessaryCopy = v18;
      necessaryCopy = v21;

      if (intent)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    intent = [(SBHIconManager *)self _intentForDataSource:widgetCopy inIcon:iconCopy loadingFromArchiveIfNecessary:necessaryCopy usingDefaultIntentIfNecessary:ifNecessaryCopy];
  }

LABEL_7:

  return intent;
}

- (void)setTemporaryIntent:(id)intent forIconWithIdentifier:(id)identifier widgetUniqueIdentifier:(id)uniqueIdentifier
{
  intentCopy = intent;
  identifierCopy = identifier;
  uniqueIdentifierCopy = uniqueIdentifier;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self setTemporaryIntent:intentCopy forIconWithIdentifier:identifierCopy widgetUniqueIdentifier:uniqueIdentifierCopy];
  }
}

- (BOOL)canOpenFolderForIcon:(id)icon
{
  iconCopy = icon;
  if ([iconCopy isFolderIcon])
  {
    iconDragManager = [(SBHIconManager *)self iconDragManager];
    isTrackingDroppingIconDrags = [iconDragManager isTrackingDroppingIconDrags];

    if ((isTrackingDroppingIconDrags & 1) == 0)
    {
      floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
      v9 = floatingDockViewController;
      if (floatingDockViewController)
      {
        isPresentingLibrary = [floatingDockViewController isPresentingLibrary];
        folder = [iconCopy folder];
        if ((isPresentingLibrary & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        isMainDisplayLibraryViewVisible = [(SBHIconManager *)self isMainDisplayLibraryViewVisible];
        folder = [iconCopy folder];
        if (!isMainDisplayLibraryViewVisible)
        {
          goto LABEL_9;
        }
      }

      if (![folder isLibraryCategoryFolder])
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
  iconDragManager = [(SBHIconManager *)self iconDragManager];
  isTrackingDroppingIconDrags = [iconDragManager isTrackingDroppingIconDrags];

  return isTrackingDroppingIconDrags ^ 1;
}

- (BOOL)hasOpenFolderInLocation:(id)location
{
  locationCopy = location;
  floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
  if ([floatingDockViewController isPresentingIconLocation:locationCopy] && (objc_msgSend(floatingDockViewController, "isPresentingFolder") & 1) != 0)
  {
    v6 = 1;
  }

  else if ([(SBHIconManager *)self hasRootFolderController])
  {
    rootViewController = [(SBHIconManager *)self rootViewController];
    if ([rootViewController isPresentingIconLocation:locationCopy] && (objc_msgSend(rootViewController, "deepestFolderController"), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      v6 = 1;
    }

    else
    {
      rootFolderController = [(SBHIconManager *)self rootFolderController];
      if ([rootFolderController isPresentingIconLocation:locationCopy] && (objc_msgSend(rootFolderController, "deepestFolderController"), v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
      {
        v6 = 1;
      }

      else
      {
        _currentFolderController = [(SBHIconManager *)self _currentFolderController];
        if ([_currentFolderController isPresentingIconLocation:locationCopy])
        {
          deepestFolderController = [_currentFolderController deepestFolderController];
          v6 = deepestFolderController != 0;
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
  floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
  presentedFolderController = [floatingDockViewController presentedFolderController];
  folder = [presentedFolderController folder];

  if (!folder)
  {
    openedFolderController = [(SBHIconManager *)self openedFolderController];
    folder = [openedFolderController folder];
  }

  return folder;
}

- (void)setAnimatingFolderOpeningOrClosing:(BOOL)closing
{
  if (self->_animatingFolderOpeningOrClosing != closing)
  {
    hasAnimatingFolder = [(SBHIconManager *)self hasAnimatingFolder];
    self->_animatingFolderOpeningOrClosing = closing;
    if (hasAnimatingFolder != [(SBHIconManager *)self hasAnimatingFolder])
    {

      [(SBHIconManager *)self hasAnimatingFolderChanged];
    }
  }
}

- (void)setAnimatingFolderCreation:(BOOL)creation
{
  if (self->_animatingFolderCreation != creation)
  {
    hasAnimatingFolder = [(SBHIconManager *)self hasAnimatingFolder];
    self->_animatingFolderCreation = creation;
    if (hasAnimatingFolder != [(SBHIconManager *)self hasAnimatingFolder])
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

  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManagerFolderAnimatingDidChange:self];
  }
}

- (BOOL)allowsNestedFolders
{
  v2 = +[SBHHomeScreenDomain rootSettings];
  folderSettings = [v2 folderSettings];
  allowNestedFolders = [folderSettings allowNestedFolders];

  return allowNestedFolders;
}

- (unint64_t)maxListCountForFolders
{
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate maximumListCountForFoldersForIconManager:self];
  }

  else
  {
    v4 = 15;
  }

  return v4;
}

- (unint64_t)maxIconCountForDock
{
  isFloatingDockSupported = [(SBHIconManager *)self isFloatingDockSupported];
  v4 = SBIconLocationFloatingDock;
  if (!isFloatingDockSupported)
  {
    v4 = SBIconLocationDock;
  }

  v5 = *v4;
  listLayoutProvider = [(SBHIconManager *)self listLayoutProvider];
  v7 = [listLayoutProvider layoutForIconLocation:v5];

  v8 = SBHIconListLayoutMaximumIconCount(v7);
  return v8;
}

- (unint64_t)maxIconCountForDockUtilities
{
  isFloatingDockUtilitiesSupported = [(SBHIconManager *)self isFloatingDockUtilitiesSupported];
  v4 = SBIconLocationFloatingDockUtilities;
  if (!isFloatingDockUtilitiesSupported)
  {
    v4 = &SBIconLocationNone;
  }

  v5 = *v4;
  listLayoutProvider = [(SBHIconManager *)self listLayoutProvider];
  v7 = [listLayoutProvider layoutForIconLocation:v5];

  v8 = SBHIconListLayoutMaximumIconCount(v7);
  return v8;
}

- (unint64_t)columnCountForTodayList
{
  listLayoutProvider = [(SBHIconManager *)self listLayoutProvider];
  v3 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationTodayView"];

  v4 = [v3 numberOfColumnsForOrientation:1];
  return v4;
}

- (id)allowedGridSizeClassesForDock
{
  isFloatingDockSupported = [(SBHIconManager *)self isFloatingDockSupported];
  v4 = SBIconLocationFloatingDock;
  if (!isFloatingDockSupported)
  {
    v4 = SBIconLocationDock;
  }

  v5 = *v4;
  listLayoutProvider = [(SBHIconManager *)self listLayoutProvider];
  v7 = [listLayoutProvider layoutForIconLocation:v5];

  v8 = SBHIconListLayoutSupportedIconGridSizeClasses(v7);

  return v8;
}

- (id)allowedGridSizeClassesForTodayList
{
  listLayoutProvider = [(SBHIconManager *)self listLayoutProvider];
  v3 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationTodayView"];

  v4 = SBHIconListLayoutSupportedIconGridSizeClasses(v3);

  return v4;
}

- (SBHIconGridSize)listGridSizeForFolderClass:(Class)class
{
  iconLocation = [(objc_class *)[(SBHIconManager *)self controllerClassForFolderClass:class] iconLocation];
  listLayoutProvider = [(SBHIconManager *)self listLayoutProvider];
  v6 = [listLayoutProvider layoutForIconLocation:iconLocation];

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

- (SBHIconGridSize)listWithNonDefaultSizedIconsGridSizeForFolderClass:(Class)class
{
  iconLocationForListsWithNonDefaultSizedIcons = [(SBHIconManager *)self iconLocationForListsWithNonDefaultSizedIcons];
  v6 = objc_opt_self();
  if (![(objc_class *)class isSubclassOfClass:v6])
  {

    goto LABEL_6;
  }

  v7 = [iconLocationForListsWithNonDefaultSizedIcons isEqualToString:@"SBIconLocationRoot"];

  if (v7)
  {
LABEL_6:
    v10 = 0;
    goto LABEL_9;
  }

  listLayoutProvider = [(SBHIconManager *)self listLayoutProvider];
  v9 = [listLayoutProvider layoutForIconLocation:iconLocationForListsWithNonDefaultSizedIcons];

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

- (BOOL)listsAllowRotatedLayoutForFolderClass:(Class)class
{
  delegate = [(SBHIconManager *)self delegate];
  v6 = objc_opt_self();
  if (![(objc_class *)class isSubclassOfClass:v6])
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

  v8 = [delegate listsAllowRotatedLayoutForIconManager:self];
LABEL_6:

  return v8;
}

- (int64_t)listsFixedIconLocationBehaviorForFolderClass:(Class)class
{
  v5 = objc_opt_self();
  LODWORD(class) = [(objc_class *)class isSubclassOfClass:v5];

  if (!class)
  {
    return 0;
  }

  return [(SBHIconManager *)self listsFixedIconLocationBehavior];
}

- (int64_t)listsIconDisplacementBehaviorForFolderClass:(Class)class
{
  v5 = objc_opt_self();
  LODWORD(class) = [(objc_class *)class isSubclassOfClass:v5];

  if (!class)
  {
    return 1;
  }

  return [(SBHIconManager *)self listsIconDisplacementBehavior];
}

- (id)iconGridSizeClassSizes
{
  listLayoutProvider = [(SBHIconManager *)self listLayoutProvider];
  v4 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationRoot"];

  v5 = SBHIconListLayoutIconGridSizeClassSizes(v4, [(SBHIconManager *)self interfaceOrientation]);

  return v5;
}

- (id)supportedGridSizeClassesForWidgetWithKind:(id)kind extensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier
{
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  kindCopy = kind;
  widgetExtensionProvider = [(SBHIconManager *)self widgetExtensionProvider];
  v12 = [widgetExtensionProvider sbh_descriptorWithKind:kindCopy extensionBundleIdentifier:identifierCopy containerBundleIdentifier:bundleIdentifierCopy];

  gridSizeClassDomain = [(SBHIconManager *)self gridSizeClassDomain];
  v14 = gridSizeClassDomain;
  if (v12)
  {
    allNonDefaultGridSizeClasses = -[SBHIconGridSizeClassSet initWithCHSWidgetFamilyMask:inDomain:]([SBHIconGridSizeClassSet alloc], "initWithCHSWidgetFamilyMask:inDomain:", [v12 supportedFamilies], gridSizeClassDomain);
  }

  else
  {
    allNonDefaultGridSizeClasses = [gridSizeClassDomain allNonDefaultGridSizeClasses];
  }

  v16 = allNonDefaultGridSizeClasses;

  return v16;
}

- (int64_t)currentIconListIndex
{
  rootViewController = [(SBHIconManager *)self rootViewController];
  currentPageIndex = [rootViewController currentPageIndex];

  return currentPageIndex;
}

- (id)folderControllerForFolder:(id)folder
{
  folderCopy = folder;
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  v6 = [rootFolderController folderControllerForFolder:folderCopy];

  if (!v6)
  {
    floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
    presentedFolderController = [floatingDockViewController presentedFolderController];

    folder = [presentedFolderController folder];
    v10 = [folder isEqual:folderCopy];

    if (v10)
    {
      v6 = presentedFolderController;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)createNewFolderFromRecipientIcon:(id)icon grabbedIcon:(id)grabbedIcon
{
  iconCopy = icon;
  v7 = [(SBHIconManager *)self _proposedFolderNameForGrabbedIcon:grabbedIcon recipientIcon:iconCopy];
  iconModel = [(SBHIconManager *)self iconModel];
  v9 = [iconModel makeFolderWithDisplayName:v7];
  [v9 setCancelable:1];
  v10 = [[SBFolderIcon alloc] initWithFolder:v9];
  rootFolder = [(SBHIconManager *)self rootFolder];
  [rootFolder replaceIcon:iconCopy withIcon:v10];

  [iconModel addIcon:v10];

  return v9;
}

- (void)addIcons:(id)icons intoFolderIcon:(id)icon openFolderOnFinish:(BOOL)finish completion:(id)completion
{
  finishCopy = finish;
  iconsCopy = icons;
  iconCopy = icon;
  completionCopy = completion;
  folder = [iconCopy folder];
  v13 = [folder startCoalescingContentChangesForReason:@"SBHIconManager.addIcons:intoFolderIcon:"];
  rootFolder = [(SBHIconManager *)self rootFolder];
  v14 = [rootFolder indexPathForIcon:iconCopy];
  v22 = 0;
  [(SBHIconManager *)self getListView:&v22 folder:0 relativePath:0 forIndexPath:v14];
  v15 = v22;
  v16 = [v15 iconViewForIcon:iconCopy];
  superview = [v16 superview];
  [superview bringSubviewToFront:v16];

  [v16 setAllowsEditingAnimation:0];
  v18 = [folder addIcons:iconsCopy];
  if (finishCopy)
  {
    [(SBHIconManager *)self setAnimatingFolderCreation:1];
    [v16 setAllowsEditingAnimation:1];
    [v13 invalidate];
    location = [v16 location];
    [(SBHIconManager *)self pushExpandedIcon:iconCopy location:location context:0 animated:1 completionHandler:0];

    if (!completionCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [v16 setAllowsEditingAnimation:1];
  [v13 invalidate];
  if (completionCopy)
  {
LABEL_5:
    completionCopy[2](completionCopy);
  }

LABEL_6:
  [(SBHIconManager *)self setAnimatingFolderCreation:0];
}

- (void)replaceFolderIcon:(id)icon byContainedIcon:(id)containedIcon animated:(BOOL)animated
{
  animatedCopy = animated;
  iconCopy = icon;
  containedIconCopy = containedIcon;
  rootFolder = [(SBHIconManager *)self rootFolder];
  v11 = [rootFolder indexPathForIcon:iconCopy];
  if (v11)
  {
    _currentFolderController = [(SBHIconManager *)self iconListViewForIndexPath:v11];
    currentIconListView = [_currentFolderController iconViewForIcon:iconCopy];
    [currentIconListView frameForMiniIconAtIndex:0];
    v51 = v15;
    v52 = v14;
    v17 = v16;
    v19 = v18;
    [rootFolder replaceIcon:iconCopy withIcon:containedIconCopy];
    model = [_currentFolderController iconViewForIcon:containedIconCopy];
    layout = [_currentFolderController layout];
    [layout iconImageInfo];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = SBHIconListLayoutFolderIconGridCellSize(layout);
    if (animatedCopy)
    {
      v32 = v30;
      v33 = v31;
      traitCollection = [_currentFolderController traitCollection];
      v50 = currentIconListView;
      v34 = objc_alloc(MEMORY[0x1E69DCAE0]);
      [model iconImageSnapshot];
      v35 = v49 = layout;
      v36 = [v34 initWithImage:v35];

      folderIconImageCache = [(SBHIconManager *)self folderIconImageCache];
      v47 = [folderIconImageCache gridCellImageOfSize:containedIconCopy forIcon:traitCollection iconImageInfo:v32 compatibleWithTraitCollection:{v33, v23, v25, v27, v29}];

      v38 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v47];
      [model setIconImageAndAccessoryAlpha:0.0];
      [model setIconLabelAlpha:0.0];
      [model setRefusesRecipientStatus:1];
      layer = [v36 layer];
      [layer setAllowsEdgeAntialiasing:1];

      layer2 = [v38 layer];
      [layer2 setAllowsEdgeAntialiasing:1];

      [v36 setFrame:{v52, v51, v17, v19}];
      [v38 setFrame:{v52, v51, v17, v19}];
      [model addSubview:v36];
      [model addSubview:v38];
      v53 = MEMORY[0x1E69DD250];
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __61__SBHIconManager_replaceFolderIcon_byContainedIcon_animated___block_invoke;
      v61[3] = &unk_1E8088F88;
      v41 = model;
      v62 = v41;
      v63 = v36;
      v64 = v38;
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __61__SBHIconManager_replaceFolderIcon_byContainedIcon_animated___block_invoke_2;
      v56[3] = &unk_1E808CE88;
      v57 = _currentFolderController;
      v58 = containedIconCopy;
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
      layout = v49;
      currentIconListView = v50;
      [v45 animateWithDuration:0 delay:v54 options:0 animations:0.15 completion:0.35];
    }

LABEL_9:
    goto LABEL_10;
  }

  if (([rootFolder containsIcon:containedIconCopy] & 1) == 0)
  {
    _currentFolderController = [(SBHIconManager *)self _currentFolderController];
    currentIconListView = [_currentFolderController currentIconListView];
    model = [currentIconListView model];
    if (!model)
    {
      model = [rootFolder firstList];
    }

    v46 = [rootFolder addIcon:containedIconCopy toList:model options:0];
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
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate localizedDefaultFolderNameForIconManager:self];
  }

  else
  {
    [MEMORY[0x1E69DD350] _localizedFolderNameForName:@"Folder"];
  }
  v4 = ;

  return v4;
}

- (id)localizedFolderNameForDefaultDisplayName:(id)name
{
  nameCopy = name;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self localizedFolderNameForDefaultDisplayName:nameCopy];
  }

  else
  {
    [(SBHIconManager *)self localizedDefaultFolderName];
  }
  v6 = ;

  return v6;
}

- (id)_proposedFolderNameForGrabbedIcon:(id)icon recipientIcon:(id)recipientIcon
{
  selfCopy = self;
  iconCopy = icon;
  recipientIconCopy = recipientIcon;
  v26 = iconCopy;
  folderTitleOptions = [iconCopy folderTitleOptions];
  v25 = recipientIconCopy;
  folderTitleOptions2 = [recipientIconCopy folderTitleOptions];
  v9 = [folderTitleOptions count];
  v10 = [folderTitleOptions2 count];
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
          v15 = [folderTitleOptions objectAtIndex:{v14, selfCopy}];
          if (v11 < 1)
          {
LABEL_13:
          }

          else
          {
            v16 = 1;
            while (1)
            {
              v17 = [folderTitleOptions2 objectAtIndex:v16 - 1];
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

  folderFallbackTitle = [v26 folderFallbackTitle];
  if (!folderFallbackTitle)
  {
    folderFallbackTitle = [v25 folderFallbackTitle];
    if (!folderFallbackTitle)
    {
      folderFallbackTitle = [v24 localizedDefaultFolderName];
    }
  }

  v15 = folderFallbackTitle;
LABEL_23:

  return v15;
}

- (void)pushExpandedIcon:(id)icon location:(id)location context:(id)context animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  v52 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  locationCopy = location;
  contextCopy = context;
  handlerCopy = handler;
  v14 = SBLogIcon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v47 = iconCopy;
    v48 = 2114;
    v49 = locationCopy;
    v50 = 2112;
    v51 = contextCopy;
    _os_log_impl(&dword_1BEB18000, v14, OS_LOG_TYPE_DEFAULT, "push expanded icon %@ from location %{public}@ with context: %@", buf, 0x20u);
  }

  if (!contextCopy || (objc_opt_respondsToSelector() & 1) == 0 || ([contextCopy iconView], v15 = objc_claimAutoreleasedReturnValue(), -[SBHIconManager floatingDockViewControllerForView:](self, "floatingDockViewControllerForView:", v15), floatingDockViewController = objc_claimAutoreleasedReturnValue(), v15, !floatingDockViewController))
  {
    floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
  }

  if ([floatingDockViewController isPresentingIconLocation:locationCopy] && objc_msgSend(iconCopy, "isFolderIcon"))
  {
    v17 = SBLogIcon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BEB18000, v17, OS_LOG_TYPE_DEFAULT, "telling floating dock view controller to open folder", buf, 2u);
    }

    [floatingDockViewController presentFolderForIcon:iconCopy location:locationCopy animated:animatedCopy completion:handlerCopy];
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

        childViewController = [(SBHomeScreenIconTransitionAnimator *)self->_currentTransitionAnimator childViewController];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          folder = [childViewController folder];
          icon = [folder icon];
        }

        else
        {
          icon = 0;
        }

        v29 = SBLogIcon();
        v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
        if (icon == iconCopy)
        {
          if (v30)
          {
            *buf = 0;
            _os_log_impl(&dword_1BEB18000, v29, OS_LOG_TYPE_DEFAULT, "collapsing folder is the same as what we are trying to open; reversing", buf, 2u);
          }

          if (handlerCopy)
          {
            currentExpandCompletions = self->_currentExpandCompletions;
            if (!currentExpandCompletions)
            {
              v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v33 = self->_currentExpandCompletions;
              self->_currentExpandCompletions = v32;

              currentExpandCompletions = self->_currentExpandCompletions;
            }

            v34 = [handlerCopy copy];
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
            v43 = iconCopy;
            v44 = locationCopy;
            v45 = contextCopy;
            [(SBHIconManager *)self _enqueueTransitionName:@"Request to open a folder while another folder is still closing" withHandler:v42];
          }

          if (handlerCopy)
          {
            (*(handlerCopy + 2))(handlerCopy, 0);
          }
        }
      }

      else if (handlerCopy)
      {
        v25 = SBLogIcon();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BEB18000, v25, OS_LOG_TYPE_DEFAULT, "a folder is transitioning (not collapsing) when trying to open folder; rejecting", buf, 2u);
        }

        (*(handlerCopy + 2))(handlerCopy, 0);
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
      v23 = handlerCopy;
      v39 = v23;
      v24 = _Block_copy(aBlock);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SBHIconManager *)self openFolderIcon:iconCopy location:locationCopy animated:animatedCopy withCompletion:v24];
      }

      else
      {
        delegate = [(SBHIconManager *)self delegate];
        v27 = objc_opt_respondsToSelector();
        v28 = SBLogIcon();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v47 = iconCopy;
          v48 = 1024;
          LODWORD(v49) = v27 & 1;
          _os_log_impl(&dword_1BEB18000, v28, OS_LOG_TYPE_DEFAULT, "Unknown icon for pushing expanded icon: %@. Delegate can handle: %{BOOL}u", buf, 0x12u);
        }

        if (v27)
        {
          [delegate iconManager:self launchIcon:iconCopy location:locationCopy animated:animatedCopy completionHandler:v23];
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

- (void)pushExpandedIcon:(id)icon location:(id)location context:(id)context forcePoppingPriorExpandedIcon:(BOOL)expandedIcon animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  expandedIconCopy = expandedIcon;
  iconCopy = icon;
  locationCopy = location;
  contextCopy = context;
  handlerCopy = handler;
  if (expandedIconCopy)
  {
    [(SBHIconManager *)self popExpandedIconAnimated:0 completionHandler:0];
  }

  [(SBHIconManager *)self pushExpandedIcon:iconCopy location:locationCopy context:contextCopy animated:animatedCopy completionHandler:handlerCopy];
}

- (void)popExpandedIconFromLocation:(id)location interactionContext:(id)context animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  locationCopy = location;
  contextCopy = context;
  handlerCopy = handler;
  floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
  isPresentingFolder = [floatingDockViewController isPresentingFolder];
  if ([floatingDockViewController isPresentingIconLocation:locationCopy])
  {
    if (!isPresentingFolder)
    {
LABEL_8:
      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, 0);
      }

      goto LABEL_20;
    }

LABEL_5:
    [floatingDockViewController dismissPresentedFolderAnimated:animatedCopy completion:handlerCopy];
    goto LABEL_20;
  }

  if (isPresentingFolder)
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

    if (handlerCopy)
    {
      currentCollapseCompletions = self->_currentCollapseCompletions;
      if (!currentCollapseCompletions)
      {
        v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v22 = self->_currentCollapseCompletions;
        self->_currentCollapseCompletions = v21;

        currentCollapseCompletions = self->_currentCollapseCompletions;
      }

      v23 = [handlerCopy copy];
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
    v16 = handlerCopy;
    v26 = v16;
    v17 = _Block_copy(aBlock);
    [(SBHIconManager *)self setCurrentInteractionContext:contextCopy];
    rootFolderController = [(SBHIconManager *)self rootFolderController];
    deepestNestedDescendantViewController = [rootFolderController deepestNestedDescendantViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SBHIconManager *)self closeFolderAnimated:animatedCopy withCompletion:v17];
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
  openedFolderController = [(SBHIconManager *)self openedFolderController];
  do
  {
    if (!openedFolderController)
    {
      break;
    }

    v4 = openedFolderController;
    [(SBHIconManager *)self popExpandedIconAnimated:0 completionHandler:0];
    openedFolderController2 = [(SBHIconManager *)self openedFolderController];

    v5 = [openedFolderController2 isEqual:v4];
    openedFolderController = openedFolderController2;
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

  currentTransitionAnimator = [(SBHIconManager *)self currentTransitionAnimator];
  if ([currentTransitionAnimator isCancelled])
  {
    currentTransitionAnimator2 = [(SBHIconManager *)self currentTransitionAnimator];
    v5 = [currentTransitionAnimator2 currentOperation] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isTrackingScroll
{
  rootViewController = [(SBHIconManager *)self rootViewController];
  isScrollTracking = [rootViewController isScrollTracking];

  if (isScrollTracking)
  {
    return 1;
  }

  openedFolderController = [(SBHIconManager *)self openedFolderController];
  isScrollTracking2 = [openedFolderController isScrollTracking];

  return isScrollTracking2;
}

- (void)openFolderIcon:(id)icon location:(id)location animated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  v36 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  locationCopy = location;
  completionCopy = completion;
  v13 = SBLogIcon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = iconCopy;
    v34 = 2114;
    v35 = locationCopy;
    _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_DEFAULT, "open folder icon %@ location %{public}@", buf, 0x16u);
  }

  if (iconCopy && [(SBHIconManager *)self canOpenFolderForIcon:iconCopy])
  {
    if ([(SBHIconManager *)self isShowingIconContextMenu])
    {
      v14 = SBLogIcon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BEB18000, v14, OS_LOG_TYPE_DEFAULT, "will wait until context menus are dismissed", buf, 2u);
      }

      objc_storeWeak(&self->_pendingFolderIconToOpen, iconCopy);
      objc_initWeak(buf, self);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __66__SBHIconManager_openFolderIcon_location_animated_withCompletion___block_invoke;
      v26[3] = &unk_1E8090178;
      objc_copyWeak(&v30, buf);
      v29 = completionCopy;
      v27 = iconCopy;
      v28 = locationCopy;
      v31 = animatedCopy;
      [(SBHIconManager *)self performAfterIconContextMenuDismissesUsingBlock:v26];

      objc_destroyWeak(&v30);
      objc_destroyWeak(buf);
    }

    else
    {
      objc_storeWeak(&self->_pendingFolderIconToOpen, 0);
      folder = [iconCopy folder];
      delegate = [(SBHIconManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate iconManager:self willOpenFolder:folder];
      }

      iconDragManager = [(SBHIconManager *)self iconDragManager];
      [iconDragManager noteFolderControllerWillOpen];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __66__SBHIconManager_openFolderIcon_location_animated_withCompletion___block_invoke_2;
      v21[3] = &unk_1E808B370;
      v22 = delegate;
      selfCopy = self;
      v24 = folder;
      v25 = completionCopy;
      v19 = folder;
      v20 = delegate;
      [(SBHIconManager *)self _animateFolderIcon:iconCopy open:1 location:locationCopy animated:animatedCopy withCompletion:v21];
      if (!animatedCopy)
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
      v33 = iconCopy;
      _os_log_impl(&dword_1BEB18000, v15, OS_LOG_TYPE_INFO, "IGNORING. Icon = %@", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
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

- (void)closeFolderAnimated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  deepestFolderController = [rootFolderController deepestFolderController];

  [(SBHIconManager *)self _closeFolderController:deepestFolderController animated:animatedCopy withCompletion:completionCopy];
}

- (void)_closeFolderController:(id)controller animated:(BOOL)animated withCompletion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  completionCopy = completion;
  if (controllerCopy && [(SBHIconManager *)self canCloseFolders])
  {
    openedFolder = [(SBHIconManager *)self openedFolder];
    [(SBHIconManager *)self setClosingFolder:openedFolder];
    delegate = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate iconManager:self willCloseFolder:openedFolder];
    }

    iconDragManager = [(SBHIconManager *)self iconDragManager];
    [iconDragManager noteFolderControllerWillClose:controllerCopy];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __65__SBHIconManager__closeFolderController_animated_withCompletion___block_invoke;
    v17[3] = &unk_1E808FED8;
    v17[4] = self;
    v18 = openedFolder;
    animatedCopy = animated;
    v19 = iconDragManager;
    v20 = controllerCopy;
    v21 = delegate;
    v22 = completionCopy;
    v13 = delegate;
    v14 = iconDragManager;
    v15 = openedFolder;
    [(SBHIconManager *)self _enqueueTransitionName:@"Close Folder" withHandler:v17];
  }

  else
  {
    v16 = SBLogIcon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = controllerCopy;
      _os_log_impl(&dword_1BEB18000, v16, OS_LOG_TYPE_INFO, "IGNORING. Controller = %@", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
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

- (void)_animateFolderIcon:(id)icon open:(BOOL)open location:(id)location animated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  openCopy = open;
  v25 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  locationCopy = location;
  completionCopy = completion;
  if (!iconCopy && openCopy)
  {
    goto LABEL_3;
  }

  if (openCopy)
  {
    if ([(SBHIconManager *)self canOpenFolderForIcon:iconCopy])
    {
      goto LABEL_11;
    }

LABEL_3:
    v15 = SBLogIcon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = iconCopy;
      _os_log_impl(&dword_1BEB18000, v15, OS_LOG_TYPE_INFO, "IGNORING. Icon = %@", buf, 0xCu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }

    goto LABEL_17;
  }

  if (![(SBHIconManager *)self canCloseFolders])
  {
    goto LABEL_3;
  }

LABEL_11:
  if (animatedCopy)
  {
    [(SBHIconManager *)self setAnimatingFolderOpeningOrClosing:1];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__SBHIconManager__animateFolderIcon_open_location_animated_withCompletion___block_invoke;
  aBlock[3] = &unk_1E80901C8;
  aBlock[4] = self;
  v21 = openCopy;
  v22 = animatedCopy;
  v20 = completionCopy;
  v16 = _Block_copy(aBlock);
  v17 = [(SBHIconManager *)self _folderControllerForIcon:iconCopy inLocation:locationCopy];
  v18 = v17;
  if (openCopy)
  {
    [v17 pushFolderIcon:iconCopy location:locationCopy animated:animatedCopy completion:v16];
  }

  else
  {
    [v17 popFolderAnimated:animatedCopy completion:v16];
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

- (void)_folderDidFinishOpenClose:(BOOL)close animated:(BOOL)animated success:(BOOL)success
{
  if (!close)
  {
    if (success)
    {
      [(SBHIconManager *)self _cleanupForClosingFolderAnimated:animated];
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

- (void)_cleanupForClosingFolderAnimated:(BOOL)animated
{
  closingFolder = self->_closingFolder;
  if (!closingFolder)
  {
    return;
  }

  animatedCopy = animated;
  [(SBFolder *)closingFolder compactLists];
  icon = [(SBFolder *)self->_closingFolder icon];
  allIcons = [(SBFolder *)self->_closingFolder allIcons];
  v8 = [allIcons count];
  if (![(SBFolder *)self->_closingFolder shouldRemoveWhenEmpty])
  {
    anyObject = 0;
    v11 = icon;
LABEL_9:
    icon = 0;
    goto LABEL_14;
  }

  if (v8)
  {
    anyObject = 0;
    if ([(SBFolder *)self->_closingFolder isCancelable]&& v8 == 1)
    {
      anyObject = [allIcons anyObject];
      v11 = 0;
    }

    else
    {
      v11 = icon;
      icon = 0;
    }

    goto LABEL_14;
  }

  if (icon)
  {
    [(SBHIconManager *)self uninstallIcon:icon animate:animatedCopy];

    v11 = 0;
    anyObject = 0;
    goto LABEL_9;
  }

  v11 = 0;
  anyObject = 0;
LABEL_14:
  if ([(SBHIconManager *)self hasAnimatingFolder]&& self->_iconToReveal)
  {
    [(SBHIconManager *)self finishInstallingIconAnimated:1];
  }

  [(SBHIconManager *)self setAnimatingFolderOpeningOrClosing:0];
  if (anyObject && icon)
  {
    [(SBHIconManager *)self replaceFolderIcon:icon byContainedIcon:anyObject animated:animatedCopy];
  }

  v10 = self->_closingFolder;
  self->_closingFolder = 0;
}

- (void)_compactRootListsAfterFolderCloseWithAnimation:(BOOL)animation
{
  if (animation)
  {
    [(SBHIconManager *)self layoutIconListsWithAnimationType:0 forceRelayout:1];
  }
}

- (void)_enqueueTransitionName:(id)name withHandler:(id)handler
{
  v6 = [MEMORY[0x1E698E6B0] eventWithName:name handler:handler];
  transitionEventQueue = [(SBHIconManager *)self transitionEventQueue];
  [transitionEventQueue executeOrInsertEvent:v6 atPosition:1];
}

- (BOOL)_shouldParallaxInIconLocation:(id)location
{
  locationCopy = location;
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  nonDockPresentedIconLocations = [rootFolderController nonDockPresentedIconLocations];
  v7 = [nonDockPresentedIconLocations containsObject:locationCopy];

  return v7;
}

- (unint64_t)gridCellInfoOptions
{
  interfaceOrientation = [(SBHIconManager *)self interfaceOrientation];

  return [(SBHIconManager *)self gridCellInfoOptionsForOrientation:interfaceOrientation];
}

- (void)presentLeadingCustomViewWithCompletion:(id)completion
{
  completionCopy = completion;
  [(SBHIconManager *)self _ensureRootFolderController];
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  [rootFolderController performPageStateTransitionToState:2 reason:@"activate leading custom view" animated:1 completionHandler:completionCopy];
}

- (void)presentTrailingCustomViewWithCompletion:(id)completion
{
  completionCopy = completion;
  [(SBHIconManager *)self _ensureRootFolderController];
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  [rootFolderController performPageStateTransitionToState:4 reason:@"activate trailing custom view" animated:1 completionHandler:completionCopy];
}

- (BOOL)presentSpotlightFromSource:(unint64_t)source animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  handlerCopy = handler;
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  [rootFolderController setPresentationSource:source];
  if (source == 5)
  {
    [(SBHIconManager *)self popToCurrentRootIconList];
  }

  [rootFolderController presentSpotlightAnimated:animatedCopy completionHandler:handlerCopy];
  isAnySearchVisibleOrTransitioning = [rootFolderController isAnySearchVisibleOrTransitioning];
  [rootFolderController setPresentationSource:0];

  return isAnySearchVisibleOrTransitioning;
}

- (BOOL)dismissSpotlightOrTodayViewAnimated:(BOOL)animated
{
  v4 = [(SBHIconManager *)self presentHomeScreenIconsAnimated:animated];
  delegate = [(SBHIconManager *)self delegate];
  [delegate dismissTodayOverlayForIconManager:self];

  return v4;
}

- (BOOL)presentHomeScreenIconsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(SBHIconManager *)self _isShowingPullDownSearchOrTransitioning]|| (v5 = [(SBHIconManager *)self _isShowingLeadingCustomViewSearchOrTransitioning]))
  {
    rootFolderController = [(SBHIconManager *)self rootFolderController];
    [rootFolderController performPageStateTransitionToState:0 reason:@"dismiss spotlight or today view" animated:animatedCopy completionHandler:0];

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)dismissSpotlightAnimated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  handlerCopy = handler;
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  isAnySearchVisibleOrTransitioning = [rootFolderController isAnySearchVisibleOrTransitioning];

  rootFolderController2 = [(SBHIconManager *)self rootFolderController];
  [rootFolderController2 dismissSpotlightAnimated:animatedCopy completionHandler:handlerCopy];

  return isAnySearchVisibleOrTransitioning;
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
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  isLeadingCustomViewSearchVisible = [rootFolderController isLeadingCustomViewSearchVisible];

  return isLeadingCustomViewSearchVisible;
}

- (unint64_t)supportedMultitaskingShortcutActionsForIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate iconManager:self supportedMultitaskingShortcutActionsForIconView:viewCopy];
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
  iconViewShowingContextMenu = [(SBHIconManager *)self iconViewShowingContextMenu];
  if (iconViewShowingContextMenu)
  {
    v3 = SBLogIcon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      location = [iconViewShowingContextMenu location];
      icon = [iconViewShowingContextMenu icon];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v9 = 138543618;
      v10 = location;
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_DEFAULT, "isShowingIconContextMenu at location '%{public}@' for icon type '%{public}@'", &v9, 0x16u);
    }
  }

  return iconViewShowingContextMenu != 0;
}

- (void)dismissIconContextMenu
{
  iconViewShowingContextMenu = [(SBHIconManager *)self iconViewShowingContextMenu];
  [iconViewShowingContextMenu dismissContextMenuWithCompletion:0];
}

- (void)performAfterIconContextMenuDismissesUsingBlock:(id)block
{
  blockCopy = block;
  iconViewShowingContextMenu = [(SBHIconManager *)self iconViewShowingContextMenu];
  v6 = iconViewShowingContextMenu;
  if (iconViewShowingContextMenu)
  {
    [iconViewShowingContextMenu performAfterContextMenusDismissUsingBlock:blockCopy];
  }

  else
  {
    blockCopy[2](blockCopy);
  }
}

- (void)dismissIconShareSheets
{
  iconShareSheetManager = [(SBHIconManager *)self iconShareSheetManager];
  [iconShareSheetManager dismissIconShareSheetsIfNecessaryAndCleanUp];
}

- (id)prepareForUndo
{
  v2 = [[SBHIconManagerUndoPreparation alloc] initWithIconManager:self];

  return v2;
}

- (void)undoPreparation:(id)preparation registerWithUndoManager:(id)manager actionName:(id)name observer:(id)observer
{
  preparationCopy = preparation;
  managerCopy = manager;
  nameCopy = name;
  observerCopy = observer;
  originalRootFolder = [preparationCopy originalRootFolder];
  rootFolder = [(SBHIconManager *)self rootFolder];

  if (originalRootFolder == rootFolder)
  {
    [preparationCopy setObserver:observerCopy];
    [managerCopy removeAllActionsWithTarget:self];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __78__SBHIconManager_undoPreparation_registerWithUndoManager_actionName_observer___block_invoke;
    v20[3] = &unk_1E808AA10;
    v21 = preparationCopy;
    [managerCopy registerUndoWithTarget:self handler:v20];
    if (nameCopy)
    {
      [managerCopy setActionName:nameCopy];
    }

    v16 = dispatch_time(0, 480000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__SBHIconManager_undoPreparation_registerWithUndoManager_actionName_observer___block_invoke_2;
    block[3] = &unk_1E8088F18;
    v18 = managerCopy;
    selfCopy = self;
    dispatch_after(v16, MEMORY[0x1E69E96A0], block);
  }
}

- (void)undoChangeWithPreparation:(id)preparation
{
  v65[1] = *MEMORY[0x1E69E9840];
  preparationCopy = preparation;
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  v40 = rootFolderController;
  if (rootFolderController)
  {
    v65[0] = rootFolderController;
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

  folderIconImageCache = [(SBHIconManager *)self folderIconImageCache];
  [folderIconImageCache purgeAllCachedFolderImages];

  observer = [preparationCopy observer];
  [observer willUndo];
  selfCopy = self;
  rootFolder = [(SBHIconManager *)self rootFolder];
  v41 = preparationCopy;
  unmodifiedOriginalRootFolder = [preparationCopy unmodifiedOriginalRootFolder];
  v17 = [rootFolder setListsFromFolder:?];
  v36 = rootFolder;
  [rootFolder compactLists];
  v37 = observer;
  [observer didUndo];
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

          visibleListViews = [v21 visibleListViews];
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v25 = [visibleListViews countByEnumeratingWithState:&v49 objects:v62 count:16];
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
                  objc_enumerationMutation(visibleListViews);
                }

                v29 = [*(*(&v49 + 1) + 8 * k) addOverridingLayoutDelegate:v22 reason:@"UndoDrag"];
                if (v29)
                {
                  [v19 addObject:v29];
                }
              }

              v26 = [visibleListViews countByEnumeratingWithState:&v49 objects:v62 count:16];
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

  [(SBHIconManager *)selfCopy layoutIconListsWithAnimationType:0 forceRelayout:0];
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

+ (id)undoActionNameForDraggedIcons:(id)icons
{
  iconsCopy = icons;
  if ([iconsCopy count] == 1)
  {
    firstObject = [iconsCopy firstObject];
    if ([firstObject isApplicationIcon])
    {
      v5 = SBHBundle();
      v6 = v5;
      v7 = @"UNDO_DRAG_APP";
    }

    else if ([firstObject isWidgetIcon])
    {
      v5 = SBHBundle();
      v6 = v5;
      v7 = @"UNDO_DRAG_WIDGET";
    }

    else if ([firstObject isFolderIcon])
    {
      v5 = SBHBundle();
      v6 = v5;
      v7 = @"UNDO_DRAG_FOLDER";
    }

    else
    {
      isBookmarkIcon = [firstObject isBookmarkIcon];
      v5 = SBHBundle();
      v6 = v5;
      if (isBookmarkIcon)
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
    firstObject = SBHBundle();
    v8 = [firstObject localizedStringForKey:@"UNDO_DRAG" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  }

  return v8;
}

- (void)getStatistics:(SBHIconManagerStatistics *)statistics
{
  statistics->var0 = self->_relayoutCount;
  statistics->var2 = [(SBHReusableViewMap *)self->_iconViewMap recycledViewCount];
  statistics->var3 = [(SBHReusableViewMap *)self->_iconViewMap viewRecyclingCount];
  statistics->var4 = [(SBHReusableViewMap *)self->_homescreenIconAccessoryViewMap recycledViewCount];
  statistics->var5 = [(SBHReusableViewMap *)self->_homescreenIconAccessoryViewMap viewRecyclingCount];
  statistics->var6 = [(SBHReusableViewMap *)self->_homescreenIconLabelAccessoryViewMap recycledViewCount];
  statistics->var7 = [(SBHReusableViewMap *)self->_homescreenIconLabelAccessoryViewMap viewRecyclingCount];
  statistics->var8 = [(SBHReusableViewMap *)self->_homescreenIconImageViewMap recycledViewCount];
  statistics->var9 = [(SBHReusableViewMap *)self->_homescreenIconImageViewMap viewRecyclingCount];
  statistics->var10 = [(SBIconLabelImageCache *)self->_labelImageCache numberOfCachedLabelImages];
  statistics->var11 = [(SBIconLabelImageCache *)self->_labelImageCache numberOfCachedLabelHits];
  statistics->var12 = [(SBIconLabelImageCache *)self->_labelImageCache numberOfCachedLabelMisses];
  if (SBHFeatureEnabled(0))
  {
    statistics->var13 = [(SBIconLabelImageCache *)self->_labelImageCache numberOfCachedLegibilityImages];
    statistics->var14 = [(SBIconLabelImageCache *)self->_labelImageCache numberOfCachedLegibilityHits];
    statistics->var15 = [(SBIconLabelImageCache *)self->_labelImageCache numberOfCachedLegibilityMisses];
  }

  statistics->var16 = [(SBHIconImageCache *)self->_iconImageCache numberOfCachedImages];
  statistics->var17 = [(SBHIconImageCache *)self->_iconImageCache numberOfCacheHits];
  statistics->var18 = [(SBHIconImageCache *)self->_iconImageCache numberOfCacheMisses];
  statistics->var19 = [(SBHIconImageCache *)self->_iconImageCache numberOfMainThreadImageLoads];
  statistics->var20 = [(SBHIconImageCache *)self->_iconImageCache numberOfUnmaskedCachedImages];
  statistics->var21 = [(SBHIconImageCache *)self->_iconImageCache numberOfUnmaskedCacheHits];
  statistics->var22 = [(SBHIconImageCache *)self->_iconImageCache numberOfUnmaskedCacheMisses];
  statistics->var23 = [(SBFolderIconImageCache *)self->_folderIconImageCache numberOfCachedImages];
  statistics->var24 = [(SBFolderIconImageCache *)self->_folderIconImageCache numberOfCacheHits];
  statistics->var25 = [(SBFolderIconImageCache *)self->_folderIconImageCache numberOfCacheMisses];
  statistics->var1 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__SBHIconManager_getStatistics___block_invoke;
  v5[3] = &__block_descriptor_40_e24_v24__0__SBIconView_8_B16l;
  v5[4] = statistics;
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

- (id)_makeCustomViewControllerForWidgetIcon:(id)icon dataSource:(id)source location:(id)location
{
  locationCopy = location;
  sourceCopy = source;
  iconCopy = icon;
  gridSizeClass = [iconCopy gridSizeClass];
  v12 = [(SBHIconManager *)self _makeCustomViewControllerForWidgetIcon:iconCopy dataSource:sourceCopy location:locationCopy gridSizeClass:gridSizeClass];

  return v12;
}

- (id)_makeCustomViewControllerForWidgetIcon:(id)icon dataSource:(id)source location:(id)location gridSizeClass:(id)class
{
  iconCopy = icon;
  sourceCopy = source;
  locationCopy = location;
  classCopy = class;
  delegate = [(SBHIconManager *)self delegate];
  v15 = objc_opt_self();
  v69 = sourceCopy;
  if (objc_opt_isKindOfClass())
  {
    v16 = sourceCopy;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  kind = [v17 kind];
  extensionBundleIdentifier = [v17 extensionBundleIdentifier];
  containerBundleIdentifier = [v17 containerBundleIdentifier];
  gridSizeClassDomain = [(SBHIconManager *)self gridSizeClassDomain];
  if (v17)
  {
    v22 = kind == 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = v22 || extensionBundleIdentifier == 0;
  v70 = gridSizeClassDomain;
  v67 = classCopy;
  v68 = locationCopy;
  v65 = containerBundleIdentifier;
  v66 = kind;
  if (v23)
  {
    v24 = delegate;
    if (objc_opt_respondsToSelector())
    {
      v25 = delegate;
      v26 = v69;
      v27 = [v25 iconManager:self viewControllerForCustomIcon:iconCopy element:v69];
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
    v29 = gridSizeClassDomain;
    v64 = 1;
    v63 = iconCopy;
    v30 = [(SBHIconManager *)self _intentForWidget:v17 ofIcon:iconCopy creatingIfNecessary:1];
    v31 = [v29 chsWidgetFamilyForIconGridSizeClass:classCopy];
    v32 = containerBundleIdentifier;
    v33 = v31;
    v62 = extensionBundleIdentifier;
    v60 = [objc_alloc(MEMORY[0x1E6994290]) initWithExtensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:v32 deviceIdentifier:0];
    v61 = v30;
    v34 = [objc_alloc(MEMORY[0x1E6994370]) initWithExtensionIdentity:v60 kind:kind family:v33 intent:v30 activityIdentifier:0];
    v35 = [(SBHIconManager *)self metricsForCHSWidget:v34 inLocation:locationCopy];
    v36 = [locationCopy isEqualToString:@"SBIconLocationAddWidgetSheet"];
    suggestionSource = [v17 suggestionSource];
    v38 = SBIconLocationGroupContainsLocation(@"SBIconLocationGroupTodayView", locationCopy);
    v24 = delegate;
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

    if (suggestionSource == 3)
    {
      v39 = 1;
    }

    else
    {
      v39 = v36;
    }

    v40 = [SBHWidgetViewController alloc];
    uniqueIdentifier = [v17 uniqueIdentifier];
    v27 = [(SBHWidgetViewController *)v40 initWithWidget:v34 metrics:v35 widgetConfigurationIdentifier:uniqueIdentifier];

    aliveWidgetViewControllersHashTable = self->_aliveWidgetViewControllersHashTable;
    if (!aliveWidgetViewControllersHashTable)
    {
      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v44 = self->_aliveWidgetViewControllersHashTable;
      self->_aliveWidgetViewControllersHashTable = weakObjectsHashTable;

      aliveWidgetViewControllersHashTable = self->_aliveWidgetViewControllersHashTable;
    }

    v59 = v35;
    [(NSHashTable *)aliveWidgetViewControllersHashTable addObject:v27];
    [(SBHWidgetViewController *)v27 setDelegate:self];
    [(SBHWidgetViewController *)v27 setContentType:v39];
    [(SBHWidgetViewController *)v27 setCanAppearInSecureEnvironment:v64];
    [(SBHWidgetViewController *)v27 setDrawSystemBackgroundMaterialIfNecessary:1];
    widgetExtensionProvider = [(SBHIconManager *)self widgetExtensionProvider];
    [(SBHWidgetViewController *)v27 sbh_setWidgetExtensionProvider:widgetExtensionProvider];

    if (objc_opt_respondsToSelector())
    {
      [v24 iconManager:self configureColorSchemeForWidgetViewController:v27];
    }

    extensionBundleIdentifier = v62;
    iconCopy = v63;
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
  v49 = [v26 icon:iconCopy displayNameForLocation:@"SBIconLocationRoot"];
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
    _effectiveAppPredictionViewControllersForUniqueIdentifier = [(SBHIconManager *)self _effectiveAppPredictionViewControllersForUniqueIdentifier];
    uniqueIdentifier2 = [v26 uniqueIdentifier];
    [_effectiveAppPredictionViewControllersForUniqueIdentifier setObject:v55 forKey:uniqueIdentifier2];

    v28 = v70;
  }

  return v27;
}

- (void)updateWidgetViewControllersWithRenderScheme:(id)scheme
{
  schemeCopy = scheme;
  _effectiveWidgetMultiplexingManager = [(SBHIconManager *)self _effectiveWidgetMultiplexingManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__SBHIconManager_updateWidgetViewControllersWithRenderScheme___block_invoke;
  v7[3] = &unk_1E8090238;
  v8 = schemeCopy;
  v6 = schemeCopy;
  [_effectiveWidgetMultiplexingManager enumerateAllViewControllersUsingBlock:v7];
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

- (void)updateWidgetViewControllersWithCustomDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  _effectiveWidgetMultiplexingManager = [(SBHIconManager *)self _effectiveWidgetMultiplexingManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__SBHIconManager_updateWidgetViewControllersWithCustomDisplayConfiguration___block_invoke;
  v7[3] = &unk_1E8090238;
  v8 = configurationCopy;
  v6 = configurationCopy;
  [_effectiveWidgetMultiplexingManager enumerateAllViewControllersUsingBlock:v7];
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

- (void)_loadAndSaveDefaultIntentIfNecessaryForWidget:(id)widget ofIcon:(id)icon viewController:(id)controller
{
  v59 = *MEMORY[0x1E69E9840];
  widgetCopy = widget;
  iconCopy = icon;
  val = controller;
  widget = [val widget];
  v11 = widget;
  if (widget)
  {
    v12 = widget;
  }

  else
  {
    v12 = widgetCopy;
  }

  v13 = v12;
  extensionIdentity = [v13 extensionIdentity];
  extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];

  kind = [v13 kind];
  v15 = [(SBHIconManager *)self _intentForWidget:widgetCopy ofIcon:iconCopy loadingFromArchiveIfNecessary:1 usingDefaultIntentIfNecessary:0];
  if (v15)
  {
    iconModel = [(SBHIconManager *)self iconModel];
    widgetIcons = [iconModel widgetIcons];
    if ([widgetIcons containsObject:iconCopy])
    {
      v18 = [(SBHIconManager *)self _archivedIntentForDataSource:widgetCopy inIcon:iconCopy loadingIfNecessary:1];

      if (!v18)
      {
        v19 = SBLogIcon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v54 = extensionBundleIdentifier;
          v55 = 2112;
          v56 = kind;
          v57 = 2112;
          v58 = v15;
          _os_log_impl(&dword_1BEB18000, v19, OS_LOG_TYPE_DEFAULT, "Archiving intent that was missing from archive for widget (%@ - %@): %@", buf, 0x20u);
        }

        [(SBHIconManager *)self _archiveConfiguration:v15 forDataSource:widgetCopy ofIcon:iconCopy];
      }
    }

    else
    {
    }

    intentReference = [v11 intentReference];
    intent = [intentReference intent];

    if (!intent || (v26 = [intent _indexingHash], v26 != objc_msgSend(v15, "_indexingHash")))
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
    v21 = extensionBundleIdentifier;
    v46 = v21;
    v22 = kind;
    v47 = v22;
    v32 = iconCopy;
    v48 = v32;
    v31 = widgetCopy;
    v49 = v31;
    objc_copyWeak(&v51, &location);
    v50 = v11;
    v33 = _Block_copy(aBlock);
    widgetExtensionProvider = [(SBHIconManager *)self widgetExtensionProvider];
    v34 = [widgetExtensionProvider sbh_descriptorForWidgetIdentifiable:v20];

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

- (void)performAfterCachingWidgetIntentsUsingBlock:(id)block
{
  blockCopy = block;
  if ([(NSMutableSet *)self->_pendingWidgetIntentConfigurationInitializations count]|| [(NSMutableSet *)self->_activeWidgetIntentConfigurationInitializations count])
  {
    if (!self->_performAfterPendingWidgetIntentConfigurationBlocks)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      performAfterPendingWidgetIntentConfigurationBlocks = self->_performAfterPendingWidgetIntentConfigurationBlocks;
      self->_performAfterPendingWidgetIntentConfigurationBlocks = v5;
    }

    v7 = [blockCopy copy];
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
    blockCopy[2](blockCopy);
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

- (id)_newIntentForDataSource:(id)source inIcon:(id)icon loadingFromArchiveIfNecessary:(BOOL)necessary usingDefaultIntentIfNecessary:(BOOL)ifNecessary
{
  ifNecessaryCopy = ifNecessary;
  necessaryCopy = necessary;
  sourceCopy = source;
  iconCopy = icon;
  intent = [(SBHIconManager *)self _archivedIntentForDataSource:sourceCopy inIcon:iconCopy loadingIfNecessary:necessaryCopy];
  if (!intent && ifNecessaryCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      widgetExtensionProvider = [(SBHIconManager *)self widgetExtensionProvider];
      v14 = [widgetExtensionProvider sbh_descriptorForWidgetIdentifiable:sourceCopy];

      defaultIntentReference = [v14 defaultIntentReference];
      intent = [defaultIntentReference intent];

      v16 = SBLogWidgetIntent();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [SBHIconManager _newIntentForDataSource:iconCopy inIcon:v16 loadingFromArchiveIfNecessary:? usingDefaultIntentIfNecessary:?];
      }
    }

    else
    {
      intent = 0;
    }
  }

  return intent;
}

- (id)_intentForDataSource:(id)source inIcon:(id)icon loadingFromArchiveIfNecessary:(BOOL)necessary usingDefaultIntentIfNecessary:(BOOL)ifNecessary
{
  ifNecessaryCopy = ifNecessary;
  necessaryCopy = necessary;
  sourceCopy = source;
  iconCopy = icon;
  if (objc_opt_respondsToSelector())
  {
    uniqueIdentifier = [sourceCopy uniqueIdentifier];
    if (uniqueIdentifier)
    {
      v13 = [(NSMutableDictionary *)self->_widgetIntents objectForKey:uniqueIdentifier];
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
    uniqueIdentifier = 0;
  }

  v16 = [(SBHIconManager *)self _newIntentForDataSource:sourceCopy inIcon:iconCopy loadingFromArchiveIfNecessary:necessaryCopy usingDefaultIntentIfNecessary:ifNecessaryCopy];
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

    [(NSMutableDictionary *)widgetIntents setObject:v14 forKey:uniqueIdentifier];
  }

LABEL_13:

  return v14;
}

- (id)_archivedIntentForDataSource:(id)source inIcon:(id)icon loadingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v52 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  iconCopy = icon;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v11 = 0;
    uniqueIdentifier = 0;
LABEL_7:
    v12 = 0;
LABEL_8:
    if (!necessaryCopy)
    {
      goto LABEL_23;
    }

    delegate = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v14 = [delegate iconManager:self configurationDataForDataSource:sourceCopy ofIcon:iconCopy];
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
            _indexingHash = [v11 _indexingHash];
            *buf = 134218242;
            v45 = _indexingHash;
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
        v30 = sourceCopy;
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

        extensionBundleIdentifier = [v32 extensionBundleIdentifier];

        if ([extensionBundleIdentifier isEqualToString:@"com.apple.mobilecal.CalendarWidgetExtension"])
        {
          v41 = v15;
          _className = [v11 _className];
          v35 = [_className isEqualToString:@"CalendarSpatialWidgetIntent"];

          if ((v35 & 1) == 0)
          {
            v15 = v41;
            v36 = v42;
            goto LABEL_38;
          }

          extensionBundleIdentifier = v11;
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

          [(NSMutableDictionary *)archivedWidgetIntents setObject:v11 forKey:uniqueIdentifier];
        }

        goto LABEL_22;
      }

      if (__sb__runningInSpringBoard())
      {
        v22 = SBLogWidgetIntent();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          applicationBundleID = [iconCopy applicationBundleID];
          activeDataSource = [iconCopy activeDataSource];
          v25 = SBHConfigurationIdentifierFromDataSource(activeDataSource);
          activeDataSource2 = [iconCopy activeDataSource];
          v27 = SBHUniqueIdentifierOfDataSource(activeDataSource2);
          *buf = 138544130;
          v45 = iconCopy;
          v46 = 2114;
          v47 = applicationBundleID;
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

  uniqueIdentifier = [sourceCopy uniqueIdentifier];
  if (!uniqueIdentifier)
  {
    v11 = 0;
    goto LABEL_7;
  }

  v11 = [(NSMutableDictionary *)self->_archivedWidgetIntents objectForKey:uniqueIdentifier];
  v12 = 1;
  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_23:

  return v11;
}

- (id)_stackConfigurationForStackIcon:(id)icon
{
  iconCopy = icon;
  _alwaysPresentStackConfigurationSheet = [(SBHIconManager *)self _alwaysPresentStackConfigurationSheet];
  if (([iconCopy isWidgetStackIcon] & 1) != 0 || _alwaysPresentStackConfigurationSheet)
  {
    v6 = objc_alloc_init(SBHStackConfiguration);
    -[SBHStackConfiguration setAllowsSuggestions:](v6, "setAllowsSuggestions:", [iconCopy allowsSuggestions]);
    -[SBHStackConfiguration setAllowsExternalSuggestions:](v6, "setAllowsExternalSuggestions:", [iconCopy allowsExternalSuggestions]);
    iconDataSources = [iconCopy iconDataSources];
    [(SBHStackConfiguration *)v6 setDataSources:iconDataSources];

    gridSizeClass = [iconCopy gridSizeClass];
    [(SBHStackConfiguration *)v6 setSizeClass:gridSizeClass];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)validatedWidgetIconForWidgetIcon:(id)icon
{
  v39 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  gridSizeClass = [iconCopy gridSizeClass];
  widgets = [iconCopy widgets];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [widgets countByEnumeratingWithState:&v29 objects:v38 count:16];
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
          objc_enumerationMutation(widgets);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        if (![(SBHIconManager *)self isWidgetValid:v12 iconSizeClass:gridSizeClass, v23])
        {
          v13 = SBLogWidgets();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v23;
            v35 = v12;
            v36 = 2112;
            v37 = iconCopy;
            _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_DEFAULT, "Removing iconDataSource:%@ from widgetIcon:%@ as it is no longer valid", buf, 0x16u);
          }

          [iconCopy removeIconDataSource:v12];
        }
      }

      v9 = [widgets countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v9);
  }

  v14 = [iconCopy iconDataSourcesOfClass:objc_opt_class()];
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
            v37 = iconCopy;
            _os_log_impl(&dword_1BEB18000, v21, OS_LOG_TYPE_DEFAULT, "Removing iconDataSource:%@ from widgetIcon:%@ as it is no longer valid", buf, 0x16u);
          }

          [iconCopy removeIconDataSource:v20];
        }
      }

      v17 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v17);
  }

  return iconCopy;
}

- (BOOL)isCustomIconElementValid:(id)valid
{
  v11 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  containerBundleIdentifier = [validCopy containerBundleIdentifier];
  v5 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:containerBundleIdentifier];
  if (([v5 isLocked] & 1) != 0 || objc_msgSend(v5, "isHidden"))
  {
    v6 = SBLogWidgets();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = validCopy;
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

- (BOOL)isWidgetValid:(id)valid iconSizeClass:(id)class
{
  v28 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  classCopy = class;
  widgetExtensionProvider = [(SBHIconManager *)self widgetExtensionProvider];
  v9 = [widgetExtensionProvider sbh_descriptorForWidgetIdentifiable:validCopy];
  delegate = [(SBHIconManager *)self delegate];
  gridSizeClassDomain = [(SBHIconManager *)self gridSizeClassDomain];
  if (v9)
  {
    v25 = delegate;
    v12 = -[SBHIconGridSizeClassSet initWithCHSWidgetFamilyMask:inDomain:]([SBHIconGridSizeClassSet alloc], "initWithCHSWidgetFamilyMask:inDomain:", [v9 supportedFamilies], gridSizeClassDomain);
    LODWORD(v13) = [(SBHIconGridSizeClassSet *)v12 containsGridSizeClass:classCopy];
    if ((v13 & 1) == 0)
    {
      v14 = SBLogWidgets();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = validCopy;
        _os_log_impl(&dword_1BEB18000, v14, OS_LOG_TYPE_DEFAULT, "Icon size class no longer supported for widget; removing widget: %@", buf, 0xCu);
      }
    }

    v15 = validCopy;
    v16 = widgetExtensionProvider;
    v17 = gridSizeClassDomain;
    v18 = classCopy;
    extensionIdentity = [v9 extensionIdentity];
    containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];

    if (objc_opt_respondsToSelector())
    {
      v21 = [v25 iconManager:self containerBundleIdentifierForDescriptor:v9];

      containerBundleIdentifier = v21;
    }

    v22 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:containerBundleIdentifier];
    v23 = v22;
    classCopy = v18;
    if (v13)
    {
      gridSizeClassDomain = v17;
      if (([v22 isLocked] & 1) != 0 || objc_msgSend(v23, "isHidden"))
      {
        v13 = SBLogWidgets();
        widgetExtensionProvider = v16;
        validCopy = v15;
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
      gridSizeClassDomain = v17;
    }

    widgetExtensionProvider = v16;
    validCopy = v15;
LABEL_21:
    delegate = v25;

    goto LABEL_25;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [delegate iconManager:self isWidgetValid:validCopy])
  {
    v12 = SBLogWidgets();
    if (os_log_type_enabled(&v12->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = validCopy;
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
      v27 = validCopy;
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
  iconModel = [(SBHIconManager *)self iconModel];
  widgetIcons = [iconModel widgetIcons];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [widgetIcons countByEnumeratingWithState:&v12 objects:v18 count:16];
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
          objc_enumerationMutation(widgetIcons);
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

      v5 = [widgetIcons countByEnumeratingWithState:&v12 objects:v18 count:16];
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

  iconModel = [(SBHIconManager *)self iconModel];
  [iconModel widgetIcons];
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
        activeWidget = [v8 activeWidget];
        v10 = activeWidget;
        if (activeWidget)
        {
          uniqueIdentifier = [activeWidget uniqueIdentifier];
          _effectiveWidgetMultiplexingManager = [(SBHIconManager *)self _effectiveWidgetMultiplexingManager];
          v30 = uniqueIdentifier;
          v13 = [_effectiveWidgetMultiplexingManager viewControllerForIdentifier:uniqueIdentifier];

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
            widget = [v17 widget];
            v19 = widget;
            if (widget)
            {
              v20 = widget;
            }

            else
            {
              v20 = v10;
            }

            v21 = v20;
            [(SBHIconManager *)self widgetExtensionProvider];
            v23 = v22 = self;
            v24 = [v23 sbh_descriptorForWidgetIdentifiable:v21];

            intentType = [v24 intentType];

            if (intentType)
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

- (id)metricsForCHSWidget:(id)widget inLocation:(id)location
{
  widgetCopy = widget;
  locationCopy = location;
  delegate = [(SBHIconManager *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([delegate iconManager:self metricsForCHSWidget:widgetCopy inLocation:locationCopy], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    widgetMetricsProvider = [(SBHIconManager *)self widgetMetricsProvider];
    v9 = [widgetMetricsProvider systemMetricsForWidget:widgetCopy];
  }

  return v9;
}

- (void)widgetHostViewController:(id)controller requestsLaunch:(id)launch
{
  controllerCopy = controller;
  launchCopy = launch;
  _effectiveWidgetMultiplexingManager = [(SBHIconManager *)self _effectiveWidgetMultiplexingManager];
  v9 = [_effectiveWidgetMultiplexingManager activeMultiplexingViewControllerForViewController:controllerCopy];

  v10 = [(NSMapTable *)self->_iconViewsForWidgetMultiplexingViewController objectForKey:v9];
  if (([v10 isShowingContextMenu] & 1) == 0 && !-[SBHIconManager isEditing](self, "isEditing"))
  {
    currentStylePickerViewController = [(SBHIconManager *)self currentStylePickerViewController];

    if (!currentStylePickerViewController)
    {
      icon = [v10 icon];
      v13 = objc_opt_class();
      v14 = icon;
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

      activeWidget = [v16 activeWidget];
      if (!activeWidget)
      {
        goto LABEL_45;
      }

      [controllerCopy widget];
      v18 = v49 = v16;
      extensionIdentity = [v18 extensionIdentity];
      [extensionIdentity extensionBundleIdentifier];
      v20 = v50 = activeWidget;
      extensionBundleIdentifier = [v50 extensionBundleIdentifier];
      v22 = [v20 isEqualToString:extensionBundleIdentifier];

      activeWidget = v50;
      v16 = v49;
      if (!v22)
      {
        goto LABEL_45;
      }

      delegate = [(SBHIconManager *)self delegate];
      extensionBundleIdentifier2 = [v50 extensionBundleIdentifier];
      if (objc_opt_respondsToSelector())
      {
        v51 = 0;
        v25 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:extensionBundleIdentifier2 error:&v51];
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
        containingBundleRecord = [v25 containingBundleRecord];
        v29 = containingBundleRecord;
        if (v25 && !containingBundleRecord)
        {
          v30 = SBLogWidgets();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [SBHIconManager widgetHostViewController:requestsLaunch:];
          }
        }

        bundleIdentifier = [v29 bundleIdentifier];
        if (bundleIdentifier)
        {
          v45 = [delegate iconManager:self isIconVisibleForBundleIdentifier:bundleIdentifier];
        }

        else
        {
          v45 = 0;
        }

        activeWidget = v50;
      }

      else
      {
        v45 = 0;
      }

      action = [launchCopy action];
      [launchCopy url];
      v48 = v46 = extensionBundleIdentifier2;
      if (v48)
      {
        containerBundleIdentifier = [activeWidget containerBundleIdentifier];
        if ([containerBundleIdentifier isEqualToString:@"com.apple.PeopleViewService"])
        {
          widgetSettings = [(SBHHomeScreenSettings *)self->_homeScreenSettings widgetSettings];
          [widgetSettings personDetailInteractionSettings];
          v35 = action;
          v37 = v36 = delegate;
          usesCardStyle = [v37 usesCardStyle];

          delegate = v36;
          action = v35;

          if (usesCardStyle)
          {
            v38 = [(SBHIconManager *)self _personDetailInteractionContextForPersonURL:v48 iconView:v10];
            v39 = [[SBHPeopleWidgetPersonDetailInteraction alloc] initWithInteractionContext:v38];
            [(SBHPeopleWidgetPersonDetailInteraction *)v39 setModalInteractionDelegate:self];
            [(SBHPeopleWidgetPersonDetailInteraction *)v39 beginInteractionAnimated:1];

            activeWidget = v50;
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
          v38 = [delegate iconManager:self bundleIdentifierToLaunchForWidgetURL:v48];
          activeWidget = v50;
          if (v38)
          {
            v44 = delegate;
            containerBundleIdentifier2 = [v50 containerBundleIdentifier];
            v41 = [v38 isEqualToString:containerBundleIdentifier2];

            if (((v45 | v41) & 1) != 0 || ![launchCopy isEntitledToOpenSystemProcesses])
            {
              delegate = v44;
            }

            else
            {
              delegate = v44;
              if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
              {
                if (objc_opt_respondsToSelector())
                {
                  [v44 iconManager:self iconView:v10 widgetWantsLaunchForBundleIdentifier:v38 withAction:action];
                }

                else if (objc_opt_respondsToSelector())
                {
                  [v44 iconManager:self widgetWantsLaunchForBundleIdentifier:v38 withAction:action];
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
          activeWidget = v50;
        }
      }

      else
      {
        v38 = 0;
      }

      [(SBHIconManager *)self highlightIconView:v10];
      v42 = [MEMORY[0x1E695DFD8] setWithObject:action];
      [(SBHIconManager *)self launchFromIconView:v10 withActions:v42 modifierFlags:0];

      goto LABEL_44;
    }
  }

LABEL_46:
}

- (void)widgetHostViewControllerUsesSystemBackgroundMaterialDidChange:(id)change
{
  changeCopy = change;
  _effectiveWidgetMultiplexingManager = [(SBHIconManager *)self _effectiveWidgetMultiplexingManager];
  v15 = [_effectiveWidgetMultiplexingManager activeMultiplexingViewControllerForViewController:changeCopy];

  v6 = [(NSMapTable *)self->_iconViewsForWidgetMultiplexingViewController objectForKey:v15];
  v7 = [(NSMapTable *)self->_widgetViewControllersForIconView objectForKey:v6];
  if (v7)
  {
    icon = [v6 icon];
    v9 = [(SBFolder *)self->_rootFolder indexPathForIcon:icon];
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

- (BOOL)_determineIfAvocadoHostViewControllerIsVisible:(id)visible
{
  visibleCopy = visible;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__SBHIconManager__determineIfAvocadoHostViewControllerIsVisible___block_invoke;
  aBlock[3] = &unk_1E80902B0;
  aBlock[4] = self;
  v5 = visibleCopy;
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

- (BOOL)_determineIfAvocadoHostViewControllerIsVisible:(id)visible withinStackViewController:(id)controller
{
  v18 = *MEMORY[0x1E69E9840];
  visibleCopy = visible;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  widgetViewControllers = [controller widgetViewControllers];
  v7 = [widgetViewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(widgetViewControllers);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        multiplexedViewController = [v10 multiplexedViewController];

        if (multiplexedViewController == visibleCopy)
        {
          LOBYTE(v7) = [v10 bs_isAppearingOrAppeared];
          goto LABEL_11;
        }
      }

      v7 = [widgetViewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)multiplexingManager:(id)manager willRemoveViewController:(id)controller forIdentifier:(id)identifier
{
  controllerCopy = controller;
  identifierCopy = identifier;
  if ([controllerCopy sbh_isWidgetHostViewController])
  {
    v8 = controllerCopy;
    [v8 setPresentationMode:1];
    [v8 invalidate];
  }

  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self willRemoveViewControllerForIdentifier:identifierCopy];
  }
}

- (BOOL)multiplexingManager:(id)manager shouldCacheRecentViewController:(id)controller forIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  identifierCopy = identifier;
  if ([identifierCopy hasSuffix:@":Preview"])
  {
    v9 = 0;
  }

  else
  {
    iconModel = [(SBHIconManager *)self iconModel];
    v11 = [iconModel widgetIconsContainingWidgetsMatchingUniqueIdentifier:identifierCopy];
    if ([v11 count])
    {
      delegate = [(SBHIconManager *)self delegate];
      if ((objc_opt_respondsToSelector() & 1) != 0 && ![delegate iconManager:self shouldCacheRecentViewController:controllerCopy forIdentifier:identifierCopy])
      {
        v16 = SBLogWidgetCleanup();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138543362;
          v19 = controllerCopy;
          _os_log_impl(&dword_1BEB18000, v16, OS_LOG_TYPE_DEFAULT, "Discarding %{public}@; will not cache", &v18, 0xCu);
        }

        v9 = 0;
      }

      else
      {
        bs_isAppearingOrAppeared = [controllerCopy bs_isAppearingOrAppeared];
        v14 = SBLogWidgetCleanup();
        v15 = v14;
        if (bs_isAppearingOrAppeared)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [SBHIconManager multiplexingManager:shouldCacheRecentViewController:forIdentifier:];
          }

          [controllerCopy bs_beginAppearanceTransition:0 animated:0];
          [controllerCopy bs_endAppearanceTransition];
        }

        else
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v18 = 138543362;
            v19 = controllerCopy;
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

- (void)multiplexingManager:(id)manager cachedRecentViewController:(id)controller forIdentifier:(id)identifier
{
  controllerCopy = controller;
  if ([controllerCopy sbh_isWidgetHostViewController])
  {
    [controllerCopy setPresentationMode:1];
  }
}

- (id)_multiplexingViewControllerForIcon:(id)icon dataSource:(id)source location:(id)location withPriority:(unint64_t)priority
{
  v25 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  sourceCopy = source;
  locationCopy = location;
  uniqueIdentifier = [sourceCopy uniqueIdentifier];
  v14 = uniqueIdentifier;
  v15 = 0;
  if (iconCopy && sourceCopy && uniqueIdentifier)
  {
    _effectiveWidgetMultiplexingManager = [(SBHIconManager *)self _effectiveWidgetMultiplexingManager];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [locationCopy isEqualToString:@"SBIconLocationAddWidgetSheet"])
    {
      v17 = [v14 stringByAppendingString:@":Preview"];

      v14 = v17;
    }

    if (([_effectiveWidgetMultiplexingManager hasViewControllerForIdentifier:v14] & 1) == 0)
    {
      v18 = SBLogIcon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v21 = 138412546;
        v22 = iconCopy;
        v23 = 2112;
        v24 = sourceCopy;
        _os_log_impl(&dword_1BEB18000, v18, OS_LOG_TYPE_INFO, "Creating new view controller for icon: %@, data source: %@", &v21, 0x16u);
      }

      v19 = [(SBHIconManager *)self _makeCustomViewControllerForWidgetIcon:iconCopy dataSource:sourceCopy location:locationCopy];
      [_effectiveWidgetMultiplexingManager setViewController:v19 forIdentifier:v14];
    }

    v15 = [_effectiveWidgetMultiplexingManager newMultiplexingViewControllerForIdentifier:v14 atLevel:priority];
  }

  return v15;
}

- (id)widgetStackViewController:(id)controller viewControllerForDataSource:(id)source
{
  controllerCopy = controller;
  sourceCopy = source;
  widgetIcon = [controllerCopy widgetIcon];
  host = [(NSMapTable *)self->_iconViewsForCustomIconImageViewController objectForKey:controllerCopy];
  if (host)
  {
    goto LABEL_2;
  }

  if (objc_opt_respondsToSelector())
  {
    host = [controllerCopy host];
    v12 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      if (host)
      {
LABEL_2:
        location = [host location];
        customIconImageViewControllerPriority = [host customIconImageViewControllerPriority];
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  NSLog(&cfstr_MissingIconvie.isa);
  location = @"SBIconLocationRoot";
  host = 0;
  customIconImageViewControllerPriority = 0;
LABEL_9:
  v14 = [(SBHIconManager *)self _multiplexingViewControllerForIcon:widgetIcon dataSource:sourceCopy location:location withPriority:customIconImageViewControllerPriority];

  [(SBHIconManager *)self _updateWidgetMultiplexingViewController:v14 forIconView:host];

  return v14;
}

- (id)widgetStackViewController:(id)controller containerApplicationNameForDataSource:(id)source
{
  v5 = [(SBHIconManager *)self containerBundleIdentifierForDataSource:source];
  if (v5)
  {
    v6 = [(SBHIconManager *)self applicationWithBundleIdentifier:v5];
    v7 = v6;
    if (v6)
    {
      displayName = [v6 displayName];
    }

    else
    {
      displayName = 0;
    }
  }

  else
  {
    displayName = 0;
  }

  return displayName;
}

- (BOOL)widgetStackViewController:(id)controller isDataSourceBlockedForScreenTimeExpiration:(id)expiration
{
  v5 = [(SBHIconManager *)self containerBundleIdentifierForDataSource:expiration];
  if (v5)
  {
    iconModel = [(SBHIconManager *)self iconModel];
    delegate = [(SBHIconManager *)self delegate];
    v8 = [iconModel applicationIconForBundleIdentifier:v5];
    v9 = v8;
    if (v8)
    {
      isTimedOut = [v8 isTimedOut];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v11 = 0;
        goto LABEL_8;
      }

      isTimedOut = [delegate iconManager:self isTimedOutForDataSourceContainerBundleIdentifier:v5];
    }

    v11 = isTimedOut;
LABEL_8:

    goto LABEL_9;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (void)widgetStackViewController:(id)controller didActivateDataSource:(id)source fromUserInteraction:(BOOL)interaction
{
  interactionCopy = interaction;
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  sourceCopy = source;
  widgetIcon = [controllerCopy widgetIcon];
  v11 = widgetIcon;
  if (sourceCopy && ([widgetIcon hasIconDataSource:sourceCopy] & 1) == 0)
  {
    v14 = SBLogIcon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SBHIconManager widgetStackViewController:sourceCopy didActivateDataSource:v11 fromUserInteraction:v14];
    }
  }

  else
  {
    if (interactionCopy)
    {
      [v11 setStackChangeReason:1];
      [v11 setLastUserSelectedDataSource:sourceCopy];
      v12 = SBLogIcon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        uniqueIdentifier = [v11 uniqueIdentifier];
        v15 = 138412546;
        v16 = sourceCopy;
        v17 = 2112;
        v18 = uniqueIdentifier;
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

    [v11 setActiveDataSource:sourceCopy];
    [(SBHIconManager *)self _updateCaptureOnlyBackgroundViewForCustomIconImageViewController:controllerCopy];
  }
}

- (void)widgetStackViewController:(id)controller didRemoveViewController:(id)viewController
{
  viewControllerCopy = viewController;
  _effectiveWidgetMultiplexingManager = [(SBHIconManager *)self _effectiveWidgetMultiplexingManager];
  [_effectiveWidgetMultiplexingManager discardMultiplexingViewController:viewControllerCopy];

  [(NSMapTable *)self->_iconViewsForWidgetMultiplexingViewController removeObjectForKey:viewControllerCopy];
}

- (void)widgetStackViewController:(id)controller didFinishUsingBackgroundView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    widgetBackgroundViewMap = [(SBHIconManager *)self widgetBackgroundViewMap];
    [widgetBackgroundViewMap recycleView:viewCopy];
  }
}

- (BOOL)widgetStackViewControllerCanFlashPageControl:(id)control
{
  controlCopy = control;
  if ([(SBHIconManager *)self limitsWidgetStackPageControlFlashesToSession])
  {
    widgetIcon = [controlCopy widgetIcon];
    uniqueIdentifier = [widgetIcon uniqueIdentifier];
    if (uniqueIdentifier)
    {
      v7 = [(NSMutableSet *)self->_widgetIconIdentifiersForPageControlFlashes containsObject:uniqueIdentifier]^ 1;
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

- (void)widgetStackViewControllerDidFlashPageControl:(id)control
{
  widgetIcon = [control widgetIcon];
  uniqueIdentifier = [widgetIcon uniqueIdentifier];
  if (uniqueIdentifier)
  {
    widgetIconIdentifiersForPageControlFlashes = self->_widgetIconIdentifiersForPageControlFlashes;
    if (!widgetIconIdentifiersForPageControlFlashes)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v7 = self->_widgetIconIdentifiersForPageControlFlashes;
      self->_widgetIconIdentifiersForPageControlFlashes = v6;

      widgetIconIdentifiersForPageControlFlashes = self->_widgetIconIdentifiersForPageControlFlashes;
    }

    [(NSMutableSet *)widgetIconIdentifiersForPageControlFlashes addObject:uniqueIdentifier];
  }
}

- (void)multiplexingWrapperViewControllerWillChangeGridAlignment:(id)alignment
{
  alignmentCopy = alignment;
  if (([alignmentCopy isGridAligned] & 1) == 0)
  {
    [(SBHIconManager *)self _updateCaptureOnlyBackgroundViewForCustomIconImageViewController:alignmentCopy];
  }
}

- (void)multiplexingWrapperViewControllerDidChangeGridAlignment:(id)alignment
{
  alignmentCopy = alignment;
  if (([alignmentCopy isGridAligned] & 1) == 0)
  {
    [(SBHIconManager *)self _updateCaptureOnlyBackgroundViewForCustomIconImageViewController:alignmentCopy];
  }
}

- (void)_updateCaptureOnlyBackgroundViewForCustomIconImageViewController:(id)controller
{
  controllerCopy = controller;
  v4 = objc_opt_respondsToSelector();
  v5 = controllerCopy;
  if (v4)
  {
    icon = [controllerCopy icon];
    v7 = [(SBFolder *)self->_rootFolder indexPathForIcon:icon];
    v8 = [(SBHIconManager *)self iconListViewForIndexPath:v7];
    if ([v8 containsIcon:icon])
    {
      v9 = [(NSMapTable *)self->_iconViewsForCustomIconImageViewController objectForKey:controllerCopy];
      if (v9)
      {
        [v8 _insertOrRemoveCaptureOnlyBackgroundViewIfNecessaryForIconView:v9];
      }
    }

    v5 = controllerCopy;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)iconTouchBegan:(id)began
{
  v15 = *MEMORY[0x1E69E9840];
  beganCopy = began;
  [(SBHIconManager *)self _addTouchedIconView:beganCopy];
  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = beganCopy;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "Icon touch began: %@", &v11, 0xCu);
  }

  icon = [beganCopy icon];
  delegate = [(SBHIconManager *)self delegate];
  if ([(SBHIconManager *)self shouldHighlightTouchedIconView:beganCopy])
  {
    [(SBHIconManager *)self highlightIconView:beganCopy];
  }

  v8 = [(SBHIconManager *)self reasonToDisallowTapOnIconView:beganCopy];
  if (v8)
  {
    v9 = SBLogIcon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = beganCopy;
      _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_DEFAULT, "Icon tap not allowed because %@: %@", &v11, 0x16u);
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [delegate iconManager:self possibleUserIconTapBegan:beganCopy];
    }

    v10 = mach_absolute_time();
    [icon possibleUserTapBeganWithAbsoluteTime:v10 andContinuousTime:mach_continuous_time()];
    if (objc_opt_respondsToSelector())
    {
      [delegate iconManager:self possibleUserIconTapBeganAfterInformingIcon:beganCopy];
    }
  }
}

- (void)icon:(id)icon touchEnded:(BOOL)ended
{
  endedCopy = ended;
  v13 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  [(SBHIconManager *)self _removeTouchedIconView:iconCopy];
  icon = SBLogIcon();
  v8 = os_log_type_enabled(icon, OS_LOG_TYPE_DEFAULT);
  if (endedCopy)
  {
    if (v8)
    {
      v11 = 138412290;
      v12 = iconCopy;
      _os_log_impl(&dword_1BEB18000, icon, OS_LOG_TYPE_DEFAULT, "Icon touch canceled (tap gesture may still succeed): %@", &v11, 0xCu);
    }

    icon = [iconCopy icon];
    [icon possibleUserTapDidCancel];
  }

  else if (v8)
  {
    v11 = 138412290;
    v12 = iconCopy;
    _os_log_impl(&dword_1BEB18000, icon, OS_LOG_TYPE_DEFAULT, "Icon touch ended: %@", &v11, 0xCu);
  }

  iconEditingFeedbackBehavior = [(SBHIconManager *)self iconEditingFeedbackBehavior];
  if ([iconEditingFeedbackBehavior isActive])
  {
    [iconEditingFeedbackBehavior deactivate];
  }

  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self touchesEndedForIconView:iconCopy];
  }
}

- (BOOL)iconShouldAllowTap:(id)tap
{
  v18 = *MEMORY[0x1E69E9840];
  tapCopy = tap;
  v5 = [(SBHIconManager *)self reasonToDisallowTapOnIconView:tapCopy];
  icon = [tapCopy icon];

  v7 = SBLogIcon();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v8)
    {
      uniqueIdentifier = [icon uniqueIdentifier];
      v14 = 138412546;
      v15 = uniqueIdentifier;
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
    uniqueIdentifier = [icon uniqueIdentifier];
    v14 = 138412290;
    v15 = uniqueIdentifier;
    v10 = "Allowing tap for icon view '%@'";
    v11 = v7;
    v12 = 12;
    goto LABEL_6;
  }

  return v5 == 0;
}

- (id)reasonToDisallowTapOnIconView:(id)view
{
  viewCopy = view;
  icon = [viewCopy icon];
  isWidgetIcon = [icon isWidgetIcon];
  if (-[SBHIconManager isEditing](self, "isEditing") && !(isWidgetIcon & 1 | (([icon isLeafIcon] & 1) == 0)))
  {
    v7 = @"editing";
    goto LABEL_27;
  }

  if ([viewCopy isGrabbed])
  {
    v7 = @"icon is grabbed";
    goto LABEL_27;
  }

  if ([icon isFolderIcon] && !-[SBHIconManager canOpenFolderForIcon:](self, "canOpenFolderForIcon:", icon))
  {
    v7 = @"can't open folder icon";
  }

  else
  {
    iconDragManager = [(SBHIconManager *)self iconDragManager];
    isTrackingDroppingIconDrags = [iconDragManager isTrackingDroppingIconDrags];

    if (isTrackingDroppingIconDrags)
    {
      v7 = @"tracking dropping icon drags";
      goto LABEL_27;
    }

    iconDragManager2 = [(SBHIconManager *)self iconDragManager];
    if ([iconDragManager2 isTrackingUserActiveIconDrags])
    {
      isWidgetIcon2 = [icon isWidgetIcon];

      if (isWidgetIcon2)
      {
        v7 = @"can't open widget while dragging";
        goto LABEL_27;
      }
    }

    else
    {
    }

    if (([icon isLaunchEnabled] & 1) != 0 || -[SBHIconManager isEditing](self, "isEditing") && objc_msgSend(icon, "isWidgetStackIcon"))
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
        delegate = [(SBHIconManager *)self delegate];
        if ((objc_opt_respondsToSelector() & 1) == 0 || ([delegate iconManager:self reasonToDisallowTapOnIconView:viewCopy], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v7 = [(SBHIconManager *)self reasonToDisallowInteractionOnIconView:viewCopy];
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

- (id)reasonToDisallowInteractionOnIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate iconManager:self reasonToDisallowInteractionOnIconView:viewCopy];
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

- (void)launchFromIconView:(id)view withActions:(id)actions modifierFlags:(int64_t)flags
{
  v36 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  actionsCopy = actions;
  icon = [viewCopy icon];
  location = [viewCopy location];
  delegate = [(SBHIconManager *)self delegate];
  v13 = SBLogIcon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = viewCopy;
    _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_DEFAULT, "Icon tapped: %@", buf, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self willPrepareIconViewForLaunch:viewCopy];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__SBHIconManager_launchFromIconView_withActions_modifierFlags___block_invoke;
  aBlock[3] = &unk_1E80902D8;
  v14 = viewCopy;
  v27 = v14;
  v15 = icon;
  v28 = v15;
  selfCopy = self;
  v30 = actionsCopy;
  v31 = delegate;
  v32 = location;
  flagsCopy = flags;
  v16 = location;
  v17 = delegate;
  v18 = actionsCopy;
  v19 = _Block_copy(aBlock);
  v20 = [(SBHIconManager *)self floatingDockViewControllerForView:v14];
  v21 = v20;
  if (v20)
  {
    isPresentingLibrary = [v20 isPresentingLibrary];
  }

  else
  {
    if ([(SBHIconManager *)self isShowingOrTransitioningToTrailingCustomView])
    {
      _currentFolderController = [(SBHIconManager *)self _currentFolderController];
LABEL_16:
      v19[2](v19);
      goto LABEL_17;
    }

    isPresentingLibrary = [(SBHIconManager *)self isMainDisplayLibraryViewVisible];
  }

  v24 = isPresentingLibrary;
  _currentFolderController = [(SBHIconManager *)self _currentFolderController];
  if ((v24 & 1) != 0 || -[SBHIconManager isShowingLeadingCustomView](self, "isShowingLeadingCustomView") || ![_currentFolderController isDisplayingIconView:v14])
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

  [_currentFolderController prepareToLaunchTappedIcon:v15 completionHandler:v19];
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

- (void)launchFolderFromIconView:(id)view withActions:(id)actions modifierFlags:(int64_t)flags
{
  viewCopy = view;
  actionsCopy = actions;
  icon = [viewCopy icon];
  location = [viewCopy location];
  v11 = objc_alloc_init(SBHIconLaunchContext);
  [(SBHIconLaunchContext *)v11 setIconView:viewCopy];
  [(SBHIconLaunchContext *)v11 setActions:actionsCopy];
  v12 = +[SBHIconViewContextMenuStateController sharedInstance];
  areAnyIconViewContextMenusShowing = [v12 areAnyIconViewContextMenusShowing];

  if (!areAnyIconViewContextMenusShowing)
  {
    goto LABEL_4;
  }

  previewInteractingIconView = [(SBHIconManager *)self previewInteractingIconView];
  icon2 = [previewInteractingIconView icon];

  if (icon != icon2)
  {
    v16 = +[SBHIconViewContextMenuStateController sharedInstance];
    [v16 earlyTerminateAnyContextMenuAnimations];

LABEL_4:
    [(SBHIconManager *)self pushExpandedIcon:icon location:location context:v11 forcePoppingPriorExpandedIcon:1 animated:1 completionHandler:0];
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
  v20 = icon;
  v21 = viewCopy;
  v22 = location;
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

- (void)iconTapped:(id)tapped modifierFlags:(int64_t)flags
{
  v27 = *MEMORY[0x1E69E9840];
  tappedCopy = tapped;
  [(SBHIconManager *)self highlightIconView:tappedCopy];
  icon = [tappedCopy icon];
  delegate = [(SBHIconManager *)self delegate];
  iconDragManager = [(SBHIconManager *)self iconDragManager];
  [iconDragManager noteIconTapped];
  if ([icon isFileStackIcon])
  {
    if (objc_opt_respondsToSelector())
    {
      [delegate iconManager:self tapFloatingDockStackIconView:tappedCopy];
    }
  }

  else if ([icon isLeafIcon] && -[SBHIconManager isEditing](self, "isEditing"))
  {
    if ([tappedCopy supportsStackConfigurationCard])
    {
      v10 = SBLogIcon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = tappedCopy;
        _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "Starting stack configuration of icon due to tap: %@", buf, 0xCu);
      }

      [tappedCopy presentStackConfigurationCard];
    }

    else if ([tappedCopy supportsConfigurationCard])
    {
      v21 = SBLogIcon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = tappedCopy;
        _os_log_impl(&dword_1BEB18000, v21, OS_LOG_TYPE_DEFAULT, "Starting configuration of icon due to tap: %@", buf, 0xCu);
      }

      [tappedCopy presentConfigurationCard];
    }

    else
    {
      [(SBHIconManager *)self clearHighlightedIcon];
      v22 = SBLogIcon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = tappedCopy;
        _os_log_impl(&dword_1BEB18000, v22, OS_LOG_TYPE_DEFAULT, "Ignoring tap to icon because of editing: %@", buf, 0xCu);
      }
    }
  }

  else if ([icon isLaunchEnabled])
  {
    if ([icon isWidgetIcon] && (objc_msgSend(icon, "activeWidget"), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = v11;
      uniqueIdentifier = [v11 uniqueIdentifier];
      _effectiveWidgetMultiplexingManager = [(SBHIconManager *)self _effectiveWidgetMultiplexingManager];
      v15 = [_effectiveWidgetMultiplexingManager viewControllerForIdentifier:uniqueIdentifier];

      if ([v15 sbh_isWidgetHostViewController])
      {
        v16 = v15;
        customIconImageViewController = [tappedCopy customIconImageViewController];
        if ([customIconImageViewController sbh_isWidgetStackViewController])
        {
          v18 = customIconImageViewController;
        }

        else
        {
          v18 = 0;
        }

        v19 = v18;
        if (([v19 isWidgetHitTestingDisabled] & 1) == 0)
        {
          sbh_underlyingAvocadoHostViewControllers = [v19 sbh_underlyingAvocadoHostViewControllers];
          if ([sbh_underlyingAvocadoHostViewControllers containsObject:v16])
          {
            shouldShareTouchesWithHost = [v16 shouldShareTouchesWithHost];

            if (shouldShareTouchesWithHost)
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
      v12 = [(SBHIconManager *)self launchActionsForIconView:tappedCopy];
      [(SBHIconManager *)self launchFromIconView:tappedCopy withActions:v12 modifierFlags:flags];
    }
  }

  else
  {
    v20 = SBLogIcon();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = tappedCopy;
      _os_log_impl(&dword_1BEB18000, v20, OS_LOG_TYPE_DEFAULT, "Ignoring tap to icon because launching is not allowed: %@", buf, 0xCu);
    }

    [(SBHIconManager *)self clearHighlightedIcon];
    if (objc_opt_respondsToSelector())
    {
      [delegate iconManager:self didReceiveTapOnLaunchDisabledIconView:tappedCopy];
    }
  }
}

- (BOOL)icon:(id)icon canReceiveGrabbedIcon:(id)grabbedIcon
{
  grabbedIconCopy = grabbedIcon;
  icon = [icon icon];
  if ([(SBHIconManager *)self hasOpenFolder])
  {
    v8 = ([grabbedIconCopy isWidgetIcon] & 1) == 0 && -[SBHIconManager allowsNestedFolders](self, "allowsNestedFolders");
  }

  else if ([icon isWidgetIcon] && objc_msgSend(grabbedIconCopy, "isWidgetIcon"))
  {
    iconDataSourcesExcludingSuggestionsCount = [icon iconDataSourcesExcludingSuggestionsCount];
    v10 = [grabbedIconCopy iconDataSourcesExcludingSuggestionsCount] + iconDataSourcesExcludingSuggestionsCount;
    v11 = +[SBHHomeScreenDomain rootSettings];
    widgetSettings = [v11 widgetSettings];
    v8 = v10 <= [widgetSettings maximumWidgetsInAStack];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)iconCloseBoxTapped:(id)tapped
{
  v11 = *MEMORY[0x1E69E9840];
  tappedCopy = tapped;
  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = tappedCopy;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "Icon close box tapped: %@", &v9, 0xCu);
  }

  [(SBHIconManager *)self _noteUserIsInteractingWithIcons];
  [(SBHIconManager *)self _restartEditingEndTimer];
  if ([(SBHIconManager *)self _shouldRespondToIconCloseBoxes])
  {
    delegate = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate iconManager:self iconCloseBoxTapped:tappedCopy];
    }

    icon = [tappedCopy icon];
    location = [tappedCopy location];
    if (objc_opt_respondsToSelector())
    {
      [delegate iconManager:self wantsUninstallForIcon:icon location:location];
    }
  }
}

- (BOOL)iconViewDisplaysAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  icon = [accessoriesCopy icon];
  if ([(SBHIconManager *)self allowsBadgingForIcon:icon])
  {
    location = [accessoriesCopy location];
    v7 = [(SBHIconManager *)self allowsBadgingForIconLocation:location];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)iconViewDisplaysCloseBox:(id)box
{
  boxCopy = box;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate iconManager:self iconViewDisplaysCloseBox:boxCopy];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)iconViewDisplaysLabel:(id)label
{
  labelCopy = label;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate iconManager:self iconViewDisplaysLabel:labelCopy];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)iconViewDisplaysResizeHandle:(id)handle
{
  icon = [handle icon];
  isWidgetIcon = [icon isWidgetIcon];

  return isWidgetIcon;
}

- (BOOL)allowsFocus
{
  delegate = [(SBHIconManager *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [delegate isFocusAllowedForIconManager:self])
  {
    v4 = ![(SBHIconManager *)self isEditing];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (unint64_t)focusEffectTypeForIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate iconManager:self focusEffectTypeForIconView:viewCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)iconView:(id)view editingModeGestureRecognizerDidFire:(id)fire
{
  viewCopy = view;
  isEditingAllowed = [(SBHIconManager *)self isEditingAllowed];
  v7 = !isEditingAllowed | [(SBHIconManager *)self isEditing];
  if (v7)
  {
    if (!isEditingAllowed && [(SBHIconManager *)self isEditingAllowedForIconView:viewCopy])
    {
      [(SBHIconManager *)self setEditing:1 fromIconView:viewCopy];
    }
  }

  else
  {
    [(SBHIconManager *)self setEditing:1];
  }

  return (v7 & 1) == 0;
}

- (void)setPreviewInteractingIconView:(id)view
{
  viewCopy = view;
  previewInteractingIconView = self->_previewInteractingIconView;
  if (previewInteractingIconView != viewCopy)
  {
    v9 = viewCopy;
    v7 = previewInteractingIconView;
    objc_storeStrong(&self->_previewInteractingIconView, view);
    if (v7)
    {
      iconDragManager = [(SBHIconManager *)self iconDragManager];
      [iconDragManager informQuickActionPlatterDidFinishPresentation:v7];
    }

    viewCopy = v9;
  }
}

- (id)launchActionsForIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self launchActionsForIconView:viewCopy];
  }

  else
  {
    [MEMORY[0x1E695DFD8] set];
  }
  v6 = ;

  return v6;
}

- (id)launchURLForIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate iconManager:self launchURLForIconView:viewCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)imageViewForIconView:(id)view
{
  viewCopy = view;
  homescreenIconImageViewMap = [(SBHIconManager *)self homescreenIconImageViewMap];
  expectedIconImageViewClass = [viewCopy expectedIconImageViewClass];

  v7 = [homescreenIconImageViewMap viewOfClass:expectedIconImageViewClass];

  return v7;
}

- (void)iconView:(id)view willRemoveIconImageView:(id)imageView
{
  imageViewCopy = imageView;
  homescreenIconImageViewMap = [(SBHIconManager *)self homescreenIconImageViewMap];
  [homescreenIconImageViewMap recycleView:imageViewCopy];
}

- (id)iconView:(id)view iconAccessoryViewOfClass:(Class)class
{
  homescreenIconAccessoryViewMap = [(SBHIconManager *)self homescreenIconAccessoryViewMap];
  v6 = [homescreenIconAccessoryViewMap viewOfClass:class];

  return v6;
}

- (void)iconView:(id)view willRemoveIconAccessoryView:(id)accessoryView
{
  accessoryViewCopy = accessoryView;
  homescreenIconAccessoryViewMap = [(SBHIconManager *)self homescreenIconAccessoryViewMap];
  [homescreenIconAccessoryViewMap recycleView:accessoryViewCopy];
}

- (id)parallaxSettingsForComponentsOfIconView:(id)view
{
  viewCopy = view;
  location = [viewCopy location];
  if (!-[SBHIconManager _shouldParallaxInIconLocation:](self, "_shouldParallaxInIconLocation:", location) || ![MEMORY[0x1E69DD250] _motionEffectsSupported])
  {
    goto LABEL_5;
  }

  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate iconManager:self supportsParallaxForIconView:viewCopy];

    if (!v7)
    {
LABEL_5:
      badgeParallaxSettings = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v10 = +[SBHHomeScreenDomain rootSettings];
  iconSettings = [v10 iconSettings];
  badgeParallaxSettings = [iconSettings badgeParallaxSettings];

LABEL_6:

  return badgeParallaxSettings;
}

- (id)iconView:(id)view iconLabelAccessoryViewOfType:(int64_t)type
{
  homescreenIconLabelAccessoryViewMap = [(SBHIconManager *)self homescreenIconLabelAccessoryViewMap];
  v6 = [homescreenIconLabelAccessoryViewMap viewOfClass:SBViewClassForIconLabelAccessoryType(type)];

  return v6;
}

- (void)iconView:(id)view willRemoveIconLabelAccessoryView:(id)accessoryView
{
  accessoryViewCopy = accessoryView;
  homescreenIconLabelAccessoryViewMap = [(SBHIconManager *)self homescreenIconLabelAccessoryViewMap];
  [homescreenIconLabelAccessoryViewMap recycleView:accessoryViewCopy];
}

- (id)iconView:(id)view labelImageWithParameters:(id)parameters
{
  parametersCopy = parameters;
  iconLabelImageCache = [(SBHIconManager *)self iconLabelImageCache];
  v7 = [iconLabelImageCache labelImageWithParameters:parametersCopy];

  return v7;
}

- (id)iconView:(id)view labelContentWithParameters:(id)parameters
{
  parametersCopy = parameters;
  iconLabelImageCache = [(SBHIconManager *)self iconLabelImageCache];
  v7 = [iconLabelImageCache labelContentWithParameters:parametersCopy];

  return v7;
}

- (int64_t)closeBoxTypeForIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate iconManager:self closeBoxTypeForIconView:viewCopy proposedType:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)supportedGridSizeClassesForIconView:(id)view
{
  v37 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  icon = [viewCopy icon];
  if (![icon isWidgetIcon])
  {
    goto LABEL_24;
  }

  v22 = icon;
  iconDataSources = [v22 iconDataSources];
  gridSizeClassDomain = [(SBHIconManager *)self gridSizeClassDomain];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = iconDataSources;
  allGridSizeClasses = 0;
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
          widgetExtensionProvider = [(SBHIconManager *)self widgetExtensionProvider];
          v14 = [widgetExtensionProvider sbh_descriptorForWidgetIdentifiable:v12];

          v15 = -[SBHIconGridSizeClassSet initWithCHSWidgetFamilyMask:inDomain:]([SBHIconGridSizeClassSet alloc], "initWithCHSWidgetFamilyMask:inDomain:", [v14 supportedFamilies], gridSizeClassDomain);
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

        if (allGridSizeClasses)
        {
          [allGridSizeClasses intersectGridSizeClassSet:v15];
        }

        else
        {
          allGridSizeClasses = [(SBHIconGridSizeClassSet *)v15 mutableCopy];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (!v6)
      {
        break;
      }
    }
  }

  location = [viewCopy location];
  if ([allGridSizeClasses containsGridSizeClass:@"SBHIconGridSizeClassNewsLargeTall"] && SBIconLocationGroupContainsLocation(@"SBIconLocationGroupTodayView", location))
  {
    rootFolder = [(SBHIconManager *)self rootFolder];
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
    [rootFolder enumerateTodayListIconsUsingBlock:v25];
    if (*(v29 + 24) == 1)
    {
      [allGridSizeClasses removeGridSizeClass:@"SBHIconGridSizeClassNewsLargeTall"];
    }

    _Block_object_dispose(&v28, 8);
  }

  if (!allGridSizeClasses)
  {
LABEL_24:
    gridSizeClassDomain2 = [(SBHIconManager *)self gridSizeClassDomain];
    allGridSizeClasses = [gridSizeClassDomain2 allGridSizeClasses];
  }

  return allGridSizeClasses;
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

- (id)supportedIconGridSizeClassesForResizeOfIconView:(id)view
{
  viewCopy = view;
  v5 = [(SBHIconManager *)self supportedGridSizeClassesForIconView:viewCopy];
  icon = [viewCopy icon];

  if (![icon isWidgetStackIcon])
  {
    if ([icon isWidgetIcon])
    {
      v7 = [(SBHIconManager *)self iconForReplacingWidgetIconWithAppIcon:icon];
      if ([v7 isApplicationIcon])
      {
        application = [v7 application];
        v9 = application;
        if (application && ([application hasHiddenTag] & 1) == 0)
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

    if ([icon isApplicationIcon])
    {
      v11 = MEMORY[0x1E698B0D0];
      applicationBundleID = [icon applicationBundleID];
      v13 = [v11 applicationWithBundleIdentifier:applicationBundleID];

      if ([v13 isLocked])
      {
        v14 = +[SBHIconGridSizeClassSet gridSizeClassSetForDefaultGridSizeClass];

        goto LABEL_17;
      }

      v15 = [(SBHIconManager *)self iconDataSourceForReplacingAppIconWithWidgetIcon:icon];
      if (objc_opt_respondsToSelector())
      {
        [v15 supportedGridSizeClassesForIcon:icon];
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

- (BOOL)allowsBadgingForIcon:(id)icon
{
  iconCopy = icon;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate iconManager:self allowsBadgingForIcon:iconCopy];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)allowsBadgingForIconLocation:(id)location
{
  locationCopy = location;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate iconManager:self allowsBadgingForIconLocation:locationCopy];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)iconView:(id)view backgroundViewForComponentsOfType:(int64_t)type
{
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [delegate iconManager:self backgroundViewForComponentsOfType:type forIconView:viewCopy];
    if (v8)
    {
      goto LABEL_9;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [delegate iconManager:self backgroundViewForComponentsOfIconView:viewCopy];
    if (v8)
    {
      goto LABEL_9;
    }
  }

  icon = [viewCopy icon];
  isWidgetIcon = [icon isWidgetIcon];

  if (!isWidgetIcon)
  {
    goto LABEL_10;
  }

  if (type != 4)
  {
    if (type == 5)
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

  widgetBackgroundViewMap = [(SBHIconManager *)self widgetBackgroundViewMap];
  v11 = [widgetBackgroundViewMap viewOfClass:objc_opt_class()];

LABEL_11:

  return v11;
}

- (BOOL)iconView:(id)view shouldContinueToUseBackgroundViewForComponents:(id)components
{
  viewCopy = view;
  componentsCopy = components;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [delegate iconManager:self shouldContinueToUseBackgroundView:componentsCopy forComponentsOfIconView:viewCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)screenSnapshotProviderForComponentsOfIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate iconManager:self screenSnapshotProviderForComponentsOfIconView:viewCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)accessibilityTintColorForIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate iconManager:self accessibilityTintColorForIconView:viewCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)customImageViewControllerForIconView:(id)view
{
  v40 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  icon = [viewCopy icon];
  if ([icon isWidgetIcon])
  {
    widgetViewControllersForIconView = self->_widgetViewControllersForIconView;
    if (!widgetViewControllersForIconView)
    {
      weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
      v9 = self->_widgetViewControllersForIconView;
      self->_widgetViewControllersForIconView = weakToWeakObjectsMapTable;

      widgetViewControllersForIconView = self->_widgetViewControllersForIconView;
    }

    v10 = [(NSMapTable *)widgetViewControllersForIconView objectForKey:viewCopy];
    if (objc_opt_respondsToSelector())
    {
      icon2 = [(SBHWidgetAddGalleryWidgetViewController *)v10 icon];

      if (icon2 != icon)
      {

LABEL_11:
        v12 = icon;
        activeDataSource = [v12 activeDataSource];
        location = [viewCopy location];
        if ([location isEqualToString:@"SBIconLocationAddWidgetSheet"])
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
                v39 = viewCopy;
                _os_log_impl(&dword_1BEB18000, v17, OS_LOG_TYPE_DEFAULT, "Creating new widget custom image view controller for icon view: %@", buf, 0xCu);
              }

              v18 = [(SBHIconManager *)self _makeCustomViewControllerForWidgetIcon:v12 dataSource:activeDataSource location:location];
              v10 = [[SBHWidgetAddGalleryWidgetViewController alloc] initWithContentViewController:v18];

              if (!v10)
              {
                goto LABEL_28;
              }

LABEL_27:
              [(SBHIconManager *)self rootFolderController];
              v25 = v24 = activeDataSource;
              [v25 updatePresentationModeFolderContextForIconView:viewCopy];

              activeDataSource = v24;
              goto LABEL_28;
            }
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = -[SBHIconManager _multiplexingViewControllerForIcon:dataSource:location:withPriority:](self, "_multiplexingViewControllerForIcon:dataSource:location:withPriority:", v12, activeDataSource, location, [viewCopy customIconImageViewControllerPriority]);
          v20 = objc_opt_class();
          v21 = v19;
          v35 = location;
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

          [(SBHIconManager *)self _updateWidgetMultiplexingViewController:v27 forIconView:viewCopy];
          delegate = [(SBHIconManager *)self delegate];
          v37 = v12;
          if (objc_opt_respondsToSelector())
          {
            v29 = [delegate iconManager:self canCustomElementAlignWithGrid:activeDataSource];
          }

          else
          {
            v29 = 0;
          }

          _effectiveAppPredictionViewControllersForUniqueIdentifier = [(SBHIconManager *)self _effectiveAppPredictionViewControllersForUniqueIdentifier];
          v36 = activeDataSource;
          uniqueIdentifier = [activeDataSource uniqueIdentifier];
          v32 = [_effectiveAppPredictionViewControllersForUniqueIdentifier objectForKey:uniqueIdentifier];

          if (!v32)
          {
            [(SBHIconManager *)a2 customImageViewControllerForIconView:?];
          }

          v33 = [SBHMultiplexingWrapperViewController alloc];
          location2 = [viewCopy location];
          v10 = [(SBHMultiplexingWrapperViewController *)v33 initWithIcon:v37 location:location2 multiplexingViewController:v27 appPredictionViewController:v32 canAlignWithGrid:v29];

          v12 = v37;
          [(SBHWidgetAddGalleryWidgetViewController *)v10 setDelegate:self];

          location = v35;
          activeDataSource = v36;
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
            v39 = viewCopy;
            _os_log_impl(&dword_1BEB18000, v23, OS_LOG_TYPE_DEFAULT, "Creating new widget stack view controller for icon view: %@", buf, 0xCu);
          }

          v10 = [[SBHWidgetStackViewController alloc] initWithIcon:v12 iconListLayoutProvider:self->_listLayoutProvider];
          [(SBHWidgetAddGalleryWidgetViewController *)v10 setDataSource:self];
          [(SBHWidgetAddGalleryWidgetViewController *)v10 setDelegate:self];
          [(SBHWidgetAddGalleryWidgetViewController *)v10 setAutomaticallyUpdatesVisiblySettled:0];
          -[SBHWidgetAddGalleryWidgetViewController setShowsSquareCorners:](v10, "setShowsSquareCorners:", [viewCopy showsSquareCorners]);
          if (v10)
          {
            goto LABEL_27;
          }
        }

LABEL_28:
        [(NSMapTable *)self->_widgetViewControllersForIconView setObject:v10 forKey:viewCopy];

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
    [(SBHIconManager *)self _updateIconView:viewCopy forCustomIconImageViewController:v10];
    goto LABEL_30;
  }

  if (![icon isDebugIcon])
  {
    v10 = 0;
    goto LABEL_30;
  }

  v10 = [[SBHDebugIconViewController alloc] initWithIcon:icon];
  if (v10)
  {
    goto LABEL_29;
  }

LABEL_30:

  return v10;
}

- (void)iconViewDidBeginTrackingPossibleResize:(id)resize context:(id)context
{
  resizeCopy = resize;
  contextCopy = context;
  icon = [resizeCopy icon];
  if ([icon isWidgetIcon])
  {
    v8 = icon;
    nextSmallerGridSizeClassForResize = [resizeCopy nextSmallerGridSizeClassForResize];
    if (nextSmallerGridSizeClassForResize)
    {
      v10 = [(SBHIconManager *)self preWarmCustomViewControllerForWidgetIcon:v8 withGridSizeClass:nextSmallerGridSizeClassForResize];
      if (v10)
      {
        v11 = v10;
        [contextCopy setObject:v10 forKey:@"smallerViewController"];
      }
    }

    nextLargerGridSizeClassForResize = [resizeCopy nextLargerGridSizeClassForResize];
    if (nextLargerGridSizeClassForResize)
    {
      v13 = [(SBHIconManager *)self preWarmCustomViewControllerForWidgetIcon:v8 withGridSizeClass:nextLargerGridSizeClassForResize];
      if (v13)
      {
        v14 = v13;
        [contextCopy setObject:v13 forKey:@"largerViewController"];
      }
    }

    rootFolderController = [(SBHIconManager *)self rootFolderController];
    v16 = [rootFolderController disableAutoScrollForReason:@"icon resize"];
    if (v16)
    {
      [contextCopy setObject:v16 forKey:@"autoScrollAssertion"];
    }
  }
}

- (id)preWarmCustomViewControllerForWidgetIcon:(id)icon withGridSizeClass:(id)class
{
  iconCopy = icon;
  classCopy = class;
  gridSizeClass = [iconCopy gridSizeClass];
  v9 = gridSizeClass;
  if (gridSizeClass == classCopy)
  {
  }

  else
  {
    gridSizeClass2 = [iconCopy gridSizeClass];
    v11 = [gridSizeClass2 isEqualToString:classCopy];

    if (!v11)
    {
      v12 = [(SBHIconManager *)self makeResizedCopyOfWidgetIcon:iconCopy withGridSizeClass:classCopy];
      v13 = [(SBHIconManager *)self preWarmCustomViewControllerForWidgetIcon:v12];

      goto LABEL_6;
    }
  }

  v13 = [(SBHIconManager *)self preWarmCustomViewControllerForWidgetIcon:iconCopy];
LABEL_6:

  return v13;
}

- (id)preWarmCustomViewControllerForWidgetIcon:(id)icon
{
  iconCopy = icon;
  activeDataSource = [iconCopy activeDataSource];
  v6 = [(SBHIconManager *)self _multiplexingViewControllerForIcon:iconCopy dataSource:activeDataSource location:@"SBIconLocationRoot" withPriority:0];

  [v6 beginAppearanceTransition:1 animated:0];
  [v6 endAppearanceTransition];

  return v6;
}

- (id)_customViewControllerForResizingIcon:(id)icon gridSizeClass:(id)class dataSource:(id)source location:(id)location
{
  iconCopy = icon;
  classCopy = class;
  sourceCopy = source;
  locationCopy = location;
  v14 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass & 1) != 0 || (objc_opt_self(), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_opt_isKindOfClass(), v16, (v17))
  {
    v18 = [(SBHIconManager *)self _makeCustomViewControllerForWidgetIcon:iconCopy dataSource:sourceCopy location:locationCopy gridSizeClass:classCopy];
  }

  else if (classCopy && ![classCopy isEqualToString:@"SBHIconGridSizeClassDefault"])
  {
    v18 = 0;
  }

  else
  {
    v20 = [SBHLeafIconCustomImageViewController alloc];
    iconImageCache = [(SBHIconManager *)self iconImageCache];
    v18 = [(SBHLeafIconCustomImageViewController *)v20 initWithIcon:iconCopy iconImageCache:iconImageCache];
  }

  return v18;
}

- (void)iconView:(id)view wantsResizeToGridSizeClass:(id)class completionHandler:(id)handler
{
  classCopy = class;
  handlerCopy = handler;
  icon = [view icon];
  if ([icon isWidgetIcon])
  {
    [(SBHIconManager *)self changeSizeOfWidgetIcon:icon toSizeClass:classCopy animated:1 completionHandler:handlerCopy];
    [(SBHIconManager *)self _restartEditingEndTimer];
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)iconViewDidEndTrackingPossibleResize:(id)resize context:(id)context
{
  contextCopy = context;
  v5 = [contextCopy objectForKey:@"autoScrollAssertion"];
  [v5 invalidate];
  [contextCopy removeObjectForKey:@"autoScrollAssertion"];
}

- (id)resizeGestureHandlerForIconView:(id)view
{
  v22 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  icon = [viewCopy icon];
  if ([icon isWidgetIcon])
  {
    activeDataSource = [icon activeDataSource];
    if (activeDataSource)
    {
      rootFolderController = [(SBHIconManager *)self rootFolderController];
      rootFolderView = [rootFolderController rootFolderView];
      todayViewControllers = [rootFolderView iconListViewDisplayingIconView:viewCopy];

      if (todayViewControllers)
      {
LABEL_16:
        [(SBHIconManager *)self _discardEndEditingTimerAndDontResetUntilReasonIsRemoved:@"widget resize"];
        widgetMetricsProvider = [(SBHIconManager *)self widgetMetricsProvider];
        v10 = [[SBWidgetIconResizeGestureHandler alloc] initWithIconView:viewCopy iconListView:todayViewControllers widgetMetricsProvider:widgetMetricsProvider];
        [(SBWidgetIconResizeGestureHandler *)v10 setDelegate:self];
      }

      else
      {
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        todayViewControllers = [(SBHIconManager *)self todayViewControllers];
        v10 = [todayViewControllers countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          v11 = *v18;
          while (2)
          {
            for (i = 0; i != v10; i = (i + 1))
            {
              if (*v18 != v11)
              {
                objc_enumerationMutation(todayViewControllers);
              }

              v13 = *(*(&v17 + 1) + 8 * i);
              if ([v13 isDisplayingIconView:viewCopy])
              {
                listView = [v13 listView];

                todayViewControllers = listView;
                goto LABEL_16;
              }
            }

            v10 = [todayViewControllers countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (void)_setupApplicationShortcutItemsForPresentation:(id)presentation
{
  presentationCopy = presentation;
  [(SBHIconManager *)self setPreviewInteractingIconView:?];
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate iconManager:self applicationShortcutItemsForIconView:presentationCopy];
  }

  else
  {
    v5 = 0;
  }

  [presentationCopy setApplicationShortcutItems:v5];
}

- (BOOL)iconView:(id)view supportsConfigurationForDataSource:(id)source
{
  viewCopy = view;
  sourceCopy = source;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = sourceCopy;
    if (v8)
    {
      widgetExtensionProvider = [(SBHIconManager *)self widgetExtensionProvider];
      sbh_descriptors = [widgetExtensionProvider sbh_descriptors];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __62__SBHIconManager_iconView_supportsConfigurationForDataSource___block_invoke;
      v23[3] = &unk_1E8090350;
      v11 = v8;
      v24 = v11;
      v12 = [sbh_descriptors bs_firstObjectPassingTest:v23];

      intentType = [v12 intentType];

      if (intentType)
      {
        icon = [viewCopy icon];
        if ([icon isWidgetIcon])
        {
          icon2 = [viewCopy icon];
        }

        else
        {
          icon2 = 0;
        }

        v16 = [(SBHIconManager *)self _intentForWidget:v11 ofIcon:icon2 creatingIfNecessary:0];
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
          v18 = v17 = widgetExtensionProvider;
          [v18 allValues];
          v19 = v21 = icon2;

          widgetExtensionProvider = v17;
          v11 = v22;

          LOBYTE(self) = [v19 bs_containsObjectPassingTest:&__block_literal_global_787];
          icon2 = v21;
        }
      }

      if (intentType)
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

- (id)iconView:(id)view configurationInteractionForDataSource:(id)source
{
  sourceCopy = source;
  icon = [view icon];
  v8 = objc_opt_class();
  v9 = icon;
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
    v13 = sourceCopy;
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

    widgetExtensionProvider = [(SBHIconManager *)self widgetExtensionProvider];
    v19 = [widgetExtensionProvider sbh_descriptorForWidgetIdentifiable:v17];
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
  v20 = [(SBHIconManager *)self _newIntentForDataSource:sourceCopy inIcon:v11];
  if (v19)
  {
LABEL_21:
    if (v20)
    {
      v21 = [SBHWidgetConfigurationInteraction alloc];
      gridSizeClass = [v11 gridSizeClass];
      gridSizeClassDomain = [(SBHIconManager *)self gridSizeClassDomain];
      v24 = [(SBHWidgetConfigurationInteraction *)v21 initWithDescriptor:v19 gridSizeClass:gridSizeClass gridSizeClassDomain:gridSizeClassDomain intent:v20 configuredDataSource:sourceCopy];

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

- (id)stackConfigurationInteractionForIconView:(id)view
{
  viewCopy = view;
  icon = [viewCopy icon];
  v6 = objc_opt_class();
  v7 = icon;
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

  delegate = [(SBHIconManager *)self delegate];
  _alwaysPresentStackConfigurationSheet = [(SBHIconManager *)self _alwaysPresentStackConfigurationSheet];
  if (([v9 isWidgetStackIcon] & 1) != 0 || _alwaysPresentStackConfigurationSheet)
  {
    v12 = [(SBHIconManager *)self _stackConfigurationForStackIcon:v9];
    if (v12)
    {
      rootFolderController = [(SBHIconManager *)self rootFolderController];
      v14 = [SBHStackConfigurationInteraction alloc];
      listLayoutProvider = [(SBHIconManager *)self listLayoutProvider];
      v29 = v12;
      v12 = [(SBHStackConfigurationInteraction *)v14 initWithConfiguration:v12 iconView:viewCopy iconViewProvider:self listLayoutProvider:listLayoutProvider];

      v16 = [(SBHIconManager *)self iconView:viewCopy containerViewControllerForConfigurationInteraction:v12];
      if ((objc_opt_respondsToSelector() & 1) == 0 || (v17 = objc_opt_respondsToSelector(), v18 = v16, (v17 & 1) == 0))
      {
        v18 = rootFolderController;
      }

      v28 = v16;
      v19 = v18;
      [(SBHStackConfigurationInteraction *)v12 setPresenter:v19];
      window = [viewCopy window];
      v21 = window;
      if (window)
      {
        [window interfaceOrientation];
      }

      if (v19 == rootFolderController)
      {
        [rootFolderController showsAddWidgetButtonWhileEditingAllowedOrientations];
      }

      v27 = SBFInterfaceOrientationMaskContainsInterfaceOrientation();
      if (objc_opt_respondsToSelector())
      {
        v22 = [delegate iconManager:self stackConfigurationInteractionDelegateForIconView:viewCopy];
      }

      else
      {
        v22 = rootFolderController;
      }

      v23 = v22;
      [(SBHStackConfigurationInteraction *)v12 setStackConfigurationDelegate:v22];
      if (objc_opt_respondsToSelector())
      {
        v24 = [delegate iconManager:self stackConfigurationViewControllerAppearanceDelegateForIconView:viewCopy];
      }

      else
      {
        v24 = rootFolderController;
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

- (id)iconView:(id)view containerViewControllerForConfigurationInteraction:(id)interaction
{
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate iconManager:self containerViewControllerForConfigurationOfIconView:viewCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)iconView:(id)view containerViewForConfigurationInteraction:(id)interaction
{
  interactionCopy = interaction;
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    view = [delegate iconManager:self containerViewForConfigurationOfIconView:viewCopy];
  }

  else
  {
    v10 = [(SBHIconManager *)self iconView:viewCopy containerViewControllerForConfigurationInteraction:interactionCopy];

    view = [v10 view];
    viewCopy = v10;
  }

  return view;
}

- (CGRect)iconView:(id)view contentBoundingRectForConfigurationInteraction:(id)interaction
{
  interactionCopy = interaction;
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self contentBoundingRectForConfigurationOfIconView:viewCopy];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v17 = [(SBHIconManager *)self iconView:viewCopy containerViewForConfigurationInteraction:interactionCopy];

    [v17 bounds];
    v10 = v18;
    v12 = v19;
    v14 = v20;
    v16 = v21;
    viewCopy = v17;
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

- (int64_t)iconView:(id)view userInterfaceStyleForConfigurationInteraction:(id)interaction
{
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    userInterfaceStyle = [delegate iconManager:self userInterfaceStyleForConfigurationOfIconView:viewCopy];
  }

  else
  {
    traitCollection = [viewCopy traitCollection];

    userInterfaceStyle = [traitCollection userInterfaceStyle];
    viewCopy = traitCollection;
  }

  return userInterfaceStyle;
}

- (id)iconView:(id)view homeScreenContentViewForConfigurationInteraction:(id)interaction
{
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    view = [delegate iconManager:self homeScreenContentViewForConfigurationOfIconView:viewCopy];
  }

  else
  {
    rootFolderController = [(SBHIconManager *)self rootFolderController];
    view = [rootFolderController view];
  }

  return view;
}

- (void)iconView:(id)view configurationDidUpdateWithInteraction:(id)interaction
{
  v65 = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  icon = [view icon];
  if ([icon isLeafIcon])
  {
    v8 = icon;
    if ([v8 isWidgetIcon])
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    configuration = [interactionCopy configuration];
    v12 = objc_opt_class();
    v13 = configuration;
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
      v50 = icon;
      v51 = interactionCopy;
      [v10 setAllowsSuggestions:{objc_msgSend(v15, "allowsSuggestions")}];
      [v10 setAllowsExternalSuggestions:{objc_msgSend(v15, "allowsExternalSuggestions")}];
      v48 = v15;
      dataSources = [v15 dataSources];
      iconDataSources = [v10 iconDataSources];
      v18 = [dataSources differenceFromArray:iconDataSources];

      insertions = [v18 insertions];
      v53 = [insertions bs_mapNoNulls:&__block_literal_global_813];

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      removals = [v18 removals];
      v21 = [removals countByEnumeratingWithState:&v58 objects:v64 count:16];
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
              objc_enumerationMutation(removals);
            }

            object = [*(*(&v58 + 1) + 8 * i) object];
            if ([v53 containsObject:object])
            {
              v26 = self->_movedStackConfigDataSources;
              if (!v26)
              {
                v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
              }

              [(NSMutableArray *)v26 addObject:object];
              movedStackConfigDataSources = self->_movedStackConfigDataSources;
              self->_movedStackConfigDataSources = v26;
            }

            [v10 removeIconDataSource:object];
          }

          v22 = [removals countByEnumeratingWithState:&v58 objects:v64 count:16];
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
            object2 = [v32 object];
            v62 = object2;
            v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
            v35 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(v32, "index")}];
            [v10 insertIconDataSources:v34 atIndexes:v35];

            v36 = self->_movedStackConfigDataSources;
            object3 = [v32 object];
            LODWORD(v36) = [(NSMutableArray *)v36 containsObject:object3];

            if (v36)
            {
              v38 = self->_movedStackConfigDataSources;
              object4 = [v32 object];
              [(NSMutableArray *)v38 removeObject:object4];
            }
          }

          v29 = [obj countByEnumeratingWithState:&v54 objects:v63 count:16];
        }

        while (v29);
      }

      rootFolder = [(SBHIconManager *)self rootFolder];
      [rootFolder markIconStateDirty];

      icon = v50;
      interactionCopy = v51;
      v15 = v48;
      v8 = v49;
    }

    else
    {
      configuredDataSource = [interactionCopy configuredDataSource];
      v42 = configuredDataSource;
      if (configuredDataSource)
      {
        activeDataSource = configuredDataSource;
      }

      else
      {
        activeDataSource = [v8 activeDataSource];
      }

      v44 = activeDataSource;

      configuration2 = [interactionCopy configuration];
      [(SBHIconManager *)self _handleUpdatedConfiguration:configuration2 forDataSource:v44 ofIcon:v8 archiving:1];
    }

    usageMonitor = [(SBHIconManager *)self usageMonitor];
    [usageMonitor noteUserConfiguredIcon:v8];
  }
}

- (void)_handleUpdatedConfiguration:(id)configuration forDataSource:(id)source ofIcon:(id)icon archiving:(BOOL)archiving
{
  archivingCopy = archiving;
  v42 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  sourceCopy = source;
  iconCopy = icon;
  v13 = sourceCopy;
  if ([iconCopy isWidgetIcon])
  {
    v14 = iconCopy;
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
          copyWithUniqueIdentifier = 0;
          if (!archivingCopy)
          {
            goto LABEL_25;
          }

          goto LABEL_21;
        }

        v27 = SBHFilesElement;
      }
    }

    copyWithUniqueIdentifier = objc_alloc_init(v27);
    if (!archivingCopy)
    {
      goto LABEL_25;
    }

LABEL_21:
    if (copyWithUniqueIdentifier)
    {
      v28 = copyWithUniqueIdentifier;
    }

    else
    {
      v28 = v17;
    }

    [(SBHIconManager *)self _archiveConfiguration:configurationCopy forDataSource:v28 ofIcon:iconCopy];
    goto LABEL_25;
  }

  copyWithUniqueIdentifier = [v19 copyWithUniqueIdentifier];
  v21 = SBLogWidgets();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    [v19 extensionBundleIdentifier];
    v22 = v31 = archivingCopy;
    [v19 uniqueIdentifier];
    v23 = v32 = self;
    extensionBundleIdentifier = [copyWithUniqueIdentifier extensionBundleIdentifier];
    [copyWithUniqueIdentifier uniqueIdentifier];
    v33 = v15;
    v26 = v25 = configurationCopy;
    *buf = 138544130;
    v35 = v22;
    v36 = 2114;
    v37 = v23;
    v38 = 2114;
    v39 = extensionBundleIdentifier;
    v40 = 2114;
    v41 = v26;
    _os_log_impl(&dword_1BEB18000, v21, OS_LOG_TYPE_DEFAULT, "Widget %{public}@ %{public}@ created to replace widget %{public}@ %{public}@.", buf, 0x2Au);

    configurationCopy = v25;
    v15 = v33;

    self = v32;
    archivingCopy = v31;
  }

  if (archivingCopy)
  {
    goto LABEL_21;
  }

LABEL_25:
  if (copyWithUniqueIdentifier)
  {
    [v15 replaceIconDataSource:v17 withIconDataSource:copyWithUniqueIdentifier];
    v29 = SBLogIcon();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier = [v15 uniqueIdentifier];
      *buf = 138412546;
      v35 = copyWithUniqueIdentifier;
      v36 = 2112;
      v37 = uniqueIdentifier;
      _os_log_impl(&dword_1BEB18000, v29, OS_LOG_TYPE_DEFAULT, "Setting last user selected data source due to configuration update: %@ for: %@", buf, 0x16u);
    }

    [v15 setLastUserSelectedDataSource:copyWithUniqueIdentifier];
  }
}

- (void)_archiveConfiguration:(id)configuration forDataSource:(id)source ofIcon:(id)icon
{
  configurationCopy = configuration;
  sourceCopy = source;
  iconCopy = icon;
  v11 = objc_opt_class();
  v12 = configurationCopy;
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
    uniqueIdentifier = [sourceCopy uniqueIdentifier];
  }

  else
  {
    uniqueIdentifier = 0;
  }

  v26 = 0;
  v16 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v26];
  v17 = v26;
  v18 = v17;
  if (!v16 || v17)
  {
    delegate = SBLogIcon();
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_FAULT))
    {
      [SBHIconManager _archiveConfiguration:forDataSource:ofIcon:];
    }
  }

  else
  {
    delegate = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate iconManager:self dataSource:sourceCopy ofIcon:iconCopy didUpdateConfigurationData:v16];
    }

    if (v14 && uniqueIdentifier)
    {
      archivedWidgetIntents = self->_archivedWidgetIntents;
      if (!archivedWidgetIntents)
      {
        v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v22 = self->_archivedWidgetIntents;
        self->_archivedWidgetIntents = v21;

        archivedWidgetIntents = self->_archivedWidgetIntents;
      }

      [(NSMutableDictionary *)archivedWidgetIntents setObject:v14 forKey:uniqueIdentifier];
    }
  }

  if (v14 && uniqueIdentifier)
  {
    widgetIntents = self->_widgetIntents;
    if (!widgetIntents)
    {
      v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v25 = self->_widgetIntents;
      self->_widgetIntents = v24;

      widgetIntents = self->_widgetIntents;
    }

    [(NSMutableDictionary *)widgetIntents setObject:v14 forKey:uniqueIdentifier];
  }
}

- (void)iconView:(id)view configurationWillBeginWithInteraction:(id)interaction
{
  viewCopy = view;
  interactionCopy = interaction;
  currentConfiguringIconView = [(SBHIconManager *)self currentConfiguringIconView];
  if (currentConfiguringIconView != viewCopy)
  {
    [(SBHIconManager *)self dismissModalInteractionsImmediately];
    [(SBHIconManager *)self setCurrentConfiguringIconView:viewCopy];
  }

  [(SBHIconManager *)self _discardEndEditingTimerAndDontResetUntilReasonIsRemoved:@"IconViewConfiguration"];
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self iconView:viewCopy configurationWillBeginWithInteraction:interactionCopy];
  }
}

- (void)iconView:(id)view configurationWillEndWithInteraction:(id)interaction
{
  viewCopy = view;
  interactionCopy = interaction;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self iconView:viewCopy configurationWillEndWithInteraction:interactionCopy];
  }
}

- (void)iconView:(id)view configurationDidEndWithInteraction:(id)interaction
{
  viewCopy = view;
  interactionCopy = interaction;
  currentConfiguringIconView = [(SBHIconManager *)self currentConfiguringIconView];

  if (currentConfiguringIconView == viewCopy)
  {
    [(SBHIconManager *)self setCurrentConfiguringIconView:0];
  }

  [(SBHIconManager *)self _removeReasonToNotResetEndEditingTimer:@"IconViewConfiguration"];
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self iconView:viewCopy configurationDidEndWithInteraction:interactionCopy];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    icon = [viewCopy icon];
    if (![icon iconDataSourceCount])
    {
      [(SBHIconManager *)self uninstallIcon:icon animate:1];
    }
  }
}

- (BOOL)_alwaysPresentStackConfigurationSheet
{
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate iconManagerAllowsWidgetStackWithSingleWidgetToPresentStackConfigurationSheet:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)verticalMarginPercentageForConfigurationOfIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  v6 = -1.0;
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self verticalMarginPercentageForConfigurationOfIconView:viewCopy];
    v6 = v7;
  }

  return v6;
}

- (void)modalInteractionWillBegin:(id)begin
{
  beginCopy = begin;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentPersonDetailInteraction = [(SBHIconManager *)self currentPersonDetailInteraction];
    v5 = beginCopy;
    if (currentPersonDetailInteraction != v5)
    {
      [(SBHIconManager *)self dismissModalInteractionsImmediately];
      [(SBHIconManager *)self setCurrentPersonDetailInteraction:v5];
    }
  }

  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self modalInteractionWillBegin:beginCopy];
  }
}

- (void)modalInteractionDidEnd:(id)end
{
  endCopy = end;
  currentPersonDetailInteraction = [(SBHIconManager *)self currentPersonDetailInteraction];

  if (currentPersonDetailInteraction == endCopy)
  {
    [(SBHIconManager *)self setCurrentPersonDetailInteraction:0];
  }

  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self modalInteractionDidEnd:endCopy];
  }
}

- (id)_containerViewControllerForPersonDetailInteractionTargetingIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate iconManager:self containerViewControllerForModalInteractionFromIconView:viewCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_containerViewForPersonDetailInteractionTargetingIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    view = [delegate iconManager:self containerViewForModalInteractionFromIconView:viewCopy];
  }

  else
  {
    v7 = [(SBHIconManager *)self _containerViewControllerForPersonDetailInteractionTargetingIconView:viewCopy];

    view = [v7 view];
    viewCopy = v7;
  }

  return view;
}

- (id)_homeScreenContentViewForPersonDetailInteractionTargetingIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    view = [delegate iconManager:self homeScreenContentViewForModalInteractionFromIconView:viewCopy];
  }

  else
  {
    rootFolderController = [(SBHIconManager *)self rootFolderController];
    view = [rootFolderController view];
  }

  return view;
}

- (id)_personDetailInteractionContextForPersonURL:(id)l iconView:(id)view
{
  viewCopy = view;
  lCopy = l;
  representativeIconViewForModalInteractions = [viewCopy representativeIconViewForModalInteractions];
  v9 = [(SBHIconManager *)self _containerViewControllerForPersonDetailInteractionTargetingIconView:viewCopy];
  v10 = [(SBHIconManager *)self _containerViewForPersonDetailInteractionTargetingIconView:viewCopy];
  v11 = [(SBHIconManager *)self _homeScreenContentViewForPersonDetailInteractionTargetingIconView:viewCopy];
  [v11 bounds];
  [v11 convertRect:v10 toView:?];
  v16 = [[SBHPeopleWidgetPersonDetailInteractionContext alloc] initWithPersonURL:lCopy sourceIconView:representativeIconViewForModalInteractions referenceIconView:viewCopy containerViewController:v9 containerView:v10 homeScreenContentView:v11 homeScreenContentFrame:v12, v13, v14, v15];

  return v16;
}

- (id)widgetInsertionRippleIconAnimatorForIcon:(id)icon iconListView:(id)view withReferenceIconView:(id)iconView
{
  iconCopy = icon;
  viewCopy = view;
  iconViewCopy = iconView;
  if (viewCopy || (-[SBHIconManager rootFolder](self, "rootFolder"), v11 = objc_claimAutoreleasedReturnValue(), [v11 indexPathForIcon:iconCopy], v12 = objc_claimAutoreleasedReturnValue(), -[SBHIconManager iconListViewForIndexPath:](self, "iconListViewForIndexPath:", v12), viewCopy = objc_claimAutoreleasedReturnValue(), v12, v11, viewCopy))
  {
    iconLocation = [viewCopy iconLocation];
    if (SBIconLocationGroupContainsLocation(@"SBIconLocationGroupRoot", iconLocation))
    {
      dockListView = [(SBHIconManager *)self dockListView];
    }

    else
    {
      dockListView = 0;
    }

    v15 = [iconLocation isEqualToString:@"SBIconLocationStackConfiguration"];
    listLayoutProvider = [(SBHIconManager *)self listLayoutProvider];
    v17 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationRoot"];

    v18 = [SBHWidgetInsertionRippleIconAnimator alloc];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __94__SBHIconManager_widgetInsertionRippleIconAnimatorForIcon_iconListView_withReferenceIconView___block_invoke;
    v21[3] = &unk_1E8088C90;
    v21[4] = self;
    v19 = [(SBHWidgetInsertionRippleIconAnimator *)v18 initWithIconListView:viewCopy widgetIcon:iconCopy referenceLayout:v17 referenceIconView:iconViewCopy additionalIconListView:dockListView preludeBlock:v21];
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
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManagerWillAnimateWidgetInsertion:self];
  }
}

- (void)popModalInteraction
{
  currentConfiguringIconView = [(SBHIconManager *)self currentConfiguringIconView];
  [currentConfiguringIconView popConfigurationCard];
  [currentConfiguringIconView popStackConfigurationCard];
  currentPersonDetailInteraction = [(SBHIconManager *)self currentPersonDetailInteraction];
  [currentPersonDetailInteraction endInteractionAnimated:1];
}

- (void)dismissModalInteractions
{
  currentConfiguringIconView = [(SBHIconManager *)self currentConfiguringIconView];
  [currentConfiguringIconView dismissConfigurationCard];
  [currentConfiguringIconView dismissStackConfigurationCard];
  [(SBHIconManager *)self setIconStylePickerVisible:0];
  currentPersonDetailInteraction = [(SBHIconManager *)self currentPersonDetailInteraction];
  [currentPersonDetailInteraction endInteractionAnimated:1];
}

- (void)dismissModalInteractionsImmediately
{
  currentConfiguringIconView = [(SBHIconManager *)self currentConfiguringIconView];
  [currentConfiguringIconView dismissConfigurationCardImmediately];
  [currentConfiguringIconView dismissStackConfigurationCardImmediately];
  [(SBHIconManager *)self _dismissStylePickerViewControllerImmediately];
  currentPersonDetailInteraction = [(SBHIconManager *)self currentPersonDetailInteraction];
  [currentPersonDetailInteraction endInteractionAnimated:0];
}

- (void)iconView:(id)view didChangeCustomImageViewController:(id)controller
{
  viewCopy = view;
  controllerCopy = controller;
  v7 = [(NSMapTable *)self->_widgetViewControllersForIconView objectForKey:viewCopy];
  if (v7 == controllerCopy)
  {
    [(NSMapTable *)self->_widgetViewControllersForIconView removeObjectForKey:viewCopy];
  }

  [(NSMapTable *)self->_iconViewsForCustomIconImageViewController removeObjectForKey:controllerCopy];
  customIconImageViewController = [viewCopy customIconImageViewController];
  [(SBHIconManager *)self _updateIconView:viewCopy forCustomIconImageViewController:customIconImageViewController];
  [(SBHIconManager *)self _updateCaptureOnlyBackgroundViewForCustomIconImageViewController:customIconImageViewController];
  if ([customIconImageViewController sbh_isWidgetStackViewController])
  {
    v9 = customIconImageViewController;
    [v9 setDelegate:self];
    [v9 setDataSource:self];
  }
}

- (void)_updateIconView:(id)view forCustomIconImageViewController:(id)controller
{
  viewCopy = view;
  controllerCopy = controller;
  iconViewsForCustomIconImageViewController = self->_iconViewsForCustomIconImageViewController;
  if (!iconViewsForCustomIconImageViewController)
  {
    weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    v9 = self->_iconViewsForCustomIconImageViewController;
    self->_iconViewsForCustomIconImageViewController = weakToWeakObjectsMapTable;

    iconViewsForCustomIconImageViewController = self->_iconViewsForCustomIconImageViewController;
  }

  [(NSMapTable *)iconViewsForCustomIconImageViewController setObject:viewCopy forKey:controllerCopy];
}

- (void)_updateWidgetMultiplexingViewController:(id)controller forIconView:(id)view
{
  controllerCopy = controller;
  viewCopy = view;
  iconViewsForWidgetMultiplexingViewController = self->_iconViewsForWidgetMultiplexingViewController;
  if (!iconViewsForWidgetMultiplexingViewController)
  {
    weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    v9 = self->_iconViewsForWidgetMultiplexingViewController;
    self->_iconViewsForWidgetMultiplexingViewController = weakToWeakObjectsMapTable;

    iconViewsForWidgetMultiplexingViewController = self->_iconViewsForWidgetMultiplexingViewController;
  }

  [(NSMapTable *)iconViewsForWidgetMultiplexingViewController setObject:viewCopy forKey:controllerCopy];
}

- (void)iconView:(id)view didDiscardCustomImageViewController:(id)controller
{
  controllerCopy = controller;
  if ([controllerCopy sbh_isWidgetStackViewController])
  {
    v5 = controllerCopy;
    [v5 setDelegate:0];
    [v5 setDataSource:0];
  }

  v6 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = controllerCopy;
    _effectiveWidgetMultiplexingManager = [(SBHIconManager *)self _effectiveWidgetMultiplexingManager];
    multiplexingViewController = [v8 multiplexingViewController];
    [_effectiveWidgetMultiplexingManager discardMultiplexingViewController:multiplexingViewController];

    iconViewsForWidgetMultiplexingViewController = self->_iconViewsForWidgetMultiplexingViewController;
    multiplexingViewController2 = [v8 multiplexingViewController];
    [(NSMapTable *)iconViewsForWidgetMultiplexingViewController removeObjectForKey:multiplexingViewController2];

    [v8 setDelegate:0];
  }

  v13 = objc_opt_self();
  v14 = objc_opt_isKindOfClass();

  if (v14)
  {
    contentViewController = [controllerCopy contentViewController];
    if ([contentViewController sbh_isWidgetHostViewController])
    {
      [contentViewController invalidate];
    }
  }

  parentViewController = [controllerCopy parentViewController];
  [parentViewController bs_removeChildViewController:controllerCopy];

  [(NSMapTable *)self->_iconViewsForCustomIconImageViewController removeObjectForKey:controllerCopy];
}

- (void)iconView:(id)view dropSessionDidEnter:(id)enter
{
  viewCopy = view;
  enterCopy = enter;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self iconView:viewCopy contentDropSessionDidEnter:enterCopy];
  }
}

- (void)iconView:(id)view dropSessionDidExit:(id)exit
{
  viewCopy = view;
  exitCopy = exit;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self iconView:viewCopy contentDropSessionDidExit:exitCopy];
  }
}

- (BOOL)contextMenuManager:(id)manager shouldBeginContextMenuPresentationForIconView:(id)view
{
  managerCopy = manager;
  viewCopy = view;
  v8 = [(SBHIconManager *)self reasonToDisallowInteractionOnIconView:viewCopy];
  if (v8 || ([(SBHIconManager *)self previewInteractingIconView], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else if (![(SBHIconManager *)self isEditing])
  {
    currentTransitionAnimator = [(SBHIconManager *)self currentTransitionAnimator];

    if (!currentTransitionAnimator)
    {
      icon = [viewCopy icon];
      isFolderIcon = [icon isFolderIcon];

      if (!isFolderIcon || (WeakRetained = objc_loadWeakRetained(&self->_pendingFolderIconToOpen), WeakRetained, !WeakRetained))
      {
        [(SBHIconManager *)self _setupApplicationShortcutItemsForPresentation:viewCopy];
        v9 = 1;
        goto LABEL_5;
      }
    }
  }

  v9 = 0;
LABEL_5:

  return v9;
}

- (id)contextMenuManager:(id)manager containerViewForPresentingContextMenuForIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate iconManager:self containerViewForPresentingContextMenuForIconView:viewCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)contextMenuManager:(id)manager iconView:(id)view willUseContextMenuStyle:(id)style
{
  viewCopy = view;
  styleCopy = style;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self iconView:viewCopy willUseContextMenuStyle:styleCopy];
  }
}

- (unint64_t)contextMenuManager:(id)manager supportedMultitaskingShortcutActionsForIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate iconManager:self supportedMultitaskingShortcutActionsForIconView:viewCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)contextMenuManager:(id)manager shouldPreviewOverlapMenuForIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate iconManager:self shouldPreviewOverlapMenuForIconView:viewCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)contextMenuManager:(id)manager orderedActionContextMenuProvidersForIconView:(id)view
{
  v29 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  location = [view location];
  v7 = SBIconLocationGroupContainsLocation(@"SBIconLocationGroupFloatingDock", location);

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
    v23 = managerCopy;
    contextMenuActionProviders = [managerCopy contextMenuActionProviders];
    v14 = [contextMenuActionProviders countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(contextMenuActionProviders);
          }

          v18 = *(*(&v24 + 1) + 8 * i);
          contextMenuActionSectionType = [v18 contextMenuActionSectionType];
          if (contextMenuActionSectionType == 1)
          {
            v20 = v10;
          }

          else
          {
            v20 = v12;
          }

          if (contextMenuActionSectionType == 2)
          {
            v20 = v11;
          }

          if (contextMenuActionSectionType == 3)
          {
            v21 = v9;
          }

          else
          {
            v21 = v20;
          }

          [v21 addObject:v18];
        }

        v15 = [contextMenuActionProviders countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v15);
    }

    [v8 addObjectsFromArray:v12];
    [v8 addObjectsFromArray:v11];
    [v8 addObjectsFromArray:v10];
    [v8 addObjectsFromArray:v9];

    managerCopy = v23;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)contextMenuManager:(id)manager preferredMenuElementOrderForIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate iconManager:self preferredMenuElementOrderForIconView:viewCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)iconView:(id)view applicationShortcutItemsWithProposedItems:(id)items
{
  itemsCopy = items;
  location = [view location];
  v8 = MEMORY[0x1E696AE18];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __69__SBHIconManager_iconView_applicationShortcutItemsWithProposedItems___block_invoke;
  v16 = &unk_1E80903B8;
  selfCopy = self;
  v18 = location;
  v9 = location;
  v10 = [v8 predicateWithBlock:&v13];
  v11 = [itemsCopy filteredArrayUsingPredicate:{v10, v13, v14, v15, v16, selfCopy}];

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

- (BOOL)iconView:(id)view shouldActivateApplicationShortcutItem:(id)item atIndex:(unint64_t)index
{
  viewCopy = view;
  itemCopy = item;
  delegate = [(SBHIconManager *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![delegate iconManager:self shouldActivateApplicationShortcutItem:itemCopy atIndex:index forIconView:viewCopy] || (WeakRetained = objc_loadWeakRetained(&self->_pendingFolderIconToOpen), WeakRetained, WeakRetained))
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

- (BOOL)shouldGroupSystemApplicationShortcutItemsForIconView:(id)view atLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [delegate iconManager:self shouldGroupSystemApplicationShortcutItemsForIconView:viewCopy];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(SBHIconViewContextMenuManager *)self->_contextMenuManager shouldGroupSystemApplicationShortcutItemsForIconView:viewCopy atLocation:x, y];

  return v10 & v9;
}

- (id)applicationShortcutSectionOrderingForIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate iconManager:self applicationShortcutSectionOrderingForIconView:viewCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)dataSourceForOpenApplicationWindowsContextMenuProvider:(id)provider
{
  providerCopy = provider;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate iconManager:self dataSourceForOpenApplicationWindowsContextMenuProvider:providerCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)openApplicationWindowsContextMenuProvider:(id)provider canProvideContextMenuSectionsForBundleIdentifier:(id)identifier
{
  providerCopy = provider;
  identifierCopy = identifier;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [delegate iconManager:self openApplicationWindowsContextMenuProvider:providerCopy canProvideContextMenuSectionsForBundleIdentifier:identifierCopy];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)recentDocumentsContextMenuProvider:(id)provider canProvideContextMenuSectionsForBundleIdentifier:(id)identifier
{
  providerCopy = provider;
  identifierCopy = identifier;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [delegate iconManager:self recentDocumentsContextMenuProvider:providerCopy canProvideContextMenuSectionsForBundleIdentifier:identifierCopy];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)requestDeleteFileStackIcon:(id)icon
{
  iconCopy = icon;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate iconManager:self requestDeleteFileStackIcon:iconCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_beginObservingLeafIconsInModel:(id)model
{
  v16 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = objc_opt_self();
  v6 = [modelCopy iconsOfClass:{v5, 0}];

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

- (void)_endObservingLeafIconsInModel:(id)model
{
  v16 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = objc_opt_self();
  v6 = [modelCopy iconsOfClass:{v5, 0}];

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

- (unint64_t)viewMap:(id)map maxRecycledViewsOfClass:(Class)class
{
  mapCopy = map;
  iconViewMap = [(SBHIconManager *)self iconViewMap];

  if (iconViewMap == mapCopy || ([(SBHIconManager *)self homescreenIconAccessoryViewMap], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == mapCopy) || ([(SBHIconManager *)self homescreenIconLabelAccessoryViewMap], v8 = objc_claimAutoreleasedReturnValue(), v8, v8 == mapCopy))
  {
    maxIconViewsInHierarchy = self->_maxIconViewsInHierarchy;
  }

  else
  {
    homescreenIconImageViewMap = [(SBHIconManager *)self homescreenIconImageViewMap];

    if (homescreenIconImageViewMap == mapCopy)
    {
      maxIconViewsInHierarchy = -1;
    }

    else
    {
      widgetBackgroundViewMap = [(SBHIconManager *)self widgetBackgroundViewMap];

      if (widgetBackgroundViewMap == mapCopy)
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

- (id)recycledViewsContainerProviderForViewMap:(id)map
{
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate recycledViewsContainerProviderForIconManager:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)viewMap:(id)map makeNewViewOfClass:(Class)class
{
  mapCopy = map;
  widgetBackgroundViewMap = [(SBHIconManager *)self widgetBackgroundViewMap];

  if (widgetBackgroundViewMap == mapCopy)
  {
    listLayoutProvider = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:0];
    v11 = [SBIconView componentBackgroundViewOfType:4 compatibleWithTraitCollection:listLayoutProvider initialWeighting:1.0];
  }

  else
  {
    v8 = objc_opt_self();

    if (v8 != class)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v12 = [SBIconView alloc];
    listLayoutProvider = [(SBHIconManager *)self listLayoutProvider];
    v11 = [(SBIconView *)v12 initWithConfigurationOptions:0 listLayoutProvider:listLayoutProvider];
  }

  v9 = v11;

LABEL_7:

  return v9;
}

- (BOOL)viewMap:(id)map shouldRecycleView:(id)view
{
  mapCopy = map;
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    LOBYTE(self) = [(SBHIconManager *)self shouldRecycleIconView:viewCopy];
  }

  else
  {
    widgetBackgroundViewMap = [(SBHIconManager *)self widgetBackgroundViewMap];

    if (widgetBackgroundViewMap == mapCopy)
    {
      LODWORD(self) = [viewCopy _wantsAutolayout] ^ 1;
    }

    else
    {
      LOBYTE(self) = 1;
    }
  }

  return self;
}

- (void)enumerateIconViewQueryableChildrenWithOptions:(unint64_t)options usingBlock:(id)block
{
  v74 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v7 = blockCopy;
  v53 = blockCopy;
  if ((options & 0x20) == 0 || (options &= ~0x20uLL, v69 = 0, v70 = &v69, v71 = 0x2020000000, v72 = 0, v66[0] = MEMORY[0x1E69E9820], v66[1] = 3221225472, v66[2] = __75__SBHIconManager_enumerateIconViewQueryableChildrenWithOptions_usingBlock___block_invoke, v66[3] = &unk_1E80903E0, v67 = blockCopy, v68 = &v69, [(SBHIconManager *)self enumerateIconViewQueryableChildrenWithOptions:options | 0x40 usingBlock:v66], v8 = *(v70 + 24), v67, _Block_object_dispose(&v69, 8), v7 = v53, (v8 & 1) == 0))
  {
    v69 = 0;
    v70 = &v69;
    if (((options & 3) != 0) | options & 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = (options >> 3) & 1;
    }

    v71 = 0x2020000000;
    v72 = 0;
    floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
    v11 = (options & 0x80) != 0 || [(SBHIconManager *)self isFloatingDockVisible];
    v12 = v9 ^ 1;
    if (floatingDockViewController)
    {
      if ((v12 | v11))
      {
        v13 = v70;
        *(v70 + 24) = 0;
        (v7)[2](v7, floatingDockViewController, options, v13 + 3);
        if (v70[3])
        {
          goto LABEL_75;
        }
      }
    }

    if ((options & 3) != 0 && [(SBHIconManager *)self isShowingModalInteraction])
    {
      goto LABEL_75;
    }

    leadingTodayViewController = [(SBHIconManager *)self leadingTodayViewController];
    overlayTodayViewController = [(SBHIconManager *)self overlayTodayViewController];
    v51 = overlayTodayViewController;
    if (leadingTodayViewController)
    {
      v16 = leadingTodayViewController;
    }

    else
    {
      v16 = overlayTodayViewController;
    }

    v17 = v16;
    isTodayViewEffectivelyVisible = [(SBHIconManager *)self isTodayViewEffectivelyVisible];
    v52 = floatingDockViewController;
    v50 = leadingTodayViewController;
    if (leadingTodayViewController)
    {
      isSpotlightVisible = [leadingTodayViewController isSpotlightVisible];
    }

    else
    {
      isSpotlightVisible = [v51 isSpotlightVisible];
    }

    if (v17)
    {
      if ((v9 & (!isTodayViewEffectivelyVisible | isSpotlightVisible) & 1) == 0)
      {
        v23 = v70;
        *(v70 + 24) = 0;
        (v7)[2](v7, v17, options, v23 + 3);
        if (v70[3] & 1) != 0 || (v62[0] = MEMORY[0x1E69E9820], v62[1] = 3221225472, v62[2] = __75__SBHIconManager_enumerateIconViewQueryableChildrenWithOptions_usingBlock___block_invoke_2, v62[3] = &unk_1E8090408, v63 = v7, v64 = &v69, v65 = options, [(SBHIconManager *)self enumerateAppPredictionViewControllersInIconLocationGroup:@"SBIconLocationGroupTodayView" withOptions:options usingBlock:v62], v63, v7 = v53, (v70[3]))
        {
LABEL_74:

          floatingDockViewController = v52;
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
      if (floatingDockViewController)
      {
        isMainDisplayLibraryViewVisible = 1;
        goto LABEL_26;
      }

      trailingLibraryViewController = [(SBHIconManager *)self trailingLibraryViewController];
      isMainDisplayLibraryViewVisible = 1;
    }

    else
    {
      isMainDisplayLibraryViewVisible = [(SBHIconManager *)self isMainDisplayLibraryViewVisible];
      if (floatingDockViewController)
      {
LABEL_26:
        trailingLibraryViewController = [floatingDockViewController libraryViewController];
        isPresentingLibrary = [floatingDockViewController isPresentingLibrary];
        if (!trailingLibraryViewController)
        {
          goto LABEL_39;
        }

LABEL_34:
        if (isPresentingLibrary && ((v12 | isMainDisplayLibraryViewVisible) & 1) != 0)
        {
          v24 = v70;
          *(v70 + 24) = 0;
          (v7)[2](v7, trailingLibraryViewController, options, v24 + 3);
          if ((v70[3] & 1) != 0 || (options & 3) != 0 && (isTodayViewEffectivelyVisible || isMainDisplayLibraryViewVisible))
          {
            goto LABEL_73;
          }

          goto LABEL_41;
        }

LABEL_39:
        if ((options & 3) != 0 && (isTodayViewEffectivelyVisible || isMainDisplayLibraryViewVisible))
        {
          goto LABEL_73;
        }

LABEL_41:
        contentVisibility = [(SBHIconManager *)self contentVisibility];
        if ((options & 5) == 1 && contentVisibility - 3 >= 0xFFFFFFFFFFFFFFFELL)
        {
          goto LABEL_73;
        }

        _currentFolderController = [(SBHIconManager *)self _currentFolderController];
        v48 = trailingLibraryViewController;
        if (self->_closingFolder || [(SBHIconManager *)self isPerformingCancelledExpandTransition])
        {
          rootFolderController = [(SBHIconManager *)self rootFolderController];

          _currentFolderController = rootFolderController;
        }

        if (!_currentFolderController)
        {
          goto LABEL_52;
        }

        v28 = v70;
        *(v70 + 24) = 0;
        (v53)[2](v53, _currentFolderController, options, v28 + 3);
        if (options & 1) == 0 || (v70[3])
        {
          if ((v70[3] & 1) == 0)
          {
LABEL_52:
            rootViewController = [(SBHIconManager *)self rootViewController];
            v32 = rootViewController;
            if (_currentFolderController || !rootViewController || (v33 = v70, *(v70 + 24) = 0, (v53)[2](v53, rootViewController, options, v33 + 3), (v70[3] & 1) == 0))
            {
              if ((options & 0x40) != 0 || (*(v70 + 24) = 0, v58[0] = MEMORY[0x1E69E9820], v58[1] = 3221225472, v58[2] = __75__SBHIconManager_enumerateIconViewQueryableChildrenWithOptions_usingBlock___block_invoke_3, v58[3] = &unk_1E8090408, v59 = v53, v60 = &v69, v61 = options, [(SBHIconManager *)self enumerateAppPredictionViewControllersInIconLocationGroup:@"SBIconLocationGroupRoot" withOptions:options usingBlock:v58], v34 = *(v70 + 24), v59, (v34 & 1) == 0))
              {
                v56 = 0u;
                v57 = 0u;
                v54 = 0u;
                v55 = 0u;
                trailingCustomViewControllers = [(SBHIconManager *)self trailingCustomViewControllers];
                v36 = [trailingCustomViewControllers countByEnumeratingWithState:&v54 objects:v73 count:16];
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
                      objc_enumerationMutation(trailingCustomViewControllers);
                    }

                    v39 = *(*(&v54 + 1) + 8 * v38);
                    if (objc_opt_respondsToSelector())
                    {
                      rootFolderController2 = [(SBHIconManager *)self rootFolderController];
                      v41 = [rootFolderController2 pageState] == 4;

                      if (v41)
                      {
                        iconViewQueryable = [v39 iconViewQueryable];
                        v43 = (objc_opt_respondsToSelector() & 1) != 0 ? iconViewQueryable : 0;
                        v44 = v43;

                        v45 = v70;
                        *(v70 + 24) = 0;
                        (v53)[2](v53, v44, options, v45 + 3);
                        v46 = *(v70 + 24);

                        if (v46)
                        {
                          break;
                        }
                      }
                    }

                    if (v36 == ++v38)
                    {
                      v36 = [trailingCustomViewControllers countByEnumeratingWithState:&v54 objects:v73 count:16];
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
          rootFolderController3 = [(SBHIconManager *)self rootFolderController];
          v30 = _currentFolderController == rootFolderController3;

          if (v30)
          {
            goto LABEL_52;
          }
        }

        trailingLibraryViewController = v48;
LABEL_73:

        v17 = v49;
        goto LABEL_74;
      }

      trailingLibraryViewController = [(SBHIconManager *)self overlayLibraryViewController];
    }

    isPresentingLibrary = 1;
    if (!trailingLibraryViewController)
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

- (void)enumerateAppPredictionViewControllersInIconLocationGroup:(id)group withOptions:(unint64_t)options usingBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __98__SBHIconManager_enumerateAppPredictionViewControllersInIconLocationGroup_withOptions_usingBlock___block_invoke;
  v10[3] = &unk_1E8090430;
  v11 = blockCopy;
  v9 = blockCopy;
  [(SBHIconManager *)self enumerateAppPredictionViewControllersWithIconViewsInIconLocationGroup:group withOptions:options usingBlock:v10];
}

- (void)enumerateAppPredictionViewControllersWithIconViewsInIconLocationGroup:(id)group withOptions:(unint64_t)options usingBlock:(id)block
{
  optionsCopy = options;
  v28 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  blockCopy = block;
  v26 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  _effectiveAppPredictionViewControllersForUniqueIdentifier = [(SBHIconManager *)self _effectiveAppPredictionViewControllersForUniqueIdentifier];
  objectEnumerator = [_effectiveAppPredictionViewControllersForUniqueIdentifier objectEnumerator];

  v10 = [objectEnumerator countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        _effectiveWidgetMultiplexingManager = [(SBHIconManager *)self _effectiveWidgetMultiplexingManager];
        v16 = [_effectiveWidgetMultiplexingManager activeMultiplexingViewControllerForViewController:v14];

        v17 = [(NSMapTable *)self->_iconViewsForWidgetMultiplexingViewController objectForKey:v16];
        v18 = v17;
        if (v17)
        {
          if ((optionsCopy & 1) == 0 || ([v17 effectiveIconImageAlpha], (BSFloatIsZero() & 1) == 0) && objc_msgSend(v18, "_isInAWindow"))
          {
            location = [v18 location];
            if (SBIconLocationGroupContainsLocation(groupCopy, location))
            {
              v26 = 0;
              blockCopy[2](blockCopy, v14, v18, &v26);
              if (v26 == 1)
              {

                goto LABEL_17;
              }
            }
          }
        }
      }

      v11 = [objectEnumerator countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
}

- (void)enumerateIconViewsDisplayedInAppPredictionsInLocationGroup:(id)group withOptions:(unint64_t)options usingBlock:(id)block
{
  groupCopy = group;
  blockCopy = block;
  if ([groupCopy isEqualToString:@"SBIconLocationGroupTodayView"])
  {
    _effectiveTodayViewController = [(SBHIconManager *)self _effectiveTodayViewController];
    if (!_effectiveTodayViewController || (options & 1) != 0 && ![(SBHIconManager *)self isTodayViewEffectivelyVisible])
    {

      goto LABEL_8;
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __100__SBHIconManager_enumerateIconViewsDisplayedInAppPredictionsInLocationGroup_withOptions_usingBlock___block_invoke;
  v11[3] = &unk_1E8090430;
  v12 = blockCopy;
  [(SBHIconManager *)self enumerateAppPredictionViewControllersWithIconViewsInIconLocationGroup:groupCopy withOptions:options usingBlock:v11];

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

- (id)appPredictionsIconViewDisplayingIconView:(id)view options:(unint64_t)options
{
  viewCopy = view;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__23;
  v23 = __Block_byref_object_dispose__23;
  v24 = 0;
  _effectiveTodayViewController = [(SBHIconManager *)self _effectiveTodayViewController];
  if (_effectiveTodayViewController && ((options & 1) == 0 || [(SBHIconManager *)self isTodayViewEffectivelyVisible]))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __67__SBHIconManager_appPredictionsIconViewDisplayingIconView_options___block_invoke;
    v15[3] = &unk_1E8090480;
    v16 = viewCopy;
    v17 = &v19;
    optionsCopy = options;
    [(SBHIconManager *)self enumerateAppPredictionViewControllersWithIconViewsInIconLocationGroup:@"SBIconLocationGroupTodayView" withOptions:options usingBlock:v15];
  }

  v8 = v20[5];
  if (!v8)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__SBHIconManager_appPredictionsIconViewDisplayingIconView_options___block_invoke_2;
    v11[3] = &unk_1E8090480;
    v12 = viewCopy;
    v13 = &v19;
    optionsCopy2 = options;
    [(SBHIconManager *)self enumerateAppPredictionViewControllersWithIconViewsInIconLocationGroup:@"SBIconLocationGroupRoot" withOptions:options usingBlock:v11];

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

- (id)appPredictionViewControllerForIconView:(id)view
{
  viewCopy = view;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__23;
  v19 = __Block_byref_object_dispose__23;
  v20 = 0;
  _effectiveTodayViewController = [(SBHIconManager *)self _effectiveTodayViewController];
  if (_effectiveTodayViewController)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__SBHIconManager_appPredictionViewControllerForIconView___block_invoke;
    v12[3] = &unk_1E80904A8;
    v13 = viewCopy;
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
    v10 = viewCopy;
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
  _effectiveAppPredictionViewControllersForUniqueIdentifier = [(SBHIconManager *)self _effectiveAppPredictionViewControllersForUniqueIdentifier];
  objectEnumerator = [_effectiveAppPredictionViewControllersForUniqueIdentifier objectEnumerator];

  v4 = [objectEnumerator countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v8 + 1) + 8 * v7++) enumerateDisplayedIconViewsUsingBlock:&__block_literal_global_880];
      }

      while (v5 != v7);
      v5 = [objectEnumerator countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void __44__SBHIconManager_refreshAppPredictionBadges__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 icon];
  [v2 noteBadgeDidChange];
}

- (void)updateAppPredictionViewControllersWithListLayoutProvider:(id)provider oldListLayoutProvider:(id)layoutProvider animated:(BOOL)animated
{
  appPredictionViewControllersForUniqueIdentifier = self->_appPredictionViewControllersForUniqueIdentifier;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __106__SBHIconManager_updateAppPredictionViewControllersWithListLayoutProvider_oldListLayoutProvider_animated___block_invoke;
  v6[3] = &unk_1E80904D0;
  v6[4] = self;
  animatedCopy = animated;
  [(NSMutableDictionary *)appPredictionViewControllersForUniqueIdentifier enumerateKeysAndObjectsUsingBlock:v6, layoutProvider];
}

- (void)updateLargeIconsEnabledForAppPredictionViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  [controllerCopy setLargeIconsEnabled:(-[SBHIconManager listLayoutProviderLayoutOptions](self animated:{"listLayoutProviderLayoutOptions") >> 3) & 1, animatedCopy}];
}

- (id)iconViewForIcon:(id)icon location:(id)location options:(unint64_t)options
{
  iconCopy = icon;
  locationCopy = location;
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
  v10 = locationCopy;
  v15 = v10;
  v17 = &v18;
  v11 = iconCopy;
  v16 = v11;
  [(SBHIconManager *)self enumerateIconViewQueryableChildrenWithOptions:options usingBlock:v14];
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

- (id)firstIconViewForIcon:(id)icon inLocations:(id)locations
{
  iconCopy = icon;
  locationsCopy = locations;
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
  v8 = iconCopy;
  v13 = v8;
  v9 = locationsCopy;
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

- (id)firstIconViewWithOptions:(unint64_t)options iconPassingTest:(id)test
{
  testCopy = test;
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
  v8 = testCopy;
  v12 = v8;
  [(SBHIconManager *)self enumerateIconViewQueryableChildrenWithOptions:options usingBlock:v11];
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

- (id)firstIconViewForIcon:(id)icon
{
  iconCopy = icon;
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
  v5 = iconCopy;
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

- (id)firstIconViewForIcon:(id)icon excludingLocations:(id)locations
{
  iconCopy = icon;
  locationsCopy = locations;
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
  v8 = iconCopy;
  v13 = v8;
  v9 = locationsCopy;
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

- (BOOL)isDisplayingIcon:(id)icon inLocation:(id)location options:(unint64_t)options
{
  iconCopy = icon;
  locationCopy = location;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__SBHIconManager_isDisplayingIcon_inLocation_options___block_invoke;
  v13[3] = &unk_1E80904F8;
  v10 = locationCopy;
  v14 = v10;
  v16 = &v17;
  v11 = iconCopy;
  v15 = v11;
  [(SBHIconManager *)self enumerateIconViewQueryableChildrenWithOptions:options usingBlock:v13];
  LOBYTE(options) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return options;
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

- (BOOL)isDisplayingIconView:(id)view inLocation:(id)location
{
  viewCopy = view;
  locationCopy = location;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__SBHIconManager_isDisplayingIconView_inLocation___block_invoke;
  v11[3] = &unk_1E80904F8;
  v8 = locationCopy;
  v12 = v8;
  v14 = &v15;
  v9 = viewCopy;
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

- (BOOL)isDisplayingIcon:(id)icon inLocations:(id)locations
{
  iconCopy = icon;
  locationsCopy = locations;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__SBHIconManager_isDisplayingIcon_inLocations___block_invoke;
  v11[3] = &unk_1E80904F8;
  v8 = locationsCopy;
  v12 = v8;
  v14 = &v15;
  v9 = iconCopy;
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

- (BOOL)isDisplayingIconView:(id)view
{
  viewCopy = view;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__SBHIconManager_isDisplayingIconView___block_invoke;
  v7[3] = &unk_1E8090570;
  v9 = &v10;
  v5 = viewCopy;
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

- (BOOL)isDisplayingIcon:(id)icon queryOptions:(unint64_t)options
{
  optionsCopy = options;
  iconCopy = icon;
  if (optionsCopy)
  {
    icon = 0;
    if ((optionsCopy & 2) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    rootFolder = [(SBHIconManager *)self rootFolder];
    v8 = [rootFolder indexPathForIcon:iconCopy];
    v9 = [rootFolder folderContainingIndexPath:v8 relativeIndexPath:0];
    icon = [v9 icon];

    if ((optionsCopy & 2) != 0)
    {
LABEL_12:
      if ((optionsCopy & 4) == 0)
      {
        _effectiveTodayViewController = [(SBHIconManager *)self _effectiveTodayViewController];
        v14 = _effectiveTodayViewController;
        if (_effectiveTodayViewController && ([_effectiveTodayViewController isDisplayingIcon:iconCopy] & 1) != 0)
        {

          goto LABEL_22;
        }
      }

      if ([(SBHIconManager *)self isRootFolderContentVisible])
      {
        _currentFolderController = [(SBHIconManager *)self _currentFolderController];
        v16 = _currentFolderController;
        if (icon && ([_currentFolderController isDisplayingIcon:icon] & 1) != 0)
        {

          goto LABEL_22;
        }

        v17 = [v16 isDisplayingIcon:iconCopy];

        if (v17)
        {
          goto LABEL_22;
        }
      }

      v18 = 0;
      goto LABEL_24;
    }
  }

  floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];

  if (!floatingDockViewController)
  {
    goto LABEL_12;
  }

  floatingDockViewController2 = [(SBHIconManager *)self floatingDockViewController];
  if (!-[SBHIconManager isFloatingDockVisible](self, "isFloatingDockVisible") || (!icon || ([floatingDockViewController2 isDisplayingIcon:icon] & 1) == 0) && (objc_msgSend(floatingDockViewController2, "isDisplayingIcon:", iconCopy) & 1) == 0)
  {

    goto LABEL_12;
  }

LABEL_22:
  v18 = 1;
LABEL_24:

  return v18;
}

- (id)bestLocationForIcon:(id)icon
{
  iconCopy = icon;
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
  v5 = iconCopy;
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

- (id)bestHomeScreenLocationForIcon:(id)icon
{
  iconCopy = icon;
  rootFolder = [(SBHIconManager *)self rootFolder];
  v6 = [rootFolder indexPathForIcon:iconCopy];

  if (v6)
  {
    if ([rootFolder isIconAtIndexPathInDock:v6])
    {
      v7 = SBIconLocationDock;
LABEL_4:
      v8 = *v7;
      goto LABEL_8;
    }

    if (([rootFolder isIconAtIndexPathInTodayList:v6] & 1) == 0 && (objc_msgSend(rootFolder, "isIconAtIndexPathInIgnoredList:", v6) & 1) == 0)
    {
      v10 = [rootFolder folderContainingIndexPath:v6 relativeIndexPath:0];

      v7 = SBIconLocationFolder;
      if (v10 == rootFolder)
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

- (id)firstIconViewForIcon:(id)icon options:(unint64_t)options
{
  iconCopy = icon;
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
  v15 = iconCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__SBHIconManager_firstIconViewForIcon_options___block_invoke_2;
  v11[3] = &unk_1E808E960;
  v13 = &v17;
  v8 = v15;
  v12 = v8;
  SBIconViewQueryingHandleMethodRecursion(self, options, a2, v14, v11);
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

- (BOOL)isDisplayingIcon:(id)icon options:(unint64_t)options
{
  iconCopy = icon;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __43__SBHIconManager_isDisplayingIcon_options___block_invoke;
  v13[3] = &unk_1E808E938;
  v15 = &v16;
  v14 = iconCopy;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__SBHIconManager_isDisplayingIcon_options___block_invoke_2;
  v10[3] = &unk_1E808E960;
  v12 = &v16;
  v8 = v14;
  v11 = v8;
  SBIconViewQueryingHandleMethodRecursion(self, options, a2, v13, v10);
  LOBYTE(options) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return options;
}

- (BOOL)isDisplayingIconView:(id)view options:(unint64_t)options
{
  viewCopy = view;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__SBHIconManager_isDisplayingIconView_options___block_invoke;
  v13[3] = &unk_1E808E938;
  v15 = &v16;
  v14 = viewCopy;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__SBHIconManager_isDisplayingIconView_options___block_invoke_2;
  v10[3] = &unk_1E808E960;
  v12 = &v16;
  v8 = v14;
  v11 = v8;
  SBIconViewQueryingHandleMethodRecursion(self, options, a2, v13, v10);
  LOBYTE(options) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return options;
}

- (id)dequeueReusableIconViewOfClass:(Class)class
{
  iconViewMap = [(SBHIconManager *)self iconViewMap];
  v5 = [iconViewMap dequeueReusableViewOfClass:class];

  return v5;
}

- (void)recycleIconView:(id)view
{
  viewCopy = view;
  iconViewMap = [(SBHIconManager *)self iconViewMap];
  [iconViewMap recycleView:viewCopy];
}

- (BOOL)isIconViewRecycled:(id)recycled
{
  recycledCopy = recycled;
  iconViewMap = [(SBHIconManager *)self iconViewMap];
  v6 = [iconViewMap isViewRecycled:recycledCopy];

  return v6;
}

- (void)configureIconView:(id)view forIcon:(id)icon
{
  viewCopy = view;
  iconCopy = icon;
  [viewCopy setAllowsCloseBox:{-[SBHIconManager iconsShouldAllowCloseBoxes](self, "iconsShouldAllowCloseBoxes")}];
  [viewCopy setAllowsResizeHandle:1];
  [viewCopy setDelegate:self];
  [viewCopy addObserver:self];
  location = [viewCopy location];
  if ((SBIconLocationGroupContainsLocation(@"SBIconLocationGroupRoot", location) & 1) != 0 || [location isEqualToString:@"SBIconLocationFolder"])
  {
    [viewCopy setDisplaysIconStatusInLabel:1];
  }

  iconDragManager = [(SBHIconManager *)self iconDragManager];
  [iconDragManager configureIconView:viewCopy];
  [viewCopy setImageLoadingBehavior:1];
  [viewCopy setPrefersFlatImageLayers:{-[SBHIconManager prefersFlatImageLayers](self, "prefersFlatImageLayers")}];
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self configureIconView:viewCopy forIcon:iconCopy];
  }
}

- (BOOL)isPresentingIconLocation:(id)location
{
  locationCopy = location;
  _currentFolderController = [(SBHIconManager *)self _currentFolderController];
  if ([_currentFolderController isPresentingIconLocation:locationCopy])
  {
    v6 = 1;
  }

  else
  {
    floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
    v8 = floatingDockViewController;
    v6 = 0;
    if (floatingDockViewController)
    {
      [floatingDockViewController dockOffscreenProgress];
      if (v9 < 1.0 && ([v8 isPresentingIconLocation:locationCopy] & 1) != 0)
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
  _currentFolderController = [(SBHIconManager *)self _currentFolderController];
  v5 = _currentFolderController;
  if (_currentFolderController)
  {
    presentedIconLocations = [_currentFolderController presentedIconLocations];
    [v3 unionSet:presentedIconLocations];
  }

  floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
  v8 = floatingDockViewController;
  if (floatingDockViewController)
  {
    [floatingDockViewController dockOffscreenProgress];
    if (v9 < 1.0)
    {
      presentedIconLocations2 = [v8 presentedIconLocations];
      [v3 unionSet:presentedIconLocations2];
    }
  }

  return v3;
}

- (Class)controllerClassForFolder:(id)folder
{
  v4 = objc_opt_class();

  return [(SBHIconManager *)self controllerClassForFolderClass:v4];
}

- (Class)controllerClassForFolderClass:(Class)class
{
  if (class)
  {
    v5 = objc_opt_self();
    v6 = [(objc_class *)class isSubclassOfClass:v5];

    if (v6)
    {
      v7 = objc_opt_class();
    }

    else
    {
      v7 = objc_opt_self();
    }

    v8 = v7;
    delegate = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v8 = [delegate iconManager:self folderControllerClassForFolderClass:class proposedClass:v8];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)folderController:(id)controller canChangeCurrentPageIndexToIndex:(int64_t)index
{
  controllerCopy = controller;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [delegate iconManager:self folderController:controllerCopy canChangeCurrentPageIndexToIndex:index];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)folderControllerShouldClose:(id)close withPinchGesture:(id)gesture
{
  gestureCopy = gesture;
  originatingIconLocation = [close originatingIconLocation];
  if (gestureCopy)
  {
    v8 = [[SBWorkspaceInteractionContext alloc] initWithGestureRecognizer:gestureCopy];
  }

  else
  {
    v8 = 0;
  }

  [(SBHIconManager *)self popExpandedIconFromLocation:originatingIconLocation interactionContext:v8 animated:1 completionHandler:0];

  return 0;
}

- (void)folderControllerShouldBeginEditing:(id)editing withHaptic:(BOOL)haptic
{
  editingCopy = editing;
  if ([(SBHIconManager *)self isEditingAllowed])
  {
    view = [editingCopy view];
    view2 = [editingCopy view];
    [view2 center];
    v9 = v8;
    v11 = v10;
    iconEditingFeedbackBehavior = [(SBHIconManager *)self iconEditingFeedbackBehavior];
    view3 = [iconEditingFeedbackBehavior view];
    [view convertPoint:view3 toView:{v9, v11}];
    v15 = v14;
    v17 = v16;

    if (haptic)
    {
      iconEditingFeedbackBehavior2 = [(SBHIconManager *)self iconEditingFeedbackBehavior];
      [(SBHIconManager *)self setEditing:1 withFeedbackBehavior:iconEditingFeedbackBehavior2 location:v15, v17];
    }

    else
    {
      [(SBHIconManager *)self setEditing:1 withFeedbackBehavior:0 location:v15, v17];
    }
  }
}

- (void)folderControllerWillBeginScrolling:(id)scrolling
{
  scrollingCopy = scrolling;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self folderControllerWillBeginScrolling:scrollingCopy];
  }

  iconDragManager = [(SBHIconManager *)self iconDragManager];
  [iconDragManager noteFolderBeganScrolling];

  [(SBHIconManager *)self _discardEndEditingTimerAndDontResetUntilReasonIsRemoved:@"FOLDER_IS_BEING_SCROLLED"];
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  [rootFolderController bringWidgetIntroductionPopoverToFront];

  leadingTodayViewController = [(SBHIconManager *)self leadingTodayViewController];
  if (objc_opt_respondsToSelector())
  {
    cancelTouchesOnIconViews = [leadingTodayViewController cancelTouchesOnIconViews];
    todayViewCancelTouchesScrollingAssertion = [(SBHIconManager *)self todayViewCancelTouchesScrollingAssertion];
    [todayViewCancelTouchesScrollingAssertion invalidate];

    [(SBHIconManager *)self setTodayViewCancelTouchesScrollingAssertion:cancelTouchesOnIconViews];
  }

  trailingLibraryViewController = [(SBHIconManager *)self trailingLibraryViewController];
  if (objc_opt_respondsToSelector())
  {
    [trailingLibraryViewController folderControllerWillBeginScrolling:scrollingCopy];
  }
}

- (void)folderControllerDidEndScrolling:(id)scrolling
{
  scrollingCopy = scrolling;
  iconToReveal = [(SBHIconManager *)self iconToReveal];

  if (iconToReveal)
  {
    [(SBHIconManager *)self finishInstallingIconAnimated:1];
  }

  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self folderControllerDidEndScrolling:scrollingCopy];
  }

  [(SBHIconManager *)self _removeReasonToNotResetEndEditingTimer:@"FOLDER_IS_BEING_SCROLLED"];
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  [rootFolderController bringWidgetIntroductionPopoverToFront];

  todayViewCancelTouchesScrollingAssertion = [(SBHIconManager *)self todayViewCancelTouchesScrollingAssertion];
  [todayViewCancelTouchesScrollingAssertion invalidate];

  [(SBHIconManager *)self setTodayViewCancelTouchesScrollingAssertion:0];
  isShowingOrTransitioningToTrailingCustomView = [(SBHIconManager *)self isShowingOrTransitioningToLeadingCustomView]|| [(SBHIconManager *)self isShowingOrTransitioningToTrailingCustomView];
  [(SBRootFolderController *)self->_rootFolderController setParallaxDisabled:isShowingOrTransitioningToTrailingCustomView forReason:@"Custom leading/trailing view is not visible"];
  trailingLibraryViewController = [(SBHIconManager *)self trailingLibraryViewController];
  if (trailingLibraryViewController && ![(SBFolderController *)self->_rootFolderController isEditing])
  {
    [trailingLibraryViewController _dismissExpandedPods:-[SBHIconManager isShowingOrTransitioningToTrailingCustomView](self completion:{"isShowingOrTransitioningToTrailingCustomView"), 0}];
  }
}

- (void)_discardEndEditingTimerAndDontResetUntilReasonIsRemoved:(id)removed
{
  removedCopy = removed;
  if ([(SBHIconManager *)self isEditing])
  {
    if (!self->_reasonsToNotRestartEditingTimer)
    {
      v4 = objc_opt_new();
      reasonsToNotRestartEditingTimer = self->_reasonsToNotRestartEditingTimer;
      self->_reasonsToNotRestartEditingTimer = v4;
    }

    editingEndTimer = [(SBHIconManager *)self editingEndTimer];
    if (editingEndTimer)
    {
      v7 = editingEndTimer;
      [editingEndTimer invalidate];
      [(SBHIconManager *)self setEditingEndTimer:0];
    }

    [(NSCountedSet *)self->_reasonsToNotRestartEditingTimer addObject:removedCopy];
  }
}

- (void)_removeReasonToNotResetEndEditingTimer:(id)timer
{
  timerCopy = timer;
  isEditing = [(SBHIconManager *)self isEditing];
  reasonsToNotRestartEditingTimer = self->_reasonsToNotRestartEditingTimer;
  if (isEditing)
  {
    [(NSCountedSet *)reasonsToNotRestartEditingTimer removeObject:timerCopy];
    [(SBHIconManager *)self _restartEditingEndTimer];
  }

  else
  {
    self->_reasonsToNotRestartEditingTimer = 0;
  }
}

- (double)minimumHomeScreenScaleForFolderController:(id)controller
{
  controllerCopy = controller;
  delegate = [(SBHIconManager *)self delegate];
  v6 = 1.0;
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self minimumHomeScreenScaleForFolderController:controllerCopy];
    v6 = v7;
  }

  return v6;
}

- (UIEdgeInsets)contentOverlayInsetsFromParentIfAvailableForFolderController:(id)controller
{
  controllerCopy = controller;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self contentOverlayInsetsFromParentIfAvailableForFolderController:controllerCopy];
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

- (void)folderControllerWillOpen:(id)open
{
  openCopy = open;
  [(SBHIconManager *)self setPreviewInteractingIconView:0];
  [(SBHIconManager *)self _noteUserIsInteractingWithIcons];
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self willOpenFolderController:openCopy];
  }
}

- (void)folderControllerWillClose:(id)close
{
  closeCopy = close;
  [(SBHIconManager *)self _noteUserIsInteractingWithIcons];
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self willCloseFolderController:closeCopy];
  }
}

- (id)folderControllerWantsToHideStatusBar:(id)bar animated:(BOOL)animated
{
  animatedCopy = animated;
  barCopy = bar;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [delegate iconManager:self wantsToHideStatusBarForFolderController:barCopy animated:animatedCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)fakeStatusBarForFolderController:(id)controller
{
  controllerCopy = controller;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate iconManager:self fakeStatusBarForFolderController:controllerCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)statusBarStyleRequestForFolderController:(id)controller
{
  controllerCopy = controller;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate iconManager:self statusBarStyleRequestForFolderController:controllerCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)folderController:(id)controller willRemoveFakeStatusBar:(id)bar
{
  controllerCopy = controller;
  barCopy = bar;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self willRemoveFakeStatusBar:barCopy forFolderController:controllerCopy];
  }
}

- (UIEdgeInsets)statusBarEdgeInsetsForFolderController:(id)controller
{
  controllerCopy = controller;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self statusBarEdgeInsetsForFolderController:controllerCopy];
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

- (void)folderController:(id)controller willUseIconTransitionAnimator:(id)animator forOperation:(int64_t)operation onViewController:(id)viewController animated:(BOOL)animated
{
  animatorCopy = animator;
  [animatorCopy setDelegate:self];
  [(SBHIconManager *)self setCurrentTransitionAnimator:animatorCopy];
}

- (void)rootFolderController:(id)controller wantsToAdjustLeadingCustomContentForEdgeBounceForScrollOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self wantsToAdjustLeadingCustomContentForEdgeBounceForScrollOffset:{x, y}];
  }
}

- (double)distanceToTopOfSpotlightIconsForRootFolderController:(id)controller
{
  delegate = [(SBHIconManager *)self delegate];
  v5 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [delegate distanceToTopOfSpotlightIconsForIconManager:self];
    v5 = v6;
  }

  return v5;
}

- (double)maxExternalDockHeightForRootFolderController:(id)controller
{
  floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
  [floatingDockViewController maximumContentHeight];
  v5 = v4;

  return v5;
}

- (double)externalDockHeightForRootFolderController:(id)controller
{
  floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
  [floatingDockViewController contentHeight];
  v5 = v4;

  return v5;
}

- (double)preferredExternalDockVerticalMarginForRootFolderController:(id)controller
{
  floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
  [floatingDockViewController preferredVerticalMargin];
  v5 = v4;

  return v5;
}

- (void)rootFolderController:(id)controller setSuppressesEditingStateForExternalDockListViews:(BOOL)views
{
  viewsCopy = views;
  floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
  [floatingDockViewController setSuppressesEditingStateForListViews:viewsCopy];
}

- (id)backgroundViewForDockForRootFolderController:(id)controller
{
  controllerCopy = controller;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate iconManager:self backgroundViewForDockForRootFolderController:controllerCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)backgroundViewForEditingDoneButtonForRootFolderController:(id)controller
{
  controllerCopy = controller;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate iconManager:self backgroundViewForEditingDoneButtonForRootFolderController:controllerCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)rootFolderControllerCanUseSeparateWindowForRotation:(id)rotation
{
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate iconManagerCanUseSeparateWindowForRotation:self];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)rootFolderController:(id)controller statusBarInsetsDidChange:(UIEdgeInsets)change
{
  right = change.right;
  bottom = change.bottom;
  left = change.left;
  top = change.top;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self statusBarInsetsDidChange:{top, left, bottom, right}];
  }
}

- (void)rootFolderController:(id)controller willUseTransitionContext:(id)context toTransitionToState:(int64_t)state
{
  controllerCopy = controller;
  contextCopy = context;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self rootFolderController:controllerCopy willUseTransitionContext:contextCopy toTransitionToState:state];
  }
}

- (void)rootFolderController:(id)controller willUsePropertyAnimator:(id)animator toTransitionToState:(int64_t)state
{
  controllerCopy = controller;
  animatorCopy = animator;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self rootFolderController:controllerCopy willUsePropertyAnimator:animatorCopy toTransitionToState:state];
  }
}

- (void)rootFolderController:(id)controller didOverscrollOnFirstPageByAmount:(double)amount
{
  controllerCopy = controller;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self rootFolderController:controllerCopy didOverscrollOnFirstPageByAmount:amount];
  }
}

- (void)rootFolderController:(id)controller didEndOverscrollOnFirstPageWithVelocity:(double)velocity translation:(double)translation
{
  controllerCopy = controller;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self rootFolderController:controllerCopy didEndOverscrollOnFirstPageWithVelocity:velocity translation:translation];
  }
}

- (void)rootFolderController:(id)controller didOverscrollOnLastPageByAmount:(double)amount
{
  controllerCopy = controller;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self rootFolderController:controllerCopy didOverscrollOnLastPageByAmount:amount];
  }
}

- (void)rootFolderController:(id)controller didEndOverscrollOnLastPageWithVelocity:(double)velocity translation:(double)translation
{
  controllerCopy = controller;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self rootFolderController:controllerCopy didEndOverscrollOnLastPageWithVelocity:velocity translation:translation];
  }
}

- (void)rootFolderControllerViewWillAppear:(id)appear
{
  usageMonitor = [(SBHIconManager *)self usageMonitor];
  [usageMonitor noteIconManagerRootFolderControllerViewWillAppear];
}

- (void)rootFolderControllerViewDidDisappear:(id)disappear
{
  usageMonitor = [(SBHIconManager *)self usageMonitor];
  [usageMonitor noteIconManagerRootFolderControllerViewDidDisappear];
}

- (void)rootFolderController:(id)controller viewDidTransitionToSize:(CGSize)size
{
  v4 = [(SBHIconManager *)self iconShareSheetManager:controller];
  [v4 showIconShareSheetsIfAnyWereHiddenForRotationAnimation];
}

- (void)rootFolderControllerWantsHomeScreenWallpaperViewControllerPresented:(id)presented
{
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManagerWantsHomeScreenWallpaperEditorViewControllerPresented:self];
  }
}

- (void)iconSizeButtonTriggered
{
  shouldUseLargeIcons = [(SBHIconStyleLabelHidingView *)self->_labelHidingView shouldUseLargeIcons];

  [(SBHIconManager *)self _updateShouldUseHomeScreenLargeIconSize:shouldUseLargeIcons];
}

- (void)floatingDockViewController:(id)controller didChangeContentHeight:(double)height animated:(BOOL)animated
{
  v5 = [(SBHIconManager *)self rootViewController:controller];
  contentView = [v5 contentView];

  [contentView layoutIfNeeded];
}

- (void)floatingDockViewController:(id)controller willOpenFolderController:(id)folderController
{
  v5 = [(SBHIconManager *)self rootFolderController:controller];
  folderView = [v5 folderView];
  [folderView setSuppressesEditingStateForListViews:1];
}

- (void)floatingDockViewController:(id)controller willCloseFolderController:(id)folderController
{
  v5 = [(SBHIconManager *)self rootFolderController:controller];
  folderView = [v5 folderView];
  [folderView setSuppressesEditingStateForListViews:0];
}

- (void)floatingDockViewController:(id)controller wantsToBeginEditingAtScreenLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  controllerCopy = controller;
  iconEditingFeedbackBehavior = [(SBHIconManager *)self iconEditingFeedbackBehavior];
  view = [iconEditingFeedbackBehavior view];
  _screen = [controllerCopy _screen];

  coordinateSpace = [_screen coordinateSpace];
  coordinateSpace2 = [view coordinateSpace];
  [coordinateSpace convertPoint:coordinateSpace2 toCoordinateSpace:{x, y}];
  v13 = v12;
  v15 = v14;

  [(SBHIconManager *)self setEditing:1 withFeedbackBehavior:iconEditingFeedbackBehavior location:v13, v15];
}

- (id)_fetchCurrentStyleConfiguration
{
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate iconStylePickerConfigurationForIconManager:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateStyleConfiguration:(id)configuration
{
  configurationCopy = configuration;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate updateStyleConfiguration:configurationCopy forIconManager:self];
  }
}

- (void)_toggleHomeScreenIconSize:(id)size
{
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManagerWantsIconSizeToggled:self];
  }

  _shouldUseHomeScreenLargeIconSize = [(SBHIconManager *)self _shouldUseHomeScreenLargeIconSize];
  customView = [(UIBarButtonItem *)self->_iconSizeBarButtonItem customView];
  [customView setSelected:_shouldUseHomeScreenLargeIconSize animated:1];
  [(SBHIconManager *)self _precacheLabelsForRootIcons:_shouldUseHomeScreenLargeIconSize ^ 1 reason:@"home screen large icon size toggled"];
}

- (void)_updateShouldUseHomeScreenLargeIconSize:(BOOL)size
{
  if ([(SBHIconManager *)self _shouldUseHomeScreenLargeIconSize]!= size)
  {
    delegate = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate iconManagerWantsIconSizeToggled:self];
    }

    customView = [(UIBarButtonItem *)self->_iconSizeBarButtonItem customView];
    [customView setSelected:-[SBHIconManager _shouldUseHomeScreenLargeIconSize](self animated:{"_shouldUseHomeScreenLargeIconSize"), 1}];
    [(SBHIconManager *)self _precacheLabelsForRootIcons:1 reason:@"home screen large icon size toggled"];
  }
}

- (BOOL)_shouldUseHomeScreenLargeIconSize
{
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate shouldUseHomeScreenLargeIconSizeForIconManager:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)toggleHomeScreenWallpaperDim:(id)dim
{
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManagerToggleHomeScreenWallpaperDimming:self];
  }

  customView = [(UIBarButtonItem *)self->_dimBarButtonItem customView];
  [customView setSelected:-[SBHIconManager currentHomeScreenWallpaperDimState](self animated:{"currentHomeScreenWallpaperDimState"), 1}];
}

- (BOOL)currentHomeScreenWallpaperDimState
{
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate isHomeScreenWallpaperDimmedForIconManager:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_engageWallpaperTintColorDropper:(id)dropper
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
    rootViewController = [(SBHIconManager *)self rootViewController];
    currentStylePickerViewController = [(SBHIconManager *)self currentStylePickerViewController];
    navigationController = [currentStylePickerViewController navigationController];
    sheetPresentationController = [navigationController sheetPresentationController];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __51__SBHIconManager__engageWallpaperTintColorDropper___block_invoke;
    v21[3] = &unk_1E8088F18;
    v10 = sheetPresentationController;
    v22 = v10;
    v5 = rootViewController;
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
    selfCopy = self;
    v20 = currentStylePickerViewController;
    v15 = currentStylePickerViewController;
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
    rootViewController = [(SBHIconManager *)self rootViewController];
    currentStylePickerViewController = [(SBHIconManager *)self currentStylePickerViewController];
    navigationController = [currentStylePickerViewController navigationController];
    sheetPresentationController = [navigationController sheetPresentationController];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__SBHIconManager__invalidateWallpaperTintColorDropper__block_invoke;
    aBlock[3] = &unk_1E8088C90;
    v13 = rootViewController;
    v8 = rootViewController;
    v9 = _Block_copy(aBlock);
    v10 = v9;
    if (sheetPresentationController)
    {
      [sheetPresentationController animateChanges:v9];
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
    currentStylePickerViewController = SBLogIconStylePicker();
    if (os_log_type_enabled(currentStylePickerViewController, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BEB18000, currentStylePickerViewController, OS_LOG_TYPE_DEFAULT, "Eyedropper is not active, bailing", buf, 2u);
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

- (void)rootFolderController:(id)controller willPresentPageManagementWithLayoutManager:(id)manager animator:(id)animator context:(id)context
{
  managerCopy = manager;
  animatorCopy = animator;
  contextCopy = context;
  iconDragManager = [(SBHIconManager *)self iconDragManager];
  [iconDragManager cancelAllDrags];

  [(SBHIconManager *)self _discardEndEditingTimerAndDontResetUntilReasonIsRemoved:@"FolderPageManagement"];
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    focusModeManager = [(SBHIconManager *)self focusModeManager];
    activeFocusMode = [focusModeManager activeFocusMode];
    [managerCopy setActiveFocusMode:activeFocusMode];
    [delegate iconManager:self willPresentPageManagementWithLayoutManager:managerCopy animator:animatorCopy context:contextCopy];
  }
}

- (void)rootFolderController:(id)controller willDismissPageManagementUsingAnimator:(id)animator context:(id)context
{
  animatorCopy = animator;
  contextCopy = context;
  iconDragManager = [(SBHIconManager *)self iconDragManager];
  [iconDragManager cancelAllDrags];

  [(SBHIconManager *)self _removeReasonToNotResetEndEditingTimer:@"FolderPageManagement"];
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self willDismissPageManagementUsingAnimator:animatorCopy context:contextCopy];
  }
}

- (void)rootFolderController:(id)controller didDismissPageManagementWithLayoutManager:(id)manager context:(id)context
{
  managerCopy = manager;
  contextCopy = context;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self didDismissPageManagementWithLayoutManager:managerCopy context:contextCopy];
  }
}

- (id)rootFolderController:(id)controller draggedIconForStackConfigurationInteractionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  iconDragManager = [(SBHIconManager *)self iconDragManager];
  v7 = [iconDragManager draggedIconForIdentifier:identifierCopy];

  return v7;
}

- (void)rootFolderController:(id)controller handleInsertionForWidgetIcon:(id)icon withReferenceIconView:(id)view fromPresenter:(id)presenter dismissViewControllerHandler:(id)handler
{
  controllerCopy = controller;
  iconCopy = icon;
  viewCopy = view;
  presenterCopy = presenter;
  handlerCopy = handler;
  v54 = controllerCopy;
  folder = [controllerCopy folder];
  todayList = [folder todayList];
  v18 = objc_opt_class();
  v19 = presenterCopy;
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

  _effectiveTodayViewController = [(SBHIconManager *)self _effectiveTodayViewController];
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
  v24 = iconCopy;
  v67 = v24;
  v25 = todayList;
  v68 = v25;
  selfCopy = self;
  v26 = v21;
  v70 = v26;
  v52 = viewCopy;
  v71 = v52;
  v51 = v23;
  v73 = v51;
  v27 = handlerCopy;
  v74 = v27;
  v28 = _effectiveTodayViewController;
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
  selfCopy2 = self;
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
    iconListView = [v26 iconListView];
    model = [iconListView model];

    (*(v34 + 2))(v34, model);
  }

  else
  {
    currentIconListModel = [v54 currentIconListModel];
    if ([currentIconListModel isAllowedToContainIcon:v32])
    {
      gridCellInfoOptions = [(SBHIconManager *)self gridCellInfoOptions];
      v39 = [currentIconListModel bestGridCellIndexForInsertingIcon:v32 gridCellInfoOptions:?];
      v50 = currentIconListModel;
      if (v39 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v40 = [folder addIcon:v32 toList:currentIconListModel options:10];
      }

      else
      {
        v48 = v39;
        v47 = [SBHIconGridPath alloc];
        uniqueIdentifier = [currentIconListModel uniqueIdentifier];
        v41 = [(SBHIconGridPath *)v47 initWithFolderIdentifier:0 listIdentifier:uniqueIdentifier gridCellIndex:v48 gridCellInfoOptions:gridCellInfoOptions];

        v42 = [folder insertIcon:v32 atGridPath:v41 options:16777218];
      }

      [v54 setCurrentPageIndexToListDirectlyContainingIcon:v32 animated:0];
      currentIconListView = [v54 currentIconListView];
      v44 = [(SBHIconManager *)self widgetInsertionRippleIconAnimatorForIcon:v32 iconListView:0 withReferenceIconView:v52];
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __133__SBHIconManager_rootFolderController_handleInsertionForWidgetIcon_withReferenceIconView_fromPresenter_dismissViewControllerHandler___block_invoke_9;
      v55[3] = &unk_1E80905F8;
      v58 = v51;
      v56 = v32;
      v57 = currentIconListView;
      v45 = currentIconListView;
      [v44 animateWithCompletion:v55];
      v33[2](v33);

      currentIconListModel = v50;
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

- (void)rootFolderController:(id)controller noteDragItemWasConsumedExternallyForDropSession:(id)session
{
  sessionCopy = session;
  iconDragManager = [(SBHIconManager *)self iconDragManager];
  [iconDragManager noteDragItemWasConsumedExternallyForDropSession:sessionCopy];
}

- (id)rootFolderController:(id)controller dragPreviewForIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate iconManager:self dragPreviewForIconView:viewCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)windowForStackConfigurationIconDragPreviewsForRootFolderController:(id)controller forWindowScene:(id)scene
{
  sceneCopy = scene;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate windowForIconDragPreviewsForIconManager:self forWindowScene:sceneCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)rootFolderController:(id)controller allowsRemovalOfIconDataSourceWithinStack:(id)stack
{
  stackCopy = stack;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate iconManager:self allowsRemovalOfIconDataSourceWithinStack:stackCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)rootFolderController:(id)controller willPresentWidgetEditingViewController:(id)viewController
{
  v6 = [(SBHIconManager *)self delegate:controller];
  if (objc_opt_respondsToSelector())
  {
    [v6 iconManagerWillPresentWidgetEditing:self];
  }

  [(SBHIconManager *)self _discardEndEditingTimerAndDontResetUntilReasonIsRemoved:@"WIDGET_EDITING_PRESENTED"];
  _effectiveWidgetMultiplexingManager = [(SBHIconManager *)self _effectiveWidgetMultiplexingManager];
  [_effectiveWidgetMultiplexingManager discardCachedRecentViewControllers];
}

- (void)rootFolderController:(id)controller didPresentWidgetEditingViewController:(id)viewController
{
  viewControllerCopy = viewController;
  _effectiveTodayViewController = [(SBHIconManager *)self _effectiveTodayViewController];
  if (objc_opt_respondsToSelector())
  {
    v6 = [_effectiveTodayViewController keepIconImageViewControllersStaticForReason:@"WIDGET_EDITING_PRESENTED"];
    if (v6)
    {
      userInfo = [viewControllerCopy userInfo];
      [userInfo setObject:v6 forKey:@"WIDGET_EDITING_PRESENTED"];
    }
  }
}

- (void)rootFolderController:(id)controller willDismissWidgetEditingViewController:(id)viewController
{
  viewControllerCopy = viewController;
  userInfo = [viewControllerCopy userInfo];
  v7 = [userInfo objectForKey:@"WIDGET_EDITING_PRESENTED"];

  [v7 invalidate];
  userInfo2 = [viewControllerCopy userInfo];

  [userInfo2 removeObjectForKey:@"WIDGET_EDITING_PRESENTED"];
}

- (void)rootFolderController:(id)controller didDismissWidgetEditingViewController:(id)viewController
{
  v5 = [(SBHIconManager *)self delegate:controller];
  if (objc_opt_respondsToSelector())
  {
    [v5 iconManagerDidDismissWidgetEditing:self];
  }

  [(SBHIconManager *)self _removeReasonToNotResetEndEditingTimer:@"WIDGET_EDITING_PRESENTED"];
}

- (void)rootFolderController:(id)controller prepareAddSheetViewController:(id)viewController
{
  viewControllerCopy = viewController;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self prepareAddSheetViewController:viewControllerCopy];
  }
}

- (void)rootFolderController:(id)controller willPresentAddSheetViewController:(id)viewController
{
  v4 = [(SBHIconManager *)self usageMonitor:controller];
  [v4 noteAddWidgetSheetWillPresent];
}

- (unint64_t)addWidgetSheetStyleForRootFolderController:(id)controller
{
  addWidgetSheetConfigurationManager = [(SBHIconManager *)self addWidgetSheetConfigurationManager];
  addWidgetSheetStyle = [addWidgetSheetConfigurationManager addWidgetSheetStyle];

  return addWidgetSheetStyle;
}

- (void)rootFolderControllerDidAcceptWidgetIntroduction:(id)introduction
{
  usageMonitor = [(SBHIconManager *)self usageMonitor];
  defaultFirstPageWidgetDescriptors = [(SBHIconManager *)self defaultFirstPageWidgetDescriptors];
  [usageMonitor noteWidgetDiscoverabilityDidAcceptSuggestion:defaultFirstPageWidgetDescriptors];
}

- (void)rootFolderControllerDidUndoWidgetIntroduction:(id)introduction
{
  [(SBHIconManager *)self undoDefaultWidgets:0];
  usageMonitor = [(SBHIconManager *)self usageMonitor];
  defaultFirstPageWidgetDescriptors = [(SBHIconManager *)self defaultFirstPageWidgetDescriptors];
  [usageMonitor noteWidgetDiscoverabilityDidRejectSuggestion:defaultFirstPageWidgetDescriptors];
}

- (void)rootFolderControllerDidEditWidgetIntroduction:(id)introduction
{
  usageMonitor = [(SBHIconManager *)self usageMonitor];
  [usageMonitor noteWidgetDiscoverabilityDidEnterEditingMode];
}

- (BOOL)rootFolderControllerDidSetPrototypeSettingEditAsUndo:(id)undo
{
  if ([(SBHIconManager *)self prototypeSettingEditButtonAsUndo])
  {
    return 1;
  }

  if (!__sb__runningInSpringBoard())
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v3 = [currentDevice userInterfaceIdiom] == 0;

    return v3;
  }

  return !SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1;
}

- (id)nestingViewController:(id)controller interactionControllerForAnimationController:(id)animationController
{
  currentTransitionAnimator = self->_currentTransitionAnimator;
  if (currentTransitionAnimator != animationController || [(SBHomeScreenIconTransitionAnimator *)currentTransitionAnimator operation]!= 1)
  {
    v13 = 0;
    goto LABEL_9;
  }

  currentInteractionContext = [(SBHIconManager *)self currentInteractionContext];
  interactionProgress = [currentInteractionContext interactionProgress];
  if (interactionProgress)
  {
    v8 = interactionProgress;
LABEL_5:
    [(UIInteractionProgress *)v8 percentComplete];
    if (BSFloatLessThanFloat())
    {
      v9 = +[SBHHomeScreenDomain rootSettings];
      iconAnimationSettings = [v9 iconAnimationSettings];

      childViewController = [(SBHomeScreenIconTransitionAnimator *)self->_currentTransitionAnimator childViewController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [iconAnimationSettings maxFolderCloseHintProgress];
      }

      else
      {
        [iconAnimationSettings maxAppSuspendHintProgress];
      }

      v20 = v12;

      v13 = [[SBHintInteractor alloc] initWithInteractionProgress:v8 maxHintProgress:v20];
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  gestureRecognizer = [currentInteractionContext gestureRecognizer];
  iconAnimationSettings = gestureRecognizer;
  if (!gestureRecognizer || ([gestureRecognizer state] - 1) > 1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = 0;
    v13 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v16 = +[SBHHomeScreenDomain rootSettings];
  folderSettings = [v16 folderSettings];
  [folderSettings minPinchScale];
  v19 = v18;

  v8 = [[SBPinchInteractionProgress alloc] initWithPinchGesture:iconAnimationSettings minPinchScale:v19];
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

- (void)nestingViewController:(id)controller willPerformOperation:(int64_t)operation onViewController:(id)viewController withTransitionCoordinator:(id)coordinator
{
  v55 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  viewControllerCopy = viewController;
  coordinatorCopy = coordinator;
  v13 = viewControllerCopy;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v15 = 0;
  v16 = isKindOfClass & 1;
  v17 = operation == 1;
  if (operation != 1 && (isKindOfClass & 1) != 0)
  {
    rootFolder = [(SBHIconManager *)self rootFolder];
    folder = [v13 folder];
    v15 = [rootFolder indexPathForFolder:folder];
    if (v15)
    {
      v39 = folder;
      v41 = controllerCopy;
      rootViewController = [(SBHIconManager *)self rootViewController];
      currentPageIndex = [rootViewController currentPageIndex];

      rootFolderController = [(SBHIconManager *)self rootFolderController];
      v23 = [rootFolderController iconListModelIndexForPageIndex:currentPageIndex];

      if ([rootFolder isValidListIndex:v23])
      {
        v24 = [rootFolder listAtIndex:v23];
        if (v24)
        {
          v25 = [rootFolder indexPathForFirstFreeSlotStartingAtList:v24 avoidingFirstList:0];
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

      iconDragManager = [(SBHIconManager *)self iconDragManager];
      [iconDragManager setIndexPath:v25 whenRevertingIconsWithPathPrefix:v15];

      v27 = v15;
      controllerCopy = v41;
      v17 = operation == 1;
      folder = v39;
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
  [coordinatorCopy animateAlongsideTransition:v52 completion:v47];
  if ([coordinatorCopy isAnimated])
  {
    [coordinatorCopy animateAlongsideTransition:&__block_literal_global_1011 completion:0];
  }

  if (v16)
  {
    v40 = v30;
    v42 = controllerCopy;
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

          [*(*(&v43 + 1) + 8 * i) iconManager:self willPerformTransitionWithFolder:v32 presenting:operation == 1 withTransitionCoordinator:coordinatorCopy];
        }

        v35 = [v33 countByEnumeratingWithState:&v43 objects:v54 count:16];
      }

      while (v35);
    }

    v30 = v40;
    controllerCopy = v42;
  }

  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconManager:self nestingViewController:controllerCopy willPerformOperation:operation onViewController:v29 withTransitionCoordinator:coordinatorCopy];
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

- (id)animator:(id)animator animationSettingsForOperation:(unint64_t)operation childViewController:(id)controller
{
  animatorCopy = animator;
  controllerCopy = controller;
  iconAnimator = [animatorCopy iconAnimator];
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = [delegate iconManager:self animator:animatorCopy animationSettingsForOperation:operation childViewController:controllerCopy];
    goto LABEL_21;
  }

  v13 = +[SBHHomeScreenDomain rootSettings];
  iconAnimationSettings = [v13 iconAnimationSettings];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    reducedMotionSettings = [iconAnimationSettings reducedMotionSettings];
LABEL_19:
    v12 = reducedMotionSettings;
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (operation)
    {
      [iconAnimationSettings folderCloseSettings];
    }

    else
    {
      [iconAnimationSettings folderOpenSettings];
    }

    reducedMotionSettings = LABEL_14:;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (operation)
    {
      [iconAnimationSettings crossfadeSuspendSettings];
    }

    else
    {
      [iconAnimationSettings crossfadeLaunchSettings];
    }

    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (operation)
    {
      [iconAnimationSettings centerSuspendSettings];
    }

    else
    {
      [iconAnimationSettings centerLaunchSettings];
    }

    goto LABEL_14;
  }

  v12 = 0;
LABEL_20:

LABEL_21:

  return v12;
}

- (unint64_t)iconModel:(id)model maxRowCountForListInRootFolderWithInterfaceOrientation:(int64_t)orientation
{
  listLayoutProvider = [(SBHIconManager *)self listLayoutProvider];
  v6 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationRoot"];
  v7 = [v6 numberOfRowsForOrientation:orientation];

  return v7;
}

- (unint64_t)iconModel:(id)model maxColumnCountForListInRootFolderWithInterfaceOrientation:(int64_t)orientation
{
  listLayoutProvider = [(SBHIconManager *)self listLayoutProvider];
  v6 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationRoot"];
  v7 = [v6 numberOfColumnsForOrientation:orientation];

  return v7;
}

- (id)gridSizeClassSizesForIconModel:(id)model
{
  listLayoutProvider = [(SBHIconManager *)self listLayoutProvider];
  v4 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationRoot"];

  v5 = SBHIconListLayoutIconGridSizeClassSizes(v4, 1);

  return v5;
}

- (id)iconModel:(id)model allowedGridSizeClassesForFolderClass:(Class)class
{
  iconLocation = [(objc_class *)[(SBHIconManager *)self controllerClassForFolderClass:class] iconLocation];
  listLayoutProvider = [(SBHIconManager *)self listLayoutProvider];
  v7 = [listLayoutProvider layoutForIconLocation:iconLocation];

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

- (id)listRotatedLayoutClusterGridSizeClassForIconModel:(id)model
{
  listLayoutProvider = [(SBHIconManager *)self listLayoutProvider];
  v4 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationRoot"];

  v5 = SBHIconListLayoutRotatedLayoutGridCellClusterSizeClass(v4);

  return v5;
}

- (id)iconModel:(id)model customInsertionIndexPathForIcon:(id)icon inRootFolder:(id)folder
{
  modelCopy = model;
  iconCopy = icon;
  folderCopy = folder;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__23;
  v41 = __Block_byref_object_dispose__23;
  v42 = 0;
  v11 = [(SBIconPreviousLocationTracker *)self->_previousIconLocationTracker previousLocationInfoForIcon:iconCopy];
  v12 = v11;
  if (v11)
  {
    folder = [v11 folder];
    folderName = [v12 folderName];
    v15 = folderName;
    if (folder)
    {
      v16 = [folder indexPathForFirstFreeSlotAvoidingFirstList:0];
      v17 = v38[5];
      v38[5] = v16;
    }

    else if (folderName)
    {
      v33 = 0;
      v34 = &v33;
      v35 = 0x2020000000;
      v36 = 0;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __73__SBHIconManager_iconModel_customInsertionIndexPathForIcon_inRootFolder___block_invoke;
      v29[3] = &unk_1E8090758;
      v18 = folderName;
      v30 = v18;
      v31 = &v37;
      v32 = &v33;
      [folderCopy enumerateAllIconsUsingBlock:v29];
      if ((v34[3] & 1) == 0)
      {
        v19 = [modelCopy makeFolderWithDisplayName:v18];
        v20 = [[SBFolderIcon alloc] initWithFolder:v19];
        v21 = [folderCopy addIcon:v20];
        iconModel = [(SBHIconManager *)self iconModel];
        [iconModel addIcon:v20];

        v23 = [folderCopy indexPathForIcon:v20];
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

- (id)iconModel:(id)model customInsertionGridPathForIcon:(id)icon inRootFolder:(id)folder
{
  iconCopy = icon;
  folderCopy = folder;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [delegate iconManager:self customInsertionGridPathForIcon:iconCopy inRootFolder:folderCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)canSaveIconState:(id)state
{
  if (self->_iconModel != state)
  {
    return 0;
  }

  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [delegate iconManagerCanSaveIconState:self];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)didSaveIconState:(id)state
{
  if (self->_iconModel == state)
  {
    delegate = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate iconManagerDidSaveIconState:self];
    }
  }
}

- (void)didDeleteIconState:(id)state
{
  if (self->_iconModel == state && ([state isLayingOut] & 1) == 0)
  {

    [(SBHIconManager *)self noteIconStateChangedExternally];
  }
}

- (id)defaultIconStateForIconModel:(id)model
{
  if (self->_iconModel == model)
  {
    delegate = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v3 = [delegate defaultIconStateForIconManager:self];
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

- (BOOL)iconModel:(id)model shouldAvoidPlacingIconOnFirstPage:(id)page
{
  pageCopy = page;
  if (self->_iconModel == model)
  {
    delegate = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v7 = [delegate iconManager:self shouldAvoidPlacingIconOnFirstPage:pageCopy];
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

- (BOOL)iconModel:(id)model shouldPlaceIconOnIgnoredList:(id)list
{
  listCopy = list;
  if (self->_iconModel == model && ![(NSCountedSet *)self->_reasonsToIgnoreUserPreferenceForAddingNewIconsToHomeScreen count])
  {
    delegate = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v7 = [delegate iconManager:self shouldPlaceIconOnIgnoredList:listCopy];
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

- (void)iconModel:(id)model launchIcon:(id)icon fromLocation:(id)location context:(id)context
{
  v26 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  iconCopy = icon;
  locationCopy = location;
  contextCopy = context;
  if (self->_iconModel == modelCopy)
  {
    if ([iconCopy isFolderIcon])
    {
      folder = [iconCopy folder];
      rootFolderController = [(SBHIconManager *)self rootFolderController];
      v17 = [rootFolderController folderControllerForFolder:folder];
      v18 = SBLogIcon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = iconCopy;
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

      [(SBHIconManager *)self pushExpandedIcon:iconCopy location:locationCopy context:contextCopy animated:1 completionHandler:0];
    }

    else
    {
      folder = [contextCopy iconView];
      if (!folder)
      {
        goto LABEL_15;
      }

      rootFolderController = [(SBHIconManager *)self launchActionsForIconView:folder];
      [(SBHIconManager *)self launchFromIconView:folder withActions:rootFolderController modifierFlags:0];
    }

    goto LABEL_15;
  }

  folder = SBLogIcon();
  if (os_log_type_enabled(folder, OS_LOG_TYPE_DEFAULT))
  {
    iconModel = self->_iconModel;
    v20 = 138412802;
    v21 = iconCopy;
    v22 = 2048;
    v23 = modelCopy;
    v24 = 2048;
    v25 = iconModel;
    _os_log_impl(&dword_1BEB18000, folder, OS_LOG_TYPE_DEFAULT, "SBHIconManager asked to launch an icon (%@) from an unknown icon model (model: %p, ours: %p", &v20, 0x20u);
  }

LABEL_15:
}

- (void)iconModel:(id)model didAddIcon:(id)icon
{
  v18 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  if ([iconCopy isLeafIcon])
  {
    [iconCopy addObserver:self];
    if ([iconCopy isWidgetIcon])
    {
      v6 = iconCopy;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      widgets = [v6 widgets];
      v8 = [widgets countByEnumeratingWithState:&v13 objects:v17 count:16];
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
              objc_enumerationMutation(widgets);
            }

            [(SBHIconManager *)self _loadAndSaveDefaultIntentIfNecessaryForWidget:*(*(&v13 + 1) + 8 * v11++) ofIcon:v6 viewController:0];
          }

          while (v9 != v11);
          v9 = [widgets countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v9);
      }

      delegate = [(SBHIconManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate iconManagerDidAddOrRemoveWidgetIcon:self];
      }
    }
  }
}

- (void)iconModel:(id)model willRemoveIcon:(id)icon
{
  v38 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  v6 = [iconCopy displayNameForLocation:@"SBIconLocationRoot"];
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
  v9 = iconCopy;
  v35 = v9;
  [(SBHIconManager *)self enumerateAllIconImageCachesUsingBlock:v34];
  if ([v9 isLeafIcon])
  {
    [v9 removeObserver:self];
    v10 = v9;
    iconDataSources = [v10 iconDataSources];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v12 = [iconDataSources countByEnumeratingWithState:&v30 objects:v37 count:16];
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
            objc_enumerationMutation(iconDataSources);
          }

          [(SBHIconManager *)self _handleRemovedDataSource:*(*(&v30 + 1) + 8 * v15++) ofIcon:v10];
        }

        while (v13 != v15);
        v13 = [iconDataSources countByEnumeratingWithState:&v30 objects:v37 count:16];
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
    iconDataSources2 = [v9 iconDataSources];
    v17 = [iconDataSources2 countByEnumeratingWithState:&v26 objects:v36 count:16];
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
            objc_enumerationMutation(iconDataSources2);
          }

          v21 = *(*(&v26 + 1) + 8 * v20);
          if (objc_opt_respondsToSelector())
          {
            uniqueIdentifier = [v21 uniqueIdentifier];
            _effectiveWidgetMultiplexingManager = [(SBHIconManager *)self _effectiveWidgetMultiplexingManager];
            [_effectiveWidgetMultiplexingManager discardCachedRecentViewControllersForIdentifier:uniqueIdentifier];
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = [iconDataSources2 countByEnumeratingWithState:&v26 objects:v36 count:16];
      }

      while (v18);
    }

    delegate = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate iconManagerDidAddOrRemoveWidgetIcon:self];
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

- (void)_handleRemovedDataSource:(id)source ofIcon:(id)icon
{
  v26 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  iconCopy = icon;
  v8 = SBLogWidgets();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = sourceCopy;
    v24 = 2112;
    v25 = iconCopy;
    _os_log_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_DEFAULT, "handleRemovedDataSource:%@ ofIcon:%@", buf, 0x16u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  widgetIcons = [(SBHIconModel *)self->_iconModel widgetIcons];
  v10 = [widgetIcons countByEnumeratingWithState:&v17 objects:v21 count:16];
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
        objc_enumerationMutation(widgetIcons);
      }

      v14 = *(*(&v17 + 1) + 8 * v13);
      if ([v14 isEqual:iconCopy] & 1) == 0 && (objc_msgSend(v14, "hasIconDataSource:", sourceCopy))
      {
        goto LABEL_21;
      }

      if (v11 == ++v13)
      {
        v11 = [widgetIcons countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  if (([(NSMutableArray *)self->_movedStackConfigDataSources containsObject:sourceCopy]& 1) == 0)
  {
    if (!self->_shouldStashIconsForRelayout && (objc_opt_respondsToSelector() & 1) != 0 && [sourceCopy iconSupportsConfiguration:iconCopy])
    {
      delegate = [(SBHIconManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate iconManager:self didRemoveConfigurableDataSource:sourceCopy ofIcon:iconCopy];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      widgetIcons = [sourceCopy uniqueIdentifier];
      [(NSMutableDictionary *)self->_widgetIntents removeObjectForKey:widgetIcons];
      [(NSMutableDictionary *)self->_archivedWidgetIntents removeObjectForKey:widgetIcons];
      _effectiveWidgetMultiplexingManager = [(SBHIconManager *)self _effectiveWidgetMultiplexingManager];
      [_effectiveWidgetMultiplexingManager discardCachedRecentViewControllersForIdentifier:widgetIcons];

LABEL_21:
    }
  }
}

- (Class)iconModel:(id)model iconClassForApplicationWithBundleIdentifier:(id)identifier proposedClass:(Class)class
{
  identifierCopy = identifier;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    class = [delegate iconManager:self iconClassForApplicationWithBundleIdentifier:identifierCopy proposedClass:class];
  }

  classCopy = class;

  return class;
}

- (id)iconModel:(id)model validatedFileStackIconForFileStackIcon:(id)icon
{
  iconCopy = icon;
  delegate = [(SBHIconManager *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![delegate iconManager:self isFileStackIconValid:iconCopy])
  {
    v7 = 0;
  }

  else
  {
    v7 = iconCopy;
  }

  return v7;
}

- (BOOL)iconModel:(id)model shouldLeaveGapForMissingArchivedIconWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate iconManager:self shouldLeaveGapForMissingArchivedIconWithIdentifier:identifierCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)_iconModelDidLayout:(id)layout
{
  rootFolder = [(SBHIconModel *)self->_iconModel rootFolder];
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

- (void)_iconVisibilityChanged:(id)changed
{
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v8 = [userInfo objectForKey:@"SBIconModelIconsToShowKey"];

  userInfo2 = [changedCopy userInfo];

  v7 = [userInfo2 objectForKey:@"SBIconModelIconsToHideKey"];

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

  iconDragManager = [(SBHIconManager *)self iconDragManager];
  [iconDragManager noteRootFolderDidMutate];
}

- (BOOL)rootFolder:(id)folder canBounceIcon:(id)icon
{
  v4 = [(SBHIconManager *)self iconDragManager:folder];
  isIconDragging = [v4 isIconDragging];

  return isIconDragging;
}

- (id)iconLocationForList:(id)list inFolder:(id)folder ofRootFolder:(id)rootFolder
{
  listCopy = list;
  folderCopy = folder;
  rootFolderCopy = rootFolder;
  rootFolder = [(SBHIconManager *)self rootFolder];
  v12 = @"SBIconLocationNone";
  todayList = [rootFolderCopy todayList];

  if (todayList == listCopy)
  {
    v16 = SBIconLocationTodayView;
  }

  else
  {
    dock = [rootFolderCopy dock];

    if (dock == listCopy)
    {
      isFloatingDockSupported = [(SBHIconManager *)self isFloatingDockSupported];
      v16 = SBIconLocationFloatingDock;
      if (!isFloatingDockSupported)
      {
        v16 = SBIconLocationDock;
      }
    }

    else
    {
      dockUtilities = [rootFolderCopy dockUtilities];

      if (dockUtilities == listCopy)
      {
        v16 = SBIconLocationFloatingDockUtilities;
      }

      else if (folderCopy && ([folderCopy isRootFolder] & 1) == 0)
      {
        v16 = SBIconLocationFolder;
      }

      else
      {
        if (rootFolder != rootFolderCopy)
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

- (BOOL)rootFolder:(id)folder canAddIcon:(id)icon toIconList:(id)list inFolder:(id)inFolder
{
  folderCopy = folder;
  iconCopy = icon;
  listCopy = list;
  inFolderCopy = inFolder;
  rootFolder = [(SBHIconManager *)self rootFolder];

  if (rootFolder == folderCopy)
  {
    v16 = [(SBHIconManager *)self iconLocationForList:listCopy inFolder:inFolderCopy ofRootFolder:folderCopy];
    if (SBIconLocationGroupContainsLocation(@"SBIconLocationGroupFloatingDock", v16) && (-[SBHIconManager floatingDockViewController](self, "floatingDockViewController"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 canAddIcon:iconCopy toIconList:listCopy inFolder:inFolderCopy], v17, !v18))
    {
      v15 = 0;
    }

    else
    {
      listLayoutProvider = [(SBHIconManager *)self listLayoutProvider];
      v20 = [listLayoutProvider layoutForIconLocation:v16];

      gridSizeClass = [iconCopy gridSizeClass];
      v22 = SBHIconListLayoutSupportsIconGridSizeClass(v20, gridSizeClass);

      if (v22)
      {
        delegate = [(SBHIconManager *)self delegate];
        v15 = 0;
        if ((objc_opt_respondsToSelector() & 1) == 0 || [delegate iconManager:self canAddIcon:iconCopy toIconList:listCopy inFolder:inFolderCopy])
        {
          ignoredList = [folderCopy ignoredList];

          if (ignoredList != listCopy || [(SBHIconManager *)self canAddIconToIgnoredList:iconCopy])
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

- (BOOL)rootFolder:(id)folder isGridLayoutValid:(id)valid forIconList:(id)list inFolder:(id)inFolder
{
  folderCopy = folder;
  validCopy = valid;
  listCopy = list;
  v13 = [(SBHIconManager *)self iconLocationForList:listCopy inFolder:inFolder ofRootFolder:folderCopy];
  if (SBIconLocationGroupContainsLocation(@"SBIconLocationGroupRoot", v13))
  {
    listLayoutProvider = [(SBHIconManager *)self listLayoutProvider];
    v15 = [listLayoutProvider layoutForIconLocation:v13];

    allowedGridSizeClasses = [listCopy allowedGridSizeClasses];
    if (SBHIconListLayoutSupportsIconGridSizeClass(v15, @"SBHIconGridSizeClassExtraLarge") && [allowedGridSizeClasses containsGridSizeClass:@"SBHIconGridSizeClassExtraLarge"])
    {
      iconGridSizeClassSizes = [folderCopy iconGridSizeClassSizes];
      v18 = [iconGridSizeClassSizes gridSizeForGridSizeClass:@"SBHIconGridSizeClassExtraLarge"];
      v19 = v18;
      v20 = SBHIconGridSizeGetArea(v18) < 2 || [validCopy countOfIconsOfSize:v19] < 3;
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

- (id)rootFolder:(id)folder shouldBounceIcon:(id)icon afterInsertingIcons:(id)icons forIconList:(id)list inFolder:(id)inFolder
{
  iconCopy = icon;
  iconsCopy = icons;
  listCopy = list;
  v15 = [(SBHIconManager *)self iconLocationForList:listCopy inFolder:inFolder ofRootFolder:folder];
  if (!SBIconLocationGroupContainsLocation(@"SBIconLocationGroupRoot", v15))
  {
    goto LABEL_6;
  }

  v16 = [listCopy directlyContainedIconsPassingTest:&__block_literal_global_1050];
  if ([v16 count] < 3)
  {
LABEL_5:

LABEL_6:
    v18 = iconCopy;
    goto LABEL_7;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __87__SBHIconManager_rootFolder_shouldBounceIcon_afterInsertingIcons_forIconList_inFolder___block_invoke_2;
  v20[3] = &unk_1E808BFD8;
  v21 = iconsCopy;
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

- (void)rootFolder:(id)folder wantsToDoPageHidingEducationWithCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__SBHIconManager_rootFolder_wantsToDoPageHidingEducationWithCompletion___block_invoke;
    v7[3] = &unk_1E808B3C0;
    v7[4] = self;
    v8 = completionCopy;
    [delegate iconManager:self prepareForPageHidingEducationWithCompletionHandler:v7];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
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

- (void)addPageStateObserver:(id)observer
{
  observerCopy = observer;
  pageStateObservers = self->_pageStateObservers;
  v8 = observerCopy;
  if (!pageStateObservers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_pageStateObservers;
    self->_pageStateObservers = weakObjectsHashTable;

    observerCopy = v8;
    pageStateObservers = self->_pageStateObservers;
  }

  [(NSHashTable *)pageStateObservers addObject:observerCopy];
}

- (void)enumeratePageStateObserversUsingBlock:(id)block
{
  v15 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allObjects = [(NSHashTable *)self->_pageStateObservers allObjects];
  v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)rootFolderPageStateProvider:(id)provider willBeginTransitionToState:(int64_t)state animated:(BOOL)animated interactive:(BOOL)interactive
{
  providerCopy = provider;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __94__SBHIconManager_rootFolderPageStateProvider_willBeginTransitionToState_animated_interactive___block_invoke;
  v12[3] = &unk_1E80894B0;
  v13 = providerCopy;
  stateCopy = state;
  animatedCopy = animated;
  interactiveCopy = interactive;
  v11 = providerCopy;
  [(SBHIconManager *)self enumeratePageStateObserversUsingBlock:v12];
  [(SBHIconManager *)self setCanPresentOverscrollLibraryForPageTransition:1];
  [(SBHIconManager *)self setCanDismissOverscrollLibraryForPageTransition:1];
}

- (void)rootFolderPageStateProvider:(id)provider didContinueTransitionToState:(int64_t)state progress:(double)progress
{
  providerCopy = provider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__SBHIconManager_rootFolderPageStateProvider_didContinueTransitionToState_progress___block_invoke;
  v11[3] = &unk_1E8089518;
  v9 = providerCopy;
  v12 = v9;
  stateCopy = state;
  progressCopy = progress;
  [(SBHIconManager *)self enumeratePageStateObserversUsingBlock:v11];
  if (state == 4)
  {
    if (progress > 0.5 || [v9 pageState] == 4)
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

  else if (!state && progress > 0.5 && [(SBHIconManager *)self canDismissOverscrollLibraryForPageTransition])
  {
    [(SBHIconManager *)self _updateOverscrollModalLibraryForScrollToPresented:0];
    v10 = 0;
LABEL_14:
    [(SBHIconManager *)self setCanDismissOverscrollLibraryForPageTransition:v10];
  }
}

- (void)rootFolderPageStateProvider:(id)provider willEndTransitionToState:(int64_t)state successfully:(BOOL)successfully
{
  providerCopy = provider;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__SBHIconManager_rootFolderPageStateProvider_willEndTransitionToState_successfully___block_invoke;
  v10[3] = &unk_1E8089540;
  v11 = providerCopy;
  stateCopy = state;
  successfullyCopy = successfully;
  v9 = providerCopy;
  [(SBHIconManager *)self enumeratePageStateObserversUsingBlock:v10];
}

- (void)rootFolderPageStateProvider:(id)provider didEndTransitionFromState:(int64_t)state toState:(int64_t)toState successfully:(BOOL)successfully
{
  providerCopy = provider;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __93__SBHIconManager_rootFolderPageStateProvider_didEndTransitionFromState_toState_successfully___block_invoke;
  v15 = &unk_1E8089568;
  v11 = providerCopy;
  v16 = v11;
  stateCopy = state;
  toStateCopy = toState;
  successfullyCopy = successfully;
  [(SBHIconManager *)self enumeratePageStateObserversUsingBlock:&v12];
  if ([v11 pageState] == 4)
  {
    [(SBHIconManager *)self _updateOverscrollModalLibraryForScrollToPresented:1];
  }
}

- (void)_updateOverscrollModalLibraryForScrollToPresented:(BOOL)presented
{
  presentedCopy = presented;
  v14[1] = *MEMORY[0x1E69E9840];
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    _currentFolderController = [(SBHIconManager *)self _currentFolderController];
    v7 = [delegate iconManager:self floatingDockViewControllerForViewController:_currentFolderController];
  }

  else
  {
    v7 = 0;
  }

  isPresentingLibrary = [v7 isPresentingLibrary];
  if (presentedCopy)
  {
    if ((isPresentingLibrary & 1) == 0)
    {
      [v7 presentLibraryAnimated:1 completion:0];
      v13 = *MEMORY[0x1E69D4548];
      v14[0] = &unk_1F3DB2918;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v10 = MEMORY[0x1E69D3F90];
      v11 = v9;
      sharedInstance = [v10 sharedInstance];
      [sharedInstance emitEvent:51 withPayload:v11];
    }
  }

  else if (isPresentingLibrary)
  {
    [v7 dismissLibraryAnimated:1 completion:0];
  }
}

- (void)libraryViewControllerDidPresent:(id)present
{
  trailingLibraryViewController = [(SBHIconManager *)self trailingLibraryViewController];
  v5 = trailingLibraryViewController;
  if (trailingLibraryViewController)
  {
    v8 = trailingLibraryViewController;
    trailingLibraryViewController = [(SBHIconManager *)self isShowingOrTransitioningToTrailingCustomView];
    v5 = v8;
    if (trailingLibraryViewController)
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

  MEMORY[0x1EEE66BB8](trailingLibraryViewController, v5);
}

- (void)libraryViewControllerDidDismiss:(id)dismiss
{
  trailingLibraryViewController = [(SBHIconManager *)self trailingLibraryViewController];
  v5 = trailingLibraryViewController;
  if (trailingLibraryViewController)
  {
    v7 = trailingLibraryViewController;
    trailingLibraryViewController = [(SBHIconManager *)self isShowingOrTransitioningToTrailingCustomView];
    v5 = v7;
    if ((trailingLibraryViewController & 1) == 0)
    {
      [(BSInvalidatable *)self->_trailingCustomLibraryPrewarmAssertion invalidate];
      trailingCustomLibraryPrewarmAssertion = self->_trailingCustomLibraryPrewarmAssertion;
      self->_trailingCustomLibraryPrewarmAssertion = 0;

      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](trailingLibraryViewController, v5);
}

- (void)libraryViewController:(id)controller willPresentSearchController:(id)searchController
{
  if ([(SBHIconManager *)self isEditing:controller])
  {
    [(SBHIconManager *)self setEditing:0];
    self->_editingShouldBeReEnabledAfterLibrarySearchControllerIsDismissed = 1;
  }
}

- (void)libraryViewController:(id)controller willDismissSearchController:(id)searchController
{
  if (self->_editingShouldBeReEnabledAfterLibrarySearchControllerIsDismissed && [(SBHIconManager *)self isEditingAllowed:controller])
  {
    [(SBHIconManager *)self setEditing:1];
  }

  self->_editingShouldBeReEnabledAfterLibrarySearchControllerIsDismissed = 0;
}

- (void)libraryViewController:(id)controller willLaunchIcon:(id)icon fromLocation:(id)location
{
  if ([location isEqual:{@"SBIconLocationAppLibrarySearch", icon}])
  {
    self->_editingShouldBeReEnabledAfterLibrarySearchControllerIsDismissed = 0;
  }
}

- (void)libraryViewController:(id)controller didAcceptDrop:(id)drop
{
  dropCopy = drop;
  iconDragManager = [(SBHIconManager *)self iconDragManager];
  [iconDragManager noteDragItemWasConsumedExternallyForDropSession:dropCopy];
}

- (void)todayViewController:(id)controller didChangePresentationProgress:(double)progress newPresentationProgress:(double)presentationProgress fromLeading:(BOOL)leading
{
  controllerCopy = controller;
  if (presentationProgress <= 1.0)
  {
    v9 = controllerCopy;
    [(SBHIconManager *)self _todayViewControllerSuppressesEditingStateForListViews:presentationProgress == 1.0];
    controllerCopy = v9;
  }
}

- (void)_todayViewControllerSuppressesEditingStateForListViews:(BOOL)views
{
  viewsCopy = views;
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  rootFolderView = [rootFolderController rootFolderView];
  [rootFolderView setSuppressesEditingStateForListViews:viewsCopy];

  floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
  [floatingDockViewController setSuppressesEditingStateForListViews:viewsCopy];
}

- (void)addFolderPresentationObserver:(id)observer
{
  observerCopy = observer;
  folderPresentationObservers = self->_folderPresentationObservers;
  v8 = observerCopy;
  if (!folderPresentationObservers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_folderPresentationObservers;
    self->_folderPresentationObservers = weakObjectsHashTable;

    observerCopy = v8;
    folderPresentationObservers = self->_folderPresentationObservers;
  }

  [(NSHashTable *)folderPresentationObservers addObject:observerCopy];
}

- (void)removeFolderPresentationObserver:(id)observer
{
  [(NSHashTable *)self->_folderPresentationObservers removeObject:observer];
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

  delegate = [(SBHIconManager *)self delegate];
  gridSizeClassDomain = [(SBHIconManager *)self gridSizeClassDomain];
  defaultFirstPageWidgetDescriptors = [(SBHIconManager *)self defaultFirstPageWidgetDescriptors];
  if (defaultFirstPageWidgetDescriptors)
  {
    v41 = delegate;
    v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
    defaultFirstPageWidgetSizeClass = [(SBHIconManager *)self defaultFirstPageWidgetSizeClass];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = defaultFirstPageWidgetDescriptors;
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

          v16 = [[SBWidgetIcon alloc] initWithCHSWidgetDescriptors:v9 inDomain:gridSizeClassDomain];
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v48 = v16;
          widgets = [(SBWidgetIcon *)v16 widgets];
          v18 = [widgets countByEnumeratingWithState:&v54 objects:v67 count:16];
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
                  objc_enumerationMutation(widgets);
                }

                v22 = *(*(&v54 + 1) + 8 * j);
                v23 = SBLogWidgetDiscoverabilityMigration();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  containerBundleIdentifier = [v22 containerBundleIdentifier];
                  *buf = 138412290;
                  v69 = containerBundleIdentifier;
                  _os_log_impl(&dword_1BEB18000, v23, OS_LOG_TYPE_DEFAULT, "[ContainerBundleIdentifier debugging] container bundle identifier = %@", buf, 0xCu);
                }
              }

              v19 = [widgets countByEnumeratingWithState:&v54 objects:v67 count:16];
            }

            while (v19);
          }

          [(SBIcon *)v48 setGridSizeClass:defaultFirstPageWidgetSizeClass];
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
    delegate = v41;
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v27 = 0;
      goto LABEL_33;
    }

    v27 = [delegate fallbackDefaultFirstPageWidgetsForIconManager:self];
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
    v31 = [delegate iconManager:self willAddDefaultFirstPageWidgetsBasedOnPinnedWidgets:MEMORY[0x1E695E0F0] suggestionWidgets:v28];
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
  widgetExtensionProvider = [(SBHIconManager *)self widgetExtensionProvider];
  v4 = [[SBHWidget alloc] initWithKind:@"com.apple.tv" extensionBundleIdentifier:@"com.apple.tv.TVWidgetExtension"];
  v5 = [widgetExtensionProvider sbh_descriptorForWidgetIdentifiable:v4];
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
    defaultSecondPageWidgetDescriptors = [(SBHIconManager *)self defaultSecondPageWidgetDescriptors];
    if (defaultSecondPageWidgetDescriptors)
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
      defaultSecondPageWidgetSizeClass = [(SBHIconManager *)self defaultSecondPageWidgetSizeClass];
      gridSizeClassDomain = [(SBHIconManager *)self gridSizeClassDomain];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v17 = defaultSecondPageWidgetDescriptors;
      v8 = defaultSecondPageWidgetDescriptors;
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

            v13 = [[SBWidgetIcon alloc] initWithCHSWidgetDescriptors:*(*(&v18 + 1) + 8 * i) suggestionSource:2 inDomain:gridSizeClassDomain];
            [(SBIcon *)v13 setGridSizeClass:defaultSecondPageWidgetSizeClass];
            [(NSArray *)v3 addObject:v13];
          }

          v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v10);
      }

      defaultSecondPageWidgetDescriptors = v17;
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
  rootFolder = [(SBHIconManager *)self rootFolder];
  lists = [rootFolder lists];

  v4 = [lists countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(lists);
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

      v4 = [lists countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  iconModel = [(SBHIconManager *)self iconModel];
  [iconModel saveIconStateIfNeeded];
  store = [iconModel store];
  v12 = 0;
  v5 = [store loadCurrentIconState:&v12];
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
  iconModel = [(SBHIconManager *)self iconModel];
  [iconModel saveIconStateIfNeeded];
  store = [iconModel store];
  originalIconStateBeforeWidgetDiscoverability = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem originalIconStateBeforeWidgetDiscoverability];
  v14 = 0;
  v6 = [store saveCurrentIconState:originalIconStateBeforeWidgetDiscoverability error:&v14];
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

  [iconModel layout];
LABEL_10:

  return v6;
}

- (BOOL)addDefaultWidgetsToHomeScreen
{
  rootFolder = [(SBHIconManager *)self rootFolder];
  if (rootFolder && ![(SBHIconManager *)self rootFolderContainsWidgets])
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

- (void)displayPronouncedContainerViewVisibility:(BOOL)visibility isVertical:(BOOL)vertical
{
  verticalCopy = vertical;
  visibilityCopy = visibility;
  v24 = *MEMORY[0x1E69E9840];
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [delegate iconManagerShouldShowWidgetIntroductionPopoverForDefaultWidgets:self];
  }

  else
  {
    v8 = 1;
  }

  rootFolderController = [(SBHIconManager *)self rootFolderController];
  canShowWidgetIntroduction = [rootFolderController canShowWidgetIntroduction];

  homeScreenDefaults = [(SBHIconManager *)self homeScreenDefaults];
  shouldShowWidgetIntroductionPopover = [homeScreenDefaults shouldShowWidgetIntroductionPopover];

  v13 = SBLogWidgetDiscoverabilityMigration();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134218752;
    v17 = v8;
    v18 = 2048;
    v19 = canShowWidgetIntroduction;
    v20 = 2048;
    v21 = shouldShowWidgetIntroductionPopover;
    v22 = 2048;
    v23 = visibilityCopy;
    _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_DEFAULT, "IM pronounced container: shouldShowPopover(%ld), rootFolderControllerCanShow(%ld), userDefaultsShouldShow(%ld), force(%ld)", &v16, 0x2Au);
  }

  if ((v8 & canShowWidgetIntroduction & shouldShowWidgetIntroductionPopover & 1) != 0 || visibilityCopy)
  {
    usageMonitor = [(SBHIconManager *)self usageMonitor];
    [usageMonitor noteWidgetDiscoverabilityStarted];

    [(SBHIconManager *)self updatePronouncedContainerViewVisibility:1 vertical:verticalCopy];
    homeScreenDefaults2 = [(SBHIconManager *)self homeScreenDefaults];
    [homeScreenDefaults2 setShouldShowWidgetIntroductionPopover:0];
  }
}

- (BOOL)addDefaultFirstPageWidgetsToHomeScreen:(BOOL)screen
{
  screenCopy = screen;
  v64 = *MEMORY[0x1E69E9840];
  defaultFirstPageSuggestedWidgetIcons = [(SBHIconManager *)self defaultFirstPageSuggestedWidgetIcons];
  v6 = SBLogWidgetDiscoverabilityMigration();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v63 = defaultFirstPageSuggestedWidgetIcons;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "Default first page widget icons %@", buf, 0xCu);
  }

  v7 = [(__CFString *)defaultFirstPageSuggestedWidgetIcons count];
  if (v7)
  {
    rootFolder = [(SBHIconManager *)self rootFolder];
    firstVisibleListIndex = [rootFolder firstVisibleListIndex];

    rootFolder2 = [(SBHIconManager *)self rootFolder];
    v11 = [rootFolder2 listAtIndex:firstVisibleListIndex];

    if ([(__CFString *)defaultFirstPageSuggestedWidgetIcons count]!= 4)
    {
      goto LABEL_30;
    }

    v60 = [(__CFString *)defaultFirstPageSuggestedWidgetIcons objectAtIndex:0];
    gridSizeClass = [v60 gridSizeClass];
    if (gridSizeClass != @"SBHIconGridSizeClassSmall")
    {
      v13 = screenCopy;
      v14 = v11;
      v15 = [(__CFString *)defaultFirstPageSuggestedWidgetIcons objectAtIndex:0];
      gridSizeClass2 = [v15 gridSizeClass];
      if (![gridSizeClass2 isEqualToString:@"SBHIconGridSizeClassSmall"])
      {

        v11 = v14;
        screenCopy = v13;
        goto LABEL_30;
      }

      v49 = v15;
      rootFolder2 = gridSizeClass2;
      v11 = v14;
      screenCopy = v13;
    }

    v59 = [(__CFString *)defaultFirstPageSuggestedWidgetIcons objectAtIndex:1];
    gridSizeClass3 = [v59 gridSizeClass];
    v56 = rootFolder2;
    if (gridSizeClass3 != @"SBHIconGridSizeClassSmall")
    {
      v51 = [(__CFString *)defaultFirstPageSuggestedWidgetIcons objectAtIndex:1];
      gridSizeClass4 = [v51 gridSizeClass];
      if (![gridSizeClass4 isEqualToString:@"SBHIconGridSizeClassSmall"])
      {
        v57 = 0;
        v17 = gridSizeClass3;
        goto LABEL_23;
      }
    }

    v53 = [(__CFString *)defaultFirstPageSuggestedWidgetIcons objectAtIndex:2];
    gridSizeClass5 = [v53 gridSizeClass];
    if (gridSizeClass5 == @"SBHIconGridSizeClassMedium")
    {
      v47 = gridSizeClass;
      v48 = v11;
      v54 = screenCopy;
    }

    else
    {
      v46 = [(__CFString *)defaultFirstPageSuggestedWidgetIcons objectAtIndex:2];
      gridSizeClass6 = [v46 gridSizeClass];
      if (![gridSizeClass6 isEqualToString:@"SBHIconGridSizeClassMedium"])
      {
        v57 = 0;
        v23 = gridSizeClass5;
        goto LABEL_21;
      }

      v47 = gridSizeClass;
      v48 = v11;
      v54 = screenCopy;
    }

    v18 = [(__CFString *)defaultFirstPageSuggestedWidgetIcons objectAtIndex:3];
    gridSizeClass7 = [v18 gridSizeClass];
    v20 = gridSizeClass7;
    if (gridSizeClass7 == @"SBHIconGridSizeClassLarge")
    {

      v57 = 1;
    }

    else
    {
      v21 = [(__CFString *)defaultFirstPageSuggestedWidgetIcons objectAtIndex:3];
      gridSizeClass8 = [v21 gridSizeClass];
      v57 = [gridSizeClass8 isEqualToString:@"SBHIconGridSizeClassLarge"];
    }

    v23 = gridSizeClass5;
    screenCopy = v54;
    gridSizeClass = v47;
    v11 = v48;
    if (gridSizeClass5 == @"SBHIconGridSizeClassMedium")
    {
LABEL_22:

      v17 = gridSizeClass3;
      if (gridSizeClass3 == @"SBHIconGridSizeClassSmall")
      {
LABEL_24:

        if (gridSizeClass == @"SBHIconGridSizeClassSmall")
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
          rootFolder3 = [(SBHIconManager *)self rootFolder];
          v25 = [rootFolder3 gridPathWithListAtIndex:0 gridCellIndex:0 listGridCellInfoOptions:{-[SBHIconManager gridCellInfoOptionsForInsertingDefaultWidgets](self, "gridCellInfoOptionsForInsertingDefaultWidgets")}];

          v26 = MEMORY[0x1E695DEC8];
          v27 = [(__CFString *)defaultFirstPageSuggestedWidgetIcons subarrayWithRange:0, 2];
          v61 = [v26 arrayWithArray:v27];

          rootFolder4 = [(SBHIconManager *)self rootFolder];
          v29 = [rootFolder4 gridPathWithListAtIndex:0 gridCellIndex:4 listGridCellInfoOptions:{-[SBHIconManager gridCellInfoOptionsForInsertingDefaultWidgets](self, "gridCellInfoOptionsForInsertingDefaultWidgets")}];

          v30 = MEMORY[0x1E695DEC8];
          [(__CFString *)defaultFirstPageSuggestedWidgetIcons objectAtIndex:2];
          v31 = v55 = screenCopy;
          v32 = [v30 arrayWithObject:v31];

          [(SBHIconManager *)self rootFolder];
          v34 = v33 = v11;
          v35 = [v34 gridPathWithListAtIndex:0 gridCellIndex:12 listGridCellInfoOptions:{-[SBHIconManager gridCellInfoOptionsForInsertingDefaultWidgets](self, "gridCellInfoOptionsForInsertingDefaultWidgets")}];

          v36 = MEMORY[0x1E695DEC8];
          lastObject = [(__CFString *)defaultFirstPageSuggestedWidgetIcons lastObject];
          v38 = [v36 arrayWithObject:lastObject];

          [(SBHIconManager *)self beginStopUpdatingDefaultWidgetsBumpedIconRecord];
          [(SBHIconManager *)self addWidgets:v61 toGridPath:v25 overflowOptions:0];
          [(SBHIconManager *)self addWidgets:v32 toGridPath:v29 overflowOptions:0];
          [(SBHIconManager *)self addWidgets:v38 toGridPath:v35 overflowOptions:0];
          [(SBHIconManager *)self endStopUpdatingDefaultWidgetsBumpedIconRecord];

          v11 = v33;
          screenCopy = v55;

          v39 = 1;
LABEL_33:

          [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem setIsVerticalWidgetIntroduction:v39];
          [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem setForceShowWidgetIntroduction:screenCopy];

          goto LABEL_34;
        }

LABEL_30:
        rootFolder5 = [(SBHIconManager *)self rootFolder];
        v25 = [rootFolder5 gridPathWithListAtIndex:firstVisibleListIndex gridCellIndex:0 listGridCellInfoOptions:{-[SBHIconManager gridCellInfoOptionsForInsertingDefaultWidgets](self, "gridCellInfoOptionsForInsertingDefaultWidgets")}];

        [(SBHIconManager *)self beginStopUpdatingDefaultWidgetsBumpedIconRecord];
        v41 = SBLogWidgetDiscoverabilityMigration();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v63 = defaultFirstPageSuggestedWidgetIcons;
          _os_log_impl(&dword_1BEB18000, v41, OS_LOG_TYPE_DEFAULT, "Add first page default widget icons(%@) to model", buf, 0xCu);
        }

        [(SBHIconManager *)self addWidgets:defaultFirstPageSuggestedWidgetIcons toGridPath:v25 overflowOptions:0];
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

- (BOOL)addDefaultSecondPageWidgetsToHomeScreen:(BOOL)screen
{
  v36 = *MEMORY[0x1E69E9840];
  if (screen)
  {
    [(SBHIconManager *)self prototypeSetDefaultSecondPageWidgetIcons];
  }

  defaultSecondPageSuggestedWidgetIcons = [(SBHIconManager *)self defaultSecondPageSuggestedWidgetIcons];
  if ([defaultSecondPageSuggestedWidgetIcons count])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v5 = defaultSecondPageSuggestedWidgetIcons;
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

          activeWidget = [*(*(&v29 + 1) + 8 * i) activeWidget];
          extensionBundleIdentifier = [activeWidget extensionBundleIdentifier];

          rootFolder = [(SBHIconManager *)self rootFolder];
          v13 = [rootFolder containsWidgetWithExtensionBundleIdentifier:extensionBundleIdentifier];

          if (v13)
          {
            proactiveWidgetSuggesterClient = [(SBHIconManager *)self proactiveWidgetSuggesterClient];
            [proactiveWidgetSuggesterClient logEventForDefaultWidgetSuggestionType:1 event:1];

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

    rootFolder2 = [(SBHIconManager *)self rootFolder];
    firstVisibleListIndex = [rootFolder2 firstVisibleListIndex];

    rootFolder3 = [(SBHIconManager *)self rootFolder];
    v17 = [rootFolder3 nextVisibleListIndexAfterIndex:firstVisibleListIndex];

    rootFolder4 = [(SBHIconManager *)self rootFolder];
    v19 = rootFolder4;
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [rootFolder4 addEmptyListRemovingLeastRecentlyHiddenListIfNecessary];
    }

    else
    {
      [rootFolder4 listAtIndex:v17];
    }
    v22 = ;

    v21 = v22 != 0;
    if (v22)
    {
      rootFolder5 = [(SBHIconManager *)self rootFolder];
      v24 = [rootFolder5 indexOfList:v22];

      rootFolder6 = [(SBHIconManager *)self rootFolder];
      v26 = [rootFolder6 gridPathWithListAtIndex:v24 gridCellIndex:0 listGridCellInfoOptions:{-[SBHIconManager gridCellInfoOptionsForInsertingDefaultWidgets](self, "gridCellInfoOptionsForInsertingDefaultWidgets")}];

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

- (void)undoDefaultWidgets:(BOOL)widgets
{
  [(SBHIconManager *)self updatePronouncedContainerViewVisibility:0 vertical:0];
  if (![(SBHIconManager *)self applyOriginaliconStateForWidgetDiscoverability])
  {
    defaultFirstPageSuggestedWidgetIcons = [(SBHIconManager *)self defaultFirstPageSuggestedWidgetIcons];
    defaultSecondPageSuggestedWidgetIcons = [(SBHIconManager *)self defaultSecondPageSuggestedWidgetIcons];
    iconModel = [(SBHIconManager *)self iconModel];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [iconModel removeIcons:defaultSecondPageSuggestedWidgetIcons];
    }

    [iconModel removeIcons:defaultFirstPageSuggestedWidgetIcons];
  }

  if (!widgets)
  {
    homeScreenDefaults = [(SBHIconManager *)self homeScreenDefaults];
    [homeScreenDefaults setUserDidUndoSuggestedWidget:1];

    [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem resetDefaultWidgetsUndoInfo];
    widgetIntroductionSettings = [(SBHIconManager *)self widgetIntroductionSettings];
    [widgetIntroductionSettings setShowWidgetIntroConvenienceControl:0];
  }
}

- (void)undoDefaultTVWidget
{
  [(SBHIconManager *)self updatePronouncedContainerViewVisibility:0 vertical:0];
  defaultSecondPageSuggestedWidgetIcons = [(SBHIconManager *)self defaultSecondPageSuggestedWidgetIcons];
  iconModel = [(SBHIconManager *)self iconModel];
  [iconModel removeIcons:defaultSecondPageSuggestedWidgetIcons];
  widgetIntroductionSettings = [(SBHIconManager *)self widgetIntroductionSettings];
  [widgetIntroductionSettings setShowXLTVWidget:0];
}

- (BOOL)rootFolderContainsSuggestedWidget
{
  homeScreenDefaults = [(SBHIconManager *)self homeScreenDefaults];
  userDidUndoSuggestedWidget = [homeScreenDefaults userDidUndoSuggestedWidget];

  if (userDidUndoSuggestedWidget)
  {
    v5 = 0;
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    rootFolder = [(SBHIconManager *)self rootFolder];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__SBHIconManager_rootFolderContainsSuggestedWidget__block_invoke;
    v8[3] = &unk_1E8090328;
    v8[4] = self;
    v8[5] = &v9;
    [rootFolder enumerateAllIconsUsingBlock:v8];

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

- (void)updateWidgetDiscoverabilityUserPreferencesByDeletingWidget:(id)widget
{
  widgetCopy = widget;
  homeScreenDefaults = [(SBHIconManager *)self homeScreenDefaults];
  if (([homeScreenDefaults userHasDeletedSuggestedWidget] & 1) == 0)
  {
    v5 = [(SBHIconManager *)self widgetIconIsOnboardingWidget:widgetCopy];

    if (!v5)
    {
      goto LABEL_5;
    }

    homeScreenDefaults = [(SBHIconManager *)self homeScreenDefaults];
    [homeScreenDefaults setUserHasDeletedSuggestedWidget:1];
  }

LABEL_5:
  if ([(SBHIconManager *)self rootFolderContainsSuggestedWidget])
  {
    defaultSecondPageSuggestedWidgetIcons = [(SBHIconManager *)self defaultSecondPageSuggestedWidgetIcons];
    v7 = [defaultSecondPageSuggestedWidgetIcons containsObject:widgetCopy];

    if (!v7)
    {
      goto LABEL_10;
    }

    proactiveWidgetSuggesterClient = [(SBHIconManager *)self proactiveWidgetSuggesterClient];
    [proactiveWidgetSuggesterClient logEventForDefaultWidgetSuggestionType:1 event:3];
  }

  else
  {
    proactiveWidgetSuggesterClient = [(SBHIconManager *)self homeScreenDefaults];
    [proactiveWidgetSuggesterClient setUserDidUndoSuggestedWidget:1];
  }

LABEL_10:
}

- (void)disableUserInteractionForWidgetDiscoverability
{
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  [rootFolderController setScrollingDisabled:1 forReason:@"SBHIconManager WidgetDiscoverability"];

  [(SBHIconManager *)self setShouldDisableUserInteractionForWidgetDiscoverability:1];
}

- (void)enableUserInteractionForWidgetDiscoverability
{
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  [rootFolderController setScrollingDisabled:0 forReason:@"SBHIconManager WidgetDiscoverability"];

  [(SBHIconManager *)self setShouldDisableUserInteractionForWidgetDiscoverability:0];
}

- (void)updatePronouncedContainerViewVisibility:(BOOL)visibility vertical:(BOOL)vertical
{
  verticalCopy = vertical;
  visibilityCopy = visibility;
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  [rootFolderController updatePronouncedContainerViewVisibilityIfPossible:visibilityCopy vertical:verticalCopy];
}

- (BOOL)prototypeSettingShowWidgetIntroduction
{
  widgetIntroductionSettings = [(SBHIconManager *)self widgetIntroductionSettings];
  showWidgetIntroConvenienceControl = [widgetIntroductionSettings showWidgetIntroConvenienceControl];

  return showWidgetIntroConvenienceControl;
}

- (BOOL)prototypeSettingEditButtonAsUndo
{
  widgetIntroductionSettings = [(SBHIconManager *)self widgetIntroductionSettings];
  editButtonAsUndo = [widgetIntroductionSettings editButtonAsUndo];

  return editButtonAsUndo;
}

- (BOOL)prototypeSettingSimpleBottomSnaking
{
  widgetIntroductionSettings = [(SBHIconManager *)self widgetIntroductionSettings];
  simpleBottomSnaking = [widgetIntroductionSettings simpleBottomSnaking];

  return simpleBottomSnaking;
}

- (BOOL)prototypeSettingBumpLeastUsedApps
{
  widgetIntroductionSettings = [(SBHIconManager *)self widgetIntroductionSettings];
  bumpLeastUsedApps = [widgetIntroductionSettings bumpLeastUsedApps];

  return bumpLeastUsedApps;
}

- (BOOL)prototypeSettingShowExtraLargeTVWidget
{
  widgetIntroductionSettings = [(SBHIconManager *)self widgetIntroductionSettings];
  showXLTVWidget = [widgetIntroductionSettings showXLTVWidget];

  return showXLTVWidget;
}

- (void)scrollToDefaultWidgets
{
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  [rootFolderController setCurrentPageIndex:objc_msgSend(rootFolderController animated:"firstIconPageIndex") completion:{0, 0}];
}

- (void)prepareModalWidgetIntroductionWidgetViewSnapshots
{
  v50 = *MEMORY[0x1E69E9840];
  defaultFirstPageSuggestedWidgetIcons = [(SBHIconManager *)self defaultFirstPageSuggestedWidgetIcons];
  lastObject = [defaultFirstPageSuggestedWidgetIcons lastObject];

  rootViewController = [(SBHIconManager *)self rootViewController];
  v6 = [rootViewController firstIconViewForIcon:lastObject options:64];

  [v6 iconImageCenter];
  [v6 convertPoint:0 toView:?];
  v8 = v7;
  v10 = v9;
  [v6 iconImageSize];
  v12 = v11;
  v14 = v13;
  v15 = MEMORY[0x1E695DEC8];
  v16 = [(SBHIconManager *)self onboardingWidgetPreviewsForWidgetIcon:lastObject];
  v45 = [v15 arrayWithArray:v16];

  defaultFirstPageSuggestedWidgetIcons2 = [(SBHIconManager *)self defaultFirstPageSuggestedWidgetIcons];
  firstObject = [defaultFirstPageSuggestedWidgetIcons2 firstObject];

  rootViewController2 = [(SBHIconManager *)self rootViewController];
  v20 = [rootViewController2 firstIconViewForIcon:firstObject options:64];

  [v20 iconImageCenter];
  [v20 convertPoint:0 toView:?];
  v22 = v21;
  v24 = v23;
  [v20 iconImageSize];
  v26 = v25;
  v28 = v27;
  v29 = MEMORY[0x1E695DEC8];
  v30 = [(SBHIconManager *)self onboardingWidgetPreviewsForWidgetIcon:firstObject];
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

  modalIntroductionViewController = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem modalIntroductionViewController];

  if (modalIntroductionViewController)
  {
    modalIntroductionViewController2 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem modalIntroductionViewController];
    [modalIntroductionViewController2 setOnboardingFallingWidgetPreviews:v45];

    modalIntroductionViewController3 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem modalIntroductionViewController];
    [modalIntroductionViewController3 setOnboardingFallingWidgetCenterPoint:{v8, v10}];

    modalIntroductionViewController4 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem modalIntroductionViewController];
    [modalIntroductionViewController4 setOnboardingFallingWidgetBounds:{0.0, 0.0, v12, v14}];

    modalIntroductionViewController5 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem modalIntroductionViewController];
    [modalIntroductionViewController5 setOnboardingStaticWidgetPreviews:v31];

    modalIntroductionViewController6 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem modalIntroductionViewController];
    [modalIntroductionViewController6 setOnboardingStaticWidgetCenterPoint:{v22, v24}];

    modalIntroductionViewController7 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem modalIntroductionViewController];
    [modalIntroductionViewController7 setOnboardingStaticWidgetBounds:{0.0, 0.0, v26, v28}];
  }
}

- (id)_widgetIntroductionHomeScreenPreviewView
{
  delegate = [(SBHIconManager *)self delegate];
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
  chuisOnboardingWidgetViewControllers = [(SBHIconManager *)self chuisOnboardingWidgetViewControllers];
  if (chuisOnboardingWidgetViewControllers)
  {
    v4 = chuisOnboardingWidgetViewControllers;
    chuisOnboardingWidgetViewControllers2 = [(SBHIconManager *)self chuisOnboardingWidgetViewControllers];
    v6 = [chuisOnboardingWidgetViewControllers2 count];

    if (v6)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      chuisOnboardingWidgetViewControllers3 = [(SBHIconManager *)self chuisOnboardingWidgetViewControllers];
      v8 = [chuisOnboardingWidgetViewControllers3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
              objc_enumerationMutation(chuisOnboardingWidgetViewControllers3);
            }

            [*(*(&v13 + 1) + 8 * v11++) invalidate];
          }

          while (v9 != v11);
          v9 = [chuisOnboardingWidgetViewControllers3 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v9);
      }

      chuisOnboardingWidgetViewControllers4 = [(SBHIconManager *)self chuisOnboardingWidgetViewControllers];
      [chuisOnboardingWidgetViewControllers4 removeAllObjects];
    }
  }

  [(SBHIconManager *)self setChuisOnboardingWidgetViewControllers:0];
}

- (id)onboardingWidgetPreviewsForWidgetIcon:(id)icon
{
  v44 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  chuisOnboardingWidgetViewControllers = [(SBHIconManager *)self chuisOnboardingWidgetViewControllers];

  if (!chuisOnboardingWidgetViewControllers)
  {
    array = [MEMORY[0x1E695DF70] array];
    chuisOnboardingWidgetViewControllers = self->_chuisOnboardingWidgetViewControllers;
    self->_chuisOnboardingWidgetViewControllers = array;
  }

  selfCopy = self;
  gridSizeClassDomain = [(SBHIconManager *)self gridSizeClassDomain];
  array2 = [MEMORY[0x1E695DF70] array];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v35 = iconCopy;
  obj = [iconCopy iconDataSources];
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

        kind = [v13 kind];
        extensionBundleIdentifier = [v13 extensionBundleIdentifier];
        containerBundleIdentifier = [v13 containerBundleIdentifier];
        if (v13)
        {
          v17 = kind == 0;
        }

        else
        {
          v17 = 1;
        }

        if (!v17 && extensionBundleIdentifier != 0)
        {
          v19 = [(SBHIconManager *)selfCopy _intentForWidget:v13 ofIcon:v35 creatingIfNecessary:1];
          gridSizeClass = [v35 gridSizeClass];
          v21 = [gridSizeClassDomain chsWidgetFamilyForIconGridSizeClass:gridSizeClass];
          v22 = [objc_alloc(MEMORY[0x1E6994290]) initWithExtensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:containerBundleIdentifier deviceIdentifier:0];
          v23 = [objc_alloc(MEMORY[0x1E6994370]) initWithExtensionIdentity:v22 kind:kind family:v21 intent:v19 activityIdentifier:0];

          if (v23)
          {
            widgetMetricsProvider = [(SBHIconManager *)selfCopy widgetMetricsProvider];
            v25 = [widgetMetricsProvider systemMetricsForWidget:v23];

            v26 = objc_alloc(MEMORY[0x1E6994530]);
            uniqueIdentifier = [v13 uniqueIdentifier];
            v28 = [v26 initWithWidget:v23 metrics:v25 widgetConfigurationIdentifier:uniqueIdentifier];

            v8 = v32;
            chuisOnboardingWidgetViewControllers2 = [(SBHIconManager *)selfCopy chuisOnboardingWidgetViewControllers];
            [chuisOnboardingWidgetViewControllers2 addObject:v28];

            view = [v28 view];
            [array2 addObject:view];
          }
        }
      }

      v38 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v38);
  }

  return array2;
}

- (void)removeWidgetDiscoverabilityContainerViewsAndPopoverWhenNeeded:(BOOL)needed
{
  neededCopy = needed;
  rootFolder = [(SBHIconManager *)self rootFolder];
  rootFolder2 = [(SBHIconManager *)self rootFolder];
  v7 = [rootFolder listAtIndex:{objc_msgSend(rootFolder2, "firstVisibleListIndex")}];

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
  if (*(v11 + 24) != 1 || neededCopy)
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

- (BOOL)widgetIconIsOnboardingWidget:(id)widget
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  widgets = [widget widgets];
  v4 = [widgets countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(widgets);
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

      v4 = [widgets countByEnumeratingWithState:&v11 objects:v15 count:16];
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

  _widgetIntroductionHomeScreenPreviewView = [(SBHIconManager *)self _widgetIntroductionHomeScreenPreviewView];

  return _widgetIntroductionHomeScreenPreviewView;
}

- (BOOL)swapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)identifier withApplicationIconsWithWithBundleIdentifier:(id)bundleIdentifier
{
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  focusModeManager = [(SBHIconManager *)self focusModeManager];
  activeFocusMode = [focusModeManager activeFocusMode];
  identifier = [activeFocusMode identifier];
  LOBYTE(self) = [(SBHIconManager *)self swapApplicationIconsInProminentPositionsWithBundleIdentifier:identifierCopy withApplicationIconsWithWithBundleIdentifier:bundleIdentifierCopy focusModeIdentifier:identifier];

  return self;
}

- (BOOL)swapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)identifier withApplicationIconsWithWithBundleIdentifier:(id)bundleIdentifier focusModeIdentifier:(id)modeIdentifier
{
  modeIdentifierCopy = modeIdentifier;
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  rootFolder = [(SBHIconManager *)self rootFolder];
  LOBYTE(self) = [(SBHIconManager *)self swapApplicationIconsInProminentPositionsWithBundleIdentifier:identifierCopy withApplicationIconsWithWithBundleIdentifier:bundleIdentifierCopy inRootFolder:rootFolder focusModeIdentifier:modeIdentifierCopy];

  return self;
}

- (BOOL)swapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)identifier withApplicationIconsWithWithBundleIdentifier:(id)bundleIdentifier inRootFolder:(id)folder focusModeIdentifier:(id)modeIdentifier
{
  v87[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  folderCopy = folder;
  modeIdentifierCopy = modeIdentifier;
  iconModel = [(SBHIconManager *)self iconModel];
  firstList = [folderCopy firstList];
  dock = [folderCopy dock];
  v52 = modeIdentifierCopy;
  if (modeIdentifierCopy)
  {
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = __157__SBHIconManager_swapApplicationIconsInProminentPositionsWithBundleIdentifier_withApplicationIconsWithWithBundleIdentifier_inRootFolder_focusModeIdentifier___block_invoke;
    v81[3] = &unk_1E80907F8;
    v82 = modeIdentifierCopy;
    v15 = [folderCopy indexesOfListsPassingTest:v81];
    if ([v15 count])
    {
      v16 = [folderCopy listAtIndex:{objc_msgSend(v15, "firstIndex")}];

      firstList = v16;
    }
  }

  v50 = dock;
  v51 = firstList;
  v87[0] = dock;
  v87[1] = firstList;
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
        v76 = bundleIdentifierCopy;
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
          v23 = bundleIdentifierCopy;
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

  v23 = bundleIdentifierCopy;
  v24 = [iconModel applicationIconForBundleIdentifier:bundleIdentifierCopy];
  if (v24)
  {
    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __157__SBHIconManager_swapApplicationIconsInProminentPositionsWithBundleIdentifier_withApplicationIconsWithWithBundleIdentifier_inRootFolder_focusModeIdentifier___block_invoke_1089;
    v73[3] = &unk_1E8090820;
    v74 = bundleIdentifierCopy;
    v25 = [folderCopy iconsPassingTest:v73];
    allObjects = [v25 allObjects];

    if ([allObjects count])
    {
      v27 = [allObjects indexOfObjectIdenticalTo:v24];
      if (!v27 || v27 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_27;
      }

      v28 = [allObjects mutableCopy];
      [v28 removeObject:v24];
      [v28 insertObject:v24 atIndex:0];
    }

    else
    {
      v85 = v24;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v85 count:1];
      allObjects = v28 = allObjects;
    }

LABEL_27:
    objectEnumerator = [allObjects objectEnumerator];
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
      v55 = allObjects;
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
          if (([v39 directlyContainsAnyIconInArray:allObjects] & 1) == 0)
          {
            v60 = v38;
            v66[0] = MEMORY[0x1E69E9820];
            v66[1] = 3221225472;
            v66[2] = __157__SBHIconManager_swapApplicationIconsInProminentPositionsWithBundleIdentifier_withApplicationIconsWithWithBundleIdentifier_inRootFolder_focusModeIdentifier___block_invoke_2_1091;
            v66[3] = &unk_1E8090848;
            v67 = identifierCopy;
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
                  nextObject = [objectEnumerator nextObject];
                  if (!nextObject)
                  {
                    nextObject = [iconModel addAdditionalIconMatchingIcon:v24];
                  }

                  [folderCopy swapIcon:v46 withIcon:nextObject options:0];
                  [v40 addObject:v46];
                }

                v43 = [v41 countByEnumeratingWithState:&v62 objects:v83 count:16];
              }

              while (v43);
            }

            v37 = v54;
            allObjects = v55;
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

- (BOOL)canSwapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)identifier withApplicationIconsWithWithBundleIdentifier:(id)bundleIdentifier
{
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  focusModeManager = [(SBHIconManager *)self focusModeManager];
  activeFocusMode = [focusModeManager activeFocusMode];
  identifier = [activeFocusMode identifier];
  LOBYTE(self) = [(SBHIconManager *)self canSwapApplicationIconsInProminentPositionsWithBundleIdentifier:identifierCopy withApplicationIconsWithWithBundleIdentifier:bundleIdentifierCopy focusModeIdentifier:identifier];

  return self;
}

- (BOOL)canSwapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)identifier withApplicationIconsWithWithBundleIdentifier:(id)bundleIdentifier focusModeIdentifier:(id)modeIdentifier
{
  modeIdentifierCopy = modeIdentifier;
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  rootFolder = [(SBHIconManager *)self rootFolder];
  v12 = [rootFolder copy];
  LOBYTE(self) = [(SBHIconManager *)self swapApplicationIconsInProminentPositionsWithBundleIdentifier:identifierCopy withApplicationIconsWithWithBundleIdentifier:bundleIdentifierCopy inRootFolder:v12 focusModeIdentifier:modeIdentifierCopy];

  return self;
}

- (void)setPrefersFlatImageLayers:(BOOL)layers
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_prefersFlatImageLayers != layers)
  {
    layersCopy = layers;
    self->_prefersFlatImageLayers = layers;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __44__SBHIconManager_setPrefersFlatImageLayers___block_invoke;
    v15[3] = &__block_descriptor_33_e24_v24__0__SBIconView_8_B16l;
    layersCopy2 = layers;
    [(SBHIconManager *)self enumerateDisplayedIconViewsUsingBlock:v15];
    floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
    [floatingDockViewController setPrefersFlatImageLayers:layersCopy];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    _libraryViewControllers = [(SBHIconManager *)self _libraryViewControllers];
    v7 = [_libraryViewControllers countByEnumeratingWithState:&v11 objects:v17 count:16];
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
            objc_enumerationMutation(_libraryViewControllers);
          }

          [*(*(&v11 + 1) + 8 * v10++) setPrefersFlatImageLayers:layersCopy];
        }

        while (v8 != v10);
        v8 = [_libraryViewControllers countByEnumeratingWithState:&v11 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (void)folder:(id)folder didAddIcons:(id)icons removedIcons:(id)removedIcons
{
  v103 = *MEMORY[0x1E69E9840];
  removedIconsCopy = removedIcons;
  [(SBHIconManager *)self noteRootFolderDidMutate];
  if (![(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem stopUpdatingDefaultWidgetsBumpedIconRecord])
  {
    [(SBHIconManager *)self beginStopUpdatingDefaultWidgetsBumpedIconRecord];
    iconGridSizeClassSizes = [(SBHIconManager *)self iconGridSizeClassSizes];
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v78 = removedIconsCopy;
    allObjects = [removedIconsCopy allObjects];
    v8 = [allObjects countByEnumeratingWithState:&v96 objects:v102 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v97;
      v82 = allObjects;
      v79 = *v97;
      do
      {
        v11 = 0;
        v81 = v9;
        do
        {
          if (*v97 != v10)
          {
            objc_enumerationMutation(allObjects);
          }

          v12 = *(*(&v96 + 1) + 8 * v11);
          if ([v12 isWidgetIcon] && -[SBHIconManager widgetIconIsOnboardingWidget:](self, "widgetIconIsOnboardingWidget:", v12))
          {
            obj = v12;
            gridSizeClass = [obj gridSizeClass];
            v13 = [iconGridSizeClassSizes gridSizeAreaForGridSizeClass:?];
            defaultWidgetsBumpedIconUsageRanking = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsBumpedIconUsageRanking];
            v15 = [defaultWidgetsBumpedIconUsageRanking count];

            if (v15 >= v13)
            {
              v15 = v13;
            }

            rootFolder = [(SBHIconManager *)self rootFolder];
            rootFolder2 = [(SBHIconManager *)self rootFolder];
            v18 = [rootFolder listAtIndex:{objc_msgSend(rootFolder2, "firstVisibleListIndex")}];

            maxNumberOfIcons = [v18 maxNumberOfIcons];
            numberOfIcons = [v18 numberOfIcons];
            v87 = v15;
            if (numberOfIcons + v15 <= maxNumberOfIcons)
            {
              v21 = numberOfIcons;
            }

            else
            {
              v21 = maxNumberOfIcons - v15;
            }

            rootFolder3 = [(SBHIconManager *)self rootFolder];
            defaultWidgetsBumpedIconUsageRanking2 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsBumpedIconUsageRanking];
            firstObject = [defaultWidgetsBumpedIconUsageRanking2 firstObject];
            v25 = [rootFolder3 indexOfListContainingIcon:firstObject];

            v85 = v11;
            v83 = v18;
            if (v25 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v94 = 0u;
              v95 = 0u;
              v92 = 0u;
              v93 = 0u;
              defaultWidgetsIconsRestoringRecordOriginalIndex = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecordOriginalIndex];
              v27 = [defaultWidgetsIconsRestoringRecordOriginalIndex countByEnumeratingWithState:&v92 objects:v101 count:16];
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
                      objc_enumerationMutation(defaultWidgetsIconsRestoringRecordOriginalIndex);
                    }

                    integerValue = [*(*(&v92 + 1) + 8 * i) integerValue];
                    if (integerValue < v21)
                    {
                      v21 = integerValue;
                    }
                  }

                  v28 = [defaultWidgetsIconsRestoringRecordOriginalIndex countByEnumeratingWithState:&v92 objects:v101 count:16];
                }

                while (v28);
              }
            }

            if (v87)
            {
              v32 = 0;
              while (1)
              {
                defaultWidgetsBumpedIconUsageRanking3 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsBumpedIconUsageRanking];
                firstObject2 = [defaultWidgetsBumpedIconUsageRanking3 firstObject];

                v35 = firstObject2;
                v36 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecordKeyForIcon:v35];
                defaultWidgetsIconsRestoringRecord = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecord];
                v38 = [defaultWidgetsIconsRestoringRecord objectForKey:v36];

                defaultWidgetsIconsRestoringRecord2 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecord];
                allKeys = [defaultWidgetsIconsRestoringRecord2 allKeys];
                v41 = [allKeys containsObject:v38];

                if (v41)
                {
                  v42 = v35;
                  do
                  {
                    v43 = v38;

                    v44 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecordKeyForIcon:v43];
                    defaultWidgetsIconsRestoringRecord3 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecord];
                    v38 = [defaultWidgetsIconsRestoringRecord3 objectForKey:v44];

                    defaultWidgetsIconsRestoringRecord4 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecord];
                    allKeys2 = [defaultWidgetsIconsRestoringRecord4 allKeys];
                    v48 = [allKeys2 containsObject:v38];

                    v42 = v43;
                  }

                  while ((v48 & 1) != 0);
                }

                else
                {
                  v43 = v35;
                }

                null = [MEMORY[0x1E695DFB0] null];
                v50 = [v38 isEqual:null];

                if (v50)
                {
                  break;
                }

                if (v38)
                {
                  rootFolder4 = [(SBHIconManager *)self rootFolder];
                  v53 = [rootFolder4 insertIcon:v35 afterIcon:v38 options:0 listGridCellInfoOptions:0];
                  goto LABEL_36;
                }

LABEL_37:
                defaultWidgetsIconsRestoringRecord5 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecord];
                [defaultWidgetsIconsRestoringRecord5 removeObjectForKey:v35];

                defaultWidgetsBumpedIconUsageRanking4 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsBumpedIconUsageRanking];
                [defaultWidgetsBumpedIconUsageRanking4 removeObjectAtIndex:0];

                defaultWidgetsIconsRestoringRecordOriginalIndex2 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecordOriginalIndex];
                [defaultWidgetsIconsRestoringRecordOriginalIndex2 removeObjectAtIndex:0];

                if (++v32 == v87)
                {
                  goto LABEL_38;
                }
              }

              rootFolder4 = [(SBHIconManager *)self rootFolder];
              v52 = [rootFolder4 prependIcon:v35 options:0];
LABEL_36:

              goto LABEL_37;
            }

LABEL_38:
            rootFolder5 = [(SBHIconManager *)self rootFolder];
            rootFolder6 = [(SBHIconManager *)self rootFolder];
            v59 = [rootFolder5 nextVisibleListIndexAfterIndex:{objc_msgSend(rootFolder6, "firstVisibleListIndex")}];

            v60 = [MEMORY[0x1E696AC88] indexPathWithIconIndex:v21 listIndex:v59];
            rootFolder7 = [(SBHIconManager *)self rootFolder];
            [rootFolder7 _swapRestoreIconCount:v87 toLocation:v60];

            [(SBHIconManager *)self removeWidgetDiscoverabilityContainerViewsAndPopoverWhenNeeded:0];
            v9 = v81;
            allObjects = v82;
            v10 = v79;
            defaultWidgetsBumpedIconUsageRanking6 = v83;
            v63 = gridSizeClass;
LABEL_51:

            v11 = v85;
            goto LABEL_52;
          }

          defaultWidgetsBumpedIconUsageRanking5 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsBumpedIconUsageRanking];
          v65 = [defaultWidgetsBumpedIconUsageRanking5 containsObject:v12];

          if (v65)
          {
            defaultWidgetsIconsRestoringRecord6 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecord];
            allValues = [defaultWidgetsIconsRestoringRecord6 allValues];
            v68 = [allValues containsObject:v12];

            if (v68)
            {
              v90 = 0u;
              v91 = 0u;
              v88 = 0u;
              v89 = 0u;
              defaultWidgetsIconsRestoringRecord7 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecord];
              allKeys3 = [defaultWidgetsIconsRestoringRecord7 allKeys];

              obj = allKeys3;
              v71 = [allKeys3 countByEnumeratingWithState:&v88 objects:v100 count:16];
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
                    defaultWidgetsIconsRestoringRecord8 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecord];
                    v63 = [defaultWidgetsIconsRestoringRecord8 objectForKey:v75];

                    if ([v63 isEqual:v12])
                    {
                      defaultWidgetsIconsRestoringRecord9 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecord];
                      [defaultWidgetsIconsRestoringRecord9 removeObjectForKey:v75];

                      defaultWidgetsBumpedIconUsageRanking6 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsBumpedIconUsageRanking];
                      [defaultWidgetsBumpedIconUsageRanking6 removeObject:v75];
                      allObjects = v82;
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
                allObjects = v82;
              }

LABEL_52:
            }
          }

          ++v11;
        }

        while (v11 != v9);
        v9 = [allObjects countByEnumeratingWithState:&v96 objects:v102 count:16];
      }

      while (v9);
    }

    [(SBHIconManager *)self endStopUpdatingDefaultWidgetsBumpedIconRecord];
    removedIconsCopy = v78;
  }
}

- (void)folder:(id)folder didReplaceIcon:(id)icon withIcon:(id)withIcon
{
  v25 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  [(SBHIconManager *)self noteRootFolderDidMutate];
  if (![(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem stopUpdatingDefaultWidgetsBumpedIconRecord])
  {
    if ([iconCopy isWidgetIcon] && -[SBHIconManager widgetIconIsOnboardingWidget:](self, "widgetIconIsOnboardingWidget:", iconCopy))
    {
      [(SBHIconManager *)self removeWidgetDiscoverabilityContainerViewsAndPopoverWhenNeeded:0];
    }

    defaultWidgetsIconsRestoringRecord = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecord];
    allValues = [defaultWidgetsIconsRestoringRecord allValues];
    v9 = [allValues containsObject:iconCopy];

    if (v9)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      defaultWidgetsIconsRestoringRecord2 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecord];
      allKeys = [defaultWidgetsIconsRestoringRecord2 allKeys];

      v12 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
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
              objc_enumerationMutation(allKeys);
            }

            v16 = *(*(&v20 + 1) + 8 * i);
            defaultWidgetsIconsRestoringRecord3 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecord];
            v18 = [defaultWidgetsIconsRestoringRecord3 objectForKey:v16];

            if ([v18 isEqual:iconCopy])
            {
              defaultWidgetsIconsRestoringRecord4 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self->_widgetIntroductionItem defaultWidgetsIconsRestoringRecord];
              [defaultWidgetsIconsRestoringRecord4 setObject:iconCopy forKey:v16];

              goto LABEL_16;
            }
          }

          v13 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
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

- (void)folder:(id)folder listHiddenDidChange:(id)change
{
  changeCopy = change;
  [(SBHIconManager *)self noteRootFolderDidMutate];
  rootFolder = [(SBHIconManager *)self rootFolder];
  firstVisibleListIndex = [rootFolder firstVisibleListIndex];
  if (firstVisibleListIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [rootFolder listAtIndex:firstVisibleListIndex];
    if ([v7 isEqual:changeCopy])
    {
      -[SBHWidgetIntroductionFeatureIntroductionItem setStopUpdatingDefaultWidgetsBumpedIconRecord:](self->_widgetIntroductionItem, "setStopUpdatingDefaultWidgetsBumpedIconRecord:", [changeCopy isHidden]);
    }
  }
}

- (id)addWidgetSheetViewControllerForAddWidgetSheetConfigurationManager:(id)manager
{
  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate addWidgetSheetViewControllerForIconManager:self];
  }

  else
  {
    [(SBRootFolderController *)self->_rootFolderController addSheetViewController];
  }
  v5 = ;

  return v5;
}

- (id)addWidgetSheetConfigurationManager:(id)manager vendorNameForAppWithBundleIdentifier:(id)identifier
{
  v4 = [(SBHIconManager *)self applicationWithBundleIdentifier:identifier];
  if (objc_opt_respondsToSelector())
  {
    vendorName = [v4 vendorName];
  }

  else
  {
    vendorName = 0;
  }

  if (!-[__CFString length](vendorName, "length") && (objc_opt_respondsToSelector() & 1) != 0 && [v4 isAppleApplication])
  {

    vendorName = @"Apple";
  }

  return vendorName;
}

- (id)addWidgetSheetConfigurationManager:(id)manager containerBundleIdentiferForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  extensionIdentity = [descriptorCopy extensionIdentity];
  containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];

  delegate = [(SBHIconManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [delegate iconManager:self containerBundleIdentifierForDescriptor:descriptorCopy];

    containerBundleIdentifier = v9;
  }

  return containerBundleIdentifier;
}

- (id)beginHidingIconsFromLayout:(id)layout reason:(id)reason options:(unint64_t)options
{
  v26 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  reasonCopy = reason;
  v10 = [[SBHIconLayoutHidingCompoundAssertion alloc] initWithInvalidationHandler:0 icons:layoutCopy reason:reasonCopy options:options];
  rootFolderController = [(SBHIconManager *)self rootFolderController];
  [(SBHIconLayoutHidingCompoundAssertion *)v10 addAssertionFromChild:rootFolderController];

  folderIconImageCache = [(SBHIconManager *)self folderIconImageCache];
  [(SBHIconLayoutHidingCompoundAssertion *)v10 addAssertionFromChild:folderIconImageCache];

  floatingDockListView = [(SBHIconManager *)self floatingDockListView];
  if (floatingDockListView)
  {
    [(SBHIconLayoutHidingCompoundAssertion *)v10 addAssertionFromChild:floatingDockListView];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  todayViewControllers = [(SBHIconManager *)self todayViewControllers];
  v15 = [todayViewControllers countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(todayViewControllers);
        }

        listView = [*(*(&v21 + 1) + 8 * i) listView];
        [(SBHIconLayoutHidingCompoundAssertion *)v10 addAssertionFromChild:listView];
      }

      v16 = [todayViewControllers countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  return v10;
}

- (void)setIconStylePickerVisible:(BOOL)visible
{
  if (self->_iconStylePickerVisible == visible)
  {
    return;
  }

  self->_iconStylePickerVisible = visible;
  currentStylePickerViewController = [(SBHIconManager *)self currentStylePickerViewController];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = defaultCenter;
  if (visible)
  {
    [defaultCenter postNotificationName:@"SBHIconManagerWillPresentStyleEditingSheetNotification" object:0];

LABEL_6:
    v8 = currentStylePickerViewController;
    goto LABEL_7;
  }

  [defaultCenter postNotificationName:@"SBHIconManagerDidDismissStyleEditingSheetNotification" object:0];

  v8 = currentStylePickerViewController;
  if (currentStylePickerViewController)
  {
    navigationController = [currentStylePickerViewController navigationController];
    sheetPresentationController = [navigationController sheetPresentationController];
    sourceView = [sheetPresentationController sourceView];
    [sourceView removeFromSuperview];

    navigationController2 = [currentStylePickerViewController navigationController];
    presentingViewController = [navigationController2 presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];

    [(SBHIconManager *)self setCurrentStylePickerViewController:0];
    goto LABEL_6;
  }

LABEL_7:
}

- (void)_dismissStylePickerViewControllerImmediately
{
  currentStylePickerViewController = [(SBHIconManager *)self currentStylePickerViewController];
  navigationController = [currentStylePickerViewController navigationController];
  presentingViewController = [navigationController presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];

  [(SBHIconManager *)self setCurrentStylePickerViewController:0];
  [(SBHIconManager *)self setIconStylePickerVisible:0];
}

- (void)stylePickerViewController:(id)controller didUpdateHomeScreenConfiguration:(id)configuration
{
  configurationCopy = configuration;
  controllerCopy = controller;
  v15 = [SBHIconImageStyleConfiguration styleConfigurationWithHomeScreenConfiguration:configurationCopy];
  stylePreviewManager = [(SBHIconManager *)self stylePreviewManager];
  [stylePreviewManager setImageStyleConfiguration:v15];
  [(SBHIconManager *)self setDidChangeIconStyleWithColorPicker:1];
  objc_setAssociatedObject(controllerCopy, &SBHLastHomeScreenConfigurationKey, configurationCopy, 1);
  [(SBHIconManager *)self _applyBarButtonItemsToStylePicker:controllerCopy forHomeScreenConfiguration:configurationCopy];

  styleType = [configurationCopy styleType];
  styleVariant = [configurationCopy styleVariant];

  currentHomeScreenWallpaperDimState = [(SBHIconManager *)self currentHomeScreenWallpaperDimState];
  if (styleType == 5 && (styleVariant & 0xFFFFFFFFFFFFFFFDLL) == 0 && currentHomeScreenWallpaperDimState || (styleType == 5 ? (v12 = styleVariant == 1) : (v12 = 0), !v12 ? (v13 = (styleType - 5) >= 0xFFFFFFFFFFFFFFFELL) : (v13 = 1), v13 ? (v14 = 0) : (v14 = 1), ((v14 | currentHomeScreenWallpaperDimState) & 1) == 0))
  {
    [(SBHIconManager *)self toggleHomeScreenWallpaperDim:0];
  }
}

- (void)stylePickerViewControllerDidFinish:(id)finish
{
  finishCopy = finish;
  [(SBHIconManager *)self setCurrentStylePickerViewController:0];
  [(SBHIconManager *)self setIconStylePickerVisible:0];
  usageMonitor = [(SBHIconManager *)self usageMonitor];
  [usageMonitor noteIconStylePickerDidDismiss];

  stylePreviewManager = [(SBHIconManager *)self stylePreviewManager];
  v6 = objc_getAssociatedObject(finishCopy, &SBHLastHomeScreenConfigurationKey);

  if (v6)
  {
    v7 = [SBHIconImageStyleConfiguration styleConfigurationWithHomeScreenConfiguration:v6];
    [stylePreviewManager setImageStyleConfiguration:v7];
    [(SBHIconManager *)self _updateStyleConfiguration:v6];
  }

  v8 = [SBHIconImageStyleConfiguration styleConfigurationWithHomeScreenConfiguration:v6];
  [(SBHIconManager *)self _precacheImagesForRootIconsForStyleConfiguration:v8];
  [stylePreviewManager invalidate];
  [(SBHIconManager *)self setStylePreviewManager:0];
}

- (void)stylePickerViewController:(id)controller didUpdateDesiredDetent:(double)detent
{
  navigationController = [controller navigationController];
  sheetPresentationController = [navigationController sheetPresentationController];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__SBHIconManager_stylePickerViewController_didUpdateDesiredDetent___block_invoke;
  v7[3] = &unk_1E8088C90;
  v8 = sheetPresentationController;
  v6 = sheetPresentationController;
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

- (void)_applyBarButtonItemsToStylePicker:(id)picker forHomeScreenConfiguration:(id)configuration
{
  v28[1] = *MEMORY[0x1E69E9840];
  pickerCopy = picker;
  configurationCopy = configuration;
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
    customView = [(UIBarButtonItem *)dimBarButtonItem customView];
    [customView setSelected:-[SBHIconManager currentHomeScreenWallpaperDimState](self animated:{"currentHomeScreenWallpaperDimState"), 1}];
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
  [pickerCopy setLeadingBarButtonItems:v19];

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
    customView2 = [(UIBarButtonItem *)iconSizeBarButtonItem customView];
    [customView2 setSelected:-[SBHIconManager _shouldUseHomeScreenLargeIconSize](self animated:{"_shouldUseHomeScreenLargeIconSize"), 1}];
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
  [pickerCopy setTrailingBarButtonItems:v20];
}

- (void)_presentStylePickerViewControllerForStylePickerConfiguration:(id)configuration
{
  v63[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  currentStylePickerViewController = [(SBHIconManager *)self currentStylePickerViewController];

  if (!currentStylePickerViewController)
  {
    object = [objc_alloc(getPUIStylePickerViewControllerClass()) initWithStylePickerConfiguration:configurationCopy];
    v5 = SBHBundle();
    v6 = [v5 localizedStringForKey:@"STYLE_PICKER_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    [object setTitle:v6];

    [object setDelegate:self];
    [(SBHIconManager *)self setCurrentStylePickerViewController:object];
    homeScreenConfiguration = [configurationCopy homeScreenConfiguration];
    objc_setAssociatedObject(object, &SBHLastHomeScreenConfigurationKey, homeScreenConfiguration, 1);

    v57 = [[SBHNavigationController alloc] initWithRootViewController:object];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(SBHNavigationController *)v57 setModalPresentedBackgroundColor:clearColor];

    [(SBHNavigationController *)v57 setModalPresentationStyle:2];
    objc_initWeak(&location, self);
    homeScreenConfiguration2 = [configurationCopy homeScreenConfiguration];
    [(SBHIconManager *)self _applyBarButtonItemsToStylePicker:object forHomeScreenConfiguration:homeScreenConfiguration2];

    rootFolderController = [(SBHIconManager *)self rootFolderController];
    contentView = [rootFolderController contentView];

    sheetPresentationController = [(SBHNavigationController *)v57 sheetPresentationController];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [contentView bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      _screen = [contentView _screen];
      [_screen scale];
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
      v30 = [contentView viewWithTag:{748373893, v52}];
      if (!v30)
      {
        v30 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v24, MaxY + -20.0, v26, v28}];
        [v30 setAutoresizingMask:18];
        [v30 setTag:748373893];
        [v30 setUserInteractionEnabled:0];
        clearColor2 = [MEMORY[0x1E69DC888] clearColor];
        [v30 setBackgroundColor:clearColor2];

        [contentView addSubview:v30];
      }

      [sheetPresentationController setSourceView:v30];
      [object desiredDetent];
      v33 = v32;
      [(SBHNavigationController *)v57 setPreferredContentSize:500.0, v32];
      [object setPreferredContentSize:{500.0, v33}];
      traitOverrides = [sheetPresentationController traitOverrides];
      [traitOverrides setVerticalSizeClass:1];

      traitOverrides2 = [sheetPresentationController traitOverrides];
      [traitOverrides2 setHorizontalSizeClass:1];

      traitOverrides3 = [(SBHNavigationController *)v57 traitOverrides];
      [traitOverrides3 setVerticalSizeClass:1];

      traitOverrides4 = [(SBHNavigationController *)v57 traitOverrides];
      [traitOverrides4 setHorizontalSizeClass:1];
    }

    if (objc_opt_respondsToSelector())
    {
      [sheetPresentationController _setPrefersSymmetricCorners:1];
    }

    [sheetPresentationController _setShouldDismissWhenTappedOutside:1];
    v38 = MEMORY[0x1E69DCF58];
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __79__SBHIconManager__presentStylePickerViewControllerForStylePickerConfiguration___block_invoke;
    v60[3] = &unk_1E8090888;
    objc_copyWeak(&v61, &location);
    v53 = [v38 customDetentWithIdentifier:@"stylePickerViewControllerDetent" resolver:v60];
    v63[0] = v53;
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:1];
    [sheetPresentationController setDetents:v54];
    [(SBHIconManager *)self setIconStylePickerVisible:1];
    v39 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:8 size:1];
    [v39 setSubvariant:@"customizeSheet"];
    [sheetPresentationController _setNonLargeBackground:v39];
    [sheetPresentationController _setLargeBackground:v39];
    navigationBar = [(SBHNavigationController *)v57 navigationBar];
    traitOverrides5 = [navigationBar traitOverrides];
    [traitOverrides5 setUserInterfaceStyle:2];

    listViewsToUpdateDuringColorPicking = [(SBHIconManager *)self listViewsToUpdateDuringColorPicking];
    additionalIconViewsToUpdateDuringColorPicking = [(SBHIconManager *)self additionalIconViewsToUpdateDuringColorPicking];
    v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
    rootFolderController2 = [(SBHIconManager *)self rootFolderController];
    if (rootFolderController2)
    {
      [v44 addObject:rootFolderController2];
    }

    floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
    if (floatingDockViewController)
    {
      [v44 addObject:floatingDockViewController];
    }

    v47 = [[SBHIconStylePreviewManager alloc] initWithTraitOverridableObjects:v44 iconListViews:listViewsToUpdateDuringColorPicking additionalIconViews:additionalIconViewsToUpdateDuringColorPicking];
    [(SBHIconManager *)self setStylePreviewManager:v47];
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      floatingDockViewController2 = [(SBHIconManager *)self floatingDockViewController];
      parentViewController = [floatingDockViewController2 parentViewController];
      [parentViewController presentViewController:v57 animated:1 completion:0];
    }

    else
    {
      floatingDockViewController2 = [(SBHIconManager *)self rootFolderController];
      [floatingDockViewController2 presentViewController:v57 animated:1 completion:0];
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

- (void)_fetchWallpaperProminentColor:(id)color
{
  colorCopy = color;
  if (colorCopy)
  {
    v10 = colorCopy;
    if (os_variant_has_internal_content())
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v6 = [standardUserDefaults stringForKey:@"KEYNOTE_OVERRIDE_PROMINENT_COLOR"];
      if (v6)
      {
        v7 = [MEMORY[0x1E69DC888] sbh_colorWithHexString:v6];
        if (v7)
        {
          v8 = v7;
          v10[2](v10, v7);

LABEL_10:
          colorCopy = v10;
          goto LABEL_11;
        }
      }
    }

    standardUserDefaults = [(SBHIconManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [standardUserDefaults iconManagerPreferredProminentPosterColor:self handler:v10];
    }

    else
    {
      orangeColor = [MEMORY[0x1E69DC888] orangeColor];
      v10[2](v10, orangeColor);
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (id)listViewsToUpdateDuringColorPicking
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  currentRootIconList = [(SBHIconManager *)self currentRootIconList];
  if (currentRootIconList)
  {
    [v3 addObject:currentRootIconList];
  }

  dockListView = [(SBHIconManager *)self dockListView];
  if (dockListView)
  {
    [v3 addObject:dockListView];
  }

  floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__SBHIconManager_listViewsToUpdateDuringColorPicking__block_invoke;
  v15[3] = &unk_1E80908B0;
  v7 = v3;
  v16 = v7;
  [floatingDockViewController enumerateIconListsUsingBlock:v15];
  todayViewControllers = [(SBHIconManager *)self todayViewControllers];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__SBHIconManager_listViewsToUpdateDuringColorPicking__block_invoke_2;
  v13[3] = &unk_1E80908D8;
  v9 = v7;
  v14 = v9;
  [todayViewControllers enumerateObjectsUsingBlock:v13];

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
  _effectiveAppPredictionViewControllersForUniqueIdentifier = [(SBHIconManager *)self _effectiveAppPredictionViewControllersForUniqueIdentifier];
  objectEnumerator = [_effectiveAppPredictionViewControllersForUniqueIdentifier objectEnumerator];

  v6 = [objectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(objectEnumerator);
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

      v7 = [objectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
  libraryPodIconViewIfLoaded = [floatingDockViewController libraryPodIconViewIfLoaded];
  if (libraryPodIconViewIfLoaded)
  {
    [v3 addObject:libraryPodIconViewIfLoaded];
  }

  return v3;
}

- (void)enumerateViewsToUpdateDuringColorPickingUsingListViewBlock:(id)block iconViewBlock:(id)viewBlock
{
  v42 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  viewBlockCopy = viewBlock;
  currentRootIconList = [(SBHIconManager *)self currentRootIconList];
  if (currentRootIconList)
  {
    blockCopy[2](blockCopy, currentRootIconList);
    if (viewBlockCopy)
    {
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __91__SBHIconManager_enumerateViewsToUpdateDuringColorPickingUsingListViewBlock_iconViewBlock___block_invoke;
      v39[3] = &unk_1E8090008;
      v40 = viewBlockCopy;
      [currentRootIconList enumerateDisplayedIconViewsUsingBlock:v39];
    }
  }

  v24 = currentRootIconList;
  dockListView = [(SBHIconManager *)self dockListView];
  if (dockListView)
  {
    blockCopy[2](blockCopy, dockListView);
    if (viewBlockCopy)
    {
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __91__SBHIconManager_enumerateViewsToUpdateDuringColorPickingUsingListViewBlock_iconViewBlock___block_invoke_2;
      v37[3] = &unk_1E8090008;
      v38 = viewBlockCopy;
      [dockListView enumerateDisplayedIconViewsUsingBlock:v37];
    }
  }

  floatingDockViewController = [(SBHIconManager *)self floatingDockViewController];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __91__SBHIconManager_enumerateViewsToUpdateDuringColorPickingUsingListViewBlock_iconViewBlock___block_invoke_3;
  v34[3] = &unk_1E8090900;
  v11 = blockCopy;
  v35 = v11;
  v12 = viewBlockCopy;
  v36 = v12;
  [floatingDockViewController enumerateIconListsUsingBlock:v34];
  todayViewControllers = [(SBHIconManager *)self todayViewControllers];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __91__SBHIconManager_enumerateViewsToUpdateDuringColorPickingUsingListViewBlock_iconViewBlock___block_invoke_5;
  v31[3] = &unk_1E8090928;
  v23 = v11;
  v32 = v23;
  v14 = v12;
  v33 = v14;
  [todayViewControllers enumerateObjectsUsingBlock:v31];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  _effectiveAppPredictionViewControllersForUniqueIdentifier = [(SBHIconManager *)self _effectiveAppPredictionViewControllersForUniqueIdentifier];
  objectEnumerator = [_effectiveAppPredictionViewControllersForUniqueIdentifier objectEnumerator];

  v17 = [objectEnumerator countByEnumeratingWithState:&v27 objects:v41 count:16];
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
          objc_enumerationMutation(objectEnumerator);
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

      v18 = [objectEnumerator countByEnumeratingWithState:&v27 objects:v41 count:16];
    }

    while (v18);
  }

  if (v14)
  {
    libraryPodIconViewIfLoaded = [floatingDockViewController libraryPodIconViewIfLoaded];
    if (libraryPodIconViewIfLoaded)
    {
      (*(v14 + 2))(v14, libraryPodIconViewIfLoaded);
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
  _fetchCurrentStyleConfiguration = [(SBHIconManager *)self _fetchCurrentStyleConfiguration];
  if (!_fetchCurrentStyleConfiguration)
  {
    getPUIMutableStylePickerHomeScreenConfigurationClass();
    v4 = objc_opt_new();
    iconTintColor = [(SBHomeScreenDefaults *)self->_homeScreenDefaults iconTintColor];

    if (iconTintColor)
    {
      iconTintColor2 = [(SBHomeScreenDefaults *)self->_homeScreenDefaults iconTintColor];
      [v4 setAccentColor:iconTintColor2];

      [v4 setStyleType:3];
    }

    _fetchCurrentStyleConfiguration = [v4 copy];
  }

  interfaceOrientation = [(SBHIconManager *)self interfaceOrientation];
  v8 = [[SBHDefaultIconListLayoutProvider alloc] initWithLayoutOptions:0];
  v9 = [(SBHDefaultIconListLayoutProvider *)v8 layoutForIconLocation:@"SBIconLocationRoot"];
  [v9 iconImageInfo];
  v11 = v10;
  v13 = v12;
  [v9 iconImageInfo];
  v42 = v14;
  v15 = SBHIconListLayoutListIconSpacing(v9, interfaceOrientation);
  v17 = v16;
  [v9 layoutInsetsForOrientation:interfaceOrientation];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [_fetchCurrentStyleConfiguration layoutInsets];
  v32 = v29 == v21 && v26 == v19 && v28 == v25 && v27 == v23;
  if (!v32 || (([_fetchCurrentStyleConfiguration iconSpacing], v34 == v15) ? (v35 = v33 == v17) : (v35 = 0), !v35 || ((objc_msgSend(_fetchCurrentStyleConfiguration, "iconSize"), v37 == v11) ? (v38 = v36 == v13) : (v38 = 0), !v38 || (objc_msgSend(_fetchCurrentStyleConfiguration, "iconContinuousCornerRadius"), (BSFloatEqualToFloat() & 1) == 0))))
  {
    v39 = [_fetchCurrentStyleConfiguration mutableCopy];
    [v39 setIconSize:{v11, v13}];
    [v39 setIconContinuousCornerRadius:v42];
    [v39 setLayoutInsets:{v19, v21, v23, v25}];
    [v39 setIconSpacing:{v15, v17}];
    v40 = [v39 copy];

    _fetchCurrentStyleConfiguration = v40;
  }

  return _fetchCurrentStyleConfiguration;
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  settingsCopy = settings;
  keyCopy = key;
  homeScreenSettings = [(SBHIconManager *)self homeScreenSettings];

  if (homeScreenSettings == settingsCopy)
  {
    if ([keyCopy isEqualToString:@"usesMinimumViableHomeScreen"])
    {
      [(SBHIconManager *)self tearDownAndResetRootIconLists];
    }
  }

  else
  {
    rootFolderSettings = [(SBHIconManager *)self rootFolderSettings];

    if (rootFolderSettings == settingsCopy)
    {
      rootFolderSettings2 = [(SBHIconManager *)self rootFolderSettings];
      if ([keyCopy isEqualToString:@"adjustableLayoutEnabled"])
      {
        isAdjustableLayoutEnabled = [rootFolderSettings2 isAdjustableLayoutEnabled];
        v14 = off_1E8086BC0;
        if (!isAdjustableLayoutEnabled)
        {
          v14 = off_1E8086CC8;
        }

        v15 = [objc_alloc(*v14) initWithLayoutOptions:{-[SBHIconManager listLayoutProviderLayoutOptions](self, "listLayoutProviderLayoutOptions")}];
        [(SBHIconManager *)self setListLayoutProvider:v15];
      }

      else if ([rootFolderSettings2 shouldRebuildLayoutOnChangesToValueForKey:keyCopy] && objc_msgSend(rootFolderSettings2, "isAdjustableLayoutEnabled"))
      {
        [(SBHIconManager *)self tearDownAndResetRootIconLists];
      }
    }

    else
    {
      badgeParallaxSettings = [(SBHIconManager *)self badgeParallaxSettings];

      if (badgeParallaxSettings == settingsCopy)
      {
        [(SBHIconManager *)self enumerateKnownIconViewsUsingBlock:&__block_literal_global_1168];
      }

      else
      {
        widgetIntroductionSettings = [(SBHIconManager *)self widgetIntroductionSettings];

        if (widgetIntroductionSettings == settingsCopy)
        {
          if ([keyCopy isEqualToString:@"showWidgetIntroConvenienceControl"])
          {
            if ([(SBHIconManager *)self prototypeSettingShowWidgetIntroduction])
            {
              homeScreenDefaults = [(SBHIconManager *)self homeScreenDefaults];
              [homeScreenDefaults setShouldAddDefaultWidgetsToHomeScreen:1];

              homeScreenDefaults2 = [(SBHIconManager *)self homeScreenDefaults];
              [homeScreenDefaults2 setShouldShowWidgetIntroductionPopover:1];

              if (![(SBHIconManager *)self rootFolderContainsWidgets])
              {
                [(SBHIconManager *)self addDefaultFirstPageWidgetsToHomeScreen:1];
                [(SBHIconManager *)self addDefaultSecondPageWidgetsToHomeScreen:0];
              }

              homeScreenDefaults3 = [(SBHIconManager *)self homeScreenDefaults];
              [homeScreenDefaults3 setShouldAddDefaultWidgetsToHomeScreen:0];

              homeScreenDefaults4 = [(SBHIconManager *)self homeScreenDefaults];
              [homeScreenDefaults4 setShouldShowWidgetIntroductionPopover:0];
            }

            else
            {
              [(SBHIconManager *)self undoDefaultWidgets:0];
            }
          }

          else if ([keyCopy isEqualToString:@"showXLTVWidget"])
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
          legibilityLabelSettings = [(SBHIconManager *)self legibilityLabelSettings];

          if (legibilityLabelSettings == settingsCopy)
          {
            [(SBIconLabelImageCache *)self->_labelImageCache removeAllObjects];
            [(SBHIconManager *)self _updateLegibilitySettings];
          }
        }
      }
    }
  }
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHIconManager *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  v5 = [v4 appendBool:-[SBHIconManager isEditing](self withName:{"isEditing"), @"isEditing"}];
  iconModel = [(SBHIconManager *)self iconModel];
  v7 = [v4 appendObject:iconModel withName:@"model"];

  listLayoutProvider = [(SBHIconManager *)self listLayoutProvider];
  v9 = [v4 appendObject:listLayoutProvider withName:@"listLayoutProvider"];

  rootViewController = [(SBHIconManager *)self rootViewController];
  v11 = [v4 appendObject:rootViewController withName:@"rootViewController"];

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
  succinctDescriptionBuilder = [(SBHIconManager *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
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
  rootFolder = [(SBHIconManager *)self rootFolder];
  [v3 bs_safeAddObject:rootFolder];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  _libraryViewControllers = [(SBHIconManager *)self _libraryViewControllers];
  v6 = [_libraryViewControllers countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(_libraryViewControllers);
        }

        categoriesRootFolder = [*(*(&v15 + 1) + 8 * i) categoriesRootFolder];
        [v3 bs_safeAddObject:categoriesRootFolder];
      }

      v7 = [_libraryViewControllers countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (id)_dumpRootFolderForStateCapture:(id)capture
{
  captureCopy = capture;
  badgeBehaviorProvider = [captureCopy badgeBehaviorProvider];
  v6 = objc_opt_new();
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p>", objc_opt_class(), badgeBehaviorProvider];
  [v6 setObject:v7 forKeyedSubscript:@"delegate"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:badgeBehaviorProvider != 0];
  [v6 setObject:v8 forKeyedSubscript:@"delegate supports badge checking"];

  if (badgeBehaviorProvider)
  {
    v9 = objc_opt_new();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __49__SBHIconManager__dumpRootFolderForStateCapture___block_invoke;
    v14[3] = &unk_1E808D9B0;
    v14[4] = self;
    v15 = v9;
    v10 = v9;
    [captureCopy enumerateAllIconsWithOptions:1 usingBlock:v14];
    v11 = [v10 copy];
    [v6 setObject:v11 forKeyedSubscript:@"icons supporting badges"];
  }

  v12 = [captureCopy description];
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
  rootFolder = [(SBHIconManager *)self rootFolder];
  [rootFolder enumerateAllIconsWithOptions:1 usingBlock:&__block_literal_global_1221];
}

void __51__SBHIconManager_updateIconViewAccessoryVisibility__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (([v2 isFolderIcon] & 1) == 0)
  {
    [v2 noteBadgeDidChange];
  }
}

- (void)resizeGestureHandler:(id)handler didFinishWithGridSizeClass:(id)class
{
  classCopy = class;
  iconView = [handler iconView];
  icon = [iconView icon];
  gridSizeClass = [icon gridSizeClass];
  if ([icon isWidgetIcon] && gridSizeClass != classCopy && (objc_msgSend(gridSizeClass, "isEqualToString:", classCopy) & 1) == 0)
  {
    [(SBHIconManager *)self changeSizeOfWidgetIcon:icon toSizeClass:classCopy animated:0 completionHandler:0];
  }

  [(SBHIconManager *)self _removeReasonToNotResetEndEditingTimer:@"widget resize"];
}

- (id)resizeGestureHandler:(id)handler intentForWidget:(id)widget
{
  widgetCopy = widget;
  iconView = [handler iconView];
  icon = [iconView icon];

  v9 = 0;
  if ([icon isWidgetIcon] && icon)
  {
    v9 = [(SBHIconManager *)self _intentForWidget:widgetCopy ofIcon:icon creatingIfNecessary:1];
  }

  return v9;
}

- (id)resizeGestureHandler:(id)handler viewControllerForIconDataSource:(id)source icon:(id)icon gridSizeClass:(id)class
{
  classCopy = class;
  iconCopy = icon;
  sourceCopy = source;
  iconView = [handler iconView];
  location = [iconView location];
  v15 = [(SBHIconManager *)self _customViewControllerForResizingIcon:iconCopy gridSizeClass:classCopy dataSource:sourceCopy location:location];

  return v15;
}

- (id)iconSizeChangeAnimator:(id)animator intentForWidget:(id)widget
{
  widgetCopy = widget;
  iconView = [animator iconView];
  icon = [iconView icon];

  v9 = 0;
  if ([icon isWidgetIcon] && icon)
  {
    v9 = [(SBHIconManager *)self _intentForWidget:widgetCopy ofIcon:icon creatingIfNecessary:1];
  }

  return v9;
}

- (id)iconSizeChangeAnimator:(id)animator viewControllerForIconDataSource:(id)source icon:(id)icon gridSizeClass:(id)class
{
  classCopy = class;
  iconCopy = icon;
  sourceCopy = source;
  iconView = [animator iconView];
  location = [iconView location];
  v15 = [(SBHIconManager *)self _customViewControllerForResizingIcon:iconCopy gridSizeClass:classCopy dataSource:sourceCopy location:location];

  return v15;
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__SBHIconManager_appProtectionSubjectsChanged_forSubscription___block_invoke;
  v7[3] = &unk_1E8088F18;
  v8 = subscriptionCopy;
  selfCopy = self;
  v6 = subscriptionCopy;
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
  v2 = *self;
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