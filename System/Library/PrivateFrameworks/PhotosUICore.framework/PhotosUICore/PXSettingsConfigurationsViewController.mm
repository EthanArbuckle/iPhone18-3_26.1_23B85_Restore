@interface PXSettingsConfigurationsViewController
- (PXSettingsConfigurationsViewController)initWithCoder:(id)coder;
- (PXSettingsConfigurationsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PXSettingsConfigurationsViewController)initWithSettings:(id)settings;
- (PXSettingsConfigurationsViewController)initWithStyle:(int64_t)style;
- (id)_titleForSettings:(id)settings;
- (id)_untitledName;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_promptNameWithAlertTitle:(id)title message:(id)message proposedNamed:(id)named confirmationButtonTitle:(id)buttonTitle completionHandler:(id)handler;
- (void)_promptedNameDidChange:(id)change;
- (void)_shareConfigurations:(id)configurations;
- (void)_updateAvailableActions;
- (void)setAreAllActionsAvailable:(BOOL)available;
- (void)settingsConfigurationSource:(id)source didChange:(id)change;
- (void)settingsConfigurationSource:(id)source performChanges:(id)changes;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation PXSettingsConfigurationsViewController

- (void)settingsConfigurationSource:(id)source didChange:(id)change
{
  changeCopy = change;
  if ([(PXSettingsConfigurationsViewController *)self isViewLoaded])
  {
    tableView = [(PXSettingsConfigurationsViewController *)self tableView];
    if ([changeCopy hasIncrementalChanges] && !objc_msgSend(changeCopy, "hasMoves"))
    {
      removedIndexes = [changeCopy removedIndexes];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __80__PXSettingsConfigurationsViewController_settingsConfigurationSource_didChange___block_invoke;
      v17[3] = &unk_1E774C138;
      v9 = tableView;
      v18 = v9;
      [removedIndexes enumerateIndexesUsingBlock:v17];

      insertedIndexes = [changeCopy insertedIndexes];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __80__PXSettingsConfigurationsViewController_settingsConfigurationSource_didChange___block_invoke_2;
      v15[3] = &unk_1E774C138;
      v11 = v9;
      v16 = v11;
      [insertedIndexes enumerateIndexesUsingBlock:v15];

      changedIndexes = [changeCopy changedIndexes];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __80__PXSettingsConfigurationsViewController_settingsConfigurationSource_didChange___block_invoke_3;
      v13[3] = &unk_1E774C138;
      v14 = v11;
      [changedIndexes enumerateIndexesUsingBlock:v13];
    }

    else
    {
      v7 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
      [tableView reloadSections:v7 withRowAnimation:100];
    }

    [(PXSettingsConfigurationsViewController *)self _updateAvailableActions];
  }
}

void __80__PXSettingsConfigurationsViewController_settingsConfigurationSource_didChange___block_invoke(uint64_t a1, uint64_t a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AC88] indexPathForItem:a2 inSection:0];
  v5[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [v2 deleteRowsAtIndexPaths:v4 withRowAnimation:100];
}

void __80__PXSettingsConfigurationsViewController_settingsConfigurationSource_didChange___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AC88] indexPathForItem:a2 inSection:0];
  v5[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [v2 insertRowsAtIndexPaths:v4 withRowAnimation:100];
}

void __80__PXSettingsConfigurationsViewController_settingsConfigurationSource_didChange___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AC88] indexPathForItem:a2 inSection:0];
  v5[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [v2 reloadRowsAtIndexPaths:v4 withRowAnimation:100];
}

