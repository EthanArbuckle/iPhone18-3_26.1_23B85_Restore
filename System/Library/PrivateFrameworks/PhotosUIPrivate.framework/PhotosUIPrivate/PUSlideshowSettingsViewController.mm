@interface PUSlideshowSettingsViewController
- (BOOL)_needsUpdate;
- (PUSlideshowSettingsViewController)initWithSession:(id)session;
- (PUSlideshowSettingsViewControllerDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)PUSlideshowSpeedCell:(id)cell stepDurationDidChange:(double)change;
- (void)_didTapDoneButton:(id)button;
- (void)_invalidateMediaItem;
- (void)_invalidateMusicOn;
- (void)_invalidateNavigationBar;
- (void)_invalidatePreset;
- (void)_invalidateSpec;
- (void)_invalidateTableView;
- (void)_setPendingMediaItem:(id)item;
- (void)_setPendingPreset:(id)preset;
- (void)_synchronizedChangedSettings;
- (void)_toggleMusic:(id)music;
- (void)_toggleRepeat:(id)repeat;
- (void)_updateIfNeeded;
- (void)_updateMediaItemIfNeeded;
- (void)_updateMusicOnIfNeeded;
- (void)_updateNavigationBarIfNeeded;
- (void)_updatePresetIfNeeded;
- (void)_updateSpecIfNeeded;
- (void)_updateTableViewIfNeeded;
- (void)dealloc;
- (void)musicPicker:(id)picker didPickMediaItem:(id)item;
- (void)musicPickerDidFinish:(id)finish;
- (void)popoverPresentationControllerDidDismissPopover:(id)popover;
- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)themePicker:(id)picker didPickPreset:(id)preset;
- (void)themePickerDidFinish:(id)finish;
- (void)traitCollectionDidChange:(id)change;
- (void)viewControllerSpec:(id)spec didChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewModel:(id)model didChange:(id)change;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PUSlideshowSettingsViewController

- (PUSlideshowSettingsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)PUSlideshowSpeedCell:(id)cell stepDurationDidChange:(double)change
{
  settingsViewModel = self->_settingsViewModel;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __80__PUSlideshowSettingsViewController_PUSlideshowSpeedCell_stepDurationDidChange___block_invoke;
  v5[3] = &unk_1E7B7FF70;
  v5[4] = self;
  *&v5[5] = change;
  [(PUViewModel *)settingsViewModel performChanges:v5];
}

- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator
{
  controllerCopy = controller;
  coordinatorCopy = coordinator;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __111__PUSlideshowSettingsViewController_presentationController_willPresentWithAdaptiveStyle_transitionCoordinator___block_invoke;
  v9[3] = &unk_1E7B7E238;
  objc_copyWeak(&v10, &location);
  [coordinatorCopy animateAlongsideTransition:0 completion:v9];
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

- (void)popoverPresentationControllerDidDismissPopover:(id)popover
{
  popoverCopy = popover;
  [(PUSlideshowSettingsViewController *)self _synchronizedChangedSettings];
  [popoverCopy setDelegate:0];
}

- (void)viewControllerSpec:(id)spec didChange:(id)change
{
  if ([change traitCollectionChanged])
  {
    [(PUSlideshowSettingsViewController *)self _invalidateTableView];
    [(PUSlideshowSettingsViewController *)self _invalidateNavigationBar];

    [(PUSlideshowSettingsViewController *)self _updateIfNeeded];
  }
}

- (void)musicPickerDidFinish:(id)finish
{
  navigationController = [(PUSlideshowSettingsViewController *)self navigationController];
  v3 = [navigationController popViewControllerAnimated:1];
}

- (void)musicPicker:(id)picker didPickMediaItem:(id)item
{
  itemCopy = item;
  [(PUSlideshowSettingsViewController *)self _setPendingMediaItem:itemCopy];
  settingsViewModel = self->_settingsViewModel;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__PUSlideshowSettingsViewController_musicPicker_didPickMediaItem___block_invoke;
  v8[3] = &unk_1E7B80C38;
  v8[4] = self;
  v9 = itemCopy;
  v7 = itemCopy;
  [(PUViewModel *)settingsViewModel performChanges:v8];
}

- (void)themePickerDidFinish:(id)finish
{
  navigationController = [(PUSlideshowSettingsViewController *)self navigationController];
  v3 = [navigationController popViewControllerAnimated:1];
}

- (void)themePicker:(id)picker didPickPreset:(id)preset
{
  presetCopy = preset;
  mediaItem = [(PUSlideshowSettingsViewModel *)self->_settingsViewModel mediaItem];
  if ([mediaItem type] == 2)
  {
    v6 = [[PUSlideshowMediaItem alloc] initWitPreset:presetCopy];
    [(PUSlideshowSettingsViewController *)self _setPendingMediaItem:v6];
  }

  [(PUSlideshowSettingsViewController *)self _setPendingPreset:presetCopy];
}

- (void)viewModel:(id)model didChange:(id)change
{
  if (self->_settingsViewModel == model && [change musicOnDidChange])
  {
    [(PUSlideshowSettingsViewController *)self _invalidateMusicOn];

    [(PUSlideshowSettingsViewController *)self _updateIfNeeded];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section == 1)
  {
    v8 = objc_alloc_init(PUSlideshowMusicViewController);
    _pendingMediaItem = [(PUSlideshowSettingsViewController *)self _pendingMediaItem];
    [(PUSlideshowMusicViewController *)v8 setCurrentMediaItem:_pendingMediaItem];

    [(PUSlideshowMusicViewController *)v8 setDelegate:self];
    if (![(PUSlideshowSettingsViewControllerSpec *)self->_spec shouldUseBlurredBackground])
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (section)
  {
    goto LABEL_6;
  }

  v8 = objc_alloc_init(PUSlideshowThemeViewController);
  _pendingPreset = [(PUSlideshowSettingsViewController *)self _pendingPreset];
  [(PUSlideshowMusicViewController *)v8 setCurrentPreset:_pendingPreset];

  [(PUSlideshowMusicViewController *)v8 setDelegate:self];
  if ([(PUSlideshowSettingsViewControllerSpec *)self->_spec shouldUseBlurredBackground])
  {
LABEL_4:
    self->_shouldHideTableViewWhenViewWillDisappear = 1;
  }

LABEL_5:
  navigationController = [(PUSlideshowSettingsViewController *)self navigationController];
  [navigationController pushViewController:v8 animated:1];

LABEL_6:
  [viewCopy deselectRowAtIndexPath:pathCopy animated:0];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  _pendingPreset = [(PUSlideshowSettingsViewController *)self _pendingPreset];
  if (section <= 1)
  {
    if (!section)
    {
      v11 = [viewCopy dequeueReusableCellWithIdentifier:@"SlideshowSettingsViewControllerSubtitleCellIdentifier"];
      if (!v11)
      {
        v11 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"SlideshowSettingsViewControllerSubtitleCellIdentifier"];
        [v11 setAccessoryType:1];
        detailTextLabel = [v11 detailTextLabel];
        textLabel = [v11 textLabel];
        textColor = [textLabel textColor];
        [detailTextLabel setTextColor:textColor];
      }

      textLabel2 = [v11 textLabel];
      v24 = PULocalizedString(@"SLIDESHOW_SETTINGS_THEME");
      [textLabel2 setText:v24];

      v17 = 1040;
      goto LABEL_14;
    }

    if (section == 1)
    {
      v11 = [viewCopy dequeueReusableCellWithIdentifier:@"SlideshowSettingsViewControllerSubtitleCellIdentifier"];
      if (!v11)
      {
        v11 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"SlideshowSettingsViewControllerSubtitleCellIdentifier"];
        [v11 setAccessoryType:1];
        detailTextLabel2 = [v11 detailTextLabel];
        textLabel3 = [v11 textLabel];
        textColor2 = [textLabel3 textColor];
        [detailTextLabel2 setTextColor:textColor2];
      }

      textLabel4 = [v11 textLabel];
      v16 = PULocalizedString(@"SLIDESHOW_SETTINGS_SELECTED_MUSIC");
      [textLabel4 setText:v16];

      v17 = 1048;
LABEL_14:
      localizedName = [*(&self->super.super.super.isa + v17) localizedName];
      detailTextLabel3 = [v11 detailTextLabel];
      [detailTextLabel3 setText:localizedName];
LABEL_19:

      goto LABEL_23;
    }

LABEL_29:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUSlideshowSettingsViewController.m" lineNumber:408 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (section == 2)
  {
    v26 = [viewCopy dequeueReusableCellWithIdentifier:@"SlideshowSettingsViewControllerRepeatCellIdentifier"];
    if (v26)
    {
      v11 = v26;
      localizedName = [v26 accessoryView];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"SlideshowSettingsViewControllerRepeatCellIdentifier"];
      localizedName = objc_alloc_init(MEMORY[0x1E69DCFD0]);
      [(PUSlideshowSpeedCell *)localizedName setOn:[(PUSlideshowSettingsViewModel *)self->_settingsViewModel shouldRepeat]];
      [(PUSlideshowSpeedCell *)localizedName addTarget:self action:sel__toggleRepeat_ forControlEvents:4096];
      [v11 setAccessoryView:localizedName];
      [v11 setSelectionStyle:0];
    }

    -[PUSlideshowSpeedCell setEnabled:](localizedName, "setEnabled:", [_pendingPreset supportsSettingType:1]);
    detailTextLabel3 = [v11 textLabel];
    v27 = PULocalizedString(@"SLIDESHOW_SETTINGS_REPEAT");
    [detailTextLabel3 setText:v27];

    goto LABEL_19;
  }

  if (section != 3)
  {
    goto LABEL_29;
  }

  v18 = [viewCopy dequeueReusableCellWithIdentifier:@"SlideshowSettingsViewControllerSpeedCellIdentifier"];
  if (v18)
  {
    localizedName = v18;
  }

  else
  {
    v28 = [[PUSlideshowSpeedCell alloc] initWithStyle:0 reuseIdentifier:@"SlideshowSettingsViewControllerSpeedCellIdentifier"];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(PUSlideshowSpeedCell *)v28 setBackgroundColor:clearColor];

    [(PUSlideshowSpeedCell *)v28 setDelegate:self];
    localizedName = v28;
    if (!localizedName)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUSlideshowSettingsViewController.m" lineNumber:397 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"cell", v34}];
LABEL_28:

      goto LABEL_22;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v35 = objc_opt_class();
    v34 = NSStringFromClass(v35);
    px_descriptionForAssertionMessage = [(PUSlideshowSpeedCell *)localizedName px_descriptionForAssertionMessage];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUSlideshowSettingsViewController.m" lineNumber:397 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"cell", v34, px_descriptionForAssertionMessage}];

    goto LABEL_28;
  }

