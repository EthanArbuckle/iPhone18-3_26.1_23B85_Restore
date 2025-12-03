@interface UIDebuggingInformationVCHierarchyViewController
- (UIDebuggingInformationVCHierarchyViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)getViewControllersRecursiveWithLevel:(int)level forView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view indentationLevelForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation UIDebuggingInformationVCHierarchyViewController

- (UIDebuggingInformationVCHierarchyViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = UIDebuggingInformationVCHierarchyViewController;
  v4 = [(UIViewController *)&v8 initWithNibName:name bundle:bundle];
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
  view = [(UIViewController *)self view];
  [view setAutoresizingMask:18];

  tableView = [(UIDebuggingInformationVCHierarchyViewController *)self tableView];
  [tableView setAutoresizingMask:18];

  view2 = [(UIViewController *)self view];
  tableView2 = [(UIDebuggingInformationVCHierarchyViewController *)self tableView];
  [view2 addSubview:tableView2];

  tableView3 = [(UIDebuggingInformationVCHierarchyViewController *)self tableView];
  view3 = [(UIViewController *)self view];
  [view3 bounds];
  [tableView3 setFrame:?];

  view4 = [(UIViewController *)self view];
  v10 = +[UIColor whiteColor];
  [view4 setBackgroundColor:v10];
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = UIDebuggingInformationVCHierarchyViewController;
  [(UIViewController *)&v9 viewWillAppear:appear];
  v4 = +[UIDebuggingInformationOverlay overlay];
  inspectedWindow = [v4 inspectedWindow];
  rootViewController = [inspectedWindow rootViewController];
  v7 = [(UIDebuggingInformationVCHierarchyViewController *)self getViewControllersRecursiveWithLevel:0 forView:rootViewController];
  [(UIDebuggingInformationVCHierarchyViewController *)self setData:v7];

  tableView = [(UIDebuggingInformationVCHierarchyViewController *)self tableView];
  [tableView reloadData];
}

- (id)getViewControllersRecursiveWithLevel:(int)level forView:(id)view
{
  v22 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v7 = [[UIDebuggingInformationVCHierarchyDataContainer alloc] initWithViewController:viewCopy atLevel:level];
  v8 = [MEMORY[0x1E695DF70] arrayWithObjects:{v7, 0}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  childViewControllers = [viewCopy childViewControllers];
  v10 = [childViewControllers countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        v14 = [(UIDebuggingInformationVCHierarchyViewController *)self getViewControllersRecursiveWithLevel:(level + 1) forView:*(*(&v17 + 1) + 8 * i)];
        [v8 addObjectsFromArray:v14];
      }

      v11 = [childViewControllers countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [v8 copy];

  return v15;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  data = [(UIDebuggingInformationVCHierarchyViewController *)self data];
  v7 = [pathCopy row];

  v8 = [data objectAtIndexedSubscript:v7];
  viewController = [v8 viewController];

  v9 = objc_alloc_init(UIDebuggingInformationVCDetailViewController);
  [(UIDebuggingInformationVCDetailViewController *)v9 inspectVC:viewController];
  navigationController = [(UIViewController *)self navigationController];
  [navigationController pushViewController:v9 animated:1];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"kCellReuseIdentifier"];
  data = [(UIDebuggingInformationVCHierarchyViewController *)self data];
  v8 = [pathCopy row];

  v9 = [data objectAtIndexedSubscript:v8];
  viewController = [v9 viewController];

  if (viewController)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
  }

  else
  {
    v12 = @"Deallocated";
  }

  textLabel = [(UITableViewCell *)v6 textLabel];
  [textLabel setText:v12];

  [(UITableViewCell *)v6 setSelectionStyle:3];
  [(UITableViewCell *)v6 setAccessoryType:1];

  return v6;
}

- (int64_t)tableView:(id)view indentationLevelForRowAtIndexPath:(id)path
{
  pathCopy = path;
  data = [(UIDebuggingInformationVCHierarchyViewController *)self data];
  v7 = [pathCopy row];

  v8 = [data objectAtIndexedSubscript:v7];
  level = [v8 level];

  return level;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(UIDebuggingInformationVCHierarchyViewController *)self data:view];
  v5 = [v4 count];

  return v5;
}

@end