- (void)settingsConfigurationSource:(id)source performChanges:(id)changes
{
  changesCopy = changes;
  if ([(PXSettingsConfigurationsViewController *)self isViewLoaded]&& ([(PXSettingsConfigurationsViewController *)self tableView], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    [v5 performBatchUpdates:changesCopy completion:0];
  }

  else
  {
    changesCopy[2]();
  }
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSettingsConfigurationsViewController.m" lineNumber:318 description:{@"Invalid parameter not satisfying: %@", @"indexPath.section == SectionConfigurations"}];
  }

  source = [(PXSettingsConfigurationsViewController *)self source];
  item = [pathCopy item];

  v9 = [source configurationAtIndex:item];
  v10 = MEMORY[0x1E69DC650];
  name = [v9 name];
  settings = [v9 settings];
  v13 = [(PXSettingsConfigurationsViewController *)self _titleForSettings:settings];
  v14 = [v10 alertControllerWithTitle:name message:v13 preferredStyle:1];

  v15 = MEMORY[0x1E69DC648];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __93__PXSettingsConfigurationsViewController_tableView_accessoryButtonTappedForRowWithIndexPath___block_invoke;
  v34[3] = &unk_1E774A2C8;
  v34[4] = self;
  v16 = v9;
  v35 = v16;
  v17 = [v15 actionWithTitle:@"Share…" style:0 handler:v34];
  [v14 addAction:v17];

  v18 = MEMORY[0x1E69DC648];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __93__PXSettingsConfigurationsViewController_tableView_accessoryButtonTappedForRowWithIndexPath___block_invoke_2;
  v31[3] = &unk_1E773DFC0;
  v31[4] = self;
  v19 = v16;
  v32 = v19;
  v20 = source;
  v33 = v20;
  v21 = [v18 actionWithTitle:@"Update…" style:0 handler:v31];
  [v14 addAction:v21];

  v22 = MEMORY[0x1E69DC648];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __93__PXSettingsConfigurationsViewController_tableView_accessoryButtonTappedForRowWithIndexPath___block_invoke_5;
  v28[3] = &unk_1E773DFC0;
  v28[4] = self;
  v29 = v19;
  v30 = v20;
  v23 = v20;
  v24 = v19;
  v25 = [v22 actionWithTitle:@"Rename…" style:0 handler:v28];
  [v14 addAction:v25];

  v26 = [MEMORY[0x1E69DC648] actionWithTitle:@"Cancel" style:1 handler:0];
  [v14 addAction:v26];

  [(PXSettingsConfigurationsViewController *)self presentViewController:v14 animated:1 completion:0];
}

void __93__PXSettingsConfigurationsViewController_tableView_accessoryButtonTappedForRowWithIndexPath___block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v3[0] = *(a1 + 40);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  [v1 _shareConfigurations:v2];
}

void __93__PXSettingsConfigurationsViewController_tableView_accessoryButtonTappedForRowWithIndexPath___block_invoke_2(id *a1)
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = a1[4];
  v4 = [a1[5] settings];
  v5 = [v3 _titleForSettings:v4];
  v6 = [v2 initWithFormat:@"Using current values for the settings ”%@”", v5];

  v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Update Configuration" message:v6 preferredStyle:1];
  v8 = MEMORY[0x1E69DC648];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __93__PXSettingsConfigurationsViewController_tableView_accessoryButtonTappedForRowWithIndexPath___block_invoke_3;
  v11[3] = &unk_1E774A2C8;
  v12 = a1[6];
  v13 = a1[5];
  v9 = [v8 actionWithTitle:@"Update" style:0 handler:v11];
  [v7 addAction:v9];

  v10 = [MEMORY[0x1E69DC648] actionWithTitle:@"Cancel" style:1 handler:0];
  [v7 addAction:v10];

  [a1[4] presentViewController:v7 animated:1 completion:0];
}

void __93__PXSettingsConfigurationsViewController_tableView_accessoryButtonTappedForRowWithIndexPath___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) name];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __93__PXSettingsConfigurationsViewController_tableView_accessoryButtonTappedForRowWithIndexPath___block_invoke_6;
  v4[3] = &unk_1E773DF50;
  v5 = *(a1 + 48);
  v6 = *(a1 + 40);
  [v2 _promptNameWithAlertTitle:&stru_1F1741150 message:0 proposedNamed:v3 confirmationButtonTitle:@"Rename" completionHandler:v4];
}

