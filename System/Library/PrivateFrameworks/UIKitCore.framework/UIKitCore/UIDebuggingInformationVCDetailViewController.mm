@interface UIDebuggingInformationVCDetailViewController
- (UIDebuggingInformationVCDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (UIViewController)inspectedVC;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_updateDataAndReload:(BOOL)reload;
- (void)inspectVC:(id)c;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation UIDebuggingInformationVCDetailViewController

- (UIDebuggingInformationVCDetailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v9.receiver = self;
  v9.super_class = UIDebuggingInformationVCDetailViewController;
  v4 = [(UIViewController *)&v9 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = [UITableView alloc];
    v6 = [(UITableView *)v5 initWithFrame:0 style:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UITableView *)v6 setDataSource:v4];
    [(UITableView *)v6 setDelegate:v4];
    [(UITableView *)v6 setRowHeight:-1.0];
    tableView = v4->_tableView;
    v4->_tableView = v6;
  }

  return v4;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = UIDebuggingInformationVCDetailViewController;
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
  v4.receiver = self;
  v4.super_class = UIDebuggingInformationVCDetailViewController;
  [(UIViewController *)&v4 viewWillAppear:appear];
  [(UIDebuggingInformationVCDetailViewController *)self _updateDataAndReload:1];
}

- (void)inspectVC:(id)c
{
  [(UIDebuggingInformationVCDetailViewController *)self setInspectedVC:c];

  [(UIDebuggingInformationVCDetailViewController *)self _updateDataAndReload:1];
}

- (void)_updateDataAndReload:(BOOL)reload
{
  reloadCopy = reload;
  v39[6] = *MEMORY[0x1E69E9840];
  if (!self->_data)
  {
    WeakRetained = objc_loadWeakRetained(&self->_inspectedVC);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [(_UIDebuggingOverlayDetail *)_UIDebuggingOverlayViewControllerDetail detailWithTitle:@"Class" detail:v7];

    v9 = objc_loadWeakRetained(&self->_inspectedVC);
    view = [v9 view];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [(_UIDebuggingOverlayDetail *)_UIDebuggingOverlayViewDetail detailWithTitle:@"View" detail:v12];

    v14 = [(_UIDebuggingOverlayDetail *)_UIDebuggingOverlayPresentingViewControllerDetail detailWithTitle:@"Presenting" detail:@"None"];
    v15 = [(_UIDebuggingOverlayDetail *)_UIDebuggingOverlayPresentedViewControllerDetail detailWithTitle:@"Presented" detail:@"None"];
    v16 = objc_loadWeakRetained(&self->_inspectedVC);
    v17 = [v16 modalPresentationStyle] + 1;
    if (v17 > 9)
    {
      v18 = @"Unknown";
    }

    else
    {
      v18 = *(&off_1E7127C60 + v17);
    }

    v19 = [(_UIDebuggingOverlayDetail *)_UIDebuggingOverlayViewControllerDetail detailWithTitle:@"Modal" detail:v18];

    v20 = [_UIDebuggingOverlayDetailIvar detailWithTitle:@"iVar Description" detail:0];
    v39[0] = v8;
    v39[1] = v13;
    v39[2] = v14;
    v39[3] = v15;
    v39[4] = v19;
    v39[5] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:6];
    data = self->_data;
    self->_data = v21;
  }

  viewIfLoaded = [(UIViewController *)self viewIfLoaded];
  if (viewIfLoaded)
  {
    v24 = viewIfLoaded;
    view2 = [(UIViewController *)self view];
    window = [view2 window];

    if (window)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v27 = self->_data;
      v28 = [(NSArray *)v27 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v35;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v35 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v34 + 1) + 8 * i);
            v33 = objc_loadWeakRetained(&self->_inspectedVC);
            [v32 _updateForInspectedViewController:{v33, v34}];
          }

          v29 = [(NSArray *)v27 countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v29);
      }

      if (reloadCopy)
      {
        [(UITableView *)self->_tableView reloadData];
      }
    }
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    viewController = objc_alloc_init(UIDebuggingInformationVCDetailViewController);
    inspectedVC = [(UIDebuggingInformationVCDetailViewController *)self inspectedVC];
    childViewControllers = [inspectedVC childViewControllers];
    v8 = [childViewControllers objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    [(UIDebuggingInformationVCDetailViewController *)viewController setInspectedVC:v8];
  }

  else
  {
    v9 = -[NSArray objectAtIndexedSubscript:](self->_data, "objectAtIndexedSubscript:", [pathCopy row]);
    viewController = [v9 viewController];

    if (!viewController)
    {
      goto LABEL_5;
    }
  }

  navigationController = [(UIViewController *)self navigationController];
  [navigationController pushViewController:viewController animated:1];

LABEL_5:
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"kCellReuseIdentifierDetail"];
  v7 = -[NSArray objectAtIndexedSubscript:](self->_data, "objectAtIndexedSubscript:", [pathCopy row]);
  if ([pathCopy section])
  {
    inspectedVC = [(UIDebuggingInformationVCDetailViewController *)self inspectedVC];
    childViewControllers = [inspectedVC childViewControllers];
    v10 = [childViewControllers objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    textLabel = [(UITableViewCell *)v6 textLabel];
    [textLabel setText:v12];

    [(UITableViewCell *)v6 setAccessoryType:1];
  }

  else
  {
    viewController = [v7 viewController];
    if (viewController)
    {
      v15 = 3;
    }

    else
    {
      v15 = 0;
    }

    [(UITableViewCell *)v6 setSelectionStyle:v15];

    viewController2 = [v7 viewController];
    [(UITableViewCell *)v6 setAccessoryType:viewController2 != 0];

    title = [v7 title];
    textLabel2 = [(UITableViewCell *)v6 textLabel];
    [textLabel2 setText:title];

    detail = [v7 detail];
    detailTextLabel = [(UITableViewCell *)v6 detailTextLabel];
    [detailTextLabel setText:detail];
  }

  return v6;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  [(UIDebuggingInformationVCDetailViewController *)self _updateDataAndReload:0];
  if (section)
  {
    inspectedVC = [(UIDebuggingInformationVCDetailViewController *)self inspectedVC];
    childViewControllers = [inspectedVC childViewControllers];
    v8 = [childViewControllers count];

    return v8;
  }

  else
  {
    data = self->_data;

    return [(NSArray *)data count];
  }
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section)
  {
    return @"Children";
  }

  else
  {
    return @"Info";
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  inspectedVC = [(UIDebuggingInformationVCDetailViewController *)self inspectedVC];
  childViewControllers = [inspectedVC childViewControllers];
  if ([childViewControllers count])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (UIViewController)inspectedVC
{
  WeakRetained = objc_loadWeakRetained(&self->_inspectedVC);

  return WeakRetained;
}

@end