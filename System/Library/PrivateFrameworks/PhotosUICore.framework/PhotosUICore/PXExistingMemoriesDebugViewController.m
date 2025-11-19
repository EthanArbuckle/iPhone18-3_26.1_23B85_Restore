@interface PXExistingMemoriesDebugViewController
- (PXExistingMemoriesDebugViewController)initWithName:(id)a3 options:(id)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_photosDetailsContextForMemory:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_fetchExistingMemories;
- (void)configureCell:(id)a3 withItem:(id)a4;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation PXExistingMemoriesDebugViewController

- (void)_fetchExistingMemories
{
  v38[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v4 = [v3 librarySpecificFetchOptions];

  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
  v38[0] = v5;
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
  v38[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  [v4 setSortDescriptors:v7];

  v8 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v4];
  if ([v8 count])
  {
    v29 = self;
    v30 = v4;
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v8;
    v10 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    v28 = v8;
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = 0;
      v14 = *v34;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v34 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v33 + 1) + 8 * i);
          v17 = [[PXExistingMemoriesDebugCollectionItem alloc] initWithMemory:v16];
          v18 = [v16 creationDate];
          v19 = [MEMORY[0x1E696AB78] localizedStringFromDate:v18 dateStyle:1 timeStyle:0];
          v20 = v19;
          if (!v13 || ([v19 isEqualToString:v12] & 1) == 0)
          {
            v21 = objc_alloc_init(MEMORY[0x1E695DF70]);

            v22 = v20;
            [v9 addObject:v22];
            [(NSDictionary *)v32 setObject:v21 forKeyedSubscript:v22];
            v12 = v22;
            v13 = v21;
          }

          [v13 addObject:v17];
        }

        v11 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    v23 = [v9 reverseObjectEnumerator];
    v24 = [v23 allObjects];
    sectionNames = v29->_sectionNames;
    v29->_sectionNames = v24;

    itemsBySectionName = v29->_itemsBySectionName;
    v29->_itemsBySectionName = v32;
    v27 = v32;

    v4 = v30;
    v8 = v28;
  }
}

