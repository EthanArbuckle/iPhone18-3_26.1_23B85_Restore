@interface PNPSqueezeController
+ (id)_controllerWithType:(int64_t)type buttonType:(int64_t)buttonType deviceType:(int64_t)deviceType delegate:(id)delegate;
- (CGPoint)paletteHoverLocation;
- (id)loadSqueezeAnimationPackage;
- (void)_squeezePaletteVisibilityDidChange:(id)change;
- (void)dealloc;
- (void)loadSqueezeAnimationLayer;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PNPSqueezeController

+ (id)_controllerWithType:(int64_t)type buttonType:(int64_t)buttonType deviceType:(int64_t)deviceType delegate:(id)delegate
{
  delegateCopy = delegate;
  v10 = [PNPSqueezeController alloc];
  v11 = PencilPairingUIBundle();
  v12 = [v11 localizedStringForKey:@"SQUEEZE_TITLE" value:&stru_286FDFDB8 table:@"PencilPairingSqueeze-B532"];
  v13 = PencilPairingUIBundle();
  v14 = [v13 localizedStringForKey:@"SQUEEZE_DESCRIPTION" value:&stru_286FDFDB8 table:@"PencilPairingSqueeze-B532"];
  v15 = [(PNPWelcomeController *)v10 initWithTitle:v12 detailText:v14 icon:0];

  [(PNPWelcomeController *)v15 setControllerType:type buttonType:buttonType deviceType:deviceType delegate:delegateCopy];

  return v15;
}

- (void)dealloc
{
  toolPicker = [(PNPSqueezeController *)self toolPicker];
  [toolPicker removeObserver:self];

  v4.receiver = self;
  v4.super_class = PNPSqueezeController;
  [(PNPSqueezeController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = PNPSqueezeController;
  [(OBBaseWelcomeController *)&v19 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277CD95F0]);
  view = [(PNPSqueezeController *)self view];
  [view frame];
  v5 = [v3 initWithFrame:?];

  [v5 setAutoresizingMask:18];
  [v5 setDrawingPolicy:2];
  view2 = [(PNPSqueezeController *)self view];
  [view2 addSubview:v5];

  [(PNPSqueezeController *)self setCanvasView:v5];
  canvasView = [(PNPSqueezeController *)self canvasView];
  [canvasView setHidden:1];

  clearColor = [MEMORY[0x277D75348] clearColor];
  canvasView2 = [(PNPSqueezeController *)self canvasView];
  [canvasView2 setBackgroundColor:clearColor];

  v10 = objc_alloc_init(MEMORY[0x277CD96A0]);
  [(PNPSqueezeController *)self setToolPicker:v10];

  toolPicker = [(PNPSqueezeController *)self toolPicker];
  [toolPicker setStateAutosaveName:0];

  toolPicker2 = [(PNPSqueezeController *)self toolPicker];
  canvasView3 = [(PNPSqueezeController *)self canvasView];
  [toolPicker2 addObserver:canvasView3];

  [(PNPSqueezeController *)self loadSqueezeAnimationLayer];
  pencilLayer = [(PNPSqueezeController *)self pencilLayer];
  [pencilLayer setHidden:1];

  view3 = [(PNPSqueezeController *)self view];
  layer = [view3 layer];
  pencilLayer2 = [(PNPSqueezeController *)self pencilLayer];
  [layer addSublayer:pencilLayer2];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__squeezePaletteVisibilityDidChange_ name:*MEMORY[0x277CD9708] object:0];
}

