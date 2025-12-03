@interface PUSlideshowMusicViewController
- (BOOL)_needsUpdate;
- (PUSlideshowMusicDelegate)delegate;
- (PUSlideshowMusicViewController)init;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_didFinish;
- (void)_didPickMediaItem:(id)item;
- (void)_invalidateBackgroundView;
- (void)_invalidateSpec;
- (void)_invalidateTableView;
- (void)_updateBackgroundViewIfNeeded;
- (void)_updateIfNeeded;
- (void)_updateSpecIfNeeded;
- (void)_updateTableViewIfNeeded;
- (void)dealloc;
- (void)mediaPicker:(id)picker didPickMediaItems:(id)items;
- (void)setCurrentMediaItem:(id)item;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
- (void)traitCollectionDidChange:(id)change;
- (void)viewControllerSpec:(id)spec didChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PUSlideshowMusicViewController

- (PUSlideshowMusicDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewControllerSpec:(id)spec didChange:(id)change
{
  if ([change traitCollectionChanged])
  {
    [(PUSlideshowMusicViewController *)self setEdgesForExtendedLayout:[(PUSlideshowSettingsViewControllerSpec *)self->_spec rectEdgeForExtendedLayout]];
    [(PUSlideshowMusicViewController *)self _invalidateTableView];
    [(PUSlideshowMusicViewController *)self _invalidateBackgroundView];

    [(PUSlideshowMusicViewController *)self _updateIfNeeded];
  }
}

- (void)mediaPicker:(id)picker didPickMediaItems:(id)items
{
  pickerCopy = picker;
  if (items)
  {
    representativeItem = [items representativeItem];
    v7 = [[PUSlideshowMediaItem alloc] initWitMediaItem:representativeItem];
    [(PUSlideshowMusicViewController *)self _didPickMediaItem:v7];
    [(UITableView *)self->_tableView reloadData];
  }

  [pickerCopy dismissModalViewControllerWithTransition:2];
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  headerViewCopy = headerView;
  backgroundColor = [view backgroundColor];
  [headerViewCopy setTintColor:backgroundColor];

  textLabel = [headerViewCopy textLabel];

  v9 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:*MEMORY[0x1E69DDD08]];
  [textLabel setFont:v9];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [textLabel setTintColor:secondaryLabelColor];

  [textLabel _setTextColorFollowsTintColor:1];
  [textLabel setHidden:section != 0];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  if ([pathCopy section])
  {
    v6 = [objc_alloc(MEMORY[0x1E69705F8]) initWithMediaTypes:1];
    [v6 setShowsItemsWithProtectedAssets:0];
    view = [v6 view];
    [(UITableView *)self->_tableView frame];
    [view setFrame:?];

    [(UITableView *)self->_tableView contentSize];
    [v6 setPreferredContentSize:?];
    [v6 setDelegate:self];
    [v6 setShowsCloudItems:0];
    [v6 setModalPresentationStyle:3];
    [(PUSlideshowMusicViewController *)self presentModalViewController:v6 withTransition:1];
  }

  else
  {
    v6 = -[NSArray objectAtIndexedSubscript:](self->_mediaItems, "objectAtIndexedSubscript:", [pathCopy item]);
    [(PUSlideshowMusicViewController *)self _didPickMediaItem:v6];
    [(PUSlideshowMusicViewController *)self _didFinish];
  }
}

- (void)_didPickMediaItem:(id)item
{
  itemCopy = item;
  objc_storeStrong(&self->_currentMediaItem, item);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 musicPicker:self didPickMediaItem:itemCopy];
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  if (![pathCopy section])
  {
    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"PUSlideshowThemeMusicCell"];

    detailTextLabel2 = -[NSArray objectAtIndexedSubscript:](self->_mediaItems, "objectAtIndexedSubscript:", [pathCopy item]);
    localizedName = [detailTextLabel2 localizedName];
    if ([(PUSlideshowMediaItem *)self->_currentMediaItem isEqual:detailTextLabel2])
    {
      v15 = 3;
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_9;
  }

  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"PUSlideshowItunesMusicCell"];

  if (!v8)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"PUSlideshowItunesMusicCell"];
    detailTextLabel = [v8 detailTextLabel];
    textLabel = [v8 textLabel];
    textColor = [textLabel textColor];
    [detailTextLabel setTextColor:textColor];
  }

  localizedName = PULocalizedString(@"SLIDESHOW_SETTINGS_MUSIC_LIBRARY");
  if ([(PUSlideshowMediaItem *)self->_currentMediaItem type]== 1)
  {
    detailTextLabel2 = [v8 detailTextLabel];
    localizedName2 = [(PUSlideshowMediaItem *)self->_currentMediaItem localizedName];
    [detailTextLabel2 setText:localizedName2];

    v15 = 1;
LABEL_9:

    goto LABEL_11;
  }

  v15 = 1;