void __93__PXSettingsConfigurationsViewController_tableView_accessoryButtonTappedForRowWithIndexPath___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __93__PXSettingsConfigurationsViewController_tableView_accessoryButtonTappedForRowWithIndexPath___block_invoke_7;
    v5[3] = &unk_1E773DFE8;
    v6 = v4;
    v7 = *(a1 + 40);
    v8 = v3;
    [v6 performChanges:v5];
  }
}

void __93__PXSettingsConfigurationsViewController_tableView_accessoryButtonTappedForRowWithIndexPath___block_invoke_7(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v5 renameConfigurationAtIndex:objc_msgSend(v3 withName:{"indexOfConfiguration:", v4), a1[6]}];
}

void __93__PXSettingsConfigurationsViewController_tableView_accessoryButtonTappedForRowWithIndexPath___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __93__PXSettingsConfigurationsViewController_tableView_accessoryButtonTappedForRowWithIndexPath___block_invoke_4;
  v3[3] = &unk_1E773DF98;
  v4 = v2;
  v5 = *(a1 + 40);
  [v4 performChanges:v3];
}

void __93__PXSettingsConfigurationsViewController_tableView_accessoryButtonTappedForRowWithIndexPath___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 updateConfigurationAtIndex:{objc_msgSend(v2, "indexOfConfiguration:", v3)}];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section != 1)
  {
    if (!section)
    {
      source = [(PXSettingsConfigurationsViewController *)self source];
      string = [source configurationAtIndex:{objc_msgSend(pathCopy, "item")}];

      settings = [string settings];
      archive = [string archive];
      [settings restoreFromArchiveDictionary:archive];

LABEL_23:
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  item = [pathCopy item];
  if (item <= 1)
  {
    if (!item)
    {
      settings2 = [(PXSettingsConfigurationsViewController *)self settings];
      v24 = objc_alloc(MEMORY[0x1E696AEC0]);
      v25 = [(PXSettingsConfigurationsViewController *)self _titleForSettings:settings2];
      string = [v24 initWithFormat:@"Using current values for the settings ”%@”", v25];

      _untitledName = [(PXSettingsConfigurationsViewController *)self _untitledName];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __76__PXSettingsConfigurationsViewController_tableView_didSelectRowAtIndexPath___block_invoke;
      v38[3] = &unk_1E773DF50;
      v39 = settings2;
      selfCopy = self;
      v27 = settings2;
      [(PXSettingsConfigurationsViewController *)self _promptNameWithAlertTitle:@"New Configuration" message:string proposedNamed:_untitledName confirmationButtonTitle:@"Create" completionHandler:v38];

      goto LABEL_23;
    }

    if (item != 1)
    {
      goto LABEL_24;
    }

    generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
    string = [generalPasteboard string];

    v15 = [PXSettingsConfiguration configurationsFromSharableString:string];
    if ([v15 count])
    {
      v16 = [v15 count];
      v17 = MEMORY[0x1E696AEC0];
      if (v16 == 1)
      {
        firstObject = [v15 firstObject];
        name = [firstObject name];
        v20 = [v17 stringWithFormat:@"Import configuration ”%@”?", name];
      }

      else
      {
        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Import %li configurations?", v16];
      }

      v31 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v20 message:0 preferredStyle:1];
      v32 = MEMORY[0x1E69DC648];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __76__PXSettingsConfigurationsViewController_tableView_didSelectRowAtIndexPath___block_invoke_3;
      v36[3] = &unk_1E774A2C8;
      v36[4] = self;
      v37 = v15;
      v33 = [v32 actionWithTitle:@"Import" style:0 handler:v36];
      [v31 addAction:v33];

      v34 = [MEMORY[0x1E69DC648] actionWithTitle:@"Cancel" style:1 handler:0];
      [v31 addAction:v34];

      [(PXSettingsConfigurationsViewController *)self presentViewController:v31 animated:1 completion:0];
    }

    else
    {
      v20 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"No valid text in pasteboard" message:@"To import configurations preferredStyle:{make sure to first copy the text that you received from the person trying to share configurations with you.", 1}];
      v30 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:0];
      [v20 addAction:v30];

      [(PXSettingsConfigurationsViewController *)self presentViewController:v20 animated:1 completion:0];
    }

