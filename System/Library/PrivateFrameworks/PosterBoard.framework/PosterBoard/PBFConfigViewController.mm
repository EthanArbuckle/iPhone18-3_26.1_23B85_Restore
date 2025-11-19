@interface PBFConfigViewController
- (PREditingSceneViewControllerTopButtonLayout)topButtonLayoutForEditingSceneViewController:(SEL)a3;
- (id)_posterConfigurationAtIndexPath:(id)a3;
- (id)_posterPathAtIndexPath:(id)a3;
- (id)_previewForPathAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (void)_presentPath:(id)a3 mode:(int64_t)a4;
- (void)_reloadData;
- (void)_selectConfiguration:(id)a3;
- (void)_toggleEdit:(id)a3;
- (void)_updateEditing:(BOOL)a3;
- (void)editingSceneViewController:(id)a3 userDidDismissWithAction:(int64_t)a4 updatedConfiguration:(id)a5 updatedConfiguredProperties:(id)a6 completion:(id)a7;
- (void)posterExtensionDataStore:(id)a3 didUpdateSelectedConfiguration:(id)a4 associatedConfiguration:(id)a5 reason:(id)a6;
- (void)posterExtensionDataStoreDidUpdateConfigurations:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PBFConfigViewController

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = PBFConfigViewController;
  [(PBFConfigViewController *)&v10 viewDidLoad];
  v3 = [(PBFConfigViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"LOL"];

  if (!self->_glue)
  {
    v4 = +[PBFPosterExtensionDataStoreXPCServiceGlue sharedInstance];
    glue = self->_glue;
    self->_glue = v4;

    v6 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self->_glue dataStore];
    [v6 addObserver:self];

    v7 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self->_glue dataStore];
    v8 = [v7 switcherConfiguration];
    switcherConfiguration = self->_switcherConfiguration;
    self->_switcherConfiguration = v8;
  }

  [(PBFConfigViewController *)self _updateEditing:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PBFConfigViewController;
  [(PBFConfigViewController *)&v4 viewWillAppear:a3];
  [(PBFConfigViewController *)self _reloadData];
}

- (void)_toggleEdit:(id)a3
{
  v4 = [(PBFConfigViewController *)self tableView];
  v5 = [(PBFConfigViewController *)self tableView];
  [v4 setEditing:{objc_msgSend(v5, "isEditing") ^ 1}];

  v6 = [(PBFConfigViewController *)self tableView];
  -[PBFConfigViewController _updateEditing:](self, "_updateEditing:", [v6 isEditing]);
}

