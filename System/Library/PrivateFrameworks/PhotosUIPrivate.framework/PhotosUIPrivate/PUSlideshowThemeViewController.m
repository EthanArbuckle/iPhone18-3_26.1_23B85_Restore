@interface PUSlideshowThemeViewController
- (BOOL)_needsUpdate;
- (PUSlideshowThemeDelegate)delegate;
- (PUSlideshowThemeViewController)init;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_didFinish;
- (void)_didPickPreset:(id)a3;
- (void)_invalidateBackgroundView;
- (void)_invalidateSpec;
- (void)_invalidateTableView;
- (void)_updateBackgroundViewIfNeeded;
- (void)_updateIfNeeded;
- (void)_updateSpecIfNeeded;
- (void)_updateTableViewIfNeeded;
- (void)dealloc;
- (void)setCurrentPreset:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewControllerSpec:(id)a3 didChange:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PUSlideshowThemeViewController

- (PUSlideshowThemeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewControllerSpec:(id)a3 didChange:(id)a4
{
  if ([a4 traitCollectionChanged])
  {
    [(PUSlideshowThemeViewController *)self setEdgesForExtendedLayout:[(PUSlideshowSettingsViewControllerSpec *)self->_spec rectEdgeForExtendedLayout]];
    [(PUSlideshowThemeViewController *)self _invalidateTableView];
    [(PUSlideshowThemeViewController *)self _invalidateBackgroundView];

    [(PUSlideshowThemeViewController *)self _updateIfNeeded];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  presets = self->_presets;
  v8 = [v6 item];

  v9 = [(NSArray *)presets objectAtIndexedSubscript:v8];
  [(PUSlideshowThemeViewController *)self _didPickPreset:v9];
  [(PUSlideshowThemeViewController *)self _didFinish];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"PUSlideshowThemeDisclosureCell"];
  presets = self->_presets;
  v9 = [v6 item];

  v10 = [(NSArray *)presets objectAtIndexedSubscript:v9];
  v11 = [v10 localizedName];
  v12 = [v7 textLabel];
  [v12 setText:v11];

  v13 = [(PUSlideshowSettingsViewControllerSpec *)self->_spec cellBackgroundColor];
  [v7 setBackgroundColor:v13];

  if ([(OKProducerPreset *)self->_currentPreset isEqual:v10])
  {
    v14 = 3;
  }

  else
  {
    v14 = 0;
  }

  [v7 setAccessoryType:v14];

  return v7;
}

- (void)_didPickPreset:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 themePicker:self didPickPreset:v7];
  }
}

- (void)_didFinish
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    if ([(PUSlideshowSettingsViewControllerSpec *)self->_spec shouldUseBlurredBackground])
    {
      self->_shouldHideTableViewWhenViewWillDisappear = 1;
    }

    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 themePickerDidFinish:self];
  }
}

- (void)_updateTableViewIfNeeded
{
  if ([(PUSlideshowThemeViewController *)self _needsUpdateTableView])
  {
    [(PUSlideshowThemeViewController *)self _setNeedsUpdateTableView:0];
    tableView = self->_tableView;

    [(UITableView *)tableView reloadData];
  }
}

- (void)_updateBackgroundViewIfNeeded
{
  if ([(PUSlideshowThemeViewController *)self _needsUpdateBackgroundView])
  {
    [(PUSlideshowThemeViewController *)self _setNeedsUpdateBackgroundView:0];
    tableView = self->_tableView;
    v4 = [(PUSlideshowSettingsViewControllerSpec *)self->_spec tableViewBackgroundColor];
    [(UITableView *)tableView setBackgroundColor:v4];

    v5 = self->_tableView;
    v6 = [(PUSlideshowSettingsViewControllerSpec *)self->_spec tableViewHeaderView];
    [(UITableView *)v5 setTableHeaderView:v6];
  }
}

