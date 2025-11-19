@interface VKCImageAnalysisBaseView
- ($58EB755F713D70195D081A2438463C76)videoPreviewTimeRange;
- (BOOL)_photosInfoSingleTapSubjectModeEnabled;
- (BOOL)analysisContainsTextAtPoint:(CGPoint)a3;
- (BOOL)analysisIsAllDataDetectors;
- (BOOL)containsActionInfoItemAtPoint:(CGPoint)a3;
- (BOOL)containsImageSubjectAtPoint:(CGPoint)a3;
- (BOOL)containsInteractiveItemAtPoint:(CGPoint)a3;
- (BOOL)containsTextAtPoint:(CGPoint)a3;
- (BOOL)containsVisualSearchItemAtPoint:(CGPoint)a3;
- (BOOL)dataDetectorView:(id)a3 dataDetectorInteractionShouldBeginAtPoint:(CGPoint)a4;
- (BOOL)hasActiveTextSelection;
- (BOOL)highlightSelectableItems;
- (BOOL)inhibitSubjectDimmingAndLiftView;
- (BOOL)isSubjectAnalysisComplete;
- (BOOL)isSubjectHighlightAvailable;
- (BOOL)isSubjectHighlightShowingLivePhoto:(id)a3 delegateHasImplementation:(BOOL *)a4;
- (BOOL)presentVisualSearchForItem:(id)a3;
- (BOOL)subjectHighlightActive;
- (BOOL)subjectHighlightView:(id)a3 containsVSItemForNormalizedPath:(id)a4;
- (BOOL)subjectHighlightView:(id)a3 shouldBeginInteractionAtPoint:(CGPoint)a4 withType:(unint64_t)a5;
- (BOOL)subjectInteractionInProgress;
- (BOOL)subjectViewUserInteractionDisabled;
- (BOOL)textSelectionView:(id)a3 shouldBeginAtPoint:(CGPoint)a4;
- (BOOL)textSelectionView:(id)a3 shouldHandleShareWithRanges:(id)a4 boundingRect:(CGRect)a5 selectedText:(id)a6 selectedAttributedText:(id)a7;
- (BOOL)usesLightDimmingViewInLightMode;
- (BOOL)visualSearchItemView:(id)a3 shouldBeginAtPoint:(CGPoint)a4;
- (BOOL)visualSearchView:(id)a3 shouldShowDotForItem:(id)a4 allItems:(id)a5;
- (CALayer)layerForObservingContentsRect;
- (CGRect)calculateNormalizedVisibleRect;
- (CGRect)frameWhenResigningActive;
- (CGRect)subjectFrame;
- (CGRect)videoPreviewNormalizedCropRect;
- (CGRect)visibleImageRect;
- (NSArray)filteredNormalizedRectangleQuads;
- (NSArray)filteredRectangleQuads;
- (NSArray)rawRectangleObservations;
- (NSArray)selectedRanges;
- (NSAttributedString)selectedAttributedText;
- (NSIndexSet)activeSubjectIndexSet;
- (NSIndexSet)allSubjectsIndexSet;
- (NSString)description;
- (NSString)selectedText;
- (NSString)text;
- (UIImage)customImageForRemoveBackground;
- (UIScrollView)scrollViewToObserve;
- (UIView)viewForObservingContentMode;
- (VIUIVisualIntelligenceViewCoordinator)viCoordinator;
- (VIUVisualIntelligenceView)visualIntelligenceView;
- (VKCActionInfoButton)copyAllQuickAction;
- (VKCActionInfoButton)translateQuickAction;
- (VKCImageAnalysisBaseView)init;
- (VKCImageAnalysisBaseViewDelegate)delegate;
- (VKCImageCustomHighlightView)regexHighlightView;
- (VKCImageDataDetectorView)dataDetectorView;
- (VKCImageSubjectContext)subjectContext;
- (VKCImageSubjectHighlightView)subjectHighlightView;
- (VKCImageVisualSearchView)visualSearchView;
- (VKCVisualSearchResultItem)vsItemPresentedFromMenu;
- (VKTextRange)selectedRange;
- (VKVisibleTextAreaInfo)calculateVisibleTextAreaInfo;
- (VKVisibleTextAreaInfo)visibleTextAreaInfo;
- (double)currentExtraOffsetForViewScale;
- (double)totalBoundingBoxTextArea;
- (double)totalQuadTextArea;
- (id)dataDetectorElementPoint:(CGPoint)a3 requestingView:(id)a4;
- (id)disposableFolderPath;
- (id)disposableSubjectPNGURLWithTitle:(id)a3;
- (id)highlightView:(id)a3 selectionRectsForRanges:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4 usingSubviewsOf:(id)a5;
- (id)imageSubjectPathWithIndexes:(id)a3;
- (id)indexOfSubjectAtPoint:(CGPoint)a3;
- (id)loggingParentObject;
- (id)nonTextNormalizedHighlightAllQuadsForTextSelectionView:(id)a3;
- (id)presentingViewControllerForImageAnalysisInteraction;
- (id)presentingViewControllerForSubjectHighlightView:(id)a3;
- (id)presentingViewControllerForTextSelectionView:(id)a3;
- (id)previewForDataDetectorElementView:(id)a3;
- (id)previewImageForDataDetectorElementView:(id)a3;
- (id)summaryDescription;
- (id)tempPNGURLForSubjectHighlightView:(id)a3;
- (id)textSelectionView:(id)a3 closestVisualSearchItemForRange:(id)a4;
- (id)textSelectionView:(id)a3 updateAttributedStringForCopy:(id)a4;
- (id)textSelectionView:(id)a3 updateStringForCopy:(id)a4;
- (id)videoPreviewSubjectMatteAtCompositionTime:(id *)a3;
- (id)videoPreviewSubjectMatteForImage:(id)a3 atCompositionTime:(id *)a4;
- (id)viewForImageSnapshotForTextSelectionView:(id)a3;
- (id)visualSearchResultItems;
- (id)visualSearchView:(id)a3 normalizedPathForSubjectAtNormalizedPoint:(CGPoint)a4;
- (unint64_t)dataDetectorTypeAtPoint:(CGPoint)a3;
- (unint64_t)subjectRequestStatus;
- (void)_logVisualSearchHintAvailabilityUpdate;
- (void)_updateAnalysisVisibility;
- (void)actionInfoButtonDidActivatePrimaryAction:(id)a3;
- (void)addAsyncMRCElement:(id)a3;
- (void)addMetadataToVSFeedbackItem:(id)a3;
- (void)analysisDidUpdateForTypes:(unint64_t)a3;
- (void)applicationWillResignActive:(id)a3;
- (void)automaticallyShowVisualSearchResultsIfApplicable;
- (void)beginImageSubjectAnalysisIfNecessary;
- (void)beginImageSubjectAnalysisIfNecessaryWithCompletion:(id)a3;
- (void)beginImageSubjectAnalysisWithDelayIfNecessary;
- (void)checkForTranslationResultsWithCompletion:(id)a3;
- (void)clearDataDetectorViewIfNecessary;
- (void)clearRegexHighlightsAnimated:(BOOL)a3 updateActiveTypes:(BOOL)a4;
- (void)clearSelection;
- (void)clearTextSelectionViewIfNecessary;
- (void)clearTranslationViewIfNecessary;
- (void)clearVisualSearchViewIfNecessary;
- (void)configureForActiveTypes:(unint64_t)a3;
- (void)configureForCurrentActiveInteractionTypes;
- (void)copyAllToClipboard;
- (void)copyButtonPressed:(id)a3;
- (void)createStickerRepresentationsAtIndexSet:(id)a3 type:(unint64_t)a4 stickerIDs:(id)a5 progress:(id)a6 completion:(id)a7;
- (void)dataDetectorView:(id)a3 analyticsEventOccured:(id)a4;
- (void)dealloc;
- (void)debugButtonDidTap:(id)a3;
- (void)deleteDisposableFiles;
- (void)didEndLiveResize:(id)a3;
- (void)didMoveToWindow;
- (void)generateTextualVisualSearchResultForQueryInfo:(id)a3 completionHandler:(id)a4;
- (void)generateVisualSearchResultForItems:(id)a3 queryID:(unint64_t)a4 completionHandler:(id)a5;
- (void)highlightMatchesWithString:(id)a3 animated:(BOOL)a4;
- (void)highlightSubjectAtIndexSet:(id)a3 showCallout:(BOOL)a4 showBurst:(BOOL)a5 burstPoint:(CGPoint)a6 animated:(BOOL)a7;
- (void)invalidateVisibleTextAreaInfo;
- (void)layoutSubviews;
- (void)loadImageSubjectIfAvailableWithCompletion:(id)a3;
- (void)loadImageSubjectWithIndexes:(id)a3 completion:(id)a4;
- (void)loadQuickActionsIfNecessary;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)resetSelection;
- (void)safeAreaInsetsDidChange;
- (void)scrollViewDidChange:(id)a3;
- (void)scrollViewWillChange:(id)a3;
- (void)selectAll;
- (void)sendActiveInteractionTypesDidChangeAnalyticsEvent;
- (void)sendAnalysisDidChangeAnalyticsEvent;
- (void)sendQuickActionAnalyticsWithDidBecomeVisible:(BOOL)a3;
- (void)sendVisualSearchAnalyticsWithDidBecomeActive:(BOOL)a3;
- (void)setActionInfoCustomFont:(id)a3;
- (void)setActionInfoView:(id)a3;
- (void)setActiveInteractionTypes:(unint64_t)a3;
- (void)setActiveSubjectIndexSet:(id)a3;
- (void)setAnalysisResult:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setContentsRect:(CGRect)a3;
- (void)setCustomImageForRemoveBackground:(id)a3;
- (void)setDataDetectorTypes:(unint64_t)a3;
- (void)setDidAddVisualSearchCornerView:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHighlightSelectableItems:(BOOL)a3 animated:(BOOL)a4;
- (void)setIdentifierIndex:(int64_t)a3;
- (void)setInhibitSubjectDimmingAndLiftView:(BOOL)a3;
- (void)setIsShowingTranslation:(BOOL)a3;
- (void)setLayerForObservingContentsRect:(id)a3;
- (void)setNormalizedVisibleRect:(CGRect)a3;
- (void)setQuickActions:(id)a3;
- (void)setScrollViewToObserve:(id)a3;
- (void)setSelectedRanges:(id)a3;
- (void)setSubjectViewUserInteractionDisabled:(BOOL)a3;
- (void)setUsesLightDimmingViewInLightMode:(BOOL)a3;
- (void)setViewForObservingContentMode:(id)a3;
- (void)setVisibleTextAreaInfo:(VKVisibleTextAreaInfo *)a3;
- (void)setWantsAutomaticContentsRectCalculation:(BOOL)a3;
- (void)set_hasActiveTextSelection:(BOOL)a3;
- (void)set_photosInfoSingleTapSubjectModeEnabled:(BOOL)a3;
- (void)showTopVisualSearchResult;
- (void)subjectBaseView:(id)a3 analyticsEventOccurred:(id)a4;
- (void)subjectBaseViewDidBeginSubjectAnalysis:(id)a3;
- (void)subjectBaseViewViewDidCompleteSubjectAnalysis:(id)a3;
- (void)subjectHighlightView:(id)a3 activateVSItemForNormalizedPath:(id)a4;
- (void)subjectHighlightView:(id)a3 livePhotoShouldPlay:(BOOL)a4;
- (void)subjectHighlightView:(id)a3 prepareForCalloutAction:(SEL)a4 completion:(id)a5;
- (void)subjectHighlightView:(id)a3 willBeginInteractionAtPoint:(CGPoint)a4 withType:(unint64_t)a5;
- (void)subjectHighlightViewSubjectInteractionInProgressDidChange:(id)a3;
- (void)submitVisualSearchUserFeedbackForReportIdentifier:(id)a3 userFeedbackPayload:(id)a4 sfReportData:(id)a5;
- (void)tearDownQuickActions;
- (void)test_activateTranslationOverlay;
- (void)textSelectionView:(id)a3 analyticsEventOccured:(id)a4;
- (void)textSelectionView:(id)a3 boundsDidChangeFromRect:(CGRect)a4 toRect:(CGRect)a5;
- (void)textSelectionView:(id)a3 prepareForCalloutAction:(SEL)a4 completion:(id)a5;
- (void)textSelectionView:(id)a3 requestsDataDetectorActivationAtPoint:(CGPoint)a4;
- (void)textSelectionView:(id)a3 selectionDidChange:(id)a4;
- (void)translateButtonPressed:(id)a3;
- (void)triggerTapToRadar;
- (void)updateAndNotifyAfterValidNormalizedVisibleRectChange;
- (void)updateAndNotifyAfterValidNormalizedVisibleRectChangeIfNecessary;
- (void)updateCurrentDisplayedViewContentsRect;
- (void)updateDebugButtonIfNecessary;
- (void)updateNormalizedVisibleRect;
- (void)updateNormalizedVisibleRectIfNecessary;
- (void)updateSubviewsToMatchBounds;
- (void)useInteractionOptions:(unint64_t)a3;
- (void)videoPreviewAvailableForSubjectHighlightView:(id)a3;
- (void)visualIntelligenceView:(id)a3 didRequestVluEnabled:(BOOL)a4;
- (void)visualIntelligenceView:(id)a3 isDraggingSheetDidChange:(BOOL)a4;
- (void)visualIntelligenceView:(id)a3 isSheetPresentedDidChangeToValue:(BOOL)a4;
- (void)visualSearchItemView:(id)a3 didTapVisualSearchIndicatorWithNormalizedBoundingBox:(CGRect)a4;
- (void)visualSearchItemViewDidActivateVSItem:(id)a3;
- (void)visualSearchItemViewDidDismissController:(id)a3;
- (void)visualSearchView:(id)a3 analyticsEventOccured:(id)a4;
- (void)willDismissMenuForDataDetectorView:(id)a3;
- (void)willDisplayMenuForActionInfoButton:(id)a3;
- (void)willDisplayMenuForDataDetectorView:(id)a3;
- (void)willEnterLiveResize:(id)a3;
- (void)willHideMenuForActionInfoButton:(id)a3;
@end

@implementation VKCImageAnalysisBaseView

- (void)dealloc
{
  v3 = [(VKCImageAnalysisBaseView *)self keyPathsAffectingContentMode];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__VKCImageAnalysisBaseView_dealloc__block_invoke;
  v9[3] = &unk_1E7BE6780;
  v9[4] = self;
  [v3 enumerateObjectsUsingBlock:v9];

  WeakRetained = objc_loadWeakRetained(&self->_layerForObservingContentsRect);
  [WeakRetained removeObserver:self forKeyPath:@"contentsRect" context:VKImageRecognitionContentModeContext];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self];

  v6 = objc_loadWeakRetained(&self->_scrollViewToObserve);
  [v6 _removeScrollViewScrollObserver:self];

  if ([(VKCImageAnalysisBaseView *)self isAnalysisVisible]&& (self->_activeInteractionTypes & 4) != 0)
  {
    v7 = +[VKImageAnalyzerMadInterface sharedInterface];
    [v7 didLeaveVisualSearchHints];
  }

  [(VKCImageAnalysisBaseView *)self tearDownQuickActions];
  [(VKCImageAnalysisBaseView *)self deleteDisposableFiles];
  v8.receiver = self;
  v8.super_class = VKCImageAnalysisBaseView;
  [(VKCImageAnalysisBaseView *)&v8 dealloc];
}

void __35__VKCImageAnalysisBaseView_dealloc__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 608));
  [WeakRetained removeObserver:*(a1 + 32) forKeyPath:v4 context:VKImageRecognitionContentModeContext];
}

- (VKCImageAnalysisBaseView)init
{
  v35.receiver = self;
  v35.super_class = VKCImageAnalysisBaseView;
  v2 = [(VKCImageAnalysisBaseView *)&v35 init];
  v3 = v2;
  if (v2)
  {
    ++sIdentifierIndex;
    [(VKCImageAnalysisBaseView *)v2 setIdentifierIndex:?];
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v3 selector:sel_scrollViewWillChange_ name:*MEMORY[0x1E69DE740] object:0];
    [v4 addObserver:v3 selector:sel_scrollViewDidChange_ name:*MEMORY[0x1E69DE730] object:0];
    [v4 addObserver:v3 selector:sel_scrollViewWillChange_ name:*MEMORY[0x1E69DE738] object:0];
    [v4 addObserver:v3 selector:sel_scrollViewDidChange_ name:*MEMORY[0x1E69DE728] object:0];
    [v4 addObserver:v3 selector:sel_willEnterLiveResize_ name:*MEMORY[0x1E69DEB20] object:0];
    [v4 addObserver:v3 selector:sel_didEndLiveResize_ name:*MEMORY[0x1E69DEB28] object:0];
    [(VKCImageAnalysisBaseView *)v3 setAccessibilityIgnoresInvertColors:1];
    [v4 addObserver:v3 selector:sel_applicationWillResignActive_ name:*MEMORY[0x1E69DDBC8] object:0];
    v3->_longPressDataDetectorsInTextMode = 1;
    v5 = objc_alloc_init(VKCImageTextSelectionView_iOS);
    objc_storeStrong(&v3->_textSelectionView, v5);
    [(VKCImageTextSelectionView *)v3->_textSelectionView setTextSelectionDelegate:v3];
    [(VKCImageBaseOverlayView *)v3->_textSelectionView setBaseDelegate:v3];
    v6 = objc_opt_new();
    translationView = v3->_translationView;
    v3->_translationView = v6;

    [(VKCImageBaseOverlayView *)v3->_translationView setBaseDelegate:v3];
    if (vk_isInternalBuild() && +[VKCInternalSettings debugMenuEnabled])
    {
      v8 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      debugImageView = v3->_debugImageView;
      v3->_debugImageView = v8;

      v10 = [MEMORY[0x1E69DCAB8] vk_symbolImageWithName:@"eye.circle.fill"];
      [(UIImageView *)v3->_debugImageView setImage:v10];

      v11 = [(UIImageView *)v3->_debugImageView layer];
      LODWORD(v12) = 0.5;
      [v11 setShadowOpacity:v12];

      v13 = [MEMORY[0x1E69DC888] blackColor];
      v14 = [v13 CGColor];
      v15 = [(UIImageView *)v3->_debugImageView layer];
      [v15 setShadowColor:v14];

      v16 = *MEMORY[0x1E695F060];
      v17 = *(MEMORY[0x1E695F060] + 8);
      v18 = [(UIImageView *)v3->_debugImageView layer];
      [v18 setShadowOffset:{v16, v17}];

      v19 = objc_alloc_init(VKCAnalysisDebugMenuProvider);
      debugMenuProvider = v3->_debugMenuProvider;
      v3->_debugMenuProvider = v19;

      [(UIImageView *)v3->_debugImageView setVk_userInteractionEnabled:1];
      v21 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v3 action:sel_debugButtonDidTap_];
      [(UIImageView *)v3->_debugImageView addGestureRecognizer:v21];
      v22 = objc_alloc_init(VKCAnalysisDebugMenuProvider);
      v23 = v3->_debugMenuProvider;
      v3->_debugMenuProvider = v22;

      v24 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      textInfoView = v3->_textInfoView;
      v3->_textInfoView = v24;

      v26 = [MEMORY[0x1E69DC888] whiteColor];
      v27 = [v26 vk_colorWith40PercentOpacity];
      [(UILabel *)v3->_textInfoView setVk_backgroundColor:v27];

      [(UIImageView *)v3->_debugImageView addSubview:v3->_textInfoView];
      [(VKCImageAnalysisBaseView *)v3 addSubview:v3->_debugImageView];
    }

    v28 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v29 = dispatch_queue_create("VKBaseViewBackground", v28);
    backgroundQueue = v3->_backgroundQueue;
    v3->_backgroundQueue = v29;

    [(VKCImageAnalysisBaseView *)v3 setNormalizedVisibleRect:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v31 = _os_feature_enabled_impl();
    v3->_subjectHighlightFeatureFlagEnabled = v31;
    if (v31)
    {
      v32 = objc_alloc_init(VKCRemoveBackgroundRequestHandler);
      removeBackgroundRequestHandler = v3->_removeBackgroundRequestHandler;
      v3->_removeBackgroundRequestHandler = v32;
    }
  }

  return v3;
}

- (void)useInteractionOptions:(unint64_t)a3
{
  v5 = objc_opt_class();
  v6 = VKDynamicCast(v5, self->_textSelectionView);
  [v6 useInteractionOptions:a3];
}

