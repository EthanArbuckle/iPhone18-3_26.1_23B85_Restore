@interface PUSlideshowMusicViewController
- (BOOL)_needsUpdate;
- (PUSlideshowMusicDelegate)delegate;
- (PUSlideshowMusicViewController)init;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_didFinish;
- (void)_didPickMediaItem:(id)a3;
- (void)_invalidateBackgroundView;
- (void)_invalidateSpec;
- (void)_invalidateTableView;
- (void)_updateBackgroundViewIfNeeded;
- (void)_updateIfNeeded;
- (void)_updateSpecIfNeeded;
- (void)_updateTableViewIfNeeded;
- (void)dealloc;
- (void)mediaPicker:(id)a3 didPickMediaItems:(id)a4;
- (void)setCurrentMediaItem:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewControllerSpec:(id)a3 didChange:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PUSlideshowMusicViewController

- (PUSlideshowMusicDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewControllerSpec:(id)a3 didChange:(id)a4
{
  if ([a4 traitCollectionChanged])
  {
    [(PUSlideshowMusicViewController *)self setEdgesForExtendedLayout:[(PUSlideshowSettingsViewControllerSpec *)self->_spec rectEdgeForExtendedLayout]];
    [(PUSlideshowMusicViewController *)self _invalidateTableView];
    [(PUSlideshowMusicViewController *)self _invalidateBackgroundView];

    [(PUSlideshowMusicViewController *)self _updateIfNeeded];
  }
}

- (void)mediaPicker:(id)a3 didPickMediaItems:(id)a4
{
  v8 = a3;
  if (a4)
  {
    v6 = [a4 representativeItem];
    v7 = [[PUSlideshowMediaItem alloc] initWitMediaItem:v6];
    [(PUSlideshowMusicViewController *)self _didPickMediaItem:v7];
    [(UITableView *)self->_tableView reloadData];
  }

  [v8 dismissModalViewControllerWithTransition:2];
}

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  v7 = a4;
  v8 = [a3 backgroundColor];
  [v7 setTintColor:v8];

  v11 = [v7 textLabel];

  v9 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:*MEMORY[0x1E69DDD08]];
  [v11 setFont:v9];

  v10 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v11 setTintColor:v10];

  [v11 _setTextColorFollowsTintColor:1];
  [v11 setHidden:a5 != 0];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v8 = a4;
  [a3 deselectRowAtIndexPath:v8 animated:1];
  if ([v8 section])
  {
    v6 = [objc_alloc(MEMORY[0x1E69705F8]) initWithMediaTypes:1];
    [v6 setShowsItemsWithProtectedAssets:0];
    v7 = [v6 view];
    [(UITableView *)self->_tableView frame];
    [v7 setFrame:?];

    [(UITableView *)self->_tableView contentSize];
    [v6 setPreferredContentSize:?];
    [v6 setDelegate:self];
    [v6 setShowsCloudItems:0];
    [v6 setModalPresentationStyle:3];
    [(PUSlideshowMusicViewController *)self presentModalViewController:v6 withTransition:1];
  }

  else
  {
    v6 = -[NSArray objectAtIndexedSubscript:](self->_mediaItems, "objectAtIndexedSubscript:", [v8 item]);
    [(PUSlideshowMusicViewController *)self _didPickMediaItem:v6];
    [(PUSlideshowMusicViewController *)self _didFinish];
  }
}

