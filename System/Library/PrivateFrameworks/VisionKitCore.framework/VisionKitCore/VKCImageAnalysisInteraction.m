@interface VKCImageAnalysisInteraction
+ (void)_quickActionResultForDocumentObservation:(id)a3 queue:(id)a4 completionHandler:(id)a5;
- ($58EB755F713D70195D081A2438463C76)videoPreviewTimeRange;
- (BOOL)_highlightSelectableItems;
- (BOOL)_inhibitSubjectDimmingAndLiftView;
- (BOOL)_isPublicAPI;
- (BOOL)_isShowingTranslationOverlay;
- (BOOL)_isVIHosted;
- (BOOL)_photosInfoSingleTapSubjectModeEnabled;
- (BOOL)_showVSResultForItem:(id)a3;
- (BOOL)actionInfoItemExistsAtPoint:(CGPoint)a3;
- (BOOL)actionInfoLayoutUpdatesSuspended;
- (BOOL)actionInfoLiveTextButtonDisabled;
- (BOOL)actionInfoQuickActionsDisabled;
- (BOOL)actionInfoVisualSearchCornerViewDisabled;
- (BOOL)allowLongPressForDataDetectorsInTextMode;
- (BOOL)analysisButtonPrefersDarkGlyphWhenSelected;
- (BOOL)analysisContainsTextAtPoint:(CGPoint)a3;
- (BOOL)baseOverlayView:(id)a3 shouldBeginInteractionAtPoint:(CGPoint)a4 withTypes:(unint64_t)a5;
- (BOOL)baseOverlayView:(id)a3 shouldHandleShareWithRanges:(id)a4 boundingRect:(CGRect)a5 selectedText:(id)a6 selectedAttributedText:(id)a7;
- (BOOL)baseOverlayView:(id)a3 shouldShowLookupForItemFromCallout:(id)a4;
- (BOOL)dataDetectorExistsAtPoint:(CGPoint)a3;
- (BOOL)hasActiveTextSelection;
- (BOOL)imageSubjectExistsAtPoint:(CGPoint)a3;
- (BOOL)interactableItemExistsAtPoint:(CGPoint)a3;
- (BOOL)isBaseOverlayViewShowingLivePhoto:(id)a3 delegateHasImplementation:(BOOL *)a4;
- (BOOL)isDraggingVisualIntelligenceSheet;
- (BOOL)isSubjectAnalysisComplete;
- (BOOL)isSubjectHighlightAvailable;
- (BOOL)isVisualIntelligenceSheetVisible;
- (BOOL)subjectHighlightActive;
- (BOOL)subjectInteractionInProgress;
- (BOOL)subjectViewUserInteractionDisabled;
- (BOOL)textExistsAtPoint:(CGPoint)a3;
- (BOOL)topLevelImplementsContentsRectDelegateForBaseView:(id)a3;
- (BOOL)usesLightDimmingViewInLightMode;
- (BOOL)visualSearchExistsAtPoint:(CGPoint)a3;
- (BOOL)wantsAutomaticContentsRectCalculation;
- (CGRect)contentsRect;
- (CGRect)contentsRectForImageRecognitionBaseView:(id)a3;
- (CGRect)imageSubjectBoundsWithIndexes:(id)a3;
- (CGRect)subjectFrame;
- (CGRect)videoPreviewNormalizedCropRect;
- (NSArray)_actionInfoButtons;
- (NSArray)selectedRanges;
- (NSArray)textGesturesForFailureRequirements;
- (NSArray)visualSearchResultItems;
- (NSAttributedString)selectedAttributedText;
- (NSIndexSet)allSubjectIndexes;
- (NSIndexSet)selectedSubjectIndexes;
- (NSString)_customAnalyticsIdentifier;
- (NSString)description;
- (NSString)selectedText;
- (NSString)text;
- (UIActivity)feedbackActivity;
- (UIEdgeInsets)actionInfoEdgeInsets;
- (UIImage)_photosImageForRemoveBackground;
- (UIView)view;
- (UIView)viewForObservingContentMode;
- (VKCActionInfoView)actionInfoView;
- (VKCImageAnalysisInteraction)init;
- (VKCImageAnalysisInteraction)initWithInteractionOptions:(unint64_t)a3;
- (VKCImageAnalysisInteractionDelegate)_viHostDelegate;
- (VKCImageAnalysisInteractionDelegate)delegate;
- (VKCVisualSearchCornerView)actionInfoCornerButtonView;
- (VKImageAnalysisBarButtonItem)analysisBarButtonItem;
- (VKImageAnalysisButton)actionInfoAnalysisButton;
- (VKImageAnalysisButton)analysisButton;
- (VKInteractionAnalyticsDelegate)_analyticsDelegate;
- (double)currentVisualIntelligenceSheetProgress;
- (id)_createQuickActionInfos;
- (id)_filteredNormalizedRectangleQuads;
- (id)_filteredRectangleQuads;
- (id)_rawRectangleObservations;
- (id)baseOverlayView:(id)a3 updateAttributedStringForCopy:(id)a4;
- (id)baseOverlayView:(id)a3 updateStringForCopy:(id)a4;
- (id)createAnalysisButton;
- (id)customLayoutActionInfoView;
- (id)generatePlistsForScalingAndAlignment;
- (id)generateSubjectImage;
- (id)imageForImageSnapshotForBaseView:(id)a3;
- (id)imageSubjectPathWithIndexes:(id)a3;
- (id)omnibarContainerView;
- (id)presentingViewControllerForFeedbackProvider;
- (id)presentingViewControllerForImageAnalysisInteraction;
- (id)previewForDataDetectorElementView:(id)a3;
- (id)resultItems;
- (id)subjectIndexAtPoint:(CGPoint)a3;
- (id)videoPreviewSubjectMatteAtCompositionTime:(id *)a3;
- (id)videoPreviewSubjectMatteForImage:(id)a3 atCompositionTime:(id *)a4;
- (id)viewForImageSnapshotForBaseView:(id)a3;
- (unint64_t)activeInteractionTypes;
- (unint64_t)dataDetectorTypes;
- (unint64_t)deriveCurrentAutomaticState;
- (void)_addAsyncMRCElement:(id)a3;
- (void)_automaticallyShowVisualSearchResultsIfApplicable;
- (void)_copyAllToClipboard;
- (void)_highlightFilteredRectangleQuads;
- (void)_highlightRectangleObservations;
- (void)_provideFeedback;
- (void)_setActiveInteractionTypes:(unint64_t)a3 updateAutomaticState:(BOOL)a4;
- (void)_test_activateTranslationOverlay;
- (void)aAAnalysisButtonPressed:(id)a3;
- (void)addEventToAnalyticsSession:(id)a3;
- (void)addMetadataToVSFeedbackItem:(id)a3;
- (void)analysisDidUpdate:(id)a3;
- (void)baseOverlayView:(id)a3 analyticsEventDidOccur:(id)a4;
- (void)baseOverlayView:(id)a3 didFinishTransitionToNormalizedVisibleRect:(CGRect)a4;
- (void)baseOverlayView:(id)a3 didTapVisualSearchIndicatorWithNormalizedBoundingBox:(CGRect)a4;
- (void)baseOverlayView:(id)a3 didUpdateToNormalizedVisibleRect:(CGRect)a4;
- (void)baseOverlayView:(id)a3 livePhotoShouldPlay:(BOOL)a4;
- (void)baseOverlayView:(id)a3 prepareForCalloutAction:(SEL)a4 completion:(id)a5;
- (void)baseOverlayViewDidBeginSubjectAnalysis:(id)a3;
- (void)baseOverlayViewDidCompleteSubjectAnalysis:(id)a3;
- (void)baseOverlayViewDidRequestButtonStateUpdate:(id)a3;
- (void)baseOverlayViewDismissVisualSearchController:(id)a3;
- (void)baseOverlayViewSubjectInteractionInProgressDidChange:(id)a3;
- (void)beginImageSubjectAnalysisIfNecessary;
- (void)beginImageSubjectAnalysisIfNecessaryWithCompletion:(id)a3;
- (void)beginImageSubjectAnalysisWithDelayIfNecessary;
- (void)beginNewAnalyticsSessionIfNecessary;
- (void)clearMatchedHighlightsIfNecessaryAnimated:(BOOL)a3;
- (void)closeAndSendCurrentAnalyticsSession;
- (void)commonInit;
- (void)configureButtonsForState:(unint64_t)a3 updateActiveTypes:(BOOL)a4;
- (void)configureForCurrentDerivedAutomaticStateWithUpdateActiveTypes:(BOOL)a3;
- (void)createStickerImageAtIndexSet:(id)a3 completion:(id)a4;
- (void)createStickerRepresentationsAtIndexSet:(id)a3 completion:(id)a4;
- (void)createStickerRepresentationsAtIndexSet:(id)a3 type:(unint64_t)a4 stickerIDs:(id)a5 progress:(id)a6 completion:(id)a7;
- (void)dealloc;
- (void)didMoveToView:(id)a3;
- (void)dismissVisualIntelligenceSheetIfNecessary;
- (void)generateTextualVisualSearchResultForQueryInfo:(id)a3 completionHandler:(id)a4;
- (void)generateVisualSearchResultForItems:(id)a3 queryID:(unint64_t)a4 completionHandler:(id)a5;
- (void)hasActiveTextSelectionDidChangeForBaseOverlayView:(id)a3;
- (void)highlightMatchesForString:(id)a3 animated:(BOOL)a4;
- (void)highlightMatchesForStrings:(id)a3 animated:(BOOL)a4;
- (void)highlightSelectableItemsDidChangeForBaseOverlayView:(id)a3;
- (void)highlightSubjectAtIndexSet:(id)a3 showCallout:(BOOL)a4 showBurst:(BOOL)a5 burstPoint:(CGPoint)a6 animated:(BOOL)a7;
- (void)loadImageSubjectIfAvailableWithCompletion:(id)a3;
- (void)loadImageSubjectWithIndexes:(id)a3 completion:(id)a4;
- (void)logButtonsVisibleStatus;
- (void)navOrToolbarVisibilityDidChange:(id)a3;
- (void)navOrToolbarVisibilityWillChange:(id)a3;
- (void)openInfoPaneForTopItem;
- (void)presentVisualIntelligenceSheet;
- (void)quickActionProcessingCompleteForBaseOverlayView:(id)a3;
- (void)resetCustomLayoutActionInfoView;
- (void)resetSelection;
- (void)scrollViewDidZoomToUnitRect:(CGRect)a3;
- (void)sendAAButtonPressedDelegateCallbackIfNecessaryForSender:(id)a3;
- (void)sendAnalyticsEventWithType:(int64_t)a3 source:(int64_t)a4 analysisButtonActive:(BOOL)a5;
- (void)setActionInfoCustomFont:(id)a3;
- (void)setActionInfoEdgeInsets:(UIEdgeInsets)a3;
- (void)setActionInfoLayoutUpdatesSuspended:(BOOL)a3;
- (void)setActionInfoLiveTextButtonDisabled:(BOOL)a3;
- (void)setActionInfoQuickActionsDisabled:(BOOL)a3;
- (void)setActionInfoViewHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setActionInfoVisualSearchCornerViewDisabled:(BOOL)a3;
- (void)setActiveInteractionTypes:(unint64_t)a3;
- (void)setActiveSubjectIndexSet:(id)a3;
- (void)setAllowLongPressForDataDetectorsInTextMode:(BOOL)a3;
- (void)setAnalysis:(id)a3;
- (void)setAnalysisButtonPrefersDarkGlyphWhenSelected:(BOOL)a3;
- (void)setButtonsVisible:(BOOL)a3;
- (void)setDataDetectorTypes:(unint64_t)a3;
- (void)setDelegate:(id)a3;
- (void)setForceAnalysisBarButtonItemEnabled:(BOOL)a3;
- (void)setHighlightSelectableItems:(BOOL)a3;
- (void)setPreferredQuickActionButtonHeight:(double)a3;
- (void)setQuickActionConfigurationUpdateHandler:(id)a3;
- (void)setSelectedRanges:(id)a3;
- (void)setSubjectHighlightActive:(BOOL)a3;
- (void)setSubjectViewUserInteractionDisabled:(BOOL)a3;
- (void)setUsesLightDimmingViewInLightMode:(BOOL)a3;
- (void)setView:(id)a3;
- (void)setViewForObservingContentMode:(id)a3;
- (void)setWantsAutomaticContentsRectCalculation:(BOOL)a3;
- (void)setWantsTranslucentActionInfoButtons:(BOOL)a3;
- (void)set_customAnalyticsIdentifier:(id)a3;
- (void)set_highlightSelectableItems:(BOOL)a3;
- (void)set_inhibitSubjectDimmingAndLiftView:(BOOL)a3;
- (void)set_isPublicAPI:(BOOL)a3;
- (void)set_isShowingTranslationOverlay:(BOOL)a3;
- (void)set_isVIHosted:(BOOL)a3;
- (void)set_manuallyManagesActionInfoButtons:(BOOL)a3;
- (void)set_photosImageForRemoveBackground:(id)a3;
- (void)set_photosInfoSingleTapSubjectModeEnabled:(BOOL)a3;
- (void)showVisualSearchForResultItem:(id)a3;
- (void)submitVisualSearchUserFeedbackForReportIdentifier:(id)a3 userFeedbackPayload:(id)a4 sfReportData:(id)a5;
- (void)textSelectionDidChangeForBaseOverlayView:(id)a3;
- (void)triggerTapToRadar:(id)a3;
- (void)updateActionInfoLayout;
- (void)updateContentsRect;
- (void)updateForAnalyticsVisualSearchEventIfNecessary:(id)a3;
- (void)videoPreviewAvailableForBaseOverlayView:(id)a3;
- (void)visualIntelligenceDidRequestVluEnabled:(BOOL)a3 forBaseOverlayView:(id)a4;
- (void)visualIntelligenceSheetIsDraggingDidChange:(BOOL)a3 forBaseOverlayView:(id)a4;
- (void)visualIntelligenceSheetPresentedDidChangeForBaseOverlayView:(id)a3;
- (void)visualSearchCornerView:(id)a3 analyticsEventDidOccur:(id)a4;
- (void)visualSearchCornerView:(id)a3 didTapVisualSearchIndicatorWithNormalizedBoundingBox:(CGRect)a4;
- (void)visualSearchCornerViewDidDismissVisualSearchController:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation VKCImageAnalysisInteraction

