@interface PUParallaxLayerStackDebugPaletteViewController
- (PUParallaxLayerStackDebugPaletteViewController)init;
- (void)addSwitchableView:(id)view;
- (void)modeChanged:(id)changed;
- (void)viewDidLoad;
@end

@implementation PUParallaxLayerStackDebugPaletteViewController

- (void)modeChanged:(id)changed
{
  changedCopy = changed;
  v5 = [changedCopy selectedSegmentIndex] != 0;
  colorBGPaletteView = [(PUParallaxLayerStackDebugPaletteViewController *)self colorBGPaletteView];
  [colorBGPaletteView setHidden:v5];

  v7 = [changedCopy selectedSegmentIndex] != 1;
  colorWashSinglePaletteView = [(PUParallaxLayerStackDebugPaletteViewController *)self colorWashSinglePaletteView];
  [colorWashSinglePaletteView setHidden:v7];

  v9 = [changedCopy selectedSegmentIndex] != 2;
  colorWashDuotonePaletteView = [(PUParallaxLayerStackDebugPaletteViewController *)self colorWashDuotonePaletteView];
  [colorWashDuotonePaletteView setHidden:v9];

  v11 = [changedCopy selectedSegmentIndex] != 3;
  greenScreenMutedPaletteView = [(PUParallaxLayerStackDebugPaletteViewController *)self greenScreenMutedPaletteView];
  [greenScreenMutedPaletteView setHidden:v11];

  v13 = [changedCopy selectedSegmentIndex] != 4;
  greenScreenVibrantPaletteView = [(PUParallaxLayerStackDebugPaletteViewController *)self greenScreenVibrantPaletteView];
  [greenScreenVibrantPaletteView setHidden:v13];

  selectedSegmentIndex = [changedCopy selectedSegmentIndex];
  customPaletteView = [(PUParallaxLayerStackDebugPaletteViewController *)self customPaletteView];
  [customPaletteView setHidden:selectedSegmentIndex != 5];
}

