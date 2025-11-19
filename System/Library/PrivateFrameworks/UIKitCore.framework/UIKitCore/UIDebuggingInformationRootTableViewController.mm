@interface UIDebuggingInformationRootTableViewController
- (UIDebuggingInformationRootTableViewController)initWithStyle:(int64_t)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation UIDebuggingInformationRootTableViewController

- (UIDebuggingInformationRootTableViewController)initWithStyle:(int64_t)a3
{
  v11.receiver = self;
  v11.super_class = UIDebuggingInformationRootTableViewController;
  v3 = [(UIDebuggingInformationListTableViewController *)&v11 initWithStyle:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(UIViewController *)v3 navigationItem];
    v6 = [[UIBarButtonItem alloc] initWithTitle:@"Dismiss" style:2 target:v4 action:sel_toggleOverlayVisibility];
    [v5 setRightBarButtonItem:v6];
    v7 = _UIImageWithName(@"UISplitViewControllerFullScreen.png");
    v8 = [v7 imageFlippedForRightToLeftLayoutDirection];

    v9 = [[UIBarButtonItem alloc] initWithImage:v8 landscapeImagePhone:0 style:0 target:v4 action:sel_toggleOverlayFullscreen];
    [v5 setLeftBarButtonItem:v9];
    [(UIViewController *)v4 setTitle:@"Debugging"];
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = UIDebuggingInformationRootTableViewController;
  [(UITableViewController *)&v6 viewWillAppear:?];
  v5 = [(UIViewController *)self navigationController];
  [v5 setToolbarHidden:1 animated:v3];
}

@end