- (void)_updateEditing:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc(MEMORY[0x277D751E0]);
  if (v3)
  {
    v6 = @"Done";
  }

  else
  {
    v6 = @"Edit";
  }

  v8 = [v5 initWithTitle:v6 style:2 target:self action:sel__toggleEdit_];
  v7 = [(PBFConfigViewController *)self navigationItem];
  [v7 setRightBarButtonItem:v8];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = MEMORY[0x277D75B48];
  v6 = a4;
  v7 = [[v5 alloc] initWithStyle:3 reuseIdentifier:@"LOL"];
  v8 = [(PBFConfigViewController *)self _posterPathAtIndexPath:v6];
  v9 = [v8 identity];
  v10 = [v9 posterUUID];
  v11 = [v10 UUIDString];

  v12 = [v7 textLabel];
  [v12 setText:v11];

  v13 = [v7 detailTextLabel];
  v14 = MEMORY[0x277CCABB0];
  v15 = [v8 identity];
  v16 = [v14 numberWithUnsignedLongLong:{objc_msgSend(v15, "version")}];
  v17 = [v16 description];
  [v13 setText:v17];

  v18 = [(PBFConfigViewController *)self _posterConfigurationAtIndexPath:v6];

  v19 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self->_glue dataStore];
  v20 = [(UIViewController *)self pbf_displayContext];
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __59__PBFConfigViewController_tableView_cellForRowAtIndexPath___block_invoke;
  v31 = &unk_2782C8F58;
  v21 = v7;
  v32 = v21;
  v22 = v11;
  v33 = v22;
  [v19 fetchSwitcherSnapshotForConfiguration:v18 context:v20 completion:&v28];

  v23 = [(PRSwitcherConfiguration *)self->_switcherConfiguration selectedConfiguration:v28];
  LODWORD(v19) = [v18 isEqual:v23];

  if (v19)
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PBFConfigViewController *)self _posterPathAtIndexPath:v6];
  [(PBFConfigViewController *)self _presentPath:v8 mode:2];
  [v7 deselectRowAtIndexPath:v6 animated:1];
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = a3;
  v8 = a4;
  objc_initWeak(&location, self);
  v9 = MEMORY[0x277D753B0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __85__PBFConfigViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke;
  v17[3] = &unk_2782C8F80;
  objc_copyWeak(&v19, &location);
  v10 = v8;
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

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    v10 = [(PBFConfigViewController *)self _posterConfigurationAtIndexPath:a5];
    v7 = [(PRSwitcherConfiguration *)self->_switcherConfiguration mutableCopy];
    [v7 removeConfiguration:v10];
    v8 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self->_glue dataStore];
    v9 = [v8 updateDataStoreForSwitcherConfiguration:v7 reason:@"PBFConfigViewController commit editing style" error:0];
  }
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  switcherConfiguration = self->_switcherConfiguration;
  v19 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PRSwitcherConfiguration *)switcherConfiguration mutableCopy];
  v12 = [v11 configurations];
  v13 = [v12 mutableCopy];

  v20 = [v13 objectAtIndex:{objc_msgSend(v9, "row")}];
  [v13 removeObjectAtIndex:{objc_msgSend(v9, "row")}];
  [v13 insertObject:v20 atIndex:{objc_msgSend(v19, "row")}];
  [v11 setConfigurations:v13];
  v14 = self->_glue;
  v15 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)v14 dataStore];
  v21 = 0;
  v16 = [v15 updateDataStoreForSwitcherConfiguration:v11 reason:@"PBFConfigViewController moveRowAtIndexPath" error:&v21];
  v17 = v21;

  v18 = self->_switcherConfiguration;
  self->_switcherConfiguration = v16;

  [v10 beginUpdates];
  [v10 moveRowAtIndexPath:v9 toIndexPath:v19];

  [v10 endUpdates];
}

- (void)_selectConfiguration:(id)a3
{
  switcherConfiguration = self->_switcherConfiguration;
  v5 = a3;
  v8 = [(PRSwitcherConfiguration *)switcherConfiguration mutableCopy];
  [v8 setSelectedConfiguration:v5];

  v6 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self->_glue dataStore];
  v7 = [v6 updateDataStoreForSwitcherConfiguration:v8 reason:@"PBFConfigViewController selectConfiguration" error:0];

  [(PBFConfigViewController *)self _reloadData];
}

- (id)_posterPathAtIndexPath:(id)a3
{
  v3 = -[NSArray objectAtIndex:](self->_configurations, "objectAtIndex:", [a3 row]);
  v4 = [v3 _path];

  return v4;
}

- (id)_posterConfigurationAtIndexPath:(id)a3
{
  configurations = self->_configurations;
  v4 = [a3 row];

  return [(NSArray *)configurations objectAtIndex:v4];
}

- (void)_reloadData
{
  if (MEMORY[0x21CEF7340]("[PBFConfigViewController _reloadData]", a2))
  {
    v3 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self->_glue dataStore];
    v4 = [v3 switcherConfiguration];
    switcherConfiguration = self->_switcherConfiguration;
    self->_switcherConfiguration = v4;

    v6 = [(PRSwitcherConfiguration *)self->_switcherConfiguration configurations];
    configurations = self->_configurations;
    self->_configurations = v6;

    v8 = [(PBFConfigViewController *)self tableView];
    [v8 reloadData];
  }
}