- (void)_updateSpecIfNeeded
{
  if ([(PUSlideshowThemeViewController *)self _needsUpdateSpec])
  {
    [(PUSlideshowThemeViewController *)self _setNeedsUpdateSpec:0];
    v3 = [(PUSlideshowThemeViewController *)self presentingViewController];
    v4 = [v3 traitCollection];

    spec = self->_spec;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__PUSlideshowThemeViewController__updateSpecIfNeeded__block_invoke;
    v7[3] = &unk_1E7B80C38;
    v7[4] = self;
    v8 = v4;
    v6 = v4;
    [(PUViewControllerSpec *)spec performChanges:v7];
  }
}

- (void)_updateIfNeeded
{
  if ([(PUSlideshowThemeViewController *)self _needsUpdate])
  {
    [(PUSlideshowThemeViewController *)self _updateSpecIfNeeded];
    [(PUSlideshowThemeViewController *)self _updateTableViewIfNeeded];
    [(PUSlideshowThemeViewController *)self _updateBackgroundViewIfNeeded];
    if ([(PUSlideshowThemeViewController *)self _needsUpdate])
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:a2 object:self file:@"PUSlideshowThemeViewController.m" lineNumber:168 description:@"updates still needed after an update cycle"];
    }
  }
}

- (void)_invalidateTableView
{
  [(PUSlideshowThemeViewController *)self _setNeedsUpdateTableView:1];

  [(PUSlideshowThemeViewController *)self _setNeedsUpdate];
}

- (void)_invalidateBackgroundView
{
  [(PUSlideshowThemeViewController *)self _setNeedsUpdateBackgroundView:1];

  [(PUSlideshowThemeViewController *)self _setNeedsUpdate];
}

- (void)_invalidateSpec
{
  [(PUSlideshowThemeViewController *)self _setNeedsUpdateSpec:1];

  [(PUSlideshowThemeViewController *)self _setNeedsUpdate];
}

- (BOOL)_needsUpdate
{
  if ([(PUSlideshowThemeViewController *)self _needsUpdateSpec])
  {
    return 1;
  }

  return [(PUSlideshowThemeViewController *)self _needsUpdateBackgroundView];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = PUSlideshowThemeViewController;
  [(PUSlideshowThemeViewController *)&v4 traitCollectionDidChange:a3];
  [(PUSlideshowThemeViewController *)self _invalidateSpec];
  [(PUSlideshowThemeViewController *)self _updateIfNeeded];
}

- (void)setCurrentPreset:(id)a3
{
  v5 = a3;
  if (self->_currentPreset != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_currentPreset, a3);
    [(UITableView *)self->_tableView reloadData];
    v5 = v6;
  }
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = PUSlideshowThemeViewController;
  [(PUSlideshowThemeViewController *)&v6 viewDidLayoutSubviews];
  tableView = self->_tableView;
  v4 = [(PUSlideshowThemeViewController *)self view];
  [v4 bounds];
  [(UITableView *)tableView setFrame:?];

  v5 = [(PUSlideshowThemeViewController *)self navigationController];
  [(UITableView *)self->_tableView contentSize];
  [v5 setPreferredContentSize:?];

  [(PUSlideshowThemeViewController *)self _invalidateSpec];
  [(PUSlideshowThemeViewController *)self _updateIfNeeded];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PUSlideshowThemeViewController;
  [(PUSlideshowThemeViewController *)&v7 viewWillDisappear:a3];
  if ([(PUSlideshowSettingsViewControllerSpec *)self->_spec shouldUseBlurredBackground])
  {
    v4 = [(PUSlideshowThemeViewController *)self navigationController];
    v5 = [v4 viewControllers];
    if ([v5 containsObject:self])
    {
      shouldHideTableViewWhenViewWillDisappear = self->_shouldHideTableViewWhenViewWillDisappear;

      if (!shouldHideTableViewWhenViewWillDisappear)
      {
        return;
      }
    }

    else
    {
    }

    [(UITableView *)self->_tableView setHidden:1];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PUSlideshowThemeViewController;
  [(PUSlideshowThemeViewController *)&v4 viewWillAppear:a3];
  [(UIViewController *)self pu_setupInitialBarsVisibilityOnViewWillAppearAnimated:0];
  self->_shouldHideTableViewWhenViewWillDisappear = 0;
  [(UITableView *)self->_tableView setHidden:0];
  [(UITableView *)self->_tableView contentSize];
  [(PUSlideshowThemeViewController *)self setPreferredContentSize:?];
  [(PUSlideshowThemeViewController *)self _invalidateSpec];
  [(PUSlideshowThemeViewController *)self _updateIfNeeded];
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = PUSlideshowThemeViewController;
  [(PUSlideshowThemeViewController *)&v11 viewDidLoad];
  v3 = [(PUSlideshowThemeViewController *)self navigationItem];
  v4 = PULocalizedString(@"SLIDESHOW_SETTINGS_NAVBAR_THEMES_TITLE");
  [v3 setTitle:v4];

  v5 = objc_alloc(MEMORY[0x1E69DD020]);
  v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  tableView = self->_tableView;
  self->_tableView = v6;

  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PUSlideshowThemeDisclosureCell"];
  v8 = self->_tableView;
  v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(UITableView *)v8 setTableFooterView:v9];

  v10 = [(PUSlideshowThemeViewController *)self view];
  [v10 addSubview:self->_tableView];
}

