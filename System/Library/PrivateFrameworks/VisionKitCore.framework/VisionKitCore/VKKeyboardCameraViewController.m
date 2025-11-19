@interface VKKeyboardCameraViewController
+ (BOOL)isOpticalFlowForTextEnabled;
- (BOOL)liftTextWithSnapshot:(id)a3;
- (VKKeyboardCameraViewController)init;
- (VKKeyboardCameraViewControllerDelegate)delegate;
- (id)findTextLocalizedStringKey;
- (unint64_t)dataType;
- (void)addButtons;
- (void)animateAlongsideFadeOutForTextLiftingView:(id)a3;
- (void)animateAlongsideTextLiftingForView:(id)a3;
- (void)cancelTimeWithoutTextTimer;
- (void)clearFoundItemAndRemoveLiftTextButton:(BOOL)a3;
- (void)configureConstraints;
- (void)dealloc;
- (void)didEndPinchToZoom;
- (void)dismissLiftedText;
- (void)frameProvider:(id)a3 didChangeSceneStabilityState:(unint64_t)a4;
- (void)liftTextIfPossible;
- (void)liftTextWithCompletion:(id)a3;
- (void)loadView;
- (void)onCancel;
- (void)onInsert;
- (void)onLiftTextButton:(id)a3;
- (void)onPinch:(id)a3;
- (void)onSelectionChanged:(id)a3;
- (void)onTap:(id)a3;
- (void)request:(id)a3 didFailWithError:(id)a4;
- (void)request:(id)a3 didRecgonizeTextWithAnalysis:(id)a4;
- (void)resetToDefaultComparisonPoint;
- (void)setInitialRecordingTimestamp:(id *)a3;
- (void)startTimeWithoutTextTimer;
- (void)textLiftingAnimationDidEndForView:(id)a3;
- (void)textProcessorResult:(id)a3;
- (void)updateInsertButtonWithRecognizedString:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willBeginPinchToZoom;
@end

@implementation VKKeyboardCameraViewController

+ (BOOL)isOpticalFlowForTextEnabled
{
  v2 = vk_supportsOpticalFlowTracking();
  if (v2)
  {
    if (vk_isInternalBuild())
    {

      LOBYTE(v2) = +[VKCInternalSettings isOpticalFlowForTextEnabled];
    }

    else
    {
      LOBYTE(v2) = 1;
    }
  }

  return v2;
}

- (VKKeyboardCameraViewController)init
{
  v26.receiver = self;
  v26.super_class = VKKeyboardCameraViewController;
  v2 = [(VKKeyboardCameraViewController *)&v26 init];
  if (v2)
  {
    v3 = objc_alloc_init(VKFrameProviderConfiguration);
    [(VKFrameProviderConfiguration *)v3 setResolutionPreset:5];
    v4 = [[VKAVCaptureFrameProvider alloc] initWithConfiguration:v3];
    frameProvider = v2->_frameProvider;
    v2->_frameProvider = v4;

    [(VKAVCaptureFrameProvider *)v2->_frameProvider setDelegate:v2 queue:MEMORY[0x1E69E96A0]];
    if (+[VKKeyboardCameraViewController isOpticalFlowForTextEnabled])
    {
      v6 = objc_alloc_init(VKTextWithTrackingFrameProcessor);
      optFlowTextProcessor = v2->_optFlowTextProcessor;
      v2->_optFlowTextProcessor = v6;

      v8 = MEMORY[0x1E69E96A0];
      [(VKFrameProcessor *)v2->_optFlowTextProcessor setResultHandlerQueue:MEMORY[0x1E69E96A0]];

      objc_initWeak(&location, v2);
      v9 = v23;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __38__VKKeyboardCameraViewController_init__block_invoke;
      v23[3] = &unk_1E7BE4118;
      objc_copyWeak(&v24, &location);
      [(VKTextWithTrackingFrameProcessor *)v2->_optFlowTextProcessor setResultHandler:v23];
      [(VKFrameProvider *)v2->_frameProvider registerProcessor:v2->_optFlowTextProcessor];
    }

    else
    {
      v10 = objc_alloc_init(VKTextFrameProcessor);
      textProcessor = v2->_textProcessor;
      v2->_textProcessor = v10;

      v12 = MEMORY[0x1E69E96A0];
      [(VKFrameProcessor *)v2->_textProcessor setResultHandlerQueue:MEMORY[0x1E69E96A0]];

      objc_initWeak(&location, v2);
      v9 = v21;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __38__VKKeyboardCameraViewController_init__block_invoke_2;
      v21[3] = &unk_1E7BE4118;
      objc_copyWeak(&v22, &location);
      [(VKTextFrameProcessor *)v2->_textProcessor setResultHandler:v21];
      v13 = objc_alloc_init(VKHomographyFrameProcessor);
      homographyProcessor = v2->_homographyProcessor;
      v2->_homographyProcessor = v13;

      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __38__VKKeyboardCameraViewController_init__block_invoke_3;
      v19 = &unk_1E7BE4140;
      objc_copyWeak(&v20, &location);
      [(VKHomographyFrameProcessor *)v2->_homographyProcessor setResultHandler:&v16];
      [(VKFrameProvider *)v2->_frameProvider registerProcessor:v2->_textProcessor, v16, v17, v18, v19];
      [(VKFrameProvider *)v2->_frameProvider registerProcessor:v2->_homographyProcessor];
      objc_destroyWeak(&v20);
    }

    objc_destroyWeak(v9 + 4);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __38__VKKeyboardCameraViewController_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained textProcessorResult:v3];
}

