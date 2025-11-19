@interface PNPSqueezeController
+ (id)_controllerWithType:(int64_t)a3 buttonType:(int64_t)a4 deviceType:(int64_t)a5 delegate:(id)a6;
- (CGPoint)paletteHoverLocation;
- (id)loadSqueezeAnimationPackage;
- (void)_squeezePaletteVisibilityDidChange:(id)a3;
- (void)dealloc;
- (void)loadSqueezeAnimationLayer;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PNPSqueezeController

+ (id)_controllerWithType:(int64_t)a3 buttonType:(int64_t)a4 deviceType:(int64_t)a5 delegate:(id)a6
{
  v9 = a6;
  v10 = [PNPSqueezeController alloc];
  v11 = PencilPairingUIBundle();
  v12 = [v11 localizedStringForKey:@"SQUEEZE_TITLE" value:&stru_286FDFDB8 table:@"PencilPairingSqueeze-B532"];
  v13 = PencilPairingUIBundle();
  v14 = [v13 localizedStringForKey:@"SQUEEZE_DESCRIPTION" value:&stru_286FDFDB8 table:@"PencilPairingSqueeze-B532"];
  v15 = [(PNPWelcomeController *)v10 initWithTitle:v12 detailText:v14 icon:0];

  [(PNPWelcomeController *)v15 setControllerType:a3 buttonType:a4 deviceType:a5 delegate:v9];

  return v15;
}

- (void)dealloc
{
  v3 = [(PNPSqueezeController *)self toolPicker];
  [v3 removeObserver:self];

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
  v4 = [(PNPSqueezeController *)self view];
  [v4 frame];
  v5 = [v3 initWithFrame:?];

  [v5 setAutoresizingMask:18];
  [v5 setDrawingPolicy:2];
  v6 = [(PNPSqueezeController *)self view];
  [v6 addSubview:v5];

  [(PNPSqueezeController *)self setCanvasView:v5];
  v7 = [(PNPSqueezeController *)self canvasView];
  [v7 setHidden:1];

  v8 = [MEMORY[0x277D75348] clearColor];
  v9 = [(PNPSqueezeController *)self canvasView];
  [v9 setBackgroundColor:v8];

  v10 = objc_alloc_init(MEMORY[0x277CD96A0]);
  [(PNPSqueezeController *)self setToolPicker:v10];

  v11 = [(PNPSqueezeController *)self toolPicker];
  [v11 setStateAutosaveName:0];

  v12 = [(PNPSqueezeController *)self toolPicker];
  v13 = [(PNPSqueezeController *)self canvasView];
  [v12 addObserver:v13];

  [(PNPSqueezeController *)self loadSqueezeAnimationLayer];
  v14 = [(PNPSqueezeController *)self pencilLayer];
  [v14 setHidden:1];

  v15 = [(PNPSqueezeController *)self view];
  v16 = [v15 layer];
  v17 = [(PNPSqueezeController *)self pencilLayer];
  [v16 addSublayer:v17];

  v18 = [MEMORY[0x277CCAB98] defaultCenter];
  [v18 addObserver:self selector:sel__squeezePaletteVisibilityDidChange_ name:*MEMORY[0x277CD9708] object:0];
}

- (void)_squeezePaletteVisibilityDidChange:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CD9650];
  v6 = [(PNPSqueezeController *)self view];
  v7 = [v6 window];
  v8 = [v7 windowScene];
  v9 = [v5 _existingInteractionForWindowScene:v8];

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

- (void)viewWillAppear:(BOOL)a3
{
  v14.receiver = self;
  v14.super_class = PNPSqueezeController;
  [(PNPSqueezeController *)&v14 viewWillAppear:a3];
  v4 = objc_alloc_init(MEMORY[0x277CD95F8]);
  v5 = [(PNPSqueezeController *)self canvasView];
  [v5 setDrawing:v4];

  v6 = [(PNPSqueezeController *)self view];
  v7 = [(PNPSqueezeController *)self pencilLayer];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [v6 bounds];
  v9 = v8;
  v11 = v10;
  [v7 setAnchorPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  CGAffineTransformMakeScale(&v13, 0.5, 0.5);
  v12 = v13;
  [v7 setAffineTransform:&v12];
  [v7 setPosition:{v9 * 0.5, v11 * 0.5}];
  [v7 setHidden:0];
  [MEMORY[0x277CD9FF0] commit];
}

- (void)viewDidAppear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = PNPSqueezeController;
  [(OBBaseWelcomeController *)&v12 viewDidAppear:a3];
  v4 = [(PNPSqueezeController *)self canvasView];
  [v4 setHidden:0];

  v5 = [(PNPSqueezeController *)self canvasView];
  [v5 becomeFirstResponder];

  v6 = [(PNPSqueezeController *)self canvasView];
  v7 = [v6 pencilKitResponderState];
  [v7 setToolPickerVisibility:2];

  v8 = [(PNPSqueezeController *)self toolPicker];
  v9 = [(PNPSqueezeController *)self canvasView];
  v10 = [v9 pencilKitResponderState];
  [v10 setActiveToolPicker:v8];

  v11 = [(PNPSqueezeController *)self toolPicker];
  [v11 _disableTapInteractionWhenNotVisible];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = PNPSqueezeController;
  [(OBBaseWelcomeController *)&v11 viewWillDisappear:a3];
  v4 = [(PNPSqueezeController *)self canvasView];
  [v4 resignFirstResponder];

  [(PNPSqueezeController *)self setPencilLayerHiddenByInteraction:0];
  v5 = MEMORY[0x277CD9650];
  v6 = [(PNPSqueezeController *)self view];
  v7 = [v6 window];
  v8 = [v7 windowScene];
  v9 = [v5 _existingInteractionForWindowScene:v8];

  v10 = [(PNPSqueezeController *)self view];
  [PNPPreDeclare squeezeInteraction:v9 setMiniPaletteVisible:0 hoverLocation:v10 inView:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
}

- (void)loadSqueezeAnimationLayer
{
  v5 = [(PNPSqueezeController *)self loadSqueezeAnimationPackage];
  v3 = [v5 rootLayer];
  [(PNPSqueezeController *)self setPencilLayer:v3];

  v4 = [(PNPSqueezeController *)self pencilLayer];
  [v4 setGeometryFlipped:1];
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