LABEL_22:
    goto LABEL_23;
  }

  if (item == 2)
  {
    string = [(PXSettingsConfigurationsViewController *)self source];
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([string numberOfConfigurations] >= 1)
    {
      v28 = 0;
      do
      {
        v29 = [string configurationAtIndex:v28];
        [v15 addObject:v29];

        ++v28;
      }

      while (v28 < [string numberOfConfigurations]);
    }

    [(PXSettingsConfigurationsViewController *)self _shareConfigurations:v15];
    goto LABEL_22;
  }

  if (item == 3)
  {
    string = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Delete All Configurations?" message:0 preferredStyle:1];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __76__PXSettingsConfigurationsViewController_tableView_didSelectRowAtIndexPath___block_invoke_5;
    v35[3] = &unk_1E7749600;
    v35[4] = self;
    v21 = [MEMORY[0x1E69DC648] actionWithTitle:@"Delete All" style:2 handler:v35];
    [string addAction:v21];

    v22 = [MEMORY[0x1E69DC648] actionWithTitle:@"Cancel" style:1 handler:0];
    [string addAction:v22];

    [(PXSettingsConfigurationsViewController *)self presentViewController:string animated:1 completion:0];
    goto LABEL_23;
  }

LABEL_24:
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

void __76__PXSettingsConfigurationsViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = [[PXSettingsConfiguration alloc] initWithName:v3 settings:*(a1 + 32)];

    v5 = [*(a1 + 40) source];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __76__PXSettingsConfigurationsViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
    v7[3] = &unk_1E773DF28;
    v8 = v4;
    v6 = v4;
    [v5 performChanges:v7];
  }
}

void __76__PXSettingsConfigurationsViewController_tableView_didSelectRowAtIndexPath___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) source];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __76__PXSettingsConfigurationsViewController_tableView_didSelectRowAtIndexPath___block_invoke_4;
  v3[3] = &unk_1E773DF28;
  v4 = *(a1 + 40);
  [v2 performChanges:v3];
}

void __76__PXSettingsConfigurationsViewController_tableView_didSelectRowAtIndexPath___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) source];
  [v1 performChanges:&__block_literal_global_153933];
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section)
  {
    if (section != 1)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXSettingsConfigurationsViewController.m" lineNumber:242 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section)
  {
    if (section == 1)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXSettingsConfigurationsViewController.m" lineNumber:228 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  else
  {
    source = [(PXSettingsConfigurationsViewController *)self source];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __89__PXSettingsConfigurationsViewController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke;
    v13[3] = &unk_1E773DF28;
    v14 = pathCopy;
    [source performChanges:v13];
  }
}

void __89__PXSettingsConfigurationsViewController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 deleteConfigurationAtIndex:{objc_msgSend(v2, "item")}];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section == 1)
  {
    item = [pathCopy item];
    if (item <= 3)
    {
      v13 = 0;
      v14 = 0;
      name = off_1E773E008[item];
      goto LABEL_7;
    }
  }

  else if (!section)
  {
    source = [(PXSettingsConfigurationsViewController *)self source];
    v10 = [source configurationAtIndex:{objc_msgSend(pathCopy, "item")}];

    name = [v10 name];
    settings = [v10 settings];
    v13 = [(PXSettingsConfigurationsViewController *)self _titleForSettings:settings];

    v14 = 4;
    goto LABEL_7;
  }

  v13 = 0;
  v14 = 0;
  name = 0;
LABEL_7:
  v16 = [viewCopy dequeueReusableCellWithIdentifier:@"cellReuseIdentifier"];
  if (!v16)
  {
    v16 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"cellReuseIdentifier"];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    detailTextLabel = [v16 detailTextLabel];
    [detailTextLabel setTextColor:secondaryLabelColor];
  }

  textLabel = [v16 textLabel];
  [textLabel setText:name];

  detailTextLabel2 = [v16 detailTextLabel];
  [detailTextLabel2 setText:v13];

  [v16 setAccessoryType:v14];

  return v16;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 1)
  {
    if ([(PXSettingsConfigurationsViewController *)self areAllActionsAvailable])
    {
      numberOfConfigurations = 4;
    }

    else
    {
      numberOfConfigurations = 2;
    }
  }

  else
  {
    if (section)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXSettingsConfigurationsViewController.m" lineNumber:173 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    source = [(PXSettingsConfigurationsViewController *)self source];
    numberOfConfigurations = [source numberOfConfigurations];
  }

  return numberOfConfigurations;
}