- (id)resultItems
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v21 = [(VKCImageAnalysisInteraction *)self analysis];
  v20 = [v21 imageAnalysisResult];
  v4 = [v20 visualSearchResult];
  v5 = [v4 resultItems];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [v10 domainInfo];
        v12 = [v11 displayLabel];

        v13 = [v10 domainInfo];
        v14 = [v13 displayMessage];

        v15 = [VKImageAnalysisInteractionResultInfo alloc];
        v16 = [v10 domainInfo];
        v17 = [v16 glyphName];
        [v10 normalizedBoundingBox];
        v18 = [(VKImageAnalysisInteractionResultInfo *)v15 initWithDisplayLabel:v12 displayMessage:v14 glyphName:v17 rect:?];

        [v3 addObject:v18];
      }

      v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  return v3;
}

- (void)dealloc
{
  [(VKCImageAnalysisInteraction *)self setViewForObservingContentMode:0];
  [(VKCImageAnalysisInteraction *)self closeAndSendCurrentAnalyticsSession];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VKCImageAnalysisInteraction;
  [(VKCImageAnalysisInteraction *)&v4 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(VKCImageAnalysisInteraction *)self analysis];
  v6 = [v3 stringWithFormat:@"<%@ %p> id: %d", v4, self, objc_msgSend(v5, "analysisRequestID")];

  return v6;
}

- (VKCImageAnalysisInteraction)init
{
  v6.receiver = self;
  v6.super_class = VKCImageAnalysisInteraction;
  v2 = [(VKCImageAnalysisInteraction *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(VKCImageAnalysisBaseView);
    baseView = v2->_baseView;
    v2->_baseView = v3;

    [(VKCImageAnalysisInteraction *)v2 commonInit];
  }

  return v2;
}

- (VKCImageAnalysisInteraction)initWithInteractionOptions:(unint64_t)a3
{
  v4 = [(VKCImageAnalysisInteraction *)self init];
  v5 = v4;
  if (v4)
  {
    [(VKCImageAnalysisBaseView *)v4->_baseView useInteractionOptions:a3];
  }

  return v5;
}

- (void)commonInit
{
  v12 = [(VKCImageAnalysisInteraction *)self baseView];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:1];
  [v12 setWantsAutomaticContentsRectCalculation:1];
  [v12 setDataDetectorTypes:-1];
  [v12 setDelegate:self];
  [v12 setLoggingParentObject:self];
  v3 = objc_alloc_init(VKCVisualSearchCornerView);
  [(VKCImageAnalysisInteraction *)self setVisualSearchCornerButtonView:v3];

  v4 = [(VKCImageAnalysisInteraction *)self _customAnalyticsIdentifier];
  v5 = [(VKCImageAnalysisInteraction *)self visualSearchCornerButtonView];
  [v5 set_customAnalyticsIdentifier:v4];

  v6 = [(VKCImageAnalysisInteraction *)self visualSearchCornerButtonView];
  [v6 setDelegate:self];

  [v12 setDidAddVisualSearchCornerView:1];
  [(VKCImageAnalysisInteraction *)self setAnalysisButtonRequiresVisibleContentGating:1];
  v7 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_triggerTapToRadar_];
  [v7 setNumberOfTapsRequired:2];
  [v7 setNumberOfTouchesRequired:2];
  [v7 setEnabled:vk_isInternalBuild()];
  [(VKCImageAnalysisInteraction *)self setFeedbackGestureRecognizer:v7];
  v8 = objc_alloc_init(VKAnalyticsProcessor);
  analyticsProcessor = self->_analyticsProcessor;
  self->_analyticsProcessor = v8;

  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 addObserver:self selector:sel_applicationWillResignActive_ name:*MEMORY[0x1E69DDBC8] object:0];

  [v10 addObserver:self selector:sel_navOrToolbarVisibilityDidChange_ name:*MEMORY[0x1E69DEA10] object:0];
  [v10 addObserver:self selector:sel_navOrToolbarVisibilityWillChange_ name:*MEMORY[0x1E69DEA18] object:0];
  [v10 addObserver:self selector:sel_navOrToolbarVisibilityDidChange_ name:*MEMORY[0x1E69DEA00] object:0];
  [v10 addObserver:self selector:sel_navOrToolbarVisibilityWillChange_ name:*MEMORY[0x1E69DEA08] object:0];
  [(VKCImageAnalysisInteraction *)self setActionInfoViewHidden:1 animated:0];
  [(VKCImageAnalysisInteraction *)self setDeriveQuickActionsVisibilityFromState:1];
  [(VKCImageAnalysisInteraction *)self setWantsTranslucentActionInfoButtons:1];
}

- (void)navOrToolbarVisibilityWillChange:(id)a3
{
  v4 = a3;
  v5 = [(VKCImageAnalysisInteraction *)self view];
  v6 = objc_opt_class();
  v7 = [v4 object];

  v8 = VKDynamicCast(v6, v7);
  v9 = [v8 view];
  v10 = [v5 vk_isDescendantOfView:v9];

  if (v10)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64__VKCImageAnalysisInteraction_navOrToolbarVisibilityWillChange___block_invoke;
    v11[3] = &unk_1E7BE4208;
    v11[4] = self;
    vk_dispatchMainAfterDelay(v11, 0.0);
  }
}

void __64__VKCImageAnalysisInteraction_navOrToolbarVisibilityWillChange___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) baseView];
  [v1 updateNormalizedVisibleRectIfNecessary];
}

- (void)navOrToolbarVisibilityDidChange:(id)a3
{
  v4 = a3;
  v5 = [(VKCImageAnalysisInteraction *)self view];
  v6 = objc_opt_class();
  v7 = [v4 object];

  v8 = VKDynamicCast(v6, v7);
  v9 = [v8 view];
  v10 = [v5 vk_isDescendantOfView:v9];

  if (v10)
  {
    v11 = [(VKCImageAnalysisInteraction *)self baseView];
    [v11 updateNormalizedVisibleRectIfNecessary];
  }
}

- (void)willMoveToView:(id)a3
{
  if (!a3)
  {
    v5 = [(VKCImageAnalysisInteraction *)self view];
    [v5 removeGestureRecognizer:self->_feedbackGestureRecognizer];

    v7 = +[VKImageAnalyzerMadInterface sharedInterface];
    v6 = [(VKCImageAnalysisInteraction *)self baseView];
    LOBYTE(v5) = [v6 activeInteractionTypes];

    if ((v5 & 4) != 0)
    {
      [v7 didLeaveVisualSearchHints];
    }
  }
}

- (void)didMoveToView:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_1B4335000, v5, OS_LOG_TYPE_DEFAULT, "Interaction %@ did move to view: %@", &v9, 0x16u);
  }

  [(VKCImageAnalysisInteraction *)self setView:v4];
  v6 = [(VKCImageAnalysisInteraction *)self baseView];
  if (v4)
  {
    [v4 bounds];
    [v6 setFrame:?];
    [v6 setAutoresizingMask:18];
    v7 = [(VKCImageAnalysisInteraction *)self baseView];
    [v4 addSubview:v7];

    [(VKCImageAnalysisInteraction *)self setViewForObservingContentMode:v4];
    [v6 configureForCurrentActiveInteractionTypes];
    [v6 updateCurrentDisplayedViewContentsRect];
    [v4 addGestureRecognizer:self->_feedbackGestureRecognizer];
  }

  else
  {
    v8 = [(VKCImageAnalysisInteraction *)self visualSearchCornerView];
    [v8 removeFromSuperview];

    [(VKCImageAnalysisInteraction *)self setViewForObservingContentMode:0];
    [v6 resetSelection];
    [v6 resignFirstResponder];
    [v6 removeFromSuperview];
  }
}

- (CGRect)contentsRect
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  [v2 contentsRect];
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

- (void)setView:(id)a3
{
  v5 = a3;
  objc_storeWeak(&self->_view, v5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  [(VKCImageAnalysisInteraction *)self setViewForObservingContentMode:v4];
}

- (void)setViewForObservingContentMode:(id)a3
{
  v4 = a3;
  v5 = [(VKCImageAnalysisInteraction *)self baseView];
  [v5 setViewForObservingContentMode:v4];
}

- (UIView)viewForObservingContentMode
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 viewForObservingContentMode];

  return v3;
}

- (void)setAllowLongPressForDataDetectorsInTextMode:(BOOL)a3
{
  v3 = a3;
  v4 = [(VKCImageAnalysisInteraction *)self baseView];
  [v4 setLongPressDataDetectorsInTextMode:v3];
}

- (BOOL)allowLongPressForDataDetectorsInTextMode
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 longPressDataDetectorsInTextMode];

  return v3;
}

- (void)setAnalysis:(id)a3
{
  v5 = a3;
  v6 = _VKSignpostLog();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B4335000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "VKImageAnalyzerProcessRequestEvent", &unk_1B4435C0E, buf, 2u);
  }

  v7 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v17 = 0;
    _os_log_impl(&dword_1B4335000, v7, OS_LOG_TYPE_INFO, "Signpost End: VKImageAnalyzerProcessRequestEvent", v17, 2u);
  }

  p_analysis = &self->_analysis;
  if (self->_analysis != v5)
  {
    [(VKCImageAnalysisInteraction *)self setIsSettingAnalysis:1];
    [(VKCImageAnalysisInteraction *)self setDidLogAnalysisButtonVisible:0];
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    analysis = self->_analysis;
    if (analysis)
    {
      v11 = [(VKImageAnalysis *)analysis imageAnalysisResult];
      [v9 removeObserver:self name:@"VKAnalysisDidUpdateNotification" object:v11];
    }

    objc_storeStrong(&self->_analysis, a3);
    if (*p_analysis)
    {
      v12 = [(VKImageAnalysis *)*p_analysis imageAnalysisResult];
      [v9 addObserver:self selector:sel_analysisDidUpdate_ name:@"VKAnalysisDidUpdateNotification" object:v12];
    }

    [(VKCImageAnalysisInteraction *)self closeAndSendCurrentAnalyticsSession];
    [(VKCImageAnalysisInteraction *)self clearMatchedHighlightsIfNecessaryAnimated:0];
    v13 = [(VKImageAnalysis *)v5 imageAnalysisResult];
    v14 = [(VKCImageAnalysisInteraction *)self baseView];
    [v14 setAnalysisResult:v13];

    v15 = [(VKCImageAnalysisInteraction *)self visualSearchCornerButtonView];
    [v15 setAnalysis:v5];

    v16 = [(VKCImageAnalysisInteraction *)self actionInfoCornerButtonViewIfExists];
    [v16 setAnalysis:v5];

    [(VKCImageAnalysisInteraction *)self configureForCurrentDerivedAutomaticStateWithUpdateActiveTypes:0];
    [(VKCImageAnalysisInteraction *)self setDidToggleAAButton:0];
    [(VKCImageAnalysisInteraction *)self _automaticallyShowVisualSearchResultsIfApplicable];
    if (![(VKCImageAnalysisInteraction *)self didLogAnalysisButtonVisible])
    {
      [(VKCImageAnalysisInteraction *)self logButtonsVisibleStatus];
    }

    [(VKCImageAnalysisInteraction *)self set_highlightSelectableItems:0];
    [(VKCImageAnalysisInteraction *)self setIsSettingAnalysis:0];
  }
}

- (NSString)text
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 text];

  return v3;
}

- (NSString)selectedText
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 selectedText];

  return v3;
}

- (NSAttributedString)selectedAttributedText
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 selectedAttributedText];

  return v3;
}

- (NSArray)selectedRanges
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 selectedRanges];

  return v3;
}

- (void)setSelectedRanges:(id)a3
{
  v4 = a3;
  v5 = [(VKCImageAnalysisInteraction *)self baseView];
  [v5 setSelectedRanges:v4];
}

- (void)setActiveInteractionTypes:(unint64_t)a3
{
  if ([(VKCImageAnalysisInteraction *)self activeInteractionTypes]!= a3)
  {
    [(VKCImageAnalysisInteraction *)self setInteractionTypesSetByClient:a3];

    [(VKCImageAnalysisInteraction *)self _setActiveInteractionTypes:a3 updateAutomaticState:1];
  }
}

