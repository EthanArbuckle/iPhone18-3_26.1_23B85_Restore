@interface VKKeyboardCameraViewController
+ (BOOL)isOpticalFlowForTextEnabled;
- (BOOL)liftTextWithSnapshot:(id)snapshot;
- (VKKeyboardCameraViewController)init;
- (VKKeyboardCameraViewControllerDelegate)delegate;
- (id)findTextLocalizedStringKey;
- (unint64_t)dataType;
- (void)addButtons;
- (void)animateAlongsideFadeOutForTextLiftingView:(id)view;
- (void)animateAlongsideTextLiftingForView:(id)view;
- (void)cancelTimeWithoutTextTimer;
- (void)clearFoundItemAndRemoveLiftTextButton:(BOOL)button;
- (void)configureConstraints;
- (void)dealloc;
- (void)didEndPinchToZoom;
- (void)dismissLiftedText;
- (void)frameProvider:(id)provider didChangeSceneStabilityState:(unint64_t)state;
- (void)liftTextIfPossible;
- (void)liftTextWithCompletion:(id)completion;
- (void)loadView;
- (void)onCancel;
- (void)onInsert;
- (void)onLiftTextButton:(id)button;
- (void)onPinch:(id)pinch;
- (void)onSelectionChanged:(id)changed;
- (void)onTap:(id)tap;
- (void)request:(id)request didFailWithError:(id)error;
- (void)request:(id)request didRecgonizeTextWithAnalysis:(id)analysis;
- (void)resetToDefaultComparisonPoint;
- (void)setInitialRecordingTimestamp:(id *)timestamp;
- (void)startTimeWithoutTextTimer;
- (void)textLiftingAnimationDidEndForView:(id)view;
- (void)textProcessorResult:(id)result;
- (void)updateInsertButtonWithRecognizedString:(id)string;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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
  view = [(VKKeyboardCameraViewController *)self view];
  [view setUserInteractionEnabled:1];
  v4 = +[VKKeyboardCameraDefaults sharedInstance];
  v5 = objc_alloc_init(VKKeyboardCameraReticleView);
  [(VKKeyboardCameraReticleView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:v5];
  [v4 doubleForKey:@"DimmingRadius"];
  [(VKKeyboardCameraReticleView *)v5 setSpotlightBlurRadius:?];
  [v4 doubleForKey:@"DimmingOpacity"];
  [(VKKeyboardCameraReticleView *)v5 setInvertedShadowAlpha:?];
  [(VKKeyboardCameraViewController *)self setReticleView:v5];
  v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v8 = [blackColor colorWithAlphaComponent:0.01];
  [v6 setBackgroundColor:v8];

  [view addSubview:v6];
  [(VKKeyboardCameraViewController *)self setHitTestView:v6];
  [(VKKeyboardCameraViewController *)self addButtons];
  v9 = objc_alloc_init(VKKeyboardCameraGuidanceView);
  [(VKKeyboardCameraGuidanceView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:v9];
  v10 = [(VKKeyboardCameraViewController *)self setGuidanceView:v9];
  if (vk_solariumEnabled(v10, v11))
  {
    [(UIView *)v9 vk_setGlassBackgroundWithType:0 tintColor:0 flexible:0];
    [(VKKeyboardCameraGuidanceView *)v9 setOverrideUserInterfaceStyle:2];
  }

  v12 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_onTap_];
  [(VKKeyboardCameraViewController *)self setTapGestureRecognizer:v12];

  tapGestureRecognizer = [(VKKeyboardCameraViewController *)self tapGestureRecognizer];
  [view addGestureRecognizer:tapGestureRecognizer];

  v14 = [objc_alloc(MEMORY[0x1E69DCD80]) initWithTarget:self action:sel_onPinch_];
  [(VKKeyboardCameraViewController *)self setPinchGestureRecognizer:v14];

  view2 = [(VKKeyboardCameraViewController *)self view];
  pinchGestureRecognizer = [(VKKeyboardCameraViewController *)self pinchGestureRecognizer];
  [view2 addGestureRecognizer:pinchGestureRecognizer];

  [(VKKeyboardCameraViewController *)self configureConstraints];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VKKeyboardCameraViewController;
  [(VKKeyboardCameraViewController *)&v4 dealloc];
}

