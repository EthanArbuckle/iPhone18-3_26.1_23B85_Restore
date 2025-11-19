@interface PUOneUpViewController
+ (NSString)oneUpActivityTitle;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)playerCurrentTimeForActionPerformer:(SEL)a3;
- (BOOL)_allowsShowingVisualIntelligenceForAsset:(id)a3;
- (BOOL)_allowsVisualLookupInInfoPanelMode;
- (BOOL)_canAdvertiseKeyCommands;
- (BOOL)_canAttemptNavigationToAssetDisplayDescriptor:(id)a3;
- (BOOL)_canShowAccessoryViewForCurrentAsset;
- (BOOL)_enablePockets;
- (BOOL)_isAccessoryAvailableForCurrentAsset;
- (BOOL)_isAccessoryVisible;
- (BOOL)_isAssetEligibleForTip:(id)a3;
- (BOOL)_isCameraDetailsAccessory;
- (BOOL)_isCurrentAssetAndInEditModeForAssetReference:(id)a3;
- (BOOL)_isDetailsAccessoryAvailableForAssetReference:(id)a3;
- (BOOL)_isDrivingScrubbing;
- (BOOL)_isLayoutAffectedBySpecChange:(id)a3;
- (BOOL)_isLocationFromProvider:(id)a3 overTileOfKind:(id)a4 insetBy:(UIEdgeInsets)a5;
- (BOOL)_isLocationFromProviderInAccessoryArea:(id)a3;
- (BOOL)_isLocationFromProviderOverActionInfoItem:(id)a3;
- (BOOL)_isLocationFromProviderOverControl:(id)a3;
- (BOOL)_isLocationFromProviderOverImageSubject:(id)a3;
- (BOOL)_isLocationFromProviderOverInteractiveItem:(id)a3;
- (BOOL)_isLocationFromProviderOverInteractiveItemExcludingImageSubject:(id)a3;
- (BOOL)_isLocationFromProviderOverSyndicationAttributionPill:(id)a3;
- (BOOL)_isLocationFromProviderOverVisualSearch:(id)a3;
- (BOOL)_isSecondScreenBrowserVisible;
- (BOOL)_isVisualImageHasSubjectLiftedFromProvider:(id)a3;
- (BOOL)_isZoomedIn;
- (BOOL)_needsUpdate;
- (BOOL)_prefersFloatingInfoPanel;
- (BOOL)_shouldMakeChromeVisibleWhenVideoPlayerPlaysToEndTime:(id)a3;
- (BOOL)_shouldPreventScaledOffsetAdjustments;
- (BOOL)_visualImageHasActiveTextSelectionFromProvider:(id)a3;
- (BOOL)_vkImageOverlayAllowsVKCToHandleLongPressGestureFromProvider:(id)a3;
- (BOOL)_wantsShowInLibraryButtonForAllAssets;
- (BOOL)accessoryTileViewControllerShouldUseSquareImageWhenShowingAccessoryView:(id)a3;
- (BOOL)accessoryTileViewControllerWillHideNavigationBarWhenShowingAccessoryView:(id)a3;
- (BOOL)accessoryTileViewControllerWillHideToolbarWhenShowingAccessoryView:(id)a3;
- (BOOL)analysisInteractionAllowedForImageAnalysisInteraction:(id)a3;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)doubleTapZoomController:(id)a3 canDoubleTapBeginAtLocationFromProvider:(id)a4;
- (BOOL)interactiveDismissalController:(id)a3 canBeginDismissalAtLocationFromProvider:(id)a4;
- (BOOL)isFloatingInfoPanelPresented;
- (BOOL)layout:(id)a3 canApplyInsetStylingToItemAtIndexPath:(id)a4;
- (BOOL)layout:(id)a3 isShowingInfoPanelForItemAtIndexPath:(id)a4;
- (BOOL)layout:(id)a3 shouldInitiallyZoomToFillForItemAtIndexPath:(id)a4 contentSize:(CGSize)a5 viewportSize:(CGSize)a6;
- (BOOL)layout:(id)a3 shouldMovePeopleRowForItemAtIndexPath:(id)a4;
- (BOOL)layout:(id)a3 shouldMoveProgressIndicatorForItemAtIndexPath:(id)a4;
- (BOOL)layout:(id)a3 shouldShowAccessoryForItemAtIndexPath:(id)a4;
- (BOOL)layout:(id)a3 shouldShowAttributionViewForItemAtIndexPath:(id)a4;
- (BOOL)layout:(id)a3 shouldShowBufferingIndicatorForItemAtIndexPath:(id)a4;
- (BOOL)layout:(id)a3 shouldShowCropButtonForItemAtIndexPath:(id)a4;
- (BOOL)layout:(id)a3 shouldShowPeopleRowForItemAtIndexPath:(id)a4;
- (BOOL)layout:(id)a3 shouldShowPlayButtonForItemAtIndexPath:(id)a4;
- (BOOL)layout:(id)a3 shouldShowVideoPlaceholderForItemAtIndexPath:(id)a4;
- (BOOL)layout:(id)a3 shouldUseSquareImageInAccessoryForItemAtIndexPath:(id)a4;
- (BOOL)layoutShouldShowReviewScreenScrubberBar:(id)a3;
- (BOOL)livePhotoVideoPlaybackTileViewControllerCanBeginPlaying:(id)a3 locationProvider:(id)a4;
- (BOOL)oneUpActionsControllerDismissPresentedViewController:(id)a3;
- (BOOL)oneUpActionsControllerIsDetailsAccessoryAvailable:(id)a3;
- (BOOL)oneUpActionsControllerPrefersInclusionAfterRemoval:(id)a3 forActionType:(unint64_t)a4;
- (BOOL)oneUpBarsController:(id)a3 canShowCommentsForAsset:(id)a4;
- (BOOL)oneUpBarsController:(id)a3 shouldHideNavigationBarWhenShowingAccessoryViewForAssetReference:(id)a4;
- (BOOL)oneUpBarsController:(id)a3 shouldHideStatusBarWhenShowingAccessoryViewForAssetReference:(id)a4;
- (BOOL)oneUpBarsController:(id)a3 shouldHideToolbarWhenShowingAccessoryViewForAssetReference:(id)a4;
- (BOOL)oneUpBarsController:(id)a3 shouldTapBeginAtLocationFromProvider:(id)a4;
- (BOOL)oneUpChromeViewControllerIsDeviceUnlocked:(id)a3;
- (BOOL)oneUpGestureController:(id)a3 canBeginGestureAt:(id)a4;
- (BOOL)oneUpGestureController:(id)a3 canDoubleTapToZoomAtPoint:(id)a4;
- (BOOL)oneUpGestureController:(id)a3 canPerformSelectionAtPoint:(id)a4;
- (BOOL)oneUpGestureController:(id)a3 canTapToToggleChromeAtPoint:(id)a4;
- (BOOL)oneUpGestureController:(id)a3 shouldRecognizeGestureRecognizer:(id)a4 simultaneouslyWithOtherGestureRecognizer:(id)a5;
- (BOOL)oneUpGestureRecognizerCoordinator:(id)a3 shouldAllowIrisGestureAtLocationFromProvider:(id)a4;
- (BOOL)overOneUpPresentationSessionPresentingViewControllerIsReady:(id)a3;
- (BOOL)playButtonTileViewControllerShouldShowPauseButton:(id)a3;
- (BOOL)playButtonTileViewControllerShouldShowPlayButtonWhileActivated:(id)a3;
- (BOOL)ppt_imageTileViewControllerShouldSignalDeferredProcessingDoneAndFinalImageDisplayed:(id)a3;
- (BOOL)prefersStatusBarHidden;
- (BOOL)prepareForDismissingForced:(BOOL)a3;
- (BOOL)pu_wantsNavigationBarVisible;
- (BOOL)pu_wantsToolbarVisible;
- (BOOL)tilingViewCanBypass20069585Check:(id)a3;
- (BOOL)userTransformTileViewController:(id)a3 shouldReceiveTouchAtLocationFromProvider:(id)a4;
- (BOOL)userTransformTileViewControllerShouldAnimateMinimumScaleWhileApplyingInsets:(id)a3;
- (BOOL)videoTilesCanPlayVideo;
- (BOOL)wantsActionsMenu;
- (BOOL)wantsSpotlightStyling;
- (BOOL)xct_isCurrentImageDeferredProcessingFinished;
- (BOOL)xct_isCurrentImageFullQuality;
- (CGImage)livePhotoVideoPlaybackTileViewControllerCurrentGainMapImage:(id)a3 outGainMapAvailable:(BOOL *)a4 outGainMapValue:(float *)a5;
- (CGPoint)layout:(id)a3 accessoryOffsetForItemAtIndexPath:(id)a4;
- (CGPoint)layout:(id)a3 contentOffsetForItemAtIndexPath:(id)a4;
- (CGPoint)tilingView:(id)a3 initialVisibleOriginWithLayout:(id)a4;
- (CGRect)_currentFrameForTileController:(id)a3;
- (CGRect)layout:(id)a3 bestSquareRectForItemAtIndexPath:(id)a4;
- (CGRect)ppt_scrollableBoundsForTesting;
- (CGSize)_layoutReferenceSize;
- (CGSize)_pendingViewTransitionSize;
- (CGSize)layout:(id)a3 assetExplorerReviewScreenBadgeSizeForItemAtIndexPath:(id)a4;
- (CGSize)layout:(id)a3 badgeSizeForItemAtIndexPath:(id)a4 contentWidth:(double)a5;
- (CGSize)layout:(id)a3 loadingIndicatorSizeForItemAtIndexPath:(id)a4;
- (CGSize)layout:(id)a3 pixelSizeForItemAtIndexPath:(id)a4;
- (CGSize)preferredContentSizeOverride;
- (NSArray)_tileKindsToHide;
- (NSString)authenticationTitle;
- (NSString)passcodeAuthenticationReason;
- (PUAccessoryContentViewController)currentFloatingInfoPanelAccessoryViewController;
- (PUOneUpPhototypeSupportController)phototypeSupportController;
- (PUOneUpViewController)_mainOneUpForSecondScreenBrowser;
- (PUOneUpViewController)initWithBrowsingSession:(id)a3 options:(unint64_t)a4 initialActivity:(unint64_t)a5 presentationOrigin:(int64_t)a6;
- (PUOneUpVisualImageAnalyzingController)visualImageAnalyzingController;
- (PUShazamEventsController)shazamEventsController;
- (PXAssetActionManager)assetActionManager;
- (UIActivityItemsConfigurationReading)activityItemsConfiguration;
- (UIEdgeInsets)layout:(id)a3 insetsWhenScaledToFitForItemAtIndexPath:(id)a4 inViewportSize:(CGSize)a5;
- (UIView)chromeView;
- (UIView)ppt_scrubberView;
- (double)alphaForReviewScreenBarsInLayout:(id)a3;
- (double)layout:(id)a3 aspectRatioForItemAtIndexPath:(id)a4;
- (double)layout:(id)a3 insetContentCornerRadiusForItemAtIndexPath:(id)a4;
- (double)layout:(id)a3 leadingBadgesWidthForItemAtIndexPath:(id)a4 contentWidth:(double)a5;
- (double)layout:(id)a3 minimumItemHeightNeededInAccessoryForItemAtIndexPath:(id)a4;
- (double)layout:(id)a3 minimumVisibleAccessoryHeightForItemAtIndexPath:(id)a4;
- (double)layout:(id)a3 minimumVisibleContentHeightForItemAtIndexPath:(id)a4;
- (double)livePhotoVideoPlaybackTileViewControllerExtraMinimumTouchDuration:(id)a3 locationProvider:(id)a4;
- (double)playButtonTileViewController:(id)a3 delayForButtonAnimation:(BOOL)a4;
- (double)px_HDRFocus;
- (double)px_imageModulationIntensity;
- (double)tilingViewControllerTransitionProgressAtWhichChromeIsFullyFadedOut:(id)a3;
- (id)_additionalExcludedMenuActionTypes;
- (id)_assetDisplayDescriptorForAsset:(id)a3;
- (id)_assetReferenceAtIndexPath:(id)a3 layout:(id)a4;
- (id)_assetViewModelAtIndexPath:(id)a3 layout:(id)a4;
- (id)_assetsToPrefetchForCount:(int)a3;
- (id)_assetsToPrefetchUsingDataSource:(id)a3 startingAt:(id)a4 count:(int64_t)a5 reverseDirection:(BOOL)a6;
- (id)_contentTileControllerForAssetReference:(id)a3;
- (id)_cropButtonTileViewControllerForCurrentAsset;
- (id)_currentAccessoryViewController;
- (id)_currentAssetViewModel;
- (id)_currentContentTileController;
- (id)_currentPlaceholderSnapshotViewForTileController:(id)a3;
- (id)_leadingContentTileController;
- (id)_livePhotoBadge;
- (id)_menuElements;
- (id)_newOneUpLayout;
- (id)_passthroughViews;
- (id)_presentedTileControllerForCurrentIndexPathWithKind:(id)a3;
- (id)_presentedTileControllerForIndexPath:(id)a3 kind:(id)a4;
- (id)_syndicationPillView;
- (id)_trailingContentTileController;
- (id)_userTransformTileControllerAtLocationFromProvider:(id)a3;
- (id)_userTransformTileViewControllerForCurrentAsset;
- (id)_videoPlayerAtIndexPath:(id)a3 layout:(id)a4;
- (id)accessoryTileViewControllerAccessoryViewController:(id)a3;
- (id)additionalContextMenuActionsForAttributionTileViewController:(id)a3;
- (id)barsControllerViewHostingGestureRecognizers:(id)a3;
- (id)browsingTileViewAnimator;
- (id)contentViewControllerForAirPlayController:(id)a3;
- (id)contentViewForImageAnalysisInteraction:(id)a3;
- (id)createAssetTransitionInfo;
- (id)currentImageAnalysisInteraction;
- (id)interactiveDismissalControllerDesignatedTileController:(id)a3;
- (id)irisImageTileViewController:(id)a3 delegateForGestureRecognizer:(id)a4;
- (id)keyCommands;
- (id)layout:(id)a3 modelTileTransformForItemAtIndexPath:(id)a4;
- (id)livePhotoVideoPlaybackTileViewControllerCurrentImage:(id)a3;
- (id)livePhotoVideoPlaybackTileViewControllerDisplayTileTransform:(id)a3;
- (id)oneUpBarsControllerCustomActionMenuElements:(id)a3;
- (id)oneUpChromeViewControllerFullSizeOneUpHostingView:(id)a3;
- (id)overOneUpPresentationSessionBrowserViewModel:(id)a3;
- (id)overOneUpPresentationSessionCreateIfNeeded:(BOOL)a3;
- (id)presentationControllerForTipID:(id)a3;
- (id)presentationEnvironmentForActionPerformer:(id)a3;
- (id)pu_debugCurrentAsset;
- (id)pu_debugCurrentPrivacyController;
- (id)pu_debugCurrentViewModel;
- (id)pu_debugRows;
- (id)px_diagnosticsItemProvidersForPoint:(CGPoint)a3 inCoordinateSpace:(id)a4;
- (id)sourceItemForTipID:(id)a3;
- (id)textsToHighlightForImageAnalysisInteraction:(id)a3;
- (id)tilingView:(id)a3 scrollInfoWithLayout:(id)a4;
- (id)tilingView:(id)a3 tileControllerWithIndexPath:(id)a4 kind:(id)a5 dataSource:(id)a6;
- (id)tilingView:(id)a3 tileTransitionCoordinatorForChangeFromFrame:(CGRect)a4 toFrame:(CGRect)a5 duration:(double)a6;
- (id)tilingView:(id)a3 tileTransitionCoordinatorForLayoutInvalidationContext:(id)a4;
- (id)tilingView:(id)a3 tileTransitionCoordinatorForReattachedTileControllers:(id)a4 context:(id)a5;
- (id)tilingView:(id)a3 tileTransitionCoordinatorForTransitionFromLayout:(id)a4 toLayout:(id)a5 withContext:(id)a6;
- (id)tilingViewControllerTransition:(id)a3 tilingViewToTransferToEndPoint:(id)a4;
- (int64_t)_accessoryContentKindForAsset:(id)a3;
- (int64_t)_accessoryContentKindForCurrentAsset;
- (int64_t)_insetModeForAsset:(id)a3;
- (int64_t)layout:(id)a3 insetModeForItemAtIndexPath:(id)a4;
- (int64_t)pu_preferredBarStyle;
- (int64_t)userTransformTileViewController:(id)a3 insetModeForItemAtIndexPath:(id)a4;
- (unint64_t)routingOptionsForDestination:(id)a3;
- (void)_abandonTileController:(id)a3;
- (void)_arrowKey:(id)a3;
- (void)_beginVKSubjectAnalyzingWithGestureRecognizer:(id)a3 beginID:(unint64_t)a4;
- (void)_browsingVideoPlayerDidPlayToEndTime:(id)a3;
- (void)_cancelTimedChromeAutoHide;
- (void)_chromeAutoHideTimerFired:(id)a3;
- (void)_configureAdoptedTileController:(id)a3;
- (void)_configurePocketStyle:(id)a3;
- (void)_configureVitalityController;
- (void)_didEndTransition;
- (void)_dimFloatingInfoPanelAnimated:(BOOL)a3;
- (void)_dismissAnyPresentedTip;
- (void)_dismissFloatingInfoPanelAnimated:(BOOL)a3;
- (void)_dismissTipPopoverAnimated:(BOOL)a3;
- (void)_editAdjust:(id)a3;
- (void)_editCleanup:(id)a3;
- (void)_editCrop:(id)a3;
- (void)_editFilter:(id)a3;
- (void)_editStyles:(id)a3;
- (void)_handleDeferredProcessingFinishedForAssetUUID:(id)a3;
- (void)_handleSuggestedActionCompletedForTip:(id)a3 completion:(id)a4;
- (void)_handleTouchGesture:(id)a3;
- (void)_handleUnlockDeviceForActionType:(unint64_t)a3 success:(BOOL)a4;
- (void)_handleZoomOutCurrentAsset;
- (void)_hideChromeOnPlayButtonTapWithItemIsNowPlaying:(BOOL)a3 buttonIsOverlayed:(BOOL)a4;
- (void)_hideOverlays;
- (void)_informVKCOverlayToKickOffSubjectAnalyzing;
- (void)_invalidateInfoPanelLayoutAnimated:(BOOL)a3;
- (void)_isPresentedForPreviewDidChange;
- (void)_keyboardWillShow:(id)a3;
- (void)_notifyTileIsReadyWithTimeOut:(double)a3 completionHandler:(id)a4;
- (void)_performNavigationToAssetDisplayDescriptor:(id)a3 beforeDate:(id)a4 completionHandler:(id)a5;
- (void)_performPXActionType:(id)a3;
- (void)_preheatAdjacentAssetsForPhotosDetailsContext;
- (void)_preheatAssetsForSpatialGeneration;
- (void)_presentAlertForUnplayableAssetReference:(id)a3;
- (void)_presentFloatingInfoPanelAnimated:(BOOL)a3;
- (void)_scheduleTimedChromeAutoHide;
- (void)_setAccessoryVisible:(BOOL)a3 changeReason:(int64_t)a4;
- (void)_setContentUnavailableConfiguration:(id)a3;
- (void)_setIrisPlaying:(BOOL)a3;
- (void)_setLayoutReferenceSize:(CGSize)a3;
- (void)_setPrefersHomeIndicatorHidden:(BOOL)a3;
- (void)_setSecondScreenBrowser:(id)a3;
- (void)_setTilingView:(id)a3;
- (void)_setWindowInterfaceOrientation:(int64_t)a3;
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
- (void)_updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)_updateEditModeIfNeeded;
- (void)_updateFloatingInfoPanel;
- (void)_updateFloatingInfoPanelIfNeeded;
- (void)_updateGestureController;
- (void)_updateIfNeeded;
- (void)_updateImageAnalysisInteractionAdditionalActionInfoEdgeInsetsIfNeeded;
- (void)_updateImageAnalysisInteractionDelegate;
- (void)_updateLayout:(id)a3;
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
- (void)accessoryVisibilityInteractionController:(id)a3 setAccessoryVisible:(BOOL)a4 changeReason:(int64_t)a5;
- (void)accessoryVisibilityInteractionControllerDidEnd:(id)a3;
- (void)addAssetsToAlbum:(id)a3;
- (void)addAssetsToLastUsedAlbum:(id)a3;
- (void)adjustDateTime:(id)a3;
- (void)adjustLocation:(id)a3;
- (void)airPlayControllerScreenAvailabilityChanged:(id)a3;
- (void)appIntentsEnumerateAssetCollections:(id)a3;
- (void)appIntentsEnumerateAssets:(id)a3;
- (void)autoEnhanceAssets:(id)a3;
- (void)badgeVisibilityDidChange:(id)a3;
- (void)barsControllerContentGuideInsetsDidChange:(id)a3;
- (void)copy:(id)a3;
- (void)copyAdjustments:(id)a3;
- (void)createMenuActionControllerForManagerIfNeeded:(id)a3 withPresentingViewController:(id)a4 regionOfInterestProvider:(id)a5;
- (void)cropButtonTileViewController:(id)a3 didSelectAspectRatio:(CGSize)a4;
- (void)dealloc;
- (void)deleteAssets:(id)a3;
- (void)dismissPresentedViewController:(id)a3 presentMenuWithCompletion:(id)a4;
- (void)duplicateAssets:(id)a3;
- (void)favoriteAssets:(id)a3;
- (void)hideAssets:(id)a3;
- (void)imageAnalysisInteractionIsDrivingLivePhotoPlaybackDidChange:(id)a3;
- (void)imageAnalysisInteractionSubjectInteractionInProgressDidChange:(id)a3;
- (void)imageTileViewController:(id)a3 didDisplayFullQualityImageWithDeferredProcessingFinished:(BOOL)a4;
- (void)interactiveDismissalControllerChangedIsHandlingDismissalInteraction:(id)a3;
- (void)irisImageTileViewControllerDidBeginHinting:(id)a3;
- (void)irisImageTileViewControllerDidBeginPlaying:(id)a3;
- (void)irisImageTileViewControllerDidEndPlaying:(id)a3;
- (void)irisImageTileViewControllerDidEndVitality:(id)a3;
- (void)layout:(id)a3 willApplyDisplayTileTransform:(id)a4 forItemAtIndexPath:(id)a5;
- (void)livePhotoVideoPlaybackTileViewControllerDidEndPlaying:(id)a3;
- (void)livePhotoVideoPlaybackTileViewControllerWillBeginPlaying:(id)a3;
- (void)loadView;
- (void)loadingStatusManager:(id)a3 didUpdateLoadingStatus:(id)a4 forItemIdentifier:(id)a5;
- (void)navigateToAssetDisplayDescriptor:(id)a3 beforeDate:(id)a4 completionHandler:(id)a5;
- (void)navigateToDestination:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)oneUpActionsController:(id)a3 zoomAtLocationProvider:(id)a4;
- (void)oneUpActionsControllerToggleChromeVisibility:(id)a3;
- (void)oneUpAssetTransition:(id)a3 animateTransitionWithContext:(id)a4 duration:(double)a5 completion:(id)a6;
- (void)oneUpAssetTransition:(id)a3 requestTransitionContextWithCompletion:(id)a4 options:(unint64_t)a5;
- (void)oneUpBarsControllerDidChangeShowingPlayPauseButton:(id)a3;
- (void)oneUpBarsControllerDidTapTitle:(id)a3;
- (void)oneUpBarsControllerWillPresentActionsMenu:(id)a3 completionHandler:(id)a4;
- (void)oneUpChromeViewControllerAdditionalActionInfoEdgeInsetsDidChange:(id)a3;
- (void)oneUpChromeViewControllerRequestDeviceUnlock:(id)a3 for:(unint64_t)a4;
- (void)overOneUpPresentationSession:(id)a3 didPresent:(id)a4;
- (void)overOneUpPresentationSessionDidFinish:(id)a3;
- (void)pasteAdjustments:(id)a3;
- (void)playButtonTileViewControllerDidTapButton:(id)a3;
- (void)ppt_notifyWhenDeferredProcessingIsDoneAndFinalImageDisplayedWithTimeout:(double)a3 handler:(id)a4;
- (void)ppt_notifyWhenVKAnalysisIsReadyWithTimeout:(double)a3 handler:(id)a4;
- (void)ppt_playCurrentLivePhotoWithCompletionHandler:(id)a3;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)prepareTipPopover:(id)a3 tipID:(id)a4;
- (void)presentErrorFromLoadingIndicator:(id)a3;
- (void)presentPeopleViewController:(id)a3;
- (void)print:(id)a3;
- (void)purgeIfPossible;
- (void)pushPeopleViewController:(id)a3;
- (void)restoreAssets:(id)a3;
- (void)restoreAssetsWithoutConfirmation:(id)a3;
- (void)revertAdjustments:(id)a3;
- (void)rotateAssetsClockwise:(id)a3;
- (void)rotateAssetsCounterclockwise:(id)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setAppearState:(int)a3;
- (void)setAppearanceTransitionAnimationsDisabled:(BOOL)a3;
- (void)setUnlockDeviceHandlerWithActionType:(id)a3;
- (void)setUnlockDeviceStatus:(id)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)shareAssets:(id)a3;
- (void)showDetailsViewForImageAnalysisInteraction:(id)a3;
- (void)tilingViewControllerTransition:(id)a3 abandonTilingView:(id)a4 toEndPoint:(id)a5;
- (void)tilingViewControllerTransition:(id)a3 adoptTilingView:(id)a4 fromEndPoint:(id)a5 isCancelingTransition:(BOOL)a6 animationSetupCompletionHandler:(id)a7;
- (void)tipPopoverDidDismissWithTipID:(id)a3;
- (void)tipPopoverDidPresentWithTipID:(id)a3;
- (void)toggleEditor:(id)a3;
- (void)togglePlayback:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)trashAssets:(id)a3;
- (void)trashAssetsWithoutConfirmation:(id)a3;
- (void)userTransformTileViewController:(id)a3 didChangeIsUserInteracting:(BOOL)a4;
- (void)validateCommand:(id)a3;
- (void)viewControllerSpec:(id)a3 didChange:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewModel:(id)a3 didChange:(id)a4;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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

- (void)appIntentsEnumerateAssets:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (!v5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:7461 description:{@"Invalid parameter not satisfying: %@", @"assetHandler"}];
  }

  v6 = [(PUOneUpViewController *)self browsingSession];
  v7 = [v6 privacyController];
  v8 = [v7 isLocked];

  if (!v8)
  {
    v10 = [v6 viewModel];
    v11 = [v10 currentAssetReference];
    v12 = [v11 asset];

    v13 = v12;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v14 = v13;

      if (!v14)
      {
LABEL_13:

        goto LABEL_14;
      }

      v15 = [(PUOneUpViewController *)self view];
      [v15 bounds];
      v5[2](v5, v14, 1);
    }

    else
    {
      v14 = 0;
      v15 = v13;
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

- (void)appIntentsEnumerateAssetCollections:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (!v5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:7444 description:{@"Invalid parameter not satisfying: %@", @"assetCollectionHandler"}];
  }

  v6 = [(PUOneUpViewController *)self browsingSession];
  v7 = [v6 privacyController];
  v8 = [v7 isLocked];

  if (!v8)
  {
    v10 = [v6 viewModel];
    v11 = [v10 currentAssetReference];
    v12 = [v11 assetCollection];

    v13 = v12;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v14 = v13;

      if (!v14)
      {
LABEL_13:

        goto LABEL_14;
      }

      v15 = [(PUOneUpViewController *)self view];
      [v15 bounds];
      v5[2](v5, v14, 1);
    }

    else
    {
      v14 = 0;
      v15 = v13;
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
  v2 = [(PUOneUpViewController *)self _currentContentTileController];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 isDeferredProcessingFinished];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)xct_isCurrentImageFullQuality
{
  v2 = [(PUOneUpViewController *)self _currentContentTileController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 isDisplayingFullQualityImage];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_xct_endSignpostingForImageDeferredProcessing
{
  v3 = [(PUOneUpViewController *)self xct_waitForDeferredProcessingTimer];
  v4 = [v3 isValid];

  if (v4)
  {
    v5 = [(PUOneUpViewController *)self xct_waitForDeferredProcessingTimer];
    [v5 invalidate];

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
  v3 = [(PUOneUpViewController *)self xct_waitForFullQualityImageTimer];
  v4 = [v3 isValid];

  if (v4)
  {
    v5 = [(PUOneUpViewController *)self xct_waitForFullQualityImageTimer];
    [v5 invalidate];

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
  v4 = [(PUOneUpViewController *)self _currentContentTileController];
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

    if ([v4 isDisplayingFullQualityImage])
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

    if (![v4 isDeferredProcessingFinished])
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

  v3 = [(PUOneUpViewController *)self browsingSession];
  v4 = [v3 viewModel];

  if ([v4 contentPrivacyState] != 1)
  {
    v7 = [v4 currentAssetReference];
    v8 = [v7 asset];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v9 = v8;

      if (v9)
      {
        v10 = [(PUOneUpViewController *)self boopableItemsProvider];

        if (!v10)
        {
          v11 = activityItemsConfiguration_boopLog;
          if (os_log_type_enabled(activityItemsConfiguration_boopLog, OS_LOG_TYPE_DEFAULT))
          {
            v12 = v11;
            v13 = [v9 uuid];
            *buf = 138543362;
            v24 = v13;
            _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_DEFAULT, "Creating boopable item provider for 1up asset %{public}@", buf, 0xCu);
          }

          v14 = objc_alloc_init(MEMORY[0x1E69C3388]);
          [(PUOneUpViewController *)self setBoopableItemsProvider:v14];

          v22 = v9;
          v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
          v16 = [(PUOneUpViewController *)self boopableItemsProvider];
          [v16 setAssets:v15];

          v17 = [MEMORY[0x1E69C4568] defaultManager];
          v18 = [v17 imageProviderForAsset:v9];

          v19 = [(PUOneUpViewController *)self boopableItemsProvider];
          [v19 setImagePreviewMediaProvider:v18];
        }

        v6 = [(PUOneUpViewController *)self boopableItemsProvider];
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
    v6 = 0;
    goto LABEL_19;
  }

  v5 = activityItemsConfiguration_boopLog;
  if (os_log_type_enabled(activityItemsConfiguration_boopLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_ERROR, "Couldn't create an 1up boopable item provider because 1up is currently locked", buf, 2u);
  }

  v6 = 0;
LABEL_20:

  return v6;
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
    v3 = [(PUOneUpViewController *)self browsingSession];
    v4 = [v3 viewModel];

    if ([v4 contentPrivacyState] == 1)
    {
      v5 = [(PUOneUpViewController *)self siriActionActivity];
      [v5 resignCurrent];

      [(PUOneUpViewController *)self setSiriActionActivity:0];
    }

    else if (([v4 isScrubbing] & 1) == 0)
    {
      v6 = [v4 currentAssetReference];
      v7 = [v6 asset];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 creationDate];
        [v9 timeIntervalSinceNow];
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
        v16 = v6;
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

- (void)loadingStatusManager:(id)a3 didUpdateLoadingStatus:(id)a4 forItemIdentifier:(id)a5
{
  v24 = a5;
  v8 = a4;
  v9 = [(PUOneUpViewController *)self browsingSession];
  v10 = [v9 viewModel];
  v11 = [v10 currentAssetReference];
  v12 = [v11 asset];

  v13 = [v8 error];

  if (v13)
  {
    v14 = [v12 uuid];
    if ([v24 isEqual:v14])
    {
    }

    else
    {
      v15 = +[PUOneUpSpatialToastController statusManagerItemIdentifier];
      v16 = [v24 isEqual:v15];

      if (!v16)
      {
        goto LABEL_8;
      }
    }

    v17 = [PUEditingErrorPresentationController alloc];
    v18 = v12;
    v19 = v18;
    if (v18)
    {
      if ([v18 conformsToProtocol:&unk_1F2BDF538])
      {
LABEL_7:
        v20 = [(PUEditingErrorPresentationController *)v17 initWithError:v13 forAsset:v19];

        v21 = [(PUErrorPresentationController *)v20 alertControllerWithCompletion:&__block_literal_global_1020];
        [(PUOneUpViewController *)self presentViewController:v21 animated:1 completion:0];

        goto LABEL_8;
      }

      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [v19 px_descriptionForAssertionMessage];
      [v22 handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:7210 description:{@"%@ should conform to protocol %@, but %@ doesn't", @"asset", @"PUEditableAsset", v23}];
    }

    else
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      [v22 handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:7210 description:{@"%@ should conform to protocol %@, but it is nil", @"asset", @"PUEditableAsset"}];
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (id)_assetDisplayDescriptorForAsset:(id)a3
{
  v3 = a3;
  v4 = [[PUAssetReference alloc] initWithAsset:v3 assetCollection:0 indexPath:0 dataSourceIdentifier:0];

  v5 = [PUAssetDisplayDescriptor assetDisplayDescriptorForSimpleNavigationToAssetReference:v4];

  return v5;
}

- (void)navigateToDestination:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = [a3 asset];
  v9 = [(PUOneUpViewController *)self _assetDisplayDescriptorForAsset:v8];

  v10 = MEMORY[0x1E695DF00];
  v11 = [MEMORY[0x1E69C3350] sharedInstance];
  [v11 defaultNavigationTimeoutDuration];
  v12 = [v10 dateWithTimeIntervalSinceNow:?];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__PUOneUpViewController_navigateToDestination_options_completionHandler___block_invoke;
  v14[3] = &unk_1E7B7C940;
  v15 = v7;
  v13 = v7;
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

- (unint64_t)routingOptionsForDestination:(id)a3
{
  v4 = a3;
  if ([v4 type] == 7 && (objc_msgSend(v4, "asset"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [v4 asset];
    v7 = [(PUOneUpViewController *)self _assetDisplayDescriptorForAsset:v6];

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
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [v4 px_descriptionForAssertionMessage];
      [v6 handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:7177 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[self _presentedTileControllerForCurrentIndexPathWithKind:PUTileKindCropButton]", v8, v9}];
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
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [v4 px_descriptionForAssertionMessage];
      [v6 handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:7173 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[self _presentedTileControllerForCurrentIndexPathWithKind:PUTileKindUserTransform]", v8, v9}];
    }
  }

  return v4;
}

- (void)_informVKCOverlayToKickOffSubjectAnalyzing
{
  v3 = +[PUOneUpSettings sharedInstance];
  v4 = [v3 allowsVisualIntelligenceRemoveBackground];

  if (v4)
  {
    v5 = [(PUOneUpViewController *)self currentImageAnalysisInteraction];
    [v5 beginImageSubjectAnalysisIfNecessary];
  }
}

- (BOOL)_isLocationFromProviderOverSyndicationAttributionPill:(id)a3
{
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v5 = [(PUOneUpViewController *)self _tilingView];
  [v4 locationInView:v5];
  v7 = v6 + -0.5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__PUOneUpViewController__isLocationFromProviderOverSyndicationAttributionPill___block_invoke;
  v13[3] = &unk_1E7B79F58;
  v9 = v8 + -0.5;
  v16 = v6;
  v17 = v8;
  v10 = v5;
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
  v5 = [(PUOneUpViewController *)self _tilingView];
  [v5 setCanDriveVitality:{-[PUOneUpViewController _isPresentedForSecondScreen](self, "_isPresentedForSecondScreen") ^ 1}];
  if ([(PUOneUpViewController *)self _isIrisPlaying])
  {
    IsVideoAutoplayEnabled = 0;
  }

  else
  {
    IsVideoAutoplayEnabled = PXPreferencesIsVideoAutoplayEnabled();
  }

  v4 = [v5 is_vitalityController];
  [v4 setEnabled:IsVideoAutoplayEnabled];
}

- (void)livePhotoVideoPlaybackTileViewControllerDidEndPlaying:(id)a3
{
  v4 = a3;
  [(PUOneUpViewController *)self _setIrisPlaying:0];
  [(PUOneUpViewController *)self _setDidPlayCurrentLivePhoto:1];
  v5 = [v4 browsingViewModel];

  v6 = [v5 currentAssetReference];
  v11 = [v6 asset];

  v7 = [(PUOneUpViewController *)self currentImageAnalysisInteraction];
  v8 = [(PUOneUpViewController *)self lastLivePhotoGestureLocationProvider];
  v9 = [v7 imageSubjectExistsAtLocation:v8];

  v10 = [(PUOneUpViewController *)self eventTracker];
  [v10 logUserDidPlayLivePhoto:v11 pressOnSubject:v9];

  [(PUOneUpViewController *)self _invalidateTipPopovers];
  [(PUOneUpViewController *)self _updateTipPopoversIfNeeded];
  [(PUOneUpViewController *)self setLastLivePhotoGestureLocationProvider:0];
}

- (void)livePhotoVideoPlaybackTileViewControllerWillBeginPlaying:(id)a3
{
  v4 = a3;
  [(PUOneUpViewController *)self _setIrisPlaying:1];
  v5 = [v4 browsingViewModel];

  v6 = [v5 currentAssetReference];
  v12 = [v6 asset];

  v7 = [(PUOneUpViewController *)self _currentAssetViewModel];
  Current = CFAbsoluteTimeGetCurrent();
  [v7 focusValueAtZeroTimestamp];
  v10 = Current - v9;
  v11 = [(PUOneUpViewController *)self eventTracker];
  [v11 logUserWillPlayLivePhoto:v12 firstTimeWaitDuration:v10];

  [v7 setFocusValueAtZeroTimestamp:-1.0];
  [(PUOneUpViewController *)self _invalidateTipPopovers];
  [(PUOneUpViewController *)self _updateTipPopoversIfNeeded];
}

- (CGImage)livePhotoVideoPlaybackTileViewControllerCurrentGainMapImage:(id)a3 outGainMapAvailable:(BOOL *)a4 outGainMapValue:(float *)a5
{
  v8 = [a3 browsingViewModel];
  v9 = [v8 currentAssetReference];

  v10 = [(PUOneUpViewController *)self _tilingView];
  v11 = [v9 indexPath];
  v12 = [v9 dataSourceIdentifier];
  v13 = [v10 presentedTileControllerWithIndexPath:v11 kind:@"PUTileKindItemContent" dataSourceIdentifier:v12];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = 0;
    v15 = 0;
    v17 = 0;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v14 = v13;
  v15 = [v14 gainMapImage];
  [v14 gainMapValue];
  v17 = v16;
  v18 = [v14 gainMapImageIsAvailable];

  if (a4)
  {
LABEL_5:
    *a4 = v18;
  }

LABEL_6:
  if (a5)
  {
    *a5 = v17;
  }

  return v15;
}

- (id)livePhotoVideoPlaybackTileViewControllerCurrentImage:(id)a3
{
  v4 = [a3 browsingViewModel];
  v5 = [v4 currentAssetReference];

  v6 = [(PUOneUpViewController *)self _tilingView];
  v7 = [v5 indexPath];
  v8 = [v5 dataSourceIdentifier];
  v9 = [v6 presentedTileControllerWithIndexPath:v7 kind:@"PUTileKindItemContent" dataSourceIdentifier:v8];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 image];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)livePhotoVideoPlaybackTileViewControllerDisplayTileTransform:(id)a3
{
  v4 = [a3 browsingViewModel];
  v5 = [v4 currentAssetReference];

  if ([(PUOneUpViewController *)self _isPresentedForSecondScreen])
  {
    v6 = [(PUOneUpViewController *)self _mainOneUpForSecondScreenBrowser];
  }

  else
  {
    v6 = self;
  }

  v7 = v6;
  v8 = [(PUOneUpViewController *)v6 _tilingView];
  v9 = [v5 indexPath];
  v10 = PUTileKindUserTransform;
  v11 = [v5 dataSourceIdentifier];
  v12 = [v8 presentedTileControllerWithIndexPath:v9 kind:v10 dataSourceIdentifier:v11];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v12 displayTileTransform];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)livePhotoVideoPlaybackTileViewControllerCanBeginPlaying:(id)a3 locationProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUOneUpViewController *)self _interactivePinchDismissalController];
  if ([v8 isHandlingDismissalInteraction])
  {
    v9 = 0;
  }

  else
  {
    v10 = [(PUOneUpViewController *)self _interactiveSwipeDismissalController];
    v9 = [v10 isHandlingDismissalInteraction] ^ 1;
  }

  v11 = +[PUOneUpSettings sharedInstance];
  if ([v11 allowVisualIntelligence])
  {
    v12 = [(PUOneUpViewController *)self _isLocationFromProvider:v7 overTileOfKind:@"PUTileKindItemContent"];

    if (v12)
    {
      v13 = +[PUOneUpSettings sharedInstance];
      v14 = [v13 allowsVisualIntelligenceRemoveBackground];

      if (v14)
      {
        if (!v9 || [(PUOneUpViewController *)self _vkImageOverlayAllowsVKCToHandleLongPressGestureFromProvider:v7])
        {
          goto LABEL_16;
        }

LABEL_15:
        if ([(PUOneUpViewController *)self _isLocationFromProviderOverInteractiveItem:v7])
        {
          goto LABEL_16;
        }

LABEL_17:
        v15 = ![(PUOneUpViewController *)self _isLocationFromProviderOverControl:v7];
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
  v16 = [v6 browsingViewModel];
  v17 = [v16 currentAssetReference];
  v18 = [v17 pxAssetReference];
  v19 = [v18 asset];

  v20 = PXContentSyndicationShouldShowAttributionViewForAsset() ^ 1;
  v21 = v20 & v15;
  if ((v20 & 1) == 0 && v15)
  {
    v21 = ![(PUOneUpViewController *)self _isLocationFromProviderOverSyndicationAttributionPill:v7];
  }

  v22 = [(PUOneUpViewController *)self _tilingView];
  [v7 locationInView:v22];
  v25 = [[PUPointDisplayLocationProvider alloc] initWithPoint:v22 inCoordinateSpace:v23, v24];
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

- (double)livePhotoVideoPlaybackTileViewControllerExtraMinimumTouchDuration:(id)a3 locationProvider:(id)a4
{
  v5 = a4;
  v6 = +[PUOneUpSettings sharedInstance];
  v7 = [v6 allowVisualIntelligence];

  v8 = 0.0;
  if (v7 && [(PUOneUpViewController *)self _isLocationFromProviderOverImageSubject:v5])
  {
    if ([(PUOneUpViewController *)self _isLocationFromProviderOverInteractiveItemExcludingImageSubject:v5])
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

- (void)cropButtonTileViewController:(id)a3 didSelectAspectRatio:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v22 = [(PUOneUpViewController *)self browsingSession];
  v7 = [v22 viewModel];
  v8 = [v7 currentAssetReference];
  if (v8)
  {
    [MEMORY[0x1E69C3748] signalDidQuickCrop];
    v9 = [v7 assetViewModelForAssetReference:v8];
    v10 = [v9 modelTileTransform];

    v11 = [v8 asset];
    v12 = [v11 pixelWidth];
    v13 = [v8 asset];
    v14 = [v13 pixelHeight];

    v15 = [(PUOneUpViewController *)self view];
    [v15 frame];
    v17 = v16;
    v19 = v18;

    v20 = [[PUQuickCropContext alloc] initWithTileTransform:v10 renderedImageSize:v12 boundingSize:v14 selectedAspectRatio:v17, v19, width, height];
    v21 = [(PUOneUpViewController *)self actionsController];
    [v21 performQuickCropActionWithContext:v20];
  }
}

- (id)additionalContextMenuActionsForAttributionTileViewController:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  [(PUOneUpViewController *)self createMenuActionControllerForManagerIfNeeded:0 withPresentingViewController:self regionOfInterestProvider:0];
  v5 = [(PUOneUpViewController *)self menuActionController];
  v6 = [v5 contextMenuActionIfAvailableForActionType:57];

  if (v6)
  {
    v7 = v6;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [v7 px_descriptionForAssertionMessage];
      [v12 handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:6989 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"removeSuggestionMenuElement", v14, v15}];
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

- (void)_performPXActionType:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUOneUpViewController *)self assetActionManager];
  if ([v5 canPerformActionType:v4])
  {
    v6 = [v5 actionPerformerForActionType:v4];
    if (!v6)
    {
      v7 = PLOneUpGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = 138412290;
        v9 = v4;
        _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "Missing action performer for action: %@", &v8, 0xCu);
      }
    }

    [v6 performActionWithCompletionHandler:0];
  }
}

- (id)_additionalExcludedMenuActionTypes
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  options = self->__options;
  if ((options & 0x10) != 0)
  {
    [v3 addObject:*MEMORY[0x1E69C47D8]];
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

  v7 = [(PUOneUpViewController *)self _additionalExcludedMenuActionTypes];
  [v6 addObjectsFromArray:v7];

  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E695DF70];
  v9 = MEMORY[0x1E69C4488];
  v10 = [(PUOneUpViewController *)self assetActionManager];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __38__PUOneUpViewController__menuElements__block_invoke;
  v19 = &unk_1E7B7A1B0;
  objc_copyWeak(&v20, &location);
  v11 = [v9 pxMenuElementsForActionManager:v10 excludedActionTypes:v6 handler:&v16];
  v12 = [v8 arrayWithArray:{v11, v16, v17, v18, v19}];

  v13 = [(PUOneUpViewController *)self chromeViewController];
  v14 = [v13 additionalInternalOneUpMenuElements];
  [v12 addObjectsFromArray:v14];

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

- (id)oneUpChromeViewControllerFullSizeOneUpHostingView:(id)a3
{
  v3 = [(PUOneUpViewController *)self view];
  v4 = [v3 superview];

  return v4;
}

- (void)oneUpChromeViewControllerAdditionalActionInfoEdgeInsetsDidChange:(id)a3
{
  [(PUOneUpViewController *)self _invalidateImageAnalysisInteractionAdditionalActionInfoEdgeInsets];

  [(PUOneUpViewController *)self _updateIfNeeded];
}

- (void)_handleUnlockDeviceForActionType:(unint64_t)a3 success:(BOOL)a4
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a4)
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

  v7 = [(PUOneUpViewController *)self chromeViewController];
  [v7 invalidateIsDeviceUnlocked];

  v8 = [(PUOneUpViewController *)self chromeViewController];
  [v8 updateIsDeviceUnlockedIfNeeded];
}

- (void)oneUpChromeViewControllerRequestDeviceUnlock:(id)a3 for:(unint64_t)a4
{
  v6 = a3;
  v7 = [(PUOneUpViewController *)self unlockDeviceHandlerWithActionType];

  if (v7)
  {
    objc_initWeak(&location, self);
    v8 = [(PUOneUpViewController *)self unlockDeviceHandlerWithActionType];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74__PUOneUpViewController_oneUpChromeViewControllerRequestDeviceUnlock_for___block_invoke;
    v9[3] = &unk_1E7B7A188;
    objc_copyWeak(v10, &location);
    v10[1] = a4;
    (v8)[2](v8, v9, a4);

    objc_destroyWeak(v10);
    objc_destroyWeak(&location);
  }
}

void __74__PUOneUpViewController_oneUpChromeViewControllerRequestDeviceUnlock_for___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleUnlockDeviceForActionType:*(a1 + 40) success:a2];
}

- (BOOL)oneUpChromeViewControllerIsDeviceUnlocked:(id)a3
{
  v4 = [(PUOneUpViewController *)self unlockDeviceStatus];

  if (!v4)
  {
    return 1;
  }

  v5 = [(PUOneUpViewController *)self unlockDeviceStatus];
  v6 = v5[2]();

  return v6;
}

- (id)px_diagnosticsItemProvidersForPoint:(CGPoint)a3 inCoordinateSpace:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(PUOneUpViewController *)self browsingSession];
  v9 = [v8 viewModel];
  v10 = [v9 currentAssetReference];

  v30.receiver = self;
  v30.super_class = PUOneUpViewController;
  v11 = [(PUOneUpViewController *)&v30 px_diagnosticsItemProvidersForPoint:v7 inCoordinateSpace:x, y];
  v12 = [v11 mutableCopy];

  v13 = [(PUOneUpViewController *)self _accessoryViewControllersManager];
  v14 = [v13 accessoryViewControllerForAssetReference:v10];

  if (v14)
  {
    v15 = [v14 px_diagnosticsItemProvidersForPoint:v7 inCoordinateSpace:{x, y}];
    [v12 addObjectsFromArray:v15];
  }

  v16 = [[PUPointDisplayLocationProvider alloc] initWithPoint:v7 inCoordinateSpace:x, y];
  if (![(PUOneUpViewController *)self _isLocationFromProviderInAccessoryArea:v16])
  {
    v17 = [v10 asset];
    v18 = [v10 assetCollection];
    v19 = objc_alloc_init(MEMORY[0x1E69C3458]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = *MEMORY[0x1E69C4010];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __79__PUOneUpViewController_px_diagnosticsItemProvidersForPoint_inCoordinateSpace___block_invoke;
      v28[3] = &unk_1E7B7E038;
      v29 = v17;
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
      v27 = v18;
      [v19 registerItemForIdentifier:v21 loadHandler:&v23];
    }

    [v12 addObject:{v19, v23, v24, v25, v26}];
  }

  return v12;
}

- (id)pu_debugRows
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PUOneUpViewController *)self browsingSession];
  v5 = [v4 viewModel];

  v6 = [v5 assetViewModelForCurrentAssetReference];
  v7 = [v6 videoPlayer];
  v8 = [v7 playerItem];
  v9 = v8;
  if (v8)
  {
    v10 = MEMORY[0x1E69C65E8];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __37__PUOneUpViewController_pu_debugRows__block_invoke;
    v23[3] = &unk_1E7B7E038;
    v24 = v8;
    v11 = [v10 pu_rowWithTitle:@"Print Video Information" output:v23];
    [v3 addObject:v11];
  }

  v12 = [v6 asset];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v13 = v12;

    if (!v13)
    {
      goto LABEL_9;
    }

    v14 = [v13 px_coreDataBrowserURL];
    v15 = MEMORY[0x1E69C65E8];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __37__PUOneUpViewController_pu_debugRows__block_invoke_2;
    v21 = &unk_1E7B7E3F0;
    v22 = v14;
    v12 = v14;
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
  v2 = [(PUOneUpViewController *)self browsingSession];
  v3 = [v2 privacyController];

  return v3;
}

- (id)pu_debugCurrentViewModel
{
  v2 = [(PUOneUpViewController *)self browsingSession];
  v3 = [v2 viewModel];

  return v3;
}

- (id)pu_debugCurrentAsset
{
  v2 = [(PUOneUpViewController *)self browsingSession];
  v3 = [v2 viewModel];
  v4 = [v3 currentAssetReference];

  v5 = [v4 asset];

  return v5;
}

- (void)ppt_notifyWhenVKAnalysisIsReadyWithTimeout:(double)a3 handler:(id)a4
{
  v8 = a4;
  v6 = [(PUOneUpViewController *)self currentImageAnalysisInteraction];
  v7 = v6;
  if (v6)
  {
    [v6 ppt_notifyWhenVKAnalysisIsReadyWithTimeout:v8 completionHandler:a3];
  }

  else if (v8)
  {
    v8[2](v8, 0);
  }
}

- (void)ppt_notifyWhenDeferredProcessingIsDoneAndFinalImageDisplayedWithTimeout:(double)a3 handler:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (v7)
  {
    v8 = [(PUOneUpViewController *)self _tilingView];
    [v8 layoutIfNeeded];

    v9 = [(PUOneUpViewController *)self browsingSession];
    v10 = [v9 viewModel];

    v11 = [v10 currentAssetReference];
    v12 = [v11 asset];

    if (objc_opt_respondsToSelector())
    {
      v13 = [v12 needsDeferredProcessing];
    }

    else
    {
      v13 = 1;
    }

    if (fmin(a3, 60.0) <= 0.0)
    {
      v7[2](v7, 1);
      v20 = PLOneUpGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v20, OS_LOG_TYPE_ERROR, "Deferred Processing: zero timeout is not allowed.", buf, 2u);
      }

      goto LABEL_16;
    }

    v14 = [(PUOneUpViewController *)self ppt_deferredProcessingCompletionBlock];

    if (v14)
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:6733 description:{@"Should not request notification, when a request is already on going"}];

      if (v13)
      {
        goto LABEL_8;
      }
    }

    else if (v13)
    {
LABEL_8:
      [(PUOneUpViewController *)self setPpt_deferredProcessingCompletionBlock:v7];
      v15 = [v12 uuid];
      [(PUOneUpViewController *)self setPpt_assetUUIDNeedsDeferredProcessingFinishNotification:v15];

      objc_initWeak(location, self);
      v16 = MEMORY[0x1E695DFF0];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __105__PUOneUpViewController_ppt_notifyWhenDeferredProcessingIsDoneAndFinalImageDisplayedWithTimeout_handler___block_invoke_2;
      v22[3] = &unk_1E7B80638;
      objc_copyWeak(&v23, location);
      v17 = [v16 pu_scheduledTimerWithTimeInterval:0 repeats:v22 block:a3];
      [(PUOneUpViewController *)self setPpt_deferredProcessingWaitTimer:v17];

      v18 = PLOneUpGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = [v12 uuid];
        *buf = 138412290;
        v27 = v19;
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
    v25 = v7;
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

- (void)ppt_playCurrentLivePhotoWithCompletionHandler:(id)a3
{
  v7 = a3;
  v5 = [(PUOneUpViewController *)self _currentContentTileController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:6717 description:{@"unexpected class %@", v5}];
  }

  [v5 ppt_playLivePhotoWithCompletionHandler:v7];
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
  v4 = [v3 ppt_scrubberView];

  return v4;
}

- (CGRect)ppt_scrollableBoundsForTesting
{
  v3 = [(PUOneUpViewController *)self _tilingView];
  v4 = [(PUOneUpViewController *)self navigationController];
  v5 = [v4 navigationBar];
  [v5 frame];
  v7 = v6;

  v8 = [(PUOneUpViewController *)self navigationController];
  v9 = [v8 toolbar];
  [v9 frame];
  v11 = v10;

  v12 = [v3 superview];
  [v3 frame];
  [v12 convertRect:0 toView:?];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [v3 adjustedContentInset];
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

- (BOOL)prepareForDismissingForced:(BOOL)a3
{
  v3 = a3;
  v4 = [(PUOneUpViewController *)self presentedViewController];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 prepareForDismissingForced:v3];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)purgeIfPossible
{
  v3 = [(PUOneUpViewController *)self _currentAccessoryViewController];
  if ([v3 conformsToProtocol:&unk_1F2C4F490])
  {
    v4 = [(PUOneUpViewController *)self _currentAccessoryViewController];
  }

  else
  {
    v4 = 0;
  }

  [v4 purgeIfPossible];
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUOneUpViewController *)self _tilingView];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__PUOneUpViewController_settings_changedValueForKey___block_invoke;
  v11[3] = &unk_1E7B7A160;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 enumerateAllTileControllersUsingBlock:v11];
}

void __53__PUOneUpViewController_settings_changedValueForKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_1F2CFE618])
  {
    [v3 settings:*(a1 + 32) changedValueForKey:*(a1 + 40)];
  }
}

- (void)_notifyTileIsReadyWithTimeOut:(double)a3 completionHandler:(id)a4
{
  v10 = a4;
  v6 = [(PUOneUpViewController *)self _tilingView];
  [v6 layoutIfNeeded];

  v7 = [(PUOneUpViewController *)self _currentContentTileController];
  v8 = v7;
  if (fmin(a3, 0.5) <= 0.0 || v7 == 0)
  {
    if (v10)
    {
      v10[2](v10, 0);
    }
  }

  else
  {
    [v7 notifyWhenReadyForDisplayWithTimeOut:v10 completionHandler:?];
  }
}

- (void)_performNavigationToAssetDisplayDescriptor:(id)a3 beforeDate:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:6563 description:{@"Invalid parameter not satisfying: %@", @"beforeDate != nil"}];
  }

  v12 = objc_alloc_init(PUAssetDisplayDescriptorNavigationRequest);
  v13 = [MEMORY[0x1E695DF00] date];
  [v10 timeIntervalSinceReferenceDate];
  v15 = v14;
  [v13 timeIntervalSinceReferenceDate];
  v17 = v15 - v16;
  objc_initWeak(&location, self);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __97__PUOneUpViewController__performNavigationToAssetDisplayDescriptor_beforeDate_completionHandler___block_invoke;
  v29[3] = &unk_1E7B7B540;
  v33[1] = *&v17;
  v18 = v10;
  v30 = v18;
  v19 = v13;
  v31 = v19;
  objc_copyWeak(v33, &location);
  v20 = v11;
  v32 = v20;
  [(PUAssetDisplayDescriptorNavigationRequest *)v12 setCompletionHandler:v29];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __97__PUOneUpViewController__performNavigationToAssetDisplayDescriptor_beforeDate_completionHandler___block_invoke_796;
  v24[3] = &unk_1E7B7FE10;
  v21 = v12;
  v25 = v21;
  v26 = self;
  v22 = v9;
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

- (BOOL)_canAttemptNavigationToAssetDisplayDescriptor:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUOneUpViewController *)self browsingSession];
  v6 = [v5 viewModel];
  v7 = [v6 assetsDataSource];

  if (!v7)
  {
    v8 = PLOneUpGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(PUOneUpViewController *)self browsingSession];
      v10 = [(PUOneUpViewController *)self browsingSession];
      v11 = [v10 viewModel];
      v18 = 138412546;
      v19 = v9;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "assetsDataSource is unexpectedly nil. browsingSession: %@, viewModel: %@", &v18, 0x16u);
    }
  }

  v12 = [v4 assetReference];
  v13 = [v7 couldAssetReferenceAppear:v12];
  v14 = PLOneUpGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:v13];
    v16 = [MEMORY[0x1E696AD98] numberWithInt:v12 != 0];
    v18 = 138412546;
    v19 = v15;
    v20 = 2112;
    v21 = v16;
    _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_DEBUG, "Can attempt navigation? %@, assetReference?: %@", &v18, 0x16u);
  }

  return v13;
}

- (void)navigateToAssetDisplayDescriptor:(id)a3 beforeDate:(id)a4 completionHandler:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PLOneUpGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = @"YES";
    if (!v10)
    {
      v12 = @"NO";
    }

    v14 = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEBUG, "Navigating to assetDisplayDescriptor: %@, completionHandler?: %@", &v14, 0x16u);
  }

  if (v8)
  {
    if ([(PUOneUpViewController *)self _canAttemptNavigationToAssetDisplayDescriptor:v8])
    {
      [(PUOneUpViewController *)self _performNavigationToAssetDisplayDescriptor:v8 beforeDate:v9 completionHandler:v10];
    }

    else if (v10)
    {
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PUAssetDisplayDescriptorNavigationErrorDomain" code:1 userInfo:0];
      v10[2](v10, 0, v13);
    }
  }

  else if (v10)
  {
    v10[2](v10, 1, 0);
  }
}

- (BOOL)accessoryTileViewControllerShouldUseSquareImageWhenShowingAccessoryView:(id)a3
{
  v4 = a3;
  v5 = [(PUOneUpViewController *)self _spec];
  v6 = [v5 prefersSquareImageInDetails];

  if (v6)
  {
    if ([MEMORY[0x1E69C3640] isOneUpRefreshEnabled] && (objc_msgSend(MEMORY[0x1E69C3640], "sharedInstance"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "enableSideCommentsInLandscape"), v7, (v8 & 1) != 0))
    {
      LOBYTE(v9) = 1;
    }

    else
    {
      v10 = [v4 assetReference];
      v11 = [v10 asset];
      v9 = ![PUCommentsViewController canShowCommentsForAsset:v11];
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)accessoryTileViewControllerWillHideNavigationBarWhenShowingAccessoryView:(id)a3
{
  v4 = [a3 assetReference];
  v5 = [(PUOneUpViewController *)self _accessoryViewControllersManager];
  v6 = [v5 shouldHideNavigationBarWhenShowingAccessoryViewControllerForAssetReference:v4];

  if (v6)
  {
    v7 = ![(PUOneUpViewController *)self _isCurrentAssetAndInEditModeForAssetReference:v4];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)accessoryTileViewControllerWillHideToolbarWhenShowingAccessoryView:(id)a3
{
  v4 = [a3 assetReference];
  v5 = [(PUOneUpViewController *)self _accessoryViewControllersManager];
  v6 = [v5 shouldHideToolbarWhenShowingAccessoryViewControllerForAssetReference:v4];

  return v6;
}

- (id)accessoryTileViewControllerAccessoryViewController:(id)a3
{
  v4 = [a3 assetReference];
  v5 = [(PUOneUpViewController *)self _accessoryViewControllersManager];
  v6 = [v5 accessoryViewControllerForAssetReference:v4];

  return v6;
}

- (id)irisImageTileViewController:(id)a3 delegateForGestureRecognizer:(id)a4
{
  v5 = a4;
  v6 = [(PUOneUpViewController *)self _gestureRecognizerCoordinator];
  [v6 addIrisGestureRecognizer:v5];

  return [(PUOneUpViewController *)self _gestureRecognizerCoordinator];
}

- (void)irisImageTileViewControllerDidEndVitality:(id)a3
{
  v5 = [a3 asset];
  v4 = [(PUOneUpViewController *)self eventTracker];
  [v4 logVitalityDidEndForLivePhoto:v5];
}

- (void)irisImageTileViewControllerDidEndPlaying:(id)a3
{
  v4 = a3;
  [(PUOneUpViewController *)self _setIrisPlaying:0];
  [(PUOneUpViewController *)self _setDidPlayCurrentLivePhoto:1];
  v6 = [v4 asset];

  v5 = [(PUOneUpViewController *)self eventTracker];
  [v5 logUserDidPlayLivePhoto:v6];

  [(PUOneUpViewController *)self _updateIfNeeded];
}

- (void)irisImageTileViewControllerDidBeginPlaying:(id)a3
{
  v9 = a3;
  v4 = [v9 assetViewModel];
  v5 = [v4 irisPlayer];
  v6 = [v5 player];
  if ([v6 currentPlaybackStyle] == 1)
  {
    [(PUOneUpViewController *)self _setIrisPlaying:1];
    v7 = [v9 asset];
    v8 = [(PUOneUpViewController *)self eventTracker];
    [v8 logUserWillPlayLivePhoto:v7];
  }
}

- (void)irisImageTileViewControllerDidBeginHinting:(id)a3
{
  v4 = [(PUOneUpViewController *)self _barsController];
  v5 = [v4 tapGestureRecognizer];
  [v5 pu_cancel];

  v7 = [(PUOneUpViewController *)self _doubleTapZoomController];
  v6 = [v7 doubleTapGestureRecognizer];
  [v6 pu_cancel];
}

- (void)oneUpAssetTransition:(id)a3 animateTransitionWithContext:(id)a4 duration:(double)a5 completion:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = [v9 executedAction];
  v12 = [(PUOneUpViewController *)self undoManager];
  [v11 registerWithUndoManager:v12];

  v13 = [(PUOneUpViewController *)self _tilingView];
  [v13 layoutIfNeeded];
  v14 = [(PUOneUpViewController *)self _currentContentTileController];
  if (v14)
  {
    v141 = a5;
    v15 = [(PUOneUpViewController *)self _tilingView];
    v16 = [v15 layout];

    v17 = [(PUOneUpViewController *)self browsingSession];
    v18 = [v17 viewModel];

    v19 = [v18 assetsDataSource];
    v149 = v18;
    v143 = [v18 currentAssetReference];
    v144 = v19;
    [v19 indexPathForAssetReference:?];
    v142 = v145 = v16;
    v20 = [v16 layoutInfoForTileWithIndexPath:? kind:?];
    v21 = [v9 containerView];
    v22 = [v9 fromView];
    v23 = [v9 snapshotView];
    [v23 frame];
    v139 = v22;
    [v21 convertRect:v22 fromView:?];
    v137 = v24;
    v26 = v25;
    v128 = v25;
    v28 = v27;
    v30 = v29;
    [v23 setFrame:?];
    [v21 addSubview:v23];
    [v20 frame];
    v32 = v31;
    v133 = v33;
    v135 = v31;
    v34 = v33;
    v36 = v35;
    v130 = v37;
    v131 = v35;
    v38 = v37;
    v39 = [v20 coordinateSystem];
    v40 = [v13 contentCoordinateSystem];
    v41 = PUConvertPointFromCoordinateSystemToCoordinateSystem(v39, v40, v32, v34);
    v43 = v42;

    v44 = [(PUOneUpViewController *)self view];
    [v44 convertRect:v13 fromView:{v41, v43, v36, v38}];
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;

    v53 = [(PUOneUpViewController *)self view];
    [v21 convertRect:v53 fromView:{v46, v48, v50, v52}];
    v126 = v55;
    v127 = v54;
    v125 = v56;
    v58 = v57;

    v59 = [(PUOneUpViewController *)self view];
    v140 = v21;
    [v21 convertRect:v59 toView:{v26, v28, v137, v30}];
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;

    v68 = [(PUOneUpViewController *)self view];
    [v13 convertRect:v68 fromView:{v61, v63, v65, v67}];
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v76 = v75;

    v77 = [v13 contentCoordinateSystem];
    v78 = [v20 coordinateSystem];
    v79 = PUConvertPointFromCoordinateSystemToCoordinateSystem(v77, v78, v70, v72);
    v81 = v80;

    v146 = v23;
    v82 = [v23 contentMode];
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
    v132 = v82 == 2;
    v148 = v10;
    if (v82 == 2)
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
    v107 = [MEMORY[0x1E695DF70] array];
    [v107 addObject:v14];
    v108 = [(PUOneUpViewController *)self _backgroundTileViewController];
    if (v108 && [v9 shouldHideBackground])
    {
      [v107 addObject:v108];
    }

    if ([v107 count])
    {
      [v13 detachTileControllers:v107];
    }

    v136 = v105;
    [v14 applyLayoutInfo:v105];
    if ([v9 shouldHideBackground])
    {
      v109 = [v108 presentationLayoutInfo];
      v110 = [v109 layoutInfoWithAlpha:0.0];

      [v108 applyLayoutInfo:v110];
    }

    v134 = v108;
    v111 = v13;
    [(PUOneUpViewController *)self _hideOverlays];
    v112 = [v9 transitionInfo];
    v113 = v112;
    if (v112)
    {
      if (([v112 allowAutoPlay] & 1) == 0)
      {
        v114 = [v149 assetViewModelForCurrentAssetReference];
        v115 = [v114 videoPlayer];
        v173[0] = MEMORY[0x1E69E9820];
        v173[1] = 3221225472;
        v173[2] = __95__PUOneUpViewController_oneUpAssetTransition_animateTransitionWithContext_duration_completion___block_invoke;
        v173[3] = &unk_1E7B80DD0;
        v174 = v115;
        v116 = v115;
        [v116 performChanges:v173];
      }

      [v14 adoptAssetTransitionInfo:v113];
    }

    v117 = [PUInterfaceManager beginDisablingUserInteractionForReason:10];
    [v14 startSuppressingAnimatedUpdatesWithReason:@"one-up transition"];
    [v14 viewControllerTransitionWillBegin];
    v129 = MEMORY[0x1E69DD250];
    v158[0] = MEMORY[0x1E69E9820];
    v158[1] = 3221225472;
    v158[2] = __95__PUOneUpViewController_oneUpAssetTransition_animateTransitionWithContext_duration_completion___block_invoke_2;
    v158[3] = &unk_1E7B7A110;
    v159 = v9;
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
    v162 = v14;
    v163 = v20;
    v164 = self;
    v150[0] = MEMORY[0x1E69E9820];
    v150[1] = 3221225472;
    v150[2] = __95__PUOneUpViewController_oneUpAssetTransition_animateTransitionWithContext_duration_completion___block_invoke_4;
    v150[3] = &unk_1E7B7A138;
    v147 = v9;
    v118 = v111;
    v151 = v111;
    v152 = v107;
    v153 = v161;
    v154 = v139;
    v155 = v162;
    v156 = v117;
    v10 = v148;
    v157 = v148;
    v119 = v117;
    v120 = v139;
    v121 = v161;
    v122 = v107;
    v123 = v106;
    v124 = v149;
    [v129 animateWithDuration:v158 animations:v150 completion:v141];

    v13 = v118;
    v9 = v147;
  }

  else
  {
    v91 = [(PUOneUpViewController *)self navigationController];
    v92 = [v91 topViewController];

    if (v92 == self)
    {
      v93 = [v91 popViewControllerAnimated:0];
    }

    if (v10)
    {
      (*(v10 + 2))(v10, v92 == self);
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
  v2 = [(PUOneUpViewController *)self _currentContentTileController];
  v3 = [v2 generateAssetTransitionInfo];

  return v3;
}

- (void)oneUpAssetTransition:(id)a3 requestTransitionContextWithCompletion:(id)a4 options:(unint64_t)a5
{
  v5 = a5;
  v66 = a3;
  v9 = a4;
  v10 = [(PUOneUpViewController *)self _currentContentTileController];
  v11 = [(PUOneUpViewController *)self browsingSession];
  v12 = [v11 viewModel];
  v13 = [v12 currentAssetReference];

  v63 = v13;
  v14 = [v13 asset];
  v65 = v9;
  v15 = [v14 playbackStyle] == 4 || objc_msgSend(v14, "playbackStyle") == 5;
  v61 = v5;
  if ((v5 & 2) != 0 && v15)
  {
    v16 = v10;
    if (v16)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_8:
        v17 = [v16 view];
        v18 = [v17 snapshotViewAfterScreenUpdates:0];

        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __93__PUOneUpViewController_oneUpAssetTransition_requestTransitionContextWithCompletion_options___block_invoke;
        v69[3] = &unk_1E7B7B808;
        v70 = v18;
        v71 = v14;
        v19 = v18;
        v20 = [PUAssetTransitionInfo assetTransitionInfoWithConfigurationBlock:v69];

        goto LABEL_10;
      }

      v56 = [MEMORY[0x1E696AAA8] currentHandler];
      v59 = objc_opt_class();
      v58 = NSStringFromClass(v59);
      v60 = [v16 px_descriptionForAssertionMessage];
      [v56 handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:6187 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"tileController", v58, v60}];
    }

    else
    {
      v56 = [MEMORY[0x1E696AAA8] currentHandler];
      v57 = objc_opt_class();
      v58 = NSStringFromClass(v57);
      [v56 handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:6187 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"tileController", v58}];
    }

    goto LABEL_8;
  }

  v20 = [v10 generateAssetTransitionInfo];
LABEL_10:
  if (objc_opt_respondsToSelector())
  {
    v21 = [v66 toViewController];
    if (objc_opt_respondsToSelector())
    {
      v22 = [v21 oneUpAssetTransition:v66 adjustTransitionInfo:v20];
      v23 = v22;
      if (v22)
      {
        v24 = v22;

        v20 = v24;
      }
    }
  }

  v25 = [v20 snapshotView];
  v64 = v10;
  if (v25)
  {
    [(PUOneUpViewController *)self _currentFrameForTileController:v10];
    [v25 setFrame:?];
    [v25 setContentMode:2];
    [v25 setClipsToBounds:1];
    v26 = [v10 layoutInfo];
    [v26 cornerRadius];
    v28 = v27;
    v29 = [v25 layer];
    [v29 setCornerRadius:v28];

    v30 = [v10 layoutInfo];
    v31 = [v30 cornerCurve];
    v32 = [v25 layer];
    [v32 setCornerCurve:v31];

    v33 = v25;
  }

  else
  {
    v33 = [(PUOneUpViewController *)self _currentPlaceholderSnapshotViewForTileController:v10];
    v34 = [v20 image];
    [v33 setImage:v34];
    [v33 setClipsToBounds:1];
    [v10 layoutInfo];
    v35 = v20;
    v36 = v14;
    v38 = v37 = v10;
    [v38 cornerRadius];
    v40 = v39;
    v41 = [v33 layer];
    [v41 setCornerRadius:v40];

    v42 = [v37 layoutInfo];
    v43 = [v42 cornerCurve];
    v44 = [v33 layer];
    [v44 setCornerCurve:v43];

    [v33 setContentMode:2];
    v45 = [(PUOneUpViewController *)self _tilingView];
    if ([v45 shouldDisplayHDR])
    {
      v46 = 2;
    }

    else
    {
      v46 = 0;
    }

    v14 = v36;
    v20 = v35;
    v25 = 0;
    [v33 setPreferredImageDynamicRange:v46];
  }

  v47 = [v20 imageLayerModulator];
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __93__PUOneUpViewController_oneUpAssetTransition_requestTransitionContextWithCompletion_options___block_invoke_2;
  v67[3] = &unk_1E7B7F3B8;
  v48 = v33;
  v68 = v48;
  [v47 performChanges:v67];

  if (v61)
  {
    v49 = [(PUOneUpViewController *)self _trailingContentTileController];
    v51 = [v49 generateAssetTransitionInfo];
    [(PUOneUpViewController *)self _leadingContentTileController];
    v52 = v62 = v14;
    v53 = [v52 generateAssetTransitionInfo];
    v54 = [(PUOneUpViewController *)self view];
    v55 = v51;
    v50 = [PUOneUpAssetTransitionContext oneUpAssetTransitionContextWithContainerView:0 fromView:v54 snapshotView:v48 transitionInfo:v20 trailingAssetTransitionInfo:v51 leadingAssetTransitionInfo:v53];

    v14 = v62;
  }

  else
  {
    v49 = [(PUOneUpViewController *)self view];
    v50 = [PUOneUpAssetTransitionContext oneUpAssetTransitionContextWithContainerView:0 fromView:v49 snapshotView:v48 transitionInfo:v20];
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
  v3 = [(PUOneUpViewController *)self _userTransformTileViewControllerForCurrentAsset];
  [v3 zoomOutAnimated:0];

  v4 = [(PUOneUpViewController *)self browsingSession];
  v5 = [v4 viewModel];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__PUOneUpViewController__didEndTransition__block_invoke;
  v11[3] = &unk_1E7B80DD0;
  v6 = v5;
  v12 = v6;
  [v6 performChanges:v11];
  [(PUOneUpViewController *)self _unhideOverlays];
  v7 = [(PUOneUpViewController *)self _tilingView];
  v8 = [(PUOneUpViewController *)self _currentContentTileController];
  if ([v8 isDetached])
  {
    v9 = objc_alloc_init(PUTileReattachmentContext);
    [(PUTileReattachmentContext *)v9 setTransitioningOverOneUp:1];
    v13[0] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [v7 reattachTileControllers:v10 withContext:v9];
  }

  [v7 layoutIfNeeded];
}

- (void)_willBeginTransition
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [(PUOneUpViewController *)self _tilingView];
  if ([(PUOneUpViewController *)self _accessoryContentKindForCurrentAsset]== 1)
  {
    [(PUOneUpViewController *)self _setAccessoryVisible:0];
  }

  [(PUOneUpViewController *)self _hideOverlays];
  v4 = [(PUOneUpViewController *)self _currentContentTileController];
  v5 = v4;
  if (v4)
  {
    v9[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [v3 detachTileControllers:v6];

    v7 = [v5 presentationLayoutInfo];
    v8 = [v7 layoutInfoWithAlpha:0.0];
    [v5 applyLayoutInfo:v8];
  }

  [v3 layoutIfNeeded];
}

- (void)_unhideOverlays
{
  v4 = [(PUOneUpViewController *)self _tilingView];
  v3 = [(PUOneUpViewController *)self _hiddenTilesController];
  if ([v3 count])
  {
    [v4 reattachTileControllers:v3 withContext:0];
    [(PUOneUpViewController *)self _setHiddenTilesController:0];
    [v4 layoutIfNeeded];
  }
}

- (void)_hideOverlays
{
  v2 = self;
  v39 = *MEMORY[0x1E69E9840];
  v3 = [(PUOneUpViewController *)self browsingSession];
  v4 = [v3 viewModel];

  v5 = [(PUOneUpViewController *)v2 _tilingView];
  v6 = v5;
  if (v4 && v5)
  {
    v28 = v4;
    v7 = [v4 currentAssetReference];
    v8 = [v7 indexPath];
    v27 = v7;
    v9 = [v7 dataSourceIdentifier];
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v11 = [(PUOneUpViewController *)v2 _tileKindsToHide];
    v12 = [v11 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v12)
    {
      v13 = v12;
      v26 = v2;
      v14 = 0;
      v15 = *v34;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          v17 = v14;
          if (*v34 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v14 = [v6 presentedTileControllerWithIndexPath:v8 kind:*(*(&v33 + 1) + 8 * i) dataSourceIdentifier:v9];

          if (v14 && ([v14 isDetached] & 1) == 0)
          {
            [v10 addObject:v14];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v13);

      v2 = v26;
    }

    [(PUOneUpViewController *)v2 _setHiddenTilesController:v10];
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
          v24 = [v23 presentationLayoutInfo];
          v25 = [v24 layoutInfoWithAlpha:0.0];

          [v23 applyLayoutInfo:v25];
        }

        v20 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v20);
    }

    v4 = v28;
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

- (CGRect)_currentFrameForTileController:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(PUOneUpViewController *)self _tilingView];
    v6 = [v4 presentationLayoutInfo];

    [v6 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [v6 coordinateSystem];
    v16 = [v5 contentCoordinateSystem];
    v17 = PUConvertPointFromCoordinateSystemToCoordinateSystem(v15, v16, v8, v10);
    v19 = v18;

    v20 = [(PUOneUpViewController *)self view];
    [v20 convertRect:v5 fromView:{v17, v19, v12, v14}];
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

- (id)_currentPlaceholderSnapshotViewForTileController:(id)a3
{
  if (a3)
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
  v3 = [(PUOneUpViewController *)self browsingSession];
  v4 = [v3 viewModel];
  v5 = [v4 leadingAssetReference];

  v6 = [(PUOneUpViewController *)self _contentTileControllerForAssetReference:v5];

  return v6;
}

- (id)_trailingContentTileController
{
  v3 = [(PUOneUpViewController *)self browsingSession];
  v4 = [v3 viewModel];
  v5 = [v4 trailingAssetReference];

  v6 = [(PUOneUpViewController *)self _contentTileControllerForAssetReference:v5];

  return v6;
}

- (id)_contentTileControllerForAssetReference:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(PUOneUpViewController *)self _tilingView];
    v6 = [v4 indexPath];
    v7 = [v4 dataSourceIdentifier];

    v8 = [v5 presentedTileControllerWithIndexPath:v6 kind:@"PUTileKindItemContent" dataSourceIdentifier:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_currentContentTileController
{
  v3 = [(PUOneUpViewController *)self _tilingView];
  v4 = [(PUOneUpViewController *)self browsingSession];
  v5 = [v4 viewModel];
  v6 = [v5 currentAssetReference];

  v7 = [v6 indexPath];
  v8 = [v6 dataSourceIdentifier];
  v9 = [v3 presentedTileControllerWithIndexPath:v7 kind:@"PUTileKindItemContent" dataSourceIdentifier:v8];

  return v9;
}

- (void)overOneUpPresentationSessionDidFinish:(id)a3
{
  [(PUOneUpViewController *)self _setOverOneUpPresentationSession:0];
  v4 = [(PUOneUpViewController *)self browsingSession];
  v5 = [v4 viewModel];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__PUOneUpViewController_overOneUpPresentationSessionDidFinish___block_invoke;
  v7[3] = &unk_1E7B80DD0;
  v8 = v5;
  v6 = v5;
  [v6 performChanges:v7];
}

- (void)overOneUpPresentationSession:(id)a3 didPresent:(id)a4
{
  v4 = [(PUOneUpViewController *)self browsingSession:a3];
  v5 = [v4 viewModel];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__PUOneUpViewController_overOneUpPresentationSession_didPresent___block_invoke;
  v7[3] = &unk_1E7B80DD0;
  v8 = v5;
  v6 = v5;
  [v6 performChanges:v7];
}

- (BOOL)overOneUpPresentationSessionPresentingViewControllerIsReady:(id)a3
{
  v4 = [(PUOneUpViewController *)self parentViewController];

  if (!v4 || ([(PUOneUpViewController *)self isBeingDismissed]& 1) != 0)
  {
    return 0;
  }

  v6 = [(PUOneUpViewController *)self _tilingView];
  v5 = v6 != 0;

  return v5;
}

- (id)overOneUpPresentationSessionBrowserViewModel:(id)a3
{
  v3 = [(PUOneUpViewController *)self browsingSession];
  v4 = [v3 viewModel];

  return v4;
}

- (id)_presentedTileControllerForIndexPath:(id)a3 kind:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PUOneUpViewController *)self browsingSession];
  v9 = [v8 viewModel];

  v10 = [v9 assetsDataSource];
  v11 = [(PUOneUpViewController *)self _tilingView];
  v12 = [v10 identifier];
  v13 = [v11 presentedTileControllerWithIndexPath:v7 kind:v6 dataSourceIdentifier:v12];

  return v13;
}

- (id)_presentedTileControllerForCurrentIndexPathWithKind:(id)a3
{
  v4 = a3;
  v5 = [(PUOneUpViewController *)self browsingSession];
  v6 = [v5 viewModel];

  v7 = [v6 assetsDataSource];
  v8 = [v6 currentAssetReference];
  v9 = [v7 indexPathForAssetReference:v8];
  v10 = [(PUOneUpViewController *)self _presentedTileControllerForIndexPath:v9 kind:v4];

  return v10;
}

- (id)overOneUpPresentationSessionCreateIfNeeded:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUOneUpViewController *)self _overOneUpPresentationSession];
  if (!v5 && v3)
  {
    v6 = [PUOneUpActivitySharingActionPerformer alloc];
    v7 = [(PUOneUpViewController *)self actionsController];
    v8 = [(PUOneUpActivitySharingActionPerformer *)v6 initWithActionsController:v7];

    v5 = [[PUOverOneUpPresentationSession alloc] initWithActivitySharingActionPerformer:v8];
    [(PUOverOneUpPresentationSession *)v5 setDelegate:self];
    v9 = [(PUOneUpViewController *)self _barsController];
    [(PUOverOneUpPresentationSession *)v5 setBarsDelegate:v9];

    [(PUOneUpViewController *)self _setOverOneUpPresentationSession:v5];
  }

  return v5;
}

- (void)accessoryVisibilityInteractionController:(id)a3 setAccessoryVisible:(BOOL)a4 changeReason:(int64_t)a5
{
  v5 = a4;
  v7 = [PUInterfaceManager currentTheme:a3];
  v8 = [v7 photoBrowserChromeVisibleBackgroundColor];
  v9 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    v11 = [(PUOneUpViewController *)self _currentAssetViewModel];
    v12 = [v11 modelTileTransform];
    v13 = [v12 hasUserZoomedIn];

    if (v13)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __99__PUOneUpViewController_accessoryVisibilityInteractionController_setAccessoryVisible_changeReason___block_invoke;
      v16[3] = &unk_1E7B80DD0;
      v17 = v11;
      [v17 performChanges:v16];

LABEL_9:
      return;
    }

    if (v5)
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

    [(PUOneUpViewController *)self _setAccessoryVisible:v5 changeReason:2];
    goto LABEL_9;
  }
}

- (void)accessoryVisibilityInteractionControllerDidEnd:(id)a3
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
    v5 = [(PUOneUpViewController *)self unlockDeviceHandlerWithActionType];

    if (v5)
    {
      v6 = [(PUOneUpViewController *)self unlockDeviceHandlerWithActionType];
      (v6)[2](v6, v4, 0);
    }
  }

  v7 = [(PUOneUpViewController *)self _currentAssetViewModel];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__PUOneUpViewController_accessoryVisibilityInteractionControllerDidEnd___block_invoke_2;
  v9[3] = &unk_1E7B80DD0;
  v10 = v7;
  v8 = v7;
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
  v3 = [(PUOneUpViewController *)self browsingSession];
  v4 = [v3 viewModel];

  v5 = [v4 currentAssetReference];
  v6 = [(PUOneUpViewController *)self _accessoryViewControllersManager];
  v7 = [v5 asset];
  v8 = [v6 accessoryViewTypeForAsset:v7];

  v10 = [v4 assetViewModelForAssetReference:v5];
  v9 = [v10 isInEditMode];

  LOBYTE(v10) = 0;
  if (v8 && ((v8 == 3) & v9) == 0)
  {
    LODWORD(v10) = [MEMORY[0x1E69C3740] enabled] ^ 1;
  }

  return v10;
}

- (BOOL)doubleTapZoomController:(id)a3 canDoubleTapBeginAtLocationFromProvider:(id)a4
{
  v5 = a4;
  v6 = +[PUOneUpSettings sharedInstance];
  v7 = [v6 doubleTapZoomAreaExcludesBars];

  if (v7 && (-[PUOneUpViewController _barsController](self, "_barsController"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isLocationFromProviderInBarsArea:v5], v8, (v9 & 1) != 0) || -[PUOneUpViewController _isLocationFromProviderInAccessoryArea:](self, "_isLocationFromProviderInAccessoryArea:", v5) || -[PUOneUpViewController _isLocationFromProviderOverControl:](self, "_isLocationFromProviderOverControl:", v5))
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v12 = [(PUOneUpViewController *)self _currentAssetViewModel];
    v10 = [v12 isInEditMode] ^ 1;
  }

  return v10;
}

- (BOOL)oneUpGestureController:(id)a3 shouldRecognizeGestureRecognizer:(id)a4 simultaneouslyWithOtherGestureRecognizer:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = [v6 view];

  if (v8 && ([v6 view], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_opt_class(), NSStringFromClass(v10), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "containsString:", @"SCUISensitiveContentOverlayView"), v11, v9, (v12 & 1) != 0))
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    v14 = [v7 view];

    if (v14)
    {
      v15 = [v7 view];
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

- (BOOL)oneUpGestureController:(id)a3 canPerformSelectionAtPoint:(id)a4
{
  v4 = [(PUOneUpViewController *)self browsingSession:a3];
  v5 = [v4 viewModel];

  if (v5)
  {
    v6 = [v5 isInSelectionMode];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)oneUpGestureController:(id)a3 canTapToToggleChromeAtPoint:(id)a4
{
  v5 = a4;
  if ([(PUOneUpViewController *)self _isVisualImageHasSubjectLiftedFromProvider:v5]|| [(PUOneUpViewController *)self _isLocationFromProviderOverVisualSearch:v5])
  {
    v6 = 0;
  }

  else
  {
    v7 = [(PUOneUpViewController *)self _currentAssetViewModel];
    v6 = ([v7 isAccessoryViewVisible] & 1) == 0 && (-[PUOneUpViewController _options](self, "_options") & 0x4000) == 0;
  }

  return v6;
}

- (BOOL)oneUpGestureController:(id)a3 canDoubleTapToZoomAtPoint:(id)a4
{
  v5 = a4;
  v6 = [(PUOneUpViewController *)self chromeViewController];
  [v6 contentDecorationAdditionalInsets];
  v7 = [(PUOneUpViewController *)self _isLocationFromProvider:v5 overTileOfKind:@"PUTileKindItemContent" insetBy:?];

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

- (BOOL)oneUpGestureController:(id)a3 canBeginGestureAt:(id)a4
{
  v5 = a4;
  v6 = [(PUOneUpViewController *)self chromeViewController];
  v7 = [v6 shouldAllowGestureToBeginAt:v5];

  if (!v7 || -[PUOneUpViewController _isLocationFromProviderInAccessoryArea:](self, "_isLocationFromProviderInAccessoryArea:", v5) || -[PUOneUpViewController _isLocationFromProviderOverControl:](self, "_isLocationFromProviderOverControl:", v5) || (-[PUOneUpViewController _currentAssetViewModel](self, "_currentAssetViewModel"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isInEditMode], v8, (v9 & 1) != 0) || -[PUOneUpViewController _isLocationFromProviderOverActionInfoItem:](self, "_isLocationFromProviderOverActionInfoItem:", v5) || -[PUOneUpViewController _visualImageHasActiveTextSelectionFromProvider:](self, "_visualImageHasActiveTextSelectionFromProvider:", v5))
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v10 = ![(PUOneUpViewController *)self _isVisualImageHasSubjectLiftedFromProvider:v5];
  }

  return v10;
}

- (BOOL)oneUpGestureRecognizerCoordinator:(id)a3 shouldAllowIrisGestureAtLocationFromProvider:(id)a4
{
  v5 = a4;
  if ([(PUOneUpViewController *)self _isLocationFromProviderInAccessoryArea:v5])
  {
    v6 = 0;
  }

  else
  {
    v6 = ![(PUOneUpViewController *)self _isLocationFromProviderOverControl:v5];
  }

  v7 = +[PUOneUpSettings sharedInstance];
  if (![v7 allowVisualIntelligence] || !-[PUOneUpViewController _isLocationFromProvider:overTileOfKind:](self, "_isLocationFromProvider:overTileOfKind:", v5, @"PUTileKindItemContent"))
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
    v6 = ![(PUOneUpViewController *)self _isLocationFromProviderOverInteractiveItem:v5];
    goto LABEL_15;
  }

  v8 = [(PUOneUpViewController *)self browsingSession];
  v9 = [v8 viewModel];
  v10 = [v9 currentAssetReference];
  v11 = [v10 asset];
  v12 = [(PUOneUpViewController *)self _allowsShowingVisualIntelligenceForAsset:v11];

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
    if (![(PUOneUpViewController *)self _vkImageOverlayAllowsVKCToHandleLongPressGestureFromProvider:v5])
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

  v4 = [(PUOneUpViewController *)self _secondScreenBrowser];
  v3 = v4 != 0;

  return v3;
}

- (void)airPlayControllerScreenAvailabilityChanged:(id)a3
{
  if (![a3 screenAvailability])
  {
    [(PUOneUpViewController *)self _setSecondScreenBrowser:0];
  }

  [(PUOneUpViewController *)self _invalidateBarsControllers];
  [(PUOneUpViewController *)self _updateBarsControllerIfNeeded];
  [(PUOneUpViewController *)self _invalidateChromeViewController];

  [(PUOneUpViewController *)self _updateIfNeeded];
}

- (id)contentViewControllerForAirPlayController:(id)a3
{
  v4 = [(PUOneUpViewController *)self _secondScreenBrowser];
  if (!v4)
  {
    v5 = [(PUOneUpViewController *)self browsingSession];
    v4 = [[PUOneUpViewController alloc] initWithBrowsingSession:v5 options:514];
    [(PUOneUpViewController *)v4 _setMainOneUpForSecondScreenBrowser:self];
    [(PUOneUpViewController *)self _setSecondScreenBrowser:v4];
  }

  return v4;
}

- (void)badgeVisibilityDidChange:(id)a3
{
  [(PUOneUpViewController *)self _invalidateTipPopovers];

  [(PUOneUpViewController *)self _updateTipPopoversIfNeeded];
}

- (void)dismissPresentedViewController:(id)a3 presentMenuWithCompletion:(id)a4
{
  v5 = MEMORY[0x1E69C3748];
  v6 = a4;
  v7 = [v5 livePhotosTipID];
  [(PUOneUpViewController *)self _handleSuggestedActionCompletedForTip:v7 completion:v6];
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

- (void)_handleSuggestedActionCompletedForTip:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(NSString *)self->_presentedTipID isEqualToString:v9])
  {
    [(PUOneUpViewController *)self _setHasShownRelevantTip:1];
    [MEMORY[0x1E69C3748] setTipActionPerformed:v9];
    v7 = _Block_copy(v6);
    tipDismissedCompletion = self->_tipDismissedCompletion;
    self->_tipDismissedCompletion = v7;
  }

  else if (v6)
  {
    v6[2](v6);
  }
}

- (BOOL)playButtonTileViewControllerShouldShowPlayButtonWhileActivated:(id)a3
{
  v4 = [(PUOneUpViewController *)self browsingSession];
  v5 = [v4 viewModel];
  v6 = [v5 reviewScreenBarsModel];

  if (v6)
  {
    return 1;
  }

  v8 = [(PUOneUpViewController *)self browsingSession];
  v9 = [v8 viewModel];
  v10 = [v9 currentAssetReference];

  v11 = [v10 asset];
  v12 = [v10 assetCollection];
  v13 = [(PUOneUpViewController *)self browsingSession];
  v14 = [v13 actionManager];
  v15 = [v14 shouldEnableActionType:53 onAsset:v11 inAssetCollection:v12];

  if (v15)
  {
    v7 = 1;
  }

  else
  {
    v16 = [(PUOneUpViewController *)self browsingSession];
    v17 = [v16 actionManager];
    v7 = [v17 shouldEnableActionType:54 onAsset:v11 inAssetCollection:v12];
  }

  return v7;
}

- (BOOL)playButtonTileViewControllerShouldShowPauseButton:(id)a3
{
  v3 = [(PUOneUpViewController *)self browsingSession];
  v4 = [v3 viewModel];
  v5 = [v4 reviewScreenBarsModel];
  v6 = v5 != 0;

  return v6;
}

- (double)playButtonTileViewController:(id)a3 delayForButtonAnimation:(BOOL)a4
{
  v4 = 0.0;
  if (a4)
  {
    v6 = [a3 assetViewModel];
    v7 = [v6 videoPlayer];

    if ([v7 isAtEnd] && -[PUOneUpViewController _shouldMakeChromeVisibleWhenVideoPlayerPlaysToEndTime:](self, "_shouldMakeChromeVisibleWhenVideoPlayerPlaysToEndTime:", v7))
    {
      v8 = +[PUOneUpSettings sharedInstance];
      [v8 chromeDefaultAnimationDuration];
      v4 = v9 + 0.3;
    }
  }

  return v4;
}

- (void)playButtonTileViewControllerDidTapButton:(id)a3
{
  v4 = [(PUOneUpViewController *)self browsingSession];
  v5 = [v4 viewModel];
  v6 = [v5 assetViewModelForCurrentAssetReference];
  v7 = [v6 videoPlayer];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__PUOneUpViewController_playButtonTileViewControllerDidTapButton___block_invoke;
  v9[3] = &unk_1E7B80C38;
  v10 = v7;
  v11 = self;
  v8 = v7;
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

- (void)imageTileViewController:(id)a3 didDisplayFullQualityImageWithDeferredProcessingFinished:(BOOL)a4
{
  v4 = a4;
  [(PUOneUpViewController *)self _xct_endSignpostingForImageFullQuality];
  if (v4)
  {

    [(PUOneUpViewController *)self _xct_endSignpostingForImageDeferredProcessing];
  }
}

- (BOOL)ppt_imageTileViewControllerShouldSignalDeferredProcessingDoneAndFinalImageDisplayed:(id)a3
{
  v4 = [a3 image];
  [v4 size];
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
  v3 = [(PUOneUpViewController *)self scaledVideoOffsetAdjustmentPolicy];
  v4 = [v3 evaluatePolicy];

  return v4 == 1;
}

- (BOOL)userTransformTileViewControllerShouldAnimateMinimumScaleWhileApplyingInsets:(id)a3
{
  v3 = [a3 assetViewModel];
  v4 = [v3 isUserTransformingTile];

  return v4;
}

- (BOOL)userTransformTileViewController:(id)a3 shouldReceiveTouchAtLocationFromProvider:(id)a4
{
  v5 = a4;
  v6 = [(PUOneUpViewController *)self _currentAssetViewModel];
  v7 = [v6 asset];

  if (-[PUOneUpViewController _isLocationFromProviderInAccessoryArea:](self, "_isLocationFromProviderInAccessoryArea:", v5) || -[PUOneUpViewController _isLocationFromProviderOverControl:](self, "_isLocationFromProviderOverControl:", v5) || (-[PUOneUpViewController _currentAssetViewModel](self, "_currentAssetViewModel"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isInEditMode], v8, (v9 & 1) != 0) || (-[PUOneUpViewController _currentAssetViewModel](self, "_currentAssetViewModel"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isAccessoryViewVisible"), v10, (v11 & 1) != 0) || -[PUOneUpViewController _isLocationFromProviderOverVisualSearch:](self, "_isLocationFromProviderOverVisualSearch:", v5))
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    v12 = [v7 needsSensitivityProtection] ^ 1;
  }

  return v12;
}

- (void)userTransformTileViewController:(id)a3 didChangeIsUserInteracting:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v7 = [(PUOneUpViewController *)self gestureController];
    [v7 cancelGestures];
  }

  v8 = [v6 assetViewModel];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__PUOneUpViewController_userTransformTileViewController_didChangeIsUserInteracting___block_invoke;
  v10[3] = &unk_1E7B7FF98;
  v11 = v8;
  v12 = v4;
  v9 = v8;
  [v9 performChanges:v10];
}

- (int64_t)userTransformTileViewController:(id)a3 insetModeForItemAtIndexPath:(id)a4
{
  v5 = [a3 assetViewModel];
  v6 = [v5 asset];
  v7 = [(PUOneUpViewController *)self _insetModeForAsset:v6];

  return v7;
}

- (BOOL)_isCurrentAssetAndInEditModeForAssetReference:(id)a3
{
  v4 = a3;
  v5 = [(PUOneUpViewController *)self browsingSession];
  v6 = [v5 viewModel];

  v7 = [v6 currentAssetReference];
  v8 = [v7 asset];
  v9 = [v4 asset];
  v10 = v9;
  if (v8 == v9)
  {

    goto LABEL_5;
  }

  v11 = [v8 isEqual:v9];

  if (v11)
  {
LABEL_5:
    v13 = [v6 assetViewModelForAssetReference:v4];
    v12 = [v13 isInEditMode];

    goto LABEL_6;
  }

  v12 = 0;
LABEL_6:

  return v12;
}

- (id)oneUpBarsControllerCustomActionMenuElements:(id)a3
{
  v3 = [(PUOneUpViewController *)self _menuElements];
  v4 = UIMenuElementsFromPXMenuElements();

  return v4;
}

- (void)oneUpBarsControllerWillPresentActionsMenu:(id)a3 completionHandler:(id)a4
{
  v5 = MEMORY[0x1E69C3748];
  v6 = a4;
  v7 = [v5 actionsMenuTipID];
  [(PUOneUpViewController *)self _handleSuggestedActionCompletedForTip:v7 completion:v6];
}

- (BOOL)oneUpBarsController:(id)a3 shouldHideStatusBarWhenShowingAccessoryViewForAssetReference:(id)a4
{
  v5 = a4;
  v6 = [(PUOneUpViewController *)self _spec];
  v7 = [v6 hideStatusBarWhenShowingAccessoryView];

  if (v7)
  {
    v8 = [v5 asset];
    v9 = [PUCommentsViewController canShowCommentsForAsset:v8];

    v10 = !v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)oneUpBarsController:(id)a3 shouldHideNavigationBarWhenShowingAccessoryViewForAssetReference:(id)a4
{
  v5 = a4;
  v6 = [(PUOneUpViewController *)self _accessoryViewControllersManager];
  v7 = [v6 shouldHideNavigationBarWhenShowingAccessoryViewControllerForAssetReference:v5];

  if (v7)
  {
    v8 = ![(PUOneUpViewController *)self _isCurrentAssetAndInEditModeForAssetReference:v5];
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)oneUpBarsController:(id)a3 shouldHideToolbarWhenShowingAccessoryViewForAssetReference:(id)a4
{
  v5 = a4;
  v6 = [(PUOneUpViewController *)self _accessoryViewControllersManager];
  v7 = [v6 shouldHideToolbarWhenShowingAccessoryViewControllerForAssetReference:v5];

  return v7;
}

- (BOOL)oneUpBarsController:(id)a3 shouldTapBeginAtLocationFromProvider:(id)a4
{
  v5 = a4;
  presentedTipID = self->_presentedTipID;
  v7 = [MEMORY[0x1E69C3748] syndicatedPhotosTipID];
  LODWORD(presentedTipID) = [(NSString *)presentedTipID isEqualToString:v7];

  if (presentedTipID && [(PUOneUpViewController *)self _isLocationFromProvider:v5 overTileOfKind:PUTileKindSyndicationAttribution])
  {
    v8 = [MEMORY[0x1E69C3748] syndicatedPhotosTipID];
    [(PUOneUpViewController *)self _handleSuggestedActionCompletedForTip:v8 completion:0];
  }

  if ([(PUOneUpViewController *)self _isLocationFromProviderInAccessoryArea:v5]|| [(PUOneUpViewController *)self _isLocationFromProviderOverControl:v5])
  {
    v9 = 0;
  }

  else
  {
    v10 = [(PUOneUpViewController *)self _currentAssetViewModel];
    v9 = [v10 isInEditMode] ^ 1;
  }

  v11 = +[PUOneUpSettings sharedInstance];
  v12 = [v11 allowVisualIntelligence];

  if (!v12)
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
    if (![(PUOneUpViewController *)self _isLocationFromProviderOverActionInfoItem:v5]&& ![(PUOneUpViewController *)self _visualImageHasActiveTextSelectionFromProvider:v5])
    {
      LODWORD(v13) = ![(PUOneUpViewController *)self _isVisualImageHasSubjectLiftedFromProvider:v5];
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v14 = [(PUOneUpViewController *)self _isAccessoryVisible];

  LOBYTE(v13) = 0;
  if (!v14 && ((v9 ^ 1) & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:

  return v13;
}

- (BOOL)oneUpBarsController:(id)a3 canShowCommentsForAsset:(id)a4
{
  v5 = a4;
  v6 = [(PUOneUpViewController *)self _spec];
  if ([v6 allowAccessoryVisibility])
  {
    v7 = [PUCommentsViewController canShowCommentsForAsset:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isDetailsAccessoryAvailableForAssetReference:(id)a3
{
  v4 = a3;
  v5 = [(PUOneUpViewController *)self _accessoryViewControllersManager];
  v6 = [v4 asset];

  LOBYTE(v4) = [v5 accessoryViewTypeForAsset:v6] != 0;
  return v4;
}

- (void)oneUpBarsControllerDidTapTitle:(id)a3
{
  if ([(PUOneUpViewController *)self _canShowAccessoryViewForCurrentAsset])
  {

    [(PUOneUpViewController *)self _toggleDetailsVisibility];
  }
}

- (void)oneUpBarsControllerDidChangeShowingPlayPauseButton:(id)a3
{
  [(PUOneUpViewController *)self _invalidateSpec];

  [(PUOneUpViewController *)self _updateIfNeeded];
}

- (void)barsControllerContentGuideInsetsDidChange:(id)a3
{
  [(PUOneUpViewController *)self _invalidateLayout];

  [(PUOneUpViewController *)self _updateIfNeeded];
}

- (id)barsControllerViewHostingGestureRecognizers:(id)a3
{
  v4 = [(PUOneUpViewController *)self browsingSession];
  v5 = [v4 viewModel];
  v6 = [v5 isPresentedForPreview];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(PUOneUpViewController *)self _tilingView];
  }

  return v7;
}

- (void)_updateChromeViewControllerDismissalProgress
{
  v3 = [(PUOneUpViewController *)self _interactivePinchDismissalController];
  [v3 dismissalInteractionProgress];
  v5 = v4;

  v6 = [(PUOneUpViewController *)self _interactiveSwipeDismissalController];
  [v6 dismissalInteractionProgress];
  v8 = v7;

  v9 = [(PUOneUpViewController *)self _interactivePinchDismissalController];
  if ([v9 isHandlingDismissalInteraction])
  {
    v10 = 1;
  }

  else
  {
    v11 = [(PUOneUpViewController *)self _interactiveSwipeDismissalController];
    v10 = [v11 isHandlingDismissalInteraction];
  }

  if (v5 < v8)
  {
    v5 = v8;
  }

  v12 = [(PUOneUpViewController *)self chromeViewController];
  [v12 updateDismissalStateWithIsInteractivelyDismissing:v10 dismissalProgress:v5];
}

- (void)interactiveDismissalControllerChangedIsHandlingDismissalInteraction:(id)a3
{
  v4 = a3;
  v5 = [(PUOneUpViewController *)self _currentAssetViewModel];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __93__PUOneUpViewController_interactiveDismissalControllerChangedIsHandlingDismissalInteraction___block_invoke;
  v11 = &unk_1E7B80C38;
  v12 = v5;
  v13 = v4;
  v6 = v4;
  v7 = v5;
  [v7 performChanges:&v8];
  [(PUOneUpViewController *)self _updateChromeViewControllerDismissalProgress:v8];
}

uint64_t __93__PUOneUpViewController_interactiveDismissalControllerChangedIsHandlingDismissalInteraction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) isHandlingDismissalInteraction];
  v3 = *(a1 + 32);

  return [v3 setIsBeingDismissed:v2];
}

- (BOOL)interactiveDismissalController:(id)a3 canBeginDismissalAtLocationFromProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PUOneUpViewController *)self _currentAssetViewModel];
  if ([v8 isInEditMode])
  {
    v9 = 0;
  }

  else
  {
    v10 = [v8 isAccessoryViewVisible];

    if ((v10 & 1) != 0 || [(PUOneUpViewController *)self _isLocationFromProviderInAccessoryArea:v6]|| [(PUOneUpViewController *)self _isLocationFromProviderOverControl:v6]|| [(PUOneUpViewController *)self _isIrisPlaying])
    {
      v9 = 0;
      goto LABEL_9;
    }

    v8 = [(PUOneUpViewController *)self browsingSession];
    v16 = [v8 viewModel];
    v9 = [v16 isInSelectionMode] ^ 1;
  }

LABEL_9:
  v11 = [(PUOneUpViewController *)self _interactivePinchDismissalController];

  v12 = v11 == v7;
  LOBYTE(v7) = (v11 != v7) & v9;
  if (v12 && v9)
  {
    v13 = [(PUOneUpViewController *)self _currentAssetViewModel];
    v14 = [v13 modelTileTransform];
    LODWORD(v7) = [v14 hasUserZoomedIn] ^ 1;
  }

  return v7;
}

- (id)interactiveDismissalControllerDesignatedTileController:(id)a3
{
  v4 = [(PUOneUpViewController *)self browsingSession];
  v5 = [v4 viewModel];

  v6 = [v5 assetsDataSource];
  v7 = [v5 currentAssetReference];
  v8 = [v6 indexPathForAssetReference:v7];
  if (v8)
  {
    v9 = [(PUOneUpViewController *)self _tilingView];
    v10 = [v6 identifier];
    v11 = [v9 presentedTileControllerWithIndexPath:v8 kind:@"PUTileKindItemContent" dataSourceIdentifier:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)layout:(id)a3 shouldShowAttributionViewForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dataSource];
  v8 = [v7 assetReferenceAtIndexPath:v6];

  v9 = [(PUOneUpViewController *)self browsingSession];
  v10 = [v9 viewModel];
  v11 = [v10 assetViewModelForAssetReference:v8];

  v12 = [v11 fetchAssetSyndicationState];
  v14 = v12 == 4 || (v12 & 0xFFFFFFFFFFFFFFFELL) == 2;

  return v14;
}

- (CGRect)layout:(id)a3 bestSquareRectForItemAtIndexPath:(id)a4
{
  v6 = *MEMORY[0x1E69C48E0];
  v5 = *(MEMORY[0x1E69C48E0] + 8);
  v8 = *(MEMORY[0x1E69C48E0] + 16);
  v7 = *(MEMORY[0x1E69C48E0] + 24);
  v9 = a4;
  v10 = [a3 dataSource];
  v11 = [v10 assetReferenceAtIndexPath:v9];

  v12 = [v11 asset];
  if (v12)
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v12 bestCropRectForAspectRatio:0 verticalContentMode:2 cropMode:1.0], x = v31.origin.x, y = v31.origin.y, width = v31.size.width, height = v31.size.height, !CGRectIsEmpty(v31)))
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

      v18 = [v12 pixelWidth];
      v19 = [v12 pixelHeight];
      v32.origin.x = 0.0;
      v32.origin.y = 0.0;
      v32.size.width = v18;
      v32.size.height = v19;
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

- (BOOL)layout:(id)a3 shouldInitiallyZoomToFillForItemAtIndexPath:(id)a4 contentSize:(CGSize)a5 viewportSize:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v8 = a5.height;
  v9 = a5.width;
  v12 = a4;
  v13 = [a3 dataSource];
  v14 = [v13 assetReferenceAtIndexPath:v12];

  v15 = [(PUOneUpViewController *)self browsingSession];
  v16 = [v15 viewModel];

  v17 = [v14 asset];
  v18 = [v17 mediaType];

  if ([MEMORY[0x1E69C3640] isOneUpRefreshEnabled])
  {
    v19 = [v16 assetViewModelForAssetReference:v14];
    if ([v16 isFillScreenModeEnabled] && (objc_msgSend(v19, "isUserTransformingTile") & 1) == 0)
    {
      v25 = [v19 modelTileTransform];
      v20 = [v25 hasUserInput] ^ 1;
    }

    else
    {
      v20 = 0;
    }

    v26 = [MEMORY[0x1E69C3738] sharedInstance];
    v27 = [(PUOneUpViewController *)self px_extendedTraitCollection];
    v28 = [v26 shouldInitiallyZoomContentWithSize:v18 toFillViewWithSize:objc_msgSend(v27 forAssetMediaType:"userInterfaceIdiom") userInterfaceIdiom:{v9, v8, width, height}];

    if ((v20 & 1) == 0)
    {
      v24 = [v16 isPresentedForPreview] | v28;
      goto LABEL_16;
    }

LABEL_12:
    v24 = 1;
LABEL_16:

    goto LABEL_17;
  }

  if (v18 != 2 || [v16 isPresentedForPreview])
  {
    v19 = [MEMORY[0x1E69C3738] sharedInstance];
    v21 = [(PUOneUpViewController *)self _spec];
    v22 = [v21 tileInitialContentMode];

    if (v22 != 2)
    {
      if (v22)
      {
        v24 = 0;
      }

      else
      {
        v23 = [(PUOneUpViewController *)self px_extendedTraitCollection];
        v24 = [v19 shouldInitiallyZoomContentWithSize:v18 toFillViewWithSize:objc_msgSend(v23 forAssetMediaType:"userInterfaceIdiom") userInterfaceIdiom:{v9, v8, width, height}];
      }

      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v24 = 0;
LABEL_17:

  return v24 & 1;
}

- (BOOL)layout:(id)a3 shouldShowVideoPlaceholderForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PUOneUpViewController *)self _isSecondScreenBrowserVisible])
  {
    v8 = [(PUOneUpViewController *)self _videoPlayerAtIndexPath:v7 layout:v6];
    v9 = [v8 isPlaybackDesired];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CGPoint)layout:(id)a3 accessoryOffsetForItemAtIndexPath:(id)a4
{
  v4 = *MEMORY[0x1E695EFF8];
  v5 = [(PUOneUpViewController *)self _assetViewModelAtIndexPath:a4 layout:a3];
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

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PUOneUpViewController;
  [(PUOneUpViewController *)&v10 preferredContentSizeDidChangeForChildContentContainer:v4];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 conformsToProtocol:&unk_1F2BFC710])
  {
    v5 = [(PUOneUpViewController *)self _accessoryViewControllersManager];
    v6 = [v5 assetReferenceForAccessoryViewController:v4];

    v7 = [v6 indexPath];
    if (v7)
    {
      v8 = [(PUOneUpViewController *)self _tilingView];
      v9 = [v8 layout];

      [v9 invalidateAccessoryForItemAtIndexPath:v7 withOptions:2];
    }
  }
}

- (BOOL)layout:(id)a3 shouldUseSquareImageInAccessoryForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUOneUpViewController *)self _spec];
  v9 = [v8 prefersSquareImageInDetails];

  if (v9)
  {
    v10 = [(PUOneUpViewController *)self _currentAssetViewModel];
    v11 = [v10 modelTileTransform];
    v12 = [v11 hasUserZoomedIn];

    if (![MEMORY[0x1E69C3640] isOneUpRefreshEnabled] || (objc_msgSend(MEMORY[0x1E69C3640], "sharedInstance"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "enableSideCommentsInLandscape"), v13, (v14 & 1) == 0))
    {
      v15 = [(PUOneUpViewController *)self _assetReferenceAtIndexPath:v7 layout:v6];
      v16 = [v15 asset];
      v12 |= [PUCommentsViewController canShowCommentsForAsset:v16];
    }

    v17 = v12 ^ 1;
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

- (double)layout:(id)a3 minimumItemHeightNeededInAccessoryForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 visibleRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(PUOneUpViewController *)self _assetReferenceAtIndexPath:v7 layout:v6];

  v17 = [(PUOneUpViewController *)self _accessoryViewControllersManager];
  v18 = [v17 accessoryViewControllerForAssetReference:v16];

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
  [v6 contentGuideInsets];
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

- (double)layout:(id)a3 minimumVisibleAccessoryHeightForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 visibleRect];
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

  v17 = [(PUOneUpViewController *)self _spec];
  v18 = [v17 prefersSquareImageInDetails];

  if (v18)
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
  [v7 contentGuideInsets];
  v25 = MaxY - v24 - v22;
  v26 = [(PUOneUpViewController *)self _assetReferenceAtIndexPath:v6 layout:v7];

  v27 = [(PUOneUpViewController *)self _accessoryViewControllersManager];
  v28 = [v27 accessoryViewControllerForAssetReference:v26];

  [v28 preferredContentSize];
  if (v25 >= v29)
  {
    v25 = v29;
  }

  return v25;
}

- (double)layout:(id)a3 minimumVisibleContentHeightForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[PUOneUpSettings sharedInstance];
  [v8 minimumVisibleContentHeight];
  v10 = v9;

  if (([MEMORY[0x1E69C3640] isOneUpRefreshEnabled] & 1) == 0)
  {
    v11 = [(PUOneUpViewController *)self _assetReferenceAtIndexPath:v7 layout:v6];
    v12 = [v11 asset];

    if ([PUCommentsViewController canShowCommentsForAsset:v12])
    {
      v13 = +[PUOneUpSettings sharedInstance];
      [v13 minimumVisibleCommentedContentHeight];
      v10 = v14;
    }
  }

  return v10;
}

- (BOOL)layout:(id)a3 isShowingInfoPanelForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PUOneUpViewController *)self _isPresentedForSecondScreen])
  {
    v8 = 0;
  }

  else
  {
    v9 = [(PUOneUpViewController *)self _assetViewModelAtIndexPath:v7 layout:v6];
    v10 = [(PUOneUpViewController *)self _prefersFloatingInfoPanel];
    v11 = [v9 asset];
    v12 = [(PUOneUpViewController *)self _accessoryContentKindForAsset:v11];

    v13 = [v9 isAccessoryViewVisible];
    if (v12 == 1)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v8 = v14 & v10;
  }

  return v8;
}

- (BOOL)layout:(id)a3 shouldShowAccessoryForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PUOneUpViewController *)self _isPresentedForSecondScreen])
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v9 = [(PUOneUpViewController *)self _assetViewModelAtIndexPath:v7 layout:v6];
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

- (CGPoint)layout:(id)a3 contentOffsetForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PUOneUpViewController *)self _isPresentedForSecondScreen])
  {
    v8 = *MEMORY[0x1E695EFF8];
    v9 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    v10 = [(PUOneUpViewController *)self _assetViewModelAtIndexPath:v7 layout:v6];
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

- (void)layout:(id)a3 willApplyDisplayTileTransform:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PUOneUpViewController *)self _isPresentedForSecondScreen])
  {
    v11 = [(PUOneUpViewController *)self _assetViewModelAtIndexPath:v10 layout:v8];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __81__PUOneUpViewController_layout_willApplyDisplayTileTransform_forItemAtIndexPath___block_invoke;
    v13[3] = &unk_1E7B80C38;
    v14 = v11;
    v15 = v9;
    v12 = v11;
    [v12 performChanges:v13];
  }
}

- (id)layout:(id)a3 modelTileTransformForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 dataSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [v6 dataSource];
    v11 = [(PUOneUpViewController *)self browsingSession];
    v12 = [v11 viewModel];
    v13 = [v12 assetsDataSource];

    v14 = [v10 assetReferenceAtIndexPath:v7];
    if (v10 != v13)
    {
      v15 = [v13 assetReferenceForAssetReference:v14];

      v14 = v15;
    }

    if (v14)
    {
      v16 = [(PUOneUpViewController *)self browsingSession];
      v17 = [v16 viewModel];
      v18 = [v17 assetViewModelForAssetReference:v14];

      v19 = [v18 modelTileTransform];
      if ([v18 isAccessoryViewVisible] && !-[PUOneUpViewController _prefersFloatingInfoPanel](self, "_prefersFloatingInfoPanel"))
      {
        [v18 accessoryViewVisibilityFraction];
        [v19 scale];
        PXFloatByLinearlyInterpolatingFloats();
        v21 = v20;
        [v19 normalizedTranslation];
        PXPointByLinearlyInterpolatingPoints();
        v24 = [v19 copyWithScale:v21 normalizedTranslation:{v22, v23}];

        v19 = v24;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  if ([(PUOneUpViewController *)self _isPresentedForSecondScreen])
  {
    [v19 scale];
    if (v25 < 1.0)
    {

      v19 = 0;
    }
  }

  return v19;
}

- (CGSize)layout:(id)a3 loadingIndicatorSizeForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dataSource];
  v8 = [(PUOneUpViewController *)self browsingSession];
  v9 = [v8 viewModel];
  v10 = [v7 assetReferenceAtIndexPath:v6];

  v11 = [v9 assetViewModelForAssetReference:v10];

  v12 = [(PUOneUpViewController *)self loadingIndicatorController];
  v13 = [v12 loadingIndicatorStyleForAssetViewModel:v11];

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

- (BOOL)layout:(id)a3 shouldShowBufferingIndicatorForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [a3 dataSource];
  v7 = [v6 assetAtIndexPath:v5];

  if ([PUBufferingIndicatorTileViewController canShowBufferingIndicatorTileForAsset:v7])
  {
    v8 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 px_isContentPreviewable];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)layout:(id)a3 shouldMovePeopleRowForItemAtIndexPath:(id)a4
{
  v7 = a4;
  v8 = [a3 dataSource];
  if (!v8)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [v15 handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:5036 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"layout.dataSource", v17}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = objc_opt_class();
    v17 = NSStringFromClass(v18);
    v19 = [v8 px_descriptionForAssertionMessage];
    [v15 handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:5036 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"layout.dataSource", v17, v19}];

    goto LABEL_6;
  }

LABEL_3:
  v9 = [v8 assetAtIndexPath:v7];

  v10 = [(PUOneUpViewController *)self browsingSession];
  v11 = [v10 viewModel];

  v12 = [v11 assetSharedViewModelForAsset:v9];
  v13 = +[PURenderIndicatorTileViewController wantsRenderViewForTypeOfProcessingNeeded:](PURenderIndicatorTileViewController, "wantsRenderViewForTypeOfProcessingNeeded:", [v12 deferredProcessingNeeded]);

  return v13;
}

- (BOOL)layout:(id)a3 shouldShowPeopleRowForItemAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (PFIsiOSPhotosApp() & 1) == 0 && !PFIsCamera() || ([MEMORY[0x1E69C3358] isExternalAppAndPhotosIsLocked])
  {
    v9 = 0;
    goto LABEL_11;
  }

  v10 = [v7 dataSource];
  if (!v10)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [v18 handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:5028 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"layout.dataSource", v20}];
LABEL_14:

    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = objc_opt_class();
    v20 = NSStringFromClass(v21);
    v22 = [v10 px_descriptionForAssertionMessage];
    [v18 handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:5028 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"layout.dataSource", v20, v22}];

    goto LABEL_14;
  }

LABEL_7:
  v11 = [(PUOneUpViewController *)self browsingSession];
  v12 = [v11 viewModel];
  v13 = [v10 assetReferenceAtIndexPath:v8];
  v14 = [v12 assetViewModelForAssetReference:v13];

  v15 = [(PUOneUpViewController *)self _options];
  v16 = [v14 isAccessoryViewVisible];
  if ((*&v15 & 0x400000) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v16;
  }

LABEL_11:
  return v9;
}

- (BOOL)layout:(id)a3 shouldMoveProgressIndicatorForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUOneUpViewController *)self browsingSession];
  v9 = [v8 viewModel];

  v10 = [(PUOneUpViewController *)self _spec];
  if ([v10 shouldDisplaySelectionIndicators])
  {
    v11 = 1;
LABEL_7:

    goto LABEL_8;
  }

  v12 = [v9 isInSelectionMode];

  if ((v12 & 1) == 0)
  {
    v13 = [(PUOneUpViewController *)self browsingSession];
    v14 = [v13 importStatusManager];

    if (!v14)
    {
      v11 = 0;
      goto LABEL_8;
    }

    v10 = [v6 dataSource];
    v15 = [(PUOneUpViewController *)self browsingSession];
    v16 = [v15 viewModel];
    v17 = [v10 assetReferenceAtIndexPath:v7];
    v18 = [v16 assetViewModelForAssetReference:v17];

    v11 = [v18 importState] != 0;
    goto LABEL_7;
  }

  v11 = 1;
LABEL_8:

  return v11;
}

- (double)alphaForReviewScreenBarsInLayout:(id)a3
{
  v3 = [(PUOneUpViewController *)self browsingSession];
  v4 = [v3 viewModel];
  v5 = [v4 isChromeVisible];

  result = 0.0;
  if (v5)
  {
    return 1.0;
  }

  return result;
}

- (BOOL)layoutShouldShowReviewScreenScrubberBar:(id)a3
{
  v3 = [(PUOneUpViewController *)self browsingSession];
  v4 = [v3 viewModel];

  v5 = [v4 currentAssetReference];
  v6 = [v5 asset];
  v7 = [v6 playbackStyle] == 4;

  return v7;
}

- (BOOL)layout:(id)a3 shouldShowCropButtonForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUOneUpViewController *)self _spec];
  v9 = [v8 shouldShowCropButton];

  if (v9)
  {
    v10 = [v6 dataSource];
    v11 = [v10 assetAtIndexPath:v7];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v12 = v11;

      if (v12)
      {
        LOBYTE(v9) = [PUCropButtonTileViewController shouldShowCropButtonTileForAsset:v12];
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {

      v12 = 0;
    }

    LOBYTE(v9) = 0;
    goto LABEL_8;
  }

LABEL_9:

  return v9;
}

- (BOOL)layout:(id)a3 shouldShowPlayButtonForItemAtIndexPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([MEMORY[0x1E69C3640] isOneUpRefreshEnabled])
  {
    v7 = 0;
  }

  else
  {
    v8 = [v5 dataSource];
    v9 = [v8 assetAtIndexPath:v6];
    v7 = (objc_opt_respondsToSelector() & 1) != 0 && [v9 playbackStyle] == 4;
  }

  return v7;
}

- (CGSize)layout:(id)a3 assetExplorerReviewScreenBadgeSizeForItemAtIndexPath:(id)a4
{
  [PUAssetExplorerReviewScreenBadgeTileViewController badgeTileSize:a3];
  result.height = v5;
  result.width = v4;
  return result;
}

- (double)layout:(id)a3 leadingBadgesWidthForItemAtIndexPath:(id)a4 contentWidth:(double)a5
{
  v8 = a4;
  v9 = [a3 dataSource];
  v10 = [v9 assetReferenceAtIndexPath:v8];

  v11 = [(PUOneUpViewController *)self browsingSession];
  v12 = [v11 viewModel];
  v13 = [v12 assetViewModelForAssetReference:v10];

  [PUBadgeTileViewController leadingBadgesSizeForAssetViewModel:v13 contentWidth:a5];
  v15 = v14;

  return v15;
}

- (CGSize)layout:(id)a3 badgeSizeForItemAtIndexPath:(id)a4 contentWidth:(double)a5
{
  v8 = a4;
  v9 = [a3 dataSource];
  v10 = [v9 assetReferenceAtIndexPath:v8];

  v11 = [(PUOneUpViewController *)self browsingSession];
  v12 = [v11 viewModel];
  v13 = [v12 assetViewModelForAssetReference:v10];

  [PUBadgeTileViewController badgeTileSizeForAssetViewModel:v13 contentWidth:a5];
  v15 = v14;
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (BOOL)layout:(id)a3 canApplyInsetStylingToItemAtIndexPath:(id)a4
{
  if ([(PUOneUpViewController *)self _shouldPreventScaledOffsetAdjustments:a3])
  {
    return 1;
  }

  v6 = [(PUOneUpViewController *)self browsingSession];
  v7 = [v6 viewModel];
  v8 = [v7 isChromeVisible];

  return v8;
}

- (UIEdgeInsets)layout:(id)a3 insetsWhenScaledToFitForItemAtIndexPath:(id)a4 inViewportSize:(CGSize)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(PUOneUpViewController *)self browsingSession];
  v11 = [v10 viewModel];

  v12 = [v8 dataSource];
  if (!v12)
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    [v38 handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:4862 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"layout.dataSource", v40}];
LABEL_23:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    v41 = objc_opt_class();
    v40 = NSStringFromClass(v41);
    v42 = [v12 px_descriptionForAssertionMessage];
    [v38 handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:4862 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"layout.dataSource", v40, v42}];

    goto LABEL_23;
  }

LABEL_3:
  v13 = [v12 assetAtIndexPath:v9];
  if (![MEMORY[0x1E69C3640] isOneUpRefreshEnabled])
  {
    [v8 visibleRect];
    if ((PXSizeIsEmpty() & 1) != 0 || (PXSizeGetAspectRatio(), [v13 aspectRatio], !PXFloatEqualToFloatWithTolerance()))
    {
      [v8 contentSafeInsets];
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
    v19 = [(PUOneUpViewController *)self chromeViewController];
    [(PUOneUpViewController *)self _layoutReferenceSize];
    [v19 contentGuideInsetsForViewSize:?];
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

  if (([v11 isChromeVisible] & 1) == 0)
  {
LABEL_13:
    v18 = *MEMORY[0x1E69C48A0];
    v17 = *(MEMORY[0x1E69C48A0] + 8);
    v16 = *(MEMORY[0x1E69C48A0] + 16);
    v15 = *(MEMORY[0x1E69C48A0] + 24);
    goto LABEL_16;
  }

  v19 = [(PUOneUpViewController *)self chromeViewController];
  [(PUOneUpViewController *)self _layoutReferenceSize];
  [v19 toolbarInsetsForViewSize:?];
LABEL_15:
  v18 = v20;
  v17 = v21;
  v16 = v22;
  v15 = v23;

LABEL_16:
  v28 = [v12 assetReferenceAtIndexPath:v9];
  v29 = [v11 assetViewModelForAssetReference:v28];
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

- (double)layout:(id)a3 insetContentCornerRadiusForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dataSource];
  v8 = [v7 assetAtIndexPath:v6];

  if (v8 && ([v8 mediaSubtypes] & 0x80004) != 0)
  {
    [v8 aspectRatio];
    v10 = v9;
    v11 = [(PUOneUpViewController *)self traitCollection];
    [PUOneUpScreenshotInsetUtilities cornerRadiusForAspectRatio:v11 traitCollection:v10];
  }

  else
  {
    v11 = [MEMORY[0x1E69C3640] sharedInstance];
    [v11 insetContentCornerRadius];
  }

  v13 = v12;

  return v13;
}

- (CGSize)layout:(id)a3 pixelSizeForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [a3 dataSource];
  v7 = [v6 assetAtIndexPath:v5];

  v8 = [v7 pixelWidth];
  v9 = [v7 pixelHeight];

  v10 = v8;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (double)layout:(id)a3 aspectRatioForItemAtIndexPath:(id)a4
{
  v7 = a4;
  v8 = [a3 dataSource];
  v9 = [v8 assetAtIndexPath:v7];

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
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:4833 description:{@"Asset:%@ must provide a valid aspect ratio, got:%f.", v9, *&v11}];
  }

  return v11;
}

- (int64_t)layout:(id)a3 insetModeForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dataSource];
  v8 = [v7 assetAtIndexPath:v6];

  v9 = [(PUOneUpViewController *)self _insetModeForAsset:v8];
  return v9;
}

- (void)imageAnalysisInteractionSubjectInteractionInProgressDidChange:(id)a3
{
  if ([a3 isSubjectInteractionInProgress])
  {
    v4 = [(PUOneUpViewController *)self gestureController];
    [v4 cancelGestures];
  }
}

- (id)textsToHighlightForImageAnalysisInteraction:(id)a3
{
  v4 = [(PUOneUpViewController *)self textsToHighlight];
  if ([v4 count])
  {
    v5 = [(PUOneUpViewController *)self assetUUIDsAllowedToHighlightText];
    if ([v5 count])
    {
      v6 = [(PUOneUpViewController *)self browsingSession];
      v7 = [v6 viewModel];
      v8 = [v7 currentAssetReference];
      v9 = [v8 asset];

      v10 = [v9 uuid];
      LOBYTE(v7) = [v5 containsObject:v10];

      if ((v7 & 1) == 0)
      {

        v4 = MEMORY[0x1E695E0F0];
      }
    }
  }

  return v4;
}

- (void)imageAnalysisInteractionIsDrivingLivePhotoPlaybackDidChange:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (imageAnalysisInteractionIsDrivingLivePhotoPlaybackDidChange__onceToken != -1)
  {
    dispatch_once(&imageAnalysisInteractionIsDrivingLivePhotoPlaybackDidChange__onceToken, &__block_literal_global_47430);
    v3 = v4;
  }

  if ([v3 isDrivingLivePhotoPlayback])
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

- (void)showDetailsViewForImageAnalysisInteraction:(id)a3
{
  if (![(PUOneUpViewController *)self _isAccessoryVisible])
  {

    [(PUOneUpViewController *)self _toggleDetailsVisibility];
  }
}

- (id)contentViewForImageAnalysisInteraction:(id)a3
{
  v4 = [(PUOneUpViewController *)self browsingSession];
  v5 = [v4 viewModel];
  v6 = [v5 currentAssetReference];

  v7 = [(PUOneUpViewController *)self _tilingView];
  v8 = [v6 indexPath];
  v9 = [v6 dataSourceIdentifier];
  v10 = [v7 presentedTileControllerWithIndexPath:v8 kind:@"PUTileKindItemContent" dataSourceIdentifier:v9];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 viewIfLoaded];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)analysisInteractionAllowedForImageAnalysisInteraction:(id)a3
{
  v4 = [a3 assetViewModel];
  v5 = [v4 asset];

  if ([(PUOneUpViewController *)self _allowsShowingVisualIntelligenceForAsset:v5])
  {
    v6 = [(PUOneUpViewController *)self browsingSession];
    v7 = [v6 viewModel];
    v8 = [v7 currentAssetReference];
    v9 = [v8 asset];
    v10 = v5;
    v11 = v9;
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

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = [(PUOneUpViewController *)self _tilingView];

  if (v5 == v4)
  {
    v6 = [(PUOneUpViewController *)self browsingSession];
    v7 = [v6 viewModel];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__PUOneUpViewController_scrollViewDidEndDecelerating___block_invoke;
    v10[3] = &unk_1E7B80DD0;
    v8 = v7;
    v11 = v8;
    [v8 performChanges:v10];
    if ([(PUOneUpViewController *)self _isAccessoryVisible]&& [(PUOneUpViewController *)self _accessoryContentKindForCurrentAsset]== 1)
    {
      [(PUOneUpEventTracker *)self->_eventTracker logInfoPanelShownAndSwipeToNewAsset];
    }

    v9 = [v4 is_scrollViewDelegate];
    [v9 scrollViewDidEndDecelerating:v4];
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PUOneUpViewController *)self _tilingView];

  if (v7 == v6)
  {
    if (!v4)
    {
      v8 = [(PUOneUpViewController *)self browsingSession];
      v9 = [v8 viewModel];

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __65__PUOneUpViewController_scrollViewDidEndDragging_willDecelerate___block_invoke;
      v12[3] = &unk_1E7B80DD0;
      v13 = v9;
      v10 = v9;
      [v10 performChanges:v12];
    }

    v11 = [v6 is_scrollViewDelegate];
    [v11 scrollViewDidEndDragging:v6 willDecelerate:v4];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v12 = a3;
  v9 = [(PUOneUpViewController *)self _tilingView];

  v10 = v12;
  if (v9 == v12)
  {
    v11 = [v12 is_scrollViewDelegate];
    [v11 scrollViewWillEndDragging:v12 withVelocity:a5 targetContentOffset:{x, y}];

    v10 = v12;
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v5 = [(PUOneUpViewController *)self _tilingView];

  if (v5 == v4)
  {
    [(PUOneUpViewController *)self _updateViewModelWithCurrentScrollPosition];
    v6 = [(PUOneUpViewController *)self browsingSession];
    v7 = [v6 viewModel];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__PUOneUpViewController_scrollViewWillBeginDragging___block_invoke;
    v10[3] = &unk_1E7B80DD0;
    v11 = v7;
    v8 = v7;
    [v8 performChanges:v10];
    if ([(PUOneUpViewController *)self _isTipPopoverVisible])
    {
      [(PUOneUpViewController *)self _setHasShownRelevantTip:1];
      [(PUOneUpViewController *)self _invalidateTipPopovers];
      [(PUOneUpViewController *)self _updateTipPopoversIfNeeded];
    }

    v9 = [v4 is_scrollViewDelegate];
    [v9 scrollViewWillBeginDragging:v4];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v11 = a3;
  v4 = [(PUOneUpViewController *)self _tilingView];

  v5 = v11;
  if (v4 == v11)
  {
    if (UIAccessibilityIsVoiceOverRunning())
    {
      v6 = [(PUOneUpViewController *)self browsingSession];
      v7 = [v6 viewModel];
      v8 = [v7 isScrolling];
    }

    else
    {
      v8 = 0;
    }

    if ([v11 isDragging] & 1) != 0 || (v8)
    {
      if (![(PUOneUpViewController *)self _isDrivingScrubbing])
      {
LABEL_13:
        v10 = [v11 is_scrollViewDelegate];
        [v10 scrollViewDidScroll:v11];

        v5 = v11;
        goto LABEL_14;
      }
    }

    else
    {
      v9 = [v11 isDecelerating];
      if (!-[PUOneUpViewController _isDrivingScrubbing](self, "_isDrivingScrubbing") || (v9 & 1) == 0 && ![v11 pu_isPerformingScrollTest])
      {
        goto LABEL_13;
      }
    }

    [(PUOneUpViewController *)self _updateViewModelWithCurrentScrollPosition];
    goto LABEL_13;
  }

LABEL_14:
}

- (CGPoint)tilingView:(id)a3 initialVisibleOriginWithLayout:(id)a4
{
  v6 = a4;
  v7 = [(PUOneUpViewController *)self browsingSession];
  v8 = [v7 viewModel];
  v9 = [v8 assetsDataSource];

  v10 = [v6 dataSource];
  LOBYTE(v8) = [v10 isEqual:v9];

  if ((v8 & 1) == 0)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:4659 description:{@"Invalid parameter not satisfying: %@", @"[[layout dataSource] isEqual:assetsDataSource]"}];
  }

  v11 = [(PUOneUpViewController *)self browsingSession];
  v12 = [v11 viewModel];
  v13 = [v12 currentAssetReference];

  v14 = [v9 indexPathForAssetReference:v13];
  if (v14 || ([v9 firstItemIndexPath], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = v14;
    [v6 visibleRectForScrollingToItemAtIndexPath:v14 scrollPosition:0];
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

- (id)tilingView:(id)a3 scrollInfoWithLayout:(id)a4
{
  v5 = a4;
  v6 = [(PUOneUpViewController *)self browsingSession];
  v7 = [v6 viewModel];
  v8 = [v7 assetsDataSource];
  v9 = [v8 isEmpty];

  if (v9)
  {
    [PUTilingScrollInfo scrollInfoWithScrollDirections:0];
  }

  else
  {
    [v5 preferredScrollInfo];
  }
  v10 = ;

  return v10;
}

- (void)presentPeopleViewController:(id)a3
{
  v4 = a3;
  v5 = [(PUOneUpViewController *)self navigationController];
  [v5 presentViewController:v4 animated:1 completion:0];
}

- (void)pushPeopleViewController:(id)a3
{
  v4 = a3;
  v5 = [(PUOneUpViewController *)self navigationController];
  [v5 setNavigationBarHidden:0 animated:1];

  v6 = [(PUOneUpViewController *)self navigationController];
  [v6 pushViewController:v4 animated:1];
}

- (BOOL)tilingViewCanBypass20069585Check:(id)a3
{
  v3 = [(PUOneUpViewController *)self _currentAssetViewModel];
  v4 = [v3 isInEditMode];

  return v4;
}

- (id)tilingView:(id)a3 tileTransitionCoordinatorForLayoutInvalidationContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PUOneUpViewController *)self _shouldDisableTransitionsUntilAppeared])
  {
    v8 = 0;
  }

  else
  {
    v9 = [(PUOneUpViewController *)self browsingSession];
    v10 = [v9 viewModel];

    v11 = [v6 layout];
    v8 = [PUTileTransitionCoordinator defaultTileTransitionCoordinatorForLayoutInvalidationContext:v7 layout:v11 tilingView:v6 viewModel:v10];
  }

  return v8;
}

- (id)tilingView:(id)a3 tileTransitionCoordinatorForReattachedTileControllers:(id)a4 context:(id)a5
{
  v6 = a4;
  v7 = a5;
  if ([v7 isTransitioningOverOneUp])
  {
    v8 = 0;
  }

  else
  {
    v8 = [PUTileTransitionCoordinator defaultTileTransitionCoordinatorForReattachedTileControllers:v6 context:v7];
  }

  return v8;
}

- (id)tilingView:(id)a3 tileTransitionCoordinatorForChangeFromFrame:(CGRect)a4 toFrame:(CGRect)a5 duration:(double)a6
{
  if (a6 <= 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = [PUTileTransitionCoordinator defaultTileTransitionCoordinatorForFrameChangeWithTileCrossFade:0 tilingView:a3, a6, a4.origin.y, a4.size.width, a4.size.height, a5.origin.x, a5.origin.y, a5.size.width, a5.size.height];
  }

  return v6;
}

- (id)tilingView:(id)a3 tileTransitionCoordinatorForTransitionFromLayout:(id)a4 toLayout:(id)a5 withContext:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(PUOneUpViewController *)self browsingSession];
  v15 = [v14 viewModel];
  v16 = [v15 currentAssetReference];

  v17 = [PUTileTransitionCoordinator browsingTileTransitionCoordinatorForTransitionFromLayout:v12 toLayout:v11 withTilingView:v13 anchorAssetReference:v16 context:v10];

  return v17;
}

- (void)presentErrorFromLoadingIndicator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PUOneUpViewController *)self browsingSession];
    v6 = [v5 viewModel];

    v7 = [v6 assetViewModelForCurrentAssetReference];
    v8 = [v7 asset];
    v9 = [[PUOneUpLoadingErrorPresentationController alloc] initWithError:v4 forAsset:v8];
    [(PUErrorPresentationController *)v9 setRadarComponentID:@"512768" name:@"Photos Backend (New Bugs)" version:@"all"];
    v10 = [(PUErrorPresentationController *)v9 alertControllerWithCompletion:0];
    [(PUOneUpViewController *)self presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    v6 = PLOneUpGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "Attempted to present an error from the loading indicator, but the error was nil. Skipping.", v11, 2u);
    }
  }
}

- (id)tilingView:(id)a3 tileControllerWithIndexPath:(id)a4 kind:(id)a5 dataSource:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(PUOneUpViewController *)self browsingSession];
  v16 = [v15 viewModel];

  v17 = [v16 assetsDataSource];
  if (([v14 isEqual:v17] & 1) == 0)
  {
    v64 = [MEMORY[0x1E696AAA8] currentHandler];
    [v64 handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:4342 description:{@"Invalid parameter not satisfying: %@", @"[dataSource isEqual:assetsDataSource]"}];
  }

  v123 = v12;
  if ([v13 isEqualToString:@"PUTileKindItemContent"])
  {
    v18 = v14;
    v19 = v13;
    v20 = self;
    v21 = [(PUOneUpViewController *)self browsingSession];
    v22 = [v21 contentTileProvider];

    v121 = v17;
    v23 = [v17 assetReferenceAtIndexPath:v12];
    v119 = v16;
    v24 = [v16 assetViewModelForAssetReference:v23];
    v25 = [v23 asset];
    v26 = [v22 tileControllerForAsset:v25 viewModel:v24 tilingView:v11];
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

    v16 = v119;
    v17 = v121;
    self = v20;
    v13 = v19;
    v14 = v18;
    goto LABEL_7;
  }

  if ([v13 isEqualToString:PUTileKindUserTransform])
  {
    v28 = [v17 assetReferenceAtIndexPath:v12];
    v27 = [v11 dequeueTileControllerWithReuseIdentifier:@"PUUserTransformTileReuseIdentifier"];
    [v16 assetViewModelForAssetReference:v28];
    v30 = v29 = v16;
    [v27 setAssetViewModel:v30];
    [v27 setBrowsingViewModel:v29];
LABEL_13:

    v16 = v29;
LABEL_14:

    goto LABEL_15;
  }

  if ([v13 isEqualToString:PUTileKindPlayButton])
  {
    v28 = [v17 assetReferenceAtIndexPath:v12];
    [v16 assetViewModelForAssetReference:v28];
    v30 = v29 = v16;
    v27 = [v11 dequeueTileControllerWithReuseIdentifier:@"PUPlayButtonViewReuseIdentifier"];
    [v27 setBrowsingViewModel:v29];
    v31 = v27;
LABEL_12:
    [v31 setAssetViewModel:v30];
    goto LABEL_13;
  }

  if ([v13 isEqualToString:PUTileKindBackground])
  {
    v27 = [v11 dequeueTileControllerWithReuseIdentifier:@"PUBackgroundTileReuseIdentifier"];
    [v27 setViewModel:v16];
    [(PUOneUpViewController *)self _setBackgroundTileViewController:v27];
    [(PUOneUpViewController *)self _updateBackgroundTileViewController];
    goto LABEL_15;
  }

  if ([v13 isEqualToString:PUTileKindBadge])
  {
    v28 = [v17 assetReferenceAtIndexPath:v12];
    [v16 assetViewModelForAssetReference:v28];
    v30 = v29 = v16;
    v31 = [v11 dequeueTileControllerWithReuseIdentifier:@"PUBadgeTileReuseIdentifier"];
    v27 = v31;
    goto LABEL_12;
  }

  if ([v13 isEqualToString:PUTileKindAssetExplorerReviewScreenBadge])
  {
    v33 = [v17 assetReferenceAtIndexPath:v12];
    [(PUOneUpViewController *)self browsingSession];
    v35 = v34 = v16;
    [v35 actionManager];
    v36 = v11;
    v37 = v109 = v11;

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
    v16 = v40;
    v11 = v109;

    v43 = v134;
LABEL_27:

LABEL_28:
    goto LABEL_15;
  }

  if ([v13 isEqualToString:PUTileKindSelectionIndicator])
  {
    v44 = [v17 assetReferenceAtIndexPath:v12];
    [(PUOneUpViewController *)self browsingSession];
    v46 = v45 = v16;
    [v46 actionManager];
    v47 = v11;
    v48 = v110 = v11;

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
    v16 = v51;
    v11 = v110;

    v43 = v129;
    goto LABEL_27;
  }

  if ([v13 isEqualToString:PUTileKindAssetExplorerReviewScreenProgressIndicator])
  {
    v117 = [v17 assetAtIndexPath:v12];
    v122 = [v16 assetSharedViewModelForAsset:v117];
    [v17 assetReferenceAtIndexPath:v12];
    v54 = v16;
    v56 = v55 = v11;
    [v54 assetViewModelForAssetReference:v56];
    v115 = v14;
    v57 = v17;
    v58 = a2;
    v60 = v59 = v54;
    v61 = [v60 videoPlayer];
    v62 = [v55 dequeueTileControllerWithReuseIdentifier:@"PUAssetExplorerReviewScreenProgressIndicatorTileReuseIdentifier"];
    [v62 setAssetSharedViewModel:v122];
    [v62 setVideoPlayer:v61];

    v27 = v62;
    v63 = v59;
    a2 = v58;
    v17 = v57;
    v14 = v115;

    v11 = v55;
    v16 = v63;
    goto LABEL_28;
  }

  if ([v13 isEqualToString:PUTileKindReviewScreenTopBar])
  {
    v27 = [v11 dequeueTileControllerWithReuseIdentifier:@"PUReviewScreenTopBarTileReuseIdentifier"];
    [(PUOneUpViewController *)self _setReviewScreenTopBarTileViewController:v27];
LABEL_37:
    [v27 setBrowsingViewModel:v16];
    [(PUOneUpViewController *)self _updateReviewScreenBars];
    goto LABEL_15;
  }

  if ([v13 isEqualToString:PUTileKindReviewScreenControlBar])
  {
    v27 = [v11 dequeueTileControllerWithReuseIdentifier:@"PUReviewScreenControlBarTileReuseIdentifier"];
    [(PUOneUpViewController *)self _setReviewScreenControlBarTileViewController:v27];
    goto LABEL_37;
  }

  if ([v13 isEqualToString:PUTileKindReviewScreenScrubberBar])
  {
    v27 = [v11 dequeueTileControllerWithReuseIdentifier:@"PUReviewScreenScrubberBarTileReuseIdentifier"];
    [(PUOneUpViewController *)self _setReviewScreenScrubberBarTileViewController:v27];
    goto LABEL_37;
  }

  if ([v13 isEqualToString:PUTileKindProgressIndicator])
  {
    v116 = v14;
    v118 = [v17 assetAtIndexPath:v12];
    [v16 assetSharedViewModelForAsset:?];
    v66 = v65 = v16;
    [v17 assetReferenceAtIndexPath:v12];
    v68 = v67 = v11;
    v69 = [v16 assetViewModelForAssetReference:v68];
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

    v16 = v65;
    v14 = v116;
    v11 = v111;
    goto LABEL_15;
  }

  if ([v13 isEqualToString:PUTileKindPeople])
  {
    v27 = [v11 dequeueTileControllerWithReuseIdentifier:@"PUPeopleTileReuseIdentifier"];
    v28 = [v17 assetAtIndexPath:v12];
    [v27 setDisplayAsset:v28];
    [v27 setPeopleDelegate:self];
    goto LABEL_14;
  }

  v71 = a2;
  v120 = v16;
  if ([v13 isEqualToString:PUTileKindRenderIndicator])
  {
    v72 = [v17 assetAtIndexPath:v12];
    v73 = [v16 assetSharedViewModelForAsset:v72];
    v26 = [v11 dequeueTileControllerWithReuseIdentifier:@"PURenderIndicatorTileReuseIdentifier"];
    [v26 setAssetSharedViewModel:v73];
    [(PUOneUpViewController *)self undoManager];
    v75 = v74 = v11;
    [v26 setUndoManager:v75];

    v11 = v74;
    v16 = v120;

    a2 = v71;
LABEL_7:
    v27 = v26;
    goto LABEL_15;
  }

  v76 = v17;
  v113 = self;
  v114 = v71;
  v77 = v11;
  if ([v13 isEqualToString:PUTileKindImportStatusIndicator])
  {
    v78 = [v76 assetReferenceAtIndexPath:v12];
    v79 = [v16 assetViewModelForAssetReference:v78];
    v27 = [v11 dequeueTileControllerWithReuseIdentifier:@"PUImportStatusIndicatorTileReuseIdentifier"];
    [v27 setAssetViewModel:v79];

    v16 = v120;
LABEL_46:
    v80 = v114;
LABEL_47:
    v17 = v76;
    a2 = v80;
    goto LABEL_15;
  }

  v112 = v13;
  if ([v13 isEqualToString:PUTileKindBufferingIndicator])
  {
    v81 = [v76 assetReferenceAtIndexPath:v12];
    v82 = [v16 assetViewModelForAssetReference:?];
    v83 = [v11 dequeueTileControllerWithReuseIdentifier:@"PUBufferingIndicatorTileReuseIdentifier"];
    [v83 setAssetViewModel:v82];
    v84 = [(PUOneUpViewController *)v113 browsingSession];
    v85 = [v84 mergedVideoProvider];
    [v83 setMergedVideoProvider:v85];

    [v83 setBrowsingViewModel:v120];
    objc_initWeak(location, v113);
    v124[0] = MEMORY[0x1E69E9820];
    v124[1] = 3221225472;
    v124[2] = __80__PUOneUpViewController_tilingView_tileControllerWithIndexPath_kind_dataSource___block_invoke_5;
    v124[3] = &unk_1E7B7A0E8;
    objc_copyWeak(&v125, location);
    [v83 setErrorAlertControllerDisplayer:v124];
    objc_destroyWeak(&v125);
    objc_destroyWeak(location);

    self = v113;
    v17 = v76;
    a2 = v114;
    v27 = v83;
    v16 = v120;
LABEL_15:
    [(PUOneUpViewController *)self _configureAdoptedTileController:v27];
    if (v27)
    {
      goto LABEL_16;
    }

    goto LABEL_70;
  }

  if ([v13 isEqualToString:PUTileKindLoadingIndicator])
  {
    v86 = [v76 assetReferenceAtIndexPath:v12];
    v87 = v16;
    v88 = [v16 assetViewModelForAssetReference:v86];
    v27 = [v11 dequeueTileControllerWithReuseIdentifier:@"PULoadingIndicatorTileReuseIdentifier"];
    v89 = [(PUOneUpViewController *)self loadingIndicatorController];
    [v27 setStyle:{objc_msgSend(v89, "loadingIndicatorStyleForAssetViewModel:", v88)}];

    v11 = v77;
LABEL_52:

    v16 = v87;
    v13 = v112;
    goto LABEL_46;
  }

  if ([v13 isEqualToString:PUTileKindAccessory])
  {
    v90 = [v76 assetReferenceAtIndexPath:v12];
    v91 = [v16 assetViewModelForAssetReference:v90];
    v27 = [v11 dequeueTileControllerWithReuseIdentifier:@"PUAccessoryTileReuseIdentifier"];
    [v27 setAssetViewModel:v91];
    [v27 setAssetReference:v90];

    v16 = v120;
    goto LABEL_46;
  }

  if ([v13 isEqualToString:PUTileKindVideoPlaceholder])
  {
    v27 = [v11 dequeueTileControllerWithReuseIdentifier:@"PUVideoPlaceholderTileReuseIdentifier"];
LABEL_61:
    v13 = v112;
LABEL_62:
    v80 = v114;
    v16 = v120;
    goto LABEL_47;
  }

  if ([v13 isEqualToString:PUTileKindLivePhotoVideoPlaybackOverlay])
  {
    v92 = [v11 dequeueTileControllerWithReuseIdentifier:@"PULivePhotoVideoPlaybackTileReuseIdentifier"];
    [v92 setBrowsingViewModel:v16];
    v93 = [(PUOneUpViewController *)self browsingSession];
    v94 = [v93 mergedVideoProvider];
    [v92 setMergedVideoProvider:v94];

    [v92 setIsPresentedForSecondScreen:{-[PUOneUpViewController _isPresentedForSecondScreen](self, "_isPresentedForSecondScreen")}];
    v27 = v92;
    [v92 setDelegate:self];
    v95 = [(PUOneUpViewController *)self _tilingView];
    v96 = [v95 window];

    if (!v96)
    {
      v97 = [MEMORY[0x1E69DC668] sharedApplication];
      v98 = [v97 windows];
      v96 = [v98 firstObject];
    }

    v99 = [v96 px_imageModulationManager];
    [v92 setImageModulationManager:v99];

    goto LABEL_61;
  }

  if ([v13 isEqualToString:PUTileKindSyndicationAttribution])
  {
    v100 = [v76 assetReferenceAtIndexPath:v12];
    v101 = [v16 assetViewModelForAssetReference:v100];
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
        v11 = v77;
        v13 = v112;
        goto LABEL_62;
      }

      v104 = [MEMORY[0x1E696AAA8] currentHandler];
      v107 = objc_opt_class();
      v106 = NSStringFromClass(v107);
      v108 = [v102 px_descriptionForAssertionMessage];
      [v104 handleFailureInMethod:v114 object:self file:@"PUOneUpViewController.m" lineNumber:4544 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[tilingView dequeueTileControllerWithReuseIdentifier:PUSyndicationAttributionTileReuseIdentifier]", v106, v108}];
    }

    else
    {
      v104 = [MEMORY[0x1E696AAA8] currentHandler];
      v105 = objc_opt_class();
      v106 = NSStringFromClass(v105);
      [v104 handleFailureInMethod:v114 object:self file:@"PUOneUpViewController.m" lineNumber:4544 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[tilingView dequeueTileControllerWithReuseIdentifier:PUSyndicationAttributionTileReuseIdentifier]", v106}];
    }

    goto LABEL_66;
  }

  if ([v13 isEqualToString:PUTileKindCropButton])
  {
    v86 = [v76 assetReferenceAtIndexPath:v12];
    v87 = v16;
    v88 = [v16 assetViewModelForAssetReference:v86];
    v27 = [v11 dequeueTileControllerWithReuseIdentifier:@"PUCropButtonTileReuseIdentifier"];
    [v27 setDelegate:self];
    [v27 setAssetViewModel:v88];
    [v27 setBrowsingViewModel:v120];
    goto LABEL_52;
  }

  [(PUOneUpViewController *)self _configureAdoptedTileController:0];
  v17 = v76;
  a2 = v71;
LABEL_70:
  v103 = [MEMORY[0x1E696AAA8] currentHandler];
  [v103 handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:4563 description:{@"Invalid parameter not satisfying: %@", @"tileController != nil"}];

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
  v4 = [v3 allowsVisualIntelligenceVisualLookupInfoPanelMode];

  if (!v4)
  {
    return 0;
  }

  v5 = [(PUOneUpViewController *)self traitCollection];
  v6 = [v5 userInterfaceIdiom];
  v7 = [(PUOneUpViewController *)self browsingSession];
  v8 = [v7 viewModel];
  v9 = [v8 horizontalSizeClass];

  v10 = [MEMORY[0x1E69C3740] enabled];
  if (v6)
  {
    v11 = v9 == 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  v13 = v12 & (v10 ^ 1);

  return v13;
}

- (BOOL)_allowsShowingVisualIntelligenceForAsset:(id)a3
{
  v4 = a3;
  v5 = [(PUOneUpViewController *)self presentationOrigin];
  v6 = +[PUOneUpSettings sharedInstance];
  v7 = [v6 allowsVisualIntelligenceInVideoFrame];

  v8 = [MEMORY[0x1E69C3C88] canRequestVKImageAnalysisForAsset:v4];
  if ((v8 & 1) == 0 && v7)
  {
    v8 = [v4 mediaType] == 2;
  }

  v9 = +[PUOneUpSettings sharedInstance];
  if ([v9 allowVisualIntelligence])
  {
    v10 = v8 & ~[(PUOneUpViewController *)self _isPresentedForSecondScreen]& (v5 != 13);
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
    v4 = [v3 allowVisualIntelligence];

    if (v4)
    {
      v5 = [PUOneUpVisualImageAnalyzingController alloc];
      v6 = [(PUOneUpViewController *)self browsingSession];
      v7 = [v6 viewModel];
      v8 = [(PUOneUpVisualImageAnalyzingController *)v5 initWithBrowsingViewModel:v7];
      visualImageAnalyzingController = self->_visualImageAnalyzingController;
      self->_visualImageAnalyzingController = v8;
    }
  }

  v10 = self->_visualImageAnalyzingController;

  return v10;
}

- (PUOneUpPhototypeSupportController)phototypeSupportController
{
  v3 = [MEMORY[0x1E69C3650] sharedInstance];
  v4 = [v3 enablePhototypes];

  if (v4)
  {
    phototypeSupportController = self->_phototypeSupportController;
    if (!phototypeSupportController)
    {
      v6 = [PUOneUpPhototypeSupportController alloc];
      v7 = [(PUOneUpViewController *)self browsingSession];
      v8 = [v7 viewModel];
      v9 = [(PUOneUpPhototypeSupportController *)v6 initWithBrowsingViewModel:v8];
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
    v5 = [(PUOneUpViewController *)self browsingSession];
    v6 = [v5 viewModel];
    v7 = [(PUShazamEventsController *)v4 initWithBrowsingViewModel:v6];
    v8 = self->_shazamEventsController;
    self->_shazamEventsController = v7;

    shazamEventsController = self->_shazamEventsController;
  }

  return shazamEventsController;
}

- (NSString)passcodeAuthenticationReason
{
  v2 = [(PUOneUpViewController *)self browsingSession];
  v3 = [v2 viewModel];
  v4 = [v3 currentAssetReference];
  v5 = [v4 pxAssetReference];

  v6 = [v5 assetCollection];
  [v6 px_isHiddenSmartAlbum];
  [v6 px_isRecentlyDeletedSmartAlbum];
  [v6 px_isRecoveredSmartAlbum];
  v7 = PXLocalizedString();

  return v7;
}

- (NSString)authenticationTitle
{
  v2 = [(PUOneUpViewController *)self browsingSession];
  v3 = [v2 viewModel];
  v4 = [v3 currentAssetReference];
  v5 = [v4 pxAssetReference];

  v6 = [v5 assetCollection];
  [v6 px_isHiddenSmartAlbum];
  [v6 px_isRecentlyDeletedSmartAlbum];
  [v6 px_isRecoveredSmartAlbum];
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
    v4 = [(PUOneUpViewController *)self browsingSession];
    v5 = [v4 viewModel];
    v3 = [v5 accessoryViewsDefaultVisibility] ^ 1;
  }

  v6 = [(PUOneUpViewController *)self browsingSession];
  v7 = [v6 viewModel];
  v8 = [v7 isChromeVisible];

  if (v8)
  {
    if (v3)
    {
      v9 = [(PUOneUpViewController *)self view];
      [v9 safeAreaInsets];
      v11 = v10;
      v13 = v12;

      v14 = [(PUOneUpViewController *)self chromeViewController];
      [v14 setTopSafeAreaInset:v11];

      v15 = [(PUOneUpViewController *)self chromeViewController];
      [v15 setBottomSafeAreaInset:v13];
    }
  }
}

- (void)_handleDeferredProcessingFinishedForAssetUUID:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUOneUpViewController *)self ppt_deferredProcessingCompletionBlock];
  if (v5)
  {
    v6 = [(PUOneUpViewController *)self ppt_assetUUIDNeedsDeferredProcessingFinishNotification];
    v7 = [v4 isEqualToString:v6];

    if (v7)
    {
      [(PUOneUpViewController *)self setPpt_deferredProcessingCompletionBlock:0];
      v8 = [(PUOneUpViewController *)self ppt_deferredProcessingWaitTimer];
      [v8 invalidate];

      [(PUOneUpViewController *)self setPpt_deferredProcessingWaitTimer:0];
      [(PUOneUpViewController *)self setPpt_assetUUIDNeedsDeferredProcessingFinishNotification:0];
      v9 = PLOneUpGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v12 = v4;
        _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEBUG, "Deferred Processing: Notify DP is done and final image is loaded/displayed (asset: %@).", buf, 0xCu);
      }

      v10 = v5;
      px_dispatch_on_main_queue();
    }
  }
}

- (id)_assetsToPrefetchUsingDataSource:(id)a3 startingAt:(id)a4 count:(int64_t)a5 reverseDirection:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__47533;
  v23 = __Block_byref_object_dispose__47534;
  v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a5];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __92__PUOneUpViewController__assetsToPrefetchUsingDataSource_startingAt_count_reverseDirection___block_invoke;
  v14[3] = &unk_1E7B7A098;
  v11 = v9;
  v15 = v11;
  v16 = &v19;
  v17 = v25;
  v18 = a5;
  [v11 enumerateIndexPathsStartingAtIndexPath:v10 reverseDirection:v6 usingBlock:v14];
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

- (id)_assetsToPrefetchForCount:(int)a3
{
  v5 = [(PUOneUpViewController *)self browsingSession];
  v6 = [v5 viewModel];

  v7 = [v6 assetsDataSource];
  v8 = [v6 currentAssetReference];
  v9 = [v7 indexPathForAssetReference:v8];
  v10 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  if (v9)
  {
    v11 = [(PUOneUpViewController *)self _assetsToPrefetchUsingDataSource:v7 startingAt:v9 count:a3 reverseDirection:1];
    v12 = [(PUOneUpViewController *)self _assetsToPrefetchUsingDataSource:v7 startingAt:v9 count:a3 reverseDirection:0];
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
    v2 = [MEMORY[0x1E696AE30] processInfo];
    v3 = [v2 isLowPowerModeEnabled];

    if ((v3 & 1) == 0)
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
      v5 = [v4 browsingSession];
      v6 = [v5 viewModel];

      v7 = [v6 spatialOverlayController];
      v8 = [v12[5] array];
      [v7 prepareOverlayViewForAssets:v8];

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
  v3 = [(PUOneUpViewController *)self browsingSession];
  v4 = [v3 viewModel];

  if (-[PUOneUpViewController appearState](self, "appearState") == 2 && [v4 browsingSpeedRegime] <= 0 && (objc_msgSend(v4, "isScrubbing") & 1) == 0)
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
  v3 = [(PUOneUpViewController *)self _isZoomedIn];
  v4 = [(PUOneUpViewController *)self _tilingView];
  v6 = v4;
  if (v3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  [v4 px_setPocketPreferredUserInterfaceStyleForAllEdges:v5];
}

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 currentAssetDidChange])
  {
    [(PUOneUpViewController *)self _invalidateAssetActionManager];
    [(PUOneUpViewController *)self _invalidateBarsControllers];
    [(PUOneUpViewController *)self _invalidateChromeViewController];
    [(PUOneUpViewController *)self _invalidateScrubbingAdjustmentPolicy];
  }

  if ([v7 isPresentedForPreviewDidChange])
  {
    [(PUOneUpViewController *)self _isPresentedForPreviewDidChange];
  }

  if ([v7 imageAnalysisInteractionDidChange])
  {
    [(PUOneUpViewController *)self _invalidateImageAnalysisInteractionAdditionalActionInfoEdgeInsets];
    [(PUOneUpViewController *)self _updateImageAnalysisInteractionDelegate];
  }

  if ([MEMORY[0x1E69C3640] isOneUpRefreshEnabled] && objc_msgSend(v7, "contentPrivacyStateDidChange") && objc_msgSend(v6, "contentPrivacyState") == 1)
  {
    PXUIApplicationUpdateSnapshotForBackgroundApplication();
  }

  v8 = [(PUOneUpViewController *)self _tilingView];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 layout];
    v11 = objc_opt_class();
    if (v11)
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

    v12 = v11;

    v13 = [(PUOneUpViewController *)self browsingSession];
    v14 = [v13 viewModel];
    v56 = [v14 assetsDataSource];

    v15 = [v6 currentAssetReference];
    v57 = v6;
    v54 = v15;
    if (([v7 assetsDataSourceDidChange] & 1) != 0 || (objc_msgSend(v12, "dataSource"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqual:", v56), v16, (v17 & 1) == 0))
    {
      v20 = [(PUOneUpViewController *)self _newOneUpLayout];

      v21 = [v6 assetViewModelForAssetReference:v15];
      v22 = [(PUOneUpViewController *)self assetUUIDsWithDisplayedContentUpdates];
      v23 = [v21 asset];
      v24 = [v23 uuid];
      v25 = [v22 containsObject:v24];

      if (v25)
      {
        v26 = objc_alloc_init(PUTilingLayoutTransitionContext);
        [(PUTilingLayoutTransitionContext *)v26 setIsUpdatingDisplayedContent:1];
        v27 = [v21 displayedContentUpdateGroup];
        [(PUTilingLayoutTransitionContext *)v26 setDisplayedContentUpdateGroup:v27];
      }

      else
      {
        v26 = 0;
      }

      v28 = [(PUOneUpViewController *)self assetUUIDsWithDisplayedContentUpdates];
      [v28 removeAllObjects];

      v19 = v20;
      [v9 transitionToLayout:v20 withContext:v26 animationSetupCompletionHandler:0];
      v18 = v9;
      [v9 layoutIfNeeded];
      [(PUOneUpViewController *)self _preheatAdjacentAssetsForPhotosDetailsContext];
    }

    else
    {
      v18 = v9;
      v19 = v12;
    }

    v29 = [v7 assetViewModelChangesByAssetReference];
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
    v30 = [v57 accessoryViewsDefaultVisibility];
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __45__PUOneUpViewController_viewModel_didChange___block_invoke;
    v66[3] = &unk_1E7B7A048;
    v31 = v57;
    v67 = v31;
    v76 = v30;
    v53 = v19;
    v68 = v53;
    v72 = &v77;
    v32 = v18;
    v69 = v32;
    v52 = v54;
    v70 = v52;
    v71 = self;
    v73 = &v85;
    v74 = &v81;
    v75 = &v89;
    [v29 enumerateKeysAndObjectsUsingBlock:v66];
    v50 = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __45__PUOneUpViewController_viewModel_didChange___block_invoke_3;
    aBlock[3] = &unk_1E7B80C38;
    v33 = v31;
    v64 = v33;
    v65 = self;
    v55 = _Block_copy(aBlock);
    v34 = v53;
    if (*(v86 + 24) == 1)
    {
      v6 = v57;
      v9 = v18;
      -[PUOneUpViewController setWasChromeVisibleBeforeZoomIn:](self, "setWasChromeVisibleBeforeZoomIn:", [v33 isChromeVisible]);
    }

    else
    {
      v6 = v57;
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

        if ([v7 currentAssetDidChange])
        {
          if (!v53)
          {
LABEL_44:
            if ([v7 chromeVisibilityDidChange])
            {
              [(PUOneUpViewController *)self _invalidateSpec];
              [(PUOneUpViewController *)self _updatePrefersHomeIndicatorHidden];
              [(PUOneUpViewController *)self _updateScrubbingAdjustmentPolicyForChromeChange];
              [(PUOneUpViewController *)self _invalidateTipPopovers];
              [(PUOneUpViewController *)self _updateGestureController];
            }

            if ([v7 isInteractingWithVideoScrubberDidChange])
            {
              [(PUOneUpViewController *)self _invalidateLayout];
            }

            if ([v7 secondScreenSizeDidChange] && !-[PUOneUpViewController _isPresentedForSecondScreen](self, "_isPresentedForSecondScreen"))
            {
              [(PUOneUpViewController *)self _invalidateSpec];
            }

            if ([v7 currentAssetDidChange])
            {
              [(PUOneUpViewController *)self _invalidateEditMode];
              [(PUOneUpViewController *)self _invalidatePreferredContentSize];
              [(PUOneUpViewController *)self _invalidateVideoPlayer];
              [(PUOneUpViewController *)self _invalidateUserActivity];
              [(PUOneUpViewController *)self _invalidateCachedBoopableItemProvider];
              if ([(PUOneUpViewController *)self isFloatingInfoPanelPresented])
              {
                if ([v7 currentAssetTransitionProgressDidChange])
                {
                  [(PUOneUpViewController *)self _dimFloatingInfoPanelAnimated:1];
                  objc_initWeak(&location, self);
                  v47 = [MEMORY[0x1E69C45A8] sharedScheduler];
                  v60[0] = MEMORY[0x1E69E9820];
                  v60[1] = 3221225472;
                  v60[2] = __45__PUOneUpViewController_viewModel_didChange___block_invoke_5;
                  v60[3] = &unk_1E7B80638;
                  objc_copyWeak(&v61, &location);
                  [v47 dispatchOnMainThreadWhenNotScrolling:v60];

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

            if ([v7 presentingOverOneUpDidChange])
            {
              [(PUOneUpViewController *)self _invalidateVideoPlayer];
            }

            if ([v7 browsingSpeedRegimeDidChange])
            {
              [(PUOneUpViewController *)self _invalidatePreloadInsets];
              [(PUOneUpViewController *)self _preheatAdjacentAssetsForPhotosDetailsContext];
            }

            if (([v7 currentAssetDidChange] & 1) != 0 || objc_msgSend(v7, "currentAssetTransitionProgressDidChange"))
            {
              [(PUOneUpViewController *)self px_setNeedsHDRFocusUpdate];
            }

            if ([v7 reviewScreenBarsModelDidChange])
            {
              [(PUOneUpViewController *)self _updateReviewScreenBars];
            }

            if (([v7 videoOverlayPlayStateDidChange] & 1) != 0 || objc_msgSend(v7, "isScrubbingActivationDidChange"))
            {
              [(PUOneUpViewController *)self _invalidateLayout];
            }

            if ([v7 isScrubbingDidChange])
            {
              v48 = [(PUOneUpViewController *)self _currentAssetViewModel];
              if ([v48 isAccessoryViewVisible] && -[PUOneUpViewController _prefersFloatingInfoPanel](self, "_prefersFloatingInfoPanel"))
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

            if ([v7 contentPrivacyStateDidChange])
            {
              [(PUOneUpViewController *)self _invalidateSpec];
              [(PUOneUpViewController *)self _invalidateUserActivity];
              [(PUOneUpViewController *)self _invalidateBarsControllers];
              if ([v33 contentPrivacyState] == 1)
              {
                v49 = [v33 videoPlayer];
                v58[0] = MEMORY[0x1E69E9820];
                v58[1] = 3221225472;
                v58[2] = __45__PUOneUpViewController_viewModel_didChange___block_invoke_6;
                v58[3] = &unk_1E7B80DD0;
                v59 = v33;
                [v49 performChanges:v58];

                [(PUOneUpViewController *)self _dismissFloatingInfoPanelAnimated:0];
              }
            }

            if (([v7 systemAuthenticationTypeDidChange] & 1) != 0 || objc_msgSend(v7, "wantsContentUnavailableUnlockButtonVisibleDidChange"))
            {
              [(PUOneUpViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
            }

            if ([v7 isInSelectionModeDidChange])
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
          v35 = [v7 currentAssetTransitionProgressDidChange];
          if (v53)
          {
            v36 = v35;
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

        v37 = [v33 currentAssetReference];
        v38 = [v56 indexPathForAssetReference:v37];
        if (v38)
        {
          [v33 currentAssetTransitionProgress];
          [v53 visibleRectForItemAtIndexPath:v38 transitionProgress:?];
          v40 = v39;
          v42 = v41;
          v43 = [v53 coordinateSystem];
          v44 = [v32 contentCoordinateSystem];
          if (PUCanConvertFromCoordinateSystemToCoordinateSystem(v43, v44))
          {
            v45 = PUConvertPointFromCoordinateSystemToCoordinateSystem(v43, v44, v40, v42);
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

- (double)tilingViewControllerTransitionProgressAtWhichChromeIsFullyFadedOut:(id)a3
{
  v3 = [MEMORY[0x1E69C3640] isOneUpRefreshEnabled];
  result = 1.0;
  if (v3)
  {
    return 0.25;
  }

  return result;
}

- (void)tilingViewControllerTransition:(id)a3 adoptTilingView:(id)a4 fromEndPoint:(id)a5 isCancelingTransition:(BOOL)a6 animationSetupCompletionHandler:(id)a7
{
  v30 = a6;
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v14 = [(PUOneUpViewController *)self _tilingView];

  if (v14)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    v29 = [(PUOneUpViewController *)self _tilingView];
    [v28 handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:3683 description:{@"adopting tiling %@ from %@ will override current tiling view %@", v11, v12, v29}];
  }

  [(PUOneUpViewController *)self _setTilingView:v11];
  tilingView = self->__tilingView;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __139__PUOneUpViewController_tilingViewControllerTransition_adoptTilingView_fromEndPoint_isCancelingTransition_animationSetupCompletionHandler___block_invoke;
  v34[3] = &unk_1E7B7A020;
  v34[4] = self;
  [(PUTilingView *)tilingView enumerateAllTileControllersUsingBlock:v34];
  v16 = [v11 layout];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = [(PUOneUpViewController *)self browsingSession];
  v19 = [v18 viewModel];
  v20 = [v19 assetsDataSource];
  v21 = [v17 assetReference];
  v22 = [v20 assetReferenceForAssetReference:v21];

  if (v22)
  {
    v23 = [(PUOneUpViewController *)self browsingSession];
    v24 = [v23 viewModel];

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __139__PUOneUpViewController_tilingViewControllerTransition_adoptTilingView_fromEndPoint_isCancelingTransition_animationSetupCompletionHandler___block_invoke_2;
    v31[3] = &unk_1E7B80C38;
    v32 = v24;
    v33 = v22;
    v25 = v24;
    [v25 performChanges:v31];
  }

  v26 = [(PUOneUpViewController *)self _newOneUpLayout];
  v27 = objc_alloc_init(PUTilingLayoutTransitionContext);
  [(PUTilingLayoutTransitionContext *)v27 setIsViewControllerTransition:1];
  [(PUTilingLayoutTransitionContext *)v27 setCancelingTransition:v30];
  [v11 transitionToLayout:v26 withContext:v27 animationSetupCompletionHandler:v13];

  [v11 layoutIfNeeded];
}

- (void)tilingViewControllerTransition:(id)a3 abandonTilingView:(id)a4 toEndPoint:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(PUOneUpViewController *)self _tilingView];

  if (v10 != v8)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [(PUOneUpViewController *)self _tilingView];
    [v11 handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:3673 description:{@"tiling view %@ to abandon to %@ isn't the current tiling view %@", v8, v9, v12}];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__PUOneUpViewController_tilingViewControllerTransition_abandonTilingView_toEndPoint___block_invoke;
  v13[3] = &unk_1E7B7A020;
  v13[4] = self;
  [v8 enumerateAllTileControllersUsingBlock:v13];
  [(PUOneUpViewController *)self _setTilingView:0];
}

- (id)tilingViewControllerTransition:(id)a3 tilingViewToTransferToEndPoint:(id)a4
{
  v6 = a4;
  v7 = [(PUOneUpViewController *)self _tilingView];
  if (!v7)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:3668 description:{@"no tiling view to transfer to %@", v6}];
  }

  return v7;
}

- (void)_editCrop:(id)a3
{
  v3 = [(PUOneUpViewController *)self actionsController];
  [v3 performSimpleActionWithActionType:26];
}

- (void)_editCleanup:(id)a3
{
  v3 = [(PUOneUpViewController *)self actionsController];
  [v3 performSimpleActionWithActionType:24];
}

- (void)_editStyles:(id)a3
{
  v3 = [(PUOneUpViewController *)self actionsController];
  [v3 performSimpleActionWithActionType:25];
}

- (void)_editFilter:(id)a3
{
  v3 = [(PUOneUpViewController *)self actionsController];
  [v3 performSimpleActionWithActionType:23];
}

- (void)_editAdjust:(id)a3
{
  v3 = [(PUOneUpViewController *)self actionsController];
  [v3 performSimpleActionWithActionType:16];
}

- (void)_arrowKey:(id)a3
{
  v12 = a3;
  v4 = [(PUOneUpViewController *)self viewIfLoaded];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 effectiveUserInterfaceLayoutDirection];
    v7 = [v12 input];
    v8 = [v7 isEqualToString:*MEMORY[0x1E69DDF28]];

    if (v8)
    {
      v9 = [(PUOneUpViewController *)self actionsController];
      if (v6 == 1)
      {
LABEL_4:
        [v9 jumpToPreviousAsset];
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {
      v10 = [v12 input];
      v11 = [v10 isEqualToString:*MEMORY[0x1E69DDF10]];

      if (!v11)
      {
        goto LABEL_9;
      }

      v9 = [(PUOneUpViewController *)self actionsController];
      if (v6 != 1)
      {
        goto LABEL_4;
      }
    }

    [v9 jumpToNextAsset];
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

    v14 = [(PUOneUpViewController *)self _currentAssetViewModel];
    v15 = [v14 asset];

    v16 = v15;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = [v17 isSpatialMedia];
    if ((v18 & 1) == 0)
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

      v22 = [v21 fetchSmartStyleExtendedProperties];

      v23 = [v22 originallySmartStyleable];
      if (v23)
      {
        v24 = @"s";
      }

      else
      {
        v24 = @"f";
      }

      v25 = &selRef__editStyles_;
      if (!v23)
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
  v3 = [(PUOneUpViewController *)self browsingSession];
  v4 = [v3 viewModel];
  v5 = [v4 isPresentingOverOneUp];

  v6 = [(PUOneUpViewController *)self browsingSession];
  v7 = [v6 viewModel];
  v8 = [v7 assetViewModelForCurrentAssetReference];
  v9 = [v8 isInEditMode];

  return ((v5 | v9) & 1) == 0;
}

- (void)copy:(id)a3
{
  v3 = [(PUOneUpViewController *)self actionsController];
  [v3 performSimpleActionWithActionType:33];
}

- (void)print:(id)a3
{
  v3 = [(PUOneUpViewController *)self actionsController];
  [v3 performSimpleActionWithActionType:34];
}

- (void)addAssetsToLastUsedAlbum:(id)a3
{
  v3 = [(PUOneUpViewController *)self actionsController];
  [v3 performSimpleActionWithActionType:64];
}

- (void)addAssetsToAlbum:(id)a3
{
  v3 = [(PUOneUpViewController *)self actionsController];
  [v3 performSimpleActionWithActionType:63];
}

- (void)duplicateAssets:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = [(PUOneUpViewController *)self browsingSession];
  v5 = [v4 viewModel];
  v6 = [v5 currentAssetReference];

  if (v6 && ([v6 assetCollection], (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v7, objc_msgSend(v6, "asset"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    v10 = [v6 assetCollection];
    v17 = v10;
    v11 = [v6 asset];
    v16 = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    v18[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];

    v14 = [(PUOneUpViewController *)self actionsController];
    [v14 performDuplicateActionWithAssetsByAssetCollection:v13];
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

- (void)favoriteAssets:(id)a3
{
  v3 = [(PUOneUpViewController *)self actionsController];
  [v3 performToggleFavoriteAction];
}

- (void)hideAssets:(id)a3
{
  v3 = [(PUOneUpViewController *)self actionsController];
  [v3 performSimpleActionWithActionType:40];
}

- (void)deleteAssets:(id)a3
{
  v3 = [(PUOneUpViewController *)self actionsController];
  [v3 performSimpleActionWithActionType:10];
}

- (void)restoreAssetsWithoutConfirmation:(id)a3
{
  v3 = [(PUOneUpViewController *)self actionsController];
  [v3 performSimpleActionWithActionType:14];
}

- (void)restoreAssets:(id)a3
{
  v3 = [(PUOneUpViewController *)self actionsController];
  [v3 performSimpleActionWithActionType:13];
}

- (void)trashAssetsWithoutConfirmation:(id)a3
{
  v4 = [(PUOneUpViewController *)self actionsController];
  v5 = [v4 canPerformSimpleActionWithActionType:9];

  v6 = [(PUOneUpViewController *)self actionsController];
  v9 = v6;
  if (v5)
  {
    v7 = 9;
  }

  else
  {
    v8 = [v6 canPerformSimpleActionWithActionType:58];

    v6 = [(PUOneUpViewController *)self actionsController];
    v9 = v6;
    if (v8)
    {
      v7 = 58;
    }

    else
    {
      v7 = 10;
    }
  }

  [v6 performSimpleActionWithActionType:v7];
}

- (void)trashAssets:(id)a3
{
  v4 = [(PUOneUpViewController *)self actionsController];
  v5 = [v4 canPerformSimpleActionWithActionType:1];

  v6 = [(PUOneUpViewController *)self actionsController];
  v10 = v6;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v8 = [v6 canPerformSimpleActionWithActionType:8];

    v6 = [(PUOneUpViewController *)self actionsController];
    v10 = v6;
    if (v8)
    {
      v7 = 8;
    }

    else
    {
      v9 = [v6 canPerformSimpleActionWithActionType:57];

      v6 = [(PUOneUpViewController *)self actionsController];
      v10 = v6;
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

  [v6 performSimpleActionWithActionType:v7];
}

- (void)shareAssets:(id)a3
{
  v3 = [(PUOneUpViewController *)self actionsController];
  [v3 performSimpleActionWithActionType:35];
}

- (void)revertAdjustments:(id)a3
{
  v3 = [(PUOneUpViewController *)self actionsController];
  [v3 performSimpleActionWithActionType:22];
}

- (void)pasteAdjustments:(id)a3
{
  v3 = [(PUOneUpViewController *)self actionsController];
  [v3 performSimpleActionWithActionType:21];
}

- (void)copyAdjustments:(id)a3
{
  v3 = [(PUOneUpViewController *)self actionsController];
  [v3 performSimpleActionWithActionType:19];
}

- (void)autoEnhanceAssets:(id)a3
{
  v3 = [(PUOneUpViewController *)self actionsController];
  [v3 performSimpleActionWithActionType:17];
}

- (void)rotateAssetsClockwise:(id)a3
{
  v3 = [(PUOneUpViewController *)self actionsController];
  [v3 performSimpleActionWithActionType:28];
}

- (void)rotateAssetsCounterclockwise:(id)a3
{
  v4 = [(PUOneUpViewController *)self actionsController];
  v5 = [v4 canPerformSimpleActionWithActionType:13];

  v6 = [(PUOneUpViewController *)self actionsController];
  v8 = v6;
  if (v5)
  {
    v7 = 13;
  }

  else
  {
    v7 = 27;
  }

  [v6 performSimpleActionWithActionType:v7];
}

- (void)adjustLocation:(id)a3
{
  v3 = [(PUOneUpViewController *)self actionsController];
  [v3 performSimpleActionWithActionType:32];
}

- (void)adjustDateTime:(id)a3
{
  v3 = [(PUOneUpViewController *)self actionsController];
  [v3 performSimpleActionWithActionType:31];
}

- (void)toggleEditor:(id)a3
{
  v3 = [(PUOneUpViewController *)self actionsController];
  [v3 performSimpleActionWithActionType:15];
}

- (void)togglePlayback:(id)a3
{
  v3 = [(PUOneUpViewController *)self actionsController];
  [v3 togglePlayback];
}

- (void)validateCommand:(id)a3
{
  v19 = a3;
  if ([v19 action] == sel_toggleViewer_)
  {
    v5 = [v19 title];
    v6 = [v5 length];

    if (v6)
    {
      goto LABEL_13;
    }
  }

  if ([v19 action] != sel_toggleInspector_)
  {
    if ([v19 action] == sel_togglePlayback_)
    {
      v7 = [(PUOneUpViewController *)self _currentAssetViewModel];
      v8 = [v7 videoPlayer];
      [v8 isPlaybackDesired];
    }

    else
    {
      if ([v19 action] != sel_hideAssets_)
      {
        if ([v19 action] != sel_addAssetsToLastUsedAlbum_)
        {
          if ([v19 action] == sel_favoriteAssets_)
          {
            v13 = [(PUOneUpViewController *)self _currentAssetViewModel];
            v14 = [v13 asset];
            v15 = [v14 isFavorite];

            if (v15)
            {
              v16 = @"heart.slash";
            }

            else
            {
              v16 = @"heart";
            }

            v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:v16];
            [v19 setImage:v17];
          }

          else if ([v19 action] == sel_rotateAssetsCounterclockwise_)
          {
            v18 = [(PUOneUpViewController *)self actionsController];
            [v18 canPerformSimpleActionWithActionType:13];
          }

          else
          {
            if ([v19 action] != sel_trashAssetsWithoutConfirmation_)
            {
              goto LABEL_19;
            }

            v4 = [(PUOneUpViewController *)self actionsController];
            [v4 canPerformSimpleActionWithActionType:8];
          }

          goto LABEL_13;
        }

        v10 = [(PUOneUpViewController *)self _currentAssetViewModel];
        v11 = [v10 asset];

        if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

        v7 = [v12 photoLibrary];

        v8 = [MEMORY[0x1E69C3320] commandTitleWithPhotoLibrary:v7];
        [v19 setTitle:v8];
LABEL_17:

        goto LABEL_18;
      }

      v7 = [(PUOneUpViewController *)self _currentAssetViewModel];
      v8 = [v7 asset];
      [v8 isHidden];
    }

    v9 = PXLocalizedString();
    [v19 setTitle:v9];

    goto LABEL_17;
  }

  [(PUOneUpViewController *)self _isAccessoryVisible];
LABEL_13:
  v7 = PXLocalizedString();
  [v19 setTitle:v7];
LABEL_18:

LABEL_19:
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (sel__arrowKey_ == a3)
  {
    v7 = [(PUOneUpViewController *)self browsingSession];
    v8 = [v7 viewModel];
    v9 = [v8 assetViewModelForCurrentAssetReference];
    v10 = [v9 isInEditMode];

    if (v10)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (sel_toggleInspector_ == a3)
  {
    if (![(PUOneUpViewController *)self _isAccessoryAvailableForCurrentAsset])
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (sel_togglePlayback_ == a3)
  {
    v11 = [(PUOneUpViewController *)self _barsController];
    v12 = [v11 allowShowingPlayPauseButton];
    goto LABEL_30;
  }

  if (sel_toggleEditor_ == a3)
  {
    v13 = [(PUOneUpViewController *)self actionsController];
    v11 = v13;
    v14 = 15;
LABEL_29:
    v12 = [v13 canPerformSimpleActionWithActionType:v14];
LABEL_30:
    v15 = v12;

    if (v15)
    {
      goto LABEL_31;
    }

LABEL_33:
    v16 = 0;
    goto LABEL_34;
  }

  if (sel_toggleViewer_ == a3)
  {
    v17 = [(PUOneUpViewController *)self presentedViewController];

    if (!v17)
    {
      goto LABEL_31;
    }

    goto LABEL_33;
  }

  if (sel_rotateAssetsCounterclockwise_ == a3)
  {
    v19 = [(PUOneUpViewController *)self actionsController];
    v20 = [v19 canPerformSimpleActionWithActionType:13];

    if (v20)
    {
      goto LABEL_31;
    }

    v13 = [(PUOneUpViewController *)self actionsController];
    v11 = v13;
    v14 = 27;
    goto LABEL_29;
  }

  if (sel_rotateAssetsClockwise_ == a3)
  {
    v13 = [(PUOneUpViewController *)self actionsController];
    v11 = v13;
    v14 = 28;
    goto LABEL_29;
  }

  if (sel_shareAssets_ == a3)
  {
    v13 = [(PUOneUpViewController *)self actionsController];
    v11 = v13;
    v14 = 35;
    goto LABEL_29;
  }

  if (sel_trashAssets_ == a3)
  {
    v21 = [(PUOneUpViewController *)self actionsController];
    v22 = [v21 canPerformSimpleActionWithActionType:1];

    if (v22)
    {
      goto LABEL_31;
    }

    v23 = [(PUOneUpViewController *)self actionsController];
    v24 = [v23 canPerformSimpleActionWithActionType:10];

    if (v24)
    {
      goto LABEL_31;
    }

    v25 = [(PUOneUpViewController *)self actionsController];
    v26 = [v25 canPerformSimpleActionWithActionType:8];

    if (v26)
    {
      goto LABEL_31;
    }

    v13 = [(PUOneUpViewController *)self actionsController];
    v11 = v13;
    v14 = 57;
    goto LABEL_29;
  }

  if (sel_trashAssetsWithoutConfirmation_ == a3)
  {
    v27 = [(PUOneUpViewController *)self actionsController];
    v28 = [v27 canPerformSimpleActionWithActionType:9];

    if (v28)
    {
      goto LABEL_31;
    }

    v29 = [(PUOneUpViewController *)self actionsController];
    v30 = [v29 canPerformSimpleActionWithActionType:10];

    if (v30)
    {
      goto LABEL_31;
    }

    v13 = [(PUOneUpViewController *)self actionsController];
    v11 = v13;
    v14 = 58;
    goto LABEL_29;
  }

  if (sel_hideAssets_ == a3)
  {
    v13 = [(PUOneUpViewController *)self actionsController];
    v11 = v13;
    v14 = 40;
    goto LABEL_29;
  }

  if (sel_favoriteAssets_ == a3)
  {
    v13 = [(PUOneUpViewController *)self actionsController];
    v11 = v13;
    v14 = 44;
    goto LABEL_29;
  }

  if (sel_duplicateAssets_ == a3)
  {
    v13 = [(PUOneUpViewController *)self actionsController];
    v11 = v13;
    v14 = 41;
    goto LABEL_29;
  }

  if (sel_addAssetsToAlbum_ == a3)
  {
    v13 = [(PUOneUpViewController *)self actionsController];
    v11 = v13;
    v14 = 63;
    goto LABEL_29;
  }

  if (sel_addAssetsToLastUsedAlbum_ == a3)
  {
    v13 = [(PUOneUpViewController *)self actionsController];
    v11 = v13;
    v14 = 64;
    goto LABEL_29;
  }

  if (sel_print_ == a3)
  {
    v13 = [(PUOneUpViewController *)self actionsController];
    v11 = v13;
    v14 = 34;
    goto LABEL_29;
  }

  if (sel_copy_ == a3)
  {
    v13 = [(PUOneUpViewController *)self actionsController];
    v11 = v13;
    v14 = 33;
    goto LABEL_29;
  }

  if (sel_copyAdjustments_ == a3)
  {
    v13 = [(PUOneUpViewController *)self actionsController];
    v11 = v13;
    v14 = 19;
    goto LABEL_29;
  }

  if (sel_pasteAdjustments_ == a3)
  {
    v13 = [(PUOneUpViewController *)self actionsController];
    v11 = v13;
    v14 = 21;
    goto LABEL_29;
  }

  if (sel_revertAdjustments_ == a3)
  {
    v13 = [(PUOneUpViewController *)self actionsController];
    v11 = v13;
    v14 = 22;
    goto LABEL_29;
  }

  v31.receiver = self;
  v31.super_class = PUOneUpViewController;
  if (![(PUOneUpViewController *)&v31 canPerformAction:a3 withSender:v6])
  {
    goto LABEL_33;
  }

LABEL_31:
  v16 = [(PUOneUpViewController *)self appearState]== 2;
LABEL_34:

  return v16;
}

- (void)createMenuActionControllerForManagerIfNeeded:(id)a3 withPresentingViewController:(id)a4 regionOfInterestProvider:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  menuActionController = self->_menuActionController;
  if (!menuActionController)
  {
    v11 = objc_alloc_init(PUMenuActionController);
    v12 = self->_menuActionController;
    self->_menuActionController = v11;

    [(PUMenuActionController *)self->_menuActionController setDelegate:self];
    menuActionController = self->_menuActionController;
  }

  v13 = [(PUOneUpViewController *)self browsingSession];
  [(PUMenuActionController *)menuActionController setBrowsingSession:v13];

  [(PUMenuActionController *)self->_menuActionController setPresentingViewController:v8];
  [(PUMenuActionController *)self->_menuActionController setRegionOfInterestProvider:v9];
  [(PUMenuActionController *)self->_menuActionController setPhotosUICoreActionManager:v15];
  v14 = [(PUMenuActionController *)self->_menuActionController actions];
  [(PUOneUpViewController *)self px_setPreviewActionMenus:v14];
}

- (void)setAppearanceTransitionAnimationsDisabled:(BOOL)a3
{
  if (self->_appearanceTransitionAnimationsDisabled != a3)
  {
    self->_appearanceTransitionAnimationsDisabled = a3;
    if (a3)
    {
      [(PUOneUpViewController *)self _setShouldDisableTransitionsUntilAppeared:1];
    }
  }
}

- (BOOL)oneUpActionsControllerIsDetailsAccessoryAvailable:(id)a3
{
  v4 = [(PUOneUpViewController *)self browsingSession];
  v5 = [v4 viewModel];
  v6 = [v5 currentAssetReference];

  if (v6)
  {
    v7 = [(PUOneUpViewController *)self _isDetailsAccessoryAvailableForAssetReference:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)oneUpActionsControllerPrefersInclusionAfterRemoval:(id)a3 forActionType:(unint64_t)a4
{
  if (a4 != 44)
  {
    return 0;
  }

  v4 = [(PUOneUpViewController *)self browsingSession];
  v5 = [v4 viewModel];
  v6 = [v5 currentAssetReference];

  v7 = [v6 pxAssetReference];
  v8 = [v7 assetCollection];

  LOBYTE(v7) = [v8 px_isFavoritesSmartAlbum];
  return v7;
}

- (id)_userTransformTileControllerAtLocationFromProvider:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__47533;
  v15 = __Block_byref_object_dispose__47534;
  v16 = 0;
  v5 = [(PUOneUpViewController *)self _tilingView];
  if (v5)
  {
    [v4 locationInView:v5];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __76__PUOneUpViewController__userTransformTileControllerAtLocationFromProvider___block_invoke;
    v10[3] = &unk_1E7B79FF8;
    v10[4] = &v11;
    [v5 enumeratePresentedTileControllersInRect:v10 usingBlock:{v6 + -1.0, v7 + -1.0, 2.0, 2.0}];
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

- (void)oneUpActionsController:(id)a3 zoomAtLocationProvider:(id)a4
{
  v6 = a4;
  v5 = [(PUOneUpViewController *)self _userTransformTileControllerAtLocationFromProvider:?];
  if ([v5 isZoomedIn])
  {
    [(PUOneUpViewController *)self _handleZoomOutCurrentAsset];
    [v5 zoomOutAnimated:1];
  }

  else
  {
    [v5 zoomInOnLocationFromProvider:v6];
  }
}

- (void)oneUpActionsControllerToggleChromeVisibility:(id)a3
{
  v3 = [(PUOneUpViewController *)self browsingSession];
  v4 = [v3 viewModel];

  if ([v4 isChromeVisible] && (objc_msgSend(v4, "assetsDataSource"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEmpty"), v5, v6))
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
    v9 = v4;
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

- (BOOL)oneUpActionsControllerDismissPresentedViewController:(id)a3
{
  v4 = [(PUOneUpViewController *)self _isTipPopoverVisible];
  if (v4)
  {
    [(PUOneUpViewController *)self _dismissTipPopoverAnimated:1];
    [(PUOneUpViewController *)self _setHasShownRelevantTip:1];
    [(PUOneUpViewController *)self _invalidateTipPopovers];
    [(PUOneUpViewController *)self _updateTipPopoversIfNeeded];
  }

  return v4;
}

- (int64_t)pu_preferredBarStyle
{
  v2 = [(PUOneUpViewController *)self _barsController];
  v3 = [v2 preferredBarStyle];

  return v3;
}

- (BOOL)pu_wantsToolbarVisible
{
  v2 = [(PUOneUpViewController *)self _barsController];
  v3 = [v2 wantsToolbarVisible];

  return v3;
}

- (BOOL)pu_wantsNavigationBarVisible
{
  v2 = [(PUOneUpViewController *)self _barsController];
  v3 = [v2 wantsNavigationBarVisible];

  return v3;
}

- (BOOL)prefersStatusBarHidden
{
  v6.receiver = self;
  v6.super_class = PUOneUpViewController;
  if (![(PUOneUpViewController *)&v6 prefersStatusBarHidden])
  {
    v3 = [(PUOneUpViewController *)self _barsController];
    if (([v3 prefersStatusBarHidden] & 1) == 0)
    {
      v4 = [(PUOneUpViewController *)self chromeViewController];
      [v4 prefersStatusBarHidden];
    }
  }

  return PXShouldHideStatusBarWithCameraWorkaround();
}

- (BOOL)_isLayoutAffectedBySpecChange:(id)a3
{
  v3 = a3;
  if ([v3 shouldUseContentGuideInsetsChanged] & 1) != 0 || (objc_msgSend(v3, "shouldUseUserTransformTilesChanged") & 1) != 0 || (objc_msgSend(v3, "shouldDisplayBadgesChanged") & 1) != 0 || (objc_msgSend(v3, "shouldDisplayAssetExplorerReviewScreenBadgesChanged") & 1) != 0 || (objc_msgSend(v3, "shouldDisplayPlayButtonsChanged") & 1) != 0 || (objc_msgSend(v3, "shouldDisplayProgressIndicatorsChanged") & 1) != 0 || (objc_msgSend(v3, "progressIndicatorSizeChanged") & 1) != 0 || (objc_msgSend(v3, "progressIndicatorContentInsetsChanged") & 1) != 0 || (objc_msgSend(v3, "bufferingIndicatorSizeChanged") & 1) != 0 || (objc_msgSend(v3, "renderIndicatorSizeChanged") & 1) != 0 || (objc_msgSend(v3, "canDisplayLoadingIndicatorsChanged") & 1) != 0 || (objc_msgSend(v3, "shouldUseCompactCommentsTitleChanged") & 1) != 0 || (objc_msgSend(v3, "tileInitialContentModeChanged") & 1) != 0 || (objc_msgSend(v3, "traitCollectionChanged") & 1) != 0 || (objc_msgSend(v3, "shouldPinContentToTopChanged"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 shouldLayoutReviewScreenControlBarVerticallyChanged];
  }

  return v4;
}

- (void)viewControllerSpec:(id)a3 didChange:(id)a4
{
  v5 = a4;
  if ([v5 contentLockingChanged])
  {
    [(PUOneUpViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
  }

  if (([v5 shouldPlaceButtonsInNavigationBarChanged] & 1) != 0 || (objc_msgSend(v5, "shouldUseCompactTitleViewChanged") & 1) != 0 || (objc_msgSend(v5, "maximumToolbarHeightChanged") & 1) != 0 || (objc_msgSend(v5, "shouldUseCompactCommentsTitleChanged") & 1) != 0 || (objc_msgSend(v5, "shouldPlaceScrubberInScrubberBarChanged") & 1) != 0 || objc_msgSend(v5, "contentLockingChanged"))
  {
    [(PUOneUpViewController *)self _invalidateBarsControllers];
  }

  if (([v5 backgroundColorOverrideChanged] & 1) != 0 || objc_msgSend(v5, "shouldDisplayEmptyPlaceholderChanged"))
  {
    [(PUOneUpViewController *)self _updateBackgroundTileViewController];
  }

  if (([v5 shouldLayoutReviewScreenControlBarVerticallyChanged] & 1) != 0 || objc_msgSend(v5, "shouldCounterrotateReviewScreenBarsChanged"))
  {
    [(PUOneUpViewController *)self _updateReviewScreenBars];
  }

  if ([(PUOneUpViewController *)self _isLayoutAffectedBySpecChange:v5])
  {
    [(PUOneUpViewController *)self _invalidateLayout];
  }

  if ([v5 hideScrubberWhenShowingAccessoryView])
  {
    [(PUOneUpViewController *)self _invalidateChromeViewController];
  }

  [(PUOneUpViewController *)self _updateIfNeeded];
}

- (id)_syndicationPillView
{
  v3 = [(PUOneUpViewController *)self browsingSession];
  v4 = [v3 viewModel];

  v5 = [v4 assetsDataSource];
  v6 = [v4 currentAssetReference];
  v7 = [v5 indexPathForAssetReference:v6];
  v8 = [(PUOneUpViewController *)self _tilingView];
  v9 = PUTileKindSyndicationAttribution;
  v10 = [v5 identifier];
  v11 = [v8 presentedTileControllerWithIndexPath:v7 kind:v9 dataSourceIdentifier:v10];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
    goto LABEL_10;
  }

  v12 = [v11 pillView];
  v13 = [v12 superview];
  if (v13)
  {
    v14 = [v12 window];
    if (v14)
    {
      v15 = v14;
      v16 = [v12 isHidden];

      if ((v16 & 1) == 0)
      {
        v13 = v12;
        goto LABEL_9;
      }
    }

    else
    {
    }

    v13 = 0;
  }

LABEL_9:

LABEL_10:

  return v13;
}

- (id)_passthroughViews
{
  v3 = [(PUOneUpViewController *)self navigationController];
  v4 = [v3 navigationBar];

  v5 = [(PUOneUpViewController *)self navigationController];
  v6 = [v5 toolbar];

  v7 = [(PUOneUpViewController *)self view];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
  v9 = v8;
  if (v4)
  {
    [v8 addObject:v4];
  }

  if (v6)
  {
    [v9 addObject:v6];
  }

  if (v7)
  {
    [v9 addObject:v7];
  }

  return v9;
}

- (void)tipPopoverDidDismissWithTipID:(id)a3
{
  v4 = MEMORY[0x1E69C3748];
  v5 = a3;
  v6 = [v4 quickCropTipID];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = [(PUOneUpViewController *)self _cropButtonTileViewControllerForCurrentAsset];
    [v8 setPresentingTip:0];
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

- (void)tipPopoverDidPresentWithTipID:(id)a3
{
  v11 = a3;
  v4 = [MEMORY[0x1E69C3748] syndicatedPhotosTipID];
  v5 = [v11 isEqualToString:v4];

  if (v5)
  {
    [MEMORY[0x1E69C3748] signalSyndicatedPhotosPresented];
  }

  else
  {
    v6 = [MEMORY[0x1E69C3748] quickCropTipID];
    v7 = [v11 isEqualToString:v6];

    if (v7)
    {
      v8 = [(PUOneUpViewController *)self _cropButtonTileViewControllerForCurrentAsset];
      [v8 setPresentingTip:1];
    }

    else
    {
      v9 = [MEMORY[0x1E69C3748] cleanUpTipID];
      v10 = [v11 isEqualToString:v9];

      if (v10)
      {
        [MEMORY[0x1E69C3748] signalDidCleanUp];
      }
    }
  }
}

- (void)prepareTipPopover:(id)a3 tipID:(id)a4
{
  v66 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PUOneUpViewController *)self _passthroughViews];
  [v6 setPassthroughViews:v8];

  v9 = [MEMORY[0x1E69C3748] infoPanelTipID];
  v10 = [v7 isEqualToString:v9];

  if (v10)
  {
    v11 = [(PUOneUpViewController *)self _barsController];
    v12 = [v11 barButtonItemToggleDetails];

    if (v12)
    {
      [v6 setBarButtonItem:v12];
    }

    goto LABEL_12;
  }

  v13 = [MEMORY[0x1E69C3748] livePhotosTipID];
  v14 = [v7 isEqualToString:v13];

  if (v14)
  {
    v12 = [(PUOneUpViewController *)self _livePhotoBadge];
    if (!v12)
    {
LABEL_12:

      [(PUOneUpBarsController *)self->__barsController setPresentedTipID:v7];
      objc_storeStrong(&self->_presentedTipID, a4);
      goto LABEL_13;
    }

    [v6 setSourceView:v12];
    v15 = [v6 sourceView];
    [v12 frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = [v12 superview];
    [v15 convertRect:v24 fromCoordinateSpace:{v17, v19, v21, v23}];
    [v6 setSourceRect:?];

LABEL_7:
    [v6 setPermittedArrowDirections:1];
    goto LABEL_12;
  }

  v25 = [MEMORY[0x1E69C3748] syndicatedPhotosTipID];
  v26 = [v7 isEqualToString:v25];

  if (v26)
  {
    v12 = [(PUOneUpViewController *)self _syndicationPillView];
    if (!v12)
    {
      goto LABEL_12;
    }

    [v6 setSourceView:v12];
    v27 = [v6 sourceView];
    [v12 frame];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v36 = [v12 superview];
    [v27 convertRect:v36 fromCoordinateSpace:{v29, v31, v33, v35}];
    [v6 setSourceRect:?];

LABEL_11:
    goto LABEL_12;
  }

  v37 = [MEMORY[0x1E69C3748] actionsMenuTipID];
  v38 = [v7 isEqualToString:v37];

  if (v38)
  {
    v39 = [(PUOneUpViewController *)self _barsController];
    v12 = [v39 barButtonItemActionsMenu];

    if (!v12)
    {
      goto LABEL_12;
    }

    [v6 setBarButtonItem:v12];
    [v6 popoverLayoutMargins];
    [v6 setPopoverLayoutMargins:?];
    goto LABEL_7;
  }

  v40 = [MEMORY[0x1E69C3748] quickCropTipID];
  v41 = [v7 isEqualToString:v40];

  if (v41)
  {
    v42 = [(PUOneUpViewController *)self _cropButtonTileViewControllerForCurrentAsset];
    v12 = [v42 cropButton];

    if (v12)
    {
      [v6 setSourceView:v12];
      v43 = [v6 sourceView];
      [v12 frame];
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v52 = [v12 superview];
      [v43 convertRect:v52 fromCoordinateSpace:{v45, v47, v49, v51}];
      [v6 setSourceRect:?];

      v53 = [v12 overrideUserInterfaceStyle];
      v54 = [v6 traitOverrides];
      [v54 setUserInterfaceStyle:v53];
    }

    goto LABEL_12;
  }

  v55 = [MEMORY[0x1E69C3748] cleanUpTipID];
  v56 = [v7 isEqualToString:v55];

  if (v56)
  {
    v57 = [(PUOneUpViewController *)self _barsController];
    v58 = [v57 sourceItemForActionType:*MEMORY[0x1E69C4690]];

    v12 = v58;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v27 = v12;

      if (v27)
      {
        [v6 setBarButtonItem:v27];
      }
    }

    else
    {

      v27 = 0;
    }

    goto LABEL_11;
  }

  v59 = PLOneUpGetLog();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
  {
    v60 = 138543874;
    v61 = objc_opt_class();
    v62 = 2048;
    v63 = self;
    v64 = 2112;
    v65 = v7;
    _os_log_impl(&dword_1B36F3000, v59, OS_LOG_TYPE_ERROR, "<%{public}@:%p> Invalid tip ID %@", &v60, 0x20u);
  }

LABEL_13:
}

- (id)sourceItemForTipID:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69C3748] infoPanelTipID];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [(PUOneUpViewController *)self _barsController];
    v8 = [v7 barButtonItemToggleDetails];
LABEL_3:
    v9 = v8;

    goto LABEL_9;
  }

  v10 = [MEMORY[0x1E69C3748] livePhotosTipID];
  v11 = [v4 isEqualToString:v10];

  if (v11)
  {
    v12 = [(PUOneUpViewController *)self _livePhotoBadge];
LABEL_8:
    v9 = v12;
    goto LABEL_9;
  }

  v13 = [MEMORY[0x1E69C3748] syndicatedPhotosTipID];
  v14 = [v4 isEqualToString:v13];

  if (v14)
  {
    v12 = [(PUOneUpViewController *)self _syndicationPillView];
    goto LABEL_8;
  }

  v16 = [MEMORY[0x1E69C3748] actionsMenuTipID];
  v17 = [v4 isEqualToString:v16];

  if (v17)
  {
    v7 = [(PUOneUpViewController *)self _barsController];
    v8 = [v7 barButtonItemActionsMenu];
    goto LABEL_3;
  }

  v18 = [MEMORY[0x1E69C3748] quickCropTipID];
  v19 = [v4 isEqualToString:v18];

  if (v19)
  {
    v7 = [(PUOneUpViewController *)self _cropButtonTileViewControllerForCurrentAsset];
    v8 = [v7 cropButton];
    goto LABEL_3;
  }

  v20 = [MEMORY[0x1E69C3748] cleanUpTipID];
  if ([v4 isEqualToString:v20])
  {
    v21 = [(PUOneUpViewController *)self actionsController];
    v22 = [v21 canPerformSimpleActionWithActionType:15];

    if (v22)
    {
      v7 = [(PUOneUpViewController *)self _barsController];
      v8 = [v7 sourceItemForActionType:*MEMORY[0x1E69C4690]];
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
    v25 = v4;
    _os_log_error_impl(&dword_1B36F3000, v23, OS_LOG_TYPE_ERROR, "No source item for tip ID: %@", &v24, 0xCu);
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (id)presentationControllerForTipID:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69C3748] infoPanelTipID];
  if ([v4 isEqualToString:v5])
  {
    v6 = [(PUOneUpViewController *)self _barsController];
    v7 = [v6 barButtonItemToggleDetails];

    if (v7)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v8 = [MEMORY[0x1E69C3748] livePhotosTipID];
  v9 = [v4 isEqualToString:v8];

  if (v9)
  {
    v10 = [(PUOneUpViewController *)self browsingSession];
    v11 = [v10 viewModel];

    v12 = [v11 assetsDataSource];
    v13 = [v11 currentAssetReference];
    v14 = [v12 indexPathForAssetReference:v13];
    v15 = [(PUOneUpViewController *)self _tilingView];
    v16 = PUTileKindBadge;
    v17 = [v12 identifier];
    v18 = [v15 presentedTileControllerWithIndexPath:v14 kind:v16 dataSourceIdentifier:v17];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 view];

      if (v19)
      {
        v20 = self;

        goto LABEL_26;
      }
    }

    goto LABEL_13;
  }

  v21 = [MEMORY[0x1E69C3748] syndicatedPhotosTipID];
  if ([v4 isEqualToString:v21])
  {
    v22 = [(PUOneUpViewController *)self _syndicationPillView];

    if (v22)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v23 = [MEMORY[0x1E69C3748] actionsMenuTipID];
  if ([v4 isEqualToString:v23])
  {
    v24 = [(PUOneUpViewController *)self _barsController];
    v25 = [v24 barButtonItemActionsMenu];

    if (v25)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v26 = [MEMORY[0x1E69C3748] quickCropTipID];
  if (([v4 isEqualToString:v26] & 1) == 0)
  {

    goto LABEL_23;
  }

  v27 = [(PUOneUpViewController *)self _cropButtonTileViewControllerForCurrentAsset];
  v28 = [v27 cropButton];

  if (!v28)
  {
LABEL_23:
    v29 = [MEMORY[0x1E69C3748] cleanUpTipID];
    if ([v4 isEqualToString:v29])
    {
      v30 = [(PUOneUpViewController *)self actionsController];
      v31 = [v30 canPerformSimpleActionWithActionType:15];

      if (v31)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }

    v11 = PLOneUpGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v33 = 138543618;
      v34 = objc_opt_class();
      v35 = 2048;
      v36 = self;
      _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_ERROR, "<%{public}@:%p> Failed to present tip view controller", &v33, 0x16u);
    }

LABEL_13:

    v20 = 0;
    goto LABEL_26;
  }

LABEL_25:
  v20 = self;
LABEL_26:

  return v20;
}

- (id)_videoPlayerAtIndexPath:(id)a3 layout:(id)a4
{
  v4 = [(PUOneUpViewController *)self _assetViewModelAtIndexPath:a3 layout:a4];
  v5 = [v4 videoPlayer];

  return v5;
}

- (id)_assetViewModelAtIndexPath:(id)a3 layout:(id)a4
{
  v5 = [(PUOneUpViewController *)self _assetReferenceAtIndexPath:a3 layout:a4];
  v6 = [(PUOneUpViewController *)self browsingSession];
  v7 = [v6 viewModel];
  v8 = [v7 assetViewModelForAssetReference:v5];

  return v8;
}

- (id)_currentAssetViewModel
{
  v2 = [(PUOneUpViewController *)self browsingSession];
  v3 = [v2 viewModel];

  v4 = [v3 currentAssetReference];
  v5 = [v3 assetViewModelForAssetReference:v4];

  return v5;
}

- (id)_assetReferenceAtIndexPath:(id)a3 layout:(id)a4
{
  v5 = a3;
  v6 = [a4 dataSource];
  v7 = [v6 assetReferenceAtIndexPath:v5];

  return v7;
}

- (BOOL)videoTilesCanPlayVideo
{
  if ([(PUOneUpViewController *)self _isPresentedForSecondScreen])
  {
    return 1;
  }

  v4 = [(PUOneUpViewController *)self _secondScreenBrowser];
  v3 = v4 == 0;

  return v3;
}

- (void)_updateActiveVideoTilesCanDisplayVideo
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(PUOneUpViewController *)self videoTilesCanPlayVideo];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(PUOneUpViewController *)self activeVideoTileControllers];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setCanPlayVideo:v3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_setSecondScreenBrowser:(id)a3
{
  v5 = a3;
  if (self->__secondScreenBrowser != v5)
  {
    v16 = v5;
    objc_storeStrong(&self->__secondScreenBrowser, a3);
    [(PUOneUpViewController *)self _updateActiveVideoTilesCanDisplayVideo];
    v6 = [(PUOneUpViewController *)self _tilingView];
    v7 = [v6 layout];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = [(PUOneUpViewController *)self browsingSession];
    v11 = [v10 viewModel];

    v12 = [v11 assetsDataSource];
    v13 = [v12 isEmpty];

    if ((v13 & 1) == 0)
    {
      v14 = [v11 currentAssetReference];
      v15 = [v14 indexPath];
      [v9 invalidateVideoPlaceholderForItemAtIndexPath:v15];
    }

    [(PUOneUpViewController *)self _invalidateChromeViewController];

    v5 = v16;
  }
}

- (double)px_imageModulationIntensity
{
  v2 = [(PUOneUpViewController *)self browsingSession];
  v3 = [v2 viewModel];
  if ([v3 isPresentedForPreview])
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
  v4 = [(PUOneUpViewController *)self browsingSession];
  v5 = [v4 viewModel];

  [v5 currentAssetTransitionProgress];
  v7 = v6;
  v8 = [v5 leadingAssetReference];
  v3[2](v3, v8, (0.5 - v7) * 0.666666687);

  v9 = [v5 currentAssetReference];
  v10 = fabs(v7);
  v3[2](v3, v9, (v10 + v10) / -3.0 + 1.0);

  v11 = [v5 trailingAssetReference];
  v3[2](v3, v11, (v7 + 0.5) * 0.666666687);

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
  v3 = [(PUOneUpViewController *)self browsingSession];
  v4 = [v3 viewModel];
  v5 = [v4 currentAssetReference];

  v6 = [(PUOneUpViewController *)self _accessoryViewControllersManager];
  v7 = [v6 accessoryViewControllerForAssetReference:v5 createIfNeeded:0];

  return v7;
}

- (void)_setAccessoryVisible:(BOOL)a3 changeReason:(int64_t)a4
{
  v5 = a3;
  v7 = [(PUOneUpViewController *)self browsingSession];
  v8 = [v7 viewModel];

  if ([v8 accessoryViewsDefaultVisibility] != v5)
  {
    if (v5)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __59__PUOneUpViewController__setAccessoryVisible_changeReason___block_invoke;
      v15[3] = &unk_1E7B80DD0;
      v16 = v8;
      [v16 performChanges:v15];
      if ([(PUOneUpViewController *)self _accessoryContentKindForCurrentAsset]== 1)
      {
        [(PUOneUpViewController *)self _setHasShownRelevantTip:1];
        v9 = MEMORY[0x1E69C3748];
        v10 = [MEMORY[0x1E69C3748] infoPanelTipID];
        [v9 setTipActionPerformed:v10];
      }
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59__PUOneUpViewController__setAccessoryVisible_changeReason___block_invoke_2;
    v11[3] = &unk_1E7B7FA58;
    v14 = v5;
    v12 = v8;
    v13 = a4;
    [v12 performChanges:v11];
  }
}

- (BOOL)_isAccessoryVisible
{
  v2 = [(PUOneUpViewController *)self browsingSession];
  v3 = [v2 viewModel];

  LOBYTE(v2) = [v3 accessoryViewsDefaultVisibility];
  return v2;
}

- (BOOL)_isAccessoryAvailableForCurrentAsset
{
  v3 = [(PUOneUpViewController *)self browsingSession];
  v4 = [v3 viewModel];
  v5 = [v4 currentAssetReference];
  v6 = [v5 asset];

  v7 = [(PUOneUpViewController *)self _accessoryViewControllersManager];
  v8 = [v7 accessoryViewTypeForAsset:v6];

  if (v8)
  {
    v9 = [(PUOneUpViewController *)self actionsController];
    v10 = [v9 canPerformSimpleActionWithActionType:13] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (int64_t)_accessoryContentKindForAsset:(id)a3
{
  v4 = a3;
  v5 = [(PUOneUpViewController *)self _spec];
  v6 = [v5 allowAccessoryVisibility];

  if (v6)
  {
    if ([PUCommentsViewController canShowCommentsForAsset:v4])
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
  v3 = [(PUOneUpViewController *)self _spec];
  v4 = [v3 allowAccessoryVisibility];

  if (!v4)
  {
    return 0;
  }

  v5 = [(PUOneUpViewController *)self browsingSession];
  v6 = [v5 viewModel];
  v7 = [v6 currentAssetReference];
  v8 = [v7 asset];

  if ([PUCommentsViewController canShowCommentsForAsset:v8])
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
  v3 = [(PUOneUpViewController *)self browsingSession];
  v4 = [v3 viewModel];
  v20 = [v4 currentAssetReference];

  v5 = [(PUOneUpViewController *)self _currentAssetViewModel];
  if ([(PUOneUpViewController *)self _prefersFloatingInfoPanel])
  {
    if (![v5 isAccessoryViewVisible])
    {
      [(PUOneUpViewController *)self _dismissFloatingInfoPanelAnimated:1];
      goto LABEL_24;
    }

    v6 = [v20 indexPath];
    v7 = [(PUOneUpViewController *)self _tilingView];
    v8 = [v7 layout];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && v6)
    {
      [v8 invalidateAccessoryForItemAtIndexPath:v6 withOptions:5];
    }

    [(PUOneUpViewController *)self _presentFloatingInfoPanelAnimated:1];
  }

  else
  {
    [(PUOneUpViewController *)self _dismissFloatingInfoPanelAnimated:1];
    v9 = [MEMORY[0x1E69C38B0] sharedInstance];
    v10 = [v9 captionWidgetEnableDirectAttachToMaster];

    LODWORD(v9) = [v5 isAccessoryViewVisible];
    v11 = [v5 isLastAccessoryViewVisibilityChangeReasonUserAction];
    v12 = 5;
    if ((v9 & v10) != 0)
    {
      v12 = 1;
    }

    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = 1;
    }

    v14 = [(PUOneUpViewController *)self _spec];
    v15 = [v14 hideScrubberWhenShowingAccessoryView];

    if (v15)
    {
      [(PUOneUpViewController *)self _invalidateBarsControllers];
    }

    v6 = [v20 indexPath];
    v16 = [(PUOneUpViewController *)self _tilingView];
    v17 = [v16 layout];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && v6)
    {
      [v17 invalidateAccessoryForItemAtIndexPath:v6 withOptions:v13];
    }

    v18 = [(PUOneUpViewController *)self _spec];
    v19 = [v18 hideBadgesWhenShowingAccessoryView];

    if (v19)
    {
      [(PUOneUpViewController *)self _invalidateLayout];
    }
  }

LABEL_24:
}

- (void)_updateImageAnalysisInteractionDelegate
{
  v3 = [(PUOneUpViewController *)self currentImageAnalysisInteraction];
  [v3 setDelegate:self];
}

- (BOOL)_prefersFloatingInfoPanel
{
  v3 = [(PUOneUpViewController *)self _spec];
  v4 = [v3 prefersFloatingInfoPanel];

  if ([(PUOneUpViewController *)self _accessoryContentKindForCurrentAsset]== 1)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (void)_invalidateInfoPanelLayoutAnimated:(BOOL)a3
{
  v3 = a3;
  v11 = [(PUOneUpViewController *)self currentFloatingInfoPanelAccessoryViewController];
  v5 = [(PUOneUpViewController *)self cardPresentationController];
  v6 = [v5 isPresenting];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && v6)
  {
    v7 = v11;
    v8 = [v7 composition];
    v9 = [objc_alloc(MEMORY[0x1E69C3898]) initWithPhotosDetailsUIViewController:v7 widgetComposition:v8];

    v10 = [(PUOneUpViewController *)self cardPresentationController];
    [v10 setLayout:v9 animated:v3];
  }
}

- (void)_dimFloatingInfoPanelAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUOneUpViewController *)self cardPresentationController];
  v6 = [v5 isPresenting];

  if (v6)
  {
    v7 = [(PUOneUpViewController *)self cardPresentationController];
    [v7 dimAnimated:v3];
  }
}

- (BOOL)isFloatingInfoPanelPresented
{
  v2 = [(PUOneUpViewController *)self cardPresentationController];
  v3 = [v2 isPresenting];

  return v3;
}

- (void)_dismissFloatingInfoPanelAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUOneUpViewController *)self cardPresentationController];
  v6 = [v5 isPresenting];

  if (v6)
  {
    [(PUOneUpViewController *)self setCurrentFloatingInfoPanelAccessoryViewController:0];
    [(PUOneUpViewController *)self setUuidOfAssetPresentedInFloatingInfoPanel:0];
    v7 = [(PUOneUpViewController *)self cardPresentationController];
    [v7 dismissAnimated:v3];
  }
}

- (void)_presentFloatingInfoPanelAnimated:(BOOL)a3
{
  v3 = a3;
  v14 = [MEMORY[0x1E69C3738] sharedInstance];
  if (([v14 hideFloatingInfoPanel] & 1) == 0)
  {
    v5 = [(PUOneUpViewController *)self cardPresentationController];
    v6 = [v5 isPresenting];

    if (v6)
    {
      return;
    }

    v7 = [(PUOneUpViewController *)self browsingSession];
    v8 = [v7 viewModel];
    v14 = [v8 currentAssetReference];

    v9 = [(PUOneUpViewController *)self _accessoryViewControllersManager];
    v10 = [v9 createAccessoryViewControllerForAssetReference:v14];

    if (v10)
    {
      [v10 setContentInsets:1 changeReason:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
      [(PUOneUpViewController *)self setCurrentFloatingInfoPanelAccessoryViewController:v10];
      v11 = [v14 asset];
      v12 = [v11 uuid];
      [(PUOneUpViewController *)self setUuidOfAssetPresentedInFloatingInfoPanel:v12];

      v13 = [(PUOneUpViewController *)self cardPresentationController];
      [v13 presentViewController:v10 animated:v3];
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
    v3 = [(PUOneUpViewController *)self browsingSession];
    v4 = [v3 viewModel];
    v5 = [v4 currentAssetReference];
    v6 = [v5 asset];
    v10 = [v6 uuid];

    v7 = [(PUOneUpViewController *)self uuidOfAssetPresentedInFloatingInfoPanel];
    v8 = v7;
    if (v7 == v10)
    {
    }

    else
    {
      v9 = [v7 isEqualToString:?];

      if ((v9 & 1) == 0)
      {
        [(PUOneUpViewController *)self _updateFloatingInfoPanel];
      }
    }
  }
}

- (BOOL)_isCameraDetailsAccessory
{
  v3 = [(PUOneUpViewController *)self presentationOrigin];
  v4 = [(PUOneUpViewController *)self _accessoryContentKindForCurrentAsset];
  return v3 == 37 && v4 == 1;
}

- (BOOL)wantsActionsMenu
{
  if (!self->_wantsActionsMenu)
  {
    v4 = [MEMORY[0x1E69C3490] sharedInstance];
    v5 = [v4 actionsMenuLocation];
    v6 = v5 == 1;
    v7 = [(PUOneUpViewController *)self traitCollection];
    if ([v7 userInterfaceIdiom] == 1)
    {
      v19 = [v4 enableActionsMenuOnPad];
    }

    else
    {
      v19 = 0;
    }

    v8 = [(PUOneUpViewController *)self traitCollection];
    if ([v8 userInterfaceIdiom])
    {
      v9 = 0;
    }

    else
    {
      v9 = [v4 enableActionsMenuOnPhone];
    }

    v10 = [(PUOneUpViewController *)self browsingSession];
    v11 = [v10 viewModel];
    v12 = [v11 currentAssetReference];
    v13 = [v12 assetCollection];

    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v14 = v13;

      if (v5 == 1 && v14)
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

    if (v6 && ((v19 | v9) & 1) != 0)
    {
      v15 = [(PUOneUpViewController *)self _options];
      v17 = ([(PUOneUpViewController *)self _options]& 8) == 0 && v15 != 0x20000;
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

- (void)_presentAlertForUnplayableAssetReference:(id)a3
{
  v4 = a3;
  v5 = [(PUOneUpViewController *)self browsingSession];
  v6 = [v5 viewModel];

  v7 = [(PUOneUpViewController *)self _options];
  v8 = [v4 asset];
  v9 = [v8 mediaType];

  if ((v7 & 2) == 0 && v9 == 2 && ([v6 isPresentedForPreview] & 1) == 0)
  {
    v10 = [v6 currentAssetReference];
    if ([v10 isEqual:v4])
    {
      v11 = [v6 assetViewModelForAssetReference:v4];
      v12 = [v11 videoPlayer];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __66__PUOneUpViewController__presentAlertForUnplayableAssetReference___block_invoke;
      v21[3] = &unk_1E7B80DD0;
      v22 = v11;
      v13 = v11;
      [v12 performChanges:v21];

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __66__PUOneUpViewController__presentAlertForUnplayableAssetReference___block_invoke_2;
      v19[3] = &unk_1E7B80DD0;
      v20 = v6;
      [v20 performChanges:v19];
      objc_initWeak(&location, self);
      v14 = dispatch_time(0, 400000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __66__PUOneUpViewController__presentAlertForUnplayableAssetReference___block_invoke_3;
      block[3] = &unk_1E7B80610;
      v16 = v4;
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

- (void)_beginVKSubjectAnalyzingWithGestureRecognizer:(id)a3 beginID:(unint64_t)a4
{
  v6 = a3;
  v7 = +[PUOneUpSettings sharedInstance];
  v8 = [v7 allowsVisualIntelligenceRemoveBackground];

  if (v8)
  {
    objc_initWeak(&location, self);
    objc_initWeak(&from, v6);
    v9 = dispatch_time(0, 150000000);
    v10 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__PUOneUpViewController__beginVKSubjectAnalyzingWithGestureRecognizer_beginID___block_invoke;
    block[3] = &unk_1E7B79F80;
    objc_copyWeak(&v12, &location);
    v13[1] = a4;
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

- (void)_handleTouchGesture:(id)a3
{
  v4 = a3;
  if ([v4 state] == 1)
  {
    [(PUOneUpViewController *)self _updateViewModelWithCurrentScrollPosition];
    [(PUOneUpViewController *)self setTouchingGestureRecognizerStateBeginID:[(PUOneUpViewController *)self touchingGestureRecognizerStateBeginID]+ 1];
    [(PUOneUpViewController *)self _beginVKSubjectAnalyzingWithGestureRecognizer:v4 beginID:[(PUOneUpViewController *)self touchingGestureRecognizerStateBeginID]];
  }
}

- (BOOL)_isLocationFromProviderOverInteractiveItemExcludingImageSubject:(id)a3
{
  v4 = a3;
  v5 = [(PUOneUpViewController *)self currentImageAnalysisInteraction];
  if ([v5 textExistsAtLocation:v4] & 1) != 0 || (objc_msgSend(v5, "dataDetectorExistsAtLocation:", v4))
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 actionInfoItemExistsAtLocation:v4];
  }

  return v6;
}

- (BOOL)_isLocationFromProviderOverImageSubject:(id)a3
{
  v4 = a3;
  v5 = [(PUOneUpViewController *)self currentImageAnalysisInteraction];
  v6 = [v5 imageSubjectExistsAtLocation:v4];

  return v6;
}

- (BOOL)_isLocationFromProviderOverVisualSearch:(id)a3
{
  v4 = a3;
  v5 = [(PUOneUpViewController *)self currentImageAnalysisInteraction];
  v6 = [v5 visualSearchExistsAtLocation:v4];

  return v6;
}

- (BOOL)_vkImageOverlayAllowsVKCToHandleLongPressGestureFromProvider:(id)a3
{
  v4 = a3;
  v5 = [(PUOneUpViewController *)self currentImageAnalysisInteraction];
  v6 = [v5 hostView];
  if (v6)
  {
    if ([v5 isVisualIntelligenceOverlayInitialized])
    {
      [v4 locationInView:v6];
      v8 = v7;
      v10 = v9;
      if ([v5 imageInteractionHasAnalysisAndSubjectLiftingEnabled])
      {
        v11 = [v5 assetViewModel];
        v12 = [v11 hasVisualAnalysisFailed];

        if ((v12 & 1) == 0)
        {
          if (([v5 isImageSubjectAnalyzingFinished] & 1) == 0 && (objc_msgSend(v5, "isImageSubjectAnalysisAvailable") & 1) == 0)
          {
            [v6 bounds];
            v16.x = v8;
            v16.y = v10;
            v13 = CGRectContainsPoint(v17, v16);
            goto LABEL_12;
          }

          if ([v5 isImageSubjectAnalysisAvailable])
          {
            v13 = [v5 imageSubjectExistsAtLocation:v4];
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

- (BOOL)_isVisualImageHasSubjectLiftedFromProvider:(id)a3
{
  v3 = [(PUOneUpViewController *)self currentImageAnalysisInteraction];
  v4 = [v3 subjectHighlightActive];

  return v4;
}

- (BOOL)_visualImageHasActiveTextSelectionFromProvider:(id)a3
{
  v3 = [(PUOneUpViewController *)self currentImageAnalysisInteraction];
  v4 = [v3 hasActiveTextSelection];

  return v4;
}

- (BOOL)_isLocationFromProviderOverActionInfoItem:(id)a3
{
  v4 = a3;
  v5 = [(PUOneUpViewController *)self currentImageAnalysisInteraction];
  v6 = [v5 actionInfoItemExistsAtLocation:v4];

  return v6;
}

- (BOOL)_isLocationFromProviderOverInteractiveItem:(id)a3
{
  v4 = a3;
  v5 = [(PUOneUpViewController *)self currentImageAnalysisInteraction];
  v6 = [v5 interactiveItemExistsAtLocation:v4];

  return v6;
}

- (id)currentImageAnalysisInteraction
{
  v2 = [(PUOneUpViewController *)self browsingSession];
  v3 = [v2 viewModel];
  v4 = [v3 imageAnalysisInteraction];

  return v4;
}

- (BOOL)_isLocationFromProvider:(id)a3 overTileOfKind:(id)a4 insetBy:(UIEdgeInsets)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(PUOneUpViewController *)self browsingSession];
  v10 = [v9 viewModel];

  v11 = [v10 assetsDataSource];
  v12 = [v10 currentAssetReference];
  v13 = [v11 indexPathForAssetReference:v12];
  v14 = [(PUOneUpViewController *)self _tilingView];
  v15 = [v11 identifier];
  v16 = [v14 presentedTileControllerWithIndexPath:v13 kind:v8 dataSourceIdentifier:v15];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [v16 view];
    if (v17)
    {
      [v7 locationInView:v17];
      v19 = v18;
      v21 = v20;
      v22 = [v17 hitTest:0 withEvent:?];
      if (v22)
      {
        if (PXEdgeInsetsIsZero())
        {
          v23 = 1;
        }

        else
        {
          [v17 bounds];
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

- (BOOL)_isLocationFromProviderOverControl:(id)a3
{
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v5 = [(PUOneUpViewController *)self _tilingView];
  [v4 locationInView:v5];
  v7 = v6 + -0.5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__PUOneUpViewController__isLocationFromProviderOverControl___block_invoke;
  v13[3] = &unk_1E7B79F58;
  v9 = v8 + -0.5;
  v16 = v6;
  v17 = v8;
  v10 = v5;
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

- (BOOL)_isLocationFromProviderInAccessoryArea:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v5 = [(PUOneUpViewController *)self _tilingView];
  [v4 locationInView:v5];
  v7 = v6 + -0.5;
  v9 = v8 + -0.5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__PUOneUpViewController__isLocationFromProviderInAccessoryArea___block_invoke;
  v13[3] = &unk_1E7B7DD60;
  v15 = &v16;
  v10 = v4;
  v14 = v10;
  [v5 enumeratePresentedTileControllersInRect:v13 usingBlock:{v7, v9, 1.0, 1.0}];
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

- (BOOL)_shouldMakeChromeVisibleWhenVideoPlayerPlaysToEndTime:(id)a3
{
  v4 = a3;
  v5 = [(PUOneUpViewController *)self browsingSession];
  v6 = [v5 viewModel];

  v7 = [v6 currentAssetReference];
  v8 = [v6 assetViewModelForAssetReference:v7];
  v9 = [v8 videoPlayer];

  if (v9 == v4 && [v6 lastChromeVisibilityChangeReason] == 4)
  {
    v10 = [v6 lastChromeVisibilityChangeContext];
    v11 = [v10 isEqual:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_keyboardWillShow:(id)a3
{
  rect_8 = a3;
  v4 = [(PUOneUpViewController *)self currentFloatingInfoPanelAccessoryViewController];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(PUOneUpViewController *)self view];
    v6 = [rect_8 userInfo];
    v7 = [v6 objectForKey:*MEMORY[0x1E69DDFA0]];
    [v7 CGRectValue];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = [v5 window];
    [v5 convertRect:v16 fromView:{v9, v11, v13, v15}];
    rect = v17;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    [v5 safeAreaInsets];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    [v5 bounds];
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

    [v4 setMaxVisibleContentInsetsWhenInEdit:{v25, v27, v34, v31, *&rect}];
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)playerCurrentTimeForActionPerformer:(SEL)a3
{
  v9 = [(PUOneUpViewController *)self browsingSession];
  v5 = [v9 viewModel];
  v6 = [v5 videoPlayer];
  v7 = v6;
  if (v6)
  {
    [v6 currentTime];
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (id)presentationEnvironmentForActionPerformer:(id)a3
{
  v4 = a3;
  v5 = [(PUOneUpViewController *)self _barsController];
  v6 = [v4 actionType];

  v7 = [v5 sourceItemForActionType:v6];

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

- (int64_t)_insetModeForAsset:(id)a3
{
  v4 = a3;
  v5 = [(PUOneUpViewController *)self browsingSession];
  v6 = [v5 viewModel];
  v7 = [v6 isPresentedForPreview];

  if ((v7 & 1) != 0 || ![MEMORY[0x1E69C3640] isOneUpRefreshEnabled])
  {
    v9 = 0;
    goto LABEL_26;
  }

  if (v4)
  {
    v8 = ([v4 mediaSubtypes] & 0x80004) != 0;
  }

  else
  {
    v8 = 0;
  }

  v10 = [(PUOneUpViewController *)self traitCollection];
  if ([v10 verticalSizeClass] == 2)
  {
    v11 = [(PUOneUpViewController *)self traitCollection];
    v12 = [v11 horizontalSizeClass];
    v13 = v12 == 2;

    if (!v8)
    {
      if (v12 == 2)
      {
        v14 = [MEMORY[0x1E69C3640] sharedInstance];
        v15 = [v14 regularSizeClassInsetMode];
        v13 = 1;
        goto LABEL_15;
      }

      goto LABEL_14;
    }

LABEL_13:
    v14 = [MEMORY[0x1E69C3640] sharedInstance];
    v15 = [v14 screenshotInsetMode];
    goto LABEL_15;
  }

  if (v8)
  {
    v13 = 0;
    goto LABEL_13;
  }

LABEL_14:
  v14 = [MEMORY[0x1E69C3640] sharedInstance];
  v15 = [v14 insetMode];
  v13 = 0;
LABEL_15:

  v16 = [MEMORY[0x1E69C3CA8] sharedInstance];
  if (![v16 shouldWorkAround139627593] || v13)
  {
  }

  else
  {
    v17 = [(PUOneUpViewController *)self _isZoomedIn];

    if (v17)
    {
      v15 = 0;
    }
  }

  v18 = 1;
  if (v15 == 1)
  {
    v18 = 2;
  }

  if (v15)
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
  v2 = [(PUOneUpViewController *)self browsingSession];
  v3 = [v2 viewModel];

  v4 = [v3 currentAssetReference];
  v5 = [v3 assetViewModelForAssetReference:v4];
  v6 = [v5 isZoomedIn];

  return v6;
}

- (void)_handleZoomOutCurrentAsset
{
  v3 = [(PUOneUpViewController *)self browsingSession];
  v4 = [v3 viewModel];

  if (-[PUOneUpViewController wasChromeVisibleBeforeZoomIn](self, "wasChromeVisibleBeforeZoomIn") && ([v4 isChromeVisible] & 1) == 0)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __51__PUOneUpViewController__handleZoomOutCurrentAsset__block_invoke;
    v5[3] = &unk_1E7B80DD0;
    v6 = v4;
    [v6 performChanges:v5];
  }
}

- (id)browsingTileViewAnimator
{
  v2 = [(PUOneUpViewController *)self browsingSession];
  v3 = [v2 tileAnimator];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_livePhotoBadge
{
  v3 = [(PUOneUpViewController *)self browsingSession];
  v4 = [v3 viewModel];

  v5 = [v4 assetsDataSource];
  v6 = [v4 currentAssetReference];
  v7 = [v5 indexPathForAssetReference:v6];
  v8 = [(PUOneUpViewController *)self _tilingView];
  v9 = PUTileKindBadge;
  v10 = [v5 identifier];
  v11 = [v8 presentedTileControllerWithIndexPath:v7 kind:v9 dataSourceIdentifier:v10];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v11 livePhotoBadgeContainerView];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (PXAssetActionManager)assetActionManager
{
  assetActionManager = self->_assetActionManager;
  if (!assetActionManager)
  {
    v4 = [(PUOneUpViewController *)self browsingSession];
    v5 = [v4 dataSourceManager];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v7 = [v4 dataSourceManager];
    if (isKindOfClass & 1) != 0 || (objc_opt_class(), v8 = objc_opt_isKindOfClass(), v7, [v4 dataSourceManager], v7 = objc_claimAutoreleasedReturnValue(), (v8))
    {
      v9 = [v7 photosDataSource];
    }

    else
    {
      objc_opt_class();
      v26 = objc_opt_isKindOfClass();

      if ((v26 & 1) == 0)
      {
        goto LABEL_17;
      }

      v7 = [v4 dataSourceManager];
      v27 = [v7 dataSourceManagers];
      v28 = [v27 firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v28 photosDataSource];
      }

      else
      {
        v9 = 0;
      }
    }

    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E69C37D8]) initWithPhotosDataSource:v9];
      v11 = [v4 viewModel];
      v12 = [v11 currentAssetReference];
      v13 = [v12 indexPath];
      v14 = [v13 section];
      if (v14 >= [v9 numberOfSections])
      {
        v22 = 0;
LABEL_29:

        goto LABEL_30;
      }

      v37 = v11;
      v38 = v10;
      v15 = [v12 indexPath];
      v16 = [v15 item];
      v17 = [v12 indexPath];
      v18 = [v9 numberOfItemsInSection:{objc_msgSend(v17, "section")}];

      if (v16 < v18)
      {
        v19 = [v12 indexPath];
        v13 = [v9 assetReferenceAtIndexPath:v19];

        v20 = [(PUOneUpViewController *)self wantsSpotlightStyling];
        v21 = 0x1E69C37C0;
        if (!v20)
        {
          v21 = 0x1E69C3798;
        }

        v22 = [objc_alloc(*v21) initWithSelectedObjectReference:v13 dataSourceManager:v38];
        v23 = [(PUOneUpViewController *)self browsingSession];
        v24 = [v23 actionManager];

        if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        v31 = [v25 underlyingActionManager];
        objc_opt_class();
        v32 = objc_opt_isKindOfClass();

        if (v32)
        {
          v33 = [v25 underlyingActionManager];
          [v22 setAdditionalPropertiesFromActionManager:v33];
        }

        v11 = v37;
        v10 = v38;
        goto LABEL_29;
      }

      v22 = 0;
      v11 = v37;
      v10 = v38;
LABEL_30:

LABEL_31:
      goto LABEL_32;
    }

LABEL_17:
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = 0;
      v22 = 0;
LABEL_32:
      [v22 setPerformerDelegate:self];
      v34 = self->_assetActionManager;
      self->_assetActionManager = v22;
      v35 = v22;

      assetActionManager = self->_assetActionManager;
      goto LABEL_33;
    }

    v10 = v4;
    v29 = [v10 viewModel];
    v30 = [v29 currentAssetReference];
    v12 = [v30 asset];

    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v11 = v12;

      if (!v11)
      {
        v9 = 0;
        v22 = 0;
        goto LABEL_31;
      }

      v12 = [v10 importController];
      v22 = PXCreateImportAssetActionManager();
      v9 = 0;
    }

    else
    {
      v11 = 0;
      v9 = 0;
      v22 = 0;
    }

    goto LABEL_30;
  }

LABEL_33:

  return assetActionManager;
}

- (void)_browsingVideoPlayerDidPlayToEndTime:(id)a3
{
  v4 = [a3 object];
  if ([(PUOneUpViewController *)self _shouldMakeChromeVisibleWhenVideoPlayerPlaysToEndTime:v4])
  {
    v5 = [(PUOneUpViewController *)self browsingSession];
    v6 = [v5 viewModel];

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__PUOneUpViewController__browsingVideoPlayerDidPlayToEndTime___block_invoke;
    v8[3] = &unk_1E7B80DD0;
    v9 = v6;
    v7 = v6;
    [v7 performChanges:v8];
  }
}

- (void)_abandonTileController:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v6 setDelegate:0];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v6;
    [v4 setDelegate:0];
    [v4 setPresentingDelegate:0];
    [v4 setBrowsingViewModel:0];

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PUOneUpViewController *)self activeVideoTileControllers];
    [v5 removeObject:v6];
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

      [v6 setPresentingDelegate:0];
    }
  }

  [v6 setBrowsingViewModel:0];
LABEL_6:
}

- (void)_configureAdoptedTileController:(id)a3
{
  v4 = a3;
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
    v7 = v4;
    [v7 setDelegate:self];
    v8 = [(PUOneUpViewController *)self _enablePockets];
    v9 = [v7 userTransformView];

    [v9 setScrollPocketsEnabled:v8];
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v4;
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
      v10 = v4;
      v14 = [(PUOneUpViewController *)self activeVideoTileControllers];
      [v14 addObject:v10];

      [v10 setCanPlayVideo:{-[PUOneUpViewController videoTilesCanPlayVideo](self, "videoTilesCanPlayVideo")}];
      [v10 setIsOnSecondScreen:{-[PUOneUpViewController _isPresentedForSecondScreen](self, "_isPresentedForSecondScreen")}];
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v4;
      goto LABEL_16;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_4;
    }

    v11 = v4;
    v10 = v11;
LABEL_15:
    [v11 setPresentingDelegate:self];
LABEL_16:
    v12 = [(PUOneUpViewController *)self browsingSession];
    v13 = [v12 viewModel];
    [v10 setBrowsingViewModel:v13];

    goto LABEL_4;
  }

LABEL_3:
  [v4 setDelegate:self];
LABEL_4:
  v5 = [(PUOneUpViewController *)self _isPresentedForSecondScreen];
  v15 = v4;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v15;
  }

  else
  {
    v6 = 0;
  }

  [v6 setIsOnPrimaryDisplay:!v5];
}

- (void)_hideChromeOnPlayButtonTapWithItemIsNowPlaying:(BOOL)a3 buttonIsOverlayed:(BOOL)a4
{
  if (a3 && a4)
  {
    v5 = [(PUOneUpViewController *)self browsingSession];
    v6 = [v5 viewModel];

    v7 = [v6 currentAssetReference];
    v8 = +[PUOneUpSettings sharedInstance];
    v9 = PUShouldAutoHideChrome(v6, [v8 chromeAutoHideBehaviorOnPlayButton]);

    v10 = [v7 indexPath];
    v11 = [(PUOneUpViewController *)self _tilingView];
    v12 = [v11 layout];

    v13 = [(PUOneUpViewController *)self _videoPlayerAtIndexPath:v10 layout:v12];

    if (v9 && (![(PUOneUpViewController *)self _isSecondScreenBrowserVisible]|| !v13))
    {
      v14 = [(PUOneUpViewController *)self _barsController];
      v15 = [v14 disableChromeHiding];

      if ((v15 & 1) == 0)
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __90__PUOneUpViewController__hideChromeOnPlayButtonTapWithItemIsNowPlaying_buttonIsOverlayed___block_invoke;
        v16[3] = &unk_1E7B80C38;
        v17 = v6;
        v18 = v7;
        [v17 performChanges:v16];
      }
    }
  }
}

- (void)_chromeAutoHideTimerFired:(id)a3
{
  [(PUOneUpViewController *)self _setChromeAutoHideTimer:0];
  v4 = [(PUOneUpViewController *)self browsingSession];
  v5 = [v4 viewModel];

  if (PUShouldAutoHideChrome(v5, 1))
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__PUOneUpViewController__chromeAutoHideTimerFired___block_invoke;
    v6[3] = &unk_1E7B80DD0;
    v7 = v5;
    [v7 performChanges:v6];
  }
}

- (void)_cancelTimedChromeAutoHide
{
  v3 = [(PUOneUpViewController *)self _chromeAutoHideTimer];
  [v3 invalidate];

  [(PUOneUpViewController *)self _setChromeAutoHideTimer:0];
}

- (void)_scheduleTimedChromeAutoHide
{
  v3 = +[PUOneUpSettings sharedInstance];
  [v3 chromeAutoHideDelay];
  v5 = v4;

  v6 = [(PUOneUpViewController *)self _chromeAutoHideTimer];

  if (!v6 && v5 > 0.0)
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
    v3 = [(PUOneUpViewController *)self chromeViewController];
    [v3 additionalActionInfoEdgeInsets];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = [(PUOneUpViewController *)self currentImageAnalysisInteraction];
    [v12 setAdditionalActionInfoEdgeInsets:{v5, v7, v9, v11}];
  }
}

- (void)_updateEditModeIfNeeded
{
  if ([(PUOneUpViewController *)self _needsUpdateEditMode])
  {
    [(PUOneUpViewController *)self _setNeedsUpdateEditMode:0];
    v3 = [(PUOneUpViewController *)self browsingSession];
    v4 = [v3 viewModel];

    v5 = [v4 currentAssetReference];
    if (v5)
    {
      v6 = [v4 currentAssetReference];
      v7 = [v4 assetViewModelForAssetReference:v6];

      v8 = [v7 isInEditMode];
      v9 = [(PUOneUpViewController *)self _tilingView];
      v10 = [v5 indexPath];
      v11 = PUTileKindUserTransform;
      v12 = [v5 dataSourceIdentifier];
      v13 = [v9 presentedTileControllerWithIndexPath:v10 kind:v11 dataSourceIdentifier:v12];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v13;
      }

      else
      {
        v16 = 0;
      }

      v14 = v8 ^ 1u;
    }

    else
    {
      v16 = 0;
      v14 = 1;
    }

    v15 = [(PUOneUpViewController *)self _tilingView];
    [v15 setScrollEnabled:v14];

    [v16 setUserInteractionEnabled:v14];
  }
}

- (void)_updateReviewScreenBars
{
  v3 = [(PUOneUpViewController *)self browsingSession];
  v4 = [v3 viewModel];
  v5 = [v4 reviewScreenBarsModel];

  v6 = [(PUOneUpViewController *)self _reviewScreenControlBarTileViewController];
  [v6 setBarsModel:v5];

  v7 = [(PUOneUpViewController *)self _reviewScreenTopBarTileViewController];
  [v7 setBarsModel:v5];

  v8 = [(PUOneUpViewController *)self _reviewScreenScrubberBarTileViewController];
  [v8 setBarsModel:v5];

  v9 = [(PUOneUpViewController *)self _spec];
  LOBYTE(v8) = [v9 shouldLayoutReviewScreenControlBarVertically];
  v10 = [v9 shouldCounterrotateReviewScreenBars];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__PUOneUpViewController__updateReviewScreenBars__block_invoke;
  v11[3] = &__block_descriptor_34_e42_v16__0___PUMutableReviewScreenBarsModel__8l;
  v12 = v8;
  v13 = v10;
  [v5 performChanges:v11];
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

  v3 = [(PUOneUpViewController *)self browsingSession];
  v4 = [v3 viewModel];
  v5 = [v4 currentAssetReference];

  if (v5)
  {
    v6 = [(PUOneUpViewController *)self browsingSession];
    v7 = [v6 actionManager];

    v11[0] = v5;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v9 = [v7 canPerformAction:43 onAllAssetReferences:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (UIView)chromeView
{
  v2 = [(PUOneUpViewController *)self chromeViewController];
  v3 = [v2 view];

  return v3;
}

- (void)_updateChromeViewControllerIfNeeded
{
  if ([(PUOneUpViewController *)self needsUpdateChromeViewController])
  {
    [(PUOneUpViewController *)self setNeedsUpdateChromeViewController:0];
    v3 = [(PUOneUpViewController *)self _spec];
    v4 = [v3 hideScrubberWhenShowingAccessoryView];
    v5 = [(PUOneUpViewController *)self chromeViewController];
    [v5 setHideScrubberWhenAccessoryIsVisible:v4];

    v6 = [(PUOneUpViewController *)self _wantsShowInLibraryButtonForAllAssets];
    v7 = [(PUOneUpViewController *)self chromeViewController];
    [v7 setWantsShowInLibraryButton:v6];

    v8 = [(PUOneUpViewController *)self chromeViewController];
    [v8 updatePresentingViewController];

    v9 = [(PUOneUpViewController *)self chromeViewController];
    [v9 setAirplayInfoWithShouldShowAirPlayButton:_ShouldShowAirPlayButton() isDisplayingContentOnSecondScreen:{-[PUOneUpViewController _isSecondScreenBrowserVisible](self, "_isSecondScreenBrowserVisible")}];
  }
}

- (void)_updateBackgroundTileViewController
{
  v17 = [(PUOneUpViewController *)self _backgroundTileViewController];
  v3 = [(PUOneUpViewController *)self _spec];
  v4 = [v3 backgroundColorOverride];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(PUOneUpViewController *)self chromeViewController];
    v6 = [v7 backgroundColorOverride];
  }

  v8 = [v3 shouldDisplayEmptyPlaceholder];
  [v17 setBackgroundColorOverride:v6];
  [v17 setShouldDisplayEmptyPlaceholder:v8];
  v9 = [(PUOneUpViewController *)self browsingSession];
  v10 = [v9 emptyPlaceholderTitle];
  [v17 setEmptyPlaceholderCustomTitle:v10];

  v11 = [(PUOneUpViewController *)self browsingSession];
  v12 = [v11 emptyPlaceholderSubtitle];
  [v17 setEmptyPlaceholderCustomSubtitle:v12];

  if ([(PUOneUpViewController *)self wantsSpotlightStyling])
  {
    v13 = [(PUOneUpViewController *)self view];
    v14 = [v13 traitCollection];
    if ([v14 userInterfaceIdiom])
    {
      v15 = 8;
    }

    else
    {
      v15 = 18;
    }

    v16 = [MEMORY[0x1E69DC730] effectWithStyle:v15];
    [v17 setVisualEffect:v16];
  }
}

- (void)_setContentUnavailableConfiguration:(id)a3
{
  v7.receiver = self;
  v7.super_class = PUOneUpViewController;
  [(PUOneUpViewController *)&v7 _setContentUnavailableConfiguration:?];
  if (a3)
  {
    v5 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(PUOneUpViewController *)self view];
  [v6 setBackgroundColor:v5];

  if (a3)
  {
  }
}

- (void)_updateGestureController
{
  v7 = [(PUOneUpViewController *)self gestureController];
  v3 = [(PUOneUpViewController *)self browsingSession];
  v4 = [v3 viewModel];
  v5 = [v4 isChromeVisible];

  if (v5)
  {
    v6 = [(PUOneUpViewController *)self chromeViewController];
    [v6 contentGuideInsets];
    [v7 setInteractionInsets:?];
  }

  else
  {
    [v7 setInteractionInsets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  }
}

- (void)_updateContentUnavailableConfigurationUsingState:(id)a3
{
  v4 = a3;
  v5 = [(PUOneUpViewController *)self _spec];
  v6 = [v5 isContentLocked];

  v7 = [(PUOneUpViewController *)self _tilingView];
  [v7 setHidden:v6];

  v8 = v6 ^ 1;
  v9 = [(PUOneUpViewController *)self _tilingView];
  [v9 setUserInteractionEnabled:v8];

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
    v12 = [(PUOneUpViewController *)self browsingSession];
    v13 = [v12 privacyController];
    [v13 authenticationType];

    v14 = [(PUOneUpViewController *)self browsingSession];
    v15 = [v14 viewModel];
    [v15 wantsContentUnavailableUnlockButtonVisible];

    v16 = PXContentLockedPlaceholderConfiguration();
    v17 = [v16 updatedConfigurationForState:v4];
    [(PUOneUpViewController *)self _setContentUnavailableConfiguration:v17];

    v18 = [(PUOneUpViewController *)self browsingSession];
    v19 = [v18 viewModel];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __74__PUOneUpViewController__updateContentUnavailableConfigurationUsingState___block_invoke_2;
    v21[3] = &unk_1E7B80DD0;
    v20 = v19;
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
    v3 = [(PUOneUpViewController *)self _tilingView];
    v4 = [v3 layout];

    [(PUOneUpViewController *)self _updateLayout:v4];
  }
}

- (void)_updateViewModelWithCurrentScrollPosition
{
  v4 = [(PUOneUpViewController *)self _tilingView];
  v5 = [v4 layout];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(PUOneUpViewController *)self browsingSession];
    v7 = [v6 viewModel];
    v8 = [v7 assetsDataSource];

    v9 = [v5 dataSource];
    LOBYTE(v7) = [v9 isEqual:v8];

    if ((v7 & 1) == 0)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:1883 description:{@"Invalid parameter not satisfying: %@", @"[[oneUpLayout dataSource] isEqual:assetsDataSource]"}];
    }

    v10 = [v5 indexPathOfCurrentItem];
    if (v10)
    {
      [v5 transitionProgress];
      v12 = v11;
      v13 = [v8 assetReferenceAtIndexPath:v10];
      if (!v13)
      {
        v19 = [MEMORY[0x1E696AAA8] currentHandler];
        [v19 handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:1889 description:{@"Invalid parameter not satisfying: %@", @"assetReference != nil"}];
      }

      v14 = [(PUOneUpViewController *)self browsingSession];
      v15 = [v14 viewModel];

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __66__PUOneUpViewController__updateViewModelWithCurrentScrollPosition__block_invoke;
      v20[3] = &unk_1E7B7FE10;
      v21 = v15;
      v22 = v13;
      v24 = v12;
      v23 = self;
      v16 = v13;
      v17 = v15;
      [v17 performChanges:v20];
    }
  }
}

- (BOOL)_isDrivingScrubbing
{
  v2 = self;
  v3 = [(PUOneUpViewController *)self browsingSession];
  v4 = [v3 viewModel];
  v5 = [v4 transitionDriverIdentifier];
  LOBYTE(v2) = [v5 isEqualToString:v2->_scrubbingIdentifier];

  return v2;
}

- (void)_updateScrubbingAdjustmentPolicyIfNeeded
{
  if ([(PUOneUpViewController *)self _needsUpdateScrubbingAdjustmentPolicy])
  {
    [(PUOneUpViewController *)self _setNeedsUpdateScrubbingAdjustmentPolicy:0];
    v3 = [(PUOneUpViewController *)self browsingSession];
    v4 = [v3 viewModel];
    v8 = [v4 assetViewModelForCurrentAssetReference];

    v5 = [v8 asset];
    v6 = [(PUOneUpViewController *)self _insetModeForAsset:v5];

    v7 = [(PUOneUpViewController *)self scaledVideoOffsetAdjustmentPolicy];
    [v7 setInsetMode:v6];
  }
}

- (void)_updateBarsControllerIfNeeded
{
  if ([(PUOneUpViewController *)self _needsUpdateBarsController])
  {
    [(PUOneUpViewController *)self _setNeedsUpdateBarsController:0];
    v47 = [(PUOneUpViewController *)self _spec];
    v3 = [(PUOneUpViewController *)self _options];
    v4 = [(PUOneUpViewController *)self browsingSession];
    v5 = [v4 viewModel];

    v6 = [MEMORY[0x1E69C3640] isOneUpRefreshEnabled];
    v7 = +[PUOneUpSettings sharedInstance];
    v44 = [v47 shouldPlaceButtonsInNavigationBar];
    v43 = [v47 shouldUseCompactTitleView];
    v42 = [v47 shouldUseCompactCommentsTitle];
    [v47 maximumToolbarHeight];
    v9 = v8;
    [v47 maximumAccessoryToolbarHeight];
    v11 = v10;
    v12 = 0;
    if ([v47 allowProgrammaticNavBackButton])
    {
      v13 = [(PUOneUpViewController *)self navigationController];
      v14 = [v13 viewControllers];
      v15 = [v14 firstObject];
      if (v15 == self)
      {
        v16 = [(PUOneUpViewController *)self navigationController];
        v17 = [v16 presentingViewController];
        v12 = v17 != 0;
      }

      else
      {
        v12 = 0;
      }
    }

    v41 = v12;
    if (v6)
    {
      v18 = 0;
    }

    else
    {
      v18 = 0;
      if (([v5 isPresentedForPreview] & 1) == 0 && (v3 & 0x800) == 0)
      {
        v18 = [v47 isContentLocked] ^ 1;
      }
    }

    v19 = [v47 shouldShowTitleView];
    v45 = v3;
    if ((v3 & 0x1000) != 0)
    {
      v20 = 0;
    }

    else
    {
      v20 = v19;
    }

    v40 = v20;
    ShouldShowAirPlayButton = _ShouldShowAirPlayButton();
    v21 = [v5 currentAssetReference];
    v22 = [(PUOneUpViewController *)self _accessoryViewControllersManager];
    v23 = [v21 asset];
    v24 = [v22 accessoryViewTypeForAsset:v23];

    if ([v47 allowTapOnTitle])
    {
      v26 = [v7 titleTapAction] == 2 && v24 == 2;
      v38 = v26;
    }

    else
    {
      v38 = 0;
    }

    v27 = [v21 asset];
    v28 = v27;
    v46 = v7;
    if (v6)
    {
      v29 = v5;
      v37 = 0;
      v30 = 0;
    }

    else
    {
      if ([v27 mediaType] == 2)
      {
        v37 = [v28 canPlayLoopingVideo] ^ 1;
      }

      else
      {
        v37 = 0;
      }

      v29 = v5;
      v30 = [v28 playbackStyle] == 4;
    }

    v31 = [v47 shouldDisableNavigationBarsVisibility];
    v32 = [v47 shouldPlaceScrubberInScrubberBar];
    v33 = [(PUOneUpViewController *)self _spec];
    v34 = [v33 hideScrubberWhenShowingAccessoryView];

    if (v34)
    {
      v35 = [v29 assetViewModelForAssetReference:v21];
      v18 = ([v35 isAccessoryViewVisible] ^ 1) & v18;
    }

    v36 = [(PUOneUpViewController *)self _barsController];
    [v36 setShouldShowMuteButton:v30];
    [v36 setShouldPlaceButtonsInNavigationBar:v44];
    [v36 setShouldUseCompactTitleView:v43];
    [v36 setShouldUseCompactCommentsTitle:v42];
    [v36 setMaximumToolbarHeight:v9];
    [v36 setMaximumAccessoryToolbarHeight:v11];
    [v36 setShouldShowProgrammaticNavBackButton:v41];
    [v36 setShouldShowAirPlayButton:ShouldShowAirPlayButton];
    [v36 setShouldShowScrubber:v18];
    [v36 setShouldShowTitleView:v40];
    [v36 setAllowTapOnTitle:v38];
    [v36 setAllowShowingPlayPauseButton:v37];
    [v36 setDisableShowingNavigationBars:v31];
    [v36 setShouldPlaceScrubberInScrubberBar:v32];
    [v36 setDisableChromeHiding:(v45 >> 14) & 1];
    [v36 setWantsShowInLibraryButton:(v45 >> 15) & 1];
    [v36 setIsInCompactLayoutStyle:{objc_msgSend(v47, "isInCompactLayoutStyle")}];
  }
}

- (void)_updateVideoPlayerIfNeeded
{
  if ([(PUOneUpViewController *)self _needsUpdateVideoPlayer])
  {
    [(PUOneUpViewController *)self _setNeedsUpdateVideoPlayer:0];
    v3 = [(PUOneUpViewController *)self browsingSession];
    v4 = [v3 viewModel];

    v5 = [v4 currentAssetReference];
    v6 = [v4 assetViewModelForAssetReference:v5];

    v7 = [v6 asset];
    v8 = [v4 isPresentingOverOneUp];
    v9 = [v6 videoPlayer];
    if ((v8 & 1) == 0)
    {
      if ([v7 canPlayLoopingVideo])
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __51__PUOneUpViewController__updateVideoPlayerIfNeeded__block_invoke;
        v10[3] = &unk_1E7B80DD0;
        v11 = v9;
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
      v6 = [(PUOneUpViewController *)self browsingSession];
      v25 = [v6 viewModel];

      v7 = [v25 currentAssetReference];
      v8 = [v7 asset];

      if (v8)
      {
        [v8 aspectRatio];
        v10 = v9;
      }

      else
      {
        v10 = 1.0;
      }

      v11 = [(PUOneUpViewController *)self px_screen];
      [v11 bounds];
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
    v3 = [(PUOneUpViewController *)self traitCollection];
    [(PUOneUpViewController *)self _layoutReferenceSize];
    v5 = v4;
    v7 = v6;
    v37 = [(PUOneUpViewController *)self _isPresentedForSecondScreen];
    v8 = [(PUOneUpViewController *)self _prefersCompactLayoutForSplitScreen];
    v9 = [(PUOneUpViewController *)self browsingSession];
    v10 = [v9 viewModel];

    v11 = [v10 isPresentedForPreview];
    v12 = [v10 isChromeVisible];
    v13 = [(PUOneUpViewController *)self _secondScreenBrowser];
    if (v13 && ![(PUOneUpViewController *)self _isPresentedForSecondScreen])
    {
      [v10 secondScreenSize];
      v14 = v16;
      v15 = v17;
    }

    else
    {
      v14 = *MEMORY[0x1E695F060];
      v15 = *(MEMORY[0x1E695F060] + 8);
    }

    v18 = [(PUOneUpViewController *)self _barsController];
    v19 = [v18 isShowingPlayPauseButton];

    v20 = [v10 contentPrivacyState] == 1;
    v21 = [(PUOneUpViewController *)self unlockDeviceStatus];

    if (v21)
    {
      v22 = [(PUOneUpViewController *)self unlockDeviceStatus];
      v23 = v22[2]();
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
      v27 = v19;
      v28 = v3;
      v29 = v12;
      v30 = v11;
      v31 = v8;
      v32 = v25;
      *buf = 138412290;
      v53 = v32;
      _os_log_impl(&dword_1B36F3000, v24, OS_LOG_TYPE_INFO, "PUOneUpViewController: shouldDisplayPeopleRow: %@", buf, 0xCu);

      v8 = v31;
      v11 = v30;
      v12 = v29;
      v3 = v28;
      v19 = v27;
      v20 = v26;
      LOBYTE(v23) = v36;
    }

    v33 = [(PUOneUpViewController *)self _spec];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __44__PUOneUpViewController__updateSpecIfNeeded__block_invoke;
    v38[3] = &unk_1E7B79F10;
    v45 = v11;
    v46 = v37;
    v41 = v14;
    v42 = v15;
    v47 = v12;
    v48 = v20;
    v49 = v19;
    v39 = v33;
    v40 = v3;
    v50 = v8;
    v43 = v5;
    v44 = v7;
    v51 = v23;
    v34 = v3;
    v35 = v33;
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

- (void)_dismissTipPopoverAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(PUOneUpViewController *)self _isTipPopoverVisible])
  {
    [(PUOneUpViewController *)self dismissViewControllerAnimated:v3 completion:0];
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
    v3 = [(PUOneUpViewController *)self browsingSession];
    v4 = [v3 viewModel];

    v5 = [(PUOneUpViewController *)self browsingSession];
    v6 = [v5 actionManager];

    v7 = [v4 assetViewModelForCurrentAssetReference];
    v8 = [v4 assetsDataSource];
    v9 = [v4 currentAssetReference];
    v10 = [v9 asset];
    v11 = [v7 badgeInfoPromise];
    v12 = v11;
    if (v11)
    {
      [v11 badgeInfo];
    }

    v67 = [v4 isChromeVisible];
    v66 = [(PUOneUpViewController *)self _isIrisPlaying];
    v13 = [(PUOneUpViewController *)self traitCollection];
    v65 = [v13 userInterfaceIdiom];

    v14 = [(PUOneUpViewController *)self view];
    v15 = [v14 window];
    v64 = [v15 _toWindowOrientation];

    if ([v4 isScrolling])
    {
      v63 = 1;
    }

    else
    {
      v63 = [v4 isScrubbing];
    }

    if ([(PUOneUpViewController *)self appearState]== 2)
    {
      v62 = [v4 isPresentedForPreview];
    }

    else
    {
      v62 = 1;
    }

    v61 = [(PUOneUpViewController *)self _isAccessoryVisible];
    v16 = [(PUOneUpViewController *)self _barsController];
    v59 = [v16 barButtonItemToggleDetails];

    if (PXAssetBadgeInfoIsActionable())
    {
      v56 = PXAssetBadgeInfoIsActionableDisabled() ^ 1;
    }

    else
    {
      v56 = 0;
    }

    v17 = [(PUOneUpViewController *)self _barsController];
    v18 = [v17 barButtonItemActionsMenu];
    v55 = v18 != 0;

    if (PXContentSyndicationShouldShowAttributionViewForAsset())
    {
      v19 = [(PUOneUpViewController *)self _syndicationPillView];
      v54 = v19 != 0;
    }

    else
    {
      v54 = 0;
    }

    v68 = v10;
    v20 = [v7 asset];
    v58 = [(PUOneUpViewController *)self _isAssetEligibleForTip:v20];

    v21 = [v7 visualImageAnalysis];
    v57 = [v21 hasVisualSearchResults];

    if (v9)
    {
      v22 = [v8 indexPathForAssetReference:v9];
      v23 = [(PUOneUpViewController *)self _tilingView];
      v24 = PUTileKindBadge;
      v25 = [v8 identifier];
      v26 = [v23 presentedTileControllerWithIndexPath:v22 kind:v24 dataSourceIdentifier:v25];

      v53 = [v26 isActive];
      if ([MEMORY[0x1E69BDDE0] status] == 1)
      {
        v73[0] = v9;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:1];
        if ([v6 canPerformAction:24 onAllAssetReferences:v27])
        {
          v28 = [v9 asset];
          v60 = [v28 mediaType] == 1;
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
      v53 = 0;
    }

    v69 = v8;
    v71 = v6;
    v29 = [(PUOneUpViewController *)self _cropButtonTileViewControllerForCurrentAsset];
    v30 = [v29 cropButton];

    v31 = 0;
    v33 = v64 != 1 && v65 != 1;
    v72 = v4;
    v70 = v7;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    if (((v63 | v62) | (v66 || v61)))
    {
      v38 = v67;
    }

    else
    {
      v38 = v67;
      if (!v33)
      {
        v34 = ![(PUOneUpViewController *)self _hasShownRelevantTip];
        if (v59)
        {
          v39 = v67 & v34;
        }

        else
        {
          v39 = 0;
        }

        v31 = v39 & v58 & v57;
        if ((v67 & v34) == 1)
        {
          v35 = v55;
          v36 = v54;
          v37 = [(PUOneUpViewController *)self _didPlayCurrentLivePhoto]& v53 & v56;
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

    v40 = v30 != 0;
    v41 = MEMORY[0x1E69C3748];
    v42 = [MEMORY[0x1E69C3748] infoPanelTipID];
    [v41 setTip:v42 isPresentable:v31];

    v43 = MEMORY[0x1E69C3748];
    v44 = [MEMORY[0x1E69C3748] livePhotosTipID];
    [v43 setTip:v44 isPresentable:v37];

    v45 = MEMORY[0x1E69C3748];
    v46 = [MEMORY[0x1E69C3748] syndicatedPhotosTipID];
    [v45 setTip:v46 isPresentable:v36];

    v47 = MEMORY[0x1E69C3748];
    v48 = [MEMORY[0x1E69C3748] actionsMenuTipID];
    [v47 setTip:v48 isPresentable:v35];

    v49 = MEMORY[0x1E69C3748];
    v50 = [MEMORY[0x1E69C3748] quickCropTipID];
    [v49 setTip:v50 isPresentable:v34 & ~v38 & v40];

    v51 = MEMORY[0x1E69C3748];
    v52 = [MEMORY[0x1E69C3748] cleanUpTipID];
    [v51 setTip:v52 isPresentable:v34 & v60];
  }
}

- (void)_updateBarAppearanceIfNeeded
{
  v11 = *MEMORY[0x1E69E9840];
  if ([(PUOneUpViewController *)self _needsUpdateBarAppearance])
  {
    [(PUOneUpViewController *)self _setNeedsUpdateBarAppearance:0];
    v3 = [(PUOneUpViewController *)self px_barAppearance];
    if (([v3 isEnabled] & 1) == 0)
    {
      v4 = PXAssertGetLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = self;
        _os_log_error_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_ERROR, "Attempting to modify PXBarAppearance state without enabling bar appearance on: %@", buf, 0xCu);
      }
    }

    v5 = [(PUOneUpViewController *)self pu_wantsToolbarVisible];
    if ([v3 prefersTabBarVisible])
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
    v8 = v5;
    [v3 performChangesWithAnimationOptions:0 changes:v7];
  }
}

- (void)_updatePreloadInsetsIfNeeded
{
  if ([(PUOneUpViewController *)self _needsUpdatePreloadInsets])
  {
    [(PUOneUpViewController *)self _setNeedsUpdatePreloadInsets:0];
    v3 = [(PUOneUpViewController *)self browsingSession];
    v14 = [v3 viewModel];

    if ([v14 browsingSpeedRegime] == 2 || objc_msgSend(v14, "isPresentedForPreview"))
    {
      v5 = *MEMORY[0x1E69DDCE0];
      v4 = *(MEMORY[0x1E69DDCE0] + 8);
      v7 = *(MEMORY[0x1E69DDCE0] + 16);
      v6 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    else
    {
      v8 = [(PUOneUpViewController *)self view];
      [v8 bounds];
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

    v13 = [(PUOneUpViewController *)self _tilingView];
    [v13 setLoadingInsets:{v5, v4, v7, v6}];
  }
}

- (void)_updateLayout:(id)a3
{
  v132 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_68;
  }

  v4 = [(PUOneUpViewController *)self _spec];
  v5 = +[PUOneUpSettings sharedInstance];
  v6 = [MEMORY[0x1E69C3640] isOneUpRefreshEnabled];
  v7 = [(PUOneUpViewController *)self browsingSession];
  v8 = [v7 viewModel];

  v131 = [(PUOneUpViewController *)self _currentAssetViewModel];
  v9 = *MEMORY[0x1E69DDCE0];
  v10 = *(MEMORY[0x1E69DDCE0] + 8);
  v11 = *(MEMORY[0x1E69DDCE0] + 16);
  v12 = *(MEMORY[0x1E69DDCE0] + 24);
  if (v6)
  {
    v13 = [(PUOneUpViewController *)self browsingSession];
    v14 = [v13 viewModel];
    v15 = [v14 isPresentedForPreview];

    if (v15)
    {
      goto LABEL_8;
    }

    v16 = [(PUOneUpViewController *)self chromeViewController];
    [(PUOneUpViewController *)self _layoutReferenceSize];
    [v16 contentGuideInsetsForViewSize:?];
  }

  else
  {
    if (![v4 shouldUseContentGuideInsets])
    {
      goto LABEL_8;
    }

    v16 = [(PUOneUpViewController *)self _barsController];
    [v16 contentGuideInsets];
  }

LABEL_8:
  v17 = [(PUOneUpViewController *)self chromeViewController];
  [v17 contentDecorationAdditionalInsets];
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
  v30 = [(PUOneUpViewController *)self browsingSession];
  v31 = [v30 viewModel];
  v32 = [v31 isPresentedForPreview];

  if (v32)
  {
LABEL_9:
    v122 = v11;
    v123 = v12;
    v120 = v9;
    v121 = v10;
    goto LABEL_10;
  }

  v40 = [v5 scaleToFitBehavior];
  switch(v40)
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
      v41 = [(PUOneUpViewController *)self view];
      [v41 safeAreaInsets];
      v120 = v42;
      v121 = v43;
      v122 = v44;
      v123 = v45;

      break;
    default:
      goto LABEL_9;
  }

LABEL_10:
  v130 = v8;
  v33 = [v8 videoOverlayPlayState];
  v34 = [v4 shouldDisplayBadges];
  if (v33)
  {
    v35 = 0;
  }

  else
  {
    v35 = v34;
  }

  v116 = [v4 shouldUseUserTransformTiles];
  v36 = [v4 shouldDisplayPlayButtons];
  v37 = MEMORY[0x1E695F060];
  if (v36)
  {
    [v4 playButtonSize];
    v117 = v39;
    v118 = v38;
  }

  else
  {
    v117 = *(MEMORY[0x1E695F060] + 8);
    v118 = *MEMORY[0x1E695F060];
  }

  v46 = [v4 shouldDisplayProgressIndicators];
  if (v33 || !v46)
  {
    v114 = v37[1];
    v115 = *v37;
  }

  else
  {
    [v4 progressIndicatorSize];
    v114 = v48;
    v115 = v47;
  }

  if ([v4 shouldDisplayPeopleRow])
  {
    [v4 peopleRowSize];
    v112 = v50;
    v113 = v49;
  }

  else
  {
    v112 = v37[1];
    v113 = *v37;
  }

  v51 = [v4 shouldDisplayProgressIndicators];
  if (!v33 && v51)
  {
    [v4 progressIndicatorContentInsets];
    v9 = v52;
    v10 = v53;
    v11 = v54;
    v12 = v55;
  }

  if ([v4 shouldDisplayProgressIndicators])
  {
    [v4 renderIndicatorSize];
    v110 = v57;
    v111 = v56;
  }

  else
  {
    v110 = v37[1];
    v111 = *v37;
  }

  v119 = [v4 traitCollection];
  v58 = [v4 shouldDisplayBufferingIndicators];
  v124 = v25;
  if (v33 || !v58)
  {
    v102 = v37[1];
    v103 = *v37;
  }

  else
  {
    [v4 bufferingIndicatorSize];
    v102 = v60;
    v103 = v59;
  }

  v99 = [v4 canDisplayLoadingIndicators];
  [v4 secondScreenSize];
  v100 = v62;
  v101 = v61;
  [v5 interpageSpacing];
  v64 = v63;
  v107 = [v4 shouldPinContentToTop];
  if ([v4 shouldDisplayAssetExplorerReviewScreenProgressIndicators])
  {
    [v4 assetExplorerReviewScreenProgressIndicatorSize];
    v108 = v66;
    v109 = v65;
  }

  else
  {
    v108 = v37[1];
    v109 = *v37;
  }

  v106 = [v4 shouldDisplayReviewScreenBars];
  v105 = [v4 shouldLayoutReviewScreenControlBarVertically];
  v104 = [(PUOneUpViewController *)self _windowInterfaceOrientation];
  v67 = [v131 isAccessoryViewVisible];
  if (v6)
  {
    v68 = [(PUOneUpViewController *)self traitCollection];
    v69 = [v68 userInterfaceStyle];

    if (v69 >= 2)
    {
      if (v69 != 2)
      {
        v98 = 0;
LABEL_50:
        v76 = [MEMORY[0x1E69C3640] sharedInstance];
        [v76 insetContentCornerRadius];
        v97 = v77;

        v78 = [MEMORY[0x1E69C3640] sharedInstance];
        [v78 insetContentBorderWidth];
        v96 = v79;

        goto LABEL_51;
      }

      v70 = [MEMORY[0x1E69DC888] whiteColor];
      v71 = [MEMORY[0x1E69C3640] sharedInstance];
      [v71 insetContentBorderOpacityDarkMode];
    }

    else
    {
      v70 = [MEMORY[0x1E69DC888] blackColor];
      v71 = [MEMORY[0x1E69C3640] sharedInstance];
      [v71 insetContentBorderOpacityLightMode];
    }

    v98 = [v70 colorWithAlphaComponent:?];

    goto LABEL_50;
  }

  v98 = 0;
  v96 = 0.0;
  v97 = 0.0;
LABEL_51:
  v129 = v5;
  if (v35)
  {
    if (v67)
    {
      v80 = [(PUOneUpViewController *)self _spec];
      v81 = [v80 hideBadgesWhenShowingAccessoryView] ^ 1;
    }

    else
    {
      v81 = 1;
    }

    v82 = (v6 ^ 1) & v81;
  }

  else
  {
    v82 = 0;
  }

  v95 = [v4 shouldDisplayAssetExplorerReviewScreenBadges];
  v83 = (([v4 shouldDisplaySelectionIndicators] & 1) != 0 || objc_msgSend(v130, "isInSelectionMode")) && v33 == 0;
  v84 = [(PUOneUpViewController *)self browsingSession];
  v85 = [v84 importStatusManager];
  if (v85)
  {
    v86 = v33 == 0;
  }

  else
  {
    v86 = 0;
  }

  if ([v4 shouldDisplaySyndicationAttribution])
  {
    v87 = [MEMORY[0x1E69C3408] sharedInstance];
    v88 = [v87 showSyndicated1upPillUI] & (v33 == 0) & v82;
  }

  else
  {
    v88 = 0;
  }

  v89 = v33 == 0;
  v90 = v33 != 0;
  v91 = MEMORY[0x1E69C3640];
  v92 = v132;
  v93 = [v91 sharedInstance];
  [v93 insetContentCornerRadius];
  [v92 setInsetContentCornerRadius:?];

  v94 = [MEMORY[0x1E69C3640] sharedInstance];
  [v94 minimumMarginForInsetContent];
  [v92 setMinimumMarginForInsetContent:?];

  [v92 setUseBackgroundTile:1];
  [v92 setUseBadgeTiles:v82];
  [v92 setUseUserTransformTiles:v116];
  [v92 setContentGuideInsets:{v23, v124, v27, v29}];
  [v92 setContentSafeInsets:{v120, v121, v122, v123}];
  [v92 setContentDecorationAdditionalInsets:{v128, v127, v126, v125}];
  [v92 setPlayButtonSize:{v118, v117}];
  [v92 setProgressIndicatorSize:{v115, v114}];
  [v92 setProgressIndicatorContentInsets:{v9, v10, v11, v12}];
  [v92 setPeopleRowSize:{v113, v112}];
  [v92 setBufferingIndicatorSize:{v103, v102}];
  [v92 setRenderIndicatorSize:{v111, v110}];
  [v92 setCanDisplayLoadingIndicators:v99 & v89];
  [v92 setTraitCollection:v119];
  [v92 setDisplaySizeForInsetMatching:{v101, v100}];
  [v92 setInterpageSpacing:{v64, 0.0}];
  [v92 setInterSectionSpacing:{v64, 0.0}];
  [v92 setShouldPinContentToTop:v107];
  [v92 setUseAssetExplorerReviewScreenBadgeTiles:v95 & v89];
  [v92 setUseSelectionIndicatorTiles:v83];
  [v92 setUseImportStatusIndicatorTiles:v86];
  [v92 setAssetExplorerReviewScreenProgressIndicatorSize:{v109, v108}];
  [v92 setUseReviewScreenBars:v106];
  [v92 setUseVerticalReviewScreenControlBarLayout:v105];
  [v92 setWindowInterfaceOrientation:v104];
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
  v4 = [(PUOneUpViewController *)self browsingSession];
  v5 = [v4 viewModel];
  v6 = [v5 assetsDataSource];
  v7 = [(PUSectionedTilingLayout *)v3 initWithDataSource:v6];

  [(PUOneUpTilingLayout *)v7 setDelegate:self];
  v8 = [(PUOneUpViewController *)self _parallaxComputer];
  [(PUOneUpTilingLayout *)v7 setParallaxComputer:v8];

  [(PUOneUpViewController *)self _updateLayout:v7];
  return v7;
}

- (void)_setIrisPlaying:(BOOL)a3
{
  if (self->__isIrisPlaying != a3)
  {
    v5 = [(PUOneUpViewController *)self _currentAssetViewModel];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __41__PUOneUpViewController__setIrisPlaying___block_invoke;
    v30[3] = &unk_1E7B7FF98;
    v6 = v5;
    v31 = v6;
    v32 = a3;
    [v6 performChanges:v30];
    self->__isIrisPlaying = a3;
    [(PUOneUpViewController *)self _configureVitalityController];
    if (self->__isIrisPlaying)
    {
      v7 = [(PUOneUpViewController *)self browsingSession];
      v8 = [v7 viewModel];

      v9 = +[PUOneUpSettings sharedInstance];
      v10 = PUShouldAutoHideChrome(v8, [v9 chromeAutoHideBehaviorOnLivePhoto]);

      if (v10)
      {
        v11 = [v8 currentAssetReference];
        v24 = MEMORY[0x1E69E9820];
        v25 = 3221225472;
        v26 = __41__PUOneUpViewController__setIrisPlaying___block_invoke_2;
        v27 = &unk_1E7B80C38;
        v28 = v8;
        v29 = v11;
        v12 = v11;
        [v28 performChanges:&v24];
      }

      v13 = [(PUOneUpViewController *)self _barsController:v24];
      v14 = [v13 tapGestureRecognizer];
      [v14 pu_cancel];

      v15 = [(PUOneUpViewController *)self _doubleTapZoomController];
      v16 = [v15 doubleTapGestureRecognizer];
      [v16 pu_cancel];

      v17 = [(PUOneUpViewController *)self _accessoryVisibilityInteractionController];
      v18 = [v17 panGestureRecognizer];
      [v18 pu_cancel];

      v19 = [(PUOneUpViewController *)self gestureController];
      [v19 cancelGestures];

      v20 = +[PUOneUpSettings sharedInstance];
      LODWORD(v18) = [v20 lockScrollDuringLivePhotoPlayback];

      if (v18)
      {
        v21 = [(PUOneUpViewController *)self browsingSession];
        v22 = [v21 viewModel];
        [v22 currentAssetTransitionProgress];
        if (PXFloatApproximatelyEqualToFloat())
        {
          v23 = [(PUOneUpViewController *)self _tilingView];
          [v23 px_cancelScrollGesture];
        }
      }
    }
  }
}

- (void)_updateMergedVideoProviderEnabled
{
  v3 = [(PUOneUpViewController *)self appearState]== 2;
  v5 = [(PUOneUpViewController *)self browsingSession];
  v4 = [v5 mergedVideoProvider];
  [v4 setIsEnabled:v3];
}

- (void)setAppearState:(int)a3
{
  if (self->_appearState != a3)
  {
    self->_appearState = a3;
    [(PUOneUpViewController *)self _updateMergedVideoProviderEnabled];
  }
}

- (void)setUnlockDeviceStatus:(id)a3
{
  if (self->_unlockDeviceStatus != a3)
  {
    v4 = a3;
    v5 = [v4 copy];
    unlockDeviceStatus = self->_unlockDeviceStatus;
    self->_unlockDeviceStatus = v5;

    v7 = [(PUOneUpViewController *)self _accessoryViewControllersManager];
    [v7 setUnlockDeviceStatus:v4];

    v8 = [(PUOneUpViewController *)self chromeViewController];
    [v8 invalidateIsDeviceUnlocked];
  }
}

- (void)setUnlockDeviceHandlerWithActionType:(id)a3
{
  if (self->_unlockDeviceHandlerWithActionType != a3)
  {
    v4 = a3;
    v5 = [v4 copy];
    unlockDeviceHandlerWithActionType = self->_unlockDeviceHandlerWithActionType;
    self->_unlockDeviceHandlerWithActionType = v5;

    v7 = [(PUOneUpViewController *)self _accessoryViewControllersManager];
    [v7 setUnlockDeviceHandlerWithActionType:v4];
  }
}

- (void)_isPresentedForPreviewDidChange
{
  v3 = [(PUOneUpViewController *)self browsingSession];
  v4 = [v3 viewModel];
  v5 = [v4 isPresentedForPreview];

  v6 = [(PUOneUpViewController *)self view];
  [v6 setUserInteractionEnabled:v5 ^ 1u];

  if ((v5 & 1) == 0)
  {
    v7 = [(PUOneUpViewController *)self _currentAssetViewModel];
    v8 = [v7 videoPlayer];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __56__PUOneUpViewController__isPresentedForPreviewDidChange__block_invoke;
    v16[3] = &unk_1E7B80DD0;
    v17 = v8;
    v9 = v8;
    [v9 performChanges:v16];
  }

  [(PUOneUpViewController *)self _invalidateSpec];
  [(PUOneUpViewController *)self _invalidatePreferredContentSize];
  [(PUOneUpViewController *)self _invalidateBarsControllers];
  [(PUOneUpViewController *)self _invalidatePreloadInsets];
  [(PUOneUpViewController *)self _invalidateLayout];
  v10 = [(PUOneUpViewController *)self _barsController];
  [v10 invalidateViewHostingGestureRecognizers];

  [(PUOneUpViewController *)self _updateIfNeeded];
  [(PUOneUpViewController *)self px_setNeedsImageModulationIntensityUpdate];
  [(PUOneUpViewController *)self _updatePrefersHomeIndicatorHidden];
  v11 = [(PUOneUpViewController *)self _currentAssetViewModel];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__PUOneUpViewController__isPresentedForPreviewDidChange__block_invoke_2;
  v13[3] = &unk_1E7B7FF98;
  v14 = v11;
  v15 = v5;
  v12 = v11;
  [v12 performChanges:v13];
}

- (void)_setWindowInterfaceOrientation:(int64_t)a3
{
  if (self->__windowInterfaceOrientation != a3)
  {
    self->__windowInterfaceOrientation = a3;
    v5 = [(PUOneUpViewController *)self _spec];
    v6 = [v5 shouldDisplayReviewScreenBars];

    if (v6)
    {
      [(PUOneUpViewController *)self _invalidateLayout];
    }

    v7 = [(PUOneUpViewController *)self _barsController];
    [v7 invalidateContentGuideInsets];
  }
}

- (void)_updateWindowInterfaceOrientation
{
  v3 = [(PUOneUpViewController *)self view];
  v7 = [v3 window];

  if ([v7 _toWindowOrientation] && (v4 = objc_msgSend(v7, "_toWindowOrientation"), v4 != objc_msgSend(v7, "_windowInterfaceOrientation")))
  {
    v5 = [v7 _toWindowOrientation];
  }

  else
  {
    v5 = [v7 _windowInterfaceOrientation];
  }

  v6 = v5;
  if (v5 || (v6 = [v7 _windowInterfaceOrientation]) != 0)
  {
    [(PUOneUpViewController *)self _setWindowInterfaceOrientation:v6];
  }
}

- (void)_setLayoutReferenceSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (a3.width != self->__layoutReferenceSize.width || a3.height != self->__layoutReferenceSize.height)
  {
    self->__layoutReferenceSize = a3;
    [(PUOneUpViewController *)self _invalidateSpec];
    v7 = [(PUOneUpViewController *)self _barsController];
    [v7 invalidateViewControllerView];

    [(PUOneUpViewController *)self _updateIfNeeded];
    if ([(PUOneUpViewController *)self _isPresentedForSecondScreen])
    {
      v8 = [(PUOneUpViewController *)self browsingSession];
      v9 = [v8 viewModel];

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __49__PUOneUpViewController__setLayoutReferenceSize___block_invoke;
      v11[3] = &unk_1E7B7C518;
      v12 = v9;
      v13 = width;
      v14 = height;
      v10 = v9;
      [v10 performChanges:v11];
    }
  }
}

- (void)_updateLayoutReferenceSize
{
  [(PUOneUpViewController *)self _pendingViewTransitionSize];
  if (v4 == *MEMORY[0x1E695F060] && v3 == *(MEMORY[0x1E695F060] + 8))
  {
    v10 = [(PUOneUpViewController *)self view];
    [v10 bounds];
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

- (void)_configurePocketStyle:(id)a3
{
  tilingView = self->__tilingView;
  v5 = a3;
  v6 = [(PUTilingView *)tilingView topEdgeEffect];
  [v6 setStyle:v5];

  v7 = [(PUTilingView *)self->__tilingView bottomEdgeEffect];
  [v7 setStyle:v5];
}

- (BOOL)_enablePockets
{
  v2 = [MEMORY[0x1E69C3640] sharedInstance];
  if ([v2 enableClearMagicPocket])
  {
    v3 = !+[PUOneUpChromeUserDefaultsWrapper shouldDisableMagicPocket];
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)_setTilingView:(id)a3
{
  v5 = a3;
  tilingView = self->__tilingView;
  if (tilingView != v5)
  {
    [(PUTilingView *)tilingView setTileSource:0];
    [(PUTilingView *)self->__tilingView setTileTransitionDelegate:0];
    [(PUTilingView *)self->__tilingView setScrollDelegate:0];
    [(PUTilingView *)self->__tilingView setDelegate:0];
    objc_storeStrong(&self->__tilingView, a3);
    if ((PFIsSpotlight() & 1) == 0)
    {
      v7 = *(MEMORY[0x1E695EFD0] + 16);
      v19[0] = *MEMORY[0x1E695EFD0];
      v19[1] = v7;
      v19[2] = *(MEMORY[0x1E695EFD0] + 32);
      [(PUTilingView *)v5 setTransform:v19];
      v8 = [(PUOneUpViewController *)self contentContainerView];
      [v8 bounds];
      [(PUTilingView *)v5 setFrame:?];
    }

    [(PUTilingView *)self->__tilingView setTileSource:self];
    [(PUTilingView *)self->__tilingView setTileTransitionDelegate:self];
    [(PUTilingView *)self->__tilingView setScrollDelegate:self];
    [(PUTilingView *)self->__tilingView setDelegate:self];
    [(PUTilingView *)self->__tilingView setAccessibilityIdentifier:@"OneUpMainPagingView"];
    [(PUTilingView *)self->__tilingView setShowsHorizontalScrollIndicator:0];
    [(PUTilingView *)self->__tilingView setShowsVerticalScrollIndicator:0];
    [(PUTilingView *)self->__tilingView _setAutoScrollEnabled:0];
    v9 = [(PUOneUpViewController *)self _enablePockets];
    [(PUTilingView *)self->__tilingView px_setPocketsEnabled:v9];
    if (!v9)
    {
      goto LABEL_14;
    }

    v10 = +[PUOneUpChromeUserDefaultsWrapper preferredPocketStyle];
    if (v10 == 2)
    {
      v11 = [MEMORY[0x1E69DCED8] hardStyle];
    }

    else if (v10 == 1)
    {
      v11 = [MEMORY[0x1E69DCED8] softStyle];
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

      v11 = [MEMORY[0x1E69DCED8] _clearStyle];
    }

    v12 = v11;
    [(PUOneUpViewController *)self _configurePocketStyle:v11];

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
    v13 = [(PUOneUpViewController *)self _interactiveSwipeDismissalController];
    [v13 invalidateDelegateData];

    v14 = [(PUOneUpViewController *)self _interactivePinchDismissalController];
    [v14 invalidateDelegateData];

    v15 = [(PUOneUpViewController *)self _barsController];
    [v15 invalidateViewHostingGestureRecognizers];

    v16 = [(PUOneUpViewController *)self _gestureRecognizerCoordinator];
    [v16 invalidateViewHostingGestureRecognizers];

    v17 = [(PUOneUpViewController *)self _doubleTapZoomController];
    [v17 invalidateViewHostingGestureRecognizers];

    v18 = [(PUOneUpViewController *)self _accessoryVisibilityInteractionController];
    [v18 invalidateViewHostingGestureRecognizers];

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
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:1157 description:@"updates still needed after an update cycle"];
    }
  }
}

- (void)_setPrefersHomeIndicatorHidden:(BOOL)a3
{
  if (self->__prefersHomeIndicatorHidden != a3)
  {
    self->__prefersHomeIndicatorHidden = a3;
    [(PUOneUpViewController *)self setNeedsUpdateOfHomeIndicatorAutoHidden];
  }
}

- (void)_updateScrubbingAdjustmentPolicyForVideoTimelineControlInteractionChange
{
  v3 = [(PUOneUpViewController *)self chromeViewController];
  v4 = [v3 isVideoTimelineControlInteracting];

  v5 = [(PUOneUpViewController *)self scaledVideoOffsetAdjustmentPolicy];
  [v5 setIsVideoTimelineControlInteracting:v4];
}

- (void)_updateScrubbingAdjustmentPolicyForChromeChange
{
  v3 = [(PUOneUpViewController *)self browsingSession];
  v5 = [v3 viewModel];

  v4 = [(PUOneUpViewController *)self scaledVideoOffsetAdjustmentPolicy];
  [v4 setChromeVisibilityChangeReason:{objc_msgSend(v5, "lastChromeVisibilityChangeReason")}];
}

- (void)_updatePrefersHomeIndicatorHidden
{
  v3 = [(PUOneUpViewController *)self browsingSession];
  v4 = [v3 viewModel];

  -[PUOneUpViewController _setPrefersHomeIndicatorHidden:](self, "_setPrefersHomeIndicatorHidden:", (([v4 isPresentedForPreview] | objc_msgSend(v4, "isChromeVisible")) & 1) == 0);
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v8.receiver = self;
  v8.super_class = PUOneUpViewController;
  v6 = a3;
  [(PUOneUpViewController *)&v8 viewDidMoveToWindow:v6 shouldAppearOrDisappear:v4];
  [(PUOneUpViewController *)self _updateWindowInterfaceOrientation:v8.receiver];
  v7 = [(PUOneUpViewController *)self chromeViewController];
  [v7 viewDidMoveToWindow:v6 shouldAppearOrDisappear:v4];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v109.receiver = self;
  v109.super_class = PUOneUpViewController;
  [(PUOneUpViewController *)&v109 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(PUOneUpViewController *)self scaledVideoOffsetAdjustmentPolicy];
  [v8 resetPolicy];

  [(PUOneUpViewController *)self _setPendingViewTransitionSize:width, height];
  [(PUOneUpViewController *)self _updateLayoutReferenceSize];
  [(PUOneUpViewController *)self _updateWindowInterfaceOrientation];
  v9 = MEMORY[0x1E69C3748];
  v10 = [MEMORY[0x1E69C3748] infoPanelTipID];
  [v9 setTip:v10 isPresentable:0];

  v11 = MEMORY[0x1E69C3748];
  v12 = [MEMORY[0x1E69C3748] livePhotosTipID];
  [v11 setTip:v12 isPresentable:0];

  v13 = MEMORY[0x1E69C3748];
  v14 = [MEMORY[0x1E69C3748] actionsMenuTipID];
  [v13 setTip:v14 isPresentable:0];

  v15 = MEMORY[0x1E69C3748];
  v16 = [MEMORY[0x1E69C3748] syndicatedPhotosTipID];
  [v15 setTip:v16 isPresentable:0];

  v17 = MEMORY[0x1E69C3748];
  v18 = [MEMORY[0x1E69C3748] quickCropTipID];
  [v17 setTip:v18 isPresentable:0];

  v19 = MEMORY[0x1E69C3748];
  v20 = [MEMORY[0x1E69C3748] cleanUpTipID];
  [v19 setTip:v20 isPresentable:0];

  v21 = [(PUOneUpViewController *)self browsingSession];
  v22 = [v21 viewModel];

  v107[0] = MEMORY[0x1E69E9820];
  v107[1] = 3221225472;
  v107[2] = __76__PUOneUpViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v107[3] = &unk_1E7B80DD0;
  v23 = v22;
  v108 = v23;
  [v23 performChanges:v107];
  v24 = [(PUOneUpViewController *)self _spec];
  v25 = [v24 shouldCounterrotateReviewScreenBars];

  if (v25)
  {
    v77 = v7;
    v26 = [(PUOneUpViewController *)self _reviewScreenTopBarTileViewController];
    v74 = [(PUOneUpViewController *)self _reviewScreenControlBarTileViewController];
    v27 = [v74 view];
    v75 = v26;
    v28 = [v26 view];
    v29 = [v27 snapshotViewAfterScreenUpdates:0];
    v30 = [v28 snapshotViewAfterScreenUpdates:0];
    v31 = [(PUOneUpViewController *)self view];
    [v31 bounds];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;

    UIRectGetCenter();
    v72 = v41;
    v73 = v40;
    v42 = [(PUOneUpViewController *)self view];
    v43 = [v42 window];
    v44 = [v43 _toWindowOrientation];

    v45 = [(PUOneUpViewController *)self view];
    v46 = [v45 window];
    v47 = [v46 _fromWindowOrientation];

    v48 = 0.0;
    v49 = 0.0;
    if (v44 != 1)
    {
      if (v44 == 3)
      {
        v49 = 1.57079633;
      }

      else if (v44 == 4)
      {
        v49 = -1.57079633;
      }

      else
      {
        v49 = 3.14159265;
        if (v44 != 2)
        {
          v49 = 0.0;
        }
      }
    }

    v76 = height;
    if (v47 != 1)
    {
      switch(v47)
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
    v53 = [(PUOneUpViewController *)self view];
    [v53 addSubview:v52];

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
    v56 = v27;
    v106 = v48;
    v97 = v56;
    v98 = v30;
    v57 = v28;
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
    v90 = self;
    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = __76__PUOneUpViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_4;
    v82[3] = &unk_1E7B7ABB8;
    v83 = v23;
    v84 = v89;
    v85 = v56;
    v86 = v57;
    v87 = self;
    v60 = v57;
    v61 = v56;
    v62 = v89;
    [v77 animateAlongsideTransition:v88 completion:v82];

    v7 = v77;
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
    v80 = self;
    [v7 animateAlongsideTransition:v81 completion:v78];
    v50 = v79;
  }

  v63 = [(PUOneUpViewController *)self view];
  v64 = [v63 window];
  if (([v64 _toWindowOrientation] - 3) <= 1 && -[PUOneUpViewController _isAccessoryVisible](self, "_isAccessoryVisible"))
  {
    v65 = [(PUOneUpViewController *)self _accessoryContentKindForCurrentAsset];

    if (v65 == 1)
    {
      [(PUOneUpEventTracker *)self->_eventTracker logInfoPanelRotatedToHorizontalView];
    }
  }

  else
  {
  }

  v66 = [(PUOneUpViewController *)self view];
  v67 = [v66 window];

  if ([v67 _toWindowOrientation])
  {
    v68 = [v67 _toWindowOrientation];
    v69 = v68 != [v67 _windowInterfaceOrientation];
  }

  else
  {
    v69 = 0;
  }

  v70 = [(PUOneUpViewController *)self chromeViewController];
  [v70 setIsRotating:v69];

  [(PUOneUpViewController *)self _updateIfNeeded];
  v71 = [(PUOneUpViewController *)self chromeViewController];
  [v71 viewWillTransitionToSize:v7 withCoordinator:{width, height}];
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
  v2 = [(PUOneUpViewController *)self _spec];
  v3 = [v2 shouldUseSpotlightStyling];

  return v3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PUOneUpViewController;
  [(PUOneUpViewController *)&v21 traitCollectionDidChange:v4];
  v5 = [(PUOneUpViewController *)self traitCollection];
  v6 = [(PUOneUpViewController *)self browsingSession];
  v7 = [v6 viewModel];

  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __50__PUOneUpViewController_traitCollectionDidChange___block_invoke;
  v18 = &unk_1E7B80C38;
  v19 = v7;
  v8 = v5;
  v20 = v8;
  v9 = v7;
  [v9 performChanges:&v15];
  v10 = [(PUOneUpViewController *)self traitCollection:v15];
  v11 = [v10 userInterfaceIdiom];

  v12 = [v8 horizontalSizeClass];
  v13 = [v4 horizontalSizeClass];
  if (v11 == 1 && v12 != v13)
  {
    [(PUOneUpViewController *)self _invalidateBarsControllers];
    [(PUOneUpViewController *)self _invalidateAccessoryView];
    [(PUOneUpViewController *)self _setAccessoryVisible:0];
  }

  v14 = [v4 userInterfaceStyle];
  if (v14 != [v8 userInterfaceStyle])
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
  v3 = [(PUOneUpViewController *)self _barsController];
  [v3 updateIfNeeded];

  [(PUOneUpViewController *)self _setPendingViewTransitionSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  [(PUOneUpViewController *)self _updateLayoutReferenceSize];
  v4 = [(PUOneUpViewController *)self view];
  [v4 bounds];
  v6 = v5;

  [(PUOneUpViewController *)self _preloadInsetsBasedOffViewWidth];
  if (v6 != v7)
  {
    [(PUOneUpViewController *)self _setPreloadInsetsBasedOffViewWidth:v6];
    [(PUOneUpViewController *)self _invalidatePreloadInsets];
    [(PUOneUpViewController *)self _updatePreloadInsetsIfNeeded];
  }

  v8 = [(PUOneUpViewController *)self chromeViewController];
  [v8 viewWillLayoutSubviews];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v20.receiver = self;
  v20.super_class = PUOneUpViewController;
  [(PUOneUpViewController *)&v20 viewDidDisappear:a3];
  v4 = PLOneUpGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v19 = 0;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEBUG, "1Up signpost: 1Up viewController viewDidDisappear", v19, 2u);
  }

  [(PUOneUpViewController *)self _xct_endSignpostingForImageTileImageLoadingAndProcessing];
  v5 = [(PUOneUpViewController *)self presentedViewController];
  if (v5)
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

  v7 = [(PUOneUpViewController *)self browsingSession];
  v8 = [v7 viewModel];
  v9 = [v8 isPresentedForPreview];

  if ((v9 & 1) == 0)
  {
    v10 = +[PHAirPlayScreenController sharedInstance];
    [v10 unregisterContentProvider:self];
  }

LABEL_10:
  v11 = [MEMORY[0x1E69C4558] defaultManager];
  [v11 unregisterObserver:self];

  v12 = [(PUOneUpViewController *)self eventTracker];
  [v12 logViewControllerDidDisappear:self];

  v13 = PXContentPrivacyNavigationStateFromViewController();
  if (v13 == 2)
  {
    v14 = [(PUOneUpViewController *)self navigationController];
    v15 = [v14 viewControllers];
    v16 = [v15 count] != 1;

    v13 = 2 * v16;
  }

  v17 = [(PUOneUpViewController *)self browsingSession];
  v18 = [v17 privacyController];
  [v18 viewDidDisappearForAuthenticationContext:self withNavigationState:v13];

  [(PUOneUpViewController *)self setAppearState:0];
  [MEMORY[0x1E69C3740] disable];
  [(PUOneUpViewController *)self _updateIfNeeded];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = PUOneUpViewController;
  [(PUOneUpViewController *)&v12 viewWillDisappear:a3];
  v4 = [(PUOneUpViewController *)self browsingOneUpVisibilityHelper];
  [v4 setIsOneUpVisible:0];

  v5 = [(PUOneUpViewController *)self visualImageAnalyzingController];
  [v5 setIsEnabled:0];

  v6 = [(PUOneUpViewController *)self shazamEventsController];
  [v6 setIsEnabled:0];

  v7 = [(PUOneUpViewController *)self phototypeSupportController];
  [v7 setIsEnabled:0];

  [(PUOneUpViewController *)self _cancelTimedChromeAutoHide];
  [(PUOneUpViewController *)self setAppearState:3];
  [(PUOneUpViewController *)self _updateIfNeeded];
  if ([(PUOneUpViewController *)self _isTipPopoverVisible])
  {
    [(PUOneUpViewController *)self _dismissTipPopoverAnimated:0];
  }

  [MEMORY[0x1E69C3748] setTipsPresentationDelegate:0];
  v8 = [(PUOneUpViewController *)self view];
  v9 = [v8 window];
  v10 = [v9 windowScene];
  [v10 setUserActivity:0];

  v11 = [(PUOneUpViewController *)self viewIfLoaded];
  PXAppIntentsClearViewAnnotationDelegate();
}

- (BOOL)_isAssetEligibleForTip:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
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

- (void)viewDidAppear:(BOOL)a3
{
  v48.receiver = self;
  v48.super_class = PUOneUpViewController;
  [(PUOneUpViewController *)&v48 viewDidAppear:a3];
  [(PUOneUpViewController *)self _preheatAdjacentAssetsForPhotosDetailsContext];
  [MEMORY[0x1E69C3748] setTipsPresentationDelegate:self];
  v4 = PLOneUpGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEBUG, "1Up signpost: 1Up viewController viewDidAppear", buf, 2u);
  }

  [(PUOneUpViewController *)self _xct_beginSignpostingForImageTileImageLoadingAndProcessing];
  v5 = [(PUOneUpViewController *)self browsingOneUpVisibilityHelper];
  [v5 setIsOneUpVisible:1];

  v6 = [(PUOneUpViewController *)self visualImageAnalyzingController];
  [v6 setIsEnabled:1];

  v7 = [(PUOneUpViewController *)self shazamEventsController];
  [v7 setIsEnabled:1];

  v8 = [(PUOneUpViewController *)self phototypeSupportController];
  [v8 setIsEnabled:1];

  v9 = [(PUOneUpViewController *)self browsingSession];
  v10 = [v9 viewModel];
  v11 = [v10 isPresentedForPreview];

  v12 = [(PUOneUpViewController *)self _isPresentedForSecondScreen];
  if (!v12 && (v11 & 1) == 0)
  {
    v13 = +[PHAirPlayScreenController sharedInstance];
    [v13 registerContentProvider:self];
  }

  v14 = [MEMORY[0x1E69C4558] defaultManager];
  [v14 registerObserver:self];

  [(PUOneUpViewController *)self _scheduleTimedChromeAutoHide];
  v15 = [(PUOneUpViewController *)self browsingSession];
  v16 = [v15 viewModel];

  v17 = [v16 assetViewModelForCurrentAssetReference];
  v18 = [v17 asset];
  v19 = [v18 playbackStyle] == 5;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __39__PUOneUpViewController_viewDidAppear___block_invoke;
  v41[3] = &unk_1E7B79E98;
  v20 = v16;
  v42 = v20;
  v43 = self;
  v45 = v12;
  v46 = v19;
  v21 = v17;
  v44 = v21;
  [v20 performChanges:v41];
  v22 = [(PUOneUpViewController *)self eventTracker];
  [v22 logViewControllerDidAppear:self];

  [(PUOneUpViewController *)self setAppearState:2];
  [(PUOneUpViewController *)self _invalidateTipPopovers];
  [(PUOneUpViewController *)self _invalidateUserActivity];
  [(PUOneUpViewController *)self _invalidateCachedBoopableItemProvider];
  [(PUOneUpViewController *)self _invalidateScrubbingAdjustmentPolicy];
  [(PUOneUpViewController *)self _updateIfNeeded];
  v23 = [(PUOneUpViewController *)self editActivityCompletion];
  v24 = v23;
  if (self->_actionTypeToPerformInViewDidAppear)
  {
    v25 = [(PUOneUpViewController *)self actionsController];
    [v25 performSimpleActionWithActionType:self->_actionTypeToPerformInViewDidAppear];

    self->_actionTypeToPerformInViewDidAppear = 0;
    if (v24)
    {
      v26 = [(PUOneUpViewController *)self navigationController];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __39__PUOneUpViewController_viewDidAppear___block_invoke_3;
      v38[3] = &unk_1E7B80B48;
      v39 = v26;
      v40 = v24;
      v27 = v26;
      [v27 ppt_performBlockAfterNextNavigationAnimation:v38];

LABEL_10:
      [(PUOneUpViewController *)self setEditActivityCompletion:0];
    }
  }

  else if (v23)
  {
    goto LABEL_10;
  }

  v28 = [(PUOneUpViewController *)self _isAssetEligibleForTip:v18];
  v29 = [(PUOneUpViewController *)self _barsController];
  v30 = [v29 barButtonItemToggleDetails];

  if (v30 && v28)
  {
    [MEMORY[0x1E69C3748] signalOneUpPhotoOpened];
  }

  +[PUPhotoEditViewController preheatEditDependenciesIfNeeded];
  v31 = [(PUOneUpViewController *)self browsingSession];
  v32 = [v31 privacyController];
  [v32 viewDidAppearForAuthenticationContext:self];

  v33 = [(PUOneUpViewController *)self view];
  PXAppIntentsSetViewAnnotationDelegate();

  if ([(PUOneUpViewController *)self _shouldDisableTransitionsUntilAppeared])
  {
    v34 = [(PUOneUpViewController *)self browsingSession];
    v35 = [v34 viewModel];
    v36 = [v35 isPresentedForPreview];

    if ((v36 & 1) == 0)
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

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v23.receiver = self;
  v23.super_class = PUOneUpViewController;
  [(PUOneUpViewController *)&v23 viewWillAppear:?];
  [(PUOneUpViewController *)self _updateLayoutReferenceSize];
  [(PUOneUpViewController *)self _updateWindowInterfaceOrientation];
  [(PUOneUpViewController *)self _invalidateSpec];
  v5 = [(PUOneUpViewController *)self _barsController];
  [v5 invalidateViewControllerView];
  if (([(PUOneUpViewController *)self isBeingPresented]& 1) != 0 || [(PUOneUpViewController *)self isMovingToParentViewController])
  {
    [(PUOneUpViewController *)self _invalidateBarsControllers];
  }

  [(PUOneUpViewController *)self _updateIfNeeded];
  [v5 updateIfNeeded];
  v6 = [(PUOneUpViewController *)self _spec];
  v7 = [v6 shouldDisableNavigationBarsVisibility];

  [(UIViewController *)self pu_setupInitialBarsVisibilityOnViewWillAppearAnimated:v3 & ~v7];
  [v5 invalidateViewControllerView];
  [v5 updateIfNeeded];
  v8 = [(PUOneUpViewController *)self _interactiveSwipeDismissalController];
  [v8 invalidateDelegateData];

  v9 = [(PUOneUpViewController *)self _interactivePinchDismissalController];
  [v9 invalidateDelegateData];

  v10 = [(PUOneUpViewController *)self browsingSession];
  v11 = [v10 viewModel];
  v12 = [v11 currentAssetReference];
  v13 = [v11 assetViewModelForAssetReference:v12];
  v14 = [v13 irisPlayer];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __40__PUOneUpViewController_viewWillAppear___block_invoke;
  v19[3] = &unk_1E7B809F0;
  v20 = v11;
  v21 = self;
  v22 = v14;
  v15 = v14;
  v16 = v11;
  [v16 performChanges:v19];
  if ([(PUOneUpViewController *)self _initialActivity]== 1)
  {
    self->_actionTypeToPerformInViewDidAppear = 15;
  }

  v17 = [(PUOneUpViewController *)self _interactivePinchDismissalController];
  [v17 viewControllerWillAppear];

  v18 = [(PUOneUpViewController *)self _interactiveSwipeDismissalController];
  [v18 viewControllerWillAppear];

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
  v3 = [(PUOneUpViewController *)self view];
  v4 = objc_alloc(MEMORY[0x1E69DD250]);
  [v3 bounds];
  v5 = [v4 initWithFrame:?];
  contentContainerView = self->_contentContainerView;
  self->_contentContainerView = v5;

  [(UIView *)self->_contentContainerView setAutoresizingMask:18];
  [v3 addSubview:self->_contentContainerView];
  if (![(PUOneUpViewController *)self _isPresentedForSecondScreen])
  {
    [(PUOneUpViewController *)self px_enableImageModulation];
  }

  if (([(PUOneUpViewController *)self _options]& 1) == 0)
  {
    v7 = [(PUOneUpViewController *)self _newOneUpLayout];
    v8 = [PUTilingView alloc];
    [v3 bounds];
    v9 = [(PUTilingView *)v8 initWithFrame:v7 layout:?];
    [(PUTilingView *)v9 setAutoresizingMask:18];
    v10 = [(PUOneUpViewController *)self contentContainerView];
    [v10 addSubview:v9];

    v11 = [(PUOneUpViewController *)self browsingSession];
    [v11 configureTilingView:v9];
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
    v15 = [(PUOneUpViewController *)self actionsController];
    v16 = [(PUOneUpGestureController *)v14 initWithView:v3 actionsController:v15];
    gestureController = self->_gestureController;
    self->_gestureController = v16;

    [(PUOneUpGestureController *)self->_gestureController setDelegate:self];
    v18 = [PUOneUpFeedbackController alloc];
    v19 = [(PUOneUpViewController *)self browsingSession];
    v20 = [v19 viewModel];
    v21 = [(PUOneUpFeedbackController *)v18 initWithViewModel:v20];
    feedbackController = self->_feedbackController;
    self->_feedbackController = v21;
  }

  v23 = [(PUOneUpViewController *)self chromeViewController];
  v24 = v23 == 0;

  if (v24)
  {
    v28 = [(PUOneUpViewController *)self navigationController];
    v25 = [v28 navigationBar];

    v29 = [v25 standardAppearance];
    [v25 setScrollEdgeAppearance:v29];

    v30 = [(PUOneUpViewController *)self navigationController];
    v27 = [v30 toolbar];

    v31 = [v27 standardAppearance];
    [v27 setScrollEdgeAppearance:v31];

    if (([(PUOneUpViewController *)self _options]& 0x100000) != 0)
    {
      v32 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
      [v32 configureWithOpaqueBackground];
      v33 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      [v32 setBackgroundColor:v33];

      [v25 setScrollEdgeAppearance:v32];
      v34 = objc_alloc_init(MEMORY[0x1E69DD188]);
      [v34 configureWithOpaqueBackground];
      v35 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      [v34 setBackgroundColor:v35];

      [v27 setScrollEdgeAppearance:v34];
    }
  }

  else
  {
    v25 = [(PUOneUpViewController *)self view];
    v26 = [(PUOneUpViewController *)self chromeViewController];
    v27 = [v26 view];

    [v27 setAutoresizingMask:18];
    [v25 addSubview:v27];
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
  v3 = [(PUOneUpViewController *)self browsingSession];
  v4 = [v3 viewModel];
  v5 = [v4 isPresentedForPreview];

  if (![(PUOneUpViewController *)self _isPresentedForSecondScreen]&& (v5 & 1) == 0)
  {
    v6 = +[PHAirPlayScreenController sharedInstance];
    [v6 unregisterContentProvider:self];
  }

  v7.receiver = self;
  v7.super_class = PUOneUpViewController;
  [(PUOneUpViewController *)&v7 dealloc];
}

- (PUOneUpViewController)initWithBrowsingSession:(id)a3 options:(unint64_t)a4 initialActivity:(unint64_t)a5 presentationOrigin:(int64_t)a6
{
  v12 = a3;
  if (!v12)
  {
    v84 = [MEMORY[0x1E696AAA8] currentHandler];
    [v84 handleFailureInMethod:a2 object:self file:@"PUOneUpViewController.m" lineNumber:466 description:{@"Invalid parameter not satisfying: %@", @"browsingSession != nil"}];
  }

  v88.receiver = self;
  v88.super_class = PUOneUpViewController;
  v13 = [(PUOneUpViewController *)&v88 initWithNibName:0 bundle:0];
  v14 = v13;
  if (v13)
  {
    v13->__options = a4;
    v13->__initialActivity = a5;
    v15 = px_dispatch_queue_create_serial();
    preheatAssetsQueue = v14->_preheatAssetsQueue;
    v14->_preheatAssetsQueue = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    assetUUIDsWithDisplayedContentUpdates = v14->_assetUUIDsWithDisplayedContentUpdates;
    v14->_assetUUIDsWithDisplayedContentUpdates = v17;

    PXRegisterPreferencesObserver();
    v19 = [(PUOneUpViewController *)v14 navigationItem];
    [v19 setLargeTitleDisplayMode:2];

    v20 = [[PUOneUpViewControllerSpec alloc] initWithOptions:a4];
    spec = v14->__spec;
    v14->__spec = v20;

    [(PUViewControllerSpec *)v14->__spec registerChangeObserver:v14];
    v14->__needsUpdateSpec = 1;
    v22 = [objc_opt_class() description];
    v23 = [MEMORY[0x1E696AFB0] UUID];
    v24 = [v23 UUIDString];
    v25 = [v22 stringByAppendingString:v24];
    scrubbingIdentifier = v14->_scrubbingIdentifier;
    v14->_scrubbingIdentifier = v25;

    objc_storeStrong(&v14->_browsingSession, a3);
    v14->_presentationOrigin = a6;
    v27 = [(PUBrowsingSession *)v14->_browsingSession viewModel];
    [v27 registerChangeObserver:v14];
    v28 = [(PUOneUpViewController *)v14 traitCollection];
    [v27 setHorizontalSizeClass:{objc_msgSend(v28, "horizontalSizeClass")}];

    v29 = objc_alloc_init(PULoadingIndicatorController);
    loadingIndicatorController = v14->_loadingIndicatorController;
    v14->_loadingIndicatorController = v29;

    v14->__needsUpdateLayout = 1;
    v14->__isPresentedForSecondScreen = (a4 & 2) != 0;
    v14->__prefersCompactLayoutForSplitScreen = (a4 & 0x400) != 0;
    if ((a4 & 2) == 0)
    {
      v31 = PUOneUpEventTrackerCreate(v27, a6);
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

      else if ((a4 & 0x20000) != 0)
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

      v38 = [[PUOneUpDefaultActionsController alloc] initWithBrowsingSession:v12 viewController:v14];
      [(PUOneUpDefaultActionsController *)v38 setDelegate:v14];
      [(PUOneUpDefaultActionsController *)v38 setAssetActionManagerSource:v14];
      objc_storeStrong(&v14->_actionsController, v38);
      if ([MEMORY[0x1E69C3640] isOneUpRefreshEnabled])
      {
        v39 = [[PUOneUpChromeViewController alloc] initWithBrowsingSession:v12 actionsController:v14->_actionsController];
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

      v49 = [(PUOneUpViewController *)v14 _spec];
      v50 = [v49 allowAccessoryVisibility];

      if (v50)
      {
        v51 = objc_alloc_init(PUAccessoryVisibilityInteractionController);
        accessoryVisibilityInteractionController = v14->__accessoryVisibilityInteractionController;
        v14->__accessoryVisibilityInteractionController = v51;

        [(PUAccessoryVisibilityInteractionController *)v14->__accessoryVisibilityInteractionController setDelegate:v14];
        [(PUAccessoryVisibilityInteractionController *)v14->__accessoryVisibilityInteractionController setBrowsingSession:v12];
        v53 = [PUOneUpAccessoryViewControllersManager alloc];
        browsingSession = v14->_browsingSession;
        [(PUOneUpViewController *)v14 _spec];
        v55 = v27;
        v56 = v12;
        v58 = v57 = v38;
        v59 = [(PUOneUpAccessoryViewControllersManager *)v53 initWithBrowsingSession:browsingSession spec:v58];
        accessoryViewControllersManager = v14->__accessoryViewControllersManager;
        v14->__accessoryViewControllersManager = v59;

        v38 = v57;
        v12 = v56;
        v27 = v55;
        v61 = v14->__accessoryViewControllersManager;
        v62 = [(PUOneUpViewController *)v14 unlockDeviceStatus];
        [(PUOneUpAccessoryViewControllersManager *)v61 setUnlockDeviceStatus:v62];

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
      v67 = [(PUOneUpGestureRecognizerCoordinator *)v14->__gestureRecognizerCoordinator touchingGestureRecognizer];
      [v67 addTarget:v14 action:sel__handleTouchGesture_];
    }

    v68 = a4 & 2;
    v69 = [MEMORY[0x1E696AD88] defaultCenter];
    [v69 addObserver:v14 selector:sel__browsingVideoPlayerDidPlayToEndTime_ name:PUBrowsingVideoPlayerDidPlayToEndTimeNotification object:0];
    [v69 addObserver:v14 selector:sel__keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
    [v69 addObserver:v14 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
    [v69 addObserver:v14 selector:sel__preheatAdjacentAssetsForPhotosDetailsContext name:*MEMORY[0x1E696A7D8] object:0];
    v70 = +[PUOneUpSettings sharedInstance];
    v71 = [v70 allowParallax];

    if (v71 && !UIAccessibilityIsReduceMotionEnabled())
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

    v79 = [[PUBrowsingOneUpVisibilityHelper alloc] initWithBrowsingViewModel:v27 isPresentedForSecondScreen:v68 != 0];
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