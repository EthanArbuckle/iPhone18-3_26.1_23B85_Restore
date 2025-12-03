@interface PencilHandwritingEducationElementViewController
- (BOOL)isPlayerHidden;
- (PencilHandwritingEducationElementViewController)initWithElementData:(id)data;
- (PencilHandwritingEducationElementViewControllerDelegate)delegate;
- (double)calculateFittingHeightByTemporarilyAdjustingFrameForWidth:(double)width;
- (id)createElementButtonWithTitle:(id)title image:(id)image;
- (int64_t)type;
- (void)applicationDidBecomeActive:(id)active;
- (void)applicationWillResignActive:(id)active;
- (void)beginAnimation;
- (void)cancelAnimation;
- (void)canvasView:(id)view didRefineStrokes:(id)strokes withNewStrokes:(id)newStrokes;
- (void)canvasViewDidBeginUsingTool:(id)tool;
- (void)canvasViewDrawingDidChange:(id)change;
- (void)clearButtonPressed:(id)pressed;
- (void)clearCanvas;
- (void)clearTrackedStrokes;
- (void)dealloc;
- (void)hidePlayer:(BOOL)player;
- (void)initCanvasMaskLayer;
- (void)initCanvasView;
- (void)initClearButton;
- (void)initPlayer;
- (void)initReplayButton;
- (void)initSeeOriginalButton;
- (void)initSeeRefinedButton;
- (void)initStackView;
- (void)initTextLine;
- (void)initTitleLabel;
- (void)notNowPressed:(id)pressed;
- (void)playerItemDidFinish:(id)finish;
- (void)processVideoRequest:(id)request;
- (void)reloadStrings;
- (void)replayButtonPressed:(id)pressed;
- (void)seeOriginalButtonPressed:(id)pressed;
- (void)seeRefinedButtonPressed:(id)pressed;
- (void)setButton:(id)button hidden:(BOOL)hidden animated:(BOOL)animated;
- (void)showPlayer:(BOOL)player;
- (void)startObservingNotifications;
- (void)stopPlayer;
- (void)turnOnPressed:(id)pressed;
- (void)updateButtonTray:(id)tray;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PencilHandwritingEducationElementViewController

- (PencilHandwritingEducationElementViewController)initWithElementData:(id)data
{
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = PencilHandwritingEducationElementViewController;
  v6 = [(PencilHandwritingEducationElementViewController *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_elementData, data);
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    nonRefinableStrokes = v7->_nonRefinableStrokes;
    v7->_nonRefinableStrokes = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    originalStrokes = v7->_originalStrokes;
    v7->_originalStrokes = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    refinedStrokes = v7->_refinedStrokes;
    v7->_refinedStrokes = v12;
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PencilHandwritingEducationElementViewController;
  [(PencilHandwritingEducationElementViewController *)&v4 dealloc];
}

- (void)initStackView
{
  v3 = objc_alloc_init(MEMORY[0x277D75A68]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setAlignment:3];
  [v3 setAxis:1];
  [v3 setSpacing:15.0];
  [(PencilHandwritingEducationElementViewController *)self setStackView:v3];
}

- (void)initTitleLabel
{
  v7 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v7 setNumberOfLines:0];
  [v7 setTextAlignment:1];
  v3 = MEMORY[0x277D74300];
  v4 = *MEMORY[0x277D76918];
  traitCollection = [(PencilHandwritingEducationElementViewController *)self traitCollection];
  v6 = [v3 preferredFontForTextStyle:v4 compatibleWithTraitCollection:traitCollection];

  [v7 setFont:v6];
  [(PencilHandwritingEducationElementViewController *)self setTitleLabel:v7];
}

- (void)initCanvasView
{
  v5 = objc_alloc_init(MEMORY[0x277CD95F0]);
  _tiledView = [v5 _tiledView];
  [_tiledView setIsAutoRefineEnabled:1];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [v5 setBackgroundColor:clearColor];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setDelegate:self];
  [(PencilHandwritingEducationElementViewController *)self setCanvasView:v5];
}

- (void)initTextLine
{
  v4 = objc_alloc_init(TextLineLayer);
  [(TextLineLayer *)v4 setLineWidth:1.0];
  [(TextLineLayer *)v4 setCenterOffset:12.5];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [(TextLineLayer *)v4 setLineColor:systemGrayColor];

  [(TextLineLayer *)v4 setZPosition:-1.0];
  [(TextLineLayer *)v4 setInsets:0.0, 24.0, 0.0, 24.0];
  [(PencilHandwritingEducationElementViewController *)self setTextLineLayer:v4];
}

