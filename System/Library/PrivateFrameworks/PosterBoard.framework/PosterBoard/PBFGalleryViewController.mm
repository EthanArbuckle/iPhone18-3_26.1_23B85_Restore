@interface PBFGalleryViewController
- (PREditingSceneViewControllerTopButtonLayout)topButtonLayoutForEditingSceneViewController:(SEL)controller;
- (void)_fetchNewGalleryFromProactive:(unint64_t)proactive;
- (void)_reload;
- (void)_selectEditingEnvironment;
- (void)_selectPreviewingEnvironment;
- (void)_selectRenderingEnvironment;
- (void)_setupDataProvider;
- (void)dealloc;
- (void)editingSceneViewController:(id)controller userDidDismissWithAction:(int64_t)action updatedConfiguration:(id)configuration updatedConfiguredProperties:(id)properties completion:(id)completion;
- (void)galleryViewController:(id)controller didSelectPreview:(id)preview fromPreviewView:(id)view;
- (void)posterExtensionDataStore:(id)store didUpdateGalleryConfiguration:(id)configuration;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PBFGalleryViewController

- (void)dealloc
{
  [(BSInvalidatable *)self->_inUseAssertion invalidate];
  inUseAssertion = self->_inUseAssertion;
  self->_inUseAssertion = 0;

  v4.receiver = self;
  v4.super_class = PBFGalleryViewController;
  [(PBFGalleryViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v47[3] = *MEMORY[0x277D85DE8];
  v45.receiver = self;
  v45.super_class = PBFGalleryViewController;
  [(PBFGalleryViewController *)&v45 viewDidLoad];
  v3 = +[PBFPosterExtensionDataStoreXPCServiceGlue sharedInstance];
  glue = self->_glue;
  self->_glue = v3;

  dataStore = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self->_glue dataStore];
  [dataStore addObserver:self];

  [(PBFGalleryViewController *)self _setupDataProvider];
  previewViewController = self->_previewViewController;
  if (!previewViewController)
  {
    v7 = [[PBFPosterGalleryPreviewViewController alloc] initWithNibName:0 bundle:0];
    v8 = self->_previewViewController;
    self->_previewViewController = v7;

    [(PBFPosterGalleryPreviewViewController *)self->_previewViewController setDelegate:self];
    [(PBFPosterGalleryPreviewViewController *)self->_previewViewController setEditingSceneDelegate:self];
    previewViewController = self->_previewViewController;
  }

  [(PBFPosterGalleryPreviewViewController *)previewViewController setDataProvider:self->_dataProvider];
  [(PBFGalleryViewController *)self bs_addChildViewController:self->_previewViewController];
  objc_initWeak(&location, self);
  v9 = MEMORY[0x277D750C8];
  v10 = [MEMORY[0x277D755B8] systemImageNamed:@"livephoto"];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __39__PBFGalleryViewController_viewDidLoad__block_invoke;
  v42[3] = &unk_2782C8E88;
  objc_copyWeak(&v43, &location);
  v11 = [v9 actionWithTitle:@"Rendering" image:v10 identifier:@"Rendering" handler:v42];
  renderingAction = self->_renderingAction;
  self->_renderingAction = v11;

  v13 = MEMORY[0x277D750C8];
  v14 = [MEMORY[0x277D755B8] systemImageNamed:@"camera"];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __39__PBFGalleryViewController_viewDidLoad__block_invoke_2;
  v40[3] = &unk_2782C8E88;
  objc_copyWeak(&v41, &location);
  v15 = [v13 actionWithTitle:@"Previewing" image:v14 identifier:@"Previewing" handler:v40];
  previewingAction = self->_previewingAction;
  self->_previewingAction = v15;

  v17 = MEMORY[0x277D750C8];
  v18 = [MEMORY[0x277D755B8] systemImageNamed:@"square.and.pencil"];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __39__PBFGalleryViewController_viewDidLoad__block_invoke_3;
  v38[3] = &unk_2782C8E88;
  objc_copyWeak(&v39, &location);
  v19 = [v17 actionWithTitle:@"Editing" image:v18 identifier:@"Editing" handler:v38];
  editingAction = self->_editingAction;
  self->_editingAction = v19;

  v21 = MEMORY[0x277D75710];
  v22 = self->_previewingAction;
  v47[0] = self->_renderingAction;
  v47[1] = v22;
  v47[2] = self->_editingAction;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:3];
  v24 = [v21 menuWithTitle:@"Environment" children:v23];

  v25 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:@"Environment" menu:v24];
  environmentItem = self->_environmentItem;
  self->_environmentItem = v25;

  navigationItem = [(PBFGalleryViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:self->_environmentItem];

  v28 = MEMORY[0x277D75710];
  v29 = MEMORY[0x277D750C8];
  v30 = [MEMORY[0x277D755B8] systemImageNamed:@"flame.fill"];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __39__PBFGalleryViewController_viewDidLoad__block_invoke_4;
  v36[3] = &unk_2782C8E88;
  objc_copyWeak(&v37, &location);
  v31 = [v29 actionWithTitle:@"Reload from Proactive" image:v30 identifier:@"ReloadFromProactive" handler:v36];
  v46 = v31;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
  v33 = [v28 menuWithTitle:@"Reload" children:v32];

  v34 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:@"Reload" menu:v33];
  navigationItem2 = [(PBFGalleryViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v34];

  [(PBFGalleryViewController *)self _selectEditingEnvironment];
  objc_destroyWeak(&v37);

  objc_destroyWeak(&v39);
  objc_destroyWeak(&v41);
  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);
}

