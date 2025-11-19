@interface PUSlideshowSettingsViewController
- (BOOL)_needsUpdate;
- (PUSlideshowSettingsViewController)initWithSession:(id)a3;
- (PUSlideshowSettingsViewControllerDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)PUSlideshowSpeedCell:(id)a3 stepDurationDidChange:(double)a4;
- (void)_didTapDoneButton:(id)a3;
- (void)_invalidateMediaItem;
- (void)_invalidateMusicOn;
- (void)_invalidateNavigationBar;
- (void)_invalidatePreset;
- (void)_invalidateSpec;
- (void)_invalidateTableView;
- (void)_setPendingMediaItem:(id)a3;
- (void)_setPendingPreset:(id)a3;
- (void)_synchronizedChangedSettings;
- (void)_toggleMusic:(id)a3;
- (void)_toggleRepeat:(id)a3;
- (void)_updateIfNeeded;
- (void)_updateMediaItemIfNeeded;
- (void)_updateMusicOnIfNeeded;
- (void)_updateNavigationBarIfNeeded;
- (void)_updatePresetIfNeeded;
- (void)_updateSpecIfNeeded;
- (void)_updateTableViewIfNeeded;
- (void)dealloc;
- (void)musicPicker:(id)a3 didPickMediaItem:(id)a4;
- (void)musicPickerDidFinish:(id)a3;
- (void)popoverPresentationControllerDidDismissPopover:(id)a3;
- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)themePicker:(id)a3 didPickPreset:(id)a4;
- (void)themePickerDidFinish:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewControllerSpec:(id)a3 didChange:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewModel:(id)a3 didChange:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PUSlideshowSettingsViewController

- (PUSlideshowSettingsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)PUSlideshowSpeedCell:(id)a3 stepDurationDidChange:(double)a4
{
  settingsViewModel = self->_settingsViewModel;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __80__PUSlideshowSettingsViewController_PUSlideshowSpeedCell_stepDurationDidChange___block_invoke;
  v5[3] = &unk_1E7B7FF70;
  v5[4] = self;
  *&v5[5] = a4;
  [(PUViewModel *)settingsViewModel performChanges:v5];
}

- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __111__PUSlideshowSettingsViewController_presentationController_willPresentWithAdaptiveStyle_transitionCoordinator___block_invoke;
  v9[3] = &unk_1E7B7E238;
  objc_copyWeak(&v10, &location);
  [v8 animateAlongsideTransition:0 completion:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __111__PUSlideshowSettingsViewController_presentationController_willPresentWithAdaptiveStyle_transitionCoordinator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateSpec];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _updateIfNeeded];
}

- (void)popoverPresentationControllerDidDismissPopover:(id)a3
{
  v4 = a3;
  [(PUSlideshowSettingsViewController *)self _synchronizedChangedSettings];
  [v4 setDelegate:0];
}

- (void)viewControllerSpec:(id)a3 didChange:(id)a4
{
  if ([a4 traitCollectionChanged])
  {
    [(PUSlideshowSettingsViewController *)self _invalidateTableView];
    [(PUSlideshowSettingsViewController *)self _invalidateNavigationBar];

    [(PUSlideshowSettingsViewController *)self _updateIfNeeded];
  }
}

- (void)musicPickerDidFinish:(id)a3
{
  v4 = [(PUSlideshowSettingsViewController *)self navigationController];
  v3 = [v4 popViewControllerAnimated:1];
}

- (void)musicPicker:(id)a3 didPickMediaItem:(id)a4
{
  v5 = a4;
  [(PUSlideshowSettingsViewController *)self _setPendingMediaItem:v5];
  settingsViewModel = self->_settingsViewModel;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__PUSlideshowSettingsViewController_musicPicker_didPickMediaItem___block_invoke;
  v8[3] = &unk_1E7B80C38;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [(PUViewModel *)settingsViewModel performChanges:v8];
}

- (void)themePickerDidFinish:(id)a3
{
  v4 = [(PUSlideshowSettingsViewController *)self navigationController];
  v3 = [v4 popViewControllerAnimated:1];
}

