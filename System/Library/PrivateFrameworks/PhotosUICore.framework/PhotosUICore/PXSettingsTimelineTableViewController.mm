@interface PXSettingsTimelineTableViewController
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation PXSettingsTimelineTableViewController

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"PXSettingsTimelineTableViewCell" forIndexPath:v6];
  v8 = [(PXSettingsTimelineTableViewController *)self widgetSizes];
  v9 = [v6 row];

  v10 = [v8 objectAtIndexedSubscript:v9];
  v11 = [v10 integerValue];

  v12 = [PXTimelineSize sizeDescriptionForSizeClass:v11];
  v13 = [v7 textLabel];
  [v13 setText:v12];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(PXSettingsTimelineTableViewController *)self widgetSizes];
  v7 = [v5 row];

  v8 = [v6 objectAtIndexedSubscript:v7];
  v9 = [v8 integerValue];

  v18 = [MEMORY[0x1E69789A8] px_systemPhotoLibrary];
  [PXTimelineSize widgetSizeForSizeClass:v9];
  v11 = v10;
  v13 = v12;
  v14 = [[PXTimelineDataSource alloc] initWithPhotoLibrary:v18 forWidgetSize:v10, v12];
  v15 = [PXWidgetTimeline timelineFromLibrary:v18 forWidgetSize:v9 timelineSize:v11, v13];
  v16 = [[PXSettingsTimelineInspectorViewController alloc] initWithWidgetSizeClass:v9 timeline:v15 dataSource:v14];
  v17 = [(PXSettingsTimelineTableViewController *)self navigationController];
  [v17 pushViewController:v16 animated:1];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(PXSettingsTimelineTableViewController *)self widgetSizes:a3];
  v5 = [v4 count];

  return v5;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PXSettingsTimelineTableViewController;
  [(PXSettingsTimelineTableViewController *)&v8 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v4 = [(PXSettingsTimelineTableViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = +[PXTimelineSize allSupportedSizes];
  [(PXSettingsTimelineTableViewController *)self setWidgetSizes:v5];

  v6 = [(PXSettingsTimelineTableViewController *)self tableView];
  [v6 setAllowsMultipleSelection:0];

  v7 = [(PXSettingsTimelineTableViewController *)self tableView];
  [v7 registerClass:objc_opt_class() forCellReuseIdentifier:@"PXSettingsTimelineTableViewCell"];
}

@end