- (void)initPlayer
{
  v3 = PencilPairingUIBundle();
  v4 = [v3 URLForResource:@"autoRefineSample" withExtension:@"mov"];

  v5 = [MEMORY[0x277CE65B0] playerItemWithURL:v4];
  v6 = [MEMORY[0x277CE6598] playerWithPlayerItem:v5];
  auxiliarySession = [MEMORY[0x277CB83F8] auxiliarySession];
  [auxiliarySession setParticipatesInNowPlayingAppPolicy:0 error:0];
  [auxiliarySession setCategory:*MEMORY[0x277CB8020] withOptions:1 error:0];
  [v6 setAudioSession:auxiliarySession];
  objc_initWeak(&location, self);
  v8 = MEMORY[0x277CE6658];
  currentItem = [v6 currentItem];
  asset = [currentItem asset];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __61__PencilHandwritingEducationElementViewController_initPlayer__block_invoke;
  v21 = &unk_279A0A768;
  objc_copyWeak(&v22, &location);
  v11 = [v8 videoCompositionWithAsset:asset applyingCIFiltersWithHandler:&v18];

  currentItem2 = [v6 currentItem];
  [currentItem2 setVideoComposition:v11];

  [(PencilHandwritingEducationElementViewController *)self setPlayer:v6];
  v13 = [MEMORY[0x277CE65D8] playerLayerWithPlayer:v6];
  [v13 setVideoGravity:*MEMORY[0x277CE5DD0]];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v13 setBackgroundColor:{objc_msgSend(clearColor, "CGColor")}];

  traitCollection = [(PencilHandwritingEducationElementViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    v17 = @"screenBlendMode";
  }

  else
  {
    v17 = @"multiplyBlendMode";
  }

  [v13 setCompositingFilter:v17];
  [(PencilHandwritingEducationElementViewController *)self setPlayerLayer:v13];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __61__PencilHandwritingEducationElementViewController_initPlayer__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained processVideoRequest:v3];
}

- (void)initCanvasMaskLayer
{
  v3 = objc_opt_new();
  [v3 setCornerRadius:10.0];
  [v3 setBlurRadius:8.0];
  [v3 setInsets:{5.0, 5.0, 50.0, 24.0}];
  [(PencilHandwritingEducationElementViewController *)self setCanvasMaskLayer:v3];
}

- (void)initReplayButton
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"REPLAY_BUTTON_TITLE" value:&stru_286FDFDB8 table:@"PencilSettings"];
  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.counterclockwise"];
  v6 = [(PencilHandwritingEducationElementViewController *)self createElementButtonWithTitle:v4 image:v5];

  [v6 setHidden:1];
  [v6 addTarget:self action:sel_replayButtonPressed_ forControlEvents:64];
  [(PencilHandwritingEducationElementViewController *)self setReplayButton:v6];
}

- (void)initSeeRefinedButton
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SEE_REFINED_BUTTON_TITLE" value:&stru_286FDFDB8 table:@"PencilSettings"];
  v5 = [(PencilHandwritingEducationElementViewController *)self createElementButtonWithTitle:v4 image:0];

  [v5 setHidden:1];
  [v5 addTarget:self action:sel_seeRefinedButtonPressed_ forControlEvents:64];
  [(PencilHandwritingEducationElementViewController *)self setSeeRefinedButton:v5];
}

- (void)initSeeOriginalButton
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SEE_ORIGINAL_BUTTON_TITLE" value:&stru_286FDFDB8 table:@"PencilSettings"];
  v5 = [(PencilHandwritingEducationElementViewController *)self createElementButtonWithTitle:v4 image:0];

  [v5 setHidden:1];
  [v5 addTarget:self action:sel_seeOriginalButtonPressed_ forControlEvents:64];
  [(PencilHandwritingEducationElementViewController *)self setSeeOriginalButton:v5];
}

- (id)createElementButtonWithTitle:(id)title image:(id)image
{
  titleCopy = title;
  imageCopy = image;
  v8 = objc_alloc_init(MEMORY[0x277D75220]);
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(PencilHandwritingEducationElementViewController *)self view];
  tintColor = [view tintColor];

  imageView = [v8 imageView];
  [imageView setTintColor:tintColor];

  [v8 setTitleColor:tintColor forState:0];
  if (titleCopy)
  {
    [v8 setTitle:titleCopy forState:0];
  }

  if (imageCopy)
  {
    [v8 setImage:imageCopy forState:0];
  }

  v12 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] variant:1024];
  titleLabel = [v8 titleLabel];
  [titleLabel setFont:v12];

  if (imageCopy)
  {
    v14 = [MEMORY[0x277D755D0] configurationWithFont:v12 scale:-1];
    traitCollection = [(PencilHandwritingEducationElementViewController *)self traitCollection];
    if ([traitCollection layoutDirection] == 1)
    {
      v16 = 7.0;
    }

    else
    {
      v16 = -7.0;
    }

    [v8 setImageEdgeInsets:{0.0, v16, 0.0, 0.0}];
    [v8 setPreferredSymbolConfiguration:v14 forImageInState:0];
  }

  return v8;
}

