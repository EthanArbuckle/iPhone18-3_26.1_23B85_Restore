@interface PXPlacesMapViewController
- (PXPlacesMapViewController)init;
- (PXPlacesMapViewController)initWithCoder:(id)coder;
- (PXPlacesMapViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PXPlacesMapViewController

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PXPlacesMapViewController;
  [(PXPlacesMapViewController *)&v5 viewDidDisappear:disappear];
  mapController = [(PXPlacesMapViewController *)self mapController];
  [mapController mapContainerViewDidDisappear];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PXPlacesMapViewController;
  [(PXPlacesMapViewController *)&v5 viewWillDisappear:disappear];
  mapController = [(PXPlacesMapViewController *)self mapController];
  [mapController mapContainerViewWillDisappear];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PXPlacesMapViewController;
  [(PXPlacesMapViewController *)&v5 viewDidAppear:appear];
  mapController = [(PXPlacesMapViewController *)self mapController];
  [mapController mapContainerViewDidAppear];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PXPlacesMapViewController;
  [(PXPlacesMapViewController *)&v5 viewWillAppear:appear];
  mapController = [(PXPlacesMapViewController *)self mapController];
  [mapController mapContainerViewWillAppear];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = PXPlacesMapViewController;
  [(PXPlacesMapViewController *)&v2 viewDidLoad];
}

- (void)loadView
{
  nibName = [(PXPlacesMapViewController *)self nibName];

  if (nibName)
  {
    v10.receiver = self;
    v10.super_class = PXPlacesMapViewController;
    [(PXPlacesMapViewController *)&v10 loadView];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
    mapController = [(PXPlacesMapViewController *)self mapController];
    mapView = [mapController mapView];

    [mapView setTranslatesAutoresizingMaskIntoConstraints:0];
    [v9 addSubview:mapView];
    v6 = _NSDictionaryOfVariableBindings(&cfstr_Mapview.isa, mapView, 0);
    v7 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[mapView]|" options:0 metrics:0 views:v6];
    [v9 addConstraints:v7];

    v8 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[mapView]|" options:0 metrics:0 views:v6];
    [v9 addConstraints:v8];

    [(PXPlacesMapViewController *)self setView:v9];
  }
}

- (PXPlacesMapViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlacesMapViewController.m" lineNumber:38 description:{@"%s is not available as initializer", "-[PXPlacesMapViewController initWithCoder:]"}];

  abort();
}

- (PXPlacesMapViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlacesMapViewController.m" lineNumber:34 description:{@"%s is not available as initializer", "-[PXPlacesMapViewController initWithNibName:bundle:]"}];

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