- (void)themePicker:(id)a3 didPickPreset:(id)a4
{
  v7 = a4;
  v5 = [(PUSlideshowSettingsViewModel *)self->_settingsViewModel mediaItem];
  if ([v5 type] == 2)
  {
    v6 = [[PUSlideshowMediaItem alloc] initWitPreset:v7];
    [(PUSlideshowSettingsViewController *)self _setPendingMediaItem:v6];
  }

  [(PUSlideshowSettingsViewController *)self _setPendingPreset:v7];
}

- (void)viewModel:(id)a3 didChange:(id)a4
{
  if (self->_settingsViewModel == a3 && [a4 musicOnDidChange])
  {
    [(PUSlideshowSettingsViewController *)self _invalidateMusicOn];

    [(PUSlideshowSettingsViewController *)self _updateIfNeeded];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v6 section];
  if (v7 == 1)
  {
    v8 = objc_alloc_init(PUSlideshowMusicViewController);
    v11 = [(PUSlideshowSettingsViewController *)self _pendingMediaItem];
    [(PUSlideshowMusicViewController *)v8 setCurrentMediaItem:v11];

    [(PUSlideshowMusicViewController *)v8 setDelegate:self];
    if (![(PUSlideshowSettingsViewControllerSpec *)self->_spec shouldUseBlurredBackground])
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (v7)
  {
    goto LABEL_6;
  }

  v8 = objc_alloc_init(PUSlideshowThemeViewController);
  v9 = [(PUSlideshowSettingsViewController *)self _pendingPreset];
  [(PUSlideshowMusicViewController *)v8 setCurrentPreset:v9];

  [(PUSlideshowMusicViewController *)v8 setDelegate:self];
  if ([(PUSlideshowSettingsViewControllerSpec *)self->_spec shouldUseBlurredBackground])
  {
LABEL_4:
    self->_shouldHideTableViewWhenViewWillDisappear = 1;
  }

LABEL_5:
  v10 = [(PUSlideshowSettingsViewController *)self navigationController];
  [v10 pushViewController:v8 animated:1];

LABEL_6:
  [v12 deselectRowAtIndexPath:v6 animated:0];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 section];
  v10 = [(PUSlideshowSettingsViewController *)self _pendingPreset];
  if (v9 <= 1)
  {
    if (!v9)
    {
      v11 = [v7 dequeueReusableCellWithIdentifier:@"SlideshowSettingsViewControllerSubtitleCellIdentifier"];
      if (!v11)
      {
        v11 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"SlideshowSettingsViewControllerSubtitleCellIdentifier"];
        [v11 setAccessoryType:1];
        v20 = [v11 detailTextLabel];
        v21 = [v11 textLabel];
        v22 = [v21 textColor];
        [v20 setTextColor:v22];
      }

      v23 = [v11 textLabel];
      v24 = PULocalizedString(@"SLIDESHOW_SETTINGS_THEME");
      [v23 setText:v24];

      v17 = 1040;
      goto LABEL_14;
    }

    if (v9 == 1)
    {
      v11 = [v7 dequeueReusableCellWithIdentifier:@"SlideshowSettingsViewControllerSubtitleCellIdentifier"];
      if (!v11)
      {
        v11 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"SlideshowSettingsViewControllerSubtitleCellIdentifier"];
        [v11 setAccessoryType:1];
        v12 = [v11 detailTextLabel];
        v13 = [v11 textLabel];
        v14 = [v13 textColor];
        [v12 setTextColor:v14];
      }

      v15 = [v11 textLabel];
      v16 = PULocalizedString(@"SLIDESHOW_SETTINGS_SELECTED_MUSIC");
      [v15 setText:v16];

      v17 = 1048;
LABEL_14:
      v19 = [*(&self->super.super.super.isa + v17) localizedName];
      v25 = [v11 detailTextLabel];
      [v25 setText:v19];
LABEL_19:

      goto LABEL_23;
    }

