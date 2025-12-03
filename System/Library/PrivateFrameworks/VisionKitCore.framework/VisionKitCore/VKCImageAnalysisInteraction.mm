@interface VKCImageAnalysisInteraction
+ (void)_quickActionResultForDocumentObservation:(id)observation queue:(id)queue completionHandler:(id)handler;
- ($58EB755F713D70195D081A2438463C76)videoPreviewTimeRange;
- (BOOL)_highlightSelectableItems;
- (BOOL)_inhibitSubjectDimmingAndLiftView;
- (BOOL)_isPublicAPI;
- (BOOL)_isShowingTranslationOverlay;
- (BOOL)_isVIHosted;
- (BOOL)_photosInfoSingleTapSubjectModeEnabled;
- (BOOL)_showVSResultForItem:(id)item;
- (BOOL)actionInfoItemExistsAtPoint:(CGPoint)point;
- (BOOL)actionInfoLayoutUpdatesSuspended;
- (BOOL)actionInfoLiveTextButtonDisabled;
- (BOOL)actionInfoQuickActionsDisabled;
- (BOOL)actionInfoVisualSearchCornerViewDisabled;
- (BOOL)allowLongPressForDataDetectorsInTextMode;
- (BOOL)analysisButtonPrefersDarkGlyphWhenSelected;
- (BOOL)analysisContainsTextAtPoint:(CGPoint)point;
- (BOOL)baseOverlayView:(id)view shouldBeginInteractionAtPoint:(CGPoint)point withTypes:(unint64_t)types;
- (BOOL)baseOverlayView:(id)view shouldHandleShareWithRanges:(id)ranges boundingRect:(CGRect)rect selectedText:(id)text selectedAttributedText:(id)attributedText;
- (BOOL)baseOverlayView:(id)view shouldShowLookupForItemFromCallout:(id)callout;
- (BOOL)dataDetectorExistsAtPoint:(CGPoint)point;
- (BOOL)hasActiveTextSelection;
- (BOOL)imageSubjectExistsAtPoint:(CGPoint)point;
- (BOOL)interactableItemExistsAtPoint:(CGPoint)point;
- (BOOL)isBaseOverlayViewShowingLivePhoto:(id)photo delegateHasImplementation:(BOOL *)implementation;
- (BOOL)isDraggingVisualIntelligenceSheet;
- (BOOL)isSubjectAnalysisComplete;
- (BOOL)isSubjectHighlightAvailable;
- (BOOL)isVisualIntelligenceSheetVisible;
- (BOOL)subjectHighlightActive;
- (BOOL)subjectInteractionInProgress;
- (BOOL)subjectViewUserInteractionDisabled;
- (BOOL)textExistsAtPoint:(CGPoint)point;
- (BOOL)topLevelImplementsContentsRectDelegateForBaseView:(id)view;
- (BOOL)usesLightDimmingViewInLightMode;
- (BOOL)visualSearchExistsAtPoint:(CGPoint)point;
- (BOOL)wantsAutomaticContentsRectCalculation;
- (CGRect)contentsRect;
- (CGRect)contentsRectForImageRecognitionBaseView:(id)view;
- (CGRect)imageSubjectBoundsWithIndexes:(id)indexes;
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
- (VKCImageAnalysisInteraction)initWithInteractionOptions:(unint64_t)options;
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
- (id)baseOverlayView:(id)view updateAttributedStringForCopy:(id)copy;
- (id)baseOverlayView:(id)view updateStringForCopy:(id)copy;
- (id)createAnalysisButton;
- (id)customLayoutActionInfoView;
- (id)generatePlistsForScalingAndAlignment;
- (id)generateSubjectImage;
- (id)imageForImageSnapshotForBaseView:(id)view;
- (id)imageSubjectPathWithIndexes:(id)indexes;
- (id)omnibarContainerView;
- (id)presentingViewControllerForFeedbackProvider;
- (id)presentingViewControllerForImageAnalysisInteraction;
- (id)previewForDataDetectorElementView:(id)view;
- (id)resultItems;
- (id)subjectIndexAtPoint:(CGPoint)point;
- (id)videoPreviewSubjectMatteAtCompositionTime:(id *)time;
- (id)videoPreviewSubjectMatteForImage:(id)image atCompositionTime:(id *)time;
- (id)viewForImageSnapshotForBaseView:(id)view;
- (unint64_t)activeInteractionTypes;
- (unint64_t)dataDetectorTypes;
- (unint64_t)deriveCurrentAutomaticState;
- (void)_addAsyncMRCElement:(id)element;
- (void)_automaticallyShowVisualSearchResultsIfApplicable;
- (void)_copyAllToClipboard;
- (void)_highlightFilteredRectangleQuads;
- (void)_highlightRectangleObservations;
- (void)_provideFeedback;
- (void)_setActiveInteractionTypes:(unint64_t)types updateAutomaticState:(BOOL)state;
- (void)_test_activateTranslationOverlay;
- (void)aAAnalysisButtonPressed:(id)pressed;
- (void)addEventToAnalyticsSession:(id)session;
- (void)addMetadataToVSFeedbackItem:(id)item;
- (void)analysisDidUpdate:(id)update;
- (void)baseOverlayView:(id)view analyticsEventDidOccur:(id)occur;
- (void)baseOverlayView:(id)view didFinishTransitionToNormalizedVisibleRect:(CGRect)rect;
- (void)baseOverlayView:(id)view didTapVisualSearchIndicatorWithNormalizedBoundingBox:(CGRect)box;
- (void)baseOverlayView:(id)view didUpdateToNormalizedVisibleRect:(CGRect)rect;
- (void)baseOverlayView:(id)view livePhotoShouldPlay:(BOOL)play;
- (void)baseOverlayView:(id)view prepareForCalloutAction:(SEL)action completion:(id)completion;
- (void)baseOverlayViewDidBeginSubjectAnalysis:(id)analysis;
- (void)baseOverlayViewDidCompleteSubjectAnalysis:(id)analysis;
- (void)baseOverlayViewDidRequestButtonStateUpdate:(id)update;
- (void)baseOverlayViewDismissVisualSearchController:(id)controller;
- (void)baseOverlayViewSubjectInteractionInProgressDidChange:(id)change;
- (void)beginImageSubjectAnalysisIfNecessary;
- (void)beginImageSubjectAnalysisIfNecessaryWithCompletion:(id)completion;
- (void)beginImageSubjectAnalysisWithDelayIfNecessary;
- (void)beginNewAnalyticsSessionIfNecessary;
- (void)clearMatchedHighlightsIfNecessaryAnimated:(BOOL)animated;
- (void)closeAndSendCurrentAnalyticsSession;
- (void)commonInit;
- (void)configureButtonsForState:(unint64_t)state updateActiveTypes:(BOOL)types;
- (void)configureForCurrentDerivedAutomaticStateWithUpdateActiveTypes:(BOOL)types;
- (void)createStickerImageAtIndexSet:(id)set completion:(id)completion;
- (void)createStickerRepresentationsAtIndexSet:(id)set completion:(id)completion;
- (void)createStickerRepresentationsAtIndexSet:(id)set type:(unint64_t)type stickerIDs:(id)ds progress:(id)progress completion:(id)completion;
- (void)dealloc;
- (void)didMoveToView:(id)view;
- (void)dismissVisualIntelligenceSheetIfNecessary;
- (void)generateTextualVisualSearchResultForQueryInfo:(id)info completionHandler:(id)handler;
- (void)generateVisualSearchResultForItems:(id)items queryID:(unint64_t)d completionHandler:(id)handler;
- (void)hasActiveTextSelectionDidChangeForBaseOverlayView:(id)view;
- (void)highlightMatchesForString:(id)string animated:(BOOL)animated;
- (void)highlightMatchesForStrings:(id)strings animated:(BOOL)animated;
- (void)highlightSelectableItemsDidChangeForBaseOverlayView:(id)view;
- (void)highlightSubjectAtIndexSet:(id)set showCallout:(BOOL)callout showBurst:(BOOL)burst burstPoint:(CGPoint)point animated:(BOOL)animated;
- (void)loadImageSubjectIfAvailableWithCompletion:(id)completion;
- (void)loadImageSubjectWithIndexes:(id)indexes completion:(id)completion;
- (void)logButtonsVisibleStatus;
- (void)navOrToolbarVisibilityDidChange:(id)change;
- (void)navOrToolbarVisibilityWillChange:(id)change;
- (void)openInfoPaneForTopItem;
- (void)presentVisualIntelligenceSheet;
- (void)quickActionProcessingCompleteForBaseOverlayView:(id)view;
- (void)resetCustomLayoutActionInfoView;
- (void)resetSelection;
- (void)scrollViewDidZoomToUnitRect:(CGRect)rect;
- (void)sendAAButtonPressedDelegateCallbackIfNecessaryForSender:(id)sender;
- (void)sendAnalyticsEventWithType:(int64_t)type source:(int64_t)source analysisButtonActive:(BOOL)active;
- (void)setActionInfoCustomFont:(id)font;
- (void)setActionInfoEdgeInsets:(UIEdgeInsets)insets;
- (void)setActionInfoLayoutUpdatesSuspended:(BOOL)suspended;
- (void)setActionInfoLiveTextButtonDisabled:(BOOL)disabled;
- (void)setActionInfoQuickActionsDisabled:(BOOL)disabled;
- (void)setActionInfoViewHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setActionInfoVisualSearchCornerViewDisabled:(BOOL)disabled;
- (void)setActiveInteractionTypes:(unint64_t)types;
- (void)setActiveSubjectIndexSet:(id)set;
- (void)setAllowLongPressForDataDetectorsInTextMode:(BOOL)mode;
- (void)setAnalysis:(id)analysis;
- (void)setAnalysisButtonPrefersDarkGlyphWhenSelected:(BOOL)selected;
- (void)setButtonsVisible:(BOOL)visible;
- (void)setDataDetectorTypes:(unint64_t)types;
- (void)setDelegate:(id)delegate;
- (void)setForceAnalysisBarButtonItemEnabled:(BOOL)enabled;
- (void)setHighlightSelectableItems:(BOOL)items;
- (void)setPreferredQuickActionButtonHeight:(double)height;
- (void)setQuickActionConfigurationUpdateHandler:(id)handler;
- (void)setSelectedRanges:(id)ranges;
- (void)setSubjectHighlightActive:(BOOL)active;
- (void)setSubjectViewUserInteractionDisabled:(BOOL)disabled;
- (void)setUsesLightDimmingViewInLightMode:(BOOL)mode;
- (void)setView:(id)view;
- (void)setViewForObservingContentMode:(id)mode;
- (void)setWantsAutomaticContentsRectCalculation:(BOOL)calculation;
- (void)setWantsTranslucentActionInfoButtons:(BOOL)buttons;
- (void)set_customAnalyticsIdentifier:(id)identifier;
- (void)set_highlightSelectableItems:(BOOL)items;
- (void)set_inhibitSubjectDimmingAndLiftView:(BOOL)view;
- (void)set_isPublicAPI:(BOOL)i;
- (void)set_isShowingTranslationOverlay:(BOOL)overlay;
- (void)set_isVIHosted:(BOOL)hosted;
- (void)set_manuallyManagesActionInfoButtons:(BOOL)buttons;
- (void)set_photosImageForRemoveBackground:(id)background;
- (void)set_photosInfoSingleTapSubjectModeEnabled:(BOOL)enabled;
- (void)showVisualSearchForResultItem:(id)item;
- (void)submitVisualSearchUserFeedbackForReportIdentifier:(id)identifier userFeedbackPayload:(id)payload sfReportData:(id)data;
- (void)textSelectionDidChangeForBaseOverlayView:(id)view;
- (void)triggerTapToRadar:(id)radar;
- (void)updateActionInfoLayout;
- (void)updateContentsRect;
- (void)updateForAnalyticsVisualSearchEventIfNecessary:(id)necessary;
- (void)videoPreviewAvailableForBaseOverlayView:(id)view;
- (void)visualIntelligenceDidRequestVluEnabled:(BOOL)enabled forBaseOverlayView:(id)view;
- (void)visualIntelligenceSheetIsDraggingDidChange:(BOOL)change forBaseOverlayView:(id)view;
- (void)visualIntelligenceSheetPresentedDidChangeForBaseOverlayView:(id)view;
- (void)visualSearchCornerView:(id)view analyticsEventDidOccur:(id)occur;
- (void)visualSearchCornerView:(id)view didTapVisualSearchIndicatorWithNormalizedBoundingBox:(CGRect)box;
- (void)visualSearchCornerViewDidDismissVisualSearchController:(id)controller;
- (void)willMoveToView:(id)view;
@end