- (void)initClearButton
{
  v8 = objc_opt_new();
  v3 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark.circle.fill"];
  [v8 setImage:v3 forState:0];

  [v8 setHidden:1];
  imageView = [v8 imageView];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [imageView setTintColor:systemGrayColor];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 addTarget:self action:sel_clearButtonPressed_ forControlEvents:64];
  widthAnchor = [v8 widthAnchor];
  v7 = [widthAnchor constraintEqualToConstant:24.0];
  [v7 setActive:1];

  [(PencilHandwritingEducationElementViewController *)self setClearButton:v8];
}

- (void)startObservingNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *MEMORY[0x277CE60C0];
  player = [(PencilHandwritingEducationElementViewController *)self player];
  currentItem = [player currentItem];
  [defaultCenter addObserver:self selector:sel_playerItemDidFinish_ name:v3 object:currentItem];

  [defaultCenter addObserver:self selector:sel_applicationWillResignActive_ name:*MEMORY[0x277D76768] object:0];
  [defaultCenter addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];
}

- (void)viewDidLoad
{
  v93 = *MEMORY[0x277D85DE8];
  v90.receiver = self;
  v90.super_class = PencilHandwritingEducationElementViewController;
  [(PencilHandwritingEducationElementViewController *)&v90 viewDidLoad];
  [(PencilHandwritingEducationElementViewController *)self initStackView];
  [(PencilHandwritingEducationElementViewController *)self initTitleLabel];
  [(PencilHandwritingEducationElementViewController *)self initCanvasView];
  [(PencilHandwritingEducationElementViewController *)self initTextLine];
  [(PencilHandwritingEducationElementViewController *)self initPlayer];
  [(PencilHandwritingEducationElementViewController *)self initCanvasMaskLayer];
  [(PencilHandwritingEducationElementViewController *)self initReplayButton];
  [(PencilHandwritingEducationElementViewController *)self initSeeRefinedButton];
  [(PencilHandwritingEducationElementViewController *)self initSeeOriginalButton];
  [(PencilHandwritingEducationElementViewController *)self initClearButton];
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  heightAnchor = [v3 heightAnchor];
  v5 = [heightAnchor constraintEqualToConstant:5.0];
  [v5 setActive:1];

  v6 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  heightAnchor2 = [v6 heightAnchor];
  v8 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:20.0];
  [v8 setActive:1];

  stackView = [(PencilHandwritingEducationElementViewController *)self stackView];
  titleLabel = [(PencilHandwritingEducationElementViewController *)self titleLabel];
  canvasView = [(PencilHandwritingEducationElementViewController *)self canvasView];
  [stackView addArrangedSubview:v3];
  v82 = titleLabel;
  [stackView addArrangedSubview:titleLabel];
  [stackView addArrangedSubview:canvasView];
  [stackView addArrangedSubview:v6];
  view = [(PencilHandwritingEducationElementViewController *)self view];
  [view addSubview:stackView];

  leadingAnchor = [stackView leadingAnchor];
  view2 = [(PencilHandwritingEducationElementViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v16 setActive:1];

  trailingAnchor = [stackView trailingAnchor];
  view3 = [(PencilHandwritingEducationElementViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v20 setActive:1];

  topAnchor = [stackView topAnchor];
  view4 = [(PencilHandwritingEducationElementViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v24 setActive:1];

  bottomAnchor = [stackView bottomAnchor];
  view5 = [(PencilHandwritingEducationElementViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v28 setActive:1];

  LODWORD(v29) = 1148846080;
  [stackView setContentCompressionResistancePriority:1 forAxis:v29];
  v84 = v3;
  widthAnchor = [v3 widthAnchor];
  widthAnchor2 = [stackView widthAnchor];
  v32 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:1.0];
  [v32 setActive:1];

  v83 = v6;
  widthAnchor3 = [v6 widthAnchor];
  widthAnchor4 = [stackView widthAnchor];
  v35 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:1.0];
  [v35 setActive:1];

  heightAnchor3 = [canvasView heightAnchor];
  v37 = [heightAnchor3 constraintEqualToConstant:250.0];
  [v37 setActive:1];

  widthAnchor5 = [canvasView widthAnchor];
  v85 = stackView;
  widthAnchor6 = [stackView widthAnchor];
  v40 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6];
  [v40 setActive:1];

  LODWORD(v41) = 1148846080;
  [canvasView setContentHuggingPriority:1 forAxis:v41];
  LODWORD(v42) = 1148846080;
  [canvasView setContentCompressionResistancePriority:1 forAxis:v42];
  textLineLayer = [(PencilHandwritingEducationElementViewController *)self textLineLayer];
  layer = [canvasView layer];
  [layer bounds];
  [textLineLayer setFrame:?];

  view6 = [(PencilHandwritingEducationElementViewController *)self view];
  layer2 = [view6 layer];
  [layer2 insertSublayer:textLineLayer atIndex:0];

  playerLayer = [(PencilHandwritingEducationElementViewController *)self playerLayer];
  view7 = [(PencilHandwritingEducationElementViewController *)self view];
  layer3 = [view7 layer];
  v80 = playerLayer;
  v81 = textLineLayer;
  [layer3 insertSublayer:playerLayer above:textLineLayer];

  canvasMaskLayer = [(PencilHandwritingEducationElementViewController *)self canvasMaskLayer];
  layer4 = [canvasView layer];
  [layer4 bounds];
  [canvasMaskLayer setFrame:?];

  v52 = canvasView;
  layer5 = [canvasView layer];
  v79 = canvasMaskLayer;
  [layer5 setMask:canvasMaskLayer];

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  replayButton = [(PencilHandwritingEducationElementViewController *)self replayButton];
  v91[0] = replayButton;
  seeOriginalButton = [(PencilHandwritingEducationElementViewController *)self seeOriginalButton];
  v91[1] = seeOriginalButton;
  selfCopy = self;
  seeRefinedButton = [(PencilHandwritingEducationElementViewController *)self seeRefinedButton];
  v91[2] = seeRefinedButton;
  v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:3];

  v59 = [v58 countByEnumeratingWithState:&v86 objects:v92 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v87;
    do
    {
      v62 = 0;
      do
      {
        if (*v87 != v61)
        {
          objc_enumerationMutation(v58);
        }

        v63 = *(*(&v86 + 1) + 8 * v62);
        view8 = [(PencilHandwritingEducationElementViewController *)selfCopy view];
        [view8 addSubview:v63];

        topAnchor3 = [v63 topAnchor];
        centerYAnchor = [v52 centerYAnchor];
        v67 = [topAnchor3 constraintEqualToAnchor:centerYAnchor constant:31.5];
        [v67 setActive:1];

        centerXAnchor = [v63 centerXAnchor];
        centerXAnchor2 = [v85 centerXAnchor];
        v70 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
        [v70 setActive:1];

        ++v62;
      }

      while (v60 != v62);
      v60 = [v58 countByEnumeratingWithState:&v86 objects:v92 count:16];
    }

    while (v60);
  }

  clearButton = [(PencilHandwritingEducationElementViewController *)selfCopy clearButton];
  view9 = [(PencilHandwritingEducationElementViewController *)selfCopy view];
  [view9 addSubview:clearButton];

  rightAnchor = [clearButton rightAnchor];
  rightAnchor2 = [v52 rightAnchor];
  v75 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-24.0];
  [v75 setActive:1];

  centerYAnchor2 = [clearButton centerYAnchor];
  centerYAnchor3 = [v52 centerYAnchor];
  v78 = [centerYAnchor2 constraintEqualToAnchor:centerYAnchor3 constant:-11.5];
  [v78 setActive:1];

  [(PencilHandwritingEducationElementViewController *)selfCopy reloadStrings];
  [(PencilHandwritingEducationElementViewController *)selfCopy startObservingNotifications];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PencilHandwritingEducationElementViewController;
  [(PencilHandwritingEducationElementViewController *)&v4 viewWillAppear:appear];
  if (![(PencilHandwritingEducationElementViewController *)self didRunInitialAppearActions]|| [(PencilHandwritingEducationElementViewController *)self didDisappear])
  {
    [(PencilHandwritingEducationElementViewController *)self setDidRunInitialAppearActions:1];
    [(PencilHandwritingEducationElementViewController *)self setDidDisappear:0];
    [(PencilHandwritingEducationElementViewController *)self reloadStrings];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = PencilHandwritingEducationElementViewController;
  [(PencilHandwritingEducationElementViewController *)&v8 viewDidAppear:appear];
  delegate = [(PencilHandwritingEducationElementViewController *)self delegate];
  [delegate elementControllerDidAppear:self];

  if (![(PencilHandwritingEducationElementViewController *)self isPlayerHidden])
  {
    player = [(PencilHandwritingEducationElementViewController *)self player];
    [player play];
  }

  v6 = objc_alloc_init(MEMORY[0x277D75820]);
  view = [(PencilHandwritingEducationElementViewController *)self view];
  [view addInteraction:v6];

  [v6 setDelegate:self];
  [(PencilHandwritingEducationElementViewController *)self setPencilInteraction:v6];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PencilHandwritingEducationElementViewController;
  [(PencilHandwritingEducationElementViewController *)&v5 viewWillDisappear:0];
  if (![(PencilHandwritingEducationElementViewController *)self isPlayerHidden])
  {
    player = [(PencilHandwritingEducationElementViewController *)self player];
    [player pause];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = PencilHandwritingEducationElementViewController;
  [(PencilHandwritingEducationElementViewController *)&v7 viewDidDisappear:disappear];
  if (![(PencilHandwritingEducationElementViewController *)self isPlayerHidden])
  {
    player = [(PencilHandwritingEducationElementViewController *)self player];
    [player pause];
  }

  [(PencilHandwritingEducationElementViewController *)self setDidDisappear:1];
  view = [(PencilHandwritingEducationElementViewController *)self view];
  pencilInteraction = [(PencilHandwritingEducationElementViewController *)self pencilInteraction];
  [view removeInteraction:pencilInteraction];
}

- (void)viewDidLayoutSubviews
{
  v22.receiver = self;
  v22.super_class = PencilHandwritingEducationElementViewController;
  [(PencilHandwritingEducationElementViewController *)&v22 viewDidLayoutSubviews];
  playerLayer = [(PencilHandwritingEducationElementViewController *)self playerLayer];
  canvasView = [(PencilHandwritingEducationElementViewController *)self canvasView];
  [canvasView bounds];
  [canvasView setContentSize:{v5, v6}];
  view = [(PencilHandwritingEducationElementViewController *)self view];
  [canvasView bounds];
  [view convertRect:canvasView fromView:?];
  [playerLayer setFrame:?];

  [playerLayer setNeedsDisplay];
  view2 = [(PencilHandwritingEducationElementViewController *)self view];
  [canvasView bounds];
  [view2 convertRect:canvasView fromView:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  textLineLayer = [(PencilHandwritingEducationElementViewController *)self textLineLayer];
  [textLineLayer setFrame:{v10, v12, v14, v16}];

  textLineLayer2 = [(PencilHandwritingEducationElementViewController *)self textLineLayer];
  [textLineLayer2 setNeedsDisplay];

  canvasMaskLayer = [(PencilHandwritingEducationElementViewController *)self canvasMaskLayer];
  layer = [canvasView layer];
  [layer bounds];
  [canvasMaskLayer setFrame:?];

  canvasMaskLayer2 = [(PencilHandwritingEducationElementViewController *)self canvasMaskLayer];
  [canvasMaskLayer2 setNeedsDisplay];
}

- (double)calculateFittingHeightByTemporarilyAdjustingFrameForWidth:(double)width
{
  view = [(PencilHandwritingEducationElementViewController *)self view];
  [view frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  view2 = [(PencilHandwritingEducationElementViewController *)self view];
  [view2 setFrame:{v7, v9, width, v13}];

  view3 = [(PencilHandwritingEducationElementViewController *)self view];
  [view3 layoutIfNeeded];

  stackView = [(PencilHandwritingEducationElementViewController *)self stackView];
  [stackView systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
  v18 = v17;

  view4 = [(PencilHandwritingEducationElementViewController *)self view];
  [view4 setFrame:{v7, v9, v11, v13}];

  return v18;
}

- (void)processVideoRequest:(id)request
{
  requestCopy = request;
  sourceImage = [requestCopy sourceImage];
  traitCollection = [(PencilHandwritingEducationElementViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  v7 = MEMORY[0x277CBFAF0];
  if (userInterfaceStyle == 2)
  {
    colorInvertFilter = [MEMORY[0x277CBF750] colorInvertFilter];
    [colorInvertFilter setValue:sourceImage forKey:*v7];
    outputImage = [colorInvertFilter outputImage];

    sourceImage = outputImage;
  }

  traitCollection2 = [(PencilHandwritingEducationElementViewController *)self traitCollection];
  if ([traitCollection2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x277CBF750] lightenBlendModeFilter];
  }

  else
  {
    [MEMORY[0x277CBF750] multiplyBlendModeFilter];
  }
  v11 = ;

  traitCollection3 = [(PencilHandwritingEducationElementViewController *)self traitCollection];
  if ([traitCollection3 userInterfaceStyle] == 2)
  {
    [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemBackgroundColor];
  }
  v13 = ;

  [sourceImage extent];
  v15 = v14;
  v17 = v16;
  v24.width = v14;
  v24.height = v16;
  UIGraphicsBeginImageContext(v24);
  [v13 setFill];
  v25.origin.x = 0.0;
  v25.origin.y = 0.0;
  v25.size.width = v15;
  v25.size.height = v17;
  UIRectFill(v25);
  v18 = MEMORY[0x277CBF758];
  v19 = UIGraphicsGetImageFromCurrentImageContext();
  v20 = [v18 imageWithCGImage:{objc_msgSend(v19, "CGImage")}];

  UIGraphicsEndImageContext();
  [v11 setValue:sourceImage forKey:*v7];
  [v11 setValue:v20 forKey:*MEMORY[0x277CBFAB8]];
  outputImage2 = [v11 outputImage];
  [requestCopy finishWithImage:outputImage2 context:0];
}

- (void)replayButtonPressed:(id)pressed
{
  [(PencilHandwritingEducationElementViewController *)self reloadStrings];
  [(PencilHandwritingEducationElementViewController *)self clearCanvas];
  [(PencilHandwritingEducationElementViewController *)self setButton:self->_replayButton hidden:1 animated:1];
  player = [(PencilHandwritingEducationElementViewController *)self player];
  v5 = *MEMORY[0x277CC08F0];
  v6 = *(MEMORY[0x277CC08F0] + 16);
  [player seekToTime:&v5];
  [(PencilHandwritingEducationElementViewController *)self showPlayer:0];
  [player play];
}

- (void)seeRefinedButtonPressed:(id)pressed
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CD95F8]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_refinedStrokes;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addNewStroke:*(*(&v19 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_nonRefinableStrokes;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
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

        [v4 addNewStroke:{*(*(&v15 + 1) + 8 * v14++), v15}];
      }

      while (v12 != v14);
      v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  [(PKCanvasView *)self->_canvasView setDrawing:v4];
  [(PKCanvasView *)self->_canvasView setNeedsDisplay];
  [(PencilHandwritingEducationElementViewController *)self setButton:self->_seeRefinedButton hidden:1 animated:0];
  [(PencilHandwritingEducationElementViewController *)self setButton:self->_seeOriginalButton hidden:0 animated:1];
}

- (void)seeOriginalButtonPressed:(id)pressed
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CD95F8]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_originalStrokes;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addNewStroke:*(*(&v19 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_nonRefinableStrokes;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
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

        [v4 addNewStroke:{*(*(&v15 + 1) + 8 * v14++), v15}];
      }

      while (v12 != v14);
      v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  [(PKCanvasView *)self->_canvasView setDrawing:v4];
  [(PKCanvasView *)self->_canvasView setNeedsDisplay];
  [(PencilHandwritingEducationElementViewController *)self setButton:self->_seeOriginalButton hidden:1 animated:0];
  [(PencilHandwritingEducationElementViewController *)self setButton:self->_seeRefinedButton hidden:0 animated:1];
}

- (void)clearButtonPressed:(id)pressed
{
  [(PencilHandwritingEducationElementViewController *)self clearCanvas];
  [(PencilHandwritingEducationElementViewController *)self clearTrackedStrokes];
  if (![(PencilHandwritingEducationElementViewController *)self isPlayerHidden])
  {
    [(PencilHandwritingEducationElementViewController *)self stopPlayer];
    [(PencilHandwritingEducationElementViewController *)self hidePlayer:1];
  }

  [(PencilHandwritingEducationElementViewController *)self setButton:self->_seeRefinedButton hidden:1 animated:0];
  [(PencilHandwritingEducationElementViewController *)self setButton:self->_seeOriginalButton hidden:1 animated:0];
  replayButton = self->_replayButton;

  [(PencilHandwritingEducationElementViewController *)self setButton:replayButton hidden:0 animated:1];
}

- (void)clearTrackedStrokes
{
  [(NSMutableSet *)self->_originalStrokes removeAllObjects];
  [(NSMutableSet *)self->_refinedStrokes removeAllObjects];
  nonRefinableStrokes = self->_nonRefinableStrokes;

  [(NSMutableSet *)nonRefinableStrokes removeAllObjects];
}

- (void)updateButtonTray:(id)tray
{
  trayCopy = tray;
  [trayCopy setHidden:1];
  [trayCopy removeAllButtons];
  elementData = [(PencilHandwritingEducationElementViewController *)self elementData];
  type = [elementData type];

  if (!type)
  {
    boldButton = [MEMORY[0x277D37618] boldButton];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"AUTO_REFINE_TURN_ON_BUTTON_TITLE" value:&stru_286FDFDB8 table:@"PencilSettings"];
    [boldButton setTitle:v8 forState:0];

    [boldButton addTarget:self action:sel_turnOnPressed_ forControlEvents:64];
    [trayCopy addButton:boldButton];
    linkButton = [MEMORY[0x277D37650] linkButton];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"AUTO_REFINE_NOT_NOW_BUTTON_TITLE" value:&stru_286FDFDB8 table:@"PencilSettings"];
    [linkButton setTitle:v11 forState:0];

    [linkButton addTarget:self action:sel_notNowPressed_ forControlEvents:64];
    [trayCopy addButton:linkButton];
    [trayCopy setHidden:0];
  }
}

- (void)turnOnPressed:(id)pressed
{
  elementData = [(PencilHandwritingEducationElementViewController *)self elementData];
  type = [elementData type];

  if (!type)
  {
    v6 = +[PencilSettings sharedPencilSettings];
    [v6 setAutoRefineEnabled:1];

    [(PencilHandwritingEducationElementViewController *)self setDidEnableAutoRefine:1];
    delegate = [(PencilHandwritingEducationElementViewController *)self delegate];
    [delegate elementControllerShouldDismiss:self];
  }
}

- (void)notNowPressed:(id)pressed
{
  elementData = [(PencilHandwritingEducationElementViewController *)self elementData];
  type = [elementData type];

  if (!type)
  {
    v6 = +[PencilSettings sharedPencilSettings];
    [v6 setAutoRefineEnabled:0];

    delegate = [(PencilHandwritingEducationElementViewController *)self delegate];
    [delegate elementControllerShouldDismiss:self];
  }
}

- (void)reloadStrings
{
  elementData = [(PencilHandwritingEducationElementViewController *)self elementData];
  title = [elementData title];
  titleLabel = [(PencilHandwritingEducationElementViewController *)self titleLabel];
  [titleLabel setAttributedText:title];
}

- (void)clearCanvas
{
  canvasView = [(PencilHandwritingEducationElementViewController *)self canvasView];
  v2 = objc_opt_new();
  [canvasView setDrawing:v2];

  [canvasView setNeedsDisplay];
}

- (int64_t)type
{
  elementData = [(PencilHandwritingEducationElementViewController *)self elementData];
  type = [elementData type];

  return type;
}

- (void)cancelAnimation
{
  if (![(PencilHandwritingEducationElementViewController *)self isPlayerHidden])
  {
    player = [(PencilHandwritingEducationElementViewController *)self player];
    [player pause];

    playerLayer = [(PencilHandwritingEducationElementViewController *)self playerLayer];
    [playerLayer setHidden:1];
  }
}

- (void)beginAnimation
{
  if (![(PencilHandwritingEducationElementViewController *)self isPlayerHidden])
  {
    player = [(PencilHandwritingEducationElementViewController *)self player];
    [player play];
  }
}

- (BOOL)isPlayerHidden
{
  playerLayer = [(PencilHandwritingEducationElementViewController *)self playerLayer];
  superlayer = [playerLayer superlayer];
  if (superlayer)
  {
    [playerLayer opacity];
    v5 = v4 != 1.0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)stopPlayer
{
  player = [(PencilHandwritingEducationElementViewController *)self player];
  [player pause];
  v3 = *MEMORY[0x277CC08F0];
  v4 = *(MEMORY[0x277CC08F0] + 16);
  [player seekToTime:&v3];
}

- (void)hidePlayer:(BOOL)player
{
  playerLayer = [(PencilHandwritingEducationElementViewController *)self playerLayer];
  v4 = MEMORY[0x277D75D18];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__PencilHandwritingEducationElementViewController_hidePlayer___block_invoke;
  v8[3] = &unk_279A0A060;
  v9 = playerLayer;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__PencilHandwritingEducationElementViewController_hidePlayer___block_invoke_2;
  v6[3] = &unk_279A0A790;
  v7 = v9;
  v5 = v9;
  [v4 animateWithDuration:v8 animations:v6 completion:0.25];
}

- (void)showPlayer:(BOOL)player
{
  playerLayer = [(PencilHandwritingEducationElementViewController *)self playerLayer];
  superlayer = [playerLayer superlayer];

  if (!superlayer)
  {
    view = [(PencilHandwritingEducationElementViewController *)self view];
    layer = [view layer];
    textLineLayer = [(PencilHandwritingEducationElementViewController *)self textLineLayer];
    [layer insertSublayer:playerLayer above:textLineLayer];
  }

  v9 = MEMORY[0x277D75D18];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__PencilHandwritingEducationElementViewController_showPlayer___block_invoke;
  v11[3] = &unk_279A0A060;
  v12 = playerLayer;
  v10 = playerLayer;
  [v9 animateWithDuration:v11 animations:0.25];
}

- (void)setButton:(id)button hidden:(BOOL)hidden animated:(BOOL)animated
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  buttonCopy = button;
  if ([buttonCopy isHidden] != hiddenCopy)
  {
    if ([buttonCopy isHidden])
    {
      [buttonCopy setAlpha:0.0];
      [buttonCopy setHidden:0];
    }

    if (animatedCopy)
    {
      v8 = 0.25;
    }

    else
    {
      v8 = 0.0;
    }

    v9 = MEMORY[0x277D75D18];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __77__PencilHandwritingEducationElementViewController_setButton_hidden_animated___block_invoke;
    v13[3] = &unk_279A0A100;
    v14 = buttonCopy;
    v15 = hiddenCopy;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __77__PencilHandwritingEducationElementViewController_setButton_hidden_animated___block_invoke_2;
    v10[3] = &unk_279A0A7B8;
    v11 = v14;
    v12 = hiddenCopy;
    [v9 animateWithDuration:v13 animations:v10 completion:v8];
  }
}

- (void)playerItemDidFinish:(id)finish
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__PencilHandwritingEducationElementViewController_playerItemDidFinish___block_invoke;
  block[3] = &unk_279A0A060;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __71__PencilHandwritingEducationElementViewController_playerItemDidFinish___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 replayButton];
  [v2 setButton:v3 hidden:0 animated:1];

  v4 = [*(a1 + 32) clearButton];
  [v4 setHidden:0];
}