- (void)_setActiveInteractionTypes:(unint64_t)a3 updateAutomaticState:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ((a3 & 0x10) != 0 && (!+[VKCGMAvailability supportsVI](VKCGMAvailability, "supportsVI") || +[VKCInternalSettings disableVisualIntelligence]))
  {
    v5 &= ~0x10uLL;
    v7 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [VKCImageAnalysisInteraction _setActiveInteractionTypes:v7 updateAutomaticState:?];
    }
  }

  if (![(VKCImageAnalysisInteraction *)self isUpdatingActiveTypes])
  {
    [(VKCImageAnalysisInteraction *)self setIsUpdatingActiveTypes:1];
    v8 = [(VKCImageAnalysisInteraction *)self baseView];
    [v8 setActiveInteractionTypes:v5];

    v9 = [(VKCImageAnalysisInteraction *)self visualSearchCornerButtonView];
    [v9 setHidden:(v5 & 4) == 0];

    v10 = [(VKCImageAnalysisInteraction *)self actionInfoCornerButtonViewIfExists];
    [v10 setHidden:(v5 & 4) == 0];

    if (v5)
    {
      if (!v4)
      {
LABEL_11:
        [(VKCImageAnalysisInteraction *)self _automaticallyShowVisualSearchResultsIfApplicable];
        v11 = [(VKCImageAnalysisInteraction *)self actionInfoViewIfExists];
        [v11 updateLayoutIfNecessary];

        [(VKCImageAnalysisInteraction *)self setSubjectHighlightActive:0];
        [(VKCImageAnalysisInteraction *)self setIsUpdatingActiveTypes:0];
        [(VKCImageAnalysisInteraction *)self beginImageSubjectAnalysisWithDelayIfNecessary];
        return;
      }
    }

    else
    {
      [(VKCImageAnalysisInteraction *)self set_highlightSelectableItems:0];
      if (!v4)
      {
        goto LABEL_11;
      }
    }

    [(VKCImageAnalysisInteraction *)self configureForCurrentDerivedAutomaticStateWithUpdateActiveTypes:0];
    goto LABEL_11;
  }
}

- (void)_automaticallyShowVisualSearchResultsIfApplicable
{
  v3 = [(VKCImageAnalysisInteraction *)self baseView];
  v4 = [v3 activeInteractionTypes];

  if ((v4 & 4) != 0 && [(VKCImageAnalysisInteraction *)self automaticallyShowVisualSearchResults])
  {
    v5 = [(VKCImageAnalysisInteraction *)self actionInfoCornerButtonViewIfExists];

    if (v5)
    {
      [(VKCImageAnalysisInteraction *)self actionInfoCornerButtonViewIfExists];
    }

    else
    {
      [(VKCImageAnalysisInteraction *)self visualSearchCornerButtonView];
    }
    v6 = ;
    [v6 automaticallyShowVisualSearchResultsIfApplicable];

    v7 = [(VKCImageAnalysisInteraction *)self baseView];
    [v7 automaticallyShowVisualSearchResultsIfApplicable];
  }
}

- (unint64_t)activeInteractionTypes
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 activeInteractionTypes];

  return v3;
}

- (unint64_t)dataDetectorTypes
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 dataDetectorTypes];

  return v3;
}

- (void)setDataDetectorTypes:(unint64_t)a3
{
  v4 = [(VKCImageAnalysisInteraction *)self baseView];
  [v4 setDataDetectorTypes:a3];
}

- (void)setWantsAutomaticContentsRectCalculation:(BOOL)a3
{
  v3 = a3;
  v4 = [(VKCImageAnalysisInteraction *)self baseView];
  [v4 setWantsAutomaticContentsRectCalculation:v3];
}

- (BOOL)wantsAutomaticContentsRectCalculation
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 wantsAutomaticContentsRectCalculation];

  return v3;
}

- (BOOL)hasActiveTextSelection
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 hasActiveTextSelection];

  return v3;
}

- (void)set_highlightSelectableItems:(BOOL)a3
{
  v3 = a3;
  v4 = [(VKCImageAnalysisInteraction *)self baseView];
  [v4 setHighlightSelectableItems:v3];
}

- (BOOL)subjectViewUserInteractionDisabled
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 subjectViewUserInteractionDisabled];

  return v3;
}

- (void)setSubjectViewUserInteractionDisabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(VKCImageAnalysisInteraction *)self baseView];
  [v4 setSubjectViewUserInteractionDisabled:v3];
}

- (BOOL)_highlightSelectableItems
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 highlightSelectableItems];

  return v3;
}

- (void)setHighlightSelectableItems:(BOOL)a3
{
  v3 = a3;
  if ([(VKCImageAnalysisInteraction *)self _highlightSelectableItems]!= a3)
  {
    [(VKCImageAnalysisInteraction *)self set_highlightSelectableItems:v3];

    [(VKCImageAnalysisInteraction *)self configureForCurrentDerivedAutomaticStateWithUpdateActiveTypes:1];
  }
}

- (void)setSubjectHighlightActive:(BOOL)a3
{
  v3 = a3;
  v4 = [(VKCImageAnalysisInteraction *)self baseView];
  [v4 setSubjectHighlightActive:v3];
}

- (void)highlightSubjectAtIndexSet:(id)a3 showCallout:(BOOL)a4 showBurst:(BOOL)a5 burstPoint:(CGPoint)a6 animated:(BOOL)a7
{
  v7 = a7;
  y = a6.y;
  x = a6.x;
  v10 = a5;
  v11 = a4;
  v13 = a3;
  v14 = [(VKCImageAnalysisInteraction *)self baseView];
  [v14 highlightSubjectAtIndexSet:v13 showCallout:v11 showBurst:v10 burstPoint:v7 animated:{x, y}];
}

- (void)createStickerImageAtIndexSet:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__VKCImageAnalysisInteraction_createStickerImageAtIndexSet_completion___block_invoke;
  v8[3] = &unk_1E7BE5378;
  v9 = v6;
  v7 = v6;
  [(VKCImageAnalysisInteraction *)self loadImageSubjectWithIndexes:a3 completion:v8];
}

void __71__VKCImageAnalysisInteraction_createStickerImageAtIndexSet_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = +[VKImageDataRequirements stickerRequirements];
  v4 = [v3 vk_imageDataWithRequirements:v5];

  (*(v2 + 16))(v2, v4);
}

- (void)createStickerRepresentationsAtIndexSet:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VKCImageAnalysisInteraction *)self baseView];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__VKCImageAnalysisInteraction_createStickerRepresentationsAtIndexSet_completion___block_invoke;
  v10[3] = &unk_1E7BE55E8;
  v11 = v6;
  v9 = v6;
  [v8 createStickerRepresentationsAtIndexSet:v7 type:7 stickerIDs:MEMORY[0x1E695E0F0] progress:0 completion:v10];
}

- (void)createStickerRepresentationsAtIndexSet:(id)a3 type:(unint64_t)a4 stickerIDs:(id)a5 progress:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = [(VKCImageAnalysisInteraction *)self baseView];
  [v16 createStickerRepresentationsAtIndexSet:v15 type:a4 stickerIDs:v14 progress:v13 completion:v12];
}

- (id)videoPreviewSubjectMatteAtCompositionTime:(id *)a3
{
  v4 = [(VKCImageAnalysisInteraction *)self baseView];
  v7 = *a3;
  v5 = [v4 videoPreviewSubjectMatteAtCompositionTime:&v7];

  return v5;
}

- (id)videoPreviewSubjectMatteForImage:(id)a3 atCompositionTime:(id *)a4
{
  v6 = a3;
  v7 = [(VKCImageAnalysisInteraction *)self baseView];
  v10 = *a4;
  v8 = [v7 videoPreviewSubjectMatteForImage:v6 atCompositionTime:&v10];

  return v8;
}

- ($58EB755F713D70195D081A2438463C76)videoPreviewTimeRange
{
  v4 = [(VKCImageAnalysisInteraction *)self baseView];
  if (v4)
  {
    v6 = v4;
    [v4 videoPreviewTimeRange];
    v4 = v6;
  }

  else
  {
    *&retstr->var0.var3 = 0u;
    *&retstr->var1.var1 = 0u;
    *&retstr->var0.var0 = 0u;
  }

  return result;
}

- (CGRect)videoPreviewNormalizedCropRect
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  [v2 videoPreviewNormalizedCropRect];
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

- (BOOL)subjectHighlightActive
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 subjectHighlightActive];

  return v3;
}

- (BOOL)subjectInteractionInProgress
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 subjectInteractionInProgress];

  return v3;
}

- (void)setActiveSubjectIndexSet:(id)a3
{
  v4 = a3;
  v5 = [(VKCImageAnalysisInteraction *)self baseView];
  [v5 setActiveSubjectIndexSet:v4];
}

- (void)set_isPublicAPI:(BOOL)a3
{
  v3 = a3;
  v5 = [(VKCImageAnalysisInteraction *)self baseView];
  [v5 setIsPublicAPI:v3];

  v6 = [(VKCImageAnalysisInteraction *)self analyticsProcessor];
  [v6 setIsPublicAPI:v3];
}

- (BOOL)_isPublicAPI
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 isPublicAPI];

  return v3;
}

- (void)set_isVIHosted:(BOOL)a3
{
  v3 = a3;
  v4 = [(VKCImageAnalysisInteraction *)self baseView];
  [v4 setIsVIHosted:v3];
}

- (BOOL)_isVIHosted
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 isVIHosted];

  return v3;
}

- (CGRect)subjectFrame
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  [v2 subjectFrame];
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

- (BOOL)isSubjectHighlightAvailable
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 isSubjectHighlightAvailable];

  return v3;
}

- (BOOL)isSubjectAnalysisComplete
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 isSubjectAnalysisComplete];

  return v3;
}

- (NSIndexSet)allSubjectIndexes
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 allSubjectsIndexSet];

  return v3;
}

- (NSIndexSet)selectedSubjectIndexes
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 activeSubjectIndexSet];

  return v3;
}

- (id)generateSubjectImage
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 generateSubjectImage];

  return v3;
}

- (BOOL)_photosInfoSingleTapSubjectModeEnabled
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 _photosInfoSingleTapSubjectModeEnabled];

  return v3;
}

- (void)set_photosInfoSingleTapSubjectModeEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(VKCImageAnalysisInteraction *)self baseView];
  [v4 set_photosInfoSingleTapSubjectModeEnabled:v3];
}

- (BOOL)_inhibitSubjectDimmingAndLiftView
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 inhibitSubjectDimmingAndLiftView];

  return v3;
}

- (void)set_inhibitSubjectDimmingAndLiftView:(BOOL)a3
{
  v3 = a3;
  v4 = [(VKCImageAnalysisInteraction *)self baseView];
  [v4 setInhibitSubjectDimmingAndLiftView:v3];
}

- (void)loadImageSubjectIfAvailableWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(VKCImageAnalysisInteraction *)self baseView];
  [v5 loadImageSubjectIfAvailableWithCompletion:v4];
}

- (void)set_photosImageForRemoveBackground:(id)a3
{
  v4 = a3;
  v5 = [(VKCImageAnalysisInteraction *)self baseView];
  [v5 setCustomImageForRemoveBackground:v4];
}

- (UIImage)_photosImageForRemoveBackground
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 customImageForRemoveBackground];

  return v3;
}

- (BOOL)usesLightDimmingViewInLightMode
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 usesLightDimmingViewInLightMode];

  return v3;
}

- (void)setUsesLightDimmingViewInLightMode:(BOOL)a3
{
  v3 = a3;
  v4 = [(VKCImageAnalysisInteraction *)self baseView];
  [v4 setUsesLightDimmingViewInLightMode:v3];
}

- (void)set_customAnalyticsIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(VKCImageAnalysisInteraction *)self baseView];
  [v5 setCustomAnalyticsIdentifier:v4];

  v6 = [(VKCImageAnalysisInteraction *)self visualSearchCornerButtonView];
  [v6 set_customAnalyticsIdentifier:v4];

  v7 = [(VKCImageAnalysisInteraction *)self actionInfoCornerButtonViewIfExists];
  [v7 set_customAnalyticsIdentifier:v4];
}

- (NSString)_customAnalyticsIdentifier
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 customAnalyticsIdentifier];

  return v3;
}

- (void)setButtonsVisible:(BOOL)a3
{
  if (self->_buttonsVisible != a3)
  {
    self->_buttonsVisible = a3;
    v5 = [(VKCImageAnalysisInteraction *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(VKCImageAnalysisInteraction *)self delegate];
      [v7 imageAnalysisInteraction:self liveTextButtonDidChangeToVisible:self->_buttonsVisible];
    }

    [(VKCImageAnalysisInteraction *)self logButtonsVisibleStatus];
  }
}

- (void)logButtonsVisibleStatus
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = VKMUIStringForBool([(VKCImageAnalysisInteraction *)self buttonsVisible]);
    v5 = 138412546;
    v6 = v4;
    v7 = 2112;
    v8 = self;
    _os_log_impl(&dword_1B4335000, v3, OS_LOG_TYPE_DEFAULT, "Analysis button is visible: %@, %@ ", &v5, 0x16u);
  }

  [(VKCImageAnalysisInteraction *)self setDidLogAnalysisButtonVisible:1];
}

- (void)setDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);
  if (![(VKCImageAnalysisInteraction *)self wantsAutomaticContentsRectCalculation])
  {
    v4 = [(VKCImageAnalysisInteraction *)self baseView];
    [v4 updateCurrentDisplayedViewContentsRect];
  }
}

- (BOOL)interactableItemExistsAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(VKCImageAnalysisInteraction *)self view];
  v7 = [(VKCImageAnalysisInteraction *)self baseView];
  [v6 convertPoint:v7 toView:{x, y}];
  v9 = v8;
  v11 = v10;

  v12 = [(VKCImageAnalysisInteraction *)self baseView];
  LOBYTE(v6) = [v12 containsInteractiveItemAtPoint:{v9, v11}];

  return v6;
}

- (BOOL)textExistsAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(VKCImageAnalysisInteraction *)self view];
  v7 = [(VKCImageAnalysisInteraction *)self baseView];
  [v6 convertPoint:v7 toView:{x, y}];
  v9 = v8;
  v11 = v10;

  v12 = [(VKCImageAnalysisInteraction *)self baseView];
  LOBYTE(v6) = [v12 containsTextAtPoint:{v9, v11}];

  return v6;
}

- (BOOL)dataDetectorExistsAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(VKCImageAnalysisInteraction *)self view];
  v7 = [(VKCImageAnalysisInteraction *)self baseView];
  [v6 convertPoint:v7 toView:{x, y}];
  v9 = v8;
  v11 = v10;

  v12 = [(VKCImageAnalysisInteraction *)self baseView];
  v13 = [v12 dataDetectorTypeAtPoint:{v9, v11}];

  return v13 != 0;
}