LABEL_22:
  [(PUSlideshowSettingsViewModel *)self->_settingsViewModel stepDuration];
  [(PUSlideshowSpeedCell *)localizedName setStepDuration:?];
  -[PUSlideshowSpeedCell setEnabled:](localizedName, "setEnabled:", [_pendingPreset supportsSettingType:2]);
  [(PUSlideshowSpeedCell *)localizedName setNeedsUpdateConstraints];
  [(PUSlideshowSpeedCell *)localizedName updateConstraintsIfNeeded];
  v11 = localizedName;
LABEL_23:

  cellBackgroundColor = [(PUSlideshowSettingsViewControllerSpec *)self->_spec cellBackgroundColor];
  [v11 setBackgroundColor:cellBackgroundColor];

  [v11 setNeedsLayout];
  [v11 layoutIfNeeded];

  return v11;
}

- (void)_toggleMusic:(id)music
{
  isOn = [music isOn];
  settingsViewModel = self->_settingsViewModel;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__PUSlideshowSettingsViewController__toggleMusic___block_invoke;
  v6[3] = &unk_1E7B7FF98;
  v6[4] = self;
  v7 = isOn;
  [(PUViewModel *)settingsViewModel performChanges:v6];
}

- (void)_toggleRepeat:(id)repeat
{
  isOn = [repeat isOn];
  settingsViewModel = self->_settingsViewModel;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__PUSlideshowSettingsViewController__toggleRepeat___block_invoke;
  v6[3] = &unk_1E7B7FF98;
  v6[4] = self;
  v7 = isOn;
  [(PUViewModel *)settingsViewModel performChanges:v6];
}