- (void)applicationWillResignActive:(id)a3
{
  [(VKCImageAnalysisBaseView *)self frameWhenResigningActive];
  if (CGRectIsNull(v6))
  {
    v4 = [(VKCImageAnalysisBaseView *)self window];
    [v4 frame];
    [(VKCImageAnalysisBaseView *)self setFrameWhenResigningActive:?];
  }
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = VKCImageAnalysisBaseView;
  [(VKCImageAnalysisBaseView *)&v9 layoutSubviews];
  [(VKCImageAnalysisBaseView *)self frameWhenResigningActive];
  if (!CGRectIsNull(v10))
  {
    [(VKCImageAnalysisBaseView *)self frameWhenResigningActive];
    v4 = v3;
    v5 = [(VKCImageAnalysisBaseView *)self window];
    [v5 frame];
    v7 = v6;

    if (v4 != v7)
    {
      v8 = [(VKCImageAnalysisBaseView *)self textSelectionView];
      [v8 updateSelectionRectsForWindowChange];

      [(VKCImageAnalysisBaseView *)self setFrameWhenResigningActive:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (VKImageRecognitionContentModeContext == a6)
  {

    [(VKCImageAnalysisBaseView *)self updateCurrentDisplayedViewContentsRect:a3];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = VKCImageAnalysisBaseView;
    [(VKCImageAnalysisBaseView *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = VKCImageAnalysisBaseView;
  [(VKCImageAnalysisBaseView *)&v3 didMoveToWindow];
  [(VKCImageAnalysisBaseView *)self updateNormalizedVisibleRectIfNecessary];
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = VKCImageAnalysisBaseView;
  [(VKCImageAnalysisBaseView *)&v3 safeAreaInsetsDidChange];
  [(VKCImageAnalysisBaseView *)self updateNormalizedVisibleRectIfNecessary];
}

- (void)setContentsRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16.receiver = self;
  v16.super_class = VKCImageAnalysisBaseView;
  [(VKCImageBaseOverlayView *)&v16 setContentsRect:?];
  v8 = [(VKCImageAnalysisBaseView *)self textSelectionView];
  [v8 setContentsRect:{x, y, width, height}];

  v9 = [(VKCImageAnalysisBaseView *)self dataDetectorView];
  [v9 setContentsRect:{x, y, width, height}];

  v10 = [(VKCImageAnalysisBaseView *)self visualSearchView];
  [v10 setContentsRect:{x, y, width, height}];

  v11 = [(VKCImageAnalysisBaseView *)self translationView];
  [v11 setContentsRect:{x, y, width, height}];

  v12 = [(VKCImageAnalysisBaseView *)self regexHighlightViewIfExists];
  [v12 setContentsRect:{x, y, width, height}];

  v13 = [(VKCImageAnalysisBaseView *)self actionInfoView];
  [v13 setContentsRect:{x, y, width, height}];

  v14 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [v14 setContentsRect:{x, y, width, height}];

  v15 = [(VKCImageAnalysisBaseView *)self visualIntelligenceViewIfExists];
  [v15 setContentsRect:{x, y, width, height}];
}

- (void)setAnalysisResult:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (vk_isInternalBuild() && +[VKCInternalSettings disableAllLiveText])
  {
    v6 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B4335000, v6, OS_LOG_TYPE_DEFAULT, "Ignoring setting analysis result on base view due todue to internal setting to disable all live text.", buf, 2u);
    }
  }

  else if (self->_analysisResult != v5)
  {
    objc_storeStrong(&self->_analysisResult, a3);
    v7 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      analysisResult = self->_analysisResult;
      *buf = 138412546;
      v26 = analysisResult;
      v27 = 2112;
      v28 = self;
      _os_log_impl(&dword_1B4335000, v7, OS_LOG_TYPE_DEFAULT, "Setting Analysis: %@, %@", buf, 0x16u);
    }

    [(VKCImageAnalysisBaseView *)self clearRegexHighlightsAnimated:0 updateActiveTypes:0];
    [(VKCImageAnalysisBaseView *)self updateCurrentDisplayedViewContentsRect];
    v9 = self->_analysisResult;
    v10 = [(VKCImageAnalysisBaseView *)self dataDetectorView];
    [v10 setRecognitionResult:v9];

    v11 = self->_analysisResult;
    v12 = [(VKCImageAnalysisBaseView *)self textSelectionView];
    [v12 setRecognitionResult:v11];

    v13 = [(VKCImageAnalysisResult *)self->_analysisResult visualSearchResult];
    v14 = [(VKCImageAnalysisBaseView *)self visualSearchView];
    [v14 setVisualSearchResult:v13];

    v15 = self->_analysisResult;
    v16 = [(VKCImageAnalysisBaseView *)self translationView];
    [v16 setRecognitionResult:v15];

    v17 = self->_analysisResult;
    v18 = [(VKCImageAnalysisBaseView *)self regexHighlightViewIfExists];
    [v18 setRecognitionResult:v17];

    v19 = self->_analysisResult;
    v20 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
    [v20 setRecognitionResult:v19];

    v21 = [(VKCImageAnalysisResult *)self->_analysisResult visualIntelligenceResult];
    v22 = [(VKCImageAnalysisBaseView *)self viCoordinatorIfExists];
    [v22 setAnalysisResult:v21];

    [(VKCImageAnalysisBaseView *)self configureForActiveTypes:[(VKCImageAnalysisBaseView *)self activeInteractionTypes]];
    [(VKCImageAnalysisBaseView *)self updateNormalizedVisibleRectIfNecessary];
    [(VKCImageAnalysisBaseView *)self sendAnalysisDidChangeAnalyticsEvent];
    [(VKCImageAnalysisBaseView *)self invalidateVisibleTextAreaInfo];
    [(VKCImageAnalysisBaseView *)self tearDownQuickActions];
    [(VKCImageAnalysisBaseView *)self setQuickActions:MEMORY[0x1E695E0F0]];
    if (self->_analysisResult)
    {
      [(VKCImageAnalysisBaseView *)self loadQuickActionsIfNecessary];
    }

    v23 = [(VKCImageAnalysisBaseView *)self backgroundQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__VKCImageAnalysisBaseView_setAnalysisResult___block_invoke;
    block[3] = &unk_1E7BE4208;
    block[4] = self;
    dispatch_async(v23, block);

    [(UIImageView *)self->_debugImageView setHidden:0];
  }
}

- (void)analysisDidUpdateForTypes:(unint64_t)a3
{
  v3 = a3;
  v11 = [(VKCImageAnalysisBaseView *)self analysisResult];
  if (v3)
  {
    v5 = [(VKCImageAnalysisBaseView *)self textSelectionView];
    [v5 setRecognitionResult:v11];

    v6 = [(VKCImageAnalysisBaseView *)self translationView];
    [v6 setRecognitionResult:v11];

    v7 = [(VKCImageAnalysisBaseView *)self regexHighlightViewIfExists];
    [v7 setRecognitionResult:v11];

    [(VKCImageAnalysisBaseView *)self invalidateVisibleTextAreaInfo];
  }

  if ((v3 & 5) != 0)
  {
    v8 = [(VKCImageAnalysisBaseView *)self dataDetectorView];
    [v8 setRecognitionResult:v11];

    if ((v3 & 0x10) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_9;
  }

  v9 = [v11 visualSearchResult];
  v10 = [(VKCImageAnalysisBaseView *)self visualSearchView];
  [v10 setVisualSearchResult:v9];

LABEL_8:
  [(VKCImageAnalysisBaseView *)self updateCurrentDisplayedViewContentsRect];
  [(VKCImageAnalysisBaseView *)self configureForActiveTypes:[(VKCImageAnalysisBaseView *)self activeInteractionTypes]];
  [(VKCImageAnalysisBaseView *)self updateNormalizedVisibleRectIfNecessary];
  [(VKCImageAnalysisBaseView *)self updateSubviewsToMatchBounds];
LABEL_9:
  if ([(VKCImageAnalysisBaseView *)self highlightSelectableItems])
  {
    [(VKCImageAnalysisBaseView *)self setHighlightSelectableItems:0 animated:0];
    [(VKCImageAnalysisBaseView *)self setHighlightSelectableItems:1 animated:1];
  }

  [(VKCImageAnalysisBaseView *)self updateDebugButtonIfNecessary];
}

- (void)setActiveInteractionTypes:(unint64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_activeInteractionTypes != a3)
  {
    [(VKCImageAnalysisBaseView *)self clearRegexHighlightsAnimated:0 updateActiveTypes:0];
    v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = VKMUIStringForAnalysisInteractionTypes(a3);
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = self;
      _os_log_impl(&dword_1B4335000, v5, OS_LOG_TYPE_DEFAULT, "Setting Active Interaction Types: %@, %@", &v7, 0x16u);
    }

    [(VKCImageAnalysisBaseView *)self updateCurrentDisplayedViewContentsRect];
    [(VKCImageAnalysisBaseView *)self updateNormalizedVisibleRect];
    [(VKCImageAnalysisBaseView *)self configureForActiveTypes:a3];
    [(VKCImageAnalysisBaseView *)self sendActiveInteractionTypesDidChangeAnalyticsEvent];
    [(VKCImageAnalysisBaseView *)self invalidateVisibleTextAreaInfo];
    if (!a3)
    {
      [(VKCImageAnalysisBaseView *)self setIsShowingTranslation:0];
    }

    [(VKCImageAnalysisBaseView *)self set_hasActiveTextSelection:[(VKCImageAnalysisBaseView *)self hasActiveTextSelection]];
  }
}

- (NSString)text
{
  v2 = [(VKCImageAnalysisBaseView *)self textSelectionView];
  v3 = [v2 text];

  return v3;
}

- (NSString)selectedText
{
  v2 = [(VKCImageAnalysisBaseView *)self textSelectionView];
  v3 = [v2 selectedText];

  return v3;
}

- (NSAttributedString)selectedAttributedText
{
  v2 = [(VKCImageAnalysisBaseView *)self textSelectionView];
  v3 = [v2 selectedAttributedText];

  return v3;
}

- (NSArray)selectedRanges
{
  v2 = [(VKCImageAnalysisBaseView *)self textSelectionView];
  v3 = [v2 selectedVKRange];
  v4 = [v3 nsRangeArray];

  return v4;
}

- (void)setSelectedRanges:(id)a3
{
  v5 = [VKTextRange rangeWithNSRanges:a3];
  v4 = [(VKCImageAnalysisBaseView *)self textSelectionView];
  [v4 setSelectedVKRange:v5];
}

- (VKTextRange)selectedRange
{
  v2 = [(VKCImageAnalysisBaseView *)self textSelectionView];
  v3 = [v2 selectedVKRange];

  return v3;
}

- (void)setDataDetectorTypes:(unint64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = VKMUIStringForDDTypes(a3);
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = self;
    _os_log_impl(&dword_1B4335000, v5, OS_LOG_TYPE_DEFAULT, "Setting DDTypes: %@, %@", &v8, 0x16u);
  }

  self->_dataDetectorTypes = a3;
  [(VKCImageDataDetectorView *)self->_dataDetectorView setDataDetectorTypes:a3];
  v7 = [(VKCImageAnalysisBaseView *)self textSelectionView];
  [v7 updateHighlightLayerContentIfVisible];
}

- (void)setHighlightSelectableItems:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v19 = *MEMORY[0x1E69E9840];
  if ([(VKCImageAnalysisBaseView *)self highlightSelectableItems]!= a3)
  {
    v7 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = VKMUIStringForBool(v5);
      v15 = 138412546;
      v16 = v8;
      v17 = 2112;
      v18 = self;
      _os_log_impl(&dword_1B4335000, v7, OS_LOG_TYPE_DEFAULT, "Highlight selectable items enabled: %@, %@", &v15, 0x16u);
    }

    [(VKCImageAnalysisBaseView *)self clearRegexHighlightsAnimated:0 updateActiveTypes:0];
    v9 = [(VKCImageAnalysisBaseView *)self textSelectionView];
    [v9 setHighlightSelectableItems:v5 animated:v4];

    v10 = [(VKCImageAnalysisBaseView *)self dataDetectorView];
    [v10 setHighlightSelectableItems:v5 animated:v4];

    v11 = [(VKCImageAnalysisBaseView *)self quickActions];
    v12 = [v11 count];

    if (v12)
    {
      [(VKCImageAnalysisBaseView *)self sendQuickActionAnalyticsWithDidBecomeVisible:1];
    }

    v13 = [(VKCImageAnalysisBaseView *)self delegate];
    [v13 highlightSelectableItemsDidChangeForBaseOverlayView:self];

    if (!v5)
    {
      if ([(VKCImageAnalysisBaseView *)self isShowingTranslation])
      {
        [(VKCImageAnalysisBaseView *)self setIsShowingTranslation:0];
        v14 = [(VKCImageAnalysisBaseView *)self translateQuickAction];
        [v14 setSelected:0];
      }
    }
  }
}

- (BOOL)highlightSelectableItems
{
  v2 = [(VKCImageAnalysisBaseView *)self textSelectionView];
  v3 = [v2 highlightSelectableItems];

  return v3;
}

- (VKCImageSubjectContext)subjectContext
{
  v2 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  v3 = [v2 subjectContext];

  return v3;
}

- (BOOL)subjectHighlightActive
{
  v2 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  v3 = [v2 subjectHighlightActive];

  return v3;
}

- (BOOL)isSubjectHighlightAvailable
{
  v2 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  v3 = [v2 subjectContext];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isSubjectAnalysisComplete
{
  v2 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  v3 = [v2 loadMaskRequestStatus] == 2;

  return v3;
}

- (BOOL)subjectInteractionInProgress
{
  v2 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  v3 = [v2 subjectInteractionInProgress];

  return v3;
}

- (CGRect)subjectFrame
{
  v2 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
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

- (unint64_t)subjectRequestStatus
{
  v2 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  v3 = [v2 loadMaskRequestStatus];

  return v3;
}

- (void)setIdentifierIndex:(int64_t)a3
{
  v11.receiver = self;
  v11.super_class = VKCImageAnalysisBaseView;
  [(VKCImageBaseOverlayView *)&v11 setIdentifierIndex:?];
  v5 = [(VKCImageAnalysisBaseView *)self translationView];
  [v5 setIdentifierIndex:a3];

  v6 = [(VKCImageAnalysisBaseView *)self dataDetectorView];
  [v6 setIdentifierIndex:a3];

  v7 = [(VKCImageAnalysisBaseView *)self textSelectionView];
  [v7 setIdentifierIndex:a3];

  v8 = [(VKCImageAnalysisBaseView *)self visualSearchView];
  [v8 setIdentifierIndex:a3];

  v9 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [v9 setIdentifierIndex:a3];

  v10 = [(VKCImageAnalysisBaseView *)self regexHighlightViewIfExists];
  [v10 setIdentifierIndex:a3];
}

- (void)setCustomImageForRemoveBackground:(id)a3
{
  v4 = a3;
  v5 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [v5 setCustomImageForRemoveBackground:v4];
}

- (UIImage)customImageForRemoveBackground
{
  v2 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  v3 = [v2 customImageForRemoveBackground];

  return v3;
}

- (BOOL)usesLightDimmingViewInLightMode
{
  v2 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  v3 = [v2 usesLightDimmingViewInLightMode];

  return v3;
}

- (void)setUsesLightDimmingViewInLightMode:(BOOL)a3
{
  v3 = a3;
  v4 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [v4 setUsesLightDimmingViewInLightMode:v3];
}

- (void)beginImageSubjectAnalysisIfNecessary
{
  v2 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [v2 loadSubjectMaskIfNecessary];
}

- (void)beginImageSubjectAnalysisWithDelayIfNecessary
{
  v2 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [v2 beginImageSubjectAnalysisWithDelayIfNecessary];
}

- (void)beginImageSubjectAnalysisIfNecessaryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [v5 beginImageSubjectAnalysisIfNecessaryWithCompletion:v4];
}

- (void)loadImageSubjectIfAvailableWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [v5 loadImageSubjectIfNecessaryWithCompletion:v4];
}

- (void)loadImageSubjectWithIndexes:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [v8 loadImageSubjectWithIndexes:v7 completion:v6];
}

- (id)imageSubjectPathWithIndexes:(id)a3
{
  v4 = a3;
  v5 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  v6 = [v5 imageSubjectPathWithIndexes:v4];

  return v6;
}

- (void)highlightSubjectAtIndexSet:(id)a3 showCallout:(BOOL)a4 showBurst:(BOOL)a5 burstPoint:(CGPoint)a6 animated:(BOOL)a7
{
  v7 = a7;
  y = a6.y;
  x = a6.x;
  v10 = a5;
  v11 = a4;
  v13 = a3;
  v14 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [v14 highlightSubjectAtIndexSet:v13 showCallout:v11 showBurst:v10 burstPoint:v7 animated:{x, y}];
}

- (void)set_photosInfoSingleTapSubjectModeEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [v5 setTapToSelectModeEnabled:v3];

  v6 = [(VKCImageAnalysisBaseView *)self actionInfoView];
  [v6 setVisualSearchCornerViewDisabled:v3];

  [(VKCImageAnalysisBaseView *)self configureForCurrentActiveInteractionTypes];
}

- (BOOL)_photosInfoSingleTapSubjectModeEnabled
{
  v2 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  v3 = [v2 tapToSelectModeEnabled];

  return v3;
}

- (void)setSubjectViewUserInteractionDisabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [v4 setSubjectViewUserInteractionDisabled:v3];
}

- (BOOL)subjectViewUserInteractionDisabled
{
  v2 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  v3 = [v2 subjectViewUserInteractionDisabled];

  return v3;
}

- (BOOL)inhibitSubjectDimmingAndLiftView
{
  v2 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  v3 = [v2 inhibitDimmingAndLiftView];

  return v3;
}

- (void)setInhibitSubjectDimmingAndLiftView:(BOOL)a3
{
  v3 = a3;
  v4 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [v4 setInhibitDimmingAndLiftView:v3];
}

- (void)loadQuickActionsIfNecessary
{
  v3 = [(VKCImageAnalysisBaseView *)self analysisResult];
  if (v3)
  {
    objc_initWeak(&location, self);
    v4 = [(VKCImageAnalysisBaseView *)self translationView];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __55__VKCImageAnalysisBaseView_loadQuickActionsIfNecessary__block_invoke;
    v5[3] = &unk_1E7BE67D0;
    objc_copyWeak(&v8, &location);
    v6 = v3;
    v7 = self;
    [v4 checkForTranslationResultsWithCompletion:v5];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __55__VKCImageAnalysisBaseView_loadQuickActionsIfNecessary__block_invoke(id *a1, int a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained analysisResult];
    v8 = a1[4];

    if (v7 == v8)
    {
      v9 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = VKMUIStringForBool(a2);
        v11 = a1[5];
        *buf = 138412546;
        v37 = v10;
        v38 = 2112;
        v39 = v11;
        _os_log_impl(&dword_1B4335000, v9, OS_LOG_TYPE_DEFAULT, "Translation Check completed with result: %@, %@", buf, 0x16u);
      }

      v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v12 = [v6 textSelectionView];
      v13 = [v12 text];
      v25 = [v13 vk_containsNonWhitespaceCharacters];

      v27 = [v6 analysisIsAllDataDetectors];
      v14 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = VKMUIStringForBool(v27);
        v16 = a1[5];
        *buf = 138412546;
        v37 = v15;
        v38 = 2112;
        v39 = v16;
        _os_log_impl(&dword_1B4335000, v14, OS_LOG_TYPE_DEFAULT, "Check for is analysis all data detectors completed with result: %@, %@", buf, 0x16u);
      }

      v17 = [v6 dataDetectorView];
      v18 = [v17 displayedElements];

      v19 = [v6 dataDetectorView];
      v20 = [v19 unfilteredElements];
      v21 = [a1[5] analysisResult];
      v22 = [v6 backgroundQueue];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __55__VKCImageAnalysisBaseView_loadQuickActionsIfNecessary__block_invoke_208;
      v29[3] = &unk_1E7BE67A8;
      v23 = v18;
      v30 = v23;
      objc_copyWeak(&v33, a1 + 6);
      v31 = a1[4];
      v24 = v26;
      v32 = v24;
      v34 = a2 & (v27 ^ 1);
      v35 = v25;
      [VKCQuickActionsProcessor quickActionsFromElements:v23 unfilteredElements:v20 analysis:v21 queue:v22 completionHandler:v29];

      objc_destroyWeak(&v33);
    }
  }
}

void __55__VKCImageAnalysisBaseView_loadQuickActionsIfNecessary__block_invoke_208(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) count];
    v17[0] = 67109376;
    v17[1] = v5;
    v18 = 1024;
    v19 = [v3 count];
    _os_log_impl(&dword_1B4335000, v4, OS_LOG_TYPE_DEFAULT, "QuickAction processing complete: %d displayed DD elements resulted in %d DD QuickActions", v17, 0xEu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained analysisResult];
    v9 = *(a1 + 40);

    if (v8 == v9)
    {
      [*(a1 + 48) addObjectsFromArray:v3];
      if (*(a1 + 64) == 1)
      {
        v10 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v17[0]) = 0;
          _os_log_impl(&dword_1B4335000, v10, OS_LOG_TYPE_DEFAULT, "Adding Translate to QuickActions", v17, 2u);
        }

        v11 = *(a1 + 48);
        v12 = [v7 translateQuickAction];
        [v11 insertObject:v12 atIndex:0];
      }

      else
      {
        if (*(a1 + 65) != 1 || [*(a1 + 48) count])
        {
          goto LABEL_12;
        }

        v15 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v17[0]) = 0;
          _os_log_impl(&dword_1B4335000, v15, OS_LOG_TYPE_DEFAULT, "Adding Copy All to QuickActions", v17, 2u);
        }

        v16 = *(a1 + 48);
        v12 = [v7 copyAllQuickAction];
        [v16 addObject:v12];
      }