- (void)_didPickMediaItem:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_currentMediaItem, a3);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 musicPicker:self didPickMediaItem:v8];
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
    [v5 musicPickerDidFinish:self];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  if (![v6 section])
  {
    v8 = [v7 dequeueReusableCellWithIdentifier:@"PUSlideshowThemeMusicCell"];

    v13 = -[NSArray objectAtIndexedSubscript:](self->_mediaItems, "objectAtIndexedSubscript:", [v6 item]);
    v12 = [v13 localizedName];
    if ([(PUSlideshowMediaItem *)self->_currentMediaItem isEqual:v13])
    {
      v15 = 3;
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_9;
  }

  v8 = [v7 dequeueReusableCellWithIdentifier:@"PUSlideshowItunesMusicCell"];

  if (!v8)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"PUSlideshowItunesMusicCell"];
    v9 = [v8 detailTextLabel];
    v10 = [v8 textLabel];
    v11 = [v10 textColor];
    [v9 setTextColor:v11];
  }

  v12 = PULocalizedString(@"SLIDESHOW_SETTINGS_MUSIC_LIBRARY");
  if ([(PUSlideshowMediaItem *)self->_currentMediaItem type]== 1)
  {
    v13 = [v8 detailTextLabel];
    v14 = [(PUSlideshowMediaItem *)self->_currentMediaItem localizedName];
    [v13 setText:v14];

    v15 = 1;
LABEL_9:

    goto LABEL_11;
  }

  v15 = 1;
LABEL_11:
  [v8 setAccessoryType:v15];
  v16 = [v8 textLabel];
  [v16 setText:v12];

  v17 = [(PUSlideshowSettingsViewControllerSpec *)self->_spec cellBackgroundColor];
  [v8 setBackgroundColor:v17];

  return v8;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    return 1;
  }

  else
  {
    return [(NSArray *)self->_mediaItems count];
  }
}

- (void)_updateTableViewIfNeeded
{
  if ([(PUSlideshowMusicViewController *)self _needsUpdateTableView])
  {
    [(PUSlideshowMusicViewController *)self _setNeedsUpdateTableView:0];
    tableView = self->_tableView;

    [(UITableView *)tableView reloadData];
  }
}

- (void)_updateBackgroundViewIfNeeded
{
  if ([(PUSlideshowMusicViewController *)self _needsUpdateBackgroundView])
  {
    [(PUSlideshowMusicViewController *)self _setNeedsUpdateBackgroundView:0];
    tableView = self->_tableView;
    v4 = [(PUSlideshowSettingsViewControllerSpec *)self->_spec tableViewBackgroundColor];
    [(UITableView *)tableView setBackgroundColor:v4];
  }
}

- (void)_updateSpecIfNeeded
{
  if ([(PUSlideshowMusicViewController *)self _needsUpdateSpec])
  {
    [(PUSlideshowMusicViewController *)self _setNeedsUpdateSpec:0];
    v3 = [(PUSlideshowMusicViewController *)self presentingViewController];
    v4 = [v3 traitCollection];

    spec = self->_spec;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__PUSlideshowMusicViewController__updateSpecIfNeeded__block_invoke;
    v7[3] = &unk_1E7B80C38;
    v7[4] = self;
    v8 = v4;
    v6 = v4;
    [(PUViewControllerSpec *)spec performChanges:v7];
  }
}

- (void)_updateIfNeeded
{
  if ([(PUSlideshowMusicViewController *)self _needsUpdate])
  {
    [(PUSlideshowMusicViewController *)self _updateSpecIfNeeded];
    [(PUSlideshowMusicViewController *)self _updateTableViewIfNeeded];
    [(PUSlideshowMusicViewController *)self _updateBackgroundViewIfNeeded];
    if ([(PUSlideshowMusicViewController *)self _needsUpdate])
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:a2 object:self file:@"PUSlideshowMusicViewController.m" lineNumber:170 description:@"updates still needed after an update cycle"];
    }
  }
}

- (void)_invalidateTableView
{
  [(PUSlideshowMusicViewController *)self _setNeedsUpdateTableView:1];

  [(PUSlideshowMusicViewController *)self _setNeedsUpdate];
}

- (void)_invalidateBackgroundView
{
  [(PUSlideshowMusicViewController *)self _setNeedsUpdateBackgroundView:1];

  [(PUSlideshowMusicViewController *)self _setNeedsUpdate];
}

- (void)_invalidateSpec
{
  [(PUSlideshowMusicViewController *)self _setNeedsUpdateSpec:1];

  [(PUSlideshowMusicViewController *)self _setNeedsUpdate];
}