LABEL_29:
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"PUSlideshowSettingsViewController.m" lineNumber:408 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v9 == 2)
  {
    v26 = [v7 dequeueReusableCellWithIdentifier:@"SlideshowSettingsViewControllerRepeatCellIdentifier"];
    if (v26)
    {
      v11 = v26;
      v19 = [v26 accessoryView];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"SlideshowSettingsViewControllerRepeatCellIdentifier"];
      v19 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
      [(PUSlideshowSpeedCell *)v19 setOn:[(PUSlideshowSettingsViewModel *)self->_settingsViewModel shouldRepeat]];
      [(PUSlideshowSpeedCell *)v19 addTarget:self action:sel__toggleRepeat_ forControlEvents:4096];
      [v11 setAccessoryView:v19];
      [v11 setSelectionStyle:0];
    }

    -[PUSlideshowSpeedCell setEnabled:](v19, "setEnabled:", [v10 supportsSettingType:1]);
    v25 = [v11 textLabel];
    v27 = PULocalizedString(@"SLIDESHOW_SETTINGS_REPEAT");
    [v25 setText:v27];

    goto LABEL_19;
  }

  if (v9 != 3)
  {
    goto LABEL_29;
  }

  v18 = [v7 dequeueReusableCellWithIdentifier:@"SlideshowSettingsViewControllerSpeedCellIdentifier"];
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v28 = [[PUSlideshowSpeedCell alloc] initWithStyle:0 reuseIdentifier:@"SlideshowSettingsViewControllerSpeedCellIdentifier"];
    v29 = [MEMORY[0x1E69DC888] clearColor];
    [(PUSlideshowSpeedCell *)v28 setBackgroundColor:v29];

    [(PUSlideshowSpeedCell *)v28 setDelegate:self];
    v19 = v28;
    if (!v19)
    {
      v32 = [MEMORY[0x1E696AAA8] currentHandler];
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      [v32 handleFailureInMethod:a2 object:self file:@"PUSlideshowSettingsViewController.m" lineNumber:397 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"cell", v34}];
LABEL_28:

      goto LABEL_22;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    v35 = objc_opt_class();
    v34 = NSStringFromClass(v35);
    v36 = [(PUSlideshowSpeedCell *)v19 px_descriptionForAssertionMessage];
    [v32 handleFailureInMethod:a2 object:self file:@"PUSlideshowSettingsViewController.m" lineNumber:397 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"cell", v34, v36}];

    goto LABEL_28;
  }

LABEL_22:
  [(PUSlideshowSettingsViewModel *)self->_settingsViewModel stepDuration];
  [(PUSlideshowSpeedCell *)v19 setStepDuration:?];
  -[PUSlideshowSpeedCell setEnabled:](v19, "setEnabled:", [v10 supportsSettingType:2]);
  [(PUSlideshowSpeedCell *)v19 setNeedsUpdateConstraints];
  [(PUSlideshowSpeedCell *)v19 updateConstraintsIfNeeded];
  v11 = v19;
LABEL_23:

  v30 = [(PUSlideshowSettingsViewControllerSpec *)self->_spec cellBackgroundColor];
  [v11 setBackgroundColor:v30];

  [v11 setNeedsLayout];
  [v11 layoutIfNeeded];

  return v11;
}

- (void)_toggleMusic:(id)a3
{
  v4 = [a3 isOn];
  settingsViewModel = self->_settingsViewModel;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__PUSlideshowSettingsViewController__toggleMusic___block_invoke;
  v6[3] = &unk_1E7B7FF98;
  v6[4] = self;
  v7 = v4;
  [(PUViewModel *)settingsViewModel performChanges:v6];
}

- (void)_toggleRepeat:(id)a3
{
  v4 = [a3 isOn];
  settingsViewModel = self->_settingsViewModel;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__PUSlideshowSettingsViewController__toggleRepeat___block_invoke;
  v6[3] = &unk_1E7B7FF98;
  v6[4] = self;
  v7 = v4;
  [(PUViewModel *)settingsViewModel performChanges:v6];
}

- (void)_didTapDoneButton:(id)a3
{
  [(PUSlideshowSettingsViewController *)self _synchronizedChangedSettings];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 settingsDidFinished:self];
    }
  }
}