LABEL_12:
      v13 = [*(a1 + 48) copy];
      [v7 setQuickActions:v13];

      [v7 sendQuickActionAnalyticsWithDidBecomeVisible:0];
      v14 = [v7 delegate];
      [v14 quickActionProcessingCompleteForBaseOverlayView:v7];
    }
  }
}

- (BOOL)analysisIsAllDataDetectors
{
  v3 = [(VKCImageAnalysisBaseView *)self textSelectionView];
  v4 = [v3 text];

  v5 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{0, objc_msgSend(v4, "length")}];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v6 = [(VKCImageAnalysisBaseView *)self dataDetectorView];
  v7 = [v6 displayedElements];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __54__VKCImageAnalysisBaseView_analysisIsAllDataDetectors__block_invoke;
  v17[3] = &unk_1E7BE67F8;
  v8 = v5;
  v18 = v8;
  [v7 enumerateObjectsUsingBlock:v17];

  v9 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__VKCImageAnalysisBaseView_analysisIsAllDataDetectors__block_invoke_2;
  v13[3] = &unk_1E7BE6820;
  v16 = &v19;
  v10 = v4;
  v14 = v10;
  v11 = v9;
  v15 = v11;
  [v8 enumerateRangesUsingBlock:v13];
  LOBYTE(v7) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return v7;
}

void __54__VKCImageAnalysisBaseView_analysisIsAllDataDetectors__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v9 = VKDynamicCast(v4, v3);

  v5 = v9;
  if (v9)
  {
    v6 = *(a1 + 32);
    v7 = [v9 characterRange];
    [v6 removeIndexesInRange:{v7, v8}];
    v5 = v9;
  }
}

uint64_t __54__VKCImageAnalysisBaseView_analysisIsAllDataDetectors__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) rangeOfCharacterFromSet:*(a1 + 40)];
  v11 = result == a2 && v9 == a3;
  *(*(*(a1 + 48) + 8) + 24) = v11;
  *a4 = *(*(*(a1 + 48) + 8) + 24) ^ 1;
  return result;
}

- (void)tearDownQuickActions
{
  v2 = [(VKCImageAnalysisBaseView *)self quickActions];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_30];
}

- (void)setQuickActions:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

        [*(*(&v12 + 1) + 8 * v8++) setDelegate:self];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  quickActions = self->_quickActions;
  self->_quickActions = v4;
  v10 = v4;

  v11 = [(VKCImageAnalysisBaseView *)self actionInfoView];
  [v11 setQuickActions:v10];
}

- (void)setActionInfoCustomFont:(id)a3
{
  objc_storeStrong(&self->_actionInfoCustomFont, a3);
  v4 = [(VKCImageAnalysisBaseView *)self quickActions];
  [(VKCImageAnalysisBaseView *)self setQuickActions:v4];
}

- (VKCActionInfoButton)copyAllQuickAction
{
  copyAllQuickAction = self->_copyAllQuickAction;
  if (!copyAllQuickAction)
  {
    v4 = [MEMORY[0x1E69DCAB8] vk_symbolImageWithName:@"doc.on.doc"];
    v5 = VKBundle();
    v6 = [v5 localizedStringForKey:@"VK_QUICK_ACTION_TITLE_COPY_ALL" value:@"VK_QUICK_ACTION_TITLE_COPY_ALL" table:@"Localizable"];

    v7 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
    v8 = [VKCActionInfoButton buttonWithImage:v4 text:v6];
    v9 = self->_copyAllQuickAction;
    self->_copyAllQuickAction = v8;

    [(VKCActionInfoButton *)self->_copyAllQuickAction setPreferredSymbolConfiguration:v7];
    [(VKCActionInfoButton *)self->_copyAllQuickAction setQuickActionType:4];
    [(VKCActionInfoButton *)self->_copyAllQuickAction vk_addTarget:self action:sel_copyButtonPressed_];

    copyAllQuickAction = self->_copyAllQuickAction;
  }

  return copyAllQuickAction;
}

- (VKCActionInfoButton)translateQuickAction
{
  translateQuickAction = self->_translateQuickAction;
  if (!translateQuickAction)
  {
    v4 = [MEMORY[0x1E69DCAB8] vk_symbolImageWithName:@"translate"];
    v5 = VKBundle();
    v6 = [v5 localizedStringForKey:@"VK_QUICK_ACTION_TITLE_TRANSLATE" value:@"VK_QUICK_ACTION_TITLE_TRANSLATE" table:@"Localizable"];

    v7 = [VKCActionInfoButton buttonWithImage:v4 text:v6];
    v8 = self->_translateQuickAction;
    self->_translateQuickAction = v7;

    [(VKCActionInfoButton *)self->_translateQuickAction setChangesSelectionAsPrimaryAction:1];
    [(VKCActionInfoButton *)self->_translateQuickAction setQuickActionType:0];
    [(VKCActionInfoButton *)self->_translateQuickAction vk_addTarget:self action:sel_translateButtonPressed_];

    translateQuickAction = self->_translateQuickAction;
  }

  return translateQuickAction;
}

- (void)setActionInfoView:(id)a3
{
  objc_storeStrong(&self->_actionInfoView, a3);
  v5 = a3;
  [(VKCImageAnalysisBaseView *)self bounds];
  [(VKCActionInfoView *)self->_actionInfoView setFrame:?];
  [(VKCImageBaseOverlayView *)self contentsRect];
  [(VKCActionInfoView *)self->_actionInfoView setContentsRect:?];
  [(VKCImageBaseOverlayView *)self normalizedVisibleRect];
  [(VKCActionInfoView *)self->_actionInfoView setNormalizedVisibleRect:?];
  v6 = [(VKCImageAnalysisBaseView *)self quickActions];
  [(VKCActionInfoView *)self->_actionInfoView setQuickActions:v6];

  [(VKCImageAnalysisBaseView *)self configureForCurrentActiveInteractionTypes];
}

- (void)resetSelection
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1B4335000, a2, OS_LOG_TYPE_DEBUG, "Resetting Selection for baseView: %@", &v2, 0xCu);
}

- (void)setWantsAutomaticContentsRectCalculation:(BOOL)a3
{
  if (self->_wantsAutomaticContentsRectCalculation != a3)
  {
    self->_wantsAutomaticContentsRectCalculation = a3;
    [(VKCImageAnalysisBaseView *)self updateCurrentDisplayedViewContentsRect];
  }
}

- (void)translateButtonPressed:(id)a3
{
  v4 = a3;
  -[VKCImageAnalysisBaseView setIsShowingTranslation:](self, "setIsShowingTranslation:", [v4 isSelected]);
  v5 = [v4 isSelected];

  if (v5)
  {
    v6 = [VKAnalyticsQuickActionEvent alloc];
    v7 = [(VKCImageAnalysisBaseView *)self quickActions];
    v8 = [v7 count];
    v9 = [(VKCImageAnalysisBaseView *)self analysisResult];
    v10 = [v9 text];
    v11 = [v10 length];
    v12 = [(VKCImageBaseOverlayView *)self customAnalyticsIdentifier];
    v14 = [(VKAnalyticsQuickActionEvent *)v6 initWithQuickActionType:@"Translation" quickActionsCount:v8 textLength:v11 eventType:2 customIdentifier:v12];

    v13 = [(VKCImageAnalysisBaseView *)self delegate];
    [v13 baseOverlayView:self analyticsEventDidOccur:v14];
  }
}

- (void)copyButtonPressed:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = self;
    _os_log_impl(&dword_1B4335000, v4, OS_LOG_TYPE_DEFAULT, "Copy All QuickAction activated: %@", &v15, 0xCu);
  }

  [(VKCImageAnalysisBaseView *)self copyAllToClipboard];
  [(VKCImageAnalysisBaseView *)self setHighlightSelectableItems:0];
  v5 = [(VKCImageAnalysisBaseView *)self delegate];
  [v5 baseOverlayViewDidRequestButtonStateUpdate:self];

  v6 = [VKAnalyticsQuickActionEvent alloc];
  v7 = [(VKCImageAnalysisBaseView *)self quickActions];
  v8 = [v7 count];
  v9 = [(VKCImageAnalysisBaseView *)self analysisResult];
  v10 = [v9 text];
  v11 = [v10 length];
  v12 = [(VKCImageBaseOverlayView *)self customAnalyticsIdentifier];
  v13 = [(VKAnalyticsQuickActionEvent *)v6 initWithQuickActionType:@"CopyAll" quickActionsCount:v8 textLength:v11 eventType:2 customIdentifier:v12];

  v14 = [(VKCImageAnalysisBaseView *)self delegate];
  [v14 baseOverlayView:self analyticsEventDidOccur:v13];
}

- (void)copyAllToClipboard
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = [(VKCImageAnalysisBaseView *)self textSelectionView];
  v4 = [v3 attributedText];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AAB0]);
  }

  v7 = v6;

  v8 = [(VKCImageAnalysisBaseView *)self textSelectionView];
  v9 = [v8 text];

  v10 = [(VKCImageAnalysisBaseView *)self delegate];
  v11 = [v10 baseOverlayView:self updateStringForCopy:v9];

  v12 = [(VKCImageAnalysisBaseView *)self delegate];
  v13 = [v12 baseOverlayView:self updateAttributedStringForCopy:v7];

  v14 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:v11];
  [v14 registerObject:v13 visibility:0];
  v15 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v17[0] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  [v15 setItemProviders:v16];
}

- (void)selectAll
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&dword_1B4335000, v3, OS_LOG_TYPE_DEFAULT, "Select All: %@", &v5, 0xCu);
  }

  v4 = [(VKCImageAnalysisBaseView *)self textSelectionView];
  [v4 selectAll:0];
}

- (void)clearSelection
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_impl(&dword_1B4335000, v3, OS_LOG_TYPE_DEFAULT, "Clear Selection: %@", &v6, 0xCu);
  }

  v4 = +[VKTextRange emptyRange];
  v5 = [(VKCImageAnalysisBaseView *)self textSelectionView];
  [v5 setSelectedVKRange:v4];
}

- (void)setIsShowingTranslation:(BOOL)a3
{
  if (self->_isShowingTranslation != a3)
  {
    v4 = a3;
    self->_isShowingTranslation = a3;
    v6 = [(VKCImageAnalysisBaseView *)self translationView];
    v7 = v6;
    if (v4)
    {
      v8 = [(VKCImageAnalysisBaseView *)self translateQuickAction];
      [v7 setPresentationAnchorView:v8];

      v7 = [(VKCImageAnalysisBaseView *)self translationView];
      [v7 showTranslationOverlay];
    }

    else
    {
      [v6 hideTranslationOverlay];
    }

    v9 = [(VKCImageAnalysisBaseView *)self activeInteractionTypes];

    [(VKCImageAnalysisBaseView *)self configureForActiveTypes:v9];
  }
}

- (void)checkForTranslationResultsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(VKCImageAnalysisBaseView *)self translationView];
  [v5 checkForTranslationResultsWithCompletion:v4];
}

- (void)test_activateTranslationOverlay
{
  v3 = [(VKCImageAnalysisBaseView *)self quickActions];
  v4 = [(VKCImageAnalysisBaseView *)self translateQuickAction];
  v5 = [v3 containsObject:v4];

  if (v5)
  {
    v6 = [(VKCImageAnalysisBaseView *)self translateQuickAction];
    [v6 _vk_performAction];
  }
}

- (BOOL)hasActiveTextSelection
{
  if (([(VKCImageAnalysisBaseView *)self activeInteractionTypes]& 1) == 0)
  {
    return 0;
  }

  v4 = [(VKCImageAnalysisBaseView *)self textSelectionView];
  v5 = [v4 selectedVKRange];
  v3 = [v5 length] != 0;

  return v3;
}

- (void)set_hasActiveTextSelection:(BOOL)a3
{
  if (self->__hasActiveTextSelection != a3)
  {
    self->__hasActiveTextSelection = a3;
    v5 = [(VKCImageAnalysisBaseView *)self delegate];
    [v5 hasActiveTextSelectionDidChangeForBaseOverlayView:self];
  }
}

- (VKVisibleTextAreaInfo)calculateVisibleTextAreaInfo
{
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0x7FF0000000000000;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v5 = +[VKCInternalSettings debugMenuEnabled];
  [(VKCImageBaseOverlayView *)self normalizedVisibleRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(VKCImageAnalysisBaseView *)self analysisResult];
  v15 = [v14 normalizedTextLineBoundingBoxes];

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __56__VKCImageAnalysisBaseView_calculateVisibleTextAreaInfo__block_invoke;
  v31[3] = &unk_1E7BE6848;
  *&v31[9] = v7;
  *&v31[10] = v9;
  *&v31[11] = v11;
  *&v31[12] = v13;
  v32 = v5;
  v31[4] = &v49;
  v31[5] = &v45;
  v31[6] = &v41;
  v31[7] = &v37;
  v31[8] = &v33;
  [v15 enumerateObjectsUsingBlock:v31];
  retstr->dataDetectors = 0;
  *&retstr->boundingBoxArea = 0u;
  *&retstr->maxQuadHeight = 0u;
  [(UIView *)self vk_windowLengthFromViewLength:1.0];
  v17 = v16;
  [(VKCImageAnalysisBaseView *)self visibleImageRect];
  v19 = v18 / v11;
  IsFinite = VKMRectIsFinite(v7, v9, v11, v13);
  v21 = 0.0;
  v22 = 0.0;
  if (IsFinite)
  {
    v22 = v50[3] / (v11 * v13);
  }

  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v22;
  }

  v24 = v17 * v19;
  retstr->boundingBoxArea = v23;
  v25 = v46[3];
  if (v25 == INFINITY)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = v17 * v19 * v25;
  }

  retstr->maxQuadHeight = v24 * v42[3];
  retstr->minQuadHeight = v26;
  v27 = v34[3];
  if (v27)
  {
    v21 = v24 * (v38[3] / v27);
  }

  retstr->averageQuadHeight = v21;
  v28 = [(VKCImageAnalysisBaseView *)self dataDetectorView];
  v29 = [v28 displayedElements];
  retstr->dataDetectors = [v29 count];

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);
  return result;
}

BOOL __56__VKCImageAnalysisBaseView_calculateVisibleTextAreaInfo__block_invoke(uint64_t a1, void *a2)
{
  [a2 vk_rectValue];
  height = v11.size.height;
  v12 = CGRectIntersection(v11, *(a1 + 72));
  width = v12.size.width;
  v5 = v12.size.height;
  result = VKMRectIsFinite(v12.origin.x, v12.origin.y, v12.size.width, v12.size.height);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(*(*(a1 + 32) + 8) + 24) + width * v5;
    if (*(a1 + 104) == 1)
    {
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 24);
      if (v8 >= height)
      {
        v8 = height;
      }

      *(v7 + 24) = v8;
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 24);
      if (v10 < height)
      {
        v10 = height;
      }

      *(v9 + 24) = v10;
      *(*(*(a1 + 56) + 8) + 24) = height + *(*(*(a1 + 56) + 8) + 24);
      ++*(*(*(a1 + 64) + 8) + 24);
    }
  }

  return result;
}

- (void)invalidateVisibleTextAreaInfo
{
  [(VKCImageAnalysisBaseView *)self setVisibleTextAreaInfoIsValid:0];

  [(VKCImageAnalysisBaseView *)self updateAndNotifyAfterValidNormalizedVisibleRectChangeIfNecessary];
}

- (double)totalQuadTextArea
{
  v2 = [(VKCImageAnalysisBaseView *)self analysisResult];
  [v2 totalQuadTextArea];
  v4 = v3;

  return v4;
}

- (double)totalBoundingBoxTextArea
{
  v2 = [(VKCImageAnalysisBaseView *)self analysisResult];
  [v2 totalBoundingBoxTextArea];
  v4 = v3;

  return v4;
}

- (NSArray)rawRectangleObservations
{
  v2 = [(VKCImageAnalysisBaseView *)self analysisResult];
  v3 = [v2 rectangleObservations];

  return v3;
}

- (NSArray)filteredNormalizedRectangleQuads
{
  v2 = [(VKCImageAnalysisBaseView *)self analysisResult];
  v3 = [v2 filteredNormalizedRectangleQuads];

  return v3;
}

- (NSArray)filteredRectangleQuads
{
  [(VKCImageBaseOverlayView *)self contentsRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(VKCImageAnalysisBaseView *)self filteredNormalizedRectangleQuads];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__VKCImageAnalysisBaseView_filteredRectangleQuads__block_invoke;
  v14[3] = &unk_1E7BE6870;
  v14[4] = self;
  v14[5] = v4;
  v14[6] = v6;
  v14[7] = v8;
  v14[8] = v10;
  v12 = [v11 vk_compactMap:v14];

  return v12;
}

- (void)setViewForObservingContentMode:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewForObservingContentMode);

  if (WeakRetained != v4)
  {
    v6 = [(VKCImageAnalysisBaseView *)self keyPathsAffectingContentMode];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__VKCImageAnalysisBaseView_setViewForObservingContentMode___block_invoke;
    v10[3] = &unk_1E7BE6780;
    v10[4] = self;
    [v6 enumerateObjectsUsingBlock:v10];
    objc_storeWeak(&self->_viewForObservingContentMode, v4);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59__VKCImageAnalysisBaseView_setViewForObservingContentMode___block_invoke_2;
    v9[3] = &unk_1E7BE6780;
    v9[4] = self;
    [v6 enumerateObjectsUsingBlock:v9];
    v7 = objc_loadWeakRetained(&self->_viewForObservingContentMode);
    v8 = [v7 layer];
    [(VKCImageAnalysisBaseView *)self setLayerForObservingContentsRect:v8];

    [(VKCImageAnalysisBaseView *)self updateCurrentDisplayedViewContentsRect];
  }
}

void __59__VKCImageAnalysisBaseView_setViewForObservingContentMode___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 608));
  [WeakRetained removeObserver:*(a1 + 32) forKeyPath:v4 context:VKImageRecognitionContentModeContext];
}

void __59__VKCImageAnalysisBaseView_setViewForObservingContentMode___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 608));
  [WeakRetained addObserver:*(a1 + 32) forKeyPath:v4 options:0 context:VKImageRecognitionContentModeContext];
}

