@interface PBFConfigViewController
- (PREditingSceneViewControllerTopButtonLayout)topButtonLayoutForEditingSceneViewController:(SEL)controller;
- (id)_posterConfigurationAtIndexPath:(id)path;
- (id)_posterPathAtIndexPath:(id)path;
- (id)_previewForPathAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point;
- (void)_presentPath:(id)path mode:(int64_t)mode;
- (void)_reloadData;
- (void)_selectConfiguration:(id)configuration;
- (void)_toggleEdit:(id)edit;
- (void)_updateEditing:(BOOL)editing;
- (void)editingSceneViewController:(id)controller userDidDismissWithAction:(int64_t)action updatedConfiguration:(id)configuration updatedConfiguredProperties:(id)properties completion:(id)completion;
- (void)posterExtensionDataStore:(id)store didUpdateSelectedConfiguration:(id)configuration associatedConfiguration:(id)associatedConfiguration reason:(id)reason;
- (void)posterExtensionDataStoreDidUpdateConfigurations:(id)configurations;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PBFConfigViewController

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = PBFConfigViewController;
  [(PBFConfigViewController *)&v10 viewDidLoad];
  tableView = [(PBFConfigViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"LOL"];

  if (!self->_glue)
  {
    v4 = +[PBFPosterExtensionDataStoreXPCServiceGlue sharedInstance];
    glue = self->_glue;
    self->_glue = v4;

    dataStore = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self->_glue dataStore];
    [dataStore addObserver:self];

    dataStore2 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self->_glue dataStore];
    switcherConfiguration = [dataStore2 switcherConfiguration];
    switcherConfiguration = self->_switcherConfiguration;
    self->_switcherConfiguration = switcherConfiguration;
  }

  [(PBFConfigViewController *)self _updateEditing:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PBFConfigViewController;
  [(PBFConfigViewController *)&v4 viewWillAppear:appear];
  [(PBFConfigViewController *)self _reloadData];
}

- (void)_toggleEdit:(id)edit
{
  tableView = [(PBFConfigViewController *)self tableView];
  tableView2 = [(PBFConfigViewController *)self tableView];
  [tableView setEditing:{objc_msgSend(tableView2, "isEditing") ^ 1}];

  tableView3 = [(PBFConfigViewController *)self tableView];
  -[PBFConfigViewController _updateEditing:](self, "_updateEditing:", [tableView3 isEditing]);
}

- (void)_updateEditing:(BOOL)editing
{
  editingCopy = editing;
  v5 = objc_alloc(MEMORY[0x277D751E0]);
  if (editingCopy)
  {
    v6 = @"Done";
  }

  else
  {
    v6 = @"Edit";
  }

  v8 = [v5 initWithTitle:v6 style:2 target:self action:sel__toggleEdit_];
  navigationItem = [(PBFConfigViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v8];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v5 = MEMORY[0x277D75B48];
  pathCopy = path;
  v7 = [[v5 alloc] initWithStyle:3 reuseIdentifier:@"LOL"];
  v8 = [(PBFConfigViewController *)self _posterPathAtIndexPath:pathCopy];
  identity = [v8 identity];
  posterUUID = [identity posterUUID];
  uUIDString = [posterUUID UUIDString];

  textLabel = [v7 textLabel];
  [textLabel setText:uUIDString];

  detailTextLabel = [v7 detailTextLabel];
  v14 = MEMORY[0x277CCABB0];
  identity2 = [v8 identity];
  v16 = [v14 numberWithUnsignedLongLong:{objc_msgSend(identity2, "version")}];
  v17 = [v16 description];
  [detailTextLabel setText:v17];

  v18 = [(PBFConfigViewController *)self _posterConfigurationAtIndexPath:pathCopy];

  dataStore = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self->_glue dataStore];
  pbf_displayContext = [(UIViewController *)self pbf_displayContext];
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __59__PBFConfigViewController_tableView_cellForRowAtIndexPath___block_invoke;
  v31 = &unk_2782C8F58;
  v21 = v7;
  v32 = v21;
  v22 = uUIDString;
  v33 = v22;
  [dataStore fetchSwitcherSnapshotForConfiguration:v18 context:pbf_displayContext completion:&v28];

  v23 = [(PRSwitcherConfiguration *)self->_switcherConfiguration selectedConfiguration:v28];
  LODWORD(dataStore) = [v18 isEqual:v23];

  if (dataStore)
  {
    v24 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v24 setText:@"⭐️"];
    [v24 sizeToFit];
    [v21 setAccessoryView:v24];
  }

  else
  {
    [v21 setAccessoryView:0];
  }

  v25 = v33;
  v26 = v21;

  return v21;
}