- (void)addButtons
{
  view = [(VKKeyboardCameraViewController *)self view];
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
  [view addSubview:v9];
  [(VKKeyboardCameraViewController *)self setInsertButton:v9];
  v10 = objc_alloc_init(VKKeyboardCameraCloseButton);
  [(VKKeyboardCameraCloseButton *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  uiButton = [(VKKeyboardCameraCloseButton *)v10 uiButton];
  [uiButton addTarget:self action:sel_onCancel forControlEvents:64];

  [view addSubview:v10];
  [(VKKeyboardCameraViewController *)self setCloseButton:v10];
  v12 = [VKImageAnalysisButton buttonWithType:1];
  [v12 addTarget:self action:sel_onLiftTextButton_ forControlEvents:64];
  [v12 setFunction:1];
  [v12 setGlyphConfiguration:1];
  [v12 setMode:0];
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [v12 setTintColor:systemBlueColor];

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 setAlpha:0.0];
  [view addSubview:v12];
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
  frameProvider = [(VKKeyboardCameraViewController *)self frameProvider];
  previewView = [frameProvider previewView];
  [(VKKeyboardCameraViewController *)self setView:previewView];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = objc_alloc_init(VKTextFrameProcessorConfiguration);
  [(VKTextFrameProcessorConfiguration *)v5 setIsForSingleItem:1];
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  [(VKTextFrameProcessorConfiguration *)v5 setRecognitionLanguages:preferredLanguages];

  [(VKTextFrameProcessorConfiguration *)v5 setDataType:[(VKKeyboardCameraViewController *)self dataType]];
  textProcessor = [(VKKeyboardCameraViewController *)self textProcessor];
  [textProcessor setConfiguration:v5];

  optFlowTextProcessor = [(VKKeyboardCameraViewController *)self optFlowTextProcessor];
  [optFlowTextProcessor setConfiguration:v5];

  frameProvider = [(VKKeyboardCameraViewController *)self frameProvider];
  [frameProvider startRunning];

  frameProvider2 = [(VKKeyboardCameraViewController *)self frameProvider];
  [frameProvider2 startProcessing];

  v11.receiver = self;
  v11.super_class = VKKeyboardCameraViewController;
  [(VKKeyboardCameraViewController *)&v11 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = VKKeyboardCameraViewController;
  [(VKKeyboardCameraViewController *)&v4 viewWillDisappear:disappear];
  [(VKKeyboardCameraViewController *)self setDidDismiss:1];
  [(VKKeyboardCameraViewController *)self setClosestItem:0];
  [(VKKeyboardCameraViewController *)self setReticleView:0];
  [(VKKeyboardCameraViewController *)self setFrameProvider:0];
  [(VKKeyboardCameraViewController *)self setTextProcessor:0];
  [(VKKeyboardCameraViewController *)self setOptFlowTextProcessor:0];
  [(VKKeyboardCameraViewController *)self setHomographyProcessor:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = VKKeyboardCameraViewController;
  [(VKKeyboardCameraViewController *)&v4 viewDidAppear:appear];
  [(VKKeyboardCameraViewController *)self startTimeWithoutTextTimer];
  [(VKKeyboardCameraViewController *)self setDidDismiss:0];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __85__VKKeyboardCameraViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v4[3] = &unk_1E7BE4190;
  v4[4] = self;
  [coordinator animateAlongsideTransition:v4 completion:0];
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

- (void)updateInsertButtonWithRecognizedString:(id)string
{
  stringCopy = string;
  previousString = [(VKKeyboardCameraViewController *)self previousString];
  v5 = [previousString isEqualToString:stringCopy];

  if ((v5 & 1) == 0)
  {
    [(VKKeyboardCameraViewController *)self setPreviousString:stringCopy];
    v6 = [stringCopy length] != 0;
    insertButton = [(VKKeyboardCameraViewController *)self insertButton];
    [insertButton setEnabled:v6];

    delegate = [(VKKeyboardCameraViewController *)self delegate];
    LOBYTE(insertButton) = objc_opt_respondsToSelector();

    if (insertButton)
    {
      delegate2 = [(VKKeyboardCameraViewController *)self delegate];
      [delegate2 keyboardCamera:self didUpdateString:stringCopy];
    }
  }
}

- (void)clearFoundItemAndRemoveLiftTextButton:(BOOL)button
{
  closestItem = [(VKKeyboardCameraViewController *)self closestItem];

  if (closestItem)
  {
    [(VKKeyboardCameraViewController *)self resetToDefaultComparisonPoint];
  }

  [(VKKeyboardCameraViewController *)self setClosestItem:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__VKKeyboardCameraViewController_clearFoundItemAndRemoveLiftTextButton___block_invoke;
  v6[3] = &unk_1E7BE41B8;
  buttonCopy = button;
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
  reticleView = [(VKKeyboardCameraViewController *)self reticleView];
  view = [(VKKeyboardCameraViewController *)self view];
  hitTestView = [(VKKeyboardCameraViewController *)self hitTestView];
  insertButton = [(VKKeyboardCameraViewController *)self insertButton];
  closeButton = [(VKKeyboardCameraViewController *)self closeButton];
  liftTextButton = [(VKKeyboardCameraViewController *)self liftTextButton];
  guidanceView = [(VKKeyboardCameraViewController *)self guidanceView];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  topAnchor = [hitTestView topAnchor];
  topAnchor2 = [view topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v8 addObject:v11];

  leadingAnchor = [hitTestView leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v8 addObject:v14];

  widthAnchor = [hitTestView widthAnchor];
  widthAnchor2 = [view widthAnchor];
  v17 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v8 addObject:v17];

  heightAnchor = [hitTestView heightAnchor];
  heightAnchor2 = [view heightAnchor];
  v20 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  [v8 addObject:v20];

  topAnchor3 = [reticleView topAnchor];
  topAnchor4 = [view topAnchor];
  v23 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v8 addObject:v23];

  leadingAnchor3 = [reticleView leadingAnchor];
  leadingAnchor4 = [view leadingAnchor];
  v26 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v8 addObject:v26];

  widthAnchor3 = [reticleView widthAnchor];
  widthAnchor4 = [view widthAnchor];
  v29 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
  [v8 addObject:v29];

  heightAnchor3 = [reticleView heightAnchor];
  heightAnchor4 = [view heightAnchor];
  v32 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
  [v8 addObject:v32];

  topAnchor5 = [closeButton topAnchor];
  topAnchor6 = [view topAnchor];
  v35 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:20.0];
  [v8 addObject:v35];

  rightAnchor = [closeButton rightAnchor];
  rightAnchor2 = [view rightAnchor];
  v38 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-20.0];
  [v8 addObject:v38];

  bottomAnchor = [insertButton bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v41 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-36.0];
  [v8 addObject:v41];

  centerXAnchor = [insertButton centerXAnchor];
  centerXAnchor2 = [view centerXAnchor];
  v44 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v8 addObject:v44];

  rightAnchor3 = [liftTextButton rightAnchor];
  rightAnchor4 = [closeButton rightAnchor];
  v47 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
  [v8 addObject:v47];

  centerYAnchor = [liftTextButton centerYAnchor];
  v49 = insertButton;
  centerYAnchor2 = [insertButton centerYAnchor];
  v51 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v8 addObject:v51];

  LODWORD(centerYAnchor) = vk_solariumEnabled(v52, v53);
  widthAnchor5 = [guidanceView widthAnchor];
  widthAnchor6 = [view widthAnchor];
  v56 = [widthAnchor5 constraintLessThanOrEqualToAnchor:widthAnchor6 multiplier:0.666666667];
  [v8 addObject:v56];

  if (centerYAnchor)
  {
    centerYAnchor3 = [guidanceView centerYAnchor];
    centerYAnchor4 = [closeButton centerYAnchor];
    firstBaselineAnchor = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v8 addObject:firstBaselineAnchor];
  }

  else
  {
    centerYAnchor3 = [guidanceView firstBaselineAnchor];
    centerYAnchor4 = [closeButton uiButton];
    firstBaselineAnchor = [centerYAnchor4 firstBaselineAnchor];
    v60 = [centerYAnchor3 constraintEqualToAnchor:firstBaselineAnchor];
    [v8 addObject:v60];
  }

  centerXAnchor3 = [guidanceView centerXAnchor];
  centerXAnchor4 = [view centerXAnchor];
  v63 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v8 addObject:v63];

  [MEMORY[0x1E696ACD8] activateConstraints:v8];
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = VKKeyboardCameraViewController;
  [(VKKeyboardCameraViewController *)&v14 viewDidLayoutSubviews];
  textLiftingView = [(VKKeyboardCameraViewController *)self textLiftingView];

  if (textLiftingView)
  {
    view = [(VKKeyboardCameraViewController *)self view];
    [view bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    textLiftingView2 = [(VKKeyboardCameraViewController *)self textLiftingView];
    [textLiftingView2 setFrame:{v6, v8, v10, v12}];
  }

  if (![(VKKeyboardCameraViewController *)self didSetInitialComparisonPoint])
  {
    [(VKKeyboardCameraViewController *)self resetToDefaultComparisonPoint];
    [(VKKeyboardCameraViewController *)self setDidSetInitialComparisonPoint:1];
  }
}