void __38__VKKeyboardCameraViewController_init__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained textProcessorResult:v3];
}

void __38__VKKeyboardCameraViewController_init__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained textProcessor];
  [v3 warpTransform];
  v9 = v6;
  v10 = v5;
  v8 = v7;

  [v4 applyHomographyWarpTransform:{v10, v9, v8}];
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = VKKeyboardCameraViewController;
  [(VKKeyboardCameraViewController *)&v17 viewDidLoad];
  [(VKKeyboardCameraViewController *)self setPreviousString:&stru_1F2C04538];
  v3 = [(VKKeyboardCameraViewController *)self view];
  [v3 setUserInteractionEnabled:1];
  v4 = +[VKKeyboardCameraDefaults sharedInstance];
  v5 = objc_alloc_init(VKKeyboardCameraReticleView);
  [(VKKeyboardCameraReticleView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v5];
  [v4 doubleForKey:@"DimmingRadius"];
  [(VKKeyboardCameraReticleView *)v5 setSpotlightBlurRadius:?];
  [v4 doubleForKey:@"DimmingOpacity"];
  [(VKKeyboardCameraReticleView *)v5 setInvertedShadowAlpha:?];
  [(VKKeyboardCameraViewController *)self setReticleView:v5];
  v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [MEMORY[0x1E69DC888] blackColor];
  v8 = [v7 colorWithAlphaComponent:0.01];
  [v6 setBackgroundColor:v8];

  [v3 addSubview:v6];
  [(VKKeyboardCameraViewController *)self setHitTestView:v6];
  [(VKKeyboardCameraViewController *)self addButtons];
  v9 = objc_alloc_init(VKKeyboardCameraGuidanceView);
  [(VKKeyboardCameraGuidanceView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v9];
  v10 = [(VKKeyboardCameraViewController *)self setGuidanceView:v9];
  if (vk_solariumEnabled(v10, v11))
  {
    [(UIView *)v9 vk_setGlassBackgroundWithType:0 tintColor:0 flexible:0];
    [(VKKeyboardCameraGuidanceView *)v9 setOverrideUserInterfaceStyle:2];
  }

  v12 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_onTap_];
  [(VKKeyboardCameraViewController *)self setTapGestureRecognizer:v12];

  v13 = [(VKKeyboardCameraViewController *)self tapGestureRecognizer];
  [v3 addGestureRecognizer:v13];

  v14 = [objc_alloc(MEMORY[0x1E69DCD80]) initWithTarget:self action:sel_onPinch_];
  [(VKKeyboardCameraViewController *)self setPinchGestureRecognizer:v14];

  v15 = [(VKKeyboardCameraViewController *)self view];
  v16 = [(VKKeyboardCameraViewController *)self pinchGestureRecognizer];
  [v15 addGestureRecognizer:v16];

  [(VKKeyboardCameraViewController *)self configureConstraints];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VKKeyboardCameraViewController;
  [(VKKeyboardCameraViewController *)&v4 dealloc];
}

- (void)addButtons
{
  v3 = [(VKKeyboardCameraViewController *)self view];
  v4 = VKBundle();
  v5 = [v4 localizedStringForKey:@"KC_INSERT_BUTTON" value:@"KC_INSERT_BUTTON" table:@"Localizable"];

  objc_initWeak(&location, self);
  v6 = MEMORY[0x1E69DC628];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __44__VKKeyboardCameraViewController_addButtons__block_invoke;
  v17 = &unk_1E7BE4168;
  objc_copyWeak(&v18, &location);
  v7 = [v6 actionWithTitle:v5 image:0 identifier:0 handler:&v14];
  v8 = [VKKeyboardCameraInsertButton alloc];
  v9 = [(VKKeyboardCameraInsertButton *)v8 initWithPrimaryAction:v7, v14, v15, v16, v17];
  [(VKKeyboardCameraInsertButton *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VKKeyboardCameraInsertButton *)v9 setEnabled:0];
  [v3 addSubview:v9];
  [(VKKeyboardCameraViewController *)self setInsertButton:v9];
  v10 = objc_alloc_init(VKKeyboardCameraCloseButton);
  [(VKKeyboardCameraCloseButton *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [(VKKeyboardCameraCloseButton *)v10 uiButton];
  [v11 addTarget:self action:sel_onCancel forControlEvents:64];

  [v3 addSubview:v10];
  [(VKKeyboardCameraViewController *)self setCloseButton:v10];
  v12 = [VKImageAnalysisButton buttonWithType:1];
  [v12 addTarget:self action:sel_onLiftTextButton_ forControlEvents:64];
  [v12 setFunction:1];
  [v12 setGlyphConfiguration:1];
  [v12 setMode:0];
  v13 = [MEMORY[0x1E69DC888] systemBlueColor];
  [v12 setTintColor:v13];

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 setAlpha:0.0];
  [v3 addSubview:v12];
  [(VKKeyboardCameraViewController *)self setLiftTextButton:v12];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __44__VKKeyboardCameraViewController_addButtons__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained onInsert];
    WeakRetained = v2;
  }
}

