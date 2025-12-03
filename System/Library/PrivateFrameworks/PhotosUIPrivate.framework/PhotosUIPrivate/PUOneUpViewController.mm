@interface PUOneUpViewController
+ (NSString)oneUpActivityTitle;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)playerCurrentTimeForActionPerformer:(SEL)performer;
- (BOOL)_allowsShowingVisualIntelligenceForAsset:(id)asset;
- (BOOL)_allowsVisualLookupInInfoPanelMode;
- (BOOL)_canAdvertiseKeyCommands;
- (BOOL)_canAttemptNavigationToAssetDisplayDescriptor:(id)descriptor;
- (BOOL)_canShowAccessoryViewForCurrentAsset;
- (BOOL)_enablePockets;
- (BOOL)_isAccessoryAvailableForCurrentAsset;
- (BOOL)_isAccessoryVisible;
- (BOOL)_isAssetEligibleForTip:(id)tip;
- (BOOL)_isCameraDetailsAccessory;
- (BOOL)_isCurrentAssetAndInEditModeForAssetReference:(id)reference;
- (BOOL)_isDetailsAccessoryAvailableForAssetReference:(id)reference;
- (BOOL)_isDrivingScrubbing;
- (BOOL)_isLayoutAffectedBySpecChange:(id)change;
- (BOOL)_isLocationFromProvider:(id)provider overTileOfKind:(id)kind insetBy:(UIEdgeInsets)by;
- (BOOL)_isLocationFromProviderInAccessoryArea:(id)area;
- (BOOL)_isLocationFromProviderOverActionInfoItem:(id)item;
- (BOOL)_isLocationFromProviderOverControl:(id)control;
- (BOOL)_isLocationFromProviderOverImageSubject:(id)subject;
- (BOOL)_isLocationFromProviderOverInteractiveItem:(id)item;
- (BOOL)_isLocationFromProviderOverInteractiveItemExcludingImageSubject:(id)subject;
- (BOOL)_isLocationFromProviderOverSyndicationAttributionPill:(id)pill;
- (BOOL)_isLocationFromProviderOverVisualSearch:(id)search;
- (BOOL)_isSecondScreenBrowserVisible;
- (BOOL)_isVisualImageHasSubjectLiftedFromProvider:(id)provider;
- (BOOL)_isZoomedIn;
- (BOOL)_needsUpdate;
- (BOOL)_prefersFloatingInfoPanel;
- (BOOL)_shouldMakeChromeVisibleWhenVideoPlayerPlaysToEndTime:(id)time;
- (BOOL)_shouldPreventScaledOffsetAdjustments;
- (BOOL)_visualImageHasActiveTextSelectionFromProvider:(id)provider;
- (BOOL)_vkImageOverlayAllowsVKCToHandleLongPressGestureFromProvider:(id)provider;
- (BOOL)_wantsShowInLibraryButtonForAllAssets;
- (BOOL)accessoryTileViewControllerShouldUseSquareImageWhenShowingAccessoryView:(id)view;
- (BOOL)accessoryTileViewControllerWillHideNavigationBarWhenShowingAccessoryView:(id)view;
- (BOOL)accessoryTileViewControllerWillHideToolbarWhenShowingAccessoryView:(id)view;
- (BOOL)analysisInteractionAllowedForImageAnalysisInteraction:(id)interaction;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)doubleTapZoomController:(id)controller canDoubleTapBeginAtLocationFromProvider:(id)provider;
- (BOOL)interactiveDismissalController:(id)controller canBeginDismissalAtLocationFromProvider:(id)provider;
- (BOOL)isFloatingInfoPanelPresented;
- (BOOL)layout:(id)layout canApplyInsetStylingToItemAtIndexPath:(id)path;
- (BOOL)layout:(id)layout isShowingInfoPanelForItemAtIndexPath:(id)path;
- (BOOL)layout:(id)layout shouldInitiallyZoomToFillForItemAtIndexPath:(id)path contentSize:(CGSize)size viewportSize:(CGSize)viewportSize;
- (BOOL)layout:(id)layout shouldMovePeopleRowForItemAtIndexPath:(id)path;
- (BOOL)layout:(id)layout shouldMoveProgressIndicatorForItemAtIndexPath:(id)path;
- (BOOL)layout:(id)layout shouldShowAccessoryForItemAtIndexPath:(id)path;
- (BOOL)layout:(id)layout shouldShowAttributionViewForItemAtIndexPath:(id)path;
- (BOOL)layout:(id)layout shouldShowBufferingIndicatorForItemAtIndexPath:(id)path;
- (BOOL)layout:(id)layout shouldShowCropButtonForItemAtIndexPath:(id)path;
- (BOOL)layout:(id)layout shouldShowPeopleRowForItemAtIndexPath:(id)path;
- (BOOL)layout:(id)layout shouldShowPlayButtonForItemAtIndexPath:(id)path;
- (BOOL)layout:(id)layout shouldShowVideoPlaceholderForItemAtIndexPath:(id)path;
- (BOOL)layout:(id)layout shouldUseSquareImageInAccessoryForItemAtIndexPath:(id)path;
- (BOOL)layoutShouldShowReviewScreenScrubberBar:(id)bar;
- (BOOL)livePhotoVideoPlaybackTileViewControllerCanBeginPlaying:(id)playing locationProvider:(id)provider;
- (BOOL)oneUpActionsControllerDismissPresentedViewController:(id)controller;
- (BOOL)oneUpActionsControllerIsDetailsAccessoryAvailable:(id)available;
- (BOOL)oneUpActionsControllerPrefersInclusionAfterRemoval:(id)removal forActionType:(unint64_t)type;
- (BOOL)oneUpBarsController:(id)controller canShowCommentsForAsset:(id)asset;
- (BOOL)oneUpBarsController:(id)controller shouldHideNavigationBarWhenShowingAccessoryViewForAssetReference:(id)reference;
- (BOOL)oneUpBarsController:(id)controller shouldHideStatusBarWhenShowingAccessoryViewForAssetReference:(id)reference;
- (BOOL)oneUpBarsController:(id)controller shouldHideToolbarWhenShowingAccessoryViewForAssetReference:(id)reference;
- (BOOL)oneUpBarsController:(id)controller shouldTapBeginAtLocationFromProvider:(id)provider;
- (BOOL)oneUpChromeViewControllerIsDeviceUnlocked:(id)unlocked;
- (BOOL)oneUpGestureController:(id)controller canBeginGestureAt:(id)at;
- (BOOL)oneUpGestureController:(id)controller canDoubleTapToZoomAtPoint:(id)point;
- (BOOL)oneUpGestureController:(id)controller canPerformSelectionAtPoint:(id)point;
- (BOOL)oneUpGestureController:(id)controller canTapToToggleChromeAtPoint:(id)point;
- (BOOL)oneUpGestureController:(id)controller shouldRecognizeGestureRecognizer:(id)recognizer simultaneouslyWithOtherGestureRecognizer:(id)gestureRecognizer;
- (BOOL)oneUpGestureRecognizerCoordinator:(id)coordinator shouldAllowIrisGestureAtLocationFromProvider:(id)provider;
- (BOOL)overOneUpPresentationSessionPresentingViewControllerIsReady:(id)ready;
- (BOOL)playButtonTileViewControllerShouldShowPauseButton:(id)button;
- (BOOL)playButtonTileViewControllerShouldShowPlayButtonWhileActivated:(id)activated;
- (BOOL)ppt_imageTileViewControllerShouldSignalDeferredProcessingDoneAndFinalImageDisplayed:(id)displayed;
- (BOOL)prefersStatusBarHidden;
- (BOOL)prepareForDismissingForced:(BOOL)forced;
- (BOOL)pu_wantsNavigationBarVisible;
- (BOOL)pu_wantsToolbarVisible;
- (BOOL)tilingViewCanBypass20069585Check:(id)check;
- (BOOL)userTransformTileViewController:(id)controller shouldReceiveTouchAtLocationFromProvider:(id)provider;
- (BOOL)userTransformTileViewControllerShouldAnimateMinimumScaleWhileApplyingInsets:(id)insets;
- (BOOL)videoTilesCanPlayVideo;
- (BOOL)wantsActionsMenu;
- (BOOL)wantsSpotlightStyling;
- (BOOL)xct_isCurrentImageDeferredProcessingFinished;
- (BOOL)xct_isCurrentImageFullQuality;
- (CGImage)livePhotoVideoPlaybackTileViewControllerCurrentGainMapImage:(id)image outGainMapAvailable:(BOOL *)available outGainMapValue:(float *)value;
- (CGPoint)layout:(id)layout accessoryOffsetForItemAtIndexPath:(id)path;
- (CGPoint)layout:(id)layout contentOffsetForItemAtIndexPath:(id)path;
- (CGPoint)tilingView:(id)view initialVisibleOriginWithLayout:(id)layout;
- (CGRect)_currentFrameForTileController:(id)controller;
- (CGRect)layout:(id)layout bestSquareRectForItemAtIndexPath:(id)path;
- (CGRect)ppt_scrollableBoundsForTesting;
- (CGSize)_layoutReferenceSize;
- (CGSize)_pendingViewTransitionSize;
- (CGSize)layout:(id)layout assetExplorerReviewScreenBadgeSizeForItemAtIndexPath:(id)path;
- (CGSize)layout:(id)layout badgeSizeForItemAtIndexPath:(id)path contentWidth:(double)width;
- (CGSize)layout:(id)layout loadingIndicatorSizeForItemAtIndexPath:(id)path;
- (CGSize)layout:(id)layout pixelSizeForItemAtIndexPath:(id)path;
- (CGSize)preferredContentSizeOverride;
- (NSArray)_tileKindsToHide;
- (NSString)authenticationTitle;
- (NSString)passcodeAuthenticationReason;
- (PUAccessoryContentViewController)currentFloatingInfoPanelAccessoryViewController;
- (PUOneUpPhototypeSupportController)phototypeSupportController;
- (PUOneUpViewController)_mainOneUpForSecondScreenBrowser;
- (PUOneUpViewController)initWithBrowsingSession:(id)session options:(unint64_t)options initialActivity:(unint64_t)activity presentationOrigin:(int64_t)origin;
- (PUOneUpVisualImageAnalyzingController)visualImageAnalyzingController;
- (PUShazamEventsController)shazamEventsController;
- (PXAssetActionManager)assetActionManager;
- (UIActivityItemsConfigurationReading)activityItemsConfiguration;
- (UIEdgeInsets)layout:(id)layout insetsWhenScaledToFitForItemAtIndexPath:(id)path inViewportSize:(CGSize)size;
- (UIView)chromeView;
- (UIView)ppt_scrubberView;
- (double)alphaForReviewScreenBarsInLayout:(id)layout;
- (double)layout:(id)layout aspectRatioForItemAtIndexPath:(id)path;
- (double)layout:(id)layout insetContentCornerRadiusForItemAtIndexPath:(id)path;
- (double)layout:(id)layout leadingBadgesWidthForItemAtIndexPath:(id)path contentWidth:(double)width;
- (double)layout:(id)layout minimumItemHeightNeededInAccessoryForItemAtIndexPath:(id)path;
- (double)layout:(id)layout minimumVisibleAccessoryHeightForItemAtIndexPath:(id)path;
- (double)layout:(id)layout minimumVisibleContentHeightForItemAtIndexPath:(id)path;
- (double)livePhotoVideoPlaybackTileViewControllerExtraMinimumTouchDuration:(id)duration locationProvider:(id)provider;
- (double)playButtonTileViewController:(id)controller delayForButtonAnimation:(BOOL)animation;
- (double)px_HDRFocus;
- (double)px_imageModulationIntensity;
- (double)tilingViewControllerTransitionProgressAtWhichChromeIsFullyFadedOut:(id)out;
- (id)_additionalExcludedMenuActionTypes;
- (id)_assetDisplayDescriptorForAsset:(id)asset;
- (id)_assetReferenceAtIndexPath:(id)path layout:(id)layout;
- (id)_assetViewModelAtIndexPath:(id)path layout:(id)layout;
- (id)_assetsToPrefetchForCount:(int)count;
- (id)_assetsToPrefetchUsingDataSource:(id)source startingAt:(id)at count:(int64_t)count reverseDirection:(BOOL)direction;
- (id)_contentTileControllerForAssetReference:(id)reference;
- (id)_cropButtonTileViewControllerForCurrentAsset;
- (id)_currentAccessoryViewController;
- (id)_currentAssetViewModel;
- (id)_currentContentTileController;
- (id)_currentPlaceholderSnapshotViewForTileController:(id)controller;
- (id)_leadingContentTileController;
- (id)_livePhotoBadge;
- (id)_menuElements;
- (id)_newOneUpLayout;
- (id)_passthroughViews;
- (id)_presentedTileControllerForCurrentIndexPathWithKind:(id)kind;
- (id)_presentedTileControllerForIndexPath:(id)path kind:(id)kind;
- (id)_syndicationPillView;
- (id)_trailingContentTileController;
- (id)_userTransformTileControllerAtLocationFromProvider:(id)provider;
- (id)_userTransformTileViewControllerForCurrentAsset;
- (id)_videoPlayerAtIndexPath:(id)path layout:(id)layout;
- (id)accessoryTileViewControllerAccessoryViewController:(id)controller;
- (id)additionalContextMenuActionsForAttributionTileViewController:(id)controller;
- (id)barsControllerViewHostingGestureRecognizers:(id)recognizers;
- (id)browsingTileViewAnimator;
- (id)contentViewControllerForAirPlayController:(id)controller;
- (id)contentViewForImageAnalysisInteraction:(id)interaction;
- (id)createAssetTransitionInfo;
- (id)currentImageAnalysisInteraction;
- (id)interactiveDismissalControllerDesignatedTileController:(id)controller;
- (id)irisImageTileViewController:(id)controller delegateForGestureRecognizer:(id)recognizer;
- (id)keyCommands;
- (id)layout:(id)layout modelTileTransformForItemAtIndexPath:(id)path;
- (id)livePhotoVideoPlaybackTileViewControllerCurrentImage:(id)image;
- (id)livePhotoVideoPlaybackTileViewControllerDisplayTileTransform:(id)transform;
- (id)oneUpBarsControllerCustomActionMenuElements:(id)elements;
- (id)oneUpChromeViewControllerFullSizeOneUpHostingView:(id)view;
- (id)overOneUpPresentationSessionBrowserViewModel:(id)model;
- (id)overOneUpPresentationSessionCreateIfNeeded:(BOOL)needed;
- (id)presentationControllerForTipID:(id)d;
- (id)presentationEnvironmentForActionPerformer:(id)performer;
- (id)pu_debugCurrentAsset;
- (id)pu_debugCurrentPrivacyController;
- (id)pu_debugCurrentViewModel;
- (id)pu_debugRows;
- (id)px_diagnosticsItemProvidersForPoint:(CGPoint)point inCoordinateSpace:(id)space;
- (id)sourceItemForTipID:(id)d;
- (id)textsToHighlightForImageAnalysisInteraction:(id)interaction;
- (id)tilingView:(id)view scrollInfoWithLayout:(id)layout;
- (id)tilingView:(id)view tileControllerWithIndexPath:(id)path kind:(id)kind dataSource:(id)source;
- (id)tilingView:(id)view tileTransitionCoordinatorForChangeFromFrame:(CGRect)frame toFrame:(CGRect)toFrame duration:(double)duration;
- (id)tilingView:(id)view tileTransitionCoordinatorForLayoutInvalidationContext:(id)context;
- (id)tilingView:(id)view tileTransitionCoordinatorForReattachedTileControllers:(id)controllers context:(id)context;
- (id)tilingView:(id)view tileTransitionCoordinatorForTransitionFromLayout:(id)layout toLayout:(id)toLayout withContext:(id)context;
- (id)tilingViewControllerTransition:(id)transition tilingViewToTransferToEndPoint:(id)point;
- (int64_t)_accessoryContentKindForAsset:(id)asset;
- (int64_t)_accessoryContentKindForCurrentAsset;
- (int64_t)_insetModeForAsset:(id)asset;
- (int64_t)layout:(id)layout insetModeForItemAtIndexPath:(id)path;
- (int64_t)pu_preferredBarStyle;
- (int64_t)userTransformTileViewController:(id)controller insetModeForItemAtIndexPath:(id)path;
- (unint64_t)routingOptionsForDestination:(id)destination;
- (void)_abandonTileController:(id)controller;
- (void)_arrowKey:(id)key;
- (void)_beginVKSubjectAnalyzingWithGestureRecognizer:(id)recognizer beginID:(unint64_t)d;
- (void)_browsingVideoPlayerDidPlayToEndTime:(id)time;
- (void)_cancelTimedChromeAutoHide;
- (void)_chromeAutoHideTimerFired:(id)fired;
- (void)_configureAdoptedTileController:(id)controller;
- (void)_configurePocketStyle:(id)style;
- (void)_configureVitalityController;
- (void)_didEndTransition;
- (void)_dimFloatingInfoPanelAnimated:(BOOL)animated;
- (void)_dismissAnyPresentedTip;
- (void)_dismissFloatingInfoPanelAnimated:(BOOL)animated;
- (void)_dismissTipPopoverAnimated:(BOOL)animated;
- (void)_editAdjust:(id)adjust;
- (void)_editCleanup:(id)cleanup;
- (void)_editCrop:(id)crop;
- (void)_editFilter:(id)filter;
- (void)_editStyles:(id)styles;
- (void)_handleDeferredProcessingFinishedForAssetUUID:(id)d;
- (void)_handleSuggestedActionCompletedForTip:(id)tip completion:(id)completion;
- (void)_handleTouchGesture:(id)gesture;
- (void)_handleUnlockDeviceForActionType:(unint64_t)type success:(BOOL)success;
- (void)_handleZoomOutCurrentAsset;
- (void)_hideChromeOnPlayButtonTapWithItemIsNowPlaying:(BOOL)playing buttonIsOverlayed:(BOOL)overlayed;
- (void)_hideOverlays;
- (void)_informVKCOverlayToKickOffSubjectAnalyzing;
- (void)_invalidateInfoPanelLayoutAnimated:(BOOL)animated;
- (void)_isPresentedForPreviewDidChange;
- (void)_keyboardWillShow:(id)show;
- (void)_notifyTileIsReadyWithTimeOut:(double)out completionHandler:(id)handler;
- (void)_performNavigationToAssetDisplayDescriptor:(id)descriptor beforeDate:(id)date completionHandler:(id)handler;
- (void)_performPXActionType:(id)type;
- (void)_preheatAdjacentAssetsForPhotosDetailsContext;
- (void)_preheatAssetsForSpatialGeneration;
- (void)_presentAlertForUnplayableAssetReference:(id)reference;
- (void)_presentFloatingInfoPanelAnimated:(BOOL)animated;
- (void)_scheduleTimedChromeAutoHide;
- (void)_setAccessoryVisible:(BOOL)visible changeReason:(int64_t)reason;
- (void)_setContentUnavailableConfiguration:(id)configuration;
- (void)_setIrisPlaying:(BOOL)playing;
- (void)_setLayoutReferenceSize:(CGSize)size;
- (void)_setPrefersHomeIndicatorHidden:(BOOL)hidden;
- (void)_setSecondScreenBrowser:(id)browser;
- (void)_setTilingView:(id)view;
- (void)_setWindowInterfaceOrientation:(int64_t)orientation;
- (void)_toggleAccessoryVisibility;
- (void)_toggleCommentsVisibility;
- (void)_toggleDetailsVisibility;
- (void)_unhideOverlays;
- (void)_updateAccessoryViewIfNeeded;
- (void)_updateActiveVideoTilesCanDisplayVideo;
- (void)_updateBackgroundTileViewController;
- (void)_updateBarAppearanceIfNeeded;
- (void)_updateBarsControllerIfNeeded;
- (void)_updateChromeViewControllerDismissalProgress;
- (void)_updateChromeViewControllerIfNeeded;
- (void)_updateContentUnavailableConfigurationUsingState:(id)state;
- (void)_updateEditModeIfNeeded;
- (void)_updateFloatingInfoPanel;
- (void)_updateFloatingInfoPanelIfNeeded;
- (void)_updateGestureController;
- (void)_updateIfNeeded;
- (void)_updateImageAnalysisInteractionAdditionalActionInfoEdgeInsetsIfNeeded;
- (void)_updateImageAnalysisInteractionDelegate;
- (void)_updateLayout:(id)layout;
- (void)_updateLayoutIfNeeded;
- (void)_updateLayoutReferenceSize;
- (void)_updateMergedVideoProviderEnabled;
- (void)_updatePocketBias;
- (void)_updatePreferredContentSizeIfNeeded;
- (void)_updatePrefersHomeIndicatorHidden;
- (void)_updatePreloadInsetsIfNeeded;
- (void)_updateReviewScreenBars;
- (void)_updateScrubbingAdjustmentPolicyForChromeChange;
- (void)_updateScrubbingAdjustmentPolicyForVideoTimelineControlInteractionChange;
- (void)_updateScrubbingAdjustmentPolicyIfNeeded;
- (void)_updateSpecIfNeeded;
- (void)_updateTipPopoversIfNeeded;
- (void)_updateUserActivityIfNeeded;
- (void)_updateVideoPlayerIfNeeded;
- (void)_updateViewModelWithCurrentScrollPosition;
- (void)_updateWindowInterfaceOrientation;
- (void)_willBeginTransition;
- (void)_xct_beginSignpostingForImageTileImageLoadingAndProcessing;
- (void)_xct_endSignpostingForImageDeferredProcessing;
- (void)_xct_endSignpostingForImageFullQuality;
- (void)_xct_endSignpostingForImageTileImageLoadingAndProcessing;
- (void)accessoryVisibilityInteractionController:(id)controller setAccessoryVisible:(BOOL)visible changeReason:(int64_t)reason;
- (void)accessoryVisibilityInteractionControllerDidEnd:(id)end;
- (void)addAssetsToAlbum:(id)album;
- (void)addAssetsToLastUsedAlbum:(id)album;
- (void)adjustDateTime:(id)time;
- (void)adjustLocation:(id)location;
- (void)airPlayControllerScreenAvailabilityChanged:(id)changed;
- (void)appIntentsEnumerateAssetCollections:(id)collections;
- (void)appIntentsEnumerateAssets:(id)assets;
- (void)autoEnhanceAssets:(id)assets;
- (void)badgeVisibilityDidChange:(id)change;
- (void)barsControllerContentGuideInsetsDidChange:(id)change;
- (void)copy:(id)copy;
- (void)copyAdjustments:(id)adjustments;
- (void)createMenuActionControllerForManagerIfNeeded:(id)needed withPresentingViewController:(id)controller regionOfInterestProvider:(id)provider;
- (void)cropButtonTileViewController:(id)controller didSelectAspectRatio:(CGSize)ratio;
- (void)dealloc;
- (void)deleteAssets:(id)assets;
- (void)dismissPresentedViewController:(id)controller presentMenuWithCompletion:(id)completion;
- (void)duplicateAssets:(id)assets;
- (void)favoriteAssets:(id)assets;
- (void)hideAssets:(id)assets;
- (void)imageAnalysisInteractionIsDrivingLivePhotoPlaybackDidChange:(id)change;
- (void)imageAnalysisInteractionSubjectInteractionInProgressDidChange:(id)change;
- (void)imageTileViewController:(id)controller didDisplayFullQualityImageWithDeferredProcessingFinished:(BOOL)finished;
- (void)interactiveDismissalControllerChangedIsHandlingDismissalInteraction:(id)interaction;
- (void)irisImageTileViewControllerDidBeginHinting:(id)hinting;
- (void)irisImageTileViewControllerDidBeginPlaying:(id)playing;
- (void)irisImageTileViewControllerDidEndPlaying:(id)playing;
- (void)irisImageTileViewControllerDidEndVitality:(id)vitality;
- (void)layout:(id)layout willApplyDisplayTileTransform:(id)transform forItemAtIndexPath:(id)path;
- (void)livePhotoVideoPlaybackTileViewControllerDidEndPlaying:(id)playing;
- (void)livePhotoVideoPlaybackTileViewControllerWillBeginPlaying:(id)playing;
- (void)loadView;
- (void)loadingStatusManager:(id)manager didUpdateLoadingStatus:(id)status forItemIdentifier:(id)identifier;
- (void)navigateToAssetDisplayDescriptor:(id)descriptor beforeDate:(id)date completionHandler:(id)handler;
- (void)navigateToDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler;
- (void)oneUpActionsController:(id)controller zoomAtLocationProvider:(id)provider;
- (void)oneUpActionsControllerToggleChromeVisibility:(id)visibility;
- (void)oneUpAssetTransition:(id)transition animateTransitionWithContext:(id)context duration:(double)duration completion:(id)completion;
- (void)oneUpAssetTransition:(id)transition requestTransitionContextWithCompletion:(id)completion options:(unint64_t)options;
- (void)oneUpBarsControllerDidChangeShowingPlayPauseButton:(id)button;
- (void)oneUpBarsControllerDidTapTitle:(id)title;
- (void)oneUpBarsControllerWillPresentActionsMenu:(id)menu completionHandler:(id)handler;
- (void)oneUpChromeViewControllerAdditionalActionInfoEdgeInsetsDidChange:(id)change;
- (void)oneUpChromeViewControllerRequestDeviceUnlock:(id)unlock for:(unint64_t)for;
- (void)overOneUpPresentationSession:(id)session didPresent:(id)present;
- (void)overOneUpPresentationSessionDidFinish:(id)finish;
- (void)pasteAdjustments:(id)adjustments;
- (void)playButtonTileViewControllerDidTapButton:(id)button;
- (void)ppt_notifyWhenDeferredProcessingIsDoneAndFinalImageDisplayedWithTimeout:(double)timeout handler:(id)handler;
- (void)ppt_notifyWhenVKAnalysisIsReadyWithTimeout:(double)timeout handler:(id)handler;
- (void)ppt_playCurrentLivePhotoWithCompletionHandler:(id)handler;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)prepareTipPopover:(id)popover tipID:(id)d;
- (void)presentErrorFromLoadingIndicator:(id)indicator;
- (void)presentPeopleViewController:(id)controller;
- (void)print:(id)print;
- (void)purgeIfPossible;
- (void)pushPeopleViewController:(id)controller;
- (void)restoreAssets:(id)assets;
- (void)restoreAssetsWithoutConfirmation:(id)confirmation;
- (void)revertAdjustments:(id)adjustments;
- (void)rotateAssetsClockwise:(id)clockwise;
- (void)rotateAssetsCounterclockwise:(id)counterclockwise;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setAppearState:(int)state;
- (void)setAppearanceTransitionAnimationsDisabled:(BOOL)disabled;
- (void)setUnlockDeviceHandlerWithActionType:(id)type;
- (void)setUnlockDeviceStatus:(id)status;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)shareAssets:(id)assets;
- (void)showDetailsViewForImageAnalysisInteraction:(id)interaction;
- (void)tilingViewControllerTransition:(id)transition abandonTilingView:(id)view toEndPoint:(id)point;
- (void)tilingViewControllerTransition:(id)transition adoptTilingView:(id)view fromEndPoint:(id)point isCancelingTransition:(BOOL)cancelingTransition animationSetupCompletionHandler:(id)handler;
- (void)tipPopoverDidDismissWithTipID:(id)d;
- (void)tipPopoverDidPresentWithTipID:(id)d;
- (void)toggleEditor:(id)editor;
- (void)togglePlayback:(id)playback;
- (void)traitCollectionDidChange:(id)change;
- (void)trashAssets:(id)assets;
- (void)trashAssetsWithoutConfirmation:(id)confirmation;
- (void)userTransformTileViewController:(id)controller didChangeIsUserInteracting:(BOOL)interacting;
- (void)validateCommand:(id)command;
- (void)viewControllerSpec:(id)spec didChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewModel:(id)model didChange:(id)change;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PUOneUpViewController

- (CGSize)preferredContentSizeOverride
{
  width = self->_preferredContentSizeOverride.width;
  height = self->_preferredContentSizeOverride.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PUAccessoryContentViewController)currentFloatingInfoPanelAccessoryViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_currentFloatingInfoPanelAccessoryViewController);

  return WeakRetained;
}

- (CGSize)_pendingViewTransitionSize
{
  width = self->__pendingViewTransitionSize.width;
  height = self->__pendingViewTransitionSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PUOneUpViewController)_mainOneUpForSecondScreenBrowser
{
  WeakRetained = objc_loadWeakRetained(&self->__mainOneUpForSecondScreenBrowser);

  return WeakRetained;
}

- (CGSize)_layoutReferenceSize
{
  width = self->__layoutReferenceSize.width;
  height = self->__layoutReferenceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)appIntentsEnumerateAssets:(id)assets
{
  assetsCopy = assets;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (!assetsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:7461 description:{@"Invalid parameter not satisfying: %@", @"assetHandler"}];
  }

  browsingSession = [(PUOneUpViewController *)self browsingSession];
  privacyController = [browsingSession privacyController];
  isLocked = [privacyController isLocked];

  if (!isLocked)
  {
    viewModel = [browsingSession viewModel];
    currentAssetReference = [viewModel currentAssetReference];
    asset = [currentAssetReference asset];

    v13 = asset;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v14 = v13;

      if (!v14)
      {
LABEL_13:

        goto LABEL_14;
      }

      view = [(PUOneUpViewController *)self view];
      [view bounds];
      assetsCopy[2](assetsCopy, v14, 1);
    }

    else
    {
      v14 = 0;
      view = v13;
    }

    goto LABEL_13;
  }

  v9 = PLAppIntentsGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "Cannot enumerate asset collections because 1up is currently locked.", buf, 2u);
  }

LABEL_14:
}

- (void)appIntentsEnumerateAssetCollections:(id)collections
{
  collectionsCopy = collections;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (!collectionsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:7444 description:{@"Invalid parameter not satisfying: %@", @"assetCollectionHandler"}];
  }

  browsingSession = [(PUOneUpViewController *)self browsingSession];
  privacyController = [browsingSession privacyController];
  isLocked = [privacyController isLocked];

  if (!isLocked)
  {
    viewModel = [browsingSession viewModel];
    currentAssetReference = [viewModel currentAssetReference];
    assetCollection = [currentAssetReference assetCollection];

    v13 = assetCollection;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v14 = v13;

      if (!v14)
      {
LABEL_13:

        goto LABEL_14;
      }

      view = [(PUOneUpViewController *)self view];
      [view bounds];
      collectionsCopy[2](collectionsCopy, v14, 1);
    }

    else
    {
      v14 = 0;
      view = v13;
    }

    goto LABEL_13;
  }

  v9 = PLAppIntentsGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "Cannot enumerate assets because 1up is currently locked.", buf, 2u);
  }

LABEL_14:
}

- (BOOL)xct_isCurrentImageDeferredProcessingFinished
{
  _currentContentTileController = [(PUOneUpViewController *)self _currentContentTileController];
  if (_currentContentTileController && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    isDeferredProcessingFinished = [_currentContentTileController isDeferredProcessingFinished];
  }

  else
  {
    isDeferredProcessingFinished = 0;
  }

  return isDeferredProcessingFinished;
}

- (BOOL)xct_isCurrentImageFullQuality
{
  _currentContentTileController = [(PUOneUpViewController *)self _currentContentTileController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isDisplayingFullQualityImage = [_currentContentTileController isDisplayingFullQualityImage];
  }

  else
  {
    isDisplayingFullQualityImage = 0;
  }

  return isDisplayingFullQualityImage;
}

- (void)_xct_endSignpostingForImageDeferredProcessing
{
  xct_waitForDeferredProcessingTimer = [(PUOneUpViewController *)self xct_waitForDeferredProcessingTimer];
  isValid = [xct_waitForDeferredProcessingTimer isValid];

  if (isValid)
  {
    xct_waitForDeferredProcessingTimer2 = [(PUOneUpViewController *)self xct_waitForDeferredProcessingTimer];
    [xct_waitForDeferredProcessingTimer2 invalidate];

    v6 = PLOneUpGetLog();
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "timeToSharpAndDeferredProcessingFinished", "", buf, 2u);
    }

    v7 = PLOneUpGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEBUG, "1Up signpost: timeToSharp (+ Deferred Processing done) stop. (forced to end)", v8, 2u);
    }
  }

  [(PUOneUpViewController *)self setXct_waitForDeferredProcessingTimer:0];
}

- (void)_xct_endSignpostingForImageFullQuality
{
  xct_waitForFullQualityImageTimer = [(PUOneUpViewController *)self xct_waitForFullQualityImageTimer];
  isValid = [xct_waitForFullQualityImageTimer isValid];

  if (isValid)
  {
    xct_waitForFullQualityImageTimer2 = [(PUOneUpViewController *)self xct_waitForFullQualityImageTimer];
    [xct_waitForFullQualityImageTimer2 invalidate];

    v6 = PLOneUpGetLog();
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "timeToSharp", "", buf, 2u);
    }

    v7 = PLOneUpGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEBUG, "1Up signpost: timeToSharp stop. (forced to end)", v8, 2u);
    }
  }

  [(PUOneUpViewController *)self setXct_waitForFullQualityImageTimer:0];
}

- (void)_xct_endSignpostingForImageTileImageLoadingAndProcessing
{
  [(PUOneUpViewController *)self _xct_endSignpostingForImageFullQuality];

  [(PUOneUpViewController *)self _xct_endSignpostingForImageDeferredProcessing];
}

- (void)_xct_beginSignpostingForImageTileImageLoadingAndProcessing
{
  [(PUOneUpViewController *)self _xct_endSignpostingForImageTileImageLoadingAndProcessing];
  v3 = PLOneUpGetLog();
  _currentContentTileController = [(PUOneUpViewController *)self _currentContentTileController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "timeToSharp", "", buf, 2u);
    }

    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "timeToSharpAndDeferredProcessingFinished", "", buf, 2u);
    }

    v5 = PLOneUpGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEBUG, "1Up signpost: timeToSharp start.", buf, 2u);
    }

    if ([_currentContentTileController isDisplayingFullQualityImage])
    {
      if (os_signpost_enabled(v3))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B36F3000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "timeToSharp", "", buf, 2u);
      }

      v6 = PLOneUpGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEBUG, "1Up signpost: timeToSharp stop.", buf, 2u);
      }
    }

    else
    {
      v11 = MEMORY[0x1E695DFF0];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __83__PUOneUpViewController__xct_beginSignpostingForImageTileImageLoadingAndProcessing__block_invoke;
      v20[3] = &unk_1E7B7F620;
      v21 = v3;
      v12 = [v11 scheduledTimerWithTimeInterval:0 repeats:v20 block:3.0];
      [(PUOneUpViewController *)self setXct_waitForFullQualityImageTimer:v12];

      v6 = v21;
    }

    if (![_currentContentTileController isDeferredProcessingFinished])
    {
      v13 = MEMORY[0x1E695DFF0];
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __83__PUOneUpViewController__xct_beginSignpostingForImageTileImageLoadingAndProcessing__block_invoke_1057;
      v18 = &unk_1E7B7F620;
      v19 = v3;
      v14 = [v13 scheduledTimerWithTimeInterval:0 repeats:&v15 block:3.0];
      [(PUOneUpViewController *)self setXct_waitForDeferredProcessingTimer:v14, v15, v16, v17, v18];

      v7 = v19;
      goto LABEL_23;
    }

    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "timeToSharpAndDeferredProcessingFinished", "", buf, 2u);
    }

    v7 = PLOneUpGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v8 = "1Up signpost: timeToSharp (+ Deferred Processing done) stop.";
      v9 = v7;
      v10 = OS_LOG_TYPE_DEBUG;
      goto LABEL_21;
    }
  }

  else
  {
    v7 = PLOneUpGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v8 = "1Up signpost: no contentTileController or not image tile when 1Up did appear";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
LABEL_21:
      _os_log_impl(&dword_1B36F3000, v9, v10, v8, buf, 2u);
    }
  }

LABEL_23:
}

void __83__PUOneUpViewController__xct_beginSignpostingForImageTileImageLoadingAndProcessing__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "timeToSharp", "", buf, 2u);
  }

  v5 = PLOneUpGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEBUG, "1Up signpost: timeToSharp stop. (time's up)", v6, 2u);
  }
}

void __83__PUOneUpViewController__xct_beginSignpostingForImageTileImageLoadingAndProcessing__block_invoke_1057(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "timeToSharpAndDeferredProcessingFinished", "", buf, 2u);
  }

  v5 = PLOneUpGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEBUG, "1Up signpost: timeToSharp (+ Deferred Processing done) stop. (time's up)", v6, 2u);
  }
}

- (UIActivityItemsConfigurationReading)activityItemsConfiguration
{
  v25 = *MEMORY[0x1E69E9840];
  if (activityItemsConfiguration_onceToken != -1)
  {
    dispatch_once(&activityItemsConfiguration_onceToken, &__block_literal_global_1051);
  }

  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  if ([viewModel contentPrivacyState] != 1)
  {
    currentAssetReference = [viewModel currentAssetReference];
    asset = [currentAssetReference asset];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v9 = asset;

      if (v9)
      {
        boopableItemsProvider = [(PUOneUpViewController *)self boopableItemsProvider];

        if (!boopableItemsProvider)
        {
          v11 = activityItemsConfiguration_boopLog;
          if (os_log_type_enabled(activityItemsConfiguration_boopLog, OS_LOG_TYPE_DEFAULT))
          {
            v12 = v11;
            uuid = [v9 uuid];
            *buf = 138543362;
            v24 = uuid;
            _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_DEFAULT, "Creating boopable item provider for 1up asset %{public}@", buf, 0xCu);
          }

          v14 = objc_alloc_init(MEMORY[0x1E69C3388]);
          [(PUOneUpViewController *)self setBoopableItemsProvider:v14];

          v22 = v9;
          v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
          boopableItemsProvider2 = [(PUOneUpViewController *)self boopableItemsProvider];
          [boopableItemsProvider2 setAssets:v15];

          defaultManager = [MEMORY[0x1E69C4568] defaultManager];
          v18 = [defaultManager imageProviderForAsset:v9];

          boopableItemsProvider3 = [(PUOneUpViewController *)self boopableItemsProvider];
          [boopableItemsProvider3 setImagePreviewMediaProvider:v18];
        }

        boopableItemsProvider4 = [(PUOneUpViewController *)self boopableItemsProvider];
LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
    }

    v20 = activityItemsConfiguration_boopLog;
    if (os_log_type_enabled(activityItemsConfiguration_boopLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = 0;
      _os_log_error_impl(&dword_1B36F3000, v20, OS_LOG_TYPE_ERROR, "Couldn't create an 1up boopable item provider because the current asset is not a PHAsset: %@", buf, 0xCu);
    }

    v9 = 0;
    boopableItemsProvider4 = 0;
    goto LABEL_19;
  }

  v5 = activityItemsConfiguration_boopLog;
  if (os_log_type_enabled(activityItemsConfiguration_boopLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_ERROR, "Couldn't create an 1up boopable item provider because 1up is currently locked", buf, 2u);
  }

  boopableItemsProvider4 = 0;
LABEL_20:

  return boopableItemsProvider4;
}

uint64_t __51__PUOneUpViewController_activityItemsConfiguration__block_invoke()
{
  v0 = os_log_create("com.apple.photos.ui", "BoopActivityItems");
  v1 = activityItemsConfiguration_boopLog;
  activityItemsConfiguration_boopLog = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)_updateUserActivityIfNeeded
{
  if ([(PUOneUpViewController *)self _needsUpdateUserActivity])
  {
    [(PUOneUpViewController *)self _setNeedsUpdateUserActivity:0];
    browsingSession = [(PUOneUpViewController *)self browsingSession];
    viewModel = [browsingSession viewModel];

    if ([viewModel contentPrivacyState] == 1)
    {
      siriActionActivity = [(PUOneUpViewController *)self siriActionActivity];
      [siriActionActivity resignCurrent];

      [(PUOneUpViewController *)self setSiriActionActivity:0];
    }

    else if (([viewModel isScrubbing] & 1) == 0)
    {
      currentAssetReference = [viewModel currentAssetReference];
      asset = [currentAssetReference asset];
      v8 = asset;
      if (asset)
      {
        creationDate = [asset creationDate];
        [creationDate timeIntervalSinceNow];
        v11 = v10;
        if ([MEMORY[0x1E69636A8] px_allowsDonationsForCurrentProcess])
        {
          v12 = v11 <= 0.0 && v11 >= -86400.0;
          if (([(PUOneUpViewController *)self _options]& 0x2000) != 0)
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }

        v13 = MEMORY[0x1E69636A8];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __52__PUOneUpViewController__updateUserActivityIfNeeded__block_invoke_2;
        v14[3] = &unk_1E7B7A1F8;
        v14[4] = self;
        v15 = v8;
        v17 = v12;
        v16 = currentAssetReference;
        [v13 px_requestActivityWithActivityType:@"com.apple.mobileslideshow.oneUp" titleProvider:&__block_literal_global_1032 completionBlock:v14];
      }
    }
  }
}

void __52__PUOneUpViewController__updateUserActivityIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v27[5] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) browsingSession];
  v5 = [v4 viewModel];
  v6 = [v5 currentAssetReference];
  v7 = [v6 asset];

  if ([v7 isEqual:*(a1 + 40)])
  {
    [v3 setEligibleForSearch:*(a1 + 56)];
    [v3 _setEligibleForPrediction:*(a1 + 56)];
    [v3 setEligibleForHandoff:0];
    v8 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    [v3 setRequiredUserInfoKeys:v8];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 px_setPersistentIdentifierFromAsset:*(a1 + 40)];
    }

    v9 = [*(a1 + 48) assetCollection];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v9;
      v10 = v9;
      v26[0] = @"selectedUUIDs";
      v20 = [*(a1 + 40) uuid];
      v25 = v20;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
      v27[0] = v11;
      v26[1] = @"collectionType";
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "assetCollectionType")}];
      v27[1] = v12;
      v26[2] = @"collectionSubtype";
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "assetCollectionSubtype")}];
      v27[2] = v13;
      v26[3] = @"albumUUID";
      v14 = [v10 uuid];
      v27[3] = v14;
      v26[4] = @"timestamp";
      v15 = [MEMORY[0x1E695DF00] date];
      v27[4] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:5];
      [v3 setUserInfo:v16];

      if (!PFIsiOSPhotosApp())
      {
        v9 = v21;
        goto LABEL_10;
      }

      v17 = [*(a1 + 32) view];
      v18 = [v17 window];
      v19 = [v18 windowScene];
      [v19 setUserActivity:v3];

      v9 = v21;
    }

    else
    {
      v23 = @"selectedUUIDs";
      v10 = [*(a1 + 40) uuid];
      v22 = v10;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
      v24 = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      [v3 setUserInfo:v18];
    }

LABEL_10:
    [*(a1 + 32) setSiriActionActivity:v3];
    [v3 becomeCurrent];
  }
}

- (void)loadingStatusManager:(id)manager didUpdateLoadingStatus:(id)status forItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  statusCopy = status;
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  currentAssetReference = [viewModel currentAssetReference];
  asset = [currentAssetReference asset];

  error = [statusCopy error];

  if (error)
  {
    uuid = [asset uuid];
    if ([identifierCopy isEqual:uuid])
    {
    }

    else
    {
      v15 = +[PUOneUpSpatialToastController statusManagerItemIdentifier];
      v16 = [identifierCopy isEqual:v15];

      if (!v16)
      {
        goto LABEL_8;
      }
    }

    v17 = [PUEditingErrorPresentationController alloc];
    v18 = asset;
    v19 = v18;
    if (v18)
    {
      if ([v18 conformsToProtocol:&unk_1F2BDF538])
      {
LABEL_7:
        v20 = [(PUEditingErrorPresentationController *)v17 initWithError:error forAsset:v19];

        v21 = [(PUErrorPresentationController *)v20 alertControllerWithCompletion:&__block_literal_global_1020];
        [(PUOneUpViewController *)self presentViewController:v21 animated:1 completion:0];

        goto LABEL_8;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      px_descriptionForAssertionMessage = [v19 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:7210 description:{@"%@ should conform to protocol %@, but %@ doesn't", @"asset", @"PUEditableAsset", px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:7210 description:{@"%@ should conform to protocol %@, but it is nil", @"asset", @"PUEditableAsset"}];
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (id)_assetDisplayDescriptorForAsset:(id)asset
{
  assetCopy = asset;
  v4 = [[PUAssetReference alloc] initWithAsset:assetCopy assetCollection:0 indexPath:0 dataSourceIdentifier:0];

  v5 = [PUAssetDisplayDescriptor assetDisplayDescriptorForSimpleNavigationToAssetReference:v4];

  return v5;
}

- (void)navigateToDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  asset = [destination asset];
  v9 = [(PUOneUpViewController *)self _assetDisplayDescriptorForAsset:asset];

  v10 = MEMORY[0x1E695DF00];
  mEMORY[0x1E69C3350] = [MEMORY[0x1E69C3350] sharedInstance];
  [mEMORY[0x1E69C3350] defaultNavigationTimeoutDuration];
  v12 = [v10 dateWithTimeIntervalSinceNow:?];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__PUOneUpViewController_navigateToDestination_options_completionHandler___block_invoke;
  v14[3] = &unk_1E7B7C940;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [(PUOneUpViewController *)self navigateToAssetDisplayDescriptor:v9 beforeDate:v12 completionHandler:v14];
}

uint64_t __73__PUOneUpViewController_navigateToDestination_options_completionHandler___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  return (*(v2 + 16))(v2, v3);
}

- (unint64_t)routingOptionsForDestination:(id)destination
{
  destinationCopy = destination;
  if ([destinationCopy type] == 7 && (objc_msgSend(destinationCopy, "asset"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    asset = [destinationCopy asset];
    v7 = [(PUOneUpViewController *)self _assetDisplayDescriptorForAsset:asset];

    LODWORD(v8) = [(PUOneUpViewController *)self _canAttemptNavigationToAssetDisplayDescriptor:v7];
    v8 = v8;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_cropButtonTileViewControllerForCurrentAsset
{
  v4 = [(PUOneUpViewController *)self _presentedTileControllerForCurrentIndexPathWithKind:PUTileKindCropButton];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      px_descriptionForAssertionMessage = [v4 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:7177 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[self _presentedTileControllerForCurrentIndexPathWithKind:PUTileKindCropButton]", v8, px_descriptionForAssertionMessage}];
    }
  }

  return v4;
}

- (id)_userTransformTileViewControllerForCurrentAsset
{
  v4 = [(PUOneUpViewController *)self _presentedTileControllerForCurrentIndexPathWithKind:PUTileKindUserTransform];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      px_descriptionForAssertionMessage = [v4 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:7173 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[self _presentedTileControllerForCurrentIndexPathWithKind:PUTileKindUserTransform]", v8, px_descriptionForAssertionMessage}];
    }
  }

  return v4;
}

- (void)_informVKCOverlayToKickOffSubjectAnalyzing
{
  v3 = +[PUOneUpSettings sharedInstance];
  allowsVisualIntelligenceRemoveBackground = [v3 allowsVisualIntelligenceRemoveBackground];

  if (allowsVisualIntelligenceRemoveBackground)
  {
    currentImageAnalysisInteraction = [(PUOneUpViewController *)self currentImageAnalysisInteraction];
    [currentImageAnalysisInteraction beginImageSubjectAnalysisIfNecessary];
  }
}

- (BOOL)_isLocationFromProviderOverSyndicationAttributionPill:(id)pill
{
  pillCopy = pill;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  _tilingView = [(PUOneUpViewController *)self _tilingView];
  [pillCopy locationInView:_tilingView];
  v7 = v6 + -0.5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__PUOneUpViewController__isLocationFromProviderOverSyndicationAttributionPill___block_invoke;
  v13[3] = &unk_1E7B79F58;
  v9 = v8 + -0.5;
  v16 = v6;
  v17 = v8;
  v10 = _tilingView;
  v14 = v10;
  v15 = &v18;
  [v10 enumeratePresentedTileControllersInRect:v13 usingBlock:{v7, v9, 1.0, 1.0}];
  v11 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return v11;
}

void __79__PUOneUpViewController__isLocationFromProviderOverSyndicationAttributionPill___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 reuseIdentifier];
  v7 = [v6 isEqualToString:@"PUSyndicationAttributionTileReuseIdentifier"];

  v8 = v11;
  if (v7)
  {
    v9 = [v11 view];
    [v9 convertPoint:*(a1 + 32) fromView:{*(a1 + 48), *(a1 + 56)}];
    v10 = [v9 hitTest:0 withEvent:?];
    if (v10 && v10 != v9)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    *a4 = 1;

    v8 = v11;
  }
}

- (void)_configureVitalityController
{
  _tilingView = [(PUOneUpViewController *)self _tilingView];
  [_tilingView setCanDriveVitality:{-[PUOneUpViewController _isPresentedForSecondScreen](self, "_isPresentedForSecondScreen") ^ 1}];
  if ([(PUOneUpViewController *)self _isIrisPlaying])
  {
    IsVideoAutoplayEnabled = 0;
  }

  else
  {
    IsVideoAutoplayEnabled = PXPreferencesIsVideoAutoplayEnabled();
  }

  is_vitalityController = [_tilingView is_vitalityController];
  [is_vitalityController setEnabled:IsVideoAutoplayEnabled];
}

- (void)livePhotoVideoPlaybackTileViewControllerDidEndPlaying:(id)playing
{
  playingCopy = playing;
  [(PUOneUpViewController *)self _setIrisPlaying:0];
  [(PUOneUpViewController *)self _setDidPlayCurrentLivePhoto:1];
  browsingViewModel = [playingCopy browsingViewModel];

  currentAssetReference = [browsingViewModel currentAssetReference];
  asset = [currentAssetReference asset];

  currentImageAnalysisInteraction = [(PUOneUpViewController *)self currentImageAnalysisInteraction];
  lastLivePhotoGestureLocationProvider = [(PUOneUpViewController *)self lastLivePhotoGestureLocationProvider];
  v9 = [currentImageAnalysisInteraction imageSubjectExistsAtLocation:lastLivePhotoGestureLocationProvider];

  eventTracker = [(PUOneUpViewController *)self eventTracker];
  [eventTracker logUserDidPlayLivePhoto:asset pressOnSubject:v9];

  [(PUOneUpViewController *)self _invalidateTipPopovers];
  [(PUOneUpViewController *)self _updateTipPopoversIfNeeded];
  [(PUOneUpViewController *)self setLastLivePhotoGestureLocationProvider:0];
}

- (void)livePhotoVideoPlaybackTileViewControllerWillBeginPlaying:(id)playing
{
  playingCopy = playing;
  [(PUOneUpViewController *)self _setIrisPlaying:1];
  browsingViewModel = [playingCopy browsingViewModel];

  currentAssetReference = [browsingViewModel currentAssetReference];
  asset = [currentAssetReference asset];

  _currentAssetViewModel = [(PUOneUpViewController *)self _currentAssetViewModel];
  Current = CFAbsoluteTimeGetCurrent();
  [_currentAssetViewModel focusValueAtZeroTimestamp];
  v10 = Current - v9;
  eventTracker = [(PUOneUpViewController *)self eventTracker];
  [eventTracker logUserWillPlayLivePhoto:asset firstTimeWaitDuration:v10];

  [_currentAssetViewModel setFocusValueAtZeroTimestamp:-1.0];
  [(PUOneUpViewController *)self _invalidateTipPopovers];
  [(PUOneUpViewController *)self _updateTipPopoversIfNeeded];
}

- (CGImage)livePhotoVideoPlaybackTileViewControllerCurrentGainMapImage:(id)image outGainMapAvailable:(BOOL *)available outGainMapValue:(float *)value
{
  browsingViewModel = [image browsingViewModel];
  currentAssetReference = [browsingViewModel currentAssetReference];

  _tilingView = [(PUOneUpViewController *)self _tilingView];
  indexPath = [currentAssetReference indexPath];
  dataSourceIdentifier = [currentAssetReference dataSourceIdentifier];
  v13 = [_tilingView presentedTileControllerWithIndexPath:indexPath kind:@"PUTileKindItemContent" dataSourceIdentifier:dataSourceIdentifier];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    gainMapImageIsAvailable = 0;
    gainMapImage = 0;
    v17 = 0;
    if (!available)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v14 = v13;
  gainMapImage = [v14 gainMapImage];
  [v14 gainMapValue];
  v17 = v16;
  gainMapImageIsAvailable = [v14 gainMapImageIsAvailable];

  if (available)
  {
LABEL_5:
    *available = gainMapImageIsAvailable;
  }

LABEL_6:
  if (value)
  {
    *value = v17;
  }

  return gainMapImage;
}

- (id)livePhotoVideoPlaybackTileViewControllerCurrentImage:(id)image
{
  browsingViewModel = [image browsingViewModel];
  currentAssetReference = [browsingViewModel currentAssetReference];

  _tilingView = [(PUOneUpViewController *)self _tilingView];
  indexPath = [currentAssetReference indexPath];
  dataSourceIdentifier = [currentAssetReference dataSourceIdentifier];
  v9 = [_tilingView presentedTileControllerWithIndexPath:indexPath kind:@"PUTileKindItemContent" dataSourceIdentifier:dataSourceIdentifier];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    image = [v9 image];
  }

  else
  {
    image = 0;
  }

  return image;
}

- (id)livePhotoVideoPlaybackTileViewControllerDisplayTileTransform:(id)transform
{
  browsingViewModel = [transform browsingViewModel];
  currentAssetReference = [browsingViewModel currentAssetReference];

  if ([(PUOneUpViewController *)self _isPresentedForSecondScreen])
  {
    selfCopy = [(PUOneUpViewController *)self _mainOneUpForSecondScreenBrowser];
  }

  else
  {
    selfCopy = self;
  }

  v7 = selfCopy;
  _tilingView = [(PUOneUpViewController *)selfCopy _tilingView];
  indexPath = [currentAssetReference indexPath];
  v10 = PUTileKindUserTransform;
  dataSourceIdentifier = [currentAssetReference dataSourceIdentifier];
  v12 = [_tilingView presentedTileControllerWithIndexPath:indexPath kind:v10 dataSourceIdentifier:dataSourceIdentifier];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    displayTileTransform = [v12 displayTileTransform];
  }

  else
  {
    displayTileTransform = 0;
  }

  return displayTileTransform;
}

- (BOOL)livePhotoVideoPlaybackTileViewControllerCanBeginPlaying:(id)playing locationProvider:(id)provider
{
  playingCopy = playing;
  providerCopy = provider;
  _interactivePinchDismissalController = [(PUOneUpViewController *)self _interactivePinchDismissalController];
  if ([_interactivePinchDismissalController isHandlingDismissalInteraction])
  {
    v9 = 0;
  }

  else
  {
    _interactiveSwipeDismissalController = [(PUOneUpViewController *)self _interactiveSwipeDismissalController];
    v9 = [_interactiveSwipeDismissalController isHandlingDismissalInteraction] ^ 1;
  }

  v11 = +[PUOneUpSettings sharedInstance];
  if ([v11 allowVisualIntelligence])
  {
    v12 = [(PUOneUpViewController *)self _isLocationFromProvider:providerCopy overTileOfKind:@"PUTileKindItemContent"];

    if (v12)
    {
      v13 = +[PUOneUpSettings sharedInstance];
      allowsVisualIntelligenceRemoveBackground = [v13 allowsVisualIntelligenceRemoveBackground];

      if (allowsVisualIntelligenceRemoveBackground)
      {
        if (!v9 || [(PUOneUpViewController *)self _vkImageOverlayAllowsVKCToHandleLongPressGestureFromProvider:providerCopy])
        {
          goto LABEL_16;
        }

LABEL_15:
        if ([(PUOneUpViewController *)self _isLocationFromProviderOverInteractiveItem:providerCopy])
        {
          goto LABEL_16;
        }

LABEL_17:
        v15 = ![(PUOneUpViewController *)self _isLocationFromProviderOverControl:providerCopy];
        goto LABEL_18;
      }

      if (v9)
      {
        goto LABEL_15;
      }
    }

    else if (v9)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if (v9)
    {
      goto LABEL_17;
    }
  }

LABEL_16:
  v15 = 0;
LABEL_18:
  browsingViewModel = [playingCopy browsingViewModel];
  currentAssetReference = [browsingViewModel currentAssetReference];
  pxAssetReference = [currentAssetReference pxAssetReference];
  asset = [pxAssetReference asset];

  v20 = PXContentSyndicationShouldShowAttributionViewForAsset() ^ 1;
  v21 = v20 & v15;
  if ((v20 & 1) == 0 && v15)
  {
    v21 = ![(PUOneUpViewController *)self _isLocationFromProviderOverSyndicationAttributionPill:providerCopy];
  }

  _tilingView = [(PUOneUpViewController *)self _tilingView];
  [providerCopy locationInView:_tilingView];
  v25 = [[PUPointDisplayLocationProvider alloc] initWithPoint:_tilingView inCoordinateSpace:v23, v24];
  [(PUOneUpViewController *)self setLastLivePhotoGestureLocationProvider:v25];

  if (v21)
  {
    v26 = [MEMORY[0x1E69C3740] enabled] ^ 1;
  }

  else
  {
    LOBYTE(v26) = 0;
  }

  return v26;
}

- (double)livePhotoVideoPlaybackTileViewControllerExtraMinimumTouchDuration:(id)duration locationProvider:(id)provider
{
  providerCopy = provider;
  v6 = +[PUOneUpSettings sharedInstance];
  allowVisualIntelligence = [v6 allowVisualIntelligence];

  v8 = 0.0;
  if (allowVisualIntelligence && [(PUOneUpViewController *)self _isLocationFromProviderOverImageSubject:providerCopy])
  {
    if ([(PUOneUpViewController *)self _isLocationFromProviderOverInteractiveItemExcludingImageSubject:providerCopy])
    {
      v8 = 0.0;
    }

    else
    {
      v8 = 0.4;
    }
  }

  return v8;
}

- (void)cropButtonTileViewController:(id)controller didSelectAspectRatio:(CGSize)ratio
{
  height = ratio.height;
  width = ratio.width;
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  currentAssetReference = [viewModel currentAssetReference];
  if (currentAssetReference)
  {
    [MEMORY[0x1E69C3748] signalDidQuickCrop];
    v9 = [viewModel assetViewModelForAssetReference:currentAssetReference];
    modelTileTransform = [v9 modelTileTransform];

    asset = [currentAssetReference asset];
    pixelWidth = [asset pixelWidth];
    asset2 = [currentAssetReference asset];
    pixelHeight = [asset2 pixelHeight];

    view = [(PUOneUpViewController *)self view];
    [view frame];
    v17 = v16;
    v19 = v18;

    height = [[PUQuickCropContext alloc] initWithTileTransform:modelTileTransform renderedImageSize:pixelWidth boundingSize:pixelHeight selectedAspectRatio:v17, v19, width, height];
    actionsController = [(PUOneUpViewController *)self actionsController];
    [actionsController performQuickCropActionWithContext:height];
  }
}

- (id)additionalContextMenuActionsForAttributionTileViewController:(id)controller
{
  v16[1] = *MEMORY[0x1E69E9840];
  [(PUOneUpViewController *)self createMenuActionControllerForManagerIfNeeded:0 withPresentingViewController:self regionOfInterestProvider:0];
  menuActionController = [(PUOneUpViewController *)self menuActionController];
  v6 = [menuActionController contextMenuActionIfAvailableForActionType:57];

  if (v6)
  {
    v7 = v6;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      px_descriptionForAssertionMessage = [v7 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:6989 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"removeSuggestionMenuElement", v14, px_descriptionForAssertionMessage}];
    }

    [v7 setAttributes:{objc_msgSend(v7, "attributes") & 0xFFFFFFFFFFFFFFFDLL}];
    v16[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  v10 = v9;

  return v9;
}

- (void)_performPXActionType:(id)type
{
  v10 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  assetActionManager = [(PUOneUpViewController *)self assetActionManager];
  if ([assetActionManager canPerformActionType:typeCopy])
  {
    v6 = [assetActionManager actionPerformerForActionType:typeCopy];
    if (!v6)
    {
      v7 = PLOneUpGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = 138412290;
        v9 = typeCopy;
        _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "Missing action performer for action: %@", &v8, 0xCu);
      }
    }

    [v6 performActionWithCompletionHandler:0];
  }
}

- (id)_additionalExcludedMenuActionTypes
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  options = self->__options;
  if ((options & 0x10) != 0)
  {
    [array addObject:*MEMORY[0x1E69C47D8]];
    options = self->__options;
    if ((options & 0x200000) == 0)
    {
LABEL_3:
      if ((options & 0x400000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((options & 0x200000) == 0)
  {
    goto LABEL_3;
  }

  [v4 addObject:*MEMORY[0x1E69C46E8]];
  if ((self->__options & 0x400000) != 0)
  {
LABEL_4:
    [v4 addObject:*MEMORY[0x1E69C46E0]];
  }

LABEL_5:

  return v4;
}

- (id)_menuElements
{
  v22[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = *MEMORY[0x1E69C4828];
  v22[0] = *MEMORY[0x1E69C4818];
  v22[1] = v4;
  v22[2] = *MEMORY[0x1E69C47C0];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  v6 = [v3 arrayWithArray:v5];

  _additionalExcludedMenuActionTypes = [(PUOneUpViewController *)self _additionalExcludedMenuActionTypes];
  [v6 addObjectsFromArray:_additionalExcludedMenuActionTypes];

  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E695DF70];
  v9 = MEMORY[0x1E69C4488];
  assetActionManager = [(PUOneUpViewController *)self assetActionManager];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __38__PUOneUpViewController__menuElements__block_invoke;
  v19 = &unk_1E7B7A1B0;
  objc_copyWeak(&v20, &location);
  v11 = [v9 pxMenuElementsForActionManager:assetActionManager excludedActionTypes:v6 handler:&v16];
  v12 = [v8 arrayWithArray:{v11, v16, v17, v18, v19}];

  chromeViewController = [(PUOneUpViewController *)self chromeViewController];
  additionalInternalOneUpMenuElements = [chromeViewController additionalInternalOneUpMenuElements];
  [v12 addObjectsFromArray:additionalInternalOneUpMenuElements];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v12;
}

void __38__PUOneUpViewController__menuElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performPXActionType:v3];
}

- (id)oneUpChromeViewControllerFullSizeOneUpHostingView:(id)view
{
  view = [(PUOneUpViewController *)self view];
  superview = [view superview];

  return superview;
}

- (void)oneUpChromeViewControllerAdditionalActionInfoEdgeInsetsDidChange:(id)change
{
  [(PUOneUpViewController *)self _invalidateImageAnalysisInteractionAdditionalActionInfoEdgeInsets];

  [(PUOneUpViewController *)self _updateIfNeeded];
}

- (void)_handleUnlockDeviceForActionType:(unint64_t)type success:(BOOL)success
{
  v11 = *MEMORY[0x1E69E9840];
  if (!success)
  {
    v5 = PLOneUpGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = PXUnlockDeviceActionTypeDescription();
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_ERROR, "Failed to unlock device to perform action: %@", &v9, 0xCu);
    }
  }

  chromeViewController = [(PUOneUpViewController *)self chromeViewController];
  [chromeViewController invalidateIsDeviceUnlocked];

  chromeViewController2 = [(PUOneUpViewController *)self chromeViewController];
  [chromeViewController2 updateIsDeviceUnlockedIfNeeded];
}

- (void)oneUpChromeViewControllerRequestDeviceUnlock:(id)unlock for:(unint64_t)for
{
  unlockCopy = unlock;
  unlockDeviceHandlerWithActionType = [(PUOneUpViewController *)self unlockDeviceHandlerWithActionType];

  if (unlockDeviceHandlerWithActionType)
  {
    objc_initWeak(&location, self);
    unlockDeviceHandlerWithActionType2 = [(PUOneUpViewController *)self unlockDeviceHandlerWithActionType];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74__PUOneUpViewController_oneUpChromeViewControllerRequestDeviceUnlock_for___block_invoke;
    v9[3] = &unk_1E7B7A188;
    objc_copyWeak(v10, &location);
    v10[1] = for;
    (unlockDeviceHandlerWithActionType2)[2](unlockDeviceHandlerWithActionType2, v9, for);

    objc_destroyWeak(v10);
    objc_destroyWeak(&location);
  }
}

void __74__PUOneUpViewController_oneUpChromeViewControllerRequestDeviceUnlock_for___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleUnlockDeviceForActionType:*(a1 + 40) success:a2];
}

- (BOOL)oneUpChromeViewControllerIsDeviceUnlocked:(id)unlocked
{
  unlockDeviceStatus = [(PUOneUpViewController *)self unlockDeviceStatus];

  if (!unlockDeviceStatus)
  {
    return 1;
  }

  unlockDeviceStatus2 = [(PUOneUpViewController *)self unlockDeviceStatus];
  v6 = unlockDeviceStatus2[2]();

  return v6;
}

- (id)px_diagnosticsItemProvidersForPoint:(CGPoint)point inCoordinateSpace:(id)space
{
  y = point.y;
  x = point.x;
  spaceCopy = space;
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  currentAssetReference = [viewModel currentAssetReference];

  v30.receiver = self;
  v30.super_class = PUOneUpViewController;
  v11 = [(PUOneUpViewController *)&v30 px_diagnosticsItemProvidersForPoint:spaceCopy inCoordinateSpace:x, y];
  v12 = [v11 mutableCopy];

  _accessoryViewControllersManager = [(PUOneUpViewController *)self _accessoryViewControllersManager];
  v14 = [_accessoryViewControllersManager accessoryViewControllerForAssetReference:currentAssetReference];

  if (v14)
  {
    v15 = [v14 px_diagnosticsItemProvidersForPoint:spaceCopy inCoordinateSpace:{x, y}];
    [v12 addObjectsFromArray:v15];
  }

  v16 = [[PUPointDisplayLocationProvider alloc] initWithPoint:spaceCopy inCoordinateSpace:x, y];
  if (![(PUOneUpViewController *)self _isLocationFromProviderInAccessoryArea:v16])
  {
    asset = [currentAssetReference asset];
    assetCollection = [currentAssetReference assetCollection];
    v19 = objc_alloc_init(MEMORY[0x1E69C3458]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = *MEMORY[0x1E69C4010];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __79__PUOneUpViewController_px_diagnosticsItemProvidersForPoint_inCoordinateSpace___block_invoke;
      v28[3] = &unk_1E7B7E038;
      v29 = asset;
      [v19 registerItemForIdentifier:v20 loadHandler:v28];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = *MEMORY[0x1E69C4018];
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __79__PUOneUpViewController_px_diagnosticsItemProvidersForPoint_inCoordinateSpace___block_invoke_2;
      v26 = &unk_1E7B7E038;
      v27 = assetCollection;
      [v19 registerItemForIdentifier:v21 loadHandler:&v23];
    }

    [v12 addObject:{v19, v23, v24, v25, v26}];
  }

  return v12;
}

- (id)pu_debugRows
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  assetViewModelForCurrentAssetReference = [viewModel assetViewModelForCurrentAssetReference];
  videoPlayer = [assetViewModelForCurrentAssetReference videoPlayer];
  playerItem = [videoPlayer playerItem];
  v9 = playerItem;
  if (playerItem)
  {
    v10 = MEMORY[0x1E69C65E8];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __37__PUOneUpViewController_pu_debugRows__block_invoke;
    v23[3] = &unk_1E7B7E038;
    v24 = playerItem;
    v11 = [v10 pu_rowWithTitle:@"Print Video Information" output:v23];
    [v3 addObject:v11];
  }

  asset = [assetViewModelForCurrentAssetReference asset];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v13 = asset;

    if (!v13)
    {
      goto LABEL_9;
    }

    px_coreDataBrowserURL = [v13 px_coreDataBrowserURL];
    v15 = MEMORY[0x1E69C65E8];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __37__PUOneUpViewController_pu_debugRows__block_invoke_2;
    v21 = &unk_1E7B7E3F0;
    v22 = px_coreDataBrowserURL;
    asset = px_coreDataBrowserURL;
    v16 = [v15 pu_rowWithTitle:@"Core Data Browser" action:&v18];
    [v3 addObject:{v16, v18, v19, v20, v21}];
  }

  else
  {
    v13 = 0;
  }

LABEL_9:

  return v3;
}

id __37__PUOneUpViewController_pu_debugRows__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [MEMORY[0x1E69C0708] debugDescriptionForPlayerItem:*(a1 + 32)];
  v3 = [v1 stringWithFormat:@"Video Playback Information\n\n%@", v2];

  return v3;
}

void __37__PUOneUpViewController_pu_debugRows__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 openURL:*(a1 + 32) options:MEMORY[0x1E695E0F8] completionHandler:0];
}

- (id)pu_debugCurrentPrivacyController
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  privacyController = [browsingSession privacyController];

  return privacyController;
}

- (id)pu_debugCurrentViewModel
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  return viewModel;
}

- (id)pu_debugCurrentAsset
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  currentAssetReference = [viewModel currentAssetReference];

  asset = [currentAssetReference asset];

  return asset;
}

- (void)ppt_notifyWhenVKAnalysisIsReadyWithTimeout:(double)timeout handler:(id)handler
{
  handlerCopy = handler;
  currentImageAnalysisInteraction = [(PUOneUpViewController *)self currentImageAnalysisInteraction];
  v7 = currentImageAnalysisInteraction;
  if (currentImageAnalysisInteraction)
  {
    [currentImageAnalysisInteraction ppt_notifyWhenVKAnalysisIsReadyWithTimeout:handlerCopy completionHandler:timeout];
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)ppt_notifyWhenDeferredProcessingIsDoneAndFinalImageDisplayedWithTimeout:(double)timeout handler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (handlerCopy)
  {
    _tilingView = [(PUOneUpViewController *)self _tilingView];
    [_tilingView layoutIfNeeded];

    browsingSession = [(PUOneUpViewController *)self browsingSession];
    viewModel = [browsingSession viewModel];

    currentAssetReference = [viewModel currentAssetReference];
    asset = [currentAssetReference asset];

    if (objc_opt_respondsToSelector())
    {
      needsDeferredProcessing = [asset needsDeferredProcessing];
    }

    else
    {
      needsDeferredProcessing = 1;
    }

    if (fmin(timeout, 60.0) <= 0.0)
    {
      handlerCopy[2](handlerCopy, 1);
      v20 = PLOneUpGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v20, OS_LOG_TYPE_ERROR, "Deferred Processing: zero timeout is not allowed.", buf, 2u);
      }

      goto LABEL_16;
    }

    ppt_deferredProcessingCompletionBlock = [(PUOneUpViewController *)self ppt_deferredProcessingCompletionBlock];

    if (ppt_deferredProcessingCompletionBlock)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:6733 description:{@"Should not request notification, when a request is already on going"}];

      if (needsDeferredProcessing)
      {
        goto LABEL_8;
      }
    }

    else if (needsDeferredProcessing)
    {
LABEL_8:
      [(PUOneUpViewController *)self setPpt_deferredProcessingCompletionBlock:handlerCopy];
      uuid = [asset uuid];
      [(PUOneUpViewController *)self setPpt_assetUUIDNeedsDeferredProcessingFinishNotification:uuid];

      objc_initWeak(location, self);
      v16 = MEMORY[0x1E695DFF0];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __105__PUOneUpViewController_ppt_notifyWhenDeferredProcessingIsDoneAndFinalImageDisplayedWithTimeout_handler___block_invoke_2;
      v22[3] = &unk_1E7B80638;
      objc_copyWeak(&v23, location);
      v17 = [v16 pu_scheduledTimerWithTimeInterval:0 repeats:v22 block:timeout];
      [(PUOneUpViewController *)self setPpt_deferredProcessingWaitTimer:v17];

      v18 = PLOneUpGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        uuid2 = [asset uuid];
        *buf = 138412290;
        v27 = uuid2;
        _os_log_impl(&dword_1B36F3000, v18, OS_LOG_TYPE_DEBUG, "Deferred Processing (PPT): ===> DP callback installed for %@", buf, 0xCu);
      }

      objc_destroyWeak(&v23);
      objc_destroyWeak(location);
      goto LABEL_16;
    }

    location[1] = MEMORY[0x1E69E9820];
    location[2] = 3221225472;
    location[3] = __105__PUOneUpViewController_ppt_notifyWhenDeferredProcessingIsDoneAndFinalImageDisplayedWithTimeout_handler___block_invoke;
    location[4] = &unk_1E7B80C88;
    v25 = handlerCopy;
    px_dispatch_on_main_queue();

LABEL_16:
  }
}

void __105__PUOneUpViewController_ppt_notifyWhenDeferredProcessingIsDoneAndFinalImageDisplayedWithTimeout_handler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained ppt_deferredProcessingCompletionBlock];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setPpt_deferredProcessingCompletionBlock:0];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 setPpt_deferredProcessingWaitTimer:0];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 setPpt_assetUUIDNeedsDeferredProcessingFinishNotification:0];

  v7 = PLOneUpGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEBUG, "Deferred Processing (PPT): !!! time out. Has to debug why this happens.", buf, 2u);
  }

  if (v3)
  {
    v8 = v3;
    px_dispatch_on_main_queue();
  }
}

- (void)ppt_playCurrentLivePhotoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _currentContentTileController = [(PUOneUpViewController *)self _currentContentTileController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:6717 description:{@"unexpected class %@", _currentContentTileController}];
  }

  [_currentContentTileController ppt_playLivePhotoWithCompletionHandler:handlerCopy];
}

- (UIView)ppt_scrubberView
{
  if ([MEMORY[0x1E69C3640] isOneUpRefreshEnabled])
  {
    [(PUOneUpViewController *)self chromeViewController];
  }

  else
  {
    [(PUOneUpViewController *)self _barsController];
  }
  v3 = ;
  ppt_scrubberView = [v3 ppt_scrubberView];

  return ppt_scrubberView;
}

- (CGRect)ppt_scrollableBoundsForTesting
{
  _tilingView = [(PUOneUpViewController *)self _tilingView];
  navigationController = [(PUOneUpViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar frame];
  v7 = v6;

  navigationController2 = [(PUOneUpViewController *)self navigationController];
  toolbar = [navigationController2 toolbar];
  [toolbar frame];
  v11 = v10;

  superview = [_tilingView superview];
  [_tilingView frame];
  [superview convertRect:0 toView:?];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [_tilingView adjustedContentInset];
  v23 = v7 + v22;
  v25 = v11 + v24;
  v26 = v14 + v21 + 24.0;
  v27 = v16 + v23;
  v28 = v18 - (v21 + 24.0 + v21 + 24.0);
  v29 = v20 - (v23 + v25);

  v30 = v26;
  v31 = v27;
  v32 = v28;
  v33 = v29;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (BOOL)prepareForDismissingForced:(BOOL)forced
{
  forcedCopy = forced;
  presentedViewController = [(PUOneUpViewController *)self presentedViewController];
  if (objc_opt_respondsToSelector())
  {
    v5 = [presentedViewController prepareForDismissingForced:forcedCopy];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)purgeIfPossible
{
  _currentAccessoryViewController = [(PUOneUpViewController *)self _currentAccessoryViewController];
  if ([_currentAccessoryViewController conformsToProtocol:&unk_1F2C4F490])
  {
    _currentAccessoryViewController2 = [(PUOneUpViewController *)self _currentAccessoryViewController];
  }

  else
  {
    _currentAccessoryViewController2 = 0;
  }

  [_currentAccessoryViewController2 purgeIfPossible];
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  settingsCopy = settings;
  keyCopy = key;
  _tilingView = [(PUOneUpViewController *)self _tilingView];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__PUOneUpViewController_settings_changedValueForKey___block_invoke;
  v11[3] = &unk_1E7B7A160;
  v12 = settingsCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = settingsCopy;
  [_tilingView enumerateAllTileControllersUsingBlock:v11];
}

void __53__PUOneUpViewController_settings_changedValueForKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_1F2CFE618])
  {
    [v3 settings:*(a1 + 32) changedValueForKey:*(a1 + 40)];
  }
}

- (void)_notifyTileIsReadyWithTimeOut:(double)out completionHandler:(id)handler
{
  handlerCopy = handler;
  _tilingView = [(PUOneUpViewController *)self _tilingView];
  [_tilingView layoutIfNeeded];

  _currentContentTileController = [(PUOneUpViewController *)self _currentContentTileController];
  v8 = _currentContentTileController;
  if (fmin(out, 0.5) <= 0.0 || _currentContentTileController == 0)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    [_currentContentTileController notifyWhenReadyForDisplayWithTimeOut:handlerCopy completionHandler:?];
  }
}

- (void)_performNavigationToAssetDisplayDescriptor:(id)descriptor beforeDate:(id)date completionHandler:(id)handler
{
  descriptorCopy = descriptor;
  dateCopy = date;
  handlerCopy = handler;
  if (!dateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:6563 description:{@"Invalid parameter not satisfying: %@", @"beforeDate != nil"}];
  }

  v12 = objc_alloc_init(PUAssetDisplayDescriptorNavigationRequest);
  date = [MEMORY[0x1E695DF00] date];
  [dateCopy timeIntervalSinceReferenceDate];
  v15 = v14;
  [date timeIntervalSinceReferenceDate];
  v17 = v15 - v16;
  objc_initWeak(&location, self);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __97__PUOneUpViewController__performNavigationToAssetDisplayDescriptor_beforeDate_completionHandler___block_invoke;
  v29[3] = &unk_1E7B7B540;
  v33[1] = *&v17;
  v18 = dateCopy;
  v30 = v18;
  v19 = date;
  v31 = v19;
  objc_copyWeak(v33, &location);
  v20 = handlerCopy;
  v32 = v20;
  [(PUAssetDisplayDescriptorNavigationRequest *)v12 setCompletionHandler:v29];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __97__PUOneUpViewController__performNavigationToAssetDisplayDescriptor_beforeDate_completionHandler___block_invoke_796;
  v24[3] = &unk_1E7B7FE10;
  v21 = v12;
  v25 = v21;
  selfCopy = self;
  v22 = descriptorCopy;
  v27 = v22;
  v28 = v17;
  [(PUAssetDisplayDescriptorNavigationRequest *)v21 performChanges:v24];

  objc_destroyWeak(v33);
  objc_destroyWeak(&location);
}

void __97__PUOneUpViewController__performNavigationToAssetDisplayDescriptor_beforeDate_completionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = COERCE_DOUBLE(a3);
  v6 = PLOneUpGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 64);
    *buf = 134217984;
    v32 = v7;
    _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEBUG, "Completed navigationRequest with timeOut: %f", buf, 0xCu);
  }

  if ((a2 & 1) == 0)
  {
    v8 = PLOneUpGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = v5;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "Navigation unsuccessful: %@", buf, 0xCu);
    }
  }

  v9 = [MEMORY[0x1E695DF00] date];
  v10 = *(a1 + 64);
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  v12 = v11;
  [v9 timeIntervalSinceReferenceDate];
  v14 = v12 - v13;
  if (v10 >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v10;
  }

  v16 = PLOneUpGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    [v9 timeIntervalSinceReferenceDate];
    v18 = v17;
    [*(a1 + 40) timeIntervalSinceReferenceDate];
    v19 = @"NO";
    v21 = v18 - v20;
    if (v15 < 0.0)
    {
      v19 = @"YES";
    }

    *buf = 134218242;
    v32 = v21;
    v33 = 2112;
    v34 = v19;
    _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_DEFAULT, "Navigation request took %f seconds to complete. Timed Out: %@.", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __97__PUOneUpViewController__performNavigationToAssetDisplayDescriptor_beforeDate_completionHandler___block_invoke_794;
  v26[3] = &unk_1E7B7E748;
  v27 = v9;
  v23 = *(a1 + 48);
  v30 = a2;
  v28 = v5;
  v29 = v23;
  v24 = *&v5;
  v25 = v9;
  [WeakRetained _notifyTileIsReadyWithTimeOut:v26 completionHandler:v15];
}

uint64_t __97__PUOneUpViewController__performNavigationToAssetDisplayDescriptor_beforeDate_completionHandler___block_invoke_796(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) browsingSession];
  v4 = [v3 viewModel];
  [v2 setViewModel:v4];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 48) assetReference];
  [v5 setTargetAssetReference:v6];

  v7 = [*(a1 + 48) modifiedAfterDate];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 48) modifiedAfterDate];
    [v8 setTargetModificationDate:v9];
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    [v10 videoSeekTime];
    if ((v18 & 0x100000000) != 0)
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 48);
      if (v12)
      {
        [v12 videoSeekTime];
      }

      else
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
      }

      [v11 setTargetSeekTime:&v14];
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  return [*(a1 + 32) setTimeOut:{*(a1 + 56), v14, v15, v16, v17, v18, v19}];
}

uint64_t __97__PUOneUpViewController__performNavigationToAssetDisplayDescriptor_beforeDate_completionHandler___block_invoke_794(uint64_t a1, char a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = PLOneUpGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x1E695DF00] date];
    [v5 timeIntervalSinceDate:*(a1 + 32)];
    v9 = 134217984;
    v10 = v6;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "Tile readiness notification took %f.", &v9, 0xCu);
  }

  if ((a2 & 1) == 0)
  {
    v7 = PLOneUpGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "Tile readiness notification failed.", &v9, 2u);
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 40));
  }

  return result;
}

- (BOOL)_canAttemptNavigationToAssetDisplayDescriptor:(id)descriptor
{
  v22 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  assetsDataSource = [viewModel assetsDataSource];

  if (!assetsDataSource)
  {
    v8 = PLOneUpGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      browsingSession2 = [(PUOneUpViewController *)self browsingSession];
      browsingSession3 = [(PUOneUpViewController *)self browsingSession];
      viewModel2 = [browsingSession3 viewModel];
      v18 = 138412546;
      v19 = browsingSession2;
      v20 = 2112;
      v21 = viewModel2;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "assetsDataSource is unexpectedly nil. browsingSession: %@, viewModel: %@", &v18, 0x16u);
    }
  }

  assetReference = [descriptorCopy assetReference];
  v13 = [assetsDataSource couldAssetReferenceAppear:assetReference];
  v14 = PLOneUpGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:v13];
    v16 = [MEMORY[0x1E696AD98] numberWithInt:assetReference != 0];
    v18 = 138412546;
    v19 = v15;
    v20 = 2112;
    v21 = v16;
    _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_DEBUG, "Can attempt navigation? %@, assetReference?: %@", &v18, 0x16u);
  }

  return v13;
}

- (void)navigateToAssetDisplayDescriptor:(id)descriptor beforeDate:(id)date completionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  dateCopy = date;
  handlerCopy = handler;
  v11 = PLOneUpGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = @"YES";
    if (!handlerCopy)
    {
      v12 = @"NO";
    }

    v14 = 138412546;
    v15 = descriptorCopy;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEBUG, "Navigating to assetDisplayDescriptor: %@, completionHandler?: %@", &v14, 0x16u);
  }

  if (descriptorCopy)
  {
    if ([(PUOneUpViewController *)self _canAttemptNavigationToAssetDisplayDescriptor:descriptorCopy])
    {
      [(PUOneUpViewController *)self _performNavigationToAssetDisplayDescriptor:descriptorCopy beforeDate:dateCopy completionHandler:handlerCopy];
    }

    else if (handlerCopy)
    {
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PUAssetDisplayDescriptorNavigationErrorDomain" code:1 userInfo:0];
      handlerCopy[2](handlerCopy, 0, v13);
    }
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 1, 0);
  }
}

- (BOOL)accessoryTileViewControllerShouldUseSquareImageWhenShowingAccessoryView:(id)view
{
  viewCopy = view;
  _spec = [(PUOneUpViewController *)self _spec];
  prefersSquareImageInDetails = [_spec prefersSquareImageInDetails];

  if (prefersSquareImageInDetails)
  {
    if ([MEMORY[0x1E69C3640] isOneUpRefreshEnabled] && (objc_msgSend(MEMORY[0x1E69C3640], "sharedInstance"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "enableSideCommentsInLandscape"), v7, (v8 & 1) != 0))
    {
      LOBYTE(v9) = 1;
    }

    else
    {
      assetReference = [viewCopy assetReference];
      asset = [assetReference asset];
      v9 = ![PUCommentsViewController canShowCommentsForAsset:asset];
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)accessoryTileViewControllerWillHideNavigationBarWhenShowingAccessoryView:(id)view
{
  assetReference = [view assetReference];
  _accessoryViewControllersManager = [(PUOneUpViewController *)self _accessoryViewControllersManager];
  v6 = [_accessoryViewControllersManager shouldHideNavigationBarWhenShowingAccessoryViewControllerForAssetReference:assetReference];

  if (v6)
  {
    v7 = ![(PUOneUpViewController *)self _isCurrentAssetAndInEditModeForAssetReference:assetReference];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)accessoryTileViewControllerWillHideToolbarWhenShowingAccessoryView:(id)view
{
  assetReference = [view assetReference];
  _accessoryViewControllersManager = [(PUOneUpViewController *)self _accessoryViewControllersManager];
  v6 = [_accessoryViewControllersManager shouldHideToolbarWhenShowingAccessoryViewControllerForAssetReference:assetReference];

  return v6;
}

- (id)accessoryTileViewControllerAccessoryViewController:(id)controller
{
  assetReference = [controller assetReference];
  _accessoryViewControllersManager = [(PUOneUpViewController *)self _accessoryViewControllersManager];
  v6 = [_accessoryViewControllersManager accessoryViewControllerForAssetReference:assetReference];

  return v6;
}

- (id)irisImageTileViewController:(id)controller delegateForGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  _gestureRecognizerCoordinator = [(PUOneUpViewController *)self _gestureRecognizerCoordinator];
  [_gestureRecognizerCoordinator addIrisGestureRecognizer:recognizerCopy];

  return [(PUOneUpViewController *)self _gestureRecognizerCoordinator];
}

- (void)irisImageTileViewControllerDidEndVitality:(id)vitality
{
  asset = [vitality asset];
  eventTracker = [(PUOneUpViewController *)self eventTracker];
  [eventTracker logVitalityDidEndForLivePhoto:asset];
}

- (void)irisImageTileViewControllerDidEndPlaying:(id)playing
{
  playingCopy = playing;
  [(PUOneUpViewController *)self _setIrisPlaying:0];
  [(PUOneUpViewController *)self _setDidPlayCurrentLivePhoto:1];
  asset = [playingCopy asset];

  eventTracker = [(PUOneUpViewController *)self eventTracker];
  [eventTracker logUserDidPlayLivePhoto:asset];

  [(PUOneUpViewController *)self _updateIfNeeded];
}

- (void)irisImageTileViewControllerDidBeginPlaying:(id)playing
{
  playingCopy = playing;
  assetViewModel = [playingCopy assetViewModel];
  irisPlayer = [assetViewModel irisPlayer];
  player = [irisPlayer player];
  if ([player currentPlaybackStyle] == 1)
  {
    [(PUOneUpViewController *)self _setIrisPlaying:1];
    asset = [playingCopy asset];
    eventTracker = [(PUOneUpViewController *)self eventTracker];
    [eventTracker logUserWillPlayLivePhoto:asset];
  }
}

- (void)irisImageTileViewControllerDidBeginHinting:(id)hinting
{
  _barsController = [(PUOneUpViewController *)self _barsController];
  tapGestureRecognizer = [_barsController tapGestureRecognizer];
  [tapGestureRecognizer pu_cancel];

  _doubleTapZoomController = [(PUOneUpViewController *)self _doubleTapZoomController];
  doubleTapGestureRecognizer = [_doubleTapZoomController doubleTapGestureRecognizer];
  [doubleTapGestureRecognizer pu_cancel];
}

- (void)oneUpAssetTransition:(id)transition animateTransitionWithContext:(id)context duration:(double)duration completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  executedAction = [contextCopy executedAction];
  undoManager = [(PUOneUpViewController *)self undoManager];
  [executedAction registerWithUndoManager:undoManager];

  _tilingView = [(PUOneUpViewController *)self _tilingView];
  [_tilingView layoutIfNeeded];
  _currentContentTileController = [(PUOneUpViewController *)self _currentContentTileController];
  if (_currentContentTileController)
  {
    durationCopy = duration;
    _tilingView2 = [(PUOneUpViewController *)self _tilingView];
    layout = [_tilingView2 layout];

    browsingSession = [(PUOneUpViewController *)self browsingSession];
    viewModel = [browsingSession viewModel];

    assetsDataSource = [viewModel assetsDataSource];
    v149 = viewModel;
    currentAssetReference = [viewModel currentAssetReference];
    v144 = assetsDataSource;
    [assetsDataSource indexPathForAssetReference:?];
    v142 = v145 = layout;
    v20 = [layout layoutInfoForTileWithIndexPath:? kind:?];
    containerView = [contextCopy containerView];
    fromView = [contextCopy fromView];
    snapshotView = [contextCopy snapshotView];
    [snapshotView frame];
    v139 = fromView;
    [containerView convertRect:fromView fromView:?];
    v137 = v24;
    v26 = v25;
    v128 = v25;
    v28 = v27;
    v30 = v29;
    [snapshotView setFrame:?];
    [containerView addSubview:snapshotView];
    [v20 frame];
    v32 = v31;
    v133 = v33;
    v135 = v31;
    v34 = v33;
    v36 = v35;
    v130 = v37;
    v131 = v35;
    v38 = v37;
    coordinateSystem = [v20 coordinateSystem];
    contentCoordinateSystem = [_tilingView contentCoordinateSystem];
    v41 = PUConvertPointFromCoordinateSystemToCoordinateSystem(coordinateSystem, contentCoordinateSystem, v32, v34);
    v43 = v42;

    view = [(PUOneUpViewController *)self view];
    [view convertRect:_tilingView fromView:{v41, v43, v36, v38}];
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;

    view2 = [(PUOneUpViewController *)self view];
    [containerView convertRect:view2 fromView:{v46, v48, v50, v52}];
    v126 = v55;
    v127 = v54;
    v125 = v56;
    v58 = v57;

    view3 = [(PUOneUpViewController *)self view];
    v140 = containerView;
    [containerView convertRect:view3 toView:{v26, v28, v137, v30}];
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;

    view4 = [(PUOneUpViewController *)self view];
    [_tilingView convertRect:view4 fromView:{v61, v63, v65, v67}];
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v76 = v75;

    contentCoordinateSystem2 = [_tilingView contentCoordinateSystem];
    coordinateSystem2 = [v20 coordinateSystem];
    v79 = PUConvertPointFromCoordinateSystemToCoordinateSystem(contentCoordinateSystem2, coordinateSystem2, v70, v72);
    v81 = v80;

    v146 = snapshotView;
    contentMode = [snapshotView contentMode];
    v182 = 0u;
    v183 = 0u;
    v181 = 0u;
    v83 = v28;
    v84 = v125;
    v85 = v137;
    v86 = v30;
    v87 = v127;
    v88 = v126;
    v138 = v58;
    PUAffineTransformToMatchRect(&v181, v128, v83, v85, v86, v127, v126, v125, v58);
    v179 = 0u;
    v180 = 0u;
    v178 = 0u;
    matched = PUAffineTransformToMatchRect(&v178, v135, v133, v131, v130, v79, v81, v74, v76);
    v132 = contentMode == 2;
    v148 = completionCopy;
    if (contentMode == 2)
    {
      PXRectGetCenter();
      v90 = *(MEMORY[0x1E695EFD0] + 16);
      v175 = *MEMORY[0x1E695EFD0];
      v176 = v90;
      v177 = *(MEMORY[0x1E695EFD0] + 32);
      v102 = v20;
      v99 = v74;
      v101 = v76;
    }

    else
    {
      [v20 center];
      v95 = v94;
      v97 = v96;
      [v20 size];
      v99 = v98;
      v101 = v100;
      v175 = v178;
      v176 = v179;
      v177 = v180;
      v102 = v20;
      v103 = v95;
      v104 = v97;
    }

    v105 = [v102 layoutInfoWithCenter:&v175 size:v103 transform:{v104, v99, v101, *&v125, *&v126, *&v127}];
    v106 = v20;
    array = [MEMORY[0x1E695DF70] array];
    [array addObject:_currentContentTileController];
    _backgroundTileViewController = [(PUOneUpViewController *)self _backgroundTileViewController];
    if (_backgroundTileViewController && [contextCopy shouldHideBackground])
    {
      [array addObject:_backgroundTileViewController];
    }

    if ([array count])
    {
      [_tilingView detachTileControllers:array];
    }

    v136 = v105;
    [_currentContentTileController applyLayoutInfo:v105];
    if ([contextCopy shouldHideBackground])
    {
      presentationLayoutInfo = [_backgroundTileViewController presentationLayoutInfo];
      v110 = [presentationLayoutInfo layoutInfoWithAlpha:0.0];

      [_backgroundTileViewController applyLayoutInfo:v110];
    }

    v134 = _backgroundTileViewController;
    v111 = _tilingView;
    [(PUOneUpViewController *)self _hideOverlays];
    transitionInfo = [contextCopy transitionInfo];
    v113 = transitionInfo;
    if (transitionInfo)
    {
      if (([transitionInfo allowAutoPlay] & 1) == 0)
      {
        assetViewModelForCurrentAssetReference = [v149 assetViewModelForCurrentAssetReference];
        videoPlayer = [assetViewModelForCurrentAssetReference videoPlayer];
        v173[0] = MEMORY[0x1E69E9820];
        v173[1] = 3221225472;
        v173[2] = __95__PUOneUpViewController_oneUpAssetTransition_animateTransitionWithContext_duration_completion___block_invoke;
        v173[3] = &unk_1E7B80DD0;
        v174 = videoPlayer;
        v116 = videoPlayer;
        [v116 performChanges:v173];
      }

      [_currentContentTileController adoptAssetTransitionInfo:v113];
    }

    v117 = [PUInterfaceManager beginDisablingUserInteractionForReason:10];
    [_currentContentTileController startSuppressingAnimatedUpdatesWithReason:@"one-up transition"];
    [_currentContentTileController viewControllerTransitionWillBegin];
    v129 = MEMORY[0x1E69DD250];
    v158[0] = MEMORY[0x1E69E9820];
    v158[1] = 3221225472;
    v158[2] = __95__PUOneUpViewController_oneUpAssetTransition_animateTransitionWithContext_duration_completion___block_invoke_2;
    v158[3] = &unk_1E7B7A110;
    v159 = contextCopy;
    v160 = v149;
    v172 = v132;
    v161 = v146;
    v165 = v87;
    v166 = v88;
    v167 = v84;
    v168 = v138;
    v169 = v181;
    v170 = v182;
    v171 = v183;
    v162 = _currentContentTileController;
    v163 = v20;
    selfCopy = self;
    v150[0] = MEMORY[0x1E69E9820];
    v150[1] = 3221225472;
    v150[2] = __95__PUOneUpViewController_oneUpAssetTransition_animateTransitionWithContext_duration_completion___block_invoke_4;
    v150[3] = &unk_1E7B7A138;
    v147 = contextCopy;
    v118 = v111;
    v151 = v111;
    v152 = array;
    v153 = v161;
    v154 = v139;
    v155 = v162;
    v156 = v117;
    completionCopy = v148;
    v157 = v148;
    v119 = v117;
    v120 = v139;
    v121 = v161;
    v122 = array;
    v123 = v106;
    v124 = v149;
    [v129 animateWithDuration:v158 animations:v150 completion:durationCopy];

    _tilingView = v118;
    contextCopy = v147;
  }

  else
  {
    navigationController = [(PUOneUpViewController *)self navigationController];
    topViewController = [navigationController topViewController];

    if (topViewController == self)
    {
      v93 = [navigationController popViewControllerAnimated:0];
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, topViewController == self);
    }
  }
}

void __95__PUOneUpViewController_oneUpAssetTransition_animateTransitionWithContext_duration_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) animationBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) animationBlock];
    v3[2]();
  }

  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __95__PUOneUpViewController_oneUpAssetTransition_animateTransitionWithContext_duration_completion___block_invoke_3;
  v7[3] = &unk_1E7B80DD0;
  v8 = v4;
  [v8 performChanges:v7];
  if (*(a1 + 160) == 1)
  {
    [*(a1 + 48) setFrame:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
  }

  else
  {
    v5 = *(a1 + 128);
    v6[0] = *(a1 + 112);
    v6[1] = v5;
    v6[2] = *(a1 + 144);
    [*(a1 + 48) setTransform:v6];
  }

  [*(a1 + 48) setAlpha:0.0];
  [*(a1 + 56) applyLayoutInfo:*(a1 + 64)];
  [*(a1 + 72) _unhideOverlays];
}

void __95__PUOneUpViewController_oneUpAssetTransition_animateTransitionWithContext_duration_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v5 = objc_alloc_init(PUTileReattachmentContext);
  [(PUTileReattachmentContext *)v5 setTransitioningOverOneUp:1];
  [*(a1 + 32) reattachTileControllers:*(a1 + 40) withContext:v5];
  [*(a1 + 48) removeFromSuperview];
  [*(a1 + 56) removeFromSuperview];
  [*(a1 + 64) stopSuppressingAnimatedUpdatesWithReason:@"one-up transition"];
  [*(a1 + 64) viewControllerTransitionDidEnd];
  [PUInterfaceManager endDisablingUserInteraction:*(a1 + 72)];
  v4 = *(a1 + 80);
  if (v4)
  {
    (*(v4 + 16))(v4, a2);
  }
}

- (id)createAssetTransitionInfo
{
  _currentContentTileController = [(PUOneUpViewController *)self _currentContentTileController];
  generateAssetTransitionInfo = [_currentContentTileController generateAssetTransitionInfo];

  return generateAssetTransitionInfo;
}

- (void)oneUpAssetTransition:(id)transition requestTransitionContextWithCompletion:(id)completion options:(unint64_t)options
{
  optionsCopy = options;
  transitionCopy = transition;
  completionCopy = completion;
  _currentContentTileController = [(PUOneUpViewController *)self _currentContentTileController];
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  currentAssetReference = [viewModel currentAssetReference];

  v63 = currentAssetReference;
  asset = [currentAssetReference asset];
  v65 = completionCopy;
  v15 = [asset playbackStyle] == 4 || objc_msgSend(asset, "playbackStyle") == 5;
  v61 = optionsCopy;
  if ((optionsCopy & 2) != 0 && v15)
  {
    v16 = _currentContentTileController;
    if (v16)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_8:
        view = [v16 view];
        v18 = [view snapshotViewAfterScreenUpdates:0];

        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __93__PUOneUpViewController_oneUpAssetTransition_requestTransitionContextWithCompletion_options___block_invoke;
        v69[3] = &unk_1E7B7B808;
        v70 = v18;
        v71 = asset;
        v19 = v18;
        generateAssetTransitionInfo = [PUAssetTransitionInfo assetTransitionInfoWithConfigurationBlock:v69];

        goto LABEL_10;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v59 = objc_opt_class();
      v58 = NSStringFromClass(v59);
      px_descriptionForAssertionMessage = [v16 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:6187 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"tileController", v58, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v57 = objc_opt_class();
      v58 = NSStringFromClass(v57);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:6187 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"tileController", v58}];
    }

    goto LABEL_8;
  }

  generateAssetTransitionInfo = [_currentContentTileController generateAssetTransitionInfo];
LABEL_10:
  if (objc_opt_respondsToSelector())
  {
    toViewController = [transitionCopy toViewController];
    if (objc_opt_respondsToSelector())
    {
      v22 = [toViewController oneUpAssetTransition:transitionCopy adjustTransitionInfo:generateAssetTransitionInfo];
      v23 = v22;
      if (v22)
      {
        v24 = v22;

        generateAssetTransitionInfo = v24;
      }
    }
  }

  snapshotView = [generateAssetTransitionInfo snapshotView];
  v64 = _currentContentTileController;
  if (snapshotView)
  {
    [(PUOneUpViewController *)self _currentFrameForTileController:_currentContentTileController];
    [snapshotView setFrame:?];
    [snapshotView setContentMode:2];
    [snapshotView setClipsToBounds:1];
    layoutInfo = [_currentContentTileController layoutInfo];
    [layoutInfo cornerRadius];
    v28 = v27;
    layer = [snapshotView layer];
    [layer setCornerRadius:v28];

    layoutInfo2 = [_currentContentTileController layoutInfo];
    cornerCurve = [layoutInfo2 cornerCurve];
    layer2 = [snapshotView layer];
    [layer2 setCornerCurve:cornerCurve];

    v33 = snapshotView;
  }

  else
  {
    v33 = [(PUOneUpViewController *)self _currentPlaceholderSnapshotViewForTileController:_currentContentTileController];
    image = [generateAssetTransitionInfo image];
    [v33 setImage:image];
    [v33 setClipsToBounds:1];
    [_currentContentTileController layoutInfo];
    v35 = generateAssetTransitionInfo;
    v36 = asset;
    v38 = v37 = _currentContentTileController;
    [v38 cornerRadius];
    v40 = v39;
    layer3 = [v33 layer];
    [layer3 setCornerRadius:v40];

    layoutInfo3 = [v37 layoutInfo];
    cornerCurve2 = [layoutInfo3 cornerCurve];
    layer4 = [v33 layer];
    [layer4 setCornerCurve:cornerCurve2];

    [v33 setContentMode:2];
    _tilingView = [(PUOneUpViewController *)self _tilingView];
    if ([_tilingView shouldDisplayHDR])
    {
      v46 = 2;
    }

    else
    {
      v46 = 0;
    }

    asset = v36;
    generateAssetTransitionInfo = v35;
    snapshotView = 0;
    [v33 setPreferredImageDynamicRange:v46];
  }

  imageLayerModulator = [generateAssetTransitionInfo imageLayerModulator];
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __93__PUOneUpViewController_oneUpAssetTransition_requestTransitionContextWithCompletion_options___block_invoke_2;
  v67[3] = &unk_1E7B7F3B8;
  v48 = v33;
  v68 = v48;
  [imageLayerModulator performChanges:v67];

  if (v61)
  {
    _trailingContentTileController = [(PUOneUpViewController *)self _trailingContentTileController];
    generateAssetTransitionInfo2 = [_trailingContentTileController generateAssetTransitionInfo];
    [(PUOneUpViewController *)self _leadingContentTileController];
    v52 = v62 = asset;
    generateAssetTransitionInfo3 = [v52 generateAssetTransitionInfo];
    view2 = [(PUOneUpViewController *)self view];
    v55 = generateAssetTransitionInfo2;
    v50 = [PUOneUpAssetTransitionContext oneUpAssetTransitionContextWithContainerView:0 fromView:view2 snapshotView:v48 transitionInfo:generateAssetTransitionInfo trailingAssetTransitionInfo:generateAssetTransitionInfo2 leadingAssetTransitionInfo:generateAssetTransitionInfo3];

    asset = v62;
  }

  else
  {
    _trailingContentTileController = [(PUOneUpViewController *)self view];
    v50 = [PUOneUpAssetTransitionContext oneUpAssetTransitionContextWithContainerView:0 fromView:_trailingContentTileController snapshotView:v48 transitionInfo:generateAssetTransitionInfo];
  }

  if (v65)
  {
    (v65)[2](v65, v50);
  }
}

void __93__PUOneUpViewController_oneUpAssetTransition_requestTransitionContextWithCompletion_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setSnapshotView:v3];
  [v4 setAsset:*(a1 + 40)];
}

void __93__PUOneUpViewController_oneUpAssetTransition_requestTransitionContextWithCompletion_options___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 layer];
  [v3 setLayer:v4];
}

- (void)_didEndTransition
{
  v13[1] = *MEMORY[0x1E69E9840];
  _userTransformTileViewControllerForCurrentAsset = [(PUOneUpViewController *)self _userTransformTileViewControllerForCurrentAsset];
  [_userTransformTileViewControllerForCurrentAsset zoomOutAnimated:0];

  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__PUOneUpViewController__didEndTransition__block_invoke;
  v11[3] = &unk_1E7B80DD0;
  v6 = viewModel;
  v12 = v6;
  [v6 performChanges:v11];
  [(PUOneUpViewController *)self _unhideOverlays];
  _tilingView = [(PUOneUpViewController *)self _tilingView];
  _currentContentTileController = [(PUOneUpViewController *)self _currentContentTileController];
  if ([_currentContentTileController isDetached])
  {
    v9 = objc_alloc_init(PUTileReattachmentContext);
    [(PUTileReattachmentContext *)v9 setTransitioningOverOneUp:1];
    v13[0] = _currentContentTileController;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [_tilingView reattachTileControllers:v10 withContext:v9];
  }

  [_tilingView layoutIfNeeded];
}

- (void)_willBeginTransition
{
  v9[1] = *MEMORY[0x1E69E9840];
  _tilingView = [(PUOneUpViewController *)self _tilingView];
  if ([(PUOneUpViewController *)self _accessoryContentKindForCurrentAsset]== 1)
  {
    [(PUOneUpViewController *)self _setAccessoryVisible:0];
  }

  [(PUOneUpViewController *)self _hideOverlays];
  _currentContentTileController = [(PUOneUpViewController *)self _currentContentTileController];
  v5 = _currentContentTileController;
  if (_currentContentTileController)
  {
    v9[0] = _currentContentTileController;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [_tilingView detachTileControllers:v6];

    presentationLayoutInfo = [v5 presentationLayoutInfo];
    v8 = [presentationLayoutInfo layoutInfoWithAlpha:0.0];
    [v5 applyLayoutInfo:v8];
  }

  [_tilingView layoutIfNeeded];
}

- (void)_unhideOverlays
{
  _tilingView = [(PUOneUpViewController *)self _tilingView];
  _hiddenTilesController = [(PUOneUpViewController *)self _hiddenTilesController];
  if ([_hiddenTilesController count])
  {
    [_tilingView reattachTileControllers:_hiddenTilesController withContext:0];
    [(PUOneUpViewController *)self _setHiddenTilesController:0];
    [_tilingView layoutIfNeeded];
  }
}

- (void)_hideOverlays
{
  selfCopy = self;
  v39 = *MEMORY[0x1E69E9840];
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  _tilingView = [(PUOneUpViewController *)selfCopy _tilingView];
  v6 = _tilingView;
  if (viewModel && _tilingView)
  {
    v28 = viewModel;
    currentAssetReference = [viewModel currentAssetReference];
    indexPath = [currentAssetReference indexPath];
    v27 = currentAssetReference;
    dataSourceIdentifier = [currentAssetReference dataSourceIdentifier];
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    _tileKindsToHide = [(PUOneUpViewController *)selfCopy _tileKindsToHide];
    v12 = [_tileKindsToHide countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v12)
    {
      v13 = v12;
      v26 = selfCopy;
      v14 = 0;
      v15 = *v34;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          v17 = v14;
          if (*v34 != v15)
          {
            objc_enumerationMutation(_tileKindsToHide);
          }

          v14 = [v6 presentedTileControllerWithIndexPath:indexPath kind:*(*(&v33 + 1) + 8 * i) dataSourceIdentifier:dataSourceIdentifier];

          if (v14 && ([v14 isDetached] & 1) == 0)
          {
            [v10 addObject:v14];
          }
        }

        v13 = [_tileKindsToHide countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v13);

      selfCopy = v26;
    }

    [(PUOneUpViewController *)selfCopy _setHiddenTilesController:v10];
    [v6 detachTileControllers:v10];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v18 = v10;
    v19 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v30;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v29 + 1) + 8 * j);
          presentationLayoutInfo = [v23 presentationLayoutInfo];
          v25 = [presentationLayoutInfo layoutInfoWithAlpha:0.0];

          [v23 applyLayoutInfo:v25];
        }

        v20 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v20);
    }

    viewModel = v28;
  }
}

- (NSArray)_tileKindsToHide
{
  v7[8] = *MEMORY[0x1E69E9840];
  tileKindsToHide = self->__tileKindsToHide;
  if (!tileKindsToHide)
  {
    v7[0] = PUTileKindBadge;
    v7[1] = PUTileKindAccessory;
    v7[2] = PUTileKindPlayButton;
    v7[3] = PUTileKindProgressIndicator;
    v7[4] = PUTileKindBufferingIndicator;
    v7[5] = PUTileKindLoadingIndicator;
    v7[6] = PUTileKindAssetExplorerReviewScreenBadge;
    v7[7] = PUTileKindAssetExplorerReviewScreenProgressIndicator;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:8];
    v5 = self->__tileKindsToHide;
    self->__tileKindsToHide = v4;

    tileKindsToHide = self->__tileKindsToHide;
  }

  return tileKindsToHide;
}

- (CGRect)_currentFrameForTileController:(id)controller
{
  if (controller)
  {
    controllerCopy = controller;
    _tilingView = [(PUOneUpViewController *)self _tilingView];
    presentationLayoutInfo = [controllerCopy presentationLayoutInfo];

    [presentationLayoutInfo frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    coordinateSystem = [presentationLayoutInfo coordinateSystem];
    contentCoordinateSystem = [_tilingView contentCoordinateSystem];
    v17 = PUConvertPointFromCoordinateSystemToCoordinateSystem(coordinateSystem, contentCoordinateSystem, v8, v10);
    v19 = v18;

    view = [(PUOneUpViewController *)self view];
    [view convertRect:_tilingView fromView:{v17, v19, v12, v14}];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
  }

  else
  {
    v22 = *MEMORY[0x1E695F058];
    v24 = *(MEMORY[0x1E695F058] + 8);
    v26 = *(MEMORY[0x1E695F058] + 16);
    v28 = *(MEMORY[0x1E695F058] + 24);
  }

  v29 = v22;
  v30 = v24;
  v31 = v26;
  v32 = v28;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (id)_currentPlaceholderSnapshotViewForTileController:(id)controller
{
  if (controller)
  {
    [(PUOneUpViewController *)self _currentFrameForTileController:?];
    v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v4, v5, v6, v7}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_leadingContentTileController
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  leadingAssetReference = [viewModel leadingAssetReference];

  v6 = [(PUOneUpViewController *)self _contentTileControllerForAssetReference:leadingAssetReference];

  return v6;
}

- (id)_trailingContentTileController
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  trailingAssetReference = [viewModel trailingAssetReference];

  v6 = [(PUOneUpViewController *)self _contentTileControllerForAssetReference:trailingAssetReference];

  return v6;
}

- (id)_contentTileControllerForAssetReference:(id)reference
{
  if (reference)
  {
    referenceCopy = reference;
    _tilingView = [(PUOneUpViewController *)self _tilingView];
    indexPath = [referenceCopy indexPath];
    dataSourceIdentifier = [referenceCopy dataSourceIdentifier];

    v8 = [_tilingView presentedTileControllerWithIndexPath:indexPath kind:@"PUTileKindItemContent" dataSourceIdentifier:dataSourceIdentifier];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_currentContentTileController
{
  _tilingView = [(PUOneUpViewController *)self _tilingView];
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  currentAssetReference = [viewModel currentAssetReference];

  indexPath = [currentAssetReference indexPath];
  dataSourceIdentifier = [currentAssetReference dataSourceIdentifier];
  v9 = [_tilingView presentedTileControllerWithIndexPath:indexPath kind:@"PUTileKindItemContent" dataSourceIdentifier:dataSourceIdentifier];

  return v9;
}

- (void)overOneUpPresentationSessionDidFinish:(id)finish
{
  [(PUOneUpViewController *)self _setOverOneUpPresentationSession:0];
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__PUOneUpViewController_overOneUpPresentationSessionDidFinish___block_invoke;
  v7[3] = &unk_1E7B80DD0;
  v8 = viewModel;
  v6 = viewModel;
  [v6 performChanges:v7];
}

- (void)overOneUpPresentationSession:(id)session didPresent:(id)present
{
  v4 = [(PUOneUpViewController *)self browsingSession:session];
  viewModel = [v4 viewModel];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__PUOneUpViewController_overOneUpPresentationSession_didPresent___block_invoke;
  v7[3] = &unk_1E7B80DD0;
  v8 = viewModel;
  v6 = viewModel;
  [v6 performChanges:v7];
}

- (BOOL)overOneUpPresentationSessionPresentingViewControllerIsReady:(id)ready
{
  parentViewController = [(PUOneUpViewController *)self parentViewController];

  if (!parentViewController || ([(PUOneUpViewController *)self isBeingDismissed]& 1) != 0)
  {
    return 0;
  }

  _tilingView = [(PUOneUpViewController *)self _tilingView];
  v5 = _tilingView != 0;

  return v5;
}

- (id)overOneUpPresentationSessionBrowserViewModel:(id)model
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  return viewModel;
}

- (id)_presentedTileControllerForIndexPath:(id)path kind:(id)kind
{
  kindCopy = kind;
  pathCopy = path;
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  assetsDataSource = [viewModel assetsDataSource];
  _tilingView = [(PUOneUpViewController *)self _tilingView];
  identifier = [assetsDataSource identifier];
  v13 = [_tilingView presentedTileControllerWithIndexPath:pathCopy kind:kindCopy dataSourceIdentifier:identifier];

  return v13;
}

- (id)_presentedTileControllerForCurrentIndexPathWithKind:(id)kind
{
  kindCopy = kind;
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  assetsDataSource = [viewModel assetsDataSource];
  currentAssetReference = [viewModel currentAssetReference];
  v9 = [assetsDataSource indexPathForAssetReference:currentAssetReference];
  v10 = [(PUOneUpViewController *)self _presentedTileControllerForIndexPath:v9 kind:kindCopy];

  return v10;
}

- (id)overOneUpPresentationSessionCreateIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  _overOneUpPresentationSession = [(PUOneUpViewController *)self _overOneUpPresentationSession];
  if (!_overOneUpPresentationSession && neededCopy)
  {
    v6 = [PUOneUpActivitySharingActionPerformer alloc];
    actionsController = [(PUOneUpViewController *)self actionsController];
    v8 = [(PUOneUpActivitySharingActionPerformer *)v6 initWithActionsController:actionsController];

    _overOneUpPresentationSession = [[PUOverOneUpPresentationSession alloc] initWithActivitySharingActionPerformer:v8];
    [(PUOverOneUpPresentationSession *)_overOneUpPresentationSession setDelegate:self];
    _barsController = [(PUOneUpViewController *)self _barsController];
    [(PUOverOneUpPresentationSession *)_overOneUpPresentationSession setBarsDelegate:_barsController];

    [(PUOneUpViewController *)self _setOverOneUpPresentationSession:_overOneUpPresentationSession];
  }

  return _overOneUpPresentationSession;
}

- (void)accessoryVisibilityInteractionController:(id)controller setAccessoryVisible:(BOOL)visible changeReason:(int64_t)reason
{
  visibleCopy = visible;
  v7 = [PUInterfaceManager currentTheme:controller];
  photoBrowserChromeVisibleBackgroundColor = [v7 photoBrowserChromeVisibleBackgroundColor];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v10 = [photoBrowserChromeVisibleBackgroundColor isEqual:systemBackgroundColor];

  if (v10)
  {
    _currentAssetViewModel = [(PUOneUpViewController *)self _currentAssetViewModel];
    modelTileTransform = [_currentAssetViewModel modelTileTransform];
    hasUserZoomedIn = [modelTileTransform hasUserZoomedIn];

    if (hasUserZoomedIn)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __99__PUOneUpViewController_accessoryVisibilityInteractionController_setAccessoryVisible_changeReason___block_invoke;
      v16[3] = &unk_1E7B80DD0;
      v17 = _currentAssetViewModel;
      [v17 performChanges:v16];

LABEL_9:
      return;
    }

    if (visibleCopy)
    {
      if ([(PUOneUpViewController *)self _shouldShowAccessoryAfterUnlock]|| [(PUOneUpViewController *)self _requireUnlockedDeviceForAccessoryView]&& ([(PUOneUpViewController *)self unlockDeviceStatus], v14 = objc_claimAutoreleasedReturnValue(), v15 = v14[2](), v14, (v15 & 1) == 0))
      {
        [(PUOneUpViewController *)self _setShouldShowAccessoryAfterUnlock:1];
        goto LABEL_9;
      }
    }

    else
    {
      [(PUOneUpViewController *)self _setShouldShowAccessoryAfterUnlock:0];
    }

    [(PUOneUpViewController *)self _setAccessoryVisible:visibleCopy changeReason:2];
    goto LABEL_9;
  }
}

- (void)accessoryVisibilityInteractionControllerDidEnd:(id)end
{
  if ([(PUOneUpViewController *)self _shouldShowAccessoryAfterUnlock])
  {
    [(PUOneUpViewController *)self _setShouldShowAccessoryAfterUnlock:0];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__PUOneUpViewController_accessoryVisibilityInteractionControllerDidEnd___block_invoke;
    aBlock[3] = &unk_1E7B7F020;
    aBlock[4] = self;
    v4 = _Block_copy(aBlock);
    unlockDeviceHandlerWithActionType = [(PUOneUpViewController *)self unlockDeviceHandlerWithActionType];

    if (unlockDeviceHandlerWithActionType)
    {
      unlockDeviceHandlerWithActionType2 = [(PUOneUpViewController *)self unlockDeviceHandlerWithActionType];
      (unlockDeviceHandlerWithActionType2)[2](unlockDeviceHandlerWithActionType2, v4, 0);
    }
  }

  _currentAssetViewModel = [(PUOneUpViewController *)self _currentAssetViewModel];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__PUOneUpViewController_accessoryVisibilityInteractionControllerDidEnd___block_invoke_2;
  v9[3] = &unk_1E7B80DD0;
  v10 = _currentAssetViewModel;
  v8 = _currentAssetViewModel;
  [v8 performChanges:v9];
}

uint64_t __72__PUOneUpViewController_accessoryVisibilityInteractionControllerDidEnd___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _setAccessoryVisible:1];
  }

  return result;
}

- (BOOL)_canShowAccessoryViewForCurrentAsset
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  currentAssetReference = [viewModel currentAssetReference];
  _accessoryViewControllersManager = [(PUOneUpViewController *)self _accessoryViewControllersManager];
  asset = [currentAssetReference asset];
  v8 = [_accessoryViewControllersManager accessoryViewTypeForAsset:asset];

  v10 = [viewModel assetViewModelForAssetReference:currentAssetReference];
  isInEditMode = [v10 isInEditMode];

  LOBYTE(v10) = 0;
  if (v8 && ((v8 == 3) & isInEditMode) == 0)
  {
    LODWORD(v10) = [MEMORY[0x1E69C3740] enabled] ^ 1;
  }

  return v10;
}

- (BOOL)doubleTapZoomController:(id)controller canDoubleTapBeginAtLocationFromProvider:(id)provider
{
  providerCopy = provider;
  v6 = +[PUOneUpSettings sharedInstance];
  doubleTapZoomAreaExcludesBars = [v6 doubleTapZoomAreaExcludesBars];

  if (doubleTapZoomAreaExcludesBars && (-[PUOneUpViewController _barsController](self, "_barsController"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isLocationFromProviderInBarsArea:providerCopy], v8, (v9 & 1) != 0) || -[PUOneUpViewController _isLocationFromProviderInAccessoryArea:](self, "_isLocationFromProviderInAccessoryArea:", providerCopy) || -[PUOneUpViewController _isLocationFromProviderOverControl:](self, "_isLocationFromProviderOverControl:", providerCopy))
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    _currentAssetViewModel = [(PUOneUpViewController *)self _currentAssetViewModel];
    v10 = [_currentAssetViewModel isInEditMode] ^ 1;
  }

  return v10;
}

- (BOOL)oneUpGestureController:(id)controller shouldRecognizeGestureRecognizer:(id)recognizer simultaneouslyWithOtherGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  view = [recognizerCopy view];

  if (view && ([recognizerCopy view], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_opt_class(), NSStringFromClass(v10), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "containsString:", @"SCUISensitiveContentOverlayView"), v11, v9, (v12 & 1) != 0))
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    view2 = [gestureRecognizerCopy view];

    if (view2)
    {
      view3 = [gestureRecognizerCopy view];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v13 = [v17 containsString:@"SCUISensitiveContentOverlayView"] ^ 1;
    }

    else
    {
      LOBYTE(v13) = 1;
    }
  }

  return v13;
}

- (BOOL)oneUpGestureController:(id)controller canPerformSelectionAtPoint:(id)point
{
  v4 = [(PUOneUpViewController *)self browsingSession:controller];
  viewModel = [v4 viewModel];

  if (viewModel)
  {
    isInSelectionMode = [viewModel isInSelectionMode];
  }

  else
  {
    isInSelectionMode = 0;
  }

  return isInSelectionMode;
}

- (BOOL)oneUpGestureController:(id)controller canTapToToggleChromeAtPoint:(id)point
{
  pointCopy = point;
  if ([(PUOneUpViewController *)self _isVisualImageHasSubjectLiftedFromProvider:pointCopy]|| [(PUOneUpViewController *)self _isLocationFromProviderOverVisualSearch:pointCopy])
  {
    v6 = 0;
  }

  else
  {
    _currentAssetViewModel = [(PUOneUpViewController *)self _currentAssetViewModel];
    v6 = ([_currentAssetViewModel isAccessoryViewVisible] & 1) == 0 && (-[PUOneUpViewController _options](self, "_options") & 0x4000) == 0;
  }

  return v6;
}

- (BOOL)oneUpGestureController:(id)controller canDoubleTapToZoomAtPoint:(id)point
{
  pointCopy = point;
  chromeViewController = [(PUOneUpViewController *)self chromeViewController];
  [chromeViewController contentDecorationAdditionalInsets];
  v7 = [(PUOneUpViewController *)self _isLocationFromProvider:pointCopy overTileOfKind:@"PUTileKindItemContent" insetBy:?];

  if (!v7)
  {
    return 0;
  }

  if ([(PUOneUpViewController *)self _prefersFloatingInfoPanel])
  {
    return 1;
  }

  return ![(PUOneUpViewController *)self _isAccessoryVisible];
}

- (BOOL)oneUpGestureController:(id)controller canBeginGestureAt:(id)at
{
  atCopy = at;
  chromeViewController = [(PUOneUpViewController *)self chromeViewController];
  v7 = [chromeViewController shouldAllowGestureToBeginAt:atCopy];

  if (!v7 || -[PUOneUpViewController _isLocationFromProviderInAccessoryArea:](self, "_isLocationFromProviderInAccessoryArea:", atCopy) || -[PUOneUpViewController _isLocationFromProviderOverControl:](self, "_isLocationFromProviderOverControl:", atCopy) || (-[PUOneUpViewController _currentAssetViewModel](self, "_currentAssetViewModel"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isInEditMode], v8, (v9 & 1) != 0) || -[PUOneUpViewController _isLocationFromProviderOverActionInfoItem:](self, "_isLocationFromProviderOverActionInfoItem:", atCopy) || -[PUOneUpViewController _visualImageHasActiveTextSelectionFromProvider:](self, "_visualImageHasActiveTextSelectionFromProvider:", atCopy))
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v10 = ![(PUOneUpViewController *)self _isVisualImageHasSubjectLiftedFromProvider:atCopy];
  }

  return v10;
}

- (BOOL)oneUpGestureRecognizerCoordinator:(id)coordinator shouldAllowIrisGestureAtLocationFromProvider:(id)provider
{
  providerCopy = provider;
  if ([(PUOneUpViewController *)self _isLocationFromProviderInAccessoryArea:providerCopy])
  {
    v6 = 0;
  }

  else
  {
    v6 = ![(PUOneUpViewController *)self _isLocationFromProviderOverControl:providerCopy];
  }

  v7 = +[PUOneUpSettings sharedInstance];
  if (![v7 allowVisualIntelligence] || !-[PUOneUpViewController _isLocationFromProvider:overTileOfKind:](self, "_isLocationFromProvider:overTileOfKind:", providerCopy, @"PUTileKindItemContent"))
  {
    goto LABEL_15;
  }

  if (([v7 allowsVisualIntelligenceRemoveBackground] & 1) == 0)
  {
    if (!v6)
    {
LABEL_12:
      LOBYTE(v6) = 0;
      goto LABEL_15;
    }

LABEL_14:
    v6 = ![(PUOneUpViewController *)self _isLocationFromProviderOverInteractiveItem:providerCopy];
    goto LABEL_15;
  }

  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  currentAssetReference = [viewModel currentAssetReference];
  asset = [currentAssetReference asset];
  v12 = [(PUOneUpViewController *)self _allowsShowingVisualIntelligenceForAsset:asset];

  if (!v12)
  {
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v6)
  {
    if (![(PUOneUpViewController *)self _vkImageOverlayAllowsVKCToHandleLongPressGestureFromProvider:providerCopy])
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_15:

  return v6;
}

- (BOOL)_isSecondScreenBrowserVisible
{
  if ([(PUOneUpViewController *)self _isPresentedForSecondScreen])
  {
    return 0;
  }

  _secondScreenBrowser = [(PUOneUpViewController *)self _secondScreenBrowser];
  v3 = _secondScreenBrowser != 0;

  return v3;
}

- (void)airPlayControllerScreenAvailabilityChanged:(id)changed
{
  if (![changed screenAvailability])
  {
    [(PUOneUpViewController *)self _setSecondScreenBrowser:0];
  }

  [(PUOneUpViewController *)self _invalidateBarsControllers];
  [(PUOneUpViewController *)self _updateBarsControllerIfNeeded];
  [(PUOneUpViewController *)self _invalidateChromeViewController];

  [(PUOneUpViewController *)self _updateIfNeeded];
}

- (id)contentViewControllerForAirPlayController:(id)controller
{
  _secondScreenBrowser = [(PUOneUpViewController *)self _secondScreenBrowser];
  if (!_secondScreenBrowser)
  {
    browsingSession = [(PUOneUpViewController *)self browsingSession];
    _secondScreenBrowser = [[PUOneUpViewController alloc] initWithBrowsingSession:browsingSession options:514];
    [(PUOneUpViewController *)_secondScreenBrowser _setMainOneUpForSecondScreenBrowser:self];
    [(PUOneUpViewController *)self _setSecondScreenBrowser:_secondScreenBrowser];
  }

  return _secondScreenBrowser;
}

- (void)badgeVisibilityDidChange:(id)change
{
  [(PUOneUpViewController *)self _invalidateTipPopovers];

  [(PUOneUpViewController *)self _updateTipPopoversIfNeeded];
}

- (void)dismissPresentedViewController:(id)controller presentMenuWithCompletion:(id)completion
{
  v5 = MEMORY[0x1E69C3748];
  completionCopy = completion;
  livePhotosTipID = [v5 livePhotosTipID];
  [(PUOneUpViewController *)self _handleSuggestedActionCompletedForTip:livePhotosTipID completion:completionCopy];
}

- (void)_dismissAnyPresentedTip
{
  if ([(PUOneUpViewController *)self _isTipPopoverVisible])
  {
    v3 = MEMORY[0x1E69C3748];
    presentedTipID = self->_presentedTipID;

    [v3 setTip:presentedTipID isPresentable:0];
  }
}

- (void)_handleSuggestedActionCompletedForTip:(id)tip completion:(id)completion
{
  tipCopy = tip;
  completionCopy = completion;
  if ([(NSString *)self->_presentedTipID isEqualToString:tipCopy])
  {
    [(PUOneUpViewController *)self _setHasShownRelevantTip:1];
    [MEMORY[0x1E69C3748] setTipActionPerformed:tipCopy];
    v7 = _Block_copy(completionCopy);
    tipDismissedCompletion = self->_tipDismissedCompletion;
    self->_tipDismissedCompletion = v7;
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (BOOL)playButtonTileViewControllerShouldShowPlayButtonWhileActivated:(id)activated
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  reviewScreenBarsModel = [viewModel reviewScreenBarsModel];

  if (reviewScreenBarsModel)
  {
    return 1;
  }

  browsingSession2 = [(PUOneUpViewController *)self browsingSession];
  viewModel2 = [browsingSession2 viewModel];
  currentAssetReference = [viewModel2 currentAssetReference];

  asset = [currentAssetReference asset];
  assetCollection = [currentAssetReference assetCollection];
  browsingSession3 = [(PUOneUpViewController *)self browsingSession];
  actionManager = [browsingSession3 actionManager];
  v15 = [actionManager shouldEnableActionType:53 onAsset:asset inAssetCollection:assetCollection];

  if (v15)
  {
    v7 = 1;
  }

  else
  {
    browsingSession4 = [(PUOneUpViewController *)self browsingSession];
    actionManager2 = [browsingSession4 actionManager];
    v7 = [actionManager2 shouldEnableActionType:54 onAsset:asset inAssetCollection:assetCollection];
  }

  return v7;
}

- (BOOL)playButtonTileViewControllerShouldShowPauseButton:(id)button
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  reviewScreenBarsModel = [viewModel reviewScreenBarsModel];
  v6 = reviewScreenBarsModel != 0;

  return v6;
}

- (double)playButtonTileViewController:(id)controller delayForButtonAnimation:(BOOL)animation
{
  v4 = 0.0;
  if (animation)
  {
    assetViewModel = [controller assetViewModel];
    videoPlayer = [assetViewModel videoPlayer];

    if ([videoPlayer isAtEnd] && -[PUOneUpViewController _shouldMakeChromeVisibleWhenVideoPlayerPlaysToEndTime:](self, "_shouldMakeChromeVisibleWhenVideoPlayerPlaysToEndTime:", videoPlayer))
    {
      v8 = +[PUOneUpSettings sharedInstance];
      [v8 chromeDefaultAnimationDuration];
      v4 = v9 + 0.3;
    }
  }

  return v4;
}

- (void)playButtonTileViewControllerDidTapButton:(id)button
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  assetViewModelForCurrentAssetReference = [viewModel assetViewModelForCurrentAssetReference];
  videoPlayer = [assetViewModelForCurrentAssetReference videoPlayer];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__PUOneUpViewController_playButtonTileViewControllerDidTapButton___block_invoke;
  v9[3] = &unk_1E7B80C38;
  v10 = videoPlayer;
  selfCopy = self;
  v8 = videoPlayer;
  [v8 performChanges:v9];
}

uint64_t __66__PUOneUpViewController_playButtonTileViewControllerDidTapButton___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isPlaybackDesired];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 setDesiredPlayState:2 reason:@"Play button tile was tapped"];
  }

  else
  {
    if ([v3 isAtEnd])
    {
      [*(a1 + 32) rewindExistingPlayer];
    }

    [*(a1 + 32) setDesiredPlayState:4 reason:@"Play button tile was tapped"];
    [*(a1 + 32) setActivated:1];
  }

  v4 = *(a1 + 40);

  return [v4 _hideChromeOnPlayButtonTapWithItemIsNowPlaying:v2 ^ 1u buttonIsOverlayed:1];
}

- (void)imageTileViewController:(id)controller didDisplayFullQualityImageWithDeferredProcessingFinished:(BOOL)finished
{
  finishedCopy = finished;
  [(PUOneUpViewController *)self _xct_endSignpostingForImageFullQuality];
  if (finishedCopy)
  {

    [(PUOneUpViewController *)self _xct_endSignpostingForImageDeferredProcessing];
  }
}

- (BOOL)ppt_imageTileViewControllerShouldSignalDeferredProcessingDoneAndFinalImageDisplayed:(id)displayed
{
  image = [displayed image];
  [image size];
  v6 = v5;
  v8 = v7;

  [(PUOneUpViewController *)self _layoutReferenceSize];
  v10 = v9;
  v12 = v11;
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  return v8 + 3.0 >= v12 * *&PUMainScreenScale_screenScale || v6 + 3.0 >= v10 * *&PUMainScreenScale_screenScale;
}

- (BOOL)_shouldPreventScaledOffsetAdjustments
{
  [(PUOneUpViewController *)self _updateScrubbingAdjustmentPolicyForVideoTimelineControlInteractionChange];
  scaledVideoOffsetAdjustmentPolicy = [(PUOneUpViewController *)self scaledVideoOffsetAdjustmentPolicy];
  evaluatePolicy = [scaledVideoOffsetAdjustmentPolicy evaluatePolicy];

  return evaluatePolicy == 1;
}

- (BOOL)userTransformTileViewControllerShouldAnimateMinimumScaleWhileApplyingInsets:(id)insets
{
  assetViewModel = [insets assetViewModel];
  isUserTransformingTile = [assetViewModel isUserTransformingTile];

  return isUserTransformingTile;
}

- (BOOL)userTransformTileViewController:(id)controller shouldReceiveTouchAtLocationFromProvider:(id)provider
{
  providerCopy = provider;
  _currentAssetViewModel = [(PUOneUpViewController *)self _currentAssetViewModel];
  asset = [_currentAssetViewModel asset];

  if (-[PUOneUpViewController _isLocationFromProviderInAccessoryArea:](self, "_isLocationFromProviderInAccessoryArea:", providerCopy) || -[PUOneUpViewController _isLocationFromProviderOverControl:](self, "_isLocationFromProviderOverControl:", providerCopy) || (-[PUOneUpViewController _currentAssetViewModel](self, "_currentAssetViewModel"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isInEditMode], v8, (v9 & 1) != 0) || (-[PUOneUpViewController _currentAssetViewModel](self, "_currentAssetViewModel"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isAccessoryViewVisible"), v10, (v11 & 1) != 0) || -[PUOneUpViewController _isLocationFromProviderOverVisualSearch:](self, "_isLocationFromProviderOverVisualSearch:", providerCopy))
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    v12 = [asset needsSensitivityProtection] ^ 1;
  }

  return v12;
}

- (void)userTransformTileViewController:(id)controller didChangeIsUserInteracting:(BOOL)interacting
{
  interactingCopy = interacting;
  controllerCopy = controller;
  if (interactingCopy)
  {
    gestureController = [(PUOneUpViewController *)self gestureController];
    [gestureController cancelGestures];
  }

  assetViewModel = [controllerCopy assetViewModel];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__PUOneUpViewController_userTransformTileViewController_didChangeIsUserInteracting___block_invoke;
  v10[3] = &unk_1E7B7FF98;
  v11 = assetViewModel;
  v12 = interactingCopy;
  v9 = assetViewModel;
  [v9 performChanges:v10];
}

- (int64_t)userTransformTileViewController:(id)controller insetModeForItemAtIndexPath:(id)path
{
  assetViewModel = [controller assetViewModel];
  asset = [assetViewModel asset];
  v7 = [(PUOneUpViewController *)self _insetModeForAsset:asset];

  return v7;
}

- (BOOL)_isCurrentAssetAndInEditModeForAssetReference:(id)reference
{
  referenceCopy = reference;
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  currentAssetReference = [viewModel currentAssetReference];
  asset = [currentAssetReference asset];
  asset2 = [referenceCopy asset];
  v10 = asset2;
  if (asset == asset2)
  {

    goto LABEL_5;
  }

  v11 = [asset isEqual:asset2];

  if (v11)
  {
LABEL_5:
    v13 = [viewModel assetViewModelForAssetReference:referenceCopy];
    isInEditMode = [v13 isInEditMode];

    goto LABEL_6;
  }

  isInEditMode = 0;
LABEL_6:

  return isInEditMode;
}

- (id)oneUpBarsControllerCustomActionMenuElements:(id)elements
{
  _menuElements = [(PUOneUpViewController *)self _menuElements];
  v4 = UIMenuElementsFromPXMenuElements();

  return v4;
}

- (void)oneUpBarsControllerWillPresentActionsMenu:(id)menu completionHandler:(id)handler
{
  v5 = MEMORY[0x1E69C3748];
  handlerCopy = handler;
  actionsMenuTipID = [v5 actionsMenuTipID];
  [(PUOneUpViewController *)self _handleSuggestedActionCompletedForTip:actionsMenuTipID completion:handlerCopy];
}

- (BOOL)oneUpBarsController:(id)controller shouldHideStatusBarWhenShowingAccessoryViewForAssetReference:(id)reference
{
  referenceCopy = reference;
  _spec = [(PUOneUpViewController *)self _spec];
  hideStatusBarWhenShowingAccessoryView = [_spec hideStatusBarWhenShowingAccessoryView];

  if (hideStatusBarWhenShowingAccessoryView)
  {
    asset = [referenceCopy asset];
    v9 = [PUCommentsViewController canShowCommentsForAsset:asset];

    v10 = !v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)oneUpBarsController:(id)controller shouldHideNavigationBarWhenShowingAccessoryViewForAssetReference:(id)reference
{
  referenceCopy = reference;
  _accessoryViewControllersManager = [(PUOneUpViewController *)self _accessoryViewControllersManager];
  v7 = [_accessoryViewControllersManager shouldHideNavigationBarWhenShowingAccessoryViewControllerForAssetReference:referenceCopy];

  if (v7)
  {
    v8 = ![(PUOneUpViewController *)self _isCurrentAssetAndInEditModeForAssetReference:referenceCopy];
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)oneUpBarsController:(id)controller shouldHideToolbarWhenShowingAccessoryViewForAssetReference:(id)reference
{
  referenceCopy = reference;
  _accessoryViewControllersManager = [(PUOneUpViewController *)self _accessoryViewControllersManager];
  v7 = [_accessoryViewControllersManager shouldHideToolbarWhenShowingAccessoryViewControllerForAssetReference:referenceCopy];

  return v7;
}

- (BOOL)oneUpBarsController:(id)controller shouldTapBeginAtLocationFromProvider:(id)provider
{
  providerCopy = provider;
  presentedTipID = self->_presentedTipID;
  syndicatedPhotosTipID = [MEMORY[0x1E69C3748] syndicatedPhotosTipID];
  LODWORD(presentedTipID) = [(NSString *)presentedTipID isEqualToString:syndicatedPhotosTipID];

  if (presentedTipID && [(PUOneUpViewController *)self _isLocationFromProvider:providerCopy overTileOfKind:PUTileKindSyndicationAttribution])
  {
    syndicatedPhotosTipID2 = [MEMORY[0x1E69C3748] syndicatedPhotosTipID];
    [(PUOneUpViewController *)self _handleSuggestedActionCompletedForTip:syndicatedPhotosTipID2 completion:0];
  }

  if ([(PUOneUpViewController *)self _isLocationFromProviderInAccessoryArea:providerCopy]|| [(PUOneUpViewController *)self _isLocationFromProviderOverControl:providerCopy])
  {
    v9 = 0;
  }

  else
  {
    _currentAssetViewModel = [(PUOneUpViewController *)self _currentAssetViewModel];
    v9 = [_currentAssetViewModel isInEditMode] ^ 1;
  }

  v11 = +[PUOneUpSettings sharedInstance];
  allowVisualIntelligence = [v11 allowVisualIntelligence];

  if (!allowVisualIntelligence)
  {
    LOBYTE(v13) = v9;
    goto LABEL_18;
  }

  v13 = +[PUOneUpSettings sharedInstance];
  if (![v13 allowsVisualIntelligenceVisualLookupInfoPanelMode])
  {

    if (!v9)
    {
LABEL_17:
      LOBYTE(v13) = 0;
      goto LABEL_18;
    }

LABEL_15:
    if (![(PUOneUpViewController *)self _isLocationFromProviderOverActionInfoItem:providerCopy]&& ![(PUOneUpViewController *)self _visualImageHasActiveTextSelectionFromProvider:providerCopy])
    {
      LODWORD(v13) = ![(PUOneUpViewController *)self _isVisualImageHasSubjectLiftedFromProvider:providerCopy];
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  _isAccessoryVisible = [(PUOneUpViewController *)self _isAccessoryVisible];

  LOBYTE(v13) = 0;
  if (!_isAccessoryVisible && ((v9 ^ 1) & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:

  return v13;
}

- (BOOL)oneUpBarsController:(id)controller canShowCommentsForAsset:(id)asset
{
  assetCopy = asset;
  _spec = [(PUOneUpViewController *)self _spec];
  if ([_spec allowAccessoryVisibility])
  {
    v7 = [PUCommentsViewController canShowCommentsForAsset:assetCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isDetailsAccessoryAvailableForAssetReference:(id)reference
{
  referenceCopy = reference;
  _accessoryViewControllersManager = [(PUOneUpViewController *)self _accessoryViewControllersManager];
  asset = [referenceCopy asset];

  LOBYTE(referenceCopy) = [_accessoryViewControllersManager accessoryViewTypeForAsset:asset] != 0;
  return referenceCopy;
}

- (void)oneUpBarsControllerDidTapTitle:(id)title
{
  if ([(PUOneUpViewController *)self _canShowAccessoryViewForCurrentAsset])
  {

    [(PUOneUpViewController *)self _toggleDetailsVisibility];
  }
}

- (void)oneUpBarsControllerDidChangeShowingPlayPauseButton:(id)button
{
  [(PUOneUpViewController *)self _invalidateSpec];

  [(PUOneUpViewController *)self _updateIfNeeded];
}

- (void)barsControllerContentGuideInsetsDidChange:(id)change
{
  [(PUOneUpViewController *)self _invalidateLayout];

  [(PUOneUpViewController *)self _updateIfNeeded];
}

- (id)barsControllerViewHostingGestureRecognizers:(id)recognizers
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  isPresentedForPreview = [viewModel isPresentedForPreview];

  if (isPresentedForPreview)
  {
    _tilingView = 0;
  }

  else
  {
    _tilingView = [(PUOneUpViewController *)self _tilingView];
  }

  return _tilingView;
}

- (void)_updateChromeViewControllerDismissalProgress
{
  _interactivePinchDismissalController = [(PUOneUpViewController *)self _interactivePinchDismissalController];
  [_interactivePinchDismissalController dismissalInteractionProgress];
  v5 = v4;

  _interactiveSwipeDismissalController = [(PUOneUpViewController *)self _interactiveSwipeDismissalController];
  [_interactiveSwipeDismissalController dismissalInteractionProgress];
  v8 = v7;

  _interactivePinchDismissalController2 = [(PUOneUpViewController *)self _interactivePinchDismissalController];
  if ([_interactivePinchDismissalController2 isHandlingDismissalInteraction])
  {
    isHandlingDismissalInteraction = 1;
  }

  else
  {
    _interactiveSwipeDismissalController2 = [(PUOneUpViewController *)self _interactiveSwipeDismissalController];
    isHandlingDismissalInteraction = [_interactiveSwipeDismissalController2 isHandlingDismissalInteraction];
  }

  if (v5 < v8)
  {
    v5 = v8;
  }

  chromeViewController = [(PUOneUpViewController *)self chromeViewController];
  [chromeViewController updateDismissalStateWithIsInteractivelyDismissing:isHandlingDismissalInteraction dismissalProgress:v5];
}

- (void)interactiveDismissalControllerChangedIsHandlingDismissalInteraction:(id)interaction
{
  interactionCopy = interaction;
  _currentAssetViewModel = [(PUOneUpViewController *)self _currentAssetViewModel];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __93__PUOneUpViewController_interactiveDismissalControllerChangedIsHandlingDismissalInteraction___block_invoke;
  v11 = &unk_1E7B80C38;
  v12 = _currentAssetViewModel;
  v13 = interactionCopy;
  v6 = interactionCopy;
  v7 = _currentAssetViewModel;
  [v7 performChanges:&v8];
  [(PUOneUpViewController *)self _updateChromeViewControllerDismissalProgress:v8];
}

uint64_t __93__PUOneUpViewController_interactiveDismissalControllerChangedIsHandlingDismissalInteraction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) isHandlingDismissalInteraction];
  v3 = *(a1 + 32);

  return [v3 setIsBeingDismissed:v2];
}

- (BOOL)interactiveDismissalController:(id)controller canBeginDismissalAtLocationFromProvider:(id)provider
{
  providerCopy = provider;
  controllerCopy = controller;
  _currentAssetViewModel = [(PUOneUpViewController *)self _currentAssetViewModel];
  if ([_currentAssetViewModel isInEditMode])
  {
    v9 = 0;
  }

  else
  {
    isAccessoryViewVisible = [_currentAssetViewModel isAccessoryViewVisible];

    if ((isAccessoryViewVisible & 1) != 0 || [(PUOneUpViewController *)self _isLocationFromProviderInAccessoryArea:providerCopy]|| [(PUOneUpViewController *)self _isLocationFromProviderOverControl:providerCopy]|| [(PUOneUpViewController *)self _isIrisPlaying])
    {
      v9 = 0;
      goto LABEL_9;
    }

    _currentAssetViewModel = [(PUOneUpViewController *)self browsingSession];
    viewModel = [_currentAssetViewModel viewModel];
    v9 = [viewModel isInSelectionMode] ^ 1;
  }

LABEL_9:
  _interactivePinchDismissalController = [(PUOneUpViewController *)self _interactivePinchDismissalController];

  v12 = _interactivePinchDismissalController == controllerCopy;
  LOBYTE(controllerCopy) = (_interactivePinchDismissalController != controllerCopy) & v9;
  if (v12 && v9)
  {
    _currentAssetViewModel2 = [(PUOneUpViewController *)self _currentAssetViewModel];
    modelTileTransform = [_currentAssetViewModel2 modelTileTransform];
    LODWORD(controllerCopy) = [modelTileTransform hasUserZoomedIn] ^ 1;
  }

  return controllerCopy;
}

- (id)interactiveDismissalControllerDesignatedTileController:(id)controller
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  assetsDataSource = [viewModel assetsDataSource];
  currentAssetReference = [viewModel currentAssetReference];
  v8 = [assetsDataSource indexPathForAssetReference:currentAssetReference];
  if (v8)
  {
    _tilingView = [(PUOneUpViewController *)self _tilingView];
    identifier = [assetsDataSource identifier];
    v11 = [_tilingView presentedTileControllerWithIndexPath:v8 kind:@"PUTileKindItemContent" dataSourceIdentifier:identifier];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)layout:(id)layout shouldShowAttributionViewForItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [layout dataSource];
  v8 = [dataSource assetReferenceAtIndexPath:pathCopy];

  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  v11 = [viewModel assetViewModelForAssetReference:v8];

  fetchAssetSyndicationState = [v11 fetchAssetSyndicationState];
  v14 = fetchAssetSyndicationState == 4 || (fetchAssetSyndicationState & 0xFFFFFFFFFFFFFFFELL) == 2;

  return v14;
}

- (CGRect)layout:(id)layout bestSquareRectForItemAtIndexPath:(id)path
{
  v6 = *MEMORY[0x1E69C48E0];
  v5 = *(MEMORY[0x1E69C48E0] + 8);
  v8 = *(MEMORY[0x1E69C48E0] + 16);
  v7 = *(MEMORY[0x1E69C48E0] + 24);
  pathCopy = path;
  dataSource = [layout dataSource];
  v11 = [dataSource assetReferenceAtIndexPath:pathCopy];

  asset = [v11 asset];
  if (asset)
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([asset bestCropRectForAspectRatio:0 verticalContentMode:2 cropMode:1.0], x = v31.origin.x, y = v31.origin.y, width = v31.size.width, height = v31.size.height, !CGRectIsEmpty(v31)))
    {
      v7 = height;
      v8 = width;
      v5 = y;
      v6 = x;
    }

    else
    {
      v17 = PLOneUpGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_ERROR, "Can't get a non-empty bestSquareRect by bestCropRectForAspectRatio:bestCropRectForAspectRatio:...", buf, 2u);
      }

      pixelWidth = [asset pixelWidth];
      pixelHeight = [asset pixelHeight];
      v32.origin.x = 0.0;
      v32.origin.y = 0.0;
      v32.size.width = pixelWidth;
      v32.size.height = pixelHeight;
      if (!CGRectIsEmpty(v32))
      {
        PXRectWithAspectRatioFittingRect();
        PXRectNormalize();
        v6 = v20;
        v5 = v21;
        v8 = v22;
        v7 = v23;
      }
    }
  }

  else
  {
    v24 = PXAssertGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v29[0] = 0;
      _os_log_error_impl(&dword_1B36F3000, v24, OS_LOG_TYPE_ERROR, "asset of assetReference is nil for bestSquareRectForItemAtIndexPath:", v29, 2u);
    }
  }

  v25 = v6;
  v26 = v5;
  v27 = v8;
  v28 = v7;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (BOOL)layout:(id)layout shouldInitiallyZoomToFillForItemAtIndexPath:(id)path contentSize:(CGSize)size viewportSize:(CGSize)viewportSize
{
  height = viewportSize.height;
  width = viewportSize.width;
  v8 = size.height;
  v9 = size.width;
  pathCopy = path;
  dataSource = [layout dataSource];
  v14 = [dataSource assetReferenceAtIndexPath:pathCopy];

  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  asset = [v14 asset];
  mediaType = [asset mediaType];

  if ([MEMORY[0x1E69C3640] isOneUpRefreshEnabled])
  {
    mEMORY[0x1E69C3738]2 = [viewModel assetViewModelForAssetReference:v14];
    if ([viewModel isFillScreenModeEnabled] && (objc_msgSend(mEMORY[0x1E69C3738]2, "isUserTransformingTile") & 1) == 0)
    {
      modelTileTransform = [mEMORY[0x1E69C3738]2 modelTileTransform];
      v20 = [modelTileTransform hasUserInput] ^ 1;
    }

    else
    {
      v20 = 0;
    }

    mEMORY[0x1E69C3738] = [MEMORY[0x1E69C3738] sharedInstance];
    px_extendedTraitCollection = [(PUOneUpViewController *)self px_extendedTraitCollection];
    v28 = [mEMORY[0x1E69C3738] shouldInitiallyZoomContentWithSize:mediaType toFillViewWithSize:objc_msgSend(px_extendedTraitCollection forAssetMediaType:"userInterfaceIdiom") userInterfaceIdiom:{v9, v8, width, height}];

    if ((v20 & 1) == 0)
    {
      v24 = [viewModel isPresentedForPreview] | v28;
      goto LABEL_16;
    }

LABEL_12:
    v24 = 1;
LABEL_16:

    goto LABEL_17;
  }

  if (mediaType != 2 || [viewModel isPresentedForPreview])
  {
    mEMORY[0x1E69C3738]2 = [MEMORY[0x1E69C3738] sharedInstance];
    _spec = [(PUOneUpViewController *)self _spec];
    tileInitialContentMode = [_spec tileInitialContentMode];

    if (tileInitialContentMode != 2)
    {
      if (tileInitialContentMode)
      {
        v24 = 0;
      }

      else
      {
        px_extendedTraitCollection2 = [(PUOneUpViewController *)self px_extendedTraitCollection];
        v24 = [mEMORY[0x1E69C3738]2 shouldInitiallyZoomContentWithSize:mediaType toFillViewWithSize:objc_msgSend(px_extendedTraitCollection2 forAssetMediaType:"userInterfaceIdiom") userInterfaceIdiom:{v9, v8, width, height}];
      }

      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v24 = 0;
LABEL_17:

  return v24 & 1;
}

- (BOOL)layout:(id)layout shouldShowVideoPlaceholderForItemAtIndexPath:(id)path
{
  layoutCopy = layout;
  pathCopy = path;
  if ([(PUOneUpViewController *)self _isSecondScreenBrowserVisible])
  {
    v8 = [(PUOneUpViewController *)self _videoPlayerAtIndexPath:pathCopy layout:layoutCopy];
    isPlaybackDesired = [v8 isPlaybackDesired];
  }

  else
  {
    isPlaybackDesired = 0;
  }

  return isPlaybackDesired;
}

- (CGPoint)layout:(id)layout accessoryOffsetForItemAtIndexPath:(id)path
{
  v4 = *MEMORY[0x1E695EFF8];
  v5 = [(PUOneUpViewController *)self _assetViewModelAtIndexPath:path layout:layout];
  [v5 contentOffset];
  v7 = v6;
  [v5 preferredContentOffset];
  v9 = v8;
  if (layout_accessoryOffsetForItemAtIndexPath__onceToken != -1)
  {
    dispatch_once(&layout_accessoryOffsetForItemAtIndexPath__onceToken, &__block_literal_global_748);
  }

  [layout_accessoryOffsetForItemAtIndexPath__verticalOffsetFilter setInputValue:v7 - v9];
  [layout_accessoryOffsetForItemAtIndexPath__verticalOffsetFilter outputValue];
  v11 = v10;

  v12 = v4;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

void __66__PUOneUpViewController_layout_accessoryOffsetForItemAtIndexPath___block_invoke()
{
  v0 = +[PUSoftClampValueFilter scrollViewFilter];
  [v0 setMinimumValue:0.0];
  [v0 setMaximumValue:INFINITY];
  v1 = layout_accessoryOffsetForItemAtIndexPath__verticalOffsetFilter;
  layout_accessoryOffsetForItemAtIndexPath__verticalOffsetFilter = v0;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  containerCopy = container;
  v10.receiver = self;
  v10.super_class = PUOneUpViewController;
  [(PUOneUpViewController *)&v10 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [containerCopy conformsToProtocol:&unk_1F2BFC710])
  {
    _accessoryViewControllersManager = [(PUOneUpViewController *)self _accessoryViewControllersManager];
    v6 = [_accessoryViewControllersManager assetReferenceForAccessoryViewController:containerCopy];

    indexPath = [v6 indexPath];
    if (indexPath)
    {
      _tilingView = [(PUOneUpViewController *)self _tilingView];
      layout = [_tilingView layout];

      [layout invalidateAccessoryForItemAtIndexPath:indexPath withOptions:2];
    }
  }
}

- (BOOL)layout:(id)layout shouldUseSquareImageInAccessoryForItemAtIndexPath:(id)path
{
  layoutCopy = layout;
  pathCopy = path;
  _spec = [(PUOneUpViewController *)self _spec];
  prefersSquareImageInDetails = [_spec prefersSquareImageInDetails];

  if (prefersSquareImageInDetails)
  {
    _currentAssetViewModel = [(PUOneUpViewController *)self _currentAssetViewModel];
    modelTileTransform = [_currentAssetViewModel modelTileTransform];
    hasUserZoomedIn = [modelTileTransform hasUserZoomedIn];

    if (![MEMORY[0x1E69C3640] isOneUpRefreshEnabled] || (objc_msgSend(MEMORY[0x1E69C3640], "sharedInstance"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "enableSideCommentsInLandscape"), v13, (v14 & 1) == 0))
    {
      v15 = [(PUOneUpViewController *)self _assetReferenceAtIndexPath:pathCopy layout:layoutCopy];
      asset = [v15 asset];
      hasUserZoomedIn |= [PUCommentsViewController canShowCommentsForAsset:asset];
    }

    v17 = hasUserZoomedIn ^ 1;
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

- (double)layout:(id)layout minimumItemHeightNeededInAccessoryForItemAtIndexPath:(id)path
{
  layoutCopy = layout;
  pathCopy = path;
  [layoutCopy visibleRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(PUOneUpViewController *)self _assetReferenceAtIndexPath:pathCopy layout:layoutCopy];

  _accessoryViewControllersManager = [(PUOneUpViewController *)self _accessoryViewControllersManager];
  v18 = [_accessoryViewControllersManager accessoryViewControllerForAssetReference:v16];

  if (v18)
  {
    [v18 preferredContentSize];
    v20 = v19;
  }

  else
  {
    v20 = *(MEMORY[0x1E695F060] + 8);
  }

  v25.origin.x = v9;
  v25.origin.y = v11;
  v25.size.width = v13;
  v25.size.height = v15;
  Height = CGRectGetHeight(v25);
  [layoutCopy contentGuideInsets];
  if (Height - v22 - v20 >= 0.0)
  {
    v23 = Height - v22 - v20;
  }

  else
  {
    v23 = 0.0;
  }

  return v23;
}

- (double)layout:(id)layout minimumVisibleAccessoryHeightForItemAtIndexPath:(id)path
{
  pathCopy = path;
  layoutCopy = layout;
  [layoutCopy visibleRect];
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;
  MinY = CGRectGetMinY(v31);
  v13 = +[PUOneUpSettings sharedInstance];
  [v13 accessoryInitialTopPosition];
  v15 = v14;
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v16 = CGRectGetHeight(v32);

  _spec = [(PUOneUpViewController *)self _spec];
  prefersSquareImageInDetails = [_spec prefersSquareImageInDetails];

  if (prefersSquareImageInDetails)
  {
    AspectRatio = PURectGetAspectRatio(x, y, width, height);
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    v20 = CGRectGetMinY(v33);
    v21 = 0.0;
    if (AspectRatio <= 1.0)
    {
      v34.origin.x = x;
      v34.origin.y = y;
      v34.size.width = width;
      v34.size.height = height;
      v21 = CGRectGetWidth(v34);
    }

    v22 = v20 + v21;
  }

  else
  {
    v22 = MinY + v15 * v16;
  }

  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  MaxY = CGRectGetMaxY(v35);
  [layoutCopy contentGuideInsets];
  v25 = MaxY - v24 - v22;
  v26 = [(PUOneUpViewController *)self _assetReferenceAtIndexPath:pathCopy layout:layoutCopy];

  _accessoryViewControllersManager = [(PUOneUpViewController *)self _accessoryViewControllersManager];
  v28 = [_accessoryViewControllersManager accessoryViewControllerForAssetReference:v26];

  [v28 preferredContentSize];
  if (v25 >= v29)
  {
    v25 = v29;
  }

  return v25;
}

- (double)layout:(id)layout minimumVisibleContentHeightForItemAtIndexPath:(id)path
{
  layoutCopy = layout;
  pathCopy = path;
  v8 = +[PUOneUpSettings sharedInstance];
  [v8 minimumVisibleContentHeight];
  v10 = v9;

  if (([MEMORY[0x1E69C3640] isOneUpRefreshEnabled] & 1) == 0)
  {
    v11 = [(PUOneUpViewController *)self _assetReferenceAtIndexPath:pathCopy layout:layoutCopy];
    asset = [v11 asset];

    if ([PUCommentsViewController canShowCommentsForAsset:asset])
    {
      v13 = +[PUOneUpSettings sharedInstance];
      [v13 minimumVisibleCommentedContentHeight];
      v10 = v14;
    }
  }

  return v10;
}

- (BOOL)layout:(id)layout isShowingInfoPanelForItemAtIndexPath:(id)path
{
  layoutCopy = layout;
  pathCopy = path;
  if ([(PUOneUpViewController *)self _isPresentedForSecondScreen])
  {
    v8 = 0;
  }

  else
  {
    v9 = [(PUOneUpViewController *)self _assetViewModelAtIndexPath:pathCopy layout:layoutCopy];
    _prefersFloatingInfoPanel = [(PUOneUpViewController *)self _prefersFloatingInfoPanel];
    asset = [v9 asset];
    v12 = [(PUOneUpViewController *)self _accessoryContentKindForAsset:asset];

    isAccessoryViewVisible = [v9 isAccessoryViewVisible];
    if (v12 == 1)
    {
      v14 = isAccessoryViewVisible;
    }

    else
    {
      v14 = 0;
    }

    v8 = v14 & _prefersFloatingInfoPanel;
  }

  return v8;
}

- (BOOL)layout:(id)layout shouldShowAccessoryForItemAtIndexPath:(id)path
{
  layoutCopy = layout;
  pathCopy = path;
  if ([(PUOneUpViewController *)self _isPresentedForSecondScreen])
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v9 = [(PUOneUpViewController *)self _assetViewModelAtIndexPath:pathCopy layout:layoutCopy];
    if ([v9 isAccessoryViewVisible])
    {
      v8 = ![(PUOneUpViewController *)self _prefersFloatingInfoPanel];
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (CGPoint)layout:(id)layout contentOffsetForItemAtIndexPath:(id)path
{
  layoutCopy = layout;
  pathCopy = path;
  if ([(PUOneUpViewController *)self _isPresentedForSecondScreen])
  {
    v8 = *MEMORY[0x1E695EFF8];
    v9 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    v10 = [(PUOneUpViewController *)self _assetViewModelAtIndexPath:pathCopy layout:layoutCopy];
    [v10 contentOffset];
    v8 = v11;
    v9 = v12;
  }

  v13 = v8;
  v14 = v9;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)layout:(id)layout willApplyDisplayTileTransform:(id)transform forItemAtIndexPath:(id)path
{
  layoutCopy = layout;
  transformCopy = transform;
  pathCopy = path;
  if ([(PUOneUpViewController *)self _isPresentedForSecondScreen])
  {
    v11 = [(PUOneUpViewController *)self _assetViewModelAtIndexPath:pathCopy layout:layoutCopy];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __81__PUOneUpViewController_layout_willApplyDisplayTileTransform_forItemAtIndexPath___block_invoke;
    v13[3] = &unk_1E7B80C38;
    v14 = v11;
    v15 = transformCopy;
    v12 = v11;
    [v12 performChanges:v13];
  }
}

- (id)layout:(id)layout modelTileTransformForItemAtIndexPath:(id)path
{
  layoutCopy = layout;
  pathCopy = path;
  dataSource = [layoutCopy dataSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    dataSource2 = [layoutCopy dataSource];
    browsingSession = [(PUOneUpViewController *)self browsingSession];
    viewModel = [browsingSession viewModel];
    assetsDataSource = [viewModel assetsDataSource];

    v14 = [dataSource2 assetReferenceAtIndexPath:pathCopy];
    if (dataSource2 != assetsDataSource)
    {
      v15 = [assetsDataSource assetReferenceForAssetReference:v14];

      v14 = v15;
    }

    if (v14)
    {
      browsingSession2 = [(PUOneUpViewController *)self browsingSession];
      viewModel2 = [browsingSession2 viewModel];
      v18 = [viewModel2 assetViewModelForAssetReference:v14];

      modelTileTransform = [v18 modelTileTransform];
      if ([v18 isAccessoryViewVisible] && !-[PUOneUpViewController _prefersFloatingInfoPanel](self, "_prefersFloatingInfoPanel"))
      {
        [v18 accessoryViewVisibilityFraction];
        [modelTileTransform scale];
        PXFloatByLinearlyInterpolatingFloats();
        v21 = v20;
        [modelTileTransform normalizedTranslation];
        PXPointByLinearlyInterpolatingPoints();
        v24 = [modelTileTransform copyWithScale:v21 normalizedTranslation:{v22, v23}];

        modelTileTransform = v24;
      }
    }

    else
    {
      modelTileTransform = 0;
    }
  }

  else
  {
    modelTileTransform = 0;
  }

  if ([(PUOneUpViewController *)self _isPresentedForSecondScreen])
  {
    [modelTileTransform scale];
    if (v25 < 1.0)
    {

      modelTileTransform = 0;
    }
  }

  return modelTileTransform;
}

- (CGSize)layout:(id)layout loadingIndicatorSizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [layout dataSource];
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  v10 = [dataSource assetReferenceAtIndexPath:pathCopy];

  v11 = [viewModel assetViewModelForAssetReference:v10];

  loadingIndicatorController = [(PUOneUpViewController *)self loadingIndicatorController];
  v13 = [loadingIndicatorController loadingIndicatorStyleForAssetViewModel:v11];

  if (v13)
  {
    [PULoadingIndicatorTileViewController loadingIndicatorTileSizeForStyle:v13];
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v15 = *MEMORY[0x1E695F060];
    v17 = *(MEMORY[0x1E695F060] + 8);
  }

  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (BOOL)layout:(id)layout shouldShowBufferingIndicatorForItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [layout dataSource];
  v7 = [dataSource assetAtIndexPath:pathCopy];

  if ([PUBufferingIndicatorTileViewController canShowBufferingIndicatorTileForAsset:v7])
  {
    v8 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      px_isContentPreviewable = [v8 px_isContentPreviewable];
    }

    else
    {
      px_isContentPreviewable = 1;
    }
  }

  else
  {
    px_isContentPreviewable = 0;
  }

  return px_isContentPreviewable;
}

- (BOOL)layout:(id)layout shouldMovePeopleRowForItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [layout dataSource];
  if (!dataSource)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:5036 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"layout.dataSource", v17}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = objc_opt_class();
    v17 = NSStringFromClass(v18);
    px_descriptionForAssertionMessage = [dataSource px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:5036 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"layout.dataSource", v17, px_descriptionForAssertionMessage}];

    goto LABEL_6;
  }

LABEL_3:
  v9 = [dataSource assetAtIndexPath:pathCopy];

  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  v12 = [viewModel assetSharedViewModelForAsset:v9];
  v13 = +[PURenderIndicatorTileViewController wantsRenderViewForTypeOfProcessingNeeded:](PURenderIndicatorTileViewController, "wantsRenderViewForTypeOfProcessingNeeded:", [v12 deferredProcessingNeeded]);

  return v13;
}

- (BOOL)layout:(id)layout shouldShowPeopleRowForItemAtIndexPath:(id)path
{
  layoutCopy = layout;
  pathCopy = path;
  if (PFIsiOSPhotosApp() & 1) == 0 && !PFIsCamera() || ([MEMORY[0x1E69C3358] isExternalAppAndPhotosIsLocked])
  {
    v9 = 0;
    goto LABEL_11;
  }

  dataSource = [layoutCopy dataSource];
  if (!dataSource)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:5028 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"layout.dataSource", v20}];
LABEL_14:

    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = objc_opt_class();
    v20 = NSStringFromClass(v21);
    px_descriptionForAssertionMessage = [dataSource px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:5028 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"layout.dataSource", v20, px_descriptionForAssertionMessage}];

    goto LABEL_14;
  }

LABEL_7:
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  v13 = [dataSource assetReferenceAtIndexPath:pathCopy];
  v14 = [viewModel assetViewModelForAssetReference:v13];

  _options = [(PUOneUpViewController *)self _options];
  isAccessoryViewVisible = [v14 isAccessoryViewVisible];
  if ((*&_options & 0x400000) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = isAccessoryViewVisible;
  }

LABEL_11:
  return v9;
}

- (BOOL)layout:(id)layout shouldMoveProgressIndicatorForItemAtIndexPath:(id)path
{
  layoutCopy = layout;
  pathCopy = path;
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  _spec = [(PUOneUpViewController *)self _spec];
  if ([_spec shouldDisplaySelectionIndicators])
  {
    v11 = 1;
LABEL_7:

    goto LABEL_8;
  }

  isInSelectionMode = [viewModel isInSelectionMode];

  if ((isInSelectionMode & 1) == 0)
  {
    browsingSession2 = [(PUOneUpViewController *)self browsingSession];
    importStatusManager = [browsingSession2 importStatusManager];

    if (!importStatusManager)
    {
      v11 = 0;
      goto LABEL_8;
    }

    _spec = [layoutCopy dataSource];
    browsingSession3 = [(PUOneUpViewController *)self browsingSession];
    viewModel2 = [browsingSession3 viewModel];
    v17 = [_spec assetReferenceAtIndexPath:pathCopy];
    v18 = [viewModel2 assetViewModelForAssetReference:v17];

    v11 = [v18 importState] != 0;
    goto LABEL_7;
  }

  v11 = 1;
LABEL_8:

  return v11;
}

- (double)alphaForReviewScreenBarsInLayout:(id)layout
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  isChromeVisible = [viewModel isChromeVisible];

  result = 0.0;
  if (isChromeVisible)
  {
    return 1.0;
  }

  return result;
}

- (BOOL)layoutShouldShowReviewScreenScrubberBar:(id)bar
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  currentAssetReference = [viewModel currentAssetReference];
  asset = [currentAssetReference asset];
  v7 = [asset playbackStyle] == 4;

  return v7;
}

- (BOOL)layout:(id)layout shouldShowCropButtonForItemAtIndexPath:(id)path
{
  layoutCopy = layout;
  pathCopy = path;
  _spec = [(PUOneUpViewController *)self _spec];
  shouldShowCropButton = [_spec shouldShowCropButton];

  if (shouldShowCropButton)
  {
    dataSource = [layoutCopy dataSource];
    v11 = [dataSource assetAtIndexPath:pathCopy];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v12 = v11;

      if (v12)
      {
        LOBYTE(shouldShowCropButton) = [PUCropButtonTileViewController shouldShowCropButtonTileForAsset:v12];
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {

      v12 = 0;
    }

    LOBYTE(shouldShowCropButton) = 0;
    goto LABEL_8;
  }

LABEL_9:

  return shouldShowCropButton;
}

- (BOOL)layout:(id)layout shouldShowPlayButtonForItemAtIndexPath:(id)path
{
  layoutCopy = layout;
  pathCopy = path;
  if ([MEMORY[0x1E69C3640] isOneUpRefreshEnabled])
  {
    v7 = 0;
  }

  else
  {
    dataSource = [layoutCopy dataSource];
    v9 = [dataSource assetAtIndexPath:pathCopy];
    v7 = (objc_opt_respondsToSelector() & 1) != 0 && [v9 playbackStyle] == 4;
  }

  return v7;
}

- (CGSize)layout:(id)layout assetExplorerReviewScreenBadgeSizeForItemAtIndexPath:(id)path
{
  [PUAssetExplorerReviewScreenBadgeTileViewController badgeTileSize:layout];
  result.height = v5;
  result.width = v4;
  return result;
}

- (double)layout:(id)layout leadingBadgesWidthForItemAtIndexPath:(id)path contentWidth:(double)width
{
  pathCopy = path;
  dataSource = [layout dataSource];
  v10 = [dataSource assetReferenceAtIndexPath:pathCopy];

  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  v13 = [viewModel assetViewModelForAssetReference:v10];

  [PUBadgeTileViewController leadingBadgesSizeForAssetViewModel:v13 contentWidth:width];
  v15 = v14;

  return v15;
}

- (CGSize)layout:(id)layout badgeSizeForItemAtIndexPath:(id)path contentWidth:(double)width
{
  pathCopy = path;
  dataSource = [layout dataSource];
  v10 = [dataSource assetReferenceAtIndexPath:pathCopy];

  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  v13 = [viewModel assetViewModelForAssetReference:v10];

  [PUBadgeTileViewController badgeTileSizeForAssetViewModel:v13 contentWidth:width];
  v15 = v14;
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (BOOL)layout:(id)layout canApplyInsetStylingToItemAtIndexPath:(id)path
{
  if ([(PUOneUpViewController *)self _shouldPreventScaledOffsetAdjustments:layout])
  {
    return 1;
  }

  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  isChromeVisible = [viewModel isChromeVisible];

  return isChromeVisible;
}

- (UIEdgeInsets)layout:(id)layout insetsWhenScaledToFitForItemAtIndexPath:(id)path inViewportSize:(CGSize)size
{
  layoutCopy = layout;
  pathCopy = path;
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  dataSource = [layoutCopy dataSource];
  if (!dataSource)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:4862 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"layout.dataSource", v40}];
LABEL_23:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v41 = objc_opt_class();
    v40 = NSStringFromClass(v41);
    px_descriptionForAssertionMessage = [dataSource px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:4862 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"layout.dataSource", v40, px_descriptionForAssertionMessage}];

    goto LABEL_23;
  }

LABEL_3:
  v13 = [dataSource assetAtIndexPath:pathCopy];
  if (![MEMORY[0x1E69C3640] isOneUpRefreshEnabled])
  {
    [layoutCopy visibleRect];
    if ((PXSizeIsEmpty() & 1) != 0 || (PXSizeGetAspectRatio(), [v13 aspectRatio], !PXFloatEqualToFloatWithTolerance()))
    {
      [layoutCopy contentSafeInsets];
      v18 = v24;
      v17 = v25;
      v16 = v26;
      v15 = v27;
    }

    else
    {
      v18 = *MEMORY[0x1E69DDCE0];
      v17 = *(MEMORY[0x1E69DDCE0] + 8);
      v16 = *(MEMORY[0x1E69DDCE0] + 16);
      v15 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    goto LABEL_20;
  }

  v14 = [(PUOneUpViewController *)self _insetModeForAsset:v13];
  if (!v14)
  {
    goto LABEL_13;
  }

  if (v14 == 2)
  {
    chromeViewController = [(PUOneUpViewController *)self chromeViewController];
    [(PUOneUpViewController *)self _layoutReferenceSize];
    [chromeViewController contentGuideInsetsForViewSize:?];
    goto LABEL_15;
  }

  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  if (v14 != 1)
  {
    goto LABEL_16;
  }

  if (([viewModel isChromeVisible] & 1) == 0)
  {
LABEL_13:
    v18 = *MEMORY[0x1E69C48A0];
    v17 = *(MEMORY[0x1E69C48A0] + 8);
    v16 = *(MEMORY[0x1E69C48A0] + 16);
    v15 = *(MEMORY[0x1E69C48A0] + 24);
    goto LABEL_16;
  }

  chromeViewController = [(PUOneUpViewController *)self chromeViewController];
  [(PUOneUpViewController *)self _layoutReferenceSize];
  [chromeViewController toolbarInsetsForViewSize:?];
LABEL_15:
  v18 = v20;
  v17 = v21;
  v16 = v22;
  v15 = v23;

LABEL_16:
  v28 = [dataSource assetReferenceAtIndexPath:pathCopy];
  v29 = [viewModel assetViewModelForAssetReference:v28];
  if ([v29 isAccessoryViewVisible] && !-[PUOneUpViewController _prefersFloatingInfoPanel](self, "_prefersFloatingInfoPanel"))
  {
    [v29 accessoryViewVisibilityFraction];
    PXEdgeInsetsByLinearlyInterpolatingInsets();
    v18 = v30;
    v17 = v31;
    v16 = v32;
    v15 = v33;
  }

LABEL_20:
  v34 = v18;
  v35 = v17;
  v36 = v16;
  v37 = v15;
  result.right = v37;
  result.bottom = v36;
  result.left = v35;
  result.top = v34;
  return result;
}

- (double)layout:(id)layout insetContentCornerRadiusForItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [layout dataSource];
  v8 = [dataSource assetAtIndexPath:pathCopy];

  if (v8 && ([v8 mediaSubtypes] & 0x80004) != 0)
  {
    [v8 aspectRatio];
    v10 = v9;
    traitCollection = [(PUOneUpViewController *)self traitCollection];
    [PUOneUpScreenshotInsetUtilities cornerRadiusForAspectRatio:traitCollection traitCollection:v10];
  }

  else
  {
    traitCollection = [MEMORY[0x1E69C3640] sharedInstance];
    [traitCollection insetContentCornerRadius];
  }

  v13 = v12;

  return v13;
}

- (CGSize)layout:(id)layout pixelSizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [layout dataSource];
  v7 = [dataSource assetAtIndexPath:pathCopy];

  pixelWidth = [v7 pixelWidth];
  pixelHeight = [v7 pixelHeight];

  v10 = pixelWidth;
  v11 = pixelHeight;
  result.height = v11;
  result.width = v10;
  return result;
}

- (double)layout:(id)layout aspectRatioForItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [layout dataSource];
  v9 = [dataSource assetAtIndexPath:pathCopy];

  [v9 aspectRatio];
  v11 = *&v10;
  v12 = (v10 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v13 = ((v10 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v10 >= 0)
  {
    v13 = 0;
    v12 = 0;
  }

  if ((v10 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v12 = 1;
  }

  v14 = (v10 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v12;
  if ((v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v14 = 1;
  }

  if ((v14 | v13) == 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:4833 description:{@"Asset:%@ must provide a valid aspect ratio, got:%f.", v9, *&v11}];
  }

  return v11;
}

- (int64_t)layout:(id)layout insetModeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [layout dataSource];
  v8 = [dataSource assetAtIndexPath:pathCopy];

  v9 = [(PUOneUpViewController *)self _insetModeForAsset:v8];
  return v9;
}

- (void)imageAnalysisInteractionSubjectInteractionInProgressDidChange:(id)change
{
  if ([change isSubjectInteractionInProgress])
  {
    gestureController = [(PUOneUpViewController *)self gestureController];
    [gestureController cancelGestures];
  }
}

- (id)textsToHighlightForImageAnalysisInteraction:(id)interaction
{
  textsToHighlight = [(PUOneUpViewController *)self textsToHighlight];
  if ([textsToHighlight count])
  {
    assetUUIDsAllowedToHighlightText = [(PUOneUpViewController *)self assetUUIDsAllowedToHighlightText];
    if ([assetUUIDsAllowedToHighlightText count])
    {
      browsingSession = [(PUOneUpViewController *)self browsingSession];
      viewModel = [browsingSession viewModel];
      currentAssetReference = [viewModel currentAssetReference];
      asset = [currentAssetReference asset];

      uuid = [asset uuid];
      LOBYTE(viewModel) = [assetUUIDsAllowedToHighlightText containsObject:uuid];

      if ((viewModel & 1) == 0)
      {

        textsToHighlight = MEMORY[0x1E695E0F0];
      }
    }
  }

  return textsToHighlight;
}

- (void)imageAnalysisInteractionIsDrivingLivePhotoPlaybackDidChange:(id)change
{
  changeCopy = change;
  v4 = changeCopy;
  if (imageAnalysisInteractionIsDrivingLivePhotoPlaybackDidChange__onceToken != -1)
  {
    dispatch_once(&imageAnalysisInteractionIsDrivingLivePhotoPlaybackDidChange__onceToken, &__block_literal_global_47430);
    changeCopy = v4;
  }

  if ([changeCopy isDrivingLivePhotoPlayback])
  {
    [analysisControllers addObject:v4];
  }

  else
  {
    [analysisControllers removeObject:v4];
  }
}

uint64_t __85__PUOneUpViewController_imageAnalysisInteractionIsDrivingLivePhotoPlaybackDidChange___block_invoke()
{
  v0 = [MEMORY[0x1E695DF70] array];
  v1 = analysisControllers;
  analysisControllers = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)showDetailsViewForImageAnalysisInteraction:(id)interaction
{
  if (![(PUOneUpViewController *)self _isAccessoryVisible])
  {

    [(PUOneUpViewController *)self _toggleDetailsVisibility];
  }
}

- (id)contentViewForImageAnalysisInteraction:(id)interaction
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  currentAssetReference = [viewModel currentAssetReference];

  _tilingView = [(PUOneUpViewController *)self _tilingView];
  indexPath = [currentAssetReference indexPath];
  dataSourceIdentifier = [currentAssetReference dataSourceIdentifier];
  v10 = [_tilingView presentedTileControllerWithIndexPath:indexPath kind:@"PUTileKindItemContent" dataSourceIdentifier:dataSourceIdentifier];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    viewIfLoaded = [v10 viewIfLoaded];
  }

  else
  {
    viewIfLoaded = 0;
  }

  return viewIfLoaded;
}

- (BOOL)analysisInteractionAllowedForImageAnalysisInteraction:(id)interaction
{
  assetViewModel = [interaction assetViewModel];
  asset = [assetViewModel asset];

  if ([(PUOneUpViewController *)self _allowsShowingVisualIntelligenceForAsset:asset])
  {
    browsingSession = [(PUOneUpViewController *)self browsingSession];
    viewModel = [browsingSession viewModel];
    currentAssetReference = [viewModel currentAssetReference];
    asset2 = [currentAssetReference asset];
    v10 = asset;
    v11 = asset2;
    if (v10 == v11)
    {
      v13 = 1;
    }

    else
    {
      v12 = [v10 isContentEqualTo:v11];
      if (!v12)
      {
        v12 = [v11 isContentEqualTo:v10];
      }

      v13 = v12 == 2;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  _tilingView = [(PUOneUpViewController *)self _tilingView];

  if (_tilingView == deceleratingCopy)
  {
    browsingSession = [(PUOneUpViewController *)self browsingSession];
    viewModel = [browsingSession viewModel];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__PUOneUpViewController_scrollViewDidEndDecelerating___block_invoke;
    v10[3] = &unk_1E7B80DD0;
    v8 = viewModel;
    v11 = v8;
    [v8 performChanges:v10];
    if ([(PUOneUpViewController *)self _isAccessoryVisible]&& [(PUOneUpViewController *)self _accessoryContentKindForCurrentAsset]== 1)
    {
      [(PUOneUpEventTracker *)self->_eventTracker logInfoPanelShownAndSwipeToNewAsset];
    }

    is_scrollViewDelegate = [deceleratingCopy is_scrollViewDelegate];
    [is_scrollViewDelegate scrollViewDidEndDecelerating:deceleratingCopy];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  decelerateCopy = decelerate;
  draggingCopy = dragging;
  _tilingView = [(PUOneUpViewController *)self _tilingView];

  if (_tilingView == draggingCopy)
  {
    if (!decelerateCopy)
    {
      browsingSession = [(PUOneUpViewController *)self browsingSession];
      viewModel = [browsingSession viewModel];

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __65__PUOneUpViewController_scrollViewDidEndDragging_willDecelerate___block_invoke;
      v12[3] = &unk_1E7B80DD0;
      v13 = viewModel;
      v10 = viewModel;
      [v10 performChanges:v12];
    }

    is_scrollViewDelegate = [draggingCopy is_scrollViewDelegate];
    [is_scrollViewDelegate scrollViewDidEndDragging:draggingCopy willDecelerate:decelerateCopy];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  _tilingView = [(PUOneUpViewController *)self _tilingView];

  v10 = draggingCopy;
  if (_tilingView == draggingCopy)
  {
    is_scrollViewDelegate = [draggingCopy is_scrollViewDelegate];
    [is_scrollViewDelegate scrollViewWillEndDragging:draggingCopy withVelocity:offset targetContentOffset:{x, y}];

    v10 = draggingCopy;
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  _tilingView = [(PUOneUpViewController *)self _tilingView];

  if (_tilingView == draggingCopy)
  {
    [(PUOneUpViewController *)self _updateViewModelWithCurrentScrollPosition];
    browsingSession = [(PUOneUpViewController *)self browsingSession];
    viewModel = [browsingSession viewModel];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__PUOneUpViewController_scrollViewWillBeginDragging___block_invoke;
    v10[3] = &unk_1E7B80DD0;
    v11 = viewModel;
    v8 = viewModel;
    [v8 performChanges:v10];
    if ([(PUOneUpViewController *)self _isTipPopoverVisible])
    {
      [(PUOneUpViewController *)self _setHasShownRelevantTip:1];
      [(PUOneUpViewController *)self _invalidateTipPopovers];
      [(PUOneUpViewController *)self _updateTipPopoversIfNeeded];
    }

    is_scrollViewDelegate = [draggingCopy is_scrollViewDelegate];
    [is_scrollViewDelegate scrollViewWillBeginDragging:draggingCopy];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  _tilingView = [(PUOneUpViewController *)self _tilingView];

  v5 = scrollCopy;
  if (_tilingView == scrollCopy)
  {
    if (UIAccessibilityIsVoiceOverRunning())
    {
      browsingSession = [(PUOneUpViewController *)self browsingSession];
      viewModel = [browsingSession viewModel];
      isScrolling = [viewModel isScrolling];
    }

    else
    {
      isScrolling = 0;
    }

    if ([scrollCopy isDragging] & 1) != 0 || (isScrolling)
    {
      if (![(PUOneUpViewController *)self _isDrivingScrubbing])
      {
LABEL_13:
        is_scrollViewDelegate = [scrollCopy is_scrollViewDelegate];
        [is_scrollViewDelegate scrollViewDidScroll:scrollCopy];

        v5 = scrollCopy;
        goto LABEL_14;
      }
    }

    else
    {
      isDecelerating = [scrollCopy isDecelerating];
      if (!-[PUOneUpViewController _isDrivingScrubbing](self, "_isDrivingScrubbing") || (isDecelerating & 1) == 0 && ![scrollCopy pu_isPerformingScrollTest])
      {
        goto LABEL_13;
      }
    }

    [(PUOneUpViewController *)self _updateViewModelWithCurrentScrollPosition];
    goto LABEL_13;
  }

LABEL_14:
}

- (CGPoint)tilingView:(id)view initialVisibleOriginWithLayout:(id)layout
{
  layoutCopy = layout;
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  assetsDataSource = [viewModel assetsDataSource];

  dataSource = [layoutCopy dataSource];
  LOBYTE(viewModel) = [dataSource isEqual:assetsDataSource];

  if ((viewModel & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:4659 description:{@"Invalid parameter not satisfying: %@", @"[[layout dataSource] isEqual:assetsDataSource]"}];
  }

  browsingSession2 = [(PUOneUpViewController *)self browsingSession];
  viewModel2 = [browsingSession2 viewModel];
  currentAssetReference = [viewModel2 currentAssetReference];

  v14 = [assetsDataSource indexPathForAssetReference:currentAssetReference];
  if (v14 || ([assetsDataSource firstItemIndexPath], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = v14;
    [layoutCopy visibleRectForScrollingToItemAtIndexPath:v14 scrollPosition:0];
    v17 = v16;
    v19 = v18;
  }

  else
  {
    v17 = *MEMORY[0x1E695F058];
    v19 = *(MEMORY[0x1E695F058] + 8);
  }

  v20 = v17;
  v21 = v19;
  result.y = v21;
  result.x = v20;
  return result;
}

- (id)tilingView:(id)view scrollInfoWithLayout:(id)layout
{
  layoutCopy = layout;
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  assetsDataSource = [viewModel assetsDataSource];
  isEmpty = [assetsDataSource isEmpty];

  if (isEmpty)
  {
    [PUTilingScrollInfo scrollInfoWithScrollDirections:0];
  }

  else
  {
    [layoutCopy preferredScrollInfo];
  }
  v10 = ;

  return v10;
}

- (void)presentPeopleViewController:(id)controller
{
  controllerCopy = controller;
  navigationController = [(PUOneUpViewController *)self navigationController];
  [navigationController presentViewController:controllerCopy animated:1 completion:0];
}

- (void)pushPeopleViewController:(id)controller
{
  controllerCopy = controller;
  navigationController = [(PUOneUpViewController *)self navigationController];
  [navigationController setNavigationBarHidden:0 animated:1];

  navigationController2 = [(PUOneUpViewController *)self navigationController];
  [navigationController2 pushViewController:controllerCopy animated:1];
}

- (BOOL)tilingViewCanBypass20069585Check:(id)check
{
  _currentAssetViewModel = [(PUOneUpViewController *)self _currentAssetViewModel];
  isInEditMode = [_currentAssetViewModel isInEditMode];

  return isInEditMode;
}

- (id)tilingView:(id)view tileTransitionCoordinatorForLayoutInvalidationContext:(id)context
{
  viewCopy = view;
  contextCopy = context;
  if ([(PUOneUpViewController *)self _shouldDisableTransitionsUntilAppeared])
  {
    v8 = 0;
  }

  else
  {
    browsingSession = [(PUOneUpViewController *)self browsingSession];
    viewModel = [browsingSession viewModel];

    layout = [viewCopy layout];
    v8 = [PUTileTransitionCoordinator defaultTileTransitionCoordinatorForLayoutInvalidationContext:contextCopy layout:layout tilingView:viewCopy viewModel:viewModel];
  }

  return v8;
}

- (id)tilingView:(id)view tileTransitionCoordinatorForReattachedTileControllers:(id)controllers context:(id)context
{
  controllersCopy = controllers;
  contextCopy = context;
  if ([contextCopy isTransitioningOverOneUp])
  {
    v8 = 0;
  }

  else
  {
    v8 = [PUTileTransitionCoordinator defaultTileTransitionCoordinatorForReattachedTileControllers:controllersCopy context:contextCopy];
  }

  return v8;
}

- (id)tilingView:(id)view tileTransitionCoordinatorForChangeFromFrame:(CGRect)frame toFrame:(CGRect)toFrame duration:(double)duration
{
  if (duration <= 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = [PUTileTransitionCoordinator defaultTileTransitionCoordinatorForFrameChangeWithTileCrossFade:0 tilingView:view, duration, frame.origin.y, frame.size.width, frame.size.height, toFrame.origin.x, toFrame.origin.y, toFrame.size.width, toFrame.size.height];
  }

  return v6;
}

- (id)tilingView:(id)view tileTransitionCoordinatorForTransitionFromLayout:(id)layout toLayout:(id)toLayout withContext:(id)context
{
  contextCopy = context;
  toLayoutCopy = toLayout;
  layoutCopy = layout;
  viewCopy = view;
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  currentAssetReference = [viewModel currentAssetReference];

  v17 = [PUTileTransitionCoordinator browsingTileTransitionCoordinatorForTransitionFromLayout:layoutCopy toLayout:toLayoutCopy withTilingView:viewCopy anchorAssetReference:currentAssetReference context:contextCopy];

  return v17;
}

- (void)presentErrorFromLoadingIndicator:(id)indicator
{
  indicatorCopy = indicator;
  if (indicatorCopy)
  {
    browsingSession = [(PUOneUpViewController *)self browsingSession];
    viewModel = [browsingSession viewModel];

    assetViewModelForCurrentAssetReference = [viewModel assetViewModelForCurrentAssetReference];
    asset = [assetViewModelForCurrentAssetReference asset];
    v9 = [[PUOneUpLoadingErrorPresentationController alloc] initWithError:indicatorCopy forAsset:asset];
    [(PUErrorPresentationController *)v9 setRadarComponentID:@"512768" name:@"Photos Backend (New Bugs)" version:@"all"];
    v10 = [(PUErrorPresentationController *)v9 alertControllerWithCompletion:0];
    [(PUOneUpViewController *)self presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    viewModel = PLOneUpGetLog();
    if (os_log_type_enabled(viewModel, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1B36F3000, viewModel, OS_LOG_TYPE_DEFAULT, "Attempted to present an error from the loading indicator, but the error was nil. Skipping.", v11, 2u);
    }
  }
}

- (id)tilingView:(id)view tileControllerWithIndexPath:(id)path kind:(id)kind dataSource:(id)source
{
  viewCopy = view;
  pathCopy = path;
  kindCopy = kind;
  sourceCopy = source;
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  assetsDataSource = [viewModel assetsDataSource];
  if (([sourceCopy isEqual:assetsDataSource] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:4342 description:{@"Invalid parameter not satisfying: %@", @"[dataSource isEqual:assetsDataSource]"}];
  }

  v123 = pathCopy;
  if ([kindCopy isEqualToString:@"PUTileKindItemContent"])
  {
    v18 = sourceCopy;
    v19 = kindCopy;
    selfCopy = self;
    browsingSession2 = [(PUOneUpViewController *)self browsingSession];
    contentTileProvider = [browsingSession2 contentTileProvider];

    v121 = assetsDataSource;
    v23 = [assetsDataSource assetReferenceAtIndexPath:pathCopy];
    v119 = viewModel;
    v24 = [viewModel assetViewModelForAssetReference:v23];
    asset = [v23 asset];
    v26 = [contentTileProvider tileControllerForAsset:asset viewModel:v24 tilingView:viewCopy];
    if ([v24 isUpdatingDisplayedContent])
    {
      objc_initWeak(location, v24);
      v138[0] = MEMORY[0x1E69E9820];
      v138[1] = 3221225472;
      v138[2] = __80__PUOneUpViewController_tilingView_tileControllerWithIndexPath_kind_dataSource___block_invoke;
      v138[3] = &unk_1E7B7F988;
      objc_copyWeak(&v139, location);
      [v26 notifyWhenReadyForDisplayWithTimeOut:v138 completionHandler:3.0];
      objc_destroyWeak(&v139);
      objc_destroyWeak(location);
    }

    viewModel = v119;
    assetsDataSource = v121;
    self = selfCopy;
    kindCopy = v19;
    sourceCopy = v18;
    goto LABEL_7;
  }

  if ([kindCopy isEqualToString:PUTileKindUserTransform])
  {
    v28 = [assetsDataSource assetReferenceAtIndexPath:pathCopy];
    v27 = [viewCopy dequeueTileControllerWithReuseIdentifier:@"PUUserTransformTileReuseIdentifier"];
    [viewModel assetViewModelForAssetReference:v28];
    v30 = v29 = viewModel;
    [v27 setAssetViewModel:v30];
    [v27 setBrowsingViewModel:v29];
LABEL_13:

    viewModel = v29;
LABEL_14:

    goto LABEL_15;
  }

  if ([kindCopy isEqualToString:PUTileKindPlayButton])
  {
    v28 = [assetsDataSource assetReferenceAtIndexPath:pathCopy];
    [viewModel assetViewModelForAssetReference:v28];
    v30 = v29 = viewModel;
    v27 = [viewCopy dequeueTileControllerWithReuseIdentifier:@"PUPlayButtonViewReuseIdentifier"];
    [v27 setBrowsingViewModel:v29];
    v31 = v27;
LABEL_12:
    [v31 setAssetViewModel:v30];
    goto LABEL_13;
  }

  if ([kindCopy isEqualToString:PUTileKindBackground])
  {
    v27 = [viewCopy dequeueTileControllerWithReuseIdentifier:@"PUBackgroundTileReuseIdentifier"];
    [v27 setViewModel:viewModel];
    [(PUOneUpViewController *)self _setBackgroundTileViewController:v27];
    [(PUOneUpViewController *)self _updateBackgroundTileViewController];
    goto LABEL_15;
  }

  if ([kindCopy isEqualToString:PUTileKindBadge])
  {
    v28 = [assetsDataSource assetReferenceAtIndexPath:pathCopy];
    [viewModel assetViewModelForAssetReference:v28];
    v30 = v29 = viewModel;
    v31 = [viewCopy dequeueTileControllerWithReuseIdentifier:@"PUBadgeTileReuseIdentifier"];
    v27 = v31;
    goto LABEL_12;
  }

  if ([kindCopy isEqualToString:PUTileKindAssetExplorerReviewScreenBadge])
  {
    v33 = [assetsDataSource assetReferenceAtIndexPath:pathCopy];
    [(PUOneUpViewController *)self browsingSession];
    v35 = v34 = viewModel;
    [v35 actionManager];
    v36 = viewCopy;
    v37 = v109 = viewCopy;

    v38 = [v36 dequeueTileControllerWithReuseIdentifier:@"PUAssetExplorerReviewScreenBadgeTileReuseIdentifier"];
    v133[0] = MEMORY[0x1E69E9820];
    v133[1] = 3221225472;
    v133[2] = __80__PUOneUpViewController_tilingView_tileControllerWithIndexPath_kind_dataSource___block_invoke_2;
    v133[3] = &unk_1E7B7F1D0;
    v39 = v38;
    v134 = v39;
    v135 = v34;
    v136 = v33;
    v137 = v37;
    v122 = v37;
    v117 = v33;
    [v39 performChanges:v133];
    v40 = v34;
    v41 = v137;
    v42 = v39;

    v27 = v42;
    viewModel = v40;
    viewCopy = v109;

    v43 = v134;
LABEL_27:

LABEL_28:
    goto LABEL_15;
  }

  if ([kindCopy isEqualToString:PUTileKindSelectionIndicator])
  {
    v44 = [assetsDataSource assetReferenceAtIndexPath:pathCopy];
    [(PUOneUpViewController *)self browsingSession];
    v46 = v45 = viewModel;
    [v46 actionManager];
    v47 = viewCopy;
    v48 = v110 = viewCopy;

    v49 = [v47 dequeueTileControllerWithReuseIdentifier:@"PUSelectionIndicatorTileReuseIdentifier"];
    v128[0] = MEMORY[0x1E69E9820];
    v128[1] = 3221225472;
    v128[2] = __80__PUOneUpViewController_tilingView_tileControllerWithIndexPath_kind_dataSource___block_invoke_3;
    v128[3] = &unk_1E7B7F1D0;
    v50 = v49;
    v129 = v50;
    v130 = v45;
    v131 = v44;
    v132 = v48;
    v122 = v48;
    v117 = v44;
    [v50 performChanges:v128];
    v51 = v45;
    v52 = v132;
    v53 = v50;

    v27 = v53;
    viewModel = v51;
    viewCopy = v110;

    v43 = v129;
    goto LABEL_27;
  }

  if ([kindCopy isEqualToString:PUTileKindAssetExplorerReviewScreenProgressIndicator])
  {
    v117 = [assetsDataSource assetAtIndexPath:pathCopy];
    v122 = [viewModel assetSharedViewModelForAsset:v117];
    [assetsDataSource assetReferenceAtIndexPath:pathCopy];
    v54 = viewModel;
    v56 = v55 = viewCopy;
    [v54 assetViewModelForAssetReference:v56];
    v115 = sourceCopy;
    v57 = assetsDataSource;
    v58 = a2;
    v60 = v59 = v54;
    videoPlayer = [v60 videoPlayer];
    v62 = [v55 dequeueTileControllerWithReuseIdentifier:@"PUAssetExplorerReviewScreenProgressIndicatorTileReuseIdentifier"];
    [v62 setAssetSharedViewModel:v122];
    [v62 setVideoPlayer:videoPlayer];

    v27 = v62;
    v63 = v59;
    a2 = v58;
    assetsDataSource = v57;
    sourceCopy = v115;

    viewCopy = v55;
    viewModel = v63;
    goto LABEL_28;
  }

  if ([kindCopy isEqualToString:PUTileKindReviewScreenTopBar])
  {
    v27 = [viewCopy dequeueTileControllerWithReuseIdentifier:@"PUReviewScreenTopBarTileReuseIdentifier"];
    [(PUOneUpViewController *)self _setReviewScreenTopBarTileViewController:v27];
LABEL_37:
    [v27 setBrowsingViewModel:viewModel];
    [(PUOneUpViewController *)self _updateReviewScreenBars];
    goto LABEL_15;
  }

  if ([kindCopy isEqualToString:PUTileKindReviewScreenControlBar])
  {
    v27 = [viewCopy dequeueTileControllerWithReuseIdentifier:@"PUReviewScreenControlBarTileReuseIdentifier"];
    [(PUOneUpViewController *)self _setReviewScreenControlBarTileViewController:v27];
    goto LABEL_37;
  }

  if ([kindCopy isEqualToString:PUTileKindReviewScreenScrubberBar])
  {
    v27 = [viewCopy dequeueTileControllerWithReuseIdentifier:@"PUReviewScreenScrubberBarTileReuseIdentifier"];
    [(PUOneUpViewController *)self _setReviewScreenScrubberBarTileViewController:v27];
    goto LABEL_37;
  }

  if ([kindCopy isEqualToString:PUTileKindProgressIndicator])
  {
    v116 = sourceCopy;
    v118 = [assetsDataSource assetAtIndexPath:pathCopy];
    [viewModel assetSharedViewModelForAsset:?];
    v66 = v65 = viewModel;
    [assetsDataSource assetReferenceAtIndexPath:pathCopy];
    v68 = v67 = viewCopy;
    v69 = [viewModel assetViewModelForAssetReference:v68];
    v111 = v67;
    v70 = [v67 dequeueTileControllerWithReuseIdentifier:@"PUProgressIndicatorTileReuseIdentifier"];
    [v70 setAssetViewModel:v69];
    [v70 setBrowsingViewModel:v65];
    [v70 setAssetSharedViewModel:v66];
    objc_initWeak(location, self);
    v126[0] = MEMORY[0x1E69E9820];
    v126[1] = 3221225472;
    v126[2] = __80__PUOneUpViewController_tilingView_tileControllerWithIndexPath_kind_dataSource___block_invoke_4;
    v126[3] = &unk_1E7B7A0C0;
    objc_copyWeak(&v127, location);
    v27 = v70;
    [v70 setErrorPresenter:v126];
    objc_destroyWeak(&v127);
    objc_destroyWeak(location);

    viewModel = v65;
    sourceCopy = v116;
    viewCopy = v111;
    goto LABEL_15;
  }

  if ([kindCopy isEqualToString:PUTileKindPeople])
  {
    v27 = [viewCopy dequeueTileControllerWithReuseIdentifier:@"PUPeopleTileReuseIdentifier"];
    v28 = [assetsDataSource assetAtIndexPath:pathCopy];
    [v27 setDisplayAsset:v28];
    [v27 setPeopleDelegate:self];
    goto LABEL_14;
  }

  v71 = a2;
  v120 = viewModel;
  if ([kindCopy isEqualToString:PUTileKindRenderIndicator])
  {
    v72 = [assetsDataSource assetAtIndexPath:pathCopy];
    v73 = [viewModel assetSharedViewModelForAsset:v72];
    v26 = [viewCopy dequeueTileControllerWithReuseIdentifier:@"PURenderIndicatorTileReuseIdentifier"];
    [v26 setAssetSharedViewModel:v73];
    [(PUOneUpViewController *)self undoManager];
    v75 = v74 = viewCopy;
    [v26 setUndoManager:v75];

    viewCopy = v74;
    viewModel = v120;

    a2 = v71;
LABEL_7:
    v27 = v26;
    goto LABEL_15;
  }

  v76 = assetsDataSource;
  selfCopy2 = self;
  v114 = v71;
  v77 = viewCopy;
  if ([kindCopy isEqualToString:PUTileKindImportStatusIndicator])
  {
    v78 = [v76 assetReferenceAtIndexPath:pathCopy];
    v79 = [viewModel assetViewModelForAssetReference:v78];
    v27 = [viewCopy dequeueTileControllerWithReuseIdentifier:@"PUImportStatusIndicatorTileReuseIdentifier"];
    [v27 setAssetViewModel:v79];

    viewModel = v120;
LABEL_46:
    v80 = v114;
LABEL_47:
    assetsDataSource = v76;
    a2 = v80;
    goto LABEL_15;
  }

  v112 = kindCopy;
  if ([kindCopy isEqualToString:PUTileKindBufferingIndicator])
  {
    v81 = [v76 assetReferenceAtIndexPath:pathCopy];
    v82 = [viewModel assetViewModelForAssetReference:?];
    v83 = [viewCopy dequeueTileControllerWithReuseIdentifier:@"PUBufferingIndicatorTileReuseIdentifier"];
    [v83 setAssetViewModel:v82];
    browsingSession3 = [(PUOneUpViewController *)selfCopy2 browsingSession];
    mergedVideoProvider = [browsingSession3 mergedVideoProvider];
    [v83 setMergedVideoProvider:mergedVideoProvider];

    [v83 setBrowsingViewModel:v120];
    objc_initWeak(location, selfCopy2);
    v124[0] = MEMORY[0x1E69E9820];
    v124[1] = 3221225472;
    v124[2] = __80__PUOneUpViewController_tilingView_tileControllerWithIndexPath_kind_dataSource___block_invoke_5;
    v124[3] = &unk_1E7B7A0E8;
    objc_copyWeak(&v125, location);
    [v83 setErrorAlertControllerDisplayer:v124];
    objc_destroyWeak(&v125);
    objc_destroyWeak(location);

    self = selfCopy2;
    assetsDataSource = v76;
    a2 = v114;
    v27 = v83;
    viewModel = v120;
LABEL_15:
    [(PUOneUpViewController *)self _configureAdoptedTileController:v27];
    if (v27)
    {
      goto LABEL_16;
    }

    goto LABEL_70;
  }

  if ([kindCopy isEqualToString:PUTileKindLoadingIndicator])
  {
    v86 = [v76 assetReferenceAtIndexPath:pathCopy];
    v87 = viewModel;
    v88 = [viewModel assetViewModelForAssetReference:v86];
    v27 = [viewCopy dequeueTileControllerWithReuseIdentifier:@"PULoadingIndicatorTileReuseIdentifier"];
    loadingIndicatorController = [(PUOneUpViewController *)self loadingIndicatorController];
    [v27 setStyle:{objc_msgSend(loadingIndicatorController, "loadingIndicatorStyleForAssetViewModel:", v88)}];

    viewCopy = v77;
LABEL_52:

    viewModel = v87;
    kindCopy = v112;
    goto LABEL_46;
  }

  if ([kindCopy isEqualToString:PUTileKindAccessory])
  {
    v90 = [v76 assetReferenceAtIndexPath:pathCopy];
    v91 = [viewModel assetViewModelForAssetReference:v90];
    v27 = [viewCopy dequeueTileControllerWithReuseIdentifier:@"PUAccessoryTileReuseIdentifier"];
    [v27 setAssetViewModel:v91];
    [v27 setAssetReference:v90];

    viewModel = v120;
    goto LABEL_46;
  }

  if ([kindCopy isEqualToString:PUTileKindVideoPlaceholder])
  {
    v27 = [viewCopy dequeueTileControllerWithReuseIdentifier:@"PUVideoPlaceholderTileReuseIdentifier"];
LABEL_61:
    kindCopy = v112;
LABEL_62:
    v80 = v114;
    viewModel = v120;
    goto LABEL_47;
  }

  if ([kindCopy isEqualToString:PUTileKindLivePhotoVideoPlaybackOverlay])
  {
    v92 = [viewCopy dequeueTileControllerWithReuseIdentifier:@"PULivePhotoVideoPlaybackTileReuseIdentifier"];
    [v92 setBrowsingViewModel:viewModel];
    browsingSession4 = [(PUOneUpViewController *)self browsingSession];
    mergedVideoProvider2 = [browsingSession4 mergedVideoProvider];
    [v92 setMergedVideoProvider:mergedVideoProvider2];

    [v92 setIsPresentedForSecondScreen:{-[PUOneUpViewController _isPresentedForSecondScreen](self, "_isPresentedForSecondScreen")}];
    v27 = v92;
    [v92 setDelegate:self];
    _tilingView = [(PUOneUpViewController *)self _tilingView];
    window = [_tilingView window];

    if (!window)
    {
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      windows = [mEMORY[0x1E69DC668] windows];
      window = [windows firstObject];
    }

    px_imageModulationManager = [window px_imageModulationManager];
    [v92 setImageModulationManager:px_imageModulationManager];

    goto LABEL_61;
  }

  if ([kindCopy isEqualToString:PUTileKindSyndicationAttribution])
  {
    v100 = [v76 assetReferenceAtIndexPath:pathCopy];
    v101 = [viewModel assetViewModelForAssetReference:v100];
    v102 = [v77 dequeueTileControllerWithReuseIdentifier:@"PUSyndicationAttributionTileReuseIdentifier"];
    if (v102)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_66:
        [v102 setAssetViewModel:v101];
        [v102 setDelegate:self];

        v27 = v102;
        viewCopy = v77;
        kindCopy = v112;
        goto LABEL_62;
      }

      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v107 = objc_opt_class();
      v106 = NSStringFromClass(v107);
      px_descriptionForAssertionMessage = [v102 px_descriptionForAssertionMessage];
      [currentHandler2 handleFailureInMethod:v114 object:self file:@"PUOneUpViewController.m" lineNumber:4544 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[tilingView dequeueTileControllerWithReuseIdentifier:PUSyndicationAttributionTileReuseIdentifier]", v106, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v105 = objc_opt_class();
      v106 = NSStringFromClass(v105);
      [currentHandler2 handleFailureInMethod:v114 object:self file:@"PUOneUpViewController.m" lineNumber:4544 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[tilingView dequeueTileControllerWithReuseIdentifier:PUSyndicationAttributionTileReuseIdentifier]", v106}];
    }

    goto LABEL_66;
  }

  if ([kindCopy isEqualToString:PUTileKindCropButton])
  {
    v86 = [v76 assetReferenceAtIndexPath:pathCopy];
    v87 = viewModel;
    v88 = [viewModel assetViewModelForAssetReference:v86];
    v27 = [viewCopy dequeueTileControllerWithReuseIdentifier:@"PUCropButtonTileReuseIdentifier"];
    [v27 setDelegate:self];
    [v27 setAssetViewModel:v88];
    [v27 setBrowsingViewModel:v120];
    goto LABEL_52;
  }

  [(PUOneUpViewController *)self _configureAdoptedTileController:0];
  assetsDataSource = v76;
  a2 = v71;
LABEL_70:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:4563 description:{@"Invalid parameter not satisfying: %@", @"tileController != nil"}];

  v27 = 0;
LABEL_16:

  return v27;
}

void __80__PUOneUpViewController_tilingView_tileControllerWithIndexPath_kind_dataSource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didUpdateDisplayedContent];
}

uint64_t __80__PUOneUpViewController_tilingView_tileControllerWithIndexPath_kind_dataSource___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setBrowsingViewModel:*(a1 + 40)];
  [*(a1 + 32) setAssetReference:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);

  return [v2 setActionManager:v3];
}

uint64_t __80__PUOneUpViewController_tilingView_tileControllerWithIndexPath_kind_dataSource___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setBrowsingViewModel:*(a1 + 40)];
  [*(a1 + 32) setAssetReference:*(a1 + 48)];
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);

  return [v3 setActionManager:v2];
}

void __80__PUOneUpViewController_tilingView_tileControllerWithIndexPath_kind_dataSource___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentErrorFromLoadingIndicator:v3];
}

void __80__PUOneUpViewController_tilingView_tileControllerWithIndexPath_kind_dataSource___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [MEMORY[0x1E69DC650] alertControllerWithTitle:a2 message:a3 preferredStyle:1];
  v4 = MEMORY[0x1E69DC648];
  v5 = PULocalizedString(@"PUPHOTOBROWSER_FAILURE_OK_BUTTON");
  v6 = [v4 actionWithTitle:v5 style:0 handler:0];
  [v8 addAction:v6];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentViewController:v8 animated:1 completion:0];
}

- (BOOL)_allowsVisualLookupInInfoPanelMode
{
  v3 = +[PUOneUpSettings sharedInstance];
  allowsVisualIntelligenceVisualLookupInfoPanelMode = [v3 allowsVisualIntelligenceVisualLookupInfoPanelMode];

  if (!allowsVisualIntelligenceVisualLookupInfoPanelMode)
  {
    return 0;
  }

  traitCollection = [(PUOneUpViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  horizontalSizeClass = [viewModel horizontalSizeClass];

  enabled = [MEMORY[0x1E69C3740] enabled];
  if (userInterfaceIdiom)
  {
    v11 = horizontalSizeClass == 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  v13 = v12 & (enabled ^ 1);

  return v13;
}

- (BOOL)_allowsShowingVisualIntelligenceForAsset:(id)asset
{
  assetCopy = asset;
  presentationOrigin = [(PUOneUpViewController *)self presentationOrigin];
  v6 = +[PUOneUpSettings sharedInstance];
  allowsVisualIntelligenceInVideoFrame = [v6 allowsVisualIntelligenceInVideoFrame];

  v8 = [MEMORY[0x1E69C3C88] canRequestVKImageAnalysisForAsset:assetCopy];
  if ((v8 & 1) == 0 && allowsVisualIntelligenceInVideoFrame)
  {
    v8 = [assetCopy mediaType] == 2;
  }

  v9 = +[PUOneUpSettings sharedInstance];
  if ([v9 allowVisualIntelligence])
  {
    v10 = v8 & ~[(PUOneUpViewController *)self _isPresentedForSecondScreen]& (presentationOrigin != 13);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (PUOneUpVisualImageAnalyzingController)visualImageAnalyzingController
{
  if (([(PUOneUpViewController *)self _options]& 0x40000) == 0 && !self->_visualImageAnalyzingController)
  {
    v3 = +[PUOneUpSettings sharedInstance];
    allowVisualIntelligence = [v3 allowVisualIntelligence];

    if (allowVisualIntelligence)
    {
      v5 = [PUOneUpVisualImageAnalyzingController alloc];
      browsingSession = [(PUOneUpViewController *)self browsingSession];
      viewModel = [browsingSession viewModel];
      v8 = [(PUOneUpVisualImageAnalyzingController *)v5 initWithBrowsingViewModel:viewModel];
      visualImageAnalyzingController = self->_visualImageAnalyzingController;
      self->_visualImageAnalyzingController = v8;
    }
  }

  v10 = self->_visualImageAnalyzingController;

  return v10;
}

- (PUOneUpPhototypeSupportController)phototypeSupportController
{
  mEMORY[0x1E69C3650] = [MEMORY[0x1E69C3650] sharedInstance];
  enablePhototypes = [mEMORY[0x1E69C3650] enablePhototypes];

  if (enablePhototypes)
  {
    phototypeSupportController = self->_phototypeSupportController;
    if (!phototypeSupportController)
    {
      v6 = [PUOneUpPhototypeSupportController alloc];
      browsingSession = [(PUOneUpViewController *)self browsingSession];
      viewModel = [browsingSession viewModel];
      v9 = [(PUOneUpPhototypeSupportController *)v6 initWithBrowsingViewModel:viewModel];
      v10 = self->_phototypeSupportController;
      self->_phototypeSupportController = v9;

      phototypeSupportController = self->_phototypeSupportController;
    }

    v11 = phototypeSupportController;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (PUShazamEventsController)shazamEventsController
{
  shazamEventsController = self->_shazamEventsController;
  if (!shazamEventsController)
  {
    v4 = [PUShazamEventsController alloc];
    browsingSession = [(PUOneUpViewController *)self browsingSession];
    viewModel = [browsingSession viewModel];
    v7 = [(PUShazamEventsController *)v4 initWithBrowsingViewModel:viewModel];
    v8 = self->_shazamEventsController;
    self->_shazamEventsController = v7;

    shazamEventsController = self->_shazamEventsController;
  }

  return shazamEventsController;
}

- (NSString)passcodeAuthenticationReason
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  currentAssetReference = [viewModel currentAssetReference];
  pxAssetReference = [currentAssetReference pxAssetReference];

  assetCollection = [pxAssetReference assetCollection];
  [assetCollection px_isHiddenSmartAlbum];
  [assetCollection px_isRecentlyDeletedSmartAlbum];
  [assetCollection px_isRecoveredSmartAlbum];
  v7 = PXLocalizedString();

  return v7;
}

- (NSString)authenticationTitle
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  currentAssetReference = [viewModel currentAssetReference];
  pxAssetReference = [currentAssetReference pxAssetReference];

  assetCollection = [pxAssetReference assetCollection];
  [assetCollection px_isHiddenSmartAlbum];
  [assetCollection px_isRecentlyDeletedSmartAlbum];
  [assetCollection px_isRecoveredSmartAlbum];
  v7 = PXLocalizedString();

  return v7;
}

- (void)viewSafeAreaInsetsDidChange
{
  v16.receiver = self;
  v16.super_class = PUOneUpViewController;
  [(PUOneUpViewController *)&v16 viewSafeAreaInsetsDidChange];
  v3 = 1;
  [(PUOneUpViewController *)self _invalidateInfoPanelLayoutAnimated:1];
  if (![(PUOneUpViewController *)self _prefersFloatingInfoPanel])
  {
    browsingSession = [(PUOneUpViewController *)self browsingSession];
    viewModel = [browsingSession viewModel];
    v3 = [viewModel accessoryViewsDefaultVisibility] ^ 1;
  }

  browsingSession2 = [(PUOneUpViewController *)self browsingSession];
  viewModel2 = [browsingSession2 viewModel];
  isChromeVisible = [viewModel2 isChromeVisible];

  if (isChromeVisible)
  {
    if (v3)
    {
      view = [(PUOneUpViewController *)self view];
      [view safeAreaInsets];
      v11 = v10;
      v13 = v12;

      chromeViewController = [(PUOneUpViewController *)self chromeViewController];
      [chromeViewController setTopSafeAreaInset:v11];

      chromeViewController2 = [(PUOneUpViewController *)self chromeViewController];
      [chromeViewController2 setBottomSafeAreaInset:v13];
    }
  }
}

- (void)_handleDeferredProcessingFinishedForAssetUUID:(id)d
{
  v13 = *MEMORY[0x1E69E9840];
  dCopy = d;
  ppt_deferredProcessingCompletionBlock = [(PUOneUpViewController *)self ppt_deferredProcessingCompletionBlock];
  if (ppt_deferredProcessingCompletionBlock)
  {
    ppt_assetUUIDNeedsDeferredProcessingFinishNotification = [(PUOneUpViewController *)self ppt_assetUUIDNeedsDeferredProcessingFinishNotification];
    v7 = [dCopy isEqualToString:ppt_assetUUIDNeedsDeferredProcessingFinishNotification];

    if (v7)
    {
      [(PUOneUpViewController *)self setPpt_deferredProcessingCompletionBlock:0];
      ppt_deferredProcessingWaitTimer = [(PUOneUpViewController *)self ppt_deferredProcessingWaitTimer];
      [ppt_deferredProcessingWaitTimer invalidate];

      [(PUOneUpViewController *)self setPpt_deferredProcessingWaitTimer:0];
      [(PUOneUpViewController *)self setPpt_assetUUIDNeedsDeferredProcessingFinishNotification:0];
      v9 = PLOneUpGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v12 = dCopy;
        _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEBUG, "Deferred Processing: Notify DP is done and final image is loaded/displayed (asset: %@).", buf, 0xCu);
      }

      v10 = ppt_deferredProcessingCompletionBlock;
      px_dispatch_on_main_queue();
    }
  }
}

- (id)_assetsToPrefetchUsingDataSource:(id)source startingAt:(id)at count:(int64_t)count reverseDirection:(BOOL)direction
{
  directionCopy = direction;
  sourceCopy = source;
  atCopy = at;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__47533;
  v23 = __Block_byref_object_dispose__47534;
  v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:count];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __92__PUOneUpViewController__assetsToPrefetchUsingDataSource_startingAt_count_reverseDirection___block_invoke;
  v14[3] = &unk_1E7B7A098;
  v11 = sourceCopy;
  v15 = v11;
  v16 = &v19;
  v17 = v25;
  countCopy = count;
  [v11 enumerateIndexPathsStartingAtIndexPath:atCopy reverseDirection:directionCopy usingBlock:v14];
  v12 = v20[5];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v25, 8);

  return v12;
}

void __92__PUOneUpViewController__assetsToPrefetchUsingDataSource_startingAt_count_reverseDirection___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = [*(a1 + 32) assetAtIndexPath:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
  }

  v5 = *(a1 + 56);
  if (v5 <= ++*(*(*(a1 + 48) + 8) + 24))
  {
    *a3 = 1;
  }
}

- (id)_assetsToPrefetchForCount:(int)count
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  assetsDataSource = [viewModel assetsDataSource];
  currentAssetReference = [viewModel currentAssetReference];
  v9 = [assetsDataSource indexPathForAssetReference:currentAssetReference];
  v10 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  if (v9)
  {
    v11 = [(PUOneUpViewController *)self _assetsToPrefetchUsingDataSource:assetsDataSource startingAt:v9 count:count reverseDirection:1];
    v12 = [(PUOneUpViewController *)self _assetsToPrefetchUsingDataSource:assetsDataSource startingAt:v9 count:count reverseDirection:0];
    [v10 addObjectsFromArray:v11];
    [v10 addObjectsFromArray:v12];
  }

  return v10;
}

- (void)_preheatAssetsForSpatialGeneration
{
  objc_initWeak(&location, self);
  if ([MEMORY[0x1E69C3740] enabled])
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

    if ((isLowPowerModeEnabled & 1) == 0)
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x3032000000;
      v14 = __Block_byref_object_copy__47533;
      v15 = __Block_byref_object_dispose__47534;
      v16 = 0;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __59__PUOneUpViewController__preheatAssetsForSpatialGeneration__block_invoke;
      block[3] = &unk_1E7B7A070;
      block[4] = &v11;
      objc_copyWeak(&v10, &location);
      dispatch_sync(MEMORY[0x1E69E96A0], block);
      v4 = objc_loadWeakRetained(&location);
      browsingSession = [v4 browsingSession];
      viewModel = [browsingSession viewModel];

      spatialOverlayController = [viewModel spatialOverlayController];
      array = [v12[5] array];
      [spatialOverlayController prepareOverlayViewForAssets:array];

      objc_destroyWeak(&v10);
      _Block_object_dispose(&v11, 8);
    }
  }

  objc_destroyWeak(&location);
}

void __59__PUOneUpViewController__preheatAssetsForSpatialGeneration__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _assetsToPrefetchForCount:2];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_preheatAdjacentAssetsForPhotosDetailsContext
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  if (-[PUOneUpViewController appearState](self, "appearState") == 2 && [viewModel browsingSpeedRegime] <= 0 && (objc_msgSend(viewModel, "isScrubbing") & 1) == 0)
  {
    objc_initWeak(&location, self);
    preheatAssetsQueue = self->_preheatAssetsQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __70__PUOneUpViewController__preheatAdjacentAssetsForPhotosDetailsContext__block_invoke;
    v6[3] = &unk_1E7B80638;
    objc_copyWeak(&v7, &location);
    dispatch_async(preheatAssetsQueue, v6);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __70__PUOneUpViewController__preheatAdjacentAssetsForPhotosDetailsContext__block_invoke(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__47533;
  v15 = __Block_byref_object_dispose__47534;
  v16 = 0;
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __70__PUOneUpViewController__preheatAdjacentAssetsForPhotosDetailsContext__block_invoke_2;
  v8 = &unk_1E7B7A070;
  v9 = &v11;
  objc_copyWeak(&v10, (a1 + 32));
  dispatch_sync(MEMORY[0x1E69E96A0], &v5);
  v2 = MEMORY[0x1E69C3888];
  v3 = [v12[5] array];
  [v2 photosDetailsContextPreheatForAssets:v3];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _preheatAssetsForSpatialGeneration];

  objc_destroyWeak(&v10);
  _Block_object_dispose(&v11, 8);
}

void __70__PUOneUpViewController__preheatAdjacentAssetsForPhotosDetailsContext__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _assetsToPrefetchForCount:3];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_updatePocketBias
{
  _isZoomedIn = [(PUOneUpViewController *)self _isZoomedIn];
  _tilingView = [(PUOneUpViewController *)self _tilingView];
  v6 = _tilingView;
  if (_isZoomedIn)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  [_tilingView px_setPocketPreferredUserInterfaceStyleForAllEdges:v5];
}

- (void)viewModel:(id)model didChange:(id)change
{
  modelCopy = model;
  changeCopy = change;
  if ([changeCopy currentAssetDidChange])
  {
    [(PUOneUpViewController *)self _invalidateAssetActionManager];
    [(PUOneUpViewController *)self _invalidateBarsControllers];
    [(PUOneUpViewController *)self _invalidateChromeViewController];
    [(PUOneUpViewController *)self _invalidateScrubbingAdjustmentPolicy];
  }

  if ([changeCopy isPresentedForPreviewDidChange])
  {
    [(PUOneUpViewController *)self _isPresentedForPreviewDidChange];
  }

  if ([changeCopy imageAnalysisInteractionDidChange])
  {
    [(PUOneUpViewController *)self _invalidateImageAnalysisInteractionAdditionalActionInfoEdgeInsets];
    [(PUOneUpViewController *)self _updateImageAnalysisInteractionDelegate];
  }

  if ([MEMORY[0x1E69C3640] isOneUpRefreshEnabled] && objc_msgSend(changeCopy, "contentPrivacyStateDidChange") && objc_msgSend(modelCopy, "contentPrivacyState") == 1)
  {
    PXUIApplicationUpdateSnapshotForBackgroundApplication();
  }

  _tilingView = [(PUOneUpViewController *)self _tilingView];
  v9 = _tilingView;
  if (_tilingView)
  {
    layout = [_tilingView layout];
    v11 = objc_opt_class();
    if (v11)
    {
      if (objc_opt_isKindOfClass())
      {
        v11 = layout;
      }

      else
      {
        v11 = 0;
      }
    }

    v12 = v11;

    browsingSession = [(PUOneUpViewController *)self browsingSession];
    viewModel = [browsingSession viewModel];
    assetsDataSource = [viewModel assetsDataSource];

    currentAssetReference = [modelCopy currentAssetReference];
    v57 = modelCopy;
    v54 = currentAssetReference;
    if (([changeCopy assetsDataSourceDidChange] & 1) != 0 || (objc_msgSend(v12, "dataSource"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqual:", assetsDataSource), v16, (v17 & 1) == 0))
    {
      _newOneUpLayout = [(PUOneUpViewController *)self _newOneUpLayout];

      v21 = [modelCopy assetViewModelForAssetReference:currentAssetReference];
      assetUUIDsWithDisplayedContentUpdates = [(PUOneUpViewController *)self assetUUIDsWithDisplayedContentUpdates];
      asset = [v21 asset];
      uuid = [asset uuid];
      v25 = [assetUUIDsWithDisplayedContentUpdates containsObject:uuid];

      if (v25)
      {
        v26 = objc_alloc_init(PUTilingLayoutTransitionContext);
        [(PUTilingLayoutTransitionContext *)v26 setIsUpdatingDisplayedContent:1];
        displayedContentUpdateGroup = [v21 displayedContentUpdateGroup];
        [(PUTilingLayoutTransitionContext *)v26 setDisplayedContentUpdateGroup:displayedContentUpdateGroup];
      }

      else
      {
        v26 = 0;
      }

      assetUUIDsWithDisplayedContentUpdates2 = [(PUOneUpViewController *)self assetUUIDsWithDisplayedContentUpdates];
      [assetUUIDsWithDisplayedContentUpdates2 removeAllObjects];

      v19 = _newOneUpLayout;
      [v9 transitionToLayout:_newOneUpLayout withContext:v26 animationSetupCompletionHandler:0];
      v18 = v9;
      [v9 layoutIfNeeded];
      [(PUOneUpViewController *)self _preheatAdjacentAssetsForPhotosDetailsContext];
    }

    else
    {
      v18 = v9;
      v19 = v12;
    }

    assetViewModelChangesByAssetReference = [changeCopy assetViewModelChangesByAssetReference];
    v89 = 0;
    v90 = &v89;
    v91 = 0x2020000000;
    v92 = 0;
    v85 = 0;
    v86 = &v85;
    v87 = 0x2020000000;
    v88 = 0;
    v81 = 0;
    v82 = &v81;
    v83 = 0x2020000000;
    v84 = 0;
    v77 = 0;
    v78 = &v77;
    v79 = 0x2020000000;
    v80 = 0;
    accessoryViewsDefaultVisibility = [v57 accessoryViewsDefaultVisibility];
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __45__PUOneUpViewController_viewModel_didChange___block_invoke;
    v66[3] = &unk_1E7B7A048;
    v31 = v57;
    v67 = v31;
    v76 = accessoryViewsDefaultVisibility;
    v53 = v19;
    v68 = v53;
    v72 = &v77;
    v32 = v18;
    v69 = v32;
    v52 = v54;
    v70 = v52;
    selfCopy = self;
    v73 = &v85;
    v74 = &v81;
    v75 = &v89;
    [assetViewModelChangesByAssetReference enumerateKeysAndObjectsUsingBlock:v66];
    v50 = assetViewModelChangesByAssetReference;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __45__PUOneUpViewController_viewModel_didChange___block_invoke_3;
    aBlock[3] = &unk_1E7B80C38;
    v33 = v31;
    v64 = v33;
    selfCopy2 = self;
    v55 = _Block_copy(aBlock);
    v34 = v53;
    if (*(v86 + 24) == 1)
    {
      modelCopy = v57;
      v9 = v18;
      -[PUOneUpViewController setWasChromeVisibleBeforeZoomIn:](self, "setWasChromeVisibleBeforeZoomIn:", [v33 isChromeVisible]);
    }

    else
    {
      modelCopy = v57;
      v9 = v18;
      if (*(v82 + 24) == 1)
      {
        [(PUOneUpViewController *)self _handleZoomOutCurrentAsset];
        goto LABEL_29;
      }

      if (*(v90 + 24) != 1)
      {
LABEL_29:
        if (*(v78 + 24) == 1)
        {
          [(PUOneUpViewController *)self _invalidateTipPopovers];
        }

        if ([(PUOneUpViewController *)self _isDrivingScrubbing])
        {
          goto LABEL_44;
        }

        if ([changeCopy currentAssetDidChange])
        {
          if (!v53)
          {
LABEL_44:
            if ([changeCopy chromeVisibilityDidChange])
            {
              [(PUOneUpViewController *)self _invalidateSpec];
              [(PUOneUpViewController *)self _updatePrefersHomeIndicatorHidden];
              [(PUOneUpViewController *)self _updateScrubbingAdjustmentPolicyForChromeChange];
              [(PUOneUpViewController *)self _invalidateTipPopovers];
              [(PUOneUpViewController *)self _updateGestureController];
            }

            if ([changeCopy isInteractingWithVideoScrubberDidChange])
            {
              [(PUOneUpViewController *)self _invalidateLayout];
            }

            if ([changeCopy secondScreenSizeDidChange] && !-[PUOneUpViewController _isPresentedForSecondScreen](self, "_isPresentedForSecondScreen"))
            {
              [(PUOneUpViewController *)self _invalidateSpec];
            }

            if ([changeCopy currentAssetDidChange])
            {
              [(PUOneUpViewController *)self _invalidateEditMode];
              [(PUOneUpViewController *)self _invalidatePreferredContentSize];
              [(PUOneUpViewController *)self _invalidateVideoPlayer];
              [(PUOneUpViewController *)self _invalidateUserActivity];
              [(PUOneUpViewController *)self _invalidateCachedBoopableItemProvider];
              if ([(PUOneUpViewController *)self isFloatingInfoPanelPresented])
              {
                if ([changeCopy currentAssetTransitionProgressDidChange])
                {
                  [(PUOneUpViewController *)self _dimFloatingInfoPanelAnimated:1];
                  objc_initWeak(&location, self);
                  mEMORY[0x1E69C45A8] = [MEMORY[0x1E69C45A8] sharedScheduler];
                  v60[0] = MEMORY[0x1E69E9820];
                  v60[1] = 3221225472;
                  v60[2] = __45__PUOneUpViewController_viewModel_didChange___block_invoke_5;
                  v60[3] = &unk_1E7B80638;
                  objc_copyWeak(&v61, &location);
                  [mEMORY[0x1E69C45A8] dispatchOnMainThreadWhenNotScrolling:v60];

                  objc_destroyWeak(&v61);
                  objc_destroyWeak(&location);
                }

                else if (![(PUOneUpViewController *)self _isDrivingScrubbing])
                {
                  [(PUOneUpViewController *)self _updateFloatingInfoPanelIfNeeded];
                }
              }

              [(PUOneUpViewController *)self _setDidPlayCurrentLivePhoto:0];
              [(PUOneUpViewController *)self _preheatAdjacentAssetsForPhotosDetailsContext];
            }

            if ([changeCopy presentingOverOneUpDidChange])
            {
              [(PUOneUpViewController *)self _invalidateVideoPlayer];
            }

            if ([changeCopy browsingSpeedRegimeDidChange])
            {
              [(PUOneUpViewController *)self _invalidatePreloadInsets];
              [(PUOneUpViewController *)self _preheatAdjacentAssetsForPhotosDetailsContext];
            }

            if (([changeCopy currentAssetDidChange] & 1) != 0 || objc_msgSend(changeCopy, "currentAssetTransitionProgressDidChange"))
            {
              [(PUOneUpViewController *)self px_setNeedsHDRFocusUpdate];
            }

            if ([changeCopy reviewScreenBarsModelDidChange])
            {
              [(PUOneUpViewController *)self _updateReviewScreenBars];
            }

            if (([changeCopy videoOverlayPlayStateDidChange] & 1) != 0 || objc_msgSend(changeCopy, "isScrubbingActivationDidChange"))
            {
              [(PUOneUpViewController *)self _invalidateLayout];
            }

            if ([changeCopy isScrubbingDidChange])
            {
              _currentAssetViewModel = [(PUOneUpViewController *)self _currentAssetViewModel];
              if ([_currentAssetViewModel isAccessoryViewVisible] && -[PUOneUpViewController _prefersFloatingInfoPanel](self, "_prefersFloatingInfoPanel"))
              {
                if ([v33 isScrubbing])
                {
                  [(PUOneUpViewController *)self _dismissFloatingInfoPanelAnimated:1];
                }

                else
                {
                  [(PUOneUpViewController *)self _presentFloatingInfoPanelAnimated:1];
                  [(PUOneUpViewController *)self _invalidateInfoPanelLayoutAnimated:1];
                }
              }

              if ([(PUOneUpViewController *)self _isTipPopoverVisible])
              {
                [(PUOneUpViewController *)self _setHasShownRelevantTip:1];
              }

              [(PUOneUpViewController *)self _invalidateUserActivity];
              [(PUOneUpViewController *)self _invalidateCachedBoopableItemProvider];
              [(PUOneUpViewController *)self _invalidateTipPopovers];
              [(PUOneUpViewController *)self _preheatAdjacentAssetsForPhotosDetailsContext];
            }

            if ([changeCopy contentPrivacyStateDidChange])
            {
              [(PUOneUpViewController *)self _invalidateSpec];
              [(PUOneUpViewController *)self _invalidateUserActivity];
              [(PUOneUpViewController *)self _invalidateBarsControllers];
              if ([v33 contentPrivacyState] == 1)
              {
                videoPlayer = [v33 videoPlayer];
                v58[0] = MEMORY[0x1E69E9820];
                v58[1] = 3221225472;
                v58[2] = __45__PUOneUpViewController_viewModel_didChange___block_invoke_6;
                v58[3] = &unk_1E7B80DD0;
                v59 = v33;
                [videoPlayer performChanges:v58];

                [(PUOneUpViewController *)self _dismissFloatingInfoPanelAnimated:0];
              }
            }

            if (([changeCopy systemAuthenticationTypeDidChange] & 1) != 0 || objc_msgSend(changeCopy, "wantsContentUnavailableUnlockButtonVisibleDidChange"))
            {
              [(PUOneUpViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
            }

            if ([changeCopy isInSelectionModeDidChange])
            {
              [(PUOneUpViewController *)self _invalidateLayout];
            }

            _Block_object_dispose(&v77, 8);
            _Block_object_dispose(&v81, 8);
            _Block_object_dispose(&v85, 8);
            _Block_object_dispose(&v89, 8);

            goto LABEL_88;
          }
        }

        else
        {
          currentAssetTransitionProgressDidChange = [changeCopy currentAssetTransitionProgressDidChange];
          if (v53)
          {
            v36 = currentAssetTransitionProgressDidChange;
          }

          else
          {
            v36 = 0;
          }

          if ((v36 & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        currentAssetReference2 = [v33 currentAssetReference];
        v38 = [assetsDataSource indexPathForAssetReference:currentAssetReference2];
        if (v38)
        {
          [v33 currentAssetTransitionProgress];
          [v53 visibleRectForItemAtIndexPath:v38 transitionProgress:?];
          v40 = v39;
          v42 = v41;
          coordinateSystem = [v53 coordinateSystem];
          contentCoordinateSystem = [v32 contentCoordinateSystem];
          if (PUCanConvertFromCoordinateSystemToCoordinateSystem(coordinateSystem, contentCoordinateSystem))
          {
            v45 = PUConvertPointFromCoordinateSystemToCoordinateSystem(coordinateSystem, contentCoordinateSystem, v40, v42);
            [v32 setContentOffset:objc_msgSend(v33 animated:{"assetChangesShouldAnimate"), v45, v46}];
            [v32 px_cancelScrollGesture];
          }

          v34 = v53;
        }

        goto LABEL_44;
      }
    }

    v55[2]();
    goto LABEL_29;
  }

LABEL_88:
  [(PUOneUpViewController *)self _updateIfNeeded];
}

void __45__PUOneUpViewController_viewModel_didChange___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v87 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v6 = a3;
  v77 = [v6 countByEnumeratingWithState:&v82 objects:v86 count:16];
  if (v77)
  {
    v76 = *v83;
    v7 = *MEMORY[0x1E695EFF8];
    v8 = *(MEMORY[0x1E695EFF8] + 8);
    v74 = v79;
    v75 = v6;
    do
    {
      for (i = 0; i != v77; ++i)
      {
        if (*v83 != v76)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v82 + 1) + 8 * i);
        v11 = [*(a1 + 32) assetViewModelForAssetReference:{v5, v74}];
        if ([v10 focusValueChanged])
        {
          [v11 focusValue];
          if (fabs(v12) >= 1.0)
          {
            v13 = [v11 modelTileTransform];
            if (v13 || (v14 = [v11 isAccessoryViewVisible], v15 = *(a1 + 104), v15 != v14))
            {

LABEL_15:
              v78[0] = MEMORY[0x1E69E9820];
              v78[1] = 3221225472;
              v79[0] = __45__PUOneUpViewController_viewModel_didChange___block_invoke_2;
              v79[1] = &unk_1E7B7FF98;
              v80 = v11;
              v81 = *(a1 + 104);
              [v80 performChanges:v78];

              goto LABEL_16;
            }

            if ((v15 & 1) == 0)
            {
              [v11 contentOffset];
              if (v17 != v7 || v16 != v8)
              {
                goto LABEL_15;
              }
            }
          }
        }

LABEL_16:
        if ([v10 badgeInfoChanged])
        {
          v18 = [v5 indexPath];
          [*(a1 + 40) invalidateBadgeSizeForItemAtIndexPath:v18];
        }

        if ([v10 modelTileTransformChanged])
        {
          v19 = [v5 indexPath];
          [*(a1 + 40) invalidateModelTileTransformForItemAtIndexPath:v19];
          v20 = [v11 modelTileTransform];
          if ([v20 hasUserZoomedIn])
          {
            *(*(*(a1 + 72) + 8) + 24) = 1;
            if ([v20 hasUserZoomedIn])
            {
              v21 = +[PUOneUpSettings sharedInstance];
              v22 = [v21 allowFullsizeJPEGDisplay];

              v6 = v75;
              if (v22)
              {
                v23 = *(a1 + 48);
                v24 = [v5 dataSourceIdentifier];
                v25 = [v23 presentedTileControllerWithIndexPath:v19 kind:@"PUTileKindItemContent" dataSourceIdentifier:v24];

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v25 setShouldUseFullSizeImageData:1];
                }

                v6 = v75;
              }
            }
          }
        }

        if ([v5 isEqual:*(a1 + 56)] && (objc_msgSend(*(a1 + 32), "isAnimatingPresentationSize") & 1) == 0 && objc_msgSend(*(a1 + 64), "appearState") == 2)
        {
          if ([v10 isZoomedInChanged])
          {
            *(*(*(a1 + 80) + 8) + 24) = [v11 isZoomedIn];
            *(*(*(a1 + 88) + 8) + 24) = [v11 isZoomedIn] ^ 1;
          }

          if ([v11 isZoomedIn] && objc_msgSend(v11, "isUserTransformingTile"))
          {
            *(*(*(a1 + 96) + 8) + 24) = 1;
          }
        }

        if ([v10 contentOffsetChanged])
        {
          v26 = [v11 lastContentOffsetChangeReason];
          v27 = ([v11 isLastAccessoryViewVisibilityChangeReasonUserAction] & 1) != 0 || objc_msgSend(v11, "lastAccessoryViewVisibilityChangeReason") == 3;
          [v11 focusValue];
          if (fabs(v28) < 1.0 && (v26 == 3 || v26 == 1 && v27))
          {
            [v11 contentOffsetOverrideFactor];
            if (v29 < 1.0)
            {
              v30 = 2;
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

          v31 = [v5 indexPath];
          [*(a1 + 40) invalidateContentOffsetForItemAtIndexPath:v31 withOptions:v30];
        }

        if ([v10 accessoryViewVisibilityChanged])
        {
          v32 = [v5 indexPath];
          v33 = [v5 asset];
          v34 = [PUCommentsViewController canShowCommentsForAsset:v33];

          if (v34)
          {
            v35 = [MEMORY[0x1E69C38B0] sharedInstance];
            v36 = [v35 captionWidgetEnableDirectAttachToMaster];

            LODWORD(v35) = [v11 isAccessoryViewVisible];
            v37 = [v11 isLastAccessoryViewVisibilityChangeReasonUserAction];
            v38 = 5;
            if ((v35 & v36) != 0)
            {
              v38 = 1;
            }

            if (v37)
            {
              v39 = v38;
            }

            else
            {
              v39 = 1;
            }
          }

          else
          {
            v39 = 0;
          }

          [*(a1 + 40) invalidateAccessoryForItemAtIndexPath:v32 withOptions:v39];
          [*(a1 + 64) _invalidateAccessoryView];
          [*(a1 + 64) _invalidateTipPopovers];
        }

        if ([v10 isVisualSearchCardShowingChanged] && objc_msgSend(*(a1 + 64), "_prefersFloatingInfoPanel") && objc_msgSend(v11, "isAccessoryViewVisible"))
        {
          v40 = [v11 isVisualSearchCardShowing];
          v41 = *(a1 + 64);
          if (v40)
          {
            [v41 _dismissFloatingInfoPanelAnimated:1];
          }

          else
          {
            [v41 _presentFloatingInfoPanelAnimated:1];
          }
        }

        if ([v10 visualImageAnalysisChanged])
        {
          [*(a1 + 64) _invalidateTipPopovers];
        }

        v42 = [v10 videoPlayerChange];
        v43 = [v42 desiredPlayStateDidChange];

        if (v43)
        {
          v44 = [v5 indexPath];
          [*(a1 + 40) invalidateVideoPlaceholderForItemAtIndexPath:v44];
        }

        v45 = [v10 videoPlayerChange];
        if ([v45 playStateDidChange])
        {
        }

        else
        {
          v46 = [v10 videoPlayerChange];
          v47 = [v46 isPlayableDidChange];

          if (!v47)
          {
            goto LABEL_73;
          }
        }

        v48 = [v11 videoPlayer];
        if ([v48 playState] != 5)
        {
          goto LABEL_72;
        }

        v49 = [v11 videoPlayer];
        if ([v49 isPlayable])
        {

LABEL_72:
          goto LABEL_73;
        }

        v57 = [v11 videoPlayer];
        v58 = [v57 isPlaybackDesired];

        if (v58)
        {
          [*(a1 + 64) _presentAlertForUnplayableAssetReference:v5];
        }

LABEL_73:
        v50 = [v10 videoPlayerChange];
        v51 = [v50 isActivatedDidChange];

        if (v51)
        {
          [*(a1 + 64) _invalidateBarsControllers];
        }

        if ([v10 isInEditModeChanged])
        {
          [*(a1 + 64) _invalidateBarsControllers];
          [*(a1 + 64) _invalidateEditMode];
        }

        if ([v10 saveStateChanged])
        {
          v52 = [*(a1 + 32) currentAssetReference];
          if ([v5 isEqual:v52])
          {
            v53 = [*(a1 + 64) _isPresentedForSecondScreen];

            if (v53)
            {
              goto LABEL_92;
            }

            v52 = [*(a1 + 32) assetViewModelForAssetReference:v5];
            v54 = [*(a1 + 64) _currentContentTileController];
            if (v54)
            {
              v55 = [v52 saveState];
              [v54 setShouldPreserveCurrentContent:v55 == 1];
              if ((v55 - 3) >= 2)
              {
                if (v55 != 2)
                {
                  v56 = v55 == 1;
                  v6 = v75;
                  if (v56)
                  {
                    [v52 willUpdateDisplayedContent];
                  }

                  goto LABEL_90;
                }

                v59 = [*(a1 + 64) assetUUIDsWithDisplayedContentUpdates];
                v60 = [v52 asset];
                v61 = [v60 uuid];
                [v59 addObject:v61];
              }

              [v52 didUpdateDisplayedContent];
              v6 = v75;
            }

LABEL_90:
          }
        }

LABEL_92:
        if ([v10 isUpdatingDisplayedContentChanged])
        {
          v62 = [*(a1 + 64) assetUUIDsWithDisplayedContentUpdates];
          v63 = [v11 asset];
          v64 = [v63 uuid];
          [v62 addObject:v64];
        }

        if ([v10 importStateChanged])
        {
          v65 = *(a1 + 40);
          v66 = [v5 indexPath];
          [v65 invalidateProgressIndicatorForItemAtIndexPath:v66];
        }

        v67 = [*(a1 + 64) loadingIndicatorController];
        v68 = [v67 shouldInvalidateLoadingIndicatorForAssetViewModelChange:v10];

        if (v68)
        {
          v69 = *(a1 + 40);
          v70 = [v5 indexPath];
          [v69 invalidateLoadingIndicatorForItemAtIndexPath:v70];
        }

        if ([v10 PPT_isDeferredProcessingDoneAndFinalImageDisplayedChanged])
        {
          v71 = *(a1 + 64);
          v72 = [v5 asset];
          v73 = [v72 uuid];
          [v71 _handleDeferredProcessingFinishedForAssetUUID:v73];
        }

        if ([v10 isZoomedInChanged] && objc_msgSend(*(a1 + 64), "_enablePockets"))
        {
          [*(a1 + 64) _updatePocketBias];
        }
      }

      v77 = [v6 countByEnumeratingWithState:&v82 objects:v86 count:16];
    }

    while (v77);
  }
}

void __45__PUOneUpViewController_viewModel_didChange___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) isChromeVisible])
  {
    v2 = *(a1 + 32);
    v3 = +[PUOneUpSettings sharedInstance];
    v4 = PUShouldAutoHideChrome(v2, [v3 chromeAutoHideBehaviorOnZoom]);

    if (([*(a1 + 40) _options] & 0x4000) == 0)
    {
      v5 = [*(a1 + 32) isInSelectionMode];
      if (v4 && (v5 & 1) == 0 && ![*(a1 + 32) videoOverlayPlayState])
      {
        v6 = *(a1 + 32);
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __45__PUOneUpViewController_viewModel_didChange___block_invoke_4;
        v7[3] = &unk_1E7B80DD0;
        v8 = v6;
        [v8 performChanges:v7];
      }
    }
  }
}

void __45__PUOneUpViewController_viewModel_didChange___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateFloatingInfoPanelIfNeeded];
}

void __45__PUOneUpViewController_viewModel_didChange___block_invoke_6(uint64_t a1)
{
  v1 = [*(a1 + 32) videoPlayer];
  [v1 setDesiredPlayState:1 reason:@"Paused due to content privacy state change."];
}

uint64_t __45__PUOneUpViewController_viewModel_didChange___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) setAccessoryViewVisible:*(a1 + 40)];
  if ((*(a1 + 40) & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 resetContentOffset];
  }

  return result;
}

- (double)tilingViewControllerTransitionProgressAtWhichChromeIsFullyFadedOut:(id)out
{
  isOneUpRefreshEnabled = [MEMORY[0x1E69C3640] isOneUpRefreshEnabled];
  result = 1.0;
  if (isOneUpRefreshEnabled)
  {
    return 0.25;
  }

  return result;
}

- (void)tilingViewControllerTransition:(id)transition adoptTilingView:(id)view fromEndPoint:(id)point isCancelingTransition:(BOOL)cancelingTransition animationSetupCompletionHandler:(id)handler
{
  cancelingTransitionCopy = cancelingTransition;
  viewCopy = view;
  pointCopy = point;
  handlerCopy = handler;
  _tilingView = [(PUOneUpViewController *)self _tilingView];

  if (_tilingView)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    _tilingView2 = [(PUOneUpViewController *)self _tilingView];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:3683 description:{@"adopting tiling %@ from %@ will override current tiling view %@", viewCopy, pointCopy, _tilingView2}];
  }

  [(PUOneUpViewController *)self _setTilingView:viewCopy];
  tilingView = self->__tilingView;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __139__PUOneUpViewController_tilingViewControllerTransition_adoptTilingView_fromEndPoint_isCancelingTransition_animationSetupCompletionHandler___block_invoke;
  v34[3] = &unk_1E7B7A020;
  v34[4] = self;
  [(PUTilingView *)tilingView enumerateAllTileControllersUsingBlock:v34];
  layout = [viewCopy layout];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v17 = layout;
  }

  else
  {
    v17 = 0;
  }

  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  assetsDataSource = [viewModel assetsDataSource];
  assetReference = [v17 assetReference];
  v22 = [assetsDataSource assetReferenceForAssetReference:assetReference];

  if (v22)
  {
    browsingSession2 = [(PUOneUpViewController *)self browsingSession];
    viewModel2 = [browsingSession2 viewModel];

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __139__PUOneUpViewController_tilingViewControllerTransition_adoptTilingView_fromEndPoint_isCancelingTransition_animationSetupCompletionHandler___block_invoke_2;
    v31[3] = &unk_1E7B80C38;
    v32 = viewModel2;
    v33 = v22;
    v25 = viewModel2;
    [v25 performChanges:v31];
  }

  _newOneUpLayout = [(PUOneUpViewController *)self _newOneUpLayout];
  v27 = objc_alloc_init(PUTilingLayoutTransitionContext);
  [(PUTilingLayoutTransitionContext *)v27 setIsViewControllerTransition:1];
  [(PUTilingLayoutTransitionContext *)v27 setCancelingTransition:cancelingTransitionCopy];
  [viewCopy transitionToLayout:_newOneUpLayout withContext:v27 animationSetupCompletionHandler:handlerCopy];

  [viewCopy layoutIfNeeded];
}

- (void)tilingViewControllerTransition:(id)transition abandonTilingView:(id)view toEndPoint:(id)point
{
  viewCopy = view;
  pointCopy = point;
  _tilingView = [(PUOneUpViewController *)self _tilingView];

  if (_tilingView != viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    _tilingView2 = [(PUOneUpViewController *)self _tilingView];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:3673 description:{@"tiling view %@ to abandon to %@ isn't the current tiling view %@", viewCopy, pointCopy, _tilingView2}];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__PUOneUpViewController_tilingViewControllerTransition_abandonTilingView_toEndPoint___block_invoke;
  v13[3] = &unk_1E7B7A020;
  v13[4] = self;
  [viewCopy enumerateAllTileControllersUsingBlock:v13];
  [(PUOneUpViewController *)self _setTilingView:0];
}

- (id)tilingViewControllerTransition:(id)transition tilingViewToTransferToEndPoint:(id)point
{
  pointCopy = point;
  _tilingView = [(PUOneUpViewController *)self _tilingView];
  if (!_tilingView)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:3668 description:{@"no tiling view to transfer to %@", pointCopy}];
  }

  return _tilingView;
}

- (void)_editCrop:(id)crop
{
  actionsController = [(PUOneUpViewController *)self actionsController];
  [actionsController performSimpleActionWithActionType:26];
}

- (void)_editCleanup:(id)cleanup
{
  actionsController = [(PUOneUpViewController *)self actionsController];
  [actionsController performSimpleActionWithActionType:24];
}

- (void)_editStyles:(id)styles
{
  actionsController = [(PUOneUpViewController *)self actionsController];
  [actionsController performSimpleActionWithActionType:25];
}

- (void)_editFilter:(id)filter
{
  actionsController = [(PUOneUpViewController *)self actionsController];
  [actionsController performSimpleActionWithActionType:23];
}

- (void)_editAdjust:(id)adjust
{
  actionsController = [(PUOneUpViewController *)self actionsController];
  [actionsController performSimpleActionWithActionType:16];
}

- (void)_arrowKey:(id)key
{
  keyCopy = key;
  viewIfLoaded = [(PUOneUpViewController *)self viewIfLoaded];
  v5 = viewIfLoaded;
  if (viewIfLoaded)
  {
    effectiveUserInterfaceLayoutDirection = [viewIfLoaded effectiveUserInterfaceLayoutDirection];
    input = [keyCopy input];
    v8 = [input isEqualToString:*MEMORY[0x1E69DDF28]];

    if (v8)
    {
      actionsController = [(PUOneUpViewController *)self actionsController];
      if (effectiveUserInterfaceLayoutDirection == 1)
      {
LABEL_4:
        [actionsController jumpToPreviousAsset];
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {
      input2 = [keyCopy input];
      v11 = [input2 isEqualToString:*MEMORY[0x1E69DDF10]];

      if (!v11)
      {
        goto LABEL_9;
      }

      actionsController = [(PUOneUpViewController *)self actionsController];
      if (effectiveUserInterfaceLayoutDirection != 1)
      {
        goto LABEL_4;
      }
    }

    [actionsController jumpToNextAsset];
    goto LABEL_8;
  }

LABEL_9:
}

- (id)keyCommands
{
  v35 = *MEMORY[0x1E69E9840];
  if ([(PUOneUpViewController *)self _canAdvertiseKeyCommands])
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF28] modifierFlags:0 action:sel__arrowKey_];
    [v3 addObject:v4];

    v5 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF10] modifierFlags:0 action:sel__arrowKey_];
    [v3 addObject:v5];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v31;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v30 + 1) + 8 * i) setWantsPriorityOverSystemBehavior:{1, v30}];
        }

        v8 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v8);
    }

    v11 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF30] modifierFlags:0x100000 action:sel_toggleViewer_];
    [v6 addObject:v11];

    v12 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"[" modifierFlags:0x100000 action:sel_toggleViewer_];
    [v6 addObject:v12];

    v13 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel_toggleViewer_];
    [v6 addObject:v13];

    _currentAssetViewModel = [(PUOneUpViewController *)self _currentAssetViewModel];
    asset = [_currentAssetViewModel asset];

    v16 = asset;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    isSpatialMedia = [v17 isSpatialMedia];
    if ((isSpatialMedia & 1) == 0)
    {
      v19 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"a" modifierFlags:0 action:sel__editAdjust_];
      [v6 addObject:v19];

      v20 = v16;
      if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      fetchSmartStyleExtendedProperties = [v21 fetchSmartStyleExtendedProperties];

      originallySmartStyleable = [fetchSmartStyleExtendedProperties originallySmartStyleable];
      if (originallySmartStyleable)
      {
        v24 = @"s";
      }

      else
      {
        v24 = @"f";
      }

      v25 = &selRef__editStyles_;
      if (!originallySmartStyleable)
      {
        v25 = &selRef__editFilter_;
      }

      v26 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:v24 modifierFlags:0 action:{*v25, v30}];
      [v6 addObject:v26];

      v27 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"r" modifierFlags:0 action:sel__editCleanup_];
      [v6 addObject:v27];

      v28 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"c" modifierFlags:0 action:sel__editCrop_];
      [v6 addObject:v28];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_canAdvertiseKeyCommands
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  isPresentingOverOneUp = [viewModel isPresentingOverOneUp];

  browsingSession2 = [(PUOneUpViewController *)self browsingSession];
  viewModel2 = [browsingSession2 viewModel];
  assetViewModelForCurrentAssetReference = [viewModel2 assetViewModelForCurrentAssetReference];
  isInEditMode = [assetViewModelForCurrentAssetReference isInEditMode];

  return ((isPresentingOverOneUp | isInEditMode) & 1) == 0;
}

- (void)copy:(id)copy
{
  actionsController = [(PUOneUpViewController *)self actionsController];
  [actionsController performSimpleActionWithActionType:33];
}

- (void)print:(id)print
{
  actionsController = [(PUOneUpViewController *)self actionsController];
  [actionsController performSimpleActionWithActionType:34];
}

- (void)addAssetsToLastUsedAlbum:(id)album
{
  actionsController = [(PUOneUpViewController *)self actionsController];
  [actionsController performSimpleActionWithActionType:64];
}

- (void)addAssetsToAlbum:(id)album
{
  actionsController = [(PUOneUpViewController *)self actionsController];
  [actionsController performSimpleActionWithActionType:63];
}

- (void)duplicateAssets:(id)assets
{
  v18[1] = *MEMORY[0x1E69E9840];
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  currentAssetReference = [viewModel currentAssetReference];

  if (currentAssetReference && ([currentAssetReference assetCollection], (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v7, objc_msgSend(currentAssetReference, "asset"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    assetCollection = [currentAssetReference assetCollection];
    v17 = assetCollection;
    asset = [currentAssetReference asset];
    v16 = asset;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    v18[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];

    actionsController = [(PUOneUpViewController *)self actionsController];
    [actionsController performDuplicateActionWithAssetsByAssetCollection:v13];
  }

  else
  {
    v13 = PLOneUpGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_FAULT, "Attempted to duplicate assets but there is no current asset reference", v15, 2u);
    }
  }
}

- (void)favoriteAssets:(id)assets
{
  actionsController = [(PUOneUpViewController *)self actionsController];
  [actionsController performToggleFavoriteAction];
}

- (void)hideAssets:(id)assets
{
  actionsController = [(PUOneUpViewController *)self actionsController];
  [actionsController performSimpleActionWithActionType:40];
}

- (void)deleteAssets:(id)assets
{
  actionsController = [(PUOneUpViewController *)self actionsController];
  [actionsController performSimpleActionWithActionType:10];
}

- (void)restoreAssetsWithoutConfirmation:(id)confirmation
{
  actionsController = [(PUOneUpViewController *)self actionsController];
  [actionsController performSimpleActionWithActionType:14];
}

- (void)restoreAssets:(id)assets
{
  actionsController = [(PUOneUpViewController *)self actionsController];
  [actionsController performSimpleActionWithActionType:13];
}

- (void)trashAssetsWithoutConfirmation:(id)confirmation
{
  actionsController = [(PUOneUpViewController *)self actionsController];
  v5 = [actionsController canPerformSimpleActionWithActionType:9];

  actionsController2 = [(PUOneUpViewController *)self actionsController];
  v9 = actionsController2;
  if (v5)
  {
    v7 = 9;
  }

  else
  {
    v8 = [actionsController2 canPerformSimpleActionWithActionType:58];

    actionsController2 = [(PUOneUpViewController *)self actionsController];
    v9 = actionsController2;
    if (v8)
    {
      v7 = 58;
    }

    else
    {
      v7 = 10;
    }
  }

  [actionsController2 performSimpleActionWithActionType:v7];
}

- (void)trashAssets:(id)assets
{
  actionsController = [(PUOneUpViewController *)self actionsController];
  v5 = [actionsController canPerformSimpleActionWithActionType:1];

  actionsController2 = [(PUOneUpViewController *)self actionsController];
  v10 = actionsController2;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v8 = [actionsController2 canPerformSimpleActionWithActionType:8];

    actionsController2 = [(PUOneUpViewController *)self actionsController];
    v10 = actionsController2;
    if (v8)
    {
      v7 = 8;
    }

    else
    {
      v9 = [actionsController2 canPerformSimpleActionWithActionType:57];

      actionsController2 = [(PUOneUpViewController *)self actionsController];
      v10 = actionsController2;
      if (v9)
      {
        v7 = 57;
      }

      else
      {
        v7 = 10;
      }
    }
  }

  [actionsController2 performSimpleActionWithActionType:v7];
}

- (void)shareAssets:(id)assets
{
  actionsController = [(PUOneUpViewController *)self actionsController];
  [actionsController performSimpleActionWithActionType:35];
}

- (void)revertAdjustments:(id)adjustments
{
  actionsController = [(PUOneUpViewController *)self actionsController];
  [actionsController performSimpleActionWithActionType:22];
}

- (void)pasteAdjustments:(id)adjustments
{
  actionsController = [(PUOneUpViewController *)self actionsController];
  [actionsController performSimpleActionWithActionType:21];
}

- (void)copyAdjustments:(id)adjustments
{
  actionsController = [(PUOneUpViewController *)self actionsController];
  [actionsController performSimpleActionWithActionType:19];
}

- (void)autoEnhanceAssets:(id)assets
{
  actionsController = [(PUOneUpViewController *)self actionsController];
  [actionsController performSimpleActionWithActionType:17];
}

- (void)rotateAssetsClockwise:(id)clockwise
{
  actionsController = [(PUOneUpViewController *)self actionsController];
  [actionsController performSimpleActionWithActionType:28];
}

- (void)rotateAssetsCounterclockwise:(id)counterclockwise
{
  actionsController = [(PUOneUpViewController *)self actionsController];
  v5 = [actionsController canPerformSimpleActionWithActionType:13];

  actionsController2 = [(PUOneUpViewController *)self actionsController];
  v8 = actionsController2;
  if (v5)
  {
    v7 = 13;
  }

  else
  {
    v7 = 27;
  }

  [actionsController2 performSimpleActionWithActionType:v7];
}

- (void)adjustLocation:(id)location
{
  actionsController = [(PUOneUpViewController *)self actionsController];
  [actionsController performSimpleActionWithActionType:32];
}

- (void)adjustDateTime:(id)time
{
  actionsController = [(PUOneUpViewController *)self actionsController];
  [actionsController performSimpleActionWithActionType:31];
}

- (void)toggleEditor:(id)editor
{
  actionsController = [(PUOneUpViewController *)self actionsController];
  [actionsController performSimpleActionWithActionType:15];
}

- (void)togglePlayback:(id)playback
{
  actionsController = [(PUOneUpViewController *)self actionsController];
  [actionsController togglePlayback];
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  if ([commandCopy action] == sel_toggleViewer_)
  {
    title = [commandCopy title];
    v6 = [title length];

    if (v6)
    {
      goto LABEL_13;
    }
  }

  if ([commandCopy action] != sel_toggleInspector_)
  {
    if ([commandCopy action] == sel_togglePlayback_)
    {
      _currentAssetViewModel = [(PUOneUpViewController *)self _currentAssetViewModel];
      videoPlayer = [_currentAssetViewModel videoPlayer];
      [videoPlayer isPlaybackDesired];
    }

    else
    {
      if ([commandCopy action] != sel_hideAssets_)
      {
        if ([commandCopy action] != sel_addAssetsToLastUsedAlbum_)
        {
          if ([commandCopy action] == sel_favoriteAssets_)
          {
            _currentAssetViewModel2 = [(PUOneUpViewController *)self _currentAssetViewModel];
            asset = [_currentAssetViewModel2 asset];
            isFavorite = [asset isFavorite];

            if (isFavorite)
            {
              v16 = @"heart.slash";
            }

            else
            {
              v16 = @"heart";
            }

            v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:v16];
            [commandCopy setImage:v17];
          }

          else if ([commandCopy action] == sel_rotateAssetsCounterclockwise_)
          {
            actionsController = [(PUOneUpViewController *)self actionsController];
            [actionsController canPerformSimpleActionWithActionType:13];
          }

          else
          {
            if ([commandCopy action] != sel_trashAssetsWithoutConfirmation_)
            {
              goto LABEL_19;
            }

            actionsController2 = [(PUOneUpViewController *)self actionsController];
            [actionsController2 canPerformSimpleActionWithActionType:8];
          }

          goto LABEL_13;
        }

        _currentAssetViewModel3 = [(PUOneUpViewController *)self _currentAssetViewModel];
        asset2 = [_currentAssetViewModel3 asset];

        if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v12 = asset2;
        }

        else
        {
          v12 = 0;
        }

        _currentAssetViewModel = [v12 photoLibrary];

        videoPlayer = [MEMORY[0x1E69C3320] commandTitleWithPhotoLibrary:_currentAssetViewModel];
        [commandCopy setTitle:videoPlayer];
LABEL_17:

        goto LABEL_18;
      }

      _currentAssetViewModel = [(PUOneUpViewController *)self _currentAssetViewModel];
      videoPlayer = [_currentAssetViewModel asset];
      [videoPlayer isHidden];
    }

    v9 = PXLocalizedString();
    [commandCopy setTitle:v9];

    goto LABEL_17;
  }

  [(PUOneUpViewController *)self _isAccessoryVisible];
LABEL_13:
  _currentAssetViewModel = PXLocalizedString();
  [commandCopy setTitle:_currentAssetViewModel];
LABEL_18:

LABEL_19:
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel__arrowKey_ == action)
  {
    browsingSession = [(PUOneUpViewController *)self browsingSession];
    viewModel = [browsingSession viewModel];
    assetViewModelForCurrentAssetReference = [viewModel assetViewModelForCurrentAssetReference];
    isInEditMode = [assetViewModelForCurrentAssetReference isInEditMode];

    if (isInEditMode)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (sel_toggleInspector_ == action)
  {
    if (![(PUOneUpViewController *)self _isAccessoryAvailableForCurrentAsset])
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (sel_togglePlayback_ == action)
  {
    _barsController = [(PUOneUpViewController *)self _barsController];
    allowShowingPlayPauseButton = [_barsController allowShowingPlayPauseButton];
    goto LABEL_30;
  }

  if (sel_toggleEditor_ == action)
  {
    actionsController = [(PUOneUpViewController *)self actionsController];
    _barsController = actionsController;
    v14 = 15;
LABEL_29:
    allowShowingPlayPauseButton = [actionsController canPerformSimpleActionWithActionType:v14];
LABEL_30:
    v15 = allowShowingPlayPauseButton;

    if (v15)
    {
      goto LABEL_31;
    }

LABEL_33:
    v16 = 0;
    goto LABEL_34;
  }

  if (sel_toggleViewer_ == action)
  {
    presentedViewController = [(PUOneUpViewController *)self presentedViewController];

    if (!presentedViewController)
    {
      goto LABEL_31;
    }

    goto LABEL_33;
  }

  if (sel_rotateAssetsCounterclockwise_ == action)
  {
    actionsController2 = [(PUOneUpViewController *)self actionsController];
    v20 = [actionsController2 canPerformSimpleActionWithActionType:13];

    if (v20)
    {
      goto LABEL_31;
    }

    actionsController = [(PUOneUpViewController *)self actionsController];
    _barsController = actionsController;
    v14 = 27;
    goto LABEL_29;
  }

  if (sel_rotateAssetsClockwise_ == action)
  {
    actionsController = [(PUOneUpViewController *)self actionsController];
    _barsController = actionsController;
    v14 = 28;
    goto LABEL_29;
  }

  if (sel_shareAssets_ == action)
  {
    actionsController = [(PUOneUpViewController *)self actionsController];
    _barsController = actionsController;
    v14 = 35;
    goto LABEL_29;
  }

  if (sel_trashAssets_ == action)
  {
    actionsController3 = [(PUOneUpViewController *)self actionsController];
    v22 = [actionsController3 canPerformSimpleActionWithActionType:1];

    if (v22)
    {
      goto LABEL_31;
    }

    actionsController4 = [(PUOneUpViewController *)self actionsController];
    v24 = [actionsController4 canPerformSimpleActionWithActionType:10];

    if (v24)
    {
      goto LABEL_31;
    }

    actionsController5 = [(PUOneUpViewController *)self actionsController];
    v26 = [actionsController5 canPerformSimpleActionWithActionType:8];

    if (v26)
    {
      goto LABEL_31;
    }

    actionsController = [(PUOneUpViewController *)self actionsController];
    _barsController = actionsController;
    v14 = 57;
    goto LABEL_29;
  }

  if (sel_trashAssetsWithoutConfirmation_ == action)
  {
    actionsController6 = [(PUOneUpViewController *)self actionsController];
    v28 = [actionsController6 canPerformSimpleActionWithActionType:9];

    if (v28)
    {
      goto LABEL_31;
    }

    actionsController7 = [(PUOneUpViewController *)self actionsController];
    v30 = [actionsController7 canPerformSimpleActionWithActionType:10];

    if (v30)
    {
      goto LABEL_31;
    }

    actionsController = [(PUOneUpViewController *)self actionsController];
    _barsController = actionsController;
    v14 = 58;
    goto LABEL_29;
  }

  if (sel_hideAssets_ == action)
  {
    actionsController = [(PUOneUpViewController *)self actionsController];
    _barsController = actionsController;
    v14 = 40;
    goto LABEL_29;
  }

  if (sel_favoriteAssets_ == action)
  {
    actionsController = [(PUOneUpViewController *)self actionsController];
    _barsController = actionsController;
    v14 = 44;
    goto LABEL_29;
  }

  if (sel_duplicateAssets_ == action)
  {
    actionsController = [(PUOneUpViewController *)self actionsController];
    _barsController = actionsController;
    v14 = 41;
    goto LABEL_29;
  }

  if (sel_addAssetsToAlbum_ == action)
  {
    actionsController = [(PUOneUpViewController *)self actionsController];
    _barsController = actionsController;
    v14 = 63;
    goto LABEL_29;
  }

  if (sel_addAssetsToLastUsedAlbum_ == action)
  {
    actionsController = [(PUOneUpViewController *)self actionsController];
    _barsController = actionsController;
    v14 = 64;
    goto LABEL_29;
  }

  if (sel_print_ == action)
  {
    actionsController = [(PUOneUpViewController *)self actionsController];
    _barsController = actionsController;
    v14 = 34;
    goto LABEL_29;
  }

  if (sel_copy_ == action)
  {
    actionsController = [(PUOneUpViewController *)self actionsController];
    _barsController = actionsController;
    v14 = 33;
    goto LABEL_29;
  }

  if (sel_copyAdjustments_ == action)
  {
    actionsController = [(PUOneUpViewController *)self actionsController];
    _barsController = actionsController;
    v14 = 19;
    goto LABEL_29;
  }

  if (sel_pasteAdjustments_ == action)
  {
    actionsController = [(PUOneUpViewController *)self actionsController];
    _barsController = actionsController;
    v14 = 21;
    goto LABEL_29;
  }

  if (sel_revertAdjustments_ == action)
  {
    actionsController = [(PUOneUpViewController *)self actionsController];
    _barsController = actionsController;
    v14 = 22;
    goto LABEL_29;
  }

  v31.receiver = self;
  v31.super_class = PUOneUpViewController;
  if (![(PUOneUpViewController *)&v31 canPerformAction:action withSender:senderCopy])
  {
    goto LABEL_33;
  }

LABEL_31:
  v16 = [(PUOneUpViewController *)self appearState]== 2;
LABEL_34:

  return v16;
}

- (void)createMenuActionControllerForManagerIfNeeded:(id)needed withPresentingViewController:(id)controller regionOfInterestProvider:(id)provider
{
  neededCopy = needed;
  controllerCopy = controller;
  providerCopy = provider;
  menuActionController = self->_menuActionController;
  if (!menuActionController)
  {
    v11 = objc_alloc_init(PUMenuActionController);
    v12 = self->_menuActionController;
    self->_menuActionController = v11;

    [(PUMenuActionController *)self->_menuActionController setDelegate:self];
    menuActionController = self->_menuActionController;
  }

  browsingSession = [(PUOneUpViewController *)self browsingSession];
  [(PUMenuActionController *)menuActionController setBrowsingSession:browsingSession];

  [(PUMenuActionController *)self->_menuActionController setPresentingViewController:controllerCopy];
  [(PUMenuActionController *)self->_menuActionController setRegionOfInterestProvider:providerCopy];
  [(PUMenuActionController *)self->_menuActionController setPhotosUICoreActionManager:neededCopy];
  actions = [(PUMenuActionController *)self->_menuActionController actions];
  [(PUOneUpViewController *)self px_setPreviewActionMenus:actions];
}

- (void)setAppearanceTransitionAnimationsDisabled:(BOOL)disabled
{
  if (self->_appearanceTransitionAnimationsDisabled != disabled)
  {
    self->_appearanceTransitionAnimationsDisabled = disabled;
    if (disabled)
    {
      [(PUOneUpViewController *)self _setShouldDisableTransitionsUntilAppeared:1];
    }
  }
}

- (BOOL)oneUpActionsControllerIsDetailsAccessoryAvailable:(id)available
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  currentAssetReference = [viewModel currentAssetReference];

  if (currentAssetReference)
  {
    v7 = [(PUOneUpViewController *)self _isDetailsAccessoryAvailableForAssetReference:currentAssetReference];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)oneUpActionsControllerPrefersInclusionAfterRemoval:(id)removal forActionType:(unint64_t)type
{
  if (type != 44)
  {
    return 0;
  }

  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  currentAssetReference = [viewModel currentAssetReference];

  pxAssetReference = [currentAssetReference pxAssetReference];
  assetCollection = [pxAssetReference assetCollection];

  LOBYTE(pxAssetReference) = [assetCollection px_isFavoritesSmartAlbum];
  return pxAssetReference;
}

- (id)_userTransformTileControllerAtLocationFromProvider:(id)provider
{
  providerCopy = provider;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__47533;
  v15 = __Block_byref_object_dispose__47534;
  v16 = 0;
  _tilingView = [(PUOneUpViewController *)self _tilingView];
  if (_tilingView)
  {
    [providerCopy locationInView:_tilingView];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __76__PUOneUpViewController__userTransformTileControllerAtLocationFromProvider___block_invoke;
    v10[3] = &unk_1E7B79FF8;
    v10[4] = &v11;
    [_tilingView enumeratePresentedTileControllersInRect:v10 usingBlock:{v6 + -1.0, v7 + -1.0, 2.0, 2.0}];
  }

  v8 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v8;
}

void __76__PUOneUpViewController__userTransformTileControllerAtLocationFromProvider___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)oneUpActionsController:(id)controller zoomAtLocationProvider:(id)provider
{
  providerCopy = provider;
  v5 = [(PUOneUpViewController *)self _userTransformTileControllerAtLocationFromProvider:?];
  if ([v5 isZoomedIn])
  {
    [(PUOneUpViewController *)self _handleZoomOutCurrentAsset];
    [v5 zoomOutAnimated:1];
  }

  else
  {
    [v5 zoomInOnLocationFromProvider:providerCopy];
  }
}

- (void)oneUpActionsControllerToggleChromeVisibility:(id)visibility
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  if ([viewModel isChromeVisible] && (objc_msgSend(viewModel, "assetsDataSource"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEmpty"), v5, v6))
  {
    v7 = PLOneUpGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "Ignoring user action to toggle chrome because chrome cannot be hidden while the assets data source is empty.", buf, 2u);
    }
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70__PUOneUpViewController_oneUpActionsControllerToggleChromeVisibility___block_invoke;
    v8[3] = &unk_1E7B80DD0;
    v9 = viewModel;
    [v9 performChanges:v8];
    v7 = v9;
  }
}

uint64_t __70__PUOneUpViewController_oneUpActionsControllerToggleChromeVisibility___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 isChromeVisible] ^ 1;

  return [v1 setChromeVisible:v2 changeReason:1];
}

- (BOOL)oneUpActionsControllerDismissPresentedViewController:(id)controller
{
  _isTipPopoverVisible = [(PUOneUpViewController *)self _isTipPopoverVisible];
  if (_isTipPopoverVisible)
  {
    [(PUOneUpViewController *)self _dismissTipPopoverAnimated:1];
    [(PUOneUpViewController *)self _setHasShownRelevantTip:1];
    [(PUOneUpViewController *)self _invalidateTipPopovers];
    [(PUOneUpViewController *)self _updateTipPopoversIfNeeded];
  }

  return _isTipPopoverVisible;
}

- (int64_t)pu_preferredBarStyle
{
  _barsController = [(PUOneUpViewController *)self _barsController];
  preferredBarStyle = [_barsController preferredBarStyle];

  return preferredBarStyle;
}

- (BOOL)pu_wantsToolbarVisible
{
  _barsController = [(PUOneUpViewController *)self _barsController];
  wantsToolbarVisible = [_barsController wantsToolbarVisible];

  return wantsToolbarVisible;
}

- (BOOL)pu_wantsNavigationBarVisible
{
  _barsController = [(PUOneUpViewController *)self _barsController];
  wantsNavigationBarVisible = [_barsController wantsNavigationBarVisible];

  return wantsNavigationBarVisible;
}

- (BOOL)prefersStatusBarHidden
{
  v6.receiver = self;
  v6.super_class = PUOneUpViewController;
  if (![(PUOneUpViewController *)&v6 prefersStatusBarHidden])
  {
    _barsController = [(PUOneUpViewController *)self _barsController];
    if (([_barsController prefersStatusBarHidden] & 1) == 0)
    {
      chromeViewController = [(PUOneUpViewController *)self chromeViewController];
      [chromeViewController prefersStatusBarHidden];
    }
  }

  return PXShouldHideStatusBarWithCameraWorkaround();
}

- (BOOL)_isLayoutAffectedBySpecChange:(id)change
{
  changeCopy = change;
  if ([changeCopy shouldUseContentGuideInsetsChanged] & 1) != 0 || (objc_msgSend(changeCopy, "shouldUseUserTransformTilesChanged") & 1) != 0 || (objc_msgSend(changeCopy, "shouldDisplayBadgesChanged") & 1) != 0 || (objc_msgSend(changeCopy, "shouldDisplayAssetExplorerReviewScreenBadgesChanged") & 1) != 0 || (objc_msgSend(changeCopy, "shouldDisplayPlayButtonsChanged") & 1) != 0 || (objc_msgSend(changeCopy, "shouldDisplayProgressIndicatorsChanged") & 1) != 0 || (objc_msgSend(changeCopy, "progressIndicatorSizeChanged") & 1) != 0 || (objc_msgSend(changeCopy, "progressIndicatorContentInsetsChanged") & 1) != 0 || (objc_msgSend(changeCopy, "bufferingIndicatorSizeChanged") & 1) != 0 || (objc_msgSend(changeCopy, "renderIndicatorSizeChanged") & 1) != 0 || (objc_msgSend(changeCopy, "canDisplayLoadingIndicatorsChanged") & 1) != 0 || (objc_msgSend(changeCopy, "shouldUseCompactCommentsTitleChanged") & 1) != 0 || (objc_msgSend(changeCopy, "tileInitialContentModeChanged") & 1) != 0 || (objc_msgSend(changeCopy, "traitCollectionChanged") & 1) != 0 || (objc_msgSend(changeCopy, "shouldPinContentToTopChanged"))
  {
    shouldLayoutReviewScreenControlBarVerticallyChanged = 1;
  }

  else
  {
    shouldLayoutReviewScreenControlBarVerticallyChanged = [changeCopy shouldLayoutReviewScreenControlBarVerticallyChanged];
  }

  return shouldLayoutReviewScreenControlBarVerticallyChanged;
}

- (void)viewControllerSpec:(id)spec didChange:(id)change
{
  changeCopy = change;
  if ([changeCopy contentLockingChanged])
  {
    [(PUOneUpViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
  }

  if (([changeCopy shouldPlaceButtonsInNavigationBarChanged] & 1) != 0 || (objc_msgSend(changeCopy, "shouldUseCompactTitleViewChanged") & 1) != 0 || (objc_msgSend(changeCopy, "maximumToolbarHeightChanged") & 1) != 0 || (objc_msgSend(changeCopy, "shouldUseCompactCommentsTitleChanged") & 1) != 0 || (objc_msgSend(changeCopy, "shouldPlaceScrubberInScrubberBarChanged") & 1) != 0 || objc_msgSend(changeCopy, "contentLockingChanged"))
  {
    [(PUOneUpViewController *)self _invalidateBarsControllers];
  }

  if (([changeCopy backgroundColorOverrideChanged] & 1) != 0 || objc_msgSend(changeCopy, "shouldDisplayEmptyPlaceholderChanged"))
  {
    [(PUOneUpViewController *)self _updateBackgroundTileViewController];
  }

  if (([changeCopy shouldLayoutReviewScreenControlBarVerticallyChanged] & 1) != 0 || objc_msgSend(changeCopy, "shouldCounterrotateReviewScreenBarsChanged"))
  {
    [(PUOneUpViewController *)self _updateReviewScreenBars];
  }

  if ([(PUOneUpViewController *)self _isLayoutAffectedBySpecChange:changeCopy])
  {
    [(PUOneUpViewController *)self _invalidateLayout];
  }

  if ([changeCopy hideScrubberWhenShowingAccessoryView])
  {
    [(PUOneUpViewController *)self _invalidateChromeViewController];
  }

  [(PUOneUpViewController *)self _updateIfNeeded];
}

- (id)_syndicationPillView
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  assetsDataSource = [viewModel assetsDataSource];
  currentAssetReference = [viewModel currentAssetReference];
  v7 = [assetsDataSource indexPathForAssetReference:currentAssetReference];
  _tilingView = [(PUOneUpViewController *)self _tilingView];
  v9 = PUTileKindSyndicationAttribution;
  identifier = [assetsDataSource identifier];
  v11 = [_tilingView presentedTileControllerWithIndexPath:v7 kind:v9 dataSourceIdentifier:identifier];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    superview = 0;
    goto LABEL_10;
  }

  pillView = [v11 pillView];
  superview = [pillView superview];
  if (superview)
  {
    window = [pillView window];
    if (window)
    {
      v15 = window;
      isHidden = [pillView isHidden];

      if ((isHidden & 1) == 0)
      {
        superview = pillView;
        goto LABEL_9;
      }
    }

    else
    {
    }

    superview = 0;
  }

LABEL_9:

LABEL_10:

  return superview;
}

- (id)_passthroughViews
{
  navigationController = [(PUOneUpViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];

  navigationController2 = [(PUOneUpViewController *)self navigationController];
  toolbar = [navigationController2 toolbar];

  view = [(PUOneUpViewController *)self view];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
  v9 = v8;
  if (navigationBar)
  {
    [v8 addObject:navigationBar];
  }

  if (toolbar)
  {
    [v9 addObject:toolbar];
  }

  if (view)
  {
    [v9 addObject:view];
  }

  return v9;
}

- (void)tipPopoverDidDismissWithTipID:(id)d
{
  v4 = MEMORY[0x1E69C3748];
  dCopy = d;
  quickCropTipID = [v4 quickCropTipID];
  v7 = [dCopy isEqualToString:quickCropTipID];

  if (v7)
  {
    _cropButtonTileViewControllerForCurrentAsset = [(PUOneUpViewController *)self _cropButtonTileViewControllerForCurrentAsset];
    [_cropButtonTileViewControllerForCurrentAsset setPresentingTip:0];
  }

  tipDismissedCompletion = self->_tipDismissedCompletion;
  if (tipDismissedCompletion)
  {
    tipDismissedCompletion[2]();
    v10 = self->_tipDismissedCompletion;
    self->_tipDismissedCompletion = 0;
  }

  [(PUOneUpBarsController *)self->__barsController setPresentedTipID:0];
  presentedTipID = self->_presentedTipID;
  self->_presentedTipID = 0;
}

- (void)tipPopoverDidPresentWithTipID:(id)d
{
  dCopy = d;
  syndicatedPhotosTipID = [MEMORY[0x1E69C3748] syndicatedPhotosTipID];
  v5 = [dCopy isEqualToString:syndicatedPhotosTipID];

  if (v5)
  {
    [MEMORY[0x1E69C3748] signalSyndicatedPhotosPresented];
  }

  else
  {
    quickCropTipID = [MEMORY[0x1E69C3748] quickCropTipID];
    v7 = [dCopy isEqualToString:quickCropTipID];

    if (v7)
    {
      _cropButtonTileViewControllerForCurrentAsset = [(PUOneUpViewController *)self _cropButtonTileViewControllerForCurrentAsset];
      [_cropButtonTileViewControllerForCurrentAsset setPresentingTip:1];
    }

    else
    {
      cleanUpTipID = [MEMORY[0x1E69C3748] cleanUpTipID];
      v10 = [dCopy isEqualToString:cleanUpTipID];

      if (v10)
      {
        [MEMORY[0x1E69C3748] signalDidCleanUp];
      }
    }
  }
}

- (void)prepareTipPopover:(id)popover tipID:(id)d
{
  v66 = *MEMORY[0x1E69E9840];
  popoverCopy = popover;
  dCopy = d;
  _passthroughViews = [(PUOneUpViewController *)self _passthroughViews];
  [popoverCopy setPassthroughViews:_passthroughViews];

  infoPanelTipID = [MEMORY[0x1E69C3748] infoPanelTipID];
  v10 = [dCopy isEqualToString:infoPanelTipID];

  if (v10)
  {
    _barsController = [(PUOneUpViewController *)self _barsController];
    barButtonItemToggleDetails = [_barsController barButtonItemToggleDetails];

    if (barButtonItemToggleDetails)
    {
      [popoverCopy setBarButtonItem:barButtonItemToggleDetails];
    }

    goto LABEL_12;
  }

  livePhotosTipID = [MEMORY[0x1E69C3748] livePhotosTipID];
  v14 = [dCopy isEqualToString:livePhotosTipID];

  if (v14)
  {
    barButtonItemToggleDetails = [(PUOneUpViewController *)self _livePhotoBadge];
    if (!barButtonItemToggleDetails)
    {
LABEL_12:

      [(PUOneUpBarsController *)self->__barsController setPresentedTipID:dCopy];
      objc_storeStrong(&self->_presentedTipID, d);
      goto LABEL_13;
    }

    [popoverCopy setSourceView:barButtonItemToggleDetails];
    sourceView = [popoverCopy sourceView];
    [barButtonItemToggleDetails frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    superview = [barButtonItemToggleDetails superview];
    [sourceView convertRect:superview fromCoordinateSpace:{v17, v19, v21, v23}];
    [popoverCopy setSourceRect:?];

LABEL_7:
    [popoverCopy setPermittedArrowDirections:1];
    goto LABEL_12;
  }

  syndicatedPhotosTipID = [MEMORY[0x1E69C3748] syndicatedPhotosTipID];
  v26 = [dCopy isEqualToString:syndicatedPhotosTipID];

  if (v26)
  {
    barButtonItemToggleDetails = [(PUOneUpViewController *)self _syndicationPillView];
    if (!barButtonItemToggleDetails)
    {
      goto LABEL_12;
    }

    [popoverCopy setSourceView:barButtonItemToggleDetails];
    sourceView2 = [popoverCopy sourceView];
    [barButtonItemToggleDetails frame];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    superview2 = [barButtonItemToggleDetails superview];
    [sourceView2 convertRect:superview2 fromCoordinateSpace:{v29, v31, v33, v35}];
    [popoverCopy setSourceRect:?];

LABEL_11:
    goto LABEL_12;
  }

  actionsMenuTipID = [MEMORY[0x1E69C3748] actionsMenuTipID];
  v38 = [dCopy isEqualToString:actionsMenuTipID];

  if (v38)
  {
    _barsController2 = [(PUOneUpViewController *)self _barsController];
    barButtonItemToggleDetails = [_barsController2 barButtonItemActionsMenu];

    if (!barButtonItemToggleDetails)
    {
      goto LABEL_12;
    }

    [popoverCopy setBarButtonItem:barButtonItemToggleDetails];
    [popoverCopy popoverLayoutMargins];
    [popoverCopy setPopoverLayoutMargins:?];
    goto LABEL_7;
  }

  quickCropTipID = [MEMORY[0x1E69C3748] quickCropTipID];
  v41 = [dCopy isEqualToString:quickCropTipID];

  if (v41)
  {
    _cropButtonTileViewControllerForCurrentAsset = [(PUOneUpViewController *)self _cropButtonTileViewControllerForCurrentAsset];
    barButtonItemToggleDetails = [_cropButtonTileViewControllerForCurrentAsset cropButton];

    if (barButtonItemToggleDetails)
    {
      [popoverCopy setSourceView:barButtonItemToggleDetails];
      sourceView3 = [popoverCopy sourceView];
      [barButtonItemToggleDetails frame];
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v51 = v50;
      superview3 = [barButtonItemToggleDetails superview];
      [sourceView3 convertRect:superview3 fromCoordinateSpace:{v45, v47, v49, v51}];
      [popoverCopy setSourceRect:?];

      overrideUserInterfaceStyle = [barButtonItemToggleDetails overrideUserInterfaceStyle];
      traitOverrides = [popoverCopy traitOverrides];
      [traitOverrides setUserInterfaceStyle:overrideUserInterfaceStyle];
    }

    goto LABEL_12;
  }

  cleanUpTipID = [MEMORY[0x1E69C3748] cleanUpTipID];
  v56 = [dCopy isEqualToString:cleanUpTipID];

  if (v56)
  {
    _barsController3 = [(PUOneUpViewController *)self _barsController];
    v58 = [_barsController3 sourceItemForActionType:*MEMORY[0x1E69C4690]];

    barButtonItemToggleDetails = v58;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      sourceView2 = barButtonItemToggleDetails;

      if (sourceView2)
      {
        [popoverCopy setBarButtonItem:sourceView2];
      }
    }

    else
    {

      sourceView2 = 0;
    }

    goto LABEL_11;
  }

  v59 = PLOneUpGetLog();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
  {
    v60 = 138543874;
    v61 = objc_opt_class();
    v62 = 2048;
    selfCopy = self;
    v64 = 2112;
    v65 = dCopy;
    _os_log_impl(&dword_1B36F3000, v59, OS_LOG_TYPE_ERROR, "<%{public}@:%p> Invalid tip ID %@", &v60, 0x20u);
  }

LABEL_13:
}

- (id)sourceItemForTipID:(id)d
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  infoPanelTipID = [MEMORY[0x1E69C3748] infoPanelTipID];
  v6 = [dCopy isEqualToString:infoPanelTipID];

  if (v6)
  {
    _barsController = [(PUOneUpViewController *)self _barsController];
    barButtonItemToggleDetails = [_barsController barButtonItemToggleDetails];
LABEL_3:
    v9 = barButtonItemToggleDetails;

    goto LABEL_9;
  }

  livePhotosTipID = [MEMORY[0x1E69C3748] livePhotosTipID];
  v11 = [dCopy isEqualToString:livePhotosTipID];

  if (v11)
  {
    _livePhotoBadge = [(PUOneUpViewController *)self _livePhotoBadge];
LABEL_8:
    v9 = _livePhotoBadge;
    goto LABEL_9;
  }

  syndicatedPhotosTipID = [MEMORY[0x1E69C3748] syndicatedPhotosTipID];
  v14 = [dCopy isEqualToString:syndicatedPhotosTipID];

  if (v14)
  {
    _livePhotoBadge = [(PUOneUpViewController *)self _syndicationPillView];
    goto LABEL_8;
  }

  actionsMenuTipID = [MEMORY[0x1E69C3748] actionsMenuTipID];
  v17 = [dCopy isEqualToString:actionsMenuTipID];

  if (v17)
  {
    _barsController = [(PUOneUpViewController *)self _barsController];
    barButtonItemToggleDetails = [_barsController barButtonItemActionsMenu];
    goto LABEL_3;
  }

  quickCropTipID = [MEMORY[0x1E69C3748] quickCropTipID];
  v19 = [dCopy isEqualToString:quickCropTipID];

  if (v19)
  {
    _barsController = [(PUOneUpViewController *)self _cropButtonTileViewControllerForCurrentAsset];
    barButtonItemToggleDetails = [_barsController cropButton];
    goto LABEL_3;
  }

  cleanUpTipID = [MEMORY[0x1E69C3748] cleanUpTipID];
  if ([dCopy isEqualToString:cleanUpTipID])
  {
    actionsController = [(PUOneUpViewController *)self actionsController];
    v22 = [actionsController canPerformSimpleActionWithActionType:15];

    if (v22)
    {
      _barsController = [(PUOneUpViewController *)self _barsController];
      barButtonItemToggleDetails = [_barsController sourceItemForActionType:*MEMORY[0x1E69C4690]];
      goto LABEL_3;
    }
  }

  else
  {
  }

  v23 = PXAssertGetLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = 138412290;
    v25 = dCopy;
    _os_log_error_impl(&dword_1B36F3000, v23, OS_LOG_TYPE_ERROR, "No source item for tip ID: %@", &v24, 0xCu);
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (id)presentationControllerForTipID:(id)d
{
  v37 = *MEMORY[0x1E69E9840];
  dCopy = d;
  infoPanelTipID = [MEMORY[0x1E69C3748] infoPanelTipID];
  if ([dCopy isEqualToString:infoPanelTipID])
  {
    _barsController = [(PUOneUpViewController *)self _barsController];
    barButtonItemToggleDetails = [_barsController barButtonItemToggleDetails];

    if (barButtonItemToggleDetails)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  livePhotosTipID = [MEMORY[0x1E69C3748] livePhotosTipID];
  v9 = [dCopy isEqualToString:livePhotosTipID];

  if (v9)
  {
    browsingSession = [(PUOneUpViewController *)self browsingSession];
    viewModel = [browsingSession viewModel];

    assetsDataSource = [viewModel assetsDataSource];
    currentAssetReference = [viewModel currentAssetReference];
    v14 = [assetsDataSource indexPathForAssetReference:currentAssetReference];
    _tilingView = [(PUOneUpViewController *)self _tilingView];
    v16 = PUTileKindBadge;
    identifier = [assetsDataSource identifier];
    v18 = [_tilingView presentedTileControllerWithIndexPath:v14 kind:v16 dataSourceIdentifier:identifier];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      view = [v18 view];

      if (view)
      {
        selfCopy3 = self;

        goto LABEL_26;
      }
    }

    goto LABEL_13;
  }

  syndicatedPhotosTipID = [MEMORY[0x1E69C3748] syndicatedPhotosTipID];
  if ([dCopy isEqualToString:syndicatedPhotosTipID])
  {
    _syndicationPillView = [(PUOneUpViewController *)self _syndicationPillView];

    if (_syndicationPillView)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  actionsMenuTipID = [MEMORY[0x1E69C3748] actionsMenuTipID];
  if ([dCopy isEqualToString:actionsMenuTipID])
  {
    _barsController2 = [(PUOneUpViewController *)self _barsController];
    barButtonItemActionsMenu = [_barsController2 barButtonItemActionsMenu];

    if (barButtonItemActionsMenu)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  quickCropTipID = [MEMORY[0x1E69C3748] quickCropTipID];
  if (([dCopy isEqualToString:quickCropTipID] & 1) == 0)
  {

    goto LABEL_23;
  }

  _cropButtonTileViewControllerForCurrentAsset = [(PUOneUpViewController *)self _cropButtonTileViewControllerForCurrentAsset];
  cropButton = [_cropButtonTileViewControllerForCurrentAsset cropButton];

  if (!cropButton)
  {
LABEL_23:
    cleanUpTipID = [MEMORY[0x1E69C3748] cleanUpTipID];
    if ([dCopy isEqualToString:cleanUpTipID])
    {
      actionsController = [(PUOneUpViewController *)self actionsController];
      v31 = [actionsController canPerformSimpleActionWithActionType:15];

      if (v31)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }

    viewModel = PLOneUpGetLog();
    if (os_log_type_enabled(viewModel, OS_LOG_TYPE_ERROR))
    {
      v33 = 138543618;
      v34 = objc_opt_class();
      v35 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1B36F3000, viewModel, OS_LOG_TYPE_ERROR, "<%{public}@:%p> Failed to present tip view controller", &v33, 0x16u);
    }

LABEL_13:

    selfCopy3 = 0;
    goto LABEL_26;
  }

LABEL_25:
  selfCopy3 = self;
LABEL_26:

  return selfCopy3;
}

- (id)_videoPlayerAtIndexPath:(id)path layout:(id)layout
{
  v4 = [(PUOneUpViewController *)self _assetViewModelAtIndexPath:path layout:layout];
  videoPlayer = [v4 videoPlayer];

  return videoPlayer;
}

- (id)_assetViewModelAtIndexPath:(id)path layout:(id)layout
{
  v5 = [(PUOneUpViewController *)self _assetReferenceAtIndexPath:path layout:layout];
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  v8 = [viewModel assetViewModelForAssetReference:v5];

  return v8;
}

- (id)_currentAssetViewModel
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  currentAssetReference = [viewModel currentAssetReference];
  v5 = [viewModel assetViewModelForAssetReference:currentAssetReference];

  return v5;
}

- (id)_assetReferenceAtIndexPath:(id)path layout:(id)layout
{
  pathCopy = path;
  dataSource = [layout dataSource];
  v7 = [dataSource assetReferenceAtIndexPath:pathCopy];

  return v7;
}

- (BOOL)videoTilesCanPlayVideo
{
  if ([(PUOneUpViewController *)self _isPresentedForSecondScreen])
  {
    return 1;
  }

  _secondScreenBrowser = [(PUOneUpViewController *)self _secondScreenBrowser];
  v3 = _secondScreenBrowser == 0;

  return v3;
}

- (void)_updateActiveVideoTilesCanDisplayVideo
{
  v14 = *MEMORY[0x1E69E9840];
  videoTilesCanPlayVideo = [(PUOneUpViewController *)self videoTilesCanPlayVideo];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  activeVideoTileControllers = [(PUOneUpViewController *)self activeVideoTileControllers];
  v5 = [activeVideoTileControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(activeVideoTileControllers);
        }

        [*(*(&v9 + 1) + 8 * v8++) setCanPlayVideo:videoTilesCanPlayVideo];
      }

      while (v6 != v8);
      v6 = [activeVideoTileControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_setSecondScreenBrowser:(id)browser
{
  browserCopy = browser;
  if (self->__secondScreenBrowser != browserCopy)
  {
    v16 = browserCopy;
    objc_storeStrong(&self->__secondScreenBrowser, browser);
    [(PUOneUpViewController *)self _updateActiveVideoTilesCanDisplayVideo];
    _tilingView = [(PUOneUpViewController *)self _tilingView];
    layout = [_tilingView layout];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = layout;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    browsingSession = [(PUOneUpViewController *)self browsingSession];
    viewModel = [browsingSession viewModel];

    assetsDataSource = [viewModel assetsDataSource];
    isEmpty = [assetsDataSource isEmpty];

    if ((isEmpty & 1) == 0)
    {
      currentAssetReference = [viewModel currentAssetReference];
      indexPath = [currentAssetReference indexPath];
      [v9 invalidateVideoPlaceholderForItemAtIndexPath:indexPath];
    }

    [(PUOneUpViewController *)self _invalidateChromeViewController];

    browserCopy = v16;
  }
}

- (double)px_imageModulationIntensity
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  if ([viewModel isPresentedForPreview])
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  return v4;
}

- (double)px_HDRFocus
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__PUOneUpViewController_px_HDRFocus__block_invoke;
  aBlock[3] = &unk_1E7B79FD0;
  aBlock[4] = &v15;
  v3 = _Block_copy(aBlock);
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  [viewModel currentAssetTransitionProgress];
  v7 = v6;
  leadingAssetReference = [viewModel leadingAssetReference];
  v3[2](v3, leadingAssetReference, (0.5 - v7) * 0.666666687);

  currentAssetReference = [viewModel currentAssetReference];
  v10 = fabs(v7);
  v3[2](v3, currentAssetReference, (v10 + v10) / -3.0 + 1.0);

  trailingAssetReference = [viewModel trailingAssetReference];
  v3[2](v3, trailingAssetReference, (v7 + 0.5) * 0.666666687);

  v12 = v16[3];
  _Block_object_dispose(&v15, 8);
  return v12;
}

void __36__PUOneUpViewController_px_HDRFocus__block_invoke(uint64_t a1, void *a2, double a3)
{
  if (a2)
  {
    v5 = MEMORY[0x1E69C35F0];
    v6 = [a2 asset];
    [v5 HDRValueForAsset:v6];
    v8 = v7;

    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 24);
    if (v10 < v8 * a3)
    {
      v10 = v8 * a3;
    }

    *(v9 + 24) = v10;
  }
}

- (id)_currentAccessoryViewController
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  currentAssetReference = [viewModel currentAssetReference];

  _accessoryViewControllersManager = [(PUOneUpViewController *)self _accessoryViewControllersManager];
  v7 = [_accessoryViewControllersManager accessoryViewControllerForAssetReference:currentAssetReference createIfNeeded:0];

  return v7;
}

- (void)_setAccessoryVisible:(BOOL)visible changeReason:(int64_t)reason
{
  visibleCopy = visible;
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  if ([viewModel accessoryViewsDefaultVisibility] != visibleCopy)
  {
    if (visibleCopy)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __59__PUOneUpViewController__setAccessoryVisible_changeReason___block_invoke;
      v15[3] = &unk_1E7B80DD0;
      v16 = viewModel;
      [v16 performChanges:v15];
      if ([(PUOneUpViewController *)self _accessoryContentKindForCurrentAsset]== 1)
      {
        [(PUOneUpViewController *)self _setHasShownRelevantTip:1];
        v9 = MEMORY[0x1E69C3748];
        infoPanelTipID = [MEMORY[0x1E69C3748] infoPanelTipID];
        [v9 setTipActionPerformed:infoPanelTipID];
      }
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59__PUOneUpViewController__setAccessoryVisible_changeReason___block_invoke_2;
    v11[3] = &unk_1E7B7FA58;
    v14 = visibleCopy;
    v12 = viewModel;
    reasonCopy = reason;
    [v12 performChanges:v11];
  }
}

- (BOOL)_isAccessoryVisible
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  LOBYTE(browsingSession) = [viewModel accessoryViewsDefaultVisibility];
  return browsingSession;
}

- (BOOL)_isAccessoryAvailableForCurrentAsset
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  currentAssetReference = [viewModel currentAssetReference];
  asset = [currentAssetReference asset];

  _accessoryViewControllersManager = [(PUOneUpViewController *)self _accessoryViewControllersManager];
  v8 = [_accessoryViewControllersManager accessoryViewTypeForAsset:asset];

  if (v8)
  {
    actionsController = [(PUOneUpViewController *)self actionsController];
    v10 = [actionsController canPerformSimpleActionWithActionType:13] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (int64_t)_accessoryContentKindForAsset:(id)asset
{
  assetCopy = asset;
  _spec = [(PUOneUpViewController *)self _spec];
  allowAccessoryVisibility = [_spec allowAccessoryVisibility];

  if (allowAccessoryVisibility)
  {
    if ([PUCommentsViewController canShowCommentsForAsset:assetCopy])
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
    v7 = 0;
  }

  return v7;
}

- (int64_t)_accessoryContentKindForCurrentAsset
{
  _spec = [(PUOneUpViewController *)self _spec];
  allowAccessoryVisibility = [_spec allowAccessoryVisibility];

  if (!allowAccessoryVisibility)
  {
    return 0;
  }

  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  currentAssetReference = [viewModel currentAssetReference];
  asset = [currentAssetReference asset];

  if ([PUCommentsViewController canShowCommentsForAsset:asset])
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_toggleCommentsVisibility
{
  if ([(PUOneUpViewController *)self _accessoryContentKindForCurrentAsset]== 2)
  {

    [(PUOneUpViewController *)self _toggleAccessoryVisibility];
  }

  else
  {
    v3 = PLOneUpGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "couldn't toggle comments", v4, 2u);
    }
  }
}

- (void)_toggleDetailsVisibility
{
  if ([(PUOneUpViewController *)self _accessoryContentKindForCurrentAsset]== 1)
  {

    [(PUOneUpViewController *)self _toggleAccessoryVisibility];
  }

  else
  {
    v3 = PLOneUpGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "couldn't toggle details", v4, 2u);
    }
  }
}

- (void)_updateAccessoryViewIfNeeded
{
  if (![(PUOneUpViewController *)self _needsUpdateAccessoryView])
  {
    return;
  }

  [(PUOneUpViewController *)self _setNeedsUpdateAccessoryView:0];
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  currentAssetReference = [viewModel currentAssetReference];

  _currentAssetViewModel = [(PUOneUpViewController *)self _currentAssetViewModel];
  if ([(PUOneUpViewController *)self _prefersFloatingInfoPanel])
  {
    if (![_currentAssetViewModel isAccessoryViewVisible])
    {
      [(PUOneUpViewController *)self _dismissFloatingInfoPanelAnimated:1];
      goto LABEL_24;
    }

    indexPath = [currentAssetReference indexPath];
    _tilingView = [(PUOneUpViewController *)self _tilingView];
    layout = [_tilingView layout];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && indexPath)
    {
      [layout invalidateAccessoryForItemAtIndexPath:indexPath withOptions:5];
    }

    [(PUOneUpViewController *)self _presentFloatingInfoPanelAnimated:1];
  }

  else
  {
    [(PUOneUpViewController *)self _dismissFloatingInfoPanelAnimated:1];
    mEMORY[0x1E69C38B0] = [MEMORY[0x1E69C38B0] sharedInstance];
    captionWidgetEnableDirectAttachToMaster = [mEMORY[0x1E69C38B0] captionWidgetEnableDirectAttachToMaster];

    LODWORD(mEMORY[0x1E69C38B0]) = [_currentAssetViewModel isAccessoryViewVisible];
    isLastAccessoryViewVisibilityChangeReasonUserAction = [_currentAssetViewModel isLastAccessoryViewVisibilityChangeReasonUserAction];
    v12 = 5;
    if ((mEMORY[0x1E69C38B0] & captionWidgetEnableDirectAttachToMaster) != 0)
    {
      v12 = 1;
    }

    if (isLastAccessoryViewVisibilityChangeReasonUserAction)
    {
      v13 = v12;
    }

    else
    {
      v13 = 1;
    }

    _spec = [(PUOneUpViewController *)self _spec];
    hideScrubberWhenShowingAccessoryView = [_spec hideScrubberWhenShowingAccessoryView];

    if (hideScrubberWhenShowingAccessoryView)
    {
      [(PUOneUpViewController *)self _invalidateBarsControllers];
    }

    indexPath = [currentAssetReference indexPath];
    _tilingView2 = [(PUOneUpViewController *)self _tilingView];
    layout2 = [_tilingView2 layout];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && indexPath)
    {
      [layout2 invalidateAccessoryForItemAtIndexPath:indexPath withOptions:v13];
    }

    _spec2 = [(PUOneUpViewController *)self _spec];
    hideBadgesWhenShowingAccessoryView = [_spec2 hideBadgesWhenShowingAccessoryView];

    if (hideBadgesWhenShowingAccessoryView)
    {
      [(PUOneUpViewController *)self _invalidateLayout];
    }
  }

LABEL_24:
}

- (void)_updateImageAnalysisInteractionDelegate
{
  currentImageAnalysisInteraction = [(PUOneUpViewController *)self currentImageAnalysisInteraction];
  [currentImageAnalysisInteraction setDelegate:self];
}

- (BOOL)_prefersFloatingInfoPanel
{
  _spec = [(PUOneUpViewController *)self _spec];
  prefersFloatingInfoPanel = [_spec prefersFloatingInfoPanel];

  if ([(PUOneUpViewController *)self _accessoryContentKindForCurrentAsset]== 1)
  {
    return prefersFloatingInfoPanel;
  }

  else
  {
    return 0;
  }
}

- (void)_invalidateInfoPanelLayoutAnimated:(BOOL)animated
{
  animatedCopy = animated;
  currentFloatingInfoPanelAccessoryViewController = [(PUOneUpViewController *)self currentFloatingInfoPanelAccessoryViewController];
  cardPresentationController = [(PUOneUpViewController *)self cardPresentationController];
  isPresenting = [cardPresentationController isPresenting];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && isPresenting)
  {
    v7 = currentFloatingInfoPanelAccessoryViewController;
    composition = [v7 composition];
    v9 = [objc_alloc(MEMORY[0x1E69C3898]) initWithPhotosDetailsUIViewController:v7 widgetComposition:composition];

    cardPresentationController2 = [(PUOneUpViewController *)self cardPresentationController];
    [cardPresentationController2 setLayout:v9 animated:animatedCopy];
  }
}

- (void)_dimFloatingInfoPanelAnimated:(BOOL)animated
{
  animatedCopy = animated;
  cardPresentationController = [(PUOneUpViewController *)self cardPresentationController];
  isPresenting = [cardPresentationController isPresenting];

  if (isPresenting)
  {
    cardPresentationController2 = [(PUOneUpViewController *)self cardPresentationController];
    [cardPresentationController2 dimAnimated:animatedCopy];
  }
}

- (BOOL)isFloatingInfoPanelPresented
{
  cardPresentationController = [(PUOneUpViewController *)self cardPresentationController];
  isPresenting = [cardPresentationController isPresenting];

  return isPresenting;
}

- (void)_dismissFloatingInfoPanelAnimated:(BOOL)animated
{
  animatedCopy = animated;
  cardPresentationController = [(PUOneUpViewController *)self cardPresentationController];
  isPresenting = [cardPresentationController isPresenting];

  if (isPresenting)
  {
    [(PUOneUpViewController *)self setCurrentFloatingInfoPanelAccessoryViewController:0];
    [(PUOneUpViewController *)self setUuidOfAssetPresentedInFloatingInfoPanel:0];
    cardPresentationController2 = [(PUOneUpViewController *)self cardPresentationController];
    [cardPresentationController2 dismissAnimated:animatedCopy];
  }
}

- (void)_presentFloatingInfoPanelAnimated:(BOOL)animated
{
  animatedCopy = animated;
  mEMORY[0x1E69C3738] = [MEMORY[0x1E69C3738] sharedInstance];
  if (([mEMORY[0x1E69C3738] hideFloatingInfoPanel] & 1) == 0)
  {
    cardPresentationController = [(PUOneUpViewController *)self cardPresentationController];
    isPresenting = [cardPresentationController isPresenting];

    if (isPresenting)
    {
      return;
    }

    browsingSession = [(PUOneUpViewController *)self browsingSession];
    viewModel = [browsingSession viewModel];
    mEMORY[0x1E69C3738] = [viewModel currentAssetReference];

    _accessoryViewControllersManager = [(PUOneUpViewController *)self _accessoryViewControllersManager];
    v10 = [_accessoryViewControllersManager createAccessoryViewControllerForAssetReference:mEMORY[0x1E69C3738]];

    if (v10)
    {
      [v10 setContentInsets:1 changeReason:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
      [(PUOneUpViewController *)self setCurrentFloatingInfoPanelAccessoryViewController:v10];
      asset = [mEMORY[0x1E69C3738] asset];
      uuid = [asset uuid];
      [(PUOneUpViewController *)self setUuidOfAssetPresentedInFloatingInfoPanel:uuid];

      cardPresentationController2 = [(PUOneUpViewController *)self cardPresentationController];
      [cardPresentationController2 presentViewController:v10 animated:animatedCopy];
    }
  }
}

- (void)_updateFloatingInfoPanel
{
  [(PUOneUpViewController *)self _dismissFloatingInfoPanelAnimated:0];
  [(PUOneUpViewController *)self _presentFloatingInfoPanelAnimated:0];

  [(PUOneUpViewController *)self _invalidateInfoPanelLayoutAnimated:1];
}

- (void)_updateFloatingInfoPanelIfNeeded
{
  if ([(PUOneUpViewController *)self isFloatingInfoPanelPresented])
  {
    browsingSession = [(PUOneUpViewController *)self browsingSession];
    viewModel = [browsingSession viewModel];
    currentAssetReference = [viewModel currentAssetReference];
    asset = [currentAssetReference asset];
    uuid = [asset uuid];

    uuidOfAssetPresentedInFloatingInfoPanel = [(PUOneUpViewController *)self uuidOfAssetPresentedInFloatingInfoPanel];
    v8 = uuidOfAssetPresentedInFloatingInfoPanel;
    if (uuidOfAssetPresentedInFloatingInfoPanel == uuid)
    {
    }

    else
    {
      v9 = [uuidOfAssetPresentedInFloatingInfoPanel isEqualToString:?];

      if ((v9 & 1) == 0)
      {
        [(PUOneUpViewController *)self _updateFloatingInfoPanel];
      }
    }
  }
}

- (BOOL)_isCameraDetailsAccessory
{
  presentationOrigin = [(PUOneUpViewController *)self presentationOrigin];
  _accessoryContentKindForCurrentAsset = [(PUOneUpViewController *)self _accessoryContentKindForCurrentAsset];
  return presentationOrigin == 37 && _accessoryContentKindForCurrentAsset == 1;
}

- (BOOL)wantsActionsMenu
{
  if (!self->_wantsActionsMenu)
  {
    mEMORY[0x1E69C3490] = [MEMORY[0x1E69C3490] sharedInstance];
    actionsMenuLocation = [mEMORY[0x1E69C3490] actionsMenuLocation];
    v6 = actionsMenuLocation == 1;
    traitCollection = [(PUOneUpViewController *)self traitCollection];
    if ([traitCollection userInterfaceIdiom] == 1)
    {
      enableActionsMenuOnPad = [mEMORY[0x1E69C3490] enableActionsMenuOnPad];
    }

    else
    {
      enableActionsMenuOnPad = 0;
    }

    traitCollection2 = [(PUOneUpViewController *)self traitCollection];
    if ([traitCollection2 userInterfaceIdiom])
    {
      enableActionsMenuOnPhone = 0;
    }

    else
    {
      enableActionsMenuOnPhone = [mEMORY[0x1E69C3490] enableActionsMenuOnPhone];
    }

    browsingSession = [(PUOneUpViewController *)self browsingSession];
    viewModel = [browsingSession viewModel];
    currentAssetReference = [viewModel currentAssetReference];
    assetCollection = [currentAssetReference assetCollection];

    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v14 = assetCollection;

      if (actionsMenuLocation == 1 && v14)
      {
        if ([v14 px_isRecentlyDeletedSmartAlbum])
        {
LABEL_25:

          return self->_wantsActionsMenu;
        }

        v6 = [v14 px_isRecoveredSmartAlbum] ^ 1;
      }
    }

    else
    {

      v14 = 0;
    }

    if (v6 && ((enableActionsMenuOnPad | enableActionsMenuOnPhone) & 1) != 0)
    {
      _options = [(PUOneUpViewController *)self _options];
      v17 = ([(PUOneUpViewController *)self _options]& 8) == 0 && _options != 0x20000;
      self->_wantsActionsMenu = v17;
    }

    goto LABEL_25;
  }

  return 1;
}

- (void)_toggleAccessoryVisibility
{
  v3 = [(PUOneUpViewController *)self _isAccessoryVisible]^ 1;

  [(PUOneUpViewController *)self _setAccessoryVisible:v3];
}

- (void)_presentAlertForUnplayableAssetReference:(id)reference
{
  referenceCopy = reference;
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  _options = [(PUOneUpViewController *)self _options];
  asset = [referenceCopy asset];
  mediaType = [asset mediaType];

  if ((_options & 2) == 0 && mediaType == 2 && ([viewModel isPresentedForPreview] & 1) == 0)
  {
    currentAssetReference = [viewModel currentAssetReference];
    if ([currentAssetReference isEqual:referenceCopy])
    {
      v11 = [viewModel assetViewModelForAssetReference:referenceCopy];
      videoPlayer = [v11 videoPlayer];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __66__PUOneUpViewController__presentAlertForUnplayableAssetReference___block_invoke;
      v21[3] = &unk_1E7B80DD0;
      v22 = v11;
      v13 = v11;
      [videoPlayer performChanges:v21];

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __66__PUOneUpViewController__presentAlertForUnplayableAssetReference___block_invoke_2;
      v19[3] = &unk_1E7B80DD0;
      v20 = viewModel;
      [v20 performChanges:v19];
      objc_initWeak(&location, self);
      v14 = dispatch_time(0, 400000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __66__PUOneUpViewController__presentAlertForUnplayableAssetReference___block_invoke_3;
      block[3] = &unk_1E7B80610;
      v16 = referenceCopy;
      objc_copyWeak(&v17, &location);
      dispatch_after(v14, MEMORY[0x1E69E96A0], block);
      objc_destroyWeak(&v17);

      objc_destroyWeak(&location);
    }
  }
}

void __66__PUOneUpViewController__presentAlertForUnplayableAssetReference___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) videoPlayer];
  [v1 setDesiredPlayState:1 reason:@"Pausing to display alert for unplayable asset"];
}

void __66__PUOneUpViewController__presentAlertForUnplayableAssetReference___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x1E69C3370];
  v3 = [*(a1 + 32) asset];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__PUOneUpViewController__presentAlertForUnplayableAssetReference___block_invoke_4;
  v4[3] = &unk_1E7B79FA8;
  objc_copyWeak(&v5, (a1 + 40));
  [v2 presentAlertForAsset:v3 type:1 alertControllerPresenter:v4 completionHandler:0];

  objc_destroyWeak(&v5);
}

uint64_t __66__PUOneUpViewController__presentAlertForUnplayableAssetReference___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentViewController:v3 animated:1 completion:0];

  return 1;
}

- (void)_beginVKSubjectAnalyzingWithGestureRecognizer:(id)recognizer beginID:(unint64_t)d
{
  recognizerCopy = recognizer;
  v7 = +[PUOneUpSettings sharedInstance];
  allowsVisualIntelligenceRemoveBackground = [v7 allowsVisualIntelligenceRemoveBackground];

  if (allowsVisualIntelligenceRemoveBackground)
  {
    objc_initWeak(&location, self);
    objc_initWeak(&from, recognizerCopy);
    v9 = dispatch_time(0, 150000000);
    v10 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__PUOneUpViewController__beginVKSubjectAnalyzingWithGestureRecognizer_beginID___block_invoke;
    block[3] = &unk_1E7B79F80;
    objc_copyWeak(&v12, &location);
    v13[1] = d;
    objc_copyWeak(v13, &from);
    dispatch_after(v9, v10, block);

    objc_destroyWeak(v13);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __79__PUOneUpViewController__beginVKSubjectAnalyzingWithGestureRecognizer_beginID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained touchingGestureRecognizerStateBeginID] == *(a1 + 48))
  {
    v2 = objc_loadWeakRetained((a1 + 40));
    v3 = [v2 state];

    if (v3 != 1)
    {
      return;
    }

    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 _informVKCOverlayToKickOffSubjectAnalyzing];

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _dismissAnyPresentedTip];
  }
}

- (void)_handleTouchGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] == 1)
  {
    [(PUOneUpViewController *)self _updateViewModelWithCurrentScrollPosition];
    [(PUOneUpViewController *)self setTouchingGestureRecognizerStateBeginID:[(PUOneUpViewController *)self touchingGestureRecognizerStateBeginID]+ 1];
    [(PUOneUpViewController *)self _beginVKSubjectAnalyzingWithGestureRecognizer:gestureCopy beginID:[(PUOneUpViewController *)self touchingGestureRecognizerStateBeginID]];
  }
}

- (BOOL)_isLocationFromProviderOverInteractiveItemExcludingImageSubject:(id)subject
{
  subjectCopy = subject;
  currentImageAnalysisInteraction = [(PUOneUpViewController *)self currentImageAnalysisInteraction];
  if ([currentImageAnalysisInteraction textExistsAtLocation:subjectCopy] & 1) != 0 || (objc_msgSend(currentImageAnalysisInteraction, "dataDetectorExistsAtLocation:", subjectCopy))
  {
    v6 = 1;
  }

  else
  {
    v6 = [currentImageAnalysisInteraction actionInfoItemExistsAtLocation:subjectCopy];
  }

  return v6;
}

- (BOOL)_isLocationFromProviderOverImageSubject:(id)subject
{
  subjectCopy = subject;
  currentImageAnalysisInteraction = [(PUOneUpViewController *)self currentImageAnalysisInteraction];
  v6 = [currentImageAnalysisInteraction imageSubjectExistsAtLocation:subjectCopy];

  return v6;
}

- (BOOL)_isLocationFromProviderOverVisualSearch:(id)search
{
  searchCopy = search;
  currentImageAnalysisInteraction = [(PUOneUpViewController *)self currentImageAnalysisInteraction];
  v6 = [currentImageAnalysisInteraction visualSearchExistsAtLocation:searchCopy];

  return v6;
}

- (BOOL)_vkImageOverlayAllowsVKCToHandleLongPressGestureFromProvider:(id)provider
{
  providerCopy = provider;
  currentImageAnalysisInteraction = [(PUOneUpViewController *)self currentImageAnalysisInteraction];
  hostView = [currentImageAnalysisInteraction hostView];
  if (hostView)
  {
    if ([currentImageAnalysisInteraction isVisualIntelligenceOverlayInitialized])
    {
      [providerCopy locationInView:hostView];
      v8 = v7;
      v10 = v9;
      if ([currentImageAnalysisInteraction imageInteractionHasAnalysisAndSubjectLiftingEnabled])
      {
        assetViewModel = [currentImageAnalysisInteraction assetViewModel];
        hasVisualAnalysisFailed = [assetViewModel hasVisualAnalysisFailed];

        if ((hasVisualAnalysisFailed & 1) == 0)
        {
          if (([currentImageAnalysisInteraction isImageSubjectAnalyzingFinished] & 1) == 0 && (objc_msgSend(currentImageAnalysisInteraction, "isImageSubjectAnalysisAvailable") & 1) == 0)
          {
            [hostView bounds];
            v16.x = v8;
            v16.y = v10;
            v13 = CGRectContainsPoint(v17, v16);
            goto LABEL_12;
          }

          if ([currentImageAnalysisInteraction isImageSubjectAnalysisAvailable])
          {
            v13 = [currentImageAnalysisInteraction imageSubjectExistsAtLocation:providerCopy];
LABEL_12:
            v14 = v13;
            goto LABEL_10;
          }
        }
      }
    }
  }

  v14 = 0;
LABEL_10:

  return v14;
}

- (BOOL)_isVisualImageHasSubjectLiftedFromProvider:(id)provider
{
  currentImageAnalysisInteraction = [(PUOneUpViewController *)self currentImageAnalysisInteraction];
  subjectHighlightActive = [currentImageAnalysisInteraction subjectHighlightActive];

  return subjectHighlightActive;
}

- (BOOL)_visualImageHasActiveTextSelectionFromProvider:(id)provider
{
  currentImageAnalysisInteraction = [(PUOneUpViewController *)self currentImageAnalysisInteraction];
  hasActiveTextSelection = [currentImageAnalysisInteraction hasActiveTextSelection];

  return hasActiveTextSelection;
}

- (BOOL)_isLocationFromProviderOverActionInfoItem:(id)item
{
  itemCopy = item;
  currentImageAnalysisInteraction = [(PUOneUpViewController *)self currentImageAnalysisInteraction];
  v6 = [currentImageAnalysisInteraction actionInfoItemExistsAtLocation:itemCopy];

  return v6;
}

- (BOOL)_isLocationFromProviderOverInteractiveItem:(id)item
{
  itemCopy = item;
  currentImageAnalysisInteraction = [(PUOneUpViewController *)self currentImageAnalysisInteraction];
  v6 = [currentImageAnalysisInteraction interactiveItemExistsAtLocation:itemCopy];

  return v6;
}

- (id)currentImageAnalysisInteraction
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  imageAnalysisInteraction = [viewModel imageAnalysisInteraction];

  return imageAnalysisInteraction;
}

- (BOOL)_isLocationFromProvider:(id)provider overTileOfKind:(id)kind insetBy:(UIEdgeInsets)by
{
  providerCopy = provider;
  kindCopy = kind;
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  assetsDataSource = [viewModel assetsDataSource];
  currentAssetReference = [viewModel currentAssetReference];
  v13 = [assetsDataSource indexPathForAssetReference:currentAssetReference];
  _tilingView = [(PUOneUpViewController *)self _tilingView];
  identifier = [assetsDataSource identifier];
  v16 = [_tilingView presentedTileControllerWithIndexPath:v13 kind:kindCopy dataSourceIdentifier:identifier];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    view = [v16 view];
    if (view)
    {
      [providerCopy locationInView:view];
      v19 = v18;
      v21 = v20;
      v22 = [view hitTest:0 withEvent:?];
      if (v22)
      {
        if (PXEdgeInsetsIsZero())
        {
          v23 = 1;
        }

        else
        {
          [view bounds];
          PXEdgeInsetsInsetRect();
          v25.x = v19;
          v25.y = v21;
          v23 = CGRectContainsPoint(v26, v25);
        }
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (BOOL)_isLocationFromProviderOverControl:(id)control
{
  controlCopy = control;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  _tilingView = [(PUOneUpViewController *)self _tilingView];
  [controlCopy locationInView:_tilingView];
  v7 = v6 + -0.5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__PUOneUpViewController__isLocationFromProviderOverControl___block_invoke;
  v13[3] = &unk_1E7B79F58;
  v9 = v8 + -0.5;
  v16 = v6;
  v17 = v8;
  v10 = _tilingView;
  v14 = v10;
  v15 = &v18;
  [v10 enumeratePresentedTileControllersInRect:v13 usingBlock:{v7, v9, 1.0, 1.0}];
  v11 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return v11;
}

uint64_t __60__PUOneUpViewController__isLocationFromProviderOverControl___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = v12;
  if ((isKindOfClass & 1) == 0)
  {
    v8 = [v12 view];
    [v8 convertPoint:*(a1 + 32) fromView:{*(a1 + 48), *(a1 + 56)}];
    v9 = [v8 hitTest:0 withEvent:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }

    else if (v9 && v9 != v8)
    {
      v10 = [v12 reuseIdentifier];
      if (([v10 isEqualToString:@"PUProgressIndicatorTileReuseIdentifier"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"PUSyndicationAttributionTileReuseIdentifier"))
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        *a4 = 1;
      }
    }

    v7 = v12;
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass, v7);
}

- (BOOL)_isLocationFromProviderInAccessoryArea:(id)area
{
  areaCopy = area;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  _tilingView = [(PUOneUpViewController *)self _tilingView];
  [areaCopy locationInView:_tilingView];
  v7 = v6 + -0.5;
  v9 = v8 + -0.5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__PUOneUpViewController__isLocationFromProviderInAccessoryArea___block_invoke;
  v13[3] = &unk_1E7B7DD60;
  v15 = &v16;
  v10 = areaCopy;
  v14 = v10;
  [_tilingView enumeratePresentedTileControllersInRect:v13 usingBlock:{v7, v9, 1.0, 1.0}];
  v11 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v11;
}

uint64_t __64__PUOneUpViewController__isLocationFromProviderInAccessoryArea___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v13 = a2;
  v7 = [a3 tileKind];
  v8 = [v7 isEqualToString:@"PUTileKindItemContent"];

  if (v8)
  {
    v10 = 0;
    v11 = v13;
LABEL_3:
    *(*(*(a1 + 40) + 8) + 24) = v10;
    *a4 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v11 = v13;
  if (isKindOfClass)
  {
    isKindOfClass = [v13 isLocationFromProviderInContentArea:*(a1 + 32)];
    v11 = v13;
    if (isKindOfClass)
    {
      v10 = 1;
      goto LABEL_3;
    }
  }

LABEL_7:

  return MEMORY[0x1EEE66BB8](isKindOfClass, v11);
}

- (BOOL)_shouldMakeChromeVisibleWhenVideoPlayerPlaysToEndTime:(id)time
{
  timeCopy = time;
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  currentAssetReference = [viewModel currentAssetReference];
  v8 = [viewModel assetViewModelForAssetReference:currentAssetReference];
  videoPlayer = [v8 videoPlayer];

  if (videoPlayer == timeCopy && [viewModel lastChromeVisibilityChangeReason] == 4)
  {
    lastChromeVisibilityChangeContext = [viewModel lastChromeVisibilityChangeContext];
    v11 = [lastChromeVisibilityChangeContext isEqual:currentAssetReference];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_keyboardWillShow:(id)show
{
  rect_8 = show;
  currentFloatingInfoPanelAccessoryViewController = [(PUOneUpViewController *)self currentFloatingInfoPanelAccessoryViewController];
  if (objc_opt_respondsToSelector())
  {
    view = [(PUOneUpViewController *)self view];
    userInfo = [rect_8 userInfo];
    v7 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];
    [v7 CGRectValue];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    window = [view window];
    [view convertRect:window fromView:{v9, v11, v13, v15}];
    rect = v17;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    [view safeAreaInsets];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    [view bounds];
    MaxY = CGRectGetMaxY(v38);
    v39.origin.x = rect;
    v39.origin.y = v19;
    v39.size.width = v21;
    v39.size.height = v23;
    v33 = MaxY - CGRectGetMinY(v39);
    if (v29 >= v33)
    {
      v34 = v29;
    }

    else
    {
      v34 = v33;
    }

    [currentFloatingInfoPanelAccessoryViewController setMaxVisibleContentInsetsWhenInEdit:{v25, v27, v34, v31, *&rect}];
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)playerCurrentTimeForActionPerformer:(SEL)performer
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  videoPlayer = [viewModel videoPlayer];
  v7 = videoPlayer;
  if (videoPlayer)
  {
    [videoPlayer currentTime];
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (id)presentationEnvironmentForActionPerformer:(id)performer
{
  performerCopy = performer;
  _barsController = [(PUOneUpViewController *)self _barsController];
  actionType = [performerCopy actionType];

  v7 = [_barsController sourceItemForActionType:actionType];

  if (v7)
  {
    [MEMORY[0x1E69C4608] popoverPresenterWithViewController:self sourceItem:v7];
  }

  else
  {
    [MEMORY[0x1E69C4608] defaultPresenterWithViewController:self];
  }
  v8 = ;

  return v8;
}

- (int64_t)_insetModeForAsset:(id)asset
{
  assetCopy = asset;
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  isPresentedForPreview = [viewModel isPresentedForPreview];

  if ((isPresentedForPreview & 1) != 0 || ![MEMORY[0x1E69C3640] isOneUpRefreshEnabled])
  {
    v9 = 0;
    goto LABEL_26;
  }

  if (assetCopy)
  {
    v8 = ([assetCopy mediaSubtypes] & 0x80004) != 0;
  }

  else
  {
    v8 = 0;
  }

  traitCollection = [(PUOneUpViewController *)self traitCollection];
  if ([traitCollection verticalSizeClass] == 2)
  {
    traitCollection2 = [(PUOneUpViewController *)self traitCollection];
    horizontalSizeClass = [traitCollection2 horizontalSizeClass];
    v13 = horizontalSizeClass == 2;

    if (!v8)
    {
      if (horizontalSizeClass == 2)
      {
        mEMORY[0x1E69C3640] = [MEMORY[0x1E69C3640] sharedInstance];
        regularSizeClassInsetMode = [mEMORY[0x1E69C3640] regularSizeClassInsetMode];
        v13 = 1;
        goto LABEL_15;
      }

      goto LABEL_14;
    }

LABEL_13:
    mEMORY[0x1E69C3640] = [MEMORY[0x1E69C3640] sharedInstance];
    regularSizeClassInsetMode = [mEMORY[0x1E69C3640] screenshotInsetMode];
    goto LABEL_15;
  }

  if (v8)
  {
    v13 = 0;
    goto LABEL_13;
  }

LABEL_14:
  mEMORY[0x1E69C3640] = [MEMORY[0x1E69C3640] sharedInstance];
  regularSizeClassInsetMode = [mEMORY[0x1E69C3640] insetMode];
  v13 = 0;
LABEL_15:

  mEMORY[0x1E69C3CA8] = [MEMORY[0x1E69C3CA8] sharedInstance];
  if (![mEMORY[0x1E69C3CA8] shouldWorkAround139627593] || v13)
  {
  }

  else
  {
    _isZoomedIn = [(PUOneUpViewController *)self _isZoomedIn];

    if (_isZoomedIn)
    {
      regularSizeClassInsetMode = 0;
    }
  }

  v18 = 1;
  if (regularSizeClassInsetMode == 1)
  {
    v18 = 2;
  }

  if (regularSizeClassInsetMode)
  {
    v9 = v18;
  }

  else
  {
    v9 = 0;
  }

LABEL_26:

  return v9;
}

- (BOOL)_isZoomedIn
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  currentAssetReference = [viewModel currentAssetReference];
  v5 = [viewModel assetViewModelForAssetReference:currentAssetReference];
  isZoomedIn = [v5 isZoomedIn];

  return isZoomedIn;
}

- (void)_handleZoomOutCurrentAsset
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  if (-[PUOneUpViewController wasChromeVisibleBeforeZoomIn](self, "wasChromeVisibleBeforeZoomIn") && ([viewModel isChromeVisible] & 1) == 0)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __51__PUOneUpViewController__handleZoomOutCurrentAsset__block_invoke;
    v5[3] = &unk_1E7B80DD0;
    v6 = viewModel;
    [v6 performChanges:v5];
  }
}

- (id)browsingTileViewAnimator
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  tileAnimator = [browsingSession tileAnimator];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = tileAnimator;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_livePhotoBadge
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  assetsDataSource = [viewModel assetsDataSource];
  currentAssetReference = [viewModel currentAssetReference];
  v7 = [assetsDataSource indexPathForAssetReference:currentAssetReference];
  _tilingView = [(PUOneUpViewController *)self _tilingView];
  v9 = PUTileKindBadge;
  identifier = [assetsDataSource identifier];
  v11 = [_tilingView presentedTileControllerWithIndexPath:v7 kind:v9 dataSourceIdentifier:identifier];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    livePhotoBadgeContainerView = [v11 livePhotoBadgeContainerView];
  }

  else
  {
    livePhotoBadgeContainerView = 0;
  }

  return livePhotoBadgeContainerView;
}

- (PXAssetActionManager)assetActionManager
{
  assetActionManager = self->_assetActionManager;
  if (!assetActionManager)
  {
    browsingSession = [(PUOneUpViewController *)self browsingSession];
    dataSourceManager = [browsingSession dataSourceManager];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    dataSourceManager2 = [browsingSession dataSourceManager];
    if (isKindOfClass & 1) != 0 || (objc_opt_class(), v8 = objc_opt_isKindOfClass(), dataSourceManager2, [browsingSession dataSourceManager], dataSourceManager2 = objc_claimAutoreleasedReturnValue(), (v8))
    {
      photosDataSource = [dataSourceManager2 photosDataSource];
    }

    else
    {
      objc_opt_class();
      v26 = objc_opt_isKindOfClass();

      if ((v26 & 1) == 0)
      {
        goto LABEL_17;
      }

      dataSourceManager2 = [browsingSession dataSourceManager];
      dataSourceManagers = [dataSourceManager2 dataSourceManagers];
      firstObject = [dataSourceManagers firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        photosDataSource = [firstObject photosDataSource];
      }

      else
      {
        photosDataSource = 0;
      }
    }

    if (photosDataSource)
    {
      v10 = [objc_alloc(MEMORY[0x1E69C37D8]) initWithPhotosDataSource:photosDataSource];
      viewModel = [browsingSession viewModel];
      currentAssetReference = [viewModel currentAssetReference];
      indexPath = [currentAssetReference indexPath];
      section = [indexPath section];
      if (section >= [photosDataSource numberOfSections])
      {
        v22 = 0;
LABEL_29:

        goto LABEL_30;
      }

      v37 = viewModel;
      v38 = v10;
      indexPath2 = [currentAssetReference indexPath];
      item = [indexPath2 item];
      indexPath3 = [currentAssetReference indexPath];
      v18 = [photosDataSource numberOfItemsInSection:{objc_msgSend(indexPath3, "section")}];

      if (item < v18)
      {
        indexPath4 = [currentAssetReference indexPath];
        indexPath = [photosDataSource assetReferenceAtIndexPath:indexPath4];

        wantsSpotlightStyling = [(PUOneUpViewController *)self wantsSpotlightStyling];
        v21 = 0x1E69C37C0;
        if (!wantsSpotlightStyling)
        {
          v21 = 0x1E69C3798;
        }

        v22 = [objc_alloc(*v21) initWithSelectedObjectReference:indexPath dataSourceManager:v38];
        browsingSession2 = [(PUOneUpViewController *)self browsingSession];
        actionManager = [browsingSession2 actionManager];

        if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v25 = actionManager;
        }

        else
        {
          v25 = 0;
        }

        underlyingActionManager = [v25 underlyingActionManager];
        objc_opt_class();
        v32 = objc_opt_isKindOfClass();

        if (v32)
        {
          underlyingActionManager2 = [v25 underlyingActionManager];
          [v22 setAdditionalPropertiesFromActionManager:underlyingActionManager2];
        }

        viewModel = v37;
        v10 = v38;
        goto LABEL_29;
      }

      v22 = 0;
      viewModel = v37;
      v10 = v38;
LABEL_30:

LABEL_31:
      goto LABEL_32;
    }

LABEL_17:
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      photosDataSource = 0;
      v22 = 0;
LABEL_32:
      [v22 setPerformerDelegate:self];
      v34 = self->_assetActionManager;
      self->_assetActionManager = v22;
      v35 = v22;

      assetActionManager = self->_assetActionManager;
      goto LABEL_33;
    }

    v10 = browsingSession;
    viewModel2 = [v10 viewModel];
    currentAssetReference2 = [viewModel2 currentAssetReference];
    currentAssetReference = [currentAssetReference2 asset];

    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      viewModel = currentAssetReference;

      if (!viewModel)
      {
        photosDataSource = 0;
        v22 = 0;
        goto LABEL_31;
      }

      currentAssetReference = [v10 importController];
      v22 = PXCreateImportAssetActionManager();
      photosDataSource = 0;
    }

    else
    {
      viewModel = 0;
      photosDataSource = 0;
      v22 = 0;
    }

    goto LABEL_30;
  }

LABEL_33:

  return assetActionManager;
}

- (void)_browsingVideoPlayerDidPlayToEndTime:(id)time
{
  object = [time object];
  if ([(PUOneUpViewController *)self _shouldMakeChromeVisibleWhenVideoPlayerPlaysToEndTime:object])
  {
    browsingSession = [(PUOneUpViewController *)self browsingSession];
    viewModel = [browsingSession viewModel];

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__PUOneUpViewController__browsingVideoPlayerDidPlayToEndTime___block_invoke;
    v8[3] = &unk_1E7B80DD0;
    v9 = viewModel;
    v7 = viewModel;
    [v7 performChanges:v8];
  }
}

- (void)_abandonTileController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [controllerCopy setDelegate:0];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = controllerCopy;
    [v4 setDelegate:0];
    [v4 setPresentingDelegate:0];
    [v4 setBrowsingViewModel:0];

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    activeVideoTileControllers = [(PUOneUpViewController *)self activeVideoTileControllers];
    [activeVideoTileControllers removeObject:controllerCopy];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_6;
      }

      [controllerCopy setPresentingDelegate:0];
    }
  }

  [controllerCopy setBrowsingViewModel:0];
LABEL_6:
}

- (void)_configureAdoptedTileController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = controllerCopy;
    [v7 setDelegate:self];
    _enablePockets = [(PUOneUpViewController *)self _enablePockets];
    userTransformView = [v7 userTransformView];

    [userTransformView setScrollPocketsEnabled:_enablePockets];
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = controllerCopy;
    [v10 setDelegate:self];
    v11 = v10;
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = controllerCopy;
      activeVideoTileControllers = [(PUOneUpViewController *)self activeVideoTileControllers];
      [activeVideoTileControllers addObject:v10];

      [v10 setCanPlayVideo:{-[PUOneUpViewController videoTilesCanPlayVideo](self, "videoTilesCanPlayVideo")}];
      [v10 setIsOnSecondScreen:{-[PUOneUpViewController _isPresentedForSecondScreen](self, "_isPresentedForSecondScreen")}];
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = controllerCopy;
      goto LABEL_16;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_4;
    }

    v11 = controllerCopy;
    v10 = v11;
LABEL_15:
    [v11 setPresentingDelegate:self];
LABEL_16:
    browsingSession = [(PUOneUpViewController *)self browsingSession];
    viewModel = [browsingSession viewModel];
    [v10 setBrowsingViewModel:viewModel];

    goto LABEL_4;
  }

LABEL_3:
  [controllerCopy setDelegate:self];
LABEL_4:
  _isPresentedForSecondScreen = [(PUOneUpViewController *)self _isPresentedForSecondScreen];
  v15 = controllerCopy;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v15;
  }

  else
  {
    v6 = 0;
  }

  [v6 setIsOnPrimaryDisplay:!_isPresentedForSecondScreen];
}

- (void)_hideChromeOnPlayButtonTapWithItemIsNowPlaying:(BOOL)playing buttonIsOverlayed:(BOOL)overlayed
{
  if (playing && overlayed)
  {
    browsingSession = [(PUOneUpViewController *)self browsingSession];
    viewModel = [browsingSession viewModel];

    currentAssetReference = [viewModel currentAssetReference];
    v8 = +[PUOneUpSettings sharedInstance];
    v9 = PUShouldAutoHideChrome(viewModel, [v8 chromeAutoHideBehaviorOnPlayButton]);

    indexPath = [currentAssetReference indexPath];
    _tilingView = [(PUOneUpViewController *)self _tilingView];
    layout = [_tilingView layout];

    v13 = [(PUOneUpViewController *)self _videoPlayerAtIndexPath:indexPath layout:layout];

    if (v9 && (![(PUOneUpViewController *)self _isSecondScreenBrowserVisible]|| !v13))
    {
      _barsController = [(PUOneUpViewController *)self _barsController];
      disableChromeHiding = [_barsController disableChromeHiding];

      if ((disableChromeHiding & 1) == 0)
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __90__PUOneUpViewController__hideChromeOnPlayButtonTapWithItemIsNowPlaying_buttonIsOverlayed___block_invoke;
        v16[3] = &unk_1E7B80C38;
        v17 = viewModel;
        v18 = currentAssetReference;
        [v17 performChanges:v16];
      }
    }
  }
}

- (void)_chromeAutoHideTimerFired:(id)fired
{
  [(PUOneUpViewController *)self _setChromeAutoHideTimer:0];
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  if (PUShouldAutoHideChrome(viewModel, 1))
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__PUOneUpViewController__chromeAutoHideTimerFired___block_invoke;
    v6[3] = &unk_1E7B80DD0;
    v7 = viewModel;
    [v7 performChanges:v6];
  }
}

- (void)_cancelTimedChromeAutoHide
{
  _chromeAutoHideTimer = [(PUOneUpViewController *)self _chromeAutoHideTimer];
  [_chromeAutoHideTimer invalidate];

  [(PUOneUpViewController *)self _setChromeAutoHideTimer:0];
}

- (void)_scheduleTimedChromeAutoHide
{
  v3 = +[PUOneUpSettings sharedInstance];
  [v3 chromeAutoHideDelay];
  v5 = v4;

  _chromeAutoHideTimer = [(PUOneUpViewController *)self _chromeAutoHideTimer];

  if (!_chromeAutoHideTimer && v5 > 0.0)
  {
    v7 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__chromeAutoHideTimerFired_ selector:0 userInfo:0 repeats:v5];
    [(PUOneUpViewController *)self _setChromeAutoHideTimer:v7];
  }
}

- (void)_updateImageAnalysisInteractionAdditionalActionInfoEdgeInsetsIfNeeded
{
  if ([(PUOneUpViewController *)self _needsUpdateImageAnalysisInteractionAdditionalActionInfoEdgeInsets])
  {
    [(PUOneUpViewController *)self _setNeedsUpdateImageAnalysisInteractionAdditionalActionInfoEdgeInsets:0];
    chromeViewController = [(PUOneUpViewController *)self chromeViewController];
    [chromeViewController additionalActionInfoEdgeInsets];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    currentImageAnalysisInteraction = [(PUOneUpViewController *)self currentImageAnalysisInteraction];
    [currentImageAnalysisInteraction setAdditionalActionInfoEdgeInsets:{v5, v7, v9, v11}];
  }
}

- (void)_updateEditModeIfNeeded
{
  if ([(PUOneUpViewController *)self _needsUpdateEditMode])
  {
    [(PUOneUpViewController *)self _setNeedsUpdateEditMode:0];
    browsingSession = [(PUOneUpViewController *)self browsingSession];
    viewModel = [browsingSession viewModel];

    currentAssetReference = [viewModel currentAssetReference];
    if (currentAssetReference)
    {
      currentAssetReference2 = [viewModel currentAssetReference];
      v7 = [viewModel assetViewModelForAssetReference:currentAssetReference2];

      isInEditMode = [v7 isInEditMode];
      _tilingView = [(PUOneUpViewController *)self _tilingView];
      indexPath = [currentAssetReference indexPath];
      v11 = PUTileKindUserTransform;
      dataSourceIdentifier = [currentAssetReference dataSourceIdentifier];
      v13 = [_tilingView presentedTileControllerWithIndexPath:indexPath kind:v11 dataSourceIdentifier:dataSourceIdentifier];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v13;
      }

      else
      {
        v16 = 0;
      }

      v14 = isInEditMode ^ 1u;
    }

    else
    {
      v16 = 0;
      v14 = 1;
    }

    _tilingView2 = [(PUOneUpViewController *)self _tilingView];
    [_tilingView2 setScrollEnabled:v14];

    [v16 setUserInteractionEnabled:v14];
  }
}

- (void)_updateReviewScreenBars
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  reviewScreenBarsModel = [viewModel reviewScreenBarsModel];

  _reviewScreenControlBarTileViewController = [(PUOneUpViewController *)self _reviewScreenControlBarTileViewController];
  [_reviewScreenControlBarTileViewController setBarsModel:reviewScreenBarsModel];

  _reviewScreenTopBarTileViewController = [(PUOneUpViewController *)self _reviewScreenTopBarTileViewController];
  [_reviewScreenTopBarTileViewController setBarsModel:reviewScreenBarsModel];

  _reviewScreenScrubberBarTileViewController = [(PUOneUpViewController *)self _reviewScreenScrubberBarTileViewController];
  [_reviewScreenScrubberBarTileViewController setBarsModel:reviewScreenBarsModel];

  _spec = [(PUOneUpViewController *)self _spec];
  LOBYTE(_reviewScreenScrubberBarTileViewController) = [_spec shouldLayoutReviewScreenControlBarVertically];
  shouldCounterrotateReviewScreenBars = [_spec shouldCounterrotateReviewScreenBars];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__PUOneUpViewController__updateReviewScreenBars__block_invoke;
  v11[3] = &__block_descriptor_34_e42_v16__0___PUMutableReviewScreenBarsModel__8l;
  v12 = _reviewScreenScrubberBarTileViewController;
  v13 = shouldCounterrotateReviewScreenBars;
  [reviewScreenBarsModel performChanges:v11];
}

void __48__PUOneUpViewController__updateReviewScreenBars__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setUseVerticalControlLayout:v3];
  [v4 setShouldBarsCounterrotate:*(a1 + 33)];
}

- (BOOL)_wantsShowInLibraryButtonForAllAssets
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (([(PUOneUpViewController *)self _options]& 0x8000) != 0)
  {
    return 1;
  }

  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  currentAssetReference = [viewModel currentAssetReference];

  if (currentAssetReference)
  {
    browsingSession2 = [(PUOneUpViewController *)self browsingSession];
    actionManager = [browsingSession2 actionManager];

    v11[0] = currentAssetReference;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v9 = [actionManager canPerformAction:43 onAllAssetReferences:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (UIView)chromeView
{
  chromeViewController = [(PUOneUpViewController *)self chromeViewController];
  view = [chromeViewController view];

  return view;
}

- (void)_updateChromeViewControllerIfNeeded
{
  if ([(PUOneUpViewController *)self needsUpdateChromeViewController])
  {
    [(PUOneUpViewController *)self setNeedsUpdateChromeViewController:0];
    _spec = [(PUOneUpViewController *)self _spec];
    hideScrubberWhenShowingAccessoryView = [_spec hideScrubberWhenShowingAccessoryView];
    chromeViewController = [(PUOneUpViewController *)self chromeViewController];
    [chromeViewController setHideScrubberWhenAccessoryIsVisible:hideScrubberWhenShowingAccessoryView];

    _wantsShowInLibraryButtonForAllAssets = [(PUOneUpViewController *)self _wantsShowInLibraryButtonForAllAssets];
    chromeViewController2 = [(PUOneUpViewController *)self chromeViewController];
    [chromeViewController2 setWantsShowInLibraryButton:_wantsShowInLibraryButtonForAllAssets];

    chromeViewController3 = [(PUOneUpViewController *)self chromeViewController];
    [chromeViewController3 updatePresentingViewController];

    chromeViewController4 = [(PUOneUpViewController *)self chromeViewController];
    [chromeViewController4 setAirplayInfoWithShouldShowAirPlayButton:_ShouldShowAirPlayButton() isDisplayingContentOnSecondScreen:{-[PUOneUpViewController _isSecondScreenBrowserVisible](self, "_isSecondScreenBrowserVisible")}];
  }
}

- (void)_updateBackgroundTileViewController
{
  _backgroundTileViewController = [(PUOneUpViewController *)self _backgroundTileViewController];
  _spec = [(PUOneUpViewController *)self _spec];
  backgroundColorOverride = [_spec backgroundColorOverride];
  v5 = backgroundColorOverride;
  if (backgroundColorOverride)
  {
    backgroundColorOverride2 = backgroundColorOverride;
  }

  else
  {
    chromeViewController = [(PUOneUpViewController *)self chromeViewController];
    backgroundColorOverride2 = [chromeViewController backgroundColorOverride];
  }

  shouldDisplayEmptyPlaceholder = [_spec shouldDisplayEmptyPlaceholder];
  [_backgroundTileViewController setBackgroundColorOverride:backgroundColorOverride2];
  [_backgroundTileViewController setShouldDisplayEmptyPlaceholder:shouldDisplayEmptyPlaceholder];
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  emptyPlaceholderTitle = [browsingSession emptyPlaceholderTitle];
  [_backgroundTileViewController setEmptyPlaceholderCustomTitle:emptyPlaceholderTitle];

  browsingSession2 = [(PUOneUpViewController *)self browsingSession];
  emptyPlaceholderSubtitle = [browsingSession2 emptyPlaceholderSubtitle];
  [_backgroundTileViewController setEmptyPlaceholderCustomSubtitle:emptyPlaceholderSubtitle];

  if ([(PUOneUpViewController *)self wantsSpotlightStyling])
  {
    view = [(PUOneUpViewController *)self view];
    traitCollection = [view traitCollection];
    if ([traitCollection userInterfaceIdiom])
    {
      v15 = 8;
    }

    else
    {
      v15 = 18;
    }

    v16 = [MEMORY[0x1E69DC730] effectWithStyle:v15];
    [_backgroundTileViewController setVisualEffect:v16];
  }
}

- (void)_setContentUnavailableConfiguration:(id)configuration
{
  v7.receiver = self;
  v7.super_class = PUOneUpViewController;
  [(PUOneUpViewController *)&v7 _setContentUnavailableConfiguration:?];
  if (configuration)
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  }

  else
  {
    systemBackgroundColor = 0;
  }

  view = [(PUOneUpViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  if (configuration)
  {
  }
}

- (void)_updateGestureController
{
  gestureController = [(PUOneUpViewController *)self gestureController];
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  isChromeVisible = [viewModel isChromeVisible];

  if (isChromeVisible)
  {
    chromeViewController = [(PUOneUpViewController *)self chromeViewController];
    [chromeViewController contentGuideInsets];
    [gestureController setInteractionInsets:?];
  }

  else
  {
    [gestureController setInteractionInsets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  }
}

- (void)_updateContentUnavailableConfigurationUsingState:(id)state
{
  stateCopy = state;
  _spec = [(PUOneUpViewController *)self _spec];
  isContentLocked = [_spec isContentLocked];

  _tilingView = [(PUOneUpViewController *)self _tilingView];
  [_tilingView setHidden:isContentLocked];

  v8 = isContentLocked ^ 1;
  _tilingView2 = [(PUOneUpViewController *)self _tilingView];
  [_tilingView2 setUserInteractionEnabled:v8];

  if (v8)
  {
    [(PUOneUpViewController *)self _setContentUnavailableConfiguration:0];
  }

  else
  {
    objc_initWeak(&location, self);
    v10 = MEMORY[0x1E69DC628];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __74__PUOneUpViewController__updateContentUnavailableConfigurationUsingState___block_invoke;
    v23[3] = &unk_1E7B80890;
    objc_copyWeak(&v24, &location);
    v11 = [v10 actionWithHandler:v23];
    browsingSession = [(PUOneUpViewController *)self browsingSession];
    privacyController = [browsingSession privacyController];
    [privacyController authenticationType];

    browsingSession2 = [(PUOneUpViewController *)self browsingSession];
    viewModel = [browsingSession2 viewModel];
    [viewModel wantsContentUnavailableUnlockButtonVisible];

    v16 = PXContentLockedPlaceholderConfiguration();
    v17 = [v16 updatedConfigurationForState:stateCopy];
    [(PUOneUpViewController *)self _setContentUnavailableConfiguration:v17];

    browsingSession3 = [(PUOneUpViewController *)self browsingSession];
    viewModel2 = [browsingSession3 viewModel];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __74__PUOneUpViewController__updateContentUnavailableConfigurationUsingState___block_invoke_2;
    v21[3] = &unk_1E7B80DD0;
    v20 = viewModel2;
    v22 = v20;
    [v20 performChanges:v21];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }
}

void __74__PUOneUpViewController__updateContentUnavailableConfigurationUsingState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained browsingSession];
  v3 = [v2 privacyController];
  v4 = objc_loadWeakRetained((a1 + 32));
  [v3 performUserAuthenticationIfNeededFromContext:v4];
}

- (void)_updateLayoutIfNeeded
{
  if ([(PUOneUpViewController *)self _needsUpdateLayout])
  {
    [(PUOneUpViewController *)self _setNeedsUpdateLayout:0];
    _tilingView = [(PUOneUpViewController *)self _tilingView];
    layout = [_tilingView layout];

    [(PUOneUpViewController *)self _updateLayout:layout];
  }
}

- (void)_updateViewModelWithCurrentScrollPosition
{
  _tilingView = [(PUOneUpViewController *)self _tilingView];
  layout = [_tilingView layout];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    browsingSession = [(PUOneUpViewController *)self browsingSession];
    viewModel = [browsingSession viewModel];
    assetsDataSource = [viewModel assetsDataSource];

    dataSource = [layout dataSource];
    LOBYTE(viewModel) = [dataSource isEqual:assetsDataSource];

    if ((viewModel & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:1883 description:{@"Invalid parameter not satisfying: %@", @"[[oneUpLayout dataSource] isEqual:assetsDataSource]"}];
    }

    indexPathOfCurrentItem = [layout indexPathOfCurrentItem];
    if (indexPathOfCurrentItem)
    {
      [layout transitionProgress];
      v12 = v11;
      v13 = [assetsDataSource assetReferenceAtIndexPath:indexPathOfCurrentItem];
      if (!v13)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:1889 description:{@"Invalid parameter not satisfying: %@", @"assetReference != nil"}];
      }

      browsingSession2 = [(PUOneUpViewController *)self browsingSession];
      viewModel2 = [browsingSession2 viewModel];

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __66__PUOneUpViewController__updateViewModelWithCurrentScrollPosition__block_invoke;
      v20[3] = &unk_1E7B7FE10;
      v21 = viewModel2;
      v22 = v13;
      v24 = v12;
      selfCopy = self;
      v16 = v13;
      v17 = viewModel2;
      [v17 performChanges:v20];
    }
  }
}

- (BOOL)_isDrivingScrubbing
{
  selfCopy = self;
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  transitionDriverIdentifier = [viewModel transitionDriverIdentifier];
  LOBYTE(selfCopy) = [transitionDriverIdentifier isEqualToString:selfCopy->_scrubbingIdentifier];

  return selfCopy;
}

- (void)_updateScrubbingAdjustmentPolicyIfNeeded
{
  if ([(PUOneUpViewController *)self _needsUpdateScrubbingAdjustmentPolicy])
  {
    [(PUOneUpViewController *)self _setNeedsUpdateScrubbingAdjustmentPolicy:0];
    browsingSession = [(PUOneUpViewController *)self browsingSession];
    viewModel = [browsingSession viewModel];
    assetViewModelForCurrentAssetReference = [viewModel assetViewModelForCurrentAssetReference];

    asset = [assetViewModelForCurrentAssetReference asset];
    v6 = [(PUOneUpViewController *)self _insetModeForAsset:asset];

    scaledVideoOffsetAdjustmentPolicy = [(PUOneUpViewController *)self scaledVideoOffsetAdjustmentPolicy];
    [scaledVideoOffsetAdjustmentPolicy setInsetMode:v6];
  }
}

- (void)_updateBarsControllerIfNeeded
{
  if ([(PUOneUpViewController *)self _needsUpdateBarsController])
  {
    [(PUOneUpViewController *)self _setNeedsUpdateBarsController:0];
    _spec = [(PUOneUpViewController *)self _spec];
    _options = [(PUOneUpViewController *)self _options];
    browsingSession = [(PUOneUpViewController *)self browsingSession];
    viewModel = [browsingSession viewModel];

    isOneUpRefreshEnabled = [MEMORY[0x1E69C3640] isOneUpRefreshEnabled];
    v7 = +[PUOneUpSettings sharedInstance];
    shouldPlaceButtonsInNavigationBar = [_spec shouldPlaceButtonsInNavigationBar];
    shouldUseCompactTitleView = [_spec shouldUseCompactTitleView];
    shouldUseCompactCommentsTitle = [_spec shouldUseCompactCommentsTitle];
    [_spec maximumToolbarHeight];
    v9 = v8;
    [_spec maximumAccessoryToolbarHeight];
    v11 = v10;
    v12 = 0;
    if ([_spec allowProgrammaticNavBackButton])
    {
      navigationController = [(PUOneUpViewController *)self navigationController];
      viewControllers = [navigationController viewControllers];
      firstObject = [viewControllers firstObject];
      if (firstObject == self)
      {
        navigationController2 = [(PUOneUpViewController *)self navigationController];
        presentingViewController = [navigationController2 presentingViewController];
        v12 = presentingViewController != 0;
      }

      else
      {
        v12 = 0;
      }
    }

    v41 = v12;
    if (isOneUpRefreshEnabled)
    {
      v18 = 0;
    }

    else
    {
      v18 = 0;
      if (([viewModel isPresentedForPreview] & 1) == 0 && (_options & 0x800) == 0)
      {
        v18 = [_spec isContentLocked] ^ 1;
      }
    }

    shouldShowTitleView = [_spec shouldShowTitleView];
    v45 = _options;
    if ((_options & 0x1000) != 0)
    {
      v20 = 0;
    }

    else
    {
      v20 = shouldShowTitleView;
    }

    v40 = v20;
    ShouldShowAirPlayButton = _ShouldShowAirPlayButton();
    currentAssetReference = [viewModel currentAssetReference];
    _accessoryViewControllersManager = [(PUOneUpViewController *)self _accessoryViewControllersManager];
    asset = [currentAssetReference asset];
    v24 = [_accessoryViewControllersManager accessoryViewTypeForAsset:asset];

    if ([_spec allowTapOnTitle])
    {
      v26 = [v7 titleTapAction] == 2 && v24 == 2;
      v38 = v26;
    }

    else
    {
      v38 = 0;
    }

    asset2 = [currentAssetReference asset];
    v28 = asset2;
    v46 = v7;
    if (isOneUpRefreshEnabled)
    {
      v29 = viewModel;
      v37 = 0;
      v30 = 0;
    }

    else
    {
      if ([asset2 mediaType] == 2)
      {
        v37 = [v28 canPlayLoopingVideo] ^ 1;
      }

      else
      {
        v37 = 0;
      }

      v29 = viewModel;
      v30 = [v28 playbackStyle] == 4;
    }

    shouldDisableNavigationBarsVisibility = [_spec shouldDisableNavigationBarsVisibility];
    shouldPlaceScrubberInScrubberBar = [_spec shouldPlaceScrubberInScrubberBar];
    _spec2 = [(PUOneUpViewController *)self _spec];
    hideScrubberWhenShowingAccessoryView = [_spec2 hideScrubberWhenShowingAccessoryView];

    if (hideScrubberWhenShowingAccessoryView)
    {
      v35 = [v29 assetViewModelForAssetReference:currentAssetReference];
      v18 = ([v35 isAccessoryViewVisible] ^ 1) & v18;
    }

    _barsController = [(PUOneUpViewController *)self _barsController];
    [_barsController setShouldShowMuteButton:v30];
    [_barsController setShouldPlaceButtonsInNavigationBar:shouldPlaceButtonsInNavigationBar];
    [_barsController setShouldUseCompactTitleView:shouldUseCompactTitleView];
    [_barsController setShouldUseCompactCommentsTitle:shouldUseCompactCommentsTitle];
    [_barsController setMaximumToolbarHeight:v9];
    [_barsController setMaximumAccessoryToolbarHeight:v11];
    [_barsController setShouldShowProgrammaticNavBackButton:v41];
    [_barsController setShouldShowAirPlayButton:ShouldShowAirPlayButton];
    [_barsController setShouldShowScrubber:v18];
    [_barsController setShouldShowTitleView:v40];
    [_barsController setAllowTapOnTitle:v38];
    [_barsController setAllowShowingPlayPauseButton:v37];
    [_barsController setDisableShowingNavigationBars:shouldDisableNavigationBarsVisibility];
    [_barsController setShouldPlaceScrubberInScrubberBar:shouldPlaceScrubberInScrubberBar];
    [_barsController setDisableChromeHiding:(v45 >> 14) & 1];
    [_barsController setWantsShowInLibraryButton:(v45 >> 15) & 1];
    [_barsController setIsInCompactLayoutStyle:{objc_msgSend(_spec, "isInCompactLayoutStyle")}];
  }
}

- (void)_updateVideoPlayerIfNeeded
{
  if ([(PUOneUpViewController *)self _needsUpdateVideoPlayer])
  {
    [(PUOneUpViewController *)self _setNeedsUpdateVideoPlayer:0];
    browsingSession = [(PUOneUpViewController *)self browsingSession];
    viewModel = [browsingSession viewModel];

    currentAssetReference = [viewModel currentAssetReference];
    v6 = [viewModel assetViewModelForAssetReference:currentAssetReference];

    asset = [v6 asset];
    isPresentingOverOneUp = [viewModel isPresentingOverOneUp];
    videoPlayer = [v6 videoPlayer];
    if ((isPresentingOverOneUp & 1) == 0)
    {
      if ([asset canPlayLoopingVideo])
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __51__PUOneUpViewController__updateVideoPlayerIfNeeded__block_invoke;
        v10[3] = &unk_1E7B80DD0;
        v11 = videoPlayer;
        [v11 performChanges:v10];
      }
    }
  }
}

- (void)_updatePreferredContentSizeIfNeeded
{
  if ([(PUOneUpViewController *)self _needsUpdatePreferredContentSize])
  {
    [(PUOneUpViewController *)self _setNeedsUpdatePreferredContentSize:0];
    [(PUOneUpViewController *)self preferredContentSizeOverride];
    if (v4 == *MEMORY[0x1E695F060] && v3 == *(MEMORY[0x1E695F060] + 8))
    {
      browsingSession = [(PUOneUpViewController *)self browsingSession];
      viewModel = [browsingSession viewModel];

      currentAssetReference = [viewModel currentAssetReference];
      asset = [currentAssetReference asset];

      if (asset)
      {
        [asset aspectRatio];
        v10 = v9;
      }

      else
      {
        v10 = 1.0;
      }

      px_screen = [(PUOneUpViewController *)self px_screen];
      [px_screen bounds];
      v16 = PURectWithAspectRatioFittingRect(1.0, v12, v13, v14, v15);
      v18 = v17;
      v20 = v19;
      v22 = v21;

      PURectWithAspectRatioFittingRect(v10, v16, v18, v20, v22);
      [(PUOneUpViewController *)self setPreferredContentSize:v23, v24];
    }

    else
    {
      [(PUOneUpViewController *)self preferredContentSizeOverride];

      [(PUOneUpViewController *)self setPreferredContentSize:?];
    }
  }
}

- (void)_updateSpecIfNeeded
{
  v54 = *MEMORY[0x1E69E9840];
  if ([(PUOneUpViewController *)self _needsUpdateSpec])
  {
    [(PUOneUpViewController *)self _setNeedsUpdateSpec:0];
    traitCollection = [(PUOneUpViewController *)self traitCollection];
    [(PUOneUpViewController *)self _layoutReferenceSize];
    v5 = v4;
    v7 = v6;
    _isPresentedForSecondScreen = [(PUOneUpViewController *)self _isPresentedForSecondScreen];
    _prefersCompactLayoutForSplitScreen = [(PUOneUpViewController *)self _prefersCompactLayoutForSplitScreen];
    browsingSession = [(PUOneUpViewController *)self browsingSession];
    viewModel = [browsingSession viewModel];

    isPresentedForPreview = [viewModel isPresentedForPreview];
    isChromeVisible = [viewModel isChromeVisible];
    _secondScreenBrowser = [(PUOneUpViewController *)self _secondScreenBrowser];
    if (_secondScreenBrowser && ![(PUOneUpViewController *)self _isPresentedForSecondScreen])
    {
      [viewModel secondScreenSize];
      v14 = v16;
      v15 = v17;
    }

    else
    {
      v14 = *MEMORY[0x1E695F060];
      v15 = *(MEMORY[0x1E695F060] + 8);
    }

    _barsController = [(PUOneUpViewController *)self _barsController];
    isShowingPlayPauseButton = [_barsController isShowingPlayPauseButton];

    v20 = [viewModel contentPrivacyState] == 1;
    unlockDeviceStatus = [(PUOneUpViewController *)self unlockDeviceStatus];

    if (unlockDeviceStatus)
    {
      unlockDeviceStatus2 = [(PUOneUpViewController *)self unlockDeviceStatus];
      v23 = unlockDeviceStatus2[2]();
    }

    else
    {
      v23 = 1;
    }

    v24 = PLUIGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = @"NO";
      if (v23)
      {
        v25 = @"YES";
      }

      v36 = v23;
      v26 = v20;
      v27 = isShowingPlayPauseButton;
      v28 = traitCollection;
      v29 = isChromeVisible;
      v30 = isPresentedForPreview;
      v31 = _prefersCompactLayoutForSplitScreen;
      v32 = v25;
      *buf = 138412290;
      v53 = v32;
      _os_log_impl(&dword_1B36F3000, v24, OS_LOG_TYPE_INFO, "PUOneUpViewController: shouldDisplayPeopleRow: %@", buf, 0xCu);

      _prefersCompactLayoutForSplitScreen = v31;
      isPresentedForPreview = v30;
      isChromeVisible = v29;
      traitCollection = v28;
      isShowingPlayPauseButton = v27;
      v20 = v26;
      LOBYTE(v23) = v36;
    }

    _spec = [(PUOneUpViewController *)self _spec];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __44__PUOneUpViewController__updateSpecIfNeeded__block_invoke;
    v38[3] = &unk_1E7B79F10;
    v45 = isPresentedForPreview;
    v46 = _isPresentedForSecondScreen;
    v41 = v14;
    v42 = v15;
    v47 = isChromeVisible;
    v48 = v20;
    v49 = isShowingPlayPauseButton;
    v39 = _spec;
    v40 = traitCollection;
    v50 = _prefersCompactLayoutForSplitScreen;
    v43 = v5;
    v44 = v7;
    v51 = v23;
    v34 = traitCollection;
    v35 = _spec;
    [v35 performChanges:v38];
  }
}

uint64_t __44__PUOneUpViewController__updateSpecIfNeeded__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPresentedForPreview:*(a1 + 80)];
  [*(a1 + 32) setPresentedForSecondScreen:*(a1 + 81)];
  [*(a1 + 32) setSecondScreenSize:{*(a1 + 48), *(a1 + 56)}];
  [*(a1 + 32) setChromeVisible:*(a1 + 82)];
  [*(a1 + 32) setContentLocked:*(a1 + 83)];
  [*(a1 + 32) setShowingPlayPauseButtonInBars:*(a1 + 84)];
  [*(a1 + 32) setTraitCollection:*(a1 + 40)];
  [*(a1 + 32) setPrefersCompactLayoutForSplitScreen:*(a1 + 85)];
  if (*(a1 + 64) != *MEMORY[0x1E695F060] || *(a1 + 72) != *(MEMORY[0x1E695F060] + 8))
  {
    [*(a1 + 32) setLayoutReferenceSize:?];
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 86);

  return [v3 setShouldDisplayPeopleRow:v4];
}

- (void)_dismissTipPopoverAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(PUOneUpViewController *)self _isTipPopoverVisible])
  {
    [(PUOneUpViewController *)self dismissViewControllerAnimated:animatedCopy completion:0];
    [MEMORY[0x1E69C3748] setTip:self->_presentedTipID isPresentable:0];
    [(PUOneUpBarsController *)self->__barsController setPresentedTipID:0];
    presentedTipID = self->_presentedTipID;
    self->_presentedTipID = 0;

    tipDismissedCompletion = self->_tipDismissedCompletion;
    self->_tipDismissedCompletion = 0;

    v7 = MEMORY[0x1E69C3748];

    [v7 setTipsPresentationDelegate:0];
  }
}

- (void)_updateTipPopoversIfNeeded
{
  v73[1] = *MEMORY[0x1E69E9840];
  if ([(PUOneUpViewController *)self _needsUpdateTipsPopover])
  {
    [(PUOneUpViewController *)self _setNeedsUpdateTipPopovers:0];
    browsingSession = [(PUOneUpViewController *)self browsingSession];
    viewModel = [browsingSession viewModel];

    browsingSession2 = [(PUOneUpViewController *)self browsingSession];
    actionManager = [browsingSession2 actionManager];

    assetViewModelForCurrentAssetReference = [viewModel assetViewModelForCurrentAssetReference];
    assetsDataSource = [viewModel assetsDataSource];
    currentAssetReference = [viewModel currentAssetReference];
    asset = [currentAssetReference asset];
    badgeInfoPromise = [assetViewModelForCurrentAssetReference badgeInfoPromise];
    v12 = badgeInfoPromise;
    if (badgeInfoPromise)
    {
      [badgeInfoPromise badgeInfo];
    }

    isChromeVisible = [viewModel isChromeVisible];
    _isIrisPlaying = [(PUOneUpViewController *)self _isIrisPlaying];
    traitCollection = [(PUOneUpViewController *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    view = [(PUOneUpViewController *)self view];
    window = [view window];
    _toWindowOrientation = [window _toWindowOrientation];

    if ([viewModel isScrolling])
    {
      isScrubbing = 1;
    }

    else
    {
      isScrubbing = [viewModel isScrubbing];
    }

    if ([(PUOneUpViewController *)self appearState]== 2)
    {
      isPresentedForPreview = [viewModel isPresentedForPreview];
    }

    else
    {
      isPresentedForPreview = 1;
    }

    _isAccessoryVisible = [(PUOneUpViewController *)self _isAccessoryVisible];
    _barsController = [(PUOneUpViewController *)self _barsController];
    barButtonItemToggleDetails = [_barsController barButtonItemToggleDetails];

    if (PXAssetBadgeInfoIsActionable())
    {
      v56 = PXAssetBadgeInfoIsActionableDisabled() ^ 1;
    }

    else
    {
      v56 = 0;
    }

    _barsController2 = [(PUOneUpViewController *)self _barsController];
    barButtonItemActionsMenu = [_barsController2 barButtonItemActionsMenu];
    v55 = barButtonItemActionsMenu != 0;

    if (PXContentSyndicationShouldShowAttributionViewForAsset())
    {
      _syndicationPillView = [(PUOneUpViewController *)self _syndicationPillView];
      v54 = _syndicationPillView != 0;
    }

    else
    {
      v54 = 0;
    }

    v68 = asset;
    asset2 = [assetViewModelForCurrentAssetReference asset];
    v58 = [(PUOneUpViewController *)self _isAssetEligibleForTip:asset2];

    visualImageAnalysis = [assetViewModelForCurrentAssetReference visualImageAnalysis];
    hasVisualSearchResults = [visualImageAnalysis hasVisualSearchResults];

    if (currentAssetReference)
    {
      v22 = [assetsDataSource indexPathForAssetReference:currentAssetReference];
      _tilingView = [(PUOneUpViewController *)self _tilingView];
      v24 = PUTileKindBadge;
      identifier = [assetsDataSource identifier];
      v26 = [_tilingView presentedTileControllerWithIndexPath:v22 kind:v24 dataSourceIdentifier:identifier];

      isActive = [v26 isActive];
      if ([MEMORY[0x1E69BDDE0] status] == 1)
      {
        v73[0] = currentAssetReference;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:1];
        if ([actionManager canPerformAction:24 onAllAssetReferences:v27])
        {
          asset3 = [currentAssetReference asset];
          v60 = [asset3 mediaType] == 1;
        }

        else
        {
          v60 = 0;
        }
      }

      else
      {
        v60 = 0;
      }
    }

    else
    {
      v60 = 0;
      isActive = 0;
    }

    v69 = assetsDataSource;
    v71 = actionManager;
    _cropButtonTileViewControllerForCurrentAsset = [(PUOneUpViewController *)self _cropButtonTileViewControllerForCurrentAsset];
    cropButton = [_cropButtonTileViewControllerForCurrentAsset cropButton];

    v31 = 0;
    v33 = _toWindowOrientation != 1 && userInterfaceIdiom != 1;
    v72 = viewModel;
    v70 = assetViewModelForCurrentAssetReference;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    if (((isScrubbing | isPresentedForPreview) | (_isIrisPlaying || _isAccessoryVisible)))
    {
      v38 = isChromeVisible;
    }

    else
    {
      v38 = isChromeVisible;
      if (!v33)
      {
        v34 = ![(PUOneUpViewController *)self _hasShownRelevantTip];
        if (barButtonItemToggleDetails)
        {
          v39 = isChromeVisible & v34;
        }

        else
        {
          v39 = 0;
        }

        v31 = v39 & v58 & hasVisualSearchResults;
        if ((isChromeVisible & v34) == 1)
        {
          v35 = v55;
          v36 = v54;
          v37 = [(PUOneUpViewController *)self _didPlayCurrentLivePhoto]& isActive & v56;
          v34 = 1;
        }

        else
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
        }
      }
    }

    v40 = cropButton != 0;
    v41 = MEMORY[0x1E69C3748];
    infoPanelTipID = [MEMORY[0x1E69C3748] infoPanelTipID];
    [v41 setTip:infoPanelTipID isPresentable:v31];

    v43 = MEMORY[0x1E69C3748];
    livePhotosTipID = [MEMORY[0x1E69C3748] livePhotosTipID];
    [v43 setTip:livePhotosTipID isPresentable:v37];

    v45 = MEMORY[0x1E69C3748];
    syndicatedPhotosTipID = [MEMORY[0x1E69C3748] syndicatedPhotosTipID];
    [v45 setTip:syndicatedPhotosTipID isPresentable:v36];

    v47 = MEMORY[0x1E69C3748];
    actionsMenuTipID = [MEMORY[0x1E69C3748] actionsMenuTipID];
    [v47 setTip:actionsMenuTipID isPresentable:v35];

    v49 = MEMORY[0x1E69C3748];
    quickCropTipID = [MEMORY[0x1E69C3748] quickCropTipID];
    [v49 setTip:quickCropTipID isPresentable:v34 & ~v38 & v40];

    v51 = MEMORY[0x1E69C3748];
    cleanUpTipID = [MEMORY[0x1E69C3748] cleanUpTipID];
    [v51 setTip:cleanUpTipID isPresentable:v34 & v60];
  }
}

- (void)_updateBarAppearanceIfNeeded
{
  v11 = *MEMORY[0x1E69E9840];
  if ([(PUOneUpViewController *)self _needsUpdateBarAppearance])
  {
    [(PUOneUpViewController *)self _setNeedsUpdateBarAppearance:0];
    px_barAppearance = [(PUOneUpViewController *)self px_barAppearance];
    if (([px_barAppearance isEnabled] & 1) == 0)
    {
      v4 = PXAssertGetLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_error_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_ERROR, "Attempting to modify PXBarAppearance state without enabling bar appearance on: %@", buf, 0xCu);
      }
    }

    pu_wantsToolbarVisible = [(PUOneUpViewController *)self pu_wantsToolbarVisible];
    if ([px_barAppearance prefersTabBarVisible])
    {
      v6 = PXAssertGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_FAULT, "Tab Bar is not preferred for 1Up as per rdar://153208606. However, if this has changed then we can remove this assertion. On visionOS, prefersTabBarVisible is always true, so excluding it from here.", buf, 2u);
      }
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__PUOneUpViewController__updateBarAppearanceIfNeeded__block_invoke;
    v7[3] = &__block_descriptor_33_e34_v16__0___PXMutableBarAppearance__8l;
    v8 = pu_wantsToolbarVisible;
    [px_barAppearance performChangesWithAnimationOptions:0 changes:v7];
  }
}

- (void)_updatePreloadInsetsIfNeeded
{
  if ([(PUOneUpViewController *)self _needsUpdatePreloadInsets])
  {
    [(PUOneUpViewController *)self _setNeedsUpdatePreloadInsets:0];
    browsingSession = [(PUOneUpViewController *)self browsingSession];
    viewModel = [browsingSession viewModel];

    if ([viewModel browsingSpeedRegime] == 2 || objc_msgSend(viewModel, "isPresentedForPreview"))
    {
      v5 = *MEMORY[0x1E69DDCE0];
      v4 = *(MEMORY[0x1E69DDCE0] + 8);
      v7 = *(MEMORY[0x1E69DDCE0] + 16);
      v6 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    else
    {
      view = [(PUOneUpViewController *)self view];
      [view bounds];
      v10 = v9;

      v11 = v10;
      v12 = floorf(v11 * 0.5);
      if (v12 >= 100.0)
      {
        v6 = -v12;
      }

      else
      {
        v6 = -100.0;
      }

      v7 = 0.0;
      v4 = v6;
      v5 = 0.0;
    }

    _tilingView = [(PUOneUpViewController *)self _tilingView];
    [_tilingView setLoadingInsets:{v5, v4, v7, v6}];
  }
}

- (void)_updateLayout:(id)layout
{
  layoutCopy = layout;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_68;
  }

  _spec = [(PUOneUpViewController *)self _spec];
  v5 = +[PUOneUpSettings sharedInstance];
  isOneUpRefreshEnabled = [MEMORY[0x1E69C3640] isOneUpRefreshEnabled];
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  _currentAssetViewModel = [(PUOneUpViewController *)self _currentAssetViewModel];
  v9 = *MEMORY[0x1E69DDCE0];
  v10 = *(MEMORY[0x1E69DDCE0] + 8);
  v11 = *(MEMORY[0x1E69DDCE0] + 16);
  v12 = *(MEMORY[0x1E69DDCE0] + 24);
  if (isOneUpRefreshEnabled)
  {
    browsingSession2 = [(PUOneUpViewController *)self browsingSession];
    viewModel2 = [browsingSession2 viewModel];
    isPresentedForPreview = [viewModel2 isPresentedForPreview];

    if (isPresentedForPreview)
    {
      goto LABEL_8;
    }

    chromeViewController = [(PUOneUpViewController *)self chromeViewController];
    [(PUOneUpViewController *)self _layoutReferenceSize];
    [chromeViewController contentGuideInsetsForViewSize:?];
  }

  else
  {
    if (![_spec shouldUseContentGuideInsets])
    {
      goto LABEL_8;
    }

    chromeViewController = [(PUOneUpViewController *)self _barsController];
    [chromeViewController contentGuideInsets];
  }

LABEL_8:
  chromeViewController2 = [(PUOneUpViewController *)self chromeViewController];
  [chromeViewController2 contentDecorationAdditionalInsets];
  v127 = v19;
  v128 = v18;
  v125 = v21;
  v126 = v20;

  [(PUOneUpViewController *)self px_safeAreaInsets];
  UIEdgeInsetsMax();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  browsingSession3 = [(PUOneUpViewController *)self browsingSession];
  viewModel3 = [browsingSession3 viewModel];
  isPresentedForPreview2 = [viewModel3 isPresentedForPreview];

  if (isPresentedForPreview2)
  {
LABEL_9:
    v122 = v11;
    v123 = v12;
    v120 = v9;
    v121 = v10;
    goto LABEL_10;
  }

  scaleToFitBehavior = [v5 scaleToFitBehavior];
  switch(scaleToFitBehavior)
  {
    case 3:
      [v5 minimumContentInset];
      UIEdgeInsetsMax();
      v23 = v72;
      v25 = v73;
      v27 = v74;
      v29 = v75;
      v122 = v74;
      v123 = v75;
      v120 = v72;
      v121 = v73;
      break;
    case 2:
      v122 = v27;
      v123 = v29;
      v120 = v23;
      v121 = v25;
      break;
    case 1:
      view = [(PUOneUpViewController *)self view];
      [view safeAreaInsets];
      v120 = v42;
      v121 = v43;
      v122 = v44;
      v123 = v45;

      break;
    default:
      goto LABEL_9;
  }

LABEL_10:
  v130 = viewModel;
  videoOverlayPlayState = [viewModel videoOverlayPlayState];
  shouldDisplayBadges = [_spec shouldDisplayBadges];
  if (videoOverlayPlayState)
  {
    v35 = 0;
  }

  else
  {
    v35 = shouldDisplayBadges;
  }

  shouldUseUserTransformTiles = [_spec shouldUseUserTransformTiles];
  shouldDisplayPlayButtons = [_spec shouldDisplayPlayButtons];
  v37 = MEMORY[0x1E695F060];
  if (shouldDisplayPlayButtons)
  {
    [_spec playButtonSize];
    v117 = v39;
    v118 = v38;
  }

  else
  {
    v117 = *(MEMORY[0x1E695F060] + 8);
    v118 = *MEMORY[0x1E695F060];
  }

  shouldDisplayProgressIndicators = [_spec shouldDisplayProgressIndicators];
  if (videoOverlayPlayState || !shouldDisplayProgressIndicators)
  {
    v114 = v37[1];
    v115 = *v37;
  }

  else
  {
    [_spec progressIndicatorSize];
    v114 = v48;
    v115 = v47;
  }

  if ([_spec shouldDisplayPeopleRow])
  {
    [_spec peopleRowSize];
    v112 = v50;
    v113 = v49;
  }

  else
  {
    v112 = v37[1];
    v113 = *v37;
  }

  shouldDisplayProgressIndicators2 = [_spec shouldDisplayProgressIndicators];
  if (!videoOverlayPlayState && shouldDisplayProgressIndicators2)
  {
    [_spec progressIndicatorContentInsets];
    v9 = v52;
    v10 = v53;
    v11 = v54;
    v12 = v55;
  }

  if ([_spec shouldDisplayProgressIndicators])
  {
    [_spec renderIndicatorSize];
    v110 = v57;
    v111 = v56;
  }

  else
  {
    v110 = v37[1];
    v111 = *v37;
  }

  traitCollection = [_spec traitCollection];
  shouldDisplayBufferingIndicators = [_spec shouldDisplayBufferingIndicators];
  v124 = v25;
  if (videoOverlayPlayState || !shouldDisplayBufferingIndicators)
  {
    v102 = v37[1];
    v103 = *v37;
  }

  else
  {
    [_spec bufferingIndicatorSize];
    v102 = v60;
    v103 = v59;
  }

  canDisplayLoadingIndicators = [_spec canDisplayLoadingIndicators];
  [_spec secondScreenSize];
  v100 = v62;
  v101 = v61;
  [v5 interpageSpacing];
  v64 = v63;
  shouldPinContentToTop = [_spec shouldPinContentToTop];
  if ([_spec shouldDisplayAssetExplorerReviewScreenProgressIndicators])
  {
    [_spec assetExplorerReviewScreenProgressIndicatorSize];
    v108 = v66;
    v109 = v65;
  }

  else
  {
    v108 = v37[1];
    v109 = *v37;
  }

  shouldDisplayReviewScreenBars = [_spec shouldDisplayReviewScreenBars];
  shouldLayoutReviewScreenControlBarVertically = [_spec shouldLayoutReviewScreenControlBarVertically];
  _windowInterfaceOrientation = [(PUOneUpViewController *)self _windowInterfaceOrientation];
  isAccessoryViewVisible = [_currentAssetViewModel isAccessoryViewVisible];
  if (isOneUpRefreshEnabled)
  {
    traitCollection2 = [(PUOneUpViewController *)self traitCollection];
    userInterfaceStyle = [traitCollection2 userInterfaceStyle];

    if (userInterfaceStyle >= 2)
    {
      if (userInterfaceStyle != 2)
      {
        v98 = 0;
LABEL_50:
        mEMORY[0x1E69C3640] = [MEMORY[0x1E69C3640] sharedInstance];
        [mEMORY[0x1E69C3640] insetContentCornerRadius];
        v97 = v77;

        mEMORY[0x1E69C3640]2 = [MEMORY[0x1E69C3640] sharedInstance];
        [mEMORY[0x1E69C3640]2 insetContentBorderWidth];
        v96 = v79;

        goto LABEL_51;
      }

      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      mEMORY[0x1E69C3640]3 = [MEMORY[0x1E69C3640] sharedInstance];
      [mEMORY[0x1E69C3640]3 insetContentBorderOpacityDarkMode];
    }

    else
    {
      whiteColor = [MEMORY[0x1E69DC888] blackColor];
      mEMORY[0x1E69C3640]3 = [MEMORY[0x1E69C3640] sharedInstance];
      [mEMORY[0x1E69C3640]3 insetContentBorderOpacityLightMode];
    }

    v98 = [whiteColor colorWithAlphaComponent:?];

    goto LABEL_50;
  }

  v98 = 0;
  v96 = 0.0;
  v97 = 0.0;
LABEL_51:
  v129 = v5;
  if (v35)
  {
    if (isAccessoryViewVisible)
    {
      _spec2 = [(PUOneUpViewController *)self _spec];
      v81 = [_spec2 hideBadgesWhenShowingAccessoryView] ^ 1;
    }

    else
    {
      v81 = 1;
    }

    v82 = (isOneUpRefreshEnabled ^ 1) & v81;
  }

  else
  {
    v82 = 0;
  }

  shouldDisplayAssetExplorerReviewScreenBadges = [_spec shouldDisplayAssetExplorerReviewScreenBadges];
  v83 = (([_spec shouldDisplaySelectionIndicators] & 1) != 0 || objc_msgSend(v130, "isInSelectionMode")) && videoOverlayPlayState == 0;
  browsingSession4 = [(PUOneUpViewController *)self browsingSession];
  importStatusManager = [browsingSession4 importStatusManager];
  if (importStatusManager)
  {
    v86 = videoOverlayPlayState == 0;
  }

  else
  {
    v86 = 0;
  }

  if ([_spec shouldDisplaySyndicationAttribution])
  {
    mEMORY[0x1E69C3408] = [MEMORY[0x1E69C3408] sharedInstance];
    v88 = [mEMORY[0x1E69C3408] showSyndicated1upPillUI] & (videoOverlayPlayState == 0) & v82;
  }

  else
  {
    v88 = 0;
  }

  v89 = videoOverlayPlayState == 0;
  v90 = videoOverlayPlayState != 0;
  v91 = MEMORY[0x1E69C3640];
  v92 = layoutCopy;
  sharedInstance = [v91 sharedInstance];
  [sharedInstance insetContentCornerRadius];
  [v92 setInsetContentCornerRadius:?];

  mEMORY[0x1E69C3640]4 = [MEMORY[0x1E69C3640] sharedInstance];
  [mEMORY[0x1E69C3640]4 minimumMarginForInsetContent];
  [v92 setMinimumMarginForInsetContent:?];

  [v92 setUseBackgroundTile:1];
  [v92 setUseBadgeTiles:v82];
  [v92 setUseUserTransformTiles:shouldUseUserTransformTiles];
  [v92 setContentGuideInsets:{v23, v124, v27, v29}];
  [v92 setContentSafeInsets:{v120, v121, v122, v123}];
  [v92 setContentDecorationAdditionalInsets:{v128, v127, v126, v125}];
  [v92 setPlayButtonSize:{v118, v117}];
  [v92 setProgressIndicatorSize:{v115, v114}];
  [v92 setProgressIndicatorContentInsets:{v9, v10, v11, v12}];
  [v92 setPeopleRowSize:{v113, v112}];
  [v92 setBufferingIndicatorSize:{v103, v102}];
  [v92 setRenderIndicatorSize:{v111, v110}];
  [v92 setCanDisplayLoadingIndicators:canDisplayLoadingIndicators & v89];
  [v92 setTraitCollection:traitCollection];
  [v92 setDisplaySizeForInsetMatching:{v101, v100}];
  [v92 setInterpageSpacing:{v64, 0.0}];
  [v92 setInterSectionSpacing:{v64, 0.0}];
  [v92 setShouldPinContentToTop:shouldPinContentToTop];
  [v92 setUseAssetExplorerReviewScreenBadgeTiles:shouldDisplayAssetExplorerReviewScreenBadges & v89];
  [v92 setUseSelectionIndicatorTiles:v83];
  [v92 setUseImportStatusIndicatorTiles:v86];
  [v92 setAssetExplorerReviewScreenProgressIndicatorSize:{v109, v108}];
  [v92 setUseReviewScreenBars:shouldDisplayReviewScreenBars];
  [v92 setUseVerticalReviewScreenControlBarLayout:shouldLayoutReviewScreenControlBarVertically];
  [v92 setWindowInterfaceOrientation:_windowInterfaceOrientation];
  [v92 setShouldHideMainContent:v90];
  [v92 setUseSyndicationAttributionTile:v88];
  [v92 setInsetContentBorderColor:v98];
  [v92 setInsetContentCornerRadius:v97];
  [v92 setInsetContentBorderWidth:v96];

LABEL_68:
}

- (id)_newOneUpLayout
{
  v3 = [PUOneUpTilingLayout alloc];
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  assetsDataSource = [viewModel assetsDataSource];
  v7 = [(PUSectionedTilingLayout *)v3 initWithDataSource:assetsDataSource];

  [(PUOneUpTilingLayout *)v7 setDelegate:self];
  _parallaxComputer = [(PUOneUpViewController *)self _parallaxComputer];
  [(PUOneUpTilingLayout *)v7 setParallaxComputer:_parallaxComputer];

  [(PUOneUpViewController *)self _updateLayout:v7];
  return v7;
}

- (void)_setIrisPlaying:(BOOL)playing
{
  if (self->__isIrisPlaying != playing)
  {
    _currentAssetViewModel = [(PUOneUpViewController *)self _currentAssetViewModel];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __41__PUOneUpViewController__setIrisPlaying___block_invoke;
    v30[3] = &unk_1E7B7FF98;
    v6 = _currentAssetViewModel;
    v31 = v6;
    playingCopy = playing;
    [v6 performChanges:v30];
    self->__isIrisPlaying = playing;
    [(PUOneUpViewController *)self _configureVitalityController];
    if (self->__isIrisPlaying)
    {
      browsingSession = [(PUOneUpViewController *)self browsingSession];
      viewModel = [browsingSession viewModel];

      v9 = +[PUOneUpSettings sharedInstance];
      v10 = PUShouldAutoHideChrome(viewModel, [v9 chromeAutoHideBehaviorOnLivePhoto]);

      if (v10)
      {
        currentAssetReference = [viewModel currentAssetReference];
        v24 = MEMORY[0x1E69E9820];
        v25 = 3221225472;
        v26 = __41__PUOneUpViewController__setIrisPlaying___block_invoke_2;
        v27 = &unk_1E7B80C38;
        v28 = viewModel;
        v29 = currentAssetReference;
        v12 = currentAssetReference;
        [v28 performChanges:&v24];
      }

      v13 = [(PUOneUpViewController *)self _barsController:v24];
      tapGestureRecognizer = [v13 tapGestureRecognizer];
      [tapGestureRecognizer pu_cancel];

      _doubleTapZoomController = [(PUOneUpViewController *)self _doubleTapZoomController];
      doubleTapGestureRecognizer = [_doubleTapZoomController doubleTapGestureRecognizer];
      [doubleTapGestureRecognizer pu_cancel];

      _accessoryVisibilityInteractionController = [(PUOneUpViewController *)self _accessoryVisibilityInteractionController];
      panGestureRecognizer = [_accessoryVisibilityInteractionController panGestureRecognizer];
      [panGestureRecognizer pu_cancel];

      gestureController = [(PUOneUpViewController *)self gestureController];
      [gestureController cancelGestures];

      v20 = +[PUOneUpSettings sharedInstance];
      LODWORD(panGestureRecognizer) = [v20 lockScrollDuringLivePhotoPlayback];

      if (panGestureRecognizer)
      {
        browsingSession2 = [(PUOneUpViewController *)self browsingSession];
        viewModel2 = [browsingSession2 viewModel];
        [viewModel2 currentAssetTransitionProgress];
        if (PXFloatApproximatelyEqualToFloat())
        {
          _tilingView = [(PUOneUpViewController *)self _tilingView];
          [_tilingView px_cancelScrollGesture];
        }
      }
    }
  }
}

- (void)_updateMergedVideoProviderEnabled
{
  v3 = [(PUOneUpViewController *)self appearState]== 2;
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  mergedVideoProvider = [browsingSession mergedVideoProvider];
  [mergedVideoProvider setIsEnabled:v3];
}

- (void)setAppearState:(int)state
{
  if (self->_appearState != state)
  {
    self->_appearState = state;
    [(PUOneUpViewController *)self _updateMergedVideoProviderEnabled];
  }
}

- (void)setUnlockDeviceStatus:(id)status
{
  if (self->_unlockDeviceStatus != status)
  {
    statusCopy = status;
    v5 = [statusCopy copy];
    unlockDeviceStatus = self->_unlockDeviceStatus;
    self->_unlockDeviceStatus = v5;

    _accessoryViewControllersManager = [(PUOneUpViewController *)self _accessoryViewControllersManager];
    [_accessoryViewControllersManager setUnlockDeviceStatus:statusCopy];

    chromeViewController = [(PUOneUpViewController *)self chromeViewController];
    [chromeViewController invalidateIsDeviceUnlocked];
  }
}

- (void)setUnlockDeviceHandlerWithActionType:(id)type
{
  if (self->_unlockDeviceHandlerWithActionType != type)
  {
    typeCopy = type;
    v5 = [typeCopy copy];
    unlockDeviceHandlerWithActionType = self->_unlockDeviceHandlerWithActionType;
    self->_unlockDeviceHandlerWithActionType = v5;

    _accessoryViewControllersManager = [(PUOneUpViewController *)self _accessoryViewControllersManager];
    [_accessoryViewControllersManager setUnlockDeviceHandlerWithActionType:typeCopy];
  }
}

- (void)_isPresentedForPreviewDidChange
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  isPresentedForPreview = [viewModel isPresentedForPreview];

  view = [(PUOneUpViewController *)self view];
  [view setUserInteractionEnabled:isPresentedForPreview ^ 1u];

  if ((isPresentedForPreview & 1) == 0)
  {
    _currentAssetViewModel = [(PUOneUpViewController *)self _currentAssetViewModel];
    videoPlayer = [_currentAssetViewModel videoPlayer];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __56__PUOneUpViewController__isPresentedForPreviewDidChange__block_invoke;
    v16[3] = &unk_1E7B80DD0;
    v17 = videoPlayer;
    v9 = videoPlayer;
    [v9 performChanges:v16];
  }

  [(PUOneUpViewController *)self _invalidateSpec];
  [(PUOneUpViewController *)self _invalidatePreferredContentSize];
  [(PUOneUpViewController *)self _invalidateBarsControllers];
  [(PUOneUpViewController *)self _invalidatePreloadInsets];
  [(PUOneUpViewController *)self _invalidateLayout];
  _barsController = [(PUOneUpViewController *)self _barsController];
  [_barsController invalidateViewHostingGestureRecognizers];

  [(PUOneUpViewController *)self _updateIfNeeded];
  [(PUOneUpViewController *)self px_setNeedsImageModulationIntensityUpdate];
  [(PUOneUpViewController *)self _updatePrefersHomeIndicatorHidden];
  _currentAssetViewModel2 = [(PUOneUpViewController *)self _currentAssetViewModel];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__PUOneUpViewController__isPresentedForPreviewDidChange__block_invoke_2;
  v13[3] = &unk_1E7B7FF98;
  v14 = _currentAssetViewModel2;
  v15 = isPresentedForPreview;
  v12 = _currentAssetViewModel2;
  [v12 performChanges:v13];
}

- (void)_setWindowInterfaceOrientation:(int64_t)orientation
{
  if (self->__windowInterfaceOrientation != orientation)
  {
    self->__windowInterfaceOrientation = orientation;
    _spec = [(PUOneUpViewController *)self _spec];
    shouldDisplayReviewScreenBars = [_spec shouldDisplayReviewScreenBars];

    if (shouldDisplayReviewScreenBars)
    {
      [(PUOneUpViewController *)self _invalidateLayout];
    }

    _barsController = [(PUOneUpViewController *)self _barsController];
    [_barsController invalidateContentGuideInsets];
  }
}

- (void)_updateWindowInterfaceOrientation
{
  view = [(PUOneUpViewController *)self view];
  window = [view window];

  if ([window _toWindowOrientation] && (v4 = objc_msgSend(window, "_toWindowOrientation"), v4 != objc_msgSend(window, "_windowInterfaceOrientation")))
  {
    _toWindowOrientation = [window _toWindowOrientation];
  }

  else
  {
    _toWindowOrientation = [window _windowInterfaceOrientation];
  }

  v6 = _toWindowOrientation;
  if (_toWindowOrientation || (v6 = [window _windowInterfaceOrientation]) != 0)
  {
    [(PUOneUpViewController *)self _setWindowInterfaceOrientation:v6];
  }
}

- (void)_setLayoutReferenceSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (size.width != self->__layoutReferenceSize.width || size.height != self->__layoutReferenceSize.height)
  {
    self->__layoutReferenceSize = size;
    [(PUOneUpViewController *)self _invalidateSpec];
    _barsController = [(PUOneUpViewController *)self _barsController];
    [_barsController invalidateViewControllerView];

    [(PUOneUpViewController *)self _updateIfNeeded];
    if ([(PUOneUpViewController *)self _isPresentedForSecondScreen])
    {
      browsingSession = [(PUOneUpViewController *)self browsingSession];
      viewModel = [browsingSession viewModel];

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __49__PUOneUpViewController__setLayoutReferenceSize___block_invoke;
      v11[3] = &unk_1E7B7C518;
      v12 = viewModel;
      v13 = width;
      v14 = height;
      v10 = viewModel;
      [v10 performChanges:v11];
    }
  }
}

- (void)_updateLayoutReferenceSize
{
  [(PUOneUpViewController *)self _pendingViewTransitionSize];
  if (v4 == *MEMORY[0x1E695F060] && v3 == *(MEMORY[0x1E695F060] + 8))
  {
    view = [(PUOneUpViewController *)self view];
    [view bounds];
    v7 = v11;
    v9 = v12;
  }

  else
  {
    [(PUOneUpViewController *)self _pendingViewTransitionSize];
    v7 = v6;
    v9 = v8;
  }

  [(PUOneUpViewController *)self _setLayoutReferenceSize:v7, v9];
}

- (void)_configurePocketStyle:(id)style
{
  tilingView = self->__tilingView;
  styleCopy = style;
  topEdgeEffect = [(PUTilingView *)tilingView topEdgeEffect];
  [topEdgeEffect setStyle:styleCopy];

  bottomEdgeEffect = [(PUTilingView *)self->__tilingView bottomEdgeEffect];
  [bottomEdgeEffect setStyle:styleCopy];
}

- (BOOL)_enablePockets
{
  mEMORY[0x1E69C3640] = [MEMORY[0x1E69C3640] sharedInstance];
  if ([mEMORY[0x1E69C3640] enableClearMagicPocket])
  {
    v3 = !+[PUOneUpChromeUserDefaultsWrapper shouldDisableMagicPocket];
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)_setTilingView:(id)view
{
  viewCopy = view;
  tilingView = self->__tilingView;
  if (tilingView != viewCopy)
  {
    [(PUTilingView *)tilingView setTileSource:0];
    [(PUTilingView *)self->__tilingView setTileTransitionDelegate:0];
    [(PUTilingView *)self->__tilingView setScrollDelegate:0];
    [(PUTilingView *)self->__tilingView setDelegate:0];
    objc_storeStrong(&self->__tilingView, view);
    if ((PFIsSpotlight() & 1) == 0)
    {
      v7 = *(MEMORY[0x1E695EFD0] + 16);
      v19[0] = *MEMORY[0x1E695EFD0];
      v19[1] = v7;
      v19[2] = *(MEMORY[0x1E695EFD0] + 32);
      [(PUTilingView *)viewCopy setTransform:v19];
      contentContainerView = [(PUOneUpViewController *)self contentContainerView];
      [contentContainerView bounds];
      [(PUTilingView *)viewCopy setFrame:?];
    }

    [(PUTilingView *)self->__tilingView setTileSource:self];
    [(PUTilingView *)self->__tilingView setTileTransitionDelegate:self];
    [(PUTilingView *)self->__tilingView setScrollDelegate:self];
    [(PUTilingView *)self->__tilingView setDelegate:self];
    [(PUTilingView *)self->__tilingView setAccessibilityIdentifier:@"OneUpMainPagingView"];
    [(PUTilingView *)self->__tilingView setShowsHorizontalScrollIndicator:0];
    [(PUTilingView *)self->__tilingView setShowsVerticalScrollIndicator:0];
    [(PUTilingView *)self->__tilingView _setAutoScrollEnabled:0];
    _enablePockets = [(PUOneUpViewController *)self _enablePockets];
    [(PUTilingView *)self->__tilingView px_setPocketsEnabled:_enablePockets];
    if (!_enablePockets)
    {
      goto LABEL_14;
    }

    v10 = +[PUOneUpChromeUserDefaultsWrapper preferredPocketStyle];
    if (v10 == 2)
    {
      hardStyle = [MEMORY[0x1E69DCED8] hardStyle];
    }

    else if (v10 == 1)
    {
      hardStyle = [MEMORY[0x1E69DCED8] softStyle];
    }

    else
    {
      if (v10)
      {
        goto LABEL_13;
      }

      objc_opt_class();
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_13;
      }

      hardStyle = [MEMORY[0x1E69DCED8] _clearStyle];
    }

    v12 = hardStyle;
    [(PUOneUpViewController *)self _configurePocketStyle:hardStyle];

LABEL_13:
    [(PUOneUpViewController *)self _updatePocketBias];
LABEL_14:
    [(PUOneUpViewController *)self _invalidatePreloadInsets];
    [(PUTilingView *)self->__tilingView registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUBackgroundTileReuseIdentifier"];
    [(PUTilingView *)self->__tilingView registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUUserTransformTileReuseIdentifier"];
    [(PUTilingView *)self->__tilingView registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUBadgeTileReuseIdentifier"];
    [(PUTilingView *)self->__tilingView registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUPlayButtonViewReuseIdentifier"];
    [(PUTilingView *)self->__tilingView registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUProgressIndicatorTileReuseIdentifier"];
    [(PUTilingView *)self->__tilingView registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUPeopleTileReuseIdentifier"];
    [(PUTilingView *)self->__tilingView registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PURenderIndicatorTileReuseIdentifier"];
    [(PUTilingView *)self->__tilingView registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUImportStatusIndicatorTileReuseIdentifier"];
    [(PUTilingView *)self->__tilingView registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUBufferingIndicatorTileReuseIdentifier"];
    [(PUTilingView *)self->__tilingView registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PULoadingIndicatorTileReuseIdentifier"];
    [(PUTilingView *)self->__tilingView registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUAccessoryTileReuseIdentifier"];
    [(PUTilingView *)self->__tilingView registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUVideoPlaceholderTileReuseIdentifier"];
    [(PUTilingView *)self->__tilingView registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUAssetExplorerReviewScreenBadgeTileReuseIdentifier"];
    [(PUTilingView *)self->__tilingView registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUSelectionIndicatorTileReuseIdentifier"];
    [(PUTilingView *)self->__tilingView registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUAssetExplorerReviewScreenProgressIndicatorTileReuseIdentifier"];
    [(PUTilingView *)self->__tilingView registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUReviewScreenTopBarTileReuseIdentifier"];
    [(PUTilingView *)self->__tilingView registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUReviewScreenControlBarTileReuseIdentifier"];
    [(PUTilingView *)self->__tilingView registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUReviewScreenScrubberBarTileReuseIdentifier"];
    [(PUTilingView *)self->__tilingView registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PULivePhotoVideoPlaybackTileReuseIdentifier"];
    [(PUTilingView *)self->__tilingView registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUSyndicationAttributionTileReuseIdentifier"];
    [(PUTilingView *)self->__tilingView registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUCropButtonTileReuseIdentifier"];
    _interactiveSwipeDismissalController = [(PUOneUpViewController *)self _interactiveSwipeDismissalController];
    [_interactiveSwipeDismissalController invalidateDelegateData];

    _interactivePinchDismissalController = [(PUOneUpViewController *)self _interactivePinchDismissalController];
    [_interactivePinchDismissalController invalidateDelegateData];

    _barsController = [(PUOneUpViewController *)self _barsController];
    [_barsController invalidateViewHostingGestureRecognizers];

    _gestureRecognizerCoordinator = [(PUOneUpViewController *)self _gestureRecognizerCoordinator];
    [_gestureRecognizerCoordinator invalidateViewHostingGestureRecognizers];

    _doubleTapZoomController = [(PUOneUpViewController *)self _doubleTapZoomController];
    [_doubleTapZoomController invalidateViewHostingGestureRecognizers];

    _accessoryVisibilityInteractionController = [(PUOneUpViewController *)self _accessoryVisibilityInteractionController];
    [_accessoryVisibilityInteractionController invalidateViewHostingGestureRecognizers];

    [(PUOneUpViewController *)self _configureVitalityController];
  }
}

- (BOOL)_needsUpdate
{
  if ([(PUOneUpViewController *)self _needsUpdateSpec]|| [(PUOneUpViewController *)self _needsUpdateBarsController]|| [(PUOneUpViewController *)self _needsUpdatePreloadInsets]|| [(PUOneUpViewController *)self _needsUpdateLayout]|| [(PUOneUpViewController *)self _needsUpdateEditMode]|| [(PUOneUpViewController *)self _needsUpdatePreferredContentSize]|| [(PUOneUpViewController *)self _needsUpdateVideoPlayer]|| [(PUOneUpViewController *)self _needsUpdateTipsPopover]|| [(PUOneUpViewController *)self _needsUpdateUserActivity]|| [(PUOneUpViewController *)self _needsUpdateAccessoryView]|| [(PUOneUpViewController *)self needsUpdateChromeViewController]|| [(PUOneUpViewController *)self _needsUpdateImageAnalysisInteractionAdditionalActionInfoEdgeInsets]|| [(PUOneUpViewController *)self _needsUpdateBarAppearance])
  {
    return 1;
  }

  return [(PUOneUpViewController *)self _needsUpdateScrubbingAdjustmentPolicy];
}

- (void)_updateIfNeeded
{
  if ([(PUOneUpViewController *)self _needsUpdate])
  {
    [(PUOneUpViewController *)self _updateSpecIfNeeded];
    [(PUOneUpViewController *)self _updateAccessoryViewIfNeeded];
    [(PUOneUpViewController *)self _updateBarsControllerIfNeeded];
    [(PUOneUpViewController *)self _updatePreloadInsetsIfNeeded];
    [(PUOneUpViewController *)self _updateLayoutIfNeeded];
    [(PUOneUpViewController *)self _updateEditModeIfNeeded];
    [(PUOneUpViewController *)self _updatePreferredContentSizeIfNeeded];
    [(PUOneUpViewController *)self _updateVideoPlayerIfNeeded];
    [(PUOneUpViewController *)self _updateTipPopoversIfNeeded];
    [(PUOneUpViewController *)self _updateUserActivityIfNeeded];
    [(PUOneUpViewController *)self _updateChromeViewControllerIfNeeded];
    [(PUOneUpViewController *)self _updateImageAnalysisInteractionAdditionalActionInfoEdgeInsetsIfNeeded];
    [(PUOneUpViewController *)self _updateBarAppearanceIfNeeded];
    [(PUOneUpViewController *)self _updateScrubbingAdjustmentPolicyIfNeeded];
    if ([(PUOneUpViewController *)self _needsUpdate])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:1157 description:@"updates still needed after an update cycle"];
    }
  }
}

- (void)_setPrefersHomeIndicatorHidden:(BOOL)hidden
{
  if (self->__prefersHomeIndicatorHidden != hidden)
  {
    self->__prefersHomeIndicatorHidden = hidden;
    [(PUOneUpViewController *)self setNeedsUpdateOfHomeIndicatorAutoHidden];
  }
}

- (void)_updateScrubbingAdjustmentPolicyForVideoTimelineControlInteractionChange
{
  chromeViewController = [(PUOneUpViewController *)self chromeViewController];
  isVideoTimelineControlInteracting = [chromeViewController isVideoTimelineControlInteracting];

  scaledVideoOffsetAdjustmentPolicy = [(PUOneUpViewController *)self scaledVideoOffsetAdjustmentPolicy];
  [scaledVideoOffsetAdjustmentPolicy setIsVideoTimelineControlInteracting:isVideoTimelineControlInteracting];
}

- (void)_updateScrubbingAdjustmentPolicyForChromeChange
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  scaledVideoOffsetAdjustmentPolicy = [(PUOneUpViewController *)self scaledVideoOffsetAdjustmentPolicy];
  [scaledVideoOffsetAdjustmentPolicy setChromeVisibilityChangeReason:{objc_msgSend(viewModel, "lastChromeVisibilityChangeReason")}];
}

- (void)_updatePrefersHomeIndicatorHidden
{
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  -[PUOneUpViewController _setPrefersHomeIndicatorHidden:](self, "_setPrefersHomeIndicatorHidden:", (([viewModel isPresentedForPreview] | objc_msgSend(viewModel, "isChromeVisible")) & 1) == 0);
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = PUOneUpViewController;
  windowCopy = window;
  [(PUOneUpViewController *)&v8 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  [(PUOneUpViewController *)self _updateWindowInterfaceOrientation:v8.receiver];
  chromeViewController = [(PUOneUpViewController *)self chromeViewController];
  [chromeViewController viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v109.receiver = self;
  v109.super_class = PUOneUpViewController;
  [(PUOneUpViewController *)&v109 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  scaledVideoOffsetAdjustmentPolicy = [(PUOneUpViewController *)self scaledVideoOffsetAdjustmentPolicy];
  [scaledVideoOffsetAdjustmentPolicy resetPolicy];

  [(PUOneUpViewController *)self _setPendingViewTransitionSize:width, height];
  [(PUOneUpViewController *)self _updateLayoutReferenceSize];
  [(PUOneUpViewController *)self _updateWindowInterfaceOrientation];
  v9 = MEMORY[0x1E69C3748];
  infoPanelTipID = [MEMORY[0x1E69C3748] infoPanelTipID];
  [v9 setTip:infoPanelTipID isPresentable:0];

  v11 = MEMORY[0x1E69C3748];
  livePhotosTipID = [MEMORY[0x1E69C3748] livePhotosTipID];
  [v11 setTip:livePhotosTipID isPresentable:0];

  v13 = MEMORY[0x1E69C3748];
  actionsMenuTipID = [MEMORY[0x1E69C3748] actionsMenuTipID];
  [v13 setTip:actionsMenuTipID isPresentable:0];

  v15 = MEMORY[0x1E69C3748];
  syndicatedPhotosTipID = [MEMORY[0x1E69C3748] syndicatedPhotosTipID];
  [v15 setTip:syndicatedPhotosTipID isPresentable:0];

  v17 = MEMORY[0x1E69C3748];
  quickCropTipID = [MEMORY[0x1E69C3748] quickCropTipID];
  [v17 setTip:quickCropTipID isPresentable:0];

  v19 = MEMORY[0x1E69C3748];
  cleanUpTipID = [MEMORY[0x1E69C3748] cleanUpTipID];
  [v19 setTip:cleanUpTipID isPresentable:0];

  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  v107[0] = MEMORY[0x1E69E9820];
  v107[1] = 3221225472;
  v107[2] = __76__PUOneUpViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v107[3] = &unk_1E7B80DD0;
  v23 = viewModel;
  v108 = v23;
  [v23 performChanges:v107];
  _spec = [(PUOneUpViewController *)self _spec];
  shouldCounterrotateReviewScreenBars = [_spec shouldCounterrotateReviewScreenBars];

  if (shouldCounterrotateReviewScreenBars)
  {
    v77 = coordinatorCopy;
    _reviewScreenTopBarTileViewController = [(PUOneUpViewController *)self _reviewScreenTopBarTileViewController];
    _reviewScreenControlBarTileViewController = [(PUOneUpViewController *)self _reviewScreenControlBarTileViewController];
    view = [_reviewScreenControlBarTileViewController view];
    v75 = _reviewScreenTopBarTileViewController;
    view2 = [_reviewScreenTopBarTileViewController view];
    v29 = [view snapshotViewAfterScreenUpdates:0];
    v30 = [view2 snapshotViewAfterScreenUpdates:0];
    view3 = [(PUOneUpViewController *)self view];
    [view3 bounds];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;

    UIRectGetCenter();
    v72 = v41;
    v73 = v40;
    view4 = [(PUOneUpViewController *)self view];
    window = [view4 window];
    _toWindowOrientation = [window _toWindowOrientation];

    view5 = [(PUOneUpViewController *)self view];
    window2 = [view5 window];
    _fromWindowOrientation = [window2 _fromWindowOrientation];

    v48 = 0.0;
    v49 = 0.0;
    if (_toWindowOrientation != 1)
    {
      if (_toWindowOrientation == 3)
      {
        v49 = 1.57079633;
      }

      else if (_toWindowOrientation == 4)
      {
        v49 = -1.57079633;
      }

      else
      {
        v49 = 3.14159265;
        if (_toWindowOrientation != 2)
        {
          v49 = 0.0;
        }
      }
    }

    v76 = height;
    if (_fromWindowOrientation != 1)
    {
      switch(_fromWindowOrientation)
      {
        case 3:
          v48 = 1.57079633;
          break;
        case 4:
          v48 = -1.57079633;
          break;
        case 2:
          v48 = 3.14159265;
          break;
        default:
          v48 = 0.0;
          break;
      }
    }

    v51 = v48 - v49;
    v52 = objc_alloc_init(PUReviewScreenBarsSnapshot);
    [(PUReviewScreenBarsSnapshot *)v52 addSubview:v29];
    [(PUReviewScreenBarsSnapshot *)v52 addSubview:v30];
    view6 = [(PUOneUpViewController *)self view];
    [view6 addSubview:v52];

    v54 = MEMORY[0x1E69DD250];
    v94[0] = MEMORY[0x1E69E9820];
    v94[1] = 3221225472;
    v94[2] = __76__PUOneUpViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
    v94[3] = &unk_1E7B79EC0;
    v55 = v52;
    v100 = v33;
    v101 = v35;
    v102 = v37;
    v103 = v39;
    v104 = v73;
    v105 = v72;
    v95 = v55;
    v96 = v29;
    v56 = view;
    v106 = v48;
    v97 = v56;
    v98 = v30;
    v57 = view2;
    v99 = v57;
    v58 = v30;
    v59 = v29;
    [v54 performWithoutAnimation:v94];
    [v56 setHidden:1];
    [v57 setHidden:1];
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = __76__PUOneUpViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3;
    v88[3] = &unk_1E7B79EE8;
    v91 = v51;
    v92 = width;
    height = v76;
    v93 = v76;
    v89 = v55;
    selfCopy = self;
    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = __76__PUOneUpViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_4;
    v82[3] = &unk_1E7B7ABB8;
    v83 = v23;
    v84 = v89;
    v85 = v56;
    v86 = v57;
    selfCopy2 = self;
    v60 = v57;
    v61 = v56;
    v62 = v89;
    [v77 animateAlongsideTransition:v88 completion:v82];

    coordinatorCopy = v77;
    v50 = v75;
  }

  else
  {
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = __76__PUOneUpViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_6;
    v81[3] = &unk_1E7B7DC38;
    v81[4] = self;
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __76__PUOneUpViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_7;
    v78[3] = &unk_1E7B7AC08;
    v79 = v23;
    selfCopy3 = self;
    [coordinatorCopy animateAlongsideTransition:v81 completion:v78];
    v50 = v79;
  }

  view7 = [(PUOneUpViewController *)self view];
  window3 = [view7 window];
  if (([window3 _toWindowOrientation] - 3) <= 1 && -[PUOneUpViewController _isAccessoryVisible](self, "_isAccessoryVisible"))
  {
    _accessoryContentKindForCurrentAsset = [(PUOneUpViewController *)self _accessoryContentKindForCurrentAsset];

    if (_accessoryContentKindForCurrentAsset == 1)
    {
      [(PUOneUpEventTracker *)self->_eventTracker logInfoPanelRotatedToHorizontalView];
    }
  }

  else
  {
  }

  view8 = [(PUOneUpViewController *)self view];
  window4 = [view8 window];

  if ([window4 _toWindowOrientation])
  {
    _toWindowOrientation2 = [window4 _toWindowOrientation];
    v69 = _toWindowOrientation2 != [window4 _windowInterfaceOrientation];
  }

  else
  {
    v69 = 0;
  }

  chromeViewController = [(PUOneUpViewController *)self chromeViewController];
  [chromeViewController setIsRotating:v69];

  [(PUOneUpViewController *)self _updateIfNeeded];
  chromeViewController2 = [(PUOneUpViewController *)self chromeViewController];
  [chromeViewController2 viewWillTransitionToSize:coordinatorCopy withCoordinator:{width, height}];
}

uint64_t __76__PUOneUpViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setBounds:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  [*(a1 + 32) setCenter:{*(a1 + 104), *(a1 + 112)}];
  [*(a1 + 48) bounds];
  [*(a1 + 40) setBounds:?];
  [*(a1 + 48) center];
  [*(a1 + 40) setCenter:?];
  CGAffineTransformMakeRotation(&v7, -*(a1 + 120));
  v2 = *(a1 + 40);
  v6 = v7;
  [v2 setTransform:&v6];
  [*(a1 + 64) bounds];
  [*(a1 + 56) setBounds:?];
  [*(a1 + 64) center];
  [*(a1 + 56) setCenter:?];
  CGAffineTransformMakeRotation(&v5, -*(a1 + 120));
  v3 = *(a1 + 56);
  v6 = v5;
  return [v3 setTransform:&v6];
}

uint64_t __76__PUOneUpViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setZRotation:*(a1 + 48)];
  __asm { FMOV            V1.2D, #0.5 }

  [*(a1 + 32) setCenter:{vmulq_f64(*(a1 + 56), _Q1)}];
  v7 = *(a1 + 40);

  return [v7 _invalidateInfoPanelLayoutAnimated:1];
}

void __76__PUOneUpViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __76__PUOneUpViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_5;
  v4[3] = &unk_1E7B80DD0;
  v5 = v2;
  [v5 performChanges:v4];
  [*(a1 + 40) removeFromSuperview];
  [*(a1 + 48) setHidden:0];
  [*(a1 + 56) setHidden:0];
  v3 = [*(a1 + 64) chromeViewController];
  [v3 setIsRotating:0];

  [*(a1 + 64) _invalidateTipPopovers];
  [*(a1 + 64) _updateTipPopoversIfNeeded];
}

void __76__PUOneUpViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__PUOneUpViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_8;
  v5[3] = &unk_1E7B80DD0;
  v6 = v2;
  [v6 performChanges:v5];
  v3 = [*(a1 + 40) chromeViewController];
  [v3 setIsRotating:0];

  v4 = [*(a1 + 40) _barsController];
  [v4 invalidateContentGuideInsets];

  [*(a1 + 40) _invalidateTipPopovers];
  [*(a1 + 40) _invalidateLayout];
  [*(a1 + 40) _updateTipPopoversIfNeeded];
}

- (BOOL)wantsSpotlightStyling
{
  _spec = [(PUOneUpViewController *)self _spec];
  shouldUseSpotlightStyling = [_spec shouldUseSpotlightStyling];

  return shouldUseSpotlightStyling;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v21.receiver = self;
  v21.super_class = PUOneUpViewController;
  [(PUOneUpViewController *)&v21 traitCollectionDidChange:changeCopy];
  traitCollection = [(PUOneUpViewController *)self traitCollection];
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __50__PUOneUpViewController_traitCollectionDidChange___block_invoke;
  v18 = &unk_1E7B80C38;
  v19 = viewModel;
  v8 = traitCollection;
  v20 = v8;
  v9 = viewModel;
  [v9 performChanges:&v15];
  v10 = [(PUOneUpViewController *)self traitCollection:v15];
  userInterfaceIdiom = [v10 userInterfaceIdiom];

  horizontalSizeClass = [v8 horizontalSizeClass];
  horizontalSizeClass2 = [changeCopy horizontalSizeClass];
  if (userInterfaceIdiom == 1 && horizontalSizeClass != horizontalSizeClass2)
  {
    [(PUOneUpViewController *)self _invalidateBarsControllers];
    [(PUOneUpViewController *)self _invalidateAccessoryView];
    [(PUOneUpViewController *)self _setAccessoryVisible:0];
  }

  userInterfaceStyle = [changeCopy userInterfaceStyle];
  if (userInterfaceStyle != [v8 userInterfaceStyle])
  {
    [(PUOneUpViewController *)self _invalidateLayout];
  }

  [(PUOneUpViewController *)self _invalidateSpec];
  [(PUOneUpViewController *)self _updateIfNeeded];
}

uint64_t __50__PUOneUpViewController_traitCollectionDidChange___block_invoke(uint64_t a1)
{
  v2 = PXUserInterfaceSizeClassFromUITraitCollection();
  v3 = *(a1 + 32);

  return [v3 setHorizontalSizeClass:v2];
}

- (void)viewWillLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = PUOneUpViewController;
  [(PUOneUpViewController *)&v9 viewWillLayoutSubviews];
  _barsController = [(PUOneUpViewController *)self _barsController];
  [_barsController updateIfNeeded];

  [(PUOneUpViewController *)self _setPendingViewTransitionSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  [(PUOneUpViewController *)self _updateLayoutReferenceSize];
  view = [(PUOneUpViewController *)self view];
  [view bounds];
  v6 = v5;

  [(PUOneUpViewController *)self _preloadInsetsBasedOffViewWidth];
  if (v6 != v7)
  {
    [(PUOneUpViewController *)self _setPreloadInsetsBasedOffViewWidth:v6];
    [(PUOneUpViewController *)self _invalidatePreloadInsets];
    [(PUOneUpViewController *)self _updatePreloadInsetsIfNeeded];
  }

  chromeViewController = [(PUOneUpViewController *)self chromeViewController];
  [chromeViewController viewWillLayoutSubviews];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v20.receiver = self;
  v20.super_class = PUOneUpViewController;
  [(PUOneUpViewController *)&v20 viewDidDisappear:disappear];
  v4 = PLOneUpGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v19 = 0;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEBUG, "1Up signpost: 1Up viewController viewDidDisappear", v19, 2u);
  }

  [(PUOneUpViewController *)self _xct_endSignpostingForImageTileImageLoadingAndProcessing];
  presentedViewController = [(PUOneUpViewController *)self presentedViewController];
  if (presentedViewController)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ([(PUOneUpViewController *)self _isPresentedForSecondScreen]|| (isKindOfClass & 1) != 0)
    {
      goto LABEL_10;
    }
  }

  else if ([(PUOneUpViewController *)self _isPresentedForSecondScreen])
  {
    goto LABEL_10;
  }

  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  isPresentedForPreview = [viewModel isPresentedForPreview];

  if ((isPresentedForPreview & 1) == 0)
  {
    v10 = +[PHAirPlayScreenController sharedInstance];
    [v10 unregisterContentProvider:self];
  }

LABEL_10:
  defaultManager = [MEMORY[0x1E69C4558] defaultManager];
  [defaultManager unregisterObserver:self];

  eventTracker = [(PUOneUpViewController *)self eventTracker];
  [eventTracker logViewControllerDidDisappear:self];

  v13 = PXContentPrivacyNavigationStateFromViewController();
  if (v13 == 2)
  {
    navigationController = [(PUOneUpViewController *)self navigationController];
    viewControllers = [navigationController viewControllers];
    v16 = [viewControllers count] != 1;

    v13 = 2 * v16;
  }

  browsingSession2 = [(PUOneUpViewController *)self browsingSession];
  privacyController = [browsingSession2 privacyController];
  [privacyController viewDidDisappearForAuthenticationContext:self withNavigationState:v13];

  [(PUOneUpViewController *)self setAppearState:0];
  [MEMORY[0x1E69C3740] disable];
  [(PUOneUpViewController *)self _updateIfNeeded];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v12.receiver = self;
  v12.super_class = PUOneUpViewController;
  [(PUOneUpViewController *)&v12 viewWillDisappear:disappear];
  browsingOneUpVisibilityHelper = [(PUOneUpViewController *)self browsingOneUpVisibilityHelper];
  [browsingOneUpVisibilityHelper setIsOneUpVisible:0];

  visualImageAnalyzingController = [(PUOneUpViewController *)self visualImageAnalyzingController];
  [visualImageAnalyzingController setIsEnabled:0];

  shazamEventsController = [(PUOneUpViewController *)self shazamEventsController];
  [shazamEventsController setIsEnabled:0];

  phototypeSupportController = [(PUOneUpViewController *)self phototypeSupportController];
  [phototypeSupportController setIsEnabled:0];

  [(PUOneUpViewController *)self _cancelTimedChromeAutoHide];
  [(PUOneUpViewController *)self setAppearState:3];
  [(PUOneUpViewController *)self _updateIfNeeded];
  if ([(PUOneUpViewController *)self _isTipPopoverVisible])
  {
    [(PUOneUpViewController *)self _dismissTipPopoverAnimated:0];
  }

  [MEMORY[0x1E69C3748] setTipsPresentationDelegate:0];
  view = [(PUOneUpViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  [windowScene setUserActivity:0];

  viewIfLoaded = [(PUOneUpViewController *)self viewIfLoaded];
  PXAppIntentsClearViewAnnotationDelegate();
}

- (BOOL)_isAssetEligibleForTip:(id)tip
{
  tipCopy = tip;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = tipCopy;
    if ([v4 px_isScreenshot])
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v5 = [v4 px_isScreenRecording] ^ 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)viewDidAppear:(BOOL)appear
{
  v48.receiver = self;
  v48.super_class = PUOneUpViewController;
  [(PUOneUpViewController *)&v48 viewDidAppear:appear];
  [(PUOneUpViewController *)self _preheatAdjacentAssetsForPhotosDetailsContext];
  [MEMORY[0x1E69C3748] setTipsPresentationDelegate:self];
  v4 = PLOneUpGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEBUG, "1Up signpost: 1Up viewController viewDidAppear", buf, 2u);
  }

  [(PUOneUpViewController *)self _xct_beginSignpostingForImageTileImageLoadingAndProcessing];
  browsingOneUpVisibilityHelper = [(PUOneUpViewController *)self browsingOneUpVisibilityHelper];
  [browsingOneUpVisibilityHelper setIsOneUpVisible:1];

  visualImageAnalyzingController = [(PUOneUpViewController *)self visualImageAnalyzingController];
  [visualImageAnalyzingController setIsEnabled:1];

  shazamEventsController = [(PUOneUpViewController *)self shazamEventsController];
  [shazamEventsController setIsEnabled:1];

  phototypeSupportController = [(PUOneUpViewController *)self phototypeSupportController];
  [phototypeSupportController setIsEnabled:1];

  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  isPresentedForPreview = [viewModel isPresentedForPreview];

  _isPresentedForSecondScreen = [(PUOneUpViewController *)self _isPresentedForSecondScreen];
  if (!_isPresentedForSecondScreen && (isPresentedForPreview & 1) == 0)
  {
    v13 = +[PHAirPlayScreenController sharedInstance];
    [v13 registerContentProvider:self];
  }

  defaultManager = [MEMORY[0x1E69C4558] defaultManager];
  [defaultManager registerObserver:self];

  [(PUOneUpViewController *)self _scheduleTimedChromeAutoHide];
  browsingSession2 = [(PUOneUpViewController *)self browsingSession];
  viewModel2 = [browsingSession2 viewModel];

  assetViewModelForCurrentAssetReference = [viewModel2 assetViewModelForCurrentAssetReference];
  asset = [assetViewModelForCurrentAssetReference asset];
  v19 = [asset playbackStyle] == 5;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __39__PUOneUpViewController_viewDidAppear___block_invoke;
  v41[3] = &unk_1E7B79E98;
  v20 = viewModel2;
  v42 = v20;
  selfCopy = self;
  v45 = _isPresentedForSecondScreen;
  v46 = v19;
  v21 = assetViewModelForCurrentAssetReference;
  v44 = v21;
  [v20 performChanges:v41];
  eventTracker = [(PUOneUpViewController *)self eventTracker];
  [eventTracker logViewControllerDidAppear:self];

  [(PUOneUpViewController *)self setAppearState:2];
  [(PUOneUpViewController *)self _invalidateTipPopovers];
  [(PUOneUpViewController *)self _invalidateUserActivity];
  [(PUOneUpViewController *)self _invalidateCachedBoopableItemProvider];
  [(PUOneUpViewController *)self _invalidateScrubbingAdjustmentPolicy];
  [(PUOneUpViewController *)self _updateIfNeeded];
  editActivityCompletion = [(PUOneUpViewController *)self editActivityCompletion];
  v24 = editActivityCompletion;
  if (self->_actionTypeToPerformInViewDidAppear)
  {
    actionsController = [(PUOneUpViewController *)self actionsController];
    [actionsController performSimpleActionWithActionType:self->_actionTypeToPerformInViewDidAppear];

    self->_actionTypeToPerformInViewDidAppear = 0;
    if (v24)
    {
      navigationController = [(PUOneUpViewController *)self navigationController];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __39__PUOneUpViewController_viewDidAppear___block_invoke_3;
      v38[3] = &unk_1E7B80B48;
      v39 = navigationController;
      v40 = v24;
      v27 = navigationController;
      [v27 ppt_performBlockAfterNextNavigationAnimation:v38];

LABEL_10:
      [(PUOneUpViewController *)self setEditActivityCompletion:0];
    }
  }

  else if (editActivityCompletion)
  {
    goto LABEL_10;
  }

  v28 = [(PUOneUpViewController *)self _isAssetEligibleForTip:asset];
  _barsController = [(PUOneUpViewController *)self _barsController];
  barButtonItemToggleDetails = [_barsController barButtonItemToggleDetails];

  if (barButtonItemToggleDetails && v28)
  {
    [MEMORY[0x1E69C3748] signalOneUpPhotoOpened];
  }

  +[PUPhotoEditViewController preheatEditDependenciesIfNeeded];
  browsingSession3 = [(PUOneUpViewController *)self browsingSession];
  privacyController = [browsingSession3 privacyController];
  [privacyController viewDidAppearForAuthenticationContext:self];

  view = [(PUOneUpViewController *)self view];
  PXAppIntentsSetViewAnnotationDelegate();

  if ([(PUOneUpViewController *)self _shouldDisableTransitionsUntilAppeared])
  {
    browsingSession4 = [(PUOneUpViewController *)self browsingSession];
    viewModel3 = [browsingSession4 viewModel];
    isPresentedForPreview2 = [viewModel3 isPresentedForPreview];

    if ((isPresentedForPreview2 & 1) == 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __39__PUOneUpViewController_viewDidAppear___block_invoke_4;
      block[3] = &unk_1E7B80DD0;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __39__PUOneUpViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsAnimatingPresentationSize:0];
  v2 = [*(a1 + 40) _spec];
  if ([v2 shouldAutoplayOnAppear] && *(a1 + 56) != 1)
  {

    goto LABEL_6;
  }

  v3 = *(a1 + 57);

  if (v3)
  {
LABEL_6:
    v4 = [*(a1 + 48) videoPlayer];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__PUOneUpViewController_viewDidAppear___block_invoke_2;
    v7[3] = &unk_1E7B80DD0;
    v8 = v4;
    v5 = v4;
    [v5 performChanges:v7];
    v6 = [*(a1 + 48) irisPlayer];
    [v6 playPreviewHintWhenReady];
  }
}

void __39__PUOneUpViewController_viewDidAppear___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) px_descendantViewControllerWithClass:objc_opt_class()];
  [v2 ppt_setEditIsReadyNotificationBlock:*(a1 + 40)];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v23.receiver = self;
  v23.super_class = PUOneUpViewController;
  [(PUOneUpViewController *)&v23 viewWillAppear:?];
  [(PUOneUpViewController *)self _updateLayoutReferenceSize];
  [(PUOneUpViewController *)self _updateWindowInterfaceOrientation];
  [(PUOneUpViewController *)self _invalidateSpec];
  _barsController = [(PUOneUpViewController *)self _barsController];
  [_barsController invalidateViewControllerView];
  if (([(PUOneUpViewController *)self isBeingPresented]& 1) != 0 || [(PUOneUpViewController *)self isMovingToParentViewController])
  {
    [(PUOneUpViewController *)self _invalidateBarsControllers];
  }

  [(PUOneUpViewController *)self _updateIfNeeded];
  [_barsController updateIfNeeded];
  _spec = [(PUOneUpViewController *)self _spec];
  shouldDisableNavigationBarsVisibility = [_spec shouldDisableNavigationBarsVisibility];

  [(UIViewController *)self pu_setupInitialBarsVisibilityOnViewWillAppearAnimated:appearCopy & ~shouldDisableNavigationBarsVisibility];
  [_barsController invalidateViewControllerView];
  [_barsController updateIfNeeded];
  _interactiveSwipeDismissalController = [(PUOneUpViewController *)self _interactiveSwipeDismissalController];
  [_interactiveSwipeDismissalController invalidateDelegateData];

  _interactivePinchDismissalController = [(PUOneUpViewController *)self _interactivePinchDismissalController];
  [_interactivePinchDismissalController invalidateDelegateData];

  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  currentAssetReference = [viewModel currentAssetReference];
  v13 = [viewModel assetViewModelForAssetReference:currentAssetReference];
  irisPlayer = [v13 irisPlayer];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __40__PUOneUpViewController_viewWillAppear___block_invoke;
  v19[3] = &unk_1E7B809F0;
  v20 = viewModel;
  selfCopy = self;
  v22 = irisPlayer;
  v15 = irisPlayer;
  v16 = viewModel;
  [v16 performChanges:v19];
  if ([(PUOneUpViewController *)self _initialActivity]== 1)
  {
    self->_actionTypeToPerformInViewDidAppear = 15;
  }

  _interactivePinchDismissalController2 = [(PUOneUpViewController *)self _interactivePinchDismissalController];
  [_interactivePinchDismissalController2 viewControllerWillAppear];

  _interactiveSwipeDismissalController2 = [(PUOneUpViewController *)self _interactiveSwipeDismissalController];
  [_interactiveSwipeDismissalController2 viewControllerWillAppear];

  [(PUOneUpViewController *)self _setInitialActivity:0];
  [(PUOneUpViewController *)self setAppearState:1];
}

void __40__PUOneUpViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsAnimatingPresentationSize:1];
  v2 = [*(a1 + 40) _spec];
  if (![v2 shouldAutoplayOnAppear])
  {

    goto LABEL_5;
  }

  v3 = [*(a1 + 40) _isPresentedForSecondScreen];

  if (v3)
  {
LABEL_5:
    v4 = *(a1 + 48);
    v5 = v8;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v6 = __40__PUOneUpViewController_viewWillAppear___block_invoke_3;
    goto LABEL_6;
  }

  v4 = *(a1 + 48);
  v5 = v9;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v6 = __40__PUOneUpViewController_viewWillAppear___block_invoke_2;
LABEL_6:
  v5[2] = v6;
  v5[3] = &unk_1E7B80DD0;
  v7 = v4;
  v5[4] = v7;
  [v7 performChanges:v5];
}

void __40__PUOneUpViewController_viewWillAppear___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) player];
  [v1 prepareForHintWhenReady];
}

- (void)viewDidLoad
{
  v42[1] = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = PUOneUpViewController;
  [(PUOneUpViewController *)&v41 viewDidLoad];
  view = [(PUOneUpViewController *)self view];
  v4 = objc_alloc(MEMORY[0x1E69DD250]);
  [view bounds];
  v5 = [v4 initWithFrame:?];
  contentContainerView = self->_contentContainerView;
  self->_contentContainerView = v5;

  [(UIView *)self->_contentContainerView setAutoresizingMask:18];
  [view addSubview:self->_contentContainerView];
  if (![(PUOneUpViewController *)self _isPresentedForSecondScreen])
  {
    [(PUOneUpViewController *)self px_enableImageModulation];
  }

  if (([(PUOneUpViewController *)self _options]& 1) == 0)
  {
    _newOneUpLayout = [(PUOneUpViewController *)self _newOneUpLayout];
    v8 = [PUTilingView alloc];
    [view bounds];
    v9 = [(PUTilingView *)v8 initWithFrame:_newOneUpLayout layout:?];
    [(PUTilingView *)v9 setAutoresizingMask:18];
    contentContainerView = [(PUOneUpViewController *)self contentContainerView];
    [contentContainerView addSubview:v9];

    browsingSession = [(PUOneUpViewController *)self browsingSession];
    [browsingSession configureTilingView:v9];
    if (![(PUOneUpViewController *)self _isPresentedForSecondScreen])
    {
      [(PUTilingView *)v9 configureDynamicRangeProperties];
    }

    [(PUOneUpViewController *)self _setTilingView:v9];
    [(PUOneUpViewController *)self _updateLayoutReferenceSize];
  }

  v12 = +[PURootSettings sharedInstance];
  [v12 addDeferredKeyObserver:self];

  v13 = +[PUIrisSettings sharedInstance];
  [v13 addDeferredKeyObserver:self];

  if ([MEMORY[0x1E69C3640] isOneUpRefreshEnabled])
  {
    v14 = [PUOneUpGestureController alloc];
    actionsController = [(PUOneUpViewController *)self actionsController];
    v16 = [(PUOneUpGestureController *)v14 initWithView:view actionsController:actionsController];
    gestureController = self->_gestureController;
    self->_gestureController = v16;

    [(PUOneUpGestureController *)self->_gestureController setDelegate:self];
    v18 = [PUOneUpFeedbackController alloc];
    browsingSession2 = [(PUOneUpViewController *)self browsingSession];
    viewModel = [browsingSession2 viewModel];
    v21 = [(PUOneUpFeedbackController *)v18 initWithViewModel:viewModel];
    feedbackController = self->_feedbackController;
    self->_feedbackController = v21;
  }

  chromeViewController = [(PUOneUpViewController *)self chromeViewController];
  v24 = chromeViewController == 0;

  if (v24)
  {
    navigationController = [(PUOneUpViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];

    standardAppearance = [navigationBar standardAppearance];
    [navigationBar setScrollEdgeAppearance:standardAppearance];

    navigationController2 = [(PUOneUpViewController *)self navigationController];
    toolbar = [navigationController2 toolbar];

    standardAppearance2 = [toolbar standardAppearance];
    [toolbar setScrollEdgeAppearance:standardAppearance2];

    if (([(PUOneUpViewController *)self _options]& 0x100000) != 0)
    {
      v32 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
      [v32 configureWithOpaqueBackground];
      systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
      [v32 setBackgroundColor:systemBackgroundColor];

      [navigationBar setScrollEdgeAppearance:v32];
      v34 = objc_alloc_init(MEMORY[0x1E69DD188]);
      [v34 configureWithOpaqueBackground];
      systemBackgroundColor2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      [v34 setBackgroundColor:systemBackgroundColor2];

      [toolbar setScrollEdgeAppearance:v34];
    }
  }

  else
  {
    navigationBar = [(PUOneUpViewController *)self view];
    chromeViewController2 = [(PUOneUpViewController *)self chromeViewController];
    toolbar = [chromeViewController2 view];

    [toolbar setAutoresizingMask:18];
    [navigationBar addSubview:toolbar];
  }

  objc_initWeak(&location, self);
  v42[0] = objc_opt_class();
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __36__PUOneUpViewController_viewDidLoad__block_invoke;
  v38[3] = &unk_1E7B79E70;
  objc_copyWeak(&v39, &location);
  v37 = [(PUOneUpViewController *)self registerForTraitChanges:v36 withHandler:v38];

  objc_destroyWeak(&v39);
  objc_destroyWeak(&location);
}

void __36__PUOneUpViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateBarAppearance];
}

- (void)loadView
{
  v3 = objc_opt_new();
  [(PUOneUpViewController *)self setView:v3];
}

- (void)dealloc
{
  PXUnregisterPreferencesObserver();
  [(PUTilingView *)self->__tilingView setDelegate:0];
  browsingSession = [(PUOneUpViewController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  isPresentedForPreview = [viewModel isPresentedForPreview];

  if (![(PUOneUpViewController *)self _isPresentedForSecondScreen]&& (isPresentedForPreview & 1) == 0)
  {
    v6 = +[PHAirPlayScreenController sharedInstance];
    [v6 unregisterContentProvider:self];
  }

  v7.receiver = self;
  v7.super_class = PUOneUpViewController;
  [(PUOneUpViewController *)&v7 dealloc];
}

- (PUOneUpViewController)initWithBrowsingSession:(id)session options:(unint64_t)options initialActivity:(unint64_t)activity presentationOrigin:(int64_t)origin
{
  sessionCopy = session;
  if (!sessionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:466 description:{@"Invalid parameter not satisfying: %@", @"browsingSession != nil"}];
  }

  v88.receiver = self;
  v88.super_class = PUOneUpViewController;
  v13 = [(PUOneUpViewController *)&v88 initWithNibName:0 bundle:0];
  v14 = v13;
  if (v13)
  {
    v13->__options = options;
    v13->__initialActivity = activity;
    v15 = px_dispatch_queue_create_serial();
    preheatAssetsQueue = v14->_preheatAssetsQueue;
    v14->_preheatAssetsQueue = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    assetUUIDsWithDisplayedContentUpdates = v14->_assetUUIDsWithDisplayedContentUpdates;
    v14->_assetUUIDsWithDisplayedContentUpdates = v17;

    PXRegisterPreferencesObserver();
    navigationItem = [(PUOneUpViewController *)v14 navigationItem];
    [navigationItem setLargeTitleDisplayMode:2];

    v20 = [[PUOneUpViewControllerSpec alloc] initWithOptions:options];
    spec = v14->__spec;
    v14->__spec = v20;

    [(PUViewControllerSpec *)v14->__spec registerChangeObserver:v14];
    v14->__needsUpdateSpec = 1;
    v22 = [objc_opt_class() description];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v25 = [v22 stringByAppendingString:uUIDString];
    scrubbingIdentifier = v14->_scrubbingIdentifier;
    v14->_scrubbingIdentifier = v25;

    objc_storeStrong(&v14->_browsingSession, session);
    v14->_presentationOrigin = origin;
    viewModel = [(PUBrowsingSession *)v14->_browsingSession viewModel];
    [viewModel registerChangeObserver:v14];
    traitCollection = [(PUOneUpViewController *)v14 traitCollection];
    [viewModel setHorizontalSizeClass:{objc_msgSend(traitCollection, "horizontalSizeClass")}];

    v29 = objc_alloc_init(PULoadingIndicatorController);
    loadingIndicatorController = v14->_loadingIndicatorController;
    v14->_loadingIndicatorController = v29;

    v14->__needsUpdateLayout = 1;
    v14->__isPresentedForSecondScreen = (options & 2) != 0;
    v14->__prefersCompactLayoutForSplitScreen = (options & 0x400) != 0;
    if ((options & 2) == 0)
    {
      v31 = PUOneUpEventTrackerCreate(viewModel, origin);
      eventTracker = v14->_eventTracker;
      v14->_eventTracker = v31;

      v33 = objc_alloc_init(PUInteractiveSwipeDismissalController);
      interactiveSwipeDismissalController = v14->__interactiveSwipeDismissalController;
      v14->__interactiveSwipeDismissalController = v33;

      [(PUInteractiveDismissalController *)v14->__interactiveSwipeDismissalController setDelegate:v14];
      v35 = objc_alloc_init(PUInteractivePinchDismissalController);
      interactivePinchDismissalController = v14->__interactivePinchDismissalController;
      v14->__interactivePinchDismissalController = v35;

      [(PUInteractiveDismissalController *)v14->__interactivePinchDismissalController setDelegate:v14];
      if ([(PUOneUpViewController *)v14 wantsSpotlightStyling])
      {
        v37 = 1;
      }

      else if ((options & 0x20000) != 0)
      {
        v37 = 2;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v37 = 3;
        }

        else
        {
          v37 = 0;
        }
      }

      v38 = [[PUOneUpDefaultActionsController alloc] initWithBrowsingSession:sessionCopy viewController:v14];
      [(PUOneUpDefaultActionsController *)v38 setDelegate:v14];
      [(PUOneUpDefaultActionsController *)v38 setAssetActionManagerSource:v14];
      objc_storeStrong(&v14->_actionsController, v38);
      if ([MEMORY[0x1E69C3640] isOneUpRefreshEnabled])
      {
        v39 = [[PUOneUpChromeViewController alloc] initWithBrowsingSession:sessionCopy actionsController:v14->_actionsController];
        chromeViewController = v14->_chromeViewController;
        v14->_chromeViewController = v39;

        [(PUOneUpChromeViewController *)v14->_chromeViewController setDelegate:v14];
        objc_initWeak(&location, v14);
        v85[0] = MEMORY[0x1E69E9820];
        v85[1] = 3221225472;
        v85[2] = __92__PUOneUpViewController_initWithBrowsingSession_options_initialActivity_presentationOrigin___block_invoke;
        v85[3] = &unk_1E7B79E48;
        objc_copyWeak(&v86, &location);
        [(PUOneUpChromeViewController *)v14->_chromeViewController setChromeVisibilityAnimationDurationProvider:v85];
        [(PUOneUpViewController *)v14 _invalidateChromeViewController];
        [(PUOneUpViewController *)v14 px_enableBarAppearance];
        v41 = [[PUOneUpBarsController alloc] initWithStyle:4 browsingSession:v14->_browsingSession viewController:v14 actionsController:v14->_actionsController delegate:v14];
        barsController = v14->__barsController;
        v14->__barsController = v41;

        v14->__needsUpdateBarsController = 1;
        [(PUOneUpViewController *)v14 _invalidateBarAppearance];
        v43 = objc_alloc_init(PUOneUpScaledVideoOffsetAdjustmentPolicy);
        scaledVideoOffsetAdjustmentPolicy = v14->_scaledVideoOffsetAdjustmentPolicy;
        v14->_scaledVideoOffsetAdjustmentPolicy = v43;

        objc_destroyWeak(&v86);
        objc_destroyWeak(&location);
      }

      else
      {
        v45 = [[PUOneUpBarsController alloc] initWithStyle:v37 browsingSession:v14->_browsingSession viewController:v14 actionsController:v14->_actionsController delegate:v14];
        v46 = v14->__barsController;
        v14->__barsController = v45;

        v14->__needsUpdateBarsController = 1;
        v47 = objc_alloc_init(PUDoubleTapZoomController);
        doubleTapZoomController = v14->__doubleTapZoomController;
        v14->__doubleTapZoomController = v47;

        [(PUDoubleTapZoomController *)v14->__doubleTapZoomController setDelegate:v14];
      }

      _spec = [(PUOneUpViewController *)v14 _spec];
      allowAccessoryVisibility = [_spec allowAccessoryVisibility];

      if (allowAccessoryVisibility)
      {
        v51 = objc_alloc_init(PUAccessoryVisibilityInteractionController);
        accessoryVisibilityInteractionController = v14->__accessoryVisibilityInteractionController;
        v14->__accessoryVisibilityInteractionController = v51;

        [(PUAccessoryVisibilityInteractionController *)v14->__accessoryVisibilityInteractionController setDelegate:v14];
        [(PUAccessoryVisibilityInteractionController *)v14->__accessoryVisibilityInteractionController setBrowsingSession:sessionCopy];
        v53 = [PUOneUpAccessoryViewControllersManager alloc];
        browsingSession = v14->_browsingSession;
        [(PUOneUpViewController *)v14 _spec];
        v55 = viewModel;
        v56 = sessionCopy;
        v58 = v57 = v38;
        v59 = [(PUOneUpAccessoryViewControllersManager *)v53 initWithBrowsingSession:browsingSession spec:v58];
        accessoryViewControllersManager = v14->__accessoryViewControllersManager;
        v14->__accessoryViewControllersManager = v59;

        v38 = v57;
        sessionCopy = v56;
        viewModel = v55;
        v61 = v14->__accessoryViewControllersManager;
        unlockDeviceStatus = [(PUOneUpViewController *)v14 unlockDeviceStatus];
        [(PUOneUpAccessoryViewControllersManager *)v61 setUnlockDeviceStatus:unlockDeviceStatus];

        [(PUOneUpAccessoryViewControllersManager *)v14->__accessoryViewControllersManager setDelegate:v14];
        [(PUOneUpAccessoryViewControllersManager *)v14->__accessoryViewControllersManager setScrollPocketsEnabled:[(PUOneUpViewController *)v14 _enablePockets]];
        v63 = [objc_alloc(MEMORY[0x1E69C3590]) initWithContainerViewController:v14];
        cardPresentationController = v14->cardPresentationController;
        v14->cardPresentationController = v63;

        [(PXFloatingCardPresentationController *)v14->cardPresentationController setDelegate:v14];
      }

      v65 = objc_alloc_init(PUOneUpGestureRecognizerCoordinator);
      gestureRecognizerCoordinator = v14->__gestureRecognizerCoordinator;
      v14->__gestureRecognizerCoordinator = v65;

      [(PUOneUpGestureRecognizerCoordinator *)v14->__gestureRecognizerCoordinator setOneUpBarsController:v14->__barsController];
      [(PUOneUpGestureRecognizerCoordinator *)v14->__gestureRecognizerCoordinator setDoubleTapZoomController:v14->__doubleTapZoomController];
      [(PUOneUpGestureRecognizerCoordinator *)v14->__gestureRecognizerCoordinator setBrowsingSession:v14->_browsingSession];
      [(PUOneUpGestureRecognizerCoordinator *)v14->__gestureRecognizerCoordinator setDelegate:v14];
      touchingGestureRecognizer = [(PUOneUpGestureRecognizerCoordinator *)v14->__gestureRecognizerCoordinator touchingGestureRecognizer];
      [touchingGestureRecognizer addTarget:v14 action:sel__handleTouchGesture_];
    }

    v68 = options & 2;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v14 selector:sel__browsingVideoPlayerDidPlayToEndTime_ name:PUBrowsingVideoPlayerDidPlayToEndTimeNotification object:0];
    [defaultCenter addObserver:v14 selector:sel__keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
    [defaultCenter addObserver:v14 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
    [defaultCenter addObserver:v14 selector:sel__preheatAdjacentAssetsForPhotosDetailsContext name:*MEMORY[0x1E696A7D8] object:0];
    v70 = +[PUOneUpSettings sharedInstance];
    allowParallax = [v70 allowParallax];

    if (allowParallax && !UIAccessibilityIsReduceMotionEnabled())
    {
      v72 = objc_alloc_init(PUParallaxComputer);
      parallaxComputer = v14->__parallaxComputer;
      v14->__parallaxComputer = v72;

      v74 = v14->__parallaxComputer;
      v75 = +[PUOneUpSettings sharedInstance];
      -[PUParallaxComputer setModel:](v74, "setModel:", [v75 parallaxModel]);

      v76 = v14->__parallaxComputer;
      v77 = +[PUOneUpSettings sharedInstance];
      [v77 parallaxFactor];
      [(PUParallaxComputer *)v76 setParallaxFactor:v78 / 100.0];

      [(PUParallaxComputer *)v14->__parallaxComputer setAxis:1];
    }

    v79 = [[PUBrowsingOneUpVisibilityHelper alloc] initWithBrowsingViewModel:viewModel isPresentedForSecondScreen:v68 != 0];
    [(PUOneUpViewController *)v14 setBrowsingOneUpVisibilityHelper:v79];

    v80 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    activeVideoTileControllers = v14->_activeVideoTileControllers;
    v14->_activeVideoTileControllers = v80;

    v14->_preferredContentSizeOverride = *MEMORY[0x1E695F060];
    v14->__needsUpdatePreferredContentSize = 1;
    [(PUOneUpViewController *)v14 _updateImageAnalysisInteractionDelegate];
    v82 = objc_alloc_init(PUOneUpSpatialToastController);
    [(PUOneUpViewController *)v14 setSpatialToastController:v82];
  }

  return v14;
}

double __92__PUOneUpViewController_initWithBrowsingSession_options_initialActivity_presentationOrigin___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained browsingSession];
  v3 = [v2 viewModel];
  v4 = PUChromeAnimationDuration(v3);

  return v4;
}

+ (NSString)oneUpActivityTitle
{
  if (oneUpActivityTitle_onceToken != -1)
  {
    dispatch_once(&oneUpActivityTitle_onceToken, &__block_literal_global_1022);
  }

  v3 = oneUpActivityTitle_oneUpActivityTitle;

  return v3;
}

uint64_t __43__PUOneUpViewController_oneUpActivityTitle__block_invoke()
{
  v0 = px_deferredLocalizedStringWithFormat();
  v1 = oneUpActivityTitle_oneUpActivityTitle;
  oneUpActivityTitle_oneUpActivityTitle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end