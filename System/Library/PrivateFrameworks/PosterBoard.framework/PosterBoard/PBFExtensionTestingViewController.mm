@interface PBFExtensionTestingViewController
- (PBFExtensionTestingViewController)init;
- (void)_variantSelectorValueChanged:(id)changed;
- (void)presentPage:(id)page;
- (void)viewDidLoad;
@end

@implementation PBFExtensionTestingViewController

- (PBFExtensionTestingViewController)init
{
  v14.receiver = self;
  v14.super_class = PBFExtensionTestingViewController;
  v2 = [(PBFExtensionTestingViewController *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(ExtensionListViewController);
    renderingController = v2->_renderingController;
    v2->_renderingController = v3;

    [(ExtensionListViewController *)v2->_renderingController setTitle:@"Rendering"];
    [(ExtensionListViewController *)v2->_renderingController setExtensionItemActivationStyle:0];
    v5 = objc_alloc_init(ExtensionListViewController);
    editingController = v2->_editingController;
    v2->_editingController = v5;

    [(ExtensionListViewController *)v2->_editingController setTitle:@"Editing"];
    [(ExtensionListViewController *)v2->_editingController setExtensionItemActivationStyle:1];
    v7 = objc_alloc_init(PBFGalleryViewController);
    galleryController = v2->_galleryController;
    v2->_galleryController = v7;

    [(PBFGalleryViewController *)v2->_galleryController setTitle:@"Gallery"];
    v9 = objc_alloc_init(PBFConfigViewController);
    configController = v2->_configController;
    v2->_configController = v9;

    [(PBFConfigViewController *)v2->_configController setTitle:@"Configurations"];
    v11 = objc_alloc_init(PBFClientTesterViewController);
    clientTesterController = v2->_clientTesterController;
    v2->_clientTesterController = v11;
  }

  return v2;
}

- (void)viewDidLoad
{
  v36[7] = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = PBFExtensionTestingViewController;
  [(PBFExtensionTestingViewController *)&v35 viewDidLoad];
  view = [(PBFExtensionTestingViewController *)self view];
  if (MEMORY[0x21CEF7340]("[PBFExtensionTestingViewController viewDidLoad]"))
  {
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [view setBackgroundColor:systemBackgroundColor];

    v5 = [objc_alloc(MEMORY[0x277D75A08]) initWithItems:&unk_282D0A270];
    variantSelector = self->_variantSelector;
    self->_variantSelector = v5;

    [(UISegmentedControl *)self->_variantSelector addTarget:self action:sel__variantSelectorValueChanged_ forControlEvents:4096];
    [(UISegmentedControl *)self->_variantSelector setSelectedSegmentIndex:0];
    [(UISegmentedControl *)self->_variantSelector setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = objc_alloc_init(MEMORY[0x277D75780]);
    barView = self->_barView;
    self->_barView = v7;

    [(UINavigationBar *)self->_barView setTranslucent:0];
    [(UINavigationBar *)self->_barView setTranslatesAutoresizingMaskIntoConstraints:0];
    [view addSubview:self->_variantSelector];
    [view addSubview:self->_barView];
    v25 = MEMORY[0x277CCAAD0];
    centerXAnchor = [(UINavigationBar *)self->_barView centerXAnchor];
    centerXAnchor2 = [view centerXAnchor];
    v32 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v36[0] = v32;
    widthAnchor = [(UINavigationBar *)self->_barView widthAnchor];
    widthAnchor2 = [view widthAnchor];
    v29 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v36[1] = v29;
    centerXAnchor3 = [(UISegmentedControl *)self->_variantSelector centerXAnchor];
    centerXAnchor4 = [view centerXAnchor];
    v26 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v36[2] = v26;
    leadingAnchor = [(UISegmentedControl *)self->_variantSelector leadingAnchor];
    leadingAnchor2 = [view leadingAnchor];
    v22 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:10.0];
    v36[3] = v22;
    trailingAnchor = [(UISegmentedControl *)self->_variantSelector trailingAnchor];
    trailingAnchor2 = [view trailingAnchor];
    v19 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-10.0];
    v36[4] = v19;
    safeAreaLayoutGuide = [view safeAreaLayoutGuide];
    bottomAnchor = [safeAreaLayoutGuide bottomAnchor];
    bottomAnchor2 = [(UISegmentedControl *)self->_variantSelector bottomAnchor];
    v11 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.0];
    v36[5] = v11;
    safeAreaLayoutGuide2 = [view safeAreaLayoutGuide];
    topAnchor = [safeAreaLayoutGuide2 topAnchor];
    topAnchor2 = [(UINavigationBar *)self->_barView topAnchor];
    v15 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];
    v36[6] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:7];
    [v25 activateConstraints:v16];

    [(PBFExtensionTestingViewController *)self presentPage:self->_renderingController];
  }

  else
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [view setBackgroundColor:clearColor];
  }
}

- (void)presentPage:(id)page
{
  v32[1] = *MEMORY[0x277D85DE8];
  pageCopy = page;
  if (self->_presentedViewController != pageCopy && MEMORY[0x21CEF7340]("[PBFExtensionTestingViewController presentPage:]"))
  {
    [(PBFExtensionTestingViewController *)self bs_removeChildViewController:self->_presentedViewController animated:1 transitionBlock:0];
    [(PBFExtensionTestingViewController *)self bs_addChildViewController:pageCopy animated:1 transitionBlock:0];
    objc_storeStrong(&self->_presentedViewController, page);
    navigationItem = [(UIViewController *)pageCopy navigationItem];
    v7 = navigationItem;
    if (navigationItem)
    {
      v8 = navigationItem;
    }

    else
    {
      v9 = objc_alloc(MEMORY[0x277D757A8]);
      title = [(UIViewController *)pageCopy title];
      v8 = [v9 initWithTitle:title];
    }

    v30 = v8;

    barView = self->_barView;
    v32[0] = v8;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    [(UINavigationBar *)barView setItems:v12];

    view = [(PBFExtensionTestingViewController *)self view];
    view2 = [(UIViewController *)self->_presentedViewController view];
    [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = MEMORY[0x277CCAAD0];
    topAnchor = [view2 topAnchor];
    bottomAnchor = [(UINavigationBar *)self->_barView bottomAnchor];
    v27 = [topAnchor constraintEqualToAnchor:bottomAnchor];
    v31[0] = v27;
    leftAnchor = [view2 leftAnchor];
    v23 = view;
    leftAnchor2 = [view leftAnchor];
    v15 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v31[1] = v15;
    bottomAnchor2 = [view2 bottomAnchor];
    topAnchor2 = [(UISegmentedControl *)self->_variantSelector topAnchor];
    v18 = [bottomAnchor2 constraintEqualToAnchor:topAnchor2];
    v31[2] = v18;
    rightAnchor = [view2 rightAnchor];
    rightAnchor2 = [view rightAnchor];
    v21 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v31[3] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
    [v24 activateConstraints:v22];
  }
}

- (void)_variantSelectorValueChanged:(id)changed
{
  selectedSegmentIndex = [changed selectedSegmentIndex];
  if (selectedSegmentIndex > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&self->super.super.super.isa + *off_2782C6DD0[selectedSegmentIndex]);
  }

  v6 = v5;
  [(PBFExtensionTestingViewController *)self presentPage:v5];
}

@end