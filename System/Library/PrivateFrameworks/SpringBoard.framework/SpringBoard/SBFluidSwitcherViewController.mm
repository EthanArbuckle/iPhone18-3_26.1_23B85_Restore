@interface SBFluidSwitcherViewController
+ (id)_largeGridSizeClassesForIconZoom;
+ (id)_mediumGridSizeClassesForIconZoom;
- (BOOL)_allowsTitleItemsForAppLayout:(id)layout;
- (BOOL)_appLayoutRequiresLegacyRotationSupport:(id)support;
- (BOOL)_appLayoutWantsToBeKeptInViewHierarchy:(id)hierarchy;
- (BOOL)_controlsHomeScreenContents;
- (BOOL)_controlsWallpaper;
- (BOOL)_hitTestedToTopAffordance:(CGPoint)affordance window:(id)window forLeafAppLayout:(id)layout;
- (BOOL)_isAppLayoutBlurred:(id)blurred;
- (BOOL)_isFrameValid:(CGRect)valid;
- (BOOL)_isLayoutStateSwitcher:(id)switcher allowTransitions:(BOOL)transitions;
- (BOOL)_isPerformingMatchMoveToIconView;
- (BOOL)_isPointValid:(CGPoint)valid;
- (BOOL)_isSwitcherForegroundActive;
- (BOOL)_removeVisibleItemContainerForAppLayout:(id)layout;
- (BOOL)_scrollViewShouldPanGestureTryToBegin:(id)begin;
- (BOOL)_shouldInterruptPresentationAndDismiss;
- (BOOL)_shouldItemContainersUseDarkLabels;
- (BOOL)_shouldLogSwitcherModifierEvent:(id)event;
- (BOOL)_supportsKillingForAppLayout:(id)layout;
- (BOOL)anyDisplayItemForAppLayoutOverlapsFloatingDock:(id)dock;
- (BOOL)anyHighlightedAppLayoutsForContinuousExposeIdentifier:(id)identifier;
- (BOOL)appLayoutContainsAnUnoccludedMaximizedDisplayItem:(id)item;
- (BOOL)appLayoutContainsOnlyResizableApps:(id)apps;
- (BOOL)appLayoutRequiresExactSize:(id)size inImageCache:(id)cache;
- (BOOL)assistantWantsDeemphasizedBackdrop;
- (BOOL)canPerformKeyboardShortcutAction:(int64_t)action forBundleIdentifier:(id)identifier orSceneIdentifier:(id)sceneIdentifier;
- (BOOL)canPerformSwitcherShortcutAction:(int64_t)action forSceneIdentifier:(id)identifier;
- (BOOL)canSelectContainer:(id)container numberOfTaps:(int64_t)taps;
- (BOOL)canShowMenuBar;
- (BOOL)canZoomDisplayItem:(id)item inAppLayout:(id)layout;
- (BOOL)displayItemDisablesKillingInSwitcher:(id)switcher;
- (BOOL)displayItemIsClassic:(id)classic;
- (BOOL)displayItemPrefersStatusBarHidden:(id)hidden;
- (BOOL)displayItemShouldGetSolariumStyle:(id)style;
- (BOOL)displayItemSupportsCenterRole:(id)role;
- (BOOL)displayItemSupportsMedusa:(id)medusa;
- (BOOL)displayItemSupportsMultipleWindowsIndicator:(id)indicator;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)handleHeadsetButtonPress:(BOOL)press;
- (BOOL)handleHomeButtonDoublePress;
- (BOOL)handleHomeButtonLongPress;
- (BOOL)handleHomeButtonPress;
- (BOOL)handleLockButtonPress;
- (BOOL)handleVoiceCommandButtonPress;
- (BOOL)handleVolumeDownButtonPress;
- (BOOL)handleVolumeUpButtonPress;
- (BOOL)hasMultipleDisplays;
- (BOOL)historianModifier:(id)modifier shouldRecordEvent:(id)event;
- (BOOL)hitTestedToFloatingElement:(CGPoint)element window:(id)window ofItemContainer:(id)container;
- (BOOL)hitTestedToHomeAffordance:(CGPoint)affordance window:(id)window ofItemContainer:(id)container;
- (BOOL)hitTestedToSlideOverTongue:(CGPoint)tongue window:(id)window;
- (BOOL)hitTestedToSplitViewHandle:(CGPoint)handle window:(id)window;
- (BOOL)hitTestedToTopAffordance:(CGPoint)affordance window:(id)window ofItemContainer:(id)container;
- (BOOL)homeScreenHasModalLibraryOpenInForeground;
- (BOOL)homeScreenHasOpenFolder;
- (BOOL)homeScreenHasOpenFolderInLocation:(id)location;
- (BOOL)homeScreenHasWidgetCenterOrLibraryOpen;
- (BOOL)homeScreenIsOnFirstPage;
- (BOOL)isAppLayoutMostRecentRepresentationOfDisplayItems:(id)items;
- (BOOL)isAppLayoutVisibleInSwitcherBounds:(id)bounds;
- (BOOL)isAssistantKeyboardVisible;
- (BOOL)isDevicePad;
- (BOOL)isDisplayEmbedded;
- (BOOL)isEdgeProtectedForHomeGestureAtEdgeLocation:(double)location edge:(unint64_t)edge;
- (BOOL)isEphemeralSwitcher;
- (BOOL)isFloatingDockFullyPresented;
- (BOOL)isFloatingDockGesturePossible;
- (BOOL)isIconForIconZoomingView:(id)view displayedInLocations:(id)locations;
- (BOOL)isInMedusaCapableSpace;
- (BOOL)isLayoutRoleContentReady:(int64_t)ready inAppLayout:(id)layout;
- (BOOL)isLocationInSafeArea:(CGPoint)area;
- (BOOL)isMedusaCapable;
- (BOOL)isShieldingApplicationWithBundleIdentifier:(id)identifier;
- (BOOL)isShowingSpotlightOrTodayView;
- (BOOL)isSplitViewSupported;
- (BOOL)isStatusBarHiddenForAppLayout:(id)layout;
- (BOOL)isStatusBarPartPreferredHiddenByApp:(unint64_t)app;
- (BOOL)isStatusBarStyleControlledBySystem;
- (BOOL)isStudyLogEnabled;
- (BOOL)isSystemApertureTransitionTargetForSceneIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier isPortrait:(BOOL)portrait;
- (BOOL)isSystemAssistantExperienceEnabled;
- (BOOL)isSystemAssistantExperiencePersistentSiriEnabled;
- (BOOL)itemContainerForAppLayoutOverlapsFloatingDock:(id)dock;
- (BOOL)prefersStripHiddenAndDisabled;
- (BOOL)prioritizesSortOrderForAppLayout:(id)layout;
- (BOOL)sceneHandleDisablesKillingInSwitcher:(id)switcher;
- (BOOL)shouldAddAppLayoutToFront:(id)front forTransitionWithContext:(id)context transitionCompleted:(BOOL)completed;
- (BOOL)shouldAnimateInsertionOfAppLayouts:(id)layouts atIndexes:(id)indexes;
- (BOOL)shouldMatchMoveIconZoomingView:(id)view;
- (BOOL)shouldMorphToPIPForTransitionContext:(id)context;
- (BOOL)snapshotView:(id)view shouldShowAppClipOverlayForLayout:(id)layout;
- (BOOL)switcherShelfViewController:(id)controller hitTestedToTopAffordance:(CGPoint)affordance window:(id)window;
- (BOOL)underlayAccessoryViewShouldBeginPointerInteraction:(id)interaction;
- (BSAnimationSettings)defaultTransitionAnimationSettings;
- (CGAffineTransform)transformForCardUnderSheetForBoundsSize:(SEL)size;
- (CGPoint)_scrollView:(id)view adjustedOffsetForOffset:(CGPoint)offset translation:(CGPoint)translation startPoint:(CGPoint)point locationInView:(CGPoint)inView horizontalVelocity:(double *)velocity verticalVelocity:(double *)verticalVelocity;
- (CGPoint)gestureHandlingModifier:(id)modifier averageVelocityOverDuration:(double)duration;
- (CGPoint)homeScreenIconBadgeOffsetForAppLayout:(id)layout;
- (CGPoint)morphToPIPTargetCenter;
- (CGPoint)scrollViewContentOffset;
- (CGPoint)scrollableQueryModifier:(id)modifier contentOffsetVelocityConsideringNextContentOffset:(CGPoint)offset;
- (CGPoint)scrollableQueryModifier:(id)modifier convertScrollViewPointToContainerViewCoordinateSpace:(CGPoint)space;
- (CGRect)_frameForCenterItemInInterfaceOrientation:(int64_t)orientation centerConfiguration:(int64_t)configuration;
- (CGRect)_frameForFloatingAppLayoutInInterfaceOrientation:(int64_t)orientation floatingConfiguration:(int64_t)configuration;
- (CGRect)_frameForItemWithRole:(int64_t)role inMainAppLayout:(id)layout interfaceOrientation:(int64_t)orientation;
- (CGRect)_iconImageFrameForIconView:(id)view;
- (CGRect)_leadingStatusBarPartFrame;
- (CGRect)_trailingStatusBarPartFrame;
- (CGRect)bounds;
- (CGRect)completedTransitionFrameForAppLayout:(id)layout;
- (CGRect)containerViewBounds;
- (CGRect)containerViewBoundsForHomeGrabberView:(id)view;
- (CGRect)currentGenieFrameForVisibleAppLayout:(id)layout;
- (CGRect)frameForPageViewOfContainer:(id)container fullyPresented:(BOOL)presented;
- (CGRect)homeScreenIconFrameForAppLayout:(id)layout;
- (CGRect)iconImageFrameForAppLayout:(id)layout;
- (CGRect)layoutFrameForItemWithRole:(int64_t)role inAppLayout:(id)layout interfaceOrientation:(int64_t)orientation forSnapshotView:(id)view;
- (CGRect)leftStatusBarPartIntersectionRegion;
- (CGRect)morphToPIPClippingFrame;
- (CGRect)overlayAccessoryViewFrameForIconOverlayView:(id)view fullPresented:(BOOL)presented;
- (CGRect)preferredFrameForLayoutRole:(int64_t)role inAppLayout:(id)layout bounds:(CGRect)bounds interfaceOrientation:(int64_t)orientation;
- (CGRect)rightStatusBarPartIntersectionRegion;
- (CGRect)scaledFrameForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (CGRect)shelfItemFrameForAppLayout:(id)layout inShelf:(id)shelf;
- (CGRect)switcherShelfViewController:(id)controller frameForCenterItemWithConfiguration:(int64_t)configuration interfaceOrientation:(int64_t)orientation;
- (CGRect)switcherShelfViewController:(id)controller frameForFloatingAppLayoutInInterfaceOrientation:(int64_t)orientation floatingConfiguration:(int64_t)configuration;
- (CGRect)switcherShelfViewController:(id)controller frameForItemWithRole:(int64_t)role inMainAppLayout:(id)layout interfaceOrientation:(int64_t)orientation;
- (CGRect)systemApertureDefaultFrame;
- (CGSize)homeScreenIconBadgeSizeForAppLayout:(id)layout;
- (CGSize)maxSizeForDisplayItem:(id)item inContainerBounds:(CGRect)bounds layoutGrid:(id)grid layoutRestrictionInfo:(id)info contentOrientation:(int64_t)orientation screenScale:(double)scale windowingConfiguration:(id)configuration;
- (CGSize)minSizeForDisplayItem:(id)item inContainerBounds:(CGRect)bounds layoutGrid:(id)grid layoutRestrictionInfo:(id)info contentOrientation:(int64_t)orientation screenScale:(double)scale windowingConfiguration:(id)configuration;
- (CGSize)preferredSceneSizeThatFits:(CGSize)fits displayItem:(id)item;
- (CGSize)sizeForAppLayout:(id)layout fromProvider:(id)provider;
- (CGSize)sizeOfDisplayItem:(id)item inDisplayWithOrdinal:(int64_t)ordinal;
- (CGSize)snapshotSizeForItemWithRole:(int64_t)role inAppLayout:(id)layout interfaceOrientation:(int64_t)orientation inImageCache:(id)cache;
- (SBFluidSwitcherViewController)init;
- (SBFluidSwitcherViewController)initWithCoder:(id)coder;
- (SBFluidSwitcherViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SBFluidSwitcherViewController)initWithPersonality:(id)personality liveContentOverlayCoordinator:(id)coordinator dataSource:(id)source delegate:(id)delegate debugName:(id)name;
- (SBSwitcherContentViewControllerDataSource)dataSource;
- (SBSwitcherContentViewControllerDelegate)delegate;
- (SBSwitcherGenieGlassHighlight)homeScreenGlassHighlightForAppLayout:(SEL)layout;
- (SBViewMorphAnimator)pipViewMorphAnimator;
- (SBWindowControlsLayout)defaultWindowControlsLayoutForDisplayItem:(SEL)item frame:(id)frame containerBounds:(CGRect)bounds;
- (SBWindowControlsLayout)windowControlsLayoutForLiveContentOverlay:(SEL)overlay;
- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)_delayForTransitionWithContext:(id)context animated:(BOOL)animated;
- (double)bestSupportedDefaultCornerRadiusForAppLayout:(id)layout;
- (double)bestSupportedDefaultCornerRadiusForDisplayItem:(id)item;
- (double)contentAspectRatio;
- (double)contentPageViewScaleForAppLayout:(id)layout;
- (double)continuousExposeStripProgress;
- (double)cornerRadiusForAppLayout:(id)layout;
- (double)currentStatusBarHeightOfContainer:(id)container;
- (double)displayCornerRadius;
- (double)floatingDockHeight;
- (double)floatingDockPresentedHeight;
- (double)floatingDockViewTopMargin;
- (double)homeScreenIconCornerRadiusForAppLayout:(id)layout;
- (double)homeScreenIconScaleForAppLayout:(id)layout;
- (double)iconCornerRadiusForAppLayout:(id)layout;
- (double)iconScaleForAppLayout:(id)layout;
- (double)minimumHomeScreenScale;
- (double)morphToPIPClippingCornerRadius;
- (double)morphToPIPTargetScale;
- (double)presentationValueForAnimatableProperty:(id)property;
- (double)scaleForAppLayout:(id)layout;
- (double)screenScale;
- (double)shelfItemCornerRadiusForAppLayout:(id)layout inShelf:(id)shelf;
- (double)shelfItemScaleForAppLayout:(id)layout inShelf:(id)shelf;
- (double)shelfPresentedHeight;
- (double)snapshotScaleForSceneHandle:(id)handle;
- (double)splitViewInnerCornerRadius;
- (double)statusBarHeight;
- (double)statusBarSafeAreaInsetForDisplayItem:(id)item;
- (double)windowLevelForModifierTimelineController:(id)controller;
- (id)_activeTransientOverlayPresentedAppLayout;
- (id)_adjustedAppLayoutForItemContainerAtLocation:(CGPoint)location environment:(int64_t)environment;
- (id)_adjustedGestureEventForGestureEvent:(id)event fromGestureManager:(id)manager;
- (id)_animatablePropertyWithNotifications:(id)notifications progressEventType:(Class)type;
- (id)_appLayoutForWorkspaceTransientOverlay:(id)overlay;
- (id)_appLayoutFromLayoutElement:(id)element;
- (id)_applicationForDisplayItem:(id)item;
- (id)_convertWindowDragEvent:(id)event fromSwitcherContentViewController:(id)controller;
- (id)_createWorkspaceTransientOverlayForAppLayout:(id)layout;
- (id)_demoLayoutAttributesForDisplayItem:(id)item inAppLayout:(id)layout;
- (id)_dequeueOverlayAccessoryViewFromReusePool;
- (id)_dequeueUnderlayAccessoryViewFromReusePool;
- (id)_firstZOrderedSubviewViewAtLocation:(CGPoint)location;
- (id)_floatingDockController;
- (id)_floatingDockIconLocationForTransitionSource:(int64_t)source;
- (id)_gestureManager;
- (id)_homeScreenAppearanceController;
- (id)_iconForWorkspaceEntity:(id)entity;
- (id)_iconLocationsForActivationSource:(int64_t)source;
- (id)_iconManager;
- (id)_iconViewForDisplayItem:(id)item isVisible:(BOOL *)visible;
- (id)_iconZoomContextProvider;
- (id)_icrIconLayerIfAnyInLayer:(id)layer;
- (id)_itemContainerAtLocation:(CGPoint)location ignoringDraggedItem:(id)item environment:(int64_t)environment;
- (id)_itemContainerNearestLocation:(CGPoint)location environment:(int64_t)environment prioritizeForegroundedItemContainers:(BOOL)containers;
- (id)_keyboardFocusableLiveAppLayoutsMatchingFocusedApp:(BOOL)app foundAtIndex:(int64_t *)index;
- (id)_leafAppLayoutForItemContainerAtLocation:(CGPoint)location environment:(int64_t)environment;
- (id)_leafAppLayoutInLiveContentOverlaysOwningStatusBarPart:(unint64_t)part;
- (id)_leafAppLayoutInLiveContentOverlaysWithLayoutRole:(int64_t)role;
- (id)_leafAppLayoutsInAppLayout:(id)layout intersectingHomeGrabber:(id)grabber;
- (id)_liveContentOverlayForHandlingHardwareButtonEvents;
- (id)_modifierViolatingTest:(id)test forAnchorPointForIndex:(int64_t)index;
- (id)_modifierViolatingTest:(id)test forFrameForIndex:(int64_t)index;
- (id)_modifierViolatingTest:(id)test forFrameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds;
- (id)_modifierViolatingTest:(id)test forPerspectiveAngleForIndex:(int64_t)index;
- (id)_modifierViolatingTest:(id)test forPerspectiveAngleForLayoutRole:(int64_t)role inAppLayout:(id)layout withPerspectiveAngle:(CGPoint)angle;
- (id)_modifierViolatingValidFloatForScaleForIndex:(int64_t)index;
- (id)_modifierViolatingValidFloatForScaleForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (id)_orderedViewsForLayoutElement:(id)element excludeSwitcherHostedShelves:(BOOL)shelves;
- (id)_sbWindowScene;
- (id)_sceneDeactivationPredicateMatchingAppLayouts:(id)layouts;
- (id)_sceneRelevancyManager;
- (id)_searchPresenter;
- (id)_spaceContainingAppLayout:(id)layout;
- (id)_spacesWithVisibleHomeAffordances;
- (id)_transitionEventForTransitionWithContext:(id)context identifier:(id)identifier phase:(unint64_t)phase animated:(BOOL)animated;
- (id)_unadjustedAppLayouts;
- (id)_unadjustedLeafAppLayouts;
- (id)_webClipIdentifierForAppClipBundleIdentifier:(id)identifier sceneIdentifier:(id)sceneIdentifier;
- (id)_windowManagementContext;
- (id)_workspaceEntityForBundleIdentifier:(id)identifier inTransitionContext:(id)context;
- (id)activatingDisplayItemForAppLayout:(id)layout;
- (id)animationControllerForTransitionRequest:(id)request;
- (id)appLayoutAtLocation:(CGPoint)location withDraggedItem:(id)item environment:(int64_t)environment;
- (id)appLayoutByBringingItemToFront:(id)front inAppLayout:(id)layout;
- (id)appLayoutContainingAppLayout:(id)layout;
- (id)appLayoutForLeafAppLayout:(id)layout;
- (id)appLayoutsContainedWithinAppLayout:(id)layout;
- (id)appLayoutsForContinuousExposeIdentifier:(id)identifier;
- (id)appLayoutsForSwitcherShelfViewController:(id)controller;
- (id)beginHidingAppLayout:(id)layout forReason:(id)reason;
- (id)currentTargetVelocityValueForVisibleAppLayout:(id)layout key:(id)key;
- (id)currentVelocityValueForVisibleAppLayout:(id)layout key:(id)key;
- (id)defaultFocusItem;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)desktopSpaceDisplayItems;
- (id)deviceApplicationSceneHandleForDisplayItem:(id)item;
- (id)displayConfiguration;
- (id)displayConfigurationForImageCache:(id)cache;
- (id)displayConfigurationsOfOtherDisplays;
- (id)displayIdentityForSnapshotView:(id)view;
- (id)displayItemInSlideOver;
- (id)draggingAppLayoutsForWindowDrag;
- (id)entityRemovalSettings;
- (id)homeGestureSettings;
- (id)homeGrabberViewForAppLayout:(id)layout;
- (id)homeScreenIconGridSizeClassForAppLayout:(id)layout;
- (id)homeScreenIconLocationForAppLayout:(id)layout;
- (id)iconForAppLayout:(id)layout;
- (id)iconForDisplayItem:(id)item;
- (id)iconGridSizeClassForAppLayout:(id)layout;
- (id)iconLocationForAppLayout:(id)layout;
- (id)iconViewForAppLayout:(id)layout;
- (id)iconZoomingViewContainerForIconZoomingView:(id)view;
- (id)keyboardFocusedAppLayout;
- (id)lastInteractedItemsInAppLayout:(id)layout;
- (id)layoutAttributesForDisplayItem:(id)item inAppLayout:(id)layout;
- (id)layoutAttributesMapForAppLayout:(id)layout;
- (id)layoutAttributesProviderForSnapshotView:(id)view;
- (id)layoutRestrictionInfoForItem:(id)item;
- (id)leadingStatusBarStyleRequest;
- (id)liveOverlayForSceneHandle:(id)handle;
- (id)liveOverlayForSceneIdentifier:(id)identifier;
- (id)liveOverlayForSceneIdentityToken:(id)token;
- (id)liveScenesIdentityTokens;
- (id)matchingIconZoomingViewForIconZoomingView:(id)view;
- (id)maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:(id)layout ignoreOcclusion:(BOOL)occlusion ignoreCentering:(BOOL)centering;
- (id)overlayAccessoryViewAdditionalGenieContentViews:(id)views;
- (id)preferredFocusEnvironments;
- (id)proposedAppLayoutsForWindowDrag;
- (id)sceneHandleProviderForImageCache:(id)cache;
- (id)sceneHandleProviderForSnapshotView:(id)view;
- (id)shelfFocusedDisplayItems;
- (id)sourceLeafAppLayoutForCenterItem:(id)item;
- (id)statusBarStyleAttributesForScene:(id)scene;
- (id)succinctDescription;
- (id)switcherShelfViewController:(id)controller liveViewForAppLayout:(id)layout;
- (id)trailingStatusBarStyleRequest;
- (id)viewControllerForTransientOverlayAppLayout:(id)layout fromProvider:(id)provider;
- (id)windowingConfiguration;
- (id)windowingConfigurationForInterfaceOrientation:(int64_t)orientation;
- (id)zOrderedItemsInAppLayout:(id)layout;
- (int64_t)_bestSupportedHomeAffordanceOrientationForOrientation:(int64_t)orientation inAppLayout:(id)layout;
- (int64_t)displayOrdinal;
- (int64_t)homeAffordanceOrientationIfMismatchedFromCurrentLayoutState;
- (int64_t)homeScreenInterfaceOrientation;
- (int64_t)nextDisplayItemInteractionTimeForSwitcherShelfViewController:(id)controller;
- (int64_t)numberOfHiddenAppLayoutsForBundleIdentifier:(id)identifier;
- (int64_t)numberOfVisibleAppLayoutsForBundleIdentifier:(id)identifier;
- (int64_t)numberOfVisibleCards;
- (int64_t)orientationForSnapshotOfAppLayout:(id)layout inImageCache:(id)cache;
- (int64_t)preferredWindowControlsPlacementForLeafAppLayout:(id)layout;
- (int64_t)userInterfaceStyle;
- (unint64_t)_itemContainerFooterStyleForAppLayout:(id)layout;
- (unint64_t)assistantModalities;
- (unint64_t)maximumNumberOfScenesOnStage;
- (unint64_t)maximumNumberOfVisibleScenesOnStage;
- (unint64_t)newAppLayoutsGenCount;
- (unint64_t)newContinuousExposeIdentifiersGenerationCount;
- (unint64_t)supportedContentInterfaceOrientationsForItem:(id)item;
- (unint64_t)supportedSizingPoliciesForItem:(id)item inAppLayout:(id)layout;
- (void)SBC2GroupCompletionAnimationDidBegin:(id)begin;
- (void)SBC2GroupCompletionAnimationDidComplete:(id)complete finished:(BOOL)finished retargeted:(BOOL)retargeted;
- (void)__updateImplicitpersonalityInvalidatables;
- (void)_acquireKeyboardSuppressionAssertionForMode:(id)mode;
- (void)_addVisibleItemContainerForAppLayout:(id)layout reusingItemContainerIfExists:(id)exists;
- (void)_applyOcclusionStateToLiveContentOverlay:(id)overlay forLayoutRole:(int64_t)role inAppLayout:(id)layout isTransitioning:(BOOL)transitioning;
- (void)_applyRootContentViewBlurRadiusWithCompletion:(id)completion;
- (void)_applyRootContentViewClippingAndBlurWithCompletion:(id)completion;
- (void)_applyRootContentViewClippingWithCompletion:(id)completion;
- (void)_applyStyleToAppLayout:(id)layout roles:(id)roles completion:(id)completion;
- (void)_applyStyleToLiveContentOverlay:(id)overlay forItemContainer:(id)container atIndex:(unint64_t)index;
- (void)_applyStyleToVisibleItemContainersWithCompletion:(id)completion;
- (void)_applyTouchBehaviorToLiveContentOverlay:(id)overlay forAppLayout:(id)layout;
- (void)_beginRequiringItemContainerShadowPathDisplayLinkForLeafAppLayout:(id)layout killing:(BOOL)killing;
- (void)_blurItemContainer:(id)container blurParameters:(id)parameters withAnimationUpdateMode:(int64_t)mode;
- (void)_cancelInProcessAnimationsWithOptions:(unint64_t)options;
- (void)_cancelWindowMorphingAnimation;
- (void)_configureApplicationAndTransientOverlayDockBehaviorAssertionsForContext:(id)context;
- (void)_configureTransitionRequestForGestureBegin:(id)begin;
- (void)_didSelectHeaderForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (void)_didUpdatePersonality;
- (void)_dispatchEventAndHandleAction:(id)action;
- (void)_enqueueOverlayAccessoryViewInReusePool:(id)pool;
- (void)_enqueueUnderlayAccessoryViewInReusePool:(id)pool;
- (void)_ensureForegroundScenesAreVisible;
- (void)_ensureSubviewOrdering;
- (void)_ensureSubviewOrderingInsideSpace:(id)space;
- (void)_forLoggingOnly_enumerateQueryResponderChainStartingAtModifier:(id)modifier usingBlock:(id)block;
- (void)_handleDismissTapGesture:(id)gesture;
- (void)_handleEventResponse:(id)response;
- (void)_handleKeyboardFrameWillChange:(id)change;
- (void)_handleModifierResponse:(id)response fromEvent:(id)event log:(BOOL)log;
- (void)_handlePlusButtonTapped:(id)tapped;
- (void)_keyboardDidUIPosition:(id)position;
- (void)_keyboardWillHide:(id)hide;
- (void)_keyboardWillShow:(id)show;
- (void)_layoutAppLayout:(id)layout roles:(id)roles completion:(id)completion;
- (void)_layoutContinuousExposeStripTongueAnimated:(BOOL)animated completion:(id)completion;
- (void)_layoutSlideoverTonguesWithCompletion:(id)completion;
- (void)_layoutSubviews_updateVisibleItemsAccessoryViewsLayoutAndStyleWithCompletion:(id)completion;
- (void)_layoutVisibleItemsWithCompletion:(id)completion;
- (void)_layoutVisibleShelvesWithCompletion:(id)completion;
- (void)_makeAppLayoutVisibleForTransitionWithContext:(id)context animated:(BOOL)animated completion:(id)completion;
- (void)_medusaHostedKeyboardWillHideNotification:(id)notification;
- (void)_medusaHostedKeyboardWillShowNotification:(id)notification;
- (void)_navigateFromFocusedAppWindowSceneToNextSceneFromStripInForwardDirection:(BOOL)direction withReachableAppLayouts:(id)layouts;
- (void)_navigateFromFocusedAppWindowSceneToNextSceneInForwardDirection:(BOOL)direction matchFocusedApp:(BOOL)app;
- (void)_noteItemContainerDidUpdateContentClippingWithMode:(int64_t)mode;
- (void)_noteSwitcherDropAnimationCompletedWithContext:(id)context;
- (void)_performActionForPreludeAnimationTokenActionResponse:(id)response;
- (void)_performBlurItemContainerResponse:(id)response;
- (void)_performBlurthroughItemContainerResponse:(id)response;
- (void)_performCancelSystemGesturesResponse:(id)response;
- (void)_performContentViewScaleAnimationForDosido;
- (void)_performCrossfadeIfNeededWithCompletion:(id)completion;
- (void)_performDeferredInitialization;
- (void)_performDestroyDisplayItemResponse:(id)response;
- (void)_performDismissMenuBarResponse:(id)response;
- (void)_performEventResponse:(id)response;
- (void)_performInvalidateContinuousExposeIdentifiersResponse:(id)response;
- (void)_performInvalidateItemContainerBackdropResponse:(id)response;
- (void)_performInvalidateSnapshotCacheResponse:(id)response;
- (void)_performKeyboardShortcutAction:(int64_t)action targetSceneIdentifier:(id)identifier;
- (void)_performModifierCompletionResponse:(id)response;
- (void)_performModifierDismissSiriResponse:(id)response;
- (void)_performModifierEmitSBEventResponse:(id)response;
- (void)_performModifierEmitStudyLogResponse:(id)response;
- (void)_performModifierHapticResponse:(id)response;
- (void)_performModifierIconOverlayVisibilityUpdateResponse:(id)response;
- (void)_performModifierIconViewVisibilityUpdateResponse:(id)response;
- (void)_performModifierInjectVelocityResponse:(id)response;
- (void)_performModifierMatchMoveToDropletResponse:(id)response;
- (void)_performModifierMatchMoveToIconViewResponse:(id)response;
- (void)_performModifierNotifyIconWillZoomDownResponse:(id)response;
- (void)_performModifierPerformTransitionResponse:(id)response;
- (void)_performModifierReachabilityResponse:(id)response;
- (void)_performModifierScrollToAppLayoutResponse:(id)response;
- (void)_performModifierTimerEventResponse:(id)response;
- (void)_performModifierUpdateLayoutResponse:(id)response;
- (void)_performNewWindowSwitcherResponse:(id)response;
- (void)_performPeekMenuBarResponse:(id)response;
- (void)_performPresentContinuousExposeStripEdgeProtectGrabberResponse:(id)response;
- (void)_performRelinquishSystemApertureElementSuppressionResponse:(id)response;
- (void)_performRemoveFromDesktopEventResponse:(id)response;
- (void)_performRequestDismissalForHomeScreenBackgroundTapsResponse:(id)response;
- (void)_performRequestMoveDisplayItemFromDisplaySwitcherEventResponse:(id)response;
- (void)_performRequestSystemApertureElementSuppressionResponse:(id)response;
- (void)_performSetInterfaceOrientationFromUserResizingResponse:(id)response;
- (void)_performShortcutAction:(int64_t)action forDisplayItem:(id)item shortcutSource:(int64_t)source;
- (void)_performSwitcherDropWithContext:(id)context mutationBlock:(id)block;
- (void)_performSystemApertureBounceResponse:(id)response;
- (void)_performSystemApertureStretchResponse:(id)response;
- (void)_performToggleSlideOverForDisplayItemResponse:(id)response;
- (void)_performUpdateContinuousExposeStripsPresentationResponse:(id)response;
- (void)_performUpdateDragPlatterBlurResponse:(id)response;
- (void)_performUpdateMenuBarVisibilityResponse:(id)response;
- (void)_prepareForCrossfadeIfNeeded;
- (void)_rebuildCachedAdjustedAppLayouts;
- (void)_reduceMotionStatusDidChange:(id)change;
- (void)_removeCenterWindowAnimationContextWithKey:(id)key;
- (void)_removeProlongedCursorGestureFloatingDockBehaviorAssertion;
- (void)_removeSearchPresenterObservation;
- (void)_resetItemContainerShadowPathDisplayLink;
- (void)_rotateHomeAffordancesFromInterfaceOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation;
- (void)_sceneUpdateDidChange:(id)change;
- (void)_scrollToAppLayout:(id)layout animated:(BOOL)animated alignment:(int64_t)alignment completion:(id)completion;
- (void)_setCenterWindowActivationContext:(id)context forKey:(id)key;
- (void)_setUpSearchPresenterObservation;
- (void)_setupContentAndTransientViews;
- (void)_setupLiveContentOverlayForAppLayout:(id)layout itemContainer:(id)container overlay:(id)overlay;
- (void)_setupMorphAnimatorIfNeededForEntity:(id)entity pipCoordinator:(id)coordinator appLayout:(id)layout appLayoutBoundingBox:(CGRect)box uniqueID:(id)d direction:(int64_t)direction gestureInitiated:(BOOL)initiated;
- (void)_setupPIPMorphingIfNeededForTransitionContext:(id)context response:(id)response;
- (void)_shadowPathDisplayLinkDidUpdate:(id)update;
- (void)_stopRequiringItemContainerShadowPathDisplayLinkForLeafAppLayout:(id)layout killing:(BOOL)killing;
- (void)_temporarilyHideMatchMovedZoomDownAnimationViewAnimated:(BOOL)animated;
- (void)_toggleFloatingAppVisibility;
- (void)_unblurItemContainer:(id)container blurParameters:(id)parameters withAnimationUpdateMode:(int64_t)mode;
- (void)_updateAccessoryTitlePresenceForAdjustedAppLayout:(id)layout;
- (void)_updateAnimatableProperties;
- (void)_updateAppExposeAccessoryButtonsExtendedTouchRegions;
- (void)_updateAppStatusBarAndHomeGrabberVisibilityAnimated:(BOOL)animated;
- (void)_updateAsyncRenderingAndResizesHostedContext;
- (void)_updateAsynchronousSurfaceRetentionAssertion;
- (void)_updateAutoHideForGrabberAffordancesInAppLayout:(id)layout withResetDelay:(double)delay unhideDelay:(double)unhideDelay;
- (void)_updateAutoHideForItemContainer:(id)container appLayout:(id)layout;
- (void)_updateBezelEffectsPortal;
- (void)_updateBounceIcon;
- (void)_updateChamoisDefaultsObserverIfNeeded;
- (void)_updateContentViewPassesTouchesThrough;
- (void)_updateContentViewSublayerTransform;
- (void)_updateContinuousExposeIdentifiersTransitioningFromAppLayout:(id)layout toAppLayout:(id)appLayout animated:(BOOL)animated;
- (void)_updateContinuousExposeStripTonguePresence;
- (void)_updateContinuousExposeStripsCaptureOnlyBackdropLayer;
- (void)_updateCornerRadiiiAndMaximizedState;
- (void)_updateDockPortal;
- (void)_updateEdgeProtectAndAutoHideForHomeAffordancesInAppLayout:(id)layout withResetDelay:(double)delay unhideDelay:(double)unhideDelay;
- (void)_updateFloatingDockBehaviorAssertion;
- (void)_updateFloatingDockWindowLevelAssertion;
- (void)_updateForegroundAppLayoutsList;
- (void)_updateForegroundAppLayoutsWithNewLayoutState:(id)state;
- (void)_updateHiddenAppLayoutsInShelves;
- (void)_updateHitTestBlockingView;
- (void)_updateHomeScreenBackdropType;
- (void)_updateHomeScreenContentRequirement;
- (void)_updateHomeScreenPointerInteractions;
- (void)_updateImplicitpersonalityInvalidatables;
- (void)_updateItemContainerBackdropPresenceForIndex:(unint64_t)index scale:(double)scale rotation:(double)rotation cornerRadius:(double)radius animationAttributes:(id)attributes completion:(id)completion;
- (void)_updateItemContainerTitlePresenceForLeafAppLayout:(id)layout;
- (void)_updateKeyboardSuppressionAssertion;
- (void)_updateLayoutFromInterfaceOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation;
- (void)_updateLayoutWithCompletion:(id)completion;
- (void)_updateModifierTimelinePresence;
- (void)_updateOverlaysTopAffordanceContextMenu;
- (void)_updatePersonalityDebugLabel;
- (void)_updatePersonalityDebugLabelPresence;
- (void)_updatePlusButtonPresence;
- (void)_updatePlusButtonStyleWithMode:(int64_t)mode completion:(id)completion;
- (void)_updateReopenClosedWindowsButtonPresence;
- (void)_updateReopenClosedWindowsButtonText;
- (void)_updateReopenClosedWindowsButtonWithMode:(int64_t)mode completion:(id)completion;
- (void)_updateResignActiveAssertions;
- (void)_updateScrollViewLayoutSizeAndSpacing;
- (void)_updateScrollViewScrollEnabled;
- (void)_updateShadowPathDisplayLink;
- (void)_updateShadowPathForIndex:(unint64_t)index;
- (void)_updateSlideOverTonguePresence;
- (void)_updateSnapshotCache;
- (void)_updateSnapshotCacheReloadingForActiveInterfaceOrientationChange;
- (void)_updateSoftwareKeyboardVisibleWithKeyboardShowing:(BOOL)showing;
- (void)_updateSpringBoardStatusBarVisibility;
- (void)_updateStatusBarAndHomeGrabberVisibilityForAppLayout:(id)layout animated:(BOOL)animated;
- (void)_updateStyleWithCompletion:(id)completion;
- (void)_updateSuppressingHomeAffordanceBounce;
- (void)_updateSwitcherBackdropType;
- (void)_updateSwitcherBackdropViewPresence;
- (void)_updateSwitcherDimmingViewPresence;
- (void)_updateSystemApertureShadowAssertion;
- (void)_updateTitleItemsLabelColor;
- (void)_updateTitleItemsUserInterfaceStyle;
- (void)_updateTitlePresenceOnItemContainersForAdjustedAppLayout:(id)layout;
- (void)_updateVisibleAccessoryViews;
- (void)_updateVisibleAdjustedAppLayouts;
- (void)_updateVisibleHomeAffordanceViews;
- (void)_updateVisibleItems;
- (void)_updateVisibleItemsAccessoryViewsLayoutAndStyleWithCompletion:(id)completion;
- (void)_updateVisibleOverlayAndUnderlayViews;
- (void)_updateVisibleShelves;
- (void)_updateVisibleSplitViewHandleDimmingViews;
- (void)_updateVisibleSplitViewHandleNubViews;
- (void)_updateWallpaperStyle;
- (void)_updateWantsEnhancedWindowingEnabledState;
- (void)addLiveContentOverlay:(id)overlay forAppLayout:(id)layout animated:(BOOL)animated;
- (void)animatorWasCanceled:(id)canceled;
- (void)assistantDidAppear:(id)appear;
- (void)assistantDidChangePresentation:(id)presentation;
- (void)assistantDidDisappear:(id)disappear;
- (void)assistantWillAppear:(id)appear;
- (void)assistantWillDisappear:(id)disappear;
- (void)associateCenterWindowInteractionIdentifier:(id)identifier withSceneIdentifier:(id)sceneIdentifier;
- (void)cleanUpAfterCompletingCenterWindowAnimationWithAction:(id)action;
- (void)clickReceivedForHomeGrabberView:(id)view;
- (void)clientWithSceneIdentifier:(id)identifier suppressPreferredPointerLockStatusUpdated:(BOOL)updated;
- (void)container:(id)container didBecomeFocused:(BOOL)focused;
- (void)containerDidEndAnimatingHighlight:(id)highlight scale:(double)scale;
- (void)containerDidEndSwipingToKill:(id)kill;
- (void)containerSelectionStateChanged:(id)changed toState:(int64_t)state hover:(BOOL)hover pencilHover:(BOOL)pencilHover;
- (void)containerWillBeginAnimatingHighlight:(id)highlight scale:(double)scale isTracking:(BOOL)tracking;
- (void)containerWillBeginSwipingToKill:(id)kill;
- (void)continuousExposeStripTongueViewTapped:(id)tapped;
- (void)dealloc;
- (void)didSelectContainer:(id)container modifierFlags:(int64_t)flags;
- (void)dismissContinuousExposeStripEdgeProtectTongue;
- (void)dismissSlideOverEdgeProtectTongueOnEdge:(unint64_t)edge;
- (void)eventSource:(id)source userTouchedApplication:(id)application;
- (void)gestureHandlingModifierReleasePendingViews:(id)views;
- (void)gestureHandlingModifierRequestsUpdate:(id)update;
- (void)handleClickDownToBringItemContainerForward:(id)forward;
- (void)handleContinuousExposeHoverGesture:(id)gesture;
- (void)handleEventResponse:(id)response;
- (void)handleFluidSwitcherGestureManager:(id)manager didBeginGesture:(id)gesture;
- (void)handleFluidSwitcherGestureManager:(id)manager didEndGesture:(id)gesture;
- (void)handleFluidSwitcherGestureManager:(id)manager didUpdateGesture:(id)gesture;
- (void)handleReopenClosedWindowsButtonTapped:(id)tapped;
- (void)handleTapOutsideContentToDismissCurrentMode;
- (void)handleTapToBringItemContainerForward:(id)forward;
- (void)handleUserClickInAppInteractionGesture:(id)gesture;
- (void)hideSourceViewForAnimator:(id)animator;
- (void)historianModifier:(id)modifier didRecordEntry:(id)entry;
- (void)invalidate;
- (void)itemContainer:(id)container didSelectTitleForRole:(int64_t)role;
- (void)itemContainerDidUpdateWantsOverlayPortal:(id)portal;
- (void)killContainer:(id)container forReason:(int64_t)reason;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionWillEndWithTransitionContext:(id)context;
- (void)leadingStatusBarStyleRequest;
- (void)liveContentOverlay:(id)overlay didUpdateStatusBarHiddenSceneSettings:(BOOL)settings withAnimation:(int64_t)animation;
- (void)liveContentOverlayDidUpdateHomeAffordanceEdgeProtectOrAutoHide:(id)hide;
- (void)liveContentOverlayDidUpdateHomeAffordanceSupportedOrientations:(id)orientations;
- (void)loadView;
- (void)moveDisplayItemFromOtherDisplay:(id)display;
- (void)moveExistingLiveContentOverlay:(id)overlay forAppLayout:(id)layout toAppLayout:(id)appLayout;
- (void)noteAppLayoutsDidChange;
- (void)noteDidEdgeProtectResizeGrabberForDisplayItem:(id)item inCorner:(unint64_t)corner;
- (void)noteIconZoomingViewWillZoomDown:(id)down;
- (void)noteModelDidMutateForInsertionOfAppLayouts:(id)layouts atIndexes:(id)indexes willAnimate:(BOOL)animate;
- (void)noteWindowManagementContextDidChange;
- (void)overlayAccessoryView:(id)view didSelectHeaderForRole:(int64_t)role;
- (void)overlayAccessoryView:(id)view didUpdateShowingIconOverlay:(BOOL)overlay;
- (void)performAnimatedInsertionOfAppLayouts:(id)layouts atIndexes:(id)indexes completion:(id)completion;
- (void)performKeyboardShortcutAction:(int64_t)action withSceneIdentifier:(id)identifier;
- (void)performSwitcherShortcutAction:(int64_t)action forSceneIdentifier:(id)identifier;
- (void)performTransitionWithContext:(id)context animated:(BOOL)animated completion:(id)completion;
- (void)pointerDidMoveToFromWindowScene:(id)scene toWindowScene:(id)windowScene;
- (void)pointerEndedResizingItemContainer:(id)container;
- (void)prepareAnimatedInsertionOfAppLayouts:(id)layouts atIndexes:(id)indexes;
- (void)prepareForIncomingCenterWindowAnimationWithAction:(id)action;
- (void)presentContinuousExposeStripEdgeProtectTongue;
- (void)presentSlideOverEdgeProtectTongueOnEdge:(unint64_t)edge;
- (void)removeLayoutRole:(int64_t)role inSpace:(id)space mutationBlock:(id)block reason:(int64_t)reason;
- (void)removeLiveContentOverlayForAppLayout:(id)layout animated:(BOOL)animated;
- (void)sceneLayoutTransitionWillStartWithTransitionContext:(id)context;
- (void)scrollViewDidEndScrolling:(id)scrolling;
- (void)scrollViewDidScroll:(id)scroll withContext:(id *)context;
- (void)scrollViewKillingProgressUpdated:(double)updated translation:(CGPoint)translation isDragging:(BOOL)dragging decelerationTargetProgress:(double)progress forContainer:(id)container;
- (void)searchGesture:(id)gesture startedShowing:(BOOL)showing;
- (void)setAsyncRenderingDisabled:(BOOL)disabled;
- (void)setContentOrientation:(int64_t)orientation;
- (void)setDataSource:(id)source;
- (void)setDelegate:(id)delegate;
- (void)setPersonality:(id)personality;
- (void)setPipViewMorphAnimator:(id)animator;
- (void)setShelfFocusedDisplayItems:(id)items;
- (void)setShowModifierTimeline:(BOOL)timeline;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)settings:(id)settings changedValueForKeyPath:(id)path;
- (void)slideOverTongueViewTapped:(id)tapped;
- (void)startTrackingHiddenIconZoomViewIfNeeded:(id)needed;
- (void)stopTrackingHiddenIconZoomViewIfNeeded:(id)needed;
- (void)tapReceivedForGrabberTongueAtEdge:(unint64_t)edge;
- (void)temporarilyHideMatchMovedZoomDownAnimationViewForIconView:(id)view;
- (void)toggleFullScreenDisplayItem:(id)item;
- (void)trailingStatusBarStyleRequest;
- (void)traitCollectionDidChange:(id)change;
- (void)underlayAccessoryView:(id)view didSelectHeaderForRole:(int64_t)role;
- (void)updateLayoutAttributes:(id)attributes ofDisplayItem:(id)item;
- (void)updateLayoutAttributesMap:(id)map forAppLayout:(id)layout;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)willBeginGestureWithType:(int64_t)type identifier:(id)identifier;
- (void)zStackActivationStateUpdated;
@end

@implementation SBFluidSwitcherViewController

- (id)_windowManagementContext
{
  dataSource = [(SBFluidSwitcherViewController *)self dataSource];
  v4 = dataSource;
  if ((*(&self->_dataSourceRespondsTo + 3) & 0x80) != 0)
  {
    [dataSource windowManagementContextForSwitcherContentController:self];
  }

  else
  {
    +[SBSwitcherWindowManagementContext singleAppContext];
  }
  v5 = ;

  return v5;
}

- (SBSwitcherContentViewControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (CGRect)_leadingStatusBarPartFrame
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = WeakRetained;
  if ((*(&self->_dataSourceRespondsTo + 2) & 4) != 0)
  {
    [WeakRetained leadingStatusBarPartFrameForSwitcherContentController:self];
    x = v9;
    y = v10;
    width = v11;
    height = v12;
  }

  else
  {
    x = *MEMORY[0x277CBF3A0];
    y = *(MEMORY[0x277CBF3A0] + 8);
    width = *(MEMORY[0x277CBF3A0] + 16);
    height = *(MEMORY[0x277CBF3A0] + 24);
  }

  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  IsEmpty = CGRectIsEmpty(v19);
  p_lastLeadingStatusBarFrame = &self->_lastLeadingStatusBarFrame;
  if (IsEmpty)
  {
    x = p_lastLeadingStatusBarFrame->origin.x;
    y = self->_lastLeadingStatusBarFrame.origin.y;
    width = self->_lastLeadingStatusBarFrame.size.width;
    height = self->_lastLeadingStatusBarFrame.size.height;
  }

  else
  {
    p_lastLeadingStatusBarFrame->origin.x = x;
    self->_lastLeadingStatusBarFrame.origin.y = y;
    self->_lastLeadingStatusBarFrame.size.width = width;
    self->_lastLeadingStatusBarFrame.size.height = height;
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)_trailingStatusBarPartFrame
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = WeakRetained;
  if ((*(&self->_dataSourceRespondsTo + 2) & 8) != 0)
  {
    [WeakRetained trailingStatusBarPartFrameForSwitcherContentController:self];
    x = v9;
    y = v10;
    width = v11;
    height = v12;
  }

  else
  {
    x = *MEMORY[0x277CBF3A0];
    y = *(MEMORY[0x277CBF3A0] + 8);
    width = *(MEMORY[0x277CBF3A0] + 16);
    height = *(MEMORY[0x277CBF3A0] + 24);
  }

  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  IsEmpty = CGRectIsEmpty(v19);
  p_lastTrailingStatusBarFrame = &self->_lastTrailingStatusBarFrame;
  if (IsEmpty)
  {
    x = p_lastTrailingStatusBarFrame->origin.x;
    y = self->_lastTrailingStatusBarFrame.origin.y;
    width = self->_lastTrailingStatusBarFrame.size.width;
    height = self->_lastTrailingStatusBarFrame.size.height;
  }

  else
  {
    p_lastTrailingStatusBarFrame->origin.x = x;
    self->_lastTrailingStatusBarFrame.origin.y = y;
    self->_lastTrailingStatusBarFrame.size.width = width;
    self->_lastTrailingStatusBarFrame.size.height = height;
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)rightStatusBarPartIntersectionRegion
{
  windowManagementContext = [(SBFluidSwitcherViewController *)self windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if (isChamoisOrFlexibleWindowing)
  {
    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      [(SBFluidSwitcherViewController *)self _leadingStatusBarPartFrame];
    }

    else
    {
      [(SBFluidSwitcherViewController *)self _trailingStatusBarPartFrame];
    }

    v12 = v5;
    v13 = v6;
    v14 = v7;
    [(SBFluidSwitcherViewController *)self containerViewBounds];
    v16 = v15;
    v10 = v15 - v12;
    v8 = v16 - v10;
    v11 = v13 + v14;
    v9 = 0.0;
  }

  else
  {
    v8 = *MEMORY[0x277CBF3A0];
    v9 = *(MEMORY[0x277CBF3A0] + 8);
    v10 = *(MEMORY[0x277CBF3A0] + 16);
    v11 = *(MEMORY[0x277CBF3A0] + 24);
  }

  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)leftStatusBarPartIntersectionRegion
{
  windowManagementContext = [(SBFluidSwitcherViewController *)self windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if (isChamoisOrFlexibleWindowing)
  {
    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      [(SBFluidSwitcherViewController *)self _trailingStatusBarPartFrame];
    }

    else
    {
      [(SBFluidSwitcherViewController *)self _leadingStatusBarPartFrame];
    }

    v11 = v5 + v7;
    v12 = v6 + v8;
    v10 = 0.0;
    v9 = 0.0;
  }

  else
  {
    v9 = *MEMORY[0x277CBF3A0];
    v10 = *(MEMORY[0x277CBF3A0] + 8);
    v11 = *(MEMORY[0x277CBF3A0] + 16);
    v12 = *(MEMORY[0x277CBF3A0] + 24);
  }

  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)containerViewBounds
{
  view = [(SBFluidSwitcherViewController *)self view];
  [view bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)_unadjustedAppLayouts
{
  dataSource = [(SBFluidSwitcherViewController *)self dataSource];
  v4 = [dataSource appLayoutsForSwitcherContentController:self];

  return v4;
}

- (void)_updateWantsEnhancedWindowingEnabledState
{
  v15 = *MEMORY[0x277D85DE8];
  windowManagementContext = [(SBFluidSwitcherViewController *)self windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_liveContentOverlays allValues];
  v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v10 + 1) + 8 * v9++) setWantsEnhancedWindowingEnabled:isChamoisOrFlexibleWindowing];
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_updateCornerRadiiiAndMaximizedState
{
  windowManagementContext = [(SBFluidSwitcherViewController *)self windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  liveContentOverlays = self->_liveContentOverlays;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__SBFluidSwitcherViewController__updateCornerRadiiiAndMaximizedState__block_invoke;
  v6[3] = &unk_2783AEFB0;
  v6[4] = self;
  v7 = isChamoisOrFlexibleWindowing;
  [(NSMutableDictionary *)liveContentOverlays enumerateKeysAndObjectsUsingBlock:v6];
}

- (id)_sbWindowScene
{
  dataSource = [(SBFluidSwitcherViewController *)self dataSource];
  v4 = [dataSource windowSceneForSwitcherContentController:self];

  return v4;
}

- (void)zStackActivationStateUpdated
{
  view = [(SBFluidSwitcherViewController *)self view];
  [view setNeedsLayout];
}

- (void)_updateAsyncRenderingAndResizesHostedContext
{
  succinctDescription = [a2 succinctDescription];
  *self = 138412290;
  *a3 = succinctDescription;
  _os_log_error_impl(&dword_21ED4E000, a4, OS_LOG_TYPE_ERROR, "Shouldn't want both asyncRendering and resizesHostedContext for %@", self, 0xCu);
}

- (id)draggingAppLayoutsForWindowDrag
{
  dataSource = [(SBFluidSwitcherViewController *)self dataSource];
  v4 = dataSource;
  if (*(&self->_dataSourceRespondsTo + 4))
  {
    [dataSource draggingAppLayoutsForWindowDragForSwitcherContentController:self];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v5 = ;

  return v5;
}

void __69__SBFluidSwitcherViewController__updateCornerRadiiiAndMaximizedState__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a3;
  v5 = a2;
  v6 = [v5 allItems];
  v7 = [v6 firstObject];

  v8 = [*(*(a1 + 32) + 1320) objectForKey:v5];

  v9 = [*(a1 + 32) maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:v8 ignoreOcclusion:1 ignoreCentering:1];
  [v14 setMaximized:{objc_msgSend(v9, "containsObject:", v7)}];
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) bestSupportedDefaultCornerRadiusForDisplayItem:v7];
    v11 = v10;
    v12 = v10;
    v13 = v10;
  }

  else
  {
    v10 = *MEMORY[0x277D76E40];
    v11 = *(MEMORY[0x277D76E40] + 8);
    v12 = *(MEMORY[0x277D76E40] + 16);
    v13 = *(MEMORY[0x277D76E40] + 24);
  }

  [v14 setCornerRadii:{v10, v11, v12, v13}];
}

- (void)_updateOverlaysTopAffordanceContextMenu
{
  liveContentOverlays = self->_liveContentOverlays;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __72__SBFluidSwitcherViewController__updateOverlaysTopAffordanceContextMenu__block_invoke;
  v3[3] = &unk_2783AF138;
  v3[4] = self;
  [(NSMutableDictionary *)liveContentOverlays enumerateKeysAndObjectsUsingBlock:v3];
}

void __72__SBFluidSwitcherViewController__updateOverlaysTopAffordanceContextMenu__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 overlaySceneHandle];
  v8 = [v7 isDeviceApplicationSceneHandle];

  if (v8)
  {
    v9 = [*(*(a1 + 32) + 2112) topAffordanceOptionsMaskForLeafAppLayout:v5];
    v10 = [*(*(a1 + 32) + 2112) selectedActionTypeForLeafAppLayout:v5];
    v16 = 0u;
    v17 = 0u;
    v11 = *(a1 + 32);
    if (v11[264])
    {
      [v11[264] windowControlsLayoutForLeafAppLayout:v5];
      v11 = *(a1 + 32);
      v12 = v16 == 1;
    }

    else
    {
      v12 = 0;
    }

    v13 = v9 == 0 || v12;
    v14 = [v11 switcherInterfaceOrientation];
    v15[0] = v16;
    v15[1] = v17;
    [v6 updateTopAffordanceContextMenuWithOptions:v9 selectedActionType:v10 layout:v15 hidden:v13 interfaceOrientation:v14];
  }
}

- (SBSwitcherContentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BSAnimationSettings)defaultTransitionAnimationSettings
{
  v2 = objc_alloc_init(MEMORY[0x277D65E60]);
  [v2 setDefaultCriticallyDampedValues];
  [v2 dampingRatio];
  [v2 response];
  convertDampingRatioAndResponseToTensionAndFriction();
  v3 = [MEMORY[0x277CF0CF0] settingsWithMass:1.0 stiffness:0.0 damping:0.0];

  return v3;
}

- (void)_rebuildCachedAdjustedAppLayouts
{
  v61 = *MEMORY[0x277D85DE8];
  _unadjustedAppLayouts = [(SBFluidSwitcherViewController *)self _unadjustedAppLayouts];
  v4 = [(SBSwitcherPersonality *)self->_personality adjustedAppLayoutsForAppLayouts:_unadjustedAppLayouts];
  v37 = v4;
  selfCopy = self;
  if (![(NSArray *)self->_cachedAdjustedAppLayouts isEqualToArray:v4])
  {
    v35 = 2112;
    v36 = _unadjustedAppLayouts;
    if (v4)
    {
      v5 = [[_SBAppLayoutsArray alloc] initWithArray:v4];
    }

    else
    {
      v5 = 0;
    }

    cachedAdjustedAppLayouts = self->_cachedAdjustedAppLayouts;
    self->_cachedAdjustedAppLayouts = &v5->super.super;

    self->_appLayoutsGenerationCount = [(SBFluidSwitcherViewController *)self newAppLayoutsGenCount];
    appLayoutsForContinuousExposeIdentifiers = self->_appLayoutsForContinuousExposeIdentifiers;
    self->_appLayoutsForContinuousExposeIdentifiers = 0;

    v8 = objc_opt_new();
    v9 = objc_opt_new();
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = self->_cachedAdjustedAppLayouts;
    v10 = [(NSArray *)obj countByEnumeratingWithState:&v53 objects:v60 count:16];
    if (v10)
    {
      v11 = v10;
      v40 = *v54;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v54 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v53 + 1) + 8 * i);
          leafAppLayouts = [v13 leafAppLayouts];
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v15 = [leafAppLayouts countByEnumeratingWithState:&v49 objects:v59 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v50;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v50 != v17)
                {
                  objc_enumerationMutation(leafAppLayouts);
                }

                v19 = *(*(&v49 + 1) + 8 * j);
                [v9 setObject:v13 forKey:v19];
                [v8 addObject:v19];
              }

              v16 = [leafAppLayouts countByEnumeratingWithState:&v49 objects:v59 count:16];
            }

            while (v16);
          }
        }

        v11 = [(NSArray *)obj countByEnumeratingWithState:&v53 objects:v60 count:16];
      }

      while (v11);
    }

    objc_storeStrong(&selfCopy->_cachedAdjustedLeafAppLayouts, v8);
    objc_storeStrong(&selfCopy->_leafAppLayoutsToAdjustedAppLayouts, v9);
    [(SBFluidSwitcherViewController *)selfCopy _updateVisibleAdjustedAppLayouts];
    if (([*(&selfCopy->super.super.super.isa + v35) shouldDeferVisibleOverlayAndUnderlayViewsUpdate] & 1) == 0)
    {
      [(SBFluidSwitcherViewController *)selfCopy _updateVisibleOverlayAndUnderlayViews];
    }

    [(SBFluidSwitcherViewController *)selfCopy _updateResignActiveAssertions];
    if ([(SBSwitcherKeyboardSuppressionMode *)selfCopy->_lastKeyboardSuppressionMode suppressesSwitcherScenesOnly])
    {
      [(SBFluidSwitcherViewController *)selfCopy _acquireKeyboardSuppressionAssertionForMode:selfCopy->_lastKeyboardSuppressionMode];
    }

    _unadjustedAppLayouts = v36;
  }

  v20 = objc_opt_new();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v21 = _unadjustedAppLayouts;
  v22 = [v21 countByEnumeratingWithState:&v45 objects:v58 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v46;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v46 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v45 + 1) + 8 * k);
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        leafAppLayouts2 = [v26 leafAppLayouts];
        v28 = [leafAppLayouts2 countByEnumeratingWithState:&v41 objects:v57 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v42;
          do
          {
            for (m = 0; m != v29; ++m)
            {
              if (*v42 != v30)
              {
                objc_enumerationMutation(leafAppLayouts2);
              }

              [(NSDictionary *)v20 setObject:v26 forKey:*(*(&v41 + 1) + 8 * m)];
            }

            v29 = [leafAppLayouts2 countByEnumeratingWithState:&v41 objects:v57 count:16];
          }

          while (v29);
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v45 objects:v58 count:16];
    }

    while (v23);
  }

  leafAppLayoutsToRecencyAppLayouts = selfCopy->_leafAppLayoutsToRecencyAppLayouts;
  selfCopy->_leafAppLayoutsToRecencyAppLayouts = v20;

  windowManagementContext = [(SBFluidSwitcherViewController *)selfCopy windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if (isChamoisOrFlexibleWindowing)
  {
    [(SBFluidSwitcherViewController *)selfCopy _updateContinuousExposeIdentifiersTransitioningFromAppLayout:0 toAppLayout:0 animated:0];
  }
}

- (void)noteAppLayoutsDidChange
{
  [(SBFluidSwitcherViewController *)self _rebuildCachedAdjustedAppLayouts];
  view = [(SBFluidSwitcherViewController *)self view];
  [view setNeedsLayout];

  v10 = self->_applicationRestrictionUpdatePendingAssertion;
  view2 = [(SBFluidSwitcherViewController *)self view];
  window = [view2 window];

  if (window)
  {
    v6 = +[SBApplicationController sharedInstance];
    _applicationRestrictionMonitoringServer = [v6 _applicationRestrictionMonitoringServer];
    v8 = [_applicationRestrictionMonitoringServer acquireApplicationRestrictionUpdatePendingAssertionForReason:@"Outstanding layout work for switcher"];
    applicationRestrictionUpdatePendingAssertion = self->_applicationRestrictionUpdatePendingAssertion;
    self->_applicationRestrictionUpdatePendingAssertion = v8;
  }

  [(BSInvalidatable *)v10 invalidate];
}

- (id)_iconZoomContextProvider
{
  dataSource = [(SBFluidSwitcherViewController *)self dataSource];
  v4 = dataSource;
  if ((*&self->_dataSourceRespondsTo & 4) != 0)
  {
    selfCopy = [dataSource switcherIconZoomContextProviderForSwitcherContentController:self];
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  return v6;
}

- (unint64_t)newAppLayoutsGenCount
{
  v2 = self->_appLayoutsGenerationCount + 1;
  self->_appLayoutsGenerationCount = v2;
  return v2;
}

- (void)_updateVisibleOverlayAndUnderlayViews
{
  v149 = *MEMORY[0x277D85DE8];
  v133 = 0;
  v134 = &v133;
  v135 = 0x3032000000;
  v136 = __Block_byref_object_copy__16;
  v137 = __Block_byref_object_dispose__16;
  allKeys = [(NSMutableDictionary *)self->_visibleOverlayAccessoryViews allKeys];
  allObjects = [(NSSet *)self->_visibleAdjustedAppLayouts allObjects];
  v129 = 0;
  v130 = &v129;
  v131 = 0x2020000000;
  v132 = 0;
  v128[0] = MEMORY[0x277D85DD0];
  v128[1] = 3221225472;
  v128[2] = __70__SBFluidSwitcherViewController__updateVisibleOverlayAndUnderlayViews__block_invoke;
  v128[3] = &unk_2783AE9F8;
  v128[4] = self;
  v128[5] = &v133;
  v128[6] = &v129;
  v81 = MEMORY[0x223D6F7F0](v128);
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  obj = v134[5];
  v3 = [obj countByEnumeratingWithState:&v124 objects:v148 count:16];
  selfCopy2 = self;
  if (v3)
  {
    v5 = *v125;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v125 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v124 + 1) + 8 * i);
        if (([allObjects containsObject:v7] & 1) == 0)
        {
          v123[0] = MEMORY[0x277D85DD0];
          v123[1] = 3221225472;
          v123[2] = __70__SBFluidSwitcherViewController__updateVisibleOverlayAndUnderlayViews__block_invoke_2;
          v123[3] = &unk_2783A8CB8;
          v123[4] = v7;
          v8 = [allObjects bs_firstObjectPassingTest:v123];
          v9 = v8;
          if (v8)
          {
            personality = selfCopy2->_personality;
            v147 = v8;
            v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v147 count:1];
            v12 = [(SBSwitcherPersonality *)personality preferredAppLayoutToReuseAccessoryForAppLayout:v7 fromAppLayouts:v11];

            if (v12)
            {
              (v81)[2](v81, v7, v12);
            }
          }

          selfCopy2 = self;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v124 objects:v148 count:16];
    }

    while (v3);
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v13 = allObjects;
  v14 = [v13 countByEnumeratingWithState:&v119 objects:v146 count:16];
  if (v14)
  {
    v15 = *v120;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v120 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v119 + 1) + 8 * j);
        if (([v134[5] containsObject:v17] & 1) == 0)
        {
          v18 = v134[5];
          v118[0] = MEMORY[0x277D85DD0];
          v118[1] = 3221225472;
          v118[2] = __70__SBFluidSwitcherViewController__updateVisibleOverlayAndUnderlayViews__block_invoke_3;
          v118[3] = &unk_2783A8CB8;
          v118[4] = v17;
          v19 = [v18 bs_filter:v118];
          v20 = [(SBSwitcherPersonality *)self->_personality preferredAppLayoutToReuseAccessoryForAppLayout:v17 fromAppLayouts:v19];
          if (v20)
          {
            (v81)[2](v81, v20, v17);
          }
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v119 objects:v146 count:16];
    }

    while (v14);
  }

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v21 = v134[5];
  v22 = [v21 countByEnumeratingWithState:&v114 objects:v145 count:16];
  if (v22)
  {
    v23 = *v115;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v115 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v114 + 1) + 8 * k);
        if (([v13 containsObject:v25] & 1) == 0)
        {
          v113[0] = MEMORY[0x277D85DD0];
          v113[1] = 3221225472;
          v113[2] = __70__SBFluidSwitcherViewController__updateVisibleOverlayAndUnderlayViews__block_invoke_4;
          v113[3] = &unk_2783A8CB8;
          v113[4] = v25;
          v26 = [v13 bs_filter:v113];
          v27 = [(SBSwitcherPersonality *)self->_personality preferredAppLayoutToReuseAccessoryForAppLayout:v25 fromAppLayouts:v26];
          if (v27)
          {
            (v81)[2](v81, v25, v27);
          }
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v114 objects:v145 count:16];
    }

    while (v22);
  }

  v28 = v134[5];
  v111[0] = MEMORY[0x277D85DD0];
  v111[1] = 3221225472;
  v111[2] = __70__SBFluidSwitcherViewController__updateVisibleOverlayAndUnderlayViews__block_invoke_5;
  v111[3] = &unk_2783A8CB8;
  v29 = v13;
  v112 = v29;
  v30 = [v28 bs_filter:v111];
  v110[0] = MEMORY[0x277D85DD0];
  v110[1] = 3221225472;
  v110[2] = __70__SBFluidSwitcherViewController__updateVisibleOverlayAndUnderlayViews__block_invoke_6;
  v110[3] = &unk_2783AEA20;
  v110[4] = &v133;
  v68 = v29;
  v69 = [v29 bs_filter:v110];
  selfCopy4 = self;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v70 = v30;
  v72 = [v70 countByEnumeratingWithState:&v106 objects:v144 count:16];
  if (v72)
  {
    v71 = *v107;
    do
    {
      for (m = 0; m != v72; m = m + 1)
      {
        if (*v107 != v71)
        {
          objc_enumerationMutation(v70);
        }

        v32 = *(*(&v106 + 1) + 8 * m);
        v33 = [(NSMutableDictionary *)selfCopy4->_visibleOverlayAccessoryViews objectForKey:v32];
        obja = [(NSMutableDictionary *)selfCopy4->_visibleUnderlayAccessoryViews objectForKey:v32];
        [(NSMutableDictionary *)self->_visibleOverlayAccessoryViews removeObjectForKey:v32];
        [(NSMutableDictionary *)self->_visibleUnderlayAccessoryViews removeObjectForKey:v32];
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        allValues = [(NSMutableDictionary *)self->_visibleItemContainers allValues];
        v35 = [allValues countByEnumeratingWithState:&v102 objects:v143 count:16];
        if (v35)
        {
          v36 = *v103;
          do
          {
            for (n = 0; n != v35; ++n)
            {
              if (*v103 != v36)
              {
                objc_enumerationMutation(allValues);
              }

              v38 = *(*(&v102 + 1) + 8 * n);
              overlayPortalView = [v38 overlayPortalView];
              v40 = overlayPortalView == v33;

              if (v40)
              {
                [v38 setOverlayPortalView:0];
              }
            }

            v35 = [allValues countByEnumeratingWithState:&v102 objects:v143 count:16];
          }

          while (v35);
        }

        [v33 _removeAllRetargetableAnimations:1];
        [v33 setHidden:1];
        [(SBFluidSwitcherViewController *)self _enqueueOverlayAccessoryViewInReusePool:v33];
        [obja _removeAllRetargetableAnimations:1];
        [obja setHidden:1];
        [(SBFluidSwitcherViewController *)self _enqueueUnderlayAccessoryViewInReusePool:obja];
        v76 = [(NSMutableDictionary *)self->_appLayoutToTitleItemController objectForKey:v32];
        if (v76)
        {
          [v76 invalidate];
          [(NSMutableDictionary *)self->_appLayoutToTitleItemController removeObjectForKey:v32];
        }

        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        leafAppLayouts = [v32 leafAppLayouts];
        v42 = [leafAppLayouts countByEnumeratingWithState:&v98 objects:v142 count:16];
        if (v42)
        {
          v43 = *v99;
          do
          {
            for (ii = 0; ii != v42; ++ii)
            {
              if (*v99 != v43)
              {
                objc_enumerationMutation(leafAppLayouts);
              }

              v45 = [(NSMutableDictionary *)self->_visibleItemContainers objectForKey:*(*(&v98 + 1) + 8 * ii)];
              contentView = [v45 contentView];
              v47 = objc_opt_respondsToSelector();

              if (v47)
              {
                contentView2 = [v45 contentView];
                [contentView2 setShowingIconOverlayView:0];
              }
            }

            v42 = [leafAppLayouts countByEnumeratingWithState:&v98 objects:v142 count:16];
          }

          while (v42);
        }

        selfCopy4 = self;
      }

      v72 = [v70 countByEnumeratingWithState:&v106 objects:v144 count:16];
    }

    while (v72);
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v73 = v69;
  selfCopy6 = self;
  v77 = [v73 countByEnumeratingWithState:&v94 objects:v141 count:16];
  if (v77)
  {
    v75 = *v95;
    do
    {
      for (objb = 0; objb != v77; objb = objb + 1)
      {
        if (*v95 != v75)
        {
          objc_enumerationMutation(v73);
        }

        v50 = *(*(&v94 + 1) + 8 * objb);
        _dequeueOverlayAccessoryViewFromReusePool = [(SBFluidSwitcherViewController *)selfCopy6 _dequeueOverlayAccessoryViewFromReusePool];
        [(SBFluidSwitcherContentView *)selfCopy6->_contentView addSubview:_dequeueOverlayAccessoryViewFromReusePool];
        [(SBFluidSwitcherContentView *)selfCopy6->_contentView bringSubviewToFront:_dequeueOverlayAccessoryViewFromReusePool];
        [_dequeueOverlayAccessoryViewFromReusePool setHidden:0];
        [(NSMutableDictionary *)selfCopy6->_visibleOverlayAccessoryViews setObject:_dequeueOverlayAccessoryViewFromReusePool forKey:v50];
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        allValues2 = [(NSMutableDictionary *)selfCopy6->_visibleItemContainers allValues];
        v53 = [allValues2 countByEnumeratingWithState:&v90 objects:v140 count:16];
        if (v53)
        {
          v54 = *v91;
          do
          {
            for (jj = 0; jj != v53; ++jj)
            {
              if (*v91 != v54)
              {
                objc_enumerationMutation(allValues2);
              }

              v56 = *(*(&v90 + 1) + 8 * jj);
              if ([v56 wantsOverlayPortal])
              {
                overlayPortalView2 = [v56 overlayPortalView];
                v58 = overlayPortalView2 == 0;

                if (v58)
                {
                  appLayout = [v56 appLayout];
                  v60 = [v50 isOrContainsAppLayout:appLayout];

                  if (v60)
                  {
                    [v56 setOverlayPortalView:_dequeueOverlayAccessoryViewFromReusePool];
                  }
                }
              }
            }

            v53 = [allValues2 countByEnumeratingWithState:&v90 objects:v140 count:16];
          }

          while (v53);
        }

        _dequeueUnderlayAccessoryViewFromReusePool = [(SBFluidSwitcherViewController *)self _dequeueUnderlayAccessoryViewFromReusePool];
        [(SBFluidSwitcherContentView *)self->_contentView addSubview:_dequeueUnderlayAccessoryViewFromReusePool];
        [(SBFluidSwitcherContentView *)self->_contentView sendSubviewToBack:_dequeueUnderlayAccessoryViewFromReusePool];
        [_dequeueUnderlayAccessoryViewFromReusePool setHidden:0];
        [(NSMutableDictionary *)self->_visibleUnderlayAccessoryViews setObject:_dequeueUnderlayAccessoryViewFromReusePool forKey:v50];

        selfCopy6 = self;
      }

      v77 = [v73 countByEnumeratingWithState:&v94 objects:v141 count:16];
    }

    while (v77);
  }

  if ([v70 count] || objc_msgSend(v73, "count") || *(v130 + 24) == 1)
  {
    [(SBFluidSwitcherViewController *)self _ensureSubviewOrdering];
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v62 = v68;
  v63 = [v62 countByEnumeratingWithState:&v86 objects:v139 count:16];
  if (v63)
  {
    v64 = *v87;
    do
    {
      for (kk = 0; kk != v63; ++kk)
      {
        if (*v87 != v64)
        {
          objc_enumerationMutation(v62);
        }

        v66 = *(*(&v86 + 1) + 8 * kk);
        if (([(SBSwitcherPersonality *)self->_personality useItemContainerFooterViewsForAppLayout:v66]& 1) == 0)
        {
          [(SBFluidSwitcherViewController *)self _updateAccessoryTitlePresenceForAdjustedAppLayout:v66];
        }
      }

      v63 = [v62 countByEnumeratingWithState:&v86 objects:v139 count:16];
    }

    while (v63);
  }

  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __70__SBFluidSwitcherViewController__updateVisibleOverlayAndUnderlayViews__block_invoke_7;
  v83[3] = &unk_2783A92D8;
  v67 = v73;
  v84 = v67;
  selfCopy7 = self;
  [(SBFluidSwitcherViewController *)self _performWithFixedUpdateMode:1 usingBlock:v83];

  _Block_object_dispose(&v129, 8);
  _Block_object_dispose(&v133, 8);
}

- (void)_updateVisibleAdjustedAppLayouts
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allKeys = [(NSMutableDictionary *)self->_visibleItemContainers allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = [(NSDictionary *)self->_leafAppLayoutsToAdjustedAppLayouts objectForKey:*(*(&v11 + 1) + 8 * v8)];
        if (v9)
        {
          [(NSSet *)v3 addObject:v9];
          if ([(SBSwitcherPersonality *)self->_personality useItemContainerFooterViewsForAppLayout:v9])
          {
            [(SBFluidSwitcherViewController *)self _updateTitlePresenceOnItemContainersForAdjustedAppLayout:v9];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  visibleAdjustedAppLayouts = self->_visibleAdjustedAppLayouts;
  self->_visibleAdjustedAppLayouts = v3;
}

void __70__SBFluidSwitcherViewController__updateVisibleOverlayAndUnderlayViews__block_invoke_7(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        v9 = SBLayoutRoleSetNone();
        [v8 _layoutAppLayout:v7 roles:v9 completion:{0, v14}];

        v10 = *(a1 + 40);
        v11 = SBLayoutRoleSetNone();
        [v10 _applyStyleToAppLayout:v7 roles:v11 completion:0];

        v12 = [*(*(a1 + 40) + 1976) objectForKey:v7];
        v13 = [*(*(a1 + 40) + 1984) objectForKey:v7];
        [v12 layoutIfNeeded];
        [v13 layoutIfNeeded];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

- (void)_updateResignActiveAssertions
{
  v20 = *MEMORY[0x277D85DE8];
  appLayoutsToResignActive = [(SBSwitcherPersonality *)self->_personality appLayoutsToResignActive];
  if ((BSEqualDictionaries() & 1) == 0)
  {
    objc_storeStrong(&self->_lastAppLayoutsToResignActive, appLayoutsToResignActive);
    v4 = objc_opt_new();
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__SBFluidSwitcherViewController__updateResignActiveAssertions__block_invoke;
    v17[3] = &unk_2783AEFD8;
    v17[4] = self;
    v5 = v4;
    v18 = v5;
    [appLayoutsToResignActive enumerateKeysAndObjectsWithOptions:0 usingBlock:v17];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = self->_resignActiveAssertions;
    v7 = [(NSSet *)v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v13 + 1) + 8 * v10++) relinquish];
        }

        while (v8 != v10);
        v8 = [(NSSet *)v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
      }

      while (v8);
    }

    resignActiveAssertions = self->_resignActiveAssertions;
    self->_resignActiveAssertions = v5;
    v12 = v5;
  }
}

- (BOOL)isDevicePad
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

+ (id)_largeGridSizeClassesForIconZoom
{
  if (_largeGridSizeClassesForIconZoom_onceToken != -1)
  {
    +[SBFluidSwitcherViewController(Common) _largeGridSizeClassesForIconZoom];
  }

  v3 = _largeGridSizeClassesForIconZoom_gridSizeClasses;

  return v3;
}

+ (id)_mediumGridSizeClassesForIconZoom
{
  if (_mediumGridSizeClassesForIconZoom_onceToken != -1)
  {
    +[SBFluidSwitcherViewController(Common) _mediumGridSizeClassesForIconZoom];
  }

  v3 = _mediumGridSizeClassesForIconZoom_gridSizeClasses;

  return v3;
}

- (BOOL)homeScreenHasOpenFolder
{
  _iconManager = [(SBFluidSwitcherViewController *)self _iconManager];
  hasOpenFolder = [_iconManager hasOpenFolder];

  return hasOpenFolder;
}

- (id)_iconManager
{
  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  homeScreenController = [_sbWindowScene homeScreenController];
  iconManager = [homeScreenController iconManager];

  return iconManager;
}

- (BOOL)homeScreenHasWidgetCenterOrLibraryOpen
{
  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  homeScreenController = [_sbWindowScene homeScreenController];
  _iconManager = [(SBFluidSwitcherViewController *)self _iconManager];
  if ([homeScreenController isModalAppLibrarySupported])
  {
    modalLibraryController = [_sbWindowScene modalLibraryController];
    isPresentingLibrary = [modalLibraryController isPresentingLibrary];
  }

  else
  {
    isPresentingLibrary = [_iconManager isMainDisplayLibraryViewVisible];
  }

  v8 = [_iconManager isOverlayTodayViewVisible] | isPresentingLibrary;

  return v8 & 1;
}

- (void)_updateAnimatableProperties
{
  v68 = *MEMORY[0x277D85DE8];
  allKeys = [(NSMutableDictionary *)self->_animatableProperties allKeys];
  animatablePropertyIdentifiers = [(SBSwitcherPersonality *)self->_personality animatablePropertyIdentifiers];
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __60__SBFluidSwitcherViewController__updateAnimatableProperties__block_invoke;
  v61[3] = &unk_2783A8B78;
  v36 = allKeys;
  v62 = v36;
  v5 = [animatablePropertyIdentifiers bs_filter:v61];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __60__SBFluidSwitcherViewController__updateAnimatableProperties__block_invoke_2;
  v59[3] = &unk_2783A8B78;
  v35 = animatablePropertyIdentifiers;
  v60 = v35;
  [v36 bs_filter:v59];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  obj = v56 = 0u;
  v6 = [obj countByEnumeratingWithState:&v55 objects:v67 count:16];
  if (v6)
  {
    v7 = *v56;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v56 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v55 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_animatableProperties objectForKey:v9];
        [v10 invalidate];
        [(NSMutableDictionary *)self->_animatableProperties removeObjectForKey:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v55 objects:v67 count:16];
    }

    while (v6);
  }

  v40 = objc_opt_new();
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v38 = v5;
  v11 = [v38 countByEnumeratingWithState:&v51 objects:v66 count:16];
  if (v11)
  {
    v12 = *v52;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v52 != v12)
        {
          objc_enumerationMutation(v38);
        }

        v14 = *(*(&v51 + 1) + 8 * j);
        v15 = objc_alloc_init(MEMORY[0x277D75D38]);
        [(SBSwitcherPersonality *)self->_personality modelValueForAnimatableProperty:v14 currentValue:1 creating:0.0];
        [v15 setValue:?];
        animatableProperties = self->_animatableProperties;
        if (!animatableProperties)
        {
          v17 = objc_opt_new();
          v18 = self->_animatableProperties;
          self->_animatableProperties = v17;

          animatableProperties = self->_animatableProperties;
        }

        v64 = v14;
        v65 = v15;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
        [(NSMutableDictionary *)animatableProperties addEntriesFromDictionary:v19];

        [v40 addObject:v15];
      }

      v11 = [v38 countByEnumeratingWithState:&v51 objects:v66 count:16];
    }

    while (v11);
  }

  if ([v40 count])
  {
    objc_initWeak(&location, self);
    v20 = MEMORY[0x277D75D18];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __60__SBFluidSwitcherViewController__updateAnimatableProperties__block_invoke_3;
    v48[3] = &unk_2783A8C68;
    objc_copyWeak(&v49, &location);
    [v20 _createTransformerWithInputAnimatableProperties:v40 presentationValueChangedCallback:v48];
    objc_destroyWeak(&v49);
    objc_destroyWeak(&location);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  allKeys2 = [(NSMutableDictionary *)self->_animatableProperties allKeys];
  v21 = [allKeys2 countByEnumeratingWithState:&v44 objects:v63 count:16];
  if (v21)
  {
    v22 = *v45;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v45 != v22)
        {
          objc_enumerationMutation(allKeys2);
        }

        v24 = *(*(&v44 + 1) + 8 * k);
        if ([(SBSwitcherPersonality *)self->_personality shouldUpdateAnimatableProperty:v24])
        {
          v25 = [(NSMutableDictionary *)self->_animatableProperties valueForKey:v24];
          personality = self->_personality;
          [v25 value];
          [(SBSwitcherPersonality *)personality modelValueForAnimatableProperty:v24 currentValue:0 creating:?];
          v28 = v27;
          [v25 value];
          if ((BSFloatEqualToFloat() & 1) == 0)
          {
            v29 = [(SBSwitcherPersonality *)self->_personality updateModeForAnimatableProperty:v24];
            v30 = [(SBSwitcherPersonality *)self->_personality settingsForAnimatableProperty:v24];
            activeTransitionSubcompletionGenerator = self->_activeTransitionSubcompletionGenerator;
            if (activeTransitionSubcompletionGenerator)
            {
              v32 = activeTransitionSubcompletionGenerator[2](activeTransitionSubcompletionGenerator, v24);
              v33 = MEMORY[0x223D6F7F0]();
            }

            else
            {
              v33 = 0;
            }

            v34 = MEMORY[0x277D75D18];
            v41[0] = MEMORY[0x277D85DD0];
            v41[1] = 3221225472;
            v41[2] = __60__SBFluidSwitcherViewController__updateAnimatableProperties__block_invoke_4;
            v41[3] = &unk_2783A8BC8;
            v42 = v25;
            v43 = v28;
            [v34 sb_animateWithSettings:v30 mode:v29 animations:v41 completion:v33];
          }
        }
      }

      v21 = [allKeys2 countByEnumeratingWithState:&v44 objects:v63 count:16];
    }

    while (v21);
  }
}

- (void)_updateVisibleItems
{
  v70 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = MEMORY[0x277CBEB58];
  visibleAppLayouts = [(SBSwitcherPersonality *)self->_personality visibleAppLayouts];
  v7 = [v5 setWithSet:visibleAppLayouts];

  appLayouts = [(SBFluidSwitcherViewController *)self appLayouts];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __52__SBFluidSwitcherViewController__updateVisibleItems__block_invoke;
  v65[3] = &unk_2783AE4E0;
  v65[4] = self;
  v9 = v7;
  v66 = v9;
  [appLayouts enumerateObjectsUsingBlock:v65];

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v62;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v62 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v61 + 1) + 8 * i);
        if (([(NSCountedSet *)self->_requestedHiddenAppLayouts containsObject:v15]& 1) == 0)
        {
          leafAppLayouts = [v15 leafAppLayouts];
          [v3 addObjectsFromArray:leafAppLayouts];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v61 objects:v69 count:16];
    }

    while (v12);
  }

  activeTransitionContext = [(SBFluidSwitcherLayoutContext *)self->_layoutContext activeTransitionContext];
  v18 = activeTransitionContext != 0;

  visibleItemContainers = self->_visibleItemContainers;
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __52__SBFluidSwitcherViewController__updateVisibleItems__block_invoke_2;
  v56[3] = &unk_2783AE9A8;
  v20 = v3;
  v57 = v20;
  selfCopy = self;
  v60 = v18;
  v39 = v4;
  v59 = v39;
  [(NSMutableDictionary *)visibleItemContainers enumerateKeysAndObjectsUsingBlock:v56];
  [(NSMutableDictionary *)self->_visibleItemContainers allKeys];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v55 = 0u;
  v21 = [obj countByEnumeratingWithState:&v52 objects:v68 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v53;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v53 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v52 + 1) + 8 * j);
        activeGesture = [(SBFluidSwitcherLayoutContext *)self->_layoutContext activeGesture];
        selectedAppLayout = [activeGesture selectedAppLayout];

        if (!-[NSArray containsObject:](self->_cachedAdjustedLeafAppLayouts, "containsObject:", v25) && ([v20 containsObject:v25] & 1) == 0 && selectedAppLayout != v25)
        {
          [v39 addObject:v25];
        }
      }

      v22 = [obj countByEnumeratingWithState:&v52 objects:v68 count:16];
    }

    while (v22);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v40 = v39;
  v28 = [v40 countByEnumeratingWithState:&v48 objects:v67 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v49;
    do
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v49 != v30)
        {
          objc_enumerationMutation(v40);
        }

        v32 = *(*(&v48 + 1) + 8 * k);
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __52__SBFluidSwitcherViewController__updateVisibleItems__block_invoke_5;
        v47[3] = &unk_2783A8CB8;
        v47[4] = v32;
        v33 = [v20 bs_firstObjectPassingTest:v47];
        if (!v33 || ([(NSMutableDictionary *)self->_visibleItemContainers objectForKey:v33], v34 = objc_claimAutoreleasedReturnValue(), v34, v34))
        {
          [(SBFluidSwitcherViewController *)self _removeVisibleItemContainerForAppLayout:v32];
        }
      }

      v29 = [v40 countByEnumeratingWithState:&v48 objects:v67 count:16];
    }

    while (v29);
  }

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __52__SBFluidSwitcherViewController__updateVisibleItems__block_invoke_6;
  v42[3] = &unk_2783A9BD8;
  v35 = v20;
  v43 = v35;
  selfCopy2 = self;
  v36 = v40;
  v45 = v36;
  v37 = obj;
  v46 = v37;
  v38 = MEMORY[0x223D6F7F0](v42);
  if ([MEMORY[0x277D75D18] _isInRetargetableAnimationBlock])
  {
    [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v38];
  }

  else if ([MEMORY[0x277D75D18] _isInAnimationBlock])
  {
    [MEMORY[0x277D75D18] performWithoutAnimation:v38];
  }

  else
  {
    v38[2](v38);
  }

  kdebug_trace();
}

void __52__SBFluidSwitcherViewController__updateVisibleItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _appLayoutWantsToBeKeptInViewHierarchy:?])
  {
    [*(a1 + 40) addObject:v3];
  }
}

uint64_t __52__SBFluidSwitcherViewController__updateVisibleItems__block_invoke_6(id *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (!v3)
  {

    goto LABEL_22;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v28;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v28 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v27 + 1) + 8 * i);
      v9 = [a1[5] _itemContainerForAppLayoutIfExists:v8];

      if (!v9)
      {
        v10 = a1[5];
        if (*(v10 + 1888))
        {
          goto LABEL_10;
        }

        if ([*(v10 + 264) isPendingViewsForAcceleratedHomeGesture])
        {
          v10 = a1[5];
LABEL_10:
          *(v10 + 1888) = 1;
          continue;
        }

        v11 = a1[6];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __52__SBFluidSwitcherViewController__updateVisibleItems__block_invoke_7;
        v26[3] = &unk_2783A8CB8;
        v26[4] = v8;
        v12 = [v11 bs_firstObjectPassingTest:v26];
        if (v12)
        {
          v13 = [*(a1[5] + 246) objectForKey:v12];
        }

        else
        {
          v13 = 0;
        }

        [a1[5] _addVisibleItemContainerForAppLayout:v8 reusingItemContainerIfExists:v13];
        if ([*(a1[5] + 264) useItemContainerFooterViewsForAppLayout:v8])
        {
          [a1[5] _updateItemContainerTitlePresenceForLeafAppLayout:v8];
        }

        v5 = 1;
      }
    }

    v4 = [v2 countByEnumeratingWithState:&v27 objects:v32 count:16];
  }

  while (v4);

  if (v5)
  {
    [a1[5] _ensureSubviewOrdering];
  }

LABEL_22:
  if ([a1[6] count] || objc_msgSend(a1[4], "count"))
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = a1[7];
    v15 = [v14 countByEnumeratingWithState:&v22 objects:v31 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v22 + 1) + 8 * j);
          v20 = [a1[5] _itemContainerForAppLayoutIfExists:v19];
          [v20 setVisible:{objc_msgSend(a1[5], "isAppLayoutVisibleInSwitcherBounds:", v19)}];
        }

        v16 = [v14 countByEnumeratingWithState:&v22 objects:v31 count:16];
      }

      while (v16);
    }
  }

  [a1[5] _updateVisibleAdjustedAppLayouts];
  return [a1[5] _updateVisibleOverlayAndUnderlayViews];
}

- (CGPoint)scrollViewContentOffset
{
  scrollView = [(SBFluidSwitcherViewController *)self scrollView];
  [scrollView contentOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (double)screenScale
{
  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  screen = [_sbWindowScene screen];

  if (screen)
  {
    [screen scale];
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  return v5;
}

- (id)windowingConfiguration
{
  switcherInterfaceOrientation = [(SBFluidSwitcherViewController *)self switcherInterfaceOrientation];

  return [(SBFluidSwitcherViewController *)self windowingConfigurationForInterfaceOrientation:switcherInterfaceOrientation];
}

- (double)floatingDockHeight
{
  _floatingDockController = [(SBFluidSwitcherViewController *)self _floatingDockController];
  [_floatingDockController floatingDockHeight];
  v4 = v3;

  return v4;
}

- (id)_floatingDockController
{
  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  floatingDockController = [_sbWindowScene floatingDockController];

  return floatingDockController;
}

- (id)keyboardFocusedAppLayout
{
  v3 = objc_opt_class();
  v4 = [MEMORY[0x277D75518] focusSystemForEnvironment:self->_contentView];
  focusedItem = [v4 focusedItem];
  v6 = SBSafeCast(v3, focusedItem);

  if (v6)
  {
    appLayout = [v6 appLayout];
    v8 = [(NSDictionary *)self->_leafAppLayoutsToAdjustedAppLayouts objectForKey:appLayout];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_isSwitcherForegroundActive
{
  _gestureManager = [(SBFluidSwitcherViewController *)self _gestureManager];
  v3 = _gestureManager;
  if (_gestureManager)
  {
    isSwitcherForegroundActive = [_gestureManager isSwitcherForegroundActive];
  }

  else
  {
    isSwitcherForegroundActive = 0;
  }

  return isSwitcherForegroundActive;
}

- (id)_gestureManager
{
  dataSource = [(SBFluidSwitcherViewController *)self dataSource];
  v4 = dataSource;
  if (*&self->_dataSourceRespondsTo)
  {
    v5 = [dataSource switcherGestureManagerForSwitcherContentController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)shelfFocusedDisplayItems
{
  shelfFocusedDisplayItems = self->_shelfFocusedDisplayItems;
  if (shelfFocusedDisplayItems)
  {
    v3 = shelfFocusedDisplayItems;
  }

  else
  {
    v3 = [MEMORY[0x277CBEB98] set];
  }

  return v3;
}

- (void)_ensureSubviewOrdering
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [(SBSwitcherPersonality *)self->_personality topMostLayoutElements];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v31 = v49 = 0u;
  reverseObjectEnumerator = [v31 reverseObjectEnumerator];
  v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v47;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v47 != v7)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v9 = *(*(&v46 + 1) + 8 * i);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v10 = [(SBFluidSwitcherViewController *)self _orderedViewsForLayoutElement:v9 excludeSwitcherHostedShelves:0];
        reverseObjectEnumerator2 = [v10 reverseObjectEnumerator];

        v12 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v42 objects:v52 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v43;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v43 != v14)
              {
                objc_enumerationMutation(reverseObjectEnumerator2);
              }

              [v3 addObject:*(*(&v42 + 1) + 8 * j)];
            }

            v13 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v42 objects:v52 count:16];
          }

          while (v13);
        }
      }

      v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v6);
  }

  if ((BSEqualArrays() & 1) == 0)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v16 = v3;
    v17 = [v16 countByEnumeratingWithState:&v38 objects:v51 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v39;
      do
      {
        for (k = 0; k != v18; ++k)
        {
          if (*v39 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [(SBFluidSwitcherContentView *)self->_contentView bringSubviewToFront:*(*(&v38 + 1) + 8 * k)];
        }

        v18 = [v16 countByEnumeratingWithState:&v38 objects:v51 count:16];
      }

      while (v18);
    }

    objc_storeStrong(&self->_cachedOrderedAllLayoutElementViews, v3);
  }

  visibleItemContainerBackdropViews = self->_visibleItemContainerBackdropViews;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __55__SBFluidSwitcherViewController__ensureSubviewOrdering__block_invoke;
  v37[3] = &unk_2783AE980;
  v37[4] = self;
  [(NSMutableDictionary *)visibleItemContainerBackdropViews bs_each:v37];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [(NSMutableDictionary *)self->_centerWindowActivationAnimationContexts allValues];
  v22 = [obj countByEnumeratingWithState:&v33 objects:v50 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v34;
    do
    {
      for (m = 0; m != v23; ++m)
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v33 + 1) + 8 * m);
        contentView = self->_contentView;
        contentPortalContainer = [v26 contentPortalContainer];
        [(SBFluidSwitcherContentView *)contentView sendSubviewToBack:contentPortalContainer];

        v29 = self->_contentView;
        deparentingPortal = [v26 deparentingPortal];
        [(SBFluidSwitcherContentView *)v29 bringSubviewToFront:deparentingPortal];
      }

      v23 = [obj countByEnumeratingWithState:&v33 objects:v50 count:16];
    }

    while (v23);
  }

  if (self->_plusButton)
  {
    [(SBFluidSwitcherContentView *)self->_contentView bringSubviewToFront:?];
  }

  if (self->_reopenClosedWindowsButton)
  {
    [(SBFluidSwitcherContentView *)self->_contentView bringSubviewToFront:?];
  }

  if (self->_shelfBackgroundView)
  {
    [(SBFluidSwitcherContentView *)self->_contentView sendSubviewToBack:?];
  }

  if (self->_bounceIconView)
  {
    [(SBFluidSwitcherContentView *)self->_contentView bringSubviewToFront:?];
  }

  if (self->_continuousExposeStripCaptureAndBlurHomeScreenBackdropView)
  {
    [(SBFluidSwitcherContentView *)self->_contentView sendSubviewToBack:?];
  }

  if (self->_continuousExposeStripTongue)
  {
    [(SBFluidSwitcherContentView *)self->_contentView bringSubviewToFront:?];
  }

  if (self->_rootDestOutClippingView)
  {
    [(SBFluidSwitcherContentView *)self->_contentView bringSubviewToFront:?];
  }
}

- (id)_dequeueOverlayAccessoryViewFromReusePool
{
  anyObject = [(NSMutableSet *)self->_overlayAccessoryViewsReusePool anyObject];
  if (anyObject)
  {
    v4 = anyObject;
    [(NSMutableSet *)self->_overlayAccessoryViewsReusePool removeObject:anyObject];
  }

  else
  {
    v4 = [[SBFluidSwitcherSpaceOverlayAccessoryView alloc] initWithDelegate:self];
  }

  return v4;
}

- (id)_dequeueUnderlayAccessoryViewFromReusePool
{
  anyObject = [(NSMutableSet *)self->_underlayAccessoryViewsReusePool anyObject];
  if (anyObject)
  {
    v4 = anyObject;
    [(NSMutableSet *)self->_underlayAccessoryViewsReusePool removeObject:anyObject];
  }

  else
  {
    v5 = [SBFluidSwitcherSpaceUnderlayAccessoryView alloc];
    _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
    systemPointerInteractionManager = [_sbWindowScene systemPointerInteractionManager];
    v4 = [(SBFluidSwitcherSpaceUnderlayAccessoryView *)v5 initWithDelegate:self systemPointerInteractionManager:systemPointerInteractionManager];
  }

  return v4;
}

- (BOOL)_shouldItemContainersUseDarkLabels
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = WeakRetained;
  v5 = (*(&self->_dataSourceRespondsTo + 1) & 0x40) != 0 && [WeakRetained backdropInterfaceStyleForContentController:self] == 1;

  return v5;
}

- (void)_updateScrollViewLayoutSizeAndSpacing
{
  [(SBFluidSwitcherViewController *)self _updateScrollViewScrollEnabled];
  scrollViewAttributes = [(SBSwitcherPersonality *)self->_personality scrollViewAttributes];
  v4 = scrollViewAttributes;
  if (scrollViewAttributes)
  {
    scrollView = self->_scrollView;
    v13 = scrollViewAttributes;
    [scrollViewAttributes frame];
    [(SBAppSwitcherScrollView *)scrollView setFrame:?];
    v6 = self->_scrollView;
    [v13 contentSize];
    [(SBAppSwitcherScrollView *)v6 setContentSize:?];
    scrollViewPagingEnabled = [v13 scrollViewPagingEnabled];
    [(SBAppSwitcherScrollView *)self->_scrollView setPagingEnabled:scrollViewPagingEnabled];
    if (scrollViewPagingEnabled)
    {
      v8 = self->_scrollView;
      [v13 interpageSpacingForPaging];
      [(SBAppSwitcherScrollView *)v8 _setInterpageSpacing:?];
      v9 = self->_scrollView;
      [v13 pagingOrigin];
      [(SBAppSwitcherScrollView *)v9 _setPagingOrigin:?];
    }

    [v13 decelerationRate];
    v11 = v10;
    [(SBAppSwitcherScrollView *)self->_scrollView setAlwaysBounceHorizontal:1];
    [(SBAppSwitcherScrollView *)self->_scrollView setAlwaysBounceVertical:0];
    [(SBAppSwitcherScrollView *)self->_scrollView horizontalScrollDecelerationFactor];
    v12 = BSFloatEqualToFloat();
    v4 = v13;
    if ((v12 & 1) == 0)
    {
      [(SBAppSwitcherScrollView *)self->_scrollView setHorizontalScrollDecelerationFactor:v11];
      v4 = v13;
    }
  }
}

- (void)_updateScrollViewScrollEnabled
{
  isScrollEnabled = [(SBSwitcherPersonality *)self->_personality isScrollEnabled];
  [(SBAppSwitcherScrollView *)self->_scrollView setScrollEnabled:isScrollEnabled];
  [(SBFluidSwitcherViewController *)self _updateContentViewPassesTouchesThrough];
  if ((isScrollEnabled & 1) == 0)
  {
    scrollView = self->_scrollView;

    [(SBAppSwitcherScrollView *)scrollView _stopScrollingAndZoomingAnimations];
  }
}

- (void)_updateContentViewPassesTouchesThrough
{
  if ([(SBSwitcherPersonality *)self->_personality isScrollEnabled])
  {
    shouldScrollViewBlockTouches = [(SBSwitcherPersonality *)self->_personality shouldScrollViewBlockTouches];
  }

  else
  {
    shouldScrollViewBlockTouches = 0;
  }

  wantsSwitcherDimmingView = [(SBSwitcherPersonality *)self->_personality wantsSwitcherDimmingView];
  if (wantsSwitcherDimmingView)
  {
    wantsSwitcherDimmingView = [(SBSwitcherPersonality *)self->_personality switcherDimmingViewBlocksTouches];
  }

  if ((shouldScrollViewBlockTouches | wantsSwitcherDimmingView))
  {
    v5 = 0;
  }

  else
  {
    v5 = [(SBSwitcherPersonality *)self->_personality switcherHitTestsAsOpaque]^ 1;
  }

  [(SBFluidSwitcherContentView *)self->_contentView setPassesTouchesThrough:v5];
  layer = [(SBFluidSwitcherContentView *)self->_contentView layer];
  [layer setHitTestsAsOpaque:v5 ^ 1];
}

- (void)_updateWallpaperStyle
{
  if ([(SBFluidSwitcherViewController *)self _controlsWallpaper])
  {
    isWallpaperRequiredForSwitcher = [(SBSwitcherPersonality *)self->_personality isWallpaperRequiredForSwitcher];
    if (self->_currentWallpaperRequiredForSwitcher != isWallpaperRequiredForSwitcher)
    {
      v4 = isWallpaperRequiredForSwitcher;
      wallpaperRequireAssertion = [(SBFluidSwitcherViewController *)self wallpaperRequireAssertion];
      [wallpaperRequireAssertion invalidate];

      if (v4)
      {
        v6 = +[SBWallpaperController sharedInstance];
        v7 = [v6 requireWallpaperWithReason:self->_fluidSwitcherAssertionReason];
        [(SBFluidSwitcherViewController *)self setWallpaperRequireAssertion:v7];
      }

      else
      {
        [(SBFluidSwitcherViewController *)self setWallpaperRequireAssertion:0];
      }

      self->_currentWallpaperRequiredForSwitcher = v4;
    }

    wallpaperStyle = [(SBSwitcherPersonality *)self->_personality wallpaperStyle];
    if (self->_currentWallpaperStyle != wallpaperStyle)
    {
      v9 = wallpaperStyle;
      delegate = [(SBFluidSwitcherViewController *)self delegate];
      if ((*(&self->_delegateRespondsTo + 1) & 0x10) != 0)
      {
        v11 = delegate;
        [delegate switcherContentController:self setWallpaperStyle:v9];
        delegate = v11;
      }

      self->_currentWallpaperStyle = v9;
    }
  }
}

- (BOOL)_controlsWallpaper
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = WeakRetained;
  if ((*(&self->_delegateRespondsTo + 1) & 4) != 0)
  {
    v5 = [WeakRetained switcherContentControllerControlsWallpaper:self];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)_updateHomeScreenContentRequirement
{
  if ([(SBFluidSwitcherViewController *)self _controlsHomeScreenContents])
  {
    isHomeScreenContentRequired = [(SBSwitcherPersonality *)self->_personality isHomeScreenContentRequired];
    if (self->_currentHomeScreenContentRequired != isHomeScreenContentRequired)
    {
      v4 = isHomeScreenContentRequired;
      _homeScreenAppearanceController = [(SBFluidSwitcherViewController *)self _homeScreenAppearanceController];
      v6 = _homeScreenAppearanceController;
      fluidSwitcherAssertionReason = self->_fluidSwitcherAssertionReason;
      if (v4)
      {
        [_homeScreenAppearanceController beginRequiringContentForReason:fluidSwitcherAssertionReason options:2];
      }

      else
      {
        [_homeScreenAppearanceController endRequiringContentForReason:fluidSwitcherAssertionReason];
      }

      self->_currentHomeScreenContentRequired = v4;
    }
  }
}

- (BOOL)_controlsHomeScreenContents
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = WeakRetained;
  if ((*(&self->_delegateRespondsTo + 2) & 0x80) != 0)
  {
    v5 = [WeakRetained switcherContentControllerControlsHomeScreenContents:self];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)_homeScreenAppearanceController
{
  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  homeScreenController = [_sbWindowScene homeScreenController];

  return homeScreenController;
}

- (void)_updateHomeScreenBackdropType
{
  if ([(SBFluidSwitcherViewController *)self _controlsHomeScreenContents])
  {
    homeScreenBackdropBlurType = [(SBSwitcherPersonality *)self->_personality homeScreenBackdropBlurType];
    if (homeScreenBackdropBlurType == 3)
    {
      if ([(SBAppSwitcherSettings *)self->_settings shouldSimplifyForOptions:16])
      {
        homeScreenBackdropBlurType = 2;
      }

      else
      {
        homeScreenBackdropBlurType = 3;
      }
    }

    if (self->_currentHomeScreenBackdropBlurType != homeScreenBackdropBlurType)
    {
      delegate = [(SBFluidSwitcherViewController *)self delegate];
      if (*(&self->_delegateRespondsTo + 1))
      {
        [delegate switcherContentController:self setHomeScreenBackdropBlurType:homeScreenBackdropBlurType];
      }

      self->_currentHomeScreenBackdropBlurType = homeScreenBackdropBlurType;
      [(SBFluidSwitcherViewController *)self _updateTitleItemsLabelColor];
    }
  }
}

- (void)_updateTitleItemsLabelColor
{
  v14 = *MEMORY[0x277D85DE8];
  _shouldItemContainersUseDarkLabels = [(SBFluidSwitcherViewController *)self _shouldItemContainersUseDarkLabels];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allValues = [(NSMutableDictionary *)self->_appLayoutToTitleItemController allValues];
  v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v9 + 1) + 8 * v8++) setUseDarkLabels:_shouldItemContainersUseDarkLabels];
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_updateSwitcherBackdropType
{
  switcherBackdropBlurType = [(SBSwitcherPersonality *)self->_personality switcherBackdropBlurType];
  if (switcherBackdropBlurType == 3)
  {
    if ([(SBAppSwitcherSettings *)self->_settings shouldSimplifyForOptions:16])
    {
      switcherBackdropBlurType = 2;
    }

    else
    {
      switcherBackdropBlurType = 3;
    }
  }

  if (self->_currentSwitcherBackdropBlurType != switcherBackdropBlurType)
  {
    self->_currentSwitcherBackdropBlurType = switcherBackdropBlurType;
    fluidSwitcherAssertionReason = self->_fluidSwitcherAssertionReason;
    if (switcherBackdropBlurType == 1)
    {
      backdropView = self->_backdropView;

      [(SBHomeScreenBackdropViewBase *)backdropView endRequiringLiveBackdropViewForReason:fluidSwitcherAssertionReason];
    }

    else
    {
      v6 = self->_backdropView;

      [(SBHomeScreenBackdropViewBase *)v6 beginRequiringLiveBackdropViewForReason:fluidSwitcherAssertionReason];
    }
  }
}

- (void)_updateSystemApertureShadowAssertion
{
  systemApertureRequiresHeavyShadowForTransition = [(SBSwitcherPersonality *)self->_personality systemApertureRequiresHeavyShadowForTransition];
  systemApertureShadowAssertion = self->_systemApertureShadowAssertion;
  if (systemApertureRequiresHeavyShadowForTransition)
  {
    if (systemApertureShadowAssertion)
    {
      return;
    }

    systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
    requireHeavyShadowAssertionForTransition = [systemApertureControllerForMainDisplay requireHeavyShadowAssertionForTransition];
    v6 = self->_systemApertureShadowAssertion;
    self->_systemApertureShadowAssertion = requireHeavyShadowAssertionForTransition;

    v7 = systemApertureControllerForMainDisplay;
  }

  else
  {
    if (!systemApertureShadowAssertion)
    {
      return;
    }

    [(SAInvalidatable *)systemApertureShadowAssertion invalidateWithReason:@"No Personality Requires Shadow"];
    v7 = self->_systemApertureShadowAssertion;
    self->_systemApertureShadowAssertion = 0;
  }
}

- (void)_updateVisibleAccessoryViews
{
  [(SBFluidSwitcherViewController *)self _updateVisibleHomeAffordanceViews];
  [(SBFluidSwitcherViewController *)self _updateVisibleShelves];
  [(SBFluidSwitcherViewController *)self _updateVisibleSplitViewHandleNubViews];

  [(SBFluidSwitcherViewController *)self _updateVisibleSplitViewHandleDimmingViews];
}

- (void)_updateVisibleHomeAffordanceViews
{
  v103 = *MEMORY[0x277D85DE8];
  _spacesWithVisibleHomeAffordances = [(SBFluidSwitcherViewController *)self _spacesWithVisibleHomeAffordances];
  visibleHomeAffordanceLayoutElements = [(SBSwitcherPersonality *)self->_personality visibleHomeAffordanceLayoutElements];
  v92[0] = MEMORY[0x277D85DD0];
  v92[1] = 3221225472;
  v92[2] = __66__SBFluidSwitcherViewController__updateVisibleHomeAffordanceViews__block_invoke;
  v92[3] = &unk_2783AEA98;
  v92[4] = self;
  v5 = [visibleHomeAffordanceLayoutElements bs_filter:v92];

  v6 = [_spacesWithVisibleHomeAffordances mutableCopy];
  [v6 minusSet:v5];
  v68 = v5;
  v72 = [v5 mutableCopy];
  [v72 minusSet:_spacesWithVisibleHomeAffordances];
  v69 = _spacesWithVisibleHomeAffordances;
  v70 = [_spacesWithVisibleHomeAffordances mutableCopy];
  [v70 minusSet:v6];
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v88 objects:v102 count:16];
  v8 = &OBJC_IVAR___SBHomeGestureDismissableCoverSheetViewController__wantsHomeGestureOwnership;
  if (v7)
  {
    v9 = v7;
    v10 = *v89;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v89 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v88 + 1) + 8 * i);
        if (![v12 switcherLayoutElementType])
        {
          v13 = v12;
          v14 = [*(&self->super.super.super.isa + v8[732]) objectForKey:v13];
          if (v14)
          {
            activeTransitionContext = [(SBFluidSwitcherLayoutContext *)self->_layoutContext activeTransitionContext];

            if (activeTransitionContext)
            {
              homeGrabberView = [v14 homeGrabberView];
              grabberView = [homeGrabberView grabberView];

              if (([grabberView isHidden] & 1) == 0)
              {
                hideForHomeGestureOwnershipAnimationSettings = [(SBFHomeGrabberSettings *)self->_homeGrabberSettings hideForHomeGestureOwnershipAnimationSettings];
                bSAnimationSettings = [hideForHomeGestureOwnershipAnimationSettings BSAnimationSettings];

                [grabberView setHidden:1 forReason:@"FluidSwitcherHomeGrabberHideReason" withAnimationSettings:bSAnimationSettings];
              }

              v8 = &OBJC_IVAR___SBHomeGestureDismissableCoverSheetViewController__wantsHomeGestureOwnership;
            }

            else
            {
              [v14 setHomeGrabberView:0];
            }
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v88 objects:v102 count:16];
    }

    while (v9);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v20 = v72;
  v21 = [v20 countByEnumeratingWithState:&v84 objects:v101 count:16];
  v71 = v20;
  if (v21)
  {
    v22 = v21;
    v23 = *v85;
    v24 = *MEMORY[0x277CBF3A0];
    v25 = *(MEMORY[0x277CBF3A0] + 8);
    v26 = *(MEMORY[0x277CBF3A0] + 16);
    v27 = *(MEMORY[0x277CBF3A0] + 24);
    v73 = *v85;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v85 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v29 = *(*(&v84 + 1) + 8 * j);
        if (![v29 switcherLayoutElementType])
        {
          v30 = v29;
          v31 = [*(&self->super.super.super.isa + v8[732]) objectForKey:v30];
          if (v31)
          {
            if ([v30 environment] == 2)
            {
              floatingSwitcherSettings = [(SBAppSwitcherSettings *)self->_settings floatingSwitcherSettings];
              homeAffordanceSettings = [floatingSwitcherSettings homeAffordanceSettings];
            }

            else
            {
              homeAffordanceSettings = 0;
            }

            v34 = [[SBHomeGrabberRotationView alloc] initWithFrame:homeAffordanceSettings settings:0 useRotationWrapperViews:v24, v25, v26, v27];
            [(SBHomeGrabberRotationView *)v34 setOrientation:[(SBFluidSwitcherViewController *)self _bestSupportedHomeAffordanceOrientationForOrientation:self->_contentOrientation inAppLayout:v30]];
            [(SBHomeGrabberRotationView *)v34 setUserInteractionEnabled:0];
            [v31 setHomeGrabberView:v34];
            grabberView2 = [(SBHomeGrabberRotationView *)v34 grabberView];
            [grabberView2 setHidden:1 forReason:@"FluidSwitcherHomeGrabberHideReason" withAnimationSettings:0];

            unhideAnimationSettings = [(SBFHomeGrabberSettings *)self->_homeGrabberSettings unhideAnimationSettings];
            bSAnimationSettings2 = [unhideAnimationSettings BSAnimationSettings];

            grabberView3 = [(SBHomeGrabberRotationView *)v34 grabberView];
            [grabberView3 setHidden:0 forReason:@"FluidSwitcherHomeGrabberHideReason" withAnimationSettings:bSAnimationSettings2];

            v8 = &OBJC_IVAR___SBHomeGestureDismissableCoverSheetViewController__wantsHomeGestureOwnership;
            v20 = v71;
            v23 = v73;
          }
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v84 objects:v101 count:16];
    }

    while (v22);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v39 = v70;
  v40 = [v39 countByEnumeratingWithState:&v80 objects:v100 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v81;
    v43 = *MEMORY[0x277CBF3A0];
    v44 = *(MEMORY[0x277CBF3A0] + 8);
    v45 = *(MEMORY[0x277CBF3A0] + 16);
    v46 = *(MEMORY[0x277CBF3A0] + 24);
    v74 = v39;
    do
    {
      for (k = 0; k != v41; ++k)
      {
        if (*v81 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v48 = *(*(&v80 + 1) + 8 * k);
        if (![v48 switcherLayoutElementType])
        {
          v49 = v48;
          v50 = v8[732];
          v51 = [*(&self->super.super.super.isa + v50) objectForKey:v49];
          if (v51)
          {
            if ([v49 environment] == 2)
            {
              floatingSwitcherSettings2 = [(SBAppSwitcherSettings *)self->_settings floatingSwitcherSettings];
              homeAffordanceSettings2 = [floatingSwitcherSettings2 homeAffordanceSettings];
            }

            else
            {
              homeAffordanceSettings2 = 0;
            }

            homeGrabberView2 = [v51 homeGrabberView];
            grabberView4 = [homeGrabberView2 grabberView];

            if (grabberView4)
            {
              if ([grabberView4 isHidden])
              {
                unhideAnimationSettings2 = [(SBFHomeGrabberSettings *)self->_homeGrabberSettings unhideAnimationSettings];
                bSAnimationSettings3 = [unhideAnimationSettings2 BSAnimationSettings];

                [grabberView4 setHidden:0 forReason:@"FluidSwitcherHomeGrabberHideReason" withAnimationSettings:bSAnimationSettings3];
                goto LABEL_46;
              }
            }

            else
            {
              bSAnimationSettings3 = [[SBHomeGrabberRotationView alloc] initWithFrame:homeAffordanceSettings2 settings:0 useRotationWrapperViews:v43, v44, v45, v46];
              [(SBHomeGrabberRotationView *)bSAnimationSettings3 setUserInteractionEnabled:0];
              [v51 setHomeGrabberView:bSAnimationSettings3];
LABEL_46:

              v8 = &OBJC_IVAR___SBHomeGestureDismissableCoverSheetViewController__wantsHomeGestureOwnership;
            }

            v39 = v74;
          }

          else
          {
            homeAffordanceSettings2 = SBLogAppSwitcher();
            if (os_log_type_enabled(homeAffordanceSettings2, OS_LOG_TYPE_ERROR))
            {
              debugName = self->_debugName;
              v55 = [*(&self->super.super.super.isa + v50) count];
              *buf = 138543874;
              v95 = debugName;
              v39 = v74;
              v96 = 2114;
              v97 = v49;
              v98 = 2048;
              v99 = v55;
              _os_log_error_impl(&dword_21ED4E000, homeAffordanceSettings2, OS_LOG_TYPE_ERROR, "[%{public}@] Didn't find overlayAccessoryView for home affordance to leave (layoutElement: %{public}@) in _visibleOverlayAccessoryViews (count=%lu)", buf, 0x20u);
            }
          }

          continue;
        }
      }

      v41 = [v39 countByEnumeratingWithState:&v80 objects:v100 count:16];
    }

    while (v41);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v60 = v68;
  v61 = [v60 countByEnumeratingWithState:&v76 objects:v93 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v77;
    do
    {
      for (m = 0; m != v62; ++m)
      {
        if (*v77 != v63)
        {
          objc_enumerationMutation(v60);
        }

        v65 = *(*(&v76 + 1) + 8 * m);
        if (![v65 switcherLayoutElementType])
        {
          [(SBFluidSwitcherViewController *)self _updateEdgeProtectAndAutoHideForHomeAffordancesInAppLayout:v65 withResetDelay:0.0 unhideDelay:0.0];
        }
      }

      v62 = [v60 countByEnumeratingWithState:&v76 objects:v93 count:16];
    }

    while (v62);
  }

  [(SBFluidSwitcherViewController *)self _updateSuppressingHomeAffordanceBounce];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v67 = WeakRetained;
  if (*(&self->_delegateRespondsTo + 4))
  {
    [WeakRetained switcherContentControllerDidUpdateVisibleHomeAffordances:self];
  }
}

- (id)_spacesWithVisibleHomeAffordances
{
  v3 = MEMORY[0x277CBEB98];
  allKeys = [(NSMutableDictionary *)self->_visibleOverlayAccessoryViews allKeys];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__SBFluidSwitcherViewController__spacesWithVisibleHomeAffordances__block_invoke;
  v8[3] = &unk_2783A8CB8;
  v8[4] = self;
  v5 = [allKeys bs_filter:v8];
  v6 = [v3 setWithArray:v5];

  return v6;
}

BOOL __66__SBFluidSwitcherViewController__spacesWithVisibleHomeAffordances__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 1976) objectForKey:a2];
  v3 = [v2 homeGrabberView];
  v4 = v3 != 0;

  return v4;
}

- (void)_updateSuppressingHomeAffordanceBounce
{
  v18 = *MEMORY[0x277D85DE8];
  if (__sb__runningInSpringBoard())
  {
    v3 = SBFEffectiveDeviceClass() == 2 && self->_isKeyboardShowing;
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v3 = [currentDevice userInterfaceIdiom] == 1 && self->_isKeyboardShowing;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  _spacesWithVisibleHomeAffordances = [(SBFluidSwitcherViewController *)self _spacesWithVisibleHomeAffordances];
  v6 = [_spacesWithVisibleHomeAffordances countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(_spacesWithVisibleHomeAffordances);
        }

        v10 = [(NSMutableDictionary *)self->_visibleOverlayAccessoryViews objectForKey:*(*(&v13 + 1) + 8 * i)];
        homeGrabberView = [v10 homeGrabberView];
        grabberView = [homeGrabberView grabberView];
        [grabberView setSuppressesBounce:v3];
      }

      v7 = [_spacesWithVisibleHomeAffordances countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)_updateVisibleShelves
{
  v116 = *MEMORY[0x277D85DE8];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    visibleShelves = [(SBSwitcherPersonality *)self->_personality visibleShelves];
    allKeys = [(NSMutableDictionary *)self->_visibleShelves allKeys];
    v107[0] = MEMORY[0x277D85DD0];
    v107[1] = 3221225472;
    v107[2] = __54__SBFluidSwitcherViewController__updateVisibleShelves__block_invoke;
    v107[3] = &unk_2783AEAC0;
    v7 = visibleShelves;
    v108 = v7;
    selfCopy = self;
    v70 = [allKeys bs_filter:v107];

    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    obj = v7;
    v75 = [obj countByEnumeratingWithState:&v103 objects:v115 count:16];
    if (v75)
    {
      v73 = *v104;
      v8 = *MEMORY[0x277CBF3A0];
      v9 = *(MEMORY[0x277CBF3A0] + 8);
      v10 = *(MEMORY[0x277CBF3A0] + 16);
      v11 = *(MEMORY[0x277CBF3A0] + 24);
      do
      {
        for (i = 0; i != v75; ++i)
        {
          if (*v104 != v73)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v103 + 1) + 8 * i);
          v14 = [(SBSwitcherPersonality *)self->_personality containerLeafAppLayoutForShelf:v13];
          v15 = [(NSMutableDictionary *)self->_visibleShelves objectForKey:v13];
          if (!v15)
          {
            v16 = [[SBSwitcherShelfViewController alloc] initWithShelf:v13 dataSource:self delegate:self];
            visibleShelves = self->_visibleShelves;
            v113 = v13;
            v114 = v16;
            v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
            [(NSMutableDictionary *)visibleShelves addEntriesFromDictionary:v18];

            v102 = 0;
            v100 = 0u;
            v101 = 0u;
            v99 = 0u;
            personality = self->_personality;
            if (personality)
            {
              [(SBSwitcherPersonality *)personality presentationAttributesForShelf:v13];
              v20 = v102;
            }

            else
            {
              v20 = 0;
            }

            [(SBSwitcherShelfViewController *)v16 setContentOptions:v20];
            [(SBFluidSwitcherViewController *)self addChildViewController:v16];
            [(SBSwitcherShelfViewController *)v16 beginAppearanceTransition:1 animated:0];
            if (v14)
            {
              view = [(NSDictionary *)self->_leafAppLayoutsToAdjustedAppLayouts objectForKey:v14];
              v22 = [(NSMutableDictionary *)self->_visibleOverlayAccessoryViews objectForKey:view];
              [v22 setShelfViewController:v16];
            }

            else
            {
              contentView = self->_contentView;
              view = [(SBSwitcherShelfViewController *)v16 view];
              [(SBFluidSwitcherContentView *)contentView addSubview:view];
            }

            [(SBSwitcherShelfViewController *)v16 endAppearanceTransition];
            [(SBSwitcherShelfViewController *)v16 didMoveToParentViewController:self];
            v97[0] = MEMORY[0x277D85DD0];
            v97[1] = 3221225472;
            v97[2] = __54__SBFluidSwitcherViewController__updateVisibleShelves__block_invoke_2;
            v97[3] = &unk_2783A92D8;
            v97[4] = self;
            v15 = v16;
            v98 = v15;
            [(SBFluidSwitcherViewController *)self _performWithFixedUpdateMode:1 usingBlock:v97];
            activeTransitionContext = [(SBFluidSwitcherLayoutContext *)self->_layoutContext activeTransitionContext];

            if (activeTransitionContext)
            {
              layoutStateTransitionCoordinator = self->_layoutStateTransitionCoordinator;
              transitionContext = [(SBLayoutStateTransitionCoordinator *)layoutStateTransitionCoordinator transitionContext];
              [(SBSwitcherShelfViewController *)v15 layoutStateTransitionCoordinator:layoutStateTransitionCoordinator transitionDidBeginWithTransitionContext:transitionContext];
            }
          }

          v79 = v14;
          if (v14)
          {
            v27 = [(NSDictionary *)self->_leafAppLayoutsToAdjustedAppLayouts objectForKey:v14];
            v28 = [(NSMutableDictionary *)self->_visibleOverlayAccessoryViews objectForKey:v27];

            view2 = [(SBSwitcherShelfViewController *)v15 view];
            v77 = view2;
            if ([(NSMutableSet *)self->_visibleShelvesHostedInContentView containsObject:v13])
            {
              [view2 removeFromSuperview];
              [v28 setShelfViewController:v15];
              [(NSMutableSet *)self->_visibleShelvesHostedInContentView removeObject:v13];
            }

            else
            {
              shelfViewController = [v28 shelfViewController];

              if (shelfViewController != v15)
              {
                allValues = [(NSMutableDictionary *)self->_visibleOverlayAccessoryViews allValues];
                v93[0] = MEMORY[0x277D85DD0];
                v93[1] = 3221225472;
                v93[2] = __54__SBFluidSwitcherViewController__updateVisibleShelves__block_invoke_4;
                v93[3] = &unk_2783AEAE8;
                v35 = v15;
                v94 = v35;
                v36 = [allValues bs_firstObjectPassingTest:v93];

                [v36 setShelfViewController:0];
                [v28 setShelfViewController:v35];
              }
            }
          }

          else
          {
            allValues2 = [(NSMutableDictionary *)self->_visibleOverlayAccessoryViews allValues];
            v95[0] = MEMORY[0x277D85DD0];
            v95[1] = 3221225472;
            v95[2] = __54__SBFluidSwitcherViewController__updateVisibleShelves__block_invoke_3;
            v95[3] = &unk_2783AEAE8;
            v31 = v15;
            v96 = v31;
            v28 = [allValues2 bs_firstObjectPassingTest:v95];

            view3 = [(SBSwitcherShelfViewController *)v31 view];
            v77 = view3;
            if (([(NSMutableSet *)self->_visibleShelvesHostedInContentView containsObject:v13]& 1) == 0)
            {
              [v28 setShelfViewController:0];
              [(SBFluidSwitcherContentView *)self->_contentView addSubview:view3];
              [(NSMutableSet *)self->_visibleShelvesHostedInContentView addObject:v13];
            }
          }

          v37 = [(SBSwitcherPersonality *)self->_personality focusedAppLayoutForShelf:v13];
          v38 = MEMORY[0x277CBEB98];
          allItems = [v37 allItems];
          v40 = [v38 setWithArray:allItems];
          [(SBSwitcherShelfViewController *)v15 setFocusedDisplayItems:v40];

          v41 = [(SBSwitcherPersonality *)self->_personality ignoredDisplayItemsForShelf:v13];
          [(SBSwitcherShelfViewController *)v15 setIgnoredDisplayItems:v41];
          v42 = [(SBSwitcherPersonality *)self->_personality homeAffordanceLayoutElementToPortalIntoShelf:v13];
          v43 = v42;
          if (v42 && ![v42 switcherLayoutElementType])
          {
            v44 = [(NSMutableDictionary *)self->_visibleOverlayAccessoryViews objectForKey:v43];
            homeGrabberView = [v44 homeGrabberView];
            v46 = [[SBPortalView alloc] initWithFrame:v8, v9, v10, v11];
            [(SBPortalView *)v46 setSourceView:homeGrabberView];
            [(SBPortalView *)v46 setHidesSourceView:1];
            [(SBPortalView *)v46 setMatchesPosition:1];
            [(SBPortalView *)v46 setMatchesTransform:1];
            [(SBPortalView *)v46 setMatchesAlpha:1];
            [(SBSwitcherShelfViewController *)v15 setHomeAffordancePortalView:v46];
          }

          else
          {
            [(SBSwitcherShelfViewController *)v15 setHomeAffordancePortalView:0];
          }
        }

        v75 = [obj countByEnumeratingWithState:&v103 objects:v115 count:16];
      }

      while (v75);
    }

    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v74 = v70;
    v78 = [v74 countByEnumeratingWithState:&v89 objects:v112 count:16];
    if (v78)
    {
      v47 = *v90;
      v48 = &OBJC_IVAR___SBHomeGestureDismissableCoverSheetViewController__wantsHomeGestureOwnership;
      v71 = *v90;
      do
      {
        for (j = 0; j != v78; ++j)
        {
          if (*v90 != v47)
          {
            objc_enumerationMutation(v74);
          }

          v50 = *(*(&v89 + 1) + 8 * j);
          v51 = v48[852];
          v52 = [*(&self->super.super.super.isa + v51) objectForKey:v50];
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          v88 = 0u;
          v80 = v52;
          allValues3 = [v52 allValues];
          v54 = [allValues3 countByEnumeratingWithState:&v85 objects:v111 count:16];
          if (v54)
          {
            v55 = v54;
            v56 = *v86;
            do
            {
              for (k = 0; k != v55; ++k)
              {
                if (*v86 != v56)
                {
                  objc_enumerationMutation(allValues3);
                }

                [*(*(&v85 + 1) + 8 * k) invalidate];
              }

              v55 = [allValues3 countByEnumeratingWithState:&v85 objects:v111 count:16];
            }

            while (v55);
          }

          [*(&self->super.super.super.isa + v51) removeObjectForKey:v50];
          v58 = [(NSMutableDictionary *)self->_visibleShelves objectForKey:v50];
          v59 = v58;
          if (v58)
          {
            [v58 setHomeAffordancePortalView:0];
            [v59 willMoveToParentViewController:0];
            [v59 beginAppearanceTransition:0 animated:0];
            view4 = [v59 view];
            superview = [view4 superview];
            v62 = self->_contentView;

            if (superview == v62)
            {
              [view4 removeFromSuperview];
            }

            else
            {
              v76 = view4;
              v83 = 0u;
              v84 = 0u;
              v81 = 0u;
              v82 = 0u;
              allValues4 = [(NSMutableDictionary *)self->_visibleOverlayAccessoryViews allValues];
              v64 = [allValues4 countByEnumeratingWithState:&v81 objects:v110 count:16];
              if (v64)
              {
                v65 = v64;
                v66 = *v82;
                while (2)
                {
                  for (m = 0; m != v65; ++m)
                  {
                    if (*v82 != v66)
                    {
                      objc_enumerationMutation(allValues4);
                    }

                    v68 = *(*(&v81 + 1) + 8 * m);
                    shelfViewController2 = [v68 shelfViewController];

                    if (shelfViewController2 == v59)
                    {
                      [v68 setShelfViewController:0];
                      goto LABEL_54;
                    }
                  }

                  v65 = [allValues4 countByEnumeratingWithState:&v81 objects:v110 count:16];
                  if (v65)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_54:

              v47 = v71;
              v48 = &OBJC_IVAR___SBHomeGestureDismissableCoverSheetViewController__wantsHomeGestureOwnership;
              view4 = v76;
            }

            [v59 endAppearanceTransition];
            [v59 removeFromParentViewController];
          }

          [(NSMutableSet *)self->_visibleShelvesHostedInContentView removeObject:v50];
        }

        v78 = [v74 countByEnumeratingWithState:&v89 objects:v112 count:16];
      }

      while (v78);
    }

    [(NSMutableDictionary *)self->_visibleShelves removeObjectsForKeys:v74];
    [(SBFluidSwitcherViewController *)self _ensureSubviewOrdering];
  }
}

- (int64_t)homeScreenInterfaceOrientation
{
  dataSource = [(SBFluidSwitcherViewController *)self dataSource];
  v4 = dataSource;
  if ((*(&self->_dataSourceRespondsTo + 1) & 0x20) != 0)
  {
    v5 = [dataSource homeScreenInterfaceOrientationForContentController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateImplicitpersonalityInvalidatables
{
  viewIfLoaded = [(SBFluidSwitcherViewController *)self viewIfLoaded];

  if (viewIfLoaded && !self->_isPendingInvalidatablesForAcceleratedHomeGesture)
  {
    isPendingInvalidatablesForAcceleratedHomeGesture = [(SBSwitcherPersonality *)self->_personality isPendingInvalidatablesForAcceleratedHomeGesture];
    self->_isPendingInvalidatablesForAcceleratedHomeGesture = isPendingInvalidatablesForAcceleratedHomeGesture;
    if (isPendingInvalidatablesForAcceleratedHomeGesture)
    {
      objc_initWeak(&location, self);
      objc_copyWeak(&v5, &location);
      BSRunLoopPerformAfterCACommit();
      objc_destroyWeak(&v5);
      objc_destroyWeak(&location);
    }

    else
    {

      [(SBFluidSwitcherViewController *)self __updateImplicitpersonalityInvalidatables];
    }
  }
}

- (void)_updateSpringBoardStatusBarVisibility
{
  delegate = [(SBFluidSwitcherViewController *)self delegate];
  if (*(&self->_delegateRespondsTo + 2))
  {
    v6 = delegate;
    isContainerStatusBarVisible = [(SBSwitcherPersonality *)self->_personality isContainerStatusBarVisible];
    hiddenContainerStatusBarParts = [(SBSwitcherPersonality *)self->_personality hiddenContainerStatusBarParts];
    [(SBSwitcherPersonality *)self->_personality containerStatusBarAnimationDuration];
    [v6 switcherContentController:self setContainerStatusBarHidden:isContainerStatusBarVisible ^ 1u partsHidden:hiddenContainerStatusBarParts animationDuration:?];
    delegate = v6;
  }
}

- (void)_updateAsynchronousSurfaceRetentionAssertion
{
  wantsAsynchronousSurfaceRetentionAssertion = [(SBSwitcherPersonality *)self->_personality wantsAsynchronousSurfaceRetentionAssertion];
  delegate = [(SBFluidSwitcherViewController *)self delegate];
  if (*(&self->_delegateRespondsTo + 3))
  {
    v5 = delegate;
    [delegate switcherContentController:self setCacheAsynchronousRenderingSurfaces:wantsAsynchronousSurfaceRetentionAssertion];
    delegate = v5;
  }
}

void __62__SBFluidSwitcherViewController__updateResignActiveAssertions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 integerValue];
  v7 = +[SBSceneManagerCoordinator sharedInstance];
  v8 = [v7 sceneDeactivationManager];
  v10 = [v8 newAssertionWithReason:v6];

  v9 = [*(a1 + 32) _sceneDeactivationPredicateMatchingAppLayouts:v5];

  [v10 acquireWithPredicate:v9 transitionContext:0];
  [*(a1 + 40) addObject:v10];
}

- (void)_updateKeyboardSuppressionAssertion
{
  obj = [(SBSwitcherPersonality *)self->_personality keyboardSuppressionMode];
  if (![(SBSwitcherKeyboardSuppressionMode *)self->_lastKeyboardSuppressionMode isEqual:?])
  {
    objc_storeStrong(&self->_lastKeyboardSuppressionMode, obj);
    v3 = +[SBSwitcherKeyboardSuppressionMode suppressionModeNone];

    if (obj == v3)
    {
      v4 = +[SBKeyboardSuppressionManager sharedInstance];
      [v4 stopSuppressingKeyboardWithReason:self->_fluidSwitcherAssertionReason];
    }

    else
    {
      [(SBFluidSwitcherViewController *)self _acquireKeyboardSuppressionAssertionForMode:obj];
    }
  }
}

- (void)_updateFloatingDockBehaviorAssertion
{
  if (+[SBFloatingDockController isFloatingDockSupported])
  {
    if ([(SBSwitcherPersonality *)self->_personality wantsDockBehaviorAssertion]&& ![(SBFluidSwitcherViewController *)self _shouldInterruptPresentationAndDismiss])
    {
      dockUpdateMode = [(SBSwitcherPersonality *)self->_personality dockUpdateMode];
      switcherFloatingDockBehaviorAssertion = [(SBFluidSwitcherViewController *)self switcherFloatingDockBehaviorAssertion];

      if (!switcherFloatingDockBehaviorAssertion)
      {
        [(SBSwitcherPersonality *)self->_personality dockProgress];
        v7 = v6;
        v8 = [SBFloatingDockBehaviorAssertion alloc];
        _floatingDockController = [(SBFluidSwitcherViewController *)self _floatingDockController];
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = [(SBFloatingDockBehaviorAssertion *)v8 initWithFloatingDockController:_floatingDockController visibleProgress:dockUpdateMode > 2 animated:0 gesturePossible:9 atLevel:v11 reason:0 withCompletion:v7];
        [(SBFluidSwitcherViewController *)self setSwitcherFloatingDockBehaviorAssertion:v12];
      }

      [(SBSwitcherPersonality *)self->_personality dockProgress];
      v14 = v13;
      switcherFloatingDockBehaviorAssertion2 = [(SBFluidSwitcherViewController *)self switcherFloatingDockBehaviorAssertion];
      [switcherFloatingDockBehaviorAssertion2 modifyProgress:dockUpdateMode == 5 interactive:0 completion:v14];
    }

    else
    {
      switcherFloatingDockBehaviorAssertion3 = [(SBFluidSwitcherViewController *)self switcherFloatingDockBehaviorAssertion];
      [switcherFloatingDockBehaviorAssertion3 invalidate];

      [(SBFluidSwitcherViewController *)self setSwitcherFloatingDockBehaviorAssertion:0];
    }
  }
}

- (void)_updateFloatingDockWindowLevelAssertion
{
  if ([(SBSwitcherPersonality *)self->_personality wantsDockWindowLevelAssertion])
  {
    dockWindowLevelPriority = [(SBSwitcherPersonality *)self->_personality dockWindowLevelPriority];
    [(SBSwitcherPersonality *)self->_personality dockWindowLevel];
    v5 = v4;
    v14 = self->_switcherFloatingDockWindowLevelAssertion;
    if (!v14 || [(SBFloatingDockWindowLevelAssertion *)v14 priority]!= dockWindowLevelPriority || ([(SBFloatingDockWindowLevelAssertion *)v14 level], v6 = v14, v7 != v5))
    {
      _floatingDockController = [(SBFluidSwitcherViewController *)self _floatingDockController];
      v9 = [SBFloatingDockWindowLevelAssertion alloc];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [(SBFloatingDockWindowLevelAssertion *)v9 initWithFloatingDockController:_floatingDockController priority:dockWindowLevelPriority level:v11 reason:v5];
      switcherFloatingDockWindowLevelAssertion = self->_switcherFloatingDockWindowLevelAssertion;
      self->_switcherFloatingDockWindowLevelAssertion = v12;

      [(SBFloatingDockWindowLevelAssertion *)v14 invalidate];
      v6 = v14;
    }
  }

  else
  {
    [(SBFloatingDockWindowLevelAssertion *)self->_switcherFloatingDockWindowLevelAssertion invalidate];
    v6 = self->_switcherFloatingDockWindowLevelAssertion;
    self->_switcherFloatingDockWindowLevelAssertion = 0;
  }
}

- (void)_updatePlusButtonPresence
{
  appExposeAccessoryButtonsBundleIdentifier = [(SBSwitcherPersonality *)self->_personality appExposeAccessoryButtonsBundleIdentifier];
  v4 = appExposeAccessoryButtonsBundleIdentifier;
  v16 = appExposeAccessoryButtonsBundleIdentifier;
  if (appExposeAccessoryButtonsBundleIdentifier && (v5 = [appExposeAccessoryButtonsBundleIdentifier isEqualToString:@"com.apple.InCallService"], v4 = v16, (v5 & 1) == 0))
  {
    if (self->_plusButton)
    {
      goto LABEL_8;
    }

    v8 = [MEMORY[0x277D755B8] systemImageNamed:@"plus"];
    v9 = [MEMORY[0x277D755D0] configurationWithPointSize:6 weight:14.1];
    v10 = [v8 imageWithConfiguration:v9];

    blackColor = [MEMORY[0x277D75348] blackColor];
    v7 = [v10 imageWithTintColor:blackColor renderingMode:1];

    v12 = [SBFluidSwitcherButton alloc];
    v13 = [(SBFluidSwitcherButton *)v12 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    plusButton = self->_plusButton;
    self->_plusButton = v13;

    [(SBFluidSwitcherButton *)self->_plusButton setAlpha:0.0];
    [(SBFluidSwitcherButton *)self->_plusButton setBackdropGroupName:@"AppExposeAccessoryButtonsMaterialGroupName"];
    [(SBFluidSwitcherButton *)self->_plusButton setImage:v7];
    [(SBFluidSwitcherButton *)self->_plusButton setAccessibilityIdentifier:@"switcher-plus-button"];
    [(SBFluidSwitcherButton *)self->_plusButton addTarget:self action:sel__handlePlusButtonTapped_ forControlEvents:64];
    [(SBFluidSwitcherContentView *)self->_contentView addSubview:self->_plusButton];
    view = [(SBFluidSwitcherViewController *)self view];
    [view setNeedsLayout];
  }

  else
  {
    v6 = self->_plusButton;
    if (!v6)
    {
      goto LABEL_8;
    }

    [(SBFluidSwitcherButton *)v6 removeFromSuperview];
    v7 = self->_plusButton;
    self->_plusButton = 0;
  }

  v4 = v16;
LABEL_8:
}

- (void)_updateReopenClosedWindowsButtonPresence
{
  appExposeAccessoryButtonsBundleIdentifier = [(SBSwitcherPersonality *)self->_personality appExposeAccessoryButtonsBundleIdentifier];

  reopenClosedWindowsButton = self->_reopenClosedWindowsButton;
  if (appExposeAccessoryButtonsBundleIdentifier)
  {
    if (reopenClosedWindowsButton)
    {
      return;
    }

    v5 = objc_alloc_init(SBFluidSwitcherTitledButton);
    v6 = self->_reopenClosedWindowsButton;
    self->_reopenClosedWindowsButton = v5;

    [(SBFluidSwitcherTitledButton *)self->_reopenClosedWindowsButton setAlpha:0.0];
    [(SBFluidSwitcherButton *)self->_reopenClosedWindowsButton setBackdropGroupName:@"AppExposeAccessoryButtonsMaterialGroupName"];
    [(SBFluidSwitcherTitledButton *)self->_reopenClosedWindowsButton addTarget:self action:sel_handleReopenClosedWindowsButtonTapped_ forControlEvents:64];
    [(SBFluidSwitcherContentView *)self->_contentView addSubview:self->_reopenClosedWindowsButton];
    [(SBFluidSwitcherViewController *)self _updateReopenClosedWindowsButtonText];
    view = [(SBFluidSwitcherViewController *)self view];
    [(SBFluidSwitcherTitledButton *)view setNeedsLayout];
    v7 = view;
  }

  else
  {
    if (!reopenClosedWindowsButton)
    {
      return;
    }

    [(SBFluidSwitcherTitledButton *)reopenClosedWindowsButton removeFromSuperview];
    v7 = self->_reopenClosedWindowsButton;
    self->_reopenClosedWindowsButton = 0;
  }
}

- (void)_updateSwitcherDimmingViewPresence
{
  wantsSwitcherDimmingView = [(SBSwitcherPersonality *)self->_personality wantsSwitcherDimmingView];
  dimmingView = self->_dimmingView;
  if (wantsSwitcherDimmingView)
  {
    if (dimmingView)
    {
      return;
    }

    v5 = objc_alloc(MEMORY[0x277D75D18]);
    view = [(SBFluidSwitcherViewController *)self view];
    [view bounds];
    v7 = [v5 initWithFrame:?];
    v8 = self->_dimmingView;
    self->_dimmingView = v7;

    v9 = self->_dimmingView;
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(UIView *)v9 setBackgroundColor:blackColor];

    [(UIView *)self->_dimmingView setAlpha:0.0];
    [(UIView *)self->_dimmingView setAutoresizingMask:18];
    [(SBFluidSwitcherContentView *)self->_contentView addSubview:self->_dimmingView];
    v11 = [[SBSwitcherAccessoryLayoutElement alloc] initWithType:2];
  }

  else
  {
    if (!dimmingView)
    {
      return;
    }

    [(UIView *)dimmingView removeFromSuperview];
    v12 = self->_dimmingView;
    self->_dimmingView = 0;

    v11 = 0;
  }

  dimmingViewLayoutElement = self->_dimmingViewLayoutElement;
  self->_dimmingViewLayoutElement = v11;
}

- (void)_updateSwitcherBackdropViewPresence
{
  v3 = objc_opt_class();
  wantsSwitcherBackdropBlur = [(SBSwitcherPersonality *)self->_personality wantsSwitcherBackdropBlur];
  v5 = wantsSwitcherBackdropBlur;
  if (wantsSwitcherBackdropBlur)
  {
    IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
    p_backdropView = &self->_backdropView;
    if (!self->_backdropView)
    {
      if (!IsReduceTransparencyEnabled)
      {
LABEL_4:
        v8 = [SBHomeScreenBackdropView alloc];
        [(SBFluidSwitcherContentView *)self->_contentView bounds];
        v9 = [(SBHomeScreenBackdropView *)v8 initWithFrame:8 materialRecipe:0 scaleAdjustment:?];
LABEL_11:
        v13 = *p_backdropView;
        *p_backdropView = v9;

        [*p_backdropView setAutoresizingMask:18];
        [(SBFluidSwitcherContentView *)self->_contentView addSubview:*p_backdropView];
        v14 = [[SBSwitcherAccessoryLayoutElement alloc] initWithType:3];
        backdropLayoutElement = self->_backdropLayoutElement;
        self->_backdropLayoutElement = v14;

        [(SBFluidSwitcherViewController *)self _ensureSubviewOrdering];
        return;
      }

LABEL_10:
      v12 = [v3 alloc];
      [(SBFluidSwitcherContentView *)self->_contentView bounds];
      v9 = [v12 initWithFrame:?];
      goto LABEL_11;
    }
  }

  else
  {
    p_backdropView = &self->_backdropView;
    if (!self->_backdropView)
    {
      return;
    }

    IsReduceTransparencyEnabled = 0;
  }

  v10 = [objc_opt_class() isEqual:v3];
  if (IsReduceTransparencyEnabled && (v10 & 1) == 0)
  {
    [*p_backdropView removeFromSuperview];
    v11 = *p_backdropView;
    *p_backdropView = 0;

    if (!IsReduceTransparencyEnabled)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if ((v5 & 1) == 0)
  {
    [*p_backdropView removeFromSuperview];
    v16 = *p_backdropView;
    *p_backdropView = 0;

    v17 = self->_backdropLayoutElement;
    self->_backdropLayoutElement = 0;
  }
}

- (void)_updateSlideOverTonguePresence
{
  wantsSlideOverTongue = [(SBSwitcherPersonality *)self->_personality wantsSlideOverTongue];
  activeTransitionContext = [(SBFluidSwitcherLayoutContext *)self->_layoutContext activeTransitionContext];

  activeGesture = [(SBFluidSwitcherLayoutContext *)self->_layoutContext activeGesture];

  if (wantsSlideOverTongue)
  {
    if (!self->_slideOverTongue)
    {
      v6 = objc_alloc_init(SBSlideOverTongueView);
      slideOverTongue = self->_slideOverTongue;
      self->_slideOverTongue = v6;

      [(SBSlideOverTongueView *)self->_slideOverTongue setDelegate:self];
      [(SBFluidSwitcherContentView *)self->_contentView addSubview:self->_slideOverTongue];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __63__SBFluidSwitcherViewController__updateSlideOverTonguePresence__block_invoke;
      v15[3] = &unk_2783A8C18;
      v15[4] = self;
      [(SBFluidSwitcherViewController *)self _performWithFixedUpdateMode:2 usingBlock:v15];
      v8 = [[SBSwitcherAccessoryLayoutElement alloc] initWithType:4];
      slideOverTongueLayoutElement = self->_slideOverTongueLayoutElement;
      self->_slideOverTongueLayoutElement = v8;
    }
  }

  else
  {
    v10 = self->_slideOverTongue;
    if (v10)
    {
      v11 = activeTransitionContext == 0;
    }

    else
    {
      v11 = 0;
    }

    if (v11 && activeGesture == 0)
    {
      [(SBSlideOverTongueView *)v10 removeFromSuperview];
      v13 = self->_slideOverTongue;
      self->_slideOverTongue = 0;

      v14 = self->_slideOverTongueLayoutElement;
      self->_slideOverTongueLayoutElement = 0;
    }
  }
}

- (void)_updateBezelEffectsPortal
{
  wantsBezelEffectsLayoutElement = [(SBSwitcherPersonality *)self->_personality wantsBezelEffectsLayoutElement];
  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  hardwareButtonBezelEffectsCoordinator = [_sbWindowScene hardwareButtonBezelEffectsCoordinator];

  if (wantsBezelEffectsLayoutElement && ([hardwareButtonBezelEffectsCoordinator dropletLaunchPortalSourceView], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    bezelEffectsPortalView = self->_bezelEffectsPortalView;
    if (!bezelEffectsPortalView)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __58__SBFluidSwitcherViewController__updateBezelEffectsPortal__block_invoke;
      v19[3] = &unk_2783A92D8;
      v19[4] = self;
      v20 = v7;
      [(SBFluidSwitcherViewController *)self _performWithFixedUpdateMode:2 usingBlock:v19];

      bezelEffectsPortalView = self->_bezelEffectsPortalView;
    }

    [(_UIPortalView *)bezelEffectsPortalView setSourceView:v7];
    if (!self->_bezelEffectsPortalObserverToken)
    {
      objc_initWeak(&location, self);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __58__SBFluidSwitcherViewController__updateBezelEffectsPortal__block_invoke_2;
      v16[3] = &unk_2783AEE98;
      objc_copyWeak(&v17, &location);
      v9 = [hardwareButtonBezelEffectsCoordinator observePortalSourceWithHandler:v16];
      bezelEffectsPortalObserverToken = self->_bezelEffectsPortalObserverToken;
      self->_bezelEffectsPortalObserverToken = v9;

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }

    if (!self->_bezelEffectsLayoutElement)
    {
      v11 = [[SBSwitcherAccessoryLayoutElement alloc] initWithType:8];
      bezelEffectsLayoutElement = self->_bezelEffectsLayoutElement;
      self->_bezelEffectsLayoutElement = v11;
    }
  }

  else
  {
    [(BSInvalidatable *)self->_bezelEffectsPortalObserverToken invalidate];
    v13 = self->_bezelEffectsPortalObserverToken;
    self->_bezelEffectsPortalObserverToken = 0;

    [(_UIPortalView *)self->_bezelEffectsPortalView removeFromSuperview];
    v14 = self->_bezelEffectsPortalView;
    self->_bezelEffectsPortalView = 0;

    v15 = self->_bezelEffectsLayoutElement;
    self->_bezelEffectsLayoutElement = 0;

    v7 = 0;
  }
}

- (void)_updateDockPortal
{
  if (-[SBSwitcherPersonality wantsDockPortalViewLayoutElement](self->_personality, "wantsDockPortalViewLayoutElement") && (-[SBFluidSwitcherViewController _floatingDockController](self, "_floatingDockController"), v3 = objc_claimAutoreleasedReturnValue(), [v3 floatingDockWindow], v4 = objc_claimAutoreleasedReturnValue(), v3, v4))
  {
    dockPortalView = self->_dockPortalView;
    if (!dockPortalView)
    {
      v10 = MEMORY[0x277D85DD0];
      v11 = 3221225472;
      v12 = __50__SBFluidSwitcherViewController__updateDockPortal__block_invoke;
      v13 = &unk_2783A92D8;
      selfCopy = self;
      v15 = v4;
      [(SBFluidSwitcherViewController *)self _performWithFixedUpdateMode:2 usingBlock:&v10];

      dockPortalView = self->_dockPortalView;
    }

    [(_UIPortalView *)dockPortalView setSourceView:v4, v10, v11, v12, v13, selfCopy];
    if (!self->_dockPortalViewLayoutElement)
    {
      v6 = [[SBSwitcherAccessoryLayoutElement alloc] initWithType:9];
      dockPortalViewLayoutElement = self->_dockPortalViewLayoutElement;
      self->_dockPortalViewLayoutElement = v6;
    }
  }

  else
  {
    [(_UIPortalView *)self->_dockPortalView removeFromSuperview];
    v8 = self->_dockPortalView;
    self->_dockPortalView = 0;

    v9 = self->_dockPortalView;
    self->_dockPortalView = 0;

    v4 = 0;
  }
}

- (void)_updateSnapshotCache
{
  v46 = *MEMORY[0x277D85DE8];
  appLayoutsToCacheSnapshots = [(SBSwitcherPersonality *)self->_personality appLayoutsToCacheSnapshots];
  v4 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = appLayoutsToCacheSnapshots;
  v6 = [v5 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v40;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(v5);
        }

        leafAppLayouts = [*(*(&v39 + 1) + 8 * i) leafAppLayouts];
        [v4 addObjectsFromArray:leafAppLayouts];
      }

      v7 = [v5 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v7);
  }

  v11 = v4;
  [(SBAppSwitcherSnapshotImageCache *)self->_snapshotCache setCachableAppLayouts:v11];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    appLayoutsToCacheFullsizeSnapshots = [(SBSwitcherPersonality *)self->_personality appLayoutsToCacheFullsizeSnapshots];
    v15 = objc_opt_new();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v16 = appLayoutsToCacheFullsizeSnapshots;
    v17 = [v16 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v36;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v36 != v19)
          {
            objc_enumerationMutation(v16);
          }

          leafAppLayouts2 = [*(*(&v35 + 1) + 8 * j) leafAppLayouts];
          [v15 addObjectsFromArray:leafAppLayouts2];
        }

        v18 = [v16 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v18);
    }

    v22 = v15;
    v23 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v22];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    allKeys = [(NSMutableDictionary *)self->_liveContentOverlays allKeys];
    v25 = [allKeys countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v32;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v32 != v27)
          {
            objc_enumerationMutation(allKeys);
          }

          v29 = *(*(&v31 + 1) + 8 * k);
          v30 = [(SBFluidSwitcherViewController *)self _itemContainerForAppLayoutIfExists:v29];
          [v30 contentAlpha];
          if (BSFloatIsZero())
          {
            [v23 removeObject:v29];
          }
        }

        v26 = [allKeys countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v26);
    }
  }

  else
  {
    v23 = MEMORY[0x277CBEBF8];
  }

  [(SBAppSwitcherSnapshotImageCache *)self->_snapshotCache setFullSizeCachableAppLayouts:v23];
}

- (void)_updateHomeScreenPointerInteractions
{
  delegate = [(SBFluidSwitcherViewController *)self delegate];
  if ([(SBFluidSwitcherViewController *)self _controlsHomeScreenContents]&& (*(&self->_delegateRespondsTo + 2) & 0x20) != 0)
  {
    [delegate switcherContentController:self setPointerInteractionsEnabled:{-[SBSwitcherPersonality wantsHomeScreenPointerInteractions](self->_personality, "wantsHomeScreenPointerInteractions")}];
  }
}

- (void)_updateHiddenAppLayoutsInShelves
{
  selfCopy = self;
  v53 = *MEMORY[0x277D85DE8];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = [(NSMutableDictionary *)self->_visibleShelves allKeys];
  v29 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v29)
  {
    v28 = *v47;
    do
    {
      v3 = 0;
      do
      {
        if (*v47 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v46 + 1) + 8 * v3);
        v5 = [(NSMutableDictionary *)selfCopy->_hiddenAppLayoutAssertionsForShelves objectForKey:v4];
        if (!v5)
        {
          v5 = objc_opt_new();
          hiddenAppLayoutAssertionsForShelves = selfCopy->_hiddenAppLayoutAssertionsForShelves;
          if (!hiddenAppLayoutAssertionsForShelves)
          {
            v7 = objc_opt_new();
            v8 = selfCopy->_hiddenAppLayoutAssertionsForShelves;
            selfCopy->_hiddenAppLayoutAssertionsForShelves = v7;

            hiddenAppLayoutAssertionsForShelves = selfCopy->_hiddenAppLayoutAssertionsForShelves;
          }

          [(NSMutableDictionary *)hiddenAppLayoutAssertionsForShelves setObject:v5 forKey:v4];
        }

        v31 = v3;
        allKeys = [v5 allKeys];
        v10 = selfCopy;
        v11 = [(SBSwitcherPersonality *)selfCopy->_personality hiddenAppLayoutsInShelf:v4];
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __65__SBFluidSwitcherViewController__updateHiddenAppLayoutsInShelves__block_invoke;
        v44[3] = &unk_2783A8CB8;
        v32 = v11;
        v45 = v32;
        v12 = [allKeys bs_filter:v44];
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v33 = v12;
        v13 = [v12 countByEnumeratingWithState:&v40 objects:v51 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v41;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v41 != v15)
              {
                objc_enumerationMutation(v33);
              }

              v17 = *(*(&v40 + 1) + 8 * i);
              v18 = [v5 objectForKey:v17];
              [v5 removeObjectForKey:v17];
              [v18 invalidate];
            }

            v14 = [v33 countByEnumeratingWithState:&v40 objects:v51 count:16];
          }

          while (v14);
        }

        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __65__SBFluidSwitcherViewController__updateHiddenAppLayoutsInShelves__block_invoke_2;
        v38[3] = &unk_2783A8CB8;
        v30 = allKeys;
        v39 = v30;
        v19 = [v32 bs_filter:v38];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v20 = [v19 countByEnumeratingWithState:&v34 objects:v50 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v35;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v35 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v34 + 1) + 8 * j);
              v25 = [(NSMutableDictionary *)v10->_visibleShelves objectForKey:v4];
              v26 = [v25 beginHidingAppLayout:v24 forReason:@"switcher"];

              if (v26)
              {
                [v5 setObject:v26 forKey:v24];
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v34 objects:v50 count:16];
          }

          while (v21);
        }

        selfCopy = v10;
        if (![(NSMutableDictionary *)v10->_hiddenAppLayoutAssertionsForShelves count])
        {
          [(NSMutableDictionary *)v10->_hiddenAppLayoutAssertionsForShelves removeObjectForKey:v4];
        }

        v3 = v31 + 1;
      }

      while (v31 + 1 != v29);
      v29 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v29);
  }
}

- (void)_updateBounceIcon
{
  v3 = [(SBSwitcherPersonality *)self->_personality bounceIconGenerationCountForCurrentCount:self->_bounceIconGenerationCount];
  if (v3 != self->_bounceIconGenerationCount)
  {
    v4 = v3;
    self->_bounceIconGenerationCount = v3;
    bounceIconView = self->_bounceIconView;
    if (bounceIconView)
    {
      [(SBIconView *)bounceIconView removeFromSuperview];
      v6 = self->_bounceIconView;
      self->_bounceIconView = 0;
    }

    bounceIconBundleIdentifier = [(SBSwitcherPersonality *)self->_personality bounceIconBundleIdentifier];
    if (bounceIconBundleIdentifier)
    {
      v8 = bounceIconBundleIdentifier;
      _iconManager = [(SBFluidSwitcherViewController *)self _iconManager];
      iconModel = [_iconManager iconModel];
      v11 = [iconModel leafIconForIdentifier:v8];
      [(SBSwitcherPersonality *)self->_personality bounceIconInitialFrame];
      x = v36.origin.x;
      y = v36.origin.y;
      width = v36.size.width;
      height = v36.size.height;
      if (!CGRectIsNull(v36))
      {
        v16 = [objc_alloc(MEMORY[0x277D663F0]) initWithConfigurationOptions:6];
        v17 = self->_bounceIconView;
        self->_bounceIconView = v16;

        [(SBIconView *)self->_bounceIconView setLocation:*MEMORY[0x277D666D0]];
        v18 = self->_bounceIconView;
        listLayoutProvider = [_iconManager listLayoutProvider];
        [(SBIconView *)v18 setListLayoutProvider:listLayoutProvider];

        [(SBIconView *)self->_bounceIconView setDelegate:_iconManager];
        [(SBIconView *)self->_bounceIconView setIcon:v11];
        [(SBIconView *)self->_bounceIconView setEnabled:0];
        [(SBIconView *)self->_bounceIconView setBounds:0.0, 0.0, width, height];
        v20 = self->_bounceIconView;
        UIRectGetCenter();
        v22 = v21;
        [(SBFluidSwitcherContentView *)self->_contentView bounds];
        [(SBIconView *)v20 setCenter:v22, height + v23];
        [(SBFluidSwitcherContentView *)self->_contentView addSubview:self->_bounceIconView];
        medusaSettings = [(SBFluidSwitcherViewController *)self medusaSettings];
        switcherShelfBounceIconSettings = [medusaSettings switcherShelfBounceIconSettings];

        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __50__SBFluidSwitcherViewController__updateBounceIcon__block_invoke;
        v35[3] = &unk_2783AC828;
        v35[4] = self;
        *&v35[5] = x;
        *&v35[6] = y;
        *&v35[7] = width;
        *&v35[8] = height;
        [MEMORY[0x277D75D18] sb_animateWithSettings:switcherShelfBounceIconSettings mode:3 animations:v35 completion:0];
        objc_initWeak(&location, self);
        medusaSettings2 = [(SBFluidSwitcherViewController *)self medusaSettings];
        [medusaSettings2 switcherShelfGenieIconBounceDelay];
        v28 = v27;

        v29 = dispatch_time(0, (v28 * 1000000000.0));
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __50__SBFluidSwitcherViewController__updateBounceIcon__block_invoke_2;
        block[3] = &unk_2783AEF88;
        objc_copyWeak(v33, &location);
        v33[1] = v4;
        v32 = switcherShelfBounceIconSettings;
        v33[2] = *&x;
        v33[3] = *&y;
        v33[4] = *&width;
        v33[5] = *&height;
        v30 = switcherShelfBounceIconSettings;
        dispatch_after(v29, MEMORY[0x277D85CD0], block);

        objc_destroyWeak(v33);
        objc_destroyWeak(&location);
      }
    }
  }
}

- (void)_updateForegroundAppLayoutsList
{
  if (SBFIsSwitcherForegroundAppsAvailable())
  {
    foregroundAppLayouts = [(SBSwitcherPersonality *)self->_personality foregroundAppLayouts];
    foregroundingAppLayouts = self->_foregroundingAppLayouts;
    self->_foregroundingAppLayouts = foregroundAppLayouts;
  }
}

- (void)_updateContinuousExposeStripsCaptureOnlyBackdropLayer
{
  shouldUseWallpaperGradientTreatment = [(SBSwitcherPersonality *)self->_personality shouldUseWallpaperGradientTreatment];
  continuousExposeStripCaptureAndBlurHomeScreenBackdropView = self->_continuousExposeStripCaptureAndBlurHomeScreenBackdropView;
  if (shouldUseWallpaperGradientTreatment)
  {
    if (continuousExposeStripCaptureAndBlurHomeScreenBackdropView)
    {
      return;
    }

    v5 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:-2];
    v6 = self->_continuousExposeStripCaptureAndBlurHomeScreenBackdropView;
    self->_continuousExposeStripCaptureAndBlurHomeScreenBackdropView = v5;

    inputSettings = [(_UIBackdropView *)self->_continuousExposeStripCaptureAndBlurHomeScreenBackdropView inputSettings];
    [(_UIBackdropView *)inputSettings setScale:0.1];
    [(_UIBackdropView *)inputSettings setBlurRadius:50.0];
    [(_UIBackdropView *)inputSettings setBackdropVisible:1];
    [(_UIBackdropView *)self->_continuousExposeStripCaptureAndBlurHomeScreenBackdropView setGroupName:@"AppSwitcherWallpaperGradient"];
    v7 = objc_opt_class();
    effectView = [(_UIBackdropView *)self->_continuousExposeStripCaptureAndBlurHomeScreenBackdropView effectView];
    layer = [effectView layer];
    v10 = SBSafeCast(v7, layer);

    [v10 setCaptureOnly:1];
    [(SBFluidSwitcherContentView *)self->_contentView addSubview:self->_continuousExposeStripCaptureAndBlurHomeScreenBackdropView];
    [(SBFluidSwitcherViewController *)self _ensureSubviewOrdering];
    view = [(SBFluidSwitcherViewController *)self view];
    [view setNeedsLayout];

    v12 = inputSettings;
  }

  else
  {
    if (!continuousExposeStripCaptureAndBlurHomeScreenBackdropView)
    {
      return;
    }

    [(_UIBackdropView *)continuousExposeStripCaptureAndBlurHomeScreenBackdropView removeFromSuperview];
    v12 = self->_continuousExposeStripCaptureAndBlurHomeScreenBackdropView;
    self->_continuousExposeStripCaptureAndBlurHomeScreenBackdropView = 0;
  }
}

- (void)_updateContinuousExposeStripTonguePresence
{
  continuousExposeStripTongueAttributes = [(SBSwitcherPersonality *)self->_personality continuousExposeStripTongueAttributes];
  continuousExposeStripTongue = self->_continuousExposeStripTongue;
  if (continuousExposeStripTongueAttributes == 2)
  {
    if (continuousExposeStripTongue)
    {
      return;
    }

    v6 = v3;
    v7 = objc_alloc_init(SBContinuousExposeStripTongueView);
    v8 = self->_continuousExposeStripTongue;
    self->_continuousExposeStripTongue = v7;

    [(SBContinuousExposeStripTongueView *)self->_continuousExposeStripTongue setDelegate:self];
    [(SBFluidSwitcherContentView *)self->_contentView addSubview:self->_continuousExposeStripTongue];
    v9 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:-2];
    continuousExposeStripTongueCaptureOnlyBackdropView = self->_continuousExposeStripTongueCaptureOnlyBackdropView;
    self->_continuousExposeStripTongueCaptureOnlyBackdropView = v9;

    inputSettings = [(_UIBackdropView *)self->_continuousExposeStripTongueCaptureOnlyBackdropView inputSettings];
    [inputSettings setBlurRadius:0.0];

    inputSettings2 = [(_UIBackdropView *)self->_continuousExposeStripTongueCaptureOnlyBackdropView inputSettings];
    [inputSettings2 setScale:1.0];

    inputSettings3 = [(_UIBackdropView *)self->_continuousExposeStripTongueCaptureOnlyBackdropView inputSettings];
    [inputSettings3 setBackdropVisible:1];

    [(_UIBackdropView *)self->_continuousExposeStripTongueCaptureOnlyBackdropView setGroupName:@"SBContinuousExposeStripTongueBackdropName"];
    v14 = objc_opt_class();
    effectView = [(_UIBackdropView *)self->_continuousExposeStripTongueCaptureOnlyBackdropView effectView];
    layer = [effectView layer];
    v25 = SBSafeCast(v14, layer);

    [(SBSwitcherAccessoryLayoutElement *)v25 setCaptureOnly:0];
    [(SBFluidSwitcherContentView *)self->_contentView addSubview:self->_continuousExposeStripTongueCaptureOnlyBackdropView];
    v17 = [[SBSwitcherAccessoryLayoutElement alloc] initWithType:6];
    continuousExposeStripTongueBackdropCaptureLayoutElement = self->_continuousExposeStripTongueBackdropCaptureLayoutElement;
    self->_continuousExposeStripTongueBackdropCaptureLayoutElement = v17;

    [(SBFluidSwitcherViewController *)self _ensureSubviewOrdering];
    [(SBFluidSwitcherViewController *)self _layoutContinuousExposeStripTongueAnimated:0 completion:0];
    v19 = self->_continuousExposeStripTongue;
    v20 = SBSwitcherContinuousExposeStripTongueAttributesMake(1, v6);
    [(SBContinuousExposeStripTongueView *)v19 setAttributes:v20 animated:v21, 0];
    [(SBContinuousExposeStripTongueView *)self->_continuousExposeStripTongue setAttributes:2 animated:v6, 1];
    v22 = v25;
  }

  else
  {
    if (!continuousExposeStripTongue || [(SBContinuousExposeStripTongueView *)continuousExposeStripTongue isAnimating])
    {
      return;
    }

    [(SBContinuousExposeStripTongueView *)self->_continuousExposeStripTongue removeFromSuperview];
    v23 = self->_continuousExposeStripTongue;
    self->_continuousExposeStripTongue = 0;

    [(_UIBackdropView *)self->_continuousExposeStripTongueCaptureOnlyBackdropView removeFromSuperview];
    v24 = self->_continuousExposeStripTongueCaptureOnlyBackdropView;
    self->_continuousExposeStripTongueCaptureOnlyBackdropView = 0;

    v22 = self->_continuousExposeStripTongueBackdropCaptureLayoutElement;
    self->_continuousExposeStripTongueBackdropCaptureLayoutElement = 0;
  }
}

- (void)_updateHitTestBlockingView
{
  hitTestBlockerView = self->_hitTestBlockerView;
  v3 = [(SBSwitcherPersonality *)self->_personality isHitTestBlockingViewVisible]^ 1;

  [(UIView *)hitTestBlockerView setHidden:v3];
}

- (void)_ensureForegroundScenesAreVisible
{
  layoutContext = [(SBFluidSwitcherViewController *)self layoutContext];
  activeTransitionContext = [layoutContext activeTransitionContext];
  if (activeTransitionContext)
  {
  }

  else
  {
    activeGesture = [layoutContext activeGesture];

    if (!activeGesture)
    {
      WeakRetained = objc_loadWeakRetained(&self->_dataSource);
      v7 = WeakRetained;
      if ((*(&self->_dataSourceRespondsTo + 4) & 0x10) != 0)
      {
        [WeakRetained guardedForegroundDisplayItemsForSwitcherContentController:self];
      }

      else
      {
        [MEMORY[0x277CBEB98] set];
      }
      v8 = ;
      liveContentOverlays = self->_liveContentOverlays;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __66__SBFluidSwitcherViewController__ensureForegroundScenesAreVisible__block_invoke;
      v11[3] = &unk_2783AF160;
      v12 = v8;
      selfCopy = self;
      v10 = v8;
      [(NSMutableDictionary *)liveContentOverlays enumerateKeysAndObjectsUsingBlock:v11];
    }
  }
}

- (BOOL)isSystemAssistantExperienceEnabled
{
  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  assistantController = [_sbWindowScene assistantController];
  isSystemAssistantExperienceEnabled = [assistantController isSystemAssistantExperienceEnabled];

  return isSystemAssistantExperienceEnabled;
}

- (BOOL)assistantWantsDeemphasizedBackdrop
{
  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  assistantController = [_sbWindowScene assistantController];
  presentationContext = [assistantController presentationContext];

  LOBYTE(_sbWindowScene) = [presentationContext wantsDeemphasizedBackdrop];
  return _sbWindowScene;
}

- (BOOL)isDisplayEmbedded
{
  dataSource = [(SBFluidSwitcherViewController *)self dataSource];
  v4 = dataSource;
  if ((*(&self->_dataSourceRespondsTo + 3) & 0x40) != 0)
  {
    v5 = [dataSource isDisplayEmbeddedForSwitcherContentController:self];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)hasMultipleDisplays
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = WeakRetained;
  if (WeakRetained && (*(&self->_dataSourceRespondsTo + 3) & 1) != 0)
  {
    v5 = [WeakRetained switcherContentControllerHasMultipleDisplays:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __52__SBFluidSwitcherViewController__updateVisibleItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:v3] & 1) == 0)
  {
    v4 = *(a1 + 32);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __52__SBFluidSwitcherViewController__updateVisibleItems__block_invoke_3;
    v15[3] = &unk_2783A8CB8;
    v5 = v3;
    v16 = v5;
    v6 = [v4 bs_firstObjectPassingTest:v15];
    v7 = *(*(a1 + 40) + 1304);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __52__SBFluidSwitcherViewController__updateVisibleItems__block_invoke_4;
    v13 = &unk_2783A8CB8;
    v8 = v5;
    v14 = v8;
    v9 = [v7 bs_containsObjectPassingTest:&v10];
    if (*(a1 + 56) != 1 || v6 || v9)
    {
      [*(a1 + 48) addObject:{v8, v10, v11, v12, v13}];
    }
  }
}

uint64_t __66__SBFluidSwitcherViewController__updateVisibleHomeAffordanceViews__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 switcherLayoutElementType])
  {
    v4 = 1;
  }

  else
  {
    v4 = [*(*(a1 + 32) + 2112) isHomeAffordanceSupportedForAppLayout:v3];
  }

  return v4;
}

- (double)displayCornerRadius
{
  _screen = [(SBFluidSwitcherViewController *)self _screen];
  if ([_screen _isEmbeddedScreen])
  {
    v3 = SBScreenDisplayCornerRadius();
  }

  else
  {
    traitCollection = [_screen traitCollection];
    [traitCollection displayCornerRadius];
    v3 = v5;
  }

  return v3;
}

- (int64_t)displayOrdinal
{
  layoutState = [(SBFluidSwitcherLayoutContext *)self->_layoutContext layoutState];
  displayOrdinal = [layoutState displayOrdinal];

  return displayOrdinal;
}

- (void)viewWillLayoutSubviews
{
  layoutSubviews_skipLayoutNotification = self->_layoutSubviews_skipLayoutNotification;
  self->_layoutSubviews_skipLayoutNotification = 0;
  v4 = MEMORY[0x223D6F7F0](self->_layoutSubviews_completionBlock, a2);
  layoutSubviews_completionBlock = self->_layoutSubviews_completionBlock;
  self->_layoutSubviews_completionBlock = 0;

  v8.receiver = self;
  v8.super_class = SBFluidSwitcherViewController;
  [(SBFluidSwitcherViewController *)&v8 viewWillLayoutSubviews];
  if (!self->_hasDispatchedInitialSetupEvent)
  {
    view = [(SBFluidSwitcherViewController *)self view];
    [(SBInitialSetupSwitcherModifierEvent *)view bounds];
    if (!CGRectIsEmpty(v9))
    {
      contentOrientation = self->_contentOrientation;

      if (!contentOrientation)
      {
        goto LABEL_6;
      }

      self->_hasDispatchedInitialSetupEvent = 1;
      view = objc_alloc_init(SBInitialSetupSwitcherModifierEvent);
      [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:view];
    }
  }

LABEL_6:
  if (!layoutSubviews_skipLayoutNotification)
  {
    [(SBSwitcherPersonality *)self->_personality viewWillLayout];
  }

  [(SBFluidSwitcherViewController *)self _layoutSubviews_updateVisibleItemsAccessoryViewsLayoutAndStyleWithCompletion:v4];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = SBFluidSwitcherViewController;
  [(SBFluidSwitcherViewController *)&v4 viewDidLayoutSubviews];
  [(BSInvalidatable *)self->_applicationRestrictionUpdatePendingAssertion invalidate];
  applicationRestrictionUpdatePendingAssertion = self->_applicationRestrictionUpdatePendingAssertion;
  self->_applicationRestrictionUpdatePendingAssertion = 0;
}

- (SBViewMorphAnimator)pipViewMorphAnimator
{
  WeakRetained = objc_loadWeakRetained(&self->_pipViewMorphAnimator);

  return WeakRetained;
}

- (void)_resetItemContainerShadowPathDisplayLink
{
  v3 = SBLogAppSwitcher();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Destroying shadow path display link", v7, 2u);
  }

  shadowPathDisplayLinkRequiringReasons = self->_shadowPathDisplayLinkRequiringReasons;
  self->_shadowPathDisplayLinkRequiringReasons = 0;

  shadowPathDisplayLink = self->_shadowPathDisplayLink;
  if (shadowPathDisplayLink)
  {
    [(CADisplayLink *)shadowPathDisplayLink invalidate];
    v6 = self->_shadowPathDisplayLink;
    self->_shadowPathDisplayLink = 0;
  }
}

void __66__SBFluidSwitcherViewController__ensureForegroundScenesAreVisible__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 overlaySceneHandle];
  v7 = objc_opt_class();
  v8 = v6;
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
    v11 = *(a1 + 32);
    v12 = [v10 displayItemRepresentation];
    v13 = [v11 containsObject:v12];

    v14 = [*(*(a1 + 40) + 1968) objectForKey:v5];
    v15 = [v14 layer];
    [v15 opacity];
    v17 = v16;

    if (v17 < 0.5 && v13 != 0)
    {
      v19 = SBLogAppSwitcher();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __66__SBFluidSwitcherViewController__ensureForegroundScenesAreVisible__block_invoke_cold_1(v10);
      }

      v20 = [v14 layer];
      LODWORD(v21) = 1.0;
      [v20 setOpacity:v21];
    }
  }
}

- (double)minimumHomeScreenScale
{
  animationSettings = [(SBAppSwitcherSettings *)self->_settings animationSettings];
  [animationSettings homeScreenScaleForMode:1];
  v5 = v4;

  v6 = fmin(v5, 1.0);
  animationSettings2 = [(SBAppSwitcherSettings *)self->_settings animationSettings];
  [animationSettings2 homeScreenScaleForMode:2];
  v9 = v8;

  if (v6 > v9)
  {
    v6 = v9;
  }

  animationSettings3 = [(SBAppSwitcherSettings *)self->_settings animationSettings];
  [animationSettings3 homeScreenScaleForMode:3];
  v12 = v11;

  if (v6 <= v12)
  {
    return v6;
  }

  else
  {
    return v12;
  }
}

- (BOOL)handleHomeButtonDoublePress
{
  _liveContentOverlayForHandlingHardwareButtonEvents = [(SBFluidSwitcherViewController *)self _liveContentOverlayForHandlingHardwareButtonEvents];
  if (objc_opt_respondsToSelector())
  {
    handleHomeButtonDoublePress = [_liveContentOverlayForHandlingHardwareButtonEvents handleHomeButtonDoublePress];
  }

  else
  {
    handleHomeButtonDoublePress = 0;
  }

  return handleHomeButtonDoublePress;
}

- (id)_liveContentOverlayForHandlingHardwareButtonEvents
{
  appLayoutForReceivingHardwareButtonEvents = [(SBSwitcherPersonality *)self->_personality appLayoutForReceivingHardwareButtonEvents];
  v4 = appLayoutForReceivingHardwareButtonEvents;
  if (appLayoutForReceivingHardwareButtonEvents)
  {
    liveContentOverlays = self->_liveContentOverlays;
    anyLeafAppLayout = [appLayoutForReceivingHardwareButtonEvents anyLeafAppLayout];
    v7 = [(NSMutableDictionary *)liveContentOverlays objectForKey:anyLeafAppLayout];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isPerformingMatchMoveToIconView
{
  view = [(SBFluidSwitcherViewController *)self view];
  layer = [view layer];
  animationKeys = [layer animationKeys];
  v5 = [animationKeys containsObject:@"MatchMoveToIconViewAnimation"];

  return v5;
}

- (BOOL)_shouldInterruptPresentationAndDismiss
{
  appLayouts = [(SBFluidSwitcherViewController *)self appLayouts];
  v4 = [appLayouts count];

  if (!v4)
  {
    return 1;
  }

  _floatingDockController = [(SBFluidSwitcherViewController *)self _floatingDockController];
  _activeGestureFloatingDockBehaviorAssertion = [_floatingDockController _activeGestureFloatingDockBehaviorAssertion];
  if (!_activeGestureFloatingDockBehaviorAssertion)
  {

    return 0;
  }

  v7 = _activeGestureFloatingDockBehaviorAssertion;
  _floatingDockController2 = [(SBFluidSwitcherViewController *)self _floatingDockController];
  wasFloatingDockPresentedByPointer = [_floatingDockController2 wasFloatingDockPresentedByPointer];

  if (!wasFloatingDockPresentedByPointer)
  {
    return 0;
  }

  if ([(SBSwitcherPersonality *)self->_personality shouldRemoveProlongedCursorGestureFloatingDockBehaviorAssertion]|| ([(SBSwitcherPersonality *)self->_personality visibleAppLayouts], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11) && [(SBSwitcherPersonality *)self->_personality wantsDockWindowLevelAssertion])
  {
    [(SBFluidSwitcherViewController *)self _removeProlongedCursorGestureFloatingDockBehaviorAssertion];
    return 0;
  }

  return 1;
}

- (unint64_t)maximumNumberOfVisibleScenesOnStage
{
  _sceneRelevancyManager = [(SBFluidSwitcherViewController *)self _sceneRelevancyManager];
  maximumNumberOfVisibleScenesOnStage = [_sceneRelevancyManager maximumNumberOfVisibleScenesOnStage];

  return maximumNumberOfVisibleScenesOnStage;
}

- (id)_sceneRelevancyManager
{
  dataSource = [(SBFluidSwitcherViewController *)self dataSource];
  v4 = dataSource;
  if ((*&self->_dataSourceRespondsTo & 2) != 0)
  {
    v5 = [dataSource sceneRelevancyManagerForSwitcherContentController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isShowingSpotlightOrTodayView
{
  _iconManager = [(SBFluidSwitcherViewController *)self _iconManager];
  isShowingSpotlightOrLeadingCustomView = [_iconManager isShowingSpotlightOrLeadingCustomView];

  return isShowingSpotlightOrLeadingCustomView;
}

- (SBFluidSwitcherViewController)initWithPersonality:(id)personality liveContentOverlayCoordinator:(id)coordinator dataSource:(id)source delegate:(id)delegate debugName:(id)name
{
  personalityCopy = personality;
  coordinatorCopy = coordinator;
  sourceCopy = source;
  delegateCopy = delegate;
  nameCopy = name;
  if (personalityCopy)
  {
    if (coordinatorCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBFluidSwitcherViewController initWithPersonality:liveContentOverlayCoordinator:dataSource:delegate:debugName:];
    if (coordinatorCopy)
    {
      goto LABEL_3;
    }
  }

  [SBFluidSwitcherViewController initWithPersonality:liveContentOverlayCoordinator:dataSource:delegate:debugName:];
LABEL_3:
  v119.receiver = self;
  v119.super_class = SBFluidSwitcherViewController;
  v18 = [(SBFluidSwitcherViewController *)&v119 initWithNibName:0 bundle:0];
  v19 = v18;
  if (v18)
  {
    v116 = personalityCopy;
    [(SBFluidSwitcherViewController *)v18 setDelegate:delegateCopy];
    v115 = sourceCopy;
    [(SBFluidSwitcherViewController *)v19 setDataSource:sourceCopy];
    v20 = [nameCopy copy];
    debugName = v19->_debugName;
    v19->_debugName = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
    visibleItemContainers = v19->_visibleItemContainers;
    v19->_visibleItemContainers = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    visibleOverlayAccessoryViews = v19->_visibleOverlayAccessoryViews;
    v19->_visibleOverlayAccessoryViews = v24;

    v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
    visibleUnderlayAccessoryViews = v19->_visibleUnderlayAccessoryViews;
    v19->_visibleUnderlayAccessoryViews = v26;

    v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
    externalDropletZoomUpTokens = v19->_externalDropletZoomUpTokens;
    v19->_externalDropletZoomUpTokens = v28;

    v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
    visibleItemContainerBackdropViews = v19->_visibleItemContainerBackdropViews;
    v19->_visibleItemContainerBackdropViews = v30;

    v32 = objc_alloc_init(MEMORY[0x277CBEB58]);
    focusedItemBackdropsBeingRemoved = v19->_focusedItemBackdropsBeingRemoved;
    v19->_focusedItemBackdropsBeingRemoved = v32;

    v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
    hiddenRecycledItemContainers = v19->_hiddenRecycledItemContainers;
    v19->_hiddenRecycledItemContainers = v34;

    v36 = objc_alloc_init(MEMORY[0x277CBEB38]);
    visibleShelves = v19->_visibleShelves;
    v19->_visibleShelves = v36;

    v38 = objc_alloc_init(MEMORY[0x277CBEB58]);
    visibleShelvesHostedInContentView = v19->_visibleShelvesHostedInContentView;
    v19->_visibleShelvesHostedInContentView = v38;

    v40 = objc_alloc_init(MEMORY[0x277CBEB38]);
    visibleSplitViewHandleNubViews = v19->_visibleSplitViewHandleNubViews;
    v19->_visibleSplitViewHandleNubViews = v40;

    v42 = objc_alloc_init(MEMORY[0x277CBEB38]);
    visibleSplitViewHandleDimmingViews = v19->_visibleSplitViewHandleDimmingViews;
    v19->_visibleSplitViewHandleDimmingViews = v42;

    v44 = objc_alloc_init(MEMORY[0x277CBEB58]);
    visibleSplitViewHandleNubViewsWaitingForFadeIn = v19->_visibleSplitViewHandleNubViewsWaitingForFadeIn;
    v19->_visibleSplitViewHandleNubViewsWaitingForFadeIn = v44;

    v46 = objc_alloc_init(MEMORY[0x277CBEB58]);
    visibleSplitViewHandleDimmingViewsWaitingForFadeIn = v19->_visibleSplitViewHandleDimmingViewsWaitingForFadeIn;
    v19->_visibleSplitViewHandleDimmingViewsWaitingForFadeIn = v46;

    v48 = objc_alloc_init(MEMORY[0x277CBEB38]);
    hiddenIconViews = v19->_hiddenIconViews;
    v19->_hiddenIconViews = v48;

    v50 = objc_alloc_init(MEMORY[0x277CBEB38]);
    hiddenIconViewContainers = v19->_hiddenIconViewContainers;
    v19->_hiddenIconViewContainers = v50;

    continuousExposeIdentifiersInSwitcher = v19->_continuousExposeIdentifiersInSwitcher;
    v53 = MEMORY[0x277CBEBF8];
    v19->_continuousExposeIdentifiersInSwitcher = MEMORY[0x277CBEBF8];

    continuousExposeIdentifiersInStrip = v19->_continuousExposeIdentifiersInStrip;
    v19->_continuousExposeIdentifiersInStrip = v53;

    v55 = [MEMORY[0x277CBEB58] set];
    systemApertureContentSuppressionAssertionsForGesture = v19->_systemApertureContentSuppressionAssertionsForGesture;
    v19->_systemApertureContentSuppressionAssertionsForGesture = v55;

    v57 = objc_alloc_init(MEMORY[0x277CBEB38]);
    systemApertureContentSuppressionAssertionsByInvalidationUUID = v19->_systemApertureContentSuppressionAssertionsByInvalidationUUID;
    v19->_systemApertureContentSuppressionAssertionsByInvalidationUUID = v57;

    v59 = objc_alloc_init(MEMORY[0x277CBEB38]);
    systemApertureGlobalSuppressionAssertionsByInvalidationUUID = v19->_systemApertureGlobalSuppressionAssertionsByInvalidationUUID;
    v19->_systemApertureGlobalSuppressionAssertionsByInvalidationUUID = v59;

    v61 = objc_alloc_init(MEMORY[0x277CBEB38]);
    systemApertureKeyLineAssertionsByInvalidationUUID = v19->_systemApertureKeyLineAssertionsByInvalidationUUID;
    v19->_systemApertureKeyLineAssertionsByInvalidationUUID = v61;

    v63 = [MEMORY[0x277CCAC18] pointerArrayWithOptions:256];
    outstandingAnimations = v19->_outstandingAnimations;
    v19->_outstandingAnimations = v63;

    v65 = *(MEMORY[0x277CBF3A0] + 16);
    v19->_currentKeyboardFrame.origin = *MEMORY[0x277CBF3A0];
    v19->_currentKeyboardFrame.size = v65;
    v66 = objc_alloc_init(SBDisplayItemLayoutAttributesCalculator);
    displayItemLayoutAttributesCalculator = v19->_displayItemLayoutAttributesCalculator;
    v19->_displayItemLayoutAttributesCalculator = v66;

    v68 = +[SBDefaults localDefaults];
    appSwitcherDefaults = [v68 appSwitcherDefaults];
    defaults = v19->_defaults;
    v19->_defaults = appSwitcherDefaults;

    v71 = +[SBAppSwitcherDomain rootSettings];
    settings = v19->_settings;
    v19->_settings = v71;

    [(PTSettings *)v19->_settings addKeyPathObserver:v19];
    windowingSettings = [(SBAppSwitcherSettings *)v19->_settings windowingSettings];
    [windowingSettings addKeyObserver:v19];

    v114 = +[SBHomeGestureDomain rootSettings];
    [v114 addKeyObserver:v19];
    v74 = +[SBMedusaDomain rootSettings];
    [v74 addKeyObserver:v19];
    rootSettings = [MEMORY[0x277D65E80] rootSettings];
    homeGrabberSettings = v19->_homeGrabberSettings;
    v19->_homeGrabberSettings = rootSettings;

    [(SBFHomeGrabberSettings *)v19->_homeGrabberSettings addKeyObserver:v19];
    objc_storeStrong(&v19->_personality, personality);
    [coordinatorCopy setDelegate:v19];
    objc_storeStrong(&v19->_liveContentOverlayCoordinator, coordinator);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    liveContentOverlays = v19->_liveContentOverlays;
    v19->_liveContentOverlays = dictionary;

    v79 = [MEMORY[0x277D432B0] recipeWithTitle:@"Toggle Modifier Timeline" toggleAction:&__block_literal_global_48];
    [(PTDomain *)SBAppSwitcherDomain registerTestRecipe:v79];

    v19->_currentWallpaperRequiredForSwitcher = 0;
    v19->_currentWallpaperStyle = 1;
    v19->_currentHomeScreenContentRequired = 0;
    v19->_currentHomeScreenBackdropBlurType = 1;
    v19->_currentSwitcherBackdropBlurType = 1;
    v80 = +[SBSwitcherKeyboardSuppressionMode suppressionModeNone];
    lastKeyboardSuppressionMode = v19->_lastKeyboardSuppressionMode;
    v19->_lastKeyboardSuppressionMode = v80;

    v82 = [[SBSwitcherAccessoryLayoutElement alloc] initWithType:1];
    genericAccessoryLayoutElement = v19->_genericAccessoryLayoutElement;
    v19->_genericAccessoryLayoutElement = v82;

    v84 = objc_alloc(MEMORY[0x277CCACA8]);
    v85 = objc_opt_class();
    v86 = NSStringFromClass(v85);
    v87 = [v84 initWithFormat:@"%@-%p-%@", v86, v19, v19->_debugName];
    fluidSwitcherAssertionReason = v19->_fluidSwitcherAssertionReason;
    v19->_fluidSwitcherAssertionReason = v87;

    v89 = objc_alloc(MEMORY[0x277D757B8]);
    v90 = MEMORY[0x277D76138];
    v91 = [MEMORY[0x277CBEB98] setWithObject:&unk_283370340];
    v92 = [v90 privateConfigurationForTypes:v91];
    v93 = [v89 initWithConfiguration:v92];
    emptySwitcherFeedbackGenerator = v19->_emptySwitcherFeedbackGenerator;
    v19->_emptySwitcherFeedbackGenerator = v93;

    v95 = objc_alloc(MEMORY[0x277D757B8]);
    v96 = MEMORY[0x277D76138];
    v97 = [MEMORY[0x277CBEB98] setWithObject:&unk_283370358];
    v98 = [v96 privateConfigurationForTypes:v97];
    v99 = [v95 initWithConfiguration:v98];
    flyInFeedbackGenerator = v19->_flyInFeedbackGenerator;
    v19->_flyInFeedbackGenerator = v99;

    v101 = objc_alloc(MEMORY[0x277D757B8]);
    v102 = MEMORY[0x277D76138];
    v103 = [MEMORY[0x277CBEB98] setWithObject:&unk_283370370];
    v104 = [v102 privateConfigurationForTypes:v103];
    v105 = [v101 initWithConfiguration:v104];
    reduceMotionFeedbackGenerator = v19->_reduceMotionFeedbackGenerator;
    v19->_reduceMotionFeedbackGenerator = v105;

    [(SBFluidSwitcherViewController *)v19 setDefinesPresentationContext:1];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v19 selector:sel__reduceMotionStatusDidChange_ name:*MEMORY[0x277D764C0] object:0];
    [defaultCenter addObserver:v19 selector:sel__backgroundContrastDidChange_ name:*MEMORY[0x277D764C8] object:0];
    [defaultCenter addObserver:v19 selector:sel__folderExpansionOrContractionAnimationWillBegin_ name:*MEMORY[0x277D66728] object:0];
    [defaultCenter addObserver:v19 selector:sel__folderExpansionOrContractionAnimationWillBegin_ name:@"SBIconZoomContractionAnimationWillBeginNotification" object:0];
    [defaultCenter addObserver:v19 selector:sel__containerScrolledEnoughToClipSwitcherIconView_ name:*MEMORY[0x277D665F0] object:0];
    [defaultCenter addObserver:v19 selector:sel__iconControllerOverlayVisibilityDidChange_ name:SBIconControllerOverlayVisibilityDidChangeNotification object:0];
    [defaultCenter addObserver:v19 selector:sel__iconControllerDidReconfigureChildControllers_ name:SBIconControllerDidReconfigureChildControllersNotification object:0];
    [defaultCenter addObserver:v19 selector:sel__sceneUpdateDidChange_ name:@"SBApplicationSceneHandleProgressNotification" object:0];
    [defaultCenter addObserver:v19 selector:sel__handleKeyboardFrameWillChange_ name:*MEMORY[0x277D76C48] object:0];
    [defaultCenter addObserver:v19 selector:sel__keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];
    [defaultCenter addObserver:v19 selector:sel__keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
    [defaultCenter addObserver:v19 selector:sel__keyboardDidUIPosition_ name:@"UIKeyboardDidChangeUIPosition" object:0];
    [defaultCenter addObserver:v19 selector:sel__medusaHostedKeyboardWillShowNotification_ name:@"SBMedusaHostedKeyboardWindowWillShowNotification" object:0];
    [defaultCenter addObserver:v19 selector:sel__medusaHostedKeyboardWillHideNotification_ name:@"SBMedusaHostedKeyboardWindowWillHideNotification" object:0];
    v108 = +[SBAppInteractionEventSourceManager sharedInstance];
    [v108 addObserver:v19];

    objc_initWeak(&location, v19);
    v109 = MEMORY[0x277D85CD0];
    v110 = [MEMORY[0x277CCACA8] stringWithFormat:@"SpringBoard - FluidSwitcher - %@", v19->_debugName];
    objc_copyWeak(&v117, &location);
    v111 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureInvalidatable = v19->_stateCaptureInvalidatable;
    v19->_stateCaptureInvalidatable = v111;

    objc_destroyWeak(&v117);
    objc_destroyWeak(&location);

    sourceCopy = v115;
    personalityCopy = v116;
  }

  return v19;
}

void __113__SBFluidSwitcherViewController_initWithPersonality_liveContentOverlayCoordinator_dataSource_delegate_debugName___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = +[SBAppSwitcherDomain rootSettings];
  [v3 setShowMainModifierTimeline:a2];
}

id __113__SBFluidSwitcherViewController_initWithPersonality_liveContentOverlayCoordinator_dataSource_delegate_debugName___block_invoke_210(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = *(WeakRetained + 264);
    v5 = *(WeakRetained + 246);
    v6 = [*(WeakRetained + 173) allObjects];
    v7 = [v3 stringWithFormat:@"personality:\n%@\n\nvisibleItemContainers:\n%@\n\noutstandingAnimations:\n%@\n\nvisibleOverlayAccessoryViews:\n%@\n\nleafAppLayoutsToAdjustedAppLayouts:\n%@", v4, v5, v6, v2[247], v2[165]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (SBFluidSwitcherViewController)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithPersonality_liveContentOverlayCoordinator_dataSource_delegate_debugName_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBFluidSwitcherViewController.m" lineNumber:900 description:{@"%s is unavailable; use %@ instead", "-[SBFluidSwitcherViewController init]", v5}];

  return 0;
}

- (SBFluidSwitcherViewController)initWithNibName:(id)name bundle:(id)bundle
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithPersonality_liveContentOverlayCoordinator_dataSource_delegate_debugName_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBFluidSwitcherViewController.m" lineNumber:905 description:{@"%s is unavailable; use %@ instead", "-[SBFluidSwitcherViewController initWithNibName:bundle:]", v7}];

  return 0;
}

- (SBFluidSwitcherViewController)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithPersonality_liveContentOverlayCoordinator_dataSource_delegate_debugName_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBFluidSwitcherViewController.m" lineNumber:910 description:{@"%s is unavailable; use %@ instead", "-[SBFluidSwitcherViewController initWithCoder:]", v6}];

  return 0;
}

- (void)dealloc
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(self);
    v4 = objc_opt_class();
    v11 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_isInvalidated", v10, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)loadView
{
  v3 = objc_alloc_init(SBFluidSwitcherTouchPassThroughView);
  [(SBFluidSwitcherViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SBFluidSwitcherViewController;
  [(SBFluidSwitcherViewController *)&v3 viewDidLoad];
  [(SBFluidSwitcherViewController *)self _performDeferredInitialization];
  [(SBFluidSwitcherViewController *)self _setupContentAndTransientViews];
  [(SBFluidSwitcherViewController *)self _updateImplicitpersonalityInvalidatables];
  [(SBFluidSwitcherViewController *)self _updateChamoisDefaultsObserverIfNeeded];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = SBFluidSwitcherViewController;
  changeCopy = change;
  [(SBFluidSwitcherViewController *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(SBFluidSwitcherViewController *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];

  userInterfaceStyle2 = [changeCopy userInterfaceStyle];
  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(SBAppSwitcherSnapshotImageCache *)self->_snapshotCache reloadSnapshotsForInterfaceStyleChange:userInterfaceStyle];
    [(SBFluidSwitcherViewController *)self _updateTitleItemsLabelColor];
    [(SBFluidSwitcherViewController *)self _updateTitleItemsUserInterfaceStyle];
  }
}

- (void)_performDeferredInitialization
{
  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  sceneManager = [_sbWindowScene sceneManager];
  sceneManager = self->_sceneManager;
  self->_sceneManager = sceneManager;

  layoutStateTransitionCoordinator = [_sbWindowScene layoutStateTransitionCoordinator];
  layoutStateTransitionCoordinator = self->_layoutStateTransitionCoordinator;
  self->_layoutStateTransitionCoordinator = layoutStateTransitionCoordinator;

  v7 = [SBFluidSwitcherLayoutContext alloc];
  layoutStateProvider = [_sbWindowScene layoutStateProvider];
  layoutState = [layoutStateProvider layoutState];
  v10 = [(SBFluidSwitcherLayoutContext *)v7 initWithLayoutState:layoutState];
  layoutContext = self->_layoutContext;
  self->_layoutContext = v10;

  _iconManager = [(SBFluidSwitcherViewController *)self _iconManager];
  searchGesture = [_iconManager searchGesture];
  [searchGesture addObserver:self];

  [(SBFluidSwitcherViewController *)self _setUpSearchPresenterObservation];
  systemPointerInteractionManager = [_sbWindowScene systemPointerInteractionManager];
  [systemPointerInteractionManager addObserver:self];

  assistantController = [_sbWindowScene assistantController];
  [assistantController addObserver:self];
  isVisible = [assistantController isVisible];
  v17 = 3;
  if (!isVisible)
  {
    v17 = 0;
  }

  self->_assistantPresentationState = v17;
  v18 = [[SBAppSwitcherSnapshotImageCache alloc] initWithDelegate:self];
  snapshotCache = self->_snapshotCache;
  self->_snapshotCache = v18;

  [(SBAppSwitcherSnapshotImageCache *)self->_snapshotCache setDebugName:self->_debugName];
  v20 = self->_snapshotCache;
  traitCollection = [(SBFluidSwitcherViewController *)self traitCollection];
  -[SBAppSwitcherSnapshotImageCache reloadSnapshotsForInterfaceStyleChange:](v20, "reloadSnapshotsForInterfaceStyleChange:", [traitCollection userInterfaceStyle]);

  [(SBFluidSwitcherViewController *)self _updateSnapshotCacheReloadingForActiveInterfaceOrientationChange];
  v22 = objc_alloc_init(SBAppSwitcherSnapshotLockoutViewControllerProvider);
  lockoutVCProvider = self->_lockoutVCProvider;
  self->_lockoutVCProvider = v22;

  v24 = [[SBFluidSwitcherPageContentViewProvider alloc] initWithDelegate:self snapshotCache:self->_snapshotCache lockoutViewProvider:self->_lockoutVCProvider];
  pageContentViewProvider = self->_pageContentViewProvider;
  self->_pageContentViewProvider = v24;

  [(SBFluidSwitcherViewController *)self _didUpdatePersonality];
  [(SBFluidSwitcherViewController *)self _rebuildCachedAdjustedAppLayouts];
}

- (void)setPersonality:(id)personality
{
  personalityCopy = personality;
  if (self->_personality != personalityCopy)
  {
    v6 = personalityCopy;
    objc_storeStrong(&self->_personality, personality);
    [(SBFluidSwitcherViewController *)self _didUpdatePersonality];
    personalityCopy = v6;
  }
}

- (void)_didUpdatePersonality
{
  [(SBSwitcherPersonality *)self->_personality setView:self];
  personality = self->_personality;

  [(SBSwitcherPersonality *)personality setSwitcherContextDelegate:self];
}

- (void)_setupContentAndTransientViews
{
  view = [(SBFluidSwitcherViewController *)self view];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [view setBackgroundColor:clearColor];

  v5 = [SBAppSwitcherScrollView alloc];
  view2 = [(SBFluidSwitcherViewController *)self view];
  [view2 bounds];
  v7 = [(BSUIScrollView *)v5 initWithFrame:?];
  scrollView = self->_scrollView;
  self->_scrollView = v7;

  [(BSUIScrollView *)self->_scrollView setDelegate:self];
  [(SBAppSwitcherScrollView *)self->_scrollView setShowsHorizontalScrollIndicator:0];
  [(SBAppSwitcherScrollView *)self->_scrollView setShowsVerticalScrollIndicator:0];
  v9 = self->_scrollView;
  clearColor2 = [MEMORY[0x277D75348] clearColor];
  [(SBAppSwitcherScrollView *)v9 setBackgroundColor:clearColor2];

  [(SBAppSwitcherScrollView *)self->_scrollView setClipsToBounds:0];
  [(SBAppSwitcherScrollView *)self->_scrollView setZoomEnabled:0];
  [(SBAppSwitcherScrollView *)self->_scrollView setTracksImmediatelyWhileDecelerating:0];
  [(SBAppSwitcherScrollView *)self->_scrollView _setAutomaticContentOffsetAdjustmentEnabled:0];
  [(SBAppSwitcherScrollView *)self->_scrollView _setSupportsPointerDragScrolling:1];
  [(SBAppSwitcherScrollView *)self->_scrollView bs_setHitTestingDisabled:1];
  [(SBAppSwitcherScrollView *)self->_scrollView setContentInsetAdjustmentBehavior:2];
  v33 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  _setupContentAndTransientViews_updateRequest = 0;
  *algn_28125057C = v33.minimum;
  dword_281250580 = v33.preferred;
  unk_281250584 = v33.maximum;
  v32[0] = &_setupContentAndTransientViews_updateRequest;
  v32[1] = 1114132;
  [(SBAppSwitcherScrollView *)self->_scrollView _setUpdateRequestRecord:v32];
  view3 = [(SBFluidSwitcherViewController *)self view];
  [view3 addSubview:self->_scrollView];

  v12 = [SBFluidSwitcherContentView alloc];
  view4 = [(SBFluidSwitcherViewController *)self view];
  [view4 bounds];
  v14 = [(SBFluidSwitcherContentView *)v12 initWithFrame:?];
  contentView = self->_contentView;
  self->_contentView = v14;

  v16 = self->_contentView;
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%p", @"AppSwitcherItemContainerFocus-", self];
  [(SBFluidSwitcherContentView *)v16 setFocusGroupIdentifier:v17];

  [(SBFluidSwitcherContentView *)self->_contentView setDelegate:self];
  view5 = [(SBFluidSwitcherViewController *)self view];
  [view5 addSubview:self->_contentView];

  [(SBFluidSwitcherViewController *)self _updateContentViewSublayerTransform];
  layer = [(SBFluidSwitcherContentView *)self->_contentView layer];
  [layer setSortsSublayers:0];

  panGestureRecognizer = [(SBAppSwitcherScrollView *)self->_scrollView panGestureRecognizer];
  [(SBFluidSwitcherContentView *)self->_contentView addGestureRecognizer:panGestureRecognizer];
  v21 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleDismissTapGesture_];
  dismissTapGestureRecognizer = self->_dismissTapGestureRecognizer;
  self->_dismissTapGestureRecognizer = v21;

  [(UITapGestureRecognizer *)self->_dismissTapGestureRecognizer setDelegate:self];
  [(SBFluidSwitcherContentView *)self->_contentView addGestureRecognizer:self->_dismissTapGestureRecognizer];
  v23 = objc_alloc(MEMORY[0x277D75D18]);
  view6 = [(SBFluidSwitcherViewController *)self view];
  [view6 bounds];
  v25 = [v23 initWithFrame:?];
  hitTestBlockerView = self->_hitTestBlockerView;
  self->_hitTestBlockerView = v25;

  v27 = self->_hitTestBlockerView;
  clearColor3 = [MEMORY[0x277D75348] clearColor];
  [(UIView *)v27 setBackgroundColor:clearColor3];

  layer2 = [(UIView *)self->_hitTestBlockerView layer];
  [layer2 setHitTestsAsOpaque:1];

  layer3 = [(UIView *)self->_hitTestBlockerView layer];
  [layer3 setAllowsHitTesting:1];

  [(UIView *)self->_hitTestBlockerView setHidden:1];
  view7 = [(SBFluidSwitcherViewController *)self view];
  [view7 addSubview:self->_hitTestBlockerView];
}

- (void)_updateContentViewSublayerTransform
{
  v3 = MEMORY[0x277CD9DE8];
  windowManagementContext = [(SBFluidSwitcherViewController *)self windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if (isChamoisOrFlexibleWindowing)
  {
    windowingConfiguration = [(SBFluidSwitcherViewController *)self windowingConfiguration];
    [windowingConfiguration containerPerspective];
    v8 = -1.0 / v7;
  }

  else
  {
    v8 = *(v3 + 88);
  }

  layer = [(SBFluidSwitcherContentView *)self->_contentView layer];
  v10 = *(v3 + 48);
  v13[2] = *(v3 + 32);
  v13[3] = v10;
  v13[4] = *(v3 + 64);
  v14 = *(v3 + 80);
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v15 = v8;
  v12 = *(v3 + 112);
  v16 = *(v3 + 96);
  v17 = v12;
  [layer setSublayerTransform:v13];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBFluidSwitcherViewController *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBFluidSwitcherViewController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBFluidSwitcherViewController *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__SBFluidSwitcherViewController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

id __71__SBFluidSwitcherViewController_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendString:*(*(a1 + 40) + 1344) withName:@"debugName"];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) view];
  v4 = [v3 window];
  v5 = [v2 appendObject:v4 withName:@"window"];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) view];
  v8 = [v6 appendObject:v7 withName:@"view"];

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) scrollView];
  v11 = [v9 appendObject:v10 withName:@"scrollView"];

  v12 = *(a1 + 32);
  v13 = [*(a1 + 40) contentView];
  v14 = [v12 appendObject:v13 withName:@"contentView"];

  v15 = *(a1 + 32);
  [*(a1 + 40) _appearState];
  v16 = SBFStringForAppearState();
  v17 = [v15 appendObject:v16 withName:@"appearState"];

  [*(a1 + 32) appendDictionarySection:*(*(a1 + 40) + 2016) withName:@"liveContentOverlays" skipIfEmpty:0];
  v18 = *(a1 + 32);
  v19 = [*(a1 + 40) visibleItemContainers];
  [v18 appendDictionarySection:v19 withName:@"visibleItemContainers" skipIfEmpty:0];

  v20 = *(a1 + 32);
  v21 = [*(a1 + 40) _spacesWithVisibleHomeAffordances];
  v22 = [v21 allObjects];
  [v20 appendArraySection:v22 withName:@"visibleHomeGrabberLayoutElements" skipIfEmpty:0];

  v23 = *(a1 + 32);
  v24 = [*(a1 + 40) visibleShelves];
  [v23 appendDictionarySection:v24 withName:@"visibleShelves" skipIfEmpty:0];

  v25 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 2128) withName:@"hiddenIconViews"];
  v26 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 2136) withName:@"hiddenIconViewContainers"];
  v27 = *(a1 + 32);
  v28 = [*(*(a1 + 40) + 2112) descriptionWithMultilinePrefix:@"\t"];
  v29 = [v27 appendObject:v28 withName:@"personality"];

  v30 = *(a1 + 32);
  v31 = [*(a1 + 40) appLayouts];
  [v30 appendArraySection:v31 withName:@"appLayouts" skipIfEmpty:0];

  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 1960) withName:@"layoutContext"];
}

- (id)layoutAttributesMapForAppLayout:(id)layout
{
  layoutCopy = layout;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  displayItemLayoutAttributesProvider = [WeakRetained displayItemLayoutAttributesProvider];
  displayOrdinal = [(SBFluidSwitcherViewController *)self displayOrdinal];
  contentOrientation = [(SBFluidSwitcherViewController *)self contentOrientation];
  if ((contentOrientation - 1) < 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * ((contentOrientation - 3) < 2);
  }

  v10 = [displayItemLayoutAttributesProvider layoutAttributesMapForAppLayout:layoutCopy displayOrdinal:displayOrdinal orientation:v9];

  return v10;
}

- (void)updateLayoutAttributesMap:(id)map forAppLayout:(id)layout
{
  layoutCopy = layout;
  mapCopy = map;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  displayItemLayoutAttributesProvider = [WeakRetained displayItemLayoutAttributesProvider];
  preferredDisplayOrdinal = [layoutCopy preferredDisplayOrdinal];
  contentOrientation = [(SBFluidSwitcherViewController *)self contentOrientation];
  if ((contentOrientation - 1) < 2)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2 * ((contentOrientation - 3) < 2);
  }

  [displayItemLayoutAttributesProvider updateLayoutAttributesMap:mapCopy forAppLayout:layoutCopy displayOrdinal:preferredDisplayOrdinal orientation:v11];
}

- (id)layoutAttributesForDisplayItem:(id)item inAppLayout:(id)layout
{
  layoutCopy = layout;
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  displayItemLayoutAttributesProvider = [WeakRetained displayItemLayoutAttributesProvider];
  displayOrdinal = [(SBFluidSwitcherViewController *)self displayOrdinal];
  contentOrientation = [(SBFluidSwitcherViewController *)self contentOrientation];
  if ((contentOrientation - 1) < 2)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2 * ((contentOrientation - 3) < 2);
  }

  v13 = [displayItemLayoutAttributesProvider layoutAttributesForDisplayItem:itemCopy inAppLayout:layoutCopy displayOrdinal:displayOrdinal orientation:v12];

  return v13;
}

- (void)updateLayoutAttributes:(id)attributes ofDisplayItem:(id)item
{
  itemCopy = item;
  attributesCopy = attributes;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  displayItemLayoutAttributesProvider = [WeakRetained displayItemLayoutAttributesProvider];
  displayOrdinal = [(SBFluidSwitcherViewController *)self displayOrdinal];
  contentOrientation = [(SBFluidSwitcherViewController *)self contentOrientation];
  if ((contentOrientation - 1) < 2)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2 * ((contentOrientation - 3) < 2);
  }

  [displayItemLayoutAttributesProvider updateLayoutAttributes:attributesCopy ofDisplayItem:itemCopy displayOrdinal:displayOrdinal orientation:v11];
}

- (id)_demoLayoutAttributesForDisplayItem:(id)item inAppLayout:(id)layout
{
  if ((*(&self->_delegateRespondsTo + 2) & 0x10) != 0)
  {
    itemCopy = item;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = [WeakRetained switcherContentController:self demoLayoutAttributesForDisplayItem:itemCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)zOrderedItemsInAppLayout:(id)layout
{
  layoutCopy = layout;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  displayItemLayoutAttributesProvider = [WeakRetained displayItemLayoutAttributesProvider];
  contentOrientation = [(SBFluidSwitcherViewController *)self contentOrientation];
  if ((contentOrientation - 1) < 2)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2 * ((contentOrientation - 3) < 2);
  }

  v9 = [displayItemLayoutAttributesProvider zOrderedItemsInAppLayout:layoutCopy orientation:v8];

  return v9;
}

- (id)lastInteractedItemsInAppLayout:(id)layout
{
  layoutCopy = layout;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  displayItemLayoutAttributesProvider = [WeakRetained displayItemLayoutAttributesProvider];
  contentOrientation = [(SBFluidSwitcherViewController *)self contentOrientation];
  if ((contentOrientation - 1) < 2)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2 * ((contentOrientation - 3) < 2);
  }

  v9 = [displayItemLayoutAttributesProvider lastInteractedDisplayItemsInAppLayout:layoutCopy orientation:v8];

  return v9;
}

- (id)appLayoutContainingAppLayout:(id)layout
{
  layoutCopy = layout;
  _unadjustedAppLayouts = [(SBFluidSwitcherViewController *)self _unadjustedAppLayouts];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__SBFluidSwitcherViewController_appLayoutContainingAppLayout___block_invoke;
  v12[3] = &unk_2783A8CB8;
  v13 = layoutCopy;
  v6 = layoutCopy;
  v7 = [_unadjustedAppLayouts bs_firstObjectPassingTest:v12];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;

  return v9;
}

- (id)appLayoutsContainedWithinAppLayout:(id)layout
{
  v12[1] = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  appLayouts = [(SBFluidSwitcherViewController *)self appLayouts];
  v6 = [appLayouts containsObject:layoutCopy];

  if (v6)
  {
    v12[0] = layoutCopy;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  }

  else
  {
    appLayouts2 = [(SBFluidSwitcherViewController *)self appLayouts];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __68__SBFluidSwitcherViewController_appLayoutsContainedWithinAppLayout___block_invoke;
    v10[3] = &unk_2783A8CB8;
    v11 = layoutCopy;
    v7 = [appLayouts2 bs_filter:v10];
  }

  return v7;
}

- (BOOL)appLayoutContainsOnlyResizableApps:(id)apps
{
  appsCopy = apps;
  v4 = +[SBApplicationController sharedInstance];
  v5 = [v4 _appLayoutContainsOnlyResizableApps:appsCopy];

  return v5;
}

- (BOOL)appLayoutContainsAnUnoccludedMaximizedDisplayItem:(id)item
{
  v3 = [(SBFluidSwitcherViewController *)self maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:item ignoreOcclusion:0 ignoreCentering:1];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:(id)layout ignoreOcclusion:(BOOL)occlusion ignoreCentering:(BOOL)centering
{
  centeringCopy = centering;
  occlusionCopy = occlusion;
  v42 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  v32 = objc_opt_new();
  _windowManagementContext = [(SBFluidSwitcherViewController *)self _windowManagementContext];
  isFlexibleWindowingEnabled = [_windowManagementContext isFlexibleWindowingEnabled];

  if (isFlexibleWindowingEnabled)
  {
    windowingConfiguration = [(SBFluidSwitcherViewController *)self windowingConfiguration];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = [layoutCopy allItems];
    v10 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v10)
    {
      v11 = v10;
      v36 = *v38;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v38 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v37 + 1) + 8 * i);
          v14 = layoutCopy;
          v15 = [(SBFluidSwitcherViewController *)self layoutAttributesForDisplayItem:v13 inAppLayout:layoutCopy];
          foregroundCameraShutterButtonPIDs = [(SBCameraHardwareButton *)v15 foregroundCameraShutterButtonPIDs];
          IsOccluded = SBOcclusionStateIsOccluded(foregroundCameraShutterButtonPIDs);
          [(SBFluidSwitcherViewController *)self containerViewBounds];
          displayItemLayoutAttributesCalculator = [(SBFluidSwitcherViewController *)self displayItemLayoutAttributesCalculator];
          [displayItemLayoutAttributesCalculator sizeForLayoutAttributes:v15 windowingConfiguration:windowingConfiguration];
          v19 = BSSizeEqualToSize();

          LOBYTE(displayItemLayoutAttributesCalculator) = IsOccluded | [(SBFluidSwitcherViewController *)self _areContinuousExposeStripsUnoccluded];
          displayItemLayoutAttributesCalculator2 = [(SBFluidSwitcherViewController *)self displayItemLayoutAttributesCalculator];
          [displayItemLayoutAttributesCalculator2 centerForLayoutAttributes:v15 windowingConfiguration:windowingConfiguration];
          v22 = v21;
          v24 = v23;
          UIRectGetCenter();
          v26 = v25;
          v28 = v27;

          if ((displayItemLayoutAttributesCalculator & 1) == 0 || occlusionCopy)
          {
            v29 = v22 == v26;
            if (v24 != v28)
            {
              v29 = 0;
            }

            if (((v29 || centeringCopy) & v19) == 1)
            {
              [v32 addObject:v13];
            }
          }

          layoutCopy = v14;
        }

        v11 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v30 = [layoutCopy itemForLayoutRole:1];
    if (v30)
    {
      [v32 addObject:v30];
    }
  }

  return v32;
}

- (BOOL)canZoomDisplayItem:(id)item inAppLayout:(id)layout
{
  itemCopy = item;
  layoutCopy = layout;
  v8 = [(SBFluidSwitcherViewController *)self maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:layoutCopy ignoreOcclusion:1 ignoreCentering:0];
  v9 = [v8 containsObject:itemCopy];

  v10 = 0;
  if ((v9 & 1) == 0)
  {
    v11 = [(SBFluidSwitcherViewController *)self layoutAttributesForDisplayItem:itemCopy inAppLayout:layoutCopy];
    connections = [(SBHomeScreenConfigurationServer *)v11 connections];

    v10 = connections != 1;
  }

  return v10;
}

- (void)toggleFullScreenDisplayItem:(id)item
{
  layoutContext = self->_layoutContext;
  itemCopy = item;
  layoutState = [(SBFluidSwitcherLayoutContext *)layoutContext layoutState];
  appLayout = [layoutState appLayout];

  if ([(SBFluidSwitcherViewController *)self canZoomDisplayItem:itemCopy inAppLayout:appLayout])
  {
    v7 = 16;
  }

  else
  {
    v7 = 2;
  }

  [(SBFluidSwitcherViewController *)self _performShortcutAction:v7 forDisplayItem:itemCopy shortcutSource:4];
}

- (BOOL)isShieldingApplicationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[SBApplicationController sharedInstanceIfExists];
  v5 = [v4 applicationWithBundleIdentifier:identifierCopy];

  appProtectionAssistant = [v5 appProtectionAssistant];
  LOBYTE(identifierCopy) = [appProtectionAssistant shouldShield];

  return identifierCopy;
}

- (unint64_t)supportedSizingPoliciesForItem:(id)item inAppLayout:(id)layout
{
  itemCopy = item;
  layoutCopy = layout;
  v8 = +[SBApplicationController sharedInstance];
  bundleIdentifier = [itemCopy bundleIdentifier];
  v10 = [v8 applicationWithBundleIdentifier:bundleIdentifier];

  if (v10)
  {
    v11 = [(SBFluidSwitcherViewController *)self layoutAttributesForDisplayItem:itemCopy inAppLayout:layoutCopy];
    _windowManagementContext = [(SBFluidSwitcherViewController *)self _windowManagementContext];
    displayIdentity = [(SBSceneManager *)self->_sceneManager displayIdentity];
    v14 = [v10 supportedSizingPoliciesForSwitcherWindowManagementContext:_windowManagementContext displayIdentity:displayIdentity contentOrientation:-[SBHomeScreenConfigurationServer authenticator](v11) containerOrientation:{-[SBFluidSwitcherViewController switcherInterfaceOrientation](self, "switcherInterfaceOrientation")}];
  }

  else
  {
    v14 = 4;
  }

  return v14;
}

- (unint64_t)supportedContentInterfaceOrientationsForItem:(id)item
{
  itemCopy = item;
  dataSource = [(SBFluidSwitcherViewController *)self dataSource];
  v6 = [dataSource switcherContentController:self deviceApplicationSceneHandleForDisplayItem:itemCopy];

  supportedInterfaceOrientations = [v6 supportedInterfaceOrientations];
  return supportedInterfaceOrientations;
}

- (unint64_t)newContinuousExposeIdentifiersGenerationCount
{
  v2 = self->_continuousExposeIdentifiersGenerationCount + 1;
  self->_continuousExposeIdentifiersGenerationCount = v2;
  return v2;
}

- (id)activatingDisplayItemForAppLayout:(id)layout
{
  v46 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  appLibraryDisplayItem = [layoutCopy appLibraryDisplayItem];
  if (appLibraryDisplayItem)
  {
    v6 = appLibraryDisplayItem;
    v7 = v6;
  }

  else
  {
    layoutContext = [(SBFluidSwitcherViewController *)self layoutContext];
    activeTransitionContext = [layoutContext activeTransitionContext];

    layoutState = [activeTransitionContext layoutState];
    appLayout = [layoutState appLayout];
    v12 = [appLayout isEqual:layoutCopy];

    if (v12)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      entities = [activeTransitionContext entities];
      v14 = [entities countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v41;
LABEL_6:
        v17 = 0;
        while (1)
        {
          if (*v41 != v16)
          {
            objc_enumerationMutation(entities);
          }

          v18 = *(*(&v40 + 1) + 8 * v17);
          v19 = [v18 objectForActivationSetting:46];
          v20 = [v18 BOOLForActivationSetting:54];
          if (v20)
          {
            v20 = [v18 BOOLForActivationSetting:27];
          }

          if (v19 || v20 != 0)
          {
            break;
          }

          if (v15 == ++v17)
          {
            v15 = [entities countByEnumeratingWithState:&v40 objects:v45 count:16];
            if (v15)
            {
              goto LABEL_6;
            }

            goto LABEL_18;
          }
        }

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        obj = [layoutCopy allItems];
        v22 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v22)
        {
          v23 = v22;
          v33 = entities;
          v34 = activeTransitionContext;
          v24 = *v37;
          while (2)
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v37 != v24)
              {
                objc_enumerationMutation(obj);
              }

              v26 = *(*(&v36 + 1) + 8 * i);
              applicationSceneEntity = [v18 applicationSceneEntity];
              sceneHandle = [applicationSceneEntity sceneHandle];
              sceneIdentifier = [sceneHandle sceneIdentifier];

              uniqueIdentifier = [v26 uniqueIdentifier];
              LODWORD(applicationSceneEntity) = [sceneIdentifier isEqualToString:uniqueIdentifier];

              if (applicationSceneEntity)
              {
                v31 = v26;

                goto LABEL_29;
              }
            }

            v23 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }

          v31 = 0;
LABEL_29:
          entities = v33;
          activeTransitionContext = v34;
        }

        else
        {
          v31 = 0;
        }

        if (v31)
        {
          v7 = v31;
          v6 = v7;
          goto LABEL_34;
        }
      }

      else
      {
LABEL_18:
      }
    }

    v7 = [layoutCopy itemForLayoutRole:1];
    v6 = 0;
LABEL_34:
  }

  return v7;
}

- (CGSize)sizeOfDisplayItem:(id)item inDisplayWithOrdinal:(int64_t)ordinal
{
  v22[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v8 = WeakRetained;
  if ((~*&self->_dataSourceRespondsTo & 0x18000000000) != 0)
  {
    goto LABEL_7;
  }

  v9 = [WeakRetained windowingConfigurationForSwitcherContentControllerCorrespondingToDisplayOrdinal:ordinal];
  v10 = [v8 appLayoutForSwitcherContentControllerCorrespondingToDisplayOrdinal:ordinal];
  if (!v10)
  {
    v17 = [SBAppLayout alloc];
    v22[0] = itemCopy;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    LOBYTE(v21) = 0;
    v10 = [(SBAppLayout *)v17 initWithItems:v18 centerItem:0 floatingItem:0 configuration:1 centerConfiguration:0 environment:1 hidden:v21 preferredDisplayOrdinal:ordinal];

    if (v9)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  if (!v9)
  {
LABEL_6:

LABEL_7:
    v14 = *MEMORY[0x277CBF3A8];
    v16 = *(MEMORY[0x277CBF3A8] + 8);
    goto LABEL_8;
  }

LABEL_4:
  v11 = [(SBFluidSwitcherViewController *)self layoutAttributesForDisplayItem:itemCopy inAppLayout:v10];
  displayItemLayoutAttributesCalculator = [(SBFluidSwitcherViewController *)self displayItemLayoutAttributesCalculator];
  [displayItemLayoutAttributesCalculator sizeForLayoutAttributes:v11 windowingConfiguration:v9];
  v14 = v13;
  v16 = v15;

LABEL_8:
  v19 = v14;
  v20 = v16;
  result.height = v20;
  result.width = v19;
  return result;
}

- (double)splitViewInnerCornerRadius
{
  [(SBFluidSwitcherViewController *)self displayCornerRadius];
  if (BSFloatIsZero())
  {
    return 0.0;
  }

  medusaSettings = [(SBFluidSwitcherViewController *)self medusaSettings];
  [medusaSettings cornerRadiusForInnerCorners];
  v6 = v5;

  return v6;
}

- (double)statusBarHeight
{
  if (statusBarHeight_onceToken != -1)
  {
    [SBFluidSwitcherViewController statusBarHeight];
  }

  return *&statusBarHeight___statusBarHeight;
}

uint64_t __48__SBFluidSwitcherViewController_statusBarHeight__block_invoke()
{
  result = [MEMORY[0x277D75A78] heightForStyle:0 orientation:1];
  statusBarHeight___statusBarHeight = v1;
  return result;
}

- (double)statusBarSafeAreaInsetForDisplayItem:(id)item
{
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = WeakRetained;
  if ((*(&self->_dataSourceRespondsTo + 3) & 0x20) != 0)
  {
    v9 = [WeakRetained switcherContentController:self deviceApplicationSceneHandleForDisplayItem:itemCopy];
    v10 = [v9 isCurrentStatusBarHiddenForOrientation:{objc_msgSend(v9, "currentInterfaceOrientation")}];
    sb_thisDeviceDisplayEdgeInfo = [MEMORY[0x277D77750] sb_thisDeviceDisplayEdgeInfo];
    v12 = 0.0;
    if ((v10 & 1) == 0)
    {
      if (_UIEnhancedMainMenuEnabled())
      {
        v12 = 32.0;
      }

      else
      {
        v12 = 24.0;
      }
    }

    safeAreaInsetsPortrait = [sb_thisDeviceDisplayEdgeInfo safeAreaInsetsPortrait];
    [safeAreaInsetsPortrait topInset];
    v8 = v14;

    if (v12 >= v8)
    {
      v8 = v12;
    }
  }

  else
  {
    [(SBFluidSwitcherViewController *)self statusBarHeight];
    v8 = v7;
  }

  return v8;
}

- (double)floatingDockPresentedHeight
{
  if (![(SBFluidSwitcherViewController *)self isFloatingDockFullyPresented])
  {
    return 0.0;
  }

  [(SBFluidSwitcherViewController *)self floatingDockHeight];
  return result;
}

- (double)floatingDockViewTopMargin
{
  _floatingDockController = [(SBFluidSwitcherViewController *)self _floatingDockController];
  [_floatingDockController floatingDockViewTopMargin];
  v4 = v3;

  return v4;
}

- (BOOL)isFloatingDockFullyPresented
{
  _floatingDockController = [(SBFluidSwitcherViewController *)self _floatingDockController];
  isFloatingDockFullyPresented = [_floatingDockController isFloatingDockFullyPresented];

  return isFloatingDockFullyPresented;
}

- (BOOL)isFloatingDockGesturePossible
{
  _floatingDockController = [(SBFluidSwitcherViewController *)self _floatingDockController];
  isGesturePossible = [_floatingDockController isGesturePossible];

  return isGesturePossible;
}

- (double)shelfPresentedHeight
{
  allValues = [(NSMutableDictionary *)self->_visibleShelves allValues];
  firstObject = [allValues firstObject];

  v5 = 0.0;
  if (firstObject && [firstObject presented])
  {
    view = [firstObject view];
    [view frame];
    v8 = v7;
    [(SBFluidSwitcherViewController *)self floatingDockPresentedHeight];
    v5 = v8 - v9;
  }

  return v5;
}

- (double)continuousExposeStripProgress
{
  result = 1.0;
  if ((self->_continuousExposeStripsPresentationOptions & 1) == 0)
  {
    return 0.0;
  }

  return result;
}

- (BOOL)homeScreenHasOpenFolderInLocation:(id)location
{
  locationCopy = location;
  _iconManager = [(SBFluidSwitcherViewController *)self _iconManager];
  v6 = [_iconManager hasOpenFolderInLocation:locationCopy];

  return v6;
}

- (BOOL)homeScreenHasModalLibraryOpenInForeground
{
  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  modalLibraryController = [_sbWindowScene modalLibraryController];
  isPresentingLibraryInForeground = [modalLibraryController isPresentingLibraryInForeground];

  return isPresentingLibraryInForeground;
}

- (BOOL)homeScreenIsOnFirstPage
{
  _iconManager = [(SBFluidSwitcherViewController *)self _iconManager];
  rootFolderController = [_iconManager rootFolderController];

  currentPageIndex = [rootFolderController currentPageIndex];
  LOBYTE(currentPageIndex) = currentPageIndex == [rootFolderController firstIconPageIndex];

  return currentPageIndex;
}

- (BOOL)isAppLayoutVisibleInSwitcherBounds:(id)bounds
{
  visibleItemContainers = self->_visibleItemContainers;
  anyLeafAppLayout = [bounds anyLeafAppLayout];
  v6 = [(NSMutableDictionary *)visibleItemContainers objectForKey:anyLeafAppLayout];

  if (v6)
  {
    [(SBFluidSwitcherViewController *)self switcherViewBounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [v6 frame];
    v22.origin.x = v15;
    v22.origin.y = v16;
    v22.size.width = v17;
    v22.size.height = v18;
    v21.origin.x = v8;
    v21.origin.y = v10;
    v21.size.width = v12;
    v21.size.height = v14;
    v19 = CGRectIntersectsRect(v21, v22);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)isLayoutRoleContentReady:(int64_t)ready inAppLayout:(id)layout
{
  v5 = [layout leafAppLayoutForRole:ready];
  v6 = [(NSMutableDictionary *)self->_liveContentOverlays objectForKey:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 isContentUpdating] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  return v8;
}

- (id)currentVelocityValueForVisibleAppLayout:(id)layout key:(id)key
{
  visibleItemContainers = self->_visibleItemContainers;
  keyCopy = key;
  anyLeafAppLayout = [layout anyLeafAppLayout];
  v8 = [(NSMutableDictionary *)visibleItemContainers objectForKey:anyLeafAppLayout];

  v9 = [v8 _velocityForKey:keyCopy];

  return v9;
}

- (id)currentTargetVelocityValueForVisibleAppLayout:(id)layout key:(id)key
{
  visibleItemContainers = self->_visibleItemContainers;
  keyCopy = key;
  anyLeafAppLayout = [layout anyLeafAppLayout];
  v8 = [(NSMutableDictionary *)visibleItemContainers objectForKey:anyLeafAppLayout];

  v9 = [v8 _targetVelocityForKey:keyCopy];

  return v9;
}

- (CGRect)currentGenieFrameForVisibleAppLayout:(id)layout
{
  visibleItemContainers = self->_visibleItemContainers;
  anyLeafAppLayout = [layout anyLeafAppLayout];
  v5 = [(NSMutableDictionary *)visibleItemContainers objectForKey:anyLeafAppLayout];

  [v5 bounds];
  v7 = v6;
  v9 = v8;
  [v5 anchorPoint];
  v11 = v10;
  v13 = v12;
  layer = [v5 layer];
  [layer position];
  v16 = v15;
  v18 = v17;

  v19 = v16 - v11 * v7;
  v20 = v18 - v13 * v9;
  v21 = v7;
  v22 = v9;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (id)homeGestureSettings
{
  if ((*&self->_dataSourceRespondsTo & 8) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v2 = [WeakRetained homeGestureSettingsForSwitcherContentController:self];
  }

  else
  {
    v2 = +[SBHomeGestureDomain rootSettings];
  }

  return v2;
}

- (id)entityRemovalSettings
{
  v2 = +[SBSystemAnimationDomain rootSettings];
  entityRemovalAnimationSettings = [v2 entityRemovalAnimationSettings];

  return entityRemovalAnimationSettings;
}

- (id)windowingConfigurationForInterfaceOrientation:(int64_t)orientation
{
  switcherSettings = [(SBFluidSwitcherViewController *)self switcherSettings];
  windowingSettings = [switcherSettings windowingSettings];
  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  [(SBFluidSwitcherViewController *)self floatingDockHeight];
  v8 = [windowingSettings windowingConfigurationForWindowScene:_sbWindowScene interfaceOrientation:orientation requiresFullScreen:0 floatingDockHeight:?];

  return v8;
}

- (id)layoutRestrictionInfoForItem:(id)item
{
  itemCopy = item;
  displayItemLayoutAttributesCalculator = [(SBFluidSwitcherViewController *)self displayItemLayoutAttributesCalculator];
  v6 = [displayItemLayoutAttributesCalculator layoutRestrictionInfoForItem:itemCopy];

  return v6;
}

- (CGSize)preferredSceneSizeThatFits:(CGSize)fits displayItem:(id)item
{
  [(SBSwitcherPersonality *)self->_personality preferredSceneSizeThatFits:item displayItem:fits.width, fits.height];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)minSizeForDisplayItem:(id)item inContainerBounds:(CGRect)bounds layoutGrid:(id)grid layoutRestrictionInfo:(id)info contentOrientation:(int64_t)orientation screenScale:(double)scale windowingConfiguration:(id)configuration
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  itemCopy = item;
  [grid minGridSizeForBounds:orientation contentOrientation:info layoutRestrictionInfo:configuration screenScale:x windowingConfiguration:{y, width, height, scale}];
  [(SBFluidSwitcherViewController *)self preferredSceneSizeThatFits:itemCopy displayItem:?];
  v21 = v20;
  v23 = v22;

  v24 = v21;
  v25 = v23;
  result.height = v25;
  result.width = v24;
  return result;
}

- (CGSize)maxSizeForDisplayItem:(id)item inContainerBounds:(CGRect)bounds layoutGrid:(id)grid layoutRestrictionInfo:(id)info contentOrientation:(int64_t)orientation screenScale:(double)scale windowingConfiguration:(id)configuration
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  itemCopy = item;
  [grid maxGridSizeForBounds:orientation contentOrientation:info layoutRestrictionInfo:configuration screenScale:x windowingConfiguration:{y, width, height, scale}];
  [(SBFluidSwitcherViewController *)self preferredSceneSizeThatFits:itemCopy displayItem:?];
  v21 = v20;
  v23 = v22;

  v24 = v21;
  v25 = v23;
  result.height = v25;
  result.width = v24;
  return result;
}

- (int64_t)numberOfVisibleCards
{
  visibleItemContainers = [(SBFluidSwitcherViewController *)self visibleItemContainers];
  v3 = [visibleItemContainers count];

  return v3;
}

- (int64_t)numberOfVisibleAppLayoutsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataSource = [(SBFluidSwitcherViewController *)self dataSource];
  v6 = dataSource;
  dataSourceRespondsTo = self->_dataSourceRespondsTo;
  if ((*&dataSourceRespondsTo & 0x100000) != 0)
  {
    v11 = [dataSource switcherContentController:self visibleAppLayoutsForBundleIdentifier:identifierCopy];
    v8 = [v11 count];

    if ((*&self->_dataSourceRespondsTo & 0x200000) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = 0;
    if ((*&dataSourceRespondsTo & 0x200000) != 0)
    {
LABEL_3:
      v9 = [v6 switcherContentController:self visibleDisplayItemsForBundleIdentifier:identifierCopy];
      v10 = [v9 count];

      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_6:
  if (v8 < v10)
  {
    v10 = v8;
  }

  return v10;
}

- (int64_t)numberOfHiddenAppLayoutsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataSource = [(SBFluidSwitcherViewController *)self dataSource];
  v6 = dataSource;
  if ((*(&self->_dataSourceRespondsTo + 2) & 0x40) != 0)
  {
    v8 = [dataSource switcherContentController:self hiddenAppLayoutsForBundleIdentifier:identifierCopy];
    v7 = [v8 count];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)displayItemInSlideOver
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = WeakRetained;
  if ((*(&self->_dataSourceRespondsTo + 4) & 0x40) != 0)
  {
    v5 = [WeakRetained slideOverItemForSwitcherContentController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)appLayoutsForContinuousExposeIdentifier:(id)identifier
{
  v28 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [(NSDictionary *)self->_appLayoutsForContinuousExposeIdentifiers objectForKey:identifierCopy];
  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    _unadjustedAppLayouts = [(SBFluidSwitcherViewController *)self _unadjustedAppLayouts];
    v8 = [_unadjustedAppLayouts countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(_unadjustedAppLayouts);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          continuousExposeIdentifier = [v12 continuousExposeIdentifier];
          v14 = [continuousExposeIdentifier isEqualToString:identifierCopy];

          if (v14)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [_unadjustedAppLayouts countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v9);
    }

    if (self->_appLayoutsForContinuousExposeIdentifiers)
    {
      appLayoutsForContinuousExposeIdentifiers = self->_appLayoutsForContinuousExposeIdentifiers;
    }

    else
    {
      appLayoutsForContinuousExposeIdentifiers = MEMORY[0x277CBEC10];
    }

    v25 = identifierCopy;
    v26 = v6;
    v16 = MEMORY[0x277CBEAC0];
    v5 = v6;
    v17 = [v16 dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v18 = [(NSDictionary *)appLayoutsForContinuousExposeIdentifiers bs_dictionaryByAddingEntriesFromDictionary:v17];
    v19 = self->_appLayoutsForContinuousExposeIdentifiers;
    self->_appLayoutsForContinuousExposeIdentifiers = v18;
  }

  return v5;
}

- (BOOL)anyHighlightedAppLayoutsForContinuousExposeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  allValues = [(NSMutableDictionary *)self->_visibleItemContainers allValues];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __87__SBFluidSwitcherViewController_anyHighlightedAppLayoutsForContinuousExposeIdentifier___block_invoke;
  v9[3] = &unk_2783A8FD0;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [allValues bs_containsObjectPassingTest:v9];

  return v7;
}

uint64_t __87__SBFluidSwitcherViewController_anyHighlightedAppLayoutsForContinuousExposeIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isHighlightedFromCursorHover])
  {
    v4 = [v3 appLayout];
    v5 = [v4 continuousExposeIdentifier];
    v6 = [v5 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isStudyLogEnabled
{
  mEMORY[0x277D6A798] = [MEMORY[0x277D6A798] sharedInstance];
  isEnabled = [mEMORY[0x277D6A798] isEnabled];

  return isEnabled;
}

- (BOOL)isMedusaCapable
{
  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  supportsMultitasking = [_sbWindowScene supportsMultitasking];

  return supportsMultitasking;
}

- (BOOL)isSplitViewSupported
{
  _windowManagementContext = [(SBFluidSwitcherViewController *)self _windowManagementContext];
  v3 = [_windowManagementContext baseStyle] != 0;

  return v3;
}

- (BOOL)isInMedusaCapableSpace
{
  layoutContext = [(SBFluidSwitcherViewController *)self layoutContext];
  layoutState = [layoutContext layoutState];

  v4 = [layoutState elementWithRole:1];
  v5 = v4;
  if (v4)
  {
    supportedLayoutRoles = [v4 supportedLayoutRoles];
    v7 = [supportedLayoutRoles containsRole:2];
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

- (BOOL)prefersStripHiddenAndDisabled
{
  windowManagementContext = [(SBFluidSwitcherViewController *)self windowManagementContext];
  if ([windowManagementContext isFlexibleWindowingEnabled] && !objc_msgSend(windowManagementContext, "isAutomaticStageCreationEnabled"))
  {
    v4 = 1;
  }

  else if ([(SBFluidSwitcherViewController *)self prefersStripHidden])
  {
    v4 = SBFIsChamoisStripDisabledWhenHiddenAvailable();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGRect)homeScreenIconFrameForAppLayout:(id)layout
{
  layoutCopy = layout;
  _iconZoomContextProvider = [(SBFluidSwitcherViewController *)self _iconZoomContextProvider];
  [_iconZoomContextProvider iconFrameForAppLayout:layoutCopy];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (double)homeScreenIconScaleForAppLayout:(id)layout
{
  layoutCopy = layout;
  _iconZoomContextProvider = [(SBFluidSwitcherViewController *)self _iconZoomContextProvider];
  [_iconZoomContextProvider iconScaleForAppLayout:layoutCopy];
  v7 = v6;

  return v7;
}

- (double)homeScreenIconCornerRadiusForAppLayout:(id)layout
{
  layoutCopy = layout;
  _iconZoomContextProvider = [(SBFluidSwitcherViewController *)self _iconZoomContextProvider];
  [_iconZoomContextProvider iconCornerRadiusForAppLayout:layoutCopy];
  v7 = v6;

  return v7;
}

- (id)homeScreenIconLocationForAppLayout:(id)layout
{
  layoutCopy = layout;
  _iconZoomContextProvider = [(SBFluidSwitcherViewController *)self _iconZoomContextProvider];
  v6 = [_iconZoomContextProvider iconLocationForAppLayout:layoutCopy];

  return v6;
}

- (id)homeScreenIconGridSizeClassForAppLayout:(id)layout
{
  layoutCopy = layout;
  _iconZoomContextProvider = [(SBFluidSwitcherViewController *)self _iconZoomContextProvider];
  v6 = [_iconZoomContextProvider iconGridSizeClassForAppLayout:layoutCopy];

  return v6;
}

- (CGSize)homeScreenIconBadgeSizeForAppLayout:(id)layout
{
  layoutCopy = layout;
  _iconZoomContextProvider = [(SBFluidSwitcherViewController *)self _iconZoomContextProvider];
  v6 = [_iconZoomContextProvider iconZoomingViewForAppLayout:layoutCopy];

  v7 = objc_opt_class();
  v8 = v6;
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

  if (v10 && [v10 currentAccessoryType] == 1)
  {
    listLayout = [v10 listLayout];
    SBHIconListLayoutIconAccessorySize();
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v13 = *MEMORY[0x277CBF3A8];
    v15 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (CGPoint)homeScreenIconBadgeOffsetForAppLayout:(id)layout
{
  layoutCopy = layout;
  _iconZoomContextProvider = [(SBFluidSwitcherViewController *)self _iconZoomContextProvider];
  v6 = [_iconZoomContextProvider iconZoomingViewForAppLayout:layoutCopy];

  v7 = objc_opt_class();
  v8 = v6;
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

  if (v10 && [v10 currentAccessoryType] == 1)
  {
    listLayout = [v10 listLayout];
    SBHIconListLayoutIconAccessoryOffset();
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v13 = *MEMORY[0x277CBF348];
    v15 = *(MEMORY[0x277CBF348] + 8);
  }

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (SBSwitcherGenieGlassHighlight)homeScreenGlassHighlightForAppLayout:(SEL)layout
{
  v6 = a4;
  _iconZoomContextProvider = [(SBFluidSwitcherViewController *)self _iconZoomContextProvider];
  v8 = [_iconZoomContextProvider iconZoomingViewForAppLayout:v6];

  v9 = objc_opt_class();
  v29 = v8;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v29;
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

  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = MEMORY[0x277D75C80];
  traitCollection = [v11 traitCollection];
  v14 = [v12 sbh_iconImageAppearanceFromTraitCollection:traitCollection];

  if (([v14 hasGlass] & 1) != 0 || (objc_msgSend(v14, "hasTintColor") & 1) != 0 || (objc_msgSend(v11, "layer"), v15 = objc_claimAutoreleasedReturnValue(), -[SBFluidSwitcherViewController _icrIconLayerIfAnyInLayer:](self, "_icrIconLayerIfAnyInLayer:", v15), v16 = objc_claimAutoreleasedReturnValue(), v15, !v16))
  {

LABEL_14:
    SBSwitcherGenieGlassHighlightNone(retstr);
    goto LABEL_15;
  }

  [v16 lightDirection];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [v16 lightIntensity];
  v24 = v23;
  if ([v14 isDark])
  {
    v24 = v24 * 0.6;
  }

  v25 = SBSwitcherGenieGlassHighlightDirectionMake(v18, v20, v22);
  SBSwitcherGenieGlassHighlightMake(2, retstr, v25, v26, v27, v24);

LABEL_15:

  return result;
}

- (id)_icrIconLayerIfAnyInLayer:(id)layer
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  sublayers = [layer sublayers];
  v5 = [sublayers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(sublayers);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 isICRIconLayer])
        {
          v10 = v9;
LABEL_13:
          v11 = v10;
          goto LABEL_14;
        }

        v10 = [(SBFluidSwitcherViewController *)self _icrIconLayerIfAnyInLayer:v9];
        if (v10)
        {
          goto LABEL_13;
        }
      }

      v6 = [sublayers countByEnumeratingWithState:&v13 objects:v17 count:16];
      v11 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_14:

  return v11;
}

- (BOOL)itemContainerForAppLayoutOverlapsFloatingDock:(id)dock
{
  dockCopy = dock;
  _iconZoomContextProvider = [(SBFluidSwitcherViewController *)self _iconZoomContextProvider];
  v6 = [_iconZoomContextProvider anyDisplayItemForAppLayoutOverlapsFloatingDock:dockCopy];

  return v6;
}

- (CGRect)shelfItemFrameForAppLayout:(id)layout inShelf:(id)shelf
{
  layoutCopy = layout;
  v7 = [(NSMutableDictionary *)self->_visibleShelves objectForKey:shelf];
  v8 = v7;
  if (v7)
  {
    [v7 itemFrameForAppLayout:layoutCopy];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    view = [v8 view];
    [view convertRect:self->_contentView toView:{v10, v12, v14, v16}];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
  }

  else
  {
    v19 = *MEMORY[0x277CBF3A0];
    v21 = *(MEMORY[0x277CBF3A0] + 8);
    v23 = *(MEMORY[0x277CBF3A0] + 16);
    v25 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v26 = v19;
  v27 = v21;
  v28 = v23;
  v29 = v25;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (double)shelfItemScaleForAppLayout:(id)layout inShelf:(id)shelf
{
  layoutCopy = layout;
  v7 = [(NSMutableDictionary *)self->_visibleShelves objectForKey:shelf];
  v8 = v7;
  if (v7)
  {
    [v7 itemScaleForAppLayout:layoutCopy];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (double)shelfItemCornerRadiusForAppLayout:(id)layout inShelf:(id)shelf
{
  layoutCopy = layout;
  v7 = [(NSMutableDictionary *)self->_visibleShelves objectForKey:shelf];
  v8 = v7;
  if (v7)
  {
    [v7 itemCornerRadiusForAppLayout:layoutCopy];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (CGRect)preferredFrameForLayoutRole:(int64_t)role inAppLayout:(id)layout bounds:(CGRect)bounds interfaceOrientation:(int64_t)orientation
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutCopy = layout;
  if ([layoutCopy environment] != 3 && objc_msgSend(layoutCopy, "environment") != 2)
  {
    [(SBFluidSwitcherViewController *)self _frameForItemWithRole:role inMainAppLayout:layoutCopy interfaceOrientation:orientation];
    width = v14;
    height = v15;
    x = x + v16;
    y = y + v17;
  }

  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)setPipViewMorphAnimator:(id)animator
{
  obj = animator;
  WeakRetained = objc_loadWeakRetained(&self->_pipViewMorphAnimator);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_pipViewMorphAnimator, obj);
    [obj setDelegate:self];
    [obj addObserver:self];
  }
}

- (CGRect)morphToPIPClippingFrame
{
  pipViewMorphAnimator = [(SBFluidSwitcherViewController *)self pipViewMorphAnimator];
  v3 = pipViewMorphAnimator;
  if (pipViewMorphAnimator)
  {
    [pipViewMorphAnimator sourceClippingFrame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v5 = *MEMORY[0x277CBF398];
    v7 = *(MEMORY[0x277CBF398] + 8);
    v9 = *(MEMORY[0x277CBF398] + 16);
    v11 = *(MEMORY[0x277CBF398] + 24);
  }

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (double)morphToPIPClippingCornerRadius
{
  pipViewMorphAnimator = [(SBFluidSwitcherViewController *)self pipViewMorphAnimator];
  [pipViewMorphAnimator sourceClippingCornerRadius];
  v4 = v3;

  return v4;
}

- (CGPoint)morphToPIPTargetCenter
{
  pipViewMorphAnimator = [(SBFluidSwitcherViewController *)self pipViewMorphAnimator];
  v3 = pipViewMorphAnimator;
  if (pipViewMorphAnimator)
  {
    [pipViewMorphAnimator sourceFinalCenter];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v5 = *MEMORY[0x277CBF348];
    v7 = *(MEMORY[0x277CBF348] + 8);
  }

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (double)morphToPIPTargetScale
{
  pipViewMorphAnimator = [(SBFluidSwitcherViewController *)self pipViewMorphAnimator];
  v3 = pipViewMorphAnimator;
  if (pipViewMorphAnimator)
  {
    [pipViewMorphAnimator sourceFinalScale];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (BOOL)isSystemApertureTransitionTargetForSceneIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier isPortrait:(BOOL)portrait
{
  if (!bundleIdentifier)
  {
    return 0;
  }

  v7 = SBApp;
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  systemApertureControllerForMainDisplay = [v7 systemApertureControllerForMainDisplay];
  v11 = [systemApertureControllerForMainDisplay isTransitionTargetForSceneIdentifier:identifierCopy bundleIdentifier:bundleIdentifierCopy];

  v12 = v11 & portrait;
  return v12;
}

- (CGRect)systemApertureDefaultFrame
{
  systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
  view = [(SBFluidSwitcherViewController *)self view];
  [systemApertureControllerForMainDisplay defaultIslandFrameInCoordinateSpace:view];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGPoint)scrollableQueryModifier:(id)modifier contentOffsetVelocityConsideringNextContentOffset:(CGPoint)offset
{
  [(SBAppSwitcherScrollView *)self->_scrollView contentOffsetVelocityConsideringNextContentOffset:modifier, offset.x, offset.y];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)scrollableQueryModifier:(id)modifier convertScrollViewPointToContainerViewCoordinateSpace:(CGPoint)space
{
  y = space.y;
  x = space.x;
  scrollView = self->_scrollView;
  view = [(SBFluidSwitcherViewController *)self view];
  [(SBAppSwitcherScrollView *)scrollView convertPoint:view toView:x, y];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGAffineTransform)transformForCardUnderSheetForBoundsSize:(SEL)size
{
  height = a4.height;
  width = a4.width;
  v8 = MEMORY[0x277CBF2C0];
  v9 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v9;
  *&retstr->tx = *(v8 + 32);
  delegate = [(SBFluidSwitcherViewController *)self delegate];
  v11 = delegate;
  if ((*(&self->_delegateRespondsTo + 3) & 0x10) != 0)
  {
    if (delegate)
    {
      [delegate switcherContentController:self transformForCardUnderSheetForBoundsSize:{width, height}];
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
      v13 = 0u;
    }

    *&retstr->a = v13;
    *&retstr->c = v14;
    *&retstr->tx = v15;
  }

  return result;
}

- (int64_t)userInterfaceStyle
{
  traitCollection = [(SBFluidSwitcherViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  return userInterfaceStyle;
}

- (double)presentationValueForAnimatableProperty:(id)property
{
  v3 = [(NSMutableDictionary *)self->_animatableProperties valueForKey:property];
  v4 = v3;
  if (v3)
  {
    [v3 presentationValue];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (void)sceneLayoutTransitionWillStartWithTransitionContext:(id)context
{
  layoutState = [context layoutState];
  [(SBFluidSwitcherViewController *)self _updateForegroundAppLayoutsWithNewLayoutState:layoutState];
}

- (id)displayConfiguration
{
  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  _fbsDisplayConfiguration = [_sbWindowScene _fbsDisplayConfiguration];

  return _fbsDisplayConfiguration;
}

- (id)displayConfigurationsOfOtherDisplays
{
  dataSource = [(SBFluidSwitcherViewController *)self dataSource];
  v4 = dataSource;
  if ((*(&self->_dataSourceRespondsTo + 4) & 8) != 0)
  {
    v5 = [dataSource displayConfigurationsOfOtherDisplaysForSwitcherContentController:self];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;

  return v6;
}

- (id)appLayoutByBringingItemToFront:(id)front inAppLayout:(id)layout
{
  frontCopy = front;
  layoutCopy = layout;
  v8 = layoutCopy;
  if (!frontCopy || ([layoutCopy containsItem:frontCopy] & 1) == 0)
  {
    [SBFluidSwitcherViewController appLayoutByBringingItemToFront:inAppLayout:];
  }

  dataSource = [(SBFluidSwitcherViewController *)self dataSource];
  [dataSource nextDisplayItemInteractionTimeForSwitcherContentController:self];

  v10 = [(SBFluidSwitcherViewController *)self layoutAttributesForDisplayItem:frontCopy inAppLayout:v8];
  v11 = [SBDisplayItemLayoutAttributes attributesByModifyingLastInteractionTime:v10];

  [(SBFluidSwitcherViewController *)self updateLayoutAttributes:v11 ofDisplayItem:frontCopy];

  return v8;
}

- (id)desktopSpaceDisplayItems
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [MEMORY[0x277CBEB98] set];
  if ((*(&self->_dataSourceRespondsTo + 4) & 0x20) != 0)
  {
    v5 = [WeakRetained desktopSpaceItemsForSwitcherContentController:self];

    v4 = v5;
  }

  return v4;
}

- (id)proposedAppLayoutsForWindowDrag
{
  dataSource = [(SBFluidSwitcherViewController *)self dataSource];
  v4 = dataSource;
  if ((*(&self->_dataSourceRespondsTo + 4) & 2) != 0)
  {
    [dataSource proposedAppLayoutsForWindowDragForSwitcherContentController:self];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v5 = ;

  return v5;
}

- (unint64_t)assistantModalities
{
  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  assistantController = [_sbWindowScene assistantController];
  presentationContext = [assistantController presentationContext];

  hasVoiceModality = [presentationContext hasVoiceModality];
  if ([presentationContext hasTextModality])
  {
    hasVoiceModality |= 2uLL;
  }

  if ([presentationContext hasVisionModality])
  {
    hasVoiceModality |= 4uLL;
  }

  return hasVoiceModality;
}

- (BOOL)isAssistantKeyboardVisible
{
  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  assistantController = [_sbWindowScene assistantController];
  presentationContext = [assistantController presentationContext];

  LOBYTE(_sbWindowScene) = [presentationContext isKeyboardVisible];
  return _sbWindowScene;
}

- (BOOL)isSystemAssistantExperiencePersistentSiriEnabled
{
  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  assistantController = [_sbWindowScene assistantController];
  isSystemAssistantExperiencePersistentSiriEnabled = [assistantController isSystemAssistantExperiencePersistentSiriEnabled];

  return isSystemAssistantExperiencePersistentSiriEnabled;
}

- (BOOL)isEphemeralSwitcher
{
  if ((*(&self->_dataSourceRespondsTo + 4) & 4) == 0)
  {
    return 0;
  }

  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  LOBYTE(selfCopy) = [WeakRetained isSwitcherContentControllerEphemeral:selfCopy];

  return selfCopy;
}

- (unint64_t)maximumNumberOfScenesOnStage
{
  if ((*&self->_dataSourceRespondsTo & 0x10) == 0)
  {
    return 1;
  }

  dataSource = [(SBFluidSwitcherViewController *)self dataSource];
  v5 = [dataSource maximumNumberOfScenesOnStageForSwitcherContentController:self];

  return v5;
}

- (int64_t)preferredWindowControlsPlacementForLeafAppLayout:(id)layout
{
  allItems = [layout allItems];
  firstObject = [allItems firstObject];

  if (firstObject)
  {
    v6 = [(SBFluidSwitcherViewController *)self deviceApplicationSceneHandleForDisplayItem:firstObject];
    preferredWindowControlsPlacement = [v6 preferredWindowControlsPlacement];
  }

  else
  {
    preferredWindowControlsPlacement = 1;
  }

  return preferredWindowControlsPlacement;
}

- (SBWindowControlsLayout)defaultWindowControlsLayoutForDisplayItem:(SEL)item frame:(id)frame containerBounds:(CGRect)bounds
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v10 = bounds.size.height;
  v11 = bounds.size.width;
  v12 = bounds.origin.y;
  v13 = bounds.origin.x;
  v15 = [(SBFluidSwitcherViewController *)self deviceApplicationSceneHandleForDisplayItem:frame];
  if (v15)
  {
    v17 = v15;
    [v15 windowControlsLayoutForApplicationFrame:0 screenBounds:v13 activationSettings:{v12, v11, v10, x, y, width, height}];
    v15 = v17;
  }

  else
  {
    *&retstr->style = 0u;
    retstr->margin = 0u;
  }

  return result;
}

- (BOOL)displayItemPrefersStatusBarHidden:(id)hidden
{
  v3 = [(SBFluidSwitcherViewController *)self deviceApplicationSceneHandleForDisplayItem:hidden];
  statusBarStateProvider = [v3 statusBarStateProvider];
  statusBarHidden = [statusBarStateProvider statusBarHidden];

  return statusBarHidden;
}

- (void)handleFluidSwitcherGestureManager:(id)manager didBeginGesture:(id)gesture
{
  managerCopy = manager;
  gestureCopy = gesture;
  _gestureManager = [(SBFluidSwitcherViewController *)self _gestureManager];
  if (!gestureCopy)
  {
    [SBFluidSwitcherViewController handleFluidSwitcherGestureManager:didBeginGesture:];
  }

  if (([managerCopy isEqual:_gestureManager] & 1) == 0)
  {
    gestureEvent = [gestureCopy gestureEvent];
    isWindowDragGestureEvent = [gestureEvent isWindowDragGestureEvent];

    if ((isWindowDragGestureEvent & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SBFluidSwitcherViewController.m" lineNumber:2298 description:{@"Invalid parameter not satisfying: %@", @"[gestureManager isEqual:ourGestureManager] || [[gesture gestureEvent] isWindowDragGestureEvent]"}];
    }
  }

  layoutContext = [(SBFluidSwitcherViewController *)self layoutContext];
  activeGesture = [layoutContext activeGesture];

  if (activeGesture)
  {
    [SBFluidSwitcherViewController handleFluidSwitcherGestureManager:didBeginGesture:];
  }

  delegate = [(SBFluidSwitcherViewController *)self delegate];
  selectedAppLayout = [gestureCopy selectedAppLayout];
  v17 = [(SBFluidSwitcherViewController *)self _spaceContainingAppLayout:selectedAppLayout];

  if (v17)
  {
    layoutContext2 = [(SBFluidSwitcherViewController *)self layoutContext];
    if ([layoutContext2 shouldAddAppLayoutToFront:v17 whenBeginningGestureOfType:objc_msgSend(gestureCopy layoutContext:{"type"), layoutContext2}] && (*&self->_delegateRespondsTo & 1) != 0)
    {
      [delegate switcherContentController:self bringAppLayoutToFront:v17];
    }
  }

  if (![(NSMutableSet *)self->_systemApertureContentSuppressionAssertionsForGesture count])
  {
    selectedAppLayout2 = [gestureCopy selectedAppLayout];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __83__SBFluidSwitcherViewController_handleFluidSwitcherGestureManager_didBeginGesture___block_invoke;
    v22[3] = &unk_2783AE1C8;
    v22[4] = self;
    [selectedAppLayout2 enumerate:v22];
  }

  [(SBFluidSwitcherViewController *)self _cancelWindowMorphingAnimation];
  [layoutContext setActiveGesture:gestureCopy];
  self->_isPendingViewsForAcceleratedHomeGesture = 0;
  gestureEvent2 = [gestureCopy gestureEvent];
  v21 = [(SBFluidSwitcherViewController *)self _adjustedGestureEventForGestureEvent:gestureEvent2 fromGestureManager:managerCopy];
  [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v21];
  [MEMORY[0x277CD9FF0] setFrameStallSkipRequest:1];
}

void __83__SBFluidSwitcherViewController_handleFluidSwitcherGestureManager_didBeginGesture___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  if (![v8 type])
  {
    v4 = [*(a1 + 32) _gestureManager];
    v5 = [v8 bundleIdentifier];
    v6 = [v8 uniqueIdentifier];
    v7 = [v4 acquireSystemApertureSuppressionAssertionForBundleIdentifier:v5 sceneIdentifier:v6];

    if (v7)
    {
      [*(*(a1 + 32) + 1592) addObject:v7];
    }
  }
}

- (void)handleFluidSwitcherGestureManager:(id)manager didUpdateGesture:(id)gesture
{
  managerCopy = manager;
  gestureCopy = gesture;
  _gestureManager = [(SBFluidSwitcherViewController *)self _gestureManager];
  if (!gestureCopy)
  {
    [SBFluidSwitcherViewController handleFluidSwitcherGestureManager:didUpdateGesture:];
  }

  layoutContext = [(SBFluidSwitcherViewController *)self layoutContext];
  activeGesture = [layoutContext activeGesture];
  v11 = [gestureCopy isEqual:activeGesture];

  if ((v11 & 1) == 0)
  {
    [SBFluidSwitcherViewController handleFluidSwitcherGestureManager:didUpdateGesture:];
  }

  if (([managerCopy isEqual:_gestureManager] & 1) == 0)
  {
    gestureEvent = [gestureCopy gestureEvent];
    isWindowDragGestureEvent = [gestureEvent isWindowDragGestureEvent];

    if ((isWindowDragGestureEvent & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SBFluidSwitcherViewController.m" lineNumber:2349 description:{@"Invalid parameter not satisfying: %@", @"[gestureManager isEqual:ourGestureManager] || [[gesture gestureEvent] isWindowDragGestureEvent]"}];
    }
  }

  gestureEvent2 = [gestureCopy gestureEvent];
  v16 = [(SBFluidSwitcherViewController *)self _adjustedGestureEventForGestureEvent:gestureEvent2 fromGestureManager:managerCopy];
  [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v16];
}

- (void)handleFluidSwitcherGestureManager:(id)manager didEndGesture:(id)gesture
{
  v33 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  gestureCopy = gesture;
  _gestureManager = [(SBFluidSwitcherViewController *)self _gestureManager];
  if (!gestureCopy)
  {
    [SBFluidSwitcherViewController handleFluidSwitcherGestureManager:didEndGesture:];
  }

  layoutContext = [(SBFluidSwitcherViewController *)self layoutContext];
  activeGesture = [layoutContext activeGesture];
  v12 = [gestureCopy isEqual:activeGesture];

  if ((v12 & 1) == 0)
  {
    [SBFluidSwitcherViewController handleFluidSwitcherGestureManager:didEndGesture:];
  }

  if (([managerCopy isEqual:_gestureManager] & 1) == 0)
  {
    gestureEvent = [gestureCopy gestureEvent];
    isWindowDragGestureEvent = [gestureEvent isWindowDragGestureEvent];

    if ((isWindowDragGestureEvent & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SBFluidSwitcherViewController.m" lineNumber:2363 description:{@"Invalid parameter not satisfying: %@", @"[gestureManager isEqual:ourGestureManager] || [[gesture gestureEvent] isWindowDragGestureEvent]"}];
    }
  }

  layoutContext2 = [(SBFluidSwitcherViewController *)self layoutContext];
  [layoutContext2 setActiveGesture:0];

  self->_isPendingViewsForAcceleratedHomeGesture = 0;
  [(UIView *)self->_hitTestBlockerView setHidden:1];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = self->_systemApertureContentSuppressionAssertionsForGesture;
  v18 = [(NSMutableSet *)v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    do
    {
      v21 = 0;
      do
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v28 + 1) + 8 * v21++) invalidate];
      }

      while (v19 != v21);
      v19 = [(NSMutableSet *)v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v19);
  }

  [(NSMutableSet *)self->_systemApertureContentSuppressionAssertionsForGesture removeAllObjects];
  gestureEvent2 = [gestureCopy gestureEvent];
  v23 = [(SBFluidSwitcherViewController *)self _adjustedGestureEventForGestureEvent:gestureEvent2 fromGestureManager:managerCopy];
  [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v23];
  delegate = [(SBFluidSwitcherViewController *)self delegate];
  selectedAppLayout = [gestureCopy selectedAppLayout];
  v26 = [(SBFluidSwitcherViewController *)self _spaceContainingAppLayout:selectedAppLayout];

  if (v26)
  {
    layoutContext3 = [(SBFluidSwitcherViewController *)self layoutContext];
    if ([layoutContext3 shouldAddAppLayoutToFront:v26 whenEndingGestureOfType:objc_msgSend(gestureCopy layoutContext:{"type"), layoutContext3}] && (*&self->_delegateRespondsTo & 1) != 0)
    {
      [delegate switcherContentController:self bringAppLayoutToFront:v26];
    }
  }
}

- (id)_spaceContainingAppLayout:(id)layout
{
  layoutCopy = layout;
  v5 = [(NSDictionary *)self->_leafAppLayoutsToRecencyAppLayouts objectForKey:layoutCopy];
  if (!v5)
  {
    _unadjustedAppLayouts = [(SBFluidSwitcherViewController *)self _unadjustedAppLayouts];
    v7 = [_unadjustedAppLayouts containsObject:layoutCopy];

    if (v7)
    {
      v5 = layoutCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)handleTapToBringItemContainerForward:(id)forward
{
  contentView = self->_contentView;
  forwardCopy = forward;
  [forwardCopy locationInView:contentView];
  v7 = [(SBFluidSwitcherViewController *)self _itemContainerAtLocation:0 environment:?];
  modifierFlags = [forwardCopy modifierFlags];

  [(SBFluidSwitcherViewController *)self didSelectContainer:v7 modifierFlags:modifierFlags];
}

- (void)handleClickDownToBringItemContainerForward:(id)forward
{
  forwardCopy = forward;
  [forwardCopy locationInView:self->_contentView];
  v4 = [(SBFluidSwitcherViewController *)self _itemContainerAtLocation:0 environment:?];
  layoutState = [(SBFluidSwitcherLayoutContext *)self->_layoutContext layoutState];
  appLayout = [layoutState appLayout];
  appLayout2 = [v4 appLayout];
  v8 = [appLayout containsAnyItemFromAppLayout:appLayout2];

  if (v8)
  {
    -[SBFluidSwitcherViewController didSelectContainer:modifierFlags:](self, "didSelectContainer:modifierFlags:", v4, [forwardCopy modifierFlags]);
  }
}

- (void)handleUserClickInAppInteractionGesture:(id)gesture
{
  if (self->_isPersonalityListeningForAppInteraction)
  {
    self->_isPersonalityListeningForAppInteraction = 0;
    v4 = objc_opt_new();
    [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v4];
  }

  layoutContext = self->_layoutContext;

  [(SBFluidSwitcherLayoutContext *)layoutContext userDidClickInApp];
}

- (void)handleContinuousExposeHoverGesture:(id)gesture
{
  gestureCopy = gesture;
  wantsContinuousExposeHoverGesture = [(SBSwitcherPersonality *)self->_personality wantsContinuousExposeHoverGesture];
  v5 = gestureCopy;
  if (wantsContinuousExposeHoverGesture)
  {
    contentView = self->_contentView;
    view = [gestureCopy view];
    [gestureCopy locationInView:view];
    [(SBFluidSwitcherContentView *)contentView convertPoint:0 fromView:?];
    v9 = v8;
    v11 = v10;

    state = [gestureCopy state];
    if ((state - 1) > 3)
    {
      v13 = 1;
    }

    else
    {
      v13 = qword_21F8A5F48[state - 1];
    }

    v14 = [[SBHoverSwitcherModifierEvent alloc] initWithPhase:v13 position:v9, v11];
    [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v14];

    v5 = gestureCopy;
  }
}

- (void)itemContainerDidUpdateWantsOverlayPortal:(id)portal
{
  portalCopy = portal;
  if ([portalCopy wantsOverlayPortal] && (objc_msgSend(portalCopy, "overlayPortalView"), v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    appLayout = [portalCopy appLayout];
    visibleOverlayAccessoryViews = self->_visibleOverlayAccessoryViews;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__SBFluidSwitcherViewController_itemContainerDidUpdateWantsOverlayPortal___block_invoke;
    v13[3] = &unk_2783AE1F0;
    v14 = appLayout;
    v9 = appLayout;
    v10 = [(NSMutableDictionary *)visibleOverlayAccessoryViews bs_filter:v13];
    allValues = [v10 allValues];
    firstObject = [allValues firstObject];

    if (firstObject)
    {
      [portalCopy setOverlayPortalView:firstObject];
      [(SBFluidSwitcherViewController *)self _ensureSubviewOrdering];
    }
  }

  else if (([portalCopy wantsOverlayPortal] & 1) == 0)
  {
    overlayPortalView = [portalCopy overlayPortalView];

    if (overlayPortalView)
    {
      [portalCopy setOverlayPortalView:0];
      [(SBFluidSwitcherViewController *)self _ensureSubviewOrdering];
    }
  }
}

- (void)historianModifier:(id)modifier didRecordEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [SBFluidSwitcherViewController historianModifier:didRecordEntry:];
  }

  [(SBFluidSwitcherModifierTimelineController *)self->_modifierTimelineController addEntry:entryCopy];
}

- (BOOL)historianModifier:(id)modifier shouldRecordEvent:(id)event
{
  eventCopy = event;
  v6 = [(SBFluidSwitcherViewController *)self isShowingModifierTimeline]&& [(SBFluidSwitcherViewController *)self _shouldLogSwitcherModifierEvent:eventCopy]&& [(SBFluidSwitcherModifierTimelineController *)self->_modifierTimelineController wantsEvent:eventCopy];

  return v6;
}

- (BOOL)_shouldLogSwitcherModifierEvent:(id)event
{
  eventCopy = event;
  if (![eventCopy isGestureEvent])
  {
    if ([eventCopy isTransitionEvent])
    {
      IsZero = [eventCopy isAnimated];
    }

    else
    {
      if ([eventCopy type] != 12)
      {
        if ([eventCopy type] == 19 || objc_msgSend(eventCopy, "type") == 32)
        {
          v5 = 0;
          goto LABEL_15;
        }

        v4 = [eventCopy type] == 28;
        goto LABEL_3;
      }

      [eventCopy progress];
      if (BSFloatGreaterThanOrEqualToFloat())
      {
        v5 = 1;
        goto LABEL_15;
      }

      IsZero = BSFloatIsZero();
    }

    v5 = IsZero;
    goto LABEL_15;
  }

  v4 = [eventCopy phase] == 2;
LABEL_3:
  v5 = !v4;
LABEL_15:

  return v5;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFFFFFFFFFELL | objc_opt_respondsToSelector() & 1);
    v5 = objc_opt_respondsToSelector();
    v6 = 2;
    if ((v5 & 1) == 0)
    {
      v6 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFFFFFFFFFDLL | v6);
    v7 = objc_opt_respondsToSelector();
    v8 = 4;
    if ((v7 & 1) == 0)
    {
      v8 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFFFFFFFFFBLL | v8);
    v9 = objc_opt_respondsToSelector();
    v10 = 8;
    if ((v9 & 1) == 0)
    {
      v10 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFFFFFFFFF7 | v10);
    v11 = objc_opt_respondsToSelector();
    v12 = 16;
    if ((v11 & 1) == 0)
    {
      v12 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFFFFFFFFEFLL | v12);
    v13 = objc_opt_respondsToSelector();
    v14 = 32;
    if ((v13 & 1) == 0)
    {
      v14 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFFFFFFFFDFLL | v14);
    v15 = objc_opt_respondsToSelector();
    v16 = 64;
    if ((v15 & 1) == 0)
    {
      v16 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFFFFFFFFBFLL | v16);
    v17 = objc_opt_respondsToSelector();
    v18 = 128;
    if ((v17 & 1) == 0)
    {
      v18 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFFFFFFFF7FLL | v18);
    v19 = objc_opt_respondsToSelector();
    v20 = 256;
    if ((v19 & 1) == 0)
    {
      v20 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFFFFFFFEFFLL | v20);
    v21 = objc_opt_respondsToSelector();
    v22 = 512;
    if ((v21 & 1) == 0)
    {
      v22 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFFFFFFFDFFLL | v22);
    v23 = objc_opt_respondsToSelector();
    v24 = 1024;
    if ((v23 & 1) == 0)
    {
      v24 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFFFFFFFBFFLL | v24);
    v25 = objc_opt_respondsToSelector();
    v26 = 2048;
    if ((v25 & 1) == 0)
    {
      v26 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFFFFFFF7FFLL | v26);
    v27 = objc_opt_respondsToSelector();
    v28 = 4096;
    if ((v27 & 1) == 0)
    {
      v28 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFFFFFFEFFFLL | v28);
    v29 = objc_opt_respondsToSelector();
    v30 = 0x2000;
    if ((v29 & 1) == 0)
    {
      v30 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFFFFFFDFFFLL | v30);
    v31 = objc_opt_respondsToSelector();
    v32 = 0x4000;
    if ((v31 & 1) == 0)
    {
      v32 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFFFFFFBFFFLL | v32);
    v33 = objc_opt_respondsToSelector();
    v34 = 0x8000;
    if ((v33 & 1) == 0)
    {
      v34 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFFFFFF7FFFLL | v34);
    v35 = objc_opt_respondsToSelector();
    v36 = 0x10000;
    if ((v35 & 1) == 0)
    {
      v36 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFFFFFEFFFFLL | v36);
    v37 = objc_opt_respondsToSelector();
    v38 = 0x20000;
    if ((v37 & 1) == 0)
    {
      v38 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFFFFFDFFFFLL | v38);
    v39 = objc_opt_respondsToSelector();
    v40 = 0x40000;
    if ((v39 & 1) == 0)
    {
      v40 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFFFFFBFFFFLL | v40);
    v41 = objc_opt_respondsToSelector();
    v42 = 0x80000;
    if ((v41 & 1) == 0)
    {
      v42 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFFFFF7FFFFLL | v42);
    v43 = objc_opt_respondsToSelector();
    v44 = 0x100000;
    if ((v43 & 1) == 0)
    {
      v44 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFFFFEFFFFFLL | v44);
    v45 = objc_opt_respondsToSelector();
    v46 = 0x200000;
    if ((v45 & 1) == 0)
    {
      v46 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFFFFDFFFFFLL | v46);
    v47 = objc_opt_respondsToSelector();
    v48 = 0x400000;
    if ((v47 & 1) == 0)
    {
      v48 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFFFFBFFFFFLL | v48);
    v49 = objc_opt_respondsToSelector();
    v50 = 0x800000;
    if ((v49 & 1) == 0)
    {
      v50 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFFFF7FFFFFLL | v50);
    v51 = objc_opt_respondsToSelector();
    v52 = 0x1000000;
    if ((v51 & 1) == 0)
    {
      v52 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFFFEFFFFFFLL | v52);
    v53 = objc_opt_respondsToSelector();
    v54 = 0x2000000;
    if ((v53 & 1) == 0)
    {
      v54 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFFFDFFFFFFLL | v54);
    v55 = objc_opt_respondsToSelector();
    v56 = 0x4000000;
    if ((v55 & 1) == 0)
    {
      v56 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFFFBFFFFFFLL | v56);
    v57 = objc_opt_respondsToSelector();
    v58 = 0x20000000;
    if ((v57 & 1) == 0)
    {
      v58 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFFDFFFFFFFLL | v58);
    v59 = objc_opt_respondsToSelector();
    v60 = 0x8000000;
    if ((v59 & 1) == 0)
    {
      v60 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFFF7FFFFFFLL | v60);
    v61 = objc_opt_respondsToSelector();
    v62 = 0x10000000;
    if ((v61 & 1) == 0)
    {
      v62 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFFEFFFFFFFLL | v62);
    v63 = objc_opt_respondsToSelector();
    v64 = 0x40000000;
    if ((v63 & 1) == 0)
    {
      v64 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFFBFFFFFFFLL | v64);
    v65 = objc_opt_respondsToSelector();
    v66 = 0x80000000;
    if ((v65 & 1) == 0)
    {
      v66 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFF7FFFFFFFLL | v66);
    v67 = objc_opt_respondsToSelector();
    v68 = 0x100000000;
    if ((v67 & 1) == 0)
    {
      v68 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFEFFFFFFFFLL | v68);
    v69 = objc_opt_respondsToSelector();
    v70 = 0x200000000;
    if ((v69 & 1) == 0)
    {
      v70 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFDFFFFFFFFLL | v70);
    v71 = objc_opt_respondsToSelector();
    v72 = 0x400000000;
    if ((v71 & 1) == 0)
    {
      v72 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFFBFFFFFFFFLL | v72);
    v73 = objc_opt_respondsToSelector();
    v74 = 0x800000000;
    if ((v73 & 1) == 0)
    {
      v74 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFF7FFFFFFFFLL | v74);
    v75 = objc_opt_respondsToSelector();
    v76 = 0x1000000000;
    if ((v75 & 1) == 0)
    {
      v76 = 0;
    }

    self->_delegateRespondsTo = (*&self->_delegateRespondsTo & 0xFFFFFFEFFFFFFFFFLL | v76);
  }
}

- (void)setDataSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFFFFFFFFFELL | objc_opt_respondsToSelector() & 1);
    v5 = objc_opt_respondsToSelector();
    v6 = 2;
    if ((v5 & 1) == 0)
    {
      v6 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFFFFFFFFFDLL | v6);
    v7 = objc_opt_respondsToSelector();
    v8 = 4;
    if ((v7 & 1) == 0)
    {
      v8 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFFFFFFFFFBLL | v8);
    v9 = objc_opt_respondsToSelector();
    v10 = 8;
    if ((v9 & 1) == 0)
    {
      v10 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFFFFFFFFF7 | v10);
    v11 = objc_opt_respondsToSelector();
    v12 = 16;
    if ((v11 & 1) == 0)
    {
      v12 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFFFFFFFFEFLL | v12);
    v13 = objc_opt_respondsToSelector();
    v14 = 32;
    if ((v13 & 1) == 0)
    {
      v14 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFFFFFFFFDFLL | v14);
    v15 = objc_opt_respondsToSelector();
    v16 = 64;
    if ((v15 & 1) == 0)
    {
      v16 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFFFFFFFFBFLL | v16);
    v17 = objc_opt_respondsToSelector();
    v18 = 128;
    if ((v17 & 1) == 0)
    {
      v18 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFFFFFFFF7FLL | v18);
    v19 = objc_opt_respondsToSelector();
    v20 = 256;
    if ((v19 & 1) == 0)
    {
      v20 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFFFFFFFEFFLL | v20);
    v21 = objc_opt_respondsToSelector();
    v22 = 512;
    if ((v21 & 1) == 0)
    {
      v22 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFFFFFFFDFFLL | v22);
    v23 = objc_opt_respondsToSelector();
    v24 = 1024;
    if ((v23 & 1) == 0)
    {
      v24 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFFFFFFFBFFLL | v24);
    v25 = objc_opt_respondsToSelector();
    v26 = 2048;
    if ((v25 & 1) == 0)
    {
      v26 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFFFFFFF7FFLL | v26);
    v27 = objc_opt_respondsToSelector();
    v28 = 4096;
    if ((v27 & 1) == 0)
    {
      v28 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFFFFFFEFFFLL | v28);
    v29 = objc_opt_respondsToSelector();
    v30 = 0x2000;
    if ((v29 & 1) == 0)
    {
      v30 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFFFFFFDFFFLL | v30);
    v31 = objc_opt_respondsToSelector();
    v32 = 0x4000;
    if ((v31 & 1) == 0)
    {
      v32 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFFFFFFBFFFLL | v32);
    v33 = objc_opt_respondsToSelector();
    v34 = 0x8000;
    if ((v33 & 1) == 0)
    {
      v34 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFFFFFF7FFFLL | v34);
    v35 = objc_opt_respondsToSelector();
    v36 = 0x10000;
    if ((v35 & 1) == 0)
    {
      v36 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFFFFFEFFFFLL | v36);
    v37 = objc_opt_respondsToSelector();
    v38 = 0x20000;
    if ((v37 & 1) == 0)
    {
      v38 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFFFFFDFFFFLL | v38);
    v39 = objc_opt_respondsToSelector();
    v40 = 0x40000;
    if ((v39 & 1) == 0)
    {
      v40 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFFFFFBFFFFLL | v40);
    v41 = objc_opt_respondsToSelector();
    v42 = 0x80000;
    if ((v41 & 1) == 0)
    {
      v42 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFFFFF7FFFFLL | v42);
    v43 = objc_opt_respondsToSelector();
    v44 = 0x100000;
    if ((v43 & 1) == 0)
    {
      v44 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFFFFEFFFFFLL | v44);
    v45 = objc_opt_respondsToSelector();
    v46 = 0x200000;
    if ((v45 & 1) == 0)
    {
      v46 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFFFFDFFFFFLL | v46);
    v47 = objc_opt_respondsToSelector();
    v48 = 0x400000;
    if ((v47 & 1) == 0)
    {
      v48 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFFFFBFFFFFLL | v48);
    v49 = objc_opt_respondsToSelector();
    v50 = 0x800000;
    if ((v49 & 1) == 0)
    {
      v50 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFFFF7FFFFFLL | v50);
    v51 = objc_opt_respondsToSelector();
    v52 = 0x1000000;
    if ((v51 & 1) == 0)
    {
      v52 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFFFEFFFFFFLL | v52);
    v53 = objc_opt_respondsToSelector();
    v54 = 0x2000000;
    if ((v53 & 1) == 0)
    {
      v54 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFFFDFFFFFFLL | v54);
    v55 = objc_opt_respondsToSelector();
    v56 = 0x4000000;
    if ((v55 & 1) == 0)
    {
      v56 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFFFBFFFFFFLL | v56);
    v57 = objc_opt_respondsToSelector();
    v58 = 0x8000000;
    if ((v57 & 1) == 0)
    {
      v58 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFFF7FFFFFFLL | v58);
    v59 = objc_opt_respondsToSelector();
    v60 = 0x10000000;
    if ((v59 & 1) == 0)
    {
      v60 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFFEFFFFFFFLL | v60);
    v61 = objc_opt_respondsToSelector();
    v62 = 0x20000000;
    if ((v61 & 1) == 0)
    {
      v62 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFFDFFFFFFFLL | v62);
    v63 = objc_opt_respondsToSelector();
    v64 = 0x40000000;
    if ((v63 & 1) == 0)
    {
      v64 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFFBFFFFFFFLL | v64);
    v65 = objc_opt_respondsToSelector();
    v66 = 0x80000000;
    if ((v65 & 1) == 0)
    {
      v66 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFF7FFFFFFFLL | v66);
    v67 = objc_opt_respondsToSelector();
    v68 = 0x100000000;
    if ((v67 & 1) == 0)
    {
      v68 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFEFFFFFFFFLL | v68);
    v69 = objc_opt_respondsToSelector();
    v70 = 0x200000000;
    if ((v69 & 1) == 0)
    {
      v70 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFDFFFFFFFFLL | v70);
    v71 = objc_opt_respondsToSelector();
    v72 = 0x400000000;
    if ((v71 & 1) == 0)
    {
      v72 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFFBFFFFFFFFLL | v72);
    v73 = objc_opt_respondsToSelector();
    v74 = 0x800000000;
    if ((v73 & 1) == 0)
    {
      v74 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFF7FFFFFFFFLL | v74);
    v75 = objc_opt_respondsToSelector();
    v76 = 0x1000000000;
    if ((v75 & 1) == 0)
    {
      v76 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFEFFFFFFFFFLL | v76);
    v77 = objc_opt_respondsToSelector();
    v78 = 0x2000000000;
    if ((v77 & 1) == 0)
    {
      v78 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFDFFFFFFFFFLL | v78);
    v79 = objc_opt_respondsToSelector();
    v80 = 0x4000000000;
    if ((v79 & 1) == 0)
    {
      v80 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFFBFFFFFFFFFLL | v80);
    v81 = objc_opt_respondsToSelector();
    v82 = 0x8000000000;
    if ((v81 & 1) == 0)
    {
      v82 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFF7FFFFFFFFFLL | v82);
    v83 = objc_opt_respondsToSelector();
    v84 = 0x10000000000;
    if ((v83 & 1) == 0)
    {
      v84 = 0;
    }

    self->_dataSourceRespondsTo = (*&self->_dataSourceRespondsTo & 0xFFFFFEFFFFFFFFFFLL | v84);
    [(SBFluidSwitcherViewController *)self _rebuildCachedAdjustedAppLayouts];
    [(SBFluidSwitcherViewController *)self _updateSnapshotCacheReloadingForActiveInterfaceOrientationChange];
  }
}

- (void)setContentOrientation:(int64_t)orientation
{
  if (self->_contentOrientation != orientation)
  {
    self->_contentOrientation = orientation;
    [SBFluidSwitcherViewController _updateLayoutFromInterfaceOrientation:"_updateLayoutFromInterfaceOrientation:toInterfaceOrientation:" toInterfaceOrientation:?];
  }
}

- (void)setAsyncRenderingDisabled:(BOOL)disabled
{
  if (self->_asyncRenderingDisabled != disabled)
  {
    self->_asyncRenderingDisabled = disabled;
    [(SBFluidSwitcherViewController *)self _updateAsyncRenderingAndResizesHostedContext];
  }
}

- (double)snapshotScaleForSceneHandle:(id)handle
{
  handleCopy = handle;
  v5 = handleCopy;
  if (handleCopy)
  {
    displayItemRepresentation = [handleCopy displayItemRepresentation];
    _unadjustedAppLayouts = [(SBFluidSwitcherViewController *)self _unadjustedAppLayouts];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __61__SBFluidSwitcherViewController_snapshotScaleForSceneHandle___block_invoke;
    v19[3] = &unk_2783A8CB8;
    v8 = displayItemRepresentation;
    v20 = v8;
    v9 = [_unadjustedAppLayouts bs_firstObjectPassingTest:v19];

    v10 = [v9 layoutRoleForItem:v8];
    if (v9)
    {
      v11 = v10;
    }

    else
    {
      if ([v5 layoutRole] == 3)
      {
        v13 = 2;
      }

      else
      {
        v13 = 1;
      }

      v14 = SBAppLayoutGenericAppLayoutWithConfiguration(1);
      v9 = [v14 appLayoutByModifyingEnvironment:v13];

      v11 = 1;
    }

    [(SBSwitcherPersonality *)self->_personality snapshotScaleForLayoutRole:v11 inAppLayout:v9];
    v12 = v15;
    application = [v5 application];
    classicAppPhoneAppRunningOnPad = [application classicAppPhoneAppRunningOnPad];

    if (classicAppPhoneAppRunningOnPad)
    {
      v12 = v12 + v12;
    }
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

- (BOOL)shouldAddAppLayoutToFront:(id)front forTransitionWithContext:(id)context transitionCompleted:(BOOL)completed
{
  completedCopy = completed;
  contextCopy = context;
  frontCopy = front;
  draggingAppLayoutsForWindowDrag = [(SBFluidSwitcherViewController *)self draggingAppLayoutsForWindowDrag];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __104__SBFluidSwitcherViewController_shouldAddAppLayoutToFront_forTransitionWithContext_transitionCompleted___block_invoke;
  v24[3] = &unk_2783AE218;
  v24[4] = self;
  v11 = [draggingAppLayoutsForWindowDrag bs_compactMap:v24];

  v12 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  recentAppLayouts = [v12 recentAppLayouts];

  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __104__SBFluidSwitcherViewController_shouldAddAppLayoutToFront_forTransitionWithContext_transitionCompleted___block_invoke_2;
  v22 = &unk_2783A8CB8;
  v23 = v11;
  v14 = v11;
  v15 = [recentAppLayouts bs_filter:&v19];
  v16 = [(SBFluidSwitcherViewController *)self layoutContext:v19];
  _windowManagementContext = [(SBFluidSwitcherViewController *)self _windowManagementContext];
  LOBYTE(completedCopy) = [v16 shouldAddAppLayoutToFront:frontCopy forTransitionWithContext:contextCopy recentAppLayouts:v15 transitionCompleted:completedCopy windowManagementContext:_windowManagementContext];

  return completedCopy;
}

id __104__SBFluidSwitcherViewController_shouldAddAppLayoutToFront_forTransitionWithContext_transitionCompleted___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 preferredDisplayOrdinal];
  if (v4 == [*(a1 + 32) displayOrdinal])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 appLayoutByModifyingPreferredDisplayOrdinal:{objc_msgSend(*(a1 + 32), "displayOrdinal")}];
  }

  return v5;
}

- (double)contentAspectRatio
{
  viewIfLoaded = [(SBFluidSwitcherViewController *)self viewIfLoaded];
  [viewIfLoaded bounds];
  if (viewIfLoaded)
  {
    v5 = v3 / v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (BOOL)isStatusBarHiddenForAppLayout:(id)layout
{
  layoutCopy = layout;
  appLayouts = [(SBFluidSwitcherViewController *)self appLayouts];
  v6 = [appLayouts indexOfObject:layoutCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return [(SBSwitcherPersonality *)self->_personality isContentStatusBarVisibleForIndex:v6]^ 1;
  }
}

- (id)leadingStatusBarStyleRequest
{
  if (![(NSMutableDictionary *)self->_liveContentOverlays count])
  {
    goto LABEL_5;
  }

  windowManagementContext = [(SBFluidSwitcherViewController *)self windowManagementContext];
  isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

  if (!isFlexibleWindowingEnabled)
  {
    v6 = [(SBFluidSwitcherViewController *)self _leafAppLayoutInLiveContentOverlaysWithLayoutRole:1];
    if (!v6)
    {
      [SBFluidSwitcherViewController leadingStatusBarStyleRequest];
    }

    goto LABEL_8;
  }

  v5 = [(SBFluidSwitcherViewController *)self _leafAppLayoutInLiveContentOverlaysOwningStatusBarPart:2];
  if (!v5)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_9;
  }

  v6 = v5;
LABEL_8:
  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  statusBarManager = [_sbWindowScene statusBarManager];
  assertionManager = [statusBarManager assertionManager];

  v11 = [(NSMutableDictionary *)self->_liveContentOverlays objectForKey:v6];
  leadingStatusBarStyle = [v11 leadingStatusBarStyle];
  backgroundActivitiesToSuppress = [v11 backgroundActivitiesToSuppress];
  [assertionManager effectiveStatusBarStyleForRequestedStyle:leadingStatusBarStyle styleOverridesToSuppress:STUIStyleOverridesForBackgroundActivityIdentifiers()];
  v7 = [objc_alloc(MEMORY[0x277D6BFE8]) initWithResolvedStyle:_UIStatusBarResolvedStyleFromStyle() foregroundColor:0];

LABEL_9:

  return v7;
}

- (id)trailingStatusBarStyleRequest
{
  if (![(NSMutableDictionary *)self->_liveContentOverlays count])
  {
    goto LABEL_4;
  }

  windowManagementContext = [(SBFluidSwitcherViewController *)self windowManagementContext];
  isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

  if (isFlexibleWindowingEnabled)
  {
    v5 = [(SBFluidSwitcherViewController *)self _leafAppLayoutInLiveContentOverlaysOwningStatusBarPart:8];
    if (!v5)
    {
LABEL_4:
      v6 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v5 = [(SBFluidSwitcherViewController *)self _leafAppLayoutInLiveContentOverlaysWithLayoutRole:2];
    if (!v5)
    {
      v7 = [(SBFluidSwitcherViewController *)self _leafAppLayoutInLiveContentOverlaysWithLayoutRole:1];
      if (!v7)
      {
        [SBFluidSwitcherViewController trailingStatusBarStyleRequest];
      }

      goto LABEL_9;
    }
  }

  v7 = v5;
LABEL_9:
  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  statusBarManager = [_sbWindowScene statusBarManager];
  assertionManager = [statusBarManager assertionManager];

  v11 = [(NSMutableDictionary *)self->_liveContentOverlays objectForKey:v7];
  trailingStatusBarStyle = [v11 trailingStatusBarStyle];
  backgroundActivitiesToSuppress = [v11 backgroundActivitiesToSuppress];
  v14 = [assertionManager effectiveStatusBarStyleForRequestedStyle:trailingStatusBarStyle styleOverridesToSuppress:STUIStyleOverridesForBackgroundActivityIdentifiers()];
  v6 = [objc_alloc(MEMORY[0x277D6BFE8]) initWithResolvedStyle:_SBStatusBarStyleFromLegacyStyle(v14) foregroundColor:0];

LABEL_10:

  return v6;
}

- (BOOL)isStatusBarPartPreferredHiddenByApp:(unint64_t)app
{
  v4 = [(SBFluidSwitcherViewController *)self _leafAppLayoutInLiveContentOverlaysOwningStatusBarPart:app];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 itemForLayoutRole:1];
    v7 = [(SBFluidSwitcherViewController *)self deviceApplicationSceneHandleForDisplayItem:v6];

    if (v7)
    {
      v8 = [v7 isStatusBarHiddenForActivationSettings:0 withOrientation:{-[SBFluidSwitcherViewController switcherInterfaceOrientation](self, "switcherInterfaceOrientation")}];
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

- (BOOL)isStatusBarStyleControlledBySystem
{
  isContainerStatusBarVisible = [(SBSwitcherPersonality *)self->_personality isContainerStatusBarVisible];
  if (isContainerStatusBarVisible)
  {
    if ([(SBSwitcherPersonality *)self->_personality hiddenContainerStatusBarParts])
    {
      LOBYTE(isContainerStatusBarVisible) = 0;
    }

    else
    {
      LOBYTE(isContainerStatusBarVisible) = [(SBSwitcherPersonality *)self->_personality hasContentIntersectingMenuBarRegion]^ 1;
    }
  }

  return isContainerStatusBarVisible;
}

- (id)statusBarStyleAttributesForScene:(id)scene
{
  identifier = [scene identifier];
  v5 = [(SBFluidSwitcherViewController *)self liveOverlayForSceneIdentifier:identifier];

  if (v5)
  {
    currentStatusBarStyleAttributes = [v5 currentStatusBarStyleAttributes];
  }

  else
  {
    currentStatusBarStyleAttributes = 0;
  }

  return currentStatusBarStyleAttributes;
}

- (double)currentStatusBarHeightOfContainer:(id)container
{
  appLayout = [container appLayout];
  if (appLayout)
  {
    v5 = [(NSMutableDictionary *)self->_liveContentOverlays objectForKey:appLayout];
    [v5 currentStatusBarHeight];
    v7 = v6;
  }

  else
  {
    v7 = *MEMORY[0x277D76F08];
  }

  return v7;
}

- (id)_leafAppLayoutInLiveContentOverlaysWithLayoutRole:(int64_t)role
{
  selfCopy = self;
  v31 = *MEMORY[0x277D85DE8];
  if ([(NSMutableDictionary *)self->_liveContentOverlays count]== 1)
  {
    allKeys = [(NSMutableDictionary *)selfCopy->_liveContentOverlays allKeys];
    firstObject = [allKeys firstObject];
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = [(NSMutableDictionary *)selfCopy->_liveContentOverlays allKeys];
    v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v27;
      roleCopy = role;
LABEL_5:
      v10 = 0;
      v24 = v8;
      while (1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        firstObject = *(*(&v26 + 1) + 8 * v10);
        v11 = [(NSDictionary *)selfCopy->_leafAppLayoutsToAdjustedAppLayouts objectForKey:firstObject];
        v12 = v11;
        if (v11)
        {
          v13 = [v11 leafAppLayoutForRole:role];

          if (v13 == firstObject)
          {
            v20 = firstObject;
LABEL_17:

            goto LABEL_18;
          }
        }

        else
        {
          v14 = selfCopy;
          _sbWindowScene = [(SBFluidSwitcherViewController *)selfCopy _sbWindowScene];
          layoutStateProvider = [_sbWindowScene layoutStateProvider];
          layoutState = [layoutStateProvider layoutState];
          appLayout = [layoutState appLayout];

          role = roleCopy;
          v19 = [appLayout leafAppLayoutForRole:roleCopy];

          if (v19 == firstObject)
          {
            v21 = firstObject;

            goto LABEL_17;
          }

          selfCopy = v14;
          v8 = v24;
        }

        if (v8 == ++v10)
        {
          v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v8)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    firstObject = 0;
LABEL_18:
  }

  return firstObject;
}

- (id)_leafAppLayoutInLiveContentOverlaysOwningStatusBarPart:(unint64_t)part
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [(NSMutableDictionary *)self->_liveContentOverlays allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([(SBSwitcherPersonality *)self->_personality isContainerStatusBarPart:part hiddenByLeafAppLayout:v10])
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)animationControllerForTransitionRequest:(id)request
{
  requestCopy = request;
  objc_initWeak(&location, self);
  v5 = [SBFluidSwitcherAnimationController alloc];
  defaultTransitionAnimationSettings = [(SBFluidSwitcherViewController *)self defaultTransitionAnimationSettings];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__SBFluidSwitcherViewController_animationControllerForTransitionRequest___block_invoke;
  v9[3] = &unk_2783AE240;
  objc_copyWeak(&v10, &location);
  v7 = [(SBFluidSwitcherAnimationController *)v5 initWithWorkspaceTransitionRequest:requestCopy animationSettings:defaultTransitionAnimationSettings animationBlock:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v7;
}

void __73__SBFluidSwitcherViewController_animationControllerForTransitionRequest___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v10 = [v7 applicationContext];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __73__SBFluidSwitcherViewController_animationControllerForTransitionRequest___block_invoke_2;
    v11[3] = &unk_2783A9C70;
    v12 = v8;
    [WeakRetained performTransitionWithContext:v10 animated:1 completion:v11];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, 1);
  }
}

- (void)handleEventResponse:(id)response
{
  if (response)
  {
    [(SBFluidSwitcherViewController *)self _handleEventResponse:?];
  }
}

- (id)iconForAppLayout:(id)layout
{
  v3 = [(SBFluidSwitcherViewController *)self iconViewForAppLayout:layout];
  icon = [v3 icon];

  return icon;
}

- (void)clickReceivedForHomeGrabberView:(id)view
{
  v26 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  _spacesWithVisibleHomeAffordances = [(SBFluidSwitcherViewController *)self _spacesWithVisibleHomeAffordances];
  v6 = [_spacesWithVisibleHomeAffordances countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(_spacesWithVisibleHomeAffordances);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        v11 = [(SBFluidSwitcherViewController *)self homeGrabberViewForAppLayout:v10];

        if (v11 == viewCopy)
        {
          environment = [v10 environment];
          if (environment == 2)
          {
            layoutContext = [(SBFluidSwitcherViewController *)self layoutContext];
            layoutState = [layoutContext layoutState];

            floatingConfiguration = [layoutState floatingConfiguration];
            v16 = 4;
            if (floatingConfiguration != 2)
            {
              v16 = floatingConfiguration;
            }

            if (floatingConfiguration == 1)
            {
              v17 = 3;
            }

            else
            {
              v17 = v16;
            }

            v18 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
            [(SBSwitcherTransitionRequest *)v18 setFloatingConfiguration:v17];
            delegate = [(SBFluidSwitcherViewController *)self delegate];
            [delegate switcherContentController:self performTransitionWithRequest:v18 gestureInitiated:0];
          }

          else if (environment == 1)
          {
            SBWorkspaceSuspendActiveDisplay();
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v20 = [_spacesWithVisibleHomeAffordances countByEnumeratingWithState:&v21 objects:v25 count:16];
      v7 = v20;
    }

    while (v20);
  }
}

- (void)tapReceivedForGrabberTongueAtEdge:(unint64_t)edge
{
  if (edge == 1)
  {
    v8 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
    appLayouts = [(SBFluidSwitcherViewController *)self appLayouts];
    firstObject = [appLayouts firstObject];
    [(SBSwitcherTransitionRequest *)v8 setAppLayout:firstObject];

    [(SBSwitcherTransitionRequest *)v8 setFloatingConfiguration:1];
    [(SBSwitcherTransitionRequest *)v8 setPreferredInterfaceOrientation:[(SBFluidSwitcherViewController *)self switcherInterfaceOrientation]];
    delegate = [(SBFluidSwitcherViewController *)self delegate];
    [delegate switcherContentController:self performTransitionWithRequest:v8 gestureInitiated:0];
  }
}

- (BOOL)canPerformKeyboardShortcutAction:(int64_t)action forBundleIdentifier:(id)identifier orSceneIdentifier:(id)sceneIdentifier
{
  identifierCopy = identifier;
  personality = self->_personality;
  sceneIdentifierCopy = sceneIdentifier;
  v11 = [(SBSwitcherPersonality *)personality canPerformKeyboardShortcutAction:action forBundleIdentifier:identifierCopy];
  v12 = identifierCopy;
  appLayoutForKeyboardFocusedScene = [(SBSwitcherLiveContentOverlayCoordinating *)self->_liveContentOverlayCoordinator appLayoutForSceneIdentifier:sceneIdentifierCopy];

  if (!appLayoutForKeyboardFocusedScene)
  {
    appLayoutForKeyboardFocusedScene = [(SBSwitcherLiveContentOverlayCoordinating *)self->_liveContentOverlayCoordinator appLayoutForKeyboardFocusedScene];
  }

  v14 = v12 != 0;
  v15 = v12;
  v62 = appLayoutForKeyboardFocusedScene;
  v60 = v11;
  if (v12 || ([appLayoutForKeyboardFocusedScene allItems], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "firstObject"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "bundleIdentifier"), v15 = objc_claimAutoreleasedReturnValue(), v17, v16, v15))
  {
    v18 = +[SBApplicationController sharedInstanceIfExists];
    v61 = v15;
    v19 = [v18 applicationWithBundleIdentifier:v15];
  }

  else
  {
    v19 = 0;
    v61 = 0;
  }

  _windowManagementContext = [(SBFluidSwitcherViewController *)self _windowManagementContext];
  displayIdentity = [(SBSceneManager *)self->_sceneManager displayIdentity];
  v22 = v19;
  v23 = [v19 supportsMultiWindowLayoutsForSwitcherWindowManagementContext:_windowManagementContext displayIdentity:displayIdentity];

  if (action <= 11)
  {
    if (action > 5)
    {
      if ((action - 7) < 2)
      {
        v25 = v61;
        v24 = v62;
        goto LABEL_36;
      }

      v25 = v61;
      v24 = v62;
      if (action != 6)
      {
        v28 = v60;
        if (action == 11)
        {
          if (!v12 && v62)
          {
            if (([v62 environment] & 0xFFFFFFFFFFFFFFFELL) == 2)
            {
              v14 = 1;
            }

            else
            {
              v51 = [(NSDictionary *)self->_leafAppLayoutsToRecencyAppLayouts objectForKey:v62];
              v14 = [v51 configuration] != 1;
            }
          }

          v30 = v60 && v14;
          goto LABEL_80;
        }

LABEL_74:
        if (action > 0x16)
        {
          v30 = v28;
          goto LABEL_80;
        }

        v52 = 1 << action;
        v30 = v28;
        if ((v52 & 0x4A1180) == 0)
        {
          goto LABEL_80;
        }

        goto LABEL_76;
      }

      if (!v60)
      {
LABEL_62:
        v30 = 0;
        goto LABEL_80;
      }

      appLayouts = [(SBFluidSwitcherViewController *)self appLayouts];
      v30 = [appLayouts bs_containsObjectPassingTest:&__block_literal_global_507];
LABEL_79:

      goto LABEL_80;
    }

    if ((action - 4) >= 2)
    {
      v24 = v62;
      if (action != 3)
      {
        v25 = v61;
        v28 = v60;
        goto LABEL_74;
      }

      v25 = v61;
      if (v19)
      {
        v38 = [(SBFluidSwitcherViewController *)self numberOfVisibleAppLayoutsForBundleIdentifier:v61]> 0;
      }

      else
      {
        v38 = 0;
      }

      if (!v60)
      {
        goto LABEL_62;
      }

      appLayouts = [v19 info];
      v30 = [appLayouts supportsMultiwindow] & v38;
      goto LABEL_79;
    }

    windowManagementContext = [(SBFluidSwitcherViewController *)self windowManagementContext];
    isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

    if ((isChamoisOrFlexibleWindowing & 1) != 0 || ([v19 info], _windowManagementContext = objc_claimAutoreleasedReturnValue(), objc_msgSend(_windowManagementContext, "supportsMultiwindow")))
    {
      v33 = [(SBFluidSwitcherViewController *)self _keyboardFocusableLiveAppLayoutsMatchingFocusedApp:1 foundAtIndex:0];
      v27 = v33;
      if (isChamoisOrFlexibleWindowing)
      {
        v59 = [v33 count];
        if (v62)
        {
          allItems = [v62 allItems];
          firstObject = [allItems firstObject];
          bundleIdentifier = [firstObject bundleIdentifier];

          v65[0] = MEMORY[0x277D85DD0];
          v65[1] = 3221225472;
          v65[2] = __104__SBFluidSwitcherViewController_canPerformKeyboardShortcutAction_forBundleIdentifier_orSceneIdentifier___block_invoke_2;
          v65[3] = &unk_2783A8CB8;
          bundleIdentifier2 = bundleIdentifier;
          v66 = bundleIdentifier2;
          LODWORD(allItems) = [v27 bs_containsObjectPassingTest:v65];

          if (!allItems)
          {
            v50 = 0;
            goto LABEL_69;
          }

          v58 = v27;
        }

        else
        {
          v58 = v27;
          firstObject2 = [v27 firstObject];
          allItems2 = [firstObject2 allItems];
          firstObject3 = [allItems2 firstObject];
          bundleIdentifier2 = [firstObject3 bundleIdentifier];
        }

        inactiveAppLayoutsReachableByKeyboardShortcut = [(SBSwitcherPersonality *)self->_personality inactiveAppLayoutsReachableByKeyboardShortcut];
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __104__SBFluidSwitcherViewController_canPerformKeyboardShortcutAction_forBundleIdentifier_orSceneIdentifier___block_invoke_3;
        v63[3] = &unk_2783A8CB8;
        bundleIdentifier2 = bundleIdentifier2;
        v64 = bundleIdentifier2;
        v50 = [inactiveAppLayoutsReachableByKeyboardShortcut bs_filter:v63];

        v27 = v58;
LABEL_69:
        v45 = [v50 count] != 0;

        v25 = v61;
        v44 = v59;
LABEL_70:
        v24 = v62;
        v19 = v22;
        v28 = v60 && (v44 > 1 || v45);
LABEL_73:

        goto LABEL_74;
      }
    }

    else
    {
      v27 = 0;
    }

    v44 = [v27 count];
    v45 = 0;
    v25 = v61;
    goto LABEL_70;
  }

  if (action <= 17)
  {
    v25 = v61;
    v24 = v62;
    if ((action - 13) >= 2)
    {
      if ((action - 15) < 2)
      {
        if (v19)
        {
          v26 = v60;
        }

        else
        {
          v26 = 0;
        }

        if (!v26)
        {
          v28 = 0;
          goto LABEL_74;
        }

        v27 = [(SBFluidSwitcherViewController *)self _keyboardFocusableLiveAppLayoutsMatchingFocusedApp:0 foundAtIndex:0];
        v28 = [v27 count] > 1;
        goto LABEL_73;
      }

      v28 = v60;
      if (action != 12)
      {
        goto LABEL_74;
      }

      v37 = v60 && [v62 environment] == 1;
      goto LABEL_37;
    }

LABEL_36:
    v37 = v60;
LABEL_37:
    if (!v19)
    {
      v37 = 0;
    }

    v28 = v37 & v23;
    goto LABEL_74;
  }

  v25 = v61;
  v24 = v62;
  if (action == 18)
  {
    v43 = v60;
    if (!v19)
    {
      v43 = 0;
    }

    v30 = v43 & v23;
    goto LABEL_80;
  }

  if (action != 22)
  {
    v28 = v60;
    if (action == 32)
    {
      destinationAppLayoutForDismissingCurrentMode = [(SBSwitcherPersonality *)self->_personality destinationAppLayoutForDismissingCurrentMode];
      v30 = destinationAppLayoutForDismissingCurrentMode != 0;

      goto LABEL_80;
    }

    goto LABEL_74;
  }

  v40 = v60;
  if (!v19)
  {
    v40 = 0;
  }

  if (!v40)
  {
    goto LABEL_62;
  }

  windowSceneManager = [SBApp windowSceneManager];
  connectedWindowScenes = [windowSceneManager connectedWindowScenes];
  v28 = [connectedWindowScenes count] > 1;

LABEL_76:
  v30 = 0;
  if (!v12 && v28)
  {
    v53 = MEMORY[0x277D75518];
    appLayouts = [(SBFluidSwitcherViewController *)self view];
    v54 = [v53 focusSystemForEnvironment:appLayouts];
    focusedItem = [v54 focusedItem];
    objc_opt_class();
    v30 = objc_opt_isKindOfClass() ^ 1;

    goto LABEL_79;
  }

LABEL_80:

  return v30 & 1;
}

- (void)performKeyboardShortcutAction:(int64_t)action withSceneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (action > 14)
  {
    if (action > 0x25)
    {
LABEL_21:
      if ((action - 15) >= 2)
      {
        goto LABEL_20;
      }

      v10 = action == 15;
      selfCopy4 = self;
      v12 = 0;
LABEL_23:
      [(SBFluidSwitcherViewController *)selfCopy4 _navigateFromFocusedAppWindowSceneToNextSceneInForwardDirection:v10 matchFocusedApp:v12];
      goto LABEL_20;
    }

    if (((1 << action) & 0x3EFFFA0000) != 0)
    {
      v7 = SBSwitcherShortcutActionTypeFromKeyboardShortcutType(action, [(SBFluidSwitcherViewController *)self isDisplayEmbedded]);
      selfCopy3 = self;
      v9 = identifierCopy;
LABEL_19:
      [(SBFluidSwitcherViewController *)selfCopy3 _performKeyboardShortcutAction:v7 targetSceneIdentifier:v9];
      goto LABEL_20;
    }

    if (action != 18)
    {
      if (action == 32)
      {
        destinationAppLayoutForDismissingCurrentMode = [(SBSwitcherPersonality *)self->_personality destinationAppLayoutForDismissingCurrentMode];
        if (destinationAppLayoutForDismissingCurrentMode)
        {
          v14 = [[SBTapAppLayoutSwitcherModifierEvent alloc] initWithAppLayout:destinationAppLayoutForDismissingCurrentMode layoutRole:1 modifierFlags:0 source:1];
          [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v14];
LABEL_31:

          goto LABEL_32;
        }

        goto LABEL_32;
      }

      goto LABEL_21;
    }

LABEL_18:
    v7 = SBSwitcherShortcutActionTypeFromKeyboardShortcutType(action, [(SBFluidSwitcherViewController *)self isDisplayEmbedded]);
    selfCopy3 = self;
    v9 = 0;
    goto LABEL_19;
  }

  if (action <= 6)
  {
    if ((action - 4) < 2)
    {
      v10 = action == 4;
      selfCopy4 = self;
      v12 = 1;
      goto LABEL_23;
    }

    if (action == 3)
    {
      appLayoutForKeyboardFocusedScene = [(SBSwitcherLiveContentOverlayCoordinating *)self->_liveContentOverlayCoordinator appLayoutForKeyboardFocusedScene];
      destinationAppLayoutForDismissingCurrentMode = appLayoutForKeyboardFocusedScene;
      if (appLayoutForKeyboardFocusedScene)
      {
        allItems = [appLayoutForKeyboardFocusedScene allItems];
        firstObject = [allItems firstObject];
        bundleIdentifier = [firstObject bundleIdentifier];

        v32 = 0;
        v33 = &v32;
        v34 = 0x2020000000;
        v35 = 0;
        allKeys = [(NSMutableDictionary *)self->_visibleShelves allKeys];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __83__SBFluidSwitcherViewController_performKeyboardShortcutAction_withSceneIdentifier___block_invoke;
        v27[3] = &unk_2783AE288;
        v14 = bundleIdentifier;
        v28 = v14;
        selfCopy5 = self;
        v30 = &v32;
        v31 = 3;
        [allKeys enumerateObjectsUsingBlock:v27];

        if ((v33[3] & 1) == 0)
        {
          layoutContext = [(SBFluidSwitcherViewController *)self layoutContext];
          layoutState = [layoutContext layoutState];

          bundleIDShowingAppExpose = [layoutState bundleIDShowingAppExpose];
          if (bundleIDShowingAppExpose && [(SBTapAppLayoutSwitcherModifierEvent *)v14 isEqualToString:bundleIDShowingAppExpose])
          {

            v14 = 0;
          }

          v23 = +[SBWorkspace mainWorkspace];
          _fbsDisplayConfiguration = [(UIViewController *)self _fbsDisplayConfiguration];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __83__SBFluidSwitcherViewController_performKeyboardShortcutAction_withSceneIdentifier___block_invoke_2;
          v25[3] = &unk_2783A98F0;
          v14 = v14;
          v26 = v14;
          [v23 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration builder:v25];
        }

        _Block_object_dispose(&v32, 8);
        goto LABEL_31;
      }

LABEL_32:

      goto LABEL_20;
    }

    if (action == 6)
    {
      [(SBFluidSwitcherViewController *)self _toggleFloatingAppVisibility];
    }
  }

  else if ((action - 11) < 4 || (action - 7) < 2)
  {
    goto LABEL_18;
  }

LABEL_20:
}

void __83__SBFluidSwitcherViewController_performKeyboardShortcutAction_withSceneIdentifier___block_invoke(void *a1, void *a2)
{
  v6 = a2;
  v3 = [v6 bundleIdentifier];
  v4 = [v3 isEqualToString:a1[4]];

  if (v4)
  {
    v5 = [*(a1[5] + 2032) objectForKey:v6];
    [v5 performKeyboardShortcutAction:a1[7]];

    *(*(a1[6] + 8) + 24) = 1;
  }
}

void __83__SBFluidSwitcherViewController_performKeyboardShortcutAction_withSceneIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:51];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __83__SBFluidSwitcherViewController_performKeyboardShortcutAction_withSceneIdentifier___block_invoke_3;
  v4[3] = &unk_2783A98C8;
  v5 = *(a1 + 32);
  [v3 modifyApplicationContext:v4];
}

void __83__SBFluidSwitcherViewController_performKeyboardShortcutAction_withSceneIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setRequestedAppExposeBundleID:v2];
  [v3 setRequestedUnlockedEnvironmentMode:3];
}

- (BOOL)canPerformSwitcherShortcutAction:(int64_t)action forSceneIdentifier:(id)identifier
{
  v6 = [(SBSwitcherLiveContentOverlayCoordinating *)self->_liveContentOverlayCoordinator appLayoutForSceneIdentifier:identifier];
  v7 = v6;
  if (v6)
  {
    switch(action)
    {
      case 30:
        allItems = [v6 allItems];
        firstObject = [allItems firstObject];

        v10 = [(SBFluidSwitcherViewController *)self layoutAttributesForDisplayItem:firstObject inAppLayout:v7];
        v24 = 0;
        v22 = 0u;
        v23 = 0u;
        [(SBDisplayItemLayoutAttributes *)v10 slideOverConfiguration];
        v19 = v22;
        v20 = v23;
        v21 = v24;
        if ((SBDisplayItemSlideOverConfigurationIsValid(&v19) & 1) == 0)
        {
          displayItemInSlideOver = [(SBFluidSwitcherViewController *)self displayItemInSlideOver];
          if (displayItemInSlideOver)
          {
            displayItemInSlideOver2 = [(SBFluidSwitcherViewController *)self displayItemInSlideOver];
            v16 = [(SBFluidSwitcherViewController *)self layoutAttributesForDisplayItem:displayItemInSlideOver2 inAppLayout:v7];
            [(SBDisplayItemLayoutAttributes *)v16 slideOverConfiguration];
            IsLeftSided = v18[33];
          }

          else
          {
            IsLeftSided = 0;
          }

          goto LABEL_17;
        }

        goto LABEL_11;
      case 29:
        allItems2 = [v6 allItems];
        firstObject = [allItems2 firstObject];

        v10 = [(SBFluidSwitcherViewController *)self layoutAttributesForDisplayItem:firstObject inAppLayout:v7];
        v24 = 0;
        v22 = 0u;
        v23 = 0u;
        [(SBDisplayItemLayoutAttributes *)v10 slideOverConfiguration];
        v19 = v22;
        v20 = v23;
        v21 = v24;
        if (SBDisplayItemSlideOverConfigurationIsValid(&v19))
        {
          v19 = v22;
          v20 = v23;
          v21 = v24;
          IsLeftSided = SBDisplayItemSlideOverIsLeftSided(&v19);
          goto LABEL_17;
        }

LABEL_11:
        IsLeftSided = 1;
        goto LABEL_17;
      case 28:
        allItems3 = [v6 allItems];
        firstObject = [allItems3 firstObject];

        v10 = [(SBFluidSwitcherViewController *)self layoutAttributesForDisplayItem:firstObject inAppLayout:v7];
        v24 = 0;
        v22 = 0u;
        v23 = 0u;
        [(SBDisplayItemLayoutAttributes *)v10 slideOverConfiguration];
        v19 = v22;
        v20 = v23;
        v21 = v24;
        if (SBDisplayItemSlideOverConfigurationIsValid(&v19))
        {
          v19 = v22;
          v20 = v23;
          v21 = v24;
          IsLeftSided = !SBDisplayItemSlideOverIsLeftSided(&v19);
LABEL_17:

          goto LABEL_18;
        }

        goto LABEL_11;
    }

    IsLeftSided = ((1 << action) & ~[(SBSwitcherPersonality *)self->_personality topAffordanceOptionsMaskForLeafAppLayout:v6]) == 0;
  }

  else
  {
    IsLeftSided = 0;
  }

LABEL_18:

  return IsLeftSided & 1;
}

- (void)performSwitcherShortcutAction:(int64_t)action forSceneIdentifier:(id)identifier
{
  v6 = [(SBSwitcherLiveContentOverlayCoordinating *)self->_liveContentOverlayCoordinator appLayoutForSceneIdentifier:identifier];
  if (v6)
  {
    v9 = v6;
    allItems = [v6 allItems];
    firstObject = [allItems firstObject];
    [(SBFluidSwitcherViewController *)self _performShortcutAction:action forDisplayItem:firstObject shortcutSource:3];

    v6 = v9;
  }
}

- (void)handleTapOutsideContentToDismissCurrentMode
{
  v3 = [[SBTapOutsideToDismissSwitcherModifierEvent alloc] initWithPointerTouch:0];
  [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v3];
}

- (void)_performKeyboardShortcutAction:(int64_t)action targetSceneIdentifier:(id)identifier
{
  leafAppLayoutForKeyboardFocusedScene = [(SBSwitcherLiveContentOverlayCoordinating *)self->_liveContentOverlayCoordinator appLayoutForSceneIdentifier:identifier];
  if (!(identifier | leafAppLayoutForKeyboardFocusedScene))
  {
    leafAppLayoutForKeyboardFocusedScene = [(SBFluidSwitcherViewController *)self leafAppLayoutForKeyboardFocusedScene];
  }

  if (action == 30 && !leafAppLayoutForKeyboardFocusedScene)
  {
    displayItemInSlideOver = [(SBFluidSwitcherViewController *)self displayItemInSlideOver];
    if (displayItemInSlideOver)
    {
      appLayouts = [(SBFluidSwitcherViewController *)self appLayouts];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __86__SBFluidSwitcherViewController__performKeyboardShortcutAction_targetSceneIdentifier___block_invoke;
      v14[3] = &unk_2783A8CB8;
      v10 = displayItemInSlideOver;
      v15 = v10;
      v11 = [appLayouts bs_firstObjectPassingTest:v14];
      leafAppLayoutForKeyboardFocusedScene = [v11 leafAppLayoutForItem:v10];
    }

    else
    {
      leafAppLayoutForKeyboardFocusedScene = 0;
    }
  }

  if (leafAppLayoutForKeyboardFocusedScene)
  {
    allItems = [leafAppLayoutForKeyboardFocusedScene allItems];
    firstObject = [allItems firstObject];
    [(SBFluidSwitcherViewController *)self _performShortcutAction:action forDisplayItem:firstObject shortcutSource:2];
  }
}

- (void)_performShortcutAction:(int64_t)action forDisplayItem:(id)item shortcutSource:(int64_t)source
{
  itemCopy = item;
  layoutContext = [(SBFluidSwitcherViewController *)self layoutContext];
  layoutState = [layoutContext layoutState];

  appLayout = [layoutState appLayout];
  floatingAppLayout = [layoutState floatingAppLayout];
  v12 = floatingAppLayout;
  if (appLayout)
  {
    v13 = [appLayout containsItem:itemCopy];
    if (v12)
    {
LABEL_3:
      allItems = [v12 allItems];
      firstObject = [allItems firstObject];
      v16 = [(SBDisplayItem *)firstObject isEqualToItem:itemCopy];

      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (floatingAppLayout)
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
LABEL_6:
  displayItemInSlideOver = [(SBFluidSwitcherViewController *)self displayItemInSlideOver];
  v18 = BSEqualObjects();
  if (action == 30)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (((v13 | v16) & 1) != 0 || v19)
  {
    if ((v13 | v19))
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    v21 = [[SBSwitcherShortcutActionSwitcherModifierEvent alloc] initWithShortcutActionType:action displayItem:itemCopy displayItemEnvironment:v20 shortcutSource:source];
    [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v21];
  }
}

- (id)_keyboardFocusableLiveAppLayoutsMatchingFocusedApp:(BOOL)app foundAtIndex:(int64_t *)index
{
  appCopy = app;
  windowManagementContext = [(SBFluidSwitcherViewController *)self windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  appLayoutForKeyboardFocusedScene = [(SBSwitcherLiveContentOverlayCoordinating *)self->_liveContentOverlayCoordinator appLayoutForKeyboardFocusedScene];
  activeLeafAppLayoutsReachableByKeyboardShortcut = [(SBSwitcherPersonality *)self->_personality activeLeafAppLayoutsReachableByKeyboardShortcut];
  windowManagementContext2 = [(SBFluidSwitcherViewController *)self windowManagementContext];
  if ([windowManagementContext2 isChamoisOrFlexibleWindowing])
  {
    allValues = 0;
  }

  else
  {
    appLayoutsToResignActive = [(SBSwitcherPersonality *)self->_personality appLayoutsToResignActive];
    allValues = [appLayoutsToResignActive allValues];
  }

  if ((isChamoisOrFlexibleWindowing & appCopy) == 1 && !appLayoutForKeyboardFocusedScene)
  {
    if ([activeLeafAppLayoutsReachableByKeyboardShortcut count])
    {
      layoutContext = [(SBFluidSwitcherViewController *)self layoutContext];
      layoutState = [layoutContext layoutState];
      appLayout = [layoutState appLayout];

      v17 = [(SBFluidSwitcherViewController *)self lastInteractedItemsInAppLayout:appLayout];
      v18 = [appLayout leafAppLayoutsFromDisplayItems:v17];

      appLayoutForKeyboardFocusedScene = [v18 firstObject];
    }

    else
    {
      appLayoutForKeyboardFocusedScene = 0;
    }
  }

  allItems = [appLayoutForKeyboardFocusedScene allItems];
  firstObject = [allItems firstObject];
  bundleIdentifier = [firstObject bundleIdentifier];

  v22 = [activeLeafAppLayoutsReachableByKeyboardShortcut bs_containsObjectPassingTest:&__block_literal_global_516];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __97__SBFluidSwitcherViewController__keyboardFocusableLiveAppLayoutsMatchingFocusedApp_foundAtIndex___block_invoke_2;
  v27[3] = &unk_2783AE2D8;
  v30 = appCopy;
  v28 = bundleIdentifier;
  v29 = allValues;
  v31 = v22;
  v23 = allValues;
  v24 = bundleIdentifier;
  v25 = [activeLeafAppLayoutsReachableByKeyboardShortcut bs_compactMap:v27];

  if (index && appLayoutForKeyboardFocusedScene)
  {
    *index = [v25 indexOfObject:appLayoutForKeyboardFocusedScene];
  }

  return v25;
}

id __97__SBFluidSwitcherViewController__keyboardFocusableLiveAppLayoutsMatchingFocusedApp_foundAtIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 48) == 1 && ([v3 allItems], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "firstObject"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "bundleIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", *(a1 + 32)), v7, v6, v5, !v8) || (v9 = *(a1 + 40), v13[0] = MEMORY[0x277D85DD0], v13[1] = 3221225472, v13[2] = __97__SBFluidSwitcherViewController__keyboardFocusableLiveAppLayoutsMatchingFocusedApp_foundAtIndex___block_invoke_3, v13[3] = &unk_2783AE2B0, v10 = v4, v14 = v10, LOBYTE(v9) = objc_msgSend(v9, "bs_containsObjectPassingTest:", v13), v14, (v9 & 1) != 0) || *(a1 + 49) == 1 && (objc_msgSend(v10, "environment") & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  return v11;
}

- (void)_navigateFromFocusedAppWindowSceneToNextSceneInForwardDirection:(BOOL)direction matchFocusedApp:(BOOL)app
{
  appCopy = app;
  directionCopy = direction;
  v32 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = [(SBFluidSwitcherViewController *)self _keyboardFocusableLiveAppLayoutsMatchingFocusedApp:app foundAtIndex:&v32];
  windowManagementContext = [(SBFluidSwitcherViewController *)self windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  v10 = 0;
  if (isChamoisOrFlexibleWindowing && appCopy)
  {
    v11 = v32;
    if (v32 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = 0;
      v32 = 0;
    }

    v12 = [v7 objectAtIndex:v11];
    allItems = [v12 allItems];
    firstObject = [allItems firstObject];
    bundleIdentifier = [firstObject bundleIdentifier];

    inactiveAppLayoutsReachableByKeyboardShortcut = [(SBSwitcherPersonality *)self->_personality inactiveAppLayoutsReachableByKeyboardShortcut];
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __113__SBFluidSwitcherViewController__navigateFromFocusedAppWindowSceneToNextSceneInForwardDirection_matchFocusedApp___block_invoke;
    v30 = &unk_2783A8CB8;
    v31 = bundleIdentifier;
    v17 = bundleIdentifier;
    v10 = [inactiveAppLayoutsReachableByKeyboardShortcut bs_filter:&v27];
  }

  v18 = v32;
  if (v32 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (directionCopy)
    {
      if (v18 == [v7 count] - 1)
      {
        v19 = 0;
        goto LABEL_14;
      }

      v18 = v32;
    }

    if (v18)
    {
      v19 = 1;
    }

    else
    {
      v19 = directionCopy;
    }

LABEL_14:
    if (![v10 count] || (v19 & 1) != 0)
    {
      if ([v7 count] >= 2)
      {
        if (directionCopy)
        {
          v20 = v32 + 1;
          v21 = v20 % [v7 count];
        }

        else if (v32 <= 0)
        {
          v21 = [v7 count] - 1;
        }

        else
        {
          v21 = v32 - 1;
        }

        v22 = [v7 objectAtIndex:v21];
        v23 = [(NSDictionary *)self->_leafAppLayoutsToAdjustedAppLayouts objectForKey:v22];
        v24 = [v22 itemForLayoutRole:1];
        v25 = [v23 layoutRoleForItem:v24];

        v26 = [[SBTapAppLayoutSwitcherModifierEvent alloc] initWithAppLayout:v23 layoutRole:v25 modifierFlags:0 source:1];
        [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v26];
      }
    }

    else
    {
      [(SBFluidSwitcherViewController *)self _navigateFromFocusedAppWindowSceneToNextSceneFromStripInForwardDirection:directionCopy withReachableAppLayouts:v10];
    }
  }
}

- (void)_navigateFromFocusedAppWindowSceneToNextSceneFromStripInForwardDirection:(BOOL)direction withReachableAppLayouts:(id)layouts
{
  v5 = [layouts mutableCopy];
  layoutState = [(SBFluidSwitcherLayoutContext *)self->_layoutContext layoutState];
  appLayout = [layoutState appLayout];

  continuousExposeIdentifier = [appLayout continuousExposeIdentifier];
  v9 = self->_continuousExposeIdentifiersInSwitcher;
  v10 = [(SBFluidSwitcherViewController *)self appLayoutsForContinuousExposeIdentifier:continuousExposeIdentifier];
  v11 = [v10 indexOfObject:appLayout];
  v28 = continuousExposeIdentifier;
  v12 = [(NSArray *)v9 indexOfObject:continuousExposeIdentifier];
  v27 = v9;
  if (v12)
  {
    v13 = [(NSArray *)v9 objectAtIndex:v12 - 1];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __130__SBFluidSwitcherViewController__navigateFromFocusedAppWindowSceneToNextSceneFromStripInForwardDirection_withReachableAppLayouts___block_invoke;
    v29[3] = &unk_2783AE1A0;
    v30 = v13;
    v14 = v13;
    v15 = [v5 indexOfObjectWithOptions:2 passingTest:v29];
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15 + 1;
    }

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v16 = 0;
    if (!v11)
    {
      goto LABEL_12;
    }
  }

  for (i = 0; i != v11; ++i)
  {
    if (v16 < [v5 count])
    {
      v18 = [v5 objectAtIndex:v16];
      v19 = [v10 objectAtIndex:i];
      v20 = [v18 isEqual:v19];

      v16 += v20 & 1;
    }
  }

LABEL_12:
  [v5 insertObject:appLayout atIndex:v16];
  if (direction)
  {
    v21 = (v16 + 1) % [v5 count];
    v23 = v27;
    v22 = v28;
  }

  else
  {
    v23 = v27;
    v22 = v28;
    if (v16 <= 0)
    {
      v21 = [v5 count] - 1;
    }

    else
    {
      v21 = v16 - 1;
    }
  }

  v24 = [v5 objectAtIndex:v21];
  v25 = [[SBTapAppLayoutSwitcherModifierEvent alloc] initWithAppLayout:v24 layoutRole:1 modifierFlags:0 source:1];
  [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v25];
}

uint64_t __130__SBFluidSwitcherViewController__navigateFromFocusedAppWindowSceneToNextSceneFromStripInForwardDirection_withReachableAppLayouts___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 continuousExposeIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_toggleFloatingAppVisibility
{
  layoutContext = [(SBFluidSwitcherViewController *)self layoutContext];
  layoutState = [layoutContext layoutState];

  floatingConfiguration = [layoutState floatingConfiguration];
  v5 = [layoutState elementWithRole:3];

  if (!v5)
  {
    appLayouts = [(SBFluidSwitcherViewController *)self appLayouts];
    v11 = [appLayouts bs_firstObjectPassingTest:&__block_literal_global_519];

    if (v11)
    {
      v8 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
      [(SBSwitcherTransitionRequest *)v8 setAppLayout:v11];
      [(SBSwitcherTransitionRequest *)v8 setAppLayoutEnvironment:2];
    }

    else
    {
      v8 = 0;
    }

    if (!v8)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v6 = 4;
  if (floatingConfiguration != 2)
  {
    v6 = floatingConfiguration;
  }

  if (floatingConfiguration == 1)
  {
    v7 = 3;
  }

  else
  {
    v7 = v6;
  }

  v8 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
  [(SBSwitcherTransitionRequest *)v8 setFloatingConfiguration:v7];
  if (v8)
  {
LABEL_8:
    delegate = [(SBFluidSwitcherViewController *)self delegate];
    [delegate switcherContentController:self performTransitionWithRequest:v8 gestureInitiated:0];
  }

LABEL_9:
}

- (BOOL)canShowMenuBar
{
  if ((*(&self->_delegateRespondsTo + 2) & 2) != 0)
  {
    return [(SBSwitcherPersonality *)self->_personality wantsMenuBar];
  }

  else
  {
    return 0;
  }
}

- (void)invalidate
{
  v50 = *MEMORY[0x277D85DE8];
  [(SBFluidSwitcherViewController *)self _cancelInProcessAnimationsWithOptions:3];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  allValues = [(NSMutableDictionary *)self->_externalDropletZoomUpTokens allValues];
  v4 = [allValues countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v44;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v44 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v43 + 1) + 8 * i) invalidate];
      }

      v5 = [allValues countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_externalDropletZoomUpTokens removeAllObjects];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  allValues2 = [(NSMutableDictionary *)self->_hiddenIconViews allValues];
  v9 = [allValues2 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v40;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(allValues2);
        }

        v13 = *(*(&v39 + 1) + 8 * j);
        [v13 setIconContentHidden:0];
        _iconZoomContextProvider = [(SBFluidSwitcherViewController *)self _iconZoomContextProvider];
        [_iconZoomContextProvider stopTrackingHiddenIconZoomViewIfNeeded:v13];
      }

      v10 = [allValues2 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v10);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  allValues3 = [(NSMutableDictionary *)self->_hiddenIconViewContainers allValues];
  v16 = [allValues3 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v36;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v36 != v18)
        {
          objc_enumerationMutation(allValues3);
        }

        v20 = *(*(&v35 + 1) + 8 * k);
        _iconZoomContextProvider2 = [(SBFluidSwitcherViewController *)self _iconZoomContextProvider];
        [_iconZoomContextProvider2 stopTrackingHiddenIconZoomViewIfNeeded:v20];
      }

      v17 = [allValues3 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v17);
  }

  [(NSMutableDictionary *)self->_hiddenIconViews removeAllObjects];
  [(NSMutableDictionary *)self->_hiddenIconViewContainers removeAllObjects];
  [(SBFluidSwitcherViewController *)self _removeSearchPresenterObservation];
  v22 = +[SBAppInteractionEventSourceManager sharedInstance];
  [v22 removeObserver:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(SBFluidSwitcherPageContentViewProvider *)self->_pageContentViewProvider setDelegate:0];
  [(BSUIScrollView *)self->_scrollView setDelegate:0];
  _iconManager = [(SBFluidSwitcherViewController *)self _iconManager];
  searchGesture = [_iconManager searchGesture];
  [searchGesture removeObserver:self];

  [(SBAppSwitcherSnapshotImageCache *)self->_snapshotCache setDelegate:0];
  snapshotCache = self->_snapshotCache;
  self->_snapshotCache = 0;

  [(SBSwitcherLiveContentOverlayCoordinating *)self->_liveContentOverlayCoordinator invalidate];
  liveContentOverlayCoordinator = self->_liveContentOverlayCoordinator;
  self->_liveContentOverlayCoordinator = 0;

  [(BSInvalidatable *)self->_stateCaptureInvalidatable invalidate];
  stateCaptureInvalidatable = self->_stateCaptureInvalidatable;
  self->_stateCaptureInvalidatable = 0;

  [(BSDefaultObserver *)self->_chamoisDefaultsObserver invalidate];
  chamoisDefaultsObserver = self->_chamoisDefaultsObserver;
  self->_chamoisDefaultsObserver = 0;

  [(BSInvalidatable *)self->_wallpaperRequireAssertion invalidate];
  wallpaperRequireAssertion = self->_wallpaperRequireAssertion;
  self->_wallpaperRequireAssertion = 0;

  [(BSInvalidatable *)self->_bezelEffectsPortalObserverToken invalidate];
  bezelEffectsPortalObserverToken = self->_bezelEffectsPortalObserverToken;
  self->_bezelEffectsPortalObserverToken = 0;

  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  systemPointerInteractionManager = [_sbWindowScene systemPointerInteractionManager];
  [systemPointerInteractionManager removeObserver:self];

  assistantController = [_sbWindowScene assistantController];
  [assistantController removeObserver:self];

  self->_isInvalidated = 1;
}

- (void)addLiveContentOverlay:(id)overlay forAppLayout:(id)layout animated:(BOOL)animated
{
  animatedCopy = animated;
  overlayCopy = overlay;
  layoutCopy = layout;
  v9 = [(NSMutableDictionary *)self->_liveContentOverlays objectForKey:layoutCopy];

  if (v9 != overlayCopy)
  {
    shouldRedactWindowContents = [(SBAppSwitcherSettings *)self->_settings shouldRedactWindowContents];
    v11 = [(NSMutableDictionary *)self->_liveContentOverlays objectForKey:layoutCopy];
    if (v11)
    {
      [SBFluidSwitcherViewController addLiveContentOverlay:forAppLayout:animated:];
    }

    v12 = animatedCopy & ~shouldRedactWindowContents;
    allValues = [(NSMutableDictionary *)self->_liveContentOverlays allValues];
    v14 = [allValues containsObject:overlayCopy];

    if (v14)
    {
      [SBFluidSwitcherViewController addLiveContentOverlay:forAppLayout:animated:];
    }

    visibleItemContainers = [(SBFluidSwitcherViewController *)self visibleItemContainers];
    v16 = [visibleItemContainers objectForKey:layoutCopy];

    v17 = [v16 contentViewHasSceneOverlay] ^ 1;
    contentOverlayView = [overlayCopy contentOverlayView];
    [v16 setContentOverlay:contentOverlayView animated:v17 & v12];

    [(NSMutableDictionary *)self->_liveContentOverlays setObject:overlayCopy forKey:layoutCopy];
    [(SBFluidSwitcherViewController *)self _setupLiveContentOverlayForAppLayout:layoutCopy itemContainer:v16 overlay:overlayCopy];
  }
}

- (void)removeLiveContentOverlayForAppLayout:(id)layout animated:(BOOL)animated
{
  animatedCopy = animated;
  settings = self->_settings;
  layoutCopy = layout;
  LODWORD(settings) = [(SBAppSwitcherSettings *)settings shouldRedactWindowContents];
  visibleItemContainers = [(SBFluidSwitcherViewController *)self visibleItemContainers];
  v11 = [visibleItemContainers objectForKey:layoutCopy];

  [v11 setContentOverlay:0 animated:animatedCopy & ~settings];
  v9 = [layoutCopy itemForLayoutRole:1];
  uniqueIdentifier = [v9 uniqueIdentifier];

  [(SBFluidSwitcherViewController *)self _removeCenterWindowAnimationContextWithKey:uniqueIdentifier];
  [(NSMutableDictionary *)self->_liveContentOverlays removeObjectForKey:layoutCopy];
}

- (void)moveExistingLiveContentOverlay:(id)overlay forAppLayout:(id)layout toAppLayout:(id)appLayout
{
  overlayCopy = overlay;
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  v10 = [(NSMutableDictionary *)self->_liveContentOverlays objectForKey:appLayoutCopy];
  if (v10)
  {
    [SBFluidSwitcherViewController moveExistingLiveContentOverlay:forAppLayout:toAppLayout:];
  }

  v11 = [(NSMutableDictionary *)self->_liveContentOverlays objectForKey:layoutCopy];

  if (v11 != overlayCopy)
  {
    [SBFluidSwitcherViewController moveExistingLiveContentOverlay:forAppLayout:toAppLayout:];
  }

  [(NSMutableDictionary *)self->_liveContentOverlays removeObjectForKey:layoutCopy];
  [(NSMutableDictionary *)self->_liveContentOverlays setObject:overlayCopy forKey:appLayoutCopy];
  visibleItemContainers = [(SBFluidSwitcherViewController *)self visibleItemContainers];
  v13 = [visibleItemContainers objectForKey:appLayoutCopy];

  if (v13)
  {
    contentOverlayView = [overlayCopy contentOverlayView];
    [v13 setContentOverlay:contentOverlayView animated:0];

    [(SBFluidSwitcherViewController *)self _setupLiveContentOverlayForAppLayout:appLayoutCopy itemContainer:v13 overlay:overlayCopy];
  }
}

- (void)liveContentOverlayDidUpdateHomeAffordanceEdgeProtectOrAutoHide:(id)hide
{
  v24 = *MEMORY[0x277D85DE8];
  hideCopy = hide;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_liveContentOverlays;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v20 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v19 + 1) + 8 * v9);
      v11 = [(NSMutableDictionary *)self->_liveContentOverlays objectForKey:v10, v19];
      v12 = [v11 isEqual:hideCopy];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = v10;

    if (!v13)
    {
      goto LABEL_12;
    }

    v14 = [(NSDictionary *)self->_leafAppLayoutsToAdjustedAppLayouts objectForKey:v13];
    [(SBFHomeGrabberSettings *)self->_homeGrabberSettings autoHideTimeOnAppRequest];
    v16 = v15;
    [(SBFHomeGrabberSettings *)self->_homeGrabberSettings delayForUnhideOnAppRequest];
    v18 = v17;
    [(SBFluidSwitcherViewController *)self _updateEdgeProtectAndAutoHideForHomeAffordancesInAppLayout:v14 withResetDelay:v16 unhideDelay:v17];
    [(SBFluidSwitcherViewController *)self _updateAutoHideForGrabberAffordancesInAppLayout:v14 withResetDelay:v16 unhideDelay:v18];
  }

  else
  {
LABEL_9:

LABEL_12:
    v13 = SBLogAppSwitcher();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SBFluidSwitcherViewController liveContentOverlayDidUpdateHomeAffordanceEdgeProtectOrAutoHide:?];
    }
  }
}

- (void)liveContentOverlay:(id)overlay didUpdateStatusBarHiddenSceneSettings:(BOOL)settings withAnimation:(int64_t)animation
{
  overlayCopy = overlay;
  [(SBFluidSwitcherViewController *)self _updateVisibleItemsAccessoryViewsLayoutAndStyleWithCompletion:0];
  overlaySceneHandle = [overlayCopy overlaySceneHandle];
  v9 = objc_opt_class();
  v10 = overlaySceneHandle;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    if ((animation - 1) > 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = [MEMORY[0x277CF0B70] settingsWithDuration:0.3];
    }

    [v12 reevaluateSafeAreaSettingsUsingAnimationSettings:v13];
  }

  v15 = 0u;
  v16 = 0u;
  [(SBFluidSwitcherViewController *)self windowControlsLayoutForLiveContentOverlay:overlayCopy];
  v14[0] = v15;
  v14[1] = v16;
  [overlayCopy updateWindowControlsLayout:v14];
}

- (void)_updateAutoHideForGrabberAffordancesInAppLayout:(id)layout withResetDelay:(double)delay unhideDelay:(double)unhideDelay
{
  layoutCopy = layout;
  v7 = [(SBFluidSwitcherViewController *)self _itemContainerForAppLayoutIfExists:layoutCopy];
  [(SBFluidSwitcherViewController *)self _updateAutoHideForItemContainer:v7 appLayout:layoutCopy];
}

- (void)_updateAutoHideForItemContainer:(id)container appLayout:(id)layout
{
  liveContentOverlayCoordinator = self->_liveContentOverlayCoordinator;
  containerCopy = container;
  v7 = [(SBSwitcherLiveContentOverlayCoordinating *)liveContentOverlayCoordinator wantsHomeAffordanceAutoHideForAppLayout:layout];
  affordancePresenceController = [containerCopy affordancePresenceController];

  [affordancePresenceController setAutoHideAffordance:v7];
}

- (void)_updateEdgeProtectAndAutoHideForHomeAffordancesInAppLayout:(id)layout withResetDelay:(double)delay unhideDelay:(double)unhideDelay
{
  v27 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  v9 = [(NSMutableDictionary *)self->_visibleOverlayAccessoryViews objectForKey:layoutCopy];
  homeGrabberView = [v9 homeGrabberView];
  grabberView = [homeGrabberView grabberView];

  if (grabberView)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = [(SBFluidSwitcherViewController *)self _leafAppLayoutsInAppLayout:layoutCopy intersectingHomeGrabber:grabberView];
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v21 = grabberView;
      v15 = 0;
      v16 = 0;
      v17 = *v23;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v22 + 1) + 8 * i);
          v16 |= [(SBSwitcherLiveContentOverlayCoordinating *)self->_liveContentOverlayCoordinator wantsEdgeProtectForHomeGestureForAppLayout:v19, v21];
          v15 |= [(SBSwitcherLiveContentOverlayCoordinating *)self->_liveContentOverlayCoordinator wantsHomeAffordanceAutoHideForAppLayout:v19];
        }

        v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);

      grabberView = v21;
      [v21 setEdgeProtectEnabled:v16 & 1];
      if (!(v16 & 1 | ((v15 & 1) == 0)))
      {
        [v21 turnOnAutoHideWithInitialDelay:delay];
        goto LABEL_16;
      }
    }

    else
    {

      [grabberView setEdgeProtectEnabled:0];
    }

    [grabberView turnOffAutoHideWithDelay:unhideDelay];
    goto LABEL_16;
  }

  v20 = SBLogAppSwitcher();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [SBFluidSwitcherViewController _updateEdgeProtectAndAutoHideForHomeAffordancesInAppLayout:withResetDelay:unhideDelay:];
  }

LABEL_16:
}

- (void)liveContentOverlayDidUpdateHomeAffordanceSupportedOrientations:(id)orientations
{
  v30 = *MEMORY[0x277D85DE8];
  orientationsCopy = orientations;
  view = [(SBFluidSwitcherViewController *)self view];
  [view setNeedsLayout];

  v22 = orientationsCopy;
  [(NSMutableDictionary *)self->_liveContentOverlays allKeysForObject:orientationsCopy];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v28 = 0u;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    v9 = &OBJC_IVAR___SBHomeGestureDismissableCoverSheetViewController__wantsHomeGestureOwnership;
    v10 = &OBJC_IVAR___SBHomeGestureDismissableCoverSheetViewController__wantsHomeGestureOwnership;
    selfCopy = self;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [*(&self->super.super.super.isa + v9[813]) objectForKey:*(*(&v25 + 1) + 8 * v11)];
        v13 = [*(&self->super.super.super.isa + v10[732]) objectForKey:v12];
        homeGrabberView = [v13 homeGrabberView];
        if (homeGrabberView)
        {
          v15 = [(SBFluidSwitcherViewController *)self _bestSupportedHomeAffordanceOrientationForOrientation:self->_contentOrientation inAppLayout:v12];
          orientation = [homeGrabberView orientation];
          if (orientation != v15)
          {
            [SBAnimationUtilities animationSettingsForRotationFromInterfaceOrientation:orientation toInterfaceOrientation:v15];
            v17 = v7;
            v18 = v8;
            v19 = v10;
            v21 = v20 = v9;
            [homeGrabberView setOrientation:v15 animated:1 rotationSettings:v21];

            v9 = v20;
            v10 = v19;
            v8 = v18;
            v7 = v17;
            self = selfCopy;
            [v13 setNeedsLayout];
          }
        }

        ++v11;
      }

      while (v7 != v11);
      v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }
}

- (SBWindowControlsLayout)windowControlsLayoutForLiveContentOverlay:(SEL)overlay
{
  v6 = [(NSMutableDictionary *)self->_liveContentOverlays allKeysForObject:a4];
  firstObject = [v6 firstObject];

  v7 = firstObject;
  if (!firstObject)
  {
    SBWindowControlsLayoutMake(3, 0, retstr, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
    goto LABEL_5;
  }

  personality = self->_personality;
  if (personality)
  {
    [(SBSwitcherPersonality *)personality windowControlsLayoutForLeafAppLayout:firstObject];
LABEL_5:
    v7 = firstObject;
    goto LABEL_7;
  }

  *&retstr->style = 0u;
  retstr->margin = 0u;
LABEL_7:

  return result;
}

- (id)_leafAppLayoutsInAppLayout:(id)layout intersectingHomeGrabber:(id)grabber
{
  v47 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  grabberCopy = grabber;
  v36 = [MEMORY[0x277CBEB58] set];
  v33 = [(NSMutableDictionary *)self->_visibleOverlayAccessoryViews objectForKey:layoutCopy];
  [v33 bounds];
  [grabberCopy grabberFrameForBounds:?];
  v34 = grabberCopy;
  [(SBFluidSwitcherContentView *)self->_contentView convertRect:grabberCopy fromView:?];
  v39 = v9;
  v40 = v8;
  v37 = v11;
  v38 = v10;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v35 = layoutCopy;
  leafAppLayouts = [layoutCopy leafAppLayouts];
  v13 = [leafAppLayouts countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v43;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v43 != v15)
        {
          objc_enumerationMutation(leafAppLayouts);
        }

        v17 = *(*(&v42 + 1) + 8 * i);
        v18 = [(NSMutableDictionary *)self->_visibleItemContainers objectForKey:v17];
        contentView = self->_contentView;
        [v18 bounds];
        [(SBFluidSwitcherContentView *)contentView convertRect:v18 fromView:?];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v49.origin.x = v40;
        v49.origin.y = v39;
        v49.size.width = v38;
        v49.size.height = v37;
        MinX = CGRectGetMinX(v49);
        v50.origin.x = v40;
        v50.origin.y = v39;
        v50.size.width = v38;
        v50.size.height = v37;
        MaxX = CGRectGetMaxX(v50);
        v51.origin.x = v21;
        v51.origin.y = v23;
        v51.size.width = v25;
        v51.size.height = v27;
        v29 = CGRectGetMinX(v51);
        v52.origin.x = v21;
        v52.origin.y = v23;
        v52.size.width = v25;
        v52.size.height = v27;
        v30 = CGRectGetMaxX(v52);
        if (MinX >= v29)
        {
          v31 = v30 > MinX;
        }

        else
        {
          v31 = MaxX > v29;
        }

        if (v31)
        {
          [v36 addObject:v17];
        }
      }

      v14 = [leafAppLayouts countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v14);
  }

  return v36;
}

- (id)liveOverlayForSceneHandle:(id)handle
{
  handleCopy = handle;
  allValues = [(NSMutableDictionary *)self->_liveContentOverlays allValues];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__SBFluidSwitcherViewController_liveOverlayForSceneHandle___block_invoke;
  v9[3] = &unk_2783AE300;
  v10 = handleCopy;
  v6 = handleCopy;
  v7 = [allValues bs_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __59__SBFluidSwitcherViewController_liveOverlayForSceneHandle___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 overlaySceneHandle];
  v3 = BSEqualObjects();

  return v3;
}

- (id)liveOverlayForSceneIdentityToken:(id)token
{
  tokenCopy = token;
  allValues = [(NSMutableDictionary *)self->_liveContentOverlays allValues];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__SBFluidSwitcherViewController_liveOverlayForSceneIdentityToken___block_invoke;
  v9[3] = &unk_2783AE300;
  v10 = tokenCopy;
  v6 = tokenCopy;
  v7 = [allValues bs_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __66__SBFluidSwitcherViewController_liveOverlayForSceneIdentityToken___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 overlaySceneHandle];
  v3 = [v2 sceneIfExists];
  v4 = [v3 identityToken];
  v5 = BSEqualObjects();

  return v5;
}

- (id)liveOverlayForSceneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  allValues = [(NSMutableDictionary *)self->_liveContentOverlays allValues];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__SBFluidSwitcherViewController_liveOverlayForSceneIdentifier___block_invoke;
  v9[3] = &unk_2783AE300;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [allValues bs_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __63__SBFluidSwitcherViewController_liveOverlayForSceneIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 overlaySceneHandle];
  v3 = [v2 sceneIdentifier];
  v4 = BSEqualObjects();

  return v4;
}

- (id)defaultFocusItem
{
  layoutContext = [(SBFluidSwitcherViewController *)self layoutContext];
  activeTransitionContext = [layoutContext activeTransitionContext];
  layoutContext2 = [(SBFluidSwitcherViewController *)self layoutContext];
  v6 = layoutContext2;
  if (activeTransitionContext)
  {
    [layoutContext2 transitioningToLayoutState];
  }

  else
  {
    [layoutContext2 layoutState];
  }
  v7 = ;

  if ([v7 unlockedEnvironmentMode] == 3 || (objc_msgSend(v7, "elementWithRole:", 1), v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v12 = 0;
  }

  else
  {
    visibleItemContainers = self->_visibleItemContainers;
    appLayout = [v7 appLayout];
    v11 = [appLayout leafAppLayoutForRole:1];
    v12 = [(NSMutableDictionary *)visibleItemContainers objectForKey:v11];
  }

  return v12;
}

- (BOOL)handleHomeButtonPress
{
  _liveContentOverlayForHandlingHardwareButtonEvents = [(SBFluidSwitcherViewController *)self _liveContentOverlayForHandlingHardwareButtonEvents];
  if (objc_opt_respondsToSelector())
  {
    handleHomeButtonPress = [_liveContentOverlayForHandlingHardwareButtonEvents handleHomeButtonPress];
  }

  else
  {
    handleHomeButtonPress = 0;
  }

  return handleHomeButtonPress;
}

- (BOOL)handleHomeButtonLongPress
{
  _liveContentOverlayForHandlingHardwareButtonEvents = [(SBFluidSwitcherViewController *)self _liveContentOverlayForHandlingHardwareButtonEvents];
  if (objc_opt_respondsToSelector())
  {
    handleHomeButtonLongPress = [_liveContentOverlayForHandlingHardwareButtonEvents handleHomeButtonLongPress];
  }

  else
  {
    handleHomeButtonLongPress = 0;
  }

  return handleHomeButtonLongPress;
}

- (BOOL)handleLockButtonPress
{
  _liveContentOverlayForHandlingHardwareButtonEvents = [(SBFluidSwitcherViewController *)self _liveContentOverlayForHandlingHardwareButtonEvents];
  if (objc_opt_respondsToSelector())
  {
    handleLockButtonPress = [_liveContentOverlayForHandlingHardwareButtonEvents handleLockButtonPress];
  }

  else
  {
    handleLockButtonPress = 0;
  }

  return handleLockButtonPress;
}

- (BOOL)handleVoiceCommandButtonPress
{
  _liveContentOverlayForHandlingHardwareButtonEvents = [(SBFluidSwitcherViewController *)self _liveContentOverlayForHandlingHardwareButtonEvents];
  if (objc_opt_respondsToSelector())
  {
    handleVoiceCommandButtonPress = [_liveContentOverlayForHandlingHardwareButtonEvents handleVoiceCommandButtonPress];
  }

  else
  {
    handleVoiceCommandButtonPress = 0;
  }

  return handleVoiceCommandButtonPress;
}

- (BOOL)handleVolumeUpButtonPress
{
  _liveContentOverlayForHandlingHardwareButtonEvents = [(SBFluidSwitcherViewController *)self _liveContentOverlayForHandlingHardwareButtonEvents];
  if (objc_opt_respondsToSelector())
  {
    handleVolumeUpButtonPress = [_liveContentOverlayForHandlingHardwareButtonEvents handleVolumeUpButtonPress];
  }

  else
  {
    handleVolumeUpButtonPress = 0;
  }

  return handleVolumeUpButtonPress;
}

- (BOOL)handleVolumeDownButtonPress
{
  _liveContentOverlayForHandlingHardwareButtonEvents = [(SBFluidSwitcherViewController *)self _liveContentOverlayForHandlingHardwareButtonEvents];
  if (objc_opt_respondsToSelector())
  {
    handleVolumeDownButtonPress = [_liveContentOverlayForHandlingHardwareButtonEvents handleVolumeDownButtonPress];
  }

  else
  {
    handleVolumeDownButtonPress = 0;
  }

  return handleVolumeDownButtonPress;
}

- (BOOL)handleHeadsetButtonPress:(BOOL)press
{
  pressCopy = press;
  _liveContentOverlayForHandlingHardwareButtonEvents = [(SBFluidSwitcherViewController *)self _liveContentOverlayForHandlingHardwareButtonEvents];
  if (objc_opt_respondsToSelector())
  {
    v5 = [_liveContentOverlayForHandlingHardwareButtonEvents handleHeadsetButtonPress:pressCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context
{
  v31 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  contextCopy = context;
  toLayoutState = [contextCopy toLayoutState];
  applicationTransitionContext = [contextCopy applicationTransitionContext];
  elements = [toLayoutState elements];
  v11 = [elements count];

  if (v11)
  {
    [(SBSwitcherLiveContentOverlayCoordinating *)self->_liveContentOverlayCoordinator layoutStateTransitionCoordinator:coordinatorCopy transitionDidBeginWithTransitionContext:contextCopy];
  }

  [(UIView *)self->_hitTestBlockerView setHidden:1];
  [(SBFluidSwitcherViewController *)self _configureApplicationAndTransientOverlayDockBehaviorAssertionsForContext:applicationTransitionContext];
  delegate = [(SBFluidSwitcherViewController *)self delegate];
  v13 = delegate;
  if ((*(&self->_delegateRespondsTo + 2) & 0x40) != 0 && [delegate switcherContentController:self shouldResignActiveForStartOfTransition:contextCopy] && !self->_transitionBeginResignActiveAssertion)
  {
    v14 = +[SBSceneManagerCoordinator sharedInstance];
    sceneDeactivationManager = [v14 sceneDeactivationManager];
    v16 = [sceneDeactivationManager newAssertionWithReason:5];
    transitionBeginResignActiveAssertion = self->_transitionBeginResignActiveAssertion;
    self->_transitionBeginResignActiveAssertion = v16;

    v18 = self->_transitionBeginResignActiveAssertion;
    _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
    _fbsDisplayIdentity = [_sbWindowScene _fbsDisplayIdentity];
    [(UIApplicationSceneDeactivationAssertion *)v18 sb_acquireForDisplayIdentity:_fbsDisplayIdentity];
  }

  [(SBFluidSwitcherContentView *)self->_contentView setNeedsFocusUpdate];
  [(SBFluidSwitcherContentView *)self->_contentView updateFocusIfNeeded];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  allValues = [(NSMutableDictionary *)self->_visibleShelves allValues];
  v22 = [allValues countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v27;
    do
    {
      v25 = 0;
      do
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v26 + 1) + 8 * v25++) layoutStateTransitionCoordinator:coordinatorCopy transitionDidBeginWithTransitionContext:contextCopy];
      }

      while (v23 != v25);
      v23 = [allValues countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v23);
  }
}

- (void)_updateForegroundAppLayoutsWithNewLayoutState:(id)state
{
  stateCopy = state;
  appLayout = [stateCopy appLayout];
  floatingAppLayout = [stateCopy floatingAppLayout];

  v6 = objc_opt_new();
  if (appLayout)
  {
    [v6 addObject:appLayout];
  }

  if (floatingAppLayout)
  {
    [v6 addObject:floatingAppLayout];
  }

  v7 = [[SBPrepareForSceneUpdateSwitcherModifierEvent alloc] initWithLiveAppLayouts:v6];
  [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v7];
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionWillEndWithTransitionContext:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  contextCopy = context;
  if (objc_opt_respondsToSelector())
  {
    [(SBSwitcherLiveContentOverlayCoordinating *)self->_liveContentOverlayCoordinator layoutStateTransitionCoordinator:coordinatorCopy transitionWillEndWithTransitionContext:contextCopy];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->_visibleShelves allValues];
  v9 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v13 + 1) + 8 * v12++) layoutStateTransitionCoordinator:coordinatorCopy transitionWillEndWithTransitionContext:contextCopy];
      }

      while (v10 != v12);
      v10 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context
{
  v40 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  contextCopy = context;
  pendingTransitionContext = self->_pendingTransitionContext;
  self->_pendingTransitionContext = 0;

  isInterrupted = [contextCopy isInterrupted];
  applicationTransitionContext = [contextCopy applicationTransitionContext];
  v11 = applicationTransitionContext;
  if ((isInterrupted & 1) == 0)
  {
    if ([applicationTransitionContext animationDisabled])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (WeakRetained)
      {
        v13 = WeakRetained;
        v14 = objc_loadWeakRetained(&self->_dataSource);

        if (v14)
        {
          [(SBFluidSwitcherViewController *)self performTransitionWithContext:v11 animated:0 completion:0];
        }
      }
    }

    if (!self->_activeTransitionSubcompletionGenerator)
    {
      layoutContext = [(SBFluidSwitcherViewController *)self layoutContext];
      [layoutContext didEndTransitioningToLayoutStateWithContext:v11];
    }

    [(SBFluidSwitcherViewController *)self _configureApplicationAndTransientOverlayDockBehaviorAssertionsForContext:v11];
    transitionBeginResignActiveAssertion = self->_transitionBeginResignActiveAssertion;
    if (transitionBeginResignActiveAssertion)
    {
      [(UIApplicationSceneDeactivationAssertion *)transitionBeginResignActiveAssertion relinquish];
      v17 = self->_transitionBeginResignActiveAssertion;
      self->_transitionBeginResignActiveAssertion = 0;
    }

    if ([(NSPointerArray *)self->_outstandingAnimations count])
    {
      v19 = 0;
      *&v18 = 138412546;
      v30 = v18;
      do
      {
        v20 = [(NSPointerArray *)self->_outstandingAnimations pointerAtIndex:v19, v30];
        v21 = SBLogAppSwitcher();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          debugName = self->_debugName;
          *buf = v30;
          v37 = debugName;
          v38 = 2112;
          v39 = v20;
          _os_log_error_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_ERROR, "[Fluid Switcher - %@] Layout state transition settled with outstanding animation: %@", buf, 0x16u);
        }

        [(NSPointerArray *)self->_outstandingAnimations removePointerAtIndex:v19];
        ++v19;
      }

      while (v19 < [(NSPointerArray *)self->_outstandingAnimations count]);
    }
  }

  [(SBSwitcherLiveContentOverlayCoordinating *)self->_liveContentOverlayCoordinator layoutStateTransitionCoordinator:coordinatorCopy transitionDidEndWithTransitionContext:contextCopy];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  allValues = [(NSMutableDictionary *)self->_visibleShelves allValues];
  v24 = [allValues countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v32;
    do
    {
      v27 = 0;
      do
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v31 + 1) + 8 * v27++) layoutStateTransitionCoordinator:coordinatorCopy transitionDidEndWithTransitionContext:contextCopy];
      }

      while (v25 != v27);
      v25 = [allValues countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v25);
  }

  delegate = [(SBFluidSwitcherViewController *)self delegate];
  v29 = delegate;
  if ((*(&self->_delegateRespondsTo + 3) & 8) != 0)
  {
    [delegate switcherContentController:self layoutStateTransitionDidEndWithTransitionContext:contextCopy];
  }
}

- (void)_updateLayoutFromInterfaceOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation
{
  [(SBSwitcherLiveContentOverlayCoordinating *)self->_liveContentOverlayCoordinator setContainerOrientation:interfaceOrientation];
  [(SBFluidSwitcherViewController *)self _updateOverlaysTopAffordanceContextMenu];
  if (([(SBSwitcherPersonality *)self->_personality shouldPerformRotationAnimationForOrientationChange]& 1) == 0)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __94__SBFluidSwitcherViewController__updateLayoutFromInterfaceOrientation_toInterfaceOrientation___block_invoke;
    v7[3] = &unk_2783A8C18;
    v7[4] = self;
    [(SBFluidSwitcherViewController *)self _performWithFixedUpdateMode:2 usingBlock:v7];
  }

  [(SBFluidSwitcherViewController *)self _rotateHomeAffordancesFromInterfaceOrientation:orientation toInterfaceOrientation:interfaceOrientation];
}

- (void)performTransitionWithContext:(id)context animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  contextCopy = context;
  completionCopy = completion;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __82__SBFluidSwitcherViewController_performTransitionWithContext_animated_completion___block_invoke;
  v22[3] = &unk_2783AAC68;
  v22[4] = self;
  v11 = contextCopy;
  v23 = v11;
  v25 = animatedCopy;
  v12 = completionCopy;
  v24 = v12;
  v13 = MEMORY[0x223D6F7F0](v22);
  [(SBFluidSwitcherViewController *)self _delayForTransitionWithContext:v11 animated:animatedCopy];
  v15 = v14;
  if (BSFloatIsZero())
  {
    v13[2](v13);
  }

  else
  {
    objc_storeStrong(&self->_pendingTransitionContext, context);
    objc_initWeak(&location, self);
    v16 = dispatch_time(0, (v15 * 1000000000.0));
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __82__SBFluidSwitcherViewController_performTransitionWithContext_animated_completion___block_invoke_11;
    v17[3] = &unk_2783AACB8;
    objc_copyWeak(&v20, &location);
    v18 = v11;
    v19 = v13;
    dispatch_after(v16, MEMORY[0x277D85CD0], v17);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void __82__SBFluidSwitcherViewController_performTransitionWithContext_animated_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1160);
  *(v2 + 1160) = 0;

  v4 = [MEMORY[0x277CCAD78] UUID];
  [*(*(a1 + 32) + 1960) willBeginTransitioningToLayoutStateWithContext:*(a1 + 40)];
  v5 = [*(a1 + 40) previousLayoutState];
  v6 = [v5 interfaceOrientation];

  v7 = [*(a1 + 40) layoutState];
  v8 = [v7 interfaceOrientation];

  if (*(a1 + 56) == 1)
  {
    v9 = [*(a1 + 32) _transitionEventForTransitionWithContext:*(a1 + 40) identifier:v4 phase:1 animated:1];
    [*(a1 + 32) _dispatchEventAndHandleAction:v9];
    if (v6 != v8)
    {
      v10 = [*(*(a1 + 32) + 2112) shouldPerformRotationAnimationForOrientationChange];
      v11 = *(a1 + 32);
      v12 = v11[128];
      v13 = [v11 view];
      [v12 willRotateFromInterfaceOrientation:v6 toInterfaceOrientation:v8 alongsideContainerView:v13 animated:v10];
    }

    v14 = *(a1 + 32);
    if (v14[139])
    {
      [v14[139] relinquish];
      v15 = *(a1 + 32);
      v16 = *(v15 + 1112);
      *(v15 + 1112) = 0;

      v14 = *(a1 + 32);
    }

    if ([v14 isReduceMotionEnabled] && objc_msgSend(*(*(a1 + 32) + 2112), "shouldPerformCrossfadeForReduceMotion"))
    {
      [*(a1 + 32) _prepareForCrossfadeIfNeeded];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 32) + 1024) willPerformNonAnimatedTransitionToInterfaceOrientation:v8];
  }

  objc_initWeak(&location, *(a1 + 32));
  v18 = *(a1 + 32);
  v17 = *(a1 + 40);
  v19 = *(a1 + 56);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __82__SBFluidSwitcherViewController_performTransitionWithContext_animated_completion___block_invoke_2;
  v21[3] = &unk_2783AE3F0;
  v21[4] = v18;
  v22 = v17;
  v26 = *(a1 + 56);
  v20 = v4;
  v23 = v20;
  objc_copyWeak(v25, &location);
  v25[1] = v6;
  v25[2] = v8;
  v24 = *(a1 + 48);
  [v18 _makeAppLayoutVisibleForTransitionWithContext:v22 animated:v19 completion:v21];

  objc_destroyWeak(v25);
  objc_destroyWeak(&location);
}

void __82__SBFluidSwitcherViewController_performTransitionWithContext_animated_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) layoutContext];
  v3 = [v2 activeTransitionContext];
  v4 = *(a1 + 40);

  if (v3 == v4)
  {
    v5 = MEMORY[0x277D65DA0];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __82__SBFluidSwitcherViewController_performTransitionWithContext_animated_completion___block_invoke_3;
    v15[3] = &unk_2783AE350;
    v6 = *(a1 + 40);
    v19 = *(a1 + 88);
    v7 = *(a1 + 32);
    v16 = v6;
    v17 = v7;
    v18 = *(a1 + 48);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __82__SBFluidSwitcherViewController_performTransitionWithContext_animated_completion___block_invoke_8;
    v8[3] = &unk_2783AE3C8;
    objc_copyWeak(&v12, (a1 + 64));
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v14 = *(a1 + 88);
    v13 = *(a1 + 72);
    v11 = *(a1 + 56);
    [v5 perform:v15 finalCompletion:v8 options:objc_msgSend(*(*(a1 + 32) + 2112) delegate:{"shouldFireTransitionCompletionInDefaultRunLoopMode"), *(a1 + 32)}];

    objc_destroyWeak(&v12);
  }
}

void __82__SBFluidSwitcherViewController_performTransitionWithContext_animated_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) request];
  v5 = *(a1 + 56) == 1 && [*(*(a1 + 40) + 2112) transactionCompletionOptions] != 0;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __82__SBFluidSwitcherViewController_performTransitionWithContext_animated_completion___block_invoke_4;
  v47[3] = &unk_2783AE328;
  v49 = v5;
  v36 = v3;
  v48 = v36;
  v6 = MEMORY[0x223D6F7F0](v47);
  if (*(a1 + 56) == 1 && [v4 source] == 55)
  {
    v7 = (*(v6 + 16))(v6, @"morph from in app view");
    v8 = *(a1 + 40);
    v9 = *(v8 + 1648);
    *(v8 + 1648) = v7;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [*(*(a1 + 40) + 2032) allValues];
  v10 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v44;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v44 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v43 + 1) + 8 * i);
        v15 = *(a1 + 32);
        v16 = *(a1 + 56);
        v17 = (*(v6 + 16))(v6, @"shelf transition");
        [v14 performTransitionWithContext:v15 animated:v16 completion:v17];
      }

      v11 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v11);
  }

  v18 = v6;
  v19 = MEMORY[0x223D6F7F0](v6);
  v20 = *(a1 + 40);
  v21 = *(v20 + 1336);
  *(v20 + 1336) = v19;

  v22 = [*(a1 + 40) _transitionEventForTransitionWithContext:*(a1 + 32) identifier:*(a1 + 48) phase:2 animated:*(a1 + 56)];
  [*(a1 + 40) _dispatchEventAndHandleAction:v22];
  [*(a1 + 40) _configureApplicationAndTransientOverlayDockBehaviorAssertionsForContext:*(a1 + 32)];
  v23 = [*(a1 + 40) contentOrientation];
  v24 = [*(a1 + 32) layoutState];
  v25 = [v24 interfaceOrientation];

  if (v23 == v25 || ![*(*(a1 + 40) + 2112) shouldPerformRotationAnimationForOrientationChange])
  {
    v32 = *(a1 + 40);
    v26 = v4;
    if (v32[151])
    {
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __82__SBFluidSwitcherViewController_performTransitionWithContext_animated_completion___block_invoke_7;
      v38[3] = &unk_2783A98A0;
      v38[4] = v32;
      v39 = v18;
      [v32 _performWithFixedUpdateMode:2 usingBlock:v38];
    }

    else
    {
      v33 = (v18)[2](v18, @"update visible items accessory views layout and style");
      [v32 _updateVisibleItemsAccessoryViewsLayoutAndStyleWithCompletion:v33];
    }
  }

  else
  {
    v26 = v4;
    v27 = [v4 applicationContext];
    v28 = [v27 animationSettings];

    v29 = (v18)[2](v18, @"rotation animation");
    v30 = MEMORY[0x277CF0D38];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __82__SBFluidSwitcherViewController_performTransitionWithContext_animated_completion___block_invoke_5;
    v42[3] = &unk_2783A8BC8;
    v42[4] = *(a1 + 40);
    v42[5] = v25;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __82__SBFluidSwitcherViewController_performTransitionWithContext_animated_completion___block_invoke_6;
    v40[3] = &unk_2783A9C70;
    v41 = v29;
    v31 = v29;
    [v30 animateWithSettings:v28 options:4 actions:v42 completion:v40];
  }

  v34 = *(a1 + 40);
  v35 = (v18)[2](v18, @"perform crossfade if needed");
  [v34 _performCrossfadeIfNeededWithCompletion:v35];
}

id __82__SBFluidSwitcherViewController_performTransitionWithContext_animated_completion___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v1 = (*(*(a1 + 32) + 16))();
    v2 = MEMORY[0x223D6F7F0]();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __82__SBFluidSwitcherViewController_performTransitionWithContext_animated_completion___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = v2;
  if ((v3[993] & 0x20) != 0)
  {
    [v2 switcherContentController:? setInterfaceOrientation:?];
    v3 = *(a1 + 32);
  }

  [v3 _updateVisibleItemsAccessoryViewsLayoutAndStyleWithCompletion:0];
}

void __82__SBFluidSwitcherViewController_performTransitionWithContext_animated_completion___block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 _updateVisibleItemsAccessoryViewsLayoutAndStyleWithCompletion:v2];
}

void __82__SBFluidSwitcherViewController_performTransitionWithContext_animated_completion___block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (WeakRetained && (v8 = WeakRetained[167], WeakRetained[167] = 0, v8, (v9 = objc_loadWeakRetained(v7 + 240)) != 0) && (v10 = v9, v11 = objc_loadWeakRetained(v7 + 239), v11, v10, v11))
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __82__SBFluidSwitcherViewController_performTransitionWithContext_animated_completion___block_invoke_9;
    v24[3] = &unk_2783AE378;
    v12 = v7;
    v25 = v12;
    v26 = *(a1 + 32);
    v27 = *(a1 + 40);
    v30 = *(a1 + 80);
    v29 = *(a1 + 64);
    v28 = *(a1 + 48);
    v13 = MEMORY[0x223D6F7F0](v24);
    v14 = [v12 pipViewMorphAnimator];
    v15 = [v14 uuid];
    v16 = [*(a1 + 32) request];
    v17 = [v16 uniqueID];
    v18 = [v15 isEqual:v17];

    if (v18)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __82__SBFluidSwitcherViewController_performTransitionWithContext_animated_completion___block_invoke_10;
      v20[3] = &unk_2783AE3A0;
      v21 = v13;
      v22 = a2;
      v23 = a3;
      [v14 noteSourceAnimationsDidEnd:15 finished:1 continueBlock:v20];
    }

    else
    {
      v13[2](v13, a2, a3);
    }
  }

  else
  {
    v19 = *(a1 + 48);
    if (v19)
    {
      (*(v19 + 16))(v19, a2);
    }
  }
}

void __82__SBFluidSwitcherViewController_performTransitionWithContext_animated_completion___block_invoke_9(uint64_t a1, uint64_t a2)
{
  v22 = [*(a1 + 32) pipViewMorphAnimator];
  v4 = [v22 uuid];
  v5 = [*(a1 + 40) request];
  v6 = [v5 uniqueID];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    [*(a1 + 32) setPipViewMorphAnimator:0];
  }

  [*(a1 + 32) _resetItemContainerShadowPathDisplayLink];
  v8 = [*(a1 + 32) layoutContext];
  v9 = [v8 activeTransitionContext];
  v10 = *(a1 + 40);

  if (v9 == v10)
  {
    v11 = [*(a1 + 32) layoutContext];
    [v11 didEndTransitioningToLayoutStateWithContext:*(a1 + 40)];

    v12 = [*(a1 + 32) _transitionEventForTransitionWithContext:*(a1 + 40) identifier:*(a1 + 48) phase:3 animated:*(a1 + 80)];
    [*(a1 + 32) _dispatchEventAndHandleAction:v12];
    v13 = *(a1 + 32);
    v14 = v13[207];
    if (v14)
    {
      v13[207] = 0;
      v15 = v14;

      v16 = *(a1 + 32);
      v17 = [v15 interactionIdentifier];
      [v16 _removeCenterWindowAnimationContextWithKey:v17];

      v18 = [*(a1 + 32) view];
      [v18 setNeedsLayout];

      [MEMORY[0x277CD9FF0] flush];
      v19 = [MEMORY[0x277CF0B68] response];
      [v15 sendResponse:v19];
    }

    else
    {
      v20 = 0;
      v19 = [v13 view];

      [v19 setNeedsLayout];
    }
  }

  if (*(a1 + 64) != *(a1 + 72))
  {
    [*(*(a1 + 32) + 1024) didRotateFromInterfaceOrientation:? toInterfaceOrientation:?];
  }

  v21 = *(a1 + 56);
  if (v21)
  {
    (*(v21 + 16))(v21, a2);
  }
}

void __82__SBFluidSwitcherViewController_performTransitionWithContext_animated_completion___block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained[145] == *(a1 + 32))
  {
    v3 = WeakRetained;
    (*(*(a1 + 40) + 16))();
    WeakRetained = v3;
  }
}

- (double)_delayForTransitionWithContext:(id)context animated:(BOOL)animated
{
  v4 = 0.0;
  if (animated)
  {
    v5 = [context previousApplicationSceneEntityForLayoutRole:1];
    v6 = [v5 objectForDeactivationSetting:2];
    v7 = v6;
    if (v6)
    {
      [v6 doubleValue];
      v4 = v8;
    }
  }

  return v4;
}

- (void)_makeAppLayoutVisibleForTransitionWithContext:(id)context animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  contextCopy = context;
  completionCopy = completion;
  if (!animatedCopy || SBReduceMotion())
  {
    goto LABEL_6;
  }

  appLayoutToScrollToBeforeTransitioning = [(SBSwitcherPersonality *)self->_personality appLayoutToScrollToBeforeTransitioning];
  if (!appLayoutToScrollToBeforeTransitioning || (-[SBSwitcherPersonality visibleAppLayouts](self->_personality, "visibleAppLayouts"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 containsObject:appLayoutToScrollToBeforeTransitioning], v10, v11))
  {

LABEL_6:
    completionCopy[2](completionCopy, 1);
    goto LABEL_7;
  }

  appLayouts = [(SBFluidSwitcherViewController *)self appLayouts];
  v13 = [appLayouts indexOfObject:appLayoutToScrollToBeforeTransitioning];

  [(SBSwitcherPersonality *)self->_personality contentOffsetForIndex:v13 alignment:2];
  v15 = v14;
  v17 = v16;

  [(BSUIScrollView *)self->_scrollView setContentOffset:1 animated:completionCopy completion:v15, v17];
LABEL_7:
}

- (void)_cancelInProcessAnimationsWithOptions:(unint64_t)options
{
  optionsCopy = options;
  v48 = *MEMORY[0x277D85DE8];
  if ((options & 2) != 0)
  {
    _homeScreenAppearanceController = [(SBFluidSwitcherViewController *)self _homeScreenAppearanceController];
    [_homeScreenAppearanceController cancelInProcessAnimations];

    if ([(SBFluidSwitcherViewController *)self _controlsWallpaper])
    {
      v6 = +[SBWallpaperController sharedInstance];
      [v6 cancelInProcessAnimations];
    }
  }

  if (optionsCopy)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    allValues = [(NSMutableDictionary *)self->_visibleItemContainers allValues];
    v8 = [allValues countByEnumeratingWithState:&v40 objects:v47 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v41;
      do
      {
        v11 = 0;
        do
        {
          if (*v41 != v10)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v40 + 1) + 8 * v11++) _removeAllRetargetableAnimations:1];
        }

        while (v9 != v11);
        v9 = [allValues countByEnumeratingWithState:&v40 objects:v47 count:16];
      }

      while (v9);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    allValues2 = [(NSMutableDictionary *)self->_visibleOverlayAccessoryViews allValues];
    v13 = [allValues2 countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v37;
      do
      {
        v16 = 0;
        do
        {
          if (*v37 != v15)
          {
            objc_enumerationMutation(allValues2);
          }

          [*(*(&v36 + 1) + 8 * v16++) _removeAllRetargetableAnimations:1];
        }

        while (v14 != v16);
        v14 = [allValues2 countByEnumeratingWithState:&v36 objects:v46 count:16];
      }

      while (v14);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    allValues3 = [(NSMutableDictionary *)self->_visibleUnderlayAccessoryViews allValues];
    v18 = [allValues3 countByEnumeratingWithState:&v32 objects:v45 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v33;
      do
      {
        v21 = 0;
        do
        {
          if (*v33 != v20)
          {
            objc_enumerationMutation(allValues3);
          }

          [*(*(&v32 + 1) + 8 * v21++) _removeAllRetargetableAnimations:1];
        }

        while (v19 != v21);
        v19 = [allValues3 countByEnumeratingWithState:&v32 objects:v45 count:16];
      }

      while (v19);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    allValues4 = [(NSMutableDictionary *)self->_externalDropletZoomUpTokens allValues];
    v23 = [allValues4 countByEnumeratingWithState:&v28 objects:v44 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v29;
      do
      {
        v26 = 0;
        do
        {
          if (*v29 != v25)
          {
            objc_enumerationMutation(allValues4);
          }

          animatingDroplet = [*(*(&v28 + 1) + 8 * v26) animatingDroplet];
          [animatingDroplet _removeAllRetargetableAnimations:1];

          ++v26;
        }

        while (v24 != v26);
        v24 = [allValues4 countByEnumeratingWithState:&v28 objects:v44 count:16];
      }

      while (v24);
    }
  }
}

- (void)_performContentViewScaleAnimationForDosido
{
  animationSettings = [(SBAppSwitcherSettings *)self->_settings animationSettings];
  dosidoScaleDownSettings = [animationSettings dosidoScaleDownSettings];
  dosidoScaleUpSettings = [animationSettings dosidoScaleUpSettings];
  [animationSettings dosidoScale];
  v7 = v6;
  memset(&v31, 0, sizeof(v31));
  CGAffineTransformMakeScale(&v31, v6, v6);
  memset(&v30, 0, sizeof(v30));
  CGAffineTransformMakeScale(&v30, 1.0 / v7, 1.0 / v7);
  [animationSettings dosidoScaleUpDelay];
  v9 = v8;
  v10 = MEMORY[0x277D75D18];
  [dosidoScaleDownSettings settlingDuration];
  v12 = v11;
  [dosidoScaleDownSettings dampingRatio];
  v14 = v13;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __75__SBFluidSwitcherViewController__performContentViewScaleAnimationForDosido__block_invoke;
  v25[3] = &unk_2783AE440;
  v26 = dosidoScaleDownSettings;
  selfCopy = self;
  v28 = v31;
  v29 = v30;
  v15 = dosidoScaleDownSettings;
  [v10 animateWithDuration:0 delay:v25 usingSpringWithDamping:0 initialSpringVelocity:v12 options:0.0 animations:v14 completion:0.0];
  v16 = MEMORY[0x277D75D18];
  [dosidoScaleUpSettings settlingDuration];
  v18 = v17;
  [dosidoScaleUpSettings dampingRatio];
  v20 = v19;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __75__SBFluidSwitcherViewController__performContentViewScaleAnimationForDosido__block_invoke_3;
  v22[3] = &unk_2783A92D8;
  v23 = dosidoScaleUpSettings;
  selfCopy2 = self;
  v21 = dosidoScaleUpSettings;
  [v16 animateWithDuration:0 delay:v22 usingSpringWithDamping:0 initialSpringVelocity:v18 options:v9 animations:v20 completion:0.0];
}

void __75__SBFluidSwitcherViewController__performContentViewScaleAnimationForDosido__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) preferredFrameRateRange];
  v3 = MEMORY[0x277D75D18];
  [v2 frameRateRange];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v2 highFrameRateReason];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v11 = *(a1 + 64);
  v16 = *(a1 + 48);
  v17 = v11;
  v12 = *(a1 + 96);
  v18 = *(a1 + 80);
  v19 = v12;
  v13 = *(a1 + 128);
  v20 = *(a1 + 112);
  v21 = v13;
  v15[2] = __75__SBFluidSwitcherViewController__performContentViewScaleAnimationForDosido__block_invoke_2;
  v15[3] = &unk_2783AE418;
  v15[4] = *(a1 + 40);
  LODWORD(v13) = v7;
  LODWORD(v14) = v9;
  [v3 _modifyAnimationsWithPreferredFrameRateRange:v10 updateReason:v15 animations:{COERCE_DOUBLE(__PAIR64__(DWORD1(v20), v5)), *&v13, v14}];
}

uint64_t __75__SBFluidSwitcherViewController__performContentViewScaleAnimationForDosido__block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1952);
  v3 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 72);
  [v2 setTransform:&v7];
  v4 = *(*(a1 + 32) + 1416);
  v5 = *(a1 + 104);
  v7 = *(a1 + 88);
  v8 = v5;
  v9 = *(a1 + 120);
  return [v4 setTransform:&v7];
}

void __75__SBFluidSwitcherViewController__performContentViewScaleAnimationForDosido__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) preferredFrameRateRange];
  v3 = MEMORY[0x277D75D18];
  [v2 frameRateRange];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v2 highFrameRateReason];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__SBFluidSwitcherViewController__performContentViewScaleAnimationForDosido__block_invoke_4;
  v13[3] = &unk_2783A8C18;
  v13[4] = *(a1 + 40);
  LODWORD(v11) = v7;
  LODWORD(v12) = v9;
  [v3 _modifyAnimationsWithPreferredFrameRateRange:v10 updateReason:v13 animations:{COERCE_DOUBLE(v5), v11, v12}];
}

uint64_t __75__SBFluidSwitcherViewController__performContentViewScaleAnimationForDosido__block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1952);
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  v8 = *MEMORY[0x277CBF2C0];
  v7 = v8;
  v9 = v6;
  v10 = *(MEMORY[0x277CBF2C0] + 32);
  v5 = v10;
  [v2 setTransform:&v8];
  v3 = *(*(a1 + 32) + 1416);
  v8 = v7;
  v9 = v6;
  v10 = v5;
  return [v3 setTransform:&v8];
}

- (void)_blurItemContainer:(id)container blurParameters:(id)parameters withAnimationUpdateMode:(int64_t)mode
{
  v24[1] = *MEMORY[0x277D85DE8];
  containerCopy = container;
  parametersCopy = parameters;
  if (!UIAccessibilityIsReduceTransparencyEnabled())
  {
    layer = [containerCopy layer];
    filters = [layer filters];
    v11 = [filters count];

    if (!v11)
    {
      v12 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
      [v12 setName:@"gaussianBlur"];
      v13 = SBStringForBlurItemContainerQuality([parametersCopy inputIntermediateBitDepth]);
      [v12 setValue:v13 forKey:@"inputIntermediateBitDepth"];

      v14 = SBStringForBlurItemContainerQuality([parametersCopy inputQuality]);
      [v12 setValue:v14 forKey:@"inputQuality"];

      [v12 setValue:&unk_28336F220 forKey:@"inputRadius"];
      layer2 = [containerCopy layer];
      v24[0] = v12;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      [layer2 setFilters:v16];
    }

    if ([parametersCopy shouldRasterize])
    {
      layer3 = [containerCopy layer];
      [parametersCopy rasterizationScale];
      [layer3 setRasterizationScale:?];

      layer4 = [containerCopy layer];
      [layer4 setShouldRasterize:1];
    }

    v19 = MEMORY[0x277D75D18];
    blurAnimationSettings = [parametersCopy blurAnimationSettings];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __91__SBFluidSwitcherViewController__blurItemContainer_blurParameters_withAnimationUpdateMode___block_invoke;
    v21[3] = &unk_2783A92D8;
    v22 = containerCopy;
    v23 = parametersCopy;
    [v19 sb_animateWithSettings:blurAnimationSettings mode:mode animations:v21 completion:0];
  }
}

void __91__SBFluidSwitcherViewController__blurItemContainer_blurParameters_withAnimationUpdateMode___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) layer];
  v2 = MEMORY[0x277CCABB0];
  [*(a1 + 40) blurRadius];
  v3 = [v2 numberWithDouble:?];
  [v4 setValue:v3 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

- (void)_unblurItemContainer:(id)container blurParameters:(id)parameters withAnimationUpdateMode:(int64_t)mode
{
  parametersCopy = parameters;
  layer = [container layer];
  v10 = [layer valueForKeyPath:@"filters.gaussianBlur.inputRadius"];
  v11 = [v10 isEqual:&unk_28336F220];

  if ((v11 & 1) == 0)
  {
    v12 = MEMORY[0x277D75D18];
    blurAnimationSettings = [parametersCopy blurAnimationSettings];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __93__SBFluidSwitcherViewController__unblurItemContainer_blurParameters_withAnimationUpdateMode___block_invoke;
    v18[3] = &unk_2783A8ED8;
    v19 = layer;
    v20 = &unk_28336F220;
    v21 = @"filters.gaussianBlur.inputRadius";
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __93__SBFluidSwitcherViewController__unblurItemContainer_blurParameters_withAnimationUpdateMode___block_invoke_2;
    v14[3] = &unk_2783AE490;
    v15 = v19;
    v16 = @"filters.gaussianBlur.inputRadius";
    selfCopy = self;
    [v12 sb_animateWithSettings:blurAnimationSettings mode:mode animations:v18 completion:v14];
  }
}

void __93__SBFluidSwitcherViewController__unblurItemContainer_blurParameters_withAnimationUpdateMode___block_invoke_2(id *a1, char a2, char a3)
{
  v5 = a2 & ~a3;
  if (v5 & 1) == 0 && ([a1[4] presentationModifiers], v6 = objc_claimAutoreleasedReturnValue(), v10[0] = MEMORY[0x277D85DD0], v10[1] = 3221225472, v10[2] = __93__SBFluidSwitcherViewController__unblurItemContainer_blurParameters_withAnimationUpdateMode___block_invoke_3, v10[3] = &unk_2783AE468, v3 = &v11, v11 = a1[5], v7 = objc_msgSend(v6, "bs_containsObjectPassingTest:", v10), v6, (v7) || (objc_msgSend(a1[4], "setFilters:", 0), v8 = a1[4], objc_msgSend(a1[6], "traitCollection"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "displayScale"), objc_msgSend(v8, "setRasterizationScale:"), v9, objc_msgSend(a1[4], "setShouldRasterize:", 0), (v5 & 1) == 0))
  {
  }
}

uint64_t __93__SBFluidSwitcherViewController__unblurItemContainer_blurParameters_withAnimationUpdateMode___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 keyPath];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)_temporarilyHideMatchMovedZoomDownAnimationViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v37 = *MEMORY[0x277D85DE8];
  if ([(SBFluidSwitcherViewController *)self _isPerformingMatchMoveToIconView])
  {
    if (animatedCopy)
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    v6 = MEMORY[0x277D75D18];
    animationSettings = [(SBAppSwitcherSettings *)self->_settings animationSettings];
    switcherFadeOutSettings = [animationSettings switcherFadeOutSettings];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __89__SBFluidSwitcherViewController__temporarilyHideMatchMovedZoomDownAnimationViewAnimated___block_invoke;
    v34[3] = &unk_2783A8C18;
    v34[4] = self;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __89__SBFluidSwitcherViewController__temporarilyHideMatchMovedZoomDownAnimationViewAnimated___block_invoke_2;
    v33[3] = &unk_2783AE4B8;
    v33[4] = self;
    [v6 sb_animateWithSettings:switcherFadeOutSettings mode:v5 animations:v34 completion:v33];

    animationSettings2 = [(SBAppSwitcherSettings *)self->_settings animationSettings];
    iconFadeInSettings = [animationSettings2 iconFadeInSettings];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    allValues = [(NSMutableDictionary *)self->_hiddenIconViews allValues];
    v12 = [allValues countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(allValues);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __89__SBFluidSwitcherViewController__temporarilyHideMatchMovedZoomDownAnimationViewAnimated___block_invoke_3;
          v28[3] = &unk_2783A92D8;
          v28[4] = v16;
          v28[5] = self;
          [MEMORY[0x277D75D18] sb_animateWithSettings:iconFadeInSettings mode:v5 animations:v28 completion:0];
        }

        v13 = [allValues countByEnumeratingWithState:&v29 objects:v36 count:16];
      }

      while (v13);
    }

    [(NSMutableDictionary *)self->_hiddenIconViews removeAllObjects];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    allValues2 = [(NSMutableDictionary *)self->_hiddenIconViewContainers allValues];
    v18 = [allValues2 countByEnumeratingWithState:&v24 objects:v35 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v25;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(allValues2);
          }

          v22 = *(*(&v24 + 1) + 8 * j);
          _iconZoomContextProvider = [(SBFluidSwitcherViewController *)self _iconZoomContextProvider];
          [_iconZoomContextProvider stopTrackingHiddenIconZoomViewIfNeeded:v22];
        }

        v19 = [allValues2 countByEnumeratingWithState:&v24 objects:v35 count:16];
      }

      while (v19);
    }

    [(NSMutableDictionary *)self->_hiddenIconViewContainers removeAllObjects];
  }
}

void __89__SBFluidSwitcherViewController__temporarilyHideMatchMovedZoomDownAnimationViewAnimated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:0.0];
}

void __89__SBFluidSwitcherViewController__temporarilyHideMatchMovedZoomDownAnimationViewAnimated___block_invoke_2(uint64_t a1, uint64_t a2, char a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((a3 & 1) == 0)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [*(*(a1 + 32) + 1976) allValues];
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

          [*(*(&v8 + 1) + 8 * v7++) removeIconOverlay];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

void __89__SBFluidSwitcherViewController__temporarilyHideMatchMovedZoomDownAnimationViewAnimated___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setIconContentHidden:0];
  v2 = [*(a1 + 40) _iconZoomContextProvider];
  [v2 stopTrackingHiddenIconZoomViewIfNeeded:*(a1 + 32)];
}

- (void)_setUpSearchPresenterObservation
{
  _searchPresenter = [(SBFluidSwitcherViewController *)self _searchPresenter];
  [_searchPresenter addSearchPresenterObserver:self];
}

- (void)_removeSearchPresenterObservation
{
  _searchPresenter = [(SBFluidSwitcherViewController *)self _searchPresenter];
  [_searchPresenter removeSearchPresenterObserver:self];
}

- (void)searchGesture:(id)gesture startedShowing:(BOOL)showing
{
  if (showing)
  {
    [(SBFluidSwitcherViewController *)self _temporarilyHideMatchMovedZoomDownAnimationViewAnimated:0];
  }
}

- (void)animatorWasCanceled:(id)canceled
{
  if (![canceled direction])
  {
    v4 = objc_alloc_init(SBMorphToPIPChangedSwitcherModifierEvent);
    [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v4];
  }
}

- (void)hideSourceViewForAnimator:(id)animator
{
  animatorCopy = animator;
  WeakRetained = objc_loadWeakRetained(&self->_pipViewMorphAnimator);

  if (WeakRetained == animatorCopy)
  {
    v6 = objc_alloc_init(SBMorphToPIPChangedSwitcherModifierEvent);
    [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v6];
  }
}

- (BOOL)shouldAnimateInsertionOfAppLayouts:(id)layouts atIndexes:(id)indexes
{
  layoutsCopy = layouts;
  indexesCopy = indexes;
  appLayouts = [(SBFluidSwitcherViewController *)self appLayouts];
  v9 = [appLayouts count];

  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if ([layoutsCopy count])
  {
    v11 = 0;
    do
    {
      v12 = [layoutsCopy objectAtIndex:v11];
      v13 = [indexesCopy objectAtIndex:v11];
      unsignedIntegerValue = [v13 unsignedIntegerValue];

      if (v10 >= unsignedIntegerValue)
      {
        v15 = unsignedIntegerValue;
      }

      else
      {
        v15 = v10;
      }

      v16 = [(SBSwitcherPersonality *)self->_personality shouldAnimateInsertionOrRemovalOfAppLayout:v12 atIndex:v15];

      if (v16)
      {
        break;
      }

      ++v11;
    }

    while (v11 < [layoutsCopy count]);
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16;
}

- (void)prepareAnimatedInsertionOfAppLayouts:(id)layouts atIndexes:(id)indexes
{
  indexesCopy = indexes;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__SBFluidSwitcherViewController_prepareAnimatedInsertionOfAppLayouts_atIndexes___block_invoke;
  v8[3] = &unk_2783AE4E0;
  v9 = indexesCopy;
  selfCopy = self;
  v7 = indexesCopy;
  [layouts enumerateObjectsUsingBlock:v8];
}

void __80__SBFluidSwitcherViewController_prepareAnimatedInsertionOfAppLayouts_atIndexes___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndex:a3];
  v8 = [v7 unsignedIntegerValue];

  v9 = [[SBInsertionSwitcherModifierEvent alloc] initWithAppLayout:v6 intoIndex:v8 phase:1];
  [*(a1 + 40) _dispatchEventAndHandleAction:v9];
}

- (void)noteModelDidMutateForInsertionOfAppLayouts:(id)layouts atIndexes:(id)indexes willAnimate:(BOOL)animate
{
  indexesCopy = indexes;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __98__SBFluidSwitcherViewController_noteModelDidMutateForInsertionOfAppLayouts_atIndexes_willAnimate___block_invoke;
  v13 = &unk_2783AE4E0;
  v9 = indexesCopy;
  v14 = v9;
  selfCopy = self;
  [layouts enumerateObjectsUsingBlock:&v10];
  if (!animate)
  {
    [(SBFluidSwitcherViewController *)self _updateVisibleItems:v10];
    [(SBFluidSwitcherViewController *)self _updateVisibleAccessoryViews];
  }
}

void __98__SBFluidSwitcherViewController_noteModelDidMutateForInsertionOfAppLayouts_atIndexes_willAnimate___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndex:a3];
  v8 = [v7 unsignedIntegerValue];

  v9 = [[SBInsertionSwitcherModifierEvent alloc] initWithAppLayout:v6 intoIndex:v8 phase:2];
  [*(a1 + 40) _dispatchEventAndHandleAction:v9];
}

- (void)performAnimatedInsertionOfAppLayouts:(id)layouts atIndexes:(id)indexes completion:(id)completion
{
  layoutsCopy = layouts;
  indexesCopy = indexes;
  completionCopy = completion;
  [(SBFluidSwitcherViewController *)self _updateVisibleItems];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __91__SBFluidSwitcherViewController_performAnimatedInsertionOfAppLayouts_atIndexes_completion___block_invoke;
  v20[3] = &unk_2783AE4E0;
  v11 = indexesCopy;
  v21 = v11;
  selfCopy = self;
  [layoutsCopy enumerateObjectsUsingBlock:v20];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __91__SBFluidSwitcherViewController_performAnimatedInsertionOfAppLayouts_atIndexes_completion___block_invoke_2;
  v15[3] = &unk_2783AE508;
  v16 = layoutsCopy;
  v17 = v11;
  selfCopy2 = self;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = v11;
  v14 = layoutsCopy;
  [(SBFluidSwitcherViewController *)self _updateVisibleItemsAccessoryViewsLayoutAndStyleWithCompletion:v15];
}

void __91__SBFluidSwitcherViewController_performAnimatedInsertionOfAppLayouts_atIndexes_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndex:a3];
  v8 = [v7 unsignedIntegerValue];

  v9 = [[SBInsertionSwitcherModifierEvent alloc] initWithAppLayout:v6 intoIndex:v8 phase:3];
  [*(a1 + 40) _dispatchEventAndHandleAction:v9];
}

void __91__SBFluidSwitcherViewController_performAnimatedInsertionOfAppLayouts_atIndexes_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __91__SBFluidSwitcherViewController_performAnimatedInsertionOfAppLayouts_atIndexes_completion___block_invoke_3;
  v10[3] = &unk_2783AE4E0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v11 = v7;
  v12 = v8;
  [v6 enumerateObjectsUsingBlock:v10];
  v9 = *(a1 + 56);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, a3);
  }
}

void __91__SBFluidSwitcherViewController_performAnimatedInsertionOfAppLayouts_atIndexes_completion___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndex:a3];
  v8 = [v7 unsignedIntegerValue];

  v9 = [[SBInsertionSwitcherModifierEvent alloc] initWithAppLayout:v6 intoIndex:v8 phase:4];
  [*(a1 + 40) _dispatchEventAndHandleAction:v9];
}

- (void)_performSwitcherDropWithContext:(id)context mutationBlock:(id)block
{
  blockCopy = block;
  contextCopy = context;
  v9 = [[SBCardDropSwitcherModifierEvent alloc] initWithPhase:1 context:contextCopy];
  [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v9];
  blockCopy[2](blockCopy);

  v8 = [[SBCardDropSwitcherModifierEvent alloc] initWithPhase:2 context:contextCopy];
  [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v8];
}

- (void)_noteSwitcherDropAnimationCompletedWithContext:(id)context
{
  contextCopy = context;
  v5 = [[SBCardDropSwitcherModifierEvent alloc] initWithPhase:3 context:contextCopy];

  [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v5];
}

- (void)removeLayoutRole:(int64_t)role inSpace:(id)space mutationBlock:(id)block reason:(int64_t)reason
{
  spaceCopy = space;
  blockCopy = block;
  v12 = [spaceCopy leafAppLayoutForRole:role];
  v13 = [(NSDictionary *)self->_leafAppLayoutsToAdjustedAppLayouts objectForKey:v12];
  if (v13 && (-[SBFluidSwitcherViewController appLayouts](self, "appLayouts"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 indexOfObject:v13], v14, -[SBSwitcherPersonality shouldAnimateInsertionOrRemovalOfAppLayout:atIndex:](self->_personality, "shouldAnimateInsertionOrRemovalOfAppLayout:atIndex:", v13, v15)))
  {
    allItems = [v12 allItems];
    firstObject = [allItems firstObject];
    v18 = [v13 layoutRoleForItem:firstObject];

    v22 = [[SBRemovalSwitcherModifierEvent alloc] initWithLayoutRole:v18 inAppLayout:v13 reason:reason phase:1];
    [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:?];
    blockCopy[2](blockCopy);
    v21 = [[SBRemovalSwitcherModifierEvent alloc] initWithLayoutRole:v18 inAppLayout:v13 reason:reason phase:2];
    [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:?];
    objc_initWeak(location, self);
    v19 = MEMORY[0x277D65DA0];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __79__SBFluidSwitcherViewController_removeLayoutRole_inSpace_mutationBlock_reason___block_invoke;
    v27[3] = &unk_2783AE530;
    v27[4] = self;
    v20 = v12;
    v28 = v20;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __79__SBFluidSwitcherViewController_removeLayoutRole_inSpace_mutationBlock_reason___block_invoke_3;
    v23[3] = &unk_2783AE558;
    objc_copyWeak(v26, location);
    v26[1] = v18;
    v24 = v13;
    v26[2] = reason;
    v25 = v20;
    [v19 perform:v27 finalCompletion:v23 options:0 delegate:self];

    objc_destroyWeak(v26);
    objc_destroyWeak(location);
  }

  else
  {
    blockCopy[2](blockCopy);
    [(SBFluidSwitcherPageContentViewProvider *)self->_pageContentViewProvider purgePageContentViewForAppLayout:v12];
  }
}

void __79__SBFluidSwitcherViewController_removeLayoutRole_inSpace_mutationBlock_reason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 1968) objectForKey:*(a1 + 40)];
  if (v4)
  {
    v5 = MEMORY[0x277D75D18];
    v6 = [*(*(a1 + 32) + 1096) animationSettings];
    v7 = [v6 opacitySettings];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __79__SBFluidSwitcherViewController_removeLayoutRole_inSpace_mutationBlock_reason___block_invoke_2;
    v11[3] = &unk_2783A8C18;
    v12 = v4;
    v8 = v3[2](v3, @"fade item container");
    [v5 sb_animateWithSettings:v7 mode:3 animations:v11 completion:v8];
  }

  v9 = *(a1 + 32);
  v10 = v3[2](v3, @"update visible items accessory views layout and style");
  [v9 _updateVisibleItemsAccessoryViewsLayoutAndStyleWithCompletion:v10];
}

void __79__SBFluidSwitcherViewController_removeLayoutRole_inSpace_mutationBlock_reason___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [[SBRemovalSwitcherModifierEvent alloc] initWithLayoutRole:*(a1 + 56) inAppLayout:*(a1 + 32) reason:*(a1 + 64) phase:3];
    [v4 _dispatchEventAndHandleAction:v3];
    [v4[133] purgePageContentViewForAppLayout:*(a1 + 40)];

    WeakRetained = v4;
  }
}

- (void)noteWindowManagementContextDidChange
{
  v3 = objc_alloc_init(SBUpdateWindowingModeSwitcherModifierEvent);
  [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v3];

  [(SBFluidSwitcherViewController *)self _updateContentViewSublayerTransform];

  [(SBFluidSwitcherViewController *)self _updateChamoisDefaultsObserverIfNeeded];
}

- (id)liveScenesIdentityTokens
{
  allValues = [(NSMutableDictionary *)self->_liveContentOverlays allValues];
  v3 = [allValues bs_mapNoNulls:&__block_literal_global_612];

  if ([v3 count])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SBFluidSwitcherViewController;
  [(SBFluidSwitcherViewController *)&v5 viewDidDisappear:disappear];
  [(BSInvalidatable *)self->_applicationRestrictionUpdatePendingAssertion invalidate];
  applicationRestrictionUpdatePendingAssertion = self->_applicationRestrictionUpdatePendingAssertion;
  self->_applicationRestrictionUpdatePendingAssertion = 0;
}

- (void)_configureApplicationAndTransientOverlayDockBehaviorAssertionsForContext:(id)context
{
  contextCopy = context;
  if (!+[SBFloatingDockController isFloatingDockSupported])
  {
    goto LABEL_33;
  }

  _floatingDockController = [(SBFluidSwitcherViewController *)self _floatingDockController];
  shouldConfigureInAppDockHiddenAssertion = [(SBSwitcherPersonality *)self->_personality shouldConfigureInAppDockHiddenAssertion];
  inAppFloatingDockBehaviorAssertion = [(SBFluidSwitcherViewController *)self inAppFloatingDockBehaviorAssertion];

  if (shouldConfigureInAppDockHiddenAssertion)
  {
    v8 = inAppFloatingDockBehaviorAssertion == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v10 = [[SBFloatingDockBehaviorAssertion alloc] initWithFloatingDockController:_floatingDockController visibleProgress:1 animated:1 gesturePossible:9 atLevel:@"in app" reason:0 withCompletion:0.0];
    [(SBFluidSwitcherViewController *)self setInAppFloatingDockBehaviorAssertion:v10];

    goto LABEL_13;
  }

  if (inAppFloatingDockBehaviorAssertion)
  {
    v9 = shouldConfigureInAppDockHiddenAssertion;
  }

  else
  {
    v9 = 1;
  }

  if ((v9 & 1) == 0)
  {
    _floatingDockController2 = [(SBFluidSwitcherViewController *)self _floatingDockController];
    _activeGestureFloatingDockBehaviorAssertion = [_floatingDockController2 _activeGestureFloatingDockBehaviorAssertion];
    if (_activeGestureFloatingDockBehaviorAssertion)
    {
      v18 = _activeGestureFloatingDockBehaviorAssertion;
      _floatingDockController3 = [(SBFluidSwitcherViewController *)self _floatingDockController];
      wasFloatingDockPresentedByPointer = [_floatingDockController3 wasFloatingDockPresentedByPointer];

      if (wasFloatingDockPresentedByPointer)
      {
        if (![(SBSwitcherPersonality *)self->_personality shouldRemoveProlongedCursorGestureFloatingDockBehaviorAssertion])
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    else
    {
    }

    inAppFloatingDockBehaviorAssertion2 = [(SBFluidSwitcherViewController *)self inAppFloatingDockBehaviorAssertion];
    [inAppFloatingDockBehaviorAssertion2 invalidate];

    [(SBFluidSwitcherViewController *)self setInAppFloatingDockBehaviorAssertion:0];
LABEL_23:
    [(SBFluidSwitcherViewController *)self _removeProlongedCursorGestureFloatingDockBehaviorAssertion];
    goto LABEL_24;
  }

  if (shouldConfigureInAppDockHiddenAssertion & 1 | (inAppFloatingDockBehaviorAssertion != 0))
  {
    goto LABEL_24;
  }

LABEL_13:
  _floatingDockController4 = [(SBFluidSwitcherViewController *)self _floatingDockController];
  _activeGestureFloatingDockBehaviorAssertion2 = [_floatingDockController4 _activeGestureFloatingDockBehaviorAssertion];
  if (_activeGestureFloatingDockBehaviorAssertion2)
  {
    v13 = _activeGestureFloatingDockBehaviorAssertion2;
    _floatingDockController5 = [(SBFluidSwitcherViewController *)self _floatingDockController];
    wasFloatingDockPresentedByPointer2 = [_floatingDockController5 wasFloatingDockPresentedByPointer];

    if (!wasFloatingDockPresentedByPointer2)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_24:
  request = [contextCopy request];
  transientOverlayContext = [request transientOverlayContext];

  transientOverlay = [transientOverlayContext transientOverlay];
  v25 = [(SBFluidSwitcherViewController *)self _appLayoutForWorkspaceTransientOverlay:transientOverlay];
  if (v25 && ![transientOverlayContext transitionType] || (-[SBFluidSwitcherViewController _activeTransientOverlayPresentedAppLayout](self, "_activeTransientOverlayPresentedAppLayout"), v26 = objc_claimAutoreleasedReturnValue(), v26, v26))
  {
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __106__SBFluidSwitcherViewController__configureApplicationAndTransientOverlayDockBehaviorAssertionsForContext___block_invoke;
    v38[3] = &unk_2783A92D8;
    v38[4] = self;
    v27 = _floatingDockController;
    v39 = v27;
    v28 = MEMORY[0x223D6F7F0](v38);
    v29 = v28;
    if (self->_transientOverlayFloatingDockBehaviorAssertion)
    {
      (*(v28 + 16))(v28);
    }

    else
    {
      v32 = [SBFloatingDockBehaviorAssertion alloc];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __106__SBFluidSwitcherViewController__configureApplicationAndTransientOverlayDockBehaviorAssertionsForContext___block_invoke_2;
      v35[3] = &unk_2783AE5A0;
      v35[4] = self;
      v36 = contextCopy;
      v37 = v29;
      v33 = [(SBFloatingDockBehaviorAssertion *)v32 initWithFloatingDockController:v27 visibleProgress:1 animated:1 gesturePossible:6 atLevel:@"transient overlay" reason:v35 withCompletion:0.0];
      transientOverlayFloatingDockBehaviorAssertion = self->_transientOverlayFloatingDockBehaviorAssertion;
      self->_transientOverlayFloatingDockBehaviorAssertion = v33;
    }

    transientOverlayFloatingDockWindowLevelAssertion = v39;
  }

  else
  {
    [(SBFloatingDockBehaviorAssertion *)self->_transientOverlayFloatingDockBehaviorAssertion invalidate];
    v30 = self->_transientOverlayFloatingDockBehaviorAssertion;
    self->_transientOverlayFloatingDockBehaviorAssertion = 0;

    [(SBFloatingDockWindowLevelAssertion *)self->_transientOverlayFloatingDockWindowLevelAssertion invalidate];
    transientOverlayFloatingDockWindowLevelAssertion = self->_transientOverlayFloatingDockWindowLevelAssertion;
    self->_transientOverlayFloatingDockWindowLevelAssertion = 0;
  }

LABEL_33:
}

void __106__SBFluidSwitcherViewController__configureApplicationAndTransientOverlayDockBehaviorAssertionsForContext___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 2176))
  {
    v2 = [SBFloatingDockWindowLevelAssertion alloc];
    v3 = [(SBFloatingDockWindowLevelAssertion *)v2 initWithFloatingDockController:*(a1 + 40) priority:1 level:@"TransientOverlay" reason:*MEMORY[0x277D76EE8] + 15.0 + -0.1];
    v4 = *(a1 + 32);
    v5 = *(v4 + 2176);
    *(v4 + 2176) = v3;
  }
}

void __106__SBFluidSwitcherViewController__configureApplicationAndTransientOverlayDockBehaviorAssertionsForContext___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _activeTransientOverlayPresentedAppLayout];
  if (v2)
  {
  }

  else
  {
    v4 = [*(a1 + 32) layoutContext];
    v5 = [v4 activeTransitionContext];
    v6 = *(a1 + 40);

    if (v5 != v6)
    {
      return;
    }
  }

  v3 = *(*(a1 + 48) + 16);

  v3();
}

- (void)_updateVisibleItemsAccessoryViewsLayoutAndStyleWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MEMORY[0x223D6F7F0](self->_layoutSubviews_completionBlock);
  v6 = v5;
  if (completionCopy | v5)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __95__SBFluidSwitcherViewController__updateVisibleItemsAccessoryViewsLayoutAndStyleWithCompletion___block_invoke;
    v12[3] = &unk_2783AE5C8;
    v13 = v5;
    v14 = completionCopy;
    v7 = MEMORY[0x223D6F7F0](v12);
    layoutSubviews_completionBlock = self->_layoutSubviews_completionBlock;
    self->_layoutSubviews_completionBlock = v7;

    v9 = v13;
  }

  else
  {
    v9 = self->_layoutSubviews_completionBlock;
    self->_layoutSubviews_completionBlock = 0;
  }

  self->_layoutSubviews_skipLayoutNotification = 1;
  view = [(SBFluidSwitcherViewController *)self view];
  [view setNeedsLayout];

  view2 = [(SBFluidSwitcherViewController *)self view];
  [view2 layoutIfNeeded];
}

uint64_t __95__SBFluidSwitcherViewController__updateVisibleItemsAccessoryViewsLayoutAndStyleWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, a2, a3);
  }

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)_layoutSubviews_updateVisibleItemsAccessoryViewsLayoutAndStyleWithCompletion:(id)completion
{
  completionCopy = completion;
  kdebug_trace();
  [(SBFluidSwitcherViewController *)self _updateVisibleItems];
  [(SBFluidSwitcherViewController *)self _updateVisibleAccessoryViews];
  transactionCompletionOptions = [(SBSwitcherPersonality *)self->_personality transactionCompletionOptions];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __110__SBFluidSwitcherViewController__layoutSubviews_updateVisibleItemsAccessoryViewsLayoutAndStyleWithCompletion___block_invoke;
  v6[3] = &unk_2783AE5F0;
  v6[4] = self;
  v7 = (transactionCompletionOptions & 2) != 0;
  v8 = (transactionCompletionOptions & 4) != 0;
  [MEMORY[0x277D65DA0] perform:v6 finalCompletion:completionCopy options:0 delegate:self];

  kdebug_trace();
}

void __110__SBFluidSwitcherViewController__layoutSubviews_updateVisibleItemsAccessoryViewsLayoutAndStyleWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  if (*(a1 + 40))
  {
    v5 = v3[2](v3, @"update layout");
    [v4 _updateLayoutWithCompletion:v5];
  }

  else
  {
    [v4 _updateLayoutWithCompletion:0];
  }

  v6 = *(a1 + 32);
  if (*(a1 + 41))
  {
    v7 = v8[2](v8, @"update style");
    [v6 _updateStyleWithCompletion:v7];
  }

  else
  {
    [*(a1 + 32) _updateStyleWithCompletion:0];
  }
}

- (void)_applyRootContentViewClippingAndBlurWithCompletion:(id)completion
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __84__SBFluidSwitcherViewController__applyRootContentViewClippingAndBlurWithCompletion___block_invoke;
  v3[3] = &unk_2783AE618;
  v3[4] = self;
  [MEMORY[0x277D65DA0] perform:v3 finalCompletion:completion options:0 delegate:?];
}

void __84__SBFluidSwitcherViewController__applyRootContentViewClippingAndBlurWithCompletion___block_invoke(uint64_t a1, void (**a2)(id, __CFString *))
{
  v3 = *(a1 + 32);
  v5 = a2 + 2;
  v4 = a2[2];
  v6 = a2;
  v7 = v4();
  [v3 _applyRootContentViewClippingWithCompletion:v7];

  v8 = *(a1 + 32);
  v9 = (*v5)(v6, @"content-view-blur-radius");

  [v8 _applyRootContentViewBlurRadiusWithCompletion:v9];
}

- (void)_updateLayoutWithCompletion:(id)completion
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __61__SBFluidSwitcherViewController__updateLayoutWithCompletion___block_invoke;
  v3[3] = &unk_2783AE618;
  v3[4] = self;
  [MEMORY[0x277D65DA0] perform:v3 finalCompletion:completion options:0 delegate:?];
}

void __61__SBFluidSwitcherViewController__updateLayoutWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [*(*(a1 + 32) + 2112) animationAttributesForLayoutElement:*(*(a1 + 32) + 1432)];
  v14 = [v13 layoutSettings];
  v15 = [v13 layoutUpdateMode];
  if (!v15)
  {
    v15 = [v13 updateMode];
  }

  v16 = *(*(a1 + 32) + 1952);
  UIRectGetCenter();
  [v16 setCenter:?];
  v17 = *(*(a1 + 32) + 1952);
  SBRectWithSize();
  [v17 setBounds:?];
  v18 = *(a1 + 32);
  v19 = v3[2](v3, @"root-content-view");
  [v18 _applyRootContentViewClippingAndBlurWithCompletion:v19];

  v20 = *(a1 + 32);
  v21 = MEMORY[0x277D76620];
  if (*(v20 + 2096))
  {
    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      v51.origin.x = v6;
      v51.origin.y = v8;
      v51.size.width = v10;
      v51.size.height = v12;
      CGRectGetMaxX(v51);
    }

    v22 = *(*(a1 + 32) + 2096);
    UIRectGetCenter();
    [v22 setCenter:?];
    v23 = *(*(a1 + 32) + 2096);
    SBRectWithSize();
    [v23 setBounds:?];
    v20 = *(a1 + 32);
  }

  if (*(v20 + 2104))
  {
    [*(v20 + 2096) frame];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    [*(*(a1 + 32) + 2104) sizeThatFits:{v10, v12}];
    v32 = [*v21 userInterfaceLayoutDirection];
    v33 = v25;
    v34 = v27;
    v35 = v29;
    v36 = v31;
    if (v32 == 1)
    {
      CGRectGetMinX(*&v33);
    }

    else
    {
      CGRectGetMaxX(*&v33);
    }

    v37 = *(*(a1 + 32) + 2104);
    UIRectGetCenter();
    [v37 setCenter:?];
    v38 = *(*(a1 + 32) + 2104);
    SBRectWithSize();
    [v38 setBounds:?];
    v20 = *(a1 + 32);
  }

  v39 = *(v20 + 1744);
  if (v39)
  {
    [v39 setBounds:{v6, v8, v10, v12}];
    v40 = *(*(a1 + 32) + 1744);
    UIRectGetCenter();
    [v40 setCenter:?];
    v20 = *(a1 + 32);
  }

  v41 = v3[2](v3, @"shelves");
  [v20 _layoutVisibleShelvesWithCompletion:v41];

  v42 = MEMORY[0x277D75D18];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __61__SBFluidSwitcherViewController__updateLayoutWithCompletion___block_invoke_2;
  v50[3] = &unk_2783A8C18;
  v50[4] = *(a1 + 32);
  v43 = v3[2](v3, @"content view transform");
  [v42 sb_animateWithSettings:v14 mode:v15 animations:v50 completion:v43];

  [*(*(a1 + 32) + 1216) setFrame:{v6, v8, v10, v12}];
  [*(a1 + 32) _updateScrollViewLayoutSizeAndSpacing];
  v44 = *(a1 + 32);
  v45 = v3[2](v3, @"layout visible items");
  [v44 _layoutVisibleItemsWithCompletion:v45];

  v46 = *(a1 + 32);
  v47 = v3[2](v3, @"layout slideover tongues");
  [v46 _layoutSlideoverTonguesWithCompletion:v47];

  v48 = *(a1 + 32);
  v49 = v3[2](v3, @"layout continuous expose strip tongue");
  [v48 _layoutContinuousExposeStripTongueAnimated:1 completion:v49];
}

uint64_t __61__SBFluidSwitcherViewController__updateLayoutWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 2112) contentViewScale];
  v2 = *(*(a1 + 32) + 1952);
  CGAffineTransformMakeScale(&v5, v3, v3);
  return [v2 setTransform:&v5];
}

- (void)_layoutVisibleItemsWithCompletion:(id)completion
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __67__SBFluidSwitcherViewController__layoutVisibleItemsWithCompletion___block_invoke;
  v3[3] = &unk_2783AE618;
  v3[4] = self;
  [MEMORY[0x277D65DA0] perform:v3 finalCompletion:completion options:0 delegate:?];
}

void __67__SBFluidSwitcherViewController__layoutVisibleItemsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = *(*(a1 + 32) + 1312);
  v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = *(a1 + 32);
        v10 = SBLayoutRoleSetAll();
        v11 = v3[2](v3, @"layout app layout");
        [v9 _layoutAppLayout:v8 roles:v10 completion:v11];

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (void)_layoutSlideoverTonguesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (self->_slideOverTongue)
  {
    slideOverTongueState = [(SBSwitcherPersonality *)self->_personality slideOverTongueState];
    slideOverTongueDirection = [(SBSwitcherPersonality *)self->_personality slideOverTongueDirection];
    appLayoutToAttachSlideOverTongue = [(SBSwitcherPersonality *)self->_personality appLayoutToAttachSlideOverTongue];
    [(SBSwitcherPersonality *)self->_personality frameForSlideOverTongueAppLayout];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    UIRectGetCenter();
    v16 = v15;
    v18 = v17;
    [(SBSwitcherPersonality *)self->_personality cornerRadiusForSlideOverTongueAppLayout];
    v20 = v19;
    v21 = [(SBSwitcherPersonality *)self->_personality animationAttributesForLayoutElement:self->_slideOverTongueLayoutElement];
    updateMode = [v21 updateMode];
    layoutUpdateMode = [v21 layoutUpdateMode];
    if (layoutUpdateMode)
    {
      v24 = layoutUpdateMode;
    }

    else
    {
      v24 = updateMode;
    }

    v48 = v24;
    positionUpdateMode = [v21 positionUpdateMode];
    if (positionUpdateMode)
    {
      v26 = positionUpdateMode;
    }

    else
    {
      v26 = updateMode;
    }

    v47 = v26;
    cornerRadiusUpdateMode = [v21 cornerRadiusUpdateMode];
    if (cornerRadiusUpdateMode)
    {
      v28 = cornerRadiusUpdateMode;
    }

    else
    {
      v28 = updateMode;
    }

    layoutSettings = [v21 layoutSettings];
    positionSettings = [v21 positionSettings];
    v31 = positionSettings;
    if (positionSettings)
    {
      v32 = positionSettings;
    }

    else
    {
      v32 = layoutSettings;
    }

    v33 = v32;

    cornerRadiusSettings = [v21 cornerRadiusSettings];
    v35 = cornerRadiusSettings;
    if (cornerRadiusSettings)
    {
      v36 = cornerRadiusSettings;
    }

    else
    {
      v36 = layoutSettings;
    }

    v37 = v36;

    direction = [(SBSlideOverTongueView *)self->_slideOverTongue direction];
    v39 = MEMORY[0x277D65DA0];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __71__SBFluidSwitcherViewController__layoutSlideoverTonguesWithCompletion___block_invoke;
    v51[3] = &unk_2783AE640;
    v40 = 2;
    v41 = v47;
    if (slideOverTongueDirection != direction && appLayoutToAttachSlideOverTongue == 0)
    {
      v41 = 2;
    }

    v55 = layoutSettings;
    v56 = v41;
    v52 = v33;
    selfCopy = self;
    v42 = v48;
    if (slideOverTongueDirection != direction && appLayoutToAttachSlideOverTongue == 0)
    {
      v42 = 2;
    }

    else
    {
      v40 = v46;
    }

    v57 = v16;
    v58 = v18;
    v59 = v40;
    v60 = v20;
    v54 = v37;
    v61 = v42;
    v62 = v8;
    v63 = v10;
    v64 = v12;
    v65 = v14;
    v43 = layoutSettings;
    v44 = v37;
    v45 = v33;
    [v39 perform:v51 finalCompletion:v5];
    [(SBSlideOverTongueView *)self->_slideOverTongue setDirection:slideOverTongueDirection state:slideOverTongueState animated:1];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }
}

void __71__SBFluidSwitcherViewController__layoutSlideoverTonguesWithCompletion___block_invoke(uint64_t a1, void (**a2)(id, __CFString *))
{
  v3 = MEMORY[0x277D75D18];
  v4 = *(a1 + 64);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __71__SBFluidSwitcherViewController__layoutSlideoverTonguesWithCompletion___block_invoke_2;
  v23[3] = &unk_2783A8C40;
  v5 = *(a1 + 32);
  v23[4] = *(a1 + 40);
  v24 = *(a1 + 72);
  v7 = a2 + 2;
  v6 = a2[2];
  v8 = a2;
  v9 = v6();
  [v3 sb_animateWithSettings:v5 mode:v4 animations:v23 completion:v9];

  v10 = MEMORY[0x277D75D18];
  v11 = *(a1 + 88);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __71__SBFluidSwitcherViewController__layoutSlideoverTonguesWithCompletion___block_invoke_3;
  v22[3] = &unk_2783A8BC8;
  v12 = *(a1 + 48);
  v22[4] = *(a1 + 40);
  v22[5] = *(a1 + 96);
  v13 = (*v7)(v8, @"slideOverTongue layout");
  [v10 sb_animateWithSettings:v12 mode:v11 animations:v22 completion:v13];

  v14 = MEMORY[0x277D75D18];
  v15 = *(a1 + 56);
  v16 = *(a1 + 104);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v17 = *(a1 + 128);
  v20 = *(a1 + 112);
  v19[2] = __71__SBFluidSwitcherViewController__layoutSlideoverTonguesWithCompletion___block_invoke_4;
  v19[3] = &unk_2783AC828;
  v19[4] = *(a1 + 40);
  v21 = v17;
  v18 = (*v7)(v8, @"slideOverTongue layout");

  [v14 sb_animateWithSettings:v15 mode:v16 animations:v19 completion:v18];
}

uint64_t __71__SBFluidSwitcherViewController__layoutSlideoverTonguesWithCompletion___block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 1440) setBounds:{0.0, 0.0, *(a1 + 56), *(a1 + 64)}];
  v2 = *(*(a1 + 32) + 1440);

  return [v2 layoutIfNeeded];
}

- (void)_applyRootContentViewClippingWithCompletion:(id)completion
{
  completionCopy = completion;
  [(SBSwitcherPersonality *)self->_personality rootContentViewMaskRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(SBSwitcherPersonality *)self->_personality animationAttributesForLayoutElement:self->_contentView];
  switcherSettings = [(SBFluidSwitcherViewController *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  clippingSettings = [v13 clippingSettings];
  v17 = clippingSettings;
  if (clippingSettings)
  {
    layoutSettings = clippingSettings;
  }

  else
  {
    layoutSettings = [animationSettings layoutSettings];
  }

  v19 = layoutSettings;

  clippingUpdateMode = [v13 clippingUpdateMode];
  if (clippingUpdateMode <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = clippingUpdateMode;
  }

  v27.origin.x = v6;
  v27.origin.y = v8;
  v27.size.width = v10;
  v27.size.height = v12;
  IsNull = CGRectIsNull(v27);
  rootDestOutClippingView = self->_rootDestOutClippingView;
  if (IsNull)
  {
    [(UIView *)rootDestOutClippingView removeFromSuperview];
    v24 = self->_rootDestOutClippingView;
    self->_rootDestOutClippingView = 0;
  }

  else
  {
    if (!rootDestOutClippingView)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __77__SBFluidSwitcherViewController__applyRootContentViewClippingWithCompletion___block_invoke;
      v26[3] = &unk_2783AC828;
      v26[4] = self;
      *&v26[5] = v6;
      *&v26[6] = v8;
      *&v26[7] = v10;
      *&v26[8] = v12;
      [MEMORY[0x277D75D18] performWithoutAnimation:v26];
      rootDestOutClippingView = self->_rootDestOutClippingView;
    }

    [(UIView *)rootDestOutClippingView frame];
    v29.origin.x = v6;
    v29.origin.y = v8;
    v29.size.width = v10;
    v29.size.height = v12;
    if (!CGRectEqualToRect(v28, v29))
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __77__SBFluidSwitcherViewController__applyRootContentViewClippingWithCompletion___block_invoke_2;
      v25[3] = &unk_2783AC828;
      v25[4] = self;
      *&v25[5] = v6;
      *&v25[6] = v8;
      *&v25[7] = v10;
      *&v25[8] = v12;
      [MEMORY[0x277D75D18] sb_animateWithSettings:v19 mode:v21 animations:v25 completion:completionCopy];
      goto LABEL_15;
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }

LABEL_15:
}

uint64_t __77__SBFluidSwitcherViewController__applyRootContentViewClippingWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1632);
  *(v3 + 1632) = v2;

  v5 = *(*(a1 + 32) + 1632);
  v6 = [MEMORY[0x277D75348] blackColor];
  [v5 setBackgroundColor:v6];

  v7 = [*(*(a1 + 32) + 1632) layer];
  [v7 setCompositingFilter:*MEMORY[0x277CDA310]];

  v8 = *(a1 + 32);
  v9 = *(v8 + 1952);
  v10 = *(v8 + 1632);

  return [v9 addSubview:v10];
}

- (void)_applyRootContentViewBlurRadiusWithCompletion:(id)completion
{
  v37[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  [(SBSwitcherPersonality *)self->_personality rootContentViewBlurRadius];
  v6 = v5;
  v7 = [(SBSwitcherPersonality *)self->_personality animationAttributesForLayoutElement:self->_contentView];
  switcherSettings = [(SBFluidSwitcherViewController *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  layoutSettings = [v7 layoutSettings];
  v11 = layoutSettings;
  if (layoutSettings)
  {
    layoutSettings2 = layoutSettings;
  }

  else
  {
    layoutSettings2 = [animationSettings layoutSettings];
  }

  v13 = layoutSettings2;

  layoutUpdateMode = [v7 layoutUpdateMode];
  if (layoutUpdateMode <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = layoutUpdateMode;
  }

  IsZero = BSFloatIsZero();
  layer = [(SBFluidSwitcherContentView *)self->_contentView layer];
  filters = [layer filters];
  v19 = filters;
  if (!IsZero)
  {
    firstObject = [filters firstObject];

    v31 = animationSettings;
    if (firstObject)
    {
      type = [firstObject type];
      v23 = *MEMORY[0x277CDA328];

      if (type == v23)
      {
        v27 = firstObject;
        [v27 setName:@"gaussianBlur"];
        v24 = v27;
        goto LABEL_18;
      }
    }

    else
    {
      v23 = *MEMORY[0x277CDA328];
    }

    v24 = [MEMORY[0x277CD9EA0] filterWithType:{v23, animationSettings}];
    [v24 setName:@"gaussianBlur"];
    [v24 setValue:&unk_28336F220 forKey:@"inputRadius"];
    layer2 = [(SBFluidSwitcherContentView *)self->_contentView layer];
    v37[0] = v24;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
    [layer2 setFilters:v26];

    v27 = 0;
LABEL_18:
    layer3 = [(SBFluidSwitcherContentView *)self->_contentView layer];
    traitCollection = [(SBFluidSwitcherViewController *)self traitCollection];
    [traitCollection displayScale];
    [layer3 setRasterizationScale:?];

    layer4 = [(SBFluidSwitcherContentView *)self->_contentView layer];
    [layer4 setShouldRasterize:1];

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __79__SBFluidSwitcherViewController__applyRootContentViewBlurRadiusWithCompletion___block_invoke_3;
    v33[3] = &unk_2783A8BC8;
    v33[4] = self;
    v33[5] = v6;
    [MEMORY[0x277D75D18] sb_animateWithSettings:v13 mode:v15 animations:v33 completion:completionCopy];

    animationSettings = v32;
    goto LABEL_19;
  }

  if (v19)
  {
    v20 = MEMORY[0x277D75D18];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __79__SBFluidSwitcherViewController__applyRootContentViewBlurRadiusWithCompletion___block_invoke;
    v36[3] = &unk_2783A8BC8;
    v36[4] = self;
    v36[5] = v6;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __79__SBFluidSwitcherViewController__applyRootContentViewBlurRadiusWithCompletion___block_invoke_2;
    v34[3] = &unk_2783AE668;
    v34[4] = self;
    v35 = completionCopy;
    [v20 sb_animateWithSettings:v13 mode:v15 animations:v36 completion:v34];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }

LABEL_19:
}

void __79__SBFluidSwitcherViewController__applyRootContentViewBlurRadiusWithCompletion___block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 1952) layer];
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  [v3 setValue:v2 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

uint64_t __79__SBFluidSwitcherViewController__applyRootContentViewBlurRadiusWithCompletion___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(*(a1 + 32) + 1952) layer];
    [v3 setFilters:0];

    v4 = [*(*(a1 + 32) + 1952) layer];
    v5 = [*(a1 + 32) traitCollection];
    [v5 displayScale];
    [v4 setRasterizationScale:?];

    v6 = [*(*(a1 + 32) + 1952) layer];
    [v6 setShouldRasterize:0];
  }

  result = *(a1 + 40);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

void __79__SBFluidSwitcherViewController__applyRootContentViewBlurRadiusWithCompletion___block_invoke_3(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 1952) layer];
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  [v3 setValue:v2 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

- (void)_layoutContinuousExposeStripTongueAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v20 = completionCopy;
  if (self->_continuousExposeStripTongue)
  {
    continuousExposeStripTongueAttributes = [(SBSwitcherPersonality *)self->_personality continuousExposeStripTongueAttributes];
    v9 = v8;
    [(SBFluidSwitcherViewController *)self containerViewBounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [(SBContinuousExposeStripTongueView *)self->_continuousExposeStripTongue setBounds:?];
    continuousExposeStripTongue = self->_continuousExposeStripTongue;
    UIRectGetCenter();
    [(SBContinuousExposeStripTongueView *)continuousExposeStripTongue setCenter:?];
    [(_UIBackdropView *)self->_continuousExposeStripTongueCaptureOnlyBackdropView setBounds:v11, v13, v15, v17];
    continuousExposeStripTongueCaptureOnlyBackdropView = self->_continuousExposeStripTongueCaptureOnlyBackdropView;
    UIRectGetCenter();
    [(_UIBackdropView *)continuousExposeStripTongueCaptureOnlyBackdropView setCenter:?];
    [(SBContinuousExposeStripTongueView *)self->_continuousExposeStripTongue setAttributes:continuousExposeStripTongueAttributes animated:v9, animatedCopy];
    completionCopy = v20;
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(v20, 1, 0);
    completionCopy = v20;
  }
}

- (void)_layoutAppLayout:(id)layout roles:(id)roles completion:(id)completion
{
  layoutCopy = layout;
  rolesCopy = roles;
  completionCopy = completion;
  v12 = rolesCopy;
  if (!v12)
  {
    [SBFluidSwitcherViewController _layoutAppLayout:a2 roles:? completion:?];
  }

  v13 = v12;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [SBFluidSwitcherViewController _layoutAppLayout:v13 roles:a2 completion:?];
  }

  v14 = MEMORY[0x277D65DA0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke;
  v17[3] = &unk_2783AE908;
  v17[4] = self;
  v18 = layoutCopy;
  v19 = v13;
  v15 = v13;
  v16 = layoutCopy;
  [v14 perform:v17 finalCompletion:completionCopy options:0 delegate:self];
}

void __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke()
{
  v0 = MEMORY[0x28223BE20]();
  v825[16] = *MEMORY[0x277D85DE8];
  v612 = v1;
  v2 = [v0[4] appLayouts];
  v3 = [v2 indexOfObject:v0[5]];

  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(v0[4] + 264) anchorPointForIndex:v3];
    v542 = v4;
    point = v5;
    [*(v0[4] + 264) frameForIndex:v3];
    v550 = v6;
    v549 = v7;
    v9 = v8;
    v11 = v10;
    [*(v0[4] + 264) scaleForIndex:v3];
    v13 = v12;
    [*(v0[4] + 264) rotationAngleForIndex:v3];
    v536 = v14;
    [*(v0[4] + 264) cornerRadiiForIndex:v3];
    v537 = v15;
    v17 = v16;
    v539 = v18;
    v535 = v19;
    [*(v0[4] + 264) minimumTranslationToKillIndex:v3];
    v531 = v20;
    v540 = v13;
    [*(v0[4] + 264) contentPageViewScaleForAppLayout:v0[5] withScale:v13];
    v538 = v21;
    v530 = [*(v0[4] + 264) shouldScaleOverlayToFillBoundsAtIndex:v3];
    v523 = [*(v0[4] + 264) shouldScaleContentToFillBoundsAtIndex:v3];
    v22 = *(v0[4] + 264);
    rect = v11;
    SBRectWithSize();
    [v22 clippingFrameForIndex:v3 withBounds:?];
    v510 = v24;
    v511 = v23;
    v508 = v26;
    v509 = v25;
    v548 = [*(v0[4] + 264) clipsToBoundsAtIndex:v3];
    v534 = [*(v0[4] + 264) maskedCornersForIndex:v3];
    [*(v0[4] + 264) perspectiveAngleForIndex:v3];
    v544 = v27;
    v543 = v28;
    v551 = [*(v0[4] + 264) meshTransformForIndex:v3];
    v29 = [*(v0[4] + 264) genieAttributesForAppLayout:v0[5]];
    v30 = [*(v0[4] + 264) wantsSpaceAccessoryViewGenieForAppLayout:v0[5]];
    v31 = *(MEMORY[0x277CD9DE8] + 16);
    *&v815.m11 = *MEMORY[0x277CD9DE8];
    *&v815.m13 = v31;
    v32 = *(MEMORY[0x277CD9DE8] + 48);
    *&v815.m21 = *(MEMORY[0x277CD9DE8] + 32);
    *&v815.m23 = v32;
    v33 = *(MEMORY[0x277CD9DE8] + 96);
    *&v815.m43 = *(MEMORY[0x277CD9DE8] + 112);
    *&v815.m41 = v33;
    v34 = *(MEMORY[0x277CD9DE8] + 64);
    *&v815.m33 = *(MEMORY[0x277CD9DE8] + 80);
    *&v815.m31 = v34;
    v35 = [v0[4] _bestSupportedHomeAffordanceOrientationForOrientation:*(v0[4] + 242) inAppLayout:v0[5]];
    v36 = v0[4];
    if (v35 != *(v36 + 242))
    {
      SBFAngleForRotationFromInterfaceOrientationToInterfaceOrientation();
      CATransform3DMakeRotation(&v815, v37, 0.0, 0.0, 1.0);
      v36 = v0[4];
    }

    v38 = [*(v36 + 264) resizeGrabberLayoutAttributesForAppLayout:v0[5]];
    v39 = [v38 leafAppLayout];
    v40 = [*(v0[4] + 165) objectForKey:v39];
    v611 = v0;
    v605 = v3;
    if (v40)
    {
      v41 = [v39 itemForLayoutRole:1];
      v42 = [v40 layoutRoleForItem:v41];

      v43 = *(v611[4] + 264);
      SBRectWithSize();
      v44 = v42;
      v0 = v611;
      [v43 frameForLayoutRole:v44 inAppLayout:v40 withBounds:?];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;
      [v611[4] separatorViewWidth];
      v54 = v53;
      v55 = [v38 edge];
      v56 = v46;
      v57 = v48;
      v58 = v50;
      v59 = v52;
      if (v55 == 2)
      {
        MaxX = CGRectGetMinX(*&v56) - v54;
      }

      else
      {
        MaxX = CGRectGetMaxX(*&v56);
      }

      v507 = MaxX;
      v829.origin.x = v46;
      v829.origin.y = v48;
      v829.size.width = v50;
      v829.size.height = v52;
      MinY = CGRectGetMinY(v829);
      v830.origin.x = v46;
      v830.origin.y = v48;
      v830.size.width = v50;
      v830.size.height = v52;
      Height = CGRectGetHeight(v830);
      v3 = v605;
    }

    else
    {
      MinY = *(MEMORY[0x277CBF3A0] + 8);
      v507 = *MEMORY[0x277CBF3A0];
      v54 = *(MEMORY[0x277CBF3A0] + 16);
      Height = *(MEMORY[0x277CBF3A0] + 24);
    }

    v533 = [*(v0[4] + 264) footerViewIconAlignmentForAppLayout:v0[5]];
    [*(v0[4] + 264) contentViewOffsetForAccessoriesOfAppLayout:v0[5]];
    v502 = v62;
    v503 = v61;
    v518 = [*(v0[4] + 264) multipleWindowsIndicatorLayoutRolesForAppLayout:v0[5]];
    v529 = [*(v0[4] + 264) shouldUseWallpaperGradientTreatment];
    v63 = [v0[4] continuousExposeIdentifiersInStrip];
    v64 = [v0[5] continuousExposeIdentifier];
    v528 = [v63 containsObject:v64];

    v604 = [*(v0[4] + 264) shouldPerformRotationAnimationForOrientationChange];
    v532 = [*(v0[4] + 264) useItemContainerFooterViewsForAppLayout:v0[5]];
    v524 = [*(v0[4] + 264) appLayoutToAttachSlideOverTongue];
    v65 = [v524 allItems];
    v66 = [v65 count];

    if (v66 >= 2)
    {
      v67 = [v0[4] displayItemInSlideOver];
      if (v67)
      {
        v68 = [v524 leafAppLayoutForItem:v67];

        v524 = v68;
      }
    }

    v69 = [*(v0[4] + 264) animationAttributesForLayoutElement:v0[5]];
    v70 = [v69 updateMode];
    v71 = [v69 layoutUpdateMode];
    if (v71)
    {
      v72 = v71;
    }

    else
    {
      v72 = v70;
    }

    v500 = v72;
    v73 = [v69 positionUpdateMode];
    if (v73)
    {
      v74 = v73;
    }

    else
    {
      v74 = v70;
    }

    v512 = v74;
    v75 = [v69 scaleUpdateMode];
    if (v75)
    {
      v76 = v75;
    }

    else
    {
      v76 = v70;
    }

    v504 = v76;
    v77 = [v69 cornerRadiusUpdateMode];
    if (v77)
    {
      v78 = v77;
    }

    else
    {
      v78 = v70;
    }

    v499 = v78;
    v79 = [v69 clippingUpdateMode];
    if (v79)
    {
      v80 = v79;
    }

    else
    {
      v80 = v70;
    }

    v501 = v80;
    v81 = [v69 layoutSettings];
    v82 = [v69 positionSettings];
    v83 = v82;
    if (v82)
    {
      v84 = v82;
    }

    else
    {
      v84 = v81;
    }

    v516 = v84;

    v85 = [v69 scaleSettings];
    v86 = v85;
    if (v85)
    {
      v87 = v85;
    }

    else
    {
      v87 = v81;
    }

    v515 = v87;

    v88 = [v69 cornerRadiusSettings];
    v89 = v88;
    if (v88)
    {
      v90 = v88;
    }

    else
    {
      v90 = v81;
    }

    v514 = v90;

    v583 = v69;
    v91 = [v69 clippingSettings];
    v92 = v91;
    v517 = v81;
    if (v91)
    {
      v93 = v91;
    }

    else
    {
      v93 = v81;
    }

    v513 = v93;

    if (kKeyboardHeightIncludingAccessory_block_invoke_onceToken != -1)
    {
      __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_cold_1();
    }

    v94 = +[SBPlatformController sharedInstance];
    v95 = [v94 isInternalInstall];

    if (v95)
    {
      if (([v0[4] _isPointValid:{v542, point}] & 1) == 0)
      {
        v96 = SBLogAppSwitcher();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
        {
          v827.x = v542;
          v827.y = point;
          v485 = NSStringFromCGPoint(v827);
          v486 = v0[4];
          v814[0] = MEMORY[0x277D85DD0];
          v814[1] = 3221225472;
          v814[2] = __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_3;
          v814[3] = &unk_2783AE690;
          v814[4] = v486;
          v487 = [v486 _modifierViolatingTest:v814 forAnchorPointForIndex:v3];
          v488 = [v0[5] succinctDescription];
          *buf = 138544130;
          *&buf[4] = v485;
          *&buf[12] = 2114;
          *&buf[14] = v487;
          *&buf[22] = 2114;
          *&buf[24] = v488;
          LOWORD(v820[0]) = 2048;
          *(v820 + 2) = v605;
          _os_log_error_impl(&dword_21ED4E000, v96, OS_LOG_TYPE_ERROR, "Got an invalid anchorPointForIndex: %{public}@ from modifier: %{public}@ for appLayout: %{public}@ atIndex: %lu", buf, 0x2Au);

          v3 = v605;
        }
      }

      if (([v0[4] _isFrameValid:{v550, v549, v9, rect}] & 1) == 0)
      {
        v97 = SBLogAppSwitcher();
        if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
        {
          v837.origin.x = v550;
          v837.origin.y = v549;
          v837.size.width = v9;
          v837.size.height = rect;
          v489 = NSStringFromCGRect(v837);
          v490 = v0[4];
          v813[0] = MEMORY[0x277D85DD0];
          v813[1] = 3221225472;
          v813[2] = __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_687;
          v813[3] = &unk_2783AE6B8;
          v813[4] = v490;
          v491 = [v490 _modifierViolatingTest:v813 forFrameForIndex:v3];
          v492 = [v0[5] succinctDescription];
          *buf = 138544130;
          *&buf[4] = v489;
          *&buf[12] = 2114;
          *&buf[14] = v491;
          *&buf[22] = 2114;
          *&buf[24] = v492;
          LOWORD(v820[0]) = 2048;
          *(v820 + 2) = v605;
          _os_log_error_impl(&dword_21ED4E000, v97, OS_LOG_TYPE_ERROR, "Got an invalid frameForIndex: %{public}@ from modifier: %{public}@ for appLayout: %{public}@ atIndex: %lu", buf, 0x2Au);

          v3 = v605;
        }
      }

      if ((CGFloatIsValid() & 1) == 0)
      {
        v98 = SBLogAppSwitcher();
        if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          v493 = [v0[4] _modifierViolatingValidFloatForScaleForIndex:v3];
          v494 = [v0[5] succinctDescription];
          *buf = 134218754;
          *&buf[4] = v540;
          *&buf[12] = 2114;
          *&buf[14] = v493;
          *&buf[22] = 2114;
          *&buf[24] = v494;
          LOWORD(v820[0]) = 2048;
          *(v820 + 2) = v3;
          _os_log_error_impl(&dword_21ED4E000, v98, OS_LOG_TYPE_ERROR, "Got an invalid scaleForIndex: %f from modifier: %{public}@ for appLayout: %{public}@ atIndex: %lu", buf, 0x2Au);
        }
      }

      if (([v0[4] _isPointValid:{v544, v543}] & 1) == 0)
      {
        v99 = SBLogAppSwitcher();
        if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
        {
          v828.x = v544;
          v828.y = v543;
          v495 = NSStringFromCGPoint(v828);
          v496 = v0[4];
          v812[0] = MEMORY[0x277D85DD0];
          v812[1] = 3221225472;
          v812[2] = __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_689;
          v812[3] = &unk_2783AE690;
          v812[4] = v496;
          v497 = [v496 _modifierViolatingTest:v812 forPerspectiveAngleForIndex:v3];
          v498 = [v0[5] succinctDescription];
          *buf = 138544130;
          *&buf[4] = v495;
          *&buf[12] = 2114;
          *&buf[14] = v497;
          *&buf[22] = 2114;
          *&buf[24] = v498;
          LOWORD(v820[0]) = 2048;
          *(v820 + 2) = v605;
          _os_log_error_impl(&dword_21ED4E000, v99, OS_LOG_TYPE_ERROR, "Got an invalid perspectiveAngleForIndex: %{public}@ from modifier: %{public}@ for appLayout: %{public}@ atIndex: %lu", buf, 0x2Au);

          v3 = v605;
        }
      }
    }

    [v0[5] leafAppLayouts];
    v808 = 0u;
    v809 = 0u;
    v810 = 0u;
    obj = v811 = 0u;
    v545 = v17;
    v520 = v54;
    v595 = [obj countByEnumeratingWithState:&v808 objects:v825 count:16];
    v519 = v29;
    if (v595)
    {
      v594 = *v809;
      v527 = v550 + (0.5 - v542) * v9;
      if (v30)
      {
        v100 = 0;
      }

      else
      {
        v100 = v29;
      }

      v526 = v100;
      v621 = (v612 + 16);
      v522 = v9 * 0.5;
      v584 = v9;
      do
      {
        for (i = 0; i != v595; i = v108 + 1)
        {
          if (*v809 != v594)
          {
            objc_enumerationMutation(obj);
          }

          v629 = i;
          v102 = *(*(&v808 + 1) + 8 * i);
          v103 = v0[5];
          v104 = [v102 allItems];
          v105 = [v104 firstObject];
          v106 = [v103 layoutRoleForItem:v105];

          v107 = v106;
          if (![v0[6] containsRole:v106])
          {
            v108 = v629;
            continue;
          }

          v632 = [v0[4] _itemContainerForAppLayoutIfExists:v102];
          if (v632)
          {
            v606 = [*(v0[4] + 264) shouldPinLayoutRolesToSpace:v3];
            if (v606)
            {
              v625 = [*(v0[4] + 264) shouldUseAnchorPointToPinLayoutRolesToSpace:v3];
            }

            else
            {
              v625 = 0;
            }

            v109 = [*(v0[4] + 264) animationAttributesForLayoutRole:v106 inAppLayout:v0[5] withAnimationAttributes:v583];
            v110 = [v109 updateMode];
            v111 = [v109 layoutUpdateMode];
            if (v111)
            {
              v112 = v111;
            }

            else
            {
              v112 = v110;
            }

            v592 = v112;
            v113 = [v109 positionUpdateMode];
            if (v113)
            {
              v114 = v113;
            }

            else
            {
              v114 = v110;
            }

            v609 = v114;
            v115 = [v109 scaleUpdateMode];
            if (v115)
            {
              v116 = v115;
            }

            else
            {
              v116 = v110;
            }

            v575 = v116;
            v117 = [v109 cornerRadiusUpdateMode];
            if (v117)
            {
              v118 = v117;
            }

            else
            {
              v118 = v110;
            }

            v564 = v118;
            v119 = [v109 clippingUpdateMode];
            if (v119)
            {
              v120 = v119;
            }

            else
            {
              v120 = v110;
            }

            v547 = v120;
            v121 = [v109 meshUpdateMode];
            if (!v121)
            {
              v121 = [v109 updateMode];
            }

            v546 = v121;
            v122 = [v109 layoutSettings];
            v123 = [v109 positionSettings];
            v124 = v123;
            if (v123)
            {
              v125 = v123;
            }

            else
            {
              v125 = v122;
            }

            v596 = v125;

            v126 = [v109 scaleSettings];
            v127 = v126;
            if (v126)
            {
              v128 = v126;
            }

            else
            {
              v128 = v122;
            }

            v572 = v128;

            v129 = [v109 cornerRadiusSettings];
            v130 = v129;
            if (v129)
            {
              v131 = v129;
            }

            else
            {
              v131 = v122;
            }

            v593 = v131;

            v573 = v109;
            v132 = [v109 clippingSettings];
            v133 = v132;
            v565 = v122;
            if (v132)
            {
              v134 = v132;
            }

            else
            {
              v134 = v122;
            }

            v582 = v134;

            v135 = v0[5];
            v136 = *(v0[4] + 264);
            SBRectWithSize();
            [v136 frameForLayoutRole:v107 inAppLayout:v135 withBounds:?];
            v138 = v137;
            v140 = v139;
            v142 = v141;
            v144 = v143;
            [*(v0[4] + 264) scaleForLayoutRole:v107 inAppLayout:v0[5]];
            v146 = v145;
            v147 = v0[5];
            v148 = *(v0[4] + 264);
            SBRectWithSize();
            [v148 clippingFrameForLayoutRole:v107 inAppLayout:v147 atIndex:v605 withBounds:?];
            v569 = v149;
            v568 = v150;
            v567 = v151;
            rect2 = v152;
            [*(v0[4] + 264) perspectiveAngleForLayoutRole:v107 inAppLayout:v0[5] withPerspectiveAngle:{v544, v543}];
            v154 = v153;
            v156 = v155;
            v157 = +[SBPlatformController sharedInstance];
            LODWORD(v148) = [v157 isInternalInstall];

            v622 = v107;
            v576 = v140;
            if (v148)
            {
              if (([v0[4] _isFrameValid:{v138, v140, v142, v144}] & 1) == 0)
              {
                v158 = SBLogAppSwitcher();
                if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
                {
                  v836.origin.x = v138;
                  v836.origin.y = v140;
                  v836.size.width = v142;
                  v836.size.height = v144;
                  v398 = NSStringFromCGRect(v836);
                  v399 = v0[4];
                  v400 = v0[5];
                  v807[0] = MEMORY[0x277D85DD0];
                  v807[1] = 3221225472;
                  v807[2] = __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_690;
                  v807[3] = &unk_2783AE6B8;
                  v807[4] = v399;
                  SBRectWithSize();
                  v401 = [v399 _modifierViolatingTest:v807 forFrameForLayoutRole:v622 inAppLayout:v400 withBounds:?];
                  v402 = [v0[5] succinctDescription];
                  v403 = [v0[5] itemForLayoutRole:v622];
                  *buf = 138544642;
                  *&buf[4] = v398;
                  *&buf[12] = 2114;
                  *&buf[14] = v401;
                  *&buf[22] = 2048;
                  *&buf[24] = v622;
                  LOWORD(v820[0]) = 2114;
                  *(v820 + 2) = v402;
                  WORD5(v820[0]) = 2048;
                  *(v820 + 12) = v605;
                  WORD2(v820[1]) = 2114;
                  *(&v820[1] + 6) = v403;
                  _os_log_error_impl(&dword_21ED4E000, v158, OS_LOG_TYPE_ERROR, "Got an invalid frameForLayoutRole: %{public}@ from modifier: %{public}@ for layoutRole: %lu in appLayout: %{public}@ atIndex: %lu item: %{public}@", buf, 0x3Eu);

                  v107 = v622;
                }
              }

              if ((CGFloatIsValid() & 1) == 0)
              {
                v159 = SBLogAppSwitcher();
                if (os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
                {
                  v404 = [v0[4] _modifierViolatingValidFloatForScaleForLayoutRole:v107 inAppLayout:v0[5]];
                  v405 = [v0[5] succinctDescription];
                  v406 = [v0[5] itemForLayoutRole:v622];
                  *buf = 134219010;
                  *&buf[4] = v146;
                  *&buf[12] = 2114;
                  *&buf[14] = v404;
                  *&buf[22] = 2048;
                  *&buf[24] = v622;
                  LOWORD(v820[0]) = 2114;
                  *(v820 + 2) = v405;
                  WORD5(v820[0]) = 2114;
                  *(v820 + 12) = v406;
                  _os_log_error_impl(&dword_21ED4E000, v159, OS_LOG_TYPE_ERROR, "Got an invalid scaleForLayoutRole: %f from modifier: %{public}@ for layoutRole: %lu in appLayout: %{public}@ item: %{public}@", buf, 0x34u);
                }
              }

              if (([v0[4] _isPointValid:{v154, v156}] & 1) == 0)
              {
                v160 = SBLogAppSwitcher();
                if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
                {
                  v826.x = v154;
                  v826.y = v156;
                  v407 = NSStringFromCGPoint(v826);
                  v408 = v0[4];
                  v409 = v0[5];
                  v806[0] = MEMORY[0x277D85DD0];
                  v806[1] = 3221225472;
                  v806[2] = __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_691;
                  v806[3] = &unk_2783AE690;
                  v806[4] = v408;
                  v410 = [v408 _modifierViolatingTest:v806 forPerspectiveAngleForLayoutRole:v622 inAppLayout:v409 withPerspectiveAngle:{v544, v543}];
                  v411 = [v0[5] succinctDescription];
                  v412 = [v0[5] itemForLayoutRole:v622];
                  *buf = 138544642;
                  *&buf[4] = v407;
                  *&buf[12] = 2114;
                  *&buf[14] = v410;
                  *&buf[22] = 2048;
                  *&buf[24] = v622;
                  LOWORD(v820[0]) = 2114;
                  *(v820 + 2) = v411;
                  WORD5(v820[0]) = 2048;
                  *(v820 + 12) = v605;
                  WORD2(v820[1]) = 2114;
                  *(&v820[1] + 6) = v412;
                  _os_log_error_impl(&dword_21ED4E000, v160, OS_LOG_TYPE_ERROR, "Got an invalid perspectiveAngleForLayoutRole: %{public}@ from modifier: %{public}@ for layoutRole: %lu in appLayout: %{public}@ atIndex: %lu item: %{public}@", buf, 0x3Eu);
                }
              }
            }

            v161 = v146;
            v617 = v144;
            v619 = v142;
            v570 = v156;
            v571 = v154;
            v162 = -(v138 - v584 * v542);
            v163 = -(v140 - rect * point);
            v164 = 0.5 - point;
            v165 = 0.5 - v542;
            v613 = point;
            v615 = v542;
            if (v625)
            {
              v615 = v162 / v619;
              v165 = 0.5 - v162 / v619;
              v613 = v163 / v144;
              v164 = 0.5 - v163 / v144;
            }

            v601 = -(v140 - rect * point);
            v587 = v138;
            v525 = v549 + (0.5 - point) * rect;
            v166 = v525 + v140 - v164 * v144;
            v167 = [v0[4] windowManagementContext];
            if ([v167 isAutomaticStageCreationEnabled])
            {
              v168 = v540;
              v591 = v527 + v138 - v165 * v619 + (1.0 - v161) * (v619 * v165) * v540;
              v586 = v166 + (1.0 - v161) * (v144 * v164) * v540;
              v169 = v545;
            }

            else
            {
              v591 = v527 + v138 - v165 * v619;
              v586 = v525 + v140 - v164 * v144;
              v169 = v545;
              v168 = v540;
            }

            v170 = v606 & (v625 ^ 1);

            v581 = v168 * v161;
            v171 = 0.0;
            v172 = 0.0;
            v173 = v619;
            if (v170)
            {
              v174 = [v0[4] windowManagementContext];
              if ([v174 isChamoisOrFlexibleWindowing])
              {
                v175 = v168;
              }

              else
              {
                v175 = v168 * v161;
              }

              v172 = v619 * (-(v138 - v584 * v542) / v619 - v615) * (1.0 - v175);
              v171 = v144 * (v601 / v144 - v613) * (1.0 - v175);
            }

            v563 = v171;
            v574 = v172;
            v176 = [v632 layer];
            [v176 anchorPoint];
            v178 = v177;
            v180 = v179;

            v181 = v180 == v613 && v178 == v615;
            v588 = v102;
            if (v181)
            {
              v182 = v586;
            }

            else
            {
              v182 = v586;
              if (v609 == 4)
              {
                v183 = [v632 layer];
                v184 = [v183 presentationModifiers];

                v185 = [v184 bs_containsObjectPassingTest:&__block_literal_global_694];
                v186 = 4;
                if (v185)
                {
                  v186 = 5;
                }

                v609 = v186;
              }
            }

            v187 = [v632 layer];
            v188 = [v187 presentationModifiers];

            v189 = [v188 bs_containsObjectPassingTest:&__block_literal_global_700];
            v823 = 0u;
            v824 = 0u;
            v821 = 0u;
            v822 = 0u;
            memset(v820, 0, sizeof(v820));
            memset(buf, 0, sizeof(buf));
            v190 = [v632 layer];
            v191 = v190;
            if (v190)
            {
              [v190 transform];
            }

            else
            {
              v823 = 0u;
              v824 = 0u;
              v821 = 0u;
              v822 = 0u;
              memset(v820, 0, sizeof(v820));
              memset(buf, 0, sizeof(buf));
            }

            if (v189 & 1 | ((v170 & 1) == 0))
            {
              v192 = v605;
            }

            else
            {
              v192 = v605;
              if (BSFloatEqualToFloat() && BSFloatEqualToFloat())
              {
                v193 = BSFloatEqualToFloat();
                v194 = v575;
                if (!v193)
                {
                  v194 = v609;
                }

                v575 = v194;
              }
            }

            if ((v625 & 1) != 0 || v604)
            {
              v195 = [v632 layer];
              [v195 anchorPoint];
              if (BSFloatEqualToFloat())
              {
                v196 = [v632 layer];
                [v196 anchorPoint];
                v197 = BSFloatEqualToFloat();

                if (v197)
                {
                  goto LABEL_196;
                }
              }

              else
              {
              }

              v198 = [v632 layer];
              [v198 position];
              v200 = v199;
              v202 = v201;
              [v198 bounds];
              v204 = v203;
              v206 = v205;
              [v198 anchorPoint];
              v208 = v207;
              v210 = v209;
              v211 = 0uLL;
              v823 = 0u;
              v824 = 0u;
              v821 = 0u;
              v822 = 0u;
              memset(v820, 0, sizeof(v820));
              memset(buf, 0, sizeof(buf));
              if (v198)
              {
                [v198 transform];
                v211 = 0uLL;
              }

              v805 = v211;
              v804 = v211;
              v803 = v211;
              v802 = v211;
              v602 = v198;
              v212 = [v198 presentationModifiers];
              v213 = [v212 countByEnumeratingWithState:&v802 objects:v818 count:16];
              if (v213)
              {
                v214 = v213;
                v215 = *v803;
                do
                {
                  for (j = 0; j != v214; ++j)
                  {
                    if (*v803 != v215)
                    {
                      objc_enumerationMutation(v212);
                    }

                    v217 = *(*(&v802 + 1) + 8 * j);
                    v218 = [v217 keyPath];
                    v219 = [v218 isEqual:@"position"];

                    if (v219)
                    {
                      v220 = [v217 value];
                      [v220 CGPointValue];
                      v200 = v221;
                      v202 = v222;
                    }

                    else
                    {
                      v223 = [v217 keyPath];
                      v224 = [v223 isEqual:@"bounds"];

                      if (v224)
                      {
                        v220 = [v217 value];
                        [v220 CGRectValue];
                        v204 = v225;
                        v206 = v226;
                      }

                      else
                      {
                        v227 = [v217 keyPath];
                        v228 = [v227 isEqual:@"anchorPoint"];

                        if (v228)
                        {
                          v220 = [v217 value];
                          [v220 CGPointValue];
                          v208 = v229;
                          v210 = v230;
                        }

                        else
                        {
                          v231 = [v217 keyPath];
                          v232 = [v231 isEqual:@"transform"];

                          if (!v232)
                          {
                            continue;
                          }

                          v233 = [v217 value];
                          v220 = v233;
                          if (v233)
                          {
                            [v233 CATransform3DValue];
                          }

                          else
                          {
                            v801 = 0u;
                            v800 = 0u;
                            v799 = 0u;
                            v798 = 0u;
                            v797 = 0u;
                            v796 = 0u;
                            v795 = 0u;
                            v794 = 0u;
                          }

                          v821 = v798;
                          v822 = v799;
                          v823 = v800;
                          v824 = v801;
                          *buf = v794;
                          *&buf[16] = v795;
                          v820[0] = v796;
                          v820[1] = v797;
                        }
                      }
                    }
                  }

                  v214 = [v212 countByEnumeratingWithState:&v802 objects:v818 count:16];
                }

                while (v214);
              }

              v234 = *&v823;
              v235 = *buf;
              v236 = *(v820 + 1);
              v237 = 0.0;
              if ((v625 & 1) == 0)
              {
                v237 = *&v823;
              }

              v599 = v237;
              if ((v609 - 3) > 0xFFFFFFFFFFFFFFFDLL)
              {
                v249 = 2;
                v0 = v611;
                v250 = v602;
              }

              else
              {
                v597 = *(v820 + 1);
                v793 = 0u;
                v792 = 0u;
                v791 = 0u;
                v790 = 0u;
                v238 = [v602 presentationModifiers];
                v239 = [v238 countByEnumeratingWithState:&v790 objects:v817 count:16];
                v0 = v611;
                if (v239)
                {
                  v240 = v239;
                  v241 = *v791;
                  while (2)
                  {
                    for (k = 0; k != v240; ++k)
                    {
                      if (*v791 != v241)
                      {
                        objc_enumerationMutation(v238);
                      }

                      v243 = *(*(&v790 + 1) + 8 * k);
                      v244 = [v243 keyPath];
                      if ([v244 isEqualToString:@"position"])
                      {
                        goto LABEL_189;
                      }

                      v245 = [v243 keyPath];
                      if ([v245 isEqualToString:@"bounds"])
                      {

LABEL_189:
                        v248 = v609;
                        goto LABEL_191;
                      }

                      v246 = [v243 keyPath];
                      v247 = [v246 isEqualToString:@"transform"];

                      if (v247)
                      {
                        v248 = v609;
                        v0 = v611;
                        goto LABEL_191;
                      }

                      v0 = v611;
                    }

                    v240 = [v238 countByEnumeratingWithState:&v790 objects:v817 count:16];
                    v248 = 2;
                    if (v240)
                    {
                      continue;
                    }

                    break;
                  }
                }

                else
                {
                  v248 = 2;
                }

LABEL_191:

                if (v606)
                {
                  v249 = v248;
                }

                else
                {
                  v249 = v609;
                }

                v250 = v602;
                v236 = v597;
              }

              v251 = v202 - v206 * v236 * v210 + v613 * (v206 * v236);
              v252 = MEMORY[0x277D75D18];
              v782[0] = MEMORY[0x277D85DD0];
              v782[1] = 3221225472;
              v782[2] = __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_3_710;
              v782[3] = &unk_2783AE728;
              v253 = v632;
              v785 = v615;
              v786 = v613;
              v787 = v234 + v200 - v204 * v235 * v208 + v615 * (v204 * v235);
              v788 = v251;
              v789 = v599;
              v254 = v0[4];
              v783 = v253;
              v784 = v254;
              [v252 sb_animateWithSettings:v596 mode:v249 animations:v782 completion:0];

              v192 = v605;
              v169 = v545;
              v102 = v588;
              v173 = v619;
              v144 = v617;
              v138 = v587;
              v182 = v586;
            }

LABEL_196:
            v255 = v622;
            [*(v0[4] + 264) cornerRadiiForLayoutRole:v622 inAppLayout:v0[5] withCornerRadii:{v537, v169, v539, v535}];
            v580 = v256;
            v579 = v257;
            v578 = v258;
            v577 = v259;
            v555 = [*(v0[4] + 264) maskedCornersForLayoutRole:v622 inAppLayout:v0[5] withMaskedCorners:v534];
            v260 = [*(v0[4] + 264) isLayoutRoleBlurred:v622 inAppLayout:v0[5]];
            v261 = [*(v0[4] + 264) blurTargetPreferenceForLayoutRole:v622 inAppLayout:v0[5]];
            v554 = [*(v0[4] + 264) canLayoutRoleParticipateInSwitcherDragAndDrop:v622 appLayout:v0[5]];
            v553 = [*(v0[4] + 264) isLayoutRoleDraggable:v622 inAppLayout:v0[5]];
            v561 = [*(v0[4] + 264) shouldUseNonuniformSnapshotScalingForLayoutRole:v622 inAppLayout:v0[5]];
            if (SBFIsFullScreenLetterboxingAvailable())
            {
              v262 = __sb__runningInSpringBoard();
              v263 = v262;
              if (v262)
              {
                if (SBFEffectiveDeviceClass() != 2)
                {
LABEL_213:
                  v255 = v622;
                  goto LABEL_214;
                }

LABEL_201:
                v264 = [v0[4] windowManagementContext];
                v265 = [v264 isChamoisOrFlexibleWindowing];

                if (v263)
                {
                  if (!v265)
                  {
LABEL_203:
                    v192 = v605;
                    goto LABEL_213;
                  }
                }

                else
                {

                  if ((v265 & 1) == 0)
                  {
                    goto LABEL_203;
                  }
                }

                v266 = [v0[5] itemForLayoutRole:v622];
                v267 = +[SBApplicationController sharedInstance];
                v268 = [v267 applicationForDisplayItem:v266];

                if ([v268 classicAppFullScreen] && (objc_msgSend(v268, "classicAppPhoneAppRunningOnPad") & 1) == 0)
                {
                  if ([v268 onlySupportsOneOrientation])
                  {
                    v561 = 0;
                    v523 = 0;
                  }

                  else
                  {
                    v269 = [v0[4] _sbWindowScene];
                    v270 = [v269 isExtendedDisplayWindowScene] ^ 1;

                    v561 = v270;
                    v523 = v270;
                  }
                }

                v192 = v605;
              }

              else
              {
                v521 = [MEMORY[0x277D75418] currentDevice];
                if ([v521 userInterfaceIdiom] == 1)
                {
                  goto LABEL_201;
                }

                v266 = v521;
              }

              goto LABEL_213;
            }

LABEL_214:
            [*(v0[4] + 264) blurDelayForLayoutRole:v255 inAppLayout:v0[5]];
            v272 = v271;
            [*(v0[4] + 264) blurViewIconScaleForIndex:v192];
            v598 = v273;
            [*(v0[4] + 264) contentViewOffsetForLayoutRole:v255 inAppLayout:v0[5]];
            v275 = v274;
            v558 = v276;
            [*(v0[4] + 264) contentPageViewScaleForLayoutRole:v255 inAppLayout:v0[5] withContentPageViewScale:v538];
            v278 = v277;
            v279 = [*(v0[4] + 264) shouldTetherItemsAndAccessoriesInAppLayout:v0[5]];
            v280 = 0.5;
            if (v279)
            {
              v280 = (v522 - v138) / v173;
            }

            v557 = v280;
            v781[0] = MEMORY[0x277D85DD0];
            v781[1] = 3221225472;
            v781[2] = __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_6;
            v781[3] = &unk_2783A8C18;
            v781[4] = v0[4];
            v603 = MEMORY[0x223D6F7F0](v781);
            v780[0] = MEMORY[0x277D85DD0];
            v780[1] = 3221225472;
            v780[2] = __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_7;
            v780[3] = &unk_2783A8C18;
            v780[4] = v0[4];
            v600 = MEMORY[0x223D6F7F0](v780);
            v590 = [*(v0[4] + 252) objectForKey:v102];
            if (v261 == 1)
            {
              v281 = 0;
            }

            else
            {
              v281 = v260 & (v590 != 0);
            }

            v282 = v632;
            [v632 bounds];
            v560 = v278;
            v559 = v275;
            if (v173 == v284 && v144 == v283)
            {
              v556 = 0;
              v285 = v591;
            }

            else
            {
              v286 = [*(v0[4] + 264) resizeProgressNotificationsForLayoutRole:v255 inAppLayout:v0[5]];
              v285 = v591;
              if ([v286 count])
              {
                v287 = v0[4];
                v288 = objc_opt_self();
                v556 = [v287 _animatablePropertyWithNotifications:v286 progressEventType:v288];

                v282 = v632;
              }

              else
              {
                v556 = 0;
              }

              v255 = v622;
            }

            [v282 center];
            v290 = v289;
            v292 = v291;
            UIRectGetCenter();
            if (v290 == v294 && v292 == v293)
            {
              v552 = 0;
            }

            else
            {
              v295 = [*(v0[4] + 264) repositionProgressNotificationsForLayoutRole:v255 inAppLayout:v0[5]];
              if ([v295 count])
              {
                v296 = v0[4];
                v297 = objc_opt_self();
                v552 = [v296 _animatablePropertyWithNotifications:v295 progressEventType:v297];

                v0 = v611;
              }

              else
              {
                v552 = 0;
              }

              v282 = v632;
            }

            if (v604)
            {
              v589 = [v0[4] _appLayoutRequiresLegacyRotationSupport:v0[5]];
            }

            else
            {
              v589 = 0;
            }

            v298 = (*(v612 + 2))(v612, @"genie attributes");
            [v282 setGenieAttributes:v526 mode:v592 completion:v298];

            if (*(v0[4] + 180) && [v524 isOrContainsAppLayout:v102])
            {
              v299 = *(v0[4] + 180);
            }

            else
            {
              v299 = 0;
            }

            [v282 setSlideOverTonguePortalSourceView:v299];
            [v282 setShouldScaleOverlayToFillBounds:v530];
            [v282 setPositionAnimationsBeginFromModelState:v604];
            [v282 setTransformAnimationsAreLegacyCounterRotations:v589];
            v300 = [v282 contentView];
            if (objc_opt_respondsToSelector())
            {
              [v300 setShouldStretchToBounds:v523 & 1];
            }

            if (objc_opt_respondsToSelector())
            {
              [v300 setUsesNonuniformScaling:v561];
            }

            v562 = v300;
            v301 = v260 & (v281 ^ 1);
            [v282 setDraggable:v553];
            [v282 setSupportsSwitcherDragAndDrop:v554];
            if (v590)
            {
              [v590 setLiveContentBlurEnabled:v281 duration:v603 blurDelay:v600 iconViewScale:0.25 began:v272 completion:v598];
              v302 = [*(v0[4] + 245) activeTransitionContext];
              if (v302)
              {
                v303 = 1;
              }

              else
              {
                v304 = [*(v0[4] + 245) activeGesture];
                v303 = v304 != 0;
              }

              [v0[4] _applyOcclusionStateToLiveContentOverlay:v590 forLayoutRole:v255 inAppLayout:v0[5] isTransitioning:v303];
              v282 = v632;
            }

            [v282 setBlurred:v301 duration:v603 blurDelay:v600 iconViewScale:0.25 began:v272 completion:v598];
            v305 = [*(v0[4] + 264) shouldAllowGroupOpacityForAppLayout:v0[5]];
            v306 = [v282 layer];
            [v306 setAllowsGroupOpacity:v305];

            v307 = (*(v612 + 2))(v612, @"center");
            v308 = v282;
            v309 = MEMORY[0x277D75D18];
            v769[0] = MEMORY[0x277D85DD0];
            v769[1] = 3221225472;
            v769[2] = __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_8;
            v769[3] = &unk_2783AE750;
            v778 = v625;
            v779 = v604;
            v310 = v308;
            v770 = v310;
            v772 = v615;
            v773 = v613;
            v774 = v285;
            v775 = v182;
            v776 = v173;
            v777 = v144;
            v771 = v552;
            v766[0] = MEMORY[0x277D85DD0];
            v766[1] = 3221225472;
            v766[2] = __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_9;
            v766[3] = &unk_2783AE668;
            v626 = v771;
            v767 = v626;
            v616 = v307;
            v768 = v616;
            [v309 sb_animateWithSettings:v596 mode:v609 animations:v769 completion:v766];
            [v310 setMaskedCorners:v555];
            v311 = (*(v612 + 2))(v612, @"corner radius");
            v312 = MEMORY[0x277D75D18];
            v760[0] = MEMORY[0x277D85DD0];
            v760[1] = 3221225472;
            v760[2] = __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_10;
            v760[3] = &unk_2783AC828;
            v313 = v310;
            v761 = v313;
            v762 = v580;
            v763 = v579;
            v764 = v578;
            v765 = v577;
            v758[0] = MEMORY[0x277D85DD0];
            v758[1] = 3221225472;
            v758[2] = __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_11;
            v758[3] = &unk_2783AE778;
            v614 = v311;
            v759 = v614;
            [v312 sb_animateWithSettings:v593 mode:v564 animations:v760 completion:v758];
            [*(v0[4] + 264) wallpaperGradientAttributesForLayoutRole:v622 inAppLayout:v0[5]];
            v315 = v314;
            v317 = v316;
            if ((([obj count] > 1) & v528) == 1)
            {
              v831.origin.x = v587;
              v831.origin.y = v576;
              v831.size.width = v173;
              v831.size.height = v144;
              v318 = (v315 - v317) * CGRectGetMinX(v831);
              v832.origin.x = v550;
              v832.origin.y = v549;
              v832.size.width = v584;
              v832.size.height = rect;
              v319 = v317 + v318 / CGRectGetWidth(v832);
              v833.origin.x = v587;
              v182 = v586;
              v833.origin.y = v576;
              v833.size.width = v619;
              v833.size.height = v617;
              v320 = (v315 - v317) * CGRectGetMaxX(v833);
              v834.origin.x = v550;
              v834.origin.y = v549;
              v834.size.width = v584;
              v144 = v617;
              v834.size.height = rect;
              v315 = v317 + v320 / CGRectGetWidth(v834);
              v317 = v319;
              v173 = v619;
            }

            v321 = [v583 opacityUpdateMode];
            if (!v321)
            {
              v321 = [v583 updateMode];
            }

            v322 = [v583 opacitySettings];
            v323 = v322;
            if (v322)
            {
              v324 = v322;
            }

            else
            {
              v324 = [v583 layoutSettings];
            }

            v325 = MEMORY[0x277D75D18];
            v753[0] = MEMORY[0x277D85DD0];
            v753[1] = 3221225472;
            v753[2] = __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_12;
            v753[3] = &unk_2783AE7A0;
            v326 = v313;
            v754 = v326;
            v757 = v529;
            v755 = v315;
            v756 = v317;
            v327 = (*(v612 + 2))(v612, @"wallpaperGradientAttributes");
            [v325 sb_animateWithSettings:v324 mode:v321 animations:v753 completion:v327];

            v620 = v324;
            if ([v0[4] isJindoEnabled])
            {
              v328 = [v326 layer];
              v329 = [v328 valueForKey:@"meshTransform"];
              if (v329)
              {
                v330 = 1;
              }

              else
              {
                v330 = v551 == 0;
              }

              v331 = !v330;

              v332 = [v326 layer];
              v333 = [v332 presentationModifiers];
              v334 = [v333 bs_containsObjectPassingTest:&__block_literal_global_738];

              v9 = v584;
              v335 = v560;
              if ((v331 & 1) != 0 || v334)
              {
                v336 = [*(v611[4] + 264) identityMeshTransformForIndex:v605];
                if (!v331)
                {
                  goto LABEL_266;
                }
              }

              else
              {
                v336 = 0;
                if (!v331)
                {
LABEL_266:
                  if (v551)
                  {
                    v337 = 0;
                  }

                  else
                  {
                    v337 = v334;
                  }

                  if (v337 == 1)
                  {
                    v551 = v336;
                  }

LABEL_274:
                  v339 = [v583 meshSettings];
                  v340 = v339;
                  v0 = v611;
                  if (v339)
                  {
                    v341 = v339;
                  }

                  else
                  {
                    v341 = [v583 layoutSettings];
                  }

                  v342 = MEMORY[0x277D75D18];
                  v747[0] = MEMORY[0x277D85DD0];
                  v747[1] = 3221225472;
                  v747[2] = __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_15;
                  v747[3] = &unk_2783A92D8;
                  v748 = v326;
                  v551 = v551;
                  v749 = v551;
                  v343 = (*(v612 + 2))(v612, @"mesh transform");
                  [v342 sb_animateWithSettings:v341 mode:v546 animations:v747 completion:v343];

LABEL_278:
                  [*(v0[4] + 264) slideOverMarginForLayoutRole:v622 inAppLayout:v0[5]];
                  v345 = v344;
                  v727[0] = MEMORY[0x277D85DD0];
                  v727[1] = 3221225472;
                  v727[2] = __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_16;
                  v727[3] = &unk_2783AE7F0;
                  v346 = v612;
                  v731 = v346;
                  v623 = v565;
                  v728 = v623;
                  v732 = v592;
                  v347 = v326;
                  v729 = v347;
                  v733 = v591;
                  v734 = v182;
                  v735 = v173;
                  v736 = v144;
                  v737 = v557;
                  v738 = 0x3FE0000000000000;
                  v739 = v559;
                  v740 = v558;
                  v741 = v550;
                  v742 = v549;
                  v743 = v9;
                  v744 = rect;
                  v745 = v531;
                  v746 = v345;
                  v618 = v556;
                  v730 = v618;
                  v348 = MEMORY[0x223D6F7F0](v727);
                  v610 = v348;
                  if (v589)
                  {
                    [MEMORY[0x277D75D18] performWithoutAnimation:v348];
                  }

                  else
                  {
                    (*(v348 + 16))(v348);
                  }

                  v349 = [v347 isContentClippingEnabled];
                  if (v349)
                  {
                    [v347 contentClippingFrame];
                    v838.origin.x = v569;
                    v838.origin.y = v568;
                    v838.size.width = v567;
                    v838.size.height = rect2;
                    v350 = !CGRectEqualToRect(v835, v838);
                  }

                  else
                  {
                    v350 = 0;
                  }

                  if ((v548 ^ v349 | v350))
                  {
                    [v347 setContentClippingEnabled:v548];
                    v351 = (*v621)(v346, @"clipping");
                    v352 = MEMORY[0x277D75D18];
                    v717[0] = MEMORY[0x277D85DD0];
                    v717[1] = 3221225472;
                    v717[2] = __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_19;
                    v717[3] = &unk_2783AE818;
                    v718 = v347;
                    v719 = v569;
                    v720 = v568;
                    v721 = v567;
                    v722 = rect2;
                    v723 = v580;
                    v724 = v579;
                    v725 = v578;
                    v726 = v577;
                    v714[0] = MEMORY[0x277D85DD0];
                    v714[1] = 3221225472;
                    v714[2] = __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_20;
                    v714[3] = &unk_2783A92B0;
                    v714[4] = v0[4];
                    v716 = v547;
                    v353 = v351;
                    v715 = v353;
                    [v352 sb_animateWithSettings:v582 mode:v547 animations:v717 completion:v714];
                  }

                  v354 = MEMORY[0x277D75D18];
                  v699[0] = MEMORY[0x277D85DD0];
                  v699[1] = 3221225472;
                  v699[2] = __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_21;
                  v699[3] = &unk_2783AE840;
                  v355 = v347;
                  v704 = v581;
                  v705 = v574;
                  v706 = v563;
                  v707 = v571;
                  v708 = v570;
                  v709 = v536;
                  v713 = v532;
                  v710 = v533;
                  v356 = v0[4];
                  v357 = v0[5];
                  v700 = v355;
                  v701 = v356;
                  v702 = v357;
                  v711 = v335;
                  v712 = v598;
                  v607 = v590;
                  v703 = v607;
                  v358 = (*v621)(v346, @"transform and content page view scale");
                  [v354 sb_animateWithSettings:v572 mode:v575 animations:v699 completion:v358];

                  if ([*(v0[4] + 137) shouldRedactWindowContents])
                  {
                    v359 = [v0[4] appLayoutContainingAppLayout:v588];
                    v360 = [v588 allItems];
                    v361 = [v360 firstObject];
                    v362 = [v359 layoutRoleForItem:v361];

                    if (v362 == 1)
                    {
                      v363 = [MEMORY[0x277D75348] systemBlueColor];
                      v364 = v611;
                    }

                    else
                    {
                      v364 = v611;
                      if (v362 == 2)
                      {
                        v375 = [MEMORY[0x277D75348] systemGreenColor];
                      }

                      else if (v362 == 5)
                      {
                        v375 = [MEMORY[0x277D75348] systemRedColor];
                      }

                      else
                      {
                        if (v362 == 6)
                        {
                          [MEMORY[0x277D75348] systemPurpleColor];
                        }

                        else
                        {
                          [MEMORY[0x277D75348] blackColor];
                        }
                        v375 = ;
                      }

                      v363 = v375;
                    }

                    v376 = [v355 contentView];
                    v377 = [v376 layer];
                    [v377 setBorderColor:{objc_msgSend(v363, "CGColor")}];

                    v378 = [v355 contentView];
                    v379 = [v378 layer];
                    v380 = [v364[4] view];
                    [v380 bounds];
                    v382 = v381;

                    v383 = [v611[4] view];
                    [v383 bounds];
                    v385 = v384;

                    v0 = v611;
                    if (v382 >= v385)
                    {
                      v386 = v382;
                    }

                    else
                    {
                      v386 = v385;
                    }

                    [v379 setBorderWidth:v386];

                    v387 = [v355 contentOverlay];
                    [v387 bs_setHitTestingDisabled:1];

                    v388 = [v355 contentOverlay];
                    v389 = [v388 layer];
                    [v389 setBorderColor:{objc_msgSend(v363, "CGColor")}];

                    v374 = [v355 contentOverlay];
                    v390 = [v374 layer];
                    v391 = [v611[4] view];
                    [v391 bounds];
                    v393 = v392;

                    v394 = [v611[4] view];
                    [v394 bounds];
                    v396 = v395;

                    if (v393 >= v396)
                    {
                      v397 = v393;
                    }

                    else
                    {
                      v397 = v396;
                    }

                    [v390 setBorderWidth:v397];
                  }

                  else
                  {
                    v365 = [v355 contentView];
                    v366 = [v365 layer];
                    v367 = [MEMORY[0x277D75348] clearColor];
                    [v366 setBorderColor:{objc_msgSend(v367, "CGColor")}];

                    v368 = [v355 contentView];
                    v369 = [v368 layer];
                    [v369 setBorderWidth:0.0];

                    v370 = [v355 contentOverlay];
                    [v370 bs_setHitTestingDisabled:0];

                    v371 = [v355 contentOverlay];
                    v372 = [v371 layer];
                    v373 = [MEMORY[0x277D75348] clearColor];
                    [v372 setBorderColor:{objc_msgSend(v373, "CGColor")}];

                    v363 = [v355 contentOverlay];
                    v374 = [v363 layer];
                    [v374 setBorderWidth:0.0];
                  }

                  v3 = v605;
                  goto LABEL_307;
                }
              }

              v338 = MEMORY[0x277D75D18];
              v750[0] = MEMORY[0x277D85DD0];
              v750[1] = 3221225472;
              v750[2] = __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_14;
              v750[3] = &unk_2783A92D8;
              v751 = v326;
              v752 = v336;
              [v338 performWithoutAnimation:v750];

              goto LABEL_274;
            }

            v9 = v584;
            v335 = v560;
            goto LABEL_278;
          }

LABEL_307:
          v108 = v629;
        }

        v595 = [obj countByEnumeratingWithState:&v808 objects:v825 count:16];
      }

      while (v595);
    }

    v697 = 0u;
    v698 = 0u;
    v695 = 0u;
    v696 = 0u;
    v413 = [v0[5] allItems];
    v414 = [v413 countByEnumeratingWithState:&v695 objects:v816 count:16];
    if (v414)
    {
      v415 = v414;
      v416 = *v696;
      LOBYTE(v417) = 1;
      v418 = v29;
      v419 = v30;
      v420 = v512;
      v421 = v540;
      do
      {
        for (m = 0; m != v415; ++m)
        {
          if (*v696 != v416)
          {
            objc_enumerationMutation(v413);
          }

          v423 = [v0[5] layoutRoleForItem:*(*(&v695 + 1) + 8 * m)];
          if (v417)
          {
            v417 = [v0[6] containsRole:v423];
          }

          else
          {
            v417 = 0;
          }
        }

        v415 = [v413 countByEnumeratingWithState:&v695 objects:v816 count:16];
      }

      while (v415);
    }

    else
    {
      v417 = 1;
      v418 = v29;
      v419 = v30;
      v420 = v512;
      v421 = v540;
    }

    if (([v0[6] isEmpty] & 1) != 0 || v417)
    {
      v424 = [*(v0[4] + 247) objectForKey:v0[5]];
      v425 = [*(v0[4] + 248) objectForKey:v0[5]];
      v630 = [*(v0[4] + 129) objectForKey:v0[5]];
      v426 = [v424 layer];
      [v426 anchorPoint];
      v428 = v427;
      v430 = v429;

      if ((v430 != point || v428 != v542) && v420 == 4)
      {
        v433 = [v424 layer];
        v434 = [v433 presentationModifiers];

        if ([v434 bs_containsObjectPassingTest:&__block_literal_global_764])
        {
          v420 = 5;
        }

        else
        {
          v420 = 4;
        }

        v0 = v611;
      }

      [*(v0[4] + 264) adjustedSpaceAccessoryViewFrame:v0[5] forAppLayout:{v550, v549, v9, rect}];
      v436 = v435;
      v624 = v437;
      v439 = v438;
      v441 = v440;
      [*(v0[4] + 264) adjustedSpaceAccessoryViewAnchorPoint:v0[5] forAppLayout:{v542, point}];
      v443 = v442;
      v445 = v444;
      [*(v0[4] + 264) adjustedSpaceAccessoryViewScale:v0[5] forAppLayout:v421];
      v447 = v446;
      [*(v0[4] + 264) adjustedSpaceAccessoryViewPerspectiveAngle:v0[5] forAppLayout:{v544, v543}];
      v628 = v448;
      v627 = v449;
      if ((BSFloatIsZero() & 1) == 0)
      {
        v538 = v538 * (v447 / v421);
      }

      if (v419)
      {
        v450 = v418;
      }

      else
      {
        v450 = 0;
      }

      v451 = (*(v612 + 2))(v612, @"accessory genie attributes");
      [v424 setGenieAttributes:v450 mode:v500 completion:v451];

      v452 = MEMORY[0x277D75D18];
      v686[0] = MEMORY[0x277D85DD0];
      v686[1] = 3221225472;
      v686[2] = __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_23;
      v686[3] = &unk_2783AE868;
      v453 = v424;
      v687 = v453;
      v689 = v443;
      v690 = v445;
      v691 = v436;
      v692 = v624;
      v693 = v439;
      v694 = v441;
      v454 = v425;
      v688 = v454;
      v455 = (*(v612 + 2))(v612, @"accessory center");
      [v452 sb_animateWithSettings:v516 mode:v420 animations:v686 completion:v455];

      [v454 setMaskedCorners:v534];
      [v453 setMaskedCorners:v534];
      v456 = MEMORY[0x277D75D18];
      v679[0] = MEMORY[0x277D85DD0];
      v679[1] = 3221225472;
      v679[2] = __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_24;
      v679[3] = &unk_2783AAFD0;
      v682 = v537;
      v683 = v545;
      v684 = v539;
      v685 = v535;
      v457 = v454;
      v680 = v457;
      v458 = v453;
      v681 = v458;
      v459 = (*(v612 + 2))(v612, @"accessory corner radius");
      [v456 sb_animateWithSettings:v514 mode:v499 animations:v679 completion:v459];

      v460 = MEMORY[0x277D75D18];
      v664[0] = MEMORY[0x277D85DD0];
      v664[1] = 3221225472;
      v664[2] = __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_25;
      v664[3] = &unk_2783AE890;
      v631 = v630;
      v665 = v631;
      v666 = v518;
      v461 = v458;
      v667 = v461;
      v669 = v436;
      v670 = v624;
      v671 = v439;
      v672 = v441;
      v673 = v503;
      v674 = v502;
      v462 = v457;
      v668 = v462;
      v675 = v507;
      v676 = MinY;
      v677 = v520;
      v678 = Height;
      v463 = (*(v612 + 2))(v612, @"accessory bounds");
      [v460 sb_animateWithSettings:v517 mode:v500 animations:v664 completion:v463];

      [v461 setContentClippingEnabled:v548];
      [v462 setContentClippingEnabled:v548];
      v464 = MEMORY[0x277D75D18];
      v653[0] = MEMORY[0x277D85DD0];
      v653[1] = 3221225472;
      v653[2] = __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_26;
      v653[3] = &unk_2783AE8B8;
      v465 = v461;
      v654 = v465;
      v656 = v511;
      v657 = v510;
      v658 = v509;
      v659 = v508;
      v660 = v537;
      v661 = v545;
      v662 = v539;
      v663 = v535;
      v466 = v462;
      v655 = v466;
      v467 = (*(v612 + 2))(v612, @"accessory clipping");
      [v464 sb_animateWithSettings:v513 mode:v501 animations:v653 completion:v467];

      v468 = MEMORY[0x277D75D18];
      v636[0] = MEMORY[0x277D85DD0];
      v636[1] = 3221225472;
      v636[2] = __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_27;
      v636[3] = &unk_2783AE8E0;
      v469 = v465;
      v641 = v447;
      v642 = v536;
      v643 = v628;
      v644 = v627;
      v652 = v532;
      v645 = v533;
      v470 = v611[4];
      v471 = v611[5];
      v637 = v469;
      v638 = v470;
      v639 = v471;
      v646 = v815;
      v647 = v436;
      v648 = v624;
      v649 = v439;
      v650 = v441;
      v651 = v538;
      v472 = v466;
      v640 = v472;
      v473 = (*(v612 + 2))(v612, @"accessory transform and content page view scale");
      [v468 sb_animateWithSettings:v515 mode:v504 animations:v636 completion:v473];

      v474 = MEMORY[0x277D75D18];
      v475 = kKeyboardHeightIncludingAccessory_block_invoke_keyboardHeightSettings;
      v633[0] = MEMORY[0x277D85DD0];
      v633[1] = 3221225472;
      v633[2] = __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_28;
      v633[3] = &unk_2783A92D8;
      v476 = v472;
      v477 = v611[4];
      v634 = v476;
      v635 = v477;
      v478 = (*(v612 + 2))(v612, @"accessory keyboard height");
      [v474 sb_animateWithSettings:v475 mode:3 animations:v633 completion:v478];

      if ([v611[4] isDevicePad])
      {
        v479 = v537;
        *buf = v537;
        *&buf[8] = v535;
        v480 = 8;
        *&buf[16] = v545;
        *&buf[24] = v539;
        do
        {
          if (v479 < *&buf[v480])
          {
            v479 = *&buf[v480];
          }

          v480 += 8;
        }

        while (v480 != 32);
        v481 = [v611[4] appLayouts];
        v482 = [v481 indexOfObject:v611[5]];

        if (v482 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v483 = v611[4];
          v484 = (*(v612 + 2))(v612, @"item container backdrop");
          [v483 _updateItemContainerBackdropPresenceForIndex:v605 scale:v583 rotation:v484 cornerRadius:v447 animationAttributes:v536 completion:v479];
        }
      }

      v418 = v519;
    }
  }
}

uint64_t __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_2()
{
  v0 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
  v1 = kKeyboardHeightIncludingAccessory_block_invoke_keyboardHeightSettings;
  kKeyboardHeightIncludingAccessory_block_invoke_keyboardHeightSettings = v0;

  [kKeyboardHeightIncludingAccessory_block_invoke_keyboardHeightSettings setResponse:0.25];
  [kKeyboardHeightIncludingAccessory_block_invoke_keyboardHeightSettings setDampingRatio:1.0];
  v2 = kKeyboardHeightIncludingAccessory_block_invoke_keyboardHeightSettings;
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);

  return [v2 setFrameRateRange:1114113 highFrameRateReason:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

uint64_t __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_692(uint64_t a1, void *a2)
{
  v2 = [a2 keyPath];
  v3 = [v2 isEqualToString:@"position"];

  return v3;
}

uint64_t __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_2_698(uint64_t a1, void *a2)
{
  v2 = [a2 keyPath];
  v3 = [v2 isEqualToString:@"transform"];

  return v3;
}

void __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_3_710(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_4;
  v7[3] = &unk_2783AE700;
  v8 = *(a1 + 32);
  v2 = *(a1 + 64);
  v9 = *(a1 + 48);
  v10 = v2;
  v11 = *(a1 + 80);
  v3 = MEMORY[0x223D6F7F0](v7);
  if ([*(*(a1 + 40) + 2112) shouldPerformRotationAnimationForOrientationChange])
  {
    v4 = MEMORY[0x277D75D18];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_5;
    v5[3] = &unk_2783A9348;
    v6 = v3;
    [v4 performWithoutAnimation:v5];
  }

  else
  {
    v3[2](v3);
  }
}

void __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 setAnchorPoint:{*(a1 + 40), *(a1 + 48)}];

  [*(a1 + 32) setCenter:{*(a1 + 56), *(a1 + 64)}];
  v4 = [*(a1 + 32) layer];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 72)];
  [v4 setValue:v3 forKey:@"transform.translation.x"];
}

void __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_6(uint64_t a1)
{
  v2 = [[SBBlurProgressSwitcherModifierEvent alloc] initWithProgress:0.0];
  [*(a1 + 32) _dispatchEventAndHandleAction:v2];
}

void __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_7(uint64_t a1)
{
  v2 = [[SBBlurProgressSwitcherModifierEvent alloc] initWithProgress:1.0];
  [*(a1 + 32) _dispatchEventAndHandleAction:v2];
}

uint64_t __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_8(uint64_t a1)
{
  if ((*(a1 + 96) & 1) == 0 && (*(a1 + 97) & 1) == 0)
  {
    v2 = [*(a1 + 32) layer];
    [v2 setAnchorPoint:{*(a1 + 48), *(a1 + 56)}];
  }

  v3 = *(a1 + 32);
  UIRectGetCenter();
  [v3 setCenter:?];
  v4 = *(a1 + 40);

  return [v4 setValue:1.0];
}

uint64_t __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_9(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_11(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

uint64_t __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_12(uint64_t a1)
{
  [*(a1 + 32) setShouldUseWallpaperGradientTreatment:*(a1 + 56)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 setWallpaperGradientAttributes:{v3, v4}];
}

uint64_t __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_13(uint64_t a1, void *a2)
{
  v2 = [a2 keyPath];
  v3 = [v2 isEqualToString:@"meshTransform"];

  return v3;
}

void __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_14(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 setValue:*(a1 + 40) forKey:@"meshTransform"];
}

void __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_16(uint64_t a1)
{
  v2 = (*(*(a1 + 56) + 16))();
  v3 = MEMORY[0x277D75D18];
  v4 = *(a1 + 64);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_17;
  v13[3] = &unk_2783AE7C8;
  v5 = *(a1 + 32);
  v14 = *(a1 + 40);
  v6 = *(a1 + 88);
  v16 = *(a1 + 72);
  v17 = v6;
  v7 = *(a1 + 120);
  v18 = *(a1 + 104);
  v19 = v7;
  v8 = *(a1 + 152);
  v20 = *(a1 + 136);
  v21 = v8;
  v22 = *(a1 + 168);
  v15 = *(a1 + 48);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_18;
  v10[3] = &unk_2783AE668;
  v11 = *(a1 + 48);
  v12 = v2;
  v9 = v2;
  [v3 sb_animateWithSettings:v5 mode:v4 animations:v13 completion:v10];
}

uint64_t __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_17(uint64_t a1)
{
  v2 = *(a1 + 32);
  SBRectWithSize();
  [v2 setBounds:?];
  [*(a1 + 32) setPageViewAnchorPoint:{*(a1 + 80), *(a1 + 88)}];
  [*(a1 + 32) setPageViewOffset:{*(a1 + 96), *(a1 + 104)}];
  [*(a1 + 32) setSizeForContainingSpace:{*(a1 + 128), *(a1 + 136)}];
  [*(a1 + 32) setMinimumTranslationForKillingContainer:*(a1 + 144)];
  [*(a1 + 32) setSlideOverMargin:*(a1 + 152)];
  [*(a1 + 32) layoutIfNeeded];
  v3 = *(a1 + 40);

  return [v3 setValue:1.0];
}

uint64_t __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_18(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_19(uint64_t a1)
{
  [*(a1 + 32) setContentClippingFrame:*(a1 + 40) cornerRadii:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_20(uint64_t a1)
{
  [*(a1 + 32) _noteItemContainerDidUpdateContentClippingWithMode:*(a1 + 48)];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_21(uint64_t a1)
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v4 = [*(a1 + 32) layer];
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 64)];
    [v4 setValue:v5 forKeyPath:@"transform.scale"];

    v6 = [*(a1 + 32) layer];
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 72)];
    [v6 setValue:v7 forKeyPath:@"transform.translation.x"];

    v8 = [*(a1 + 32) layer];
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 80)];
    [v8 setValue:v9 forKeyPath:@"transform.translation.y"];

    v10 = [*(a1 + 32) layer];
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 88)];
    [v10 setValue:v11 forKeyPath:@"transform.rotation.x"];

    v12 = [*(a1 + 32) layer];
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 96)];
    [v12 setValue:v13 forKeyPath:@"transform.rotation.y"];

    v14 = [*(a1 + 32) layer];
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 104)];
    [v14 setValue:v15 forKeyPath:@"transform.rotation.z"];
  }

  else
  {
    v16 = *(MEMORY[0x277CD9DE8] + 80);
    *&v26.m31 = *(MEMORY[0x277CD9DE8] + 64);
    *&v26.m33 = v16;
    v17 = *(MEMORY[0x277CD9DE8] + 112);
    *&v26.m41 = *(MEMORY[0x277CD9DE8] + 96);
    *&v26.m43 = v17;
    v18 = *(MEMORY[0x277CD9DE8] + 16);
    *&v26.m11 = *MEMORY[0x277CD9DE8];
    *&v26.m13 = v18;
    v19 = *(MEMORY[0x277CD9DE8] + 48);
    *&v26.m21 = *(MEMORY[0x277CD9DE8] + 32);
    *&v26.m23 = v19;
    v20 = *(a1 + 64);
    *&v25.m31 = *&v26.m31;
    *&v25.m33 = v16;
    *&v25.m41 = *&v26.m41;
    *&v25.m43 = v17;
    *&v25.m11 = *&v26.m11;
    *&v25.m13 = v18;
    *&v25.m21 = *&v26.m21;
    *&v25.m23 = v19;
    CATransform3DScale(&v26, &v25, v20, v20, 1.0);
    v21 = *(a1 + 104);
    v24 = v26;
    CATransform3DRotate(&v25, &v24, v21, 0.0, 0.0, 1.0);
    v26 = v25;
    [*(a1 + 32) setTransform3D:&v25];
  }

  v22 = *(a1 + 32);
  if (*(a1 + 136) == 1)
  {
    [v22 setIconAlignment:*(a1 + 112)];
    [*(a1 + 32) setUniqueIconsOnly:1];
    [*(a1 + 32) setFooterStyle:{objc_msgSend(*(a1 + 40), "_itemContainerFooterStyleForAppLayout:", *(a1 + 48))}];
  }

  else
  {
    [v22 setDrawsFooter:0];
  }

  [*(a1 + 32) setContentPageViewScale:*(a1 + 120)];
  [*(a1 + 32) setBlurViewIconScale:*(a1 + 128)];
  return [*(a1 + 56) setBlurViewIconScale:*(a1 + 128)];
}

uint64_t __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_22(uint64_t a1, void *a2)
{
  v2 = [a2 keyPath];
  v3 = [v2 isEqualToString:@"position"];

  return v3;
}

uint64_t __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_23(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 setAnchorPoint:{*(a1 + 48), *(a1 + 56)}];

  v3 = *(a1 + 32);
  UIRectGetCenter();
  [v3 setCenter:?];
  v4 = [*(a1 + 40) layer];
  [v4 setAnchorPoint:{*(a1 + 48), *(a1 + 56)}];

  v5 = *(a1 + 40);
  UIRectGetCenter();

  return [v5 setCenter:?];
}

uint64_t __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_24(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  for (i = 8; i != 32; i += 8)
  {
    if (v2 < *&v6[i])
    {
      v2 = *&v6[i];
    }
  }

  [*(a1 + 32) setCornerRadius:v2];
  v4 = *(a1 + 40);

  return [v4 setCornerRadius:v2];
}

uint64_t __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_25(uint64_t a1)
{
  [*(a1 + 32) setMultiWindowIndicatorRoles:*(a1 + 40)];
  v2 = *(a1 + 48);
  SBRectWithSize();
  [v2 setBounds:?];
  [*(a1 + 48) setContentViewOffset:{*(a1 + 96), *(a1 + 104)}];
  [*(a1 + 48) layoutIfNeeded];
  v3 = *(a1 + 56);
  SBRectWithSize();
  [v3 setBounds:?];
  [*(a1 + 56) setContentViewOffset:{*(a1 + 96), *(a1 + 104)}];
  v4 = *(a1 + 56);
  SBRectWithSize();
  [v4 setResizeGrabberBounds:?];
  v5 = *(a1 + 56);
  UIRectGetCenter();
  [v5 setResizeGrabberCenter:?];
  v6 = *(a1 + 56);

  return [v6 layoutIfNeeded];
}

uint64_t __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_26(uint64_t a1)
{
  [*(a1 + 32) setContentClippingFrame:*(a1 + 48) cornerRadii:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
  [*(a1 + 32) layoutIfNeeded];
  [*(a1 + 40) setContentClippingFrame:*(a1 + 48) cornerRadii:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
  v2 = *(a1 + 40);

  return [v2 layoutIfNeeded];
}

uint64_t __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_27(uint64_t a1)
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v4 = [*(a1 + 32) layer];
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 64)];
    [v4 setValue:v5 forKeyPath:@"transform.scale"];

    v6 = [*(a1 + 32) layer];
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 72)];
    [v6 setValue:v7 forKeyPath:@"transform.rotation.z"];

    v8 = [*(a1 + 32) layer];
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 80)];
    [v8 setValue:v9 forKeyPath:@"transform.rotation.x"];

    v10 = [*(a1 + 32) layer];
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 88)];
    [v10 setValue:v11 forKeyPath:@"transform.rotation.y"];
  }

  else
  {
    memset(&v29, 0, sizeof(v29));
    CATransform3DMakeScale(&v28, *(a1 + 64), *(a1 + 64), 1.0);
    CATransform3DRotate(&v29, &v28, *(a1 + 72), 0.0, 0.0, 1.0);
    v12 = *(a1 + 32);
    v28 = v29;
    [v12 setTransform3D:&v28];
  }

  v13 = *(a1 + 32);
  if (*(a1 + 272) == 1)
  {
    [v13 setDrawsFooter:0];
  }

  else
  {
    [v13 setIconAlignment:*(a1 + 96)];
    [*(a1 + 32) setUniqueIconsOnly:1];
    [*(a1 + 32) setFooterStyle:{objc_msgSend(*(a1 + 40), "_itemContainerFooterStyleForAppLayout:", *(a1 + 48))}];
  }

  v14 = [*(a1 + 32) homeGrabberView];
  v15 = *(a1 + 184);
  *&v29.m31 = *(a1 + 168);
  *&v29.m33 = v15;
  v16 = *(a1 + 216);
  *&v29.m41 = *(a1 + 200);
  *&v29.m43 = v16;
  v17 = *(a1 + 120);
  *&v29.m11 = *(a1 + 104);
  *&v29.m13 = v17;
  v18 = *(a1 + 152);
  *&v29.m21 = *(a1 + 136);
  *&v29.m23 = v18;
  [v14 setTransform3D:&v29];

  v19 = [*(a1 + 32) homeGrabberView];
  SBRectWithSize();
  [v19 setFrame:?];

  [*(a1 + 32) setContentScale:*(a1 + 264)];
  [*(a1 + 32) layoutIfNeeded];
  v20 = [MEMORY[0x277D75418] currentDevice];
  v21 = [v20 userInterfaceIdiom];

  if ((v21 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v22 = [*(a1 + 56) layer];
    v23 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 64)];
    [v22 setValue:v23 forKeyPath:@"transform.scale"];

    v24 = [*(a1 + 56) layer];
    v25 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 72)];
    [v24 setValue:v25 forKeyPath:@"transform.rotation.z"];
  }

  else
  {
    memset(&v29, 0, sizeof(v29));
    CATransform3DMakeScale(&v28, *(a1 + 64), *(a1 + 64), 1.0);
    CATransform3DRotate(&v29, &v28, *(a1 + 72), 0.0, 0.0, 1.0);
    v26 = *(a1 + 56);
    v28 = v29;
    [v26 setTransform3D:&v28];
  }

  [*(a1 + 56) setContentScale:*(a1 + 264)];
  return [*(a1 + 56) layoutIfNeeded];
}

uint64_t __67__SBFluidSwitcherViewController__layoutAppLayout_roles_completion___block_invoke_28(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) keyboardHeight];

  return [v1 setKeyboardHeight:?];
}

- (void)_noteItemContainerDidUpdateContentClippingWithMode:(int64_t)mode
{
  WeakRetained = objc_loadWeakRetained(&self->_pipViewMorphAnimator);
  direction = [WeakRetained direction];
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = mode == 3;
  }

  else
  {
    v6 = 0;
  }

  if (v6 && direction == 0)
  {
    [WeakRetained noteSourceAnimationsDidEnd:4 finished:1 continueBlock:0];
    v5 = WeakRetained;
  }
}

- (id)_animatablePropertyWithNotifications:(id)notifications progressEventType:(Class)type
{
  v20[1] = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  v7 = [notificationsCopy mutableCopy];
  v8 = objc_alloc_init(MEMORY[0x277D75D38]);
  [v8 setValue:0.0];
  objc_initWeak(&location, v8);
  v9 = MEMORY[0x277D75D18];
  v20[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __88__SBFluidSwitcherViewController__animatablePropertyWithNotifications_progressEventType___block_invoke;
  v15[3] = &unk_2783AE930;
  objc_copyWeak(v18, &location);
  v11 = v7;
  v18[1] = type;
  v16 = v11;
  selfCopy = self;
  [v9 _createTransformerWithInputAnimatableProperties:v10 presentationValueChangedCallback:v15];

  if ([v11 containsObject:&unk_28336F220])
  {
    v12 = [[type alloc] initWithProgress:0.0];
    [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v12];
    [v11 removeObject:&unk_28336F220];
  }

  v13 = v8;

  objc_destroyWeak(v18);
  objc_destroyWeak(&location);

  return v13;
}

void __88__SBFluidSwitcherViewController__animatablePropertyWithNotifications_progressEventType___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained isInvalidated];
    v20 = v3;
    [v3 presentationValue];
    v6 = v5;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = *(a1 + 32);
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          [v13 floatValue];
          if (!(v4 & 1 | ((BSFloatLessThanOrEqualToFloat() & 1) == 0)))
          {
            v14 = [objc_alloc(*(a1 + 56)) initWithProgress:v6];
            [*(a1 + 40) _dispatchEventAndHandleAction:v14];
            if (!v10)
            {
              v10 = objc_opt_new();
            }

            [v10 addObject:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v15 = v10;
    v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(a1 + 32) removeObject:*(*(&v21 + 1) + 8 * j)];
        }

        v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v17);
    }

    v3 = v20;
  }
}

- (void)_layoutVisibleShelvesWithCompletion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  completionCopy = completion;
  allKeys = [(NSMutableDictionary *)self->_visibleShelves allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        visibleShelves = [(SBSwitcherPersonality *)self->_personality visibleShelves];
        if ([visibleShelves containsObject:v9])
        {
          v11 = [(NSMutableDictionary *)self->_visibleShelves objectForKey:v9];
          [(SBSwitcherPersonality *)self->_personality frameForShelf:v9];
          v13 = v12;
          v15 = v14;
          v17 = v16;
          v19 = v18;
          view = [v11 view];
          [view sb_setBoundsAndPositionFromFrame:{v13, v15, v17, v19}];

          view2 = [v11 view];
          [view2 layoutIfNeeded];
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }
}

void __55__SBFluidSwitcherViewController__ensureSubviewOrdering__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 integerValue];
  v8 = [*(a1 + 32) appLayouts];
  v9 = [v8 count];

  if (v7 < v9)
  {
    v10 = [*(a1 + 32) appLayouts];
    v11 = [v10 objectAtIndex:{objc_msgSend(v5, "integerValue")}];

    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x2020000000;
    v27[3] = -1;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__16;
    v25 = __Block_byref_object_dispose__16;
    v26 = 0;
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __55__SBFluidSwitcherViewController__ensureSubviewOrdering__block_invoke_791;
    v16 = &unk_2783AE958;
    v17 = *(a1 + 32);
    v12 = v11;
    v18 = v12;
    v19 = v27;
    v20 = &v21;
    [v12 enumerate:&v13];
    if (v22[5])
    {
      [*(*(a1 + 32) + 1952) insertSubview:v6 belowSubview:{v13, v14, v15, v16, v17}];
    }

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(v27, 8);
  }
}

void __55__SBFluidSwitcherViewController__ensureSubviewOrdering__block_invoke_791(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 1968);
  v4 = [*(a1 + 40) leafAppLayoutForRole:a2];
  obj = [v3 objectForKey:v4];

  v5 = [*(*(a1 + 32) + 1952) subviews];
  v6 = [v5 indexOfObject:obj];

  v7 = *(*(a1 + 48) + 8);
  if (v6 < *(v7 + 24))
  {
    *(v7 + 24) = v6;
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), obj);
  }
}

- (void)_ensureSubviewOrderingInsideSpace:(id)space
{
  v31 = *MEMORY[0x277D85DE8];
  spaceCopy = space;
  leafAppLayouts = [spaceCopy leafAppLayouts];
  subviews = [(SBFluidSwitcherContentView *)self->_contentView subviews];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = leafAppLayouts;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
  reverseObjectEnumerator = v7;
  if (!v8)
  {
LABEL_19:

    goto LABEL_20;
  }

  v10 = v8;
  v11 = *v26;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v26 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v14 = [(NSMutableDictionary *)self->_visibleItemContainers objectForKey:*(*(&v25 + 1) + 8 * i)];
      if (v14)
      {
        v15 = [subviews indexOfObject:v14];
        if (v15 < v12)
        {
          v12 = v15;
        }
      }
    }

    v10 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
  }

  while (v10);

  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v16 = [(SBFluidSwitcherViewController *)self _orderedViewsForLayoutElement:spaceCopy excludeSwitcherHostedShelves:1];
    reverseObjectEnumerator = [v16 reverseObjectEnumerator];

    v17 = [reverseObjectEnumerator countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v22;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v22 != v19)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          [(SBFluidSwitcherContentView *)self->_contentView insertSubview:*(*(&v21 + 1) + 8 * j) atIndex:v12++];
        }

        v18 = [reverseObjectEnumerator countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v18);
    }

    goto LABEL_19;
  }

LABEL_20:
}

uint64_t __52__SBFluidSwitcherViewController__updateVisibleItems__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 itemForLayoutRole:1];
  v5 = [v3 containsItem:v4];

  return v5;
}

uint64_t __52__SBFluidSwitcherViewController__updateVisibleItems__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 itemForLayoutRole:1];
  v5 = [v3 containsItem:v4];

  return v5;
}

uint64_t __52__SBFluidSwitcherViewController__updateVisibleItems__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 itemForLayoutRole:1];
  v5 = [v3 containsItem:v4];

  return v5;
}

- (void)_prepareForCrossfadeIfNeeded
{
  if (SBReduceMotion())
  {
    [(UIView *)self->_crossfadeSnapshotView removeFromSuperview];
    view = [(SBFluidSwitcherViewController *)self view];
    window = [view window];
    v10 = SBCreateMainScreenSnapshotBelowWindowWithOrientation(window, 1, 0, 0);

    v5 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v10];
    crossfadeSnapshotView = self->_crossfadeSnapshotView;
    self->_crossfadeSnapshotView = v5;
    v7 = v5;

    view2 = [(SBFluidSwitcherViewController *)self view];
    window2 = [view2 window];
    [window2 addSubview:self->_crossfadeSnapshotView];
  }
}

- (void)_performCrossfadeIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  crossfadeSnapshotView = self->_crossfadeSnapshotView;
  if (crossfadeSnapshotView)
  {
    v7 = crossfadeSnapshotView;
    animationSettings = [(SBAppSwitcherSettings *)self->_settings animationSettings];
    v9 = MEMORY[0x277D75D18];
    [animationSettings reduceMotionCrossfadeDuration];
    v11 = v10;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __73__SBFluidSwitcherViewController__performCrossfadeIfNeededWithCompletion___block_invoke;
    v17[3] = &unk_2783A8C18;
    v18 = v7;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __73__SBFluidSwitcherViewController__performCrossfadeIfNeededWithCompletion___block_invoke_2;
    v13[3] = &unk_2783AE5A0;
    v14 = v18;
    selfCopy = self;
    v16 = v5;
    v12 = v18;
    [v9 animateWithDuration:v17 animations:v13 completion:v11];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }
}

uint64_t __73__SBFluidSwitcherViewController__performCrossfadeIfNeededWithCompletion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  if (v2 == *(a1[5] + 1208))
  {
    [v2 removeFromSuperview];
    v3 = a1[5];
    v4 = *(v3 + 1208);
    *(v3 + 1208) = 0;
  }

  result = a1[6];
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)_updateTitlePresenceOnItemContainersForAdjustedAppLayout:(id)layout
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  leafAppLayouts = [layout leafAppLayouts];
  v5 = [leafAppLayouts countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(leafAppLayouts);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_visibleItemContainers objectForKey:v9];

        if (v10)
        {
          [(SBFluidSwitcherViewController *)self _updateItemContainerTitlePresenceForLeafAppLayout:v9];
        }
      }

      v6 = [leafAppLayouts countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_updateItemContainerTitlePresenceForLeafAppLayout:(id)layout
{
  layoutCopy = layout;
  v5 = [(SBFluidSwitcherViewController *)self _allowsTitleItemsForAppLayout:layoutCopy];
  v6 = [(NSMutableDictionary *)self->_appLayoutToTitleItemController objectForKey:layoutCopy];
  v7 = [(NSMutableDictionary *)self->_visibleItemContainers objectForKey:layoutCopy];
  windowManagementContext = [(SBFluidSwitcherViewController *)self windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if (v6 && isChamoisOrFlexibleWindowing == [v6 isChamoisOrFlexibleWindowingEnabled])
  {
    isFooterViewOfItemContainer = [v6 isFooterViewOfItemContainer];
  }

  else
  {
    isFooterViewOfItemContainer = 0;
  }

  layoutState = [(SBFluidSwitcherLayoutContext *)self->_layoutContext layoutState];
  if ([layoutState unlockedEnvironmentMode] == 3)
  {
    [(SBFluidSwitcherViewController *)self windowingConfiguration];
    v13 = v12 = v7;
    maximumNumberOfVisibleIconsInStrip = [v13 maximumNumberOfVisibleIconsInStrip];

    v7 = v12;
  }

  else
  {
    maximumNumberOfVisibleIconsInStrip = [(SBFluidSwitcherViewController *)self maximumNumberOfVisibleScenesOnStage];
  }

  if (v6)
  {
    [v6 setMaximumNumberOfVisibleIcons:maximumNumberOfVisibleIconsInStrip];
    if (isFooterViewOfItemContainer & 1 | !v5)
    {
      if (!v5)
      {
        [v6 invalidate];
        [(NSMutableDictionary *)self->_appLayoutToTitleItemController removeObjectForKey:layoutCopy];
        titleItems = [v7 titleItems];

        if (titleItems)
        {
          [v7 setTitleItems:0 animated:0];
        }
      }

      goto LABEL_22;
    }

    [v6 invalidate];
    [v7 setTitleItems:0 animated:0];
  }

  else if (isFooterViewOfItemContainer & 1 | !v5)
  {
    goto LABEL_22;
  }

  v28 = v7;
  if (__sb__runningInSpringBoard())
  {
    v16 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v16 = [currentDevice userInterfaceIdiom] == 1;
  }

  _shouldItemContainersUseDarkLabels = [(SBFluidSwitcherViewController *)self _shouldItemContainersUseDarkLabels];
  traitCollection = [(SBFluidSwitcherViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  v20 = [SBFluidSwitcherSpaceTitleItemController alloc];
  sceneManager = self->_sceneManager;
  displayIdentity = [(SBSceneManager *)sceneManager displayIdentity];
  v23 = [(SBFluidSwitcherSpaceTitleItemController *)v20 initWithAppLayout:layoutCopy applicationSceneHandleProvider:sceneManager displayIdentity:displayIdentity showCanvasTitles:v16 isChamoisOrFlexibleWindowingEnabled:isChamoisOrFlexibleWindowing isFooterViewOfItemContainer:1];

  appLayoutToTitleItemController = self->_appLayoutToTitleItemController;
  if (!appLayoutToTitleItemController)
  {
    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v26 = self->_appLayoutToTitleItemController;
    self->_appLayoutToTitleItemController = v25;

    appLayoutToTitleItemController = self->_appLayoutToTitleItemController;
  }

  [(NSMutableDictionary *)appLayoutToTitleItemController setObject:v23 forKey:layoutCopy];
  objc_initWeak(&location, self);
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 1;
  [(SBFluidSwitcherSpaceTitleItemController *)v23 setUseDarkLabels:_shouldItemContainersUseDarkLabels];
  v7 = v28;
  [(SBFluidSwitcherSpaceTitleItemController *)v23 setUserInterfaceStyle:userInterfaceStyle];
  [(SBFluidSwitcherSpaceTitleItemController *)v23 setMaximumNumberOfVisibleIcons:maximumNumberOfVisibleIconsInStrip];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __83__SBFluidSwitcherViewController__updateItemContainerTitlePresenceForLeafAppLayout___block_invoke;
  v29[3] = &unk_2783AE9D0;
  objc_copyWeak(&v32, &location);
  v30 = layoutCopy;
  v31 = &v33;
  [(SBFluidSwitcherSpaceTitleItemController *)v23 setUpdateHandler:v29];
  *(v34 + 24) = 0;

  objc_destroyWeak(&v32);
  _Block_object_dispose(&v33, 8);
  objc_destroyWeak(&location);

LABEL_22:
}

void __83__SBFluidSwitcherViewController__updateItemContainerTitlePresenceForLeafAppLayout___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained[164] containsObject:*(a1 + 32)] & ~*(*(*(a1 + 40) + 8) + 24);
    v7 = [v5[246] objectForKey:*(a1 + 32)];
    [v7 setTitleItems:v8 animated:v6 & 1];
  }
}

- (void)_updateAccessoryTitlePresenceForAdjustedAppLayout:(id)layout
{
  layoutCopy = layout;
  v5 = [(NSMutableDictionary *)self->_visibleUnderlayAccessoryViews objectForKey:layoutCopy];
  v6 = [(NSMutableDictionary *)self->_visibleOverlayAccessoryViews objectForKey:layoutCopy];
  v7 = [(SBFluidSwitcherViewController *)self _allowsTitleItemsForAppLayout:layoutCopy];
  v8 = [(NSMutableDictionary *)self->_appLayoutToTitleItemController objectForKey:layoutCopy];
  windowManagementContext = [(SBFluidSwitcherViewController *)self windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if (v8 && isChamoisOrFlexibleWindowing == [v8 isChamoisOrFlexibleWindowingEnabled])
  {
    v11 = [v8 isFooterViewOfItemContainer] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  layoutState = [(SBFluidSwitcherLayoutContext *)self->_layoutContext layoutState];
  if ([layoutState unlockedEnvironmentMode] == 3)
  {
    [(SBFluidSwitcherViewController *)self windowingConfiguration];
    v36 = v11;
    v13 = v7;
    v14 = layoutCopy;
    v15 = v8;
    v16 = v5;
    v17 = isChamoisOrFlexibleWindowing;
    v19 = v18 = v6;
    maximumNumberOfVisibleIconsInStrip = [v19 maximumNumberOfVisibleIconsInStrip];

    v6 = v18;
    isChamoisOrFlexibleWindowing = v17;
    v5 = v16;
    v8 = v15;
    layoutCopy = v14;
    v7 = v13;
    LOBYTE(v11) = v36;
  }

  else
  {
    maximumNumberOfVisibleIconsInStrip = [(SBFluidSwitcherViewController *)self maximumNumberOfVisibleScenesOnStage];
  }

  if (v8)
  {
    [v8 setMaximumNumberOfVisibleIcons:maximumNumberOfVisibleIconsInStrip];
    if (v11 & 1 | !v7)
    {
      if (!v7)
      {
        [v8 invalidate];
        [(NSMutableDictionary *)self->_appLayoutToTitleItemController removeObjectForKey:layoutCopy];
LABEL_24:
        [v5 setTitleItems:0 animated:0];
        [v6 setTitleItems:0 animated:0];
        goto LABEL_25;
      }

      goto LABEL_25;
    }

    [v8 invalidate];
    [v5 setTitleItems:0 animated:0];
    [v6 setTitleItems:0 animated:0];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __83__SBFluidSwitcherViewController__updateAccessoryTitlePresenceForAdjustedAppLayout___block_invoke;
    v48[3] = &unk_2783A9BD8;
    v48[4] = self;
    v49 = layoutCopy;
    v50 = v5;
    v51 = v6;
    [(SBFluidSwitcherViewController *)self _performWithFixedUpdateMode:2 usingBlock:v48];

LABEL_17:
    v37 = v6;
    v38 = v5;
    v35 = maximumNumberOfVisibleIconsInStrip;
    if (__sb__runningInSpringBoard())
    {
      v22 = SBFEffectiveDeviceClass() == 2;
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      v22 = [currentDevice userInterfaceIdiom] == 1;
    }

    _shouldItemContainersUseDarkLabels = [(SBFluidSwitcherViewController *)self _shouldItemContainersUseDarkLabels];
    traitCollection = [(SBFluidSwitcherViewController *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    v27 = [SBFluidSwitcherSpaceTitleItemController alloc];
    sceneManager = self->_sceneManager;
    displayIdentity = [(SBSceneManager *)sceneManager displayIdentity];
    v30 = [(SBFluidSwitcherSpaceTitleItemController *)v27 initWithAppLayout:layoutCopy applicationSceneHandleProvider:sceneManager displayIdentity:displayIdentity showCanvasTitles:v22 isChamoisOrFlexibleWindowingEnabled:isChamoisOrFlexibleWindowing isFooterViewOfItemContainer:0];

    appLayoutToTitleItemController = self->_appLayoutToTitleItemController;
    if (!appLayoutToTitleItemController)
    {
      v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v33 = self->_appLayoutToTitleItemController;
      self->_appLayoutToTitleItemController = v32;

      appLayoutToTitleItemController = self->_appLayoutToTitleItemController;
    }

    [(NSMutableDictionary *)appLayoutToTitleItemController setObject:v30 forKey:layoutCopy];
    objc_initWeak(&location, self);
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 1;
    [(SBFluidSwitcherSpaceTitleItemController *)v30 setUseDarkLabels:_shouldItemContainersUseDarkLabels];
    v6 = v37;
    v5 = v38;
    [(SBFluidSwitcherSpaceTitleItemController *)v30 setUserInterfaceStyle:userInterfaceStyle];
    [(SBFluidSwitcherSpaceTitleItemController *)v30 setMaximumNumberOfVisibleIcons:v35];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __83__SBFluidSwitcherViewController__updateAccessoryTitlePresenceForAdjustedAppLayout___block_invoke_2;
    v39[3] = &unk_2783AE9D0;
    objc_copyWeak(&v42, &location);
    v40 = layoutCopy;
    v41 = &v43;
    [(SBFluidSwitcherSpaceTitleItemController *)v30 setUpdateHandler:v39];
    *(v44 + 24) = 0;

    objc_destroyWeak(&v42);
    _Block_object_dispose(&v43, 8);
    objc_destroyWeak(&location);

    goto LABEL_25;
  }

  if (!(v11 & 1 | !v7))
  {
    goto LABEL_17;
  }

  if (!v7)
  {
    titleItems = [v6 titleItems];
    if (titleItems)
    {

      goto LABEL_24;
    }

    titleItems2 = [v5 titleItems];

    if (titleItems2)
    {
      goto LABEL_24;
    }
  }

LABEL_25:
}

uint64_t __83__SBFluidSwitcherViewController__updateAccessoryTitlePresenceForAdjustedAppLayout___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = SBLayoutRoleSetNone();
  [v2 _layoutAppLayout:v3 roles:v4 completion:0];

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = SBLayoutRoleSetNone();
  [v5 _applyStyleToAppLayout:v6 roles:v7 completion:0];

  [*(a1 + 48) layoutIfNeeded];
  v8 = *(a1 + 56);

  return [v8 layoutIfNeeded];
}

void __83__SBFluidSwitcherViewController__updateAccessoryTitlePresenceForAdjustedAppLayout___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained[248] objectForKey:*(a1 + 32)];
    v7 = [v5[247] objectForKey:*(a1 + 32)];
    v8 = (*(*(*(a1 + 40) + 8) + 24) ^ 1) & [v5[164] containsObject:*(a1 + 32)];
    if (v6)
    {
      [v6 setTitleItems:v9 animated:v8 & 1];
    }

    if (v7)
    {
      [v7 setTitleItems:v9 animated:v8 & 1];
    }
  }
}

- (void)_applyOcclusionStateToLiveContentOverlay:(id)overlay forLayoutRole:(int64_t)role inAppLayout:(id)layout isTransitioning:(BOOL)transitioning
{
  transitioningCopy = transitioning;
  personality = self->_personality;
  overlayCopy = overlay;
  [overlayCopy setOcclusionState:-[SBSwitcherPersonality occlusionStateForLayoutRole:inAppLayout:](personality inSteadyState:{"occlusionStateForLayoutRole:inAppLayout:", role, layout), !transitioningCopy}];
}

- (BOOL)_removeVisibleItemContainerForAppLayout:(id)layout
{
  layoutCopy = layout;
  v5 = [(SBFluidSwitcherViewController *)self _itemContainerForAppLayoutIfExists:layoutCopy];
  v6 = v5;
  if (v5)
  {
    [v5 setVisible:0];
    [v6 setActive:0];
    [v6 setSlideOverTonguePortalSourceView:0];
    [v6 _removeAllRetargetableAnimations:1];
    v7 = +[SBBlurItemContainerParameters defaultCrossblurBlurParameters];
    [(SBFluidSwitcherViewController *)self _unblurItemContainer:v6 blurParameters:v7 withAnimationUpdateMode:1];

    v8 = v6;
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      [v8 setHidden:1];
    }

    else
    {
      [v8 removeFromSuperview];
    }

    v10 = [(NSMutableDictionary *)self->_appLayoutToTitleItemController objectForKey:layoutCopy];
    v11 = v10;
    if (v10)
    {
      [v10 invalidate];
      [(NSMutableDictionary *)self->_appLayoutToTitleItemController removeObjectForKey:layoutCopy];
    }

    [(NSMutableDictionary *)self->_visibleItemContainers removeObjectForKey:layoutCopy];
    if (v9)
    {
      [v8 prepareForReuse];
      if ([(NSMutableArray *)self->_hiddenRecycledItemContainers containsObject:v8])
      {
        [SBFluidSwitcherViewController _removeVisibleItemContainerForAppLayout:];
      }

      [(NSMutableArray *)self->_hiddenRecycledItemContainers _sb_enqueue:v8];
    }

    [(SBSwitcherLiveContentOverlayCoordinating *)self->_liveContentOverlayCoordinator appLayoutDidBecomeHidden:layoutCopy];
  }

  return v6 != 0;
}

- (void)_addVisibleItemContainerForAppLayout:(id)layout reusingItemContainerIfExists:(id)exists
{
  v56 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  existsCopy = exists;
  [(SBSwitcherLiveContentOverlayCoordinating *)self->_liveContentOverlayCoordinator appLayoutWillBecomeVisible:layoutCopy];
  _sb_peek = [(NSMutableArray *)self->_hiddenRecycledItemContainers _sb_peek];
  v46 = existsCopy;
  if (_sb_peek && [(SBFluidSwitcherPageContentViewProvider *)self->_pageContentViewProvider isSuitableForRecycledItemContainer:layoutCopy])
  {

    if (!existsCopy)
    {
      _sb_dequeue = [(NSMutableArray *)self->_hiddenRecycledItemContainers _sb_dequeue];
LABEL_9:
      [_sb_dequeue setActive:1];
      [_sb_dequeue setAppLayout:layoutCopy];
      [_sb_dequeue setHidden:0];
      goto LABEL_11;
    }

LABEL_6:
    liveContentOverlayCoordinator = self->_liveContentOverlayCoordinator;
    appLayout = [existsCopy appLayout];
    [(SBSwitcherLiveContentOverlayCoordinating *)liveContentOverlayCoordinator itemContainerForAppLayout:appLayout willBeReusedForAppLayout:layoutCopy];

    if ([(NSMutableArray *)self->_hiddenRecycledItemContainers containsObject:existsCopy])
    {
      [(NSMutableArray *)self->_hiddenRecycledItemContainers removeObject:existsCopy];
    }

    _sb_dequeue = existsCopy;
    visibleItemContainers = self->_visibleItemContainers;
    v13 = [(NSMutableDictionary *)visibleItemContainers allKeysForObject:_sb_dequeue];
    [(NSMutableDictionary *)visibleItemContainers removeObjectsForKeys:v13];

    goto LABEL_9;
  }

  if (existsCopy)
  {
    goto LABEL_6;
  }

  [(SBFluidSwitcherPageContentViewProvider *)self->_pageContentViewProvider isSuitableForRecycledItemContainer:layoutCopy];
  v14 = objc_alloc(objc_opt_class());
  [(SBFluidSwitcherContentView *)self->_contentView bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  _sb_dequeue = [v14 initWithFrame:layoutCopy appLayout:self delegate:1 active:_sbWindowScene windowScene:{v16, v18, v20, v22}];

  v24 = [(SBFluidSwitcherPageContentViewProvider *)self->_pageContentViewProvider pageContentViewForAppLayout:layoutCopy setActive:1];
  [_sb_dequeue setContentView:v24];

  [(SBFluidSwitcherContentView *)self->_contentView addSubview:_sb_dequeue];
LABEL_11:
  v25 = [(NSMutableDictionary *)self->_liveContentOverlays objectForKey:layoutCopy];
  v26 = v25;
  if (v25)
  {
    contentOverlayView = [v25 contentOverlayView];
    [_sb_dequeue setContentOverlay:contentOverlayView animated:0];

    v28 = [layoutCopy itemForLayoutRole:1];
    uniqueIdentifier = [v28 uniqueIdentifier];

    if (uniqueIdentifier)
    {
      v30 = [(SBFluidSwitcherViewController *)self _centerWindowActivationAnimationContextForKey:uniqueIdentifier];
      v31 = v30;
      if (v30)
      {
        contentPortalContainer = [v30 contentPortalContainer];
        v33 = objc_alloc(MEMORY[0x277D76180]);
        [contentPortalContainer bounds];
        v34 = [v33 initWithFrame:?];
        contentOverlayView2 = [v26 contentOverlayView];
        [v34 setSourceView:contentOverlayView2];

        [v34 setHidesSourceView:1];
        [v34 setAllowsHitTesting:1];
        [v34 setName:@"com.apple.SpringBoard.centerWindowContentPortal"];
        [contentPortalContainer addSubview:v34];
      }
    }

    if ([v26 isAsyncRenderingEnabled])
    {
      [v26 disableAsynchronousRenderingForNextCommit];
    }

    [(SBFluidSwitcherViewController *)self _setupLiveContentOverlayForAppLayout:layoutCopy itemContainer:_sb_dequeue overlay:v26];
  }

  [(NSMutableDictionary *)self->_visibleItemContainers setObject:_sb_dequeue forKey:layoutCopy];
  v45 = [(NSDictionary *)self->_leafAppLayoutsToAdjustedAppLayouts objectForKey:layoutCopy];
  [v45 leafAppLayouts];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v36 = v54 = 0u;
  v37 = [v36 countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v52;
    while (2)
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v52 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = [(NSMutableDictionary *)self->_visibleItemContainers objectForKey:*(*(&v51 + 1) + 8 * i)];

        if (!v41)
        {

          v42 = v45;
          goto LABEL_29;
        }
      }

      v38 = [v36 countByEnumeratingWithState:&v51 objects:v55 count:16];
      if (v38)
      {
        continue;
      }

      break;
    }
  }

  v42 = v45;
  [(SBFluidSwitcherViewController *)self _ensureSubviewOrderingInsideSpace:v45];
LABEL_29:
  if (!v46)
  {
    v43 = [(NSDictionary *)self->_leafAppLayoutsToAdjustedAppLayouts objectForKey:layoutCopy];
    v44 = v43;
    if (v43)
    {
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __99__SBFluidSwitcherViewController__addVisibleItemContainerForAppLayout_reusingItemContainerIfExists___block_invoke;
      v47[3] = &unk_2783A8ED8;
      v48 = v43;
      v49 = layoutCopy;
      selfCopy = self;
      [(SBFluidSwitcherViewController *)self _performWithFixedUpdateMode:1 usingBlock:v47];
      [_sb_dequeue layoutIfNeeded];
    }
  }
}

void __99__SBFluidSwitcherViewController__addVisibleItemContainerForAppLayout_reusingItemContainerIfExists___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) allItems];
  v4 = [v3 firstObject];
  v5 = [v2 layoutRoleForItem:v4];

  if (v5)
  {
    SBLayoutRoleSetForRole(v5);
  }

  else
  {
    SBLayoutRoleSetNone();
  }
  v6 = ;
  [*(a1 + 48) _layoutAppLayout:*(a1 + 32) roles:v6 completion:0];
  [*(a1 + 48) _applyStyleToAppLayout:*(a1 + 32) roles:v6 completion:0];
}

- (void)noteDidEdgeProtectResizeGrabberForDisplayItem:(id)item inCorner:(unint64_t)corner
{
  itemCopy = item;
  v7 = [[SBDidEdgeProtectResizeGrabberModifierEvent alloc] initWithDisplayItem:itemCopy corners:corner];

  [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v7];
}

- (BOOL)_appLayoutWantsToBeKeptInViewHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  if (([hierarchyCopy type] & 0xFFFFFFFFFFFFFFFELL) == 2 && (-[SBFluidSwitcherViewController layoutContext](self, "layoutContext"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "layoutState"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "unlockedEnvironmentMode"), v6, v5, v7 == 2))
  {
    v8 = 1;
  }

  else
  {
    layoutContext = [(SBFluidSwitcherViewController *)self layoutContext];
    layoutState = [layoutContext layoutState];
    appLayout = [layoutState appLayout];
    v12 = [appLayout isOrContainsAppLayout:hierarchyCopy];

    allKeys = [(NSMutableDictionary *)self->_liveContentOverlays allKeys];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __72__SBFluidSwitcherViewController__appLayoutWantsToBeKeptInViewHierarchy___block_invoke;
    v15[3] = &unk_2783A8CB8;
    v16 = hierarchyCopy;
    LOBYTE(layoutContext) = [allKeys bs_containsObjectPassingTest:v15];

    v8 = v12 | layoutContext;
  }

  return v8 & 1;
}

void __70__SBFluidSwitcherViewController__updateVisibleOverlayAndUnderlayViews__block_invoke(void *a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1[4] + 1976) objectForKey:v5];
  v30 = [*(a1[4] + 1984) objectForKey:v5];
  [*(a1[4] + 1976) removeObjectForKey:v5];
  v31 = v5;
  [*(a1[4] + 1984) removeObjectForKey:v5];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = [*(a1[4] + 1968) allValues];
  v9 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v37;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v36 + 1) + 8 * i);
        v14 = [v13 overlayPortalView];

        if (v14 == v7)
        {
          [v13 setOverlayPortalView:0];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v10);
  }

  v15 = [*(a1[4] + 1032) objectForKey:v31];
  v16 = v15;
  if (v15)
  {
    [v15 invalidate];
    [*(a1[4] + 1032) removeObjectForKey:v31];
  }

  v29 = v16;
  [*(a1[4] + 1976) setObject:v7 forKey:v6];
  [*(a1[4] + 1984) setObject:v30 forKey:v6];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = [*(a1[4] + 1968) allValues];
  v18 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v33;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v32 + 1) + 8 * j);
        if ([v22 wantsOverlayPortal])
        {
          v23 = [v22 overlayPortalView];

          if (!v23)
          {
            v24 = [v22 appLayout];
            v25 = [v6 isOrContainsAppLayout:v24];

            if (v25)
            {
              [v22 setOverlayPortalView:v7];
            }
          }
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v19);
  }

  v26 = [*(a1[4] + 1976) allKeys];
  v27 = *(a1[5] + 8);
  v28 = *(v27 + 40);
  *(v27 + 40) = v26;

  *(*(a1[6] + 8) + 24) = 1;
}

uint64_t __70__SBFluidSwitcherViewController__updateVisibleOverlayAndUnderlayViews__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 containsAllItemsFromAppLayout:*(a1 + 32)])
  {
    v4 = [*(a1 + 32) containsAllItemsFromAppLayout:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)beginHidingAppLayout:(id)layout forReason:(id)reason
{
  layoutCopy = layout;
  reasonCopy = reason;
  objc_initWeak(&location, self);
  v8 = objc_alloc(MEMORY[0x277CF0CE8]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __64__SBFluidSwitcherViewController_beginHidingAppLayout_forReason___block_invoke;
  v17[3] = &unk_2783AEA48;
  objc_copyWeak(&v19, &location);
  v11 = layoutCopy;
  v18 = v11;
  v12 = [v8 initWithIdentifier:uUIDString forReason:reasonCopy invalidationBlock:v17];

  requestedHiddenAppLayouts = self->_requestedHiddenAppLayouts;
  if (!requestedHiddenAppLayouts)
  {
    v14 = [objc_alloc(MEMORY[0x277CCA940]) initWithCapacity:1];
    v15 = self->_requestedHiddenAppLayouts;
    self->_requestedHiddenAppLayouts = v14;

    requestedHiddenAppLayouts = self->_requestedHiddenAppLayouts;
  }

  [(NSCountedSet *)requestedHiddenAppLayouts addObject:v11];
  [(SBFluidSwitcherViewController *)self _updateVisibleItems];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v12;
}

void __64__SBFluidSwitcherViewController_beginHidingAppLayout_forReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[163] removeObject:*(a1 + 32)];
    [v3 _updateVisibleItems];
    WeakRetained = v3;
  }
}

- (CGRect)completedTransitionFrameForAppLayout:(id)layout
{
  layoutCopy = layout;
  appLayouts = [(SBFluidSwitcherViewController *)self appLayouts];
  v6 = [appLayouts indexOfObject:layoutCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = *MEMORY[0x277CBF3A0];
    v8 = *(MEMORY[0x277CBF3A0] + 8);
    v9 = *(MEMORY[0x277CBF3A0] + 16);
    v10 = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x4010000000;
    v20 = &unk_21F9DA6A3;
    personality = self->_personality;
    v21 = 0u;
    v22 = 0u;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __70__SBFluidSwitcherViewController_completedTransitionFrameForAppLayout___block_invoke;
    v16[3] = &unk_2783AA618;
    v16[4] = self;
    v16[5] = &v17;
    v16[6] = v6;
    [(SBSwitcherPersonality *)personality performWithFinalPresentationValue:v16];
    v7 = v18[4];
    v8 = v18[5];
    v9 = v18[6];
    v10 = v18[7];
    _Block_object_dispose(&v17, 8);
  }

  v12 = v7;
  v13 = v8;
  v14 = v9;
  v15 = v10;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

uint64_t __70__SBFluidSwitcherViewController_completedTransitionFrameForAppLayout___block_invoke(void *a1)
{
  result = [*(a1[4] + 2112) frameForIndex:a1[6]];
  v3 = *(a1[5] + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (CGRect)scaledFrameForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  appLayouts = [(SBFluidSwitcherViewController *)self appLayouts];
  v8 = [appLayouts indexOfObject:layoutCopy];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = *MEMORY[0x277CBF3A0];
    v9 = *(MEMORY[0x277CBF3A0] + 8);
    v11 = *(MEMORY[0x277CBF3A0] + 16);
    v12 = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    [(SBSwitcherPersonality *)self->_personality frameForIndex:v8];
    [(SBSwitcherPersonality *)self->_personality scaleForIndex:v8];
    v14 = v13;
    SBTransformedRectWithScale();
    v10 = v15;
    v9 = v16;
    v11 = v17;
    v12 = v18;
    isRTLEnabled = [(SBFluidSwitcherViewController *)self isRTLEnabled];
    v21 = role == 1 && !isRTLEnabled || role == 2 && isRTLEnabled;
    if ([layoutCopy isSplitConfiguration])
    {
      v22 = MEMORY[0x277D76620];
      if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
      {
        v23 = 2;
      }

      else
      {
        v23 = 1;
      }

      userInterfaceLayoutDirection = [*v22 userInterfaceLayoutDirection];
      personality = self->_personality;
      [(SBFluidSwitcherViewController *)self containerViewBounds];
      [(SBSwitcherPersonality *)personality frameForLayoutRole:v23 inAppLayout:layoutCopy withBounds:?];
      SBTransformedRectWithScale();
      v11 = v27;
      if (v21)
      {
        v12 = v26;
      }

      else
      {
        if (userInterfaceLayoutDirection == 1)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }

        v29 = self->_personality;
        [(SBFluidSwitcherViewController *)self containerViewBounds];
        [(SBSwitcherPersonality *)v29 frameForLayoutRole:v28 inAppLayout:layoutCopy withBounds:?];
        SBTransformedRectWithScale();
        v31 = v30;
        v12 = v32;
        [(SBFluidSwitcherViewController *)self separatorViewWidth];
        v10 = v10 + v11 + v33 * v14;
        v11 = v31;
      }
    }
  }

  v34 = v10;
  v35 = v9;
  v36 = v11;
  v37 = v12;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (double)scaleForAppLayout:(id)layout
{
  layoutCopy = layout;
  appLayouts = [(SBFluidSwitcherViewController *)self appLayouts];
  v6 = [appLayouts indexOfObject:layoutCopy];

  v7 = 0.0;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    personality = self->_personality;
    v14 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51__SBFluidSwitcherViewController_scaleForAppLayout___block_invoke;
    v10[3] = &unk_2783AA618;
    v10[4] = self;
    v10[5] = &v11;
    v10[6] = v6;
    [(SBSwitcherPersonality *)personality performWithFinalPresentationValue:v10];
    v7 = v12[3];
    _Block_object_dispose(&v11, 8);
  }

  return v7;
}

uint64_t __51__SBFluidSwitcherViewController_scaleForAppLayout___block_invoke(void *a1)
{
  result = [*(a1[4] + 2112) scaleForIndex:a1[6]];
  *(*(a1[5] + 8) + 24) = v3;
  return result;
}

- (double)contentPageViewScaleForAppLayout:(id)layout
{
  layoutCopy = layout;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  personality = self->_personality;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__SBFluidSwitcherViewController_contentPageViewScaleForAppLayout___block_invoke;
  v9[3] = &unk_2783AEA70;
  v9[4] = self;
  v6 = layoutCopy;
  v10 = v6;
  v11 = &v12;
  [(SBSwitcherPersonality *)personality performWithFinalPresentationValue:v9];
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __66__SBFluidSwitcherViewController_contentPageViewScaleForAppLayout___block_invoke(uint64_t a1)
{
  v10 = [*(a1 + 32) appLayouts];
  v2 = [v10 count];
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = v2;
  v4 = 0;
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    v6 = [v10 objectAtIndex:v4];
    if ([*(a1 + 40) isOrContainsAppLayout:v6])
    {
      break;
    }

    v7 = [v6 isOrContainsAppLayout:*(a1 + 40)];
    if (v7)
    {
      v5 = v4;
    }

    if (++v4 >= v3 || v7)
    {
      goto LABEL_11;
    }
  }

  v5 = v4;
LABEL_11:
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(*(a1 + 32) + 2112) scaleForIndex:v5];
  }

  else
  {
LABEL_12:
    v8 = 1.0;
  }

  [*(*(a1 + 32) + 2112) contentPageViewScaleForAppLayout:*(a1 + 40) withScale:v8];
  *(*(*(a1 + 48) + 8) + 24) = v9;
}

- (double)cornerRadiusForAppLayout:(id)layout
{
  layoutCopy = layout;
  appLayouts = [(SBFluidSwitcherViewController *)self appLayouts];
  v6 = [appLayouts indexOfObject:layoutCopy];

  v7 = 0.0;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    personality = self->_personality;
    v14 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__SBFluidSwitcherViewController_cornerRadiusForAppLayout___block_invoke;
    v10[3] = &unk_2783AA618;
    v10[4] = self;
    v10[5] = &v11;
    v10[6] = v6;
    [(SBSwitcherPersonality *)personality performWithFinalPresentationValue:v10];
    v7 = v12[3];
    _Block_object_dispose(&v11, 8);
  }

  return v7;
}

uint64_t __58__SBFluidSwitcherViewController_cornerRadiusForAppLayout___block_invoke(void *a1)
{
  result = [*(a1[4] + 2112) cornerRadiiForIndex:a1[6]];
  *(*(a1[5] + 8) + 24) = v3;
  return result;
}

- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  appLayouts = [(SBFluidSwitcherViewController *)self appLayouts];
  v8 = [appLayouts indexOfObject:layoutCopy];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = *MEMORY[0x277D76E40];
    v10 = *(MEMORY[0x277D76E40] + 8);
    v11 = *(MEMORY[0x277D76E40] + 16);
    v12 = *(MEMORY[0x277D76E40] + 24);
  }

  else
  {
    [(SBSwitcherPersonality *)self->_personality cornerRadiiForIndex:v8];
    [(SBSwitcherPersonality *)self->_personality cornerRadiiForLayoutRole:role inAppLayout:layoutCopy withCornerRadii:?];
    v9 = v13;
    v10 = v14;
    v11 = v15;
    v12 = v16;
  }

  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  result.topRight = v20;
  result.bottomRight = v19;
  result.bottomLeft = v18;
  result.topLeft = v17;
  return result;
}

- (void)_enqueueOverlayAccessoryViewInReusePool:(id)pool
{
  poolCopy = pool;
  [poolCopy prepareForReuse];
  overlayAccessoryViewsReusePool = self->_overlayAccessoryViewsReusePool;
  if (overlayAccessoryViewsReusePool)
  {
    [(NSMutableSet *)overlayAccessoryViewsReusePool addObject:poolCopy];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{poolCopy, 0}];
    v6 = self->_overlayAccessoryViewsReusePool;
    self->_overlayAccessoryViewsReusePool = v5;
  }
}

- (void)_enqueueUnderlayAccessoryViewInReusePool:(id)pool
{
  poolCopy = pool;
  [poolCopy prepareForReuse];
  underlayAccessoryViewsReusePool = self->_underlayAccessoryViewsReusePool;
  if (underlayAccessoryViewsReusePool)
  {
    [(NSMutableSet *)underlayAccessoryViewsReusePool addObject:poolCopy];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{poolCopy, 0}];
    v6 = self->_underlayAccessoryViewsReusePool;
    self->_underlayAccessoryViewsReusePool = v5;
  }
}

- (void)_rotateHomeAffordancesFromInterfaceOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->_visibleAdjustedAppLayouts;
  v8 = [(NSSet *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([(SBFluidSwitcherViewController *)self _bestSupportedHomeAffordanceOrientationForOrientation:interfaceOrientation inAppLayout:v12, v16]== interfaceOrientation)
        {
          v13 = [(NSMutableDictionary *)self->_visibleOverlayAccessoryViews objectForKey:v12];
          homeGrabberView = [v13 homeGrabberView];
          v15 = [SBAnimationUtilities animationSettingsForRotationFromInterfaceOrientation:orientation toInterfaceOrientation:interfaceOrientation];
          [homeGrabberView setOrientation:interfaceOrientation animated:1 rotationSettings:v15];
        }
      }

      v9 = [(NSSet *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

uint64_t __54__SBFluidSwitcherViewController__updateVisibleShelves__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = 0;
  }

  else
  {
    v5 = [*(*(a1 + 40) + 2032) objectForKey:v3];
    v4 = [v5 isPresentingOrDismissing] ^ 1;
  }

  return v4;
}

uint64_t __54__SBFluidSwitcherViewController__updateVisibleShelves__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _layoutVisibleShelvesWithCompletion:0];
  [*(a1 + 40) setContentOrientation:{objc_msgSend(*(a1 + 32), "contentOrientation")}];
  v2 = [*(a1 + 40) view];
  [v2 layoutIfNeeded];

  v3 = *(a1 + 32);

  return [v3 _ensureSubviewOrdering];
}

BOOL __54__SBFluidSwitcherViewController__updateVisibleShelves__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 shelfViewController];
  v4 = v3 == *(a1 + 32);

  return v4;
}

BOOL __54__SBFluidSwitcherViewController__updateVisibleShelves__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 shelfViewController];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)_updateVisibleSplitViewHandleNubViews
{
  v60 = *MEMORY[0x277D85DE8];
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      return;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom != 1)
    {
      return;
    }
  }

  visibleSplitViewHandleNubViews = [(SBSwitcherPersonality *)self->_personality visibleSplitViewHandleNubViews];
  allKeys = [(NSMutableDictionary *)self->_visibleSplitViewHandleNubViews allKeys];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __70__SBFluidSwitcherViewController__updateVisibleSplitViewHandleNubViews__block_invoke;
  v57[3] = &unk_2783AEB10;
  v35 = allKeys;
  v58 = v35;
  v7 = [visibleSplitViewHandleNubViews bs_filter:v57];
  visibleSplitViewHandleNubViews = self->_visibleSplitViewHandleNubViews;
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __70__SBFluidSwitcherViewController__updateVisibleSplitViewHandleNubViews__block_invoke_2;
  v55[3] = &unk_2783AEB38;
  v36 = visibleSplitViewHandleNubViews;
  v56 = v36;
  v37 = [(NSMutableDictionary *)visibleSplitViewHandleNubViews bs_filter:v55];
  switcherSettings = [(SBFluidSwitcherViewController *)self switcherSettings];
  windowingSettings = [switcherSettings windowingSettings];
  [windowingSettings initialScaleForSplitViewHandles];
  v12 = v11;

  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  systemPointerInteractionManager = [_sbWindowScene systemPointerInteractionManager];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v7;
  v14 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v14)
  {
    v15 = *v52;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v52 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v51 + 1) + 8 * i);
        [(SBSwitcherPersonality *)self->_personality frameForSplitViewHandleNubView:v17];
        v22 = [[SBSplitViewHandleNubView alloc] initWithFrame:systemPointerInteractionManager systemPointerInteractionManager:v18, v19, v20, v21];
        [(SBSplitViewHandleNubView *)v22 setAlpha:0.0];
        CGAffineTransformMakeScale(&v50, *&v12, *&v12);
        [(SBSplitViewHandleNubView *)v22 setTransform:&v50];
        [(SBFluidSwitcherContentView *)self->_contentView addSubview:v22];
        [(NSMutableDictionary *)self->_visibleSplitViewHandleNubViews setObject:v22 forKey:v17];
        [(NSMutableSet *)self->_visibleSplitViewHandleNubViewsWaitingForFadeIn addObject:v17];
      }

      v14 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
    }

    while (v14);
  }

  objc_initWeak(&v50, self);
  if ([obj count])
  {
    [(SBSwitcherPersonality *)self->_personality fadeInDelayForSplitViewHandles];
    v24 = dispatch_time(0, (v23 * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__SBFluidSwitcherViewController__updateVisibleSplitViewHandleNubViews__block_invoke_3;
    block[3] = &unk_2783A9CE8;
    objc_copyWeak(&v49, &v50);
    v48 = obj;
    dispatch_after(v24, MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v49);
  }

  switcherSettings2 = [(SBFluidSwitcherViewController *)self switcherSettings];
  animationSettings = [switcherSettings2 animationSettings];
  splitViewHandleFadeOutSettings = [animationSettings splitViewHandleFadeOutSettings];

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __70__SBFluidSwitcherViewController__updateVisibleSplitViewHandleNubViews__block_invoke_4;
  v44[3] = &unk_2783AEB88;
  v44[4] = self;
  v28 = splitViewHandleFadeOutSettings;
  v45 = v28;
  v46[1] = v12;
  objc_copyWeak(v46, &v50);
  [v37 enumerateKeysAndObjectsUsingBlock:v44];
  switcherSettings3 = [(SBFluidSwitcherViewController *)self switcherSettings];
  animationSettings2 = [switcherSettings3 animationSettings];
  splitViewHandleFadeInSettings = [animationSettings2 splitViewHandleFadeInSettings];

  v32 = self->_visibleSplitViewHandleNubViews;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __70__SBFluidSwitcherViewController__updateVisibleSplitViewHandleNubViews__block_invoke_7;
  v40[3] = &unk_2783AEBB0;
  v33 = v36;
  v41 = v33;
  selfCopy = self;
  v34 = splitViewHandleFadeInSettings;
  v43 = v34;
  [(NSMutableDictionary *)v32 enumerateKeysAndObjectsUsingBlock:v40];
  if ([obj count])
  {
    [(SBFluidSwitcherViewController *)self _ensureSubviewOrdering];
  }

  objc_destroyWeak(v46);
  objc_destroyWeak(&v50);
}

void __70__SBFluidSwitcherViewController__updateVisibleSplitViewHandleNubViews__block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v9 + 1) + 8 * i);
          if ([WeakRetained[257] containsObject:{v8, v9}])
          {
            [WeakRetained[257] removeObject:v8];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    [WeakRetained _updateVisibleSplitViewHandleNubViews];
  }
}

void __70__SBFluidSwitcherViewController__updateVisibleSplitViewHandleNubViews__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(*(a1 + 32) + 2056) containsObject:v5])
  {
    [v6 removeFromSuperview];
    [*(*(a1 + 32) + 2048) removeObjectForKey:v5];
    [*(*(a1 + 32) + 2056) removeObject:v5];
    [*(*(a1 + 32) + 1880) removeObjectForKey:v6];
  }

  else
  {
    [v6 alpha];
    if ((BSFloatIsZero() & 1) == 0)
    {
      v7 = MEMORY[0x277D75D18];
      v8 = *(a1 + 40);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __70__SBFluidSwitcherViewController__updateVisibleSplitViewHandleNubViews__block_invoke_5;
      v14[3] = &unk_2783A8BC8;
      v9 = v6;
      v15 = v9;
      v16 = *(a1 + 56);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __70__SBFluidSwitcherViewController__updateVisibleSplitViewHandleNubViews__block_invoke_6;
      v10[3] = &unk_2783AEB60;
      objc_copyWeak(&v13, (a1 + 48));
      v11 = v9;
      v12 = v5;
      [v7 sb_animateWithSettings:v8 mode:3 animations:v14 completion:v10];

      objc_destroyWeak(&v13);
    }
  }
}

uint64_t __70__SBFluidSwitcherViewController__updateVisibleSplitViewHandleNubViews__block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 32);
  CGAffineTransformMakeScale(&v4, *(a1 + 40), *(a1 + 40));
  return [v2 setTransform:&v4];
}

void __70__SBFluidSwitcherViewController__updateVisibleSplitViewHandleNubViews__block_invoke_6(uint64_t a1, int a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = *(a1 + 32);
  v11 = WeakRetained;
  if (WeakRetained)
  {
    [v7 alpha];
    IsZero = BSFloatIsZero();
    if ((a2 ^ 1 | a3) != 1 || IsZero)
    {
      [*(a1 + 32) removeFromSuperview];
      [v11[235] removeObjectForKey:*(a1 + 32)];
      v9 = [v11[256] objectForKey:*(a1 + 40)];
      v10 = BSEqualObjects();

      if (v10)
      {
        [v11[256] removeObjectForKey:*(a1 + 40)];
      }
    }
  }

  else
  {
    [v7 removeFromSuperview];
  }
}

void __70__SBFluidSwitcherViewController__updateVisibleSplitViewHandleNubViews__block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) containsObject:v5];
  if (v7)
  {
    v8 = [*(*(a1 + 40) + 2056) containsObject:v5] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = [*(*(a1 + 40) + 2112) animationAttributesForLayoutElement:v5];
  if (v8)
  {
    v10 = MEMORY[0x277D75D18];
    v11 = *(a1 + 48);
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __70__SBFluidSwitcherViewController__updateVisibleSplitViewHandleNubViews__block_invoke_8;
    v61[3] = &unk_2783A8C18;
    v62 = v6;
    [v10 sb_animateWithSettings:v11 mode:3 animations:v61 completion:0];
  }

  if (v7)
  {
    v12 = [v9 positionSettings];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [v9 layoutSettings];
    }

    v15 = v14;

    v16 = [v9 positionUpdateMode];
    if (!v16)
    {
      v16 = [v9 layoutUpdateMode];
      if (!v16)
      {
        v16 = [v9 updateMode];
      }
    }

    v17 = v16;
    [*(*(a1 + 40) + 2112) frameForSplitViewHandleNubView:v5];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = MEMORY[0x277D75D18];
    v51 = MEMORY[0x277D85DD0];
    v52 = 3221225472;
    v53 = __70__SBFluidSwitcherViewController__updateVisibleSplitViewHandleNubViews__block_invoke_9;
    v54 = &unk_2783AAFD0;
    v27 = v6;
    v57 = v19;
    v58 = v21;
    v59 = v23;
    v60 = v25;
    v28 = *(a1 + 40);
    v55 = v27;
    v56 = v28;
    [v26 sb_animateWithSettings:v15 mode:v17 animations:&v51 completion:0];
    if (!*(*(a1 + 40) + 1880))
    {
      v29 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
      v30 = *(a1 + 40);
      v31 = *(v30 + 1880);
      *(v30 + 1880) = v29;
    }

    [v27 pointerInteractionHitTestInsetsForView:{v27, v51, v52, v53, v54}];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = [v27 nubContainerView];
    [v40 bounds];
    v42 = v35 + v41;
    v44 = v33 + v43;
    v46 = v45 - (v35 + v39);
    v48 = v47 - (v33 + v37);

    v49 = *(*(a1 + 40) + 1880);
    v50 = [MEMORY[0x277CCAE60] valueWithCGRect:{v42, v44, v46, v48}];
    [v49 setObject:v50 forKey:v27];
  }
}

uint64_t __70__SBFluidSwitcherViewController__updateVisibleSplitViewHandleNubViews__block_invoke_8(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v2 setTransform:v5];
}

uint64_t __70__SBFluidSwitcherViewController__updateVisibleSplitViewHandleNubViews__block_invoke_9(uint64_t a1)
{
  v2 = *(a1 + 32);
  SBRectWithSize();
  [v2 setBounds:?];
  v3 = *(a1 + 32);
  UIRectGetCenter();
  [*(a1 + 40) screenScale];
  UIPointRoundToScale();

  return [v3 setCenter:?];
}

- (void)_updateVisibleSplitViewHandleDimmingViews
{
  v58 = *MEMORY[0x277D85DE8];
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      return;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom != 1)
    {
      return;
    }
  }

  visibleSplitViewHandleDimmingViews = [(SBSwitcherPersonality *)self->_personality visibleSplitViewHandleDimmingViews];
  allKeys = [(NSMutableDictionary *)self->_visibleSplitViewHandleDimmingViews allKeys];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __74__SBFluidSwitcherViewController__updateVisibleSplitViewHandleDimmingViews__block_invoke;
  v55[3] = &unk_2783AEBD8;
  v34 = allKeys;
  v56 = v34;
  v7 = [visibleSplitViewHandleDimmingViews bs_filter:v55];
  visibleSplitViewHandleDimmingViews = self->_visibleSplitViewHandleDimmingViews;
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __74__SBFluidSwitcherViewController__updateVisibleSplitViewHandleDimmingViews__block_invoke_2;
  v53[3] = &unk_2783AEC00;
  v35 = visibleSplitViewHandleDimmingViews;
  v54 = v35;
  v36 = [(NSMutableDictionary *)visibleSplitViewHandleDimmingViews bs_filter:v53];
  switcherSettings = [(SBFluidSwitcherViewController *)self switcherSettings];
  windowingSettings = [switcherSettings windowingSettings];
  [windowingSettings initialScaleForSplitViewHandles];
  v12 = v11;

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v7;
  v13 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v13)
  {
    v14 = *v50;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v50 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v49 + 1) + 8 * i);
        [(SBSwitcherPersonality *)self->_personality frameForSplitViewHandleDimmingView:v16];
        v21 = [[SBSplitViewHandleDimmingView alloc] initWithFrame:v17, v18, v19, v20];
        [(SBSplitViewHandleDimmingView *)v21 setAlpha:0.0];
        CGAffineTransformMakeScale(&v48, *&v12, *&v12);
        [(SBSplitViewHandleDimmingView *)v21 setTransform:&v48];
        [(SBFluidSwitcherContentView *)self->_contentView addSubview:v21];
        [(NSMutableDictionary *)self->_visibleSplitViewHandleDimmingViews setObject:v21 forKey:v16];
        [(NSMutableSet *)self->_visibleSplitViewHandleDimmingViewsWaitingForFadeIn addObject:v16];
      }

      v13 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v13);
  }

  objc_initWeak(&v48, self);
  if ([obj count])
  {
    [(SBSwitcherPersonality *)self->_personality fadeInDelayForSplitViewHandles];
    v23 = dispatch_time(0, (v22 * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__SBFluidSwitcherViewController__updateVisibleSplitViewHandleDimmingViews__block_invoke_3;
    block[3] = &unk_2783A9CE8;
    objc_copyWeak(&v47, &v48);
    v46 = obj;
    dispatch_after(v23, MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v47);
  }

  switcherSettings2 = [(SBFluidSwitcherViewController *)self switcherSettings];
  animationSettings = [switcherSettings2 animationSettings];
  splitViewHandleFadeOutSettings = [animationSettings splitViewHandleFadeOutSettings];

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __74__SBFluidSwitcherViewController__updateVisibleSplitViewHandleDimmingViews__block_invoke_4;
  v42[3] = &unk_2783AEC28;
  v42[4] = self;
  v27 = splitViewHandleFadeOutSettings;
  v43 = v27;
  v44[1] = v12;
  objc_copyWeak(v44, &v48);
  [v36 enumerateKeysAndObjectsUsingBlock:v42];
  switcherSettings3 = [(SBFluidSwitcherViewController *)self switcherSettings];
  animationSettings2 = [switcherSettings3 animationSettings];
  splitViewHandleFadeInSettings = [animationSettings2 splitViewHandleFadeInSettings];

  v31 = self->_visibleSplitViewHandleDimmingViews;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __74__SBFluidSwitcherViewController__updateVisibleSplitViewHandleDimmingViews__block_invoke_7;
  v38[3] = &unk_2783AEC50;
  v32 = v35;
  v39 = v32;
  selfCopy = self;
  v33 = splitViewHandleFadeInSettings;
  v41 = v33;
  [(NSMutableDictionary *)v31 enumerateKeysAndObjectsUsingBlock:v38];
  if ([obj count])
  {
    [(SBFluidSwitcherViewController *)self _ensureSubviewOrdering];
  }

  objc_destroyWeak(v44);
  objc_destroyWeak(&v48);
}

void __74__SBFluidSwitcherViewController__updateVisibleSplitViewHandleDimmingViews__block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v9 + 1) + 8 * i);
          if ([WeakRetained[258] containsObject:{v8, v9}])
          {
            [WeakRetained[258] removeObject:v8];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    [WeakRetained _updateVisibleSplitViewHandleDimmingViews];
  }
}

void __74__SBFluidSwitcherViewController__updateVisibleSplitViewHandleDimmingViews__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(*(a1 + 32) + 2064) containsObject:v5])
  {
    [v6 removeFromSuperview];
    [*(*(a1 + 32) + 2072) removeObjectForKey:v5];
    [*(*(a1 + 32) + 2064) removeObject:v5];
  }

  else
  {
    [v6 alpha];
    if ((BSFloatIsZero() & 1) == 0)
    {
      v7 = MEMORY[0x277D75D18];
      v8 = *(a1 + 40);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __74__SBFluidSwitcherViewController__updateVisibleSplitViewHandleDimmingViews__block_invoke_5;
      v14[3] = &unk_2783A8BC8;
      v9 = v6;
      v15 = v9;
      v16 = *(a1 + 56);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __74__SBFluidSwitcherViewController__updateVisibleSplitViewHandleDimmingViews__block_invoke_6;
      v10[3] = &unk_2783AEB60;
      objc_copyWeak(&v13, (a1 + 48));
      v11 = v9;
      v12 = v5;
      [v7 sb_animateWithSettings:v8 mode:3 animations:v14 completion:v10];

      objc_destroyWeak(&v13);
    }
  }
}

uint64_t __74__SBFluidSwitcherViewController__updateVisibleSplitViewHandleDimmingViews__block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 32);
  CGAffineTransformMakeScale(&v4, *(a1 + 40), *(a1 + 40));
  return [v2 setTransform:&v4];
}

void __74__SBFluidSwitcherViewController__updateVisibleSplitViewHandleDimmingViews__block_invoke_6(uint64_t a1, int a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = *(a1 + 32);
  v11 = WeakRetained;
  if (WeakRetained)
  {
    [v7 alpha];
    IsZero = BSFloatIsZero();
    if ((a2 ^ 1 | a3) != 1 || IsZero)
    {
      [*(a1 + 32) removeFromSuperview];
      v9 = [v11[259] objectForKey:*(a1 + 40)];
      v10 = BSEqualObjects();

      if (v10)
      {
        [v11[259] removeObjectForKey:*(a1 + 40)];
      }
    }
  }

  else
  {
    [v7 removeFromSuperview];
  }
}

void __74__SBFluidSwitcherViewController__updateVisibleSplitViewHandleDimmingViews__block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) containsObject:v5];
  if (v7)
  {
    v8 = [*(*(a1 + 40) + 2064) containsObject:v5] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = [*(*(a1 + 40) + 2112) animationAttributesForLayoutElement:v5];
  if (v8)
  {
    v10 = MEMORY[0x277D75D18];
    v11 = *(a1 + 48);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __74__SBFluidSwitcherViewController__updateVisibleSplitViewHandleDimmingViews__block_invoke_8;
    v36[3] = &unk_2783A8C18;
    v37 = v6;
    [v10 sb_animateWithSettings:v11 mode:3 animations:v36 completion:0];
  }

  if (v7)
  {
    v12 = [v9 positionSettings];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [v9 layoutSettings];
    }

    v15 = v14;

    v16 = [v9 positionUpdateMode];
    if (!v16)
    {
      v16 = [v9 layoutUpdateMode];
      if (!v16)
      {
        v16 = [v9 updateMode];
      }
    }

    v17 = v16;
    [*(*(a1 + 40) + 2112) frameForSplitViewHandleDimmingView:v5];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = MEMORY[0x277D75D18];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __74__SBFluidSwitcherViewController__updateVisibleSplitViewHandleDimmingViews__block_invoke_9;
    v29[3] = &unk_2783AAFD0;
    v27 = v6;
    v32 = v19;
    v33 = v21;
    v34 = v23;
    v35 = v25;
    v28 = *(a1 + 40);
    v30 = v27;
    v31 = v28;
    [v26 sb_animateWithSettings:v15 mode:v17 animations:v29 completion:0];
  }
}

uint64_t __74__SBFluidSwitcherViewController__updateVisibleSplitViewHandleDimmingViews__block_invoke_8(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v2 setTransform:v5];
}

uint64_t __74__SBFluidSwitcherViewController__updateVisibleSplitViewHandleDimmingViews__block_invoke_9(uint64_t a1)
{
  v2 = *(a1 + 32);
  SBRectWithSize();
  [v2 setBounds:?];
  v3 = *(a1 + 32);
  UIRectGetCenter();
  [*(a1 + 40) screenScale];
  UIPointRoundToScale();

  return [v3 setCenter:?];
}

- (id)_appLayoutFromLayoutElement:(id)element
{
  elementCopy = element;
  v5 = elementCopy;
  if (elementCopy)
  {
    if ([elementCopy switcherLayoutElementType])
    {
      v6 = SBLogAppSwitcher();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(SBFluidSwitcherViewController *)self _appLayoutFromLayoutElement:v5];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v5;
        goto LABEL_12;
      }

      v8 = SBLogAppSwitcher();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [SBFluidSwitcherViewController _appLayoutFromLayoutElement:];
      }
    }
  }

  v7 = 0;
LABEL_12:

  return v7;
}

- (int64_t)_bestSupportedHomeAffordanceOrientationForOrientation:(int64_t)orientation inAppLayout:(id)layout
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  leafAppLayouts = [layout leafAppLayouts];
  v7 = [leafAppLayouts countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(leafAppLayouts);
        }

        v11 = [(NSMutableDictionary *)self->_liveContentOverlays objectForKey:*(*(&v15 + 1) + 8 * i)];
        if (objc_opt_respondsToSelector())
        {
          v12 = [v11 bestHomeAffordanceOrientationForOrientation:orientation];
          if (v12 != orientation)
          {
            v13 = v12;

            orientation = v13;
            goto LABEL_12;
          }
        }
      }

      v8 = [leafAppLayouts countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return orientation;
}

- (id)homeGrabberViewForAppLayout:(id)layout
{
  v3 = [(NSMutableDictionary *)self->_visibleOverlayAccessoryViews objectForKey:layout];
  homeGrabberView = [v3 homeGrabberView];
  grabberView = [homeGrabberView grabberView];

  return grabberView;
}

- (CGRect)containerViewBoundsForHomeGrabberView:(id)view
{
  v35 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  _spacesWithVisibleHomeAffordances = [(SBFluidSwitcherViewController *)self _spacesWithVisibleHomeAffordances];
  v6 = [_spacesWithVisibleHomeAffordances countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(_spacesWithVisibleHomeAffordances);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v11 = [(SBFluidSwitcherViewController *)self homeGrabberViewForAppLayout:v10];

        if (v11 == viewCopy)
        {
          environment = [v10 environment];
          if (environment > 1)
          {
            if (environment == 2)
            {
              contentOrientation = [(SBFluidSwitcherViewController *)self contentOrientation];
              layoutContext = [(SBFluidSwitcherViewController *)self layoutContext];
              layoutState = [layoutContext layoutState];

              -[SBFluidSwitcherViewController floatingApplicationFrameInInterfaceOrientation:floatingConfiguration:](self, "floatingApplicationFrameInInterfaceOrientation:floatingConfiguration:", contentOrientation, [layoutState floatingConfiguration]);
              v23 = v16;
              v25 = v17;
              v19 = *MEMORY[0x277CBF348];
              v21 = *(MEMORY[0x277CBF348] + 8);

              goto LABEL_18;
            }

            if (environment == 3)
            {
LABEL_16:
              v19 = *MEMORY[0x277CBF398];
              v21 = *(MEMORY[0x277CBF398] + 8);
              v23 = *(MEMORY[0x277CBF398] + 16);
              v25 = *(MEMORY[0x277CBF398] + 24);
              goto LABEL_18;
            }
          }

          else
          {
            if (!environment)
            {
              goto LABEL_16;
            }

            if (environment == 1)
            {
              [(SBFluidSwitcherViewController *)self containerViewBounds];
              v19 = v18;
              v21 = v20;
              v23 = v22;
              v25 = v24;
LABEL_18:

              goto LABEL_19;
            }
          }
        }
      }

      v7 = [_spacesWithVisibleHomeAffordances countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v19 = *MEMORY[0x277CBF398];
  v21 = *(MEMORY[0x277CBF398] + 8);
  v23 = *(MEMORY[0x277CBF398] + 16);
  v25 = *(MEMORY[0x277CBF398] + 24);
LABEL_19:

  v26 = v19;
  v27 = v21;
  v28 = v23;
  v29 = v25;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (BOOL)isEdgeProtectedForHomeGestureAtEdgeLocation:(double)location edge:(unint64_t)edge
{
  v55 = *MEMORY[0x277D85DE8];
  dataSource = [(SBFluidSwitcherViewController *)self dataSource];
  v8 = [dataSource switcherContentControllerIsKeyboardHomeAffordanceAssertionCurrentlyBeingTaken:self];

  if (v8)
  {
    return 0;
  }

  [(SBFluidSwitcherViewController *)self containerViewBounds];
  v48 = v11;
  v49 = v10;
  rect = v12;
  v14 = v13;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v15 = self->_visibleItemContainers;
  v16 = [(NSMutableDictionary *)v15 countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v51;
    do
    {
      v19 = 0;
      do
      {
        if (*v51 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v50 + 1) + 8 * v19);
        v21 = [(NSMutableDictionary *)self->_visibleItemContainers objectForKey:v20];
        if ([v21 isOccludedInContinuousExposeStage])
        {
          goto LABEL_9;
        }

        [v21 frame];
        v26 = v22;
        v27 = v23;
        v28 = v24;
        v29 = v25;
        if (edge > 3)
        {
          if (edge != 4)
          {
            if (edge != 8)
            {
              goto LABEL_9;
            }

            MaxX = CGRectGetMaxX(*&v22);
            v58.origin.y = v48;
            v58.origin.x = v49;
            v58.size.width = rect;
            v58.size.height = v14;
            v34 = CGRectGetMaxX(v58);
            v59.origin.x = v26;
            v59.origin.y = v27;
            v59.size.width = v28;
            v59.size.height = v29;
            if (CGRectGetMinY(v59) > location)
            {
              goto LABEL_9;
            }

            v32 = MaxX >= v34;
            goto LABEL_20;
          }

          MaxY = CGRectGetMaxY(*&v22);
          v63.origin.y = v48;
          v63.origin.x = v49;
          v63.size.width = rect;
          v63.size.height = v14;
          v39 = CGRectGetMaxY(v63);
          v64.origin.x = v26;
          v64.origin.y = v27;
          v64.size.width = v28;
          v64.size.height = v29;
          if (CGRectGetMinX(v64) > location)
          {
            goto LABEL_9;
          }

          v32 = MaxY >= v39;
        }

        else
        {
          if (edge != 1)
          {
            if (edge != 2)
            {
              goto LABEL_9;
            }

            MinX = CGRectGetMinX(*&v22);
            v56.origin.y = v48;
            v56.origin.x = v49;
            v56.size.width = rect;
            v56.size.height = v14;
            v31 = CGRectGetMinX(v56);
            v57.origin.x = v26;
            v57.origin.y = v27;
            v57.size.width = v28;
            v57.size.height = v29;
            if (CGRectGetMinY(v57) > location)
            {
              goto LABEL_9;
            }

            v32 = MinX <= v31;
LABEL_20:
            v60.origin.x = v26;
            v60.origin.y = v27;
            v60.size.width = v28;
            v60.size.height = v29;
            v35 = CGRectGetMaxY(v60);
            goto LABEL_26;
          }

          MinY = CGRectGetMinY(*&v22);
          v61.origin.y = v48;
          v61.origin.x = v49;
          v61.size.width = rect;
          v61.size.height = v14;
          v37 = CGRectGetMinY(v61);
          v62.origin.x = v26;
          v62.origin.y = v27;
          v62.size.width = v28;
          v62.size.height = v29;
          if (CGRectGetMinX(v62) > location)
          {
            goto LABEL_9;
          }

          v32 = MinY <= v37;
        }

        v65.origin.x = v26;
        v65.origin.y = v27;
        v65.size.width = v28;
        v65.size.height = v29;
        v35 = CGRectGetMaxX(v65);
LABEL_26:
        if (v32 && v35 >= location)
        {
          WeakRetained = objc_loadWeakRetained(&self->_dataSource);
          v42 = WeakRetained;
          if ((*(&self->_dataSourceRespondsTo + 3) & 0x20) != 0)
          {
            v44 = [v20 itemForLayoutRole:1];
            v45 = [v42 switcherContentController:self deviceApplicationSceneHandleForDisplayItem:v44];

            isEdgeProtectEnabledForHomeGesture = [v45 isEdgeProtectEnabledForHomeGesture];
            goto LABEL_35;
          }
        }

LABEL_9:

        ++v19;
      }

      while (v17 != v19);
      v43 = [(NSMutableDictionary *)v15 countByEnumeratingWithState:&v50 objects:v54 count:16];
      v17 = v43;
    }

    while (v43);
  }

  isEdgeProtectEnabledForHomeGesture = 0;
LABEL_35:

  return isEdgeProtectEnabledForHomeGesture;
}

- (int64_t)homeAffordanceOrientationIfMismatchedFromCurrentLayoutState
{
  activeTransitionContext = [(SBFluidSwitcherLayoutContext *)self->_layoutContext activeTransitionContext];

  if (activeTransitionContext)
  {
    return 0;
  }

  layoutState = [(SBFluidSwitcherLayoutContext *)self->_layoutContext layoutState];
  visibleOverlayAccessoryViews = self->_visibleOverlayAccessoryViews;
  appLayout = [layoutState appLayout];
  v8 = [(NSMutableDictionary *)visibleOverlayAccessoryViews objectForKey:appLayout];

  if (v8)
  {
    interfaceOrientation = [layoutState interfaceOrientation];
    homeGrabberView = [v8 homeGrabberView];
    orientation = [homeGrabberView orientation];

    if (orientation == interfaceOrientation || orientation == 0)
    {
      v4 = 0;
    }

    else
    {
      v4 = orientation;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_keyboardWillShow:(id)show
{
  showCopy = show;
  if (!self->_keyboardUIPosition)
  {
    v6 = showCopy;
    isKeyboardShowing = 1;
    if (!self->_isKeyboardShowing)
    {
      self->_isKeyboardShowing = 1;
      [(SBFluidSwitcherViewController *)self _updateSuppressingHomeAffordanceBounce];
      isKeyboardShowing = self->_isKeyboardShowing;
    }

    [(SBFluidSwitcherViewController *)self _updateSoftwareKeyboardVisibleWithKeyboardShowing:isKeyboardShowing];
    showCopy = v6;
  }
}

- (void)_keyboardWillHide:(id)hide
{
  hideCopy = hide;
  if (!self->_keyboardUIPosition)
  {
    v6 = hideCopy;
    if (self->_isKeyboardShowing)
    {
      self->_isKeyboardShowing = 0;
      [(SBFluidSwitcherViewController *)self _updateSuppressingHomeAffordanceBounce];
      isKeyboardShowing = self->_isKeyboardShowing;
    }

    else
    {
      isKeyboardShowing = 0;
    }

    [(SBFluidSwitcherViewController *)self _updateSoftwareKeyboardVisibleWithKeyboardShowing:isKeyboardShowing];
    hideCopy = v6;
  }
}

- (void)_keyboardDidUIPosition:(id)position
{
  object = [position object];
  self->_keyboardUIPosition = [object integerValue];

  v5 = self->_keyboardUIPosition == 3;

  [(SBFluidSwitcherViewController *)self _updateSoftwareKeyboardVisibleWithKeyboardShowing:v5];
}

- (void)_updateSoftwareKeyboardVisibleWithKeyboardShowing:(BOOL)showing
{
  showingCopy = showing;
  isSoftwareKeyboardVisible = self->_isSoftwareKeyboardVisible;
  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  isExternalDisplayWindowScene = [_sbWindowScene isExternalDisplayWindowScene];

  if (isExternalDisplayWindowScene)
  {
    v8 = 0;
  }

  else
  {
    keyboardUIPosition = self->_keyboardUIPosition;
    v10 = keyboardUIPosition == 0;
    if (keyboardUIPosition)
    {
      v8 = showingCopy;
    }

    else
    {
      v8 = 0;
    }

    if (v10 && showingCopy)
    {
      v8 = [MEMORY[0x277D75658] isInHardwareKeyboardMode] ^ 1;
    }
  }

  self->_isSoftwareKeyboardVisible = v8;
  if (isSoftwareKeyboardVisible != v8)
  {
    [(SBFluidSwitcherViewController *)self _configureApplicationAndTransientOverlayDockBehaviorAssertionsForContext:0];
    view = [(SBFluidSwitcherViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)_medusaHostedKeyboardWillShowNotification:(id)notification
{
  if (!self->_isMedusaHostedKeyboardVisible)
  {
    self->_isMedusaHostedKeyboardVisible = 1;
    [(SBFluidSwitcherViewController *)self _configureApplicationAndTransientOverlayDockBehaviorAssertionsForContext:0];
    view = [(SBFluidSwitcherViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)_medusaHostedKeyboardWillHideNotification:(id)notification
{
  if (self->_isMedusaHostedKeyboardVisible)
  {
    self->_isMedusaHostedKeyboardVisible = 0;
    [(SBFluidSwitcherViewController *)self _configureApplicationAndTransientOverlayDockBehaviorAssertionsForContext:0];
    view = [(SBFluidSwitcherViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)_handleKeyboardFrameWillChange:(id)change
{
  userInfo = [change userInfo];
  v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D76BB8]];
  [v4 rectValue];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  _screen = [(SBFluidSwitcherViewController *)self _screen];
  [_screen bounds];
  v27.origin.x = v14;
  v27.origin.y = v15;
  v27.size.width = v16;
  v27.size.height = v17;
  v25.origin.x = v6;
  v25.origin.y = v8;
  v25.size.width = v10;
  v25.size.height = v12;
  v26 = CGRectIntersection(v25, v27);
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  if (!CGRectEqualToRect(self->_currentKeyboardFrame, v26))
  {
    self->_currentKeyboardFrame.origin.x = x;
    self->_currentKeyboardFrame.origin.y = y;
    self->_currentKeyboardFrame.size.width = width;
    self->_currentKeyboardFrame.size.height = height;
    view = [(SBFluidSwitcherViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)_updateStyleWithCompletion:(id)completion
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__SBFluidSwitcherViewController__updateStyleWithCompletion___block_invoke;
  v3[3] = &unk_2783AE618;
  v3[4] = self;
  [MEMORY[0x277D65DA0] perform:v3 finalCompletion:completion options:0 delegate:?];
}

void __60__SBFluidSwitcherViewController__updateStyleWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v153 = *MEMORY[0x277D85DE8];
  v136 = a2;
  v137 = a1;
  v3 = *(a1 + 32);
  a1 += 32;
  v4 = v3[264];
  v5 = [v3 genericSwitcherAccessoryLayoutElement];
  v132 = [v4 animationAttributesForLayoutElement:v5];

  v134 = [v132 updateMode];
  [*a1 _updateWallpaperStyle];
  [*a1 _updateHomeScreenContentRequirement];
  [*a1 _updateHomeScreenBackdropType];
  [*a1 _updateSwitcherBackdropType];
  v6 = *a1;
  v7 = v136[2](v136, @"apply style to visible item containers");
  [v6 _applyStyleToVisibleItemContainersWithCompletion:v7];

  v8 = *a1;
  v9 = v136[2](v136, @"plusButtonAlpha");
  [v8 _updatePlusButtonStyleWithMode:v134 completion:v9];

  v10 = *a1;
  v11 = v136[2](v136, @"repenClosedWindowsButtonAlpha");
  [v10 _updateReopenClosedWindowsButtonWithMode:v134 completion:v11];

  [*a1 _updateContentViewPassesTouchesThrough];
  [*a1 _updateSystemApertureShadowAssertion];
  v12 = *a1;
  if (*(*a1 + 1416))
  {
    [v12[264] switcherDimmingAlpha];
    v14 = v13;
    [*(*(v137 + 32) + 1416) bs_setHitTestingDisabled:BSFloatIsZero()];
    v15 = *(v137 + 32);
    v16 = v15[264];
    v17 = [v15 switcherDimmingViewLayoutElement];
    v18 = [v16 animationAttributesForLayoutElement:v17];

    v19 = [v18 updateMode];
    v20 = [v18 opacitySettings];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v23 = [*(*(v137 + 32) + 1096) animationSettings];
      v22 = [v23 opacitySettings];
    }

    v24 = MEMORY[0x277D75D18];
    v151[0] = MEMORY[0x277D85DD0];
    v151[1] = 3221225472;
    v151[2] = __60__SBFluidSwitcherViewController__updateStyleWithCompletion___block_invoke_2;
    v151[3] = &unk_2783A8BC8;
    v151[4] = *(v137 + 32);
    v151[5] = v14;
    v25 = v136[2](v136, @"switcherDimmingAlpha");
    [v24 sb_animateWithSettings:v22 mode:v19 animations:v151 completion:v25];

    v12 = *(v137 + 32);
  }

  if (v12[175])
  {
    [v12[264] switcherBackdropBlurProgress];
    v27 = v26;
    [*(*(v137 + 32) + 1400) bs_setHitTestingDisabled:BSFloatIsZero()];
    v28 = *(*(v137 + 32) + 2112);
    v29 = [*(v137 + 32) switcherBackdropLayoutElement];
    v30 = [v28 animationAttributesForLayoutElement:v29];

    v31 = [v30 updateMode];
    v32 = *(*(v137 + 32) + 1400);
    v33 = v136[2](v136, @"switcherBackdropBlurProgress");
    [v32 setBlurProgress:v31 behaviorMode:v33 completion:v27];

    v12 = *(v137 + 32);
  }

  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  obj = [v12[254] allKeys];
  v34 = [obj countByEnumeratingWithState:&v147 objects:v152 count:16];
  if (v34)
  {
    v35 = *v148;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v148 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v37 = *(*(&v147 + 1) + 8 * i);
        v38 = [*(*(v137 + 32) + 2032) objectForKey:v37];
        v146 = 0;
        v144 = 0u;
        v145 = 0u;
        location = 0u;
        v39 = *(v137 + 32);
        v40 = *(v39 + 2112);
        if (v40)
        {
          [v40 presentationAttributesForShelf:v37];
          v41 = *(&location + 1);
          v43 = *(&v144 + 1);
          v44 = *&v144;
          v42 = *&v145;
          v39 = *(v137 + 32);
        }

        else
        {
          v42 = 0.0;
          v43 = 0.0;
          v44 = 0.0;
          v41 = 0.0;
        }

        v45 = *(v39 + 1952);
        v46 = [v38 view];
        [v45 convertRect:v46 toView:{v41, v44, v43, v42}];
        v48 = v47;
        v50 = v49;
        v52 = v51;
        v54 = v53;

        v55 = v136[2](v136, @"shelf presentation");
        [v38 setPresented:location & 1 withTargetFrame:*(&v145 + 1) style:v55 completion:{v48, v50, v52, v54}];
      }

      v34 = [obj countByEnumeratingWithState:&v147 objects:v152 count:16];
    }

    while (v34);
  }

  [*(*(v137 + 32) + 2112) shelfBackgroundBlurOpacity];
  v57 = v56;
  [*(*(v137 + 32) + 2112) shelfBackgroundBlurFrame];
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v66 = [*(*(v137 + 32) + 2112) animationAttributesForLayoutElement:*(*(v137 + 32) + 1432)];
  v67 = BSFloatGreaterThanFloat();
  v68 = *(v137 + 32);
  if (v67 && !v68[185])
  {
    v69 = [[SBShelfBackgroundView alloc] initWithFrame:v59, v61, v63, v65];
    v70 = *(v137 + 32);
    v71 = *(v70 + 1480);
    *(v70 + 1480) = v69;

    [*(*(v137 + 32) + 1480) setWeighting:0.0];
    [*(*(v137 + 32) + 1952) addSubview:*(*(v137 + 32) + 1480)];
    v68 = *(v137 + 32);
  }

  if (v68[185])
  {
    objc_initWeak(&location, v68);
    v72 = [v66 layoutUpdateMode];
    if (!v72)
    {
      v72 = [v66 updateMode];
    }

    v73 = MEMORY[0x277D75D18];
    v74 = [v66 layoutSettings];
    v142[0] = MEMORY[0x277D85DD0];
    v142[1] = 3221225472;
    v142[2] = __60__SBFluidSwitcherViewController__updateStyleWithCompletion___block_invoke_3;
    v142[3] = &unk_2783AC828;
    *&v142[5] = v59;
    *&v142[6] = v61;
    *&v142[7] = v63;
    *&v142[8] = v65;
    v142[4] = *(v137 + 32);
    v75 = v136[2](v136, @"shelfBackgroundFrame");
    [v73 sb_animateWithSettings:v74 mode:v72 animations:v142 completion:v75];

    v76 = *(v137 + 32);
    v77 = v76[185];
    [v76 containerViewBounds];
    [v77 convertRect:*(*(v137 + 32) + 1952) fromView:?];
    [*(*(v137 + 32) + 1480) setExtendedBlurRect:?];
    v78 = v136[2](v136, @"shelfBackgroundOpacity");
    v79 = [v66 opacitySettings];
    v80 = v79;
    if (v79)
    {
      v81 = v79;
    }

    else
    {
      v81 = [v66 layoutSettings];
    }

    v82 = v81;

    v83 = [v66 opacityUpdateMode];
    if (!v83)
    {
      v83 = [v66 updateMode];
    }

    v84 = MEMORY[0x277D75D18];
    v141[0] = MEMORY[0x277D85DD0];
    v141[1] = 3221225472;
    v141[2] = __60__SBFluidSwitcherViewController__updateStyleWithCompletion___block_invoke_4;
    v141[3] = &unk_2783A8BC8;
    v141[4] = *(v137 + 32);
    v141[5] = v57;
    v138[0] = MEMORY[0x277D85DD0];
    v138[1] = 3221225472;
    v138[2] = __60__SBFluidSwitcherViewController__updateStyleWithCompletion___block_invoke_5;
    v138[3] = &unk_2783AEC78;
    objc_copyWeak(&v140, &location);
    v85 = v78;
    v139 = v85;
    [v84 sb_animateWithSettings:v82 mode:v83 animations:v141 completion:v138];

    objc_destroyWeak(&v140);
    objc_destroyWeak(&location);
    v68 = *(v137 + 32);
  }

  v86 = [v68 delegate];
  v87 = v86;
  v88 = *(v137 + 32);
  v89 = v88[124];
  if ((v89 & 8) != 0)
  {
    [v86 updateWindowVisibilityForSwitcherContentController:?];
    v88 = *(v137 + 32);
    v89 = v88[124];
  }

  if ((v89 & 4) != 0)
  {
    [v87 updateUserInteractionEnabledForSwitcherContentController:?];
    v88 = *(v137 + 32);
  }

  if ([v88 _controlsHomeScreenContents])
  {
    v90 = v137;
    v91 = *(v137 + 32);
    if ((*(v91 + 993) & 8) != 0)
    {
      v92 = ([*(v91 + 2112) transactionCompletionOptions] & 8) == 0;
      v93 = *(v137 + 32);
      [*(v93 + 2112) wallpaperScale];
      v95 = v94;
      if (v92)
      {
        [v87 switcherContentController:v93 setWallpaperScale:v134 withAnimationMode:0 completion:v94];
      }

      else
      {
        v96 = v136[2](v136, @"wallpaperScale");
        [v87 switcherContentController:v93 setWallpaperScale:v134 withAnimationMode:v96 completion:v95];
      }

      v90 = v137;
    }

    v97 = *(v90 + 32);
    v98 = *(v97 + 992);
    if ((v98 & 0x10) != 0)
    {
      [*(v97 + 2112) homeScreenScale];
      v100 = v99;
      v101 = v136[2](v136, @"homeScreenScale");
      [v87 switcherContentController:v97 setHomeScreenScale:v134 withAnimationMode:v101 completion:v100];

      v90 = v137;
      v97 = *(v137 + 32);
      v98 = *(v97 + 992);
    }

    if ((v98 & 0x20) != 0)
    {
      [*(v97 + 2112) homeScreenAlpha];
      v103 = v102;
      v104 = v136[2](v136, @"homeScreenAlpha");
      [v87 switcherContentController:v97 setHomeScreenAlpha:v134 withAnimationMode:v104 completion:v103];

      v90 = v137;
      v97 = *(v137 + 32);
      v98 = *(v97 + 992);
    }

    if ((v98 & 0x40) != 0)
    {
      [*(v97 + 2112) homeScreenDimmingAlpha];
      v106 = v105;
      v107 = [*(v137 + 32) windowManagementContext];
      v108 = [v107 isFlexibleWindowingEnabled];

      v109 = *(v137 + 32);
      v110 = [v109 switcherSettings];
      v111 = v110;
      if (v108)
      {
        v112 = [v110 windowingSettings];

        v113 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
        [v113 setDampingRatio:1.0];
        v114 = *(*(v137 + 32) + 1512);
        [v112 maxHomeScreenDimmingAlphaResponse];
        v116 = v115;
        [v112 minHomeScreenDimmingAlphaResponse];
        v118 = v117;
        [v112 minHomeScreenDimmingAlphaResponse];
        [v113 setResponse:v119 + (v106 - v114 + 1.0) * (v116 - v118) * 0.5];
        *(*(v137 + 32) + 1512) = v106;
        v120 = *(v137 + 32);
        v121 = v136[2](v136, @"homeScreenDimmingAlpha");
        [v87 switcherContentController:v120 setHomeScreenDimmingAlpha:v113 withSettings:3 animationMode:v121 completion:v106];
      }

      else
      {
        v113 = [v110 animationSettings];
        v121 = [v113 opacitySettings];
        v122 = v136[2](v136, @"homeScreenDimmingAlpha");
        [v87 switcherContentController:v109 setHomeScreenDimmingAlpha:v121 withSettings:v134 animationMode:v122 completion:v106];

        v112 = v111;
      }

      v90 = v137;
    }

    v123 = *(v90 + 32);
    v124 = *(v123 + 992);
    if ((v124 & 0x80) != 0)
    {
      [*(v123 + 2112) homeScreenBackdropBlurProgress];
      v126 = v125;
      v127 = v136[2](v136, @"homeScreenBackdropBlurProgress");
      [v87 switcherContentController:v123 setHomeScreenBackdropBlurProgress:v134 withAnimationMode:v127 completion:v126];

      v123 = *(v137 + 32);
      v124 = *(v123 + 992);
    }

    if ((v124 & 0x200) != 0)
    {
      v128 = [v123 windowManagementContext];
      if ([v128 isChamoisOrFlexibleWindowing])
      {
        SBContinuousExposeHomeScreenBackdropMaterialRecipeName();
      }

      else
      {
        SBHomeScreenBackdropMaterialRecipeName();
      }
      v129 = ;

      v130 = *(v137 + 32);
      v131 = v136[2](v136, @"homeScreenBackdropBlurMaterialRecipeName");
      [v87 switcherContentController:v130 setHomeScreenBackdropBlurMaterialRecipeName:v129 withAnimationMode:v134 completion:v131];
    }
  }
}

uint64_t __60__SBFluidSwitcherViewController__updateStyleWithCompletion___block_invoke_3(uint64_t a1)
{
  SBRectWithSize();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  UIRectGetCenter();
  v11 = v10;
  v13 = v12;
  [*(*(a1 + 32) + 1480) setBounds:{v3, v5, v7, v9}];
  [*(*(a1 + 32) + 1480) setCenter:{v11, v13}];
  [*(*(a1 + 32) + 1480) setNeedsLayout];
  v14 = *(*(a1 + 32) + 1480);

  return [v14 layoutIfNeeded];
}

void __60__SBFluidSwitcherViewController__updateStyleWithCompletion___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  v12 = WeakRetained;
  if (WeakRetained)
  {
    if ((a3 & 1) == 0)
    {
      v8 = WeakRetained[185];
      if (v8)
      {
        [v8 alpha];
        IsZero = BSFloatIsZero();
        v7 = v12;
        if (IsZero)
        {
          [v12[185] removeFromSuperview];
          v10 = v12[185];
          v12[185] = 0;

          v7 = v12;
        }
      }
    }
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, a2, a3);
    v7 = v12;
  }
}

- (void)_applyStyleToVisibleItemContainersWithCompletion:(id)completion
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __82__SBFluidSwitcherViewController__applyStyleToVisibleItemContainersWithCompletion___block_invoke;
  v3[3] = &unk_2783AE618;
  v3[4] = self;
  [MEMORY[0x277D65DA0] perform:v3 finalCompletion:completion options:0 delegate:?];
}

void __82__SBFluidSwitcherViewController__applyStyleToVisibleItemContainersWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v32 = a2;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v3 = *(*(a1 + 32) + 1312);
  v4 = [v3 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v41;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v41 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v40 + 1) + 8 * i);
        v9 = *(a1 + 32);
        v10 = SBLayoutRoleSetAll();
        v11 = v32[2](v32, @"style app layout");
        [v9 _applyStyleToAppLayout:v8 roles:v10 completion:v11];
      }

      v5 = [v3 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v5);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [*(*(a1 + 32) + 1968) allKeys];
  v12 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v37;
    v27 = (v32 + 2);
    v28 = v34;
    v15 = &OBJC_IVAR___SBHomeGestureDismissableCoverSheetViewController__wantsHomeGestureOwnership;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v36 + 1) + 8 * j);
        v18 = [*(*(a1 + 32) + v15[772]) objectForKey:{v17, v27, v28}];
        if (!v18)
        {
          v19 = [*(*(a1 + 32) + 2112) animationAttributesForLayoutElement:v17];
          v31 = [v19 updateMode];
          v30 = [v19 opacitySettings];
          v20 = [*(*(a1 + 32) + 1968) objectForKey:v17];
          v21 = MEMORY[0x277D75D18];
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v34[0] = __82__SBFluidSwitcherViewController__applyStyleToVisibleItemContainersWithCompletion___block_invoke_2;
          v34[1] = &unk_2783A8C18;
          v35 = v20;
          v22 = a1;
          v23 = v14;
          v24 = v32[2];
          v25 = v20;
          v26 = v24(v32, @"non model opacity leaf opacity");
          [v21 sb_animateWithSettings:v30 mode:v31 animations:v33 completion:v26];

          v14 = v23;
          a1 = v22;

          v15 = &OBJC_IVAR___SBHomeGestureDismissableCoverSheetViewController__wantsHomeGestureOwnership;
        }
      }

      v13 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v13);
  }
}

- (void)_applyStyleToAppLayout:(id)layout roles:(id)roles completion:(id)completion
{
  layoutCopy = layout;
  rolesCopy = roles;
  completionCopy = completion;
  v12 = rolesCopy;
  if (!v12)
  {
    [SBFluidSwitcherViewController _applyStyleToAppLayout:a2 roles:? completion:?];
  }

  v13 = v12;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [SBFluidSwitcherViewController _applyStyleToAppLayout:v13 roles:a2 completion:?];
  }

  v14 = MEMORY[0x277D65DA0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __73__SBFluidSwitcherViewController__applyStyleToAppLayout_roles_completion___block_invoke;
  v17[3] = &unk_2783AE908;
  v17[4] = self;
  v18 = layoutCopy;
  v19 = v13;
  v15 = v13;
  v16 = layoutCopy;
  [v14 perform:v17 finalCompletion:completionCopy options:0 delegate:self];
}

void __73__SBFluidSwitcherViewController__applyStyleToAppLayout_roles_completion___block_invoke(id *a1, void *a2)
{
  v167 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] appLayouts];
  v5 = [v4 indexOfObject:a1[5]];

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1[4] + 264) shadowOffsetForIndex:v5];
    v99 = v6;
    [*(a1[4] + 264) wallpaperOverlayAlphaForIndex:v5];
    v8 = v7;
    [*(a1[4] + 264) lighteningAlphaForIndex:v5];
    v10 = v9;
    v97 = [*(a1[4] + 264) shouldUseBrightMaterialForIndex:v5];
    v96 = [*(a1[4] + 264) shouldUseBackgroundWallpaperTreatmentForIndex:v5];
    v95 = [*(a1[4] + 264) isItemContainerPointerInteractionEnabled];
    v11 = [a1[4] windowingConfiguration];
    [v11 stageInterItemSpacing];
    v13 = v12;

    if ([MEMORY[0x277D75658] isInHardwareKeyboardMode])
    {
      v94 = [*(a1[4] + 264) isFocusEnabledForAppLayout:a1[5]];
    }

    else
    {
      v94 = 0;
    }

    v93 = [*(a1[4] + 264) clipsToUnobscuredMarginAtIndex:v5];
    [*(a1[4] + 264) visibleMarginForItemContainerAtIndex:v5];
    v15 = v14;
    v92 = [*(a1[4] + 264) shouldScaleOverlayToFillBoundsAtIndex:v5];
    [*(a1[4] + 264) titleAndIconOpacityForIndex:v5];
    v88 = v16;
    v81 = [*(a1[4] + 264) isResizeGrabberVisibleForAppLayout:a1[5]];
    [*(a1[4] + 264) iconOpacityForIndex:v5];
    v84 = v17;
    v18 = [*(a1[4] + 264) headerStyleForIndex:v5];
    v86 = [*(a1[4] + 264) wantsSpaceAccessoryViewPointerInteractionsForAppLayout:a1[5]];
    [*(a1[4] + 264) spaceAccessoryViewIconHitTestOutsetForAppLayout:a1[5]];
    v85 = v19;
    v100 = [*(a1[4] + 264) shouldAccessoryDrawShadowForAppLayout:a1[5]];
    [*(a1[4] + 264) backgroundOpacityForIndex:v5];
    v80 = v20;
    [*(a1[4] + 264) titleOpacityForIndex:v5];
    v83 = v21;
    v91 = [*(a1[4] + 264) isIndexRubberbandableForSwipeToKill:v5];
    v98 = [*(a1[4] + 264) useItemContainerFooterViewsForAppLayout:a1[5]];
    v22 = [*(a1[4] + 264) animationAttributesForLayoutElement:a1[5]];
    v101 = [v22 opacityUpdateMode];
    if (!v101)
    {
      v101 = [v22 updateMode];
    }

    v89 = [v22 titleAndIconOpacityUpdateMode];
    if (!v89)
    {
      v89 = [v22 updateMode];
    }

    v23 = [v22 opacitySettings];
    v24 = v23;
    v87 = v18;
    v82 = v22;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = [v22 layoutSettings];
    }

    v102 = v25;

    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    obj = [a1[5] leafAppLayouts];
    v26 = [obj countByEnumeratingWithState:&v161 objects:v166 count:16];
    if (v26)
    {
      v27 = v26;
      v113 = *v162;
      v90 = v3;
      v114 = v5;
      do
      {
        v28 = 0;
        v103 = v27;
        do
        {
          if (*v162 != v113)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v161 + 1) + 8 * v28);
          v30 = a1[5];
          v31 = [v29 allItems];
          v32 = [v31 firstObject];
          v33 = [v30 layoutRoleForItem:v32];

          if ([a1[6] containsRole:v33])
          {
            v110 = [a1[4] _itemContainerForAppLayoutIfExists:v29];
            v111 = [*(a1[4] + 264) tintStyleForLayoutRole:v33 inAppLayout:a1[5]];
            v109 = [*(a1[4] + 264) shadowStyleForLayoutRole:v33 inAppLayout:a1[5]];
            [*(a1[4] + 264) opacityForLayoutRole:v33 inAppLayout:a1[5] atIndex:v5];
            v35 = v34;
            v36 = 0;
            if ((v100 & 1) == 0)
            {
              [*(a1[4] + 264) shadowOpacityForLayoutRole:v33 atIndex:v5];
              v36 = v37;
            }

            [*(a1[4] + 264) dimmingAlphaForLayoutRole:v33 inAppLayout:a1[5]];
            v39 = v38;
            v108 = [*(a1[4] + 264) isLayoutRoleSelectable:v33 inAppLayout:a1[5]];
            v107 = [*(a1[4] + 264) shouldSuppressHighlightEffectForLayoutRole:v33 inAppLayout:a1[5]];
            v40 = [*(a1[4] + 264) shouldAllowContentViewTouchesForLayoutRole:v33 inAppLayout:a1[5]];
            if ([a1[4] _supportsKillingForAppLayout:a1[5]])
            {
              v105 = [*(a1[4] + 264) isLayoutRoleKillable:v33 inAppLayout:a1[5] atIndex:v5];
            }

            else
            {
              v105 = 0;
            }

            v106 = [*(a1[4] + 264) isLayoutRoleEligibleForContentDragSpringLoading:v33 inAppLayout:a1[5]];
            v41 = [*(a1[4] + 264) activeCornersForTouchResizeForLayoutRole:v33 inAppLayout:a1[5]];
            v42 = [*(a1[4] + 264) visibleCornersForTouchResizeForLayoutRole:v33 inAppLayout:a1[5]];
            if ([a1[4] _isSwitcherForegroundActive])
            {
              v43 = [*(a1[4] + 264) isItemResizingAllowedForLayoutRole:v33 inAppLayout:a1[5]];
            }

            else
            {
              v43 = 0;
            }

            v44 = [*(a1[4] + 264) touchBehaviorForLayoutRole:v33 inAppLayout:a1[5]];
            v45 = MEMORY[0x277D75D18];
            v141[0] = MEMORY[0x277D85DD0];
            v141[1] = 3221225472;
            v141[2] = __73__SBFluidSwitcherViewController__applyStyleToAppLayout_roles_completion___block_invoke_2;
            v141[3] = &unk_2783AECA0;
            v141[4] = a1[4];
            v141[5] = v29;
            v46 = v110;
            v142 = v46;
            v143 = v114;
            v156 = v40;
            v157 = v97;
            v144 = v35;
            v145 = v36;
            v146 = v99;
            v147 = v39;
            v148 = v111;
            v158 = v96;
            v149 = v10;
            v150 = v8;
            v159 = v95;
            v151 = v13;
            v152 = v109;
            v153 = v41;
            v160 = v43;
            v154 = v42;
            v155 = v44;
            v3 = v90;
            v47 = v90[2](v90, @"style");
            [v45 sb_animateWithSettings:v102 mode:v101 animations:v141 completion:v47];

            [v46 setKillAxis:0];
            [v46 setKillable:v105];
            [v46 setRubberbandable:v91];
            [v46 setSelectable:v108];
            [v46 setSuppressesHighlightEffect:v107];
            [v46 setClipsToUnobscuredMargin:v93];
            [v46 setUnobscuredMargin:v15];
            [v46 setShouldScaleOverlayToFillBounds:v92];
            [v46 setEligibleForContentDragSpringLoading:v106];
            if (v98)
            {
              v48 = MEMORY[0x277D75D18];
              v136[0] = MEMORY[0x277D85DD0];
              v136[1] = 3221225472;
              v136[2] = __73__SBFluidSwitcherViewController__applyStyleToAppLayout_roles_completion___block_invoke_3;
              v136[3] = &unk_2783AECC8;
              v49 = v46;
              v137 = v49;
              v138 = v83;
              v139 = v84;
              v140 = v88;
              v50 = v90[2](v90, @"item container title and icon opacity");
              [v48 sb_animateWithSettings:v102 mode:v89 animations:v136 completion:v50];

              [v49 setWantsPointerInteractions:v86];
              [v49 setIconHitTestOutset:v85];
              [v49 setDrawsFooter:v87 == 1];
            }

            else
            {
              [v46 setDrawsFooter:0];
            }

            v27 = v103;
            if (v33 == 1)
            {
              v51 = v94;
            }

            else
            {
              v51 = 0;
            }

            [v46 setFocusable:v51];

            v5 = v114;
          }

          ++v28;
        }

        while (v27 != v28);
        v27 = [obj countByEnumeratingWithState:&v161 objects:v166 count:16];
      }

      while (v27);
    }

    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v52 = [a1[5] allItems];
    v53 = [v52 countByEnumeratingWithState:&v132 objects:v165 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v133;
      LOBYTE(v56) = 1;
      do
      {
        for (i = 0; i != v54; ++i)
        {
          if (*v133 != v55)
          {
            objc_enumerationMutation(v52);
          }

          v58 = [a1[5] layoutRoleForItem:*(*(&v132 + 1) + 8 * i)];
          if (v56)
          {
            v56 = [a1[6] containsRole:v58];
          }

          else
          {
            v56 = 0;
          }
        }

        v54 = [v52 countByEnumeratingWithState:&v132 objects:v165 count:16];
      }

      while (v54);
    }

    else
    {
      v56 = 1;
    }

    if (([a1[6] isEmpty] & 1) != 0 || v56)
    {
      v59 = [*(a1[4] + 247) objectForKey:a1[5]];
      v60 = [*(a1[4] + 248) objectForKey:a1[5]];
      v61 = 0;
      if (v100)
      {
        [*(a1[4] + 264) shadowOpacityForLayoutRole:1 atIndex:v5];
        v61 = v62;
      }

      v63 = [*(a1[4] + 264) shadowStyleForLayoutRole:1 inAppLayout:a1[5]];
      [*(a1[4] + 264) opacityForLayoutRole:1 inAppLayout:a1[5] atIndex:v5];
      v65 = v64;
      v66 = MEMORY[0x277D75D18];
      v121[0] = MEMORY[0x277D85DD0];
      v121[1] = 3221225472;
      v121[2] = __73__SBFluidSwitcherViewController__applyStyleToAppLayout_roles_completion___block_invoke_4;
      v121[3] = &unk_2783AECF0;
      v67 = v59;
      v122 = v67;
      v126 = v65;
      v68 = a1[5];
      v69 = a1[4];
      v123 = v68;
      v124 = v69;
      v70 = v60;
      v125 = v70;
      v127 = v80;
      v128 = v99;
      v129 = v61;
      v130 = v63;
      v131 = v81;
      v71 = v3[2](v3, @"accessory style");
      v72 = v102;
      [v66 sb_animateWithSettings:v102 mode:v101 animations:v121 completion:v71];

      if (v98)
      {
        [v67 setDrawsFooter:0];
        v73 = v88;
        v74 = v87;
      }

      else
      {
        v74 = v87;
        v112 = MEMORY[0x277D75D18];
        v115[0] = MEMORY[0x277D85DD0];
        v115[1] = 3221225472;
        v115[2] = __73__SBFluidSwitcherViewController__applyStyleToAppLayout_roles_completion___block_invoke_5;
        v115[3] = &unk_2783AED18;
        v75 = v67;
        v116 = v75;
        v118 = v83;
        v117 = v70;
        v73 = v88;
        v119 = v84;
        v120 = v88;
        v3[2](v3, @"accessory title opacity");
        v77 = v76 = v5;
        [v112 sb_animateWithSettings:v102 mode:v89 animations:v115 completion:v77];

        v5 = v76;
        [v75 setWantsPointerInteractions:v86];
        [v75 setIconHitTestOutset:v85];
        v78 = v75;
        v72 = v102;
        [v78 setDrawsFooter:v87 == 1];
      }

      if (v74)
      {
        v73 = 0.0;
      }

      v79 = v3[2](v3, @"header opacity");
      [v70 setHeaderOpacity:v101 updateMode:v72 settings:v79 completion:v73];

      if (v100)
      {
        [a1[4] _updateShadowPathForIndex:v5];
      }
    }
  }
}

void __73__SBFluidSwitcherViewController__applyStyleToAppLayout_roles_completion___block_invoke_2(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 2016) objectForKey:*(a1 + 40)];
  if (v5)
  {
    [*(a1 + 32) _applyStyleToLiveContentOverlay:v5 forItemContainer:*(a1 + 48) atIndex:*(a1 + 56)];
    [*(a1 + 32) _applyTouchBehaviorToLiveContentOverlay:v5 forAppLayout:*(a1 + 40)];
  }

  [*(a1 + 48) setContentViewBlocksTouches:(*(a1 + 160) & 1) == 0];
  v2 = [*(a1 + 48) contentView];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 48) contentView];
    [v4 setShouldUseBrightMaterial:*(a1 + 161)];
  }

  [*(a1 + 48) setAlpha:*(a1 + 64)];
  [*(a1 + 48) setShadowAlpha:*(a1 + 72)];
  [*(a1 + 48) setShadowOffset:*(a1 + 80)];
  [*(a1 + 48) setDimmingAlpha:*(a1 + 88)];
  [*(a1 + 48) setTintStyle:*(a1 + 96)];
  [*(a1 + 48) setLighteningAlpha:*(a1 + 104)];
  [*(a1 + 48) setShouldUseBackgroundWallpaperTreatment:*(a1 + 162)];
  [*(a1 + 48) setWallpaperOverlayAlpha:*(a1 + 112)];
  [*(a1 + 48) setPointerInteractionEnabled:*(a1 + 163)];
  [*(a1 + 48) setPointerInteractionHitTestPadding:*(a1 + 120)];
  [*(a1 + 48) setShadowStyle:*(a1 + 128)];
  [*(a1 + 48) setAllowedTouchResizeCorners:*(a1 + 136)];
  [*(a1 + 48) setVisibleTouchResizeCorners:*(a1 + 144)];
  [*(a1 + 48) setResizingAllowed:*(a1 + 164)];
  [*(a1 + 48) setOccludedInContinuousExposeStage:*(a1 + 152) != 2];
}

uint64_t __73__SBFluidSwitcherViewController__applyStyleToAppLayout_roles_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setTitleOpacity:*(a1 + 40)];
  [*(a1 + 32) setIconOpacity:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);

  return [v2 setTitleAndIconOpacity:v3];
}

uint64_t __73__SBFluidSwitcherViewController__applyStyleToAppLayout_roles_completion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setAlpha:*(a1 + 64)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) shelfFocusedDisplayItems];
  [v2 setDrawsFocusIndicator:{objc_msgSend(v3, "containsAnyItemFromSet:", v4)}];

  [*(a1 + 56) setAlpha:*(a1 + 64)];
  [*(a1 + 56) setBackgroundOpacity:*(a1 + 72)];
  [*(a1 + 56) setShadowOffset:*(a1 + 80)];
  [*(a1 + 56) setShadowAlpha:*(a1 + 88)];
  [*(a1 + 56) setShadowStyle:*(a1 + 96)];
  v5 = *(a1 + 56);
  v6 = 0.0;
  if (*(a1 + 104))
  {
    v6 = 1.0;
  }

  return [v5 setResizeGrabberOpacity:v6];
}

uint64_t __73__SBFluidSwitcherViewController__applyStyleToAppLayout_roles_completion___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setTitleOpacity:*(a1 + 48)];
  [*(a1 + 40) setTitleOpacity:*(a1 + 48)];
  [*(a1 + 32) setIconOpacity:*(a1 + 56)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);

  return [v2 setTitleAndIconOpacity:v3];
}

- (void)_applyStyleToLiveContentOverlay:(id)overlay forItemContainer:(id)container atIndex:(unint64_t)index
{
  overlayCopy = overlay;
  appLayout = [container appLayout];
  v9 = [(SBSwitcherPersonality *)self->_personality shouldUseBrightMaterialForIndex:index];
  allItems = [appLayout allItems];
  firstObject = [allItems firstObject];

  v12 = [(SBFluidSwitcherViewController *)self appLayoutContainingAppLayout:appLayout];
  v13 = [(SBFluidSwitcherViewController *)self lastInteractedItemsInAppLayout:v12];
  firstObject2 = [v13 firstObject];
  v15 = [firstObject2 isEqual:firstObject];

  [overlayCopy setUsesBrightSceneViewBackgroundMaterial:v9];
  [overlayCopy setActiveAppearance:v15];
}

- (void)presentSlideOverEdgeProtectTongueOnEdge:(unint64_t)edge
{
  v4 = [[SBSlideOverEdgeProtectTongueSwitcherModifierEvent alloc] initWithTonguePresented:1 edge:edge];
  [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v4];
}

- (void)dismissSlideOverEdgeProtectTongueOnEdge:(unint64_t)edge
{
  v4 = [[SBSlideOverEdgeProtectTongueSwitcherModifierEvent alloc] initWithTonguePresented:0 edge:edge];
  [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v4];
}

- (void)presentContinuousExposeStripEdgeProtectTongue
{
  v3 = [[SBContinuousExposeStripEdgeProtectTongueSwitcherModifierEvent alloc] initWithTonguePresented:1];
  [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v3];
}

- (void)dismissContinuousExposeStripEdgeProtectTongue
{
  v3 = [[SBContinuousExposeStripEdgeProtectTongueSwitcherModifierEvent alloc] initWithTonguePresented:0];
  [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v3];
}

- (void)willBeginGestureWithType:(int64_t)type identifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [[SBGestureSwitcherModifierEvent alloc] initWithGestureID:identifierCopy selectedAppLayout:0 gestureType:type phase:0];

  [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v7];
}

- (void)_setCenterWindowActivationContext:(id)context forKey:(id)key
{
  contextCopy = context;
  keyCopy = key;
  centerWindowActivationAnimationContexts = self->_centerWindowActivationAnimationContexts;
  if (!centerWindowActivationAnimationContexts)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v9 = self->_centerWindowActivationAnimationContexts;
    self->_centerWindowActivationAnimationContexts = dictionary;

    centerWindowActivationAnimationContexts = self->_centerWindowActivationAnimationContexts;
  }

  [(NSMutableDictionary *)centerWindowActivationAnimationContexts setObject:contextCopy forKey:keyCopy];
}

- (void)_removeCenterWindowAnimationContextWithKey:(id)key
{
  v4 = [(SBFluidSwitcherViewController *)self _centerWindowActivationAnimationContextForKey:key];
  if (v4)
  {
    v8 = v4;
    contentPortalContainer = [v4 contentPortalContainer];
    [contentPortalContainer removeFromSuperview];

    deparentingPortal = [v8 deparentingPortal];
    [deparentingPortal removeFromSuperview];

    v7 = [(NSMutableDictionary *)self->_centerWindowActivationAnimationContexts allKeysForObject:v8];
    [(NSMutableDictionary *)self->_centerWindowActivationAnimationContexts removeObjectsForKeys:v7];

    v4 = v8;
  }
}

- (void)prepareForIncomingCenterWindowAnimationWithAction:(id)action
{
  v100 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v5 = MEMORY[0x277CCACA8];
  sourceAppBundleIdentifier = [actionCopy sourceAppBundleIdentifier];
  v81 = actionCopy;
  sourceSceneIdentifier = [actionCopy sourceSceneIdentifier];
  v8 = [v5 stringWithFormat:@"sceneID:%@-%@", sourceAppBundleIdentifier, sourceSceneIdentifier];

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  selfCopy = self;
  visibleAppLayouts = [(SBSwitcherPersonality *)self->_personality visibleAppLayouts];
  v10 = [visibleAppLayouts countByEnumeratingWithState:&v92 objects:v99 count:16];
  if (!v10)
  {

    v22 = 0;
LABEL_26:
    v23 = v81;
LABEL_27:
    v37 = MEMORY[0x277CCA9B8];
    v96 = *MEMORY[0x277CCA450];
    v97 = @"Center window activation denied in current configuration.";
    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
    v39 = [v37 errorWithDomain:@"SBWindowActivationScenePrewarmError" code:-1 userInfo:v38];

    v40 = [MEMORY[0x277CF0B68] responseForError:v39];

    goto LABEL_28;
  }

  v11 = v10;
  v87 = 0;
  v84 = 0;
  v85 = *v93;
  obj = visibleAppLayouts;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v93 != v85)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v92 + 1) + 8 * i);
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      allItems = [v13 allItems];
      v15 = [allItems countByEnumeratingWithState:&v88 objects:v98 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v89;
        while (2)
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v89 != v17)
            {
              objc_enumerationMutation(allItems);
            }

            v19 = *(*(&v88 + 1) + 8 * j);
            uniqueIdentifier = [v19 uniqueIdentifier];
            if ([uniqueIdentifier isEqualToString:v8])
            {
              v21 = v13;

              v84 = [v21 layoutRoleForItem:v19];
              v87 = v21;
              goto LABEL_16;
            }
          }

          v16 = [allItems countByEnumeratingWithState:&v88 objects:v98 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:
    }

    v11 = [obj countByEnumeratingWithState:&v92 objects:v99 count:16];
  }

  while (v11);

  v22 = v87;
  if (!v87)
  {
    goto LABEL_26;
  }

  v23 = v81;
  if ([v87 environment] == 2)
  {
    goto LABEL_27;
  }

  contentView = [(SBFluidSwitcherViewController *)selfCopy contentView];
  sourceLayerContextId = [v81 sourceLayerContextId];
  morphContainerRenderId = [v81 morphContainerRenderId];
  v27 = objc_alloc(MEMORY[0x277D76180]);
  [contentView bounds];
  v28 = [v27 initWithFrame:?];
  portalLayer = [v28 portalLayer];
  [portalLayer setSourceContextId:sourceLayerContextId];

  portalLayer2 = [v28 portalLayer];
  [portalLayer2 setSourceLayerRenderId:morphContainerRenderId];

  portalLayer3 = [v28 portalLayer];
  [portalLayer3 setAllowsGroupOpacity:1];

  [v28 setName:@"com.apple.SpringBoard.centerWindowDeparentingPortal"];
  [v28 setAllowsHitTesting:1];
  [v28 setMatchesPosition:1];
  [v28 setMatchesTransform:1];
  [contentView addSubview:v28];
  v32 = objc_opt_new();
  [v32 setSourceContextId:sourceLayerContextId];
  [v32 setSourceLayerRenderId:{objc_msgSend(v81, "deparentingPortalAlphaSourceLayerRenderId")}];
  [v32 setKeyPath:@"opacity"];
  [v32 setDuration:INFINITY];
  [v32 setRemovedOnCompletion:0];
  layer = [v28 layer];
  v86 = v32;
  [layer addAnimation:v32 forKey:@"CenterWindowDeparenting.opacityMatchProperty"];

  windowManagementContext = [(SBFluidSwitcherViewController *)selfCopy windowManagementContext];
  if (([windowManagementContext isChamoisOrFlexibleWindowing] & 1) != 0 || !objc_msgSend(v81, "requestCenterSlot"))
  {

    v36 = 1;
  }

  else
  {
    requestFullscreen = [v81 requestFullscreen];

    v36 = requestFullscreen ? 2 : 1;
  }

  [(SBFluidSwitcherViewController *)selfCopy _frameForCenterItemInInterfaceOrientation:[(SBFluidSwitcherViewController *)selfCopy switcherInterfaceOrientation] centerConfiguration:SBMainDisplayLayoutStateCenterConfigurationFromAppLayoutCenterConfiguration(v36)];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v41, v43, v45, v47}];
  [contentView insertSubview:v49 atIndex:0];
  _sbWindowScene = [(SBFluidSwitcherViewController *)selfCopy _sbWindowScene];
  [_sbWindowScene screen];
  v52 = v51 = contentView;
  fixedCoordinateSpace = [v52 fixedCoordinateSpace];
  v54 = [SBSceneLayoutCoordinateSpace coordinateSpaceForInterfaceOrientation:1 withReferenceCoordinateSpace:fixedCoordinateSpace inOrientation:1];

  [(SBFluidSwitcherViewController *)selfCopy containerViewBounds];
  v22 = v87;
  [(SBFluidSwitcherViewController *)selfCopy preferredFrameForLayoutRole:v84 inAppLayout:v87 bounds:[(SBFluidSwitcherViewController *)selfCopy switcherInterfaceOrientation] interfaceOrientation:v55, v56, v57, v58];
  v59 = v51;
  obja = v51;
  [v51 convertRect:v54 toCoordinateSpace:?];
  v60 = [SBSceneLayoutCoordinateSpace coordinateSpaceForFrame:v54 withinCoordinateSpace:?];
  [v59 convertRect:v60 toCoordinateSpace:{v42, v44, v46, v48}];
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  personality = selfCopy->_personality;
  [(SBFluidSwitcherViewController *)selfCopy displayCornerRadius];
  SBRectCornerRadiiForRadius();
  [(SBSwitcherPersonality *)personality cornerRadiiForLayoutRole:4 inAppLayout:v87 withCornerRadii:?];
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v78 = objc_opt_new();
  [v78 setContentPortalContainer:v49];
  [v78 setDeparentingPortal:v28];
  v23 = v81;
  interactionIdentifier = [v81 interactionIdentifier];
  [(SBFluidSwitcherViewController *)selfCopy _setCenterWindowActivationContext:v78 forKey:interactionIdentifier];

  v40 = [MEMORY[0x277D76408] responseWithSceneContainer:v49 expectedSceneFrame:v62 cornerRadii:{v64, v66, v68, v71, v73, v75, v77}];

  if (!v40)
  {
    goto LABEL_27;
  }

LABEL_28:
  [v23 sendResponse:v40];
}

- (void)cleanUpAfterCompletingCenterWindowAnimationWithAction:(id)action
{
  actionCopy = action;
  v8 = actionCopy;
  if (self->_centerWindowInAppMorphCompletion)
  {
    objc_storeStrong(&self->_pendingCenterWindowCleanupAction, action);
    (*(self->_centerWindowInAppMorphCompletion + 2))();
    centerWindowInAppMorphCompletion = self->_centerWindowInAppMorphCompletion;
    self->_centerWindowInAppMorphCompletion = 0;
  }

  else
  {
    interactionIdentifier = [actionCopy interactionIdentifier];
    [(SBFluidSwitcherViewController *)self _removeCenterWindowAnimationContextWithKey:interactionIdentifier];

    centerWindowInAppMorphCompletion = [MEMORY[0x277CF0B68] response];
    [v8 sendResponse:centerWindowInAppMorphCompletion];
  }
}

- (void)associateCenterWindowInteractionIdentifier:(id)identifier withSceneIdentifier:(id)sceneIdentifier
{
  sceneIdentifierCopy = sceneIdentifier;
  v6 = [(SBFluidSwitcherViewController *)self _centerWindowActivationAnimationContextForKey:identifier];
  if (v6)
  {
    [(SBFluidSwitcherViewController *)self _setCenterWindowActivationContext:v6 forKey:sceneIdentifierCopy];
  }
}

- (void)_applyTouchBehaviorToLiveContentOverlay:(id)overlay forAppLayout:(id)layout
{
  leafAppLayoutsToAdjustedAppLayouts = self->_leafAppLayoutsToAdjustedAppLayouts;
  layoutCopy = layout;
  overlayCopy = overlay;
  v10 = [(NSDictionary *)leafAppLayoutsToAdjustedAppLayouts objectForKey:layoutCopy];
  v9 = [layoutCopy itemForLayoutRole:1];

  [overlayCopy setTouchBehavior:{-[SBSwitcherPersonality touchBehaviorForLayoutRole:inAppLayout:](self->_personality, "touchBehaviorForLayoutRole:inAppLayout:", objc_msgSend(v10, "layoutRoleForItem:", v9), v10)}];
}

- (id)_orderedViewsForLayoutElement:(id)element excludeSwitcherHostedShelves:(BOOL)shelves
{
  shelvesCopy = shelves;
  v81 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  switcherLayoutElementType = [elementCopy switcherLayoutElementType];
  v8 = 0;
  if (switcherLayoutElementType > 6)
  {
    if (switcherLayoutElementType <= 8)
    {
      if (switcherLayoutElementType == 7)
      {
        v20 = [(NSMutableDictionary *)self->_visibleShelves objectForKey:elementCopy];
        viewIfLoaded = [v20 viewIfLoaded];

        if (viewIfLoaded)
        {
          v74 = viewIfLoaded;
          v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v74 count:1];
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_89;
      }

      if (self->_bezelEffectsPortalView)
      {
        bezelEffectsPortalView = self->_bezelEffectsPortalView;
        v9 = MEMORY[0x277CBEA60];
        p_bezelEffectsPortalView = &bezelEffectsPortalView;
        goto LABEL_29;
      }
    }

    else
    {
      if (switcherLayoutElementType != 9)
      {
        if (switcherLayoutElementType == 10)
        {
          v25 = [(NSMutableDictionary *)self->_visibleSplitViewHandleNubViews objectForKey:elementCopy];
          v12 = v25;
          if (v25)
          {
            v71 = v25;
            v13 = MEMORY[0x277CBEA60];
            v14 = &v71;
            goto LABEL_36;
          }
        }

        else
        {
          if (switcherLayoutElementType != 11)
          {
            goto LABEL_89;
          }

          v11 = [(NSMutableDictionary *)self->_visibleSplitViewHandleDimmingViews objectForKey:elementCopy];
          v12 = v11;
          if (v11)
          {
            v70 = v11;
            v13 = MEMORY[0x277CBEA60];
            v14 = &v70;
LABEL_36:
            v8 = [v13 arrayWithObjects:v14 count:1];
LABEL_38:

            goto LABEL_89;
          }
        }

        v8 = 0;
        goto LABEL_38;
      }

      if (self->_dockPortalView)
      {
        dockPortalView = self->_dockPortalView;
        v9 = MEMORY[0x277CBEA60];
        p_bezelEffectsPortalView = &dockPortalView;
        goto LABEL_29;
      }
    }

LABEL_33:
    v8 = 0;
    goto LABEL_89;
  }

  if (switcherLayoutElementType > 2)
  {
    switch(switcherLayoutElementType)
    {
      case 3:
        if (self->_backdropView)
        {
          backdropView = self->_backdropView;
          v9 = MEMORY[0x277CBEA60];
          p_bezelEffectsPortalView = &backdropView;
          goto LABEL_29;
        }

        break;
      case 4:
        if (self->_slideOverTongue)
        {
          appLayoutToAttachSlideOverTongue = [(SBSwitcherPersonality *)self->_personality appLayoutToAttachSlideOverTongue];
          selfCopy = self;
          v24 = appLayoutToAttachSlideOverTongue;
          if (appLayoutToAttachSlideOverTongue)
          {
            v8 = 0;
          }

          else
          {
            slideOverTongue = selfCopy->_slideOverTongue;
            v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&slideOverTongue count:1];
          }

          goto LABEL_89;
        }

        break;
      case 6:
        if (self->_continuousExposeStripTongueCaptureOnlyBackdropView)
        {
          continuousExposeStripTongueCaptureOnlyBackdropView = self->_continuousExposeStripTongueCaptureOnlyBackdropView;
          v9 = MEMORY[0x277CBEA60];
          p_bezelEffectsPortalView = &continuousExposeStripTongueCaptureOnlyBackdropView;
LABEL_29:
          v8 = [v9 arrayWithObjects:p_bezelEffectsPortalView count:1];
          goto LABEL_89;
        }

        break;
      default:
        goto LABEL_89;
    }

    goto LABEL_33;
  }

  if (switcherLayoutElementType)
  {
    if (switcherLayoutElementType != 2)
    {
      goto LABEL_89;
    }

    if (self->_dimmingView)
    {
      dimmingView = self->_dimmingView;
      v9 = MEMORY[0x277CBEA60];
      p_bezelEffectsPortalView = &dimmingView;
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  v15 = elementCopy;
  v16 = objc_opt_new();
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __92__SBFluidSwitcherViewController__orderedViewsForLayoutElement_excludeSwitcherHostedShelves___block_invoke;
  v66[3] = &unk_2783AED40;
  v67 = v15;
  selfCopy2 = self;
  v18 = dictionary;
  v69 = v18;
  v56 = v67;
  [v67 enumerate:v66];
  v54 = elementCopy;
  if (shelvesCopy)
  {
    v19 = objc_opt_new();
  }

  else
  {
    v26 = objc_alloc(MEMORY[0x277CBEB18]);
    visibleShelvesHostedInContentView = self->_visibleShelvesHostedInContentView;
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __92__SBFluidSwitcherViewController__orderedViewsForLayoutElement_excludeSwitcherHostedShelves___block_invoke_2;
    v65[3] = &unk_2783AED68;
    v65[4] = self;
    v28 = [(NSMutableSet *)visibleShelvesHostedInContentView bs_map:v65];
    allObjects = [v28 allObjects];
    v19 = [v26 initWithArray:allObjects];
  }

  [(SBSwitcherPersonality *)self->_personality topMostLayoutRolesForAppLayout:v56];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v64 = 0u;
  v30 = [obj countByEnumeratingWithState:&v61 objects:v80 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = 0;
    v33 = *v62;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v62 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v35 = *(*(&v61 + 1) + 8 * i);
        v36 = [v18 objectForKey:v35];
        if (v36)
        {
          [v16 addObject:v36];
          [v18 removeObjectForKey:v35];
          integerValue = [v35 integerValue];
          environment = [v56 environment];
          v39 = integerValue == 4 || environment == 3;
          if (v39 && [v19 count])
          {
            [v16 addObjectsFromArray:v19];
            [v19 removeAllObjects];
          }

          if (!v32)
          {
            v40 = objc_opt_class();
            v41 = v36;
            if (v40)
            {
              if (objc_opt_isKindOfClass())
              {
                v42 = v41;
              }

              else
              {
                v42 = 0;
              }
            }

            else
            {
              v42 = 0;
            }

            v32 = v42;
          }
        }
      }

      v31 = [obj countByEnumeratingWithState:&v61 objects:v80 count:16];
    }

    while (v31);
  }

  else
  {
    v32 = 0;
  }

  if ([v18 count])
  {
    allValues = [v18 allValues];
    [v16 addObjectsFromArray:allValues];
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v44 = v19;
  v45 = [v44 countByEnumeratingWithState:&v57 objects:v79 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v58;
    do
    {
      for (j = 0; j != v46; ++j)
      {
        if (*v58 != v47)
        {
          objc_enumerationMutation(v44);
        }

        [v16 insertObject:*(*(&v57 + 1) + 8 * j) atIndex:0];
      }

      v46 = [v44 countByEnumeratingWithState:&v57 objects:v79 count:16];
    }

    while (v46);
  }

  v49 = [(NSMutableDictionary *)self->_visibleOverlayAccessoryViews objectForKey:v56];
  if (v49)
  {
    overlayPortalView = [v32 overlayPortalView];

    if (overlayPortalView == v49)
    {
      [v16 addObject:v49];
    }

    else
    {
      [v16 insertObject:v49 atIndex:0];
    }
  }

  v51 = [(NSMutableDictionary *)self->_visibleUnderlayAccessoryViews objectForKey:v56];
  if (v51)
  {
    [v16 addObject:v51];
  }

  if (self->_slideOverTongue)
  {
    appLayoutToAttachSlideOverTongue2 = [(SBSwitcherPersonality *)self->_personality appLayoutToAttachSlideOverTongue];
    if (appLayoutToAttachSlideOverTongue2 && [v56 isOrContainsAppLayout:appLayoutToAttachSlideOverTongue2])
    {
      [v16 addObject:self->_slideOverTongue];
    }
  }

  v8 = v16;

  elementCopy = v54;
LABEL_89:

  return v8;
}

void __92__SBFluidSwitcherViewController__orderedViewsForLayoutElement_excludeSwitcherHostedShelves___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) leafAppLayoutForItem:?];
  if (v4)
  {
    v8 = v4;
    v5 = [*(*(a1 + 40) + 1968) objectForKey:v4];
    if (v5)
    {
      v6 = *(a1 + 48);
      v7 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
      [v6 setObject:v5 forKey:v7];
    }

    v4 = v8;
  }
}

id __92__SBFluidSwitcherViewController__orderedViewsForLayoutElement_excludeSwitcherHostedShelves___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 2032) objectForKey:a2];
  v3 = [v2 view];

  return v3;
}

- (id)preferredFocusEnvironments
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (self->_contentView)
  {
    v4[0] = self->_contentView;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  return v2;
}

- (BOOL)_scrollViewShouldPanGestureTryToBegin:(id)begin
{
  scrollView = self->_scrollView;
  if (scrollView != begin)
  {
    return 1;
  }

  panGestureRecognizer = [(SBAppSwitcherScrollView *)scrollView panGestureRecognizer];
  [panGestureRecognizer locationInView:self->_contentView];
  v8 = v7;
  v10 = v9;

  [(SBAppSwitcherScrollView *)self->_scrollView frame];
  v15 = v8;
  v16 = v10;

  return CGRectContainsPoint(*&v11, *&v15);
}

- (void)scrollViewDidScroll:(id)scroll withContext:(id *)context
{
  var0 = context->var0;
  currentScrollEvent = self->_currentScrollEvent;
  if (currentScrollEvent)
  {
    scrollCopy = scroll;
    unhandledCopy = [(SBChainableModifierEvent *)currentScrollEvent unhandledCopy];
  }

  else
  {
    scrollCopy2 = scroll;
    v11 = [SBScrollSwitcherModifierEvent alloc];
    [scrollCopy2 contentOffset];
    unhandledCopy = [(SBScrollSwitcherModifierEvent *)v11 initWithContentOffset:0 phase:var0 == 3 userInitiated:?];
  }

  v12 = self->_currentScrollEvent;
  self->_currentScrollEvent = unhandledCopy;

  v13 = self->_currentScrollEvent;
  [scroll contentOffset];
  v15 = v14;
  v17 = v16;

  [(SBScrollSwitcherModifierEvent *)v13 setContentOffset:v15, v17];
  [(SBScrollSwitcherModifierEvent *)self->_currentScrollEvent setPhase:0];
  [(SBScrollSwitcherModifierEvent *)self->_currentScrollEvent setUserInitiated:var0 == 3];
  [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:self->_currentScrollEvent];
  [MEMORY[0x277CD9FF0] setLowLatency:0];
  view = [(SBFluidSwitcherViewController *)self view];
  [view setNeedsLayout];
}

- (void)scrollViewDidEndScrolling:(id)scrolling
{
  currentScrollEvent = self->_currentScrollEvent;
  if (currentScrollEvent)
  {
    scrollingCopy = scrolling;
    unhandledCopy = [(SBChainableModifierEvent *)currentScrollEvent unhandledCopy];
    v7 = self->_currentScrollEvent;
    self->_currentScrollEvent = unhandledCopy;

    v8 = self->_currentScrollEvent;
    [scrollingCopy contentOffset];
    v10 = v9;
    v12 = v11;

    [(SBScrollSwitcherModifierEvent *)v8 setContentOffset:v10, v12];
    [(SBScrollSwitcherModifierEvent *)self->_currentScrollEvent setPhase:1];
    [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:self->_currentScrollEvent];
    v13 = self->_currentScrollEvent;
    self->_currentScrollEvent = 0;
  }
}

- (CGPoint)_scrollView:(id)view adjustedOffsetForOffset:(CGPoint)offset translation:(CGPoint)translation startPoint:(CGPoint)point locationInView:(CGPoint)inView horizontalVelocity:(double *)velocity verticalVelocity:(double *)verticalVelocity
{
  [(SBSwitcherPersonality *)self->_personality adjustedOffsetForOffset:velocity translation:verticalVelocity startPoint:offset.x locationInView:offset.y horizontalVelocity:translation.x verticalVelocity:translation.y, point.x, point.y, inView.x, inView.y];
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGSize)sizeForAppLayout:(id)layout fromProvider:(id)provider
{
  [(SBFluidSwitcherContentView *)self->_contentView bounds:layout];
  v5 = v4;
  v7 = v6;
  result.height = v7;
  result.width = v5;
  return result;
}

- (id)viewControllerForTransientOverlayAppLayout:(id)layout fromProvider:(id)provider
{
  layoutCopy = layout;
  dataSource = [(SBFluidSwitcherViewController *)self dataSource];
  v7 = dataSource;
  if ((*&self->_dataSourceRespondsTo & 0x80) != 0)
  {
    v8 = [dataSource viewControllerForTransientOverlayAppLayout:layoutCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)orientationForSnapshotOfAppLayout:(id)layout inImageCache:(id)cache
{
  cache = [(SBSwitcherPersonality *)self->_personality preferredSnapshotOrientationForAppLayout:layout, cache];
  if (cache == 2)
  {

    return [(SBFluidSwitcherViewController *)self switcherInterfaceOrientation];
  }

  else if (cache == 1)
  {
    dataSource = [(SBFluidSwitcherViewController *)self dataSource];
    v7 = [dataSource activeInterfaceOrientationForSwitcherContentController:self];

    return v7;
  }

  else
  {
    return 0;
  }
}

- (CGSize)snapshotSizeForItemWithRole:(int64_t)role inAppLayout:(id)layout interfaceOrientation:(int64_t)orientation inImageCache:(id)cache
{
  layoutCopy = layout;
  cacheCopy = cache;
  if (role == 4 && [layoutCopy environment] == 1 || objc_msgSend(layoutCopy, "environment") == 3)
  {
    -[SBFluidSwitcherViewController _frameForCenterItemInInterfaceOrientation:centerConfiguration:](self, "_frameForCenterItemInInterfaceOrientation:centerConfiguration:", orientation, SBMainDisplayLayoutStateCenterConfigurationFromAppLayoutCenterConfiguration([layoutCopy centerConfiguration]));
  }

  else if ([layoutCopy environment] == 1)
  {
    v12 = [layoutCopy leafAppLayoutForRole:role];
    v13 = [(NSDictionary *)self->_leafAppLayoutsToAdjustedAppLayouts objectForKey:v12];
    v14 = v13;
    if (v13)
    {
      v26[0] = 0;
      v26[1] = v26;
      v26[2] = 0x4010000000;
      v26[3] = &unk_21F9DA6A3;
      v27 = 0u;
      v28 = 0u;
      personality = self->_personality;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __107__SBFluidSwitcherViewController_snapshotSizeForItemWithRole_inAppLayout_interfaceOrientation_inImageCache___block_invoke;
      v22[3] = &unk_2783AED90;
      v22[4] = self;
      v23 = v13;
      v24 = v12;
      v25 = v26;
      [(SBSwitcherPersonality *)personality performWithInterfaceOrientation:orientation block:v22];

      _Block_object_dispose(v26, 8);
    }
  }

  else if ([layoutCopy environment] == 2)
  {
    [(SBFluidSwitcherViewController *)self _frameForFloatingAppLayoutInInterfaceOrientation:orientation floatingConfiguration:2];
  }

  _UIWindowConvertRectFromOrientationToOrientation();
  v17 = v16;
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

uint64_t __107__SBFluidSwitcherViewController_snapshotSizeForItemWithRole_inAppLayout_interfaceOrientation_inImageCache___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appLayouts];
  v3 = [v2 indexOfObject:*(a1 + 40)];

  [*(*(a1 + 32) + 2112) frameForIndex:v3];
  [*(*(a1 + 32) + 2112) fullyPresentedFrameForIndex:v3 frame:?];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) allItems];
  v6 = [v5 firstObject];
  v7 = [v4 layoutRoleForItem:v6];

  v8 = *(a1 + 40);
  v9 = *(*(a1 + 32) + 2112);
  SBRectWithSize();
  result = [v9 frameForLayoutRole:v7 inAppLayout:v8 withBounds:?];
  v11 = *(*(a1 + 56) + 8);
  v11[4] = v12;
  v11[5] = v13;
  v11[6] = v14;
  v11[7] = v15;
  return result;
}

- (BOOL)appLayoutRequiresExactSize:(id)size inImageCache:(id)cache
{
  v4 = [(SBFluidSwitcherViewController *)self windowManagementContext:size];
  isChamoisOrFlexibleWindowing = [v4 isChamoisOrFlexibleWindowing];

  return isChamoisOrFlexibleWindowing ^ 1;
}

- (id)sceneHandleProviderForImageCache:(id)cache
{
  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  sceneManager = [_sbWindowScene sceneManager];

  return sceneManager;
}

- (id)displayConfigurationForImageCache:(id)cache
{
  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  _fbsDisplayConfiguration = [_sbWindowScene _fbsDisplayConfiguration];

  return _fbsDisplayConfiguration;
}

- (CGRect)layoutFrameForItemWithRole:(int64_t)role inAppLayout:(id)layout interfaceOrientation:(int64_t)orientation forSnapshotView:(id)view
{
  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);
  if (layout && role)
  {
    v11 = [layout leafAppLayoutForRole:?];
    v12 = [(NSDictionary *)self->_leafAppLayoutsToAdjustedAppLayouts objectForKey:v11];
    if (v12)
    {
      appLayouts = [(SBFluidSwitcherViewController *)self appLayouts];
      v14 = [appLayouts indexOfObject:v12];

      [(SBSwitcherPersonality *)self->_personality frameForIndex:v14];
      v15 = [v11 itemForLayoutRole:1];
      v16 = [v12 layoutRoleForItem:v15];

      personality = self->_personality;
      SBRectWithSize();
      [(SBSwitcherPersonality *)personality frameForLayoutRole:v16 inAppLayout:v12 withBounds:?];
      v8 = v18;
      v9 = v19;
      v6 = *MEMORY[0x277CBF348];
      v7 = *(MEMORY[0x277CBF348] + 8);
    }
  }

  v20 = v6;
  v21 = v7;
  v22 = v8;
  v23 = v9;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (BOOL)snapshotView:(id)view shouldShowAppClipOverlayForLayout:(id)layout
{
  v4 = [(NSMutableDictionary *)self->_liveContentOverlays objectForKey:layout];
  v5 = v4 == 0;

  return v5;
}

- (id)sceneHandleProviderForSnapshotView:(id)view
{
  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  sceneManager = [_sbWindowScene sceneManager];

  return sceneManager;
}

- (id)displayIdentityForSnapshotView:(id)view
{
  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  sceneManager = [_sbWindowScene sceneManager];
  displayIdentity = [sceneManager displayIdentity];

  return displayIdentity;
}

- (id)layoutAttributesProviderForSnapshotView:(id)view
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  displayItemLayoutAttributesProvider = [WeakRetained displayItemLayoutAttributesProvider];

  return displayItemLayoutAttributesProvider;
}

- (void)underlayAccessoryView:(id)view didSelectHeaderForRole:(int64_t)role
{
  v6 = [(NSMutableDictionary *)self->_visibleUnderlayAccessoryViews allKeysForObject:view];
  firstObject = [v6 firstObject];

  v8 = [(NSMutableDictionary *)self->_appLayoutToTitleItemController objectForKey:firstObject];
  multiWindowIndicatorRoles = [v8 multiWindowIndicatorRoles];
  v10 = [multiWindowIndicatorRoles containsRole:role];

  if (v10)
  {
    _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
    _fbsDisplayConfiguration = [_sbWindowScene _fbsDisplayConfiguration];

    v13 = [firstObject itemForLayoutRole:role];
    bundleIdentifier = [v13 bundleIdentifier];

    v15 = +[SBMainWorkspace sharedInstance];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __78__SBFluidSwitcherViewController_underlayAccessoryView_didSelectHeaderForRole___block_invoke;
    v18[3] = &unk_2783A98F0;
    v19 = bundleIdentifier;
    v16 = bundleIdentifier;
    [v15 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration builder:v18 validator:0];
  }

  else
  {
    v17 = [[SBTapAppLayoutSwitcherModifierEvent alloc] initWithAppLayout:firstObject layoutRole:role modifierFlags:0];
    [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v17];
  }
}

void __78__SBFluidSwitcherViewController_underlayAccessoryView_didSelectHeaderForRole___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:3];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __78__SBFluidSwitcherViewController_underlayAccessoryView_didSelectHeaderForRole___block_invoke_2;
  v4[3] = &unk_2783A98C8;
  v5 = *(a1 + 32);
  [v3 modifyApplicationContext:v4];
}

- (BOOL)underlayAccessoryViewShouldBeginPointerInteraction:(id)interaction
{
  v4 = [(NSMutableDictionary *)self->_visibleUnderlayAccessoryViews allKeysForObject:interaction];
  firstObject = [v4 firstObject];

  activeGesture = [(SBFluidSwitcherLayoutContext *)self->_layoutContext activeGesture];
  if (activeGesture)
  {
    v7 = 0;
  }

  else
  {
    v8 = [firstObject itemForLayoutRole:4];
    v7 = v8 == 0;
  }

  return v7;
}

- (void)overlayAccessoryView:(id)view didSelectHeaderForRole:(int64_t)role
{
  viewCopy = view;
  v7 = [(NSMutableDictionary *)self->_visibleOverlayAccessoryViews allKeysForObject:viewCopy];
  firstObject = [v7 firstObject];

  if (firstObject)
  {
    [(SBFluidSwitcherViewController *)self _didSelectHeaderForLayoutRole:role inAppLayout:firstObject];
  }

  else
  {
    v9 = SBLogAppSwitcher();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SBFluidSwitcherViewController overlayAccessoryView:viewCopy didSelectHeaderForRole:?];
    }
  }
}

- (CGRect)overlayAccessoryViewFrameForIconOverlayView:(id)view fullPresented:(BOOL)presented
{
  presentedCopy = presented;
  v38 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v7 = viewCopy;
  if (presentedCopy)
  {
    v8 = [(NSMutableDictionary *)self->_visibleOverlayAccessoryViews allKeysForObject:viewCopy];
    firstObject = [v8 firstObject];

    leafAppLayoutsToAdjustedAppLayouts = self->_leafAppLayoutsToAdjustedAppLayouts;
    anyLeafAppLayout = [firstObject anyLeafAppLayout];
    v12 = [(NSDictionary *)leafAppLayoutsToAdjustedAppLayouts objectForKey:anyLeafAppLayout];

    [(SBFluidSwitcherViewController *)self containerViewBounds];
    if (v12)
    {
      appLayouts = [(SBFluidSwitcherViewController *)self appLayouts];
      v14 = [appLayouts indexOfObject:v12];

      [(SBSwitcherPersonality *)self->_personality frameForIndex:v14];
      [(SBSwitcherPersonality *)self->_personality fullyPresentedFrameForIndex:v14 frame:?];
    }

    else
    {
      v23 = SBLogAppSwitcher();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v7 debugDescription];
        v25 = [firstObject debugDescription];
        v34 = 138412546;
        v35 = v24;
        v36 = 2112;
        v37 = v25;
        _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, "adjustedAppLayout is null for overlay accessory view:%@ for appLayout:%@", &v34, 0x16u);
      }
    }

    SBRectWithSize();
    v16 = v26;
    v18 = v27;
    v20 = v28;
    v22 = v29;
  }

  else
  {
    [viewCopy bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
  }

  v30 = v16;
  v31 = v18;
  v32 = v20;
  v33 = v22;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (void)overlayAccessoryView:(id)view didUpdateShowingIconOverlay:(BOOL)overlay
{
  overlayCopy = overlay;
  v23 = *MEMORY[0x277D85DE8];
  v5 = [(NSMutableDictionary *)self->_visibleOverlayAccessoryViews allKeysForObject:view];
  firstObject = [v5 firstObject];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = firstObject;
  leafAppLayouts = [firstObject leafAppLayouts];
  v8 = [leafAppLayouts countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(leafAppLayouts);
        }

        v12 = [(NSMutableDictionary *)self->_visibleItemContainers objectForKey:*(*(&v18 + 1) + 8 * v11)];
        contentView = [v12 contentView];
        v14 = objc_opt_respondsToSelector();

        if (v14)
        {
          contentView2 = [v12 contentView];
          [contentView2 setShowingIconOverlayView:overlayCopy];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [leafAppLayouts countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }
}

- (id)overlayAccessoryViewAdditionalGenieContentViews:(id)views
{
  v22 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  v5 = objc_opt_new();
  v16 = viewsCopy;
  v6 = [(NSMutableDictionary *)self->_visibleOverlayAccessoryViews allKeysForObject:viewsCopy];
  firstObject = [v6 firstObject];

  v8 = [(SBSwitcherPersonality *)self->_personality topMostLayoutRolesForAppLayout:firstObject];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [firstObject leafAppLayoutForRole:{objc_msgSend(*(*(&v17 + 1) + 8 * i), "integerValue")}];
        v14 = [(NSMutableDictionary *)self->_visibleItemContainers objectForKey:v13];
        if (v14)
        {
          [v5 addObject:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v5;
}

- (id)appLayoutsForSwitcherShelfViewController:(id)controller
{
  shelf = [controller shelf];
  bundleIdentifier = [shelf bundleIdentifier];

  draggingAppLayoutsForWindowDrag = [(SBFluidSwitcherViewController *)self draggingAppLayoutsForWindowDrag];
  _unadjustedAppLayouts = [(SBFluidSwitcherViewController *)self _unadjustedAppLayouts];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__SBFluidSwitcherViewController_appLayoutsForSwitcherShelfViewController___block_invoke;
  v12[3] = &unk_2783AEDB8;
  v13 = bundleIdentifier;
  v14 = draggingAppLayoutsForWindowDrag;
  v8 = draggingAppLayoutsForWindowDrag;
  v9 = bundleIdentifier;
  v10 = [_unadjustedAppLayouts bs_filter:v12];

  return v10;
}

uint64_t __74__SBFluidSwitcherViewController_appLayoutsForSwitcherShelfViewController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 containsItemWithBundleIdentifier:*(a1 + 32)])
  {
    v4 = [*(a1 + 40) containsObject:v3] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)nextDisplayItemInteractionTimeForSwitcherShelfViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v5 = [WeakRetained nextDisplayItemInteractionTimeForSwitcherContentController:self];

  return v5;
}

- (CGRect)switcherShelfViewController:(id)controller frameForItemWithRole:(int64_t)role inMainAppLayout:(id)layout interfaceOrientation:(int64_t)orientation
{
  [(SBFluidSwitcherViewController *)self _frameForItemWithRole:role inMainAppLayout:layout interfaceOrientation:orientation];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)switcherShelfViewController:(id)controller frameForFloatingAppLayoutInInterfaceOrientation:(int64_t)orientation floatingConfiguration:(int64_t)configuration
{
  [(SBFluidSwitcherViewController *)self _frameForFloatingAppLayoutInInterfaceOrientation:orientation floatingConfiguration:configuration];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)switcherShelfViewController:(id)controller frameForCenterItemWithConfiguration:(int64_t)configuration interfaceOrientation:(int64_t)orientation
{
  [(SBFluidSwitcherViewController *)self _frameForCenterItemInInterfaceOrientation:orientation centerConfiguration:configuration];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (id)switcherShelfViewController:(id)controller liveViewForAppLayout:(id)layout
{
  liveContentOverlays = self->_liveContentOverlays;
  anyLeafAppLayout = [layout anyLeafAppLayout];
  v6 = [(NSMutableDictionary *)liveContentOverlays objectForKey:anyLeafAppLayout];

  if (objc_opt_respondsToSelector())
  {
    newPortaledLiveContentOverlayView = [v6 newPortaledLiveContentOverlayView];
  }

  else
  {
    newPortaledLiveContentOverlayView = 0;
  }

  return newPortaledLiveContentOverlayView;
}

- (BOOL)switcherShelfViewController:(id)controller hitTestedToTopAffordance:(CGPoint)affordance window:(id)window
{
  y = affordance.y;
  x = affordance.x;
  windowCopy = window;
  controllerCopy = controller;
  layoutContext = [(SBFluidSwitcherViewController *)self layoutContext];
  layoutState = [layoutContext layoutState];

  shelf = [controllerCopy shelf];

  if (![shelf displayMode])
  {
    appLayout = [layoutState appLayout];
    goto LABEL_7;
  }

  if ([shelf displayMode] == 1 && objc_msgSend(shelf, "layoutRole") == 3)
  {
    appLayout = [layoutState floatingAppLayout];
LABEL_7:
    v16 = appLayout;
    goto LABEL_8;
  }

  appLayout2 = [layoutState appLayout];
  v16 = [appLayout2 leafAppLayoutForRole:{objc_msgSend(shelf, "layoutRole")}];

LABEL_8:
  anyLeafAppLayout = [v16 anyLeafAppLayout];
  v18 = [(SBFluidSwitcherViewController *)self _hitTestedToTopAffordance:windowCopy window:anyLeafAppLayout forLeafAppLayout:x, y];

  return v18;
}

- (void)pointerEndedResizingItemContainer:(id)container
{
  itemContainerToResizeUsingPointer = self->_itemContainerToResizeUsingPointer;
  if (itemContainerToResizeUsingPointer == container)
  {
    self->_itemContainerToResizeUsingPointer = 0;
  }
}

- (void)killContainer:(id)container forReason:(int64_t)reason
{
  v20 = *MEMORY[0x277D85DE8];
  appLayout = [container appLayout];
  delegate = [(SBFluidSwitcherViewController *)self delegate];
  v7 = [(NSDictionary *)self->_leafAppLayoutsToRecencyAppLayouts objectForKey:appLayout];
  if ([v7 isCenterOverFull])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    allItems = [v7 allItems];
    v9 = [allItems countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(allItems);
          }

          [delegate switcherContentController:self deletedDisplayItem:*(*(&v15 + 1) + 8 * i) inAppLayout:v7 forReason:1];
        }

        v10 = [allItems countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  else
  {
    allItems = [appLayout itemForLayoutRole:1];
    [delegate switcherContentController:self deletedDisplayItem:allItems inAppLayout:v7 forReason:1];
    v13 = [v7 layoutRoleForItem:allItems];
    if (SBLayoutRoleIsValidForSplitView(v13))
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __57__SBFluidSwitcherViewController_killContainer_forReason___block_invoke;
      v14[3] = &unk_2783AEDE0;
      v14[4] = self;
      v14[5] = v13;
      [v7 enumerate:v14];
    }
  }
}

void __57__SBFluidSwitcherViewController_killContainer_forReason___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6 != a2)
  {
    v8 = v5;
    IsValidForSplitView = SBLayoutRoleIsValidForSplitView(v6);
    v5 = v8;
    if (IsValidForSplitView)
    {
      [*(*(a1 + 32) + 1072) reloadSnapshotForDisplayItem:v8];
      v5 = v8;
    }
  }
}

- (BOOL)canSelectContainer:(id)container numberOfTaps:(int64_t)taps
{
  containerCopy = container;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v7 = 1;
  v15 = 1;
  if (taps <= 1)
  {
    [(SBAppSwitcherScrollView *)self->_scrollView contentOffsetVelocity];
    if (fabs(v8) > 0.3)
    {
      *(v13 + 24) = 0;
    }

    visibleItemContainers = self->_visibleItemContainers;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__SBFluidSwitcherViewController_canSelectContainer_numberOfTaps___block_invoke;
    v11[3] = &unk_2783AEE08;
    v11[4] = &v12;
    [(NSMutableDictionary *)visibleItemContainers enumerateKeysAndObjectsUsingBlock:v11];
    v7 = *(v13 + 24);
  }

  _Block_object_dispose(&v12, 8);

  return v7 & 1;
}

uint64_t __65__SBFluidSwitcherViewController_canSelectContainer_numberOfTaps___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  [a3 killingProgress];
  result = BSFloatIsZero();
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

- (void)containerSelectionStateChanged:(id)changed toState:(int64_t)state hover:(BOOL)hover pencilHover:(BOOL)pencilHover
{
  pencilHoverCopy = pencilHover;
  hoverCopy = hover;
  changedCopy = changed;
  v11 = state - 1;
  if (state - 1) <= 4 && ((0x1Du >> v11))
  {
    v12 = qword_21F8A5F68[v11];
    v19 = changedCopy;
    appLayout = [changedCopy appLayout];
    v14 = [(NSDictionary *)self->_leafAppLayoutsToAdjustedAppLayouts objectForKey:appLayout];
    if (!v14)
    {
      v14 = appLayout;
    }

    allItems = [appLayout allItems];
    firstObject = [allItems firstObject];
    v17 = [v14 layoutRoleForItem:firstObject];

    v18 = [[SBHighlightSwitcherModifierEvent alloc] initWithLayoutRole:v17 inAppLayout:v14 phase:v12 hover:hoverCopy pencilHover:pencilHoverCopy];
    [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v18];

    changedCopy = v19;
  }
}

- (void)clientWithSceneIdentifier:(id)identifier suppressPreferredPointerLockStatusUpdated:(BOOL)updated
{
  updatedCopy = updated;
  v19 = *MEMORY[0x277D85DE8];
  v6 = [(SBFluidSwitcherViewController *)self liveOverlayForSceneIdentifier:identifier];
  v7 = [(NSMutableDictionary *)self->_liveContentOverlays allKeysForObject:v6];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(SBFluidSwitcherViewController *)self _itemContainerForAppLayoutIfExists:*(*(&v14 + 1) + 8 * v11)];
        v13 = v12;
        if (v12)
        {
          [v12 setPreferredPointerLockStatusSuppressed:updatedCopy];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)didSelectContainer:(id)container modifierFlags:(int64_t)flags
{
  appLayout = [container appLayout];
  if (appLayout)
  {
    v17 = appLayout;
    v7 = [appLayout itemForLayoutRole:1];
    uniqueIdentifier = [v7 uniqueIdentifier];
    if (uniqueIdentifier)
    {
      _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
      lockedPointerManager = [_sbWindowScene lockedPointerManager];
      uniqueIdentifier2 = [v7 uniqueIdentifier];
      [lockedPointerManager clientWithSceneIdentifier:uniqueIdentifier2 suppressPreferredLockStatus:0];
    }

    v12 = [(NSDictionary *)self->_leafAppLayoutsToAdjustedAppLayouts objectForKey:v17];
    windowManagementContext = [(SBFluidSwitcherViewController *)self windowManagementContext];
    isAutomaticStageCreationEnabled = [windowManagementContext isAutomaticStageCreationEnabled];
    if ((flags & 0x20000) != 0 && isAutomaticStageCreationEnabled)
    {
      v15 = [(SBSwitcherPersonality *)self->_personality canSelectLeafWithModifierKeysInAppLayout:v12];

      if (!v15)
      {
LABEL_9:
        v16 = -[SBTapAppLayoutSwitcherModifierEvent initWithAppLayout:layoutRole:modifierFlags:]([SBTapAppLayoutSwitcherModifierEvent alloc], "initWithAppLayout:layoutRole:modifierFlags:", v12, [v12 layoutRoleForItem:v7], flags);
        [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v16];

        appLayout = v17;
        goto LABEL_10;
      }

      windowManagementContext = v12;
      v12 = v17;
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)itemContainer:(id)container didSelectTitleForRole:(int64_t)role
{
  containerCopy = container;
  v7 = [(NSMutableDictionary *)self->_visibleItemContainers allKeysForObject:containerCopy];
  firstObject = [v7 firstObject];

  if (firstObject)
  {
    [(SBFluidSwitcherViewController *)self _didSelectHeaderForLayoutRole:role inAppLayout:firstObject];
  }

  else
  {
    v9 = SBLogAppSwitcher();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SBFluidSwitcherViewController itemContainer:containerCopy didSelectTitleForRole:?];
    }
  }
}

- (CGRect)frameForPageViewOfContainer:(id)container fullyPresented:(BOOL)presented
{
  presentedCopy = presented;
  containerCopy = container;
  allValues = [(NSMutableDictionary *)self->_visibleItemContainers allValues];
  v8 = [allValues containsObject:containerCopy];

  if (presentedCopy && v8)
  {
    appLayout = [containerCopy appLayout];
    v10 = [(NSDictionary *)self->_leafAppLayoutsToAdjustedAppLayouts objectForKey:appLayout];
    if (v10)
    {
      appLayouts = [(SBFluidSwitcherViewController *)self appLayouts];
      v12 = [appLayouts indexOfObject:v10];

      [(SBSwitcherPersonality *)self->_personality frameForIndex:v12];
      [(SBSwitcherPersonality *)self->_personality fullyPresentedFrameForIndex:v12 frame:?];
      allItems = [appLayout allItems];
      firstObject = [allItems firstObject];
      v15 = [v10 layoutRoleForItem:firstObject];

      personality = self->_personality;
      SBRectWithSize();
      [(SBSwitcherPersonality *)personality frameForLayoutRole:v15 inAppLayout:v10 withBounds:?];
    }

    else
    {
      [containerCopy bounds];
    }
  }

  else
  {
    [containerCopy bounds];
  }

  SBRectWithSize();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = v18;
  v26 = v20;
  v27 = v22;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (void)containerWillBeginSwipingToKill:(id)kill
{
  appLayout = [kill appLayout];
  v4 = [(NSDictionary *)self->_leafAppLayoutsToAdjustedAppLayouts objectForKey:?];
  if (([(SBSwitcherPersonality *)self->_personality shouldTetherItemsAndAccessoriesInAppLayout:v4]& 1) == 0)
  {
    [(SBFluidSwitcherViewController *)self _beginRequiringItemContainerShadowPathDisplayLinkForLeafAppLayout:appLayout killing:1];
  }
}

- (void)containerDidEndSwipingToKill:(id)kill
{
  appLayout = [kill appLayout];
  [(SBFluidSwitcherViewController *)self _stopRequiringItemContainerShadowPathDisplayLinkForLeafAppLayout:appLayout killing:1];
}

- (void)scrollViewKillingProgressUpdated:(double)updated translation:(CGPoint)translation isDragging:(BOOL)dragging decelerationTargetProgress:(double)progress forContainer:(id)container
{
  draggingCopy = dragging;
  y = translation.y;
  x = translation.x;
  appLayout = [container appLayout];
  v13 = [(NSDictionary *)self->_leafAppLayoutsToAdjustedAppLayouts objectForKey:appLayout];
  allItems = [appLayout allItems];
  firstObject = [allItems firstObject];
  v16 = [v13 layoutRoleForItem:firstObject];

  v17 = [[SBSwipeToKillSwitcherModifierEvent alloc] initWithLayoutRole:v16 inAppLayout:v13 progress:updated translation:x, y];
  [(SBSwipeToKillSwitcherModifierEvent *)v17 setDragging:draggingCopy];
  [(SBSwipeToKillSwitcherModifierEvent *)v17 setDecelerationTargetProgress:progress];
  [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v17];
}

- (void)containerWillBeginAnimatingHighlight:(id)highlight scale:(double)scale isTracking:(BOOL)tracking
{
  trackingCopy = tracking;
  v23 = *MEMORY[0x277D85DE8];
  appLayout = [highlight appLayout];
  v9 = [(NSDictionary *)self->_leafAppLayoutsToAdjustedAppLayouts objectForKey:appLayout];
  if (([(SBSwitcherPersonality *)self->_personality shouldTetherItemsAndAccessoriesInAppLayout:v9]& 1) == 0)
  {
    [(SBFluidSwitcherViewController *)self _beginRequiringItemContainerShadowPathDisplayLinkForLeafAppLayout:appLayout killing:0];
  }

  if ([(SBSwitcherPersonality *)self->_personality shouldTetherItemsAndAccessoriesInAppLayout:v9])
  {
    v17 = [(NSMutableDictionary *)self->_visibleOverlayAccessoryViews objectForKey:v9];
    [v17 setContentViewScale:scale];
    v16 = [(NSMutableDictionary *)self->_visibleUnderlayAccessoryViews objectForKey:v9];
    [v16 setContentViewScale:scale];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    leafAppLayouts = [v9 leafAppLayouts];
    v11 = [leafAppLayouts countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(leafAppLayouts);
          }

          if (*(*(&v18 + 1) + 8 * v14) != appLayout)
          {
            v15 = [(NSMutableDictionary *)self->_visibleItemContainers objectForKey:?];
            [v15 setLifted:trackingCopy];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [leafAppLayouts countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }
}

- (void)containerDidEndAnimatingHighlight:(id)highlight scale:(double)scale
{
  appLayout = [highlight appLayout];
  [(SBFluidSwitcherViewController *)self _stopRequiringItemContainerShadowPathDisplayLinkForLeafAppLayout:appLayout killing:0];
}

- (BOOL)isLocationInSafeArea:(CGPoint)area
{
  y = area.y;
  x = area.x;
  view = [(SBFluidSwitcherViewController *)self view];
  [view bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [view safeAreaInsets];
  v15 = v9 + v14;
  v18 = v11 - (v16 + v17);
  v23.size.height = v13 - (v14 + v19);
  v23.origin.x = v7 + v16;
  v23.origin.y = v15;
  v23.size.width = v18;
  v22.x = x;
  v22.y = y;
  v20 = CGRectContainsPoint(v23, v22);

  return v20;
}

- (void)container:(id)container didBecomeFocused:(BOOL)focused
{
  focusedCopy = focused;
  appLayout = [container appLayout];
  if (appLayout)
  {
    v10 = appLayout;
    v7 = [(NSDictionary *)self->_leafAppLayoutsToAdjustedAppLayouts objectForKeyedSubscript:appLayout];
    appLayout = v10;
    if (v7)
    {
      v8 = v7;
      v9 = [[SBUpdateFocusedAppLayoutSwitcherModifierEvent alloc] initWithAppLayout:v7 focused:focusedCopy];
      [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v9];

      appLayout = v10;
    }
  }
}

- (BOOL)isAppLayoutMostRecentRepresentationOfDisplayItems:(id)items
{
  itemsCopy = items;
  if (!itemsCopy)
  {
    [SBFluidSwitcherViewController isAppLayoutMostRecentRepresentationOfDisplayItems:];
  }

  v5 = MEMORY[0x277CBEB98];
  allItems = [itemsCopy allItems];
  v7 = [v5 setWithArray:allItems];

  _unadjustedAppLayouts = [(SBFluidSwitcherViewController *)self _unadjustedAppLayouts];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__SBFluidSwitcherViewController_isAppLayoutMostRecentRepresentationOfDisplayItems___block_invoke;
  v13[3] = &unk_2783A8CB8;
  v14 = v7;
  v9 = v7;
  v10 = [_unadjustedAppLayouts bs_firstObjectPassingTest:v13];

  if (v10)
  {
    v11 = [v10 isOrContainsAppLayout:itemsCopy];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)displayItemIsClassic:(id)classic
{
  v3 = [(SBFluidSwitcherViewController *)self _applicationForDisplayItem:classic];
  isClassic = [v3 isClassic];

  return isClassic;
}

- (BOOL)displayItemSupportsMedusa:(id)medusa
{
  v3 = [(SBFluidSwitcherViewController *)self _applicationForDisplayItem:medusa];
  isMedusaCapable = [v3 isMedusaCapable];

  return isMedusaCapable;
}

- (id)_applicationForDisplayItem:(id)item
{
  itemCopy = item;
  v4 = +[SBApplicationController sharedInstance];
  v5 = [v4 applicationForDisplayItem:itemCopy];

  return v5;
}

- (BOOL)displayItemSupportsCenterRole:(id)role
{
  roleCopy = role;
  windowManagementContext = [(SBFluidSwitcherViewController *)self windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if (isChamoisOrFlexibleWindowing)
  {
    v7 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v9 = WeakRetained;
    if ((*(&self->_dataSourceRespondsTo + 3) & 8) != 0)
    {
      v7 = [WeakRetained switcherContentController:self displayItemSupportsCenterRole:roleCopy];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)displayItemSupportsMultipleWindowsIndicator:(id)indicator
{
  indicatorCopy = indicator;
  v5 = [(SBFluidSwitcherViewController *)self _applicationForDisplayItem:indicatorCopy];
  info = [v5 info];
  type = [indicatorCopy type];

  if (type || ![info supportsMultiwindow])
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v8 = [info hasHiddenTag] ^ 1;
  }

  return v8;
}

- (BOOL)displayItemShouldGetSolariumStyle:(id)style
{
  v4 = [(SBFluidSwitcherViewController *)self _applicationForDisplayItem:style];
  info = [v4 info];
  if ([info isLuckLinked] && _UISolariumEnabled())
  {
    windowManagementContext = [(SBFluidSwitcherViewController *)self windowManagementContext];
    isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];
  }

  else
  {
    isFlexibleWindowingEnabled = 0;
  }

  return isFlexibleWindowingEnabled;
}

- (double)bestSupportedDefaultCornerRadiusForDisplayItem:(id)item
{
  itemCopy = item;
  if (-[SBAppSwitcherSettings switcherStyle](self->_settings, "switcherStyle") == 1 || (-[SBFluidSwitcherViewController windowManagementContext](self, "windowManagementContext"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isChamoisOrFlexibleWindowing], v5, (v6 & 1) == 0))
  {
    v9 = SBScreenDisplayCornerRadius();
  }

  else
  {
    windowingConfiguration = [(SBFluidSwitcherViewController *)self windowingConfiguration];
    [windowingConfiguration bestStageCornerRadiiSupportingSolarium:{-[SBFluidSwitcherViewController displayItemShouldGetSolariumStyle:](self, "displayItemShouldGetSolariumStyle:", itemCopy)}];
    v9 = v8;
  }

  return v9;
}

- (double)bestSupportedDefaultCornerRadiusForAppLayout:(id)layout
{
  allItems = [layout allItems];
  firstObject = [allItems firstObject];

  [(SBFluidSwitcherViewController *)self bestSupportedDefaultCornerRadiusForDisplayItem:firstObject];
  v7 = v6;

  return v7;
}

- (BOOL)hitTestedToTopAffordance:(CGPoint)affordance window:(id)window ofItemContainer:(id)container
{
  y = affordance.y;
  x = affordance.x;
  windowCopy = window;
  appLayout = [container appLayout];
  LOBYTE(self) = [(SBFluidSwitcherViewController *)self _hitTestedToTopAffordance:windowCopy window:appLayout forLeafAppLayout:x, y];

  return self;
}

- (BOOL)hitTestedToFloatingElement:(CGPoint)element window:(id)window ofItemContainer:(id)container
{
  y = element.y;
  x = element.x;
  windowCopy = window;
  screen = [windowCopy screen];
  fixedCoordinateSpace = [screen fixedCoordinateSpace];

  [windowCopy convertPoint:fixedCoordinateSpace toCoordinateSpace:{x, y}];
  v11 = v10;
  v13 = v12;
  _sbWindowScene = [windowCopy _sbWindowScene];

  floatingDockController = [_sbWindowScene floatingDockController];
  v16 = [floatingDockController containsPoint:fixedCoordinateSpace fromCoordinateSpace:{v11, v13}];

  pictureInPictureManager = [_sbWindowScene pictureInPictureManager];
  v18 = [pictureInPictureManager isPointWithinAnyPictureInPictureContent:{v11, v13}];

  bannerManager = [SBApp bannerManager];
  v20 = [bannerManager pointInsideBanner:_sbWindowScene inWindowScene:{v11, v13}];

  menuBarManager = [_sbWindowScene menuBarManager];
  v22 = [menuBarManager isPointInsideMenuBarContent:fixedCoordinateSpace fromCoordinateSpace:{v11, v13}];

  return (v16 | v18 | v22 | v20) & 1;
}

- (BOOL)hitTestedToSplitViewHandle:(CGPoint)handle window:(id)window
{
  y = handle.y;
  x = handle.x;
  v35 = *MEMORY[0x277D85DE8];
  windowCopy = window;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  keyEnumerator = [(NSMapTable *)self->_splitViewHandleNubViewsToHitTestRects keyEnumerator];
  v9 = [keyEnumerator countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        v14 = [(NSMapTable *)self->_splitViewHandleNubViewsToHitTestRects objectForKey:v13];
        [v14 CGRectValue];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;

        nubContainerView = [v13 nubContainerView];
        [windowCopy convertPoint:nubContainerView toView:{x, y}];
        v25 = v24;
        v27 = v26;

        v37.origin.x = v16;
        v37.origin.y = v18;
        v37.size.width = v20;
        v37.size.height = v22;
        v36.x = v25;
        v36.y = v27;
        if (CGRectContainsPoint(v37, v36))
        {
          v28 = 1;
          goto LABEL_11;
        }
      }

      v10 = [keyEnumerator countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v28 = 0;
LABEL_11:

  return v28;
}

- (BOOL)hitTestedToHomeAffordance:(CGPoint)affordance window:(id)window ofItemContainer:(id)container
{
  y = affordance.y;
  x = affordance.x;
  windowCopy = window;
  appLayout = [container appLayout];
  v11 = [(NSDictionary *)self->_leafAppLayoutsToAdjustedAppLayouts objectForKey:appLayout];
  v12 = [(NSMutableDictionary *)self->_visibleOverlayAccessoryViews objectForKey:v11];
  homeGrabberView = [v12 homeGrabberView];
  grabberView = [homeGrabberView grabberView];

  if (grabberView)
  {
    [windowCopy convertPoint:grabberView toView:{x, y}];
    v16 = v15;
    v18 = v17;
    [grabberView grabberHitTestRect];
    v21.x = v16;
    v21.y = v18;
    v19 = CGRectContainsPoint(v22, v21);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)hitTestedToSlideOverTongue:(CGPoint)tongue window:(id)window
{
  slideOverTongue = self->_slideOverTongue;
  if (slideOverTongue)
  {
    [(SBSlideOverTongueView *)slideOverTongue convertPoint:window fromView:tongue.x, tongue.y];
    v6 = self->_slideOverTongue;

    LOBYTE(slideOverTongue) = [(SBSlideOverTongueView *)v6 pointInside:0 withEvent:?];
  }

  return slideOverTongue;
}

- (void)moveDisplayItemFromOtherDisplay:(id)display
{
  displayCopy = display;
  v5 = [[SBMoveDisplayItemFromOtherDisplaySwitcherModifierEvent alloc] initWithDisplayItem:displayCopy];

  [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v5];
}

- (CGRect)bounds
{
  viewIfLoaded = [(SBFluidSwitcherViewController *)self viewIfLoaded];
  [viewIfLoaded bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)deviceApplicationSceneHandleForDisplayItem:(id)item
{
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = WeakRetained;
  if ((*(&self->_dataSourceRespondsTo + 3) & 0x20) != 0)
  {
    v7 = [WeakRetained switcherContentController:self deviceApplicationSceneHandleForDisplayItem:itemCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)gestureHandlingModifierRequestsUpdate:(id)update
{
  _gestureManager = [(SBFluidSwitcherViewController *)self _gestureManager];
  layoutContext = [(SBFluidSwitcherViewController *)self layoutContext];
  activeGesture = [layoutContext activeGesture];
  [(SBFluidSwitcherViewController *)self handleFluidSwitcherGestureManager:_gestureManager didUpdateGesture:activeGesture];
}

- (void)gestureHandlingModifierReleasePendingViews:(id)views
{
  if (self->_isPendingViewsForAcceleratedHomeGesture)
  {
    self->_isPendingViewsForAcceleratedHomeGesture = 0;
    [(SBFluidSwitcherViewController *)self _updateVisibleItems];
  }
}

- (CGPoint)gestureHandlingModifier:(id)modifier averageVelocityOverDuration:(double)duration
{
  layoutContext = [(SBFluidSwitcherViewController *)self layoutContext];
  activeGesture = [layoutContext activeGesture];
  gestureEvent = [activeGesture gestureEvent];

  [gestureEvent averageTouchVelocityOverTimeDuration:duration];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  settingsCopy = settings;
  v5 = +[SBHomeGestureDomain rootSettings];
  v6 = +[SBMedusaDomain rootSettings];
  if (v5 == settingsCopy)
  {
    v10 = SBHomeGestureSettingsChangedSwitcherModifierEvent;
    goto LABEL_8;
  }

  if (v6 == settingsCopy || self->_homeGrabberSettings == settingsCopy)
  {
    v10 = SBMedusaSettingsChangedSwitcherModifierEvent;
LABEL_8:
    view2 = objc_alloc_init(v10);
    [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:view2];
    goto LABEL_9;
  }

  windowingSettings = [(SBAppSwitcherSettings *)self->_settings windowingSettings];

  if (windowingSettings != settingsCopy)
  {
    goto LABEL_10;
  }

  [(SBFluidSwitcherViewController *)self _updateContentViewSublayerTransform];
  view = [(SBFluidSwitcherViewController *)self view];
  [view setNeedsLayout];

  view2 = [(SBFluidSwitcherViewController *)self view];
  [view2 layoutIfNeeded];
LABEL_9:

LABEL_10:
}

- (void)settings:(id)settings changedValueForKeyPath:(id)path
{
  if (self->_settings == settings)
  {
    block[7] = v4;
    block[8] = v5;
    v7 = objc_alloc_init(SBSwitcherSettingsChangedSwitcherModifierEvent);
    [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v7];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__SBFluidSwitcherViewController_settings_changedValueForKeyPath___block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __65__SBFluidSwitcherViewController_settings_changedValueForKeyPath___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) viewIfLoaded];
  [v1 setNeedsLayout];
}

- (void)SBC2GroupCompletionAnimationDidBegin:(id)begin
{
  if (begin)
  {
    [(NSPointerArray *)self->_outstandingAnimations addPointer:?];
  }
}

- (void)SBC2GroupCompletionAnimationDidComplete:(id)complete finished:(BOOL)finished retargeted:(BOOL)retargeted
{
  completeCopy = complete;
  if (completeCopy && [(NSPointerArray *)self->_outstandingAnimations count])
  {
    v6 = 0;
    while ([(NSPointerArray *)self->_outstandingAnimations pointerAtIndex:v6]!= completeCopy)
    {
      if (++v6 >= [(NSPointerArray *)self->_outstandingAnimations count])
      {
        goto LABEL_9;
      }
    }

    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSPointerArray *)self->_outstandingAnimations removePointerAtIndex:v6];
    }
  }

LABEL_9:
}

- (void)_scrollToAppLayout:(id)layout animated:(BOOL)animated alignment:(int64_t)alignment completion:(id)completion
{
  animatedCopy = animated;
  layoutCopy = layout;
  completionCopy = completion;
  appLayouts = [(SBFluidSwitcherViewController *)self appLayouts];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __82__SBFluidSwitcherViewController__scrollToAppLayout_animated_alignment_completion___block_invoke;
  v15[3] = &unk_2783AE1A0;
  v13 = layoutCopy;
  v16 = v13;
  v14 = [appLayouts indexOfObjectPassingTest:v15];

  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  else
  {
    [(SBFluidSwitcherViewController *)self _updateScrollViewLayoutSizeAndSpacing];
    [(SBSwitcherPersonality *)self->_personality contentOffsetForIndex:v14 alignment:alignment];
    [(BSUIScrollView *)self->_scrollView setContentOffset:animatedCopy animated:completionCopy completion:?];
  }
}

- (void)_didSelectHeaderForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  windowManagementContext = [(SBFluidSwitcherViewController *)self windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if (isChamoisOrFlexibleWindowing)
  {
    v9 = [[SBTapAppLayoutHeaderSwitcherModifierEvent alloc] initWithAppLayout:layoutCopy layoutRole:role];
  }

  else
  {
    v9 = [[SBTapAppLayoutSwitcherModifierEvent alloc] initWithAppLayout:layoutCopy layoutRole:role modifierFlags:0];
  }

  v10 = v9;

  [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v10];
}

- (id)_createWorkspaceTransientOverlayForAppLayout:(id)layout
{
  layoutCopy = layout;
  dataSource = [(SBFluidSwitcherViewController *)self dataSource];
  v6 = dataSource;
  if (*(&self->_dataSourceRespondsTo + 1))
  {
    v7 = [dataSource createWorkspaceTransientOverlayForAppLayout:layoutCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_configureTransitionRequestForGestureBegin:(id)begin
{
  beginCopy = begin;
  _activeTransientOverlayPresentedAppLayout = [(SBFluidSwitcherViewController *)self _activeTransientOverlayPresentedAppLayout];
  if (_activeTransientOverlayPresentedAppLayout && ([(SBFluidSwitcherViewController *)self _createWorkspaceTransientOverlayForAppLayout:_activeTransientOverlayPresentedAppLayout], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __76__SBFluidSwitcherViewController__configureTransitionRequestForGestureBegin___block_invoke;
    v8[3] = &unk_2783AC2E0;
    v9 = v6;
    v7 = v6;
    [beginCopy modifyTransientOverlayContext:v8];
  }

  else
  {
    [beginCopy setTransientOverlayContext:0];
  }
}

void __76__SBFluidSwitcherViewController__configureTransitionRequestForGestureBegin___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTransitionType:1];
  [v3 setTransientOverlay:*(a1 + 32)];
}

- (id)appLayoutAtLocation:(CGPoint)location withDraggedItem:(id)item environment:(int64_t)environment
{
  v6 = [(SBFluidSwitcherViewController *)self _itemContainerAtLocation:item ignoringDraggedItem:environment environment:location.x, location.y];
  leafAppLayoutsToAdjustedAppLayouts = self->_leafAppLayoutsToAdjustedAppLayouts;
  appLayout = [v6 appLayout];
  v9 = [(NSDictionary *)leafAppLayoutsToAdjustedAppLayouts objectForKey:appLayout];

  return v9;
}

- (id)_itemContainerAtLocation:(CGPoint)location ignoringDraggedItem:(id)item environment:(int64_t)environment
{
  y = location.y;
  x = location.x;
  v35 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  [(SBFluidSwitcherViewController *)self _unadjustedLeafAppLayouts];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v28 = v33 = 0u;
  subviews = [(SBFluidSwitcherContentView *)self->_contentView subviews];
  reverseObjectEnumerator = [subviews reverseObjectEnumerator];

  v12 = [reverseObjectEnumerator countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    selfCopy = self;
    v14 = *v31;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        v17 = objc_opt_class();
        v18 = SBSafeCast(v17, v16);
        v19 = v18;
        if (v18)
        {
          if (!itemCopy || ([v18 appLayout], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "containsItem:", itemCopy), v20, (v21 & 1) == 0))
          {
            appLayout = [v19 appLayout];
            v23 = appLayout;
            if ((!environment || [appLayout environment] == environment) && (objc_msgSend(v19, "isDeceleratingTowardsKillZone") & 1) == 0)
            {
              [(SBFluidSwitcherContentView *)selfCopy->_contentView convertPoint:v19 toView:x, y];
              if ([v19 pointInside:0 withEvent:?])
              {
                if ([v28 containsObject:v23])
                {
                  goto LABEL_22;
                }

                windowManagementContext = [(SBFluidSwitcherViewController *)selfCopy windowManagementContext];
                if ([windowManagementContext isChamoisOrFlexibleWindowing])
                {
                  v25 = [(NSArray *)selfCopy->_cachedAdjustedLeafAppLayouts containsObject:v23];

                  if (v25)
                  {
LABEL_22:
                    v26 = v19;

                    goto LABEL_23;
                  }
                }

                else
                {
                }
              }
            }
          }
        }
      }

      v13 = [reverseObjectEnumerator countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v26 = 0;
LABEL_23:

  return v26;
}

- (id)_itemContainerNearestLocation:(CGPoint)location environment:(int64_t)environment prioritizeForegroundedItemContainers:(BOOL)containers
{
  y = location.y;
  x = location.x;
  allValues = [(NSMutableDictionary *)self->_visibleItemContainers allValues];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __112__SBFluidSwitcherViewController__itemContainerNearestLocation_environment_prioritizeForegroundedItemContainers___block_invoke;
  v15[3] = &__block_descriptor_41_e38_B16__0__SBFluidSwitcherItemContainer_8l;
  v15[4] = environment;
  containersCopy = containers;
  v10 = [allValues bs_filter:v15];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __112__SBFluidSwitcherViewController__itemContainerNearestLocation_environment_prioritizeForegroundedItemContainers___block_invoke_2;
  v14[3] = &__block_descriptor_48_e71_q24__0__SBFluidSwitcherItemContainer_8__SBFluidSwitcherItemContainer_16l;
  *&v14[4] = x;
  *&v14[5] = y;
  v11 = [v10 sortedArrayUsingComparator:v14];
  firstObject = [v11 firstObject];

  return firstObject;
}

uint64_t __112__SBFluidSwitcherViewController__itemContainerNearestLocation_environment_prioritizeForegroundedItemContainers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 appLayout];
  v5 = [v4 environment];
  v6 = *(a1 + 32);
  if (v5 == v6 || v6 == 0)
  {
    if ([v3 isOccludedInContinuousExposeStage])
    {
      v8 = *(a1 + 40) ^ 1;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t __112__SBFluidSwitcherViewController__itemContainerNearestLocation_environment_prioritizeForegroundedItemContainers___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  [v6 frame];
  v8 = v7;
  [v6 frame];
  hypot(v8 - *(a1 + 32), v9 + v10 - *(a1 + 40));
  [v6 frame];
  v13 = v11 + v12;
  [v6 frame];
  hypot(v13 - *(a1 + 32), v14 + v15 - *(a1 + 40));
  [v6 frame];
  v17 = v16;
  [v6 frame];
  hypot(v17 - *(a1 + 32), v18 - *(a1 + 40));
  [v6 frame];
  v21 = v19 + v20;
  [v6 frame];
  v23 = v22;

  hypot(v21 - *(a1 + 32), v23 - *(a1 + 40));
  [v5 frame];
  v25 = v24;
  [v5 frame];
  hypot(v25 - *(a1 + 32), v26 + v27 - *(a1 + 40));
  [v5 frame];
  v30 = v28 + v29;
  [v5 frame];
  hypot(v30 - *(a1 + 32), v31 + v32 - *(a1 + 40));
  [v5 frame];
  v34 = v33;
  [v5 frame];
  hypot(v34 - *(a1 + 32), v35 - *(a1 + 40));
  [v5 frame];
  v38 = v36 + v37;
  [v5 frame];
  v40 = v39;

  hypot(v38 - *(a1 + 32), v40 - *(a1 + 40));
  if (BSFloatGreaterThanFloat())
  {
    return 1;
  }

  else
  {
    return BSFloatLessThanFloat() << 63 >> 63;
  }
}

- (id)appLayoutForLeafAppLayout:(id)layout
{
  layoutCopy = layout;
  v5 = [(NSDictionary *)self->_leafAppLayoutsToRecencyAppLayouts objectForKey:layoutCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(SBFluidSwitcherViewController *)self adjustedAppLayoutForLeafAppLayout:layoutCopy];
  }

  v8 = v7;

  return v8;
}

- (id)_leafAppLayoutForItemContainerAtLocation:(CGPoint)location environment:(int64_t)environment
{
  v4 = [(SBFluidSwitcherViewController *)self _itemContainerAtLocation:environment environment:location.x, location.y];
  v5 = v4;
  if (v4)
  {
    appLayout = [v4 appLayout];
  }

  else
  {
    appLayout = 0;
  }

  return appLayout;
}

- (id)_adjustedAppLayoutForItemContainerAtLocation:(CGPoint)location environment:(int64_t)environment
{
  v5 = [(SBFluidSwitcherViewController *)self _leafAppLayoutForItemContainerAtLocation:environment environment:location.x, location.y];
  if (v5)
  {
    v6 = [(NSDictionary *)self->_leafAppLayoutsToAdjustedAppLayouts objectForKey:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_appLayoutForWorkspaceTransientOverlay:(id)overlay
{
  overlayCopy = overlay;
  dataSource = [(SBFluidSwitcherViewController *)self dataSource];
  v6 = dataSource;
  if ((*&self->_dataSourceRespondsTo & 0x40) != 0)
  {
    v7 = [dataSource appLayoutForWorkspaceTransientOverlay:overlayCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isAppLayoutBlurred:(id)blurred
{
  v22 = *MEMORY[0x277D85DE8];
  blurredCopy = blurred;
  appLayouts = [(SBFluidSwitcherViewController *)self appLayouts];
  v6 = [appLayouts indexOfObject:blurredCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    leafAppLayouts = [blurredCopy leafAppLayouts];
    v9 = [leafAppLayouts countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(leafAppLayouts);
          }

          allItems = [*(*(&v17 + 1) + 8 * i) allItems];
          firstObject = [allItems firstObject];
          v15 = [blurredCopy layoutRoleForItem:firstObject];

          if (([(SBSwitcherPersonality *)self->_personality isLayoutRoleBlurred:v15 inAppLayout:blurredCopy]& 1) != 0)
          {
            v7 = 1;
            goto LABEL_13;
          }
        }

        v10 = [leafAppLayouts countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
LABEL_13:
  }

  return v7;
}

- (BOOL)_appLayoutRequiresLegacyRotationSupport:(id)support
{
  liveContentOverlays = self->_liveContentOverlays;
  anyLeafAppLayout = [support anyLeafAppLayout];
  v5 = [(NSMutableDictionary *)liveContentOverlays objectForKey:anyLeafAppLayout];

  if (v5)
  {
    requiresLegacyRotationSupport = [v5 requiresLegacyRotationSupport];
  }

  else
  {
    requiresLegacyRotationSupport = 0;
  }

  return requiresLegacyRotationSupport;
}

- (void)_updateStatusBarAndHomeGrabberVisibilityForAppLayout:(id)layout animated:(BOOL)animated
{
  v45 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [layoutCopy leafAppLayouts];
  v6 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v41;
    v30 = v37;
    v9 = &OBJC_IVAR___SBHomeGestureDismissableCoverSheetViewController__wantsHomeGestureOwnership;
    v31 = *v41;
    do
    {
      v10 = 0;
      v33 = v7;
      do
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v40 + 1) + 8 * v10);
        v12 = [*(&self->super.super.super.isa + v9[760]) objectForKey:{v11, v30}];
        if (v12)
        {
          appLayouts = [(SBFluidSwitcherViewController *)self appLayouts];
          v14 = [appLayouts indexOfObject:layoutCopy];

          if (v14 != 0x7FFFFFFFFFFFFFFFLL)
          {
            dataSource = [(SBFluidSwitcherViewController *)self dataSource];
            v35 = dataSource;
            if ((*(&self->_dataSourceRespondsTo + 2) & 2) != 0)
            {
              v16 = [dataSource isInAppStatusBarRequestedHiddenForSwitcherContentController:self];
            }

            else
            {
              v16 = 0;
            }

            allItems = [v11 allItems];
            firstObject = [allItems firstObject];
            v19 = [layoutCopy layoutRoleForItem:firstObject];

            v20 = [(SBSwitcherPersonality *)self->_personality isContentStatusBarVisibleForIndex:v14]^ 1;
            v21 = layoutCopy;
            v22 = [(SBSwitcherPersonality *)self->_personality hiddenContentStatusBarPartsForLayoutRole:v19 inAppLayout:layoutCopy];
            v23 = ((v22 & 0xA) != 0) | v20 | v16;
            animationSettings = [(SBAppSwitcherSettings *)self->_settings animationSettings];
            v25 = animationSettings;
            if (v23)
            {
              [animationSettings statusBarFadeOutSettings];
            }

            else
            {
              [animationSettings statusBarFadeInSettings];
            }
            v26 = ;
            v27 = (v22 >> 2) & 1 | v20;

            v36[0] = MEMORY[0x277D85DD0];
            v36[1] = 3221225472;
            v37[0] = __95__SBFluidSwitcherViewController__updateStatusBarAndHomeGrabberVisibilityForAppLayout_animated___block_invoke;
            v37[1] = &unk_2783AEE70;
            animatedCopy = animated;
            v38 = v26;
            v28 = v26;
            v29 = MEMORY[0x223D6F7F0](v36);
            [v12 setStatusBarHidden:v23 & 1 nubViewHidden:v27 & 1 animator:v29];

            layoutCopy = v21;
            v8 = v31;
            v7 = v33;
            v9 = &OBJC_IVAR___SBHomeGestureDismissableCoverSheetViewController__wantsHomeGestureOwnership;
          }
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v7);
  }
}

void __95__SBFluidSwitcherViewController__updateStatusBarAndHomeGrabberVisibilityForAppLayout_animated___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (*(a1 + 40) == 1)
  {
    [MEMORY[0x277D75D18] sb_animateWithSettings:*(a1 + 32) mode:3 animations:v6 completion:v5];
  }

  else
  {
    if (v6)
    {
      v6[2](v6);
    }

    if (v5)
    {
      v5[2](v5, 1, 0);
    }
  }
}

void __60__SBFluidSwitcherViewController__updateAnimatableProperties__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_alloc_init(SBAnimatablePropertyChangedSwitcherModifierEvent);
    [v3 _dispatchEventAndHandleAction:v2];

    WeakRetained = v3;
  }
}

- (void)_updateAppStatusBarAndHomeGrabberVisibilityAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  appLayouts = [(SBFluidSwitcherViewController *)self appLayouts];
  v6 = [appLayouts countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(appLayouts);
        }

        [(SBFluidSwitcherViewController *)self _updateStatusBarAndHomeGrabberVisibilityForAppLayout:*(*(&v10 + 1) + 8 * v9++) animated:animatedCopy];
      }

      while (v7 != v9);
      v7 = [appLayouts countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_beginRequiringItemContainerShadowPathDisplayLinkForLeafAppLayout:(id)layout killing:(BOOL)killing
{
  killingCopy = killing;
  v19 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    windowManagementContext = [(SBFluidSwitcherViewController *)self windowManagementContext];
    isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

    if ((isFlexibleWindowingEnabled & 1) == 0)
    {
      v11 = @"highlighting";
      if (killingCopy)
      {
        v11 = @"killing";
      }

      layoutCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %p", v11, layoutCopy];
      v13 = SBLogAppSwitcher();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = layoutCopy;
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "Begin requiring shadow path display link for reason: %@", buf, 0xCu);
      }

      shadowPathDisplayLinkRequiringReasons = self->_shadowPathDisplayLinkRequiringReasons;
      if (!shadowPathDisplayLinkRequiringReasons)
      {
        v15 = objc_opt_new();
        v16 = self->_shadowPathDisplayLinkRequiringReasons;
        self->_shadowPathDisplayLinkRequiringReasons = v15;

        shadowPathDisplayLinkRequiringReasons = self->_shadowPathDisplayLinkRequiringReasons;
      }

      [(NSCountedSet *)shadowPathDisplayLinkRequiringReasons addObject:layoutCopy];
      [(SBFluidSwitcherViewController *)self _updateShadowPathDisplayLink];
    }
  }
}

- (void)_stopRequiringItemContainerShadowPathDisplayLinkForLeafAppLayout:(id)layout killing:(BOOL)killing
{
  killingCopy = killing;
  v16 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    windowManagementContext = [(SBFluidSwitcherViewController *)self windowManagementContext];
    isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

    if ((isFlexibleWindowingEnabled & 1) == 0)
    {
      v11 = @"highlighting";
      if (killingCopy)
      {
        v11 = @"killing";
      }

      layoutCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %p", v11, layoutCopy];
      v13 = SBLogAppSwitcher();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = layoutCopy;
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "End requiring shadow path display link for reason: %@", buf, 0xCu);
      }

      [(NSCountedSet *)self->_shadowPathDisplayLinkRequiringReasons removeObject:layoutCopy];
      [(SBFluidSwitcherViewController *)self _updateShadowPathDisplayLink];
    }
  }
}

- (void)_updateShadowPathDisplayLink
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(NSCountedSet *)self->_shadowPathDisplayLinkRequiringReasons count]&& !self->_shadowPathDisplayLink)
  {
    v11 = SBLogAppSwitcher();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Creating shadow path display link", buf, 2u);
    }

    v12 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__shadowPathDisplayLinkDidUpdate_];
    shadowPathDisplayLink = self->_shadowPathDisplayLink;
    self->_shadowPathDisplayLink = v12;
    goto LABEL_18;
  }

  if (![(NSCountedSet *)self->_shadowPathDisplayLinkRequiringReasons count]&& self->_shadowPathDisplayLink)
  {
    [(SBFluidSwitcherViewController *)self _resetItemContainerShadowPathDisplayLink];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    shadowPathDisplayLink = [(NSMutableDictionary *)self->_visibleUnderlayAccessoryViews allKeys];
    v4 = [shadowPathDisplayLink countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(shadowPathDisplayLink);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          appLayouts = [(SBFluidSwitcherViewController *)self appLayouts];
          v10 = [appLayouts indexOfObject:v8];

          if (v10 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [(SBFluidSwitcherViewController *)self _updateShadowPathForIndex:v10];
          }
        }

        v5 = [shadowPathDisplayLink countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v5);
    }

LABEL_18:
  }
}

- (void)_shadowPathDisplayLinkDidUpdate:(id)update
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(NSMutableDictionary *)self->_visibleUnderlayAccessoryViews allKeys:update];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        appLayouts = [(SBFluidSwitcherViewController *)self appLayouts];
        v11 = [appLayouts indexOfObject:v9];

        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [(SBFluidSwitcherViewController *)self _updateShadowPathForIndex:v11];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)_updateShadowPathForIndex:(unint64_t)index
{
  v43 = *MEMORY[0x277D85DE8];
  appLayouts = [(SBFluidSwitcherViewController *)self appLayouts];
  indexCopy = index;
  v6 = [appLayouts objectAtIndex:index];

  v35 = [(NSMutableDictionary *)self->_visibleUnderlayAccessoryViews objectForKey:v6];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [v6 leafAppLayouts];
  v7 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v39;
    v11 = *MEMORY[0x277CBF348];
    v12 = *(MEMORY[0x277CBF348] + 8);
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        v15 = [(NSMutableDictionary *)self->_visibleItemContainers objectForKey:v14];
        if (v15)
        {
          v16 = [v14 itemForLayoutRole:1];
          v17 = [v6 layoutRoleForItem:v16];

          [v15 effectivePageViewPresentationFrame];
          v19 = v18;
          v21 = v20;
          v23 = v22;
          v25 = v24;
          if ([(SBSwitcherPersonality *)self->_personality shouldTetherItemsAndAccessoriesInAppLayout:v6])
          {
            v21 = v12;
            v19 = v11;
          }

          [(SBSwitcherPersonality *)self->_personality frameForIndex:indexCopy];
          personality = self->_personality;
          SBRectWithSize();
          [(SBSwitcherPersonality *)personality frameForLayoutRole:v17 inAppLayout:v6 withBounds:?];
          v28 = v19 + v27;
          v30 = v21 + v29;
          [v15 effectivePageViewPresentationCornerRadius];
          if (v17 == 1)
          {
            v32 = 5;
          }

          else
          {
            v32 = 10;
          }

          v33 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v32 byRoundingCorners:v28 cornerRadii:{v30, v23, v25, v31, v31}];
          v34 = v33;
          if (v9)
          {
            [v9 appendPath:v33];
          }

          else
          {
            v9 = v33;
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  [v35 setShadowPath:v9];
}

- (unint64_t)_itemContainerFooterStyleForAppLayout:(id)layout
{
  windowManagementContext = [(SBFluidSwitcherViewController *)self windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if (!isChamoisOrFlexibleWindowing)
  {
    return 0;
  }

  [(SBFluidSwitcherViewController *)self containerViewBounds];
  if (BSFloatGreaterThanFloat())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)setShelfFocusedDisplayItems:(id)items
{
  itemsCopy = items;
  if ((BSEqualSets() & 1) == 0)
  {
    v4 = [itemsCopy copy];
    shelfFocusedDisplayItems = self->_shelfFocusedDisplayItems;
    self->_shelfFocusedDisplayItems = v4;

    v6 = objc_alloc_init(SBShelfFocusedDisplayItemsChangedEvent);
    [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v6];
  }
}

uint64_t __63__SBFluidSwitcherViewController__updateSlideOverTonguePresence__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _layoutSlideoverTonguesWithCompletion:0];
  v2 = *(a1 + 32);

  return [v2 _ensureSubviewOrdering];
}

uint64_t __50__SBFluidSwitcherViewController__updateDockPortal__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D76180]) initWithSourceView:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1496);
  *(v3 + 1496) = v2;

  [*(*(a1 + 32) + 1496) setMatchesPosition:1];
  [*(*(a1 + 32) + 1496) setMatchesAlpha:1];
  [*(*(a1 + 32) + 1496) setMatchesTransform:1];
  [*(*(a1 + 32) + 1496) setAllowsBackdropGroups:1];
  [*(*(a1 + 32) + 1496) setHidesSourceView:1];
  [*(*(a1 + 32) + 1496) setAllowsHitTesting:1];
  [*(*(a1 + 32) + 1952) addSubview:*(*(a1 + 32) + 1496)];
  v5 = *(a1 + 32);

  return [v5 _ensureSubviewOrdering];
}

uint64_t __58__SBFluidSwitcherViewController__updateBezelEffectsPortal__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D76180]) initWithSourceView:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1456);
  *(v3 + 1456) = v2;

  [*(*(a1 + 32) + 1456) setMatchesPosition:1];
  [*(*(a1 + 32) + 1456) setMatchesAlpha:1];
  [*(*(a1 + 32) + 1456) setMatchesTransform:1];
  [*(*(a1 + 32) + 1456) setAllowsBackdropGroups:1];
  [*(*(a1 + 32) + 1456) setHidesSourceView:1];
  [*(*(a1 + 32) + 1456) setAllowsHitTesting:1];
  [*(*(a1 + 32) + 1952) addSubview:*(*(a1 + 32) + 1456)];
  v5 = *(a1 + 32);

  return [v5 _ensureSubviewOrdering];
}

void __58__SBFluidSwitcherViewController__updateBezelEffectsPortal__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateBezelEffectsPortal];
}

- (void)_updateItemContainerBackdropPresenceForIndex:(unint64_t)index scale:(double)scale rotation:(double)rotation cornerRadius:(double)radius animationAttributes:(id)attributes completion:(id)completion
{
  attributesCopy = attributes;
  completionCopy = completion;
  v15 = [(SBSwitcherPersonality *)self->_personality shouldShowBackdropViewAtIndex:index];
  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = __Block_byref_object_copy__16;
  v84 = __Block_byref_object_dispose__16;
  visibleItemContainerBackdropViews = self->_visibleItemContainerBackdropViews;
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  v85 = [(NSMutableDictionary *)visibleItemContainerBackdropViews objectForKey:v17];

  appLayouts = [(SBFluidSwitcherViewController *)self appLayouts];
  v19 = [appLayouts objectAtIndex:index];

  keyboardFocusedAppLayout = [(SBFluidSwitcherViewController *)self keyboardFocusedAppLayout];
  v51 = keyboardFocusedAppLayout;
  if (keyboardFocusedAppLayout)
  {
    v21 = keyboardFocusedAppLayout == v19;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;
  if ((v22 & v15) == 1)
  {
    v23 = [(SBSwitcherPersonality *)self->_personality isFocusEnabledForAppLayout:v19];
    if (!v23)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v23 = (v22 ^ 1) & v15;
    if (!v23)
    {
LABEL_12:
      v24 = 0;
      goto LABEL_13;
    }
  }

  if (v81[5])
  {
    goto LABEL_12;
  }

  v40 = [MEMORY[0x277D26718] materialViewWithRecipe:101];
  v41 = v81[5];
  v81[5] = v40;

  [v81[5] bs_setHitTestingDisabled:1];
  memset(&v79, 0, sizeof(v79));
  CGAffineTransformMakeScale(&v79, scale, scale);
  v77 = v79;
  CGAffineTransformRotate(&v78, &v77, rotation);
  v79 = v78;
  [v81[5] setTransform:&v78];
  layer = [v81[5] layer];
  [layer setCornerCurve:*MEMORY[0x277CDA138]];

  layer2 = [v81[5] layer];
  [layer2 setCornerRadius:radius];

  [(SBFluidSwitcherContentView *)self->_contentView addSubview:v81[5]];
  v44 = self->_visibleItemContainerBackdropViews;
  v45 = v81[5];
  v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  [(NSMutableDictionary *)v44 setObject:v45 forKey:v46];

  [(SBFluidSwitcherViewController *)self _ensureSubviewOrdering];
  v24 = 1;
LABEL_13:
  layoutUpdateMode = [attributesCopy layoutUpdateMode];
  if (!layoutUpdateMode)
  {
    layoutUpdateMode = [attributesCopy updateMode];
  }

  positionUpdateMode = [attributesCopy positionUpdateMode];
  if (!positionUpdateMode)
  {
    positionUpdateMode = [attributesCopy updateMode];
  }

  layoutSettings = [attributesCopy layoutSettings];
  positionSettings = [attributesCopy positionSettings];
  if ((v22 & 1) != 0 || [(NSMutableSet *)self->_focusedItemBackdropsBeingRemoved containsObject:v81[5]])
  {
    positionUpdateMode = 1;
  }

  v28 = [(NSMutableDictionary *)self->_visibleUnderlayAccessoryViews objectForKey:v19, v19];
  v29 = v28;
  if (v23)
  {
    [v28 bounds];
    x = v86.origin.x;
    y = v86.origin.y;
    width = v86.size.width;
    height = v86.size.height;
    v34 = CGRectGetWidth(v86);
    v87.origin.x = x;
    v87.origin.y = y;
    v87.size.width = width;
    v87.size.height = height;
    v35 = CGRectGetHeight(v87);
    memset(&v79, 0, sizeof(v79));
    CGAffineTransformMakeScale(&v79, (14.0 / scale + v34) / v34 * scale, (14.0 / scale + v35) / v35 * scale);
    v77 = v79;
    CGAffineTransformRotate(&v78, &v77, rotation);
    v79 = v78;
    if (v24)
    {
      v36 = 1;
    }

    else
    {
      v36 = positionUpdateMode;
    }

    v37 = MEMORY[0x277D75D18];
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __137__SBFluidSwitcherViewController__updateItemContainerBackdropPresenceForIndex_scale_rotation_cornerRadius_animationAttributes_completion___block_invoke;
    v70[3] = &unk_2783AEEC0;
    v72 = &v80;
    v71 = v29;
    v73 = x;
    v74 = y;
    v75 = width;
    v76 = height;
    [v37 sb_animateWithSettings:positionSettings mode:v36 animations:v70 completion:0];
    v38 = MEMORY[0x277D75D18];
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v68 = v79;
    v67[2] = __137__SBFluidSwitcherViewController__updateItemContainerBackdropPresenceForIndex_scale_rotation_cornerRadius_animationAttributes_completion___block_invoke_2;
    v67[3] = &unk_2783AEEE8;
    v67[4] = &v80;
    v69 = radius + 14.0;
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __137__SBFluidSwitcherViewController__updateItemContainerBackdropPresenceForIndex_scale_rotation_cornerRadius_animationAttributes_completion___block_invoke_3;
    v65[3] = &unk_2783AE778;
    v66 = completionCopy;
    [v38 sb_animateWithSettings:layoutSettings mode:layoutUpdateMode animations:v67 completion:v65];

    v39 = v71;
    goto LABEL_32;
  }

  if (v81[5])
  {
    if (v22)
    {
      [(NSMutableSet *)self->_focusedItemBackdropsBeingRemoved addObject:?];
    }

    else
    {
      v47 = MEMORY[0x277D75D18];
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __137__SBFluidSwitcherViewController__updateItemContainerBackdropPresenceForIndex_scale_rotation_cornerRadius_animationAttributes_completion___block_invoke_4;
      v62[3] = &unk_2783A8CE0;
      v64 = &v80;
      v63 = v28;
      [v47 sb_animateWithSettings:positionSettings mode:positionUpdateMode animations:v62 completion:0];
    }

    [v81[5] alpha];
    if (v48 != 0.0)
    {
      memset(&v79, 0, sizeof(v79));
      CGAffineTransformMakeScale(&v79, scale, scale);
      v77 = v79;
      CGAffineTransformRotate(&v78, &v77, rotation);
      v79 = v78;
      v49 = MEMORY[0x277D75D18];
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __137__SBFluidSwitcherViewController__updateItemContainerBackdropPresenceForIndex_scale_rotation_cornerRadius_animationAttributes_completion___block_invoke_5;
      v58[3] = &unk_2783AEF10;
      v58[4] = &v80;
      v61 = v22;
      v59 = v78;
      radiusCopy = radius;
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __137__SBFluidSwitcherViewController__updateItemContainerBackdropPresenceForIndex_scale_rotation_cornerRadius_animationAttributes_completion___block_invoke_6;
      v54[3] = &unk_2783AEF38;
      v54[4] = self;
      v56 = &v80;
      indexCopy = index;
      v55 = completionCopy;
      [v49 sb_animateWithSettings:layoutSettings mode:layoutUpdateMode animations:v58 completion:v54];
      v39 = v55;
LABEL_32:

      goto LABEL_35;
    }
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }

LABEL_35:

  _Block_object_dispose(&v80, 8);
}

uint64_t __137__SBFluidSwitcherViewController__updateItemContainerBackdropPresenceForIndex_scale_rotation_cornerRadius_animationAttributes_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  [*(a1 + 32) frame];
  UIRectGetCenter();
  [v2 setCenter:?];
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);

  return [v3 setBounds:{v4, v5, v6, v7}];
}

void __137__SBFluidSwitcherViewController__updateItemContainerBackdropPresenceForIndex_scale_rotation_cornerRadius_animationAttributes_completion___block_invoke_2(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) setAlpha:0.8];
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = *(a1 + 56);
  v5[0] = *(a1 + 40);
  v5[1] = v3;
  v5[2] = *(a1 + 72);
  [v2 setTransform:v5];
  v4 = [*(*(*(a1 + 32) + 8) + 40) layer];
  [v4 setCornerRadius:*(a1 + 88)];
}

uint64_t __137__SBFluidSwitcherViewController__updateItemContainerBackdropPresenceForIndex_scale_rotation_cornerRadius_animationAttributes_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __137__SBFluidSwitcherViewController__updateItemContainerBackdropPresenceForIndex_scale_rotation_cornerRadius_animationAttributes_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 40);
  [*(a1 + 32) frame];
  UIRectGetCenter();

  return [v1 setCenter:?];
}

void __137__SBFluidSwitcherViewController__updateItemContainerBackdropPresenceForIndex_scale_rotation_cornerRadius_animationAttributes_completion___block_invoke_5(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) setAlpha:0.0];
  if ((*(a1 + 96) & 1) == 0)
  {
    v2 = *(*(*(a1 + 32) + 8) + 40);
    v3 = *(a1 + 56);
    v5[0] = *(a1 + 40);
    v5[1] = v3;
    v5[2] = *(a1 + 72);
    [v2 setTransform:v5];
    v4 = [*(*(*(a1 + 32) + 8) + 40) layer];
    [v4 setCornerRadius:*(a1 + 88)];
  }
}

uint64_t __137__SBFluidSwitcherViewController__updateItemContainerBackdropPresenceForIndex_scale_rotation_cornerRadius_animationAttributes_completion___block_invoke_6(void *a1, uint64_t a2, char a3)
{
  [*(a1[4] + 2008) removeObject:*(*(a1[6] + 8) + 40)];
  if ((a3 & 1) == 0)
  {
    v5 = *(a1[4] + 2000);
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[7]];
    [v5 removeObjectForKey:v6];

    [*(*(a1[6] + 8) + 40) setHidden:1];
    [*(*(a1[6] + 8) + 40) removeFromSuperview];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }

  result = a1[5];
  if (result)
  {
    v10 = *(result + 16);

    return v10();
  }

  return result;
}

- (void)_sceneUpdateDidChange:(id)change
{
  v17 = *MEMORY[0x277D85DE8];
  userInfo = [change userInfo];
  v5 = [userInfo objectForKey:@"SceneIdentifierKey"];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_cachedAdjustedLeafAppLayouts;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 containsItemWithUniqueIdentifier:{v5, v12}])
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = [[SBSceneReadySwitcherModifierEvent alloc] initWithAppLayout:v7];
  [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v11];
}

- (void)_updateSnapshotCacheReloadingForActiveInterfaceOrientationChange
{
  dataSource = [(SBFluidSwitcherViewController *)self dataSource];
  if (dataSource && (*(&self->_dataSourceRespondsTo + 2) & 0x80) != 0)
  {
    v4 = dataSource;
    -[SBAppSwitcherSnapshotImageCache setReloadsSnapshotsForActiveInterfaceOrientationChange:](self->_snapshotCache, "setReloadsSnapshotsForActiveInterfaceOrientationChange:", [dataSource switcherContentControllerReloadsSnapshotsForActiveInterfaceOrientationChange:self]);
    dataSource = v4;
  }
}

- (void)_setupLiveContentOverlayForAppLayout:(id)layout itemContainer:(id)container overlay:(id)overlay
{
  layoutCopy = layout;
  containerCopy = container;
  overlayCopy = overlay;
  [overlayCopy setDelegate:self];
  [(SBFluidSwitcherViewController *)self _updateStatusBarAndHomeGrabberVisibilityForAppLayout:layoutCopy animated:1];
  appLayouts = [(SBFluidSwitcherViewController *)self appLayouts];
  v11 = [appLayouts indexOfObject:layoutCopy];

  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SBFluidSwitcherViewController *)self _applyStyleToLiveContentOverlay:overlayCopy forItemContainer:containerCopy atIndex:v11];
  }

  [(SBFluidSwitcherViewController *)self _updateAutoHideForItemContainer:containerCopy appLayout:layoutCopy];
  [(SBFluidSwitcherViewController *)self _applyTouchBehaviorToLiveContentOverlay:overlayCopy forAppLayout:layoutCopy];
  [(SBFluidSwitcherViewController *)self _updateAsyncRenderingAndResizesHostedContext];
  [(SBFluidSwitcherViewController *)self _updateWantsEnhancedWindowingEnabledState];
  [(SBFluidSwitcherViewController *)self _updateCornerRadiiiAndMaximizedState];
  [(SBFluidSwitcherViewController *)self _updateOverlaysTopAffordanceContextMenu];
  v12 = +[SBBlurItemContainerParameters defaultCrossblurBlurParameters];
  [(SBFluidSwitcherViewController *)self _unblurItemContainer:containerCopy blurParameters:v12 withAnimationUpdateMode:2];
}

- (BOOL)_allowsTitleItemsForAppLayout:(id)layout
{
  layoutCopy = layout;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = WeakRetained;
  if ((*(&self->_dataSourceRespondsTo + 3) & 2) != 0)
  {
    v7 = [WeakRetained switcherContentController:self supportsTitleItemsForAppLayout:layoutCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)_supportsKillingForAppLayout:(id)layout
{
  layoutCopy = layout;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = WeakRetained;
  if ((*(&self->_dataSourceRespondsTo + 3) & 4) != 0)
  {
    v7 = [WeakRetained switcherContentController:self supportsKillingOfAppLayout:layoutCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (CGRect)_frameForItemWithRole:(int64_t)role inMainAppLayout:(id)layout interfaceOrientation:(int64_t)orientation
{
  layoutCopy = layout;
  dataSource = [(SBFluidSwitcherViewController *)self dataSource];
  [dataSource switcherContentController:self frameForItemWithRole:role inMainAppLayout:layoutCopy interfaceOrientation:orientation];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)_frameForFloatingAppLayoutInInterfaceOrientation:(int64_t)orientation floatingConfiguration:(int64_t)configuration
{
  dataSource = [(SBFluidSwitcherViewController *)self dataSource];
  v8 = dataSource;
  if ((*(&self->_dataSourceRespondsTo + 1) & 8) != 0)
  {
    [dataSource switcherContentController:self frameForFloatingAppLayoutInInterfaceOrientation:orientation floatingConfiguration:configuration];
    v9 = v13;
    v10 = v14;
    v11 = v15;
    v12 = v16;
  }

  else
  {
    v9 = *MEMORY[0x277CBF398];
    v10 = *(MEMORY[0x277CBF398] + 8);
    v11 = *(MEMORY[0x277CBF398] + 16);
    v12 = *(MEMORY[0x277CBF398] + 24);
  }

  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)_frameForCenterItemInInterfaceOrientation:(int64_t)orientation centerConfiguration:(int64_t)configuration
{
  dataSource = [(SBFluidSwitcherViewController *)self dataSource];
  v8 = dataSource;
  if ((*(&self->_dataSourceRespondsTo + 1) & 0x10) != 0)
  {
    [dataSource switcherContentController:self frameForCenterItemWithConfiguration:configuration interfaceOrientation:orientation];
    v9 = v13;
    v10 = v14;
    v11 = v15;
    v12 = v16;
  }

  else
  {
    v9 = *MEMORY[0x277CBF3A0];
    v10 = *(MEMORY[0x277CBF3A0] + 8);
    v11 = *(MEMORY[0x277CBF3A0] + 16);
    v12 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (id)_unadjustedLeafAppLayouts
{
  v16 = *MEMORY[0x277D85DE8];
  _unadjustedAppLayouts = [(SBFluidSwitcherViewController *)self _unadjustedAppLayouts];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = _unadjustedAppLayouts;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        leafAppLayouts = [*(*(&v11 + 1) + 8 * i) leafAppLayouts];
        [v3 addObjectsFromArray:leafAppLayouts];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_updateContinuousExposeIdentifiersTransitioningFromAppLayout:(id)layout toAppLayout:(id)appLayout animated:(BOOL)animated
{
  animatedCopy = animated;
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  windowManagementContext = [(SBFluidSwitcherViewController *)self windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if (isChamoisOrFlexibleWindowing)
  {
    continuousExposeIdentifiersInSwitcher = self->_continuousExposeIdentifiersInSwitcher;
    v12 = MEMORY[0x277CBEBF8];
    if (!continuousExposeIdentifiersInSwitcher)
    {
      continuousExposeIdentifiersInSwitcher = MEMORY[0x277CBEBF8];
    }

    v13 = continuousExposeIdentifiersInSwitcher;
    continuousExposeIdentifiersInStrip = self->_continuousExposeIdentifiersInStrip;
    if (!continuousExposeIdentifiersInStrip)
    {
      continuousExposeIdentifiersInStrip = v12;
    }

    v15 = continuousExposeIdentifiersInStrip;
    v16 = [(SBSwitcherPersonality *)self->_personality adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip:v15];
    v17 = self->_continuousExposeIdentifiersInStrip;
    self->_continuousExposeIdentifiersInStrip = v16;

    v18 = [(SBSwitcherPersonality *)self->_personality adjustedContinuousExposeIdentifiersInSwitcherFromPreviousIdentifiersInSwitcher:v13 identifiersInStrip:self->_continuousExposeIdentifiersInStrip];
    v19 = self->_continuousExposeIdentifiersInSwitcher;
    self->_continuousExposeIdentifiersInSwitcher = v18;

    [(SBFluidSwitcherViewController *)self newContinuousExposeIdentifiersGenerationCount];
    appLayoutsForContinuousExposeIdentifiers = self->_appLayoutsForContinuousExposeIdentifiers;
    self->_appLayoutsForContinuousExposeIdentifiers = 0;

    v21 = [SBContinuousExposeIdentifiersChangedModifierEvent alloc];
    activeGesture = [(SBFluidSwitcherLayoutContext *)self->_layoutContext activeGesture];
    if (activeGesture)
    {
      v23 = [(SBContinuousExposeIdentifiersChangedModifierEvent *)v21 initWithPreviousContinuousExposeIdentifiersInSwitcher:v13 previousContinuousExposeIdentifiersInStrip:v15 transitioningFromAppLayout:layoutCopy transitioningToAppLayout:appLayoutCopy animated:animatedCopy gestureInitiated:1];
    }

    else
    {
      activeTransitionContext = [(SBFluidSwitcherLayoutContext *)self->_layoutContext activeTransitionContext];
      request = [activeTransitionContext request];
      v23 = -[SBContinuousExposeIdentifiersChangedModifierEvent initWithPreviousContinuousExposeIdentifiersInSwitcher:previousContinuousExposeIdentifiersInStrip:transitioningFromAppLayout:transitioningToAppLayout:animated:gestureInitiated:](v21, "initWithPreviousContinuousExposeIdentifiersInSwitcher:previousContinuousExposeIdentifiersInStrip:transitioningFromAppLayout:transitioningToAppLayout:animated:gestureInitiated:", v13, v15, layoutCopy, appLayoutCopy, animatedCopy, [request source] == 11);
    }

    [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v23];
  }
}

- (void)_updateReopenClosedWindowsButtonText
{
  if (self->_reopenClosedWindowsButton)
  {
    appExposeAccessoryButtonsBundleIdentifier = [(SBSwitcherPersonality *)self->_personality appExposeAccessoryButtonsBundleIdentifier];
    if (appExposeAccessoryButtonsBundleIdentifier)
    {
      v9 = appExposeAccessoryButtonsBundleIdentifier;
      v4 = [(SBFluidSwitcherViewController *)self numberOfHiddenAppLayoutsForBundleIdentifier:appExposeAccessoryButtonsBundleIdentifier];
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v6 = mainBundle;
      if (v4 == 1)
      {
        v7 = @"REOPEN_CLOSED_WINDOW";
      }

      else
      {
        v7 = @"REOPEN_CLOSED_WINDOWS";
      }

      v8 = [mainBundle localizedStringForKey:v7 value:&stru_283094718 table:@"SpringBoard"];

      [(SBFluidSwitcherTitledButton *)self->_reopenClosedWindowsButton setTitle:v8];
      appExposeAccessoryButtonsBundleIdentifier = v9;
    }
  }
}

- (void)_updateAppExposeAccessoryButtonsExtendedTouchRegions
{
  reopenClosedWindowsButton = self->_reopenClosedWindowsButton;
  v4 = 17.0;
  v5 = 17.0;
  if (reopenClosedWindowsButton)
  {
    [(SBFluidSwitcherTitledButton *)reopenClosedWindowsButton alpha];
    if (BSFloatIsZero())
    {
      v5 = 17.0;
    }

    else
    {
      v5 = 8.0;
    }
  }

  plusButton = self->_plusButton;
  v7 = MEMORY[0x277D76620];
  if (plusButton)
  {
    [(SBFluidSwitcherButton *)plusButton alpha];
    v4 = BSFloatIsZero() ? 17.0 : 8.0;
    if (self->_plusButton)
    {
      if ([*v7 userInterfaceLayoutDirection] == 1)
      {
        v8 = -17.0;
      }

      else
      {
        v8 = -v5;
      }

      [(SBFluidSwitcherButton *)self->_plusButton setExtendedEdgeInsets:-17.0, v8];
    }
  }

  if (self->_reopenClosedWindowsButton)
  {
    if ([*v7 userInterfaceLayoutDirection] == 1)
    {
      v9 = -v4;
    }

    else
    {
      v9 = -17.0;
    }

    v10 = self->_reopenClosedWindowsButton;

    [(SBFluidSwitcherButton *)v10 setExtendedEdgeInsets:-17.0, v9];
  }
}

- (void)_updatePlusButtonStyleWithMode:(int64_t)mode completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (self->_plusButton)
  {
    v8 = [(SBSwitcherPersonality *)self->_personality animationAttributesForLayoutElement:self->_genericAccessoryLayoutElement];
    opacitySettings = [v8 opacitySettings];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __75__SBFluidSwitcherViewController__updatePlusButtonStyleWithMode_completion___block_invoke;
    v10[3] = &unk_2783A8C18;
    v10[4] = self;
    [MEMORY[0x277D75D18] sb_animateWithSettings:opacitySettings mode:mode animations:v10 completion:v7];
    [(SBFluidSwitcherViewController *)self _updateAppExposeAccessoryButtonsExtendedTouchRegions];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }
}

uint64_t __75__SBFluidSwitcherViewController__updatePlusButtonStyleWithMode_completion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 2096) setButtonStyle:{objc_msgSend(*(*(a1 + 32) + 2112), "plusButtonStyle")}];
  [*(*(a1 + 32) + 2096) setOverrideUserInterfaceStyle:{objc_msgSend(*(*(a1 + 32) + 2112), "appExposeAccessoryButtonsOverrideUserInterfaceStyle")}];
  v2 = *(a1 + 32);
  v3 = *(v2 + 2096);
  [*(v2 + 2112) plusButtonAlpha];

  return [v3 setAlpha:?];
}

- (void)_updateReopenClosedWindowsButtonWithMode:(int64_t)mode completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (self->_reopenClosedWindowsButton)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __85__SBFluidSwitcherViewController__updateReopenClosedWindowsButtonWithMode_completion___block_invoke;
    v8[3] = &unk_2783AEF60;
    v8[4] = self;
    v8[5] = mode;
    [MEMORY[0x277D65DA0] perform:v8 finalCompletion:completionCopy options:0 delegate:self];
    [(SBFluidSwitcherViewController *)self _updateAppExposeAccessoryButtonsExtendedTouchRegions];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }
}

void __85__SBFluidSwitcherViewController__updateReopenClosedWindowsButtonWithMode_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 2112);
  v5 = *(v3 + 1432);
  v6 = a2;
  v7 = [v4 animationAttributesForLayoutElement:v5];
  v8 = [v7 opacitySettings];

  v9 = MEMORY[0x277D75D18];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __85__SBFluidSwitcherViewController__updateReopenClosedWindowsButtonWithMode_completion___block_invoke_2;
  v21[3] = &unk_2783A8C18;
  v10 = *(a1 + 40);
  v21[4] = *(a1 + 32);
  v11 = v6[2](v6, @"reopen alpha");
  [v9 sb_animateWithSettings:v8 mode:v10 animations:v21 completion:v11];

  [*(*(a1 + 32) + 2112) reopenClosedWindowsButtonScale];
  v13 = v12;
  v14 = MEMORY[0x277D75D18];
  v15 = [*(a1 + 32) switcherSettings];
  v16 = [v15 animationSettings];
  v17 = [v16 reopenButtonScaleSettings];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __85__SBFluidSwitcherViewController__updateReopenClosedWindowsButtonWithMode_completion___block_invoke_3;
  v20[3] = &unk_2783A8BC8;
  v18 = *(a1 + 40);
  v20[4] = *(a1 + 32);
  v20[5] = v13;
  v19 = v6[2](v6, @"reopen button scale");

  [v14 sb_animateWithSettings:v17 mode:v18 animations:v20 completion:v19];
}

uint64_t __85__SBFluidSwitcherViewController__updateReopenClosedWindowsButtonWithMode_completion___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 2104) setOverrideUserInterfaceStyle:{objc_msgSend(*(*(a1 + 32) + 2112), "appExposeAccessoryButtonsOverrideUserInterfaceStyle")}];
  v2 = *(a1 + 32);
  v3 = *(v2 + 2104);
  [*(v2 + 2112) reopenClosedWindowsButtonAlpha];

  return [v3 setAlpha:?];
}

uint64_t __85__SBFluidSwitcherViewController__updateReopenClosedWindowsButtonWithMode_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 2104);
  CGAffineTransformMakeScale(&v3, *(a1 + 40), *(a1 + 40));
  return [v1 setTransform:&v3];
}

- (void)_updateTitleItemsUserInterfaceStyle
{
  v15 = *MEMORY[0x277D85DE8];
  traitCollection = [(SBFluidSwitcherViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_appLayoutToTitleItemController allValues];
  v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v10 + 1) + 8 * v9++) setUserInterfaceStyle:userInterfaceStyle];
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_handlePlusButtonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((*(&self->_delegateRespondsTo + 1) & 0x80) != 0)
  {
    v6 = WeakRetained;
    appExposeAccessoryButtonsBundleIdentifier = [(SBSwitcherPersonality *)self->_personality appExposeAccessoryButtonsBundleIdentifier];
    [v6 switcherContentController:self requestNewWindowForBundleIdentifier:appExposeAccessoryButtonsBundleIdentifier];

    WeakRetained = v6;
  }
}

- (void)handleReopenClosedWindowsButtonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = WeakRetained;
  if ((*(&self->_delegateRespondsTo + 3) & 4) != 0)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __71__SBFluidSwitcherViewController_handleReopenClosedWindowsButtonTapped___block_invoke;
    v10[3] = &unk_2783A92D8;
    v11 = WeakRetained;
    selfCopy = self;
    v6 = MEMORY[0x223D6F7F0](v10);
    appLayoutToScrollToBeforeReopeningClosedWindows = [(SBSwitcherPersonality *)self->_personality appLayoutToScrollToBeforeReopeningClosedWindows];
    if (appLayoutToScrollToBeforeReopeningClosedWindows)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __71__SBFluidSwitcherViewController_handleReopenClosedWindowsButtonTapped___block_invoke_2;
      v8[3] = &unk_2783A9C70;
      v9 = v6;
      [(SBFluidSwitcherViewController *)self _scrollToAppLayout:appLayoutToScrollToBeforeReopeningClosedWindows animated:1 alignment:0 completion:v8];
    }

    else
    {
      v6[2](v6);
    }
  }
}

void __71__SBFluidSwitcherViewController_handleReopenClosedWindowsButtonTapped___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(v2 + 2112) appExposeAccessoryButtonsBundleIdentifier];
  [v1 switcherContentController:v2 reopenHiddenAppLayoutsWithBundleIdentifier:v3];
}

uint64_t __50__SBFluidSwitcherViewController__updateBounceIcon__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 2224);
  UIRectGetCenter();
  v4 = v3;
  [*(*(a1 + 32) + 1952) bounds];
  v6 = v5 + *(a1 + 64) * -0.5 + -20.0;

  return [v2 setCenter:{v4, v6}];
}

void __50__SBFluidSwitcherViewController__updateBounceIcon__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && WeakRetained[279] == *(a1 + 48))
  {
    v4 = MEMORY[0x277D75D18];
    v5 = *(a1 + 32);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__SBFluidSwitcherViewController__updateBounceIcon__block_invoke_3;
    v12[3] = &unk_2783AC828;
    v13 = WeakRetained;
    v6 = *(a1 + 72);
    v14 = *(a1 + 56);
    v15 = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50__SBFluidSwitcherViewController__updateBounceIcon__block_invoke_4;
    v9[3] = &unk_2783A9158;
    v7 = v13;
    v8 = *(a1 + 48);
    v10 = v7;
    v11 = v8;
    [v4 sb_animateWithSettings:v5 mode:3 animations:v12 completion:v9];
  }
}

uint64_t __50__SBFluidSwitcherViewController__updateBounceIcon__block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 2224);
  UIRectGetCenter();
  v4 = v3;
  [*(*(a1 + 32) + 1952) bounds];
  v6 = *(a1 + 64) + v5;

  return [v2 setCenter:{v4, v6}];
}

void __50__SBFluidSwitcherViewController__updateBounceIcon__block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && *(v1 + 2232) == *(a1 + 40))
  {
    [*(v1 + 2224) removeFromSuperview];
    v3 = *(a1 + 32);
    v4 = *(v3 + 2224);
    *(v3 + 2224) = 0;
  }
}

- (id)_sceneDeactivationPredicateMatchingAppLayouts:(id)layouts
{
  layoutsCopy = layouts;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__SBFluidSwitcherViewController__sceneDeactivationPredicateMatchingAppLayouts___block_invoke;
  v7[3] = &unk_2783ADD00;
  v8 = layoutsCopy;
  v4 = layoutsCopy;
  v5 = MEMORY[0x223D6F7F0](v7);

  return v5;
}

uint64_t __79__SBFluidSwitcherViewController__sceneDeactivationPredicateMatchingAppLayouts___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v3 identifier];
        LOBYTE(v8) = [v8 containsItemWithUniqueIdentifier:v9];

        if (v8)
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (void)_acquireKeyboardSuppressionAssertionForMode:(id)mode
{
  modeCopy = mode;
  v4 = +[SBSwitcherKeyboardSuppressionMode suppressionModeNone];

  if (v4 == modeCopy)
  {
    [SBFluidSwitcherViewController _acquireKeyboardSuppressionAssertionForMode:];
  }

  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  medusaHostedKeyboardWindowController = [_sbWindowScene medusaHostedKeyboardWindowController];
  isUsingMedusaHostedKeyboardWindow = [medusaHostedKeyboardWindowController isUsingMedusaHostedKeyboardWindow];

  layoutContext = [(SBFluidSwitcherViewController *)self layoutContext];
  layoutState = [layoutContext layoutState];
  elements = [layoutState elements];
  if ([elements count] > 1)
  {

    goto LABEL_8;
  }

  layoutContext2 = [(SBFluidSwitcherViewController *)self layoutContext];
  transitioningFromLayoutState = [layoutContext2 transitioningFromLayoutState];
  elements2 = [transitioningFromLayoutState elements];
  v14 = [elements2 count] > 1;

  if ((v14 | isUsingMedusaHostedKeyboardWindow) & 1) != 0 || ([modeCopy applyAssertionEvenIfAppIsHostingTheKeyboard])
  {
LABEL_8:
    if ([modeCopy suppressesSwitcherScenesOnly])
    {
      appLayouts = [modeCopy appLayouts];
      v16 = [(SBFluidSwitcherViewController *)self _sceneDeactivationPredicateMatchingAppLayouts:appLayouts];
    }

    else
    {
      v16 = 0;
    }

    v17 = +[SBKeyboardSuppressionManager sharedInstance];
    [v17 startSuppressingKeyboardWithReason:self->_fluidSwitcherAssertionReason predicate:v16 displayIdentity:0];
  }
}

- (void)_removeProlongedCursorGestureFloatingDockBehaviorAssertion
{
  _floatingDockController = [(SBFluidSwitcherViewController *)self _floatingDockController];
  _activeGestureFloatingDockBehaviorAssertion = [_floatingDockController _activeGestureFloatingDockBehaviorAssertion];
  [_activeGestureFloatingDockBehaviorAssertion invalidate];

  _floatingDockController2 = [(SBFluidSwitcherViewController *)self _floatingDockController];
  [_floatingDockController2 _clearGestureAssertion];
}

- (id)_activeTransientOverlayPresentedAppLayout
{
  dataSource = [(SBFluidSwitcherViewController *)self dataSource];
  v4 = dataSource;
  if ((*&self->_dataSourceRespondsTo & 0x20) != 0)
  {
    v5 = [dataSource activeTransientOverlayPresentedAppLayoutForSwitcherContentController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isLayoutStateSwitcher:(id)switcher allowTransitions:(BOOL)transitions
{
  unlockedEnvironmentMode = [switcher unlockedEnvironmentMode];
  v7 = unlockedEnvironmentMode == 2;
  if (unlockedEnvironmentMode == 2 && !transitions)
  {
    activeTransitionContext = [(SBFluidSwitcherLayoutContext *)self->_layoutContext activeTransitionContext];
    v7 = activeTransitionContext == 0;
  }

  return v7;
}

- (void)_handleDismissTapGesture:(id)gesture
{
  v17 = *MEMORY[0x277D85DE8];
  gestureCopy = gesture;
  if ([gestureCopy state] == 3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    _activeEvents = [gestureCopy _activeEvents];
    anyObject = [_activeEvents countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (anyObject)
    {
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != anyObject; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(_activeEvents);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          if (![v9 type])
          {
            allTouches = [v9 allTouches];
            anyObject = [allTouches anyObject];

            goto LABEL_12;
          }
        }

        anyObject = [_activeEvents countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (anyObject)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v11 = -[SBTapOutsideToDismissSwitcherModifierEvent initWithPointerTouch:]([SBTapOutsideToDismissSwitcherModifierEvent alloc], "initWithPointerTouch:", [anyObject _isPointerTouch]);
    [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v11];
  }
}

- (void)_setupMorphAnimatorIfNeededForEntity:(id)entity pipCoordinator:(id)coordinator appLayout:(id)layout appLayoutBoundingBox:(CGRect)box uniqueID:(id)d direction:(int64_t)direction gestureInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  entityCopy = entity;
  coordinatorCopy = coordinator;
  layoutCopy = layout;
  dCopy = d;
  allItems = [layoutCopy allItems];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __152__SBFluidSwitcherViewController__setupMorphAnimatorIfNeededForEntity_pipCoordinator_appLayout_appLayoutBoundingBox_uniqueID_direction_gestureInitiated___block_invoke;
  v55[3] = &unk_2783A8C90;
  v23 = entityCopy;
  v56 = v23;
  v24 = [allItems bs_firstObjectPassingTest:v55];

  v25 = [layoutCopy leafAppLayoutForItem:v24];
  visibleItemContainers = [(SBFluidSwitcherViewController *)self visibleItemContainers];
  v27 = [visibleItemContainers objectForKey:v25];

  if (v27)
  {
    v50 = initiatedCopy;
    v53 = dCopy;
    application = [v23 application];
    processState = [application processState];
    v30 = [processState pid];

    pipViewMorphAnimator = [(SBFluidSwitcherViewController *)self pipViewMorphAnimator];

    v51 = coordinatorCopy;
    if (pipViewMorphAnimator || !v30)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SBFluidSwitcherViewController.m" lineNumber:10759 description:{@"Morph animator already running for switcher view controller, can't assign new one."}];
    }

    else
    {
      v32 = [v23 objectForActivationSetting:58];
      integerValue = [v32 integerValue];

      currentHandler = [coordinatorCopy controllerForType:integerValue];
      v35 = objc_opt_class();
      v36 = v23;
      if (v35)
      {
        if (objc_opt_isKindOfClass())
        {
          v37 = v36;
        }

        else
        {
          v37 = 0;
        }
      }

      else
      {
        v37 = 0;
      }

      v38 = v37;

      v49 = v38;
      sceneHandle = [v38 sceneHandle];
      persistenceIdentifier = [sceneHandle persistenceIdentifier];

      v41 = [currentHandler pictureInPictureMorphAnimatorControllerForProcessIdentifier:v30 scenePersistenceIdentifier:persistenceIdentifier];
      v42 = v41;
      v48 = persistenceIdentifier;
      if (direction)
      {
        if (!v41)
        {
          [SBFluidSwitcherViewController _setupMorphAnimatorIfNeededForEntity:a2 pipCoordinator:self appLayout:v30 appLayoutBoundingBox:? uniqueID:? direction:? gestureInitiated:?];
        }

        [v42 setAppLayout:layoutCopy];
        [v42 setLayoutRole:{objc_msgSend(layoutCopy, "layoutRoleForItem:", v24)}];
        [v42 setAppLayoutBoundingBox:{x, y, width, height}];
      }

      else
      {
        if (v41)
        {
          [SBFluidSwitcherViewController _setupMorphAnimatorIfNeededForEntity:a2 pipCoordinator:self appLayout:v30 appLayoutBoundingBox:? uniqueID:? direction:? gestureInitiated:?];
        }

        [(SBFluidSwitcherViewController *)self _updateFloatingDockBehaviorAssertion];
        v43 = [currentHandler createAndRegisterPictureInPictureMorphAnimatorControllerWithTargetProcessIdentifier:v30 uuid:v53 scenePersistenceIdentifier:persistenceIdentifier appLayout:layoutCopy layoutRole:objc_msgSend(layoutCopy appLayoutBoundingBox:"layoutRoleForItem:" gestureInitiated:v24) direction:{v50, x, y, width, height, 0}];

        v42 = v43;
      }

      viewMorphAnimator = [v42 viewMorphAnimator];
      [(SBFluidSwitcherViewController *)self setPipViewMorphAnimator:viewMorphAnimator];
      if (direction)
      {
        [viewMorphAnimator setFromOrientation:{-[SBFluidSwitcherViewController homeScreenInterfaceOrientation](self, "homeScreenInterfaceOrientation")}];
        switcherInterfaceOrientation = [(SBFluidSwitcherViewController *)self switcherInterfaceOrientation];
      }

      else
      {
        [viewMorphAnimator setFromOrientation:{-[SBFluidSwitcherViewController switcherInterfaceOrientation](self, "switcherInterfaceOrientation")}];
        switcherInterfaceOrientation = [(SBFluidSwitcherViewController *)self homeScreenInterfaceOrientation];
      }

      [viewMorphAnimator setToOrientation:switcherInterfaceOrientation];
      [viewMorphAnimator setAutomaticallyStartSourceAnimations:0];
      v46 = [(NSMutableDictionary *)self->_visibleOverlayAccessoryViews objectForKey:layoutCopy];
      [viewMorphAnimator setSourceView:v46];
      if (direction)
      {
        targetView = [viewMorphAnimator targetView];

        if (targetView)
        {
          [viewMorphAnimator startTargetAnimations:1];
        }
      }

      [viewMorphAnimator noteSourceAnimationsWillStart:15];
    }

    coordinatorCopy = v51;
    dCopy = v53;
  }
}

uint64_t __152__SBFluidSwitcherViewController__setupMorphAnimatorIfNeededForEntity_pipCoordinator_appLayout_appLayoutBoundingBox_uniqueID_direction_gestureInitiated___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) sceneHandle];
  v5 = [v4 sceneIdentifier];
  v6 = [v3 isEqualToString:v5];

  return v6;
}

- (void)_setupPIPMorphingIfNeededForTransitionContext:(id)context response:(id)response
{
  v48 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  responseCopy = response;
  request = [contextCopy request];
  uniqueID = [request uniqueID];
  dataSource = [(SBFluidSwitcherViewController *)self dataSource];
  source = [request source];
  dataSourceRespondsTo = self->_dataSourceRespondsTo;
  if ((*&dataSourceRespondsTo & 0x8000) != 0)
  {
    v13 = [dataSource switcherContentController:self shouldMorphToPIPForTransitionContext:contextCopy];
    v14 = v13;
    if (*(&self->_dataSourceRespondsTo + 2))
    {
      v15 = [dataSource switcherContentController:self shouldMorphFromPIPForTransitionContext:contextCopy];
      if ((v14 & 1) == 0)
      {
        if (!v15)
        {
          goto LABEL_31;
        }

        goto LABEL_17;
      }
    }

    else if (!v13)
    {
      goto LABEL_31;
    }

    v16 = source;
    v39 = responseCopy;
    transientOverlayContext = [request transientOverlayContext];
    appLayout3 = transientOverlayContext;
    if (transientOverlayContext && [transientOverlayContext transitionType] == 1)
    {
      transientOverlay = [appLayout3 transientOverlay];
      applicationSceneEntities = [(SBFluidSwitcherViewController *)self _appLayoutForWorkspaceTransientOverlay:transientOverlay];
    }

    else
    {
      previousLayoutState = [contextCopy previousLayoutState];
      appLayout = [previousLayoutState appLayout];

      layoutState = [contextCopy layoutState];
      appLayout2 = [layoutState appLayout];

      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __88__SBFluidSwitcherViewController__setupPIPMorphingIfNeededForTransitionContext_response___block_invoke;
      v45[3] = &unk_2783A8C90;
      v46 = appLayout2;
      v25 = appLayout2;
      applicationSceneEntities = [appLayout appLayoutWithItemsPassingTest:v45];
    }

    v44 = 0;
    v26 = [SBAutoPIPWorkspaceTransaction shouldAutoPIPEnteringBackgroundForRequest:request foundEntity:&v44 transitionStyle:0];
    v27 = v44;
    workspace2 = v27;
    if (v26 && v27)
    {
      v37 = v16 == 11;
      workspace = [request workspace];
      pipCoordinator = [workspace pipCoordinator];
      [v39 appLayoutBoundingBox];
      [(SBFluidSwitcherViewController *)self _setupMorphAnimatorIfNeededForEntity:workspace2 pipCoordinator:pipCoordinator appLayout:applicationSceneEntities appLayoutBoundingBox:uniqueID uniqueID:0 direction:v37 gestureInitiated:?];

LABEL_27:
    }

    goto LABEL_29;
  }

  if (*&dataSourceRespondsTo & 0x10000) != 0 && ([dataSource switcherContentController:self shouldMorphFromPIPForTransitionContext:contextCopy])
  {
LABEL_17:
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    applicationSceneEntities = [contextCopy applicationSceneEntities];
    v31 = [applicationSceneEntities countByEnumeratingWithState:&v40 objects:v47 count:16];
    if (!v31)
    {
LABEL_30:

      goto LABEL_31;
    }

    v32 = v31;
    v39 = responseCopy;
    v33 = *v41;
    while (2)
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v41 != v33)
        {
          objc_enumerationMutation(applicationSceneEntities);
        }

        v35 = *(*(&v40 + 1) + 8 * i);
        if ([v35 BOOLForActivationSetting:57])
        {
          layoutState2 = [contextCopy layoutState];
          appLayout3 = [layoutState2 appLayout];

          workspace2 = [request workspace];
          workspace = [workspace2 pipCoordinator];
          [v39 appLayoutBoundingBox];
          [(SBFluidSwitcherViewController *)self _setupMorphAnimatorIfNeededForEntity:v35 pipCoordinator:workspace appLayout:appLayout3 appLayoutBoundingBox:uniqueID uniqueID:1 direction:v38 == 11 gestureInitiated:?];
          goto LABEL_27;
        }
      }

      v32 = [applicationSceneEntities countByEnumeratingWithState:&v40 objects:v47 count:16];
      if (v32)
      {
        continue;
      }

      break;
    }

LABEL_29:
    responseCopy = v39;
    goto LABEL_30;
  }

LABEL_31:
}

- (id)_transitionEventForTransitionWithContext:(id)context identifier:(id)identifier phase:(unint64_t)phase animated:(BOOL)animated
{
  animatedCopy = animated;
  identifierCopy = identifier;
  contextCopy = context;
  dataSource = [(SBFluidSwitcherViewController *)self dataSource];
  v13 = [dataSource switcherContentController:self transitionEventForContext:contextCopy identifier:identifierCopy phase:phase animated:animatedCopy];

  return v13;
}

- (void)_dispatchEventAndHandleAction:(id)action
{
  v18 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  kdebug_trace();
  if (!actionCopy)
  {
    [SBFluidSwitcherViewController _dispatchEventAndHandleAction:];
  }

  v5 = [(SBFluidSwitcherViewController *)self _shouldLogSwitcherModifierEvent:actionCopy];
  v6 = v5;
  if (v5)
  {
    v7 = SBLogAppSwitcher();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      debugName = self->_debugName;
      *buf = 138543618;
      v15 = debugName;
      v16 = 2114;
      v17 = actionCopy;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] dispatch event:\n%{public}@", buf, 0x16u);
    }
  }

  personality = self->_personality;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__SBFluidSwitcherViewController__dispatchEventAndHandleAction___block_invoke;
  v11[3] = &unk_2783AF000;
  v11[4] = self;
  v12 = actionCopy;
  v13 = v6;
  v10 = actionCopy;
  [(SBSwitcherPersonality *)personality handleEvent:v10 responseHandler:v11];
  kdebug_trace();
}

- (void)_handleModifierResponse:(id)response fromEvent:(id)event log:(BOOL)log
{
  logCopy = log;
  v29 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  eventCopy = event;
  if (responseCopy && logCopy)
  {
    v10 = SBLogAppSwitcher();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      debugName = self->_debugName;
      *buf = 138543618;
      *&buf[4] = debugName;
      *&buf[12] = 2114;
      *&buf[14] = responseCopy;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] handle response:\n%{public}@", buf, 0x16u);
    }
  }

  v12 = objc_opt_class();
  v13 = eventCopy;
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

  zoomFromHardwareButtonPreludeTokenWrapper = [v15 zoomFromHardwareButtonPreludeTokenWrapper];

  LODWORD(v15) = [zoomFromHardwareButtonPreludeTokenWrapper isTokenAvailable];
  if (v15)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v28 = 0;
    v26 = 0;
    if (!responseCopy)
    {
      goto LABEL_16;
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __71__SBFluidSwitcherViewController__handleModifierResponse_fromEvent_log___block_invoke;
    v25[3] = &unk_2783AF028;
    v25[4] = buf;
    v17 = MEMORY[0x223D6F7F0](v25);
    (v17)[2](v17, responseCopy, &v26);
    if ((v26 & 1) == 0)
    {
      [responseCopy enumerateResponseTreeUsingBlock:v17];
    }

    if ((*(*&buf[8] + 24) & 1) == 0)
    {
LABEL_16:
      v18 = SBLogCameraCaptureLaunchAnimation();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [SBFluidSwitcherViewController _handleModifierResponse:v18 fromEvent:? log:?];
      }

      v19 = objc_opt_class();
      v20 = v13;
      if (v19)
      {
        if (objc_opt_isKindOfClass())
        {
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;

      zoomFromHardwareButtonPreludeTokenWrapper2 = [v22 zoomFromHardwareButtonPreludeTokenWrapper];
      consumeToken = [zoomFromHardwareButtonPreludeTokenWrapper2 consumeToken];

      [consumeToken cancel];
    }

    _Block_object_dispose(buf, 8);
  }

  [(SBFluidSwitcherViewController *)self _updateAnimatableProperties];
  if ([responseCopy isSwitcherModifierEventResponse])
  {
    [(SBFluidSwitcherViewController *)self _handleEventResponse:responseCopy];
  }

  [(SBFluidSwitcherViewController *)self _updateImplicitpersonalityInvalidatables];
}

void __71__SBFluidSwitcherViewController__handleModifierResponse_fromEvent_log___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = objc_opt_class();
  v10 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v10;
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

  v8 = v7;

  v9 = [v8 type];
  if (v9 == 43)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void __73__SBFluidSwitcherViewController__updateImplicitpersonalityInvalidatables__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[1889] == 1)
  {
    WeakRetained[1889] = 0;
    v2 = WeakRetained;
    [WeakRetained __updateImplicitpersonalityInvalidatables];
    WeakRetained = v2;
  }
}

- (void)__updateImplicitpersonalityInvalidatables
{
  v19 = *MEMORY[0x277D85DE8];
  [(SBFluidSwitcherViewController *)self _updateAppStatusBarAndHomeGrabberVisibilityAnimated:1];
  [(SBFluidSwitcherViewController *)self _updateSpringBoardStatusBarVisibility];
  [(SBFluidSwitcherViewController *)self _updateAsynchronousSurfaceRetentionAssertion];
  [(SBFluidSwitcherViewController *)self _updateAsyncRenderingAndResizesHostedContext];
  [(SBFluidSwitcherViewController *)self _updateResignActiveAssertions];
  [(SBFluidSwitcherViewController *)self _updateKeyboardSuppressionAssertion];
  [(SBFluidSwitcherViewController *)self _updateFloatingDockBehaviorAssertion];
  [(SBFluidSwitcherViewController *)self _updateFloatingDockWindowLevelAssertion];
  [(SBFluidSwitcherViewController *)self _ensureSubviewOrdering];
  [(SBFluidSwitcherViewController *)self _updatePlusButtonPresence];
  [(SBFluidSwitcherViewController *)self _updateReopenClosedWindowsButtonPresence];
  [(SBFluidSwitcherViewController *)self _updateSwitcherDimmingViewPresence];
  [(SBFluidSwitcherViewController *)self _updateSwitcherBackdropViewPresence];
  [(SBFluidSwitcherViewController *)self _updateSlideOverTonguePresence];
  [(SBFluidSwitcherViewController *)self _updateBezelEffectsPortal];
  [(SBFluidSwitcherViewController *)self _updateDockPortal];
  [(SBFluidSwitcherViewController *)self _updateSnapshotCache];
  [(SBFluidSwitcherViewController *)self _updateHomeScreenPointerInteractions];
  [(SBFluidSwitcherViewController *)self _updateHiddenAppLayoutsInShelves];
  [(SBFluidSwitcherViewController *)self _updateBounceIcon];
  [(SBFluidSwitcherViewController *)self _configureApplicationAndTransientOverlayDockBehaviorAssertionsForContext:0];
  [(SBFluidSwitcherViewController *)self _updateForegroundAppLayoutsList];
  [(SBFluidSwitcherViewController *)self _updateContinuousExposeStripsCaptureOnlyBackdropLayer];
  [(SBFluidSwitcherViewController *)self _updateWantsEnhancedWindowingEnabledState];
  [(SBFluidSwitcherViewController *)self _updateContinuousExposeStripTonguePresence];
  [(SBFluidSwitcherViewController *)self _updateCornerRadiiiAndMaximizedState];
  [(SBFluidSwitcherViewController *)self _updateHitTestBlockingView];
  [(SBFluidSwitcherViewController *)self _updateOverlaysTopAffordanceContextMenu];
  [(SBFluidSwitcherViewController *)self _ensureForegroundScenesAreVisible];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = [(NSMutableDictionary *)self->_liveContentOverlays allKeys];
  v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [(NSMutableDictionary *)self->_liveContentOverlays objectForKey:v7];
        v9 = [(NSDictionary *)self->_leafAppLayoutsToAdjustedAppLayouts objectForKey:v7];
        allItems = [v7 allItems];
        firstObject = [allItems firstObject];
        v12 = [v9 layoutRoleForItem:firstObject];

        [v8 setMatchMovedToScene:{-[SBSwitcherPersonality isLayoutRoleMatchMovedToScene:inAppLayout:](self->_personality, "isLayoutRoleMatchMovedToScene:inAppLayout:", v12, v9)}];
      }

      v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

- (void)_handleEventResponse:(id)response
{
  v17 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  if (!responseCopy)
  {
    [SBFluidSwitcherViewController _handleEventResponse:];
  }

  if ([responseCopy isValid])
  {
    [responseCopy delay];
    if (BSFloatIsZero())
    {
      [(SBFluidSwitcherViewController *)self _performEventResponse:responseCopy];
    }

    else
    {
      [responseCopy delay];
      v9 = dispatch_time(0, (v8 * 1000000000.0));
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __54__SBFluidSwitcherViewController__handleEventResponse___block_invoke;
      v10[3] = &unk_2783A92D8;
      v11 = responseCopy;
      selfCopy = self;
      dispatch_after(v9, MEMORY[0x277D85CD0], v10);
    }
  }

  else
  {
    v5 = SBLogAppSwitcher();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      debugName = self->_debugName;
      v7 = [responseCopy description];
      *buf = 138412546;
      v14 = debugName;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "[Fluid Switcher - %@] Skipping the following action because it's no longer valid: %@", buf, 0x16u);
    }
  }
}

void __54__SBFluidSwitcherViewController__handleEventResponse___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isValid])
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);

    [v2 _performEventResponse:v3];
  }

  else
  {
    v4 = SBLogAppSwitcher();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(*(a1 + 40) + 1344);
      v6 = [*(a1 + 32) description];
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "[Fluid Switcher - %@] Skipping the following action because it's no longer valid: %@", &v7, 0x16u);
    }
  }
}

- (void)_performEventResponse:(id)response
{
  responseCopy = response;
  if (!responseCopy)
  {
    [SBFluidSwitcherViewController _performEventResponse:];
  }

  switch([responseCopy type])
  {
    case 1:
      [(SBFluidSwitcherViewController *)self _performModifierPerformTransitionResponse:responseCopy];
      break;
    case 2:
      [(SBFluidSwitcherViewController *)self _performModifierCompletionResponse:responseCopy];
      break;
    case 3:
      [(SBFluidSwitcherViewController *)self _performModifierHapticResponse:responseCopy];
      break;
    case 4:
      [(SBFluidSwitcherViewController *)self _performModifierReachabilityResponse:responseCopy];
      break;
    case 5:
      _floatingDockController = [(SBFluidSwitcherViewController *)self _floatingDockController];
      [_floatingDockController presentFloatingDockIfDismissedAnimated:1 completionHandler:0];
      goto LABEL_42;
    case 6:
      _floatingDockController = +[SBUIController sharedInstance];
      _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
      [_floatingDockController handleHomeButtonSinglePressUpForWindowScene:_sbWindowScene];

      goto LABEL_42;
    case 7:
      [(SBFluidSwitcherViewController *)self _performModifierInjectVelocityResponse:responseCopy];
      break;
    case 8:
      [(SBFluidSwitcherViewController *)self _performModifierEmitStudyLogResponse:responseCopy];
      break;
    case 9:
      [(SBFluidSwitcherViewController *)self _performModifierEmitSBEventResponse:responseCopy];
      break;
    case 10:
      [(SBFluidSwitcherViewController *)self _performModifierUpdateLayoutResponse:responseCopy];
      break;
    case 11:
      [(SBFluidSwitcherViewController *)self _performModifierScrollToAppLayoutResponse:responseCopy];
      break;
    case 12:
      [(SBFluidSwitcherViewController *)self _performModifierIconOverlayVisibilityUpdateResponse:responseCopy];
      break;
    case 13:
      [(SBFluidSwitcherViewController *)self _performModifierIconViewVisibilityUpdateResponse:responseCopy];
      break;
    case 14:
      [(SBFluidSwitcherViewController *)self _performModifierNotifyIconWillZoomDownResponse:responseCopy];
      break;
    case 15:
      [(SBFluidSwitcherViewController *)self _performModifierMatchMoveToIconViewResponse:responseCopy];
      break;
    case 17:
      [(SBFluidSwitcherViewController *)self _performModifierTimerEventResponse:responseCopy];
      break;
    case 18:
      [(SBFluidSwitcherViewController *)self _performModifierInvalidateAdjustedAppLayoutsResponse:responseCopy];
      break;
    case 19:
      [(SBFluidSwitcherViewController *)self _performModifierDosidoScaleAnimationResponse:responseCopy];
      break;
    case 20:
      [(SBFluidSwitcherViewController *)self _performBlurItemContainerResponse:responseCopy];
      break;
    case 21:
      [(SBFluidSwitcherViewController *)self _performNewWindowSwitcherResponse:responseCopy];
      break;
    case 22:
      [(SBFluidSwitcherViewController *)self _performModifierInvalidateReopenButtonTextResponse:responseCopy];
      break;
    case 23:
      [(SBFluidSwitcherViewController *)self _performModifierDismissSiriResponse:responseCopy];
      break;
    case 24:
      -[SBFluidSwitcherViewController _cancelInProcessAnimationsWithOptions:](self, "_cancelInProcessAnimationsWithOptions:", [responseCopy options]);
      break;
    case 25:
      _floatingDockController = [(SBFluidSwitcherLayoutContext *)self->_layoutContext activeTransitionContext];
      [(SBFluidSwitcherViewController *)self _setupPIPMorphingIfNeededForTransitionContext:_floatingDockController response:responseCopy];
LABEL_42:

      break;
    case 26:
      [(SBFluidSwitcherViewController *)self _performFolderSnapshotRequestResponse:responseCopy];
      break;
    case 29:
      [(SBFluidSwitcherViewController *)self _performInvalidateSnapshotCacheResponse:responseCopy];
      break;
    case 30:
      [(SBFluidSwitcherViewController *)self _performInvalidateItemContainerBackdropResponse:responseCopy];
      break;
    case 32:
      [(SBFluidSwitcherViewController *)self _performUpdateDragPlatterBlurResponse:responseCopy];
      break;
    case 33:
      [(SBFluidSwitcherViewController *)self _performUpdateContinuousExposeStripsPresentationResponse:responseCopy];
      break;
    case 34:
      [(SBFluidSwitcherViewController *)self _performInvalidateContinuousExposeIdentifiersResponse:responseCopy];
      break;
    case 35:
      [(SBFluidSwitcherViewController *)self _performRequestSystemApertureElementSuppressionResponse:responseCopy];
      break;
    case 36:
      [(SBFluidSwitcherViewController *)self _performRelinquishSystemApertureElementSuppressionResponse:responseCopy];
      break;
    case 37:
      [(SBFluidSwitcherViewController *)self _performSystemApertureBounceResponse:responseCopy];
      break;
    case 38:
      [(SBFluidSwitcherViewController *)self _performSystemApertureStretchResponse:responseCopy];
      break;
    case 39:
      [(SBFluidSwitcherViewController *)self _performSetInterfaceOrientationFromUserResizingResponse:responseCopy];
      break;
    case 40:
      [(SBFluidSwitcherViewController *)self _performPresentContinuousExposeStripEdgeProtectGrabberResponse:responseCopy];
      break;
    case 41:
      [(SBFluidSwitcherViewController *)self _performInvalidateRootContentViewClippingAndBlurResponse:responseCopy];
      break;
    case 42:
      [(SBFluidSwitcherViewController *)self _performActionForPreludeAnimationTokenActionResponse:responseCopy];
      break;
    case 44:
      [(SBFluidSwitcherViewController *)self _performModifierMatchMoveToDropletResponse:responseCopy];
      break;
    case 45:
      [(SBFluidSwitcherViewController *)self _performCancelSystemGesturesResponse:responseCopy];
      break;
    case 46:
      [(SBFluidSwitcherViewController *)self _performCancelWindowMorphingResponse:responseCopy];
      break;
    case 47:
      [(SBFluidSwitcherViewController *)self _performDestroyDisplayItemResponse:responseCopy];
      break;
    case 48:
      [(SBFluidSwitcherViewController *)self _performDismissMenuBarResponse:responseCopy];
      break;
    case 49:
      [(SBFluidSwitcherViewController *)self _performPeekMenuBarResponse:responseCopy];
      break;
    case 50:
      [(SBFluidSwitcherViewController *)self _performUpdateMenuBarVisibilityResponse:responseCopy];
      break;
    case 51:
      [(SBFluidSwitcherViewController *)self _performRequestMoveDisplayItemFromDisplaySwitcherEventResponse:responseCopy];
      break;
    case 52:
      [(SBFluidSwitcherViewController *)self _performBlurthroughItemContainerResponse:responseCopy];
      break;
    case 53:
      [(SBFluidSwitcherViewController *)self _performModifierRequestAppInteractionEventResponse:responseCopy];
      break;
    case 54:
      [(SBFluidSwitcherViewController *)self _performRemoveFromDesktopEventResponse:responseCopy];
      break;
    case 55:
      [(SBFluidSwitcherViewController *)self _performRequestDismissalForHomeScreenBackgroundTapsResponse:responseCopy];
      break;
    case 56:
      [(SBFluidSwitcherViewController *)self _performToggleSlideOverForDisplayItemResponse:responseCopy];
      break;
    default:
      break;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SBFluidSwitcherViewController__performEventResponse___block_invoke;
  v7[3] = &unk_2783AF050;
  v7[4] = self;
  [responseCopy enumerateChildResponsesUsingBlock:v7];
}

- (void)_performModifierPerformTransitionResponse:(id)response
{
  responseCopy = response;
  [(SBFluidSwitcherViewController *)self _updateOverlaysTopAffordanceContextMenu];
  delegate = [(SBFluidSwitcherViewController *)self delegate];
  transitionRequest = [responseCopy transitionRequest];
  isGestureInitiated = [responseCopy isGestureInitiated];

  [delegate switcherContentController:self performTransitionWithRequest:transitionRequest gestureInitiated:isGestureInitiated];
}

- (void)_performModifierCompletionResponse:(id)response
{
  layoutContext = [(SBFluidSwitcherViewController *)self layoutContext];
  activeGesture = [layoutContext activeGesture];

  if (activeGesture)
  {
    delegate = [(SBFluidSwitcherViewController *)self delegate];
    v7 = delegate;
    if ((*(&self->_delegateRespondsTo + 3) & 2) != 0)
    {
      [delegate cancelActiveGestureForSwitcherContentController:self];
    }
  }

  else
  {
    v8 = SBLogAppSwitcher();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "SBSwitcherModifierEventResponseTypeRequestCompletion response ignored. Can only be performed when there is an active gesture!", v9, 2u);
    }
  }
}

- (void)_performModifierReachabilityResponse:(id)response
{
  responseCopy = response;
  v4 = responseCopy;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  if (responseCopy)
  {
    [responseCopy reachabilityActivationContext];
  }

  v6[2] = v10;
  v6[3] = v11;
  v6[4] = v12;
  v7 = v13;
  v6[0] = v8;
  v6[1] = v9;
  if (SBReachabilityGestureShouldActivate(v6))
  {
    v5 = +[SBReachabilityManager sharedInstance];
    if (([v5 reachabilityModeActive] & 1) == 0)
    {
      [v5 toggleReachability];
    }
  }
}

- (void)_performModifierHapticResponse:(id)response
{
  v19 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  hapticType = [responseCopy hapticType];
  phase = [responseCopy phase];
  if (hapticType)
  {
    if (hapticType == 2)
    {
      v8 = self->_reduceMotionFeedbackGenerator;
      v9 = 1010;
    }

    else if (hapticType == 1)
    {
      v8 = self->_emptySwitcherFeedbackGenerator;
      v9 = 1013;
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SBFluidSwitcherViewController.m" lineNumber:11209 description:{@"Unknown haptic type %d", objc_msgSend(responseCopy, "hapticType")}];

      v9 = 0;
      v8 = 0;
    }
  }

  else
  {
    v8 = self->_flyInFeedbackGenerator;
    v9 = 1012;
  }

  if (phase == 2)
  {
    [(UINotificationFeedbackGenerator *)v8 deactivate];
    goto LABEL_20;
  }

  if (phase != 1)
  {
    if (!phase)
    {
      [(UINotificationFeedbackGenerator *)v8 activateWithCompletionBlock:0];
    }

    goto LABEL_20;
  }

  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
LABEL_14:
      [(UINotificationFeedbackGenerator *)v8 _privateNotificationOccurred:v9];
      goto LABEL_20;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom != 1)
    {
      goto LABEL_14;
    }
  }

  hidEventSenderID = [responseCopy hidEventSenderID];
  v14 = SBLogAppSwitcher();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v16 = v9;
    v17 = 2048;
    v18 = hidEventSenderID;
    _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Firing switcher haptic for type %ld, senderID %llu", buf, 0x16u);
  }

  [(UINotificationFeedbackGenerator *)v8 _privateNotificationOccurred:v9 atLocation:hidEventSenderID senderID:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
LABEL_20:
}

- (void)_performModifierInjectVelocityResponse:(id)response
{
  v29 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  appLayout = [responseCopy appLayout];
  v23 = [responseCopy key];
  velocity = [responseCopy velocity];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  leafAppLayouts = [appLayout leafAppLayouts];
  v8 = [leafAppLayouts countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(leafAppLayouts);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        visibleItemContainers = [(SBFluidSwitcherViewController *)self visibleItemContainers];
        v14 = [visibleItemContainers objectForKey:v12];

        if (v14)
        {
          v15 = [responseCopy key];
          [v14 _setVelocity:velocity forKey:v15];

          v16 = [responseCopy key];
          [v14 _setTargetVelocity:velocity forKey:v16];
        }
      }

      v9 = [leafAppLayouts countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  v17 = [(NSMutableDictionary *)self->_visibleOverlayAccessoryViews objectForKey:appLayout];
  v18 = v17;
  if (v17)
  {
    [v17 _setVelocity:velocity forKey:v23];
    v19 = [responseCopy key];
    [v18 _setTargetVelocity:velocity forKey:v19];
  }

  v20 = [(NSMutableDictionary *)self->_visibleUnderlayAccessoryViews objectForKey:appLayout];
  v21 = v20;
  if (v20)
  {
    [v20 _setVelocity:velocity forKey:v23];
    v22 = [responseCopy key];
    [v21 _setTargetVelocity:velocity forKey:v22];
  }
}

- (void)_performModifierEmitStudyLogResponse:(id)response
{
  v64[4] = *MEMORY[0x277D85DE8];
  responseCopy = response;
  name = [responseCopy name];
  payload = [responseCopy payload];

  v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:payload];
  layoutContext = [(SBFluidSwitcherViewController *)self layoutContext];
  activeGesture = [layoutContext activeGesture];

  if ([name isEqualToString:@"[SBDeckSwitcherPanGestureWorkspaceTransresponse _beginWithGesture:]"])
  {
    layoutContext2 = [(SBFluidSwitcherViewController *)self layoutContext];
    layoutState = [layoutContext2 layoutState];
    unlockedEnvironmentMode = [layoutState unlockedEnvironmentMode];

    scrollView = [(SBFluidSwitcherViewController *)self scrollView];
    [scrollView bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v58 = activeGesture;
    studyLogData = [activeGesture studyLogData];
    [v7 addEntriesFromDictionary:studyLogData];

    v23 = [MEMORY[0x277CCABB0] numberWithInteger:unlockedEnvironmentMode];
    [v7 setObject:v23 forKeyedSubscript:@"unlockedEnvironmentMode"];

    v63[0] = @"x";
    transientOverlayContext = [MEMORY[0x277CCABB0] numberWithDouble:v15];
    v64[0] = transientOverlayContext;
    v63[1] = @"y";
    v25 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
    v64[1] = v25;
    v63[2] = @"width";
    v26 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
    v64[2] = v26;
    v63[3] = @"height";
    v27 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
    v64[3] = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:4];
    [v7 setObject:v28 forKeyedSubscript:@"switcherScrollViewBounds"];
    v29 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v7];

    payload = v25;
LABEL_8:

    payload = v29;
    activeGesture = v58;
    goto LABEL_9;
  }

  if ([name isEqualToString:@"[SBDeckSwitcherPanGestureWorkspaceTransresponse _finishWithGesture:]"])
  {
    layoutContext3 = [(SBFluidSwitcherViewController *)self layoutContext];
    activeTransitionContext = [layoutContext3 activeTransitionContext];
    request = [activeTransitionContext request];
    transientOverlayContext = [request transientOverlayContext];

    layoutContext4 = [(SBFluidSwitcherViewController *)self layoutContext];
    layoutState2 = [layoutContext4 layoutState];
    unlockedEnvironmentMode2 = [layoutState2 unlockedEnvironmentMode];

    view = [(SBFluidSwitcherViewController *)self view];
    [view bounds];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v58 = activeGesture;
    studyLogData2 = [activeGesture studyLogData];
    [v7 addEntriesFromDictionary:studyLogData2];

    if (transientOverlayContext)
    {
      v45 = &unk_283370388;
    }

    else
    {
      v45 = &unk_2833703A0;
    }

    [v7 setObject:v45 forKeyedSubscript:{@"transientOverlayContext", unlockedEnvironmentMode2}];
    v46 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(transientOverlayContext, "transitionType")}];
    [v7 setObject:v46 forKeyedSubscript:@"transientOverlayContextTransitionType"];

    v47 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SBFluidSwitcherViewController switcherInterfaceOrientation](self, "switcherInterfaceOrientation")}];
    [v7 setObject:v47 forKeyedSubscript:@"orientation"];

    v61[0] = @"x";
    v48 = [MEMORY[0x277CCABB0] numberWithDouble:v37];
    v62[0] = v48;
    v61[1] = @"y";
    v49 = [MEMORY[0x277CCABB0] numberWithDouble:v39];
    v62[1] = v49;
    v61[2] = @"width";
    v50 = [MEMORY[0x277CCABB0] numberWithDouble:v41];
    v62[2] = v50;
    v61[3] = @"height";
    v51 = [MEMORY[0x277CCABB0] numberWithDouble:v43];
    v62[3] = v51;
    v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:4];
    [v7 setObject:v52 forKeyedSubscript:@"bounds"];

    v53 = [MEMORY[0x277CCABB0] numberWithInteger:v57];
    [v7 setObject:v53 forKeyedSubscript:@"unlockedEnvironmentMode"];

    v29 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v7];
    goto LABEL_8;
  }

LABEL_9:
  mEMORY[0x277D6A798] = [MEMORY[0x277D6A798] sharedInstance];
  v59 = name;
  v60 = payload;
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
  [mEMORY[0x277D6A798] log:v55];
}

- (void)_performModifierEmitSBEventResponse:(id)response
{
  responseCopy = response;
  eventType = [responseCopy eventType];
  payload = [responseCopy payload];

  mEMORY[0x277D65DD0] = [MEMORY[0x277D65DD0] sharedInstance];
  [mEMORY[0x277D65DD0] emitEvent:eventType withPayload:payload];
}

- (void)_performModifierUpdateLayoutResponse:(id)response
{
  activeTransitionSubcompletionGenerator = self->_activeTransitionSubcompletionGenerator;
  responseCopy = response;
  v6 = MEMORY[0x223D6F7F0](activeTransitionSubcompletionGenerator);
  options = [responseCopy options];
  updateMode = [responseCopy updateMode];
  appLayouts = [responseCopy appLayouts];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__SBFluidSwitcherViewController__performModifierUpdateLayoutResponse___block_invoke;
  v16[3] = &unk_2783AB780;
  v19 = options;
  v16[4] = self;
  v10 = appLayouts;
  v17 = v10;
  v11 = v6;
  v18 = v11;
  v12 = MEMORY[0x223D6F7F0](v16);
  v13 = v12;
  if (updateMode)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __70__SBFluidSwitcherViewController__performModifierUpdateLayoutResponse___block_invoke_2;
    v14[3] = &unk_2783A9348;
    v15 = v12;
    [(SBFluidSwitcherViewController *)self _performWithFixedUpdateMode:updateMode usingBlock:v14];
  }

  else
  {
    v12[2](v12);
  }
}

void __70__SBFluidSwitcherViewController__performModifierUpdateLayoutResponse___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 56) & 2) != 0)
  {
    [*(a1 + 32) _updateVisibleItems];
  }

  v2 = [*(a1 + 40) count];
  v3 = *(a1 + 56);
  if (v2)
  {
    if ((v3 & 4) != 0)
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v4 = *(a1 + 40);
      v5 = [v4 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v40;
        do
        {
          v8 = 0;
          do
          {
            if (*v40 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v39 + 1) + 8 * v8);
            v10 = *(a1 + 32);
            v11 = SBLayoutRoleSetAll();
            v12 = *(a1 + 48);
            if (v12)
            {
              v13 = (*(v12 + 16))(v12, @"update layout action");
              [v10 _layoutAppLayout:v9 roles:v11 completion:v13];
            }

            else
            {
              [v10 _layoutAppLayout:v9 roles:v11 completion:0];
            }

            ++v8;
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v6);
      }

      v3 = *(a1 + 56);
    }

    if ((v3 & 8) != 0)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v14 = *(a1 + 40);
      v15 = [v14 countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v36;
        do
        {
          v18 = 0;
          do
          {
            if (*v36 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v35 + 1) + 8 * v18);
            v20 = *(a1 + 32);
            v21 = SBLayoutRoleSetAll();
            v22 = *(a1 + 48);
            if (v22)
            {
              v23 = (*(v22 + 16))(v22, @"update layout action");
              [v20 _applyStyleToAppLayout:v19 roles:v21 completion:v23];
            }

            else
            {
              [v20 _applyStyleToAppLayout:v19 roles:v21 completion:{0, v35}];
            }

            ++v18;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v35 objects:v43 count:16];
        }

        while (v16);
      }
    }
  }

  else
  {
    if ((v3 & 4) != 0)
    {
      v24 = *(a1 + 32);
      v25 = *(a1 + 48);
      if (v25)
      {
        v26 = (*(v25 + 16))(v25, @"update layout action");
        [v24 _updateLayoutWithCompletion:v26];
      }

      else
      {
        [*(a1 + 32) _updateLayoutWithCompletion:0];
      }
    }

    if ((*(a1 + 56) & 8) != 0)
    {
      v27 = *(a1 + 32);
      v28 = *(a1 + 48);
      if (v28)
      {
        v29 = (*(v28 + 16))(v28, @"update style action");
        [v27 _updateStyleWithCompletion:v29];
      }

      else
      {
        [*(a1 + 32) _updateStyleWithCompletion:0];
      }
    }
  }

  v30 = *(a1 + 56);
  if ((v30 & 0x10) != 0)
  {
    [*(a1 + 32) _updateVisibleAccessoryViews];
    v30 = *(a1 + 56);
    if ((v30 & 0x40) == 0)
    {
LABEL_38:
      if ((v30 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_42;
    }
  }

  else if ((v30 & 0x40) == 0)
  {
    goto LABEL_38;
  }

  v31 = [*(a1 + 32) view];
  [v31 setNeedsLayout];

  if ((*(a1 + 56) & 0x20) == 0)
  {
    return;
  }

LABEL_42:
  v32 = *(a1 + 32);
  v33 = *(a1 + 48);
  if (v33)
  {
    v34 = (*(v33 + 16))(v33, @"update slide over tongue");
    [v32 _layoutSlideoverTonguesWithCompletion:v34];
  }

  else
  {
    [*(a1 + 32) _layoutSlideoverTonguesWithCompletion:0];
  }
}

- (void)_performModifierScrollToAppLayoutResponse:(id)response
{
  responseCopy = response;
  appLayout = [responseCopy appLayout];
  if (appLayout)
  {
    -[SBFluidSwitcherViewController _scrollToAppLayout:animated:alignment:completion:](self, "_scrollToAppLayout:animated:alignment:completion:", appLayout, [responseCopy animated], objc_msgSend(responseCopy, "alignment"), 0);
  }
}

- (void)_performModifierIconOverlayVisibilityUpdateResponse:(id)response
{
  v39 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  appLayout = [responseCopy appLayout];
  if ([responseCopy isVisible])
  {
    _iconZoomContextProvider = [(SBFluidSwitcherViewController *)self _iconZoomContextProvider];
    anyLeafAppLayout = [appLayout anyLeafAppLayout];
    v8 = [_iconZoomContextProvider iconZoomingViewForAppLayout:anyLeafAppLayout];

    if (!v8)
    {
      _iconManager = [(SBFluidSwitcherViewController *)self _iconManager];
      iconModel = [_iconManager iconModel];
      anyLeafAppLayout2 = [appLayout anyLeafAppLayout];
      allItems = [anyLeafAppLayout2 allItems];
      firstObject = [allItems firstObject];
      bundleIdentifier = [firstObject bundleIdentifier];
      v15 = [iconModel applicationIconForBundleIdentifier:bundleIdentifier];

      v8 = [objc_alloc(MEMORY[0x277D663F0]) initWithConfigurationOptions:6];
      [v8 setLocation:*MEMORY[0x277D666D0]];
      listLayoutProvider = [_iconManager listLayoutProvider];
      [v8 setListLayoutProvider:listLayoutProvider];

      [v8 setDelegate:_iconManager];
      [v8 setIcon:v15];
      [v8 setEnabled:0];
      v17 = +[SBAppLayout appLibraryAppLayout];
      [(SBFluidSwitcherViewController *)self iconImageFrameForAppLayout:v17];
      [v8 sb_setBoundsAndPositionFromFrame:?];
    }

    _iconZoomContextProvider2 = [(SBFluidSwitcherViewController *)self _iconZoomContextProvider];
    v30 = [_iconZoomContextProvider2 matchingIconZoomingViewForIconZoomingView:v8];

    v19 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v31 = appLayout;
    leafAppLayouts = [appLayout leafAppLayouts];
    v21 = [leafAppLayouts countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v35;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v35 != v23)
          {
            objc_enumerationMutation(leafAppLayouts);
          }

          v25 = [(NSMutableDictionary *)self->_visibleItemContainers objectForKey:*(*(&v34 + 1) + 8 * i)];
          _pageView = [v25 _pageView];
          [v19 addObject:_pageView];
        }

        v22 = [leafAppLayouts countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v22);
    }

    appLayout = v31;
    v27 = [(NSMutableDictionary *)self->_visibleOverlayAccessoryViews objectForKey:v31];
    if (!v27)
    {
      [SBFluidSwitcherViewController _performModifierIconOverlayVisibilityUpdateResponse:];
    }

    [v27 configureOverlayForAppLayout:v31 iconZoomWithView:v30 crossfadeViews:v19];
  }

  else
  {
    allValues = [(NSMutableDictionary *)self->_visibleOverlayAccessoryViews allValues];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __85__SBFluidSwitcherViewController__performModifierIconOverlayVisibilityUpdateResponse___block_invoke;
    v32[3] = &unk_2783AEAE8;
    v33 = appLayout;
    v29 = [allValues bs_firstObjectPassingTest:v32];

    [v29 removeIconOverlay];
    v8 = v33;
  }
}

uint64_t __85__SBFluidSwitcherViewController__performModifierIconOverlayVisibilityUpdateResponse___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 appLayoutForIconOverlay];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (void)_performModifierIconViewVisibilityUpdateResponse:(id)response
{
  responseCopy = response;
  appLayout = [responseCopy appLayout];
  animationSettings = [responseCopy animationSettings];
  if (animationSettings)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = [(NSMutableDictionary *)self->_hiddenIconViews objectForKey:appLayout];
  if ([responseCopy isVisible])
  {
    v9 = [(NSMutableDictionary *)self->_hiddenIconViewContainers objectForKey:appLayout];
    v27 = appLayout;
    v10 = MEMORY[0x277D75D18];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __82__SBFluidSwitcherViewController__performModifierIconViewVisibilityUpdateResponse___block_invoke;
    v38[3] = &unk_2783A8ED8;
    v11 = v8;
    v12 = v8;
    v39 = v12;
    selfCopy = self;
    v41 = v9;
    v13 = v9;
    [v10 sb_animateWithSettings:animationSettings mode:v7 animations:v38 completion:0];
    v14 = MEMORY[0x277D75D18];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __82__SBFluidSwitcherViewController__performModifierIconViewVisibilityUpdateResponse___block_invoke_2;
    v35[3] = &unk_2783A92D8;
    v15 = v12;
    v8 = v11;
    v36 = v15;
    v37 = responseCopy;
    appLayout = v27;
    [v14 sb_animateWithSettings:animationSettings mode:v7 animations:v35 completion:0];
    [(NSMutableDictionary *)self->_hiddenIconViews removeObjectForKey:v27];
    [(NSMutableDictionary *)self->_hiddenIconViewContainers removeObjectForKey:v27];
  }

  else if (!v8)
  {
    _iconZoomContextProvider = [(SBFluidSwitcherViewController *)self _iconZoomContextProvider];
    v17 = [_iconZoomContextProvider iconZoomingViewForAppLayout:appLayout];

    _iconZoomContextProvider2 = [(SBFluidSwitcherViewController *)self _iconZoomContextProvider];
    excludedIconLocations = [responseCopy excludedIconLocations];
    v20 = [_iconZoomContextProvider2 isIconForIconZoomingView:v17 displayedInLocations:excludedIconLocations];

    if (!v20)
    {
      v8 = 0;
      if (!v17)
      {
        goto LABEL_13;
      }

      [(NSMutableDictionary *)self->_hiddenIconViews setObject:v17 forKey:appLayout];
      _iconZoomContextProvider3 = [(SBFluidSwitcherViewController *)self _iconZoomContextProvider];
      v22 = [_iconZoomContextProvider3 iconZoomingViewContainerForIconZoomingView:v17];

      if (v22)
      {
        [(NSMutableDictionary *)self->_hiddenIconViewContainers setObject:v22 forKey:appLayout];
      }

      v23 = MEMORY[0x277D75D18];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __82__SBFluidSwitcherViewController__performModifierIconViewVisibilityUpdateResponse___block_invoke_3;
      v32[3] = &unk_2783A92D8;
      v24 = v17;
      v33 = v24;
      v34 = responseCopy;
      [v23 sb_animateWithSettings:animationSettings mode:v7 animations:v32 completion:0];
      v25 = MEMORY[0x277D75D18];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __82__SBFluidSwitcherViewController__performModifierIconViewVisibilityUpdateResponse___block_invoke_4;
      v28[3] = &unk_2783A8ED8;
      v29 = v24;
      v30 = v22;
      selfCopy2 = self;
      v26 = v22;
      v17 = v24;
      [v25 sb_animateWithSettings:animationSettings mode:v7 animations:v28 completion:0];
    }

    v8 = 0;
  }

LABEL_13:
}

void __82__SBFluidSwitcherViewController__performModifierIconViewVisibilityUpdateResponse___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIconContentHidden:0];
  v2 = [*(a1 + 40) _iconZoomContextProvider];
  [v2 stopTrackingHiddenIconZoomViewIfNeeded:*(a1 + 32)];

  v3 = [*(a1 + 40) _iconZoomContextProvider];
  [v3 stopTrackingHiddenIconZoomViewIfNeeded:*(a1 + 48)];
}

uint64_t __82__SBFluidSwitcherViewController__performModifierIconViewVisibilityUpdateResponse___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) scale];
  [v2 setContentScaleFactor:?];
  v3 = *(a1 + 32);
  [*(a1 + 40) scale];
  v5 = v4;
  [*(a1 + 40) scale];
  CGAffineTransformMakeScale(&v8, v5, v6);
  return [v3 setTransform:&v8];
}

uint64_t __82__SBFluidSwitcherViewController__performModifierIconViewVisibilityUpdateResponse___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) scale];
  [v2 setContentScaleFactor:?];
  v3 = *(a1 + 32);
  [*(a1 + 40) scale];
  v5 = v4;
  [*(a1 + 40) scale];
  CGAffineTransformMakeScale(&v8, v5, v6);
  return [v3 setTransform:&v8];
}

void __82__SBFluidSwitcherViewController__performModifierIconViewVisibilityUpdateResponse___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setIconContentHidden:1];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) _iconZoomContextProvider];
  v5 = v3;
  v4 = 40;
  if (!v2)
  {
    v4 = 32;
  }

  [v3 startTrackingHiddenIconZoomViewIfNeeded:*(a1 + v4)];
}

- (void)_performModifierNotifyIconWillZoomDownResponse:(id)response
{
  hiddenIconViews = self->_hiddenIconViews;
  appLayout = [response appLayout];
  v7 = [(NSMutableDictionary *)hiddenIconViews objectForKey:appLayout];

  if (v7)
  {
    _iconZoomContextProvider = [(SBFluidSwitcherViewController *)self _iconZoomContextProvider];
    [_iconZoomContextProvider noteIconZoomingViewWillZoomDown:v7];
  }
}

- (void)_performModifierMatchMoveToIconViewResponse:(id)response
{
  v80[4] = *MEMORY[0x277D85DE8];
  responseCopy = response;
  appLayout = [responseCopy appLayout];
  if ([responseCopy isActive])
  {
    _iconZoomContextProvider = [(SBFluidSwitcherViewController *)self _iconZoomContextProvider];
    v7 = [_iconZoomContextProvider iconZoomingViewForAppLayout:appLayout];

    _iconZoomContextProvider2 = [(SBFluidSwitcherViewController *)self _iconZoomContextProvider];
    v9 = [_iconZoomContextProvider2 shouldMatchMoveIconZoomingView:v7];

    if (v9)
    {
      [responseCopy iconFrame];
      x = v81.origin.x;
      y = v81.origin.y;
      width = v81.size.width;
      height = v81.size.height;
      if (CGRectEqualToRect(v81, *MEMORY[0x277CBF3A0]) || (v82.origin.x = x, v82.origin.y = y, v82.size.width = width, v82.size.height = height, CGRectIsNull(v82)))
      {
        _iconZoomContextProvider3 = [(SBFluidSwitcherViewController *)self _iconZoomContextProvider];
        [_iconZoomContextProvider3 iconFrameForAppLayout:appLayout];
      }

      window = [v7 window];
      UIRectGetCenter();
      v17 = v16;
      v19 = v18;
      view = [(SBFluidSwitcherViewController *)self view];
      [view convertPoint:window toView:{v17, v19}];
      v22 = v21;
      v24 = v23;

      if ([v7 iconImageSizeMatchesBoundsSize])
      {
        [v7 bounds];
      }

      else
      {
        [v7 iconImageFrame];
      }

      UIRectGetCenter();
      v28 = v27;
      v30 = v29;
      [window bounds];
      v32 = v28 + v31 * 0.5 - v22;
      v34 = v30 + v33 * 0.5 - v24;
      _iconManager = [(SBFluidSwitcherViewController *)self _iconManager];
      _homeScreenAppearanceController = [(SBFluidSwitcherViewController *)self _homeScreenAppearanceController];
      window2 = [_homeScreenAppearanceController window];
      if (window == window2 && [_iconManager hasOpenFolder])
      {
        v68 = _iconManager;
        homeScreenScalingView = [_homeScreenAppearanceController homeScreenScalingView];
        layer = [homeScreenScalingView layer];
        presentationLayer = [layer presentationLayer];
        v40 = [presentationLayer valueForKeyPath:@"transform.scale.x"];
        [v40 doubleValue];
        v42 = v41;

        memset(&v75, 0, sizeof(v75));
        v43 = *(MEMORY[0x277CBF2C0] + 16);
        *&v74.a = *MEMORY[0x277CBF2C0];
        *&v74.c = v43;
        *&v74.tx = *(MEMORY[0x277CBF2C0] + 32);
        CGAffineTransformScale(&v75, &v74, 1.0 / v42, 1.0 / v42);
        v72[0] = MEMORY[0x277D85DD0];
        v72[1] = 3221225472;
        v72[2] = __77__SBFluidSwitcherViewController__performModifierMatchMoveToIconViewResponse___block_invoke;
        v72[3] = &unk_2783AF078;
        v72[4] = self;
        v73 = v75;
        [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v72];
        v44 = MEMORY[0x277D75D18];
        animationSettings = [(SBAppSwitcherSettings *)self->_settings animationSettings];
        homeScreenScaleSettings = [animationSettings homeScreenScaleSettings];
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = __77__SBFluidSwitcherViewController__performModifierMatchMoveToIconViewResponse___block_invoke_2;
        v71[3] = &unk_2783A8C18;
        v71[4] = self;
        [v44 sb_animateWithSettings:homeScreenScaleSettings mode:3 animations:v71 completion:0];

        [window2 bounds];
        v48 = v47;
        v50 = v49;
        if ([(SBFluidSwitcherViewController *)self switcherInterfaceOrientation]!= 1 && [(SBFluidSwitcherViewController *)self switcherInterfaceOrientation]!= 4 && [(SBFluidSwitcherViewController *)self switcherInterfaceOrientation]!= 3)
        {
          [(SBFluidSwitcherViewController *)self switcherInterfaceOrientation];
        }

        v57 = v48 * 0.5;
        v58 = v50 * 0.5;
        if ([(SBFluidSwitcherViewController *)self homeScreenInterfaceOrientation]!= 1 && [(SBFluidSwitcherViewController *)self homeScreenInterfaceOrientation]!= 4 && [(SBFluidSwitcherViewController *)self homeScreenInterfaceOrientation]!= 3)
        {
          [(SBFluidSwitcherViewController *)self homeScreenInterfaceOrientation];
        }

        v59 = v32 - v57;
        v60 = v34 + v58;
        v61 = v32 + v57;
        v62 = v34 - v58;
        if (BSFloatEqualToFloat())
        {
          v67 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v61, v62}];
          v80[0] = v67;
          v66 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v61, v60}];
          v80[1] = v66;
          v63 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v59, v60}];
          v80[2] = v63;
          v64 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v59, v62}];
          v80[3] = v64;
          v65 = v80;
          _iconManager = v68;
        }

        else
        {
          _iconManager = v68;
          if (BSFloatEqualToFloat())
          {
            v67 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v61, v60}];
            v79[0] = v67;
            v66 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v59, v60}];
            v79[1] = v66;
            v63 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v59, v62}];
            v79[2] = v63;
            v64 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v61, v62}];
            v79[3] = v64;
            v65 = v79;
          }

          else if (BSFloatEqualToFloat())
          {
            v67 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v59, v60}];
            v78[0] = v67;
            v66 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v59, v62}];
            v78[1] = v66;
            v63 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v61, v62}];
            v78[2] = v63;
            v64 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v61, v60}];
            v78[3] = v64;
            v65 = v78;
          }

          else
          {
            v67 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v59, v62}];
            v77[0] = v67;
            v66 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v61, v62}];
            v77[1] = v66;
            v63 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v61, v60}];
            v77[2] = v63;
            v64 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v59, v60}];
            v77[3] = v64;
            v65 = v77;
          }
        }

        v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:4];
      }

      else
      {
        v51 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v32, v34}];
        v76 = v51;
        v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
      }

      v53 = objc_alloc_init(MEMORY[0x277CD9EE8]);
      layer2 = [v7 layer];
      [v53 setSourceLayer:layer2];

      [v53 setSourcePoints:v52];
      [v53 setDuration:INFINITY];
      [v53 setFillMode:*MEMORY[0x277CDA230]];
      [v53 setRemovedOnCompletion:0];
      view2 = [(SBFluidSwitcherViewController *)self view];
      layer3 = [view2 layer];
      [layer3 addAnimation:v53 forKey:@"MatchMoveToIconViewAnimation"];
    }
  }

  else
  {
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __77__SBFluidSwitcherViewController__performModifierMatchMoveToIconViewResponse___block_invoke_3;
    v70[3] = &unk_2783A8C18;
    v70[4] = self;
    [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v70];
    view3 = [(SBFluidSwitcherViewController *)self view];
    layer4 = [view3 layer];
    [layer4 removeAnimationForKey:@"MatchMoveToIconViewAnimation"];
  }
}

uint64_t __77__SBFluidSwitcherViewController__performModifierMatchMoveToIconViewResponse___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1952);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

uint64_t __77__SBFluidSwitcherViewController__performModifierMatchMoveToIconViewResponse___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1952);
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v1 setTransform:v4];
}

void __77__SBFluidSwitcherViewController__performModifierMatchMoveToIconViewResponse___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

- (void)_performModifierMatchMoveToDropletResponse:(id)response
{
  v66[4] = *MEMORY[0x277D85DE8];
  responseCopy = response;
  appLayout = [responseCopy appLayout];
  if (![responseCopy isActive])
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = appLayout;
    leafAppLayouts = [appLayout leafAppLayouts];
    v11 = [leafAppLayouts countByEnumeratingWithState:&v53 objects:v61 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v54;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v54 != v13)
          {
            objc_enumerationMutation(leafAppLayouts);
          }

          v15 = [(NSMutableDictionary *)self->_visibleItemContainers objectForKey:*(*(&v53 + 1) + 8 * i)];
          v16 = v15;
          if (v15)
          {
            layer = [v15 layer];
            [layer removeAnimationForKey:@"MatchMoveToDropletAnimation"];
          }
        }

        v12 = [leafAppLayouts countByEnumeratingWithState:&v53 objects:v61 count:16];
      }

      while (v12);
    }

    appLayout = v51;
    v18 = [(NSMutableDictionary *)self->_visibleOverlayAccessoryViews objectForKey:v51];
    v19 = v18;
    if (v18)
    {
      layer2 = [v18 layer];
      [layer2 removeAnimationForKey:@"MatchMoveToDropletAnimation"];
    }

    v21 = [(NSMutableDictionary *)self->_visibleUnderlayAccessoryViews objectForKey:v51];
    v22 = v21;
    if (!v21)
    {
      goto LABEL_48;
    }

    layer3 = [v21 layer];
    [layer3 removeAnimationForKey:@"MatchMoveToDropletAnimation"];
LABEL_47:

LABEL_48:
    goto LABEL_49;
  }

  if (appLayout)
  {
    v6 = [(NSMutableDictionary *)self->_externalDropletZoomUpTokens objectForKey:appLayout];
    if (v6)
    {
      v49 = v6;
      animatingDroplet = [v6 animatingDroplet];
      if (!animatingDroplet)
      {
        [SBFluidSwitcherViewController _performModifierMatchMoveToDropletResponse:];
      }

      layer3 = objc_alloc_init(MEMORY[0x277CD9EE8]);
      layer4 = [animatingDroplet layer];
      [layer3 setSourceLayer:layer4];

      [layer3 setDuration:INFINITY];
      [layer3 setFillMode:*MEMORY[0x277CDA230]];
      [layer3 setRemovedOnCompletion:0];
      if ([(SBFluidSwitcherViewController *)self switcherInterfaceOrientation]!= 1 && [(SBFluidSwitcherViewController *)self switcherInterfaceOrientation]!= 4 && [(SBFluidSwitcherViewController *)self switcherInterfaceOrientation]!= 3)
      {
        [(SBFluidSwitcherViewController *)self switcherInterfaceOrientation];
      }

      v50 = responseCopy;
      v48 = animatingDroplet;
      if (BSFloatEqualToFloat())
      {
        v23 = 0.0;
        v24 = 1.0;
        v25 = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.0, 1.0}];
        v66[0] = v25;
        v26 = v66;
        v27 = 0.0;
      }

      else
      {
        if (!BSFloatEqualToFloat())
        {
          if (BSFloatEqualToFloat())
          {
            v23 = 1.0;
            v24 = 0.0;
            v25 = [MEMORY[0x277CCAE60] valueWithCGPoint:{1.0, 0.0}];
            v64 = v25;
            v26 = &v64;
            v27 = 1.0;
          }

          else
          {
            v27 = 0.0;
            v25 = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.0, 0.0}];
            v63 = v25;
            v23 = 1.0;
            v26 = &v63;
            v24 = 1.0;
          }

          v28 = 0.0;
          goto LABEL_33;
        }

        v27 = 1.0;
        v25 = [MEMORY[0x277CCAE60] valueWithCGPoint:{1.0, 1.0}];
        v65 = v25;
        v23 = 0.0;
        v26 = &v65;
        v24 = 0.0;
      }

      v28 = 1.0;
LABEL_33:
      v29 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v23, v27}];
      v26[1] = v29;
      v30 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v24, v23}];
      v26[2] = v30;
      v31 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v28, v24}];
      v26[3] = v31;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];

      v47 = v32;
      [layer3 setSourcePoints:v32];
      [layer3 setUsesNormalizedCoordinates:1];
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v52 = appLayout;
      leafAppLayouts2 = [appLayout leafAppLayouts];
      v34 = [leafAppLayouts2 countByEnumeratingWithState:&v57 objects:v62 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v58;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v58 != v36)
            {
              objc_enumerationMutation(leafAppLayouts2);
            }

            v38 = [(NSMutableDictionary *)self->_visibleItemContainers objectForKey:*(*(&v57 + 1) + 8 * j)];
            v39 = v38;
            if (v38)
            {
              layer5 = [v38 layer];
              [layer5 addAnimation:layer3 forKey:@"MatchMoveToDropletAnimation"];
            }
          }

          v35 = [leafAppLayouts2 countByEnumeratingWithState:&v57 objects:v62 count:16];
        }

        while (v35);
      }

      appLayout = v52;
      v41 = [(NSMutableDictionary *)self->_visibleOverlayAccessoryViews objectForKey:v52];
      v42 = v41;
      responseCopy = v50;
      if (v41)
      {
        layer6 = [v41 layer];
        [layer6 addAnimation:layer3 forKey:@"MatchMoveToDropletAnimation"];
      }

      v44 = [(NSMutableDictionary *)self->_visibleUnderlayAccessoryViews objectForKey:v52];
      v45 = v44;
      v22 = v48;
      v19 = v49;
      if (v44)
      {
        layer7 = [v44 layer];
        [layer7 addAnimation:layer3 forKey:@"MatchMoveToDropletAnimation"];
      }

      goto LABEL_47;
    }
  }

LABEL_49:
}

- (void)_performModifierTimerEventResponse:(id)response
{
  responseCopy = response;
  v5 = [SBTimerSwitcherModifierEvent alloc];
  reason = [responseCopy reason];

  v7 = [(SBTimerSwitcherModifierEvent *)v5 initWithReason:reason];
  [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v7];
}

- (void)_performBlurItemContainerResponse:(id)response
{
  v20 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  appLayout = [responseCopy appLayout];
  leafAppLayouts = [appLayout leafAppLayouts];

  v7 = [leafAppLayouts countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(leafAppLayouts);
        }

        v11 = [(NSMutableDictionary *)self->_visibleItemContainers objectForKey:*(*(&v15 + 1) + 8 * i)];
        if (v11)
        {
          blurParameters = [responseCopy blurParameters];
          shouldBlur = [responseCopy shouldBlur];
          animationUpdateMode = [responseCopy animationUpdateMode];
          if (shouldBlur)
          {
            [(SBFluidSwitcherViewController *)self _blurItemContainer:v11 blurParameters:blurParameters withAnimationUpdateMode:animationUpdateMode];
          }

          else
          {
            [(SBFluidSwitcherViewController *)self _unblurItemContainer:v11 blurParameters:blurParameters withAnimationUpdateMode:animationUpdateMode];
          }
        }
      }

      v8 = [leafAppLayouts countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)_performBlurthroughItemContainerResponse:(id)response
{
  responseCopy = response;
  fromLeafAppLayout = [responseCopy fromLeafAppLayout];
  throughLeafAppLayout = [responseCopy throughLeafAppLayout];

  if ((BSEqualObjects() & 1) == 0)
  {
    v7 = [(NSMutableDictionary *)self->_visibleItemContainers objectForKey:fromLeafAppLayout];
    v8 = [(NSMutableDictionary *)self->_visibleItemContainers objectForKey:throughLeafAppLayout];
    v9 = objc_alloc(MEMORY[0x277D76180]);
    [(SBFluidSwitcherContentView *)self->_contentView bounds];
    v10 = [v9 initWithFrame:?];
    [(SBFluidSwitcherContentView *)self->_contentView bounds];
    UIRectGetCenter();
    [v8 convertPoint:self->_contentView fromView:?];
    [v10 setCenter:?];
    [v10 setSourceView:v7];
    [v10 setHidesSourceView:1];
    [v10 setMatchesPosition:1];
    [v10 setMatchesTransform:1];
    [v10 setMatchesAlpha:1];
    [v10 setName:@"com.apple.SpringBoard.blurthroughItemContainer"];
    [v8 setBlurthroughPortalView:v10];
    v13 = fromLeafAppLayout;
    v14 = v7;
    v11 = v7;
    v12 = v8;
    BSRunLoopPerformAfterCACommit();
  }
}

void __74__SBFluidSwitcherViewController__performBlurthroughItemContainerResponse___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBlurthroughPortalView:0];
  v2 = [*(*(a1 + 40) + 2016) objectForKey:*(a1 + 48)];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 newSnapshotView];
    if (v3)
    {
      v4 = v3;
      v5 = [*(a1 + 56) _shadowView];
      v6 = objc_alloc(MEMORY[0x277D76180]);
      [v5 bounds];
      v7 = [v6 initWithFrame:?];
      [v4 bounds];
      UIRectGetCenter();
      [v7 setCenter:?];
      [v7 setSourceView:v5];
      [v7 setHidesSourceView:0];
      [v7 setMatchesPosition:0];
      [v7 setMatchesTransform:0];
      [v7 setMatchesAlpha:1];
      [v7 setName:@"com.apple.SpringBoard.blurthroughItemContainerShadow"];
      v8 = objc_alloc(MEMORY[0x277D75D18]);
      v9 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      [v9 addSubview:v7];
      [v9 addSubview:v4];
      v10 = MEMORY[0x277D75D18];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __74__SBFluidSwitcherViewController__performBlurthroughItemContainerResponse___block_invoke_2;
      v19[3] = &unk_2783A9BD8;
      v20 = *(a1 + 32);
      v11 = v9;
      v21 = v11;
      v22 = *(a1 + 56);
      v23 = v4;
      v12 = v4;
      [v10 _performWithoutRetargetingAnimations:v19];
      objc_initWeak(&location, *(a1 + 32));
      v13 = dispatch_time(0, 25000000);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __74__SBFluidSwitcherViewController__performBlurthroughItemContainerResponse___block_invoke_3;
      v15[3] = &unk_2783AF0C8;
      v15[4] = *(a1 + 40);
      v16 = v11;
      v14 = v11;
      objc_copyWeak(&v17, &location);
      dispatch_after(v13, MEMORY[0x277D85CD0], v15);
      objc_destroyWeak(&v17);

      objc_destroyWeak(&location);
    }
  }
}

void __74__SBFluidSwitcherViewController__performBlurthroughItemContainerResponse___block_invoke_2(id *a1)
{
  v42[5] = *MEMORY[0x277D85DE8];
  [a1[4] setBlurthoughView:a1[5]];
  [a1[4] layoutIfNeeded];
  v2 = a1[5];
  v3 = [a1[6] superview];
  [a1[6] frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [a1[5] superview];
  [v3 convertRect:v12 toView:{v5, v7, v9, v11}];
  [v2 setFrame:?];

  [a1[7] setClipsToBounds:1];
  [a1[6] contentCornerRadii];
  v42[2] = v15;
  v42[3] = v14;
  v42[4] = v16;
  for (i = 1; i != 4; ++i)
  {
    if (v13 < *&v42[i + 1])
    {
      v13 = *&v42[i + 1];
    }
  }

  [a1[7] _setContinuousCornerRadius:v13];
  v18 = [a1[7] layer];
  [v18 setMaskedCorners:{objc_msgSend(a1[6], "maskedCorners")}];

  v19 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
  [v19 setName:@"gaussianBlur"];
  [v19 setValue:@"low" forKey:@"inputIntermediateBitDepth"];
  [v19 setValue:@"low" forKey:@"inputQuality"];
  [v19 setValue:&unk_28336F220 forKey:@"inputRadius"];
  v20 = [a1[5] layer];
  v42[0] = v19;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
  [v20 setFilters:v21];

  [a1[7] layoutIfNeeded];
  v22 = objc_alloc_init(MEMORY[0x277CD9EE8]);
  v23 = [a1[6] layer];
  [v22 setSourceLayer:v23];

  [a1[6] bounds];
  UIRectGetCenter();
  v25 = v24;
  v27 = v26;
  [a1[6] bounds];
  v29 = v28 * 0.5;
  [a1[6] bounds];
  v31 = v25 - v29;
  v32 = v27 + v30 * 0.5;
  v33 = v25 + v29;
  v34 = v27 - v30 * 0.5;
  v35 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v31, v34}];
  v36 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v33, v34, v35}];
  v41[1] = v36;
  v37 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v33, v32}];
  v41[2] = v37;
  v38 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v31, v32}];
  v41[3] = v38;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];
  [v22 setSourcePoints:v39];

  [v22 setDuration:INFINITY];
  [v22 setFillMode:*MEMORY[0x277CDA230]];
  [v22 setRemovedOnCompletion:0];
  v40 = [a1[5] layer];
  [v40 addAnimation:v22 forKey:@"MatchMoveToIconViewAnimation"];
}

void __74__SBFluidSwitcherViewController__performBlurthroughItemContainerResponse___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v3 = [*(*(a1 + 32) + 1096) windowingSettings];
  v4 = [v3 stageFocusChangeSettings];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__SBFluidSwitcherViewController__performBlurthroughItemContainerResponse___block_invoke_4;
  v8[3] = &unk_2783A8C18;
  v9 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__SBFluidSwitcherViewController__performBlurthroughItemContainerResponse___block_invoke_1114;
  v5[3] = &unk_2783AF0A0;
  objc_copyWeak(&v7, (a1 + 48));
  v6 = *(a1 + 40);
  [v2 sb_animateWithSettings:v4 mode:3 animations:v8 completion:v5];

  objc_destroyWeak(&v7);
}

uint64_t __74__SBFluidSwitcherViewController__performBlurthroughItemContainerResponse___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 setValue:&unk_28336F230 forKeyPath:@"filters.gaussianBlur.inputRadius"];

  v3 = *(a1 + 32);

  return [v3 setAlpha:0.0];
}

void __74__SBFluidSwitcherViewController__performBlurthroughItemContainerResponse___block_invoke_1114(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained blurthroughView];
    v4 = *(a1 + 32);

    WeakRetained = v5;
    if (v3 == v4)
    {
      [v5 setBlurthoughView:0];
      WeakRetained = v5;
    }
  }
}

- (void)_performRemoveFromDesktopEventResponse:(id)response
{
  responseCopy = response;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((*(&self->_delegateRespondsTo + 4) & 2) != 0)
  {
    displayItems = [responseCopy displayItems];
    [WeakRetained switcherContentController:self removeDisplayItemsFromDesktop:displayItems];
  }
}

- (void)_performToggleSlideOverForDisplayItemResponse:(id)response
{
  responseCopy = response;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (![responseCopy direction])
  {
    if ((*(&self->_delegateRespondsTo + 4) & 8) == 0)
    {
      goto LABEL_8;
    }

    displayItem = [responseCopy displayItem];
    [WeakRetained switcherContentController:self moveDisplayItemToSlideOver:displayItem];
    goto LABEL_7;
  }

  if ([responseCopy direction] == 1 && (*(&self->_delegateRespondsTo + 4) & 0x10) != 0)
  {
    displayItem = [responseCopy displayItem];
    [WeakRetained switcherContentController:self moveDisplayItemOutOfSlideOver:displayItem];
LABEL_7:
  }

LABEL_8:
}

- (void)_performNewWindowSwitcherResponse:(id)response
{
  responseCopy = response;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((*(&self->_delegateRespondsTo + 1) & 0x80) != 0)
  {
    bundleIdentifier = [responseCopy bundleIdentifier];
    [WeakRetained switcherContentController:self requestNewWindowForBundleIdentifier:bundleIdentifier];
  }
}

- (void)_performModifierDismissSiriResponse:(id)response
{
  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  assistantController = [_sbWindowScene assistantController];
  [assistantController dismissAssistantViewIfNecessary];
}

- (void)_performInvalidateSnapshotCacheResponse:(id)response
{
  v38 = *MEMORY[0x277D85DE8];
  displayItems = [response displayItems];
  if (!displayItems)
  {
    v5 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = [(SBAppSwitcherSnapshotImageCache *)self->_snapshotCache cachableAppLayouts];
    v6 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v32;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v31 + 1) + 8 * i);
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          leafAppLayouts = [v10 leafAppLayouts];
          v12 = [leafAppLayouts countByEnumeratingWithState:&v27 objects:v36 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v28;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v28 != v14)
                {
                  objc_enumerationMutation(leafAppLayouts);
                }

                allItems = [*(*(&v27 + 1) + 8 * j) allItems];
                [v5 addObjectsFromArray:allItems];
              }

              v13 = [leafAppLayouts countByEnumeratingWithState:&v27 objects:v36 count:16];
            }

            while (v13);
          }
        }

        v7 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v7);
    }

    displayItems = [v5 allObjects];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = displayItems;
  v18 = [v17 countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v24;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(SBAppSwitcherSnapshotImageCache *)self->_snapshotCache reloadSnapshotForDisplayItem:*(*(&v23 + 1) + 8 * k)];
      }

      v19 = [v17 countByEnumeratingWithState:&v23 objects:v35 count:16];
    }

    while (v19);
  }
}

- (void)_performInvalidateItemContainerBackdropResponse:(id)response
{
  v24 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  appLayouts = [(SBFluidSwitcherViewController *)self appLayouts];
  v5 = [appLayouts count];

  v6 = [(SBSwitcherPersonality *)self->_personality animationAttributesForLayoutElement:self->_genericAccessoryLayoutElement];
  layoutSettings = [v6 layoutSettings];

  updateMode = [responseCopy updateMode];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(NSMutableDictionary *)self->_visibleItemContainerBackdropViews allKeys];
  v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        v17[0] = 0;
        v17[1] = v17;
        v17[2] = 0x3032000000;
        v17[3] = __Block_byref_object_copy__16;
        v17[4] = __Block_byref_object_dispose__16;
        v18 = [(NSMutableDictionary *)self->_visibleItemContainerBackdropViews objectForKey:v10];
        if ([v10 integerValue] >= v5)
        {
          [(NSMutableDictionary *)self->_visibleItemContainerBackdropViews removeObjectForKey:v10];
          v15[4] = v17;
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __81__SBFluidSwitcherViewController__performInvalidateItemContainerBackdropResponse___block_invoke;
          v16[3] = &unk_2783A9718;
          v16[4] = v17;
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = __81__SBFluidSwitcherViewController__performInvalidateItemContainerBackdropResponse___block_invoke_2;
          v15[3] = &unk_2783AF0F0;
          [MEMORY[0x277D75D18] sb_animateWithSettings:layoutSettings mode:updateMode animations:v16 completion:v15];
        }

        _Block_object_dispose(v17, 8);

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }
}

void __81__SBFluidSwitcherViewController__performInvalidateItemContainerBackdropResponse___block_invoke_2(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) setHidden:1];
  [*(*(*(a1 + 32) + 8) + 40) removeFromSuperview];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)_performUpdateDragPlatterBlurResponse:(id)response
{
  v3 = +[SBWorkspace mainWorkspace];
  currentTransaction = [v3 currentTransaction];
  v5 = objc_opt_class();
  v6 = currentTransaction;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
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

  v9 = v7;

  v8 = v9;
  if (v9)
  {
    [v9 blurReadinessDidChange];
    v8 = v9;
  }
}

- (void)_performRequestSystemApertureElementSuppressionResponse:(id)response
{
  responseCopy = response;
  v5 = [MEMORY[0x277CBEB58] set];
  appLayout = [responseCopy appLayout];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __89__SBFluidSwitcherViewController__performRequestSystemApertureElementSuppressionResponse___block_invoke;
  v22 = &unk_2783A8FF8;
  selfCopy = self;
  v7 = v5;
  v24 = v7;
  [appLayout enumerate:&v19];

  systemApertureContentSuppressionAssertionsByInvalidationUUID = self->_systemApertureContentSuppressionAssertionsByInvalidationUUID;
  v9 = [MEMORY[0x277CBEB98] setWithSet:{v7, v19, v20, v21, v22, selfCopy}];
  invalidationIdentifier = [responseCopy invalidationIdentifier];
  [(NSMutableDictionary *)systemApertureContentSuppressionAssertionsByInvalidationUUID setObject:v9 forKey:invalidationIdentifier];

  if ([responseCopy wantsGlobalSuppression])
  {
    systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
    v12 = [systemApertureControllerForMainDisplay restrictSystemApertureToInertWithReason:@"Switcher"];

    systemApertureGlobalSuppressionAssertionsByInvalidationUUID = self->_systemApertureGlobalSuppressionAssertionsByInvalidationUUID;
    invalidationIdentifier2 = [responseCopy invalidationIdentifier];
    [(NSMutableDictionary *)systemApertureGlobalSuppressionAssertionsByInvalidationUUID setObject:v12 forKey:invalidationIdentifier2];
  }

  if ([responseCopy wantsKeyLineEnabled])
  {
    systemApertureControllerForMainDisplay2 = [SBApp systemApertureControllerForMainDisplay];
    requireKeyLineAssertionForTransition = [systemApertureControllerForMainDisplay2 requireKeyLineAssertionForTransition];

    systemApertureKeyLineAssertionsByInvalidationUUID = self->_systemApertureKeyLineAssertionsByInvalidationUUID;
    invalidationIdentifier3 = [responseCopy invalidationIdentifier];
    [(NSMutableDictionary *)systemApertureKeyLineAssertionsByInvalidationUUID setObject:requireKeyLineAssertionForTransition forKey:invalidationIdentifier3];
  }
}

void __89__SBFluidSwitcherViewController__performRequestSystemApertureElementSuppressionResponse___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  if (![v8 type])
  {
    v4 = [*(a1 + 32) _gestureManager];
    v5 = [v8 bundleIdentifier];
    v6 = [v8 uniqueIdentifier];
    v7 = [v4 acquireSystemApertureSuppressionAssertionForBundleIdentifier:v5 sceneIdentifier:v6];

    if (v7)
    {
      [*(a1 + 40) addObject:v7];
    }
  }
}

- (void)_performRelinquishSystemApertureElementSuppressionResponse:(id)response
{
  v17 = *MEMORY[0x277D85DE8];
  invalidationIdentifier = [response invalidationIdentifier];
  v5 = [(NSMutableDictionary *)self->_systemApertureContentSuppressionAssertionsByInvalidationUUID objectForKey:invalidationIdentifier];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v12 + 1) + 8 * v9++) invalidate];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(NSMutableDictionary *)self->_systemApertureContentSuppressionAssertionsByInvalidationUUID removeObjectForKey:invalidationIdentifier];
  v10 = [(NSMutableDictionary *)self->_systemApertureGlobalSuppressionAssertionsByInvalidationUUID objectForKey:invalidationIdentifier];
  [v10 invalidateWithReason:@"Switcher"];
  [(NSMutableDictionary *)self->_systemApertureGlobalSuppressionAssertionsByInvalidationUUID removeObjectForKey:invalidationIdentifier];
  v11 = [(NSMutableDictionary *)self->_systemApertureKeyLineAssertionsByInvalidationUUID objectForKey:invalidationIdentifier];
  [v11 invalidateWithReason:@"Switcher"];
  [(NSMutableDictionary *)self->_systemApertureKeyLineAssertionsByInvalidationUUID removeObjectForKey:invalidationIdentifier];
}

- (void)_performSystemApertureBounceResponse:(id)response
{
  responseCopy = response;
  appLayout = [responseCopy appLayout];
  v6 = [(SBFluidSwitcherViewController *)self currentVelocityValueForVisibleAppLayout:appLayout key:@"position"];

  v20 = v6;
  if (v6)
  {
    [v6 CGPointValue];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v8 = *MEMORY[0x277CBF348];
    v10 = *(MEMORY[0x277CBF348] + 8);
  }

  suppressionIdentifierToInvalidate = [responseCopy suppressionIdentifierToInvalidate];
  v12 = [(NSMutableDictionary *)self->_systemApertureContentSuppressionAssertionsByInvalidationUUID objectForKey:suppressionIdentifierToInvalidate];
  v13 = [(NSMutableDictionary *)self->_systemApertureGlobalSuppressionAssertionsByInvalidationUUID objectForKey:suppressionIdentifierToInvalidate];
  v14 = [(NSMutableDictionary *)self->_systemApertureKeyLineAssertionsByInvalidationUUID objectForKey:suppressionIdentifierToInvalidate];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __70__SBFluidSwitcherViewController__performSystemApertureBounceResponse___block_invoke;
  v22[3] = &unk_2783A8ED8;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v15 = v14;
  v16 = v13;
  v17 = v12;
  v18 = MEMORY[0x223D6F7F0](v22);
  [(NSMutableDictionary *)self->_systemApertureContentSuppressionAssertionsByInvalidationUUID removeObjectForKey:suppressionIdentifierToInvalidate];
  [(NSMutableDictionary *)self->_systemApertureGlobalSuppressionAssertionsByInvalidationUUID removeObjectForKey:suppressionIdentifierToInvalidate];
  [(NSMutableDictionary *)self->_systemApertureKeyLineAssertionsByInvalidationUUID removeObjectForKey:suppressionIdentifierToInvalidate];
  systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
  [systemApertureControllerForMainDisplay animateTransitionAcceptanceBounceWithVelocityVector:v18 triggeredBlock:{v8, v10}];
}

uint64_t __70__SBFluidSwitcherViewController__performSystemApertureBounceResponse___block_invoke(id *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) invalidate];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [a1[5] invalidateWithReason:@"Switcher"];
  return [a1[6] invalidateWithReason:@"Switcher"];
}

- (void)_performSystemApertureStretchResponse:(id)response
{
  systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
  [systemApertureControllerForMainDisplay animateTransitionEjectionStretchWithVelocityVector:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
}

- (void)_performUpdateContinuousExposeStripsPresentationResponse:(id)response
{
  responseCopy = response;
  touchType = [responseCopy touchType];
  if (([responseCopy presentationOptions] & 1) != 0 && touchType)
  {
    self->_lastTouchTypeForPresentingStrip = touchType;
  }

  continuousExposeStripsPresentationOptions = self->_continuousExposeStripsPresentationOptions;
  v6 = [responseCopy presentationOptions] | continuousExposeStripsPresentationOptions;
  self->_continuousExposeStripsPresentationOptions = v6;
  self->_continuousExposeStripsPresentationOptions = v6 & ~[responseCopy dismissalOptions];
}

- (void)_performInvalidateContinuousExposeIdentifiersResponse:(id)response
{
  responseCopy = response;
  transitioningFromAppLayout = [responseCopy transitioningFromAppLayout];
  transitioningToAppLayout = [responseCopy transitioningToAppLayout];
  animated = [responseCopy animated];

  [(SBFluidSwitcherViewController *)self _updateContinuousExposeIdentifiersTransitioningFromAppLayout:transitioningFromAppLayout toAppLayout:transitioningToAppLayout animated:animated];
}

- (void)_performSetInterfaceOrientationFromUserResizingResponse:(id)response
{
  responseCopy = response;
  displayItem = [responseCopy displayItem];
  desiredOrientation = [responseCopy desiredOrientation];

  if (displayItem && desiredOrientation)
  {
    delegate = [(SBFluidSwitcherViewController *)self delegate];
    v7 = delegate;
    if ((*(&self->_delegateRespondsTo + 1) & 0x40) != 0)
    {
      [delegate switcherContentController:self setInterfaceOrientationFromUserResizing:desiredOrientation forDisplayItem:displayItem];
    }
  }
}

- (void)_performPresentContinuousExposeStripEdgeProtectGrabberResponse:(id)response
{
  responseCopy = response;
  delegate = [(SBFluidSwitcherViewController *)self delegate];
  isInitialPresentation = [responseCopy isInitialPresentation];

  if (isInitialPresentation)
  {
    [delegate presentContinuousExposeStripRevealGrabberTongueImmediatelyForSwitcherContentController:self];
  }

  else
  {
    [delegate tickleContinuousExposeStripRevealGrabberTongueIfVisibleForSwitcherContentController:self];
  }
}

- (void)_performActionForPreludeAnimationTokenActionResponse:(id)response
{
  v22 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  preludeToken = [responseCopy preludeToken];
  zoomUpToken = [responseCopy zoomUpToken];
  appLayout = [responseCopy appLayout];
  action = [responseCopy action];

  if (action == 1)
  {
    if (preludeToken)
    {
      [preludeToken cancel];
      v18 = SBLogCameraCaptureLaunchAnimation();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = preludeToken;
        _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "Switcher-Modifier: Still have prelude token when transition ends; canceling: %@", &v20, 0xCu);
      }
    }

    associatedBezelEffectsCoordinator = [(NSMutableDictionary *)self->_externalDropletZoomUpTokens objectForKey:appLayout];
    [(NSMutableDictionary *)self->_externalDropletZoomUpTokens removeObjectForKey:appLayout];
    v19 = [[SBMatchMoveToDropletSwitcherEventResponse alloc] initWithAppLayout:appLayout active:0];
    [(SBFluidSwitcherViewController *)self _performModifierMatchMoveToDropletResponse:v19];

    if (BSEqualObjects())
    {
      [zoomUpToken invalidate];
    }

    goto LABEL_14;
  }

  if (!action)
  {
    associatedBezelEffectsCoordinator = [preludeToken associatedBezelEffectsCoordinator];
    v10 = [associatedBezelEffectsCoordinator commandeerDropletAnimationWithToken:preludeToken];
    view = [(SBFluidSwitcherViewController *)self view];
    window = [view window];

    if (!window)
    {
      delegate = [(SBFluidSwitcherViewController *)self delegate];
      [delegate updateWindowVisibilityForSwitcherContentController:self];

      view2 = [(SBFluidSwitcherViewController *)self view];
      window = [view2 window];
    }

    [window windowLevel];
    [v10 setRequestedDropletWindowLevel:v15 + -1.0];
    animatingDroplet = [v10 animatingDroplet];
    if (!animatingDroplet)
    {
      [SBFluidSwitcherViewController _performActionForPreludeAnimationTokenActionResponse:];
    }

    [(NSMutableDictionary *)self->_externalDropletZoomUpTokens setObject:v10 forKey:appLayout];
    v17 = [[SBHardwareButtonDropletAnimationEvent alloc] initWithPreludeToken:0 zoomUpToken:v10];
    [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v17];

LABEL_14:
  }
}

- (void)_performCancelSystemGesturesResponse:(id)response
{
  v20 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  systemGestureManager = [_sbWindowScene systemGestureManager];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  systemGestureTypes = [responseCopy systemGestureTypes];
  v8 = [systemGestureTypes countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(systemGestureTypes);
        }

        unsignedIntegerValue = [*(*(&v15 + 1) + 8 * v11) unsignedIntegerValue];
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        [systemGestureManager cancelGestureRecognizerOfType:unsignedIntegerValue reason:v14];

        ++v11;
      }

      while (v9 != v11);
      v9 = [systemGestureTypes countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)_cancelWindowMorphingAnimation
{
  v15 = *MEMORY[0x277D85DE8];
  centerWindowInAppMorphCompletion = self->_centerWindowInAppMorphCompletion;
  if (centerWindowInAppMorphCompletion)
  {
    centerWindowInAppMorphCompletion[2](centerWindowInAppMorphCompletion, 1, 0);
    v4 = self->_centerWindowInAppMorphCompletion;
    self->_centerWindowInAppMorphCompletion = 0;

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    allKeys = [(NSMutableDictionary *)self->_centerWindowActivationAnimationContexts allKeys];
    v6 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          [(SBFluidSwitcherViewController *)self _removeCenterWindowAnimationContextWithKey:*(*(&v10 + 1) + 8 * v9++)];
        }

        while (v7 != v9);
        v7 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_performDestroyDisplayItemResponse:(id)response
{
  responseCopy = response;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if ([responseCopy destroyAllScenesMatchingBundleIdentifier])
  {
    displayItem = [responseCopy displayItem];
    bundleIdentifier = [displayItem bundleIdentifier];

    if (bundleIdentifier)
    {
      sceneManager = self->_sceneManager;
      v9 = [MEMORY[0x277CBEB98] setWithObject:bundleIdentifier];
      v10 = [(SBSceneManager *)sceneManager externalApplicationSceneHandlesForBundleIdentifiers:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    if ((*(&self->_dataSourceRespondsTo + 3) & 0x20) == 0)
    {
      v10 = 0;
      goto LABEL_9;
    }

    displayItem2 = [responseCopy displayItem];
    bundleIdentifier = [WeakRetained switcherContentController:self deviceApplicationSceneHandleForDisplayItem:displayItem2];

    v10 = [MEMORY[0x277CBEB98] setWithObject:bundleIdentifier];
  }

LABEL_9:
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__SBFluidSwitcherViewController__performDestroyDisplayItemResponse___block_invoke;
  v14[3] = &unk_2783A9FA0;
  v14[4] = self;
  v12 = [v10 bs_filter:v14];

  if ([v12 count])
  {
    v13 = SBApplicationSceneEntityDestructionMakeIntent(1, 1);
    SBWorkspaceDestroyApplicationSceneHandlesWithIntent(v12, v13, &__block_literal_global_1128);
  }
}

void __68__SBFluidSwitcherViewController__performDestroyDisplayItemResponse___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = SBLogAppSwitcher();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __68__SBFluidSwitcherViewController__performDestroyDisplayItemResponse___block_invoke_2_cold_1();
    }
  }
}

- (void)_performRequestMoveDisplayItemFromDisplaySwitcherEventResponse:(id)response
{
  responseCopy = response;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((*(&self->_delegateRespondsTo + 3) & 0x20) != 0)
  {
    displayItem = [responseCopy displayItem];
    [WeakRetained switcherContentController:self moveDisplayItemFromOtherDisplay:displayItem];
  }
}

- (void)_performDismissMenuBarResponse:(id)response
{
  if ((*(&self->_delegateRespondsTo + 2) & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained switcherContentControllerWantsToDismissMenuBar:self];
  }
}

- (void)_performPeekMenuBarResponse:(id)response
{
  if ((*(&self->_delegateRespondsTo + 2) & 4) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained switcherContentControllerWantsToPeekMenuBar:self];
  }
}

- (void)_performUpdateMenuBarVisibilityResponse:(id)response
{
  if ((*(&self->_delegateRespondsTo + 2) & 8) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained switcherContentControllerWantsToUpdateMenuBarVisibility:self];
  }
}

- (void)_performRequestDismissalForHomeScreenBackgroundTapsResponse:(id)response
{
  if ((*(&self->_delegateRespondsTo + 4) & 4) != 0)
  {
    responseCopy = response;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    wantsDismissalForBackgroundTaps = [responseCopy wantsDismissalForBackgroundTaps];

    [WeakRetained switcherContentController:self requestDismissalForHomeScreenBackgroundTaps:wantsDismissalForBackgroundTaps];
  }
}

- (void)_updatePersonalityDebugLabelPresence
{
  showModifierDebugLabel = [(SBAppSwitcherSettings *)self->_settings showModifierDebugLabel];
  personalityDebugLabel = self->_personalityDebugLabel;
  if (personalityDebugLabel)
  {
    v5 = 1;
  }

  else
  {
    v5 = !showModifierDebugLabel;
  }

  if (v5)
  {
    if (personalityDebugLabel != 0 && !showModifierDebugLabel)
    {
      [(UILabel *)personalityDebugLabel removeFromSuperview];
      v17 = self->_personalityDebugLabel;
      self->_personalityDebugLabel = 0;
    }
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277D756B8]);
    v7 = self->_personalityDebugLabel;
    self->_personalityDebugLabel = v6;

    v8 = self->_personalityDebugLabel;
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
    [(UILabel *)v8 setBackgroundColor:v9];

    v10 = self->_personalityDebugLabel;
    v11 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    [(UILabel *)v10 setFont:v11];

    v12 = self->_personalityDebugLabel;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v12 setTextColor:whiteColor];

    [(UILabel *)self->_personalityDebugLabel setTextAlignment:0];
    [(UILabel *)self->_personalityDebugLabel setNumberOfLines:0];
    layer = [(UILabel *)self->_personalityDebugLabel layer];
    [layer setCornerRadius:19.0];

    layer2 = [(UILabel *)self->_personalityDebugLabel layer];
    [layer2 setCornerCurve:*MEMORY[0x277CDA138]];

    [(UILabel *)self->_personalityDebugLabel setClipsToBounds:1];
    [(UILabel *)self->_personalityDebugLabel bs_setHitTestingDisabled:1];
    view = [(SBFluidSwitcherViewController *)self view];
    [view addSubview:self->_personalityDebugLabel];

    [(SBFluidSwitcherViewController *)self _updatePersonalityDebugLabel];
  }
}

- (void)setShowModifierTimeline:(BOOL)timeline
{
  if (self->_isShowingModifierTimeline != timeline)
  {
    self->_isShowingModifierTimeline = timeline;
    [(SBFluidSwitcherViewController *)self _updateModifierTimelinePresence];
  }
}

- (void)_updateModifierTimelinePresence
{
  isShowingModifierTimeline = self->_isShowingModifierTimeline;
  personality = self->_personality;
  if (isShowingModifierTimeline)
  {
    [(SBSwitcherPersonality *)personality setTimelineAuditor:self];
    if (!self->_modifierTimelineController)
    {
      v5 = [[SBFluidSwitcherModifierTimelineController alloc] initWithDelegate:self];
      modifierTimelineController = self->_modifierTimelineController;
      self->_modifierTimelineController = v5;

      v7 = self->_modifierTimelineController;

      [(SBFluidSwitcherModifierTimelineController *)v7 setVisible:1];
    }
  }

  else
  {
    [(SBSwitcherPersonality *)personality setTimelineAuditor:0];
    v8 = self->_modifierTimelineController;
    if (v8)
    {
      [(SBFluidSwitcherModifierTimelineController *)v8 setVisible:0];
      v9 = self->_modifierTimelineController;
      self->_modifierTimelineController = 0;
    }
  }
}

- (void)_updatePersonalityDebugLabel
{
  if (self->_personalityDebugLabel)
  {
    v7 = [(SBSwitcherPersonality *)self->_personality description];
    text = [(UILabel *)self->_personalityDebugLabel text];
    v4 = [text isEqualToString:v7];

    if ((v4 & 1) == 0)
    {
      [(UILabel *)self->_personalityDebugLabel setText:v7];
      [(UILabel *)self->_personalityDebugLabel sizeThatFits:400.0, 400.0];
      [(UILabel *)self->_personalityDebugLabel setFrame:5.0, 25.0, v5 + 20.0, v6 + 20.0];
    }
  }
}

- (BOOL)_hitTestedToTopAffordance:(CGPoint)affordance window:(id)window forLeafAppLayout:(id)layout
{
  y = affordance.y;
  x = affordance.x;
  windowCopy = window;
  if (layout)
  {
    v10 = [(NSMutableDictionary *)self->_liveContentOverlays objectForKey:layout];
    if (objc_opt_respondsToSelector())
    {
      v11 = [v10 hitTestedToTopAffordance:windowCopy window:{x, y}];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_adjustedGestureEventForGestureEvent:(id)event fromGestureManager:(id)manager
{
  eventCopy = event;
  managerCopy = manager;
  if ([eventCopy isWindowDragGestureEvent])
  {
    contentViewController = [managerCopy contentViewController];
    v9 = [(SBFluidSwitcherViewController *)self _convertWindowDragEvent:eventCopy fromSwitcherContentViewController:contentViewController];
  }

  else
  {
    v9 = eventCopy;
  }

  return v9;
}

- (id)_convertWindowDragEvent:(id)event fromSwitcherContentViewController:(id)controller
{
  eventCopy = event;
  controllerCopy = controller;
  v8 = objc_opt_class();
  v9 = controllerCopy;
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

  selfCopy = self;
  if (!v11)
  {
    [SBFluidSwitcherViewController _convertWindowDragEvent:fromSwitcherContentViewController:];
  }

  if ([(SBFluidSwitcherViewController *)selfCopy isEqual:v11])
  {
    v13 = eventCopy;
  }

  else
  {
    _sbWindowScene = [v11 _sbWindowScene];
    _sbWindowScene2 = [(SBFluidSwitcherViewController *)selfCopy _sbWindowScene];
    [eventCopy locationInContainerView];
    [_sbWindowScene convertPoint:_sbWindowScene2 toNeighboringDisplayWindowScene:?];
    v16 = v15;
    v18 = v17;
    switcherController = [_sbWindowScene switcherController];
    switcherController2 = [_sbWindowScene2 switcherController];
    switcherCoordinator = [switcherController switcherCoordinator];
    selectedAppLayout = [eventCopy selectedAppLayout];
    v21 = [switcherCoordinator convertAppLayout:selectedAppLayout fromSwitcherController:switcherController toSwitcherController:switcherController2];

    v22 = [SBWindowDragSwitcherModifierEvent alloc];
    gestureID = [eventCopy gestureID];
    v13 = -[SBGestureSwitcherModifierEvent initWithGestureID:selectedAppLayout:gestureType:phase:](v22, "initWithGestureID:selectedAppLayout:gestureType:phase:", gestureID, v21, [eventCopy gestureType], objc_msgSend(eventCopy, "phase"));

    [(SBGestureSwitcherModifierEvent *)v13 setLocationInContainerView:v16, v18];
    -[SBWindowDragSwitcherModifierEvent setDraggingFromContinuousExposeStrips:](v13, "setDraggingFromContinuousExposeStrips:", [eventCopy isDraggingFromContinuousExposeStrips]);
    [eventCopy locationInSelectedDisplayItem];
    [(SBWindowDragSwitcherModifierEvent *)v13 setLocationInSelectedDisplayItem:?];
    [eventCopy sizeOfSelectedDisplayItem];
    [(SBWindowDragSwitcherModifierEvent *)v13 setSizeOfSelectedDisplayItem:?];
    -[SBWindowDragSwitcherModifierEvent setSelectedEdge:](v13, "setSelectedEdge:", [eventCopy selectedEdge]);
    -[SBWindowDragSwitcherModifierEvent setUnstashingFromHome:](v13, "setUnstashingFromHome:", [eventCopy unstashingFromHome]);
  }

  return v13;
}

- (BOOL)displayItemDisablesKillingInSwitcher:(id)switcher
{
  switcherCopy = switcher;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = WeakRetained;
  if ((*(&self->_dataSourceRespondsTo + 3) & 0x20) != 0)
  {
    v8 = [WeakRetained switcherContentController:self deviceApplicationSceneHandleForDisplayItem:switcherCopy];
    v7 = [(SBFluidSwitcherViewController *)self sceneHandleDisablesKillingInSwitcher:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)sceneHandleDisablesKillingInSwitcher:(id)switcher
{
  sceneManager = self->_sceneManager;
  switcherCopy = switcher;
  LOBYTE(sceneManager) = [(SBSceneManager *)sceneManager isSceneHandleNotUserDestroyable:switcherCopy];
  prefersKillingInSwitcherDisabled = [switcherCopy prefersKillingInSwitcherDisabled];

  return (prefersKillingInSwitcherDisabled | sceneManager) & 1;
}

- (BOOL)prioritizesSortOrderForAppLayout:(id)layout
{
  layoutCopy = layout;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = WeakRetained;
  if ((*(&self->_dataSourceRespondsTo + 1) & 4) != 0)
  {
    v7 = [WeakRetained prioritizesSortOrderForAppLayout:layoutCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_searchPresenter
{
  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  homeScreenController = [_sbWindowScene homeScreenController];
  searchPresenter = [homeScreenController searchPresenter];

  return searchPresenter;
}

- (void)_updateChamoisDefaultsObserverIfNeeded
{
  v26[4] = *MEMORY[0x277D85DE8];
  _windowManagementContext = [(SBFluidSwitcherViewController *)self _windowManagementContext];
  if ([_windowManagementContext isAutomaticStageCreationEnabled])
  {
    isFlexibleWindowingEnabled = 1;
  }

  else
  {
    isFlexibleWindowingEnabled = [_windowManagementContext isFlexibleWindowingEnabled];
  }

  chamoisDefaultsObserver = self->_chamoisDefaultsObserver;
  if (!isFlexibleWindowingEnabled || chamoisDefaultsObserver)
  {
    if (chamoisDefaultsObserver)
    {
      v17 = isFlexibleWindowingEnabled;
    }

    else
    {
      v17 = 1;
    }

    if ((v17 & 1) == 0)
    {
      [(BSDefaultObserver *)self->_chamoisDefaultsObserver invalidate];
      v18 = self->_chamoisDefaultsObserver;
      self->_chamoisDefaultsObserver = 0;
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"chamoisHideStrips"];
    v26[0] = v6;
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"chamoisHideDock"];
    v26[1] = v7;
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"chamoisHideStripsExternal"];
    v26[2] = v8;
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"chamoisHideDockExternal"];
    v26[3] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];

    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __71__SBFluidSwitcherViewController__updateChamoisDefaultsObserverIfNeeded__block_invoke;
    v22 = &unk_2783A9CE8;
    objc_copyWeak(&v24, &location);
    selfCopy = self;
    v11 = MEMORY[0x223D6F7F0](&v19);
    defaults = self->_defaults;
    v13 = MEMORY[0x277D85CD0];
    v14 = MEMORY[0x277D85CD0];
    v15 = [(SBAppSwitcherDefaults *)defaults observeDefaults:v10 onQueue:v13 withBlock:v11, v19, v20, v21, v22];
    v16 = self->_chamoisDefaultsObserver;
    self->_chamoisDefaultsObserver = v15;

    v11[2](v11);
    objc_destroyWeak(&v24);

    objc_destroyWeak(&location);
  }
}

void __71__SBFluidSwitcherViewController__updateChamoisDefaultsObserverIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _sbWindowScene];
    v5 = [v4 isExtendedDisplayWindowScene];

    v6 = *(v3 + 136);
    if (v5)
    {
      v7 = [v6 chamoisHideStripsExternal];
      v8 = [*(v3 + 136) chamoisHideDockExternal];
    }

    else
    {
      v7 = [v6 chamoisHideStrips];
      v8 = [*(v3 + 136) chamoisHideDock];
    }

    if (v3[1376] != v7 || v3[1377] != v8)
    {
      v3[1376] = v7;
      v3[1377] = v8;
      if (v7 && SBFIsChamoisStripDisabledWhenHiddenAvailable())
      {
        *(*(a1 + 32) + 1720) &= ~1uLL;
      }

      v9 = [v3 viewIfLoaded];

      if (v9)
      {
        v10 = v3;
        BSRunLoopPerformRelativeToCACommit();
      }
    }
  }
}

void __71__SBFluidSwitcherViewController__updateChamoisDefaultsObserverIfNeeded__block_invoke_2(uint64_t a1)
{
  v4 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
  [(SBSwitcherTransitionRequest *)v4 setSource:65];
  v2 = *(a1 + 32);
  v3 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v4 gestureInitiated:0];
  [v2 _handleEventResponse:v3];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  v23 = *MEMORY[0x277D85DE8];
  if (self->_dismissTapGestureRecognizer == recognizer)
  {
    [touch locationInView:self->_contentView];
    v7 = v6;
    v9 = v8;
    v10 = [(SBFluidSwitcherViewController *)self _firstZOrderedSubviewViewAtLocation:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v11 = 0;
      v12 = v10 == 0;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v11 = isKindOfClass ^ 1;
      v12 = v10 == 0;
      if (v10 && (isKindOfClass & 1) == 0)
      {
        v17 = SBLogAppSwitcher();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          debugName = self->_debugName;
          v24.x = v7;
          v24.y = v9;
          v19 = NSStringFromPoint(v24);
          *v21 = 138543874;
          *&v21[4] = debugName;
          *&v21[12] = 2114;
          *&v21[14] = v19;
          *&v21[22] = 2114;
          v22 = objc_opt_class();
          v20 = v22;
          _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Dismissing switcher for touch at location %{public}@ on view of class: %{public}@", v21, 0x20u);
        }

        v12 = 0;
      }
    }

    v13 = [(SBFluidSwitcherViewController *)self _gestureManager:*v21];
    isSwitcherForegroundActive = [v13 isSwitcherForegroundActive];

    v4 = (v12 | v11) & isSwitcherForegroundActive;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

- (id)_firstZOrderedSubviewViewAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  subviews = [(SBFluidSwitcherContentView *)self->_contentView subviews];
  reverseObjectEnumerator = [subviews reverseObjectEnumerator];

  v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if (([v12 isHidden] & 1) == 0)
        {
          [(SBFluidSwitcherContentView *)self->_contentView convertPoint:v12 toView:x, y];
          v14 = v13;
          v16 = v15;
          v17 = [v12 hitTest:0 withEvent:?];

          if (v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v12 pointInside:0 withEvent:{v14, v16}] & 1) != 0)
          {
            v18 = v12;
            goto LABEL_14;
          }
        }
      }

      v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
LABEL_14:

  return v18;
}

- (void)slideOverTongueViewTapped:(id)tapped
{
  if (self->_slideOverTongue == tapped)
  {
    v5 = objc_alloc_init(SBTapSlideOverTongueSwitcherModifierEvent);
    [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v5];
  }
}

- (void)continuousExposeStripTongueViewTapped:(id)tapped
{
  continuousExposeStripsPresentationOptions = self->_continuousExposeStripsPresentationOptions;
  if ((continuousExposeStripsPresentationOptions & 1) == 0)
  {
    self->_continuousExposeStripsPresentationOptions = continuousExposeStripsPresentationOptions | 1;
    v5 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:3];
    [(SBFluidSwitcherViewController *)self _handleEventResponse:v5];
    [(SBFluidSwitcherViewController *)self dismissContinuousExposeStripEdgeProtectTongue];
  }
}

- (void)eventSource:(id)source userTouchedApplication:(id)application
{
  sourceCopy = source;
  applicationCopy = application;
  if (self->_isPersonalityListeningForAppInteraction)
  {
    self->_isPersonalityListeningForAppInteraction = 0;
    v7 = objc_opt_new();
    [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v7];
  }

  if (self->_continuousExposeStripsPresentationOptions)
  {
    self->_continuousExposeStripsPresentationOptions = 0;
    v8 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:12 updateMode:3];
    [(SBFluidSwitcherViewController *)self _handleEventResponse:v8];
  }
}

- (void)pointerDidMoveToFromWindowScene:(id)scene toWindowScene:(id)windowScene
{
  sceneCopy = scene;
  windowSceneCopy = windowScene;
  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  if (windowSceneCopy && sceneCopy && _sbWindowScene)
  {
    if (_sbWindowScene == sceneCopy)
    {
      v8 = 1;
      v9 = windowSceneCopy;
      v10 = sceneCopy;
    }

    else
    {
      if (_sbWindowScene != windowSceneCopy)
      {
        goto LABEL_10;
      }

      v8 = 0;
      v9 = sceneCopy;
      v10 = windowSceneCopy;
    }

    externalDisplayService = [SBApp externalDisplayService];
    _fbsDisplayIdentity = [v9 _fbsDisplayIdentity];
    _fbsDisplayIdentity2 = [v10 _fbsDisplayIdentity];
    v14 = [externalDisplayService preferredArrangementOfDisplay:_fbsDisplayIdentity relativeTo:_fbsDisplayIdentity2];

    v15 = -[SBPointerCrossedDisplayBoundarySwitcherModifierEvent initWithDirection:edge:]([SBPointerCrossedDisplayBoundarySwitcherModifierEvent alloc], "initWithDirection:edge:", v8, [v14 edge]);
    if (v15)
    {
      [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v15];
    }
  }

LABEL_10:
}

- (void)assistantWillAppear:(id)appear
{
  self->_assistantPresentationState = 2;
  v4 = objc_alloc_init(SBAssistantPresentationChangedSwitcherModifierEvent);
  [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v4];
}

- (void)assistantDidAppear:(id)appear
{
  self->_assistantPresentationState = 3;
  v4 = objc_alloc_init(SBAssistantPresentationChangedSwitcherModifierEvent);
  [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v4];
}

- (void)assistantWillDisappear:(id)disappear
{
  self->_assistantPresentationState = 1;
  v4 = objc_alloc_init(SBAssistantPresentationChangedSwitcherModifierEvent);
  [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v4];
}

- (void)assistantDidDisappear:(id)disappear
{
  self->_assistantPresentationState = 0;
  v4 = objc_alloc_init(SBAssistantPresentationChangedSwitcherModifierEvent);
  [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v4];
}

- (void)assistantDidChangePresentation:(id)presentation
{
  v4 = objc_alloc_init(SBAssistantPresentationChangedSwitcherModifierEvent);
  [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v4];
}

- (double)iconScaleForAppLayout:(id)layout
{
  v3 = [(SBFluidSwitcherViewController *)self iconViewForAppLayout:layout];
  v4 = v3;
  if (v3)
  {
    [v3 iconContentScale];
    v6 = v5;
  }

  else
  {
    v6 = 1.0;
  }

  return v6;
}

- (double)iconCornerRadiusForAppLayout:(id)layout
{
  v3 = [(SBFluidSwitcherViewController *)self iconViewForAppLayout:layout];
  v4 = v3;
  if (v3)
  {
    [v3 iconImageInfo];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (void)startTrackingHiddenIconZoomViewIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = objc_opt_class();
  v8 = neededCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v8;
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

  [v7 setPaused:1 forReason:0x40000000];
  [v7 addObserver:self];
}

- (void)stopTrackingHiddenIconZoomViewIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = objc_opt_class();
  v8 = neededCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v8;
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

  [v7 setPaused:0 forReason:0x40000000];
  [v7 removeObserver:self];
}

- (BOOL)isIconForIconZoomingView:(id)view displayedInLocations:(id)locations
{
  v24 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  locationsCopy = locations;
  v8 = objc_opt_class();
  v9 = viewCopy;
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

  if (v11)
  {
    _iconManager = [(SBFluidSwitcherViewController *)self _iconManager];
    icon = [v11 icon];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = locationsCopy;
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v15)
    {
      v16 = *v20;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v14);
          }

          if ([_iconManager isDisplayingIcon:icon inLocation:{*(*(&v19 + 1) + 8 * i), v19}])
          {
            LOBYTE(v15) = 1;
            goto LABEL_17;
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

- (id)iconZoomingViewContainerForIconZoomingView:(id)view
{
  viewCopy = view;
  v5 = objc_opt_class();
  v6 = viewCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
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

  v8 = v7;

  if (v8)
  {
    location = [v8 location];
    if ([location isEqualToString:*MEMORY[0x277CEBDF8]])
    {
      _iconManager = [(SBFluidSwitcherViewController *)self _iconManager];
      v11 = [_iconManager appPredictionsIconViewDisplayingIconView:v8 options:1];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)matchingIconZoomingViewForIconZoomingView:(id)view
{
  viewCopy = view;
  v5 = objc_opt_class();
  v6 = viewCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
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

  v8 = v7;

  if (v8)
  {
    dataSource = [(SBFluidSwitcherViewController *)self dataSource];
    v10 = dataSource;
    if ((*(&self->_dataSourceRespondsTo + 1) & 2) != 0)
    {
      v11 = [dataSource matchingIconViewForIconView:v8];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)shouldMatchMoveIconZoomingView:(id)view
{
  window = [view window];
  _floatingDockController = [(SBFluidSwitcherViewController *)self _floatingDockController];
  floatingDockWindow = [_floatingDockController floatingDockWindow];
  _homeScreenAppearanceController = [(SBFluidSwitcherViewController *)self _homeScreenAppearanceController];
  window2 = [_homeScreenAppearanceController window];
  v10 = window == window2 || window == floatingDockWindow;

  return v10;
}

- (id)iconLocationForAppLayout:(id)layout
{
  v5 = *MEMORY[0x277D666C8];
  v6 = [(SBFluidSwitcherViewController *)self iconViewForAppLayout:layout];
  v7 = v6;
  if (v6)
  {
    location = [v6 location];

    v5 = location;
  }

  return v5;
}

- (id)iconGridSizeClassForAppLayout:(id)layout
{
  v5 = *MEMORY[0x277D66508];
  v6 = [(SBFluidSwitcherViewController *)self iconViewForAppLayout:layout];
  v7 = v6;
  if (v6)
  {
    icon = [v6 icon];
    gridSizeClass = [icon gridSizeClass];

    v5 = gridSizeClass;
  }

  return v5;
}

- (BOOL)anyDisplayItemForAppLayoutOverlapsFloatingDock:(id)dock
{
  dockCopy = dock;
  if (+[SBFloatingDockController isFloatingDockSupported])
  {
    _floatingDockController = [(SBFluidSwitcherViewController *)self _floatingDockController];
    if ([_floatingDockController isFloatingDockPresented])
    {
      visibleItemContainers = self->_visibleItemContainers;
      anyLeafAppLayout = [dockCopy anyLeafAppLayout];
      v8 = [(NSMutableDictionary *)visibleItemContainers objectForKey:anyLeafAppLayout];

      if (v8)
      {
        [_floatingDockController floatingDockScreenPresentationFrame];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        window = [v8 window];
        window2 = [v8 window];
        superview = [v8 superview];
        layer = [v8 layer];
        presentationLayer = [layer presentationLayer];
        [presentationLayer frame];
        [superview convertRect:window toCoordinateSpace:?];
        [window2 _convertRectToSceneReferenceSpace:?];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;

        v32.origin.x = v10;
        v32.origin.y = v12;
        v32.size.width = v14;
        v32.size.height = v16;
        v33.origin.x = v23;
        v33.origin.y = v25;
        v33.size.width = v27;
        v33.size.height = v29;
        v30 = CGRectIntersectsRect(v32, v33);
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (void)noteIconZoomingViewWillZoomDown:(id)down
{
  downCopy = down;
  v5 = objc_opt_class();
  v9 = downCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v9;
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

  _iconManager = [(SBFluidSwitcherViewController *)self _iconManager];
  [_iconManager noteIconViewWillZoomDown:v7];
}

- (void)temporarilyHideMatchMovedZoomDownAnimationViewForIconView:(id)view
{
  viewCopy = view;
  allValues = [(NSMutableDictionary *)self->_hiddenIconViews allValues];
  if ([allValues containsObject:viewCopy])
  {
  }

  else
  {
    allValues2 = [(NSMutableDictionary *)self->_hiddenIconViewContainers allValues];
    v6 = [allValues2 containsObject:viewCopy];

    if (!v6)
    {
      goto LABEL_5;
    }
  }

  [(SBFluidSwitcherViewController *)self _temporarilyHideMatchMovedZoomDownAnimationViewAnimated:0];
LABEL_5:
}

- (double)windowLevelForModifierTimelineController:(id)controller
{
  view = [(SBFluidSwitcherViewController *)self view];
  window = [view window];
  [window windowLevel];
  v6 = v5 + *MEMORY[0x277D772B0] + 5.0 + 5.0 - (*MEMORY[0x277D772B0] + 5.0);

  return v6;
}

- (void)_reduceMotionStatusDidChange:(id)change
{
  v4 = objc_alloc_init(SBReduceMotionChangedSwitcherModifierEvent);
  [(SBFluidSwitcherViewController *)self _dispatchEventAndHandleAction:v4];
  [(SBFluidSwitcherViewController *)self _updateSwitcherBackdropViewPresence];
}

- (id)sourceLeafAppLayoutForCenterItem:(id)item
{
  itemCopy = item;
  v5 = +[SBApplicationController sharedInstance];
  v6 = [v5 applicationForDisplayItem:itemCopy];

  _dataStore = [v6 _dataStore];
  uniqueIdentifier = [itemCopy uniqueIdentifier];
  v9 = [_dataStore sceneStoreForIdentifier:uniqueIdentifier creatingIfNecessary:0];

  v10 = [v9 objectForKey:@"sourceSceneIdentifier"];
  if (!v10 || ([itemCopy uniqueIdentifier], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKey:", v11), v12 = objc_claimAutoreleasedReturnValue(), v11, !v12))
  {
    v14 = 0;
LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__16;
  v36 = __Block_byref_object_dispose__16;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__16;
  v30 = __Block_byref_object_dispose__16;
  v31 = 0;
  appLayouts = [(SBFluidSwitcherViewController *)self appLayouts];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __66__SBFluidSwitcherViewController_sourceLeafAppLayoutForCenterItem___block_invoke;
  v21 = &unk_2783AF1B0;
  v22 = itemCopy;
  v14 = v12;
  v23 = v14;
  v24 = &v32;
  v25 = &v26;
  [appLayouts enumerateObjectsUsingBlock:&v18];

  if (v33[5] && (v15 = v27[5]) != 0)
  {
    v12 = [v15 leafAppLayoutForItem:{v18, v19, v20, v21, v22}];
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  if (v16)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v12;
}

void __66__SBFluidSwitcherViewController_sourceLeafAppLayoutForCenterItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__SBFluidSwitcherViewController_sourceLeafAppLayoutForCenterItem___block_invoke_2;
  v8[3] = &unk_2783AF188;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(a1 + 48);
  v7 = v6;
  v11 = v7;
  [v7 enumerate:v8];
  if (*(*(*(a1 + 48) + 8) + 40) && *(*(*(a1 + 56) + 8) + 40))
  {
    *a4 = 1;
  }
}

void __66__SBFluidSwitcherViewController_sourceLeafAppLayoutForCenterItem___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  v7 = [*(a1 + 32) type];
  if (v7 == [v10 type])
  {
    v8 = [v10 uniqueIdentifier];
    v9 = [v8 hasSuffix:*(a1 + 40)];

    if (v9)
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 48));
      *a4 = 1;
    }
  }
}

- (void)_forLoggingOnly_enumerateQueryResponderChainStartingAtModifier:(id)modifier usingBlock:(id)block
{
  blockCopy = block;
  nextQueryModifier = [modifier nextQueryModifier];
  v14 = 0;
  if (!nextQueryModifier)
  {
    goto LABEL_13;
  }

  nextQueryModifier2 = nextQueryModifier;
  v8 = 0;
  while (1)
  {
    v9 = nextQueryModifier2;
    blockCopy[2](blockCopy, nextQueryModifier2, v8, &v14);
    nextQueryModifier2 = [nextQueryModifier2 nextQueryModifier];

    v10 = v14;
    if (v14)
    {
      goto LABEL_6;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    v10 = v14;
LABEL_6:
    if (nextQueryModifier2)
    {
      ++v8;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_12;
  }

  v11 = SBLogAppSwitcher();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [(SBFluidSwitcherViewController *)&v12 _forLoggingOnly_enumerateQueryResponderChainStartingAtModifier:v13 usingBlock:v11];
  }

LABEL_12:
LABEL_13:
}

- (BOOL)_isPointValid:(CGPoint)valid
{
  IsValid = CGFloatIsValid();
  if (IsValid)
  {

    LOBYTE(IsValid) = CGFloatIsValid();
  }

  return IsValid;
}

- (BOOL)_isFrameValid:(CGRect)valid
{
  if (!BSFloatGreaterThanFloat() || !BSFloatGreaterThanFloat() || !CGFloatIsValid())
  {
    return 0;
  }

  return CGFloatIsValid();
}

- (id)_modifierViolatingTest:(id)test forFrameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  testCopy = test;
  layoutCopy = layout;
  [(SBSwitcherPersonality *)self->_personality frameForLayoutRole:role inAppLayout:layoutCopy withBounds:x, y, width, height];
  if (testCopy[2](testCopy))
  {
    v15 = 0;
  }

  else
  {
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3032000000;
    v28[3] = __Block_byref_object_copy__16;
    v28[4] = __Block_byref_object_dispose__16;
    v29 = 0;
    personality = self->_personality;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __101__SBFluidSwitcherViewController__modifierViolatingTest_forFrameForLayoutRole_inAppLayout_withBounds___block_invoke;
    v19[3] = &unk_2783AF1D8;
    v21 = testCopy;
    roleCopy = role;
    v24 = x;
    v25 = y;
    v26 = width;
    v27 = height;
    v20 = layoutCopy;
    v22 = v28;
    [(SBFluidSwitcherViewController *)self _forLoggingOnly_enumerateQueryResponderChainStartingAtModifier:personality usingBlock:v19];
    v17 = objc_opt_class();
    v15 = NSStringFromClass(v17);

    _Block_object_dispose(v28, 8);
  }

  return v15;
}

void __101__SBFluidSwitcherViewController__modifierViolatingTest_forFrameForLayoutRole_inAppLayout_withBounds___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 40);
  v9 = v7;
  [v7 frameForLayoutRole:*(a1 + 56) inAppLayout:*(a1 + 32) withBounds:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  if ((*(v8 + 16))(v8))
  {
    *a4 = 1;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }
}

- (id)_modifierViolatingTest:(id)test forFrameForIndex:(int64_t)index
{
  testCopy = test;
  [(SBSwitcherPersonality *)self->_personality frameForIndex:index];
  if (testCopy[2](testCopy))
  {
    v7 = 0;
  }

  else
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = __Block_byref_object_copy__16;
    v15[4] = __Block_byref_object_dispose__16;
    v16 = 0;
    personality = self->_personality;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __73__SBFluidSwitcherViewController__modifierViolatingTest_forFrameForIndex___block_invoke;
    v11[3] = &unk_2783AF200;
    v13 = v15;
    indexCopy = index;
    v12 = testCopy;
    [(SBFluidSwitcherViewController *)self _forLoggingOnly_enumerateQueryResponderChainStartingAtModifier:personality usingBlock:v11];
    v9 = objc_opt_class();
    v7 = NSStringFromClass(v9);

    _Block_object_dispose(v15, 8);
  }

  return v7;
}

void __73__SBFluidSwitcherViewController__modifierViolatingTest_forFrameForIndex___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a1[4];
  v9 = v7;
  [v7 frameForIndex:a1[6]];
  if ((*(v8 + 16))(v8))
  {
    *a4 = 1;
  }

  else
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
  }
}

- (id)_modifierViolatingTest:(id)test forAnchorPointForIndex:(int64_t)index
{
  testCopy = test;
  [(SBSwitcherPersonality *)self->_personality anchorPointForIndex:index];
  if (testCopy[2](testCopy))
  {
    v7 = 0;
  }

  else
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = __Block_byref_object_copy__16;
    v15[4] = __Block_byref_object_dispose__16;
    v16 = 0;
    personality = self->_personality;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __79__SBFluidSwitcherViewController__modifierViolatingTest_forAnchorPointForIndex___block_invoke;
    v11[3] = &unk_2783AF200;
    v13 = v15;
    indexCopy = index;
    v12 = testCopy;
    [(SBFluidSwitcherViewController *)self _forLoggingOnly_enumerateQueryResponderChainStartingAtModifier:personality usingBlock:v11];
    v9 = objc_opt_class();
    v7 = NSStringFromClass(v9);

    _Block_object_dispose(v15, 8);
  }

  return v7;
}

void __79__SBFluidSwitcherViewController__modifierViolatingTest_forAnchorPointForIndex___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a1[4];
  v9 = v7;
  [v7 anchorPointForIndex:a1[6]];
  if ((*(v8 + 16))(v8))
  {
    *a4 = 1;
  }

  else
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
  }
}

- (id)_modifierViolatingValidFloatForScaleForIndex:(int64_t)index
{
  [(SBSwitcherPersonality *)self->_personality scaleForIndex:?];
  if (CGFloatIsValid())
  {
    v5 = 0;
  }

  else
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x3032000000;
    v10[3] = __Block_byref_object_copy__16;
    v10[4] = __Block_byref_object_dispose__16;
    v11 = 0;
    personality = self->_personality;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __78__SBFluidSwitcherViewController__modifierViolatingValidFloatForScaleForIndex___block_invoke;
    v9[3] = &unk_2783AF228;
    v9[4] = v10;
    v9[5] = index;
    [(SBFluidSwitcherViewController *)self _forLoggingOnly_enumerateQueryResponderChainStartingAtModifier:personality usingBlock:v9];
    v7 = objc_opt_class();
    v5 = NSStringFromClass(v7);
    _Block_object_dispose(v10, 8);
  }

  return v5;
}

void __78__SBFluidSwitcherViewController__modifierViolatingValidFloatForScaleForIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  [v7 scaleForIndex:*(a1 + 40)];
  if (CGFloatIsValid())
  {
    *a4 = 1;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (id)_modifierViolatingValidFloatForScaleForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  [(SBSwitcherPersonality *)self->_personality scaleForLayoutRole:role inAppLayout:layoutCopy];
  if (CGFloatIsValid())
  {
    v7 = 0;
  }

  else
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = __Block_byref_object_copy__16;
    v15[4] = __Block_byref_object_dispose__16;
    v16 = 0;
    personality = self->_personality;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __95__SBFluidSwitcherViewController__modifierViolatingValidFloatForScaleForLayoutRole_inAppLayout___block_invoke;
    v11[3] = &unk_2783AF250;
    roleCopy = role;
    v12 = layoutCopy;
    v13 = v15;
    [(SBFluidSwitcherViewController *)self _forLoggingOnly_enumerateQueryResponderChainStartingAtModifier:personality usingBlock:v11];
    v9 = objc_opt_class();
    v7 = NSStringFromClass(v9);

    _Block_object_dispose(v15, 8);
  }

  return v7;
}

void __95__SBFluidSwitcherViewController__modifierViolatingValidFloatForScaleForLayoutRole_inAppLayout___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  [v7 scaleForLayoutRole:a1[6] inAppLayout:a1[4]];
  if (CGFloatIsValid())
  {
    *a4 = 1;
  }

  else
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
  }
}

- (id)_modifierViolatingTest:(id)test forPerspectiveAngleForIndex:(int64_t)index
{
  testCopy = test;
  [(SBSwitcherPersonality *)self->_personality perspectiveAngleForIndex:index];
  if (testCopy[2](testCopy))
  {
    v7 = 0;
  }

  else
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = __Block_byref_object_copy__16;
    v15[4] = __Block_byref_object_dispose__16;
    v16 = 0;
    personality = self->_personality;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __84__SBFluidSwitcherViewController__modifierViolatingTest_forPerspectiveAngleForIndex___block_invoke;
    v11[3] = &unk_2783AF200;
    v13 = v15;
    indexCopy = index;
    v12 = testCopy;
    [(SBFluidSwitcherViewController *)self _forLoggingOnly_enumerateQueryResponderChainStartingAtModifier:personality usingBlock:v11];
    v9 = objc_opt_class();
    v7 = NSStringFromClass(v9);

    _Block_object_dispose(v15, 8);
  }

  return v7;
}

void __84__SBFluidSwitcherViewController__modifierViolatingTest_forPerspectiveAngleForIndex___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a1[4];
  v9 = v7;
  [v7 perspectiveAngleForIndex:a1[6]];
  if ((*(v8 + 16))(v8))
  {
    *a4 = 1;
  }

  else
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
  }
}

- (id)_modifierViolatingTest:(id)test forPerspectiveAngleForLayoutRole:(int64_t)role inAppLayout:(id)layout withPerspectiveAngle:(CGPoint)angle
{
  y = angle.y;
  x = angle.x;
  testCopy = test;
  layoutCopy = layout;
  [(SBSwitcherPersonality *)self->_personality perspectiveAngleForLayoutRole:role inAppLayout:layoutCopy withPerspectiveAngle:x, y];
  if (testCopy[2](testCopy))
  {
    v13 = 0;
  }

  else
  {
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x3032000000;
    v24[3] = __Block_byref_object_copy__16;
    v24[4] = __Block_byref_object_dispose__16;
    v25 = 0;
    personality = self->_personality;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __122__SBFluidSwitcherViewController__modifierViolatingTest_forPerspectiveAngleForLayoutRole_inAppLayout_withPerspectiveAngle___block_invoke;
    v17[3] = &unk_2783AF278;
    v19 = testCopy;
    roleCopy = role;
    v22 = x;
    v23 = y;
    v18 = layoutCopy;
    v20 = v24;
    [(SBFluidSwitcherViewController *)self _forLoggingOnly_enumerateQueryResponderChainStartingAtModifier:personality usingBlock:v17];
    v15 = objc_opt_class();
    v13 = NSStringFromClass(v15);

    _Block_object_dispose(v24, 8);
  }

  return v13;
}

void __122__SBFluidSwitcherViewController__modifierViolatingTest_forPerspectiveAngleForLayoutRole_inAppLayout_withPerspectiveAngle___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 40);
  v9 = v7;
  [v7 perspectiveAngleForLayoutRole:*(a1 + 56) inAppLayout:*(a1 + 32) withPerspectiveAngle:{*(a1 + 64), *(a1 + 72)}];
  if ((*(v8 + 16))(v8))
  {
    *a4 = 1;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }
}

- (BOOL)shouldMorphToPIPForTransitionContext:(id)context
{
  contextCopy = context;
  dataSource = [(SBFluidSwitcherViewController *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v6 = [dataSource switcherContentController:self shouldMorphToPIPForTransitionContext:contextCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)iconViewForAppLayout:(id)layout
{
  v4 = [(SBFluidSwitcherViewController *)self activatingDisplayItemForAppLayout:layout];
  v5 = [(SBFluidSwitcherViewController *)self _iconViewForDisplayItem:v4 isVisible:0];

  return v5;
}

- (CGRect)iconImageFrameForAppLayout:(id)layout
{
  v18 = 1;
  v4 = [(SBFluidSwitcherViewController *)self activatingDisplayItemForAppLayout:layout];
  v5 = [(SBFluidSwitcherViewController *)self _iconViewForDisplayItem:v4 isVisible:&v18];

  if (v18 == 1)
  {
    [(SBFluidSwitcherViewController *)self _iconImageFrameForIconView:v5];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = *MEMORY[0x277CBF398];
    v9 = *(MEMORY[0x277CBF398] + 8);
    v11 = *(MEMORY[0x277CBF398] + 16);
    v13 = *(MEMORY[0x277CBF398] + 24);
  }

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)_webClipIdentifierForAppClipBundleIdentifier:(id)identifier sceneIdentifier:(id)sceneIdentifier
{
  v5 = MEMORY[0x277D0AC98];
  sceneIdentifierCopy = sceneIdentifier;
  v7 = [v5 storeForApplication:identifier];
  v8 = [v7 sceneStoreForIdentifier:sceneIdentifierCopy creatingIfNecessary:0];

  v9 = [v8 objectForKey:@"appClipIdentifier"];

  return v9;
}

- (id)_iconForWorkspaceEntity:(id)entity
{
  entityCopy = entity;
  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  homeScreenController = [_sbWindowScene homeScreenController];
  iconManager = [homeScreenController iconManager];

  iconModel = [iconManager iconModel];
  v9 = [entityCopy objectForActivationSetting:46];
  if (v9)
  {
    iconIdentifier = v9;
    goto LABEL_14;
  }

  if (![entityCopy isDeviceApplicationSceneEntity] || (objc_msgSend(entityCopy, "deviceApplicationSceneEntity"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "sceneHandle"), v12 = objc_claimAutoreleasedReturnValue(), v11, objc_msgSend(v12, "lastActivationIconLeafIdentifier"), iconIdentifier = objc_claimAutoreleasedReturnValue(), v12, !iconIdentifier))
  {
    if ([entityCopy isApplicationSceneEntity])
    {
      applicationSceneEntity = [entityCopy applicationSceneEntity];
      application = [applicationSceneEntity application];
      info = [application info];
      isAppClip = [info isAppClip];

      if (!isAppClip)
      {
        iconIdentifier = [application iconIdentifier];
        goto LABEL_12;
      }

      bundleIdentifier = [application bundleIdentifier];
      sceneHandle = [applicationSceneEntity sceneHandle];
      sceneIdentifier = [sceneHandle sceneIdentifier];
      iconIdentifier = [(SBFluidSwitcherViewController *)self _webClipIdentifierForAppClipBundleIdentifier:bundleIdentifier sceneIdentifier:sceneIdentifier];

LABEL_10:
LABEL_12:

      goto LABEL_14;
    }

    if ([entityCopy isAppClipPlaceholderEntity])
    {
      applicationSceneEntity = [entityCopy appClipPlaceholderEntity];
      application = [applicationSceneEntity bundleIdentifier];
      bundleIdentifier = [applicationSceneEntity futureSceneIdentifier];
      iconIdentifier = [(SBFluidSwitcherViewController *)self _webClipIdentifierForAppClipBundleIdentifier:application sceneIdentifier:bundleIdentifier];
      goto LABEL_10;
    }

    iconIdentifier = 0;
  }

LABEL_14:
  v20 = [iconModel leafIconForIdentifier:iconIdentifier];
  v21 = +[SBAppSwitcherDomain rootSettings];
  animationSettings = [v21 animationSettings];

  gridSizeClass = [v20 gridSizeClass];
  if (!gridSizeClass)
  {
    goto LABEL_23;
  }

  _mediumGridSizeClassesForIconZoom = [objc_opt_class() _mediumGridSizeClassesForIconZoom];
  if ([_mediumGridSizeClassesForIconZoom containsGridSizeClass:gridSizeClass])
  {
    allowIconZoomFromMediumWidgets = [animationSettings allowIconZoomFromMediumWidgets];

    if (!allowIconZoomFromMediumWidgets)
    {
LABEL_21:
      _largeGridSizeClassesForIconZoom = v20;
      v20 = 0;
      goto LABEL_22;
    }
  }

  else
  {
  }

  _largeGridSizeClassesForIconZoom = [objc_opt_class() _largeGridSizeClassesForIconZoom];
  if ([_largeGridSizeClassesForIconZoom containsGridSizeClass:gridSizeClass])
  {
    allowIconZoomFromLargeWidgets = [animationSettings allowIconZoomFromLargeWidgets];

    if (allowIconZoomFromLargeWidgets)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

LABEL_22:

LABEL_23:

  return v20;
}

void __74__SBFluidSwitcherViewController_Common___mediumGridSizeClassesForIconZoom__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277D661B8]);
  v1 = [v0 initWithGridSizeClass:*MEMORY[0x277D66520]];
  v2 = _mediumGridSizeClassesForIconZoom_gridSizeClasses;
  _mediumGridSizeClassesForIconZoom_gridSizeClasses = v1;
}

void __73__SBFluidSwitcherViewController_Common___largeGridSizeClassesForIconZoom__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277D661B8]);
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D66518], *MEMORY[0x277D66528], *MEMORY[0x277D66510], 0}];
  v1 = [v0 initWithGridSizeClasses:v3];
  v2 = _largeGridSizeClassesForIconZoom_gridSizeClasses;
  _largeGridSizeClassesForIconZoom_gridSizeClasses = v1;
}

- (id)_floatingDockIconLocationForTransitionSource:(int64_t)source
{
  if (source == 24)
  {
    v3 = MEMORY[0x277D66690];
  }

  else if (source == 25)
  {
    v3 = &SBIconLocationFloatingDockSuggestions;
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBFluidSwitcherViewController+Common.m" lineNumber:144 description:@"_floatingDockIconLocationForTransitionRequestSource: source must be a transition request from the dock"];

    v3 = MEMORY[0x277D666C8];
  }

  v7 = *v3;

  return v7;
}

- (id)_workspaceEntityForBundleIdentifier:(id)identifier inTransitionContext:(id)context
{
  identifierCopy = identifier;
  contextCopy = context;
  v7 = [contextCopy applicationSceneEntityForBundleID:identifierCopy];
  if (v7 || ([contextCopy previousApplicationSceneEntityForBundleID:identifierCopy], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
LABEL_3:
    v8 = v7;
    goto LABEL_4;
  }

  v10 = +[SBApplicationController sharedInstance];
  v11 = [v10 applicationWithBundleIdentifier:identifierCopy];

  v8 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationForMainDisplay:v11];
  if (!v8)
  {
    v7 = [contextCopy appClipPlaceholderEntityForBundleID:identifierCopy];
    if (!v7)
    {
      v7 = [contextCopy previousAppClipPlaceholderEntityForBundleID:identifierCopy];
    }

    goto LABEL_3;
  }

LABEL_4:

  return v8;
}

- (id)iconForDisplayItem:(id)item
{
  itemCopy = item;
  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  homeScreenController = [_sbWindowScene homeScreenController];
  iconManager = [homeScreenController iconManager];

  layoutContext = [(SBFluidSwitcherViewController *)self layoutContext];
  bundleIdentifier = [itemCopy bundleIdentifier];
  if ([itemCopy type])
  {
    if ([itemCopy type] == 5)
    {
      iconModel = [iconManager iconModel];
      webClipIdentifier = [itemCopy webClipIdentifier];
      v12 = [iconModel leafIconForIdentifier:webClipIdentifier];

      goto LABEL_10;
    }

    if ([itemCopy type] == 8)
    {
      iconModel = [(SBFluidSwitcherViewController *)self _iconViewForDisplayItem:itemCopy isVisible:0];
      [iconModel icon];
    }

    else
    {
      iconModel = [iconManager iconModel];
      [iconModel leafIconForIdentifier:bundleIdentifier];
    }
    v14 = ;
  }

  else
  {
    activeTransitionContext = [layoutContext activeTransitionContext];
    iconModel = [(SBFluidSwitcherViewController *)self _workspaceEntityForBundleIdentifier:bundleIdentifier inTransitionContext:activeTransitionContext];

    v14 = [(SBFluidSwitcherViewController *)self _iconForWorkspaceEntity:iconModel];
  }

  v12 = v14;
LABEL_10:

  return v12;
}

- (id)_iconViewForDisplayItem:(id)item isVisible:(BOOL *)visible
{
  v67 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
  floatingDockController = [_sbWindowScene floatingDockController];
  floatingDockViewController = [floatingDockController floatingDockViewController];
  if (![itemCopy isAppLibraryDisplayItem] || !objc_msgSend(floatingDockViewController, "isLibraryPodIconEnabled"))
  {
    homeScreenController = [_sbWindowScene homeScreenController];
    iconManager = [homeScreenController iconManager];

    layoutContext = [(SBFluidSwitcherViewController *)self layoutContext];
    activeTransitionContext = [layoutContext activeTransitionContext];
    bundleIdentifier = [itemCopy bundleIdentifier];
    v60 = activeTransitionContext;
    v15 = [(SBFluidSwitcherViewController *)self _workspaceEntityForBundleIdentifier:bundleIdentifier inTransitionContext:activeTransitionContext];
    visibleCopy = visible;
    if ([itemCopy type])
    {
      v58 = _sbWindowScene;
      v16 = v15;
      type = [itemCopy type];
      iconModel = [iconManager iconModel];
      v19 = iconModel;
      if (type == 5)
      {
        [itemCopy webClipIdentifier];
        v21 = v20 = bundleIdentifier;
        v22 = [v19 leafIconForIdentifier:v21];

        bundleIdentifier = v20;
      }

      else
      {
        v22 = [iconModel leafIconForIdentifier:bundleIdentifier];
      }

      v15 = v16;
      _sbWindowScene = v58;
      if (v22)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v22 = [(SBFluidSwitcherViewController *)self _iconForWorkspaceEntity:v15];
      if (v22)
      {
LABEL_13:
        v56 = v22;
        v57 = floatingDockController;
        v52 = bundleIdentifier;
        v54 = floatingDockViewController;
        if (v15)
        {
          if ([v15 isApplicationSceneEntity])
          {
            sceneHandle = [v15 sceneHandle];
            lastActivationSource = [sceneHandle lastActivationSource];
          }

          else
          {
            lastActivationSource = 0;
          }

          v26 = ([v15 BOOLForActivationSetting:{26, v52}] & 1) != 0 || SBSpotlightIsVisible();
          v27 = [v15 BOOLForActivationSetting:28];
          v25 = (v26 | v27 | [v15 BOOLForActivationSetting:27]) ^ 1;
        }

        else
        {
          lastActivationSource = 0;
          v25 = 1;
        }

        [(SBFluidSwitcherViewController *)self _iconLocationsForActivationSource:lastActivationSource, v52];
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v28 = v65 = 0u;
        v29 = [v28 countByEnumeratingWithState:&v62 objects:v66 count:16];
        v59 = iconManager;
        if (v29)
        {
          v30 = v29;
          v31 = *v63;
          while (2)
          {
            for (i = 0; i != v30; ++i)
            {
              if (*v63 != v31)
              {
                objc_enumerationMutation(v28);
              }

              if (SBIconLocationGroupContainsLocation())
              {

                goto LABEL_32;
              }
            }

            v30 = [v28 countByEnumeratingWithState:&v62 objects:v66 count:16];
            if (v30)
            {
              continue;
            }

            break;
          }
        }

        layoutState = [layoutContext layoutState];
        [layoutState unlockedEnvironmentMode];

LABEL_32:
        if (([_sbWindowScene isMainDisplayWindowScene] & 1) != 0 || objc_msgSend(_sbWindowScene, "isContinuityDisplayWindowScene"))
        {
          v34 = SBIconViewQueryingBestIconViewForIcon();
        }

        else
        {
          if ([v54 isPresentingLibrary])
          {
            modalLibraryController = [_sbWindowScene modalLibraryController];
            libraryViewController = [modalLibraryController libraryViewController];
            v35 = [libraryViewController firstIconViewForIcon:v22];

            goto LABEL_36;
          }

          v34 = [v57 firstIconViewForIcon:v22];
        }

        v35 = v34;
LABEL_36:
        window = [v35 window];
        if (v35)
        {
          v37 = window != 0;
        }

        else
        {
          v37 = v25;
        }

        viewController = [v57 viewController];
        view = [viewController view];
        window2 = [view window];

        if (window == window2)
        {
          transitioningFromLayoutState = [layoutContext transitioningFromLayoutState];
          interfaceOrientation = [transitioningFromLayoutState interfaceOrientation];

          transitioningToLayoutState = [layoutContext transitioningToLayoutState];
          interfaceOrientation2 = [transitioningToLayoutState interfaceOrientation];

          v37 &= interfaceOrientation == interfaceOrientation2;
        }

        v45 = objc_opt_self();
        v22 = v56;
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          applicationBundleID = [v56 applicationBundleID];
          v48 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:applicationBundleID];
          v37 &= [v48 isHidden] ^ 1;
        }

        floatingDockController = v57;
        floatingDockViewController = v54;
        if (visibleCopy)
        {
          *visibleCopy = v37 & 1;
        }

        libraryPodIconViewIfLoaded = v35;

        iconManager = v59;
        bundleIdentifier = v53;
        goto LABEL_46;
      }
    }

    libraryPodIconViewIfLoaded = 0;
LABEL_46:

    goto LABEL_47;
  }

  if (visible)
  {
    *visible = 1;
  }

  libraryPodIconViewIfLoaded = [floatingDockViewController libraryPodIconViewIfLoaded];
LABEL_47:

  return libraryPodIconViewIfLoaded;
}

- (id)_iconLocationsForActivationSource:(int64_t)source
{
  v3 = 0;
  v18[1] = *MEMORY[0x277D85DE8];
  if (source > 39)
  {
    if (source <= 41)
    {
      if (source == 40)
      {
        v13 = *MEMORY[0x277D66660];
        v4 = MEMORY[0x277CBEA60];
        v5 = &v13;
      }

      else
      {
        v14 = *MEMORY[0x277D66668];
        v4 = MEMORY[0x277CBEA60];
        v5 = &v14;
      }
    }

    else
    {
      switch(source)
      {
        case '*':
          v15 = *MEMORY[0x277D66670];
          v4 = MEMORY[0x277CBEA60];
          v5 = &v15;
          break;
        case '.':
          v10 = *MEMORY[0x277D666D8];
          v4 = MEMORY[0x277CBEA60];
          v5 = &v10;
          break;
        case '/':
          v18[0] = *MEMORY[0x277CEBDF8];
          v4 = MEMORY[0x277CBEA60];
          v5 = v18;
          break;
        default:
          goto LABEL_25;
      }
    }

    goto LABEL_23;
  }

  if (source > 24)
  {
    switch(source)
    {
      case 25:
        v17 = @"SBIconLocationFloatingDockSuggestions";
        v4 = MEMORY[0x277CBEA60];
        v5 = &v17;
        break;
      case 38:
        v12 = *MEMORY[0x277D66650];
        v4 = MEMORY[0x277CBEA60];
        v5 = &v12;
        break;
      case 39:
        v11 = *MEMORY[0x277D66680];
        v4 = MEMORY[0x277CBEA60];
        v5 = &v11;
        break;
      default:
        goto LABEL_25;
    }

LABEL_23:
    v7 = 1;
    goto LABEL_24;
  }

  if (source != 1)
  {
    if (source != 24)
    {
      goto LABEL_25;
    }

    v16 = *MEMORY[0x277D66690];
    v4 = MEMORY[0x277CBEA60];
    v5 = &v16;
    goto LABEL_23;
  }

  v6 = *MEMORY[0x277D66698];
  v9[0] = *MEMORY[0x277D666D0];
  v9[1] = v6;
  v9[2] = *MEMORY[0x277D66688];
  v4 = MEMORY[0x277CBEA60];
  v5 = v9;
  v7 = 3;
LABEL_24:
  v3 = [v4 arrayWithObjects:v5 count:v7];
LABEL_25:

  return v3;
}

- (CGRect)_iconImageFrameForIconView:(id)view
{
  if (view)
  {
    viewCopy = view;
    _sbWindowScene = [(SBFluidSwitcherViewController *)self _sbWindowScene];
    homeScreenController = [_sbWindowScene homeScreenController];

    homeScreenScalingView = [homeScreenController homeScreenScalingView];
    v8 = homeScreenScalingView;
    memset(&v28[1], 0, sizeof(CGAffineTransform));
    if (homeScreenScalingView)
    {
      [homeScreenScalingView transform];
    }

    v9 = *(MEMORY[0x277CBF2C0] + 16);
    *&v28[0].a = *MEMORY[0x277CBF2C0];
    *&v28[0].c = v9;
    *&v28[0].tx = *(MEMORY[0x277CBF2C0] + 32);
    [v8 setTransform:v28];
    view = [(SBFluidSwitcherViewController *)self view];
    [viewCopy iconImageFrame];
    [view convertRect:viewCopy fromView:?];

    [viewCopy iconImageFrame];
    view2 = [(SBFluidSwitcherViewController *)self view];
    SBRectWithSize();
    [view2 convertRect:viewCopy fromView:?];
    v13 = v12;
    v15 = v14;

    [viewCopy iconContentScale];
    v17 = v16;

    CGAffineTransformMakeScale(v28, v17, v17);
    v18 = v15 * v28[0].c + v28[0].a * v13;
    v19 = v15 * v28[0].d + v28[0].b * v13;
    UIRectGetCenter();
    v21 = v20 - v19 * 0.5;
    v23 = v22 - v18 * 0.5;
    v28[0] = v28[1];
    [v8 setTransform:v28];
  }

  else
  {
    v23 = *MEMORY[0x277CBF398];
    v21 = *(MEMORY[0x277CBF398] + 8);
    v18 = *(MEMORY[0x277CBF398] + 16);
    v19 = *(MEMORY[0x277CBF398] + 24);
  }

  v24 = v23;
  v25 = v21;
  v26 = v18;
  v27 = v19;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (void)initWithPersonality:liveContentOverlayCoordinator:dataSource:delegate:debugName:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"personality" object:? file:? lineNumber:? description:?];
}

- (void)initWithPersonality:liveContentOverlayCoordinator:dataSource:delegate:debugName:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"liveContentOverlayCoordinator" object:? file:? lineNumber:? description:?];
}

- (void)appLayoutByBringingItemToFront:inAppLayout:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)handleFluidSwitcherGestureManager:didBeginGesture:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"gesture != nil" object:? file:? lineNumber:? description:?];
}

- (void)handleFluidSwitcherGestureManager:didBeginGesture:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v4 = *(v3 + 1344);
  v5 = SBStringForFluidSwitcherGestureType([v2 type]);
  v6 = [v1 activeGesture];
  v7 = SBStringForFluidSwitcherGestureType([v6 type]);
  [v8 handleFailureInMethod:v0 object:v3 file:@"SBFluidSwitcherViewController.m" lineNumber:2301 description:{@"[%@] Only one gesture at a time. Can't begin %@ while %@ is still active", v4, v5, v7}];
}

- (void)handleFluidSwitcherGestureManager:didUpdateGesture:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"gesture != nil" object:? file:? lineNumber:? description:?];
}

- (void)handleFluidSwitcherGestureManager:didUpdateGesture:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[gesture isEqual:[[self layoutContext] activeGesture]]" object:? file:? lineNumber:? description:?];
}

- (void)handleFluidSwitcherGestureManager:didEndGesture:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"gesture != nil" object:? file:? lineNumber:? description:?];
}

- (void)handleFluidSwitcherGestureManager:didEndGesture:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[gesture isEqual:[[self layoutContext] activeGesture]]" object:? file:? lineNumber:? description:?];
}

- (void)historianModifier:didRecordEntry:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)leadingStatusBarStyleRequest
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)trailingStatusBarStyleRequest
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)addLiveContentOverlay:forAppLayout:animated:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_10_0();
  v3 = NSStringFromClass(v2);
  [OUTLINED_FUNCTION_0_12(v3 v4];
}

- (void)addLiveContentOverlay:forAppLayout:animated:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_10_0();
  v3 = NSStringFromClass(v2);
  [OUTLINED_FUNCTION_0_12(v3 v4];
}

- (void)moveExistingLiveContentOverlay:forAppLayout:toAppLayout:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_10_0();
  v3 = NSStringFromClass(v2);
  [OUTLINED_FUNCTION_0_12(v3 v4];
}

- (void)moveExistingLiveContentOverlay:forAppLayout:toAppLayout:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_10_0();
  v3 = NSStringFromClass(v2);
  [OUTLINED_FUNCTION_0_12(v3 v4];
}

- (void)liveContentOverlayDidUpdateHomeAffordanceEdgeProtectOrAutoHide:(id *)a1 .cold.1(id *a1)
{
  [*a1 count];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)_layoutAppLayout:(void *)a1 roles:(const char *)a2 completion:.cold.1(void *a1, const char *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"roles", v5, v7];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a2);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    OUTLINED_FUNCTION_9_0();
    v14 = @"SBFluidSwitcherViewController.m";
    v15 = 1024;
    v16 = 4994;
    v17 = v12;
    v18 = v8;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_layoutAppLayout:(const char *)a1 roles:completion:.cold.2(const char *a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v13 = NSStringFromClass(v3);
  v4 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, @"roles", v13, v14);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_removeVisibleItemContainerForAppLayout:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_appLayoutFromLayoutElement:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  [a2 switcherLayoutElementType];
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)_applyStyleToAppLayout:(void *)a1 roles:(const char *)a2 completion:.cold.1(void *a1, const char *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"roles", v5, v7];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a2);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    OUTLINED_FUNCTION_9_0();
    v14 = @"SBFluidSwitcherViewController.m";
    v15 = 1024;
    v16 = 7775;
    v17 = v12;
    v18 = v8;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_applyStyleToAppLayout:(const char *)a1 roles:completion:.cold.2(const char *a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v13 = NSStringFromClass(v3);
  v4 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, @"roles", v13, v14);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)overlayAccessoryView:(void *)a1 didSelectHeaderForRole:.cold.1(void *a1)
{
  v1 = [a1 debugDescription];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)itemContainer:(void *)a1 didSelectTitleForRole:.cold.1(void *a1)
{
  v1 = [a1 debugDescription];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)isAppLayoutMostRecentRepresentationOfDisplayItems:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"appLayout" object:? file:? lineNumber:? description:?];
}

- (void)_acquireKeyboardSuppressionAssertionForMode:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_setupMorphAnimatorIfNeededForEntity:(uint64_t)a3 pipCoordinator:appLayout:appLayoutBoundingBox:uniqueID:direction:gestureInitiated:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBFluidSwitcherViewController.m" lineNumber:10733 description:{@"An SBPIPMorphAnimatorController for pid %ui was not found.", a3}];
}

- (void)_setupMorphAnimatorIfNeededForEntity:(uint64_t)a3 pipCoordinator:appLayout:appLayoutBoundingBox:uniqueID:direction:gestureInitiated:.cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBFluidSwitcherViewController.m" lineNumber:10727 description:{@"An SBPIPMorphAnimatorController for pid %ui is already running, can't create new one.", a3}];
}

- (void)_dispatchEventAndHandleAction:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"event" object:? file:? lineNumber:? description:?];
}

- (void)_handleEventResponse:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"response" object:? file:? lineNumber:? description:?];
}

- (void)_performEventResponse:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"response" object:? file:? lineNumber:? description:?];
}

- (void)_performModifierIconOverlayVisibilityUpdateResponse:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:0 object:? file:? lineNumber:? description:?];
}

- (void)_performModifierMatchMoveToDropletResponse:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_performActionForPreludeAnimationTokenActionResponse:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_convertWindowDragEvent:fromSwitcherContentViewController:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __66__SBFluidSwitcherViewController__ensureForegroundScenesAreVisible__block_invoke_cold_1(void *a1)
{
  v6 = [a1 sceneIdentifier];
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)_forLoggingOnly_enumerateQueryResponderChainStartingAtModifier:(os_log_t)log usingBlock:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "Stopped before continuing on to SBDefaultImplementationsSwitcherModifier", buf, 2u);
}

@end