- (void)_didTapDoneButton:(id)button
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
    preset = [(PUSlideshowSettingsViewModel *)self->_settingsViewModel preset];
    v5 = [(OKProducerPreset *)pendingPreset isEqual:preset];

    if ((v5 & 1) == 0)
    {
      viewModel = [(PUSlideshowSession *)self->_session viewModel];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __65__PUSlideshowSettingsViewController__synchronizedChangedSettings__block_invoke;
      v13[3] = &unk_1E7B80DD0;
      v7 = viewModel;
      v14 = v7;
      [v7 performChanges:v13];
      pendingMediaItem = self->__pendingMediaItem;
      if (pendingMediaItem)
      {
        mediaItem = [(PUSlideshowSettingsViewModel *)self->_settingsViewModel mediaItem];
        LOBYTE(pendingMediaItem) = ![(PUSlideshowMediaItem *)pendingMediaItem isEqual:mediaItem];
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
    shouldShowNavigationBar = [(PUSlideshowSettingsViewControllerSpec *)self->_spec shouldShowNavigationBar];
    navigationController = [(PUSlideshowSettingsViewController *)self navigationController];
    [navigationController setNavigationBarHidden:!shouldShowNavigationBar];
  }
}

- (void)_updateTableViewIfNeeded
{
  if ([(PUSlideshowSettingsViewController *)self _needsUpdateTableView])
  {
    [(PUSlideshowSettingsViewController *)self _setNeedsUpdateTableView:0];
    tableView = self->_tableView;
    tableViewBackgroundColor = [(PUSlideshowSettingsViewControllerSpec *)self->_spec tableViewBackgroundColor];
    [(UITableView *)tableView setBackgroundColor:tableViewBackgroundColor];

    v5 = self->_tableView;
    tableViewHeaderView = [(PUSlideshowSettingsViewControllerSpec *)self->_spec tableViewHeaderView];
    [(UITableView *)v5 setTableHeaderView:tableViewHeaderView];

    v7 = self->_tableView;

    [(UITableView *)v7 reloadData];
  }
}