- (void)_synchronizedChangedSettings
{
  pendingPreset = self->__pendingPreset;
  if (pendingPreset)
  {
    v4 = [(PUSlideshowSettingsViewModel *)self->_settingsViewModel preset];
    v5 = [(OKProducerPreset *)pendingPreset isEqual:v4];

    if ((v5 & 1) == 0)
    {
      v6 = [(PUSlideshowSession *)self->_session viewModel];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __65__PUSlideshowSettingsViewController__synchronizedChangedSettings__block_invoke;
      v13[3] = &unk_1E7B80DD0;
      v7 = v6;
      v14 = v7;
      [v7 performChanges:v13];
      pendingMediaItem = self->__pendingMediaItem;
      if (pendingMediaItem)
      {
        v9 = [(PUSlideshowSettingsViewModel *)self->_settingsViewModel mediaItem];
        LOBYTE(pendingMediaItem) = ![(PUSlideshowMediaItem *)pendingMediaItem isEqual:v9];
      }

      settingsViewModel = self->_settingsViewModel;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __65__PUSlideshowSettingsViewController__synchronizedChangedSettings__block_invoke_2;
      v11[3] = &unk_1E7B7FF98;
      v11[4] = self;
      v12 = pendingMediaItem;
      [(PUViewModel *)settingsViewModel performChanges:v11];
    }
  }
}

uint64_t __65__PUSlideshowSettingsViewController__synchronizedChangedSettings__block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 1000) setPreset:*(*(a1 + 32) + 1040)];
  if (*(a1 + 40) == 1)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 1000);
    v5 = *(v3 + 1048);

    return [v4 setMediaItem:v5];
  }

  return result;
}

- (void)_updateMusicOnIfNeeded
{
  if ([(PUSlideshowSettingsViewController *)self _needsUpdateMusicOn])
  {
    [(PUSlideshowSettingsViewController *)self _setNeedsUpdateMusicOn:0];
    v3 = [MEMORY[0x1E696AC90] indexSetWithIndex:1];
    [(UITableView *)self->_tableView reloadSections:v3 withRowAnimation:100];
  }
}

- (void)_updateMediaItemIfNeeded
{
  if ([(PUSlideshowSettingsViewController *)self _needsUpdateMediaItem])
  {
    [(PUSlideshowSettingsViewController *)self _setNeedsUpdateMediaItem:0];
    v3 = [MEMORY[0x1E696AC90] indexSetWithIndex:1];
    [(UITableView *)self->_tableView reloadSections:v3 withRowAnimation:100];
  }
}

- (void)_updatePresetIfNeeded
{
  if ([(PUSlideshowSettingsViewController *)self _needsUpdatePreset])
  {
    [(PUSlideshowSettingsViewController *)self _setNeedsUpdatePreset:0];
    tableView = self->_tableView;

    [(UITableView *)tableView reloadData];
  }
}

- (void)_updateNavigationBarIfNeeded
{
  if ([(PUSlideshowSettingsViewController *)self _needsUpdateNavigationBar])
  {
    [(PUSlideshowSettingsViewController *)self _setNeedsUpdateNavigationBar:0];
    v3 = [(PUSlideshowSettingsViewControllerSpec *)self->_spec shouldShowNavigationBar];
    v4 = [(PUSlideshowSettingsViewController *)self navigationController];
    [v4 setNavigationBarHidden:!v3];
  }
}

- (void)_updateTableViewIfNeeded
{
  if ([(PUSlideshowSettingsViewController *)self _needsUpdateTableView])
  {
    [(PUSlideshowSettingsViewController *)self _setNeedsUpdateTableView:0];
    tableView = self->_tableView;
    v4 = [(PUSlideshowSettingsViewControllerSpec *)self->_spec tableViewBackgroundColor];
    [(UITableView *)tableView setBackgroundColor:v4];

    v5 = self->_tableView;
    v6 = [(PUSlideshowSettingsViewControllerSpec *)self->_spec tableViewHeaderView];
    [(UITableView *)v5 setTableHeaderView:v6];

    v7 = self->_tableView;

    [(UITableView *)v7 reloadData];
  }
}

