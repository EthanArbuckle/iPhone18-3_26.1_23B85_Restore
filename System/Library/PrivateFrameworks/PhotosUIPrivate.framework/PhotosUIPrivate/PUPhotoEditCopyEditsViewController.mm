@interface PUPhotoEditCopyEditsViewController
+ (BOOL)shouldPresentForCopyingFromCompositionController:(id)controller asset:(id)asset;
+ (id)_sectionsForConfiguration:(id)configuration;
- (PUPhotoEditCopyEditsViewController)initWithCompositionController:(id)controller asset:(id)asset;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_finish;
- (void)switchControlDidSwitch:(id)switch;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PUPhotoEditCopyEditsViewController

- (void)_finish
{
  configuration = [(PUPhotoEditCopyEditsViewController *)self configuration];
  result = [configuration result];

  compositionController = [result compositionController];
  v5 = [MEMORY[0x1E69C42B0] hasValidAdjustmentsInCompositionController:compositionController];
  if (v5)
  {
    mEMORY[0x1E69C4220] = [MEMORY[0x1E69C4220] sharedPresetManager];
    asset = [(PUPhotoEditCopyEditsViewController *)self asset];
    smartCopyEnabled = [result smartCopyEnabled];
    analyticsPayload = [result analyticsPayload];
    [mEMORY[0x1E69C4220] copyPresetFromCompositionController:compositionController sourceAsset:asset smartCopyEnabled:smartCopyEnabled configurationAnalyticsPayload:analyticsPayload];
  }

  completionHandler = [(PUPhotoEditCopyEditsViewController *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(PUPhotoEditCopyEditsViewController *)self completionHandler];
    completionHandler2[2](completionHandler2, v5);
  }
}

- (void)switchControlDidSwitch:(id)switch
{
  switchCopy = switch;
  [switchCopy tag];
  configuration = [(PUPhotoEditCopyEditsViewController *)self configuration];
  settings = [configuration settings];
  v7 = PFFind();

  [v7 setEnabled:{objc_msgSend(v7, "enabled") ^ 1}];
  if ([v7 identifier] == 2)
  {
    configuration2 = [(PUPhotoEditCopyEditsViewController *)self configuration];
    settings2 = [configuration2 settings];
    v10 = PFFind();

    if (([switchCopy isOn] & 1) == 0)
    {
      [v10 setEnabled:0];
      smartSwitch = [(PUPhotoEditCopyEditsViewController *)self smartSwitch];
      [smartSwitch setOn:0];
    }

    isOn = [switchCopy isOn];
    smartSwitch2 = [(PUPhotoEditCopyEditsViewController *)self smartSwitch];
    [smartSwitch2 setEnabled:isOn];
  }
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  sections = [(PUPhotoEditCopyEditsViewController *)self sections];
  v6 = [sections objectAtIndex:section];
  footer = [v6 footer];

  return footer;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  sections = [(PUPhotoEditCopyEditsViewController *)self sections];
  v6 = [sections objectAtIndex:section];
  header = [v6 header];

  return header;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  sections = [(PUPhotoEditCopyEditsViewController *)self sections];
  v9 = [sections objectAtIndex:{objc_msgSend(pathCopy, "section")}];
  items = [v9 items];
  v11 = [items objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  v12 = [viewCopy dequeueReusableCellWithIdentifier:@"PUPhotoEditCopyEditsViewControllerCellReuseIdentifier" forIndexPath:pathCopy];

  accessoryView = [v12 accessoryView];
  if (!accessoryView)
  {
    accessoryView = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    [accessoryView addTarget:self action:sel_switchControlDidSwitch_ forControlEvents:4096];
    [v12 setAccessoryView:accessoryView];
    if ([v11 identifier] == 6)
    {
      [(PUPhotoEditCopyEditsViewController *)self setSmartSwitch:accessoryView];
    }
  }

  localizedTitle = [v11 localizedTitle];
  textLabel = [v12 textLabel];
  [textLabel setText:localizedTitle];

  [accessoryView setTag:{objc_msgSend(v11, "identifier")}];
  [accessoryView setOn:{objc_msgSend(v11, "enabled")}];

  return v12;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  sections = [(PUPhotoEditCopyEditsViewController *)self sections];
  v6 = [sections objectAtIndex:section];
  items = [v6 items];
  v8 = [items count];

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sections = [(PUPhotoEditCopyEditsViewController *)self sections];
  v4 = [sections count];

  return v4;
}

- (void)viewDidLayoutSubviews
{
  v32 = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = PUPhotoEditCopyEditsViewController;
  [(PUPhotoEditCopyEditsViewController *)&v28 viewDidLayoutSubviews];
  tableView = [(PUPhotoEditCopyEditsViewController *)self tableView];
  visibleCells = [tableView visibleCells];
  firstObject = [visibleCells firstObject];
  textLabel = [firstObject textLabel];
  font = [textLabel font];

  if (font)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    configuration = [(PUPhotoEditCopyEditsViewController *)self configuration];
    settings = [configuration settings];

    v10 = [settings countByEnumeratingWithState:&v24 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      v13 = *MEMORY[0x1E69DB648];
      v14 = *MEMORY[0x1E695F060];
      v15 = *(MEMORY[0x1E695F060] + 8);
      v16 = 0.0;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(settings);
          }

          localizedTitle = [*(*(&v24 + 1) + 8 * i) localizedTitle];
          v29 = v13;
          v30 = font;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
          [localizedTitle boundingRectWithSize:0 options:v19 attributes:0 context:{v14, v15}];
          v21 = v20;

          if (v21 > v16)
          {
            v16 = v21;
          }
        }

        v11 = [settings countByEnumeratingWithState:&v24 objects:v31 count:16];
      }

      while (v11);
      v22 = v16 + 150.0;
    }

    else
    {
      v22 = 150.0;
    }
  }

  else
  {
    v22 = 150.0;
  }

  if (v22 < 300.0)
  {
    v22 = 300.0;
  }

  tableView2 = [(PUPhotoEditCopyEditsViewController *)self tableView];
  [tableView2 contentSize];
  [(PUPhotoEditCopyEditsViewController *)self setPreferredContentSize:v22];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PUPhotoEditCopyEditsViewController;
  [(PUPhotoEditCopyEditsViewController *)&v4 viewDidDisappear:disappear];
  [(PUPhotoEditCopyEditsViewController *)self _finish];
}

