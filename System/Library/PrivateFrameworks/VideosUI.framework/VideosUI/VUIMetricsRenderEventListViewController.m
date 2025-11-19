@interface VUIMetricsRenderEventListViewController
- (VUIMetricsRenderEventListViewController)initWithEvents:(id)a3;
- (VUIMetricsRenderEventListViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
- (void)viewDidLoad;
@end

@implementation VUIMetricsRenderEventListViewController

- (VUIMetricsRenderEventListViewController)initWithEvents:(id)a3
{
  type metadata accessor for MetricsRenderEvent();
  v3 = sub_1E42062B4();
  return MetricsRenderEventListViewController.init(events:)(v3);
}

- (void)viewDidLoad
{
  v2 = self;
  MetricsRenderEventListViewController.viewDidLoad()();
}

- (VUIMetricsRenderEventListViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  MetricsRenderEventListViewController.init(nibName:bundle:)();
}

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  MetricsRenderEventListViewController.tableView(_:willDisplayHeaderView:forSection:)(v10, v9, a5);
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  object = MetricsRenderEventListViewController.tableView(_:titleForHeaderInSection:)(v7, a4).value._object;

  if (object)
  {
    v9 = sub_1E4205ED4();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_1_23();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_0_215();
  v7 = v4;
  v8 = v5;
  v9 = MetricsRenderEventListViewController.tableView(_:heightForRowAt:)();

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
  v9 = MetricsRenderEventListViewController.tableView(_:cellForRowAt:)(v7);

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
  MetricsRenderEventListViewController.tableView(_:didSelectRowAt:)();

  v9 = OUTLINED_FUNCTION_20_3();
  v10(v9);
}

@end