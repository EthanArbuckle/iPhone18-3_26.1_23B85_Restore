@interface UIDebuggingInformationInspectorDetailViewController
- (UIDebuggingInformationInspectorDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_forceViewLayout;
- (void)_updateData;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation UIDebuggingInformationInspectorDetailViewController

- (UIDebuggingInformationInspectorDetailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v15[2] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = UIDebuggingInformationInspectorDetailViewController;
  v4 = [(UIViewController *)&v14 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = [UITableView alloc];
    v6 = [(UITableView *)v5 initWithFrame:0 style:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UITableView *)v6 setDataSource:v4];
    [(UITableView *)v6 setDelegate:v4];
    [(UITableView *)v6 setRowHeight:-1.0];
    tableView = v4->_tableView;
    v4->_tableView = v6;
    v8 = v6;

    v9 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:16 target:v4 action:sel__flush];
    v15[0] = v9;
    v10 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:13 target:v4 action:sel__forceViewLayout];
    v15[1] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];

    navigationItem = [(UIViewController *)v4 navigationItem];
    [navigationItem setRightBarButtonItems:v11];
  }

  return v4;
}

- (void)_forceViewLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_inspectedView);
  [WeakRetained setNeedsLayout];

  v4 = objc_loadWeakRetained(&self->_inspectedView);
  [v4 layoutIfNeeded];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = UIDebuggingInformationInspectorDetailViewController;
  [(UIViewController *)&v9 viewDidLoad];
  v3 = +[UIColor whiteColor];
  view = [(UIViewController *)self view];
  [view setBackgroundColor:v3];

  view2 = [(UIViewController *)self view];
  [view2 setAutoresizingMask:18];

  [(UIView *)self->_tableView setAutoresizingMask:18];
  tableView = self->_tableView;
  view3 = [(UIViewController *)self view];
  [view3 bounds];
  [(UITableView *)tableView setFrame:?];

  view4 = [(UIViewController *)self view];
  [view4 addSubview:self->_tableView];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = UIDebuggingInformationInspectorDetailViewController;
  [(UIViewController *)&v5 viewWillAppear:appear];
  WeakRetained = objc_loadWeakRetained(&self->_inspectedView);

  if (WeakRetained)
  {
    [(UIDebuggingInformationInspectorDetailViewController *)self _updateData];
    [(UITableView *)self->_tableView reloadData];
  }
}

- (void)_updateData
{
  v46[7] = *MEMORY[0x1E69E9840];
  if (![(NSArray *)self->_data count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_inspectedView);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [_UIDebuggingOverlayDetail detailWithTitle:@"Class" detail:v5];

    v7 = objc_loadWeakRetained(&self->_inspectedView);
    [v7 frame];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{%.2f %.2f}, {%.2f %.2f}}", v8, v9, v10, v11];
    v13 = [_UIDebuggingOverlayDetail detailWithTitle:@"Frame" detail:v12];

    v14 = objc_loadWeakRetained(&self->_inspectedView);
    [v14 bounds];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{%.2f %.2f}, {%.2f %.2f}}", v15, v16, v17, v18];
    v20 = [_UIDebuggingOverlayDetail detailWithTitle:@"Bounds" detail:v19];

    v21 = objc_loadWeakRetained(&self->_inspectedView);
    [v21 safeAreaInsets];
    v22 = NSStringFromUIEdgeInsets(v47);
    v23 = [_UIDebuggingOverlayDetail detailWithTitle:@"Safe Area" detail:v22];

    v24 = objc_alloc_init(_UIDebuggingOverlayDetailOpacity);
    v25 = [_UIDebuggingOverlayDetailIvar detailWithTitle:@"iVar Description" detail:0];
    [(_UIDebuggingOverlayDetail *)v24 setTitle:@"Opacity"];
    v26 = objc_loadWeakRetained(&self->_inspectedView);
    [(_UIDebuggingOverlayDetailOpacity *)v24 _updateForInspectedView:v26];

    v27 = objc_loadWeakRetained(&self->_inspectedView);
    _wantsAutolayout = [v27 _wantsAutolayout];
    v29 = @"No";
    if (_wantsAutolayout)
    {
      v29 = @"Yes";
    }

    v30 = v29;

    v31 = [_UIDebuggingOverlayDetail detailWithTitle:@"Auto Layout" detail:v30];

    v46[0] = v6;
    v46[1] = v25;
    v46[2] = v13;
    v46[3] = v20;
    v46[4] = v23;
    v46[5] = v24;
    v46[6] = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:7];
    data = self->_data;
    self->_data = v32;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v34 = self->_data;
  v35 = [(NSArray *)v34 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v42;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v42 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v41 + 1) + 8 * i);
        v40 = objc_loadWeakRetained(&self->_inspectedView);
        [v39 _updateForInspectedView:v40];
      }

      v36 = [(NSArray *)v34 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v36);
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v8 = -[NSArray objectAtIndexedSubscript:](self->_data, "objectAtIndexedSubscript:", [path row]);
  viewController = [v8 viewController];

  if (viewController)
  {
    navigationController = [(UIViewController *)self navigationController];
    viewController2 = [v8 viewController];
    [navigationController pushViewController:viewController2 animated:1];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"kCellReuseIdentifierDetail"];
  data = self->_data;
  v8 = [pathCopy row];

  v9 = [(NSArray *)data objectAtIndexedSubscript:v8];
  viewController = [v9 viewController];
  if (viewController)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  [(UITableViewCell *)v6 setSelectionStyle:v11];

  viewController2 = [v9 viewController];
  [(UITableViewCell *)v6 setAccessoryType:viewController2 != 0];

  title = [v9 title];
  textLabel = [(UITableViewCell *)v6 textLabel];
  [textLabel setText:title];

  detail = [v9 detail];
  detailTextLabel = [(UITableViewCell *)v6 detailTextLabel];
  [detailTextLabel setText:detail];

  view = [v9 view];
  [(UITableViewCell *)v6 setAccessoryView:view];

  return v6;
}

@end