- (void)setLayerForObservingContentsRect:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_layerForObservingContentsRect);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_layerForObservingContentsRect);
    [v5 removeObserver:self forKeyPath:@"contentsRect" context:VKImageRecognitionContentModeContext];

    v6 = objc_storeWeak(&self->_layerForObservingContentsRect, obj);
    [obj addObserver:self forKeyPath:@"contentsRect" options:0 context:VKImageRecognitionContentModeContext];
  }
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = VKCImageAnalysisBaseView;
  [(VKCImageAnalysisBaseView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(VKCImageAnalysisBaseView *)self updateSubviewsToMatchBounds];
  [(VKCImageAnalysisBaseView *)self updateNormalizedVisibleRectIfNecessary];
  [(VKCImageAnalysisBaseView *)self updateCurrentDisplayedViewContentsRect];
  [(VKCImageAnalysisBaseView *)self invalidateVisibleTextAreaInfo];
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = VKCImageAnalysisBaseView;
  [(VKCImageAnalysisBaseView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(VKCImageAnalysisBaseView *)self updateSubviewsToMatchBounds];
}

- (void)updateSubviewsToMatchBounds
{
  [(VKCImageAnalysisBaseView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(VKCImageAnalysisBaseView *)self textSelectionView];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(VKCImageAnalysisBaseView *)self dataDetectorView];
  [v12 setFrame:{v4, v6, v8, v10}];

  v13 = [(VKCImageAnalysisBaseView *)self visualSearchView];
  [v13 setFrame:{v4, v6, v8, v10}];

  v14 = [(VKCImageAnalysisBaseView *)self translationView];
  [v14 setFrame:{v4, v6, v8, v10}];

  v15 = [(VKCImageAnalysisBaseView *)self regexHighlightViewIfExists];
  [v15 setFrame:{v4, v6, v8, v10}];

  v16 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [v16 setFrame:{v4, v6, v8, v10}];

  v17 = [(VKCImageAnalysisBaseView *)self visualIntelligenceViewIfExists];
  [v17 setFrame:{v4, v6, v8, v10}];

  v18 = [(VKCImageAnalysisBaseView *)self actionInfoView];
  v19 = [v18 superview];

  if (v19 == self)
  {
    v20 = [(VKCImageAnalysisBaseView *)self actionInfoView];
    [v20 setFrame:{v4, v6, v8, v10}];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(VKCImageAnalysisBaseView *)self hitTest:v7 withEvent:self->_actionInfoView usingSubviewsOf:x, y];
  if (v8)
  {
LABEL_2:
    v9 = v8;
    goto LABEL_3;
  }

  if (![(VKCImageAnalysisBaseView *)self isVisualIntelligenceType]|| ([(VKCImageAnalysisBaseView *)self visualIntelligenceView], v17 = objc_claimAutoreleasedReturnValue(), [(VKCImageAnalysisBaseView *)self hitTest:v7 withEvent:v17 usingSubviewsOf:x, y], v9 = objc_claimAutoreleasedReturnValue(), v17, !v9))
  {
    if (![(VKCImageAnalysisBaseView *)self subjectHighlightActive])
    {
      goto LABEL_29;
    }

    v9 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
    if (([(VKCImageAnalysisBaseView *)self activeInteractionTypes]& 4) != 0)
    {
      v18 = [(VKCImageAnalysisBaseView *)self visualSearchView];
      v19 = [(VKCImageAnalysisBaseView *)self hitTest:v7 withEvent:v18 usingSubviewsOf:x, y];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = v9;
      }

      v22 = v21;

      v9 = v22;
    }

    if (!v9)
    {
LABEL_29:
      v23 = [(VKCImageAnalysisBaseView *)self translationView];
      v9 = [(VKCImageAnalysisBaseView *)self hitTest:v7 withEvent:v23 usingSubviewsOf:x, y];

      if (!v9)
      {
        v24 = [(VKCImageAnalysisBaseView *)self dataDetectorView];
        v9 = [(VKCImageAnalysisBaseView *)self hitTest:v7 withEvent:v24 usingSubviewsOf:x, y];

        if (!v9)
        {
          v25 = [(VKCImageAnalysisBaseView *)self visualSearchView];
          v9 = [(VKCImageAnalysisBaseView *)self hitTest:v7 withEvent:v25 usingSubviewsOf:x, y];

          if (!v9)
          {
            v26 = [(VKCImageAnalysisBaseView *)self regexHighlightViewIfExists];
            v9 = [(VKCImageAnalysisBaseView *)self hitTest:v7 withEvent:v26 usingSubviewsOf:x, y];

            if (!v9)
            {
              v27 = [(VKCImageAnalysisBaseView *)self textSelectionView];
              [(VKCImageAnalysisBaseView *)self convertPoint:v27 toView:x, y];
              v29 = v28;
              v31 = v30;

              v32 = [(VKCImageAnalysisBaseView *)self textSelectionView];
              v9 = [v32 hitTest:v7 withEvent:{v29, v31}];

              v33 = [(VKCImageAnalysisBaseView *)self containsTextAtPoint:x, y];
              v34 = [(VKCImageAnalysisBaseView *)self hasActiveTextSelection];
              v35 = [(VKCImageAnalysisBaseView *)self longPressDataDetectorsInTextMode]&& [(VKCImageAnalysisBaseView *)self dataDetectorTypeAtPoint:x, y]!= 0;
              v36 = [(VKCImageAnalysisBaseView *)self activeInteractionTypes];
              if (!v33 && !v35)
              {
                v37 = v36;
                if ((!v34 || vk_isSeedBuild()) && (v37 & 8) != 0 && ![(VKCImageAnalysisBaseView *)self subjectViewUserInteractionDisabled])
                {
                  if ([(VKCImageAnalysisBaseView *)self isSubjectHighlightAvailable])
                  {
                    v38 = [(VKCImageAnalysisBaseView *)self containsImageSubjectAtPoint:x, y];
                  }

                  else
                  {
                    v38 = 0;
                  }

                  v39 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
                  v40 = [v39 isLivePhoto];

                  if ((v40 & 1) != 0 || v38)
                  {
                    v41 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];

                    v9 = v41;
                  }

                  if (!v9)
                  {
                    if (!vk_isSeedBuild() || [v7 buttonMask] != 2)
                    {
                      v9 = 0;
                      goto LABEL_3;
                    }

                    v8 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
                    goto LABEL_2;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_3:
  v10 = [(VKCImageAnalysisBaseView *)self debugImageView];
  if (v10)
  {
    [(VKCImageAnalysisBaseView *)self convertPoint:v10 toView:x, y];
    v12 = v11;
    v14 = v13;
    [v10 bounds];
    v43.x = v12;
    v43.y = v14;
    if (CGRectContainsPoint(v44, v43))
    {
      v15 = v10;

      v9 = v15;
    }
  }

  return v9;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4 usingSubviewsOf:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    [(VKCImageAnalysisBaseView *)self convertPoint:v10 toView:x, y];
    v11 = [v10 hitTest:v9 withEvent:?];
    v12 = v11;
    if (v11 != v10)
    {
      goto LABEL_5;
    }
  }

  v12 = 0;
LABEL_5:

  return v12;
}

- (void)updateCurrentDisplayedViewContentsRect
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = [(VKCImageAnalysisBaseView *)self analysisResult];

  if (v3)
  {
    [(VKCImageAnalysisBaseView *)self bounds];
    if ((VKMSizeIsEmptyOrHasNanOrInf(v4, v5) & 1) == 0)
    {
      if ([(VKCImageAnalysisBaseView *)self wantsAutomaticContentsRectCalculation])
      {
        v6 = [(VKCImageAnalysisBaseView *)self viewForObservingContentMode];
        if (v6)
        {
          [(VKCImageAnalysisBaseView *)self bounds];
          v8 = v7;
          v10 = v9;
          v12 = v11;
          v14 = v13;
          v15 = [v6 contentMode];
          v16 = [(VKCImageAnalysisBaseView *)self analysisResult];
          [v16 imageSize];
          v18 = v17;
          v20 = v19;
          v21 = [(VKCImageAnalysisBaseView *)self analysisResult];
          v22 = [v21 request];
          +[VKCImageContentRectCalculator unitContentsRectForBounds:contentMode:imageSize:orientation:view:](VKCImageContentRectCalculator, "unitContentsRectForBounds:contentMode:imageSize:orientation:view:", v15, [v22 imageOrientation], v6, v8, v10, v12, v14, v18, v20);
          v24 = v23;
          v26 = v25;
          v28 = v27;
          v30 = v29;
        }

        else
        {
          v24 = 0.0;
          v26 = 0.0;
          v28 = 1.0;
          v30 = 1.0;
        }

        [(VKCImageAnalysisBaseView *)self setContentsRect:v24, v26, v28, v30];
      }

      else
      {
        v31 = [(VKCImageAnalysisBaseView *)self delegate];
        v32 = [v31 topLevelImplementsContentsRectDelegateForBaseView:self];

        if (v32)
        {
          v33 = [(VKCImageAnalysisBaseView *)self delegate];
          [v33 contentsRectForImageRecognitionBaseView:self];
          v35 = v34;
          v37 = v36;
          v39 = v38;
          v41 = v40;

          v42 = self;
          v43 = v35;
          v44 = v37;
          v45 = v39;
          v46 = v41;
        }

        else
        {
          if (![(VKCImageAnalysisBaseView *)self didLogContentsRectError])
          {
            [(VKCImageAnalysisBaseView *)self setDidLogContentsRectError:1];
            v47 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              v49 = 138412290;
              v50 = self;
              _os_log_impl(&dword_1B4335000, v47, OS_LOG_TYPE_DEFAULT, "Interaction does not want automaticContentsRectCalculation, but did not implement contentsRectFor...... Falling back to Unit Rect: %@", &v49, 0xCu);
            }
          }

          v43 = 0.0;
          v44 = 0.0;
          v45 = 1.0;
          v46 = 1.0;
          v42 = self;
        }

        [(VKCImageAnalysisBaseView *)v42 setContentsRect:v43, v44, v45, v46];
      }

      v48 = [(VKCImageAnalysisBaseView *)self textSelectionView];
      [v48 updateSelectionRectsForBoundsChange];
    }
  }

  [(VKCImageAnalysisBaseView *)self updateDebugButtonIfNecessary];
}

- (void)_logVisualSearchHintAvailabilityUpdate
{
  v3 = [(VKCImageAnalysisBaseView *)self activeInteractionTypes];
  if ([(VKCImageAnalysisBaseView *)self isAnalysisVisible]&& (v3 & 4) != 0)
  {
    [(VKCImageAnalysisBaseView *)self sendVisualSearchAnalyticsWithDidBecomeActive:1];
    v4 = [(VKCImageAnalysisBaseView *)self delegate];
    v5 = [v4 automaticallyShowVisualSearchResults];

    if (v5)
    {
      return;
    }

    v8 = +[VKImageAnalyzerMadInterface sharedInterface];
    v6 = [(VKCImageAnalysisBaseView *)self analysisResult];
    v7 = [v6 request];
    [v8 didShowVisualSearchHintsForRequest:v7 invocationType:3];
  }

  else
  {
    [(VKCImageAnalysisBaseView *)self sendVisualSearchAnalyticsWithDidBecomeActive:0];
    v8 = +[VKImageAnalyzerMadInterface sharedInterface];
    [v8 didLeaveVisualSearchHints];
  }
}

- (void)_updateAnalysisVisibility
{
  v3 = [(VKCImageAnalysisBaseView *)self superview];
  v4 = [v3 superview];

  if (v4)
  {
    do
    {
      v23 = [v3 superview];

      v5 = [v23 superview];

      v6 = v23;
      v3 = v23;
    }

    while (v5);
  }

  else
  {
    v6 = v3;
  }

  v24 = v6;
  [(VKCImageAnalysisBaseView *)self bounds];
  v11 = VKMCenterOfRect(v7, v8, v9, v10);
  [(VKCImageAnalysisBaseView *)self convertRect:v24 toView:v11 + -20.0, v12 + -20.0, 40.0, 40.0];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [v24 bounds];
  v27.origin.x = v14;
  v27.origin.y = v16;
  v27.size.width = v18;
  v27.size.height = v20;
  if (CGRectContainsRect(v26, v27))
  {
    v21 = [(VKCImageAnalysisBaseView *)self analysisResult];
    v22 = v21 != 0;

    if (v22 == [(VKCImageAnalysisBaseView *)self isAnalysisVisible])
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (![(VKCImageAnalysisBaseView *)self isAnalysisVisible])
    {
      goto LABEL_12;
    }

    v22 = 0;
  }

  [(VKCImageAnalysisBaseView *)self setIsAnalysisVisible:v22];
  if ((self->_activeInteractionTypes & 4) != 0)
  {
    [(VKCImageAnalysisBaseView *)self _logVisualSearchHintAvailabilityUpdate];
  }

LABEL_12:
}

- (CGRect)visibleImageRect
{
  [(VKCImageAnalysisBaseView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(VKCImageBaseOverlayView *)self contentsRect];
  VKMRectFromNormalizedSubrect(v4, v6, v8, v10, v11, v12, v13, v14);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [(VKCImageBaseOverlayView *)self normalizedVisibleRect];
  VKMRectFromNormalizedSubrect(v16, v18, v20, v22, v23, v24, v25, v26);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = v16;
  v36 = v18;
  v37 = v20;
  v38 = v22;

  return CGRectIntersection(*&v35, *&v28);
}

- (void)updateNormalizedVisibleRectIfNecessary
{
  v4 = [(VKCImageAnalysisBaseView *)self activeInteractionTypes];
  v5 = [(VKCImageAnalysisBaseView *)self stringHighlightsActive];
  v6 = v5;
  clientDidSetNormalizedRect = self->_clientDidSetNormalizedRect;
  if (clientDidSetNormalizedRect)
  {
    v8 = [(VKCImageAnalysisBaseView *)self actionInfoView];
    v2 = v8;
    if (!v8 || !((v4 >> 2) & 1 | v6) && (v4 & 0x19) == 0)
    {

      goto LABEL_14;
    }
  }

  else if (!((v4 >> 2) & 1 | v5) && (v4 & 0x19) == 0)
  {
LABEL_14:

    [(VKCImageAnalysisBaseView *)self _updateAnalysisVisibility];
    return;
  }

  v9 = [(VKCImageAnalysisBaseView *)self window];

  if (clientDidSetNormalizedRect)
  {
  }

  if (!v9)
  {
    goto LABEL_14;
  }

  [(VKCImageAnalysisBaseView *)self updateNormalizedVisibleRect];
}

- (void)updateNormalizedVisibleRect
{
  v3 = [(VKCImageAnalysisBaseView *)self scrollViewToObserve];
  v12 = v3;
  if (!v3 || (([v3 zoomScale], v5 = v4, objc_msgSend(v12, "minimumZoomScale"), v7 = v6, objc_msgSend(v12, "maximumZoomScale"), v8 = v12, v5 <= v9) ? (v10 = v5 < v7) : (v10 = 1), !v10 && (v5 != v7 || (v11 = objc_msgSend(v12, "isZoomBouncing"), v8 = v12, (v11 & 1) == 0))))
  {
    [(VKCImageAnalysisBaseView *)self calculateNormalizedVisibleRect];
    [(VKCImageAnalysisBaseView *)self setNormalizedVisibleRect:?];
    [(VKCImageAnalysisBaseView *)self _updateAnalysisVisibility];
    v8 = v12;
  }
}

- (void)setNormalizedVisibleRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v31 = *MEMORY[0x1E69E9840];
  if (VKMRectIsFinite(a3.origin.x, a3.origin.y, a3.size.width, a3.size.height))
  {
    [(VKCImageBaseOverlayView *)self normalizedVisibleRect];
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    if (!CGRectEqualToRect(v32, v33))
    {
      v28.receiver = self;
      v28.super_class = VKCImageAnalysisBaseView;
      [(VKCImageBaseOverlayView *)&v28 setNormalizedVisibleRect:x, y, width, height];
      v8 = [(VKCImageAnalysisBaseView *)self textSelectionView];
      [v8 setNormalizedVisibleRect:{x, y, width, height}];

      v9 = [(VKCImageAnalysisBaseView *)self dataDetectorView];
      [v9 setNormalizedVisibleRect:{x, y, width, height}];

      v10 = [(VKCImageAnalysisBaseView *)self regexHighlightViewIfExists];
      [v10 setNormalizedVisibleRect:{x, y, width, height}];

      v11 = [(VKCImageAnalysisBaseView *)self visualSearchView];
      [v11 setNormalizedVisibleRect:{x, y, width, height}];

      v12 = [(VKCImageAnalysisBaseView *)self translationView];
      [v12 setNormalizedVisibleRect:{x, y, width, height}];

      v13 = [(VKCImageAnalysisBaseView *)self actionInfoView];
      [v13 setNormalizedVisibleRect:{x, y, width, height}];

      v14 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
      [v14 setNormalizedVisibleRect:{x, y, width, height}];

      v15 = [(VKCImageAnalysisBaseView *)self visualIntelligenceViewIfExists];
      [v15 setNormalizedVisibleRect:{x, y, width, height}];

      v16 = [(VKCImageAnalysisBaseView *)self visualIntelligenceViewIfExists];
      [v16 setNormalizedVisibleRect:{x, y, width, height}];

      if (+[VKCInternalSettings logNormalizedVisibleRectProgress])
      {
        [(VKCImageBaseOverlayView *)self viewRectFromNormalizedRect:x, y, width, height];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v25 = [(UIView *)self vk_autoFadeOutShapeRectLayer];
        [v25 setFrame:{v18, v20, v22, v24}];

        v26 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = VKMUIStringForRect(x, y, width, height);
          *buf = 138412290;
          v30 = v27;
          _os_log_impl(&dword_1B4335000, v26, OS_LOG_TYPE_DEFAULT, "Updated normalizedVisibleRect: %@", buf, 0xCu);
        }
      }

      [(VKCImageAnalysisBaseView *)self setVisibleTextAreaInfoIsValid:0];
    }
  }

  [(VKCImageAnalysisBaseView *)self updateAndNotifyAfterValidNormalizedVisibleRectChangeIfNecessary];
}

- (void)updateAndNotifyAfterValidNormalizedVisibleRectChangeIfNecessary
{
  [(VKCImageAnalysisBaseView *)self bounds];
  if (VKMRectHasArea(v3, v4, v5, v6))
  {
    v7 = [(VKCImageAnalysisBaseView *)self textSelectionView];
    [v7 bounds];
    HasArea = VKMRectHasArea(v8, v9, v10, v11);

    if (HasArea)
    {

      [(VKCImageAnalysisBaseView *)self updateAndNotifyAfterValidNormalizedVisibleRectChange];
    }
  }
}

- (void)updateAndNotifyAfterValidNormalizedVisibleRectChange
{
  [(VKCImageAnalysisBaseView *)self setVisibleTextAreaInfoIsValid:1];
  [(VKCImageAnalysisBaseView *)self calculateVisibleTextAreaInfo];
  v5[0] = v7;
  v5[1] = v8;
  v6 = v9;
  [(VKCImageAnalysisBaseView *)self setVisibleTextAreaInfo:v5];
  v3 = [(VKCImageAnalysisBaseView *)self delegate];
  [(VKCImageBaseOverlayView *)self normalizedVisibleRect];
  [v3 baseOverlayView:self didUpdateToNormalizedVisibleRect:?];

  [(VKCImageAnalysisBaseView *)self updateDebugButtonIfNecessary];
  v4 = [(VKCImageAnalysisBaseView *)self actionInfoView];
  [v4 vk_setNeedsLayout];
}

- (void)updateDebugButtonIfNecessary
{
  [(VKCImageAnalysisBaseView *)self visibleImageRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(VKCImageAnalysisBaseView *)self debugImageView];
  if (!v11)
  {
    return;
  }

  v76 = v11;
  v12 = [(VKCImageAnalysisBaseView *)self window];
  if (v12)
  {
    v13 = v12;
    HasArea = VKMRectHasArea(v4, v6, v8, v10);

    if (!HasArea)
    {
      return;
    }

    v15 = [(VKCImageAnalysisBaseView *)self analysisResult];
    if (v15)
    {
      [MEMORY[0x1E69DC888] greenColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] orangeColor];
    }
    v16 = ;

    v76 = [v16 vk_colorWith80PercentOpacity];

    [(UIView *)self vk_viewLengthFromWindowLength:1.0];
    v18 = v17;
    v19 = [(VKCImageAnalysisBaseView *)self traitCollection];
    if ([v19 vk_hasCompactSize])
    {
      v20 = 22.0;
    }

    else
    {
      v20 = 30.0;
    }

    [(UIView *)self vk_viewLengthFromWindowLength:v20];
    v22 = v21;
    VKMRectWithCenterAndSize(*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v21);
    v24 = v23;
    v26 = v25;
    v27 = VKMAddPoints(v22 * 0.5, v22 * 0.5, v4);
    v29 = v28;
    v30 = [(VKCImageAnalysisBaseView *)self debugImageView];
    [v30 setVk_contentTintColor:v76];
    if (!VKMRectIsFinite(v27, v29, v24, v26))
    {
      goto LABEL_39;
    }

    v75 = v30;
    [v30 setFrame:{v27, v29, v24, v26}];
    v31 = [(VKCImageAnalysisBaseView *)self analysisResult];
    v32 = MEMORY[0x1E696AD60];
    v73 = [(VKCImageAnalysisBaseView *)self analysisResult];
    v33 = [v73 request];
    v34 = [v33 requestID];
    v35 = [v31 textDataDetectorElements];
    v36 = [v35 count];
    v37 = [v31 mrcDataDetectorElements];
    v38 = [v37 count];
    v74 = v31;
    v39 = [v31 visualSearchResult];
    v40 = [v39 resultItems];
    v41 = [v32 stringWithFormat:@"ID:%d DD:%lu MRC:%lu VS:%lu ", v34, v36, v38, objc_msgSend(v40, "count")];

    v42 = [(VKCImageAnalysisBaseView *)self activeInteractionTypes];
    [v41 appendString:@"["];
    if (v42)
    {
      [v41 appendString:{@"T, "}];
      if ((v42 & 2) == 0)
      {
LABEL_14:
        if ((v42 & 4) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_30;
      }
    }

    else if ((v42 & 2) == 0)
    {
      goto LABEL_14;
    }

    [v41 appendString:{@"DD, "}];
    if ((v42 & 4) == 0)
    {
LABEL_15:
      if ((v42 & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_31;
    }

LABEL_30:
    [v41 appendString:{@"VS, "}];
    if ((v42 & 8) == 0)
    {
LABEL_16:
      if ((v42 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

LABEL_31:
    [v41 appendString:{@"S, "}];
    if ((v42 & 0x10) == 0)
    {
LABEL_18:
      if ([v41 characterAtIndex:{objc_msgSend(v41, "length") - 1}])
      {
        [v41 replaceCharactersInRange:objc_msgSend(v41 withString:{"length") - 1, 1, &stru_1F2C04538}];
      }

      [v41 appendString:@"] "];
      v43 = [(VKCImageAnalysisBaseView *)self analysisResult];
      v44 = [v43 sourceDocument];

      if (v44)
      {
        [v41 appendString:@"🔤"];
      }

      v45 = [(VKCImageAnalysisBaseView *)self analysisResult];
      v46 = [v45 mrcDataDetectorElements];

      if (v46)
      {
        [v41 appendString:@"🎛"];
      }

      v47 = [(VKCImageAnalysisBaseView *)self analysisResult];
      v48 = [v47 visualSearchResult];

      if (v48)
      {
        [v41 appendString:@"🏞"];
      }

      v49 = [(VKCImageAnalysisBaseView *)self subjectContext];
      v50 = [v49 subjectCount];

      if (v50)
      {
        v51 = @"😻";
      }

      else
      {
        if (![(VKCImageAnalysisBaseView *)self isSubjectAnalysisComplete])
        {
LABEL_36:
          v52 = [(VKCImageAnalysisBaseView *)self textInfoView];
          [v52 setText:v41];
          v53 = [MEMORY[0x1E69DB878] systemFontOfSize:v26 * 0.5];
          [v52 setFont:v53];

          [v52 sizeToFit];
          [v52 bounds];
          v55 = v54;
          v30 = v75;
          [v75 bounds];
          v57 = v56;
          v60 = v58 + v59;
          VKMCenterOfRect(v58 + v59, v56, v59, v61);
          v63 = v57 + v62 - v55 * 0.5;
          if ([(VKCImageAnalysisBaseView *)self isVIHosted])
          {
            v60 = v55 * 0.5 + v60;
            [v75 frame];
            [v75 setFrame:{v55 + v65, v64 + v55 * 1.5}];
          }

          [v52 frame];
          v67 = v66;
          v69 = v68;
          v70 = v68 / 3.0;
          v71 = [v52 layer];
          [v71 setCornerRadius:v70];

          [v52 setFrame:{v60, v63, v67, v69}];
LABEL_39:
          v72 = [v30 layer];
          [v72 setShadowRadius:v18 + v18];

          goto LABEL_40;
        }

        v51 = @"😿";
      }

      [v41 appendString:v51];
      goto LABEL_36;
    }

LABEL_17:
    [v41 appendString:{@"VI, "}];
    goto LABEL_18;
  }

LABEL_40:
}

- (void)debugButtonDidTap:(id)a3
{
  v6 = [(VKCImageAnalysisBaseView *)self debugMenuProvider];
  v4 = [(VKCImageAnalysisBaseView *)self debugImageView];
  v5 = [(VKCImageAnalysisBaseView *)self debugImageView];
  [v5 bounds];
  [v6 presentDebugMenuProvider:self fromView:v4 rect:?];
}

- (CGRect)calculateNormalizedVisibleRect
{
  v190 = *MEMORY[0x1E69E9840];
  [(VKCImageBaseOverlayView *)self normalizedVisibleRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = +[VKCInternalSettings logNormalizedVisibleRectProgress];
  v13 = vk_solariumEnabled(v11, v12);
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = [(VKCImageAnalysisBaseView *)self superview];
  if (v15)
  {
    v16 = v15;
    do
    {
      v17 = objc_opt_class();
      v18 = VKDynamicCast(v17, v16);
      v19 = v18;
      if (v18)
      {
        [v18 zoomScale];
        if (v20 != 1.0 && vabdd_f64(1.0, v20) >= fabs(v20 * 0.000000999999997) && [v19 contentInsetAdjustmentBehavior] == 2)
        {
          [v14 addObject:v19];
        }
      }

      v21 = [v16 superview];

      v16 = v21;
    }

    while (v21);
  }

  v174 = v10;
  v177 = v8;
  v180 = v6;
  v183 = v4;
  v22 = [(VKCImageAnalysisBaseView *)self superview];
  [(VKCImageAnalysisBaseView *)self bounds];
  [(VKCImageAnalysisBaseView *)self convertRect:0 toView:?];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [(VKCImageAnalysisBaseView *)self window];
  [v31 vk_safeAreaBounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v191.origin.x = v24;
  v191.origin.y = v26;
  v191.size.width = v28;
  v191.size.height = v30;
  v202.origin.x = v33;
  v202.origin.y = v35;
  v202.size.width = v37;
  v202.size.height = v39;
  v192 = CGRectIntersection(v191, v202);
  x = v192.origin.x;
  y = v192.origin.y;
  width = v192.size.width;
  height = v192.size.height;
  v44 = [(VKCImageAnalysisBaseView *)self window];
  if (v11)
  {
    v45 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      v164 = [(VKCImageAnalysisBaseView *)self window];
      v165 = VKMUIStringForRect(x, y, width, height);
      *buf = 138412546;
      v187 = v164;
      v188 = 2112;
      v189 = v165;
      _os_log_debug_impl(&dword_1B4335000, v45, OS_LOG_TYPE_DEBUG, "Beginning normalizedVisibleRect window:%@  windowContentsRect: %@", buf, 0x16u);
    }
  }

  if (VKMRectHasArea(x, y, width, height))
  {
    v168 = v44;
    if (v22)
    {
      v170 = v13;
      v46 = x;
      v47 = y;
      v48 = width;
      v49 = height;
      while (1)
      {
        v50 = [v14 lastObject];

        if (v50 == v22)
        {
          [v14 removeLastObject];
        }

        v51 = [v14 lastObject];
        if (v51)
        {
          [(VKCImageAnalysisBaseView *)v22 bounds];
        }

        else
        {
          [(UIView *)v22 vk_safeAreaBounds];
        }

        [(VKCImageAnalysisBaseView *)v22 convertRect:0 toView:?];
        v203.origin.x = v52;
        v203.origin.y = v53;
        v203.size.width = v54;
        v203.size.height = v55;
        v193.origin.x = x;
        v193.origin.y = y;
        v193.size.width = width;
        v193.size.height = height;
        v194 = CGRectIntersection(v193, v203);
        x = v194.origin.x;
        y = v194.origin.y;
        width = v194.size.width;
        height = v194.size.height;
        if (v11)
        {
          v56 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            v57 = VKMUIStringForRect(x, y, width, height);
            *buf = 138412546;
            v187 = v22;
            v188 = 2112;
            v189 = v57;
            _os_log_impl(&dword_1B4335000, v56, OS_LOG_TYPE_INFO, "upDatedWindowContentsRect fromView: %@, windowContentsRect: %@", buf, 0x16u);
          }
        }

        if (VKMRectHasInfComponents(x, y, width, height))
        {
          break;
        }

        v58 = [(VKCImageAnalysisBaseView *)v22 superview];

        v195.origin.x = v46;
        v195.origin.y = v47;
        v195.size.width = v48;
        v195.size.height = v49;
        v204.origin.x = x;
        v204.origin.y = y;
        v204.size.width = width;
        v204.size.height = height;
        if (!CGRectEqualToRect(v195, v204))
        {
          v49 = height;
          v48 = width;
          v47 = y;
          v46 = x;
        }

        v22 = v58;
        if (!v58)
        {
          goto LABEL_33;
        }
      }

LABEL_33:
      v63 = x;
      v64 = y;
      v65 = width;
      v66 = height;
      height = v49;
      width = v48;
      y = v47;
      x = v46;
      v13 = v170;
    }

    else
    {
      v63 = x;
      v64 = y;
      v65 = width;
      v66 = height;
    }

    v171 = v64;
    v173 = v63;
    v166 = v66;
    v167 = v65;
    v60 = v180;
    v59 = v183;
    v62 = v174;
    v61 = v177;
    if ((VKMRectHasInfComponents(v63, v64, v65, v66) & 1) == 0)
    {
      v67 = self;
      v68 = [(VKCImageAnalysisBaseView *)v67 window];
      [v68 vk_safeAreaBounds];
      v205.origin.x = v69;
      v205.origin.y = v70;
      v205.size.width = v71;
      v205.size.height = v72;
      v196.origin.y = v171;
      v196.origin.x = v173;
      v196.size.height = v166;
      v196.size.width = v167;
      v197 = CGRectIntersection(v196, v205);
      v73 = v197.origin.x;
      v74 = v197.origin.y;
      v75 = v197.size.width;
      v76 = v197.size.height;

      if (v67)
      {
        v169 = v14;
        v172 = v67;
        do
        {
          v77 = objc_opt_class();
          v78 = VKDynamicCast(v77, v67);
          v79 = v78;
          if (v78)
          {
            v80 = [v78 navigationController];
            v81 = [v80 toolbar];
            if (v81 && ([v80 isToolbarHidden] & 1) == 0)
            {
              v175 = v73;
              v178 = v74;
              v181 = v75;
              v184 = v76;
              v82 = [v80 toolbar];
              v83 = [v80 toolbar];
              [v83 bounds];
              [v82 convertRect:0 toView:?];
              v85 = v84;
              v87 = v86;
              v89 = v88;
              v91 = v90;

              if ((v13 & 1) != 0 && (-[VKCImageAnalysisBaseView window](v172, "window"), v92 = objc_claimAutoreleasedReturnValue(), [v92 bounds], v97 = VKMNearlyEqualRects(v85, v87, v89, v91, v93, v94, v95, v96), v92, v97) || !VKMRectHasArea(v85, v87, v89, v91))
              {
                v75 = v181;
                v76 = v184;
                v73 = v175;
                v74 = v178;
              }

              else
              {
                v198.origin.x = v85;
                v198.origin.y = v87;
                v198.size.width = v89;
                v198.size.height = v91;
                CGRectGetMinY(v198);
                v73 = VKMClipRectToMaxY(v175, v178, v181, v184);
                v74 = v98;
                v75 = v99;
                v76 = v100;
                if (v11)
                {
                  v101 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
                  if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
                  {
                    v102 = VKMUIStringForRect(v73, v74, v75, v76);
                    *buf = 138412546;
                    v187 = v81;
                    v188 = 2112;
                    v189 = v102;
                    _os_log_impl(&dword_1B4335000, v101, OS_LOG_TYPE_INFO, "updatedWindowContentsRect fromToolbar: %@, windowContentsRect: %@", buf, 0x16u);
                  }
                }
              }
            }

            v103 = [v79 navigationItem];
            v104 = [v103 navigationBar];

            if (v104 && ([(VKCImageAnalysisBaseView *)v104 isHidden]& 1) == 0)
            {
              v176 = v73;
              v179 = v74;
              v182 = v75;
              v185 = v76;
              v105 = v11;
              [(VKCImageAnalysisBaseView *)v104 bounds];
              [(VKCImageAnalysisBaseView *)v104 convertRect:0 toView:?];
              v107 = v106;
              v109 = v108;
              v111 = v110;
              v113 = v112;
              v114 = v13;
              if ((v13 & 1) != 0 && (-[VKCImageAnalysisBaseView window](v172, "window"), v115 = objc_claimAutoreleasedReturnValue(), [v115 bounds], v120 = VKMNearlyEqualRects(v107, v109, v111, v113, v116, v117, v118, v119), v115, v120) || !VKMRectHasArea(v107, v109, v111, v113))
              {
                v13 = v114;
                v11 = v105;
                v14 = v169;
                v75 = v182;
                v76 = v185;
                v73 = v176;
                v74 = v179;
              }

              else
              {
                v199.origin.x = v107;
                v199.origin.y = v109;
                v199.size.width = v111;
                v199.size.height = v113;
                CGRectGetMaxY(v199);
                v73 = VKMClipRectToMinY(v176, v179, v182, v185);
                v74 = v121;
                v75 = v122;
                v76 = v123;
                v13 = v114;
                if (v105)
                {
                  v124 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
                  if (os_log_type_enabled(v124, OS_LOG_TYPE_INFO))
                  {
                    v125 = VKMUIStringForRect(v73, v74, v75, v76);
                    *buf = 138412546;
                    v187 = v104;
                    v188 = 2112;
                    v189 = v125;
                    _os_log_impl(&dword_1B4335000, v124, OS_LOG_TYPE_INFO, "updatedWindowContentsRect fromNavigationBar: %@, windowContentsRect: %@", buf, 0x16u);

                    v13 = v114;
                  }
                }

                v11 = v105;
                v14 = v169;
              }
            }
          }

          if (v11)
          {
            v126 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
            if (os_log_type_enabled(v126, OS_LOG_TYPE_INFO))
            {
              v127 = VKMUIStringForRect(v73, v74, v75, v76);
              *buf = 138412546;
              v187 = v67;
              v188 = 2112;
              v189 = v127;
              _os_log_impl(&dword_1B4335000, v126, OS_LOG_TYPE_INFO, "updatedWindowContentsRect fromView: %@, windowContentsRect: %@", buf, 0x16u);
            }
          }

          v128 = [(VKCImageAnalysisBaseView *)v67 nextResponder];

          v200.origin.x = x;
          v200.origin.y = y;
          v200.size.width = width;
          v200.size.height = height;
          v206.origin.x = v73;
          v206.origin.y = v74;
          v206.size.width = v75;
          v206.size.height = v76;
          if (!CGRectEqualToRect(v200, v206))
          {
            height = v76;
            width = v75;
            y = v74;
            x = v73;
          }

          v67 = v128;
        }

        while (v128);
        v44 = v168;
        v67 = v172;
      }

      [(VKCImageAnalysisBaseView *)v67 convertRect:0 fromView:v73, v74, v75, v76];
      v130 = v129;
      v132 = v131;
      v134 = v133;
      v136 = v135;
      [(VKCImageAnalysisBaseView *)v67 bounds];
      v138 = v137;
      v140 = v139;
      v142 = v141;
      v144 = v143;
      [(VKCImageBaseOverlayView *)v67 contentsRect];
      VKMRectFromNormalizedSubrect(v138, v140, v142, v144, v145, v146, v147, v148);
      VKMNormalizedSubrectInRect(v130, v132, v134, v136, v149, v150, v151, v152);
      v59 = v153;
      v60 = v154;
      v61 = v155;
      v62 = v156;
      if (v11)
      {
        v157 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
        if (os_log_type_enabled(v157, OS_LOG_TYPE_INFO))
        {
          v158 = VKMUIStringForRect(v130, v132, v134, v136);
          v159 = VKMUIStringForRect(v59, v60, v61, v62);
          *buf = 138412546;
          v187 = v158;
          v188 = 2112;
          v189 = v159;
          _os_log_impl(&dword_1B4335000, v157, OS_LOG_TYPE_INFO, "final currentViewRect: %@, normalizedVisibleRect: %@", buf, 0x16u);
        }
      }
    }

    v44 = 0;
  }

  else
  {
    v60 = v180;
    v59 = v183;
    v62 = v174;
    v61 = v177;
  }

  v160 = v59;
  v161 = v60;
  v162 = v61;
  v163 = v62;
  result.size.height = v163;
  result.size.width = v162;
  result.origin.y = v161;
  result.origin.x = v160;
  return result;
}

- (void)configureForCurrentActiveInteractionTypes
{
  v3 = [(VKCImageAnalysisBaseView *)self activeInteractionTypes];

  [(VKCImageAnalysisBaseView *)self configureForActiveTypes:v3];
}

- (void)configureForActiveTypes:(unint64_t)a3
{
  activeInteractionTypes = self->_activeInteractionTypes;
  self->_activeInteractionTypes = a3;
  v62 = [(VKCImageAnalysisBaseView *)self textSelectionView];
  v61 = [(VKCImageAnalysisBaseView *)self dataDetectorView];
  v59 = [(VKCImageAnalysisBaseView *)self visualSearchView];
  v60 = [(VKCImageAnalysisBaseView *)self translationView];
  v63 = [(VKCImageAnalysisBaseView *)self regexHighlightViewIfExists];
  v58 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  v5 = [(VKCImageAnalysisBaseView *)self visualIntelligenceViewIfExists];
  v6 = [(VKCImageAnalysisBaseView *)self viCoordinatorIfExists];
  v49 = [v6 omnibarContainerView];

  v56 = [(VKCImageAnalysisBaseView *)self debugImageView];
  v55 = [(VKCImageAnalysisBaseView *)self actionInfoView];
  if ((a3 & 1) != 0 && (-[VKCImageAnalysisBaseView analysisResult](self, "analysisResult"), v7 = objc_claimAutoreleasedReturnValue(), [v7 text], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, v7, v9))
  {
    v10 = ![(VKCImageAnalysisBaseView *)self isShowingTranslation];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  v12 = [v11 glowLayerActive];

  v13 = [(VKCImageAnalysisBaseView *)self isShowingTranslation];
  if ((a3 & 0x10) != 0)
  {
    [(VKCImageAnalysisBaseView *)self visualIntelligenceView];
    v57 = v14 = v5;
  }

  else
  {
    v14 = [(VKCImageAnalysisBaseView *)self viCoordinatorIfExists];
    v57 = v5;
    if (objc_opt_respondsToSelector())
    {
      [v14 resetInterface];
    }
  }

  isSeedBuild = vk_isSeedBuild();
  if ([(VKCImageAnalysisBaseView *)self longPressDataDetectorsInTextMode])
  {
    v16 = a3 & ((a3 & 2) == 0);
  }

  else
  {
    v16 = 0;
  }

  v17 = (a3 >> 3) & 1 | isSeedBuild;
  v18 = [(VKCImageAnalysisBaseView *)self stringHighlightsActive];
  v19 = v18;
  v20 = !v18;
  if (!v63 && v18)
  {
    v63 = [(VKCImageAnalysisBaseView *)self regexHighlightView];
  }

  v21 = [(VKCImageAnalysisBaseView *)self _photosInfoSingleTapSubjectModeEnabled];
  v22 = (a3 & 4) == 0 || v21;
  if (v17)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = !v19 && ((a3 >> 1) & 1 | v16 & 1) != 0 && !self->_isShowingTranslation;
  v25 = v21 | v23;
  LODWORD(v26) = (a3 & 4) != 0 && v20 && v21;
  if (v12)
  {
    v27 = 0;
  }

  else
  {
    LODWORD(v26) = (a3 & 4) != 0 && v20;
    v27 = v13;
  }

  if (v12)
  {
    v28 = 0;
  }

  else
  {
    v28 = v10;
  }

  if (v12)
  {
    v29 = 0;
  }

  else
  {
    v29 = v24;
  }

  LODWORD(v51) = v25;
  if (v25 == 1)
  {
    v26 = v26;
  }

  else
  {
    v26 = ((a3 & 4) != 0) & v20;
  }

  v53 = v26;
  if (v25 == 1)
  {
    v30 = v27;
  }

  else
  {
    v30 = v13;
  }

  v52 = v30;
  if (v25 == 1)
  {
    v10 = v28;
    v24 = v29;
  }

  v54 = v24;
  [v61 setAllowLongPressDDActivationOnly:v16 & v24];
  [v62 setLongPressDataDetectorsInTextMode:v16];
  v31 = [(VKCImageAnalysisBaseView *)self dataDetectorView];
  v32 = [v31 displayedElements];
  v33 = [v32 vk_containsObjectPassingTest:&__block_literal_global_315];

  if (v57)
  {
    v34 = [v57 superview];

    if (v34 != self)
    {
      [(VKCImageAnalysisBaseView *)self addSubview:v57];
    }
  }

  v35 = v10 | v33;
  if (v35)
  {
    v36 = [v62 superview];

    if (v36 != self)
    {
      [(VKCImageAnalysisBaseView *)self addSubview:v62];
    }
  }

  v37 = [v59 superview];

  if (v37 != self)
  {
    [(VKCImageAnalysisBaseView *)self addSubview:v59];
  }

  v38 = v19 & (v12 ^ 1);
  if (v54)
  {
    v39 = [v61 superview];

    if (v39 != self)
    {
      [(VKCImageAnalysisBaseView *)self addSubview:v61];
    }
  }

  if (v38)
  {
    v40 = [v63 superview];

    if (v40 != self)
    {
      [(VKCImageAnalysisBaseView *)self addSubview:v63];
    }
  }

  if (v55)
  {
    v41 = [v55 superview];
    v42 = v41;
    if (v41 == self)
    {
    }

    else
    {
      v43 = [v55 automaticVisualRectLayoutDisabled];

      if ((v43 & 1) == 0)
      {
        [(VKCImageAnalysisBaseView *)self addSubview:v55];
      }
    }
  }

  if (v52)
  {
    v44 = [v60 superview];

    if (v44 != self)
    {
      [(VKCImageAnalysisBaseView *)self addSubview:v60];
    }
  }

  v45 = [v58 superview];

  if (v45 != self)
  {
    [(VKCImageAnalysisBaseView *)self addSubview:v58];
  }

  [v61 setAllowLongPressDDActivationOnly:v16];
  [v62 setLongPressDataDetectorsInTextMode:v16];
  v46 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:9];
  [v46 vk_addNonNilObject:v57];
  [v46 vk_addNonNilObject:v63];
  [v46 vk_addNonNilObject:v62];
  [v46 vk_addNonNilObject:v61];
  [v46 vk_addNonNilObject:v58];
  [v46 vk_addNonNilObject:v59];
  [v46 vk_addNonNilObject:v60];
  if (([v55 automaticVisualRectLayoutDisabled] & 1) == 0)
  {
    [v46 vk_addNonNilObject:v55];
  }

  [v46 vk_addNonNilObject:v56];
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __52__VKCImageAnalysisBaseView_configureForActiveTypes___block_invoke_2;
  v64[3] = &unk_1E7BE6898;
  v64[4] = self;
  [v46 enumerateObjectsUsingBlock:v64];
  if ([(VKCImageAnalysisBaseView *)self isPublicAPI])
  {
    v47 = [(VKCImageAnalysisBaseView *)self activeInteractionTypes];
    LOBYTE(v38) = 0;
    v51 = ([(VKCImageAnalysisBaseView *)self activeInteractionTypes]>> 3) & 1;
    v53 = (v47 >> 2) & 1;
  }

  [v62 setHidden:(v35 & 1) == 0];
  [v61 setHidden:!v54];
  [v59 setHidden:v53 ^ 1];
  [v60 setHidden:!v52];
  [v63 setHidden:((v10 | v38) & 1) == 0];
  [v56 setHidden:a3 == 0];
  [v58 setHidden:v51 ^ 1];
  [v49 setHidden:(a3 & 0x10) == 0];
  [v59 setUserInteractionEnabled:v53];
  [v62 setUserInteractionEnabled:v10];
  [v61 setUserInteractionEnabled:v54];
  [v60 setUserInteractionEnabled:{-[VKCImageAnalysisBaseView isShowingTranslation](self, "isShowingTranslation")}];
  if ((v51 ^ 1))
  {
    v48 = 0;
  }

  else
  {
    v48 = [(VKCImageAnalysisBaseView *)self subjectViewUserInteractionDisabled]^ 1;
  }

  [v58 setUserInteractionEnabled:v48];
  if (((((activeInteractionTypes & 4) == 0) ^ v53) & 1) == 0 && [(VKCImageAnalysisBaseView *)self isAnalysisVisible])
  {
    [(VKCImageAnalysisBaseView *)self _logVisualSearchHintAvailabilityUpdate];
  }
}

- (void)clearTextSelectionViewIfNecessary
{
  [(VKCImageTextSelectionView *)self->_textSelectionView removeFromSuperview];
  textSelectionView = self->_textSelectionView;
  self->_textSelectionView = 0;
}

- (void)clearDataDetectorViewIfNecessary
{
  [(VKCImageDataDetectorView *)self->_dataDetectorView removeFromSuperview];
  dataDetectorView = self->_dataDetectorView;
  self->_dataDetectorView = 0;
}

- (void)clearVisualSearchViewIfNecessary
{
  [(VKCImageVisualSearchView *)self->_visualSearchView removeFromSuperview];
  visualSearchView = self->_visualSearchView;
  self->_visualSearchView = 0;
}

- (void)clearTranslationViewIfNecessary
{
  [(VKCImageTranslationView *)self->_translationView removeFromSuperview];
  translationView = self->_translationView;
  self->_translationView = 0;
}

- (BOOL)containsInteractiveItemAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(VKCImageAnalysisBaseView *)self activeInteractionTypes];
  if ((v6 & 1) == 0)
  {
    goto LABEL_2;
  }

  if ([(VKCImageAnalysisBaseView *)self containsTextAtPoint:x, y])
  {
    return 1;
  }

  if ([(VKCImageAnalysisBaseView *)self longPressDataDetectorsInTextMode])
  {
    v7 = [(VKCImageAnalysisBaseView *)self dataDetectorTypeAtPoint:x, y]!= 0;
    if ((v6 & 2) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
LABEL_2:
    v7 = 0;
    if ((v6 & 2) == 0)
    {
      goto LABEL_5;
    }
  }

  if (!v7)
  {
    v7 = [(VKCImageAnalysisBaseView *)self dataDetectorTypeAtPoint:x, y]!= 0;
  }

LABEL_5:
  if ((v6 & 4) == 0 || v7)
  {
    if (!v7)
    {
      goto LABEL_16;
    }

    return 1;
  }

  if ([(VKCImageAnalysisBaseView *)self containsVisualSearchItemAtPoint:x, y])
  {
    return 1;
  }

LABEL_16:
  v9 = [(VKCImageAnalysisBaseView *)self actionInfoView];
  v10 = [v9 isHidden];

  if (v10)
  {
    result = 0;
    if ((v6 & 8) == 0)
    {
      return result;
    }
  }

  else
  {
    result = [(VKCImageAnalysisBaseView *)self containsActionInfoItemAtPoint:x, y];
    if ((v6 & 8) == 0)
    {
      return result;
    }
  }

  if (!result)
  {

    return [(VKCImageAnalysisBaseView *)self containsImageSubjectAtPoint:x, y];
  }

  return result;
}

- (BOOL)containsTextAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (([(VKCImageAnalysisBaseView *)self activeInteractionTypes]& 1) == 0)
  {
    return 0;
  }

  return [(VKCImageAnalysisBaseView *)self analysisContainsTextAtPoint:x, y];
}

- (BOOL)containsActionInfoItemAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(VKCImageAnalysisBaseView *)self actionInfoView];
  [v6 convertPoint:self fromView:{x, y}];
  v8 = v7;
  v10 = v9;

  v11 = [(VKCImageAnalysisBaseView *)self actionInfoView];
  v12 = [v11 containsInteractableItemAtPoint:{v8, v10}];

  if (v12)
  {
    return 1;
  }

  v14 = [(VKCImageAnalysisBaseView *)self debugImageView];

  if (!v14)
  {
    return 0;
  }

  v15 = [(VKCImageAnalysisBaseView *)self debugImageView];
  [(VKCImageAnalysisBaseView *)self convertPoint:v15 toView:x, y];
  v17 = v16;
  v19 = v18;

  v20 = [(VKCImageAnalysisBaseView *)self debugImageView];
  [v20 bounds];
  v21.x = v17;
  v21.y = v19;
  LOBYTE(v15) = CGRectContainsPoint(v22, v21);

  return v15;
}

- (BOOL)containsImageSubjectAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [v6 convertPoint:self fromView:{x, y}];
  v8 = v7;
  v10 = v9;

  v11 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  LOBYTE(v6) = [v11 subjectExistsAtPoint:{v8, v10}];

  return v6;
}

- (BOOL)analysisContainsTextAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(VKCImageAnalysisBaseView *)self textSelectionView];
  [(VKCImageAnalysisBaseView *)self convertPoint:v6 toView:x, y];
  v8 = v7;
  v10 = v9;

  v11 = [(VKCImageAnalysisBaseView *)self textSelectionView];
  [(VKCImageAnalysisBaseView *)self currentExtraOffsetForViewScale];
  v13 = [v11 closestQuadForBlockOfType:8 toPoint:v8 maxDistance:{v10, v12}];

  return v13 != 0;
}

- (void)setActiveSubjectIndexSet:(id)a3
{
  v4 = a3;
  v5 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [v5 setActiveSubjectIndexSet:v4];
}

- (NSIndexSet)activeSubjectIndexSet
{
  v2 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  v3 = [v2 activeSubjectIndexSet];

  return v3;
}

- (NSIndexSet)allSubjectsIndexSet
{
  v2 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  v3 = [v2 allSubjectsIndexSet];

  return v3;
}

- (id)indexOfSubjectAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [(VKCImageAnalysisBaseView *)self convertPoint:v6 toView:x, y];
  v8 = v7;
  v10 = v9;

  v11 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  v12 = [v11 indexOfSubjectAtPoint:{v8, v10}];

  return v12;
}

- (double)currentExtraOffsetForViewScale
{
  v2 = [(VKCImageAnalysisBaseView *)self textSelectionView];
  +[VKCInternalSettings extraWindowPointTouchOffset];
  [v2 vk_viewLengthFromWindowLength:?];
  v4 = v3;

  return v4;
}

- (id)dataDetectorElementPoint:(CGPoint)a3 requestingView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(VKCImageAnalysisBaseView *)self activeInteractionTypes];
  if ((v8 & 2) != 0 || (v8 & 1) != 0 && [(VKCImageAnalysisBaseView *)self longPressDataDetectorsInTextMode])
  {
    v9 = [(VKCImageAnalysisBaseView *)self dataDetectorView];
    [v7 convertPoint:v9 toView:{x, y}];
    v11 = v10;
    v13 = v12;

    v14 = [(VKCImageAnalysisBaseView *)self dataDetectorView];
    [(VKCImageAnalysisBaseView *)self currentExtraOffsetForViewScale];
    v16 = [v14 closestElementToPoint:v11 maxDistance:{v13, v15}];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (unint64_t)dataDetectorTypeAtPoint:(CGPoint)a3
{
  v3 = [(VKCImageAnalysisBaseView *)self dataDetectorElementPoint:self requestingView:a3.x, a3.y];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 dataDetectorTypes];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)containsVisualSearchItemAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (([(VKCImageAnalysisBaseView *)self activeInteractionTypes]& 4) == 0)
  {
    return 0;
  }

  v7 = [(VKCImageAnalysisBaseView *)self visualSearchView];
  [(VKCImageAnalysisBaseView *)self convertPoint:v7 toView:x, y];
  v9 = v8;
  v11 = v10;

  v12 = [(VKCImageAnalysisBaseView *)self visualSearchView];
  LOBYTE(v7) = [v12 containsVisualSearchItemAtPoint:{v9, v11}];

  return v7;
}