- (void)_shareConfigurations:(id)configurations
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = [PXSettingsConfiguration sharableStringForConfigurations:configurations];
  v5 = objc_alloc(MEMORY[0x1E69CD9F8]);
  v19[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v7 = [v5 initWithActivityItems:v6 applicationActivities:0];

  [(PXSettingsConfigurationsViewController *)self presentViewController:v7 animated:1 completion:0];
  view = [(PXSettingsConfigurationsViewController *)self view];
  [view bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [view safeAreaInsets];
  v16 = v15;
  popoverPresentationController = [v7 popoverPresentationController];
  [popoverPresentationController setSourceView:view];

  popoverPresentationController2 = [v7 popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v10, v12, v14, v16}];
}

- (id)_untitledName
{
  source = [(PXSettingsConfigurationsViewController *)self source];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([source numberOfConfigurations] >= 1)
  {
    v4 = 0;
    do
    {
      v5 = [source configurationAtIndex:v4];
      name = [v5 name];
      [v3 addObject:name];

      ++v4;
    }

    while (v4 < [source numberOfConfigurations]);
  }

  v7 = @"Untitled";
  if ([v3 containsObject:@"Untitled"])
  {
    v8 = @"Untitled";
    v9 = 2;
    do
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Untitled %li", v9];

      ++v9;
      v8 = v7;
    }

    while (([v3 containsObject:v7] & 1) != 0);
  }

  return v7;
}

- (id)_titleForSettings:(id)settings
{
  settingsControllerModule = [objc_opt_class() settingsControllerModule];
  v4 = [settingsControllerModule valueForKey:@"title"];

  return v4;
}

- (void)_promptedNameDidChange:(id)change
{
  promptTextField = [(PXSettingsConfigurationsViewController *)self promptTextField];
  text = [promptTextField text];
  v5 = [text length] != 0;
  promptConfirmAction = [(PXSettingsConfigurationsViewController *)self promptConfirmAction];
  [promptConfirmAction setEnabled:v5];
}

- (void)_promptNameWithAlertTitle:(id)title message:(id)message proposedNamed:(id)named confirmationButtonTitle:(id)buttonTitle completionHandler:(id)handler
{
  namedCopy = named;
  handlerCopy = handler;
  v14 = MEMORY[0x1E69DC650];
  buttonTitleCopy = buttonTitle;
  v16 = [v14 alertControllerWithTitle:title message:message preferredStyle:1];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __132__PXSettingsConfigurationsViewController__promptNameWithAlertTitle_message_proposedNamed_confirmationButtonTitle_completionHandler___block_invoke;
  v31[3] = &unk_1E773DF00;
  v32 = namedCopy;
  selfCopy = self;
  v17 = namedCopy;
  [v16 addTextFieldWithConfigurationHandler:v31];
  textFields = [v16 textFields];
  lastObject = [textFields lastObject];
  [(PXSettingsConfigurationsViewController *)self setPromptTextField:lastObject];

  v20 = MEMORY[0x1E69DC648];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __132__PXSettingsConfigurationsViewController__promptNameWithAlertTitle_message_proposedNamed_confirmationButtonTitle_completionHandler___block_invoke_2;
  v29[3] = &unk_1E7741C90;
  v21 = handlerCopy;
  v29[4] = self;
  v30 = v21;
  v22 = [v20 actionWithTitle:buttonTitleCopy style:0 handler:v29];

  [(PXSettingsConfigurationsViewController *)self setPromptConfirmAction:v22];
  promptConfirmAction = [(PXSettingsConfigurationsViewController *)self promptConfirmAction];
  [v16 addAction:promptConfirmAction];

  v24 = MEMORY[0x1E69DC648];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __132__PXSettingsConfigurationsViewController__promptNameWithAlertTitle_message_proposedNamed_confirmationButtonTitle_completionHandler___block_invoke_3;
  v27[3] = &unk_1E7748000;
  v28 = v21;
  v25 = v21;
  v26 = [v24 actionWithTitle:@"Cancel" style:1 handler:v27];
  [v16 addAction:v26];

  [(PXSettingsConfigurationsViewController *)self presentViewController:v16 animated:1 completion:0];
}