@implementation VKCImageAnalysisInteraction

- (id)resultItems
{
  v28 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  analysis = [(VKCImageAnalysisInteraction *)self analysis];
  imageAnalysisResult = [analysis imageAnalysisResult];
  visualSearchResult = [imageAnalysisResult visualSearchResult];
  resultItems = [visualSearchResult resultItems];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = resultItems;
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
        domainInfo = [v10 domainInfo];
        displayLabel = [domainInfo displayLabel];

        domainInfo2 = [v10 domainInfo];
        displayMessage = [domainInfo2 displayMessage];

        v15 = [VKImageAnalysisInteractionResultInfo alloc];
        domainInfo3 = [v10 domainInfo];
        glyphName = [domainInfo3 glyphName];
        [v10 normalizedBoundingBox];
        v18 = [(VKImageAnalysisInteractionResultInfo *)v15 initWithDisplayLabel:displayLabel displayMessage:displayMessage glyphName:glyphName rect:?];

        [array addObject:v18];
      }

      v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  return array;
}

- (void)dealloc
{
  [(VKCImageAnalysisInteraction *)self setViewForObservingContentMode:0];
  [(VKCImageAnalysisInteraction *)self closeAndSendCurrentAnalyticsSession];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VKCImageAnalysisInteraction;
  [(VKCImageAnalysisInteraction *)&v4 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  analysis = [(VKCImageAnalysisInteraction *)self analysis];
  v6 = [v3 stringWithFormat:@"<%@ %p> id: %d", v4, self, objc_msgSend(analysis, "analysisRequestID")];

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

- (VKCImageAnalysisInteraction)initWithInteractionOptions:(unint64_t)options
{
  v4 = [(VKCImageAnalysisInteraction *)self init];
  v5 = v4;
  if (v4)
  {
    [(VKCImageAnalysisBaseView *)v4->_baseView useInteractionOptions:options];
  }

  return v5;
}

- (void)commonInit
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView setTranslatesAutoresizingMaskIntoConstraints:1];
  [baseView setWantsAutomaticContentsRectCalculation:1];
  [baseView setDataDetectorTypes:-1];
  [baseView setDelegate:self];
  [baseView setLoggingParentObject:self];
  v3 = objc_alloc_init(VKCVisualSearchCornerView);
  [(VKCImageAnalysisInteraction *)self setVisualSearchCornerButtonView:v3];

  _customAnalyticsIdentifier = [(VKCImageAnalysisInteraction *)self _customAnalyticsIdentifier];
  visualSearchCornerButtonView = [(VKCImageAnalysisInteraction *)self visualSearchCornerButtonView];
  [visualSearchCornerButtonView set_customAnalyticsIdentifier:_customAnalyticsIdentifier];

  visualSearchCornerButtonView2 = [(VKCImageAnalysisInteraction *)self visualSearchCornerButtonView];
  [visualSearchCornerButtonView2 setDelegate:self];

  [baseView setDidAddVisualSearchCornerView:1];
  [(VKCImageAnalysisInteraction *)self setAnalysisButtonRequiresVisibleContentGating:1];
  v7 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_triggerTapToRadar_];
  [v7 setNumberOfTapsRequired:2];
  [v7 setNumberOfTouchesRequired:2];
  [v7 setEnabled:vk_isInternalBuild()];
  [(VKCImageAnalysisInteraction *)self setFeedbackGestureRecognizer:v7];
  v8 = objc_alloc_init(VKAnalyticsProcessor);
  analyticsProcessor = self->_analyticsProcessor;
  self->_analyticsProcessor = v8;

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_applicationWillResignActive_ name:*MEMORY[0x1E69DDBC8] object:0];

  [defaultCenter addObserver:self selector:sel_navOrToolbarVisibilityDidChange_ name:*MEMORY[0x1E69DEA10] object:0];
  [defaultCenter addObserver:self selector:sel_navOrToolbarVisibilityWillChange_ name:*MEMORY[0x1E69DEA18] object:0];
  [defaultCenter addObserver:self selector:sel_navOrToolbarVisibilityDidChange_ name:*MEMORY[0x1E69DEA00] object:0];
  [defaultCenter addObserver:self selector:sel_navOrToolbarVisibilityWillChange_ name:*MEMORY[0x1E69DEA08] object:0];
  [(VKCImageAnalysisInteraction *)self setActionInfoViewHidden:1 animated:0];
  [(VKCImageAnalysisInteraction *)self setDeriveQuickActionsVisibilityFromState:1];
  [(VKCImageAnalysisInteraction *)self setWantsTranslucentActionInfoButtons:1];
}

- (void)navOrToolbarVisibilityWillChange:(id)change
{
  changeCopy = change;
  view = [(VKCImageAnalysisInteraction *)self view];
  v6 = objc_opt_class();
  object = [changeCopy object];

  v8 = VKDynamicCast(v6, object);
  view2 = [v8 view];
  v10 = [view vk_isDescendantOfView:view2];

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

- (void)navOrToolbarVisibilityDidChange:(id)change
{
  changeCopy = change;
  view = [(VKCImageAnalysisInteraction *)self view];
  v6 = objc_opt_class();
  object = [changeCopy object];

  v8 = VKDynamicCast(v6, object);
  view2 = [v8 view];
  v10 = [view vk_isDescendantOfView:view2];

  if (v10)
  {
    baseView = [(VKCImageAnalysisInteraction *)self baseView];
    [baseView updateNormalizedVisibleRectIfNecessary];
  }
}

- (void)willMoveToView:(id)view
{
  if (!view)
  {
    view = [(VKCImageAnalysisInteraction *)self view];
    [view removeGestureRecognizer:self->_feedbackGestureRecognizer];

    v7 = +[VKImageAnalyzerMadInterface sharedInterface];
    baseView = [(VKCImageAnalysisInteraction *)self baseView];
    LOBYTE(view) = [baseView activeInteractionTypes];

    if ((view & 4) != 0)
    {
      [v7 didLeaveVisualSearchHints];
    }
  }
}

- (void)didMoveToView:(id)view
{
  v13 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = viewCopy;
    _os_log_impl(&dword_1B4335000, v5, OS_LOG_TYPE_DEFAULT, "Interaction %@ did move to view: %@", &v9, 0x16u);
  }

  [(VKCImageAnalysisInteraction *)self setView:viewCopy];
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  if (viewCopy)
  {
    [viewCopy bounds];
    [baseView setFrame:?];
    [baseView setAutoresizingMask:18];
    baseView2 = [(VKCImageAnalysisInteraction *)self baseView];
    [viewCopy addSubview:baseView2];

    [(VKCImageAnalysisInteraction *)self setViewForObservingContentMode:viewCopy];
    [baseView configureForCurrentActiveInteractionTypes];
    [baseView updateCurrentDisplayedViewContentsRect];
    [viewCopy addGestureRecognizer:self->_feedbackGestureRecognizer];
  }

  else
  {
    visualSearchCornerView = [(VKCImageAnalysisInteraction *)self visualSearchCornerView];
    [visualSearchCornerView removeFromSuperview];

    [(VKCImageAnalysisInteraction *)self setViewForObservingContentMode:0];
    [baseView resetSelection];
    [baseView resignFirstResponder];
    [baseView removeFromSuperview];
  }
}

- (CGRect)contentsRect
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView contentsRect];
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

- (void)setView:(id)view
{
  viewCopy = view;
  objc_storeWeak(&self->_view, viewCopy);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = viewCopy;
  }

  else
  {
    v4 = 0;
  }

  [(VKCImageAnalysisInteraction *)self setViewForObservingContentMode:v4];
}

- (void)setViewForObservingContentMode:(id)mode
{
  modeCopy = mode;
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView setViewForObservingContentMode:modeCopy];
}

- (UIView)viewForObservingContentMode
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  viewForObservingContentMode = [baseView viewForObservingContentMode];

  return viewForObservingContentMode;
}

- (void)setAllowLongPressForDataDetectorsInTextMode:(BOOL)mode
{
  modeCopy = mode;
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView setLongPressDataDetectorsInTextMode:modeCopy];
}

- (BOOL)allowLongPressForDataDetectorsInTextMode
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  longPressDataDetectorsInTextMode = [baseView longPressDataDetectorsInTextMode];

  return longPressDataDetectorsInTextMode;
}

- (void)setAnalysis:(id)analysis
{
  analysisCopy = analysis;
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
  if (self->_analysis != analysisCopy)
  {
    [(VKCImageAnalysisInteraction *)self setIsSettingAnalysis:1];
    [(VKCImageAnalysisInteraction *)self setDidLogAnalysisButtonVisible:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    analysis = self->_analysis;
    if (analysis)
    {
      imageAnalysisResult = [(VKImageAnalysis *)analysis imageAnalysisResult];
      [defaultCenter removeObserver:self name:@"VKAnalysisDidUpdateNotification" object:imageAnalysisResult];
    }

    objc_storeStrong(&self->_analysis, analysis);
    if (*p_analysis)
    {
      imageAnalysisResult2 = [(VKImageAnalysis *)*p_analysis imageAnalysisResult];
      [defaultCenter addObserver:self selector:sel_analysisDidUpdate_ name:@"VKAnalysisDidUpdateNotification" object:imageAnalysisResult2];
    }

    [(VKCImageAnalysisInteraction *)self closeAndSendCurrentAnalyticsSession];
    [(VKCImageAnalysisInteraction *)self clearMatchedHighlightsIfNecessaryAnimated:0];
    imageAnalysisResult3 = [(VKImageAnalysis *)analysisCopy imageAnalysisResult];
    baseView = [(VKCImageAnalysisInteraction *)self baseView];
    [baseView setAnalysisResult:imageAnalysisResult3];

    visualSearchCornerButtonView = [(VKCImageAnalysisInteraction *)self visualSearchCornerButtonView];
    [visualSearchCornerButtonView setAnalysis:analysisCopy];

    actionInfoCornerButtonViewIfExists = [(VKCImageAnalysisInteraction *)self actionInfoCornerButtonViewIfExists];
    [actionInfoCornerButtonViewIfExists setAnalysis:analysisCopy];

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
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  text = [baseView text];

  return text;
}

- (NSString)selectedText
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  selectedText = [baseView selectedText];

  return selectedText;
}

- (NSAttributedString)selectedAttributedText
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  selectedAttributedText = [baseView selectedAttributedText];

  return selectedAttributedText;
}

- (NSArray)selectedRanges
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  selectedRanges = [baseView selectedRanges];

  return selectedRanges;
}

- (void)setSelectedRanges:(id)ranges
{
  rangesCopy = ranges;
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView setSelectedRanges:rangesCopy];
}

- (void)setActiveInteractionTypes:(unint64_t)types
{
  if ([(VKCImageAnalysisInteraction *)self activeInteractionTypes]!= types)
  {
    [(VKCImageAnalysisInteraction *)self setInteractionTypesSetByClient:types];

    [(VKCImageAnalysisInteraction *)self _setActiveInteractionTypes:types updateAutomaticState:1];
  }
}