- (VKCImageDataDetectorView)dataDetectorView
{
  dataDetectorView = self->_dataDetectorView;
  if (!dataDetectorView)
  {
    v4 = objc_alloc_init(VKCImageDataDetectorView);
    v5 = self->_dataDetectorView;
    self->_dataDetectorView = v4;

    [(VKCImageDataDetectorView *)self->_dataDetectorView setAllowLongPressDDActivationOnly:[(VKCImageAnalysisBaseView *)self longPressDataDetectorsInTextMode]];
    [(VKCImageDataDetectorView *)self->_dataDetectorView setDataDetectorTypes:[(VKCImageAnalysisBaseView *)self dataDetectorTypes]];
    [(VKCImageDataDetectorView *)self->_dataDetectorView setDelegate:self];
    [(VKCImageBaseOverlayView *)self->_dataDetectorView setBaseDelegate:self];
    [(VKCImageBaseOverlayView *)self->_dataDetectorView setIdentifierIndex:[(VKCImageBaseOverlayView *)self identifierIndex]];
    dataDetectorView = self->_dataDetectorView;
  }

  return dataDetectorView;
}

- (VKCImageVisualSearchView)visualSearchView
{
  visualSearchView = self->_visualSearchView;
  if (!visualSearchView)
  {
    v4 = objc_alloc_init(VKCImageVisualSearchView);
    v5 = self->_visualSearchView;
    self->_visualSearchView = v4;

    [(VKCImageVisualSearchView *)self->_visualSearchView setDelegate:self];
    [(VKCImageBaseOverlayView *)self->_visualSearchView setBaseDelegate:self];
    [(VKCImageBaseOverlayView *)self->_visualSearchView setIdentifierIndex:[(VKCImageBaseOverlayView *)self identifierIndex]];
    visualSearchView = self->_visualSearchView;
  }

  return visualSearchView;
}