- (void)_squeezePaletteVisibilityDidChange:(id)change
{
  changeCopy = change;
  v5 = MEMORY[0x277CD9650];
  view = [(PNPSqueezeController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  v9 = [v5 _existingInteractionForWindowScene:windowScene];

  if ([v9 _paletteViewVisible] && !-[PNPSqueezeController pencilLayerHiddenByInteraction](self, "pencilLayerHiddenByInteraction"))
  {
    [(PNPSqueezeController *)self setPencilLayerHiddenByInteraction:1];
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setAnimationDuration:0.25];
    objc_initWeak(&location, self);
    v10 = MEMORY[0x277CD9FF0];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __59__PNPSqueezeController__squeezePaletteVisibilityDidChange___block_invoke;
    v14 = &unk_279A0A508;
    objc_copyWeak(&v15, &location);
    [v10 setCompletionBlock:&v11];
    [MEMORY[0x277CD9FF0] commit];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __59__PNPSqueezeController__squeezePaletteVisibilityDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained pencilLayer];
    [v2 setHidden:1];

    v3 = [v5 pencilLayer];
    LODWORD(v4) = 1.0;
    [v3 setOpacity:v4];

    WeakRetained = v5;
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v14.receiver = self;
  v14.super_class = PNPSqueezeController;
  [(PNPSqueezeController *)&v14 viewWillAppear:appear];
  v4 = objc_alloc_init(MEMORY[0x277CD95F8]);
  canvasView = [(PNPSqueezeController *)self canvasView];
  [canvasView setDrawing:v4];

  view = [(PNPSqueezeController *)self view];
  pencilLayer = [(PNPSqueezeController *)self pencilLayer];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [view bounds];
  v9 = v8;
  v11 = v10;
  [pencilLayer setAnchorPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  CGAffineTransformMakeScale(&v13, 0.5, 0.5);
  v12 = v13;
  [pencilLayer setAffineTransform:&v12];
  [pencilLayer setPosition:{v9 * 0.5, v11 * 0.5}];
  [pencilLayer setHidden:0];
  [MEMORY[0x277CD9FF0] commit];
}

- (void)viewDidAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = PNPSqueezeController;
  [(OBBaseWelcomeController *)&v12 viewDidAppear:appear];
  canvasView = [(PNPSqueezeController *)self canvasView];
  [canvasView setHidden:0];

  canvasView2 = [(PNPSqueezeController *)self canvasView];
  [canvasView2 becomeFirstResponder];

  canvasView3 = [(PNPSqueezeController *)self canvasView];
  pencilKitResponderState = [canvasView3 pencilKitResponderState];
  [pencilKitResponderState setToolPickerVisibility:2];

  toolPicker = [(PNPSqueezeController *)self toolPicker];
  canvasView4 = [(PNPSqueezeController *)self canvasView];
  pencilKitResponderState2 = [canvasView4 pencilKitResponderState];
  [pencilKitResponderState2 setActiveToolPicker:toolPicker];

  toolPicker2 = [(PNPSqueezeController *)self toolPicker];
  [toolPicker2 _disableTapInteractionWhenNotVisible];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v11.receiver = self;
  v11.super_class = PNPSqueezeController;
  [(OBBaseWelcomeController *)&v11 viewWillDisappear:disappear];
  canvasView = [(PNPSqueezeController *)self canvasView];
  [canvasView resignFirstResponder];

  [(PNPSqueezeController *)self setPencilLayerHiddenByInteraction:0];
  v5 = MEMORY[0x277CD9650];
  view = [(PNPSqueezeController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  v9 = [v5 _existingInteractionForWindowScene:windowScene];

  view2 = [(PNPSqueezeController *)self view];
  [PNPPreDeclare squeezeInteraction:v9 setMiniPaletteVisible:0 hoverLocation:view2 inView:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
}

- (void)loadSqueezeAnimationLayer
{
  loadSqueezeAnimationPackage = [(PNPSqueezeController *)self loadSqueezeAnimationPackage];
  rootLayer = [loadSqueezeAnimationPackage rootLayer];
  [(PNPSqueezeController *)self setPencilLayer:rootLayer];

  pencilLayer = [(PNPSqueezeController *)self pencilLayer];
  [pencilLayer setGeometryFlipped:1];
}

- (id)loadSqueezeAnimationPackage
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"welcomeSqueezePane-B532" withExtension:@"caar"];

  v4 = *MEMORY[0x277CDA7E8];
  v9 = 0;
  v5 = [MEMORY[0x277CD9F28] packageWithContentsOfURL:v3 type:v4 options:0 error:&v9];
  v6 = v9;
  if (v6)
  {
    v7 = os_log_create("com.apple.pencilpairingui", "");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&dword_25E1BC000, v7, OS_LOG_TYPE_DEFAULT, "Error getting squeeze animation package: %@", buf, 0xCu);
    }
  }

  return v5;
}

- (CGPoint)paletteHoverLocation
{
  x = self->_paletteHoverLocation.x;
  y = self->_paletteHoverLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end