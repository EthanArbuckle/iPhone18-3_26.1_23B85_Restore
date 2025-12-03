@interface UIDebuggingInformationOverlayWindowPickerViewController
- (UIDebuggingInformationOverlayWindowPickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)loadData;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation UIDebuggingInformationOverlayWindowPickerViewController

- (UIDebuggingInformationOverlayWindowPickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v10.receiver = self;
  v10.super_class = UIDebuggingInformationOverlayWindowPickerViewController;
  v4 = [(UIViewController *)&v10 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(UIViewController *)v4 setTitle:@"Current Window"];
    v6 = [UITableView alloc];
    v7 = [(UITableView *)v6 initWithFrame:0 style:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UITableView *)v7 setDataSource:v5];
    [(UITableView *)v7 setDelegate:v5];
    [(UITableView *)v7 setRowHeight:-1.0];
    tableView = v5->_tableView;
    v5->_tableView = v7;
  }

  return v5;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = UIDebuggingInformationOverlayWindowPickerViewController;
  [(UIViewController *)&v12 viewDidLoad];
  v3 = +[UIColor whiteColor];
  view = [(UIViewController *)self view];
  [view setBackgroundColor:v3];

  view2 = [(UIViewController *)self view];
  [view2 setAutoresizingMask:18];

  tableView = [(UIDebuggingInformationOverlayWindowPickerViewController *)self tableView];
  [tableView setAutoresizingMask:18];

  tableView2 = [(UIDebuggingInformationOverlayWindowPickerViewController *)self tableView];
  view3 = [(UIViewController *)self view];
  [view3 bounds];
  [tableView2 setFrame:?];

  view4 = [(UIViewController *)self view];
  tableView3 = [(UIDebuggingInformationOverlayWindowPickerViewController *)self tableView];
  [view4 addSubview:tableView3];

  [(UIDebuggingInformationOverlayWindowPickerViewController *)self loadData];
  tableView4 = [(UIDebuggingInformationOverlayWindowPickerViewController *)self tableView];
  [tableView4 reloadData];
}

- (void)loadData
{
  view = [(UIViewController *)self view];
  window = [view window];
  screen = [window screen];
  v6 = [UIWindow allWindowsIncludingInternalWindows:1 onlyVisibleWindows:0 forScreen:screen];

  [(UIDebuggingInformationOverlayWindowPickerViewController *)self setWindows:v6];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = +[UIDebuggingInformationOverlay overlay];
  inspectedWindow = [v5 inspectedWindow];
  windows = [(UIDebuggingInformationOverlayWindowPickerViewController *)self windows];
  v8 = [windows objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  if (inspectedWindow != v8)
  {
    windows2 = [(UIDebuggingInformationOverlayWindowPickerViewController *)self windows];
    v10 = [windows2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    v11 = +[UIDebuggingInformationOverlay overlay];
    [v11 setInspectedWindow:v10];

    tableView = [(UIDebuggingInformationOverlayWindowPickerViewController *)self tableView];
    [tableView reloadData];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  windows = [(UIDebuggingInformationOverlayWindowPickerViewController *)self windows];
  v7 = [windows objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);

  v10 = [[UITableViewCell alloc] initWithStyle:1 reuseIdentifier:@"kCellReuseIdentifierWindows"];
  textLabel = [(UITableViewCell *)v10 textLabel];
  [textLabel setText:v9];

  windows2 = [(UIDebuggingInformationOverlayWindowPickerViewController *)self windows];
  v13 = [pathCopy row];

  v14 = [windows2 objectAtIndexedSubscript:v13];
  v15 = +[UIDebuggingInformationOverlay overlay];
  inspectedWindow = [v15 inspectedWindow];

  if (v14 == inspectedWindow)
  {
    v17 = 3;
  }

  else
  {
    v17 = 0;
  }

  if (v14 == inspectedWindow)
  {
    v18 = 0;
  }

  else
  {
    v18 = 3;
  }

  [(UITableViewCell *)v10 setAccessoryType:v17];
  [(UITableViewCell *)v10 setSelectionStyle:v18];

  return v10;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(UIDebuggingInformationOverlayWindowPickerViewController *)self windows:view];
  v5 = [v4 count];

  return v5;
}

@end