- (void)loadView
{
  v4 = [(VKKeyboardCameraViewController *)self frameProvider];
  v3 = [v4 previewView];
  [(VKKeyboardCameraViewController *)self setView:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(VKTextFrameProcessorConfiguration);
  [(VKTextFrameProcessorConfiguration *)v5 setIsForSingleItem:1];
  v6 = [MEMORY[0x1E695DF58] preferredLanguages];
  [(VKTextFrameProcessorConfiguration *)v5 setRecognitionLanguages:v6];

  [(VKTextFrameProcessorConfiguration *)v5 setDataType:[(VKKeyboardCameraViewController *)self dataType]];
  v7 = [(VKKeyboardCameraViewController *)self textProcessor];
  [v7 setConfiguration:v5];

  v8 = [(VKKeyboardCameraViewController *)self optFlowTextProcessor];
  [v8 setConfiguration:v5];

  v9 = [(VKKeyboardCameraViewController *)self frameProvider];
  [v9 startRunning];

  v10 = [(VKKeyboardCameraViewController *)self frameProvider];
  [v10 startProcessing];

  v11.receiver = self;
  v11.super_class = VKKeyboardCameraViewController;
  [(VKKeyboardCameraViewController *)&v11 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = VKKeyboardCameraViewController;
  [(VKKeyboardCameraViewController *)&v4 viewWillDisappear:a3];
  [(VKKeyboardCameraViewController *)self setDidDismiss:1];
  [(VKKeyboardCameraViewController *)self setClosestItem:0];
  [(VKKeyboardCameraViewController *)self setReticleView:0];
  [(VKKeyboardCameraViewController *)self setFrameProvider:0];
  [(VKKeyboardCameraViewController *)self setTextProcessor:0];
  [(VKKeyboardCameraViewController *)self setOptFlowTextProcessor:0];
  [(VKKeyboardCameraViewController *)self setHomographyProcessor:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = VKKeyboardCameraViewController;
  [(VKKeyboardCameraViewController *)&v4 viewDidAppear:a3];
  [(VKKeyboardCameraViewController *)self startTimeWithoutTextTimer];
  [(VKKeyboardCameraViewController *)self setDidDismiss:0];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __85__VKKeyboardCameraViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v4[3] = &unk_1E7BE4190;
  v4[4] = self;
  [a4 animateAlongsideTransition:v4 completion:0];
}

void __85__VKKeyboardCameraViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [*(a1 + 32) textLiftingView];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [*(a1 + 32) textLiftingView];
  [v12 layoutIfNeeded];
}

- (void)updateInsertButtonWithRecognizedString:(id)a3
{
  v10 = a3;
  v4 = [(VKKeyboardCameraViewController *)self previousString];
  v5 = [v4 isEqualToString:v10];

  if ((v5 & 1) == 0)
  {
    [(VKKeyboardCameraViewController *)self setPreviousString:v10];
    v6 = [v10 length] != 0;
    v7 = [(VKKeyboardCameraViewController *)self insertButton];
    [v7 setEnabled:v6];

    v8 = [(VKKeyboardCameraViewController *)self delegate];
    LOBYTE(v7) = objc_opt_respondsToSelector();

    if (v7)
    {
      v9 = [(VKKeyboardCameraViewController *)self delegate];
      [v9 keyboardCamera:self didUpdateString:v10];
    }
  }
}

- (void)clearFoundItemAndRemoveLiftTextButton:(BOOL)a3
{
  v5 = [(VKKeyboardCameraViewController *)self closestItem];

  if (v5)
  {
    [(VKKeyboardCameraViewController *)self resetToDefaultComparisonPoint];
  }

  [(VKKeyboardCameraViewController *)self setClosestItem:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__VKKeyboardCameraViewController_clearFoundItemAndRemoveLiftTextButton___block_invoke;
  v6[3] = &unk_1E7BE41B8;
  v7 = a3;
  v6[4] = self;
  [(VKKeyboardCameraViewController *)self animate:v6];
}

void __72__VKKeyboardCameraViewController_clearFoundItemAndRemoveLiftTextButton___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = [*(a1 + 32) liftTextButton];
    [v2 setAlpha:0.0];
  }

  v3 = [*(a1 + 32) reticleView];
  [v3 setReticleAlpha:0.0];

  v4 = [*(a1 + 32) reticleView];
  [v4 collapseReticleRect];
}

- (void)configureConstraints
{
  v65 = [(VKKeyboardCameraViewController *)self reticleView];
  v3 = [(VKKeyboardCameraViewController *)self view];
  v4 = [(VKKeyboardCameraViewController *)self hitTestView];
  v5 = [(VKKeyboardCameraViewController *)self insertButton];
  v6 = [(VKKeyboardCameraViewController *)self closeButton];
  v7 = [(VKKeyboardCameraViewController *)self liftTextButton];
  v64 = [(VKKeyboardCameraViewController *)self guidanceView];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = [v4 topAnchor];
  v10 = [v3 topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v8 addObject:v11];

  v12 = [v4 leadingAnchor];
  v13 = [v3 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  [v8 addObject:v14];

  v15 = [v4 widthAnchor];
  v16 = [v3 widthAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  [v8 addObject:v17];

  v18 = [v4 heightAnchor];
  v19 = [v3 heightAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  [v8 addObject:v20];

  v21 = [v65 topAnchor];
  v22 = [v3 topAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  [v8 addObject:v23];

  v24 = [v65 leadingAnchor];
  v25 = [v3 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  [v8 addObject:v26];

  v27 = [v65 widthAnchor];
  v28 = [v3 widthAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  [v8 addObject:v29];

  v30 = [v65 heightAnchor];
  v31 = [v3 heightAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];
  [v8 addObject:v32];

  v33 = [v6 topAnchor];
  v34 = [v3 topAnchor];
  v35 = [v33 constraintEqualToAnchor:v34 constant:20.0];
  [v8 addObject:v35];

  v36 = [v6 rightAnchor];
  v37 = [v3 rightAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:-20.0];
  [v8 addObject:v38];

  v39 = [v5 bottomAnchor];
  v40 = [v3 bottomAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:-36.0];
  [v8 addObject:v41];

  v42 = [v5 centerXAnchor];
  v43 = [v3 centerXAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];
  [v8 addObject:v44];

  v45 = [v7 rightAnchor];
  v46 = [v6 rightAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];
  [v8 addObject:v47];

  v48 = [v7 centerYAnchor];
  v49 = v5;
  v50 = [v5 centerYAnchor];
  v51 = [v48 constraintEqualToAnchor:v50];
  [v8 addObject:v51];

  LODWORD(v48) = vk_solariumEnabled(v52, v53);
  v54 = [v64 widthAnchor];
  v55 = [v3 widthAnchor];
  v56 = [v54 constraintLessThanOrEqualToAnchor:v55 multiplier:0.666666667];
  [v8 addObject:v56];

  if (v48)
  {
    v57 = [v64 centerYAnchor];
    v58 = [v6 centerYAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];
    [v8 addObject:v59];
  }

  else
  {
    v57 = [v64 firstBaselineAnchor];
    v58 = [v6 uiButton];
    v59 = [v58 firstBaselineAnchor];
    v60 = [v57 constraintEqualToAnchor:v59];
    [v8 addObject:v60];
  }

  v61 = [v64 centerXAnchor];
  v62 = [v3 centerXAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];
  [v8 addObject:v63];

  [MEMORY[0x1E696ACD8] activateConstraints:v8];
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = VKKeyboardCameraViewController;
  [(VKKeyboardCameraViewController *)&v14 viewDidLayoutSubviews];
  v3 = [(VKKeyboardCameraViewController *)self textLiftingView];

  if (v3)
  {
    v4 = [(VKKeyboardCameraViewController *)self view];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(VKKeyboardCameraViewController *)self textLiftingView];
    [v13 setFrame:{v6, v8, v10, v12}];
  }

  if (![(VKKeyboardCameraViewController *)self didSetInitialComparisonPoint])
  {
    [(VKKeyboardCameraViewController *)self resetToDefaultComparisonPoint];
    [(VKKeyboardCameraViewController *)self setDidSetInitialComparisonPoint:1];
  }
}

- (void)onInsert
{
  v3 = [(VKKeyboardCameraViewController *)self frameProvider];
  [v3 stopProcessing];

  v4 = [(VKKeyboardCameraViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(VKKeyboardCameraViewController *)self delegate];
    [v6 userDidAcceptWithKeyboardCamera:self];
  }
}

- (void)onCancel
{
  if ([(VKKeyboardCameraViewController *)self isTextLifted])
  {
    v3 = [(VKKeyboardCameraViewController *)self textAnalyzer];
    [v3 cancelAllRequests];
  }

  v4 = [(VKKeyboardCameraViewController *)self frameProvider];
  [v4 stopProcessing];

  v5 = [(VKKeyboardCameraViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(VKKeyboardCameraViewController *)self delegate];
    [v7 userDidCancelWithKeyboardCamera:self];
  }
}

- (void)onSelectionChanged:(id)a3
{
  v11 = a3;
  v4 = [(VKKeyboardCameraViewController *)self isTextLifted];
  v5 = v11;
  if (v4)
  {
    v6 = [v11 object];
    if (!v6)
    {
      [VKAssert handleFailedAssertWithCondition:"textSelectionView" functionName:"[VKKeyboardCameraViewController onSelectionChanged:]" simulateCrash:0 showAlert:0 format:@"Unexpected: Missing text selection view for lifted text."];
    }

    v7 = [v6 selectedVKRange];
    v8 = v7;
    if (v7 && ![v7 isEmpty])
    {
      v9 = [v6 selectedText];
    }

    else
    {
      v9 = [(VKKeyboardCameraViewController *)self liftedString];
    }

    v10 = v9;
    [(VKKeyboardCameraViewController *)self updateInsertButtonWithRecognizedString:v9];

    v5 = v11;
  }
}

- (void)onLiftTextButton:(id)a3
{
  if ([(VKKeyboardCameraViewController *)self isTextLifted])
  {

    [(VKKeyboardCameraViewController *)self dismissLiftedText];
  }

  else
  {

    [(VKKeyboardCameraViewController *)self liftTextIfPossible];
  }
}

- (void)onTap:(id)a3
{
  if ([a3 state] != 3)
  {
    return;
  }

  if ([(VKKeyboardCameraViewController *)self isTextLifted])
  {

    [(VKKeyboardCameraViewController *)self dismissLiftedText];
    return;
  }

  v24 = [(VKKeyboardCameraViewController *)self view];
  [v24 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  tapGestureRecognizer = self->_tapGestureRecognizer;
  v11 = [(VKKeyboardCameraViewController *)self view];
  [(UITapGestureRecognizer *)tapGestureRecognizer locationInView:v11];

  VKMFlipPoint();
  v14 = VKMNormalizedPointInRect(v12, v13, v5, v7, v9);
  v16 = v15;
  v17 = [(VKKeyboardCameraViewController *)self textProcessor];

  if (v17)
  {
    v18 = [(VKKeyboardCameraViewController *)self textProcessor];
    v19 = [v18 configuration];

    [v19 setComparisonPoint:{v14, v16}];
    v20 = [(VKKeyboardCameraViewController *)self textProcessor];
LABEL_11:
    v23 = v20;
    [v20 setConfiguration:v19];

    goto LABEL_12;
  }

  v21 = [(VKKeyboardCameraViewController *)self optFlowTextProcessor];

  if (v21)
  {
    v22 = [(VKKeyboardCameraViewController *)self optFlowTextProcessor];
    v19 = [v22 configuration];

    [v19 setComparisonPoint:{v14, v16}];
    v20 = [(VKKeyboardCameraViewController *)self optFlowTextProcessor];
    goto LABEL_11;
  }

LABEL_12:
  [(VKKeyboardCameraViewController *)self setDidOverrideComparisonPoint:1];
}

- (void)onPinch:(id)a3
{
  v11 = a3;
  v4 = [v11 state];
  if ((v4 - 3) < 2)
  {
    [(VKKeyboardCameraViewController *)self setIsPinchToZoomInProgress:0];
    [(VKKeyboardCameraViewController *)self didEndPinchToZoom];
  }

  else if (v4 == 2)
  {
    [(VKKeyboardCameraViewController *)self initialPinchZoom];
    v7 = v6;
    [v11 scale];
    v9 = v7 * v8;
    v10 = [(VKKeyboardCameraViewController *)self frameProvider];
    [v10 setZoomFactor:v9];
  }

  else if (v4 == 1)
  {
    v5 = [(VKKeyboardCameraViewController *)self frameProvider];
    [v5 zoomFactor];
    [(VKKeyboardCameraViewController *)self setInitialPinchZoom:?];

    [(VKKeyboardCameraViewController *)self setIsPinchToZoomInProgress:1];
    [(VKKeyboardCameraViewController *)self willBeginPinchToZoom];
  }
}

- (void)willBeginPinchToZoom
{
  v3 = [(VKKeyboardCameraViewController *)self frameProvider];
  [v3 stopProcessing];

  [(VKKeyboardCameraViewController *)self clearFoundItemAndRemoveLiftTextButton:1];
}

- (void)didEndPinchToZoom
{
  v2 = [(VKKeyboardCameraViewController *)self frameProvider];
  [v2 startProcessing];
}

- (void)liftTextIfPossible
{
  if ([(VKKeyboardCameraViewController *)self isTextLifted])
  {
    [VKAssert handleFailedAssertWithCondition:"!self.isTextLifted" functionName:"[VKKeyboardCameraViewController liftTextIfPossible]" simulateCrash:0 showAlert:0 format:@"request to lift text, but text is already lifted"];
  }

  v3 = [(VKKeyboardCameraViewController *)self closestItem];

  if (v3)
  {
    v4 = [(VKKeyboardCameraViewController *)self frameProvider];
    [v4 stopProcessing];

    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __52__VKKeyboardCameraViewController_liftTextIfPossible__block_invoke;
    v5[3] = &unk_1E7BE41E0;
    objc_copyWeak(&v6, &location);
    [(VKKeyboardCameraViewController *)self liftTextWithCompletion:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __52__VKKeyboardCameraViewController_liftTextIfPossible__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    if (a2)
    {
      v4 = [WeakRetained liftTextButton];
      [v4 setSelected:1];

      v5 = VKBundle();
      v6 = [v5 localizedStringForKey:@"KC_LIFTED_TEXT_HELP" value:@"KC_LIFTED_TEXT_HELP" table:@"Localizable"];

      v7 = [v8 guidanceView];
      [v7 showGuidanceWithText:v6];

      [v8 clearFoundItemAndRemoveLiftTextButton:0];
    }

    else
    {
      v6 = [WeakRetained frameProvider];
      [v6 startProcessing];
    }

    WeakRetained = v8;
  }
}

- (void)dismissLiftedText
{
  if (![(VKKeyboardCameraViewController *)self isTextLifted])
  {
    [VKAssert handleFailedAssertWithCondition:"self.isTextLifted" functionName:"[VKKeyboardCameraViewController dismissLiftedText]" simulateCrash:0 showAlert:0 format:@"request dismiss lifted text, but no text is lifted"];
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"VKCImageTextSelectionViewSelectionDidChange" object:0];

  v4 = [(VKKeyboardCameraViewController *)self textAnalyzer];
  [v4 cancelAllRequests];

  v5 = [(VKKeyboardCameraViewController *)self textLiftingView];
  [v5 fadeOutAndRemoveFromSuperview];

  [(VKKeyboardCameraViewController *)self setTextLiftingView:0];
  [(VKKeyboardCameraViewController *)self setIsTextLifted:0];
  v6 = [(VKKeyboardCameraViewController *)self insertButton];
  [v6 setEnabled:0];

  v7 = [(VKKeyboardCameraViewController *)self liftTextButton];
  [v7 setSelected:0];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__VKKeyboardCameraViewController_dismissLiftedText__block_invoke;
  v9[3] = &unk_1E7BE4208;
  v9[4] = self;
  [(VKKeyboardCameraViewController *)self animate:v9];
  v8 = [(VKKeyboardCameraViewController *)self frameProvider];
  [v8 startProcessing];
}

void __51__VKKeyboardCameraViewController_dismissLiftedText__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) liftTextButton];
  [v1 setAlpha:0.0];
}

- (void)liftTextWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(VKKeyboardCameraViewController *)self frameProvider];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__VKKeyboardCameraViewController_liftTextWithCompletion___block_invoke;
  v7[3] = &unk_1E7BE4230;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 snapshotWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __57__VKKeyboardCameraViewController_liftTextWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    if (([WeakRetained liftTextWithSnapshot:v3] & 1) == 0)
    {
      v6 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.keyboardCamera");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __57__VKKeyboardCameraViewController_liftTextWithCompletion___block_invoke_cold_2();
      }
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 16);
LABEL_14:
      v8();
    }
  }

  else if (WeakRetained)
  {
    v9 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.keyboardCamera");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __57__VKKeyboardCameraViewController_liftTextWithCompletion___block_invoke_cold_1();
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      v8 = *(v10 + 16);
      goto LABEL_14;
    }
  }
}