- (VKCImageCustomHighlightView)regexHighlightView
{
  regexHighlightView = self->_regexHighlightView;
  if (!regexHighlightView)
  {
    v4 = [[VKCImageCustomHighlightView alloc] initWithDelegate:self];
    v5 = self->_regexHighlightView;
    self->_regexHighlightView = v4;

    v6 = [(VKCImageAnalysisBaseView *)self analysisResult];
    [(VKCImageBaseOverlayView *)self->_regexHighlightView setRecognitionResult:v6];

    [(VKCImageBaseOverlayView *)self normalizedVisibleRect];
    [(VKCImageBaseOverlayView *)self->_regexHighlightView setNormalizedVisibleRect:?];
    [(VKCImageBaseOverlayView *)self contentsRect];
    [(VKCImageBaseOverlayView *)self->_regexHighlightView setContentsRect:?];
    [(VKCImageAnalysisBaseView *)self bounds];
    [(VKCImageCustomHighlightView *)self->_regexHighlightView setFrame:?];
    [(VKCImageBaseOverlayView *)self->_regexHighlightView setBaseDelegate:self];
    [(VKCImageBaseOverlayView *)self->_regexHighlightView setIdentifierIndex:[(VKCImageBaseOverlayView *)self identifierIndex]];
    regexHighlightView = self->_regexHighlightView;
  }

  return regexHighlightView;
}

- (VIUIVisualIntelligenceViewCoordinator)viCoordinator
{
  v36 = *MEMORY[0x1E69E9840];
  viCoordinator = self->_viCoordinator;
  if (!viCoordinator)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v5 = getVIUIVisualIntelligenceViewCoordinatorClass_softClass_0;
    v31 = getVIUIVisualIntelligenceViewCoordinatorClass_softClass_0;
    if (!getVIUIVisualIntelligenceViewCoordinatorClass_softClass_0)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v33 = __getVIUIVisualIntelligenceViewCoordinatorClass_block_invoke_0;
      v34 = &unk_1E7BE3F48;
      v35 = &v28;
      __getVIUIVisualIntelligenceViewCoordinatorClass_block_invoke_0(&buf);
      v5 = v29[3];
    }

    v6 = v5;
    _Block_object_dispose(&v28, 8);
    v7 = [MEMORY[0x1E695DF00] date];
    [v7 timeIntervalSinceDate:v4];
    v9 = v8;

    v10 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_1B4335000, v10, OS_LOG_TYPE_INFO, "getVIUCoordinator class return time is %f", &buf, 0xCu);
    }

    v11 = _VKSignpostLog();
    if (os_signpost_enabled(v11))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B4335000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "VKCImageAnalysis Visual Intelligence Coordinator", &unk_1B4435C0E, &buf, 2u);
    }

    v12 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B4335000, v12, OS_LOG_TYPE_INFO, "Signpost Begin: VKCImageAnalysis Visual Intelligence Coordinator", &buf, 2u);
    }

    v13 = [MEMORY[0x1E695DF00] date];
    v14 = objc_alloc_init(v5);
    v15 = self->_viCoordinator;
    self->_viCoordinator = v14;

    v16 = [(VKCImageAnalysisBaseView *)self analysisResult];
    v17 = [v16 visualIntelligenceResult];
    [(VIUIVisualIntelligenceViewCoordinator *)self->_viCoordinator setAnalysisResult:v17];

    v18 = [(VIUIVisualIntelligenceViewCoordinator *)self->_viCoordinator omnibarContainerView];
    [v18 setHidden:1];

    if (objc_opt_respondsToSelector())
    {
      v19 = [(VKCImageAnalysisBaseView *)self delegate];
      v20 = [v19 interactionDelegateForBaseView:self];
      [(VIUIVisualIntelligenceViewCoordinator *)self->_viCoordinator setHostDelegate:v20];
    }

    v21 = [MEMORY[0x1E695DF00] date];
    [v21 timeIntervalSinceDate:v13];
    v23 = v22;

    v24 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v23;
      _os_log_impl(&dword_1B4335000, v24, OS_LOG_TYPE_INFO, "VIUCoordinator instantiation time is %f", &buf, 0xCu);
    }

    v25 = _VKSignpostLog();
    if (os_signpost_enabled(v25))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B4335000, v25, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "VKCImageAnalysis Visual Intelligence Coordinator", &unk_1B4435C0E, &buf, 2u);
    }

    v26 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B4335000, v26, OS_LOG_TYPE_INFO, "Signpost End: VKCImageAnalysis Visual Intelligence Coordinator", &buf, 2u);
    }

    viCoordinator = self->_viCoordinator;
  }

  return viCoordinator;
}

- (VIUVisualIntelligenceView)visualIntelligenceView
{
  visualIntelligenceView = self->_visualIntelligenceView;
  if (!visualIntelligenceView)
  {
    v4 = [(VKCImageAnalysisBaseView *)self viCoordinator];
    v5 = [v4 overlayView];
    v6 = self->_visualIntelligenceView;
    self->_visualIntelligenceView = v5;

    [(VIUVisualIntelligenceView *)self->_visualIntelligenceView setDelegate:self];
    [(VKCImageAnalysisBaseView *)self bounds];
    [(VIUVisualIntelligenceView *)self->_visualIntelligenceView setFrame:?];
    [(VKCImageBaseOverlayView *)self normalizedVisibleRect];
    [(VIUVisualIntelligenceView *)self->_visualIntelligenceView setNormalizedVisibleRect:?];
    [(VKCImageBaseOverlayView *)self contentsRect];
    [(VIUVisualIntelligenceView *)self->_visualIntelligenceView setContentsRect:?];
    visualIntelligenceView = self->_visualIntelligenceView;
  }

  return visualIntelligenceView;
}

- (VKCImageSubjectHighlightView)subjectHighlightView
{
  if (!self->_subjectHighlightView && [(VKCImageAnalysisBaseView *)self subjectHighlightFeatureFlagEnabled])
  {
    v3 = objc_alloc_init(VKCImageSubjectHighlightView);
    subjectHighlightView = self->_subjectHighlightView;
    self->_subjectHighlightView = v3;

    [(VKCImageBaseOverlayView *)self contentsRect];
    [(VKCImageSubjectBaseView *)self->_subjectHighlightView setContentsRect:?];
    [(VKCImageAnalysisBaseView *)self bounds];
    [(VKCImageSubjectHighlightView *)self->_subjectHighlightView setFrame:?];
    [(VKCImageSubjectHighlightView *)self->_subjectHighlightView setDelegate:self];
    [(VKCImageSubjectBaseView *)self->_subjectHighlightView setBaseSubjectDelegate:self];
    [(VKCImageBaseOverlayView *)self->_subjectHighlightView setBaseDelegate:self];
    v5 = [(VKCImageAnalysisBaseView *)self analysisResult];
    [(VKCImageSubjectHighlightView *)self->_subjectHighlightView setRecognitionResult:v5];

    [(VKCImageBaseOverlayView *)self normalizedVisibleRect];
    [(VKCImageSubjectHighlightView *)self->_subjectHighlightView setNormalizedVisibleRect:?];
    [(VKCImageBaseOverlayView *)self->_subjectHighlightView setIdentifierIndex:[(VKCImageBaseOverlayView *)self identifierIndex]];
    [(VKCImageAnalysisBaseView *)self configureForCurrentActiveInteractionTypes];
  }

  v6 = self->_subjectHighlightView;

  return v6;
}

- (void)scrollViewWillChange:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 object];

  v14 = VKDynamicCast(v5, v6);

  if ([(UIView *)self vk_isDescendantOfView:v14])
  {
    v7 = [v14 layer];
    v8 = [v7 animationKeys];
    v9 = [v8 count];

    if (v9)
    {
      v10 = [(VKCImageAnalysisBaseView *)self actionInfoView];
      v11 = [v10 isHidden];

      if ((v11 & 1) == 0)
      {
        [(VKCImageAnalysisBaseView *)self setActionInfoHiddenForZoomAnimation:1];
        v12 = [(VKCImageAnalysisBaseView *)self actionInfoView];
        [v12 setVk_alpha:0.0];
      }
    }

    v13 = [(VKCImageAnalysisBaseView *)self scrollViewToObserve];

    if (v14 == v13)
    {
      [(VKCImageAnalysisBaseView *)self setScrollViewToObserveCount:[(VKCImageAnalysisBaseView *)self scrollViewToObserveCount]+ 1];
    }

    else
    {
      [(VKCImageAnalysisBaseView *)self setScrollViewToObserveCount:0];
      [(VKCImageAnalysisBaseView *)self setScrollViewToObserve:v14];
    }
  }
}

- (void)willEnterLiveResize:(id)a3
{
  v4 = [(VKCImageAnalysisBaseView *)self actionInfoView];
  [v4 alpha];
  [(VKCImageAnalysisBaseView *)self setActionInfoAlphaBeforeLiveResize:?];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__VKCImageAnalysisBaseView_willEnterLiveResize___block_invoke;
  v5[3] = &unk_1E7BE4208;
  v5[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:0.1];
}

void __48__VKCImageAnalysisBaseView_willEnterLiveResize___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) actionInfoView];
  [v1 setAlpha:0.0];
}

- (void)didEndLiveResize:(id)a3
{
  [(VKCImageAnalysisBaseView *)self updateNormalizedVisibleRect];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__VKCImageAnalysisBaseView_didEndLiveResize___block_invoke;
  v4[3] = &unk_1E7BE4208;
  v4[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v4 animations:0.15];
}

void __45__VKCImageAnalysisBaseView_didEndLiveResize___block_invoke(uint64_t a1)
{
  [*(a1 + 32) actionInfoAlphaBeforeLiveResize];
  v3 = v2;
  v4 = [*(a1 + 32) actionInfoView];
  [v4 setAlpha:v3];
}