- (void)_setActiveInteractionTypes:(unint64_t)types updateAutomaticState:(BOOL)state
{
  stateCopy = state;
  typesCopy = types;
  if ((types & 0x10) != 0 && (!+[VKCGMAvailability supportsVI](VKCGMAvailability, "supportsVI") || +[VKCInternalSettings disableVisualIntelligence]))
  {
    typesCopy &= ~0x10uLL;
    v7 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [VKCImageAnalysisInteraction _setActiveInteractionTypes:v7 updateAutomaticState:?];
    }
  }

  if (![(VKCImageAnalysisInteraction *)self isUpdatingActiveTypes])
  {
    [(VKCImageAnalysisInteraction *)self setIsUpdatingActiveTypes:1];
    baseView = [(VKCImageAnalysisInteraction *)self baseView];
    [baseView setActiveInteractionTypes:typesCopy];

    visualSearchCornerButtonView = [(VKCImageAnalysisInteraction *)self visualSearchCornerButtonView];
    [visualSearchCornerButtonView setHidden:(typesCopy & 4) == 0];

    actionInfoCornerButtonViewIfExists = [(VKCImageAnalysisInteraction *)self actionInfoCornerButtonViewIfExists];
    [actionInfoCornerButtonViewIfExists setHidden:(typesCopy & 4) == 0];

    if (typesCopy)
    {
      if (!stateCopy)
      {
LABEL_11:
        [(VKCImageAnalysisInteraction *)self _automaticallyShowVisualSearchResultsIfApplicable];
        actionInfoViewIfExists = [(VKCImageAnalysisInteraction *)self actionInfoViewIfExists];
        [actionInfoViewIfExists updateLayoutIfNecessary];

        [(VKCImageAnalysisInteraction *)self setSubjectHighlightActive:0];
        [(VKCImageAnalysisInteraction *)self setIsUpdatingActiveTypes:0];
        [(VKCImageAnalysisInteraction *)self beginImageSubjectAnalysisWithDelayIfNecessary];
        return;
      }
    }

    else
    {
      [(VKCImageAnalysisInteraction *)self set_highlightSelectableItems:0];
      if (!stateCopy)
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
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  activeInteractionTypes = [baseView activeInteractionTypes];

  if ((activeInteractionTypes & 4) != 0 && [(VKCImageAnalysisInteraction *)self automaticallyShowVisualSearchResults])
  {
    actionInfoCornerButtonViewIfExists = [(VKCImageAnalysisInteraction *)self actionInfoCornerButtonViewIfExists];

    if (actionInfoCornerButtonViewIfExists)
    {
      [(VKCImageAnalysisInteraction *)self actionInfoCornerButtonViewIfExists];
    }

    else
    {
      [(VKCImageAnalysisInteraction *)self visualSearchCornerButtonView];
    }
    v6 = ;
    [v6 automaticallyShowVisualSearchResultsIfApplicable];

    baseView2 = [(VKCImageAnalysisInteraction *)self baseView];
    [baseView2 automaticallyShowVisualSearchResultsIfApplicable];
  }
}

- (unint64_t)activeInteractionTypes
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  activeInteractionTypes = [baseView activeInteractionTypes];

  return activeInteractionTypes;
}

- (unint64_t)dataDetectorTypes
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  dataDetectorTypes = [baseView dataDetectorTypes];

  return dataDetectorTypes;
}

- (void)setDataDetectorTypes:(unint64_t)types
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView setDataDetectorTypes:types];
}

- (void)setWantsAutomaticContentsRectCalculation:(BOOL)calculation
{
  calculationCopy = calculation;
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView setWantsAutomaticContentsRectCalculation:calculationCopy];
}

- (BOOL)wantsAutomaticContentsRectCalculation
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  wantsAutomaticContentsRectCalculation = [baseView wantsAutomaticContentsRectCalculation];

  return wantsAutomaticContentsRectCalculation;
}

- (BOOL)hasActiveTextSelection
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  hasActiveTextSelection = [baseView hasActiveTextSelection];

  return hasActiveTextSelection;
}

- (void)set_highlightSelectableItems:(BOOL)items
{
  itemsCopy = items;
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView setHighlightSelectableItems:itemsCopy];
}

- (BOOL)subjectViewUserInteractionDisabled
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  subjectViewUserInteractionDisabled = [baseView subjectViewUserInteractionDisabled];

  return subjectViewUserInteractionDisabled;
}

- (void)setSubjectViewUserInteractionDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView setSubjectViewUserInteractionDisabled:disabledCopy];
}

- (BOOL)_highlightSelectableItems
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  highlightSelectableItems = [baseView highlightSelectableItems];

  return highlightSelectableItems;
}

- (void)setHighlightSelectableItems:(BOOL)items
{
  itemsCopy = items;
  if ([(VKCImageAnalysisInteraction *)self _highlightSelectableItems]!= items)
  {
    [(VKCImageAnalysisInteraction *)self set_highlightSelectableItems:itemsCopy];

    [(VKCImageAnalysisInteraction *)self configureForCurrentDerivedAutomaticStateWithUpdateActiveTypes:1];
  }
}

- (void)setSubjectHighlightActive:(BOOL)active
{
  activeCopy = active;
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView setSubjectHighlightActive:activeCopy];
}

- (void)highlightSubjectAtIndexSet:(id)set showCallout:(BOOL)callout showBurst:(BOOL)burst burstPoint:(CGPoint)point animated:(BOOL)animated
{
  animatedCopy = animated;
  y = point.y;
  x = point.x;
  burstCopy = burst;
  calloutCopy = callout;
  setCopy = set;
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView highlightSubjectAtIndexSet:setCopy showCallout:calloutCopy showBurst:burstCopy burstPoint:animatedCopy animated:{x, y}];
}

- (void)createStickerImageAtIndexSet:(id)set completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__VKCImageAnalysisInteraction_createStickerImageAtIndexSet_completion___block_invoke;
  v8[3] = &unk_1E7BE5378;
  v9 = completionCopy;
  v7 = completionCopy;
  [(VKCImageAnalysisInteraction *)self loadImageSubjectWithIndexes:set completion:v8];
}

void __71__VKCImageAnalysisInteraction_createStickerImageAtIndexSet_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = +[VKImageDataRequirements stickerRequirements];
  v4 = [v3 vk_imageDataWithRequirements:v5];

  (*(v2 + 16))(v2, v4);
}

- (void)createStickerRepresentationsAtIndexSet:(id)set completion:(id)completion
{
  completionCopy = completion;
  setCopy = set;
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__VKCImageAnalysisInteraction_createStickerRepresentationsAtIndexSet_completion___block_invoke;
  v10[3] = &unk_1E7BE55E8;
  v11 = completionCopy;
  v9 = completionCopy;
  [baseView createStickerRepresentationsAtIndexSet:setCopy type:7 stickerIDs:MEMORY[0x1E695E0F0] progress:0 completion:v10];
}

- (void)createStickerRepresentationsAtIndexSet:(id)set type:(unint64_t)type stickerIDs:(id)ds progress:(id)progress completion:(id)completion
{
  completionCopy = completion;
  progressCopy = progress;
  dsCopy = ds;
  setCopy = set;
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView createStickerRepresentationsAtIndexSet:setCopy type:type stickerIDs:dsCopy progress:progressCopy completion:completionCopy];
}

- (id)videoPreviewSubjectMatteAtCompositionTime:(id *)time
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  v7 = *time;
  v5 = [baseView videoPreviewSubjectMatteAtCompositionTime:&v7];

  return v5;
}

- (id)videoPreviewSubjectMatteForImage:(id)image atCompositionTime:(id *)time
{
  imageCopy = image;
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  v10 = *time;
  v8 = [baseView videoPreviewSubjectMatteForImage:imageCopy atCompositionTime:&v10];

  return v8;
}

- ($58EB755F713D70195D081A2438463C76)videoPreviewTimeRange
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  if (baseView)
  {
    v6 = baseView;
    [baseView videoPreviewTimeRange];
    baseView = v6;
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
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView videoPreviewNormalizedCropRect];
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
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  subjectHighlightActive = [baseView subjectHighlightActive];

  return subjectHighlightActive;
}

- (BOOL)subjectInteractionInProgress
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  subjectInteractionInProgress = [baseView subjectInteractionInProgress];

  return subjectInteractionInProgress;
}

- (void)setActiveSubjectIndexSet:(id)set
{
  setCopy = set;
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView setActiveSubjectIndexSet:setCopy];
}

- (void)set_isPublicAPI:(BOOL)i
{
  iCopy = i;
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView setIsPublicAPI:iCopy];

  analyticsProcessor = [(VKCImageAnalysisInteraction *)self analyticsProcessor];
  [analyticsProcessor setIsPublicAPI:iCopy];
}

- (BOOL)_isPublicAPI
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  isPublicAPI = [baseView isPublicAPI];

  return isPublicAPI;
}

- (void)set_isVIHosted:(BOOL)hosted
{
  hostedCopy = hosted;
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView setIsVIHosted:hostedCopy];
}

- (BOOL)_isVIHosted
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  isVIHosted = [baseView isVIHosted];

  return isVIHosted;
}

- (CGRect)subjectFrame
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView subjectFrame];
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
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  isSubjectHighlightAvailable = [baseView isSubjectHighlightAvailable];

  return isSubjectHighlightAvailable;
}

- (BOOL)isSubjectAnalysisComplete
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  isSubjectAnalysisComplete = [baseView isSubjectAnalysisComplete];

  return isSubjectAnalysisComplete;
}

- (NSIndexSet)allSubjectIndexes
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  allSubjectsIndexSet = [baseView allSubjectsIndexSet];

  return allSubjectsIndexSet;
}

- (NSIndexSet)selectedSubjectIndexes
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  activeSubjectIndexSet = [baseView activeSubjectIndexSet];

  return activeSubjectIndexSet;
}

- (id)generateSubjectImage
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  generateSubjectImage = [baseView generateSubjectImage];

  return generateSubjectImage;
}

- (BOOL)_photosInfoSingleTapSubjectModeEnabled
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  _photosInfoSingleTapSubjectModeEnabled = [baseView _photosInfoSingleTapSubjectModeEnabled];

  return _photosInfoSingleTapSubjectModeEnabled;
}

- (void)set_photosInfoSingleTapSubjectModeEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView set_photosInfoSingleTapSubjectModeEnabled:enabledCopy];
}

- (BOOL)_inhibitSubjectDimmingAndLiftView
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  inhibitSubjectDimmingAndLiftView = [baseView inhibitSubjectDimmingAndLiftView];

  return inhibitSubjectDimmingAndLiftView;
}

- (void)set_inhibitSubjectDimmingAndLiftView:(BOOL)view
{
  viewCopy = view;
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView setInhibitSubjectDimmingAndLiftView:viewCopy];
}

- (void)loadImageSubjectIfAvailableWithCompletion:(id)completion
{
  completionCopy = completion;
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView loadImageSubjectIfAvailableWithCompletion:completionCopy];
}

- (void)set_photosImageForRemoveBackground:(id)background
{
  backgroundCopy = background;
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView setCustomImageForRemoveBackground:backgroundCopy];
}

- (UIImage)_photosImageForRemoveBackground
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  customImageForRemoveBackground = [baseView customImageForRemoveBackground];

  return customImageForRemoveBackground;
}

- (BOOL)usesLightDimmingViewInLightMode
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  usesLightDimmingViewInLightMode = [baseView usesLightDimmingViewInLightMode];

  return usesLightDimmingViewInLightMode;
}

- (void)setUsesLightDimmingViewInLightMode:(BOOL)mode
{
  modeCopy = mode;
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView setUsesLightDimmingViewInLightMode:modeCopy];
}