- (BOOL)liftTextWithSnapshot:(id)a3
{
  v53[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(VKKeyboardCameraViewController *)self closestItem];
  if (v5)
  {
    v6 = [(VKKeyboardCameraViewController *)self textAnalyzer];

    if (!v6)
    {
      v7 = objc_alloc_init(VKCaptureTextAnalyzer);
      [(VKCaptureTextAnalyzer *)v7 setShouldCreateFeedbackProviders:0];
      [(VKKeyboardCameraViewController *)self setTextAnalyzer:v7];
    }

    v8 = [v5 layerQuad];
    v51 = [[VKCaptureTextAnalysisRequest alloc] initWithImage:v4 focusQuad:v8 delegate:self];
    v9 = [(VKKeyboardCameraViewController *)self textAnalyzer];
    [v9 processRequest:v51];

    v10 = [(VKKeyboardCameraViewController *)self view];
    [v10 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [(VKKeyboardCameraViewController *)self systemMinimumLayoutMargins];
    v50 = v19;
    [(VKKeyboardCameraViewController *)self systemMinimumLayoutMargins];
    v21 = v20;
    v54.origin.x = v12;
    v54.origin.y = v14;
    v54.size.width = v16;
    v54.size.height = v18;
    Height = CGRectGetHeight(v54);
    v23 = [(VKKeyboardCameraViewController *)self insertButton];
    [v23 frame];
    v24 = Height - CGRectGetMinY(v55) + 5.0;

    [v8 averagedAngleFromBottomAndTopEdges];
    v26 = v25;
    v27 = [(VKKeyboardCameraViewController *)self view];
    v28 = [v8 normalizedQuadFromView:v27];

    v29 = [(VKKeyboardCameraViewController *)self view];
    [v29 bounds];
    v32 = VKMAspectRatio(v30, v31);

    v33 = MEMORY[0x1E69DC728];
    v53[0] = v28;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
    v35 = [v33 vk_roundAndGroupNormalizedQuadsForHighlight:v34 aspectRatio:v32 expansionScale:0.1 radiusToAvgHeightRatio:0.2];

    v36 = [(VKKeyboardCameraViewController *)self view];
    [v36 frame];
    v38 = v37;
    v39 = [(VKKeyboardCameraViewController *)self view];
    [v39 frame];
    CGAffineTransformMakeScale(&v52, v38, v40);
    [v35 vk_applyTransform:&v52];

    v41 = [[VKTextLiftingView alloc] initWithImage:v4 cutoutPath:v35 baselineAngle:v26];
    [(VKTextLiftingView *)v41 setDelegate:self];
    [(VKTextLiftingView *)v41 setMaxScale:2.0];
    [(VKTextLiftingView *)v41 setFrame:v12, v14, v16, v18];
    [(VKTextLiftingView *)v41 setContentInsets:20.0, v50, v24, v21];
    [(VKTextLiftingView *)v41 setPresentsMenuForLiftedText:0];
    [(VKTextLiftingView *)v41 setHitTestPath:v35];
    v42 = [[VKCImageAnalysisInteraction alloc] initWithInteractionOptions:7];
    [(VKCImageAnalysisInteraction *)v42 setActiveInteractionTypes:1];
    [(VKCImageAnalysisInteraction *)v42 setAllowLongPressForDataDetectorsInTextMode:0];
    [(VKTextLiftingView *)v41 setImageInteraction:v42];
    v43 = [(VKKeyboardCameraViewController *)self closestItem];
    v44 = [v43 transcript];
    [(VKKeyboardCameraViewController *)self setLiftedString:v44];

    v45 = [(VKCImageAnalysisInteraction *)v42 baseView];
    v46 = [v45 textSelectionView];

    v47 = [MEMORY[0x1E696AD88] defaultCenter];
    [v47 addObserver:self selector:sel_onSelectionChanged_ name:@"VKCImageTextSelectionViewSelectionDidChange" object:v46];

    v48 = [(VKKeyboardCameraViewController *)self hitTestView];
    [v10 insertSubview:v41 aboveSubview:v48];

    [(VKTextLiftingView *)v41 performLiftAnimation];
    [(VKKeyboardCameraViewController *)self setTextLiftingView:v41];
    [(VKKeyboardCameraViewController *)self setIsTextLifted:1];
  }

  else
  {
    v28 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.keyboardCamera");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [VKKeyboardCameraViewController liftTextWithSnapshot:];
    }
  }

  return v5 != 0;
}