- (void)onInsert
{
  frameProvider = [(VKKeyboardCameraViewController *)self frameProvider];
  [frameProvider stopProcessing];

  delegate = [(VKKeyboardCameraViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(VKKeyboardCameraViewController *)self delegate];
    [delegate2 userDidAcceptWithKeyboardCamera:self];
  }
}

- (void)onCancel
{
  if ([(VKKeyboardCameraViewController *)self isTextLifted])
  {
    textAnalyzer = [(VKKeyboardCameraViewController *)self textAnalyzer];
    [textAnalyzer cancelAllRequests];
  }

  frameProvider = [(VKKeyboardCameraViewController *)self frameProvider];
  [frameProvider stopProcessing];

  delegate = [(VKKeyboardCameraViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(VKKeyboardCameraViewController *)self delegate];
    [delegate2 userDidCancelWithKeyboardCamera:self];
  }
}

- (void)onSelectionChanged:(id)changed
{
  changedCopy = changed;
  isTextLifted = [(VKKeyboardCameraViewController *)self isTextLifted];
  v5 = changedCopy;
  if (isTextLifted)
  {
    object = [changedCopy object];
    if (!object)
    {
      [VKAssert handleFailedAssertWithCondition:"textSelectionView" functionName:"[VKKeyboardCameraViewController onSelectionChanged:]" simulateCrash:0 showAlert:0 format:@"Unexpected: Missing text selection view for lifted text."];
    }

    selectedVKRange = [object selectedVKRange];
    v8 = selectedVKRange;
    if (selectedVKRange && ![selectedVKRange isEmpty])
    {
      selectedText = [object selectedText];
    }

    else
    {
      selectedText = [(VKKeyboardCameraViewController *)self liftedString];
    }

    v10 = selectedText;
    [(VKKeyboardCameraViewController *)self updateInsertButtonWithRecognizedString:selectedText];

    v5 = changedCopy;
  }
}