- (void)set_customAnalyticsIdentifier:(id)identifier
{
  identifierCopy = identifier;
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView setCustomAnalyticsIdentifier:identifierCopy];

  visualSearchCornerButtonView = [(VKCImageAnalysisInteraction *)self visualSearchCornerButtonView];
  [visualSearchCornerButtonView set_customAnalyticsIdentifier:identifierCopy];

  actionInfoCornerButtonViewIfExists = [(VKCImageAnalysisInteraction *)self actionInfoCornerButtonViewIfExists];
  [actionInfoCornerButtonViewIfExists set_customAnalyticsIdentifier:identifierCopy];
}

- (NSString)_customAnalyticsIdentifier
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  customAnalyticsIdentifier = [baseView customAnalyticsIdentifier];

  return customAnalyticsIdentifier;
}

- (void)setButtonsVisible:(BOOL)visible
{
  if (self->_buttonsVisible != visible)
  {
    self->_buttonsVisible = visible;
    delegate = [(VKCImageAnalysisInteraction *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(VKCImageAnalysisInteraction *)self delegate];
      [delegate2 imageAnalysisInteraction:self liveTextButtonDidChangeToVisible:self->_buttonsVisible];
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
    selfCopy = self;
    _os_log_impl(&dword_1B4335000, v3, OS_LOG_TYPE_DEFAULT, "Analysis button is visible: %@, %@ ", &v5, 0x16u);
  }

  [(VKCImageAnalysisInteraction *)self setDidLogAnalysisButtonVisible:1];
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);
  if (![(VKCImageAnalysisInteraction *)self wantsAutomaticContentsRectCalculation])
  {
    baseView = [(VKCImageAnalysisInteraction *)self baseView];
    [baseView updateCurrentDisplayedViewContentsRect];
  }
}

- (BOOL)interactableItemExistsAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  view = [(VKCImageAnalysisInteraction *)self view];
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [view convertPoint:baseView toView:{x, y}];
  v9 = v8;
  v11 = v10;

  baseView2 = [(VKCImageAnalysisInteraction *)self baseView];
  LOBYTE(view) = [baseView2 containsInteractiveItemAtPoint:{v9, v11}];

  return view;
}

- (BOOL)textExistsAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  view = [(VKCImageAnalysisInteraction *)self view];
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [view convertPoint:baseView toView:{x, y}];
  v9 = v8;
  v11 = v10;

  baseView2 = [(VKCImageAnalysisInteraction *)self baseView];
  LOBYTE(view) = [baseView2 containsTextAtPoint:{v9, v11}];

  return view;
}

- (BOOL)dataDetectorExistsAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  view = [(VKCImageAnalysisInteraction *)self view];
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [view convertPoint:baseView toView:{x, y}];
  v9 = v8;
  v11 = v10;

  baseView2 = [(VKCImageAnalysisInteraction *)self baseView];
  v13 = [baseView2 dataDetectorTypeAtPoint:{v9, v11}];

  return v13 != 0;
}

- (BOOL)visualSearchExistsAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  view = [(VKCImageAnalysisInteraction *)self view];
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [view convertPoint:baseView toView:{x, y}];
  v9 = v8;
  v11 = v10;

  baseView2 = [(VKCImageAnalysisInteraction *)self baseView];
  LOBYTE(view) = [baseView2 containsVisualSearchItemAtPoint:{v9, v11}];

  return view;
}

- (BOOL)actionInfoItemExistsAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  view = [(VKCImageAnalysisInteraction *)self view];
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [view convertPoint:baseView toView:{x, y}];
  v9 = v8;
  v11 = v10;

  baseView2 = [(VKCImageAnalysisInteraction *)self baseView];
  LOBYTE(view) = [baseView2 containsActionInfoItemAtPoint:{v9, v11}];

  return view;
}

- (BOOL)analysisContainsTextAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  view = [(VKCImageAnalysisInteraction *)self view];
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [view convertPoint:baseView toView:{x, y}];
  v9 = v8;
  v11 = v10;

  baseView2 = [(VKCImageAnalysisInteraction *)self baseView];
  LOBYTE(view) = [baseView2 analysisContainsTextAtPoint:{v9, v11}];

  return view;
}

- (BOOL)imageSubjectExistsAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  view = [(VKCImageAnalysisInteraction *)self view];
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [view convertPoint:baseView toView:{x, y}];
  v9 = v8;
  v11 = v10;

  baseView2 = [(VKCImageAnalysisInteraction *)self baseView];
  LOBYTE(view) = [baseView2 containsImageSubjectAtPoint:{v9, v11}];

  return view;
}

- (id)subjectIndexAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  view = [(VKCImageAnalysisInteraction *)self view];
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [view convertPoint:baseView toView:{x, y}];
  v9 = v8;
  v11 = v10;

  baseView2 = [(VKCImageAnalysisInteraction *)self baseView];
  v13 = [baseView2 indexOfSubjectAtPoint:{v9, v11}];

  return v13;
}

- (void)resetSelection
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView resetSelection];
}

- (void)updateContentsRect
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView updateCurrentDisplayedViewContentsRect];
}

- (void)beginImageSubjectAnalysisIfNecessary
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView beginImageSubjectAnalysisIfNecessary];
}

- (void)beginImageSubjectAnalysisWithDelayIfNecessary
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView beginImageSubjectAnalysisWithDelayIfNecessary];
}

- (void)beginImageSubjectAnalysisIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView beginImageSubjectAnalysisIfNecessaryWithCompletion:completionCopy];
}

- (void)loadImageSubjectWithIndexes:(id)indexes completion:(id)completion
{
  completionCopy = completion;
  indexesCopy = indexes;
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView loadImageSubjectWithIndexes:indexesCopy completion:completionCopy];
}

- (id)imageSubjectPathWithIndexes:(id)indexes
{
  indexesCopy = indexes;
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  v6 = [baseView imageSubjectPathWithIndexes:indexesCopy];

  return v6;
}

- (CGRect)imageSubjectBoundsWithIndexes:(id)indexes
{
  v3 = [(VKCImageAnalysisInteraction *)self imageSubjectPathWithIndexes:indexes];
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

- (void)setForceAnalysisBarButtonItemEnabled:(BOOL)enabled
{
  if (self->_forceAnalysisBarButtonItemEnabled != enabled)
  {
    self->_forceAnalysisBarButtonItemEnabled = enabled;
    [(VKCImageAnalysisInteraction *)self configureForCurrentDerivedAutomaticStateWithUpdateActiveTypes:0];
  }
}

- (BOOL)_showVSResultForItem:(id)item
{
  itemCopy = item;
  v5 = objc_opt_class();
  v6 = VKCheckedDynamicCast(v5, itemCopy);

  if (v6)
  {
    baseView = [(VKCImageAnalysisInteraction *)self baseView];
    v8 = [baseView presentVisualSearchForItem:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)set_isShowingTranslationOverlay:(BOOL)overlay
{
  overlayCopy = overlay;
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView setIsShowingTranslation:overlayCopy];
}

- (BOOL)_isShowingTranslationOverlay
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  isShowingTranslation = [baseView isShowingTranslation];

  return isShowingTranslation;
}

- (NSArray)visualSearchResultItems
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  visualSearchResultItems = [baseView visualSearchResultItems];

  return visualSearchResultItems;
}

- (void)showVisualSearchForResultItem:(id)item
{
  itemCopy = item;
  if (([itemCopy isVisualIntelligenceItem] & 1) == 0)
  {
    baseView = [(VKCImageAnalysisInteraction *)self baseView];
    item = [itemCopy item];
    [baseView presentVisualSearchForItem:item];
  }
}

- (void)presentVisualIntelligenceSheet
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  viCoordinator = [baseView viCoordinator];
  overlayView = [viCoordinator overlayView];

  if (objc_opt_respondsToSelector())
  {
    [overlayView setIsSheetPresented:1];
  }
}

- (void)dismissVisualIntelligenceSheetIfNecessary
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  viCoordinatorIfExists = [baseView viCoordinatorIfExists];
  overlayView = [viCoordinatorIfExists overlayView];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [overlayView isSheetPresented])
  {
    [overlayView setIsSheetPresented:0];
  }
}

- (BOOL)isVisualIntelligenceSheetVisible
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  viCoordinatorIfExists = [baseView viCoordinatorIfExists];
  overlayView = [viCoordinatorIfExists overlayView];

  if (objc_opt_respondsToSelector())
  {
    isSheetPresented = [overlayView isSheetPresented];
  }

  else
  {
    isSheetPresented = 0;
  }

  return isSheetPresented;
}

- (BOOL)isDraggingVisualIntelligenceSheet
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  viCoordinatorIfExists = [baseView viCoordinatorIfExists];
  overlayView = [viCoordinatorIfExists overlayView];

  if (objc_opt_respondsToSelector())
  {
    isDraggingSheet = [overlayView isDraggingSheet];
  }

  else
  {
    isDraggingSheet = 0;
  }

  return isDraggingSheet;
}

- (double)currentVisualIntelligenceSheetProgress
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  viCoordinatorIfExists = [baseView viCoordinatorIfExists];
  overlayView = [viCoordinatorIfExists overlayView];

  v5 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [overlayView currentSheetProgress];
    v5 = v6;
  }

  return v5;
}

- (void)openInfoPaneForTopItem
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView showTopVisualSearchResult];

  visualSearchResultItems = [(VKCImageAnalysisInteraction *)self visualSearchResultItems];
  firstObject = [visualSearchResultItems firstObject];
  item = [firstObject item];
  [item setCurrentInvocationType:5];

  actionInfoCornerButtonViewIfExists = [(VKCImageAnalysisInteraction *)self actionInfoCornerButtonViewIfExists];

  if (actionInfoCornerButtonViewIfExists)
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

- (void)_addAsyncMRCElement:(id)element
{
  elementCopy = element;
  analysis = [(VKCImageAnalysisInteraction *)self analysis];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__VKCImageAnalysisInteraction__addAsyncMRCElement___block_invoke;
  v7[3] = &unk_1E7BE5610;
  objc_copyWeak(&v9, &location);
  v6 = analysis;
  v8 = v6;
  [VKCImageAnalyzer processMRCInfo:elementCopy completionHandler:v7];

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
  actionInfoView = [(VKCImageAnalysisInteraction *)self actionInfoView];
  allQuickActions = [actionInfoView allQuickActions];

  v4 = [VKCDataDetectorInfo quickActionInfosFromQuickActions:allQuickActions];

  return v4;
}

- (void)_copyAllToClipboard
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView copyAllToClipboard];
}