void __59__PBFConfigViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__PBFConfigViewController_tableView_cellForRowAtIndexPath___block_invoke_2;
  block[3] = &unk_2782C6428;
  v6 = v3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __59__PBFConfigViewController_tableView_cellForRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v8 = [*(a1 + 40) imageView];
    v2 = [v8 image];
    if (v2)
    {
    }

    else
    {
      v3 = [*(a1 + 40) textLabel];
      v4 = [v3 text];
      v5 = [v4 isEqualToString:*(a1 + 48)];

      if (v5)
      {
        v6 = [*(a1 + 40) imageView];
        [v6 setImage:*(a1 + 32)];

        [*(a1 + 40) setNeedsLayout];
        v7 = *(a1 + 40);

        [v7 layoutIfNeeded];
      }
    }
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(PBFConfigViewController *)self _posterPathAtIndexPath:pathCopy];
  [(PBFConfigViewController *)self _presentPath:v8 mode:2];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point
{
  viewCopy = view;
  pathCopy = path;
  objc_initWeak(&location, self);
  v9 = MEMORY[0x277D753B0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __85__PBFConfigViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke;
  v17[3] = &unk_2782C8F80;
  objc_copyWeak(&v19, &location);
  v10 = pathCopy;
  v18 = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __85__PBFConfigViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_2;
  v14[3] = &unk_2782C8FD0;
  objc_copyWeak(&v16, &location);
  v11 = v10;
  v15 = v11;
  v12 = [v9 configurationWithIdentifier:@"LOL" previewProvider:v17 actionProvider:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v12;
}

id __85__PBFConfigViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _previewForPathAtIndexPath:*(a1 + 32)];

  return v3;
}

id __85__PBFConfigViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_2(uint64_t a1, void *a2)
{
  v26[3] = *MEMORY[0x277D85DE8];
  v15 = a2;
  v16 = MEMORY[0x277D75710];
  v3 = MEMORY[0x277D750C8];
  v4 = [MEMORY[0x277D755B8] systemImageNamed:@"square.and.pencil"];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __85__PBFConfigViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_3;
  v23[3] = &unk_2782C8FA8;
  objc_copyWeak(&v25, (a1 + 40));
  v24 = *(a1 + 32);
  v5 = [v3 actionWithTitle:@"Edit" image:v4 identifier:@"EDIT" handler:v23];
  v26[0] = v5;
  v6 = MEMORY[0x277D750C8];
  v7 = [MEMORY[0x277D755B8] systemImageNamed:@"wand.and.stars.inverse"];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __85__PBFConfigViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_4;
  v20[3] = &unk_2782C8FA8;
  objc_copyWeak(&v22, (a1 + 40));
  v21 = *(a1 + 32);
  v8 = [v6 actionWithTitle:@"Render" image:v7 identifier:@"RENDER" handler:v20];
  v26[1] = v8;
  v9 = MEMORY[0x277D750C8];
  v10 = [MEMORY[0x277D755B8] systemImageNamed:@"star.fill"];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __85__PBFConfigViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_5;
  v17[3] = &unk_2782C8FA8;
  objc_copyWeak(&v19, (a1 + 40));
  v18 = *(a1 + 32);
  v11 = [v9 actionWithTitle:@"Select" image:v10 identifier:@"SELECT" handler:v17];
  v26[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];
  v13 = [v16 menuWithTitle:@"MAIN MENU" children:v12];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v22);

  objc_destroyWeak(&v25);

  return v13;
}

void __85__PBFConfigViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v5 = WeakRetained;
  v4 = [v5 _posterPathAtIndexPath:v3];
  [v5 _presentPath:v4 mode:2];
}

void __85__PBFConfigViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v5 = WeakRetained;
  v4 = [v5 _posterPathAtIndexPath:v3];
  [v5 _presentPath:v4 mode:1];
}

void __85__PBFConfigViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v5 = WeakRetained;
  v4 = [v5 _posterConfigurationAtIndexPath:v3];
  [v5 _selectConfiguration:v4];
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    v10 = [(PBFConfigViewController *)self _posterConfigurationAtIndexPath:path];
    v7 = [(PRSwitcherConfiguration *)self->_switcherConfiguration mutableCopy];
    [v7 removeConfiguration:v10];
    dataStore = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self->_glue dataStore];
    v9 = [dataStore updateDataStoreForSwitcherConfiguration:v7 reason:@"PBFConfigViewController commit editing style" error:0];
  }
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  switcherConfiguration = self->_switcherConfiguration;
  indexPathCopy = indexPath;
  pathCopy = path;
  viewCopy = view;
  v11 = [(PRSwitcherConfiguration *)switcherConfiguration mutableCopy];
  configurations = [v11 configurations];
  v13 = [configurations mutableCopy];

  v20 = [v13 objectAtIndex:{objc_msgSend(pathCopy, "row")}];
  [v13 removeObjectAtIndex:{objc_msgSend(pathCopy, "row")}];
  [v13 insertObject:v20 atIndex:{objc_msgSend(indexPathCopy, "row")}];
  [v11 setConfigurations:v13];
  v14 = self->_glue;
  dataStore = [(PBFPosterExtensionDataStoreXPCServiceGlue *)v14 dataStore];
  v21 = 0;
  v16 = [dataStore updateDataStoreForSwitcherConfiguration:v11 reason:@"PBFConfigViewController moveRowAtIndexPath" error:&v21];
  v17 = v21;

  v18 = self->_switcherConfiguration;
  self->_switcherConfiguration = v16;

  [viewCopy beginUpdates];
  [viewCopy moveRowAtIndexPath:pathCopy toIndexPath:indexPathCopy];

  [viewCopy endUpdates];
}

