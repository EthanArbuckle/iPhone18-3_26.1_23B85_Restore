@interface VUIMetricsRenderSessionListViewController
- (VUIMetricsRenderSessionListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)didTapClearAllSessions;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation VUIMetricsRenderSessionListViewController

- (void)viewDidLoad
{
  selfCopy = self;
  MetricsRenderSessionListViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  MetricsRenderSessionListViewController.viewWillAppear(_:)(appear);
}

- (VUIMetricsRenderSessionListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1E4205F14();
  }

  bundleCopy = bundle;
  MetricsRenderSessionListViewController.init(nibName:bundle:)();
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = MetricsRenderSessionListViewController.tableView(_:numberOfRowsInSection:)(selfCopy, v7);

  return v8;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_1_23();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_0_215();
  v7 = v4;
  v8 = v5;
  v9 = MetricsRenderSessionListViewController.tableView(_:heightForRowAt:)();

  v10 = OUTLINED_FUNCTION_20_3();
  v11(v10);
  return v9;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_1_23();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_0_215();
  v7 = v4;
  v8 = v5;
  v9 = MetricsRenderSessionListViewController.tableView(_:cellForRowAt:)(v7);

  v10 = OUTLINED_FUNCTION_20_3();
  v11(v10);

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_1_23();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_0_215();
  v7 = v4;
  v8 = v5;
  MetricsRenderSessionListViewController.tableView(_:didSelectRowAt:)();

  v9 = OUTLINED_FUNCTION_20_3();
  v10(v9);
}

- (void)didTapClearAllSessions
{
  selfCopy = self;
  sub_1E3CED744();
}

@end