- (void)cancelTimeWithoutTextTimer
{
  v3 = [(VKKeyboardCameraViewController *)self guidanceView];
  [v3 hideGuidance];

  v4 = [(VKKeyboardCameraViewController *)self timeWithoutTextTimer];
  [v4 invalidate];

  [(VKKeyboardCameraViewController *)self setTimeWithoutTextTimer:0];
}

- (void)startTimeWithoutTextTimer
{
  v3 = [(VKKeyboardCameraViewController *)self timeWithoutTextTimer];

  if (!v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __59__VKKeyboardCameraViewController_startTimeWithoutTextTimer__block_invoke;
    v5[3] = &unk_1E7BE4258;
    v5[4] = self;
    v4 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v5 block:3.0];
    [(VKKeyboardCameraViewController *)self setTimeWithoutTextTimer:v4];
  }
}

void __59__VKKeyboardCameraViewController_startTimeWithoutTextTimer__block_invoke(uint64_t a1)
{
  v2 = VKBundle();
  v3 = [*(a1 + 32) findTextLocalizedStringKey];
  v4 = [*(a1 + 32) findTextLocalizedStringKey];
  v6 = [v2 localizedStringForKey:v3 value:v4 table:@"Localizable"];

  v5 = [*(a1 + 32) guidanceView];
  [v5 showGuidanceWithText:v6];

  [*(a1 + 32) setTimeWithoutTextTimer:0];
}