- (void)_presentPath:(id)a3 mode:(int64_t)a4
{
  v13 = a3;
  v6 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self->_glue dataStore];
  v7 = [v6 providerForPath:v13];

  if (v13 && v7)
  {
    v8 = MEMORY[0x277D3EB78];
    v9 = [v7 identity];
    v10 = [MEMORY[0x277CCAD78] UUID];
    v11 = [v8 extensionInstanceForIdentity:v9 instanceIdentifier:v10];

    if (a4 == 2)
    {
      v12 = [objc_alloc(MEMORY[0x277D3ECC0]) initWithProvider:v11 contents:v13];
      [v12 setDelegate:self];
    }

    else
    {
      v12 = [objc_alloc(MEMORY[0x277D3EE60]) initWithProvider:v11 contents:v13 previewing:a4 == 1];
    }

    [v12 setModalPresentationStyle:0];
    [(PBFConfigViewController *)self presentViewController:v12 animated:1 completion:0];
  }
}

- (id)_previewForPathAtIndexPath:(id)a3
{
  v4 = [(PBFConfigViewController *)self _posterPathAtIndexPath:a3];
  v5 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self->_glue dataStore];
  v6 = [v5 providerForPath:v4];

  v7 = MEMORY[0x277D3EB78];
  v8 = [v6 identity];
  v9 = [MEMORY[0x277CCAD78] UUID];
  v10 = [v7 extensionInstanceForIdentity:v8 instanceIdentifier:v9];

  v11 = 0;
  if (v4 && v10)
  {
    v11 = [objc_alloc(MEMORY[0x277D3EE60]) initWithProvider:v10 contents:v4 previewing:1];
  }

  return v11;
}

- (void)posterExtensionDataStoreDidUpdateConfigurations:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__PBFConfigViewController_posterExtensionDataStoreDidUpdateConfigurations___block_invoke;
  block[3] = &unk_2782C5888;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)posterExtensionDataStore:(id)a3 didUpdateSelectedConfiguration:(id)a4 associatedConfiguration:(id)a5 reason:(id)a6
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __114__PBFConfigViewController_posterExtensionDataStore_didUpdateSelectedConfiguration_associatedConfiguration_reason___block_invoke;
  block[3] = &unk_2782C5888;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (PREditingSceneViewControllerTopButtonLayout)topButtonLayoutForEditingSceneViewController:(SEL)a3
{
  v5 = [(PBFConfigViewController *)self view];
  v6 = [v5 window];
  v7 = [v6 windowScene];
  v8 = [v7 _FBSScene];
  v18 = [v8 settings];

  [v18 prui_leadingTopButtonFrame];
  retstr->leadingTopButtonFrame.origin.x = v9;
  retstr->leadingTopButtonFrame.origin.y = v10;
  retstr->leadingTopButtonFrame.size.width = v11;
  retstr->leadingTopButtonFrame.size.height = v12;
  [v18 prui_trailingTopButtonFrame];
  retstr->trailingTopButtonFrame.origin.x = v13;
  retstr->trailingTopButtonFrame.origin.y = v14;
  retstr->trailingTopButtonFrame.size.width = v15;
  retstr->trailingTopButtonFrame.size.height = v16;

  return result;
}

- (void)editingSceneViewController:(id)a3 userDidDismissWithAction:(int64_t)a4 updatedConfiguration:(id)a5 updatedConfiguredProperties:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (a4 == 1)
  {
    v16 = [v12 contentsIdentity];
    v17 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self->_glue dataStore];
    v18 = objc_alloc(MEMORY[0x277D3ECE0]);
    v19 = [v13 _path];
    v20 = [v18 initWithNewPath:v19 destinationPosterUUID:0 sourceIdentity:v16 configuredProperties:v14 attributes:0];

    v21 = [v17 switcherConfiguration];
    v22 = [v21 mutableCopy];

    [v22 ingestNewPosterConfiguration:v20];
    v30 = 0;
    v23 = [v17 updateDataStoreForSwitcherConfiguration:v22 reason:@"PBFConfigViewController ingest new poster" error:&v30];
    v24 = v30;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __139__PBFConfigViewController_editingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke;
    v26[3] = &unk_2782C8EB0;
    v27 = v12;
    v28 = v24;
    v29 = v15;
    v25 = v24;
    dispatch_async(MEMORY[0x277D85CD0], v26);
  }

  else
  {
    [v12 dismissViewControllerAnimated:1 completion:0];
    (*(v15 + 2))(v15, 0);
  }
}

uint64_t __139__PBFConfigViewController_editingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

@end