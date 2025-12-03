@interface UIDebuggingInformationListTableViewController
- (UIDebuggingInformationListTableViewController)initWithStyle:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)topLevelViewControllerForName:(id)name;
- (void)addTopLevelViewController:(id)controller forName:(id)name;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)toggleOverlayFullscreen;
- (void)toggleOverlayVisibility;
- (void)viewDidLoad;
@end

@implementation UIDebuggingInformationListTableViewController

- (UIDebuggingInformationListTableViewController)initWithStyle:(int64_t)style
{
  v9.receiver = self;
  v9.super_class = UIDebuggingInformationListTableViewController;
  v3 = [(UITableViewController *)&v9 initWithStyle:style];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    topLevelViewControllers = v3->topLevelViewControllers;
    v3->topLevelViewControllers = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    topLevelViewControllerNames = v3->topLevelViewControllerNames;
    v3->topLevelViewControllerNames = v6;
  }

  return v3;
}

- (void)toggleOverlayFullscreen
{
  v2 = +[UIDebuggingInformationOverlay overlay];
  [v2 toggleFullscreen];
}

- (void)toggleOverlayVisibility
{
  v2 = +[UIDebuggingInformationOverlay overlay];
  [v2 toggleVisibility];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = UIDebuggingInformationListTableViewController;
  [(UIViewController *)&v8 viewDidLoad];
  tableView = [(UITableViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"kReuseIdentifier"];

  v4 = [UIView alloc];
  tableView2 = [(UITableViewController *)self tableView];
  [tableView2 frame];
  v6 = [(UIView *)v4 initWithFrame:0.0, 0.0];
  tableView3 = [(UITableViewController *)self tableView];
  [tableView3 setTableFooterView:v6];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"kReuseIdentifier" forIndexPath:pathCopy];
  textLabel = [v7 textLabel];
  topLevelViewControllerNames = self->topLevelViewControllerNames;
  v10 = [pathCopy row];

  v11 = [(NSMutableArray *)topLevelViewControllerNames objectAtIndex:v10];
  [textLabel setText:v11];

  [v7 setAccessoryType:1];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  topLevelViewControllers = self->topLevelViewControllers;
  pathCopy = path;
  v19 = -[NSMutableArray objectAtIndex:](topLevelViewControllers, "objectAtIndex:", [pathCopy row]);
  topLevelViewControllerNames = self->topLevelViewControllerNames;
  v8 = [pathCopy row];

  v9 = [(NSMutableArray *)topLevelViewControllerNames objectAtIndexedSubscript:v8];
  [v19 setTitle:v9];

  if (objc_opt_respondsToSelector())
  {
    [v19 prepareForDisplayAsTopLevelDebuggingViewController];
  }

  navigationItem = [v19 navigationItem];
  rightBarButtonItems = [navigationItem rightBarButtonItems];
  v12 = [rightBarButtonItems count];

  if (!v12)
  {
    navigationController = [(UIViewController *)self navigationController];
    topViewController = [navigationController topViewController];
    navigationItem2 = [topViewController navigationItem];
    rightBarButtonItems2 = [navigationItem2 rightBarButtonItems];
    navigationItem3 = [v19 navigationItem];
    [navigationItem3 setRightBarButtonItems:rightBarButtonItems2];
  }

  navigationController2 = [(UIViewController *)self navigationController];
  [navigationController2 pushViewController:v19 animated:1];
}

- (void)addTopLevelViewController:(id)controller forName:(id)name
{
  controllerCopy = controller;
  topLevelViewControllers = self->topLevelViewControllers;
  nameCopy = name;
  [(NSMutableArray *)topLevelViewControllers addObject:controllerCopy];
  [(NSMutableArray *)self->topLevelViewControllerNames addObject:nameCopy];

  tableView = [(UITableViewController *)self tableView];
  [tableView reloadData];
}

- (id)topLevelViewControllerForName:(id)name
{
  v4 = [(NSMutableArray *)self->topLevelViewControllerNames indexOfObjectIdenticalTo:name];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->topLevelViewControllers objectAtIndex:v4];
  }

  return v5;
}

@end