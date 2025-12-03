@interface _UIPrototypingMenuViewController
- (NSArray)allSettings;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_reloadSettings:(id)settings;
- (void)_resetSettings:(id)settings;
- (void)loadView;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation _UIPrototypingMenuViewController

- (void)loadView
{
  v3 = [UITableView alloc];
  v5 = [(UITableView *)v3 initWithFrame:1 style:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(UITableView *)v5 setDelegate:self];
  [(UITableView *)v5 setDataSource:self];
  [(UIScrollView *)v5 setContentInsetAdjustmentBehavior:3];
  [(_UIPrototypingMenuViewController *)self setTableView:v5];
  tableView = [(_UIPrototypingMenuViewController *)self tableView];
  [(UIViewController *)self setView:tableView];
}

- (void)viewDidLoad
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = _UIPrototypingMenuViewController;
  [(UIViewController *)&v10 viewDidLoad];
  tableView = [(_UIPrototypingMenuViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"kNumberSettingCell"];

  tableView2 = [(_UIPrototypingMenuViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"kBoolSettingCell"];

  v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:13 target:self action:sel__reloadSettings_];
  v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:16 target:self action:sel__resetSettings_];
  v7 = +[UIColor systemRedColor];
  [(UIBarButtonItem *)v6 setTintColor:v7];

  v11[0] = v6;
  v11[1] = v5;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  navigationItem = [(UIViewController *)self navigationItem];
  [navigationItem setRightBarButtonItems:v8];
}

- (void)_reloadSettings:(id)settings
{
  allSettings = self->_allSettings;
  self->_allSettings = 0;

  tableView = [(_UIPrototypingMenuViewController *)self tableView];
  [tableView reloadData];
}

- (void)_resetSettings:(id)settings
{
  v4 = [UIAlertController alertControllerWithTitle:@"Delete Settings" message:@"Warning: This will delete all persisted prototyping settings and their values from this app's domain." preferredStyle:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51___UIPrototypingMenuViewController__resetSettings___block_invoke;
  v8[3] = &unk_1E70F59B0;
  v8[4] = self;
  v5 = [UIAlertAction actionWithTitle:@"Delete All Settings" style:2 handler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51___UIPrototypingMenuViewController__resetSettings___block_invoke_2;
  v7[3] = &unk_1E70F59B0;
  v7[4] = self;
  v6 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:v7];
  [v4 addAction:v5];
  [v4 addAction:v6];
  [(UIViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = _UIPrototypingMenuViewController;
  [(UIViewController *)&v7 viewWillAppear:appear];
  v4 = +[_UIPrototypingSettingsManager sharedManager];
  [v4 synchronizeStoredSettings];

  allSettings = self->_allSettings;
  self->_allSettings = 0;

  tableView = [(_UIPrototypingMenuViewController *)self tableView];
  [tableView reloadData];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = _UIPrototypingMenuViewController;
  [(UIViewController *)&v4 viewDidDisappear:disappear];
  v3 = +[_UIPrototypingSettingsManager sharedManager];
  [v3 synchronizeStoredSettings];
}

- (NSArray)allSettings
{
  allSettings = self->_allSettings;
  if (!allSettings)
  {
    v4 = +[_UIPrototypingSettingsManager sharedManager];
    allSettings = [v4 allSettings];
    v6 = self->_allSettings;
    self->_allSettings = allSettings;

    allSettings = self->_allSettings;
  }

  return allSettings;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(_UIPrototypingMenuViewController *)self allSettings:view];
  v6 = [v5 count];

  noContentView = [(_UIPrototypingMenuViewController *)self noContentView];
  view3 = noContentView;
  if (v6)
  {
    [noContentView removeFromSuperview];
  }

  else
  {

    if (view3)
    {
      view = [(UIViewController *)self view];
      [view bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      noContentView2 = [(_UIPrototypingMenuViewController *)self noContentView];
      [noContentView2 setFrame:{v11, v13, v15, v17}];
    }

    else
    {
      v19 = [_UIContentUnavailableView alloc];
      view2 = [(UIViewController *)self view];
      [view2 bounds];
      v21 = [(_UIContentUnavailableView *)v19 initWithFrame:@"No Settings" title:0 style:?];
      [(_UIPrototypingMenuViewController *)self setNoContentView:v21];

      view = [(_UIPrototypingMenuViewController *)self noContentView];
      [view setAutoresizingMask:18];
    }

    view3 = [(UIViewController *)self view];
    noContentView3 = [(_UIPrototypingMenuViewController *)self noContentView];
    [view3 addSubview:noContentView3];
  }

  allSettings = [(_UIPrototypingMenuViewController *)self allSettings];
  v24 = [allSettings count];

  return v24;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  allSettings = [(_UIPrototypingMenuViewController *)self allSettings];
  v9 = [allSettings objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  type = [v9 type];
  if (type > 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = off_1E7127D28[type];
  }

  v12 = [viewCopy dequeueReusableCellWithIdentifier:v11 forIndexPath:pathCopy];

  [v12 setPrototypingSetting:v9];

  return v12;
}

@end