- (void)_selectConfiguration:(id)configuration
{
  switcherConfiguration = self->_switcherConfiguration;
  configurationCopy = configuration;
  v8 = [(PRSwitcherConfiguration *)switcherConfiguration mutableCopy];
  [v8 setSelectedConfiguration:configurationCopy];

  dataStore = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self->_glue dataStore];
  v7 = [dataStore updateDataStoreForSwitcherConfiguration:v8 reason:@"PBFConfigViewController selectConfiguration" error:0];

  [(PBFConfigViewController *)self _reloadData];
}

- (id)_posterPathAtIndexPath:(id)path
{
  v3 = -[NSArray objectAtIndex:](self->_configurations, "objectAtIndex:", [path row]);
  _path = [v3 _path];

  return _path;
}

- (id)_posterConfigurationAtIndexPath:(id)path
{
  configurations = self->_configurations;
  v4 = [path row];

  return [(NSArray *)configurations objectAtIndex:v4];
}

- (void)_reloadData
{
  if (MEMORY[0x21CEF7340]("[PBFConfigViewController _reloadData]", a2))
  {
    dataStore = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self->_glue dataStore];
    switcherConfiguration = [dataStore switcherConfiguration];
    switcherConfiguration = self->_switcherConfiguration;
    self->_switcherConfiguration = switcherConfiguration;

    configurations = [(PRSwitcherConfiguration *)self->_switcherConfiguration configurations];
    configurations = self->_configurations;
    self->_configurations = configurations;

    tableView = [(PBFConfigViewController *)self tableView];
    [tableView reloadData];
  }
}

- (void)_presentPath:(id)path mode:(int64_t)mode
{
  pathCopy = path;
  dataStore = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self->_glue dataStore];
  v7 = [dataStore providerForPath:pathCopy];

  if (pathCopy && v7)
  {
    v8 = MEMORY[0x277D3EB78];
    identity = [v7 identity];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v11 = [v8 extensionInstanceForIdentity:identity instanceIdentifier:uUID];

    if (mode == 2)
    {
      v12 = [objc_alloc(MEMORY[0x277D3ECC0]) initWithProvider:v11 contents:pathCopy];
      [v12 setDelegate:self];
    }

    else
    {
      v12 = [objc_alloc(MEMORY[0x277D3EE60]) initWithProvider:v11 contents:pathCopy previewing:mode == 1];
    }

    [v12 setModalPresentationStyle:0];
    [(PBFConfigViewController *)self presentViewController:v12 animated:1 completion:0];
  }
}

- (id)_previewForPathAtIndexPath:(id)path
{
  v4 = [(PBFConfigViewController *)self _posterPathAtIndexPath:path];
  dataStore = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self->_glue dataStore];
  v6 = [dataStore providerForPath:v4];

  v7 = MEMORY[0x277D3EB78];
  identity = [v6 identity];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v10 = [v7 extensionInstanceForIdentity:identity instanceIdentifier:uUID];

  v11 = 0;
  if (v4 && v10)
  {
    v11 = [objc_alloc(MEMORY[0x277D3EE60]) initWithProvider:v10 contents:v4 previewing:1];
  }

  return v11;
}

- (void)posterExtensionDataStoreDidUpdateConfigurations:(id)configurations
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__PBFConfigViewController_posterExtensionDataStoreDidUpdateConfigurations___block_invoke;
  block[3] = &unk_2782C5888;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)posterExtensionDataStore:(id)store didUpdateSelectedConfiguration:(id)configuration associatedConfiguration:(id)associatedConfiguration reason:(id)reason
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __114__PBFConfigViewController_posterExtensionDataStore_didUpdateSelectedConfiguration_associatedConfiguration_reason___block_invoke;
  block[3] = &unk_2782C5888;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (PREditingSceneViewControllerTopButtonLayout)topButtonLayoutForEditingSceneViewController:(SEL)controller
{
  view = [(PBFConfigViewController *)self view];
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
    dataStore = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self->_glue dataStore];
    v18 = objc_alloc(MEMORY[0x277D3ECE0]);
    _path = [configurationCopy _path];
    v20 = [v18 initWithNewPath:_path destinationPosterUUID:0 sourceIdentity:contentsIdentity configuredProperties:propertiesCopy attributes:0];

    switcherConfiguration = [dataStore switcherConfiguration];
    v22 = [switcherConfiguration mutableCopy];

    [v22 ingestNewPosterConfiguration:v20];
    v30 = 0;
    v23 = [dataStore updateDataStoreForSwitcherConfiguration:v22 reason:@"PBFConfigViewController ingest new poster" error:&v30];
    v24 = v30;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __139__PBFConfigViewController_editingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke;
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

uint64_t __139__PBFConfigViewController_editingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

@end