- (void)setActionInfoViewHidden:(BOOL)hidden animated:(BOOL)animated
{
  if (self->_actionInfoViewHidden != hidden)
  {
    v13 = v4;
    v14 = v5;
    animatedCopy = animated;
    self->_actionInfoViewHidden = hidden;
    if (hidden)
    {
      actionInfoViewIfExists = [(VKCImageAnalysisInteraction *)self actionInfoViewIfExists];
    }

    else
    {
      actionInfoViewIfExists = [(VKCImageAnalysisInteraction *)self actionInfoView];
      baseView = [(VKCImageAnalysisInteraction *)self baseView];
      [baseView updateNormalizedVisibleRectIfNecessary];

      if (vk_imageAnalysisSupportedAndSettingsSwitchEnabled())
      {
        v10 = 0;
LABEL_10:
        [actionInfoViewIfExists vk_setHidden:v10 animated:animatedCopy];

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
  actionInfoViewIfExists = [(VKCImageAnalysisInteraction *)self actionInfoViewIfExists];
  v3 = actionInfoViewIfExists;
  if (actionInfoViewIfExists)
  {
    liveTextButtonDisabled = [actionInfoViewIfExists liveTextButtonDisabled];
  }

  else
  {
    liveTextButtonDisabled = 0;
  }

  return liveTextButtonDisabled;
}

- (void)setActionInfoLiveTextButtonDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  actionInfoView = [(VKCImageAnalysisInteraction *)self actionInfoView];
  [actionInfoView setLiveTextButtonDisabled:disabledCopy];
}

- (BOOL)actionInfoVisualSearchCornerViewDisabled
{
  actionInfoViewIfExists = [(VKCImageAnalysisInteraction *)self actionInfoViewIfExists];
  v3 = actionInfoViewIfExists;
  if (actionInfoViewIfExists)
  {
    visualSearchCornerViewDisabled = [actionInfoViewIfExists visualSearchCornerViewDisabled];
  }

  else
  {
    visualSearchCornerViewDisabled = 0;
  }

  return visualSearchCornerViewDisabled;
}

- (void)setActionInfoVisualSearchCornerViewDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  actionInfoView = [(VKCImageAnalysisInteraction *)self actionInfoView];
  [actionInfoView setVisualSearchCornerViewDisabled:disabledCopy];
}

- (BOOL)actionInfoQuickActionsDisabled
{
  actionInfoViewIfExists = [(VKCImageAnalysisInteraction *)self actionInfoViewIfExists];
  v3 = actionInfoViewIfExists;
  if (actionInfoViewIfExists)
  {
    quickActionsDisabled = [actionInfoViewIfExists quickActionsDisabled];
  }

  else
  {
    quickActionsDisabled = 0;
  }

  return quickActionsDisabled;
}

- (void)setActionInfoQuickActionsDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  actionInfoView = [(VKCImageAnalysisInteraction *)self actionInfoView];
  [actionInfoView setQuickActionsDisabled:disabledCopy];
}

- (void)setActionInfoLayoutUpdatesSuspended:(BOOL)suspended
{
  suspendedCopy = suspended;
  actionInfoView = [(VKCImageAnalysisInteraction *)self actionInfoView];
  [actionInfoView setLayoutUpdatesSuspended:suspendedCopy];
}

- (UIEdgeInsets)actionInfoEdgeInsets
{
  actionInfoView = [(VKCImageAnalysisInteraction *)self actionInfoView];
  [actionInfoView edgeInsets];
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

- (void)setActionInfoEdgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  actionInfoView = [(VKCImageAnalysisInteraction *)self actionInfoView];
  [actionInfoView setEdgeInsets:{top, left, bottom, right}];
}

- (void)setPreferredQuickActionButtonHeight:(double)height
{
  if (self->_preferredQuickActionButtonHeight != height)
  {
    self->_preferredQuickActionButtonHeight = height;
    actionInfoViewIfExists = [(VKCImageAnalysisInteraction *)self actionInfoViewIfExists];
    [actionInfoViewIfExists setPreferredQuickActionButtonHeight:height];
  }
}

- (void)setActionInfoCustomFont:(id)font
{
  fontCopy = font;
  if (self->_actionInfoCustomFont != fontCopy)
  {
    objc_storeStrong(&self->_actionInfoCustomFont, font);
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
      liveTextButton = [v7 liveTextButton];
      [liveTextButton setCustomSymbolFont:actionInfoCustomFont];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    else
    {
      [(VKCImageAnalysisInteraction *)self setQuickActionConfigurationUpdateHandler:0];
      actionInfoView = [(VKCImageAnalysisInteraction *)self actionInfoView];
      liveTextButton2 = [actionInfoView liveTextButton];
      [liveTextButton2 setCustomSymbolFont:0];
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

- (void)setQuickActionConfigurationUpdateHandler:(id)handler
{
  handlerCopy = handler;
  quickActionConfigurationUpdateHandler = self->_quickActionConfigurationUpdateHandler;
  v10 = handlerCopy;
  v6 = _Block_copy(handlerCopy);
  LOBYTE(quickActionConfigurationUpdateHandler) = [quickActionConfigurationUpdateHandler isEqual:v6];

  if ((quickActionConfigurationUpdateHandler & 1) == 0)
  {
    v7 = [v10 copy];
    v8 = self->_quickActionConfigurationUpdateHandler;
    self->_quickActionConfigurationUpdateHandler = v7;

    actionInfoViewIfExists = [(VKCImageAnalysisInteraction *)self actionInfoViewIfExists];
    [actionInfoViewIfExists setQuickActionConfigurationUpdateHandler:v10];
  }
}

- (BOOL)actionInfoLayoutUpdatesSuspended
{
  actionInfoView = [(VKCImageAnalysisInteraction *)self actionInfoView];
  layoutUpdatesSuspended = [actionInfoView layoutUpdatesSuspended];

  return layoutUpdatesSuspended;
}

- (void)updateActionInfoLayout
{
  actionInfoViewIfExists = [(VKCImageAnalysisInteraction *)self actionInfoViewIfExists];
  [actionInfoViewIfExists updateLayoutIfNecessary];
}

- (NSArray)textGesturesForFailureRequirements
{
  v3 = objc_opt_class();
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  textSelectionView = [baseView textSelectionView];
  v6 = VKDynamicCast(v3, textSelectionView);
  gesturesForFailureRequirements = [v6 gesturesForFailureRequirements];

  return gesturesForFailureRequirements;
}

- (id)customLayoutActionInfoView
{
  actionInfoContainer = [(VKCImageAnalysisInteraction *)self actionInfoContainer];

  if (!actionInfoContainer)
  {
    v4 = objc_alloc_init(VKCActionInfoContainer);
    [(VKCImageAnalysisInteraction *)self setActionInfoContainer:v4];
    actionInfoView = [(VKCImageAnalysisInteraction *)self actionInfoView];
    [actionInfoView setAutomaticVisualRectLayoutDisabled:1];
    superview = [actionInfoView superview];
    baseView = [(VKCImageAnalysisInteraction *)self baseView];

    if (superview == baseView)
    {
      [actionInfoView removeFromSuperview];
    }

    [(VKCImageAnalysisInteraction *)self setActionInfoViewHidden:0 animated:0];
    [(VKCActionInfoContainer *)v4 setActionInfoView:actionInfoView];
    [(VKCActionInfoContainer *)v4 setCurrentType:1];
  }

  return [(VKCImageAnalysisInteraction *)self actionInfoContainer];
}

- (void)resetCustomLayoutActionInfoView
{
  [(VKCActionInfoContainer *)self->_actionInfoContainer setCurrentType:1];
  actionInfoView = [(VKCImageAnalysisInteraction *)self actionInfoView];
  [actionInfoView setAutomaticVisualRectLayoutDisabled:0];

  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  actionInfoView2 = [(VKCImageAnalysisInteraction *)self actionInfoView];
  [baseView addSubview:actionInfoView2];
}

- (void)setWantsTranslucentActionInfoButtons:(BOOL)buttons
{
  if (self->_wantsTranslucentActionInfoButtons != buttons)
  {
    buttonsCopy = buttons;
    self->_wantsTranslucentActionInfoButtons = buttons;
    actionInfoViewIfExists = [(VKCImageAnalysisInteraction *)self actionInfoViewIfExists];
    [actionInfoViewIfExists setWantsTranslucentActionInfoButtons:buttonsCopy];
  }
}

- (NSArray)_actionInfoButtons
{
  if (!self->_actionButtons)
  {
    baseView = [(VKCImageAnalysisInteraction *)self baseView];
    quickActions = [baseView quickActions];
    actionButtons = self->_actionButtons;
    self->_actionButtons = quickActions;
  }

  actionButtons = [(VKCImageAnalysisInteraction *)self actionButtons];
  v7 = [actionButtons copy];

  return v7;
}

- (id)omnibarContainerView
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  viCoordinator = [baseView viCoordinator];

  if (objc_opt_respondsToSelector())
  {
    omnibarContainerView = [viCoordinator omnibarContainerView];
  }

  else
  {
    omnibarContainerView = 0;
  }

  return omnibarContainerView;
}

- (void)analysisDidUpdate:(id)update
{
  userInfo = [update userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"updatedTypes"];
  integerValue = [v5 integerValue];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__VKCImageAnalysisInteraction_analysisDidUpdate___block_invoke;
  v7[3] = &__block_descriptor_40_e37_v16__0__VKCImageAnalysisInteraction_8l;
  v7[4] = integerValue;
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

- (id)previewForDataDetectorElementView:(id)view
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  v5 = [(VKCImageAnalysisInteraction *)self viewForImageSnapshotForBaseView:baseView];

  return v5;
}

- (BOOL)topLevelImplementsContentsRectDelegateForBaseView:(id)view
{
  delegate = [(VKCImageAnalysisInteraction *)self delegate];
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

- (id)viewForImageSnapshotForBaseView:(id)view
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    view = [v6 contentViewForImageAnalysisInteraction:self];
  }

  else
  {
    view = [(VKCImageAnalysisInteraction *)self view];
  }

  return view;
}

- (id)imageForImageSnapshotForBaseView:(id)view
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

- (CGRect)contentsRectForImageRecognitionBaseView:(id)view
{
  delegate = [(VKCImageAnalysisInteraction *)self delegate];
  [delegate contentsRectForImageAnalysisInteraction:self];
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

- (BOOL)baseOverlayView:(id)view shouldBeginInteractionAtPoint:(CGPoint)point withTypes:(unint64_t)types
{
  y = point.y;
  x = point.x;
  v9 = [(VKCImageAnalysisInteraction *)self activeInteractionTypes]& types;
  if ((types & 2) != 0 && ([(VKCImageAnalysisInteraction *)self activeInteractionTypes]& 1) != 0)
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
  delegate = [(VKCImageAnalysisInteraction *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if ((v11 & 1) == 0)
  {
    return 1;
  }

  delegate2 = [(VKCImageAnalysisInteraction *)self delegate];
  v13 = [delegate2 imageAnalysisInteraction:self shouldBeginAtPoint:types forAnalysisType:{x, y}];

  return v13;
}

- (void)textSelectionDidChangeForBaseOverlayView:(id)view
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 textSelectionDidChangeForImageAnalysisInteraction:self];
  }
}

- (void)baseOverlayViewSubjectInteractionInProgressDidChange:(id)change
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 imageAnalysisInteractionSubjectInteractionInProgressDidChange:self];
  }
}

- (void)baseOverlayView:(id)view analyticsEventDidOccur:(id)occur
{
  occurCopy = occur;
  [(VKCImageAnalysisInteraction *)self updateForAnalyticsVisualSearchEventIfNecessary:occurCopy];
  _analyticsDelegate = [(VKCImageAnalysisInteraction *)self _analyticsDelegate];
  [_analyticsDelegate _visionKitAnalyticsEventDidOccur:occurCopy interaction:self];

  [(VKCImageAnalysisInteraction *)self addEventToAnalyticsSession:occurCopy];
}

- (void)visualSearchCornerView:(id)view analyticsEventDidOccur:(id)occur
{
  occurCopy = occur;
  [(VKCImageAnalysisInteraction *)self updateForAnalyticsVisualSearchEventIfNecessary:occurCopy];
  _analyticsDelegate = [(VKCImageAnalysisInteraction *)self _analyticsDelegate];
  [_analyticsDelegate _visionKitAnalyticsEventDidOccur:occurCopy interaction:self];

  [(VKCImageAnalysisInteraction *)self addEventToAnalyticsSession:occurCopy];
}

- (void)updateForAnalyticsVisualSearchEventIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();
  v10 = VKDynamicCast(v5, necessaryCopy);

  v6 = v10;
  if (v10)
  {
    eventType = [v10 eventType];
    if (eventType == 2)
    {
      selfCopy2 = self;
      v9 = 1;
    }

    else
    {
      if (eventType == 1)
      {
        [v10 setDidInteractWithResultItem:{-[VKCImageAnalysisInteraction didInteractWithVisualSearchItem](self, "didInteractWithVisualSearchItem")}];
LABEL_9:
        v6 = v10;
        goto LABEL_10;
      }

      v6 = v10;
      if (eventType)
      {
        goto LABEL_10;
      }

      selfCopy2 = self;
      v9 = 0;
    }

    [(VKCImageAnalysisInteraction *)selfCopy2 setDidInteractWithVisualSearchItem:v9];
    goto LABEL_9;
  }