- (void)onLiftTextButton:(id)button
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

- (void)onTap:(id)tap
{
  if ([tap state] != 3)
  {
    return;
  }

  if ([(VKKeyboardCameraViewController *)self isTextLifted])
  {

    [(VKKeyboardCameraViewController *)self dismissLiftedText];
    return;
  }

  view = [(VKKeyboardCameraViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  tapGestureRecognizer = self->_tapGestureRecognizer;
  view2 = [(VKKeyboardCameraViewController *)self view];
  [(UITapGestureRecognizer *)tapGestureRecognizer locationInView:view2];

  VKMFlipPoint();
  v14 = VKMNormalizedPointInRect(v12, v13, v5, v7, v9);
  v16 = v15;
  textProcessor = [(VKKeyboardCameraViewController *)self textProcessor];

  if (textProcessor)
  {
    textProcessor2 = [(VKKeyboardCameraViewController *)self textProcessor];
    configuration = [textProcessor2 configuration];

    [configuration setComparisonPoint:{v14, v16}];
    textProcessor3 = [(VKKeyboardCameraViewController *)self textProcessor];
LABEL_11:
    v23 = textProcessor3;
    [textProcessor3 setConfiguration:configuration];

    goto LABEL_12;
  }

  optFlowTextProcessor = [(VKKeyboardCameraViewController *)self optFlowTextProcessor];

  if (optFlowTextProcessor)
  {
    optFlowTextProcessor2 = [(VKKeyboardCameraViewController *)self optFlowTextProcessor];
    configuration = [optFlowTextProcessor2 configuration];

    [configuration setComparisonPoint:{v14, v16}];
    textProcessor3 = [(VKKeyboardCameraViewController *)self optFlowTextProcessor];
    goto LABEL_11;
  }

LABEL_12:
  [(VKKeyboardCameraViewController *)self setDidOverrideComparisonPoint:1];
}

- (void)onPinch:(id)pinch
{
  pinchCopy = pinch;
  state = [pinchCopy state];
  if ((state - 3) < 2)
  {
    [(VKKeyboardCameraViewController *)self setIsPinchToZoomInProgress:0];
    [(VKKeyboardCameraViewController *)self didEndPinchToZoom];
  }

  else if (state == 2)
  {
    [(VKKeyboardCameraViewController *)self initialPinchZoom];
    v7 = v6;
    [pinchCopy scale];
    v9 = v7 * v8;
    frameProvider = [(VKKeyboardCameraViewController *)self frameProvider];
    [frameProvider setZoomFactor:v9];
  }

  else if (state == 1)
  {
    frameProvider2 = [(VKKeyboardCameraViewController *)self frameProvider];
    [frameProvider2 zoomFactor];
    [(VKKeyboardCameraViewController *)self setInitialPinchZoom:?];

    [(VKKeyboardCameraViewController *)self setIsPinchToZoomInProgress:1];
    [(VKKeyboardCameraViewController *)self willBeginPinchToZoom];
  }
}

- (void)willBeginPinchToZoom
{
  frameProvider = [(VKKeyboardCameraViewController *)self frameProvider];
  [frameProvider stopProcessing];

  [(VKKeyboardCameraViewController *)self clearFoundItemAndRemoveLiftTextButton:1];
}

- (void)didEndPinchToZoom
{
  frameProvider = [(VKKeyboardCameraViewController *)self frameProvider];
  [frameProvider startProcessing];
}

- (void)liftTextIfPossible
{
  if ([(VKKeyboardCameraViewController *)self isTextLifted])
  {
    [VKAssert handleFailedAssertWithCondition:"!self.isTextLifted" functionName:"[VKKeyboardCameraViewController liftTextIfPossible]" simulateCrash:0 showAlert:0 format:@"request to lift text, but text is already lifted"];
  }

  closestItem = [(VKKeyboardCameraViewController *)self closestItem];

  if (closestItem)
  {
    frameProvider = [(VKKeyboardCameraViewController *)self frameProvider];
    [frameProvider stopProcessing];

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

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"VKCImageTextSelectionViewSelectionDidChange" object:0];

  textAnalyzer = [(VKKeyboardCameraViewController *)self textAnalyzer];
  [textAnalyzer cancelAllRequests];

  textLiftingView = [(VKKeyboardCameraViewController *)self textLiftingView];
  [textLiftingView fadeOutAndRemoveFromSuperview];

  [(VKKeyboardCameraViewController *)self setTextLiftingView:0];
  [(VKKeyboardCameraViewController *)self setIsTextLifted:0];
  insertButton = [(VKKeyboardCameraViewController *)self insertButton];
  [insertButton setEnabled:0];

  liftTextButton = [(VKKeyboardCameraViewController *)self liftTextButton];
  [liftTextButton setSelected:0];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__VKKeyboardCameraViewController_dismissLiftedText__block_invoke;
  v9[3] = &unk_1E7BE4208;
  v9[4] = self;
  [(VKKeyboardCameraViewController *)self animate:v9];
  frameProvider = [(VKKeyboardCameraViewController *)self frameProvider];
  [frameProvider startProcessing];
}

void __51__VKKeyboardCameraViewController_dismissLiftedText__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) liftTextButton];
  [v1 setAlpha:0.0];
}