- (BOOL)visualSearchExistsAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(VKCImageAnalysisInteraction *)self view];
  v7 = [(VKCImageAnalysisInteraction *)self baseView];
  [v6 convertPoint:v7 toView:{x, y}];
  v9 = v8;
  v11 = v10;

  v12 = [(VKCImageAnalysisInteraction *)self baseView];
  LOBYTE(v6) = [v12 containsVisualSearchItemAtPoint:{v9, v11}];

  return v6;
}

- (BOOL)actionInfoItemExistsAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(VKCImageAnalysisInteraction *)self view];
  v7 = [(VKCImageAnalysisInteraction *)self baseView];
  [v6 convertPoint:v7 toView:{x, y}];
  v9 = v8;
  v11 = v10;

  v12 = [(VKCImageAnalysisInteraction *)self baseView];
  LOBYTE(v6) = [v12 containsActionInfoItemAtPoint:{v9, v11}];

  return v6;
}

- (BOOL)analysisContainsTextAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(VKCImageAnalysisInteraction *)self view];
  v7 = [(VKCImageAnalysisInteraction *)self baseView];
  [v6 convertPoint:v7 toView:{x, y}];
  v9 = v8;
  v11 = v10;

  v12 = [(VKCImageAnalysisInteraction *)self baseView];
  LOBYTE(v6) = [v12 analysisContainsTextAtPoint:{v9, v11}];

  return v6;
}

- (BOOL)imageSubjectExistsAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(VKCImageAnalysisInteraction *)self view];
  v7 = [(VKCImageAnalysisInteraction *)self baseView];
  [v6 convertPoint:v7 toView:{x, y}];
  v9 = v8;
  v11 = v10;

  v12 = [(VKCImageAnalysisInteraction *)self baseView];
  LOBYTE(v6) = [v12 containsImageSubjectAtPoint:{v9, v11}];

  return v6;
}

- (id)subjectIndexAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(VKCImageAnalysisInteraction *)self view];
  v7 = [(VKCImageAnalysisInteraction *)self baseView];
  [v6 convertPoint:v7 toView:{x, y}];
  v9 = v8;
  v11 = v10;

  v12 = [(VKCImageAnalysisInteraction *)self baseView];
  v13 = [v12 indexOfSubjectAtPoint:{v9, v11}];

  return v13;
}

- (void)resetSelection
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  [v2 resetSelection];
}

- (void)updateContentsRect
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  [v2 updateCurrentDisplayedViewContentsRect];
}

- (void)beginImageSubjectAnalysisIfNecessary
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  [v2 beginImageSubjectAnalysisIfNecessary];
}

- (void)beginImageSubjectAnalysisWithDelayIfNecessary
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  [v2 beginImageSubjectAnalysisWithDelayIfNecessary];
}

- (void)beginImageSubjectAnalysisIfNecessaryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(VKCImageAnalysisInteraction *)self baseView];
  [v5 beginImageSubjectAnalysisIfNecessaryWithCompletion:v4];
}

- (void)loadImageSubjectWithIndexes:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VKCImageAnalysisInteraction *)self baseView];
  [v8 loadImageSubjectWithIndexes:v7 completion:v6];
}

- (id)imageSubjectPathWithIndexes:(id)a3
{
  v4 = a3;
  v5 = [(VKCImageAnalysisInteraction *)self baseView];
  v6 = [v5 imageSubjectPathWithIndexes:v4];

  return v6;
}

- (CGRect)imageSubjectBoundsWithIndexes:(id)a3
{
  v3 = [(VKCImageAnalysisInteraction *)self imageSubjectPathWithIndexes:a3];
  v4 = v3;
  if (v3)
  {
    [v3 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v6 = *MEMORY[0x1E695F050];
    v8 = *(MEMORY[0x1E695F050] + 8);
    v10 = *(MEMORY[0x1E695F050] + 16);
    v12 = *(MEMORY[0x1E695F050] + 24);
  }

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

- (void)setForceAnalysisBarButtonItemEnabled:(BOOL)a3
{
  if (self->_forceAnalysisBarButtonItemEnabled != a3)
  {
    self->_forceAnalysisBarButtonItemEnabled = a3;
    [(VKCImageAnalysisInteraction *)self configureForCurrentDerivedAutomaticStateWithUpdateActiveTypes:0];
  }
}

- (BOOL)_showVSResultForItem:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = VKCheckedDynamicCast(v5, v4);

  if (v6)
  {
    v7 = [(VKCImageAnalysisInteraction *)self baseView];
    v8 = [v7 presentVisualSearchForItem:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)set_isShowingTranslationOverlay:(BOOL)a3
{
  v3 = a3;
  v4 = [(VKCImageAnalysisInteraction *)self baseView];
  [v4 setIsShowingTranslation:v3];
}

- (BOOL)_isShowingTranslationOverlay
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 isShowingTranslation];

  return v3;
}

- (NSArray)visualSearchResultItems
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 visualSearchResultItems];

  return v3;
}

- (void)showVisualSearchForResultItem:(id)a3
{
  v6 = a3;
  if (([v6 isVisualIntelligenceItem] & 1) == 0)
  {
    v4 = [(VKCImageAnalysisInteraction *)self baseView];
    v5 = [v6 item];
    [v4 presentVisualSearchForItem:v5];
  }
}

- (void)presentVisualIntelligenceSheet
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 viCoordinator];
  v4 = [v3 overlayView];

  if (objc_opt_respondsToSelector())
  {
    [v4 setIsSheetPresented:1];
  }
}

- (void)dismissVisualIntelligenceSheetIfNecessary
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 viCoordinatorIfExists];
  v4 = [v3 overlayView];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 isSheetPresented])
  {
    [v4 setIsSheetPresented:0];
  }
}

- (BOOL)isVisualIntelligenceSheetVisible
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 viCoordinatorIfExists];
  v4 = [v3 overlayView];

  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 isSheetPresented];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isDraggingVisualIntelligenceSheet
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 viCoordinatorIfExists];
  v4 = [v3 overlayView];

  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 isDraggingSheet];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)currentVisualIntelligenceSheetProgress
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 viCoordinatorIfExists];
  v4 = [v3 overlayView];

  v5 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v4 currentSheetProgress];
    v5 = v6;
  }

  return v5;
}

- (void)openInfoPaneForTopItem
{
  v3 = [(VKCImageAnalysisInteraction *)self baseView];
  [v3 showTopVisualSearchResult];

  v4 = [(VKCImageAnalysisInteraction *)self visualSearchResultItems];
  v5 = [v4 firstObject];
  v6 = [v5 item];
  [v6 setCurrentInvocationType:5];

  v7 = [(VKCImageAnalysisInteraction *)self actionInfoCornerButtonViewIfExists];

  if (v7)
  {
    [(VKCImageAnalysisInteraction *)self actionInfoCornerButtonViewIfExists];
  }

  else
  {
    [(VKCImageAnalysisInteraction *)self visualSearchCornerButtonView];
  }
  v8 = ;
  [v8 showVisualSearchResultView];
}

- (void)_addAsyncMRCElement:(id)a3
{
  v4 = a3;
  v5 = [(VKCImageAnalysisInteraction *)self analysis];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__VKCImageAnalysisInteraction__addAsyncMRCElement___block_invoke;
  v7[3] = &unk_1E7BE5610;
  objc_copyWeak(&v9, &location);
  v6 = v5;
  v8 = v6;
  [VKCImageAnalyzer processMRCInfo:v4 completionHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __51__VKCImageAnalysisInteraction__addAsyncMRCElement___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3)
  {
    if (WeakRetained)
    {
      v6 = [WeakRetained analysis];
      v7 = *(a1 + 32);

      if (v6 == v7)
      {
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __51__VKCImageAnalysisInteraction__addAsyncMRCElement___block_invoke_2;
        v8[3] = &unk_1E7BE4768;
        v8[4] = v5;
        v9 = v3;
        vk_dispatchMainAfterDelay(v8, 0.0);
      }
    }
  }
}

void __51__VKCImageAnalysisInteraction__addAsyncMRCElement___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) baseView];
  [v2 addAsyncMRCElement:*(a1 + 40)];
}

- (id)_createQuickActionInfos
{
  v2 = [(VKCImageAnalysisInteraction *)self actionInfoView];
  v3 = [v2 allQuickActions];

  v4 = [VKCDataDetectorInfo quickActionInfosFromQuickActions:v3];

  return v4;
}

- (void)_copyAllToClipboard
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  [v2 copyAllToClipboard];
}

- (void)setActionInfoViewHidden:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_actionInfoViewHidden != a3)
  {
    v13 = v4;
    v14 = v5;
    v6 = a4;
    self->_actionInfoViewHidden = a3;
    if (a3)
    {
      v8 = [(VKCImageAnalysisInteraction *)self actionInfoViewIfExists];
    }

    else
    {
      v8 = [(VKCImageAnalysisInteraction *)self actionInfoView];
      v9 = [(VKCImageAnalysisInteraction *)self baseView];
      [v9 updateNormalizedVisibleRectIfNecessary];

      if (vk_imageAnalysisSupportedAndSettingsSwitchEnabled())
      {
        v10 = 0;
LABEL_10:
        [v8 vk_setHidden:v10 animated:v6];

        return;
      }

      v11 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_1B4335000, v11, OS_LOG_TYPE_DEFAULT, "Inhibiting unhiding action info view due to no locale VK support", v12, 2u);
      }
    }

    v10 = 1;
    goto LABEL_10;
  }
}

- (BOOL)actionInfoLiveTextButtonDisabled
{
  v2 = [(VKCImageAnalysisInteraction *)self actionInfoViewIfExists];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 liveTextButtonDisabled];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setActionInfoLiveTextButtonDisabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(VKCImageAnalysisInteraction *)self actionInfoView];
  [v4 setLiveTextButtonDisabled:v3];
}

- (BOOL)actionInfoVisualSearchCornerViewDisabled
{
  v2 = [(VKCImageAnalysisInteraction *)self actionInfoViewIfExists];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 visualSearchCornerViewDisabled];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setActionInfoVisualSearchCornerViewDisabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(VKCImageAnalysisInteraction *)self actionInfoView];
  [v4 setVisualSearchCornerViewDisabled:v3];
}

- (BOOL)actionInfoQuickActionsDisabled
{
  v2 = [(VKCImageAnalysisInteraction *)self actionInfoViewIfExists];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 quickActionsDisabled];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setActionInfoQuickActionsDisabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(VKCImageAnalysisInteraction *)self actionInfoView];
  [v4 setQuickActionsDisabled:v3];
}

- (void)setActionInfoLayoutUpdatesSuspended:(BOOL)a3
{
  v3 = a3;
  v4 = [(VKCImageAnalysisInteraction *)self actionInfoView];
  [v4 setLayoutUpdatesSuspended:v3];
}

- (UIEdgeInsets)actionInfoEdgeInsets
{
  v2 = [(VKCImageAnalysisInteraction *)self actionInfoView];
  [v2 edgeInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)setActionInfoEdgeInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = [(VKCImageAnalysisInteraction *)self actionInfoView];
  [v7 setEdgeInsets:{top, left, bottom, right}];
}

- (void)setPreferredQuickActionButtonHeight:(double)a3
{
  if (self->_preferredQuickActionButtonHeight != a3)
  {
    self->_preferredQuickActionButtonHeight = a3;
    v4 = [(VKCImageAnalysisInteraction *)self actionInfoViewIfExists];
    [v4 setPreferredQuickActionButtonHeight:a3];
  }
}

- (void)setActionInfoCustomFont:(id)a3
{
  v5 = a3;
  if (self->_actionInfoCustomFont != v5)
  {
    objc_storeStrong(&self->_actionInfoCustomFont, a3);
    if (self->_actionInfoCustomFont)
    {
      objc_initWeak(&location, self);
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __55__VKCImageAnalysisInteraction_setActionInfoCustomFont___block_invoke;
      v14 = &unk_1E7BE5660;
      objc_copyWeak(&v15, &location);
      [(VKCImageAnalysisInteraction *)self setQuickActionConfigurationUpdateHandler:&v11];
      actionInfoCustomFont = self->_actionInfoCustomFont;
      v7 = [(VKCImageAnalysisInteraction *)self actionInfoView:v11];
      v8 = [v7 liveTextButton];
      [v8 setCustomSymbolFont:actionInfoCustomFont];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    else
    {
      [(VKCImageAnalysisInteraction *)self setQuickActionConfigurationUpdateHandler:0];
      v9 = [(VKCImageAnalysisInteraction *)self actionInfoView];
      v10 = [v9 liveTextButton];
      [v10 setCustomSymbolFont:0];
    }
  }
}

void __55__VKCImageAnalysisInteraction_setActionInfoCustomFont___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 configuration];
    v6 = [v5 copy];

    v7 = [WeakRetained actionInfoCustomFont];
    [MEMORY[0x1E69DB878] defaultFontSize];
    v8 = [v7 fontWithSize:?];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55__VKCImageAnalysisInteraction_setActionInfoCustomFont___block_invoke_2;
    v12[3] = &unk_1E7BE5638;
    v13 = v8;
    v9 = v8;
    [v6 setTitleTextAttributesTransformer:v12];
    v10 = [MEMORY[0x1E69DCAD8] configurationWithFont:v9];
    [v6 setPreferredSymbolConfigurationForImage:v10];

    [v3 setConfiguration:v6];
    v11 = [WeakRetained actionInfoView];
    [v11 updateLayoutIfNecessary];
  }
}

id __55__VKCImageAnalysisInteraction_setActionInfoCustomFont___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E69DB648]];

  return v3;
}