- (void)applicationWillResignActive:(id)active
{
  if (![(PencilHandwritingEducationElementViewController *)self isPlayerHidden])
  {
    player = [(PencilHandwritingEducationElementViewController *)self player];
    [player pause];
  }
}

- (void)applicationDidBecomeActive:(id)active
{
  if (![(PencilHandwritingEducationElementViewController *)self isPlayerHidden])
  {
    player = [(PencilHandwritingEducationElementViewController *)self player];
    [player play];
  }
}

- (void)canvasViewDidBeginUsingTool:(id)tool
{
  [(PencilHandwritingEducationElementViewController *)self setButton:self->_replayButton hidden:1 animated:0];
  [(PencilHandwritingEducationElementViewController *)self setButton:self->_seeRefinedButton hidden:1 animated:0];
  [(PencilHandwritingEducationElementViewController *)self setButton:self->_seeOriginalButton hidden:1 animated:0];
  if (![(PencilHandwritingEducationElementViewController *)self isPlayerHidden])
  {
    [(PencilHandwritingEducationElementViewController *)self stopPlayer];

    [(PencilHandwritingEducationElementViewController *)self hidePlayer:0];
  }
}

- (void)canvasViewDrawingDidChange:(id)change
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__PencilHandwritingEducationElementViewController_canvasViewDrawingDidChange___block_invoke;
  block[3] = &unk_279A0A060;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __78__PencilHandwritingEducationElementViewController_canvasViewDrawingDidChange___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) canvasView];
  v2 = [v6 drawing];
  v3 = [v2 strokes];
  v4 = [v3 count] == 0;
  v5 = [*(a1 + 32) clearButton];
  [v5 setHidden:v4];
}

