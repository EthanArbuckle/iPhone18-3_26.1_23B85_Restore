@interface PXTimelineContentModeTableViewController
- (PXTimelineContentModeTableViewController)initWithContentMode:(unint64_t)a3 widgetSizeClass:(unint64_t)a4;
- (id)_fetchAssetSourcesForContentMode:(unint64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation PXTimelineContentModeTableViewController

- (id)_fetchAssetSourcesForContentMode:(unint64_t)a3
{
  v4 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  if (a3 == 1)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [v4 librarySpecificFetchOptions];
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"assetCollectionSubtype == %d || assetCollectionSubtype == %d", 203, 212];
    [v6 setPredicate:v7];

    v8 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:2 subtype:0x7FFFFFFFFFFFFFFFLL options:v6];
    if ([v8 count])
    {
      v9 = [[PXTimelineContentModeDataSource alloc] initWithName:@"Smart Album" assetSources:v8];
      [v5 addObject:v9];
    }

    v10 = MEMORY[0x1E6978650];
    v11 = [v4 librarySpecificFetchOptions];
    v12 = [v10 fetchTopLevelUserCollectionsWithOptions:v11];

    if ([v12 count])
    {
      v13 = [[PXTimelineContentModeDataSource alloc] initWithName:@"My Albums" assetSources:v12];
      [v5 addObject:v13];
    }

    v14 = MEMORY[0x1E6978650];
    v15 = [v4 librarySpecificFetchOptions];
    v16 = [v14 fetchAssetCollectionsWithType:1 subtype:101 options:v15];

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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"PXSettingsTimelineContentModeTableViewCell" forIndexPath:v6];
  v8 = [(PXTimelineContentModeTableViewController *)self dataSource];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];
  v10 = [v9 assetSources];
  v11 = [v6 row];

  v12 = [v10 objectAtIndexedSubscript:v11];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v12 localizedTitle];
    v14 = [v7 textLabel];
    [v14 setText:v13];
  }

  return v7;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(PXTimelineContentModeTableViewController *)self dataSource];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 name];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(PXTimelineContentModeTableViewController *)self dataSource];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
  v8 = [v7 assetSources];
  v9 = [v5 row];

  v22 = [v8 objectAtIndexedSubscript:v9];

  v10 = [v22 photoLibrary];
  [PXTimelineSize widgetSizeForSizeClass:[(PXTimelineContentModeTableViewController *)self widgetSizeClass]];
  v12 = v11;
  v14 = v13;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v22;
    v16 = [v15 localIdentifier];
    v17 = [v15 localIdentifier];

    v18 = [PXWidgetTimeline timelineFromLibrary:v10 albumIdentifier:v16 widgetIdentifier:v17 widgetSize:v12, v14];

    if (v18)
    {
      v19 = [[PXTimelineDataSource alloc] initWithPhotoLibrary:v10 forWidgetSize:v12, v14];
      v20 = [[PXSettingsTimelineInspectorViewController alloc] initWithWidgetSizeClass:[(PXTimelineContentModeTableViewController *)self widgetSizeClass] timeline:v18 dataSource:v19];
      v21 = [(PXTimelineContentModeTableViewController *)self navigationController];
      [v21 pushViewController:v20 animated:1];
    }
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(PXTimelineContentModeTableViewController *)self dataSource];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 assetSources];
  v8 = [v7 count];

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(PXTimelineContentModeTableViewController *)self dataSource];
  v4 = [v3 count];

  return v4;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PXTimelineContentModeTableViewController;
  [(PXTimelineContentModeTableViewController *)&v5 viewDidLoad];
  v3 = [(PXTimelineContentModeTableViewController *)self tableView];
  [v3 setAllowsMultipleSelection:0];

  v4 = [(PXTimelineContentModeTableViewController *)self tableView];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"PXSettingsTimelineContentModeTableViewCell"];
}

- (PXTimelineContentModeTableViewController)initWithContentMode:(unint64_t)a3 widgetSizeClass:(unint64_t)a4
{
  v11.receiver = self;
  v11.super_class = PXTimelineContentModeTableViewController;
  v6 = [(PXTimelineContentModeTableViewController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_contentMode = a3;
    v6->_widgetSizeClass = a4;
    v8 = [(PXTimelineContentModeTableViewController *)v6 _fetchAssetSourcesForContentMode:a3];
    dataSource = v7->_dataSource;
    v7->_dataSource = v8;
  }

  return v7;
}

@end