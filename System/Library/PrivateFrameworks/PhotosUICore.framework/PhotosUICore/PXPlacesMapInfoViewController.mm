@interface PXPlacesMapInfoViewController
- (PXPlacesMapInfoViewController)init;
- (PXPlacesMapInfoViewController)initWithCoder:(id)a3;
- (PXPlacesMapInfoViewController)initWithMapModeController:(id)a3;
- (PXPlacesMapInfoViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)mapTypeChanged:(id)a3;
- (void)tapped3dButton:(id)a3;
- (void)tappedDimView:(id)a3;
- (void)tappedDone:(id)a3;
- (void)viewDidLoad;
@end

@implementation PXPlacesMapInfoViewController

- (void)mapTypeChanged:(id)a3
{
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v8 selectedSegmentIndex];
    if (v4 == 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = v4 == 1;
    }

    v6 = [(PXPlacesMapInfoViewController *)self mapModeController];
    [v6 setMapStyle:v5];
  }

  v7 = [(PXPlacesMapInfoViewController *)self presentingViewController];
  [v7 dismissViewControllerAnimated:1 completion:0];
}

- (void)tapped3dButton:(id)a3
{
  v4 = [(PXPlacesMapInfoViewController *)self mapModeController];
  v5 = [v4 togglePerspectiveIfPossible];

  if ((v5 & 1) == 0)
  {
    PXAssertGetLog();
  }

  v6 = [(PXPlacesMapInfoViewController *)self presentingViewController];
  [v6 dismissViewControllerAnimated:1 completion:0];
}

- (void)tappedDimView:(id)a3
{
  if ([a3 state] == 3)
  {
    v4 = [(PXPlacesMapInfoViewController *)self presentingViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)tappedDone:(id)a3
{
  v3 = [(PXPlacesMapInfoViewController *)self presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
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
  v5 = [(PXPlacesMapInfoViewController *)self navigationItem];
  v46 = v4;
  [v5 setRightBarButtonItem:v4];

  v6 = objc_alloc(MEMORY[0x1E69DCF38]);
  v7 = PXLocalizedStringFromTable(@"PXPlacesMapTypeStandardButtonTitle", @"PhotosUICore");
  v48[0] = v7;
  v8 = PXLocalizedStringFromTable(@"PXPlacesMapTypeHybridButtonTitle", @"PhotosUICore");
  v48[1] = v8;
  v9 = PXLocalizedStringFromTable(@"PXPlacesMapTypeSatelliteButtonTitle", @"PhotosUICore");
  v48[2] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:3];
  v11 = [v6 initWithItems:v10];

  v12 = [(PXPlacesMapInfoViewController *)self mapModeController];
  v13 = [v12 mapStyle];
  if (v13 == 2)
  {
    v14 = 2;
  }

  else
  {
    v14 = v13 == 1;
  }

  [v11 setSelectedSegmentIndex:v14];

  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 addTarget:self action:sel_mapTypeChanged_ forControlEvents:4096];
  v15 = [MEMORY[0x1E69DC738] buttonWithType:1];
  v16 = PXLocalizedStringFromTable(@"PXPlaces3dMapButtonTitle", @"PhotosUICore");
  v17 = [(PXPlacesMapInfoViewController *)self mapModeController];
  v18 = [v17 supportsPerspectiveToggling];

  if (v18)
  {
    v19 = [(PXPlacesMapInfoViewController *)self mapModeController];
    v20 = [v19 is3DPerspectiveActive];

    if (v20)
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
  v23 = [MEMORY[0x1E69DC888] blackColor];
  [v22 setBackgroundColor:v23];

  [v22 setAlpha:0.5];
  v24 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_tappedDimView_];
  [v22 addGestureRecognizer:v24];

  v25 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v25 setBackgroundColor:v26];

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
  v32 = [v28 superview];
  v33 = [v31 constraintWithItem:v15 attribute:9 relatedBy:0 toItem:v32 attribute:9 multiplier:1.0 constant:0.0];
  [v25 addConstraint:v33];

  v34 = [(PXPlacesMapInfoViewController *)self view];
  v35 = [MEMORY[0x1E69DC888] clearColor];
  [v34 setBackgroundColor:v35];

  [v34 addSubview:v22];
  [v34 addSubview:v25];
  v36 = [v22 topAnchor];
  v37 = [v34 safeAreaLayoutGuide];
  v38 = [v37 topAnchor];
  v39 = [v36 constraintEqualToAnchor:v38];
  [v39 setActive:1];

  v40 = _NSDictionaryOfVariableBindings(&cfstr_DimviewButtonc.isa, v22, v25, 0);
  v41 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[dimView][buttonContainer]|" options:0 metrics:0 views:v40];
  [v34 addConstraints:v41];

  v42 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[dimView]|" options:0 metrics:0 views:v40];
  [v34 addConstraints:v42];

  v43 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[buttonContainer]|" options:0 metrics:0 views:v40];
  [v34 addConstraints:v43];
}

- (PXPlacesMapInfoViewController)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXPlacesMapInfoViewController.m" lineNumber:80 description:{@"%s is not available as initializer", "-[PXPlacesMapInfoViewController initWithCoder:]"}];

  abort();
}

- (PXPlacesMapInfoViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PXPlacesMapInfoViewController.m" lineNumber:76 description:{@"%s is not available as initializer", "-[PXPlacesMapInfoViewController initWithNibName:bundle:]"}];

  abort();
}

- (PXPlacesMapInfoViewController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPlacesMapInfoViewController.m" lineNumber:72 description:{@"%s is not available as initializer", "-[PXPlacesMapInfoViewController init]"}];

  abort();
}

- (PXPlacesMapInfoViewController)initWithMapModeController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXPlacesMapInfoViewController;
  v6 = [(PXPlacesMapInfoViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapModeController, a3);
    [(PXPlacesMapInfoViewController *)v7 setModalPresentationStyle:5];
  }

  return v7;
}

@end