- (void)dealloc
{
  [(PUViewControllerSpec *)self->_spec unregisterChangeObserver:self];
  v3.receiver = self;
  v3.super_class = PUSlideshowThemeViewController;
  [(PUSlideshowThemeViewController *)&v3 dealloc];
}

- (PUSlideshowThemeViewController)init
{
  v17.receiver = self;
  v17.super_class = PUSlideshowThemeViewController;
  v2 = [(PUSlideshowThemeViewController *)&v17 init];
  if (!v2)
  {
    return v2;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v3 = getOKProducerPresetsManagerClass_softClass_82115;
  v26 = getOKProducerPresetsManagerClass_softClass_82115;
  if (!getOKProducerPresetsManagerClass_softClass_82115)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __getOKProducerPresetsManagerClass_block_invoke_82116;
    v21 = &unk_1E7B800F0;
    v22 = &v23;
    __getOKProducerPresetsManagerClass_block_invoke_82116(&v18);
    v3 = v24[3];
  }

  v4 = v3;
  _Block_object_dispose(&v23, 8);
  v5 = [v3 defaultManager];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v6 = getkOKProducerPresetsFamilyPhotosPhoneSymbolLoc_ptr_82117;
  v26 = getkOKProducerPresetsFamilyPhotosPhoneSymbolLoc_ptr_82117;
  if (!getkOKProducerPresetsFamilyPhotosPhoneSymbolLoc_ptr_82117)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __getkOKProducerPresetsFamilyPhotosPhoneSymbolLoc_block_invoke_82118;
    v21 = &unk_1E7B800F0;
    v22 = &v23;
    v7 = SlideshowKitLibrary_82119();
    v8 = dlsym(v7, "kOKProducerPresetsFamilyPhotosPhone");
    *(v22[1] + 24) = v8;
    getkOKProducerPresetsFamilyPhotosPhoneSymbolLoc_ptr_82117 = *(v22[1] + 24);
    v6 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  if (v6)
  {
    v9 = *v6;
    v10 = [v5 presetsForFamily:v9];
    presets = v2->_presets;
    v2->_presets = v10;

    v12 = objc_alloc_init(PUSlideshowSettingsViewControllerSpec);
    spec = v2->_spec;
    v2->_spec = v12;

    [(PUViewControllerSpec *)v2->_spec registerChangeObserver:v2];
    return v2;
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkOKProducerPresetsFamilyPhotosPhone(void)"];
  [v15 handleFailureInFunction:v16 file:@"PUSlideshowThemeViewController.m" lineNumber:23 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

@end