- (void)viewDidLoad
{
  v50[2] = *MEMORY[0x1E69E9840];
  v49.receiver = self;
  v49.super_class = PUParallaxLayerStackDebugPaletteViewController;
  [(PUParallaxLayerStackDebugPaletteViewController *)&v49 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x1E69DCF38]) initWithItems:&unk_1F2B7D2E0];
  [(PUParallaxLayerStackDebugPaletteViewController *)self setSwitchControl:v3];

  switchControl = [(PUParallaxLayerStackDebugPaletteViewController *)self switchControl];
  [switchControl setSelectedSegmentIndex:0];

  switchControl2 = [(PUParallaxLayerStackDebugPaletteViewController *)self switchControl];
  [switchControl2 addTarget:self action:sel_modeChanged_ forControlEvents:4096];

  view = [(PUParallaxLayerStackDebugPaletteViewController *)self view];
  switchControl3 = [(PUParallaxLayerStackDebugPaletteViewController *)self switchControl];
  [view addSubview:switchControl3];

  switchControl4 = [(PUParallaxLayerStackDebugPaletteViewController *)self switchControl];
  [switchControl4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v45 = MEMORY[0x1E696ACD8];
  switchControl5 = [(PUParallaxLayerStackDebugPaletteViewController *)self switchControl];
  centerXAnchor = [switchControl5 centerXAnchor];
  view2 = [(PUParallaxLayerStackDebugPaletteViewController *)self view];
  centerXAnchor2 = [view2 centerXAnchor];
  v10 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v50[0] = v10;
  switchControl6 = [(PUParallaxLayerStackDebugPaletteViewController *)self switchControl];
  topAnchor = [switchControl6 topAnchor];
  view3 = [(PUParallaxLayerStackDebugPaletteViewController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
  v50[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
  [v45 activateConstraints:v17];

  v18 = [PUParallaxLayerStackDebugPaletteView alloc];
  colorBGPalette = [MEMORY[0x1E69BDE98] colorBGPalette];
  v20 = [(PUParallaxLayerStackDebugPaletteView *)v18 initWithColorPalette:colorBGPalette];
  [(PUParallaxLayerStackDebugPaletteViewController *)self setColorBGPaletteView:v20];

  colorBGPaletteView = [(PUParallaxLayerStackDebugPaletteViewController *)self colorBGPaletteView];
  [(PUParallaxLayerStackDebugPaletteViewController *)self addSwitchableView:colorBGPaletteView];

  v22 = [PUParallaxLayerStackDebugPaletteView alloc];
  colorWashSinglePalette = [MEMORY[0x1E69BDE98] colorWashSinglePalette];
  v24 = [(PUParallaxLayerStackDebugPaletteView *)v22 initWithColorPalette:colorWashSinglePalette];
  [(PUParallaxLayerStackDebugPaletteViewController *)self setColorWashSinglePaletteView:v24];

  colorWashSinglePaletteView = [(PUParallaxLayerStackDebugPaletteViewController *)self colorWashSinglePaletteView];
  [(PUParallaxLayerStackDebugPaletteViewController *)self addSwitchableView:colorWashSinglePaletteView];

  v26 = [PUParallaxLayerStackDebugPaletteView alloc];
  colorWashDuotonePalette = [MEMORY[0x1E69BDE98] colorWashDuotonePalette];
  v28 = [(PUParallaxLayerStackDebugPaletteView *)v26 initWithColorPalette:colorWashDuotonePalette];
  [(PUParallaxLayerStackDebugPaletteViewController *)self setColorWashDuotonePaletteView:v28];

  colorWashDuotonePaletteView = [(PUParallaxLayerStackDebugPaletteViewController *)self colorWashDuotonePaletteView];
  [(PUParallaxLayerStackDebugPaletteViewController *)self addSwitchableView:colorWashDuotonePaletteView];

  v30 = [PUParallaxLayerStackDebugPaletteView alloc];
  greenScreenMutedPalette = [MEMORY[0x1E69BDE98] greenScreenMutedPalette];
  v32 = [(PUParallaxLayerStackDebugPaletteView *)v30 initWithColorPalette:greenScreenMutedPalette];
  [(PUParallaxLayerStackDebugPaletteViewController *)self setGreenScreenMutedPaletteView:v32];

  greenScreenMutedPaletteView = [(PUParallaxLayerStackDebugPaletteViewController *)self greenScreenMutedPaletteView];
  [(PUParallaxLayerStackDebugPaletteViewController *)self addSwitchableView:greenScreenMutedPaletteView];

  v34 = [PUParallaxLayerStackDebugPaletteView alloc];
  greenScreenVibrantPalette = [MEMORY[0x1E69BDE98] greenScreenVibrantPalette];
  v36 = [(PUParallaxLayerStackDebugPaletteView *)v34 initWithColorPalette:greenScreenVibrantPalette];
  [(PUParallaxLayerStackDebugPaletteViewController *)self setGreenScreenVibrantPaletteView:v36];

  greenScreenVibrantPaletteView = [(PUParallaxLayerStackDebugPaletteViewController *)self greenScreenVibrantPaletteView];
  [(PUParallaxLayerStackDebugPaletteViewController *)self addSwitchableView:greenScreenVibrantPaletteView];

  v38 = [PUParallaxLayerStackDebugPaletteView alloc];
  customPalette = [MEMORY[0x1E69BDE98] customPalette];
  v40 = [(PUParallaxLayerStackDebugPaletteView *)v38 initWithColorPalette:customPalette];
  [(PUParallaxLayerStackDebugPaletteViewController *)self setCustomPaletteView:v40];

  customPaletteView = [(PUParallaxLayerStackDebugPaletteViewController *)self customPaletteView];
  [(PUParallaxLayerStackDebugPaletteViewController *)self addSwitchableView:customPaletteView];

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view4 = [(PUParallaxLayerStackDebugPaletteViewController *)self view];
  [view4 setBackgroundColor:systemBackgroundColor];

  switchControl7 = [(PUParallaxLayerStackDebugPaletteViewController *)self switchControl];
  [(PUParallaxLayerStackDebugPaletteViewController *)self modeChanged:switchControl7];
}

- (void)addSwitchableView:(id)view
{
  v26[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  view = [(PUParallaxLayerStackDebugPaletteViewController *)self view];
  [view addSubview:viewCopy];

  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = MEMORY[0x1E696ACD8];
  leadingAnchor = [viewCopy leadingAnchor];
  view2 = [(PUParallaxLayerStackDebugPaletteViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v26[0] = v21;
  trailingAnchor = [viewCopy trailingAnchor];
  view3 = [(PUParallaxLayerStackDebugPaletteViewController *)self view];
  safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v26[1] = v15;
  topAnchor = [viewCopy topAnchor];
  switchControl = [(PUParallaxLayerStackDebugPaletteViewController *)self switchControl];
  bottomAnchor = [switchControl bottomAnchor];
  v9 = [topAnchor constraintEqualToAnchor:bottomAnchor];
  v26[2] = v9;
  bottomAnchor2 = [viewCopy bottomAnchor];
  view4 = [(PUParallaxLayerStackDebugPaletteViewController *)self view];
  bottomAnchor3 = [view4 bottomAnchor];
  v13 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v26[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
  [v17 activateConstraints:v14];

  [viewCopy setHidden:1];
}

- (PUParallaxLayerStackDebugPaletteViewController)init
{
  v3.receiver = self;
  v3.super_class = PUParallaxLayerStackDebugPaletteViewController;
  return [(PUParallaxLayerStackDebugPaletteViewController *)&v3 initWithNibName:0 bundle:0];
}

@end