LABEL_10:
}

- (id)baseOverlayView:(id)view updateStringForCopy:(id)copy
{
  copyCopy = copy;
  delegate = [(VKCImageAnalysisInteraction *)self delegate];
  v7 = objc_opt_respondsToSelector();

  v8 = copyCopy;
  if (v7)
  {
    delegate2 = [(VKCImageAnalysisInteraction *)self delegate];
    v8 = [delegate2 imageAnalysisInteraction:self updateStringForCopy:copyCopy];
  }

  return v8;
}

- (id)baseOverlayView:(id)view updateAttributedStringForCopy:(id)copy
{
  copyCopy = copy;
  delegate = [(VKCImageAnalysisInteraction *)self delegate];
  v7 = objc_opt_respondsToSelector();

  v8 = copyCopy;
  if (v7)
  {
    delegate2 = [(VKCImageAnalysisInteraction *)self delegate];
    v8 = [delegate2 imageAnalysisInteraction:self updateAttributedStringForCopy:copyCopy];
  }

  return v8;
}

- (BOOL)baseOverlayView:(id)view shouldHandleShareWithRanges:(id)ranges boundingRect:(CGRect)rect selectedText:(id)text selectedAttributedText:(id)attributedText
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  rangesCopy = ranges;
  textCopy = text;
  attributedTextCopy = attributedText;
  delegate = [(VKCImageAnalysisInteraction *)self delegate];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    delegate2 = [(VKCImageAnalysisInteraction *)self delegate];
    v20 = [delegate2 imageAnalysisInteraction:self shouldHandleShareWithRanges:rangesCopy boundingRect:textCopy selectedText:attributedTextCopy selectedAttributedText:{x, y, width, height}];
  }

  else
  {
    v20 = 1;
  }

  return v20;
}

- (void)baseOverlayView:(id)view didTapVisualSearchIndicatorWithNormalizedBoundingBox:(CGRect)box
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  delegate = [(VKCImageAnalysisInteraction *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(VKCImageAnalysisInteraction *)self delegate];
    [delegate2 imageAnalysisInteraction:self didTapVisualSearchIndicatorWithNormalizedBoundingBox:{x, y, width, height}];
  }
}

- (void)baseOverlayView:(id)view didUpdateToNormalizedVisibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  visualSearchCornerButtonView = [(VKCImageAnalysisInteraction *)self visualSearchCornerButtonView];
  [visualSearchCornerButtonView setNormalizedVisibleRect:{x, y, width, height}];

  actionInfoCornerButtonViewIfExists = [(VKCImageAnalysisInteraction *)self actionInfoCornerButtonViewIfExists];
  [actionInfoCornerButtonViewIfExists setNormalizedVisibleRect:{x, y, width, height}];

  if (![(VKCImageAnalysisInteraction *)self isUpdatingActiveTypes])
  {

    [(VKCImageAnalysisInteraction *)self configureForCurrentDerivedAutomaticStateWithUpdateActiveTypes:0];
  }
}

- (void)baseOverlayView:(id)view didFinishTransitionToNormalizedVisibleRect:(CGRect)rect
{
  if (![(VKCImageAnalysisInteraction *)self didToggleAAButton:view])
  {

    [(VKCImageAnalysisInteraction *)self configureForCurrentDerivedAutomaticStateWithUpdateActiveTypes:0];
  }
}

- (void)baseOverlayView:(id)view prepareForCalloutAction:(SEL)action completion:(id)completion
{
  completionCopy = completion;
  delegate = [(VKCImageAnalysisInteraction *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(VKCImageAnalysisInteraction *)self delegate];
    [delegate2 imageAnalysisInteraction:self prepareForCalloutAction:action competion:completionCopy];
  }

  else
  {
    completionCopy[2]();
  }
}

- (BOOL)isBaseOverlayViewShowingLivePhoto:(id)photo delegateHasImplementation:(BOOL *)implementation
{
  delegate = [(VKCImageAnalysisInteraction *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  *implementation = 1;
  delegate2 = [(VKCImageAnalysisInteraction *)self delegate];
  v9 = [delegate2 isShowingLivePhotoForImageAnalysisInteraction:self];

  return v9;
}

- (void)baseOverlayView:(id)view livePhotoShouldPlay:(BOOL)play
{
  playCopy = play;
  delegate = [(VKCImageAnalysisInteraction *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(VKCImageAnalysisInteraction *)self delegate];
    [delegate2 imageAnalysisInteraction:self livePhotoShouldPlay:playCopy];
  }
}

- (BOOL)baseOverlayView:(id)view shouldShowLookupForItemFromCallout:(id)callout
{
  calloutCopy = callout;
  delegate = [(VKCImageAnalysisInteraction *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(VKCImageAnalysisInteraction *)self delegate];
    v9 = [delegate2 imageAnalysisInteraction:self shouldShowLookupForItemFromCallout:calloutCopy];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)baseOverlayViewDidCompleteSubjectAnalysis:(id)analysis
{
  delegate = [(VKCImageAnalysisInteraction *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(VKCImageAnalysisInteraction *)self delegate];
    [delegate2 imageAnalysisInteractionDidCompleteSubjectAnalysis:self];
  }
}

- (void)baseOverlayViewDidBeginSubjectAnalysis:(id)analysis
{
  delegate = [(VKCImageAnalysisInteraction *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(VKCImageAnalysisInteraction *)self delegate];
    [delegate2 imageAnalysisInteractionDidBeginSubjectAnalysis:self];
  }
}

- (void)hasActiveTextSelectionDidChangeForBaseOverlayView:(id)view
{
  delegate = [(VKCImageAnalysisInteraction *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(VKCImageAnalysisInteraction *)self delegate];
    [delegate2 hasActiveTextSelectionDidChangeForImageAnalysisInteraction:self];
  }
}

- (void)baseOverlayViewDidRequestButtonStateUpdate:(id)update
{
  updateCopy = update;
  [(VKCImageAnalysisInteraction *)self configureForCurrentDerivedAutomaticStateWithUpdateActiveTypes:1];
  delegate = [(VKCImageAnalysisInteraction *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(VKCImageAnalysisInteraction *)self delegate];
    [delegate2 imageAnalysisInteraction:self didRequestLiveTextButtonSelectedState:{objc_msgSend(updateCopy, "highlightSelectableItems")}];
  }
}

- (void)highlightSelectableItemsDidChangeForBaseOverlayView:(id)view
{
  delegate = [(VKCImageAnalysisInteraction *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(VKCImageAnalysisInteraction *)self delegate];
    [delegate2 imageAnalysisInteraction:self highlightSelectedItemsValueDidChange:{-[VKCImageAnalysisInteraction highlightSelectableItems](self, "highlightSelectableItems")}];
  }
}

- (void)visualSearchCornerView:(id)view didTapVisualSearchIndicatorWithNormalizedBoundingBox:(CGRect)box
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  delegate = [(VKCImageAnalysisInteraction *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(VKCImageAnalysisInteraction *)self delegate];
    [delegate2 imageAnalysisInteraction:self didTapVisualSearchIndicatorWithNormalizedBoundingBox:{x, y, width, height}];
  }
}

- (void)baseOverlayViewDismissVisualSearchController:(id)controller
{
  delegate = [(VKCImageAnalysisInteraction *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(VKCImageAnalysisInteraction *)self delegate];
    [delegate2 imageAnalysisInteractionDidDismissVisualSearchController:self];
  }
}

- (void)visualSearchCornerViewDidDismissVisualSearchController:(id)controller
{
  delegate = [(VKCImageAnalysisInteraction *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(VKCImageAnalysisInteraction *)self delegate];
    [delegate2 imageAnalysisInteractionDidDismissVisualSearchController:self];
  }
}

- (void)generateVisualSearchResultForItems:(id)items queryID:(unint64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  itemsCopy = items;
  v10 = +[VKImageAnalyzerMadInterface sharedInterface];
  imageAnalysisResult = [(VKImageAnalysis *)self->_analysis imageAnalysisResult];
  request = [imageAnalysisResult request];
  analysis = self->_analysis;
  imageAnalysisResult2 = [(VKImageAnalysis *)analysis imageAnalysisResult];
  visualSearchResult = [imageAnalysisResult2 visualSearchResult];
  payload = [visualSearchResult payload];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __92__VKCImageAnalysisInteraction_generateVisualSearchResultForItems_queryID_completionHandler___block_invoke;
  v18[3] = &unk_1E7BE56A8;
  v19 = handlerCopy;
  v17 = handlerCopy;
  [v10 generateVisualSearchResultForRequest:request analysis:analysis items:itemsCopy payload:payload queryID:d completionHandler:v18];
}

void __92__VKCImageAnalysisInteraction_generateVisualSearchResultForItems_queryID_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(VKCVisualSearchResult);
  [(VKCVisualSearchResult *)v8 setSearchResult:v7];

  (*(*(a1 + 32) + 16))();
}

- (void)generateTextualVisualSearchResultForQueryInfo:(id)info completionHandler:(id)handler
{
  handlerCopy = handler;
  infoCopy = info;
  v8 = +[VKImageAnalyzerMadInterface sharedInterface];
  analysis = [(VKCImageAnalysisInteraction *)self analysis];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __95__VKCImageAnalysisInteraction_generateTextualVisualSearchResultForQueryInfo_completionHandler___block_invoke;
  v11[3] = &unk_1E7BE4A90;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [v8 generateTextualVisualSearchResultForAnalysis:analysis queryInfo:infoCopy completionHandler:v11];
}

- (void)submitVisualSearchUserFeedbackForReportIdentifier:(id)identifier userFeedbackPayload:(id)payload sfReportData:(id)data
{
  dataCopy = data;
  payloadCopy = payload;
  identifierCopy = identifier;
  v13 = +[VKImageAnalyzerMadInterface sharedInterface];
  imageAnalysisResult = [(VKImageAnalysis *)self->_analysis imageAnalysisResult];
  request = [imageAnalysisResult request];
  [v13 submitVisualIntelligenceUserFeedbackForRequest:request reportIdentifier:identifierCopy userFeedbackPayload:payloadCopy sfReportData:dataCopy];
}

- (void)addMetadataToVSFeedbackItem:(id)item
{
  itemCopy = item;
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView addMetadataToVSFeedbackItem:itemCopy];
}

- (id)presentingViewControllerForImageAnalysisInteraction
{
  delegate = [(VKCImageAnalysisInteraction *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(VKCImageAnalysisInteraction *)self delegate];
    v6 = [delegate2 presentingViewControllerForImageAnalysisInteraction:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)videoPreviewAvailableForBaseOverlayView:(id)view
{
  delegate = [(VKCImageAnalysisInteraction *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(VKCImageAnalysisInteraction *)self delegate];
    [delegate2 videoPreviewAvailableForImageAnalysisInteraction:self];
  }
}

- (void)quickActionProcessingCompleteForBaseOverlayView:(id)view
{
  delegate = [(VKCImageAnalysisInteraction *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(VKCImageAnalysisInteraction *)self delegate];
    [delegate2 quickActionProcessingCompleteForImageAnalysisInteraction:self];
  }
}

- (void)visualIntelligenceSheetPresentedDidChangeForBaseOverlayView:(id)view
{
  delegate = [(VKCImageAnalysisInteraction *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(VKCImageAnalysisInteraction *)self delegate];
    [delegate2 isVisualIntelligenceSheetPresentedDidChangeForImageAnalysisInteraction:self];
  }
}

- (void)visualIntelligenceDidRequestVluEnabled:(BOOL)enabled forBaseOverlayView:(id)view
{
  enabledCopy = enabled;
  v6 = [(VKCImageAnalysisInteraction *)self delegate:enabled];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate = [(VKCImageAnalysisInteraction *)self delegate];
    [delegate imageAnalysisInteraction:self visualIntelligenceVluEnabledDidChange:enabledCopy];
  }
}

- (void)visualIntelligenceSheetIsDraggingDidChange:(BOOL)change forBaseOverlayView:(id)view
{
  changeCopy = change;
  v6 = [(VKCImageAnalysisInteraction *)self delegate:change];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate = [(VKCImageAnalysisInteraction *)self delegate];
    [delegate imageAnalysisInteraction:self isDraggingVisualIntelligenceSheetDidChange:changeCopy];
  }
}