- (void)setQuickActionConfigurationUpdateHandler:(id)a3
{
  v4 = a3;
  quickActionConfigurationUpdateHandler = self->_quickActionConfigurationUpdateHandler;
  v10 = v4;
  v6 = _Block_copy(v4);
  LOBYTE(quickActionConfigurationUpdateHandler) = [quickActionConfigurationUpdateHandler isEqual:v6];

  if ((quickActionConfigurationUpdateHandler & 1) == 0)
  {
    v7 = [v10 copy];
    v8 = self->_quickActionConfigurationUpdateHandler;
    self->_quickActionConfigurationUpdateHandler = v7;

    v9 = [(VKCImageAnalysisInteraction *)self actionInfoViewIfExists];
    [v9 setQuickActionConfigurationUpdateHandler:v10];
  }
}

- (BOOL)actionInfoLayoutUpdatesSuspended
{
  v2 = [(VKCImageAnalysisInteraction *)self actionInfoView];
  v3 = [v2 layoutUpdatesSuspended];

  return v3;
}

- (void)updateActionInfoLayout
{
  v2 = [(VKCImageAnalysisInteraction *)self actionInfoViewIfExists];
  [v2 updateLayoutIfNecessary];
}

- (NSArray)textGesturesForFailureRequirements
{
  v3 = objc_opt_class();
  v4 = [(VKCImageAnalysisInteraction *)self baseView];
  v5 = [v4 textSelectionView];
  v6 = VKDynamicCast(v3, v5);
  v7 = [v6 gesturesForFailureRequirements];

  return v7;
}

- (id)customLayoutActionInfoView
{
  v3 = [(VKCImageAnalysisInteraction *)self actionInfoContainer];

  if (!v3)
  {
    v4 = objc_alloc_init(VKCActionInfoContainer);
    [(VKCImageAnalysisInteraction *)self setActionInfoContainer:v4];
    v5 = [(VKCImageAnalysisInteraction *)self actionInfoView];
    [v5 setAutomaticVisualRectLayoutDisabled:1];
    v6 = [v5 superview];
    v7 = [(VKCImageAnalysisInteraction *)self baseView];

    if (v6 == v7)
    {
      [v5 removeFromSuperview];
    }

    [(VKCImageAnalysisInteraction *)self setActionInfoViewHidden:0 animated:0];
    [(VKCActionInfoContainer *)v4 setActionInfoView:v5];
    [(VKCActionInfoContainer *)v4 setCurrentType:1];
  }

  return [(VKCImageAnalysisInteraction *)self actionInfoContainer];
}

- (void)resetCustomLayoutActionInfoView
{
  [(VKCActionInfoContainer *)self->_actionInfoContainer setCurrentType:1];
  v3 = [(VKCImageAnalysisInteraction *)self actionInfoView];
  [v3 setAutomaticVisualRectLayoutDisabled:0];

  v5 = [(VKCImageAnalysisInteraction *)self baseView];
  v4 = [(VKCImageAnalysisInteraction *)self actionInfoView];
  [v5 addSubview:v4];
}

- (void)setWantsTranslucentActionInfoButtons:(BOOL)a3
{
  if (self->_wantsTranslucentActionInfoButtons != a3)
  {
    v4 = a3;
    self->_wantsTranslucentActionInfoButtons = a3;
    v5 = [(VKCImageAnalysisInteraction *)self actionInfoViewIfExists];
    [v5 setWantsTranslucentActionInfoButtons:v4];
  }
}

- (NSArray)_actionInfoButtons
{
  if (!self->_actionButtons)
  {
    v3 = [(VKCImageAnalysisInteraction *)self baseView];
    v4 = [v3 quickActions];
    actionButtons = self->_actionButtons;
    self->_actionButtons = v4;
  }

  v6 = [(VKCImageAnalysisInteraction *)self actionButtons];
  v7 = [v6 copy];

  return v7;
}

- (id)omnibarContainerView
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 viCoordinator];

  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 omnibarContainerView];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)analysisDidUpdate:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"updatedTypes"];
  v6 = [v5 integerValue];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__VKCImageAnalysisInteraction_analysisDidUpdate___block_invoke;
  v7[3] = &__block_descriptor_40_e37_v16__0__VKCImageAnalysisInteraction_8l;
  v7[4] = v6;
  vk_performBlockOnMainThreadWithStrongSelf(self, v7);
}

void __49__VKCImageAnalysisInteraction_analysisDidUpdate___block_invoke(uint64_t a1, void *a2)
{
  v28 = a2;
  v3 = [v28 baseView];
  [v3 analysisDidUpdateForTypes:*(a1 + 32)];

  if ((*(a1 + 32) & 0x10) != 0)
  {
    v4 = [v28 analysis];
    v5 = [v28 visualSearchCornerButtonView];
    [v5 setAnalysis:v4];

    v6 = [v28 analysis];
    v7 = [v28 actionInfoCornerButtonViewIfExists];
    [v7 setAnalysis:v6];

    v8 = [v28 baseView];
    [v8 normalizedVisibleRect];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [v28 visualSearchCornerButtonView];
    [v17 setNormalizedVisibleRect:{v10, v12, v14, v16}];

    v18 = [v28 baseView];
    [v18 normalizedVisibleRect];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = [v28 actionInfoCornerButtonViewIfExists];
    [v27 setNormalizedVisibleRect:{v20, v22, v24, v26}];
  }
}

- (id)previewForDataDetectorElementView:(id)a3
{
  v4 = [(VKCImageAnalysisInteraction *)self baseView];
  v5 = [(VKCImageAnalysisInteraction *)self viewForImageSnapshotForBaseView:v4];

  return v5;
}

- (BOOL)topLevelImplementsContentsRectDelegateForBaseView:(id)a3
{
  v3 = [(VKCImageAnalysisInteraction *)self delegate];
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

- (id)viewForImageSnapshotForBaseView:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = [v6 contentViewForImageAnalysisInteraction:self];
  }

  else
  {
    v7 = [(VKCImageAnalysisInteraction *)self view];
  }

  return v7;
}

- (id)imageForImageSnapshotForBaseView:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = [v6 contentImageForImageAnalysisInteraction:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CGRect)contentsRectForImageRecognitionBaseView:(id)a3
{
  v4 = [(VKCImageAnalysisInteraction *)self delegate];
  [v4 contentsRectForImageAnalysisInteraction:self];
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

- (BOOL)baseOverlayView:(id)a3 shouldBeginInteractionAtPoint:(CGPoint)a4 withTypes:(unint64_t)a5
{
  y = a4.y;
  x = a4.x;
  v9 = [(VKCImageAnalysisInteraction *)self activeInteractionTypes]& a5;
  if ((a5 & 2) != 0 && ([(VKCImageAnalysisInteraction *)self activeInteractionTypes]& 1) != 0)
  {
    if ([(VKCImageAnalysisInteraction *)self allowLongPressForDataDetectorsInTextMode]|| v9)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

LABEL_4:
  v10 = [(VKCImageAnalysisInteraction *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if ((v11 & 1) == 0)
  {
    return 1;
  }

  v12 = [(VKCImageAnalysisInteraction *)self delegate];
  v13 = [v12 imageAnalysisInteraction:self shouldBeginAtPoint:a5 forAnalysisType:{x, y}];

  return v13;
}

- (void)textSelectionDidChangeForBaseOverlayView:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 textSelectionDidChangeForImageAnalysisInteraction:self];
  }
}

- (void)baseOverlayViewSubjectInteractionInProgressDidChange:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 imageAnalysisInteractionSubjectInteractionInProgressDidChange:self];
  }
}

- (void)baseOverlayView:(id)a3 analyticsEventDidOccur:(id)a4
{
  v6 = a4;
  [(VKCImageAnalysisInteraction *)self updateForAnalyticsVisualSearchEventIfNecessary:v6];
  v5 = [(VKCImageAnalysisInteraction *)self _analyticsDelegate];
  [v5 _visionKitAnalyticsEventDidOccur:v6 interaction:self];

  [(VKCImageAnalysisInteraction *)self addEventToAnalyticsSession:v6];
}

- (void)visualSearchCornerView:(id)a3 analyticsEventDidOccur:(id)a4
{
  v6 = a4;
  [(VKCImageAnalysisInteraction *)self updateForAnalyticsVisualSearchEventIfNecessary:v6];
  v5 = [(VKCImageAnalysisInteraction *)self _analyticsDelegate];
  [v5 _visionKitAnalyticsEventDidOccur:v6 interaction:self];

  [(VKCImageAnalysisInteraction *)self addEventToAnalyticsSession:v6];
}

- (void)updateForAnalyticsVisualSearchEventIfNecessary:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v10 = VKDynamicCast(v5, v4);

  v6 = v10;
  if (v10)
  {
    v7 = [v10 eventType];
    if (v7 == 2)
    {
      v8 = self;
      v9 = 1;
    }

    else
    {
      if (v7 == 1)
      {
        [v10 setDidInteractWithResultItem:{-[VKCImageAnalysisInteraction didInteractWithVisualSearchItem](self, "didInteractWithVisualSearchItem")}];
LABEL_9:
        v6 = v10;
        goto LABEL_10;
      }

      v6 = v10;
      if (v7)
      {
        goto LABEL_10;
      }

      v8 = self;
      v9 = 0;
    }

    [(VKCImageAnalysisInteraction *)v8 setDidInteractWithVisualSearchItem:v9];
    goto LABEL_9;
  }

LABEL_10:
}

- (id)baseOverlayView:(id)a3 updateStringForCopy:(id)a4
{
  v5 = a4;
  v6 = [(VKCImageAnalysisInteraction *)self delegate];
  v7 = objc_opt_respondsToSelector();

  v8 = v5;
  if (v7)
  {
    v9 = [(VKCImageAnalysisInteraction *)self delegate];
    v8 = [v9 imageAnalysisInteraction:self updateStringForCopy:v5];
  }

  return v8;
}

- (id)baseOverlayView:(id)a3 updateAttributedStringForCopy:(id)a4
{
  v5 = a4;
  v6 = [(VKCImageAnalysisInteraction *)self delegate];
  v7 = objc_opt_respondsToSelector();

  v8 = v5;
  if (v7)
  {
    v9 = [(VKCImageAnalysisInteraction *)self delegate];
    v8 = [v9 imageAnalysisInteraction:self updateAttributedStringForCopy:v5];
  }

  return v8;
}

- (BOOL)baseOverlayView:(id)a3 shouldHandleShareWithRanges:(id)a4 boundingRect:(CGRect)a5 selectedText:(id)a6 selectedAttributedText:(id)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = [(VKCImageAnalysisInteraction *)self delegate];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    v19 = [(VKCImageAnalysisInteraction *)self delegate];
    v20 = [v19 imageAnalysisInteraction:self shouldHandleShareWithRanges:v14 boundingRect:v15 selectedText:v16 selectedAttributedText:{x, y, width, height}];
  }

  else
  {
    v20 = 1;
  }

  return v20;
}

- (void)baseOverlayView:(id)a3 didTapVisualSearchIndicatorWithNormalizedBoundingBox:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [(VKCImageAnalysisInteraction *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(VKCImageAnalysisInteraction *)self delegate];
    [v11 imageAnalysisInteraction:self didTapVisualSearchIndicatorWithNormalizedBoundingBox:{x, y, width, height}];
  }
}

- (void)baseOverlayView:(id)a3 didUpdateToNormalizedVisibleRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [(VKCImageAnalysisInteraction *)self visualSearchCornerButtonView];
  [v9 setNormalizedVisibleRect:{x, y, width, height}];

  v10 = [(VKCImageAnalysisInteraction *)self actionInfoCornerButtonViewIfExists];
  [v10 setNormalizedVisibleRect:{x, y, width, height}];

  if (![(VKCImageAnalysisInteraction *)self isUpdatingActiveTypes])
  {

    [(VKCImageAnalysisInteraction *)self configureForCurrentDerivedAutomaticStateWithUpdateActiveTypes:0];
  }
}

- (void)baseOverlayView:(id)a3 didFinishTransitionToNormalizedVisibleRect:(CGRect)a4
{
  if (![(VKCImageAnalysisInteraction *)self didToggleAAButton:a3])
  {

    [(VKCImageAnalysisInteraction *)self configureForCurrentDerivedAutomaticStateWithUpdateActiveTypes:0];
  }
}

- (void)baseOverlayView:(id)a3 prepareForCalloutAction:(SEL)a4 completion:(id)a5
{
  v10 = a5;
  v7 = [(VKCImageAnalysisInteraction *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(VKCImageAnalysisInteraction *)self delegate];
    [v9 imageAnalysisInteraction:self prepareForCalloutAction:a4 competion:v10];
  }

  else
  {
    v10[2]();
  }
}