- (void)resetToDefaultComparisonPoint
{
  [(VKKeyboardCameraViewController *)self setDidOverrideComparisonPoint:0];
  v11 = [(VKKeyboardCameraViewController *)self view];
  [v11 bounds];
  Height = CGRectGetHeight(v13);
  if (Height > 0.0)
  {
    v4 = Height;
    v5 = [(VKKeyboardCameraViewController *)self insertButton];
    [v5 bounds];
    [v11 convertRect:v5 fromView:?];
    v6 = (v4 - CGRectGetMaxY(v14)) / v4 + 0.5;
    v7 = [(VKKeyboardCameraViewController *)self textProcessor];
    v8 = [v7 configuration];
    [v8 setComparisonPoint:{0.5, v6}];

    v9 = [(VKKeyboardCameraViewController *)self optFlowTextProcessor];
    v10 = [v9 configuration];
    [v10 setComparisonPoint:{0.5, v6}];
  }
}

- (unint64_t)dataType
{
  v2 = [(VKKeyboardCameraViewController *)self textContentType];
  if ([v2 isEqualToString:*MEMORY[0x1E69DE578]])
  {
    v3 = 3;
  }

  else if ([v2 isEqualToString:*MEMORY[0x1E69DE4C0]])
  {
    v3 = 4;
  }

  else if ([v2 isEqualToString:*MEMORY[0x1E69DE580]])
  {
    v3 = 1;
  }

  else if ([v2 isEqualToString:*MEMORY[0x1E69DE4A0]])
  {
    v3 = 2;
  }

  else if ([v2 isEqualToString:*MEMORY[0x1E69DE4B8]])
  {
    v3 = 7;
  }

  else if ([v2 isEqualToString:*MEMORY[0x1E69DE538]])
  {
    v3 = 8;
  }

  else if ([v2 isEqualToString:*MEMORY[0x1E69DE498]])
  {
    v3 = 5;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)findTextLocalizedStringKey
{
  v3 = [(VKKeyboardCameraViewController *)self textContentType];
  v4 = *MEMORY[0x1E69DE578];

  if (v3 == v4)
  {
    return @"KC_NO_PHONE_HELP";
  }

  v5 = [(VKKeyboardCameraViewController *)self textContentType];
  v6 = *MEMORY[0x1E69DE4C0];

  if (v5 == v6)
  {
    return @"KC_NO_ADDRESS_HELP";
  }

  v7 = [(VKKeyboardCameraViewController *)self textContentType];
  v8 = *MEMORY[0x1E69DE580];

  if (v7 == v8)
  {
    return @"KC_NO_URL_HELP";
  }

  v9 = [(VKKeyboardCameraViewController *)self textContentType];
  v10 = *MEMORY[0x1E69DE4A0];

  if (v9 == v10)
  {
    return @"KC_NO_EMAIL_HELP";
  }

  v11 = [(VKKeyboardCameraViewController *)self textContentType];
  v12 = *MEMORY[0x1E69DE4B8];

  if (v11 == v12)
  {
    return @"KC_NO_FLIGHT_HELP";
  }

  v13 = [(VKKeyboardCameraViewController *)self textContentType];
  v14 = *MEMORY[0x1E69DE538];

  if (v13 == v14)
  {
    return @"KC_NO_TRACKING_HELP";
  }

  v15 = [(VKKeyboardCameraViewController *)self textContentType];
  v16 = *MEMORY[0x1E69DE498];

  if (v15 == v16)
  {
    return @"KC_NO_DATETIME_HELP";
  }

  else
  {
    return @"KC_NO_TEXT_HELP";
  }
}

- (void)textProcessorResult:(id)a3
{
  v4 = a3;
  if (![(VKKeyboardCameraViewController *)self didDismiss])
  {
    v5 = [(VKKeyboardCameraViewController *)self frameProvider];
    v6 = [v5 isProcessing];

    if (v6)
    {
      v7 = [v4 allItems];
      v8 = [v7 firstObject];

      if (v8)
      {
        v9 = [(VKKeyboardCameraViewController *)self closestItem];

        if (v8 != v9)
        {
          [(VKKeyboardCameraViewController *)self setClosestItem:v8];
          if ([(VKKeyboardCameraViewController *)self didOverrideComparisonPoint])
          {
            v10 = [(VKKeyboardCameraViewController *)self view];
            [v10 bounds];
            v12 = v11;
            v14 = v13;
            v16 = v15;
            v17 = [(VKKeyboardCameraViewController *)self closestItem];
            v18 = [v17 layerQuad];
            [v18 vertexCentroid];

            VKMFlipPoint();
            v21 = VKMNormalizedPointInRect(v19, v20, v12, v14, v16);
            v23 = v22;
            v24 = [(VKKeyboardCameraViewController *)self textProcessor];
            v25 = [v24 configuration];
            [v25 setComparisonPoint:{v21, v23}];

            v26 = [(VKKeyboardCameraViewController *)self optFlowTextProcessor];
            v27 = [v26 configuration];
            [v27 setComparisonPoint:{v21, v23}];
          }
        }

        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __54__VKKeyboardCameraViewController_textProcessorResult___block_invoke;
        v45[3] = &unk_1E7BE4208;
        v45[4] = self;
        [(VKKeyboardCameraViewController *)self animate:v45];
        v28 = [v8 layerQuad];
        [v28 minimumBoundingRectWithoutRotation];
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;
        [v28 averagedAngleFromBottomAndTopEdges];
        v38 = v37;
        v39 = [(VKKeyboardCameraViewController *)self reticleView];
        [v39 setReticleRect:v30 angle:{v32, v34, v36, v38}];

        [(VKKeyboardCameraViewController *)self cancelTimeWithoutTextTimer];
      }

      else
      {
        [(VKKeyboardCameraViewController *)self clearFoundItemAndRemoveLiftTextButton:1];
        [(VKKeyboardCameraViewController *)self startTimeWithoutTextTimer];
      }

      v40 = [(VKKeyboardCameraViewController *)self insertButton];
      [v40 setEnabled:v8 != 0];

      v41 = [v8 transcript];
      v42 = v41;
      v43 = &stru_1F2C04538;
      if (v41)
      {
        v43 = v41;
      }

      v44 = v43;

      [(VKKeyboardCameraViewController *)self updateInsertButtonWithRecognizedString:v44];
    }
  }
}

void __54__VKKeyboardCameraViewController_textProcessorResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) liftTextButton];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) reticleView];
  [v3 setReticleAlpha:1.0];
}

