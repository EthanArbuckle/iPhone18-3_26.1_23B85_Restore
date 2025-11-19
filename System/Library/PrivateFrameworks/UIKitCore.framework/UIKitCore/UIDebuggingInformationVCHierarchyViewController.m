@interface UIDebuggingInformationVCHierarchyViewController
- (UIDebuggingInformationVCHierarchyViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)getViewControllersRecursiveWithLevel:(int)a3 forView:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 indentationLevelForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation UIDebuggingInformationVCHierarchyViewController

- (UIDebuggingInformationVCHierarchyViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = UIDebuggingInformationVCHierarchyViewController;
  v4 = [(UIViewController *)&v8 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [UITableView alloc];
    v6 = [(UITableView *)v5 initWithFrame:0 style:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UITableView *)v6 setDataSource:v4];
    [(UITableView *)v6 setDelegate:v4];
    [(UITableView *)v6 setRowHeight:-1.0];
    [(UIDebuggingInformationVCHierarchyViewController *)v4 setTableView:v6];
  }

  return v4;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = UIDebuggingInformationVCHierarchyViewController;
  [(UIViewController *)&v11 viewDidLoad];
  v3 = [(UIViewController *)self view];
  [v3 setAutoresizingMask:18];

  v4 = [(UIDebuggingInformationVCHierarchyViewController *)self tableView];
  [v4 setAutoresizingMask:18];

  v5 = [(UIViewController *)self view];
  v6 = [(UIDebuggingInformationVCHierarchyViewController *)self tableView];
  [v5 addSubview:v6];

  v7 = [(UIDebuggingInformationVCHierarchyViewController *)self tableView];
  v8 = [(UIViewController *)self view];
  [v8 bounds];
  [v7 setFrame:?];

  v9 = [(UIViewController *)self view];
  v10 = +[UIColor whiteColor];
  [v9 setBackgroundColor:v10];
}

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = UIDebuggingInformationVCHierarchyViewController;
  [(UIViewController *)&v9 viewWillAppear:a3];
  v4 = +[UIDebuggingInformationOverlay overlay];
  v5 = [v4 inspectedWindow];
  v6 = [v5 rootViewController];
  v7 = [(UIDebuggingInformationVCHierarchyViewController *)self getViewControllersRecursiveWithLevel:0 forView:v6];
  [(UIDebuggingInformationVCHierarchyViewController *)self setData:v7];

  v8 = [(UIDebuggingInformationVCHierarchyViewController *)self tableView];
  [v8 reloadData];
}

- (id)getViewControllersRecursiveWithLevel:(int)a3 forView:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [[UIDebuggingInformationVCHierarchyDataContainer alloc] initWithViewController:v6 atLevel:a3];
  v8 = [MEMORY[0x1E695DF70] arrayWithObjects:{v7, 0}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v6 childViewControllers];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(UIDebuggingInformationVCHierarchyViewController *)self getViewControllersRecursiveWithLevel:(a3 + 1) forView:*(*(&v17 + 1) + 8 * i)];
        [v8 addObjectsFromArray:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [v8 copy];

  return v15;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(UIDebuggingInformationVCHierarchyViewController *)self data];
  v7 = [v5 row];

  v8 = [v6 objectAtIndexedSubscript:v7];
  v11 = [v8 viewController];

  v9 = objc_alloc_init(UIDebuggingInformationVCDetailViewController);
  [(UIDebuggingInformationVCDetailViewController *)v9 inspectVC:v11];
  v10 = [(UIViewController *)self navigationController];
  [v10 pushViewController:v9 animated:1];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"kCellReuseIdentifier"];
  v7 = [(UIDebuggingInformationVCHierarchyViewController *)self data];
  v8 = [v5 row];

  v9 = [v7 objectAtIndexedSubscript:v8];
  v10 = [v9 viewController];

  if (v10)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
  }

  else
  {
    v12 = @"Deallocated";
  }

  v13 = [(UITableViewCell *)v6 textLabel];
  [v13 setText:v12];

  [(UITableViewCell *)v6 setSelectionStyle:3];
  [(UITableViewCell *)v6 setAccessoryType:1];

  return v6;
}

- (int64_t)tableView:(id)a3 indentationLevelForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(UIDebuggingInformationVCHierarchyViewController *)self data];
  v7 = [v5 row];

  v8 = [v6 objectAtIndexedSubscript:v7];
  v9 = [v8 level];

  return v9;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(UIDebuggingInformationVCHierarchyViewController *)self data:a3];
  v5 = [v4 count];

  return v5;
}

@end