- (BOOL)isBaseOverlayViewShowingLivePhoto:(id)a3 delegateHasImplementation:(BOOL *)a4
{
  v6 = [(VKCImageAnalysisInteraction *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  *a4 = 1;
  v8 = [(VKCImageAnalysisInteraction *)self delegate];
  v9 = [v8 isShowingLivePhotoForImageAnalysisInteraction:self];

  return v9;
}

- (void)baseOverlayView:(id)a3 livePhotoShouldPlay:(BOOL)a4
{
  v4 = a4;
  v6 = [(VKCImageAnalysisInteraction *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(VKCImageAnalysisInteraction *)self delegate];
    [v8 imageAnalysisInteraction:self livePhotoShouldPlay:v4];
  }
}

- (BOOL)baseOverlayView:(id)a3 shouldShowLookupForItemFromCallout:(id)a4
{
  v5 = a4;
  v6 = [(VKCImageAnalysisInteraction *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(VKCImageAnalysisInteraction *)self delegate];
    v9 = [v8 imageAnalysisInteraction:self shouldShowLookupForItemFromCallout:v5];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)baseOverlayViewDidCompleteSubjectAnalysis:(id)a3
{
  v4 = [(VKCImageAnalysisInteraction *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(VKCImageAnalysisInteraction *)self delegate];
    [v6 imageAnalysisInteractionDidCompleteSubjectAnalysis:self];
  }
}

- (void)baseOverlayViewDidBeginSubjectAnalysis:(id)a3
{
  v4 = [(VKCImageAnalysisInteraction *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(VKCImageAnalysisInteraction *)self delegate];
    [v6 imageAnalysisInteractionDidBeginSubjectAnalysis:self];
  }
}

- (void)hasActiveTextSelectionDidChangeForBaseOverlayView:(id)a3
{
  v4 = [(VKCImageAnalysisInteraction *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(VKCImageAnalysisInteraction *)self delegate];
    [v6 hasActiveTextSelectionDidChangeForImageAnalysisInteraction:self];
  }
}

- (void)baseOverlayViewDidRequestButtonStateUpdate:(id)a3
{
  v7 = a3;
  [(VKCImageAnalysisInteraction *)self configureForCurrentDerivedAutomaticStateWithUpdateActiveTypes:1];
  v4 = [(VKCImageAnalysisInteraction *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(VKCImageAnalysisInteraction *)self delegate];
    [v6 imageAnalysisInteraction:self didRequestLiveTextButtonSelectedState:{objc_msgSend(v7, "highlightSelectableItems")}];
  }
}

- (void)highlightSelectableItemsDidChangeForBaseOverlayView:(id)a3
{
  v4 = [(VKCImageAnalysisInteraction *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(VKCImageAnalysisInteraction *)self delegate];
    [v6 imageAnalysisInteraction:self highlightSelectedItemsValueDidChange:{-[VKCImageAnalysisInteraction highlightSelectableItems](self, "highlightSelectableItems")}];
  }
}

- (void)visualSearchCornerView:(id)a3 didTapVisualSearchIndicatorWithNormalizedBoundingBox:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [(VKCImageAnalysisInteraction *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(VKCImageAnalysisInteraction *)self delegate];
    [v11 imageAnalysisInteraction:self didTapVisualSearchIndicatorWithNormalizedBoundingBox:{x, y, width, height}];
  }
}

- (void)baseOverlayViewDismissVisualSearchController:(id)a3
{
  v4 = [(VKCImageAnalysisInteraction *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(VKCImageAnalysisInteraction *)self delegate];
    [v6 imageAnalysisInteractionDidDismissVisualSearchController:self];
  }
}

- (void)visualSearchCornerViewDidDismissVisualSearchController:(id)a3
{
  v4 = [(VKCImageAnalysisInteraction *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(VKCImageAnalysisInteraction *)self delegate];
    [v6 imageAnalysisInteractionDidDismissVisualSearchController:self];
  }
}

- (void)generateVisualSearchResultForItems:(id)a3 queryID:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = +[VKImageAnalyzerMadInterface sharedInterface];
  v11 = [(VKImageAnalysis *)self->_analysis imageAnalysisResult];
  v12 = [v11 request];
  analysis = self->_analysis;
  v14 = [(VKImageAnalysis *)analysis imageAnalysisResult];
  v15 = [v14 visualSearchResult];
  v16 = [v15 payload];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __92__VKCImageAnalysisInteraction_generateVisualSearchResultForItems_queryID_completionHandler___block_invoke;
  v18[3] = &unk_1E7BE56A8;
  v19 = v8;
  v17 = v8;
  [v10 generateVisualSearchResultForRequest:v12 analysis:analysis items:v9 payload:v16 queryID:a4 completionHandler:v18];
}

void __92__VKCImageAnalysisInteraction_generateVisualSearchResultForItems_queryID_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(VKCVisualSearchResult);
  [(VKCVisualSearchResult *)v8 setSearchResult:v7];

  (*(*(a1 + 32) + 16))();
}

- (void)generateTextualVisualSearchResultForQueryInfo:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[VKImageAnalyzerMadInterface sharedInterface];
  v9 = [(VKCImageAnalysisInteraction *)self analysis];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __95__VKCImageAnalysisInteraction_generateTextualVisualSearchResultForQueryInfo_completionHandler___block_invoke;
  v11[3] = &unk_1E7BE4A90;
  v12 = v6;
  v10 = v6;
  [v8 generateTextualVisualSearchResultForAnalysis:v9 queryInfo:v7 completionHandler:v11];
}

- (void)submitVisualSearchUserFeedbackForReportIdentifier:(id)a3 userFeedbackPayload:(id)a4 sfReportData:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v13 = +[VKImageAnalyzerMadInterface sharedInterface];
  v11 = [(VKImageAnalysis *)self->_analysis imageAnalysisResult];
  v12 = [v11 request];
  [v13 submitVisualIntelligenceUserFeedbackForRequest:v12 reportIdentifier:v10 userFeedbackPayload:v9 sfReportData:v8];
}

- (void)addMetadataToVSFeedbackItem:(id)a3
{
  v4 = a3;
  v5 = [(VKCImageAnalysisInteraction *)self baseView];
  [v5 addMetadataToVSFeedbackItem:v4];
}

- (id)presentingViewControllerForImageAnalysisInteraction
{
  v3 = [(VKCImageAnalysisInteraction *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(VKCImageAnalysisInteraction *)self delegate];
    v6 = [v5 presentingViewControllerForImageAnalysisInteraction:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)videoPreviewAvailableForBaseOverlayView:(id)a3
{
  v4 = [(VKCImageAnalysisInteraction *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(VKCImageAnalysisInteraction *)self delegate];
    [v6 videoPreviewAvailableForImageAnalysisInteraction:self];
  }
}

- (void)quickActionProcessingCompleteForBaseOverlayView:(id)a3
{
  v4 = [(VKCImageAnalysisInteraction *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(VKCImageAnalysisInteraction *)self delegate];
    [v6 quickActionProcessingCompleteForImageAnalysisInteraction:self];
  }
}

- (void)visualIntelligenceSheetPresentedDidChangeForBaseOverlayView:(id)a3
{
  v4 = [(VKCImageAnalysisInteraction *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(VKCImageAnalysisInteraction *)self delegate];
    [v6 isVisualIntelligenceSheetPresentedDidChangeForImageAnalysisInteraction:self];
  }
}

- (void)visualIntelligenceDidRequestVluEnabled:(BOOL)a3 forBaseOverlayView:(id)a4
{
  v4 = a3;
  v6 = [(VKCImageAnalysisInteraction *)self delegate:a3];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(VKCImageAnalysisInteraction *)self delegate];
    [v8 imageAnalysisInteraction:self visualIntelligenceVluEnabledDidChange:v4];
  }
}

- (void)visualIntelligenceSheetIsDraggingDidChange:(BOOL)a3 forBaseOverlayView:(id)a4
{
  v4 = a3;
  v6 = [(VKCImageAnalysisInteraction *)self delegate:a3];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(VKCImageAnalysisInteraction *)self delegate];
    [v8 imageAnalysisInteraction:self isDraggingVisualIntelligenceSheetDidChange:v4];
  }
}

- (id)_filteredNormalizedRectangleQuads
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 filteredNormalizedRectangleQuads];

  return v3;
}

- (id)_filteredRectangleQuads
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 filteredRectangleQuads];

  return v3;
}

- (id)_rawRectangleObservations
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  v3 = [v2 rawRectangleObservations];

  return v3;
}

- (void)_highlightRectangleObservations
{
  [(VKCImageAnalysisInteraction *)self contentsRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(VKCImageAnalysisInteraction *)self view];
  v12 = [(VKCImageAnalysisInteraction *)self baseView];
  v13 = [v12 rawRectangleObservations];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__VKCImageAnalysisInteraction__highlightRectangleObservations__block_invoke;
  v15[3] = &unk_1E7BE56D0;
  v18 = v4;
  v19 = v6;
  v20 = v8;
  v21 = v10;
  v16 = v11;
  v17 = self;
  v14 = v11;
  [v13 enumerateObjectsUsingBlock:v15];
}

void __62__VKCImageAnalysisInteraction__highlightRectangleObservations__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 vkQuad];
  v6 = [v3 quadByConvertingFromNormalizedRectToView:*(a1 + 32) contentsRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];

  v4 = [*(a1 + 40) view];
  v5 = [v4 vk_autoFadeOutLayerWithQuad:v6];
}

- (void)_highlightFilteredRectangleQuads
{
  v3 = [(VKCImageAnalysisInteraction *)self view];
  v4 = [(VKCImageAnalysisInteraction *)self _filteredRectangleQuads];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__VKCImageAnalysisInteraction__highlightFilteredRectangleQuads__block_invoke;
  v6[3] = &unk_1E7BE4640;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

- (void)highlightMatchesForString:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v9[1] = *MEMORY[0x1E69E9840];
  v6 = &stru_1F2C04538;
  if (a3)
  {
    v6 = a3;
  }

  v7 = v6;
  v9[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  [(VKCImageAnalysisInteraction *)self highlightMatchesForStrings:v8 animated:v4];
}

- (void)highlightMatchesForStrings:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  if ([v8 count])
  {
    v6 = [v8 componentsJoinedByString:@" "];
    v7 = [(VKCImageAnalysisInteraction *)self baseView];
    [v7 highlightMatchesWithString:v6 animated:1];

    [(VKCImageAnalysisInteraction *)self sendAnalyticsEventWithType:3 source:0 analysisButtonActive:0];
  }

  else
  {
    v6 = [(VKCImageAnalysisInteraction *)self baseView];
    [v6 clearStringHighlightsAnimated:v4];
  }
}

- (void)clearMatchedHighlightsIfNecessaryAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(VKCImageAnalysisInteraction *)self baseView];
  [v4 clearStringHighlightsAnimated:v3];
}

- (void)triggerTapToRadar:(id)a3
{
  if ([a3 state] == 3)
  {

    [(VKCImageAnalysisInteraction *)self _provideFeedback];
  }
}

- (UIActivity)feedbackActivity
{
  if (vk_isInternalBuild())
  {
    objc_initWeak(&location, self);
    v3 = [VKBlockUIActivity alloc];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __47__VKCImageAnalysisInteraction_feedbackActivity__block_invoke;
    v6[3] = &unk_1E7BE4280;
    objc_copyWeak(&v7, &location);
    v4 = [(VKBlockUIActivity *)v3 initWithTitle:@"Provide Scarlett Feedback" systemImageName:@"ant.fill" block:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __47__VKCImageAnalysisInteraction_feedbackActivity__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _provideFeedback];
}

- (void)_provideFeedback
{
  v3 = [(VKCImageAnalysisInteraction *)self analysis];
  v4 = [v3 feedbackProvider];

  if (v4)
  {
    v5 = [(VKCImageAnalysisInteraction *)self delegate];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (objc_opt_respondsToSelector())
    {
      v7 = [v5 feedbackTypeForImageAnalysisInteraction:self];
    }

    else
    {
      v7 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v8 = [v5 feedbackOptionsForImageAnalysisInteraction:self];
    }

    else
    {
      v8 = -1;
    }

    if (objc_opt_respondsToSelector())
    {
      v9 = [v5 feedbackMetadataForImageAnalysisInteraction:self];
    }

    else
    {
      v9 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v10 = [v5 promisedFeedbackAttachementsForImageAnalysisInteraction:self];
      [v6 addObjectsFromArray:v10];
    }

    v11 = [(VKCImageAnalysisInteraction *)self analysis];
    [v4 setImageAnalysis:v11];

    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __47__VKCImageAnalysisInteraction__provideFeedback__block_invoke;
    v13[3] = &unk_1E7BE56F8;
    v12 = v5;
    v14 = v12;
    objc_copyWeak(&v15, &location);
    [v4 provideFeedbackWithType:v7 options:v8 metadata:v9 promisedAttachments:v6 userResponseHandler:v13];
    objc_destroyWeak(&v15);

    objc_destroyWeak(&location);
  }
}

void __47__VKCImageAnalysisInteraction__provideFeedback__block_invoke(uint64_t a1, char a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2 & 1) == 0 && (objc_opt_respondsToSelector())
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          v12 = *(a1 + 32);
          WeakRetained = objc_loadWeakRetained((a1 + 40));
          [v12 writeFeedbackAttachementForImageAnalysisInteraction:WeakRetained to:{v11, v14}];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

- (id)presentingViewControllerForFeedbackProvider
{
  v3 = [(VKCImageAnalysisInteraction *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(VKCImageAnalysisInteraction *)self delegate];
    v6 = [v5 presentingViewControllerForImageAnalysisInteraction:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)scrollViewDidZoomToUnitRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(VKCImageAnalysisInteraction *)self baseView];
  [v8 scrollViewDidZoomToUnitRect:{x, y, width, height}];

  v9 = [(VKCImageAnalysisInteraction *)self visualSearchCornerButtonView];
  [v9 setNormalizedVisibleRect:{x, y, width, height}];

  v10 = [(VKCImageAnalysisInteraction *)self actionInfoCornerButtonViewIfExists];
  [v10 setNormalizedVisibleRect:{x, y, width, height}];
}

- (VKImageAnalysisBarButtonItem)analysisBarButtonItem
{
  analysisBarButtonItem = self->_analysisBarButtonItem;
  if (!analysisBarButtonItem)
  {
    v4 = [VKImageAnalysisBarButtonItem analysisButtonWithTarget:self action:sel_aAAnalysisButtonPressed_ mode:0];
    v5 = self->_analysisBarButtonItem;
    self->_analysisBarButtonItem = v4;

    [(VKCImageAnalysisInteraction *)self configureForCurrentDerivedAutomaticStateWithUpdateActiveTypes:0];
    analysisBarButtonItem = self->_analysisBarButtonItem;
  }

  return analysisBarButtonItem;
}

- (VKImageAnalysisButton)analysisButton
{
  analysisButton = self->_analysisButton;
  if (!analysisButton)
  {
    v4 = [(VKCImageAnalysisInteraction *)self createAnalysisButton];
    v5 = self->_analysisButton;
    self->_analysisButton = v4;

    [(VKCImageAnalysisInteraction *)self configureForCurrentDerivedAutomaticStateWithUpdateActiveTypes:0];
    analysisButton = self->_analysisButton;
  }

  return analysisButton;
}

- (VKImageAnalysisButton)actionInfoAnalysisButton
{
  actionInfoAnalysisButton = self->_actionInfoAnalysisButton;
  if (!actionInfoAnalysisButton)
  {
    v4 = [(VKCImageAnalysisInteraction *)self createAnalysisButton];
    v5 = self->_actionInfoAnalysisButton;
    self->_actionInfoAnalysisButton = v4;

    [(VKCImageAnalysisInteraction *)self configureForCurrentDerivedAutomaticStateWithUpdateActiveTypes:0];
    actionInfoAnalysisButton = self->_actionInfoAnalysisButton;
  }

  return actionInfoAnalysisButton;
}

- (id)createAnalysisButton
{
  v3 = [VKImageAnalysisButton buttonWithType:1];
  [v3 addTarget:self action:sel_aAAnalysisButtonPressed_ forControlEvents:64];
  [v3 setFunction:2];
  [v3 setGlyphConfiguration:1];
  [v3 setMode:1];
  [v3 setSupportsDynamicType:1];
  v4 = [MEMORY[0x1E69DC888] systemBlueColor];
  [v3 setTintColor:v4];

  [v3 setAlpha:0.0];

  return v3;
}

- (void)setAnalysisButtonPrefersDarkGlyphWhenSelected:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();
  v6 = [(VKCImageAnalysisInteraction *)self analysisButton];
  v7 = VKCheckedDynamicCast(v5, v6);
  [v7 setPrefersDarkGlyphWhenSelected:v3];

  v8 = [(VKCImageAnalysisInteraction *)self actionInfoAnalysisButtonIfExists];
  [v8 setPrefersDarkGlyphWhenSelected:v3];
}

