@interface PUPhotoEditViewController
+ (id)_defaultLivePhotoRenderPipelineFilters;
+ (id)_defaultMediaViewRenderPipelineFilters;
+ (void)preheatEditDependenciesIfNeeded;
- ($5A0616AB7869379E861635CACF312FD6)toolControllerImageModulationOptions:(id)options;
- (BOOL)_actionButtonsGoInTopToolbar;
- (BOOL)_canCompositionControllerBeReverted:(id)reverted;
- (BOOL)_canCurrentCompositionControllerBeReverted;
- (BOOL)_canPasteEdits;
- (BOOL)_canPresentExtensions;
- (BOOL)_canPresentMarkup;
- (BOOL)_enableSpatialMediaEditing;
- (BOOL)_hasUnsavedChanges;
- (BOOL)_isInEditRevertTransitionSnapshotVisible;
- (BOOL)_isLivePhotoEffect;
- (BOOL)_isLoopingVideo:(BOOL)video;
- (BOOL)_isQuickCrop;
- (BOOL)_isReadyToRender;
- (BOOL)_isSaveProgressAvailable;
- (BOOL)_isZoomedIn;
- (BOOL)_markupGetsItsOwnButton;
- (BOOL)_shouldDisplayRedEyeTool;
- (BOOL)_shouldDisplayRedEyeUI;
- (BOOL)_shouldHideToolsForQuickCrop;
- (BOOL)_shouldRequestAsyncAdjustmentForAsset:(id)asset compositionController:(id)controller;
- (BOOL)_shouldUseCropPlaceholderViewFrame;
- (BOOL)_updatePreviewOriginal:(BOOL)original withPresses:(id)presses;
- (BOOL)canCopyEdits;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)currentAssetNeedsGainMap;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
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
- (CGPoint)toolController:(id)controller originalPointFromViewPoint:(CGPoint)point view:(id)view;
- (CGPoint)toolController:(id)controller viewPointFromOriginalPoint:(CGPoint)point view:(id)view;
- (CGRect)_cropPlaceholderViewFrameForImageSize:(CGSize)size;
- (CGRect)_oneUpTransitionPlaceholderViewFrame;
- (CGRect)_placeholderViewFrameForImageSize:(CGSize)size;
- (CGRect)lastKnownMediaViewImageFrame;
- (CGRect)previewViewFrame;
- (CGSize)lastKnownPreviewImageSize;
- (CGSize)toolControllerOriginalImageSize:(id)size;
- (CGSize)toolControllerOriginalOrientedImageSize:(id)size;
- (PUEditActionActivity)copyPresetAction;
- (PUEditActionActivity)pastePresetAction;
- (PUEditActionActivity)radarAction;
- (PUPhotoEditViewController)initWithPhoto:(id)photo mediaProvider:(id)provider mediaDestination:(id)destination;
- (PUPhotoEditViewControllerPresentationDelegate)presentationDelegate;
- (PUPhotoEditViewControllerSessionDelegate)sessionDelegate;
- (UIAlertController)cancelConfirmationAlert;
- (UIAlertController)disabledToolRevertAlert;
- (UIAlertController)irisRevertConfirmationAlert;
- (UIAlertController)jpegPreviewForRawConfirmationAlert;
- (UIAlertController)revertConfirmationAlert;
- (UIEdgeInsets)_currentToolPreviewInsets;
- (UIEdgeInsets)_mediaViewEdgeInsets;
- (UIEdgeInsets)_mediaViewEdgeInsetsWithGeometry:(id)geometry;
- (UIMenu)askToSaveAsNewClipMenu;
- (double)imageFrameIntersectionFractionWithRect:(CGRect)rect;
- (double)imageFrameIntersectionFractionWithView:(id)view;
- (double)px_HDRFocus;
- (double)transientBadgeWidthForText:(id)text;
- (id)_allTools;
- (id)_appearanceSubmenu;
- (id)_composition;
- (id)_constraintsForToolView:(id)view wantsFullscreen:(BOOL)fullscreen;
- (id)_copyPasteEditsSubmenu;
- (id)_createMediaView;
- (id)_currentViewContentsForDismissTransition;
- (id)_defaultInitialToolController;
- (id)_defaultRenderPipelineFiltersForCurrentMode;
- (id)_extensionsSubmenu;
- (id)_internalActionsSubmenu;
- (id)_livePhotoGestureRecognizer;
- (id)_moreButtonMenu;
- (id)_newOutputForContentEditingInput:(id)input compositionController:(id)controller;
- (id)_newToolButtonForTool:(id)tool;
- (id)_orientedCIImageFromUIImage:(id)image;
- (id)_preferredStatusBarHideAnimationParameters;
- (id)_redEyeAction;
- (id)_saveAsDuplicateSubmenu;
- (id)_toolActionsSubmenu;
- (id)_toolControllerForAdjustmentCategory:(int64_t)category;
- (id)_toolControllerForInitialToolType:(int64_t)type;
- (id)_toolControllerForTag:(int64_t)tag;
- (id)_undoRedoSubmenu;
- (id)barButtonItemForView:(id)view;
- (id)debugStringDescribingProgressReasons:(unint64_t)reasons;
- (id)editAssetDiagnostics;
- (id)fontForButtons;
- (id)imageConfiguration;
- (id)oneUpAssetTransition:(id)transition adjustTransitionInfo:(id)info;
- (id)photoEditToolbar:(id)toolbar accessibilityHUDItemForButton:(id)button;
- (id)playbackRateOptions;
- (id)pluginActivitiesForEditPluginSession:(id)session;
- (id)ppt_renderStatisticsDictionaryForTimeInterval:(double)interval;
- (id)secondaryToolbar;
- (id)sourceItemForTipID:(id)d;
- (id)toolControllerHitEventForwardView:(id)view;
- (id)toolControllerLivePhoto:(id)photo;
- (id)toolControllerOriginalCompositionController:(id)controller;
- (id)toolControllerUneditedCompositionController:(id)controller;
- (id)undoManager;
- (int)_revertToEmptyCompositionWithCompletionHandler:(id)handler;
- (int)_saveRevertedComposition:(id)composition contentEditingInput:(id)input withCompletionHandler:(id)handler;
- (int64_t)_selectionIndicatorType;
- (int64_t)_toolTypeForToolWithTag:(int64_t)tag;
- (int64_t)currentToolPickerLayoutDirection;
- (int64_t)preferredUserInterfaceStyle;
- (unint64_t)cinematicAudioRenderingVersion;
- (unint64_t)toolControllerSourceAssetType:(id)type;
- (void)_addCropToolGainMapWithRequest:(id)request;
- (void)_cancelInProgressSaveRequest;
- (void)_cancelPendingFocusViewForInteractionWithDelay;
- (void)_captureSnapshotOfBasePhotoWithCompletionHandler:(id)handler;
- (void)_chooseInitialEditingTool;
- (void)_clearBadgeConstraints;
- (void)_clearToolbars;
- (void)_commitEditSessionActionWithAsset:(id)asset initialCompositionController:(id)controller savedCompositionController:(id)compositionController localizedActionName:(id)name;
- (void)_commitSaveAsCopyWithAsset:(id)asset;
- (void)_continueLoadingWithAutocalculators;
- (void)_createPencilInteractionIfNeeded;
- (void)_createVideoScrubberIfNeeded;
- (void)_didEndAutoCalc;
- (void)_didEndEnterEdit;
- (void)_didEndExitActionWithSessionKeys:(id)keys initialComposition:(id)composition;
- (void)_didEndResourceLoading;
- (void)_didStartAutoCalc;
- (void)_didStartEnterEdit;
- (void)_didStartExitAction;
- (void)_didStartResourceLoading;
- (void)_editPluginSession:(id)session checkVideoEnabled:(BOOL)enabled loadVideoComplementURLWithHandler:(id)handler;
- (void)_ensureCleanupResourcesWithCompletion:(id)completion;
- (void)_fileRadar;
- (void)_focusViewForInteractionWithDelay;
- (void)_handle1upToggleButton:(id)button;
- (void)_handleAutoEnhanceButton:(id)button;
- (void)_handleCancelButton:(id)button;
- (void)_handleDidLoadAdjustmentsAndBaseImageWithResult:(id)result;
- (void)_handleDidLoadOriginalWithResult:(id)result;
- (void)_handleDoneAction:(id)action;
- (void)_handleDoneButton:(id)button;
- (void)_handleLivePhotoTouchRecognizer:(id)recognizer;
- (void)_handleMainActionButton:(id)button;
- (void)_handleMediaViewReady:(id)ready statistics:(id)statistics;
- (void)_handleRedoButton:(id)button;
- (void)_handleResourceLoadChange;
- (void)_handleRevertButton:(id)button;
- (void)_handleSaveAction:(int64_t)action;
- (void)_handleShowOriginalButton:(id)button;
- (void)_handleSwipeDownGesture:(id)gesture;
- (void)_handleTogglePreviewTapGesture:(id)gesture;
- (void)_handleToolbarToolButton:(id)button;
- (void)_handleUndoButton:(id)button;
- (void)_handleZoomButton:(id)button;
- (void)_hideEphemeralViews:(BOOL)views;
- (void)_hideProgressIndicatorImmediately:(BOOL)immediately;
- (void)_installGestureRecognizer:(id)recognizer type:(unint64_t)type;
- (void)_installInEditRevertTransitionSnapshot;
- (void)_layoutShadowView:(id)view;
- (void)_loadOriginalImageIfNeeded;
- (void)_loadPhotoEditResourcesIfNeeded;
- (void)_loadToolsIfNeeded:(BOOL)needed;
- (void)_notifyDelegateSaveFinishedIfReadyWithAsset:(id)asset;
- (void)_performDiscardAction;
- (void)_performInEditRevertWithToolButton:(id)button;
- (void)_performRevertAction;
- (void)_ppt_conditionallyExecuteAfterRender;
- (void)_presentExtensions;
- (void)_presentMarkup;
- (void)_presentWarningForIrisRemovesEditsWithCompletion:(id)completion;
- (void)_produceMoreButtonMenuElementsWithCompletion:(id)completion;
- (void)_reloadMoreButtonMenu;
- (void)_reloadToolbarButtonsIfNeeded;
- (void)_removePlaceholderImageViewIfNeeded;
- (void)_requestLivePhotoAssetWithFilters:(id)filters completion:(id)completion;
- (void)_resetModelAndBaseImagesToWorkImageVersion:(int64_t)version;
- (void)_resignCurrentTool;
- (void)_restoreSnapshot:(id)snapshot withCompletionHandler:(id)handler;
- (void)_sendPasteEditsAnalytics;
- (void)_setNeedsUserInterfaceAppearanceUpdateAnimated;
- (void)_setOriginalURL:(id)l originalEditSource:(id)source;
- (void)_setPlaybackEnabled:(BOOL)enabled;
- (void)_setTransientStatusBadgeVisible:(BOOL)visible;
- (void)_setupImagePluginSession;
- (void)_setupToolsIfNeeded;
- (void)_setupVideoPluginSession;
- (void)_showCancelAndRevertOptionsAllowResetTool:(BOOL)tool;
- (void)_showJpegPreviewForRawRevertAlert;
- (void)_showProgressIndicator;
- (void)_startMarkupSession;
- (void)_startMonitoringSaveProgressIfNeeded;
- (void)_startShowingOriginalBadge;
- (void)_startTimeoutTimerForAssetChange;
- (void)_startWaitingForAssetChange:(id)change;
- (void)_startWaitingForSaveRequestID:(int)d;
- (void)_stopMonitoringSaveProgress;
- (void)_stopWaitingForAssetChangeWithAsset:(id)asset success:(BOOL)success;
- (void)_stopWaitingForSaveRequestWithAsset:(id)asset;
- (void)_teardownCleanupResources;
- (void)_timeoutWaitingForAssetChange;
- (void)_toggleShowOriginal;
- (void)_transitionToEditingTool:(id)tool animated:(BOOL)animated completionHandler:(id)handler;
- (void)_transitionToNewToolViewController:(id)controller oldToolViewController:(id)viewController animationBlock:(id)block completion:(id)completion animated:(BOOL)animated;
- (void)_undoManagerDidCloseUndoGroupNotification:(id)notification;
- (void)_undoManagerDidRedo:(id)redo;
- (void)_undoManagerDidUndo:(id)undo;
- (void)_undoManagerWillRedo:(id)redo;
- (void)_undoManagerWillUndo:(id)undo;
- (void)_uninstallInEditRevertTransitionSnapshotAnimated:(BOOL)animated;
- (void)_updateBackgroundColor;
- (void)_updateCancelButtonAnimated:(BOOL)animated;
- (void)_updateForcingDarkUserInterfaceStyleForZoomIfNeeded;
- (void)_updateGainMap;
- (void)_updateKeyCommands;
- (void)_updateLayerModulation;
- (void)_updateLayoutOrientationWithViewSize:(CGSize)size transitionCoordinator:(id)coordinator;
- (void)_updateLivePhotoModel;
- (void)_updateLivePhotoPlaybackGestureRecognizer;
- (void)_updateMainActionButtonAnimated:(BOOL)animated;
- (void)_updateMainButtonForSaveAsNewClipMenu;
- (void)_updateMediaViewEdgeInsets;
- (void)_updateMediaViewLayoutWithCoordinator:(id)coordinator layoutOrientation:(int64_t)orientation;
- (void)_updateMediaViewPlaybackStyle;
- (void)_updateModelDependentControlsAnimated:(BOOL)animated;
- (void)_updateMoreButtonAnimated:(BOOL)animated;
- (void)_updateMutedState;
- (void)_updatePenultimateAvailableWithCompletionHandler:(id)handler;
- (void)_updatePlaceholderImage;
- (void)_updatePluginSession;
- (void)_updatePluginWorkImageVersion;
- (void)_updatePreviewingOriginal;
- (void)_updateProgressEventBlockingViewConstraints;
- (void)_updateProgressIndicatorInteractionDisabledWithReason:(int64_t)reason showsIndicator:(BOOL)indicator isSavingWithProgress:(BOOL)progress;
- (void)_updateRenderedPreview;
- (void)_updateSaveProgress;
- (void)_updateShowOriginalButtonAnimated:(BOOL)animated;
- (void)_updateSpecDependentUIPieces;
- (void)_updateSubviewsOrdering;
- (void)_updateSwipeDownGestureRecognizer;
- (void)_updateTogglePreviewGestureRecognizer;
- (void)_updateToolbarBackgroundAnimated:(BOOL)animated;
- (void)_updateToolbarButtonPositions;
- (void)_updateToolbarShadowAlpha;
- (void)_updateToolbarsAnimated:(BOOL)animated;
- (void)_updateToolbarsContentPadding;
- (void)_updateTraitCollectionAndLayoutReferenceSize;
- (void)_updateTraitCollectionAndLayoutReferenceSize:(CGSize)size;
- (void)_updateTransientStatusBadgeForPreviewingOriginal;
- (void)_updateUndoRedoButtonsAnimated:(BOOL)animated;
- (void)_updateValuesCalculator;
- (void)_updateVideoScrubber;
- (void)_updateVideoScrubberDisplayAnimate:(BOOL)animate;
- (void)_updateZoomButton;
- (void)addCropToolGainMapIfNeeded;
- (void)appIntentsEnumerateAssets:(id)assets;
- (void)applyAutoEnhance:(id)enhance completion:(id)completion;
- (void)asShotCompositionController:(id)controller;
- (void)autoEnhanceAssets:(id)assets;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container;
- (void)compositionController:(id)controller didAddAdjustment:(id)adjustment;
- (void)compositionController:(id)controller didRemoveAdjustment:(id)adjustment;
- (void)compositionController:(id)controller didUpdateAdjustment:(id)adjustment;
- (void)compositionController:(id)controller didUpdateAdjustments:(id)adjustments;
- (void)compositionControllerDidChangeForAdjustments:(id)adjustments;
- (void)configureEnablenessOfControlButton:(id)button animated:(BOOL)animated canVisuallyDisable:(BOOL)disable;
- (void)copyEditsSkippingOptions:(BOOL)options;
- (void)dealloc;
- (void)didFinishWithAsset:(id)asset savedChanges:(BOOL)changes;
- (void)didFinishWithChanges:(BOOL)changes;
- (void)dismissLivePhotoRevertConfirmationAlert;
- (void)editPluginSession:(id)session commitContentEditingOutput:(id)output withCompletionHandler:(id)handler;
- (void)editPluginSession:(id)session didEndWithCompletionType:(unint64_t)type forPluginIdentifier:(id)identifier;
- (void)editPluginSession:(id)session loadAdjustmentDataWithHandler:(id)handler;
- (void)editPluginSession:(id)session loadDisplaySizeImageWithHandler:(id)handler;
- (void)editPluginSession:(id)session loadFullSizeImageWithHandler:(id)handler;
- (void)editPluginSession:(id)session loadPlaceholderImageWithHandler:(id)handler;
- (void)editPluginSession:(id)session loadThumbnailImageWithSize:(CGSize)size loadHandler:(id)handler;
- (void)editPluginSession:(id)session loadVideoURLWithHandler:(id)handler;
- (void)editPluginSessionWillBegin:(id)begin;
- (void)editValuesCalculatorHasChangedFlashStatus:(id)status;
- (void)editValuesCalculatorHasChangedImageValues:(id)values;
- (void)fileRadarAndAttachFile:(id)file;
- (void)flashTransientBadgeWithText:(id)text;
- (void)fulfillPendingEditsRequest:(id)request;
- (void)fulfillPendingEditsRequestIfNecessary;
- (void)initialCinematographyLoadComplete;
- (void)livePhotoModel:(id)model videoEnabledDidChange:(BOOL)change;
- (void)mediaDestination:(id)destination didCompleteSaveRequest:(id)request;
- (void)mediaDestination:(id)destination willBeginSaveRequest:(id)request;
- (void)mediaTimelineControlViewDidChangeValue:(id)value;
- (void)mediaTimelineControlViewDidEndChanging:(id)changing;
- (void)mediaTimelineControlViewWillBeginChanging:(id)changing;
- (void)mediaView:(id)view didZoom:(double)zoom;
- (void)mediaViewDidEndDecelerating:(id)decelerating;
- (void)mediaViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)mediaViewDidEndLivePhotoPlayback:(id)playback;
- (void)mediaViewDidEndZooming:(id)zooming;
- (void)mediaViewDidFinishPreparingVideo:(id)video;
- (void)mediaViewDidFinishRendering:(id)rendering withStatistics:(id)statistics;
- (void)mediaViewDidPlayToEnd:(id)end;
- (void)mediaViewDidScroll:(id)scroll;
- (void)mediaViewDidStartPreparingVideo:(id)video;
- (void)mediaViewDidUpdateGeometry:(id)geometry;
- (void)mediaViewDidUpdateLivePhoto:(id)photo;
- (void)mediaViewIsReadyForVideoPlayback:(id)playback;
- (void)mediaViewWillBeginDragging:(id)dragging;
- (void)mediaViewWillBeginLivePhotoPlayback:(id)playback;
- (void)mediaViewWillBeginZooming:(id)zooming;
- (void)navigateToSegment:(id)segment;
- (void)oneUpAssetTransition:(id)transition animateTransitionWithContext:(id)context duration:(double)duration completion:(id)completion;
- (void)oneUpAssetTransition:(id)transition requestTransitionContextWithCompletion:(id)completion;
- (void)oneUpAssetTransitionDidEnd:(id)end;
- (void)pasteEditsWithCompletionHandler:(id)handler;
- (void)pencilInteractionDidTap:(id)tap;
- (void)photoEditResourceLoadRequestResourcesAvailabilityChanged:(id)changed previousAvailability:(int64_t)availability currentAvailability:(int64_t)currentAvailability;
- (void)photoLibraryChangesPausedDidChange;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue;
- (void)popoverPresentationControllerDidDismissPopover:(id)popover;
- (void)ppt_applyAutoenhance:(id)autoenhance;
- (void)ppt_cancelEditsWithCompletion:(id)completion;
- (void)ppt_executeAfterRender:(id)render;
- (void)ppt_navigateToPortraitLightingEffects:(id)effects;
- (void)ppt_playLivePhotoWithWillBeginPlaybackBlock:(id)block didEndPlaybackBlock:(id)playbackBlock;
- (void)ppt_replayCleanupBrushStrokeWithCompletionBlock:(id)block;
- (void)ppt_revertWithCompletion:(id)completion;
- (void)ppt_saveWithCompletion:(id)completion;
- (void)ppt_scrollBWSlider:(id)slider;
- (void)ppt_scrollColorSlider:(id)slider;
- (void)ppt_scrollLightSlider:(id)slider;
- (void)ppt_scrollSliderNamed:(id)named value:(id)value completion:(id)completion;
- (void)ppt_selectAdjustmentsController:(id)controller;
- (void)ppt_selectCleanupController:(id)controller;
- (void)ppt_selectCropController:(id)controller;
- (void)ppt_selectFiltersController:(id)controller;
- (void)ppt_selectLightingEffect:(id)effect completionBlock:(id)block;
- (void)ppt_selectNextLightingEffect:(id)effect;
- (void)ppt_selectPerspectiveController:(id)controller;
- (void)ppt_selectPortraitController:(id)controller;
- (void)ppt_selectStyle:(id)style completionBlock:(id)block;
- (void)ppt_selectStyleController:(id)controller;
- (void)ppt_setEditIsReadyNotificationBlock:(id)block;
- (void)prepareForPopoverPresentation:(id)presentation;
- (void)prepareTipPopover:(id)popover tipID:(id)d;
- (void)presentDiagnosticAlert:(id)alert;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)removeCropToolGainMap;
- (void)resourceLoader:(id)loader request:(id)request didCompleteWithResult:(id)result;
- (void)resourceLoader:(id)loader request:(id)request downloadProgress:(double)progress;
- (void)resourceLoader:(id)loader request:(id)request mediaLoadDidFailWithError:(id)error;
- (void)rotateAssetsClockwise:(id)clockwise;
- (void)rotateAssetsCounterclockwise:(id)counterclockwise;
- (void)setCompositionController:(id)controller;
- (void)setFocusingViewForInteraction:(BOOL)interaction exemptVideoScrubber:(BOOL)scrubber;
- (void)setGainMapImage:(CGImage *)image;
- (void)setGainMapValue:(float)value;
- (void)setInitialSeekTime:(id *)time;
- (void)setIsCachingVideo:(BOOL)video;
- (void)setLayoutOrientation:(int64_t)orientation withTransitionCoordinator:(id)coordinator;
- (void)setLivePhotoVideoEnabled:(BOOL)enabled;
- (void)setOriginalStillImageTime:(id *)time;
- (void)setPlaceholderImage:(id)image;
- (void)setPreferredAppearance:(int64_t)appearance;
- (void)setPreviewRenderType:(int64_t)type;
- (void)setRunningAutoCalculators:(BOOL)calculators;
- (void)setShouldBePreviewingOriginal:(BOOL)original;
- (void)setUneditedComposition:(id)composition;
- (void)setupSwiftToolbar;
- (void)switchToEditingTool:(id)tool animated:(BOOL)animated completionHandler:(id)handler;
- (void)switchToEditingToolWithTag:(int64_t)tag;
- (void)toggleEditor:(id)editor;
- (void)toggleLivePhotoActive;
- (void)toolController:(id)controller didChangeIsScrolling:(BOOL)scrolling;
- (void)toolController:(id)controller didChangePreferredPreviewViewInsetsAnimated:(BOOL)animated;
- (void)toolControllerDidChangeIsActivelyAdjusting:(id)adjusting;
- (void)toolControllerDidChangeIsPerformingLiveInteraction:(id)interaction;
- (void)toolControllerDidChangeWantsTapToToggleOriginalEnabled:(id)enabled enabled:(BOOL)a4;
- (void)toolControllerDidUpdateToolbar:(id)toolbar;
- (void)toolControllerWantsGestureRecognizerUpdate:(id)update;
- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection;
- (void)trimToolPlayerWrapper:(id)wrapper requestAssetWithFilters:(id)filters completion:(id)completion;
- (void)updateInteractions;
- (void)updateProgressIndicatorAnimated:(BOOL)animated;
- (void)updateSwiftToolbarConstraints;
- (void)updateViewConstraints;
- (void)validateCommand:(id)command;
- (void)viewControllerSpec:(id)spec didChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PUPhotoEditViewController

- (void)setupSwiftToolbar
{
  selfCopy = self;
  sub_1B3827838();
}

- (void)updateSwiftToolbarConstraints
{
  selfCopy = self;
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

- (void)setInitialSeekTime:(id *)time
{
  var3 = time->var3;
  *&self->_initialSeekTime.value = *&time->var0;
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

- (void)appIntentsEnumerateAssets:(id)assets
{
  assetsCopy = assets;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (!assetsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:11262 description:{@"Invalid parameter not satisfying: %@", @"assetHandler"}];
  }

  photo = [(PUPhotoEditViewController *)self photo];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = photo;

    if (!v6)
    {
      goto LABEL_9;
    }

    view = [(PUPhotoEditViewController *)self view];
    [view bounds];
    assetsCopy[2](assetsCopy, v6, 1);
  }

  else
  {
    v6 = 0;
    view = photo;
  }

LABEL_9:
}

- (BOOL)isHDREnabled
{
  renderMeteorPlusAsHDR = [MEMORY[0x1E69B3AB0] renderMeteorPlusAsHDR];
  if (renderMeteorPlusAsHDR)
  {

    LOBYTE(renderMeteorPlusAsHDR) = PXUserAllowFullHDR();
  }

  return renderMeteorPlusAsHDR;
}

- (id)editAssetDiagnostics
{
  photo = [(PUPhotoEditViewController *)self photo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    photo2 = [(PUPhotoEditViewController *)self photo];
    if (photo2)
    {
      v6 = photo2;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        px_descriptionForAssertionMessage = [v6 px_descriptionForAssertionMessage];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:11242 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.photo", v16, px_descriptionForAssertionMessage}];
      }

      v7 = objc_alloc(MEMORY[0x1E69C34D0]);
      editSourceContentEditingInput = [(PUPhotoEditViewController *)self editSourceContentEditingInput];
      compositionController = [(PUPhotoEditViewController *)self compositionController];
      originalComposition = [(PUPhotoEditViewController *)self originalComposition];
      v11 = [v7 initWithAsset:v6 contentEditingInput:editSourceContentEditingInput compositionController:compositionController originalComposition:originalComposition];

      photo = v6;
    }

    else
    {
      editSourceContentEditingInput = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = objc_opt_class();
      compositionController = NSStringFromClass(v13);
      [editSourceContentEditingInput handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:11242 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.photo", compositionController}];
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container
{
  containerCopy = container;
  photo = [(PUPhotoEditViewController *)self photo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    photo2 = [(PUPhotoEditViewController *)self photo];
    if (!photo2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:11188 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.photo", v46}];

LABEL_25:
      goto LABEL_26;
    }

    v7 = photo2;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      px_descriptionForAssertionMessage = [v7 px_descriptionForAssertionMessage];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:11188 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.photo", v49, px_descriptionForAssertionMessage}];
    }

    [(PUPhotoEditToolController *)self->_currentEditingTool willFileDiagnostic];
    currentHandler = [(PUPhotoEditViewController *)self editAssetDiagnostics];
    [currentHandler collectDiagnosticsToTTRContainer:containerCopy];
    currentEditingTool = self->_currentEditingTool;
    if (currentEditingTool)
    {
      [(PUPhotoEditToolController *)currentEditingTool addAttachmentsForTapToRadar:containerCopy];
    }

    if (self->_diagnosticsFileURL)
    {
      [containerCopy addAttachment:?];
      diagnosticsFileURL = self->_diagnosticsFileURL;
      self->_diagnosticsFileURL = 0;
    }

    enterEditTimeInterval = [(PUPhotoEditViewController *)self enterEditTimeInterval];
    if (!enterEditTimeInterval)
    {
      goto LABEL_20;
    }

    v12 = enterEditTimeInterval;
    resourceLoadingInterval = [(PUPhotoEditViewController *)self resourceLoadingInterval];
    if (!resourceLoadingInterval)
    {
LABEL_19:

      goto LABEL_20;
    }

    v14 = resourceLoadingInterval;
    resourceProcessingInterval = [(PUPhotoEditViewController *)self resourceProcessingInterval];
    if (!resourceProcessingInterval)
    {
LABEL_18:

      goto LABEL_19;
    }

    v16 = resourceProcessingInterval;
    resourceCheckingInterval = [(PUPhotoEditViewController *)self resourceCheckingInterval];
    if (resourceCheckingInterval)
    {
      v18 = resourceCheckingInterval;
      resourceDownloadInterval = [(PUPhotoEditViewController *)self resourceDownloadInterval];
      if (resourceDownloadInterval)
      {
        v20 = resourceDownloadInterval;
        autoCalcInterval = [(PUPhotoEditViewController *)self autoCalcInterval];

        if (autoCalcInterval)
        {
          enterEditTimeInterval2 = [(PUPhotoEditViewController *)self enterEditTimeInterval];
          [enterEditTimeInterval2 duration];
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

          resourceLoadingInterval2 = [(PUPhotoEditViewController *)self resourceLoadingInterval];
          [resourceLoadingInterval2 duration];
          [v12 appendFormat:@"  Resource Loading Duration = %.4f\n", v28];

          resourceCheckingInterval2 = [(PUPhotoEditViewController *)self resourceCheckingInterval];
          [resourceCheckingInterval2 duration];
          [v12 appendFormat:@"    Checking Duration       = %.4f\n", v30];

          resourceDownloadInterval2 = [(PUPhotoEditViewController *)self resourceDownloadInterval];
          [resourceDownloadInterval2 duration];
          [v12 appendFormat:@"    Download Duration       = %.4f\n", v32];

          resourceProcessingInterval2 = [(PUPhotoEditViewController *)self resourceProcessingInterval];
          [resourceProcessingInterval2 duration];
          [v12 appendFormat:@"    Processing Duration       = %.4f\n", v34];

          modelPrepInterval = [(PUPhotoEditViewController *)self modelPrepInterval];
          [modelPrepInterval duration];
          [v12 appendFormat:@"    Model Prep Duration       = %.4f\n", v36];

          autoCalcInterval2 = [(PUPhotoEditViewController *)self autoCalcInterval];
          [autoCalcInterval2 duration];
          [v12 appendFormat:@"  Auto Calc Duration = %.4f\n", v38];

          [v12 appendFormat:@"\n"];
          photo3 = [(PUPhotoEditViewController *)self photo];
          v40 = [v14 stringFromByteCount:{objc_msgSend(photo3, "originalFilesize")}];
          [v12 appendFormat:@"Asset File Size: %@", v40];

          [v12 appendFormat:@"\n\n"];
          [containerCopy addAttachmentWithText:v12 name:@"Entry Into Edit Timings"];
          goto LABEL_18;
        }

LABEL_20:
        compositionController = [(PUPhotoEditViewController *)self compositionController];
        inpaintAdjustmentController = [compositionController inpaintAdjustmentController];
        if (inpaintAdjustmentController)
        {
          v43 = self->_currentEditingTool;
          cleanupController = self->_cleanupController;

          if (v43 != cleanupController)
          {
            [(PUCleanupToolController *)self->_cleanupController addAttachmentsForTapToRadar:containerCopy];
          }
        }

        else
        {
        }

        photo = v7;
        goto LABEL_25;
      }
    }

    goto LABEL_18;
  }

LABEL_26:
}

- (void)presentDiagnosticAlert:(id)alert
{
  alertCopy = alert;
  if (self->_progressIndicatorInteractionDisablingToken)
  {
    [PUInterfaceManager endDisablingUserInteraction:?];
    progressIndicatorInteractionDisablingToken = self->_progressIndicatorInteractionDisablingToken;
    self->_progressIndicatorInteractionDisablingToken = 0;
  }

  [(PUPhotoEditViewController *)self presentViewController:alertCopy animated:0 completion:0];
}

- (void)fileRadarAndAttachFile:(id)file
{
  objc_storeStrong(&self->_diagnosticsFileURL, file);

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
    buildEvents = [(PEEditActionEventBuilder *)pasteEditsEventBuilder buildEvents];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [buildEvents countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(buildEvents);
          }

          [MEMORY[0x1E6991F28] sendEvent:v8 withPayload:*(*(&v11 + 1) + 8 * v9++)];
        }

        while (v6 != v9);
        v6 = [buildEvents countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)pasteEditsWithCompletionHandler:(id)handler
{
  v36[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  mEMORY[0x1E69C4220] = [MEMORY[0x1E69C4220] sharedPresetManager];
  presetFromPasteboard = [mEMORY[0x1E69C4220] presetFromPasteboard];
  [presetFromPasteboard setAnalyticsEventBuilderDelegate:self];
  v8 = objc_alloc(MEMORY[0x1E69C4280]);
  photo = [(PUPhotoEditViewController *)self photo];
  v36[0] = photo;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v11 = [v8 initWithBaseAction:presetFromPasteboard assets:v10];
  pasteEditsEventBuilder = self->_pasteEditsEventBuilder;
  self->_pasteEditsEventBuilder = v11;

  if (presetFromPasteboard)
  {
    photo2 = [(PUPhotoEditViewController *)self photo];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      photo3 = [(PUPhotoEditViewController *)self photo];
      if (photo3)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          px_descriptionForAssertionMessage = [photo3 px_descriptionForAssertionMessage];
          [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:11082 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.photo", v26, px_descriptionForAssertionMessage}];
        }

        photoLibrary = [photo3 photoLibrary];
        v16 = [presetFromPasteboard isEligibleForSmartPasteWithPhotoLibrary:photoLibrary];

        if (v16)
        {
          smartCopyPasteQueue = self->_smartCopyPasteQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __61__PUPhotoEditViewController_pasteEditsWithCompletionHandler___block_invoke;
          block[3] = &unk_1E7B80CB0;
          v33 = presetFromPasteboard;
          selfCopy = self;
          v35 = handlerCopy;
          dispatch_async(smartCopyPasteQueue, block);

LABEL_13:
          goto LABEL_14;
        }

LABEL_12:
        [(PUPhotoEditViewController *)self _willModifyAdjustment];
        objc_initWeak(&location, self);
        compositionController = [(PUPhotoEditViewController *)self compositionController];
        photo4 = [(PUPhotoEditViewController *)self photo];
        editSource = [(PUPhotoEditViewController *)self editSource];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __61__PUPhotoEditViewController_pasteEditsWithCompletionHandler___block_invoke_4;
        v28[3] = &unk_1E7B7BA00;
        objc_copyWeak(&v30, &location);
        v28[4] = self;
        v29 = handlerCopy;
        [presetFromPasteboard applyToCompositionController:compositionController asset:photo4 editSource:editSource completion:v28];

        objc_destroyWeak(&v30);
        objc_destroyWeak(&location);
        goto LABEL_13;
      }

      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:11082 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.photo", v20}];
    }

    photo3 = 0;
    goto LABEL_12;
  }

  if (handlerCopy)
  {
    photo3 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Nothing to paste"];
    (*(handlerCopy + 2))(handlerCopy, 0, photo3);
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
  mEMORY[0x1E69C4220] = [MEMORY[0x1E69C4220] sharedPresetManager];
  if ([mEMORY[0x1E69C4220] hasPresetOnPasteboard])
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

- (void)copyEditsSkippingOptions:(BOOL)options
{
  v18[1] = *MEMORY[0x1E69E9840];
  compositionController = [(PUPhotoEditViewController *)self compositionController];
  v6 = [compositionController copy];

  if (options || ([(PUPhotoEditViewController *)self photo], v7 = objc_claimAutoreleasedReturnValue(), v8 = [PUPhotoEditCopyEditsViewController shouldPresentForCopyingFromCompositionController:v6 asset:v7], v7, !v8))
  {
    [v6 removeAdjustmentWithKey:*MEMORY[0x1E69BDFC0]];
    [v6 removeAdjustmentWithKey:*MEMORY[0x1E69BE058]];
    mEMORY[0x1E69C4220] = [MEMORY[0x1E69C4220] sharedPresetManager];
    photo = [(PUPhotoEditViewController *)self photo];
    [(PUPhotoEditCopyEditsViewController *)mEMORY[0x1E69C4220] copyPresetFromCompositionController:v6 sourceAsset:photo smartCopyEnabled:1];
  }

  else
  {
    v9 = [PUPhotoEditCopyEditsViewController alloc];
    photo2 = [(PUPhotoEditViewController *)self photo];
    mEMORY[0x1E69C4220] = [(PUPhotoEditCopyEditsViewController *)v9 initWithCompositionController:v6 asset:photo2];

    v12 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:mEMORY[0x1E69C4220]];
    [v12 setModalPresentationStyle:7];
    popoverPresentationController = [v12 popoverPresentationController];
    [popoverPresentationController setSourceItem:self->_moreButton];
    adaptiveSheetPresentationController = [popoverPresentationController adaptiveSheetPresentationController];
    mediumDetent = [MEMORY[0x1E69DCF58] mediumDetent];
    v18[0] = mediumDetent;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [adaptiveSheetPresentationController setDetents:v16];

    [(PUPhotoEditViewController *)self presentViewController:v12 animated:1 completion:0];
  }
}

- (BOOL)canCopyEdits
{
  compositionController = [(PUPhotoEditViewController *)self compositionController];
  v4 = [compositionController copy];

  v5 = +[PUPhotoEditProtoSettings sharedInstance];
  enableSelectiveCopyEdits = [v5 enableSelectiveCopyEdits];

  if ((enableSelectiveCopyEdits & 1) == 0)
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

- (void)prepareTipPopover:(id)popover tipID:(id)d
{
  v20[1] = *MEMORY[0x1E69E9840];
  popoverCopy = popover;
  dCopy = d;
  cleanUpTipID = [MEMORY[0x1E69C3548] cleanUpTipID];
  v9 = [dCopy isEqualToString:cleanUpTipID];

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
    view = [v12 arrayWithObjects:v20 count:1];

    [popoverCopy setPassthroughViews:view];
    goto LABEL_10;
  }

  stylesSetupTipID = [MEMORY[0x1E69C3548] stylesSetupTipID];
  v16 = [dCopy isEqualToString:stylesSetupTipID];

  if (v16)
  {
    if (MEMORY[0x1B8C6D660]([popoverCopy setPermittedArrowDirections:1]))
    {
      view = [(PUPhotoEditViewController *)self view];
      [view safeAreaInsets];
    }

    else
    {
      [(PUPhotoEditButtonCenteredToolbar *)self->_secondaryToolbar frame];
      MaxY = CGRectGetMaxY(v21);
      view = [(PUPhotoEditViewController *)self view];
      [view safeAreaInsets];
      v17 = MaxY - v19;
    }

    [popoverCopy setPopoverLayoutMargins:{v17, 0.0, 0.0, 0.0}];
LABEL_10:
  }
}

- (id)sourceItemForTipID:(id)d
{
  dCopy = d;
  cleanUpTipID = [MEMORY[0x1E69C3548] cleanUpTipID];
  v6 = [dCopy isEqualToString:cleanUpTipID];

  if (v6)
  {
    centerView = PXFind();
LABEL_3:
    titleView = centerView;
    goto LABEL_8;
  }

  stylesSetupTipID = [MEMORY[0x1E69C3548] stylesSetupTipID];
  v10 = [dCopy isEqualToString:stylesSetupTipID];

  if (v10)
  {
    if (!MEMORY[0x1B8C6D660]())
    {
      centerView = [(PUPhotoEditButtonCenteredToolbar *)self->_secondaryToolbar centerView];
      goto LABEL_3;
    }

    navigationItem = [(PUPhotoEditViewController *)self navigationItem];
    titleView = [navigationItem titleView];
  }

  else
  {
    titleView = 0;
  }

LABEL_8:

  return titleView;
}

- (void)_updateMainButtonForSaveAsNewClipMenu
{
  if (![(PUPhotoEditViewController *)self isStandardVideo])
  {
    goto LABEL_8;
  }

  photo = [(PUPhotoEditViewController *)self photo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_8;
  }

  compositionController = [(PUPhotoEditViewController *)self compositionController];
  trimAdjustmentController = [compositionController trimAdjustmentController];

  uneditedComposition = [(PUPhotoEditViewController *)self uneditedComposition];
  if (uneditedComposition)
  {
    v8 = uneditedComposition;
    uneditedComposition2 = [(PUPhotoEditViewController *)self uneditedComposition];
    v10 = [uneditedComposition2 objectForKeyedSubscript:@"trim"];

    if (!trimAdjustmentController || v10 && ([trimAdjustmentController isEqual:v10 visualChangesOnly:1] & 1) != 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = 0;
    if (!trimAdjustmentController)
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

  askToSaveAsNewClipMenu = [(PUPhotoEditViewController *)self askToSaveAsNewClipMenu];
  [(PUPhotoEditNotchButton *)self->_mainActionButton setMenu:askToSaveAsNewClipMenu];

  [(PUPhotoEditNotchButton *)self->_mainActionButton setShowsMenuAsPrimaryAction:1];
  askToSaveAsNewClipMenu2 = [(PUPhotoEditViewController *)self askToSaveAsNewClipMenu];
  p_mainActionButtonItem = &self->_mainActionButtonItem;
  [(UIBarButtonItem *)*p_mainActionButtonItem setMenu:askToSaveAsNewClipMenu2];

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

- (void)trimToolPlayerWrapper:(id)wrapper requestAssetWithFilters:(id)filters completion:(id)completion
{
  filtersCopy = filters;
  completionCopy = completion;
  if ([(PUPhotoEditViewController *)self isStandardVideo])
  {
    composition = [(NUMediaView *)self->_mediaView composition];
    if (composition)
    {
      trimController = [(PUPhotoEditMediaToolController *)self->_mediaToolController trimController];
      [trimController scrubberHeight];
      v12 = v11;

      view = [(PUPhotoEditViewController *)self view];
      traitCollection = [view traitCollection];
      [traitCollection displayScale];
      v16 = v12 * v15;

      v17 = 41.0;
      if (v16 >= 41.0)
      {
        v17 = v16;
      }

      v18 = vcvtpd_s64_f64(v17);
      if ((v18 & 0x8000000000000000) != 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NUPixelSize NUPixelSizeMake(NSInteger, NSInteger)"}];
        [currentHandler handleFailureInFunction:v25 file:@"NUGeometryPrimitives.h" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"(width >= 0) && (height >= 0)"}];
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
      v23 = [objc_alloc(MEMORY[0x1E69B3D30]) initWithComposition:composition];
      [v23 setRenderContext:self->_videoRenderContext];
      [v23 setSampleMode:2];
      [v23 setName:@"PUPhotoEditViewController-trimToolClient"];
      [v23 setPipelineFilters:filtersCopy];
      [v23 setScalePolicy:v19];
      [v23 setResponseQueue:MEMORY[0x1E69E96A0]];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __86__PUPhotoEditViewController_trimToolPlayerWrapper_requestAssetWithFilters_completion___block_invoke_2;
      v28[3] = &unk_1E7B805C0;
      v29 = completionCopy;
      [v23 submit:v28];
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __86__PUPhotoEditViewController_trimToolPlayerWrapper_requestAssetWithFilters_completion___block_invoke;
      block[3] = &unk_1E7B80C88;
      v31 = completionCopy;
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
    v27 = completionCopy;
    [(PUPhotoEditViewController *)self _requestLivePhotoAssetWithFilters:filtersCopy completion:v26];
    composition = v27;
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

- (void)editValuesCalculatorHasChangedFlashStatus:(id)status
{
  [(PUPhotoEditToolController *)self->_currentEditingTool editValuesCalculatorHasChangedFlashStatus:status];

  [(PUPhotoEditViewController *)self _updateToolbarsAnimated:1];
}

- (void)editValuesCalculatorHasChangedImageValues:(id)values
{
  [(PUPhotoEditToolController *)self->_currentEditingTool editValuesCalculatorHasChangedImageValues:values];

  [(PUPhotoEditViewController *)self _updateToolbarsAnimated:0];
}

- (void)setLivePhotoVideoEnabled:(BOOL)enabled
{
  if ([(PUPhotoEditViewController *)self isLivePhotoVideoEnabled]!= enabled)
  {

    [(PUPhotoEditViewController *)self toggleLivePhotoActive];
  }
}

- (BOOL)isLivePhotoVideoEnabled
{
  livePhotoModel = [(PUPhotoEditViewController *)self livePhotoModel];

  if (!livePhotoModel)
  {
    return 0;
  }

  livePhotoModel2 = [(PUPhotoEditViewController *)self livePhotoModel];
  isVideoEnabled = [livePhotoModel2 isVideoEnabled];

  return isVideoEnabled;
}

- (void)compositionControllerDidChangeForAdjustments:(id)adjustments
{
  v80 = *MEMORY[0x1E69E9840];
  adjustmentsCopy = adjustments;
  adjustmentConstants = [(PUPhotoEditViewController *)self adjustmentConstants];
  v6 = adjustmentConstants;
  if (self->_leavingEdit)
  {
    goto LABEL_66;
  }

  pILivePhotoKeyFrameAdjustmentKey = [adjustmentConstants PILivePhotoKeyFrameAdjustmentKey];
  v8 = [adjustmentsCopy containsObject:pILivePhotoKeyFrameAdjustmentKey];

  if (v8)
  {
    if ([(PUPhotoEditViewController *)self gainMapImage])
    {
      compositionController = [(PUPhotoEditViewController *)self compositionController];
      composition = [compositionController composition];
      v11 = [composition objectForKeyedSubscript:@"livePhotoKeyFrame"];

      if (v11)
      {
        [(PUPhotoEditViewController *)self setGainMapImage:0];
      }
    }

    valuesCalculator = [(PUPhotoEditViewController *)self valuesCalculator];
    [valuesCalculator invalidate];

    compositionController2 = [(PUPhotoEditViewController *)self compositionController];
    compositionController3 = [(PUPhotoEditViewController *)self compositionController];
    v15 = [compositionController3 smartToneAdjustmentControllerCreatingIfNecessary:0];

    if (v15)
    {
      pISmartToneAdjustmentKey = [v6 PISmartToneAdjustmentKey];
      [compositionController2 modifyAdjustmentWithKey:pISmartToneAdjustmentKey modificationBlock:&__block_literal_global_1083];
    }

    valuesCalculator2 = [(PUPhotoEditViewController *)self valuesCalculator];
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __74__PUPhotoEditViewController_compositionControllerDidChangeForAdjustments___block_invoke_2;
    v70[3] = &unk_1E7B7DCD8;
    v74 = v15 != 0;
    v71 = compositionController2;
    v72 = v6;
    v73 = valuesCalculator2;
    v18 = valuesCalculator2;
    v19 = compositionController2;
    [v18 precomputeImageValuesWithCompletion:v70];
  }

  pICropAdjustmentKey = [v6 PICropAdjustmentKey];
  if ([adjustmentsCopy containsObject:pICropAdjustmentKey])
  {
  }

  else
  {
    pIOrientationAdjustmentKey = [v6 PIOrientationAdjustmentKey];
    v22 = [adjustmentsCopy containsObject:pIOrientationAdjustmentKey];

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
  pIPortraitAdjustmentKey = [v6 PIPortraitAdjustmentKey];
  if ([adjustmentsCopy containsObject:pIPortraitAdjustmentKey])
  {
    currentAssetNeedsGainMap = [(PUPhotoEditViewController *)self currentAssetNeedsGainMap];

    if (!currentAssetNeedsGainMap)
    {
      goto LABEL_22;
    }

LABEL_20:
    [(PUPhotoEditViewController *)self _updateGainMap];
    goto LABEL_22;
  }

  pIDepthAdjustmentKey = [v6 PIDepthAdjustmentKey];
  if (([adjustmentsCopy containsObject:pIDepthAdjustmentKey] & 1) == 0)
  {

    goto LABEL_22;
  }

  currentAssetNeedsGainMap2 = [(PUPhotoEditViewController *)self currentAssetNeedsGainMap];

  if (currentAssetNeedsGainMap2)
  {
    goto LABEL_20;
  }

LABEL_22:
  if ([(PUPhotoEditToolController *)self->_currentEditingTool suppressesEditUpdates])
  {
    goto LABEL_45;
  }

  editSource = [(PUPhotoEditViewController *)self editSource];

  if (!editSource)
  {
    goto LABEL_45;
  }

  pIAutoLoopAdjustmentKey = [v6 PIAutoLoopAdjustmentKey];
  v29 = [adjustmentsCopy containsObject:pIAutoLoopAdjustmentKey];

  if (v29)
  {
    compositionController4 = [(PUPhotoEditViewController *)self compositionController];
    autoLoopAdjustmentController = [compositionController4 autoLoopAdjustmentController];

    if ([autoLoopAdjustmentController enabled])
    {
      v32 = 2;
    }

    else
    {
      v32 = 1;
    }

    _renderer = [(NUMediaView *)self->_mediaView _renderer];
    [_renderer setDisplayType:v32];
  }

  v34 = MEMORY[0x1E69BE360];
  compositionController5 = [(PUPhotoEditViewController *)self compositionController];
  editSource2 = [(PUPhotoEditViewController *)self editSource];
  v37 = [v34 validatedCompositionCopyFor:compositionController5 mediaType:{objc_msgSend(editSource2, "mediaType")}];

  pICropAdjustmentKey2 = [v6 PICropAdjustmentKey];
  if ([adjustmentsCopy containsObject:pICropAdjustmentKey2])
  {

LABEL_32:
    v41 = [objc_alloc(MEMORY[0x1E69B3AA8]) initWithComposition:v37];
    [v41 setName:@"PUPhotoEditViewController-compositionControllerDidChangeForAdjustments-GeometryChangesRequest"];
    v69 = 0;
    v42 = [v41 submitSynchronous:&v69];
    v43 = v69;
    geometry = [v42 geometry];

    if (geometry)
    {
      [(PUPhotoEditViewController *)self setMediaViewEdgeInsetsUpdateDisableCount:[(PUPhotoEditViewController *)self mediaViewEdgeInsetsUpdateDisableCount]+ 1];
      mediaView = [(PUPhotoEditViewController *)self mediaView];
      _renderView = [mediaView _renderView];
      [_renderView setGeometry:geometry];

      if (!self->_switchingToolsAnimated)
      {
        [(PUPhotoEditViewController *)self _mediaViewEdgeInsetsWithGeometry:geometry];
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
        name = [v41 name];
        *buf = 138412546;
        v77 = name;
        v78 = 2112;
        v79 = v43;
        _os_log_error_impl(&dword_1B36F3000, v63, OS_LOG_TYPE_ERROR, "Could not load geometry for request %@: %@", buf, 0x16u);
      }

      [(NUMediaView *)self->_mediaView setComposition:v37];
    }

    goto LABEL_44;
  }

  pIOrientationAdjustmentKey2 = [v6 PIOrientationAdjustmentKey];
  v40 = [adjustmentsCopy containsObject:pIOrientationAdjustmentKey2];

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

  pIAutoLoopAdjustmentKey2 = [v6 PIAutoLoopAdjustmentKey];
  v49 = [adjustmentsCopy containsObject:pIAutoLoopAdjustmentKey2];

  if (v49)
  {
    [(PUPhotoEditViewController *)self _updateMediaViewPlaybackStyle];
  }

  pIMuteAdjustmentKey = [v6 PIMuteAdjustmentKey];
  v51 = [adjustmentsCopy containsObject:pIMuteAdjustmentKey];

  if (v51)
  {
    [(PUPhotoEditViewController *)self _updateMutedState];
  }

  if ([adjustmentsCopy count] == 1)
  {
    firstObject = [adjustmentsCopy firstObject];
  }

  else
  {
    firstObject = 0;
  }

  v53 = [firstObject isEqualToString:*MEMORY[0x1E69BE048]];
  v54 = [firstObject isEqualToString:*MEMORY[0x1E69BDFB0]];
  if ([(PUPhotoEditViewController *)self isStandardVideo]&& !v53 && !v54)
  {
    mediaView2 = [(PUPhotoEditViewController *)self mediaView];
    player = [mediaView2 player];
    [player pause];
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  _allTools = [(PUPhotoEditViewController *)self _allTools];
  v58 = [_allTools countByEnumeratingWithState:&v65 objects:v75 count:16];
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
          objc_enumerationMutation(_allTools);
        }

        [*(*(&v65 + 1) + 8 * i) compositionControllerDidChangeForAdjustments:adjustmentsCopy];
      }

      v59 = [_allTools countByEnumeratingWithState:&v65 objects:v75 count:16];
    }

    while (v59);
  }

  livePhotoModel = [(PUPhotoEditViewController *)self livePhotoModel];
  [livePhotoModel compositionDidChange];

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

- (void)compositionController:(id)controller didUpdateAdjustments:(id)adjustments
{
  adjustmentsCopy = adjustments;
  controllerCopy = controller;
  compositionController = [(PUPhotoEditViewController *)self compositionController];

  if (compositionController == controllerCopy)
  {
    v8 = [MEMORY[0x1E695DFD8] setWithArray:adjustmentsCopy];
    [(PUPhotoEditViewController *)self compositionControllerDidChangeForAdjustments:v8];
  }
}

- (void)compositionController:(id)controller didUpdateAdjustment:(id)adjustment
{
  adjustmentCopy = adjustment;
  controllerCopy = controller;
  compositionController = [(PUPhotoEditViewController *)self compositionController];

  if (compositionController == controllerCopy)
  {
    v8 = [MEMORY[0x1E695DFD8] setWithObject:adjustmentCopy];
    [(PUPhotoEditViewController *)self compositionControllerDidChangeForAdjustments:v8];
  }
}

- (void)compositionController:(id)controller didRemoveAdjustment:(id)adjustment
{
  adjustmentCopy = adjustment;
  controllerCopy = controller;
  compositionController = [(PUPhotoEditViewController *)self compositionController];

  if (compositionController == controllerCopy)
  {
    v8 = [MEMORY[0x1E695DFD8] setWithObject:adjustmentCopy];
    [(PUPhotoEditViewController *)self compositionControllerDidChangeForAdjustments:v8];
  }
}

- (void)compositionController:(id)controller didAddAdjustment:(id)adjustment
{
  adjustmentCopy = adjustment;
  controllerCopy = controller;
  compositionController = [(PUPhotoEditViewController *)self compositionController];

  if (compositionController == controllerCopy)
  {
    v8 = [MEMORY[0x1E695DFD8] setWithObject:adjustmentCopy];
    [(PUPhotoEditViewController *)self compositionControllerDidChangeForAdjustments:v8];
  }
}

- (id)photoEditToolbar:(id)toolbar accessibilityHUDItemForButton:(id)button
{
  v23 = *MEMORY[0x1E69E9840];
  buttonCopy = button;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  _allTools = [(PUPhotoEditViewController *)self _allTools];
  v7 = [_allTools countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(_allTools);
        }

        v11 = [*(*(&v18 + 1) + 8 * i) accessibilityHUDItemForButton:buttonCopy];
        if (v11)
        {
          v16 = v11;
          goto LABEL_11;
        }
      }

      v8 = [_allTools countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  titleLabel = [buttonCopy titleLabel];
  _allTools = [titleLabel text];

  imageView = [buttonCopy imageView];
  image = [imageView image];

  v15 = objc_alloc(MEMORY[0x1E69DC618]);
  v16 = [v15 initWithTitle:_allTools image:image imageInsets:1 scaleImage:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

LABEL_11:

  return v16;
}

- (id)ppt_renderStatisticsDictionaryForTimeInterval:(double)interval
{
  v34 = *MEMORY[0x1E69E9840];
  renderStatistics = [(_PPTState *)self->_pptState renderStatistics];
  v5 = [renderStatistics count];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = renderStatistics;
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
  interval = [MEMORY[0x1E696AD98] numberWithDouble:v5 / interval];
  v32[0] = interval;
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
  v24 = [MEMORY[0x1E696AD98] numberWithDouble:interval];
  v31[11] = @"neutrinoRenderTimeIntervalUnits";
  v32[10] = v24;
  v32[11] = @"sec";
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:12];

  return v25;
}

- (void)ppt_playLivePhotoWithWillBeginPlaybackBlock:(id)block didEndPlaybackBlock:(id)playbackBlock
{
  playbackBlockCopy = playbackBlock;
  [(PUPhotoEditViewController *)self setPpt_willBeginPlaybackBlock:block];
  [(PUPhotoEditViewController *)self setPpt_didEndPlaybackBlock:playbackBlockCopy];

  mainLivePhotoView = [(PUPhotoEditViewController *)self mainLivePhotoView];
  [mainLivePhotoView startPlaybackWithStyle:1];
}

- (void)ppt_replayCleanupBrushStrokeWithCompletionBlock:(id)block
{
  cleanupController = self->_cleanupController;
  if (cleanupController)
  {
    [(PUCleanupToolController *)cleanupController ppt_replayCleanupBrushStrokeWithCompletionBlock:block];
  }
}

- (void)ppt_selectStyle:(id)style completionBlock:(id)block
{
  blockCopy = block;
  [(PUPhotoStyleToolController *)self->_photoStylesToolController ppt_selectWithStyle:style];
  v6 = blockCopy;
  if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy);
    v6 = blockCopy;
  }
}

- (void)ppt_selectNextLightingEffect:(id)effect
{
  effectCopy = effect;
  lightingControl = [(PUPhotoEditPortraitToolController *)self->_portraitToolController lightingControl];
  selectedLightingType = [lightingControl selectedLightingType];
  if (selectedLightingType > 6)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1B3D0D368[selectedLightingType];
  }

  [lightingControl ppt_selectLightingType:v6];
  if (effectCopy)
  {
    effectCopy[2]();
  }
}

- (void)ppt_selectLightingEffect:(id)effect completionBlock:(id)block
{
  effectCopy = effect;
  blockCopy = block;
  lightingControl = [(PUPhotoEditPortraitToolController *)self->_portraitToolController lightingControl];
  selectedLightingType = [lightingControl selectedLightingType];
  v9 = [MEMORY[0x1E6993870] displayNameForLightingType:selectedLightingType];
  v10 = 0;
  while (1)
  {
    lowercaseString = [v9 lowercaseString];
    lowercaseString2 = [effectCopy lowercaseString];
    v13 = [lowercaseString isEqualToString:lowercaseString2];

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
    selectedLightingType2 = [lightingControl selectedLightingType];
    v17 = [MEMORY[0x1E6993870] displayNameForLightingType:selectedLightingType2];

    v9 = v17;
  }

  if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }
}

- (void)ppt_navigateToPortraitLightingEffects:(id)effects
{
  effectsCopy = effects;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__PUPhotoEditViewController_ppt_navigateToPortraitLightingEffects___block_invoke;
  v6[3] = &unk_1E7B80B48;
  v6[4] = self;
  v7 = effectsCopy;
  v5 = effectsCopy;
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

- (void)ppt_scrollSliderNamed:(id)named value:(id)value completion:(id)completion
{
  namedCopy = named;
  valueCopy = value;
  completionCopy = completion;
  objc_initWeak(&location, self);
  adjustmentsController = self->_adjustmentsController;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__PUPhotoEditViewController_ppt_scrollSliderNamed_value_completion___block_invoke;
  v14[3] = &unk_1E7B7C1A0;
  objc_copyWeak(&v17, &location);
  v12 = valueCopy;
  v15 = v12;
  v13 = completionCopy;
  v16 = v13;
  [(PUAdjustmentsToolController *)adjustmentsController ppt_selectSliderNamed:namedCopy completion:v14];

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

- (void)ppt_scrollBWSlider:(id)slider
{
  pptState = self->_pptState;
  v5 = MEMORY[0x1E695DF70];
  sliderCopy = slider;
  v6 = objc_alloc_init(v5);
  [(_PPTState *)pptState setRenderStatistics:v6];

  [(PUAdjustmentsToolController *)self->_adjustmentsController ppt_selectBWSlider:sliderCopy];
}

- (void)ppt_scrollColorSlider:(id)slider
{
  pptState = self->_pptState;
  v5 = MEMORY[0x1E695DF70];
  sliderCopy = slider;
  v6 = objc_alloc_init(v5);
  [(_PPTState *)pptState setRenderStatistics:v6];

  [(PUAdjustmentsToolController *)self->_adjustmentsController ppt_selectColorSlider:sliderCopy];
}

- (void)ppt_scrollLightSlider:(id)slider
{
  pptState = self->_pptState;
  v5 = MEMORY[0x1E695DF70];
  sliderCopy = slider;
  v6 = objc_alloc_init(v5);
  [(_PPTState *)pptState setRenderStatistics:v6];

  [(PUAdjustmentsToolController *)self->_adjustmentsController ppt_selectLightSlider:sliderCopy];
}

- (void)ppt_applyAutoenhance:(id)autoenhance
{
  autoenhanceCopy = autoenhance;
  compositionController = [(PUPhotoEditViewController *)self compositionController];
  if (compositionController && [MEMORY[0x1E69C4260] isAutoEnhanceEnabledForCompositionController:compositionController])
  {
    [(PUPhotoEditViewController *)self _handleAutoEnhanceButton:self];
  }

  [(PUPhotoEditViewController *)self setPpt_afterAutoenhanceBlock:autoenhanceCopy];
  [(PUPhotoEditViewController *)self _handleAutoEnhanceButton:self];
}

- (void)ppt_selectCleanupController:(id)controller
{
  [(PUPhotoEditToolController *)self->_cleanupController setPpt_didBecomeActiveToolBlock:controller];
  cleanupController = self->_cleanupController;

  [(PUPhotoEditViewController *)self switchToEditingTool:cleanupController animated:1];
}

- (void)ppt_selectStyleController:(id)controller
{
  [(PUPhotoEditToolController *)self->_photoStylesToolController setPpt_didBecomeActiveToolBlock:controller];
  photoStylesToolController = self->_photoStylesToolController;

  [(PUPhotoEditViewController *)self switchToEditingTool:photoStylesToolController animated:1];
}

- (void)ppt_selectPortraitController:(id)controller
{
  [(PUPhotoEditToolController *)self->_portraitToolController setPpt_didBecomeActiveToolBlock:controller];
  portraitToolController = self->_portraitToolController;

  [(PUPhotoEditViewController *)self switchToEditingTool:portraitToolController animated:1];
}

- (void)ppt_selectPerspectiveController:(id)controller
{
  [(PUPhotoEditToolController *)self->_cropController setPpt_didBecomeActiveToolBlock:controller];
  cropController = self->_cropController;

  [(PUPhotoEditViewController *)self switchToEditingTool:cropController animated:1];
}

- (void)ppt_selectCropController:(id)controller
{
  [(PUPhotoEditToolController *)self->_cropController setPpt_didBecomeActiveToolBlock:controller];
  cropController = self->_cropController;

  [(PUPhotoEditViewController *)self switchToEditingTool:cropController animated:1];
}

- (void)ppt_selectAdjustmentsController:(id)controller
{
  [(PUPhotoEditToolController *)self->_adjustmentsController setPpt_didBecomeActiveToolBlock:controller];
  adjustmentsController = self->_adjustmentsController;

  [(PUPhotoEditViewController *)self switchToEditingTool:adjustmentsController animated:1];
}

- (void)ppt_selectFiltersController:(id)controller
{
  controllerCopy = controller;
  v5 = self->_pptState;
  [(_PPTState *)v5 enterDispatchGroup];
  filtersController = self->_filtersController;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __57__PUPhotoEditViewController_ppt_selectFiltersController___block_invoke;
  v12 = &unk_1E7B80B48;
  v13 = v5;
  v14 = controllerCopy;
  v7 = controllerCopy;
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
    selfCopy = self;
    objc_sync_enter(selfCopy);
    ppt_afterRenderBlock = selfCopy->_ppt_afterRenderBlock;
    if (ppt_afterRenderBlock)
    {
      v5 = _Block_copy(ppt_afterRenderBlock);
      v6 = selfCopy->_ppt_afterRenderBlock;
      selfCopy->_ppt_afterRenderBlock = 0;
    }

    else
    {
      v5 = 0;
    }

    objc_sync_exit(selfCopy);

    if (v5)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __65__PUPhotoEditViewController__ppt_conditionallyExecuteAfterRender__block_invoke;
      v7[3] = &unk_1E7B80B48;
      v7[4] = selfCopy;
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

- (void)ppt_executeAfterRender:(id)render
{
  [(PUPhotoEditViewController *)self setPpt_afterRenderBlock:render];

  [(PUPhotoEditViewController *)self _ppt_conditionallyExecuteAfterRender];
}

- (void)ppt_revertWithCompletion:(id)completion
{
  [(PUPhotoEditViewController *)self setPpt_exitActionCompleteNotificationBlock:completion];

  [(PUPhotoEditViewController *)self _performRevertAction];
}

- (void)ppt_saveWithCompletion:(id)completion
{
  [(PUPhotoEditViewController *)self setPpt_exitActionCompleteNotificationBlock:completion];

  [(PUPhotoEditViewController *)self _handleDoneButton:self];
}

- (void)ppt_cancelEditsWithCompletion:(id)completion
{
  [(PUPhotoEditViewController *)self setPpt_exitActionCompleteNotificationBlock:completion];

  [(PUPhotoEditViewController *)self _performDiscardAction];
}

- (void)ppt_setEditIsReadyNotificationBlock:(id)block
{
  blockCopy = block;
  v9 = blockCopy;
  if (blockCopy && (-[PUPhotoEditViewController enterEditTimeInterval](self, "enterEditTimeInterval"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 state], v5, blockCopy = v9, v6 == 2))
  {
    v9[2]();
  }

  else
  {
    v7 = [blockCopy copy];
    ppt_editIsReadyNotificationBlock = self->_ppt_editIsReadyNotificationBlock;
    self->_ppt_editIsReadyNotificationBlock = v7;
  }
}

- (void)_didEndAutoCalc
{
  autoCalcInterval = [(PUPhotoEditViewController *)self autoCalcInterval];
  [autoCalcInterval endInterval];
}

- (void)_didStartAutoCalc
{
  autoCalcInterval = [(PUPhotoEditViewController *)self autoCalcInterval];
  [autoCalcInterval beginInterval];
}

- (void)_didEndResourceLoading
{
  resourceLoadingInterval = [(PUPhotoEditViewController *)self resourceLoadingInterval];
  [resourceLoadingInterval endInterval];
}

- (void)_didStartResourceLoading
{
  resourceLoadingInterval = [(PUPhotoEditViewController *)self resourceLoadingInterval];
  [resourceLoadingInterval beginInterval];
}

- (void)_didEndEnterEdit
{
  enterEditTimeInterval = [(PUPhotoEditViewController *)self enterEditTimeInterval];
  state = [enterEditTimeInterval state];

  if (state == 1)
  {
    enterEditTimeInterval2 = [(PUPhotoEditViewController *)self enterEditTimeInterval];
    [enterEditTimeInterval2 endInterval];

    sceneHUD = [(PUPhotoEditViewController *)self sceneHUD];
    [sceneHUD update];

    enterEditTimeInterval3 = [(PUPhotoEditViewController *)self enterEditTimeInterval];
    [enterEditTimeInterval3 duration];
    v9 = v8;

    enterEditEventBuilder = [(PUPhotoEditViewController *)self enterEditEventBuilder];
    [enterEditEventBuilder setEnterEditDuration:v9];
    resourceCheckingInterval = [(PUPhotoEditViewController *)self resourceCheckingInterval];
    [resourceCheckingInterval duration];
    [enterEditEventBuilder setResourceCheckingDuration:?];

    resourceDownloadInterval = [(PUPhotoEditViewController *)self resourceDownloadInterval];
    [resourceDownloadInterval duration];
    [enterEditEventBuilder setResourceDownloadDuration:?];

    resourceLoadingInterval = [(PUPhotoEditViewController *)self resourceLoadingInterval];
    [resourceLoadingInterval duration];
    [enterEditEventBuilder setResourceLoadingDuration:?];

    resourceProcessingInterval = [(PUPhotoEditViewController *)self resourceProcessingInterval];
    [resourceProcessingInterval duration];
    [enterEditEventBuilder setResourceProcessingDuration:?];

    autoCalcInterval = [(PUPhotoEditViewController *)self autoCalcInterval];
    [autoCalcInterval duration];
    [enterEditEventBuilder setAutoCalcDuration:?];

    buildEvent = [enterEditEventBuilder buildEvent];
    [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.edit.perf.enteredit" withPayload:buildEvent];
  }

  ppt_editIsReadyNotificationBlock = [(PUPhotoEditViewController *)self ppt_editIsReadyNotificationBlock];

  if (ppt_editIsReadyNotificationBlock)
  {
    ppt_editIsReadyNotificationBlock2 = [(PUPhotoEditViewController *)self ppt_editIsReadyNotificationBlock];
    ppt_editIsReadyNotificationBlock2[2]();

    [(PUPhotoEditViewController *)self setPpt_editIsReadyNotificationBlock:0];
  }
}

- (void)_didStartEnterEdit
{
  v12 = *MEMORY[0x1E69E9840];
  enterEditTimeInterval = [(PUPhotoEditViewController *)self enterEditTimeInterval];
  [enterEditTimeInterval beginInterval];

  editSessionTimeInterval = [(PUPhotoEditViewController *)self editSessionTimeInterval];
  [editSessionTimeInterval beginInterval];

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

- (id)_toolControllerForAdjustmentCategory:(int64_t)category
{
  v4 = 0;
  if (category <= 5)
  {
    if (category >= 4)
    {
      if (category == 4)
      {
        v5 = 1616;
      }

      else
      {
        if (category != 5)
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

  if (category <= 9)
  {
    if ((category - 6) >= 3)
    {
      if (category != 9)
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

  if (category > 11)
  {
    if (category == 12)
    {
      v5 = 1640;
    }

    else
    {
      if (category != 13)
      {
        goto LABEL_23;
      }

      v5 = 1672;
    }

    goto LABEL_21;
  }

  if (category != 10)
  {
    v5 = 1624;
LABEL_21:
    _defaultInitialToolController = *(&self->super.super.super.isa + v5);
    goto LABEL_22;
  }

  _defaultInitialToolController = [(PUPhotoEditViewController *)self _defaultInitialToolController];
LABEL_22:
  v4 = _defaultInitialToolController;
LABEL_23:
  if (![(NSArray *)self->__allTools containsObject:v4])
  {
    v7 = self->_adjustmentsController;

    v4 = v7;
  }

  return v4;
}

- (void)fulfillPendingEditsRequest:(id)request
{
  requestCopy = request;
  photo = [(PUPhotoEditViewController *)self photo];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = photo;
  }

  else
  {
    v6 = 0;
  }

  compositionController = [(PUPhotoEditToolController *)self->_currentEditingTool compositionController];
  if (compositionController && (v8 = compositionController, v9 = [(PUPhotoEditToolController *)self->_currentEditingTool canBecomeActiveTool], v8, v9))
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __56__PUPhotoEditViewController_fulfillPendingEditsRequest___block_invoke;
    aBlock[3] = &unk_1E7B809F0;
    aBlock[4] = self;
    v10 = requestCopy;
    v20 = v10;
    v21 = v6;
    v11 = _Block_copy(aBlock);
    adjustments = [v10 adjustments];
    lastObject = [adjustments lastObject];
    category = [lastObject category];

    if (category == 10)
    {
      [(PUPhotoEditViewController *)self _presentMarkup];
      [v10 finishedWithSuccess:1 error:0];
    }

    else
    {
      v16 = [(PUPhotoEditViewController *)self _toolControllerForAdjustmentCategory:category];
      [(UIViewController *)v16 configureForAdjustmentCategory:category];
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
    [requestCopy finishedWithSuccess:0 error:v15];
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
  initialPendingEditsRequest = [(PUPhotoEditViewController *)self initialPendingEditsRequest];

  if (initialPendingEditsRequest)
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

- (void)_didEndExitActionWithSessionKeys:(id)keys initialComposition:(id)composition
{
  v95 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  compositionCopy = composition;
  exitEditTimeInterval = [(PUPhotoEditViewController *)self exitEditTimeInterval];
  state = [exitEditTimeInterval state];

  exitEditTimeInterval2 = [(PUPhotoEditViewController *)self exitEditTimeInterval];
  [exitEditTimeInterval2 endInterval];

  ppt_exitActionCompleteNotificationBlock = [(PUPhotoEditViewController *)self ppt_exitActionCompleteNotificationBlock];

  if (ppt_exitActionCompleteNotificationBlock)
  {
    ppt_exitActionCompleteNotificationBlock2 = [(PUPhotoEditViewController *)self ppt_exitActionCompleteNotificationBlock];
    ppt_exitActionCompleteNotificationBlock2[2]();

    [(PUPhotoEditViewController *)self setPpt_exitActionCompleteNotificationBlock:0];
  }

  if (state == 1)
  {
    exitEditEventBuilder = [(PUPhotoEditViewController *)self exitEditEventBuilder];
    compositionController = [(PUPhotoEditViewController *)self compositionController];
    [exitEditEventBuilder setCompositionController:compositionController];

    exitEditTimeInterval3 = [(PUPhotoEditViewController *)self exitEditTimeInterval];
    [exitEditTimeInterval3 duration];
    [exitEditEventBuilder setExitEditDuration:?];

    v16 = PUCheckAndNoteIsFirstExitFromEditSinceLaunch_isFirstUseSinceLaunch;
    PUCheckAndNoteIsFirstExitFromEditSinceLaunch_isFirstUseSinceLaunch = 1;
    [exitEditEventBuilder setFirstSinceLaunch:(v16 & 1) == 0];
    v80 = exitEditEventBuilder;
    buildEvent = [exitEditEventBuilder buildEvent];
    v18 = [buildEvent mutableCopy];

    v81 = compositionCopy;
    v82 = keysCopy;
    v84 = v18;
    if (keysCopy)
    {
      selfCopy = self;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      obj = keysCopy;
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

            v24 = [*(*(&v89 + 1) + 8 * i) substringFromIndex:{26, selfCopy}];
            alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
            invertedSet = [alphanumericCharacterSet invertedSet];

            v27 = [v24 componentsSeparatedByCharactersInSet:invertedSet];
            v28 = [v27 componentsJoinedByString:@"_"];

            v18 = v84;
            [v84 setObject:v22 forKeyedSubscript:v28];
          }

          v20 = [obj countByEnumeratingWithState:&v89 objects:v94 count:16];
        }

        while (v20);
      }

      self = selfCopy;
      aggregateSession = [(PUPhotoEditViewController *)selfCopy aggregateSession];
      pluginIdentifier = [aggregateSession pluginIdentifier];

      compositionCopy = v81;
      if (pluginIdentifier)
      {
        aggregateSession2 = [(PUPhotoEditViewController *)selfCopy aggregateSession];
        pluginIdentifier2 = [aggregateSession2 pluginIdentifier];
        [v18 setObject:pluginIdentifier2 forKeyedSubscript:@"pluginIdentifier"];
      }
    }

    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    [v18 setObject:v34 forKeyedSubscript:*MEMORY[0x1E6991E20]];

    photo = [(PUPhotoEditViewController *)self photo];
    [v18 setObject:photo forKeyedSubscript:*MEMORY[0x1E6991E18]];

    [MEMORY[0x1E6991F28] sendEvent:*MEMORY[0x1E6991C88] withPayload:v18];
    v36 = objc_alloc(MEMORY[0x1E69C4288]);
    enterEditEventBuilder = [(PUPhotoEditViewController *)self enterEditEventBuilder];
    exitEditEventBuilder2 = [(PUPhotoEditViewController *)self exitEditEventBuilder];
    v39 = [v36 initWithLegacyEnterEditEvent:enterEditEventBuilder andExitEvent:exitEditEventBuilder2];
    [(PUPhotoEditViewController *)self setEditSessionEventBuilder:v39];

    editSessionTimeInterval = [(PUPhotoEditViewController *)self editSessionTimeInterval];
    [editSessionTimeInterval duration];
    v42 = v41;
    editSessionEventBuilder = [(PUPhotoEditViewController *)self editSessionEventBuilder];
    [editSessionEventBuilder setEditSessionDuration:v42];

    uneditedComposition = compositionCopy;
    if (!compositionCopy)
    {
      uneditedComposition = [(PUPhotoEditViewController *)self uneditedComposition];
    }

    editSessionEventBuilder2 = [(PUPhotoEditViewController *)self editSessionEventBuilder];
    [editSessionEventBuilder2 setInitialComposition:uneditedComposition];

    if (!compositionCopy)
    {
    }

    adjustmentIdentifierAndVersion = [(PUPhotoEditViewController *)self adjustmentIdentifierAndVersion];
    editSessionEventBuilder3 = [(PUPhotoEditViewController *)self editSessionEventBuilder];
    [editSessionEventBuilder3 setAdjustmentIdentifierAndVersion:adjustmentIdentifierAndVersion];

    _isQuickCrop = [(PUPhotoEditViewController *)self _isQuickCrop];
    editSessionEventBuilder4 = [(PUPhotoEditViewController *)self editSessionEventBuilder];
    [editSessionEventBuilder4 setSessionEntryPoint:_isQuickCrop];

    if ([(PUPhotoEditViewController *)self _isQuickCrop])
    {
      quickCropContext = [(PUPhotoEditViewController *)self quickCropContext];
      [quickCropContext selectedAspectRatio];
      v52 = v51;
      v54 = v53;
      editSessionEventBuilder5 = [(PUPhotoEditViewController *)self editSessionEventBuilder];
      [editSessionEventBuilder5 setQuickCropSelectedAspectRatio:{v52, v54}];
    }

    segmentationCount = [(PUCleanupToolController *)self->_cleanupController segmentationCount];
    editSessionEventBuilder6 = [(PUPhotoEditViewController *)self editSessionEventBuilder];
    [editSessionEventBuilder6 setSegmentationCount:segmentationCount];

    consecutiveHighRateInteractions = [(PUCleanupToolController *)self->_cleanupController consecutiveHighRateInteractions];
    editSessionEventBuilder7 = [(PUPhotoEditViewController *)self editSessionEventBuilder];
    [editSessionEventBuilder7 setNumberOfConsecutiveInpaints:consecutiveHighRateInteractions];

    maxInteractionSeriesCumulativePixelCount = [(PUCleanupToolController *)self->_cleanupController maxInteractionSeriesCumulativePixelCount];
    editSessionEventBuilder8 = [(PUPhotoEditViewController *)self editSessionEventBuilder];
    [editSessionEventBuilder8 setCumulativePixelsOfConsecutiveInpaints:maxInteractionSeriesCumulativePixelCount];

    highestEncounteredThermalState = [(PUCleanupToolController *)self->_cleanupController highestEncounteredThermalState];
    editSessionEventBuilder9 = [(PUPhotoEditViewController *)self editSessionEventBuilder];
    [editSessionEventBuilder9 setHighestEncounteredThermalStateInCleanup:highestEncounteredThermalState];

    selfCopy2 = self;
    _allTools = [(PUPhotoEditViewController *)self _allTools];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v67 = _allTools;
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
            [dictionary setObject:v74 forKeyedSubscript:v75];
          }
        }

        v69 = [v67 countByEnumeratingWithState:&v85 objects:v93 count:16];
      }

      while (v69);
    }

    editSessionEventBuilder10 = [(PUPhotoEditViewController *)selfCopy2 editSessionEventBuilder];
    [editSessionEventBuilder10 setTimeSpentInEachTab:dictionary];

    editSessionEventBuilder11 = [(PUPhotoEditViewController *)selfCopy2 editSessionEventBuilder];
    buildEvent2 = [editSessionEventBuilder11 buildEvent];

    [MEMORY[0x1E6991F28] sendEvent:*MEMORY[0x1E69C4348] withPayload:buildEvent2];
    compositionCopy = v81;
    keysCopy = v82;
  }

  [MEMORY[0x1E69B3A58] reapAllStoragePools];
}

- (void)_didStartExitAction
{
  exitEditTimeInterval = [(PUPhotoEditViewController *)self exitEditTimeInterval];
  [exitEditTimeInterval beginInterval];

  editSessionTimeInterval = [(PUPhotoEditViewController *)self editSessionTimeInterval];
  [editSessionTimeInterval endInterval];

  self->_leavingEdit = 1;
}

- (void)_hideEphemeralViews:(BOOL)views
{
  [(UIImageView *)self->_placeholderImageView setHidden:views];

  [(PUPhotoEditViewController *)self _updateRenderedPreview];
}

- (void)oneUpAssetTransitionDidEnd:(id)end
{
  [(PUPhotoEditViewController *)self _hideEphemeralViews:0];
  px_imageModulationManager = [(PUPhotoEditViewController *)self px_imageModulationManager];
  imageLayerModulator = [(PUPhotoEditViewController *)self imageLayerModulator];
  [px_imageModulationManager checkInImageLayerModulator:imageLayerModulator];
}

- (void)oneUpAssetTransition:(id)transition animateTransitionWithContext:(id)context duration:(double)duration completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  transitionInfo = [contextCopy transitionInfo];
  if ([(PUPhotoEditViewController *)self isStandardVideo])
  {
    v77 = 0uLL;
    v78 = 0;
    if (transitionInfo && ([transitionInfo seekTime], (BYTE12(v77) & 1) != 0))
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

  photo = [(PUPhotoEditViewController *)self photo];
  mediaSubtypes = [photo mediaSubtypes];

  image = [transitionInfo image];
  [(PUPhotoEditViewController *)self setPlaceholderImage:image];

  imageLayerModulator = [transitionInfo imageLayerModulator];
  -[PUPhotoEditViewController setGainMapImage:](self, "setGainMapImage:", [imageLayerModulator gainMapImage]);
  [imageLayerModulator gainMapValue];
  [(PUPhotoEditViewController *)self setGainMapValue:?];
  [(PUPhotoEditViewController *)self _updatePlaceholderImage];
  containerView = [contextCopy containerView];
  snapshotView = [contextCopy snapshotView];
  view = [(PUPhotoEditViewController *)self view];
  [view layoutIfNeeded];
  [view setAlpha:0.0];
  if ([(PUPhotoEditViewController *)self _isQuickCrop])
  {
    image2 = [transitionInfo image];
    [image2 size];
    v21 = v20;
    v23 = v22;

    v24 = v21 / v23;
    [containerView frame];
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
    [snapshotView frame];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    fromView = [contextCopy fromView];
    [containerView convertRect:fromView fromView:{v33, v35, v37, v39}];
    v30 = v41;
    v29 = v42;
    v31 = v43;
    v27 = v44;
  }

  v45 = (mediaSubtypes >> 20) & 1;
  [snapshotView setFrame:{v30, v29, v31, v27}];
  [containerView insertSubview:snapshotView aboveSubview:self->_mediaView];
  [(PUPhotoEditViewController *)self previewViewFrame];
  [containerView convertRect:view fromView:?];
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
  v67 = snapshotView;
  v68 = view;
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __99__PUPhotoEditViewController_oneUpAssetTransition_animateTransitionWithContext_duration_completion___block_invoke_2;
  v61[3] = &unk_1E7B7B830;
  v61[4] = self;
  v62 = v67;
  v65 = v45;
  v63 = v54;
  v64 = completionCopy;
  v56 = completionCopy;
  v57 = v54;
  v58 = v67;
  v59 = view;
  [v55 animateWithDuration:v66 animations:v61 completion:duration];
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

- (id)oneUpAssetTransition:(id)transition adjustTransitionInfo:(id)info
{
  infoCopy = info;
  if ([(PUPhotoEditViewController *)self _isQuickCrop])
  {
    quickCropContext = [(PUPhotoEditViewController *)self quickCropContext];
    v7 = [quickCropContext applyCropToAssetTransitionInfo:infoCopy];
  }

  else
  {
    v7 = infoCopy;
  }

  return v7;
}

- (void)oneUpAssetTransition:(id)transition requestTransitionContextWithCompletion:(id)completion
{
  completionCopy = completion;
  view = [(PUPhotoEditViewController *)self view];
  [view layoutIfNeeded];

  view2 = [(PUPhotoEditViewController *)self view];
  [(PUPhotoEditViewController *)self _oneUpTransitionPlaceholderViewFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (!-[PUPhotoEditViewController isStandardVideo](self, "isStandardVideo") || (-[PUPhotoEditViewController mediaView](self, "mediaView"), v16 = objc_claimAutoreleasedReturnValue(), [v16 _videoPlayerView], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "snapshotViewAfterScreenUpdates:", 0), v18 = objc_claimAutoreleasedReturnValue(), v17, v16, objc_msgSend(v18, "setFrame:", v9, v11, v13, v15), !v18))
  {
    _currentViewContentsForDismissTransition = [(PUPhotoEditViewController *)self _currentViewContentsForDismissTransition];
    v18 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v9, v11, v13, v15}];
    [v18 setContentMode:2];
    layer = [v18 layer];
    [layer setContents:_currentViewContentsForDismissTransition];
  }

  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __89__PUPhotoEditViewController_oneUpAssetTransition_requestTransitionContextWithCompletion___block_invoke;
  v28 = &unk_1E7B7B808;
  v21 = v18;
  v29 = v21;
  selfCopy = self;
  v22 = [PUAssetTransitionInfo assetTransitionInfoWithConfigurationBlock:&v25];
  v23 = [PUOneUpAssetTransitionContext oneUpAssetTransitionContextWithContainerView:0 fromView:view2 snapshotView:v21 transitionInfo:v22, v25, v26, v27, v28];
  executedSessionAction = [(PUPhotoEditViewController *)self executedSessionAction];
  [v23 setExecutedAction:executedSessionAction];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v23);
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

- (void)didFinishWithChanges:(BOOL)changes
{
  changesCopy = changes;
  if (!changes)
  {
    [(PUPhotoEditViewController *)self _cancelInProgressSaveRequest];
  }

  photo = [(PUPhotoEditViewController *)self photo];
  [(PUPhotoEditViewController *)self didFinishWithAsset:photo savedChanges:changesCopy];

  pptState = self->_pptState;

  [(_PPTState *)pptState setHasRendered:0];
}

- (void)didFinishWithAsset:(id)asset savedChanges:(BOOL)changes
{
  changesCopy = changes;
  v27 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v7 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (changesCopy)
    {
      v8 = @"YES";
    }

    *buf = 138412290;
    *&buf[4] = v8;
    _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "didFinishWithAsset - saved changes: %@", buf, 0xCu);
  }

  cancelConfirmationAlert = [(PUPhotoEditViewController *)self cancelConfirmationAlert];
  if (cancelConfirmationAlert)
  {
    v10 = cancelConfirmationAlert;
    cancelConfirmationAlert2 = [(PUPhotoEditViewController *)self cancelConfirmationAlert];
    presentedViewController = [(PUPhotoEditViewController *)self presentedViewController];

    if (cancelConfirmationAlert2 == presentedViewController)
    {
      presentedViewController2 = [(PUPhotoEditViewController *)self presentedViewController];
      [presentedViewController2 dismissViewControllerAnimated:1 completion:0];

      [(PUPhotoEditViewController *)self setCancelConfirmationAlert:0];
    }
  }

  sessionDelegate = [(PUPhotoEditViewController *)self sessionDelegate];
  [sessionDelegate photoEditController:self didFinishEditingSessionForAsset:assetCopy completed:changesCopy];
  isStandardVideo = [(PUPhotoEditViewController *)self isStandardVideo];
  presentationDelegate = [(PUPhotoEditViewController *)self presentationDelegate];
  v17 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:isStandardVideo];
    *buf = 138412802;
    *&buf[4] = sessionDelegate;
    *&buf[12] = 2112;
    *&buf[14] = presentationDelegate;
    *&buf[22] = 2112;
    v26 = v18;
    _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_DEFAULT, "didFinishWithAsset - sessionDelegate: %@, presentationDelegate: %@, isStandardVideo: %@", buf, 0x20u);
  }

  if (isStandardVideo)
  {
    modificationDate = [assetCopy modificationDate];
    v20 = [modificationDate dateByAddingTimeInterval:-1.0];

    memset(buf, 0, sizeof(buf));
    player = [(NUMediaView *)self->_mediaView player];
    v22 = player;
    if (player)
    {
      [player currentTime];
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
    [presentationDelegate editController:self didFinishPreparingForTransitionAfterEditingVideo:assetCopy modificationDate:v20 seekTime:&v23];
  }

  else
  {
    [presentationDelegate editController:self didFinishPreparingForTransitionAfterEditingPhoto:assetCopy];
  }
}

- (void)editPluginSession:(id)session didEndWithCompletionType:(unint64_t)type forPluginIdentifier:(id)identifier
{
  sessionCopy = session;
  identifierCopy = identifier;
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
      imageStartsZoomedIn = [v11 imageStartsZoomedIn];

      if (imageStartsZoomedIn)
      {
        _renderView = [(NUMediaView *)self->_mediaView _renderView];
        [_renderView bounds];
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

  aggregateSession = [(PUPhotoEditViewController *)self aggregateSession];
  [aggregateSession setPluginIdentifier:identifierCopy];

  if (type == 3)
  {
    view = [(PUPhotoEditViewController *)self view];
    superview = [view superview];
    undoManager = [superview undoManager];

    [undoManager removeAllActions];
  }
}

- (void)editPluginSessionWillBegin:(id)begin
{
  aggregateSession = [(PUPhotoEditViewController *)self aggregateSession];
  [aggregateSession setPluginStarted:1];
}

- (void)_updatePenultimateAvailableWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(MEMORY[0x1E6978868]);
  [v5 setVersion:16];
  mediaProvider = [(PUPhotoEditViewController *)self mediaProvider];
  photo = [(PUPhotoEditViewController *)self photo];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__PUPhotoEditViewController__updatePenultimateAvailableWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E7B7BC68;
  v11[4] = self;
  v12 = handlerCopy;
  v8 = *MEMORY[0x1E695F060];
  v9 = *(MEMORY[0x1E695F060] + 8);
  v10 = handlerCopy;
  [mediaProvider requestImageForAsset:photo targetSize:0 contentMode:v5 options:v11 resultHandler:{v8, v9}];
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
  photo = [(PUPhotoEditViewController *)self photo];
  canPlayPhotoIris = [photo canPlayPhotoIris];

  [(PUImageEditPluginSession *)v3 setAllowLivePhotoExtensions:canPlayPhotoIris];
  if ([(PUPhotoEditViewController *)self _enableSpatialMediaEditing])
  {
    isSpatialMedia = [(PUPhotoEditViewController *)self isSpatialMedia];
  }

  else
  {
    isSpatialMedia = 0;
  }

  [(PUImageEditPluginSession *)v3 setAllowSpatialPhotoExtensions:isSpatialMedia];
  pluginSession = self->_pluginSession;
  self->_pluginSession = &v3->super;
}

- (void)_updatePluginSession
{
  isLoopingVideo = [(PUPhotoEditViewController *)self isStandardVideo]|| [(PUPhotoEditViewController *)self isLoopingVideo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (!isLoopingVideo || (isKindOfClass & 1) != 0)
  {
    if (!isLoopingVideo && (isKindOfClass & 1) != 0)
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
    livePhotoModel = [(PUPhotoEditViewController *)self livePhotoModel];
    isVideoEnabled = [livePhotoModel isVideoEnabled];

    [(PUEditPluginSession *)self->_pluginSession setAllowLivePhotoExtensions:isVideoEnabled];
    if ([(PUPhotoEditViewController *)self _enableSpatialMediaEditing])
    {
      isSpatialMedia = [(PUPhotoEditViewController *)self isSpatialMedia];
    }

    else
    {
      isSpatialMedia = 0;
    }

    [(PUEditPluginSession *)self->_pluginSession setAllowSpatialPhotoExtensions:isSpatialMedia];
  }

  [(PUPhotoEditViewController *)self editPluginSessionAvailabilityDidChange:self->_pluginSession];

  [(PUPhotoEditViewController *)self _updateMoreButtonAnimated:1];
}

- (void)_updatePluginWorkImageVersion
{
  if (!self->_pluginWorkImageVersionIsValid)
  {
    adjustmentType = [(PUEditPluginSession *)self->_pluginSession adjustmentType];
    if (adjustmentType <= 2)
    {
      self->_pluginWorkImageVersion = qword_1B3D0D350[adjustmentType];
    }

    self->_pluginWorkImageVersionIsValid = 1;
  }
}

- (id)pluginActivitiesForEditPluginSession:(id)session
{
  if (self->_currentEditingTool)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    editActionActivities = [(PUPhotoEditToolController *)self->_currentEditingTool editActionActivities];
    if ([editActionActivities count])
    {
      [v4 addObjectsFromArray:editActionActivities];
    }

    v6 = +[PUPhotoEditProtoSettings sharedInstance];
    editMenuEnabled = [v6 editMenuEnabled];

    if ((editMenuEnabled & 1) == 0)
    {
      copyPresetAction = [(PUPhotoEditViewController *)self copyPresetAction];
      [v4 addObject:copyPresetAction];

      pastePresetAction = [(PUPhotoEditViewController *)self pastePresetAction];
      [v4 addObject:pastePresetAction];

      if (PFOSVariantHasInternalUI())
      {
        radarAction = [(PUPhotoEditViewController *)self radarAction];
        [v4 addObject:radarAction];
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

- (void)editPluginSession:(id)session commitContentEditingOutput:(id)output withCompletionHandler:(id)handler
{
  outputCopy = output;
  handlerCopy = handler;
  [(PUPhotoEditViewController *)self _updatePluginWorkImageVersion];
  mediaView = self->_mediaView;
  [(NUMediaView *)mediaView minimumZoomScale];
  [(NUMediaView *)mediaView setZoomScale:0 animated:?];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__PUPhotoEditViewController_editPluginSession_commitContentEditingOutput_withCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E7B7B248;
  aBlock[4] = self;
  v10 = handlerCopy;
  v22 = v10;
  v11 = _Block_copy(aBlock);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __96__PUPhotoEditViewController_editPluginSession_commitContentEditingOutput_withCompletionHandler___block_invoke_1001;
  v18[3] = &unk_1E7B80CB0;
  v18[4] = self;
  v12 = outputCopy;
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

- (void)_editPluginSession:(id)session checkVideoEnabled:(BOOL)enabled loadVideoComplementURLWithHandler:(id)handler
{
  enabledCopy = enabled;
  sessionCopy = session;
  handlerCopy = handler;
  if (!enabledCopy || (-[PUPhotoEditViewController livePhotoModel](self, "livePhotoModel"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isVideoEnabled], v11, (v12 & 1) != 0))
  {
    [(PUPhotoEditViewController *)self _updatePluginWorkImageVersion];
    photo = [(PUPhotoEditViewController *)self photo];
    v14 = photo;
    v39 = 0uLL;
    v40 = 0;
    if (photo)
    {
      [photo photoIrisStillDisplayTime];
    }

    v15 = objc_alloc_init(MEMORY[0x1E6978B18]);
    [v15 setVideoComplementAllowed:1];
    [v15 setDeliveryMode:1];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __100__PUPhotoEditViewController__editPluginSession_checkVideoEnabled_loadVideoComplementURLWithHandler___block_invoke;
    aBlock[3] = &unk_1E7B7B6F0;
    v16 = handlerCopy;
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
          mediaProvider = [(PUPhotoEditViewController *)self mediaProvider];
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __100__PUPhotoEditViewController__editPluginSession_checkVideoEnabled_loadVideoComplementURLWithHandler___block_invoke_4;
          v29[3] = &unk_1E7B7F898;
          v30 = v17;
          v28 = v17;
          [mediaProvider requestAsynchronousVideoURLForAsset:v14 options:v15 resultHandler:v29];

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

    workImageVersion = [(PUPhotoEditViewController *)self workImageVersion];
    if (workImageVersion > 1)
    {
      if (workImageVersion == 2)
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

      if (workImageVersion == 3)
      {
        v23 = v15;
        v24 = 0;
        goto LABEL_27;
      }
    }

    else if (workImageVersion)
    {
      if (workImageVersion == 1)
      {
        v23 = v15;
        v24 = 1;
LABEL_27:
        [v23 setVersion:v24];
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:9531 description:@"unknown work image version"];
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

  v21 = handlerCopy[2];
  v39 = *MEMORY[0x1E6960C70];
  v40 = *(MEMORY[0x1E6960C70] + 16);
  v21(handlerCopy, 0, &v39);
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

- (void)editPluginSession:(id)session loadVideoURLWithHandler:(id)handler
{
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__PUPhotoEditViewController_editPluginSession_loadVideoURLWithHandler___block_invoke;
  aBlock[3] = &unk_1E7B7B6C8;
  v11 = handlerCopy;
  v7 = handlerCopy;
  sessionCopy = session;
  v9 = _Block_copy(aBlock);
  [(PUPhotoEditViewController *)self _editPluginSession:sessionCopy checkVideoEnabled:0 loadVideoComplementURLWithHandler:v9];
}

- (void)editPluginSession:(id)session loadFullSizeImageWithHandler:(id)handler
{
  v39 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  handlerCopy = handler;
  [(PUPhotoEditViewController *)self _updatePluginWorkImageVersion];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PUPhotoEditViewController_editPluginSession_loadFullSizeImageWithHandler___block_invoke;
  aBlock[3] = &unk_1E7B7B5E0;
  aBlock[4] = self;
  v8 = handlerCopy;
  v34 = v8;
  v9 = _Block_copy(aBlock);
  self->_pluginWorkingOffPenultimate = 0;
  v10 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    pluginWorkImageVersion = self->_pluginWorkImageVersion;
    photo = [(PUPhotoEditViewController *)self photo];
    *buf = 67109378;
    v36 = pluginWorkImageVersion;
    v37 = 2112;
    v38 = photo;
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
      editSource = [(PUPhotoEditViewController *)self editSource];
      v14 = [v20 initWithEditSource:editSource];

      compositionController = [(PUPhotoEditViewController *)self compositionController];
      [v14 setCompositionController:compositionController];

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
      mediaProvider = [(PUPhotoEditViewController *)self mediaProvider];
      photo2 = [(PUPhotoEditViewController *)self photo];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __76__PUPhotoEditViewController_editPluginSession_loadFullSizeImageWithHandler___block_invoke_983;
      v25[3] = &unk_1E7B7BC68;
      v25[4] = self;
      v26 = v8;
      [mediaProvider requestImageForAsset:photo2 targetSize:0 contentMode:v14 options:v25 resultHandler:{*MEMORY[0x1E6978E30], *(MEMORY[0x1E6978E30] + 8)}];

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
      v31 = sessionCopy;
      [v14 setCanHandleAdjustmentData:v30];
      [v14 setNetworkAccessAllowed:1];
      photo3 = [(PUPhotoEditViewController *)self photo];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __76__PUPhotoEditViewController_editPluginSession_loadFullSizeImageWithHandler___block_invoke_3;
      v27[3] = &unk_1E7B7B6A0;
      v27[4] = self;
      v28 = v9;
      v29 = v8;
      [photo3 requestContentEditingInputWithOptions:v14 completionHandler:v27];

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

- (void)editPluginSession:(id)session loadThumbnailImageWithSize:(CGSize)size loadHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:9304 description:@"imageSize is zero"];
  }

  PLPhysicalScreenScale();
  PXSizeScale();
  v12 = v11;
  v14 = v13;
  v15 = objc_alloc_init(MEMORY[0x1E6978868]);
  [v15 setNetworkAccessAllowed:1];
  [v15 setDeliveryMode:1];
  [v15 setResizeMode:1];
  mediaProvider = [(PUPhotoEditViewController *)self mediaProvider];
  photo = [(PUPhotoEditViewController *)self photo];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __86__PUPhotoEditViewController_editPluginSession_loadThumbnailImageWithSize_loadHandler___block_invoke;
  v20[3] = &unk_1E7B7F870;
  v21 = handlerCopy;
  v18 = handlerCopy;
  [mediaProvider requestImageForAsset:photo targetSize:0 contentMode:v15 options:v20 resultHandler:{v12, v14}];
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

- (void)editPluginSession:(id)session loadDisplaySizeImageWithHandler:(id)handler
{
  handlerCopy = handler;
  [(PUPhotoEditViewController *)self _updatePluginWorkImageVersion];
  px_screen = [(PUPhotoEditViewController *)self px_screen];
  [px_screen pu_workImageSize];
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
    mediaProvider = [(PUPhotoEditViewController *)self mediaProvider];
    photo = [(PUPhotoEditViewController *)self photo];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __79__PUPhotoEditViewController_editPluginSession_loadDisplaySizeImageWithHandler___block_invoke;
    v22[3] = &unk_1E7B7F870;
    v17 = &v23;
    v23 = handlerCopy;
    [mediaProvider requestImageForAsset:photo targetSize:0 contentMode:v12 options:v22 resultHandler:{v8, v10}];

    goto LABEL_10;
  }

  if (pluginWorkImageVersion == 2)
  {
    v14 = objc_alloc(MEMORY[0x1E69BE658]);
    editSource = [(PUPhotoEditViewController *)self editSource];
    v12 = [v14 initWithEditSource:editSource];

    compositionController = [(PUPhotoEditViewController *)self compositionController];
    [v12 setCompositionController:compositionController];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __79__PUPhotoEditViewController_editPluginSession_loadDisplaySizeImageWithHandler___block_invoke_2;
    v20[3] = &unk_1E7B7B5B8;
    v17 = &v21;
    v21 = handlerCopy;
    [v12 renderImageWithTargetSize:0 contentMode:@"PUPhotoEditViewController-pluginPreviewAdjusted" name:v20 completion:{v8, v10}];
LABEL_10:
  }
}

void __79__PUPhotoEditViewController_editPluginSession_loadDisplaySizeImageWithHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E69DCAB8] imageWithCGImage:a2];
  (*(*(a1 + 32) + 16))();
}

- (void)editPluginSession:(id)session loadPlaceholderImageWithHandler:(id)handler
{
  handlerCopy = handler;
  v6 = objc_alloc(MEMORY[0x1E69B3AD8]);
  compositionController = [(PUPhotoEditViewController *)self compositionController];
  composition = [compositionController composition];
  v9 = [v6 initWithComposition:composition];

  v10 = [objc_alloc(MEMORY[0x1E69B3C00]) initWithLevel:0];
  [v9 setPriority:v10];

  view = [(PUPhotoEditViewController *)self view];
  window = [view window];
  screen = [window screen];
  [screen pu_workImageSize];
  v15 = v14;
  v17 = v16;

  v18 = [objc_alloc(MEMORY[0x1E69B3A78]) initWithTargetSize:{v15, v17}];
  [v9 setScalePolicy:v18];

  mediaView = [(PUPhotoEditViewController *)self mediaView];
  _renderer = [mediaView _renderer];

  [_renderer displayCurrentEDRHeadroom];
  if (v21 <= 1.0)
  {
    displayP3ColorSpace = [MEMORY[0x1E69B3A10] displayP3ColorSpace];
    [v9 setColorSpace:displayP3ColorSpace];

    bGRA8 = [MEMORY[0x1E69B3BF0] BGRA8];
    [v9 setPixelFormat:bGRA8];
  }

  else
  {
    displayP3_PQ = [MEMORY[0x1E69B3A10] displayP3_PQ];
    [v9 setColorSpace:displayP3_PQ];

    x2RGB10 = [MEMORY[0x1E69B3BF0] X2RGB10];
    [v9 setPixelFormat:x2RGB10];

    [_renderer displayMaximumEDRHeadroom];
    [v9 setMaxEDRHeadroom:?];
    [_renderer displayCurrentEDRHeadroom];
    [v9 setCurrentEDRHeadroom:?];
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __79__PUPhotoEditViewController_editPluginSession_loadPlaceholderImageWithHandler___block_invoke;
  v27[3] = &unk_1E7B805C0;
  v28 = handlerCopy;
  v26 = handlerCopy;
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

- (void)editPluginSession:(id)session loadAdjustmentDataWithHandler:(id)handler
{
  handlerCopy = handler;
  compositionController = [(PUPhotoEditViewController *)self compositionController];
  uneditedComposition = [(PUPhotoEditViewController *)self uneditedComposition];
  if (compositionController && ([compositionController isEqual:uneditedComposition visualChangesOnly:1] & 1) == 0)
  {
    self->_pluginWorkImageVersionIsValid = 1;
    self->_pluginWorkImageVersion = 2;
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    self->_pluginWorkImageVersionIsValid = 0;
    v8 = objc_alloc_init(MEMORY[0x1E6978868]);
    [v8 setVersion:16];
    mediaProvider = [(PUPhotoEditViewController *)self mediaProvider];
    photo = [(PUPhotoEditViewController *)self photo];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __77__PUPhotoEditViewController_editPluginSession_loadAdjustmentDataWithHandler___block_invoke;
    v11[3] = &unk_1E7B7F870;
    v12 = handlerCopy;
    [mediaProvider requestImageForAsset:photo targetSize:0 contentMode:v8 options:v11 resultHandler:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  }
}

void __77__PUPhotoEditViewController_editPluginSession_loadAdjustmentDataWithHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6978B30]];
  (*(*(a1 + 32) + 16))();
}

- (void)popoverPresentationControllerDidDismissPopover:(id)popover
{
  popoverCopy = popover;
  [(PUPhotoEditViewController *)self setCancelConfirmationAlert:0];
  [(PUPhotoEditViewController *)self setRevertConfirmationAlert:0];
  [(PUPhotoEditViewController *)self setJpegPreviewForRawConfirmationAlert:0];
  [(PUPhotoEditViewController *)self setIrisRevertConfirmationAlert:0];
  [popoverCopy setDelegate:0];
}

- (void)prepareForPopoverPresentation:(id)presentation
{
  presentationCopy = presentation;
  presentedViewController = [presentationCopy presentedViewController];
  cancelConfirmationAlert = [(PUPhotoEditViewController *)self cancelConfirmationAlert];
  if (presentedViewController == cancelConfirmationAlert)
  {
    cancelButton = self->_cancelButton;

    if (cancelButton)
    {
      window = [(PUPhotoEditNotchButton *)self->_cancelButton window];

      if (window)
      {
        [presentationCopy setSourceView:self->_cancelButton];
        [(PUPhotoEditNotchButton *)self->_cancelButton bounds];
        [presentationCopy setSourceRect:?];
      }

      else if (self->_cancelButtonItem)
      {
        [presentationCopy setBarButtonItem:?];
      }
    }
  }

  else
  {
  }

  presentedViewController2 = [presentationCopy presentedViewController];
  revertConfirmationAlert = [(PUPhotoEditViewController *)self revertConfirmationAlert];
  if (presentedViewController2 == revertConfirmationAlert)
  {
    mainActionButton = self->_mainActionButton;

    if (mainActionButton)
    {
      window2 = [(PUPhotoEditNotchButton *)self->_mainActionButton window];

      if (window2)
      {
        [presentationCopy setSourceView:self->_mainActionButton];
        [(PUPhotoEditNotchButton *)self->_mainActionButton bounds];
        [presentationCopy setSourceRect:?];
      }

      else if (self->_mainActionButtonItem)
      {
        [presentationCopy setBarButtonItem:?];
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
      selfCopy = self;
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

- (void)_handleMediaViewReady:(id)ready statistics:(id)statistics
{
  v25 = *MEMORY[0x1E69E9840];
  readyCopy = ready;
  statisticsCopy = statistics;
  _geometry = [readyCopy _geometry];

  if (_geometry)
  {
    _geometry2 = [readyCopy _geometry];
    [_geometry2 size];
    NUPixelSizeToCGSize();
    [(PUPhotoEditViewController *)self setLastKnownPreviewImageSize:?];
  }

  isRunningTest = [*MEMORY[0x1E69DDA98] isRunningTest];
  if (statisticsCopy && isRunningTest)
  {
    [(_PPTState *)self->_pptState setHasRendered:1];
    [(PUPhotoEditViewController *)self _ppt_conditionallyExecuteAfterRender];
    renderStatistics = [(_PPTState *)self->_pptState renderStatistics];
    [renderStatistics addObject:statisticsCopy];
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
  _allTools = [(PUPhotoEditViewController *)self _allTools];
  v14 = [_allTools countByEnumeratingWithState:&v17 objects:v24 count:16];
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
          objc_enumerationMutation(_allTools);
        }

        [*(*(&v17 + 1) + 8 * v16++) mediaViewIsReady];
      }

      while (v14 != v16);
      v14 = [_allTools countByEnumeratingWithState:&v17 objects:v24 count:16];
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

- (void)mediaViewDidUpdateGeometry:(id)geometry
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(PUPhotoEditViewController *)self _allTools:geometry];
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

- (void)mediaViewDidEndLivePhotoPlayback:(id)playback
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

- (void)mediaViewWillBeginLivePhotoPlayback:(id)playback
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

- (void)mediaViewDidFinishPreparingVideo:(id)video
{
  videoCopy = video;
  [(PUPhotoEditViewController *)self setIsCachingVideo:0];
  [(PUPhotoEditMediaToolController *)self->_mediaToolController videoRenderingChanged];
  v5 = PLPhotoEditGetLog();
  v6 = os_signpost_id_make_with_pointer(v5, videoCopy);

  v7 = PLPhotoEditGetLog();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v8, OS_SIGNPOST_INTERVAL_END, v6, "CachingVideo", "", v9, 2u);
  }
}

- (void)mediaViewDidStartPreparingVideo:(id)video
{
  videoCopy = video;
  v5 = PLPhotoEditGetLog();
  v6 = os_signpost_id_make_with_pointer(v5, videoCopy);

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

- (void)mediaViewDidPlayToEnd:(id)end
{
  if (self->_currentTool == &self->_audioToolController->super.super)
  {
    v12 = v3;
    v13 = v4;
    mediaView = [(PUPhotoEditViewController *)self mediaView];
    player = [mediaView player];
    v10 = *MEMORY[0x1E6960CC0];
    v11 = *(MEMORY[0x1E6960CC0] + 16);
    [player seekToTime:&v10 exact:1];

    mediaView2 = [(PUPhotoEditViewController *)self mediaView];
    player2 = [mediaView2 player];
    [player2 play];
  }
}

- (void)mediaViewIsReadyForVideoPlayback:(id)playback
{
  [(PUPhotoEditViewController *)self _handleMediaViewReady:playback statistics:0];
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
    compositionController = [(PUPhotoEditViewController *)self compositionController];
    trimAdjustmentController = [compositionController trimAdjustmentController];

    memset(&v11, 0, sizeof(v11));
    if (trimAdjustmentController)
    {
      [trimAdjustmentController startTime];
      if (v11.flags)
      {
        lhs = buf;
        v8 = v11;
        CMTimeAdd(&v10, &lhs, &v8);
        buf = v10;
      }
    }

    trimController = [(PUPhotoEditMediaToolController *)self->_mediaToolController trimController];
    v10 = buf;
    [trimController setPlayheadTime:&v10 forceSeek:1];

    v10 = **&MEMORY[0x1E6960C70];
    [(PUPhotoEditViewController *)self setInitialSeekTime:&v10];
  }
}

- (void)mediaViewDidUpdateLivePhoto:(id)photo
{
  v17 = *MEMORY[0x1E69E9840];
  _livePhotoView = [(NUMediaView *)self->_mediaView _livePhotoView];
  if ([_livePhotoView overridePhoto])
  {
    image = [MEMORY[0x1E69DCAB8] imageWithCGImage:{objc_msgSend(_livePhotoView, "overridePhoto")}];
  }

  else
  {
    livePhoto = [_livePhotoView livePhoto];
    image = [livePhoto image];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  _allTools = [(PUPhotoEditViewController *)self _allTools];
  v8 = [_allTools countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(_allTools);
        }

        [*(*(&v12 + 1) + 8 * v11++) setPlaceholderImage:image];
      }

      while (v9 != v11);
      v9 = [_allTools countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  [(PUPhotoEditMediaToolController *)self->_mediaToolController videoRenderingChanged];
}

- (void)mediaViewDidFinishRendering:(id)rendering withStatistics:(id)statistics
{
  renderingCopy = rendering;
  statisticsCopy = statistics;
  videoScrubberView = [(PUPhotoEditViewController *)self videoScrubberView];
  if (videoScrubberView)
  {
    v9 = videoScrubberView;
    [(PUPhotoEditViewController *)self lastKnownMediaViewImageFrame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [renderingCopy imageFrame];
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
      view = [(PUPhotoEditViewController *)self view];
      [view setNeedsLayout];
    }
  }

  [renderingCopy imageFrame];
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
      _isQuickCrop = [(PUPhotoEditViewController *)self _isQuickCrop];

      if (!_isQuickCrop)
      {
        _renderView = [(NUMediaView *)self->_mediaView _renderView];
        [_renderView bounds];
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
    [(PUPhotoEditViewController *)self _handleMediaViewReady:renderingCopy statistics:statisticsCopy];
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

- (void)mediaViewDidScroll:(id)scroll
{
  v15 = *MEMORY[0x1E69E9840];
  scrollCopy = scroll;
  [(PUPhotoEditViewController *)self _updateForcingDarkUserInterfaceStyleForZoomIfNeeded];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  _allTools = [(PUPhotoEditViewController *)self _allTools];
  v6 = [_allTools countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(_allTools);
        }

        [*(*(&v10 + 1) + 8 * v9++) mediaViewDidScroll:scrollCopy];
      }

      while (v7 != v9);
      v7 = [_allTools countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(PUPhotoEditViewController *)self _updateToolbarShadowAlpha];
}

- (void)mediaViewDidEndDecelerating:(id)decelerating
{
  v18 = *MEMORY[0x1E69E9840];
  deceleratingCopy = decelerating;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _allTools = [(PUPhotoEditViewController *)self _allTools];
  v6 = [_allTools countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(_allTools);
        }

        [*(*(&v13 + 1) + 8 * v9++) mediaViewDidEndDecelerating:deceleratingCopy];
      }

      while (v7 != v9);
      v7 = [_allTools countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  videoScrubberView = [(PUPhotoEditViewController *)self videoScrubberView];
  superview = [videoScrubberView superview];

  if (superview)
  {
    view = [(PUPhotoEditViewController *)self view];
    [view setNeedsLayout];
  }

  [(PUPhotoEditViewController *)self _updateVideoScrubberDisplayAnimate:0];
}

- (void)mediaViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  decelerateCopy = decelerate;
  v20 = *MEMORY[0x1E69E9840];
  draggingCopy = dragging;
  self->_isImageZooming = 0;
  [(PUPhotoEditViewController *)self _updateForcingDarkUserInterfaceStyleForZoomIfNeeded];
  videoScrubberView = [(PUPhotoEditViewController *)self videoScrubberView];
  superview = [videoScrubberView superview];

  if (superview)
  {
    view = [(PUPhotoEditViewController *)self view];
    [view setNeedsLayout];
  }

  [(PUPhotoEditViewController *)self _updateVideoScrubberDisplayAnimate:1];
  [(PUPhotoEditViewController *)self _reloadToolbarButtonsIfNeeded];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  _allTools = [(PUPhotoEditViewController *)self _allTools];
  v11 = [_allTools countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(_allTools);
        }

        [*(*(&v15 + 1) + 8 * v14++) mediaViewDidEndDragging:draggingCopy willDecelerate:decelerateCopy];
      }

      while (v12 != v14);
      v12 = [_allTools countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }

  if (![(PUPhotoEditToolController *)self->_currentEditingTool isPerformingLiveInteraction])
  {
    [(PUPhotoEditViewController *)self _cancelPendingFocusViewForInteractionWithDelay];
    [(PUPhotoEditViewController *)self setFocusingViewForInteraction:0 exemptVideoScrubber:decelerateCopy];
  }
}

- (void)mediaViewWillBeginDragging:(id)dragging
{
  v15 = *MEMORY[0x1E69E9840];
  draggingCopy = dragging;
  self->_isImageZooming = 1;
  [(PUPhotoEditViewController *)self _updateVideoScrubberDisplayAnimate:0];
  [(PUPhotoEditViewController *)self _reloadToolbarButtonsIfNeeded];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  _allTools = [(PUPhotoEditViewController *)self _allTools];
  v6 = [_allTools countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(_allTools);
        }

        [*(*(&v10 + 1) + 8 * v9++) mediaViewWillBeginDragging:draggingCopy];
      }

      while (v7 != v9);
      v7 = [_allTools countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(PUPhotoEditViewController *)self _setTransientStatusBadgeVisible:0];
  [(PUPhotoEditViewController *)self _focusViewForInteractionWithDelay];
}

- (void)mediaView:(id)view didZoom:(double)zoom
{
  v17 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _allTools = [(PUPhotoEditViewController *)self _allTools];
  v8 = [_allTools countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(_allTools);
        }

        [*(*(&v12 + 1) + 8 * v11++) mediaView:viewCopy didZoom:zoom];
      }

      while (v9 != v11);
      v9 = [_allTools countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)mediaViewDidEndZooming:(id)zooming
{
  v18 = *MEMORY[0x1E69E9840];
  zoomingCopy = zooming;
  self->_isImageZooming = 0;
  videoScrubberView = [(PUPhotoEditViewController *)self videoScrubberView];
  superview = [videoScrubberView superview];

  if (superview)
  {
    view = [(PUPhotoEditViewController *)self view];
    [view setNeedsLayout];
  }

  [(PUPhotoEditViewController *)self _updateVideoScrubberDisplayAnimate:1];
  [(PUPhotoEditViewController *)self _reloadToolbarButtonsIfNeeded];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  _allTools = [(PUPhotoEditViewController *)self _allTools];
  v9 = [_allTools countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(_allTools);
        }

        [*(*(&v13 + 1) + 8 * v12++) mediaViewDidEndZooming:zoomingCopy];
      }

      while (v10 != v12);
      v10 = [_allTools countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)mediaViewWillBeginZooming:(id)zooming
{
  v15 = *MEMORY[0x1E69E9840];
  zoomingCopy = zooming;
  self->_isImageZooming = 1;
  [(PUPhotoEditViewController *)self _updateVideoScrubberDisplayAnimate:0];
  [(PUPhotoEditViewController *)self _reloadToolbarButtonsIfNeeded];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  _allTools = [(PUPhotoEditViewController *)self _allTools];
  v6 = [_allTools countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(_allTools);
        }

        [*(*(&v10 + 1) + 8 * v9++) mediaViewWillBeginZooming:zoomingCopy];
      }

      while (v7 != v9);
      v7 = [_allTools countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(PUPhotoEditViewController *)self _setTransientStatusBadgeVisible:0];
  if (!self->_zoomButtonInteraction)
  {
    [(PUPhotoEditViewController *)self _focusViewForInteractionWithDelay];
  }
}

- (void)_addCropToolGainMapWithRequest:(id)request
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__PUPhotoEditViewController__addCropToolGainMapWithRequest___block_invoke;
  v3[3] = &unk_1E7B80440;
  v3[4] = self;
  [request submit:v3];
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
    compositionController = [(PUPhotoEditViewController *)self compositionController];
    composition = [compositionController composition];
    v6 = [v3 initWithComposition:composition];

    [v6 setAuxiliaryImageType:7];
    sourceFilterNoOrientation = [MEMORY[0x1E69BDEF8] sourceFilterNoOrientation];
    v9[0] = sourceFilterNoOrientation;
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
  irisRevertConfirmationAlert = [(PUPhotoEditViewController *)self irisRevertConfirmationAlert];

  if (irisRevertConfirmationAlert)
  {

    [(PUPhotoEditViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (BOOL)showsLabelsForToolButtons
{
  photoEditSpec = [(PUPhotoEditViewController *)self photoEditSpec];
  currentLayoutStyle = [photoEditSpec currentLayoutStyle];

  if (currentLayoutStyle == 1)
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
    navigationController = [(PUPhotoEditViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
  }

  else
  {
    navigationBar = self->_secondaryToolbar;
  }

  return navigationBar;
}

- (void)toolController:(id)controller didChangeIsScrolling:(BOOL)scrolling
{
  scrollingCopy = scrolling;
  if ([(PUPhotoEditViewController *)self currentToolControllerIsScrolling]!= scrolling)
  {
    v6 = MEMORY[0x1B8C6D660]([(PUPhotoEditViewController *)self setCurrentToolControllerIsScrolling:scrollingCopy]);
    v7 = &OBJC_IVAR___PUPhotoEditViewController__mainToolbar;
    if (v6)
    {
      v7 = &OBJC_IVAR___PUPhotoEditViewController__swiftToolbarView;
    }

    v8 = *(&self->super.super.super.isa + *v7);
    v9 = (scrollingCopy ^ 1);
    [(PUPhotoEditViewController *)self _updateToolbarsAnimated:1];
    v10 = MEMORY[0x1E69DD250];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __65__PUPhotoEditViewController_toolController_didChangeIsScrolling___block_invoke;
    v12[3] = &unk_1E7B7F350;
    v15 = v9;
    v13 = v8;
    selfCopy = self;
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

- (id)toolControllerHitEventForwardView:(id)view
{
  mediaView = [(PUPhotoEditViewController *)self mediaView];
  _scrollView = [mediaView _scrollView];

  return _scrollView;
}

- (CGPoint)toolController:(id)controller viewPointFromOriginalPoint:(CGPoint)point view:(id)view
{
  [(NUMediaView *)self->_mediaView convertPoint:@"/masterSpace" fromSpace:view toView:point.x, point.y];
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)toolController:(id)controller originalPointFromViewPoint:(CGPoint)point view:(id)view
{
  [(NUMediaView *)self->_mediaView convertPoint:view fromView:@"/masterSpace" toSpace:point.x, point.y];
  result.y = v6;
  result.x = v5;
  return result;
}

- (unint64_t)toolControllerSourceAssetType:(id)type
{
  hasLoadedRaw = [(PUPhotoEditViewController *)self hasLoadedRaw];
  if ([(PUPhotoEditViewController *)self isStandardVideo])
  {
    return hasLoadedRaw | 2;
  }

  else
  {
    return hasLoadedRaw;
  }
}

- (CGSize)toolControllerOriginalImageSize:(id)size
{
  compositionController = [(PUPhotoEditViewController *)self compositionController];
  [MEMORY[0x1E69BE360] synchronousInputSizeForCompositionController:compositionController];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)toolControllerOriginalOrientedImageSize:(id)size
{
  [(PUPhotoEditViewController *)self toolControllerOriginalImageSize:size];
  compositionController = [(PUPhotoEditViewController *)self compositionController];
  [compositionController imageOrientation];
  PLOrientationTransformImageSize();
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)toolControllerLivePhoto:(id)photo
{
  livePhotoModel = [(PUPhotoEditViewController *)self livePhotoModel];
  isVideoEnabled = [livePhotoModel isVideoEnabled];

  if (isVideoEnabled)
  {
    _livePhotoView = [(NUMediaView *)self->_mediaView _livePhotoView];
    livePhoto = [_livePhotoView livePhoto];
  }

  else
  {
    livePhoto = 0;
  }

  return livePhoto;
}

- ($5A0616AB7869379E861635CACF312FD6)toolControllerImageModulationOptions:(id)options
{
  v3 = MEMORY[0x1E69C35F0];
  photo = [(PUPhotoEditViewController *)self photo];
  v5 = [v3 optionsForAsset:photo];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.var1 = *&v9;
  result.var0 = v8;
  return result;
}

- (id)toolControllerOriginalCompositionController:(id)controller
{
  originalComposition = [(PUPhotoEditViewController *)self originalComposition];
  if (originalComposition)
  {
    v5 = MEMORY[0x1E69BDEF0];
    originalComposition2 = [(PUPhotoEditViewController *)self originalComposition];
    v7 = [v5 newCompositionControllerWithComposition:originalComposition2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)toolControllerUneditedCompositionController:(id)controller
{
  v3 = MEMORY[0x1E69BDEF0];
  uneditedComposition = [(PUPhotoEditViewController *)self uneditedComposition];
  v5 = [v3 newCompositionControllerWithComposition:uneditedComposition];

  return v5;
}

- (void)toolControllerDidUpdateToolbar:(id)toolbar
{
  if (self->_currentEditingTool == toolbar)
  {
    [(PUPhotoEditViewController *)self _updateToolbarsAnimated:1];
  }
}

- (void)toolControllerWantsGestureRecognizerUpdate:(id)update
{
  [(PUPhotoEditViewController *)self _updateTogglePreviewGestureRecognizer];
  [(PUPhotoEditViewController *)self _updateLivePhotoPlaybackGestureRecognizer];

  [(PUPhotoEditViewController *)self _updateSwipeDownGestureRecognizer];
}

- (void)toolControllerDidChangeWantsTapToToggleOriginalEnabled:(id)enabled enabled:(BOOL)a4
{
  v4 = a4;
  if ([enabled isActiveTool])
  {
    togglePreviewTapGestureRecognizer = self->_togglePreviewTapGestureRecognizer;

    [(UITapGestureRecognizer *)togglePreviewTapGestureRecognizer setEnabled:v4];
  }
}

- (void)toolController:(id)controller didChangePreferredPreviewViewInsetsAnimated:(BOOL)animated
{
  if (animated && !self->_switchingToolsAnimated)
  {
    view = [(PUPhotoEditViewController *)self view];
    [view layoutIfNeeded];

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

- (void)toolControllerDidChangeIsPerformingLiveInteraction:(id)interaction
{
  if ([interaction isPerformingLiveInteraction])
  {

    [(PUPhotoEditViewController *)self _focusViewForInteractionWithDelay];
  }

  else
  {
    [(PUPhotoEditViewController *)self _cancelPendingFocusViewForInteractionWithDelay];

    [(PUPhotoEditViewController *)self setFocusingViewForInteraction:0];
  }
}

- (void)toolControllerDidChangeIsActivelyAdjusting:(id)adjusting
{
  [(PUPhotoEditViewController *)self _updateModelDependentControlsAnimated:1];

  [(PUPhotoEditViewController *)self _updateRenderedPreview];
}

- (void)mediaTimelineControlViewDidEndChanging:(id)changing
{
  [(PUPhotoEditViewController *)self setIsScrubbingVideo:0];
  if ([(PUPhotoEditViewController *)self wasPlayingBeforeBeginningToScrubVideo])
  {
    v4 = +[PUPhotoEditProtoSettings sharedInstance];
    pauseAfterMovingPlayhead = [v4 pauseAfterMovingPlayhead];

    if ((pauseAfterMovingPlayhead & 1) == 0)
    {
      mediaView = [(PUPhotoEditViewController *)self mediaView];
      player = [mediaView player];
      [player play];
    }

    playPauseButton = [(PUPhotoEditViewController *)self playPauseButton];
    [playPauseButton setSelected:pauseAfterMovingPlayhead ^ 1u];
  }

  [(PUPhotoEditViewController *)self _cancelPendingFocusViewForInteractionWithDelay];

  [(PUPhotoEditViewController *)self setFocusingViewForInteraction:0];
}

- (void)mediaTimelineControlViewDidChangeValue:(id)value
{
  valueCopy = value;
  mediaView = [(PUPhotoEditViewController *)self mediaView];
  player = [mediaView player];

  if (!player)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
LABEL_5:
    v7 = 600;
    goto LABEL_6;
  }

  [player currentTime];
  v7 = v17;
  if (!v17)
  {
    goto LABEL_5;
  }

LABEL_6:
  memset(&v15, 0, sizeof(v15));
  [valueCopy currentValue];
  CMTimeMakeWithSeconds(&v15, v8, v7);
  memset(&v14, 0, sizeof(v14));
  [valueCopy minValue];
  v10 = v9;

  CMTimeMakeWithSeconds(&v14, v10, v7);
  if (v15.flags & 1) != 0 && (v14.flags)
  {
    memset(&v13, 0, sizeof(v13));
    lhs = v15;
    v11 = v14;
    CMTimeSubtract(&v13, &lhs, &v11);
    lhs = v13;
    [player seekToTime:&lhs exact:0];
  }
}

- (void)mediaTimelineControlViewWillBeginChanging:(id)changing
{
  [(PUPhotoEditViewController *)self setIsScrubbingVideo:1];
  mediaView = [(PUPhotoEditViewController *)self mediaView];
  player = [mediaView player];

  [player playbackRate];
  [(PUPhotoEditViewController *)self setWasPlayingBeforeBeginningToScrubVideo:v5 == 1.0];
  [player pause];
  [(PUPhotoEditViewController *)self _focusViewForInteractionWithDelay];
}

- (void)_updateVideoScrubberDisplayAnimate:(BOOL)animate
{
  animateCopy = animate;
  videoScrubberView = [(PUPhotoEditViewController *)self videoScrubberView];

  if (!videoScrubberView)
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

  view = [(PUPhotoEditViewController *)self view];
  window = [view window];
  [window bounds];
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
  videoScrubberView2 = [(PUPhotoEditViewController *)self videoScrubberView];
  [videoScrubberView2 alpha];
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

  playPauseButton = [(PUPhotoEditViewController *)self playPauseButton];
  [playPauseButton alpha];
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
    if (animateCopy)
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
        videoScrubberView3 = [(PUPhotoEditViewController *)self videoScrubberView];
        [videoScrubberView3 setAlpha:v13];
      }

      if (v18 != v21)
      {
        playPauseButton2 = [(PUPhotoEditViewController *)self playPauseButton];
        [playPauseButton2 setAlpha:v18];
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
  videoScrubberView = [(PUPhotoEditViewController *)self videoScrubberView];
  if (!videoScrubberView)
  {
    return;
  }

  v4 = videoScrubberView;
  isScrubbingVideo = [(PUPhotoEditViewController *)self isScrubbingVideo];

  if (isScrubbingVideo)
  {
    return;
  }

  mediaView = [(PUPhotoEditViewController *)self mediaView];
  memset(&v34, 0, sizeof(v34));
  player = [mediaView player];
  v8 = player;
  if (player)
  {
    [player mediaDuration];
  }

  else
  {
    memset(&v34, 0, sizeof(v34));
  }

  memset(&v33, 0, sizeof(v33));
  CMTimeMake(&v33, 0, v34.timescale);
  memset(&v32, 0, sizeof(v32));
  player2 = [mediaView player];
  v10 = player2;
  if (player2)
  {
    [player2 currentTime];
  }

  else
  {
    memset(&v32, 0, sizeof(v32));
  }

  compositionController = [(PUPhotoEditViewController *)self compositionController];
  trimAdjustmentController = [compositionController trimAdjustmentController];

  if (trimAdjustmentController)
  {
    [trimAdjustmentController startTime];
    if (v31)
    {
      [trimAdjustmentController endTime];
      if (v30)
      {
        [trimAdjustmentController startTime];
        v33 = time;
        [trimAdjustmentController endTime];
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
    videoScrubberView2 = [(PUPhotoEditViewController *)self videoScrubberView];
    *&v17 = Seconds;
    [videoScrubberView2 setMinValue:v17];

    time = v34;
    v18 = CMTimeGetSeconds(&time);
    videoScrubberView3 = [(PUPhotoEditViewController *)self videoScrubberView];
    *&v20 = v18;
    [videoScrubberView3 setMaxValue:v20];

    time = v32;
    v21 = CMTimeGetSeconds(&time);
    videoScrubberView4 = [(PUPhotoEditViewController *)self videoScrubberView];
    *&v23 = v21;
    [videoScrubberView4 setCurrentValue:v23];

    player3 = [mediaView player];
    if ([player3 playbackState] == 3)
    {
      time = v32;
      lhs = v34;
      v25 = CMTimeCompare(&time, &lhs) != 0;
    }

    else
    {
      v25 = 0;
    }

    playPauseButton = [(PUPhotoEditViewController *)self playPauseButton];
    [playPauseButton setSelected:v25];
  }
}

- (void)_createVideoScrubberIfNeeded
{
  videoScrubberView = [(PUPhotoEditViewController *)self videoScrubberView];
  if (videoScrubberView)
  {
  }

  else if ([(PUPhotoEditViewController *)self isStandardVideo])
  {
    v4 = objc_alloc_init(PUAVKitMediaTimelineView);
    videoScrubberView = self->_videoScrubberView;
    self->_videoScrubberView = v4;

    photo = [(PUPhotoEditViewController *)self photo];
    mediaSubtypes = [photo mediaSubtypes];

    v8 = 4.0;
    if ((*&mediaSubtypes & 0x100000) == 0)
    {
      v8 = 1.0;
    }

    [(PUAVKitMediaTimelineView *)self->_videoScrubberView setWhiteValue:v8];
    [(PUAVKitMediaTimelineView *)self->_videoScrubberView setOverrideUserInterfaceStyle:2];
    [(PUAVKitMediaTimelineView *)self->_videoScrubberView setShowsTimeLabels:1];
    [(PUAVKitMediaTimelineView *)self->_videoScrubberView setPlaying:1];
    [(PUAVKitMediaTimelineView *)self->_videoScrubberView setAlpha:0.0];
    [(PUAVKitMediaTimelineView *)self->_videoScrubberView setDelegate:self];
    view = [(PUPhotoEditViewController *)self view];
    [view insertSubview:self->_videoScrubberView aboveSubview:self->_mediaView];

    if (!self->_videoScrubberTimeObserver)
    {
      objc_initWeak(&location, self);
      player = [(NUMediaView *)self->_mediaView player];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __57__PUPhotoEditViewController__createVideoScrubberIfNeeded__block_invoke;
      v23[3] = &unk_1E7B7B568;
      objc_copyWeak(&v24, &location);
      v11 = [player addPlaybackTimeObserver:v23];
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

    view2 = [(PUPhotoEditViewController *)self view];
    [view2 insertSubview:self->_playPauseButton aboveSubview:self->_mediaView];

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
  mEMORY[0x1E69B3A58] = [MEMORY[0x1E69B3A58] sharedFactory];
  modelRegistry = [mEMORY[0x1E69B3A58] modelRegistry];

  [modelRegistry unregisterModelForKey:*MEMORY[0x1E69BE038]];
  [modelRegistry unregisterModelForKey:*MEMORY[0x1E69BE040]];
}

- (void)_ensureCleanupResourcesWithCompletion:(id)completion
{
  completionCopy = completion;
  compositionController = [(PUPhotoEditViewController *)self compositionController];
  inpaintAdjustmentController = [compositionController inpaintAdjustmentController];

  if (inpaintAdjustmentController)
  {
    modelPrepInterval = [(PUPhotoEditViewController *)self modelPrepInterval];
    [modelPrepInterval beginInterval];

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
      completionCopy[2](completionCopy);
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
      view = [v15 view];
      [v15 setModalPresentationStyle:6];
      [v15 setModalPresentationCapturesStatusBarAppearance:1];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __67__PUPhotoEditViewController__ensureCleanupResourcesWithCompletion___block_invoke_3;
      v27[3] = &unk_1E7B80C38;
      v17 = view;
      v28 = v17;
      selfCopy = self;
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
      v23 = completionCopy;
      [v12 preparePackageWithProgress:v25 updateHandler:v20];

      objc_destroyWeak(v24);
      objc_destroyWeak(&v32);

      objc_destroyWeak(&v35);
    }

    objc_destroyWeak(buf);
  }

  else
  {
    completionCopy[2](completionCopy);
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
  quickCropContext = [(PUPhotoEditViewController *)self quickCropContext];
  v3 = quickCropContext != 0;

  return v3;
}

- (int64_t)currentToolPickerLayoutDirection
{
  photoEditSpec = [(PUPhotoEditViewController *)self photoEditSpec];
  currentLayoutStyle = [photoEditSpec currentLayoutStyle];

  layoutOrientation = [(PUPhotoEditViewController *)self layoutOrientation];
  v6 = currentLayoutStyle == 4;
  v7 = 1;
  if (currentLayoutStyle != 4)
  {
    v7 = 2;
  }

  if (layoutOrientation == 3)
  {
    v6 = v7;
  }

  if (layoutOrientation == 2)
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
  _defaultRenderPipelineFiltersForCurrentMode = [(PUPhotoEditViewController *)self _defaultRenderPipelineFiltersForCurrentMode];
  [v3 setPipelineFilters:_defaultRenderPipelineFiltersForCurrentMode];

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

  _scrollView = [v3 _scrollView];
  [_scrollView _setHiddenPocketEdges:15];

  return v3;
}

- (void)_transitionToNewToolViewController:(id)controller oldToolViewController:(id)viewController animationBlock:(id)block completion:(id)completion animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  blockCopy = block;
  completionCopy = completion;
  [(NUMediaView *)self->_mediaView setHidden:0];
  if ([(PUPhotoEditViewController *)self isStandardVideo])
  {
    trimController = [(PUPhotoEditMediaToolController *)self->_mediaToolController trimController];
    [trimController pause];
  }

  view = [controllerCopy view];
  view2 = [viewControllerCopy view];
  if (controllerCopy)
  {
    view3 = [(PUPhotoEditViewController *)self view];
    [(PUPhotoEditViewController *)self addChildViewController:controllerCopy];
    [view3 addSubview:view];
    [controllerCopy didMoveToParentViewController:self];
    [view3 setNeedsUpdateConstraints];
  }

  livePhotoModel = [(PUPhotoEditViewController *)self livePhotoModel];
  [livePhotoModel setIgnoresUpdates:1];

  _isQuickCrop = [(PUPhotoEditViewController *)self _isQuickCrop];
  if (animatedCopy)
  {
    if (viewControllerCopy)
    {
      v22 = 0;
    }

    else
    {
      v22 = _isQuickCrop;
    }

    [view setAlpha:0.0];
    [(PUPhotoEditViewController *)self setMediaViewEdgeInsetsUpdateDisableCount:[(PUPhotoEditViewController *)self mediaViewEdgeInsetsUpdateDisableCount]+ 1];
    view4 = [(PUPhotoEditViewController *)self view];
    [view4 layoutIfNeeded];

    [(PUPhotoEditViewController *)self setMediaViewEdgeInsetsUpdateDisableCount:[(PUPhotoEditViewController *)self mediaViewEdgeInsetsUpdateDisableCount]- 1];
    [MEMORY[0x1E6979518] animationDuration];
    v25 = v24;
    UIAnimationDragCoefficient();
    v27 = v25 * v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __121__PUPhotoEditViewController__transitionToNewToolViewController_oldToolViewController_animationBlock_completion_animated___block_invoke;
    aBlock[3] = &unk_1E7B7B4F0;
    v43 = blockCopy;
    aBlock[4] = self;
    v45 = v22;
    v44 = v27;
    v41 = view;
    v42 = view2;
    v28 = _Block_copy(aBlock);
    v33 = MEMORY[0x1E69E9820];
    v34 = 3221225472;
    v35 = __121__PUPhotoEditViewController__transitionToNewToolViewController_oldToolViewController_animationBlock_completion_animated___block_invoke_2;
    v36 = &unk_1E7B7D308;
    selfCopy = self;
    v39 = completionCopy;
    v38 = viewControllerCopy;
    v29 = _Block_copy(&v33);
    [MEMORY[0x1E69DD250] _animateWithDuration:0 delay:v28 options:0 animations:v29 start:v27 completion:{0.0, v33, v34, v35, v36, selfCopy}];
  }

  else
  {
    [(PUPhotoEditViewController *)self _updateBackgroundColor];
    completionCopy[2](completionCopy);
    if (viewControllerCopy)
    {
      [viewControllerCopy willMoveToParentViewController:0];
      view5 = [viewControllerCopy view];
      [view5 removeFromSuperview];

      [viewControllerCopy removeFromParentViewController];
    }

    [(PUPhotoEditViewController *)self _updateSubviewsOrdering];
    livePhotoModel2 = [(PUPhotoEditViewController *)self livePhotoModel];
    [livePhotoModel2 setIgnoresUpdates:0];
  }

  [(PUPhotoEditViewController *)self _updateRenderedPreview];
  [(PUPhotoEditViewController *)self _updateToolbarsAnimated:animatedCopy];
  [(PUPhotoEditViewController *)self _updateToolbarBackgroundAnimated:animatedCopy];
  [(PUPhotoEditViewController *)self _updateTogglePreviewGestureRecognizer];
  [(PUPhotoEditViewController *)self _updateLivePhotoPlaybackGestureRecognizer];
  [(PUPhotoEditViewController *)self _updateSwipeDownGestureRecognizer];
  [(PEAutoAdjustmentController *)self->_autoEnhanceController invalidateCachedAdjustments];
  valuesCalculator = [(PUPhotoEditViewController *)self valuesCalculator];
  [valuesCalculator precomputeImageValues];

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

- (void)_transitionToEditingTool:(id)tool animated:(BOOL)animated completionHandler:(id)handler
{
  toolCopy = tool;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__PUPhotoEditViewController__transitionToEditingTool_animated_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7B80C88;
  v10 = handlerCopy;
  v33 = v10;
  v11 = _Block_copy(aBlock);
  v12 = v11;
  currentTool = self->_currentTool;
  if (currentTool == toolCopy)
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
      v16 = toolCopy;
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
    selfCopy = self;
    v27 = toolCopy;
    animatedCopy = animated;
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
    compositionController = [(PUPhotoEditViewController *)self compositionController];
    depthAdjustmentController = [compositionController depthAdjustmentController];
    enabled = [depthAdjustmentController enabled];

    if (enabled)
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

- (id)_toolControllerForInitialToolType:(int64_t)type
{
  initialToolType = [(PUPhotoEditViewController *)self initialToolType];
  v5 = 0;
  if (initialToolType > 4)
  {
    if (initialToolType <= 6)
    {
      if (initialToolType != 5)
      {
        v6 = 1608;
        goto LABEL_19;
      }

      photoStylesToolController = self->_photoStylesToolController;
      if (photoStylesToolController)
      {
LABEL_26:
        _defaultInitialToolController = photoStylesToolController;
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    switch(initialToolType)
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

  if (initialToolType <= 1)
  {
    if (initialToolType)
    {
      if (initialToolType != 1)
      {
        goto LABEL_28;
      }

LABEL_18:
      v6 = 1632;
      goto LABEL_19;
    }

LABEL_16:
    _defaultInitialToolController = [(PUPhotoEditViewController *)self _defaultInitialToolController];
LABEL_27:
    v5 = _defaultInitialToolController;
    goto LABEL_28;
  }

  if (initialToolType == 2)
  {
    v5 = self->_adjustmentsController;
    [(PUAdjustmentsToolController *)self->_adjustmentsController setInitialAction:1];
    goto LABEL_28;
  }

  if (initialToolType != 3)
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
  initialPendingEditsRequest = [(PUPhotoEditViewController *)self initialPendingEditsRequest];

  if (!initialPendingEditsRequest || (-[PUPhotoEditViewController initialPendingEditsRequest](self, "initialPendingEditsRequest"), v4 = objc_claimAutoreleasedReturnValue(), [v4 adjustments], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "lastObject"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "category"), v6, v5, v4, -[PUPhotoEditViewController _toolControllerForAdjustmentCategory:](self, "_toolControllerForAdjustmentCategory:", v7), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = [(PUPhotoEditViewController *)self _toolControllerForInitialToolType:[(PUPhotoEditViewController *)self initialToolType]];
  }

  [(PUPhotoEditViewController *)self switchToEditingTool:v8 animated:v8 == self->_cropController];
  photo = [(PUPhotoEditViewController *)self photo];
  if (([photo mediaSubtypes] & 0x10) != 0)
  {
    portraitToolController = self->_portraitToolController;
    if (portraitToolController)
    {
      majorVersion = [(PUPhotoEditPortraitToolController *)portraitToolController majorVersion];
      minorVersion = [(PUPhotoEditPortraitToolController *)self->_portraitToolController minorVersion];
      sDOFRenderingVersion = [(PUPhotoEditPortraitToolController *)self->_portraitToolController sDOFRenderingVersion];
      v14 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 134218496;
        *&v18[4] = majorVersion;
        *&v18[12] = 2048;
        *&v18[14] = minorVersion;
        *&v18[22] = 2048;
        v19 = sDOFRenderingVersion;
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

- (void)switchToEditingToolWithTag:(int64_t)tag
{
  v4 = [(PUPhotoEditViewController *)self _toolControllerForTag:tag];
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

- (void)switchToEditingTool:(id)tool animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  v42 = *MEMORY[0x1E69E9840];
  toolCopy = tool;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PUPhotoEditViewController_switchToEditingTool_animated_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7B80C88;
  v10 = handlerCopy;
  v40 = v10;
  v11 = _Block_copy(aBlock);
  v12 = toolCopy;
  compositionController = [(PUPhotoEditToolController *)v12 compositionController];
  if (compositionController && (v14 = compositionController, v15 = [(PUPhotoEditToolController *)v12 canBecomeActiveTool], v14, v15) && !self->_switchingToolsAnimated)
  {
    compositionController2 = v12;
    if (!v12)
    {
      adjustmentsController = self->_adjustmentsController;
      if (self->_currentTool == adjustmentsController)
      {
        compositionController2 = 0;
      }

      else
      {
        compositionController2 = [(PUPhotoEditToolController *)adjustmentsController compositionController];

        if (compositionController2)
        {
          compositionController2 = self->_adjustmentsController;
        }
      }
    }

    if ([(PUAdjustmentsToolController *)compositionController2 toolControllerTag]== 1006 && self->_currentTool == compositionController2)
    {
      v17 = self->_previousEditingTool;

      compositionController2 = v17;
    }

    if (compositionController2 == self->_currentTool)
    {
      [(PUAdjustmentsToolController *)compositionController2 reactivate];
      v11[2](v11);
    }

    else
    {
      v30 = animatedCopy;
      if (compositionController2 == self->_cleanupController)
      {
        v18 = MEMORY[0x1E69C3548];
        cleanUpTipID = [MEMORY[0x1E69C3548] cleanUpTipID];
        [v18 setTipActionPerformed:cleanUpTipID];
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

            [*(*(&v35 + 1) + 8 * i) setSelected:{-[PUAdjustmentsToolController toolControllerTag](compositionController2, "toolControllerTag") == objc_msgSend(*(*(&v35 + 1) + 8 * i), "tag")}];
          }

          v22 = [v20 countByEnumeratingWithState:&v35 objects:v41 count:16];
        }

        while (v22);
      }

      [v29[157] setSelectedToolTag:{-[PUAdjustmentsToolController toolControllerTag](compositionController2, "toolControllerTag")}];
      if ([v29[125] suppressesEditUpdates])
      {
        [MEMORY[0x1E6979518] begin];
        [MEMORY[0x1E6979518] setDisableActions:1];
        [v29 _updateGainMap];
        v25 = v29[129];
        _composition = [v29 _composition];
        [v25 setComposition:_composition];

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
        compositionController2 = compositionController2;
        v32 = compositionController2;
        v34 = v30;
        v33 = v10;
        dispatch_after(v27, MEMORY[0x1E69E96A0], block);
      }

      else
      {
        [v29 _transitionToEditingTool:compositionController2 animated:v30 completionHandler:v10];
      }
    }
  }

  else
  {
    v11[2](v11);
    compositionController2 = v12;
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
    _defaultMediaViewRenderPipelineFilters = [objc_opt_class() _defaultMediaViewRenderPipelineFilters];
  }

  else
  {
    _defaultMediaViewRenderPipelineFilters = [objc_opt_class() _defaultLivePhotoRenderPipelineFilters];
  }

  return _defaultMediaViewRenderPipelineFilters;
}

- (int64_t)_toolTypeForToolWithTag:(int64_t)tag
{
  if ((tag - 1002) > 5)
  {
    return 0;
  }

  else
  {
    return qword_1B3D0D320[tag - 1002];
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
  compositionController = [(PUPhotoEditViewController *)self compositionController];
  valuesCalculator = [(PUPhotoEditViewController *)self valuesCalculator];
  _allTools = [(PUPhotoEditViewController *)self _allTools];
  editSource = [(PUPhotoEditViewController *)self editSource];
  v7 = editSource;
  if (compositionController && valuesCalculator && _allTools && editSource)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = _allTools;
    v8 = _allTools;
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
          compositionController2 = [v13 compositionController];

          if (!compositionController2)
          {
            photo = [(PUPhotoEditViewController *)self photo];
            [v13 setupWithAsset:photo compositionController:compositionController editSource:v7 valuesCalculator:valuesCalculator];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    autoAdjustmentController = [(PUAdjustmentsToolController *)self->_adjustmentsController autoAdjustmentController];
    autoEnhanceController = self->_autoEnhanceController;
    self->_autoEnhanceController = autoAdjustmentController;

    _allTools = v18;
  }
}

- (void)_loadToolsIfNeeded:(BOOL)needed
{
  v75 = *MEMORY[0x1E69E9840];
  if (!self->_didLoadTools || needed)
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
            view = [v10 view];
            [view removeFromSuperview];

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
      filterInterval = [(PUPhotoEditViewController *)self filterInterval];
      v26 = PLPhotoEditGetLog();
      v27 = os_signpost_id_make_with_pointer(v26, self->_filtersController);
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __48__PUPhotoEditViewController__loadToolsIfNeeded___block_invoke;
      v63[3] = &unk_1E7B7D1F0;
      v28 = filterInterval;
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
      photo = [(PUPhotoEditViewController *)self photo];
      mediaType = [photo mediaType];

      v34 = mediaType == 1 && ![(PUPhotoEditViewController *)self isLoopingVideo]&& !self->_isEmbeddedEdit;
      [MEMORY[0x1E69BDDE0] updateAvailability];
      if (v34)
      {
        status = [MEMORY[0x1E69BDDE0] status];
        if (status)
        {
          status = [[PUCleanupToolController alloc] initWithNibName:0 bundle:0];
        }
      }

      else
      {
        status = 0;
      }

      v36 = self->_cleanupController;
      self->_cleanupController = status;

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
          aggregateSession = [(PUPhotoEditViewController *)self aggregateSession];
          [v53 setAggregateSession:aggregateSession];

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
    _composition = [(PUPhotoEditViewController *)self _composition];
    v5 = [v3 createGainMapForComposition:_composition];

    [(PUPhotoEditViewController *)self setGainMapImage:v5];

    CGImageRelease(v5);
  }
}

- (void)setGainMapValue:(float)value
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_gainMapValue = value;

    [(PUPhotoEditViewController *)self _updateLayerModulation];
  }
}

- (void)setGainMapImage:(CGImage *)image
{
  gainMapImage = self->_gainMapImage;
  if (gainMapImage != image)
  {
    CGImageRelease(gainMapImage);
    self->_gainMapImage = CGImageRetain(image);

    [(PUPhotoEditViewController *)self _updateLayerModulation];
  }
}

- (id)_newOutputForContentEditingInput:(id)input compositionController:(id)controller
{
  v24 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  inputCopy = input;
  photo = [(PUPhotoEditViewController *)self photo];
  v9 = [(PUPhotoEditViewController *)self _shouldRequestAsyncAdjustmentForAsset:photo compositionController:controllerCopy];

  v10 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    photo2 = [(PUPhotoEditViewController *)self photo];
    mediaType = [photo2 mediaType];
    photo3 = [(PUPhotoEditViewController *)self photo];
    v18 = 134218496;
    v19 = mediaType;
    v20 = 2048;
    mediaSubtypes = [photo3 mediaSubtypes];
    v22 = 1024;
    v23 = v9;
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEFAULT, "Creating ContentEditingOutput for assetType:%lu subType:%lu async:%d", &v18, 0x1Cu);
  }

  v14 = MEMORY[0x1E69C4300];
  photo4 = [(PUPhotoEditViewController *)self photo];
  v16 = [v14 contentEditingOutputForContentEditingInput:inputCopy compositionController:controllerCopy asset:photo4 async:v9 onlyChangingOriginalChoice:0];

  return v16;
}

- (BOOL)_shouldRequestAsyncAdjustmentForAsset:(id)asset compositionController:(id)controller
{
  v28 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  controllerCopy = controller;
  mediaType = [assetCopy mediaType];
  v8 = mediaType;
  if (mediaType == 2)
  {
    v9 = +[PUPhotoEditProtoSettings sharedInstance];
    useAsynchronousRenderingPhotos = [v9 disableAsynchronousRenderingVideos] ^ 1;
  }

  else
  {
    if (mediaType != 1)
    {
      useAsynchronousRenderingPhotos = 0;
      goto LABEL_7;
    }

    v9 = +[PUPhotoEditProtoSettings sharedInstance];
    useAsynchronousRenderingPhotos = [v9 useAsynchronousRenderingPhotos];
  }

LABEL_7:
  v11 = [MEMORY[0x1E69BE360] isKeyOnlyAdjustmentForCompositionController:controllerCopy key:*MEMORY[0x1E69BE058]];
  v12 = assetCopy;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mediaSubtypes = [v13 mediaSubtypes];
  v15 = mediaSubtypes;
  v16 = (mediaSubtypes >> 20) & 1;

  if (v11)
  {
    useAsynchronousRenderingPhotos &= v16;
  }

  v17 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19[0] = 67110144;
    v19[1] = useAsynchronousRenderingPhotos;
    v20 = 2048;
    v21 = v8;
    v22 = 2048;
    mediaSubtypes2 = [v12 mediaSubtypes];
    v24 = 1024;
    v25 = v11;
    v26 = 1024;
    v27 = (*&v15 & 0x100000uLL) >> 20;
    _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_DEFAULT, "_shouldRequestAsyncAdjustmentForAsset returns %d, assetType:%lu subType:%lu isOrientationOnlyAdjustment:%d isHDR:%d", v19, 0x28u);
  }

  return useAsynchronousRenderingPhotos;
}

- (void)setIsCachingVideo:(BOOL)video
{
  if (self->_isCachingVideo != video)
  {
    self->_isCachingVideo = video;
    [(PUPhotoEditViewController *)self updateProgressIndicatorAnimated:1];
  }
}

- (void)setRunningAutoCalculators:(BOOL)calculators
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_runningAutoCalculators != calculators)
  {
    self->_runningAutoCalculators = calculators;
    if (calculators)
    {
      [(PUPhotoEditViewController *)self _didStartAutoCalc];
    }

    else
    {
      [(PUPhotoEditViewController *)self _didEndAutoCalc];
      v4 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        autoCalcInterval = [(PUPhotoEditViewController *)self autoCalcInterval];
        [autoCalcInterval duration];
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
  livePhotoModel = [(PUPhotoEditViewController *)self livePhotoModel];
  v4 = livePhotoModel;
  if (livePhotoModel)
  {
    isVideoEnabled = [livePhotoModel isVideoEnabled];
  }

  else
  {
    photo = [(PUPhotoEditViewController *)self photo];
    if ([photo canPlayPhotoIris])
    {
      isVideoEnabled = 1;
    }

    else
    {
      photo2 = [(PUPhotoEditViewController *)self photo];
      if ([photo2 canPlayLoopingVideo])
      {
        isVideoEnabled = 1;
      }

      else
      {
        photo3 = [(PUPhotoEditViewController *)self photo];
        isVideoEnabled = [photo3 playbackStyle] == 4;
      }
    }
  }

  return isVideoEnabled;
}

- (BOOL)_hasUnsavedChanges
{
  compositionController = [(PUPhotoEditViewController *)self compositionController];
  uneditedComposition = [(PUPhotoEditViewController *)self uneditedComposition];
  if (!compositionController)
  {
    livePhotoModel = [(PUPhotoEditViewController *)self livePhotoModel];
    if (livePhotoModel)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  hasUnsavedChanges = 1;
  v6 = [compositionController isEqual:uneditedComposition visualChangesOnly:1];
  livePhotoModel2 = [(PUPhotoEditViewController *)self livePhotoModel];
  livePhotoModel = livePhotoModel2;
  if (v6)
  {
    if (livePhotoModel2)
    {
LABEL_4:
      hasUnsavedChanges = [livePhotoModel hasUnsavedChanges];
      goto LABEL_7;
    }

LABEL_6:
    hasUnsavedChanges = 0;
  }

LABEL_7:

  return hasUnsavedChanges;
}

- (void)_requestLivePhotoAssetWithFilters:(id)filters completion:(id)completion
{
  filtersCopy = filters;
  completionCopy = completion;
  livePhotoModel = [(PUPhotoEditViewController *)self livePhotoModel];
  isVideoEnabled = [livePhotoModel isVideoEnabled];

  composition = [(NUMediaView *)self->_mediaView composition];
  v11 = composition;
  if (isVideoEnabled && composition)
  {
    v12 = [objc_alloc(MEMORY[0x1E69B3B48]) initWithComposition:composition];
    [v12 setName:@"PUPhotoEditViewController-LivePhoto"];
    [v12 setPipelineFilters:filtersCopy];
    [v12 setResponseQueue:MEMORY[0x1E69E96A0]];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __74__PUPhotoEditViewController__requestLivePhotoAssetWithFilters_completion___block_invoke_2;
    v14[3] = &unk_1E7B805C0;
    v15 = completionCopy;
    v13 = completionCopy;
    [v12 submit:v14];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__PUPhotoEditViewController__requestLivePhotoAssetWithFilters_completion___block_invoke;
    block[3] = &unk_1E7B80C88;
    v17 = completionCopy;
    v12 = completionCopy;
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

- (void)_restoreSnapshot:(id)snapshot withCompletionHandler:(id)handler
{
  snapshotCopy = snapshot;
  handlerCopy = handler;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __68__PUPhotoEditViewController__restoreSnapshot_withCompletionHandler___block_invoke;
  v20 = &unk_1E7B7B248;
  selfCopy = self;
  v8 = handlerCopy;
  v22 = v8;
  v9 = _Block_copy(&v17);
  adjustmentData = [snapshotCopy adjustmentData];

  if (adjustmentData)
  {
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    photoLibraryURL = [px_deprecated_appPhotoLibrary photoLibraryURL];

    photo2 = [objc_alloc(MEMORY[0x1E69787A0]) initWithPhotoEditSnapshot:snapshotCopy appropriateForURL:photoLibraryURL];
    mediaDestination = [(PUPhotoEditViewController *)self mediaDestination];
    photo = [(PUPhotoEditViewController *)self photo];
    livePhotoModel = [(PUPhotoEditViewController *)self livePhotoModel];
    [mediaDestination saveEditsForAsset:photo usingContentEditingOutput:photo2 livePhotoState:objc_msgSend(livePhotoModel completionHandler:{"editingVisibility"), v9}];
  }

  else
  {
    photoLibraryURL = [(PUPhotoEditViewController *)self mediaDestination];
    photo2 = [(PUPhotoEditViewController *)self photo];
    [photoLibraryURL revertEditsForAsset:photo2 completionHandler:v9];
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

- (void)_captureSnapshotOfBasePhotoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:7515 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v5 = MEMORY[0x1E69BDEF0];
  uneditedComposition = [(PUPhotoEditViewController *)self uneditedComposition];
  v7 = [v5 newCompositionControllerWithComposition:uneditedComposition];

  workImageVersion = [(PUPhotoEditViewController *)self workImageVersion];
  if ([(PUPhotoEditViewController *)self _canCompositionControllerBeReverted:v7])
  {
    v9 = workImageVersion == 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    photo = objc_alloc_init(PUPhotoEditSnapshot);
    handlerCopy[2](handlerCopy, photo);
  }

  else
  {
    photo = [(PUPhotoEditViewController *)self photo];
    mediaProvider = [(PUPhotoEditViewController *)self mediaProvider];
    [PUPhotoEditSnapshot captureSnapshotForAsset:photo mediaProvider:mediaProvider completion:handlerCopy];
  }
}

- (void)_updateLivePhotoModel
{
  photo = [(PUPhotoEditViewController *)self photo];
  compositionController = [(PUPhotoEditViewController *)self compositionController];
  if (compositionController && photo && [photo isLivePhoto])
  {
    v4 = [objc_alloc(MEMORY[0x1E69C4298]) initWithAsset:photo compositionController:compositionController];
    [(PUPhotoEditViewController *)self setLivePhotoModel:v4];
    [v4 setChangeDelegate:self];
    [(PUPhotoEditViewController *)self _updateTogglePreviewGestureRecognizer];
  }

  [(PUPhotoEditMediaToolController *)self->_mediaToolController photoEditLivePhotoModelUpdated];
}

- (void)_resetModelAndBaseImagesToWorkImageVersion:(int64_t)version
{
  [(PUPhotoEditViewController *)self setWorkImageVersion:version];
  v4 = MEMORY[0x1E69BDEF0];
  newComposition = [MEMORY[0x1E69BDEF0] newComposition];
  v13 = [v4 newCompositionControllerWithComposition:newComposition];

  compositionController = [(PUPhotoEditViewController *)self compositionController];
  [v13 setImageOrientation:{objc_msgSend(compositionController, "imageOrientation")}];

  editSource = [(PUPhotoEditViewController *)self editSource];
  source = [editSource source];
  editSource2 = [(PUPhotoEditViewController *)self editSource];
  [v13 setSource:source mediaType:{objc_msgSend(editSource2, "mediaType")}];

  compositionController2 = [(PUPhotoEditViewController *)self compositionController];
  [compositionController2 applyChangesFromCompositionController:v13];

  compositionController3 = [(PUPhotoEditViewController *)self compositionController];
  composition = [compositionController3 composition];
  [(PUPhotoEditViewController *)self setUneditedComposition:composition];

  [(PUPhotoEditViewController *)self setEditSource:0];
  [(PUPhotoEditViewController *)self setMainRenderer:0];
  [(PUPhotoEditViewController *)self _updateModelDependentControlsAnimated:0];
  [(PUPhotoEditViewController *)self _updateValuesCalculator];
  [(PUPhotoEditViewController *)self _updateLivePhotoModel];
}

- (id)_orientedCIImageFromUIImage:(id)image
{
  v12[1] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  photo = [(PUPhotoEditViewController *)self photo];
  imageProperties = [photo imageProperties];

  if (imageProperties)
  {
    v11 = *MEMORY[0x1E695F9E0];
    v12[0] = imageProperties;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E695F658] imageWithCGImage:objc_msgSend(imageCopy options:{"CGImage"), v7}];
  [imageCopy imageOrientation];

  v9 = [v8 imageByApplyingOrientation:PLExifOrientationFromImageOrientation()];

  return v9;
}

- (void)setOriginalStillImageTime:(id *)time
{
  v20 = *MEMORY[0x1E69E9840];
  p_originalStillImageTime = &self->_originalStillImageTime;
  time1 = *time;
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
          time1 = *time;
          [v11 setOriginalStillImageTime:{&time1, v13}];
          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
      }

      while (v8);
    }

    v12 = *&time->var0;
    p_originalStillImageTime->epoch = time->var3;
    *&p_originalStillImageTime->value = v12;
  }
}

- (void)_setOriginalURL:(id)l originalEditSource:(id)source
{
  lCopy = l;
  sourceCopy = source;
  if (!self->_originalImageEditSource)
  {
    objc_storeStrong(&self->_originalImageEditSource, source);
    if ([sourceCopy mediaType] != 2)
    {
      PLGetOrientationAndUntransformedSizeFromImageURL();
    }

    self->_originalImageExifOrientation = PLOrientationIsValid() == 0;
    [(PUPhotoEditViewController *)self _updatePreviewingOriginal];
  }
}

- (void)setUneditedComposition:(id)composition
{
  if (self->_uneditedComposition != composition)
  {
    v4 = [composition copy];
    uneditedComposition = self->_uneditedComposition;
    self->_uneditedComposition = v4;

    [(PUPhotoEditViewController *)self _updateModelDependentControlsAnimated:0];
  }
}

- (void)setCompositionController:(id)controller
{
  controllerCopy = controller;
  if (self->_compositionController != controllerCopy)
  {
    v11 = controllerCopy;
    objc_storeStrong(&self->_compositionController, controller);
    editSource = [(PUPhotoEditViewController *)self editSource];

    if (editSource)
    {
      editSource2 = [(PUPhotoEditViewController *)self editSource];
      source = [editSource2 source];
      editSource3 = [(PUPhotoEditViewController *)self editSource];
      -[PICompositionController setSource:mediaType:](v11, "setSource:mediaType:", source, [editSource3 mediaType]);
    }

    [(PUPhotoEditViewController *)self _updateMainActionButtonAnimated:1];
    [(PUPhotoEditViewController *)self _updateShowOriginalButtonAnimated:1];
    [(PICompositionController *)v11 setChangeDelegate:self];
    [(PUPhotoEditViewController *)self _updateModelDependentControlsAnimated:0];
    [(PUPhotoEditViewController *)self _updateValuesCalculator];
    valuesCalculator = [(PUPhotoEditViewController *)self valuesCalculator];
    [valuesCalculator precomputeImageValues];

    [(PUPhotoEditViewController *)self _setupToolsIfNeeded];
    [(PUPhotoEditViewController *)self _updateKeyCommands];
    controllerCopy = v11;
  }
}

- (void)_updateValuesCalculator
{
  editSource = [(PUPhotoEditViewController *)self editSource];
  if (editSource)
  {
    compositionController = [(PUPhotoEditViewController *)self compositionController];

    if (compositionController)
    {
      valuesCalculator = [(PUPhotoEditViewController *)self valuesCalculator];
      if (!valuesCalculator)
      {
        valuesCalculator = objc_alloc_init(MEMORY[0x1E69C4330]);
        [valuesCalculator setDelegate:self];
        v5 = +[PUPhotoEditProtoSettings sharedInstance];
        [valuesCalculator setSettingsDelegate:v5];

        [(PUPhotoEditViewController *)self setValuesCalculator:valuesCalculator];
      }

      [valuesCalculator setEditSource:editSource];
      compositionController2 = [(PUPhotoEditViewController *)self compositionController];
      [valuesCalculator setCompositionController:compositionController2];

      [(PUPhotoEditViewController *)self _setupToolsIfNeeded];
      [(PUPhotoEditViewController *)self _updateKeyCommands];
    }
  }
}

- (void)livePhotoModel:(id)model videoEnabledDidChange:(BOOL)change
{
  v22 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  [(PUPhotoEditViewController *)self _updateTogglePreviewGestureRecognizer];
  [(PUPhotoEditViewController *)self _updateSwipeDownGestureRecognizer];
  [(PUPhotoEditViewController *)self _updatePluginSession];
  self->_toolbarButtonsValid = 0;
  [(PUPhotoEditViewController *)self _updateToolbarsAnimated:1];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  _allTools = [(PUPhotoEditViewController *)self _allTools];
  v7 = [_allTools countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(_allTools);
        }

        [*(*(&v17 + 1) + 8 * v10++) baseMediaInvalidated];
      }

      while (v8 != v10);
      v8 = [_allTools countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  -[NUMediaView setVideoEnabled:animated:](self->_mediaView, "setVideoEnabled:animated:", [modelCopy isVideoEnabled], 1);
  if (![(PUPhotoEditToolController *)self->_currentEditingTool suppressesEditUpdates])
  {
    editSource = [(PUPhotoEditViewController *)self editSource];

    if (editSource)
    {
      mediaView = self->_mediaView;
      v13 = MEMORY[0x1E69BE360];
      compositionController = [(PUPhotoEditViewController *)self compositionController];
      editSource2 = [(PUPhotoEditViewController *)self editSource];
      v16 = [v13 validatedCompositionCopyFor:compositionController mediaType:{objc_msgSend(editSource2, "mediaType")}];
      [(NUMediaView *)mediaView setComposition:v16];

      [(PUPhotoEditViewController *)self _updateRenderedPreview];
    }
  }
}

- (void)mediaDestination:(id)destination didCompleteSaveRequest:(id)request
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] endBackgroundTask:{-[PUPhotoEditViewController saveBackgroundTaskIdentifier](self, "saveBackgroundTaskIdentifier")}];
}

- (void)mediaDestination:(id)destination willBeginSaveRequest:(id)request
{
  requestCopy = request;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__PUPhotoEditViewController_mediaDestination_willBeginSaveRequest___block_invoke;
  v8[3] = &unk_1E7B80DD0;
  v9 = requestCopy;
  v7 = requestCopy;
  -[PUPhotoEditViewController setSaveBackgroundTaskIdentifier:](self, "setSaveBackgroundTaskIdentifier:", [mEMORY[0x1E69DC668] beginBackgroundTaskWithName:@"PhotoKit Edits Save" expirationHandler:v8]);
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

- (void)_handleDidLoadOriginalWithResult:(id)result
{
  resultCopy = result;
  imageURL = [resultCopy imageURL];
  if (imageURL || ([resultCopy videoComplementURL], (imageURL = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = imageURL;
    editSource = [resultCopy editSource];
    [(PUPhotoEditViewController *)self _setOriginalURL:v5 originalEditSource:editSource];
  }

  [(PUPhotoEditViewController *)self updateProgressIndicatorAnimated:1];
}

- (BOOL)_isLivePhotoEffect
{
  photo = [(PUPhotoEditViewController *)self photo];
  isLivePhoto = [photo isLivePhoto];

  if (isLivePhoto)
  {
    compositionController = [(PUPhotoEditViewController *)self compositionController];
    autoLoopAdjustmentController = [compositionController autoLoopAdjustmentController];
    if ([autoLoopAdjustmentController enabled])
    {
      flavor = [autoLoopAdjustmentController flavor];
      v8 = PIAutoLoopFlavorFromString();

      LOBYTE(isLivePhoto) = v8 == 2 || (v8 & 0xFFFFFFFFFFFFFFFDLL) == 1;
    }

    else
    {
      LOBYTE(isLivePhoto) = 0;
    }
  }

  return isLivePhoto;
}

- (BOOL)_isLoopingVideo:(BOOL)video
{
  videoCopy = video;
  compositionController = [(PUPhotoEditViewController *)self compositionController];
  photo = [(PUPhotoEditViewController *)self photo];
  mediaType = [photo mediaType];

  if (mediaType == 2 || !compositionController)
  {
    photo2 = [(PUPhotoEditViewController *)self photo];
    canPlayLoopingVideo = [photo2 canPlayLoopingVideo];
  }

  else
  {
    photo2 = [compositionController autoLoopAdjustmentController];
    if (([photo2 enabled] & 1) != 0 || !videoCopy)
    {
      flavor = [photo2 flavor];
      v11 = PIAutoLoopFlavorFromString();

      if (v11)
      {
        v12 = v11 == 3;
      }

      else
      {
        v12 = 1;
      }

      canPlayLoopingVideo = !v12;
    }

    else
    {
      canPlayLoopingVideo = 0;
    }
  }

  return canPlayLoopingVideo;
}

- (void)initialCinematographyLoadComplete
{
  uneditedComposition = [(PUPhotoEditViewController *)self uneditedComposition];

  if (uneditedComposition)
  {
    v4 = objc_alloc(MEMORY[0x1E69BDDE8]);
    uneditedComposition2 = [(PUPhotoEditViewController *)self uneditedComposition];
    v6 = [v4 initWithComposition:uneditedComposition2];

    adjustmentConstants = [v6 adjustmentConstants];
    pIPortraitVideoAdjustmentKey = [adjustmentConstants PIPortraitVideoAdjustmentKey];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__PUPhotoEditViewController_initialCinematographyLoadComplete__block_invoke;
    v10[3] = &unk_1E7B7B450;
    v10[4] = self;
    [v6 modifyAdjustmentWithKey:pIPortraitVideoAdjustmentKey modificationBlock:v10];

    composition = [v6 composition];
    [(PUPhotoEditViewController *)self setUneditedComposition:composition];

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
  editSourceContentEditingInput = [(PUPhotoEditViewController *)self editSourceContentEditingInput];
  if ([editSourceContentEditingInput baseVersion])
  {

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  workImageVersion = [(PUPhotoEditViewController *)self workImageVersion];

  if (workImageVersion != 1)
  {
    goto LABEL_8;
  }

  if (!self->_playbackRateOptions)
  {
    editSource = [(PUPhotoEditViewController *)self editSource];

    if (editSource)
    {
      v6 = MEMORY[0x1E69C42D8];
      editSource2 = [(PUPhotoEditViewController *)self editSource];
      v8 = [v6 playbackRateOptionsForEditSource:editSource2];
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
  editSource = [(PUPhotoEditViewController *)self editSource];
  videoURL = [editSource videoURL];
  v5 = [v2 assetWithURL:videoURL];

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
      editSource = [(PUPhotoEditViewController *)self editSource];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v6 = MEMORY[0x1E6987E28];
        editSource2 = [(PUPhotoEditViewController *)self editSource];
        videoURL = [editSource2 videoURL];
        v9 = [v6 assetWithURL:videoURL];

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
  editSourceContentEditingInput = [(PUPhotoEditViewController *)self editSourceContentEditingInput];

  if (editSourceContentEditingInput)
  {
    if (!self->_hasCheckedPortraitVideo)
    {
      self->_isAssetPortraitVideo = 0;
      if (!self->_isEmbeddedEdit)
      {
        editSource = [(PUPhotoEditViewController *)self editSource];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v6 = MEMORY[0x1E6987E28];
          editSource2 = [(PUPhotoEditViewController *)self editSource];
          videoURL = [editSource2 videoURL];
          v9 = [v6 assetWithURL:videoURL];

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
  editSource = [(PUPhotoEditViewController *)self editSource];

  if (!editSource)
  {
    return 0;
  }

  playbackRateOptions = [(PUPhotoEditViewController *)self playbackRateOptions];
  v5 = [playbackRateOptions count] > 1;

  return v5;
}

- (BOOL)_enableSpatialMediaEditing
{
  v3 = +[PUPhotoEditProtoSettings sharedInstance];
  if ([v3 enableSpatialMediaEditing])
  {
    photo = [(PUPhotoEditViewController *)self photo];
    v5 = [photo mediaType] != 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isSpatialMedia
{
  photo = [(PUPhotoEditViewController *)self photo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    photo2 = [(PUPhotoEditViewController *)self photo];
  }

  else
  {
    photo2 = 0;
  }

  photo3 = [(PUPhotoEditViewController *)self photo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    photo4 = [(PUPhotoEditViewController *)self photo];
  }

  else
  {
    photo4 = 0;
  }

  if ([photo2 isSpatialMedia])
  {
    isSpatialMedia = 1;
  }

  else
  {
    isSpatialMedia = [photo4 isSpatialMedia];
  }

  return isSpatialMedia;
}

- (BOOL)isStandardVideo
{
  photo = [(PUPhotoEditViewController *)self photo];
  v4 = [photo mediaType] == 2;

  photo2 = [(PUPhotoEditViewController *)self photo];
  LOBYTE(photo) = [photo2 canPlayLoopingVideo];

  return v4 & (photo ^ 1);
}

- (void)_updateMediaViewPlaybackStyle
{
  isLoopingVideo = [(PUPhotoEditViewController *)self isLoopingVideo];
  v4 = isLoopingVideo || [(PUPhotoEditViewController *)self isStandardVideo];
  [(NUMediaView *)self->_mediaView setVideoEnabled:v4 animated:isLoopingVideo];
  [(NUMediaView *)self->_mediaView setLoopsVideoPlayback:isLoopingVideo];
  mediaView = self->_mediaView;
  _composition = [(PUPhotoEditViewController *)self _composition];
  [(NUMediaView *)mediaView setComposition:_composition];

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
  valuesCalculator = [(PUPhotoEditViewController *)self valuesCalculator];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __64__PUPhotoEditViewController__continueLoadingWithAutocalculators__block_invoke;
  v43[3] = &unk_1E7B7F820;
  objc_copyWeak(&v45, &buf);
  v43[4] = self;
  v7 = v5;
  v44 = v7;
  [valuesCalculator precomputeImageValuesWithCompletion:v43];

  v8 = [objc_alloc(MEMORY[0x1E69B3B28]) initWithName:@"PUPhotoEditViewController-raw-property"];
  dispatch_group_enter(v7);
  _composition = [(PUPhotoEditViewController *)self _composition];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __64__PUPhotoEditViewController__continueLoadingWithAutocalculators__block_invoke_890;
  v40[3] = &unk_1E7B7B428;
  objc_copyWeak(v42, &buf);
  v42[1] = a2;
  v40[4] = self;
  v10 = v7;
  v41 = v10;
  [v8 submitPropertiesRequestForComposition:_composition completion:v40];

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
  editSource = [(PUPhotoEditViewController *)self editSource];
  if ([editSource mediaType] != 3)
  {
    photo = [(PUPhotoEditViewController *)self photo];
    isLivePhoto = [photo isLivePhoto];

    if (!isLivePhoto)
    {
      goto LABEL_7;
    }

    editSource = [(PUPhotoEditViewController *)self livePhotoModel];
    [editSource notifyCannotSupportVideoEdits];
  }

LABEL_7:
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  _allTools = [(PUPhotoEditViewController *)self _allTools];
  v15 = [_allTools countByEnumeratingWithState:&v34 objects:v48 count:16];
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
          objc_enumerationMutation(_allTools);
        }

        [*(*(&v34 + 1) + 8 * v17++) basePhotoInvalidated];
      }

      while (v15 != v17);
      v15 = [_allTools countByEnumeratingWithState:&v34 objects:v48 count:16];
    }

    while (v15);
  }

  view = [(PUPhotoEditViewController *)self view];
  [view setNeedsLayout];

  [(PUPhotoEditViewController *)self _updateRenderedPreview];
  [(PUPhotoEditViewController *)self _updateToolbarsAnimated:0];
  [(PUPhotoEditViewController *)self _updateMutedState];
  [(PUPhotoEditViewController *)self _updateMediaViewPlaybackStyle];
  [(PUPhotoEditViewController *)self _reloadToolbarButtonsIfNeeded];
  [(PUPhotoEditViewController *)self updateProgressIndicatorAnimated:1];
  photo2 = [(PUPhotoEditViewController *)self photo];
  if (![photo2 isOriginalRaw])
  {
    goto LABEL_21;
  }

  photo3 = [(PUPhotoEditViewController *)self photo];
  if ([photo3 originalResourceChoice] != 3)
  {

LABEL_21:
    goto LABEL_22;
  }

  photo4 = [(PUPhotoEditViewController *)self photo];
  isAdjusted = [photo4 isAdjusted];

  if (isAdjusted)
  {
    if (+[PUPhotoEditSupport currentDeviceShouldAllowRawDecode])
    {
      v23 = MEMORY[0x1E69C0708];
      imageProperties = [(PUPhotoEditViewController *)self imageProperties];
      metadata = [imageProperties metadata];
      LODWORD(v23) = [v23 canLoadAssetAsRawForInteractiveEditingWithImageProperties:metadata];

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
    compositionController = [(PUPhotoEditViewController *)self compositionController];
    composition = [compositionController composition];
    v29 = [v26 initWithComposition:composition];

    [v29 setAuxiliaryImageType:7];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __64__PUPhotoEditViewController__continueLoadingWithAutocalculators__block_invoke_2_898;
    v32[3] = &unk_1E7B7DC10;
    objc_copyWeak(&v33, &buf);
    [v29 submit:v32];
    sourceFilterNoOrientation = [MEMORY[0x1E69BDEF8] sourceFilterNoOrientation];
    v47 = sourceFilterNoOrientation;
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

- (void)_handleDidLoadAdjustmentsAndBaseImageWithResult:(id)result
{
  resultCopy = result;
  retrievedVersion = [resultCopy retrievedVersion];
  compositionController = [resultCopy compositionController];
  v7 = compositionController;
  if (compositionController)
  {
    compositionController2 = compositionController;
  }

  else
  {
    compositionController2 = [(PUPhotoEditViewController *)self compositionController];
  }

  v9 = compositionController2;

  composition = [v9 composition];
  quickCropContext = [(PUPhotoEditViewController *)self quickCropContext];
  if (quickCropContext)
  {
    composition2 = [v9 composition];
    [quickCropContext applyCropRectToCompositionController:v9];
    undoManager = [(PUPhotoEditViewController *)self undoManager];
    v14 = undoManager;
    if (undoManager && ([undoManager isUndoing] & 1) == 0 && (objc_msgSend(v14, "isRedoing") & 1) == 0)
    {
      v15 = [objc_alloc(MEMORY[0x1E69C34C8]) initWithCompositionController:v9 sourceComposition:composition2];
      v16 = PULocalizedString(@"PHOTOEDIT_CROP_GENERIC_ACTION_TITLE");
      [v15 setLocalizedActionName:v16];

      [v15 registerWithUndoManager:v14];
    }
  }

  if ([resultCopy penultimateAvailability])
  {
    isPenultimateAvailable = [resultCopy penultimateAvailability] == 1;
  }

  else
  {
    isPenultimateAvailable = [(PUPhotoEditViewController *)self isPenultimateAvailable];
  }

  editSource = [resultCopy editSource];
  v19 = editSource;
  if (self->_pluginSessionIdentifier)
  {
    [editSource setIdentifier:?];
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
  contentEditingInput = [resultCopy contentEditingInput];
  [(PUPhotoEditViewController *)self setEditSourceContentEditingInput:contentEditingInput];

  -[PUPhotoEditViewController setHasLoadedRaw:](self, "setHasLoadedRaw:", [resultCopy assetLoadingAsRaw]);
  [(PUPhotoEditViewController *)self setWorkImageVersion:retrievedVersion];
  [(PUPhotoEditViewController *)self setPenultimateAvailable:isPenultimateAvailable];
  [(PUPhotoEditViewController *)self setCompositionController:v9];
  originalComposition = [resultCopy originalComposition];
  [(PUPhotoEditViewController *)self setOriginalComposition:originalComposition];

  [(PUPhotoEditViewController *)self setUneditedComposition:composition];
  [(PUPhotoEditViewController *)self _updateLivePhotoModel];
  assetLoadingAsRaw = [resultCopy assetLoadingAsRaw];
  enterEditEventBuilder = [(PUPhotoEditViewController *)self enterEditEventBuilder];
  [enterEditEventBuilder setEditingWithRaw:assetLoadingAsRaw];

  assetLoadingAsRaw2 = [resultCopy assetLoadingAsRaw];
  exitEditEventBuilder = [(PUPhotoEditViewController *)self exitEditEventBuilder];
  [exitEditEventBuilder setEditingWithRaw:assetLoadingAsRaw2];

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

  if (resultCopy)
  {
    [resultCopy videoComplementOriginalStillImageTime];
  }

  else
  {
    *buf = 0;
    v40 = 0;
    v41 = 0;
  }

  [(PUPhotoEditViewController *)self setOriginalStillImageTime:buf];
  v30 = [objc_alloc(MEMORY[0x1E69BE658]) initWithEditSource:v19];
  source = [v19 source];
  [v9 setSource:source mediaType:{objc_msgSend(v19, "mediaType")}];

  [v30 setCompositionController:v9];
  [(PUPhotoEditViewController *)self setMainRenderer:v30];
  imageURL = [resultCopy imageURL];
  v33 = imageURL;
  if (imageURL)
  {
    videoComplementURL = imageURL;
  }

  else
  {
    videoComplementURL = [resultCopy videoComplementURL];
  }

  v35 = videoComplementURL;

  if (retrievedVersion == 1 && v35)
  {
    editSource2 = [resultCopy editSource];
    [(PUPhotoEditViewController *)self _setOriginalURL:v35 originalEditSource:editSource2];
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

- (void)resourceLoader:(id)loader request:(id)request downloadProgress:(double)progress
{
  [(PUPhotoEditViewController *)self updateProgressIndicatorAnimated:1, request];
  progressIndicatorView = self->_progressIndicatorView;

  [(PUProgressIndicatorView *)progressIndicatorView setCurrentProgress:progress];
}

- (void)resourceLoader:(id)loader request:(id)request mediaLoadDidFailWithError:(id)error
{
  loaderCopy = loader;
  requestCopy = request;
  errorCopy = error;
  [(PUPhotoEditViewController *)self _didEndResourceLoading];
  [(PUPhotoEditViewController *)self _didEndEnterEdit];
  [(PUPhotoEditViewController *)self _handleResourceLoadChange];
  [(PUPhotoEditDiagnosticsManager *)self->_diagnosticsManager endMonitoring];
  diagnosticsManager = self->_diagnosticsManager;
  self->_diagnosticsManager = 0;

  initialPendingEditsRequest = [(PUPhotoEditViewController *)self initialPendingEditsRequest];
  [initialPendingEditsRequest finishedWithSuccess:0 error:errorCopy];

  [(PUPhotoEditViewController *)self _uninstallInEditRevertTransitionSnapshotAnimated:0];
  if ([errorCopy code] != 3072)
  {
    v13 = [PUEditingErrorPresentationController alloc];
    photo = [(PUPhotoEditViewController *)self photo];
    v15 = [(PUEditingErrorPresentationController *)v13 initWithError:errorCopy forAsset:photo];

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

- (void)resourceLoader:(id)loader request:(id)request didCompleteWithResult:(id)result
{
  loaderCopy = loader;
  requestCopy = request;
  resultCopy = result;
  objc_initWeak(&location, self);
  photo = [(PUPhotoEditViewController *)self photo];
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
  v15 = resultCopy;
  v20 = v15;
  v16 = requestCopy;
  v21 = v16;
  objc_copyWeak(&v22, &location);
  [v14 checkIsSupportedAndPresentAlertForAsset:photo type:0 alertControllerPresenter:v23 completionHandler:v19];
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

- (void)photoEditResourceLoadRequestResourcesAvailabilityChanged:(id)changed previousAvailability:(int64_t)availability currentAvailability:(int64_t)currentAvailability
{
  enterEditTimeInterval = [(PUPhotoEditViewController *)self enterEditTimeInterval];
  state = [enterEditTimeInterval state];

  if (state != 1)
  {
    return;
  }

  if (availability != 1 && currentAvailability == 1)
  {
    resourceCheckingInterval = [(PUPhotoEditViewController *)self resourceCheckingInterval];
    [resourceCheckingInterval beginInterval];

LABEL_5:
    if (availability != 2 || currentAvailability == 2)
    {
      if (availability == 3 || currentAvailability != 3)
      {
        return;
      }

      resourceProcessingInterval = [(PUPhotoEditViewController *)self resourceProcessingInterval];
      [(PUPhotoEditDiagnosticsManager *)resourceProcessingInterval beginInterval];
    }

    else
    {
      resourceProcessingInterval = [(PUPhotoEditViewController *)self resourceDownloadInterval];
      [(PUPhotoEditDiagnosticsManager *)resourceProcessingInterval endInterval];
    }

    diagnosticsManager = resourceProcessingInterval;
    goto LABEL_18;
  }

  if (availability == 1 && currentAvailability != 1)
  {
    resourceCheckingInterval2 = [(PUPhotoEditViewController *)self resourceCheckingInterval];
    [resourceCheckingInterval2 endInterval];
  }

  if (availability == 2 || currentAvailability != 2)
  {
    goto LABEL_5;
  }

  resourceDownloadInterval = [(PUPhotoEditViewController *)self resourceDownloadInterval];
  [resourceDownloadInterval beginInterval];

  [(PUPhotoEditDiagnosticsManager *)self->_diagnosticsManager endMonitoring];
  diagnosticsManager = self->_diagnosticsManager;
  self->_diagnosticsManager = 0;
LABEL_18:
}

- (void)_loadOriginalImageIfNeeded
{
  resourceLoader = [(PUPhotoEditViewController *)self resourceLoader];
  view = [(PUPhotoEditViewController *)self view];
  window = [view window];
  screen = [window screen];

  originalImageEditSource = [(PUPhotoEditViewController *)self originalImageEditSource];
  if (originalImageEditSource || !resourceLoader)
  {
    goto LABEL_6;
  }

  if ([resourceLoader resourcesAvailability] == 1 || objc_msgSend(resourceLoader, "resourcesAvailability") == 2)
  {
    originalImageEditSource = 0;
LABEL_6:

    goto LABEL_7;
  }

  if (screen)
  {
    [screen pu_workImageSize];
    v8 = v7;
    v10 = v9;
    originalImageEditSource = objc_alloc_init(MEMORY[0x1E69C42E0]);
    [originalImageEditSource setVersion:1];
    [originalImageEditSource setRequireLocalResources:1];
    [originalImageEditSource setDelegate:self];
    [originalImageEditSource setTargetSize:{v8, v10}];
    [resourceLoader enqueueRequest:originalImageEditSource];
    [(PUPhotoEditViewController *)self _didStartResourceLoading];
    goto LABEL_6;
  }

LABEL_7:
}

- (void)_loadPhotoEditResourcesIfNeeded
{
  v43 = *MEMORY[0x1E69E9840];
  resourceLoader = [(PUPhotoEditViewController *)self resourceLoader];
  view = [(PUPhotoEditViewController *)self view];
  window = [view window];
  screen = [window screen];

  editSource = [(PUPhotoEditViewController *)self editSource];
  if (editSource || [resourceLoader resourcesAvailability] == 1 || objc_msgSend(resourceLoader, "resourcesAvailability") == 2)
  {
LABEL_20:

    goto LABEL_21;
  }

  if (screen)
  {
    editSource = [(PUPhotoEditViewController *)self photo];
    if (!editSource)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:6748 description:@"Cannot have a nil asset"];
    }

    v9 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEFAULT, "PERF - Beginning load of asset for edit", buf, 2u);
    }

    if (!resourceLoader || ([resourceLoader asset], v10 = objc_claimAutoreleasedReturnValue(), v10, v10 != editSource))
    {
      v11 = objc_alloc(MEMORY[0x1E69C42F0]);
      v12 = [v11 initWithAsset:editSource loadingQueue:MEMORY[0x1E69E96A0]];

      v13 = +[PUPhotoEditProtoSettings sharedInstance];
      [v12 setSkipDisplaySizeImage:{objc_msgSend(v13, "skipPHContentEditingInputDisplaySizeImage")}];

      v14 = +[PUPhotoEditProtoSettings sharedInstance];
      [v12 setSimulateEditEntryError:{objc_msgSend(v14, "simulateEditEntryError")}];

      v15 = +[PUPhotoEditProtoSettings sharedInstance];
      [v12 setSimulateEditEntryError:{objc_msgSend(v15, "simulatedEditingEntryErrorType") != 0}];

      [(PUPhotoEditViewController *)self setResourceLoader:v12];
      resourceLoader = v12;
    }

    v16 = [MEMORY[0x1E6978630] descriptionForMediaType:{objc_msgSend(editSource, "mediaType")}];
    v17 = [MEMORY[0x1E6978630] descriptionForMediaSubtypes:{objc_msgSend(editSource, "mediaSubtypes")}];
    v18 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [editSource uuid];
      *buf = 138543874;
      v38 = uuid;
      v39 = 2114;
      v40 = v16;
      v41 = 2114;
      v42 = v17;
      _os_log_impl(&dword_1B36F3000, v18, OS_LOG_TYPE_DEFAULT, "Asset [%{public}@] of type: %{public}@ and subtype: %{public}@ loaded for editing.", buf, 0x20u);
    }

    v36 = v17;

    compositionController = [(PUPhotoEditViewController *)self compositionController];

    [screen pu_workImageSize];
    v22 = v21;
    v24 = v23;
    workImageVersion = [(PUPhotoEditViewController *)self workImageVersion];
    photo = [(PUPhotoEditViewController *)self photo];
    objc_opt_class();
    v27 = v16;
    if (objc_opt_isKindOfClass())
    {
      photo2 = [(PUPhotoEditViewController *)self photo];
    }

    else
    {
      photo2 = 0;
    }

    v29 = compositionController == 0;

    [photo2 fetchPropertySetsIfNeeded];
    spatialMediaProperties = [photo2 spatialMediaProperties];
    v31 = [spatialMediaProperties spatialMediaType] == 2;

    v32 = objc_alloc_init(MEMORY[0x1E69C42E0]);
    [v32 setRequireAdjustments:v29];
    [v32 setRequireLocalResources:1];
    [v32 setVersion:workImageVersion];
    [v32 setDelegate:self];
    [v32 setTargetSize:{v22, v24}];
    [v32 setRequireOriginalsDownloaded:v31];
    [resourceLoader enqueueRequest:v32];
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

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  _livePhotoGestureRecognizer = [(PUPhotoEditViewController *)self _livePhotoGestureRecognizer];
  v7 = _livePhotoGestureRecognizer == recognizerCopy;

  togglePreviewTapGestureRecognizer = self->_togglePreviewTapGestureRecognizer;
  if (togglePreviewTapGestureRecognizer == recognizerCopy)
  {
    return [(PUPhotoEditToolPickerController *)self->_toolPickerController selectedToolTag]!= 1006 || _livePhotoGestureRecognizer == recognizerCopy;
  }

  return v7;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  _livePhotoGestureRecognizer = [(PUPhotoEditViewController *)self _livePhotoGestureRecognizer];
  v6 = _livePhotoGestureRecognizer;
  togglePreviewTapGestureRecognizer = self->_togglePreviewTapGestureRecognizer;
  if (togglePreviewTapGestureRecognizer != beginCopy && _livePhotoGestureRecognizer != beginCopy)
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

  view = [(PUPhotoEditToolController *)currentEditingTool view];
  [view bounds];
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
  view2 = [(PUPhotoEditToolController *)self->_currentEditingTool view];
  [beginCopy locationInView:view2];
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
      LOBYTE(v34) = [(PUPhotoEditToolController *)v32 gestureRecognizerShouldBegin:beginCopy];
    }

    goto LABEL_15;
  }

  v33 = v32 != self->_photoStylesToolController;
  if (v34)
  {
    goto LABEL_12;
  }

LABEL_15:
  if (v6 == beginCopy)
  {
    livePhotoModel = [(PUPhotoEditViewController *)self livePhotoModel];
    isVideoEnabled = [livePhotoModel isVideoEnabled];

    LOBYTE(v34) = isVideoEnabled & v34;
  }

LABEL_17:
  if (self->_currentEditingTool == &self->_mediaToolController->super && [(PUPhotoEditViewController *)self isPortraitVideo])
  {
    LOBYTE(v34) = togglePreviewTapGestureRecognizer != beginCopy;
  }

  return v34 & 1;
}

- (void)_updateLivePhotoPlaybackGestureRecognizer
{
  if (![(PUPhotoEditToolController *)self->_currentEditingTool suppressesEditUpdates])
  {
    _livePhotoGestureRecognizer = [(PUPhotoEditViewController *)self _livePhotoGestureRecognizer];
    wantsDefaultPreviewView = 1;
    [(PUPhotoEditViewController *)self _installGestureRecognizer:_livePhotoGestureRecognizer type:1];
    [_livePhotoGestureRecognizer setDelegate:self];
    currentEditingTool = self->_currentEditingTool;
    if (currentEditingTool)
    {
      wantsDefaultPreviewView = [(PUPhotoEditToolController *)currentEditingTool wantsDefaultPreviewView];
    }

    [_livePhotoGestureRecognizer setEnabled:wantsDefaultPreviewView];
  }
}

- (id)_livePhotoGestureRecognizer
{
  mediaView = self->_mediaView;
  if (mediaView)
  {
    _livePhotoView = [(NUMediaView *)mediaView _livePhotoView];
    playbackGestureRecognizer = [_livePhotoView playbackGestureRecognizer];
  }

  else
  {
    playbackGestureRecognizer = 0;
  }

  return playbackGestureRecognizer;
}

- (void)_handleSwipeDownGesture:(id)gesture
{
  if (self->_swipeDownGestureRecognizer == gesture && [gesture state] == 3)
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
  swipeToExitEdit = [v3 swipeToExitEdit];

  if (swipeToExitEdit)
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
    photo = [(PUPhotoEditViewController *)self photo];
    canPlayLoopingVideo = [photo canPlayLoopingVideo];
    v9 = 1.0;
    if (canPlayLoopingVideo)
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
      resourceLoader = [(PUPhotoEditViewController *)self resourceLoader];
      v3 = [resourceLoader resourcesAvailability] == 3;
    }

    [(PUPhotoEditViewController *)self setShouldBePreviewingOriginal:v3];

    [(PUPhotoEditViewController *)self setTogglingShowOriginal:v3];
  }
}

- (void)_handleTogglePreviewTapGesture:(id)gesture
{
  gestureCopy = gesture;
  if (self->_togglePreviewTapGestureRecognizer == gestureCopy)
  {
    v11 = gestureCopy;
    v5 = [(UITapGestureRecognizer *)gestureCopy state]== 3;
    gestureCopy = v11;
    if (v5)
    {
      compositionController = [(PUPhotoEditViewController *)self compositionController];

      gestureCopy = v11;
      if (compositionController)
      {
        touches = [(UITapGestureRecognizer *)v11 touches];
        lastObject = [touches lastObject];

        type = [lastObject type];
        if ([(PUPhotoEditViewController *)self isStandardVideo]|| (v10 = [(PUPhotoEditViewController *)self isLoopingVideo], type != 2) || v10)
        {
          [(PUPhotoEditViewController *)self _toggleShowOriginal];
        }

        else
        {
          [(PUPhotoEditViewController *)self _startMarkupSession];
        }

        gestureCopy = v11;
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
    wantsTapToToggleOriginalEnabled = 0;
  }

  else
  {
    currentEditingTool = self->_currentEditingTool;
    if (currentEditingTool)
    {
      wantsTapToToggleOriginalEnabled = [(PUPhotoEditToolController *)currentEditingTool wantsTapToToggleOriginalEnabled];
    }

    else
    {
      wantsTapToToggleOriginalEnabled = 1;
    }
  }

  v8 = self->_togglePreviewTapGestureRecognizer;

  [(UITapGestureRecognizer *)v8 setEnabled:wantsTapToToggleOriginalEnabled];
}

- (void)_installGestureRecognizer:(id)recognizer type:(unint64_t)type
{
  recognizerCopy = recognizer;
  currentEditingTool = self->_currentEditingTool;
  v10 = recognizerCopy;
  if (currentEditingTool && (v8 = [(PUPhotoEditToolController *)currentEditingTool supportsGesturesOfType:type], recognizerCopy = v10, !v8))
  {
    view = [v10 view];
    [view removeGestureRecognizer:v10];
  }

  else
  {
    [(NUMediaView *)self->_mediaView addGestureRecognizer:recognizerCopy];
  }
}

- (void)pencilInteractionDidTap:(id)tap
{
  presentedViewController = [(PUPhotoEditViewController *)self presentedViewController];

  if (!presentedViewController && ![(PUPhotoEditViewController *)self isStandardVideo]&& ![(PUPhotoEditViewController *)self isLoopingVideo])
  {

    [(PUPhotoEditViewController *)self _startMarkupSession];
  }
}

- (void)_startMarkupSession
{
  compositionController = [(PUPhotoEditViewController *)self compositionController];

  if (compositionController)
  {
    photo = [(PUPhotoEditViewController *)self photo];
    [(PUEditPluginSession *)self->_pluginSession beginMarkupSessionWithAsset:photo fromViewController:self];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:6528 description:{@"Invalid parameter not satisfying: %@", @"_mediaView"}];

      mediaView = self->_mediaView;
    }

    v7 = self->_pencilInteraction;

    [(NUMediaView *)mediaView addInteraction:v7];
  }
}

- (void)photoLibraryChangesPausedDidChange
{
  v6 = *MEMORY[0x1E69E9840];
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  px_areChangesPaused = [px_deprecated_appPhotoLibrary px_areChangesPaused];

  v4 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = px_areChangesPaused;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "PUPhotoEditViewController observed library changes pause change: %d", v5, 8u);
  }
}

- (void)photoLibraryDidChangeOnMainQueue:(id)queue
{
  v21 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
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
        v12 = [queueCopy contentOrThumbnailChangedForAsset:v11];
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

- (void)_uninstallInEditRevertTransitionSnapshotAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(PUPhotoEditViewController *)self _isInEditRevertTransitionSnapshotVisible])
  {
    if (animatedCopy)
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
      inEditRevertTransitionSnapshot = [(PUPhotoEditViewController *)self inEditRevertTransitionSnapshot];
      [inEditRevertTransitionSnapshot removeFromSuperview];

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
  view = [(PUPhotoEditViewController *)self view];
  v4 = [view snapshotViewAfterScreenUpdates:0];
  [(PUPhotoEditViewController *)self setInEditRevertTransitionSnapshot:v4];

  view2 = [(PUPhotoEditViewController *)self view];
  inEditRevertTransitionSnapshot = [(PUPhotoEditViewController *)self inEditRevertTransitionSnapshot];
  [view2 addSubview:inEditRevertTransitionSnapshot];

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
  inEditRevertTransitionSnapshot = [(PUPhotoEditViewController *)self inEditRevertTransitionSnapshot];
  superview = [inEditRevertTransitionSnapshot superview];
  v4 = superview != 0;

  return v4;
}

- (void)_performInEditRevertWithToolButton:(id)button
{
  v4 = -[PUPhotoEditViewController _toolControllerForTag:](self, "_toolControllerForTag:", [button tag]);
  v5 = -[PUPhotoEditViewController _toolTypeForToolWithTag:](self, "_toolTypeForToolWithTag:", [v4 toolControllerTag]);
  [(PUPhotoEditViewController *)self updateProgressIndicatorAnimated:1];
  mediaDestination = [(PUPhotoEditViewController *)self mediaDestination];
  photo = [(PUPhotoEditViewController *)self photo];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__PUPhotoEditViewController__performInEditRevertWithToolButton___block_invoke;
  v9[3] = &unk_1E7B7B3D8;
  v10 = v4;
  v11 = v5;
  v9[4] = self;
  v8 = v4;
  [mediaDestination revertEditsForAsset:photo completionHandler:v9];
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

- (void)_presentWarningForIrisRemovesEditsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:6372 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
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
  v11 = completionCopy;
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

  popoverPresentationController = [v8 popoverPresentationController];
  [popoverPresentationController setPermittedArrowDirections:15];
  livePhotoButton = [(PUPhotoEditMediaToolController *)self->_mediaToolController livePhotoButton];
  [popoverPresentationController setSourceView:livePhotoButton];
  [livePhotoButton bounds];
  [popoverPresentationController setSourceRect:?];
  [popoverPresentationController setDelegate:self];
  [(PUPhotoEditViewController *)self setIrisRevertConfirmationAlert:v8];
  [(PUPhotoEditViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)_handleLivePhotoTouchRecognizer:(id)recognizer
{
  if ([recognizer state] != 2)
  {

    [(PUPhotoEditViewController *)self updateProgressIndicatorAnimated:1];
  }
}

- (void)_setPlaybackEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  livePhotoModel = [(PUPhotoEditViewController *)self livePhotoModel];
  v6 = livePhotoModel;
  if (enabledCopy && [livePhotoModel reenablingLivePhotoShouldRemoveEdits])
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
    [v6 setVideoEnabled:enabledCopy];
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
  livePhotoModel = [(PUPhotoEditViewController *)self livePhotoModel];
  if (([livePhotoModel isVideoEnabled] & 1) != 0 || !objc_msgSend(livePhotoModel, "reenablingLivePhotoShouldRemoveEdits"))
  {
    v4 = objc_alloc(MEMORY[0x1E69C3538]);
    compositionController = [(PUPhotoEditViewController *)self compositionController];
    v6 = [v4 initWithCompositionController:compositionController livePhotoModel:livePhotoModel];

    undoManager = [(PUPhotoEditViewController *)self undoManager];
    [v6 executeWithUndoManager:undoManager completionHandler:&__block_literal_global_848];
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
  compositionController = [(PUPhotoEditViewController *)self compositionController];
  v5 = [compositionController adjustmentControllerForKey:*MEMORY[0x1E69BE048]];

  if (v5)
  {
    enabled = [v5 enabled];
  }

  else
  {
    enabled = [(PUPhotoEditViewController *)self hasLoopingVideoAdjustment];
  }

  [(NUMediaView *)self->_mediaView setMuted:enabled];
}

- (void)applyAutoEnhance:(id)enhance completion:(id)completion
{
  enhanceCopy = enhance;
  completionCopy = completion;
  objc_initWeak(&location, self);
  autoEnhanceController = self->_autoEnhanceController;
  valuesCalculator = [(PUPhotoEditViewController *)self valuesCalculator];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__PUPhotoEditViewController_applyAutoEnhance_completion___block_invoke;
  v11[3] = &unk_1E7B7B3B0;
  objc_copyWeak(&v13, &location);
  v10 = completionCopy;
  v12 = v10;
  [(PEAutoAdjustmentController *)autoEnhanceController enableAutoEnhanceOnCompositionController:enhanceCopy valuesCalculator:valuesCalculator completionHandler:v11];

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

- (void)_handleAutoEnhanceButton:(id)button
{
  if (([(PEAutoAdjustmentController *)self->_autoEnhanceController isBusy]& 1) == 0)
  {
    compositionController = [(PUPhotoEditViewController *)self compositionController];
    if (!compositionController)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:6291 description:@"Need a compositionController to compute AutoEnhance"];
    }

    valuesCalculator = [(PUPhotoEditViewController *)self valuesCalculator];

    if (!valuesCalculator)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:6292 description:@"Need a valuesCalculator to compute AutoEnhance"];
    }

    if ([MEMORY[0x1E69C4260] isAutoEnhanceEnabledForCompositionController:compositionController])
    {
      [(PEAutoAdjustmentController *)self->_autoEnhanceController disableAutoEnhanceOnCompositionController:compositionController];
    }

    else
    {
      [(PUPhotoEditViewController *)self applyAutoEnhance:compositionController completion:0];
    }
  }
}

- (void)_presentMarkup
{
  photo = [(PUPhotoEditViewController *)self photo];
  [(PUEditPluginSession *)self->_pluginSession beginMarkupSessionWithAsset:photo fromViewController:self];
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

- (void)_handleZoomButton:(id)button
{
  self->_zoomButtonInteraction = 1;
  mediaView = [(PUPhotoEditViewController *)self mediaView];
  if ([(PUPhotoEditViewController *)self _isZoomedIn])
  {
    [mediaView minimumZoomScale];
    [mediaView setZoomScale:1 animated:?];
  }

  else
  {
    _renderView = [mediaView _renderView];
    [_renderView bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [mediaView zoomToRect:1 animated:{v6, v8, v10, v12}];
  }

  self->_zoomButtonInteraction = 0;
}

- (void)_updateZoomButton
{
  if (self->_zoomButton)
  {
    _isZoomedIn = [(PUPhotoEditViewController *)self _isZoomedIn];
    zoomButton = self->_zoomButton;

    [(PUPhotoEditToolbarButton *)zoomButton setSelected:_isZoomedIn];
  }
}

- (BOOL)_isZoomedIn
{
  mediaView = [(PUPhotoEditViewController *)self mediaView];
  _scrollView = [mediaView _scrollView];

  [_scrollView zoomScale];
  v5 = v4;
  [_scrollView minimumZoomScale];
  LOBYTE(mediaView) = v5 > v6 * 1.05;

  return mediaView;
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
  internalToolActionsForMenu = [(PUPhotoEditToolController *)self->_currentEditingTool internalToolActionsForMenu];
  if (internalToolActionsForMenu)
  {
    v8 = [v6 arrayByAddingObjectsFromArray:internalToolActionsForMenu];

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
  toolActionsForMenu = [(PUPhotoEditToolController *)self->_currentEditingTool toolActionsForMenu];
  if (toolActionsForMenu)
  {
    v3 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F2AC6818 image:0 identifier:0 options:1 children:toolActionsForMenu];
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
  _canPresentExtensions = [(PUPhotoEditViewController *)self _canPresentExtensions];
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
    _markupGetsItsOwnButton = [(PUPhotoEditViewController *)self _markupGetsItsOwnButton];
    _canPresentMarkup = [(PUPhotoEditViewController *)self _canPresentMarkup];
    v12 = @"NO";
    if (_markupGetsItsOwnButton)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    if (_canPresentMarkup)
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
    if (_canPresentExtensions)
    {
      v12 = @"YES";
    }

    v35 = 2112;
    v36 = v12;
    _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEFAULT, "PUPhotoEditViewController _extensionsSubmenu: (_markupGetsItsOwnButton: %@) (_canPresentMarkup: %@) (canPresentExtensions: %@)", buf, 0x20u);
  }

  if ([(PUPhotoEditViewController *)self _markupGetsItsOwnButton]|| ![(PUPhotoEditViewController *)self _canPresentMarkup]|| !_canPresentExtensions)
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

  if (!_canPresentExtensions)
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
  traitCollection = [(PUPhotoEditViewController *)self traitCollection];
  v4 = [traitCollection userInterfaceStyle] == 2;

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
  redEyeController = [(PUPhotoEditViewController *)self redEyeController];
  currentEditingTool = self->_currentEditingTool;

  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69DC628];
  v6 = PULocalizedString(@"PHOTOEDIT_REDEYE_TOOL_MENU_ITEM");
  if (redEyeController == currentEditingTool)
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
  undoManager = [(PUPhotoEditViewController *)self undoManager];
  v4 = MEMORY[0x1E69DC628];
  undoManager2 = [(PUPhotoEditViewController *)self undoManager];
  undoMenuItemTitle = [undoManager2 undoMenuItemTitle];
  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.uturn.backward"];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __45__PUPhotoEditViewController__undoRedoSubmenu__block_invoke;
  v26[3] = &unk_1E7B7C4A0;
  v8 = undoManager;
  v27 = v8;
  v9 = [v4 actionWithTitle:undoMenuItemTitle image:v7 identifier:0 handler:v26];

  [v9 setAttributes:8];
  if (([v8 canUndo] & 1) == 0)
  {
    [v9 setAttributes:{objc_msgSend(v9, "attributes") | 1}];
  }

  v10 = MEMORY[0x1E69DC628];
  v11 = objc_loadWeakRetained(&location);
  undoManager3 = [v11 undoManager];
  redoMenuItemTitle = [undoManager3 redoMenuItemTitle];
  v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.uturn.forward"];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __45__PUPhotoEditViewController__undoRedoSubmenu__block_invoke_2;
  v24 = &unk_1E7B7C4A0;
  v15 = v8;
  v25 = v15;
  v16 = [v10 actionWithTitle:redoMenuItemTitle image:v14 identifier:0 handler:&v21];

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
  _moreButtonMenu = [(PUPhotoEditViewController *)self _moreButtonMenu];
  [(PUPhotoEditToolbarButton *)self->_moreButton setMenu:_moreButtonMenu];
}

- (void)_produceMoreButtonMenuElementsWithCompletion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _copyPasteEditsSubmenu = [(PUPhotoEditViewController *)self _copyPasteEditsSubmenu];
  [v5 addObject:_copyPasteEditsSubmenu];

  photo = [(PUPhotoEditViewController *)self photo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    _saveAsDuplicateSubmenu = [(PUPhotoEditViewController *)self _saveAsDuplicateSubmenu];
    [v5 addObject:_saveAsDuplicateSubmenu];
  }

  v10 = +[PUPhotoEditProtoSettings sharedInstance];
  lightModeEditor = [v10 lightModeEditor];

  if (lightModeEditor)
  {
    _appearanceSubmenu = [(PUPhotoEditViewController *)self _appearanceSubmenu];
    [v5 addObject:_appearanceSubmenu];
  }

  v13 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    _extensionsSubmenu = [(PUPhotoEditViewController *)self _extensionsSubmenu];
    v21 = 138412290;
    v22 = _extensionsSubmenu;
    _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_DEFAULT, "PUPhotoEditViewController _produceMoreButtonMenuElementsWithCompletion: _extensionsSubmenu: %@", &v21, 0xCu);
  }

  _extensionsSubmenu2 = [(PUPhotoEditViewController *)self _extensionsSubmenu];
  [v5 addObject:_extensionsSubmenu2];

  _undoRedoSubmenu = [(PUPhotoEditViewController *)self _undoRedoSubmenu];
  [v5 addObject:_undoRedoSubmenu];

  _toolActionsSubmenu = [(PUPhotoEditViewController *)self _toolActionsSubmenu];
  v18 = _toolActionsSubmenu;
  if (_toolActionsSubmenu)
  {
    _toolActionsSubmenu = [v5 addObject:_toolActionsSubmenu];
  }

  if (MEMORY[0x1B8C6D660](_toolActionsSubmenu) && [(PUPhotoEditViewController *)self _shouldDisplayRedEyeUI]&& self->_redEyeButton)
  {
    _redEyeAction = [(PUPhotoEditViewController *)self _redEyeAction];
    [v5 addObject:_redEyeAction];
  }

  if (PFOSVariantHasInternalUI())
  {
    _internalActionsSubmenu = [(PUPhotoEditViewController *)self _internalActionsSubmenu];
    [v5 addObject:_internalActionsSubmenu];
  }

  completionCopy[2](completionCopy, v5);
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
  photo = [(PUPhotoEditViewController *)self photo];
  [(PUEditPluginSession *)self->_pluginSession beginSessionWithAsset:photo fromViewController:self sourceElement:self->_moreButton includeMarkupInList:[(PUPhotoEditViewController *)self _markupGetsItsOwnButton]^ 1];
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

    isSpatialMedia = [(PUPhotoEditViewController *)self isSpatialMedia];
    pluginSession = self->_pluginSession;
    if (isSpatialMedia)
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

- (void)_notifyDelegateSaveFinishedIfReadyWithAsset:(id)asset
{
  v18 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
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
    saveCompletionDismissalState = [(PUPhotoEditViewController *)self saveCompletionDismissalState];
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "_notifyDelegateSaveFinishedIfReadyWithAsset: isWaitingForAssetChange: %@ isWaitingForSaveCompletion: %@   saveCompletionDismissalState: %d", buf, 0x1Cu);
  }

  if (![(PUPhotoEditViewController *)self _isWaitingForAssetChange]&& ![(PUPhotoEditViewController *)self _isWaitingForSaveCompletion]&& [(PUPhotoEditViewController *)self saveCompletionDismissalState]!= 3)
  {
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    [px_deprecated_appPhotoLibrary px_unregisterChangeObserver:self];

    v9 = dispatch_time(0, 100000000);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __73__PUPhotoEditViewController__notifyDelegateSaveFinishedIfReadyWithAsset___block_invoke;
    v10[3] = &unk_1E7B80C38;
    v10[4] = self;
    v11 = assetCopy;
    dispatch_after(v9, MEMORY[0x1E69E96A0], v10);
  }
}

- (void)_cancelInProgressSaveRequest
{
  if (self->_inProgressSaveRequestID)
  {
    mediaDestination = [(PUPhotoEditViewController *)self mediaDestination];
    [mediaDestination cancelRequestWithIdentifier:self->_inProgressSaveRequestID];

    self->_inProgressSaveRequestID = 0;
  }
}

- (BOOL)_isSaveProgressAvailable
{
  if (!self->_inProgressSaveRequestID)
  {
    return 0;
  }

  selfCopy = self;
  mediaDestination = [(PUPhotoEditViewController *)self mediaDestination];
  LOBYTE(selfCopy) = [mediaDestination supportsProgressForRequestWithIdentifier:selfCopy->_inProgressSaveRequestID];

  return selfCopy;
}

- (void)_updateSaveProgress
{
  if ([(PUPhotoEditViewController *)self _isSaveProgressAvailable])
  {
    mediaDestination = [(PUPhotoEditViewController *)self mediaDestination];
    [mediaDestination progressForRequestWithIdentifier:self->_inProgressSaveRequestID];
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

- (void)_stopWaitingForSaveRequestWithAsset:(id)asset
{
  v9 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v5 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = assetCopy;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "[PUPhotoEditViewController _stopWaitingForSaveRequestWithAsset:] - asset: %@", &v7, 0xCu);
  }

  if (assetCopy)
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
  [(PUPhotoEditViewController *)self _notifyDelegateSaveFinishedIfReadyWithAsset:assetCopy];
}

- (void)_startWaitingForSaveRequestID:(int)d
{
  v5 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "[PUPhotoEditViewController _startWaitingForSaveRequestID:]", v6, 2u);
  }

  [(PUPhotoEditViewController *)self setSaveCompletionDismissalState:1];
  self->_inProgressSaveRequestID = d;
  [(PUPhotoEditViewController *)self _startMonitoringSaveProgressIfNeeded];
}

- (void)_stopWaitingForAssetChangeWithAsset:(id)asset success:(BOOL)success
{
  successCopy = success;
  v11 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  [(NSMutableSet *)self->_assetsWaitingForLibraryNotification removeObject:assetCopy];
  if (![(NSMutableSet *)self->_assetsWaitingForLibraryNotification count])
  {
    v7 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = successCopy;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "[PUPhotoEditViewController _stopWaitingForAssetChangeWithAsset:success:] - success: %d", v10, 8u);
    }

    assetChangeTimeoutTimer = [(PUPhotoEditViewController *)self assetChangeTimeoutTimer];
    [assetChangeTimeoutTimer invalidate];

    [(PUPhotoEditViewController *)self setAssetChangeTimeoutTimer:0];
    if (successCopy)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    [(PUPhotoEditViewController *)self setAssetChangeDismissalState:v9];
    [(PUPhotoEditViewController *)self _notifyDelegateSaveFinishedIfReadyWithAsset:assetCopy];
  }
}

- (void)_timeoutWaitingForAssetChange
{
  v10 = *MEMORY[0x1E69E9840];
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  px_areChangesPaused = [px_deprecated_appPhotoLibrary px_areChangesPaused];

  v5 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 67109120;
    v9 = px_areChangesPaused;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "PUPhotoEditViewController - PERF - timeout while waiting for an asset change from the library. Are Library Changes Paused: %d", &v8, 8u);
  }

  photo = [(PUPhotoEditViewController *)self photo];
  [(PUPhotoEditViewController *)self _stopWaitingForAssetChangeWithAsset:photo success:0];

  v7 = PXAssertGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    v8 = 67109120;
    v9 = px_areChangesPaused;
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
      px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
      LODWORD(buf) = 67109120;
      HIDWORD(buf) = [px_deprecated_appPhotoLibrary px_areChangesPaused];
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

- (void)_startWaitingForAssetChange:(id)change
{
  v15 = *MEMORY[0x1E69E9840];
  changeCopy = change;
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

    [(NSMutableSet *)assetsWaitingForLibraryNotification addObject:changeCopy];
    v8 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(NSMutableSet *)self->_assetsWaitingForLibraryNotification count];
      v11 = 138412546;
      v12 = changeCopy;
      v13 = 1024;
      v14 = v9;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "[PUPhotoEditViewController _startWaitingForAssetChange] for %@; now waiting on %d assets", &v11, 0x12u);
    }

    [(PUPhotoEditViewController *)self setAssetChangeDismissalState:1];
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    [px_deprecated_appPhotoLibrary px_registerChangeObserver:self];
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
    adjustmentData = [(PUPhotoEditSnapshot *)stashedSnapshot adjustmentData];

    if (adjustmentData)
    {
      v9 = self->_stashedSnapshot;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __50__PUPhotoEditViewController__performDiscardAction__block_invoke;
      v12[3] = &unk_1E7B7B360;
      selfCopy = self;
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
  editSourceContentEditingInput = [(PUPhotoEditViewController *)self editSourceContentEditingInput];
  self->_downloadingForRevert = [editSourceContentEditingInput baseVersion] != 0;

  [(PUPhotoEditViewController *)self updateProgressIndicatorAnimated:1];
  v9 = MEMORY[0x1E69BDEF0];
  uneditedComposition = [(PUPhotoEditViewController *)self uneditedComposition];
  v11 = [v9 newCompositionControllerWithComposition:uneditedComposition];

  compositionController = [(PUPhotoEditViewController *)self compositionController];
  composition = [compositionController composition];

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
  v21 = composition;
  v22 = v6;
  v23 = v4;
  v16 = v6;
  v17 = composition;
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

- (void)asShotCompositionController:(id)controller
{
  controllerCopy = controller;
  v6 = objc_alloc_init(MEMORY[0x1E6978798]);
  [v6 setResultHandlerQueue:MEMORY[0x1E69E96A0]];
  [v6 setNetworkAccessAllowed:1];
  photo = [(PUPhotoEditViewController *)self photo];
  [v6 setOriginalChoice:{objc_msgSend(photo, "originalResourceChoice")}];

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
  photo2 = [(PUPhotoEditViewController *)self photo];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__PUPhotoEditViewController_asShotCompositionController___block_invoke_2;
  v10[3] = &unk_1E7B7B298;
  objc_copyWeak(v12, &location);
  v9 = controllerCopy;
  v12[1] = a2;
  v10[4] = self;
  v11 = v9;
  [photo2 requestContentEditingInputWithOptions:v6 completionHandler:v10];

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

- (int)_revertToEmptyCompositionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  uneditedComposition = [(PUPhotoEditViewController *)self uneditedComposition];
  v6 = [MEMORY[0x1E69BDEF0] newCompositionControllerWithComposition:uneditedComposition];
  workImageVersion = [(PUPhotoEditViewController *)self workImageVersion];
  photo = [(PUPhotoEditViewController *)self photo];
  isAdjusted = [photo isAdjusted];

  if ((isAdjusted & 1) == 0 && ([MEMORY[0x1E69BE360] isIdentityCompositionController:v6] ? (v10 = workImageVersion == 1) : (v10 = 0), v10))
  {
    v15 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_DEFAULT, "[PUPhotoEditViewController _revertToEmptyCompositionWithCompletionHandler:]: resetting in memory", buf, 2u);
    }

    [(PUPhotoEditViewController *)self _resetModelAndBaseImagesToWorkImageVersion:1];
    if (handlerCopy)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __76__PUPhotoEditViewController__revertToEmptyCompositionWithCompletionHandler___block_invoke_758;
      v17[3] = &unk_1E7B80B48;
      v17[4] = self;
      v18 = handlerCopy;
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

    mediaDestination = [(PUPhotoEditViewController *)self mediaDestination];
    photo2 = [(PUPhotoEditViewController *)self photo];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __76__PUPhotoEditViewController__revertToEmptyCompositionWithCompletionHandler___block_invoke;
    v19[3] = &unk_1E7B7B248;
    v19[4] = self;
    v20 = handlerCopy;
    v14 = [mediaDestination revertEditsForAsset:photo2 completionHandler:v19];
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

- (int)_saveRevertedComposition:(id)composition contentEditingInput:(id)input withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  compositionCopy = composition;
  v10 = [(PUPhotoEditViewController *)self _newOutputForContentEditingInput:input compositionController:compositionCopy];
  v11 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEFAULT, "[PUPhotoEditViewController _saveRevertedComposition:contentEditingInput:withCompletionHandler:]: using [PEMediaDestination saveInternalEditsForAsset:usingCompositionController:contentEditingOutput:version:livePhotoEditModel:useRawIfAvailable:completionHandler:] to revert", buf, 2u);
  }

  mediaDestination = [(PUPhotoEditViewController *)self mediaDestination];
  photo = [(PUPhotoEditViewController *)self photo];
  livePhotoModel = [(PUPhotoEditViewController *)self livePhotoModel];
  editingVisibility = [livePhotoModel editingVisibility];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __96__PUPhotoEditViewController__saveRevertedComposition_contentEditingInput_withCompletionHandler___block_invoke;
  v21 = &unk_1E7B7B248;
  selfCopy = self;
  v23 = handlerCopy;
  v16 = handlerCopy;
  LODWORD(editingVisibility) = [mediaDestination saveInternalEditsForAsset:photo usingCompositionController:compositionCopy contentEditingOutput:v10 version:1 livePhotoState:editingVisibility completionHandler:&v18];

  [(PUPhotoEditViewController *)self updateProgressIndicatorAnimated:1, v18, v19, v20, v21, selfCopy];
  return editingVisibility;
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

- (void)_handleRevertButton:(id)button
{
  isStandardVideo = [(PUPhotoEditViewController *)self isStandardVideo];
  v5 = @"PHOTOEDIT_CONFIRM_REVERT_MESSAGE";
  if (isStandardVideo)
  {
    v5 = @"VIDEOEDIT_CONFIRM_REVERT_MESSAGE";
  }

  v6 = v5;
  editSourceContentEditingInput = [(PUPhotoEditViewController *)self editSourceContentEditingInput];
  originalAdjustmentData = [editSourceContentEditingInput originalAdjustmentData];

  if (originalAdjustmentData && ([MEMORY[0x1E69BDE08] locallySupportedFormatVersions], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(originalAdjustmentData, "formatVersion"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "indexOfObject:", v10), v10, v9, v11 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v12 = @"PHOTOEDIT_UNSUPPORTED_REVERT_WARNING";
    if (isStandardVideo)
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

  popoverPresentationController = [v16 popoverPresentationController];
  [popoverPresentationController setDelegate:self];
  [popoverPresentationController setPermittedArrowDirections:15];
  p_mainActionButton = &self->_mainActionButton;
  window = [(PUPhotoEditNotchButton *)self->_mainActionButton window];
  if (!window)
  {
    p_mainActionButton = &self->_mainActionButtonItem;
  }

  [popoverPresentationController setSourceItem:*p_mainActionButton];

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

- (void)_handleDoneAction:(id)action
{
  actionCopy = action;
  menu = [(PUPhotoEditNotchButton *)self->_mainActionButton menu];

  if (menu)
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

    popoverPresentationController = [v9 popoverPresentationController];
    v20 = popoverPresentationController;
    if (self->_mainActionButton == actionCopy)
    {
      [popoverPresentationController setSourceView:?];
    }

    else
    {
      [popoverPresentationController setSourceItem:self->_mainActionButtonItem];
    }

    [(PUPhotoEditViewController *)self presentViewController:v9 animated:1 completion:0];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);

    objc_destroyWeak(&location);
  }

  else
  {
    [(PUPhotoEditViewController *)self _handleDoneButton:actionCopy];
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

- (void)_handleDoneButton:(id)button
{
  if (-[PUPhotoEditViewController isSpatialMedia](self, "isSpatialMedia", button) && (-[PUPhotoEditViewController photo](self, "photo"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 mediaType], v4, v5 != 2))
  {
    photo = [(PUPhotoEditViewController *)self photo];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = photo;
    }

    else
    {
      v7 = 0;
    }

    spatialMediaProperties = [v7 spatialMediaProperties];
    [spatialMediaProperties spatialMediaType];

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

- (void)_commitSaveAsCopyWithAsset:(id)asset
{
  assetCopy = asset;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_alloc(MEMORY[0x1E69C32F0]);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v4 initWithSourceIdentifier:v6 variant:@"SaveAsCopy" assetCount:1 userConfirmation:4];

    v8 = [objc_alloc(MEMORY[0x1E69C3968]) initWithAsset:assetCopy record:v7];
    executedSessionAction = self->_executedSessionAction;
    self->_executedSessionAction = v8;
  }
}

- (void)_commitEditSessionActionWithAsset:(id)asset initialCompositionController:(id)controller savedCompositionController:(id)compositionController localizedActionName:(id)name
{
  assetCopy = asset;
  controllerCopy = controller;
  compositionControllerCopy = compositionController;
  nameCopy = name;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = objc_alloc_init(MEMORY[0x1E69C3308]);
    v15 = objc_alloc_init(MEMORY[0x1E696AE38]);
    [v14 setProgress:v15];

    [v14 setShowCheckmarkOnCompletion:1];
    [v14 setShouldAutoDisplay:1];
    [v14 setShouldUseProgressText:1];
    mEMORY[0x1E69C4220] = [MEMORY[0x1E69C4220] sharedPresetManager];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __139__PUPhotoEditViewController__commitEditSessionActionWithAsset_initialCompositionController_savedCompositionController_localizedActionName___block_invoke;
    v34[3] = &unk_1E7B80DD0;
    v35 = mEMORY[0x1E69C4220];
    v29 = mEMORY[0x1E69C4220];
    [v14 setCancellationHandler:v34];
    selfCopy = self;
    v31 = controllerCopy;
    v18 = [objc_alloc(MEMORY[0x1E69C4218]) initWithCompositionController:controllerCopy asset:assetCopy];
    v30 = compositionControllerCopy;
    v19 = [objc_alloc(MEMORY[0x1E69C4218]) initWithCompositionController:compositionControllerCopy asset:assetCopy];
    v20 = objc_alloc(MEMORY[0x1E69C3540]);
    mEMORY[0x1E69C4220]2 = [MEMORY[0x1E69C4220] sharedPresetManager];
    progress = [v14 progress];
    defaultManager = [MEMORY[0x1E69C4558] defaultManager];
    v24 = [v20 initWithPresetManager:mEMORY[0x1E69C4220]2 asset:assetCopy sourcePreset:v18 targetPreset:v19 syncProgress:progress asyncLoadingStatusManager:defaultManager];

    v25 = +[PUPhotoEditProtoSettings sharedInstance];
    -[PXAction setAllowSynchronousRendering:](v24, "setAllowSynchronousRendering:", [v25 allowSynchronousBatchRendering]);

    [(PXAction *)v24 setLocalizedActionName:nameCopy];
    executedSessionAction = selfCopy->_executedSessionAction;
    selfCopy->_executedSessionAction = v24;
    v27 = v24;

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __139__PUPhotoEditViewController__commitEditSessionActionWithAsset_initialCompositionController_savedCompositionController_localizedActionName___block_invoke_2;
    v32[3] = &unk_1E7B7B220;
    v33 = v14;
    v28 = v14;
    [(PXAction *)v27 setCompletionHandler:v32];

    compositionControllerCopy = v30;
    controllerCopy = v31;
  }
}

- (void)_handleSaveAction:(int64_t)action
{
  v113 = *MEMORY[0x1E69E9840];
  _hasUnsavedChanges = [(PUPhotoEditViewController *)self _hasUnsavedChanges];
  v6 = _hasUnsavedChanges;
  if (action || !_hasUnsavedChanges || [(PUPhotoEditViewController *)self workImageVersion]!= 1)
  {
    goto LABEL_8;
  }

  _canCurrentCompositionControllerBeReverted = [(PUPhotoEditViewController *)self _canCurrentCompositionControllerBeReverted];
  livePhotoModel = [(PUPhotoEditViewController *)self livePhotoModel];
  if (livePhotoModel)
  {
    livePhotoModel2 = [(PUPhotoEditViewController *)self livePhotoModel];
    v10 = [livePhotoModel2 isVideoEnabled] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  if ((_canCurrentCompositionControllerBeReverted | v10))
  {
LABEL_8:
    v11 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = action;
      _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEFAULT, "PERF - saving asset changes; save action: %ld", &buf, 0xCu);
    }

    photo = [(PUPhotoEditViewController *)self photo];
    isContentAdjustmentAllowed = [photo isContentAdjustmentAllowed];

    workImageVersion = [(PUPhotoEditViewController *)self workImageVersion];
    compositionController = [(PUPhotoEditViewController *)self compositionController];
    uneditedComposition = [(PUPhotoEditViewController *)self uneditedComposition];
    v73 = [MEMORY[0x1E69BDEF0] newCompositionControllerWithComposition:uneditedComposition];
    v15 = +[PUPhotoEditProtoSettings sharedInstance];
    alwaysShowDoneButton = [v15 alwaysShowDoneButton];

    if (self->_stashedSnapshot)
    {
      aggregateSession = [(PUPhotoEditViewController *)self aggregateSession];
      [aggregateSession setPluginSaved:1];
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
    if ((isContentAdjustmentAllowed & (alwaysShowDoneButton | v6)) != 1)
    {
      if (self->_stashedSnapshot)
      {
        aggregateSession2 = [(PUPhotoEditViewController *)self aggregateSession];
        v39 = [aggregateSession2 finishSessionWithEnd:0 newCompositionController:0 oldCompositionController:0];
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
    _allTools = [(PUPhotoEditViewController *)self _allTools];
    v24 = [_allTools countByEnumeratingWithState:&v103 objects:v112 count:16];
    if (v24)
    {
      v25 = *v104;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v104 != v25)
          {
            objc_enumerationMutation(_allTools);
          }

          [*(*(&v103 + 1) + 8 * i) prepareForSave:*(*(&v103 + 1) + 8 * i) == self->_currentTool];
        }

        v24 = [_allTools countByEnumeratingWithState:&v103 objects:v112 count:16];
      }

      while (v24);
    }

    smartToneAdjustmentController = [compositionController smartToneAdjustmentController];
    enabled = [smartToneAdjustmentController enabled];

    if (enabled)
    {
      v29 = *MEMORY[0x1E69BE178];
      v100[0] = MEMORY[0x1E69E9820];
      v100[1] = 3221225472;
      v100[2] = __47__PUPhotoEditViewController__handleSaveAction___block_invoke;
      v100[3] = &unk_1E7B7B098;
      v101 = compositionController;
      selfCopy = self;
      [v101 modifyAdjustmentWithKey:v29 modificationBlock:v100];
    }

    if ([(PUPhotoEditViewController *)self isStandardVideo])
    {
      mediaView = [(PUPhotoEditViewController *)self mediaView];
      player = [mediaView player];
      [player pause];
    }

    aggregateSession3 = [(PUPhotoEditViewController *)self aggregateSession];
    v33 = [aggregateSession3 finishSessionWithEnd:0 newCompositionController:compositionController oldCompositionController:v73];

    exitEditEventBuilder = [(PUPhotoEditViewController *)self exitEditEventBuilder];
    [exitEditEventBuilder setSessionEndReason:0];

    if (action == 2)
    {
      v35 = 1;
    }

    else
    {
      v35 = 2 * (action == 1);
    }

    exitEditEventBuilder2 = [(PUPhotoEditViewController *)self exitEditEventBuilder];
    [exitEditEventBuilder2 setSaveActionType:v35];

    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __47__PUPhotoEditViewController__handleSaveAction___block_invoke_3;
    aBlock[3] = &unk_1E7B7B0E8;
    objc_copyWeak(v98, &location);
    v93 = v73;
    v37 = compositionController;
    v94 = v37;
    selfCopy2 = self;
    v98[1] = workImageVersion;
    v38 = v21;
    v96 = v38;
    v98[2] = spid;
    v39 = v33;
    v97 = v39;
    v40 = _Block_copy(aBlock);
    if (action == 2)
    {
      if ([(PUPhotoEditViewController *)self isStandardVideo])
      {
        mediaView2 = [(PUPhotoEditViewController *)self mediaView];
        _didReleaseAVObjects = [mediaView2 _didReleaseAVObjects];

        if ((_didReleaseAVObjects & 1) == 0)
        {
          mediaView3 = [(PUPhotoEditViewController *)self mediaView];
          [mediaView3 _releaseAVObjects];

          trimController = [(PUPhotoEditMediaToolController *)self->_mediaToolController trimController];
          [trimController releaseAVObjects];
        }
      }

      photo2 = [(PUPhotoEditViewController *)self photo];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:5389 description:@"PUPhotoEditSaveActionBurnInTrimToNewClip: photo must be PHAsset"];
      }

      photo3 = [(PUPhotoEditViewController *)self photo];
      [(PUPhotoEditViewController *)self setBurningInTrim:1];
      [(PUPhotoEditViewController *)self updateProgressIndicatorAnimated:1];
      originalComposition = [(PUPhotoEditViewController *)self originalComposition];
      if (originalComposition)
      {
        v71 = [MEMORY[0x1E69BDEF0] newCompositionControllerWithComposition:originalComposition];
        source = [v37 source];
        [v71 setSource:source mediaType:{objc_msgSend(v37, "mediaType")}];
      }

      else
      {
        v71 = 0;
      }

      v69 = originalComposition;
      v61 = v40;
      cinematographyScript = [(PUPhotoEditMediaToolController *)self->_mediaToolController cinematographyScript];
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
      v66 = [v63 burnInTrimToNewAsset:photo3 compositionController:v37 asShotCompositionController:v71 cinematographyScript:cinematographyScript queue:v64 completion:v76];

      v40 = v61;
    }

    else if (action == 1)
    {
      photo4 = [(PUPhotoEditViewController *)self photo];
      objc_opt_class();
      v50 = objc_opt_isKindOfClass();

      if ((v50 & 1) == 0)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:5300 description:@"PUPhotoEditSaveActionSaveAsDuplicate: photo must be PHAsset"];
      }

      photo5 = [(PUPhotoEditViewController *)self photo];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v108 = 0x3032000000;
      v109 = __Block_byref_object_copy__58504;
      v110 = __Block_byref_object_dispose__58505;
      v111 = 0;
      photoLibrary = [photo5 photoLibrary];
      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 3221225472;
      v89[2] = __47__PUPhotoEditViewController__handleSaveAction___block_invoke_675;
      v89[3] = &unk_1E7B7FFC0;
      v89[4] = self;
      v90 = photo5;
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
      photo3 = v90;
      v84 = photo3;
      v85 = v37;
      v86 = v40;
      [photoLibrary performChanges:v89 completionHandler:v81];

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      if (action)
      {
LABEL_57:

        objc_destroyWeak(v98);
        objc_destroyWeak(&location);
LABEL_58:

        return;
      }

      editSourceContentEditingInput = [(PUPhotoEditViewController *)self editSourceContentEditingInput];
      photo3 = [(PUPhotoEditViewController *)self _newOutputForContentEditingInput:editSourceContentEditingInput compositionController:v37];

      photo6 = [(PUPhotoEditViewController *)self photo];
      editSourceContentEditingInput2 = [(PUPhotoEditViewController *)self editSourceContentEditingInput];
      (*(v40 + 2))(v40, photo6, v37, editSourceContentEditingInput2, photo3, 0);
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

- (void)_handleMainActionButton:(id)button
{
  buttonCopy = button;
  v6 = buttonCopy;
  mainButtonAction = self->_mainButtonAction;
  if (mainButtonAction)
  {
    if (mainButtonAction == 2)
    {
      v9 = buttonCopy;
      buttonCopy = [(PUPhotoEditViewController *)self _handleRevertButton:buttonCopy];
    }

    else
    {
      if (mainButtonAction != 1)
      {
        goto LABEL_8;
      }

      v9 = buttonCopy;
      buttonCopy = [(PUPhotoEditViewController *)self _handleDoneButton:buttonCopy];
    }
  }

  else
  {
    v9 = buttonCopy;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:5128 description:@"Invalid action for button."];
  }

  v6 = v9;
LABEL_8:

  MEMORY[0x1EEE66BB8](buttonCopy, v6);
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

  popoverPresentationController = [v4 popoverPresentationController];
  [popoverPresentationController setDelegate:self];
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
  _allTools = [(PUPhotoEditViewController *)self _allTools];
  v3 = [_allTools countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(_allTools);
        }

        [*(*(&v7 + 1) + 8 * v6++) leavingEditWithCancel];
      }

      while (v4 != v6);
      v4 = [_allTools countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_showCancelAndRevertOptionsAllowResetTool:(BOOL)tool
{
  toolCopy = tool;
  currentEditingTool = self->_currentEditingTool;
  if (currentEditingTool)
  {
    canResetToDefaultValue = [(PUPhotoEditToolController *)currentEditingTool canResetToDefaultValue];
  }

  else
  {
    canResetToDefaultValue = 0;
  }

  v7 = (self->_stashedSnapshot != 0) | [(PUPhotoEditViewController *)self _hasUnsavedChanges];
  v8 = MEMORY[0x1E69DC650];
  v9 = PULocalizedString(@"PHOTOEDIT_DISCARD_CHANGES_DESCRIPTION");
  v10 = [v8 alertControllerWithTitle:v9 message:0 preferredStyle:0];

  if (toolCopy && canResetToDefaultValue && (+[PUPhotoEditProtoSettings sharedInstance](PUPhotoEditProtoSettings, "sharedInstance"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 showResetToolButton], v11, (v12 & 1) != 0))
  {
    v13 = MEMORY[0x1E69DC648];
    localizedResetToolActionTitle = [(PUPhotoEditToolController *)self->_currentEditingTool localizedResetToolActionTitle];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __71__PUPhotoEditViewController__showCancelAndRevertOptionsAllowResetTool___block_invoke;
    v25[3] = &unk_1E7B7E148;
    v25[4] = self;
    v15 = [v13 actionWithTitle:localizedResetToolActionTitle style:0 handler:v25];

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

  popoverPresentationController = [v10 popoverPresentationController];
  [popoverPresentationController setDelegate:self];
  p_cancelButton = &self->_cancelButton;
  window = [(PUPhotoEditNotchButton *)self->_cancelButton window];
  if (!window)
  {
    p_cancelButton = &self->_cancelButtonItem;
  }

  [popoverPresentationController setSourceItem:*p_cancelButton];

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

- (void)_handleCancelButton:(id)button
{
  v14 = *MEMORY[0x1E69E9840];
  _hasUnsavedChanges = [(PUPhotoEditViewController *)self _hasUnsavedChanges];
  v5 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (_hasUnsavedChanges)
    {
      v6 = @"YES";
    }

    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "PERF - User pressed cancel button; hasUnsavedChanges? %@", &v12, 0xCu);
  }

  if (_hasUnsavedChanges || self->_stashedSnapshot)
  {
    [(PUPhotoEditViewController *)self _showCancelAndRevertOptionsAllowResetTool:0];
  }

  else
  {
    [(PUPhotoEditViewController *)self _didStartExitAction];
    aggregateSession = [(PUPhotoEditViewController *)self aggregateSession];
    [aggregateSession finishSessionWithEnd:2];

    exitEditEventBuilder = [(PUPhotoEditViewController *)self exitEditEventBuilder];
    [exitEditEventBuilder setSessionEndReason:2];

    [(PUPhotoEditViewController *)self _resignCurrentTool];
    [(PUPhotoEditViewController *)self didFinishWithChanges:0];
    resourceLoader = [(PUPhotoEditViewController *)self resourceLoader];
    cancelAllRequests = [resourceLoader cancelAllRequests];

    if (cancelAllRequests)
    {
      exitEditEventBuilder2 = [(PUPhotoEditViewController *)self exitEditEventBuilder];
      [exitEditEventBuilder2 setSessionEndReason:5];
    }

    [(PUPhotoEditViewController *)self _didEndExitActionWithSessionKeys:0];
  }

  [MEMORY[0x1E69B3A58] reapAllStoragePools];
}

- (void)_handle1upToggleButton:(id)button
{
  if ([(PUPhotoEditViewController *)self _hasUnsavedChanges])
  {

    [(PUPhotoEditViewController *)self _handleSaveAction:0];
  }

  else
  {
    aggregateSession = [(PUPhotoEditViewController *)self aggregateSession];
    [aggregateSession finishSessionWithEnd:2];

    exitEditEventBuilder = [(PUPhotoEditViewController *)self exitEditEventBuilder];
    [exitEditEventBuilder setSessionEndReason:2];

    [(PUPhotoEditViewController *)self _resignCurrentTool];
    photo = [(PUPhotoEditViewController *)self photo];
    [(PUPhotoEditViewController *)self didFinishWithAsset:photo savedChanges:0];
  }
}

- (void)_handleToolbarToolButton:(id)button
{
  buttonCopy = button;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:4949 description:@"The sender must be a button"];
  }

  v6 = buttonCopy;
  v7 = -[PUPhotoEditViewController _toolControllerForTag:](self, "_toolControllerForTag:", [v6 tag]);
  if (!v7)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:4954 description:@"No tool associated with this button"];
  }

  if ([v7 enabled])
  {
    [(PUPhotoEditViewController *)self switchToEditingTool:v7 animated:1];
  }

  else
  {
    v8 = MEMORY[0x1E69DC650];
    disabledToolAlertTitle = [v7 disabledToolAlertTitle];
    disabledToolAlertMessage = [v7 disabledToolAlertMessage];
    v11 = [v8 alertControllerWithTitle:disabledToolAlertTitle message:disabledToolAlertMessage preferredStyle:1];

    v12 = MEMORY[0x1E69DC648];
    v13 = PULocalizedString(@"PHOTOEDIT_CONFIRM_REVERT_BUTTON");
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __54__PUPhotoEditViewController__handleToolbarToolButton___block_invoke;
    v24 = &unk_1E7B7E120;
    selfCopy = self;
    v26 = v6;
    v14 = [v12 actionWithTitle:v13 style:2 handler:&v21];
    [v11 addAction:{v14, v21, v22, v23, v24, selfCopy}];

    v15 = MEMORY[0x1E69DC648];
    v16 = PULocalizedString(@"CANCEL");
    v17 = [v15 actionWithTitle:v16 style:1 handler:0];
    [v11 addAction:v17];

    popoverPresentationController = [v11 popoverPresentationController];
    [popoverPresentationController setDelegate:self];
    [popoverPresentationController setPermittedArrowDirections:15];
    [(PUPhotoEditViewController *)self setDisabledToolRevertAlert:v11];
    [(PUPhotoEditViewController *)self presentViewController:v11 animated:1 completion:0];
  }
}

- (id)_toolControllerForTag:(int64_t)tag
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _allTools = [(PUPhotoEditViewController *)self _allTools];
  v5 = [_allTools countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(_allTools);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 toolControllerTag] == tag)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [_allTools countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)validateCommand:(id)command
{
  commandCopy = command;
  v4 = PXNumberPropertyFromCommand();
  if ([commandCopy action] == sel_navigateToSegment_)
  {
    title = [commandCopy title];
    v6 = [title length];

    if (v6)
    {
      if (v4)
      {
        v7 = [(NSDictionary *)self->_toolControllerTagsByKeyCommandNumber objectForKeyedSubscript:v4];
        integerValue = [v7 integerValue];

        v9 = [(PUPhotoEditViewController *)self _toolControllerForTag:integerValue];
        localizedName = [v9 localizedName];
        [commandCopy setTitle:localizedName];

LABEL_9:
        goto LABEL_10;
      }
    }
  }

  if ([commandCopy action] == sel_toggleEditor_)
  {
    v9 = PXLocalizedString();
    [commandCopy setTitle:v9];
    goto LABEL_9;
  }

  if ([commandCopy action] == sel_autoEnhanceAssets_)
  {
    [(PUAdjustmentsToolController *)self->_adjustmentsController validateCommand:commandCopy];
  }

LABEL_10:
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel_navigateToSegment_ == action)
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
    if (sel_autoEnhanceAssets_ == action)
    {
      canCopyEdits = [(PUAdjustmentsToolController *)self->_adjustmentsController canPerformAction:action withSender:senderCopy];
    }

    else if (sel_copyAdjustments_ == action)
    {
      canCopyEdits = [(PUPhotoEditViewController *)self canCopyEdits];
    }

    else if (sel_pasteAdjustments_ == action)
    {
      canCopyEdits = [(PUPhotoEditViewController *)self _canPasteEdits];
    }

    else
    {
      v12.receiver = self;
      v12.super_class = PUPhotoEditViewController;
      canCopyEdits = [(PUPhotoEditViewController *)&v12 canPerformAction:action withSender:senderCopy];
    }

    v10 = canCopyEdits;
  }

  return v10;
}

- (void)toggleEditor:(id)editor
{
  if (self->_mainButtonAction == 1)
  {
    [(PUPhotoEditViewController *)self _handleDoneAction:editor];
  }

  else
  {
    [(PUPhotoEditViewController *)self _handleCancelButton:editor];
  }
}

- (void)navigateToSegment:(id)segment
{
  v4 = PXNumberPropertyFromCommand();
  v5 = v4;
  if (v4)
  {
    v9 = v4;
    v6 = [(NSDictionary *)self->_toolControllerTagsByKeyCommandNumber objectForKeyedSubscript:v4];
    integerValue = [v6 integerValue];

    v8 = [(PUPhotoEditViewController *)self _toolControllerForTag:integerValue];
    if (v8)
    {
      [(PUPhotoEditViewController *)self switchToEditingTool:v8 animated:1];
    }

    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)autoEnhanceAssets:(id)assets
{
  [(PUAdjustmentsToolController *)self->_adjustmentsController setInitialAction:1];
  adjustmentsController = self->_adjustmentsController;

  [(PUPhotoEditViewController *)self switchToEditingTool:adjustmentsController animated:1];
}

- (void)rotateAssetsClockwise:(id)clockwise
{
  [(PUCropToolController *)self->_cropController setInitialAction:2];
  cropController = self->_cropController;

  [(PUPhotoEditViewController *)self switchToEditingTool:cropController animated:1];
}

- (void)rotateAssetsCounterclockwise:(id)counterclockwise
{
  [(PUCropToolController *)self->_cropController setInitialAction:1];
  cropController = self->_cropController;

  [(PUPhotoEditViewController *)self switchToEditingTool:cropController animated:1];
}

- (void)setFocusingViewForInteraction:(BOOL)interaction exemptVideoScrubber:(BOOL)scrubber
{
  interactionCopy = interaction;
  v7 = +[PUPhotoEditProtoSettings sharedInstance];
  hideUIForInteractionEnabled = [v7 hideUIForInteractionEnabled];

  if (((hideUIForInteractionEnabled & 1) != 0 || self->_currentEditingTool == &self->_photoStylesToolController->super) && (!interactionCopy || !UIAccessibilityIsVoiceOverRunning() || self->_currentEditingTool == &self->_photoStylesToolController->super) && self->_focusingViewForInteraction != interactionCopy)
  {
    self->_focusingViewForInteraction = interactionCopy;
    v9 = MEMORY[0x1B8C6D660]();
    v10 = &OBJC_IVAR___PUPhotoEditViewController__mainToolbar;
    if (v9)
    {
      v10 = &OBJC_IVAR___PUPhotoEditViewController__swiftToolbarView;
    }

    v11 = *(&self->super.super.super.isa + *v10);
    v12 = +[PUPhotoEditProtoSettings sharedInstance];
    isFocusingViewForInteraction = [(PUPhotoEditViewController *)self isFocusingViewForInteraction];
    if (isFocusingViewForInteraction)
    {
      [v12 hideUIForInteractionFadeOutDuration];
    }

    else
    {
      [v12 hideUIForInteractionFadeInDuration];
    }

    v15 = v14;
    photoEditSpec = [(PUPhotoEditViewController *)self photoEditSpec];
    currentLayoutStyle = [photoEditSpec currentLayoutStyle];

    layoutOrientation = [(PUPhotoEditViewController *)self layoutOrientation];
    LOBYTE(shouldSlideMainToolbarOutOfScreenWhenFocusingForInteractionIfApplicable) = 0;
    v20 = layoutOrientation != 1;
    if (!self->_isImageZooming && currentLayoutStyle != 4)
    {
      shouldSlideMainToolbarOutOfScreenWhenFocusingForInteractionIfApplicable = [(PUPhotoEditToolController *)self->_currentEditingTool shouldSlideMainToolbarOutOfScreenWhenFocusingForInteractionIfApplicable];
      if (shouldSlideMainToolbarOutOfScreenWhenFocusingForInteractionIfApplicable)
      {
        if (layoutOrientation != 1)
        {
          LOBYTE(shouldSlideMainToolbarOutOfScreenWhenFocusingForInteractionIfApplicable) = [v12 shouldMoveToolbarToRevealStylesDPadInLandscapeOrientation];
        }
      }
    }

    v21 = MEMORY[0x1E69DD250];
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __79__PUPhotoEditViewController_setFocusingViewForInteraction_exemptVideoScrubber___block_invoke;
    v26 = &unk_1E7B7B048;
    v29 = !isFocusingViewForInteraction;
    v27 = v11;
    selfCopy = self;
    v30 = shouldSlideMainToolbarOutOfScreenWhenFocusingForInteractionIfApplicable;
    v31 = v20;
    v32 = isFocusingViewForInteraction;
    scrubberCopy = scrubber;
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
  focusViewForInteractionDelayTimer = [(PUPhotoEditViewController *)self focusViewForInteractionDelayTimer];
  [focusViewForInteractionDelayTimer invalidate];

  [(PUPhotoEditViewController *)self setFocusViewForInteractionDelayTimer:0];
}

- (void)_focusViewForInteractionWithDelay
{
  v3 = +[PUPhotoEditProtoSettings sharedInstance];
  hideUIForInteractionEnabled = [v3 hideUIForInteractionEnabled];

  if ((hideUIForInteractionEnabled & 1) != 0 || self->_currentEditingTool == &self->_photoStylesToolController->super)
  {
    focusViewForInteractionDelayTimer = [(PUPhotoEditViewController *)self focusViewForInteractionDelayTimer];

    if (!focusViewForInteractionDelayTimer)
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
        currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
        [currentRunLoop addTimer:v12 forMode:*MEMORY[0x1E695DA28]];

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

- (double)transientBadgeWidthForText:(id)text
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = *MEMORY[0x1E69DB648];
  v3 = MEMORY[0x1E69DB878];
  v4 = *MEMORY[0x1E69DDD00];
  textCopy = text;
  v6 = [v3 preferredFontForTextStyle:v4];
  v12[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [textCopy boundingRectWithSize:0 options:v7 attributes:0 context:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v9 = v8;

  return v9;
}

- (void)flashTransientBadgeWithText:(id)text
{
  textCopy = text;
  [(PUPhotoEditViewController *)self _setTransientStatusBadgeVisible:1];
  [(CEKBadgeTextView *)self->_transientStatusBadge _setText:textCopy];

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

- (void)_setTransientStatusBadgeVisible:(BOOL)visible
{
  transientStatusBadge = self->_transientStatusBadge;
  if (visible)
  {
    if (transientStatusBadge)
    {
      return;
    }

    v5 = objc_alloc(MEMORY[0x1E6993830]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v7 = self->_transientStatusBadge;
    self->_transientStatusBadge = v6;

    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v9 = [systemBackgroundColor colorWithAlphaComponent:0.8];
    [(CEKBadgeTextView *)self->_transientStatusBadge _setFillColor:v9];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v11 = [labelColor colorWithAlphaComponent:0.8];
    [(CEKBadgeTextView *)self->_transientStatusBadge _setContentColor:v11];

    [(CEKBadgeTextView *)self->_transientStatusBadge setTranslatesAutoresizingMaskIntoConstraints:0];
    view = [(PUPhotoEditViewController *)self view];
    [view addSubview:self->_transientStatusBadge];

    view2 = [(PUPhotoEditViewController *)self view];
    [(NSArray *)view2 setNeedsUpdateConstraints];
    transientStatusBadgeConstraints = view2;
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
  _isPreviewingOriginal = [(PUPhotoEditViewController *)self _isPreviewingOriginal];
  [(PUPhotoEditViewController *)self _setTransientStatusBadgeVisible:_isPreviewingOriginal];
  if (_isPreviewingOriginal)
  {
    previewRenderType = [(PUPhotoEditViewController *)self previewRenderType];
    if (previewRenderType == 2)
    {
      v5 = @"PHOTOEDIT_PREVIEWING_CROPPED_ORIGINAL";
    }

    else
    {
      if (previewRenderType != 1)
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
    compositionController = [(PUPhotoEditViewController *)self compositionController];
    [MEMORY[0x1E69BE360] synchronousInputSizeForCompositionController:compositionController];
    v5 = v4;
    v7 = v6;
    cropAdjustmentController = [compositionController cropAdjustmentController];
    if (cropAdjustmentController)
    {
      cropAdjustmentController2 = [compositionController cropAdjustmentController];
      v10 = [cropAdjustmentController2 isCropIdentityForImageSize:{v5, v7}];
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

    aggregateSession = [(PUPhotoEditViewController *)self aggregateSession];
    [aggregateSession setToggledOriginal:1];
  }

  else
  {
    v11 = 0;
  }

  originalImageEditSource = [(PUPhotoEditViewController *)self originalImageEditSource];

  if (originalImageEditSource)
  {

    [(PUPhotoEditViewController *)self setPreviewRenderType:v11];
  }
}

- (void)setPreviewRenderType:(int64_t)type
{
  if (self->_previewRenderType != type)
  {
    v30 = v6;
    v31 = v5;
    v32 = v3;
    v33 = v4;
    self->_previewRenderType = type;
    if ([(PUPhotoEditViewController *)self _isPreviewingOriginal])
    {
      originalImageEditSource = [(PUPhotoEditViewController *)self originalImageEditSource];
      if (originalImageEditSource && (v10 = originalImageEditSource, v11 = [(PUPhotoEditViewController *)self workImageVersion], v10, v11 != 1))
      {
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __50__PUPhotoEditViewController_setPreviewRenderType___block_invoke;
        v28[3] = &unk_1E7B7AFD0;
        v28[4] = self;
        v28[5] = type;
        v29 = 1;
        [(PUPhotoEditViewController *)self asShotCompositionController:v28];
      }

      else
      {
        photo = [(PUPhotoEditViewController *)self photo];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          photo2 = [(PUPhotoEditViewController *)self photo];
        }

        else
        {
          photo2 = 0;
        }

        if (+[PUPhotoEditSupport currentDeviceShouldAllowRawDecode](PUPhotoEditSupport, "currentDeviceShouldAllowRawDecode") && [photo2 shouldUseRAWResourceAsUnadjustedEditBase])
        {
          pipelineFiltersForRAWShowingOriginalWithGeometry = [MEMORY[0x1E69BDEF0] pipelineFiltersForRAWShowingOriginalWithGeometry];
        }

        else
        {
          _defaultRenderPipelineFiltersForCurrentMode = [(PUPhotoEditViewController *)self _defaultRenderPipelineFiltersForCurrentMode];
          pipelineFiltersForShowingOriginalWithGeometry = [MEMORY[0x1E69BDEF0] pipelineFiltersForShowingOriginalWithGeometry];
          pipelineFiltersForRAWShowingOriginalWithGeometry = [_defaultRenderPipelineFiltersForCurrentMode arrayByAddingObjectsFromArray:pipelineFiltersForShowingOriginalWithGeometry];
        }

        if (pipelineFiltersForRAWShowingOriginalWithGeometry)
        {
          [(NUMediaView *)self->_mediaView setPipelineFilters:pipelineFiltersForRAWShowingOriginalWithGeometry];
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
        view = [(PUPhotoEditViewController *)self view];
        v16 = [view snapshotViewAfterScreenUpdates:0];

        [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
        view2 = [(PUPhotoEditViewController *)self view];
        [view2 addSubview:v16];

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

- (void)setShouldBePreviewingOriginal:(BOOL)original
{
  if (self->_shouldBePreviewingOriginal != original)
  {
    originalCopy = original;
    self->_shouldBePreviewingOriginal = original;
    if (original)
    {
      [(PUPhotoEditViewController *)self _loadOriginalImageIfNeeded];
      _livePhotoGestureRecognizer = [(PUPhotoEditViewController *)self _livePhotoGestureRecognizer];
      [_livePhotoGestureRecognizer pu_cancel];
    }

    [(PUPhotoEditViewController *)self _updatePreviewingOriginal];
    originalImageEditSource = [(PUPhotoEditViewController *)self originalImageEditSource];

    if (originalImageEditSource)
    {
      [(PUPhotoEditViewController *)self _updateMainActionButtonAnimated:0];
      [(PUPhotoEditViewController *)self _updateShowOriginalButtonAnimated:0];
    }

    if (originalCopy)
    {
      photo = [(PUPhotoEditViewController *)self photo];
      isLivePhoto = [photo isLivePhoto];

      if ((isLivePhoto & 1) == 0)
      {
        mediaView = [(PUPhotoEditViewController *)self mediaView];
        player = [mediaView player];
        [player pause];
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

- (void)viewControllerSpec:(id)spec didChange:(id)change
{
  if ([change layoutStyleChanged])
  {
    [(PUPhotoEditViewController *)self _updateSpecDependentUIPieces];
    photoEditSpec = [(PUPhotoEditViewController *)self photoEditSpec];
    [(PUPhotoEditToolPickerController *)self->_toolPickerController setParentSpec:photoEditSpec];
  }
}

- (void)_updateLayerModulation
{
  if ([(PUPhotoEditViewController *)self shouldEnableImageModulation])
  {
    v3 = MEMORY[0x1E69C35F0];
    photo = [(PUPhotoEditViewController *)self photo];
    v5 = [v3 optionsForAsset:photo];
    v7 = v6;

    imageLayerModulator = [(PUPhotoEditViewController *)self imageLayerModulator];

    if (!imageLayerModulator)
    {
      px_imageModulationManager = [(PUPhotoEditViewController *)self px_imageModulationManager];
      v10 = [px_imageModulationManager checkoutImageLayerModulatorWithOptions:{v5, v7}];
      [(PUPhotoEditViewController *)self setImageLayerModulator:v10];
    }

    imageLayerModulator2 = [(PUPhotoEditViewController *)self imageLayerModulator];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __51__PUPhotoEditViewController__updateLayerModulation__block_invoke;
    v17[3] = &unk_1E7B7F3B8;
    v17[4] = self;
    [imageLayerModulator2 performChanges:v17];

    px_imageModulationManager2 = [(PUPhotoEditViewController *)self px_imageModulationManager];
    livePhotoViewModulator = [(PUPhotoEditViewController *)self livePhotoViewModulator];
    [px_imageModulationManager2 checkInLivePhotoViewModulator:livePhotoViewModulator];

    px_imageModulationManager3 = [(PUPhotoEditViewController *)self px_imageModulationManager];
    v15 = [px_imageModulationManager3 checkoutLivePhotoViewModulatorWithOptions:{v5, v7}];

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

  photo = [(PUPhotoEditViewController *)self photo];
  v4 = ([photo mediaSubtypes] & 0x200) == 0;

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
  isStandardVideo = [(PUPhotoEditViewController *)self isLoopingVideo]|| [(PUPhotoEditViewController *)self isStandardVideo];
  valuesCalculator = [(PUPhotoEditViewController *)self valuesCalculator];

  v5 = 0;
  if (valuesCalculator && !isStandardVideo)
  {
    imageProperties = [(PUPhotoEditViewController *)self imageProperties];
    if ((imageProperties && (v7 = imageProperties, v8 = MEMORY[0x1E69C4320], -[PUPhotoEditViewController imageProperties](self, "imageProperties"), v9 = objc_claimAutoreleasedReturnValue(), LODWORD(v8) = [v8 photoWasTakenWithoutFlashWithImageProperties:v9], v9, v7, !v8) || (-[PUPhotoEditViewController compositionController](self, "compositionController"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "redEyeAdjustmentController"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "hasCorrections"), v11, v10, v12)) && (-[PUPhotoEditViewController photo](self, "photo"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "playbackStyle"), v13, v14 != 5))
    {
      photo = [(PUPhotoEditViewController *)self photo];
      v5 = [photo playbackVariation] != 3;
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

- (void)_updateLayoutOrientationWithViewSize:(CGSize)size transitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  photoEditSpec = [(PUPhotoEditViewController *)self photoEditSpec];
  currentLayoutStyle = [photoEditSpec currentLayoutStyle];

  view = [(PUPhotoEditViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  traitCollection = [windowScene traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (currentLayoutStyle == 4)
  {
    v12 = 3;
  }

  else
  {
    view2 = [(PUPhotoEditViewController *)self view];
    window2 = [view2 window];
    windowScene2 = [window2 windowScene];
    interfaceOrientation = [windowScene2 interfaceOrientation];

    if (interfaceOrientation != 3)
    {
      if (interfaceOrientation == 4)
      {
        if (MEMORY[0x1B8C6D660]())
        {
          interfaceOrientation = 2;
        }

        else
        {
          interfaceOrientation = 3;
        }
      }

      else
      {
        interfaceOrientation = 1;
      }
    }

    if (userInterfaceIdiom == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = interfaceOrientation;
    }
  }

  [(PUPhotoEditViewController *)self setLayoutOrientation:v12 withTransitionCoordinator:coordinatorCopy];
}

- (void)_updateSubviewsOrdering
{
  view = [(PUPhotoEditViewController *)self view];
  v3 = MEMORY[0x1B8C6D660]();
  v4 = &OBJC_IVAR___PUPhotoEditViewController__mainToolbar;
  if (v3)
  {
    v4 = &OBJC_IVAR___PUPhotoEditViewController__swiftToolbarView;
  }

  v5 = *(&self->super.super.super.isa + *v4);
  [view bringSubviewToFront:self->_mediaView];
  [view bringSubviewToFront:self->_placeholderImageView];
  if (self->_mainToolbarShadow)
  {
    [view bringSubviewToFront:?];
  }

  if (self->_toolControlShadow)
  {
    [view bringSubviewToFront:?];
  }

  view2 = [(UIViewController *)self->_currentTool view];
  [view bringSubviewToFront:view2];

  if (MEMORY[0x1B8C6D660]())
  {
    outOfNavBarCenterView = [(PUPhotoEditViewController *)self outOfNavBarCenterView];

    if (outOfNavBarCenterView)
    {
      outOfNavBarCenterView2 = [(PUPhotoEditViewController *)self outOfNavBarCenterView];
      [view bringSubviewToFront:outOfNavBarCenterView2];
    }
  }

  if (![(PUPhotoEditViewController *)self _actionButtonsGoInTopToolbar])
  {
    [view bringSubviewToFront:self->_cancelButton];
    [view bringSubviewToFront:self->_mainActionButton];
  }

  videoScrubberView = [(PUPhotoEditViewController *)self videoScrubberView];
  [view bringSubviewToFront:videoScrubberView];

  playPauseButton = [(PUPhotoEditViewController *)self playPauseButton];
  [view bringSubviewToFront:playPauseButton];

  [view bringSubviewToFront:self->_transientStatusBadge];
  [view bringSubviewToFront:self->_assetTypeBadge];
  [view bringSubviewToFront:v5];
  [view bringSubviewToFront:self->_secondaryToolbar];
  if ([(PUPhotoEditViewController *)self _isInEditRevertTransitionSnapshotVisible])
  {
    inEditRevertTransitionSnapshot = [(PUPhotoEditViewController *)self inEditRevertTransitionSnapshot];
    [view bringSubviewToFront:inEditRevertTransitionSnapshot];
  }

  [view bringSubviewToFront:self->_progressEventBlockingView];
  [view bringSubviewToFront:self->_progressIndicatorView];
  perfHUD = [(PUPhotoEditViewController *)self perfHUD];
  [view bringSubviewToFront:perfHUD];

  sceneHUD = [(PUPhotoEditViewController *)self sceneHUD];
  [view bringSubviewToFront:sceneHUD];
}

- (void)_updatePlaceholderImage
{
  placeholderImage = [(PUPhotoEditViewController *)self placeholderImage];
  if (placeholderImage)
  {
    placeholderImageView = self->_placeholderImageView;
    if (!placeholderImageView)
    {
      v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:placeholderImage];
      v6 = self->_placeholderImageView;
      self->_placeholderImageView = v5;

      [(UIImageView *)self->_placeholderImageView setContentMode:1];
      [(UIImageView *)self->_placeholderImageView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIImageView *)self->_placeholderImageView setPreferredImageDynamicRange:2];
      self->_placeholderImageViewTransitioningOut = 0;
      view = [(PUPhotoEditViewController *)self view];
      [view addSubview:self->_placeholderImageView];

      v8 = MEMORY[0x1E69C35F0];
      photo = [(PUPhotoEditViewController *)self photo];
      v10 = [v8 optionsForAsset:photo];
      v12 = v11;

      px_imageModulationManager = [(PUPhotoEditViewController *)self px_imageModulationManager];
      v14 = [px_imageModulationManager checkoutImageLayerModulatorWithOptions:{v10, v12}];

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
    placeholderImageLayerModulator = [(PUPhotoEditViewController *)self placeholderImageLayerModulator];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __52__PUPhotoEditViewController__updatePlaceholderImage__block_invoke_2;
    v19[3] = &unk_1E7B7F3B8;
    v19[4] = self;
    [placeholderImageLayerModulator performChanges:v19];

    [(PUPhotoEditViewController *)self _updateSubviewsOrdering];
  }

  trimController = [(PUPhotoEditMediaToolController *)self->_mediaToolController trimController];
  [trimController setPlaceholderImage:placeholderImage];
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

- (void)updateProgressIndicatorAnimated:(BOOL)animated
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

  resourceLoader = [(PUPhotoEditViewController *)self resourceLoader];
  resourcesAvailability = [resourceLoader resourcesAvailability];

  if (resourcesAvailability == 1)
  {
    ++v4;
  }

  resourceLoader2 = [(PUPhotoEditViewController *)self resourceLoader];
  resourcesAvailability2 = [resourceLoader2 resourcesAvailability];

  if (resourcesAvailability2 == 2)
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

  isCachingVideo = [(PUPhotoEditViewController *)self isCachingVideo];
  v13 = 64;
  if (!isCachingVideo)
  {
    v13 = 0;
  }

  v14 = v10 | v13;
  isRunningAutoCalculators = [(PUPhotoEditViewController *)self isRunningAutoCalculators];
  v16 = 4;
  if (!isRunningAutoCalculators)
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

  _isSaveProgressAvailable = [(PUPhotoEditViewController *)self _isSaveProgressAvailable];
  v22 = 1024;
  if (!_isSaveProgressAvailable)
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

  isBusy = [(PUCleanupToolController *)self->_cleanupController isBusy];
  v26 = isBusy;
  v27 = 2048;
  if (!isBusy)
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
    if (!isBusy)
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

  px_isVisible = [(PUPhotoEditViewController *)self px_isVisible];
  v32 = (v24 & 0x7EB) != 0 || (v24 & 0x14) == 4;
  v33 = v32 || v26;
  if (px_isVisible)
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

  isDeterminate = (~v24 & 0x480) == 0 || (v24 & 0x23) != 0;
  if (((isDeterminate | progressIndicatorView) & 1) == 0)
  {
    isDeterminate = [(PUProgressIndicatorView *)v41 isDeterminate];
    v41 = self->_progressIndicatorView;
  }

  [(PUProgressIndicatorView *)v41 setDeterminate:isDeterminate];
  isStandardVideo = [(PUPhotoEditViewController *)self isStandardVideo];
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
    if (isStandardVideo)
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

- (id)debugStringDescribingProgressReasons:(unint64_t)reasons
{
  reasonsCopy = reasons;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (reasonsCopy)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "checkingForDownload"];
    [v4 addObject:v8];

    if ((reasonsCopy & 2) == 0)
    {
LABEL_3:
      if ((reasonsCopy & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((reasonsCopy & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "downloadingResources"];
  [v4 addObject:v9];

  if ((reasonsCopy & 4) == 0)
  {
LABEL_4:
    if ((reasonsCopy & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "autocalculators"];
  [v4 addObject:v10];

  if ((reasonsCopy & 8) == 0)
  {
LABEL_5:
    if ((reasonsCopy & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "autoEnhanceCalculations"];
  [v4 addObject:v11];

  if ((reasonsCopy & 0x10) == 0)
  {
LABEL_6:
    if ((reasonsCopy & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "transitioningToAutoCalculators"];
  [v4 addObject:v12];

  if ((reasonsCopy & 0x20) == 0)
  {
LABEL_7:
    if ((reasonsCopy & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "reverting"];
  [v4 addObject:v13];

  if ((reasonsCopy & 0x40) == 0)
  {
LABEL_8:
    if ((reasonsCopy & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "cachingVideo"];
  [v4 addObject:v14];

  if ((reasonsCopy & 0x80) == 0)
  {
LABEL_9:
    if ((reasonsCopy & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "waitingToDismiss"];
  [v4 addObject:v15];

  if ((reasonsCopy & 0x100) == 0)
  {
LABEL_10:
    if ((reasonsCopy & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "loadingCrop"];
  [v4 addObject:v16];

  if ((reasonsCopy & 0x200) == 0)
  {
LABEL_11:
    if ((reasonsCopy & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "burningTrim"];
  [v4 addObject:v17];

  if ((reasonsCopy & 0x400) == 0)
  {
LABEL_12:
    if ((reasonsCopy & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "saving"];
  [v4 addObject:v18];

  if ((reasonsCopy & 0x800) != 0)
  {
LABEL_13:
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "cleaningUp"];
    [v4 addObject:v5];
  }

LABEL_14:
  v6 = [v4 componentsJoinedByString:{@", "}];

  return v6;
}

- (void)_updateProgressIndicatorInteractionDisabledWithReason:(int64_t)reason showsIndicator:(BOOL)indicator isSavingWithProgress:(BOOL)progress
{
  indicatorCopy = indicator;
  v24 = *MEMORY[0x1E69E9840];
  progressIndicatorInteractionDisablingToken = self->_progressIndicatorInteractionDisablingToken;
  if (reason)
  {
    v9 = PLPhotoEditGetLog();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (progressIndicatorInteractionDisablingToken)
    {
      if (v10)
      {
        v22 = 67109120;
        reasonCopy2 = reason;
        _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEFAULT, "Interaction still disabled for reason: %d", &v22, 8u);
      }
    }

    else
    {
      if (v10)
      {
        v22 = 67109120;
        reasonCopy2 = reason;
        _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEFAULT, "Disabling user interaction for photo edit progress indicator for reason: %d", &v22, 8u);
      }

      v19 = [PUInterfaceManager beginDisablingUserInteractionForReason:reason withExpectedTimeout:180.0];
      v9 = self->_progressIndicatorInteractionDisablingToken;
      self->_progressIndicatorInteractionDisablingToken = v19;
    }
  }

  else
  {
    progressCopy = progress;
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

    if (indicatorCopy && progressCopy)
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
      view = [(PUPhotoEditViewController *)self view];
      [view insertSubview:self->_progressEventBlockingView belowSubview:self->_progressIndicatorView];

      [(PUPhotoEditViewController *)self _updateProgressEventBlockingViewConstraints];
      progressEventBlockingViewConstraints = [(PUPhotoEditViewController *)self view];
      [progressEventBlockingViewConstraints setNeedsLayout];
      goto LABEL_20;
    }
  }

  if (!indicatorCopy)
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

- (void)_hideProgressIndicatorImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
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
    [(PUProgressIndicatorView *)v10 endShowingProgressImmediately:immediatelyCopy animated:1 withCompletionHandler:v9];
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
  view = [(PUPhotoEditViewController *)self view];
  [view addSubview:self->_progressIndicatorView];

  [(PUPhotoEditViewController *)self _updateSubviewsOrdering];
  view2 = [(PUPhotoEditViewController *)self view];
  [view2 setNeedsUpdateConstraints];
}

- (BOOL)isIpadLayout
{
  photoEditSpec = [(PUPhotoEditViewController *)self photoEditSpec];
  v3 = [photoEditSpec currentLayoutStyle] == 4;

  return v3;
}

- (void)updateInteractions
{
  if (MEMORY[0x1B8C6D660](self, a2))
  {
    toolSelectorToolbarPocketInteraction = self->_toolSelectorToolbarPocketInteraction;
    if (toolSelectorToolbarPocketInteraction)
    {
      view = [(_UIScrollPocketInteraction *)toolSelectorToolbarPocketInteraction view];
      [view removeInteraction:self->_toolSelectorToolbarPocketInteraction];

      v5 = self->_toolSelectorToolbarPocketInteraction;
      self->_toolSelectorToolbarPocketInteraction = 0;
    }
  }
}

- (UIEdgeInsets)_mediaViewEdgeInsetsWithGeometry:(id)geometry
{
  geometryCopy = geometry;
  if ([(PUPhotoEditViewController *)self _shouldUseCropPlaceholderViewFrame])
  {
    [(PUPhotoEditViewController *)self lastKnownPreviewImageSize];
    [(PUPhotoEditViewController *)self _cropPlaceholderViewFrameForImageSize:?];
    view = [(PUPhotoEditViewController *)self view];
    [view bounds];
    PXEdgeInsetsBetweenRects();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    goto LABEL_31;
  }

  photoEditSpec = [(PUPhotoEditViewController *)self photoEditSpec];
  [photoEditSpec layoutReferenceSize];
  v16 = v15;
  photoEditSpec2 = [(PUPhotoEditViewController *)self photoEditSpec];
  [photoEditSpec2 layoutReferenceSize];
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

  layoutOrientation = [(PUPhotoEditViewController *)self layoutOrientation];
  view2 = [(PUPhotoEditViewController *)self view];
  [PUPhotoEditLayoutSupport topToolbarVerticalOffsetForLayoutOrientation:layoutOrientation view:view2];

  view3 = [(PUPhotoEditViewController *)self view];
  [view3 safeAreaInsets];

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

  isIpadLayout = [(PUPhotoEditViewController *)self isIpadLayout];
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

  if ([(PUPhotoEditViewController *)self layoutOrientation]== 1 && !isIpadLayout)
  {
    goto LABEL_12;
  }

  view4 = [(PUPhotoEditToolController *)self->_currentEditingTool view];
  [view4 frame];
  v39 = v36 + v38;

  view5 = [(PUPhotoEditToolController *)self->_currentEditingTool view];
  [view5 frame];
  v42 = v35 + v41;

LABEL_13:
  if (![(PUPhotoEditToolController *)self->_currentEditingTool handlesMediaViewInsets])
  {
    mediaView = [(PUPhotoEditViewController *)self mediaView];
    [mediaView bounds];
    v49 = v48;
    v51 = v50;
    v85 = v53;
    v86 = v52;

    [geometryCopy size];
    NUPixelSizeToCGSize();
    if (*MEMORY[0x1E695F060] == v55 && *(MEMORY[0x1E695F060] + 8) == v54)
    {
      [(PUPhotoEditViewController *)self lastKnownPreviewImageSize];
    }

    else
    {
      [geometryCopy size];
      NUPixelSizeToCGSize();
    }

    pixelWidth = v56;
    pixelHeight = v57;
    if (v56 < 1.0 || v57 < 1.0)
    {
      photo = [(PUPhotoEditViewController *)self photo];
      pixelWidth = [photo pixelWidth];

      photo2 = [(PUPhotoEditViewController *)self photo];
      pixelHeight = [photo2 pixelHeight];
    }

    if (pixelWidth >= 1.0 && pixelHeight >= 1.0)
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
  mediaView = [(PUPhotoEditViewController *)self mediaView];
  _geometry = [mediaView _geometry];
  [(PUPhotoEditViewController *)self _mediaViewEdgeInsetsWithGeometry:_geometry];
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
  layoutOrientation = [(PUPhotoEditViewController *)self layoutOrientation];
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
    photoEditSpec = [(PUPhotoEditViewController *)self photoEditSpec];
    currentLayoutStyle = [photoEditSpec currentLayoutStyle];

    if (currentLayoutStyle == 4)
    {
      v10 = dbl_1B3D0CF60[layoutOrientation == 1];
      v12 = v10;
    }

    else if (layoutOrientation == 1)
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
      _allTools = [(PUPhotoEditViewController *)self _allTools];
      v19 = [_allTools countByEnumeratingWithState:&v23 objects:v27 count:16];
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
              objc_enumerationMutation(_allTools);
            }

            [*(*(&v23 + 1) + 8 * v22++) mediaViewInsetsUpdated];
          }

          while (v20 != v22);
          v20 = [_allTools countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v20);
      }
    }
  }
}

- (void)_updateMediaViewLayoutWithCoordinator:(id)coordinator layoutOrientation:(int64_t)orientation
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __85__PUPhotoEditViewController__updateMediaViewLayoutWithCoordinator_layoutOrientation___block_invoke;
  v4[3] = &unk_1E7B7DC38;
  v4[4] = self;
  [coordinator animateAlongsideTransition:v4 completion:0];
}

- (void)_updateShowOriginalButtonAnimated:(BOOL)animated
{
  if (!self->_showOriginalButton)
  {
    return;
  }

  _hasUnsavedChanges = [(PUPhotoEditViewController *)self _hasUnsavedChanges];
  photo = [(PUPhotoEditViewController *)self photo];
  if (![photo isAdjusted])
  {

    goto LABEL_8;
  }

  workImageVersion = [(PUPhotoEditViewController *)self workImageVersion];

  if (workImageVersion != 1 || ![(PUPhotoEditViewController *)self _canCurrentCompositionControllerBeReverted])
  {
LABEL_8:
    if ([(PUPhotoEditViewController *)self workImageVersion]!= 1)
    {
      _hasUnsavedChanges |= [(PUPhotoEditViewController *)self _isReadyToRender];
    }

    goto LABEL_10;
  }

  _hasUnsavedChanges = 1;
LABEL_10:
  showOriginalButton = self->_showOriginalButton;

  [(PUPhotoEditToolbarButton *)showOriginalButton setEnabled:_hasUnsavedChanges & 1];
}

- (void)_updateMoreButtonAnimated:(BOOL)animated
{
  animatedCopy = animated;
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

    [(PUPhotoEditViewController *)self configureEnablenessOfControlButton:moreButton animated:animatedCopy canVisuallyDisable:1];
  }
}

- (void)_updateUndoRedoButtonsAnimated:(BOOL)animated
{
  undoManager = [(PUPhotoEditViewController *)self undoManager];
  -[PUPhotoEditToolbarButton setEnabled:](self->_undoButton, "setEnabled:", [undoManager canUndo]);
  -[PUPhotoEditToolbarButton setEnabled:](self->_redoButton, "setEnabled:", [undoManager canRedo]);
}

- (void)_updateCancelButtonAnimated:(BOOL)animated
{
  isRevertingToOriginal = [(PUPhotoEditViewController *)self isRevertingToOriginal];
  [(PUPhotoEditNotchButton *)self->_cancelButton setEnabled:!isRevertingToOriginal];
  if (MEMORY[0x1B8C6D660]([(UIBarButtonItem *)self->_cancelButtonItem setEnabled:!isRevertingToOriginal]) && [(PUPhotoEditViewController *)self _actionButtonsGoInTopToolbar])
  {
    v7 = PULocalizedString(@"PHOTOEDIT_TOOLBAR_CANCEL_ACCESSIBILITY");
    [(UIBarButtonItem *)self->_cancelButtonItem setAccessibilityLabel:v7];
    [(UIBarButtonItem *)self->_cancelButtonItem setTitle:0];
    imageConfiguration = [(PUPhotoEditViewController *)self imageConfiguration];
    v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark" withConfiguration:imageConfiguration];
    [(UIBarButtonItem *)self->_cancelButtonItem setImage:v6];
  }
}

- (void)_updateMainActionButtonAnimated:(BOOL)animated
{
  _hasUnsavedChanges = [(PUPhotoEditViewController *)self _hasUnsavedChanges];
  v5 = +[PUPhotoEditProtoSettings sharedInstance];
  alwaysShowDoneButton = [v5 alwaysShowDoneButton];

  v7 = alwaysShowDoneButton | _hasUnsavedChanges;
  photo = [(PUPhotoEditViewController *)self photo];
  if ([photo isAdjusted])
  {
    workImageVersion = [(PUPhotoEditViewController *)self workImageVersion];

    if (workImageVersion == 1 && [(PUPhotoEditViewController *)self _canCurrentCompositionControllerBeReverted])
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
  resourceLoader = [(PUPhotoEditViewController *)self resourceLoader];
  resourcesAvailability = [resourceLoader resourcesAvailability];

  if (v12)
  {
    if ((resourcesAvailability != 3) | v7 & 1)
    {
      if (resourcesAvailability != 3)
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
      previewOriginalTimesOut = [v16 previewOriginalTimesOut];

      if ((previewOriginalTimesOut & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  else if (resourcesAvailability != 3)
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
      systemDarkRedColor = [MEMORY[0x1E69DC888] systemDarkRedColor];
      v21 = @"arrow.counterclockwise";
    }

    else
    {
      v19 = PULocalizedString(@"PHOTOEDIT_TOOLBAR_DONE_ACCESSIBILITY");
      systemDarkRedColor = [MEMORY[0x1E69DC888] systemYellowColor];
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
    v42 = systemDarkRedColor;
    v30 = systemDarkRedColor;
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
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
      v26 = @"checkmark";
    }

    else
    {
      v22 = PULocalizedString(@"PHOTOEDIT_TOOLBAR_REVERT_OR_ICON");
      v23 = PULocalizedString(@"PHOTOEDIT_TOOLBAR_REVERT_ACCESSIBILITY");
      blackColor = [MEMORY[0x1E69DC888] whiteColor];
      systemYellowColor = [MEMORY[0x1E69DC888] systemDarkRedColor];
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
    v36 = blackColor;
    v37 = v23;
    v38 = systemYellowColor;
    v28 = systemYellowColor;
    v29 = v23;
    v30 = blackColor;
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

- (BOOL)_canCompositionControllerBeReverted:(id)reverted
{
  v4 = MEMORY[0x1E69BDDE8];
  revertedCopy = reverted;
  v6 = [v4 alloc];
  originalComposition = [(PUPhotoEditViewController *)self originalComposition];
  v8 = [v6 initWithComposition:originalComposition];

  editSourceContentEditingInput = [(PUPhotoEditViewController *)self editSourceContentEditingInput];
  fullSizeImageURL = [editSourceContentEditingInput fullSizeImageURL];

  if (fullSizeImageURL)
  {
    v11 = [objc_alloc(MEMORY[0x1E69C0718]) initWithMediaURL:fullSizeImageURL timeZoneLookup:0];
  }

  else
  {
    v11 = 0;
  }

  v12 = MEMORY[0x1E69C4320];
  photo = [(PUPhotoEditViewController *)self photo];
  v14 = [v12 repairedAsShotCompositionController:v8 forCurrentCompositionController:revertedCopy isLivePhoto:objc_msgSend(photo metadata:{"isLivePhoto"), v11}];

  composition = [v14 composition];
  v16 = [revertedCopy isEqual:composition visualChangesOnly:1];

  return v16 ^ 1;
}

- (BOOL)_canCurrentCompositionControllerBeReverted
{
  compositionController = [(PUPhotoEditViewController *)self compositionController];
  v4 = [(PUPhotoEditViewController *)self _canCompositionControllerBeReverted:compositionController]|| [(PUPhotoEditViewController *)self workImageVersion]!= 1;

  return v4;
}

- (void)_updateModelDependentControlsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(PUPhotoEditToolController *)self->_currentEditingTool isActivelyAdjusting])
  {
    [(PUPhotoEditViewController *)self _updateMainActionButtonAnimated:animatedCopy];
    [(PUPhotoEditViewController *)self _updateShowOriginalButtonAnimated:animatedCopy];
  }

  [(PUPhotoEditViewController *)self _updatePreviewingOriginal];
  [(PUPhotoEditViewController *)self _updateKeyCommands];
  _shouldDisplayRedEyeTool = [(PUPhotoEditViewController *)self _shouldDisplayRedEyeTool];
  redEyeButton = self->_redEyeButton;
  if (redEyeButton)
  {
    v7 = [(PUPhotoEditToolbarButton *)redEyeButton isHidden]^ 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 != _shouldDisplayRedEyeTool)
  {

    [(PUPhotoEditViewController *)self _updateToolbarsAnimated:1];
  }
}

- (void)_updateSpecDependentUIPieces
{
  isFocusingViewForInteraction = [(PUPhotoEditViewController *)self isFocusingViewForInteraction];
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

    view = [(PUPhotoEditViewController *)self view];
    [view setNeedsUpdateConstraints];
  }

  view2 = [(PUPhotoEditViewController *)self view];
  [view2 layoutIfNeeded];

  [(PUPhotoEditViewController *)self _clearBadgeConstraints];
  if (isFocusingViewForInteraction)
  {

    [(PUPhotoEditViewController *)self setFocusingViewForInteraction:1];
  }
}

- (double)imageFrameIntersectionFractionWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  mediaView = [(PUPhotoEditViewController *)self mediaView];
  [mediaView imageFrame];
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

- (double)imageFrameIntersectionFractionWithView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  view = [(PUPhotoEditViewController *)self view];
  [viewCopy convertRect:view toView:{v6, v8, v10, v12}];
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
  mediaView = [(PUPhotoEditViewController *)self mediaView];
  [mediaView imageFrame];
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
    currentTool = [(PUPhotoEditViewController *)self currentTool];
    viewsActivatingMainToolbarShadow = [currentTool viewsActivatingMainToolbarShadow];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v14 = viewsActivatingMainToolbarShadow;
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

    currentTool2 = [(PUPhotoEditViewController *)self currentTool];
    viewsActivatingToolControlShadow = [currentTool2 viewsActivatingToolControlShadow];

    [(PUPhotoEditShadowView *)self->_toolControlShadow setAlpha:0.0];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v23 = viewsActivatingToolControlShadow;
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

- (void)_updateToolbarBackgroundAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(PUPhotoEditToolController *)self->_currentEditingTool setUseGradientBackground:0 animated:animated];
  [(PUPhotoEditMediaToolController *)self->_mediaToolController setUseGradientBackground:0 animated:animatedCopy];
  portraitToolController = self->_portraitToolController;

  [(PUPhotoEditToolController *)portraitToolController setUseGradientBackground:0 animated:animatedCopy];
}

- (void)_updateBackgroundColor
{
  currentEditingTool = self->_currentEditingTool;
  if (!currentEditingTool || ([(PUPhotoEditToolController *)currentEditingTool preferredPreviewBackgroundColor], (photoEditingBackgroundColor = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = +[PUInterfaceManager currentTheme];
    photoEditingBackgroundColor = [v4 photoEditingBackgroundColor];
  }

  view = [(PUPhotoEditViewController *)self view];
  [view setBackgroundColor:photoEditingBackgroundColor];

  if (MEMORY[0x1B8C6D660]())
  {
    mediaView = [(PUPhotoEditViewController *)self mediaView];
    _scrollView = [mediaView _scrollView];
    [_scrollView px_setPocketColorForAllEdges:photoEditingBackgroundColor];
  }
}

- (id)_newToolButtonForTool:(id)tool
{
  toolCopy = tool;
  toolControllerTag = [toolCopy toolControllerTag];
  if (toolControllerTag == 1006)
  {
    _selectionIndicatorType = 0;
  }

  else
  {
    _selectionIndicatorType = [(PUPhotoEditViewController *)self _selectionIndicatorType];
  }

  showsLabelsForToolButtons = [(PUPhotoEditViewController *)self showsLabelsForToolButtons];
  v8 = toolControllerTag != 1006 && showsLabelsForToolButtons;
  photoEditSpec = [(PUPhotoEditViewController *)self photoEditSpec];
  v10 = [PUPhotoEditToolbarButton buttonForTool:toolCopy showingLabel:v8 selectionIndicatorType:_selectionIndicatorType spec:photoEditSpec];

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
  leadingToolbarViews = [(PUPhotoEditToolController *)self->_currentEditingTool leadingToolbarViews];
  v6 = leadingToolbarViews;
  v7 = MEMORY[0x1E695E0F0];
  if (leadingToolbarViews)
  {
    v7 = leadingToolbarViews;
  }

  v8 = v7;

  centerToolbarView = [(PUPhotoEditToolController *)self->_currentEditingTool centerToolbarView];
  trailingToolbarViews = [(PUPhotoEditToolController *)self->_currentEditingTool trailingToolbarViews];
  if ([trailingToolbarViews count])
  {
    [v4 addObjectsFromArray:trailingToolbarViews];
  }

  currentToolControllerIsScrolling = [(PUPhotoEditViewController *)self currentToolControllerIsScrolling];
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
      v15 = currentToolControllerIsScrolling;
      v17 = v16 = centerToolbarView;

      v8 = v17;
      centerToolbarView = v16;
      currentToolControllerIsScrolling = v15;
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

    if (!currentToolControllerIsScrolling)
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
  self->_secondaryCenterView = centerToolbarView;

  self->_toolbarButtonsValid = 1;
}

- (void)_reloadToolbarButtonsIfNeeded
{
  v165 = *MEMORY[0x1E69E9840];
  undoManager = [(PUPhotoEditViewController *)self undoManager];

  undoManager2 = [(PUPhotoEditViewController *)self undoManager];

  _shouldDisplayRedEyeTool = [(PUPhotoEditViewController *)self _shouldDisplayRedEyeTool];
  _enableSpatialMediaEditing = [(PUPhotoEditViewController *)self _enableSpatialMediaEditing];
  if ([(PUPhotoEditViewController *)self _canPresentMarkup])
  {
    _markupGetsItsOwnButton = [(PUPhotoEditViewController *)self _markupGetsItsOwnButton];
  }

  else
  {
    _markupGetsItsOwnButton = 0;
  }

  v4 = +[PUPhotoEditProtoSettings sharedInstance];
  if ([v4 editMenuEnabled])
  {
    v5 = 1;
LABEL_10:
    v137 = v5;
    goto LABEL_12;
  }

  if ([(PUEditPluginSession *)self->_pluginSession isAvailableExcludingMarkup:_markupGetsItsOwnButton])
  {
    _shouldHideToolsForQuickCrop = [(PUPhotoEditViewController *)self _shouldHideToolsForQuickCrop];
    if (!_shouldHideToolsForQuickCrop && !_enableSpatialMediaEditing)
    {
      LOBYTE(_shouldHideToolsForQuickCrop) = [(PUPhotoEditViewController *)self isSpatialMedia];
    }

    v5 = !_shouldHideToolsForQuickCrop;
    goto LABEL_10;
  }

  v137 = 0;
LABEL_12:

  _shouldShowRawDecodeBadge = [(PUPhotoEditViewController *)self _shouldShowRawDecodeBadge];
  v8 = self->_undoButton != 0;
  v9 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (_markupGetsItsOwnButton)
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
  _shouldShowProResBadge = [(PUPhotoEditViewController *)self _shouldShowProResBadge];
  objc_initWeak(&location, self);
  isIpadLayout = [(PUPhotoEditViewController *)self isIpadLayout];
  v21 = _shouldShowRawDecodeBadge ^ v17;
  v22 = v17 ^ _shouldShowProResBadge;
  v23 = isIpadLayout && self->_currentEditingTool != &self->_cropController->super;
  if ((!self->_toolbarButtonsValid | (_shouldDisplayRedEyeTool ^ v14) | (undoManager != 0) ^ v8 | (v137 ^ v15) | _markupGetsItsOwnButton ^ (markupButton != 0) | v21 | v22) & 1) != 0 || ((v23 ^ (self->_showOriginalButton != 0)))
  {
    _allTools = [(PUPhotoEditViewController *)self _allTools];
    v24 = &OBJC_IVAR___PUParallaxLayerStackViewModel__backlightLuminance;
    if (!self->_coreToolButtons)
    {
      array = [MEMORY[0x1E695DF70] array];
      array2 = [MEMORY[0x1E695DF70] array];
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      *&buf[24] = 0;
      v162[0] = MEMORY[0x1E69E9820];
      v162[1] = 3221225472;
      v162[2] = __58__PUPhotoEditViewController__reloadToolbarButtonsIfNeeded__block_invoke;
      v162[3] = &unk_1E7B7AE90;
      v162[4] = buf;
      [_allTools enumerateObjectsUsingBlock:v162];
      v157[0] = MEMORY[0x1E69E9820];
      v157[1] = 3221225472;
      v157[2] = __58__PUPhotoEditViewController__reloadToolbarButtonsIfNeeded__block_invoke_2;
      v157[3] = &unk_1E7B7AEB8;
      v157[4] = self;
      v161 = buf;
      v158 = _allTools;
      v27 = array;
      v159 = v27;
      v28 = array2;
      v160 = v28;
      [v158 enumerateObjectsUsingBlock:v157];
      v29 = [v27 copy];
      coreToolButtons = self->_coreToolButtons;
      self->_coreToolButtons = v29;

      v31 = [v28 copy];
      coreToolButtonViews = self->_coreToolButtonViews;
      self->_coreToolButtonViews = v31;

      v33 = [dictionary copy];
      toolTagLabelMap = self->_toolTagLabelMap;
      self->_toolTagLabelMap = v33;

      _Block_object_dispose(buf, 8);
      v24 = &OBJC_IVAR___PUParallaxLayerStackViewModel__backlightLuminance;
    }

    isIpadLayout2 = [(PUPhotoEditViewController *)self isIpadLayout];
    toolPickerController = self->_toolPickerController;
    if (!toolPickerController)
    {
      v37 = [[PUPhotoEditToolPickerController alloc] initWithLayoutDirection:[(PUPhotoEditViewController *)self currentToolPickerLayoutDirection] style:0 blurredBackground:isIpadLayout2];
      v38 = self->_toolPickerController;
      self->_toolPickerController = v37;

      toolPickerController = self->_toolPickerController;
    }

    [(PUPhotoEditToolPickerController *)toolPickerController setToolButtons:*(&self->super.super.super.isa + v24[620])];
    systemGray4Color = [MEMORY[0x1E69DC888] systemGray4Color];
    v40 = [systemGray4Color colorWithAlphaComponent:0.6];

    if (isIpadLayout2)
    {
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    [(PUPhotoEditToolPickerController *)self->_toolPickerController setBackgroundColor:v41];
    photoEditSpec = [(PUPhotoEditViewController *)self photoEditSpec];
    [(PUPhotoEditToolPickerController *)self->_toolPickerController setParentSpec:photoEditSpec];

    assetTypeBadge = self->_assetTypeBadge;
    if (!_shouldShowRawDecodeBadge && !_shouldShowProResBadge)
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
        redEyeController = [(PUPhotoEditViewController *)self redEyeController];
        v56 = [(PUPhotoEditViewController *)self _newToolButtonForTool:redEyeController];
        v57 = self->_redEyeButton;
        self->_redEyeButton = v56;

        [(PUPhotoEditToolbarButton *)self->_redEyeButton setIsTopToolbarButton:1];
        currentTool = self->_currentTool;
        redEyeController2 = [(PUPhotoEditViewController *)self redEyeController];
        LODWORD(currentTool) = currentTool == redEyeController2;

        if (currentTool)
        {
          [(PUPhotoEditToolbarButton *)self->_redEyeButton setSelected:1];
        }

        v54 = self->_redEyeButton;
      }

      [(PUPhotoEditToolbarButton *)v54 setHidden:!_shouldDisplayRedEyeTool];
      showOriginalButton = self->_showOriginalButton;
      if (showOriginalButton == 0 && v23)
      {
        v61 = PULocalizedString(@"PHOTOEDIT_SHOW_ORIGINAL_ACCESSIBILITY_LABEL");
        photoEditSpec2 = [(PUPhotoEditViewController *)self photoEditSpec];
        v63 = [PUPhotoEditToolbarButton buttonWithImageNamed:@"square.and.line.vertical.and.square.filled" selectedImageNamed:0 accessibilityLabel:v61 spec:photoEditSpec2];
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
      if (undoButton || !undoManager)
      {
        if (undoButton && !undoManager)
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
        photoEditSpec3 = [(PUPhotoEditViewController *)self photoEditSpec];
        v69 = [PUPhotoEditToolbarButton buttonWithImageNamed:v66 selectedImageNamed:0 accessibilityLabel:v67 spec:photoEditSpec3];
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
      if (redoButton || !undoManager2)
      {
        if (redoButton && !undoManager2)
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
        photoEditSpec4 = [(PUPhotoEditViewController *)self photoEditSpec];
        v75 = [PUPhotoEditToolbarButton buttonWithImageNamed:v72 selectedImageNamed:0 accessibilityLabel:v73 spec:photoEditSpec4];
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
        photoEditSpec5 = [(PUPhotoEditViewController *)self photoEditSpec];
        v80 = [PUPhotoEditToolbarButton buttonWithImageNamed:v77 selectedImageNamed:0 accessibilityLabel:v78 spec:photoEditSpec5];
        moreButton = self->_moreButton;
        self->_moreButton = v80;

        [(PUPhotoEditToolbarButton *)self->_moreButton setIsTopToolbarButton:1];
        v82 = +[PUPhotoEditProtoSettings sharedInstance];
        LODWORD(photoEditSpec5) = [v82 editMenuEnabled];

        v83 = self->_moreButton;
        if (photoEditSpec5)
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
      if (v84 == 0 && _markupGetsItsOwnButton)
      {
        v85 = PULocalizedString(@"MARKUP_BUTTON_TITLE");
        photoEditSpec6 = [(PUPhotoEditViewController *)self photoEditSpec];
        v87 = [PUPhotoEditToolbarButton buttonWithImageNamed:@"pencil.tip.crop.circle" selectedImageNamed:0 accessibilityLabel:v85 spec:photoEditSpec6];
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
          v89 = _markupGetsItsOwnButton;
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
        photoEditSpec7 = [(PUPhotoEditViewController *)self photoEditSpec];
        v95 = [PUPhotoEditToolbarButton buttonWithImageNamed:v92 selectedImageNamed:v91 accessibilityLabel:v93 spec:photoEditSpec7];
        zoomButton = self->_zoomButton;
        self->_zoomButton = v95;

        [(PUPhotoEditToolbarButton *)self->_zoomButton setIsTopToolbarButton:1];
        secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
        [(PUPhotoEditToolbarButton *)self->_zoomButton setSelectedColor:secondaryLabelColor];

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

        isStandardVideo = [(PUPhotoEditViewController *)self isStandardVideo];
        if (isStandardVideo)
        {
          photo = [(PUPhotoEditViewController *)self photo];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            isStandardVideo = [(PUPhotoEditViewController *)self _updateMainButtonForSaveAsNewClipMenu];
          }
        }

        if ((MEMORY[0x1B8C6D660](isStandardVideo) & 1) == 0)
        {
          revertConfirmationAlert = [(PUPhotoEditViewController *)self revertConfirmationAlert];

          if (revertConfirmationAlert)
          {
            revertConfirmationAlert2 = [(PUPhotoEditViewController *)self revertConfirmationAlert];
            popoverPresentationController = [revertConfirmationAlert2 popoverPresentationController];
            [popoverPresentationController setSourceView:self->_mainActionButton];

            revertConfirmationAlert3 = [(PUPhotoEditViewController *)self revertConfirmationAlert];
            popoverPresentationController2 = [revertConfirmationAlert3 popoverPresentationController];
            [(PUPhotoEditNotchButton *)self->_mainActionButton bounds];
            [popoverPresentationController2 setSourceRect:?];
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
          cancelConfirmationAlert = [(PUPhotoEditViewController *)self cancelConfirmationAlert];

          if (cancelConfirmationAlert)
          {
            cancelConfirmationAlert2 = [(PUPhotoEditViewController *)self cancelConfirmationAlert];
            popoverPresentationController3 = [cancelConfirmationAlert2 popoverPresentationController];
            [popoverPresentationController3 setSourceView:self->_cancelButton];

            cancelConfirmationAlert3 = [(PUPhotoEditViewController *)self cancelConfirmationAlert];
            popoverPresentationController4 = [cancelConfirmationAlert3 popoverPresentationController];
            [(PUPhotoEditNotchButton *)self->_cancelButton bounds];
            [popoverPresentationController4 setSourceRect:?];
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
    if (!_shouldShowRawDecodeBadge)
    {
LABEL_51:
      memset(buf, 0, 32);
      PXAssetBadgeInfoCreateWithBadges();
      v156[0] = *buf;
      v156[1] = *&buf[16];
      [(PXUIAssetBadgeView *)self->_assetTypeBadge setBadgeInfo:v156];
      view = [(PUPhotoEditViewController *)self view];
      [view addSubview:self->_assetTypeBadge];

      view2 = [(PUPhotoEditViewController *)self view];
      [view2 setNeedsUpdateConstraints];

      [(PXUIAssetBadgeView *)self->_assetTypeBadge setAlpha:0.0];
      goto LABEL_52;
    }

    photo2 = [(PUPhotoEditViewController *)self photo];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v50 = 0;
      goto LABEL_50;
    }

    photo3 = [(PUPhotoEditViewController *)self photo];
    if (photo3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_44:
        v49 = photo3;

        v50 = v49;
LABEL_50:

        [v50 RAWBadgeAttributes];
        goto LABEL_51;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v131 = objc_opt_class();
      v130 = NSStringFromClass(v131);
      px_descriptionForAssertionMessage = [photo3 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:3240 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.photo", v130, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v129 = objc_opt_class();
      v130 = NSStringFromClass(v129);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:3240 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.photo", v130}];
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
  photoEditSpec = [(PUPhotoEditViewController *)self photoEditSpec];
  currentLayoutStyle = [photoEditSpec currentLayoutStyle];

  currentEditingTool = self->_currentEditingTool;
  cropController = self->_cropController;
  if (currentLayoutStyle == 1 && currentEditingTool == cropController)
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

    if (currentLayoutStyle == 1)
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
    trailingToolbarViews = [(PUPhotoEditToolController *)self->_currentEditingTool trailingToolbarViews];
    v15 = trailingToolbarViews;
    if (v7)
    {
      if ([trailingToolbarViews count])
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
        layoutOrientation = [(PUPhotoEditViewController *)self layoutOrientation];
        view = [(PUPhotoEditViewController *)self view];
        [view bounds];
        v20 = [PUPhotoEditLayoutSupport requiresCompactNavBarForLayoutOrientation:layoutOrientation viewWidth:v19];

        if (!v20)
        {
          LOBYTE(v7) = 1;
          goto LABEL_30;
        }

        v7 = PLPhotoEditGetLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          layoutOrientation2 = [(PUPhotoEditViewController *)self layoutOrientation];
          view2 = [(PUPhotoEditViewController *)self view];
          [view2 bounds];
          v24 = [PUPhotoEditLayoutSupport requiresCompactNavBarForLayoutOrientation:layoutOrientation2 viewWidth:v23];
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
  _isQuickCrop = [(PUPhotoEditViewController *)self _isQuickCrop];
  if (_isQuickCrop)
  {
    v3 = +[PUOneUpSettings sharedInstance];
    quickCropHideOtherToolsInEdit = [v3 quickCropHideOtherToolsInEdit];

    LOBYTE(_isQuickCrop) = quickCropHideOtherToolsInEdit;
  }

  return _isQuickCrop;
}

- (void)_updateToolbarsContentPadding
{
  view = [(PUPhotoEditViewController *)self view];
  [view safeAreaInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v26 = v10;

  v11 = *MEMORY[0x1E69DDCE0];
  v12 = *(MEMORY[0x1E69DDCE0] + 8);
  v13 = *(MEMORY[0x1E69DDCE0] + 16);
  v14 = *(MEMORY[0x1E69DDCE0] + 24);
  traitCollection = [(PUPhotoEditViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  layoutOrientation = [(PUPhotoEditViewController *)self layoutOrientation];
  v18 = layoutOrientation - 2;
  v19 = v9 > 0.0 && userInterfaceIdiom == 1;
  v20 = v9 + 15.0;
  if (!v19)
  {
    v20 = v9;
  }

  if (layoutOrientation == 1)
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
    layoutOrientation = [(PUPhotoEditViewController *)self layoutOrientation];
    view = [(PUPhotoEditViewController *)self view];
    [view bounds];
    v7 = ![PUPhotoEditLayoutSupport doneCancelButtonsInNotchAreaForLayoutOrientation:layoutOrientation viewWidth:v10];
  }

  return v7;
}

- (void)_updateToolbarsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v256[1] = *MEMORY[0x1E69E9840];
  photoEditSpec = [(PUPhotoEditViewController *)self photoEditSpec];
  isValid = [photoEditSpec isValid];

  if (!isValid || self->_updatingToolbars)
  {
    return;
  }

  [(PUPhotoEditViewController *)self _loadToolsIfNeeded];
  self->_updatingToolbars = 1;
  view = [(PUPhotoEditViewController *)self view];
  if (!self->_mainToolbar && (MEMORY[0x1B8C6D660]() & 1) == 0)
  {
    v8 = objc_alloc_init(PUPhotoEditToolbar);
    mainToolbar = self->_mainToolbar;
    self->_mainToolbar = v8;

    [(PUPhotoEditToolbar *)self->_mainToolbar setDelegate:self];
    [(PUPhotoEditToolbar *)self->_mainToolbar setupWithLayoutOrientation:[(PUPhotoEditViewController *)self layoutOrientation]];
    [view addSubview:self->_mainToolbar];
    [(PUPhotoEditViewController *)self _updateSubviewsOrdering];
    [view setNeedsUpdateConstraints];
    photoEditSpec2 = [(PUPhotoEditViewController *)self photoEditSpec];
    [photoEditSpec2 toolbarLongSideMargin];
    [(PUPhotoEditToolbar *)self->_mainToolbar setLongSideMargin:?];

    if ([(PUPhotoEditViewController *)self layoutOrientation]== 1)
    {
      traitCollection = [(PUPhotoEditViewController *)self traitCollection];
      userInterfaceIdiom = [traitCollection userInterfaceIdiom];

      if (!userInterfaceIdiom)
      {
        [(PUPhotoEditToolbar *)self->_mainToolbar setUseiPhonePrimaryPortraitHeight:1];
      }
    }
  }

  if (!self->_swiftToolbarView && MEMORY[0x1B8C6D660]())
  {
    [(PUPhotoEditViewController *)self setupSwiftToolbar];
    [(PUPhotoEditViewController *)self _updateSubviewsOrdering];
    [view setNeedsUpdateConstraints];
  }

  if (!self->_mainToolbarShadow)
  {
    v13 = [[PUPhotoEditShadowView alloc] initWithType:0];
    mainToolbarShadow = self->_mainToolbarShadow;
    self->_mainToolbarShadow = v13;

    [(PUPhotoEditShadowView *)self->_mainToolbarShadow setAlpha:0.0];
    [view addSubview:self->_mainToolbarShadow];
  }

  if (!self->_toolControlShadow)
  {
    v15 = [[PUPhotoEditShadowView alloc] initWithType:1];
    toolControlShadow = self->_toolControlShadow;
    self->_toolControlShadow = v15;

    [(PUPhotoEditShadowView *)self->_toolControlShadow setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PUPhotoEditShadowView *)self->_toolControlShadow setAlpha:0.0];
    view2 = [(PUPhotoEditViewController *)self view];
    [view2 addSubview:self->_toolControlShadow];
  }

  v18 = MEMORY[0x1B8C6D660]();
  v19 = v18;
  if (!self->_secondaryToolbar && (v18 & 1) == 0)
  {
    v20 = objc_alloc_init(PUPhotoEditButtonCenteredToolbar);
    secondaryToolbar = self->_secondaryToolbar;
    self->_secondaryToolbar = v20;

    [(PUPhotoEditToolbar *)self->_secondaryToolbar setDelegate:self];
    photoEditSpec3 = [(PUPhotoEditViewController *)self photoEditSpec];
    [(PUPhotoEditToolbar *)self->_secondaryToolbar setPhotoEditSpec:photoEditSpec3];

    [(PUPhotoEditToolbar *)self->_secondaryToolbar setupWithLayoutOrientation:[(PUPhotoEditViewController *)self layoutOrientation]];
    [view addSubview:self->_secondaryToolbar];
    if ([(PUPhotoEditViewController *)self isIpadLayout])
    {
      [(PUPhotoEditToolbar *)self->_secondaryToolbar setUseLargeShortSideHeight:1];
    }
  }

  [(PUPhotoEditViewController *)self _updateSubviewsOrdering];
  [view setNeedsUpdateConstraints];
  v23 = self->_secondaryToolbar;
  if (v23)
  {
    [(PUPhotoEditButtonCenteredToolbar *)v23 setAlpha:0.0];
    if (animatedCopy)
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

      view3 = [(PUPhotoEditViewController *)self view];
      [view3 setNeedsUpdateConstraints];
    }
  }

  v215 = animatedCopy;
  editSource = [(PUPhotoEditViewController *)self editSource];
  if ([editSource mediaType] != 3)
  {

LABEL_30:
    if (![(PUPhotoEditViewController *)self isStandardVideo])
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  photo = [(PUPhotoEditViewController *)self photo];
  isLivePhotoVisibilityAdjustmentAllowed = [photo isLivePhotoVisibilityAdjustmentAllowed];

  if ((isLivePhotoVisibilityAdjustmentAllowed & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_31:
  editSourceContentEditingInput = [(PUPhotoEditViewController *)self editSourceContentEditingInput];

  if (editSourceContentEditingInput)
  {
    selfCopy2 = self;
    if (!self->_mediaToolController)
    {
      v31 = objc_alloc_init(PUPhotoEditMediaToolController);
      mediaToolController = self->_mediaToolController;
      self->_mediaToolController = v31;

      [(PUPhotoEditMediaToolController *)self->_mediaToolController setBackdropViewGroupName:@"PUPhotoEditToolbarGroupName"];
      [(PUPhotoEditViewController *)self _updateSubviewsOrdering];
      [view setNeedsUpdateConstraints];
      v33 = self->_mediaToolController;
      aggregateSession = [(PUPhotoEditViewController *)self aggregateSession];
      [(PUPhotoEditToolController *)v33 setAggregateSession:aggregateSession];

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
  selfCopy2 = self;
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
  portraitToolController = selfCopy2->_portraitToolController;
  v220 = v38;
  if (selfCopy2->_shouldShowPortraitTool)
  {
    if (!portraitToolController)
    {
      v46 = objc_alloc_init(PUPhotoEditPortraitToolController);
      v47 = selfCopy2->_portraitToolController;
      selfCopy2->_portraitToolController = v46;

      [(PUPhotoEditToolController *)selfCopy2->_portraitToolController setDelegate:selfCopy2];
      [(PUPhotoEditPortraitToolController *)selfCopy2->_portraitToolController setBackdropViewGroupName:@"PUPhotoEditToolbarGroupName"];
      view4 = [(PUPhotoEditPortraitToolController *)selfCopy2->_portraitToolController view];
      [(PUPhotoEditPortraitToolController *)selfCopy2->_portraitToolController setLayoutOrientation:[(PUPhotoEditViewController *)selfCopy2 layoutOrientation] withTransitionCoordinator:0];
      v49 = selfCopy2->_coreToolButtons;
      selfCopy2->_coreToolButtons = 0;

      v50 = selfCopy2->_coreToolButtonViews;
      selfCopy2->_coreToolButtonViews = 0;

      v51 = selfCopy2->_toolTagLabelMap;
      selfCopy2->_toolTagLabelMap = 0;

      selfCopy2->_toolbarButtonsValid = 0;
      v39 = 1;
    }
  }

  else if (portraitToolController)
  {
    v52 = selfCopy2->_coreToolButtons;
    selfCopy2->_coreToolButtons = 0;

    v53 = selfCopy2->_coreToolButtonViews;
    selfCopy2->_coreToolButtonViews = 0;

    v54 = selfCopy2->_toolTagLabelMap;
    selfCopy2->_toolTagLabelMap = 0;

    v55 = selfCopy2->_portraitToolController;
    selfCopy2->_portraitToolController = 0;
  }

  v225 = selfCopy2;
  photoStylesToolController = selfCopy2->_photoStylesToolController;
  v217 = v39;
  if (selfCopy2->_shouldShowStylesTool)
  {
    v57 = selfCopy2;
    if (!photoStylesToolController)
    {
      v58 = objc_alloc_init(_TtC15PhotosUIPrivate26PUPhotoStyleToolController);
      v59 = selfCopy2->_photoStylesToolController;
      selfCopy2->_photoStylesToolController = v58;

      [(PUPhotoEditToolController *)selfCopy2->_photoStylesToolController setDelegate:selfCopy2];
      view5 = [(PUPhotoStyleToolController *)selfCopy2->_photoStylesToolController view];
      [(PUPhotoStyleToolController *)selfCopy2->_photoStylesToolController setLayoutOrientation:[(PUPhotoEditViewController *)selfCopy2 layoutOrientation] withTransitionCoordinator:0];
      v61 = selfCopy2->_coreToolButtons;
      selfCopy2->_coreToolButtons = 0;

      v62 = selfCopy2->_coreToolButtonViews;
      selfCopy2->_coreToolButtonViews = 0;

      v63 = selfCopy2->_toolTagLabelMap;
      selfCopy2->_toolTagLabelMap = 0;

      selfCopy2->_toolbarButtonsValid = 0;
      v217 = 1;
    }
  }

  else
  {
    v57 = selfCopy2;
    if (photoStylesToolController)
    {
      v64 = selfCopy2->_coreToolButtons;
      selfCopy2->_coreToolButtons = 0;

      v65 = selfCopy2->_coreToolButtonViews;
      selfCopy2->_coreToolButtonViews = 0;

      v66 = selfCopy2->_toolTagLabelMap;
      selfCopy2->_toolTagLabelMap = 0;

      v67 = selfCopy2->_photoStylesToolController;
      selfCopy2->_photoStylesToolController = 0;
    }
  }

  v214 = view;
  if ([(PUPhotoEditViewController *)v57 isCinematicAudio]&& !v57->_audioToolController)
  {
    v72 = objc_alloc_init(_TtC15PhotosUIPrivate21PUAudioToolController);
    audioToolController = v57->_audioToolController;
    v57->_audioToolController = v72;

    [(PUPhotoEditToolController *)v57->_audioToolController setDelegate:v57];
    view6 = [(PUAudioToolController *)v57->_audioToolController view];
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
  _allTools = [(PUPhotoEditViewController *)v57 _allTools];
  v95 = [_allTools countByEnumeratingWithState:&v242 objects:v253 count:16];
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
          objc_enumerationMutation(_allTools);
        }

        v99 = *(*(&v242 + 1) + 8 * i);
        photoEditSpec4 = [(PUPhotoEditViewController *)v225 photoEditSpec];
        [v99 setPhotoEditSpec:photoEditSpec4];

        [v99 reloadToolbarButtons:1];
      }

      v96 = [_allTools countByEnumeratingWithState:&v242 objects:v253 count:16];
    }

    while (v96);
  }

  v101 = v225;
  [(PUPhotoEditViewController *)v225 _reloadToolbarButtonsIfNeeded];
  [(PUPhotoEditViewController *)v225 _updateToolbarButtonPositions];
  if ([(PUPhotoEditViewController *)v225 isRunningAutoCalculators]|| ([(PUPhotoEditViewController *)v225 editSourceContentEditingInput], v102 = objc_claimAutoreleasedReturnValue(), v102, !v102))
  {
    v104 = 0;
    _shouldHideToolsForQuickCrop = 1;
  }

  else
  {
    _shouldHideToolsForQuickCrop = [(PUPhotoEditViewController *)v225 _shouldHideToolsForQuickCrop];
    v104 = 1;
  }

  view7 = [(PUPhotoEditToolPickerController *)v225->_toolPickerController view];
  [view7 setHidden:_shouldHideToolsForQuickCrop];

  toolPickerController = v225->_toolPickerController;
  if (toolPickerController)
  {
    view8 = [(PUPhotoEditToolPickerController *)toolPickerController view];
    v252 = view8;
    v216 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v252 count:1];
  }

  else
  {
    v216 = MEMORY[0x1E695E0F0];
  }

  v108 = v225->_secondaryLeadingViews;
  v109 = v225->_secondaryTrailingViews;
  v110 = v225->_mainActionButton;
  photoEditSpec6 = v225->_cancelButton;
  photoEditSpec5 = [(PUPhotoEditViewController *)v225 photoEditSpec];
  [photoEditSpec5 toolbarLongSideMargin];
  v114 = v113;

  [(PUPhotoEditToolbar *)v225->_secondaryToolbar setTopActionButtonPadding:0.0];
  if ([(PUPhotoEditViewController *)v225 _actionButtonsGoInTopToolbar])
  {
    cancelButton = v225->_cancelButton;
    v115 = [MEMORY[0x1E695DEC8] arrayWithObjects:&cancelButton count:1];
    v221 = [v115 arrayByAddingObjectsFromArray:v108];

    traitCollection2 = [(PUPhotoEditViewController *)v225 traitCollection];
    v118 = ([traitCollection2 userInterfaceIdiom] == 1 || -[PUPhotoEditViewController layoutOrientation](v225, "layoutOrientation") == 3 || -[PUPhotoEditViewController layoutOrientation](v225, "layoutOrientation") == 2) && (currentEditingTool = v225->_currentEditingTool) != 0 && currentEditingTool != v225->_cropController;

    if (MEMORY[0x1B8C6D660]())
    {
      v121 = photoEditSpec6;
      layoutOrientation = [(PUPhotoEditViewController *)v225 layoutOrientation];
      [(PUPhotoEditViewController *)v225 view];
      v218 = v110;
      v123 = v104;
      v125 = v124 = v109;
      [v125 bounds];
      v126 = layoutOrientation;
      photoEditSpec6 = v121;
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
    photoEditSpec6 = [(PUPhotoEditViewController *)v225 photoEditSpec];
    [(PUPhotoEditNotchButton *)photoEditSpec6 toolbarLongSideWideMargin];
    v114 = v132;
    v109 = v131;
    v108 = v221;
  }

  else
  {
    if (!photoEditSpec6 || !v110)
    {
      goto LABEL_108;
    }

    [(PUPhotoEditNotchButton *)photoEditSpec6 setTranslatesAutoresizingMaskIntoConstraints:0];
    if (MEMORY[0x1B8C6D660]([(PUPhotoEditNotchButton *)v110 setTranslatesAutoresizingMaskIntoConstraints:0]))
    {
      view9 = [(PUPhotoEditViewController *)v225 view];
      [view9 addSubview:photoEditSpec6];

      view10 = [(PUPhotoEditViewController *)v225 view];
      [view10 addSubview:v110];
    }

    else
    {
      [(PUPhotoEditButtonCenteredToolbar *)v225->_secondaryToolbar addSubview:photoEditSpec6];
      [(PUPhotoEditButtonCenteredToolbar *)v225->_secondaryToolbar addSubview:v110];
    }
  }

  photoEditSpec6 = 0;
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
      v136 = v135 = photoEditSpec6;
      [v136 removeObjectAtIndex:v134];
      [v136 insertObject:v225->_zoomButton atIndex:0];
      v137 = [MEMORY[0x1E695DEC8] arrayWithArray:v136];

      photoEditSpec6 = v135;
      v109 = v137;
    }
  }

  if (v225->_mainToolbar)
  {
    v133 = MEMORY[0x1B8C6D660]();
    if ((v133 & 1) == 0)
    {
      v133 = [(PUPhotoEditToolbar *)v225->_mainToolbar setToolButtons:v216 buttonSpacing:1 mainActionButton:v110 secondaryActionButton:photoEditSpec6];
    }
  }

  if (MEMORY[0x1B8C6D660](v133))
  {
    swiftToolbarController = [(PUPhotoEditViewController *)v225 swiftToolbarController];
    [swiftToolbarController updateForToolControllers:v225->__allTools];
  }

  v213 = photoEditSpec6;
  v222 = v109;
  v219 = v110;
  if ((MEMORY[0x1B8C6D660]() & 1) == 0)
  {
    layoutOrientation2 = [(PUPhotoEditViewController *)v225 layoutOrientation];
    view11 = [(PUPhotoEditViewController *)v225 view];
    [PUPhotoEditLayoutSupport topToolbarVerticalOffsetForLayoutOrientation:layoutOrientation2 view:view11];
    [(PUPhotoEditToolbar *)v225->_secondaryToolbar setTopActionButtonPadding:?];

    [(PUPhotoEditButtonCenteredToolbar *)v225->_secondaryToolbar setCenterView:v225->_secondaryCenterView leadingViews:v108 trailingViews:v222];
    [(PUPhotoEditToolbar *)v225->_secondaryToolbar setLongSideMargin:v114];
    v164 = v214;
    v165 = v215;
    goto LABEL_167;
  }

  navigationItem = [(PUPhotoEditViewController *)v225 navigationItem];
  [navigationItem setTitleView:0];

  navigationItem2 = [(PUPhotoEditViewController *)v225 navigationItem];
  [navigationItem2 setLeftBarButtonItems:0];

  navigationItem3 = [(PUPhotoEditViewController *)v225 navigationItem];
  [navigationItem3 setRightBarButtonItems:0];

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
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
          isEnabled = [(PUPhotoEditNotchButton *)v148 isEnabled];
        }

        else
        {
          v148 = 0;
          isEnabled = 1;
        }

        if (v147 != v101->_cancelButton)
        {
          v150 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v147];
          [array addObject:v150];
          if (!v148)
          {
            goto LABEL_128;
          }

LABEL_127:
          [(PUPhotoEditNotchButton *)v148 setEnabled:isEnabled];
          [(UIBarButtonItem *)v150 setEnabled:isEnabled];
          goto LABEL_128;
        }

        v150 = v101->_cancelButtonItem;
        [array addObject:v150];
        v151 = [MEMORY[0x1E69DC708] fixedSpaceItemOfWidth:0.0];
        [array addObject:v151];

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
  reverseObjectEnumerator = [(NSArray *)v222 reverseObjectEnumerator];
  v154 = [reverseObjectEnumerator countByEnumeratingWithState:&v234 objects:v249 count:16];
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
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v158 = *(*(&v234 + 1) + 8 * v157);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v159 = v158;
        isEnabled2 = [(PUPhotoEditNotchButton *)v159 isEnabled];
      }

      else
      {
        v159 = 0;
        isEnabled2 = 1;
      }

      if (v158 != v101->_mainActionButton)
      {
        v161 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v158];
        [array2 addObject:v161];
        if (!v159)
        {
          goto LABEL_144;
        }

LABEL_143:
        [(PUPhotoEditNotchButton *)v159 setEnabled:isEnabled2];
        [(UIBarButtonItem *)v161 setEnabled:isEnabled2];
        goto LABEL_144;
      }

      v161 = v101->_mainActionButtonItem;
      [array2 addObject:v161];
      v162 = [MEMORY[0x1E69DC708] fixedSpaceItemOfWidth:0.0];
      [array2 addObject:v162];

      v101 = v225;
      if (v159)
      {
        goto LABEL_143;
      }

LABEL_144:

      ++v157;
    }

    while (v155 != v157);
    v163 = [reverseObjectEnumerator countByEnumeratingWithState:&v234 objects:v249 count:16];
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
    navigationItem4 = [(PUPhotoEditViewController *)v101 navigationItem];
    [navigationItem4 setTitleView:secondaryCenterView];
    goto LABEL_161;
  }

  outOfNavBarCenterView = [(PUPhotoEditViewController *)v101 outOfNavBarCenterView];

  if (outOfNavBarCenterView)
  {
    outOfNavBarCenterView2 = [(PUPhotoEditViewController *)v101 outOfNavBarCenterView];
    [outOfNavBarCenterView2 removeFromSuperview];

    [(PUPhotoEditViewController *)v101 setOutOfNavBarCenterView:0];
  }

  layoutOrientation3 = [(PUPhotoEditViewController *)v101 layoutOrientation];
  view12 = [(PUPhotoEditViewController *)v101 view];
  [view12 bounds];
  v171 = [PUPhotoEditLayoutSupport requiresCompactNavBarForLayoutOrientation:layoutOrientation3 viewWidth:v170];

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
    outOfNavBarCenterView3 = [(PUPhotoEditViewController *)v225 outOfNavBarCenterView];
    [outOfNavBarCenterView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    view13 = [(PUPhotoEditViewController *)v225 view];
    outOfNavBarCenterView4 = [(PUPhotoEditViewController *)v225 outOfNavBarCenterView];
    [view13 addSubview:outOfNavBarCenterView4];

    outOfNavBarCenterView5 = [(PUPhotoEditViewController *)v225 outOfNavBarCenterView];
    centerXAnchor = [outOfNavBarCenterView5 centerXAnchor];
    view14 = [(PUPhotoEditViewController *)v225 view];
    centerXAnchor2 = [view14 centerXAnchor];
    v180 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v180 setActive:1];

    if (+[PUPhotoEditLayoutSupport isPhoneClassDevice])
    {
      navigationController = [(PUPhotoEditViewController *)v225 navigationController];
      navigationBar = [navigationController navigationBar];
      navigationItem4 = [navigationBar bottomAnchor];

      if (navigationItem4)
      {
        outOfNavBarCenterView6 = [(PUPhotoEditViewController *)v225 outOfNavBarCenterView];
        topAnchor = [outOfNavBarCenterView6 topAnchor];
        topAnchor2 = [topAnchor constraintEqualToAnchor:navigationItem4 constant:12.0];
        [topAnchor2 setActive:1];
        goto LABEL_197;
      }
    }

    else
    {
      view15 = [(PUPhotoEditViewController *)v225 view];
      navigationItem4 = [view15 safeAreaLayoutGuide];

      outOfNavBarCenterView6 = [(PUPhotoEditViewController *)v225 outOfNavBarCenterView];
      topAnchor = [outOfNavBarCenterView6 topAnchor];
      topAnchor2 = [navigationItem4 topAnchor];
      v211 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:5.0];
      [v211 setActive:1];

LABEL_197:
    }

    v101 = v225;
    v165 = v215;
LABEL_161:
  }

LABEL_162:
  if ([array count])
  {
    navigationItem5 = [(PUPhotoEditViewController *)v101 navigationItem];
    [navigationItem5 setLeftBarButtonItems:array];
  }

  if ([array2 count])
  {
    navigationItem6 = [(PUPhotoEditViewController *)v101 navigationItem];
    [navigationItem6 setRightBarButtonItems:array2];
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
          toolControllerTag = [(PUPhotoEditToolController *)v101->_currentEditingTool toolControllerTag];
          v207 = toolControllerTag == [v205 tag];
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
    swiftToolbarController2 = [(PUPhotoEditViewController *)v101 swiftToolbarController];
    [swiftToolbarController2 selectToolController:v101->_currentEditingTool];
  }

  v101->_updatingToolbars = 0;
}

- (void)_updateRenderedPreview
{
  currentEditingTool = self->_currentEditingTool;
  if (currentEditingTool && ![(PUPhotoEditToolController *)currentEditingTool wantsDefaultPreviewView])
  {
    isHidden = 1;
  }

  else
  {
    isHidden = [(UIImageView *)self->_placeholderImageView isHidden];
  }

  mediaView = self->_mediaView;

  [(NUMediaView *)mediaView setHidden:isHidden];
}

- (BOOL)isOriginalStyleable
{
  v18 = *MEMORY[0x1E69E9840];
  photo = [(PUPhotoEditViewController *)self photo];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = photo;
  }

  else
  {
    v4 = 0;
  }

  fetchSmartStyleExtendedProperties = [v4 fetchSmartStyleExtendedProperties];

  originallySmartStyleable = [fetchSmartStyleExtendedProperties originallySmartStyleable];
  v7 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    photo2 = [(PUPhotoEditViewController *)self photo];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v9 = photo2;
    }

    else
    {
      v9 = 0;
    }

    uuid = [v9 uuid];
    v11 = uuid;
    v12 = @"NO";
    if (originallySmartStyleable)
    {
      v12 = @"YES";
    }

    v14 = 138543618;
    v15 = uuid;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "PUPhotoEditViewController - Asset %{public}@: originallySmartStyleable %@", &v14, 0x16u);
  }

  return originallySmartStyleable;
}

- (BOOL)currentAssetNeedsGainMap
{
  if ([MEMORY[0x1E69B3AB0] renderMeteorPlusAsHDR])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    photo = [(PUPhotoEditViewController *)self photo];
    v3 = ([photo mediaSubtypes] >> 9) & 1;
  }

  return v3;
}

- (void)configureEnablenessOfControlButton:(id)button animated:(BOOL)animated canVisuallyDisable:(BOOL)disable
{
  disableCopy = disable;
  animatedCopy = animated;
  buttonCopy = button;
  resourceLoader = [(PUPhotoEditViewController *)self resourceLoader];
  resourcesAvailability = [resourceLoader resourcesAvailability];

  v11 = (resourcesAvailability < 4) & (0xBu >> (resourcesAvailability & 0xF));
  progressEventBlockingView = self->_progressEventBlockingView;
  if (progressEventBlockingView)
  {
    v11 = 0;
  }

  v13 = v11 | !disableCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = buttonCopy;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = buttonCopy;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  hasImageValues = 0;
  if (resourcesAvailability <= 3 && ((8u >> (resourcesAvailability & 0xF)) & 1) != 0 && !progressEventBlockingView)
  {
    valuesCalculator = [(PUPhotoEditViewController *)self valuesCalculator];
    hasImageValues = [valuesCalculator hasImageValues];
  }

  if (v15)
  {
    [v15 setUserInteractionEnabled:hasImageValues];
    if (v13 != [v15 isEnabled])
    {
      if (animatedCopy)
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

- (id)barButtonItemForView:(id)view
{
  v29 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (!MEMORY[0x1B8C6D660]())
  {
    v14 = 0;
    goto LABEL_22;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  navigationItem = [(PUPhotoEditViewController *)self navigationItem];
  leftBarButtonItems = [navigationItem leftBarButtonItems];

  v7 = [leftBarButtonItems countByEnumeratingWithState:&v23 objects:v28 count:16];
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
        objc_enumerationMutation(leftBarButtonItems);
      }

      v11 = *(*(&v23 + 1) + 8 * v10);
      customView = [v11 customView];

      if (customView == viewCopy)
      {
        goto LABEL_20;
      }

      if (v8 == ++v10)
      {
        v8 = [leftBarButtonItems countByEnumeratingWithState:&v23 objects:v28 count:16];
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
  navigationItem2 = [(PUPhotoEditViewController *)self navigationItem];
  leftBarButtonItems = [navigationItem2 rightBarButtonItems];

  v14 = [leftBarButtonItems countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = *v20;
LABEL_12:
    v16 = 0;
    while (1)
    {
      if (*v20 != v15)
      {
        objc_enumerationMutation(leftBarButtonItems);
      }

      v11 = *(*(&v19 + 1) + 8 * v16);
      customView2 = [v11 customView];

      if (customView2 == viewCopy)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [leftBarButtonItems countByEnumeratingWithState:&v19 objects:v27 count:16];
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

- (void)setLayoutOrientation:(int64_t)orientation withTransitionCoordinator:(id)coordinator
{
  v71 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  layoutOrientation = self->_layoutOrientation;
  if (layoutOrientation != orientation)
  {
    self->_layoutOrientation = orientation;
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
    _allTools = [(PUPhotoEditViewController *)self _allTools];
    v25 = [_allTools countByEnumeratingWithState:&v66 objects:v70 count:16];
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
            objc_enumerationMutation(_allTools);
          }

          [*(*(&v66 + 1) + 8 * i) setLayoutOrientation:self->_layoutOrientation withTransitionCoordinator:{coordinatorCopy, v46}];
        }

        v26 = [_allTools countByEnumeratingWithState:&v66 objects:v70 count:16];
      }

      while (v26);
    }

    [(PUPhotoEditViewController *)self _updateToolbarsAnimated:0];
    if (self->_progressEventBlockingViewConstraints)
    {
      [MEMORY[0x1E696ACD8] deactivateConstraints:?];
      progressEventBlockingViewConstraints = self->_progressEventBlockingViewConstraints;
      self->_progressEventBlockingViewConstraints = 0;

      view = [(PUPhotoEditViewController *)self view];
      [view setNeedsUpdateConstraints];
    }

    [(PUPhotoEditToolPickerController *)self->_toolPickerController setLayoutDirection:[(PUPhotoEditViewController *)self currentToolPickerLayoutDirection]];
    [(PUPhotoEditViewController *)self setNeedsUpdateOfHomeIndicatorAutoHidden];
    removeFromSuperview = MEMORY[0x1B8C6D660]([(PUPhotoEditViewController *)self updateInteractions]);
    if (coordinatorCopy)
    {
      if (removeFromSuperview)
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

        view2 = [(PUPhotoEditViewController *)self view];
        [view2 setNeedsUpdateConstraints];
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
      [coordinatorCopy animateAlongsideTransition:v58 completion:v54];
    }

    else
    {
      v34 = v51;
      v35 = v52;
      if ((removeFromSuperview & 1) == 0)
      {
        [(PUPhotoEditToolbar *)v51 removeFromSuperview];
        [(PUPhotoEditShadowView *)v52 removeFromSuperview];
        removeFromSuperview = [(PUPhotoEditButtonCenteredToolbar *)v53 removeFromSuperview];
      }

      if (self->_currentToolViewConstraints)
      {
        [MEMORY[0x1E696ACD8] deactivateConstraints:?];
        v36 = self->_currentToolViewConstraints;
        self->_currentToolViewConstraints = 0;

        view3 = [(PUPhotoEditViewController *)self view];
        [view3 setNeedsUpdateConstraints];
      }

      if (MEMORY[0x1B8C6D660](removeFromSuperview))
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
  navigationItem = [(PUPhotoEditViewController *)self navigationItem];
  [navigationItem setTitleView:0];

  navigationItem2 = [(PUPhotoEditViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItems:0];

  navigationItem3 = [(PUPhotoEditViewController *)self navigationItem];
  [navigationItem3 setRightBarButtonItems:0];

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

- (void)setPlaceholderImage:(id)image
{
  imageCopy = image;
  placeholderImage = [(PUPhotoEditViewController *)self placeholderImage];

  v6 = imageCopy;
  if (placeholderImage != imageCopy)
  {
    objc_storeStrong(&self->_placeholderImage, image);
    if (imageCopy)
    {
      [imageCopy size];
      [(PUPhotoEditViewController *)self setLastKnownPreviewImageSize:?];
    }

    [(PUPhotoEditViewController *)self _updatePlaceholderImage];
    v6 = imageCopy;
  }
}

- (id)_currentViewContentsForDismissTransition
{
  _imageLayer = [(NUMediaView *)self->_mediaView _imageLayer];
  contents = [_imageLayer contents];

  if (!contents)
  {
    placeholderImageView = self->_placeholderImageView;
    if (placeholderImageView && ([(UIImageView *)placeholderImageView isHidden]& 1) == 0)
    {
      layer = [(UIImageView *)self->_placeholderImageView layer];
      contents2 = [layer contents];
    }

    else
    {
      contents2 = 0;
    }

    goto LABEL_10;
  }

  editSource = [(PUPhotoEditViewController *)self editSource];
  if (editSource)
  {

LABEL_8:
    mediaView = self->_mediaView;
    _composition = [(PUPhotoEditViewController *)self _composition];
    [(NUMediaView *)mediaView setComposition:_composition];

    goto LABEL_9;
  }

  originalImageEditSource = [(PUPhotoEditViewController *)self originalImageEditSource];

  if (originalImageEditSource)
  {
    goto LABEL_8;
  }

LABEL_9:
  [(NUMediaView *)self->_mediaView setPipelineFilters:MEMORY[0x1E695E0F0]];
  [(NUMediaView *)self->_mediaView waitForRender];
  contents2 = [_imageLayer contents];
LABEL_10:

  return contents2;
}

- (BOOL)_isReadyToRender
{
  mainRenderer = [(PUPhotoEditViewController *)self mainRenderer];
  compositionController = [(PUPhotoEditViewController *)self compositionController];
  if (compositionController)
  {
    v5 = mainRenderer == 0;
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

    view = [(PUPhotoEditViewController *)self view];
    [view setNeedsUpdateConstraints];
  }

  if (self->_assetTypeBadgeConstraints)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
    assetTypeBadgeConstraints = self->_assetTypeBadgeConstraints;
    self->_assetTypeBadgeConstraints = 0;

    view2 = [(PUPhotoEditViewController *)self view];
    [view2 setNeedsUpdateConstraints];
  }
}

- (CGRect)_oneUpTransitionPlaceholderViewFrame
{
  v29 = *MEMORY[0x1E69E9840];
  if ([(PUPhotoEditViewController *)self _isReadyToRender])
  {
    v3 = objc_alloc(MEMORY[0x1E69B3AA8]);
    _composition = [(PUPhotoEditViewController *)self _composition];
    v5 = [v3 initWithComposition:_composition];

    v26 = 0;
    v6 = [v5 submitSynchronous:&v26];
    v7 = v26;
    geometry = [v6 geometry];

    if (geometry)
    {
      [geometry size];
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

- (CGRect)_cropPlaceholderViewFrameForImageSize:(CGSize)size
{
  if (size.width == 0.0 || size.height == 0.0)
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
    selfCopy = self;
    [(PUViewControllerSpec *)v5 performChanges:&v71];
    [(PUCropToolControllerSpec *)v5 minimumCropInset];
    v7 = v6;
    view = [(PUPhotoEditViewController *)self view];
    [view safeAreaInsets];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    if (MEMORY[0x1B8C6D660]())
    {
      navigationController = [(PUPhotoEditViewController *)self navigationController];
      navigationBar = [navigationController navigationBar];
      [navigationBar frame];
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
    isIpadLayout = [(PUPhotoEditViewController *)self isIpadLayout];
    if (MEMORY[0x1B8C6D660]())
    {
      v28 = v10;
    }

    else
    {
      v28 = Height;
    }

    if (isIpadLayout)
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
    v41 = [(PUPhotoEditViewController *)self view:*&size.width];
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
  initialPendingEditsRequest = [(PUPhotoEditViewController *)self initialPendingEditsRequest];

  if (initialPendingEditsRequest)
  {
    initialPendingEditsRequest = [(PUPhotoEditViewController *)self initialPendingEditsRequest];
    adjustments = [initialPendingEditsRequest adjustments];
    lastObject = [adjustments lastObject];
    category = [lastObject category];

    v7 = [(PUPhotoEditViewController *)self _toolControllerForAdjustmentCategory:category];
    LODWORD(initialPendingEditsRequest) = v7 == self->_cropController;
  }

  if ([(PUPhotoEditViewController *)self initialToolType]== 6 || (([(PUPhotoEditViewController *)self _isQuickCrop]| initialPendingEditsRequest) & 1) != 0)
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

- (CGRect)_placeholderViewFrameForImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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

- (void)_handleShowOriginalButton:(id)button
{
  if (![(PUPhotoEditViewController *)self _isPreviewingOriginal])
  {
    self->_showOriginalButtonTapped = 1;
  }

  [(PUPhotoEditViewController *)self _toggleShowOriginal];
}

- (void)_handleRedoButton:(id)button
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(PUPhotoEditViewController *)self _allTools:button];
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
        undoManager = [(PUPhotoEditViewController *)self undoManager];
        [v9 redoInitiated:undoManager];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  undoManager2 = [(PUPhotoEditViewController *)self undoManager];
  [undoManager2 redo];
}

- (void)_handleUndoButton:(id)button
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(PUPhotoEditViewController *)self _allTools:button];
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
        undoManager = [(PUPhotoEditViewController *)self undoManager];
        [v9 undoInitiated:undoManager];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  undoManager2 = [(PUPhotoEditViewController *)self undoManager];
  [undoManager2 undo];
}

- (void)_undoManagerDidRedo:(id)redo
{
  redoCopy = redo;
  undoManager = [(PUPhotoEditViewController *)self undoManager];
  object = [redoCopy object];

  if (undoManager == object)
  {
    if ([(PUPhotoEditToolbarButton *)self->_moreButton isHeld])
    {
      [(PUPhotoEditViewController *)self _reloadMoreButtonMenu];
    }

    [(PUPhotoEditViewController *)self _updateUndoRedoButtonsAnimated:0];
  }
}

- (void)_undoManagerDidUndo:(id)undo
{
  undoCopy = undo;
  undoManager = [(PUPhotoEditViewController *)self undoManager];
  object = [undoCopy object];

  if (undoManager == object)
  {
    if ([(PUPhotoEditToolbarButton *)self->_moreButton isHeld])
    {
      [(PUPhotoEditViewController *)self _reloadMoreButtonMenu];
    }

    [(PUPhotoEditViewController *)self _updateUndoRedoButtonsAnimated:0];
  }
}

- (void)_undoManagerWillRedo:(id)redo
{
  redoCopy = redo;
  undoManager = [(PUPhotoEditViewController *)self undoManager];
  object = [redoCopy object];

  if (undoManager == object)
  {
    isHeld = [(PUPhotoEditToolbarButton *)self->_moreButton isHeld];

    if (isHeld)
    {
      goto LABEL_5;
    }

    object = [undoManager redoMenuItemTitle];
    v7 = [object uppercaseStringWithLocale:0];
    [(PUPhotoEditViewController *)self flashTransientBadgeWithText:v7];
  }

LABEL_5:
}

- (void)_undoManagerWillUndo:(id)undo
{
  undoCopy = undo;
  undoManager = [(PUPhotoEditViewController *)self undoManager];
  object = [undoCopy object];

  if (undoManager == object)
  {
    isHeld = [(PUPhotoEditToolbarButton *)self->_moreButton isHeld];

    if (isHeld)
    {
      goto LABEL_5;
    }

    object = [undoManager undoMenuItemTitle];
    v7 = [object uppercaseStringWithLocale:0];
    [(PUPhotoEditViewController *)self flashTransientBadgeWithText:v7];
  }

LABEL_5:
}

- (void)_undoManagerDidCloseUndoGroupNotification:(id)notification
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

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  [controllerCopy setOverrideUserInterfaceStyle:{-[PUPhotoEditViewController preferredUserInterfaceStyle](self, "preferredUserInterfaceStyle")}];
  v10.receiver = self;
  v10.super_class = PUPhotoEditViewController;
  [(PUPhotoEditViewController *)&v10 presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
}

- (BOOL)mediaViewFillsView
{
  view = [(PUPhotoEditViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  mediaView = [(PUPhotoEditViewController *)self mediaView];
  [mediaView imageFrame];
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
  mediaViewFillsView = [(PUPhotoEditViewController *)self mediaViewFillsView];
  v4 = (MEMORY[0x1B8C6D660]() ^ 1) & mediaViewFillsView;
  if (v4 != [(PUPhotoEditViewController *)self forceDarkUserInterfaceStyleForZoom])
  {
    [(PUPhotoEditViewController *)self setForceDarkUserInterfaceStyleForZoom:v4];

    [(PUPhotoEditViewController *)self setNeedsUserInterfaceAppearanceUpdate];
  }
}

- (int64_t)preferredUserInterfaceStyle
{
  v3 = +[PUPhotoEditProtoSettings sharedInstance];
  lightModeEditor = [v3 lightModeEditor];

  if (!lightModeEditor || [(PUPhotoEditViewController *)self forceDarkUserInterfaceStyleForZoom])
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
  navigationController = [(PUPhotoEditViewController *)self navigationController];
  [navigationController setOverrideUserInterfaceStyle:{-[PUPhotoEditViewController preferredUserInterfaceStyle](self, "preferredUserInterfaceStyle")}];

  v4 = MEMORY[0x1E69DD250];
  view = [(PUPhotoEditViewController *)self view];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__PUPhotoEditViewController__setNeedsUserInterfaceAppearanceUpdateAnimated__block_invoke;
  v6[3] = &unk_1E7B80DD0;
  v6[4] = self;
  [v4 transitionWithView:view duration:5242880 options:v6 animations:0 completion:0.2];
}

void __75__PUPhotoEditViewController__setNeedsUserInterfaceAppearanceUpdateAnimated__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsUserInterfaceAppearanceUpdate];
  v2 = [*(a1 + 32) navigationController];
  [v2 setNeedsUserInterfaceAppearanceUpdate];
}

- (void)setPreferredAppearance:(int64_t)appearance
{
  [PUPhotoEditAppearancePreference setPreferredAppearance:appearance];

  [(PUPhotoEditViewController *)self _setNeedsUserInterfaceAppearanceUpdateAnimated];
}

- (double)px_HDRFocus
{
  v2 = MEMORY[0x1E69C35F0];
  photo = [(PUPhotoEditViewController *)self photo];
  [v2 HDRValueForAsset:photo];
  v5 = v4;

  return v5;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v21.receiver = self;
  v21.super_class = PUPhotoEditViewController;
  [(PUPhotoEditViewController *)&v21 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  self->_isAnimatingMediaViewInsets = 1;
  [(PUPhotoEditViewController *)self _updateVideoScrubberDisplayAnimate:1];
  revertConfirmationAlert = [(PUPhotoEditViewController *)self revertConfirmationAlert];
  if (revertConfirmationAlert || ([(PUPhotoEditViewController *)self cancelConfirmationAlert], (revertConfirmationAlert = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = revertConfirmationAlert;
    presentingViewController = [revertConfirmationAlert presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }

  if (MEMORY[0x1B8C6D660]() && width > height)
  {
    v11 = +[PUPhotoEditProtoSettings sharedInstance];
    _isZoomedIn = ([v11 imageStartsZoomedIn] & 1) != 0 || -[PUPhotoEditViewController _isZoomedIn](self, "_isZoomedIn");
  }

  else
  {
    _isZoomedIn = [(PUPhotoEditViewController *)self _isZoomedIn];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__PUPhotoEditViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  aBlock[3] = &unk_1E7B7C8A0;
  aBlock[4] = self;
  v20 = _isZoomedIn;
  v13 = _Block_copy(aBlock);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__PUPhotoEditViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v17[3] = &unk_1E7B7C8A0;
  v17[4] = self;
  v18 = _isZoomedIn;
  v14 = _Block_copy(v17);
  if (([coordinatorCopy animateAlongsideTransition:v13 completion:v14] & 1) == 0)
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
  [(PUPhotoEditViewController *)self _updateLayoutOrientationWithViewSize:coordinatorCopy transitionCoordinator:width, height];
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

- (void)_layoutShadowView:(id)view
{
  viewCopy = view;
  v5 = viewCopy;
  if (viewCopy)
  {
    v32 = viewCopy;
    view = [(PUPhotoEditViewController *)self view];
    [view frame];
    v8 = v7;
    v10 = v9;

    view2 = [(PUPhotoEditViewController *)self view];
    [view2 safeAreaInsets];
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = +[PUPhotoEditProtoSettings sharedInstance];
    [v18 secondaryToolbarShadowLength];
    v20 = v19;

    isIpadLayout = [(PUPhotoEditViewController *)self isIpadLayout];
    v22 = v32;
    v23 = isIpadLayout;
    toolControlShadow = self->_toolControlShadow;
    if (toolControlShadow == v32)
    {
      [(PUPhotoEditShadowView *)toolControlShadow setHidden:0];
      if (v23)
      {
        goto LABEL_12;
      }

      layoutOrientation = [(PUPhotoEditViewController *)self layoutOrientation];
      if (layoutOrientation < 2)
      {
        [(PUPhotoEditShadowView *)self->_toolControlShadow setHidden:1];
        v22 = v32;
      }

      else
      {
        if (layoutOrientation == 2)
        {
          goto LABEL_12;
        }

        v22 = v32;
        if (layoutOrientation == 3)
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

      layoutOrientation2 = [(PUPhotoEditViewController *)self layoutOrientation];
      if (layoutOrientation2 == 3)
      {
LABEL_12:
        [(PUPhotoEditShadowView *)v32 setTransparentSide:1];
        v30 = v32;
        v25 = v17 + v20;
        v26 = v8 - (v17 + v20);
        v27 = 0.0;
LABEL_19:
        viewCopy = [(PUPhotoEditShadowView *)v30 setFrame:v26, v27, v25, v10];
        v5 = v32;
        goto LABEL_20;
      }

      v31 = layoutOrientation2;
      [(PUPhotoEditShadowView *)v32 setTransparentSide:2 * (layoutOrientation2 == 2)];
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

  MEMORY[0x1EEE66BB8](viewCopy, v5);
}

- (void)viewDidLayoutSubviews
{
  v163[4] = *MEMORY[0x1E69E9840];
  v162.receiver = self;
  v162.super_class = PUPhotoEditViewController;
  [(PUPhotoEditViewController *)&v162 viewDidLayoutSubviews];
  view = [(PUPhotoEditViewController *)self view];
  [view frame];
  v5 = v4;
  v7 = v6;

  photoEditSpec = [(PUPhotoEditViewController *)self photoEditSpec];
  [photoEditSpec layoutReferenceSize];
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
  irisRevertConfirmationAlert = [(PUPhotoEditViewController *)self irisRevertConfirmationAlert];

  if (irisRevertConfirmationAlert)
  {
    livePhotoButton = [(PUPhotoEditMediaToolController *)self->_mediaToolController livePhotoButton];
    irisRevertConfirmationAlert2 = [(PUPhotoEditViewController *)self irisRevertConfirmationAlert];
    popoverPresentationController = [irisRevertConfirmationAlert2 popoverPresentationController];
    [popoverPresentationController setSourceView:livePhotoButton];

    irisRevertConfirmationAlert3 = [(PUPhotoEditViewController *)self irisRevertConfirmationAlert];
    popoverPresentationController2 = [irisRevertConfirmationAlert3 popoverPresentationController];
    [livePhotoButton bounds];
    [popoverPresentationController2 setSourceRect:?];
  }

  v30 = 0.0;
  v31 = 0.0;
  if ((MEMORY[0x1B8C6D660]() & 1) == 0)
  {
    [(PUPhotoEditButtonCenteredToolbar *)self->_secondaryToolbar frame];
    MaxY = CGRectGetMaxY(v164);
    view2 = [(UIViewController *)self->_currentTool view];
    [view2 frame];
    v34 = MaxY - CGRectGetMinY(v165);
    view3 = [(PUPhotoEditViewController *)self view];
    [view3 safeAreaInsets];
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

  layoutOrientation = [(PUPhotoEditViewController *)self layoutOrientation];
  if (layoutOrientation != 3)
  {
    if (layoutOrientation == 2)
    {
      [(PUPhotoEditToolController *)self->_currentEditingTool wantsFullscreen];
    }

    else if (layoutOrientation == 1 && [(PUPhotoEditToolController *)self->_currentEditingTool wantsFullscreen])
    {
      [v23 frame];
      v105 = v7 - CGRectGetMinY(v171);
      view4 = [(PUPhotoEditViewController *)self view];
      [view4 safeAreaInsets];
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
  view5 = [(PUPhotoEditViewController *)self view];
  [view5 safeAreaInsets];
  v37 = v118 - v120;

LABEL_14:
  v154 = v23;
  [(UIViewController *)self->_currentTool setAdditionalSafeAreaInsets:v31, 0.0, v30, v37];
  videoScrubberView = [(PUPhotoEditViewController *)self videoScrubberView];
  layoutOrientation2 = [(PUPhotoEditViewController *)self layoutOrientation];
  [(PUPhotoEditViewController *)self previewViewFrame];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  view6 = [(PUPhotoEditToolController *)self->_currentEditingTool view];
  [view6 frame];
  v146 = v49;
  v147 = v48;
  v144 = v51;
  v145 = v50;

  [(PUPhotoEditViewControllerSpec *)self->_photoEditSpec scrubberViewMargin];
  v150 = v53;
  v151 = v52;
  v132 = v54;
  mediaView = [(PUPhotoEditViewController *)self mediaView];
  [mediaView bounds];
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  [mediaView edgeInsets];
  v65 = v57 + v64;
  v67 = v59 + v66;
  v69 = v61 - (v64 + v68);
  v71 = v63 - (v66 + v70);
  view7 = [(PUPhotoEditViewController *)self view];
  v152 = mediaView;
  [view7 convertRect:mediaView fromView:{v65, v67, v69, v71}];
  v148 = v74;
  v149 = v73;

  if (!self->_imageFrameLayoutGuide)
  {
    v75 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    imageFrameLayoutGuide = self->_imageFrameLayoutGuide;
    self->_imageFrameLayoutGuide = v75;

    view8 = [(PUPhotoEditViewController *)self view];
    [view8 addLayoutGuide:self->_imageFrameLayoutGuide];
  }

  v153 = videoScrubberView;
  v78 = v155;
  if (self->_imageFrameLayoutGuideConstraints)
  {
    view9 = [(PUPhotoEditViewController *)self view];
    [view9 removeConstraints:self->_imageFrameLayoutGuideConstraints];

    imageFrameLayoutGuideConstraints = self->_imageFrameLayoutGuideConstraints;
    self->_imageFrameLayoutGuideConstraints = 0;
  }

  leadingAnchor = [(UILayoutGuide *)self->_imageFrameLayoutGuide leadingAnchor];
  view10 = [(PUPhotoEditViewController *)self view];
  recta = [view10 leadingAnchor];
  v138 = [leadingAnchor constraintEqualToAnchor:recta constant:v159];
  v163[0] = v138;
  trailingAnchor = [(UILayoutGuide *)self->_imageFrameLayoutGuide trailingAnchor];
  view11 = [(PUPhotoEditViewController *)self view];
  leadingAnchor2 = [view11 leadingAnchor];
  v157 = [trailingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v159 + v157];
  v163[1] = v157;
  topAnchor = [(UILayoutGuide *)self->_imageFrameLayoutGuide topAnchor];
  view12 = [(PUPhotoEditViewController *)self view];
  topAnchor2 = [view12 topAnchor];
  v84 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v156];
  v163[2] = v84;
  bottomAnchor = [(UILayoutGuide *)self->_imageFrameLayoutGuide bottomAnchor];
  view13 = [(PUPhotoEditViewController *)self view];
  topAnchor3 = [view13 topAnchor];
  v155 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:v156 + v155];
  v163[3] = v155;
  v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:v163 count:4];
  v90 = self->_imageFrameLayoutGuideConstraints;
  self->_imageFrameLayoutGuideConstraints = v89;

  view14 = [(PUPhotoEditViewController *)self view];
  [view14 addConstraints:self->_imageFrameLayoutGuideConstraints];

  if (layoutOrientation2 != 1)
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
  if (layoutOrientation2 == 1)
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
    view15 = [(PUPhotoEditViewController *)self view];
    [view15 safeAreaInsets];
    v100 = v133 - v110;

    if (v108 < v100)
    {
      v100 = v108;
    }

    view16 = [(PUPhotoEditViewController *)self view];
    [view16 safeAreaInsets];
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

  playPauseButton = [(PUPhotoEditViewController *)self playPauseButton];
  [playPauseButton sizeToFit];

  playPauseButton2 = [(PUPhotoEditViewController *)self playPauseButton];
  [playPauseButton2 frame];
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
  playPauseButton3 = [(PUPhotoEditViewController *)self playPauseButton];
  [playPauseButton3 setFrame:{MinX, v130, v127, v160}];

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

- (id)_constraintsForToolView:(id)view wantsFullscreen:(BOOL)fullscreen
{
  fullscreenCopy = fullscreen;
  v72[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v7 = MEMORY[0x1B8C6D660]();
  v8 = &OBJC_IVAR___PUPhotoEditViewController__mainToolbar;
  if (v7)
  {
    v8 = &OBJC_IVAR___PUPhotoEditViewController__swiftToolbarView;
  }

  v61 = *(&self->super.super.super.isa + *v8);
  v63 = viewCopy;
  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  array = [MEMORY[0x1E695DF70] array];
  if (fullscreenCopy)
  {
    leftAnchor = [viewCopy leftAnchor];
    view = [(PUPhotoEditViewController *)self view];
    leftAnchor2 = [view leftAnchor];
    v56 = leftAnchor;
    v10 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v72[0] = v10;
    rightAnchor = [viewCopy rightAnchor];
    view2 = [(PUPhotoEditViewController *)self view];
    [view2 rightAnchor];
    view5 = v60 = rightAnchor;
    safeAreaLayoutGuide2 = [rightAnchor constraintEqualToAnchor:?];
    v72[1] = safeAreaLayoutGuide2;
    topAnchor = [viewCopy topAnchor];
    view3 = [(PUPhotoEditViewController *)self view];
    topAnchor2 = [view3 topAnchor];
    view6 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v72[2] = view6;
    bottomAnchor = [viewCopy bottomAnchor];
    view4 = [(PUPhotoEditViewController *)self view];
    bottomAnchor2 = [view4 bottomAnchor];
    bottomAnchor3 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v72[3] = bottomAnchor3;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:4];
    [array addObjectsFromArray:v20];

    v21 = topAnchor;
    leftAnchor5 = leftAnchor2;
LABEL_11:

    goto LABEL_12;
  }

  if ([(PUPhotoEditViewController *)self isIpadLayout]|| [(PUPhotoEditViewController *)self layoutOrientation]== 2)
  {
    v23 = MEMORY[0x1B8C6D660]();
    leftAnchor3 = [viewCopy leftAnchor];
    view = [(PUPhotoEditViewController *)self view];
    safeAreaLayoutGuide = [view safeAreaLayoutGuide];
    [safeAreaLayoutGuide leftAnchor];
    v52 = v56 = leftAnchor3;
    v25 = [leftAnchor3 constraintEqualToAnchor:?];
    v60 = v25;
    if (v23)
    {
      v71[0] = v25;
      rightAnchor2 = [viewCopy rightAnchor];
      view5 = [(PUPhotoEditViewController *)self view];
      safeAreaLayoutGuide2 = [view5 safeAreaLayoutGuide];
      rightAnchor3 = [safeAreaLayoutGuide2 rightAnchor];
      view2 = rightAnchor2;
      v50 = [rightAnchor2 constraintEqualToAnchor:rightAnchor3];
      v71[1] = v50;
      topAnchor2 = [viewCopy topAnchor];
      view6 = [(PUPhotoEditViewController *)self view];
      safeAreaLayoutGuide3 = [view6 safeAreaLayoutGuide];
      view4 = [safeAreaLayoutGuide3 topAnchor];
      bottomAnchor2 = [topAnchor2 constraintEqualToAnchor:view4];
      v71[2] = bottomAnchor2;
      bottomAnchor = safeAreaLayoutGuide3;
      bottomAnchor3 = [v63 bottomAnchor];
      view7 = [(PUPhotoEditViewController *)self view];
      bottomAnchor4 = [view7 bottomAnchor];
      v29 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      v71[3] = v29;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:4];
      [array addObjectsFromArray:v30];

      view3 = v50;
      v21 = rightAnchor3;
    }

    else
    {
      v68[0] = v25;
      rightAnchor4 = [viewCopy rightAnchor];
      view5 = [(PUPhotoEditViewController *)self view];
      safeAreaLayoutGuide2 = [view5 safeAreaLayoutGuide];
      rightAnchor5 = [safeAreaLayoutGuide2 rightAnchor];
      view2 = rightAnchor4;
      view3 = [rightAnchor4 constraintEqualToAnchor:rightAnchor5];
      v68[1] = view3;
      topAnchor2 = [viewCopy topAnchor];
      view6 = [(PUPhotoEditButtonCenteredToolbar *)self->_secondaryToolbar bottomAnchor];
      v69 = [topAnchor2 constraintEqualToAnchor:view6];
      bottomAnchor = v69;
      view4 = [v63 bottomAnchor];
      bottomAnchor2 = [(PUPhotoEditViewController *)self view];
      bottomAnchor3 = [bottomAnchor2 bottomAnchor];
      v33 = [view4 constraintEqualToAnchor:bottomAnchor3];
      v70 = v33;
      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:4];
      [array addObjectsFromArray:v34];

      v21 = rightAnchor5;
    }

    v10 = v52;
    leftAnchor5 = safeAreaLayoutGuide;
    goto LABEL_11;
  }

  layoutOrientation = [(PUPhotoEditViewController *)self layoutOrientation];
  if (layoutOrientation == 3)
  {
    leftAnchor4 = [viewCopy leftAnchor];
    view = [(PUPhotoEditViewController *)self view];
    leftAnchor5 = [view leftAnchor];
    v56 = leftAnchor4;
    v10 = [leftAnchor4 constraintEqualToAnchor:leftAnchor5];
    v64[0] = v10;
    rightAnchor6 = [viewCopy rightAnchor];
    view2 = [v61 leftAnchor];
    v60 = rightAnchor6;
    view5 = [rightAnchor6 constraintEqualToAnchor:?];
    v64[1] = view5;
    topAnchor3 = [viewCopy topAnchor];
    view8 = [(PUPhotoEditViewController *)self view];
    topAnchor4 = [view8 topAnchor];
    safeAreaLayoutGuide2 = topAnchor3;
    v65 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    view6 = [viewCopy bottomAnchor];
    selfCopy = self;
    v21 = view8;
    view3 = topAnchor4;
    topAnchor2 = v65;
    bottomAnchor = [(PUPhotoEditViewController *)selfCopy view];
    view4 = [bottomAnchor bottomAnchor];
    bottomAnchor2 = [view6 constraintEqualToAnchor:view4];
    v66 = bottomAnchor2;
    v41 = MEMORY[0x1E695DEC8];
    v42 = v64;
    goto LABEL_19;
  }

  if (layoutOrientation == 1)
  {
    leftAnchor6 = [viewCopy leftAnchor];
    view = [(PUPhotoEditViewController *)self view];
    leftAnchor5 = [view leftAnchor];
    v56 = leftAnchor6;
    v10 = [leftAnchor6 constraintEqualToAnchor:leftAnchor5];
    v67[0] = v10;
    rightAnchor7 = [viewCopy rightAnchor];
    view2 = [(PUPhotoEditViewController *)self view];
    [view2 rightAnchor];
    view5 = v60 = rightAnchor7;
    safeAreaLayoutGuide2 = [rightAnchor7 constraintEqualToAnchor:?];
    v67[1] = safeAreaLayoutGuide2;
    topAnchor5 = [viewCopy topAnchor];
    selfCopy2 = self;
    v21 = topAnchor5;
    view3 = [(PUPhotoEditViewController *)selfCopy2 view];
    topAnchor2 = [view3 topAnchor];
    view6 = [v21 constraintEqualToAnchor:topAnchor2];
    v67[2] = view6;
    bottomAnchor = [viewCopy bottomAnchor];
    view4 = [v61 topAnchor];
    bottomAnchor2 = [bottomAnchor constraintEqualToAnchor:view4];
    v67[3] = bottomAnchor2;
    v41 = MEMORY[0x1E695DEC8];
    v42 = v67;
LABEL_19:
    bottomAnchor3 = [v41 arrayWithObjects:v42 count:4];
    [array addObjectsFromArray:bottomAnchor3];
    goto LABEL_11;
  }

LABEL_12:

  return array;
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
        array = [MEMORY[0x1E695DF70] array];
        leftAnchor = [(UIImageView *)self->_placeholderImageView leftAnchor];
        superview = [(UIImageView *)self->_placeholderImageView superview];
        leftAnchor2 = [superview leftAnchor];
        v16 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v8];
        [(NSArray *)array addObject:v16];

        widthAnchor = [(UIImageView *)self->_placeholderImageView widthAnchor];
        v18 = [widthAnchor constraintEqualToConstant:v10];
        [(NSArray *)array addObject:v18];

        topAnchor = [(UIImageView *)self->_placeholderImageView topAnchor];
        superview2 = [(UIImageView *)self->_placeholderImageView superview];
        topAnchor2 = [superview2 topAnchor];
        v22 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v9];
        [(NSArray *)array addObject:v22];

        heightAnchor = [(UIImageView *)self->_placeholderImageView heightAnchor];
        v24 = [heightAnchor constraintEqualToConstant:v11];
        [(NSArray *)array addObject:v24];

        [MEMORY[0x1E696ACD8] activateConstraints:array];
        placeholderImageViewConstraints = self->_placeholderImageViewConstraints;
        self->_placeholderImageViewConstraints = array;
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
        array2 = [MEMORY[0x1E695DF70] array];
        [(PUPhotoEditToolbar *)self->_mainToolbar setTranslatesAutoresizingMaskIntoConstraints:0];
        if ([(PUPhotoEditViewController *)self isIpadLayout])
        {
          leftAnchor3 = [(PUPhotoEditToolbar *)self->_mainToolbar leftAnchor];
          view = [(PUPhotoEditViewController *)self view];
          leftAnchor4 = [view leftAnchor];
          v162 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4 constant:27.0];
          v180[0] = v162;
          centerYAnchor = [(PUPhotoEditToolbar *)self->_mainToolbar centerYAnchor];
          view2 = [(PUPhotoEditViewController *)self view];
          centerYAnchor2 = [view2 centerYAnchor];
          v28 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
          v180[1] = v28;
          [(PUPhotoEditToolbar *)self->_mainToolbar heightAnchor];
          v29 = v170 = v26;
          [(PUPhotoEditViewController *)self view];
          v31 = v30 = array2;
          heightAnchor2 = [v31 heightAnchor];
          v33 = [v29 constraintEqualToAnchor:heightAnchor2];
          v180[2] = v33;
          v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v180 count:3];
          [(NSArray *)v30 addObjectsFromArray:v34];

          array2 = v30;
          v26 = v170;

          v35 = centerYAnchor;
        }

        else
        {
          layoutOrientation = [(PUPhotoEditViewController *)self layoutOrientation];
          if ((layoutOrientation - 2) >= 2)
          {
            if (layoutOrientation == 1)
            {
              [(PUPhotoEditToolbar *)self->_mainToolbar setLayoutDirection:0];
              v154 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[_mainToolbar]|" options:0x10000 metrics:0 views:v26];
              [(NSArray *)array2 addObjectsFromArray:v154];

              v155 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[_mainToolbar]-0@highPriority-|" options:0 metrics:&unk_1F2B7F198 views:v26];
              [(NSArray *)array2 addObjectsFromArray:v155];
            }

            goto LABEL_13;
          }

          [(PUPhotoEditToolbar *)self->_mainToolbar setLayoutDirection:1];
          leftAnchor3 = [(PUPhotoEditToolbar *)self->_mainToolbar rightAnchor];
          view = [(PUPhotoEditViewController *)self view];
          leftAnchor4 = [view rightAnchor];
          v162 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
          v179[0] = v162;
          topAnchor3 = [(PUPhotoEditToolbar *)self->_mainToolbar topAnchor];
          bottomAnchor = [(PUPhotoEditButtonCenteredToolbar *)self->_secondaryToolbar bottomAnchor];
          v37 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
          v179[1] = v37;
          bottomAnchor2 = [(PUPhotoEditToolbar *)self->_mainToolbar bottomAnchor];
          view3 = [(PUPhotoEditViewController *)self view];
          [view3 bottomAnchor];
          v40 = v171 = v26;
          [bottomAnchor2 constraintEqualToAnchor:v40];
          v42 = v41 = array2;
          v179[2] = v42;
          v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v179 count:3];
          [(NSArray *)v41 addObjectsFromArray:v43];

          array2 = v41;
          v26 = v171;

          v35 = topAnchor3;
        }

LABEL_13:
        [MEMORY[0x1E696ACD8] activateConstraints:array2];
        mainToolbarConstraints = self->_mainToolbarConstraints;
        self->_mainToolbarConstraints = array2;
      }
    }
  }

  if (MEMORY[0x1B8C6D660](IsEmpty))
  {
    [(PUPhotoEditViewController *)self updateSwiftToolbarConstraints];
  }

  if (self->_secondaryToolbar && !self->_secondaryToolbarConstraints)
  {
    array3 = [MEMORY[0x1E695DF70] array];
    [(PUPhotoEditButtonCenteredToolbar *)self->_secondaryToolbar setTranslatesAutoresizingMaskIntoConstraints:0];
    leadingAnchor = [(PUPhotoEditButtonCenteredToolbar *)self->_secondaryToolbar leadingAnchor];
    view4 = [(PUPhotoEditViewController *)self view];
    leadingAnchor2 = [view4 leadingAnchor];
    v49 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [(NSArray *)array3 addObject:v49];

    trailingAnchor = [(PUPhotoEditButtonCenteredToolbar *)self->_secondaryToolbar trailingAnchor];
    view5 = [(PUPhotoEditViewController *)self view];
    trailingAnchor2 = [view5 trailingAnchor];
    v53 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [(NSArray *)array3 addObject:v53];

    topAnchor4 = [(PUPhotoEditButtonCenteredToolbar *)self->_secondaryToolbar topAnchor];
    view6 = [(PUPhotoEditViewController *)self view];
    topAnchor5 = [view6 topAnchor];
    v57 = [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:0.0];

    LODWORD(v58) = 1144750080;
    [v57 setPriority:v58];
    [v57 setActive:1];
    [MEMORY[0x1E696ACD8] activateConstraints:array3];
    secondaryToolbarConstraints = self->_secondaryToolbarConstraints;
    self->_secondaryToolbarConstraints = array3;
  }

  if (!self->_actionButtonConstraints)
  {
    _actionButtonsGoInTopToolbar = [(PUPhotoEditViewController *)self _actionButtonsGoInTopToolbar];
    mainActionButton = self->_mainActionButton;
    if (_actionButtonsGoInTopToolbar)
    {
      if (!mainActionButton || !self->_cancelButton)
      {
        goto LABEL_33;
      }

      if (MEMORY[0x1B8C6D660]())
      {
        layoutOrientation2 = [(PUPhotoEditViewController *)self layoutOrientation];
        view7 = [(PUPhotoEditViewController *)self view];
        [view7 bounds];
        LOBYTE(layoutOrientation2) = [PUPhotoEditLayoutSupport requiresCompactNavBarForLayoutOrientation:layoutOrientation2 viewWidth:v64];

        if (layoutOrientation2)
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

      widthAnchor2 = [(PUPhotoEditNotchButton *)self->_mainActionButton widthAnchor];
      view8 = [widthAnchor2 constraintEqualToConstant:v65];
      v178[0] = view8;
      heightAnchor3 = [(PUPhotoEditNotchButton *)self->_mainActionButton heightAnchor];
      v71 = [heightAnchor3 constraintEqualToConstant:26.0];
      v178[1] = v71;
      widthAnchor3 = [(PUPhotoEditNotchButton *)self->_cancelButton widthAnchor];
      v73 = [widthAnchor3 constraintEqualToConstant:v65];
      v178[2] = v73;
      heightAnchor4 = [(PUPhotoEditNotchButton *)self->_cancelButton heightAnchor];
      v75 = [heightAnchor4 constraintEqualToConstant:26.0];
      v178[3] = v75;
      v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:v178 count:4];
      actionButtonConstraints = self->_actionButtonConstraints;
      self->_actionButtonConstraints = v76;

      parentViewController = widthAnchor2;
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

      parentViewController = [(PUPhotoEditViewController *)self parentViewController];
      view8 = [parentViewController view];
      heightAnchor3 = [view8 window];
      v70 = [PUPhotoEditLayoutSupport constraintsForNotchAreaButtonsLeading:cancelButton trailing:mainActionButton inWindow:heightAnchor3];
      v71 = self->_actionButtonConstraints;
      self->_actionButtonConstraints = v70;
    }

LABEL_33:
    [MEMORY[0x1E696ACD8] activateConstraints:self->_actionButtonConstraints];
  }

  previewViewFrame = [(PUPhotoEditViewController *)self previewViewFrame];
  if (v80 > 0.0 && v79 > 0.0)
  {
    if (MEMORY[0x1B8C6D660](previewViewFrame))
    {
      view9 = [(PUPhotoEditViewController *)self view];
      [view9 safeAreaInsets];
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
    view10 = [(UIViewController *)currentTool view];
    superview3 = [view10 superview];

    if (superview3)
    {
      if ((MEMORY[0x1B8C6D660]() & 1) != 0 || (mainToolbar = self->_mainToolbar) != 0 && (v87 = [(PUPhotoEditToolbar *)mainToolbar layoutOrientation], v87 == [(PUPhotoEditViewController *)self layoutOrientation]))
      {
        if (!self->_currentToolViewConstraints)
        {
          view11 = [(UIViewController *)self->_currentTool view];
          v89 = [(PUPhotoEditViewController *)self _constraintsForToolView:view11 wantsFullscreen:[(PUPhotoEditToolController *)self->_currentEditingTool wantsFullscreen]];
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
    view12 = [(PUPhotoEditToolController *)previousEditingTool view];
    superview4 = [view12 superview];

    if (superview4)
    {
      if ((MEMORY[0x1B8C6D660]() & 1) != 0 || (v94 = self->_mainToolbar) != 0 && (v95 = [(PUPhotoEditToolbar *)v94 layoutOrientation], v95 == [(PUPhotoEditViewController *)self layoutOrientation]))
      {
        view13 = [(PUPhotoEditToolController *)self->_previousEditingTool view];
        v97 = [(PUPhotoEditViewController *)self _constraintsForToolView:view13 wantsFullscreen:[(PUPhotoEditToolController *)self->_previousEditingTool wantsFullscreen]];
        [MEMORY[0x1E696ACD8] activateConstraints:v97];
      }
    }
  }

  if (self->_progressIndicatorView && !self->_progressIndicatorViewConstraints)
  {
    array4 = [MEMORY[0x1E695DF70] array];
    v99 = MEMORY[0x1E696ACD8];
    progressIndicatorView = self->_progressIndicatorView;
    view14 = [(PUPhotoEditViewController *)self view];
    v102 = [v99 constraintWithItem:progressIndicatorView attribute:9 relatedBy:0 toItem:view14 attribute:9 multiplier:1.0 constant:0.0];
    [(NSArray *)array4 addObject:v102];

    v103 = MEMORY[0x1E696ACD8];
    v104 = self->_progressIndicatorView;
    view15 = [(PUPhotoEditViewController *)self view];
    v106 = [v103 constraintWithItem:v104 attribute:10 relatedBy:0 toItem:view15 attribute:10 multiplier:1.0 constant:0.0];
    [(NSArray *)array4 addObject:v106];

    [MEMORY[0x1E696ACD8] activateConstraints:array4];
    progressIndicatorViewConstraints = self->_progressIndicatorViewConstraints;
    self->_progressIndicatorViewConstraints = array4;
  }

  [(PUPhotoEditViewController *)self _updateProgressEventBlockingViewConstraints];
  layoutOrientation3 = [(PUPhotoEditViewController *)self layoutOrientation];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && layoutOrientation3 == 1)
  {
    v112 = 18.0;
  }

  else
  {
    v112 = 0.0;
  }

  _scrollView = [(NUMediaView *)self->_mediaView _scrollView];
  view16 = [(PUPhotoEditViewController *)self view];
  [view16 safeAreaInsets];
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
    LOBYTE(imageFrameLayoutGuide) = _scrollView == 0;
    if (_scrollView)
    {
      if (!self->_transientStatusBadgeConstraints)
      {
        imageFrameLayoutGuide = self->_imageFrameLayoutGuide;
        if (imageFrameLayoutGuide)
        {
          array5 = [MEMORY[0x1E695DF70] array];
          [(CEKBadgeTextView *)self->_transientStatusBadge topAnchor];
          v123 = v174 = layoutOrientation3;
          view17 = [(PUPhotoEditViewController *)self view];
          topAnchor6 = [view17 topAnchor];
          v126 = [v123 constraintEqualToAnchor:topAnchor6 constant:v112 + v116 + 36.0];
          [(NSArray *)array5 addObject:v126];

          centerXAnchor = [(CEKBadgeTextView *)self->_transientStatusBadge centerXAnchor];
          view18 = [(PUPhotoEditViewController *)self view];
          centerXAnchor2 = [view18 centerXAnchor];
          v130 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:0.0];
          [(NSArray *)array5 addObject:v130];

          widthAnchor4 = [(CEKBadgeTextView *)self->_transientStatusBadge widthAnchor];
          widthAnchor5 = [_scrollView widthAnchor];
          v133 = [widthAnchor4 constraintLessThanOrEqualToAnchor:widthAnchor5 multiplier:1.0 constant:-18.0];
          [(NSArray *)array5 addObject:v133];

          layoutOrientation3 = v174;
          [MEMORY[0x1E696ACD8] activateConstraints:array5];
          transientStatusBadgeConstraints = self->_transientStatusBadgeConstraints;
          self->_transientStatusBadgeConstraints = array5;

          LOBYTE(imageFrameLayoutGuide) = 0;
        }
      }
    }
  }

  else
  {
    LOBYTE(imageFrameLayoutGuide) = _scrollView == 0;
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
      array6 = [MEMORY[0x1E695DF70] array];
      [(PXUIAssetBadgeView *)self->_assetTypeBadge topAnchor];
      v138 = v137 = layoutOrientation3;
      topAnchor7 = [_scrollView topAnchor];
      v140 = [v138 constraintEqualToAnchor:topAnchor7 constant:v119 + 6.0];
      [(NSArray *)array6 addObject:v140];

      leftAnchor5 = [(PXUIAssetBadgeView *)self->_assetTypeBadge leftAnchor];
      leftAnchor6 = [_scrollView leftAnchor];
      if (v137 == 1)
      {
        v143 = 6.0;
      }

      else
      {
        v143 = v135;
      }

      v144 = [leftAnchor5 constraintEqualToAnchor:leftAnchor6 constant:v143];
      [(NSArray *)array6 addObject:v144];

      [MEMORY[0x1E696ACD8] activateConstraints:array6];
      assetTypeBadgeConstraints = self->_assetTypeBadgeConstraints;
      self->_assetTypeBadgeConstraints = array6;
    }
  }

  if (self->_mediaView && !self->_mediaViewConstraints)
  {
    view19 = [(PUPhotoEditViewController *)self view];
    centerXAnchor3 = [(NUMediaView *)self->_mediaView centerXAnchor];
    centerXAnchor4 = [view19 centerXAnchor];
    v169 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v177[0] = v169;
    centerYAnchor3 = [(NUMediaView *)self->_mediaView centerYAnchor];
    centerYAnchor4 = [view19 centerYAnchor];
    v163 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v177[1] = v163;
    heightAnchor5 = [(NUMediaView *)self->_mediaView heightAnchor];
    heightAnchor6 = [view19 heightAnchor];
    v148 = [heightAnchor5 constraintEqualToAnchor:heightAnchor6];
    v177[2] = v148;
    widthAnchor6 = [(NUMediaView *)self->_mediaView widthAnchor];
    widthAnchor7 = [view19 widthAnchor];
    v151 = [widthAnchor6 constraintEqualToAnchor:widthAnchor7];
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
      leftAnchor = [(UIView *)self->_progressEventBlockingView leftAnchor];
      view = [(PUPhotoEditViewController *)self view];
      leftAnchor2 = [view leftAnchor];
      v5 = [leftAnchor constraintEqualToAnchor:?];
      v42 = v5;
      if (v3)
      {
        v45[0] = v5;
        topAnchor = [(UIView *)self->_progressEventBlockingView topAnchor];
        view2 = [(PUPhotoEditViewController *)self view];
        safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
        [safeAreaLayoutGuide topAnchor];
        v37 = v40 = topAnchor;
        view5 = [topAnchor constraintEqualToAnchor:?];
        v45[1] = view5;
        rightAnchor = [(UIView *)self->_progressEventBlockingView rightAnchor];
        view3 = [(PUPhotoEditViewController *)self view];
        rightAnchor2 = [view3 rightAnchor];
        v35 = rightAnchor;
        view6 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
        v45[2] = view6;
        bottomAnchor = [(UIView *)self->_progressEventBlockingView bottomAnchor];
        view4 = [(PUPhotoEditViewController *)self view];
        bottomAnchor2 = [view4 bottomAnchor];
        [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v15 = v14 = leftAnchor;
        v45[3] = v15;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:4];
        progressEventBlockingViewConstraints = self->_progressEventBlockingViewConstraints;
        self->_progressEventBlockingViewConstraints = v16;

        leftAnchor = v14;
      }

      else
      {
        v44[0] = v5;
        topAnchor2 = [(UIView *)self->_progressEventBlockingView topAnchor];
        view2 = [(PUPhotoEditButtonCenteredToolbar *)self->_secondaryToolbar bottomAnchor];
        v40 = topAnchor2;
        safeAreaLayoutGuide = [topAnchor2 constraintEqualToAnchor:?];
        v44[1] = safeAreaLayoutGuide;
        rightAnchor3 = [(UIView *)self->_progressEventBlockingView rightAnchor];
        view5 = [(PUPhotoEditViewController *)self view];
        [view5 rightAnchor];
        v35 = v37 = rightAnchor3;
        view3 = [rightAnchor3 constraintEqualToAnchor:?];
        v44[2] = view3;
        rightAnchor2 = [(UIView *)self->_progressEventBlockingView bottomAnchor];
        view6 = [(PUPhotoEditViewController *)self view];
        bottomAnchor = [view6 bottomAnchor];
        view4 = [rightAnchor2 constraintEqualToAnchor:bottomAnchor];
        v44[3] = view4;
        v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:4];
        bottomAnchor2 = self->_progressEventBlockingViewConstraints;
        self->_progressEventBlockingViewConstraints = v20;
      }

      view7 = view;
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
      leftAnchor = [(UIView *)progressEventBlockingView leftAnchor];
      view7 = [(PUPhotoEditViewController *)self view];
      leftAnchor2 = [view7 leftAnchor];
      v40 = [leftAnchor constraintEqualToAnchor:?];
      v43[0] = v40;
      topAnchor3 = [(UIView *)self->_progressEventBlockingView topAnchor];
      safeAreaLayoutGuide = [(PUPhotoEditViewController *)self view];
      [safeAreaLayoutGuide topAnchor];
      v37 = view2 = topAnchor3;
      view5 = [topAnchor3 constraintEqualToAnchor:?];
      v43[1] = view5;
      rightAnchor4 = [(UIView *)self->_progressEventBlockingView rightAnchor];
      view3 = [(PUPhotoEditViewController *)self view];
      rightAnchor2 = [view3 rightAnchor];
      v35 = rightAnchor4;
      view6 = [rightAnchor4 constraintEqualToAnchor:rightAnchor2];
      v43[2] = view6;
      bottomAnchor = [(UIView *)self->_progressEventBlockingView bottomAnchor];
      v42 = v29;
      view4 = [v29 topAnchor];
      bottomAnchor2 = [bottomAnchor constraintEqualToAnchor:view4];
      v43[3] = bottomAnchor2;
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

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PUPhotoEditViewController;
  [(PUPhotoEditViewController *)&v5 viewDidDisappear:disappear];
  [(PUViewControllerSpec *)self->_photoEditSpec unregisterChangeObserver:self];
  [(PUPhotoEditViewController *)self updateProgressIndicatorAnimated:0];
  viewIfLoaded = [(PUPhotoEditViewController *)self viewIfLoaded];
  PXAppIntentsClearViewAnnotationDelegate();

  [(PUPhotoEditViewController *)self _teardownCleanupResources];
  [MEMORY[0x1E69C3548] setTipsPresentationDelegate:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v10.receiver = self;
  v10.super_class = PUPhotoEditViewController;
  [(PUPhotoEditViewController *)&v10 viewWillDisappear:disappear];
  navigationController = [(PUPhotoEditViewController *)self navigationController];
  [navigationController setOverrideUserInterfaceStyle:0];

  navigationController2 = [(PUPhotoEditViewController *)self navigationController];
  [navigationController2 setNeedsUserInterfaceAppearanceUpdate];

  resourceLoader = [(PUPhotoEditViewController *)self resourceLoader];
  [resourceLoader cancelAllRequests];

  revertConfirmationAlert = [(PUPhotoEditViewController *)self revertConfirmationAlert];

  if (revertConfirmationAlert)
  {
    revertConfirmationAlert2 = [(PUPhotoEditViewController *)self revertConfirmationAlert];
    [revertConfirmationAlert2 dismissViewControllerAnimated:0 completion:0];
  }

  [(NUMediaView *)self->_mediaView _stopVideoPlayback];
  compositionController = [(PUPhotoEditViewController *)self compositionController];
  [compositionController setChangeDelegate:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = PUPhotoEditViewController;
  [(PUPhotoEditViewController *)&v6 viewDidAppear:?];
  [(PUPhotoEditViewController *)self updateProgressIndicatorAnimated:appearCopy];
  view = [(PUPhotoEditViewController *)self view];
  PXAppIntentsSetViewAnnotationDelegate();

  [MEMORY[0x1E69C3548] setTipsPresentationDelegate:self];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v13.receiver = self;
  v13.super_class = PUPhotoEditViewController;
  [(PUPhotoEditViewController *)&v13 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  if (window)
  {
    [(PUPhotoEditViewController *)self _loadPhotoEditResourcesIfNeeded];
  }

  view = [(PUPhotoEditViewController *)self view];
  [view bounds];
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

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v20.receiver = self;
  v20.super_class = PUPhotoEditViewController;
  [(PUPhotoEditViewController *)&v20 viewWillAppear:?];
  navigationController = [(PUPhotoEditViewController *)self navigationController];
  [navigationController setOverrideUserInterfaceStyle:{-[PUPhotoEditViewController preferredUserInterfaceStyle](self, "preferredUserInterfaceStyle")}];

  navigationController2 = [(PUPhotoEditViewController *)self navigationController];
  [navigationController2 setNeedsUserInterfaceAppearanceUpdate];

  avResourceReclamationAssertion = [(PUPhotoEditViewController *)self avResourceReclamationAssertion];

  if (!avResourceReclamationAssertion)
  {
    avResourceReclamationController = [(PUPhotoEditViewController *)self avResourceReclamationController];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [avResourceReclamationController takeAssertionPreventingResourceReclamationWithReason:v10];
    [(PUPhotoEditViewController *)self setAvResourceReclamationAssertion:v11];
  }

  [(UIViewController *)self pu_setupInitialBarsVisibilityOnViewWillAppearAnimated:appearCopy];
  [(PUPhotoEditViewController *)self _updateTraitCollectionAndLayoutReferenceSize];
  [(PUViewControllerSpec *)self->_photoEditSpec registerChangeObserver:self];
  view = [(PUPhotoEditViewController *)self view];
  [view bounds];
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
  compositionController = [(PUPhotoEditViewController *)self compositionController];
  [compositionController setChangeDelegate:self];

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
  view = [(PUPhotoEditViewController *)self view];
  [view setAccessibilityIgnoresInvertColors:1];
  contentScrollView = [(PUPhotoEditViewController *)self contentScrollView];
  [contentScrollView setContentInsetAdjustmentBehavior:3];

  _createMediaView = [(PUPhotoEditViewController *)self _createMediaView];
  mediaView = self->_mediaView;
  self->_mediaView = _createMediaView;

  [view addSubview:self->_mediaView];
  [(PUPhotoEditViewController *)self _createVideoScrubberIfNeeded];
  v7 = objc_alloc_init(MEMORY[0x1E69C4260]);
  autoEnhanceController = self->_autoEnhanceController;
  self->_autoEnhanceController = v7;

  [(PUPhotoEditViewController *)self _setupImagePluginSession];
  [view setNeedsUpdateConstraints];
  [(PUPhotoEditViewController *)self _updateLayerModulation];
  v9 = +[PUPhotoEditProtoSettings sharedInstance];
  enablePerfDebugHUD = [v9 enablePerfDebugHUD];

  if (enablePerfDebugHUD)
  {
    v11 = objc_alloc_init(PUPhotoEditPerfHUD);
    [(PUPhotoEditViewController *)self setPerfHUD:v11];

    perfHUD = [(PUPhotoEditViewController *)self perfHUD];
    [perfHUD setTranslatesAutoresizingMaskIntoConstraints:0];

    perfHUD2 = [(PUPhotoEditViewController *)self perfHUD];
    [view addSubview:perfHUD2];

    isFirstSinceBoot = [(PUPhotoEditViewController *)self isFirstSinceBoot];
    perfHUD3 = [(PUPhotoEditViewController *)self perfHUD];
    [perfHUD3 setFirstSinceBoot:isFirstSinceBoot];

    isFirstSinceLaunch = [(PUPhotoEditViewController *)self isFirstSinceLaunch];
    perfHUD4 = [(PUPhotoEditViewController *)self perfHUD];
    [perfHUD4 setFirstSinceLaunch:isFirstSinceLaunch];

    enterEditTimeInterval = [(PUPhotoEditViewController *)self enterEditTimeInterval];
    perfHUD5 = [(PUPhotoEditViewController *)self perfHUD];
    [perfHUD5 setEnterEditTimeInterval:enterEditTimeInterval];

    resourceCheckingInterval = [(PUPhotoEditViewController *)self resourceCheckingInterval];
    perfHUD6 = [(PUPhotoEditViewController *)self perfHUD];
    [perfHUD6 setResourceCheckingInterval:resourceCheckingInterval];

    resourceDownloadInterval = [(PUPhotoEditViewController *)self resourceDownloadInterval];
    perfHUD7 = [(PUPhotoEditViewController *)self perfHUD];
    [perfHUD7 setResourceDownloadInterval:resourceDownloadInterval];

    resourceLoadingInterval = [(PUPhotoEditViewController *)self resourceLoadingInterval];
    perfHUD8 = [(PUPhotoEditViewController *)self perfHUD];
    [perfHUD8 setResourceLoadingInterval:resourceLoadingInterval];

    autoCalcInterval = [(PUPhotoEditViewController *)self autoCalcInterval];
    perfHUD9 = [(PUPhotoEditViewController *)self perfHUD];
    [perfHUD9 setAutoCalcInterval:autoCalcInterval];

    filterInterval = [(PUPhotoEditViewController *)self filterInterval];
    perfHUD10 = [(PUPhotoEditViewController *)self perfHUD];
    [perfHUD10 setFilterInterval:filterInterval];

    exitEditTimeInterval = [(PUPhotoEditViewController *)self exitEditTimeInterval];
    perfHUD11 = [(PUPhotoEditViewController *)self perfHUD];
    [perfHUD11 setExitEditTimeInterval:exitEditTimeInterval];

    perfHUD12 = [(PUPhotoEditViewController *)self perfHUD];
    leadingAnchor = [perfHUD12 leadingAnchor];
    safeAreaLayoutGuide = [view safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:4.0];
    [v36 setActive:1];

    perfHUD13 = [(PUPhotoEditViewController *)self perfHUD];
    topAnchor = [perfHUD13 topAnchor];
    safeAreaLayoutGuide2 = [view safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide2 topAnchor];
    v41 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:50.0];
    [v41 setActive:1];

    photo = [(PUPhotoEditViewController *)self photo];
    pathForOriginalImageFile = [photo pathForOriginalImageFile];
    lastPathComponent = [pathForOriginalImageFile lastPathComponent];
    perfHUD14 = [(PUPhotoEditViewController *)self perfHUD];
    [perfHUD14 setDetailText:lastPathComponent];
LABEL_5:

    goto LABEL_6;
  }

  v46 = +[PUPhotoEditProtoSettings sharedInstance];
  enableSemanticDevelopmentHUD = [v46 enableSemanticDevelopmentHUD];

  if (enableSemanticDevelopmentHUD)
  {
    v48 = [PUPhotoSceneHUD alloc];
    photo2 = [(PUPhotoEditViewController *)self photo];
    v50 = [(PUPhotoSceneHUD *)v48 initWithPhoto:photo2];
    [(PUPhotoEditViewController *)self setSceneHUD:v50];

    sceneHUD = [(PUPhotoEditViewController *)self sceneHUD];
    [sceneHUD setTranslatesAutoresizingMaskIntoConstraints:0];

    sceneHUD2 = [(PUPhotoEditViewController *)self sceneHUD];
    [view addSubview:sceneHUD2];

    sceneHUD3 = [(PUPhotoEditViewController *)self sceneHUD];
    leadingAnchor3 = [sceneHUD3 leadingAnchor];
    safeAreaLayoutGuide3 = [view safeAreaLayoutGuide];
    leadingAnchor4 = [safeAreaLayoutGuide3 leadingAnchor];
    v57 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:4.0];
    [v57 setActive:1];

    photo = [(PUPhotoEditViewController *)self sceneHUD];
    pathForOriginalImageFile = [photo topAnchor];
    lastPathComponent = [view safeAreaLayoutGuide];
    perfHUD14 = [lastPathComponent topAnchor];
    v58 = [pathForOriginalImageFile constraintEqualToAnchor:perfHUD14 constant:50.0];
    [v58 setActive:1];

    goto LABEL_5;
  }

LABEL_6:
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__undoManagerDidCloseUndoGroupNotification_ name:*MEMORY[0x1E696AA18] object:0];
  [defaultCenter addObserver:self selector:sel__undoManagerWillUndo_ name:*MEMORY[0x1E696AA48] object:0];
  [defaultCenter addObserver:self selector:sel__undoManagerWillRedo_ name:*MEMORY[0x1E696AA40] object:0];
  [defaultCenter addObserver:self selector:sel__undoManagerDidUndo_ name:*MEMORY[0x1E696AA30] object:0];
  if (MEMORY[0x1B8C6D660]([defaultCenter addObserver:self selector:sel__undoManagerDidRedo_ name:*MEMORY[0x1E696AA28] object:0]))
  {
    [(PUPhotoEditViewController *)self setupSwiftToolbar];
    [(PUPhotoEditViewController *)self updateSwiftToolbarConstraints];
    mEMORY[0x1E69C3A68] = [MEMORY[0x1E69C3A68] sharedInstance];
    enableAdaptiveDarkBiasInEdit = [mEMORY[0x1E69C3A68] enableAdaptiveDarkBiasInEdit];

    if (enableAdaptiveDarkBiasInEdit)
    {
      mediaView = [(PUPhotoEditViewController *)self mediaView];
      _scrollView = [mediaView _scrollView];
      [_scrollView px_setPocketPreferredUserInterfaceStyleForAllEdges:2];
    }
  }
}

- (id)_composition
{
  editSource = [(PUPhotoEditViewController *)self editSource];
  if (editSource)
  {
    editSource2 = [(PUPhotoEditViewController *)self editSource];
    mediaType = [editSource2 mediaType];
    goto LABEL_5;
  }

  originalImageEditSource = [(PUPhotoEditViewController *)self originalImageEditSource];
  if (originalImageEditSource)
  {
    editSource2 = originalImageEditSource;
    originalImageEditSource2 = [(PUPhotoEditViewController *)self originalImageEditSource];
    mediaType = [originalImageEditSource2 mediaType];

LABEL_5:
    if (mediaType)
    {
      goto LABEL_6;
    }
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:987 description:{@"could not work out media type, so no composition for you!"}];

  mediaType = 0;
LABEL_6:
  v9 = MEMORY[0x1E69BE360];
  compositionController = [(PUPhotoEditViewController *)self compositionController];
  v11 = [v9 validatedCompositionCopyFor:compositionController mediaType:mediaType];

  return v11;
}

- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection
{
  [(PUPhotoEditViewController *)self _updateTraitCollectionAndLayoutReferenceSize:environment];
  photoEditSpec = [(PUPhotoEditViewController *)self photoEditSpec];
  [photoEditSpec layoutReferenceSize];
  [(PUPhotoEditViewController *)self _updateLayoutOrientationWithViewSize:0 transitionCoordinator:?];

  [(PUPhotoEditViewController *)self _updateSpecDependentUIPieces];
}

- (void)_updateTraitCollectionAndLayoutReferenceSize
{
  view = [(PUPhotoEditViewController *)self view];
  [view bounds];
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

- (void)_updateTraitCollectionAndLayoutReferenceSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  traitCollection = [(PUPhotoEditViewController *)self traitCollection];
  photoEditSpec = self->_photoEditSpec;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __74__PUPhotoEditViewController__updateTraitCollectionAndLayoutReferenceSize___block_invoke;
  v12 = &unk_1E7B80688;
  selfCopy = self;
  v14 = traitCollection;
  v15 = width;
  v16 = height;
  v8 = traitCollection;
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

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if (![(PUPhotoEditViewController *)self _updatePreviewOriginal:0 withPresses:endedCopy])
  {
    v8.receiver = self;
    v8.super_class = PUPhotoEditViewController;
    [(PUPhotoEditViewController *)&v8 pressesBegan:endedCopy withEvent:eventCopy];
  }
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  if (![(PUPhotoEditViewController *)self _updatePreviewOriginal:0 withPresses:cancelledCopy])
  {
    v8.receiver = self;
    v8.super_class = PUPhotoEditViewController;
    [(PUPhotoEditViewController *)&v8 pressesBegan:cancelledCopy withEvent:eventCopy];
  }
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if (![(PUPhotoEditViewController *)self _updatePreviewOriginal:1 withPresses:beganCopy])
  {
    v8.receiver = self;
    v8.super_class = PUPhotoEditViewController;
    [(PUPhotoEditViewController *)&v8 pressesBegan:beganCopy withEvent:eventCopy];
  }
}

- (BOOL)_updatePreviewOriginal:(BOOL)original withPresses:(id)presses
{
  originalCopy = original;
  v22 = *MEMORY[0x1E69E9840];
  pressesCopy = presses;
  if ([(PUPhotoEditToolController *)self->_currentEditingTool supportsPreviewingOriginal])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = pressesCopy;
    v7 = pressesCopy;
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
          charactersIgnoringModifiers = [v13 charactersIgnoringModifiers];

          if ([charactersIgnoringModifiers isEqualToString:@"m"])
          {
            [(PUPhotoEditViewController *)self setShouldBePreviewingOriginal:originalCopy];
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

    pressesCopy = v16;
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
    _allTools = [(PUPhotoEditViewController *)self _allTools];
    v61 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(_allTools, "count")}];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    obj = _allTools;
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
      scrubberOrientation = [(PUPhotoEditToolController *)self->_currentEditingTool scrubberOrientation];
      v22 = MEMORY[0x1E69DDF10];
      if (scrubberOrientation != 1)
      {
        v22 = MEMORY[0x1E69DDF30];
      }

      v23 = *v22;
      v24 = MEMORY[0x1E69DCBA0];
      if (scrubberOrientation == 1)
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
      scrubberOrientation2 = [(PUPhotoEditToolController *)self->_currentEditingTool scrubberOrientation];
      v34 = MEMORY[0x1E69DDF10];
      if (scrubberOrientation2 != 1)
      {
        v34 = MEMORY[0x1E69DDE90];
      }

      v35 = *v34;
      v36 = MEMORY[0x1E69DCBA0];
      if (scrubberOrientation2 == 1)
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
  assetChangeTimeoutTimer = [(PUPhotoEditViewController *)self assetChangeTimeoutTimer];
  [assetChangeTimeoutTimer invalidate];

  [(PUPhotoEditViewController *)self setAssetChangeTimeoutTimer:0];
  if (self->_progressIndicatorInteractionDisablingToken)
  {
    [PUInterfaceManager endDisablingUserInteraction:?];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  [px_deprecated_appPhotoLibrary px_unregisterChangeObserver:self];

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

- (PUPhotoEditViewController)initWithPhoto:(id)photo mediaProvider:(id)provider mediaDestination:(id)destination
{
  v76[3] = *MEMORY[0x1E69E9840];
  photoCopy = photo;
  providerCopy = provider;
  destinationCopy = destination;
  v75.receiver = self;
  v75.super_class = PUPhotoEditViewController;
  v13 = [(PUPhotoEditViewController *)&v75 initWithNibName:0 bundle:0];
  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x1E69C1AC8]);
    avResourceReclamationController = v13->_avResourceReclamationController;
    v13->_avResourceReclamationController = v14;

    if (!photoCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v13 file:@"PUPhotoEditViewController.m" lineNumber:746 description:{@"Invalid parameter not satisfying: %@", @"photo"}];
    }

    v68 = providerCopy;
    v16 = objc_alloc_init(PUPhotoEditViewControllerSpec);
    photoEditSpec = v13->_photoEditSpec;
    v13->_photoEditSpec = v16;

    objc_storeStrong(&v13->_photo, photo);
    objc_storeStrong(&v13->_mediaProvider, provider);
    objc_storeStrong(&v13->_mediaDestination, destination);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [destinationCopy setDelegate:v13];
    }

    v13->_workImageVersion = 0;
    v13->_layoutOrientation = 1;
    v18 = objc_alloc_init(PUPhotoEditAggregateSession);
    aggregateSession = v13->_aggregateSession;
    v13->_aggregateSession = v18;

    if ([(PUPhotoEditViewController *)v13 isStandardVideo])
    {
      [(PUPhotoEditAggregateSession *)v13->_aggregateSession setShouldUseVideoKeys:1];
      [photoCopy duration];
      [(PUPhotoEditAggregateSession *)v13->_aggregateSession setOriginalDuration:?];
    }

    v20 = objc_alloc_init(_PPTState);
    pptState = v13->_pptState;
    v13->_pptState = v20;

    v22 = objc_alloc_init(MEMORY[0x1E69C3B98]);
    enterEditTimeInterval = v13->_enterEditTimeInterval;
    v13->_enterEditTimeInterval = v22;

    v24 = PLPhotoEditGetLog();
    enterEditTimeInterval = [(PUPhotoEditViewController *)v13 enterEditTimeInterval];
    v26 = os_signpost_id_make_with_pointer(v24, enterEditTimeInterval);

    pathForOriginalImageFile = [photoCopy pathForOriginalImageFile];
    lastPathComponent = [pathForOriginalImageFile lastPathComponent];

    pixelWidth = [photoCopy pixelWidth];
    pixelHeight = [photoCopy pixelHeight];
    v31 = v13->_enterEditTimeInterval;
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __74__PUPhotoEditViewController_initWithPhoto_mediaProvider_mediaDestination___block_invoke;
    v69[3] = &unk_1E7B7AE18;
    v70 = v24;
    v71 = lastPathComponent;
    v72 = v26;
    v73 = pixelWidth;
    v74 = pixelHeight;
    v32 = lastPathComponent;
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

    [(PUEnterEditPerformanceEventBuilder *)v13->_enterEditEventBuilder setAsset:photoCopy];
    v55 = objc_alloc_init(PUExitEditPerformanceEventBuilder);
    exitEditEventBuilder = v13->_exitEditEventBuilder;
    v13->_exitEditEventBuilder = v55;

    [(PUExitEditPerformanceEventBuilder *)v13->_exitEditEventBuilder setAsset:photoCopy];
    v57 = PXCheckAndNoteUseOfSystemSinceBoot();
    v58 = PUCheckAndNoteFirstEntryIntoEditSinceLaunch_isFirstUseSinceLaunch;
    PUCheckAndNoteFirstEntryIntoEditSinceLaunch_isFirstUseSinceLaunch = 1;
    enterEditEventBuilder = [(PUPhotoEditViewController *)v13 enterEditEventBuilder];
    [enterEditEventBuilder setFirstSinceBoot:v57];

    enterEditEventBuilder2 = [(PUPhotoEditViewController *)v13 enterEditEventBuilder];
    [enterEditEventBuilder2 setFirstSinceLaunch:(v58 & 1) == 0];

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

    providerCopy = v68;
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