- (BOOL)_needsUpdate
{
  if ([(PUSlideshowMusicViewController *)self _needsUpdateSpec])
  {
    return 1;
  }

  return [(PUSlideshowMusicViewController *)self _needsUpdateBackgroundView];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = PUSlideshowMusicViewController;
  [(PUSlideshowMusicViewController *)&v4 traitCollectionDidChange:a3];
  [(PUSlideshowMusicViewController *)self _invalidateSpec];
  [(PUSlideshowMusicViewController *)self _updateIfNeeded];
}

- (void)setCurrentMediaItem:(id)a3
{
  v5 = a3;
  if (self->_currentMediaItem != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_currentMediaItem, a3);
    [(UITableView *)self->_tableView reloadData];
    v5 = v6;
  }
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = PUSlideshowMusicViewController;
  [(PUSlideshowMusicViewController *)&v6 viewDidLayoutSubviews];
  tableView = self->_tableView;
  v4 = [(PUSlideshowMusicViewController *)self view];
  [v4 bounds];
  [(UITableView *)tableView setFrame:?];

  v5 = [(PUSlideshowMusicViewController *)self navigationController];
  [(UITableView *)self->_tableView contentSize];
  [v5 setPreferredContentSize:?];

  [(PUSlideshowMusicViewController *)self _invalidateSpec];
  [(PUSlideshowMusicViewController *)self _updateIfNeeded];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PUSlideshowMusicViewController;
  [(PUSlideshowMusicViewController *)&v7 viewWillDisappear:a3];
  if ([(PUSlideshowSettingsViewControllerSpec *)self->_spec shouldUseBlurredBackground])
  {
    v4 = [(PUSlideshowMusicViewController *)self navigationController];
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
  v4.super_class = PUSlideshowMusicViewController;
  [(PUSlideshowMusicViewController *)&v4 viewWillAppear:a3];
  [(UIViewController *)self pu_setupInitialBarsVisibilityOnViewWillAppearAnimated:0];
  self->_shouldHideTableViewWhenViewWillDisappear = 0;
  [(UITableView *)self->_tableView setHidden:0];
  [(UITableView *)self->_tableView contentSize];
  [(PUSlideshowMusicViewController *)self setPreferredContentSize:?];
  [(PUSlideshowMusicViewController *)self _invalidateSpec];
  [(PUSlideshowMusicViewController *)self _updateIfNeeded];
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = PUSlideshowMusicViewController;
  [(PUSlideshowMusicViewController *)&v11 viewDidLoad];
  v3 = [(PUSlideshowMusicViewController *)self navigationItem];
  v4 = PULocalizedString(@"SLIDESHOW_SETTINGS_NAVBAR_MUSIC_TITLE");
  [v3 setTitle:v4];

  v5 = objc_alloc(MEMORY[0x1E69DD020]);
  v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  tableView = self->_tableView;
  self->_tableView = v6;

  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PUSlideshowThemeMusicCell"];
  v8 = self->_tableView;
  v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(UITableView *)v8 setTableFooterView:v9];

  [(UITableView *)self->_tableView setSectionHeaderHeight:44.0];
  v10 = [(PUSlideshowMusicViewController *)self view];
  [v10 addSubview:self->_tableView];
}

- (void)dealloc
{
  [(PUViewControllerSpec *)self->_spec unregisterChangeObserver:self];
  v3.receiver = self;
  v3.super_class = PUSlideshowMusicViewController;
  [(PUSlideshowMusicViewController *)&v3 dealloc];
}

- (PUSlideshowMusicViewController)init
{
  v8.receiver = self;
  v8.super_class = PUSlideshowMusicViewController;
  v2 = [(PUSlideshowMusicViewController *)&v8 initWithNibName:0 bundle:0];
  if (v2)
  {
    v3 = +[PUSlideshowMediaItem mediaItemsForOKThemes];
    mediaItems = v2->_mediaItems;
    v2->_mediaItems = v3;

    v5 = objc_alloc_init(PUSlideshowSettingsViewControllerSpec);
    spec = v2->_spec;
    v2->_spec = v5;

    [(PUViewControllerSpec *)v2->_spec registerChangeObserver:v2];
  }

  return v2;
}

@end