- (BOOL)analysisButtonPrefersDarkGlyphWhenSelected
{
  v3 = objc_opt_class();
  v4 = [(VKCImageAnalysisInteraction *)self analysisButton];
  v5 = VKCheckedDynamicCast(v3, v4);
  v6 = [v5 prefersDarkGlyphWhenSelected];

  return v6;
}

- (void)aAAnalysisButtonPressed:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = self;
    _os_log_impl(&dword_1B4335000, v5, OS_LOG_TYPE_DEFAULT, "Live Text Button Pressed: %@", &v11, 0xCu);
  }

  v6 = [(VKCImageAnalysisInteraction *)self deriveCurrentAutomaticState];
  if ([(VKCImageAnalysisInteraction *)self _isPublicAPI]&& ![(VKCImageAnalysisInteraction *)self _isInPublicAutomaticMode])
  {
    if ([(VKCImageAnalysisInteraction *)self _isPublicAPI])
    {
      v7 = v6 - 1;
      if (v6 - 1 < 4)
      {
        v8 = &unk_1B4428488;
        goto LABEL_11;
      }
    }
  }

  else
  {
    v7 = v6 - 1;
    if (v6 - 1 < 6 && ((0x27u >> v7) & 1) != 0)
    {
      v8 = &unk_1B4428458;
LABEL_11:
      v6 = v8[v7];
    }
  }

  [(VKCImageAnalysisInteraction *)self setDidToggleAAButton:1];
  [(VKCImageAnalysisInteraction *)self configureButtonsForState:v6 updateActiveTypes:1];
  [(VKCImageAnalysisInteraction *)self sendAAButtonPressedDelegateCallbackIfNecessaryForSender:v4];
  if (self->_analysisButton == v4)
  {
    v10 = 4;
  }

  else
  {
    v9 = [(VKCImageAnalysisInteraction *)self actionInfoAnalysisButtonIfExists];
    if (v9 == v4)
    {
      v10 = 4;
    }

    else
    {
      v10 = 5;
    }
  }

  [(VKCImageAnalysisInteraction *)self sendAnalyticsEventWithType:0 source:v10 analysisButtonActive:[(VKCImageAnalysisInteraction *)self _highlightSelectableItems]];
}

- (void)sendAAButtonPressedDelegateCallbackIfNecessaryForSender:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v15 = VKCheckedDynamicCast(v5, v4);

  if (v15 == self->_analysisButton || ([(VKCImageAnalysisInteraction *)self actionInfoAnalysisButtonIfExists], v6 = objc_claimAutoreleasedReturnValue(), v6, v15 == v6))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v14 = objc_opt_respondsToSelector();

    if ((v14 & 1) == 0)
    {
      goto LABEL_10;
    }

    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 imageAnalysisInteraction:self imageAnalysisButtonPressed:v15];
    goto LABEL_9;
  }

  analysisBarButtonItem = self->_analysisBarButtonItem;
  if (analysisBarButtonItem)
  {
    v8 = [(VKImageAnalysisBarButtonItem *)analysisBarButtonItem customView];
    v9 = [(VKImageAnalysisButton *)v15 isDescendantOfView:v8];

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        v12 = objc_loadWeakRetained(&self->_delegate);
        [v12 imageAnalysisInteraction:self imageAnalysisBarItemPressed:self->_analysisBarButtonItem];
LABEL_9:
      }
    }
  }

LABEL_10:
}

- (VKCVisualSearchCornerView)actionInfoCornerButtonView
{
  actionInfoCornerButtonView = self->_actionInfoCornerButtonView;
  if (!actionInfoCornerButtonView)
  {
    v4 = objc_alloc_init(VKCVisualSearchCornerView);
    v5 = self->_actionInfoCornerButtonView;
    self->_actionInfoCornerButtonView = v4;

    v6 = [(VKCImageAnalysisInteraction *)self _customAnalyticsIdentifier];
    [(VKCVisualSearchCornerView *)self->_actionInfoCornerButtonView set_customAnalyticsIdentifier:v6];

    v7 = [(VKCImageAnalysisInteraction *)self analysis];
    [(VKCVisualSearchCornerView *)self->_actionInfoCornerButtonView setAnalysis:v7];

    [(VKCVisualSearchCornerView *)self->_actionInfoCornerButtonView setDelegate:self];
    v8 = [(VKCImageAnalysisInteraction *)self _customAnalyticsIdentifier];
    [(VKCVisualSearchCornerView *)self->_actionInfoCornerButtonView set_customAnalyticsIdentifier:v8];

    v9 = [(VKCImageAnalysisInteraction *)self baseView];
    [v9 normalizedVisibleRect];
    [(VKCVisualSearchCornerView *)self->_actionInfoCornerButtonView setNormalizedVisibleRect:?];

    [(VKCVisualSearchCornerView *)self->_actionInfoCornerButtonView setHidden:([(VKCImageAnalysisInteraction *)self activeInteractionTypes]& 4) == 0];
    v10 = [(VKCImageAnalysisInteraction *)self baseView];
    [v10 setDidAddVisualSearchCornerView:1];

    actionInfoCornerButtonView = self->_actionInfoCornerButtonView;
  }

  return actionInfoCornerButtonView;
}

- (void)set_manuallyManagesActionInfoButtons:(BOOL)a3
{
  self->__manuallyManagesActionInfoButtons = a3;
  if (a3)
  {
    v5 = [(VKCImageAnalysisInteraction *)self actionInfoView];
    [v5 setQuickActions:MEMORY[0x1E695E0F0]];
  }

  else
  {
    v5 = [(VKCImageAnalysisInteraction *)self actionButtons];
    v4 = [(VKCImageAnalysisInteraction *)self actionInfoView];
    [v4 setQuickActions:v5];
  }
}

- (VKCActionInfoView)actionInfoView
{
  actionInfoView = self->_actionInfoView;
  if (!actionInfoView)
  {
    v4 = [VKCActionInfoView alloc];
    v5 = [(VKCImageAnalysisInteraction *)self actionInfoAnalysisButton];
    v6 = objc_opt_class();
    v7 = [(VKCImageAnalysisInteraction *)self actionInfoCornerButtonView];
    v8 = VKCheckedDynamicCast(v6, v7);
    v9 = [(VKCActionInfoView *)v4 initWithLiveTextButton:v5 cornerView:v8];
    v10 = self->_actionInfoView;
    self->_actionInfoView = v9;

    [(VKCImageAnalysisInteraction *)self preferredQuickActionButtonHeight];
    [(VKCActionInfoView *)self->_actionInfoView setPreferredQuickActionButtonHeight:?];
    v11 = [(VKCImageAnalysisInteraction *)self quickActionConfigurationUpdateHandler];
    [(VKCActionInfoView *)self->_actionInfoView setQuickActionConfigurationUpdateHandler:v11];

    v12 = self->_actionInfoView;
    v13 = [(VKCImageAnalysisInteraction *)self baseView];
    [v13 setActionInfoView:v12];

    v14 = [(VKCImageAnalysisInteraction *)self baseView];
    v15 = [v14 quickActions];
    actionButtons = self->_actionButtons;
    self->_actionButtons = v15;

    if (!self->__manuallyManagesActionInfoButtons)
    {
      [(VKCActionInfoView *)self->_actionInfoView setQuickActions:self->_actionButtons];
    }

    [(VKCActionInfoView *)self->_actionInfoView setWantsTranslucentActionInfoButtons:[(VKCImageAnalysisInteraction *)self wantsTranslucentActionInfoButtons]];
    [(VKCActionInfoView *)self->_actionInfoView set_quickActionsHidden:1];
    [(VKCActionInfoView *)self->_actionInfoView setHidden:[(VKCImageAnalysisInteraction *)self actionInfoViewHidden]];
    actionInfoView = self->_actionInfoView;
  }

  return actionInfoView;
}

- (void)configureForCurrentDerivedAutomaticStateWithUpdateActiveTypes:(BOOL)a3
{
  v3 = a3;
  v5 = [(VKCImageAnalysisInteraction *)self deriveCurrentAutomaticState];

  [(VKCImageAnalysisInteraction *)self configureButtonsForState:v5 updateActiveTypes:v3];
}

- (unint64_t)deriveCurrentAutomaticState
{
  v3 = [(VKCImageAnalysisInteraction *)self _isPublicAPI];
  v4 = [(VKCImageAnalysisInteraction *)self _isInPublicAutomaticMode];
  v5 = [(VKCImageAnalysisInteraction *)self _highlightSelectableItems];
  v6 = [(VKCImageAnalysisInteraction *)self analysis];
  v7 = [(VKCImageAnalysisInteraction *)self activeInteractionTypes];
  v8 = 0;
  if (v6 && v7)
  {
    if (v4 || !v3)
    {
      if ((v7 & 4) != 0)
      {
        v8 = 6;
      }

      else
      {
        v8 = 2;
        if ((!v3 || !v4 || !v5) && (v3 || !v5))
        {
          if (v7 == 3)
          {
            v8 = 1;
          }

          else
          {
            v8 = ((v7 << 63) >> 63) & 3;
          }
        }
      }
    }

    else
    {
      v9 = v7 & 0xFFFFFFFFFFFFFFF7;
      v10 = 5;
      v11 = 3;
      if (v5)
      {
        v11 = 4;
      }

      v12 = ((v7 << 61) >> 63) & 6;
      v13 = 1;
      if (v5)
      {
        v13 = 2;
      }

      if (v9 == 3)
      {
        v12 = v13;
      }

      if (v9 != 2)
      {
        v10 = v12;
      }

      if (v9 == 1)
      {
        v8 = v11;
      }

      else
      {
        v8 = v10;
      }
    }
  }

  return v8;
}