LABEL_11:
  [v8 setAccessoryType:v15];
  textLabel2 = [v8 textLabel];
  [textLabel2 setText:localizedName];

  cellBackgroundColor = [(PUSlideshowSettingsViewControllerSpec *)self->_spec cellBackgroundColor];
  [v8 setBackgroundColor:cellBackgroundColor];

  return v8;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
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
    tableViewBackgroundColor = [(PUSlideshowSettingsViewControllerSpec *)self->_spec tableViewBackgroundColor];
    [(UITableView *)tableView setBackgroundColor:tableViewBackgroundColor];
  }
}

- (void)_updateSpecIfNeeded
{
  if ([(PUSlideshowMusicViewController *)self _needsUpdateSpec])
  {
    [(PUSlideshowMusicViewController *)self _setNeedsUpdateSpec:0];
    presentingViewController = [(PUSlideshowMusicViewController *)self presentingViewController];
    traitCollection = [presentingViewController traitCollection];

    spec = self->_spec;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__PUSlideshowMusicViewController__updateSpecIfNeeded__block_invoke;
    v7[3] = &unk_1E7B80C38;
    v7[4] = self;
    v8 = traitCollection;
    v6 = traitCollection;
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUSlideshowMusicViewController.m" lineNumber:170 description:@"updates still needed after an update cycle"];
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

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = PUSlideshowMusicViewController;
  [(PUSlideshowMusicViewController *)&v4 traitCollectionDidChange:change];
  [(PUSlideshowMusicViewController *)self _invalidateSpec];
  [(PUSlideshowMusicViewController *)self _updateIfNeeded];
}

- (void)setCurrentMediaItem:(id)item
{
  itemCopy = item;
  if (self->_currentMediaItem != itemCopy)
  {
    v6 = itemCopy;
    objc_storeStrong(&self->_currentMediaItem, item);
    [(UITableView *)self->_tableView reloadData];
    itemCopy = v6;
  }
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = PUSlideshowMusicViewController;
  [(PUSlideshowMusicViewController *)&v6 viewDidLayoutSubviews];
  tableView = self->_tableView;
  view = [(PUSlideshowMusicViewController *)self view];
  [view bounds];
  [(UITableView *)tableView setFrame:?];

  navigationController = [(PUSlideshowMusicViewController *)self navigationController];
  [(UITableView *)self->_tableView contentSize];
  [navigationController setPreferredContentSize:?];

  [(PUSlideshowMusicViewController *)self _invalidateSpec];
  [(PUSlideshowMusicViewController *)self _updateIfNeeded];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = PUSlideshowMusicViewController;
  [(PUSlideshowMusicViewController *)&v7 viewWillDisappear:disappear];
  if ([(PUSlideshowSettingsViewControllerSpec *)self->_spec shouldUseBlurredBackground])
  {
    navigationController = [(PUSlideshowMusicViewController *)self navigationController];
    viewControllers = [navigationController viewControllers];
    if ([viewControllers containsObject:self])
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

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PUSlideshowMusicViewController;
  [(PUSlideshowMusicViewController *)&v4 viewWillAppear:appear];
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
  navigationItem = [(PUSlideshowMusicViewController *)self navigationItem];
  v4 = PULocalizedString(@"SLIDESHOW_SETTINGS_NAVBAR_MUSIC_TITLE");
  [navigationItem setTitle:v4];

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
  view = [(PUSlideshowMusicViewController *)self view];
  [view addSubview:self->_tableView];
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