- (void)canvasView:(id)view didRefineStrokes:(id)strokes withNewStrokes:(id)newStrokes
{
  viewCopy = view;
  strokesCopy = strokes;
  newStrokesCopy = newStrokes;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__PencilHandwritingEducationElementViewController_canvasView_didRefineStrokes_withNewStrokes___block_invoke;
  block[3] = &unk_279A0A7E0;
  objc_copyWeak(&v18, &location);
  v15 = strokesCopy;
  v16 = newStrokesCopy;
  v17 = viewCopy;
  v11 = viewCopy;
  v12 = newStrokesCopy;
  v13 = strokesCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __94__PencilHandwritingEducationElementViewController_canvasView_didRefineStrokes_withNewStrokes___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 56));
    [v3[139] addObjectsFromArray:*(a1 + 32)];
    [v3[140] addObjectsFromArray:*(a1 + 40)];
    v4 = objc_alloc(MEMORY[0x277CBEB18]);
    v5 = [*(a1 + 48) drawing];
    v6 = [v5 strokes];
    v7 = [v4 initWithCapacity:{objc_msgSend(v3[138], "count") + objc_msgSend(v6, "count")}];

    v8 = [*(a1 + 48) drawing];
    v9 = [v8 strokes];
    [v7 addObjectsFromArray:v9];

    v10 = [v3[138] allObjects];
    [v7 addObjectsFromArray:v10];

    v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v35;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v34 + 1) + 8 * i);
          v18 = [v17 _strokeUUID];
          [v11 setObject:v17 forKey:v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v14);
    }

    v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3[140], "count") + objc_msgSend(v3[139], "count")}];
    v20 = [v3[140] allObjects];
    [v19 addObjectsFromArray:v20];

    v21 = [v3[139] allObjects];
    [v19 addObjectsFromArray:v21];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v22 = v19;
    v23 = [v22 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v31;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v31 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v30 + 1) + 8 * j) _strokeUUID];
          [v11 removeObjectForKey:v27];
        }

        v24 = [v22 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v24);
    }

    [v3[138] removeAllObjects];
    v28 = v3[138];
    v29 = [v11 allValues];
    [v28 addObjectsFromArray:v29];

    [v3 setButton:v3[136] hidden:1 animated:0];
    [v3 setButton:v3[134] hidden:1 animated:0];
    [v3 setButton:v3[137] hidden:0 animated:1];
  }
}

- (PencilHandwritingEducationElementViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end