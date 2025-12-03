@interface VUIMetricsRenderEventListViewController
- (VUIMetricsRenderEventListViewController)initWithEvents:(id)events;
- (VUIMetricsRenderEventListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
- (void)viewDidLoad;
@end

@implementation VUIMetricsRenderEventListViewController

- (VUIMetricsRenderEventListViewController)initWithEvents:(id)events
{
  type metadata accessor for MetricsRenderEvent();
  v3 = sub_1E42062B4();
  return MetricsRenderEventListViewController.init(events:)(v3);
}

- (void)viewDidLoad
{
  selfCopy = self;
  MetricsRenderEventListViewController.viewDidLoad()();
}

- (VUIMetricsRenderEventListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1E4205F14();
  }

  bundleCopy = bundle;
  MetricsRenderEventListViewController.init(nibName:bundle:)();
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  viewCopy = view;
  headerViewCopy = headerView;
  selfCopy = self;
  MetricsRenderEventListViewController.tableView(_:willDisplayHeaderView:forSection:)(selfCopy, headerViewCopy, section);
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  object = MetricsRenderEventListViewController.tableView(_:titleForHeaderInSection:)(selfCopy, section).value._object;

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

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
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