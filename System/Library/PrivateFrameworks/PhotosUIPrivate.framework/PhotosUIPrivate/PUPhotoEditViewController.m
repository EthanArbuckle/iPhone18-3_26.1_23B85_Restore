@interface PUPhotoEditViewController
+ (id)_defaultLivePhotoRenderPipelineFilters;
+ (id)_defaultMediaViewRenderPipelineFilters;
+ (void)preheatEditDependenciesIfNeeded;
- ($5A0616AB7869379E861635CACF312FD6)toolControllerImageModulationOptions:(id)a3;
- (BOOL)_actionButtonsGoInTopToolbar;
- (BOOL)_canCompositionControllerBeReverted:(id)a3;
- (BOOL)_canCurrentCompositionControllerBeReverted;
- (BOOL)_canPasteEdits;
- (BOOL)_canPresentExtensions;
- (BOOL)_canPresentMarkup;
- (BOOL)_enableSpatialMediaEditing;
- (BOOL)_hasUnsavedChanges;
- (BOOL)_isInEditRevertTransitionSnapshotVisible;
- (BOOL)_isLivePhotoEffect;
- (BOOL)_isLoopingVideo:(BOOL)a3;
- (BOOL)_isQuickCrop;
- (BOOL)_isReadyToRender;
- (BOOL)_isSaveProgressAvailable;
- (BOOL)_isZoomedIn;
- (BOOL)_markupGetsItsOwnButton;
- (BOOL)_shouldDisplayRedEyeTool;
- (BOOL)_shouldDisplayRedEyeUI;
- (BOOL)_shouldHideToolsForQuickCrop;
- (BOOL)_shouldRequestAsyncAdjustmentForAsset:(id)a3 compositionController:(id)a4;
- (BOOL)_shouldUseCropPlaceholderViewFrame;
- (BOOL)_updatePreviewOriginal:(BOOL)a3 withPresses:(id)a4;
- (BOOL)canCopyEdits;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)currentAssetNeedsGainMap;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isCinematicAudio;
- (BOOL)isHDREnabled;
- (BOOL)isHighframeRateVideo;
- (BOOL)isIpadLayout;
- (BOOL)isLivePhotoVideoEnabled;
- (BOOL)isOriginalStyleable;
- (BOOL)isPortraitVideo;
- (BOOL)isSpatialMedia;
- (BOOL)isStandardVideo;
- (BOOL)isVideoOn;
- (BOOL)mediaViewFillsView;
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)prefersStatusBarHidden;
- (BOOL)shouldEnableImageModulation;
- (BOOL)showsLabelsForToolButtons;
- (CGPoint)toolController:(id)a3 originalPointFromViewPoint:(CGPoint)a4 view:(id)a5;
- (CGPoint)toolController:(id)a3 viewPointFromOriginalPoint:(CGPoint)a4 view:(id)a5;
- (CGRect)_cropPlaceholderViewFrameForImageSize:(CGSize)a3;
- (CGRect)_oneUpTransitionPlaceholderViewFrame;
- (CGRect)_placeholderViewFrameForImageSize:(CGSize)a3;
- (CGRect)lastKnownMediaViewImageFrame;
- (CGRect)previewViewFrame;
- (CGSize)lastKnownPreviewImageSize;
- (CGSize)toolControllerOriginalImageSize:(id)a3;
- (CGSize)toolControllerOriginalOrientedImageSize:(id)a3;
- (PUEditActionActivity)copyPresetAction;
- (PUEditActionActivity)pastePresetAction;
- (PUEditActionActivity)radarAction;
- (PUPhotoEditViewController)initWithPhoto:(id)a3 mediaProvider:(id)a4 mediaDestination:(id)a5;
- (PUPhotoEditViewControllerPresentationDelegate)presentationDelegate;
- (PUPhotoEditViewControllerSessionDelegate)sessionDelegate;
- (UIAlertController)cancelConfirmationAlert;
- (UIAlertController)disabledToolRevertAlert;
- (UIAlertController)irisRevertConfirmationAlert;
- (UIAlertController)jpegPreviewForRawConfirmationAlert;
- (UIAlertController)revertConfirmationAlert;
- (UIEdgeInsets)_currentToolPreviewInsets;
- (UIEdgeInsets)_mediaViewEdgeInsets;
- (UIEdgeInsets)_mediaViewEdgeInsetsWithGeometry:(id)a3;
- (UIMenu)askToSaveAsNewClipMenu;
- (double)imageFrameIntersectionFractionWithRect:(CGRect)a3;
- (double)imageFrameIntersectionFractionWithView:(id)a3;
- (double)px_HDRFocus;
- (double)transientBadgeWidthForText:(id)a3;
- (id)_allTools;
- (id)_appearanceSubmenu;
- (id)_composition;
- (id)_constraintsForToolView:(id)a3 wantsFullscreen:(BOOL)a4;
- (id)_copyPasteEditsSubmenu;
- (id)_createMediaView;
- (id)_currentViewContentsForDismissTransition;
- (id)_defaultInitialToolController;
- (id)_defaultRenderPipelineFiltersForCurrentMode;
- (id)_extensionsSubmenu;
- (id)_internalActionsSubmenu;
- (id)_livePhotoGestureRecognizer;
- (id)_moreButtonMenu;
- (id)_newOutputForContentEditingInput:(id)a3 compositionController:(id)a4;
- (id)_newToolButtonForTool:(id)a3;
- (id)_orientedCIImageFromUIImage:(id)a3;
- (id)_preferredStatusBarHideAnimationParameters;
- (id)_redEyeAction;
- (id)_saveAsDuplicateSubmenu;
- (id)_toolActionsSubmenu;
- (id)_toolControllerForAdjustmentCategory:(int64_t)a3;
- (id)_toolControllerForInitialToolType:(int64_t)a3;
- (id)_toolControllerForTag:(int64_t)a3;
- (id)_undoRedoSubmenu;
- (id)barButtonItemForView:(id)a3;
- (id)debugStringDescribingProgressReasons:(unint64_t)a3;
- (id)editAssetDiagnostics;
- (id)fontForButtons;
- (id)imageConfiguration;
- (id)oneUpAssetTransition:(id)a3 adjustTransitionInfo:(id)a4;
- (id)photoEditToolbar:(id)a3 accessibilityHUDItemForButton:(id)a4;
- (id)playbackRateOptions;
- (id)pluginActivitiesForEditPluginSession:(id)a3;
- (id)ppt_renderStatisticsDictionaryForTimeInterval:(double)a3;
- (id)secondaryToolbar;
- (id)sourceItemForTipID:(id)a3;
- (id)toolControllerHitEventForwardView:(id)a3;
- (id)toolControllerLivePhoto:(id)a3;
- (id)toolControllerOriginalCompositionController:(id)a3;
- (id)toolControllerUneditedCompositionController:(id)a3;
- (id)undoManager;
- (int)_revertToEmptyCompositionWithCompletionHandler:(id)a3;
- (int)_saveRevertedComposition:(id)a3 contentEditingInput:(id)a4 withCompletionHandler:(id)a5;
- (int64_t)_selectionIndicatorType;
- (int64_t)_toolTypeForToolWithTag:(int64_t)a3;
- (int64_t)currentToolPickerLayoutDirection;
- (int64_t)preferredUserInterfaceStyle;
- (unint64_t)cinematicAudioRenderingVersion;
- (unint64_t)toolControllerSourceAssetType:(id)a3;
- (void)_addCropToolGainMapWithRequest:(id)a3;
- (void)_cancelInProgressSaveRequest;
- (void)_cancelPendingFocusViewForInteractionWithDelay;
- (void)_captureSnapshotOfBasePhotoWithCompletionHandler:(id)a3;
- (void)_chooseInitialEditingTool;
- (void)_clearBadgeConstraints;
- (void)_clearToolbars;
- (void)_commitEditSessionActionWithAsset:(id)a3 initialCompositionController:(id)a4 savedCompositionController:(id)a5 localizedActionName:(id)a6;
- (void)_commitSaveAsCopyWithAsset:(id)a3;
- (void)_continueLoadingWithAutocalculators;
- (void)_createPencilInteractionIfNeeded;
- (void)_createVideoScrubberIfNeeded;
- (void)_didEndAutoCalc;
- (void)_didEndEnterEdit;
- (void)_didEndExitActionWithSessionKeys:(id)a3 initialComposition:(id)a4;
- (void)_didEndResourceLoading;
- (void)_didStartAutoCalc;
- (void)_didStartEnterEdit;
- (void)_didStartExitAction;
- (void)_didStartResourceLoading;
- (void)_editPluginSession:(id)a3 checkVideoEnabled:(BOOL)a4 loadVideoComplementURLWithHandler:(id)a5;
- (void)_ensureCleanupResourcesWithCompletion:(id)a3;
- (void)_fileRadar;
- (void)_focusViewForInteractionWithDelay;
- (void)_handle1upToggleButton:(id)a3;
- (void)_handleAutoEnhanceButton:(id)a3;
- (void)_handleCancelButton:(id)a3;
- (void)_handleDidLoadAdjustmentsAndBaseImageWithResult:(id)a3;
- (void)_handleDidLoadOriginalWithResult:(id)a3;
- (void)_handleDoneAction:(id)a3;
- (void)_handleDoneButton:(id)a3;
- (void)_handleLivePhotoTouchRecognizer:(id)a3;
- (void)_handleMainActionButton:(id)a3;
- (void)_handleMediaViewReady:(id)a3 statistics:(id)a4;
- (void)_handleRedoButton:(id)a3;
- (void)_handleResourceLoadChange;
- (void)_handleRevertButton:(id)a3;
- (void)_handleSaveAction:(int64_t)a3;
- (void)_handleShowOriginalButton:(id)a3;
- (void)_handleSwipeDownGesture:(id)a3;
- (void)_handleTogglePreviewTapGesture:(id)a3;
- (void)_handleToolbarToolButton:(id)a3;
- (void)_handleUndoButton:(id)a3;
- (void)_handleZoomButton:(id)a3;
- (void)_hideEphemeralViews:(BOOL)a3;
- (void)_hideProgressIndicatorImmediately:(BOOL)a3;
- (void)_installGestureRecognizer:(id)a3 type:(unint64_t)a4;
- (void)_installInEditRevertTransitionSnapshot;
- (void)_layoutShadowView:(id)a3;
- (void)_loadOriginalImageIfNeeded;
- (void)_loadPhotoEditResourcesIfNeeded;
- (void)_loadToolsIfNeeded:(BOOL)a3;
- (void)_notifyDelegateSaveFinishedIfReadyWithAsset:(id)a3;
- (void)_performDiscardAction;
- (void)_performInEditRevertWithToolButton:(id)a3;
- (void)_performRevertAction;
- (void)_ppt_conditionallyExecuteAfterRender;
- (void)_presentExtensions;
- (void)_presentMarkup;
- (void)_presentWarningForIrisRemovesEditsWithCompletion:(id)a3;
- (void)_produceMoreButtonMenuElementsWithCompletion:(id)a3;
- (void)_reloadMoreButtonMenu;
- (void)_reloadToolbarButtonsIfNeeded;
- (void)_removePlaceholderImageViewIfNeeded;
- (void)_requestLivePhotoAssetWithFilters:(id)a3 completion:(id)a4;
- (void)_resetModelAndBaseImagesToWorkImageVersion:(int64_t)a3;
- (void)_resignCurrentTool;
- (void)_restoreSnapshot:(id)a3 withCompletionHandler:(id)a4;
- (void)_sendPasteEditsAnalytics;
- (void)_setNeedsUserInterfaceAppearanceUpdateAnimated;
- (void)_setOriginalURL:(id)a3 originalEditSource:(id)a4;
- (void)_setPlaybackEnabled:(BOOL)a3;
- (void)_setTransientStatusBadgeVisible:(BOOL)a3;
- (void)_setupImagePluginSession;
- (void)_setupToolsIfNeeded;
- (void)_setupVideoPluginSession;
- (void)_showCancelAndRevertOptionsAllowResetTool:(BOOL)a3;
- (void)_showJpegPreviewForRawRevertAlert;
- (void)_showProgressIndicator;
- (void)_startMarkupSession;
- (void)_startMonitoringSaveProgressIfNeeded;
- (void)_startShowingOriginalBadge;
- (void)_startTimeoutTimerForAssetChange;
- (void)_startWaitingForAssetChange:(id)a3;
- (void)_startWaitingForSaveRequestID:(int)a3;
- (void)_stopMonitoringSaveProgress;
- (void)_stopWaitingForAssetChangeWithAsset:(id)a3 success:(BOOL)a4;
- (void)_stopWaitingForSaveRequestWithAsset:(id)a3;
- (void)_teardownCleanupResources;
- (void)_timeoutWaitingForAssetChange;
- (void)_toggleShowOriginal;
- (void)_transitionToEditingTool:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5;
- (void)_transitionToNewToolViewController:(id)a3 oldToolViewController:(id)a4 animationBlock:(id)a5 completion:(id)a6 animated:(BOOL)a7;
- (void)_undoManagerDidCloseUndoGroupNotification:(id)a3;
- (void)_undoManagerDidRedo:(id)a3;
- (void)_undoManagerDidUndo:(id)a3;
- (void)_undoManagerWillRedo:(id)a3;
- (void)_undoManagerWillUndo:(id)a3;
- (void)_uninstallInEditRevertTransitionSnapshotAnimated:(BOOL)a3;
- (void)_updateBackgroundColor;
- (void)_updateCancelButtonAnimated:(BOOL)a3;
- (void)_updateForcingDarkUserInterfaceStyleForZoomIfNeeded;
- (void)_updateGainMap;
- (void)_updateKeyCommands;
- (void)_updateLayerModulation;
- (void)_updateLayoutOrientationWithViewSize:(CGSize)a3 transitionCoordinator:(id)a4;
- (void)_updateLivePhotoModel;
- (void)_updateLivePhotoPlaybackGestureRecognizer;
- (void)_updateMainActionButtonAnimated:(BOOL)a3;
- (void)_updateMainButtonForSaveAsNewClipMenu;
- (void)_updateMediaViewEdgeInsets;
- (void)_updateMediaViewLayoutWithCoordinator:(id)a3 layoutOrientation:(int64_t)a4;
- (void)_updateMediaViewPlaybackStyle;
- (void)_updateModelDependentControlsAnimated:(BOOL)a3;
- (void)_updateMoreButtonAnimated:(BOOL)a3;
- (void)_updateMutedState;
- (void)_updatePenultimateAvailableWithCompletionHandler:(id)a3;
- (void)_updatePlaceholderImage;
- (void)_updatePluginSession;
- (void)_updatePluginWorkImageVersion;
- (void)_updatePreviewingOriginal;
- (void)_updateProgressEventBlockingViewConstraints;
- (void)_updateProgressIndicatorInteractionDisabledWithReason:(int64_t)a3 showsIndicator:(BOOL)a4 isSavingWithProgress:(BOOL)a5;
- (void)_updateRenderedPreview;
- (void)_updateSaveProgress;
- (void)_updateShowOriginalButtonAnimated:(BOOL)a3;
- (void)_updateSpecDependentUIPieces;
- (void)_updateSubviewsOrdering;
- (void)_updateSwipeDownGestureRecognizer;
- (void)_updateTogglePreviewGestureRecognizer;
- (void)_updateToolbarBackgroundAnimated:(BOOL)a3;
- (void)_updateToolbarButtonPositions;
- (void)_updateToolbarShadowAlpha;
- (void)_updateToolbarsAnimated:(BOOL)a3;
- (void)_updateToolbarsContentPadding;
- (void)_updateTraitCollectionAndLayoutReferenceSize;
- (void)_updateTraitCollectionAndLayoutReferenceSize:(CGSize)a3;
- (void)_updateTransientStatusBadgeForPreviewingOriginal;
- (void)_updateUndoRedoButtonsAnimated:(BOOL)a3;
- (void)_updateValuesCalculator;
- (void)_updateVideoScrubber;
- (void)_updateVideoScrubberDisplayAnimate:(BOOL)a3;
- (void)_updateZoomButton;
- (void)addCropToolGainMapIfNeeded;
- (void)appIntentsEnumerateAssets:(id)a3;
- (void)applyAutoEnhance:(id)a3 completion:(id)a4;
- (void)asShotCompositionController:(id)a3;
- (void)autoEnhanceAssets:(id)a3;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3;
- (void)compositionController:(id)a3 didAddAdjustment:(id)a4;
- (void)compositionController:(id)a3 didRemoveAdjustment:(id)a4;
- (void)compositionController:(id)a3 didUpdateAdjustment:(id)a4;
- (void)compositionController:(id)a3 didUpdateAdjustments:(id)a4;
- (void)compositionControllerDidChangeForAdjustments:(id)a3;
- (void)configureEnablenessOfControlButton:(id)a3 animated:(BOOL)a4 canVisuallyDisable:(BOOL)a5;
- (void)copyEditsSkippingOptions:(BOOL)a3;
- (void)dealloc;
- (void)didFinishWithAsset:(id)a3 savedChanges:(BOOL)a4;
- (void)didFinishWithChanges:(BOOL)a3;
- (void)dismissLivePhotoRevertConfirmationAlert;
- (void)editPluginSession:(id)a3 commitContentEditingOutput:(id)a4 withCompletionHandler:(id)a5;
- (void)editPluginSession:(id)a3 didEndWithCompletionType:(unint64_t)a4 forPluginIdentifier:(id)a5;
- (void)editPluginSession:(id)a3 loadAdjustmentDataWithHandler:(id)a4;
- (void)editPluginSession:(id)a3 loadDisplaySizeImageWithHandler:(id)a4;
- (void)editPluginSession:(id)a3 loadFullSizeImageWithHandler:(id)a4;
- (void)editPluginSession:(id)a3 loadPlaceholderImageWithHandler:(id)a4;
- (void)editPluginSession:(id)a3 loadThumbnailImageWithSize:(CGSize)a4 loadHandler:(id)a5;
- (void)editPluginSession:(id)a3 loadVideoURLWithHandler:(id)a4;
- (void)editPluginSessionWillBegin:(id)a3;
- (void)editValuesCalculatorHasChangedFlashStatus:(id)a3;
- (void)editValuesCalculatorHasChangedImageValues:(id)a3;
- (void)fileRadarAndAttachFile:(id)a3;
- (void)flashTransientBadgeWithText:(id)a3;
- (void)fulfillPendingEditsRequest:(id)a3;
- (void)fulfillPendingEditsRequestIfNecessary;
- (void)initialCinematographyLoadComplete;
- (void)livePhotoModel:(id)a3 videoEnabledDidChange:(BOOL)a4;
- (void)mediaDestination:(id)a3 didCompleteSaveRequest:(id)a4;
- (void)mediaDestination:(id)a3 willBeginSaveRequest:(id)a4;
- (void)mediaTimelineControlViewDidChangeValue:(id)a3;
- (void)mediaTimelineControlViewDidEndChanging:(id)a3;
- (void)mediaTimelineControlViewWillBeginChanging:(id)a3;
- (void)mediaView:(id)a3 didZoom:(double)a4;
- (void)mediaViewDidEndDecelerating:(id)a3;
- (void)mediaViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)mediaViewDidEndLivePhotoPlayback:(id)a3;
- (void)mediaViewDidEndZooming:(id)a3;
- (void)mediaViewDidFinishPreparingVideo:(id)a3;
- (void)mediaViewDidFinishRendering:(id)a3 withStatistics:(id)a4;
- (void)mediaViewDidPlayToEnd:(id)a3;
- (void)mediaViewDidScroll:(id)a3;
- (void)mediaViewDidStartPreparingVideo:(id)a3;
- (void)mediaViewDidUpdateGeometry:(id)a3;
- (void)mediaViewDidUpdateLivePhoto:(id)a3;
- (void)mediaViewIsReadyForVideoPlayback:(id)a3;
- (void)mediaViewWillBeginDragging:(id)a3;
- (void)mediaViewWillBeginLivePhotoPlayback:(id)a3;
- (void)mediaViewWillBeginZooming:(id)a3;
- (void)navigateToSegment:(id)a3;
- (void)oneUpAssetTransition:(id)a3 animateTransitionWithContext:(id)a4 duration:(double)a5 completion:(id)a6;
- (void)oneUpAssetTransition:(id)a3 requestTransitionContextWithCompletion:(id)a4;
- (void)oneUpAssetTransitionDidEnd:(id)a3;
- (void)pasteEditsWithCompletionHandler:(id)a3;
- (void)pencilInteractionDidTap:(id)a3;
- (void)photoEditResourceLoadRequestResourcesAvailabilityChanged:(id)a3 previousAvailability:(int64_t)a4 currentAvailability:(int64_t)a5;
- (void)photoLibraryChangesPausedDidChange;
- (void)photoLibraryDidChangeOnMainQueue:(id)a3;
- (void)popoverPresentationControllerDidDismissPopover:(id)a3;
- (void)ppt_applyAutoenhance:(id)a3;
- (void)ppt_cancelEditsWithCompletion:(id)a3;
- (void)ppt_executeAfterRender:(id)a3;
- (void)ppt_navigateToPortraitLightingEffects:(id)a3;
- (void)ppt_playLivePhotoWithWillBeginPlaybackBlock:(id)a3 didEndPlaybackBlock:(id)a4;
- (void)ppt_replayCleanupBrushStrokeWithCompletionBlock:(id)a3;
- (void)ppt_revertWithCompletion:(id)a3;
- (void)ppt_saveWithCompletion:(id)a3;
- (void)ppt_scrollBWSlider:(id)a3;
- (void)ppt_scrollColorSlider:(id)a3;
- (void)ppt_scrollLightSlider:(id)a3;
- (void)ppt_scrollSliderNamed:(id)a3 value:(id)a4 completion:(id)a5;
- (void)ppt_selectAdjustmentsController:(id)a3;
- (void)ppt_selectCleanupController:(id)a3;
- (void)ppt_selectCropController:(id)a3;
- (void)ppt_selectFiltersController:(id)a3;
- (void)ppt_selectLightingEffect:(id)a3 completionBlock:(id)a4;
- (void)ppt_selectNextLightingEffect:(id)a3;
- (void)ppt_selectPerspectiveController:(id)a3;
- (void)ppt_selectPortraitController:(id)a3;
- (void)ppt_selectStyle:(id)a3 completionBlock:(id)a4;
- (void)ppt_selectStyleController:(id)a3;
- (void)ppt_setEditIsReadyNotificationBlock:(id)a3;
- (void)prepareForPopoverPresentation:(id)a3;
- (void)prepareTipPopover:(id)a3 tipID:(id)a4;
- (void)presentDiagnosticAlert:(id)a3;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)removeCropToolGainMap;
- (void)resourceLoader:(id)a3 request:(id)a4 didCompleteWithResult:(id)a5;
- (void)resourceLoader:(id)a3 request:(id)a4 downloadProgress:(double)a5;
- (void)resourceLoader:(id)a3 request:(id)a4 mediaLoadDidFailWithError:(id)a5;
- (void)rotateAssetsClockwise:(id)a3;
- (void)rotateAssetsCounterclockwise:(id)a3;
- (void)setCompositionController:(id)a3;
- (void)setFocusingViewForInteraction:(BOOL)a3 exemptVideoScrubber:(BOOL)a4;
- (void)setGainMapImage:(CGImage *)a3;
- (void)setGainMapValue:(float)a3;
- (void)setInitialSeekTime:(id *)a3;
- (void)setIsCachingVideo:(BOOL)a3;
- (void)setLayoutOrientation:(int64_t)a3 withTransitionCoordinator:(id)a4;
- (void)setLivePhotoVideoEnabled:(BOOL)a3;
- (void)setOriginalStillImageTime:(id *)a3;
- (void)setPlaceholderImage:(id)a3;
- (void)setPreferredAppearance:(int64_t)a3;
- (void)setPreviewRenderType:(int64_t)a3;
- (void)setRunningAutoCalculators:(BOOL)a3;
- (void)setShouldBePreviewingOriginal:(BOOL)a3;
- (void)setUneditedComposition:(id)a3;
- (void)setupSwiftToolbar;
- (void)switchToEditingTool:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5;
- (void)switchToEditingToolWithTag:(int64_t)a3;
- (void)toggleEditor:(id)a3;
- (void)toggleLivePhotoActive;
- (void)toolController:(id)a3 didChangeIsScrolling:(BOOL)a4;
- (void)toolController:(id)a3 didChangePreferredPreviewViewInsetsAnimated:(BOOL)a4;
- (void)toolControllerDidChangeIsActivelyAdjusting:(id)a3;
- (void)toolControllerDidChangeIsPerformingLiveInteraction:(id)a3;
- (void)toolControllerDidChangeWantsTapToToggleOriginalEnabled:(id)a3 enabled:(BOOL)a4;
- (void)toolControllerDidUpdateToolbar:(id)a3;
- (void)toolControllerWantsGestureRecognizerUpdate:(id)a3;
- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4;
- (void)trimToolPlayerWrapper:(id)a3 requestAssetWithFilters:(id)a4 completion:(id)a5;
- (void)updateInteractions;
- (void)updateProgressIndicatorAnimated:(BOOL)a3;
- (void)updateSwiftToolbarConstraints;
- (void)updateViewConstraints;
- (void)validateCommand:(id)a3;
- (void)viewControllerSpec:(id)a3 didChange:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PUPhotoEditViewController

- (void)setupSwiftToolbar
{
  v2 = self;
  sub_1B3827838();
}

- (void)updateSwiftToolbarConstraints
{
  v2 = self;
  sub_1B3827C44();
}

- (CGRect)lastKnownMediaViewImageFrame
{
  x = self->_lastKnownMediaViewImageFrame.origin.x;
  y = self->_lastKnownMediaViewImageFrame.origin.y;
  width = self->_lastKnownMediaViewImageFrame.size.width;
  height = self->_lastKnownMediaViewImageFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)lastKnownPreviewImageSize
{
  width = self->_lastKnownPreviewImageSize.width;
  height = self->_lastKnownPreviewImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIAlertController)disabledToolRevertAlert
{
  WeakRetained = objc_loadWeakRetained(&self->_disabledToolRevertAlert);

  return WeakRetained;
}

- (UIAlertController)irisRevertConfirmationAlert
{
  WeakRetained = objc_loadWeakRetained(&self->_irisRevertConfirmationAlert);

  return WeakRetained;
}

- (UIAlertController)jpegPreviewForRawConfirmationAlert
{
  WeakRetained = objc_loadWeakRetained(&self->_jpegPreviewForRawConfirmationAlert);

  return WeakRetained;
}

- (UIAlertController)revertConfirmationAlert
{
  WeakRetained = objc_loadWeakRetained(&self->_revertConfirmationAlert);

  return WeakRetained;
}

- (UIAlertController)cancelConfirmationAlert
{
  WeakRetained = objc_loadWeakRetained(&self->_cancelConfirmationAlert);

  return WeakRetained;
}

- (void)setInitialSeekTime:(id *)a3
{
  var3 = a3->var3;
  *&self->_initialSeekTime.value = *&a3->var0;
  self->_initialSeekTime.epoch = var3;
}

- (PUPhotoEditViewControllerSessionDelegate)sessionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionDelegate);

  return WeakRetained;
}

- (PUPhotoEditViewControllerPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

- (void)appIntentsEnumerateAssets:(id)a3
{
  v9 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (!v9)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:11262 description:{@"Invalid parameter not satisfying: %@", @"assetHandler"}];
  }

  v5 = [(PUPhotoEditViewController *)self photo];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;

    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = [(PUPhotoEditViewController *)self view];
    [v7 bounds];
    v9[2](v9, v6, 1);
  }

  else
  {
    v6 = 0;
    v7 = v5;
  }

LABEL_9:
}

- (BOOL)isHDREnabled
{
  v2 = [MEMORY[0x1E69B3AB0] renderMeteorPlusAsHDR];
  if (v2)
  {

    LOBYTE(v2) = PXUserAllowFullHDR();
  }

  return v2;
}

- (id)editAssetDiagnostics
{
  v4 = [(PUPhotoEditViewController *)self photo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PUPhotoEditViewController *)self photo];
    if (v5)
    {
      v6 = v5;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = [v6 px_descriptionForAssertionMessage];
        [v14 handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:11242 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.photo", v16, v17}];
      }

      v7 = objc_alloc(MEMORY[0x1E69C34D0]);
      v8 = [(PUPhotoEditViewController *)self editSourceContentEditingInput];
      v9 = [(PUPhotoEditViewController *)self compositionController];
      v10 = [(PUPhotoEditViewController *)self originalComposition];
      v11 = [v7 initWithAsset:v6 contentEditingInput:v8 compositionController:v9 originalComposition:v10];

      v4 = v6;
    }

    else
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = objc_opt_class();
      v9 = NSStringFromClass(v13);
      [v8 handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:11242 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.photo", v9}];
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3
{
  v51 = a3;
  v5 = [(PUPhotoEditViewController *)self photo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(PUPhotoEditViewController *)self photo];
    if (!v6)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      [v8 handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:11188 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.photo", v46}];

LABEL_25:
      goto LABEL_26;
    }

    v7 = v6;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v47 = [MEMORY[0x1E696AAA8] currentHandler];
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      v50 = [v7 px_descriptionForAssertionMessage];
      [v47 handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:11188 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.photo", v49, v50}];
    }

    [(PUPhotoEditToolController *)self->_currentEditingTool willFileDiagnostic];
    v8 = [(PUPhotoEditViewController *)self editAssetDiagnostics];
    [v8 collectDiagnosticsToTTRContainer:v51];
    currentEditingTool = self->_currentEditingTool;
    if (currentEditingTool)
    {
      [(PUPhotoEditToolController *)currentEditingTool addAttachmentsForTapToRadar:v51];
    }

    if (self->_diagnosticsFileURL)
    {
      [v51 addAttachment:?];
      diagnosticsFileURL = self->_diagnosticsFileURL;
      self->_diagnosticsFileURL = 0;
    }

    v11 = [(PUPhotoEditViewController *)self enterEditTimeInterval];
    if (!v11)
    {
      goto LABEL_20;
    }

    v12 = v11;
    v13 = [(PUPhotoEditViewController *)self resourceLoadingInterval];
    if (!v13)
    {
LABEL_19:

      goto LABEL_20;
    }

    v14 = v13;
    v15 = [(PUPhotoEditViewController *)self resourceProcessingInterval];
    if (!v15)
    {
LABEL_18:

      goto LABEL_19;
    }

    v16 = v15;
    v17 = [(PUPhotoEditViewController *)self resourceCheckingInterval];
    if (v17)
    {
      v18 = v17;
      v19 = [(PUPhotoEditViewController *)self resourceDownloadInterval];
      if (v19)
      {
        v20 = v19;
        v21 = [(PUPhotoEditViewController *)self autoCalcInterval];

        if (v21)
        {
          v22 = [(PUPhotoEditViewController *)self enterEditTimeInterval];
          [v22 duration];
          v24 = v23;

          v12 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v14 = objc_alloc_init(MEMORY[0x1E696AAF0]);
          [v12 appendFormat:@"Entry Into Edit Timings"];
          [v12 appendFormat:@"\n\n"];
          [v12 appendFormat:@"Total Time = %.4f\n", v24];
          v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[PUPhotoEditViewController isFirstSinceBoot](self, "isFirstSinceBoot")}];
          [v12 appendFormat:@"First Since Boot   = %@\n", v25];

          v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[PUPhotoEditViewController isFirstSinceLaunch](self, "isFirstSinceLaunch")}];
          [v12 appendFormat:@"First Since Launch = %@\n", v26];

          v27 = [(PUPhotoEditViewController *)self resourceLoadingInterval];
          [v27 duration];
          [v12 appendFormat:@"  Resource Loading Duration = %.4f\n", v28];

          v29 = [(PUPhotoEditViewController *)self resourceCheckingInterval];
          [v29 duration];
          [v12 appendFormat:@"    Checking Duration       = %.4f\n", v30];

          v31 = [(PUPhotoEditViewController *)self resourceDownloadInterval];
          [v31 duration];
          [v12 appendFormat:@"    Download Duration       = %.4f\n", v32];

          v33 = [(PUPhotoEditViewController *)self resourceProcessingInterval];
          [v33 duration];
          [v12 appendFormat:@"    Processing Duration       = %.4f\n", v34];

          v35 = [(PUPhotoEditViewController *)self modelPrepInterval];
          [v35 duration];
          [v12 appendFormat:@"    Model Prep Duration       = %.4f\n", v36];

          v37 = [(PUPhotoEditViewController *)self autoCalcInterval];
          [v37 duration];
          [v12 appendFormat:@"  Auto Calc Duration = %.4f\n", v38];

          [v12 appendFormat:@"\n"];
          v39 = [(PUPhotoEditViewController *)self photo];
          v40 = [v14 stringFromByteCount:{objc_msgSend(v39, "originalFilesize")}];
          [v12 appendFormat:@"Asset File Size: %@", v40];

          [v12 appendFormat:@"\n\n"];
          [v51 addAttachmentWithText:v12 name:@"Entry Into Edit Timings"];
          goto LABEL_18;
        }

LABEL_20:
        v41 = [(PUPhotoEditViewController *)self compositionController];
        v42 = [v41 inpaintAdjustmentController];
        if (v42)
        {
          v43 = self->_currentEditingTool;
          cleanupController = self->_cleanupController;

          if (v43 != cleanupController)
          {
            [(PUCleanupToolController *)self->_cleanupController addAttachmentsForTapToRadar:v51];
          }
        }

        else
        {
        }

        v5 = v7;
        goto LABEL_25;
      }
    }

    goto LABEL_18;
  }

LABEL_26:
}

- (void)presentDiagnosticAlert:(id)a3
{
  v5 = a3;
  if (self->_progressIndicatorInteractionDisablingToken)
  {
    [PUInterfaceManager endDisablingUserInteraction:?];
    progressIndicatorInteractionDisablingToken = self->_progressIndicatorInteractionDisablingToken;
    self->_progressIndicatorInteractionDisablingToken = 0;
  }

  [(PUPhotoEditViewController *)self presentViewController:v5 animated:0 completion:0];
}

- (void)fileRadarAndAttachFile:(id)a3
{
  objc_storeStrong(&self->_diagnosticsFileURL, a3);

  [(PUPhotoEditViewController *)self _fileRadar];
}

- (void)_fileRadar
{
  v3 = objc_opt_new();
  [v3 addDiagnosticProvider:self];
  [v3 setComponent:33];
  [v3 setAttachmentsIncludeAnyUserAsset:1];
  [v3 setTitle:@"[iOS][TTR] "];
  [v3 setKeywordIDs:&unk_1F2B7D448];
  PXFileRadarWithConfiguration();
}

- (void)_sendPasteEditsAnalytics
{
  v16 = *MEMORY[0x1E69E9840];
  pasteEditsEventBuilder = self->_pasteEditsEventBuilder;
  if (pasteEditsEventBuilder)
  {
    v4 = [(PEEditActionEventBuilder *)pasteEditsEventBuilder buildEvents];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      v8 = *MEMORY[0x1E69C4340];
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [MEMORY[0x1E6991F28] sendEvent:v8 withPayload:*(*(&v11 + 1) + 8 * v9++)];
        }

        while (v6 != v9);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    v10 = self->_pasteEditsEventBuilder;
  }

  else
  {
    v10 = 0;
  }

  self->_pasteEditsEventBuilder = 0;
}

- (void)pasteEditsWithCompletionHandler:(id)a3
{
  v36[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E69C4220] sharedPresetManager];
  v7 = [v6 presetFromPasteboard];
  [v7 setAnalyticsEventBuilderDelegate:self];
  v8 = objc_alloc(MEMORY[0x1E69C4280]);
  v9 = [(PUPhotoEditViewController *)self photo];
  v36[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v11 = [v8 initWithBaseAction:v7 assets:v10];
  pasteEditsEventBuilder = self->_pasteEditsEventBuilder;
  self->_pasteEditsEventBuilder = v11;

  if (v7)
  {
    v13 = [(PUPhotoEditViewController *)self photo];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [(PUPhotoEditViewController *)self photo];
      if (v14)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v24 = [MEMORY[0x1E696AAA8] currentHandler];
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          v27 = [v14 px_descriptionForAssertionMessage];
          [v24 handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:11082 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.photo", v26, v27}];
        }

        v15 = [v14 photoLibrary];
        v16 = [v7 isEligibleForSmartPasteWithPhotoLibrary:v15];

        if (v16)
        {
          smartCopyPasteQueue = self->_smartCopyPasteQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __61__PUPhotoEditViewController_pasteEditsWithCompletionHandler___block_invoke;
          block[3] = &unk_1E7B80CB0;
          v33 = v7;
          v34 = self;
          v35 = v5;
          dispatch_async(smartCopyPasteQueue, block);

LABEL_13:
          goto LABEL_14;
        }

LABEL_12:
        [(PUPhotoEditViewController *)self _willModifyAdjustment];
        objc_initWeak(&location, self);
        v21 = [(PUPhotoEditViewController *)self compositionController];
        v22 = [(PUPhotoEditViewController *)self photo];
        v23 = [(PUPhotoEditViewController *)self editSource];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __61__PUPhotoEditViewController_pasteEditsWithCompletionHandler___block_invoke_4;
        v28[3] = &unk_1E7B7BA00;
        objc_copyWeak(&v30, &location);
        v28[4] = self;
        v29 = v5;
        [v7 applyToCompositionController:v21 asset:v22 editSource:v23 completion:v28];

        objc_destroyWeak(&v30);
        objc_destroyWeak(&location);
        goto LABEL_13;
      }

      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      [v18 handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:11082 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.photo", v20}];
    }

    v14 = 0;
    goto LABEL_12;
  }

  if (v5)
  {
    v14 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Nothing to paste"];
    (*(v5 + 2))(v5, 0, v14);
    goto LABEL_13;
  }

LABEL_14:
}

void __61__PUPhotoEditViewController_pasteEditsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E69C4310]) initWithPasteablePreset:*(a1 + 32)];
  v3 = *(a1 + 40);
  v4 = v3[224];
  v5 = [v3 photo];
  v20[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  [v4 registerAction:v2 forAssets:v6];

  v7 = [*(a1 + 40) compositionController];
  v8 = [v7 copy];

  [*(a1 + 40) _willModifyAdjustment];
  objc_initWeak(&location, *(a1 + 40));
  v9 = [*(a1 + 40) photo];
  v10 = [*(a1 + 40) editSource];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__PUPhotoEditViewController_pasteEditsWithCompletionHandler___block_invoke_2;
  v14[3] = &unk_1E7B7B9B0;
  objc_copyWeak(&v18, &location);
  v11 = v8;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v15 = v11;
  v16 = v12;
  v17 = v13;
  [v2 applyToCompositionController:v11 asset:v9 editSource:v10 completion:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __61__PUPhotoEditViewController_pasteEditsWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__PUPhotoEditViewController_pasteEditsWithCompletionHandler___block_invoke_5;
  v4[3] = &unk_1E7B7B9D8;
  v6[1] = a2;
  objc_copyWeak(v6, (a1 + 48));
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v4);

  objc_destroyWeak(v6);
}

void __61__PUPhotoEditViewController_pasteEditsWithCompletionHandler___block_invoke_5(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v3 = PULocalizedString(@"PHOTOEDIT_PASTE_ADJUST");
    [WeakRetained _didModifyAdjustmentWithLocalizedName:v3];

    [*(a1 + 32) _sendPasteEditsAnalytics];
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = *(v4 + 16);

      v5();
    }
  }

  else
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Failed to paste"];
      (*(v6 + 16))(v6, 0, v7);
    }
  }
}

void __61__PUPhotoEditViewController_pasteEditsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__PUPhotoEditViewController_pasteEditsWithCompletionHandler___block_invoke_3;
  block[3] = &unk_1E7B7B988;
  v10[1] = a2;
  objc_copyWeak(v10, (a1 + 56));
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v10);
}

void __61__PUPhotoEditViewController_pasteEditsWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v3 = [WeakRetained compositionController];
    [v3 applyChangesFromCompositionController:*(a1 + 32)];

    v4 = objc_loadWeakRetained((a1 + 56));
    v5 = PULocalizedString(@"PHOTOEDIT_PASTE_ADJUST");
    [v4 _didModifyAdjustmentWithLocalizedName:v5];

    [*(a1 + 40) _sendPasteEditsAnalytics];
    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = *(v6 + 16);

      v7();
    }
  }

  else
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Failed to paste"];
      (*(v8 + 16))(v8, 0, v9);
    }
  }
}

- (BOOL)_canPasteEdits
{
  v3 = [MEMORY[0x1E69C4220] sharedPresetManager];
  if ([v3 hasPresetOnPasteboard])
  {
    if ([(PUPhotoEditViewController *)self _enableSpatialMediaEditing])
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      v4 = ![(PUPhotoEditViewController *)self isSpatialMedia];
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)copyEditsSkippingOptions:(BOOL)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = [(PUPhotoEditViewController *)self compositionController];
  v6 = [v5 copy];

  if (a3 || ([(PUPhotoEditViewController *)self photo], v7 = objc_claimAutoreleasedReturnValue(), v8 = [PUPhotoEditCopyEditsViewController shouldPresentForCopyingFromCompositionController:v6 asset:v7], v7, !v8))
  {
    [v6 removeAdjustmentWithKey:*MEMORY[0x1E69BDFC0]];
    [v6 removeAdjustmentWithKey:*MEMORY[0x1E69BE058]];
    v11 = [MEMORY[0x1E69C4220] sharedPresetManager];
    v17 = [(PUPhotoEditViewController *)self photo];
    [(PUPhotoEditCopyEditsViewController *)v11 copyPresetFromCompositionController:v6 sourceAsset:v17 smartCopyEnabled:1];
  }

  else
  {
    v9 = [PUPhotoEditCopyEditsViewController alloc];
    v10 = [(PUPhotoEditViewController *)self photo];
    v11 = [(PUPhotoEditCopyEditsViewController *)v9 initWithCompositionController:v6 asset:v10];

    v12 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v11];
    [v12 setModalPresentationStyle:7];
    v13 = [v12 popoverPresentationController];
    [v13 setSourceItem:self->_moreButton];
    v14 = [v13 adaptiveSheetPresentationController];
    v15 = [MEMORY[0x1E69DCF58] mediumDetent];
    v18[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [v14 setDetents:v16];

    [(PUPhotoEditViewController *)self presentViewController:v12 animated:1 completion:0];
  }
}

- (BOOL)canCopyEdits
{
  v3 = [(PUPhotoEditViewController *)self compositionController];
  v4 = [v3 copy];

  v5 = +[PUPhotoEditProtoSettings sharedInstance];
  v6 = [v5 enableSelectiveCopyEdits];

  if ((v6 & 1) == 0)
  {
    [v4 removeAdjustmentWithKey:*MEMORY[0x1E69BDFC0]];
    [v4 removeAdjustmentWithKey:*MEMORY[0x1E69BE058]];
  }

  if ([MEMORY[0x1E69C42B0] hasValidAdjustmentsInCompositionController:v4])
  {
    if ([(PUPhotoEditViewController *)self _enableSpatialMediaEditing])
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      v7 = ![(PUPhotoEditViewController *)self isSpatialMedia];
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (PUEditActionActivity)radarAction
{
  radarAction = self->_radarAction;
  if (!radarAction)
  {
    v4 = [[PUEditActionActivity alloc] initWithActionName:@"File a Radar" activityType:@"fileRadar" systemImageName:@"ant.circle"];
    v5 = self->_radarAction;
    self->_radarAction = v4;

    [(PUEditActionActivity *)self->_radarAction setCanPerformActivityActionHandler:&__block_literal_global_1121];
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40__PUPhotoEditViewController_radarAction__block_invoke_2;
    v7[3] = &unk_1E7B7B940;
    objc_copyWeak(&v8, &location);
    [(PUEditActionActivity *)self->_radarAction setPerformActivityActionHandler:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
    radarAction = self->_radarAction;
  }

  return radarAction;
}

void __40__PUPhotoEditViewController_radarAction__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fileRadar];
}

- (PUEditActionActivity)pastePresetAction
{
  pastePresetAction = self->_pastePresetAction;
  if (!pastePresetAction)
  {
    v4 = [PUEditActionActivity alloc];
    v5 = PULocalizedString(@"PHOTOEDIT_PASTE_ADJUST");
    v6 = [(PUEditActionActivity *)v4 initWithActionName:v5 activityType:@"pastePreset" systemImageName:@"slider.horizontal.2.square.badge.arrow.down"];
    v7 = self->_pastePresetAction;
    self->_pastePresetAction = v6;

    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __46__PUPhotoEditViewController_pastePresetAction__block_invoke;
    v11[3] = &unk_1E7B7B918;
    objc_copyWeak(&v12, &location);
    [(PUEditActionActivity *)self->_pastePresetAction setCanPerformActivityActionHandler:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __46__PUPhotoEditViewController_pastePresetAction__block_invoke_2;
    v9[3] = &unk_1E7B7B940;
    objc_copyWeak(&v10, &location);
    [(PUEditActionActivity *)self->_pastePresetAction setPerformActivityActionHandler:v9];
    [(PUEditActionActivity *)self->_pastePresetAction setDisablesInsteadOfHides:1];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    pastePresetAction = self->_pastePresetAction;
  }

  return pastePresetAction;
}

uint64_t __46__PUPhotoEditViewController_pastePresetAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _canPasteEdits];

  return v2;
}

void __46__PUPhotoEditViewController_pastePresetAction__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained pasteEditsWithCompletionHandler:0];
}

- (PUEditActionActivity)copyPresetAction
{
  copyPresetAction = self->_copyPresetAction;
  if (!copyPresetAction)
  {
    v4 = [PUEditActionActivity alloc];
    v5 = PULocalizedString(@"PHOTOEDIT_COPY_ADJUST");
    v6 = [(PUEditActionActivity *)v4 initWithActionName:v5 activityType:@"copyPreset" systemImageName:@"slider.horizontal.2.square.on.square"];
    v7 = self->_copyPresetAction;
    self->_copyPresetAction = v6;

    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__PUPhotoEditViewController_copyPresetAction__block_invoke;
    v11[3] = &unk_1E7B7B918;
    objc_copyWeak(&v12, &location);
    [(PUEditActionActivity *)self->_copyPresetAction setCanPerformActivityActionHandler:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__PUPhotoEditViewController_copyPresetAction__block_invoke_2;
    v9[3] = &unk_1E7B7B940;
    objc_copyWeak(&v10, &location);
    [(PUEditActionActivity *)self->_copyPresetAction setPerformActivityActionHandler:v9];
    [(PUEditActionActivity *)self->_copyPresetAction setDisablesInsteadOfHides:1];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    copyPresetAction = self->_copyPresetAction;
  }

  return copyPresetAction;
}

uint64_t __45__PUPhotoEditViewController_copyPresetAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained canCopyEdits];

  return v2;
}

void __45__PUPhotoEditViewController_copyPresetAction__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained copyEditsSkippingOptions:0];
}

- (void)prepareTipPopover:(id)a3 tipID:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69C3548] cleanUpTipID];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = MEMORY[0x1B8C6D660]();
    v11 = &OBJC_IVAR___PUPhotoEditViewController__mainToolbar;
    if (v10)
    {
      v11 = &OBJC_IVAR___PUPhotoEditViewController__swiftToolbarView;
    }

    v20[0] = *(&self->super.super.super.isa + *v11);
    v12 = MEMORY[0x1E695DEC8];
    v13 = v20[0];
    v14 = [v12 arrayWithObjects:v20 count:1];

    [v6 setPassthroughViews:v14];
    goto LABEL_10;
  }

  v15 = [MEMORY[0x1E69C3548] stylesSetupTipID];
  v16 = [v7 isEqualToString:v15];

  if (v16)
  {
    if (MEMORY[0x1B8C6D660]([v6 setPermittedArrowDirections:1]))
    {
      v14 = [(PUPhotoEditViewController *)self view];
      [v14 safeAreaInsets];
    }

    else
    {
      [(PUPhotoEditButtonCenteredToolbar *)self->_secondaryToolbar frame];
      MaxY = CGRectGetMaxY(v21);
      v14 = [(PUPhotoEditViewController *)self view];
      [v14 safeAreaInsets];
      v17 = MaxY - v19;
    }

    [v6 setPopoverLayoutMargins:{v17, 0.0, 0.0, 0.0}];
LABEL_10:
  }
}

- (id)sourceItemForTipID:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69C3548] cleanUpTipID];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = PXFind();
LABEL_3:
    v8 = v7;
    goto LABEL_8;
  }

  v9 = [MEMORY[0x1E69C3548] stylesSetupTipID];
  v10 = [v4 isEqualToString:v9];

  if (v10)
  {
    if (!MEMORY[0x1B8C6D660]())
    {
      v7 = [(PUPhotoEditButtonCenteredToolbar *)self->_secondaryToolbar centerView];
      goto LABEL_3;
    }

    v11 = [(PUPhotoEditViewController *)self navigationItem];
    v8 = [v11 titleView];
  }

  else
  {
    v8 = 0;
  }

LABEL_8:

  return v8;
}

- (void)_updateMainButtonForSaveAsNewClipMenu
{
  if (![(PUPhotoEditViewController *)self isStandardVideo])
  {
    goto LABEL_8;
  }

  v3 = [(PUPhotoEditViewController *)self photo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = [(PUPhotoEditViewController *)self compositionController];
  v6 = [v5 trimAdjustmentController];

  v7 = [(PUPhotoEditViewController *)self uneditedComposition];
  if (v7)
  {
    v8 = v7;
    v9 = [(PUPhotoEditViewController *)self uneditedComposition];
    v10 = [v9 objectForKeyedSubscript:@"trim"];

    if (!v6 || v10 && ([v6 isEqual:v10 visualChangesOnly:1] & 1) != 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = 0;
    if (!v6)
    {
LABEL_7:

LABEL_8:
      [(PUPhotoEditNotchButton *)self->_mainActionButton setMenu:0];
      p_mainActionButtonItem = &self->_mainActionButtonItem;
      [(UIBarButtonItem *)*p_mainActionButtonItem setMenu:0];
      v12 = sel__handleMainActionButton_;
      goto LABEL_9;
    }
  }

  v14 = [(PUPhotoEditViewController *)self askToSaveAsNewClipMenu];
  [(PUPhotoEditNotchButton *)self->_mainActionButton setMenu:v14];

  [(PUPhotoEditNotchButton *)self->_mainActionButton setShowsMenuAsPrimaryAction:1];
  v15 = [(PUPhotoEditViewController *)self askToSaveAsNewClipMenu];
  p_mainActionButtonItem = &self->_mainActionButtonItem;
  [(UIBarButtonItem *)*p_mainActionButtonItem setMenu:v15];

  v12 = 0;
LABEL_9:
  v13 = *p_mainActionButtonItem;

  [(UIBarButtonItem *)v13 setAction:v12];
}

- (UIMenu)askToSaveAsNewClipMenu
{
  v22[2] = *MEMORY[0x1E69E9840];
  askToSaveAsNewClipMenu = self->_askToSaveAsNewClipMenu;
  if (!askToSaveAsNewClipMenu)
  {
    objc_initWeak(&location, self);
    v16 = MEMORY[0x1E69DCC60];
    v4 = MEMORY[0x1E69DC628];
    v5 = PULocalizedString(@"EDITED_TRIM_SAVE_VIDEO");
    v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"video.badge.checkmark"];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __51__PUPhotoEditViewController_askToSaveAsNewClipMenu__block_invoke;
    v19[3] = &unk_1E7B80890;
    objc_copyWeak(&v20, &location);
    v7 = [v4 actionWithTitle:v5 image:v6 identifier:0 handler:v19];
    v22[0] = v7;
    v8 = MEMORY[0x1E69DC628];
    v9 = PULocalizedString(@"EDITED_TRIM_SAVE_AS_NEW_CLIP");
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"video.badge.plus"];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __51__PUPhotoEditViewController_askToSaveAsNewClipMenu__block_invoke_2;
    v17[3] = &unk_1E7B80890;
    objc_copyWeak(&v18, &location);
    v11 = [v8 actionWithTitle:v9 image:v10 identifier:0 handler:v17];
    v22[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    v13 = [v16 menuWithTitle:&stru_1F2AC6818 children:v12];
    v14 = self->_askToSaveAsNewClipMenu;
    self->_askToSaveAsNewClipMenu = v13;

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
    askToSaveAsNewClipMenu = self->_askToSaveAsNewClipMenu;
  }

  return askToSaveAsNewClipMenu;
}

void __51__PUPhotoEditViewController_askToSaveAsNewClipMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSaveAction:0];
}

void __51__PUPhotoEditViewController_askToSaveAsNewClipMenu__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSaveAction:2];
}

- (void)trimToolPlayerWrapper:(id)a3 requestAssetWithFilters:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(PUPhotoEditViewController *)self isStandardVideo])
  {
    v9 = [(NUMediaView *)self->_mediaView composition];
    if (v9)
    {
      v10 = [(PUPhotoEditMediaToolController *)self->_mediaToolController trimController];
      [v10 scrubberHeight];
      v12 = v11;

      v13 = [(PUPhotoEditViewController *)self view];
      v14 = [v13 traitCollection];
      [v14 displayScale];
      v16 = v12 * v15;

      v17 = 41.0;
      if (v16 >= 41.0)
      {
        v17 = v16;
      }

      v18 = vcvtpd_s64_f64(v17);
      if ((v18 & 0x8000000000000000) != 0)
      {
        v24 = [MEMORY[0x1E696AAA8] currentHandler];
        v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NUPixelSize NUPixelSizeMake(NSInteger, NSInteger)"}];
        [v24 handleFailureInFunction:v25 file:@"NUGeometryPrimitives.h" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"(width >= 0) && (height >= 0)"}];
      }

      v19 = [objc_alloc(MEMORY[0x1E69B3A68]) initWithTargetPixelSize:{v18, v18}];
      videoRenderContext = self->_videoRenderContext;
      if (!videoRenderContext)
      {
        v21 = [objc_alloc(MEMORY[0x1E69B3C18]) initWithPurpose:2];
        v22 = self->_videoRenderContext;
        self->_videoRenderContext = v21;

        videoRenderContext = self->_videoRenderContext;
      }

      [(NURenderContext *)videoRenderContext cancelAllRequests];
      v23 = [objc_alloc(MEMORY[0x1E69B3D30]) initWithComposition:v9];
      [v23 setRenderContext:self->_videoRenderContext];
      [v23 setSampleMode:2];
      [v23 setName:@"PUPhotoEditViewController-trimToolClient"];
      [v23 setPipelineFilters:v7];
      [v23 setScalePolicy:v19];
      [v23 setResponseQueue:MEMORY[0x1E69E96A0]];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __86__PUPhotoEditViewController_trimToolPlayerWrapper_requestAssetWithFilters_completion___block_invoke_2;
      v28[3] = &unk_1E7B805C0;
      v29 = v8;
      [v23 submit:v28];
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __86__PUPhotoEditViewController_trimToolPlayerWrapper_requestAssetWithFilters_completion___block_invoke;
      block[3] = &unk_1E7B80C88;
      v31 = v8;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      v19 = v31;
    }
  }

  else
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __86__PUPhotoEditViewController_trimToolPlayerWrapper_requestAssetWithFilters_completion___block_invoke_1096;
    v26[3] = &unk_1E7B7B8C8;
    v27 = v8;
    [(PUPhotoEditViewController *)self _requestLivePhotoAssetWithFilters:v7 completion:v26];
    v9 = v27;
  }
}

void __86__PUPhotoEditViewController_trimToolPlayerWrapper_requestAssetWithFilters_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v3 = [a2 result:&v8];
  v4 = v8;
  if (v3)
  {
    v5 = [v3 video];
    v6 = [v3 videoComposition];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_2661);
    }

    v7 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v10 = v4;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "Failed to load video: %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __86__PUPhotoEditViewController_trimToolPlayerWrapper_requestAssetWithFilters_completion___block_invoke_1096(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 videoAsset];
  v4 = [v3 videoComposition];

  (*(v2 + 16))(v2, v5, v4);
}

- (void)editValuesCalculatorHasChangedFlashStatus:(id)a3
{
  [(PUPhotoEditToolController *)self->_currentEditingTool editValuesCalculatorHasChangedFlashStatus:a3];

  [(PUPhotoEditViewController *)self _updateToolbarsAnimated:1];
}

- (void)editValuesCalculatorHasChangedImageValues:(id)a3
{
  [(PUPhotoEditToolController *)self->_currentEditingTool editValuesCalculatorHasChangedImageValues:a3];

  [(PUPhotoEditViewController *)self _updateToolbarsAnimated:0];
}

- (void)setLivePhotoVideoEnabled:(BOOL)a3
{
  if ([(PUPhotoEditViewController *)self isLivePhotoVideoEnabled]!= a3)
  {

    [(PUPhotoEditViewController *)self toggleLivePhotoActive];
  }
}

- (BOOL)isLivePhotoVideoEnabled
{
  v3 = [(PUPhotoEditViewController *)self livePhotoModel];

  if (!v3)
  {
    return 0;
  }

  v4 = [(PUPhotoEditViewController *)self livePhotoModel];
  v5 = [v4 isVideoEnabled];

  return v5;
}

- (void)compositionControllerDidChangeForAdjustments:(id)a3
{
  v80 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUPhotoEditViewController *)self adjustmentConstants];
  v6 = v5;
  if (self->_leavingEdit)
  {
    goto LABEL_66;
  }

  v7 = [v5 PILivePhotoKeyFrameAdjustmentKey];
  v8 = [v4 containsObject:v7];

  if (v8)
  {
    if ([(PUPhotoEditViewController *)self gainMapImage])
    {
      v9 = [(PUPhotoEditViewController *)self compositionController];
      v10 = [v9 composition];
      v11 = [v10 objectForKeyedSubscript:@"livePhotoKeyFrame"];

      if (v11)
      {
        [(PUPhotoEditViewController *)self setGainMapImage:0];
      }
    }

    v12 = [(PUPhotoEditViewController *)self valuesCalculator];
    [v12 invalidate];

    v13 = [(PUPhotoEditViewController *)self compositionController];
    v14 = [(PUPhotoEditViewController *)self compositionController];
    v15 = [v14 smartToneAdjustmentControllerCreatingIfNecessary:0];

    if (v15)
    {
      v16 = [v6 PISmartToneAdjustmentKey];
      [v13 modifyAdjustmentWithKey:v16 modificationBlock:&__block_literal_global_1083];
    }

    v17 = [(PUPhotoEditViewController *)self valuesCalculator];
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __74__PUPhotoEditViewController_compositionControllerDidChangeForAdjustments___block_invoke_2;
    v70[3] = &unk_1E7B7DCD8;
    v74 = v15 != 0;
    v71 = v13;
    v72 = v6;
    v73 = v17;
    v18 = v17;
    v19 = v13;
    [v18 precomputeImageValuesWithCompletion:v70];
  }

  v20 = [v6 PICropAdjustmentKey];
  if ([v4 containsObject:v20])
  {
  }

  else
  {
    v21 = [v6 PIOrientationAdjustmentKey];
    v22 = [v4 containsObject:v21];

    if (!v22)
    {
      goto LABEL_15;
    }
  }

  if (self->_currentEditingTool != &self->_cropController->super && [(PUPhotoEditViewController *)self currentAssetNeedsGainMap])
  {
    [(PUPhotoEditViewController *)self _updateGainMap];
  }

LABEL_15:
  v23 = [v6 PIPortraitAdjustmentKey];
  if ([v4 containsObject:v23])
  {
    v24 = [(PUPhotoEditViewController *)self currentAssetNeedsGainMap];

    if (!v24)
    {
      goto LABEL_22;
    }

LABEL_20:
    [(PUPhotoEditViewController *)self _updateGainMap];
    goto LABEL_22;
  }

  v25 = [v6 PIDepthAdjustmentKey];
  if (([v4 containsObject:v25] & 1) == 0)
  {

    goto LABEL_22;
  }

  v26 = [(PUPhotoEditViewController *)self currentAssetNeedsGainMap];

  if (v26)
  {
    goto LABEL_20;
  }

LABEL_22:
  if ([(PUPhotoEditToolController *)self->_currentEditingTool suppressesEditUpdates])
  {
    goto LABEL_45;
  }

  v27 = [(PUPhotoEditViewController *)self editSource];

  if (!v27)
  {
    goto LABEL_45;
  }

  v28 = [v6 PIAutoLoopAdjustmentKey];
  v29 = [v4 containsObject:v28];

  if (v29)
  {
    v30 = [(PUPhotoEditViewController *)self compositionController];
    v31 = [v30 autoLoopAdjustmentController];

    if ([v31 enabled])
    {
      v32 = 2;
    }

    else
    {
      v32 = 1;
    }

    v33 = [(NUMediaView *)self->_mediaView _renderer];
    [v33 setDisplayType:v32];
  }

  v34 = MEMORY[0x1E69BE360];
  v35 = [(PUPhotoEditViewController *)self compositionController];
  v36 = [(PUPhotoEditViewController *)self editSource];
  v37 = [v34 validatedCompositionCopyFor:v35 mediaType:{objc_msgSend(v36, "mediaType")}];

  v38 = [v6 PICropAdjustmentKey];
  if ([v4 containsObject:v38])
  {

LABEL_32:
    v41 = [objc_alloc(MEMORY[0x1E69B3AA8]) initWithComposition:v37];
    [v41 setName:@"PUPhotoEditViewController-compositionControllerDidChangeForAdjustments-GeometryChangesRequest"];
    v69 = 0;
    v42 = [v41 submitSynchronous:&v69];
    v43 = v69;
    v44 = [v42 geometry];

    if (v44)
    {
      [(PUPhotoEditViewController *)self setMediaViewEdgeInsetsUpdateDisableCount:[(PUPhotoEditViewController *)self mediaViewEdgeInsetsUpdateDisableCount]+ 1];
      v45 = [(PUPhotoEditViewController *)self mediaView];
      v46 = [v45 _renderView];
      [v46 setGeometry:v44];

      if (!self->_switchingToolsAnimated)
      {
        [(PUPhotoEditViewController *)self _mediaViewEdgeInsetsWithGeometry:v44];
        [(NUMediaView *)self->_mediaView setEdgeInsets:?];
      }

      [(NUMediaView *)self->_mediaView setComposition:v37];
      [(NUMediaView *)self->_mediaView waitForRender];
      [(PUPhotoEditViewController *)self setMediaViewEdgeInsetsUpdateDisableCount:[(PUPhotoEditViewController *)self mediaViewEdgeInsetsUpdateDisableCount]- 1];
    }

    else
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_2661);
      }

      v47 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        v63 = v47;
        v64 = [v41 name];
        *buf = 138412546;
        v77 = v64;
        v78 = 2112;
        v79 = v43;
        _os_log_error_impl(&dword_1B36F3000, v63, OS_LOG_TYPE_ERROR, "Could not load geometry for request %@: %@", buf, 0x16u);
      }

      [(NUMediaView *)self->_mediaView setComposition:v37];
    }

    goto LABEL_44;
  }

  v39 = [v6 PIOrientationAdjustmentKey];
  v40 = [v4 containsObject:v39];

  if (v40)
  {
    goto LABEL_32;
  }

  [(NUMediaView *)self->_mediaView setComposition:v37];
LABEL_44:
  [(PUPhotoEditViewController *)self _updateRenderedPreview];

LABEL_45:
  [(PUPhotoEditViewController *)self setShouldBePreviewingOriginal:0];
  if (![(PUPhotoEditToolController *)self->_currentEditingTool isActivelyAdjusting])
  {
    [(PUPhotoEditViewController *)self _updateModelDependentControlsAnimated:0];
    [(PUPhotoEditViewController *)self _updateValuesCalculator];
  }

  v48 = [v6 PIAutoLoopAdjustmentKey];
  v49 = [v4 containsObject:v48];

  if (v49)
  {
    [(PUPhotoEditViewController *)self _updateMediaViewPlaybackStyle];
  }

  v50 = [v6 PIMuteAdjustmentKey];
  v51 = [v4 containsObject:v50];

  if (v51)
  {
    [(PUPhotoEditViewController *)self _updateMutedState];
  }

  if ([v4 count] == 1)
  {
    v52 = [v4 firstObject];
  }

  else
  {
    v52 = 0;
  }

  v53 = [v52 isEqualToString:*MEMORY[0x1E69BE048]];
  v54 = [v52 isEqualToString:*MEMORY[0x1E69BDFB0]];
  if ([(PUPhotoEditViewController *)self isStandardVideo]&& !v53 && !v54)
  {
    v55 = [(PUPhotoEditViewController *)self mediaView];
    v56 = [v55 player];
    [v56 pause];
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v57 = [(PUPhotoEditViewController *)self _allTools];
  v58 = [v57 countByEnumeratingWithState:&v65 objects:v75 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v66;
    do
    {
      for (i = 0; i != v59; ++i)
      {
        if (*v66 != v60)
        {
          objc_enumerationMutation(v57);
        }

        [*(*(&v65 + 1) + 8 * i) compositionControllerDidChangeForAdjustments:v4];
      }

      v59 = [v57 countByEnumeratingWithState:&v65 objects:v75 count:16];
    }

    while (v59);
  }

  v62 = [(PUPhotoEditViewController *)self livePhotoModel];
  [v62 compositionDidChange];

  [(PUPhotoEditViewController *)self _updateMainButtonForSaveAsNewClipMenu];
LABEL_66:
}

void __74__PUPhotoEditViewController_compositionControllerDidChangeForAdjustments___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v8 = v1;
    v9 = v2;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__PUPhotoEditViewController_compositionControllerDidChangeForAdjustments___block_invoke_3;
    block[3] = &unk_1E7B809F0;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __74__PUPhotoEditViewController_compositionControllerDidChangeForAdjustments___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) PISmartToneAdjustmentKey];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __74__PUPhotoEditViewController_compositionControllerDidChangeForAdjustments___block_invoke_4;
  v4[3] = &unk_1E7B7B070;
  v5 = *(a1 + 48);
  [v2 modifyAdjustmentWithKey:v3 modificationBlock:v4];
}

void __74__PUPhotoEditViewController_compositionControllerDidChangeForAdjustments___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 statistics];
  v4 = [v3 mutableCopy];

  [v4 removeObjectForKey:@"lightMap"];
  [v2 setStatistics:v4];
}

- (void)compositionController:(id)a3 didUpdateAdjustments:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(PUPhotoEditViewController *)self compositionController];

  if (v7 == v6)
  {
    v8 = [MEMORY[0x1E695DFD8] setWithArray:v9];
    [(PUPhotoEditViewController *)self compositionControllerDidChangeForAdjustments:v8];
  }
}

- (void)compositionController:(id)a3 didUpdateAdjustment:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(PUPhotoEditViewController *)self compositionController];

  if (v7 == v6)
  {
    v8 = [MEMORY[0x1E695DFD8] setWithObject:v9];
    [(PUPhotoEditViewController *)self compositionControllerDidChangeForAdjustments:v8];
  }
}

- (void)compositionController:(id)a3 didRemoveAdjustment:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(PUPhotoEditViewController *)self compositionController];

  if (v7 == v6)
  {
    v8 = [MEMORY[0x1E695DFD8] setWithObject:v9];
    [(PUPhotoEditViewController *)self compositionControllerDidChangeForAdjustments:v8];
  }
}

- (void)compositionController:(id)a3 didAddAdjustment:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(PUPhotoEditViewController *)self compositionController];

  if (v7 == v6)
  {
    v8 = [MEMORY[0x1E695DFD8] setWithObject:v9];
    [(PUPhotoEditViewController *)self compositionControllerDidChangeForAdjustments:v8];
  }
}

- (id)photoEditToolbar:(id)a3 accessibilityHUDItemForButton:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [(PUPhotoEditViewController *)self _allTools];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v18 + 1) + 8 * i) accessibilityHUDItemForButton:v5];
        if (v11)
        {
          v16 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = [v5 titleLabel];
  v6 = [v12 text];

  v13 = [v5 imageView];
  v14 = [v13 image];

  v15 = objc_alloc(MEMORY[0x1E69DC618]);
  v16 = [v15 initWithTitle:v6 image:v14 imageInsets:1 scaleImage:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

LABEL_11:

  return v16;
}

- (id)ppt_renderStatisticsDictionaryForTimeInterval:(double)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = [(_PPTState *)self->_pptState renderStatistics];
  v5 = [v4 count];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        [v14 duration];
        v11 = v11 + v15;
        [v14 prepareDuration];
        v12 = v12 + v16;
        [v14 completeDuration];
        v10 = v10 + v17;
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
  }

  v18 = v5;

  v31[0] = @"neutrinoFPS";
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:v5 / a3];
  v32[0] = v19;
  v32[1] = @"fps";
  v31[1] = @"neutrinoFPSUnits";
  v31[2] = @"neutrinoAveragePrepareDuration";
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v12 / v18];
  v32[2] = v20;
  v32[3] = @"sec";
  v31[3] = @"neutrinoAveragePrepareDurationUnits";
  v31[4] = @"neutrinoAverageRenderDuration";
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:v11 / v18];
  v32[4] = v21;
  v32[5] = @"sec";
  v31[5] = @"neutrinoAverageRenderDurationUnits";
  v31[6] = @"neutrinoAverageCompleteDuration";
  v22 = [MEMORY[0x1E696AD98] numberWithDouble:v10 / v18];
  v32[6] = v22;
  v32[7] = @"sec";
  v31[7] = @"neutrinoAverageCompleteDurationUnits";
  v31[8] = @"neutrinoNumRenders";
  v23 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
  v32[8] = v23;
  v32[9] = @"renders";
  v31[9] = @"neutrinoNumRendersUnits";
  v31[10] = @"neutrinoRenderTimeInterval";
  v24 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v31[11] = @"neutrinoRenderTimeIntervalUnits";
  v32[10] = v24;
  v32[11] = @"sec";
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:12];

  return v25;
}

- (void)ppt_playLivePhotoWithWillBeginPlaybackBlock:(id)a3 didEndPlaybackBlock:(id)a4
{
  v6 = a4;
  [(PUPhotoEditViewController *)self setPpt_willBeginPlaybackBlock:a3];
  [(PUPhotoEditViewController *)self setPpt_didEndPlaybackBlock:v6];

  v7 = [(PUPhotoEditViewController *)self mainLivePhotoView];
  [v7 startPlaybackWithStyle:1];
}

- (void)ppt_replayCleanupBrushStrokeWithCompletionBlock:(id)a3
{
  cleanupController = self->_cleanupController;
  if (cleanupController)
  {
    [(PUCleanupToolController *)cleanupController ppt_replayCleanupBrushStrokeWithCompletionBlock:a3];
  }
}

- (void)ppt_selectStyle:(id)a3 completionBlock:(id)a4
{
  v7 = a4;
  [(PUPhotoStyleToolController *)self->_photoStylesToolController ppt_selectWithStyle:a3];
  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7);
    v6 = v7;
  }
}

- (void)ppt_selectNextLightingEffect:(id)a3
{
  v7 = a3;
  v4 = [(PUPhotoEditPortraitToolController *)self->_portraitToolController lightingControl];
  v5 = [v4 selectedLightingType];
  if (v5 > 6)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1B3D0D368[v5];
  }

  [v4 ppt_selectLightingType:v6];
  if (v7)
  {
    v7[2]();
  }
}

- (void)ppt_selectLightingEffect:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v18 = a4;
  v7 = [(PUPhotoEditPortraitToolController *)self->_portraitToolController lightingControl];
  v8 = [v7 selectedLightingType];
  v9 = [MEMORY[0x1E6993870] displayNameForLightingType:v8];
  v10 = 0;
  while (1)
  {
    v11 = [v9 lowercaseString];
    v12 = [v6 lowercaseString];
    v13 = [v11 isEqualToString:v12];

    if ((v13 & 1) != 0 || v10 > 9)
    {
      break;
    }

    v14 = dispatch_semaphore_create(0);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __70__PUPhotoEditViewController_ppt_selectLightingEffect_completionBlock___block_invoke;
    v19[3] = &unk_1E7B80DD0;
    v20 = v14;
    v15 = v14;
    [(PUPhotoEditViewController *)self ppt_selectNextLightingEffect:v19];
    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    ++v10;
    v16 = [v7 selectedLightingType];
    v17 = [MEMORY[0x1E6993870] displayNameForLightingType:v16];

    v9 = v17;
  }

  if (v18)
  {
    v18[2](v18);
  }
}

- (void)ppt_navigateToPortraitLightingEffects:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__PUPhotoEditViewController_ppt_navigateToPortraitLightingEffects___block_invoke;
  v6[3] = &unk_1E7B80B48;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PUPhotoEditViewController *)self ppt_selectPortraitController:v6];
}

uint64_t __67__PUPhotoEditViewController_ppt_navigateToPortraitLightingEffects___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1648) setToolSelection:1 animated:1];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)ppt_scrollSliderNamed:(id)a3 value:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  adjustmentsController = self->_adjustmentsController;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__PUPhotoEditViewController_ppt_scrollSliderNamed_value_completion___block_invoke;
  v14[3] = &unk_1E7B7C1A0;
  objc_copyWeak(&v17, &location);
  v12 = v9;
  v15 = v12;
  v13 = v10;
  v16 = v13;
  [(PUAdjustmentsToolController *)adjustmentsController ppt_selectSliderNamed:v8 completion:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __68__PUPhotoEditViewController_ppt_scrollSliderNamed_value_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained[204] ppt_visibleScaleValueForSelectedSlider];
  v3 = llround(v2);
  [WeakRetained[204] ppt_valueIncrementForSelectedSlider];
  v5 = (([*(a1 + 32) intValue] - v3) / v4);
  if (v5 < 1)
  {
    if (v5 < 0)
    {
      v7 = 0;
      do
      {
        v8 = objc_loadWeakRetained((a1 + 48));
        [v8 _handleSliderValueDecrease:0];

        --v7;
      }

      while (v7 > v5);
    }
  }

  else
  {
    do
    {
      v6 = objc_loadWeakRetained((a1 + 48));
      [v6 _handleSliderValueIncrease:0];

      --v5;
    }

    while (v5);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

- (void)ppt_scrollBWSlider:(id)a3
{
  pptState = self->_pptState;
  v5 = MEMORY[0x1E695DF70];
  v7 = a3;
  v6 = objc_alloc_init(v5);
  [(_PPTState *)pptState setRenderStatistics:v6];

  [(PUAdjustmentsToolController *)self->_adjustmentsController ppt_selectBWSlider:v7];
}

- (void)ppt_scrollColorSlider:(id)a3
{
  pptState = self->_pptState;
  v5 = MEMORY[0x1E695DF70];
  v7 = a3;
  v6 = objc_alloc_init(v5);
  [(_PPTState *)pptState setRenderStatistics:v6];

  [(PUAdjustmentsToolController *)self->_adjustmentsController ppt_selectColorSlider:v7];
}

- (void)ppt_scrollLightSlider:(id)a3
{
  pptState = self->_pptState;
  v5 = MEMORY[0x1E695DF70];
  v7 = a3;
  v6 = objc_alloc_init(v5);
  [(_PPTState *)pptState setRenderStatistics:v6];

  [(PUAdjustmentsToolController *)self->_adjustmentsController ppt_selectLightSlider:v7];
}

- (void)ppt_applyAutoenhance:(id)a3
{
  v5 = a3;
  v4 = [(PUPhotoEditViewController *)self compositionController];
  if (v4 && [MEMORY[0x1E69C4260] isAutoEnhanceEnabledForCompositionController:v4])
  {
    [(PUPhotoEditViewController *)self _handleAutoEnhanceButton:self];
  }

  [(PUPhotoEditViewController *)self setPpt_afterAutoenhanceBlock:v5];
  [(PUPhotoEditViewController *)self _handleAutoEnhanceButton:self];
}

- (void)ppt_selectCleanupController:(id)a3
{
  [(PUPhotoEditToolController *)self->_cleanupController setPpt_didBecomeActiveToolBlock:a3];
  cleanupController = self->_cleanupController;

  [(PUPhotoEditViewController *)self switchToEditingTool:cleanupController animated:1];
}

- (void)ppt_selectStyleController:(id)a3
{
  [(PUPhotoEditToolController *)self->_photoStylesToolController setPpt_didBecomeActiveToolBlock:a3];
  photoStylesToolController = self->_photoStylesToolController;

  [(PUPhotoEditViewController *)self switchToEditingTool:photoStylesToolController animated:1];
}

- (void)ppt_selectPortraitController:(id)a3
{
  [(PUPhotoEditToolController *)self->_portraitToolController setPpt_didBecomeActiveToolBlock:a3];
  portraitToolController = self->_portraitToolController;

  [(PUPhotoEditViewController *)self switchToEditingTool:portraitToolController animated:1];
}

- (void)ppt_selectPerspectiveController:(id)a3
{
  [(PUPhotoEditToolController *)self->_cropController setPpt_didBecomeActiveToolBlock:a3];
  cropController = self->_cropController;

  [(PUPhotoEditViewController *)self switchToEditingTool:cropController animated:1];
}

- (void)ppt_selectCropController:(id)a3
{
  [(PUPhotoEditToolController *)self->_cropController setPpt_didBecomeActiveToolBlock:a3];
  cropController = self->_cropController;

  [(PUPhotoEditViewController *)self switchToEditingTool:cropController animated:1];
}

- (void)ppt_selectAdjustmentsController:(id)a3
{
  [(PUPhotoEditToolController *)self->_adjustmentsController setPpt_didBecomeActiveToolBlock:a3];
  adjustmentsController = self->_adjustmentsController;

  [(PUPhotoEditViewController *)self switchToEditingTool:adjustmentsController animated:1];
}

- (void)ppt_selectFiltersController:(id)a3
{
  v4 = a3;
  v5 = self->_pptState;
  [(_PPTState *)v5 enterDispatchGroup];
  filtersController = self->_filtersController;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __57__PUPhotoEditViewController_ppt_selectFiltersController___block_invoke;
  v12 = &unk_1E7B80B48;
  v13 = v5;
  v14 = v4;
  v7 = v4;
  v8 = v5;
  [(PUPhotoEditToolController *)filtersController setPpt_didBecomeActiveToolBlock:&v9];
  [(PUPhotoEditViewController *)self switchToEditingTool:self->_filtersController animated:1, v9, v10, v11, v12];
}

void __57__PUPhotoEditViewController_ppt_selectFiltersController___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __57__PUPhotoEditViewController_ppt_selectFiltersController___block_invoke_2;
  v2[3] = &unk_1E7B80C88;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 groupNotifyOnQueue:MEMORY[0x1E69E96A0] withBlock:v2];
}

- (void)_ppt_conditionallyExecuteAfterRender
{
  if ([(PUPhotoEditViewController *)self _isReadyToRender]&& [(_PPTState *)self->_pptState hasRendered])
  {
    v3 = self;
    objc_sync_enter(v3);
    ppt_afterRenderBlock = v3->_ppt_afterRenderBlock;
    if (ppt_afterRenderBlock)
    {
      v5 = _Block_copy(ppt_afterRenderBlock);
      v6 = v3->_ppt_afterRenderBlock;
      v3->_ppt_afterRenderBlock = 0;
    }

    else
    {
      v5 = 0;
    }

    objc_sync_exit(v3);

    if (v5)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __65__PUPhotoEditViewController__ppt_conditionallyExecuteAfterRender__block_invoke;
      v7[3] = &unk_1E7B80B48;
      v7[4] = v3;
      v8 = v5;
      dispatch_async(MEMORY[0x1E69E96A0], v7);
    }
  }
}

uint64_t __65__PUPhotoEditViewController__ppt_conditionallyExecuteAfterRender__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 1688) hasRendered];
  if (result)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

- (void)ppt_executeAfterRender:(id)a3
{
  [(PUPhotoEditViewController *)self setPpt_afterRenderBlock:a3];

  [(PUPhotoEditViewController *)self _ppt_conditionallyExecuteAfterRender];
}

- (void)ppt_revertWithCompletion:(id)a3
{
  [(PUPhotoEditViewController *)self setPpt_exitActionCompleteNotificationBlock:a3];

  [(PUPhotoEditViewController *)self _performRevertAction];
}

- (void)ppt_saveWithCompletion:(id)a3
{
  [(PUPhotoEditViewController *)self setPpt_exitActionCompleteNotificationBlock:a3];

  [(PUPhotoEditViewController *)self _handleDoneButton:self];
}

- (void)ppt_cancelEditsWithCompletion:(id)a3
{
  [(PUPhotoEditViewController *)self setPpt_exitActionCompleteNotificationBlock:a3];

  [(PUPhotoEditViewController *)self _performDiscardAction];
}

- (void)ppt_setEditIsReadyNotificationBlock:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4 && (-[PUPhotoEditViewController enterEditTimeInterval](self, "enterEditTimeInterval"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 state], v5, v4 = v9, v6 == 2))
  {
    v9[2]();
  }

  else
  {
    v7 = [v4 copy];
    ppt_editIsReadyNotificationBlock = self->_ppt_editIsReadyNotificationBlock;
    self->_ppt_editIsReadyNotificationBlock = v7;
  }
}

- (void)_didEndAutoCalc
{
  v2 = [(PUPhotoEditViewController *)self autoCalcInterval];
  [v2 endInterval];
}

- (void)_didStartAutoCalc
{
  v2 = [(PUPhotoEditViewController *)self autoCalcInterval];
  [v2 beginInterval];
}

- (void)_didEndResourceLoading
{
  v2 = [(PUPhotoEditViewController *)self resourceLoadingInterval];
  [v2 endInterval];
}

- (void)_didStartResourceLoading
{
  v2 = [(PUPhotoEditViewController *)self resourceLoadingInterval];
  [v2 beginInterval];
}

- (void)_didEndEnterEdit
{
  v3 = [(PUPhotoEditViewController *)self enterEditTimeInterval];
  v4 = [v3 state];

  if (v4 == 1)
  {
    v5 = [(PUPhotoEditViewController *)self enterEditTimeInterval];
    [v5 endInterval];

    v6 = [(PUPhotoEditViewController *)self sceneHUD];
    [v6 update];

    v7 = [(PUPhotoEditViewController *)self enterEditTimeInterval];
    [v7 duration];
    v9 = v8;

    v10 = [(PUPhotoEditViewController *)self enterEditEventBuilder];
    [v10 setEnterEditDuration:v9];
    v11 = [(PUPhotoEditViewController *)self resourceCheckingInterval];
    [v11 duration];
    [v10 setResourceCheckingDuration:?];

    v12 = [(PUPhotoEditViewController *)self resourceDownloadInterval];
    [v12 duration];
    [v10 setResourceDownloadDuration:?];

    v13 = [(PUPhotoEditViewController *)self resourceLoadingInterval];
    [v13 duration];
    [v10 setResourceLoadingDuration:?];

    v14 = [(PUPhotoEditViewController *)self resourceProcessingInterval];
    [v14 duration];
    [v10 setResourceProcessingDuration:?];

    v15 = [(PUPhotoEditViewController *)self autoCalcInterval];
    [v15 duration];
    [v10 setAutoCalcDuration:?];

    v16 = [v10 buildEvent];
    [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.edit.perf.enteredit" withPayload:v16];
  }

  v17 = [(PUPhotoEditViewController *)self ppt_editIsReadyNotificationBlock];

  if (v17)
  {
    v18 = [(PUPhotoEditViewController *)self ppt_editIsReadyNotificationBlock];
    v18[2]();

    [(PUPhotoEditViewController *)self setPpt_editIsReadyNotificationBlock:0];
  }
}

- (void)_didStartEnterEdit
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(PUPhotoEditViewController *)self enterEditTimeInterval];
  [v3 beginInterval];

  v4 = [(PUPhotoEditViewController *)self editSessionTimeInterval];
  [v4 beginInterval];

  v5 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[PUPhotoEditViewController isFirstSinceBoot](self, "isFirstSinceBoot")}];
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[PUPhotoEditViewController isFirstSinceLaunch](self, "isFirstSinceLaunch")}];
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "FirstSinceBoot=%@, FirstSinceLaunch=%@", &v8, 0x16u);
  }
}

- (id)_toolControllerForAdjustmentCategory:(int64_t)a3
{
  v4 = 0;
  if (a3 <= 5)
  {
    if (a3 >= 4)
    {
      if (a3 == 4)
      {
        v5 = 1616;
      }

      else
      {
        if (a3 != 5)
        {
          goto LABEL_23;
        }

        v5 = 1656;
      }
    }

    else
    {
      v5 = 1632;
    }

    goto LABEL_21;
  }

  if (a3 <= 9)
  {
    if ((a3 - 6) >= 3)
    {
      if (a3 != 9)
      {
        goto LABEL_23;
      }

      v5 = 1648;
    }

    else
    {
      v5 = 1608;
    }

    goto LABEL_21;
  }

  if (a3 > 11)
  {
    if (a3 == 12)
    {
      v5 = 1640;
    }

    else
    {
      if (a3 != 13)
      {
        goto LABEL_23;
      }

      v5 = 1672;
    }

    goto LABEL_21;
  }

  if (a3 != 10)
  {
    v5 = 1624;
LABEL_21:
    v6 = *(&self->super.super.super.isa + v5);
    goto LABEL_22;
  }

  v6 = [(PUPhotoEditViewController *)self _defaultInitialToolController];
LABEL_22:
  v4 = v6;
LABEL_23:
  if (![(NSArray *)self->__allTools containsObject:v4])
  {
    v7 = self->_adjustmentsController;

    v4 = v7;
  }

  return v4;
}

- (void)fulfillPendingEditsRequest:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotoEditViewController *)self photo];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(PUPhotoEditToolController *)self->_currentEditingTool compositionController];
  if (v7 && (v8 = v7, v9 = [(PUPhotoEditToolController *)self->_currentEditingTool canBecomeActiveTool], v8, v9))
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __56__PUPhotoEditViewController_fulfillPendingEditsRequest___block_invoke;
    aBlock[3] = &unk_1E7B809F0;
    aBlock[4] = self;
    v10 = v4;
    v20 = v10;
    v21 = v6;
    v11 = _Block_copy(aBlock);
    v12 = [v10 adjustments];
    v13 = [v12 lastObject];
    v14 = [v13 category];

    if (v14 == 10)
    {
      [(PUPhotoEditViewController *)self _presentMarkup];
      [v10 finishedWithSuccess:1 error:0];
    }

    else
    {
      v16 = [(PUPhotoEditViewController *)self _toolControllerForAdjustmentCategory:v14];
      [(UIViewController *)v16 configureForAdjustmentCategory:v14];
      if (self->_currentTool == v16)
      {
        v11[2](v11);
      }

      else
      {
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __56__PUPhotoEditViewController_fulfillPendingEditsRequest___block_invoke_4;
        v17[3] = &unk_1E7B80C88;
        v18 = v11;
        [(PUPhotoEditViewController *)self switchToEditingTool:v16 animated:1 completionHandler:v17];
      }
    }
  }

  else
  {
    v15 = [PUPhotoEditPendingEditsRequest errorWithCode:3 debugDescription:@"Editing resources have not loaded"];
    [v4 finishedWithSuccess:0 error:v15];
  }
}

void __56__PUPhotoEditViewController_fulfillPendingEditsRequest___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v16 = [*(a1 + 32) compositionController];
  v14 = [v16 composition];
  v2 = dispatch_group_create();
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 1;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__58504;
  v31[4] = __Block_byref_object_dispose__58505;
  v32 = 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [*(a1 + 40) adjustments];
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v4)
  {
    v5 = *v28;
    obj = v3;
    do
    {
      v6 = 0;
      do
      {
        if (*v28 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * v6);
        dispatch_group_enter(v2);
        v8 = [*(a1 + 32) valuesCalculator];
        v9 = *(a1 + 48);
        v10 = *(a1 + 32);
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __56__PUPhotoEditViewController_fulfillPendingEditsRequest___block_invoke_2;
        v23[3] = &unk_1E7B7B858;
        v25 = v33;
        v26 = v31;
        v24 = v2;
        [v7 applyToCompositionController:v16 valuesCalculator:v8 asset:v9 livePortraitBehaviorDelegate:v10 completionHandler:v23];

        ++v6;
      }

      while (v4 != v6);
      v3 = obj;
      v4 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v4);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PUPhotoEditViewController_fulfillPendingEditsRequest___block_invoke_3;
  block[3] = &unk_1E7B7B880;
  v11 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v18 = v16;
  v19 = v14;
  v20 = v11;
  v21 = v33;
  v22 = v31;
  v12 = v14;
  v13 = v16;
  dispatch_group_notify(v2, MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(v33, 8);
}

void __56__PUPhotoEditViewController_fulfillPendingEditsRequest___block_invoke_4(uint64_t a1)
{
  v2 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PUPhotoEditViewController_fulfillPendingEditsRequest___block_invoke_5;
  block[3] = &unk_1E7B80C88;
  v4 = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

void __56__PUPhotoEditViewController_fulfillPendingEditsRequest___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  v7 = v6;
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    if (v6)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void __56__PUPhotoEditViewController_fulfillPendingEditsRequest___block_invoke_3(uint64_t a1)
{
  v3 = [*(a1 + 32) undoManager];
  if (v3 && ([v3 isUndoing] & 1) == 0 && (objc_msgSend(v3, "isRedoing") & 1) == 0)
  {
    v2 = [objc_alloc(MEMORY[0x1E69C34C8]) initWithCompositionController:*(a1 + 40) sourceComposition:*(a1 + 48)];
    [v2 setLocalizedActionName:@"Edit Intent"];
    [v2 registerWithUndoManager:v3];
  }

  [*(a1 + 56) finishedWithSuccess:*(*(*(a1 + 64) + 8) + 24) error:*(*(*(a1 + 72) + 8) + 40)];
}

- (void)fulfillPendingEditsRequestIfNecessary
{
  v3 = [(PUPhotoEditViewController *)self initialPendingEditsRequest];

  if (v3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__PUPhotoEditViewController_fulfillPendingEditsRequestIfNecessary__block_invoke;
    block[3] = &unk_1E7B80DD0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __66__PUPhotoEditViewController_fulfillPendingEditsRequestIfNecessary__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) initialPendingEditsRequest];
  v3 = v2;
  if (v2)
  {
    v2 = *(a1 + 32);
    if (v2[125])
    {
      if (!v2[184])
      {
        v5 = v3;
        [v2 fulfillPendingEditsRequest:v3];
        v2 = [*(a1 + 32) setInitialPendingEditsRequest:0];
        v3 = v5;
      }
    }
  }

  return MEMORY[0x1EEE66BB8](v2, v3);
}

- (void)_didEndExitActionWithSessionKeys:(id)a3 initialComposition:(id)a4
{
  v95 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PUPhotoEditViewController *)self exitEditTimeInterval];
  v9 = [v8 state];

  v10 = [(PUPhotoEditViewController *)self exitEditTimeInterval];
  [v10 endInterval];

  v11 = [(PUPhotoEditViewController *)self ppt_exitActionCompleteNotificationBlock];

  if (v11)
  {
    v12 = [(PUPhotoEditViewController *)self ppt_exitActionCompleteNotificationBlock];
    v12[2]();

    [(PUPhotoEditViewController *)self setPpt_exitActionCompleteNotificationBlock:0];
  }

  if (v9 == 1)
  {
    v13 = [(PUPhotoEditViewController *)self exitEditEventBuilder];
    v14 = [(PUPhotoEditViewController *)self compositionController];
    [v13 setCompositionController:v14];

    v15 = [(PUPhotoEditViewController *)self exitEditTimeInterval];
    [v15 duration];
    [v13 setExitEditDuration:?];

    v16 = PUCheckAndNoteIsFirstExitFromEditSinceLaunch_isFirstUseSinceLaunch;
    PUCheckAndNoteIsFirstExitFromEditSinceLaunch_isFirstUseSinceLaunch = 1;
    [v13 setFirstSinceLaunch:(v16 & 1) == 0];
    v80 = v13;
    v17 = [v13 buildEvent];
    v18 = [v17 mutableCopy];

    v81 = v7;
    v82 = v6;
    v84 = v18;
    if (v6)
    {
      v79 = self;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      obj = v6;
      v19 = [obj countByEnumeratingWithState:&v89 objects:v94 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v90;
        v22 = MEMORY[0x1E695E118];
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v90 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v24 = [*(*(&v89 + 1) + 8 * i) substringFromIndex:{26, v79}];
            v25 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
            v26 = [v25 invertedSet];

            v27 = [v24 componentsSeparatedByCharactersInSet:v26];
            v28 = [v27 componentsJoinedByString:@"_"];

            v18 = v84;
            [v84 setObject:v22 forKeyedSubscript:v28];
          }

          v20 = [obj countByEnumeratingWithState:&v89 objects:v94 count:16];
        }

        while (v20);
      }

      self = v79;
      v29 = [(PUPhotoEditViewController *)v79 aggregateSession];
      v30 = [v29 pluginIdentifier];

      v7 = v81;
      if (v30)
      {
        v31 = [(PUPhotoEditViewController *)v79 aggregateSession];
        v32 = [v31 pluginIdentifier];
        [v18 setObject:v32 forKeyedSubscript:@"pluginIdentifier"];
      }
    }

    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    [v18 setObject:v34 forKeyedSubscript:*MEMORY[0x1E6991E20]];

    v35 = [(PUPhotoEditViewController *)self photo];
    [v18 setObject:v35 forKeyedSubscript:*MEMORY[0x1E6991E18]];

    [MEMORY[0x1E6991F28] sendEvent:*MEMORY[0x1E6991C88] withPayload:v18];
    v36 = objc_alloc(MEMORY[0x1E69C4288]);
    v37 = [(PUPhotoEditViewController *)self enterEditEventBuilder];
    v38 = [(PUPhotoEditViewController *)self exitEditEventBuilder];
    v39 = [v36 initWithLegacyEnterEditEvent:v37 andExitEvent:v38];
    [(PUPhotoEditViewController *)self setEditSessionEventBuilder:v39];

    v40 = [(PUPhotoEditViewController *)self editSessionTimeInterval];
    [v40 duration];
    v42 = v41;
    v43 = [(PUPhotoEditViewController *)self editSessionEventBuilder];
    [v43 setEditSessionDuration:v42];

    v44 = v7;
    if (!v7)
    {
      v44 = [(PUPhotoEditViewController *)self uneditedComposition];
    }

    v45 = [(PUPhotoEditViewController *)self editSessionEventBuilder];
    [v45 setInitialComposition:v44];

    if (!v7)
    {
    }

    v46 = [(PUPhotoEditViewController *)self adjustmentIdentifierAndVersion];
    v47 = [(PUPhotoEditViewController *)self editSessionEventBuilder];
    [v47 setAdjustmentIdentifierAndVersion:v46];

    v48 = [(PUPhotoEditViewController *)self _isQuickCrop];
    v49 = [(PUPhotoEditViewController *)self editSessionEventBuilder];
    [v49 setSessionEntryPoint:v48];

    if ([(PUPhotoEditViewController *)self _isQuickCrop])
    {
      v50 = [(PUPhotoEditViewController *)self quickCropContext];
      [v50 selectedAspectRatio];
      v52 = v51;
      v54 = v53;
      v55 = [(PUPhotoEditViewController *)self editSessionEventBuilder];
      [v55 setQuickCropSelectedAspectRatio:{v52, v54}];
    }

    v56 = [(PUCleanupToolController *)self->_cleanupController segmentationCount];
    v57 = [(PUPhotoEditViewController *)self editSessionEventBuilder];
    [v57 setSegmentationCount:v56];

    v58 = [(PUCleanupToolController *)self->_cleanupController consecutiveHighRateInteractions];
    v59 = [(PUPhotoEditViewController *)self editSessionEventBuilder];
    [v59 setNumberOfConsecutiveInpaints:v58];

    v60 = [(PUCleanupToolController *)self->_cleanupController maxInteractionSeriesCumulativePixelCount];
    v61 = [(PUPhotoEditViewController *)self editSessionEventBuilder];
    [v61 setCumulativePixelsOfConsecutiveInpaints:v60];

    v62 = [(PUCleanupToolController *)self->_cleanupController highestEncounteredThermalState];
    v63 = [(PUPhotoEditViewController *)self editSessionEventBuilder];
    [v63 setHighestEncounteredThermalStateInCleanup:v62];

    v64 = self;
    v65 = [(PUPhotoEditViewController *)self _allTools];
    v66 = [MEMORY[0x1E695DF90] dictionary];
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v67 = v65;
    v68 = [v67 countByEnumeratingWithState:&v85 objects:v93 count:16];
    if (v68)
    {
      v69 = v68;
      v70 = *v86;
      do
      {
        for (j = 0; j != v69; ++j)
        {
          if (*v86 != v70)
          {
            objc_enumerationMutation(v67);
          }

          v72 = *(*(&v85 + 1) + 8 * j);
          [v72 timeSpentInTool];
          if (v73 > 0.0)
          {
            v74 = [MEMORY[0x1E696AD98] numberWithDouble:?];
            v75 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v72, "toolControllerTag")}];
            [v66 setObject:v74 forKeyedSubscript:v75];
          }
        }

        v69 = [v67 countByEnumeratingWithState:&v85 objects:v93 count:16];
      }

      while (v69);
    }

    v76 = [(PUPhotoEditViewController *)v64 editSessionEventBuilder];
    [v76 setTimeSpentInEachTab:v66];

    v77 = [(PUPhotoEditViewController *)v64 editSessionEventBuilder];
    v78 = [v77 buildEvent];

    [MEMORY[0x1E6991F28] sendEvent:*MEMORY[0x1E69C4348] withPayload:v78];
    v7 = v81;
    v6 = v82;
  }

  [MEMORY[0x1E69B3A58] reapAllStoragePools];
}

- (void)_didStartExitAction
{
  v3 = [(PUPhotoEditViewController *)self exitEditTimeInterval];
  [v3 beginInterval];

  v4 = [(PUPhotoEditViewController *)self editSessionTimeInterval];
  [v4 endInterval];

  self->_leavingEdit = 1;
}

- (void)_hideEphemeralViews:(BOOL)a3
{
  [(UIImageView *)self->_placeholderImageView setHidden:a3];

  [(PUPhotoEditViewController *)self _updateRenderedPreview];
}

- (void)oneUpAssetTransitionDidEnd:(id)a3
{
  [(PUPhotoEditViewController *)self _hideEphemeralViews:0];
  v5 = [(PUPhotoEditViewController *)self px_imageModulationManager];
  v4 = [(PUPhotoEditViewController *)self imageLayerModulator];
  [v5 checkInImageLayerModulator:v4];
}

- (void)oneUpAssetTransition:(id)a3 animateTransitionWithContext:(id)a4 duration:(double)a5 completion:(id)a6
{
  v9 = a4;
  v60 = a6;
  v10 = [v9 transitionInfo];
  if ([(PUPhotoEditViewController *)self isStandardVideo])
  {
    v77 = 0uLL;
    v78 = 0;
    if (v10 && ([v10 seekTime], (BYTE12(v77) & 1) != 0))
    {
      v75 = v77;
      v11 = v78;
    }

    else
    {
      v75 = *MEMORY[0x1E6960CC0];
      v11 = *(MEMORY[0x1E6960CC0] + 16);
    }

    v76 = v11;
    v73 = v75;
    v74 = v11;
    [(PUPhotoEditViewController *)self setInitialSeekTime:&v73];
  }

  v12 = [(PUPhotoEditViewController *)self photo];
  v13 = [v12 mediaSubtypes];

  v14 = [v10 image];
  [(PUPhotoEditViewController *)self setPlaceholderImage:v14];

  v15 = [v10 imageLayerModulator];
  -[PUPhotoEditViewController setGainMapImage:](self, "setGainMapImage:", [v15 gainMapImage]);
  [v15 gainMapValue];
  [(PUPhotoEditViewController *)self setGainMapValue:?];
  [(PUPhotoEditViewController *)self _updatePlaceholderImage];
  v16 = [v9 containerView];
  v17 = [v9 snapshotView];
  v18 = [(PUPhotoEditViewController *)self view];
  [v18 layoutIfNeeded];
  [v18 setAlpha:0.0];
  if ([(PUPhotoEditViewController *)self _isQuickCrop])
  {
    v19 = [v10 image];
    [v19 size];
    v21 = v20;
    v23 = v22;

    v24 = v21 / v23;
    [v16 frame];
    v27 = v26;
    if (v24 >= v25 / v26)
    {
      v31 = v24 * v26;
      v30 = (v25 - v24 * v26) * 0.5;
      v29 = 0.0;
    }

    else
    {
      v28 = v25 / v24;
      v29 = (v26 - v25 / v24) * 0.5;
      v30 = 0.0;
      v31 = v25;
      v27 = v28;
    }
  }

  else
  {
    [v17 frame];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = [v9 fromView];
    [v16 convertRect:v40 fromView:{v33, v35, v37, v39}];
    v30 = v41;
    v29 = v42;
    v31 = v43;
    v27 = v44;
  }

  v45 = (v13 >> 20) & 1;
  [v17 setFrame:{v30, v29, v31, v27}];
  [v16 insertSubview:v17 aboveSubview:self->_mediaView];
  [(PUPhotoEditViewController *)self previewViewFrame];
  [v16 convertRect:v18 fromView:?];
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  [(PUPhotoEditViewController *)self _hideEphemeralViews:1];
  v54 = [PUInterfaceManager beginDisablingUserInteractionForReason:7];
  v55 = MEMORY[0x1E69DD250];
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __99__PUPhotoEditViewController_oneUpAssetTransition_animateTransitionWithContext_duration_completion___block_invoke;
  v66[3] = &unk_1E7B7F248;
  v69 = v47;
  v70 = v49;
  v71 = v51;
  v72 = v53;
  v67 = v17;
  v68 = v18;
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __99__PUPhotoEditViewController_oneUpAssetTransition_animateTransitionWithContext_duration_completion___block_invoke_2;
  v61[3] = &unk_1E7B7B830;
  v61[4] = self;
  v62 = v67;
  v65 = v45;
  v63 = v54;
  v64 = v60;
  v56 = v60;
  v57 = v54;
  v58 = v67;
  v59 = v18;
  [v55 animateWithDuration:v66 animations:v61 completion:a5];
}

uint64_t __99__PUPhotoEditViewController_oneUpAssetTransition_animateTransitionWithContext_duration_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

uint64_t __99__PUPhotoEditViewController_oneUpAssetTransition_animateTransitionWithContext_duration_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _hideEphemeralViews:0];
  [*(a1 + 40) removeFromSuperview];
  if (*(a1 + 64) == 1)
  {
    [*(*(a1 + 32) + 1472) bounds];
    [*(a1 + 40) setFrame:?];
    [*(*(a1 + 32) + 1472) addSubview:*(a1 + 40)];
  }

  [PUInterfaceManager endDisablingUserInteraction:*(a1 + 48)];
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (id)oneUpAssetTransition:(id)a3 adjustTransitionInfo:(id)a4
{
  v5 = a4;
  if ([(PUPhotoEditViewController *)self _isQuickCrop])
  {
    v6 = [(PUPhotoEditViewController *)self quickCropContext];
    v7 = [v6 applyCropToAssetTransitionInfo:v5];
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)oneUpAssetTransition:(id)a3 requestTransitionContextWithCompletion:(id)a4
{
  v5 = a4;
  v6 = [(PUPhotoEditViewController *)self view];
  [v6 layoutIfNeeded];

  v7 = [(PUPhotoEditViewController *)self view];
  [(PUPhotoEditViewController *)self _oneUpTransitionPlaceholderViewFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (!-[PUPhotoEditViewController isStandardVideo](self, "isStandardVideo") || (-[PUPhotoEditViewController mediaView](self, "mediaView"), v16 = objc_claimAutoreleasedReturnValue(), [v16 _videoPlayerView], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "snapshotViewAfterScreenUpdates:", 0), v18 = objc_claimAutoreleasedReturnValue(), v17, v16, objc_msgSend(v18, "setFrame:", v9, v11, v13, v15), !v18))
  {
    v19 = [(PUPhotoEditViewController *)self _currentViewContentsForDismissTransition];
    v18 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v9, v11, v13, v15}];
    [v18 setContentMode:2];
    v20 = [v18 layer];
    [v20 setContents:v19];
  }

  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __89__PUPhotoEditViewController_oneUpAssetTransition_requestTransitionContextWithCompletion___block_invoke;
  v28 = &unk_1E7B7B808;
  v21 = v18;
  v29 = v21;
  v30 = self;
  v22 = [PUAssetTransitionInfo assetTransitionInfoWithConfigurationBlock:&v25];
  v23 = [PUOneUpAssetTransitionContext oneUpAssetTransitionContextWithContainerView:0 fromView:v7 snapshotView:v21 transitionInfo:v22, v25, v26, v27, v28];
  v24 = [(PUPhotoEditViewController *)self executedSessionAction];
  [v23 setExecutedAction:v24];

  if (v5)
  {
    v5[2](v5, v23);
  }
}

void __89__PUPhotoEditViewController_oneUpAssetTransition_requestTransitionContextWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 setSnapshotView:v3];
  v4 = [*(a1 + 40) photo];
  [v5 setAsset:v4];

  [v5 setAllowAutoPlay:{objc_msgSend(*(a1 + 40), "isLoopingVideo")}];
}

- (void)didFinishWithChanges:(BOOL)a3
{
  v3 = a3;
  if (!a3)
  {
    [(PUPhotoEditViewController *)self _cancelInProgressSaveRequest];
  }

  v5 = [(PUPhotoEditViewController *)self photo];
  [(PUPhotoEditViewController *)self didFinishWithAsset:v5 savedChanges:v3];

  pptState = self->_pptState;

  [(_PPTState *)pptState setHasRendered:0];
}

- (void)didFinishWithAsset:(id)a3 savedChanges:(BOOL)a4
{
  v4 = a4;
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (v4)
    {
      v8 = @"YES";
    }

    *buf = 138412290;
    *&buf[4] = v8;
    _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "didFinishWithAsset - saved changes: %@", buf, 0xCu);
  }

  v9 = [(PUPhotoEditViewController *)self cancelConfirmationAlert];
  if (v9)
  {
    v10 = v9;
    v11 = [(PUPhotoEditViewController *)self cancelConfirmationAlert];
    v12 = [(PUPhotoEditViewController *)self presentedViewController];

    if (v11 == v12)
    {
      v13 = [(PUPhotoEditViewController *)self presentedViewController];
      [v13 dismissViewControllerAnimated:1 completion:0];

      [(PUPhotoEditViewController *)self setCancelConfirmationAlert:0];
    }
  }

  v14 = [(PUPhotoEditViewController *)self sessionDelegate];
  [v14 photoEditController:self didFinishEditingSessionForAsset:v6 completed:v4];
  v15 = [(PUPhotoEditViewController *)self isStandardVideo];
  v16 = [(PUPhotoEditViewController *)self presentationDelegate];
  v17 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:v15];
    *buf = 138412802;
    *&buf[4] = v14;
    *&buf[12] = 2112;
    *&buf[14] = v16;
    *&buf[22] = 2112;
    v26 = v18;
    _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_DEFAULT, "didFinishWithAsset - sessionDelegate: %@, presentationDelegate: %@, isStandardVideo: %@", buf, 0x20u);
  }

  if (v15)
  {
    v19 = [v6 modificationDate];
    v20 = [v19 dateByAddingTimeInterval:-1.0];

    memset(buf, 0, sizeof(buf));
    v21 = [(NUMediaView *)self->_mediaView player];
    v22 = v21;
    if (v21)
    {
      [v21 currentTime];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    if (self->_inProgressSaveIsDeferredRender)
    {
      *buf = *MEMORY[0x1E6960C70];
      *&buf[16] = *(MEMORY[0x1E6960C70] + 16);
    }

    v23 = *buf;
    v24 = *&buf[16];
    [v16 editController:self didFinishPreparingForTransitionAfterEditingVideo:v6 modificationDate:v20 seekTime:&v23];
  }

  else
  {
    [v16 editController:self didFinishPreparingForTransitionAfterEditingPhoto:v6];
  }
}

- (void)editPluginSession:(id)a3 didEndWithCompletionType:(unint64_t)a4 forPluginIdentifier:(id)a5
{
  v27 = a3;
  v8 = a5;
  if (self->_pluginFullSizeImageURL)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AC08]);
    [v9 removeItemAtURL:self->_pluginFullSizeImageURL error:0];

    pluginFullSizeImageURL = self->_pluginFullSizeImageURL;
    self->_pluginFullSizeImageURL = 0;
  }

  if (MEMORY[0x1B8C6D660]())
  {
    if ([(PUPhotoEditViewController *)self layoutOrientation]!= 1)
    {
      v11 = +[PUPhotoEditProtoSettings sharedInstance];
      v12 = [v11 imageStartsZoomedIn];

      if (v12)
      {
        v13 = [(NUMediaView *)self->_mediaView _renderView];
        [v13 bounds];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;

        mediaView = self->_mediaView;
        [(NUMediaView *)mediaView minimumZoomScale];
        [(NUMediaView *)mediaView setZoomScale:0 animated:?];
        [(NUMediaView *)self->_mediaView zoomToRect:0 animated:v15, v17, v19, v21];
      }
    }
  }

  v23 = [(PUPhotoEditViewController *)self aggregateSession];
  [v23 setPluginIdentifier:v8];

  if (a4 == 3)
  {
    v24 = [(PUPhotoEditViewController *)self view];
    v25 = [v24 superview];
    v26 = [v25 undoManager];

    [v26 removeAllActions];
  }
}

- (void)editPluginSessionWillBegin:(id)a3
{
  v3 = [(PUPhotoEditViewController *)self aggregateSession];
  [v3 setPluginStarted:1];
}

- (void)_updatePenultimateAvailableWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E6978868]);
  [v5 setVersion:16];
  v6 = [(PUPhotoEditViewController *)self mediaProvider];
  v7 = [(PUPhotoEditViewController *)self photo];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__PUPhotoEditViewController__updatePenultimateAvailableWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E7B7BC68;
  v11[4] = self;
  v12 = v4;
  v8 = *MEMORY[0x1E695F060];
  v9 = *(MEMORY[0x1E695F060] + 8);
  v10 = v4;
  [v6 requestImageForAsset:v7 targetSize:0 contentMode:v5 options:v11 resultHandler:{v8, v9}];
}

void __78__PUPhotoEditViewController__updatePenultimateAvailableWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6978B30]];
  v5 = [v4 baseVersion] == 1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PUPhotoEditViewController__updatePenultimateAvailableWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E7B7E720;
  v6 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __78__PUPhotoEditViewController__updatePenultimateAvailableWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setPenultimateAvailable:*(a1 + 48)];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_setupVideoPluginSession
{
  v3 = objc_alloc_init(PUVideoEditPluginSession);
  [(PUEditPluginSession *)v3 setDataSource:self];
  [(PUEditPluginSession *)v3 setDelegate:self];
  [(PUVideoEditPluginSession *)v3 setAllowLoopingVideoExtensions:[(PUPhotoEditViewController *)self isLoopingVideo]];
  pluginSession = self->_pluginSession;
  self->_pluginSession = &v3->super;
}

- (void)_setupImagePluginSession
{
  v3 = objc_alloc_init(PUImageEditPluginSession);
  [(PUEditPluginSession *)v3 setDataSource:self];
  [(PUEditPluginSession *)v3 setDelegate:self];
  v4 = [(PUPhotoEditViewController *)self photo];
  v5 = [v4 canPlayPhotoIris];

  [(PUImageEditPluginSession *)v3 setAllowLivePhotoExtensions:v5];
  if ([(PUPhotoEditViewController *)self _enableSpatialMediaEditing])
  {
    v6 = [(PUPhotoEditViewController *)self isSpatialMedia];
  }

  else
  {
    v6 = 0;
  }

  [(PUImageEditPluginSession *)v3 setAllowSpatialPhotoExtensions:v6];
  pluginSession = self->_pluginSession;
  self->_pluginSession = &v3->super;
}

- (void)_updatePluginSession
{
  v3 = [(PUPhotoEditViewController *)self isStandardVideo]|| [(PUPhotoEditViewController *)self isLoopingVideo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (!v3 || (isKindOfClass & 1) != 0)
  {
    if (!v3 && (isKindOfClass & 1) != 0)
    {
      [(PUPhotoEditViewController *)self _setupImagePluginSession];
    }
  }

  else
  {
    [(PUPhotoEditViewController *)self _setupVideoPluginSession];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PUPhotoEditViewController *)self livePhotoModel];
    v6 = [v5 isVideoEnabled];

    [(PUEditPluginSession *)self->_pluginSession setAllowLivePhotoExtensions:v6];
    if ([(PUPhotoEditViewController *)self _enableSpatialMediaEditing])
    {
      v7 = [(PUPhotoEditViewController *)self isSpatialMedia];
    }

    else
    {
      v7 = 0;
    }

    [(PUEditPluginSession *)self->_pluginSession setAllowSpatialPhotoExtensions:v7];
  }

  [(PUPhotoEditViewController *)self editPluginSessionAvailabilityDidChange:self->_pluginSession];

  [(PUPhotoEditViewController *)self _updateMoreButtonAnimated:1];
}

- (void)_updatePluginWorkImageVersion
{
  if (!self->_pluginWorkImageVersionIsValid)
  {
    v3 = [(PUEditPluginSession *)self->_pluginSession adjustmentType];
    if (v3 <= 2)
    {
      self->_pluginWorkImageVersion = qword_1B3D0D350[v3];
    }

    self->_pluginWorkImageVersionIsValid = 1;
  }
}

- (id)pluginActivitiesForEditPluginSession:(id)a3
{
  if (self->_currentEditingTool)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [(PUPhotoEditToolController *)self->_currentEditingTool editActionActivities];
    if ([v5 count])
    {
      [v4 addObjectsFromArray:v5];
    }

    v6 = +[PUPhotoEditProtoSettings sharedInstance];
    v7 = [v6 editMenuEnabled];

    if ((v7 & 1) == 0)
    {
      v8 = [(PUPhotoEditViewController *)self copyPresetAction];
      [v4 addObject:v8];

      v9 = [(PUPhotoEditViewController *)self pastePresetAction];
      [v4 addObject:v9];

      if (PFOSVariantHasInternalUI())
      {
        v10 = [(PUPhotoEditViewController *)self radarAction];
        [v4 addObject:v10];
      }
    }

    v11 = [v4 copy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)editPluginSession:(id)a3 commitContentEditingOutput:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  [(PUPhotoEditViewController *)self _updatePluginWorkImageVersion];
  mediaView = self->_mediaView;
  [(NUMediaView *)mediaView minimumZoomScale];
  [(NUMediaView *)mediaView setZoomScale:0 animated:?];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__PUPhotoEditViewController_editPluginSession_commitContentEditingOutput_withCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E7B7B248;
  aBlock[4] = self;
  v10 = v8;
  v22 = v10;
  v11 = _Block_copy(aBlock);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __96__PUPhotoEditViewController_editPluginSession_commitContentEditingOutput_withCompletionHandler___block_invoke_1001;
  v18[3] = &unk_1E7B80CB0;
  v18[4] = self;
  v12 = v7;
  v19 = v12;
  v13 = v11;
  v20 = v13;
  v14 = _Block_copy(v18);
  v15 = v14;
  if (self->_stashedSnapshot)
  {
    v14[2](v14);
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __96__PUPhotoEditViewController_editPluginSession_commitContentEditingOutput_withCompletionHandler___block_invoke_4_1005;
    v16[3] = &unk_1E7B7B7E0;
    v16[4] = self;
    v17 = v14;
    [(PUPhotoEditViewController *)self _captureSnapshotOfBasePhotoWithCompletionHandler:v16];
  }
}

void __96__PUPhotoEditViewController_editPluginSession_commitContentEditingOutput_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v7;
  if (v7 | v6)
  {
    if (v7)
    {
      v9 = *(a1 + 32);
      v10 = v7;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:*MEMORY[0x1E6978F50] code:-1 userInfo:0];
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 1864);
LABEL_6:
  objc_storeStrong((v9 + 1864), v10);
  *(*(a1 + 32) + 1601) = 1;
  v11 = *(a1 + 32);
  if (v11[127])
  {
    [v11[127] willMoveToParentViewController:0];
    v12 = [*(*(a1 + 32) + 1016) view];
    [v12 removeFromSuperview];

    [*(*(a1 + 32) + 1016) removeFromParentViewController];
    v13 = *(a1 + 32);
    v14 = *(v13 + 1000);
    *(v13 + 1000) = 0;

    v15 = *(a1 + 32);
    v16 = *(v15 + 1016);
    *(v15 + 1016) = 0;

    v17 = *(a1 + 32);
    v18 = *(v17 + 1608);
    *(v17 + 1608) = 0;

    v19 = *(a1 + 32);
    v20 = *(v19 + 1616);
    *(v19 + 1616) = 0;

    v21 = *(a1 + 32);
    v22 = *(v21 + 1632);
    *(v21 + 1632) = 0;

    v23 = *(a1 + 32);
    v24 = *(v23 + 1648);
    *(v23 + 1648) = 0;

    v25 = *(a1 + 32);
    v26 = *(v25 + 1672);
    *(v25 + 1672) = 0;

    v27 = *(a1 + 32);
    v28 = *(v27 + 1640);
    *(v27 + 1640) = 0;

    v29 = *(a1 + 32);
    v30 = *(v29 + 1624);
    *(v29 + 1624) = 0;

    *(*(a1 + 32) + 1728) = 0;
    *(*(a1 + 32) + 1664) = 0;
    v31 = *(a1 + 32);
    v32 = *(v31 + 1656);
    *(v31 + 1656) = 0;

    v11 = *(a1 + 32);
  }

  [v11 _resetModelAndBaseImagesToWorkImageVersion:3];
  [*(a1 + 32) _loadPhotoEditResourcesIfNeeded];
  v33 = [MEMORY[0x1E696AFB0] UUID];
  v34 = [v33 UUIDString];
  v35 = *(a1 + 32);
  v36 = *(v35 + 1440);
  *(v35 + 1440) = v34;

  [*(*(a1 + 32) + 1320) removeAllActions];
  v37 = dispatch_group_create();
  objc_storeStrong((*(a1 + 32) + 1456), v37);
  dispatch_group_enter(v37);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __96__PUPhotoEditViewController_editPluginSession_commitContentEditingOutput_withCompletionHandler___block_invoke_2;
  v42[3] = &unk_1E7B80CB0;
  v43 = v37;
  v38 = *(a1 + 32);
  v39 = *(a1 + 40);
  v44 = v6;
  v45 = v39;
  v40 = v6;
  v41 = v37;
  [v38 _updatePenultimateAvailableWithCompletionHandler:v42];
}

void __96__PUPhotoEditViewController_editPluginSession_commitContentEditingOutput_withCompletionHandler___block_invoke_1001(id *a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__PUPhotoEditViewController_editPluginSession_commitContentEditingOutput_withCompletionHandler___block_invoke_2_1002;
  aBlock[3] = &unk_1E7B7B790;
  v2 = a1[5];
  aBlock[4] = a1[4];
  v20 = v2;
  v21 = a1[6];
  v3 = _Block_copy(aBlock);
  v4 = a1[4];
  v5 = v4[176];
  switch(v5)
  {
    case 2:
      v6 = [a1[4] editSourceContentEditingInput];
      v7 = [a1[4] compositionController];
      v8 = [v4 _newOutputForContentEditingInput:v6 compositionController:v7];

      v9 = [a1[4] mediaDestination];
      v10 = [a1[4] photo];
      v11 = [a1[4] compositionController];
      v12 = [a1[4] workImageVersion];
      v13 = [a1[4] livePhotoModel];
      v14 = [v13 editingVisibility];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __96__PUPhotoEditViewController_editPluginSession_commitContentEditingOutput_withCompletionHandler___block_invoke_3_1004;
      v15[3] = &unk_1E7B7B7B8;
      v17 = a1[6];
      v16 = a1[5];
      v18 = v3;
      [v9 saveInternalEditsForAsset:v10 usingCompositionController:v11 contentEditingOutput:v8 version:v12 livePhotoState:v14 completionHandler:v15];

      break;
    case 1:
      [a1[5] setBaseVersion:2];
      (*(v3 + 2))(v3, 3);
      break;
    case 0:
      [a1[5] setBaseVersion:*(v4 + 1448)];
      (*(v3 + 2))(v3, 2);
      break;
  }
}

void __96__PUPhotoEditViewController_editPluginSession_commitContentEditingOutput_withCompletionHandler___block_invoke_4_1005(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 1416), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

void __96__PUPhotoEditViewController_editPluginSession_commitContentEditingOutput_withCompletionHandler___block_invoke_2_1002(uint64_t a1)
{
  v3 = [*(a1 + 32) mediaDestination];
  v2 = [*(a1 + 32) photo];
  [v3 saveEditsForAsset:v2 usingContentEditingOutput:*(a1 + 40) livePhotoState:0 completionHandler:*(a1 + 48)];
}

uint64_t __96__PUPhotoEditViewController_editPluginSession_commitContentEditingOutput_withCompletionHandler___block_invoke_3_1004(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setBaseVersion:2];
    v3 = *(*(a1 + 48) + 16);

    return v3();
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);

    return v5();
  }
}

void __96__PUPhotoEditViewController_editPluginSession_commitContentEditingOutput_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v2 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__PUPhotoEditViewController_editPluginSession_commitContentEditingOutput_withCompletionHandler___block_invoke_3;
  block[3] = &unk_1E7B7B768;
  v12 = v13;
  v11 = *(a1 + 48);
  v10 = *(a1 + 40);
  v3 = MEMORY[0x1E69E96A0];
  dispatch_group_notify(v2, MEMORY[0x1E69E96A0], block);
  v4 = dispatch_time(0, 3000000000);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __96__PUPhotoEditViewController_editPluginSession_commitContentEditingOutput_withCompletionHandler___block_invoke_5;
  v5[3] = &unk_1E7B7B768;
  v8 = v13;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_after(v4, v3, v5);

  _Block_object_dispose(v13, 8);
}

void __96__PUPhotoEditViewController_editPluginSession_commitContentEditingOutput_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = dispatch_time(0, 250000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__PUPhotoEditViewController_editPluginSession_commitContentEditingOutput_withCompletionHandler___block_invoke_4;
  block[3] = &unk_1E7B7B768;
  v4 = *(a1 + 40);
  v3 = v4;
  v7 = v4;
  v6 = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

uint64_t __96__PUPhotoEditViewController_editPluginSession_commitContentEditingOutput_withCompletionHandler___block_invoke_5(uint64_t result)
{
  if ((*(*(*(result + 48) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    v2 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_ERROR, "editPluginSession:commitContentEditingOutput: - Plugin notification did not occur in a reasonable time; firing completion handler by hand", v3, 2u);
    }

    result = (*(*(v1 + 40) + 16))();
    *(*(*(v1 + 48) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __96__PUPhotoEditViewController_editPluginSession_commitContentEditingOutput_withCompletionHandler___block_invoke_4(uint64_t result)
{
  if ((*(*(*(result + 48) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = (*(*(result + 40) + 16))();
    *(*(*(v1 + 48) + 8) + 24) = 1;
  }

  return result;
}

- (void)_editPluginSession:(id)a3 checkVideoEnabled:(BOOL)a4 loadVideoComplementURLWithHandler:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  if (!v6 || (-[PUPhotoEditViewController livePhotoModel](self, "livePhotoModel"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isVideoEnabled], v11, (v12 & 1) != 0))
  {
    [(PUPhotoEditViewController *)self _updatePluginWorkImageVersion];
    v13 = [(PUPhotoEditViewController *)self photo];
    v14 = v13;
    v39 = 0uLL;
    v40 = 0;
    if (v13)
    {
      [v13 photoIrisStillDisplayTime];
    }

    v15 = objc_alloc_init(MEMORY[0x1E6978B18]);
    [v15 setVideoComplementAllowed:1];
    [v15 setDeliveryMode:1];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __100__PUPhotoEditViewController__editPluginSession_checkVideoEnabled_loadVideoComplementURLWithHandler___block_invoke;
    aBlock[3] = &unk_1E7B7B6F0;
    v16 = v10;
    v36 = v16;
    v37 = v39;
    v38 = v40;
    v17 = _Block_copy(aBlock);
    pluginWorkImageVersion = self->_pluginWorkImageVersion;
    if (pluginWorkImageVersion != 2)
    {
      if (pluginWorkImageVersion == 1)
      {
        v20 = v15;
        v19 = 0;
      }

      else
      {
        if (pluginWorkImageVersion)
        {
LABEL_29:
          v27 = [(PUPhotoEditViewController *)self mediaProvider];
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __100__PUPhotoEditViewController__editPluginSession_checkVideoEnabled_loadVideoComplementURLWithHandler___block_invoke_4;
          v29[3] = &unk_1E7B7F898;
          v30 = v17;
          v28 = v17;
          [v27 requestAsynchronousVideoURLForAsset:v14 options:v15 resultHandler:v29];

          goto LABEL_30;
        }

        if ([(PUPhotoEditViewController *)self isPenultimateAvailable])
        {
          v19 = 8;
        }

        else
        {
          v19 = 1;
        }

        v20 = v15;
      }

      [v20 setVersion:v19];
      goto LABEL_29;
    }

    v22 = [(PUPhotoEditViewController *)self workImageVersion];
    if (v22 > 1)
    {
      if (v22 == 2)
      {
        if ([(PUPhotoEditViewController *)self isPenultimateAvailable])
        {
          v24 = 8;
        }

        else
        {
          v24 = 1;
        }

        v23 = v15;
        goto LABEL_27;
      }

      if (v22 == 3)
      {
        v23 = v15;
        v24 = 0;
        goto LABEL_27;
      }
    }

    else if (v22)
    {
      if (v22 == 1)
      {
        v23 = v15;
        v24 = 1;
LABEL_27:
        [v23 setVersion:v24];
      }
    }

    else
    {
      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      [v25 handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:9531 description:@"unknown work image version"];
    }

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __100__PUPhotoEditViewController__editPluginSession_checkVideoEnabled_loadVideoComplementURLWithHandler___block_invoke_2;
    v31[3] = &unk_1E7B7B740;
    v31[4] = self;
    v33 = v39;
    v34 = v40;
    v32 = v16;
    v26 = _Block_copy(v31);

    v17 = v26;
    goto LABEL_29;
  }

  v21 = v10[2];
  v39 = *MEMORY[0x1E6960C70];
  v40 = *(MEMORY[0x1E6960C70] + 16);
  v21(v10, 0, &v39);
LABEL_30:
}

uint64_t __100__PUPhotoEditViewController__editPluginSession_checkVideoEnabled_loadVideoComplementURLWithHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  return v3(v2, a2, &v5);
}

void __100__PUPhotoEditViewController__editPluginSession_checkVideoEnabled_loadVideoComplementURLWithHandler___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
  v4 = [v3 privateCacheDirectoryWithSubType:13 createIfNeeded:1 error:0];
  v5 = [v4 stringByAppendingPathComponent:@"PluginFullSize.mov"];
  v6 = [v2 fileURLWithPath:v5];

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  [v7 removeItemAtURL:v6 error:0];

  v8 = [*(a1 + 32) mainRenderer];
  v9 = *MEMORY[0x1E69872E0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __100__PUPhotoEditViewController__editPluginSession_checkVideoEnabled_loadVideoComplementURLWithHandler___block_invoke_3;
  v12[3] = &unk_1E7B7B718;
  v13 = v6;
  v15 = *(a1 + 48);
  v16 = *(a1 + 64);
  v14 = *(a1 + 40);
  v10 = v6;
  v11 = [v8 exportVideoToURL:v10 preset:v9 livePhotoPairingIdentifier:0 completion:v12];
}

void __100__PUPhotoEditViewController__editPluginSession_checkVideoEnabled_loadVideoComplementURLWithHandler___block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v9 = *(a1 + 48);
    v4 = *(a1 + 64);
  }

  else
  {
    v3 = 0;
    v9 = *MEMORY[0x1E6960C70];
    v4 = *(MEMORY[0x1E6960C70] + 16);
  }

  v10 = v4;
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = v9;
  v8 = v4;
  v6(v5, v3, &v7);
}

- (void)editPluginSession:(id)a3 loadVideoURLWithHandler:(id)a4
{
  v6 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__PUPhotoEditViewController_editPluginSession_loadVideoURLWithHandler___block_invoke;
  aBlock[3] = &unk_1E7B7B6C8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = _Block_copy(aBlock);
  [(PUPhotoEditViewController *)self _editPluginSession:v8 checkVideoEnabled:0 loadVideoComplementURLWithHandler:v9];
}

- (void)editPluginSession:(id)a3 loadFullSizeImageWithHandler:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(PUPhotoEditViewController *)self _updatePluginWorkImageVersion];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PUPhotoEditViewController_editPluginSession_loadFullSizeImageWithHandler___block_invoke;
  aBlock[3] = &unk_1E7B7B5E0;
  aBlock[4] = self;
  v8 = v7;
  v34 = v8;
  v9 = _Block_copy(aBlock);
  self->_pluginWorkingOffPenultimate = 0;
  v10 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    pluginWorkImageVersion = self->_pluginWorkImageVersion;
    v12 = [(PUPhotoEditViewController *)self photo];
    *buf = 67109378;
    v36 = pluginWorkImageVersion;
    v37 = 2112;
    v38 = v12;
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEFAULT, "Loading full size image for plugin; work image version: %d - asset: %@", buf, 0x12u);
  }

  v13 = self->_pluginWorkImageVersion;
  switch(v13)
  {
    case 2:
      v19 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_DEFAULT, "Image was edited during this session, so rendering image for plugin", buf, 2u);
      }

      v20 = objc_alloc(MEMORY[0x1E69BE658]);
      v21 = [(PUPhotoEditViewController *)self editSource];
      v14 = [v20 initWithEditSource:v21];

      v22 = [(PUPhotoEditViewController *)self compositionController];
      [v14 setCompositionController:v22];

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __76__PUPhotoEditViewController_editPluginSession_loadFullSizeImageWithHandler___block_invoke_987;
      v23[3] = &unk_1E7B7B650;
      v24 = v9;
      [v14 generateJPEGImageDataWithCompressionQuality:0 livePhotoPairingIdentifier:v23 completionHandler:0.899999976];
      v16 = v24;
      goto LABEL_11;
    case 1:
      v14 = objc_alloc_init(MEMORY[0x1E6978868]);
      [v14 setVersion:0];
      [v14 setLoadingMode:0x10000];
      [v14 setDeliveryMode:1];
      [v14 setNetworkAccessAllowed:1];
      v17 = [(PUPhotoEditViewController *)self mediaProvider];
      v18 = [(PUPhotoEditViewController *)self photo];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __76__PUPhotoEditViewController_editPluginSession_loadFullSizeImageWithHandler___block_invoke_983;
      v25[3] = &unk_1E7B7BC68;
      v25[4] = self;
      v26 = v8;
      [v17 requestImageForAsset:v18 targetSize:0 contentMode:v14 options:v25 resultHandler:{*MEMORY[0x1E6978E30], *(MEMORY[0x1E6978E30] + 8)}];

      v16 = v26;
      goto LABEL_11;
    case 0:
      v14 = objc_alloc_init(MEMORY[0x1E6978798]);
      [v14 setForceReturnFullLivePhoto:1];
      [v14 setContentMode:0];
      [v14 setForcePrepareCurrentBaseVersionInAddition:1];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __76__PUPhotoEditViewController_editPluginSession_loadFullSizeImageWithHandler___block_invoke_974;
      v32[3] = &unk_1E7B7B110;
      v32[4] = self;
      [v14 setCanHandleRAW:v32];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __76__PUPhotoEditViewController_editPluginSession_loadFullSizeImageWithHandler___block_invoke_2;
      v30[3] = &unk_1E7B7B608;
      v31 = v6;
      [v14 setCanHandleAdjustmentData:v30];
      [v14 setNetworkAccessAllowed:1];
      v15 = [(PUPhotoEditViewController *)self photo];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __76__PUPhotoEditViewController_editPluginSession_loadFullSizeImageWithHandler___block_invoke_3;
      v27[3] = &unk_1E7B7B6A0;
      v27[4] = self;
      v28 = v9;
      v29 = v8;
      [v15 requestContentEditingInputWithOptions:v14 completionHandler:v27];

      v16 = v31;
LABEL_11:

      break;
  }
}

void __76__PUPhotoEditViewController_editPluginSession_loadFullSizeImageWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  if (!*(*(a1 + 32) + 1424))
  {
    v3 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
    v4 = [v3 privateCacheDirectoryWithSubType:13 createIfNeeded:1 error:0];
    v5 = [v4 stringByAppendingPathComponent:@"PluginFullSize.jpg"];

    v6 = PLGetSandboxExtensionToken();
    v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5];
    v8 = *(a1 + 32);
    v9 = *(v8 + 1424);
    *(v8 + 1424) = v7;

    v10 = *(a1 + 32);
    v11 = *(v10 + 1432);
    *(v10 + 1432) = v6;
  }

  v12 = objc_alloc_init(MEMORY[0x1E696AC08]);
  [v12 removeItemAtURL:*(*(a1 + 32) + 1424) error:0];

  [v13 writeToURL:*(*(a1 + 32) + 1424) options:1073741825 error:0];
  (*(*(a1 + 40) + 16))();
}

void __76__PUPhotoEditViewController_editPluginSession_loadFullSizeImageWithHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 fullSizeImageURL];
  [v5 fullSizeImageOrientation];
  _UIImageOrientationForEXIFOrientation();
  v8 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = v7;
    v34 = 2112;
    v35 = v6;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "received PHContentEditingInput for plugin full-size request; url: %@ - info: %@", buf, 0x16u);
  }

  *(*(a1 + 32) + 1448) = [v5 baseVersion] == 1;
  v9 = [*(a1 + 32) photo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [*(a1 + 32) photo];

    if (v10 && (([v10 isOriginalRaw] & 1) != 0 || objc_msgSend(v10, "originalResourceChoice") == 1) && (objc_msgSend(*(a1 + 32), "isPenultimateAvailable") & 1) == 0 && objc_msgSend(v5, "baseVersion") != 1)
    {
      v11 = objc_alloc_init(MEMORY[0x1E6978868]);
      [v11 setLoadingMode:0x10000];
      [v11 setDeliveryMode:1];
      [v11 setVersion:2];
      [v11 setNetworkAccessAllowed:1];
      v12 = [MEMORY[0x1E6978860] defaultManager];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __76__PUPhotoEditViewController_editPluginSession_loadFullSizeImageWithHandler___block_invoke_976;
      v29[3] = &unk_1E7B7B678;
      v30 = v7;
      v31 = *(a1 + 40);
      [v12 requestImagePropertiesForAsset:v10 options:v11 resultHandler:v29];

      goto LABEL_20;
    }
  }

  else
  {

    v10 = 0;
  }

  v13 = [v6 objectForKey:*MEMORY[0x1E6978E18]];
  v11 = v13;
  if (v7 && !v13)
  {
    v25 = v10;
    v26 = v6;
    v14 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v15 = [v14 assetsdClient];
    v16 = [v15 resourceClient];

    v17 = [v7 path];
    v18 = [*(a1 + 32) photo];
    v19 = [v18 uuid];
    v27 = 0;
    v28 = 0;
    v20 = [v16 sandboxExtensionsForAssetWithUUID:v19 sandboxExtensionTokens:&v28 error:&v27];
    v21 = v28;
    v22 = v27;

    v23 = [v21 objectForKey:v17];
    v11 = v23;
    if (!v20 || !v23)
    {
      v24 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v33 = v22;
        _os_log_impl(&dword_1B36F3000, v24, OS_LOG_TYPE_ERROR, "Error getting sandbox extension token for resource: %@", buf, 0xCu);
      }
    }

    v10 = v25;
    v6 = v26;
  }

  (*(*(a1 + 48) + 16))();
LABEL_20:
}

void __76__PUPhotoEditViewController_editPluginSession_loadFullSizeImageWithHandler___block_invoke_983(uint64_t a1, uint64_t a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E6978E20];
  v5 = a3;
  v6 = [v5 objectForKey:v4];
  v7 = [v5 objectForKey:*MEMORY[0x1E6978E10]];
  [v7 integerValue];

  v8 = [v5 objectForKey:*MEMORY[0x1E6978E18]];
  v9 = [v5 objectForKey:*MEMORY[0x1E6978DF0]];

  v10 = PLPhotoEditGetLog();
  v11 = v10;
  if (v9)
  {
    v12 = 1;
  }

  else
  {
    v12 = v6 == 0;
  }

  if (v12)
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v13 = @"(no error received, but no image URL provided)";
    if (v9)
    {
      v13 = v9;
    }

    *buf = 138412290;
    v34 = v13;
    v14 = "Error requesting fullsize render image for plugin: %@";
    v15 = v11;
    v16 = OS_LOG_TYPE_ERROR;
    v17 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v14 = "Received fullsize image for asset";
    v15 = v11;
    v16 = OS_LOG_TYPE_DEFAULT;
    v17 = 2;
  }

  _os_log_impl(&dword_1B36F3000, v15, v16, v14, buf, v17);
LABEL_13:

  if (v6)
  {
    v19 = v8 == 0;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    v20 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v21 = [v20 assetsdClient];
    v22 = [v21 resourceClient];

    v23 = [v6 path];
    v24 = [*(a1 + 32) photo];
    v25 = [v24 uuid];
    v31 = 0;
    v32 = 0;
    v26 = [v22 sandboxExtensionsForAssetWithUUID:v25 sandboxExtensionTokens:&v32 error:&v31];
    v27 = v32;
    v28 = v31;

    v29 = [v27 objectForKey:v23];
    v8 = v29;
    if (!v26 || !v29)
    {
      v30 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v34 = v28;
        _os_log_impl(&dword_1B36F3000, v30, OS_LOG_TYPE_ERROR, "Error getting sandbox extension token for resource: %@", buf, 0xCu);
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __76__PUPhotoEditViewController_editPluginSession_loadFullSizeImageWithHandler___block_invoke_987(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_ERROR, "Renderer returned no image data when full-size render requested by plugin", v5, 2u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __76__PUPhotoEditViewController_editPluginSession_loadFullSizeImageWithHandler___block_invoke_976(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "rendering raw image to a jpeg for plugin full-size request", buf, 2u);
  }

  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6978E28]];
  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6978E10]];

  [v7 integerValue];
  v8 = PLExifOrientationFromImageOrientation();

  v9 = [objc_alloc(MEMORY[0x1E69BE660]) initWithURL:*(a1 + 32) type:v6 image:0 useEmbeddedPreview:0];
  v10 = [objc_alloc(MEMORY[0x1E69BE658]) initWithEditSource:v9];
  v11 = [MEMORY[0x1E69BE360] newIdentityCompositionController];
  v12 = *MEMORY[0x1E69BE058];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__PUPhotoEditViewController_editPluginSession_loadFullSizeImageWithHandler___block_invoke_978;
  v15[3] = &__block_descriptor_36_e43_v16__0__PIOrientationAdjustmentController_8l;
  v16 = v8;
  [v11 modifyAdjustmentWithKey:v12 modificationBlock:v15];
  [v10 setCompositionController:v11];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__PUPhotoEditViewController_editPluginSession_loadFullSizeImageWithHandler___block_invoke_2_980;
  v13[3] = &unk_1E7B7B650;
  v14 = *(a1 + 40);
  [v10 generateJPEGImageDataWithCompressionQuality:0 livePhotoPairingIdentifier:v13 completionHandler:0.899999976];
}

- (void)editPluginSession:(id)a3 loadThumbnailImageWithSize:(CGSize)a4 loadHandler:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a5;
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:9304 description:@"imageSize is zero"];
  }

  PLPhysicalScreenScale();
  PXSizeScale();
  v12 = v11;
  v14 = v13;
  v15 = objc_alloc_init(MEMORY[0x1E6978868]);
  [v15 setNetworkAccessAllowed:1];
  [v15 setDeliveryMode:1];
  [v15 setResizeMode:1];
  v16 = [(PUPhotoEditViewController *)self mediaProvider];
  v17 = [(PUPhotoEditViewController *)self photo];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __86__PUPhotoEditViewController_editPluginSession_loadThumbnailImageWithSize_loadHandler___block_invoke;
  v20[3] = &unk_1E7B7F870;
  v21 = v9;
  v18 = v9;
  [v16 requestImageForAsset:v17 targetSize:0 contentMode:v15 options:v20 resultHandler:{v12, v14}];
}

void __86__PUPhotoEditViewController_editPluginSession_loadThumbnailImageWithSize_loadHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    v5 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
    v6 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[PUPhotoEditViewController editPluginSession:loadThumbnailImageWithSize:loadHandler:]_block_invoke";
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "%s: Error fetching thumbnail image data: %@", &v7, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)editPluginSession:(id)a3 loadDisplaySizeImageWithHandler:(id)a4
{
  v5 = a4;
  [(PUPhotoEditViewController *)self _updatePluginWorkImageVersion];
  v6 = [(PUPhotoEditViewController *)self px_screen];
  [v6 pu_workImageSize];
  v8 = v7;
  v10 = v9;

  pluginWorkImageVersion = self->_pluginWorkImageVersion;
  if (pluginWorkImageVersion < 2)
  {
    v12 = objc_alloc_init(MEMORY[0x1E6978868]);
    if (self->_pluginWorkImageVersion)
    {
      v13 = 0;
    }

    else if ([(PUPhotoEditViewController *)self isPenultimateAvailable])
    {
      v13 = 8;
    }

    else
    {
      v13 = 1;
    }

    [v12 setVersion:v13];
    [v12 setResizeMode:1];
    [v12 setDeliveryMode:1];
    v18 = [(PUPhotoEditViewController *)self mediaProvider];
    v19 = [(PUPhotoEditViewController *)self photo];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __79__PUPhotoEditViewController_editPluginSession_loadDisplaySizeImageWithHandler___block_invoke;
    v22[3] = &unk_1E7B7F870;
    v17 = &v23;
    v23 = v5;
    [v18 requestImageForAsset:v19 targetSize:0 contentMode:v12 options:v22 resultHandler:{v8, v10}];

    goto LABEL_10;
  }

  if (pluginWorkImageVersion == 2)
  {
    v14 = objc_alloc(MEMORY[0x1E69BE658]);
    v15 = [(PUPhotoEditViewController *)self editSource];
    v12 = [v14 initWithEditSource:v15];

    v16 = [(PUPhotoEditViewController *)self compositionController];
    [v12 setCompositionController:v16];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __79__PUPhotoEditViewController_editPluginSession_loadDisplaySizeImageWithHandler___block_invoke_2;
    v20[3] = &unk_1E7B7B5B8;
    v17 = &v21;
    v21 = v5;
    [v12 renderImageWithTargetSize:0 contentMode:@"PUPhotoEditViewController-pluginPreviewAdjusted" name:v20 completion:{v8, v10}];
LABEL_10:
  }
}

void __79__PUPhotoEditViewController_editPluginSession_loadDisplaySizeImageWithHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E69DCAB8] imageWithCGImage:a2];
  (*(*(a1 + 32) + 16))();
}

- (void)editPluginSession:(id)a3 loadPlaceholderImageWithHandler:(id)a4
{
  v5 = a4;
  v6 = objc_alloc(MEMORY[0x1E69B3AD8]);
  v7 = [(PUPhotoEditViewController *)self compositionController];
  v8 = [v7 composition];
  v9 = [v6 initWithComposition:v8];

  v10 = [objc_alloc(MEMORY[0x1E69B3C00]) initWithLevel:0];
  [v9 setPriority:v10];

  v11 = [(PUPhotoEditViewController *)self view];
  v12 = [v11 window];
  v13 = [v12 screen];
  [v13 pu_workImageSize];
  v15 = v14;
  v17 = v16;

  v18 = [objc_alloc(MEMORY[0x1E69B3A78]) initWithTargetSize:{v15, v17}];
  [v9 setScalePolicy:v18];

  v19 = [(PUPhotoEditViewController *)self mediaView];
  v20 = [v19 _renderer];

  [v20 displayCurrentEDRHeadroom];
  if (v21 <= 1.0)
  {
    v24 = [MEMORY[0x1E69B3A10] displayP3ColorSpace];
    [v9 setColorSpace:v24];

    v25 = [MEMORY[0x1E69B3BF0] BGRA8];
    [v9 setPixelFormat:v25];
  }

  else
  {
    v22 = [MEMORY[0x1E69B3A10] displayP3_PQ];
    [v9 setColorSpace:v22];

    v23 = [MEMORY[0x1E69B3BF0] X2RGB10];
    [v9 setPixelFormat:v23];

    [v20 displayMaximumEDRHeadroom];
    [v9 setMaxEDRHeadroom:?];
    [v20 displayCurrentEDRHeadroom];
    [v9 setCurrentEDRHeadroom:?];
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __79__PUPhotoEditViewController_editPluginSession_loadPlaceholderImageWithHandler___block_invoke;
  v27[3] = &unk_1E7B805C0;
  v28 = v5;
  v26 = v5;
  [v9 submit:v27];
}

void __79__PUPhotoEditViewController_editPluginSession_loadPlaceholderImageWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v3 = [a2 result:&v11];
  v4 = v11;
  if (v3)
  {
    v5 = [v3 buffer];
    v6 = [v5 CVPixelBuffer];

    CVPixelBufferGetIOSurface(v6);
    v7 = CGImageCreateFromIOSurface();
    v8 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v7];
    (*(*(a1 + 32) + 16))();
    CGImageRelease(v7);
  }

  else
  {
    v9 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[PUPhotoEditViewController editPluginSession:loadPlaceholderImageWithHandler:]_block_invoke";
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "%s: Error generaing placeholder image for plugin: %@", buf, 0x16u);
    }

    v10 = *(a1 + 32);
    v8 = objc_opt_new();
    (*(v10 + 16))(v10, v8);
  }
}

- (void)editPluginSession:(id)a3 loadAdjustmentDataWithHandler:(id)a4
{
  v5 = a4;
  v6 = [(PUPhotoEditViewController *)self compositionController];
  v7 = [(PUPhotoEditViewController *)self uneditedComposition];
  if (v6 && ([v6 isEqual:v7 visualChangesOnly:1] & 1) == 0)
  {
    self->_pluginWorkImageVersionIsValid = 1;
    self->_pluginWorkImageVersion = 2;
    v5[2](v5, 0);
  }

  else
  {
    self->_pluginWorkImageVersionIsValid = 0;
    v8 = objc_alloc_init(MEMORY[0x1E6978868]);
    [v8 setVersion:16];
    v9 = [(PUPhotoEditViewController *)self mediaProvider];
    v10 = [(PUPhotoEditViewController *)self photo];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __77__PUPhotoEditViewController_editPluginSession_loadAdjustmentDataWithHandler___block_invoke;
    v11[3] = &unk_1E7B7F870;
    v12 = v5;
    [v9 requestImageForAsset:v10 targetSize:0 contentMode:v8 options:v11 resultHandler:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  }
}

void __77__PUPhotoEditViewController_editPluginSession_loadAdjustmentDataWithHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6978B30]];
  (*(*(a1 + 32) + 16))();
}

- (void)popoverPresentationControllerDidDismissPopover:(id)a3
{
  v4 = a3;
  [(PUPhotoEditViewController *)self setCancelConfirmationAlert:0];
  [(PUPhotoEditViewController *)self setRevertConfirmationAlert:0];
  [(PUPhotoEditViewController *)self setJpegPreviewForRawConfirmationAlert:0];
  [(PUPhotoEditViewController *)self setIrisRevertConfirmationAlert:0];
  [v4 setDelegate:0];
}

- (void)prepareForPopoverPresentation:(id)a3
{
  v12 = a3;
  v4 = [v12 presentedViewController];
  v5 = [(PUPhotoEditViewController *)self cancelConfirmationAlert];
  if (v4 == v5)
  {
    cancelButton = self->_cancelButton;

    if (cancelButton)
    {
      v9 = [(PUPhotoEditNotchButton *)self->_cancelButton window];

      if (v9)
      {
        [v12 setSourceView:self->_cancelButton];
        [(PUPhotoEditNotchButton *)self->_cancelButton bounds];
        [v12 setSourceRect:?];
      }

      else if (self->_cancelButtonItem)
      {
        [v12 setBarButtonItem:?];
      }
    }
  }

  else
  {
  }

  v6 = [v12 presentedViewController];
  v7 = [(PUPhotoEditViewController *)self revertConfirmationAlert];
  if (v6 == v7)
  {
    mainActionButton = self->_mainActionButton;

    if (mainActionButton)
    {
      v11 = [(PUPhotoEditNotchButton *)self->_mainActionButton window];

      if (v11)
      {
        [v12 setSourceView:self->_mainActionButton];
        [(PUPhotoEditNotchButton *)self->_mainActionButton bounds];
        [v12 setSourceRect:?];
      }

      else if (self->_mainActionButtonItem)
      {
        [v12 setBarButtonItem:?];
      }
    }
  }

  else
  {
  }
}

- (void)_removePlaceholderImageViewIfNeeded
{
  placeholderImageView = self->_placeholderImageView;
  if (placeholderImageView)
  {
    if (!self->_placeholderImageViewTransitioningOut)
    {
      v4 = placeholderImageView;
      self->_placeholderImageViewTransitioningOut = 1;
      v5 = MEMORY[0x1E69DD250];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __64__PUPhotoEditViewController__removePlaceholderImageViewIfNeeded__block_invoke;
      v10[3] = &unk_1E7B80DD0;
      v11 = v4;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __64__PUPhotoEditViewController__removePlaceholderImageViewIfNeeded__block_invoke_2;
      v7[3] = &unk_1E7B80088;
      v8 = v11;
      v9 = self;
      v6 = v11;
      [v5 animateWithDuration:v10 animations:v7 completion:0.5];
    }
  }
}

void __64__PUPhotoEditViewController__removePlaceholderImageViewIfNeeded__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [MEMORY[0x1E696ACD8] deactivateConstraints:*(*(a1 + 40) + 1096)];
  v2 = *(a1 + 40);
  v3 = *(v2 + 1472);
  *(v2 + 1472) = 0;

  v4 = *(a1 + 40);
  v5 = *(v4 + 1096);
  *(v4 + 1096) = 0;

  *(*(a1 + 40) + 1480) = 0;
  v6 = [*(a1 + 40) px_imageModulationManager];
  v7 = [*(a1 + 40) placeholderImageLayerModulator];
  [v6 checkInImageLayerModulator:v7];

  [*(a1 + 40) fulfillPendingEditsRequestIfNecessary];
  if (*(*(a1 + 40) + 1016) == *(*(a1 + 40) + 1656))
  {
    v8 = MEMORY[0x1E69C3548];
    v9 = [MEMORY[0x1E69C3548] stylesSetupTipID];
    if ([v8 isTipValid:v9])
    {
      v10 = [*(a1 + 40) photo];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = PFDeviceSupportsSmartStyles();

        if (!v11)
        {
          goto LABEL_9;
        }

        if (PFUserHasSetSmartStyle())
        {
          v12 = MEMORY[0x1E69C3548];
          v9 = [MEMORY[0x1E69C3548] stylesSetupTipID];
          [v12 setTipActionPerformed:v9];
        }

        else
        {
          v9 = [*(a1 + 40) photo];
          v14 = MEMORY[0x1E69C4320];
          v15 = [v9 photoLibrary];
          v16 = [v14 photoLibraryIsEligibleForStylesSetupTip:v15];

          v17 = MEMORY[0x1E69C3548];
          v18 = [MEMORY[0x1E69C3548] stylesSetupTipID];
          [v17 setTip:v18 isPresentable:v16];
        }
      }

      else
      {
      }
    }
  }

LABEL_9:
  if (*(*(a1 + 40) + 1624))
  {
    v13 = MEMORY[0x1E69C3548];
    v19 = [MEMORY[0x1E69C3548] cleanUpTipID];
    [v13 setTip:v19 isPresentable:1];
  }
}

- (void)_handleMediaViewReady:(id)a3 statistics:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 _geometry];

  if (v8)
  {
    v9 = [v6 _geometry];
    [v9 size];
    NUPixelSizeToCGSize();
    [(PUPhotoEditViewController *)self setLastKnownPreviewImageSize:?];
  }

  v10 = [*MEMORY[0x1E69DDA98] isRunningTest];
  if (v7 && v10)
  {
    [(_PPTState *)self->_pptState setHasRendered:1];
    [(PUPhotoEditViewController *)self _ppt_conditionallyExecuteAfterRender];
    v11 = [(_PPTState *)self->_pptState renderStatistics];
    [v11 addObject:v7];
  }

  [(PUPhotoEditViewController *)self _updateVideoScrubber];
  if ([(NUMediaView *)self->_mediaView loopsVideoPlayback]&& ![(PUPhotoEditToolController *)self->_currentEditingTool handlesVideoPlaying])
  {
    [(NUMediaView *)self->_mediaView _startVideoPlayback];
  }

  objc_initWeak(&location, self);
  v12 = dispatch_time(0, 250000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PUPhotoEditViewController__handleMediaViewReady_statistics___block_invoke;
  block[3] = &unk_1E7B80638;
  objc_copyWeak(&v22, &location);
  dispatch_after(v12, MEMORY[0x1E69E96A0], block);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v13 = [(PUPhotoEditViewController *)self _allTools];
  v14 = [v13 countByEnumeratingWithState:&v17 objects:v24 count:16];
  if (v14)
  {
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v17 + 1) + 8 * v16++) mediaViewIsReady];
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v17 objects:v24 count:16];
    }

    while (v14);
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __62__PUPhotoEditViewController__handleMediaViewReady_statistics___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removePlaceholderImageViewIfNeeded];
}

- (void)mediaViewDidUpdateGeometry:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(PUPhotoEditViewController *)self _allTools:a3];
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

        [*(*(&v8 + 1) + 8 * v7++) mediaViewGeometryUpdated];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)mediaViewDidEndLivePhotoPlayback:(id)a3
{
  self->_livePhotoIsPlaying = 0;
  [(PUPhotoEditViewController *)self _updateTogglePreviewGestureRecognizer];
  v4 = _Block_copy(self->_ppt_didEndPlaybackBlock);
  if (v4)
  {
    ppt_didEndPlaybackBlock = self->_ppt_didEndPlaybackBlock;
    self->_ppt_didEndPlaybackBlock = 0;
    v6 = v4;

    v6[2](v6);
    v4 = v6;
  }
}

- (void)mediaViewWillBeginLivePhotoPlayback:(id)a3
{
  self->_livePhotoIsPlaying = 1;
  [(PUPhotoEditViewController *)self setShouldBePreviewingOriginal:0];
  [(PUPhotoEditViewController *)self _updateTogglePreviewGestureRecognizer];
  v4 = _Block_copy(self->_ppt_willBeginPlaybackBlock);
  if (v4)
  {
    ppt_willBeginPlaybackBlock = self->_ppt_willBeginPlaybackBlock;
    self->_ppt_willBeginPlaybackBlock = 0;
    v6 = v4;

    v6[2](v6);
    v4 = v6;
  }
}

- (void)mediaViewDidFinishPreparingVideo:(id)a3
{
  v4 = a3;
  [(PUPhotoEditViewController *)self setIsCachingVideo:0];
  [(PUPhotoEditMediaToolController *)self->_mediaToolController videoRenderingChanged];
  v5 = PLPhotoEditGetLog();
  v6 = os_signpost_id_make_with_pointer(v5, v4);

  v7 = PLPhotoEditGetLog();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v8, OS_SIGNPOST_INTERVAL_END, v6, "CachingVideo", "", v9, 2u);
  }
}

- (void)mediaViewDidStartPreparingVideo:(id)a3
{
  v4 = a3;
  v5 = PLPhotoEditGetLog();
  v6 = os_signpost_id_make_with_pointer(v5, v4);

  v7 = PLPhotoEditGetLog();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "CachingVideo", "", v9, 2u);
  }

  if (![(PUPhotoEditToolController *)self->_currentEditingTool isActivelyAdjusting])
  {
    [(PUPhotoEditViewController *)self setIsCachingVideo:1];
  }
}

- (void)mediaViewDidPlayToEnd:(id)a3
{
  if (self->_currentTool == &self->_audioToolController->super.super)
  {
    v12 = v3;
    v13 = v4;
    v6 = [(PUPhotoEditViewController *)self mediaView];
    v7 = [v6 player];
    v10 = *MEMORY[0x1E6960CC0];
    v11 = *(MEMORY[0x1E6960CC0] + 16);
    [v7 seekToTime:&v10 exact:1];

    v8 = [(PUPhotoEditViewController *)self mediaView];
    v9 = [v8 player];
    [v9 play];
  }
}

- (void)mediaViewIsReadyForVideoPlayback:(id)a3
{
  [(PUPhotoEditViewController *)self _handleMediaViewReady:a3 statistics:0];
  v4 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.value) = 0;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "Media view is ready for video playback", &buf, 2u);
  }

  memset(&buf, 0, sizeof(buf));
  [(PUPhotoEditViewController *)self initialSeekTime];
  if ((buf.flags & 1) != 0 && [(PUPhotoEditViewController *)self isStandardVideo])
  {
    v5 = [(PUPhotoEditViewController *)self compositionController];
    v6 = [v5 trimAdjustmentController];

    memset(&v11, 0, sizeof(v11));
    if (v6)
    {
      [v6 startTime];
      if (v11.flags)
      {
        lhs = buf;
        v8 = v11;
        CMTimeAdd(&v10, &lhs, &v8);
        buf = v10;
      }
    }

    v7 = [(PUPhotoEditMediaToolController *)self->_mediaToolController trimController];
    v10 = buf;
    [v7 setPlayheadTime:&v10 forceSeek:1];

    v10 = **&MEMORY[0x1E6960C70];
    [(PUPhotoEditViewController *)self setInitialSeekTime:&v10];
  }
}

- (void)mediaViewDidUpdateLivePhoto:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [(NUMediaView *)self->_mediaView _livePhotoView];
  if ([v4 overridePhoto])
  {
    v5 = [MEMORY[0x1E69DCAB8] imageWithCGImage:{objc_msgSend(v4, "overridePhoto")}];
  }

  else
  {
    v6 = [v4 livePhoto];
    v5 = [v6 image];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [(PUPhotoEditViewController *)self _allTools];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

        [*(*(&v12 + 1) + 8 * v11++) setPlaceholderImage:v5];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  [(PUPhotoEditMediaToolController *)self->_mediaToolController videoRenderingChanged];
}

- (void)mediaViewDidFinishRendering:(id)a3 withStatistics:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUPhotoEditViewController *)self videoScrubberView];
  if (v8)
  {
    v9 = v8;
    [(PUPhotoEditViewController *)self lastKnownMediaViewImageFrame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [v6 imageFrame];
    v38.origin.x = v18;
    v38.origin.y = v19;
    v38.size.width = v20;
    v38.size.height = v21;
    v37.origin.x = v11;
    v37.origin.y = v13;
    v37.size.width = v15;
    v37.size.height = v17;
    v22 = CGRectEqualToRect(v37, v38);

    if (!v22)
    {
      v23 = [(PUPhotoEditViewController *)self view];
      [v23 setNeedsLayout];
    }
  }

  [v6 imageFrame];
  [(PUPhotoEditViewController *)self setLastKnownMediaViewImageFrame:?];
  if ([(PUPhotoEditViewController *)self shouldBePreviewingOriginal]&& [(PUPhotoEditViewController *)self _isPreviewingOriginal]&& ![(PUPhotoEditViewController *)self showOriginalCausedSizeChange])
  {
    [(PUPhotoEditViewController *)self _startShowingOriginalBadge];
  }

  if ([(PUPhotoEditViewController *)self _isInEditRevertTransitionSnapshotVisible])
  {
    v24 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__PUPhotoEditViewController_mediaViewDidFinishRendering_withStatistics___block_invoke;
    block[3] = &unk_1E7B80DD0;
    block[4] = self;
    dispatch_after(v24, MEMORY[0x1E69E96A0], block);
  }

  if (self->_placeholderImageView && [(PUPhotoEditViewController *)self layoutOrientation]!= 1 && MEMORY[0x1B8C6D660]())
  {
    v25 = +[PUPhotoEditProtoSettings sharedInstance];
    if ([v25 imageStartsZoomedIn])
    {
      v26 = [(PUPhotoEditViewController *)self _isQuickCrop];

      if (!v26)
      {
        v27 = [(NUMediaView *)self->_mediaView _renderView];
        [v27 bounds];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;

        [(NUMediaView *)self->_mediaView zoomToRect:1 animated:v29, v31, v33, v35];
      }
    }

    else
    {
    }
  }

  if (([(NUMediaView *)self->_mediaView loopsVideoPlayback]& 1) != 0 || [(PUPhotoEditViewController *)self isStandardVideo])
  {
    [(PUPhotoEditMediaToolController *)self->_mediaToolController videoRenderingChanged];
  }

  else
  {
    [(PUPhotoEditViewController *)self _handleMediaViewReady:v6 statistics:v7];
    [(PUPhotoEditViewController *)self _reloadToolbarButtonsIfNeeded];
    [(PUPhotoEditViewController *)self _updateKeyCommands];
  }
}

uint64_t __72__PUPhotoEditViewController_mediaViewDidFinishRendering_withStatistics___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isInEditRevertTransitionSnapshotVisible];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _uninstallInEditRevertTransitionSnapshotAnimated:1];
  }

  return result;
}

- (void)mediaViewDidScroll:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(PUPhotoEditViewController *)self _updateForcingDarkUserInterfaceStyleForZoomIfNeeded];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(PUPhotoEditViewController *)self _allTools];
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

        [*(*(&v10 + 1) + 8 * v9++) mediaViewDidScroll:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(PUPhotoEditViewController *)self _updateToolbarShadowAlpha];
}

- (void)mediaViewDidEndDecelerating:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(PUPhotoEditViewController *)self _allTools];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v13 + 1) + 8 * v9++) mediaViewDidEndDecelerating:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v10 = [(PUPhotoEditViewController *)self videoScrubberView];
  v11 = [v10 superview];

  if (v11)
  {
    v12 = [(PUPhotoEditViewController *)self view];
    [v12 setNeedsLayout];
  }

  [(PUPhotoEditViewController *)self _updateVideoScrubberDisplayAnimate:0];
}

- (void)mediaViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v4 = a4;
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  self->_isImageZooming = 0;
  [(PUPhotoEditViewController *)self _updateForcingDarkUserInterfaceStyleForZoomIfNeeded];
  v7 = [(PUPhotoEditViewController *)self videoScrubberView];
  v8 = [v7 superview];

  if (v8)
  {
    v9 = [(PUPhotoEditViewController *)self view];
    [v9 setNeedsLayout];
  }

  [(PUPhotoEditViewController *)self _updateVideoScrubberDisplayAnimate:1];
  [(PUPhotoEditViewController *)self _reloadToolbarButtonsIfNeeded];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = [(PUPhotoEditViewController *)self _allTools];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14++) mediaViewDidEndDragging:v6 willDecelerate:v4];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }

  if (![(PUPhotoEditToolController *)self->_currentEditingTool isPerformingLiveInteraction])
  {
    [(PUPhotoEditViewController *)self _cancelPendingFocusViewForInteractionWithDelay];
    [(PUPhotoEditViewController *)self setFocusingViewForInteraction:0 exemptVideoScrubber:v4];
  }
}

- (void)mediaViewWillBeginDragging:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  self->_isImageZooming = 1;
  [(PUPhotoEditViewController *)self _updateVideoScrubberDisplayAnimate:0];
  [(PUPhotoEditViewController *)self _reloadToolbarButtonsIfNeeded];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(PUPhotoEditViewController *)self _allTools];
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

        [*(*(&v10 + 1) + 8 * v9++) mediaViewWillBeginDragging:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(PUPhotoEditViewController *)self _setTransientStatusBadgeVisible:0];
  [(PUPhotoEditViewController *)self _focusViewForInteractionWithDelay];
}

- (void)mediaView:(id)a3 didZoom:(double)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(PUPhotoEditViewController *)self _allTools];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

        [*(*(&v12 + 1) + 8 * v11++) mediaView:v6 didZoom:a4];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  [(PUPhotoEditViewController *)self _updateForcingDarkUserInterfaceStyleForZoomIfNeeded];
  [(PUPhotoEditViewController *)self _updateZoomButton];
  if (self->_isImageZooming)
  {
    [(PUPhotoEditViewController *)self _updateToolbarShadowAlpha];
  }
}

- (void)mediaViewDidEndZooming:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  self->_isImageZooming = 0;
  v5 = [(PUPhotoEditViewController *)self videoScrubberView];
  v6 = [v5 superview];

  if (v6)
  {
    v7 = [(PUPhotoEditViewController *)self view];
    [v7 setNeedsLayout];
  }

  [(PUPhotoEditViewController *)self _updateVideoScrubberDisplayAnimate:1];
  [(PUPhotoEditViewController *)self _reloadToolbarButtonsIfNeeded];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [(PUPhotoEditViewController *)self _allTools];
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

        [*(*(&v13 + 1) + 8 * v12++) mediaViewDidEndZooming:v4];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  [(PUPhotoEditViewController *)self _updateForcingDarkUserInterfaceStyleForZoomIfNeeded];
  if (![(PUPhotoEditToolController *)self->_currentEditingTool isPerformingLiveInteraction])
  {
    [(PUPhotoEditViewController *)self _cancelPendingFocusViewForInteractionWithDelay];
    [(PUPhotoEditViewController *)self setFocusingViewForInteraction:0];
  }
}

- (void)mediaViewWillBeginZooming:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  self->_isImageZooming = 1;
  [(PUPhotoEditViewController *)self _updateVideoScrubberDisplayAnimate:0];
  [(PUPhotoEditViewController *)self _reloadToolbarButtonsIfNeeded];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(PUPhotoEditViewController *)self _allTools];
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

        [*(*(&v10 + 1) + 8 * v9++) mediaViewWillBeginZooming:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(PUPhotoEditViewController *)self _setTransientStatusBadgeVisible:0];
  if (!self->_zoomButtonInteraction)
  {
    [(PUPhotoEditViewController *)self _focusViewForInteractionWithDelay];
  }
}

- (void)_addCropToolGainMapWithRequest:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__PUPhotoEditViewController__addCropToolGainMapWithRequest___block_invoke;
  v3[3] = &unk_1E7B80440;
  v3[4] = self;
  [a3 submit:v3];
}

void __60__PUPhotoEditViewController__addCropToolGainMapWithRequest___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v3 = [a2 result:&v9];
  v4 = v9;
  if (v3)
  {
    v5 = [v3 auxiliaryImage];
    v6 = [v5 cgImageRef];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__PUPhotoEditViewController__addCropToolGainMapWithRequest___block_invoke_2;
    block[3] = &unk_1E7B7FF70;
    block[4] = *(a1 + 32);
    block[5] = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_2661);
    }

    v7 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_error_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "Could not load gain image: %@", buf, 0xCu);
    }
  }
}

void __60__PUPhotoEditViewController__addCropToolGainMapWithRequest___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1608) setGainMapImage:*(a1 + 40)];
  [*(a1 + 32) gainMapValue];
  [*(*(a1 + 32) + 1608) setGainMapValue:?];
  v2 = *(a1 + 40);

  CGImageRelease(v2);
}

- (void)addCropToolGainMapIfNeeded
{
  v9[1] = *MEMORY[0x1E69E9840];
  if ([(PUPhotoEditViewController *)self currentAssetNeedsGainMap])
  {
    v3 = objc_alloc(MEMORY[0x1E69B3960]);
    v4 = [(PUPhotoEditViewController *)self compositionController];
    v5 = [v4 composition];
    v6 = [v3 initWithComposition:v5];

    [v6 setAuxiliaryImageType:7];
    v7 = [MEMORY[0x1E69BDEF8] sourceFilterNoOrientation];
    v9[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [v6 setPipelineFilters:v8];

    [v6 setName:@"PUPhotoEditViewController-renderMeteorPlusGainMap-crop"];
    [(PUPhotoEditViewController *)self _addCropToolGainMapWithRequest:v6];
  }
}

- (void)removeCropToolGainMap
{
  [(PUCropToolController *)self->_cropController setGainMapImage:0];
  cropController = self->_cropController;

  [(PUCropToolController *)cropController setGainMapValue:0.0];
}

- (void)dismissLivePhotoRevertConfirmationAlert
{
  v3 = [(PUPhotoEditViewController *)self irisRevertConfirmationAlert];

  if (v3)
  {

    [(PUPhotoEditViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (BOOL)showsLabelsForToolButtons
{
  v2 = [(PUPhotoEditViewController *)self photoEditSpec];
  v3 = [v2 currentLayoutStyle];

  if (v3 == 1)
  {
    return 0;
  }

  v5 = PULocalizedString(@"PHOTOEDIT_ADJUSTMENTS_TOOL_BUTTON");
  v4 = [v5 length] != 0;

  return v4;
}

- (id)fontForButtons
{
  v3 = +[PUInterfaceManager currentTheme];
  if ([(PUPhotoEditViewController *)self _actionButtonsGoInTopToolbar])
  {
    [v3 photoEditingToolbarButtonCompactFont];
  }

  else
  {
    [v3 photoEditingToolbarButtonNormalFont];
  }
  v4 = ;

  return v4;
}

- (id)secondaryToolbar
{
  if (MEMORY[0x1B8C6D660](self, a2))
  {
    v3 = [(PUPhotoEditViewController *)self navigationController];
    v4 = [v3 navigationBar];
  }

  else
  {
    v4 = self->_secondaryToolbar;
  }

  return v4;
}

- (void)toolController:(id)a3 didChangeIsScrolling:(BOOL)a4
{
  v4 = a4;
  if ([(PUPhotoEditViewController *)self currentToolControllerIsScrolling]!= a4)
  {
    v6 = MEMORY[0x1B8C6D660]([(PUPhotoEditViewController *)self setCurrentToolControllerIsScrolling:v4]);
    v7 = &OBJC_IVAR___PUPhotoEditViewController__mainToolbar;
    if (v6)
    {
      v7 = &OBJC_IVAR___PUPhotoEditViewController__swiftToolbarView;
    }

    v8 = *(&self->super.super.super.isa + *v7);
    v9 = (v4 ^ 1);
    [(PUPhotoEditViewController *)self _updateToolbarsAnimated:1];
    v10 = MEMORY[0x1E69DD250];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __65__PUPhotoEditViewController_toolController_didChangeIsScrolling___block_invoke;
    v12[3] = &unk_1E7B7F350;
    v15 = v9;
    v13 = v8;
    v14 = self;
    v11 = v8;
    [v10 animateWithDuration:v12 animations:0.2];
  }
}

uint64_t __65__PUPhotoEditViewController_toolController_didChangeIsScrolling___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:*(a1 + 48)];
  [*(*(a1 + 40) + 1216) setAlpha:*(a1 + 48)];
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 40) + 1208);

  return [v3 setAlpha:v2];
}

- (id)toolControllerHitEventForwardView:(id)a3
{
  v3 = [(PUPhotoEditViewController *)self mediaView];
  v4 = [v3 _scrollView];

  return v4;
}

- (CGPoint)toolController:(id)a3 viewPointFromOriginalPoint:(CGPoint)a4 view:(id)a5
{
  [(NUMediaView *)self->_mediaView convertPoint:@"/masterSpace" fromSpace:a5 toView:a4.x, a4.y];
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)toolController:(id)a3 originalPointFromViewPoint:(CGPoint)a4 view:(id)a5
{
  [(NUMediaView *)self->_mediaView convertPoint:a5 fromView:@"/masterSpace" toSpace:a4.x, a4.y];
  result.y = v6;
  result.x = v5;
  return result;
}

- (unint64_t)toolControllerSourceAssetType:(id)a3
{
  v4 = [(PUPhotoEditViewController *)self hasLoadedRaw];
  if ([(PUPhotoEditViewController *)self isStandardVideo])
  {
    return v4 | 2;
  }

  else
  {
    return v4;
  }
}

- (CGSize)toolControllerOriginalImageSize:(id)a3
{
  v3 = [(PUPhotoEditViewController *)self compositionController];
  [MEMORY[0x1E69BE360] synchronousInputSizeForCompositionController:v3];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)toolControllerOriginalOrientedImageSize:(id)a3
{
  [(PUPhotoEditViewController *)self toolControllerOriginalImageSize:a3];
  v4 = [(PUPhotoEditViewController *)self compositionController];
  [v4 imageOrientation];
  PLOrientationTransformImageSize();
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)toolControllerLivePhoto:(id)a3
{
  v4 = [(PUPhotoEditViewController *)self livePhotoModel];
  v5 = [v4 isVideoEnabled];

  if (v5)
  {
    v6 = [(NUMediaView *)self->_mediaView _livePhotoView];
    v7 = [v6 livePhoto];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- ($5A0616AB7869379E861635CACF312FD6)toolControllerImageModulationOptions:(id)a3
{
  v3 = MEMORY[0x1E69C35F0];
  v4 = [(PUPhotoEditViewController *)self photo];
  v5 = [v3 optionsForAsset:v4];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.var1 = *&v9;
  result.var0 = v8;
  return result;
}

- (id)toolControllerOriginalCompositionController:(id)a3
{
  v4 = [(PUPhotoEditViewController *)self originalComposition];
  if (v4)
  {
    v5 = MEMORY[0x1E69BDEF0];
    v6 = [(PUPhotoEditViewController *)self originalComposition];
    v7 = [v5 newCompositionControllerWithComposition:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)toolControllerUneditedCompositionController:(id)a3
{
  v3 = MEMORY[0x1E69BDEF0];
  v4 = [(PUPhotoEditViewController *)self uneditedComposition];
  v5 = [v3 newCompositionControllerWithComposition:v4];

  return v5;
}

- (void)toolControllerDidUpdateToolbar:(id)a3
{
  if (self->_currentEditingTool == a3)
  {
    [(PUPhotoEditViewController *)self _updateToolbarsAnimated:1];
  }
}

- (void)toolControllerWantsGestureRecognizerUpdate:(id)a3
{
  [(PUPhotoEditViewController *)self _updateTogglePreviewGestureRecognizer];
  [(PUPhotoEditViewController *)self _updateLivePhotoPlaybackGestureRecognizer];

  [(PUPhotoEditViewController *)self _updateSwipeDownGestureRecognizer];
}

- (void)toolControllerDidChangeWantsTapToToggleOriginalEnabled:(id)a3 enabled:(BOOL)a4
{
  v4 = a4;
  if ([a3 isActiveTool])
  {
    togglePreviewTapGestureRecognizer = self->_togglePreviewTapGestureRecognizer;

    [(UITapGestureRecognizer *)togglePreviewTapGestureRecognizer setEnabled:v4];
  }
}

- (void)toolController:(id)a3 didChangePreferredPreviewViewInsetsAnimated:(BOOL)a4
{
  if (a4 && !self->_switchingToolsAnimated)
  {
    v5 = [(PUPhotoEditViewController *)self view];
    [v5 layoutIfNeeded];

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __88__PUPhotoEditViewController_toolController_didChangePreferredPreviewViewInsetsAnimated___block_invoke;
    v6[3] = &unk_1E7B80DD0;
    v6[4] = self;
    [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:0 animations:v6 completion:&__block_literal_global_950_58559];
  }
}

void __88__PUPhotoEditViewController_toolController_didChangePreferredPreviewViewInsetsAnimated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

- (void)toolControllerDidChangeIsPerformingLiveInteraction:(id)a3
{
  if ([a3 isPerformingLiveInteraction])
  {

    [(PUPhotoEditViewController *)self _focusViewForInteractionWithDelay];
  }

  else
  {
    [(PUPhotoEditViewController *)self _cancelPendingFocusViewForInteractionWithDelay];

    [(PUPhotoEditViewController *)self setFocusingViewForInteraction:0];
  }
}

- (void)toolControllerDidChangeIsActivelyAdjusting:(id)a3
{
  [(PUPhotoEditViewController *)self _updateModelDependentControlsAnimated:1];

  [(PUPhotoEditViewController *)self _updateRenderedPreview];
}

- (void)mediaTimelineControlViewDidEndChanging:(id)a3
{
  [(PUPhotoEditViewController *)self setIsScrubbingVideo:0];
  if ([(PUPhotoEditViewController *)self wasPlayingBeforeBeginningToScrubVideo])
  {
    v4 = +[PUPhotoEditProtoSettings sharedInstance];
    v5 = [v4 pauseAfterMovingPlayhead];

    if ((v5 & 1) == 0)
    {
      v6 = [(PUPhotoEditViewController *)self mediaView];
      v7 = [v6 player];
      [v7 play];
    }

    v8 = [(PUPhotoEditViewController *)self playPauseButton];
    [v8 setSelected:v5 ^ 1u];
  }

  [(PUPhotoEditViewController *)self _cancelPendingFocusViewForInteractionWithDelay];

  [(PUPhotoEditViewController *)self setFocusingViewForInteraction:0];
}

- (void)mediaTimelineControlViewDidChangeValue:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotoEditViewController *)self mediaView];
  v6 = [v5 player];

  if (!v6)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
LABEL_5:
    v7 = 600;
    goto LABEL_6;
  }

  [v6 currentTime];
  v7 = v17;
  if (!v17)
  {
    goto LABEL_5;
  }

LABEL_6:
  memset(&v15, 0, sizeof(v15));
  [v4 currentValue];
  CMTimeMakeWithSeconds(&v15, v8, v7);
  memset(&v14, 0, sizeof(v14));
  [v4 minValue];
  v10 = v9;

  CMTimeMakeWithSeconds(&v14, v10, v7);
  if (v15.flags & 1) != 0 && (v14.flags)
  {
    memset(&v13, 0, sizeof(v13));
    lhs = v15;
    v11 = v14;
    CMTimeSubtract(&v13, &lhs, &v11);
    lhs = v13;
    [v6 seekToTime:&lhs exact:0];
  }
}

- (void)mediaTimelineControlViewWillBeginChanging:(id)a3
{
  [(PUPhotoEditViewController *)self setIsScrubbingVideo:1];
  v4 = [(PUPhotoEditViewController *)self mediaView];
  v6 = [v4 player];

  [v6 playbackRate];
  [(PUPhotoEditViewController *)self setWasPlayingBeforeBeginningToScrubVideo:v5 == 1.0];
  [v6 pause];
  [(PUPhotoEditViewController *)self _focusViewForInteractionWithDelay];
}

- (void)_updateVideoScrubberDisplayAnimate:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUPhotoEditViewController *)self videoScrubberView];

  if (!v5)
  {
    return;
  }

  v6 = self->_toolControllerWantsScrubber && !self->_isAnimatingLayoutOrientation && !self->_isAnimatingMediaViewInsets && !self->_isImageZooming;
  if ((PLPhysicalDeviceIsIPad() & 1) == 0)
  {
    if (!v6)
    {
      goto LABEL_8;
    }

LABEL_10:
    if ([(PUPhotoEditViewController *)self isFocusingViewForInteraction]&& ![(PUPhotoEditViewController *)self isScrubbingVideo])
    {
      v11 = 0;
      v13 = 0.0;
    }

    else
    {
      v13 = 1.0;
      v11 = 1;
    }

    v12 = 1;
    goto LABEL_16;
  }

  v7 = [(PUPhotoEditViewController *)self view];
  v8 = [v7 window];
  [v8 bounds];
  v10 = v9 >= 650.0;

  if (v10 && v6)
  {
    goto LABEL_10;
  }

LABEL_8:
  v11 = 0;
  v12 = 0;
  v13 = 0.0;
LABEL_16:
  v14 = [(PUPhotoEditViewController *)self videoScrubberView];
  [v14 alpha];
  v16 = v15;
  v17 = v13 != v15;

  v18 = 0.0;
  if (v12)
  {
    if ([(PUPhotoEditViewController *)self isFocusingViewForInteraction])
    {
      v18 = 0.0;
    }

    else
    {
      v18 = 1.0;
    }
  }

  v19 = [(PUPhotoEditViewController *)self playPauseButton];
  [v19 alpha];
  v21 = v20;

  if (v18 != v21 || v13 != v16)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __64__PUPhotoEditViewController__updateVideoScrubberDisplayAnimate___block_invoke;
    aBlock[3] = &unk_1E7B7FF98;
    v29 = v11;
    aBlock[4] = self;
    v22 = _Block_copy(aBlock);
    if (v3)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __64__PUPhotoEditViewController__updateVideoScrubberDisplayAnimate___block_invoke_2;
      v25[3] = &unk_1E7B7B590;
      v26 = v17;
      v25[4] = self;
      v27 = v18 != v21;
      *&v25[5] = v13;
      *&v25[6] = v18;
      [MEMORY[0x1E69DD250] _animateWithDuration:4 delay:v25 options:v22 animations:0 start:0.25 completion:0.3];
    }

    else
    {
      if (v13 != v16)
      {
        v23 = [(PUPhotoEditViewController *)self videoScrubberView];
        [v23 setAlpha:v13];
      }

      if (v18 != v21)
      {
        v24 = [(PUPhotoEditViewController *)self playPauseButton];
        [v24 setAlpha:v18];
      }

      v22[2](v22);
    }
  }
}

void __64__PUPhotoEditViewController__updateVideoScrubberDisplayAnimate___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = [*(a1 + 32) view];
    [v2 setNeedsLayout];
  }
}

void __64__PUPhotoEditViewController__updateVideoScrubberDisplayAnimate___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) videoScrubberView];
    [v3 setAlpha:v2];
  }

  if (*(a1 + 57) == 1)
  {
    v4 = *(a1 + 48);
    v5 = [*(a1 + 32) playPauseButton];
    [v5 setAlpha:v4];
  }
}

- (void)_updateVideoScrubber
{
  v3 = [(PUPhotoEditViewController *)self videoScrubberView];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [(PUPhotoEditViewController *)self isScrubbingVideo];

  if (v5)
  {
    return;
  }

  v6 = [(PUPhotoEditViewController *)self mediaView];
  memset(&v34, 0, sizeof(v34));
  v7 = [v6 player];
  v8 = v7;
  if (v7)
  {
    [v7 mediaDuration];
  }

  else
  {
    memset(&v34, 0, sizeof(v34));
  }

  memset(&v33, 0, sizeof(v33));
  CMTimeMake(&v33, 0, v34.timescale);
  memset(&v32, 0, sizeof(v32));
  v9 = [v6 player];
  v10 = v9;
  if (v9)
  {
    [v9 currentTime];
  }

  else
  {
    memset(&v32, 0, sizeof(v32));
  }

  v11 = [(PUPhotoEditViewController *)self compositionController];
  v12 = [v11 trimAdjustmentController];

  if (v12)
  {
    [v12 startTime];
    if (v31)
    {
      [v12 endTime];
      if (v30)
      {
        [v12 startTime];
        v33 = time;
        [v12 endTime];
        v34 = time;
        currentEditingTool = self->_currentEditingTool;
        if (currentEditingTool)
        {
          lhs = v33;
          [(PUPhotoEditToolController *)currentEditingTool displayedTimeForOriginalAssetTime:&lhs];
          v14 = self->_currentEditingTool;
          v33 = time;
          if (v14)
          {
            lhs = v34;
            [(PUPhotoEditToolController *)v14 displayedTimeForOriginalAssetTime:&lhs];
LABEL_17:
            v34 = time;
            goto LABEL_18;
          }
        }

        else
        {
          memset(&v33, 0, sizeof(v33));
        }

        memset(&time, 0, sizeof(time));
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v33.flags & 1) != 0 && (v34.flags & 1) != 0 && (v32.flags)
  {
    lhs = v33;
    v27 = v32;
    CMTimeAdd(&time, &lhs, &v27);
    v32 = time;
    time = v33;
    Seconds = CMTimeGetSeconds(&time);
    v16 = [(PUPhotoEditViewController *)self videoScrubberView];
    *&v17 = Seconds;
    [v16 setMinValue:v17];

    time = v34;
    v18 = CMTimeGetSeconds(&time);
    v19 = [(PUPhotoEditViewController *)self videoScrubberView];
    *&v20 = v18;
    [v19 setMaxValue:v20];

    time = v32;
    v21 = CMTimeGetSeconds(&time);
    v22 = [(PUPhotoEditViewController *)self videoScrubberView];
    *&v23 = v21;
    [v22 setCurrentValue:v23];

    v24 = [v6 player];
    if ([v24 playbackState] == 3)
    {
      time = v32;
      lhs = v34;
      v25 = CMTimeCompare(&time, &lhs) != 0;
    }

    else
    {
      v25 = 0;
    }

    v26 = [(PUPhotoEditViewController *)self playPauseButton];
    [v26 setSelected:v25];
  }
}

- (void)_createVideoScrubberIfNeeded
{
  v3 = [(PUPhotoEditViewController *)self videoScrubberView];
  if (v3)
  {
  }

  else if ([(PUPhotoEditViewController *)self isStandardVideo])
  {
    v4 = objc_alloc_init(PUAVKitMediaTimelineView);
    videoScrubberView = self->_videoScrubberView;
    self->_videoScrubberView = v4;

    v6 = [(PUPhotoEditViewController *)self photo];
    v7 = [v6 mediaSubtypes];

    v8 = 4.0;
    if ((*&v7 & 0x100000) == 0)
    {
      v8 = 1.0;
    }

    [(PUAVKitMediaTimelineView *)self->_videoScrubberView setWhiteValue:v8];
    [(PUAVKitMediaTimelineView *)self->_videoScrubberView setOverrideUserInterfaceStyle:2];
    [(PUAVKitMediaTimelineView *)self->_videoScrubberView setShowsTimeLabels:1];
    [(PUAVKitMediaTimelineView *)self->_videoScrubberView setPlaying:1];
    [(PUAVKitMediaTimelineView *)self->_videoScrubberView setAlpha:0.0];
    [(PUAVKitMediaTimelineView *)self->_videoScrubberView setDelegate:self];
    v9 = [(PUPhotoEditViewController *)self view];
    [v9 insertSubview:self->_videoScrubberView aboveSubview:self->_mediaView];

    if (!self->_videoScrubberTimeObserver)
    {
      objc_initWeak(&location, self);
      v10 = [(NUMediaView *)self->_mediaView player];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __57__PUPhotoEditViewController__createVideoScrubberIfNeeded__block_invoke;
      v23[3] = &unk_1E7B7B568;
      objc_copyWeak(&v24, &location);
      v11 = [v10 addPlaybackTimeObserver:v23];
      videoScrubberTimeObserver = self->_videoScrubberTimeObserver;
      self->_videoScrubberTimeObserver = v11;

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }

    v13 = +[PUPhotoEditSupport createPlayPauseButton];
    playPauseButton = self->_playPauseButton;
    self->_playPauseButton = v13;

    objc_initWeak(&location, self);
    v15 = self->_playPauseButton;
    v16 = MEMORY[0x1E69DC628];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __57__PUPhotoEditViewController__createVideoScrubberIfNeeded__block_invoke_2;
    v21[3] = &unk_1E7B80890;
    objc_copyWeak(&v22, &location);
    v17 = [v16 actionWithHandler:v21];
    [(UIButton *)v15 addAction:v17 forControlEvents:64];

    v18 = MEMORY[0x1E69DC888];
    [(PUAVKitMediaTimelineView *)self->_videoScrubberView whiteValue];
    v19 = [v18 colorWithWhite:? alpha:?];
    [(UIButton *)self->_playPauseButton setTintColor:v19];

    v20 = [(PUPhotoEditViewController *)self view];
    [v20 insertSubview:self->_playPauseButton aboveSubview:self->_mediaView];

    [(PUPhotoEditViewController *)self _updateVideoScrubberDisplayAnimate:1];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }
}

void __57__PUPhotoEditViewController__createVideoScrubberIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateVideoScrubber];
}

void __57__PUPhotoEditViewController__createVideoScrubberIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained mediaView];
  v3 = [v2 player];

  if ([v3 playbackState] == 3)
  {
    [v3 pause];
  }

  else
  {
    [v3 play];
  }
}

- (void)_teardownCleanupResources
{
  v2 = [MEMORY[0x1E69B3A58] sharedFactory];
  v3 = [v2 modelRegistry];

  [v3 unregisterModelForKey:*MEMORY[0x1E69BE038]];
  [v3 unregisterModelForKey:*MEMORY[0x1E69BE040]];
}

- (void)_ensureCleanupResourcesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotoEditViewController *)self compositionController];
  v6 = [v5 inpaintAdjustmentController];

  if (v6)
  {
    v7 = [(PUPhotoEditViewController *)self modelPrepInterval];
    [v7 beginInterval];

    v8 = PLPhotoEditGetLog();
    v9 = os_signpost_id_generate(v8);
    v10 = v8;
    v11 = v10;
    if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PreparingEditModels", " enableTelemetry=YES ", buf, 2u);
    }

    v12 = [objc_alloc(MEMORY[0x1E69C42A8]) initWithPackageType:0];
    objc_initWeak(buf, self);
    if ([v12 isModelAvailable])
    {
      v4[2](v4);
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x1E69C36B0]);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __67__PUPhotoEditViewController__ensureCleanupResourcesWithCompletion___block_invoke;
      v33[3] = &unk_1E7B80610;
      objc_copyWeak(&v35, buf);
      v14 = v13;
      v34 = v14;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __67__PUPhotoEditViewController__ensureCleanupResourcesWithCompletion___block_invoke_2;
      v30[3] = &unk_1E7B80610;
      objc_copyWeak(&v32, buf);
      v15 = v14;
      v31 = v15;
      [v15 createViewsWithCancelBlock:v33 revertBlock:v30];
      v16 = [v15 view];
      [v15 setModalPresentationStyle:6];
      [v15 setModalPresentationCapturesStatusBarAppearance:1];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __67__PUPhotoEditViewController__ensureCleanupResourcesWithCompletion___block_invoke_3;
      v27[3] = &unk_1E7B80C38;
      v17 = v16;
      v28 = v17;
      v29 = self;
      [(PUPhotoEditViewController *)self presentViewController:v15 animated:0 completion:v27];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __67__PUPhotoEditViewController__ensureCleanupResourcesWithCompletion___block_invoke_4;
      v25[3] = &unk_1E7B7B518;
      v18 = v15;
      v26 = v18;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __67__PUPhotoEditViewController__ensureCleanupResourcesWithCompletion___block_invoke_5;
      v20[3] = &unk_1E7B7B540;
      objc_copyWeak(v24, buf);
      v21 = v11;
      v24[1] = v9;
      v19 = v18;
      v22 = v19;
      v23 = v4;
      [v12 preparePackageWithProgress:v25 updateHandler:v20];

      objc_destroyWeak(v24);
      objc_destroyWeak(&v32);

      objc_destroyWeak(&v35);
    }

    objc_destroyWeak(buf);
  }

  else
  {
    v4[2](v4);
  }
}

void __67__PUPhotoEditViewController__ensureCleanupResourcesWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained _didStartExitAction];
    v3 = [v5 aggregateSession];
    [v3 finishSessionWithEnd:2];

    v4 = [v5 exitEditEventBuilder];
    [v4 setSessionEndReason:2];

    [v5 _resignCurrentTool];
    [v5 didFinishWithChanges:0];
    [v5 _didEndExitActionWithSessionKeys:0];
    [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
    WeakRetained = v5;
  }
}

void __67__PUPhotoEditViewController__ensureCleanupResourcesWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained _didStartExitAction];
    v3 = [v5 aggregateSession];
    [v3 finishSessionWithEnd:2];

    v4 = [v5 exitEditEventBuilder];
    [v4 setSessionEndReason:2];

    [v5 _resignCurrentTool];
    [v5 didFinishWithChanges:0];
    [v5 _didEndExitActionWithSessionKeys:0];
    [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
    WeakRetained = v5;
  }
}

void __67__PUPhotoEditViewController__ensureCleanupResourcesWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) centerXAnchor];
  v3 = [*(a1 + 40) view];
  v4 = [v3 centerXAnchor];
  v5 = [v2 constraintEqualToAnchor:v4];
  [v5 setActive:1];

  v9 = [*(a1 + 32) centerYAnchor];
  v6 = [*(a1 + 40) view];
  v7 = [v6 centerYAnchor];
  v8 = [v9 constraintEqualToAnchor:v7];
  [v8 setActive:1];
}

void __67__PUPhotoEditViewController__ensureCleanupResourcesWithCompletion___block_invoke_5(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = [WeakRetained modelPrepInterval];
  [v7 endInterval];

  v8 = *(a1 + 32);
  v9 = v8;
  v10 = *(a1 + 64);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v9, OS_SIGNPOST_INTERVAL_END, v10, "PreparingEditModels", " enableTelemetry=YES ", buf, 2u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__PUPhotoEditViewController__ensureCleanupResourcesWithCompletion___block_invoke_946;
  v12[3] = &unk_1E7B7B478;
  v13 = v5;
  v14 = *(a1 + 40);
  v16 = a2;
  v15 = *(a1 + 48);
  v11 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

uint64_t __67__PUPhotoEditViewController__ensureCleanupResourcesWithCompletion___block_invoke_946(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);

    return [v2 setErrorState:?];
  }

  else
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 40);
    if (v4 == 1)
    {
      [v5 dismissViewControllerAnimated:1 completion:0];
      v6 = *(*(a1 + 48) + 16);

      return v6();
    }

    else
    {

      return [v5 clearErrorState];
    }
  }
}

- (BOOL)_isQuickCrop
{
  v2 = [(PUPhotoEditViewController *)self quickCropContext];
  v3 = v2 != 0;

  return v3;
}

- (int64_t)currentToolPickerLayoutDirection
{
  v3 = [(PUPhotoEditViewController *)self photoEditSpec];
  v4 = [v3 currentLayoutStyle];

  v5 = [(PUPhotoEditViewController *)self layoutOrientation];
  v6 = v4 == 4;
  v7 = 1;
  if (v4 != 4)
  {
    v7 = 2;
  }

  if (v5 == 3)
  {
    v6 = v7;
  }

  if (v5 == 2)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

- (id)_createMediaView
{
  v3 = objc_alloc_init(MEMORY[0x1E69B3DC0]);
  v4 = [(PUPhotoEditViewController *)self _defaultRenderPipelineFiltersForCurrentMode];
  [v3 setPipelineFilters:v4];

  [v3 setDelegate:self];
  [v3 setMaximumZoomScale:1.0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [objc_alloc(MEMORY[0x1E69B3998]) initWithName:@"Edit View Controller Display"];
  renderImageClient = self->_renderImageClient;
  self->_renderImageClient = v5;

  v7 = self->_renderImageClient;
  v8 = [objc_alloc(MEMORY[0x1E69B3C00]) initWithLevel:0];
  [(NUBufferRenderClient *)v7 setPriority:v8];

  [v3 setClipsToBounds:0];
  v9 = 6.0;
  if (self->_isEmbeddedEdit)
  {
    v9 = 0.0;
  }

  [v3 setMaximumZoomScale:v9];
  [v3 setCenterContent:0];
  [v3 setAlwaysBounceScrollView:0];
  if ([MEMORY[0x1E69B3AB0] renderMeteorPlusAsHDR])
  {
    [v3 setHdrEnabled:PXUserAllowFullHDR()];
  }

  v10 = [v3 _scrollView];
  [v10 _setHiddenPocketEdges:15];

  return v3;
}

- (void)_transitionToNewToolViewController:(id)a3 oldToolViewController:(id)a4 animationBlock:(id)a5 completion:(id)a6 animated:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  [(NUMediaView *)self->_mediaView setHidden:0];
  if ([(PUPhotoEditViewController *)self isStandardVideo])
  {
    v16 = [(PUPhotoEditMediaToolController *)self->_mediaToolController trimController];
    [v16 pause];
  }

  v17 = [v12 view];
  v18 = [v13 view];
  if (v12)
  {
    v19 = [(PUPhotoEditViewController *)self view];
    [(PUPhotoEditViewController *)self addChildViewController:v12];
    [v19 addSubview:v17];
    [v12 didMoveToParentViewController:self];
    [v19 setNeedsUpdateConstraints];
  }

  v20 = [(PUPhotoEditViewController *)self livePhotoModel];
  [v20 setIgnoresUpdates:1];

  v21 = [(PUPhotoEditViewController *)self _isQuickCrop];
  if (v7)
  {
    if (v13)
    {
      v22 = 0;
    }

    else
    {
      v22 = v21;
    }

    [v17 setAlpha:0.0];
    [(PUPhotoEditViewController *)self setMediaViewEdgeInsetsUpdateDisableCount:[(PUPhotoEditViewController *)self mediaViewEdgeInsetsUpdateDisableCount]+ 1];
    v23 = [(PUPhotoEditViewController *)self view];
    [v23 layoutIfNeeded];

    [(PUPhotoEditViewController *)self setMediaViewEdgeInsetsUpdateDisableCount:[(PUPhotoEditViewController *)self mediaViewEdgeInsetsUpdateDisableCount]- 1];
    [MEMORY[0x1E6979518] animationDuration];
    v25 = v24;
    UIAnimationDragCoefficient();
    v27 = v25 * v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __121__PUPhotoEditViewController__transitionToNewToolViewController_oldToolViewController_animationBlock_completion_animated___block_invoke;
    aBlock[3] = &unk_1E7B7B4F0;
    v43 = v14;
    aBlock[4] = self;
    v45 = v22;
    v44 = v27;
    v41 = v17;
    v42 = v18;
    v28 = _Block_copy(aBlock);
    v33 = MEMORY[0x1E69E9820];
    v34 = 3221225472;
    v35 = __121__PUPhotoEditViewController__transitionToNewToolViewController_oldToolViewController_animationBlock_completion_animated___block_invoke_2;
    v36 = &unk_1E7B7D308;
    v37 = self;
    v39 = v15;
    v38 = v13;
    v29 = _Block_copy(&v33);
    [MEMORY[0x1E69DD250] _animateWithDuration:0 delay:v28 options:0 animations:v29 start:v27 completion:{0.0, v33, v34, v35, v36, v37}];
  }

  else
  {
    [(PUPhotoEditViewController *)self _updateBackgroundColor];
    v15[2](v15);
    if (v13)
    {
      [v13 willMoveToParentViewController:0];
      v30 = [v13 view];
      [v30 removeFromSuperview];

      [v13 removeFromParentViewController];
    }

    [(PUPhotoEditViewController *)self _updateSubviewsOrdering];
    v31 = [(PUPhotoEditViewController *)self livePhotoModel];
    [v31 setIgnoresUpdates:0];
  }

  [(PUPhotoEditViewController *)self _updateRenderedPreview];
  [(PUPhotoEditViewController *)self _updateToolbarsAnimated:v7];
  [(PUPhotoEditViewController *)self _updateToolbarBackgroundAnimated:v7];
  [(PUPhotoEditViewController *)self _updateTogglePreviewGestureRecognizer];
  [(PUPhotoEditViewController *)self _updateLivePhotoPlaybackGestureRecognizer];
  [(PUPhotoEditViewController *)self _updateSwipeDownGestureRecognizer];
  [(PEAutoAdjustmentController *)self->_autoEnhanceController invalidateCachedAdjustments];
  v32 = [(PUPhotoEditViewController *)self valuesCalculator];
  [v32 precomputeImageValues];

  [(PUEditPluginSession *)self->_pluginSession updateAvailability];
  [(PUPhotoEditViewController *)self setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
}

uint64_t __121__PUPhotoEditViewController__transitionToNewToolViewController_oldToolViewController_animationBlock_completion_animated___block_invoke(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  [*(a1 + 32) _mediaViewEdgeInsets];
  [*(*(a1 + 32) + 1032) _transitionToInsets:0 duration:1 animationCurve:? updateRenderContent:?];
  [*(a1 + 32) _updateSubviewsOrdering];
  [*(a1 + 32) _updateBackgroundColor];
  [*(a1 + 40) setAlpha:1.0];
  v2 = *(a1 + 48);

  return [v2 setAlpha:0.0];
}

void __121__PUPhotoEditViewController__transitionToNewToolViewController_oldToolViewController_animationBlock_completion_animated___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 1024) = 0;
  [*(a1 + 32) _updateSubviewsOrdering];
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 40);
  if (v2)
  {
    [v2 willMoveToParentViewController:0];
    v3 = [*(a1 + 40) view];
    [v3 removeFromSuperview];

    [*(a1 + 40) removeFromParentViewController];
  }

  v4 = [*(a1 + 32) livePhotoModel];
  [v4 setIgnoresUpdates:0];
}

- (void)_transitionToEditingTool:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__PUPhotoEditViewController__transitionToEditingTool_animated_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7B80C88;
  v10 = v9;
  v33 = v10;
  v11 = _Block_copy(aBlock);
  v12 = v11;
  currentTool = self->_currentTool;
  if (currentTool == v8)
  {
    (*(v11 + 2))(v11);
  }

  else
  {
    v14 = currentTool;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v8;
    }

    else
    {
      v16 = 0;
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __81__PUPhotoEditViewController__transitionToEditingTool_animated_completionHandler___block_invoke_2;
    v24[3] = &unk_1E7B7B4C8;
    v17 = v16;
    v25 = v17;
    v26 = self;
    v27 = v8;
    v31 = a4;
    v18 = v15;
    v28 = v18;
    v30 = v12;
    v19 = v14;
    v29 = v19;
    v20 = _Block_copy(v24);
    v21 = v20;
    if (v17)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __81__PUPhotoEditViewController__transitionToEditingTool_animated_completionHandler___block_invoke_5;
      v22[3] = &unk_1E7B80C88;
      v23 = v20;
      [(UIViewController *)v17 prepareForToolTransitionWithCompletion:v22];
    }

    else
    {
      v20[2](v20);
    }
  }
}

uint64_t __81__PUPhotoEditViewController__transitionToEditingTool_animated_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __81__PUPhotoEditViewController__transitionToEditingTool_animated_completionHandler___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) suppressesEditUpdates])
  {
    if (([*(*(a1 + 40) + 1032) loopsVideoPlayback] & 1) != 0 || (objc_msgSend(*(*(a1 + 40) + 1032), "player"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "playbackState"), v2, v3 == 3))
    {
      [*(*(a1 + 40) + 1032) _stopVideoPlayback];
    }
  }

  objc_storeStrong((*(a1 + 40) + 1008), *(*(a1 + 40) + 1000));
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 48);
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong((*(a1 + 40) + 1000), v4);
  objc_storeStrong((*(a1 + 40) + 1016), *(a1 + 48));
  v5 = *(a1 + 40);
  if (*(v5 + 1088))
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
    v6 = *(a1 + 40);
    v7 = *(v6 + 1088);
    *(v6 + 1088) = 0;

    v8 = [*(a1 + 40) view];
    [v8 setNeedsUpdateConstraints];

    v5 = *(a1 + 40);
  }

  *(v5 + 1024) = *(a1 + 80);
  [*(a1 + 56) willResignActiveTool];
  v9 = [*(a1 + 40) _defaultRenderPipelineFiltersForCurrentMode];
  [*(a1 + 32) willBecomeActiveTool];
  v10 = [*(a1 + 32) filter];
  if (v10)
  {
    v11 = [v9 arrayByAddingObject:v10];

    v9 = v11;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__PUPhotoEditViewController__transitionToEditingTool_animated_completionHandler___block_invoke_3;
  aBlock[3] = &unk_1E7B809F0;
  aBlock[4] = *(a1 + 40);
  v12 = v9;
  v23 = v12;
  v24 = *(a1 + 32);
  v13 = _Block_copy(aBlock);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81__PUPhotoEditViewController__transitionToEditingTool_animated_completionHandler___block_invoke_4;
  v16[3] = &unk_1E7B7B4A0;
  v21 = *(a1 + 80);
  v16[4] = *(a1 + 40);
  v17 = v12;
  v18 = *(a1 + 56);
  v19 = *(a1 + 32);
  v20 = *(a1 + 72);
  v14 = v12;
  v15 = _Block_copy(v16);
  [*(a1 + 40) _transitionToNewToolViewController:*(a1 + 48) oldToolViewController:*(a1 + 64) animationBlock:v13 completion:v15 animated:*(a1 + 80)];
}

uint64_t __81__PUPhotoEditViewController__transitionToEditingTool_animated_completionHandler___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 1032) _setPipelineFilters:*(a1 + 40) shouldUpdateContent:0];
  if (([*(a1 + 48) wantsZoomAndPanEnabled] & 1) == 0)
  {
    [*(*(a1 + 32) + 1032) setZoomScaleToFit];
  }

  [*(a1 + 32) _updateToolbarShadowAlpha];
  v2 = *(a1 + 48);

  return [v2 updateForIncomingAnimation];
}

uint64_t __81__PUPhotoEditViewController__transitionToEditingTool_animated_completionHandler___block_invoke_4(uint64_t a1)
{
  if ((*(a1 + 72) & 1) == 0)
  {
    [*(*(a1 + 32) + 1032) setPipelineFilters:*(a1 + 40)];
  }

  v2 = [*(a1 + 32) videoScrubberView];
  v3 = [v2 superview];

  if (v3)
  {
    v4 = [*(a1 + 32) view];
    [v4 setNeedsLayout];
  }

  [*(a1 + 32) _updateVideoScrubber];
  [*(a1 + 48) didResignActiveTool];
  [*(a1 + 56) didBecomeActiveTool];
  [*(a1 + 56) setBackdropViewGroupName:@"PUPhotoEditToolbarGroupName"];
  (*(*(a1 + 64) + 16))();
  v5 = *(a1 + 32);

  return [v5 fulfillPendingEditsRequestIfNecessary];
}

- (id)_defaultInitialToolController
{
  photoStylesToolController = self->_photoStylesToolController;
  if (photoStylesToolController)
  {
    v4 = photoStylesToolController;
  }

  if (self->_portraitToolController)
  {
    v5 = [(PUPhotoEditViewController *)self compositionController];
    v6 = [v5 depthAdjustmentController];
    v7 = [v6 enabled];

    if (v7)
    {
      portraitToolController = self->_portraitToolController;
LABEL_10:
      v9 = portraitToolController;

      photoStylesToolController = v9;
      goto LABEL_13;
    }
  }

  if (self->_mediaToolController && ([(PUPhotoEditViewController *)self isStandardVideo]|| [(PUPhotoEditViewController *)self isHighframeRateVideo]))
  {
    portraitToolController = self->_mediaToolController;
    goto LABEL_10;
  }

  if (!photoStylesToolController)
  {
    photoStylesToolController = self->_adjustmentsController;
  }

LABEL_13:

  return photoStylesToolController;
}

- (id)_toolControllerForInitialToolType:(int64_t)a3
{
  v4 = [(PUPhotoEditViewController *)self initialToolType];
  v5 = 0;
  if (v4 > 4)
  {
    if (v4 <= 6)
    {
      if (v4 != 5)
      {
        v6 = 1608;
        goto LABEL_19;
      }

      photoStylesToolController = self->_photoStylesToolController;
      if (photoStylesToolController)
      {
LABEL_26:
        v7 = photoStylesToolController;
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    switch(v4)
    {
      case 7:
        cropController = self->_cropController;
        v10 = 1;
        break;
      case 8:
        cropController = self->_cropController;
        v10 = 2;
        break;
      case 9:
        goto LABEL_16;
      default:
        goto LABEL_28;
    }

    [(PUCropToolController *)cropController setInitialAction:v10];
    photoStylesToolController = self->_cropController;
    goto LABEL_26;
  }

  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_28;
      }

LABEL_18:
      v6 = 1632;
      goto LABEL_19;
    }

LABEL_16:
    v7 = [(PUPhotoEditViewController *)self _defaultInitialToolController];
LABEL_27:
    v5 = v7;
    goto LABEL_28;
  }

  if (v4 == 2)
  {
    v5 = self->_adjustmentsController;
    [(PUAdjustmentsToolController *)self->_adjustmentsController setInitialAction:1];
    goto LABEL_28;
  }

  if (v4 != 3)
  {
    v6 = 1624;
LABEL_19:
    photoStylesToolController = *(&self->super.super.super.isa + v6);
    goto LABEL_26;
  }

  v5 = self->_filtersController;
  v11 = self->_photoStylesToolController;
  if (v11)
  {
    v12 = v11;

    v5 = v12;
  }

LABEL_28:

  return v5;
}

- (void)_chooseInitialEditingTool
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_currentTool)
  {
    return;
  }

  [(PUPhotoEditViewController *)self _updateToolbarsAnimated:0];
  v3 = [(PUPhotoEditViewController *)self initialPendingEditsRequest];

  if (!v3 || (-[PUPhotoEditViewController initialPendingEditsRequest](self, "initialPendingEditsRequest"), v4 = objc_claimAutoreleasedReturnValue(), [v4 adjustments], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "lastObject"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "category"), v6, v5, v4, -[PUPhotoEditViewController _toolControllerForAdjustmentCategory:](self, "_toolControllerForAdjustmentCategory:", v7), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = [(PUPhotoEditViewController *)self _toolControllerForInitialToolType:[(PUPhotoEditViewController *)self initialToolType]];
  }

  [(PUPhotoEditViewController *)self switchToEditingTool:v8 animated:v8 == self->_cropController];
  v9 = [(PUPhotoEditViewController *)self photo];
  if (([v9 mediaSubtypes] & 0x10) != 0)
  {
    portraitToolController = self->_portraitToolController;
    if (portraitToolController)
    {
      v11 = [(PUPhotoEditPortraitToolController *)portraitToolController majorVersion];
      v12 = [(PUPhotoEditPortraitToolController *)self->_portraitToolController minorVersion];
      v13 = [(PUPhotoEditPortraitToolController *)self->_portraitToolController sDOFRenderingVersion];
      v14 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 134218496;
        *&v18[4] = v11;
        *&v18[12] = 2048;
        *&v18[14] = v12;
        *&v18[22] = 2048;
        v19 = v13;
        v15 = "Portrait photo asset version: %lu.%lu / sDOF rendering version: %lu";
        v16 = v14;
        v17 = 32;
LABEL_11:
        _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_DEFAULT, v15, v18, v17);
      }
    }

    else
    {
      v14 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        v15 = "Unable to read portrait photo asset version.";
        v16 = v14;
        v17 = 2;
        goto LABEL_11;
      }
    }
  }

  if ([(PUPhotoEditViewController *)self initialToolType:*v18]== 9)
  {
    [(PUPhotoEditViewController *)self _handleMarkupButton:0];
  }
}

- (void)switchToEditingToolWithTag:(int64_t)a3
{
  v4 = [(PUPhotoEditViewController *)self _toolControllerForTag:a3];
  if (MEMORY[0x1B8C6D660]())
  {
    [(UIView *)self->_swiftToolbarView setUserInteractionEnabled:0];
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__PUPhotoEditViewController_switchToEditingToolWithTag___block_invoke;
  v5[3] = &unk_1E7B80DD0;
  v5[4] = self;
  [(PUPhotoEditViewController *)self switchToEditingTool:v4 animated:1 completionHandler:v5];
}

uint64_t __56__PUPhotoEditViewController_switchToEditingToolWithTag___block_invoke(uint64_t a1)
{
  result = MEMORY[0x1B8C6D660]();
  if (result)
  {
    v3 = *(*(a1 + 32) + 2448);

    return [v3 setUserInteractionEnabled:1];
  }

  return result;
}

- (void)switchToEditingTool:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v42 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PUPhotoEditViewController_switchToEditingTool_animated_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7B80C88;
  v10 = v9;
  v40 = v10;
  v11 = _Block_copy(aBlock);
  v12 = v8;
  v13 = [(PUPhotoEditToolController *)v12 compositionController];
  if (v13 && (v14 = v13, v15 = [(PUPhotoEditToolController *)v12 canBecomeActiveTool], v14, v15) && !self->_switchingToolsAnimated)
  {
    v16 = v12;
    if (!v12)
    {
      adjustmentsController = self->_adjustmentsController;
      if (self->_currentTool == adjustmentsController)
      {
        v16 = 0;
      }

      else
      {
        v16 = [(PUPhotoEditToolController *)adjustmentsController compositionController];

        if (v16)
        {
          v16 = self->_adjustmentsController;
        }
      }
    }

    if ([(PUAdjustmentsToolController *)v16 toolControllerTag]== 1006 && self->_currentTool == v16)
    {
      v17 = self->_previousEditingTool;

      v16 = v17;
    }

    if (v16 == self->_currentTool)
    {
      [(PUAdjustmentsToolController *)v16 reactivate];
      v11[2](v11);
    }

    else
    {
      v30 = v6;
      if (v16 == self->_cleanupController)
      {
        v18 = MEMORY[0x1E69C3548];
        v19 = [MEMORY[0x1E69C3548] cleanUpTipID];
        [v18 setTipActionPerformed:v19];
      }

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v20 = [(NSArray *)self->_coreToolButtons arrayByAddingObject:self->_redEyeButton, self];
      v21 = [v20 countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v36;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v36 != v23)
            {
              objc_enumerationMutation(v20);
            }

            [*(*(&v35 + 1) + 8 * i) setSelected:{-[PUAdjustmentsToolController toolControllerTag](v16, "toolControllerTag") == objc_msgSend(*(*(&v35 + 1) + 8 * i), "tag")}];
          }

          v22 = [v20 countByEnumeratingWithState:&v35 objects:v41 count:16];
        }

        while (v22);
      }

      [v29[157] setSelectedToolTag:{-[PUAdjustmentsToolController toolControllerTag](v16, "toolControllerTag")}];
      if ([v29[125] suppressesEditUpdates])
      {
        [MEMORY[0x1E6979518] begin];
        [MEMORY[0x1E6979518] setDisableActions:1];
        [v29 _updateGainMap];
        v25 = v29[129];
        v26 = [v29 _composition];
        [v25 setComposition:v26];

        [v29[129] waitForRender];
        if ([v29[129] loopsVideoPlayback])
        {
          [v29[129] _startVideoPlayback];
        }

        [MEMORY[0x1E6979518] commit];
        v27 = dispatch_time(0, 100000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __76__PUPhotoEditViewController_switchToEditingTool_animated_completionHandler___block_invoke_2;
        block[3] = &unk_1E7B7B478;
        block[4] = v29;
        v16 = v16;
        v32 = v16;
        v34 = v30;
        v33 = v10;
        dispatch_after(v27, MEMORY[0x1E69E96A0], block);
      }

      else
      {
        [v29 _transitionToEditingTool:v16 animated:v30 completionHandler:v10];
      }
    }
  }

  else
  {
    v11[2](v11);
    v16 = v12;
  }
}

uint64_t __76__PUPhotoEditViewController_switchToEditingTool_animated_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_defaultRenderPipelineFiltersForCurrentMode
{
  if ([(PUPhotoEditViewController *)self isStandardVideo]|| [(PUPhotoEditViewController *)self isLoopingVideo])
  {
    v3 = [objc_opt_class() _defaultMediaViewRenderPipelineFilters];
  }

  else
  {
    v3 = [objc_opt_class() _defaultLivePhotoRenderPipelineFilters];
  }

  return v3;
}

- (int64_t)_toolTypeForToolWithTag:(int64_t)a3
{
  if ((a3 - 1002) > 5)
  {
    return 0;
  }

  else
  {
    return qword_1B3D0D320[a3 - 1002];
  }
}

- (id)_allTools
{
  [(PUPhotoEditViewController *)self _loadToolsIfNeeded];
  allTools = self->__allTools;

  return allTools;
}

- (void)_setupToolsIfNeeded
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(PUPhotoEditViewController *)self compositionController];
  v4 = [(PUPhotoEditViewController *)self valuesCalculator];
  v5 = [(PUPhotoEditViewController *)self _allTools];
  v6 = [(PUPhotoEditViewController *)self editSource];
  v7 = v6;
  if (v3 && v4 && v5 && v6)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [v13 compositionController];

          if (!v14)
          {
            v15 = [(PUPhotoEditViewController *)self photo];
            [v13 setupWithAsset:v15 compositionController:v3 editSource:v7 valuesCalculator:v4];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v16 = [(PUAdjustmentsToolController *)self->_adjustmentsController autoAdjustmentController];
    autoEnhanceController = self->_autoEnhanceController;
    self->_autoEnhanceController = v16;

    v5 = v18;
  }
}

- (void)_loadToolsIfNeeded:(BOOL)a3
{
  v75 = *MEMORY[0x1E69E9840];
  if (!self->_didLoadTools || a3)
  {
    allTools = self->__allTools;
    if (allTools)
    {
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v6 = allTools;
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v68 objects:v74 count:16];
      if (v7)
      {
        v8 = *v69;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v69 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v68 + 1) + 8 * i);
            [v10 willMoveToParentViewController:0];
            v11 = [v10 view];
            [v11 removeFromSuperview];

            [v10 removeFromParentViewController];
          }

          v7 = [(NSArray *)v6 countByEnumeratingWithState:&v68 objects:v74 count:16];
        }

        while (v7);
      }

      v12 = self->__allTools;
      self->__allTools = 0;

      cropController = self->_cropController;
      self->_cropController = 0;

      filtersController = self->_filtersController;
      self->_filtersController = 0;

      cleanupController = self->_cleanupController;
      self->_cleanupController = 0;

      adjustmentsController = self->_adjustmentsController;
      self->_adjustmentsController = 0;

      portraitToolController = self->_portraitToolController;
      self->_portraitToolController = 0;

      audioToolController = self->_audioToolController;
      self->_audioToolController = 0;

      mediaToolController = self->_mediaToolController;
      self->_mediaToolController = 0;

      photoStylesToolController = self->_photoStylesToolController;
      self->_photoStylesToolController = 0;
    }

    if ([(PUPhotoEditViewController *)self _enableSpatialMediaEditing]|| ![(PUPhotoEditViewController *)self isSpatialMedia])
    {
      v21 = [objc_alloc(objc_opt_class()) initWithNibName:0 bundle:0];
      v22 = self->_cropController;
      self->_cropController = v21;

      v23 = [[PUFilterToolController alloc] initWithNibName:0 bundle:0];
      v24 = self->_filtersController;
      self->_filtersController = v23;

      objc_initWeak(&location, self->_filtersController);
      v25 = [(PUPhotoEditViewController *)self filterInterval];
      v26 = PLPhotoEditGetLog();
      v27 = os_signpost_id_make_with_pointer(v26, self->_filtersController);
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __48__PUPhotoEditViewController__loadToolsIfNeeded___block_invoke;
      v63[3] = &unk_1E7B7D1F0;
      v28 = v25;
      v64 = v28;
      objc_copyWeak(v66, &location);
      v29 = v26;
      v65 = v29;
      v66[1] = v27;
      [(PUFilterToolController *)self->_filtersController setWillLoadFilterThumbnails:v63];
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __48__PUPhotoEditViewController__loadToolsIfNeeded___block_invoke_927;
      v59[3] = &unk_1E7B7D1F0;
      v30 = v28;
      v60 = v30;
      objc_copyWeak(v62, &location);
      v31 = v29;
      v61 = v31;
      v62[1] = v27;
      [(PUFilterToolController *)self->_filtersController setDidFinishLoadingFilterThumbnails:v59];
      v32 = [(PUPhotoEditViewController *)self photo];
      v33 = [v32 mediaType];

      v34 = v33 == 1 && ![(PUPhotoEditViewController *)self isLoopingVideo]&& !self->_isEmbeddedEdit;
      [MEMORY[0x1E69BDDE0] updateAvailability];
      if (v34)
      {
        v35 = [MEMORY[0x1E69BDDE0] status];
        if (v35)
        {
          v35 = [[PUCleanupToolController alloc] initWithNibName:0 bundle:0];
        }
      }

      else
      {
        v35 = 0;
      }

      v36 = self->_cleanupController;
      self->_cleanupController = v35;

      v37 = [[PUAdjustmentsToolController alloc] initWithNibName:0 bundle:0];
      v38 = self->_adjustmentsController;
      self->_adjustmentsController = v37;

      v39 = [[PURedeyeToolController alloc] initWithNibName:0 bundle:0];
      [(PUPhotoEditViewController *)self setRedEyeController:v39];
      v40 = self->_portraitToolController;
      self->_portraitToolController = 0;

      v41 = self->_audioToolController;
      self->_audioToolController = 0;

      v42 = self->_mediaToolController;
      self->_mediaToolController = 0;

      v43 = self->_photoStylesToolController;
      self->_photoStylesToolController = 0;

      v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v45 = self->_filtersController;
      v73[0] = self->_adjustmentsController;
      v73[1] = v45;
      v73[2] = self->_cropController;
      v73[3] = v39;
      v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:4];
      [v44 addObjectsFromArray:v46];

      if (self->_cleanupController)
      {
        [v44 addObject:?];
      }

      v47 = [v44 copy];
      v48 = self->__allTools;
      self->__allTools = v47;

      objc_destroyWeak(v62);
      objc_destroyWeak(v66);

      objc_destroyWeak(&location);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v49 = self->__allTools;
    v50 = [(NSArray *)v49 countByEnumeratingWithState:&v55 objects:v72 count:16];
    if (v50)
    {
      v51 = *v56;
      do
      {
        for (j = 0; j != v50; ++j)
        {
          if (*v56 != v51)
          {
            objc_enumerationMutation(v49);
          }

          v53 = *(*(&v55 + 1) + 8 * j);
          v54 = [(PUPhotoEditViewController *)self aggregateSession];
          [v53 setAggregateSession:v54];

          [v53 setDelegate:self];
          [v53 setLayoutOrientation:-[PUPhotoEditViewController layoutOrientation](self withTransitionCoordinator:{"layoutOrientation"), 0}];
        }

        v50 = [(NSArray *)v49 countByEnumeratingWithState:&v55 objects:v72 count:16];
      }

      while (v50);
    }

    self->_didLoadTools = 1;
    [(PUPhotoEditViewController *)self _setupToolsIfNeeded];
    [(PUPhotoEditViewController *)self _updateKeyCommands];
  }
}

void __48__PUPhotoEditViewController__loadToolsIfNeeded___block_invoke(uint64_t a1)
{
  [*(a1 + 32) beginInterval];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setWillLoadFilterThumbnails:0];

  v3 = *(a1 + 40);
  v4 = v3;
  v5 = *(a1 + 56);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v5, "EnterEditFilterThumbnails", " enableTelemetry=YES ", v6, 2u);
  }
}

void __48__PUPhotoEditViewController__loadToolsIfNeeded___block_invoke_927(uint64_t a1)
{
  [*(a1 + 32) endInterval];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setDidFinishLoadingFilterThumbnails:0];

  v3 = *(a1 + 40);
  v4 = v3;
  v5 = *(a1 + 56);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v4, OS_SIGNPOST_INTERVAL_END, v5, "EnterEditFilterThumbnails", " enableTelemetry=YES ", v6, 2u);
  }
}

- (void)_updateGainMap
{
  if ([(PUPhotoEditViewController *)self currentAssetNeedsGainMap])
  {
    v3 = MEMORY[0x1E69B3960];
    v4 = [(PUPhotoEditViewController *)self _composition];
    v5 = [v3 createGainMapForComposition:v4];

    [(PUPhotoEditViewController *)self setGainMapImage:v5];

    CGImageRelease(v5);
  }
}

- (void)setGainMapValue:(float)a3
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_gainMapValue = a3;

    [(PUPhotoEditViewController *)self _updateLayerModulation];
  }
}

- (void)setGainMapImage:(CGImage *)a3
{
  gainMapImage = self->_gainMapImage;
  if (gainMapImage != a3)
  {
    CGImageRelease(gainMapImage);
    self->_gainMapImage = CGImageRetain(a3);

    [(PUPhotoEditViewController *)self _updateLayerModulation];
  }
}

- (id)_newOutputForContentEditingInput:(id)a3 compositionController:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(PUPhotoEditViewController *)self photo];
  v9 = [(PUPhotoEditViewController *)self _shouldRequestAsyncAdjustmentForAsset:v8 compositionController:v6];

  v10 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(PUPhotoEditViewController *)self photo];
    v12 = [v11 mediaType];
    v13 = [(PUPhotoEditViewController *)self photo];
    v18 = 134218496;
    v19 = v12;
    v20 = 2048;
    v21 = [v13 mediaSubtypes];
    v22 = 1024;
    v23 = v9;
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEFAULT, "Creating ContentEditingOutput for assetType:%lu subType:%lu async:%d", &v18, 0x1Cu);
  }

  v14 = MEMORY[0x1E69C4300];
  v15 = [(PUPhotoEditViewController *)self photo];
  v16 = [v14 contentEditingOutputForContentEditingInput:v7 compositionController:v6 asset:v15 async:v9 onlyChangingOriginalChoice:0];

  return v16;
}

- (BOOL)_shouldRequestAsyncAdjustmentForAsset:(id)a3 compositionController:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 mediaType];
  v8 = v7;
  if (v7 == 2)
  {
    v9 = +[PUPhotoEditProtoSettings sharedInstance];
    v10 = [v9 disableAsynchronousRenderingVideos] ^ 1;
  }

  else
  {
    if (v7 != 1)
    {
      v10 = 0;
      goto LABEL_7;
    }

    v9 = +[PUPhotoEditProtoSettings sharedInstance];
    v10 = [v9 useAsynchronousRenderingPhotos];
  }

LABEL_7:
  v11 = [MEMORY[0x1E69BE360] isKeyOnlyAdjustmentForCompositionController:v6 key:*MEMORY[0x1E69BE058]];
  v12 = v5;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = [v13 mediaSubtypes];
  v15 = v14;
  v16 = (v14 >> 20) & 1;

  if (v11)
  {
    v10 &= v16;
  }

  v17 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19[0] = 67110144;
    v19[1] = v10;
    v20 = 2048;
    v21 = v8;
    v22 = 2048;
    v23 = [v12 mediaSubtypes];
    v24 = 1024;
    v25 = v11;
    v26 = 1024;
    v27 = (*&v15 & 0x100000uLL) >> 20;
    _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_DEFAULT, "_shouldRequestAsyncAdjustmentForAsset returns %d, assetType:%lu subType:%lu isOrientationOnlyAdjustment:%d isHDR:%d", v19, 0x28u);
  }

  return v10;
}

- (void)setIsCachingVideo:(BOOL)a3
{
  if (self->_isCachingVideo != a3)
  {
    self->_isCachingVideo = a3;
    [(PUPhotoEditViewController *)self updateProgressIndicatorAnimated:1];
  }
}

- (void)setRunningAutoCalculators:(BOOL)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_runningAutoCalculators != a3)
  {
    self->_runningAutoCalculators = a3;
    if (a3)
    {
      [(PUPhotoEditViewController *)self _didStartAutoCalc];
    }

    else
    {
      [(PUPhotoEditViewController *)self _didEndAutoCalc];
      v4 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [(PUPhotoEditViewController *)self autoCalcInterval];
        [v5 duration];
        v7 = 134217984;
        v8 = v6;
        _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "PUPhotoEditViewController - PERF - auto calc duration: %f", &v7, 0xCu);
      }
    }

    [(PUPhotoEditViewController *)self _updateToolbarsAnimated:0];
  }
}

- (BOOL)isVideoOn
{
  v3 = [(PUPhotoEditViewController *)self livePhotoModel];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isVideoEnabled];
  }

  else
  {
    v6 = [(PUPhotoEditViewController *)self photo];
    if ([v6 canPlayPhotoIris])
    {
      v5 = 1;
    }

    else
    {
      v7 = [(PUPhotoEditViewController *)self photo];
      if ([v7 canPlayLoopingVideo])
      {
        v5 = 1;
      }

      else
      {
        v8 = [(PUPhotoEditViewController *)self photo];
        v5 = [v8 playbackStyle] == 4;
      }
    }
  }

  return v5;
}

- (BOOL)_hasUnsavedChanges
{
  v3 = [(PUPhotoEditViewController *)self compositionController];
  v4 = [(PUPhotoEditViewController *)self uneditedComposition];
  if (!v3)
  {
    v8 = [(PUPhotoEditViewController *)self livePhotoModel];
    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  v5 = 1;
  v6 = [v3 isEqual:v4 visualChangesOnly:1];
  v7 = [(PUPhotoEditViewController *)self livePhotoModel];
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
LABEL_4:
      v5 = [v8 hasUnsavedChanges];
      goto LABEL_7;
    }

LABEL_6:
    v5 = 0;
  }

LABEL_7:

  return v5;
}

- (void)_requestLivePhotoAssetWithFilters:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUPhotoEditViewController *)self livePhotoModel];
  v9 = [v8 isVideoEnabled];

  v10 = [(NUMediaView *)self->_mediaView composition];
  v11 = v10;
  if (v9 && v10)
  {
    v12 = [objc_alloc(MEMORY[0x1E69B3B48]) initWithComposition:v10];
    [v12 setName:@"PUPhotoEditViewController-LivePhoto"];
    [v12 setPipelineFilters:v6];
    [v12 setResponseQueue:MEMORY[0x1E69E96A0]];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __74__PUPhotoEditViewController__requestLivePhotoAssetWithFilters_completion___block_invoke_2;
    v14[3] = &unk_1E7B805C0;
    v15 = v7;
    v13 = v7;
    [v12 submit:v14];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__PUPhotoEditViewController__requestLivePhotoAssetWithFilters_completion___block_invoke;
    block[3] = &unk_1E7B80C88;
    v17 = v7;
    v12 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v13 = v17;
  }
}

void __74__PUPhotoEditViewController__requestLivePhotoAssetWithFilters_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v3 = [a2 result:&v12];
  v4 = v12;
  if (v3)
  {
    v5 = [v3 video];
    v6 = [v3 videoComposition];
    memset(buf, 0, sizeof(buf));
    v14 = 0;
    [v3 photoTime];
    v7 = objc_alloc(MEMORY[0x1E69788C8]);
    v10 = *buf;
    v11 = v14;
    v8 = [v7 initWithImage:0 uiOrientation:0 videoAsset:v5 photoTime:&v10 asset:0 options:1 videoComposition:v6];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_2661);
    }

    v9 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v4;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEFAULT, "Failed to load LivePhoto: %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)_restoreSnapshot:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __68__PUPhotoEditViewController__restoreSnapshot_withCompletionHandler___block_invoke;
  v20 = &unk_1E7B7B248;
  v21 = self;
  v8 = v7;
  v22 = v8;
  v9 = _Block_copy(&v17);
  v10 = [v6 adjustmentData];

  if (v10)
  {
    v11 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v12 = [v11 photoLibraryURL];

    v13 = [objc_alloc(MEMORY[0x1E69787A0]) initWithPhotoEditSnapshot:v6 appropriateForURL:v12];
    v14 = [(PUPhotoEditViewController *)self mediaDestination];
    v15 = [(PUPhotoEditViewController *)self photo];
    v16 = [(PUPhotoEditViewController *)self livePhotoModel];
    [v14 saveEditsForAsset:v15 usingContentEditingOutput:v13 livePhotoState:objc_msgSend(v16 completionHandler:{"editingVisibility"), v9}];
  }

  else
  {
    v12 = [(PUPhotoEditViewController *)self mediaDestination];
    v13 = [(PUPhotoEditViewController *)self photo];
    [v12 revertEditsForAsset:v13 completionHandler:v9];
  }

  [(PUPhotoEditViewController *)self updateProgressIndicatorAnimated:1];
}

void __68__PUPhotoEditViewController__restoreSnapshot_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  [*(a1 + 32) updateProgressIndicatorAnimated:1];
  [*(a1 + 32) _resetModelAndBaseImagesToWorkImageVersion:1];
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

- (void)_captureSnapshotOfBasePhotoWithCompletionHandler:(id)a3
{
  v13 = a3;
  if (!v13)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:7515 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v5 = MEMORY[0x1E69BDEF0];
  v6 = [(PUPhotoEditViewController *)self uneditedComposition];
  v7 = [v5 newCompositionControllerWithComposition:v6];

  v8 = [(PUPhotoEditViewController *)self workImageVersion];
  if ([(PUPhotoEditViewController *)self _canCompositionControllerBeReverted:v7])
  {
    v9 = v8 == 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = objc_alloc_init(PUPhotoEditSnapshot);
    v13[2](v13, v10);
  }

  else
  {
    v10 = [(PUPhotoEditViewController *)self photo];
    v11 = [(PUPhotoEditViewController *)self mediaProvider];
    [PUPhotoEditSnapshot captureSnapshotForAsset:v10 mediaProvider:v11 completion:v13];
  }
}

- (void)_updateLivePhotoModel
{
  v5 = [(PUPhotoEditViewController *)self photo];
  v3 = [(PUPhotoEditViewController *)self compositionController];
  if (v3 && v5 && [v5 isLivePhoto])
  {
    v4 = [objc_alloc(MEMORY[0x1E69C4298]) initWithAsset:v5 compositionController:v3];
    [(PUPhotoEditViewController *)self setLivePhotoModel:v4];
    [v4 setChangeDelegate:self];
    [(PUPhotoEditViewController *)self _updateTogglePreviewGestureRecognizer];
  }

  [(PUPhotoEditMediaToolController *)self->_mediaToolController photoEditLivePhotoModelUpdated];
}

- (void)_resetModelAndBaseImagesToWorkImageVersion:(int64_t)a3
{
  [(PUPhotoEditViewController *)self setWorkImageVersion:a3];
  v4 = MEMORY[0x1E69BDEF0];
  v5 = [MEMORY[0x1E69BDEF0] newComposition];
  v13 = [v4 newCompositionControllerWithComposition:v5];

  v6 = [(PUPhotoEditViewController *)self compositionController];
  [v13 setImageOrientation:{objc_msgSend(v6, "imageOrientation")}];

  v7 = [(PUPhotoEditViewController *)self editSource];
  v8 = [v7 source];
  v9 = [(PUPhotoEditViewController *)self editSource];
  [v13 setSource:v8 mediaType:{objc_msgSend(v9, "mediaType")}];

  v10 = [(PUPhotoEditViewController *)self compositionController];
  [v10 applyChangesFromCompositionController:v13];

  v11 = [(PUPhotoEditViewController *)self compositionController];
  v12 = [v11 composition];
  [(PUPhotoEditViewController *)self setUneditedComposition:v12];

  [(PUPhotoEditViewController *)self setEditSource:0];
  [(PUPhotoEditViewController *)self setMainRenderer:0];
  [(PUPhotoEditViewController *)self _updateModelDependentControlsAnimated:0];
  [(PUPhotoEditViewController *)self _updateValuesCalculator];
  [(PUPhotoEditViewController *)self _updateLivePhotoModel];
}

- (id)_orientedCIImageFromUIImage:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUPhotoEditViewController *)self photo];
  v6 = [v5 imageProperties];

  if (v6)
  {
    v11 = *MEMORY[0x1E695F9E0];
    v12[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E695F658] imageWithCGImage:objc_msgSend(v4 options:{"CGImage"), v7}];
  [v4 imageOrientation];

  v9 = [v8 imageByApplyingOrientation:PLExifOrientationFromImageOrientation()];

  return v9;
}

- (void)setOriginalStillImageTime:(id *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  p_originalStillImageTime = &self->_originalStillImageTime;
  time1 = *a3;
  time2 = self->_originalStillImageTime;
  if (CMTimeCompare(&time1, &time2))
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = self->__allTools;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
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

          v11 = *(*(&v13 + 1) + 8 * v10);
          time1 = *a3;
          [v11 setOriginalStillImageTime:{&time1, v13}];
          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
      }

      while (v8);
    }

    v12 = *&a3->var0;
    p_originalStillImageTime->epoch = a3->var3;
    *&p_originalStillImageTime->value = v12;
  }
}

- (void)_setOriginalURL:(id)a3 originalEditSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_originalImageEditSource)
  {
    objc_storeStrong(&self->_originalImageEditSource, a4);
    if ([v7 mediaType] != 2)
    {
      PLGetOrientationAndUntransformedSizeFromImageURL();
    }

    self->_originalImageExifOrientation = PLOrientationIsValid() == 0;
    [(PUPhotoEditViewController *)self _updatePreviewingOriginal];
  }
}

- (void)setUneditedComposition:(id)a3
{
  if (self->_uneditedComposition != a3)
  {
    v4 = [a3 copy];
    uneditedComposition = self->_uneditedComposition;
    self->_uneditedComposition = v4;

    [(PUPhotoEditViewController *)self _updateModelDependentControlsAnimated:0];
  }
}

- (void)setCompositionController:(id)a3
{
  v5 = a3;
  if (self->_compositionController != v5)
  {
    v11 = v5;
    objc_storeStrong(&self->_compositionController, a3);
    v6 = [(PUPhotoEditViewController *)self editSource];

    if (v6)
    {
      v7 = [(PUPhotoEditViewController *)self editSource];
      v8 = [v7 source];
      v9 = [(PUPhotoEditViewController *)self editSource];
      -[PICompositionController setSource:mediaType:](v11, "setSource:mediaType:", v8, [v9 mediaType]);
    }

    [(PUPhotoEditViewController *)self _updateMainActionButtonAnimated:1];
    [(PUPhotoEditViewController *)self _updateShowOriginalButtonAnimated:1];
    [(PICompositionController *)v11 setChangeDelegate:self];
    [(PUPhotoEditViewController *)self _updateModelDependentControlsAnimated:0];
    [(PUPhotoEditViewController *)self _updateValuesCalculator];
    v10 = [(PUPhotoEditViewController *)self valuesCalculator];
    [v10 precomputeImageValues];

    [(PUPhotoEditViewController *)self _setupToolsIfNeeded];
    [(PUPhotoEditViewController *)self _updateKeyCommands];
    v5 = v11;
  }
}

- (void)_updateValuesCalculator
{
  v7 = [(PUPhotoEditViewController *)self editSource];
  if (v7)
  {
    v3 = [(PUPhotoEditViewController *)self compositionController];

    if (v3)
    {
      v4 = [(PUPhotoEditViewController *)self valuesCalculator];
      if (!v4)
      {
        v4 = objc_alloc_init(MEMORY[0x1E69C4330]);
        [v4 setDelegate:self];
        v5 = +[PUPhotoEditProtoSettings sharedInstance];
        [v4 setSettingsDelegate:v5];

        [(PUPhotoEditViewController *)self setValuesCalculator:v4];
      }

      [v4 setEditSource:v7];
      v6 = [(PUPhotoEditViewController *)self compositionController];
      [v4 setCompositionController:v6];

      [(PUPhotoEditViewController *)self _setupToolsIfNeeded];
      [(PUPhotoEditViewController *)self _updateKeyCommands];
    }
  }
}

- (void)livePhotoModel:(id)a3 videoEnabledDidChange:(BOOL)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [(PUPhotoEditViewController *)self _updateTogglePreviewGestureRecognizer];
  [(PUPhotoEditViewController *)self _updateSwipeDownGestureRecognizer];
  [(PUPhotoEditViewController *)self _updatePluginSession];
  self->_toolbarButtonsValid = 0;
  [(PUPhotoEditViewController *)self _updateToolbarsAnimated:1];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(PUPhotoEditViewController *)self _allTools];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v17 + 1) + 8 * v10++) baseMediaInvalidated];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  -[NUMediaView setVideoEnabled:animated:](self->_mediaView, "setVideoEnabled:animated:", [v5 isVideoEnabled], 1);
  if (![(PUPhotoEditToolController *)self->_currentEditingTool suppressesEditUpdates])
  {
    v11 = [(PUPhotoEditViewController *)self editSource];

    if (v11)
    {
      mediaView = self->_mediaView;
      v13 = MEMORY[0x1E69BE360];
      v14 = [(PUPhotoEditViewController *)self compositionController];
      v15 = [(PUPhotoEditViewController *)self editSource];
      v16 = [v13 validatedCompositionCopyFor:v14 mediaType:{objc_msgSend(v15, "mediaType")}];
      [(NUMediaView *)mediaView setComposition:v16];

      [(PUPhotoEditViewController *)self _updateRenderedPreview];
    }
  }
}

- (void)mediaDestination:(id)a3 didCompleteSaveRequest:(id)a4
{
  v5 = [MEMORY[0x1E69DC668] sharedApplication];
  [v5 endBackgroundTask:{-[PUPhotoEditViewController saveBackgroundTaskIdentifier](self, "saveBackgroundTaskIdentifier")}];
}

- (void)mediaDestination:(id)a3 willBeginSaveRequest:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x1E69DC668] sharedApplication];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__PUPhotoEditViewController_mediaDestination_willBeginSaveRequest___block_invoke;
  v8[3] = &unk_1E7B80DD0;
  v9 = v5;
  v7 = v5;
  -[PUPhotoEditViewController setSaveBackgroundTaskIdentifier:](self, "setSaveBackgroundTaskIdentifier:", [v6 beginBackgroundTaskWithName:@"PhotoKit Edits Save" expirationHandler:v8]);
}

uint64_t __67__PUPhotoEditViewController_mediaDestination_willBeginSaveRequest___block_invoke(uint64_t a1)
{
  v2 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_DEFAULT, "Background task expired: canceling save operation!", v4, 2u);
  }

  return [*(a1 + 32) cancelSaveOperation];
}

- (void)_handleResourceLoadChange
{
  [(PUPhotoEditViewController *)self updateProgressIndicatorAnimated:1];

  [(PUPhotoEditViewController *)self _updateToolbarsAnimated:1];
}

- (void)_handleDidLoadOriginalWithResult:(id)a3
{
  v7 = a3;
  v4 = [v7 imageURL];
  if (v4 || ([v7 videoComplementURL], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [v7 editSource];
    [(PUPhotoEditViewController *)self _setOriginalURL:v5 originalEditSource:v6];
  }

  [(PUPhotoEditViewController *)self updateProgressIndicatorAnimated:1];
}

- (BOOL)_isLivePhotoEffect
{
  v3 = [(PUPhotoEditViewController *)self photo];
  v4 = [v3 isLivePhoto];

  if (v4)
  {
    v5 = [(PUPhotoEditViewController *)self compositionController];
    v6 = [v5 autoLoopAdjustmentController];
    if ([v6 enabled])
    {
      v7 = [v6 flavor];
      v8 = PIAutoLoopFlavorFromString();

      LOBYTE(v4) = v8 == 2 || (v8 & 0xFFFFFFFFFFFFFFFDLL) == 1;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (BOOL)_isLoopingVideo:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUPhotoEditViewController *)self compositionController];
  v6 = [(PUPhotoEditViewController *)self photo];
  v7 = [v6 mediaType];

  if (v7 == 2 || !v5)
  {
    v8 = [(PUPhotoEditViewController *)self photo];
    v9 = [v8 canPlayLoopingVideo];
  }

  else
  {
    v8 = [v5 autoLoopAdjustmentController];
    if (([v8 enabled] & 1) != 0 || !v3)
    {
      v10 = [v8 flavor];
      v11 = PIAutoLoopFlavorFromString();

      if (v11)
      {
        v12 = v11 == 3;
      }

      else
      {
        v12 = 1;
      }

      v9 = !v12;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)initialCinematographyLoadComplete
{
  v3 = [(PUPhotoEditViewController *)self uneditedComposition];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69BDDE8]);
    v5 = [(PUPhotoEditViewController *)self uneditedComposition];
    v6 = [v4 initWithComposition:v5];

    v7 = [v6 adjustmentConstants];
    v8 = [v7 PIPortraitVideoAdjustmentKey];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__PUPhotoEditViewController_initialCinematographyLoadComplete__block_invoke;
    v10[3] = &unk_1E7B7B450;
    v10[4] = self;
    [v6 modifyAdjustmentWithKey:v8 modificationBlock:v10];

    v9 = [v6 composition];
    [(PUPhotoEditViewController *)self setUneditedComposition:v9];

    [(PUPhotoEditViewController *)self _updateMainActionButtonAnimated:1];
    [(PUPhotoEditViewController *)self _updateShowOriginalButtonAnimated:1];
  }
}

void __62__PUPhotoEditViewController_initialCinematographyLoadComplete__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = [v2 compositionController];
  v4 = [v6 portraitVideoAdjustmentController];
  v5 = [v4 adjustment];
  [v3 setFromAdjustment:v5];
}

- (id)playbackRateOptions
{
  v3 = [(PUPhotoEditViewController *)self editSourceContentEditingInput];
  if ([v3 baseVersion])
  {

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v4 = [(PUPhotoEditViewController *)self workImageVersion];

  if (v4 != 1)
  {
    goto LABEL_8;
  }

  if (!self->_playbackRateOptions)
  {
    v5 = [(PUPhotoEditViewController *)self editSource];

    if (v5)
    {
      v6 = MEMORY[0x1E69C42D8];
      v7 = [(PUPhotoEditViewController *)self editSource];
      v8 = [v6 playbackRateOptionsForEditSource:v7];
      playbackRateOptions = self->_playbackRateOptions;
      self->_playbackRateOptions = v8;
    }
  }

  v10 = self->_playbackRateOptions;
LABEL_9:

  return v10;
}

- (unint64_t)cinematicAudioRenderingVersion
{
  v2 = MEMORY[0x1E6987E28];
  v3 = [(PUPhotoEditViewController *)self editSource];
  v4 = [v3 videoURL];
  v5 = [v2 assetWithURL:v4];

  v6 = [MEMORY[0x1E69B3D40] cinematicAudioRenderingVersionFromAsset:v5];
  return v6;
}

- (BOOL)isCinematicAudio
{
  if (PICinematicAudioIsRenderSupported() && ([(PUPhotoEditViewController *)self editSourceContentEditingInput], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    if (!self->_hasCheckedCinematicAudio)
    {
      self->_isAssetCinematicAudio = 0;
      v4 = [(PUPhotoEditViewController *)self editSource];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v6 = MEMORY[0x1E6987E28];
        v7 = [(PUPhotoEditViewController *)self editSource];
        v8 = [v7 videoURL];
        v9 = [v6 assetWithURL:v8];

        if ([MEMORY[0x1E69B3D40] assetIsCinematicAudio:v9])
        {
          self->_isAssetCinematicAudio = 1;
        }
      }

      self->_hasCheckedCinematicAudio = 1;
    }

    return self->_isAssetCinematicAudio;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isPortraitVideo
{
  v3 = [(PUPhotoEditViewController *)self editSourceContentEditingInput];

  if (v3)
  {
    if (!self->_hasCheckedPortraitVideo)
    {
      self->_isAssetPortraitVideo = 0;
      if (!self->_isEmbeddedEdit)
      {
        v4 = [(PUPhotoEditViewController *)self editSource];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v6 = MEMORY[0x1E6987E28];
          v7 = [(PUPhotoEditViewController *)self editSource];
          v8 = [v7 videoURL];
          v9 = [v6 assetWithURL:v8];

          if ([MEMORY[0x1E69BDDD8] assetIsCinematicVideo:v9] && objc_msgSend(MEMORY[0x1E69BDDD8], "currentSystemCanRenderAsset:", v9))
          {
            self->_isAssetPortraitVideo = 1;
          }
        }
      }

      self->_hasCheckedPortraitVideo = 1;
    }

    return self->_isAssetPortraitVideo;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isHighframeRateVideo
{
  v3 = [(PUPhotoEditViewController *)self editSource];

  if (!v3)
  {
    return 0;
  }

  v4 = [(PUPhotoEditViewController *)self playbackRateOptions];
  v5 = [v4 count] > 1;

  return v5;
}

- (BOOL)_enableSpatialMediaEditing
{
  v3 = +[PUPhotoEditProtoSettings sharedInstance];
  if ([v3 enableSpatialMediaEditing])
  {
    v4 = [(PUPhotoEditViewController *)self photo];
    v5 = [v4 mediaType] != 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isSpatialMedia
{
  v3 = [(PUPhotoEditViewController *)self photo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(PUPhotoEditViewController *)self photo];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(PUPhotoEditViewController *)self photo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(PUPhotoEditViewController *)self photo];
  }

  else
  {
    v6 = 0;
  }

  if ([v4 isSpatialMedia])
  {
    v7 = 1;
  }

  else
  {
    v7 = [v6 isSpatialMedia];
  }

  return v7;
}

- (BOOL)isStandardVideo
{
  v3 = [(PUPhotoEditViewController *)self photo];
  v4 = [v3 mediaType] == 2;

  v5 = [(PUPhotoEditViewController *)self photo];
  LOBYTE(v3) = [v5 canPlayLoopingVideo];

  return v4 & (v3 ^ 1);
}

- (void)_updateMediaViewPlaybackStyle
{
  v3 = [(PUPhotoEditViewController *)self isLoopingVideo];
  v4 = v3 || [(PUPhotoEditViewController *)self isStandardVideo];
  [(NUMediaView *)self->_mediaView setVideoEnabled:v4 animated:v3];
  [(NUMediaView *)self->_mediaView setLoopsVideoPlayback:v3];
  mediaView = self->_mediaView;
  v6 = [(PUPhotoEditViewController *)self _composition];
  [(NUMediaView *)mediaView setComposition:v6];

  if (v4)
  {

    [(PUPhotoEditViewController *)self _updatePluginSession];
  }
}

- (void)_continueLoadingWithAutocalculators
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "starting auto calculators", &buf, 2u);
  }

  v5 = dispatch_group_create();
  objc_initWeak(&buf, self);
  [(PUPhotoEditViewController *)self setRunningAutoCalculators:1];
  [(PUPhotoEditViewController *)self _updateValuesCalculator];
  dispatch_group_enter(v5);
  v6 = [(PUPhotoEditViewController *)self valuesCalculator];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __64__PUPhotoEditViewController__continueLoadingWithAutocalculators__block_invoke;
  v43[3] = &unk_1E7B7F820;
  objc_copyWeak(&v45, &buf);
  v43[4] = self;
  v7 = v5;
  v44 = v7;
  [v6 precomputeImageValuesWithCompletion:v43];

  v8 = [objc_alloc(MEMORY[0x1E69B3B28]) initWithName:@"PUPhotoEditViewController-raw-property"];
  dispatch_group_enter(v7);
  v9 = [(PUPhotoEditViewController *)self _composition];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __64__PUPhotoEditViewController__continueLoadingWithAutocalculators__block_invoke_890;
  v40[3] = &unk_1E7B7B428;
  objc_copyWeak(v42, &buf);
  v42[1] = a2;
  v40[4] = self;
  v10 = v7;
  v41 = v10;
  [v8 submitPropertiesRequestForComposition:v9 completion:v40];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PUPhotoEditViewController__continueLoadingWithAutocalculators__block_invoke_895;
  block[3] = &unk_1E7B80638;
  objc_copyWeak(&v39, &buf);
  dispatch_group_notify(v10, MEMORY[0x1E69E96A0], block);
  [(PUPhotoEditViewController *)self _updateRenderedPreview];
  self->_isTransitioningFromDownloadingToRunningAutoCalculators = 1;
  [(PUPhotoEditViewController *)self _handleResourceLoadChange];
  self->_isTransitioningFromDownloadingToRunningAutoCalculators = 0;
  v11 = [(PUPhotoEditViewController *)self editSource];
  if ([v11 mediaType] != 3)
  {
    v12 = [(PUPhotoEditViewController *)self photo];
    v13 = [v12 isLivePhoto];

    if (!v13)
    {
      goto LABEL_7;
    }

    v11 = [(PUPhotoEditViewController *)self livePhotoModel];
    [v11 notifyCannotSupportVideoEdits];
  }

LABEL_7:
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = [(PUPhotoEditViewController *)self _allTools];
  v15 = [v14 countByEnumeratingWithState:&v34 objects:v48 count:16];
  if (v15)
  {
    v16 = *v35;
    do
    {
      v17 = 0;
      do
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v34 + 1) + 8 * v17++) basePhotoInvalidated];
      }

      while (v15 != v17);
      v15 = [v14 countByEnumeratingWithState:&v34 objects:v48 count:16];
    }

    while (v15);
  }

  v18 = [(PUPhotoEditViewController *)self view];
  [v18 setNeedsLayout];

  [(PUPhotoEditViewController *)self _updateRenderedPreview];
  [(PUPhotoEditViewController *)self _updateToolbarsAnimated:0];
  [(PUPhotoEditViewController *)self _updateMutedState];
  [(PUPhotoEditViewController *)self _updateMediaViewPlaybackStyle];
  [(PUPhotoEditViewController *)self _reloadToolbarButtonsIfNeeded];
  [(PUPhotoEditViewController *)self updateProgressIndicatorAnimated:1];
  v19 = [(PUPhotoEditViewController *)self photo];
  if (![v19 isOriginalRaw])
  {
    goto LABEL_21;
  }

  v20 = [(PUPhotoEditViewController *)self photo];
  if ([v20 originalResourceChoice] != 3)
  {

LABEL_21:
    goto LABEL_22;
  }

  v21 = [(PUPhotoEditViewController *)self photo];
  v22 = [v21 isAdjusted];

  if (v22)
  {
    if (+[PUPhotoEditSupport currentDeviceShouldAllowRawDecode])
    {
      v23 = MEMORY[0x1E69C0708];
      v24 = [(PUPhotoEditViewController *)self imageProperties];
      v25 = [v24 metadata];
      LODWORD(v23) = [v23 canLoadAssetAsRawForInteractiveEditingWithImageProperties:v25];

      if (v23)
      {
        [(PUPhotoEditViewController *)self _showJpegPreviewForRawRevertAlert];
      }
    }
  }

LABEL_22:
  if ([(PUPhotoEditViewController *)self currentAssetNeedsGainMap])
  {
    v26 = objc_alloc(MEMORY[0x1E69B3960]);
    v27 = [(PUPhotoEditViewController *)self compositionController];
    v28 = [v27 composition];
    v29 = [v26 initWithComposition:v28];

    [v29 setAuxiliaryImageType:7];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __64__PUPhotoEditViewController__continueLoadingWithAutocalculators__block_invoke_2_898;
    v32[3] = &unk_1E7B7DC10;
    objc_copyWeak(&v33, &buf);
    [v29 submit:v32];
    v30 = [MEMORY[0x1E69BDEF8] sourceFilterNoOrientation];
    v47 = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
    [v29 setPipelineFilters:v31];

    [v29 setName:@"PUPhotoEditViewController-renderMeteorPlusGainMap-crop"];
    [(PUPhotoEditViewController *)self _addCropToolGainMapWithRequest:v29];
    objc_destroyWeak(&v33);
  }

  else
  {
    [(PUPhotoEditViewController *)self setGainMapImage:0];
    [(PUCropToolController *)self->_cropController setGainMapImage:0];
    [(PUPhotoEditViewController *)self setGainMapValue:0.0];
  }

  objc_destroyWeak(&v39);

  objc_destroyWeak(v42);
  objc_destroyWeak(&v45);
  objc_destroyWeak(&buf);
}

void __64__PUPhotoEditViewController__continueLoadingWithAutocalculators__block_invoke(uint64_t a1)
{
  v2 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_DEFAULT, "precomputeImageValuesWithCompletion finished", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PUPhotoEditViewController__continueLoadingWithAutocalculators__block_invoke_878;
  block[3] = &unk_1E7B7F820;
  objc_copyWeak(&v6, (a1 + 48));
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v6);
}

void __64__PUPhotoEditViewController__continueLoadingWithAutocalculators__block_invoke_890(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PUPhotoEditViewController__continueLoadingWithAutocalculators__block_invoke_2;
  block[3] = &unk_1E7B7EA20;
  objc_copyWeak(v11, (a1 + 48));
  v11[1] = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v11);
}

void __64__PUPhotoEditViewController__continueLoadingWithAutocalculators__block_invoke_895(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _chooseInitialEditingTool];
}

void __64__PUPhotoEditViewController__continueLoadingWithAutocalculators__block_invoke_2_898(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = 0;
  v5 = [v3 result:&v11];

  v6 = v11;
  if (v5)
  {
    v7 = [v5 auxiliaryImage];
    v8 = [v7 cgImageRef];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__PUPhotoEditViewController__continueLoadingWithAutocalculators__block_invoke_3;
    block[3] = &unk_1E7B7FF70;
    block[4] = WeakRetained;
    block[5] = v8;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_2661);
    }

    v9 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_error_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "Could not load gain image: %@", buf, 0xCu);
    }
  }
}

void __64__PUPhotoEditViewController__continueLoadingWithAutocalculators__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setGainMapImage:*(a1 + 40)];
  v2 = *(a1 + 40);

  CGImageRelease(v2);
}

void __64__PUPhotoEditViewController__continueLoadingWithAutocalculators__block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = *(a1 + 32);
  v23 = 0;
  v4 = [v3 result:&v23];
  v5 = v23;
  if (v4)
  {
    v6 = [v4 properties];
    v7 = [WeakRetained photo];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [WeakRetained photo];
      if (!v8)
      {
        v9 = [MEMORY[0x1E696AAA8] currentHandler];
        v18 = *(a1 + 64);
        v22 = *(a1 + 40);
        v19 = objc_opt_class();
        v11 = NSStringFromClass(v19);
        [v9 handleFailureInMethod:v18 object:v22 file:@"PUPhotoEditViewController.m" lineNumber:7062 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"strongSelf.photo", v11}];
        goto LABEL_15;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v9 = [MEMORY[0x1E696AAA8] currentHandler];
        v20 = *(a1 + 40);
        v21 = *(a1 + 64);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = [v8 px_descriptionForAssertionMessage];
        [v9 handleFailureInMethod:v21 object:v20 file:@"PUPhotoEditViewController.m" lineNumber:7062 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"strongSelf.photo", v11, v12}];

LABEL_15:
      }
    }

    else
    {
      v8 = 0;
    }

    v13 = [v6 rawProperties];
    if (v13)
    {
      v14 = 1;
    }

    else
    {
      v14 = [v8 RAWBadgeAttributes]!= 0;
    }

    *(*(a1 + 40) + 1536) = v14;

    *(*(a1 + 40) + 1537) = [v8 isProRes];
    v15 = *(a1 + 40);
    v16 = *(v15 + 1704);
    *(v15 + 1704) = v6;
    v17 = v6;

    [*(*(a1 + 40) + 1464) setImageProperties:v17];
    goto LABEL_13;
  }

  v8 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v25 = v5;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "NUImagePropertiesClient for raw property returned error %@", buf, 0xCu);
  }

LABEL_13:

  dispatch_group_leave(*(a1 + 48));
}

void __64__PUPhotoEditViewController__continueLoadingWithAutocalculators__block_invoke_878(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained valuesCalculator];
  v4 = [v3 portraitValuesWithAccuracy:0];

  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69BDFF8]];
  v6 = PECanRenderPortrait();
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  *(*(a1 + 32) + 1728) = v7;
  v8 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(a1 + 32) + 1728))
    {
      v9 = @"Y";
    }

    else
    {
      v9 = @"N";
    }

    v30 = 138412290;
    v31 = v9;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "has depth? %@", &v30, 0xCu);
  }

  v10 = [WeakRetained valuesCalculator];
  v11 = [v10 semanticStyleStatistics];
  v12 = [v11 count];

  if (PISemanticStyleIsRenderSupported())
  {
    v13 = +[PUPhotoEditProtoSettings sharedInstance];
    *(*(a1 + 32) + 1664) = [v13 enableSemanticStyleInEdit];
  }

  else
  {
    *(*(a1 + 32) + 1664) = 0;
  }

  v14 = +[PUPhotoEditProtoSettings sharedInstance];
  v15 = [v14 allowDisabledTools];

  v16 = *(a1 + 32);
  if (v15)
  {
    if (!*(v16 + 1664) || v12)
    {
      if (v12)
      {
        v18 = [WeakRetained _isLivePhotoEffect] ^ 1;
      }

      else
      {
        LOBYTE(v18) = 0;
      }
    }

    else
    {
      v17 = [WeakRetained isOriginalStyleable];
      LOBYTE(v18) = 0;
      *(*(a1 + 32) + 1664) = v17;
    }

    *(*(a1 + 32) + 1665) = v18;
  }

  else
  {
    v19 = 0;
    if (*(v16 + 1664) && v12)
    {
      v19 = [WeakRetained _isLivePhotoEffect] ^ 1;
      v16 = *(a1 + 32);
    }

    *(v16 + 1664) = v19;
    *(*(a1 + 32) + 1665) = 1;
  }

  [WeakRetained _updateToolbarsAnimated:1];
  [WeakRetained setRunningAutoCalculators:0];
  *(*(a1 + 32) + 1822) = 0;
  [WeakRetained updateProgressIndicatorAnimated:1];
  v20 = [WeakRetained editSource];
  v21 = [v20 mediaType];
  if (v21 == 3 || ([WeakRetained editSource], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "mediaType") == 1))
  {
    v22 = [WeakRetained photo];
    v23 = [v22 isLivePhotoVisibilityAdjustmentAllowed];

    if (v21 == 3)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v23 = 0;
  }

LABEL_30:
  if (v5 || v23)
  {
    v24 = objc_alloc(MEMORY[0x1E69C42A0]);
    v25 = [WeakRetained photo];
    v26 = [v24 initWithAsset:v25 delegate:WeakRetained hasDepth:v5 != 0 hasLive:v23];
    [WeakRetained setLivePortraitBehaviorController:v26];

    v27 = +[PUPhotoEditProtoSettings sharedInstance];
    v28 = [v27 changeLightingDisablesLive];
    v29 = [WeakRetained livePortraitBehaviorController];
    [v29 setChangingPortraitLightingDisablesLive:v28];
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)_handleDidLoadAdjustmentsAndBaseImageWithResult:(id)a3
{
  v4 = a3;
  v5 = [v4 retrievedVersion];
  v6 = [v4 compositionController];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [(PUPhotoEditViewController *)self compositionController];
  }

  v9 = v8;

  v10 = [v9 composition];
  v11 = [(PUPhotoEditViewController *)self quickCropContext];
  if (v11)
  {
    v12 = [v9 composition];
    [v11 applyCropRectToCompositionController:v9];
    v13 = [(PUPhotoEditViewController *)self undoManager];
    v14 = v13;
    if (v13 && ([v13 isUndoing] & 1) == 0 && (objc_msgSend(v14, "isRedoing") & 1) == 0)
    {
      v15 = [objc_alloc(MEMORY[0x1E69C34C8]) initWithCompositionController:v9 sourceComposition:v12];
      v16 = PULocalizedString(@"PHOTOEDIT_CROP_GENERIC_ACTION_TITLE");
      [v15 setLocalizedActionName:v16];

      [v15 registerWithUndoManager:v14];
    }
  }

  if ([v4 penultimateAvailability])
  {
    v17 = [v4 penultimateAvailability] == 1;
  }

  else
  {
    v17 = [(PUPhotoEditViewController *)self isPenultimateAvailable];
  }

  v18 = [v4 editSource];
  v19 = v18;
  if (self->_pluginSessionIdentifier)
  {
    [v18 setIdentifier:?];
    pluginSessionIdentifier = self->_pluginSessionIdentifier;
    self->_pluginSessionIdentifier = 0;
  }

  v21 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v21, OS_LOG_TYPE_DEFAULT, "processing adjustments", buf, 2u);
  }

  [(PUPhotoEditViewController *)self setEditSource:v19];
  v22 = [v4 contentEditingInput];
  [(PUPhotoEditViewController *)self setEditSourceContentEditingInput:v22];

  -[PUPhotoEditViewController setHasLoadedRaw:](self, "setHasLoadedRaw:", [v4 assetLoadingAsRaw]);
  [(PUPhotoEditViewController *)self setWorkImageVersion:v5];
  [(PUPhotoEditViewController *)self setPenultimateAvailable:v17];
  [(PUPhotoEditViewController *)self setCompositionController:v9];
  v23 = [v4 originalComposition];
  [(PUPhotoEditViewController *)self setOriginalComposition:v23];

  [(PUPhotoEditViewController *)self setUneditedComposition:v10];
  [(PUPhotoEditViewController *)self _updateLivePhotoModel];
  v24 = [v4 assetLoadingAsRaw];
  v25 = [(PUPhotoEditViewController *)self enterEditEventBuilder];
  [v25 setEditingWithRaw:v24];

  v26 = [v4 assetLoadingAsRaw];
  v27 = [(PUPhotoEditViewController *)self exitEditEventBuilder];
  [v27 setEditingWithRaw:v26];

  if (self->_needToReloadTools)
  {
    coreToolButtons = self->_coreToolButtons;
    self->_coreToolButtons = 0;

    coreToolButtonViews = self->_coreToolButtonViews;
    self->_coreToolButtonViews = 0;

    self->_toolbarButtonsValid = 0;
    [(PUPhotoEditViewController *)self _loadToolsIfNeeded:1];
    self->_needToReloadTools = 0;
  }

  if (v4)
  {
    [v4 videoComplementOriginalStillImageTime];
  }

  else
  {
    *buf = 0;
    v40 = 0;
    v41 = 0;
  }

  [(PUPhotoEditViewController *)self setOriginalStillImageTime:buf];
  v30 = [objc_alloc(MEMORY[0x1E69BE658]) initWithEditSource:v19];
  v31 = [v19 source];
  [v9 setSource:v31 mediaType:{objc_msgSend(v19, "mediaType")}];

  [v30 setCompositionController:v9];
  [(PUPhotoEditViewController *)self setMainRenderer:v30];
  v32 = [v4 imageURL];
  v33 = v32;
  if (v32)
  {
    v34 = v32;
  }

  else
  {
    v34 = [v4 videoComplementURL];
  }

  v35 = v34;

  if (v5 == 1 && v35)
  {
    v36 = [v4 editSource];
    [(PUPhotoEditViewController *)self _setOriginalURL:v35 originalEditSource:v36];
  }

  objc_initWeak(buf, self);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __77__PUPhotoEditViewController__handleDidLoadAdjustmentsAndBaseImageWithResult___block_invoke;
  v37[3] = &unk_1E7B80638;
  objc_copyWeak(&v38, buf);
  [(PUPhotoEditViewController *)self _ensureCleanupResourcesWithCompletion:v37];
  objc_destroyWeak(&v38);
  objc_destroyWeak(buf);
}

void __77__PUPhotoEditViewController__handleDidLoadAdjustmentsAndBaseImageWithResult___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _continueLoadingWithAutocalculators];
}

- (void)resourceLoader:(id)a3 request:(id)a4 downloadProgress:(double)a5
{
  [(PUPhotoEditViewController *)self updateProgressIndicatorAnimated:1, a4];
  progressIndicatorView = self->_progressIndicatorView;

  [(PUProgressIndicatorView *)progressIndicatorView setCurrentProgress:a5];
}

- (void)resourceLoader:(id)a3 request:(id)a4 mediaLoadDidFailWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(PUPhotoEditViewController *)self _didEndResourceLoading];
  [(PUPhotoEditViewController *)self _didEndEnterEdit];
  [(PUPhotoEditViewController *)self _handleResourceLoadChange];
  [(PUPhotoEditDiagnosticsManager *)self->_diagnosticsManager endMonitoring];
  diagnosticsManager = self->_diagnosticsManager;
  self->_diagnosticsManager = 0;

  v12 = [(PUPhotoEditViewController *)self initialPendingEditsRequest];
  [v12 finishedWithSuccess:0 error:v10];

  [(PUPhotoEditViewController *)self _uninstallInEditRevertTransitionSnapshotAnimated:0];
  if ([v10 code] != 3072)
  {
    v13 = [PUEditingErrorPresentationController alloc];
    v14 = [(PUPhotoEditViewController *)self photo];
    v15 = [(PUEditingErrorPresentationController *)v13 initWithError:v10 forAsset:v14];

    objc_initWeak(&location, self);
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __78__PUPhotoEditViewController_resourceLoader_request_mediaLoadDidFailWithError___block_invoke;
    v20 = &unk_1E7B80638;
    objc_copyWeak(&v21, &location);
    v16 = [(PUErrorPresentationController *)v15 alertControllerWithCompletion:&v17];
    [(PUPhotoEditViewController *)self presentViewController:v16 animated:1 completion:0, v17, v18, v19, v20];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

void __78__PUPhotoEditViewController_resourceLoader_request_mediaLoadDidFailWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didFinishWithChanges:0];
}

- (void)resourceLoader:(id)a3 request:(id)a4 didCompleteWithResult:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [(PUPhotoEditViewController *)self photo];
  [(PUPhotoEditDiagnosticsManager *)self->_diagnosticsManager endMonitoring];
  diagnosticsManager = self->_diagnosticsManager;
  self->_diagnosticsManager = 0;

  v13 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_DEFAULT, "Checking if asset is supported", buf, 2u);
  }

  v14 = MEMORY[0x1E69C3370];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __74__PUPhotoEditViewController_resourceLoader_request_didCompleteWithResult___block_invoke;
  v23[3] = &unk_1E7B7BB18;
  v23[4] = self;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __74__PUPhotoEditViewController_resourceLoader_request_didCompleteWithResult___block_invoke_2;
  v19[3] = &unk_1E7B7B400;
  v19[4] = self;
  v15 = v10;
  v20 = v15;
  v16 = v9;
  v21 = v16;
  objc_copyWeak(&v22, &location);
  [v14 checkIsSupportedAndPresentAlertForAsset:v11 type:0 alertControllerPresenter:v23 completionHandler:v19];
  pluginWaitingOnCompositionUpdate = self->_pluginWaitingOnCompositionUpdate;
  if (pluginWaitingOnCompositionUpdate)
  {
    dispatch_group_leave(pluginWaitingOnCompositionUpdate);
    v18 = self->_pluginWaitingOnCompositionUpdate;
    self->_pluginWaitingOnCompositionUpdate = 0;
  }

  [(PUPhotoEditViewController *)self _didEndResourceLoading];
  objc_destroyWeak(&v22);

  objc_destroyWeak(&location);
}

void __74__PUPhotoEditViewController_resourceLoader_request_didCompleteWithResult___block_invoke_2(id *a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    v12 = 138412290;
    v13 = v5;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "Asset supported: %@", &v12, 0xCu);
  }

  if (a2)
  {
    v6 = [a1[5] adjustmentIdentifierAndVersion];
    [a1[4] setAdjustmentIdentifierAndVersion:v6];

    v7 = [a1[6] version];
    WeakRetained = objc_loadWeakRetained(a1 + 7);
    v9 = WeakRetained;
    v10 = a1[5];
    if (v7 == 1)
    {
      [WeakRetained _handleDidLoadOriginalWithResult:v10];
    }

    else
    {
      [WeakRetained _handleDidLoadAdjustmentsAndBaseImageWithResult:v10];
    }
  }

  else
  {
    v9 = objc_loadWeakRetained(a1 + 7);
    [v9 didFinishWithChanges:0];
  }

  v11 = [a1[4] resourceProcessingInterval];
  [v11 endInterval];
}

- (void)photoEditResourceLoadRequestResourcesAvailabilityChanged:(id)a3 previousAvailability:(int64_t)a4 currentAvailability:(int64_t)a5
{
  v8 = [(PUPhotoEditViewController *)self enterEditTimeInterval];
  v9 = [v8 state];

  if (v9 != 1)
  {
    return;
  }

  if (a4 != 1 && a5 == 1)
  {
    v10 = [(PUPhotoEditViewController *)self resourceCheckingInterval];
    [v10 beginInterval];

LABEL_5:
    if (a4 != 2 || a5 == 2)
    {
      if (a4 == 3 || a5 != 3)
      {
        return;
      }

      v14 = [(PUPhotoEditViewController *)self resourceProcessingInterval];
      [(PUPhotoEditDiagnosticsManager *)v14 beginInterval];
    }

    else
    {
      v14 = [(PUPhotoEditViewController *)self resourceDownloadInterval];
      [(PUPhotoEditDiagnosticsManager *)v14 endInterval];
    }

    diagnosticsManager = v14;
    goto LABEL_18;
  }

  if (a4 == 1 && a5 != 1)
  {
    v11 = [(PUPhotoEditViewController *)self resourceCheckingInterval];
    [v11 endInterval];
  }

  if (a4 == 2 || a5 != 2)
  {
    goto LABEL_5;
  }

  v12 = [(PUPhotoEditViewController *)self resourceDownloadInterval];
  [v12 beginInterval];

  [(PUPhotoEditDiagnosticsManager *)self->_diagnosticsManager endMonitoring];
  diagnosticsManager = self->_diagnosticsManager;
  self->_diagnosticsManager = 0;
LABEL_18:
}

- (void)_loadOriginalImageIfNeeded
{
  v11 = [(PUPhotoEditViewController *)self resourceLoader];
  v3 = [(PUPhotoEditViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 screen];

  v6 = [(PUPhotoEditViewController *)self originalImageEditSource];
  if (v6 || !v11)
  {
    goto LABEL_6;
  }

  if ([v11 resourcesAvailability] == 1 || objc_msgSend(v11, "resourcesAvailability") == 2)
  {
    v6 = 0;
LABEL_6:

    goto LABEL_7;
  }

  if (v5)
  {
    [v5 pu_workImageSize];
    v8 = v7;
    v10 = v9;
    v6 = objc_alloc_init(MEMORY[0x1E69C42E0]);
    [v6 setVersion:1];
    [v6 setRequireLocalResources:1];
    [v6 setDelegate:self];
    [v6 setTargetSize:{v8, v10}];
    [v11 enqueueRequest:v6];
    [(PUPhotoEditViewController *)self _didStartResourceLoading];
    goto LABEL_6;
  }

LABEL_7:
}

- (void)_loadPhotoEditResourcesIfNeeded
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = [(PUPhotoEditViewController *)self resourceLoader];
  v5 = [(PUPhotoEditViewController *)self view];
  v6 = [v5 window];
  v7 = [v6 screen];

  v8 = [(PUPhotoEditViewController *)self editSource];
  if (v8 || [v4 resourcesAvailability] == 1 || objc_msgSend(v4, "resourcesAvailability") == 2)
  {
LABEL_20:

    goto LABEL_21;
  }

  if (v7)
  {
    v8 = [(PUPhotoEditViewController *)self photo];
    if (!v8)
    {
      v35 = [MEMORY[0x1E696AAA8] currentHandler];
      [v35 handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:6748 description:@"Cannot have a nil asset"];
    }

    v9 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEFAULT, "PERF - Beginning load of asset for edit", buf, 2u);
    }

    if (!v4 || ([v4 asset], v10 = objc_claimAutoreleasedReturnValue(), v10, v10 != v8))
    {
      v11 = objc_alloc(MEMORY[0x1E69C42F0]);
      v12 = [v11 initWithAsset:v8 loadingQueue:MEMORY[0x1E69E96A0]];

      v13 = +[PUPhotoEditProtoSettings sharedInstance];
      [v12 setSkipDisplaySizeImage:{objc_msgSend(v13, "skipPHContentEditingInputDisplaySizeImage")}];

      v14 = +[PUPhotoEditProtoSettings sharedInstance];
      [v12 setSimulateEditEntryError:{objc_msgSend(v14, "simulateEditEntryError")}];

      v15 = +[PUPhotoEditProtoSettings sharedInstance];
      [v12 setSimulateEditEntryError:{objc_msgSend(v15, "simulatedEditingEntryErrorType") != 0}];

      [(PUPhotoEditViewController *)self setResourceLoader:v12];
      v4 = v12;
    }

    v16 = [MEMORY[0x1E6978630] descriptionForMediaType:{objc_msgSend(v8, "mediaType")}];
    v17 = [MEMORY[0x1E6978630] descriptionForMediaSubtypes:{objc_msgSend(v8, "mediaSubtypes")}];
    v18 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v8 uuid];
      *buf = 138543874;
      v38 = v19;
      v39 = 2114;
      v40 = v16;
      v41 = 2114;
      v42 = v17;
      _os_log_impl(&dword_1B36F3000, v18, OS_LOG_TYPE_DEFAULT, "Asset [%{public}@] of type: %{public}@ and subtype: %{public}@ loaded for editing.", buf, 0x20u);
    }

    v36 = v17;

    v20 = [(PUPhotoEditViewController *)self compositionController];

    [v7 pu_workImageSize];
    v22 = v21;
    v24 = v23;
    v25 = [(PUPhotoEditViewController *)self workImageVersion];
    v26 = [(PUPhotoEditViewController *)self photo];
    objc_opt_class();
    v27 = v16;
    if (objc_opt_isKindOfClass())
    {
      v28 = [(PUPhotoEditViewController *)self photo];
    }

    else
    {
      v28 = 0;
    }

    v29 = v20 == 0;

    [v28 fetchPropertySetsIfNeeded];
    v30 = [v28 spatialMediaProperties];
    v31 = [v30 spatialMediaType] == 2;

    v32 = objc_alloc_init(MEMORY[0x1E69C42E0]);
    [v32 setRequireAdjustments:v29];
    [v32 setRequireLocalResources:1];
    [v32 setVersion:v25];
    [v32 setDelegate:self];
    [v32 setTargetSize:{v22, v24}];
    [v32 setRequireOriginalsDownloaded:v31];
    [v4 enqueueRequest:v32];
    if (PFOSVariantHasInternalUI())
    {
      v33 = [PUPhotoEditDiagnosticsManager diagnosticsManagerWithActionType:0 delegate:self];
      diagnosticsManager = self->_diagnosticsManager;
      self->_diagnosticsManager = v33;

      [(PUPhotoEditDiagnosticsManager *)self->_diagnosticsManager beginMonitoringForTimeInterval:10.0];
    }

    [(PUPhotoEditViewController *)self _didStartResourceLoading];

    goto LABEL_20;
  }

LABEL_21:
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = a3;
  v6 = [(PUPhotoEditViewController *)self _livePhotoGestureRecognizer];
  v7 = v6 == v5;

  togglePreviewTapGestureRecognizer = self->_togglePreviewTapGestureRecognizer;
  if (togglePreviewTapGestureRecognizer == v5)
  {
    return [(PUPhotoEditToolPickerController *)self->_toolPickerController selectedToolTag]!= 1006 || v6 == v5;
  }

  return v7;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotoEditViewController *)self _livePhotoGestureRecognizer];
  v6 = v5;
  togglePreviewTapGestureRecognizer = self->_togglePreviewTapGestureRecognizer;
  if (togglePreviewTapGestureRecognizer != v4 && v5 != v4)
  {
    LOBYTE(v34) = 1;
    goto LABEL_17;
  }

  currentEditingTool = self->_currentEditingTool;
  if (!currentEditingTool)
  {
    LOBYTE(v34) = 1;
    goto LABEL_15;
  }

  v10 = [(PUPhotoEditToolController *)currentEditingTool view];
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [(PUPhotoEditToolController *)self->_currentEditingTool preferredPreviewViewInsets];
  [(PUPhotoEditToolController *)self->_currentEditingTool additionalPreviewViewInsets];
  UIEdgeInsetsAdd();
  v20 = v12 + v19;
  v22 = v14 + v21;
  v24 = v16 - (v19 + v23);
  v26 = v18 - (v21 + v25);
  v27 = [(PUPhotoEditToolController *)self->_currentEditingTool view];
  [v4 locationInView:v27];
  v29 = v28;
  v31 = v30;

  v39.origin.x = v20;
  v39.origin.y = v22;
  v39.size.width = v24;
  v39.size.height = v26;
  v38.x = v29;
  v38.y = v31;
  v34 = CGRectContainsPoint(v39, v38);
  v32 = self->_currentEditingTool;
  if (v32 == self->_adjustmentsController || v32 == self->_filtersController)
  {
    v33 = 0;
    if (!v34)
    {
      goto LABEL_15;
    }

LABEL_12:
    if (!v33)
    {
      LOBYTE(v34) = [(PUPhotoEditToolController *)v32 gestureRecognizerShouldBegin:v4];
    }

    goto LABEL_15;
  }

  v33 = v32 != self->_photoStylesToolController;
  if (v34)
  {
    goto LABEL_12;
  }

LABEL_15:
  if (v6 == v4)
  {
    v35 = [(PUPhotoEditViewController *)self livePhotoModel];
    v36 = [v35 isVideoEnabled];

    LOBYTE(v34) = v36 & v34;
  }

LABEL_17:
  if (self->_currentEditingTool == &self->_mediaToolController->super && [(PUPhotoEditViewController *)self isPortraitVideo])
  {
    LOBYTE(v34) = togglePreviewTapGestureRecognizer != v4;
  }

  return v34 & 1;
}

- (void)_updateLivePhotoPlaybackGestureRecognizer
{
  if (![(PUPhotoEditToolController *)self->_currentEditingTool suppressesEditUpdates])
  {
    v5 = [(PUPhotoEditViewController *)self _livePhotoGestureRecognizer];
    v3 = 1;
    [(PUPhotoEditViewController *)self _installGestureRecognizer:v5 type:1];
    [v5 setDelegate:self];
    currentEditingTool = self->_currentEditingTool;
    if (currentEditingTool)
    {
      v3 = [(PUPhotoEditToolController *)currentEditingTool wantsDefaultPreviewView];
    }

    [v5 setEnabled:v3];
  }
}

- (id)_livePhotoGestureRecognizer
{
  mediaView = self->_mediaView;
  if (mediaView)
  {
    v3 = [(NUMediaView *)mediaView _livePhotoView];
    v4 = [v3 playbackGestureRecognizer];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_handleSwipeDownGesture:(id)a3
{
  if (self->_swipeDownGestureRecognizer == a3 && [a3 state] == 3)
  {
    self->_inProgressSaveIsFromSwipe = 1;

    [(PUPhotoEditViewController *)self _handle1upToggleButton:0];
  }
}

- (void)_updateSwipeDownGestureRecognizer
{
  if (self->_swipeDownGestureRecognizer)
  {
    goto LABEL_5;
  }

  v3 = +[PUPhotoEditProtoSettings sharedInstance];
  v4 = [v3 swipeToExitEdit];

  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DCFC8]) initWithTarget:self action:sel__handleSwipeDownGesture_];
    swipeDownGestureRecognizer = self->_swipeDownGestureRecognizer;
    self->_swipeDownGestureRecognizer = v5;

    [(UISwipeGestureRecognizer *)self->_swipeDownGestureRecognizer setDelegate:self];
    [(UISwipeGestureRecognizer *)self->_swipeDownGestureRecognizer setDirection:8];
  }

  if (self->_swipeDownGestureRecognizer)
  {
LABEL_5:

    [PUPhotoEditViewController _installGestureRecognizer:"_installGestureRecognizer:type:" type:?];
  }
}

- (void)_startShowingOriginalBadge
{
  [(PUPhotoEditViewController *)self _updateTransientStatusBadgeForPreviewingOriginal];
  v3 = +[PUPhotoEditProtoSettings sharedInstance];
  if ([v3 previewOriginalTimesOut] && (-[PUPhotoEditToolController wantsTapToToggleOriginalEnabled](self->_currentEditingTool, "wantsTapToToggleOriginalEnabled") || self->_showOriginalButtonTapped))
  {
    v4 = self->_togglePreviewOriginalOffRequestID + 1;
    self->_togglePreviewOriginalOffRequestID = v4;
    [v3 previewOriginalDuration];
    v6 = v5;
    v7 = [(PUPhotoEditViewController *)self photo];
    v8 = [v7 canPlayLoopingVideo];
    v9 = 1.0;
    if (v8)
    {
      v9 = 2.0;
    }

    v10 = v6 * v9;

    v11 = dispatch_time(0, (v10 * 1000000000.0));
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55__PUPhotoEditViewController__startShowingOriginalBadge__block_invoke;
    v12[3] = &unk_1E7B7FF70;
    v12[4] = self;
    v12[5] = v4;
    dispatch_after(v11, MEMORY[0x1E69E96A0], v12);
  }

  self->_showOriginalButtonTapped = 0;
}

void *__55__PUPhotoEditViewController__startShowingOriginalBadge__block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  result = *(a1 + 32);
  if (*(v2 + 8) == result[189])
  {
    return [result setShouldBePreviewingOriginal:0];
  }

  return result;
}

- (void)_toggleShowOriginal
{
  if ([(PUPhotoEditViewController *)self togglingShowOriginal])
  {
    self->_showOriginalButtonTapped = 0;
  }

  else
  {
    if ([(PUPhotoEditViewController *)self shouldBePreviewingOriginal])
    {
      v3 = 0;
    }

    else
    {
      v4 = [(PUPhotoEditViewController *)self resourceLoader];
      v3 = [v4 resourcesAvailability] == 3;
    }

    [(PUPhotoEditViewController *)self setShouldBePreviewingOriginal:v3];

    [(PUPhotoEditViewController *)self setTogglingShowOriginal:v3];
  }
}

- (void)_handleTogglePreviewTapGesture:(id)a3
{
  v4 = a3;
  if (self->_togglePreviewTapGestureRecognizer == v4)
  {
    v11 = v4;
    v5 = [(UITapGestureRecognizer *)v4 state]== 3;
    v4 = v11;
    if (v5)
    {
      v6 = [(PUPhotoEditViewController *)self compositionController];

      v4 = v11;
      if (v6)
      {
        v7 = [(UITapGestureRecognizer *)v11 touches];
        v8 = [v7 lastObject];

        v9 = [v8 type];
        if ([(PUPhotoEditViewController *)self isStandardVideo]|| (v10 = [(PUPhotoEditViewController *)self isLoopingVideo], v9 != 2) || v10)
        {
          [(PUPhotoEditViewController *)self _toggleShowOriginal];
        }

        else
        {
          [(PUPhotoEditViewController *)self _startMarkupSession];
        }

        v4 = v11;
      }
    }
  }
}

- (void)_updateTogglePreviewGestureRecognizer
{
  togglePreviewTapGestureRecognizer = self->_togglePreviewTapGestureRecognizer;
  if (!togglePreviewTapGestureRecognizer)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTogglePreviewTapGesture_];
    v5 = self->_togglePreviewTapGestureRecognizer;
    self->_togglePreviewTapGestureRecognizer = v4;

    [(UITapGestureRecognizer *)self->_togglePreviewTapGestureRecognizer setDelegate:self];
    togglePreviewTapGestureRecognizer = self->_togglePreviewTapGestureRecognizer;
  }

  [(PUPhotoEditViewController *)self _installGestureRecognizer:togglePreviewTapGestureRecognizer type:0];
  if (self->_livePhotoIsPlaying)
  {
    v6 = 0;
  }

  else
  {
    currentEditingTool = self->_currentEditingTool;
    if (currentEditingTool)
    {
      v6 = [(PUPhotoEditToolController *)currentEditingTool wantsTapToToggleOriginalEnabled];
    }

    else
    {
      v6 = 1;
    }
  }

  v8 = self->_togglePreviewTapGestureRecognizer;

  [(UITapGestureRecognizer *)v8 setEnabled:v6];
}

- (void)_installGestureRecognizer:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  currentEditingTool = self->_currentEditingTool;
  v10 = v6;
  if (currentEditingTool && (v8 = [(PUPhotoEditToolController *)currentEditingTool supportsGesturesOfType:a4], v6 = v10, !v8))
  {
    v9 = [v10 view];
    [v9 removeGestureRecognizer:v10];
  }

  else
  {
    [(NUMediaView *)self->_mediaView addGestureRecognizer:v6];
  }
}

- (void)pencilInteractionDidTap:(id)a3
{
  v4 = [(PUPhotoEditViewController *)self presentedViewController];

  if (!v4 && ![(PUPhotoEditViewController *)self isStandardVideo]&& ![(PUPhotoEditViewController *)self isLoopingVideo])
  {

    [(PUPhotoEditViewController *)self _startMarkupSession];
  }
}

- (void)_startMarkupSession
{
  v3 = [(PUPhotoEditViewController *)self compositionController];

  if (v3)
  {
    v4 = [(PUPhotoEditViewController *)self photo];
    [(PUEditPluginSession *)self->_pluginSession beginMarkupSessionWithAsset:v4 fromViewController:self];
  }
}

- (void)_createPencilInteractionIfNeeded
{
  if (!self->_pencilInteraction)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCD58]);
    pencilInteraction = self->_pencilInteraction;
    self->_pencilInteraction = v4;

    [(UIPencilInteraction *)self->_pencilInteraction setDelegate:self];
    mediaView = self->_mediaView;
    if (!mediaView)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:6528 description:{@"Invalid parameter not satisfying: %@", @"_mediaView"}];

      mediaView = self->_mediaView;
    }

    v7 = self->_pencilInteraction;

    [(NUMediaView *)mediaView addInteraction:v7];
  }
}

- (void)photoLibraryChangesPausedDidChange
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v3 = [v2 px_areChangesPaused];

  v4 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "PUPhotoEditViewController observed library changes pause change: %d", v5, 8u);
  }
}

- (void)photoLibraryDidChangeOnMainQueue:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableSet *)self->_assetsWaitingForLibraryNotification copy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v4 contentOrThumbnailChangedForAsset:v11];
        v13 = PLPhotoEditGetLog();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        if (v12)
        {
          if (v14)
          {
            *v15 = 0;
            _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_DEFAULT, "[PUPhotoEditViewController photoLibraryDidChangeOnMainQueue:] - change was for our photo", v15, 2u);
          }

          [(PUPhotoEditViewController *)self _stopWaitingForAssetChangeWithAsset:v11 success:1];
        }

        else
        {
          if (v14)
          {
            *v15 = 0;
            _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_DEFAULT, "[PUPhotoEditViewController photoLibraryDidChangeOnMainQueue:] - not for our photo", v15, 2u);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

- (void)_uninstallInEditRevertTransitionSnapshotAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(PUPhotoEditViewController *)self _isInEditRevertTransitionSnapshotVisible])
  {
    if (v3)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __78__PUPhotoEditViewController__uninstallInEditRevertTransitionSnapshotAnimated___block_invoke;
      v7[3] = &unk_1E7B80DD0;
      v7[4] = self;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __78__PUPhotoEditViewController__uninstallInEditRevertTransitionSnapshotAnimated___block_invoke_2;
      v6[3] = &unk_1E7B7F020;
      v6[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v7 animations:v6 completion:0.3];
    }

    else
    {
      v5 = [(PUPhotoEditViewController *)self inEditRevertTransitionSnapshot];
      [v5 removeFromSuperview];

      [(PUPhotoEditViewController *)self setInEditRevertTransitionSnapshot:0];
    }
  }
}

void __78__PUPhotoEditViewController__uninstallInEditRevertTransitionSnapshotAnimated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) inEditRevertTransitionSnapshot];
  [v1 setAlpha:0.0];
}

uint64_t __78__PUPhotoEditViewController__uninstallInEditRevertTransitionSnapshotAnimated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) inEditRevertTransitionSnapshot];
  [v2 removeFromSuperview];

  v3 = *(a1 + 32);

  return [v3 setInEditRevertTransitionSnapshot:0];
}

- (void)_installInEditRevertTransitionSnapshot
{
  v3 = [(PUPhotoEditViewController *)self view];
  v4 = [v3 snapshotViewAfterScreenUpdates:0];
  [(PUPhotoEditViewController *)self setInEditRevertTransitionSnapshot:v4];

  v5 = [(PUPhotoEditViewController *)self view];
  v6 = [(PUPhotoEditViewController *)self inEditRevertTransitionSnapshot];
  [v5 addSubview:v6];

  v7 = dispatch_time(0, 3000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PUPhotoEditViewController__installInEditRevertTransitionSnapshot__block_invoke;
  block[3] = &unk_1E7B80DD0;
  block[4] = self;
  dispatch_after(v7, MEMORY[0x1E69E96A0], block);
}

- (BOOL)_isInEditRevertTransitionSnapshotVisible
{
  v2 = [(PUPhotoEditViewController *)self inEditRevertTransitionSnapshot];
  v3 = [v2 superview];
  v4 = v3 != 0;

  return v4;
}

- (void)_performInEditRevertWithToolButton:(id)a3
{
  v4 = -[PUPhotoEditViewController _toolControllerForTag:](self, "_toolControllerForTag:", [a3 tag]);
  v5 = -[PUPhotoEditViewController _toolTypeForToolWithTag:](self, "_toolTypeForToolWithTag:", [v4 toolControllerTag]);
  [(PUPhotoEditViewController *)self updateProgressIndicatorAnimated:1];
  v6 = [(PUPhotoEditViewController *)self mediaDestination];
  v7 = [(PUPhotoEditViewController *)self photo];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__PUPhotoEditViewController__performInEditRevertWithToolButton___block_invoke;
  v9[3] = &unk_1E7B7B3D8;
  v10 = v4;
  v11 = v5;
  v9[4] = self;
  v8 = v4;
  [v6 revertEditsForAsset:v7 completionHandler:v9];
}

void __64__PUPhotoEditViewController__performInEditRevertWithToolButton___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  [*(a1 + 32) updateProgressIndicatorAnimated:1];
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 1864), a2);
    *(*(a1 + 32) + 1601) = 1;
    v8 = *(a1 + 32);
    v9 = *(v8 + 1016);
    if (v9)
    {
      [v9 willMoveToParentViewController:0];
      v10 = [*(*(a1 + 32) + 1016) view];
      [v10 removeFromSuperview];

      [*(*(a1 + 32) + 1016) removeFromParentViewController];
      v11 = *(a1 + 32);
      v12 = *(v11 + 1000);
      *(v11 + 1000) = 0;

      v13 = *(a1 + 32);
      v14 = *(v13 + 1016);
      *(v13 + 1016) = 0;

      v15 = *(a1 + 32);
      v16 = *(v15 + 1608);
      *(v15 + 1608) = 0;

      v17 = *(a1 + 32);
      v18 = *(v17 + 1616);
      *(v17 + 1616) = 0;

      v19 = *(a1 + 32);
      v20 = *(v19 + 1632);
      *(v19 + 1632) = 0;

      v21 = *(a1 + 32);
      v22 = *(v21 + 1648);
      *(v21 + 1648) = 0;

      v23 = *(a1 + 32);
      v24 = *(v23 + 1640);
      *(v23 + 1640) = 0;

      v25 = *(a1 + 32);
      v26 = *(v25 + 1624);
      *(v25 + 1624) = 0;

      *(*(a1 + 32) + 1728) = 0;
      *(*(a1 + 32) + 1664) = 0;
      v27 = *(a1 + 32);
      v28 = *(v27 + 1656);
      *(v27 + 1656) = 0;

      v8 = *(a1 + 32);
    }

    v29 = *(v8 + 1416);
    *(v8 + 1416) = 0;

    [*(a1 + 32) setInitialToolType:*(a1 + 48)];
    [*(a1 + 32) _resetModelAndBaseImagesToWorkImageVersion:0];
    [*(a1 + 40) setEnabled:1];
    [*(a1 + 32) _installInEditRevertTransitionSnapshot];
    [*(a1 + 32) _loadPhotoEditResourcesIfNeeded];
  }

  else
  {
    v30 = PLUIGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v39 = v7;
      _os_log_impl(&dword_1B36F3000, v30, OS_LOG_TYPE_ERROR, "error reverting to original: %@", buf, 0xCu);
    }

    if ([*(a1 + 32) isStandardVideo])
    {
      v31 = @"VIDEOEDIT_EDIT_REVERT_TO_ORIGINAL_FAILED_TITLE";
    }

    else
    {
      v31 = @"PHOTOEDIT_EDIT_REVERT_TO_ORIGINAL_FAILED_TITLE";
    }

    v32 = PULocalizedString(v31);
    if (MEMORY[0x1B8C6C170]())
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\n[Internal Only] %@", v32, v7];

      v32 = v33;
    }

    v34 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v32 message:0 preferredStyle:1];
    v35 = MEMORY[0x1E69DC648];
    v36 = PULocalizedString(@"OK");
    v37 = [v35 actionWithTitle:v36 style:0 handler:0];

    [v34 addAction:v37];
    [*(a1 + 32) presentViewController:v34 animated:1 completion:0];
  }
}

- (void)_presentWarningForIrisRemovesEditsWithCompletion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:6372 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  v6 = MEMORY[0x1E69DC650];
  v7 = PULocalizedString(@"PHOTOEDIT_LIVE_PHOTO_REMOVES_EDITS_MESSAGE");
  v8 = [v6 alertControllerWithTitle:0 message:v7 preferredStyle:0];

  v9 = MEMORY[0x1E69DC648];
  v10 = PULocalizedString(@"CANCEL");
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __78__PUPhotoEditViewController__presentWarningForIrisRemovesEditsWithCompletion___block_invoke;
  v22[3] = &unk_1E7B80980;
  v11 = v5;
  v23 = v11;
  v12 = [v9 actionWithTitle:v10 style:1 handler:v22];
  [v8 addAction:v12];

  v13 = MEMORY[0x1E69DC648];
  v14 = PULocalizedString(@"PHOTOEDIT_CONFIRM_REVERT_BUTTON");
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __78__PUPhotoEditViewController__presentWarningForIrisRemovesEditsWithCompletion___block_invoke_2;
  v20[3] = &unk_1E7B80980;
  v21 = v11;
  v15 = v11;
  v16 = [v13 actionWithTitle:v14 style:2 handler:v20];
  [v8 addAction:v16];

  v17 = [v8 popoverPresentationController];
  [v17 setPermittedArrowDirections:15];
  v18 = [(PUPhotoEditMediaToolController *)self->_mediaToolController livePhotoButton];
  [v17 setSourceView:v18];
  [v18 bounds];
  [v17 setSourceRect:?];
  [v17 setDelegate:self];
  [(PUPhotoEditViewController *)self setIrisRevertConfirmationAlert:v8];
  [(PUPhotoEditViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)_handleLivePhotoTouchRecognizer:(id)a3
{
  if ([a3 state] != 2)
  {

    [(PUPhotoEditViewController *)self updateProgressIndicatorAnimated:1];
  }
}

- (void)_setPlaybackEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUPhotoEditViewController *)self livePhotoModel];
  v6 = v5;
  if (v3 && [v5 reenablingLivePhotoShouldRemoveEdits])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__PUPhotoEditViewController__setPlaybackEnabled___block_invoke;
    v7[3] = &unk_1E7B7F020;
    v7[4] = self;
    [(PUPhotoEditViewController *)self _presentWarningForIrisRemovesEditsWithCompletion:v7];
  }

  else
  {
    [v6 setVideoEnabled:v3];
  }
}

uint64_t __49__PUPhotoEditViewController__setPlaybackEnabled___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _performRevertAction];
  }

  return result;
}

- (void)toggleLivePhotoActive
{
  v3 = [(PUPhotoEditViewController *)self livePhotoModel];
  if (([v3 isVideoEnabled] & 1) != 0 || !objc_msgSend(v3, "reenablingLivePhotoShouldRemoveEdits"))
  {
    v4 = objc_alloc(MEMORY[0x1E69C3538]);
    v5 = [(PUPhotoEditViewController *)self compositionController];
    v6 = [v4 initWithCompositionController:v5 livePhotoModel:v3];

    v7 = [(PUPhotoEditViewController *)self undoManager];
    [v6 executeWithUndoManager:v7 completionHandler:&__block_literal_global_848];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__PUPhotoEditViewController_toggleLivePhotoActive__block_invoke;
    v8[3] = &unk_1E7B7F020;
    v8[4] = self;
    [(PUPhotoEditViewController *)self _presentWarningForIrisRemovesEditsWithCompletion:v8];
  }
}

uint64_t __50__PUPhotoEditViewController_toggleLivePhotoActive__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _performRevertAction];
  }

  return result;
}

- (void)_updateMutedState
{
  v3 = [(PUPhotoEditViewController *)self compositionController];
  v5 = [v3 adjustmentControllerForKey:*MEMORY[0x1E69BE048]];

  if (v5)
  {
    v4 = [v5 enabled];
  }

  else
  {
    v4 = [(PUPhotoEditViewController *)self hasLoopingVideoAdjustment];
  }

  [(NUMediaView *)self->_mediaView setMuted:v4];
}

- (void)applyAutoEnhance:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  autoEnhanceController = self->_autoEnhanceController;
  v9 = [(PUPhotoEditViewController *)self valuesCalculator];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__PUPhotoEditViewController_applyAutoEnhance_completion___block_invoke;
  v11[3] = &unk_1E7B7B3B0;
  objc_copyWeak(&v13, &location);
  v10 = v7;
  v12 = v10;
  [(PEAutoAdjustmentController *)autoEnhanceController enableAutoEnhanceOnCompositionController:v6 valuesCalculator:v9 completionHandler:v11];

  [(PUPhotoEditViewController *)self updateProgressIndicatorAnimated:1];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

uint64_t __57__PUPhotoEditViewController_applyAutoEnhance_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateProgressIndicatorAnimated:1];

  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 ppt_afterAutoenhanceBlock];

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    v6 = [v5 ppt_afterAutoenhanceBlock];

    v7 = objc_loadWeakRetained((a1 + 40));
    [v7 setPpt_afterAutoenhanceBlock:0];

    v6[2](v6);
  }

  result = *(a1 + 32);
  if (result)
  {
    v9 = *(result + 16);

    return v9();
  }

  return result;
}

- (void)_handleAutoEnhanceButton:(id)a3
{
  if (([(PEAutoAdjustmentController *)self->_autoEnhanceController isBusy]& 1) == 0)
  {
    v8 = [(PUPhotoEditViewController *)self compositionController];
    if (!v8)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:6291 description:@"Need a compositionController to compute AutoEnhance"];
    }

    v5 = [(PUPhotoEditViewController *)self valuesCalculator];

    if (!v5)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:6292 description:@"Need a valuesCalculator to compute AutoEnhance"];
    }

    if ([MEMORY[0x1E69C4260] isAutoEnhanceEnabledForCompositionController:v8])
    {
      [(PEAutoAdjustmentController *)self->_autoEnhanceController disableAutoEnhanceOnCompositionController:v8];
    }

    else
    {
      [(PUPhotoEditViewController *)self applyAutoEnhance:v8 completion:0];
    }
  }
}

- (void)_presentMarkup
{
  v3 = [(PUPhotoEditViewController *)self photo];
  [(PUEditPluginSession *)self->_pluginSession beginMarkupSessionWithAsset:v3 fromViewController:self];
}

- (BOOL)_canPresentMarkup
{
  if ([(PUPhotoEditViewController *)self isLoopingVideo]|| [(PUPhotoEditViewController *)self isStandardVideo])
  {
    return 0;
  }

  pluginSession = self->_pluginSession;

  return [(PUEditPluginSession *)pluginSession markupIsAvailable];
}

- (void)_handleZoomButton:(id)a3
{
  self->_zoomButtonInteraction = 1;
  v13 = [(PUPhotoEditViewController *)self mediaView];
  if ([(PUPhotoEditViewController *)self _isZoomedIn])
  {
    [v13 minimumZoomScale];
    [v13 setZoomScale:1 animated:?];
  }

  else
  {
    v4 = [v13 _renderView];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [v13 zoomToRect:1 animated:{v6, v8, v10, v12}];
  }

  self->_zoomButtonInteraction = 0;
}

- (void)_updateZoomButton
{
  if (self->_zoomButton)
  {
    v3 = [(PUPhotoEditViewController *)self _isZoomedIn];
    zoomButton = self->_zoomButton;

    [(PUPhotoEditToolbarButton *)zoomButton setSelected:v3];
  }
}

- (BOOL)_isZoomedIn
{
  v2 = [(PUPhotoEditViewController *)self mediaView];
  v3 = [v2 _scrollView];

  [v3 zoomScale];
  v5 = v4;
  [v3 minimumZoomScale];
  LOBYTE(v2) = v5 > v6 * 1.05;

  return v2;
}

- (id)_internalActionsSubmenu
{
  v17[1] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E69DC628];
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"ant.circle"];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __52__PUPhotoEditViewController__internalActionsSubmenu__block_invoke;
  v14 = &unk_1E7B80890;
  objc_copyWeak(&v15, &location);
  v5 = [v3 actionWithTitle:@"File a Radar" image:v4 identifier:0 handler:&v11];

  v17[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:{1, v11, v12, v13, v14}];
  v7 = [(PUPhotoEditToolController *)self->_currentEditingTool internalToolActionsForMenu];
  if (v7)
  {
    v8 = [v6 arrayByAddingObjectsFromArray:v7];

    v6 = v8;
  }

  v9 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F2AC6818 image:0 identifier:0 options:1 children:v6];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v9;
}

void __52__PUPhotoEditViewController__internalActionsSubmenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fileRadar];
}

- (id)_toolActionsSubmenu
{
  v2 = [(PUPhotoEditToolController *)self->_currentEditingTool toolActionsForMenu];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F2AC6818 image:0 identifier:0 options:1 children:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_extensionsSubmenu
{
  v37 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = [(PUPhotoEditViewController *)self _canPresentExtensions];
  v4 = MEMORY[0x1E69DC628];
  v5 = PULocalizedString(@"MARKUP_BUTTON_TITLE");
  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"pencil.tip.crop.circle"];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __47__PUPhotoEditViewController__extensionsSubmenu__block_invoke;
  v27[3] = &unk_1E7B80890;
  objc_copyWeak(&v28, &location);
  v7 = [v4 actionWithTitle:v5 image:v6 identifier:0 handler:v27];

  v8 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v7;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "PUPhotoEditViewController _extensionsSubmenu: markupAction: %@", buf, 0xCu);
  }

  v9 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(PUPhotoEditViewController *)self _markupGetsItsOwnButton];
    v11 = [(PUPhotoEditViewController *)self _canPresentMarkup];
    v12 = @"NO";
    if (v10)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    if (v11)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    *buf = 138412802;
    v32 = v13;
    v33 = 2112;
    v34 = v14;
    if (v3)
    {
      v12 = @"YES";
    }

    v35 = 2112;
    v36 = v12;
    _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEFAULT, "PUPhotoEditViewController _extensionsSubmenu: (_markupGetsItsOwnButton: %@) (_canPresentMarkup: %@) (canPresentExtensions: %@)", buf, 0x20u);
  }

  if ([(PUPhotoEditViewController *)self _markupGetsItsOwnButton]|| ![(PUPhotoEditViewController *)self _canPresentMarkup]|| !v3)
  {
    v15 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_DEFAULT, "PUPhotoEditViewController _extensionsSubmenu: Adding UIMenuElementAttributesHidden to Markup action", buf, 2u);
    }

    [(__CFString *)v7 setAttributes:4];
  }

  v16 = MEMORY[0x1E69DC628];
  v17 = PULocalizedString(@"PLUGIN_MENU_ITEM_TITLE");
  v18 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"app.connected.to.app.below.fill"];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __47__PUPhotoEditViewController__extensionsSubmenu__block_invoke_833;
  v25[3] = &unk_1E7B80890;
  objc_copyWeak(&v26, &location);
  v19 = [v16 actionWithTitle:v17 image:v18 identifier:0 handler:v25];

  if (!v3)
  {
    v20 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v20, OS_LOG_TYPE_DEFAULT, "PUPhotoEditViewController _extensionsSubmenu: Adding UIMenuElementAttributesHidden to Extensions action", buf, 2u);
    }

    [v19 setAttributes:4];
  }

  v21 = MEMORY[0x1E69DCC60];
  v30[0] = v7;
  v30[1] = v19;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v23 = [v21 menuWithTitle:&stru_1F2AC6818 image:0 identifier:0 options:1 children:v22];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);

  return v23;
}

void __47__PUPhotoEditViewController__extensionsSubmenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentMarkup];
}

void __47__PUPhotoEditViewController__extensionsSubmenu__block_invoke_833(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentExtensions];
}

- (id)_appearanceSubmenu
{
  v29[3] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = [(PUPhotoEditViewController *)self traitCollection];
  v4 = [v3 userInterfaceStyle] == 2;

  if (v4)
  {
    v5 = @"appearance.darkmode";
  }

  else
  {
    v5 = @"appearance.lightmode";
  }

  v6 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v5];
  v7 = +[PUPhotoEditAppearancePreference preferredAppearance];
  v8 = MEMORY[0x1E69DC628];
  v9 = PULocalizedString(@"PHOTOEDIT_APPEARANCE_MENU_ITEM_SYSTEM");
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __47__PUPhotoEditViewController__appearanceSubmenu__block_invoke;
  v26[3] = &unk_1E7B80890;
  objc_copyWeak(&v27, &location);
  v10 = [v8 actionWithTitle:v9 image:0 identifier:0 handler:v26];

  [v10 setState:v7 == 0];
  v11 = MEMORY[0x1E69DC628];
  v12 = PULocalizedString(@"PHOTOEDIT_APPEARANCE_MENU_ITEM_DARK");
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __47__PUPhotoEditViewController__appearanceSubmenu__block_invoke_2;
  v24[3] = &unk_1E7B80890;
  objc_copyWeak(&v25, &location);
  v13 = [v11 actionWithTitle:v12 image:0 identifier:0 handler:v24];

  [v13 setState:v7 == 1];
  v14 = MEMORY[0x1E69DC628];
  v15 = PULocalizedString(@"PHOTOEDIT_APPEARANCE_MENU_ITEM_LIGHT");
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __47__PUPhotoEditViewController__appearanceSubmenu__block_invoke_3;
  v22[3] = &unk_1E7B80890;
  objc_copyWeak(&v23, &location);
  v16 = [v14 actionWithTitle:v15 image:0 identifier:0 handler:v22];

  [v16 setState:v7 == 2];
  v17 = MEMORY[0x1E69DCC60];
  v18 = PULocalizedString(@"PHOTOEDIT_APPEARANCE_MENU_TITLE");
  v29[0] = v10;
  v29[1] = v13;
  v29[2] = v16;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];
  v20 = [v17 menuWithTitle:v18 image:v6 identifier:0 options:0 children:v19];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v25);

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);

  return v20;
}

void __47__PUPhotoEditViewController__appearanceSubmenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPreferredAppearance:0];
}

void __47__PUPhotoEditViewController__appearanceSubmenu__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPreferredAppearance:1];
}

void __47__PUPhotoEditViewController__appearanceSubmenu__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPreferredAppearance:2];
}

- (id)_copyPasteEditsSubmenu
{
  v23[2] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E69DC628];
  v4 = PULocalizedString(@"PHOTOEDIT_COPY_ADJUST");
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"slider.horizontal.2.square.on.square"];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __51__PUPhotoEditViewController__copyPasteEditsSubmenu__block_invoke;
  v20[3] = &unk_1E7B80890;
  objc_copyWeak(&v21, &location);
  v6 = [v3 actionWithTitle:v4 image:v5 identifier:0 handler:v20];

  if (![(PUPhotoEditViewController *)self canCopyEdits])
  {
    [v6 setAttributes:1];
  }

  v7 = MEMORY[0x1E69DC628];
  v8 = PULocalizedString(@"PHOTOEDIT_PASTE_ADJUST");
  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"slider.horizontal.2.square.badge.arrow.down"];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __51__PUPhotoEditViewController__copyPasteEditsSubmenu__block_invoke_2;
  v18 = &unk_1E7B80890;
  objc_copyWeak(&v19, &location);
  v10 = [v7 actionWithTitle:v8 image:v9 identifier:0 handler:&v15];

  if (![(PUPhotoEditViewController *)self _canPasteEdits:v15])
  {
    [v10 setAttributes:1];
  }

  v11 = MEMORY[0x1E69DCC60];
  v23[0] = v6;
  v23[1] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v13 = [v11 menuWithTitle:&stru_1F2AC6818 image:0 identifier:0 options:1 children:v12];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
  return v13;
}

void __51__PUPhotoEditViewController__copyPasteEditsSubmenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained copyEditsSkippingOptions:0];
}

void __51__PUPhotoEditViewController__copyPasteEditsSubmenu__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained pasteEditsWithCompletionHandler:0];
}

- (id)_saveAsDuplicateSubmenu
{
  v17[1] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E69DC628];
  v4 = PULocalizedString(@"PHOTOEDIT_SAVE_AS_DUPLICATE_ACTION_TITLE");
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.square.on.square"];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __52__PUPhotoEditViewController__saveAsDuplicateSubmenu__block_invoke;
  v14 = &unk_1E7B80890;
  objc_copyWeak(&v15, &location);
  v6 = [v3 actionWithTitle:v4 image:v5 identifier:0 handler:&v11];

  if (![(PUPhotoEditViewController *)self _hasUnsavedChanges:v11])
  {
    [v6 setAttributes:1];
  }

  v7 = MEMORY[0x1E69DCC60];
  v17[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v9 = [v7 menuWithTitle:&stru_1F2AC6818 image:0 identifier:0 options:1 children:v8];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v9;
}

void __52__PUPhotoEditViewController__saveAsDuplicateSubmenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSaveAction:1];
}

- (id)_redEyeAction
{
  v3 = [(PUPhotoEditViewController *)self redEyeController];
  currentEditingTool = self->_currentEditingTool;

  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69DC628];
  v6 = PULocalizedString(@"PHOTOEDIT_REDEYE_TOOL_MENU_ITEM");
  if (v3 == currentEditingTool)
  {
    v7 = @"eye.slash.fill";
  }

  else
  {
    v7 = @"eye.slash";
  }

  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:v7];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __42__PUPhotoEditViewController__redEyeAction__block_invoke;
  v14 = &unk_1E7B80890;
  objc_copyWeak(&v15, &location);
  v9 = [v5 actionWithTitle:v6 image:v8 identifier:0 handler:&v11];

  [v9 setAttributes:{8, v11, v12, v13, v14}];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v9;
}

void __42__PUPhotoEditViewController__redEyeAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleToolbarToolButton:WeakRetained[170]];
}

- (id)_undoRedoSubmenu
{
  v29[2] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = [(PUPhotoEditViewController *)self undoManager];
  v4 = MEMORY[0x1E69DC628];
  v5 = [(PUPhotoEditViewController *)self undoManager];
  v6 = [v5 undoMenuItemTitle];
  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.uturn.backward"];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __45__PUPhotoEditViewController__undoRedoSubmenu__block_invoke;
  v26[3] = &unk_1E7B7C4A0;
  v8 = v3;
  v27 = v8;
  v9 = [v4 actionWithTitle:v6 image:v7 identifier:0 handler:v26];

  [v9 setAttributes:8];
  if (([v8 canUndo] & 1) == 0)
  {
    [v9 setAttributes:{objc_msgSend(v9, "attributes") | 1}];
  }

  v10 = MEMORY[0x1E69DC628];
  v11 = objc_loadWeakRetained(&location);
  v12 = [v11 undoManager];
  v13 = [v12 redoMenuItemTitle];
  v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.uturn.forward"];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __45__PUPhotoEditViewController__undoRedoSubmenu__block_invoke_2;
  v24 = &unk_1E7B7C4A0;
  v15 = v8;
  v25 = v15;
  v16 = [v10 actionWithTitle:v13 image:v14 identifier:0 handler:&v21];

  [v16 setAttributes:{8, v21, v22, v23, v24}];
  if (([v15 canRedo] & 1) == 0)
  {
    [v16 setAttributes:{objc_msgSend(v16, "attributes") | 1}];
  }

  v17 = MEMORY[0x1E69DCC60];
  v29[0] = v9;
  v29[1] = v16;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v19 = [v17 menuWithTitle:&stru_1F2AC6818 image:0 identifier:0 options:1 children:v18];

  objc_destroyWeak(&location);

  return v19;
}

- (void)_reloadMoreButtonMenu
{
  v3 = [(PUPhotoEditViewController *)self _moreButtonMenu];
  [(PUPhotoEditToolbarButton *)self->_moreButton setMenu:v3];
}

- (void)_produceMoreButtonMenuElementsWithCompletion:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(PUPhotoEditViewController *)self _copyPasteEditsSubmenu];
  [v5 addObject:v6];

  v7 = [(PUPhotoEditViewController *)self photo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [(PUPhotoEditViewController *)self _saveAsDuplicateSubmenu];
    [v5 addObject:v9];
  }

  v10 = +[PUPhotoEditProtoSettings sharedInstance];
  v11 = [v10 lightModeEditor];

  if (v11)
  {
    v12 = [(PUPhotoEditViewController *)self _appearanceSubmenu];
    [v5 addObject:v12];
  }

  v13 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(PUPhotoEditViewController *)self _extensionsSubmenu];
    v21 = 138412290;
    v22 = v14;
    _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_DEFAULT, "PUPhotoEditViewController _produceMoreButtonMenuElementsWithCompletion: _extensionsSubmenu: %@", &v21, 0xCu);
  }

  v15 = [(PUPhotoEditViewController *)self _extensionsSubmenu];
  [v5 addObject:v15];

  v16 = [(PUPhotoEditViewController *)self _undoRedoSubmenu];
  [v5 addObject:v16];

  v17 = [(PUPhotoEditViewController *)self _toolActionsSubmenu];
  v18 = v17;
  if (v17)
  {
    v17 = [v5 addObject:v17];
  }

  if (MEMORY[0x1B8C6D660](v17) && [(PUPhotoEditViewController *)self _shouldDisplayRedEyeUI]&& self->_redEyeButton)
  {
    v19 = [(PUPhotoEditViewController *)self _redEyeAction];
    [v5 addObject:v19];
  }

  if (PFOSVariantHasInternalUI())
  {
    v20 = [(PUPhotoEditViewController *)self _internalActionsSubmenu];
    [v5 addObject:v20];
  }

  v4[2](v4, v5);
}

- (id)_moreButtonMenu
{
  v15[1] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC928];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __44__PUPhotoEditViewController__moreButtonMenu__block_invoke;
  v12 = &unk_1E7B7B388;
  objc_copyWeak(&v13, &location);
  v3 = [v2 elementWithUncachedProvider:&v9];
  v4 = MEMORY[0x1E69DCC60];
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:{@"ellipsis.circle", v9, v10, v11, v12}];
  v15[0] = v3;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v7 = [v4 menuWithTitle:&stru_1F2AC6818 image:v5 identifier:0 options:0 children:v6];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v7;
}

void __44__PUPhotoEditViewController__moreButtonMenu__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _produceMoreButtonMenuElementsWithCompletion:v3];
}

- (void)_presentExtensions
{
  v3 = [(PUPhotoEditViewController *)self photo];
  [(PUEditPluginSession *)self->_pluginSession beginSessionWithAsset:v3 fromViewController:self sourceElement:self->_moreButton includeMarkupInList:[(PUPhotoEditViewController *)self _markupGetsItsOwnButton]^ 1];
}

- (BOOL)_canPresentExtensions
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(PUEditPluginSession *)self->_pluginSession isAvailableExcludingMarkup:self->_markupButton != 0];
  v4 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if ([(PUPhotoEditViewController *)self _enableSpatialMediaEditing])
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v6 = [(PUPhotoEditViewController *)self isSpatialMedia];
    pluginSession = self->_pluginSession;
    if (v6)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v11 = 138413058;
    if (v3)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v12 = v5;
    v13 = 2112;
    v14 = v8;
    v15 = 2114;
    v16 = pluginSession;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "PUPhotoEditViewController _canPresentExtensions: (_enableSpatialMediaEditing: %@) (isSpatialMedia: %@) (_pluginSession: %{public}@) (_pluginSession.isAvailable: %@)", &v11, 0x2Au);
  }

  if (![(PUPhotoEditViewController *)self _enableSpatialMediaEditing]&& [(PUPhotoEditViewController *)self isSpatialMedia])
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)_notifyDelegateSaveFinishedIfReadyWithAsset:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if ([(PUPhotoEditViewController *)self _isWaitingForAssetChange])
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    if ([(PUPhotoEditViewController *)self _isWaitingForSaveCompletion])
    {
      v6 = @"YES";
    }

    *buf = 138412802;
    v13 = v7;
    v14 = 2112;
    v15 = v6;
    v16 = 1024;
    v17 = [(PUPhotoEditViewController *)self saveCompletionDismissalState];
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "_notifyDelegateSaveFinishedIfReadyWithAsset: isWaitingForAssetChange: %@ isWaitingForSaveCompletion: %@   saveCompletionDismissalState: %d", buf, 0x1Cu);
  }

  if (![(PUPhotoEditViewController *)self _isWaitingForAssetChange]&& ![(PUPhotoEditViewController *)self _isWaitingForSaveCompletion]&& [(PUPhotoEditViewController *)self saveCompletionDismissalState]!= 3)
  {
    v8 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    [v8 px_unregisterChangeObserver:self];

    v9 = dispatch_time(0, 100000000);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __73__PUPhotoEditViewController__notifyDelegateSaveFinishedIfReadyWithAsset___block_invoke;
    v10[3] = &unk_1E7B80C38;
    v10[4] = self;
    v11 = v4;
    dispatch_after(v9, MEMORY[0x1E69E96A0], v10);
  }
}

- (void)_cancelInProgressSaveRequest
{
  if (self->_inProgressSaveRequestID)
  {
    v3 = [(PUPhotoEditViewController *)self mediaDestination];
    [v3 cancelRequestWithIdentifier:self->_inProgressSaveRequestID];

    self->_inProgressSaveRequestID = 0;
  }
}

- (BOOL)_isSaveProgressAvailable
{
  if (!self->_inProgressSaveRequestID)
  {
    return 0;
  }

  v2 = self;
  v3 = [(PUPhotoEditViewController *)self mediaDestination];
  LOBYTE(v2) = [v3 supportsProgressForRequestWithIdentifier:v2->_inProgressSaveRequestID];

  return v2;
}

- (void)_updateSaveProgress
{
  if ([(PUPhotoEditViewController *)self _isSaveProgressAvailable])
  {
    v3 = [(PUPhotoEditViewController *)self mediaDestination];
    [v3 progressForRequestWithIdentifier:self->_inProgressSaveRequestID];
    v5 = v4 * 0.95;

    progressIndicatorView = self->_progressIndicatorView;

    [(PUProgressIndicatorView *)progressIndicatorView setCurrentProgress:v5];
  }
}

- (void)_stopMonitoringSaveProgress
{
  saveProgressTimer = self->_saveProgressTimer;
  if (saveProgressTimer)
  {
    dispatch_source_cancel(saveProgressTimer);
    v4 = self->_saveProgressTimer;
    self->_saveProgressTimer = 0;
  }
}

- (void)_startMonitoringSaveProgressIfNeeded
{
  if (self->_saveProgressTimer)
  {
    v2 = PLPhotoEditGetLog();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:

      return;
    }

    LOWORD(buf[0]) = 0;
    v3 = "Attempted to begin monitoring photo edit save progress while monitoring is already in progress";
    v4 = v2;
    v5 = OS_LOG_TYPE_DEFAULT;
LABEL_4:
    _os_log_impl(&dword_1B36F3000, v4, v5, v3, buf, 2u);
    goto LABEL_5;
  }

  if ([(PUPhotoEditViewController *)self _isSaveProgressAvailable])
  {
    v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    saveProgressTimer = self->_saveProgressTimer;
    self->_saveProgressTimer = v7;

    v9 = self->_saveProgressTimer;
    if (!v9)
    {
      v2 = PLPhotoEditGetLog();
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }

      LOWORD(buf[0]) = 0;
      v3 = "Unable to create timer to monitor photo edit save progress";
      v4 = v2;
      v5 = OS_LOG_TYPE_ERROR;
      goto LABEL_4;
    }

    v10 = dispatch_walltime(0, 0);
    dispatch_source_set_timer(v9, v10, 0x1DCD6500uLL, 0x5F5E100uLL);
    objc_initWeak(buf, self);
    v11 = self->_saveProgressTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __65__PUPhotoEditViewController__startMonitoringSaveProgressIfNeeded__block_invoke;
    handler[3] = &unk_1E7B80638;
    objc_copyWeak(&v13, buf);
    dispatch_source_set_event_handler(v11, handler);
    dispatch_resume(self->_saveProgressTimer);
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

void __65__PUPhotoEditViewController__startMonitoringSaveProgressIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSaveProgress];
}

- (void)_stopWaitingForSaveRequestWithAsset:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "[PUPhotoEditViewController _stopWaitingForSaveRequestWithAsset:] - asset: %@", &v7, 0xCu);
  }

  if (v4)
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  self->_inProgressSaveRequestID = 0;
  [(PUPhotoEditViewController *)self _stopMonitoringSaveProgress];
  [(PUPhotoEditViewController *)self setSaveCompletionDismissalState:v6];
  [(PUPhotoEditViewController *)self _notifyDelegateSaveFinishedIfReadyWithAsset:v4];
}

- (void)_startWaitingForSaveRequestID:(int)a3
{
  v5 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "[PUPhotoEditViewController _startWaitingForSaveRequestID:]", v6, 2u);
  }

  [(PUPhotoEditViewController *)self setSaveCompletionDismissalState:1];
  self->_inProgressSaveRequestID = a3;
  [(PUPhotoEditViewController *)self _startMonitoringSaveProgressIfNeeded];
}

- (void)_stopWaitingForAssetChangeWithAsset:(id)a3 success:(BOOL)a4
{
  v4 = a4;
  v11 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(NSMutableSet *)self->_assetsWaitingForLibraryNotification removeObject:v6];
  if (![(NSMutableSet *)self->_assetsWaitingForLibraryNotification count])
  {
    v7 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = v4;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "[PUPhotoEditViewController _stopWaitingForAssetChangeWithAsset:success:] - success: %d", v10, 8u);
    }

    v8 = [(PUPhotoEditViewController *)self assetChangeTimeoutTimer];
    [v8 invalidate];

    [(PUPhotoEditViewController *)self setAssetChangeTimeoutTimer:0];
    if (v4)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    [(PUPhotoEditViewController *)self setAssetChangeDismissalState:v9];
    [(PUPhotoEditViewController *)self _notifyDelegateSaveFinishedIfReadyWithAsset:v6];
  }
}

- (void)_timeoutWaitingForAssetChange
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v4 = [v3 px_areChangesPaused];

  v5 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 67109120;
    v9 = v4;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "PUPhotoEditViewController - PERF - timeout while waiting for an asset change from the library. Are Library Changes Paused: %d", &v8, 8u);
  }

  v6 = [(PUPhotoEditViewController *)self photo];
  [(PUPhotoEditViewController *)self _stopWaitingForAssetChangeWithAsset:v6 success:0];

  v7 = PXAssertGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    v8 = 67109120;
    v9 = v4;
    _os_log_fault_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_FAULT, "Timeout waiting for asset change. Paused: %d", &v8, 8u);
  }
}

- (void)_startTimeoutTimerForAssetChange
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = ([(PUPhotoEditViewController *)self assetChangeDismissalState]& 0xFFFFFFFFFFFFFFFELL) == 2;
  v4 = PLPhotoEditGetLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "PUPhotoEditViewController not starting timeout timer as we are already in a terminal state for asset change notifications", &buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      v6 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
      LODWORD(buf) = 67109120;
      HIDWORD(buf) = [v6 px_areChangesPaused];
      _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "PUPhotoEditViewController starting asset change timeout timer. Are Library Changes Paused: %d", &buf, 8u);
    }

    objc_initWeak(&buf, self);
    v7 = MEMORY[0x1E695DFF0];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__PUPhotoEditViewController__startTimeoutTimerForAssetChange__block_invoke;
    v9[3] = &unk_1E7B7B020;
    objc_copyWeak(&v10, &buf);
    v8 = [v7 scheduledTimerWithTimeInterval:0 repeats:v9 block:30.0];
    [(PUPhotoEditViewController *)self setAssetChangeTimeoutTimer:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&buf);
  }
}

void __61__PUPhotoEditViewController__startTimeoutTimerForAssetChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _timeoutWaitingForAssetChange];
}

- (void)_startWaitingForAssetChange:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    assetsWaitingForLibraryNotification = self->_assetsWaitingForLibraryNotification;
    if (!assetsWaitingForLibraryNotification)
    {
      v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
      v7 = self->_assetsWaitingForLibraryNotification;
      self->_assetsWaitingForLibraryNotification = v6;

      assetsWaitingForLibraryNotification = self->_assetsWaitingForLibraryNotification;
    }

    [(NSMutableSet *)assetsWaitingForLibraryNotification addObject:v4];
    v8 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(NSMutableSet *)self->_assetsWaitingForLibraryNotification count];
      v11 = 138412546;
      v12 = v4;
      v13 = 1024;
      v14 = v9;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "[PUPhotoEditViewController _startWaitingForAssetChange] for %@; now waiting on %d assets", &v11, 0x12u);
    }

    [(PUPhotoEditViewController *)self setAssetChangeDismissalState:1];
    v10 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    [v10 px_registerChangeObserver:self];
  }
}

- (void)_performDiscardAction
{
  v3 = PLPhotoEditGetLog();
  if ([(PUPhotoEditViewController *)self _isWaitingForSaveCompletion]&& os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "User initiated discard while save is in progress", buf, 2u);
  }

  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "ExitEditCancelAction", " enableTelemetry=YES ", buf, 2u);
  }

  [(PUPhotoEditViewController *)self _didStartExitAction];
  stashedSnapshot = self->_stashedSnapshot;
  if (stashedSnapshot)
  {
    v8 = [(PUPhotoEditSnapshot *)stashedSnapshot adjustmentData];

    if (v8)
    {
      v9 = self->_stashedSnapshot;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __50__PUPhotoEditViewController__performDiscardAction__block_invoke;
      v12[3] = &unk_1E7B7B360;
      v14 = self;
      v15 = v4;
      v13 = v6;
      [(PUPhotoEditViewController *)self _restoreSnapshot:v9 withCompletionHandler:v12];
    }

    else
    {
      [(PUPhotoEditViewController *)self _performRevertAction];
    }
  }

  else
  {
    [(PUPhotoEditViewController *)self didFinishWithChanges:0];
    v10 = v6;
    v11 = v10;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v11, OS_SIGNPOST_INTERVAL_END, v4, "ExitEditCancelAction", " enableTelemetry=YES ", buf, 2u);
    }

    [(PUPhotoEditViewController *)self _didEndExitActionWithSessionKeys:0];
  }
}

void __50__PUPhotoEditViewController__performDiscardAction__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v7;
  v9 = *(a1 + 48);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v8, OS_SIGNPOST_EVENT, v9, "ExitEditCancelAction", "Restoring with stashed snapshot", buf, 2u);
  }

  if (v6)
  {
    v10 = PLUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_ERROR, "error restoring snapshot: %@", buf, 0xCu);
    }
  }

  v11 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__PUPhotoEditViewController__performDiscardAction__block_invoke_775;
  block[3] = &unk_1E7B7F350;
  v13 = *(a1 + 32);
  v12 = v13.i64[0];
  v15 = vextq_s8(v13, v13, 8uLL);
  v16 = *(a1 + 48);
  dispatch_after(v11, MEMORY[0x1E69E96A0], block);
}

uint64_t __50__PUPhotoEditViewController__performDiscardAction__block_invoke_775(uint64_t a1)
{
  [*(a1 + 32) didFinishWithChanges:0];
  v2 = *(a1 + 40);
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v3, OS_SIGNPOST_INTERVAL_END, v4, "ExitEditCancelAction", " enableTelemetry=YES ", v6, 2u);
  }

  return [*(a1 + 32) _didEndExitActionWithSessionKeys:0];
}

- (void)_performRevertAction
{
  v3 = PLPhotoEditGetLog();
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "ExitEditRevertAction", " enableTelemetry=YES ", buf, 2u);
  }

  v7 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "PERF - reverting asset", buf, 2u);
  }

  [(PUPhotoEditViewController *)self _didStartExitAction];
  [(PUPhotoEditViewController *)self setRevertingToOriginal:1];
  v8 = [(PUPhotoEditViewController *)self editSourceContentEditingInput];
  self->_downloadingForRevert = [v8 baseVersion] != 0;

  [(PUPhotoEditViewController *)self updateProgressIndicatorAnimated:1];
  v9 = MEMORY[0x1E69BDEF0];
  v10 = [(PUPhotoEditViewController *)self uneditedComposition];
  v11 = [v9 newCompositionControllerWithComposition:v10];

  v12 = [(PUPhotoEditViewController *)self compositionController];
  v13 = [v12 composition];

  if (PFOSVariantHasInternalUI())
  {
    v14 = [PUPhotoEditDiagnosticsManager diagnosticsManagerWithActionType:2 delegate:self];
    diagnosticsManager = self->_diagnosticsManager;
    self->_diagnosticsManager = v14;

    [(PUPhotoEditDiagnosticsManager *)self->_diagnosticsManager beginMonitoringForTimeInterval:10.0];
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __49__PUPhotoEditViewController__performRevertAction__block_invoke;
  v19[3] = &unk_1E7B7B338;
  v19[4] = self;
  v20 = v11;
  v21 = v13;
  v22 = v6;
  v23 = v4;
  v16 = v6;
  v17 = v13;
  v18 = v11;
  [(PUPhotoEditViewController *)self asShotCompositionController:v19];
}

void __49__PUPhotoEditViewController__performRevertAction__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    objc_initWeak(location, *(a1 + 32));
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__PUPhotoEditViewController__performRevertAction__block_invoke_760;
    aBlock[3] = &unk_1E7B7B2C0;
    objc_copyWeak(v33, location);
    v28 = *(a1 + 40);
    v7 = v5;
    v29 = v7;
    v8 = *(a1 + 48);
    v9 = *(a1 + 32);
    v30 = v8;
    v31 = v9;
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v32 = v10;
    v33[1] = v11;
    v12 = _Block_copy(aBlock);
    *(*(a1 + 32) + 1584) = 0;
    [*(a1 + 32) updateProgressIndicatorAnimated:1];
    v13 = [v7 composition];
    [*(a1 + 32) setOriginalComposition:v13];

    v14 = *(a1 + 32);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __49__PUPhotoEditViewController__performRevertAction__block_invoke_774;
    v22[3] = &unk_1E7B7B310;
    v15 = v7;
    v16 = *(a1 + 32);
    v23 = v15;
    v24 = v16;
    v25 = v6;
    v17 = v12;
    v26 = v17;
    v18 = [v14 _revertToEmptyCompositionWithCompletionHandler:v22];
    v19 = *(a1 + 32);
    v20 = [v19 photo];
    [v19 _startWaitingForAssetChange:v20];

    [*(a1 + 32) _startWaitingForSaveRequestID:v18];
    objc_destroyWeak(v33);
    objc_destroyWeak(location);
  }

  else
  {
    v21 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_1B36F3000, v21, OS_LOG_TYPE_DEFAULT, "_performRevertAction: contentEditingInput did not come back from requestContentEditingInputWithOptions", location, 2u);
    }

    [*(a1 + 32) setRevertingToOriginal:0];
    [*(a1 + 32) updateProgressIndicatorAnimated:1];
  }
}

void __49__PUPhotoEditViewController__performRevertAction__block_invoke_760(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = PXLocalizedString();
  [WeakRetained _commitEditSessionActionWithAsset:v6 initialCompositionController:v8 savedCompositionController:v9 localizedActionName:v10];

  [WeakRetained _startTimeoutTimerForAssetChange];
  [WeakRetained _didEndExitActionWithSessionKeys:0 initialComposition:*(a1 + 48)];
  [WeakRetained _stopWaitingForSaveRequestWithAsset:v6];

  [*(*(a1 + 56) + 1800) endMonitoring];
  v11 = *(a1 + 56);
  v12 = *(v11 + 1800);
  *(v11 + 1800) = 0;

  [WeakRetained setRevertingToOriginal:0];
  [WeakRetained updateProgressIndicatorAnimated:1];
  if (!v6)
  {
    v13 = PLUIGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v5;
      _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_ERROR, "error reverting to original: %@", buf, 0xCu);
    }

    v14 = [WeakRetained photo];
    [WeakRetained _stopWaitingForAssetChangeWithAsset:v14 success:0];

    if ([WeakRetained isStandardVideo])
    {
      v15 = @"VIDEOEDIT_EDIT_REVERT_TO_ORIGINAL_FAILED_TITLE";
    }

    else
    {
      v15 = @"PHOTOEDIT_EDIT_REVERT_TO_ORIGINAL_FAILED_TITLE";
    }

    v16 = PULocalizedString(v15);
    if (MEMORY[0x1B8C6C170]())
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\n[Internal Only] %@", v16, v5];

      v16 = v17;
    }

    v18 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v16 message:0 preferredStyle:1];
    v19 = MEMORY[0x1E69DC648];
    v20 = PULocalizedString(@"OK");
    v21 = [v19 actionWithTitle:v20 style:0 handler:0];

    [v18 addAction:v21];
    [WeakRetained presentViewController:v18 animated:1 completion:0];
  }

  v22 = *(a1 + 64);
  v23 = v22;
  v24 = *(a1 + 80);
  if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v23, OS_SIGNPOST_INTERVAL_END, v24, "ExitEditRevertAction", " enableTelemetry=YES ", buf, 2u);
  }
}

void __49__PUPhotoEditViewController__performRevertAction__block_invoke_774(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([MEMORY[0x1E69BE360] isIdentityCompositionController:*(a1 + 32)])
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49__PUPhotoEditViewController__performRevertAction__block_invoke_2;
    v11[3] = &unk_1E7B7B2E8;
    v9 = *(a1 + 48);
    v12 = *(a1 + 56);
    v10 = [v7 _saveRevertedComposition:v8 contentEditingInput:v9 withCompletionHandler:v11];
    if (([*(a1 + 40) _isSaveProgressAvailable] & 1) == 0)
    {
      [*(a1 + 40) _startWaitingForSaveRequestID:v10];
      [*(a1 + 40) updateProgressIndicatorAnimated:1];
    }
  }
}

- (void)asShotCompositionController:(id)a3
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E6978798]);
  [v6 setResultHandlerQueue:MEMORY[0x1E69E96A0]];
  [v6 setNetworkAccessAllowed:1];
  v7 = [(PUPhotoEditViewController *)self photo];
  [v6 setOriginalChoice:{objc_msgSend(v7, "originalResourceChoice")}];

  [v6 setForceRunAsUnadjustedAsset:1];
  [v6 setForceReturnFullLivePhoto:1];
  [v6 setSkipDisplaySizeImage:1];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__PUPhotoEditViewController_asShotCompositionController___block_invoke;
  v14[3] = &unk_1E7B7B270;
  v14[4] = self;
  [v6 setProgressHandler:v14];
  objc_initWeak(&location, self);
  v8 = [(PUPhotoEditViewController *)self photo];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__PUPhotoEditViewController_asShotCompositionController___block_invoke_2;
  v10[3] = &unk_1E7B7B298;
  objc_copyWeak(v12, &location);
  v9 = v5;
  v12[1] = a2;
  v10[4] = self;
  v11 = v9;
  [v8 requestContentEditingInputWithOptions:v6 completionHandler:v10];

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

void __57__PUPhotoEditViewController_asShotCompositionController___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));

  if (WeakRetained)
  {
    if (v3)
    {
      v5 = objc_loadWeakRetained((a1 + 48));
      v21 = 0;
      v6 = [MEMORY[0x1E69C4300] editSourceForContentEditingInput:v3 useEmbeddedPreview:0 error:&v21];
      v7 = v21;
      if (v6)
      {
        v20 = 0;
        v8 = [MEMORY[0x1E69C4300] compositionControllerForContentEditingInput:v3 asShot:1 source:v6 error:&v20];
        v9 = v20;
        if (v8)
        {
          v10 = objc_alloc(MEMORY[0x1E69C0718]);
          v11 = [v3 fullSizeImageURL];
          v12 = [v10 initWithMediaURL:v11 timeZoneLookup:0];

          v13 = MEMORY[0x1E69C4320];
          v14 = [v5 compositionController];
          [v3 livePhoto];
          v19 = v5;
          v15 = v7;
          v17 = v16 = v9;
          v18 = [v13 repairedAsShotCompositionController:v8 forCurrentCompositionController:v14 isLivePhoto:v17 != 0 metadata:v12];

          v9 = v16;
          v7 = v15;
          v5 = v19;
        }

        else
        {
          v18 = 0;
        }

        (*(*(a1 + 40) + 16))();
      }

      else
      {
        (*(*(a1 + 40) + 16))();
      }
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

- (int)_revertToEmptyCompositionWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotoEditViewController *)self uneditedComposition];
  v6 = [MEMORY[0x1E69BDEF0] newCompositionControllerWithComposition:v5];
  v7 = [(PUPhotoEditViewController *)self workImageVersion];
  v8 = [(PUPhotoEditViewController *)self photo];
  v9 = [v8 isAdjusted];

  if ((v9 & 1) == 0 && ([MEMORY[0x1E69BE360] isIdentityCompositionController:v6] ? (v10 = v7 == 1) : (v10 = 0), v10))
  {
    v15 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_DEFAULT, "[PUPhotoEditViewController _revertToEmptyCompositionWithCompletionHandler:]: resetting in memory", buf, 2u);
    }

    [(PUPhotoEditViewController *)self _resetModelAndBaseImagesToWorkImageVersion:1];
    if (v4)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __76__PUPhotoEditViewController__revertToEmptyCompositionWithCompletionHandler___block_invoke_758;
      v17[3] = &unk_1E7B80B48;
      v17[4] = self;
      v18 = v4;
      dispatch_async(MEMORY[0x1E69E96A0], v17);
    }

    v14 = 0;
  }

  else
  {
    v11 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEFAULT, "[PUPhotoEditViewController _revertToEmptyCompositionWithCompletionHandler:]: using [PEMediaDestination revertEditsForAsset:completionHandler:] to revert", buf, 2u);
    }

    v12 = [(PUPhotoEditViewController *)self mediaDestination];
    v13 = [(PUPhotoEditViewController *)self photo];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __76__PUPhotoEditViewController__revertToEmptyCompositionWithCompletionHandler___block_invoke;
    v19[3] = &unk_1E7B7B248;
    v19[4] = self;
    v20 = v4;
    v14 = [v12 revertEditsForAsset:v13 completionHandler:v19];
  }

  return v14;
}

void __76__PUPhotoEditViewController__revertToEmptyCompositionWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v6;
  v9 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEFAULT, "[PEMediaDestination revertEditsForAsset:completionHandler:] complete; saved asset: %@", &v11, 0xCu);
  }

  if (v8)
  {
    objc_storeStrong((*(a1 + 32) + 1864), a2);
    [*(a1 + 32) _resetModelAndBaseImagesToWorkImageVersion:1];
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v8, v7);
  }
}

void __76__PUPhotoEditViewController__revertToEmptyCompositionWithCompletionHandler___block_invoke_758(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) photo];
  (*(v1 + 16))(v1, v2, 0);
}

- (int)_saveRevertedComposition:(id)a3 contentEditingInput:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(PUPhotoEditViewController *)self _newOutputForContentEditingInput:a4 compositionController:v9];
  v11 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEFAULT, "[PUPhotoEditViewController _saveRevertedComposition:contentEditingInput:withCompletionHandler:]: using [PEMediaDestination saveInternalEditsForAsset:usingCompositionController:contentEditingOutput:version:livePhotoEditModel:useRawIfAvailable:completionHandler:] to revert", buf, 2u);
  }

  v12 = [(PUPhotoEditViewController *)self mediaDestination];
  v13 = [(PUPhotoEditViewController *)self photo];
  v14 = [(PUPhotoEditViewController *)self livePhotoModel];
  v15 = [v14 editingVisibility];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __96__PUPhotoEditViewController__saveRevertedComposition_contentEditingInput_withCompletionHandler___block_invoke;
  v21 = &unk_1E7B7B248;
  v22 = self;
  v23 = v8;
  v16 = v8;
  LODWORD(v15) = [v12 saveInternalEditsForAsset:v13 usingCompositionController:v9 contentEditingOutput:v10 version:1 livePhotoState:v15 completionHandler:&v18];

  [(PUPhotoEditViewController *)self updateProgressIndicatorAnimated:1, v18, v19, v20, v21, v22];
  return v15;
}

void __96__PUPhotoEditViewController__saveRevertedComposition_contentEditingInput_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v6;
  v9 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEFAULT, "[PEMediaDestination saveInternalEditsForAsset:usingCompositionController:contentEditingOutput:version:livePhotoEditModel:useRawIfAvailable:completionHandler:] complete; savedAsset: %@", &v11, 0xCu);
  }

  if (v8)
  {
    objc_storeStrong((*(a1 + 32) + 1864), a2);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v8, v7);
  }

  [*(a1 + 32) updateProgressIndicatorAnimated:1];
}

- (void)_handleRevertButton:(id)a3
{
  v4 = [(PUPhotoEditViewController *)self isStandardVideo];
  v5 = @"PHOTOEDIT_CONFIRM_REVERT_MESSAGE";
  if (v4)
  {
    v5 = @"VIDEOEDIT_CONFIRM_REVERT_MESSAGE";
  }

  v6 = v5;
  v7 = [(PUPhotoEditViewController *)self editSourceContentEditingInput];
  v8 = [v7 originalAdjustmentData];

  if (v8 && ([MEMORY[0x1E69BDE08] locallySupportedFormatVersions], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "formatVersion"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "indexOfObject:", v10), v10, v9, v11 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v12 = @"PHOTOEDIT_UNSUPPORTED_REVERT_WARNING";
    if (v4)
    {
      v12 = @"VIDEOEDIT_UNSUPPORTED_REVERT_WARNING";
    }

    v13 = v12;

    v14 = @"PHOTOEDIT_IGNORE_REVERT_WARNING";
    v6 = v13;
  }

  else
  {
    v14 = @"PHOTOEDIT_CONFIRM_REVERT_BUTTON";
  }

  v15 = PULocalizedString(v6);
  v16 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:v15 preferredStyle:0];
  v17 = MEMORY[0x1E69DC648];
  v18 = PULocalizedString(v14);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __49__PUPhotoEditViewController__handleRevertButton___block_invoke;
  v26[3] = &unk_1E7B7E148;
  v26[4] = self;
  v19 = [v17 actionWithTitle:v18 style:2 handler:v26];
  [v16 addAction:v19];

  v20 = MEMORY[0x1E69DC648];
  v21 = PULocalizedString(@"CANCEL");
  v22 = [v20 actionWithTitle:v21 style:1 handler:0];
  [v16 addAction:v22];

  v23 = [v16 popoverPresentationController];
  [v23 setDelegate:self];
  [v23 setPermittedArrowDirections:15];
  p_mainActionButton = &self->_mainActionButton;
  v25 = [(PUPhotoEditNotchButton *)self->_mainActionButton window];
  if (!v25)
  {
    p_mainActionButton = &self->_mainActionButtonItem;
  }

  [v23 setSourceItem:*p_mainActionButton];

  [(PUPhotoEditViewController *)self setRevertConfirmationAlert:v16];
  [(PUPhotoEditViewController *)self presentViewController:v16 animated:1 completion:0];
}

uint64_t __49__PUPhotoEditViewController__handleRevertButton___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) aggregateSession];
  [v2 finishSessionWithEnd:1];

  v3 = [*(a1 + 32) exitEditEventBuilder];
  [v3 setSessionEndReason:1];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [*(a1 + 32) _allTools];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8) prepareForSave:*(*(&v10 + 1) + 8 * v8) == *(*(a1 + 32) + 1016)];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return [*(a1 + 32) _performRevertAction];
}

- (void)_handleDoneAction:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotoEditNotchButton *)self->_mainActionButton menu];

  if (v5)
  {
    objc_initWeak(&location, self);
    v6 = MEMORY[0x1E69DC650];
    v7 = PULocalizedString(@"EDITED_TRIM_TITLE");
    v8 = PULocalizedString(@"EDITED_TRIM_MESSAGE");
    v9 = [v6 alertControllerWithTitle:v7 message:v8 preferredStyle:1];

    v10 = MEMORY[0x1E69DC648];
    v11 = PULocalizedString(@"EDITED_TRIM_SAVE_VIDEO");
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __47__PUPhotoEditViewController__handleDoneAction___block_invoke;
    v23[3] = &unk_1E7B7FC80;
    objc_copyWeak(&v24, &location);
    v12 = [v10 actionWithTitle:v11 style:0 handler:v23];
    [v9 addAction:v12];

    v13 = MEMORY[0x1E69DC648];
    v14 = PULocalizedString(@"EDITED_TRIM_SAVE_AS_NEW_CLIP");
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __47__PUPhotoEditViewController__handleDoneAction___block_invoke_2;
    v21[3] = &unk_1E7B7FC80;
    objc_copyWeak(&v22, &location);
    v15 = [v13 actionWithTitle:v14 style:0 handler:v21];
    [v9 addAction:v15];

    v16 = MEMORY[0x1E69DC648];
    v17 = PULocalizedString(@"EDITED_TRIM_CANCEL");
    v18 = [v16 actionWithTitle:v17 style:1 handler:0];
    [v9 addAction:v18];

    v19 = [v9 popoverPresentationController];
    v20 = v19;
    if (self->_mainActionButton == v4)
    {
      [v19 setSourceView:?];
    }

    else
    {
      [v19 setSourceItem:self->_mainActionButtonItem];
    }

    [(PUPhotoEditViewController *)self presentViewController:v9 animated:1 completion:0];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);

    objc_destroyWeak(&location);
  }

  else
  {
    [(PUPhotoEditViewController *)self _handleDoneButton:v4];
  }
}

void __47__PUPhotoEditViewController__handleDoneAction___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSaveAction:0];
}

void __47__PUPhotoEditViewController__handleDoneAction___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSaveAction:1];
}

- (void)_handleDoneButton:(id)a3
{
  if (-[PUPhotoEditViewController isSpatialMedia](self, "isSpatialMedia", a3) && (-[PUPhotoEditViewController photo](self, "photo"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 mediaType], v4, v5 != 2))
  {
    v6 = [(PUPhotoEditViewController *)self photo];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = [v7 spatialMediaProperties];
    [v8 spatialMediaType];

    v9 = MEMORY[0x1E69DC650];
    v10 = PELocalizedString();
    v11 = PELocalizedString();
    v12 = [v9 alertControllerWithTitle:v10 message:v11 preferredStyle:1];

    v13 = MEMORY[0x1E69DC648];
    v14 = PELocalizedString();
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __47__PUPhotoEditViewController__handleDoneButton___block_invoke;
    v23[3] = &unk_1E7B7E148;
    v23[4] = self;
    v15 = [v13 actionWithTitle:v14 style:0 handler:v23];
    [v12 addAction:v15];

    v16 = MEMORY[0x1E69DC648];
    v17 = PELocalizedString();
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __47__PUPhotoEditViewController__handleDoneButton___block_invoke_2;
    v22[3] = &unk_1E7B7E148;
    v22[4] = self;
    v18 = [v16 actionWithTitle:v17 style:0 handler:v22];
    [v12 addAction:v18];

    v19 = MEMORY[0x1E69DC648];
    v20 = PULocalizedString(@"CANCEL");
    v21 = [v19 actionWithTitle:v20 style:1 handler:&__block_literal_global_726_58728];
    [v12 addAction:v21];

    [(PUPhotoEditViewController *)self presentViewController:v12 animated:1 completion:0];
  }

  else
  {

    [(PUPhotoEditViewController *)self _handleSaveAction:0];
  }
}

- (void)_commitSaveAsCopyWithAsset:(id)a3
{
  v10 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_alloc(MEMORY[0x1E69C32F0]);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v4 initWithSourceIdentifier:v6 variant:@"SaveAsCopy" assetCount:1 userConfirmation:4];

    v8 = [objc_alloc(MEMORY[0x1E69C3968]) initWithAsset:v10 record:v7];
    executedSessionAction = self->_executedSessionAction;
    self->_executedSessionAction = v8;
  }
}

- (void)_commitEditSessionActionWithAsset:(id)a3 initialCompositionController:(id)a4 savedCompositionController:(id)a5 localizedActionName:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = objc_alloc_init(MEMORY[0x1E69C3308]);
    v15 = objc_alloc_init(MEMORY[0x1E696AE38]);
    [v14 setProgress:v15];

    [v14 setShowCheckmarkOnCompletion:1];
    [v14 setShouldAutoDisplay:1];
    [v14 setShouldUseProgressText:1];
    v16 = [MEMORY[0x1E69C4220] sharedPresetManager];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __139__PUPhotoEditViewController__commitEditSessionActionWithAsset_initialCompositionController_savedCompositionController_localizedActionName___block_invoke;
    v34[3] = &unk_1E7B80DD0;
    v35 = v16;
    v29 = v16;
    [v14 setCancellationHandler:v34];
    v17 = self;
    v31 = v11;
    v18 = [objc_alloc(MEMORY[0x1E69C4218]) initWithCompositionController:v11 asset:v10];
    v30 = v12;
    v19 = [objc_alloc(MEMORY[0x1E69C4218]) initWithCompositionController:v12 asset:v10];
    v20 = objc_alloc(MEMORY[0x1E69C3540]);
    v21 = [MEMORY[0x1E69C4220] sharedPresetManager];
    v22 = [v14 progress];
    v23 = [MEMORY[0x1E69C4558] defaultManager];
    v24 = [v20 initWithPresetManager:v21 asset:v10 sourcePreset:v18 targetPreset:v19 syncProgress:v22 asyncLoadingStatusManager:v23];

    v25 = +[PUPhotoEditProtoSettings sharedInstance];
    -[PXAction setAllowSynchronousRendering:](v24, "setAllowSynchronousRendering:", [v25 allowSynchronousBatchRendering]);

    [(PXAction *)v24 setLocalizedActionName:v13];
    executedSessionAction = v17->_executedSessionAction;
    v17->_executedSessionAction = v24;
    v27 = v24;

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __139__PUPhotoEditViewController__commitEditSessionActionWithAsset_initialCompositionController_savedCompositionController_localizedActionName___block_invoke_2;
    v32[3] = &unk_1E7B7B220;
    v33 = v14;
    v28 = v14;
    [(PXAction *)v27 setCompletionHandler:v32];

    v12 = v30;
    v11 = v31;
  }
}

- (void)_handleSaveAction:(int64_t)a3
{
  v113 = *MEMORY[0x1E69E9840];
  v5 = [(PUPhotoEditViewController *)self _hasUnsavedChanges];
  v6 = v5;
  if (a3 || !v5 || [(PUPhotoEditViewController *)self workImageVersion]!= 1)
  {
    goto LABEL_8;
  }

  v7 = [(PUPhotoEditViewController *)self _canCurrentCompositionControllerBeReverted];
  v8 = [(PUPhotoEditViewController *)self livePhotoModel];
  if (v8)
  {
    v9 = [(PUPhotoEditViewController *)self livePhotoModel];
    v10 = [v9 isVideoEnabled] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  if ((v7 | v10))
  {
LABEL_8:
    v11 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a3;
      _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEFAULT, "PERF - saving asset changes; save action: %ld", &buf, 0xCu);
    }

    v12 = [(PUPhotoEditViewController *)self photo];
    v13 = [v12 isContentAdjustmentAllowed];

    v14 = [(PUPhotoEditViewController *)self workImageVersion];
    v75 = [(PUPhotoEditViewController *)self compositionController];
    v74 = [(PUPhotoEditViewController *)self uneditedComposition];
    v73 = [MEMORY[0x1E69BDEF0] newCompositionControllerWithComposition:v74];
    v15 = +[PUPhotoEditProtoSettings sharedInstance];
    v16 = [v15 alwaysShowDoneButton];

    if (self->_stashedSnapshot)
    {
      v17 = [(PUPhotoEditViewController *)self aggregateSession];
      [v17 setPluginSaved:1];
    }

    v18 = PLPhotoEditGetLog();
    v19 = os_signpost_id_generate(v18);
    v20 = v18;
    v21 = v20;
    spid = v19;
    v22 = v19 - 1;
    if (v22 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v21, OS_SIGNPOST_INTERVAL_BEGIN, spid, "ExitEditDoneAction", " enableTelemetry=YES ", &buf, 2u);
    }

    [(PUPhotoEditViewController *)self _didStartExitAction];
    if ((v13 & (v16 | v6)) != 1)
    {
      if (self->_stashedSnapshot)
      {
        v45 = [(PUPhotoEditViewController *)self aggregateSession];
        v39 = [v45 finishSessionWithEnd:0 newCompositionController:0 oldCompositionController:0];
      }

      else
      {
        v39 = 0;
      }

      [(PUPhotoEditViewController *)self didFinishWithChanges:0];
      v46 = v21;
      v47 = v46;
      if (v22 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v46))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_1B36F3000, v47, OS_SIGNPOST_INTERVAL_END, spid, "ExitEditDoneAction", " enableTelemetry=YES ", &buf, 2u);
      }

      [(PUPhotoEditViewController *)self _didEndExitActionWithSessionKeys:v39];
      goto LABEL_58;
    }

    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v23 = [(PUPhotoEditViewController *)self _allTools];
    v24 = [v23 countByEnumeratingWithState:&v103 objects:v112 count:16];
    if (v24)
    {
      v25 = *v104;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v104 != v25)
          {
            objc_enumerationMutation(v23);
          }

          [*(*(&v103 + 1) + 8 * i) prepareForSave:*(*(&v103 + 1) + 8 * i) == self->_currentTool];
        }

        v24 = [v23 countByEnumeratingWithState:&v103 objects:v112 count:16];
      }

      while (v24);
    }

    v27 = [v75 smartToneAdjustmentController];
    v28 = [v27 enabled];

    if (v28)
    {
      v29 = *MEMORY[0x1E69BE178];
      v100[0] = MEMORY[0x1E69E9820];
      v100[1] = 3221225472;
      v100[2] = __47__PUPhotoEditViewController__handleSaveAction___block_invoke;
      v100[3] = &unk_1E7B7B098;
      v101 = v75;
      v102 = self;
      [v101 modifyAdjustmentWithKey:v29 modificationBlock:v100];
    }

    if ([(PUPhotoEditViewController *)self isStandardVideo])
    {
      v30 = [(PUPhotoEditViewController *)self mediaView];
      v31 = [v30 player];
      [v31 pause];
    }

    v32 = [(PUPhotoEditViewController *)self aggregateSession];
    v33 = [v32 finishSessionWithEnd:0 newCompositionController:v75 oldCompositionController:v73];

    v34 = [(PUPhotoEditViewController *)self exitEditEventBuilder];
    [v34 setSessionEndReason:0];

    if (a3 == 2)
    {
      v35 = 1;
    }

    else
    {
      v35 = 2 * (a3 == 1);
    }

    v36 = [(PUPhotoEditViewController *)self exitEditEventBuilder];
    [v36 setSaveActionType:v35];

    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __47__PUPhotoEditViewController__handleSaveAction___block_invoke_3;
    aBlock[3] = &unk_1E7B7B0E8;
    objc_copyWeak(v98, &location);
    v93 = v73;
    v37 = v75;
    v94 = v37;
    v95 = self;
    v98[1] = v14;
    v38 = v21;
    v96 = v38;
    v98[2] = spid;
    v39 = v33;
    v97 = v39;
    v40 = _Block_copy(aBlock);
    if (a3 == 2)
    {
      if ([(PUPhotoEditViewController *)self isStandardVideo])
      {
        v53 = [(PUPhotoEditViewController *)self mediaView];
        v54 = [v53 _didReleaseAVObjects];

        if ((v54 & 1) == 0)
        {
          v55 = [(PUPhotoEditViewController *)self mediaView];
          [v55 _releaseAVObjects];

          v56 = [(PUPhotoEditMediaToolController *)self->_mediaToolController trimController];
          [v56 releaseAVObjects];
        }
      }

      v57 = [(PUPhotoEditViewController *)self photo];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v68 = [MEMORY[0x1E696AAA8] currentHandler];
        [v68 handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:5389 description:@"PUPhotoEditSaveActionBurnInTrimToNewClip: photo must be PHAsset"];
      }

      v42 = [(PUPhotoEditViewController *)self photo];
      [(PUPhotoEditViewController *)self setBurningInTrim:1];
      [(PUPhotoEditViewController *)self updateProgressIndicatorAnimated:1];
      v59 = [(PUPhotoEditViewController *)self originalComposition];
      if (v59)
      {
        v71 = [MEMORY[0x1E69BDEF0] newCompositionControllerWithComposition:v59];
        v60 = [v37 source];
        [v71 setSource:v60 mediaType:{objc_msgSend(v37, "mediaType")}];
      }

      else
      {
        v71 = 0;
      }

      v69 = v59;
      v61 = v40;
      v62 = [(PUPhotoEditMediaToolController *)self->_mediaToolController cinematographyScript];
      v63 = MEMORY[0x1E69C4338];
      v64 = MEMORY[0x1E69E96A0];
      v65 = MEMORY[0x1E69E96A0];
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __47__PUPhotoEditViewController__handleSaveAction___block_invoke_696;
      v76[3] = &unk_1E7B7B1F8;
      v76[4] = self;
      v77 = v38;
      v80 = spid;
      v78 = v39;
      v79 = v61;
      v66 = [v63 burnInTrimToNewAsset:v42 compositionController:v37 asShotCompositionController:v71 cinematographyScript:v62 queue:v64 completion:v76];

      v40 = v61;
    }

    else if (a3 == 1)
    {
      v49 = [(PUPhotoEditViewController *)self photo];
      objc_opt_class();
      v50 = objc_opt_isKindOfClass();

      if ((v50 & 1) == 0)
      {
        v67 = [MEMORY[0x1E696AAA8] currentHandler];
        [v67 handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:5300 description:@"PUPhotoEditSaveActionSaveAsDuplicate: photo must be PHAsset"];
      }

      v51 = [(PUPhotoEditViewController *)self photo];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v108 = 0x3032000000;
      v109 = __Block_byref_object_copy__58504;
      v110 = __Block_byref_object_dispose__58505;
      v111 = 0;
      v52 = [v51 photoLibrary];
      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 3221225472;
      v89[2] = __47__PUPhotoEditViewController__handleSaveAction___block_invoke_675;
      v89[3] = &unk_1E7B7FFC0;
      v89[4] = self;
      v90 = v51;
      p_buf = &buf;
      v81[0] = MEMORY[0x1E69E9820];
      v81[1] = 3221225472;
      v81[2] = __47__PUPhotoEditViewController__handleSaveAction___block_invoke_2_678;
      v81[3] = &unk_1E7B7B1D0;
      v81[4] = self;
      v82 = v38;
      v88 = spid;
      v83 = v39;
      v87 = &buf;
      v42 = v90;
      v84 = v42;
      v85 = v37;
      v86 = v40;
      [v52 performChanges:v89 completionHandler:v81];

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      if (a3)
      {
LABEL_57:

        objc_destroyWeak(v98);
        objc_destroyWeak(&location);
LABEL_58:

        return;
      }

      v41 = [(PUPhotoEditViewController *)self editSourceContentEditingInput];
      v42 = [(PUPhotoEditViewController *)self _newOutputForContentEditingInput:v41 compositionController:v37];

      v43 = [(PUPhotoEditViewController *)self photo];
      v44 = [(PUPhotoEditViewController *)self editSourceContentEditingInput];
      (*(v40 + 2))(v40, v43, v37, v44, v42, 0);
    }

    goto LABEL_57;
  }

  v48 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1B36F3000, v48, OS_LOG_TYPE_DEFAULT, "Saving edits via revert to avoid render", &buf, 2u);
  }

  [(PUPhotoEditViewController *)self _performRevertAction];
}

uint64_t __47__PUPhotoEditViewController__handleSaveAction___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x1E69BE178];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__PUPhotoEditViewController__handleSaveAction___block_invoke_2;
  v4[3] = &unk_1E7B7B070;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [v2 modifyAdjustmentWithKey:v1 modificationBlock:v4];
}

void __47__PUPhotoEditViewController__handleSaveAction___block_invoke_3(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, int a6)
{
  v10 = a2;
  v11 = a5;
  v12 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v14 = WeakRetained;
  if (a6)
  {
    [WeakRetained _commitSaveAsCopyWithAsset:v10];
  }

  else
  {
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17 = PULocalizedString(@"EDIT_BUTTON_TITLE");
    [v14 _commitEditSessionActionWithAsset:v10 initialCompositionController:v15 savedCompositionController:v16 localizedActionName:v17];
  }

  v18 = [v14 mediaView];
  if (([v11 isAsyncAdjustment] & 1) == 0 && objc_msgSend(*(a1 + 48), "isStandardVideo") && (objc_msgSend(v18, "_didReleaseAVObjects") & 1) == 0)
  {
    [v18 _releaseAVObjects];
    v19 = [*(*(a1 + 48) + 1640) trimController];
    [v19 releaseAVObjects];
  }

  Current = CFAbsoluteTimeGetCurrent();
  v21 = [v14 mediaDestination];
  v22 = *(a1 + 80);
  v23 = [*(a1 + 48) livePhotoModel];
  v24 = [v23 editingVisibility];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __47__PUPhotoEditViewController__handleSaveAction___block_invoke_4;
  v33[3] = &unk_1E7B7B0C0;
  v25 = *(a1 + 48);
  v33[4] = v14;
  v33[5] = v25;
  v37 = Current;
  v26 = v10;
  v34 = v26;
  v27 = *(a1 + 56);
  v28 = *(a1 + 88);
  v35 = v27;
  v38 = v28;
  v36 = *(a1 + 64);
  v29 = [v21 saveInternalEditsForAsset:v26 usingCompositionController:v12 contentEditingOutput:v11 version:v22 livePhotoState:v24 completionHandler:v33];

  *(*(a1 + 48) + 1564) = [v11 isAsyncAdjustment];
  [v14 _startWaitingForSaveRequestID:v29];
  [v14 _startWaitingForAssetChange:v26];
  [v14 updateProgressIndicatorAnimated:1];
  if (PFOSVariantHasInternalUI())
  {
    v30 = [PUPhotoEditDiagnosticsManager diagnosticsManagerWithActionType:1 delegate:*(a1 + 48)];
    v31 = *(a1 + 48);
    v32 = *(v31 + 1800);
    *(v31 + 1800) = v30;

    [*(*(a1 + 48) + 1800) beginMonitoringForTimeInterval:10.0];
  }
}

void __47__PUPhotoEditViewController__handleSaveAction___block_invoke_675(uint64_t a1)
{
  v7 = objc_alloc_init(MEMORY[0x1E6978690]);
  if ([*(a1 + 32) workImageVersion] == 1 && objc_msgSend(*(a1 + 32), "isStandardVideo"))
  {
    [v7 setCopyOriginal:1];
  }

  v2 = [MEMORY[0x1E6978698] creationRequestForAssetCopyFromAsset:*(a1 + 40) options:v7];
  v3 = [v2 placeholderForCreatedAsset];
  v4 = [v3 localIdentifier];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __47__PUPhotoEditViewController__handleSaveAction___block_invoke_2_678(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__PUPhotoEditViewController__handleSaveAction___block_invoke_3_679;
  v14[3] = &unk_1E7B7B1A8;
  v21 = a2;
  v6 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v15 = v5;
  v7 = v6;
  v20 = *(a1 + 88);
  v8 = *(a1 + 48);
  v19 = *(a1 + 80);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v16 = v12;
  v17 = v11;
  v18 = *(a1 + 72);
  v13 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __47__PUPhotoEditViewController__handleSaveAction___block_invoke_696(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    [*(a1 + 32) setBurningInTrim:0];
    [*(a1 + 32) updateProgressIndicatorAnimated:1];
    v15 = PULocalizedString(@"VIDEOEDIT_EDIT_SAVE_FAILED_TITLE");
    if (MEMORY[0x1B8C6C170]())
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\n[INTERNAL ONLY] %@", v15, v6];

      v15 = v16;
    }

    v17 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v15 message:0 preferredStyle:1];
    v18 = MEMORY[0x1E69DC648];
    v19 = PULocalizedString(@"OK");
    v20 = [v18 actionWithTitle:v19 style:0 handler:0];
    [v17 addAction:v20];

    [*(a1 + 32) presentViewController:v17 animated:1 completion:0];
    v21 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v6;
      _os_log_impl(&dword_1B36F3000, v21, OS_LOG_TYPE_ERROR, "error burning in trim to new asset: %@", buf, 0xCu);
    }

    v22 = *(a1 + 40);
    v23 = v22;
    v24 = *(a1 + 64);
    if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v23, OS_SIGNPOST_INTERVAL_END, v24, "ExitEditDoneAction", " enableTelemetry=YES ", buf, 2u);
    }

    [*(a1 + 32) _didEndExitActionWithSessionKeys:*(a1 + 48)];
    goto LABEL_18;
  }

  v7 = MEMORY[0x1E69BE360];
  v8 = [v5 compositionController];
  if (([v7 isIdentityCompositionController:v8] & 1) == 0)
  {

    goto LABEL_17;
  }

  v9 = [v5 compositionController];
  v10 = [v9 slomoAdjustmentController];

  if (v10)
  {
LABEL_17:
    v25 = *(a1 + 32);
    v26 = [v5 asset];
    v27 = [v5 compositionController];
    v28 = [v25 _shouldRequestAsyncAdjustmentForAsset:v26 compositionController:v27];

    v29 = MEMORY[0x1E69C4300];
    v30 = [v5 contentEditingInput];
    v31 = [v5 compositionController];
    v32 = [v5 asset];
    v15 = [v29 contentEditingOutputForContentEditingInput:v30 compositionController:v31 asset:v32 async:v28 onlyChangingOriginalChoice:0];

    v33 = *(a1 + 56);
    v17 = [v5 asset];
    v34 = [v5 compositionController];
    v35 = [v5 contentEditingInput];
    (*(v33 + 16))(v33, v17, v34, v35, v15, 1);

LABEL_18:
    goto LABEL_19;
  }

  [*(a1 + 32) setBurningInTrim:0];
  v11 = *(a1 + 40);
  v12 = v11;
  v13 = *(a1 + 64);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v12, OS_SIGNPOST_INTERVAL_END, v13, "ExitEditDoneAction", " enableTelemetry=YES ", buf, 2u);
  }

  v14 = *(a1 + 32);
  v15 = [v5 asset];
  [v14 didFinishWithAsset:v15 savedChanges:1];
LABEL_19:
}

void __47__PUPhotoEditViewController__handleSaveAction___block_invoke_3_679(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(a1 + 104))
  {
    v2 = MEMORY[0x1E6978630];
    v29 = *(*(*(a1 + 88) + 8) + 40);
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
    v4 = [*(a1 + 64) photoLibrary];
    v5 = [v4 librarySpecificFetchOptions];
    v6 = [v2 fetchAssetsWithLocalIdentifiers:v3 options:v5];
    v7 = [v6 firstObject];

    if (([*(a1 + 32) _hasUnsavedChanges] & 1) == 0)
    {
      [*(a1 + 32) didFinishWithAsset:v7 savedChanges:1];
      goto LABEL_17;
    }

    v8 = objc_opt_new();
    [v8 setForceReturnFullLivePhoto:1];
    [v8 setContentMode:0];
    [v8 setSkipDisplaySizeImage:1];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __47__PUPhotoEditViewController__handleSaveAction___block_invoke_681;
    v28[3] = &unk_1E7B7B110;
    v28[4] = *(a1 + 32);
    [v8 setCanHandleRAW:v28];
    [v8 setCanHandleAdjustmentData:&__block_literal_global_686];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __47__PUPhotoEditViewController__handleSaveAction___block_invoke_3_688;
    v21[3] = &unk_1E7B7B180;
    v21[4] = *(a1 + 32);
    v9 = *(a1 + 48);
    v10 = *(a1 + 96);
    v22 = v9;
    v27 = v10;
    v23 = *(a1 + 56);
    v24 = *(a1 + 72);
    v26 = *(a1 + 80);
    v7 = v7;
    v25 = v7;
    [v7 requestContentEditingInputWithOptions:v8 completionHandler:v21];
  }

  else
  {
    if ([*(a1 + 32) isStandardVideo])
    {
      v11 = @"VIDEOEDIT_EDIT_SAVE_FAILED_TITLE";
    }

    else
    {
      v11 = @"PHOTOEDIT_EDIT_SAVE_FAILED_TITLE";
    }

    v7 = PULocalizedString(v11);
    if (MEMORY[0x1B8C6C170]())
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\n[INTERNAL ONLY] %@", v7, *(a1 + 40)];

      v7 = v12;
    }

    v8 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v7 message:0 preferredStyle:1];
    v13 = MEMORY[0x1E69DC648];
    v14 = PULocalizedString(@"OK");
    v15 = [v13 actionWithTitle:v14 style:0 handler:0];
    [v8 addAction:v15];

    [*(a1 + 32) presentViewController:v8 animated:1 completion:0];
    v16 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 40);
      *buf = 138412290;
      v31 = v17;
      _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_ERROR, "error creating duplicate: %@", buf, 0xCu);
    }

    v18 = *(a1 + 48);
    v19 = v18;
    v20 = *(a1 + 96);
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v19, OS_SIGNPOST_INTERVAL_END, v20, "ExitEditDoneAction", " enableTelemetry=YES ", buf, 2u);
    }

    [*(a1 + 32) _didEndExitActionWithSessionKeys:*(a1 + 56)];
  }

LABEL_17:
}

void __47__PUPhotoEditViewController__handleSaveAction___block_invoke_3_688(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__PUPhotoEditViewController__handleSaveAction___block_invoke_4_689;
  block[3] = &unk_1E7B7B158;
  v15 = v5;
  v16 = v6;
  v13 = *(a1 + 32);
  v7 = *(&v13 + 1);
  v21 = *(a1 + 80);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v17 = v13;
  v18 = v10;
  v20 = *(a1 + 72);
  v19 = *(a1 + 64);
  v11 = v6;
  v12 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __47__PUPhotoEditViewController__handleSaveAction___block_invoke_4_689(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v15 = [*(a1 + 48) _newOutputForContentEditingInput:v2 compositionController:*(a1 + 72)];
    (*(*(a1 + 88) + 16))();
  }

  else
  {
    v3 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E6978D58]];
    if ([*(a1 + 48) isStandardVideo])
    {
      v4 = @"VIDEOEDIT_EDIT_SAVE_FAILED_TITLE";
    }

    else
    {
      v4 = @"PHOTOEDIT_EDIT_SAVE_FAILED_TITLE";
    }

    v5 = PULocalizedString(v4);
    if (MEMORY[0x1B8C6C170]())
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\n[INTERNAL ONLY] %@", v5, v3];

      v5 = v6;
    }

    v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v5 message:0 preferredStyle:1];
    v8 = MEMORY[0x1E69DC648];
    v9 = PULocalizedString(@"OK");
    v10 = [v8 actionWithTitle:v9 style:0 handler:0];
    [v7 addAction:v10];

    [*(a1 + 48) presentViewController:v7 animated:1 completion:0];
    v11 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v3;
      _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_ERROR, "error saving as duplicate: %@", buf, 0xCu);
    }

    v12 = *(a1 + 56);
    v13 = v12;
    v14 = *(a1 + 96);
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v13, OS_SIGNPOST_INTERVAL_END, v14, "ExitEditDoneAction", " enableTelemetry=YES ", buf, 2u);
    }

    [*(a1 + 48) _didEndExitActionWithSessionKeys:*(a1 + 64)];
  }
}

void __47__PUPhotoEditViewController__handleSaveAction___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  [v6 setBurningInTrim:0];
  [*(a1 + 32) _startTimeoutTimerForAssetChange];
  [*(a1 + 32) _stopWaitingForSaveRequestWithAsset:v7];

  [*(*(a1 + 40) + 1800) endMonitoring];
  v8 = *(a1 + 40);
  v9 = *(v8 + 1800);
  *(v8 + 1800) = 0;

  v10 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = CFAbsoluteTimeGetCurrent() - *(a1 + 72);
    *buf = 134217984;
    v26 = v11;
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEFAULT, "Finished editor save in %lf seconds", buf, 0xCu);
  }

  if (!v7)
  {
    v12 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = *&v5;
      _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_ERROR, "error saving edits: %@", buf, 0xCu);
    }

    [*(a1 + 32) _stopWaitingForAssetChangeWithAsset:*(a1 + 48) success:0];
    [*(a1 + 32) updateProgressIndicatorAnimated:1];
    v13 = [v5 domain];
    if ([v13 isEqualToString:*MEMORY[0x1E6978F50]])
    {
      v14 = [v5 code];

      if (v14 == 3072)
      {
        [*(a1 + 32) didFinishWithChanges:0];
        goto LABEL_16;
      }
    }

    else
    {
    }

    if ([*(a1 + 40) isStandardVideo])
    {
      v15 = @"VIDEOEDIT_EDIT_SAVE_FAILED_TITLE";
    }

    else
    {
      v15 = @"PHOTOEDIT_EDIT_SAVE_FAILED_TITLE";
    }

    v16 = PULocalizedString(v15);
    if (MEMORY[0x1B8C6C170]())
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\n[INTERNAL ONLY] %@", v16, v5];

      v16 = v17;
    }

    v18 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v16 message:0 preferredStyle:1];
    v19 = MEMORY[0x1E69DC648];
    v20 = PULocalizedString(@"OK");
    v21 = [v19 actionWithTitle:v20 style:0 handler:0];
    [v18 addAction:v21];

    [*(a1 + 32) presentViewController:v18 animated:1 completion:0];
  }

LABEL_16:
  v22 = *(a1 + 56);
  v23 = v22;
  v24 = *(a1 + 80);
  if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v23, OS_SIGNPOST_INTERVAL_END, v24, "ExitEditDoneAction", " enableTelemetry=YES ", buf, 2u);
  }

  [*(a1 + 32) _didEndExitActionWithSessionKeys:*(a1 + 64)];
}

void __47__PUPhotoEditViewController__handleSaveAction___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 valuesCalculator];
  [v4 updateAdjustmentSmartToneStatistics:v3 withAccuracy:0];
}

- (void)_handleMainActionButton:(id)a3
{
  v5 = a3;
  v6 = v5;
  mainButtonAction = self->_mainButtonAction;
  if (mainButtonAction)
  {
    if (mainButtonAction == 2)
    {
      v9 = v5;
      v5 = [(PUPhotoEditViewController *)self _handleRevertButton:v5];
    }

    else
    {
      if (mainButtonAction != 1)
      {
        goto LABEL_8;
      }

      v9 = v5;
      v5 = [(PUPhotoEditViewController *)self _handleDoneButton:v5];
    }
  }

  else
  {
    v9 = v5;
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:5128 description:@"Invalid action for button."];
  }

  v6 = v9;
LABEL_8:

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)_showJpegPreviewForRawRevertAlert
{
  v3 = PULocalizedString(@"EDITING_JPEG_WITH_UNDERLYING_RAW");
  v4 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:v3 preferredStyle:1];
  v5 = MEMORY[0x1E69DC648];
  v6 = PULocalizedString(@"EDITING_JPEG_WITH_UNDERLYING_RAW_REVERT");
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__PUPhotoEditViewController__showJpegPreviewForRawRevertAlert__block_invoke;
  v12[3] = &unk_1E7B7E148;
  v12[4] = self;
  v7 = [v5 actionWithTitle:v6 style:0 handler:v12];
  [v4 addAction:v7];

  v8 = MEMORY[0x1E69DC648];
  v9 = PULocalizedString(@"EDITING_JPEG_WITH_UNDERLYING_RAW_USEJPEG");
  v10 = [v8 actionWithTitle:v9 style:0 handler:0];
  [v4 addAction:v10];

  v11 = [v4 popoverPresentationController];
  [v11 setDelegate:self];
  [(PUPhotoEditViewController *)self setJpegPreviewForRawConfirmationAlert:v4];
  [(PUPhotoEditViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)_resignCurrentTool
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(PUPhotoEditViewController *)self _allTools];
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

        [*(*(&v7 + 1) + 8 * v6++) leavingEditWithCancel];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_showCancelAndRevertOptionsAllowResetTool:(BOOL)a3
{
  v3 = a3;
  currentEditingTool = self->_currentEditingTool;
  if (currentEditingTool)
  {
    v6 = [(PUPhotoEditToolController *)currentEditingTool canResetToDefaultValue];
  }

  else
  {
    v6 = 0;
  }

  v7 = (self->_stashedSnapshot != 0) | [(PUPhotoEditViewController *)self _hasUnsavedChanges];
  v8 = MEMORY[0x1E69DC650];
  v9 = PULocalizedString(@"PHOTOEDIT_DISCARD_CHANGES_DESCRIPTION");
  v10 = [v8 alertControllerWithTitle:v9 message:0 preferredStyle:0];

  if (v3 && v6 && (+[PUPhotoEditProtoSettings sharedInstance](PUPhotoEditProtoSettings, "sharedInstance"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 showResetToolButton], v11, (v12 & 1) != 0))
  {
    v13 = MEMORY[0x1E69DC648];
    v14 = [(PUPhotoEditToolController *)self->_currentEditingTool localizedResetToolActionTitle];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __71__PUPhotoEditViewController__showCancelAndRevertOptionsAllowResetTool___block_invoke;
    v25[3] = &unk_1E7B7E148;
    v25[4] = self;
    v15 = [v13 actionWithTitle:v14 style:0 handler:v25];

    [v10 addAction:v15];
    if ((v7 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

  v16 = PULocalizedString(@"PHOTOEDIT_DISCARD_CHANGES");
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __71__PUPhotoEditViewController__showCancelAndRevertOptionsAllowResetTool___block_invoke_2;
  v24[3] = &unk_1E7B7E148;
  v24[4] = self;
  v17 = [MEMORY[0x1E69DC648] actionWithTitle:v16 style:2 handler:v24];
  [v10 addAction:v17];

LABEL_11:
  v18 = MEMORY[0x1E69DC648];
  v19 = PULocalizedString(@"CANCEL");
  v20 = [v18 actionWithTitle:v19 style:1 handler:0];
  [v10 addAction:v20];

  v21 = [v10 popoverPresentationController];
  [v21 setDelegate:self];
  p_cancelButton = &self->_cancelButton;
  v23 = [(PUPhotoEditNotchButton *)self->_cancelButton window];
  if (!v23)
  {
    p_cancelButton = &self->_cancelButtonItem;
  }

  [v21 setSourceItem:*p_cancelButton];

  [(PUPhotoEditViewController *)self setCancelConfirmationAlert:v10];
  [(PUPhotoEditViewController *)self presentViewController:v10 animated:1 completion:0];

LABEL_14:
}

uint64_t __71__PUPhotoEditViewController__showCancelAndRevertOptionsAllowResetTool___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) _isWaitingForSaveCompletion])
  {
    v2 = 4;
  }

  else
  {
    v2 = 3;
  }

  v3 = [*(a1 + 32) aggregateSession];
  [v3 finishSessionWithEnd:v2];

  v4 = [*(a1 + 32) exitEditEventBuilder];
  [v4 setSessionEndReason:v2];

  [*(a1 + 32) _resignCurrentTool];
  v5 = *(a1 + 32);

  return [v5 _performDiscardAction];
}

- (void)_handleCancelButton:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [(PUPhotoEditViewController *)self _hasUnsavedChanges];
  v5 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v4)
    {
      v6 = @"YES";
    }

    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "PERF - User pressed cancel button; hasUnsavedChanges? %@", &v12, 0xCu);
  }

  if (v4 || self->_stashedSnapshot)
  {
    [(PUPhotoEditViewController *)self _showCancelAndRevertOptionsAllowResetTool:0];
  }

  else
  {
    [(PUPhotoEditViewController *)self _didStartExitAction];
    v7 = [(PUPhotoEditViewController *)self aggregateSession];
    [v7 finishSessionWithEnd:2];

    v8 = [(PUPhotoEditViewController *)self exitEditEventBuilder];
    [v8 setSessionEndReason:2];

    [(PUPhotoEditViewController *)self _resignCurrentTool];
    [(PUPhotoEditViewController *)self didFinishWithChanges:0];
    v9 = [(PUPhotoEditViewController *)self resourceLoader];
    v10 = [v9 cancelAllRequests];

    if (v10)
    {
      v11 = [(PUPhotoEditViewController *)self exitEditEventBuilder];
      [v11 setSessionEndReason:5];
    }

    [(PUPhotoEditViewController *)self _didEndExitActionWithSessionKeys:0];
  }

  [MEMORY[0x1E69B3A58] reapAllStoragePools];
}

- (void)_handle1upToggleButton:(id)a3
{
  if ([(PUPhotoEditViewController *)self _hasUnsavedChanges])
  {

    [(PUPhotoEditViewController *)self _handleSaveAction:0];
  }

  else
  {
    v4 = [(PUPhotoEditViewController *)self aggregateSession];
    [v4 finishSessionWithEnd:2];

    v5 = [(PUPhotoEditViewController *)self exitEditEventBuilder];
    [v5 setSessionEndReason:2];

    [(PUPhotoEditViewController *)self _resignCurrentTool];
    v6 = [(PUPhotoEditViewController *)self photo];
    [(PUPhotoEditViewController *)self didFinishWithAsset:v6 savedChanges:0];
  }
}

- (void)_handleToolbarToolButton:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:4949 description:@"The sender must be a button"];
  }

  v6 = v5;
  v7 = -[PUPhotoEditViewController _toolControllerForTag:](self, "_toolControllerForTag:", [v6 tag]);
  if (!v7)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:4954 description:@"No tool associated with this button"];
  }

  if ([v7 enabled])
  {
    [(PUPhotoEditViewController *)self switchToEditingTool:v7 animated:1];
  }

  else
  {
    v8 = MEMORY[0x1E69DC650];
    v9 = [v7 disabledToolAlertTitle];
    v10 = [v7 disabledToolAlertMessage];
    v11 = [v8 alertControllerWithTitle:v9 message:v10 preferredStyle:1];

    v12 = MEMORY[0x1E69DC648];
    v13 = PULocalizedString(@"PHOTOEDIT_CONFIRM_REVERT_BUTTON");
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __54__PUPhotoEditViewController__handleToolbarToolButton___block_invoke;
    v24 = &unk_1E7B7E120;
    v25 = self;
    v26 = v6;
    v14 = [v12 actionWithTitle:v13 style:2 handler:&v21];
    [v11 addAction:{v14, v21, v22, v23, v24, v25}];

    v15 = MEMORY[0x1E69DC648];
    v16 = PULocalizedString(@"CANCEL");
    v17 = [v15 actionWithTitle:v16 style:1 handler:0];
    [v11 addAction:v17];

    v18 = [v11 popoverPresentationController];
    [v18 setDelegate:self];
    [v18 setPermittedArrowDirections:15];
    [(PUPhotoEditViewController *)self setDisabledToolRevertAlert:v11];
    [(PUPhotoEditViewController *)self presentViewController:v11 animated:1 completion:0];
  }
}

- (id)_toolControllerForTag:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(PUPhotoEditViewController *)self _allTools];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 toolControllerTag] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)validateCommand:(id)a3
{
  v11 = a3;
  v4 = PXNumberPropertyFromCommand();
  if ([v11 action] == sel_navigateToSegment_)
  {
    v5 = [v11 title];
    v6 = [v5 length];

    if (v6)
    {
      if (v4)
      {
        v7 = [(NSDictionary *)self->_toolControllerTagsByKeyCommandNumber objectForKeyedSubscript:v4];
        v8 = [v7 integerValue];

        v9 = [(PUPhotoEditViewController *)self _toolControllerForTag:v8];
        v10 = [v9 localizedName];
        [v11 setTitle:v10];

LABEL_9:
        goto LABEL_10;
      }
    }
  }

  if ([v11 action] == sel_toggleEditor_)
  {
    v9 = PXLocalizedString();
    [v11 setTitle:v9];
    goto LABEL_9;
  }

  if ([v11 action] == sel_autoEnhanceAssets_)
  {
    [(PUAdjustmentsToolController *)self->_adjustmentsController validateCommand:v11];
  }

LABEL_10:
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (sel_navigateToSegment_ == a3)
  {
    v8 = PXNumberPropertyFromCommand();
    if (v8)
    {
      v9 = [(NSDictionary *)self->_toolControllerTagsByKeyCommandNumber objectForKeyedSubscript:v8];
      v10 = v9 != 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    if (sel_autoEnhanceAssets_ == a3)
    {
      v7 = [(PUAdjustmentsToolController *)self->_adjustmentsController canPerformAction:a3 withSender:v6];
    }

    else if (sel_copyAdjustments_ == a3)
    {
      v7 = [(PUPhotoEditViewController *)self canCopyEdits];
    }

    else if (sel_pasteAdjustments_ == a3)
    {
      v7 = [(PUPhotoEditViewController *)self _canPasteEdits];
    }

    else
    {
      v12.receiver = self;
      v12.super_class = PUPhotoEditViewController;
      v7 = [(PUPhotoEditViewController *)&v12 canPerformAction:a3 withSender:v6];
    }

    v10 = v7;
  }

  return v10;
}

- (void)toggleEditor:(id)a3
{
  if (self->_mainButtonAction == 1)
  {
    [(PUPhotoEditViewController *)self _handleDoneAction:a3];
  }

  else
  {
    [(PUPhotoEditViewController *)self _handleCancelButton:a3];
  }
}

- (void)navigateToSegment:(id)a3
{
  v4 = PXNumberPropertyFromCommand();
  v5 = v4;
  if (v4)
  {
    v9 = v4;
    v6 = [(NSDictionary *)self->_toolControllerTagsByKeyCommandNumber objectForKeyedSubscript:v4];
    v7 = [v6 integerValue];

    v8 = [(PUPhotoEditViewController *)self _toolControllerForTag:v7];
    if (v8)
    {
      [(PUPhotoEditViewController *)self switchToEditingTool:v8 animated:1];
    }

    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)autoEnhanceAssets:(id)a3
{
  [(PUAdjustmentsToolController *)self->_adjustmentsController setInitialAction:1];
  adjustmentsController = self->_adjustmentsController;

  [(PUPhotoEditViewController *)self switchToEditingTool:adjustmentsController animated:1];
}

- (void)rotateAssetsClockwise:(id)a3
{
  [(PUCropToolController *)self->_cropController setInitialAction:2];
  cropController = self->_cropController;

  [(PUPhotoEditViewController *)self switchToEditingTool:cropController animated:1];
}

- (void)rotateAssetsCounterclockwise:(id)a3
{
  [(PUCropToolController *)self->_cropController setInitialAction:1];
  cropController = self->_cropController;

  [(PUPhotoEditViewController *)self switchToEditingTool:cropController animated:1];
}

- (void)setFocusingViewForInteraction:(BOOL)a3 exemptVideoScrubber:(BOOL)a4
{
  v5 = a3;
  v7 = +[PUPhotoEditProtoSettings sharedInstance];
  v8 = [v7 hideUIForInteractionEnabled];

  if (((v8 & 1) != 0 || self->_currentEditingTool == &self->_photoStylesToolController->super) && (!v5 || !UIAccessibilityIsVoiceOverRunning() || self->_currentEditingTool == &self->_photoStylesToolController->super) && self->_focusingViewForInteraction != v5)
  {
    self->_focusingViewForInteraction = v5;
    v9 = MEMORY[0x1B8C6D660]();
    v10 = &OBJC_IVAR___PUPhotoEditViewController__mainToolbar;
    if (v9)
    {
      v10 = &OBJC_IVAR___PUPhotoEditViewController__swiftToolbarView;
    }

    v11 = *(&self->super.super.super.isa + *v10);
    v12 = +[PUPhotoEditProtoSettings sharedInstance];
    v13 = [(PUPhotoEditViewController *)self isFocusingViewForInteraction];
    if (v13)
    {
      [v12 hideUIForInteractionFadeOutDuration];
    }

    else
    {
      [v12 hideUIForInteractionFadeInDuration];
    }

    v15 = v14;
    v16 = [(PUPhotoEditViewController *)self photoEditSpec];
    v17 = [v16 currentLayoutStyle];

    v18 = [(PUPhotoEditViewController *)self layoutOrientation];
    LOBYTE(v19) = 0;
    v20 = v18 != 1;
    if (!self->_isImageZooming && v17 != 4)
    {
      v19 = [(PUPhotoEditToolController *)self->_currentEditingTool shouldSlideMainToolbarOutOfScreenWhenFocusingForInteractionIfApplicable];
      if (v19)
      {
        if (v18 != 1)
        {
          LOBYTE(v19) = [v12 shouldMoveToolbarToRevealStylesDPadInLandscapeOrientation];
        }
      }
    }

    v21 = MEMORY[0x1E69DD250];
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __79__PUPhotoEditViewController_setFocusingViewForInteraction_exemptVideoScrubber___block_invoke;
    v26 = &unk_1E7B7B048;
    v29 = !v13;
    v27 = v11;
    v28 = self;
    v30 = v19;
    v31 = v20;
    v32 = v13;
    v33 = a4;
    v22 = v11;
    [v21 animateWithDuration:4 delay:&v23 options:&__block_literal_global_605_58814 animations:v15 completion:0.0];
    [(PUPhotoEditViewController *)self setNeedsUpdateOfHomeIndicatorAutoHidden:v23];
  }
}

uint64_t __79__PUPhotoEditViewController_setFocusingViewForInteraction_exemptVideoScrubber___block_invoke(uint64_t a1)
{
  if (MEMORY[0x1B8C6D660]([*(a1 + 32) setAlpha:*(a1 + 48)]))
  {
    v2 = 2 * (*(a1 + 48) == 0.0);
    v3 = [*(a1 + 40) navigationItem];
    [v3 _setPreferredNavigationBarVisibility:v2];
  }

  if (MEMORY[0x1B8C6D660]() && ([*(a1 + 40) _actionButtonsGoInTopToolbar] & 1) == 0)
  {
    [*(*(a1 + 40) + 1216) setAlpha:*(a1 + 48)];
    [*(*(a1 + 40) + 1208) setAlpha:*(a1 + 48)];
  }

  if (*(a1 + 56) == 1)
  {
    memset(&v25, 0, sizeof(v25));
    v4 = *(a1 + 57);
    [*(a1 + 32) frame];
    v7 = MEMORY[0x1E695EFD0];
    if (v4 == 1)
    {
      v8 = v5 * 0.2;
      v9 = *(MEMORY[0x1E695EFD0] + 16);
      *&v24.a = *MEMORY[0x1E695EFD0];
      *&v24.c = v9;
      *&v24.tx = *(MEMORY[0x1E695EFD0] + 32);
      v10 = 0.0;
    }

    else
    {
      v10 = v6 * 0.2;
      v11 = *(MEMORY[0x1E695EFD0] + 16);
      *&v24.a = *MEMORY[0x1E695EFD0];
      *&v24.c = v11;
      *&v24.tx = *(MEMORY[0x1E695EFD0] + 32);
      v8 = 0.0;
    }

    CGAffineTransformTranslate(&v25, &v24, v8, v10);
    if (*(a1 + 58) == 1)
    {
      v21 = *&v25.a;
      v23 = *&v25.c;
      v12 = *&v25.tx;
    }

    else
    {
      v21 = *v7;
      v23 = v7[1];
      v12 = v7[2];
    }

    *&v22.tx = v12;
    v13 = [*(a1 + 32) subviews];
    v14 = [v13 objectAtIndexedSubscript:0];
    v24 = v22;
    [v14 setTransform:&v24];
  }

  [*(*(a1 + 40) + 1176) setAlpha:*(a1 + 48)];
  if ((*(a1 + 59) & 1) == 0)
  {
    [*(a1 + 40) _updateVideoScrubberDisplayAnimate:0];
  }

  if (([*(a1 + 40) _shouldShowRawDecodeBadge] & 1) != 0 || objc_msgSend(*(a1 + 40), "_shouldShowProResBadge"))
  {
    [*(*(a1 + 40) + 1528) setAlpha:*(a1 + 48)];
  }

  v15 = *(*(a1 + 40) + 1000);
  if (*(a1 + 58) == 1)
  {
    v16 = [v15 isPerformingLiveInteraction];
    v15 = *(*(a1 + 40) + 1000);
    if (!v16)
    {
      [v15 setFocusingViewForInteraction:0];
      v18 = 0.0;
      goto LABEL_25;
    }

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  [v15 setFocusingViewForInteraction:v17];
  v18 = 1.0;
LABEL_25:
  v19 = [*(*(a1 + 40) + 1000) view];
  [v19 setAlpha:v18];

  return [*(a1 + 40) _updateToolbarShadowAlpha];
}

- (void)_cancelPendingFocusViewForInteractionWithDelay
{
  v3 = [(PUPhotoEditViewController *)self focusViewForInteractionDelayTimer];
  [v3 invalidate];

  [(PUPhotoEditViewController *)self setFocusViewForInteractionDelayTimer:0];
}

- (void)_focusViewForInteractionWithDelay
{
  v3 = +[PUPhotoEditProtoSettings sharedInstance];
  v4 = [v3 hideUIForInteractionEnabled];

  if ((v4 & 1) != 0 || self->_currentEditingTool == &self->_photoStylesToolController->super)
  {
    v5 = [(PUPhotoEditViewController *)self focusViewForInteractionDelayTimer];

    if (!v5)
    {
      if (-[PUPhotoEditToolController shouldObserveGenericFocusingViewForInteractionDelay](self->_currentEditingTool, "shouldObserveGenericFocusingViewForInteractionDelay") && (+[PUPhotoEditProtoSettings sharedInstance](PUPhotoEditProtoSettings, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), [v6 hideUIForInteractionFadeOutDelay], v8 = v7, v6, v8 != 0.0))
      {
        objc_initWeak(&location, self);
        v9 = [MEMORY[0x1E695DF00] now];
        v10 = [v9 dateByAddingTimeInterval:v8];

        v11 = objc_alloc(MEMORY[0x1E695DFF0]);
        v14 = MEMORY[0x1E69E9820];
        v15 = 3221225472;
        v16 = __62__PUPhotoEditViewController__focusViewForInteractionWithDelay__block_invoke;
        v17 = &unk_1E7B7B020;
        objc_copyWeak(&v18, &location);
        v12 = [v11 initWithFireDate:v10 interval:0 repeats:&v14 block:1.0];
        v13 = [MEMORY[0x1E695DFD0] currentRunLoop];
        [v13 addTimer:v12 forMode:*MEMORY[0x1E695DA28]];

        [(PUPhotoEditViewController *)self setFocusViewForInteractionDelayTimer:v12];
        objc_destroyWeak(&v18);

        objc_destroyWeak(&location);
      }

      else
      {

        [(PUPhotoEditViewController *)self setFocusingViewForInteraction:1];
      }
    }
  }
}

void __62__PUPhotoEditViewController__focusViewForInteractionWithDelay__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setFocusViewForInteractionDelayTimer:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 setFocusingViewForInteraction:1];
}

- (double)transientBadgeWidthForText:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = *MEMORY[0x1E69DB648];
  v3 = MEMORY[0x1E69DB878];
  v4 = *MEMORY[0x1E69DDD00];
  v5 = a3;
  v6 = [v3 preferredFontForTextStyle:v4];
  v12[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [v5 boundingRectWithSize:0 options:v7 attributes:0 context:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v9 = v8;

  return v9;
}

- (void)flashTransientBadgeWithText:(id)a3
{
  v4 = a3;
  [(PUPhotoEditViewController *)self _setTransientStatusBadgeVisible:1];
  [(CEKBadgeTextView *)self->_transientStatusBadge _setText:v4];

  [(CEKBadgeTextView *)self->_transientStatusBadge setAlpha:0.0];
  [(CEKBadgeTextView *)self->_transientStatusBadge invalidateIntrinsicContentSize];
  v5 = self->_transientStatusBadgeRequestID + 1;
  self->_transientStatusBadgeRequestID = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__PUPhotoEditViewController_flashTransientBadgeWithText___block_invoke;
  v7[3] = &unk_1E7B80DD0;
  v7[4] = self;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__PUPhotoEditViewController_flashTransientBadgeWithText___block_invoke_2;
  v6[3] = &unk_1E7B7AFF8;
  v6[4] = self;
  v6[5] = v5;
  [MEMORY[0x1E69DD250] animateWithDuration:v7 animations:v6 completion:0.1];
}

uint64_t __57__PUPhotoEditViewController_flashTransientBadgeWithText___block_invoke_2(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__PUPhotoEditViewController_flashTransientBadgeWithText___block_invoke_3;
  v4[3] = &unk_1E7B7FF70;
  v1 = *(a1 + 40);
  v5 = *(a1 + 32);
  v6 = v1;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__PUPhotoEditViewController_flashTransientBadgeWithText___block_invoke_4;
  v3[3] = &unk_1E7B7AFF8;
  v3[4] = v5;
  v3[5] = v1;
  return [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v4 options:v3 animations:0.4 completion:0.5];
}

uint64_t __57__PUPhotoEditViewController_flashTransientBadgeWithText___block_invoke_3(uint64_t result)
{
  v1 = *(result + 32);
  if (*(result + 40) == *(v1 + 1496))
  {
    return [*(v1 + 1488) setAlpha:0.0];
  }

  return result;
}

void *__57__PUPhotoEditViewController_flashTransientBadgeWithText___block_invoke_4(uint64_t a1)
{
  v2 = a1 + 32;
  result = *(a1 + 32);
  if (*(v2 + 8) == result[187])
  {
    return [result _setTransientStatusBadgeVisible:0];
  }

  return result;
}

- (void)_setTransientStatusBadgeVisible:(BOOL)a3
{
  transientStatusBadge = self->_transientStatusBadge;
  if (a3)
  {
    if (transientStatusBadge)
    {
      return;
    }

    v5 = objc_alloc(MEMORY[0x1E6993830]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v7 = self->_transientStatusBadge;
    self->_transientStatusBadge = v6;

    v8 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v9 = [v8 colorWithAlphaComponent:0.8];
    [(CEKBadgeTextView *)self->_transientStatusBadge _setFillColor:v9];

    v10 = [MEMORY[0x1E69DC888] labelColor];
    v11 = [v10 colorWithAlphaComponent:0.8];
    [(CEKBadgeTextView *)self->_transientStatusBadge _setContentColor:v11];

    [(CEKBadgeTextView *)self->_transientStatusBadge setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [(PUPhotoEditViewController *)self view];
    [v12 addSubview:self->_transientStatusBadge];

    v15 = [(PUPhotoEditViewController *)self view];
    [(NSArray *)v15 setNeedsUpdateConstraints];
    transientStatusBadgeConstraints = v15;
  }

  else
  {
    if (!transientStatusBadge)
    {
      return;
    }

    [(CEKBadgeTextView *)transientStatusBadge removeFromSuperview];
    v14 = self->_transientStatusBadge;
    self->_transientStatusBadge = 0;

    transientStatusBadgeConstraints = self->_transientStatusBadgeConstraints;
    self->_transientStatusBadgeConstraints = 0;
  }
}

- (void)_updateTransientStatusBadgeForPreviewingOriginal
{
  v3 = [(PUPhotoEditViewController *)self _isPreviewingOriginal];
  [(PUPhotoEditViewController *)self _setTransientStatusBadgeVisible:v3];
  if (v3)
  {
    v4 = [(PUPhotoEditViewController *)self previewRenderType];
    if (v4 == 2)
    {
      v5 = @"PHOTOEDIT_PREVIEWING_CROPPED_ORIGINAL";
    }

    else
    {
      if (v4 != 1)
      {
        return;
      }

      v5 = @"PHOTOEDIT_PREVIEWING_ORIGINAL";
    }

    v6 = PULocalizedString(v5);
    [(CEKBadgeTextView *)self->_transientStatusBadge _setText:v6];
  }
}

- (void)_updatePreviewingOriginal
{
  if ([(PUPhotoEditViewController *)self shouldBePreviewingOriginal])
  {
    v3 = [(PUPhotoEditViewController *)self compositionController];
    [MEMORY[0x1E69BE360] synchronousInputSizeForCompositionController:v3];
    v5 = v4;
    v7 = v6;
    v8 = [v3 cropAdjustmentController];
    if (v8)
    {
      v9 = [v3 cropAdjustmentController];
      v10 = [v9 isCropIdentityForImageSize:{v5, v7}];
    }

    else
    {
      v10 = 1;
    }

    if (([(PUPhotoEditViewController *)self workImageVersion]!= 1) | v10 & 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    v12 = [(PUPhotoEditViewController *)self aggregateSession];
    [v12 setToggledOriginal:1];
  }

  else
  {
    v11 = 0;
  }

  v13 = [(PUPhotoEditViewController *)self originalImageEditSource];

  if (v13)
  {

    [(PUPhotoEditViewController *)self setPreviewRenderType:v11];
  }
}

- (void)setPreviewRenderType:(int64_t)a3
{
  if (self->_previewRenderType != a3)
  {
    v30 = v6;
    v31 = v5;
    v32 = v3;
    v33 = v4;
    self->_previewRenderType = a3;
    if ([(PUPhotoEditViewController *)self _isPreviewingOriginal])
    {
      v9 = [(PUPhotoEditViewController *)self originalImageEditSource];
      if (v9 && (v10 = v9, v11 = [(PUPhotoEditViewController *)self workImageVersion], v10, v11 != 1))
      {
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __50__PUPhotoEditViewController_setPreviewRenderType___block_invoke;
        v28[3] = &unk_1E7B7AFD0;
        v28[4] = self;
        v28[5] = a3;
        v29 = 1;
        [(PUPhotoEditViewController *)self asShotCompositionController:v28];
      }

      else
      {
        v12 = [(PUPhotoEditViewController *)self photo];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [(PUPhotoEditViewController *)self photo];
        }

        else
        {
          v13 = 0;
        }

        if (+[PUPhotoEditSupport currentDeviceShouldAllowRawDecode](PUPhotoEditSupport, "currentDeviceShouldAllowRawDecode") && [v13 shouldUseRAWResourceAsUnadjustedEditBase])
        {
          v19 = [MEMORY[0x1E69BDEF0] pipelineFiltersForRAWShowingOriginalWithGeometry];
        }

        else
        {
          v20 = [(PUPhotoEditViewController *)self _defaultRenderPipelineFiltersForCurrentMode];
          v21 = [MEMORY[0x1E69BDEF0] pipelineFiltersForShowingOriginalWithGeometry];
          v19 = [v20 arrayByAddingObjectsFromArray:v21];
        }

        if (v19)
        {
          [(NUMediaView *)self->_mediaView setPipelineFilters:v19];
        }

        [(PUPhotoEditViewController *)self _updateMediaViewEdgeInsets];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __50__PUPhotoEditViewController_setPreviewRenderType___block_invoke_10;
        v27[3] = &unk_1E7B80DD0;
        v27[4] = self;
        dispatch_async(MEMORY[0x1E69E96A0], v27);
      }
    }

    else
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __50__PUPhotoEditViewController_setPreviewRenderType___block_invoke_11;
      aBlock[3] = &unk_1E7B80DD0;
      aBlock[4] = self;
      v14 = _Block_copy(aBlock);
      if ([(PUPhotoEditViewController *)self showOriginalCausedSizeChange])
      {
        v15 = [(PUPhotoEditViewController *)self view];
        v16 = [v15 snapshotViewAfterScreenUpdates:0];

        [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
        v17 = [(PUPhotoEditViewController *)self view];
        [v17 addSubview:v16];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __50__PUPhotoEditViewController_setPreviewRenderType___block_invoke_12;
        block[3] = &unk_1E7B80CB0;
        v24 = v16;
        v25 = v14;
        block[4] = self;
        v18 = v16;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }

      else
      {
        v14[2](v14);
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __50__PUPhotoEditViewController_setPreviewRenderType___block_invoke_16;
        v22[3] = &unk_1E7B80DD0;
        v22[4] = self;
        dispatch_async(MEMORY[0x1E69E96A0], v22);
      }
    }
  }
}

void __50__PUPhotoEditViewController_setPreviewRenderType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (*(a1 + 40) == 2)
    {
      v7 = [*(a1 + 32) compositionController];
      v8 = [v7 cropAdjustmentController];
      if (v8)
      {
        v9 = v8;
        v10 = [v5 cropAdjustmentController];

        if (!v10)
        {
          v11 = *MEMORY[0x1E69BDFC0];
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __50__PUPhotoEditViewController_setPreviewRenderType___block_invoke_2;
          v42[3] = &unk_1E7B7AF80;
          v42[4] = *(a1 + 32);
          [v5 modifyAdjustmentWithKey:v11 modificationBlock:v42];
        }
      }

      else
      {
      }
    }

    if (*(a1 + 48) == 1)
    {
      v12 = [v5 orientationAdjustmentController];

      if (!v12)
      {
        v13 = [*(a1 + 32) adjustmentConstants];
        v14 = [v13 PIOrientationAdjustmentKey];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __50__PUPhotoEditViewController_setPreviewRenderType___block_invoke_3;
        v41[3] = &unk_1E7B7AFA8;
        v41[4] = *(a1 + 32);
        [v5 modifyAdjustmentWithKey:v14 modificationBlock:v41];
      }
    }

    if (*(a1 + 48) == 1)
    {
      v15 = *(a1 + 32);
      v16 = v15 + 214;
      [v15 lastKnownPreviewImageSize];
      *v16 = v17;
      v16[1] = v18;
      [MEMORY[0x1E69BE360] synchronousInputSizeForCompositionController:v5];
      [*(a1 + 32) originalImageExifOrientation];
      PLOrientationTransformImageSize();
      v20 = v19;
      v22 = v21;
      [*(a1 + 32) lastKnownPreviewImageSize];
      v25 = v24 != v22 || v23 != v20;
      [*(a1 + 32) setLastKnownPreviewImageSize:{v20, v22}];
    }

    else
    {
      v25 = 0;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __50__PUPhotoEditViewController_setPreviewRenderType___block_invoke_4;
    aBlock[3] = &unk_1E7B80C38;
    v26 = v5;
    v27 = *(a1 + 32);
    v39 = v26;
    v40 = v27;
    v28 = _Block_copy(aBlock);
    v29 = v28;
    if (v25)
    {
      v30 = [*(a1 + 32) view];
      v31 = [v30 snapshotViewAfterScreenUpdates:0];

      [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
      v32 = [*(a1 + 32) view];
      [v32 addSubview:v31];

      [*(a1 + 32) setShowOriginalCausedSizeChange:1];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __50__PUPhotoEditViewController_setPreviewRenderType___block_invoke_5;
      block[3] = &unk_1E7B80CB0;
      v36 = v31;
      v37 = v29;
      block[4] = *(a1 + 32);
      v33 = v31;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      (*(v28 + 2))(v28);
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __50__PUPhotoEditViewController_setPreviewRenderType___block_invoke_9;
      v34[3] = &unk_1E7B80DD0;
      v34[4] = *(a1 + 32);
      dispatch_async(MEMORY[0x1E69E96A0], v34);
    }
  }
}

void __50__PUPhotoEditViewController_setPreviewRenderType___block_invoke_11(uint64_t a1)
{
  v8 = [*(a1 + 32) _defaultRenderPipelineFiltersForCurrentMode];
  v2 = *(a1 + 32);
  v3 = v2[129];
  v4 = [v2 _composition];
  [v3 setComposition:v4];

  [*(*(a1 + 32) + 1032) setPipelineFilters:v8];
  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E695F060];
  if (v5[214] != *MEMORY[0x1E695F060] || v5[215] != *(MEMORY[0x1E695F060] + 8))
  {
    [v5 setLastKnownPreviewImageSize:?];
    *(*(a1 + 32) + 1712) = *v6;
    v5 = *(a1 + 32);
  }

  [v5 _updateTransientStatusBadgeForPreviewingOriginal];
  [*(a1 + 32) _updateMediaViewEdgeInsets];
}

void __50__PUPhotoEditViewController_setPreviewRenderType___block_invoke_12(void *a1)
{
  (*(a1[6] + 16))();
  v2 = dispatch_time(0, 200000000);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__PUPhotoEditViewController_setPreviewRenderType___block_invoke_13;
  v4[3] = &unk_1E7B80C38;
  v3 = a1[5];
  v4[4] = a1[4];
  v5 = v3;
  dispatch_after(v2, MEMORY[0x1E69E96A0], v4);
}

void __50__PUPhotoEditViewController_setPreviewRenderType___block_invoke_13(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];

  v4 = MEMORY[0x1E69DD250];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__PUPhotoEditViewController_setPreviewRenderType___block_invoke_14;
  v8[3] = &unk_1E7B80DD0;
  v9 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__PUPhotoEditViewController_setPreviewRenderType___block_invoke_15;
  v6[3] = &unk_1E7B80088;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v4 animateWithDuration:v8 animations:v6 completion:0.2];
}

uint64_t __50__PUPhotoEditViewController_setPreviewRenderType___block_invoke_15(uint64_t a1)
{
  [*(a1 + 32) setShowOriginalCausedSizeChange:0];
  [*(a1 + 32) setTogglingShowOriginal:0];
  v2 = *(a1 + 40);

  return [v2 removeFromSuperview];
}

void __50__PUPhotoEditViewController_setPreviewRenderType___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = [v2 compositionController];
  v4 = [v6 cropAdjustmentController];
  v5 = [v4 adjustment];
  [v3 setFromAdjustment:v5];
}

void __50__PUPhotoEditViewController_setPreviewRenderType___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setOrientation:{objc_msgSend(v2, "originalImageExifOrientation")}];
}

void __50__PUPhotoEditViewController_setPreviewRenderType___block_invoke_4(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v2 = [MEMORY[0x1E69BE360] validatedCompositionCopyFor:*(a1 + 32) mediaType:1];
  [*(*(a1 + 40) + 1032) setComposition:v2];
  [MEMORY[0x1E6979518] commit];
}

void __50__PUPhotoEditViewController_setPreviewRenderType___block_invoke_5(void *a1)
{
  (*(a1[6] + 16))();
  v2 = dispatch_time(0, 200000000);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__PUPhotoEditViewController_setPreviewRenderType___block_invoke_6;
  v4[3] = &unk_1E7B80C38;
  v3 = a1[5];
  v4[4] = a1[4];
  v5 = v3;
  dispatch_after(v2, MEMORY[0x1E69E96A0], v4);
}

void __50__PUPhotoEditViewController_setPreviewRenderType___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) _updateMediaViewEdgeInsets];
  v2 = [*(a1 + 32) view];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];

  v4 = MEMORY[0x1E69DD250];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__PUPhotoEditViewController_setPreviewRenderType___block_invoke_7;
  v8[3] = &unk_1E7B80DD0;
  v9 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__PUPhotoEditViewController_setPreviewRenderType___block_invoke_8;
  v6[3] = &unk_1E7B80088;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v4 animateWithDuration:0 delay:v8 options:v6 animations:0.1 completion:0.2];
}

uint64_t __50__PUPhotoEditViewController_setPreviewRenderType___block_invoke_8(uint64_t a1)
{
  [*(a1 + 32) _startShowingOriginalBadge];
  [*(a1 + 32) setTogglingShowOriginal:0];
  v2 = *(a1 + 40);

  return [v2 removeFromSuperview];
}

- (void)setShouldBePreviewingOriginal:(BOOL)a3
{
  if (self->_shouldBePreviewingOriginal != a3)
  {
    v3 = a3;
    self->_shouldBePreviewingOriginal = a3;
    if (a3)
    {
      [(PUPhotoEditViewController *)self _loadOriginalImageIfNeeded];
      v5 = [(PUPhotoEditViewController *)self _livePhotoGestureRecognizer];
      [v5 pu_cancel];
    }

    [(PUPhotoEditViewController *)self _updatePreviewingOriginal];
    v6 = [(PUPhotoEditViewController *)self originalImageEditSource];

    if (v6)
    {
      [(PUPhotoEditViewController *)self _updateMainActionButtonAnimated:0];
      [(PUPhotoEditViewController *)self _updateShowOriginalButtonAnimated:0];
    }

    if (v3)
    {
      v7 = [(PUPhotoEditViewController *)self photo];
      v8 = [v7 isLivePhoto];

      if ((v8 & 1) == 0)
      {
        v9 = [(PUPhotoEditViewController *)self mediaView];
        v10 = [v9 player];
        [v10 pause];
      }

      currentEditingTool = self->_currentEditingTool;

      [(PUPhotoEditToolController *)currentEditingTool previewingOriginalDidStart];
    }

    else
    {
      v12 = self->_currentEditingTool;

      [(PUPhotoEditToolController *)v12 previewingOriginalDidStop];
    }
  }
}

- (void)viewControllerSpec:(id)a3 didChange:(id)a4
{
  if ([a4 layoutStyleChanged])
  {
    [(PUPhotoEditViewController *)self _updateSpecDependentUIPieces];
    v5 = [(PUPhotoEditViewController *)self photoEditSpec];
    [(PUPhotoEditToolPickerController *)self->_toolPickerController setParentSpec:v5];
  }
}

- (void)_updateLayerModulation
{
  if ([(PUPhotoEditViewController *)self shouldEnableImageModulation])
  {
    v3 = MEMORY[0x1E69C35F0];
    v4 = [(PUPhotoEditViewController *)self photo];
    v5 = [v3 optionsForAsset:v4];
    v7 = v6;

    v8 = [(PUPhotoEditViewController *)self imageLayerModulator];

    if (!v8)
    {
      v9 = [(PUPhotoEditViewController *)self px_imageModulationManager];
      v10 = [v9 checkoutImageLayerModulatorWithOptions:{v5, v7}];
      [(PUPhotoEditViewController *)self setImageLayerModulator:v10];
    }

    v11 = [(PUPhotoEditViewController *)self imageLayerModulator];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __51__PUPhotoEditViewController__updateLayerModulation__block_invoke;
    v17[3] = &unk_1E7B7F3B8;
    v17[4] = self;
    [v11 performChanges:v17];

    v12 = [(PUPhotoEditViewController *)self px_imageModulationManager];
    v13 = [(PUPhotoEditViewController *)self livePhotoViewModulator];
    [v12 checkInLivePhotoViewModulator:v13];

    v14 = [(PUPhotoEditViewController *)self px_imageModulationManager];
    v15 = [v14 checkoutLivePhotoViewModulatorWithOptions:{v5, v7}];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __51__PUPhotoEditViewController__updateLayerModulation__block_invoke_2;
    v16[3] = &unk_1E7B7AF58;
    v16[4] = self;
    [v15 performChanges:v16];
    [(PUPhotoEditViewController *)self setLivePhotoViewModulator:v15];
  }
}

void __51__PUPhotoEditViewController__updateLayerModulation__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 1032);
  v6 = a2;
  v4 = [v3 _renderView];
  v5 = [v4 _containerLayer];
  [v6 setLayer:v5];

  [v6 setGainMapImage:{objc_msgSend(*(a1 + 32), "gainMapImage")}];
  [*(a1 + 32) gainMapValue];
  [v6 setGainMapValue:?];
  [v6 setDisplayingOpaqueContent:0];
}

void __51__PUPhotoEditViewController__updateLayerModulation__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 mainLivePhotoView];
  v5 = [v4 playerView];
  [v6 setLivePhotoView:v5];

  [v6 setGainMapImage:{objc_msgSend(*(a1 + 32), "gainMapImage")}];
  [*(a1 + 32) gainMapValue];
  [v6 setGainMapValue:?];
}

- (BOOL)shouldEnableImageModulation
{
  if (![MEMORY[0x1E69B3AB0] renderMeteorPlusAsHDR])
  {
    return 1;
  }

  v3 = [(PUPhotoEditViewController *)self photo];
  v4 = ([v3 mediaSubtypes] & 0x200) == 0;

  return v4;
}

- (BOOL)_shouldDisplayRedEyeTool
{
  if (MEMORY[0x1B8C6D660](self, a2))
  {
    return 0;
  }

  return [(PUPhotoEditViewController *)self _shouldDisplayRedEyeUI];
}

- (BOOL)_shouldDisplayRedEyeUI
{
  v3 = [(PUPhotoEditViewController *)self isLoopingVideo]|| [(PUPhotoEditViewController *)self isStandardVideo];
  v4 = [(PUPhotoEditViewController *)self valuesCalculator];

  v5 = 0;
  if (v4 && !v3)
  {
    v6 = [(PUPhotoEditViewController *)self imageProperties];
    if ((v6 && (v7 = v6, v8 = MEMORY[0x1E69C4320], -[PUPhotoEditViewController imageProperties](self, "imageProperties"), v9 = objc_claimAutoreleasedReturnValue(), LODWORD(v8) = [v8 photoWasTakenWithoutFlashWithImageProperties:v9], v9, v7, !v8) || (-[PUPhotoEditViewController compositionController](self, "compositionController"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "redEyeAdjustmentController"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "hasCorrections"), v11, v10, v12)) && (-[PUPhotoEditViewController photo](self, "photo"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "playbackStyle"), v13, v14 != 5))
    {
      v15 = [(PUPhotoEditViewController *)self photo];
      v5 = [v15 playbackVariation] != 3;
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

- (void)_updateLayoutOrientationWithViewSize:(CGSize)a3 transitionCoordinator:(id)a4
{
  v17 = a4;
  v5 = [(PUPhotoEditViewController *)self photoEditSpec];
  v6 = [v5 currentLayoutStyle];

  v7 = [(PUPhotoEditViewController *)self view];
  v8 = [v7 window];
  v9 = [v8 windowScene];
  v10 = [v9 traitCollection];
  v11 = [v10 userInterfaceIdiom];

  if (v6 == 4)
  {
    v12 = 3;
  }

  else
  {
    v13 = [(PUPhotoEditViewController *)self view];
    v14 = [v13 window];
    v15 = [v14 windowScene];
    v16 = [v15 interfaceOrientation];

    if (v16 != 3)
    {
      if (v16 == 4)
      {
        if (MEMORY[0x1B8C6D660]())
        {
          v16 = 2;
        }

        else
        {
          v16 = 3;
        }
      }

      else
      {
        v16 = 1;
      }
    }

    if (v11 == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v16;
    }
  }

  [(PUPhotoEditViewController *)self setLayoutOrientation:v12 withTransitionCoordinator:v17];
}

- (void)_updateSubviewsOrdering
{
  v14 = [(PUPhotoEditViewController *)self view];
  v3 = MEMORY[0x1B8C6D660]();
  v4 = &OBJC_IVAR___PUPhotoEditViewController__mainToolbar;
  if (v3)
  {
    v4 = &OBJC_IVAR___PUPhotoEditViewController__swiftToolbarView;
  }

  v5 = *(&self->super.super.super.isa + *v4);
  [v14 bringSubviewToFront:self->_mediaView];
  [v14 bringSubviewToFront:self->_placeholderImageView];
  if (self->_mainToolbarShadow)
  {
    [v14 bringSubviewToFront:?];
  }

  if (self->_toolControlShadow)
  {
    [v14 bringSubviewToFront:?];
  }

  v6 = [(UIViewController *)self->_currentTool view];
  [v14 bringSubviewToFront:v6];

  if (MEMORY[0x1B8C6D660]())
  {
    v7 = [(PUPhotoEditViewController *)self outOfNavBarCenterView];

    if (v7)
    {
      v8 = [(PUPhotoEditViewController *)self outOfNavBarCenterView];
      [v14 bringSubviewToFront:v8];
    }
  }

  if (![(PUPhotoEditViewController *)self _actionButtonsGoInTopToolbar])
  {
    [v14 bringSubviewToFront:self->_cancelButton];
    [v14 bringSubviewToFront:self->_mainActionButton];
  }

  v9 = [(PUPhotoEditViewController *)self videoScrubberView];
  [v14 bringSubviewToFront:v9];

  v10 = [(PUPhotoEditViewController *)self playPauseButton];
  [v14 bringSubviewToFront:v10];

  [v14 bringSubviewToFront:self->_transientStatusBadge];
  [v14 bringSubviewToFront:self->_assetTypeBadge];
  [v14 bringSubviewToFront:v5];
  [v14 bringSubviewToFront:self->_secondaryToolbar];
  if ([(PUPhotoEditViewController *)self _isInEditRevertTransitionSnapshotVisible])
  {
    v11 = [(PUPhotoEditViewController *)self inEditRevertTransitionSnapshot];
    [v14 bringSubviewToFront:v11];
  }

  [v14 bringSubviewToFront:self->_progressEventBlockingView];
  [v14 bringSubviewToFront:self->_progressIndicatorView];
  v12 = [(PUPhotoEditViewController *)self perfHUD];
  [v14 bringSubviewToFront:v12];

  v13 = [(PUPhotoEditViewController *)self sceneHUD];
  [v14 bringSubviewToFront:v13];
}

- (void)_updatePlaceholderImage
{
  v3 = [(PUPhotoEditViewController *)self placeholderImage];
  if (v3)
  {
    placeholderImageView = self->_placeholderImageView;
    if (!placeholderImageView)
    {
      v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v3];
      v6 = self->_placeholderImageView;
      self->_placeholderImageView = v5;

      [(UIImageView *)self->_placeholderImageView setContentMode:1];
      [(UIImageView *)self->_placeholderImageView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIImageView *)self->_placeholderImageView setPreferredImageDynamicRange:2];
      self->_placeholderImageViewTransitioningOut = 0;
      v7 = [(PUPhotoEditViewController *)self view];
      [v7 addSubview:self->_placeholderImageView];

      v8 = MEMORY[0x1E69C35F0];
      v9 = [(PUPhotoEditViewController *)self photo];
      v10 = [v8 optionsForAsset:v9];
      v12 = v11;

      v13 = [(PUPhotoEditViewController *)self px_imageModulationManager];
      v14 = [v13 checkoutImageLayerModulatorWithOptions:{v10, v12}];

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __52__PUPhotoEditViewController__updatePlaceholderImage__block_invoke;
      v20[3] = &unk_1E7B7F3B8;
      v20[4] = self;
      [v14 performChanges:v20];
      placeholderImageLayerModulator = self->_placeholderImageLayerModulator;
      self->_placeholderImageLayerModulator = v14;
      v16 = v14;

      placeholderImageView = self->_placeholderImageView;
    }

    [(PUPhotoEditViewController *)self previewViewFrame];
    [(UIImageView *)placeholderImageView setFrame:?];
    [(UIImageView *)self->_placeholderImageView setHidden:0];
    v17 = [(PUPhotoEditViewController *)self placeholderImageLayerModulator];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __52__PUPhotoEditViewController__updatePlaceholderImage__block_invoke_2;
    v19[3] = &unk_1E7B7F3B8;
    v19[4] = self;
    [v17 performChanges:v19];

    [(PUPhotoEditViewController *)self _updateSubviewsOrdering];
  }

  v18 = [(PUPhotoEditMediaToolController *)self->_mediaToolController trimController];
  [v18 setPlaceholderImage:v3];
}

void __52__PUPhotoEditViewController__updatePlaceholderImage__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1472);
  v4 = a2;
  v3 = [v2 layer];
  [v4 setLayer:v3];

  [v4 setDisplayingOpaqueContent:0];
}

void __52__PUPhotoEditViewController__updatePlaceholderImage__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setGainMapImage:{objc_msgSend(v3, "gainMapImage")}];
  [*(a1 + 32) gainMapValue];
  [v4 setGainMapValue:?];
}

- (void)updateProgressIndicatorAnimated:(BOOL)a3
{
  v51 = *MEMORY[0x1E69E9840];
  if ([(PUPhotoEditViewController *)self _isWaitingForAssetChange])
  {
    v4 = 0x80;
  }

  else if ([(PUPhotoEditViewController *)self _isWaitingForSaveCompletion])
  {
    v4 = 0x80;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(PUPhotoEditViewController *)self resourceLoader];
  v6 = [v5 resourcesAvailability];

  if (v6 == 1)
  {
    ++v4;
  }

  v7 = [(PUPhotoEditViewController *)self resourceLoader];
  v8 = [v7 resourcesAvailability];

  if (v8 == 2)
  {
    v9 = v4 | 2;
  }

  else
  {
    v9 = v4;
  }

  if ([(PUPhotoEditViewController *)self isRevertingToOriginal])
  {
    v9 |= 0x20u;
  }

  v10 = v9 & 0xA3;
  if ([(PEAutoAdjustmentController *)self->_autoEnhanceController isBusy])
  {
    v11 = 8;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(PUPhotoEditViewController *)self isCachingVideo];
  v13 = 64;
  if (!v12)
  {
    v13 = 0;
  }

  v14 = v10 | v13;
  v15 = [(PUPhotoEditViewController *)self isRunningAutoCalculators];
  v16 = 4;
  if (!v15)
  {
    v16 = 0;
  }

  v17 = v14 | v16;
  v18 = 16;
  if (!self->_isTransitioningFromDownloadingToRunningAutoCalculators)
  {
    v18 = 0;
  }

  v19 = v11 | v17 | v18;
  if ([(PUPhotoEditViewController *)self burningInTrim])
  {
    v20 = 512;
  }

  else
  {
    v20 = 0;
  }

  v21 = [(PUPhotoEditViewController *)self _isSaveProgressAvailable];
  v22 = 1024;
  if (!v21)
  {
    v22 = 0;
  }

  v23 = v19 | v20 | v22;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(PUPhotoEditToolController *)self->_currentEditingTool imageLoadingInProgress])
  {
    v24 = v23 | 0x100;
  }

  else
  {
    v24 = v23 & 0xFFFFFFFFFFFFFEFFLL;
  }

  v25 = [(PUCleanupToolController *)self->_cleanupController isBusy];
  v26 = v25;
  v27 = 2048;
  if (!v25)
  {
    v27 = 0;
  }

  v28 = v27 | v24 & 0xFFFFFFFFFFFFF7FFLL;
  if ((v24 & 0x200) != 0)
  {
    v29 = 16;
  }

  else if ((v24 & 0x403) != 0)
  {
    v29 = 0;
  }

  else if ((v24 & 0x20) != 0)
  {
    v29 = 12;
  }

  else if ((v24 & 0x80) != 0)
  {
    v29 = 13;
  }

  else if ((v24 & 8) != 0)
  {
    v29 = 14;
  }

  else
  {
    v38 = 17;
    if (!v25)
    {
      v38 = 0;
    }

    if ((v24 & 0x100) != 0)
    {
      v29 = 15;
    }

    else
    {
      v29 = v38;
    }
  }

  v30 = [(PUPhotoEditViewController *)self px_isVisible];
  v32 = (v24 & 0x7EB) != 0 || (v24 & 0x14) == 4;
  v33 = v32 || v26;
  if (v30)
  {
    v34 = v33;
  }

  else
  {
    v34 = v26;
  }

  if (self->_currentProgressReasons == v28)
  {
LABEL_63:
    if (v34)
    {
      goto LABEL_64;
    }

    goto LABEL_69;
  }

  self->_currentProgressReasons = v28;
  v35 = PLPhotoEditGetLog();
  v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
  if (!v28)
  {
    if (v36)
    {
      LOWORD(v49) = 0;
      _os_log_impl(&dword_1B36F3000, v35, OS_LOG_TYPE_DEFAULT, "No more reasons for showing progress", &v49, 2u);
    }

    goto LABEL_63;
  }

  if (v34)
  {
    if (v36)
    {
      v37 = [(PUPhotoEditViewController *)self debugStringDescribingProgressReasons:v28];
      v49 = 138412290;
      v50 = v37;
      _os_log_impl(&dword_1B36F3000, v35, OS_LOG_TYPE_DEFAULT, "Showing progress for the reasons: %@", &v49, 0xCu);
    }

LABEL_64:
    if (!self->_progressIndicatorView)
    {
      [(PUPhotoEditViewController *)self _showProgressIndicator];
      LODWORD(progressIndicatorView) = 1;
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if (v36)
  {
    v40 = [(PUPhotoEditViewController *)self debugStringDescribingProgressReasons:v28];
    v49 = 138412290;
    v50 = v40;
    _os_log_impl(&dword_1B36F3000, v35, OS_LOG_TYPE_DEFAULT, "Not showing progress but operations are ongoing: %@", &v49, 0xCu);
  }

LABEL_69:
  progressIndicatorView = self->_progressIndicatorView;
  if (!progressIndicatorView)
  {
    goto LABEL_72;
  }

  [(PUPhotoEditViewController *)self _hideProgressIndicatorImmediately:0];
LABEL_71:
  LODWORD(progressIndicatorView) = 0;
LABEL_72:
  v41 = self->_progressIndicatorView;
  if (!v41)
  {
    goto LABEL_104;
  }

  v42 = (~v24 & 0x480) == 0 || (v24 & 0x23) != 0;
  if (((v42 | progressIndicatorView) & 1) == 0)
  {
    v42 = [(PUProgressIndicatorView *)v41 isDeterminate];
    v41 = self->_progressIndicatorView;
  }

  [(PUProgressIndicatorView *)v41 setDeterminate:v42];
  v43 = [(PUPhotoEditViewController *)self isStandardVideo];
  if (v24)
  {
    v46 = @"PHOTOEDIT_PROGRESS_CHECKING_RESOURCE_PHOTO";
LABEL_98:
    v47 = PULocalizedString(v46);
    goto LABEL_99;
  }

  if ((v24 & 2) != 0)
  {
    v46 = @"PHOTOEDIT_PROGRESS_DOWNLOADING_PHOTO";
    goto LABEL_98;
  }

  if ((v24 & 0x2A0) != 0)
  {
    v44 = @"PHOTOEDIT_PROGRESS_SAVING_PHOTO";
    v45 = @"PHOTOEDIT_PROGRESS_SAVING_VIDEO";
    goto LABEL_95;
  }

  if ((v24 & 8) != 0)
  {
    v44 = @"PHOTOEDIT_PROGRESS_AUTOENHANCING_PHOTO";
    v45 = @"PHOTOEDIT_PROGRESS_AUTOENHANCING_VIDEO";
    goto LABEL_95;
  }

  if ((v24 & 0x40) != 0)
  {
    v46 = @"PHOTOEDIT_PROGRESS_PREPARING_VIDEO";
    goto LABEL_98;
  }

  if ((v24 & 4) != 0)
  {
    v44 = @"PHOTOEDIT_PROGRESS_LOADING_PHOTO_ADJUSTMENTS";
    v45 = @"PHOTOEDIT_PROGRESS_LOADING_VIDEO_ADJUSTMENTS";
LABEL_95:
    if (v43)
    {
      v46 = v45;
    }

    else
    {
      v46 = v44;
    }

    goto LABEL_98;
  }

  if ((v24 & 0x100) != 0)
  {
    v46 = @"PHOTOEDIT_PROGRESS_CROP_RENDERING";
  }

  else
  {
    v46 = @"PHOTOEDIT_PROGRESS_CLEANUP_RENDERING";
  }

  if ((v26 | (v24 >> 8)))
  {
    goto LABEL_98;
  }

  v47 = 0;
LABEL_99:
  v48 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    v49 = 138543362;
    v50 = v47;
    _os_log_impl(&dword_1B36F3000, v48, OS_LOG_TYPE_DEFAULT, "Progress indicator message: %{public}@", &v49, 0xCu);
  }

  if (v47)
  {
    [(PUProgressIndicatorView *)self->_progressIndicatorView setLocalizedMessage:v47];
  }

LABEL_104:
  [(PUPhotoEditViewController *)self _updateProgressIndicatorInteractionDisabledWithReason:v29 showsIndicator:v34 isSavingWithProgress:(v24 >> 10) & 1];
}

- (id)debugStringDescribingProgressReasons:(unint64_t)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v3)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "checkingForDownload"];
    [v4 addObject:v8];

    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "downloadingResources"];
  [v4 addObject:v9];

  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "autocalculators"];
  [v4 addObject:v10];

  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "autoEnhanceCalculations"];
  [v4 addObject:v11];

  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "transitioningToAutoCalculators"];
  [v4 addObject:v12];

  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "reverting"];
  [v4 addObject:v13];

  if ((v3 & 0x40) == 0)
  {
LABEL_8:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "cachingVideo"];
  [v4 addObject:v14];

  if ((v3 & 0x80) == 0)
  {
LABEL_9:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "waitingToDismiss"];
  [v4 addObject:v15];

  if ((v3 & 0x100) == 0)
  {
LABEL_10:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "loadingCrop"];
  [v4 addObject:v16];

  if ((v3 & 0x200) == 0)
  {
LABEL_11:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "burningTrim"];
  [v4 addObject:v17];

  if ((v3 & 0x400) == 0)
  {
LABEL_12:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "saving"];
  [v4 addObject:v18];

  if ((v3 & 0x800) != 0)
  {
LABEL_13:
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "cleaningUp"];
    [v4 addObject:v5];
  }

LABEL_14:
  v6 = [v4 componentsJoinedByString:{@", "}];

  return v6;
}

- (void)_updateProgressIndicatorInteractionDisabledWithReason:(int64_t)a3 showsIndicator:(BOOL)a4 isSavingWithProgress:(BOOL)a5
{
  v5 = a4;
  v24 = *MEMORY[0x1E69E9840];
  progressIndicatorInteractionDisablingToken = self->_progressIndicatorInteractionDisablingToken;
  if (a3)
  {
    v9 = PLPhotoEditGetLog();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (progressIndicatorInteractionDisablingToken)
    {
      if (v10)
      {
        v22 = 67109120;
        v23 = a3;
        _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEFAULT, "Interaction still disabled for reason: %d", &v22, 8u);
      }
    }

    else
    {
      if (v10)
      {
        v22 = 67109120;
        v23 = a3;
        _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEFAULT, "Disabling user interaction for photo edit progress indicator for reason: %d", &v22, 8u);
      }

      v19 = [PUInterfaceManager beginDisablingUserInteractionForReason:a3 withExpectedTimeout:180.0];
      v9 = self->_progressIndicatorInteractionDisablingToken;
      self->_progressIndicatorInteractionDisablingToken = v19;
    }
  }

  else
  {
    v11 = a5;
    if (progressIndicatorInteractionDisablingToken)
    {
      v12 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_DEFAULT, "Re-enabling user interaction for photo edit progress indicator.", &v22, 2u);
      }

      [PUInterfaceManager endDisablingUserInteraction:self->_progressIndicatorInteractionDisablingToken];
      v13 = self->_progressIndicatorInteractionDisablingToken;
      self->_progressIndicatorInteractionDisablingToken = 0;
    }

    if (v5 && v11)
    {
      if (self->_progressEventBlockingView)
      {
        return;
      }

      v14 = objc_alloc(MEMORY[0x1E69DD250]);
      v15 = [v14 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      progressEventBlockingView = self->_progressEventBlockingView;
      self->_progressEventBlockingView = v15;

      [(UIView *)self->_progressEventBlockingView setTranslatesAutoresizingMaskIntoConstraints:0];
      v17 = [(PUPhotoEditViewController *)self view];
      [v17 insertSubview:self->_progressEventBlockingView belowSubview:self->_progressIndicatorView];

      [(PUPhotoEditViewController *)self _updateProgressEventBlockingViewConstraints];
      progressEventBlockingViewConstraints = [(PUPhotoEditViewController *)self view];
      [progressEventBlockingViewConstraints setNeedsLayout];
      goto LABEL_20;
    }
  }

  if (!v5)
  {
    v20 = self->_progressEventBlockingView;
    if (v20)
    {
      [(UIView *)v20 removeFromSuperview];
      v21 = self->_progressEventBlockingView;
      self->_progressEventBlockingView = 0;

      progressEventBlockingViewConstraints = self->_progressEventBlockingViewConstraints;
      self->_progressEventBlockingViewConstraints = 0;
LABEL_20:

      [(PUPhotoEditViewController *)self _updateToolbarsAnimated:0];
    }
  }
}

- (void)_hideProgressIndicatorImmediately:(BOOL)a3
{
  v3 = a3;
  v5 = self->_progressIndicatorView;
  progressIndicatorView = self->_progressIndicatorView;
  self->_progressIndicatorView = 0;

  progressIndicatorViewConstraints = self->_progressIndicatorViewConstraints;
  self->_progressIndicatorViewConstraints = 0;

  v8 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "Will hide progress indicator.", buf, 2u);
  }

  if ([(PUProgressIndicatorView *)v5 isShowingProgress])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63__PUPhotoEditViewController__hideProgressIndicatorImmediately___block_invoke;
    v9[3] = &unk_1E7B80DD0;
    v10 = v5;
    [(PUProgressIndicatorView *)v10 endShowingProgressImmediately:v3 animated:1 withCompletionHandler:v9];
  }

  [(PUPhotoEditViewController *)self _didEndEnterEdit];
}

- (void)_showProgressIndicator
{
  v3 = [[PUProgressIndicatorView alloc] initWithStyle:4];
  progressIndicatorView = self->_progressIndicatorView;
  self->_progressIndicatorView = v3;

  [(PUProgressIndicatorView *)self->_progressIndicatorView setShowsBackground:1];
  [(PUProgressIndicatorView *)self->_progressIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "Will show progress indicator.", v11, 2u);
  }

  [(PUProgressIndicatorView *)self->_progressIndicatorView defaultProgressIndicatorDelay];
  v7 = v6;
  if (self->_inProgressSaveIsDeferredRender)
  {
    v7 = v6 * 3.0;
  }

  else if (self->_inProgressSaveIsFromSwipe)
  {
    v7 = v6 / 3.0;
  }

  else if ([(PUCleanupToolController *)self->_cleanupController isBusy])
  {
    [(PUCleanupToolController *)self->_cleanupController progressDelay];
    v7 = v8;
  }

  [(PUProgressIndicatorView *)self->_progressIndicatorView beginShowingProgressWithDelay:1 animated:v7];
  v9 = [(PUPhotoEditViewController *)self view];
  [v9 addSubview:self->_progressIndicatorView];

  [(PUPhotoEditViewController *)self _updateSubviewsOrdering];
  v10 = [(PUPhotoEditViewController *)self view];
  [v10 setNeedsUpdateConstraints];
}

- (BOOL)isIpadLayout
{
  v2 = [(PUPhotoEditViewController *)self photoEditSpec];
  v3 = [v2 currentLayoutStyle] == 4;

  return v3;
}

- (void)updateInteractions
{
  if (MEMORY[0x1B8C6D660](self, a2))
  {
    toolSelectorToolbarPocketInteraction = self->_toolSelectorToolbarPocketInteraction;
    if (toolSelectorToolbarPocketInteraction)
    {
      v4 = [(_UIScrollPocketInteraction *)toolSelectorToolbarPocketInteraction view];
      [v4 removeInteraction:self->_toolSelectorToolbarPocketInteraction];

      v5 = self->_toolSelectorToolbarPocketInteraction;
      self->_toolSelectorToolbarPocketInteraction = 0;
    }
  }
}

- (UIEdgeInsets)_mediaViewEdgeInsetsWithGeometry:(id)a3
{
  v4 = a3;
  if ([(PUPhotoEditViewController *)self _shouldUseCropPlaceholderViewFrame])
  {
    [(PUPhotoEditViewController *)self lastKnownPreviewImageSize];
    [(PUPhotoEditViewController *)self _cropPlaceholderViewFrameForImageSize:?];
    v5 = [(PUPhotoEditViewController *)self view];
    [v5 bounds];
    PXEdgeInsetsBetweenRects();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    goto LABEL_31;
  }

  v14 = [(PUPhotoEditViewController *)self photoEditSpec];
  [v14 layoutReferenceSize];
  v16 = v15;
  v17 = [(PUPhotoEditViewController *)self photoEditSpec];
  [v17 layoutReferenceSize];
  v19 = v18;

  photoEditSpec = self->_photoEditSpec;
  if (v16 >= v19)
  {
    [(PUPhotoEditViewControllerSpec *)photoEditSpec previewViewInsetsLandscape];
  }

  else
  {
    [(PUPhotoEditViewControllerSpec *)photoEditSpec previewViewInsetsPortrait];
  }

  v21 = [(PUPhotoEditViewController *)self layoutOrientation];
  v22 = [(PUPhotoEditViewController *)self view];
  [PUPhotoEditLayoutSupport topToolbarVerticalOffsetForLayoutOrientation:v21 view:v22];

  v23 = [(PUPhotoEditViewController *)self view];
  [v23 safeAreaInsets];

  PLPhysicalDeviceIsIPad();
  [(PUPhotoEditViewController *)self layoutOrientation];
  [(PUPhotoEditViewController *)self _currentToolPreviewInsets];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  if (self->_currentEditingTool != &self->_cropController->super)
  {
    UIEdgeInsetsAdd();
    UIEdgeInsetsAdd();
    [(PUPhotoEditToolController *)self->_currentEditingTool additionalPreviewViewInsets];
LABEL_12:
    UIEdgeInsetsAdd();
    v39 = v43;
    v42 = v44;
    v34 = v45;
    v33 = v46;
    goto LABEL_13;
  }

  v32 = [(PUPhotoEditViewController *)self isIpadLayout];
  v33 = v31;
  v34 = v29;
  v35 = v27;
  v36 = v25;
  if ([(PUPhotoEditViewController *)self layoutOrientation]== 1)
  {
    v36 = *MEMORY[0x1E69DDCE0];
    v35 = *(MEMORY[0x1E69DDCE0] + 8);
    v34 = *(MEMORY[0x1E69DDCE0] + 16);
    v33 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  if ([(PUPhotoEditViewController *)self layoutOrientation]== 1 && !v32)
  {
    goto LABEL_12;
  }

  v37 = [(PUPhotoEditToolController *)self->_currentEditingTool view];
  [v37 frame];
  v39 = v36 + v38;

  v40 = [(PUPhotoEditToolController *)self->_currentEditingTool view];
  [v40 frame];
  v42 = v35 + v41;

LABEL_13:
  if (![(PUPhotoEditToolController *)self->_currentEditingTool handlesMediaViewInsets])
  {
    v47 = [(PUPhotoEditViewController *)self mediaView];
    [v47 bounds];
    v49 = v48;
    v51 = v50;
    v85 = v53;
    v86 = v52;

    [v4 size];
    NUPixelSizeToCGSize();
    if (*MEMORY[0x1E695F060] == v55 && *(MEMORY[0x1E695F060] + 8) == v54)
    {
      [(PUPhotoEditViewController *)self lastKnownPreviewImageSize];
    }

    else
    {
      [v4 size];
      NUPixelSizeToCGSize();
    }

    v58 = v56;
    v59 = v57;
    if (v56 < 1.0 || v57 < 1.0)
    {
      v60 = [(PUPhotoEditViewController *)self photo];
      v58 = [v60 pixelWidth];

      v61 = [(PUPhotoEditViewController *)self photo];
      v59 = [v61 pixelHeight];
    }

    if (v58 >= 1.0 && v59 >= 1.0)
    {
      rect = v39 + v51;
      v62 = v86 - (v33 + v42);
      v63 = v85 - (v34 + v39);
      PFSizeWithAspectRatioFittingSize();
      v64 = v42 + v49;
      PXRectGetCenter();
      PXRectWithCenterAndSize();
      x = v87.origin.x;
      y = v87.origin.y;
      width = v87.size.width;
      height = v87.size.height;
      MinX = CGRectGetMinX(v87);
      v88.origin.y = rect;
      v88.origin.x = v64;
      v88.size.width = v62;
      v88.size.height = v63;
      v70 = MinX < CGRectGetMinX(v88);
      v71 = v64;
      if (!v70)
      {
        v89.origin.x = x;
        v89.origin.y = y;
        v89.size.width = width;
        v89.size.height = height;
        MaxX = CGRectGetMaxX(v89);
        v90.origin.x = v64;
        v90.origin.y = rect;
        v90.size.width = v62;
        v90.size.height = v63;
        v73 = MaxX <= CGRectGetMaxX(v90);
        v71 = x;
        if (!v73)
        {
          v91.origin.x = v64;
          v91.origin.y = rect;
          v91.size.width = v62;
          v91.size.height = v63;
          v71 = CGRectGetMaxX(v91) - width;
        }
      }

      v92.origin.x = v71;
      v92.origin.y = y;
      v92.size.width = width;
      v92.size.height = height;
      MinY = CGRectGetMinY(v92);
      v93.origin.x = v64;
      v93.origin.y = rect;
      v93.size.width = v62;
      v93.size.height = v63;
      if (MinY >= CGRectGetMinY(v93))
      {
        v94.origin.x = v71;
        v94.origin.y = y;
        v94.size.width = width;
        v94.size.height = height;
        MaxY = CGRectGetMaxY(v94);
        v95.origin.x = v64;
        v95.origin.y = rect;
        v95.size.width = v62;
        v95.size.height = v63;
        if (MaxY > CGRectGetMaxY(v95))
        {
          v96.origin.x = v64;
          v96.origin.y = rect;
          v96.size.width = v62;
          v96.size.height = v63;
          CGRectGetMaxY(v96);
        }
      }

      PXEdgeInsetsBetweenRects();
      v39 = v76;
      v42 = v77;
      v34 = v78;
      v33 = v79;
    }
  }

  v7 = floor(v39);
  v9 = floor(v42);
  v11 = floor(v34);
  v13 = floor(v33);
LABEL_31:

  v80 = v7;
  v81 = v9;
  v82 = v11;
  v83 = v13;
  result.right = v83;
  result.bottom = v82;
  result.left = v81;
  result.top = v80;
  return result;
}

- (UIEdgeInsets)_mediaViewEdgeInsets
{
  v3 = [(PUPhotoEditViewController *)self mediaView];
  v4 = [v3 _geometry];
  [(PUPhotoEditViewController *)self _mediaViewEdgeInsetsWithGeometry:v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (UIEdgeInsets)_currentToolPreviewInsets
{
  v3 = *MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  v7 = [(PUPhotoEditViewController *)self layoutOrientation];
  v8 = self->_currentEditingTool;
  v9 = v8;
  v10 = v6;
  v11 = v5;
  v12 = v4;
  v13 = v3;
  if (v8)
  {
    [(PUPhotoEditToolController *)v8 preferredPreviewViewInsets];
    v13 = v14;
    v12 = v15;
    v11 = v16;
    v10 = v17;
  }

  if (v12 == v4 && v13 == v3 && v10 == v6 && v11 == v5)
  {
    v21 = [(PUPhotoEditViewController *)self photoEditSpec];
    v22 = [v21 currentLayoutStyle];

    if (v22 == 4)
    {
      v10 = dbl_1B3D0CF60[v7 == 1];
      v12 = v10;
    }

    else if (v7 == 1)
    {
      v11 = 141.0;
    }

    else
    {
      v10 = 165.0;
      v12 = 165.0;
    }
  }

  v23 = v13;
  v24 = v12;
  v25 = v11;
  v26 = v10;
  result.right = v26;
  result.bottom = v25;
  result.left = v24;
  result.top = v23;
  return result;
}

- (void)_updateMediaViewEdgeInsets
{
  v28 = *MEMORY[0x1E69E9840];
  if ([(PUPhotoEditViewController *)self mediaViewEdgeInsetsUpdateDisableCount]<= 0)
  {
    [(NUMediaView *)self->_mediaView edgeInsets];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(PUPhotoEditViewController *)self _mediaViewEdgeInsets];
    [(NUMediaView *)self->_mediaView setEdgeInsets:?];
    [(NUMediaView *)self->_mediaView edgeInsets];
    v15 = v6 == v14 && v4 == v11;
    v16 = v15 && v10 == v13;
    if (!v16 || v8 != v12)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v18 = [(PUPhotoEditViewController *)self _allTools];
      v19 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
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

            [*(*(&v23 + 1) + 8 * v22++) mediaViewInsetsUpdated];
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v20);
      }
    }
  }
}

- (void)_updateMediaViewLayoutWithCoordinator:(id)a3 layoutOrientation:(int64_t)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __85__PUPhotoEditViewController__updateMediaViewLayoutWithCoordinator_layoutOrientation___block_invoke;
  v4[3] = &unk_1E7B7DC38;
  v4[4] = self;
  [a3 animateAlongsideTransition:v4 completion:0];
}

- (void)_updateShowOriginalButtonAnimated:(BOOL)a3
{
  if (!self->_showOriginalButton)
  {
    return;
  }

  v4 = [(PUPhotoEditViewController *)self _hasUnsavedChanges];
  v5 = [(PUPhotoEditViewController *)self photo];
  if (![v5 isAdjusted])
  {

    goto LABEL_8;
  }

  v6 = [(PUPhotoEditViewController *)self workImageVersion];

  if (v6 != 1 || ![(PUPhotoEditViewController *)self _canCurrentCompositionControllerBeReverted])
  {
LABEL_8:
    if ([(PUPhotoEditViewController *)self workImageVersion]!= 1)
    {
      v4 |= [(PUPhotoEditViewController *)self _isReadyToRender];
    }

    goto LABEL_10;
  }

  v4 = 1;
LABEL_10:
  showOriginalButton = self->_showOriginalButton;

  [(PUPhotoEditToolbarButton *)showOriginalButton setEnabled:v4 & 1];
}

- (void)_updateMoreButtonAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = +[PUPhotoEditProtoSettings sharedInstance];
  if ([v5 editMenuEnabled])
  {
    goto LABEL_2;
  }

  if ([(PUEditPluginSession *)self->_pluginSession isAvailableExcludingMarkup:self->_markupButton != 0])
  {
    if ([(PUPhotoEditViewController *)self _enableSpatialMediaEditing])
    {
LABEL_2:
      v6 = 1;
      goto LABEL_7;
    }

    v6 = [(PUPhotoEditViewController *)self isSpatialMedia]^ 1;
  }

  else
  {
    v6 = 0;
  }

LABEL_7:

  [(PUPhotoEditToolbarButton *)self->_moreButton setEnabled:v6];
  if (v6)
  {
    moreButton = self->_moreButton;

    [(PUPhotoEditViewController *)self configureEnablenessOfControlButton:moreButton animated:v3 canVisuallyDisable:1];
  }
}

- (void)_updateUndoRedoButtonsAnimated:(BOOL)a3
{
  v4 = [(PUPhotoEditViewController *)self undoManager];
  -[PUPhotoEditToolbarButton setEnabled:](self->_undoButton, "setEnabled:", [v4 canUndo]);
  -[PUPhotoEditToolbarButton setEnabled:](self->_redoButton, "setEnabled:", [v4 canRedo]);
}

- (void)_updateCancelButtonAnimated:(BOOL)a3
{
  v4 = [(PUPhotoEditViewController *)self isRevertingToOriginal];
  [(PUPhotoEditNotchButton *)self->_cancelButton setEnabled:!v4];
  if (MEMORY[0x1B8C6D660]([(UIBarButtonItem *)self->_cancelButtonItem setEnabled:!v4]) && [(PUPhotoEditViewController *)self _actionButtonsGoInTopToolbar])
  {
    v7 = PULocalizedString(@"PHOTOEDIT_TOOLBAR_CANCEL_ACCESSIBILITY");
    [(UIBarButtonItem *)self->_cancelButtonItem setAccessibilityLabel:v7];
    [(UIBarButtonItem *)self->_cancelButtonItem setTitle:0];
    v5 = [(PUPhotoEditViewController *)self imageConfiguration];
    v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark" withConfiguration:v5];
    [(UIBarButtonItem *)self->_cancelButtonItem setImage:v6];
  }
}

- (void)_updateMainActionButtonAnimated:(BOOL)a3
{
  v4 = [(PUPhotoEditViewController *)self _hasUnsavedChanges];
  v5 = +[PUPhotoEditProtoSettings sharedInstance];
  v6 = [v5 alwaysShowDoneButton];

  v7 = v6 | v4;
  v8 = [(PUPhotoEditViewController *)self photo];
  if ([v8 isAdjusted])
  {
    v9 = [(PUPhotoEditViewController *)self workImageVersion];

    if (v9 == 1 && [(PUPhotoEditViewController *)self _canCurrentCompositionControllerBeReverted])
    {
      v10 = 0;
      goto LABEL_9;
    }
  }

  else
  {
  }

  if ([(PUPhotoEditViewController *)self workImageVersion]== 1)
  {
    p_stashedSnapshot = &self->_stashedSnapshot;
    v12 = 1;
    v13 = 1;
    goto LABEL_14;
  }

  v10 = ![(PUPhotoEditViewController *)self _isReadyToRender];
LABEL_9:
  p_stashedSnapshot = &self->_stashedSnapshot;
  if ((v7 | v10))
  {
    v13 = 1;
    v12 = 1;
  }

  else
  {
    v12 = *p_stashedSnapshot != 0;
    if (*p_stashedSnapshot)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

LABEL_14:
  v14 = [(PUPhotoEditViewController *)self resourceLoader];
  v15 = [v14 resourcesAvailability];

  if (v12)
  {
    if ((v15 != 3) | v7 & 1)
    {
      if (v15 != 3)
      {
        goto LABEL_24;
      }
    }

    else if (!*p_stashedSnapshot)
    {
LABEL_24:
      v18 = 0;
      goto LABEL_25;
    }

    if ([(PUPhotoEditViewController *)self shouldBePreviewingOriginal])
    {
      v16 = +[PUPhotoEditProtoSettings sharedInstance];
      v17 = [v16 previewOriginalTimesOut];

      if ((v17 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  else if (v15 != 3)
  {
    goto LABEL_24;
  }

  v18 = self->_progressEventBlockingView == 0;
LABEL_25:
  if (MEMORY[0x1B8C6D660]() && [(PUPhotoEditViewController *)self _actionButtonsGoInTopToolbar])
  {
    self->_mainButtonAction = v13;
    if ([(PUPhotoEditViewController *)self isRevertingToOriginal]|| v13 != 1)
    {
      v19 = PULocalizedString(@"PHOTOEDIT_TOOLBAR_REVERT_ACCESSIBILITY");
      v20 = [MEMORY[0x1E69DC888] systemDarkRedColor];
      v21 = @"arrow.counterclockwise";
    }

    else
    {
      v19 = PULocalizedString(@"PHOTOEDIT_TOOLBAR_DONE_ACCESSIBILITY");
      v20 = [MEMORY[0x1E69DC888] systemYellowColor];
      v21 = @"checkmark";
    }

    v32 = MEMORY[0x1E69DD250];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __61__PUPhotoEditViewController__updateMainActionButtonAnimated___block_invoke;
    v39[3] = &unk_1E7B7AF08;
    v39[4] = self;
    v40 = v21;
    v43 = v18;
    v41 = v19;
    v42 = v20;
    v30 = v20;
    v31 = v19;
    [v32 performWithoutAnimation:v39];

    goto LABEL_37;
  }

  if (v13 != self->_mainButtonAction)
  {
    self->_mainButtonAction = v13;
    if (v13 == 1)
    {
      v22 = PULocalizedString(@"PHOTOEDIT_TOOLBAR_DONE_OR_ICON");
      v23 = PULocalizedString(@"PHOTOEDIT_TOOLBAR_DONE_ACCESSIBILITY");
      v24 = [MEMORY[0x1E69DC888] blackColor];
      v25 = [MEMORY[0x1E69DC888] systemYellowColor];
      v26 = @"checkmark";
    }

    else
    {
      v22 = PULocalizedString(@"PHOTOEDIT_TOOLBAR_REVERT_OR_ICON");
      v23 = PULocalizedString(@"PHOTOEDIT_TOOLBAR_REVERT_ACCESSIBILITY");
      v24 = [MEMORY[0x1E69DC888] whiteColor];
      v25 = [MEMORY[0x1E69DC888] systemDarkRedColor];
      v26 = @"arrow.counterclockwise";
    }

    v27 = MEMORY[0x1E69DD250];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __61__PUPhotoEditViewController__updateMainActionButtonAnimated___block_invoke_2;
    v33[3] = &unk_1E7B7AF30;
    v33[4] = self;
    v34 = v22;
    v35 = v26;
    v36 = v24;
    v37 = v23;
    v38 = v25;
    v28 = v25;
    v29 = v23;
    v30 = v24;
    v31 = v22;
    [v27 performWithoutAnimation:v33];

LABEL_37:
  }

  [(PUPhotoEditNotchButton *)self->_mainActionButton setEnabled:v18];
  [(UIBarButtonItem *)self->_mainActionButtonItem setEnabled:v18];
  [(PUPhotoEditViewController *)self _updateMainButtonForSaveAsNewClipMenu];
}

void __61__PUPhotoEditViewController__updateMainActionButtonAnimated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1240) setTitle:0];
  v5 = [*(a1 + 32) imageConfiguration];
  v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:*(a1 + 40) withConfiguration:?];
  [*(*(a1 + 32) + 1240) setImage:v2];
  [*(*(a1 + 32) + 1240) setAccessibilityLabel:*(a1 + 48)];
  v3 = 0;
  if (*(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
  }

  [*(*(a1 + 32) + 1240) setTintColor:v3];
  if (*(a1 + 64))
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  [*(*(a1 + 32) + 1240) setStyle:v4];
}

uint64_t __61__PUPhotoEditViewController__updateMainActionButtonAnimated___block_invoke_2(void *a1)
{
  [*(a1[4] + 1216) setTitle:a1[5] fallbackSymbolName:a1[6]];
  [*(a1[4] + 1216) setTextColor:a1[7]];
  [*(a1[4] + 1216) setAccessibilityLabel:a1[8]];
  v2 = a1[9];
  v3 = *(a1[4] + 1216);

  return [v3 setBackgroundColor:v2];
}

- (id)imageConfiguration
{
  v2 = MEMORY[0x1E69DCAD8];
  v3 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0];
  v4 = [v2 configurationWithFont:v3];

  v5 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v6 = [MEMORY[0x1E69DCAD8] configurationWithWeight:5];
  v7 = [v5 configurationByApplyingConfiguration:v6];
  v8 = [v4 configurationByApplyingConfiguration:v7];

  return v8;
}

- (BOOL)_canCompositionControllerBeReverted:(id)a3
{
  v4 = MEMORY[0x1E69BDDE8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(PUPhotoEditViewController *)self originalComposition];
  v8 = [v6 initWithComposition:v7];

  v9 = [(PUPhotoEditViewController *)self editSourceContentEditingInput];
  v10 = [v9 fullSizeImageURL];

  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E69C0718]) initWithMediaURL:v10 timeZoneLookup:0];
  }

  else
  {
    v11 = 0;
  }

  v12 = MEMORY[0x1E69C4320];
  v13 = [(PUPhotoEditViewController *)self photo];
  v14 = [v12 repairedAsShotCompositionController:v8 forCurrentCompositionController:v5 isLivePhoto:objc_msgSend(v13 metadata:{"isLivePhoto"), v11}];

  v15 = [v14 composition];
  v16 = [v5 isEqual:v15 visualChangesOnly:1];

  return v16 ^ 1;
}

- (BOOL)_canCurrentCompositionControllerBeReverted
{
  v3 = [(PUPhotoEditViewController *)self compositionController];
  v4 = [(PUPhotoEditViewController *)self _canCompositionControllerBeReverted:v3]|| [(PUPhotoEditViewController *)self workImageVersion]!= 1;

  return v4;
}

- (void)_updateModelDependentControlsAnimated:(BOOL)a3
{
  v3 = a3;
  if (![(PUPhotoEditToolController *)self->_currentEditingTool isActivelyAdjusting])
  {
    [(PUPhotoEditViewController *)self _updateMainActionButtonAnimated:v3];
    [(PUPhotoEditViewController *)self _updateShowOriginalButtonAnimated:v3];
  }

  [(PUPhotoEditViewController *)self _updatePreviewingOriginal];
  [(PUPhotoEditViewController *)self _updateKeyCommands];
  v5 = [(PUPhotoEditViewController *)self _shouldDisplayRedEyeTool];
  redEyeButton = self->_redEyeButton;
  if (redEyeButton)
  {
    v7 = [(PUPhotoEditToolbarButton *)redEyeButton isHidden]^ 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 != v5)
  {

    [(PUPhotoEditViewController *)self _updateToolbarsAnimated:1];
  }
}

- (void)_updateSpecDependentUIPieces
{
  v3 = [(PUPhotoEditViewController *)self isFocusingViewForInteraction];
  v4 = [(PUPhotoEditViewController *)self setFocusingViewForInteraction:0];
  self->_toolbarButtonsValid = 0;
  if ((MEMORY[0x1B8C6D660](v4) & 1) == 0)
  {
    [(PUPhotoEditToolbar *)self->_mainToolbar removeFromSuperview];
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_mainToolbarConstraints];
  }

  [(PUPhotoEditShadowView *)self->_mainToolbarShadow removeFromSuperview];
  [(PUPhotoEditButtonCenteredToolbar *)self->_secondaryToolbar removeFromSuperview];
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_secondaryToolbarConstraints];
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_actionButtonConstraints];
  [(PUPhotoEditViewController *)self _clearToolbars];
  coreToolButtons = self->_coreToolButtons;
  self->_coreToolButtons = 0;

  coreToolButtonViews = self->_coreToolButtonViews;
  self->_coreToolButtonViews = 0;

  secondaryLeadingViews = self->_secondaryLeadingViews;
  self->_secondaryLeadingViews = 0;

  [(PUPhotoEditNotchButton *)self->_mainActionButton removeFromSuperview];
  [(PUPhotoEditNotchButton *)self->_cancelButton removeFromSuperview];
  mainActionButton = self->_mainActionButton;
  self->_mainActionButton = 0;

  mainActionButtonItem = self->_mainActionButtonItem;
  self->_mainActionButtonItem = 0;

  cancelButton = self->_cancelButton;
  self->_cancelButton = 0;

  cancelButtonItem = self->_cancelButtonItem;
  self->_cancelButtonItem = 0;

  secondaryTrailingViews = self->_secondaryTrailingViews;
  self->_secondaryTrailingViews = 0;

  secondaryCenterView = self->_secondaryCenterView;
  self->_secondaryCenterView = 0;

  redEyeButton = self->_redEyeButton;
  self->_redEyeButton = 0;

  moreButton = self->_moreButton;
  self->_moreButton = 0;

  markupButton = self->_markupButton;
  self->_markupButton = 0;

  [(PUPhotoEditViewController *)self _updateToolbarsAnimated:0];
  if (self->_currentToolViewConstraints)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
    currentToolViewConstraints = self->_currentToolViewConstraints;
    self->_currentToolViewConstraints = 0;

    v18 = [(PUPhotoEditViewController *)self view];
    [v18 setNeedsUpdateConstraints];
  }

  v19 = [(PUPhotoEditViewController *)self view];
  [v19 layoutIfNeeded];

  [(PUPhotoEditViewController *)self _clearBadgeConstraints];
  if (v3)
  {

    [(PUPhotoEditViewController *)self setFocusingViewForInteraction:1];
  }
}

- (double)imageFrameIntersectionFractionWithRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(PUPhotoEditViewController *)self mediaView];
  [v7 imageFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v18.origin.x = v9;
  v18.origin.y = v11;
  v18.size.width = v13;
  v18.size.height = v15;
  if (CGRectIsEmpty(v18))
  {
    return 0.0;
  }

  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v20.origin.x = v9;
  v20.origin.y = v11;
  v20.size.width = v13;
  v20.size.height = v15;
  CGRectIntersection(v19, v20);

  PXClamp();
  return result;
}

- (double)imageFrameIntersectionFractionWithView:(id)a3
{
  v4 = a3;
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(PUPhotoEditViewController *)self view];
  [v4 convertRect:v13 toView:{v6, v8, v10, v12}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v24.origin.x = v15;
  v24.origin.y = v17;
  v24.size.width = v19;
  v24.size.height = v21;
  if (CGRectIsEmpty(v24))
  {
    return 0.0;
  }

  [(PUPhotoEditViewController *)self imageFrameIntersectionFractionWithRect:v15, v17, v19, v21];
  return result;
}

- (void)_updateToolbarShadowAlpha
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = [(PUPhotoEditViewController *)self mediaView];
  [v3 imageFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if ([(PUPhotoEditViewController *)self isFocusingViewForInteraction]|| (v46.origin.x = v5, v46.origin.y = v7, v46.size.width = v9, v46.size.height = v11, CGRectIsEmpty(v46)))
  {
    [(PUPhotoEditShadowView *)self->_mainToolbarShadow setAlpha:0.0];
    [(PUPhotoEditShadowView *)self->_toolControlShadow setAlpha:0.0];
  }

  else
  {
    [(PUPhotoEditShadowView *)self->_mainToolbarShadow setAlpha:0.0];
    v12 = [(PUPhotoEditViewController *)self currentTool];
    v13 = [v12 viewsActivatingMainToolbarShadow];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
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
          [v19 setOverrideUserInterfaceStyle:0];
          [(PUPhotoEditViewController *)self imageFrameIntersectionFractionWithView:v19];
          if (v20 > 0.1)
          {
            [(PUPhotoEditShadowView *)self->_mainToolbarShadow setAlpha:1.0];
            [v19 setOverrideUserInterfaceStyle:2];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v16);
    }

    v21 = [(PUPhotoEditViewController *)self currentTool];
    v22 = [v21 viewsActivatingToolControlShadow];

    [(PUPhotoEditShadowView *)self->_toolControlShadow setAlpha:0.0];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v23 = v22;
    v24 = [v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v36;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v36 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v35 + 1) + 8 * j);
          [v28 setOverrideUserInterfaceStyle:{0, v35}];
          [(PUPhotoEditViewController *)self imageFrameIntersectionFractionWithView:v28];
          if (v29 > 0.4)
          {
            [(PUPhotoEditShadowView *)self->_toolControlShadow setAlpha:1.0];
            [v28 setOverrideUserInterfaceStyle:2];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v25);
    }
  }

  v30 = self->_secondaryCenterView;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v31 = v30;

    if (v31)
    {
      [(PUPhotoEditViewController *)self imageFrameIntersectionFractionWithView:v31];
      v33 = v32 <= 0.8;
      v34 = 0.0;
      if (v33)
      {
        v34 = 1.0;
      }

      [(UIView *)v31 setAlpha:v34, v35];
    }
  }

  else
  {

    v31 = 0;
  }
}

- (void)_updateToolbarBackgroundAnimated:(BOOL)a3
{
  v3 = a3;
  [(PUPhotoEditToolController *)self->_currentEditingTool setUseGradientBackground:0 animated:a3];
  [(PUPhotoEditMediaToolController *)self->_mediaToolController setUseGradientBackground:0 animated:v3];
  portraitToolController = self->_portraitToolController;

  [(PUPhotoEditToolController *)portraitToolController setUseGradientBackground:0 animated:v3];
}

- (void)_updateBackgroundColor
{
  currentEditingTool = self->_currentEditingTool;
  if (!currentEditingTool || ([(PUPhotoEditToolController *)currentEditingTool preferredPreviewBackgroundColor], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = +[PUInterfaceManager currentTheme];
    v8 = [v4 photoEditingBackgroundColor];
  }

  v5 = [(PUPhotoEditViewController *)self view];
  [v5 setBackgroundColor:v8];

  if (MEMORY[0x1B8C6D660]())
  {
    v6 = [(PUPhotoEditViewController *)self mediaView];
    v7 = [v6 _scrollView];
    [v7 px_setPocketColorForAllEdges:v8];
  }
}

- (id)_newToolButtonForTool:(id)a3
{
  v4 = a3;
  v5 = [v4 toolControllerTag];
  if (v5 == 1006)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(PUPhotoEditViewController *)self _selectionIndicatorType];
  }

  v7 = [(PUPhotoEditViewController *)self showsLabelsForToolButtons];
  v8 = v5 != 1006 && v7;
  v9 = [(PUPhotoEditViewController *)self photoEditSpec];
  v10 = [PUPhotoEditToolbarButton buttonForTool:v4 showingLabel:v8 selectionIndicatorType:v6 spec:v9];

  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__PUPhotoEditViewController__newToolButtonForTool___block_invoke;
  v12[3] = &unk_1E7B7AEE0;
  objc_copyWeak(&v13, &location);
  [v10 setActionBlock:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v10;
}

void __51__PUPhotoEditViewController__newToolButtonForTool___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleToolbarToolButton:v3];
}

- (int64_t)_selectionIndicatorType
{
  result = [(PUPhotoEditViewController *)self layoutOrientation];
  if (result != 1)
  {
    if ([(PUPhotoEditViewController *)self isIpadLayout])
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

- (void)_updateToolbarButtonPositions
{
  v29[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_opt_new();
  v5 = [(PUPhotoEditToolController *)self->_currentEditingTool leadingToolbarViews];
  v6 = v5;
  v7 = MEMORY[0x1E695E0F0];
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [(PUPhotoEditToolController *)self->_currentEditingTool centerToolbarView];
  v10 = [(PUPhotoEditToolController *)self->_currentEditingTool trailingToolbarViews];
  if ([v10 count])
  {
    [v4 addObjectsFromArray:v10];
  }

  v11 = [(PUPhotoEditViewController *)self currentToolControllerIsScrolling];
  if ([(PUPhotoEditViewController *)self _shouldDisplayRedEyeTool])
  {
    currentEditingTool = self->_currentEditingTool;
    if (currentEditingTool != self->_cropController && currentEditingTool != self->_photoStylesToolController)
    {
      [v4 insertObject:self->_redEyeButton atIndex:0];
    }
  }

  [v3 addObjectsFromArray:self->_coreToolButtonViews];
  if (self->_currentEditingTool)
  {
    v26 = [v8 count];
    if (self->_showOriginalButton)
    {
      v29[0] = self->_showOriginalButton;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      [v13 arrayByAddingObjectsFromArray:v8];
      v14 = v3;
      v15 = v11;
      v17 = v16 = v9;

      v8 = v17;
      v9 = v16;
      v11 = v15;
      v3 = v14;
    }

    if (self->_undoButton)
    {
      redoButton = self->_redoButton;
      if (redoButton)
      {
        if (!v26)
        {
          if (self->_showOriginalButton)
          {
            v28[0] = self->_undoButton;
            v28[1] = redoButton;
            v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
            v20 = [v8 arrayByAddingObjectsFromArray:v19];

            v8 = v19;
          }

          else
          {
            v27[0] = self->_undoButton;
            v27[1] = redoButton;
            v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
          }

          v8 = v20;
        }
      }
    }

    if (!v11)
    {
      if (self->_markupButton)
      {
        [v4 addObject:?];
      }

      if (self->_moreButton)
      {
        [v4 addObject:?];
      }
    }
  }

  v21 = [v8 copy];
  secondaryLeadingViews = self->_secondaryLeadingViews;
  self->_secondaryLeadingViews = v21;

  v23 = [v4 copy];
  secondaryTrailingViews = self->_secondaryTrailingViews;
  self->_secondaryTrailingViews = v23;

  secondaryCenterView = self->_secondaryCenterView;
  self->_secondaryCenterView = v9;

  self->_toolbarButtonsValid = 1;
}

- (void)_reloadToolbarButtonsIfNeeded
{
  v165 = *MEMORY[0x1E69E9840];
  v141 = [(PUPhotoEditViewController *)self undoManager];

  v139 = [(PUPhotoEditViewController *)self undoManager];

  v138 = [(PUPhotoEditViewController *)self _shouldDisplayRedEyeTool];
  v3 = [(PUPhotoEditViewController *)self _enableSpatialMediaEditing];
  if ([(PUPhotoEditViewController *)self _canPresentMarkup])
  {
    v140 = [(PUPhotoEditViewController *)self _markupGetsItsOwnButton];
  }

  else
  {
    v140 = 0;
  }

  v4 = +[PUPhotoEditProtoSettings sharedInstance];
  if ([v4 editMenuEnabled])
  {
    v5 = 1;
LABEL_10:
    v137 = v5;
    goto LABEL_12;
  }

  if ([(PUEditPluginSession *)self->_pluginSession isAvailableExcludingMarkup:v140])
  {
    v6 = [(PUPhotoEditViewController *)self _shouldHideToolsForQuickCrop];
    if (!v6 && !v3)
    {
      LOBYTE(v6) = [(PUPhotoEditViewController *)self isSpatialMedia];
    }

    v5 = !v6;
    goto LABEL_10;
  }

  v137 = 0;
LABEL_12:

  v7 = [(PUPhotoEditViewController *)self _shouldShowRawDecodeBadge];
  v8 = self->_undoButton != 0;
  v9 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (v140)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    if ([(PUPhotoEditViewController *)self _canPresentMarkup])
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    *buf = 138412802;
    if ([(PUPhotoEditViewController *)self _markupGetsItsOwnButton])
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    *&buf[22] = 2112;
    *&buf[24] = v12;
    _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEFAULT, "PUPhotoEditViewController _reloadToolbarButtonsIfNeeded - (wantsMarkupButton: %@) (_canPresentMarkup: %@) (_markupGetsItsOwnButton: %@)", buf, 0x20u);
  }

  redEyeButton = self->_redEyeButton;
  if (redEyeButton)
  {
    v14 = [(PUPhotoEditToolbarButton *)redEyeButton isHidden]^ 1;
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  v15 = self->_moreButton != 0;
  [(PXUIAssetBadgeView *)self->_assetTypeBadge alpha];
  v17 = v16 > 0.0;
  markupButton = self->_markupButton;
  v19 = [(PUPhotoEditViewController *)self _shouldShowProResBadge];
  objc_initWeak(&location, self);
  v20 = [(PUPhotoEditViewController *)self isIpadLayout];
  v21 = v7 ^ v17;
  v22 = v17 ^ v19;
  v23 = v20 && self->_currentEditingTool != &self->_cropController->super;
  if ((!self->_toolbarButtonsValid | (v138 ^ v14) | (v141 != 0) ^ v8 | (v137 ^ v15) | v140 ^ (markupButton != 0) | v21 | v22) & 1) != 0 || ((v23 ^ (self->_showOriginalButton != 0)))
  {
    v136 = [(PUPhotoEditViewController *)self _allTools];
    v24 = &OBJC_IVAR___PUParallaxLayerStackViewModel__backlightLuminance;
    if (!self->_coreToolButtons)
    {
      v25 = [MEMORY[0x1E695DF70] array];
      v26 = [MEMORY[0x1E695DF70] array];
      v133 = [MEMORY[0x1E695DF90] dictionary];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      *&buf[24] = 0;
      v162[0] = MEMORY[0x1E69E9820];
      v162[1] = 3221225472;
      v162[2] = __58__PUPhotoEditViewController__reloadToolbarButtonsIfNeeded__block_invoke;
      v162[3] = &unk_1E7B7AE90;
      v162[4] = buf;
      [v136 enumerateObjectsUsingBlock:v162];
      v157[0] = MEMORY[0x1E69E9820];
      v157[1] = 3221225472;
      v157[2] = __58__PUPhotoEditViewController__reloadToolbarButtonsIfNeeded__block_invoke_2;
      v157[3] = &unk_1E7B7AEB8;
      v157[4] = self;
      v161 = buf;
      v158 = v136;
      v27 = v25;
      v159 = v27;
      v28 = v26;
      v160 = v28;
      [v158 enumerateObjectsUsingBlock:v157];
      v29 = [v27 copy];
      coreToolButtons = self->_coreToolButtons;
      self->_coreToolButtons = v29;

      v31 = [v28 copy];
      coreToolButtonViews = self->_coreToolButtonViews;
      self->_coreToolButtonViews = v31;

      v33 = [v133 copy];
      toolTagLabelMap = self->_toolTagLabelMap;
      self->_toolTagLabelMap = v33;

      _Block_object_dispose(buf, 8);
      v24 = &OBJC_IVAR___PUParallaxLayerStackViewModel__backlightLuminance;
    }

    v35 = [(PUPhotoEditViewController *)self isIpadLayout];
    toolPickerController = self->_toolPickerController;
    if (!toolPickerController)
    {
      v37 = [[PUPhotoEditToolPickerController alloc] initWithLayoutDirection:[(PUPhotoEditViewController *)self currentToolPickerLayoutDirection] style:0 blurredBackground:v35];
      v38 = self->_toolPickerController;
      self->_toolPickerController = v37;

      toolPickerController = self->_toolPickerController;
    }

    [(PUPhotoEditToolPickerController *)toolPickerController setToolButtons:*(&self->super.super.super.isa + v24[620])];
    v39 = [MEMORY[0x1E69DC888] systemGray4Color];
    v40 = [v39 colorWithAlphaComponent:0.6];

    if (v35)
    {
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    [(PUPhotoEditToolPickerController *)self->_toolPickerController setBackgroundColor:v41];
    v42 = [(PUPhotoEditViewController *)self photoEditSpec];
    [(PUPhotoEditToolPickerController *)self->_toolPickerController setParentSpec:v42];

    assetTypeBadge = self->_assetTypeBadge;
    if (!v7 && !v19)
    {
      [(PXUIAssetBadgeView *)assetTypeBadge alpha];
      if (v51 > 0.0 && ![(PUPhotoEditViewController *)self isFocusingViewForInteraction])
      {
        v154[0] = MEMORY[0x1E69E9820];
        v154[1] = 3221225472;
        v154[2] = __58__PUPhotoEditViewController__reloadToolbarButtonsIfNeeded__block_invoke_4;
        v154[3] = &unk_1E7B80DD0;
        v154[4] = self;
        [MEMORY[0x1E69DD250] animateWithDuration:v154 animations:0.25];
      }

      goto LABEL_54;
    }

    if (assetTypeBadge)
    {
LABEL_52:
      if (![(PUPhotoEditViewController *)self isFocusingViewForInteraction])
      {
        v155[0] = MEMORY[0x1E69E9820];
        v155[1] = 3221225472;
        v155[2] = __58__PUPhotoEditViewController__reloadToolbarButtonsIfNeeded__block_invoke_3;
        v155[3] = &unk_1E7B80DD0;
        v155[4] = self;
        [MEMORY[0x1E69DD250] animateWithDuration:v155 animations:0.25];
      }

LABEL_54:
      v54 = self->_redEyeButton;
      if (!v54)
      {
        v55 = [(PUPhotoEditViewController *)self redEyeController];
        v56 = [(PUPhotoEditViewController *)self _newToolButtonForTool:v55];
        v57 = self->_redEyeButton;
        self->_redEyeButton = v56;

        [(PUPhotoEditToolbarButton *)self->_redEyeButton setIsTopToolbarButton:1];
        currentTool = self->_currentTool;
        v59 = [(PUPhotoEditViewController *)self redEyeController];
        LODWORD(currentTool) = currentTool == v59;

        if (currentTool)
        {
          [(PUPhotoEditToolbarButton *)self->_redEyeButton setSelected:1];
        }

        v54 = self->_redEyeButton;
      }

      [(PUPhotoEditToolbarButton *)v54 setHidden:!v138];
      showOriginalButton = self->_showOriginalButton;
      if (showOriginalButton == 0 && v23)
      {
        v61 = PULocalizedString(@"PHOTOEDIT_SHOW_ORIGINAL_ACCESSIBILITY_LABEL");
        v62 = [(PUPhotoEditViewController *)self photoEditSpec];
        v63 = [PUPhotoEditToolbarButton buttonWithImageNamed:@"square.and.line.vertical.and.square.filled" selectedImageNamed:0 accessibilityLabel:v61 spec:v62];
        v64 = self->_showOriginalButton;
        self->_showOriginalButton = v63;

        v152[0] = MEMORY[0x1E69E9820];
        v152[1] = 3221225472;
        v152[2] = __58__PUPhotoEditViewController__reloadToolbarButtonsIfNeeded__block_invoke_5;
        v152[3] = &unk_1E7B7AEE0;
        objc_copyWeak(&v153, &location);
        [(PUPhotoEditToolbarButton *)self->_showOriginalButton setActionBlock:v152];
        objc_destroyWeak(&v153);
      }

      else if (showOriginalButton != 0 && !v23)
      {
        self->_showOriginalButton = 0;
      }

      undoButton = self->_undoButton;
      if (undoButton || !v141)
      {
        if (undoButton && !v141)
        {
          self->_undoButton = 0;
        }
      }

      else
      {
        if (MEMORY[0x1B8C6D660]())
        {
          v66 = @"arrow.uturn.backward";
        }

        else
        {
          v66 = @"arrow.uturn.backward.circle";
        }

        v67 = PULocalizedString(@"PHOTOEDIT_UNDO_ACCESSIBILITY_LABEL");
        v68 = [(PUPhotoEditViewController *)self photoEditSpec];
        v69 = [PUPhotoEditToolbarButton buttonWithImageNamed:v66 selectedImageNamed:0 accessibilityLabel:v67 spec:v68];
        v70 = self->_undoButton;
        self->_undoButton = v69;

        v150[0] = MEMORY[0x1E69E9820];
        v150[1] = 3221225472;
        v150[2] = __58__PUPhotoEditViewController__reloadToolbarButtonsIfNeeded__block_invoke_6;
        v150[3] = &unk_1E7B7AEE0;
        objc_copyWeak(&v151, &location);
        [(PUPhotoEditToolbarButton *)self->_undoButton setActionBlock:v150];
        objc_destroyWeak(&v151);
      }

      redoButton = self->_redoButton;
      if (redoButton || !v139)
      {
        if (redoButton && !v139)
        {
          self->_redoButton = 0;
        }
      }

      else
      {
        if (MEMORY[0x1B8C6D660]())
        {
          v72 = @"arrow.uturn.forward";
        }

        else
        {
          v72 = @"arrow.uturn.forward.circle";
        }

        v73 = PULocalizedString(@"PHOTOEDIT_REDO_ACCESSIBILITY_LABEL");
        v74 = [(PUPhotoEditViewController *)self photoEditSpec];
        v75 = [PUPhotoEditToolbarButton buttonWithImageNamed:v72 selectedImageNamed:0 accessibilityLabel:v73 spec:v74];
        v76 = self->_redoButton;
        self->_redoButton = v75;

        v148[0] = MEMORY[0x1E69E9820];
        v148[1] = 3221225472;
        v148[2] = __58__PUPhotoEditViewController__reloadToolbarButtonsIfNeeded__block_invoke_7;
        v148[3] = &unk_1E7B7AEE0;
        objc_copyWeak(&v149, &location);
        [(PUPhotoEditToolbarButton *)self->_redoButton setActionBlock:v148];
        objc_destroyWeak(&v149);
      }

      if (((self->_moreButton == 0) & v137) == 1)
      {
        if (MEMORY[0x1B8C6D660]())
        {
          v77 = @"ellipsis";
        }

        else
        {
          v77 = @"ellipsis.circle";
        }

        v78 = PULocalizedString(@"MORE_BUTTON_TITLE");
        v79 = [(PUPhotoEditViewController *)self photoEditSpec];
        v80 = [PUPhotoEditToolbarButton buttonWithImageNamed:v77 selectedImageNamed:0 accessibilityLabel:v78 spec:v79];
        moreButton = self->_moreButton;
        self->_moreButton = v80;

        [(PUPhotoEditToolbarButton *)self->_moreButton setIsTopToolbarButton:1];
        v82 = +[PUPhotoEditProtoSettings sharedInstance];
        LODWORD(v79) = [v82 editMenuEnabled];

        v83 = self->_moreButton;
        if (v79)
        {
          [(PUPhotoEditToolbarButton *)v83 setShowsMenuAsPrimaryAction:1];
          [(PUPhotoEditViewController *)self _reloadMoreButtonMenu];
        }

        else
        {
          [(PUPhotoEditToolbarButton *)v83 setShowsMenuAsPrimaryAction:0];
          [(PUPhotoEditToolbarButton *)self->_moreButton setMenu:0];
          v146[0] = MEMORY[0x1E69E9820];
          v146[1] = 3221225472;
          v146[2] = __58__PUPhotoEditViewController__reloadToolbarButtonsIfNeeded__block_invoke_8;
          v146[3] = &unk_1E7B7AEE0;
          objc_copyWeak(&v147, &location);
          [(PUPhotoEditToolbarButton *)self->_moreButton setActionBlock:v146];
          objc_destroyWeak(&v147);
        }
      }

      v84 = self->_markupButton;
      if (v84 == 0 && v140)
      {
        v85 = PULocalizedString(@"MARKUP_BUTTON_TITLE");
        v86 = [(PUPhotoEditViewController *)self photoEditSpec];
        v87 = [PUPhotoEditToolbarButton buttonWithImageNamed:@"pencil.tip.crop.circle" selectedImageNamed:0 accessibilityLabel:v85 spec:v86];
        v88 = self->_markupButton;
        self->_markupButton = v87;

        [(PUPhotoEditToolbarButton *)self->_markupButton setIsTopToolbarButton:1];
        v144[0] = MEMORY[0x1E69E9820];
        v144[1] = 3221225472;
        v144[2] = __58__PUPhotoEditViewController__reloadToolbarButtonsIfNeeded__block_invoke_9;
        v144[3] = &unk_1E7B7AEE0;
        objc_copyWeak(&v145, &location);
        [(PUPhotoEditToolbarButton *)self->_markupButton setActionBlock:v144];
        objc_destroyWeak(&v145);
      }

      else
      {
        if (v84)
        {
          v89 = v140;
        }

        else
        {
          v89 = 1;
        }

        if ((v89 & 1) == 0)
        {
          self->_markupButton = 0;
        }
      }

      if (!self->_zoomButton && !self->_isEmbeddedEdit)
      {
        v90 = MEMORY[0x1B8C6D660]();
        if (v90)
        {
          v91 = @"arrow.up.right.and.arrow.down.left";
        }

        else
        {
          v91 = @"arrow.down.right.and.arrow.up.left";
        }

        if (v90)
        {
          v92 = @"arrow.down.left.and.arrow.up.right";
        }

        else
        {
          v92 = @"arrow.up.left.and.arrow.down.right";
        }

        v93 = PULocalizedString(@"ZOOM_BUTTON_TITLE");
        v94 = [(PUPhotoEditViewController *)self photoEditSpec];
        v95 = [PUPhotoEditToolbarButton buttonWithImageNamed:v92 selectedImageNamed:v91 accessibilityLabel:v93 spec:v94];
        zoomButton = self->_zoomButton;
        self->_zoomButton = v95;

        [(PUPhotoEditToolbarButton *)self->_zoomButton setIsTopToolbarButton:1];
        v97 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        [(PUPhotoEditToolbarButton *)self->_zoomButton setSelectedColor:v97];

        v142[0] = MEMORY[0x1E69E9820];
        v142[1] = 3221225472;
        v142[2] = __58__PUPhotoEditViewController__reloadToolbarButtonsIfNeeded__block_invoke_10;
        v142[3] = &unk_1E7B7AEE0;
        objc_copyWeak(&v143, &location);
        [(PUPhotoEditToolbarButton *)self->_zoomButton setActionBlock:v142];
        objc_destroyWeak(&v143);
      }

      if (!self->_mainActionButton)
      {
        v98 = [PUPhotoEditNotchButton alloc];
        v99 = [(PUPhotoEditNotchButton *)v98 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        mainActionButton = self->_mainActionButton;
        self->_mainActionButton = v99;

        [(PUPhotoEditNotchButton *)self->_mainActionButton addTarget:self action:sel__handleMainActionButton_ forControlEvents:64];
        self->_mainButtonAction = 0;
        [(PUPhotoEditNotchButton *)self->_mainActionButton setTranslatesAutoresizingMaskIntoConstraints:0];
        v101 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:0 style:2 target:self action:sel__handleMainActionButton_];
        mainActionButtonItem = self->_mainActionButtonItem;
        self->_mainActionButtonItem = v101;

        v103 = [(PUPhotoEditViewController *)self isStandardVideo];
        if (v103)
        {
          v104 = [(PUPhotoEditViewController *)self photo];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v103 = [(PUPhotoEditViewController *)self _updateMainButtonForSaveAsNewClipMenu];
          }
        }

        if ((MEMORY[0x1B8C6D660](v103) & 1) == 0)
        {
          v106 = [(PUPhotoEditViewController *)self revertConfirmationAlert];

          if (v106)
          {
            v107 = [(PUPhotoEditViewController *)self revertConfirmationAlert];
            v108 = [v107 popoverPresentationController];
            [v108 setSourceView:self->_mainActionButton];

            v109 = [(PUPhotoEditViewController *)self revertConfirmationAlert];
            v110 = [v109 popoverPresentationController];
            [(PUPhotoEditNotchButton *)self->_mainActionButton bounds];
            [v110 setSourceRect:?];
          }
        }
      }

      if (!self->_cancelButton)
      {
        v111 = [PUPhotoEditNotchButton alloc];
        v112 = [(PUPhotoEditNotchButton *)v111 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        if (MEMORY[0x1B8C6D660]() && (v113 = -[PUPhotoEditViewController layoutOrientation](self, "layoutOrientation"), -[PUPhotoEditViewController view](self, "view"), v114 = objc_claimAutoreleasedReturnValue(), [v114 bounds], v116 = +[PUPhotoEditLayoutSupport requiresCompactNavBarForLayoutOrientation:viewWidth:](PUPhotoEditLayoutSupport, "requiresCompactNavBarForLayoutOrientation:viewWidth:", v113, v115), v114, v116))
        {
          [(PUPhotoEditNotchButton *)v112 setTitle:&stru_1F2AC6818 fallbackSymbolName:@"xmark"];
        }

        else
        {
          v117 = PULocalizedString(@"PHOTOEDIT_TOOLBAR_CANCEL_OR_ICON");
          [(PUPhotoEditNotchButton *)v112 setTitle:v117 fallbackSymbolName:@"xmark"];
        }

        objc_storeStrong(&self->_cancelButton, v112);
        [(PUPhotoEditNotchButton *)self->_cancelButton addTarget:self action:sel__handleCancelButton_ forControlEvents:64];
        v118 = PULocalizedString(@"PHOTOEDIT_TOOLBAR_CANCEL_ACCESSIBILITY");
        [(PUPhotoEditNotchButton *)self->_cancelButton setAccessibilityLabel:v118];

        [(PUPhotoEditNotchButton *)self->_cancelButton setTranslatesAutoresizingMaskIntoConstraints:0];
        v119 = objc_alloc(MEMORY[0x1E69DC708]);
        v120 = PULocalizedString(@"PHOTOEDIT_TOOLBAR_CANCEL_OR_ICON");
        v121 = [v119 initWithTitle:v120 style:0 target:self action:sel__handleCancelButton_];
        cancelButtonItem = self->_cancelButtonItem;
        self->_cancelButtonItem = v121;

        v123 = PULocalizedString(@"PHOTOEDIT_TOOLBAR_CANCEL_ACCESSIBILITY");
        [(UIBarButtonItem *)self->_cancelButtonItem setAccessibilityLabel:v123];

        if ((MEMORY[0x1B8C6D660]() & 1) == 0)
        {
          v124 = [(PUPhotoEditViewController *)self cancelConfirmationAlert];

          if (v124)
          {
            v125 = [(PUPhotoEditViewController *)self cancelConfirmationAlert];
            v126 = [v125 popoverPresentationController];
            [v126 setSourceView:self->_cancelButton];

            v127 = [(PUPhotoEditViewController *)self cancelConfirmationAlert];
            v128 = [v127 popoverPresentationController];
            [(PUPhotoEditNotchButton *)self->_cancelButton bounds];
            [v128 setSourceRect:?];
          }
        }
      }

      [(PUPhotoEditViewController *)self _updateToolbarButtonPositions];
      [(PUPhotoEditViewController *)self _updateZoomButton];

      goto LABEL_120;
    }

    v44 = objc_alloc(MEMORY[0x1E69C3BE0]);
    v45 = [v44 initWithFrame:{*MEMORY[0x1E696AA80], *(MEMORY[0x1E696AA80] + 8), *(MEMORY[0x1E696AA80] + 16), *(MEMORY[0x1E696AA80] + 24)}];
    v46 = self->_assetTypeBadge;
    self->_assetTypeBadge = v45;

    [(PXUIAssetBadgeView *)self->_assetTypeBadge setStyle:3];
    [(PXUIAssetBadgeView *)self->_assetTypeBadge setTranslatesAutoresizingMaskIntoConstraints:0];
    if (!v7)
    {
LABEL_51:
      memset(buf, 0, 32);
      PXAssetBadgeInfoCreateWithBadges();
      v156[0] = *buf;
      v156[1] = *&buf[16];
      [(PXUIAssetBadgeView *)self->_assetTypeBadge setBadgeInfo:v156];
      v52 = [(PUPhotoEditViewController *)self view];
      [v52 addSubview:self->_assetTypeBadge];

      v53 = [(PUPhotoEditViewController *)self view];
      [v53 setNeedsUpdateConstraints];

      [(PXUIAssetBadgeView *)self->_assetTypeBadge setAlpha:0.0];
      goto LABEL_52;
    }

    v47 = [(PUPhotoEditViewController *)self photo];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v50 = 0;
      goto LABEL_50;
    }

    v48 = [(PUPhotoEditViewController *)self photo];
    if (v48)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_44:
        v49 = v48;

        v50 = v49;
LABEL_50:

        [v50 RAWBadgeAttributes];
        goto LABEL_51;
      }

      v134 = [MEMORY[0x1E696AAA8] currentHandler];
      v131 = objc_opt_class();
      v130 = NSStringFromClass(v131);
      v132 = [v48 px_descriptionForAssertionMessage];
      [v134 handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:3240 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.photo", v130, v132}];
    }

    else
    {
      v134 = [MEMORY[0x1E696AAA8] currentHandler];
      v129 = objc_opt_class();
      v130 = NSStringFromClass(v129);
      [v134 handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:3240 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.photo", v130}];
    }

    goto LABEL_44;
  }

LABEL_120:
  objc_destroyWeak(&location);
}

void __58__PUPhotoEditViewController__reloadToolbarButtonsIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 localizedName];
  v4 = [v3 length];

  v5 = *(*(a1 + 32) + 8);
  if (v4 > *(v5 + 24))
  {
    *(v5 + 24) = v4;
  }
}

void __58__PUPhotoEditViewController__reloadToolbarButtonsIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  if ([v11 toolControllerTag] != 1006)
  {
    v3 = [*(a1 + 32) _newToolButtonForTool:v11];
    v4 = 30.0;
    if ([*(a1 + 32) showsLabelsForToolButtons])
    {
      if (*(*(*(a1 + 64) + 8) + 24) >= 10)
      {
        if ([*(a1 + 40) count] >= 7)
        {
          v4 = 30.0;
        }

        else
        {
          v4 = 40.0;
        }
      }

      v5 = 0x4048000000000000;
    }

    else
    {
      v5 = 0x4043000000000000;
    }

    v6 = *&v5;
    v7 = [v3 widthAnchor];
    v8 = [v7 constraintEqualToConstant:v4];
    [v8 setActive:1];

    v9 = [v3 heightAnchor];
    v10 = [v9 constraintEqualToConstant:v6];
    [v10 setActive:1];

    [*(a1 + 48) addObject:v3];
    [*(a1 + 56) addObject:v3];
    [v3 setSelected:*(*(a1 + 32) + 1016) == v11];
    [v3 setAvailable:{objc_msgSend(v11, "enabled")}];
  }
}

void __58__PUPhotoEditViewController__reloadToolbarButtonsIfNeeded__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleShowOriginalButton:v3];
}

void __58__PUPhotoEditViewController__reloadToolbarButtonsIfNeeded__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleUndoButton:v3];
}

void __58__PUPhotoEditViewController__reloadToolbarButtonsIfNeeded__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRedoButton:v3];
}

void __58__PUPhotoEditViewController__reloadToolbarButtonsIfNeeded__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePluginButton:v3];
}

void __58__PUPhotoEditViewController__reloadToolbarButtonsIfNeeded__block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleMarkupButton:v3];
}

void __58__PUPhotoEditViewController__reloadToolbarButtonsIfNeeded__block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleZoomButton:v3];
}

- (BOOL)_markupGetsItsOwnButton
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = [(PUPhotoEditViewController *)self photoEditSpec];
  v4 = [v3 currentLayoutStyle];

  currentEditingTool = self->_currentEditingTool;
  cropController = self->_cropController;
  if (v4 == 1 && currentEditingTool == cropController)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    LODWORD(v7) = ![(PUPhotoEditViewController *)self _shouldHideToolsForQuickCrop];
  }

  v8 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    if (v4 == 1)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    if (currentEditingTool == cropController)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v27 = 138413058;
    if ([(PUPhotoEditViewController *)self _shouldHideToolsForQuickCrop])
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v28 = v9;
    v29 = 2112;
    v30 = v10;
    v31 = 2112;
    v32 = v11;
    v33 = 2112;
    v34 = v12;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "PUPhotoEditViewController _markupGetsItsOwnButton: %@ (isSmallZoomedDevice: %@) (isCropTool:%@) (_shouldHideToolsForQuickCrop:%@)", &v27, 0x2Au);
  }

  if (MEMORY[0x1B8C6D660](v13))
  {
    v14 = [(PUPhotoEditToolController *)self->_currentEditingTool trailingToolbarViews];
    v15 = v14;
    if (v7)
    {
      if ([v14 count])
      {
        v7 = PLPhotoEditGetLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v15 count];
          v27 = 134217984;
          v28 = v16;
          _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "PUPhotoEditViewController _markupGetsItsOwnButton set to no - trailingToolViews.count: %ld", &v27, 0xCu);
        }
      }

      else
      {
        v17 = [(PUPhotoEditViewController *)self layoutOrientation];
        v18 = [(PUPhotoEditViewController *)self view];
        [v18 bounds];
        v20 = [PUPhotoEditLayoutSupport requiresCompactNavBarForLayoutOrientation:v17 viewWidth:v19];

        if (!v20)
        {
          LOBYTE(v7) = 1;
          goto LABEL_30;
        }

        v7 = PLPhotoEditGetLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [(PUPhotoEditViewController *)self layoutOrientation];
          v22 = [(PUPhotoEditViewController *)self view];
          [v22 bounds];
          v24 = [PUPhotoEditLayoutSupport requiresCompactNavBarForLayoutOrientation:v21 viewWidth:v23];
          v25 = @"NO";
          if (v24)
          {
            v25 = @"YES";
          }

          v27 = 138412290;
          v28 = v25;
          _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "PUPhotoEditViewController _markupGetsItsOwnButton set to no - requiresCompactNavBarForLayoutOrientation: %@", &v27, 0xCu);
        }
      }

      LOBYTE(v7) = 0;
    }

LABEL_30:
  }

  return v7;
}

- (BOOL)_shouldHideToolsForQuickCrop
{
  v2 = [(PUPhotoEditViewController *)self _isQuickCrop];
  if (v2)
  {
    v3 = +[PUOneUpSettings sharedInstance];
    v4 = [v3 quickCropHideOtherToolsInEdit];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (void)_updateToolbarsContentPadding
{
  v3 = [(PUPhotoEditViewController *)self view];
  [v3 safeAreaInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v26 = v10;

  v11 = *MEMORY[0x1E69DDCE0];
  v12 = *(MEMORY[0x1E69DDCE0] + 8);
  v13 = *(MEMORY[0x1E69DDCE0] + 16);
  v14 = *(MEMORY[0x1E69DDCE0] + 24);
  v15 = [(PUPhotoEditViewController *)self traitCollection];
  v16 = [v15 userInterfaceIdiom];

  v17 = [(PUPhotoEditViewController *)self layoutOrientation];
  v18 = v17 - 2;
  v19 = v9 > 0.0 && v16 == 1;
  v20 = v9 + 15.0;
  if (!v19)
  {
    v20 = v9;
  }

  if (v17 == 1)
  {
    v21 = v5;
  }

  else
  {
    v20 = v13;
    v21 = v11;
  }

  if (v18 >= 2)
  {
    v22 = v20;
  }

  else
  {
    v22 = v13;
  }

  if (v18 >= 2)
  {
    v23 = v21;
  }

  else
  {
    v23 = v5;
  }

  if (v18 < 2)
  {
    v24 = v26;
  }

  else
  {
    v7 = v12;
    v24 = v14;
  }

  if ((MEMORY[0x1B8C6D660]() & 1) == 0)
  {
    [(PUPhotoEditToolbar *)self->_mainToolbar setContentPadding:v11, v12, v22, v24];
  }

  secondaryToolbar = self->_secondaryToolbar;

  [(PUPhotoEditToolbar *)secondaryToolbar setContentPadding:v23, v7, v13, v24];
}

- (BOOL)_actionButtonsGoInTopToolbar
{
  if (MEMORY[0x1B8C6D660](self, a2) && (v3 = -[PUPhotoEditViewController layoutOrientation](self, "layoutOrientation"), -[PUPhotoEditViewController view](self, "view"), v4 = objc_claimAutoreleasedReturnValue(), [v4 bounds], v6 = +[PUPhotoEditLayoutSupport requiresCompactNavBarForLayoutOrientation:viewWidth:](PUPhotoEditLayoutSupport, "requiresCompactNavBarForLayoutOrientation:viewWidth:", v3, v5), v4, v6))
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v8 = [(PUPhotoEditViewController *)self layoutOrientation];
    v9 = [(PUPhotoEditViewController *)self view];
    [v9 bounds];
    v7 = ![PUPhotoEditLayoutSupport doneCancelButtonsInNotchAreaForLayoutOrientation:v8 viewWidth:v10];
  }

  return v7;
}

- (void)_updateToolbarsAnimated:(BOOL)a3
{
  v3 = a3;
  v256[1] = *MEMORY[0x1E69E9840];
  v5 = [(PUPhotoEditViewController *)self photoEditSpec];
  v6 = [v5 isValid];

  if (!v6 || self->_updatingToolbars)
  {
    return;
  }

  [(PUPhotoEditViewController *)self _loadToolsIfNeeded];
  self->_updatingToolbars = 1;
  v7 = [(PUPhotoEditViewController *)self view];
  if (!self->_mainToolbar && (MEMORY[0x1B8C6D660]() & 1) == 0)
  {
    v8 = objc_alloc_init(PUPhotoEditToolbar);
    mainToolbar = self->_mainToolbar;
    self->_mainToolbar = v8;

    [(PUPhotoEditToolbar *)self->_mainToolbar setDelegate:self];
    [(PUPhotoEditToolbar *)self->_mainToolbar setupWithLayoutOrientation:[(PUPhotoEditViewController *)self layoutOrientation]];
    [v7 addSubview:self->_mainToolbar];
    [(PUPhotoEditViewController *)self _updateSubviewsOrdering];
    [v7 setNeedsUpdateConstraints];
    v10 = [(PUPhotoEditViewController *)self photoEditSpec];
    [v10 toolbarLongSideMargin];
    [(PUPhotoEditToolbar *)self->_mainToolbar setLongSideMargin:?];

    if ([(PUPhotoEditViewController *)self layoutOrientation]== 1)
    {
      v11 = [(PUPhotoEditViewController *)self traitCollection];
      v12 = [v11 userInterfaceIdiom];

      if (!v12)
      {
        [(PUPhotoEditToolbar *)self->_mainToolbar setUseiPhonePrimaryPortraitHeight:1];
      }
    }
  }

  if (!self->_swiftToolbarView && MEMORY[0x1B8C6D660]())
  {
    [(PUPhotoEditViewController *)self setupSwiftToolbar];
    [(PUPhotoEditViewController *)self _updateSubviewsOrdering];
    [v7 setNeedsUpdateConstraints];
  }

  if (!self->_mainToolbarShadow)
  {
    v13 = [[PUPhotoEditShadowView alloc] initWithType:0];
    mainToolbarShadow = self->_mainToolbarShadow;
    self->_mainToolbarShadow = v13;

    [(PUPhotoEditShadowView *)self->_mainToolbarShadow setAlpha:0.0];
    [v7 addSubview:self->_mainToolbarShadow];
  }

  if (!self->_toolControlShadow)
  {
    v15 = [[PUPhotoEditShadowView alloc] initWithType:1];
    toolControlShadow = self->_toolControlShadow;
    self->_toolControlShadow = v15;

    [(PUPhotoEditShadowView *)self->_toolControlShadow setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PUPhotoEditShadowView *)self->_toolControlShadow setAlpha:0.0];
    v17 = [(PUPhotoEditViewController *)self view];
    [v17 addSubview:self->_toolControlShadow];
  }

  v18 = MEMORY[0x1B8C6D660]();
  v19 = v18;
  if (!self->_secondaryToolbar && (v18 & 1) == 0)
  {
    v20 = objc_alloc_init(PUPhotoEditButtonCenteredToolbar);
    secondaryToolbar = self->_secondaryToolbar;
    self->_secondaryToolbar = v20;

    [(PUPhotoEditToolbar *)self->_secondaryToolbar setDelegate:self];
    v22 = [(PUPhotoEditViewController *)self photoEditSpec];
    [(PUPhotoEditToolbar *)self->_secondaryToolbar setPhotoEditSpec:v22];

    [(PUPhotoEditToolbar *)self->_secondaryToolbar setupWithLayoutOrientation:[(PUPhotoEditViewController *)self layoutOrientation]];
    [v7 addSubview:self->_secondaryToolbar];
    if ([(PUPhotoEditViewController *)self isIpadLayout])
    {
      [(PUPhotoEditToolbar *)self->_secondaryToolbar setUseLargeShortSideHeight:1];
    }
  }

  [(PUPhotoEditViewController *)self _updateSubviewsOrdering];
  [v7 setNeedsUpdateConstraints];
  v23 = self->_secondaryToolbar;
  if (v23)
  {
    [(PUPhotoEditButtonCenteredToolbar *)v23 setAlpha:0.0];
    if (v3)
    {
      v246[0] = MEMORY[0x1E69E9820];
      v246[1] = 3221225472;
      v246[2] = __53__PUPhotoEditViewController__updateToolbarsAnimated___block_invoke;
      v246[3] = &unk_1E7B80DD0;
      v246[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v246 animations:0.2];
    }

    else
    {
      [(PUPhotoEditButtonCenteredToolbar *)self->_secondaryToolbar setAlpha:1.0];
    }
  }

  [(PUPhotoEditViewController *)self _updateToolbarShadowAlpha];
  if ((v19 & 1) == 0)
  {
    [(PUPhotoEditViewController *)self _clearBadgeConstraints];
    if (self->_currentToolViewConstraints)
    {
      [MEMORY[0x1E696ACD8] deactivateConstraints:?];
      currentToolViewConstraints = self->_currentToolViewConstraints;
      self->_currentToolViewConstraints = 0;

      v25 = [(PUPhotoEditViewController *)self view];
      [v25 setNeedsUpdateConstraints];
    }
  }

  v215 = v3;
  v26 = [(PUPhotoEditViewController *)self editSource];
  if ([v26 mediaType] != 3)
  {

LABEL_30:
    if (![(PUPhotoEditViewController *)self isStandardVideo])
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  v27 = [(PUPhotoEditViewController *)self photo];
  v28 = [v27 isLivePhotoVisibilityAdjustmentAllowed];

  if ((v28 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_31:
  v29 = [(PUPhotoEditViewController *)self editSourceContentEditingInput];

  if (v29)
  {
    v30 = self;
    if (!self->_mediaToolController)
    {
      v31 = objc_alloc_init(PUPhotoEditMediaToolController);
      mediaToolController = self->_mediaToolController;
      self->_mediaToolController = v31;

      [(PUPhotoEditMediaToolController *)self->_mediaToolController setBackdropViewGroupName:@"PUPhotoEditToolbarGroupName"];
      [(PUPhotoEditViewController *)self _updateSubviewsOrdering];
      [v7 setNeedsUpdateConstraints];
      v33 = self->_mediaToolController;
      v34 = [(PUPhotoEditViewController *)self aggregateSession];
      [(PUPhotoEditToolController *)v33 setAggregateSession:v34];

      [(PUPhotoEditToolController *)self->_mediaToolController setDelegate:self];
      [(PUPhotoEditMediaToolController *)self->_mediaToolController setLayoutOrientation:[(PUPhotoEditViewController *)self layoutOrientation] withTransitionCoordinator:0];
      coreToolButtons = self->_coreToolButtons;
      self->_coreToolButtons = 0;

      coreToolButtonViews = self->_coreToolButtonViews;
      self->_coreToolButtonViews = 0;

      toolTagLabelMap = self->_toolTagLabelMap;
      self->_toolTagLabelMap = 0;

      v38 = 0;
      self->_toolbarButtonsValid = 0;
      v39 = 1;
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_34:
  v40 = self->_mediaToolController;
  v30 = self;
  if (v40)
  {
    v38 = self->_currentEditingTool == v40;
    [(PUPhotoEditMediaToolController *)v40 removeFromParentViewController];
    v41 = self->_coreToolButtons;
    self->_coreToolButtons = 0;

    v42 = self->_coreToolButtonViews;
    self->_coreToolButtonViews = 0;

    v43 = self->_toolTagLabelMap;
    self->_toolTagLabelMap = 0;

    v44 = self->_mediaToolController;
    self->_mediaToolController = 0;

    v39 = 0;
    goto LABEL_37;
  }

LABEL_36:
  v39 = 0;
  v38 = 0;
LABEL_37:
  portraitToolController = v30->_portraitToolController;
  v220 = v38;
  if (v30->_shouldShowPortraitTool)
  {
    if (!portraitToolController)
    {
      v46 = objc_alloc_init(PUPhotoEditPortraitToolController);
      v47 = v30->_portraitToolController;
      v30->_portraitToolController = v46;

      [(PUPhotoEditToolController *)v30->_portraitToolController setDelegate:v30];
      [(PUPhotoEditPortraitToolController *)v30->_portraitToolController setBackdropViewGroupName:@"PUPhotoEditToolbarGroupName"];
      v48 = [(PUPhotoEditPortraitToolController *)v30->_portraitToolController view];
      [(PUPhotoEditPortraitToolController *)v30->_portraitToolController setLayoutOrientation:[(PUPhotoEditViewController *)v30 layoutOrientation] withTransitionCoordinator:0];
      v49 = v30->_coreToolButtons;
      v30->_coreToolButtons = 0;

      v50 = v30->_coreToolButtonViews;
      v30->_coreToolButtonViews = 0;

      v51 = v30->_toolTagLabelMap;
      v30->_toolTagLabelMap = 0;

      v30->_toolbarButtonsValid = 0;
      v39 = 1;
    }
  }

  else if (portraitToolController)
  {
    v52 = v30->_coreToolButtons;
    v30->_coreToolButtons = 0;

    v53 = v30->_coreToolButtonViews;
    v30->_coreToolButtonViews = 0;

    v54 = v30->_toolTagLabelMap;
    v30->_toolTagLabelMap = 0;

    v55 = v30->_portraitToolController;
    v30->_portraitToolController = 0;
  }

  v225 = v30;
  photoStylesToolController = v30->_photoStylesToolController;
  v217 = v39;
  if (v30->_shouldShowStylesTool)
  {
    v57 = v30;
    if (!photoStylesToolController)
    {
      v58 = objc_alloc_init(_TtC15PhotosUIPrivate26PUPhotoStyleToolController);
      v59 = v30->_photoStylesToolController;
      v30->_photoStylesToolController = v58;

      [(PUPhotoEditToolController *)v30->_photoStylesToolController setDelegate:v30];
      v60 = [(PUPhotoStyleToolController *)v30->_photoStylesToolController view];
      [(PUPhotoStyleToolController *)v30->_photoStylesToolController setLayoutOrientation:[(PUPhotoEditViewController *)v30 layoutOrientation] withTransitionCoordinator:0];
      v61 = v30->_coreToolButtons;
      v30->_coreToolButtons = 0;

      v62 = v30->_coreToolButtonViews;
      v30->_coreToolButtonViews = 0;

      v63 = v30->_toolTagLabelMap;
      v30->_toolTagLabelMap = 0;

      v30->_toolbarButtonsValid = 0;
      v217 = 1;
    }
  }

  else
  {
    v57 = v30;
    if (photoStylesToolController)
    {
      v64 = v30->_coreToolButtons;
      v30->_coreToolButtons = 0;

      v65 = v30->_coreToolButtonViews;
      v30->_coreToolButtonViews = 0;

      v66 = v30->_toolTagLabelMap;
      v30->_toolTagLabelMap = 0;

      v67 = v30->_photoStylesToolController;
      v30->_photoStylesToolController = 0;
    }
  }

  v214 = v7;
  if ([(PUPhotoEditViewController *)v57 isCinematicAudio]&& !v57->_audioToolController)
  {
    v72 = objc_alloc_init(_TtC15PhotosUIPrivate21PUAudioToolController);
    audioToolController = v57->_audioToolController;
    v57->_audioToolController = v72;

    [(PUPhotoEditToolController *)v57->_audioToolController setDelegate:v57];
    v74 = [(PUAudioToolController *)v57->_audioToolController view];
    [(PUPhotoEditToolController *)v57->_audioToolController setLayoutOrientation:[(PUPhotoEditViewController *)v57 layoutOrientation] withTransitionCoordinator:0];
    v75 = v57->_coreToolButtons;
    v57->_coreToolButtons = 0;

    v76 = v57->_coreToolButtonViews;
    v57->_coreToolButtonViews = 0;

    v77 = v57->_toolTagLabelMap;
    v57->_toolTagLabelMap = 0;

    v57->_toolbarButtonsValid = 0;
    v217 = 1;
  }

  else if (![(PUPhotoEditViewController *)v57 isCinematicAudio]&& v57->_audioToolController)
  {
    v68 = v57->_coreToolButtons;
    v57->_coreToolButtons = 0;

    v69 = v57->_coreToolButtonViews;
    v57->_coreToolButtonViews = 0;

    v70 = v57->_toolTagLabelMap;
    v57->_toolTagLabelMap = 0;

    v71 = v57->_audioToolController;
    v57->_audioToolController = 0;
  }

  if (v57->_audioToolController && ![(NSArray *)v57->__allTools containsObject:?])
  {
    v256[0] = v57->_audioToolController;
    v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:v256 count:1];
    v79 = [v78 arrayByAddingObjectsFromArray:v57->__allTools];
    allTools = v57->__allTools;
    v57->__allTools = v79;
  }

  if (v57->_mediaToolController && ![(NSArray *)v57->__allTools containsObject:?])
  {
    v255 = v57->_mediaToolController;
    v81 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v255 count:1];
    v82 = [v81 arrayByAddingObjectsFromArray:v57->__allTools];
    v83 = v57->__allTools;
    v57->__allTools = v82;
  }

  if (v57->_portraitToolController && ![(NSArray *)v57->__allTools containsObject:?])
  {
    v254 = v57->_portraitToolController;
    v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v254 count:1];
    v85 = [v84 arrayByAddingObjectsFromArray:v57->__allTools];
    v86 = v57->__allTools;
    v57->__allTools = v85;
  }

  if (v57->_photoStylesToolController)
  {
    p_allTools = &v57->__allTools;
    if (![(NSArray *)v57->__allTools containsObject:?])
    {
      v88 = [MEMORY[0x1E695DF70] arrayWithArray:*p_allTools];
      [v88 removeObject:v57->_filtersController];
      [v88 insertObject:v57->_photoStylesToolController atIndex:0];
      [(PUPhotoEditToolController *)v57->_photoStylesToolController setEnabled:v57->_shouldEnableStylesTool];
      v220 |= !v57->_shouldEnableStylesTool;
      goto LABEL_69;
    }

    if (v57->_photoStylesToolController)
    {
      goto LABEL_70;
    }
  }

  p_allTools = &v57->__allTools;
  if ([(NSArray *)v57->__allTools containsObject:v57->_filtersController]&& [(PUPhotoEditViewController *)v57 isOriginalStyleable])
  {
    v88 = [MEMORY[0x1E695DF70] arrayWithArray:*p_allTools];
    [v88 removeObject:v57->_filtersController];
LABEL_69:
    v89 = [MEMORY[0x1E695DEC8] arrayWithArray:v88];
    v90 = *p_allTools;
    *p_allTools = v89;
  }

LABEL_70:
  [(PUPhotoEditViewController *)v57 _updateToolbarsContentPadding];
  moreButton = v57->_moreButton;
  v57->_moreButton = 0;

  markupButton = v57->_markupButton;
  v57->_markupButton = 0;

  showOriginalButton = v57->_showOriginalButton;
  v57->_showOriginalButton = 0;

  v244 = 0u;
  v245 = 0u;
  v242 = 0u;
  v243 = 0u;
  v94 = [(PUPhotoEditViewController *)v57 _allTools];
  v95 = [v94 countByEnumeratingWithState:&v242 objects:v253 count:16];
  if (v95)
  {
    v96 = v95;
    v97 = *v243;
    do
    {
      for (i = 0; i != v96; ++i)
      {
        if (*v243 != v97)
        {
          objc_enumerationMutation(v94);
        }

        v99 = *(*(&v242 + 1) + 8 * i);
        v100 = [(PUPhotoEditViewController *)v225 photoEditSpec];
        [v99 setPhotoEditSpec:v100];

        [v99 reloadToolbarButtons:1];
      }

      v96 = [v94 countByEnumeratingWithState:&v242 objects:v253 count:16];
    }

    while (v96);
  }

  v101 = v225;
  [(PUPhotoEditViewController *)v225 _reloadToolbarButtonsIfNeeded];
  [(PUPhotoEditViewController *)v225 _updateToolbarButtonPositions];
  if ([(PUPhotoEditViewController *)v225 isRunningAutoCalculators]|| ([(PUPhotoEditViewController *)v225 editSourceContentEditingInput], v102 = objc_claimAutoreleasedReturnValue(), v102, !v102))
  {
    v104 = 0;
    v103 = 1;
  }

  else
  {
    v103 = [(PUPhotoEditViewController *)v225 _shouldHideToolsForQuickCrop];
    v104 = 1;
  }

  v105 = [(PUPhotoEditToolPickerController *)v225->_toolPickerController view];
  [v105 setHidden:v103];

  toolPickerController = v225->_toolPickerController;
  if (toolPickerController)
  {
    v107 = [(PUPhotoEditToolPickerController *)toolPickerController view];
    v252 = v107;
    v216 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v252 count:1];
  }

  else
  {
    v216 = MEMORY[0x1E695E0F0];
  }

  v108 = v225->_secondaryLeadingViews;
  v109 = v225->_secondaryTrailingViews;
  v110 = v225->_mainActionButton;
  v111 = v225->_cancelButton;
  v112 = [(PUPhotoEditViewController *)v225 photoEditSpec];
  [v112 toolbarLongSideMargin];
  v114 = v113;

  [(PUPhotoEditToolbar *)v225->_secondaryToolbar setTopActionButtonPadding:0.0];
  if ([(PUPhotoEditViewController *)v225 _actionButtonsGoInTopToolbar])
  {
    cancelButton = v225->_cancelButton;
    v115 = [MEMORY[0x1E695DEC8] arrayWithObjects:&cancelButton count:1];
    v221 = [v115 arrayByAddingObjectsFromArray:v108];

    v116 = [(PUPhotoEditViewController *)v225 traitCollection];
    v118 = ([v116 userInterfaceIdiom] == 1 || -[PUPhotoEditViewController layoutOrientation](v225, "layoutOrientation") == 3 || -[PUPhotoEditViewController layoutOrientation](v225, "layoutOrientation") == 2) && (currentEditingTool = v225->_currentEditingTool) != 0 && currentEditingTool != v225->_cropController;

    if (MEMORY[0x1B8C6D660]())
    {
      v121 = v111;
      v122 = [(PUPhotoEditViewController *)v225 layoutOrientation];
      [(PUPhotoEditViewController *)v225 view];
      v218 = v110;
      v123 = v104;
      v125 = v124 = v109;
      [v125 bounds];
      v126 = v122;
      v111 = v121;
      v128 = [PUPhotoEditLayoutSupport requiresCompactNavBarForLayoutOrientation:v126 viewWidth:v127];

      v109 = v124;
      v104 = v123;
      v110 = v218;
      v118 &= !v128;
    }

    v129 = v104 ^ 1;
    if (!v225->_zoomButton)
    {
      v129 = 1;
    }

    if (v129 & 1) == 0 && (v118)
    {
      v130 = [(NSArray *)v109 arrayByAddingObject:?];

      v109 = v130;
    }

    v131 = [(NSArray *)v109 arrayByAddingObject:v225->_mainActionButton];

    if ((MEMORY[0x1B8C6D660]() & 1) == 0)
    {
      [(PUPhotoEditToolbar *)v225->_mainToolbar setLayoutDirection:[(PUPhotoEditViewController *)v225 currentToolPickerLayoutDirection]];
    }

    [(PUPhotoEditToolPickerController *)v225->_toolPickerController setLayoutDirection:[(PUPhotoEditViewController *)v225 currentToolPickerLayoutDirection]];
    v111 = [(PUPhotoEditViewController *)v225 photoEditSpec];
    [(PUPhotoEditNotchButton *)v111 toolbarLongSideWideMargin];
    v114 = v132;
    v109 = v131;
    v108 = v221;
  }

  else
  {
    if (!v111 || !v110)
    {
      goto LABEL_108;
    }

    [(PUPhotoEditNotchButton *)v111 setTranslatesAutoresizingMaskIntoConstraints:0];
    if (MEMORY[0x1B8C6D660]([(PUPhotoEditNotchButton *)v110 setTranslatesAutoresizingMaskIntoConstraints:0]))
    {
      v119 = [(PUPhotoEditViewController *)v225 view];
      [v119 addSubview:v111];

      v120 = [(PUPhotoEditViewController *)v225 view];
      [v120 addSubview:v110];
    }

    else
    {
      [(PUPhotoEditButtonCenteredToolbar *)v225->_secondaryToolbar addSubview:v111];
      [(PUPhotoEditButtonCenteredToolbar *)v225->_secondaryToolbar addSubview:v110];
    }
  }

  v111 = 0;
  v110 = 0;
LABEL_108:
  v133 = MEMORY[0x1B8C6D660]();
  if (v133)
  {
    v133 = [(NSArray *)v109 containsObject:v225->_zoomButton];
    if (v133)
    {
      v134 = [(NSArray *)v109 indexOfObject:v225->_zoomButton];
      [MEMORY[0x1E695DF70] arrayWithArray:v109];
      v136 = v135 = v111;
      [v136 removeObjectAtIndex:v134];
      [v136 insertObject:v225->_zoomButton atIndex:0];
      v137 = [MEMORY[0x1E695DEC8] arrayWithArray:v136];

      v111 = v135;
      v109 = v137;
    }
  }

  if (v225->_mainToolbar)
  {
    v133 = MEMORY[0x1B8C6D660]();
    if ((v133 & 1) == 0)
    {
      v133 = [(PUPhotoEditToolbar *)v225->_mainToolbar setToolButtons:v216 buttonSpacing:1 mainActionButton:v110 secondaryActionButton:v111];
    }
  }

  if (MEMORY[0x1B8C6D660](v133))
  {
    v138 = [(PUPhotoEditViewController *)v225 swiftToolbarController];
    [v138 updateForToolControllers:v225->__allTools];
  }

  v213 = v111;
  v222 = v109;
  v219 = v110;
  if ((MEMORY[0x1B8C6D660]() & 1) == 0)
  {
    v187 = [(PUPhotoEditViewController *)v225 layoutOrientation];
    v188 = [(PUPhotoEditViewController *)v225 view];
    [PUPhotoEditLayoutSupport topToolbarVerticalOffsetForLayoutOrientation:v187 view:v188];
    [(PUPhotoEditToolbar *)v225->_secondaryToolbar setTopActionButtonPadding:?];

    [(PUPhotoEditButtonCenteredToolbar *)v225->_secondaryToolbar setCenterView:v225->_secondaryCenterView leadingViews:v108 trailingViews:v222];
    [(PUPhotoEditToolbar *)v225->_secondaryToolbar setLongSideMargin:v114];
    v164 = v214;
    v165 = v215;
    goto LABEL_167;
  }

  v139 = [(PUPhotoEditViewController *)v225 navigationItem];
  [v139 setTitleView:0];

  v140 = [(PUPhotoEditViewController *)v225 navigationItem];
  [v140 setLeftBarButtonItems:0];

  v141 = [(PUPhotoEditViewController *)v225 navigationItem];
  [v141 setRightBarButtonItems:0];

  v224 = [MEMORY[0x1E695DF70] array];
  v223 = [MEMORY[0x1E695DF70] array];
  v238 = 0u;
  v239 = 0u;
  v240 = 0u;
  v241 = 0u;
  v142 = v108;
  v143 = [(NSArray *)v142 countByEnumeratingWithState:&v238 objects:v250 count:16];
  if (v143)
  {
    v144 = v143;
    v145 = *v239;
    do
    {
      v146 = 0;
      do
      {
        if (*v239 != v145)
        {
          objc_enumerationMutation(v142);
        }

        v147 = *(*(&v238 + 1) + 8 * v146);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v148 = v147;
          v149 = [(PUPhotoEditNotchButton *)v148 isEnabled];
        }

        else
        {
          v148 = 0;
          v149 = 1;
        }

        if (v147 != v101->_cancelButton)
        {
          v150 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v147];
          [v224 addObject:v150];
          if (!v148)
          {
            goto LABEL_128;
          }

LABEL_127:
          [(PUPhotoEditNotchButton *)v148 setEnabled:v149];
          [(UIBarButtonItem *)v150 setEnabled:v149];
          goto LABEL_128;
        }

        v150 = v101->_cancelButtonItem;
        [v224 addObject:v150];
        v151 = [MEMORY[0x1E69DC708] fixedSpaceItemOfWidth:0.0];
        [v224 addObject:v151];

        v101 = v225;
        if (v148)
        {
          goto LABEL_127;
        }

LABEL_128:

        ++v146;
      }

      while (v144 != v146);
      v152 = [(NSArray *)v142 countByEnumeratingWithState:&v238 objects:v250 count:16];
      v144 = v152;
    }

    while (v152);
  }

  v236 = 0u;
  v237 = 0u;
  v234 = 0u;
  v235 = 0u;
  v153 = [(NSArray *)v222 reverseObjectEnumerator];
  v154 = [v153 countByEnumeratingWithState:&v234 objects:v249 count:16];
  if (!v154)
  {
    goto LABEL_149;
  }

  v155 = v154;
  v156 = *v235;
  do
  {
    v157 = 0;
    do
    {
      if (*v235 != v156)
      {
        objc_enumerationMutation(v153);
      }

      v158 = *(*(&v234 + 1) + 8 * v157);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v159 = v158;
        v160 = [(PUPhotoEditNotchButton *)v159 isEnabled];
      }

      else
      {
        v159 = 0;
        v160 = 1;
      }

      if (v158 != v101->_mainActionButton)
      {
        v161 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v158];
        [v223 addObject:v161];
        if (!v159)
        {
          goto LABEL_144;
        }

LABEL_143:
        [(PUPhotoEditNotchButton *)v159 setEnabled:v160];
        [(UIBarButtonItem *)v161 setEnabled:v160];
        goto LABEL_144;
      }

      v161 = v101->_mainActionButtonItem;
      [v223 addObject:v161];
      v162 = [MEMORY[0x1E69DC708] fixedSpaceItemOfWidth:0.0];
      [v223 addObject:v162];

      v101 = v225;
      if (v159)
      {
        goto LABEL_143;
      }

LABEL_144:

      ++v157;
    }

    while (v155 != v157);
    v163 = [v153 countByEnumeratingWithState:&v234 objects:v249 count:16];
    v155 = v163;
  }

  while (v163);
LABEL_149:

  v164 = v214;
  v165 = v215;
  if (!v101->_secondaryCenterView)
  {
    goto LABEL_162;
  }

  if (!MEMORY[0x1B8C6D660]())
  {
    secondaryCenterView = v101->_secondaryCenterView;
LABEL_160:
    v183 = [(PUPhotoEditViewController *)v101 navigationItem];
    [v183 setTitleView:secondaryCenterView];
    goto LABEL_161;
  }

  v166 = [(PUPhotoEditViewController *)v101 outOfNavBarCenterView];

  if (v166)
  {
    v167 = [(PUPhotoEditViewController *)v101 outOfNavBarCenterView];
    [v167 removeFromSuperview];

    [(PUPhotoEditViewController *)v101 setOutOfNavBarCenterView:0];
  }

  v168 = [(PUPhotoEditViewController *)v101 layoutOrientation];
  v169 = [(PUPhotoEditViewController *)v101 view];
  [v169 bounds];
  v171 = [PUPhotoEditLayoutSupport requiresCompactNavBarForLayoutOrientation:v168 viewWidth:v170];

  v101 = v225;
  secondaryCenterView = v225->_secondaryCenterView;
  if (!v171)
  {
    goto LABEL_160;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PUPhotoEditViewController *)v225 setOutOfNavBarCenterView:v225->_secondaryCenterView];
    v173 = [(PUPhotoEditViewController *)v225 outOfNavBarCenterView];
    [v173 setTranslatesAutoresizingMaskIntoConstraints:0];

    v174 = [(PUPhotoEditViewController *)v225 view];
    v175 = [(PUPhotoEditViewController *)v225 outOfNavBarCenterView];
    [v174 addSubview:v175];

    v176 = [(PUPhotoEditViewController *)v225 outOfNavBarCenterView];
    v177 = [v176 centerXAnchor];
    v178 = [(PUPhotoEditViewController *)v225 view];
    v179 = [v178 centerXAnchor];
    v180 = [v177 constraintEqualToAnchor:v179];
    [v180 setActive:1];

    if (+[PUPhotoEditLayoutSupport isPhoneClassDevice])
    {
      v181 = [(PUPhotoEditViewController *)v225 navigationController];
      v182 = [v181 navigationBar];
      v183 = [v182 bottomAnchor];

      if (v183)
      {
        v184 = [(PUPhotoEditViewController *)v225 outOfNavBarCenterView];
        v185 = [v184 topAnchor];
        v186 = [v185 constraintEqualToAnchor:v183 constant:12.0];
        [v186 setActive:1];
        goto LABEL_197;
      }
    }

    else
    {
      v210 = [(PUPhotoEditViewController *)v225 view];
      v183 = [v210 safeAreaLayoutGuide];

      v184 = [(PUPhotoEditViewController *)v225 outOfNavBarCenterView];
      v185 = [v184 topAnchor];
      v186 = [v183 topAnchor];
      v211 = [v185 constraintEqualToAnchor:v186 constant:5.0];
      [v211 setActive:1];

LABEL_197:
    }

    v101 = v225;
    v165 = v215;
LABEL_161:
  }

LABEL_162:
  if ([v224 count])
  {
    v189 = [(PUPhotoEditViewController *)v101 navigationItem];
    [v189 setLeftBarButtonItems:v224];
  }

  if ([v223 count])
  {
    v190 = [(PUPhotoEditViewController *)v101 navigationItem];
    [v190 setRightBarButtonItems:v223];
  }

LABEL_167:
  [(PUPhotoEditViewController *)v101 _updateCancelButtonAnimated:v165];
  [(PUPhotoEditViewController *)v101 _updateMainActionButtonAnimated:v165];
  [(PUPhotoEditViewController *)v101 _updateUndoRedoButtonsAnimated:v165];
  [(PUPhotoEditViewController *)v101 _updateMoreButtonAnimated:v165];
  [(PUPhotoEditViewController *)v101 _updateShowOriginalButtonAnimated:v165];
  [(PUPhotoEditViewController *)v101 _updateKeyCommands];
  if (v217)
  {
    [(PUPhotoEditViewController *)v101 _setupToolsIfNeeded];
  }

  v191 = v101->_coreToolButtons;
  v192 = v191;
  if (v101->_redEyeButton)
  {
    v193 = [(NSArray *)v191 arrayByAddingObject:?];

    v192 = v193;
  }

  v232 = 0u;
  v233 = 0u;
  v230 = 0u;
  v231 = 0u;
  v194 = v192;
  v195 = [v194 countByEnumeratingWithState:&v230 objects:v248 count:16];
  if (v195)
  {
    v196 = v195;
    v197 = *v231;
    do
    {
      for (j = 0; j != v196; ++j)
      {
        if (*v231 != v197)
        {
          objc_enumerationMutation(v194);
        }

        [(PUPhotoEditViewController *)v101 configureEnablenessOfControlButton:*(*(&v230 + 1) + 8 * j) animated:v165 canVisuallyDisable:1];
      }

      v196 = [v194 countByEnumeratingWithState:&v230 objects:v248 count:16];
    }

    while (v196);
  }

  if (v220)
  {
    [(PUPhotoEditViewController *)v101 switchToEditingTool:v101->_adjustmentsController animated:0];
  }

  [(PUPhotoEditToolPickerController *)v101->_toolPickerController setSelectedToolTag:[(PUPhotoEditToolController *)v101->_currentEditingTool toolControllerTag]];
  currentlyHighlightedToolButtonTag = v101->_currentlyHighlightedToolButtonTag;
  if (currentlyHighlightedToolButtonTag != [(PUPhotoEditToolController *)v101->_currentEditingTool toolControllerTag])
  {
    v228 = 0u;
    v229 = 0u;
    v226 = 0u;
    v227 = 0u;
    v200 = v101->_coreToolButtons;
    v201 = [(NSArray *)v200 countByEnumeratingWithState:&v226 objects:v247 count:16];
    if (v201)
    {
      v202 = v201;
      v203 = *v227;
      do
      {
        for (k = 0; k != v202; ++k)
        {
          if (*v227 != v203)
          {
            objc_enumerationMutation(v200);
          }

          v205 = *(*(&v226 + 1) + 8 * k);
          v206 = [(PUPhotoEditToolController *)v101->_currentEditingTool toolControllerTag];
          v207 = v206 == [v205 tag];
          v101 = v225;
          v208 = v207;
          [v205 setSelected:v208];
        }

        v202 = [(NSArray *)v200 countByEnumeratingWithState:&v226 objects:v247 count:16];
      }

      while (v202);
    }

    v101->_currentlyHighlightedToolButtonTag = [(PUPhotoEditToolController *)v101->_currentEditingTool toolControllerTag];
  }

  if (MEMORY[0x1B8C6D660]())
  {
    v209 = [(PUPhotoEditViewController *)v101 swiftToolbarController];
    [v209 selectToolController:v101->_currentEditingTool];
  }

  v101->_updatingToolbars = 0;
}

- (void)_updateRenderedPreview
{
  currentEditingTool = self->_currentEditingTool;
  if (currentEditingTool && ![(PUPhotoEditToolController *)currentEditingTool wantsDefaultPreviewView])
  {
    v4 = 1;
  }

  else
  {
    v4 = [(UIImageView *)self->_placeholderImageView isHidden];
  }

  mediaView = self->_mediaView;

  [(NUMediaView *)mediaView setHidden:v4];
}

- (BOOL)isOriginalStyleable
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(PUPhotoEditViewController *)self photo];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 fetchSmartStyleExtendedProperties];

  v6 = [v5 originallySmartStyleable];
  v7 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(PUPhotoEditViewController *)self photo];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = [v9 uuid];
    v11 = v10;
    v12 = @"NO";
    if (v6)
    {
      v12 = @"YES";
    }

    v14 = 138543618;
    v15 = v10;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "PUPhotoEditViewController - Asset %{public}@: originallySmartStyleable %@", &v14, 0x16u);
  }

  return v6;
}

- (BOOL)currentAssetNeedsGainMap
{
  if ([MEMORY[0x1E69B3AB0] renderMeteorPlusAsHDR])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v4 = [(PUPhotoEditViewController *)self photo];
    v3 = ([v4 mediaSubtypes] >> 9) & 1;
  }

  return v3;
}

- (void)configureEnablenessOfControlButton:(id)a3 animated:(BOOL)a4 canVisuallyDisable:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [(PUPhotoEditViewController *)self resourceLoader];
  v10 = [v9 resourcesAvailability];

  v11 = (v10 < 4) & (0xBu >> (v10 & 0xF));
  progressEventBlockingView = self->_progressEventBlockingView;
  if (progressEventBlockingView)
  {
    v11 = 0;
  }

  v13 = v11 | !v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v8;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v8;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  v18 = 0;
  if (v10 <= 3 && ((8u >> (v10 & 0xF)) & 1) != 0 && !progressEventBlockingView)
  {
    v19 = [(PUPhotoEditViewController *)self valuesCalculator];
    v18 = [v19 hasImageValues];
  }

  if (v15)
  {
    [v15 setUserInteractionEnabled:v18];
    if (v13 != [v15 isEnabled])
    {
      if (v6)
      {
        v20 = 0.25;
      }

      else
      {
        v20 = 0.0;
      }

      v21 = MEMORY[0x1E69DD250];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __92__PUPhotoEditViewController_configureEnablenessOfControlButton_animated_canVisuallyDisable___block_invoke;
      v22[3] = &unk_1E7B7FF98;
      v23 = v15;
      v24 = v13;
      [v21 transitionWithView:v23 duration:5242880 options:v22 animations:0 completion:v20];
    }
  }

  else if (v17)
  {
    [v17 setEnabled:v13];
  }
}

- (id)barButtonItemForView:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!MEMORY[0x1B8C6D660]())
  {
    v14 = 0;
    goto LABEL_22;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [(PUPhotoEditViewController *)self navigationItem];
  v6 = [v5 leftBarButtonItems];

  v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
LABEL_4:
    v10 = 0;
    while (1)
    {
      if (*v24 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v23 + 1) + 8 * v10);
      v12 = [v11 customView];

      if (v12 == v4)
      {
        goto LABEL_20;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v8)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = [(PUPhotoEditViewController *)self navigationItem];
  v6 = [v13 rightBarButtonItems];

  v14 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = *v20;
LABEL_12:
    v16 = 0;
    while (1)
    {
      if (*v20 != v15)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v19 + 1) + 8 * v16);
      v17 = [v11 customView];

      if (v17 == v4)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v14)
        {
          goto LABEL_12;
        }

        goto LABEL_21;
      }
    }

LABEL_20:
    v14 = v11;
  }

LABEL_21:

LABEL_22:

  return v14;
}

- (void)setLayoutOrientation:(int64_t)a3 withTransitionCoordinator:(id)a4
{
  v71 = *MEMORY[0x1E69E9840];
  v6 = a4;
  layoutOrientation = self->_layoutOrientation;
  if (layoutOrientation != a3)
  {
    self->_layoutOrientation = a3;
    v51 = self->_mainToolbar;
    v46 = 1264;
    v52 = self->_mainToolbarShadow;
    v53 = self->_secondaryToolbar;
    [(PUPhotoEditViewController *)self _clearToolbars];
    coreToolButtons = self->_coreToolButtons;
    self->_coreToolButtons = 0;

    coreToolButtonViews = self->_coreToolButtonViews;
    self->_coreToolButtonViews = 0;

    toolTagLabelMap = self->_toolTagLabelMap;
    self->_toolTagLabelMap = 0;

    secondaryLeadingViews = self->_secondaryLeadingViews;
    self->_secondaryLeadingViews = 0;

    [(PUPhotoEditNotchButton *)self->_mainActionButton removeFromSuperview];
    [(PUPhotoEditNotchButton *)self->_cancelButton removeFromSuperview];
    mainActionButton = self->_mainActionButton;
    self->_mainActionButton = 0;

    mainActionButtonItem = self->_mainActionButtonItem;
    self->_mainActionButtonItem = 0;

    cancelButton = self->_cancelButton;
    self->_cancelButton = 0;

    cancelButtonItem = self->_cancelButtonItem;
    self->_cancelButtonItem = 0;

    secondaryTrailingViews = self->_secondaryTrailingViews;
    self->_secondaryTrailingViews = 0;

    secondaryCenterView = self->_secondaryCenterView;
    self->_secondaryCenterView = 0;

    undoButton = self->_undoButton;
    self->_undoButton = 0;

    redoButton = self->_redoButton;
    self->_redoButton = 0;

    redEyeButton = self->_redEyeButton;
    self->_redEyeButton = 0;

    moreButton = self->_moreButton;
    self->_moreButton = 0;

    markupButton = self->_markupButton;
    self->_markupButton = 0;

    showOriginalButton = self->_showOriginalButton;
    self->_showOriginalButton = 0;

    self->_toolbarButtonsValid = 0;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v24 = [(PUPhotoEditViewController *)self _allTools];
    v25 = [v24 countByEnumeratingWithState:&v66 objects:v70 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v67;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v67 != v27)
          {
            objc_enumerationMutation(v24);
          }

          [*(*(&v66 + 1) + 8 * i) setLayoutOrientation:self->_layoutOrientation withTransitionCoordinator:{v6, v46}];
        }

        v26 = [v24 countByEnumeratingWithState:&v66 objects:v70 count:16];
      }

      while (v26);
    }

    [(PUPhotoEditViewController *)self _updateToolbarsAnimated:0];
    if (self->_progressEventBlockingViewConstraints)
    {
      [MEMORY[0x1E696ACD8] deactivateConstraints:?];
      progressEventBlockingViewConstraints = self->_progressEventBlockingViewConstraints;
      self->_progressEventBlockingViewConstraints = 0;

      v30 = [(PUPhotoEditViewController *)self view];
      [v30 setNeedsUpdateConstraints];
    }

    [(PUPhotoEditToolPickerController *)self->_toolPickerController setLayoutDirection:[(PUPhotoEditViewController *)self currentToolPickerLayoutDirection]];
    [(PUPhotoEditViewController *)self setNeedsUpdateOfHomeIndicatorAutoHidden];
    v31 = MEMORY[0x1B8C6D660]([(PUPhotoEditViewController *)self updateInteractions]);
    if (v6)
    {
      if (v31)
      {
        v49 = 0;
        v50 = 0;
        v32 = 0;
        v33 = 0;
        v34 = v51;
      }

      else
      {
        if (v51)
        {
          v50 = [PUPhotoEditLayoutSupport layoutConstraintsForHidingView:v51 layoutOrientation:layoutOrientation];
        }

        else
        {
          v50 = 0;
        }

        if (v53)
        {
          v49 = [PUPhotoEditLayoutSupport layoutConstraintsForHidingSecondaryView:v53 layoutOrientation:layoutOrientation];
        }

        else
        {
          v49 = 0;
        }

        mainToolbar = self->_mainToolbar;
        if (mainToolbar)
        {
          v32 = [PUPhotoEditLayoutSupport layoutConstraintsForHidingView:mainToolbar layoutOrientation:self->_layoutOrientation];
        }

        else
        {
          v32 = 0;
        }

        secondaryToolbar = self->_secondaryToolbar;
        if (secondaryToolbar)
        {
          v33 = [PUPhotoEditLayoutSupport layoutConstraintsForHidingSecondaryView:secondaryToolbar layoutOrientation:self->_layoutOrientation];
        }

        else
        {
          v33 = 0;
        }

        v34 = v51;
        if (v32)
        {
          [v32 setActive:1];
          [(PUPhotoEditToolbar *)self->_mainToolbar setAlpha:0.0];
          [*(&self->super.super.super.isa + v47) setAlpha:0.0];
        }

        if (v33)
        {
          [v33 setActive:1];
          [(PUPhotoEditButtonCenteredToolbar *)self->_secondaryToolbar setAlpha:0.0];
        }
      }

      if (self->_currentToolViewConstraints)
      {
        [MEMORY[0x1E696ACD8] deactivateConstraints:?];
        currentToolViewConstraints = self->_currentToolViewConstraints;
        self->_currentToolViewConstraints = 0;

        v41 = [(PUPhotoEditViewController *)self view];
        [v41 setNeedsUpdateConstraints];
      }

      [(PUPhotoEditViewController *)self _updateVideoScrubberDisplayAnimate:0, v33];
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __76__PUPhotoEditViewController_setLayoutOrientation_withTransitionCoordinator___block_invoke;
      v58[3] = &unk_1E7B7AE40;
      v58[4] = self;
      v59 = v50;
      v60 = v34;
      v61 = v52;
      v62 = v49;
      v63 = v53;
      v64 = v32;
      v65 = v48;
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __76__PUPhotoEditViewController_setLayoutOrientation_withTransitionCoordinator___block_invoke_2;
      v54[3] = &unk_1E7B7AE68;
      v54[4] = self;
      v55 = v60;
      v35 = v52;
      v56 = v61;
      v57 = v63;
      v42 = v48;
      v43 = v32;
      v44 = v49;
      v45 = v50;
      [v6 animateAlongsideTransition:v58 completion:v54];
    }

    else
    {
      v34 = v51;
      v35 = v52;
      if ((v31 & 1) == 0)
      {
        [(PUPhotoEditToolbar *)v51 removeFromSuperview];
        [(PUPhotoEditShadowView *)v52 removeFromSuperview];
        v31 = [(PUPhotoEditButtonCenteredToolbar *)v53 removeFromSuperview];
      }

      if (self->_currentToolViewConstraints)
      {
        [MEMORY[0x1E696ACD8] deactivateConstraints:?];
        v36 = self->_currentToolViewConstraints;
        self->_currentToolViewConstraints = 0;

        v37 = [(PUPhotoEditViewController *)self view];
        [v37 setNeedsUpdateConstraints];
      }

      if (MEMORY[0x1B8C6D660](v31))
      {
        [(PUPhotoEditViewController *)self updateSwiftToolbarConstraints];
      }

      [(PUPhotoEditViewController *)self _clearBadgeConstraints];
      [(PUPhotoEditViewController *)self _updateToolbarShadowAlpha];
    }
  }
}

uint64_t __76__PUPhotoEditViewController_setLayoutOrientation_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1064) = 1;
  if ((MEMORY[0x1B8C6D660]() & 1) == 0)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      [v2 setActive:1];
      [*(a1 + 48) setAlpha:0.0];
      [*(a1 + 56) setAlpha:0.0];
    }

    v3 = *(a1 + 64);
    if (v3)
    {
      [v3 setActive:1];
      [*(a1 + 72) setAlpha:0.0];
    }

    v4 = *(a1 + 80);
    if (v4)
    {
      [v4 setActive:0];
      [*(*(a1 + 32) + 1168) setAlpha:1.0];
      [*(a1 + 32) _updateToolbarShadowAlpha];
    }

    v5 = *(a1 + 88);
    if (v5)
    {
      [v5 setActive:0];
      [*(*(a1 + 32) + 1176) setAlpha:1.0];
      [*(a1 + 32) _updateToolbarShadowAlpha];
    }
  }

  v6 = *(a1 + 32);
  if (v6[137])
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
    v7 = *(a1 + 32);
    v8 = *(v7 + 1096);
    *(v7 + 1096) = 0;

    v9 = [*(a1 + 32) view];
    [v9 setNeedsUpdateConstraints];

    v6 = *(a1 + 32);
  }

  v10 = [v6 view];
  [v10 layoutIfNeeded];

  [*(a1 + 32) _clearBadgeConstraints];
  v11 = [*(a1 + 32) mediaView];
  v12 = [*(a1 + 32) mediaView];
  [v12 minimumZoomScale];
  [v11 setZoomScale:1 animated:?];

  if (MEMORY[0x1B8C6D660]())
  {
    [*(a1 + 32) updateSwiftToolbarConstraints];
  }

  v13 = *(a1 + 32);

  return [v13 _updateToolbarShadowAlpha];
}

uint64_t __76__PUPhotoEditViewController_setLayoutOrientation_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 1064) = 0;
  if ((MEMORY[0x1B8C6D660]() & 1) == 0)
  {
    [*(a1 + 40) removeFromSuperview];
    [*(a1 + 48) removeFromSuperview];
    [*(a1 + 56) removeFromSuperview];
  }

  v2 = *(a1 + 32);

  return [v2 _updateVideoScrubberDisplayAnimate:1];
}

- (void)_clearToolbars
{
  [(PUPhotoEditToolbar *)self->_mainToolbar setToolButtons:0 buttonSpacing:1 mainActionButton:0 secondaryActionButton:0];
  [(PUPhotoEditButtonCenteredToolbar *)self->_secondaryToolbar setCenterView:0 leadingViews:0 trailingViews:0];
  v3 = [(PUPhotoEditViewController *)self navigationItem];
  [v3 setTitleView:0];

  v4 = [(PUPhotoEditViewController *)self navigationItem];
  [v4 setLeftBarButtonItems:0];

  v5 = [(PUPhotoEditViewController *)self navigationItem];
  [v5 setRightBarButtonItems:0];

  [(PUPhotoEditToolbar *)self->_mainToolbar removeFromSuperview];
  [(PUPhotoEditShadowView *)self->_mainToolbarShadow removeFromSuperview];
  [(PUPhotoEditButtonCenteredToolbar *)self->_secondaryToolbar removeFromSuperview];
  mainToolbar = self->_mainToolbar;
  self->_mainToolbar = 0;

  mainToolbarShadow = self->_mainToolbarShadow;
  self->_mainToolbarShadow = 0;

  secondaryToolbar = self->_secondaryToolbar;
  self->_secondaryToolbar = 0;

  mainToolbarConstraints = self->_mainToolbarConstraints;
  self->_mainToolbarConstraints = 0;

  secondaryToolbarConstraints = self->_secondaryToolbarConstraints;
  self->_secondaryToolbarConstraints = 0;

  actionButtonConstraints = self->_actionButtonConstraints;
  self->_actionButtonConstraints = 0;
}

- (void)setPlaceholderImage:(id)a3
{
  v7 = a3;
  v5 = [(PUPhotoEditViewController *)self placeholderImage];

  v6 = v7;
  if (v5 != v7)
  {
    objc_storeStrong(&self->_placeholderImage, a3);
    if (v7)
    {
      [v7 size];
      [(PUPhotoEditViewController *)self setLastKnownPreviewImageSize:?];
    }

    [(PUPhotoEditViewController *)self _updatePlaceholderImage];
    v6 = v7;
  }
}

- (id)_currentViewContentsForDismissTransition
{
  v3 = [(NUMediaView *)self->_mediaView _imageLayer];
  v4 = [v3 contents];

  if (!v4)
  {
    placeholderImageView = self->_placeholderImageView;
    if (placeholderImageView && ([(UIImageView *)placeholderImageView isHidden]& 1) == 0)
    {
      v12 = [(UIImageView *)self->_placeholderImageView layer];
      v7 = [v12 contents];
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_10;
  }

  v5 = [(PUPhotoEditViewController *)self editSource];
  if (v5)
  {

LABEL_8:
    mediaView = self->_mediaView;
    v10 = [(PUPhotoEditViewController *)self _composition];
    [(NUMediaView *)mediaView setComposition:v10];

    goto LABEL_9;
  }

  v8 = [(PUPhotoEditViewController *)self originalImageEditSource];

  if (v8)
  {
    goto LABEL_8;
  }

LABEL_9:
  [(NUMediaView *)self->_mediaView setPipelineFilters:MEMORY[0x1E695E0F0]];
  [(NUMediaView *)self->_mediaView waitForRender];
  v7 = [v3 contents];
LABEL_10:

  return v7;
}

- (BOOL)_isReadyToRender
{
  v3 = [(PUPhotoEditViewController *)self mainRenderer];
  v4 = [(PUPhotoEditViewController *)self compositionController];
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;

  return v6;
}

- (void)_clearBadgeConstraints
{
  if (self->_transientStatusBadgeConstraints)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
    transientStatusBadgeConstraints = self->_transientStatusBadgeConstraints;
    self->_transientStatusBadgeConstraints = 0;

    v4 = [(PUPhotoEditViewController *)self view];
    [v4 setNeedsUpdateConstraints];
  }

  if (self->_assetTypeBadgeConstraints)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
    assetTypeBadgeConstraints = self->_assetTypeBadgeConstraints;
    self->_assetTypeBadgeConstraints = 0;

    v6 = [(PUPhotoEditViewController *)self view];
    [v6 setNeedsUpdateConstraints];
  }
}

- (CGRect)_oneUpTransitionPlaceholderViewFrame
{
  v29 = *MEMORY[0x1E69E9840];
  if ([(PUPhotoEditViewController *)self _isReadyToRender])
  {
    v3 = objc_alloc(MEMORY[0x1E69B3AA8]);
    v4 = [(PUPhotoEditViewController *)self _composition];
    v5 = [v3 initWithComposition:v4];

    v26 = 0;
    v6 = [v5 submitSynchronous:&v26];
    v7 = v26;
    v8 = [v6 geometry];

    if (v8)
    {
      [v8 size];
      NUPixelSizeToCGSize();
      [(PUPhotoEditViewController *)self _placeholderViewFrameForImageSize:?];
    }

    else
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_2661);
      }

      v21 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = v7;
        _os_log_error_impl(&dword_1B36F3000, v21, OS_LOG_TYPE_ERROR, "Could not load geometry for composition: %@", buf, 0xCu);
      }

      [(PUPhotoEditViewController *)self previewViewFrame];
    }

    v14 = v9;
    v16 = v10;
    v18 = v11;
    v20 = v12;
  }

  else
  {
    [(PUPhotoEditViewController *)self previewViewFrame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  v22 = v14;
  v23 = v16;
  v24 = v18;
  v25 = v20;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)_cropPlaceholderViewFrameForImageSize:(CGSize)a3
{
  if (a3.width == 0.0 || a3.height == 0.0)
  {
    v20 = *MEMORY[0x1E695F058];
    v21 = *(MEMORY[0x1E695F058] + 8);
    v22 = *(MEMORY[0x1E695F058] + 16);
    v23 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    v4 = objc_alloc_init(PUCropToolControllerSpec);
    v71 = MEMORY[0x1E69E9820];
    v72 = 3221225472;
    v73 = __67__PUPhotoEditViewController__cropPlaceholderViewFrameForImageSize___block_invoke;
    v74 = &unk_1E7B80C38;
    v5 = v4;
    v75 = v5;
    v76 = self;
    [(PUViewControllerSpec *)v5 performChanges:&v71];
    [(PUCropToolControllerSpec *)v5 minimumCropInset];
    v7 = v6;
    v8 = [(PUPhotoEditViewController *)self view];
    [v8 safeAreaInsets];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    if (MEMORY[0x1B8C6D660]())
    {
      v17 = [(PUPhotoEditViewController *)self navigationController];
      v18 = [v17 navigationBar];
      [v18 frame];
      Height = CGRectGetHeight(v77);
    }

    else
    {
      [(PUPhotoEditButtonCenteredToolbar *)self->_secondaryToolbar frame];
      Height = CGRectGetHeight(v78);
    }

    v24 = MEMORY[0x1B8C6D660]();
    v25 = &OBJC_IVAR___PUPhotoEditViewController__mainToolbar;
    if (v24)
    {
      v25 = &OBJC_IVAR___PUPhotoEditViewController__swiftToolbarView;
    }

    v26 = *(&self->super.super.super.isa + *v25);
    v27 = [(PUPhotoEditViewController *)self isIpadLayout];
    if (MEMORY[0x1B8C6D660]())
    {
      v28 = v10;
    }

    else
    {
      v28 = Height;
    }

    if (v27)
    {
      [(PUCropToolControllerSpec *)v5 standardSideBarWidth];
      v30 = v29;
      [(PUCropToolControllerSpec *)v5 cropAspectRatioScrollHeight];
      v32 = v14 + v31;
      [(PUCropToolControllerSpec *)v5 standardSideBarWidth];
      v34 = v33;
    }

    else if ([(PUPhotoEditViewController *)self layoutOrientation]== 1)
    {
      v30 = v7 + v12;
      [(PUCropToolControllerSpec *)v5 standardBottomBarHeight];
      v32 = Height + v14 + v35;
      v34 = v7 + v16;
    }

    else
    {
      [(PUCropToolControllerSpec *)v5 cropAspectFlipperWidth];
      v30 = v12 + v36;
      [(PUCropToolControllerSpec *)v5 cropAspectRatioScrollHeight];
      v32 = v14 + v37;
      [v26 frame];
      Width = CGRectGetWidth(v79);
      [(PUCropToolControllerSpec *)v5 standardSideBarWidth];
      v34 = Width + v39;
    }

    v40 = v7 + v28;
    v41 = [(PUPhotoEditViewController *)self view:*&a3.width];
    [v41 frame];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;

    v80.origin.x = v43;
    v80.origin.y = v45;
    v80.size.width = v47;
    v80.size.height = v49;
    v50 = CGRectGetWidth(v80) - v30 - v34;
    v81.origin.x = v43;
    v81.origin.y = v45;
    v81.size.width = v47;
    v81.size.height = v49;
    v51 = CGRectGetHeight(v81) - v40 - v32;
    v82.origin.x = v30;
    v82.origin.y = v40;
    v82.size.width = v50;
    v82.size.height = v51;
    v52 = CGRectGetWidth(v82);
    v83.origin.x = v30;
    v83.origin.y = v40;
    v83.size.width = v50;
    v83.size.height = v51;
    v53 = v52 / CGRectGetHeight(v83);
    v54 = v69 / v70;
    if (v53 <= v69 / v70)
    {
      v89.origin.x = v30;
      v89.origin.y = v40;
      v89.size.width = v50;
      v89.size.height = v51;
      v59 = CGRectGetWidth(v89) / v54;
      v90.origin.x = v30;
      v90.origin.y = v40;
      v90.size.width = v50;
      v90.size.height = v51;
      MinX = CGRectGetMinX(v90);
      v91.origin.x = v30;
      v91.origin.y = v40;
      v91.size.width = v50;
      v91.size.height = v51;
      MinY = CGRectGetMinY(v91);
      v92.origin.x = v30;
      v92.origin.y = v40;
      v92.size.width = v50;
      v92.size.height = v51;
      v58 = MinY + (CGRectGetHeight(v92) - v59) * 0.5;
      v93.origin.x = v30;
      v93.origin.y = v40;
      v93.size.width = v50;
      v93.size.height = v51;
      v55 = CGRectGetWidth(v93);
    }

    else
    {
      v84.origin.x = v30;
      v84.origin.y = v40;
      v84.size.width = v50;
      v84.size.height = v51;
      v55 = v54 * CGRectGetHeight(v84);
      v85.origin.x = v30;
      v85.origin.y = v40;
      v85.size.width = v50;
      v85.size.height = v51;
      v56 = CGRectGetMinX(v85);
      v86.origin.x = v30;
      v86.origin.y = v40;
      v86.size.width = v50;
      v86.size.height = v51;
      MinX = v56 + (CGRectGetWidth(v86) - v55) * 0.5;
      v87.origin.x = v30;
      v87.origin.y = v40;
      v87.size.width = v50;
      v87.size.height = v51;
      v58 = CGRectGetMinY(v87);
      v88.origin.x = v30;
      v88.origin.y = v40;
      v88.size.width = v50;
      v88.size.height = v51;
      v59 = CGRectGetHeight(v88);
    }

    v20 = PURoundRectToPixel(MinX, v58, v55, v59);
    v21 = v61;
    v22 = v62;
    v23 = v63;
  }

  v64 = v20;
  v65 = v21;
  v66 = v22;
  v67 = v23;
  result.size.height = v67;
  result.size.width = v66;
  result.origin.y = v65;
  result.origin.x = v64;
  return result;
}

void __67__PUPhotoEditViewController__cropPlaceholderViewFrameForImageSize___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) traitCollection];
  [*(a1 + 32) setTraitCollection:v2];
}

- (BOOL)_shouldUseCropPlaceholderViewFrame
{
  v3 = [(PUPhotoEditViewController *)self initialPendingEditsRequest];

  if (v3)
  {
    v3 = [(PUPhotoEditViewController *)self initialPendingEditsRequest];
    v4 = [v3 adjustments];
    v5 = [v4 lastObject];
    v6 = [v5 category];

    v7 = [(PUPhotoEditViewController *)self _toolControllerForAdjustmentCategory:v6];
    LODWORD(v3) = v7 == self->_cropController;
  }

  if ([(PUPhotoEditViewController *)self initialToolType]== 6 || (([(PUPhotoEditViewController *)self _isQuickCrop]| v3) & 1) != 0)
  {
    currentTool = self->_currentTool;
    if (!currentTool)
    {
      return 1;
    }
  }

  else
  {
    currentTool = self->_currentTool;
  }

  return currentTool && currentTool == self->_cropController;
}

- (CGRect)_placeholderViewFrameForImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(PUViewControllerSpec *)self->_photoEditSpec layoutReferenceSize];
  v5 = v4;
  [(PUViewControllerSpec *)self->_photoEditSpec layoutReferenceSize];
  v7 = v6;
  if (width == 0.0 || height == 0.0)
  {
    v16 = *MEMORY[0x1E695F058];
    v17 = *(MEMORY[0x1E695F058] + 8);
    v18 = *(MEMORY[0x1E695F058] + 16);
    v19 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    [(PUPhotoEditViewController *)self _mediaViewEdgeInsets:width];
    v8 = NUEdgeInsetsInsetRect();
    v10 = v9;
    v12 = v11;
    if (MEMORY[0x1B8C6D660](v8) && -[PUPhotoEditViewController layoutOrientation](self, "layoutOrientation") != 1 && (+[PUPhotoEditProtoSettings sharedInstance](PUPhotoEditProtoSettings, "sharedInstance"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 imageStartsZoomedIn], v13, (v14 & 1) != 0))
    {
      v15 = 1;
      v12 = v7;
      v10 = v5;
    }

    else
    {
      v15 = 0;
    }

    v20 = v10 / width;
    if (v10 / width >= v12 / height)
    {
      v20 = v12 / height;
    }

    CGAffineTransformMakeScale(&v32, v20, v20);
    if (v15)
    {
      PFSizeWithAspectRatioFittingSize();
      v18 = v21;
      v19 = v22;
      v16 = v5 * 0.5 + 0.0 + v21 * -0.5;
      v17 = v7 * 0.5 + 0.0 + v22 * -0.5;
    }

    else
    {
      [(NUMediaView *)self->_mediaView _edgeInsetsForContentSize:1 inFrame:vmlaq_n_f64(vmulq_n_f64(*&v32.c alwaysCenterContent:height), *&v32.a, width), 0.0, 0.0, v5, v7];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v16 = v25 + 0.0;
      v17 = v24 + 0.0;
      v18 = v5 - (v26 + v29);
      v19 = v7 - (v24 + v28);
    }
  }

  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)previewViewFrame
{
  [(NUMediaView *)self->_mediaView imageFrame];
  if (self->_isAnimatingLayoutOrientation || (v7 = v3, v8 = v4, v9 = v5, v10 = v6, CGRectIsEmpty(*&v3)))
  {
    [(PUPhotoEditViewController *)self lastKnownPreviewImageSize];
    v12 = v11;
    v14 = v13;
    if ([(PUPhotoEditViewController *)self _shouldUseCropPlaceholderViewFrame])
    {
      [(PUPhotoEditViewController *)self _cropPlaceholderViewFrameForImageSize:v12, v14];
    }

    else
    {
      [(PUPhotoEditViewController *)self _placeholderViewFrameForImageSize:v12, v14];
    }

    v7 = v15;
    v8 = v16;
    v9 = v17;
    v10 = v18;
  }

  v19 = v7;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)_handleShowOriginalButton:(id)a3
{
  if (![(PUPhotoEditViewController *)self _isPreviewingOriginal])
  {
    self->_showOriginalButtonTapped = 1;
  }

  [(PUPhotoEditViewController *)self _toggleShowOriginal];
}

- (void)_handleRedoButton:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(PUPhotoEditViewController *)self _allTools:a3];
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
        v10 = [(PUPhotoEditViewController *)self undoManager];
        [v9 redoInitiated:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = [(PUPhotoEditViewController *)self undoManager];
  [v11 redo];
}

- (void)_handleUndoButton:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(PUPhotoEditViewController *)self _allTools:a3];
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
        v10 = [(PUPhotoEditViewController *)self undoManager];
        [v9 undoInitiated:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = [(PUPhotoEditViewController *)self undoManager];
  [v11 undo];
}

- (void)_undoManagerDidRedo:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotoEditViewController *)self undoManager];
  v6 = [v4 object];

  if (v5 == v6)
  {
    if ([(PUPhotoEditToolbarButton *)self->_moreButton isHeld])
    {
      [(PUPhotoEditViewController *)self _reloadMoreButtonMenu];
    }

    [(PUPhotoEditViewController *)self _updateUndoRedoButtonsAnimated:0];
  }
}

- (void)_undoManagerDidUndo:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotoEditViewController *)self undoManager];
  v6 = [v4 object];

  if (v5 == v6)
  {
    if ([(PUPhotoEditToolbarButton *)self->_moreButton isHeld])
    {
      [(PUPhotoEditViewController *)self _reloadMoreButtonMenu];
    }

    [(PUPhotoEditViewController *)self _updateUndoRedoButtonsAnimated:0];
  }
}

- (void)_undoManagerWillRedo:(id)a3
{
  v4 = a3;
  v8 = [(PUPhotoEditViewController *)self undoManager];
  v5 = [v4 object];

  if (v8 == v5)
  {
    v6 = [(PUPhotoEditToolbarButton *)self->_moreButton isHeld];

    if (v6)
    {
      goto LABEL_5;
    }

    v5 = [v8 redoMenuItemTitle];
    v7 = [v5 uppercaseStringWithLocale:0];
    [(PUPhotoEditViewController *)self flashTransientBadgeWithText:v7];
  }

LABEL_5:
}

- (void)_undoManagerWillUndo:(id)a3
{
  v4 = a3;
  v8 = [(PUPhotoEditViewController *)self undoManager];
  v5 = [v4 object];

  if (v8 == v5)
  {
    v6 = [(PUPhotoEditToolbarButton *)self->_moreButton isHeld];

    if (v6)
    {
      goto LABEL_5;
    }

    v5 = [v8 undoMenuItemTitle];
    v7 = [v5 uppercaseStringWithLocale:0];
    [(PUPhotoEditViewController *)self flashTransientBadgeWithText:v7];
  }

LABEL_5:
}

- (void)_undoManagerDidCloseUndoGroupNotification:(id)a3
{
  [(PUPhotoEditViewController *)self _updateUndoRedoButtonsAnimated:0];

  [(PUPhotoEditViewController *)self _updateShowOriginalButtonAnimated:0];
}

- (id)undoManager
{
  undoManager = self->_undoManager;
  if (!undoManager)
  {
    v4 = objc_opt_new();
    v5 = self->_undoManager;
    self->_undoManager = v4;

    undoManager = self->_undoManager;
  }

  return undoManager;
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  [v9 setOverrideUserInterfaceStyle:{-[PUPhotoEditViewController preferredUserInterfaceStyle](self, "preferredUserInterfaceStyle")}];
  v10.receiver = self;
  v10.super_class = PUPhotoEditViewController;
  [(PUPhotoEditViewController *)&v10 presentViewController:v9 animated:v5 completion:v8];
}

- (BOOL)mediaViewFillsView
{
  v3 = [(PUPhotoEditViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(PUPhotoEditViewController *)self mediaView];
  [v12 imageFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v27.origin.x = v14;
  v27.origin.y = v16;
  v27.size.width = v18;
  v27.size.height = v20;
  v29.origin.x = v5;
  v29.origin.y = v7;
  v29.size.width = v9;
  v29.size.height = v11;
  v28 = CGRectIntersection(v27, v29);
  v21 = v5;
  v22 = v7;
  v23 = v9;
  v24 = v11;

  return CGRectEqualToRect(v28, *&v21);
}

- (void)_updateForcingDarkUserInterfaceStyleForZoomIfNeeded
{
  v3 = [(PUPhotoEditViewController *)self mediaViewFillsView];
  v4 = (MEMORY[0x1B8C6D660]() ^ 1) & v3;
  if (v4 != [(PUPhotoEditViewController *)self forceDarkUserInterfaceStyleForZoom])
  {
    [(PUPhotoEditViewController *)self setForceDarkUserInterfaceStyleForZoom:v4];

    [(PUPhotoEditViewController *)self setNeedsUserInterfaceAppearanceUpdate];
  }
}

- (int64_t)preferredUserInterfaceStyle
{
  v3 = +[PUPhotoEditProtoSettings sharedInstance];
  v4 = [v3 lightModeEditor];

  if (!v4 || [(PUPhotoEditViewController *)self forceDarkUserInterfaceStyleForZoom])
  {
    return 2;
  }

  v6 = +[PUPhotoEditAppearancePreference preferredAppearance];
  if (v6 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (v6 == 1);
  }
}

- (void)_setNeedsUserInterfaceAppearanceUpdateAnimated
{
  v3 = [(PUPhotoEditViewController *)self navigationController];
  [v3 setOverrideUserInterfaceStyle:{-[PUPhotoEditViewController preferredUserInterfaceStyle](self, "preferredUserInterfaceStyle")}];

  v4 = MEMORY[0x1E69DD250];
  v5 = [(PUPhotoEditViewController *)self view];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__PUPhotoEditViewController__setNeedsUserInterfaceAppearanceUpdateAnimated__block_invoke;
  v6[3] = &unk_1E7B80DD0;
  v6[4] = self;
  [v4 transitionWithView:v5 duration:5242880 options:v6 animations:0 completion:0.2];
}

void __75__PUPhotoEditViewController__setNeedsUserInterfaceAppearanceUpdateAnimated__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsUserInterfaceAppearanceUpdate];
  v2 = [*(a1 + 32) navigationController];
  [v2 setNeedsUserInterfaceAppearanceUpdate];
}

- (void)setPreferredAppearance:(int64_t)a3
{
  [PUPhotoEditAppearancePreference setPreferredAppearance:a3];

  [(PUPhotoEditViewController *)self _setNeedsUserInterfaceAppearanceUpdateAnimated];
}

- (double)px_HDRFocus
{
  v2 = MEMORY[0x1E69C35F0];
  v3 = [(PUPhotoEditViewController *)self photo];
  [v2 HDRValueForAsset:v3];
  v5 = v4;

  return v5;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = PUPhotoEditViewController;
  [(PUPhotoEditViewController *)&v21 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  self->_isAnimatingMediaViewInsets = 1;
  [(PUPhotoEditViewController *)self _updateVideoScrubberDisplayAnimate:1];
  v8 = [(PUPhotoEditViewController *)self revertConfirmationAlert];
  if (v8 || ([(PUPhotoEditViewController *)self cancelConfirmationAlert], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v10 = [v8 presentingViewController];
    [v10 dismissViewControllerAnimated:1 completion:0];
  }

  if (MEMORY[0x1B8C6D660]() && width > height)
  {
    v11 = +[PUPhotoEditProtoSettings sharedInstance];
    v12 = ([v11 imageStartsZoomedIn] & 1) != 0 || -[PUPhotoEditViewController _isZoomedIn](self, "_isZoomedIn");
  }

  else
  {
    v12 = [(PUPhotoEditViewController *)self _isZoomedIn];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__PUPhotoEditViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  aBlock[3] = &unk_1E7B7C8A0;
  aBlock[4] = self;
  v20 = v12;
  v13 = _Block_copy(aBlock);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__PUPhotoEditViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v17[3] = &unk_1E7B7C8A0;
  v17[4] = self;
  v18 = v12;
  v14 = _Block_copy(v17);
  if (([v7 animateAlongsideTransition:v13 completion:v14] & 1) == 0)
  {
    v15 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_ERROR, "viewWillTransitionToSize animations were not queued by the transition coordinator, running animations manually. Layout issues may occur.", v16, 2u);
    }

    v13[2](v13, 0);
    v14[2](v14, 0);
  }

  [(PUPhotoEditViewController *)self _updateTraitCollectionAndLayoutReferenceSize:width, height];
  [(PUPhotoEditViewController *)self _updateLayoutOrientationWithViewSize:v7 transitionCoordinator:width, height];
}

void __80__PUPhotoEditViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v33 = a2;
  [*(a1 + 32) pu_performBarsVisibilityUpdatesWithAnimationSettings:{0, 0}];
  [*(a1 + 32) _mediaViewEdgeInsets];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  if (*(a1 + 40))
  {
    [*(*(a1 + 32) + 1032) setEdgeInsets:{v3, v4, v5, v6}];
    v11 = [*(*(a1 + 32) + 1032) _renderView];
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    [*(*(a1 + 32) + 1032) zoomToRect:0 animated:{v13, v15, v17, v19}];
  }

  else
  {
    if (v33)
    {
      v20 = *(*(a1 + 32) + 1032);
      [v33 transitionDuration];
      v22 = v21;
      v23 = [v33 completionCurve];
      v24 = v20;
      v25 = v7;
      v26 = v8;
      v27 = v9;
      v28 = v10;
      v29 = v22;
    }

    else
    {
      [MEMORY[0x1E6979518] animationDuration];
      v31 = v30;
      UIAnimationDragCoefficient();
      v29 = v31 * v32;
      v24 = *(*(a1 + 32) + 1032);
      v25 = v7;
      v26 = v8;
      v27 = v9;
      v28 = v10;
      v23 = 0;
    }

    [v24 _transitionToInsets:v23 duration:1 animationCurve:v25 updateRenderContent:{v26, v27, v28, v29}];
  }
}

uint64_t __80__PUPhotoEditViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateSpecDependentUIPieces];
  *(*(a1 + 32) + 1065) = 0;
  result = [*(a1 + 32) _updateVideoScrubberDisplayAnimate:1];
  if (*(a1 + 40) == 1)
  {
    v3 = [*(*(a1 + 32) + 1032) _renderView];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = *(*(a1 + 32) + 1032);

    return [v12 zoomToRect:1 animated:{v5, v7, v9, v11}];
  }

  return result;
}

- (void)_layoutShadowView:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v32 = v4;
    v6 = [(PUPhotoEditViewController *)self view];
    [v6 frame];
    v8 = v7;
    v10 = v9;

    v11 = [(PUPhotoEditViewController *)self view];
    [v11 safeAreaInsets];
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = +[PUPhotoEditProtoSettings sharedInstance];
    [v18 secondaryToolbarShadowLength];
    v20 = v19;

    v21 = [(PUPhotoEditViewController *)self isIpadLayout];
    v22 = v32;
    v23 = v21;
    toolControlShadow = self->_toolControlShadow;
    if (toolControlShadow == v32)
    {
      [(PUPhotoEditShadowView *)toolControlShadow setHidden:0];
      if (v23)
      {
        goto LABEL_12;
      }

      v28 = [(PUPhotoEditViewController *)self layoutOrientation];
      if (v28 < 2)
      {
        [(PUPhotoEditShadowView *)self->_toolControlShadow setHidden:1];
        v22 = v32;
      }

      else
      {
        if (v28 == 2)
        {
          goto LABEL_12;
        }

        v22 = v32;
        if (v28 == 3)
        {
          goto LABEL_4;
        }
      }

      [(PUPhotoEditShadowView *)v22 setTransparentSide:0];
    }

    else
    {
      if (v23)
      {
LABEL_4:
        [(PUPhotoEditShadowView *)v22 setTransparentSide:2];
LABEL_5:
        v25 = v13 + v20;
        v26 = 0.0;
        v27 = 0.0;
LABEL_18:
        v30 = v32;
        goto LABEL_19;
      }

      v29 = [(PUPhotoEditViewController *)self layoutOrientation];
      if (v29 == 3)
      {
LABEL_12:
        [(PUPhotoEditShadowView *)v32 setTransparentSide:1];
        v30 = v32;
        v25 = v17 + v20;
        v26 = v8 - (v17 + v20);
        v27 = 0.0;
LABEL_19:
        v4 = [(PUPhotoEditShadowView *)v30 setFrame:v26, v27, v25, v10];
        v5 = v32;
        goto LABEL_20;
      }

      v31 = v29;
      [(PUPhotoEditShadowView *)v32 setTransparentSide:2 * (v29 == 2)];
      if (v31 == 2)
      {
        goto LABEL_5;
      }
    }

    v27 = v10 - (v15 + v20);
    v26 = 0.0;
    v25 = v8;
    v10 = v15 + v20;
    goto LABEL_18;
  }

LABEL_20:

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)viewDidLayoutSubviews
{
  v163[4] = *MEMORY[0x1E69E9840];
  v162.receiver = self;
  v162.super_class = PUPhotoEditViewController;
  [(PUPhotoEditViewController *)&v162 viewDidLayoutSubviews];
  v3 = [(PUPhotoEditViewController *)self view];
  [v3 frame];
  v5 = v4;
  v7 = v6;

  v8 = [(PUPhotoEditViewController *)self photoEditSpec];
  [v8 layoutReferenceSize];
  v10 = v9;
  v12 = v11;

  if (v5 != v10 || v7 != v12)
  {
    [(PUPhotoEditViewController *)self _updateTraitCollectionAndLayoutReferenceSize:v5, v7];
    [(PUPhotoEditViewController *)self _updateLayoutOrientationWithViewSize:0 transitionCoordinator:v5, v7];
  }

  [(PUPhotoEditViewController *)self _updateMediaViewEdgeInsets];
  [(PUPhotoEditViewController *)self previewViewFrame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v159 = v20;
  v21 = MEMORY[0x1B8C6D660]([(UIImageView *)self->_placeholderImageView setFrame:?]);
  v22 = &OBJC_IVAR___PUPhotoEditViewController__mainToolbar;
  if (v21)
  {
    v22 = &OBJC_IVAR___PUPhotoEditViewController__swiftToolbarView;
  }

  v23 = *(&self->super.super.super.isa + *v22);
  v24 = [(PUPhotoEditViewController *)self irisRevertConfirmationAlert];

  if (v24)
  {
    v25 = [(PUPhotoEditMediaToolController *)self->_mediaToolController livePhotoButton];
    v26 = [(PUPhotoEditViewController *)self irisRevertConfirmationAlert];
    v27 = [v26 popoverPresentationController];
    [v27 setSourceView:v25];

    v28 = [(PUPhotoEditViewController *)self irisRevertConfirmationAlert];
    v29 = [v28 popoverPresentationController];
    [v25 bounds];
    [v29 setSourceRect:?];
  }

  v30 = 0.0;
  v31 = 0.0;
  if ((MEMORY[0x1B8C6D660]() & 1) == 0)
  {
    [(PUPhotoEditButtonCenteredToolbar *)self->_secondaryToolbar frame];
    MaxY = CGRectGetMaxY(v164);
    v33 = [(UIViewController *)self->_currentTool view];
    [v33 frame];
    v34 = MaxY - CGRectGetMinY(v165);
    v35 = [(PUPhotoEditViewController *)self view];
    [v35 safeAreaInsets];
    v31 = v34 - v36;
  }

  v155 = v19;
  v156 = v15;
  v157 = v17;
  v158 = v5;
  v133 = v7;
  if ([(PUPhotoEditViewController *)self isIpadLayout])
  {
    goto LABEL_13;
  }

  v104 = [(PUPhotoEditViewController *)self layoutOrientation];
  if (v104 != 3)
  {
    if (v104 == 2)
    {
      [(PUPhotoEditToolController *)self->_currentEditingTool wantsFullscreen];
    }

    else if (v104 == 1 && [(PUPhotoEditToolController *)self->_currentEditingTool wantsFullscreen])
    {
      [v23 frame];
      v105 = v7 - CGRectGetMinY(v171);
      v106 = [(PUPhotoEditViewController *)self view];
      [v106 safeAreaInsets];
      v30 = v105 - v107;
    }

    goto LABEL_13;
  }

  if (![(PUPhotoEditToolController *)self->_currentEditingTool wantsFullscreen])
  {
LABEL_13:
    v37 = 0.0;
    goto LABEL_14;
  }

  [v23 frame];
  v118 = v5 - CGRectGetMinX(v177);
  v119 = [(PUPhotoEditViewController *)self view];
  [v119 safeAreaInsets];
  v37 = v118 - v120;

LABEL_14:
  v154 = v23;
  [(UIViewController *)self->_currentTool setAdditionalSafeAreaInsets:v31, 0.0, v30, v37];
  v38 = [(PUPhotoEditViewController *)self videoScrubberView];
  v143 = [(PUPhotoEditViewController *)self layoutOrientation];
  [(PUPhotoEditViewController *)self previewViewFrame];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = [(PUPhotoEditToolController *)self->_currentEditingTool view];
  [v47 frame];
  v146 = v49;
  v147 = v48;
  v144 = v51;
  v145 = v50;

  [(PUPhotoEditViewControllerSpec *)self->_photoEditSpec scrubberViewMargin];
  v150 = v53;
  v151 = v52;
  v132 = v54;
  v55 = [(PUPhotoEditViewController *)self mediaView];
  [v55 bounds];
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  [v55 edgeInsets];
  v65 = v57 + v64;
  v67 = v59 + v66;
  v69 = v61 - (v64 + v68);
  v71 = v63 - (v66 + v70);
  v72 = [(PUPhotoEditViewController *)self view];
  v152 = v55;
  [v72 convertRect:v55 fromView:{v65, v67, v69, v71}];
  v148 = v74;
  v149 = v73;

  if (!self->_imageFrameLayoutGuide)
  {
    v75 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    imageFrameLayoutGuide = self->_imageFrameLayoutGuide;
    self->_imageFrameLayoutGuide = v75;

    v77 = [(PUPhotoEditViewController *)self view];
    [v77 addLayoutGuide:self->_imageFrameLayoutGuide];
  }

  v153 = v38;
  v78 = v155;
  if (self->_imageFrameLayoutGuideConstraints)
  {
    v79 = [(PUPhotoEditViewController *)self view];
    [v79 removeConstraints:self->_imageFrameLayoutGuideConstraints];

    imageFrameLayoutGuideConstraints = self->_imageFrameLayoutGuideConstraints;
    self->_imageFrameLayoutGuideConstraints = 0;
  }

  v140 = [(UILayoutGuide *)self->_imageFrameLayoutGuide leadingAnchor];
  v141 = [(PUPhotoEditViewController *)self view];
  recta = [v141 leadingAnchor];
  v138 = [v140 constraintEqualToAnchor:recta constant:v159];
  v163[0] = v138;
  v136 = [(UILayoutGuide *)self->_imageFrameLayoutGuide trailingAnchor];
  v137 = [(PUPhotoEditViewController *)self view];
  v135 = [v137 leadingAnchor];
  v134 = [v136 constraintEqualToAnchor:v135 constant:v159 + v157];
  v163[1] = v134;
  v81 = [(UILayoutGuide *)self->_imageFrameLayoutGuide topAnchor];
  v82 = [(PUPhotoEditViewController *)self view];
  v83 = [v82 topAnchor];
  v84 = [v81 constraintEqualToAnchor:v83 constant:v156];
  v163[2] = v84;
  v85 = [(UILayoutGuide *)self->_imageFrameLayoutGuide bottomAnchor];
  v86 = [(PUPhotoEditViewController *)self view];
  v87 = [v86 topAnchor];
  v88 = [v85 constraintEqualToAnchor:v87 constant:v156 + v155];
  v163[3] = v88;
  v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:v163 count:4];
  v90 = self->_imageFrameLayoutGuideConstraints;
  self->_imageFrameLayoutGuideConstraints = v89;

  v91 = [(PUPhotoEditViewController *)self view];
  [v91 addConstraints:self->_imageFrameLayoutGuideConstraints];

  if (v143 != 1)
  {
    v166.origin.y = v146;
    v166.origin.x = v147;
    v166.size.height = v144;
    v166.size.width = v145;
    MaxX = CGRectGetMaxX(v166);
    [(PUPhotoEditToolController *)self->_currentEditingTool toolGradientDistance];
    v158 = v158 - (v158 - (MaxX - v93) + v158 - (MaxX - v93));
  }

  v167.origin.x = v40;
  v167.origin.y = v42;
  v167.size.width = v44;
  v167.size.height = v46;
  Width = CGRectGetWidth(v167);
  [v153 intrinsicContentSize];
  v95 = v94;
  if (v143 == 1)
  {
    v168.origin.x = v147;
    v168.origin.y = v146;
    v168.size.width = v145;
    v168.size.height = v144;
    v96 = CGRectGetMaxY(v168);
    [(PUPhotoEditToolController *)self->_currentEditingTool toolGradientDistance];
    v98 = v96 - v97;
    v169.origin.x = v40;
    v169.origin.y = v42;
    v169.size.width = v44;
    v169.size.height = v46;
    v99 = CGRectGetMaxY(v169);
    if (v98 >= v99)
    {
      v100 = v99;
    }

    else
    {
      v100 = v98;
    }

    v170.origin.x = v147;
    v170.origin.y = v146;
    v170.size.width = v145;
    v170.size.height = v144;
    v78 = v155;
    v101 = CGRectGetMaxY(v170);
    [(PUPhotoEditToolController *)self->_currentEditingTool toolGradientDistance];
    v103 = v101 - v102;
  }

  else
  {
    v172.origin.x = v40;
    v172.origin.y = v42;
    v172.size.width = v44;
    v172.size.height = v46;
    v108 = CGRectGetMaxY(v172);
    v109 = [(PUPhotoEditViewController *)self view];
    [v109 safeAreaInsets];
    v100 = v133 - v110;

    if (v108 < v100)
    {
      v100 = v108;
    }

    v111 = [(PUPhotoEditViewController *)self view];
    [v111 safeAreaInsets];
    v103 = v133 - v112;
  }

  v173.origin.x = v159;
  v173.origin.y = v156;
  v173.size.width = v157;
  v173.size.height = v78;
  Height = CGRectGetHeight(v173);
  if (Height < v95 + 4.0)
  {
    v174.origin.x = v159;
    v174.origin.y = v156;
    v174.size.width = v157;
    v174.size.height = v78;
    v114 = 0;
    v115 = CGRectGetMaxY(v174) + 30.0;
    goto LABEL_43;
  }

  v114 = 2 * (Width > 210.0);
  if (Height >= v95 * 4.0)
  {
LABEL_38:
    v115 = v100 - (v132 + v95);
    goto LABEL_43;
  }

  v116 = v78;
  v117 = v103 - (v132 * 0.5 + v95);
  v175.origin.x = v159;
  v175.origin.y = v156;
  v175.size.width = v157;
  v175.size.height = v116;
  v115 = CGRectGetMaxY(v175) + 30.0;
  if (v115 > v117)
  {
    v176.origin.x = v159;
    v176.origin.y = v156;
    v176.size.width = v157;
    v176.size.height = v116;
    v115 = CGRectGetMidY(v176) + v95 * -0.5 + 4.0;
    if (v115 <= v117)
    {
      goto LABEL_43;
    }

    goto LABEL_38;
  }

  v114 = 0;
LABEL_43:
  v121 = fmin(v158 - (v151 + v150), 477.0);
  if (Width - v151 - v150 >= v121 || Width <= 210.0)
  {
    v123 = v121;
  }

  else
  {
    v123 = Width - v151 - v150;
  }

  v124 = [(PUPhotoEditViewController *)self playPauseButton];
  [v124 sizeToFit];

  v125 = [(PUPhotoEditViewController *)self playPauseButton];
  [v125 frame];
  v127 = v126;
  v160 = v128;

  v178.origin.x = v149 + (v148 - v123) * 0.5;
  v178.origin.y = v115;
  v178.size.width = v123;
  v178.size.height = v95;
  MinX = CGRectGetMinX(v178);
  v179.origin.x = v149 + (v148 - v123) * 0.5;
  v179.origin.y = v115;
  v179.size.width = v123;
  v179.size.height = v95;
  v130 = CGRectGetMinY(v179) + -7.0;
  v131 = [(PUPhotoEditViewController *)self playPauseButton];
  [v131 setFrame:{MinX, v130, v127, v160}];

  [v153 setFrame:{v149 + (v148 - v123) * 0.5 + v151 + v127, v115, v123 + (v151 + v127) * -2.0, v95}];
  [v153 setOverrideUserInterfaceStyle:v114];
  v161[0] = MEMORY[0x1E69E9820];
  v161[1] = 3221225472;
  v161[2] = __50__PUPhotoEditViewController_viewDidLayoutSubviews__block_invoke;
  v161[3] = &unk_1E7B80DD0;
  v161[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v161];
  [(PUPhotoEditViewController *)self _updateToolbarBackgroundAnimated:0];
}

uint64_t __50__PUPhotoEditViewController_viewDidLayoutSubviews__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _layoutShadowView:*(*(a1 + 32) + 1264)];
  v2 = *(a1 + 32);
  v3 = v2[159];

  return [v2 _layoutShadowView:v3];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUPhotoEditViewController;
  [(PUPhotoEditViewController *)&v3 viewWillLayoutSubviews];
  [(PUPhotoEditViewController *)self _updateToolbarsContentPadding];
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = PUPhotoEditViewController;
  [(PUPhotoEditViewController *)&v3 viewSafeAreaInsetsDidChange];
  [(PUPhotoEditViewController *)self _updateToolbarsAnimated:0];
  [(PUPhotoEditViewController *)self _updateMediaViewEdgeInsets];
}

- (id)_constraintsForToolView:(id)a3 wantsFullscreen:(BOOL)a4
{
  v4 = a4;
  v72[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1B8C6D660]();
  v8 = &OBJC_IVAR___PUPhotoEditViewController__mainToolbar;
  if (v7)
  {
    v8 = &OBJC_IVAR___PUPhotoEditViewController__swiftToolbarView;
  }

  v61 = *(&self->super.super.super.isa + *v8);
  v63 = v6;
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v62 = [MEMORY[0x1E695DF70] array];
  if (v4)
  {
    v9 = [v6 leftAnchor];
    v55 = [(PUPhotoEditViewController *)self view];
    v53 = [v55 leftAnchor];
    v56 = v9;
    v10 = [v9 constraintEqualToAnchor:v53];
    v72[0] = v10;
    v11 = [v6 rightAnchor];
    v59 = [(PUPhotoEditViewController *)self view];
    [v59 rightAnchor];
    v58 = v60 = v11;
    v57 = [v11 constraintEqualToAnchor:?];
    v72[1] = v57;
    v12 = [v6 topAnchor];
    v13 = [(PUPhotoEditViewController *)self view];
    v14 = [v13 topAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    v72[2] = v15;
    v16 = [v6 bottomAnchor];
    v17 = [(PUPhotoEditViewController *)self view];
    v18 = [v17 bottomAnchor];
    v19 = [v16 constraintEqualToAnchor:v18];
    v72[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:4];
    [v62 addObjectsFromArray:v20];

    v21 = v12;
    v22 = v53;
LABEL_11:

    goto LABEL_12;
  }

  if ([(PUPhotoEditViewController *)self isIpadLayout]|| [(PUPhotoEditViewController *)self layoutOrientation]== 2)
  {
    v23 = MEMORY[0x1B8C6D660]();
    v24 = [v6 leftAnchor];
    v55 = [(PUPhotoEditViewController *)self view];
    v54 = [v55 safeAreaLayoutGuide];
    [v54 leftAnchor];
    v52 = v56 = v24;
    v25 = [v24 constraintEqualToAnchor:?];
    v60 = v25;
    if (v23)
    {
      v71[0] = v25;
      v26 = [v6 rightAnchor];
      v58 = [(PUPhotoEditViewController *)self view];
      v57 = [v58 safeAreaLayoutGuide];
      v51 = [v57 rightAnchor];
      v59 = v26;
      v50 = [v26 constraintEqualToAnchor:v51];
      v71[1] = v50;
      v14 = [v6 topAnchor];
      v15 = [(PUPhotoEditViewController *)self view];
      v27 = [v15 safeAreaLayoutGuide];
      v17 = [v27 topAnchor];
      v18 = [v14 constraintEqualToAnchor:v17];
      v71[2] = v18;
      v16 = v27;
      v19 = [v63 bottomAnchor];
      v49 = [(PUPhotoEditViewController *)self view];
      v28 = [v49 bottomAnchor];
      v29 = [v19 constraintEqualToAnchor:v28];
      v71[3] = v29;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:4];
      [v62 addObjectsFromArray:v30];

      v13 = v50;
      v21 = v51;
    }

    else
    {
      v68[0] = v25;
      v31 = [v6 rightAnchor];
      v58 = [(PUPhotoEditViewController *)self view];
      v57 = [v58 safeAreaLayoutGuide];
      v32 = [v57 rightAnchor];
      v59 = v31;
      v13 = [v31 constraintEqualToAnchor:v32];
      v68[1] = v13;
      v14 = [v6 topAnchor];
      v15 = [(PUPhotoEditButtonCenteredToolbar *)self->_secondaryToolbar bottomAnchor];
      v69 = [v14 constraintEqualToAnchor:v15];
      v16 = v69;
      v17 = [v63 bottomAnchor];
      v18 = [(PUPhotoEditViewController *)self view];
      v19 = [v18 bottomAnchor];
      v33 = [v17 constraintEqualToAnchor:v19];
      v70 = v33;
      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:4];
      [v62 addObjectsFromArray:v34];

      v21 = v32;
    }

    v10 = v52;
    v22 = v54;
    goto LABEL_11;
  }

  v36 = [(PUPhotoEditViewController *)self layoutOrientation];
  if (v36 == 3)
  {
    v43 = [v6 leftAnchor];
    v55 = [(PUPhotoEditViewController *)self view];
    v22 = [v55 leftAnchor];
    v56 = v43;
    v10 = [v43 constraintEqualToAnchor:v22];
    v64[0] = v10;
    v44 = [v6 rightAnchor];
    v59 = [v61 leftAnchor];
    v60 = v44;
    v58 = [v44 constraintEqualToAnchor:?];
    v64[1] = v58;
    v45 = [v6 topAnchor];
    v46 = [(PUPhotoEditViewController *)self view];
    v47 = [v46 topAnchor];
    v57 = v45;
    v65 = [v45 constraintEqualToAnchor:v47];
    v15 = [v6 bottomAnchor];
    v48 = self;
    v21 = v46;
    v13 = v47;
    v14 = v65;
    v16 = [(PUPhotoEditViewController *)v48 view];
    v17 = [v16 bottomAnchor];
    v18 = [v15 constraintEqualToAnchor:v17];
    v66 = v18;
    v41 = MEMORY[0x1E695DEC8];
    v42 = v64;
    goto LABEL_19;
  }

  if (v36 == 1)
  {
    v37 = [v6 leftAnchor];
    v55 = [(PUPhotoEditViewController *)self view];
    v22 = [v55 leftAnchor];
    v56 = v37;
    v10 = [v37 constraintEqualToAnchor:v22];
    v67[0] = v10;
    v38 = [v6 rightAnchor];
    v59 = [(PUPhotoEditViewController *)self view];
    [v59 rightAnchor];
    v58 = v60 = v38;
    v57 = [v38 constraintEqualToAnchor:?];
    v67[1] = v57;
    v39 = [v6 topAnchor];
    v40 = self;
    v21 = v39;
    v13 = [(PUPhotoEditViewController *)v40 view];
    v14 = [v13 topAnchor];
    v15 = [v21 constraintEqualToAnchor:v14];
    v67[2] = v15;
    v16 = [v6 bottomAnchor];
    v17 = [v61 topAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v67[3] = v18;
    v41 = MEMORY[0x1E695DEC8];
    v42 = v67;
LABEL_19:
    v19 = [v41 arrayWithObjects:v42 count:4];
    [v62 addObjectsFromArray:v19];
    goto LABEL_11;
  }

LABEL_12:

  return v62;
}

- (void)updateViewConstraints
{
  v180[3] = *MEMORY[0x1E69E9840];
  [(PUPhotoEditViewController *)self lastKnownPreviewImageSize];
  IsEmpty = [(PUPhotoEditViewController *)self _placeholderViewFrameForImageSize:?];
  if (self->_placeholderImageView)
  {
    if (!self->_placeholderImageViewConstraints)
    {
      v8 = v4;
      v9 = v5;
      v10 = v6;
      v11 = v7;
      IsEmpty = CGRectIsEmpty(*&v4);
      if ((IsEmpty & 1) == 0)
      {
        v12 = [MEMORY[0x1E695DF70] array];
        v13 = [(UIImageView *)self->_placeholderImageView leftAnchor];
        v14 = [(UIImageView *)self->_placeholderImageView superview];
        v15 = [v14 leftAnchor];
        v16 = [v13 constraintEqualToAnchor:v15 constant:v8];
        [(NSArray *)v12 addObject:v16];

        v17 = [(UIImageView *)self->_placeholderImageView widthAnchor];
        v18 = [v17 constraintEqualToConstant:v10];
        [(NSArray *)v12 addObject:v18];

        v19 = [(UIImageView *)self->_placeholderImageView topAnchor];
        v20 = [(UIImageView *)self->_placeholderImageView superview];
        v21 = [v20 topAnchor];
        v22 = [v19 constraintEqualToAnchor:v21 constant:v9];
        [(NSArray *)v12 addObject:v22];

        v23 = [(UIImageView *)self->_placeholderImageView heightAnchor];
        v24 = [v23 constraintEqualToConstant:v11];
        [(NSArray *)v12 addObject:v24];

        [MEMORY[0x1E696ACD8] activateConstraints:v12];
        placeholderImageViewConstraints = self->_placeholderImageViewConstraints;
        self->_placeholderImageViewConstraints = v12;
      }
    }
  }

  if (self->_mainToolbar)
  {
    if (!self->_mainToolbarConstraints)
    {
      IsEmpty = MEMORY[0x1B8C6D660](IsEmpty);
      if ((IsEmpty & 1) == 0)
      {
        v26 = _NSDictionaryOfVariableBindings(&cfstr_Maintoolbar.isa, self->_mainToolbar, 0);
        v27 = [MEMORY[0x1E695DF70] array];
        [(PUPhotoEditToolbar *)self->_mainToolbar setTranslatesAutoresizingMaskIntoConstraints:0];
        if ([(PUPhotoEditViewController *)self isIpadLayout])
        {
          v166 = [(PUPhotoEditToolbar *)self->_mainToolbar leftAnchor];
          v168 = [(PUPhotoEditViewController *)self view];
          v164 = [v168 leftAnchor];
          v162 = [v166 constraintEqualToAnchor:v164 constant:27.0];
          v180[0] = v162;
          v157 = [(PUPhotoEditToolbar *)self->_mainToolbar centerYAnchor];
          v159 = [(PUPhotoEditViewController *)self view];
          v156 = [v159 centerYAnchor];
          v28 = [v157 constraintEqualToAnchor:v156];
          v180[1] = v28;
          [(PUPhotoEditToolbar *)self->_mainToolbar heightAnchor];
          v29 = v170 = v26;
          [(PUPhotoEditViewController *)self view];
          v31 = v30 = v27;
          v32 = [v31 heightAnchor];
          v33 = [v29 constraintEqualToAnchor:v32];
          v180[2] = v33;
          v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v180 count:3];
          [(NSArray *)v30 addObjectsFromArray:v34];

          v27 = v30;
          v26 = v170;

          v35 = v157;
        }

        else
        {
          v36 = [(PUPhotoEditViewController *)self layoutOrientation];
          if ((v36 - 2) >= 2)
          {
            if (v36 == 1)
            {
              [(PUPhotoEditToolbar *)self->_mainToolbar setLayoutDirection:0];
              v154 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[_mainToolbar]|" options:0x10000 metrics:0 views:v26];
              [(NSArray *)v27 addObjectsFromArray:v154];

              v155 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[_mainToolbar]-0@highPriority-|" options:0 metrics:&unk_1F2B7F198 views:v26];
              [(NSArray *)v27 addObjectsFromArray:v155];
            }

            goto LABEL_13;
          }

          [(PUPhotoEditToolbar *)self->_mainToolbar setLayoutDirection:1];
          v166 = [(PUPhotoEditToolbar *)self->_mainToolbar rightAnchor];
          v168 = [(PUPhotoEditViewController *)self view];
          v164 = [v168 rightAnchor];
          v162 = [v166 constraintEqualToAnchor:v164];
          v179[0] = v162;
          v160 = [(PUPhotoEditToolbar *)self->_mainToolbar topAnchor];
          v158 = [(PUPhotoEditButtonCenteredToolbar *)self->_secondaryToolbar bottomAnchor];
          v37 = [v160 constraintEqualToAnchor:v158];
          v179[1] = v37;
          v38 = [(PUPhotoEditToolbar *)self->_mainToolbar bottomAnchor];
          v39 = [(PUPhotoEditViewController *)self view];
          [v39 bottomAnchor];
          v40 = v171 = v26;
          [v38 constraintEqualToAnchor:v40];
          v42 = v41 = v27;
          v179[2] = v42;
          v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v179 count:3];
          [(NSArray *)v41 addObjectsFromArray:v43];

          v27 = v41;
          v26 = v171;

          v35 = v160;
        }

LABEL_13:
        [MEMORY[0x1E696ACD8] activateConstraints:v27];
        mainToolbarConstraints = self->_mainToolbarConstraints;
        self->_mainToolbarConstraints = v27;
      }
    }
  }

  if (MEMORY[0x1B8C6D660](IsEmpty))
  {
    [(PUPhotoEditViewController *)self updateSwiftToolbarConstraints];
  }

  if (self->_secondaryToolbar && !self->_secondaryToolbarConstraints)
  {
    v45 = [MEMORY[0x1E695DF70] array];
    [(PUPhotoEditButtonCenteredToolbar *)self->_secondaryToolbar setTranslatesAutoresizingMaskIntoConstraints:0];
    v46 = [(PUPhotoEditButtonCenteredToolbar *)self->_secondaryToolbar leadingAnchor];
    v47 = [(PUPhotoEditViewController *)self view];
    v48 = [v47 leadingAnchor];
    v49 = [v46 constraintEqualToAnchor:v48];
    [(NSArray *)v45 addObject:v49];

    v50 = [(PUPhotoEditButtonCenteredToolbar *)self->_secondaryToolbar trailingAnchor];
    v51 = [(PUPhotoEditViewController *)self view];
    v52 = [v51 trailingAnchor];
    v53 = [v50 constraintEqualToAnchor:v52];
    [(NSArray *)v45 addObject:v53];

    v54 = [(PUPhotoEditButtonCenteredToolbar *)self->_secondaryToolbar topAnchor];
    v55 = [(PUPhotoEditViewController *)self view];
    v56 = [v55 topAnchor];
    v57 = [v54 constraintEqualToAnchor:v56 constant:0.0];

    LODWORD(v58) = 1144750080;
    [v57 setPriority:v58];
    [v57 setActive:1];
    [MEMORY[0x1E696ACD8] activateConstraints:v45];
    secondaryToolbarConstraints = self->_secondaryToolbarConstraints;
    self->_secondaryToolbarConstraints = v45;
  }

  if (!self->_actionButtonConstraints)
  {
    v60 = [(PUPhotoEditViewController *)self _actionButtonsGoInTopToolbar];
    mainActionButton = self->_mainActionButton;
    if (v60)
    {
      if (!mainActionButton || !self->_cancelButton)
      {
        goto LABEL_33;
      }

      if (MEMORY[0x1B8C6D660]())
      {
        v62 = [(PUPhotoEditViewController *)self layoutOrientation];
        v63 = [(PUPhotoEditViewController *)self view];
        [v63 bounds];
        LOBYTE(v62) = [PUPhotoEditLayoutSupport requiresCompactNavBarForLayoutOrientation:v62 viewWidth:v64];

        if (v62)
        {
          v65 = 26.0;
        }

        else
        {
          v65 = 66.0;
        }
      }

      else
      {
        v65 = 66.0;
      }

      v172 = [(PUPhotoEditNotchButton *)self->_mainActionButton widthAnchor];
      v68 = [v172 constraintEqualToConstant:v65];
      v178[0] = v68;
      v69 = [(PUPhotoEditNotchButton *)self->_mainActionButton heightAnchor];
      v71 = [v69 constraintEqualToConstant:26.0];
      v178[1] = v71;
      v72 = [(PUPhotoEditNotchButton *)self->_cancelButton widthAnchor];
      v73 = [v72 constraintEqualToConstant:v65];
      v178[2] = v73;
      v74 = [(PUPhotoEditNotchButton *)self->_cancelButton heightAnchor];
      v75 = [v74 constraintEqualToConstant:26.0];
      v178[3] = v75;
      v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:v178 count:4];
      actionButtonConstraints = self->_actionButtonConstraints;
      self->_actionButtonConstraints = v76;

      v67 = v172;
    }

    else
    {
      if (!mainActionButton)
      {
        goto LABEL_33;
      }

      cancelButton = self->_cancelButton;
      if (!cancelButton)
      {
        goto LABEL_33;
      }

      v67 = [(PUPhotoEditViewController *)self parentViewController];
      v68 = [v67 view];
      v69 = [v68 window];
      v70 = [PUPhotoEditLayoutSupport constraintsForNotchAreaButtonsLeading:cancelButton trailing:mainActionButton inWindow:v69];
      v71 = self->_actionButtonConstraints;
      self->_actionButtonConstraints = v70;
    }

LABEL_33:
    [MEMORY[0x1E696ACD8] activateConstraints:self->_actionButtonConstraints];
  }

  v78 = [(PUPhotoEditViewController *)self previewViewFrame];
  if (v80 > 0.0 && v79 > 0.0)
  {
    if (MEMORY[0x1B8C6D660](v78))
    {
      v81 = [(PUPhotoEditViewController *)self view];
      [v81 safeAreaInsets];
    }

    else
    {
      secondaryToolbar = self->_secondaryToolbar;
      if (secondaryToolbar)
      {
        [(PUPhotoEditToolbar *)secondaryToolbar intrinsicContentSize];
      }
    }
  }

  currentTool = self->_currentTool;
  if (currentTool)
  {
    v84 = [(UIViewController *)currentTool view];
    v85 = [v84 superview];

    if (v85)
    {
      if ((MEMORY[0x1B8C6D660]() & 1) != 0 || (mainToolbar = self->_mainToolbar) != 0 && (v87 = [(PUPhotoEditToolbar *)mainToolbar layoutOrientation], v87 == [(PUPhotoEditViewController *)self layoutOrientation]))
      {
        if (!self->_currentToolViewConstraints)
        {
          v88 = [(UIViewController *)self->_currentTool view];
          v89 = [(PUPhotoEditViewController *)self _constraintsForToolView:v88 wantsFullscreen:[(PUPhotoEditToolController *)self->_currentEditingTool wantsFullscreen]];
          [MEMORY[0x1E696ACD8] activateConstraints:v89];
          currentToolViewConstraints = self->_currentToolViewConstraints;
          self->_currentToolViewConstraints = v89;
        }
      }
    }
  }

  previousEditingTool = self->_previousEditingTool;
  if (previousEditingTool)
  {
    v92 = [(PUPhotoEditToolController *)previousEditingTool view];
    v93 = [v92 superview];

    if (v93)
    {
      if ((MEMORY[0x1B8C6D660]() & 1) != 0 || (v94 = self->_mainToolbar) != 0 && (v95 = [(PUPhotoEditToolbar *)v94 layoutOrientation], v95 == [(PUPhotoEditViewController *)self layoutOrientation]))
      {
        v96 = [(PUPhotoEditToolController *)self->_previousEditingTool view];
        v97 = [(PUPhotoEditViewController *)self _constraintsForToolView:v96 wantsFullscreen:[(PUPhotoEditToolController *)self->_previousEditingTool wantsFullscreen]];
        [MEMORY[0x1E696ACD8] activateConstraints:v97];
      }
    }
  }

  if (self->_progressIndicatorView && !self->_progressIndicatorViewConstraints)
  {
    v98 = [MEMORY[0x1E695DF70] array];
    v99 = MEMORY[0x1E696ACD8];
    progressIndicatorView = self->_progressIndicatorView;
    v101 = [(PUPhotoEditViewController *)self view];
    v102 = [v99 constraintWithItem:progressIndicatorView attribute:9 relatedBy:0 toItem:v101 attribute:9 multiplier:1.0 constant:0.0];
    [(NSArray *)v98 addObject:v102];

    v103 = MEMORY[0x1E696ACD8];
    v104 = self->_progressIndicatorView;
    v105 = [(PUPhotoEditViewController *)self view];
    v106 = [v103 constraintWithItem:v104 attribute:10 relatedBy:0 toItem:v105 attribute:10 multiplier:1.0 constant:0.0];
    [(NSArray *)v98 addObject:v106];

    [MEMORY[0x1E696ACD8] activateConstraints:v98];
    progressIndicatorViewConstraints = self->_progressIndicatorViewConstraints;
    self->_progressIndicatorViewConstraints = v98;
  }

  [(PUPhotoEditViewController *)self _updateProgressEventBlockingViewConstraints];
  v108 = [(PUPhotoEditViewController *)self layoutOrientation];
  v109 = [MEMORY[0x1E69DC938] currentDevice];
  v110 = [v109 userInterfaceIdiom];

  if ((v110 & 0xFFFFFFFFFFFFFFFBLL) == 1 && v108 == 1)
  {
    v112 = 18.0;
  }

  else
  {
    v112 = 0.0;
  }

  v113 = [(NUMediaView *)self->_mediaView _scrollView];
  v114 = [(PUPhotoEditViewController *)self view];
  [v114 safeAreaInsets];
  v116 = v115;
  v118 = v117;

  v119 = v116;
  if ((MEMORY[0x1B8C6D660]() & 1) == 0)
  {
    [(PUPhotoEditToolbar *)self->_secondaryToolbar intrinsicContentSize];
    v119 = v120;
  }

  if (self->_transientStatusBadge)
  {
    LOBYTE(imageFrameLayoutGuide) = v113 == 0;
    if (v113)
    {
      if (!self->_transientStatusBadgeConstraints)
      {
        imageFrameLayoutGuide = self->_imageFrameLayoutGuide;
        if (imageFrameLayoutGuide)
        {
          v122 = [MEMORY[0x1E695DF70] array];
          [(CEKBadgeTextView *)self->_transientStatusBadge topAnchor];
          v123 = v174 = v108;
          v124 = [(PUPhotoEditViewController *)self view];
          v125 = [v124 topAnchor];
          v126 = [v123 constraintEqualToAnchor:v125 constant:v112 + v116 + 36.0];
          [(NSArray *)v122 addObject:v126];

          v127 = [(CEKBadgeTextView *)self->_transientStatusBadge centerXAnchor];
          v128 = [(PUPhotoEditViewController *)self view];
          v129 = [v128 centerXAnchor];
          v130 = [v127 constraintEqualToAnchor:v129 constant:0.0];
          [(NSArray *)v122 addObject:v130];

          v131 = [(CEKBadgeTextView *)self->_transientStatusBadge widthAnchor];
          v132 = [v113 widthAnchor];
          v133 = [v131 constraintLessThanOrEqualToAnchor:v132 multiplier:1.0 constant:-18.0];
          [(NSArray *)v122 addObject:v133];

          v108 = v174;
          [MEMORY[0x1E696ACD8] activateConstraints:v122];
          transientStatusBadgeConstraints = self->_transientStatusBadgeConstraints;
          self->_transientStatusBadgeConstraints = v122;

          LOBYTE(imageFrameLayoutGuide) = 0;
        }
      }
    }
  }

  else
  {
    LOBYTE(imageFrameLayoutGuide) = v113 == 0;
  }

  if (self->_assetTypeBadge)
  {
    if (self->_assetTypeBadgeConstraints)
    {
      LOBYTE(imageFrameLayoutGuide) = 1;
    }

    if ((imageFrameLayoutGuide & 1) == 0)
    {
      v135 = v118 + 22.0 + 6.0;
      v136 = [MEMORY[0x1E695DF70] array];
      [(PXUIAssetBadgeView *)self->_assetTypeBadge topAnchor];
      v138 = v137 = v108;
      v139 = [v113 topAnchor];
      v140 = [v138 constraintEqualToAnchor:v139 constant:v119 + 6.0];
      [(NSArray *)v136 addObject:v140];

      v141 = [(PXUIAssetBadgeView *)self->_assetTypeBadge leftAnchor];
      v142 = [v113 leftAnchor];
      if (v137 == 1)
      {
        v143 = 6.0;
      }

      else
      {
        v143 = v135;
      }

      v144 = [v141 constraintEqualToAnchor:v142 constant:v143];
      [(NSArray *)v136 addObject:v144];

      [MEMORY[0x1E696ACD8] activateConstraints:v136];
      assetTypeBadgeConstraints = self->_assetTypeBadgeConstraints;
      self->_assetTypeBadgeConstraints = v136;
    }
  }

  if (self->_mediaView && !self->_mediaViewConstraints)
  {
    v146 = [(PUPhotoEditViewController *)self view];
    v175 = [(NUMediaView *)self->_mediaView centerXAnchor];
    v173 = [v146 centerXAnchor];
    v169 = [v175 constraintEqualToAnchor:v173];
    v177[0] = v169;
    v167 = [(NUMediaView *)self->_mediaView centerYAnchor];
    v165 = [v146 centerYAnchor];
    v163 = [v167 constraintEqualToAnchor:v165];
    v177[1] = v163;
    v161 = [(NUMediaView *)self->_mediaView heightAnchor];
    v147 = [v146 heightAnchor];
    v148 = [v161 constraintEqualToAnchor:v147];
    v177[2] = v148;
    v149 = [(NUMediaView *)self->_mediaView widthAnchor];
    v150 = [v146 widthAnchor];
    v151 = [v149 constraintEqualToAnchor:v150];
    v177[3] = v151;
    v152 = [MEMORY[0x1E695DEC8] arrayWithObjects:v177 count:4];

    [MEMORY[0x1E696ACD8] activateConstraints:v152];
    mediaViewConstraints = self->_mediaViewConstraints;
    self->_mediaViewConstraints = v152;
  }

  v176.receiver = self;
  v176.super_class = PUPhotoEditViewController;
  [(PUPhotoEditViewController *)&v176 updateViewConstraints];
}

- (void)_updateProgressEventBlockingViewConstraints
{
  v45[4] = *MEMORY[0x1E69E9840];
  if (self->_progressEventBlockingView && !self->_progressEventBlockingViewConstraints)
  {
    if (-[PUPhotoEditViewController layoutOrientation](self, "layoutOrientation") != 1 || -[PUPhotoEditViewController isIpadLayout](self, "isIpadLayout") || MEMORY[0x1B8C6D660]() && (v22 = -[PUPhotoEditViewController layoutOrientation](self, "layoutOrientation"), -[PUPhotoEditViewController view](self, "view"), v23 = objc_claimAutoreleasedReturnValue(), [v23 bounds], v25 = +[PUPhotoEditLayoutSupport requiresCompactNavBarForLayoutOrientation:viewWidth:](PUPhotoEditLayoutSupport, "requiresCompactNavBarForLayoutOrientation:viewWidth:", v22, v24), v23, v25))
    {
      v3 = MEMORY[0x1B8C6D660]();
      v4 = [(UIView *)self->_progressEventBlockingView leftAnchor];
      v34 = [(PUPhotoEditViewController *)self view];
      v41 = [v34 leftAnchor];
      v5 = [v4 constraintEqualToAnchor:?];
      v42 = v5;
      if (v3)
      {
        v45[0] = v5;
        v6 = [(UIView *)self->_progressEventBlockingView topAnchor];
        v39 = [(PUPhotoEditViewController *)self view];
        v38 = [v39 safeAreaLayoutGuide];
        [v38 topAnchor];
        v37 = v40 = v6;
        v36 = [v6 constraintEqualToAnchor:?];
        v45[1] = v36;
        v7 = [(UIView *)self->_progressEventBlockingView rightAnchor];
        v8 = [(PUPhotoEditViewController *)self view];
        v9 = [v8 rightAnchor];
        v35 = v7;
        v10 = [v7 constraintEqualToAnchor:v9];
        v45[2] = v10;
        v11 = [(UIView *)self->_progressEventBlockingView bottomAnchor];
        v12 = [(PUPhotoEditViewController *)self view];
        v13 = [v12 bottomAnchor];
        [v11 constraintEqualToAnchor:v13];
        v15 = v14 = v4;
        v45[3] = v15;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:4];
        progressEventBlockingViewConstraints = self->_progressEventBlockingViewConstraints;
        self->_progressEventBlockingViewConstraints = v16;

        v4 = v14;
      }

      else
      {
        v44[0] = v5;
        v18 = [(UIView *)self->_progressEventBlockingView topAnchor];
        v39 = [(PUPhotoEditButtonCenteredToolbar *)self->_secondaryToolbar bottomAnchor];
        v40 = v18;
        v38 = [v18 constraintEqualToAnchor:?];
        v44[1] = v38;
        v19 = [(UIView *)self->_progressEventBlockingView rightAnchor];
        v36 = [(PUPhotoEditViewController *)self view];
        [v36 rightAnchor];
        v35 = v37 = v19;
        v8 = [v19 constraintEqualToAnchor:?];
        v44[2] = v8;
        v9 = [(UIView *)self->_progressEventBlockingView bottomAnchor];
        v10 = [(PUPhotoEditViewController *)self view];
        v11 = [v10 bottomAnchor];
        v12 = [v9 constraintEqualToAnchor:v11];
        v44[3] = v12;
        v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:4];
        v13 = self->_progressEventBlockingViewConstraints;
        self->_progressEventBlockingViewConstraints = v20;
      }

      v21 = v34;
    }

    else
    {
      v26 = MEMORY[0x1B8C6D660]();
      v27 = &OBJC_IVAR___PUPhotoEditViewController__mainToolbar;
      if (v26)
      {
        v27 = &OBJC_IVAR___PUPhotoEditViewController__swiftToolbarView;
      }

      progressEventBlockingView = self->_progressEventBlockingView;
      v29 = *(&self->super.super.super.isa + *v27);
      v4 = [(UIView *)progressEventBlockingView leftAnchor];
      v21 = [(PUPhotoEditViewController *)self view];
      v41 = [v21 leftAnchor];
      v40 = [v4 constraintEqualToAnchor:?];
      v43[0] = v40;
      v30 = [(UIView *)self->_progressEventBlockingView topAnchor];
      v38 = [(PUPhotoEditViewController *)self view];
      [v38 topAnchor];
      v37 = v39 = v30;
      v36 = [v30 constraintEqualToAnchor:?];
      v43[1] = v36;
      v31 = [(UIView *)self->_progressEventBlockingView rightAnchor];
      v8 = [(PUPhotoEditViewController *)self view];
      v9 = [v8 rightAnchor];
      v35 = v31;
      v10 = [v31 constraintEqualToAnchor:v9];
      v43[2] = v10;
      v11 = [(UIView *)self->_progressEventBlockingView bottomAnchor];
      v42 = v29;
      v12 = [v29 topAnchor];
      v13 = [v11 constraintEqualToAnchor:v12];
      v43[3] = v13;
      v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:4];
      v33 = self->_progressEventBlockingViewConstraints;
      self->_progressEventBlockingViewConstraints = v32;
    }

    [MEMORY[0x1E696ACD8] activateConstraints:self->_progressEventBlockingViewConstraints];
  }
}

- (id)_preferredStatusBarHideAnimationParameters
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCFA0]);

  return v2;
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  if ([(PUPhotoEditViewController *)self layoutOrientation]!= 1)
  {
    return 1;
  }

  return [(PUPhotoEditViewController *)self isFocusingViewForInteraction];
}

- (BOOL)prefersStatusBarHidden
{
  PLPhysicalDeviceIsIPad();
  v2 = +[PUPhotoEditProtoSettings sharedInstance];
  [v2 hideStatusBariPad];

  return PXShouldHideStatusBarWithCameraWorkaround();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PUPhotoEditViewController;
  [(PUPhotoEditViewController *)&v5 viewDidDisappear:a3];
  [(PUViewControllerSpec *)self->_photoEditSpec unregisterChangeObserver:self];
  [(PUPhotoEditViewController *)self updateProgressIndicatorAnimated:0];
  v4 = [(PUPhotoEditViewController *)self viewIfLoaded];
  PXAppIntentsClearViewAnnotationDelegate();

  [(PUPhotoEditViewController *)self _teardownCleanupResources];
  [MEMORY[0x1E69C3548] setTipsPresentationDelegate:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = PUPhotoEditViewController;
  [(PUPhotoEditViewController *)&v10 viewWillDisappear:a3];
  v4 = [(PUPhotoEditViewController *)self navigationController];
  [v4 setOverrideUserInterfaceStyle:0];

  v5 = [(PUPhotoEditViewController *)self navigationController];
  [v5 setNeedsUserInterfaceAppearanceUpdate];

  v6 = [(PUPhotoEditViewController *)self resourceLoader];
  [v6 cancelAllRequests];

  v7 = [(PUPhotoEditViewController *)self revertConfirmationAlert];

  if (v7)
  {
    v8 = [(PUPhotoEditViewController *)self revertConfirmationAlert];
    [v8 dismissViewControllerAnimated:0 completion:0];
  }

  [(NUMediaView *)self->_mediaView _stopVideoPlayback];
  v9 = [(PUPhotoEditViewController *)self compositionController];
  [v9 setChangeDelegate:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = PUPhotoEditViewController;
  [(PUPhotoEditViewController *)&v6 viewDidAppear:?];
  [(PUPhotoEditViewController *)self updateProgressIndicatorAnimated:v3];
  v5 = [(PUPhotoEditViewController *)self view];
  PXAppIntentsSetViewAnnotationDelegate();

  [MEMORY[0x1E69C3548] setTipsPresentationDelegate:self];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v13.receiver = self;
  v13.super_class = PUPhotoEditViewController;
  [(PUPhotoEditViewController *)&v13 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  if (a3)
  {
    [(PUPhotoEditViewController *)self _loadPhotoEditResourcesIfNeeded];
  }

  v6 = [(PUPhotoEditViewController *)self view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  if ([(UIViewController *)self pu_isPresenting])
  {
    [(PUViewControllerSpec *)self->_photoEditSpec layoutReferenceSize];
    v8 = v11;
    v10 = v12;
  }

  [(PUPhotoEditViewController *)self _updateLayoutOrientationWithViewSize:0 transitionCoordinator:v8, v10];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v20.receiver = self;
  v20.super_class = PUPhotoEditViewController;
  [(PUPhotoEditViewController *)&v20 viewWillAppear:?];
  v5 = [(PUPhotoEditViewController *)self navigationController];
  [v5 setOverrideUserInterfaceStyle:{-[PUPhotoEditViewController preferredUserInterfaceStyle](self, "preferredUserInterfaceStyle")}];

  v6 = [(PUPhotoEditViewController *)self navigationController];
  [v6 setNeedsUserInterfaceAppearanceUpdate];

  v7 = [(PUPhotoEditViewController *)self avResourceReclamationAssertion];

  if (!v7)
  {
    v8 = [(PUPhotoEditViewController *)self avResourceReclamationController];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 takeAssertionPreventingResourceReclamationWithReason:v10];
    [(PUPhotoEditViewController *)self setAvResourceReclamationAssertion:v11];
  }

  [(UIViewController *)self pu_setupInitialBarsVisibilityOnViewWillAppearAnimated:v3];
  [(PUPhotoEditViewController *)self _updateTraitCollectionAndLayoutReferenceSize];
  [(PUViewControllerSpec *)self->_photoEditSpec registerChangeObserver:self];
  v12 = [(PUPhotoEditViewController *)self view];
  [v12 bounds];
  v14 = v13;
  v16 = v15;

  if ([(UIViewController *)self pu_isPresenting])
  {
    [(PUViewControllerSpec *)self->_photoEditSpec layoutReferenceSize];
    v14 = v17;
    v16 = v18;
  }

  [(PUPhotoEditViewController *)self _updateLayoutOrientationWithViewSize:0 transitionCoordinator:v14, v16];
  [(PUPhotoEditViewController *)self _loadPhotoEditResourcesIfNeeded];
  [(PUPhotoEditViewController *)self _updateToolbarsAnimated:0];
  [(PUPhotoEditViewController *)self _updateTogglePreviewGestureRecognizer];
  [(PUPhotoEditViewController *)self _updateLivePhotoPlaybackGestureRecognizer];
  [(PUPhotoEditViewController *)self _updatePreviewingOriginal];
  [(PUPhotoEditViewController *)self _updateBackgroundColor];
  [(PUPhotoEditViewController *)self _updateToolbarBackgroundAnimated:0];
  [(PUPhotoEditViewController *)self _createPencilInteractionIfNeeded];
  [(PEAutoAdjustmentController *)self->_autoEnhanceController invalidateCachedAdjustments];
  v19 = [(PUPhotoEditViewController *)self compositionController];
  [v19 setChangeDelegate:self];

  if (self->_mediaToolController)
  {
    if (!self->_currentTool)
    {
      [PUPhotoEditViewController switchToEditingTool:"switchToEditingTool:animated:" animated:?];
    }
  }
}

- (void)viewDidLoad
{
  v64.receiver = self;
  v64.super_class = PUPhotoEditViewController;
  [(PUPhotoEditViewController *)&v64 viewDidLoad];
  [(PUPhotoEditViewController *)self px_enableImageModulation];
  v3 = [(PUPhotoEditViewController *)self view];
  [v3 setAccessibilityIgnoresInvertColors:1];
  v4 = [(PUPhotoEditViewController *)self contentScrollView];
  [v4 setContentInsetAdjustmentBehavior:3];

  v5 = [(PUPhotoEditViewController *)self _createMediaView];
  mediaView = self->_mediaView;
  self->_mediaView = v5;

  [v3 addSubview:self->_mediaView];
  [(PUPhotoEditViewController *)self _createVideoScrubberIfNeeded];
  v7 = objc_alloc_init(MEMORY[0x1E69C4260]);
  autoEnhanceController = self->_autoEnhanceController;
  self->_autoEnhanceController = v7;

  [(PUPhotoEditViewController *)self _setupImagePluginSession];
  [v3 setNeedsUpdateConstraints];
  [(PUPhotoEditViewController *)self _updateLayerModulation];
  v9 = +[PUPhotoEditProtoSettings sharedInstance];
  v10 = [v9 enablePerfDebugHUD];

  if (v10)
  {
    v11 = objc_alloc_init(PUPhotoEditPerfHUD);
    [(PUPhotoEditViewController *)self setPerfHUD:v11];

    v12 = [(PUPhotoEditViewController *)self perfHUD];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

    v13 = [(PUPhotoEditViewController *)self perfHUD];
    [v3 addSubview:v13];

    v14 = [(PUPhotoEditViewController *)self isFirstSinceBoot];
    v15 = [(PUPhotoEditViewController *)self perfHUD];
    [v15 setFirstSinceBoot:v14];

    v16 = [(PUPhotoEditViewController *)self isFirstSinceLaunch];
    v17 = [(PUPhotoEditViewController *)self perfHUD];
    [v17 setFirstSinceLaunch:v16];

    v18 = [(PUPhotoEditViewController *)self enterEditTimeInterval];
    v19 = [(PUPhotoEditViewController *)self perfHUD];
    [v19 setEnterEditTimeInterval:v18];

    v20 = [(PUPhotoEditViewController *)self resourceCheckingInterval];
    v21 = [(PUPhotoEditViewController *)self perfHUD];
    [v21 setResourceCheckingInterval:v20];

    v22 = [(PUPhotoEditViewController *)self resourceDownloadInterval];
    v23 = [(PUPhotoEditViewController *)self perfHUD];
    [v23 setResourceDownloadInterval:v22];

    v24 = [(PUPhotoEditViewController *)self resourceLoadingInterval];
    v25 = [(PUPhotoEditViewController *)self perfHUD];
    [v25 setResourceLoadingInterval:v24];

    v26 = [(PUPhotoEditViewController *)self autoCalcInterval];
    v27 = [(PUPhotoEditViewController *)self perfHUD];
    [v27 setAutoCalcInterval:v26];

    v28 = [(PUPhotoEditViewController *)self filterInterval];
    v29 = [(PUPhotoEditViewController *)self perfHUD];
    [v29 setFilterInterval:v28];

    v30 = [(PUPhotoEditViewController *)self exitEditTimeInterval];
    v31 = [(PUPhotoEditViewController *)self perfHUD];
    [v31 setExitEditTimeInterval:v30];

    v32 = [(PUPhotoEditViewController *)self perfHUD];
    v33 = [v32 leadingAnchor];
    v34 = [v3 safeAreaLayoutGuide];
    v35 = [v34 leadingAnchor];
    v36 = [v33 constraintEqualToAnchor:v35 constant:4.0];
    [v36 setActive:1];

    v37 = [(PUPhotoEditViewController *)self perfHUD];
    v38 = [v37 topAnchor];
    v39 = [v3 safeAreaLayoutGuide];
    v40 = [v39 topAnchor];
    v41 = [v38 constraintEqualToAnchor:v40 constant:50.0];
    [v41 setActive:1];

    v42 = [(PUPhotoEditViewController *)self photo];
    v43 = [v42 pathForOriginalImageFile];
    v44 = [v43 lastPathComponent];
    v45 = [(PUPhotoEditViewController *)self perfHUD];
    [v45 setDetailText:v44];
LABEL_5:

    goto LABEL_6;
  }

  v46 = +[PUPhotoEditProtoSettings sharedInstance];
  v47 = [v46 enableSemanticDevelopmentHUD];

  if (v47)
  {
    v48 = [PUPhotoSceneHUD alloc];
    v49 = [(PUPhotoEditViewController *)self photo];
    v50 = [(PUPhotoSceneHUD *)v48 initWithPhoto:v49];
    [(PUPhotoEditViewController *)self setSceneHUD:v50];

    v51 = [(PUPhotoEditViewController *)self sceneHUD];
    [v51 setTranslatesAutoresizingMaskIntoConstraints:0];

    v52 = [(PUPhotoEditViewController *)self sceneHUD];
    [v3 addSubview:v52];

    v53 = [(PUPhotoEditViewController *)self sceneHUD];
    v54 = [v53 leadingAnchor];
    v55 = [v3 safeAreaLayoutGuide];
    v56 = [v55 leadingAnchor];
    v57 = [v54 constraintEqualToAnchor:v56 constant:4.0];
    [v57 setActive:1];

    v42 = [(PUPhotoEditViewController *)self sceneHUD];
    v43 = [v42 topAnchor];
    v44 = [v3 safeAreaLayoutGuide];
    v45 = [v44 topAnchor];
    v58 = [v43 constraintEqualToAnchor:v45 constant:50.0];
    [v58 setActive:1];

    goto LABEL_5;
  }

LABEL_6:
  v59 = [MEMORY[0x1E696AD88] defaultCenter];
  [v59 addObserver:self selector:sel__undoManagerDidCloseUndoGroupNotification_ name:*MEMORY[0x1E696AA18] object:0];
  [v59 addObserver:self selector:sel__undoManagerWillUndo_ name:*MEMORY[0x1E696AA48] object:0];
  [v59 addObserver:self selector:sel__undoManagerWillRedo_ name:*MEMORY[0x1E696AA40] object:0];
  [v59 addObserver:self selector:sel__undoManagerDidUndo_ name:*MEMORY[0x1E696AA30] object:0];
  if (MEMORY[0x1B8C6D660]([v59 addObserver:self selector:sel__undoManagerDidRedo_ name:*MEMORY[0x1E696AA28] object:0]))
  {
    [(PUPhotoEditViewController *)self setupSwiftToolbar];
    [(PUPhotoEditViewController *)self updateSwiftToolbarConstraints];
    v60 = [MEMORY[0x1E69C3A68] sharedInstance];
    v61 = [v60 enableAdaptiveDarkBiasInEdit];

    if (v61)
    {
      v62 = [(PUPhotoEditViewController *)self mediaView];
      v63 = [v62 _scrollView];
      [v63 px_setPocketPreferredUserInterfaceStyleForAllEdges:2];
    }
  }
}

- (id)_composition
{
  v4 = [(PUPhotoEditViewController *)self editSource];
  if (v4)
  {
    v5 = [(PUPhotoEditViewController *)self editSource];
    v6 = [v5 mediaType];
    goto LABEL_5;
  }

  v7 = [(PUPhotoEditViewController *)self originalImageEditSource];
  if (v7)
  {
    v5 = v7;
    v8 = [(PUPhotoEditViewController *)self originalImageEditSource];
    v6 = [v8 mediaType];

LABEL_5:
    if (v6)
    {
      goto LABEL_6;
    }
  }

  v13 = [MEMORY[0x1E696AAA8] currentHandler];
  [v13 handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:987 description:{@"could not work out media type, so no composition for you!"}];

  v6 = 0;
LABEL_6:
  v9 = MEMORY[0x1E69BE360];
  v10 = [(PUPhotoEditViewController *)self compositionController];
  v11 = [v9 validatedCompositionCopyFor:v10 mediaType:v6];

  return v11;
}

- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4
{
  [(PUPhotoEditViewController *)self _updateTraitCollectionAndLayoutReferenceSize:a3];
  v5 = [(PUPhotoEditViewController *)self photoEditSpec];
  [v5 layoutReferenceSize];
  [(PUPhotoEditViewController *)self _updateLayoutOrientationWithViewSize:0 transitionCoordinator:?];

  [(PUPhotoEditViewController *)self _updateSpecDependentUIPieces];
}

- (void)_updateTraitCollectionAndLayoutReferenceSize
{
  v3 = [(PUPhotoEditViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  if ([(UIViewController *)self pu_isPresenting])
  {
    [(PUViewControllerSpec *)self->_photoEditSpec layoutReferenceSize];
    v5 = v8;
    v7 = v9;
  }

  [(PUPhotoEditViewController *)self _updateTraitCollectionAndLayoutReferenceSize:v5, v7];
}

- (void)_updateTraitCollectionAndLayoutReferenceSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(PUPhotoEditViewController *)self traitCollection];
  photoEditSpec = self->_photoEditSpec;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __74__PUPhotoEditViewController__updateTraitCollectionAndLayoutReferenceSize___block_invoke;
  v12 = &unk_1E7B80688;
  v13 = self;
  v14 = v6;
  v15 = width;
  v16 = height;
  v8 = v6;
  [(PUViewControllerSpec *)photoEditSpec performChanges:&v9];
  [(PUPhotoEditViewController *)self updateInteractions:v9];
}

uint64_t __74__PUPhotoEditViewController__updateTraitCollectionAndLayoutReferenceSize___block_invoke(double *a1)
{
  [*(*(a1 + 4) + 1856) setPrefersCompactLayoutForSplitScreen:1];
  [*(*(a1 + 4) + 1856) setTraitCollection:*(a1 + 5)];
  v2 = *(*(a1 + 4) + 1856);
  v3 = a1[6];
  v4 = a1[7];

  return [v2 setLayoutReferenceSize:{v3, v4}];
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(PUPhotoEditViewController *)self _updatePreviewOriginal:0 withPresses:v6])
  {
    v8.receiver = self;
    v8.super_class = PUPhotoEditViewController;
    [(PUPhotoEditViewController *)&v8 pressesBegan:v6 withEvent:v7];
  }
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(PUPhotoEditViewController *)self _updatePreviewOriginal:0 withPresses:v6])
  {
    v8.receiver = self;
    v8.super_class = PUPhotoEditViewController;
    [(PUPhotoEditViewController *)&v8 pressesBegan:v6 withEvent:v7];
  }
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(PUPhotoEditViewController *)self _updatePreviewOriginal:1 withPresses:v6])
  {
    v8.receiver = self;
    v8.super_class = PUPhotoEditViewController;
    [(PUPhotoEditViewController *)&v8 pressesBegan:v6 withEvent:v7];
  }
}

- (BOOL)_updatePreviewOriginal:(BOOL)a3 withPresses:(id)a4
{
  v4 = a3;
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ([(PUPhotoEditToolController *)self->_currentEditingTool supportsPreviewingOriginal])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = v6;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = [*(*(&v17 + 1) + 8 * i) key];
          v14 = [v13 charactersIgnoringModifiers];

          if ([v14 isEqualToString:@"m"])
          {
            [(PUPhotoEditViewController *)self setShouldBePreviewingOriginal:v4];
            v10 = 1;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    v6 = v16;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (void)_updateKeyCommands
{
  v83 = *MEMORY[0x1E69E9840];
  if ([(PUPhotoEditViewController *)self _enableSpatialMediaEditing]|| ![(PUPhotoEditViewController *)self isSpatialMedia])
  {
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v58 = 1752;
    v3 = self->_addedKeyCommands;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v75 objects:v82 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v76;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v76 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(PUPhotoEditViewController *)self removeKeyCommand:*(*(&v75 + 1) + 8 * i), v58];
        }

        v5 = [(NSArray *)v3 countByEnumeratingWithState:&v75 objects:v82 count:16];
      }

      while (v5);
    }

    v60 = objc_opt_new();
    v8 = [(PUPhotoEditViewController *)self _allTools];
    v61 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v8, "count")}];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v71 objects:v81 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 1;
      v12 = *v72;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v72 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v71 + 1) + 8 * j);
          if ([(PUPhotoStyleToolController *)v14 toolControllerTag]!= 1006)
          {
            v15 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
            v16 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PUPhotoStyleToolController toolControllerTag](v14, "toolControllerTag")}];
            [v61 setObject:v16 forKeyedSubscript:v15];

            if (v14 == self->_adjustmentsController)
            {
              v17 = @"a";
            }

            else if (v14 == self->_filtersController)
            {
              v17 = @"f";
            }

            else if (v14 == self->_cropController)
            {
              v17 = @"c";
            }

            else
            {
              if (v14 != self->_cleanupController)
              {
                if (v14 == self->_photoStylesToolController)
                {
                  v17 = @"s";
                  goto LABEL_26;
                }

LABEL_27:
                ++v11;

                continue;
              }

              v17 = @"r";
            }

LABEL_26:
            v18 = [MEMORY[0x1E69DCBA0] commandWithTitle:&stru_1F2AC6818 image:0 action:sel_navigateToSegment_ input:v17 modifierFlags:0 propertyList:v15];
            [v60 addObject:v18];

            goto LABEL_27;
          }
        }

        v10 = [obj countByEnumeratingWithState:&v71 objects:v81 count:16];
      }

      while (v10);
    }

    v19 = [v61 copy];
    toolControllerTagsByKeyCommandNumber = self->_toolControllerTagsByKeyCommandNumber;
    self->_toolControllerTagsByKeyCommandNumber = v19;

    if ([(PUPhotoEditToolController *)self->_currentEditingTool wantsScrubberKeyControl])
    {
      v21 = [(PUPhotoEditToolController *)self->_currentEditingTool scrubberOrientation];
      v22 = MEMORY[0x1E69DDF10];
      if (v21 != 1)
      {
        v22 = MEMORY[0x1E69DDF30];
      }

      v23 = *v22;
      v24 = MEMORY[0x1E69DCBA0];
      if (v21 == 1)
      {
        v25 = MEMORY[0x1E69DDF28];
      }

      else
      {
        v25 = MEMORY[0x1E69DDE90];
      }

      v26 = v23;
      v27 = [v24 keyCommandWithInput:v26 modifierFlags:0 action:sel__handleScrubberValueDecrease_];
      [v60 addObject:v27];

      v28 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:v26 modifierFlags:0x20000 action:sel__handleCoarseScrubberValueDecrease_];

      [v60 addObject:v28];
      v29 = MEMORY[0x1E69DCBA0];
      v30 = *v25;
      v31 = [v29 keyCommandWithInput:v30 modifierFlags:0 action:sel__handleScrubberValueIncrease_];
      [v60 addObject:v31];

      v32 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:v30 modifierFlags:0x20000 action:sel__handleCoarseScrubberValueIncrease_];

      [v60 addObject:v32];
    }

    if ([(PUPhotoEditToolController *)self->_currentEditingTool wantsSliderKeyControl])
    {
      v33 = [(PUPhotoEditToolController *)self->_currentEditingTool scrubberOrientation];
      v34 = MEMORY[0x1E69DDF10];
      if (v33 != 1)
      {
        v34 = MEMORY[0x1E69DDE90];
      }

      v35 = *v34;
      v36 = MEMORY[0x1E69DCBA0];
      if (v33 == 1)
      {
        v37 = MEMORY[0x1E69DDF28];
      }

      else
      {
        v37 = MEMORY[0x1E69DDF30];
      }

      v38 = v35;
      v39 = [v36 keyCommandWithInput:v38 modifierFlags:0x80000 action:sel__handleSliderValueDecrease_];
      [v60 addObject:v39];

      v40 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:v38 modifierFlags:655360 action:sel__handleCoarseSliderValueDecrease_];

      [v60 addObject:v40];
      v41 = MEMORY[0x1E69DCBA0];
      v42 = *v37;
      v43 = [v41 keyCommandWithInput:v42 modifierFlags:0x80000 action:sel__handleSliderValueIncrease_];
      [v60 addObject:v43];

      v44 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:v42 modifierFlags:655360 action:sel__handleCoarseSliderValueIncrease_];

      [v60 addObject:v44];
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v45 = v60;
    v46 = [v45 countByEnumeratingWithState:&v67 objects:v80 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v68;
      do
      {
        for (k = 0; k != v47; ++k)
        {
          if (*v68 != v48)
          {
            objc_enumerationMutation(v45);
          }

          [*(*(&v67 + 1) + 8 * k) setWantsPriorityOverSystemBehavior:1];
        }

        v47 = [v45 countByEnumeratingWithState:&v67 objects:v80 count:16];
      }

      while (v47);
    }

    v50 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel__handleCancelButton_];
    [v45 addObject:v50];

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v51 = v45;
    v52 = [v51 countByEnumeratingWithState:&v63 objects:v79 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v64;
      do
      {
        for (m = 0; m != v53; ++m)
        {
          if (*v64 != v54)
          {
            objc_enumerationMutation(v51);
          }

          [(PUPhotoEditViewController *)self addKeyCommand:*(*(&v63 + 1) + 8 * m)];
        }

        v53 = [v51 countByEnumeratingWithState:&v63 objects:v79 count:16];
      }

      while (v53);
    }

    v56 = [v51 copy];
    v57 = *(&self->super.super.super.isa + v59);
    *(&self->super.super.super.isa + v59) = v56;
  }
}

- (void)dealloc
{
  v3 = [(PUPhotoEditViewController *)self assetChangeTimeoutTimer];
  [v3 invalidate];

  [(PUPhotoEditViewController *)self setAssetChangeTimeoutTimer:0];
  if (self->_progressIndicatorInteractionDisablingToken)
  {
    [PUInterfaceManager endDisablingUserInteraction:?];
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  v5 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  [v5 px_unregisterChangeObserver:self];

  saveProgressTimer = self->_saveProgressTimer;
  if (saveProgressTimer)
  {
    dispatch_source_cancel(saveProgressTimer);
    v7 = self->_saveProgressTimer;
    self->_saveProgressTimer = 0;
  }

  CGImageRelease(self->_gainMapImage);
  v8.receiver = self;
  v8.super_class = PUPhotoEditViewController;
  [(PUPhotoEditViewController *)&v8 dealloc];
}

- (PUPhotoEditViewController)initWithPhoto:(id)a3 mediaProvider:(id)a4 mediaDestination:(id)a5
{
  v76[3] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v75.receiver = self;
  v75.super_class = PUPhotoEditViewController;
  v13 = [(PUPhotoEditViewController *)&v75 initWithNibName:0 bundle:0];
  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x1E69C1AC8]);
    avResourceReclamationController = v13->_avResourceReclamationController;
    v13->_avResourceReclamationController = v14;

    if (!v10)
    {
      v67 = [MEMORY[0x1E696AAA8] currentHandler];
      [v67 handleFailureInMethod:a2 object:v13 file:@"PUPhotoEditViewController.m" lineNumber:746 description:{@"Invalid parameter not satisfying: %@", @"photo"}];
    }

    v68 = v11;
    v16 = objc_alloc_init(PUPhotoEditViewControllerSpec);
    photoEditSpec = v13->_photoEditSpec;
    v13->_photoEditSpec = v16;

    objc_storeStrong(&v13->_photo, a3);
    objc_storeStrong(&v13->_mediaProvider, a4);
    objc_storeStrong(&v13->_mediaDestination, a5);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 setDelegate:v13];
    }

    v13->_workImageVersion = 0;
    v13->_layoutOrientation = 1;
    v18 = objc_alloc_init(PUPhotoEditAggregateSession);
    aggregateSession = v13->_aggregateSession;
    v13->_aggregateSession = v18;

    if ([(PUPhotoEditViewController *)v13 isStandardVideo])
    {
      [(PUPhotoEditAggregateSession *)v13->_aggregateSession setShouldUseVideoKeys:1];
      [v10 duration];
      [(PUPhotoEditAggregateSession *)v13->_aggregateSession setOriginalDuration:?];
    }

    v20 = objc_alloc_init(_PPTState);
    pptState = v13->_pptState;
    v13->_pptState = v20;

    v22 = objc_alloc_init(MEMORY[0x1E69C3B98]);
    enterEditTimeInterval = v13->_enterEditTimeInterval;
    v13->_enterEditTimeInterval = v22;

    v24 = PLPhotoEditGetLog();
    v25 = [(PUPhotoEditViewController *)v13 enterEditTimeInterval];
    v26 = os_signpost_id_make_with_pointer(v24, v25);

    v27 = [v10 pathForOriginalImageFile];
    v28 = [v27 lastPathComponent];

    v29 = [v10 pixelWidth];
    v30 = [v10 pixelHeight];
    v31 = v13->_enterEditTimeInterval;
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __74__PUPhotoEditViewController_initWithPhoto_mediaProvider_mediaDestination___block_invoke;
    v69[3] = &unk_1E7B7AE18;
    v70 = v24;
    v71 = v28;
    v72 = v26;
    v73 = v29;
    v74 = v30;
    v32 = v28;
    v33 = v24;
    v34 = [(PXTimeInterval *)v31 addStateTransitionHandler:v69];
    v35 = objc_alloc_init(MEMORY[0x1E69C3B98]);
    resourceLoadingInterval = v13->_resourceLoadingInterval;
    v13->_resourceLoadingInterval = v35;

    v37 = objc_alloc_init(MEMORY[0x1E69C3B98]);
    resourceProcessingInterval = v13->_resourceProcessingInterval;
    v13->_resourceProcessingInterval = v37;

    v39 = objc_alloc_init(MEMORY[0x1E69C3B98]);
    resourceCheckingInterval = v13->_resourceCheckingInterval;
    v13->_resourceCheckingInterval = v39;

    v41 = objc_alloc_init(MEMORY[0x1E69C3B98]);
    resourceDownloadInterval = v13->_resourceDownloadInterval;
    v13->_resourceDownloadInterval = v41;

    v43 = objc_alloc_init(MEMORY[0x1E69C3B98]);
    modelPrepInterval = v13->_modelPrepInterval;
    v13->_modelPrepInterval = v43;

    v45 = objc_alloc_init(MEMORY[0x1E69C3B98]);
    autoCalcInterval = v13->_autoCalcInterval;
    v13->_autoCalcInterval = v45;

    v47 = objc_alloc_init(MEMORY[0x1E69C3B98]);
    filterInterval = v13->_filterInterval;
    v13->_filterInterval = v47;

    v49 = objc_alloc_init(MEMORY[0x1E69C3B98]);
    exitEditTimeInterval = v13->_exitEditTimeInterval;
    v13->_exitEditTimeInterval = v49;

    v51 = objc_alloc_init(MEMORY[0x1E69C3B98]);
    editSessionTimeInterval = v13->_editSessionTimeInterval;
    v13->_editSessionTimeInterval = v51;

    v53 = objc_alloc_init(PUEnterEditPerformanceEventBuilder);
    enterEditEventBuilder = v13->_enterEditEventBuilder;
    v13->_enterEditEventBuilder = v53;

    [(PUEnterEditPerformanceEventBuilder *)v13->_enterEditEventBuilder setAsset:v10];
    v55 = objc_alloc_init(PUExitEditPerformanceEventBuilder);
    exitEditEventBuilder = v13->_exitEditEventBuilder;
    v13->_exitEditEventBuilder = v55;

    [(PUExitEditPerformanceEventBuilder *)v13->_exitEditEventBuilder setAsset:v10];
    v57 = PXCheckAndNoteUseOfSystemSinceBoot();
    v58 = PUCheckAndNoteFirstEntryIntoEditSinceLaunch_isFirstUseSinceLaunch;
    PUCheckAndNoteFirstEntryIntoEditSinceLaunch_isFirstUseSinceLaunch = 1;
    v59 = [(PUPhotoEditViewController *)v13 enterEditEventBuilder];
    [v59 setFirstSinceBoot:v57];

    v60 = [(PUPhotoEditViewController *)v13 enterEditEventBuilder];
    [v60 setFirstSinceLaunch:(v58 & 1) == 0];

    [(PUPhotoEditViewController *)v13 setFirstSinceBoot:v57];
    [(PUPhotoEditViewController *)v13 setFirstSinceLaunch:(v58 & 1) == 0];
    [(PUPhotoEditViewController *)v13 _didStartEnterEdit];
    v61 = +[PUPhotoEditSupport currentDeviceShouldAllowRawDecode];
    [MEMORY[0x1E69B3AB0] setImageSourceDisableRAW:!v61];
    [MEMORY[0x1E69BDE00] disableApertureEffects:PECanRenderPortrait() ^ 1];
    objc_opt_class();
    v13->_isEmbeddedEdit = objc_opt_isKindOfClass() & 1;
    v62 = dispatch_queue_create("PUPhotoEditViewController.smartCopyPasteQueue", 0);
    smartCopyPasteQueue = v13->_smartCopyPasteQueue;
    v13->_smartCopyPasteQueue = v62;

    v76[0] = objc_opt_class();
    v76[1] = objc_opt_class();
    v76[2] = objc_opt_class();
    v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:3];
    v65 = [(PUPhotoEditViewController *)v13 registerForTraitChanges:v64 withAction:sel_traitEnvironment_didChangeTraitCollection_];

    v11 = v68;
  }

  return v13;
}

void __74__PUPhotoEditViewController_initWithPhoto_mediaProvider_mediaDestination___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if ([a2 state] == 1)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    v7 = *(a1 + 48);
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      LOWORD(v20) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "EnterEdit", " enableTelemetry=YES ", &v20, 2u);
    }

    v8 = *(a1 + 32);
    v9 = v8;
    v10 = *(a1 + 48);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v11 = *(a1 + 40);
      v12 = *(a1 + 56);
      v13 = *(a1 + 64);
      v20 = 138412802;
      v21 = v11;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = v13;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v9, OS_SIGNPOST_EVENT, v10, "EnterEdit", "Asset Filename=%@, Size:{%lu, %lu}", &v20, 0x20u);
    }

    v14 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 40);
      v16 = *(a1 + 56);
      v17 = *(a1 + 64);
      v20 = 138543874;
      v21 = v15;
      v22 = 2048;
      v23 = v16;
      v24 = 2048;
      v25 = v17;
      _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_DEFAULT, "PERF - Entering edit with asset %{public}@, Size:{%lu, %lu}", &v20, 0x20u);
    }
  }

  else
  {
    if (a3 != 1)
    {
      return;
    }

    v18 = *(a1 + 32);
    v14 = v18;
    v19 = *(a1 + 48);
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      LOWORD(v20) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v14, OS_SIGNPOST_INTERVAL_END, v19, "EnterEdit", " enableTelemetry=YES ", &v20, 2u);
    }
  }
}

+ (id)_defaultMediaViewRenderPipelineFilters
{
  if (_defaultMediaViewRenderPipelineFilters_onceToken != -1)
  {
    dispatch_once(&_defaultMediaViewRenderPipelineFilters_onceToken, &__block_literal_global_935);
  }

  v3 = _defaultMediaViewRenderPipelineFilters_defaultFilters;

  return v3;
}

void __67__PUPhotoEditViewController__defaultMediaViewRenderPipelineFilters__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69BDEF8] noMuteFilter];
  v3[0] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v2 = _defaultMediaViewRenderPipelineFilters_defaultFilters;
  _defaultMediaViewRenderPipelineFilters_defaultFilters = v1;
}

+ (id)_defaultLivePhotoRenderPipelineFilters
{
  if (_defaultLivePhotoRenderPipelineFilters_onceToken != -1)
  {
    dispatch_once(&_defaultLivePhotoRenderPipelineFilters_onceToken, &__block_literal_global_933);
  }

  v3 = _defaultLivePhotoRenderPipelineFilters_defaultFilters;

  return v3;
}

void __67__PUPhotoEditViewController__defaultLivePhotoRenderPipelineFilters__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69BDEF8] noMuteFilter];
  v4[0] = v0;
  v1 = [MEMORY[0x1E69BDEF8] noTrimFilter];
  v4[1] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v3 = _defaultLivePhotoRenderPipelineFilters_defaultFilters;
  _defaultLivePhotoRenderPipelineFilters_defaultFilters = v2;
}

+ (void)preheatEditDependenciesIfNeeded
{
  if (preheatEditDependenciesIfNeeded_onceToken != -1)
  {
    dispatch_once(&preheatEditDependenciesIfNeeded_onceToken, &__block_literal_global_59066);
  }
}

void __60__PUPhotoEditViewController_preheatEditDependenciesIfNeeded__block_invoke()
{
  if (PFIsiOSPhotosApp())
  {
    v0 = [MEMORY[0x1E69C4598] sharedScheduler];
    [v0 scheduleTaskWithQoS:1 block:&__block_literal_global_248];
  }
}

void __60__PUPhotoEditViewController_preheatEditDependenciesIfNeeded__block_invoke_2()
{
  v0 = PLPhotoEditGetLog();
  if (os_signpost_enabled(v0))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v0, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "EditPrewarm", "", buf, 2u);
  }

  [MEMORY[0x1E69BDEF0] preheatEditDependencies];
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "EditPrewarm", "", v1, 2u);
  }
}

@end