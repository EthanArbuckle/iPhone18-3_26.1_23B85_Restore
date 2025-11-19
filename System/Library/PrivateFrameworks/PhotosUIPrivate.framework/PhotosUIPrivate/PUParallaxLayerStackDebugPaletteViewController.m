@interface PUParallaxLayerStackDebugPaletteViewController
- (PUParallaxLayerStackDebugPaletteViewController)init;
- (void)addSwitchableView:(id)a3;
- (void)modeChanged:(id)a3;
- (void)viewDidLoad;
@end

@implementation PUParallaxLayerStackDebugPaletteViewController

- (void)modeChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 selectedSegmentIndex] != 0;
  v6 = [(PUParallaxLayerStackDebugPaletteViewController *)self colorBGPaletteView];
  [v6 setHidden:v5];

  v7 = [v4 selectedSegmentIndex] != 1;
  v8 = [(PUParallaxLayerStackDebugPaletteViewController *)self colorWashSinglePaletteView];
  [v8 setHidden:v7];

  v9 = [v4 selectedSegmentIndex] != 2;
  v10 = [(PUParallaxLayerStackDebugPaletteViewController *)self colorWashDuotonePaletteView];
  [v10 setHidden:v9];

  v11 = [v4 selectedSegmentIndex] != 3;
  v12 = [(PUParallaxLayerStackDebugPaletteViewController *)self greenScreenMutedPaletteView];
  [v12 setHidden:v11];

  v13 = [v4 selectedSegmentIndex] != 4;
  v14 = [(PUParallaxLayerStackDebugPaletteViewController *)self greenScreenVibrantPaletteView];
  [v14 setHidden:v13];

  v15 = [v4 selectedSegmentIndex];
  v16 = [(PUParallaxLayerStackDebugPaletteViewController *)self customPaletteView];
  [v16 setHidden:v15 != 5];
}