- (void)liftTextWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  frameProvider = [(VKKeyboardCameraViewController *)self frameProvider];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__VKKeyboardCameraViewController_liftTextWithCompletion___block_invoke;
  v7[3] = &unk_1E7BE4230;
  objc_copyWeak(&v9, &location);
  v6 = completionCopy;
  v8 = v6;
  [frameProvider snapshotWithCompletion:v7];

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

- (BOOL)liftTextWithSnapshot:(id)snapshot
{
  v53[1] = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  closestItem = [(VKKeyboardCameraViewController *)self closestItem];
  if (closestItem)
  {
    textAnalyzer = [(VKKeyboardCameraViewController *)self textAnalyzer];

    if (!textAnalyzer)
    {
      v7 = objc_alloc_init(VKCaptureTextAnalyzer);
      [(VKCaptureTextAnalyzer *)v7 setShouldCreateFeedbackProviders:0];
      [(VKKeyboardCameraViewController *)self setTextAnalyzer:v7];
    }

    layerQuad = [closestItem layerQuad];
    v51 = [[VKCaptureTextAnalysisRequest alloc] initWithImage:snapshotCopy focusQuad:layerQuad delegate:self];
    textAnalyzer2 = [(VKKeyboardCameraViewController *)self textAnalyzer];
    [textAnalyzer2 processRequest:v51];

    view = [(VKKeyboardCameraViewController *)self view];
    [view bounds];
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
    insertButton = [(VKKeyboardCameraViewController *)self insertButton];
    [insertButton frame];
    v24 = Height - CGRectGetMinY(v55) + 5.0;

    [layerQuad averagedAngleFromBottomAndTopEdges];
    v26 = v25;
    view2 = [(VKKeyboardCameraViewController *)self view];
    v28 = [layerQuad normalizedQuadFromView:view2];

    view3 = [(VKKeyboardCameraViewController *)self view];
    [view3 bounds];
    v32 = VKMAspectRatio(v30, v31);

    v33 = MEMORY[0x1E69DC728];
    v53[0] = v28;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
    v35 = [v33 vk_roundAndGroupNormalizedQuadsForHighlight:v34 aspectRatio:v32 expansionScale:0.1 radiusToAvgHeightRatio:0.2];

    view4 = [(VKKeyboardCameraViewController *)self view];
    [view4 frame];
    v38 = v37;
    view5 = [(VKKeyboardCameraViewController *)self view];
    [view5 frame];
    CGAffineTransformMakeScale(&v52, v38, v40);
    [v35 vk_applyTransform:&v52];

    v41 = [[VKTextLiftingView alloc] initWithImage:snapshotCopy cutoutPath:v35 baselineAngle:v26];
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
    closestItem2 = [(VKKeyboardCameraViewController *)self closestItem];
    transcript = [closestItem2 transcript];
    [(VKKeyboardCameraViewController *)self setLiftedString:transcript];

    baseView = [(VKCImageAnalysisInteraction *)v42 baseView];
    textSelectionView = [baseView textSelectionView];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_onSelectionChanged_ name:@"VKCImageTextSelectionViewSelectionDidChange" object:textSelectionView];

    hitTestView = [(VKKeyboardCameraViewController *)self hitTestView];
    [view insertSubview:v41 aboveSubview:hitTestView];

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

  return closestItem != 0;
}

