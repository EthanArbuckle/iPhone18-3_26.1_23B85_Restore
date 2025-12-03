@interface PXPlacesMapInfoViewController
- (PXPlacesMapInfoViewController)init;
- (PXPlacesMapInfoViewController)initWithCoder:(id)coder;
- (PXPlacesMapInfoViewController)initWithMapModeController:(id)controller;
- (PXPlacesMapInfoViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)mapTypeChanged:(id)changed;
- (void)tapped3dButton:(id)button;
- (void)tappedDimView:(id)view;
- (void)tappedDone:(id)done;
- (void)viewDidLoad;
@end

@implementation PXPlacesMapInfoViewController

- (void)mapTypeChanged:(id)changed
{
  changedCopy = changed;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selectedSegmentIndex = [changedCopy selectedSegmentIndex];
    if (selectedSegmentIndex == 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = selectedSegmentIndex == 1;
    }

    mapModeController = [(PXPlacesMapInfoViewController *)self mapModeController];
    [mapModeController setMapStyle:v5];
  }

  presentingViewController = [(PXPlacesMapInfoViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)tapped3dButton:(id)button
{
  mapModeController = [(PXPlacesMapInfoViewController *)self mapModeController];
  togglePerspectiveIfPossible = [mapModeController togglePerspectiveIfPossible];

  if ((togglePerspectiveIfPossible & 1) == 0)
  {
    PXAssertGetLog();
  }

  presentingViewController = [(PXPlacesMapInfoViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)tappedDimView:(id)view
{
  if ([view state] == 3)
  {
    presentingViewController = [(PXPlacesMapInfoViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)tappedDone:(id)done
{
  presentingViewController = [(PXPlacesMapInfoViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)viewDidLoad
{
  v48[3] = *MEMORY[0x1E69E9840];
  v47.receiver = self;
  v47.super_class = PXPlacesMapInfoViewController;
  [(PXPlacesMapInfoViewController *)&v47 viewDidLoad];
  v3 = PXLocalizedStringFromTable(@"PXPlacesFullSizeViewTitle", @"PhotosUICore");
  [(PXPlacesMapInfoViewController *)self setTitle:v3];

  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_tappedDone_];
  navigationItem = [(PXPlacesMapInfoViewController *)self navigationItem];
  v46 = v4;
  [navigationItem setRightBarButtonItem:v4];

  v6 = objc_alloc(MEMORY[0x1E69DCF38]);
  v7 = PXLocalizedStringFromTable(@"PXPlacesMapTypeStandardButtonTitle", @"PhotosUICore");
  v48[0] = v7;
  v8 = PXLocalizedStringFromTable(@"PXPlacesMapTypeHybridButtonTitle", @"PhotosUICore");
  v48[1] = v8;
  v9 = PXLocalizedStringFromTable(@"PXPlacesMapTypeSatelliteButtonTitle", @"PhotosUICore");
  v48[2] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:3];
  v11 = [v6 initWithItems:v10];

  mapModeController = [(PXPlacesMapInfoViewController *)self mapModeController];
  mapStyle = [mapModeController mapStyle];
  if (mapStyle == 2)
  {
    v14 = 2;
  }

  else
  {
    v14 = mapStyle == 1;
  }

  [v11 setSelectedSegmentIndex:v14];

  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 addTarget:self action:sel_mapTypeChanged_ forControlEvents:4096];
  v15 = [MEMORY[0x1E69DC738] buttonWithType:1];
  v16 = PXLocalizedStringFromTable(@"PXPlaces3dMapButtonTitle", @"PhotosUICore");
  mapModeController2 = [(PXPlacesMapInfoViewController *)self mapModeController];
  supportsPerspectiveToggling = [mapModeController2 supportsPerspectiveToggling];

  if (supportsPerspectiveToggling)
  {
    mapModeController3 = [(PXPlacesMapInfoViewController *)self mapModeController];
    is3DPerspectiveActive = [mapModeController3 is3DPerspectiveActive];

    if (is3DPerspectiveActive)
    {
      v21 = PXLocalizedStringFromTable(@"PXPlaces2dMapButtonTitle", @"PhotosUICore");

      v16 = v21;
    }
  }

  else
  {
    [v15 setEnabled:0];
  }

  v45 = v16;
  [v15 setTitle:v16 forState:0];
  [v15 addTarget:self action:sel_tapped3dButton_ forControlEvents:64];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [v22 setBackgroundColor:blackColor];

  [v22 setAlpha:0.5];
  v24 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_tappedDimView_];
  [v22 addGestureRecognizer:v24];

  v25 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v25 setBackgroundColor:systemBackgroundColor];

  [v25 addSubview:v11];
  [v25 addSubview:v15];
  v27 = _NSDictionaryOfVariableBindings(&cfstr_Maptypecontrol.isa, v11, v15, 0);
  [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-[mapTypeControl]-[map3dControl]-|" options:0 metrics:0 views:v27];
  v28 = v11;
  v29 = v44 = v11;
  [v25 addConstraints:v29];

  v30 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-[mapTypeControl]-|" options:0 metrics:0 views:v27];
  [v25 addConstraints:v30];

  v31 = MEMORY[0x1E696ACD8];
  superview = [v28 superview];
  v33 = [v31 constraintWithItem:v15 attribute:9 relatedBy:0 toItem:superview attribute:9 multiplier:1.0 constant:0.0];
  [v25 addConstraint:v33];

  view = [(PXPlacesMapInfoViewController *)self view];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [view setBackgroundColor:clearColor];

  [view addSubview:v22];
  [view addSubview:v25];
  topAnchor = [v22 topAnchor];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v39 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v39 setActive:1];

  v40 = _NSDictionaryOfVariableBindings(&cfstr_DimviewButtonc.isa, v22, v25, 0);
  v41 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[dimView][buttonContainer]|" options:0 metrics:0 views:v40];
  [view addConstraints:v41];

  v42 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[dimView]|" options:0 metrics:0 views:v40];
  [view addConstraints:v42];

  v43 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[buttonContainer]|" options:0 metrics:0 views:v40];
  [view addConstraints:v43];
}

- (PXPlacesMapInfoViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlacesMapInfoViewController.m" lineNumber:80 description:{@"%s is not available as initializer", "-[PXPlacesMapInfoViewController initWithCoder:]"}];

  abort();
}

- (PXPlacesMapInfoViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlacesMapInfoViewController.m" lineNumber:76 description:{@"%s is not available as initializer", "-[PXPlacesMapInfoViewController initWithNibName:bundle:]"}];

  abort();
}

- (PXPlacesMapInfoViewController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlacesMapInfoViewController.m" lineNumber:72 description:{@"%s is not available as initializer", "-[PXPlacesMapInfoViewController init]"}];

  abort();
}

- (PXPlacesMapInfoViewController)initWithMapModeController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = PXPlacesMapInfoViewController;
  v6 = [(PXPlacesMapInfoViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapModeController, controller);
    [(PXPlacesMapInfoViewController *)v7 setModalPresentationStyle:5];
  }

  return v7;
}

@end