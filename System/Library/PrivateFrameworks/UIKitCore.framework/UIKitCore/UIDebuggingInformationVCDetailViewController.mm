@interface UIDebuggingInformationVCDetailViewController
- (UIDebuggingInformationVCDetailViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (UIViewController)inspectedVC;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_updateDataAndReload:(BOOL)a3;
- (void)inspectVC:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation UIDebuggingInformationVCDetailViewController

- (UIDebuggingInformationVCDetailViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v9.receiver = self;
  v9.super_class = UIDebuggingInformationVCDetailViewController;
  v4 = [(UIViewController *)&v9 initWithNibName:a3 bundle:a4];
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
  v4 = [(UIViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(UIViewController *)self view];
  [v5 setAutoresizingMask:18];

  [(UIView *)self->_tableView setAutoresizingMask:18];
  tableView = self->_tableView;
  v7 = [(UIViewController *)self view];
  [v7 bounds];
  [(UITableView *)tableView setFrame:?];

  v8 = [(UIViewController *)self view];
  [v8 addSubview:self->_tableView];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UIDebuggingInformationVCDetailViewController;
  [(UIViewController *)&v4 viewWillAppear:a3];
  [(UIDebuggingInformationVCDetailViewController *)self _updateDataAndReload:1];
}

- (void)inspectVC:(id)a3
{
  [(UIDebuggingInformationVCDetailViewController *)self setInspectedVC:a3];

  [(UIDebuggingInformationVCDetailViewController *)self _updateDataAndReload:1];
}

- (void)_updateDataAndReload:(BOOL)a3
{
  v3 = a3;
  v39[6] = *MEMORY[0x1E69E9840];
  if (!self->_data)
  {
    WeakRetained = objc_loadWeakRetained(&self->_inspectedVC);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [(_UIDebuggingOverlayDetail *)_UIDebuggingOverlayViewControllerDetail detailWithTitle:@"Class" detail:v7];

    v9 = objc_loadWeakRetained(&self->_inspectedVC);
    v10 = [v9 view];
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

  v23 = [(UIViewController *)self viewIfLoaded];
  if (v23)
  {
    v24 = v23;
    v25 = [(UIViewController *)self view];
    v26 = [v25 window];

    if (v26)
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

      if (v3)
      {
        [(UITableView *)self->_tableView reloadData];
      }
    }
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v11 = a4;
  if ([v11 section])
  {
    v5 = objc_alloc_init(UIDebuggingInformationVCDetailViewController);
    v6 = [(UIDebuggingInformationVCDetailViewController *)self inspectedVC];
    v7 = [v6 childViewControllers];
    v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v11, "row")}];
    [(UIDebuggingInformationVCDetailViewController *)v5 setInspectedVC:v8];
  }

  else
  {
    v9 = -[NSArray objectAtIndexedSubscript:](self->_data, "objectAtIndexedSubscript:", [v11 row]);
    v5 = [v9 viewController];

    if (!v5)
    {
      goto LABEL_5;
    }
  }

  v10 = [(UIViewController *)self navigationController];
  [v10 pushViewController:v5 animated:1];

LABEL_5:
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"kCellReuseIdentifierDetail"];
  v7 = -[NSArray objectAtIndexedSubscript:](self->_data, "objectAtIndexedSubscript:", [v5 row]);
  if ([v5 section])
  {
    v8 = [(UIDebuggingInformationVCDetailViewController *)self inspectedVC];
    v9 = [v8 childViewControllers];
    v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [(UITableViewCell *)v6 textLabel];
    [v13 setText:v12];

    [(UITableViewCell *)v6 setAccessoryType:1];
  }

  else
  {
    v14 = [v7 viewController];
    if (v14)
    {
      v15 = 3;
    }

    else
    {
      v15 = 0;
    }

    [(UITableViewCell *)v6 setSelectionStyle:v15];

    v16 = [v7 viewController];
    [(UITableViewCell *)v6 setAccessoryType:v16 != 0];

    v17 = [v7 title];
    v18 = [(UITableViewCell *)v6 textLabel];
    [v18 setText:v17];

    v19 = [v7 detail];
    v20 = [(UITableViewCell *)v6 detailTextLabel];
    [v20 setText:v19];
  }

  return v6;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  [(UIDebuggingInformationVCDetailViewController *)self _updateDataAndReload:0];
  if (a4)
  {
    v6 = [(UIDebuggingInformationVCDetailViewController *)self inspectedVC];
    v7 = [v6 childViewControllers];
    v8 = [v7 count];

    return v8;
  }

  else
  {
    data = self->_data;

    return [(NSArray *)data count];
  }
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4)
  {
    return @"Children";
  }

  else
  {
    return @"Info";
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(UIDebuggingInformationVCDetailViewController *)self inspectedVC];
  v4 = [v3 childViewControllers];
  if ([v4 count])
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