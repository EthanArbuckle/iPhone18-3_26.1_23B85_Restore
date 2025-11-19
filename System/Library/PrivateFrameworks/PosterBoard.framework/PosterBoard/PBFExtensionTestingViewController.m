@interface PBFExtensionTestingViewController
- (PBFExtensionTestingViewController)init;
- (void)_variantSelectorValueChanged:(id)a3;
- (void)presentPage:(id)a3;
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
  v3 = [(PBFExtensionTestingViewController *)self view];
  if (MEMORY[0x21CEF7340]("[PBFExtensionTestingViewController viewDidLoad]"))
  {
    v4 = [MEMORY[0x277D75348] systemBackgroundColor];
    [v3 setBackgroundColor:v4];

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
    [v3 addSubview:self->_variantSelector];
    [v3 addSubview:self->_barView];
    v25 = MEMORY[0x277CCAAD0];
    v34 = [(UINavigationBar *)self->_barView centerXAnchor];
    v33 = [v3 centerXAnchor];
    v32 = [v34 constraintEqualToAnchor:v33];
    v36[0] = v32;
    v31 = [(UINavigationBar *)self->_barView widthAnchor];
    v30 = [v3 widthAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v36[1] = v29;
    v28 = [(UISegmentedControl *)self->_variantSelector centerXAnchor];
    v27 = [v3 centerXAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v36[2] = v26;
    v24 = [(UISegmentedControl *)self->_variantSelector leadingAnchor];
    v23 = [v3 leadingAnchor];
    v22 = [v24 constraintGreaterThanOrEqualToAnchor:v23 constant:10.0];
    v36[3] = v22;
    v21 = [(UISegmentedControl *)self->_variantSelector trailingAnchor];
    v20 = [v3 trailingAnchor];
    v19 = [v21 constraintLessThanOrEqualToAnchor:v20 constant:-10.0];
    v36[4] = v19;
    v18 = [v3 safeAreaLayoutGuide];
    v9 = [v18 bottomAnchor];
    v10 = [(UISegmentedControl *)self->_variantSelector bottomAnchor];
    v11 = [v9 constraintEqualToSystemSpacingBelowAnchor:v10 multiplier:1.0];
    v36[5] = v11;
    v12 = [v3 safeAreaLayoutGuide];
    v13 = [v12 topAnchor];
    v14 = [(UINavigationBar *)self->_barView topAnchor];
    v15 = [v13 constraintEqualToSystemSpacingBelowAnchor:v14 multiplier:1.0];
    v36[6] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:7];
    [v25 activateConstraints:v16];

    [(PBFExtensionTestingViewController *)self presentPage:self->_renderingController];
  }

  else
  {
    v17 = [MEMORY[0x277D75348] clearColor];
    [v3 setBackgroundColor:v17];
  }
}

- (void)presentPage:(id)a3
{
  v32[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_presentedViewController != v5 && MEMORY[0x21CEF7340]("[PBFExtensionTestingViewController presentPage:]"))
  {
    [(PBFExtensionTestingViewController *)self bs_removeChildViewController:self->_presentedViewController animated:1 transitionBlock:0];
    [(PBFExtensionTestingViewController *)self bs_addChildViewController:v5 animated:1 transitionBlock:0];
    objc_storeStrong(&self->_presentedViewController, a3);
    v6 = [(UIViewController *)v5 navigationItem];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = objc_alloc(MEMORY[0x277D757A8]);
      v10 = [(UIViewController *)v5 title];
      v8 = [v9 initWithTitle:v10];
    }

    v30 = v8;

    barView = self->_barView;
    v32[0] = v8;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    [(UINavigationBar *)barView setItems:v12];

    v13 = [(PBFExtensionTestingViewController *)self view];
    v14 = [(UIViewController *)self->_presentedViewController view];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = MEMORY[0x277CCAAD0];
    v29 = [v14 topAnchor];
    v28 = [(UINavigationBar *)self->_barView bottomAnchor];
    v27 = [v29 constraintEqualToAnchor:v28];
    v31[0] = v27;
    v26 = [v14 leftAnchor];
    v23 = v13;
    v25 = [v13 leftAnchor];
    v15 = [v26 constraintEqualToAnchor:v25];
    v31[1] = v15;
    v16 = [v14 bottomAnchor];
    v17 = [(UISegmentedControl *)self->_variantSelector topAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v31[2] = v18;
    v19 = [v14 rightAnchor];
    v20 = [v13 rightAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    v31[3] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
    [v24 activateConstraints:v22];
  }
}

- (void)_variantSelectorValueChanged:(id)a3
{
  v4 = [a3 selectedSegmentIndex];
  if (v4 > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&self->super.super.super.isa + *off_2782C6DD0[v4]);
  }

  v6 = v5;
  [(PBFExtensionTestingViewController *)self presentPage:v5];
}

@end