- (void)configureCell:(id)a3 withItem:(id)a4
{
  v5 = a4;
  v6 = a3;
  v14 = [v5 memory];
  [v6 setMemory:v14];
  v7 = [MEMORY[0x1E69DC888] labelColor];
  v8 = [v6 textLabel];
  v9 = [v5 name];
  v10 = [v9 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F1741150];

  [v8 setText:v10];
  [v8 setTextColor:v7];
  v11 = [v6 detailTextLabel];
  v12 = [v5 description];
  [v11 setText:v12];

  [v11 setTextColor:v7];
  [v11 sizeToFit];
  v13 = [v5 memory];

  [v6 setAccessoryType:4 * (v13 != 0)];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"ExistingMemoriesDebugTableViewCellIdentifier"];
  if (!v7)
  {
    v7 = [[PXExistingMemoriesDebugViewCell alloc] initWithStyle:3 reuseIdentifier:@"ExistingMemoriesDebugTableViewCellIdentifier"];
    v8 = [(PXExistingMemoriesDebugViewCell *)v7 detailTextLabel];
    [v8 setNumberOfLines:2];

    v9 = [(PXExistingMemoriesDebugViewCell *)v7 detailTextLabel];
    [v9 setLineBreakMode:0];
  }

  v10 = -[NSArray objectAtIndexedSubscript:](self->_sectionNames, "objectAtIndexedSubscript:", [v6 section]);
  v11 = [(NSDictionary *)self->_itemsBySectionName objectForKeyedSubscript:v10];
  v12 = [v6 row];

  v13 = [v11 objectAtIndexedSubscript:v12];

  [(PXExistingMemoriesDebugViewController *)self configureCell:v7 withItem:v13];

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(NSArray *)self->_sectionNames objectAtIndexedSubscript:a4];
  v6 = [(NSDictionary *)self->_itemsBySectionName objectForKeyedSubscript:v5];
  v7 = [v6 count];

  return v7;
}

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  sectionNames = self->_sectionNames;
  v6 = a4;
  v14 = -[NSArray objectAtIndexedSubscript:](sectionNames, "objectAtIndexedSubscript:", [v6 section]);
  v7 = [(NSDictionary *)self->_itemsBySectionName objectForKeyedSubscript:?];
  v8 = [v6 row];

  v9 = [v7 objectAtIndexedSubscript:v8];

  v10 = [v9 memory];
  if (v10)
  {
    v11 = [MEMORY[0x1E6978630] fetchKeyCuratedAssetInAssetCollection:v10 referenceAsset:0];
    v12 = [[PXDebugMemoriesViewController alloc] initWithMemory:v10 memoryInfo:0];
    v13 = [(PXExistingMemoriesDebugViewController *)self navigationController];
    [v13 px_presentViewControllerInNavigationController:v12 animated:1 dimissButtonLocation:0 completion:0];
  }
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  sectionNames = self->_sectionNames;
  v6 = a4;
  v7 = -[NSArray objectAtIndexedSubscript:](sectionNames, "objectAtIndexedSubscript:", [v6 section]);
  v8 = [(NSDictionary *)self->_itemsBySectionName objectForKeyedSubscript:v7];
  v9 = [v6 row];

  v10 = [v8 objectAtIndexedSubscript:v9];

  v11 = [v10 description];
  v12 = [v11 rangeOfString:@"\n"];

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 44.0;
  }

  else
  {
    v13 = 66.0;
  }

  return v13;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  sectionNames = self->_sectionNames;
  v6 = a4;
  v14 = -[NSArray objectAtIndexedSubscript:](sectionNames, "objectAtIndexedSubscript:", [v6 section]);
  v7 = [(NSDictionary *)self->_itemsBySectionName objectForKeyedSubscript:?];
  v8 = [v6 row];

  v9 = [v7 objectAtIndexedSubscript:v8];

  v10 = [v9 memory];
  if (v10)
  {
    v11 = [(PXExistingMemoriesDebugViewController *)self _photosDetailsContextForMemory:v10];
    v12 = [[PXPhotosDetailsUIViewController alloc] initWithContext:v11 options:0];
    v13 = [(PXExistingMemoriesDebugViewController *)self navigationController];
    [v13 pushViewController:v12 animated:1];
  }
}

- (id)_photosDetailsContextForMemory:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6978760];
  v16 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v16 count:1];
  v7 = [v3 transientCollectionListWithCollections:v6 title:{0, v16, v17}];

  v8 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v7 options:0];
  v9 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v8 options:0];
  [(PXPhotosDataSourceConfiguration *)v9 setHideHiddenAssets:1];
  v10 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v9];
  v11 = [[PXDisplayTitleInfo alloc] initWithAssetCollection:v5 useVerboseSmartDescription:0];
  v12 = [MEMORY[0x1E6978630] fetchKeyCuratedAssetInAssetCollection:v5 referenceAsset:0];
  v13 = [PXPhotosDetailsContext alloc];

  v14 = [(PXPhotosDetailsContext *)v13 initWithPhotosDataSource:v10 displayTitleInfo:v11 parentContext:0 keyAssetsFetchResult:v12];

  return v14;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = PXExistingMemoriesDebugViewController;
  [(PXExistingMemoriesDebugViewController *)&v7 viewDidLoad];
  v3 = [(PXExistingMemoriesDebugViewController *)self navigationItem];
  v4 = v3;
  if (self->_name)
  {
    name = self->_name;
  }

  else
  {
    name = @"Existing Memories";
  }

  [v3 setTitle:name];

  v6 = [(PXExistingMemoriesDebugViewController *)self tableView];
  [v6 setEstimatedRowHeight:44.0];

  [(PXExistingMemoriesDebugViewController *)self _fetchExistingMemories];
}

- (PXExistingMemoriesDebugViewController)initWithName:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXExistingMemoriesDebugViewController;
  v9 = [(PXExistingMemoriesDebugViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    objc_storeStrong(&v10->_options, a4);
  }

  return v10;
}

@end