- (void)configureButtonsForState:(unint64_t)a3 updateActiveTypes:(BOOL)a4
{
  v4 = a4;
  v7 = [(VKCImageAnalysisInteraction *)self analysis];
  v45 = self->_analysisButton;
  v8 = [(VKCImageAnalysisInteraction *)self actionInfoAnalysisButtonIfExists];
  v46 = self->_analysisBarButtonItem;
  v9 = [(VKCImageAnalysisInteraction *)self visualSearchCornerButtonView];
  v10 = [(VKCImageAnalysisInteraction *)self actionInfoCornerButtonViewIfExists];
  v11 = [v7 hasResultsForAnalysisTypes:2];
  v12 = [v7 hasResultsForAnalysisTypes:1];
  v13 = v11 | [v7 hasResultsForAnalysisTypes:4];
  v14 = [(VKCImageAnalysisInteraction *)self baseView];
  v15 = v14;
  if (v14)
  {
    [v14 visibleTextAreaInfo];
    v16 = *&v67 * 100.0;
  }

  else
  {
    v69 = 0;
    v67 = 0u;
    v68 = 0u;
    v16 = 0.0;
  }

  v17 = v12 | v13;

  +[VKCInternalSettings visibleTextAreaButtonThreshold];
  if (v16 >= v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = [(VKCImageAnalysisInteraction *)self didToggleAAButton]| v13;
    if ((v19 & 1) == 0 && ((v17 ^ 1) & 1) == 0)
    {
      v19 = ![(VKCImageAnalysisInteraction *)self analysisButtonRequiresVisibleContentGating];
    }
  }

  if (([(VKCImageAnalysisInteraction *)self interactionTypesSetByClient]& 8) != 0)
  {
    if ([(VKCImageAnalysisInteraction *)self _isPublicAPI])
    {
      v20 = [(VKCImageAnalysisInteraction *)self _isInPublicAutomaticMode];
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = 0.0;
  v49 = v7;
  v48 = v4;
  v47 = v8;
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v22 = 0;
LABEL_37:
        v31 = v10;
        v43 = v20;
        v26 = 0;
        v23 = 0;
        v27 = 0;
        v25 = 1;
        v41 = 3;
        v44 = v22;
        if ((v17 & v19 & 1) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_38;
      }

      if (a3 == 2)
      {
        v20 = 0;
        v22 = 1;
        goto LABEL_37;
      }

      v43 = v20;
      v23 = 0;
      v25 = 0;
      LOBYTE(v22) = 0;
    }

    else
    {
      v23 = 0;
      v25 = 0;
      LOBYTE(v22) = 0;
      v43 = 0;
    }

    v44 = 0;
    v41 = 0;
    v27 = 0;
LABEL_41:
    v31 = v10;
    goto LABEL_42;
  }

  if (a3 > 4)
  {
    v28 = 2;
    v29 = 4;
    v30 = a3 != 6 && v20;
    if (a3 != 6)
    {
      v29 = 0;
    }

    v23 = 0;
    v25 = 0;
    LOBYTE(v22) = 0;
    if (a3 == 5)
    {
      v30 = 0;
    }

    v43 = v30;
    v44 = 0;
    if (a3 != 5)
    {
      v28 = v29;
    }

    v41 = v28;
    v27 = 0;
    goto LABEL_41;
  }

  if (a3 == 3)
  {
    v43 = v20;
    LOBYTE(v22) = 0;
    v44 = 0;
    v26 = 0;
    v23 = 0;
    v27 = 0;
    v24 = v17 & v19;
    v41 = 1;
    v25 = v17;
  }

  else
  {
    LOBYTE(v22) = 0;
    v43 = 0;
    v23 = 0;
    v24 = v17 & v19;
    v44 = 1;
    v25 = v17;
    v41 = 1;
    v26 = 1;
    v27 = 1;
  }

  v31 = v10;
  if (v24)
  {
LABEL_38:
    v21 = 1.0;
    v23 = 1;
    v27 = v26;
  }

LABEL_42:
  v42 = v27;
  v32 = [(VKCImageAnalysisInteraction *)self forceAnalysisBarButtonItemEnabled]& v17;
  v33 = MEMORY[0x1E69DD250];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __74__VKCImageAnalysisInteraction_configureButtonsForState_updateActiveTypes___block_invoke;
  v54[3] = &unk_1E7BE5720;
  v55 = v45;
  v61 = v21;
  v62 = v25 & 1;
  v63 = v22;
  v56 = v47;
  v34 = v46;
  v64 = v23;
  v65 = v32;
  v57 = v34;
  v58 = v9;
  v66 = v48;
  v59 = v31;
  v60 = self;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __74__VKCImageAnalysisInteraction_configureButtonsForState_updateActiveTypes___block_invoke_2;
  v50[3] = &unk_1E7BE5748;
  v35 = v55;
  v53 = v23;
  v51 = v35;
  v52 = v56;
  v36 = v56;
  v37 = v31;
  v38 = v9;
  [v33 animateWithDuration:v54 animations:v50 completion:0.15];
  if (v48)
  {
    if (v43)
    {
      v39 = v41 | 8;
    }

    else
    {
      v39 = v41;
    }

    [(VKCImageAnalysisInteraction *)self _setActiveInteractionTypes:v39 updateAutomaticState:0];
  }

  [(VKCImageAnalysisInteraction *)self set_highlightSelectableItems:v44];
  [(VKCImageAnalysisInteraction *)self setButtonsVisible:v23];
  if ([(VKCImageAnalysisInteraction *)self deriveQuickActionsVisibilityFromState])
  {
    v40 = [(VKCImageAnalysisInteraction *)self actionInfoViewIfExists];
    [v40 set_quickActionsHidden:v42 | v44 ^ 1];
  }

  [(VKImageAnalysisButton *)v35 setMode:0];
  [v36 setMode:0];
  [(VKImageAnalysisBarButtonItem *)v34 setMode:0];
}

void __74__VKCImageAnalysisInteraction_configureButtonsForState_updateActiveTypes___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:*(a1 + 80)];
  [*(a1 + 32) setEnabled:*(a1 + 88)];
  [*(a1 + 32) setSelected:*(a1 + 89)];
  [*(a1 + 40) setAlpha:*(a1 + 80)];
  [*(a1 + 40) setEnabled:*(a1 + 88)];
  [*(a1 + 40) setSelected:*(a1 + 89)];
  if (*(a1 + 88) == 1 && (*(a1 + 90) & 1) != 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 91);
  }

  [*(a1 + 48) setEnabled:v2 & 1];
  [*(a1 + 48) setSelected:*(a1 + 89)];
  if ((*(a1 + 90) & 1) == 0 && ([*(a1 + 56) isHidden] & 1) == 0 && (objc_msgSend(*(a1 + 64), "isHidden") & 1) == 0)
  {
    [*(a1 + 32) setHidden:1];
    [*(a1 + 40) setHidden:1];
  }

  if ((*(a1 + 89) & 1) == 0 && *(a1 + 92) == 1)
  {
    v3 = [*(a1 + 72) baseView];
    [v3 setIsShowingTranslation:0];
  }
}

uint64_t __74__VKCImageAnalysisInteraction_configureButtonsForState_updateActiveTypes___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setHidden:(*(a1 + 48) & 1) == 0];
  v2 = *(a1 + 40);
  v3 = (*(a1 + 48) & 1) == 0;

  return [v2 setHidden:v3];
}

- (void)sendAnalyticsEventWithType:(int64_t)a3 source:(int64_t)a4 analysisButtonActive:(BOOL)a5
{
  v5 = a5;
  v9 = [VKAnalyticsInteractionEvent alloc];
  v10 = [(VKCImageAnalysisInteraction *)self analysis];
  v11 = [v10 imageAnalysisResult];
  v12 = [(VKCImageAnalysisInteraction *)self activeInteractionTypes];
  v13 = [(VKCImageAnalysisInteraction *)self _customAnalyticsIdentifier];
  v15 = [(VKAnalyticsInteractionEvent *)v9 initWithEventType:a3 analysis:v11 source:a4 interactionTypes:v12 buttonActive:v5 customIdentifier:v13];

  if ([(VKCImageAnalysisInteraction *)self activeInteractionTypes])
  {
    [(VKCImageAnalysisInteraction *)self addEventToAnalyticsSession:v15];
  }

  else
  {
    [(VKCImageAnalysisInteraction *)self closeAndSendCurrentAnalyticsSession];
  }

  v14 = [(VKCImageAnalysisInteraction *)self _analyticsDelegate];
  [v14 _visionKitAnalyticsEventDidOccur:v15 interaction:self];
}

- (void)addEventToAnalyticsSession:(id)a3
{
  v4 = a3;
  if (![(VKCImageAnalysisInteraction *)self isSettingAnalysis])
  {
    v5 = [(VKCImageAnalysisInteraction *)self analyticsProcessor];
    [v5 processAndSendEvent:v4];

    [(VKCImageAnalysisInteraction *)self beginNewAnalyticsSessionIfNecessary];
    v6 = [(VKCImageAnalysisInteraction *)self analyticsSession];
    [v6 addEvent:v4];

    v7 = ([(VKCImageAnalysisInteraction *)self analyticsTimeoutIndex]+ 1);
    [(VKCImageAnalysisInteraction *)self setAnalyticsTimeoutIndex:v7];
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__VKCImageAnalysisInteraction_addEventToAnalyticsSession___block_invoke;
    v8[3] = &unk_1E7BE4348;
    objc_copyWeak(v9, &location);
    v9[1] = v7;
    vk_dispatchMainAfterDelay(v8, 30.0);
    objc_destroyWeak(v9);
    objc_destroyWeak(&location);
  }
}

void __58__VKCImageAnalysisInteraction_addEventToAnalyticsSession___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained analyticsTimeoutIndex] == *(a1 + 40);
    WeakRetained = v4;
    if (v3)
    {
      [v4 closeAndSendCurrentAnalyticsSession];
      WeakRetained = v4;
    }
  }
}

- (void)beginNewAnalyticsSessionIfNecessary
{
  v3 = [(VKCImageAnalysisInteraction *)self analysis];
  if (v3)
  {
    v4 = v3;
    v5 = [(VKCImageAnalysisInteraction *)self activeInteractionTypes];

    if (v5)
    {
      v6 = [(VKCImageAnalysisInteraction *)self analyticsSession];

      if (!v6)
      {
        v7 = [VKAnalyticsSessionAccumulator alloc];
        v8 = [(VKCImageAnalysisInteraction *)self analysis];
        v9 = [(VKCImageAnalysisInteraction *)self _customAnalyticsIdentifier];
        v10 = [(VKAnalyticsSessionAccumulator *)v7 initWithAnalysis:v8 customIdentifier:v9];
        [(VKCImageAnalysisInteraction *)self setAnalyticsSession:v10];

        v11 = [(VKCImageAnalysisInteraction *)self analyticsTimeoutIndex]+ 1;

        [(VKCImageAnalysisInteraction *)self setAnalyticsTimeoutIndex:v11];
      }
    }
  }
}

- (void)closeAndSendCurrentAnalyticsSession
{
  v3 = [(VKCImageAnalysisInteraction *)self analyticsSession];
  if (v3)
  {
    v5 = v3;
    [v3 close];
    v4 = [(VKCImageAnalysisInteraction *)self analyticsProcessor];
    [v4 processAndSendSession:v5];

    [(VKCImageAnalysisInteraction *)self setAnalyticsTimeoutIndex:[(VKCImageAnalysisInteraction *)self analyticsTimeoutIndex]+ 1];
    [(VKCImageAnalysisInteraction *)self setAnalyticsSession:0];
    v3 = v5;
  }
}

+ (void)_quickActionResultForDocumentObservation:(id)a3 queue:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    v8 = MEMORY[0x1E69E96A0];
    v10 = MEMORY[0x1E69E96A0];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__VKCImageAnalysisInteraction__quickActionResultForDocumentObservation_queue_completionHandler___block_invoke;
  block[3] = &unk_1E7BE50D8;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(v12, block);
}

void __96__VKCImageAnalysisInteraction__quickActionResultForDocumentObservation_queue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [VKCImageAnalysisResult alloc];
  v3 = [(VKCImageAnalysisResult *)v2 initWithDocumentObservation:*(a1 + 32) mrcDataDetectors:MEMORY[0x1E695E0F0] imageSize:1.0, 1.0];
  v4 = [(VKCTextRecognitionResult *)v3 dataDetectors];
  v5 = [(VKCTextRecognitionResult *)v3 unfilteredDataDetectors];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __96__VKCImageAnalysisInteraction__quickActionResultForDocumentObservation_queue_completionHandler___block_invoke_2;
  v7[3] = &unk_1E7BE5790;
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  [VKCQuickActionsProcessor quickActionsFromElements:v4 unfilteredElements:v5 analysis:v3 queue:v6 completionHandler:v7];
}

void __96__VKCImageAnalysisInteraction__quickActionResultForDocumentObservation_queue_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 enumerateObjectsUsingBlock:&__block_literal_global_11];
  v4 = VKBundle();
  v9 = [v4 localizedStringForKey:@"VK_QUICK_ACTION_TITLE_MORE" value:@"VK_QUICK_ACTION_TITLE_MORE" table:@"Localizable"];

  v5 = [MEMORY[0x1E69DCAB8] vk_symbolImageWithName:@"ellipsis.circle.fill"];
  v6 = [(VKCActionInfoButton *)VKCActionInfoMoreButton buttonWithImage:v5 text:v9];
  [v6 setAccessibilityIdentifier:@"QuickActionMore"];
  v7 = [VKCActionInfoView buildMoreButtonMenuFromQuickActions:v3 moreButton:v6 isStandAloneMoreButton:1];
  [v6 setMenu:v7];

  v8 = objc_alloc_init(VKCExternalQuickActionsResult);
  [(VKCExternalQuickActionsResult *)v8 setQuickActions:v3];

  [(VKCExternalQuickActionsResult *)v8 setMoreButton:v6];
  (*(*(a1 + 32) + 16))();
}

void __96__VKCImageAnalysisInteraction__quickActionResultForDocumentObservation_queue_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 translucentButtonConfiguration];
  [v2 setConfiguration:v3];
}

- (void)_test_activateTranslationOverlay
{
  v2 = [(VKCImageAnalysisInteraction *)self baseView];
  [v2 test_activateTranslationOverlay];
}

- (VKCImageAnalysisInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (VKInteractionAnalyticsDelegate)_analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->__analyticsDelegate);

  return WeakRetained;
}

- (VKCImageAnalysisInteractionDelegate)_viHostDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->__viHostDelegate);

  return WeakRetained;
}

- (id)generatePlistsForScalingAndAlignment
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:15];
  v4 = [(VKCImageAnalysisInteraction *)self view];
  [v4 bounds];
  v7 = [VKCMockHelper plistFromSize:v5, v6];
  [v3 setObject:v7 forKeyedSubscript:VKCMockResultLayoutBoundsKey];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [&unk_1F2C39270 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(&unk_1F2C39270);
        }

        v12 = [*(*(&v21 + 1) + 8 * i) integerValue];
        v13 = v12;
        if (v12 > 0xC)
        {
          v14 = 0;
        }

        else
        {
          v14 = off_1E7BE7868[v12];
        }

        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v14];
        v16 = [(VKCImageAnalysisInteraction *)self view];
        [v16 setContentMode:v13];

        v17 = [(VKCImageAnalysisInteraction *)self baseView];
        v18 = [v17 textSelectionView];
        v19 = [v18 quadsForAllWordsForCurrentLayout];
        [v3 setObject:v19 forKeyedSubscript:v15];
      }

      v9 = [&unk_1F2C39270 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  return v3;
}

@end