- (id)_filteredNormalizedRectangleQuads
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  filteredNormalizedRectangleQuads = [baseView filteredNormalizedRectangleQuads];

  return filteredNormalizedRectangleQuads;
}

- (id)_filteredRectangleQuads
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  filteredRectangleQuads = [baseView filteredRectangleQuads];

  return filteredRectangleQuads;
}

- (id)_rawRectangleObservations
{
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  rawRectangleObservations = [baseView rawRectangleObservations];

  return rawRectangleObservations;
}

- (void)_highlightRectangleObservations
{
  [(VKCImageAnalysisInteraction *)self contentsRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  view = [(VKCImageAnalysisInteraction *)self view];
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  rawRectangleObservations = [baseView rawRectangleObservations];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__VKCImageAnalysisInteraction__highlightRectangleObservations__block_invoke;
  v15[3] = &unk_1E7BE56D0;
  v18 = v4;
  v19 = v6;
  v20 = v8;
  v21 = v10;
  v16 = view;
  selfCopy = self;
  v14 = view;
  [rawRectangleObservations enumerateObjectsUsingBlock:v15];
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
  view = [(VKCImageAnalysisInteraction *)self view];
  _filteredRectangleQuads = [(VKCImageAnalysisInteraction *)self _filteredRectangleQuads];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__VKCImageAnalysisInteraction__highlightFilteredRectangleQuads__block_invoke;
  v6[3] = &unk_1E7BE4640;
  v7 = view;
  v5 = view;
  [_filteredRectangleQuads enumerateObjectsUsingBlock:v6];
}

- (void)highlightMatchesForString:(id)string animated:(BOOL)animated
{
  animatedCopy = animated;
  v9[1] = *MEMORY[0x1E69E9840];
  stringCopy = &stru_1F2C04538;
  if (string)
  {
    stringCopy = string;
  }

  v7 = stringCopy;
  v9[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  [(VKCImageAnalysisInteraction *)self highlightMatchesForStrings:v8 animated:animatedCopy];
}

- (void)highlightMatchesForStrings:(id)strings animated:(BOOL)animated
{
  animatedCopy = animated;
  stringsCopy = strings;
  if ([stringsCopy count])
  {
    baseView2 = [stringsCopy componentsJoinedByString:@" "];
    baseView = [(VKCImageAnalysisInteraction *)self baseView];
    [baseView highlightMatchesWithString:baseView2 animated:1];

    [(VKCImageAnalysisInteraction *)self sendAnalyticsEventWithType:3 source:0 analysisButtonActive:0];
  }

  else
  {
    baseView2 = [(VKCImageAnalysisInteraction *)self baseView];
    [baseView2 clearStringHighlightsAnimated:animatedCopy];
  }
}

- (void)clearMatchedHighlightsIfNecessaryAnimated:(BOOL)animated
{
  animatedCopy = animated;
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView clearStringHighlightsAnimated:animatedCopy];
}

- (void)triggerTapToRadar:(id)radar
{
  if ([radar state] == 3)
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
  analysis = [(VKCImageAnalysisInteraction *)self analysis];
  feedbackProvider = [analysis feedbackProvider];

  if (feedbackProvider)
  {
    delegate = [(VKCImageAnalysisInteraction *)self delegate];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (objc_opt_respondsToSelector())
    {
      v7 = [delegate feedbackTypeForImageAnalysisInteraction:self];
    }

    else
    {
      v7 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v8 = [delegate feedbackOptionsForImageAnalysisInteraction:self];
    }

    else
    {
      v8 = -1;
    }

    if (objc_opt_respondsToSelector())
    {
      v9 = [delegate feedbackMetadataForImageAnalysisInteraction:self];
    }

    else
    {
      v9 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v10 = [delegate promisedFeedbackAttachementsForImageAnalysisInteraction:self];
      [v6 addObjectsFromArray:v10];
    }

    analysis2 = [(VKCImageAnalysisInteraction *)self analysis];
    [feedbackProvider setImageAnalysis:analysis2];

    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __47__VKCImageAnalysisInteraction__provideFeedback__block_invoke;
    v13[3] = &unk_1E7BE56F8;
    v12 = delegate;
    v14 = v12;
    objc_copyWeak(&v15, &location);
    [feedbackProvider provideFeedbackWithType:v7 options:v8 metadata:v9 promisedAttachments:v6 userResponseHandler:v13];
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
  delegate = [(VKCImageAnalysisInteraction *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(VKCImageAnalysisInteraction *)self delegate];
    v6 = [delegate2 presentingViewControllerForImageAnalysisInteraction:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)scrollViewDidZoomToUnitRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView scrollViewDidZoomToUnitRect:{x, y, width, height}];

  visualSearchCornerButtonView = [(VKCImageAnalysisInteraction *)self visualSearchCornerButtonView];
  [visualSearchCornerButtonView setNormalizedVisibleRect:{x, y, width, height}];

  actionInfoCornerButtonViewIfExists = [(VKCImageAnalysisInteraction *)self actionInfoCornerButtonViewIfExists];
  [actionInfoCornerButtonViewIfExists setNormalizedVisibleRect:{x, y, width, height}];
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
    createAnalysisButton = [(VKCImageAnalysisInteraction *)self createAnalysisButton];
    v5 = self->_analysisButton;
    self->_analysisButton = createAnalysisButton;

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
    createAnalysisButton = [(VKCImageAnalysisInteraction *)self createAnalysisButton];
    v5 = self->_actionInfoAnalysisButton;
    self->_actionInfoAnalysisButton = createAnalysisButton;

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
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [v3 setTintColor:systemBlueColor];

  [v3 setAlpha:0.0];

  return v3;
}

- (void)setAnalysisButtonPrefersDarkGlyphWhenSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5 = objc_opt_class();
  analysisButton = [(VKCImageAnalysisInteraction *)self analysisButton];
  v7 = VKCheckedDynamicCast(v5, analysisButton);
  [v7 setPrefersDarkGlyphWhenSelected:selectedCopy];

  actionInfoAnalysisButtonIfExists = [(VKCImageAnalysisInteraction *)self actionInfoAnalysisButtonIfExists];
  [actionInfoAnalysisButtonIfExists setPrefersDarkGlyphWhenSelected:selectedCopy];
}

- (BOOL)analysisButtonPrefersDarkGlyphWhenSelected
{
  v3 = objc_opt_class();
  analysisButton = [(VKCImageAnalysisInteraction *)self analysisButton];
  v5 = VKCheckedDynamicCast(v3, analysisButton);
  prefersDarkGlyphWhenSelected = [v5 prefersDarkGlyphWhenSelected];

  return prefersDarkGlyphWhenSelected;
}

- (void)aAAnalysisButtonPressed:(id)pressed
{
  v13 = *MEMORY[0x1E69E9840];
  pressedCopy = pressed;
  v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1B4335000, v5, OS_LOG_TYPE_DEFAULT, "Live Text Button Pressed: %@", &v11, 0xCu);
  }

  deriveCurrentAutomaticState = [(VKCImageAnalysisInteraction *)self deriveCurrentAutomaticState];
  if ([(VKCImageAnalysisInteraction *)self _isPublicAPI]&& ![(VKCImageAnalysisInteraction *)self _isInPublicAutomaticMode])
  {
    if ([(VKCImageAnalysisInteraction *)self _isPublicAPI])
    {
      v7 = deriveCurrentAutomaticState - 1;
      if (deriveCurrentAutomaticState - 1 < 4)
      {
        v8 = &unk_1B4428488;
        goto LABEL_11;
      }
    }
  }

  else
  {
    v7 = deriveCurrentAutomaticState - 1;
    if (deriveCurrentAutomaticState - 1 < 6 && ((0x27u >> v7) & 1) != 0)
    {
      v8 = &unk_1B4428458;
LABEL_11:
      deriveCurrentAutomaticState = v8[v7];
    }
  }

  [(VKCImageAnalysisInteraction *)self setDidToggleAAButton:1];
  [(VKCImageAnalysisInteraction *)self configureButtonsForState:deriveCurrentAutomaticState updateActiveTypes:1];
  [(VKCImageAnalysisInteraction *)self sendAAButtonPressedDelegateCallbackIfNecessaryForSender:pressedCopy];
  if (self->_analysisButton == pressedCopy)
  {
    v10 = 4;
  }

  else
  {
    actionInfoAnalysisButtonIfExists = [(VKCImageAnalysisInteraction *)self actionInfoAnalysisButtonIfExists];
    if (actionInfoAnalysisButtonIfExists == pressedCopy)
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

- (void)sendAAButtonPressedDelegateCallbackIfNecessaryForSender:(id)sender
{
  senderCopy = sender;
  v5 = objc_opt_class();
  v15 = VKCheckedDynamicCast(v5, senderCopy);

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
    customView = [(VKImageAnalysisBarButtonItem *)analysisBarButtonItem customView];
    v9 = [(VKImageAnalysisButton *)v15 isDescendantOfView:customView];

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

    _customAnalyticsIdentifier = [(VKCImageAnalysisInteraction *)self _customAnalyticsIdentifier];
    [(VKCVisualSearchCornerView *)self->_actionInfoCornerButtonView set_customAnalyticsIdentifier:_customAnalyticsIdentifier];

    analysis = [(VKCImageAnalysisInteraction *)self analysis];
    [(VKCVisualSearchCornerView *)self->_actionInfoCornerButtonView setAnalysis:analysis];

    [(VKCVisualSearchCornerView *)self->_actionInfoCornerButtonView setDelegate:self];
    _customAnalyticsIdentifier2 = [(VKCImageAnalysisInteraction *)self _customAnalyticsIdentifier];
    [(VKCVisualSearchCornerView *)self->_actionInfoCornerButtonView set_customAnalyticsIdentifier:_customAnalyticsIdentifier2];

    baseView = [(VKCImageAnalysisInteraction *)self baseView];
    [baseView normalizedVisibleRect];
    [(VKCVisualSearchCornerView *)self->_actionInfoCornerButtonView setNormalizedVisibleRect:?];

    [(VKCVisualSearchCornerView *)self->_actionInfoCornerButtonView setHidden:([(VKCImageAnalysisInteraction *)self activeInteractionTypes]& 4) == 0];
    baseView2 = [(VKCImageAnalysisInteraction *)self baseView];
    [baseView2 setDidAddVisualSearchCornerView:1];

    actionInfoCornerButtonView = self->_actionInfoCornerButtonView;
  }

  return actionInfoCornerButtonView;
}

- (void)set_manuallyManagesActionInfoButtons:(BOOL)buttons
{
  self->__manuallyManagesActionInfoButtons = buttons;
  if (buttons)
  {
    actionInfoView = [(VKCImageAnalysisInteraction *)self actionInfoView];
    [actionInfoView setQuickActions:MEMORY[0x1E695E0F0]];
  }

  else
  {
    actionInfoView = [(VKCImageAnalysisInteraction *)self actionButtons];
    actionInfoView2 = [(VKCImageAnalysisInteraction *)self actionInfoView];
    [actionInfoView2 setQuickActions:actionInfoView];
  }
}