- (void)request:(id)a3 didFailWithError:(id)a4
{
  v4 = a4;
  v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.keyboardCamera");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [VKKeyboardCameraViewController request:v4 didFailWithError:v5];
  }
}

- (void)request:(id)a3 didRecgonizeTextWithAnalysis:(id)a4
{
  v5 = a4;
  if ([(VKKeyboardCameraViewController *)self isTextLifted]&& ([(VKKeyboardCameraViewController *)self textLiftingView], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [(VKKeyboardCameraViewController *)self textLiftingView];
    v8 = [v7 imageInteraction];
    [v8 setAnalysis:v5];
  }

  else
  {
    v7 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.keyboardCamera");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [VKKeyboardCameraViewController request:didRecgonizeTextWithAnalysis:];
    }
  }
}

- (void)animateAlongsideTextLiftingForView:(id)a3
{
  v4 = [(VKKeyboardCameraViewController *)self reticleView];
  [v4 setReticleAlpha:0.0];

  v5 = [(VKKeyboardCameraViewController *)self reticleView];
  [v5 setInvertedShadowAlpha:0.5];
}

- (void)textLiftingAnimationDidEndForView:(id)a3
{
  objc_initWeak(&location, self);
  v3 = dispatch_time(0, 2000000000);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__VKKeyboardCameraViewController_textLiftingAnimationDidEndForView___block_invoke;
  v4[3] = &unk_1E7BE4280;
  objc_copyWeak(&v5, &location);
  dispatch_after(v3, MEMORY[0x1E69E96A0], v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __68__VKKeyboardCameraViewController_textLiftingAnimationDidEndForView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained guidanceView];
    [v2 hideGuidance];

    WeakRetained = v3;
  }
}