- (void)scrollViewDidChange:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 object];

  v10 = VKDynamicCast(v5, v6);

  if ([(VKCImageAnalysisBaseView *)self actionInfoHiddenForZoomAnimation])
  {
    [(VKCImageAnalysisBaseView *)self setActionInfoHiddenForZoomAnimation:0];
    [(VKCImageAnalysisBaseView *)self updateNormalizedVisibleRectIfNecessary];
    v7 = [(VKCImageAnalysisBaseView *)self actionInfoView];
    [v7 setVk_alpha:1.0];
  }

  v8 = [(VKCImageAnalysisBaseView *)self scrollViewToObserve];

  if (v10 == v8)
  {
    if ([(VKCImageAnalysisBaseView *)self scrollViewToObserveCount]>= 1)
    {
      [(VKCImageAnalysisBaseView *)self setScrollViewToObserveCount:[(VKCImageAnalysisBaseView *)self scrollViewToObserveCount]- 1];
      goto LABEL_10;
    }

    [(VKCImageAnalysisBaseView *)self setScrollViewToObserve:0];
    [(VKCImageAnalysisBaseView *)self setScrollViewToObserveCount:0];
    goto LABEL_9;
  }

  if ([(VKCImageAnalysisBaseView *)self isDescendantOfView:?])
  {
LABEL_9:
    [(VKCImageAnalysisBaseView *)self updateNormalizedVisibleRectIfNecessary];
    v9 = [(VKCImageAnalysisBaseView *)self delegate];
    [(VKCImageBaseOverlayView *)self normalizedVisibleRect];
    [v9 baseOverlayView:self didFinishTransitionToNormalizedVisibleRect:?];
  }

LABEL_10:
}

- (void)setScrollViewToObserve:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewToObserve);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_scrollViewToObserve);
    [v5 _removeScrollViewScrollObserver:self];

    v6 = objc_storeWeak(&self->_scrollViewToObserve, obj);
    [obj _addScrollViewScrollObserver:self];
  }
}

- (void)highlightMatchesWithString:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v15[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [(VKCImageAnalysisBaseView *)self setHighlightStrings:v7];

  v8 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = self;
    _os_log_impl(&dword_1B4335000, v8, OS_LOG_TYPE_DEFAULT, "Activating String Highlight Matches Activated: %@", &v13, 0xCu);
  }

  [(VKCImageAnalysisBaseView *)self setStringHighlightsActive:1];
  [(VKCImageAnalysisBaseView *)self configureForCurrentActiveInteractionTypes];
  v9 = [(VKCImageAnalysisBaseView *)self analysisResult];
  v10 = [v9 text];

  if (v10)
  {
    v11 = [v10 vk_rangesOfMatchesForString:v6];
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  v12 = [(VKCImageAnalysisBaseView *)self regexHighlightView];
  [v12 beginHighlightWithRanges:v11 animated:v4];
}

- (void)clearRegexHighlightsAnimated:(BOOL)a3 updateActiveTypes:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v11 = *MEMORY[0x1E69E9840];
  if ([(VKCImageAnalysisBaseView *)self stringHighlightsActive])
  {
    v7 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = self;
      _os_log_impl(&dword_1B4335000, v7, OS_LOG_TYPE_DEFAULT, "String Highlight Matches Deactivated: %@", &v9, 0xCu);
    }

    [(VKCImageAnalysisBaseView *)self setStringHighlightsActive:0];
    v8 = [(VKCImageAnalysisBaseView *)self regexHighlightViewIfExists];
    [v8 clearHighlightsAnimated:v5];

    [(VKCImageAnalysisBaseView *)self setHighlightStrings:0];
    if (v4)
    {
      [(VKCImageAnalysisBaseView *)self configureForCurrentActiveInteractionTypes];
    }
  }
}

- (void)subjectBaseViewViewDidCompleteSubjectAnalysis:(id)a3
{
  [(VKCImageAnalysisBaseView *)self updateDebugButtonIfNecessary];
  if ([(VKCImageAnalysisBaseView *)self _photosInfoSingleTapSubjectModeEnabled])
  {
    if (([(VKCImageAnalysisBaseView *)self activeInteractionTypes]& 4) != 0)
    {
      v4 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
      v5 = [v4 subjectContext];
      v6 = [v5 subjectCount];

      if (v6)
      {
        v7 = [(VKCImageAnalysisBaseView *)self visualSearchView];
        [v7 updateVisibleItems];

        v8 = [(VKCImageAnalysisBaseView *)self visualSearchView];
        [v8 animateDotsIn];
      }
    }
  }

  v9 = [(VKCImageAnalysisBaseView *)self delegate];
  [v9 baseOverlayViewDidCompleteSubjectAnalysis:self];
}

- (void)subjectBaseViewDidBeginSubjectAnalysis:(id)a3
{
  v4 = [(VKCImageAnalysisBaseView *)self delegate];
  [v4 baseOverlayViewDidBeginSubjectAnalysis:self];
}

- (void)subjectBaseView:(id)a3 analyticsEventOccurred:(id)a4
{
  v5 = a4;
  v6 = [(VKCImageAnalysisBaseView *)self delegate];
  [v6 baseOverlayView:self analyticsEventDidOccur:v5];
}

- (BOOL)subjectHighlightView:(id)a3 shouldBeginInteractionAtPoint:(CGPoint)a4 withType:(unint64_t)a5
{
  v5 = self;
  [(VKCImageAnalysisBaseView *)self convertPoint:a3 fromView:a5, a4.x, a4.y];
  v7 = v6;
  v9 = v8;
  v10 = [(VKCImageAnalysisBaseView *)v5 delegate];
  LOBYTE(v5) = [v10 baseOverlayView:v5 shouldBeginInteractionAtPoint:8 withTypes:{v7, v9}];

  return v5;
}

- (void)subjectHighlightView:(id)a3 willBeginInteractionAtPoint:(CGPoint)a4 withType:(unint64_t)a5
{
  v7 = [VKTextRange emptyRange:a3];
  v6 = [(VKCImageAnalysisBaseView *)self textSelectionView];
  [v6 setSelectedVKRange:v7];
}

- (void)subjectHighlightViewSubjectInteractionInProgressDidChange:(id)a3
{
  v4 = [(VKCImageAnalysisBaseView *)self delegate];
  [v4 baseOverlayViewSubjectInteractionInProgressDidChange:self];
}

- (BOOL)isSubjectHighlightShowingLivePhoto:(id)a3 delegateHasImplementation:(BOOL *)a4
{
  v6 = [(VKCImageAnalysisBaseView *)self delegate];
  LOBYTE(a4) = [v6 isBaseOverlayViewShowingLivePhoto:self delegateHasImplementation:a4];

  return a4;
}

- (void)subjectHighlightView:(id)a3 livePhotoShouldPlay:(BOOL)a4
{
  v4 = a4;
  v6 = [(VKCImageAnalysisBaseView *)self delegate];
  [v6 baseOverlayView:self livePhotoShouldPlay:v4];
}

- (id)presentingViewControllerForSubjectHighlightView:(id)a3
{
  v3 = [(VKCImageAnalysisBaseView *)self delegate];
  v4 = [v3 presentingViewControllerForImageAnalysisInteraction];

  return v4;
}

- (BOOL)subjectHighlightView:(id)a3 containsVSItemForNormalizedPath:(id)a4
{
  v5 = a4;
  v6 = [(VKCImageAnalysisBaseView *)self visualSearchView];
  v7 = [v6 visualSearchResult];
  v8 = [v7 resultItems];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__VKCImageAnalysisBaseView_subjectHighlightView_containsVSItemForNormalizedPath___block_invoke;
  v12[3] = &unk_1E7BE68C0;
  v13 = v5;
  v9 = v5;
  v10 = [v8 vk_objectsPassingTest:v12];
  LOBYTE(v7) = [v10 count] == 1;

  return v7;
}

uint64_t __81__VKCImageAnalysisBaseView_subjectHighlightView_containsVSItemForNormalizedPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasFocalPoint])
  {
    v4 = *(a1 + 32);
    [v3 normalizedIconLocation];
    v5 = [v4 containsPoint:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)subjectHighlightView:(id)a3 activateVSItemForNormalizedPath:(id)a4
{
  v5 = a4;
  v6 = [(VKCImageAnalysisBaseView *)self visualSearchView];
  v7 = [v6 visualSearchResult];
  v8 = [v7 resultItems];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__VKCImageAnalysisBaseView_subjectHighlightView_activateVSItemForNormalizedPath___block_invoke;
  v15[3] = &unk_1E7BE68C0;
  v9 = v5;
  v16 = v9;
  v10 = [v8 vk_objectPassingTest:v15];
  if (v10)
  {
    v11 = [(VKCImageAnalysisBaseView *)self delegate];
    v12 = [v11 baseOverlayView:self shouldShowLookupForItemFromCallout:v10];

    if (v12)
    {
      v13 = [(VKCImageAnalysisBaseView *)self activeInteractionTypes];
      [(VKCImageAnalysisBaseView *)self setActiveInteractionTypes:4];
      [v10 setCurrentInvocationType:2];
      v14 = [(VKCImageAnalysisBaseView *)self visualSearchView];
      [v14 presentVisualSearchForItem:v10];

      [(VKCImageAnalysisBaseView *)self setActiveInteractionTypes:v13];
    }
  }

  else
  {
    [VKAssert handleFailedAssertWithCondition:"item != ((void*)0)" functionName:"[VKCImageAnalysisBaseView subjectHighlightView:activateVSItemForNormalizedPath:]" simulateCrash:0 showAlert:0 format:@"Trying to show lookup for an item, but no item was found."];
  }
}

uint64_t __81__VKCImageAnalysisBaseView_subjectHighlightView_activateVSItemForNormalizedPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasFocalPoint])
  {
    v4 = *(a1 + 32);
    [v3 normalizedIconLocation];
    v5 = [v4 containsPoint:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)videoPreviewAvailableForSubjectHighlightView:(id)a3
{
  v4 = [(VKCImageAnalysisBaseView *)self delegate];
  [v4 videoPreviewAvailableForBaseOverlayView:self];
}

- (BOOL)presentVisualSearchForItem:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.visualSearch");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = v4;
    v19 = 2112;
    v20 = self;
    _os_log_impl(&dword_1B4335000, v5, OS_LOG_TYPE_DEFAULT, "Presenting visual search result for item: %@: %@", &v17, 0x16u);
  }

  v6 = [(VKCImageAnalysisBaseView *)self visualSearchView];
  v7 = [v6 visualSearchResult];
  v8 = [v7 resultItems];
  v9 = [v8 containsObject:v4];

  if (v9)
  {
    v10 = [(VKCImageAnalysisBaseView *)self activeInteractionTypes];
    [(VKCImageAnalysisBaseView *)self setActiveInteractionTypes:4];
    v11 = [(VKCImageAnalysisBaseView *)self visualSearchView];
    [v11 presentVisualSearchForItem:v4];

    if (([v4 shouldPlaceInCorner] & 1) == 0 && -[VKCImageAnalysisBaseView _photosInfoSingleTapSubjectModeEnabled](self, "_photosInfoSingleTapSubjectModeEnabled"))
    {
      v12 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
      [v4 normalizedIconLocation];
      [v12 viewPointFromNormalizedPoint:?];
      v13 = [v12 indexOfSubjectAtPoint:?];
      v14 = v13;
      if (v13)
      {
        v15 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(v13, "integerValue")}];
        [v12 highlightSubjectAtIndexSet:v15 showCallout:0 showBurst:0 burstPoint:1 animated:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
      }
    }

    [(VKCImageAnalysisBaseView *)self setActiveInteractionTypes:v10];
  }

  return v9;
}

- (id)tempPNGURLForSubjectHighlightView:(id)a3
{
  v4 = VKBundle();
  v5 = [v4 localizedStringForKey:@"VK_SUBJECT_SHARE_FILE_NAME" value:@"VK_SUBJECT_SHARE_FILE_NAME" table:@"Localizable"];
  v6 = [(VKCImageAnalysisBaseView *)self disposableSubjectPNGURLWithTitle:v5];

  return v6;
}

- (id)previewForDataDetectorElementView:(id)a3
{
  v4 = a3;
  v5 = [(VKCImageAnalysisBaseView *)self delegate];
  v6 = [v5 previewForDataDetectorElementView:v4];

  return v6;
}

- (void)dataDetectorView:(id)a3 analyticsEventOccured:(id)a4
{
  v5 = a4;
  v6 = [(VKCImageAnalysisBaseView *)self delegate];
  [v6 baseOverlayView:self analyticsEventDidOccur:v5];
}

- (id)viewForImageSnapshotForTextSelectionView:(id)a3
{
  v4 = [(VKCImageAnalysisBaseView *)self delegate];
  v5 = [v4 viewForImageSnapshotForBaseView:self];

  return v5;
}

- (id)previewImageForDataDetectorElementView:(id)a3
{
  v4 = [(VKCImageAnalysisBaseView *)self delegate];
  v5 = [v4 imageForImageSnapshotForBaseView:self];

  return v5;
}

- (BOOL)textSelectionView:(id)a3 shouldBeginAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  [(VKCImageAnalysisBaseView *)self convertPoint:a3 fromView:?];
  v8 = v7;
  v10 = v9;
  if ([(VKCImageAnalysisBaseView *)self hasActiveTextSelection]|| [(VKCImageAnalysisBaseView *)self containsTextAtPoint:x, y])
  {
    v11 = [(VKCImageAnalysisBaseView *)self delegate];
    v12 = [v11 baseOverlayView:self shouldBeginInteractionAtPoint:1 withTypes:{v8, v10}];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(VKCImageAnalysisBaseView *)self debugImageView];

  if (v13)
  {
    v14 = [(VKCImageAnalysisBaseView *)self debugImageView];
    [v14 frame];
    v17.x = v8;
    v17.y = v10;
    v15 = CGRectContainsPoint(v18, v17);

    return !v15 & v12;
  }

  return v12;
}

- (void)textSelectionView:(id)a3 requestsDataDetectorActivationAtPoint:(CGPoint)a4
{
  [(VKCImageAnalysisBaseView *)self convertPoint:a3 fromView:a4.x, a4.y];
  v6 = v5;
  v8 = v7;
  v10 = [(VKCImageAnalysisBaseView *)self dataDetectorView];
  [(VKCImageAnalysisBaseView *)self currentExtraOffsetForViewScale];
  [v10 activateLongPressDataDetectorAtPoint:v6 maxDistance:{v8, v9}];
}

- (void)textSelectionView:(id)a3 selectionDidChange:(id)a4
{
  v5 = MEMORY[0x1E696AD88];
  v6 = a3;
  v7 = [v5 defaultCenter];
  [v7 postNotificationName:@"VKCImageTextSelectionViewSelectionDidChange" object:v6];

  [(VKCImageAnalysisBaseView *)self set_hasActiveTextSelection:[(VKCImageAnalysisBaseView *)self hasActiveTextSelection]];
  [(VKCImageAnalysisBaseView *)self clearStringHighlightsAnimated:0];
  v8 = [(VKCImageAnalysisBaseView *)self delegate];
  [v8 textSelectionDidChangeForBaseOverlayView:self];
}

- (void)textSelectionView:(id)a3 boundsDidChangeFromRect:(CGRect)a4 toRect:(CGRect)a5
{
  [(VKCImageAnalysisBaseView *)self invalidateVisibleTextAreaInfo:a3];

  [(VKCImageAnalysisBaseView *)self updateNormalizedVisibleRectIfNecessary];
}

- (id)presentingViewControllerForTextSelectionView:(id)a3
{
  v3 = [(VKCImageAnalysisBaseView *)self delegate];
  v4 = [v3 presentingViewControllerForImageAnalysisInteraction];

  return v4;
}

- (void)textSelectionView:(id)a3 prepareForCalloutAction:(SEL)a4 completion:(id)a5
{
  v7 = a5;
  v8 = [(VKCImageAnalysisBaseView *)self delegate];
  [v8 baseOverlayView:self prepareForCalloutAction:a4 completion:v7];
}

- (void)subjectHighlightView:(id)a3 prepareForCalloutAction:(SEL)a4 completion:(id)a5
{
  v7 = a5;
  v8 = [(VKCImageAnalysisBaseView *)self delegate];
  [v8 baseOverlayView:self prepareForCalloutAction:a4 completion:v7];
}

- (id)textSelectionView:(id)a3 updateStringForCopy:(id)a4
{
  v5 = a4;
  v6 = [(VKCImageAnalysisBaseView *)self delegate];
  v7 = [v6 baseOverlayView:self updateStringForCopy:v5];

  return v7;
}

- (id)textSelectionView:(id)a3 updateAttributedStringForCopy:(id)a4
{
  v5 = a4;
  v6 = [(VKCImageAnalysisBaseView *)self delegate];
  v7 = [v6 baseOverlayView:self updateAttributedStringForCopy:v5];

  return v7;
}

- (BOOL)textSelectionView:(id)a3 shouldHandleShareWithRanges:(id)a4 boundingRect:(CGRect)a5 selectedText:(id)a6 selectedAttributedText:(id)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14 = a7;
  v15 = a6;
  v16 = a4;
  v17 = [(VKCImageAnalysisBaseView *)self delegate];
  LOBYTE(self) = [v17 baseOverlayView:self shouldHandleShareWithRanges:v16 boundingRect:v15 selectedText:v14 selectedAttributedText:{x, y, width, height}];

  return self;
}

- (BOOL)dataDetectorView:(id)a3 dataDetectorInteractionShouldBeginAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = self;
  v7 = [(VKCImageAnalysisBaseView *)self delegate];
  LOBYTE(v6) = [v7 baseOverlayView:v6 shouldBeginInteractionAtPoint:2 withTypes:{x, y}];

  return v6;
}

- (void)willDisplayMenuForDataDetectorView:(id)a3
{
  v6 = [(VKCImageAnalysisBaseView *)self textSelectionView];
  v4 = [v6 selectedVKRange];
  [(VKCImageAnalysisBaseView *)self setSelectedTextRangeBeforeDataDetectorMenu:v4];

  v5 = +[VKTextRange emptyRange];
  [v6 setSelectedVKRange:v5];
}

- (void)willDismissMenuForDataDetectorView:(id)a3
{
  v4 = [(VKCImageAnalysisBaseView *)self selectedTextRangeBeforeDataDetectorMenu];
  v5 = [(VKCImageAnalysisBaseView *)self textSelectionView];
  [v5 setSelectedVKRange:v4];

  [(VKCImageAnalysisBaseView *)self setSelectedTextRangeBeforeDataDetectorMenu:0];
}

- (BOOL)visualSearchItemView:(id)a3 shouldBeginAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = self;
  v7 = [(VKCImageAnalysisBaseView *)self delegate];
  LOBYTE(v6) = [v7 baseOverlayView:v6 shouldBeginInteractionAtPoint:4 withTypes:{x, y}];

  return v6;
}

- (void)textSelectionView:(id)a3 analyticsEventOccured:(id)a4
{
  v5 = a4;
  v6 = [(VKCImageAnalysisBaseView *)self delegate];
  [v6 baseOverlayView:self analyticsEventDidOccur:v5];
}

- (id)nonTextNormalizedHighlightAllQuadsForTextSelectionView:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [(VKCImageAnalysisBaseView *)self dataDetectorView];
  v6 = [v5 displayedElements];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__VKCImageAnalysisBaseView_nonTextNormalizedHighlightAllQuadsForTextSelectionView___block_invoke;
  v9[3] = &unk_1E7BE67F8;
  v7 = v4;
  v10 = v7;
  [v6 enumerateObjectsUsingBlock:v9];

  return v7;
}

void __83__VKCImageAnalysisBaseView_nonTextNormalizedHighlightAllQuadsForTextSelectionView___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 isMRCDataDetector])
  {
    v3 = *(a1 + 32);
    v4 = [v5 boundingQuads];
    [v3 addObjectsFromArray:v4];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(VKCImageAnalysisBaseView *)self analysisResult];
  v7 = [v3 stringWithFormat:@"<%@: %p> id: %d", v5, self, objc_msgSend(v6, "analysisRequestID")];

  return v7;
}

- (id)summaryDescription
{
  v2 = [(VKCImageAnalysisBaseView *)self textSelectionView];
  v3 = [v2 text];
  v4 = [v3 vk_substringToIndex:40];

  return v4;
}

- (void)triggerTapToRadar
{
  v2 = [(VKCImageAnalysisBaseView *)self delegate];
  [v2 triggerTapToRadar];
}