- (void)cancelTimeWithoutTextTimer
{
  guidanceView = [(VKKeyboardCameraViewController *)self guidanceView];
  [guidanceView hideGuidance];

  timeWithoutTextTimer = [(VKKeyboardCameraViewController *)self timeWithoutTextTimer];
  [timeWithoutTextTimer invalidate];

  [(VKKeyboardCameraViewController *)self setTimeWithoutTextTimer:0];
}

- (void)startTimeWithoutTextTimer
{
  timeWithoutTextTimer = [(VKKeyboardCameraViewController *)self timeWithoutTextTimer];

  if (!timeWithoutTextTimer)
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
  view = [(VKKeyboardCameraViewController *)self view];
  [view bounds];
  Height = CGRectGetHeight(v13);
  if (Height > 0.0)
  {
    v4 = Height;
    insertButton = [(VKKeyboardCameraViewController *)self insertButton];
    [insertButton bounds];
    [view convertRect:insertButton fromView:?];
    v6 = (v4 - CGRectGetMaxY(v14)) / v4 + 0.5;
    textProcessor = [(VKKeyboardCameraViewController *)self textProcessor];
    configuration = [textProcessor configuration];
    [configuration setComparisonPoint:{0.5, v6}];

    optFlowTextProcessor = [(VKKeyboardCameraViewController *)self optFlowTextProcessor];
    configuration2 = [optFlowTextProcessor configuration];
    [configuration2 setComparisonPoint:{0.5, v6}];
  }
}

