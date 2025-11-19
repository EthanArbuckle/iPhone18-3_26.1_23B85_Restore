@interface VUIMetricsRenderSessionListViewController
- (VUIMetricsRenderSessionListViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)didTapClearAllSessions;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation VUIMetricsRenderSessionListViewController

- (void)viewDidLoad
{
  v2 = self;
  MetricsRenderSessionListViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  MetricsRenderSessionListViewController.viewWillAppear(_:)(a3);
}

- (VUIMetricsRenderSessionListViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  MetricsRenderSessionListViewController.init(nibName:bundle:)();
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  v8 = MetricsRenderSessionListViewController.tableView(_:numberOfRowsInSection:)(v6, v7);

  return v8;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
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
  v2 = self;
  sub_1E3CED744();
}

@end