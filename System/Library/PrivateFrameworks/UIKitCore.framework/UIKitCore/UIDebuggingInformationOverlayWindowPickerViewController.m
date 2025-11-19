@interface UIDebuggingInformationOverlayWindowPickerViewController
- (UIDebuggingInformationOverlayWindowPickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)loadData;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation UIDebuggingInformationOverlayWindowPickerViewController

- (UIDebuggingInformationOverlayWindowPickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v10.receiver = self;
  v10.super_class = UIDebuggingInformationOverlayWindowPickerViewController;
  v4 = [(UIViewController *)&v10 initWithNibName:a3 bundle:a4];
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
  v4 = [(UIViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(UIViewController *)self view];
  [v5 setAutoresizingMask:18];

  v6 = [(UIDebuggingInformationOverlayWindowPickerViewController *)self tableView];
  [v6 setAutoresizingMask:18];

  v7 = [(UIDebuggingInformationOverlayWindowPickerViewController *)self tableView];
  v8 = [(UIViewController *)self view];
  [v8 bounds];
  [v7 setFrame:?];

  v9 = [(UIViewController *)self view];
  v10 = [(UIDebuggingInformationOverlayWindowPickerViewController *)self tableView];
  [v9 addSubview:v10];

  [(UIDebuggingInformationOverlayWindowPickerViewController *)self loadData];
  v11 = [(UIDebuggingInformationOverlayWindowPickerViewController *)self tableView];
  [v11 reloadData];
}

- (void)loadData
{
  v3 = [(UIViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 screen];
  v6 = [UIWindow allWindowsIncludingInternalWindows:1 onlyVisibleWindows:0 forScreen:v5];

  [(UIDebuggingInformationOverlayWindowPickerViewController *)self setWindows:v6];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13 = a4;
  v5 = +[UIDebuggingInformationOverlay overlay];
  v6 = [v5 inspectedWindow];
  v7 = [(UIDebuggingInformationOverlayWindowPickerViewController *)self windows];
  v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v13, "row")}];

  if (v6 != v8)
  {
    v9 = [(UIDebuggingInformationOverlayWindowPickerViewController *)self windows];
    v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v13, "row")}];
    v11 = +[UIDebuggingInformationOverlay overlay];
    [v11 setInspectedWindow:v10];

    v12 = [(UIDebuggingInformationOverlayWindowPickerViewController *)self tableView];
    [v12 reloadData];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(UIDebuggingInformationOverlayWindowPickerViewController *)self windows];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);

  v10 = [[UITableViewCell alloc] initWithStyle:1 reuseIdentifier:@"kCellReuseIdentifierWindows"];
  v11 = [(UITableViewCell *)v10 textLabel];
  [v11 setText:v9];

  v12 = [(UIDebuggingInformationOverlayWindowPickerViewController *)self windows];
  v13 = [v5 row];

  v14 = [v12 objectAtIndexedSubscript:v13];
  v15 = +[UIDebuggingInformationOverlay overlay];
  v16 = [v15 inspectedWindow];

  if (v14 == v16)
  {
    v17 = 3;
  }

  else
  {
    v17 = 0;
  }

  if (v14 == v16)
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(UIDebuggingInformationOverlayWindowPickerViewController *)self windows:a3];
  v5 = [v4 count];

  return v5;
}

@end