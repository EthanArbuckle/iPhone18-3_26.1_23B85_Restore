@interface PXTimelineContentModeTableViewController
- (PXTimelineContentModeTableViewController)initWithContentMode:(unint64_t)mode widgetSizeClass:(unint64_t)class;
- (id)_fetchAssetSourcesForContentMode:(unint64_t)mode;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation PXTimelineContentModeTableViewController

- (id)_fetchAssetSourcesForContentMode:(unint64_t)mode
{
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  if (mode == 1)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    librarySpecificFetchOptions = [px_deprecated_appPhotoLibrary librarySpecificFetchOptions];
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"assetCollectionSubtype == %d || assetCollectionSubtype == %d", 203, 212];
    [librarySpecificFetchOptions setPredicate:v7];

    v8 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:2 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
    if ([v8 count])
    {
      v9 = [[PXTimelineContentModeDataSource alloc] initWithName:@"Smart Album" assetSources:v8];
      [v5 addObject:v9];
    }

    v10 = MEMORY[0x1E6978650];
    librarySpecificFetchOptions2 = [px_deprecated_appPhotoLibrary librarySpecificFetchOptions];
    v12 = [v10 fetchTopLevelUserCollectionsWithOptions:librarySpecificFetchOptions2];

    if ([v12 count])
    {
      v13 = [[PXTimelineContentModeDataSource alloc] initWithName:@"My Albums" assetSources:v12];
      [v5 addObject:v13];
    }

    v14 = MEMORY[0x1E6978650];
    librarySpecificFetchOptions3 = [px_deprecated_appPhotoLibrary librarySpecificFetchOptions];
    v16 = [v14 fetchAssetCollectionsWithType:1 subtype:101 options:librarySpecificFetchOptions3];

    if ([v16 count])
    {
      v17 = [[PXTimelineContentModeDataSource alloc] initWithName:@"Shared Albums" assetSources:v16];
      [v5 addObject:v17];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"PXSettingsTimelineContentModeTableViewCell" forIndexPath:pathCopy];
  dataSource = [(PXTimelineContentModeTableViewController *)self dataSource];
  v9 = [dataSource objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  assetSources = [v9 assetSources];
  v11 = [pathCopy row];

  v12 = [assetSources objectAtIndexedSubscript:v11];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    localizedTitle = [v12 localizedTitle];
    textLabel = [v7 textLabel];
    [textLabel setText:localizedTitle];
  }

  return v7;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  dataSource = [(PXTimelineContentModeTableViewController *)self dataSource];
  v6 = [dataSource objectAtIndexedSubscript:section];
  name = [v6 name];

  return name;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(PXTimelineContentModeTableViewController *)self dataSource];
  v7 = [dataSource objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  assetSources = [v7 assetSources];
  v9 = [pathCopy row];

  v22 = [assetSources objectAtIndexedSubscript:v9];

  photoLibrary = [v22 photoLibrary];
  [PXTimelineSize widgetSizeForSizeClass:[(PXTimelineContentModeTableViewController *)self widgetSizeClass]];
  v12 = v11;
  v14 = v13;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v22;
    localIdentifier = [v15 localIdentifier];
    localIdentifier2 = [v15 localIdentifier];

    v18 = [PXWidgetTimeline timelineFromLibrary:photoLibrary albumIdentifier:localIdentifier widgetIdentifier:localIdentifier2 widgetSize:v12, v14];

    if (v18)
    {
      v19 = [[PXTimelineDataSource alloc] initWithPhotoLibrary:photoLibrary forWidgetSize:v12, v14];
      v20 = [[PXSettingsTimelineInspectorViewController alloc] initWithWidgetSizeClass:[(PXTimelineContentModeTableViewController *)self widgetSizeClass] timeline:v18 dataSource:v19];
      navigationController = [(PXTimelineContentModeTableViewController *)self navigationController];
      [navigationController pushViewController:v20 animated:1];
    }
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  dataSource = [(PXTimelineContentModeTableViewController *)self dataSource];
  v6 = [dataSource objectAtIndexedSubscript:section];
  assetSources = [v6 assetSources];
  v8 = [assetSources count];

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  dataSource = [(PXTimelineContentModeTableViewController *)self dataSource];
  v4 = [dataSource count];

  return v4;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PXTimelineContentModeTableViewController;
  [(PXTimelineContentModeTableViewController *)&v5 viewDidLoad];
  tableView = [(PXTimelineContentModeTableViewController *)self tableView];
  [tableView setAllowsMultipleSelection:0];

  tableView2 = [(PXTimelineContentModeTableViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"PXSettingsTimelineContentModeTableViewCell"];
}

- (PXTimelineContentModeTableViewController)initWithContentMode:(unint64_t)mode widgetSizeClass:(unint64_t)class
{
  v11.receiver = self;
  v11.super_class = PXTimelineContentModeTableViewController;
  v6 = [(PXTimelineContentModeTableViewController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_contentMode = mode;
    v6->_widgetSizeClass = class;
    v8 = [(PXTimelineContentModeTableViewController *)v6 _fetchAssetSourcesForContentMode:mode];
    dataSource = v7->_dataSource;
    v7->_dataSource = v8;
  }

  return v7;
}

@end