- (unint64_t)dataType
{
  textContentType = [(VKKeyboardCameraViewController *)self textContentType];
  if ([textContentType isEqualToString:*MEMORY[0x1E69DE578]])
  {
    v3 = 3;
  }

  else if ([textContentType isEqualToString:*MEMORY[0x1E69DE4C0]])
  {
    v3 = 4;
  }

  else if ([textContentType isEqualToString:*MEMORY[0x1E69DE580]])
  {
    v3 = 1;
  }

  else if ([textContentType isEqualToString:*MEMORY[0x1E69DE4A0]])
  {
    v3 = 2;
  }

  else if ([textContentType isEqualToString:*MEMORY[0x1E69DE4B8]])
  {
    v3 = 7;
  }

  else if ([textContentType isEqualToString:*MEMORY[0x1E69DE538]])
  {
    v3 = 8;
  }

  else if ([textContentType isEqualToString:*MEMORY[0x1E69DE498]])
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
  textContentType = [(VKKeyboardCameraViewController *)self textContentType];
  v4 = *MEMORY[0x1E69DE578];

  if (textContentType == v4)
  {
    return @"KC_NO_PHONE_HELP";
  }

  textContentType2 = [(VKKeyboardCameraViewController *)self textContentType];
  v6 = *MEMORY[0x1E69DE4C0];

  if (textContentType2 == v6)
  {
    return @"KC_NO_ADDRESS_HELP";
  }

  textContentType3 = [(VKKeyboardCameraViewController *)self textContentType];
  v8 = *MEMORY[0x1E69DE580];

  if (textContentType3 == v8)
  {
    return @"KC_NO_URL_HELP";
  }

  textContentType4 = [(VKKeyboardCameraViewController *)self textContentType];
  v10 = *MEMORY[0x1E69DE4A0];

  if (textContentType4 == v10)
  {
    return @"KC_NO_EMAIL_HELP";
  }

  textContentType5 = [(VKKeyboardCameraViewController *)self textContentType];
  v12 = *MEMORY[0x1E69DE4B8];

  if (textContentType5 == v12)
  {
    return @"KC_NO_FLIGHT_HELP";
  }

  textContentType6 = [(VKKeyboardCameraViewController *)self textContentType];
  v14 = *MEMORY[0x1E69DE538];

  if (textContentType6 == v14)
  {
    return @"KC_NO_TRACKING_HELP";
  }

  textContentType7 = [(VKKeyboardCameraViewController *)self textContentType];
  v16 = *MEMORY[0x1E69DE498];

  if (textContentType7 == v16)
  {
    return @"KC_NO_DATETIME_HELP";
  }

  else
  {
    return @"KC_NO_TEXT_HELP";
  }
}