- (void)viewDidLoad
{
  v22[1] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = PUPhotoEditCopyEditsViewController;
  [(PUPhotoEditCopyEditsViewController *)&v21 viewDidLoad];
  v3 = PULocalizedString(@"PHOTOEDIT_COPY_EDITS_MENU_TITLE");
  [(PUPhotoEditCopyEditsViewController *)self setTitle:v3];

  objc_initWeak(&location, self);
  v4 = MEMORY[0x1E69DC628];
  v5 = PULocalizedString(@"PHOTOEDIT_COPY_EDITS_MENU_ACTION");
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __49__PUPhotoEditCopyEditsViewController_viewDidLoad__block_invoke;
  v18 = &unk_1E7B80890;
  objc_copyWeak(&v19, &location);
  v6 = [v4 actionWithTitle:v5 image:0 identifier:0 handler:&v15];

  v7 = objc_alloc(MEMORY[0x1E69DC708]);
  v8 = [v7 initWithPrimaryAction:{v6, v15, v16, v17, v18}];
  [v8 setStyle:2];
  creatingFixedGroup = [v8 creatingFixedGroup];
  v22[0] = creatingFixedGroup;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  navigationItem = [(PUPhotoEditCopyEditsViewController *)self navigationItem];
  [navigationItem setTrailingItemGroups:v10];

  tableView = [(PUPhotoEditCopyEditsViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PUPhotoEditCopyEditsViewControllerCellReuseIdentifier"];

  tableView2 = [(PUPhotoEditCopyEditsViewController *)self tableView];
  [tableView2 setAllowsSelection:0];

  tableView3 = [(PUPhotoEditCopyEditsViewController *)self tableView];
  [tableView3 setAlwaysBounceVertical:0];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __49__PUPhotoEditCopyEditsViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:&__block_literal_global_70559];
}

- (PUPhotoEditCopyEditsViewController)initWithCompositionController:(id)controller asset:(id)asset
{
  controllerCopy = controller;
  assetCopy = asset;
  v14.receiver = self;
  v14.super_class = PUPhotoEditCopyEditsViewController;
  v8 = [(PUPhotoEditCopyEditsViewController *)&v14 initWithStyle:2];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69C4278]) initWithCompositionController:controllerCopy asset:assetCopy];
    configuration = v8->_configuration;
    v8->_configuration = v9;

    objc_storeStrong(&v8->_asset, asset);
    v11 = [PUPhotoEditCopyEditsViewController _sectionsForConfiguration:v8->_configuration];
    sections = v8->_sections;
    v8->_sections = v11;
  }

  return v8;
}

+ (id)_sectionsForConfiguration:(id)configuration
{
  v15[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  array = [MEMORY[0x1E695DF70] array];
  settings = [configurationCopy settings];
  v6 = PFFilter();

  if ([v6 count])
  {
    v7 = [[PUCopyEditsSettingSection alloc] initWithItems:v6 header:0 footer:0];
    [array addObject:v7];
  }

  settings2 = [configurationCopy settings];
  v9 = PFFind();

  if (v9)
  {
    v10 = [PUCopyEditsSettingSection alloc];
    v15[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v12 = PELocalizedString();
    v13 = [(PUCopyEditsSettingSection *)v10 initWithItems:v11 header:0 footer:v12];

    [array addObject:v13];
  }

  return array;
}

+ (BOOL)shouldPresentForCopyingFromCompositionController:(id)controller asset:(id)asset
{
  controllerCopy = controller;
  assetCopy = asset;
  v7 = +[PUPhotoEditProtoSettings sharedInstance];
  enableSelectiveCopyEdits = [v7 enableSelectiveCopyEdits];

  if (enableSelectiveCopyEdits)
  {
    v9 = [objc_alloc(MEMORY[0x1E69C4278]) initWithCompositionController:controllerCopy asset:assetCopy];
    v10 = [PUPhotoEditCopyEditsViewController _sectionsForConfiguration:v9];
    v11 = [v10 count] != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end