- (void)viewDidLoad
{
  v50[2] = *MEMORY[0x1E69E9840];
  v49.receiver = self;
  v49.super_class = PUParallaxLayerStackDebugPaletteViewController;
  [(PUParallaxLayerStackDebugPaletteViewController *)&v49 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x1E69DCF38]) initWithItems:&unk_1F2B7D2E0];
  [(PUParallaxLayerStackDebugPaletteViewController *)self setSwitchControl:v3];

  v4 = [(PUParallaxLayerStackDebugPaletteViewController *)self switchControl];
  [v4 setSelectedSegmentIndex:0];

  v5 = [(PUParallaxLayerStackDebugPaletteViewController *)self switchControl];
  [v5 addTarget:self action:sel_modeChanged_ forControlEvents:4096];

  v6 = [(PUParallaxLayerStackDebugPaletteViewController *)self view];
  v7 = [(PUParallaxLayerStackDebugPaletteViewController *)self switchControl];
  [v6 addSubview:v7];

  v8 = [(PUParallaxLayerStackDebugPaletteViewController *)self switchControl];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v45 = MEMORY[0x1E696ACD8];
  v48 = [(PUParallaxLayerStackDebugPaletteViewController *)self switchControl];
  v46 = [v48 centerXAnchor];
  v47 = [(PUParallaxLayerStackDebugPaletteViewController *)self view];
  v9 = [v47 centerXAnchor];
  v10 = [v46 constraintEqualToAnchor:v9];
  v50[0] = v10;
  v11 = [(PUParallaxLayerStackDebugPaletteViewController *)self switchControl];
  v12 = [v11 topAnchor];
  v13 = [(PUParallaxLayerStackDebugPaletteViewController *)self view];
  v14 = [v13 safeAreaLayoutGuide];
  v15 = [v14 topAnchor];
  v16 = [v12 constraintEqualToAnchor:v15 constant:20.0];
  v50[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
  [v45 activateConstraints:v17];

  v18 = [PUParallaxLayerStackDebugPaletteView alloc];
  v19 = [MEMORY[0x1E69BDE98] colorBGPalette];
  v20 = [(PUParallaxLayerStackDebugPaletteView *)v18 initWithColorPalette:v19];
  [(PUParallaxLayerStackDebugPaletteViewController *)self setColorBGPaletteView:v20];

  v21 = [(PUParallaxLayerStackDebugPaletteViewController *)self colorBGPaletteView];
  [(PUParallaxLayerStackDebugPaletteViewController *)self addSwitchableView:v21];

  v22 = [PUParallaxLayerStackDebugPaletteView alloc];
  v23 = [MEMORY[0x1E69BDE98] colorWashSinglePalette];
  v24 = [(PUParallaxLayerStackDebugPaletteView *)v22 initWithColorPalette:v23];
  [(PUParallaxLayerStackDebugPaletteViewController *)self setColorWashSinglePaletteView:v24];

  v25 = [(PUParallaxLayerStackDebugPaletteViewController *)self colorWashSinglePaletteView];
  [(PUParallaxLayerStackDebugPaletteViewController *)self addSwitchableView:v25];

  v26 = [PUParallaxLayerStackDebugPaletteView alloc];
  v27 = [MEMORY[0x1E69BDE98] colorWashDuotonePalette];
  v28 = [(PUParallaxLayerStackDebugPaletteView *)v26 initWithColorPalette:v27];
  [(PUParallaxLayerStackDebugPaletteViewController *)self setColorWashDuotonePaletteView:v28];

  v29 = [(PUParallaxLayerStackDebugPaletteViewController *)self colorWashDuotonePaletteView];
  [(PUParallaxLayerStackDebugPaletteViewController *)self addSwitchableView:v29];

  v30 = [PUParallaxLayerStackDebugPaletteView alloc];
  v31 = [MEMORY[0x1E69BDE98] greenScreenMutedPalette];
  v32 = [(PUParallaxLayerStackDebugPaletteView *)v30 initWithColorPalette:v31];
  [(PUParallaxLayerStackDebugPaletteViewController *)self setGreenScreenMutedPaletteView:v32];

  v33 = [(PUParallaxLayerStackDebugPaletteViewController *)self greenScreenMutedPaletteView];
  [(PUParallaxLayerStackDebugPaletteViewController *)self addSwitchableView:v33];

  v34 = [PUParallaxLayerStackDebugPaletteView alloc];
  v35 = [MEMORY[0x1E69BDE98] greenScreenVibrantPalette];
  v36 = [(PUParallaxLayerStackDebugPaletteView *)v34 initWithColorPalette:v35];
  [(PUParallaxLayerStackDebugPaletteViewController *)self setGreenScreenVibrantPaletteView:v36];

  v37 = [(PUParallaxLayerStackDebugPaletteViewController *)self greenScreenVibrantPaletteView];
  [(PUParallaxLayerStackDebugPaletteViewController *)self addSwitchableView:v37];

  v38 = [PUParallaxLayerStackDebugPaletteView alloc];
  v39 = [MEMORY[0x1E69BDE98] customPalette];
  v40 = [(PUParallaxLayerStackDebugPaletteView *)v38 initWithColorPalette:v39];
  [(PUParallaxLayerStackDebugPaletteViewController *)self setCustomPaletteView:v40];

  v41 = [(PUParallaxLayerStackDebugPaletteViewController *)self customPaletteView];
  [(PUParallaxLayerStackDebugPaletteViewController *)self addSwitchableView:v41];

  v42 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v43 = [(PUParallaxLayerStackDebugPaletteViewController *)self view];
  [v43 setBackgroundColor:v42];

  v44 = [(PUParallaxLayerStackDebugPaletteViewController *)self switchControl];
  [(PUParallaxLayerStackDebugPaletteViewController *)self modeChanged:v44];
}

- (void)addSwitchableView:(id)a3
{
  v26[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUParallaxLayerStackDebugPaletteViewController *)self view];
  [v5 addSubview:v4];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = MEMORY[0x1E696ACD8];
  v24 = [v4 leadingAnchor];
  v25 = [(PUParallaxLayerStackDebugPaletteViewController *)self view];
  v23 = [v25 safeAreaLayoutGuide];
  v22 = [v23 leadingAnchor];
  v21 = [v24 constraintEqualToAnchor:v22];
  v26[0] = v21;
  v19 = [v4 trailingAnchor];
  v20 = [(PUParallaxLayerStackDebugPaletteViewController *)self view];
  v18 = [v20 safeAreaLayoutGuide];
  v16 = [v18 trailingAnchor];
  v15 = [v19 constraintEqualToAnchor:v16];
  v26[1] = v15;
  v6 = [v4 topAnchor];
  v7 = [(PUParallaxLayerStackDebugPaletteViewController *)self switchControl];
  v8 = [v7 bottomAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  v26[2] = v9;
  v10 = [v4 bottomAnchor];
  v11 = [(PUParallaxLayerStackDebugPaletteViewController *)self view];
  v12 = [v11 bottomAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  v26[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
  [v17 activateConstraints:v14];

  [v4 setHidden:1];
}

- (PUParallaxLayerStackDebugPaletteViewController)init
{
  v3.receiver = self;
  v3.super_class = PUParallaxLayerStackDebugPaletteViewController;
  return [(PUParallaxLayerStackDebugPaletteViewController *)&v3 initWithNibName:0 bundle:0];
}

@end