- (id)textSelectionView:(id)a3 closestVisualSearchItemForRange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VKCImageAnalysisBaseView *)self visualSearchView];
  v9 = [v8 visualSearchResult];
  v10 = [v9 resultItems];

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__12;
  v25 = __Block_byref_object_dispose__12;
  v26 = [v10 firstObject];
  if ([v10 count] >= 2)
  {
    v11 = [(VKCImageAnalysisBaseView *)self textSelectionView];
    [v11 selectionQuadsVertexCentroid];
    v13 = v12;
    v15 = v14;

    if (v13 != *MEMORY[0x1E695EFF8] || v15 != *(MEMORY[0x1E695EFF8] + 8))
    {
      v20[0] = 0;
      v20[1] = v20;
      v20[2] = 0x2020000000;
      v20[3] = 0x7FF0000000000000;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __78__VKCImageAnalysisBaseView_textSelectionView_closestVisualSearchItemForRange___block_invoke;
      v19[3] = &unk_1E7BE68E8;
      *&v19[7] = v13;
      *&v19[8] = v15;
      v19[4] = self;
      v19[5] = v20;
      v19[6] = &v21;
      [v10 enumerateObjectsUsingBlock:v19];
      _Block_object_dispose(v20, 8);
    }
  }

  v17 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v17;
}

void __78__VKCImageAnalysisBaseView_textSelectionView_closestVisualSearchItemForRange___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v4 = [v13 shouldPlaceInCorner];
  v5 = v13;
  if ((v4 & 1) == 0)
  {
    [v13 normalizedBoundingBox];
    v6 = [VKQuad quadFromCGRect:?];
    v7 = [*(a1 + 32) visualSearchView];
    v8 = [v7 viewQuadFromNormalizedQuad:v6];

    [v8 vertexCentroid];
    v11 = VKMDistance(*(a1 + 56), *(a1 + 64), v9, v10);
    v12 = *(*(a1 + 40) + 8);
    if (v11 < *(v12 + 24))
    {
      *(v12 + 24) = v11;
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    }

    v5 = v13;
  }
}

- (void)generateTextualVisualSearchResultForQueryInfo:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VKCImageAnalysisBaseView *)self delegate];
  [v8 generateTextualVisualSearchResultForQueryInfo:v7 completionHandler:v6];
}

- (id)visualSearchResultItems
{
  v2 = [(VKCImageAnalysisBaseView *)self analysisResult];
  v3 = [v2 visualSearchResultItems];

  return v3;
}

- (void)visualSearchItemView:(id)a3 didTapVisualSearchIndicatorWithNormalizedBoundingBox:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [(VKCImageAnalysisBaseView *)self delegate];
  [v9 baseOverlayView:self didTapVisualSearchIndicatorWithNormalizedBoundingBox:{x, y, width, height}];
}

- (void)visualSearchItemViewDidDismissController:(id)a3
{
  [(VKCImageAnalysisBaseView *)self setVsItemPresentedFromMenu:0];
  v4 = [(VKCImageAnalysisBaseView *)self delegate];
  [v4 baseOverlayViewDismissVisualSearchController:self];
}

- (void)generateVisualSearchResultForItems:(id)a3 queryID:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(VKCImageAnalysisBaseView *)self delegate];
  [v10 generateVisualSearchResultForItems:v9 queryID:a4 completionHandler:v8];
}

- (void)submitVisualSearchUserFeedbackForReportIdentifier:(id)a3 userFeedbackPayload:(id)a4 sfReportData:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(VKCImageAnalysisBaseView *)self delegate];
  [v11 submitVisualSearchUserFeedbackForReportIdentifier:v10 userFeedbackPayload:v9 sfReportData:v8];
}

- (void)visualSearchView:(id)a3 analyticsEventOccured:(id)a4
{
  v5 = a4;
  v6 = [(VKCImageAnalysisBaseView *)self delegate];
  [v6 baseOverlayView:self analyticsEventDidOccur:v5];
}

- (id)visualSearchView:(id)a3 normalizedPathForSubjectAtNormalizedPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  v8 = [v7 subjectContext];

  v9 = [v8 indexOfSubjectAtNormalizedPoint:{x, y}];
  if (v9)
  {
    [(VKCImageBaseOverlayView *)self contentsRect];
    v10 = [v8 normalizedPathForSubjectAtIndex:v9 contentsRect:1 topLevelOnly:?];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)visualSearchItemViewDidActivateVSItem:(id)a3
{
  v4 = a3;
  v5 = [(VKCImageAnalysisBaseView *)self delegate];
  v6 = [v5 automaticallyShowVisualSearchResults];

  if (v6)
  {
    v7 = [v4 visualSearchResultItem];
    v8 = [v7 analysis];
    v9 = [v8 imageAnalysisResult];
    v10 = [v9 request];

    v11 = [v4 visualSearchResultItem];
    v12 = [v11 currentInvocationType];

    if (v12)
    {
      v13 = +[VKImageAnalyzerMadInterface sharedInterface];
      [v13 didShowVisualSearchHintsForRequest:v10 invocationType:v12];
    }

    else
    {
      v14 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.visualSearch");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(VKCImageAnalysisBaseView *)self visualSearchItemViewDidActivateVSItem:v14];
      }
    }
  }
}

- (id)presentingViewControllerForImageAnalysisInteraction
{
  v2 = [(VKCImageAnalysisBaseView *)self delegate];
  v3 = [v2 presentingViewControllerForImageAnalysisInteraction];

  return v3;
}

- (void)setDidAddVisualSearchCornerView:(BOOL)a3
{
  v3 = a3;
  v4 = [(VKCImageAnalysisBaseView *)self visualSearchView];
  [v4 setDidAddVisualSearchCornerView:v3];
}

- (BOOL)visualSearchView:(id)a3 shouldShowDotForItem:(id)a4 allItems:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(VKCImageAnalysisBaseView *)self _photosInfoSingleTapSubjectModeEnabled])
  {
    v9 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
    v10 = [v9 subjectContext];

    if (v10)
    {
      v11 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
      v12 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
      v13 = [v12 subjectContext];
      v14 = [v13 subjectCount];

      if (v14)
      {
        [v7 normalizedIconLocation];
        [(VKCImageBaseOverlayView *)self viewPointFromNormalizedPoint:?];
        v15 = [v11 indexOfSubjectAtPoint:?];
        if (v15)
        {
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __75__VKCImageAnalysisBaseView_visualSearchView_shouldShowDotForItem_allItems___block_invoke;
          v18[3] = &unk_1E7BE6910;
          v18[4] = self;
          v19 = v11;
          v20 = v7;
          v21 = v15;
          v16 = [v8 vk_containsObjectPassingTest:v18];
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        [v8 count];
        v16 = 1;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

BOOL __75__VKCImageAnalysisBaseView_visualSearchView_shouldShowDotForItem_allItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 normalizedIconLocation];
  [v3 viewPointFromNormalizedPoint:?];
  v5 = [*(a1 + 40) indexOfSubjectAtPoint:?];
  v6 = *(a1 + 48);

  v7 = v6 != v4 && v5 == *(a1 + 56);
  return v7;
}

- (void)automaticallyShowVisualSearchResultsIfApplicable
{
  if (![(VKCImageAnalysisBaseView *)self _photosInfoSingleTapSubjectModeEnabled])
  {
    v3 = [(VKCImageAnalysisBaseView *)self visualSearchView];
    [v3 automaticallyShowVisualSearchResults];
  }
}

- (void)showTopVisualSearchResult
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&dword_1B4335000, v3, OS_LOG_TYPE_DEFAULT, "ShowTopVisualSearchResult: %@", &v5, 0xCu);
  }

  v4 = [(VKCImageAnalysisBaseView *)self visualSearchView];
  [v4 showTopVisualSearchResult];
}

- (void)addMetadataToVSFeedbackItem:(id)a3
{
  v4 = a3;
  v5 = [(VKCImageAnalysisBaseView *)self analysisResult];
  v6 = [v5 analysisRequestID];

  v7 = [(VKCImageAnalysisBaseView *)self analysisResult];
  v8 = [v7 request];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__VKCImageAnalysisBaseView_addMetadataToVSFeedbackItem___block_invoke;
  v10[3] = &unk_1E7BE6938;
  v11 = v8;
  v12 = v6;
  v9 = v8;
  [v4 setReportAnIssueMetadataFetchingBlock:v10];
}

id __56__VKCImageAnalysisBaseView_addMetadataToVSFeedbackItem___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) blockingCreatePNGAssetDataWithError:0];
  if (v4)
  {
    v5 = *MEMORY[0x1E69C7528];
    if ([v3 containsObject:*MEMORY[0x1E69C7528]])
    {
      v8 = v5;
      v9[0] = v4;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
      goto LABEL_6;
    }
  }

  else
  {
    [VKAssert handleFailedAssertWithCondition:"data != ((void*)0)" functionName:"[VKCImageAnalysisBaseView addMetadataToVSFeedbackItem:]_block_invoke" simulateCrash:0 showAlert:0 format:@"preview image is nil for VSFeedbackItem. Request: %d", *(a1 + 40)];
  }

  v6 = MEMORY[0x1E695E0F8];
LABEL_6:

  return v6;
}

- (void)addAsyncMRCElement:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(VKCImageAnalysisBaseView *)self dataDetectorView];
  [v5 appendMRCAsyncElement:v4];

  v6 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1B4335000, v6, OS_LOG_TYPE_DEFAULT, "Added asyncMRCInfo with element: %@", &v7, 0xCu);
  }
}

- (void)createStickerRepresentationsAtIndexSet:(id)a3 type:(unint64_t)a4 stickerIDs:(id)a5 progress:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [v16 createStickerRepresentationsAtIndexSet:v15 type:a4 stickerIDs:v14 progress:v13 completion:v12];
}

- (id)videoPreviewSubjectMatteAtCompositionTime:(id *)a3
{
  v4 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  v7 = *a3;
  v5 = [v4 videoPreviewSubjectMatteAtCompositionTime:&v7];

  return v5;
}

- (id)videoPreviewSubjectMatteForImage:(id)a3 atCompositionTime:(id *)a4
{
  v6 = a3;
  v7 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  v10 = *a4;
  v8 = [v7 videoPreviewSubjectMatteForImage:v6 atCompositionTime:&v10];

  return v8;
}

- ($58EB755F713D70195D081A2438463C76)videoPreviewTimeRange
{
  v4 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
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
  v2 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
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

- (void)sendAnalysisDidChangeAnalyticsEvent
{
  v3 = [VKAnalyticsInteractionEvent alloc];
  v4 = [(VKCImageAnalysisBaseView *)self analysisResult];
  v5 = [(VKCImageAnalysisBaseView *)self activeInteractionTypes];
  v6 = [(VKCImageBaseOverlayView *)self customAnalyticsIdentifier];
  v8 = [(VKAnalyticsInteractionEvent *)v3 initWithEventType:2 analysis:v4 source:0 interactionTypes:v5 buttonActive:0 customIdentifier:v6];

  v7 = [(VKCImageAnalysisBaseView *)self delegate];
  [v7 baseOverlayView:self analyticsEventDidOccur:v8];
}

- (void)sendActiveInteractionTypesDidChangeAnalyticsEvent
{
  v3 = [VKAnalyticsInteractionEvent alloc];
  v4 = [(VKCImageAnalysisBaseView *)self analysisResult];
  v5 = [(VKCImageAnalysisBaseView *)self activeInteractionTypes];
  v6 = [(VKCImageBaseOverlayView *)self customAnalyticsIdentifier];
  v8 = [(VKAnalyticsInteractionEvent *)v3 initWithEventType:1 analysis:v4 source:0 interactionTypes:v5 buttonActive:0 customIdentifier:v6];

  v7 = [(VKCImageAnalysisBaseView *)self delegate];
  [v7 baseOverlayView:self analyticsEventDidOccur:v8];
}

- (void)sendVisualSearchAnalyticsWithDidBecomeActive:(BOOL)a3
{
  v3 = a3;
  v11 = [(VKCImageAnalysisBaseView *)self visualSearchView];
  v5 = [VKAnalyticsVisualSearchEvent alloc];
  v6 = [v11 visualSearchResult];
  v7 = [v6 resultItems];
  v8 = [(VKCImageBaseOverlayView *)self customAnalyticsIdentifier];
  v9 = [(VKAnalyticsVisualSearchEvent *)v5 initWithType:!v3 items:v7 interactedItem:0 serverProcessingTime:v8 customIdentifier:0.0];

  v10 = [(VKCImageAnalysisBaseView *)self delegate];
  [v10 baseOverlayView:self analyticsEventDidOccur:v9];
}

- (void)sendQuickActionAnalyticsWithDidBecomeVisible:(BOOL)a3
{
  v4 = a3;
  v5 = [VKAnalyticsQuickActionEvent alloc];
  v6 = [(VKCImageAnalysisBaseView *)self quickActions];
  v7 = [v6 count];
  v8 = [(VKCImageAnalysisBaseView *)self analysisResult];
  v9 = [v8 text];
  v10 = [v9 length];
  v11 = [(VKCImageBaseOverlayView *)self customAnalyticsIdentifier];
  v13 = [(VKAnalyticsQuickActionEvent *)v5 initWithQuickActionType:0 quickActionsCount:v7 textLength:v10 eventType:v4 customIdentifier:v11];

  v12 = [(VKCImageAnalysisBaseView *)self delegate];
  [v12 baseOverlayView:self analyticsEventDidOccur:v13];
}

- (id)highlightView:(id)a3 selectionRectsForRanges:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VKCImageAnalysisBaseView *)self analysisResult];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__12;
  v43 = __Block_byref_object_dispose__12;
  v44 = 0;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __66__VKCImageAnalysisBaseView_highlightView_selectionRectsForRanges___block_invoke;
  v36[3] = &unk_1E7BE5A30;
  v38 = &v39;
  v9 = v8;
  v37 = v9;
  [v7 enumerateObjectsUsingBlock:v36];
  v27 = v7;
  v28 = v6;
  v10 = [v40[5] vk_rangeArray];
  v11 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v12 = [v9 text];
  for (i = 0; i < [v10 count] - 1; ++i)
  {
    v14 = [v10 objectAtIndexedSubscript:i];
    v15 = [v14 rangeValue];
    v17 = v16;

    v18 = [v10 objectAtIndexedSubscript:i + 1];
    v19 = [v18 rangeValue];

    v20 = v15 + v17;
    if (v19 - v20 == 1 && ([v11 characterIsMember:{objc_msgSend(v12, "characterAtIndex:", v20)}] & 1) != 0)
    {
      [v40[5] addIndex:v20];
    }
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__12;
  v34 = __Block_byref_object_dispose__12;
  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = v40[5];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __66__VKCImageAnalysisBaseView_highlightView_selectionRectsForRanges___block_invoke_2;
  v29[3] = &unk_1E7BE6960;
  v29[4] = self;
  v29[5] = &v30;
  [v21 enumerateRangesUsingBlock:v29];
  v22 = [v31[5] copy];
  v23 = v22;
  v24 = MEMORY[0x1E695E0F0];
  if (v22)
  {
    v24 = v22;
  }

  v25 = v24;

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v39, 8);

  return v25;
}

void __66__VKCImageAnalysisBaseView_highlightView_selectionRectsForRanges___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v13 = v3;
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v13;
    v4 = *(*(*(a1 + 40) + 8) + 40);
  }

  v8 = *(a1 + 32);
  v9 = [v3 start];
  v10 = [v8 smallestSelectableRangeForPosition:v9];
  v11 = [v10 nsRange];
  [v4 addIndexesInRange:{v11, v12}];
}

void __66__VKCImageAnalysisBaseView_highlightView_selectionRectsForRanges___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v8 = [*(a1 + 32) textSelectionView];
  v6 = [[VKTextRange alloc] initWithRange:a2, a3];
  v7 = [v8 selectionRectsForRange:v6];
  [v5 vk_addObjectsFromNonNilArray:v7];
}

- (void)visualIntelligenceView:(id)a3 isSheetPresentedDidChangeToValue:(BOOL)a4
{
  v5 = [(VKCImageAnalysisBaseView *)self delegate:a3];
  [v5 visualIntelligenceSheetPresentedDidChangeForBaseOverlayView:self];
}

- (void)visualIntelligenceView:(id)a3 isDraggingSheetDidChange:(BOOL)a4
{
  v4 = a4;
  v6 = [(VKCImageAnalysisBaseView *)self delegate];
  [v6 visualIntelligenceSheetIsDraggingDidChange:v4 forBaseOverlayView:self];
}

- (void)visualIntelligenceView:(id)a3 didRequestVluEnabled:(BOOL)a4
{
  v4 = a4;
  v6 = [(VKCImageAnalysisBaseView *)self delegate];
  [v6 visualIntelligenceDidRequestVluEnabled:v4 forBaseOverlayView:self];
}

- (void)willDisplayMenuForActionInfoButton:(id)a3
{
  v5 = a3;
  v4 = [(VKCImageAnalysisBaseView *)self textSelectionView];
  [v4 suppressSelectionViewGrabbers];

  [(VKCImageAnalysisBaseView *)self actionInfoButtonDidActivatePrimaryAction:v5];
}

- (void)willHideMenuForActionInfoButton:(id)a3
{
  v3 = [(VKCImageAnalysisBaseView *)self textSelectionView];
  [v3 unsuppressSelectionViewGrabbers];
}

- (void)actionInfoButtonDidActivatePrimaryAction:(id)a3
{
  v4 = [a3 representedElement];
  v14 = VKMUIStringForDDTypes([v4 dataDetectorTypes]);

  v5 = [VKAnalyticsQuickActionEvent alloc];
  v6 = [(VKCImageAnalysisBaseView *)self quickActions];
  v7 = [v6 count];
  v8 = [(VKCImageAnalysisBaseView *)self analysisResult];
  v9 = [v8 text];
  v10 = [v9 length];
  v11 = [(VKCImageBaseOverlayView *)self customAnalyticsIdentifier];
  v12 = [(VKAnalyticsQuickActionEvent *)v5 initWithQuickActionType:v14 quickActionsCount:v7 textLength:v10 eventType:2 customIdentifier:v11];

  v13 = [(VKCImageAnalysisBaseView *)self delegate];
  [v13 baseOverlayView:self analyticsEventDidOccur:v12];
}

- (id)disposableFolderPath
{
  v2 = NSTemporaryDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"VKTemp"];

  return v3;
}

- (id)disposableSubjectPNGURLWithTitle:(id)a3
{
  v4 = a3;
  v5 = [(VKCImageAnalysisBaseView *)self disposableFolderPath];
  v6 = [MEMORY[0x1E696AFB0] UUID];
  v7 = [v6 UUIDString];
  v8 = [v5 stringByAppendingPathComponent:v7];

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  if (([v9 fileExistsAtPath:v8] & 1) == 0)
  {
    [v9 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:0];
  }

  v10 = [v8 stringByAppendingPathComponent:v4];

  v11 = [v10 stringByAppendingPathExtension:@"png"];

  v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11];

  return v12;
}

- (void)deleteDisposableFiles
{
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [(VKCImageAnalysisBaseView *)self disposableFolderPath];
  [v4 removeItemAtPath:v3 error:0];
}

- (id)loggingParentObject
{
  WeakRetained = objc_loadWeakRetained(&self->_loggingParentObject);

  return WeakRetained;
}

- (VKCImageAnalysisBaseViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (VKVisibleTextAreaInfo)visibleTextAreaInfo
{
  v3 = *&self[22].boundingBoxArea;
  *&retstr->boundingBoxArea = *&self[21].minQuadHeight;
  *&retstr->maxQuadHeight = v3;
  retstr->dataDetectors = *&self[22].maxQuadHeight;
  return self;
}

- (void)setVisibleTextAreaInfo:(VKVisibleTextAreaInfo *)a3
{
  dataDetectors = a3->dataDetectors;
  v4 = *&a3->maxQuadHeight;
  *&self->_visibleTextAreaInfo.boundingBoxArea = *&a3->boundingBoxArea;
  *&self->_visibleTextAreaInfo.maxQuadHeight = v4;
  self->_visibleTextAreaInfo.dataDetectors = dataDetectors;
}

- (UIView)viewForObservingContentMode
{
  WeakRetained = objc_loadWeakRetained(&self->_viewForObservingContentMode);

  return WeakRetained;
}

- (UIScrollView)scrollViewToObserve
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewToObserve);

  return WeakRetained;
}

- (VKCVisualSearchResultItem)vsItemPresentedFromMenu
{
  WeakRetained = objc_loadWeakRetained(&self->_vsItemPresentedFromMenu);

  return WeakRetained;
}

- (CALayer)layerForObservingContentsRect
{
  WeakRetained = objc_loadWeakRetained(&self->_layerForObservingContentsRect);

  return WeakRetained;
}

- (CGRect)frameWhenResigningActive
{
  x = self->_frameWhenResigningActive.origin.x;
  y = self->_frameWhenResigningActive.origin.y;
  width = self->_frameWhenResigningActive.size.width;
  height = self->_frameWhenResigningActive.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)visualSearchItemViewDidActivateVSItem:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B4335000, a2, OS_LOG_TYPE_ERROR, "invocationType should not be VKCVSInvocationTypeUnknown : %@", &v2, 0xCu);
}

@end