- (void)textProcessorResult:(id)result
{
  resultCopy = result;
  if (![(VKKeyboardCameraViewController *)self didDismiss])
  {
    frameProvider = [(VKKeyboardCameraViewController *)self frameProvider];
    isProcessing = [frameProvider isProcessing];

    if (isProcessing)
    {
      allItems = [resultCopy allItems];
      firstObject = [allItems firstObject];

      if (firstObject)
      {
        closestItem = [(VKKeyboardCameraViewController *)self closestItem];

        if (firstObject != closestItem)
        {
          [(VKKeyboardCameraViewController *)self setClosestItem:firstObject];
          if ([(VKKeyboardCameraViewController *)self didOverrideComparisonPoint])
          {
            view = [(VKKeyboardCameraViewController *)self view];
            [view bounds];
            v12 = v11;
            v14 = v13;
            v16 = v15;
            closestItem2 = [(VKKeyboardCameraViewController *)self closestItem];
            layerQuad = [closestItem2 layerQuad];
            [layerQuad vertexCentroid];

            VKMFlipPoint();
            v21 = VKMNormalizedPointInRect(v19, v20, v12, v14, v16);
            v23 = v22;
            textProcessor = [(VKKeyboardCameraViewController *)self textProcessor];
            configuration = [textProcessor configuration];
            [configuration setComparisonPoint:{v21, v23}];

            optFlowTextProcessor = [(VKKeyboardCameraViewController *)self optFlowTextProcessor];
            configuration2 = [optFlowTextProcessor configuration];
            [configuration2 setComparisonPoint:{v21, v23}];
          }
        }

        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __54__VKKeyboardCameraViewController_textProcessorResult___block_invoke;
        v45[3] = &unk_1E7BE4208;
        v45[4] = self;
        [(VKKeyboardCameraViewController *)self animate:v45];
        layerQuad2 = [firstObject layerQuad];
        [layerQuad2 minimumBoundingRectWithoutRotation];
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;
        [layerQuad2 averagedAngleFromBottomAndTopEdges];
        v38 = v37;
        reticleView = [(VKKeyboardCameraViewController *)self reticleView];
        [reticleView setReticleRect:v30 angle:{v32, v34, v36, v38}];

        [(VKKeyboardCameraViewController *)self cancelTimeWithoutTextTimer];
      }

      else
      {
        [(VKKeyboardCameraViewController *)self clearFoundItemAndRemoveLiftTextButton:1];
        [(VKKeyboardCameraViewController *)self startTimeWithoutTextTimer];
      }

      insertButton = [(VKKeyboardCameraViewController *)self insertButton];
      [insertButton setEnabled:firstObject != 0];

      transcript = [firstObject transcript];
      v42 = transcript;
      v43 = &stru_1F2C04538;
      if (transcript)
      {
        v43 = transcript;
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

- (void)request:(id)request didFailWithError:(id)error
{
  errorCopy = error;
  v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.keyboardCamera");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [VKKeyboardCameraViewController request:errorCopy didFailWithError:v5];
  }
}

- (void)request:(id)request didRecgonizeTextWithAnalysis:(id)analysis
{
  analysisCopy = analysis;
  if ([(VKKeyboardCameraViewController *)self isTextLifted]&& ([(VKKeyboardCameraViewController *)self textLiftingView], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    textLiftingView = [(VKKeyboardCameraViewController *)self textLiftingView];
    imageInteraction = [textLiftingView imageInteraction];
    [imageInteraction setAnalysis:analysisCopy];
  }

  else
  {
    textLiftingView = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.keyboardCamera");
    if (os_log_type_enabled(textLiftingView, OS_LOG_TYPE_ERROR))
    {
      [VKKeyboardCameraViewController request:didRecgonizeTextWithAnalysis:];
    }
  }
}

- (void)animateAlongsideTextLiftingForView:(id)view
{
  reticleView = [(VKKeyboardCameraViewController *)self reticleView];
  [reticleView setReticleAlpha:0.0];

  reticleView2 = [(VKKeyboardCameraViewController *)self reticleView];
  [reticleView2 setInvertedShadowAlpha:0.5];
}

- (void)textLiftingAnimationDidEndForView:(id)view
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

- (void)animateAlongsideFadeOutForTextLiftingView:(id)view
{
  reticleView = [(VKKeyboardCameraViewController *)self reticleView];
  [reticleView setAlpha:1.0];

  v8 = +[VKKeyboardCameraDefaults sharedInstance];
  [v8 doubleForKey:@"DimmingOpacity"];
  v6 = v5;
  reticleView2 = [(VKKeyboardCameraViewController *)self reticleView];
  [reticleView2 setInvertedShadowAlpha:v6];
}

- (void)frameProvider:(id)provider didChangeSceneStabilityState:(unint64_t)state
{
  providerCopy = provider;
  if (![(VKKeyboardCameraViewController *)self isTextLifted]&& ![(VKKeyboardCameraViewController *)self isPinchToZoomInProgress])
  {
    if (state < 2)
    {
      if (state == 1 && [providerCopy isProcessing])
      {
        [providerCopy stopProcessing];
        [(VKKeyboardCameraViewController *)self clearFoundItemAndRemoveLiftTextButton:1];
        [(VKKeyboardCameraViewController *)self updateInsertButtonWithRecognizedString:&stru_1F2C04538];
        v7 = VKBundle();
        v8 = [v7 localizedStringForKey:@"KC_STABILITY_HELP" value:@"KC_STABILITY_HELP" table:@"Localizable"];

        guidanceView = [(VKKeyboardCameraViewController *)self guidanceView];
        [guidanceView showGuidanceWithText:v8];
      }
    }

    else if (([providerCopy isProcessing] & 1) == 0)
    {
      guidanceView2 = [(VKKeyboardCameraViewController *)self guidanceView];
      [guidanceView2 hideGuidance];

      [providerCopy startProcessing];
    }
  }
}

- (VKKeyboardCameraViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setInitialRecordingTimestamp:(id *)timestamp
{
  var3 = timestamp->var3;
  *&self->_initialRecordingTimestamp.value = *&timestamp->var0;
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