- (void)_updateSpecIfNeeded
{
  if ([(PUSlideshowSettingsViewController *)self _needsUpdateSpec])
  {
    [(PUSlideshowSettingsViewController *)self _setNeedsUpdateSpec:0];
    presentingViewController = [(PUSlideshowSettingsViewController *)self presentingViewController];
    traitCollection = [presentingViewController traitCollection];

    spec = self->_spec;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__PUSlideshowSettingsViewController__updateSpecIfNeeded__block_invoke;
    v7[3] = &unk_1E7B80C38;
    v7[4] = self;
    v8 = traitCollection;
    v6 = traitCollection;
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUSlideshowSettingsViewController.m" lineNumber:213 description:@"updates still needed after an update cycle"];
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

- (void)_setPendingMediaItem:(id)item
{
  itemCopy = item;
  if (([itemCopy isEqual:self->__pendingMediaItem] & 1) == 0)
  {
    objc_storeStrong(&self->__pendingMediaItem, item);
    [(PUSlideshowSettingsViewController *)self _invalidateMediaItem];
    [(PUSlideshowSettingsViewController *)self _updateIfNeeded];
  }
}

- (void)_setPendingPreset:(id)preset
{
  presetCopy = preset;
  if (([presetCopy isEqual:self->__pendingPreset] & 1) == 0)
  {
    objc_storeStrong(&self->__pendingPreset, preset);
    [(PUSlideshowSettingsViewController *)self _invalidatePreset];
    [(PUSlideshowSettingsViewController *)self _updateIfNeeded];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = PUSlideshowSettingsViewController;
  [(PUSlideshowSettingsViewController *)&v4 traitCollectionDidChange:change];
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

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PUSlideshowSettingsViewController;
  [(PUSlideshowSettingsViewController *)&v4 viewWillDisappear:disappear];
  [(UITableView *)self->_tableView setHidden:self->_shouldHideTableViewWhenViewWillDisappear];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PUSlideshowSettingsViewController;
  [(PUSlideshowSettingsViewController *)&v6 viewWillAppear:appear];
  self->_shouldHideTableViewWhenViewWillDisappear = 0;
  [(UITableView *)self->_tableView setHidden:0];
  navigationController = [(PUSlideshowSettingsViewController *)self navigationController];
  popoverPresentationController = [navigationController popoverPresentationController];

  [popoverPresentationController setDelegate:self];
  [(PUSlideshowSettingsViewController *)self _invalidateSpec];
  [(PUSlideshowSettingsViewController *)self _invalidateNavigationBar];
  [(PUSlideshowSettingsViewController *)self _updateIfNeeded];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = PUSlideshowSettingsViewController;
  [(PUSlideshowSettingsViewController *)&v12 viewDidLoad];
  navigationItem = [(PUSlideshowSettingsViewController *)self navigationItem];
  v4 = PULocalizedString(@"SLIDESHOW_SETTINGS_NAVBAR_TITLE");
  [navigationItem setTitle:v4];

  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__didTapDoneButton_];
  navigationItem2 = [(PUSlideshowSettingsViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v5];

  v7 = objc_alloc(MEMORY[0x1E69DD020]);
  view = [(PUSlideshowSettingsViewController *)self view];
  [view bounds];
  v9 = [v7 initWithFrame:?];
  tableView = self->_tableView;
  self->_tableView = v9;

  [(UITableView *)self->_tableView setAutoresizingMask:18];
  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDataSource:self];
  view2 = [(PUSlideshowSettingsViewController *)self view];
  [view2 addSubview:self->_tableView];
}

- (void)dealloc
{
  [(PUSlideshowSettingsViewModel *)self->_settingsViewModel unregisterChangeObserver:self];
  [(PUViewControllerSpec *)self->_spec unregisterChangeObserver:self];
  v3.receiver = self;
  v3.super_class = PUSlideshowSettingsViewController;
  [(PUSlideshowSettingsViewController *)&v3 dealloc];
}

- (PUSlideshowSettingsViewController)initWithSession:(id)session
{
  sessionCopy = session;
  v15.receiver = self;
  v15.super_class = PUSlideshowSettingsViewController;
  v6 = [(PUSlideshowSettingsViewController *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, session);
    settingsViewModel = [(PUSlideshowSession *)v7->_session settingsViewModel];
    settingsViewModel = v7->_settingsViewModel;
    v7->_settingsViewModel = settingsViewModel;

    [(PUSlideshowSettingsViewModel *)v7->_settingsViewModel registerChangeObserver:v7];
    v10 = objc_alloc_init(PUSlideshowSettingsViewControllerSpec);
    spec = v7->_spec;
    v7->_spec = v10;

    [(PUViewControllerSpec *)v7->_spec registerChangeObserver:v7];
    preset = [(PUSlideshowSettingsViewModel *)v7->_settingsViewModel preset];
    [(PUSlideshowSettingsViewController *)v7 _setPendingPreset:preset];

    mediaItem = [(PUSlideshowSettingsViewModel *)v7->_settingsViewModel mediaItem];
    [(PUSlideshowSettingsViewController *)v7 _setPendingMediaItem:mediaItem];
  }

  return v7;
}

@end