- (void)_updateSpecIfNeeded
{
  if ([(PUSlideshowSettingsViewController *)self _needsUpdateSpec])
  {
    [(PUSlideshowSettingsViewController *)self _setNeedsUpdateSpec:0];
    v3 = [(PUSlideshowSettingsViewController *)self presentingViewController];
    v4 = [v3 traitCollection];

    spec = self->_spec;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__PUSlideshowSettingsViewController__updateSpecIfNeeded__block_invoke;
    v7[3] = &unk_1E7B80C38;
    v7[4] = self;
    v8 = v4;
    v6 = v4;
    [(PUViewControllerSpec *)spec performChanges:v7];
  }
}

- (void)_updateIfNeeded
{
  if ([(PUSlideshowSettingsViewController *)self _needsUpdate])
  {
    [(PUSlideshowSettingsViewController *)self _updateSpecIfNeeded];
    [(PUSlideshowSettingsViewController *)self _updateTableViewIfNeeded];
    [(PUSlideshowSettingsViewController *)self _updateNavigationBarIfNeeded];
    [(PUSlideshowSettingsViewController *)self _updatePresetIfNeeded];
    [(PUSlideshowSettingsViewController *)self _updateMediaItemIfNeeded];
    [(PUSlideshowSettingsViewController *)self _updateMusicOnIfNeeded];
    if ([(PUSlideshowSettingsViewController *)self _needsUpdate])
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:a2 object:self file:@"PUSlideshowSettingsViewController.m" lineNumber:213 description:@"updates still needed after an update cycle"];
    }
  }
}

- (void)_invalidateMusicOn
{
  [(PUSlideshowSettingsViewController *)self _setNeedsUpdateMusicOn:1];

  [(PUSlideshowSettingsViewController *)self _setNeedsUpdate];
}

- (void)_invalidateMediaItem
{
  [(PUSlideshowSettingsViewController *)self _setNeedsUpdateMediaItem:1];

  [(PUSlideshowSettingsViewController *)self _setNeedsUpdate];
}

- (void)_invalidatePreset
{
  [(PUSlideshowSettingsViewController *)self _setNeedsUpdatePreset:1];

  [(PUSlideshowSettingsViewController *)self _setNeedsUpdate];
}

- (void)_invalidateNavigationBar
{
  [(PUSlideshowSettingsViewController *)self _setNeedsUpdateNavigationBar:1];

  [(PUSlideshowSettingsViewController *)self _setNeedsUpdate];
}

- (void)_invalidateTableView
{
  [(PUSlideshowSettingsViewController *)self _setNeedsUpdateTableView:1];

  [(PUSlideshowSettingsViewController *)self _setNeedsUpdate];
}

- (void)_invalidateSpec
{
  [(PUSlideshowSettingsViewController *)self _setNeedsUpdateSpec:1];

  [(PUSlideshowSettingsViewController *)self _setNeedsUpdate];
}

- (BOOL)_needsUpdate
{
  if ([(PUSlideshowSettingsViewController *)self _needsUpdateSpec]|| [(PUSlideshowSettingsViewController *)self _needsUpdateTableView]|| [(PUSlideshowSettingsViewController *)self _needsUpdateNavigationBar]|| [(PUSlideshowSettingsViewController *)self _needsUpdatePreset])
  {
    return 1;
  }

  return [(PUSlideshowSettingsViewController *)self _needsUpdateMusicOn];
}

- (void)_setPendingMediaItem:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->__pendingMediaItem] & 1) == 0)
  {
    objc_storeStrong(&self->__pendingMediaItem, a3);
    [(PUSlideshowSettingsViewController *)self _invalidateMediaItem];
    [(PUSlideshowSettingsViewController *)self _updateIfNeeded];
  }
}