- (VKCActionInfoView)actionInfoView
{
  actionInfoView = self->_actionInfoView;
  if (!actionInfoView)
  {
    v4 = [VKCActionInfoView alloc];
    actionInfoAnalysisButton = [(VKCImageAnalysisInteraction *)self actionInfoAnalysisButton];
    v6 = objc_opt_class();
    actionInfoCornerButtonView = [(VKCImageAnalysisInteraction *)self actionInfoCornerButtonView];
    v8 = VKCheckedDynamicCast(v6, actionInfoCornerButtonView);
    v9 = [(VKCActionInfoView *)v4 initWithLiveTextButton:actionInfoAnalysisButton cornerView:v8];
    v10 = self->_actionInfoView;
    self->_actionInfoView = v9;

    [(VKCImageAnalysisInteraction *)self preferredQuickActionButtonHeight];
    [(VKCActionInfoView *)self->_actionInfoView setPreferredQuickActionButtonHeight:?];
    quickActionConfigurationUpdateHandler = [(VKCImageAnalysisInteraction *)self quickActionConfigurationUpdateHandler];
    [(VKCActionInfoView *)self->_actionInfoView setQuickActionConfigurationUpdateHandler:quickActionConfigurationUpdateHandler];

    v12 = self->_actionInfoView;
    baseView = [(VKCImageAnalysisInteraction *)self baseView];
    [baseView setActionInfoView:v12];

    baseView2 = [(VKCImageAnalysisInteraction *)self baseView];
    quickActions = [baseView2 quickActions];
    actionButtons = self->_actionButtons;
    self->_actionButtons = quickActions;

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

- (void)configureForCurrentDerivedAutomaticStateWithUpdateActiveTypes:(BOOL)types
{
  typesCopy = types;
  deriveCurrentAutomaticState = [(VKCImageAnalysisInteraction *)self deriveCurrentAutomaticState];

  [(VKCImageAnalysisInteraction *)self configureButtonsForState:deriveCurrentAutomaticState updateActiveTypes:typesCopy];
}

- (unint64_t)deriveCurrentAutomaticState
{
  _isPublicAPI = [(VKCImageAnalysisInteraction *)self _isPublicAPI];
  _isInPublicAutomaticMode = [(VKCImageAnalysisInteraction *)self _isInPublicAutomaticMode];
  _highlightSelectableItems = [(VKCImageAnalysisInteraction *)self _highlightSelectableItems];
  analysis = [(VKCImageAnalysisInteraction *)self analysis];
  activeInteractionTypes = [(VKCImageAnalysisInteraction *)self activeInteractionTypes];
  v8 = 0;
  if (analysis && activeInteractionTypes)
  {
    if (_isInPublicAutomaticMode || !_isPublicAPI)
    {
      if ((activeInteractionTypes & 4) != 0)
      {
        v8 = 6;
      }

      else
      {
        v8 = 2;
        if ((!_isPublicAPI || !_isInPublicAutomaticMode || !_highlightSelectableItems) && (_isPublicAPI || !_highlightSelectableItems))
        {
          if (activeInteractionTypes == 3)
          {
            v8 = 1;
          }

          else
          {
            v8 = ((activeInteractionTypes << 63) >> 63) & 3;
          }
        }
      }
    }

    else
    {
      v9 = activeInteractionTypes & 0xFFFFFFFFFFFFFFF7;
      v10 = 5;
      v11 = 3;
      if (_highlightSelectableItems)
      {
        v11 = 4;
      }

      v12 = ((activeInteractionTypes << 61) >> 63) & 6;
      v13 = 1;
      if (_highlightSelectableItems)
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

- (void)configureButtonsForState:(unint64_t)state updateActiveTypes:(BOOL)types
{
  typesCopy = types;
  analysis = [(VKCImageAnalysisInteraction *)self analysis];
  v45 = self->_analysisButton;
  actionInfoAnalysisButtonIfExists = [(VKCImageAnalysisInteraction *)self actionInfoAnalysisButtonIfExists];
  v46 = self->_analysisBarButtonItem;
  visualSearchCornerButtonView = [(VKCImageAnalysisInteraction *)self visualSearchCornerButtonView];
  actionInfoCornerButtonViewIfExists = [(VKCImageAnalysisInteraction *)self actionInfoCornerButtonViewIfExists];
  v11 = [analysis hasResultsForAnalysisTypes:2];
  v12 = [analysis hasResultsForAnalysisTypes:1];
  v13 = v11 | [analysis hasResultsForAnalysisTypes:4];
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  v15 = baseView;
  if (baseView)
  {
    [baseView visibleTextAreaInfo];
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
      _isInPublicAutomaticMode = [(VKCImageAnalysisInteraction *)self _isInPublicAutomaticMode];
    }

    else
    {
      _isInPublicAutomaticMode = 1;
    }
  }

  else
  {
    _isInPublicAutomaticMode = 0;
  }

  v21 = 0.0;
  v49 = analysis;
  v48 = typesCopy;
  v47 = actionInfoAnalysisButtonIfExists;
  if (state <= 2)
  {
    if (state)
    {
      if (state == 1)
      {
        v22 = 0;
LABEL_37:
        v31 = actionInfoCornerButtonViewIfExists;
        v43 = _isInPublicAutomaticMode;
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

      if (state == 2)
      {
        _isInPublicAutomaticMode = 0;
        v22 = 1;
        goto LABEL_37;
      }

      v43 = _isInPublicAutomaticMode;
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
    v31 = actionInfoCornerButtonViewIfExists;
    goto LABEL_42;
  }

  if (state > 4)
  {
    v28 = 2;
    v29 = 4;
    v30 = state != 6 && _isInPublicAutomaticMode;
    if (state != 6)
    {
      v29 = 0;
    }

    v23 = 0;
    v25 = 0;
    LOBYTE(v22) = 0;
    if (state == 5)
    {
      v30 = 0;
    }

    v43 = v30;
    v44 = 0;
    if (state != 5)
    {
      v28 = v29;
    }

    v41 = v28;
    v27 = 0;
    goto LABEL_41;
  }

  if (state == 3)
  {
    v43 = _isInPublicAutomaticMode;
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

  v31 = actionInfoCornerButtonViewIfExists;
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
  v58 = visualSearchCornerButtonView;
  v66 = v48;
  v59 = v31;
  selfCopy = self;
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
  v38 = visualSearchCornerButtonView;
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
    actionInfoViewIfExists = [(VKCImageAnalysisInteraction *)self actionInfoViewIfExists];
    [actionInfoViewIfExists set_quickActionsHidden:v42 | v44 ^ 1];
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

- (void)sendAnalyticsEventWithType:(int64_t)type source:(int64_t)source analysisButtonActive:(BOOL)active
{
  activeCopy = active;
  v9 = [VKAnalyticsInteractionEvent alloc];
  analysis = [(VKCImageAnalysisInteraction *)self analysis];
  imageAnalysisResult = [analysis imageAnalysisResult];
  activeInteractionTypes = [(VKCImageAnalysisInteraction *)self activeInteractionTypes];
  _customAnalyticsIdentifier = [(VKCImageAnalysisInteraction *)self _customAnalyticsIdentifier];
  v15 = [(VKAnalyticsInteractionEvent *)v9 initWithEventType:type analysis:imageAnalysisResult source:source interactionTypes:activeInteractionTypes buttonActive:activeCopy customIdentifier:_customAnalyticsIdentifier];

  if ([(VKCImageAnalysisInteraction *)self activeInteractionTypes])
  {
    [(VKCImageAnalysisInteraction *)self addEventToAnalyticsSession:v15];
  }

  else
  {
    [(VKCImageAnalysisInteraction *)self closeAndSendCurrentAnalyticsSession];
  }

  _analyticsDelegate = [(VKCImageAnalysisInteraction *)self _analyticsDelegate];
  [_analyticsDelegate _visionKitAnalyticsEventDidOccur:v15 interaction:self];
}

- (void)addEventToAnalyticsSession:(id)session
{
  sessionCopy = session;
  if (![(VKCImageAnalysisInteraction *)self isSettingAnalysis])
  {
    analyticsProcessor = [(VKCImageAnalysisInteraction *)self analyticsProcessor];
    [analyticsProcessor processAndSendEvent:sessionCopy];

    [(VKCImageAnalysisInteraction *)self beginNewAnalyticsSessionIfNecessary];
    analyticsSession = [(VKCImageAnalysisInteraction *)self analyticsSession];
    [analyticsSession addEvent:sessionCopy];

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
  analysis = [(VKCImageAnalysisInteraction *)self analysis];
  if (analysis)
  {
    v4 = analysis;
    activeInteractionTypes = [(VKCImageAnalysisInteraction *)self activeInteractionTypes];

    if (activeInteractionTypes)
    {
      analyticsSession = [(VKCImageAnalysisInteraction *)self analyticsSession];

      if (!analyticsSession)
      {
        v7 = [VKAnalyticsSessionAccumulator alloc];
        analysis2 = [(VKCImageAnalysisInteraction *)self analysis];
        _customAnalyticsIdentifier = [(VKCImageAnalysisInteraction *)self _customAnalyticsIdentifier];
        v10 = [(VKAnalyticsSessionAccumulator *)v7 initWithAnalysis:analysis2 customIdentifier:_customAnalyticsIdentifier];
        [(VKCImageAnalysisInteraction *)self setAnalyticsSession:v10];

        v11 = [(VKCImageAnalysisInteraction *)self analyticsTimeoutIndex]+ 1;

        [(VKCImageAnalysisInteraction *)self setAnalyticsTimeoutIndex:v11];
      }
    }
  }
}

- (void)closeAndSendCurrentAnalyticsSession
{
  analyticsSession = [(VKCImageAnalysisInteraction *)self analyticsSession];
  if (analyticsSession)
  {
    v5 = analyticsSession;
    [analyticsSession close];
    analyticsProcessor = [(VKCImageAnalysisInteraction *)self analyticsProcessor];
    [analyticsProcessor processAndSendSession:v5];

    [(VKCImageAnalysisInteraction *)self setAnalyticsTimeoutIndex:[(VKCImageAnalysisInteraction *)self analyticsTimeoutIndex]+ 1];
    [(VKCImageAnalysisInteraction *)self setAnalyticsSession:0];
    analyticsSession = v5;
  }
}

+ (void)_quickActionResultForDocumentObservation:(id)observation queue:(id)queue completionHandler:(id)handler
{
  observationCopy = observation;
  queueCopy = queue;
  handlerCopy = handler;
  if (!queueCopy)
  {
    queueCopy = MEMORY[0x1E69E96A0];
    v10 = MEMORY[0x1E69E96A0];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__VKCImageAnalysisInteraction__quickActionResultForDocumentObservation_queue_completionHandler___block_invoke;
  block[3] = &unk_1E7BE50D8;
  v15 = observationCopy;
  v16 = queueCopy;
  v17 = handlerCopy;
  v11 = handlerCopy;
  v12 = queueCopy;
  v13 = observationCopy;
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
  baseView = [(VKCImageAnalysisInteraction *)self baseView];
  [baseView test_activateTranslationOverlay];
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
  view = [(VKCImageAnalysisInteraction *)self view];
  [view bounds];
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

        integerValue = [*(*(&v21 + 1) + 8 * i) integerValue];
        v13 = integerValue;
        if (integerValue > 0xC)
        {
          v14 = 0;
        }

        else
        {
          v14 = off_1E7BE7868[integerValue];
        }

        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v14];
        view2 = [(VKCImageAnalysisInteraction *)self view];
        [view2 setContentMode:v13];

        baseView = [(VKCImageAnalysisInteraction *)self baseView];
        textSelectionView = [baseView textSelectionView];
        quadsForAllWordsForCurrentLayout = [textSelectionView quadsForAllWordsForCurrentLayout];
        [v3 setObject:quadsForAllWordsForCurrentLayout forKeyedSubscript:v15];
      }

      v9 = [&unk_1F2C39270 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  return v3;
}

@end