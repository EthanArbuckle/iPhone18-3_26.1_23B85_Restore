@interface PXSettingsConfigurationsViewController
- (PXSettingsConfigurationsViewController)initWithCoder:(id)a3;
- (PXSettingsConfigurationsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PXSettingsConfigurationsViewController)initWithSettings:(id)a3;
- (PXSettingsConfigurationsViewController)initWithStyle:(int64_t)a3;
- (id)_titleForSettings:(id)a3;
- (id)_untitledName;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_promptNameWithAlertTitle:(id)a3 message:(id)a4 proposedNamed:(id)a5 confirmationButtonTitle:(id)a6 completionHandler:(id)a7;
- (void)_promptedNameDidChange:(id)a3;
- (void)_shareConfigurations:(id)a3;
- (void)_updateAvailableActions;
- (void)setAreAllActionsAvailable:(BOOL)a3;
- (void)settingsConfigurationSource:(id)a3 didChange:(id)a4;
- (void)settingsConfigurationSource:(id)a3 performChanges:(id)a4;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation PXSettingsConfigurationsViewController

- (void)settingsConfigurationSource:(id)a3 didChange:(id)a4
{
  v5 = a4;
  if ([(PXSettingsConfigurationsViewController *)self isViewLoaded])
  {
    v6 = [(PXSettingsConfigurationsViewController *)self tableView];
    if ([v5 hasIncrementalChanges] && !objc_msgSend(v5, "hasMoves"))
    {
      v8 = [v5 removedIndexes];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __80__PXSettingsConfigurationsViewController_settingsConfigurationSource_didChange___block_invoke;
      v17[3] = &unk_1E774C138;
      v9 = v6;
      v18 = v9;
      [v8 enumerateIndexesUsingBlock:v17];

      v10 = [v5 insertedIndexes];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __80__PXSettingsConfigurationsViewController_settingsConfigurationSource_didChange___block_invoke_2;
      v15[3] = &unk_1E774C138;
      v11 = v9;
      v16 = v11;
      [v10 enumerateIndexesUsingBlock:v15];

      v12 = [v5 changedIndexes];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __80__PXSettingsConfigurationsViewController_settingsConfigurationSource_didChange___block_invoke_3;
      v13[3] = &unk_1E774C138;
      v14 = v11;
      [v12 enumerateIndexesUsingBlock:v13];
    }

    else
    {
      v7 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
      [v6 reloadSections:v7 withRowAnimation:100];
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

- (void)settingsConfigurationSource:(id)a3 performChanges:(id)a4
{
  v7 = a4;
  if ([(PXSettingsConfigurationsViewController *)self isViewLoaded]&& ([(PXSettingsConfigurationsViewController *)self tableView], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    [v5 performBatchUpdates:v7 completion:0];
  }

  else
  {
    v7[2]();
  }
}

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  v6 = a4;
  if ([v6 section])
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"PXSettingsConfigurationsViewController.m" lineNumber:318 description:{@"Invalid parameter not satisfying: %@", @"indexPath.section == SectionConfigurations"}];
  }

  v7 = [(PXSettingsConfigurationsViewController *)self source];
  v8 = [v6 item];

  v9 = [v7 configurationAtIndex:v8];
  v10 = MEMORY[0x1E69DC650];
  v11 = [v9 name];
  v12 = [v9 settings];
  v13 = [(PXSettingsConfigurationsViewController *)self _titleForSettings:v12];
  v14 = [v10 alertControllerWithTitle:v11 message:v13 preferredStyle:1];

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
  v20 = v7;
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if (v8 != 1)
  {
    if (!v8)
    {
      v9 = [(PXSettingsConfigurationsViewController *)self source];
      v10 = [v9 configurationAtIndex:{objc_msgSend(v7, "item")}];

      v11 = [v10 settings];
      v12 = [v10 archive];
      [v11 restoreFromArchiveDictionary:v12];

LABEL_23:
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  v13 = [v7 item];
  if (v13 <= 1)
  {
    if (!v13)
    {
      v23 = [(PXSettingsConfigurationsViewController *)self settings];
      v24 = objc_alloc(MEMORY[0x1E696AEC0]);
      v25 = [(PXSettingsConfigurationsViewController *)self _titleForSettings:v23];
      v10 = [v24 initWithFormat:@"Using current values for the settings ”%@”", v25];

      v26 = [(PXSettingsConfigurationsViewController *)self _untitledName];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __76__PXSettingsConfigurationsViewController_tableView_didSelectRowAtIndexPath___block_invoke;
      v38[3] = &unk_1E773DF50;
      v39 = v23;
      v40 = self;
      v27 = v23;
      [(PXSettingsConfigurationsViewController *)self _promptNameWithAlertTitle:@"New Configuration" message:v10 proposedNamed:v26 confirmationButtonTitle:@"Create" completionHandler:v38];

      goto LABEL_23;
    }

    if (v13 != 1)
    {
      goto LABEL_24;
    }

    v14 = [MEMORY[0x1E69DCD50] generalPasteboard];
    v10 = [v14 string];

    v15 = [PXSettingsConfiguration configurationsFromSharableString:v10];
    if ([v15 count])
    {
      v16 = [v15 count];
      v17 = MEMORY[0x1E696AEC0];
      if (v16 == 1)
      {
        v18 = [v15 firstObject];
        v19 = [v18 name];
        v20 = [v17 stringWithFormat:@"Import configuration ”%@”?", v19];
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

  if (v13 == 2)
  {
    v10 = [(PXSettingsConfigurationsViewController *)self source];
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([v10 numberOfConfigurations] >= 1)
    {
      v28 = 0;
      do
      {
        v29 = [v10 configurationAtIndex:v28];
        [v15 addObject:v29];

        ++v28;
      }

      while (v28 < [v10 numberOfConfigurations]);
    }

    [(PXSettingsConfigurationsViewController *)self _shareConfigurations:v15];
    goto LABEL_22;
  }

  if (v13 == 3)
  {
    v10 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Delete All Configurations?" message:0 preferredStyle:1];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __76__PXSettingsConfigurationsViewController_tableView_didSelectRowAtIndexPath___block_invoke_5;
    v35[3] = &unk_1E7749600;
    v35[4] = self;
    v21 = [MEMORY[0x1E69DC648] actionWithTitle:@"Delete All" style:2 handler:v35];
    [v10 addAction:v21];

    v22 = [MEMORY[0x1E69DC648] actionWithTitle:@"Cancel" style:1 handler:0];
    [v10 addAction:v22];

    [(PXSettingsConfigurationsViewController *)self presentViewController:v10 animated:1 completion:0];
    goto LABEL_23;
  }

LABEL_24:
  [v6 deselectRowAtIndexPath:v7 animated:1];
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

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 section];
  if (v9)
  {
    if (v9 != 1)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PXSettingsConfigurationsViewController.m" lineNumber:242 description:@"Code which should be unreachable has been reached"];

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

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v9 section];
  if (v10)
  {
    if (v10 == 1)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"PXSettingsConfigurationsViewController.m" lineNumber:228 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  else
  {
    v12 = [(PXSettingsConfigurationsViewController *)self source];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __89__PXSettingsConfigurationsViewController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke;
    v13[3] = &unk_1E773DF28;
    v14 = v9;
    [v12 performChanges:v13];
  }
}

void __89__PXSettingsConfigurationsViewController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 deleteConfigurationAtIndex:{objc_msgSend(v2, "item")}];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if (v8 == 1)
  {
    v15 = [v7 item];
    if (v15 <= 3)
    {
      v13 = 0;
      v14 = 0;
      v11 = off_1E773E008[v15];
      goto LABEL_7;
    }
  }

  else if (!v8)
  {
    v9 = [(PXSettingsConfigurationsViewController *)self source];
    v10 = [v9 configurationAtIndex:{objc_msgSend(v7, "item")}];

    v11 = [v10 name];
    v12 = [v10 settings];
    v13 = [(PXSettingsConfigurationsViewController *)self _titleForSettings:v12];

    v14 = 4;
    goto LABEL_7;
  }

  v13 = 0;
  v14 = 0;
  v11 = 0;
LABEL_7:
  v16 = [v6 dequeueReusableCellWithIdentifier:@"cellReuseIdentifier"];
  if (!v16)
  {
    v16 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"cellReuseIdentifier"];
    v17 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v18 = [v16 detailTextLabel];
    [v18 setTextColor:v17];
  }

  v19 = [v16 textLabel];
  [v19 setText:v11];

  v20 = [v16 detailTextLabel];
  [v20 setText:v13];

  [v16 setAccessoryType:v14];

  return v16;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v7 = a3;
  if (a4 == 1)
  {
    if ([(PXSettingsConfigurationsViewController *)self areAllActionsAvailable])
    {
      v9 = 4;
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    if (a4)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"PXSettingsConfigurationsViewController.m" lineNumber:173 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v8 = [(PXSettingsConfigurationsViewController *)self source];
    v9 = [v8 numberOfConfigurations];
  }

  return v9;
}

- (void)_shareConfigurations:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = [PXSettingsConfiguration sharableStringForConfigurations:a3];
  v5 = objc_alloc(MEMORY[0x1E69CD9F8]);
  v19[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v7 = [v5 initWithActivityItems:v6 applicationActivities:0];

  [(PXSettingsConfigurationsViewController *)self presentViewController:v7 animated:1 completion:0];
  v8 = [(PXSettingsConfigurationsViewController *)self view];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [v8 safeAreaInsets];
  v16 = v15;
  v17 = [v7 popoverPresentationController];
  [v17 setSourceView:v8];

  v18 = [v7 popoverPresentationController];
  [v18 setSourceRect:{v10, v12, v14, v16}];
}

- (id)_untitledName
{
  v2 = [(PXSettingsConfigurationsViewController *)self source];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v2 numberOfConfigurations] >= 1)
  {
    v4 = 0;
    do
    {
      v5 = [v2 configurationAtIndex:v4];
      v6 = [v5 name];
      [v3 addObject:v6];

      ++v4;
    }

    while (v4 < [v2 numberOfConfigurations]);
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

- (id)_titleForSettings:(id)a3
{
  v3 = [objc_opt_class() settingsControllerModule];
  v4 = [v3 valueForKey:@"title"];

  return v4;
}

- (void)_promptedNameDidChange:(id)a3
{
  v7 = [(PXSettingsConfigurationsViewController *)self promptTextField];
  v4 = [v7 text];
  v5 = [v4 length] != 0;
  v6 = [(PXSettingsConfigurationsViewController *)self promptConfirmAction];
  [v6 setEnabled:v5];
}

- (void)_promptNameWithAlertTitle:(id)a3 message:(id)a4 proposedNamed:(id)a5 confirmationButtonTitle:(id)a6 completionHandler:(id)a7
{
  v12 = a5;
  v13 = a7;
  v14 = MEMORY[0x1E69DC650];
  v15 = a6;
  v16 = [v14 alertControllerWithTitle:a3 message:a4 preferredStyle:1];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __132__PXSettingsConfigurationsViewController__promptNameWithAlertTitle_message_proposedNamed_confirmationButtonTitle_completionHandler___block_invoke;
  v31[3] = &unk_1E773DF00;
  v32 = v12;
  v33 = self;
  v17 = v12;
  [v16 addTextFieldWithConfigurationHandler:v31];
  v18 = [v16 textFields];
  v19 = [v18 lastObject];
  [(PXSettingsConfigurationsViewController *)self setPromptTextField:v19];

  v20 = MEMORY[0x1E69DC648];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __132__PXSettingsConfigurationsViewController__promptNameWithAlertTitle_message_proposedNamed_confirmationButtonTitle_completionHandler___block_invoke_2;
  v29[3] = &unk_1E7741C90;
  v21 = v13;
  v29[4] = self;
  v30 = v21;
  v22 = [v20 actionWithTitle:v15 style:0 handler:v29];

  [(PXSettingsConfigurationsViewController *)self setPromptConfirmAction:v22];
  v23 = [(PXSettingsConfigurationsViewController *)self promptConfirmAction];
  [v16 addAction:v23];

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

- (void)setAreAllActionsAvailable:(BOOL)a3
{
  if (self->_areAllActionsAvailable != a3)
  {
    self->_areAllActionsAvailable = a3;
    if ([(PXSettingsConfigurationsViewController *)self isViewLoaded])
    {
      v8 = [(PXSettingsConfigurationsViewController *)self tableView];
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      for (i = 2; i != 4; ++i)
      {
        v7 = [MEMORY[0x1E696AC88] indexPathForItem:i inSection:1];
        [v5 addObject:v7];
      }

      if (a3)
      {
        [v8 insertRowsAtIndexPaths:v5 withRowAnimation:100];
      }

      else
      {
        [v8 deleteRowsAtIndexPaths:v5 withRowAnimation:100];
      }
    }
  }
}

- (void)_updateAvailableActions
{
  v3 = [(PXSettingsConfigurationsViewController *)self source];
  -[PXSettingsConfigurationsViewController setAreAllActionsAvailable:](self, "setAreAllActionsAvailable:", [v3 numberOfConfigurations] > 0);
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PXSettingsConfigurationsViewController;
  [(PXSettingsConfigurationsViewController *)&v5 viewDidLoad];
  v3 = [(PXSettingsConfigurationsViewController *)self navigationItem];
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__handleDone_];
  [v3 setRightBarButtonItem:v4];
}

- (PXSettingsConfigurationsViewController)initWithSettings:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PXSettingsConfigurationsViewController;
  v6 = [(PXSettingsConfigurationsViewController *)&v11 initWithStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, a3);
    v8 = objc_alloc_init(PXSettingsConfigurationsSource);
    source = v7->_source;
    v7->_source = v8;

    [(PXSettingsConfigurationsSource *)v7->_source setObserver:v7];
    [(PXSettingsConfigurationsViewController *)v7 setTitle:@"Configurations"];
    [(PXSettingsConfigurationsViewController *)v7 _updateAvailableActions];
  }

  return v7;
}

- (PXSettingsConfigurationsViewController)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXSettingsConfigurationsViewController.m" lineNumber:55 description:{@"%s is not available as initializer", "-[PXSettingsConfigurationsViewController initWithCoder:]"}];

  abort();
}

- (PXSettingsConfigurationsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PXSettingsConfigurationsViewController.m" lineNumber:51 description:{@"%s is not available as initializer", "-[PXSettingsConfigurationsViewController initWithNibName:bundle:]"}];

  abort();
}

- (PXSettingsConfigurationsViewController)initWithStyle:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXSettingsConfigurationsViewController.m" lineNumber:47 description:{@"%s is not available as initializer", "-[PXSettingsConfigurationsViewController initWithStyle:]"}];

  abort();
}

@end