- (void)_setPendingPreset:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->__pendingPreset] & 1) == 0)
  {
    objc_storeStrong(&self->__pendingPreset, a3);
    [(PUSlideshowSettingsViewController *)self _invalidatePreset];
    [(PUSlideshowSettingsViewController *)self _updateIfNeeded];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = PUSlideshowSettingsViewController;
  [(PUSlideshowSettingsViewController *)&v4 traitCollectionDidChange:a3];
  [(PUSlideshowSettingsViewController *)self _invalidateSpec];
  [(PUSlideshowSettingsViewController *)self _updateIfNeeded];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUSlideshowSettingsViewController;
  [(PUSlideshowSettingsViewController *)&v3 viewDidLayoutSubviews];
  [(UITableView *)self->_tableView contentSize];
  [(PUSlideshowSettingsViewController *)self setPreferredContentSize:?];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PUSlideshowSettingsViewController;
  [(PUSlideshowSettingsViewController *)&v4 viewWillDisappear:a3];
  [(UITableView *)self->_tableView setHidden:self->_shouldHideTableViewWhenViewWillDisappear];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PUSlideshowSettingsViewController;
  [(PUSlideshowSettingsViewController *)&v6 viewWillAppear:a3];
  self->_shouldHideTableViewWhenViewWillDisappear = 0;
  [(UITableView *)self->_tableView setHidden:0];
  v4 = [(PUSlideshowSettingsViewController *)self navigationController];
  v5 = [v4 popoverPresentationController];

  [v5 setDelegate:self];
  [(PUSlideshowSettingsViewController *)self _invalidateSpec];
  [(PUSlideshowSettingsViewController *)self _invalidateNavigationBar];
  [(PUSlideshowSettingsViewController *)self _updateIfNeeded];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = PUSlideshowSettingsViewController;
  [(PUSlideshowSettingsViewController *)&v12 viewDidLoad];
  v3 = [(PUSlideshowSettingsViewController *)self navigationItem];
  v4 = PULocalizedString(@"SLIDESHOW_SETTINGS_NAVBAR_TITLE");
  [v3 setTitle:v4];

  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__didTapDoneButton_];
  v6 = [(PUSlideshowSettingsViewController *)self navigationItem];
  [v6 setRightBarButtonItem:v5];

  v7 = objc_alloc(MEMORY[0x1E69DD020]);
  v8 = [(PUSlideshowSettingsViewController *)self view];
  [v8 bounds];
  v9 = [v7 initWithFrame:?];
  tableView = self->_tableView;
  self->_tableView = v9;

  [(UITableView *)self->_tableView setAutoresizingMask:18];
  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDataSource:self];
  v11 = [(PUSlideshowSettingsViewController *)self view];
  [v11 addSubview:self->_tableView];
}

- (void)dealloc
{
  [(PUSlideshowSettingsViewModel *)self->_settingsViewModel unregisterChangeObserver:self];
  [(PUViewControllerSpec *)self->_spec unregisterChangeObserver:self];
  v3.receiver = self;
  v3.super_class = PUSlideshowSettingsViewController;
  [(PUSlideshowSettingsViewController *)&v3 dealloc];
}

- (PUSlideshowSettingsViewController)initWithSession:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = PUSlideshowSettingsViewController;
  v6 = [(PUSlideshowSettingsViewController *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, a3);
    v8 = [(PUSlideshowSession *)v7->_session settingsViewModel];
    settingsViewModel = v7->_settingsViewModel;
    v7->_settingsViewModel = v8;

    [(PUSlideshowSettingsViewModel *)v7->_settingsViewModel registerChangeObserver:v7];
    v10 = objc_alloc_init(PUSlideshowSettingsViewControllerSpec);
    spec = v7->_spec;
    v7->_spec = v10;

    [(PUViewControllerSpec *)v7->_spec registerChangeObserver:v7];
    v12 = [(PUSlideshowSettingsViewModel *)v7->_settingsViewModel preset];
    [(PUSlideshowSettingsViewController *)v7 _setPendingPreset:v12];

    v13 = [(PUSlideshowSettingsViewModel *)v7->_settingsViewModel mediaItem];
    [(PUSlideshowSettingsViewController *)v7 _setPendingMediaItem:v13];
  }

  return v7;
}

@end