void __132__PXSettingsConfigurationsViewController__promptNameWithAlertTitle_message_proposedNamed_confirmationButtonTitle_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setText:v3];
  [v4 setAutocapitalizationType:2];
  [v4 setAutocorrectionType:0];
  [v4 setClearButtonMode:3];
  [v4 addTarget:*(a1 + 40) action:sel__promptedNameDidChange_ forControlEvents:0x20000];
}

void __132__PXSettingsConfigurationsViewController__promptNameWithAlertTitle_message_proposedNamed_confirmationButtonTitle_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) promptTextField];
  v2 = [v3 text];
  (*(v1 + 16))(v1, v2);
}

- (void)setAreAllActionsAvailable:(BOOL)available
{
  if (self->_areAllActionsAvailable != available)
  {
    self->_areAllActionsAvailable = available;
    if ([(PXSettingsConfigurationsViewController *)self isViewLoaded])
    {
      tableView = [(PXSettingsConfigurationsViewController *)self tableView];
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      for (i = 2; i != 4; ++i)
      {
        v7 = [MEMORY[0x1E696AC88] indexPathForItem:i inSection:1];
        [v5 addObject:v7];
      }

      if (available)
      {
        [tableView insertRowsAtIndexPaths:v5 withRowAnimation:100];
      }

      else
      {
        [tableView deleteRowsAtIndexPaths:v5 withRowAnimation:100];
      }
    }
  }
}

- (void)_updateAvailableActions
{
  source = [(PXSettingsConfigurationsViewController *)self source];
  -[PXSettingsConfigurationsViewController setAreAllActionsAvailable:](self, "setAreAllActionsAvailable:", [source numberOfConfigurations] > 0);
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PXSettingsConfigurationsViewController;
  [(PXSettingsConfigurationsViewController *)&v5 viewDidLoad];
  navigationItem = [(PXSettingsConfigurationsViewController *)self navigationItem];
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__handleDone_];
  [navigationItem setRightBarButtonItem:v4];
}

- (PXSettingsConfigurationsViewController)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v11.receiver = self;
  v11.super_class = PXSettingsConfigurationsViewController;
  v6 = [(PXSettingsConfigurationsViewController *)&v11 initWithStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, settings);
    v8 = objc_alloc_init(PXSettingsConfigurationsSource);
    source = v7->_source;
    v7->_source = v8;

    [(PXSettingsConfigurationsSource *)v7->_source setObserver:v7];
    [(PXSettingsConfigurationsViewController *)v7 setTitle:@"Configurations"];
    [(PXSettingsConfigurationsViewController *)v7 _updateAvailableActions];
  }

  return v7;
}

- (PXSettingsConfigurationsViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSettingsConfigurationsViewController.m" lineNumber:55 description:{@"%s is not available as initializer", "-[PXSettingsConfigurationsViewController initWithCoder:]"}];

  abort();
}

- (PXSettingsConfigurationsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSettingsConfigurationsViewController.m" lineNumber:51 description:{@"%s is not available as initializer", "-[PXSettingsConfigurationsViewController initWithNibName:bundle:]"}];

  abort();
}

- (PXSettingsConfigurationsViewController)initWithStyle:(int64_t)style
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSettingsConfigurationsViewController.m" lineNumber:47 description:{@"%s is not available as initializer", "-[PXSettingsConfigurationsViewController initWithStyle:]"}];

  abort();
}

@end