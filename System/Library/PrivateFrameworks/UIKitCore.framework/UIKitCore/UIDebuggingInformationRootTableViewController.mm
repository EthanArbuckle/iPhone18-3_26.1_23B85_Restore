@interface UIDebuggingInformationRootTableViewController
- (UIDebuggingInformationRootTableViewController)initWithStyle:(int64_t)style;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation UIDebuggingInformationRootTableViewController

- (UIDebuggingInformationRootTableViewController)initWithStyle:(int64_t)style
{
  v11.receiver = self;
  v11.super_class = UIDebuggingInformationRootTableViewController;
  v3 = [(UIDebuggingInformationListTableViewController *)&v11 initWithStyle:style];
  v4 = v3;
  if (v3)
  {
    navigationItem = [(UIViewController *)v3 navigationItem];
    v6 = [[UIBarButtonItem alloc] initWithTitle:@"Dismiss" style:2 target:v4 action:sel_toggleOverlayVisibility];
    [navigationItem setRightBarButtonItem:v6];
    v7 = _UIImageWithName(@"UISplitViewControllerFullScreen.png");
    imageFlippedForRightToLeftLayoutDirection = [v7 imageFlippedForRightToLeftLayoutDirection];

    v9 = [[UIBarButtonItem alloc] initWithImage:imageFlippedForRightToLeftLayoutDirection landscapeImagePhone:0 style:0 target:v4 action:sel_toggleOverlayFullscreen];
    [navigationItem setLeftBarButtonItem:v9];
    [(UIViewController *)v4 setTitle:@"Debugging"];
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = UIDebuggingInformationRootTableViewController;
  [(UITableViewController *)&v6 viewWillAppear:?];
  navigationController = [(UIViewController *)self navigationController];
  [navigationController setToolbarHidden:1 animated:appearCopy];
}

@end