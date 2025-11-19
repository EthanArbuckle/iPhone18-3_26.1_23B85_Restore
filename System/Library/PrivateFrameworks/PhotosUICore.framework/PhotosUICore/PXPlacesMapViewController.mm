@interface PXPlacesMapViewController
- (PXPlacesMapViewController)init;
- (PXPlacesMapViewController)initWithCoder:(id)a3;
- (PXPlacesMapViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PXPlacesMapViewController

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PXPlacesMapViewController;
  [(PXPlacesMapViewController *)&v5 viewDidDisappear:a3];
  v4 = [(PXPlacesMapViewController *)self mapController];
  [v4 mapContainerViewDidDisappear];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PXPlacesMapViewController;
  [(PXPlacesMapViewController *)&v5 viewWillDisappear:a3];
  v4 = [(PXPlacesMapViewController *)self mapController];
  [v4 mapContainerViewWillDisappear];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PXPlacesMapViewController;
  [(PXPlacesMapViewController *)&v5 viewDidAppear:a3];
  v4 = [(PXPlacesMapViewController *)self mapController];
  [v4 mapContainerViewDidAppear];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PXPlacesMapViewController;
  [(PXPlacesMapViewController *)&v5 viewWillAppear:a3];
  v4 = [(PXPlacesMapViewController *)self mapController];
  [v4 mapContainerViewWillAppear];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = PXPlacesMapViewController;
  [(PXPlacesMapViewController *)&v2 viewDidLoad];
}

- (void)loadView
{
  v3 = [(PXPlacesMapViewController *)self nibName];

  if (v3)
  {
    v10.receiver = self;
    v10.super_class = PXPlacesMapViewController;
    [(PXPlacesMapViewController *)&v10 loadView];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v4 = [(PXPlacesMapViewController *)self mapController];
    v5 = [v4 mapView];

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v9 addSubview:v5];
    v6 = _NSDictionaryOfVariableBindings(&cfstr_Mapview.isa, v5, 0);
    v7 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[mapView]|" options:0 metrics:0 views:v6];
    [v9 addConstraints:v7];

    v8 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[mapView]|" options:0 metrics:0 views:v6];
    [v9 addConstraints:v8];

    [(PXPlacesMapViewController *)self setView:v9];
  }
}

- (PXPlacesMapViewController)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXPlacesMapViewController.m" lineNumber:38 description:{@"%s is not available as initializer", "-[PXPlacesMapViewController initWithCoder:]"}];

  abort();
}

- (PXPlacesMapViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PXPlacesMapViewController.m" lineNumber:34 description:{@"%s is not available as initializer", "-[PXPlacesMapViewController initWithNibName:bundle:]"}];

  abort();
}

- (PXPlacesMapViewController)init
{
  v7.receiver = self;
  v7.super_class = PXPlacesMapViewController;
  v2 = [(PXPlacesMapViewController *)&v7 initWithNibName:0 bundle:0];
  v3 = v2;
  if (v2)
  {
    [(PXPlacesMapViewController *)v2 px_enableExtendedTraitCollection];
    v4 = objc_alloc_init(PXPlacesMapController);
    mapController = v3->_mapController;
    v3->_mapController = v4;
  }

  return v3;
}

@end