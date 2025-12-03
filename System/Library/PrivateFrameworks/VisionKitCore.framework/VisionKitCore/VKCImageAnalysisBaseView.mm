@interface VKCImageAnalysisBaseView
- ($58EB755F713D70195D081A2438463C76)videoPreviewTimeRange;
- (BOOL)_photosInfoSingleTapSubjectModeEnabled;
- (BOOL)analysisContainsTextAtPoint:(CGPoint)point;
- (BOOL)analysisIsAllDataDetectors;
- (BOOL)containsActionInfoItemAtPoint:(CGPoint)point;
- (BOOL)containsImageSubjectAtPoint:(CGPoint)point;
- (BOOL)containsInteractiveItemAtPoint:(CGPoint)point;
- (BOOL)containsTextAtPoint:(CGPoint)point;
- (BOOL)containsVisualSearchItemAtPoint:(CGPoint)point;
- (BOOL)dataDetectorView:(id)view dataDetectorInteractionShouldBeginAtPoint:(CGPoint)point;
- (BOOL)hasActiveTextSelection;
- (BOOL)highlightSelectableItems;
- (BOOL)inhibitSubjectDimmingAndLiftView;
- (BOOL)isSubjectAnalysisComplete;
- (BOOL)isSubjectHighlightAvailable;
- (BOOL)isSubjectHighlightShowingLivePhoto:(id)photo delegateHasImplementation:(BOOL *)implementation;
- (BOOL)presentVisualSearchForItem:(id)item;
- (BOOL)subjectHighlightActive;
- (BOOL)subjectHighlightView:(id)view containsVSItemForNormalizedPath:(id)path;
- (BOOL)subjectHighlightView:(id)view shouldBeginInteractionAtPoint:(CGPoint)point withType:(unint64_t)type;
- (BOOL)subjectInteractionInProgress;
- (BOOL)subjectViewUserInteractionDisabled;
- (BOOL)textSelectionView:(id)view shouldBeginAtPoint:(CGPoint)point;
- (BOOL)textSelectionView:(id)view shouldHandleShareWithRanges:(id)ranges boundingRect:(CGRect)rect selectedText:(id)text selectedAttributedText:(id)attributedText;
- (BOOL)usesLightDimmingViewInLightMode;
- (BOOL)visualSearchItemView:(id)view shouldBeginAtPoint:(CGPoint)point;
- (BOOL)visualSearchView:(id)view shouldShowDotForItem:(id)item allItems:(id)items;
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
- (id)dataDetectorElementPoint:(CGPoint)point requestingView:(id)view;
- (id)disposableFolderPath;
- (id)disposableSubjectPNGURLWithTitle:(id)title;
- (id)highlightView:(id)view selectionRectsForRanges:(id)ranges;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)hitTest:(CGPoint)test withEvent:(id)event usingSubviewsOf:(id)of;
- (id)imageSubjectPathWithIndexes:(id)indexes;
- (id)indexOfSubjectAtPoint:(CGPoint)point;
- (id)loggingParentObject;
- (id)nonTextNormalizedHighlightAllQuadsForTextSelectionView:(id)view;
- (id)presentingViewControllerForImageAnalysisInteraction;
- (id)presentingViewControllerForSubjectHighlightView:(id)view;
- (id)presentingViewControllerForTextSelectionView:(id)view;
- (id)previewForDataDetectorElementView:(id)view;
- (id)previewImageForDataDetectorElementView:(id)view;
- (id)summaryDescription;
- (id)tempPNGURLForSubjectHighlightView:(id)view;
- (id)textSelectionView:(id)view closestVisualSearchItemForRange:(id)range;
- (id)textSelectionView:(id)view updateAttributedStringForCopy:(id)copy;
- (id)textSelectionView:(id)view updateStringForCopy:(id)copy;
- (id)videoPreviewSubjectMatteAtCompositionTime:(id *)time;
- (id)videoPreviewSubjectMatteForImage:(id)image atCompositionTime:(id *)time;
- (id)viewForImageSnapshotForTextSelectionView:(id)view;
- (id)visualSearchResultItems;
- (id)visualSearchView:(id)view normalizedPathForSubjectAtNormalizedPoint:(CGPoint)point;
- (unint64_t)dataDetectorTypeAtPoint:(CGPoint)point;
- (unint64_t)subjectRequestStatus;
- (void)_logVisualSearchHintAvailabilityUpdate;
- (void)_updateAnalysisVisibility;
- (void)actionInfoButtonDidActivatePrimaryAction:(id)action;
- (void)addAsyncMRCElement:(id)element;
- (void)addMetadataToVSFeedbackItem:(id)item;
- (void)analysisDidUpdateForTypes:(unint64_t)types;
- (void)applicationWillResignActive:(id)active;
- (void)automaticallyShowVisualSearchResultsIfApplicable;
- (void)beginImageSubjectAnalysisIfNecessary;
- (void)beginImageSubjectAnalysisIfNecessaryWithCompletion:(id)completion;
- (void)beginImageSubjectAnalysisWithDelayIfNecessary;
- (void)checkForTranslationResultsWithCompletion:(id)completion;
- (void)clearDataDetectorViewIfNecessary;
- (void)clearRegexHighlightsAnimated:(BOOL)animated updateActiveTypes:(BOOL)types;
- (void)clearSelection;
- (void)clearTextSelectionViewIfNecessary;
- (void)clearTranslationViewIfNecessary;
- (void)clearVisualSearchViewIfNecessary;
- (void)configureForActiveTypes:(unint64_t)types;
- (void)configureForCurrentActiveInteractionTypes;
- (void)copyAllToClipboard;
- (void)copyButtonPressed:(id)pressed;
- (void)createStickerRepresentationsAtIndexSet:(id)set type:(unint64_t)type stickerIDs:(id)ds progress:(id)progress completion:(id)completion;
- (void)dataDetectorView:(id)view analyticsEventOccured:(id)occured;
- (void)dealloc;
- (void)debugButtonDidTap:(id)tap;
- (void)deleteDisposableFiles;
- (void)didEndLiveResize:(id)resize;
- (void)didMoveToWindow;
- (void)generateTextualVisualSearchResultForQueryInfo:(id)info completionHandler:(id)handler;
- (void)generateVisualSearchResultForItems:(id)items queryID:(unint64_t)d completionHandler:(id)handler;
- (void)highlightMatchesWithString:(id)string animated:(BOOL)animated;
- (void)highlightSubjectAtIndexSet:(id)set showCallout:(BOOL)callout showBurst:(BOOL)burst burstPoint:(CGPoint)point animated:(BOOL)animated;
- (void)invalidateVisibleTextAreaInfo;
- (void)layoutSubviews;
- (void)loadImageSubjectIfAvailableWithCompletion:(id)completion;
- (void)loadImageSubjectWithIndexes:(id)indexes completion:(id)completion;
- (void)loadQuickActionsIfNecessary;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)resetSelection;
- (void)safeAreaInsetsDidChange;
- (void)scrollViewDidChange:(id)change;
- (void)scrollViewWillChange:(id)change;
- (void)selectAll;
- (void)sendActiveInteractionTypesDidChangeAnalyticsEvent;
- (void)sendAnalysisDidChangeAnalyticsEvent;
- (void)sendQuickActionAnalyticsWithDidBecomeVisible:(BOOL)visible;
- (void)sendVisualSearchAnalyticsWithDidBecomeActive:(BOOL)active;
- (void)setActionInfoCustomFont:(id)font;
- (void)setActionInfoView:(id)view;
- (void)setActiveInteractionTypes:(unint64_t)types;
- (void)setActiveSubjectIndexSet:(id)set;
- (void)setAnalysisResult:(id)result;
- (void)setBounds:(CGRect)bounds;
- (void)setContentsRect:(CGRect)rect;
- (void)setCustomImageForRemoveBackground:(id)background;
- (void)setDataDetectorTypes:(unint64_t)types;
- (void)setDidAddVisualSearchCornerView:(BOOL)view;
- (void)setFrame:(CGRect)frame;
- (void)setHighlightSelectableItems:(BOOL)items animated:(BOOL)animated;
- (void)setIdentifierIndex:(int64_t)index;
- (void)setInhibitSubjectDimmingAndLiftView:(BOOL)view;
- (void)setIsShowingTranslation:(BOOL)translation;
- (void)setLayerForObservingContentsRect:(id)rect;
- (void)setNormalizedVisibleRect:(CGRect)rect;
- (void)setQuickActions:(id)actions;
- (void)setScrollViewToObserve:(id)observe;
- (void)setSelectedRanges:(id)ranges;
- (void)setSubjectViewUserInteractionDisabled:(BOOL)disabled;
- (void)setUsesLightDimmingViewInLightMode:(BOOL)mode;
- (void)setViewForObservingContentMode:(id)mode;
- (void)setVisibleTextAreaInfo:(VKVisibleTextAreaInfo *)info;
- (void)setWantsAutomaticContentsRectCalculation:(BOOL)calculation;
- (void)set_hasActiveTextSelection:(BOOL)selection;
- (void)set_photosInfoSingleTapSubjectModeEnabled:(BOOL)enabled;
- (void)showTopVisualSearchResult;
- (void)subjectBaseView:(id)view analyticsEventOccurred:(id)occurred;
- (void)subjectBaseViewDidBeginSubjectAnalysis:(id)analysis;
- (void)subjectBaseViewViewDidCompleteSubjectAnalysis:(id)analysis;
- (void)subjectHighlightView:(id)view activateVSItemForNormalizedPath:(id)path;
- (void)subjectHighlightView:(id)view livePhotoShouldPlay:(BOOL)play;
- (void)subjectHighlightView:(id)view prepareForCalloutAction:(SEL)action completion:(id)completion;
- (void)subjectHighlightView:(id)view willBeginInteractionAtPoint:(CGPoint)point withType:(unint64_t)type;
- (void)subjectHighlightViewSubjectInteractionInProgressDidChange:(id)change;
- (void)submitVisualSearchUserFeedbackForReportIdentifier:(id)identifier userFeedbackPayload:(id)payload sfReportData:(id)data;
- (void)tearDownQuickActions;
- (void)test_activateTranslationOverlay;
- (void)textSelectionView:(id)view analyticsEventOccured:(id)occured;
- (void)textSelectionView:(id)view boundsDidChangeFromRect:(CGRect)rect toRect:(CGRect)toRect;
- (void)textSelectionView:(id)view prepareForCalloutAction:(SEL)action completion:(id)completion;
- (void)textSelectionView:(id)view requestsDataDetectorActivationAtPoint:(CGPoint)point;
- (void)textSelectionView:(id)view selectionDidChange:(id)change;
- (void)translateButtonPressed:(id)pressed;
- (void)triggerTapToRadar;
- (void)updateAndNotifyAfterValidNormalizedVisibleRectChange;
- (void)updateAndNotifyAfterValidNormalizedVisibleRectChangeIfNecessary;
- (void)updateCurrentDisplayedViewContentsRect;
- (void)updateDebugButtonIfNecessary;
- (void)updateNormalizedVisibleRect;
- (void)updateNormalizedVisibleRectIfNecessary;
- (void)updateSubviewsToMatchBounds;
- (void)useInteractionOptions:(unint64_t)options;
- (void)videoPreviewAvailableForSubjectHighlightView:(id)view;
- (void)visualIntelligenceView:(id)view didRequestVluEnabled:(BOOL)enabled;
- (void)visualIntelligenceView:(id)view isDraggingSheetDidChange:(BOOL)change;
- (void)visualIntelligenceView:(id)view isSheetPresentedDidChangeToValue:(BOOL)value;
- (void)visualSearchItemView:(id)view didTapVisualSearchIndicatorWithNormalizedBoundingBox:(CGRect)box;
- (void)visualSearchItemViewDidActivateVSItem:(id)item;
- (void)visualSearchItemViewDidDismissController:(id)controller;
- (void)visualSearchView:(id)view analyticsEventOccured:(id)occured;
- (void)willDismissMenuForDataDetectorView:(id)view;
- (void)willDisplayMenuForActionInfoButton:(id)button;
- (void)willDisplayMenuForDataDetectorView:(id)view;
- (void)willEnterLiveResize:(id)resize;
- (void)willHideMenuForActionInfoButton:(id)button;
@end

@implementation VKCImageAnalysisBaseView

- (void)dealloc
{
  keyPathsAffectingContentMode = [(VKCImageAnalysisBaseView *)self keyPathsAffectingContentMode];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__VKCImageAnalysisBaseView_dealloc__block_invoke;
  v9[3] = &unk_1E7BE6780;
  v9[4] = self;
  [keyPathsAffectingContentMode enumerateObjectsUsingBlock:v9];

  WeakRetained = objc_loadWeakRetained(&self->_layerForObservingContentsRect);
  [WeakRetained removeObserver:self forKeyPath:@"contentsRect" context:VKImageRecognitionContentModeContext];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_scrollViewWillChange_ name:*MEMORY[0x1E69DE740] object:0];
    [defaultCenter addObserver:v3 selector:sel_scrollViewDidChange_ name:*MEMORY[0x1E69DE730] object:0];
    [defaultCenter addObserver:v3 selector:sel_scrollViewWillChange_ name:*MEMORY[0x1E69DE738] object:0];
    [defaultCenter addObserver:v3 selector:sel_scrollViewDidChange_ name:*MEMORY[0x1E69DE728] object:0];
    [defaultCenter addObserver:v3 selector:sel_willEnterLiveResize_ name:*MEMORY[0x1E69DEB20] object:0];
    [defaultCenter addObserver:v3 selector:sel_didEndLiveResize_ name:*MEMORY[0x1E69DEB28] object:0];
    [(VKCImageAnalysisBaseView *)v3 setAccessibilityIgnoresInvertColors:1];
    [defaultCenter addObserver:v3 selector:sel_applicationWillResignActive_ name:*MEMORY[0x1E69DDBC8] object:0];
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

      layer = [(UIImageView *)v3->_debugImageView layer];
      LODWORD(v12) = 0.5;
      [layer setShadowOpacity:v12];

      blackColor = [MEMORY[0x1E69DC888] blackColor];
      cGColor = [blackColor CGColor];
      layer2 = [(UIImageView *)v3->_debugImageView layer];
      [layer2 setShadowColor:cGColor];

      v16 = *MEMORY[0x1E695F060];
      v17 = *(MEMORY[0x1E695F060] + 8);
      layer3 = [(UIImageView *)v3->_debugImageView layer];
      [layer3 setShadowOffset:{v16, v17}];

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

      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      vk_colorWith40PercentOpacity = [whiteColor vk_colorWith40PercentOpacity];
      [(UILabel *)v3->_textInfoView setVk_backgroundColor:vk_colorWith40PercentOpacity];

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

- (void)useInteractionOptions:(unint64_t)options
{
  v5 = objc_opt_class();
  v6 = VKDynamicCast(v5, self->_textSelectionView);
  [v6 useInteractionOptions:options];
}