void __39__PBFGalleryViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _selectRenderingEnvironment];
}

void __39__PBFGalleryViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _selectPreviewingEnvironment];
}

void __39__PBFGalleryViewController_viewDidLoad__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _selectEditingEnvironment];
}

void __39__PBFGalleryViewController_viewDidLoad__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadGalleryUsingProactive:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = PBFGalleryViewController;
  [(PBFGalleryViewController *)&v3 viewWillAppear:appear];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PBFGalleryViewController;
  [(PBFGalleryViewController *)&v5 viewDidDisappear:disappear];
  [(BSInvalidatable *)self->_inUseAssertion invalidate];
  inUseAssertion = self->_inUseAssertion;
  self->_inUseAssertion = 0;
}

- (void)posterExtensionDataStore:(id)store didUpdateGalleryConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__PBFGalleryViewController_posterExtensionDataStore_didUpdateGalleryConfiguration___block_invoke;
  v7[3] = &unk_2782C58B0;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

- (void)galleryViewController:(id)controller didSelectPreview:(id)preview fromPreviewView:(id)view
{
  previewCopy = preview;
  viewCopy = view;
  if ([(UIAction *)self->_renderingAction state])
  {
    if ([(UIAction *)self->_previewingAction state])
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  [(PBFPosterGalleryPreviewViewController *)self->_previewViewController presentPreview:previewCopy withMode:v8 fromView:viewCopy];
}

- (PREditingSceneViewControllerTopButtonLayout)topButtonLayoutForEditingSceneViewController:(SEL)controller
{
  view = [(PBFGalleryViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  _FBSScene = [windowScene _FBSScene];
  settings = [_FBSScene settings];

  [settings prui_leadingTopButtonFrame];
  retstr->leadingTopButtonFrame.origin.x = v9;
  retstr->leadingTopButtonFrame.origin.y = v10;
  retstr->leadingTopButtonFrame.size.width = v11;
  retstr->leadingTopButtonFrame.size.height = v12;
  [settings prui_trailingTopButtonFrame];
  retstr->trailingTopButtonFrame.origin.x = v13;
  retstr->trailingTopButtonFrame.origin.y = v14;
  retstr->trailingTopButtonFrame.size.width = v15;
  retstr->trailingTopButtonFrame.size.height = v16;

  return result;
}

- (void)editingSceneViewController:(id)controller userDidDismissWithAction:(int64_t)action updatedConfiguration:(id)configuration updatedConfiguredProperties:(id)properties completion:(id)completion
{
  controllerCopy = controller;
  configurationCopy = configuration;
  propertiesCopy = properties;
  completionCopy = completion;
  if (action == 1)
  {
    contentsIdentity = [controllerCopy contentsIdentity];
    v16 = +[PBFPosterExtensionDataStoreXPCServiceGlue sharedInstance];
    dataStore = [v16 dataStore];

    v18 = objc_alloc(MEMORY[0x277D3ECE0]);
    _path = [configurationCopy _path];
    v20 = [v18 initWithNewPath:_path destinationPosterUUID:0 sourceIdentity:contentsIdentity configuredProperties:propertiesCopy attributes:0];

    switcherConfiguration = [dataStore switcherConfiguration];
    v22 = [switcherConfiguration mutableCopy];

    [v22 ingestNewPosterConfiguration:v20];
    v30 = 0;
    v23 = [dataStore updateDataStoreForSwitcherConfiguration:v22 reason:@"ingest new poster from gallery" error:&v30];
    v24 = v30;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __140__PBFGalleryViewController_editingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke;
    v26[3] = &unk_2782C8EB0;
    v27 = controllerCopy;
    v28 = v24;
    v29 = completionCopy;
    v25 = v24;
    dispatch_async(MEMORY[0x277D85CD0], v26);
  }

  else
  {
    [controllerCopy dismissViewControllerAnimated:1 completion:0];
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

uint64_t __140__PBFGalleryViewController_editingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)_setupDataProvider
{
  if (!self->_dataProvider)
  {
    v3 = objc_alloc_init(PBFGalleryMutableDataProvider);
    dataProvider = self->_dataProvider;
    self->_dataProvider = v3;

    [(PBFGalleryViewController *)self _reload];
  }
}

- (void)_fetchNewGalleryFromProactive:(unint64_t)proactive
{
  dataStore = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self->_glue dataStore];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__PBFGalleryViewController__fetchNewGalleryFromProactive___block_invoke;
  v6[3] = &unk_2782C66B8;
  v6[4] = self;
  [dataStore fetchGalleryConfigurationWithOptions:proactive completion:v6];
}

void __58__PBFGalleryViewController__fetchNewGalleryFromProactive___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  if (v6)
  {
    v7 = PBFLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __58__PBFGalleryViewController__fetchNewGalleryFromProactive___block_invoke_cold_1(v6, v7);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__PBFGalleryViewController__fetchNewGalleryFromProactive___block_invoke_50;
  block[3] = &unk_2782C5888;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_reload
{
  dataStore = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self->_glue dataStore];
  currentGalleryConfiguration = [dataStore currentGalleryConfiguration];

  [(PBFGalleryMutableDataProvider *)self->_dataProvider configureForGallery:currentGalleryConfiguration];
}

- (void)_selectRenderingEnvironment
{
  [(UIAction *)self->_renderingAction setState:0];
  [(UIAction *)self->_previewingAction setState:1];
  [(UIAction *)self->_editingAction setState:1];
  environmentItem = self->_environmentItem;

  [(UIBarButtonItem *)environmentItem setTitle:@"On Tap: Rendering"];
}

- (void)_selectPreviewingEnvironment
{
  [(UIAction *)self->_renderingAction setState:1];
  [(UIAction *)self->_previewingAction setState:0];
  [(UIAction *)self->_editingAction setState:1];
  environmentItem = self->_environmentItem;

  [(UIBarButtonItem *)environmentItem setTitle:@"On Tap: Previewing"];
}

- (void)_selectEditingEnvironment
{
  [(UIAction *)self->_renderingAction setState:1];
  [(UIAction *)self->_previewingAction setState:1];
  [(UIAction *)self->_editingAction setState:0];
  environmentItem = self->_environmentItem;

  [(UIBarButtonItem *)environmentItem setTitle:@"On Tap: Editing"];
}

void __58__PBFGalleryViewController__fetchNewGalleryFromProactive___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21B526000, a2, OS_LOG_TYPE_ERROR, "Error updating face gallery configuration: %@", &v2, 0xCu);
}

@end