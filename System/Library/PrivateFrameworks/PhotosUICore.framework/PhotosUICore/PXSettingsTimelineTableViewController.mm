@interface PXSettingsTimelineTableViewController
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation PXSettingsTimelineTableViewController

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"PXSettingsTimelineTableViewCell" forIndexPath:pathCopy];
  widgetSizes = [(PXSettingsTimelineTableViewController *)self widgetSizes];
  v9 = [pathCopy row];

  v10 = [widgetSizes objectAtIndexedSubscript:v9];
  integerValue = [v10 integerValue];

  v12 = [PXTimelineSize sizeDescriptionForSizeClass:integerValue];
  textLabel = [v7 textLabel];
  [textLabel setText:v12];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  widgetSizes = [(PXSettingsTimelineTableViewController *)self widgetSizes];
  v7 = [pathCopy row];

  v8 = [widgetSizes objectAtIndexedSubscript:v7];
  integerValue = [v8 integerValue];

  px_systemPhotoLibrary = [MEMORY[0x1E69789A8] px_systemPhotoLibrary];
  [PXTimelineSize widgetSizeForSizeClass:integerValue];
  v11 = v10;
  v13 = v12;
  v14 = [[PXTimelineDataSource alloc] initWithPhotoLibrary:px_systemPhotoLibrary forWidgetSize:v10, v12];
  v15 = [PXWidgetTimeline timelineFromLibrary:px_systemPhotoLibrary forWidgetSize:integerValue timelineSize:v11, v13];
  v16 = [[PXSettingsTimelineInspectorViewController alloc] initWithWidgetSizeClass:integerValue timeline:v15 dataSource:v14];
  navigationController = [(PXSettingsTimelineTableViewController *)self navigationController];
  [navigationController pushViewController:v16 animated:1];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(PXSettingsTimelineTableViewController *)self widgetSizes:view];
  v5 = [v4 count];

  return v5;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PXSettingsTimelineTableViewController;
  [(PXSettingsTimelineTableViewController *)&v8 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view = [(PXSettingsTimelineTableViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  v5 = +[PXTimelineSize allSupportedSizes];
  [(PXSettingsTimelineTableViewController *)self setWidgetSizes:v5];

  tableView = [(PXSettingsTimelineTableViewController *)self tableView];
  [tableView setAllowsMultipleSelection:0];

  tableView2 = [(PXSettingsTimelineTableViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"PXSettingsTimelineTableViewCell"];
}

@end