- (void)applicationWillResignActive:(id)active
{
  [(VKCImageAnalysisBaseView *)self frameWhenResigningActive];
  if (CGRectIsNull(v6))
  {
    window = [(VKCImageAnalysisBaseView *)self window];
    [window frame];
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
    window = [(VKCImageAnalysisBaseView *)self window];
    [window frame];
    v7 = v6;

    if (v4 != v7)
    {
      textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
      [textSelectionView updateSelectionRectsForWindowChange];

      [(VKCImageAnalysisBaseView *)self setFrameWhenResigningActive:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (VKImageRecognitionContentModeContext == context)
  {

    [(VKCImageAnalysisBaseView *)self updateCurrentDisplayedViewContentsRect:path];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = VKCImageAnalysisBaseView;
    [(VKCImageAnalysisBaseView *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
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

- (void)setContentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v16.receiver = self;
  v16.super_class = VKCImageAnalysisBaseView;
  [(VKCImageBaseOverlayView *)&v16 setContentsRect:?];
  textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
  [textSelectionView setContentsRect:{x, y, width, height}];

  dataDetectorView = [(VKCImageAnalysisBaseView *)self dataDetectorView];
  [dataDetectorView setContentsRect:{x, y, width, height}];

  visualSearchView = [(VKCImageAnalysisBaseView *)self visualSearchView];
  [visualSearchView setContentsRect:{x, y, width, height}];

  translationView = [(VKCImageAnalysisBaseView *)self translationView];
  [translationView setContentsRect:{x, y, width, height}];

  regexHighlightViewIfExists = [(VKCImageAnalysisBaseView *)self regexHighlightViewIfExists];
  [regexHighlightViewIfExists setContentsRect:{x, y, width, height}];

  actionInfoView = [(VKCImageAnalysisBaseView *)self actionInfoView];
  [actionInfoView setContentsRect:{x, y, width, height}];

  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [subjectHighlightView setContentsRect:{x, y, width, height}];

  visualIntelligenceViewIfExists = [(VKCImageAnalysisBaseView *)self visualIntelligenceViewIfExists];
  [visualIntelligenceViewIfExists setContentsRect:{x, y, width, height}];
}

- (void)setAnalysisResult:(id)result
{
  v29 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  if (vk_isInternalBuild() && +[VKCInternalSettings disableAllLiveText])
  {
    v6 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B4335000, v6, OS_LOG_TYPE_DEFAULT, "Ignoring setting analysis result on base view due todue to internal setting to disable all live text.", buf, 2u);
    }
  }

  else if (self->_analysisResult != resultCopy)
  {
    objc_storeStrong(&self->_analysisResult, result);
    v7 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      analysisResult = self->_analysisResult;
      *buf = 138412546;
      v26 = analysisResult;
      v27 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1B4335000, v7, OS_LOG_TYPE_DEFAULT, "Setting Analysis: %@, %@", buf, 0x16u);
    }

    [(VKCImageAnalysisBaseView *)self clearRegexHighlightsAnimated:0 updateActiveTypes:0];
    [(VKCImageAnalysisBaseView *)self updateCurrentDisplayedViewContentsRect];
    v9 = self->_analysisResult;
    dataDetectorView = [(VKCImageAnalysisBaseView *)self dataDetectorView];
    [dataDetectorView setRecognitionResult:v9];

    v11 = self->_analysisResult;
    textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
    [textSelectionView setRecognitionResult:v11];

    visualSearchResult = [(VKCImageAnalysisResult *)self->_analysisResult visualSearchResult];
    visualSearchView = [(VKCImageAnalysisBaseView *)self visualSearchView];
    [visualSearchView setVisualSearchResult:visualSearchResult];

    v15 = self->_analysisResult;
    translationView = [(VKCImageAnalysisBaseView *)self translationView];
    [translationView setRecognitionResult:v15];

    v17 = self->_analysisResult;
    regexHighlightViewIfExists = [(VKCImageAnalysisBaseView *)self regexHighlightViewIfExists];
    [regexHighlightViewIfExists setRecognitionResult:v17];

    v19 = self->_analysisResult;
    subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
    [subjectHighlightView setRecognitionResult:v19];

    visualIntelligenceResult = [(VKCImageAnalysisResult *)self->_analysisResult visualIntelligenceResult];
    viCoordinatorIfExists = [(VKCImageAnalysisBaseView *)self viCoordinatorIfExists];
    [viCoordinatorIfExists setAnalysisResult:visualIntelligenceResult];

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

    backgroundQueue = [(VKCImageAnalysisBaseView *)self backgroundQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__VKCImageAnalysisBaseView_setAnalysisResult___block_invoke;
    block[3] = &unk_1E7BE4208;
    block[4] = self;
    dispatch_async(backgroundQueue, block);

    [(UIImageView *)self->_debugImageView setHidden:0];
  }
}

- (void)analysisDidUpdateForTypes:(unint64_t)types
{
  typesCopy = types;
  analysisResult = [(VKCImageAnalysisBaseView *)self analysisResult];
  if (typesCopy)
  {
    textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
    [textSelectionView setRecognitionResult:analysisResult];

    translationView = [(VKCImageAnalysisBaseView *)self translationView];
    [translationView setRecognitionResult:analysisResult];

    regexHighlightViewIfExists = [(VKCImageAnalysisBaseView *)self regexHighlightViewIfExists];
    [regexHighlightViewIfExists setRecognitionResult:analysisResult];

    [(VKCImageAnalysisBaseView *)self invalidateVisibleTextAreaInfo];
  }

  if ((typesCopy & 5) != 0)
  {
    dataDetectorView = [(VKCImageAnalysisBaseView *)self dataDetectorView];
    [dataDetectorView setRecognitionResult:analysisResult];

    if ((typesCopy & 0x10) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((typesCopy & 0x10) == 0)
  {
    goto LABEL_9;
  }

  visualSearchResult = [analysisResult visualSearchResult];
  visualSearchView = [(VKCImageAnalysisBaseView *)self visualSearchView];
  [visualSearchView setVisualSearchResult:visualSearchResult];

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

- (void)setActiveInteractionTypes:(unint64_t)types
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_activeInteractionTypes != types)
  {
    [(VKCImageAnalysisBaseView *)self clearRegexHighlightsAnimated:0 updateActiveTypes:0];
    v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = VKMUIStringForAnalysisInteractionTypes(types);
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1B4335000, v5, OS_LOG_TYPE_DEFAULT, "Setting Active Interaction Types: %@, %@", &v7, 0x16u);
    }

    [(VKCImageAnalysisBaseView *)self updateCurrentDisplayedViewContentsRect];
    [(VKCImageAnalysisBaseView *)self updateNormalizedVisibleRect];
    [(VKCImageAnalysisBaseView *)self configureForActiveTypes:types];
    [(VKCImageAnalysisBaseView *)self sendActiveInteractionTypesDidChangeAnalyticsEvent];
    [(VKCImageAnalysisBaseView *)self invalidateVisibleTextAreaInfo];
    if (!types)
    {
      [(VKCImageAnalysisBaseView *)self setIsShowingTranslation:0];
    }

    [(VKCImageAnalysisBaseView *)self set_hasActiveTextSelection:[(VKCImageAnalysisBaseView *)self hasActiveTextSelection]];
  }
}

- (NSString)text
{
  textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
  text = [textSelectionView text];

  return text;
}

- (NSString)selectedText
{
  textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
  selectedText = [textSelectionView selectedText];

  return selectedText;
}

- (NSAttributedString)selectedAttributedText
{
  textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
  selectedAttributedText = [textSelectionView selectedAttributedText];

  return selectedAttributedText;
}

- (NSArray)selectedRanges
{
  textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
  selectedVKRange = [textSelectionView selectedVKRange];
  nsRangeArray = [selectedVKRange nsRangeArray];

  return nsRangeArray;
}

- (void)setSelectedRanges:(id)ranges
{
  v5 = [VKTextRange rangeWithNSRanges:ranges];
  textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
  [textSelectionView setSelectedVKRange:v5];
}

- (VKTextRange)selectedRange
{
  textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
  selectedVKRange = [textSelectionView selectedVKRange];

  return selectedVKRange;
}

- (void)setDataDetectorTypes:(unint64_t)types
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = VKMUIStringForDDTypes(types);
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1B4335000, v5, OS_LOG_TYPE_DEFAULT, "Setting DDTypes: %@, %@", &v8, 0x16u);
  }

  self->_dataDetectorTypes = types;
  [(VKCImageDataDetectorView *)self->_dataDetectorView setDataDetectorTypes:types];
  textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
  [textSelectionView updateHighlightLayerContentIfVisible];
}

- (void)setHighlightSelectableItems:(BOOL)items animated:(BOOL)animated
{
  animatedCopy = animated;
  itemsCopy = items;
  v19 = *MEMORY[0x1E69E9840];
  if ([(VKCImageAnalysisBaseView *)self highlightSelectableItems]!= items)
  {
    v7 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = VKMUIStringForBool(itemsCopy);
      v15 = 138412546;
      v16 = v8;
      v17 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1B4335000, v7, OS_LOG_TYPE_DEFAULT, "Highlight selectable items enabled: %@, %@", &v15, 0x16u);
    }

    [(VKCImageAnalysisBaseView *)self clearRegexHighlightsAnimated:0 updateActiveTypes:0];
    textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
    [textSelectionView setHighlightSelectableItems:itemsCopy animated:animatedCopy];

    dataDetectorView = [(VKCImageAnalysisBaseView *)self dataDetectorView];
    [dataDetectorView setHighlightSelectableItems:itemsCopy animated:animatedCopy];

    quickActions = [(VKCImageAnalysisBaseView *)self quickActions];
    v12 = [quickActions count];

    if (v12)
    {
      [(VKCImageAnalysisBaseView *)self sendQuickActionAnalyticsWithDidBecomeVisible:1];
    }

    delegate = [(VKCImageAnalysisBaseView *)self delegate];
    [delegate highlightSelectableItemsDidChangeForBaseOverlayView:self];

    if (!itemsCopy)
    {
      if ([(VKCImageAnalysisBaseView *)self isShowingTranslation])
      {
        [(VKCImageAnalysisBaseView *)self setIsShowingTranslation:0];
        translateQuickAction = [(VKCImageAnalysisBaseView *)self translateQuickAction];
        [translateQuickAction setSelected:0];
      }
    }
  }
}

- (BOOL)highlightSelectableItems
{
  textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
  highlightSelectableItems = [textSelectionView highlightSelectableItems];

  return highlightSelectableItems;
}

- (VKCImageSubjectContext)subjectContext
{
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  subjectContext = [subjectHighlightView subjectContext];

  return subjectContext;
}

- (BOOL)subjectHighlightActive
{
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  subjectHighlightActive = [subjectHighlightView subjectHighlightActive];

  return subjectHighlightActive;
}

- (BOOL)isSubjectHighlightAvailable
{
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  subjectContext = [subjectHighlightView subjectContext];
  v4 = subjectContext != 0;

  return v4;
}

- (BOOL)isSubjectAnalysisComplete
{
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  v3 = [subjectHighlightView loadMaskRequestStatus] == 2;

  return v3;
}

- (BOOL)subjectInteractionInProgress
{
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  subjectInteractionInProgress = [subjectHighlightView subjectInteractionInProgress];

  return subjectInteractionInProgress;
}

- (CGRect)subjectFrame
{
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [subjectHighlightView subjectFrame];
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
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  loadMaskRequestStatus = [subjectHighlightView loadMaskRequestStatus];

  return loadMaskRequestStatus;
}

- (void)setIdentifierIndex:(int64_t)index
{
  v11.receiver = self;
  v11.super_class = VKCImageAnalysisBaseView;
  [(VKCImageBaseOverlayView *)&v11 setIdentifierIndex:?];
  translationView = [(VKCImageAnalysisBaseView *)self translationView];
  [translationView setIdentifierIndex:index];

  dataDetectorView = [(VKCImageAnalysisBaseView *)self dataDetectorView];
  [dataDetectorView setIdentifierIndex:index];

  textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
  [textSelectionView setIdentifierIndex:index];

  visualSearchView = [(VKCImageAnalysisBaseView *)self visualSearchView];
  [visualSearchView setIdentifierIndex:index];

  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [subjectHighlightView setIdentifierIndex:index];

  regexHighlightViewIfExists = [(VKCImageAnalysisBaseView *)self regexHighlightViewIfExists];
  [regexHighlightViewIfExists setIdentifierIndex:index];
}

- (void)setCustomImageForRemoveBackground:(id)background
{
  backgroundCopy = background;
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [subjectHighlightView setCustomImageForRemoveBackground:backgroundCopy];
}

- (UIImage)customImageForRemoveBackground
{
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  customImageForRemoveBackground = [subjectHighlightView customImageForRemoveBackground];

  return customImageForRemoveBackground;
}

- (BOOL)usesLightDimmingViewInLightMode
{
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  usesLightDimmingViewInLightMode = [subjectHighlightView usesLightDimmingViewInLightMode];

  return usesLightDimmingViewInLightMode;
}

- (void)setUsesLightDimmingViewInLightMode:(BOOL)mode
{
  modeCopy = mode;
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [subjectHighlightView setUsesLightDimmingViewInLightMode:modeCopy];
}

- (void)beginImageSubjectAnalysisIfNecessary
{
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [subjectHighlightView loadSubjectMaskIfNecessary];
}

- (void)beginImageSubjectAnalysisWithDelayIfNecessary
{
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [subjectHighlightView beginImageSubjectAnalysisWithDelayIfNecessary];
}

- (void)beginImageSubjectAnalysisIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [subjectHighlightView beginImageSubjectAnalysisIfNecessaryWithCompletion:completionCopy];
}

- (void)loadImageSubjectIfAvailableWithCompletion:(id)completion
{
  completionCopy = completion;
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [subjectHighlightView loadImageSubjectIfNecessaryWithCompletion:completionCopy];
}

- (void)loadImageSubjectWithIndexes:(id)indexes completion:(id)completion
{
  completionCopy = completion;
  indexesCopy = indexes;
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [subjectHighlightView loadImageSubjectWithIndexes:indexesCopy completion:completionCopy];
}

- (id)imageSubjectPathWithIndexes:(id)indexes
{
  indexesCopy = indexes;
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  v6 = [subjectHighlightView imageSubjectPathWithIndexes:indexesCopy];

  return v6;
}

- (void)highlightSubjectAtIndexSet:(id)set showCallout:(BOOL)callout showBurst:(BOOL)burst burstPoint:(CGPoint)point animated:(BOOL)animated
{
  animatedCopy = animated;
  y = point.y;
  x = point.x;
  burstCopy = burst;
  calloutCopy = callout;
  setCopy = set;
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [subjectHighlightView highlightSubjectAtIndexSet:setCopy showCallout:calloutCopy showBurst:burstCopy burstPoint:animatedCopy animated:{x, y}];
}

- (void)set_photosInfoSingleTapSubjectModeEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [subjectHighlightView setTapToSelectModeEnabled:enabledCopy];

  actionInfoView = [(VKCImageAnalysisBaseView *)self actionInfoView];
  [actionInfoView setVisualSearchCornerViewDisabled:enabledCopy];

  [(VKCImageAnalysisBaseView *)self configureForCurrentActiveInteractionTypes];
}

- (BOOL)_photosInfoSingleTapSubjectModeEnabled
{
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  tapToSelectModeEnabled = [subjectHighlightView tapToSelectModeEnabled];

  return tapToSelectModeEnabled;
}

- (void)setSubjectViewUserInteractionDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [subjectHighlightView setSubjectViewUserInteractionDisabled:disabledCopy];
}

- (BOOL)subjectViewUserInteractionDisabled
{
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  subjectViewUserInteractionDisabled = [subjectHighlightView subjectViewUserInteractionDisabled];

  return subjectViewUserInteractionDisabled;
}

- (BOOL)inhibitSubjectDimmingAndLiftView
{
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  inhibitDimmingAndLiftView = [subjectHighlightView inhibitDimmingAndLiftView];

  return inhibitDimmingAndLiftView;
}

- (void)setInhibitSubjectDimmingAndLiftView:(BOOL)view
{
  viewCopy = view;
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [subjectHighlightView setInhibitDimmingAndLiftView:viewCopy];
}

