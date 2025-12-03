@interface PXModelDeliveryProgressObjCViewController
- (void)_createProgressViewController;
- (void)clearErrorState;
- (void)loadView;
- (void)reportProgress:(double)progress stage:(unint64_t)stage;
- (void)setErrorState:(id)state;
- (void)setIsiPadConfiguration:(BOOL)configuration;
@end

@implementation PXModelDeliveryProgressObjCViewController

- (void)clearErrorState
{
  [(PXModelDeliveryProgressObjCViewController *)self setErrorToReport:0];
  mdpvc = [(PXModelDeliveryProgressObjCViewController *)self mdpvc];

  if (mdpvc)
  {
    mdpvc2 = [(PXModelDeliveryProgressObjCViewController *)self mdpvc];
    [mdpvc2 setErrorState:0];
  }
}

- (void)setErrorState:(id)state
{
  v14 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v5 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    mdpvc = [(PXModelDeliveryProgressObjCViewController *)self mdpvc];
    v10 = 138412546;
    v11 = stateCopy;
    v12 = 2112;
    v13 = mdpvc;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "PXModelDeliveryProgressObjCViewController setErrorState: %@ / mdpvc: %@", &v10, 0x16u);
  }

  [(PXModelDeliveryProgressObjCViewController *)self setErrorToReport:stateCopy];
  mdpvc2 = [(PXModelDeliveryProgressObjCViewController *)self mdpvc];

  if (mdpvc2)
  {
    mdpvc3 = [(PXModelDeliveryProgressObjCViewController *)self mdpvc];
    if (stateCopy)
    {
      code = [stateCopy code];
    }

    else
    {
      code = 0;
    }

    [mdpvc3 setErrorState:code];
  }
}

- (void)reportProgress:(double)progress stage:(unint64_t)stage
{
  [(PXModelDeliveryProgressObjCViewController *)self setProgress:?];
  [(PXModelDeliveryProgressObjCViewController *)self setStage:stage];
  mdpvc = [(PXModelDeliveryProgressObjCViewController *)self mdpvc];

  if (mdpvc)
  {
    mdpvc2 = [(PXModelDeliveryProgressObjCViewController *)self mdpvc];
    [mdpvc2 reportProgress:stage stage:progress];
  }
}

- (void)setIsiPadConfiguration:(BOOL)configuration
{
  if (self->_isiPadConfiguration != configuration)
  {
    self->_isiPadConfiguration = configuration;
    mdpvc = [(PXModelDeliveryProgressObjCViewController *)self mdpvc];

    if (mdpvc)
    {
      mdpvc2 = [(PXModelDeliveryProgressObjCViewController *)self mdpvc];
      [mdpvc2 removeFromParentViewController];

      mdpvc3 = [(PXModelDeliveryProgressObjCViewController *)self mdpvc];
      view = [mdpvc3 view];
      [view removeFromSuperview];

      [(PXModelDeliveryProgressObjCViewController *)self setMdpvc:0];

      [(PXModelDeliveryProgressObjCViewController *)self _createProgressViewController];
    }
  }
}

- (void)_createProgressViewController
{
  v26[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(_TtC12PhotosUICore37PXModelDeliveryProgressViewController);
  view = [(PXModelDeliveryProgressObjCViewController *)self view];
  [(PXModelDeliveryProgressViewController *)v3 setIsiPadConfiguration:[(PXModelDeliveryProgressObjCViewController *)self isiPadConfiguration]];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PXModelDeliveryProgressObjCViewController *)self addChildViewController:v3];
  view2 = [(PXModelDeliveryProgressViewController *)v3 view];
  [view addSubview:view2];

  leadingAnchor = [view leadingAnchor];
  view3 = [(PXModelDeliveryProgressViewController *)v3 view];
  leadingAnchor2 = [view3 leadingAnchor];
  v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v26[0] = v22;
  trailingAnchor = [view trailingAnchor];
  view4 = [(PXModelDeliveryProgressViewController *)v3 view];
  trailingAnchor2 = [view4 trailingAnchor];
  v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v26[1] = v18;
  topAnchor = [view topAnchor];
  view5 = [(PXModelDeliveryProgressViewController *)v3 view];
  topAnchor2 = [view5 topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v26[2] = v7;
  bottomAnchor = [view bottomAnchor];
  view6 = [(PXModelDeliveryProgressViewController *)v3 view];
  bottomAnchor2 = [view6 bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v26[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];

  [view addConstraints:v12];
  objc_storeStrong(&self->_mdpvc, v3);
  [(PXModelDeliveryProgressObjCViewController *)self progress];
  [(PXModelDeliveryProgressViewController *)v3 reportProgress:[(PXModelDeliveryProgressObjCViewController *)self stage] stage:v13];
  errorToReport = [(PXModelDeliveryProgressObjCViewController *)self errorToReport];

  if (errorToReport)
  {
    errorToReport2 = [(PXModelDeliveryProgressObjCViewController *)self errorToReport];
    -[PXModelDeliveryProgressViewController setErrorState:](v3, "setErrorState:", [errorToReport2 code]);
  }
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = PXModelDeliveryProgressObjCViewController;
  [(PXModelDeliveryProgressObjCViewController *)&v3 loadView];
  [(PXModelDeliveryProgressObjCViewController *)self _createProgressViewController];
}

@end