- (void)animateAlongsideFadeOutForTextLiftingView:(id)a3
{
  v4 = [(VKKeyboardCameraViewController *)self reticleView];
  [v4 setAlpha:1.0];

  v8 = +[VKKeyboardCameraDefaults sharedInstance];
  [v8 doubleForKey:@"DimmingOpacity"];
  v6 = v5;
  v7 = [(VKKeyboardCameraViewController *)self reticleView];
  [v7 setInvertedShadowAlpha:v6];
}

- (void)frameProvider:(id)a3 didChangeSceneStabilityState:(unint64_t)a4
{
  v10 = a3;
  if (![(VKKeyboardCameraViewController *)self isTextLifted]&& ![(VKKeyboardCameraViewController *)self isPinchToZoomInProgress])
  {
    if (a4 < 2)
    {
      if (a4 == 1 && [v10 isProcessing])
      {
        [v10 stopProcessing];
        [(VKKeyboardCameraViewController *)self clearFoundItemAndRemoveLiftTextButton:1];
        [(VKKeyboardCameraViewController *)self updateInsertButtonWithRecognizedString:&stru_1F2C04538];
        v7 = VKBundle();
        v8 = [v7 localizedStringForKey:@"KC_STABILITY_HELP" value:@"KC_STABILITY_HELP" table:@"Localizable"];

        v9 = [(VKKeyboardCameraViewController *)self guidanceView];
        [v9 showGuidanceWithText:v8];
      }
    }

    else if (([v10 isProcessing] & 1) == 0)
    {
      v6 = [(VKKeyboardCameraViewController *)self guidanceView];
      [v6 hideGuidance];

      [v10 startProcessing];
    }
  }
}

- (VKKeyboardCameraViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setInitialRecordingTimestamp:(id *)a3
{
  var3 = a3->var3;
  *&self->_initialRecordingTimestamp.value = *&a3->var0;
  self->_initialRecordingTimestamp.epoch = var3;
}

- (void)request:(uint64_t)a1 didFailWithError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B4335000, a2, OS_LOG_TYPE_ERROR, "Error analyzing image for lifted text. %@", &v2, 0xCu);
}

@end