- (void)loadQuickActionsIfNecessary
{
  analysisResult = [(VKCImageAnalysisBaseView *)self analysisResult];
  if (analysisResult)
  {
    objc_initWeak(&location, self);
    translationView = [(VKCImageAnalysisBaseView *)self translationView];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __55__VKCImageAnalysisBaseView_loadQuickActionsIfNecessary__block_invoke;
    v5[3] = &unk_1E7BE67D0;
    objc_copyWeak(&v8, &location);
    v6 = analysisResult;
    selfCopy = self;
    [translationView checkForTranslationResultsWithCompletion:v5];

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
  textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
  text = [textSelectionView text];

  v5 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{0, objc_msgSend(text, "length")}];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  dataDetectorView = [(VKCImageAnalysisBaseView *)self dataDetectorView];
  displayedElements = [dataDetectorView displayedElements];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __54__VKCImageAnalysisBaseView_analysisIsAllDataDetectors__block_invoke;
  v17[3] = &unk_1E7BE67F8;
  v8 = v5;
  v18 = v8;
  [displayedElements enumerateObjectsUsingBlock:v17];

  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__VKCImageAnalysisBaseView_analysisIsAllDataDetectors__block_invoke_2;
  v13[3] = &unk_1E7BE6820;
  v16 = &v19;
  v10 = text;
  v14 = v10;
  v11 = newlineCharacterSet;
  v15 = v11;
  [v8 enumerateRangesUsingBlock:v13];
  LOBYTE(displayedElements) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return displayedElements;
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
  quickActions = [(VKCImageAnalysisBaseView *)self quickActions];
  [quickActions enumerateObjectsUsingBlock:&__block_literal_global_30];
}

- (void)setQuickActions:(id)actions
{
  v17 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSArray *)actionsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(actionsCopy);
        }

        [*(*(&v12 + 1) + 8 * v8++) setDelegate:self];
      }

      while (v6 != v8);
      v6 = [(NSArray *)actionsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  quickActions = self->_quickActions;
  self->_quickActions = actionsCopy;
  v10 = actionsCopy;

  actionInfoView = [(VKCImageAnalysisBaseView *)self actionInfoView];
  [actionInfoView setQuickActions:v10];
}

- (void)setActionInfoCustomFont:(id)font
{
  objc_storeStrong(&self->_actionInfoCustomFont, font);
  quickActions = [(VKCImageAnalysisBaseView *)self quickActions];
  [(VKCImageAnalysisBaseView *)self setQuickActions:quickActions];
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

- (void)setActionInfoView:(id)view
{
  objc_storeStrong(&self->_actionInfoView, view);
  viewCopy = view;
  [(VKCImageAnalysisBaseView *)self bounds];
  [(VKCActionInfoView *)self->_actionInfoView setFrame:?];
  [(VKCImageBaseOverlayView *)self contentsRect];
  [(VKCActionInfoView *)self->_actionInfoView setContentsRect:?];
  [(VKCImageBaseOverlayView *)self normalizedVisibleRect];
  [(VKCActionInfoView *)self->_actionInfoView setNormalizedVisibleRect:?];
  quickActions = [(VKCImageAnalysisBaseView *)self quickActions];
  [(VKCActionInfoView *)self->_actionInfoView setQuickActions:quickActions];

  [(VKCImageAnalysisBaseView *)self configureForCurrentActiveInteractionTypes];
}

- (void)resetSelection
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_1B4335000, a2, OS_LOG_TYPE_DEBUG, "Resetting Selection for baseView: %@", &v2, 0xCu);
}

- (void)setWantsAutomaticContentsRectCalculation:(BOOL)calculation
{
  if (self->_wantsAutomaticContentsRectCalculation != calculation)
  {
    self->_wantsAutomaticContentsRectCalculation = calculation;
    [(VKCImageAnalysisBaseView *)self updateCurrentDisplayedViewContentsRect];
  }
}

- (void)translateButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  -[VKCImageAnalysisBaseView setIsShowingTranslation:](self, "setIsShowingTranslation:", [pressedCopy isSelected]);
  isSelected = [pressedCopy isSelected];

  if (isSelected)
  {
    v6 = [VKAnalyticsQuickActionEvent alloc];
    quickActions = [(VKCImageAnalysisBaseView *)self quickActions];
    v8 = [quickActions count];
    analysisResult = [(VKCImageAnalysisBaseView *)self analysisResult];
    text = [analysisResult text];
    v11 = [text length];
    customAnalyticsIdentifier = [(VKCImageBaseOverlayView *)self customAnalyticsIdentifier];
    v14 = [(VKAnalyticsQuickActionEvent *)v6 initWithQuickActionType:@"Translation" quickActionsCount:v8 textLength:v11 eventType:2 customIdentifier:customAnalyticsIdentifier];

    delegate = [(VKCImageAnalysisBaseView *)self delegate];
    [delegate baseOverlayView:self analyticsEventDidOccur:v14];
  }
}

- (void)copyButtonPressed:(id)pressed
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1B4335000, v4, OS_LOG_TYPE_DEFAULT, "Copy All QuickAction activated: %@", &v15, 0xCu);
  }

  [(VKCImageAnalysisBaseView *)self copyAllToClipboard];
  [(VKCImageAnalysisBaseView *)self setHighlightSelectableItems:0];
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  [delegate baseOverlayViewDidRequestButtonStateUpdate:self];

  v6 = [VKAnalyticsQuickActionEvent alloc];
  quickActions = [(VKCImageAnalysisBaseView *)self quickActions];
  v8 = [quickActions count];
  analysisResult = [(VKCImageAnalysisBaseView *)self analysisResult];
  text = [analysisResult text];
  v11 = [text length];
  customAnalyticsIdentifier = [(VKCImageBaseOverlayView *)self customAnalyticsIdentifier];
  v13 = [(VKAnalyticsQuickActionEvent *)v6 initWithQuickActionType:@"CopyAll" quickActionsCount:v8 textLength:v11 eventType:2 customIdentifier:customAnalyticsIdentifier];

  delegate2 = [(VKCImageAnalysisBaseView *)self delegate];
  [delegate2 baseOverlayView:self analyticsEventDidOccur:v13];
}

- (void)copyAllToClipboard
{
  v17[1] = *MEMORY[0x1E69E9840];
  textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
  attributedText = [textSelectionView attributedText];
  v5 = attributedText;
  if (attributedText)
  {
    v6 = attributedText;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AAB0]);
  }

  v7 = v6;

  textSelectionView2 = [(VKCImageAnalysisBaseView *)self textSelectionView];
  text = [textSelectionView2 text];

  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  v11 = [delegate baseOverlayView:self updateStringForCopy:text];

  delegate2 = [(VKCImageAnalysisBaseView *)self delegate];
  v13 = [delegate2 baseOverlayView:self updateAttributedStringForCopy:v7];

  v14 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:v11];
  [v14 registerObject:v13 visibility:0];
  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  v17[0] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  [generalPasteboard setItemProviders:v16];
}

- (void)selectAll
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1B4335000, v3, OS_LOG_TYPE_DEFAULT, "Select All: %@", &v5, 0xCu);
  }

  textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
  [textSelectionView selectAll:0];
}

- (void)clearSelection
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1B4335000, v3, OS_LOG_TYPE_DEFAULT, "Clear Selection: %@", &v6, 0xCu);
  }

  v4 = +[VKTextRange emptyRange];
  textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
  [textSelectionView setSelectedVKRange:v4];
}

- (void)setIsShowingTranslation:(BOOL)translation
{
  if (self->_isShowingTranslation != translation)
  {
    translationCopy = translation;
    self->_isShowingTranslation = translation;
    translationView = [(VKCImageAnalysisBaseView *)self translationView];
    translationView2 = translationView;
    if (translationCopy)
    {
      translateQuickAction = [(VKCImageAnalysisBaseView *)self translateQuickAction];
      [translationView2 setPresentationAnchorView:translateQuickAction];

      translationView2 = [(VKCImageAnalysisBaseView *)self translationView];
      [translationView2 showTranslationOverlay];
    }

    else
    {
      [translationView hideTranslationOverlay];
    }

    activeInteractionTypes = [(VKCImageAnalysisBaseView *)self activeInteractionTypes];

    [(VKCImageAnalysisBaseView *)self configureForActiveTypes:activeInteractionTypes];
  }
}

- (void)checkForTranslationResultsWithCompletion:(id)completion
{
  completionCopy = completion;
  translationView = [(VKCImageAnalysisBaseView *)self translationView];
  [translationView checkForTranslationResultsWithCompletion:completionCopy];
}

- (void)test_activateTranslationOverlay
{
  quickActions = [(VKCImageAnalysisBaseView *)self quickActions];
  translateQuickAction = [(VKCImageAnalysisBaseView *)self translateQuickAction];
  v5 = [quickActions containsObject:translateQuickAction];

  if (v5)
  {
    translateQuickAction2 = [(VKCImageAnalysisBaseView *)self translateQuickAction];
    [translateQuickAction2 _vk_performAction];
  }
}

- (BOOL)hasActiveTextSelection
{
  if (([(VKCImageAnalysisBaseView *)self activeInteractionTypes]& 1) == 0)
  {
    return 0;
  }

  textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
  selectedVKRange = [textSelectionView selectedVKRange];
  v3 = [selectedVKRange length] != 0;

  return v3;
}

- (void)set_hasActiveTextSelection:(BOOL)selection
{
  if (self->__hasActiveTextSelection != selection)
  {
    self->__hasActiveTextSelection = selection;
    delegate = [(VKCImageAnalysisBaseView *)self delegate];
    [delegate hasActiveTextSelectionDidChangeForBaseOverlayView:self];
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
  analysisResult = [(VKCImageAnalysisBaseView *)self analysisResult];
  normalizedTextLineBoundingBoxes = [analysisResult normalizedTextLineBoundingBoxes];

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
  [normalizedTextLineBoundingBoxes enumerateObjectsUsingBlock:v31];
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
  dataDetectorView = [(VKCImageAnalysisBaseView *)self dataDetectorView];
  displayedElements = [dataDetectorView displayedElements];
  retstr->dataDetectors = [displayedElements count];

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
  analysisResult = [(VKCImageAnalysisBaseView *)self analysisResult];
  [analysisResult totalQuadTextArea];
  v4 = v3;

  return v4;
}

- (double)totalBoundingBoxTextArea
{
  analysisResult = [(VKCImageAnalysisBaseView *)self analysisResult];
  [analysisResult totalBoundingBoxTextArea];
  v4 = v3;

  return v4;
}

- (NSArray)rawRectangleObservations
{
  analysisResult = [(VKCImageAnalysisBaseView *)self analysisResult];
  rectangleObservations = [analysisResult rectangleObservations];

  return rectangleObservations;
}

- (NSArray)filteredNormalizedRectangleQuads
{
  analysisResult = [(VKCImageAnalysisBaseView *)self analysisResult];
  filteredNormalizedRectangleQuads = [analysisResult filteredNormalizedRectangleQuads];

  return filteredNormalizedRectangleQuads;
}

- (NSArray)filteredRectangleQuads
{
  [(VKCImageBaseOverlayView *)self contentsRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  filteredNormalizedRectangleQuads = [(VKCImageAnalysisBaseView *)self filteredNormalizedRectangleQuads];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__VKCImageAnalysisBaseView_filteredRectangleQuads__block_invoke;
  v14[3] = &unk_1E7BE6870;
  v14[4] = self;
  v14[5] = v4;
  v14[6] = v6;
  v14[7] = v8;
  v14[8] = v10;
  v12 = [filteredNormalizedRectangleQuads vk_compactMap:v14];

  return v12;
}

- (void)setViewForObservingContentMode:(id)mode
{
  modeCopy = mode;
  WeakRetained = objc_loadWeakRetained(&self->_viewForObservingContentMode);

  if (WeakRetained != modeCopy)
  {
    keyPathsAffectingContentMode = [(VKCImageAnalysisBaseView *)self keyPathsAffectingContentMode];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__VKCImageAnalysisBaseView_setViewForObservingContentMode___block_invoke;
    v10[3] = &unk_1E7BE6780;
    v10[4] = self;
    [keyPathsAffectingContentMode enumerateObjectsUsingBlock:v10];
    objc_storeWeak(&self->_viewForObservingContentMode, modeCopy);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59__VKCImageAnalysisBaseView_setViewForObservingContentMode___block_invoke_2;
    v9[3] = &unk_1E7BE6780;
    v9[4] = self;
    [keyPathsAffectingContentMode enumerateObjectsUsingBlock:v9];
    v7 = objc_loadWeakRetained(&self->_viewForObservingContentMode);
    layer = [v7 layer];
    [(VKCImageAnalysisBaseView *)self setLayerForObservingContentsRect:layer];

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

- (void)setLayerForObservingContentsRect:(id)rect
{
  obj = rect;
  WeakRetained = objc_loadWeakRetained(&self->_layerForObservingContentsRect);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_layerForObservingContentsRect);
    [v5 removeObserver:self forKeyPath:@"contentsRect" context:VKImageRecognitionContentModeContext];

    v6 = objc_storeWeak(&self->_layerForObservingContentsRect, obj);
    [obj addObserver:self forKeyPath:@"contentsRect" options:0 context:VKImageRecognitionContentModeContext];
  }
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = VKCImageAnalysisBaseView;
  [(VKCImageAnalysisBaseView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(VKCImageAnalysisBaseView *)self updateSubviewsToMatchBounds];
  [(VKCImageAnalysisBaseView *)self updateNormalizedVisibleRectIfNecessary];
  [(VKCImageAnalysisBaseView *)self updateCurrentDisplayedViewContentsRect];
  [(VKCImageAnalysisBaseView *)self invalidateVisibleTextAreaInfo];
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = VKCImageAnalysisBaseView;
  [(VKCImageAnalysisBaseView *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(VKCImageAnalysisBaseView *)self updateSubviewsToMatchBounds];
}

- (void)updateSubviewsToMatchBounds
{
  [(VKCImageAnalysisBaseView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
  [textSelectionView setFrame:{v4, v6, v8, v10}];

  dataDetectorView = [(VKCImageAnalysisBaseView *)self dataDetectorView];
  [dataDetectorView setFrame:{v4, v6, v8, v10}];

  visualSearchView = [(VKCImageAnalysisBaseView *)self visualSearchView];
  [visualSearchView setFrame:{v4, v6, v8, v10}];

  translationView = [(VKCImageAnalysisBaseView *)self translationView];
  [translationView setFrame:{v4, v6, v8, v10}];

  regexHighlightViewIfExists = [(VKCImageAnalysisBaseView *)self regexHighlightViewIfExists];
  [regexHighlightViewIfExists setFrame:{v4, v6, v8, v10}];

  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [subjectHighlightView setFrame:{v4, v6, v8, v10}];

  visualIntelligenceViewIfExists = [(VKCImageAnalysisBaseView *)self visualIntelligenceViewIfExists];
  [visualIntelligenceViewIfExists setFrame:{v4, v6, v8, v10}];

  actionInfoView = [(VKCImageAnalysisBaseView *)self actionInfoView];
  superview = [actionInfoView superview];

  if (superview == self)
  {
    actionInfoView2 = [(VKCImageAnalysisBaseView *)self actionInfoView];
    [actionInfoView2 setFrame:{v4, v6, v8, v10}];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  subjectHighlightView4 = [(VKCImageAnalysisBaseView *)self hitTest:eventCopy withEvent:self->_actionInfoView usingSubviewsOf:x, y];
  if (subjectHighlightView4)
  {
LABEL_2:
    subjectHighlightView = subjectHighlightView4;
    goto LABEL_3;
  }

  if (![(VKCImageAnalysisBaseView *)self isVisualIntelligenceType]|| ([(VKCImageAnalysisBaseView *)self visualIntelligenceView], v17 = objc_claimAutoreleasedReturnValue(), [(VKCImageAnalysisBaseView *)self hitTest:eventCopy withEvent:v17 usingSubviewsOf:x, y], subjectHighlightView = objc_claimAutoreleasedReturnValue(), v17, !subjectHighlightView))
  {
    if (![(VKCImageAnalysisBaseView *)self subjectHighlightActive])
    {
      goto LABEL_29;
    }

    subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
    if (([(VKCImageAnalysisBaseView *)self activeInteractionTypes]& 4) != 0)
    {
      visualSearchView = [(VKCImageAnalysisBaseView *)self visualSearchView];
      v19 = [(VKCImageAnalysisBaseView *)self hitTest:eventCopy withEvent:visualSearchView usingSubviewsOf:x, y];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = subjectHighlightView;
      }

      v22 = v21;

      subjectHighlightView = v22;
    }

    if (!subjectHighlightView)
    {
LABEL_29:
      translationView = [(VKCImageAnalysisBaseView *)self translationView];
      subjectHighlightView = [(VKCImageAnalysisBaseView *)self hitTest:eventCopy withEvent:translationView usingSubviewsOf:x, y];

      if (!subjectHighlightView)
      {
        dataDetectorView = [(VKCImageAnalysisBaseView *)self dataDetectorView];
        subjectHighlightView = [(VKCImageAnalysisBaseView *)self hitTest:eventCopy withEvent:dataDetectorView usingSubviewsOf:x, y];

        if (!subjectHighlightView)
        {
          visualSearchView2 = [(VKCImageAnalysisBaseView *)self visualSearchView];
          subjectHighlightView = [(VKCImageAnalysisBaseView *)self hitTest:eventCopy withEvent:visualSearchView2 usingSubviewsOf:x, y];

          if (!subjectHighlightView)
          {
            regexHighlightViewIfExists = [(VKCImageAnalysisBaseView *)self regexHighlightViewIfExists];
            subjectHighlightView = [(VKCImageAnalysisBaseView *)self hitTest:eventCopy withEvent:regexHighlightViewIfExists usingSubviewsOf:x, y];

            if (!subjectHighlightView)
            {
              textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
              [(VKCImageAnalysisBaseView *)self convertPoint:textSelectionView toView:x, y];
              v29 = v28;
              v31 = v30;

              textSelectionView2 = [(VKCImageAnalysisBaseView *)self textSelectionView];
              subjectHighlightView = [textSelectionView2 hitTest:eventCopy withEvent:{v29, v31}];

              v33 = [(VKCImageAnalysisBaseView *)self containsTextAtPoint:x, y];
              hasActiveTextSelection = [(VKCImageAnalysisBaseView *)self hasActiveTextSelection];
              v35 = [(VKCImageAnalysisBaseView *)self longPressDataDetectorsInTextMode]&& [(VKCImageAnalysisBaseView *)self dataDetectorTypeAtPoint:x, y]!= 0;
              activeInteractionTypes = [(VKCImageAnalysisBaseView *)self activeInteractionTypes];
              if (!v33 && !v35)
              {
                v37 = activeInteractionTypes;
                if ((!hasActiveTextSelection || vk_isSeedBuild()) && (v37 & 8) != 0 && ![(VKCImageAnalysisBaseView *)self subjectViewUserInteractionDisabled])
                {
                  if ([(VKCImageAnalysisBaseView *)self isSubjectHighlightAvailable])
                  {
                    v38 = [(VKCImageAnalysisBaseView *)self containsImageSubjectAtPoint:x, y];
                  }

                  else
                  {
                    v38 = 0;
                  }

                  subjectHighlightView2 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
                  isLivePhoto = [subjectHighlightView2 isLivePhoto];

                  if ((isLivePhoto & 1) != 0 || v38)
                  {
                    subjectHighlightView3 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];

                    subjectHighlightView = subjectHighlightView3;
                  }

                  if (!subjectHighlightView)
                  {
                    if (!vk_isSeedBuild() || [eventCopy buttonMask] != 2)
                    {
                      subjectHighlightView = 0;
                      goto LABEL_3;
                    }

                    subjectHighlightView4 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
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
  debugImageView = [(VKCImageAnalysisBaseView *)self debugImageView];
  if (debugImageView)
  {
    [(VKCImageAnalysisBaseView *)self convertPoint:debugImageView toView:x, y];
    v12 = v11;
    v14 = v13;
    [debugImageView bounds];
    v43.x = v12;
    v43.y = v14;
    if (CGRectContainsPoint(v44, v43))
    {
      v15 = debugImageView;

      subjectHighlightView = v15;
    }
  }

  return subjectHighlightView;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event usingSubviewsOf:(id)of
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  ofCopy = of;
  if (ofCopy)
  {
    [(VKCImageAnalysisBaseView *)self convertPoint:ofCopy toView:x, y];
    v11 = [ofCopy hitTest:eventCopy withEvent:?];
    v12 = v11;
    if (v11 != ofCopy)
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
  analysisResult = [(VKCImageAnalysisBaseView *)self analysisResult];

  if (analysisResult)
  {
    [(VKCImageAnalysisBaseView *)self bounds];
    if ((VKMSizeIsEmptyOrHasNanOrInf(v4, v5) & 1) == 0)
    {
      if ([(VKCImageAnalysisBaseView *)self wantsAutomaticContentsRectCalculation])
      {
        viewForObservingContentMode = [(VKCImageAnalysisBaseView *)self viewForObservingContentMode];
        if (viewForObservingContentMode)
        {
          [(VKCImageAnalysisBaseView *)self bounds];
          v8 = v7;
          v10 = v9;
          v12 = v11;
          v14 = v13;
          contentMode = [viewForObservingContentMode contentMode];
          analysisResult2 = [(VKCImageAnalysisBaseView *)self analysisResult];
          [analysisResult2 imageSize];
          v18 = v17;
          v20 = v19;
          analysisResult3 = [(VKCImageAnalysisBaseView *)self analysisResult];
          request = [analysisResult3 request];
          +[VKCImageContentRectCalculator unitContentsRectForBounds:contentMode:imageSize:orientation:view:](VKCImageContentRectCalculator, "unitContentsRectForBounds:contentMode:imageSize:orientation:view:", contentMode, [request imageOrientation], viewForObservingContentMode, v8, v10, v12, v14, v18, v20);
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
        delegate = [(VKCImageAnalysisBaseView *)self delegate];
        v32 = [delegate topLevelImplementsContentsRectDelegateForBaseView:self];

        if (v32)
        {
          delegate2 = [(VKCImageAnalysisBaseView *)self delegate];
          [delegate2 contentsRectForImageRecognitionBaseView:self];
          v35 = v34;
          v37 = v36;
          v39 = v38;
          v41 = v40;

          selfCopy3 = self;
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
              selfCopy2 = self;
              _os_log_impl(&dword_1B4335000, v47, OS_LOG_TYPE_DEFAULT, "Interaction does not want automaticContentsRectCalculation, but did not implement contentsRectFor...... Falling back to Unit Rect: %@", &v49, 0xCu);
            }
          }

          v43 = 0.0;
          v44 = 0.0;
          v45 = 1.0;
          v46 = 1.0;
          selfCopy3 = self;
        }

        [(VKCImageAnalysisBaseView *)selfCopy3 setContentsRect:v43, v44, v45, v46];
      }

      textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
      [textSelectionView updateSelectionRectsForBoundsChange];
    }
  }

  [(VKCImageAnalysisBaseView *)self updateDebugButtonIfNecessary];
}

- (void)_logVisualSearchHintAvailabilityUpdate
{
  activeInteractionTypes = [(VKCImageAnalysisBaseView *)self activeInteractionTypes];
  if ([(VKCImageAnalysisBaseView *)self isAnalysisVisible]&& (activeInteractionTypes & 4) != 0)
  {
    [(VKCImageAnalysisBaseView *)self sendVisualSearchAnalyticsWithDidBecomeActive:1];
    delegate = [(VKCImageAnalysisBaseView *)self delegate];
    automaticallyShowVisualSearchResults = [delegate automaticallyShowVisualSearchResults];

    if (automaticallyShowVisualSearchResults)
    {
      return;
    }

    v8 = +[VKImageAnalyzerMadInterface sharedInterface];
    analysisResult = [(VKCImageAnalysisBaseView *)self analysisResult];
    request = [analysisResult request];
    [v8 didShowVisualSearchHintsForRequest:request invocationType:3];
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
  superview = [(VKCImageAnalysisBaseView *)self superview];
  v3Superview = [superview superview];

  if (v3Superview)
  {
    do
    {
      v3Superview2 = [superview superview];

      v23Superview = [v3Superview2 superview];

      v6 = v3Superview2;
      superview = v3Superview2;
    }

    while (v23Superview);
  }

  else
  {
    v6 = superview;
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
    analysisResult = [(VKCImageAnalysisBaseView *)self analysisResult];
    v22 = analysisResult != 0;

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
  activeInteractionTypes = [(VKCImageAnalysisBaseView *)self activeInteractionTypes];
  stringHighlightsActive = [(VKCImageAnalysisBaseView *)self stringHighlightsActive];
  v6 = stringHighlightsActive;
  clientDidSetNormalizedRect = self->_clientDidSetNormalizedRect;
  if (clientDidSetNormalizedRect)
  {
    actionInfoView = [(VKCImageAnalysisBaseView *)self actionInfoView];
    v2 = actionInfoView;
    if (!actionInfoView || !((activeInteractionTypes >> 2) & 1 | v6) && (activeInteractionTypes & 0x19) == 0)
    {

      goto LABEL_14;
    }
  }

  else if (!((activeInteractionTypes >> 2) & 1 | stringHighlightsActive) && (activeInteractionTypes & 0x19) == 0)
  {
LABEL_14:

    [(VKCImageAnalysisBaseView *)self _updateAnalysisVisibility];
    return;
  }

  window = [(VKCImageAnalysisBaseView *)self window];

  if (clientDidSetNormalizedRect)
  {
  }

  if (!window)
  {
    goto LABEL_14;
  }

  [(VKCImageAnalysisBaseView *)self updateNormalizedVisibleRect];
}

- (void)updateNormalizedVisibleRect
{
  scrollViewToObserve = [(VKCImageAnalysisBaseView *)self scrollViewToObserve];
  v12 = scrollViewToObserve;
  if (!scrollViewToObserve || (([scrollViewToObserve zoomScale], v5 = v4, objc_msgSend(v12, "minimumZoomScale"), v7 = v6, objc_msgSend(v12, "maximumZoomScale"), v8 = v12, v5 <= v9) ? (v10 = v5 < v7) : (v10 = 1), !v10 && (v5 != v7 || (v11 = objc_msgSend(v12, "isZoomBouncing"), v8 = v12, (v11 & 1) == 0))))
  {
    [(VKCImageAnalysisBaseView *)self calculateNormalizedVisibleRect];
    [(VKCImageAnalysisBaseView *)self setNormalizedVisibleRect:?];
    [(VKCImageAnalysisBaseView *)self _updateAnalysisVisibility];
    v8 = v12;
  }
}

- (void)setNormalizedVisibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v31 = *MEMORY[0x1E69E9840];
  if (VKMRectIsFinite(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height))
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
      textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
      [textSelectionView setNormalizedVisibleRect:{x, y, width, height}];

      dataDetectorView = [(VKCImageAnalysisBaseView *)self dataDetectorView];
      [dataDetectorView setNormalizedVisibleRect:{x, y, width, height}];

      regexHighlightViewIfExists = [(VKCImageAnalysisBaseView *)self regexHighlightViewIfExists];
      [regexHighlightViewIfExists setNormalizedVisibleRect:{x, y, width, height}];

      visualSearchView = [(VKCImageAnalysisBaseView *)self visualSearchView];
      [visualSearchView setNormalizedVisibleRect:{x, y, width, height}];

      translationView = [(VKCImageAnalysisBaseView *)self translationView];
      [translationView setNormalizedVisibleRect:{x, y, width, height}];

      actionInfoView = [(VKCImageAnalysisBaseView *)self actionInfoView];
      [actionInfoView setNormalizedVisibleRect:{x, y, width, height}];

      subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
      [subjectHighlightView setNormalizedVisibleRect:{x, y, width, height}];

      visualIntelligenceViewIfExists = [(VKCImageAnalysisBaseView *)self visualIntelligenceViewIfExists];
      [visualIntelligenceViewIfExists setNormalizedVisibleRect:{x, y, width, height}];

      visualIntelligenceViewIfExists2 = [(VKCImageAnalysisBaseView *)self visualIntelligenceViewIfExists];
      [visualIntelligenceViewIfExists2 setNormalizedVisibleRect:{x, y, width, height}];

      if (+[VKCInternalSettings logNormalizedVisibleRectProgress])
      {
        [(VKCImageBaseOverlayView *)self viewRectFromNormalizedRect:x, y, width, height];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        vk_autoFadeOutShapeRectLayer = [(UIView *)self vk_autoFadeOutShapeRectLayer];
        [vk_autoFadeOutShapeRectLayer setFrame:{v18, v20, v22, v24}];

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
    textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
    [textSelectionView bounds];
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
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  [(VKCImageBaseOverlayView *)self normalizedVisibleRect];
  [delegate baseOverlayView:self didUpdateToNormalizedVisibleRect:?];

  [(VKCImageAnalysisBaseView *)self updateDebugButtonIfNecessary];
  actionInfoView = [(VKCImageAnalysisBaseView *)self actionInfoView];
  [actionInfoView vk_setNeedsLayout];
}

- (void)updateDebugButtonIfNecessary
{
  [(VKCImageAnalysisBaseView *)self visibleImageRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  debugImageView = [(VKCImageAnalysisBaseView *)self debugImageView];
  if (!debugImageView)
  {
    return;
  }

  vk_colorWith80PercentOpacity = debugImageView;
  window = [(VKCImageAnalysisBaseView *)self window];
  if (window)
  {
    v13 = window;
    HasArea = VKMRectHasArea(v4, v6, v8, v10);

    if (!HasArea)
    {
      return;
    }

    analysisResult = [(VKCImageAnalysisBaseView *)self analysisResult];
    if (analysisResult)
    {
      [MEMORY[0x1E69DC888] greenColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] orangeColor];
    }
    v16 = ;

    vk_colorWith80PercentOpacity = [v16 vk_colorWith80PercentOpacity];

    [(UIView *)self vk_viewLengthFromWindowLength:1.0];
    v18 = v17;
    traitCollection = [(VKCImageAnalysisBaseView *)self traitCollection];
    if ([traitCollection vk_hasCompactSize])
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
    debugImageView2 = [(VKCImageAnalysisBaseView *)self debugImageView];
    [debugImageView2 setVk_contentTintColor:vk_colorWith80PercentOpacity];
    if (!VKMRectIsFinite(v27, v29, v24, v26))
    {
      goto LABEL_39;
    }

    v75 = debugImageView2;
    [debugImageView2 setFrame:{v27, v29, v24, v26}];
    analysisResult2 = [(VKCImageAnalysisBaseView *)self analysisResult];
    v32 = MEMORY[0x1E696AD60];
    analysisResult3 = [(VKCImageAnalysisBaseView *)self analysisResult];
    request = [analysisResult3 request];
    requestID = [request requestID];
    textDataDetectorElements = [analysisResult2 textDataDetectorElements];
    v36 = [textDataDetectorElements count];
    mrcDataDetectorElements = [analysisResult2 mrcDataDetectorElements];
    v38 = [mrcDataDetectorElements count];
    v74 = analysisResult2;
    visualSearchResult = [analysisResult2 visualSearchResult];
    resultItems = [visualSearchResult resultItems];
    v41 = [v32 stringWithFormat:@"ID:%d DD:%lu MRC:%lu VS:%lu ", requestID, v36, v38, objc_msgSend(resultItems, "count")];

    activeInteractionTypes = [(VKCImageAnalysisBaseView *)self activeInteractionTypes];
    [v41 appendString:@"["];
    if (activeInteractionTypes)
    {
      [v41 appendString:{@"T, "}];
      if ((activeInteractionTypes & 2) == 0)
      {
LABEL_14:
        if ((activeInteractionTypes & 4) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_30;
      }
    }

    else if ((activeInteractionTypes & 2) == 0)
    {
      goto LABEL_14;
    }

    [v41 appendString:{@"DD, "}];
    if ((activeInteractionTypes & 4) == 0)
    {
LABEL_15:
      if ((activeInteractionTypes & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_31;
    }

LABEL_30:
    [v41 appendString:{@"VS, "}];
    if ((activeInteractionTypes & 8) == 0)
    {
LABEL_16:
      if ((activeInteractionTypes & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

LABEL_31:
    [v41 appendString:{@"S, "}];
    if ((activeInteractionTypes & 0x10) == 0)
    {
LABEL_18:
      if ([v41 characterAtIndex:{objc_msgSend(v41, "length") - 1}])
      {
        [v41 replaceCharactersInRange:objc_msgSend(v41 withString:{"length") - 1, 1, &stru_1F2C04538}];
      }

      [v41 appendString:@"] "];
      analysisResult4 = [(VKCImageAnalysisBaseView *)self analysisResult];
      sourceDocument = [analysisResult4 sourceDocument];

      if (sourceDocument)
      {
        [v41 appendString:@"🔤"];
      }

      analysisResult5 = [(VKCImageAnalysisBaseView *)self analysisResult];
      mrcDataDetectorElements2 = [analysisResult5 mrcDataDetectorElements];

      if (mrcDataDetectorElements2)
      {
        [v41 appendString:@"🎛"];
      }

      analysisResult6 = [(VKCImageAnalysisBaseView *)self analysisResult];
      visualSearchResult2 = [analysisResult6 visualSearchResult];

      if (visualSearchResult2)
      {
        [v41 appendString:@"🏞"];
      }

      subjectContext = [(VKCImageAnalysisBaseView *)self subjectContext];
      subjectCount = [subjectContext subjectCount];

      if (subjectCount)
      {
        v51 = @"😻";
      }

      else
      {
        if (![(VKCImageAnalysisBaseView *)self isSubjectAnalysisComplete])
        {
LABEL_36:
          textInfoView = [(VKCImageAnalysisBaseView *)self textInfoView];
          [textInfoView setText:v41];
          v53 = [MEMORY[0x1E69DB878] systemFontOfSize:v26 * 0.5];
          [textInfoView setFont:v53];

          [textInfoView sizeToFit];
          [textInfoView bounds];
          v55 = v54;
          debugImageView2 = v75;
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

          [textInfoView frame];
          v67 = v66;
          v69 = v68;
          v70 = v68 / 3.0;
          layer = [textInfoView layer];
          [layer setCornerRadius:v70];

          [textInfoView setFrame:{v60, v63, v67, v69}];
LABEL_39:
          layer2 = [debugImageView2 layer];
          [layer2 setShadowRadius:v18 + v18];

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

- (void)debugButtonDidTap:(id)tap
{
  debugMenuProvider = [(VKCImageAnalysisBaseView *)self debugMenuProvider];
  debugImageView = [(VKCImageAnalysisBaseView *)self debugImageView];
  debugImageView2 = [(VKCImageAnalysisBaseView *)self debugImageView];
  [debugImageView2 bounds];
  [debugMenuProvider presentDebugMenuProvider:self fromView:debugImageView rect:?];
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
  superview = [(VKCImageAnalysisBaseView *)self superview];
  if (superview)
  {
    v16 = superview;
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

      superview2 = [v16 superview];

      v16 = superview2;
    }

    while (superview2);
  }

  v174 = v10;
  v177 = v8;
  v180 = v6;
  v183 = v4;
  superview3 = [(VKCImageAnalysisBaseView *)self superview];
  [(VKCImageAnalysisBaseView *)self bounds];
  [(VKCImageAnalysisBaseView *)self convertRect:0 toView:?];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  window = [(VKCImageAnalysisBaseView *)self window];
  [window vk_safeAreaBounds];
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
  window2 = [(VKCImageAnalysisBaseView *)self window];
  if (v11)
  {
    v45 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      window3 = [(VKCImageAnalysisBaseView *)self window];
      v165 = VKMUIStringForRect(x, y, width, height);
      *buf = 138412546;
      v187 = window3;
      v188 = 2112;
      v189 = v165;
      _os_log_debug_impl(&dword_1B4335000, v45, OS_LOG_TYPE_DEBUG, "Beginning normalizedVisibleRect window:%@  windowContentsRect: %@", buf, 0x16u);
    }
  }

  if (VKMRectHasArea(x, y, width, height))
  {
    v168 = window2;
    if (superview3)
    {
      v170 = v13;
      v46 = x;
      v47 = y;
      v48 = width;
      v49 = height;
      while (1)
      {
        lastObject = [v14 lastObject];

        if (lastObject == superview3)
        {
          [v14 removeLastObject];
        }

        lastObject2 = [v14 lastObject];
        if (lastObject2)
        {
          [(VKCImageAnalysisBaseView *)superview3 bounds];
        }

        else
        {
          [(UIView *)superview3 vk_safeAreaBounds];
        }

        [(VKCImageAnalysisBaseView *)superview3 convertRect:0 toView:?];
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
            v187 = superview3;
            v188 = 2112;
            v189 = v57;
            _os_log_impl(&dword_1B4335000, v56, OS_LOG_TYPE_INFO, "upDatedWindowContentsRect fromView: %@, windowContentsRect: %@", buf, 0x16u);
          }
        }

        if (VKMRectHasInfComponents(x, y, width, height))
        {
          break;
        }

        v22Superview = [(VKCImageAnalysisBaseView *)superview3 superview];

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

        superview3 = v22Superview;
        if (!v22Superview)
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
      selfCopy = self;
      window4 = [(VKCImageAnalysisBaseView *)selfCopy window];
      [window4 vk_safeAreaBounds];
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

      if (selfCopy)
      {
        v169 = v14;
        v172 = selfCopy;
        do
        {
          v77 = objc_opt_class();
          v78 = VKDynamicCast(v77, selfCopy);
          v79 = v78;
          if (v78)
          {
            navigationController = [v78 navigationController];
            toolbar = [navigationController toolbar];
            if (toolbar && ([navigationController isToolbarHidden] & 1) == 0)
            {
              v175 = v73;
              v178 = v74;
              v181 = v75;
              v184 = v76;
              toolbar2 = [navigationController toolbar];
              toolbar3 = [navigationController toolbar];
              [toolbar3 bounds];
              [toolbar2 convertRect:0 toView:?];
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
                    v187 = toolbar;
                    v188 = 2112;
                    v189 = v102;
                    _os_log_impl(&dword_1B4335000, v101, OS_LOG_TYPE_INFO, "updatedWindowContentsRect fromToolbar: %@, windowContentsRect: %@", buf, 0x16u);
                  }
                }
              }
            }

            navigationItem = [v79 navigationItem];
            navigationBar = [navigationItem navigationBar];

            if (navigationBar && ([(VKCImageAnalysisBaseView *)navigationBar isHidden]& 1) == 0)
            {
              v176 = v73;
              v179 = v74;
              v182 = v75;
              v185 = v76;
              v105 = v11;
              [(VKCImageAnalysisBaseView *)navigationBar bounds];
              [(VKCImageAnalysisBaseView *)navigationBar convertRect:0 toView:?];
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
                    v187 = navigationBar;
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
              v187 = selfCopy;
              v188 = 2112;
              v189 = v127;
              _os_log_impl(&dword_1B4335000, v126, OS_LOG_TYPE_INFO, "updatedWindowContentsRect fromView: %@, windowContentsRect: %@", buf, 0x16u);
            }
          }

          nextResponder = [(VKCImageAnalysisBaseView *)selfCopy nextResponder];

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

          selfCopy = nextResponder;
        }

        while (nextResponder);
        window2 = v168;
        selfCopy = v172;
      }

      [(VKCImageAnalysisBaseView *)selfCopy convertRect:0 fromView:v73, v74, v75, v76];
      v130 = v129;
      v132 = v131;
      v134 = v133;
      v136 = v135;
      [(VKCImageAnalysisBaseView *)selfCopy bounds];
      v138 = v137;
      v140 = v139;
      v142 = v141;
      v144 = v143;
      [(VKCImageBaseOverlayView *)selfCopy contentsRect];
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

    window2 = 0;
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
  activeInteractionTypes = [(VKCImageAnalysisBaseView *)self activeInteractionTypes];

  [(VKCImageAnalysisBaseView *)self configureForActiveTypes:activeInteractionTypes];
}

- (void)configureForActiveTypes:(unint64_t)types
{
  activeInteractionTypes = self->_activeInteractionTypes;
  self->_activeInteractionTypes = types;
  textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
  dataDetectorView = [(VKCImageAnalysisBaseView *)self dataDetectorView];
  visualSearchView = [(VKCImageAnalysisBaseView *)self visualSearchView];
  translationView = [(VKCImageAnalysisBaseView *)self translationView];
  regexHighlightViewIfExists = [(VKCImageAnalysisBaseView *)self regexHighlightViewIfExists];
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  visualIntelligenceViewIfExists = [(VKCImageAnalysisBaseView *)self visualIntelligenceViewIfExists];
  viCoordinatorIfExists = [(VKCImageAnalysisBaseView *)self viCoordinatorIfExists];
  omnibarContainerView = [viCoordinatorIfExists omnibarContainerView];

  debugImageView = [(VKCImageAnalysisBaseView *)self debugImageView];
  actionInfoView = [(VKCImageAnalysisBaseView *)self actionInfoView];
  if ((types & 1) != 0 && (-[VKCImageAnalysisBaseView analysisResult](self, "analysisResult"), v7 = objc_claimAutoreleasedReturnValue(), [v7 text], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, v7, v9))
  {
    v10 = ![(VKCImageAnalysisBaseView *)self isShowingTranslation];
  }

  else
  {
    v10 = 0;
  }

  subjectHighlightView2 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  glowLayerActive = [subjectHighlightView2 glowLayerActive];

  isShowingTranslation = [(VKCImageAnalysisBaseView *)self isShowingTranslation];
  if ((types & 0x10) != 0)
  {
    [(VKCImageAnalysisBaseView *)self visualIntelligenceView];
    v57 = viCoordinatorIfExists2 = visualIntelligenceViewIfExists;
  }

  else
  {
    viCoordinatorIfExists2 = [(VKCImageAnalysisBaseView *)self viCoordinatorIfExists];
    v57 = visualIntelligenceViewIfExists;
    if (objc_opt_respondsToSelector())
    {
      [viCoordinatorIfExists2 resetInterface];
    }
  }

  isSeedBuild = vk_isSeedBuild();
  if ([(VKCImageAnalysisBaseView *)self longPressDataDetectorsInTextMode])
  {
    v16 = types & ((types & 2) == 0);
  }

  else
  {
    v16 = 0;
  }

  v17 = (types >> 3) & 1 | isSeedBuild;
  stringHighlightsActive = [(VKCImageAnalysisBaseView *)self stringHighlightsActive];
  v19 = stringHighlightsActive;
  v20 = !stringHighlightsActive;
  if (!regexHighlightViewIfExists && stringHighlightsActive)
  {
    regexHighlightViewIfExists = [(VKCImageAnalysisBaseView *)self regexHighlightView];
  }

  _photosInfoSingleTapSubjectModeEnabled = [(VKCImageAnalysisBaseView *)self _photosInfoSingleTapSubjectModeEnabled];
  v22 = (types & 4) == 0 || _photosInfoSingleTapSubjectModeEnabled;
  if (v17)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = !v19 && ((types >> 1) & 1 | v16 & 1) != 0 && !self->_isShowingTranslation;
  v25 = _photosInfoSingleTapSubjectModeEnabled | v23;
  LODWORD(v26) = (types & 4) != 0 && v20 && _photosInfoSingleTapSubjectModeEnabled;
  if (glowLayerActive)
  {
    v27 = 0;
  }

  else
  {
    LODWORD(v26) = (types & 4) != 0 && v20;
    v27 = isShowingTranslation;
  }

  if (glowLayerActive)
  {
    v28 = 0;
  }

  else
  {
    v28 = v10;
  }

  if (glowLayerActive)
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
    v26 = ((types & 4) != 0) & v20;
  }

  v53 = v26;
  if (v25 == 1)
  {
    v30 = v27;
  }

  else
  {
    v30 = isShowingTranslation;
  }

  v52 = v30;
  if (v25 == 1)
  {
    v10 = v28;
    v24 = v29;
  }

  v54 = v24;
  [dataDetectorView setAllowLongPressDDActivationOnly:v16 & v24];
  [textSelectionView setLongPressDataDetectorsInTextMode:v16];
  dataDetectorView2 = [(VKCImageAnalysisBaseView *)self dataDetectorView];
  displayedElements = [dataDetectorView2 displayedElements];
  v33 = [displayedElements vk_containsObjectPassingTest:&__block_literal_global_315];

  if (v57)
  {
    superview = [v57 superview];

    if (superview != self)
    {
      [(VKCImageAnalysisBaseView *)self addSubview:v57];
    }
  }

  v35 = v10 | v33;
  if (v35)
  {
    superview2 = [textSelectionView superview];

    if (superview2 != self)
    {
      [(VKCImageAnalysisBaseView *)self addSubview:textSelectionView];
    }
  }

  superview3 = [visualSearchView superview];

  if (superview3 != self)
  {
    [(VKCImageAnalysisBaseView *)self addSubview:visualSearchView];
  }

  v38 = v19 & (glowLayerActive ^ 1);
  if (v54)
  {
    superview4 = [dataDetectorView superview];

    if (superview4 != self)
    {
      [(VKCImageAnalysisBaseView *)self addSubview:dataDetectorView];
    }
  }

  if (v38)
  {
    superview5 = [regexHighlightViewIfExists superview];

    if (superview5 != self)
    {
      [(VKCImageAnalysisBaseView *)self addSubview:regexHighlightViewIfExists];
    }
  }

  if (actionInfoView)
  {
    superview6 = [actionInfoView superview];
    v42 = superview6;
    if (superview6 == self)
    {
    }

    else
    {
      automaticVisualRectLayoutDisabled = [actionInfoView automaticVisualRectLayoutDisabled];

      if ((automaticVisualRectLayoutDisabled & 1) == 0)
      {
        [(VKCImageAnalysisBaseView *)self addSubview:actionInfoView];
      }
    }
  }

  if (v52)
  {
    superview7 = [translationView superview];

    if (superview7 != self)
    {
      [(VKCImageAnalysisBaseView *)self addSubview:translationView];
    }
  }

  superview8 = [subjectHighlightView superview];

  if (superview8 != self)
  {
    [(VKCImageAnalysisBaseView *)self addSubview:subjectHighlightView];
  }

  [dataDetectorView setAllowLongPressDDActivationOnly:v16];
  [textSelectionView setLongPressDataDetectorsInTextMode:v16];
  v46 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:9];
  [v46 vk_addNonNilObject:v57];
  [v46 vk_addNonNilObject:regexHighlightViewIfExists];
  [v46 vk_addNonNilObject:textSelectionView];
  [v46 vk_addNonNilObject:dataDetectorView];
  [v46 vk_addNonNilObject:subjectHighlightView];
  [v46 vk_addNonNilObject:visualSearchView];
  [v46 vk_addNonNilObject:translationView];
  if (([actionInfoView automaticVisualRectLayoutDisabled] & 1) == 0)
  {
    [v46 vk_addNonNilObject:actionInfoView];
  }

  [v46 vk_addNonNilObject:debugImageView];
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __52__VKCImageAnalysisBaseView_configureForActiveTypes___block_invoke_2;
  v64[3] = &unk_1E7BE6898;
  v64[4] = self;
  [v46 enumerateObjectsUsingBlock:v64];
  if ([(VKCImageAnalysisBaseView *)self isPublicAPI])
  {
    activeInteractionTypes = [(VKCImageAnalysisBaseView *)self activeInteractionTypes];
    LOBYTE(v38) = 0;
    v51 = ([(VKCImageAnalysisBaseView *)self activeInteractionTypes]>> 3) & 1;
    v53 = (activeInteractionTypes >> 2) & 1;
  }

  [textSelectionView setHidden:(v35 & 1) == 0];
  [dataDetectorView setHidden:!v54];
  [visualSearchView setHidden:v53 ^ 1];
  [translationView setHidden:!v52];
  [regexHighlightViewIfExists setHidden:((v10 | v38) & 1) == 0];
  [debugImageView setHidden:types == 0];
  [subjectHighlightView setHidden:v51 ^ 1];
  [omnibarContainerView setHidden:(types & 0x10) == 0];
  [visualSearchView setUserInteractionEnabled:v53];
  [textSelectionView setUserInteractionEnabled:v10];
  [dataDetectorView setUserInteractionEnabled:v54];
  [translationView setUserInteractionEnabled:{-[VKCImageAnalysisBaseView isShowingTranslation](self, "isShowingTranslation")}];
  if ((v51 ^ 1))
  {
    v48 = 0;
  }

  else
  {
    v48 = [(VKCImageAnalysisBaseView *)self subjectViewUserInteractionDisabled]^ 1;
  }

  [subjectHighlightView setUserInteractionEnabled:v48];
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

- (BOOL)containsInteractiveItemAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  activeInteractionTypes = [(VKCImageAnalysisBaseView *)self activeInteractionTypes];
  if ((activeInteractionTypes & 1) == 0)
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
    if ((activeInteractionTypes & 2) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
LABEL_2:
    v7 = 0;
    if ((activeInteractionTypes & 2) == 0)
    {
      goto LABEL_5;
    }
  }

  if (!v7)
  {
    v7 = [(VKCImageAnalysisBaseView *)self dataDetectorTypeAtPoint:x, y]!= 0;
  }

LABEL_5:
  if ((activeInteractionTypes & 4) == 0 || v7)
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
  actionInfoView = [(VKCImageAnalysisBaseView *)self actionInfoView];
  isHidden = [actionInfoView isHidden];

  if (isHidden)
  {
    result = 0;
    if ((activeInteractionTypes & 8) == 0)
    {
      return result;
    }
  }

  else
  {
    result = [(VKCImageAnalysisBaseView *)self containsActionInfoItemAtPoint:x, y];
    if ((activeInteractionTypes & 8) == 0)
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

- (BOOL)containsTextAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (([(VKCImageAnalysisBaseView *)self activeInteractionTypes]& 1) == 0)
  {
    return 0;
  }

  return [(VKCImageAnalysisBaseView *)self analysisContainsTextAtPoint:x, y];
}

- (BOOL)containsActionInfoItemAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  actionInfoView = [(VKCImageAnalysisBaseView *)self actionInfoView];
  [actionInfoView convertPoint:self fromView:{x, y}];
  v8 = v7;
  v10 = v9;

  actionInfoView2 = [(VKCImageAnalysisBaseView *)self actionInfoView];
  v12 = [actionInfoView2 containsInteractableItemAtPoint:{v8, v10}];

  if (v12)
  {
    return 1;
  }

  debugImageView = [(VKCImageAnalysisBaseView *)self debugImageView];

  if (!debugImageView)
  {
    return 0;
  }

  debugImageView2 = [(VKCImageAnalysisBaseView *)self debugImageView];
  [(VKCImageAnalysisBaseView *)self convertPoint:debugImageView2 toView:x, y];
  v17 = v16;
  v19 = v18;

  debugImageView3 = [(VKCImageAnalysisBaseView *)self debugImageView];
  [debugImageView3 bounds];
  v21.x = v17;
  v21.y = v19;
  LOBYTE(debugImageView2) = CGRectContainsPoint(v22, v21);

  return debugImageView2;
}

- (BOOL)containsImageSubjectAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [subjectHighlightView convertPoint:self fromView:{x, y}];
  v8 = v7;
  v10 = v9;

  subjectHighlightView2 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  LOBYTE(subjectHighlightView) = [subjectHighlightView2 subjectExistsAtPoint:{v8, v10}];

  return subjectHighlightView;
}

- (BOOL)analysisContainsTextAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
  [(VKCImageAnalysisBaseView *)self convertPoint:textSelectionView toView:x, y];
  v8 = v7;
  v10 = v9;

  textSelectionView2 = [(VKCImageAnalysisBaseView *)self textSelectionView];
  [(VKCImageAnalysisBaseView *)self currentExtraOffsetForViewScale];
  v13 = [textSelectionView2 closestQuadForBlockOfType:8 toPoint:v8 maxDistance:{v10, v12}];

  return v13 != 0;
}

- (void)setActiveSubjectIndexSet:(id)set
{
  setCopy = set;
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [subjectHighlightView setActiveSubjectIndexSet:setCopy];
}

- (NSIndexSet)activeSubjectIndexSet
{
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  activeSubjectIndexSet = [subjectHighlightView activeSubjectIndexSet];

  return activeSubjectIndexSet;
}

- (NSIndexSet)allSubjectsIndexSet
{
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  allSubjectsIndexSet = [subjectHighlightView allSubjectsIndexSet];

  return allSubjectsIndexSet;
}

- (id)indexOfSubjectAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [(VKCImageAnalysisBaseView *)self convertPoint:subjectHighlightView toView:x, y];
  v8 = v7;
  v10 = v9;

  subjectHighlightView2 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  v12 = [subjectHighlightView2 indexOfSubjectAtPoint:{v8, v10}];

  return v12;
}

- (double)currentExtraOffsetForViewScale
{
  textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
  +[VKCInternalSettings extraWindowPointTouchOffset];
  [textSelectionView vk_viewLengthFromWindowLength:?];
  v4 = v3;

  return v4;
}

- (id)dataDetectorElementPoint:(CGPoint)point requestingView:(id)view
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  activeInteractionTypes = [(VKCImageAnalysisBaseView *)self activeInteractionTypes];
  if ((activeInteractionTypes & 2) != 0 || (activeInteractionTypes & 1) != 0 && [(VKCImageAnalysisBaseView *)self longPressDataDetectorsInTextMode])
  {
    dataDetectorView = [(VKCImageAnalysisBaseView *)self dataDetectorView];
    [viewCopy convertPoint:dataDetectorView toView:{x, y}];
    v11 = v10;
    v13 = v12;

    dataDetectorView2 = [(VKCImageAnalysisBaseView *)self dataDetectorView];
    [(VKCImageAnalysisBaseView *)self currentExtraOffsetForViewScale];
    v16 = [dataDetectorView2 closestElementToPoint:v11 maxDistance:{v13, v15}];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (unint64_t)dataDetectorTypeAtPoint:(CGPoint)point
{
  v3 = [(VKCImageAnalysisBaseView *)self dataDetectorElementPoint:self requestingView:point.x, point.y];
  v4 = v3;
  if (v3)
  {
    dataDetectorTypes = [v3 dataDetectorTypes];
  }

  else
  {
    dataDetectorTypes = 0;
  }

  return dataDetectorTypes;
}

- (BOOL)containsVisualSearchItemAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (([(VKCImageAnalysisBaseView *)self activeInteractionTypes]& 4) == 0)
  {
    return 0;
  }

  visualSearchView = [(VKCImageAnalysisBaseView *)self visualSearchView];
  [(VKCImageAnalysisBaseView *)self convertPoint:visualSearchView toView:x, y];
  v9 = v8;
  v11 = v10;

  visualSearchView2 = [(VKCImageAnalysisBaseView *)self visualSearchView];
  LOBYTE(visualSearchView) = [visualSearchView2 containsVisualSearchItemAtPoint:{v9, v11}];

  return visualSearchView;
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

    analysisResult = [(VKCImageAnalysisBaseView *)self analysisResult];
    [(VKCImageBaseOverlayView *)self->_regexHighlightView setRecognitionResult:analysisResult];

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
    date = [MEMORY[0x1E695DF00] date];
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
    date2 = [MEMORY[0x1E695DF00] date];
    [date2 timeIntervalSinceDate:date];
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

    date3 = [MEMORY[0x1E695DF00] date];
    v14 = objc_alloc_init(v5);
    v15 = self->_viCoordinator;
    self->_viCoordinator = v14;

    analysisResult = [(VKCImageAnalysisBaseView *)self analysisResult];
    visualIntelligenceResult = [analysisResult visualIntelligenceResult];
    [(VIUIVisualIntelligenceViewCoordinator *)self->_viCoordinator setAnalysisResult:visualIntelligenceResult];

    omnibarContainerView = [(VIUIVisualIntelligenceViewCoordinator *)self->_viCoordinator omnibarContainerView];
    [omnibarContainerView setHidden:1];

    if (objc_opt_respondsToSelector())
    {
      delegate = [(VKCImageAnalysisBaseView *)self delegate];
      v20 = [delegate interactionDelegateForBaseView:self];
      [(VIUIVisualIntelligenceViewCoordinator *)self->_viCoordinator setHostDelegate:v20];
    }

    date4 = [MEMORY[0x1E695DF00] date];
    [date4 timeIntervalSinceDate:date3];
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
    viCoordinator = [(VKCImageAnalysisBaseView *)self viCoordinator];
    overlayView = [viCoordinator overlayView];
    v6 = self->_visualIntelligenceView;
    self->_visualIntelligenceView = overlayView;

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
    analysisResult = [(VKCImageAnalysisBaseView *)self analysisResult];
    [(VKCImageSubjectHighlightView *)self->_subjectHighlightView setRecognitionResult:analysisResult];

    [(VKCImageBaseOverlayView *)self normalizedVisibleRect];
    [(VKCImageSubjectHighlightView *)self->_subjectHighlightView setNormalizedVisibleRect:?];
    [(VKCImageBaseOverlayView *)self->_subjectHighlightView setIdentifierIndex:[(VKCImageBaseOverlayView *)self identifierIndex]];
    [(VKCImageAnalysisBaseView *)self configureForCurrentActiveInteractionTypes];
  }

  v6 = self->_subjectHighlightView;

  return v6;
}

- (void)scrollViewWillChange:(id)change
{
  changeCopy = change;
  v5 = objc_opt_class();
  object = [changeCopy object];

  v14 = VKDynamicCast(v5, object);

  if ([(UIView *)self vk_isDescendantOfView:v14])
  {
    layer = [v14 layer];
    animationKeys = [layer animationKeys];
    v9 = [animationKeys count];

    if (v9)
    {
      actionInfoView = [(VKCImageAnalysisBaseView *)self actionInfoView];
      isHidden = [actionInfoView isHidden];

      if ((isHidden & 1) == 0)
      {
        [(VKCImageAnalysisBaseView *)self setActionInfoHiddenForZoomAnimation:1];
        actionInfoView2 = [(VKCImageAnalysisBaseView *)self actionInfoView];
        [actionInfoView2 setVk_alpha:0.0];
      }
    }

    scrollViewToObserve = [(VKCImageAnalysisBaseView *)self scrollViewToObserve];

    if (v14 == scrollViewToObserve)
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

- (void)willEnterLiveResize:(id)resize
{
  actionInfoView = [(VKCImageAnalysisBaseView *)self actionInfoView];
  [actionInfoView alpha];
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

- (void)didEndLiveResize:(id)resize
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

- (void)scrollViewDidChange:(id)change
{
  changeCopy = change;
  v5 = objc_opt_class();
  object = [changeCopy object];

  v10 = VKDynamicCast(v5, object);

  if ([(VKCImageAnalysisBaseView *)self actionInfoHiddenForZoomAnimation])
  {
    [(VKCImageAnalysisBaseView *)self setActionInfoHiddenForZoomAnimation:0];
    [(VKCImageAnalysisBaseView *)self updateNormalizedVisibleRectIfNecessary];
    actionInfoView = [(VKCImageAnalysisBaseView *)self actionInfoView];
    [actionInfoView setVk_alpha:1.0];
  }

  scrollViewToObserve = [(VKCImageAnalysisBaseView *)self scrollViewToObserve];

  if (v10 == scrollViewToObserve)
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
    delegate = [(VKCImageAnalysisBaseView *)self delegate];
    [(VKCImageBaseOverlayView *)self normalizedVisibleRect];
    [delegate baseOverlayView:self didFinishTransitionToNormalizedVisibleRect:?];
  }

LABEL_10:
}

- (void)setScrollViewToObserve:(id)observe
{
  obj = observe;
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewToObserve);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_scrollViewToObserve);
    [v5 _removeScrollViewScrollObserver:self];

    v6 = objc_storeWeak(&self->_scrollViewToObserve, obj);
    [obj _addScrollViewScrollObserver:self];
  }
}

- (void)highlightMatchesWithString:(id)string animated:(BOOL)animated
{
  animatedCopy = animated;
  v15[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v15[0] = stringCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [(VKCImageAnalysisBaseView *)self setHighlightStrings:v7];

  v8 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1B4335000, v8, OS_LOG_TYPE_DEFAULT, "Activating String Highlight Matches Activated: %@", &v13, 0xCu);
  }

  [(VKCImageAnalysisBaseView *)self setStringHighlightsActive:1];
  [(VKCImageAnalysisBaseView *)self configureForCurrentActiveInteractionTypes];
  analysisResult = [(VKCImageAnalysisBaseView *)self analysisResult];
  text = [analysisResult text];

  if (text)
  {
    v11 = [text vk_rangesOfMatchesForString:stringCopy];
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  regexHighlightView = [(VKCImageAnalysisBaseView *)self regexHighlightView];
  [regexHighlightView beginHighlightWithRanges:v11 animated:animatedCopy];
}

- (void)clearRegexHighlightsAnimated:(BOOL)animated updateActiveTypes:(BOOL)types
{
  typesCopy = types;
  animatedCopy = animated;
  v11 = *MEMORY[0x1E69E9840];
  if ([(VKCImageAnalysisBaseView *)self stringHighlightsActive])
  {
    v7 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1B4335000, v7, OS_LOG_TYPE_DEFAULT, "String Highlight Matches Deactivated: %@", &v9, 0xCu);
    }

    [(VKCImageAnalysisBaseView *)self setStringHighlightsActive:0];
    regexHighlightViewIfExists = [(VKCImageAnalysisBaseView *)self regexHighlightViewIfExists];
    [regexHighlightViewIfExists clearHighlightsAnimated:animatedCopy];

    [(VKCImageAnalysisBaseView *)self setHighlightStrings:0];
    if (typesCopy)
    {
      [(VKCImageAnalysisBaseView *)self configureForCurrentActiveInteractionTypes];
    }
  }
}

- (void)subjectBaseViewViewDidCompleteSubjectAnalysis:(id)analysis
{
  [(VKCImageAnalysisBaseView *)self updateDebugButtonIfNecessary];
  if ([(VKCImageAnalysisBaseView *)self _photosInfoSingleTapSubjectModeEnabled])
  {
    if (([(VKCImageAnalysisBaseView *)self activeInteractionTypes]& 4) != 0)
    {
      subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
      subjectContext = [subjectHighlightView subjectContext];
      subjectCount = [subjectContext subjectCount];

      if (subjectCount)
      {
        visualSearchView = [(VKCImageAnalysisBaseView *)self visualSearchView];
        [visualSearchView updateVisibleItems];

        visualSearchView2 = [(VKCImageAnalysisBaseView *)self visualSearchView];
        [visualSearchView2 animateDotsIn];
      }
    }
  }

  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  [delegate baseOverlayViewDidCompleteSubjectAnalysis:self];
}

- (void)subjectBaseViewDidBeginSubjectAnalysis:(id)analysis
{
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  [delegate baseOverlayViewDidBeginSubjectAnalysis:self];
}

- (void)subjectBaseView:(id)view analyticsEventOccurred:(id)occurred
{
  occurredCopy = occurred;
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  [delegate baseOverlayView:self analyticsEventDidOccur:occurredCopy];
}

- (BOOL)subjectHighlightView:(id)view shouldBeginInteractionAtPoint:(CGPoint)point withType:(unint64_t)type
{
  selfCopy = self;
  [(VKCImageAnalysisBaseView *)self convertPoint:view fromView:type, point.x, point.y];
  v7 = v6;
  v9 = v8;
  delegate = [(VKCImageAnalysisBaseView *)selfCopy delegate];
  LOBYTE(selfCopy) = [delegate baseOverlayView:selfCopy shouldBeginInteractionAtPoint:8 withTypes:{v7, v9}];

  return selfCopy;
}

- (void)subjectHighlightView:(id)view willBeginInteractionAtPoint:(CGPoint)point withType:(unint64_t)type
{
  v7 = [VKTextRange emptyRange:view];
  textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
  [textSelectionView setSelectedVKRange:v7];
}

- (void)subjectHighlightViewSubjectInteractionInProgressDidChange:(id)change
{
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  [delegate baseOverlayViewSubjectInteractionInProgressDidChange:self];
}

- (BOOL)isSubjectHighlightShowingLivePhoto:(id)photo delegateHasImplementation:(BOOL *)implementation
{
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  LOBYTE(implementation) = [delegate isBaseOverlayViewShowingLivePhoto:self delegateHasImplementation:implementation];

  return implementation;
}

- (void)subjectHighlightView:(id)view livePhotoShouldPlay:(BOOL)play
{
  playCopy = play;
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  [delegate baseOverlayView:self livePhotoShouldPlay:playCopy];
}

- (id)presentingViewControllerForSubjectHighlightView:(id)view
{
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  presentingViewControllerForImageAnalysisInteraction = [delegate presentingViewControllerForImageAnalysisInteraction];

  return presentingViewControllerForImageAnalysisInteraction;
}

- (BOOL)subjectHighlightView:(id)view containsVSItemForNormalizedPath:(id)path
{
  pathCopy = path;
  visualSearchView = [(VKCImageAnalysisBaseView *)self visualSearchView];
  visualSearchResult = [visualSearchView visualSearchResult];
  resultItems = [visualSearchResult resultItems];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__VKCImageAnalysisBaseView_subjectHighlightView_containsVSItemForNormalizedPath___block_invoke;
  v12[3] = &unk_1E7BE68C0;
  v13 = pathCopy;
  v9 = pathCopy;
  v10 = [resultItems vk_objectsPassingTest:v12];
  LOBYTE(visualSearchResult) = [v10 count] == 1;

  return visualSearchResult;
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

- (void)subjectHighlightView:(id)view activateVSItemForNormalizedPath:(id)path
{
  pathCopy = path;
  visualSearchView = [(VKCImageAnalysisBaseView *)self visualSearchView];
  visualSearchResult = [visualSearchView visualSearchResult];
  resultItems = [visualSearchResult resultItems];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__VKCImageAnalysisBaseView_subjectHighlightView_activateVSItemForNormalizedPath___block_invoke;
  v15[3] = &unk_1E7BE68C0;
  v9 = pathCopy;
  v16 = v9;
  v10 = [resultItems vk_objectPassingTest:v15];
  if (v10)
  {
    delegate = [(VKCImageAnalysisBaseView *)self delegate];
    v12 = [delegate baseOverlayView:self shouldShowLookupForItemFromCallout:v10];

    if (v12)
    {
      activeInteractionTypes = [(VKCImageAnalysisBaseView *)self activeInteractionTypes];
      [(VKCImageAnalysisBaseView *)self setActiveInteractionTypes:4];
      [v10 setCurrentInvocationType:2];
      visualSearchView2 = [(VKCImageAnalysisBaseView *)self visualSearchView];
      [visualSearchView2 presentVisualSearchForItem:v10];

      [(VKCImageAnalysisBaseView *)self setActiveInteractionTypes:activeInteractionTypes];
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

- (void)videoPreviewAvailableForSubjectHighlightView:(id)view
{
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  [delegate videoPreviewAvailableForBaseOverlayView:self];
}

- (BOOL)presentVisualSearchForItem:(id)item
{
  v21 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.visualSearch");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = itemCopy;
    v19 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1B4335000, v5, OS_LOG_TYPE_DEFAULT, "Presenting visual search result for item: %@: %@", &v17, 0x16u);
  }

  visualSearchView = [(VKCImageAnalysisBaseView *)self visualSearchView];
  visualSearchResult = [visualSearchView visualSearchResult];
  resultItems = [visualSearchResult resultItems];
  v9 = [resultItems containsObject:itemCopy];

  if (v9)
  {
    activeInteractionTypes = [(VKCImageAnalysisBaseView *)self activeInteractionTypes];
    [(VKCImageAnalysisBaseView *)self setActiveInteractionTypes:4];
    visualSearchView2 = [(VKCImageAnalysisBaseView *)self visualSearchView];
    [visualSearchView2 presentVisualSearchForItem:itemCopy];

    if (([itemCopy shouldPlaceInCorner] & 1) == 0 && -[VKCImageAnalysisBaseView _photosInfoSingleTapSubjectModeEnabled](self, "_photosInfoSingleTapSubjectModeEnabled"))
    {
      subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
      [itemCopy normalizedIconLocation];
      [subjectHighlightView viewPointFromNormalizedPoint:?];
      v13 = [subjectHighlightView indexOfSubjectAtPoint:?];
      v14 = v13;
      if (v13)
      {
        v15 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(v13, "integerValue")}];
        [subjectHighlightView highlightSubjectAtIndexSet:v15 showCallout:0 showBurst:0 burstPoint:1 animated:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
      }
    }

    [(VKCImageAnalysisBaseView *)self setActiveInteractionTypes:activeInteractionTypes];
  }

  return v9;
}

- (id)tempPNGURLForSubjectHighlightView:(id)view
{
  v4 = VKBundle();
  v5 = [v4 localizedStringForKey:@"VK_SUBJECT_SHARE_FILE_NAME" value:@"VK_SUBJECT_SHARE_FILE_NAME" table:@"Localizable"];
  v6 = [(VKCImageAnalysisBaseView *)self disposableSubjectPNGURLWithTitle:v5];

  return v6;
}

- (id)previewForDataDetectorElementView:(id)view
{
  viewCopy = view;
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  v6 = [delegate previewForDataDetectorElementView:viewCopy];

  return v6;
}

- (void)dataDetectorView:(id)view analyticsEventOccured:(id)occured
{
  occuredCopy = occured;
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  [delegate baseOverlayView:self analyticsEventDidOccur:occuredCopy];
}

- (id)viewForImageSnapshotForTextSelectionView:(id)view
{
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  v5 = [delegate viewForImageSnapshotForBaseView:self];

  return v5;
}

- (id)previewImageForDataDetectorElementView:(id)view
{
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  v5 = [delegate imageForImageSnapshotForBaseView:self];

  return v5;
}

- (BOOL)textSelectionView:(id)view shouldBeginAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(VKCImageAnalysisBaseView *)self convertPoint:view fromView:?];
  v8 = v7;
  v10 = v9;
  if ([(VKCImageAnalysisBaseView *)self hasActiveTextSelection]|| [(VKCImageAnalysisBaseView *)self containsTextAtPoint:x, y])
  {
    delegate = [(VKCImageAnalysisBaseView *)self delegate];
    v12 = [delegate baseOverlayView:self shouldBeginInteractionAtPoint:1 withTypes:{v8, v10}];
  }

  else
  {
    v12 = 0;
  }

  debugImageView = [(VKCImageAnalysisBaseView *)self debugImageView];

  if (debugImageView)
  {
    debugImageView2 = [(VKCImageAnalysisBaseView *)self debugImageView];
    [debugImageView2 frame];
    v17.x = v8;
    v17.y = v10;
    v15 = CGRectContainsPoint(v18, v17);

    return !v15 & v12;
  }

  return v12;
}

- (void)textSelectionView:(id)view requestsDataDetectorActivationAtPoint:(CGPoint)point
{
  [(VKCImageAnalysisBaseView *)self convertPoint:view fromView:point.x, point.y];
  v6 = v5;
  v8 = v7;
  dataDetectorView = [(VKCImageAnalysisBaseView *)self dataDetectorView];
  [(VKCImageAnalysisBaseView *)self currentExtraOffsetForViewScale];
  [dataDetectorView activateLongPressDataDetectorAtPoint:v6 maxDistance:{v8, v9}];
}

- (void)textSelectionView:(id)view selectionDidChange:(id)change
{
  v5 = MEMORY[0x1E696AD88];
  viewCopy = view;
  defaultCenter = [v5 defaultCenter];
  [defaultCenter postNotificationName:@"VKCImageTextSelectionViewSelectionDidChange" object:viewCopy];

  [(VKCImageAnalysisBaseView *)self set_hasActiveTextSelection:[(VKCImageAnalysisBaseView *)self hasActiveTextSelection]];
  [(VKCImageAnalysisBaseView *)self clearStringHighlightsAnimated:0];
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  [delegate textSelectionDidChangeForBaseOverlayView:self];
}

- (void)textSelectionView:(id)view boundsDidChangeFromRect:(CGRect)rect toRect:(CGRect)toRect
{
  [(VKCImageAnalysisBaseView *)self invalidateVisibleTextAreaInfo:view];

  [(VKCImageAnalysisBaseView *)self updateNormalizedVisibleRectIfNecessary];
}

- (id)presentingViewControllerForTextSelectionView:(id)view
{
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  presentingViewControllerForImageAnalysisInteraction = [delegate presentingViewControllerForImageAnalysisInteraction];

  return presentingViewControllerForImageAnalysisInteraction;
}

- (void)textSelectionView:(id)view prepareForCalloutAction:(SEL)action completion:(id)completion
{
  completionCopy = completion;
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  [delegate baseOverlayView:self prepareForCalloutAction:action completion:completionCopy];
}

- (void)subjectHighlightView:(id)view prepareForCalloutAction:(SEL)action completion:(id)completion
{
  completionCopy = completion;
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  [delegate baseOverlayView:self prepareForCalloutAction:action completion:completionCopy];
}

- (id)textSelectionView:(id)view updateStringForCopy:(id)copy
{
  copyCopy = copy;
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  v7 = [delegate baseOverlayView:self updateStringForCopy:copyCopy];

  return v7;
}

- (id)textSelectionView:(id)view updateAttributedStringForCopy:(id)copy
{
  copyCopy = copy;
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  v7 = [delegate baseOverlayView:self updateAttributedStringForCopy:copyCopy];

  return v7;
}

- (BOOL)textSelectionView:(id)view shouldHandleShareWithRanges:(id)ranges boundingRect:(CGRect)rect selectedText:(id)text selectedAttributedText:(id)attributedText
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  attributedTextCopy = attributedText;
  textCopy = text;
  rangesCopy = ranges;
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  LOBYTE(self) = [delegate baseOverlayView:self shouldHandleShareWithRanges:rangesCopy boundingRect:textCopy selectedText:attributedTextCopy selectedAttributedText:{x, y, width, height}];

  return self;
}

- (BOOL)dataDetectorView:(id)view dataDetectorInteractionShouldBeginAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  LOBYTE(selfCopy) = [delegate baseOverlayView:selfCopy shouldBeginInteractionAtPoint:2 withTypes:{x, y}];

  return selfCopy;
}

- (void)willDisplayMenuForDataDetectorView:(id)view
{
  textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
  selectedVKRange = [textSelectionView selectedVKRange];
  [(VKCImageAnalysisBaseView *)self setSelectedTextRangeBeforeDataDetectorMenu:selectedVKRange];

  v5 = +[VKTextRange emptyRange];
  [textSelectionView setSelectedVKRange:v5];
}

- (void)willDismissMenuForDataDetectorView:(id)view
{
  selectedTextRangeBeforeDataDetectorMenu = [(VKCImageAnalysisBaseView *)self selectedTextRangeBeforeDataDetectorMenu];
  textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
  [textSelectionView setSelectedVKRange:selectedTextRangeBeforeDataDetectorMenu];

  [(VKCImageAnalysisBaseView *)self setSelectedTextRangeBeforeDataDetectorMenu:0];
}

- (BOOL)visualSearchItemView:(id)view shouldBeginAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  LOBYTE(selfCopy) = [delegate baseOverlayView:selfCopy shouldBeginInteractionAtPoint:4 withTypes:{x, y}];

  return selfCopy;
}

- (void)textSelectionView:(id)view analyticsEventOccured:(id)occured
{
  occuredCopy = occured;
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  [delegate baseOverlayView:self analyticsEventDidOccur:occuredCopy];
}

- (id)nonTextNormalizedHighlightAllQuadsForTextSelectionView:(id)view
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  dataDetectorView = [(VKCImageAnalysisBaseView *)self dataDetectorView];
  displayedElements = [dataDetectorView displayedElements];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__VKCImageAnalysisBaseView_nonTextNormalizedHighlightAllQuadsForTextSelectionView___block_invoke;
  v9[3] = &unk_1E7BE67F8;
  v7 = v4;
  v10 = v7;
  [displayedElements enumerateObjectsUsingBlock:v9];

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
  analysisResult = [(VKCImageAnalysisBaseView *)self analysisResult];
  v7 = [v3 stringWithFormat:@"<%@: %p> id: %d", v5, self, objc_msgSend(analysisResult, "analysisRequestID")];

  return v7;
}

- (id)summaryDescription
{
  textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
  text = [textSelectionView text];
  v4 = [text vk_substringToIndex:40];

  return v4;
}

- (void)triggerTapToRadar
{
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  [delegate triggerTapToRadar];
}

- (id)textSelectionView:(id)view closestVisualSearchItemForRange:(id)range
{
  viewCopy = view;
  rangeCopy = range;
  visualSearchView = [(VKCImageAnalysisBaseView *)self visualSearchView];
  visualSearchResult = [visualSearchView visualSearchResult];
  resultItems = [visualSearchResult resultItems];

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__12;
  v25 = __Block_byref_object_dispose__12;
  firstObject = [resultItems firstObject];
  if ([resultItems count] >= 2)
  {
    textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
    [textSelectionView selectionQuadsVertexCentroid];
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
      [resultItems enumerateObjectsUsingBlock:v19];
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

- (void)generateTextualVisualSearchResultForQueryInfo:(id)info completionHandler:(id)handler
{
  handlerCopy = handler;
  infoCopy = info;
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  [delegate generateTextualVisualSearchResultForQueryInfo:infoCopy completionHandler:handlerCopy];
}

- (id)visualSearchResultItems
{
  analysisResult = [(VKCImageAnalysisBaseView *)self analysisResult];
  visualSearchResultItems = [analysisResult visualSearchResultItems];

  return visualSearchResultItems;
}

- (void)visualSearchItemView:(id)view didTapVisualSearchIndicatorWithNormalizedBoundingBox:(CGRect)box
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  [delegate baseOverlayView:self didTapVisualSearchIndicatorWithNormalizedBoundingBox:{x, y, width, height}];
}

- (void)visualSearchItemViewDidDismissController:(id)controller
{
  [(VKCImageAnalysisBaseView *)self setVsItemPresentedFromMenu:0];
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  [delegate baseOverlayViewDismissVisualSearchController:self];
}

- (void)generateVisualSearchResultForItems:(id)items queryID:(unint64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  itemsCopy = items;
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  [delegate generateVisualSearchResultForItems:itemsCopy queryID:d completionHandler:handlerCopy];
}

- (void)submitVisualSearchUserFeedbackForReportIdentifier:(id)identifier userFeedbackPayload:(id)payload sfReportData:(id)data
{
  dataCopy = data;
  payloadCopy = payload;
  identifierCopy = identifier;
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  [delegate submitVisualSearchUserFeedbackForReportIdentifier:identifierCopy userFeedbackPayload:payloadCopy sfReportData:dataCopy];
}

- (void)visualSearchView:(id)view analyticsEventOccured:(id)occured
{
  occuredCopy = occured;
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  [delegate baseOverlayView:self analyticsEventDidOccur:occuredCopy];
}

- (id)visualSearchView:(id)view normalizedPathForSubjectAtNormalizedPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  subjectContext = [subjectHighlightView subjectContext];

  v9 = [subjectContext indexOfSubjectAtNormalizedPoint:{x, y}];
  if (v9)
  {
    [(VKCImageBaseOverlayView *)self contentsRect];
    v10 = [subjectContext normalizedPathForSubjectAtIndex:v9 contentsRect:1 topLevelOnly:?];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)visualSearchItemViewDidActivateVSItem:(id)item
{
  itemCopy = item;
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  automaticallyShowVisualSearchResults = [delegate automaticallyShowVisualSearchResults];

  if (automaticallyShowVisualSearchResults)
  {
    visualSearchResultItem = [itemCopy visualSearchResultItem];
    analysis = [visualSearchResultItem analysis];
    imageAnalysisResult = [analysis imageAnalysisResult];
    request = [imageAnalysisResult request];

    visualSearchResultItem2 = [itemCopy visualSearchResultItem];
    currentInvocationType = [visualSearchResultItem2 currentInvocationType];

    if (currentInvocationType)
    {
      v13 = +[VKImageAnalyzerMadInterface sharedInterface];
      [v13 didShowVisualSearchHintsForRequest:request invocationType:currentInvocationType];
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
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  presentingViewControllerForImageAnalysisInteraction = [delegate presentingViewControllerForImageAnalysisInteraction];

  return presentingViewControllerForImageAnalysisInteraction;
}

- (void)setDidAddVisualSearchCornerView:(BOOL)view
{
  viewCopy = view;
  visualSearchView = [(VKCImageAnalysisBaseView *)self visualSearchView];
  [visualSearchView setDidAddVisualSearchCornerView:viewCopy];
}

- (BOOL)visualSearchView:(id)view shouldShowDotForItem:(id)item allItems:(id)items
{
  itemCopy = item;
  itemsCopy = items;
  if ([(VKCImageAnalysisBaseView *)self _photosInfoSingleTapSubjectModeEnabled])
  {
    subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
    subjectContext = [subjectHighlightView subjectContext];

    if (subjectContext)
    {
      subjectHighlightView2 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
      subjectHighlightView3 = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
      subjectContext2 = [subjectHighlightView3 subjectContext];
      subjectCount = [subjectContext2 subjectCount];

      if (subjectCount)
      {
        [itemCopy normalizedIconLocation];
        [(VKCImageBaseOverlayView *)self viewPointFromNormalizedPoint:?];
        v15 = [subjectHighlightView2 indexOfSubjectAtPoint:?];
        if (v15)
        {
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __75__VKCImageAnalysisBaseView_visualSearchView_shouldShowDotForItem_allItems___block_invoke;
          v18[3] = &unk_1E7BE6910;
          v18[4] = self;
          v19 = subjectHighlightView2;
          v20 = itemCopy;
          v21 = v15;
          v16 = [itemsCopy vk_containsObjectPassingTest:v18];
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        [itemsCopy count];
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
    visualSearchView = [(VKCImageAnalysisBaseView *)self visualSearchView];
    [visualSearchView automaticallyShowVisualSearchResults];
  }
}

- (void)showTopVisualSearchResult
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1B4335000, v3, OS_LOG_TYPE_DEFAULT, "ShowTopVisualSearchResult: %@", &v5, 0xCu);
  }

  visualSearchView = [(VKCImageAnalysisBaseView *)self visualSearchView];
  [visualSearchView showTopVisualSearchResult];
}

- (void)addMetadataToVSFeedbackItem:(id)item
{
  itemCopy = item;
  analysisResult = [(VKCImageAnalysisBaseView *)self analysisResult];
  analysisRequestID = [analysisResult analysisRequestID];

  analysisResult2 = [(VKCImageAnalysisBaseView *)self analysisResult];
  request = [analysisResult2 request];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__VKCImageAnalysisBaseView_addMetadataToVSFeedbackItem___block_invoke;
  v10[3] = &unk_1E7BE6938;
  v11 = request;
  v12 = analysisRequestID;
  v9 = request;
  [itemCopy setReportAnIssueMetadataFetchingBlock:v10];
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

- (void)addAsyncMRCElement:(id)element
{
  v9 = *MEMORY[0x1E69E9840];
  elementCopy = element;
  dataDetectorView = [(VKCImageAnalysisBaseView *)self dataDetectorView];
  [dataDetectorView appendMRCAsyncElement:elementCopy];

  v6 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = elementCopy;
    _os_log_impl(&dword_1B4335000, v6, OS_LOG_TYPE_DEFAULT, "Added asyncMRCInfo with element: %@", &v7, 0xCu);
  }
}

- (void)createStickerRepresentationsAtIndexSet:(id)set type:(unint64_t)type stickerIDs:(id)ds progress:(id)progress completion:(id)completion
{
  completionCopy = completion;
  progressCopy = progress;
  dsCopy = ds;
  setCopy = set;
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [subjectHighlightView createStickerRepresentationsAtIndexSet:setCopy type:type stickerIDs:dsCopy progress:progressCopy completion:completionCopy];
}

- (id)videoPreviewSubjectMatteAtCompositionTime:(id *)time
{
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  v7 = *time;
  v5 = [subjectHighlightView videoPreviewSubjectMatteAtCompositionTime:&v7];

  return v5;
}

- (id)videoPreviewSubjectMatteForImage:(id)image atCompositionTime:(id *)time
{
  imageCopy = image;
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  v10 = *time;
  v8 = [subjectHighlightView videoPreviewSubjectMatteForImage:imageCopy atCompositionTime:&v10];

  return v8;
}

- ($58EB755F713D70195D081A2438463C76)videoPreviewTimeRange
{
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  if (subjectHighlightView)
  {
    v6 = subjectHighlightView;
    [subjectHighlightView videoPreviewTimeRange];
    subjectHighlightView = v6;
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
  subjectHighlightView = [(VKCImageAnalysisBaseView *)self subjectHighlightView];
  [subjectHighlightView videoPreviewNormalizedCropRect];
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
  analysisResult = [(VKCImageAnalysisBaseView *)self analysisResult];
  activeInteractionTypes = [(VKCImageAnalysisBaseView *)self activeInteractionTypes];
  customAnalyticsIdentifier = [(VKCImageBaseOverlayView *)self customAnalyticsIdentifier];
  v8 = [(VKAnalyticsInteractionEvent *)v3 initWithEventType:2 analysis:analysisResult source:0 interactionTypes:activeInteractionTypes buttonActive:0 customIdentifier:customAnalyticsIdentifier];

  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  [delegate baseOverlayView:self analyticsEventDidOccur:v8];
}

- (void)sendActiveInteractionTypesDidChangeAnalyticsEvent
{
  v3 = [VKAnalyticsInteractionEvent alloc];
  analysisResult = [(VKCImageAnalysisBaseView *)self analysisResult];
  activeInteractionTypes = [(VKCImageAnalysisBaseView *)self activeInteractionTypes];
  customAnalyticsIdentifier = [(VKCImageBaseOverlayView *)self customAnalyticsIdentifier];
  v8 = [(VKAnalyticsInteractionEvent *)v3 initWithEventType:1 analysis:analysisResult source:0 interactionTypes:activeInteractionTypes buttonActive:0 customIdentifier:customAnalyticsIdentifier];

  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  [delegate baseOverlayView:self analyticsEventDidOccur:v8];
}

- (void)sendVisualSearchAnalyticsWithDidBecomeActive:(BOOL)active
{
  activeCopy = active;
  visualSearchView = [(VKCImageAnalysisBaseView *)self visualSearchView];
  v5 = [VKAnalyticsVisualSearchEvent alloc];
  visualSearchResult = [visualSearchView visualSearchResult];
  resultItems = [visualSearchResult resultItems];
  customAnalyticsIdentifier = [(VKCImageBaseOverlayView *)self customAnalyticsIdentifier];
  v9 = [(VKAnalyticsVisualSearchEvent *)v5 initWithType:!activeCopy items:resultItems interactedItem:0 serverProcessingTime:customAnalyticsIdentifier customIdentifier:0.0];

  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  [delegate baseOverlayView:self analyticsEventDidOccur:v9];
}

- (void)sendQuickActionAnalyticsWithDidBecomeVisible:(BOOL)visible
{
  visibleCopy = visible;
  v5 = [VKAnalyticsQuickActionEvent alloc];
  quickActions = [(VKCImageAnalysisBaseView *)self quickActions];
  v7 = [quickActions count];
  analysisResult = [(VKCImageAnalysisBaseView *)self analysisResult];
  text = [analysisResult text];
  v10 = [text length];
  customAnalyticsIdentifier = [(VKCImageBaseOverlayView *)self customAnalyticsIdentifier];
  v13 = [(VKAnalyticsQuickActionEvent *)v5 initWithQuickActionType:0 quickActionsCount:v7 textLength:v10 eventType:visibleCopy customIdentifier:customAnalyticsIdentifier];

  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  [delegate baseOverlayView:self analyticsEventDidOccur:v13];
}

- (id)highlightView:(id)view selectionRectsForRanges:(id)ranges
{
  viewCopy = view;
  rangesCopy = ranges;
  analysisResult = [(VKCImageAnalysisBaseView *)self analysisResult];
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
  v9 = analysisResult;
  v37 = v9;
  [rangesCopy enumerateObjectsUsingBlock:v36];
  v27 = rangesCopy;
  v28 = viewCopy;
  vk_rangeArray = [v40[5] vk_rangeArray];
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  text = [v9 text];
  for (i = 0; i < [vk_rangeArray count] - 1; ++i)
  {
    v14 = [vk_rangeArray objectAtIndexedSubscript:i];
    rangeValue = [v14 rangeValue];
    v17 = v16;

    v18 = [vk_rangeArray objectAtIndexedSubscript:i + 1];
    rangeValue2 = [v18 rangeValue];

    v20 = rangeValue + v17;
    if (rangeValue2 - v20 == 1 && ([whitespaceCharacterSet characterIsMember:{objc_msgSend(text, "characterAtIndex:", v20)}] & 1) != 0)
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

- (void)visualIntelligenceView:(id)view isSheetPresentedDidChangeToValue:(BOOL)value
{
  v5 = [(VKCImageAnalysisBaseView *)self delegate:view];
  [v5 visualIntelligenceSheetPresentedDidChangeForBaseOverlayView:self];
}

- (void)visualIntelligenceView:(id)view isDraggingSheetDidChange:(BOOL)change
{
  changeCopy = change;
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  [delegate visualIntelligenceSheetIsDraggingDidChange:changeCopy forBaseOverlayView:self];
}

- (void)visualIntelligenceView:(id)view didRequestVluEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  [delegate visualIntelligenceDidRequestVluEnabled:enabledCopy forBaseOverlayView:self];
}

- (void)willDisplayMenuForActionInfoButton:(id)button
{
  buttonCopy = button;
  textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
  [textSelectionView suppressSelectionViewGrabbers];

  [(VKCImageAnalysisBaseView *)self actionInfoButtonDidActivatePrimaryAction:buttonCopy];
}

- (void)willHideMenuForActionInfoButton:(id)button
{
  textSelectionView = [(VKCImageAnalysisBaseView *)self textSelectionView];
  [textSelectionView unsuppressSelectionViewGrabbers];
}

- (void)actionInfoButtonDidActivatePrimaryAction:(id)action
{
  representedElement = [action representedElement];
  v14 = VKMUIStringForDDTypes([representedElement dataDetectorTypes]);

  v5 = [VKAnalyticsQuickActionEvent alloc];
  quickActions = [(VKCImageAnalysisBaseView *)self quickActions];
  v7 = [quickActions count];
  analysisResult = [(VKCImageAnalysisBaseView *)self analysisResult];
  text = [analysisResult text];
  v10 = [text length];
  customAnalyticsIdentifier = [(VKCImageBaseOverlayView *)self customAnalyticsIdentifier];
  v12 = [(VKAnalyticsQuickActionEvent *)v5 initWithQuickActionType:v14 quickActionsCount:v7 textLength:v10 eventType:2 customIdentifier:customAnalyticsIdentifier];

  delegate = [(VKCImageAnalysisBaseView *)self delegate];
  [delegate baseOverlayView:self analyticsEventDidOccur:v12];
}

- (id)disposableFolderPath
{
  v2 = NSTemporaryDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"VKTemp"];

  return v3;
}

- (id)disposableSubjectPNGURLWithTitle:(id)title
{
  titleCopy = title;
  disposableFolderPath = [(VKCImageAnalysisBaseView *)self disposableFolderPath];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v8 = [disposableFolderPath stringByAppendingPathComponent:uUIDString];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (([defaultManager fileExistsAtPath:v8] & 1) == 0)
  {
    [defaultManager createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:0];
  }

  v10 = [v8 stringByAppendingPathComponent:titleCopy];

  v11 = [v10 stringByAppendingPathExtension:@"png"];

  v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11];

  return v12;
}

- (void)deleteDisposableFiles
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  disposableFolderPath = [(VKCImageAnalysisBaseView *)self disposableFolderPath];
  [defaultManager removeItemAtPath:disposableFolderPath error:0];
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

- (void)setVisibleTextAreaInfo:(VKVisibleTextAreaInfo *)info
{
  dataDetectors = info->dataDetectors;
  v4 = *&info->maxQuadHeight;
  *&self->_visibleTextAreaInfo.boundingBoxArea = *&info->boundingBoxArea;
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