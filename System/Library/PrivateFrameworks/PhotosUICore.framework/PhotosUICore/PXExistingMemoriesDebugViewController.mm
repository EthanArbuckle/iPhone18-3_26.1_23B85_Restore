@interface PXExistingMemoriesDebugViewController
- (PXExistingMemoriesDebugViewController)initWithName:(id)name options:(id)options;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_photosDetailsContextForMemory:(id)memory;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_fetchExistingMemories;
- (void)configureCell:(id)cell withItem:(id)item;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation PXExistingMemoriesDebugViewController

- (void)_fetchExistingMemories
{
  v38[2] = *MEMORY[0x1E69E9840];
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  librarySpecificFetchOptions = [px_deprecated_appPhotoLibrary librarySpecificFetchOptions];

  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
  v38[0] = v5;
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
  v38[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  [librarySpecificFetchOptions setSortDescriptors:v7];

  v8 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
  if ([v8 count])
  {
    selfCopy = self;
    v30 = librarySpecificFetchOptions;
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
          creationDate = [v16 creationDate];
          v19 = [MEMORY[0x1E696AB78] localizedStringFromDate:creationDate dateStyle:1 timeStyle:0];
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

    reverseObjectEnumerator = [v9 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    sectionNames = selfCopy->_sectionNames;
    selfCopy->_sectionNames = allObjects;

    itemsBySectionName = selfCopy->_itemsBySectionName;
    selfCopy->_itemsBySectionName = v32;
    v27 = v32;

    librarySpecificFetchOptions = v30;
    v8 = v28;
  }
}

- (void)configureCell:(id)cell withItem:(id)item
{
  itemCopy = item;
  cellCopy = cell;
  memory = [itemCopy memory];
  [cellCopy setMemory:memory];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  textLabel = [cellCopy textLabel];
  name = [itemCopy name];
  v10 = [name stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F1741150];

  [textLabel setText:v10];
  [textLabel setTextColor:labelColor];
  detailTextLabel = [cellCopy detailTextLabel];
  v12 = [itemCopy description];
  [detailTextLabel setText:v12];

  [detailTextLabel setTextColor:labelColor];
  [detailTextLabel sizeToFit];
  memory2 = [itemCopy memory];

  [cellCopy setAccessoryType:4 * (memory2 != 0)];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"ExistingMemoriesDebugTableViewCellIdentifier"];
  if (!v7)
  {
    v7 = [[PXExistingMemoriesDebugViewCell alloc] initWithStyle:3 reuseIdentifier:@"ExistingMemoriesDebugTableViewCellIdentifier"];
    detailTextLabel = [(PXExistingMemoriesDebugViewCell *)v7 detailTextLabel];
    [detailTextLabel setNumberOfLines:2];

    detailTextLabel2 = [(PXExistingMemoriesDebugViewCell *)v7 detailTextLabel];
    [detailTextLabel2 setLineBreakMode:0];
  }

  v10 = -[NSArray objectAtIndexedSubscript:](self->_sectionNames, "objectAtIndexedSubscript:", [pathCopy section]);
  v11 = [(NSDictionary *)self->_itemsBySectionName objectForKeyedSubscript:v10];
  v12 = [pathCopy row];

  v13 = [v11 objectAtIndexedSubscript:v12];

  [(PXExistingMemoriesDebugViewController *)self configureCell:v7 withItem:v13];

  return v7;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(NSArray *)self->_sectionNames objectAtIndexedSubscript:section];
  v6 = [(NSDictionary *)self->_itemsBySectionName objectForKeyedSubscript:v5];
  v7 = [v6 count];

  return v7;
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  sectionNames = self->_sectionNames;
  pathCopy = path;
  v14 = -[NSArray objectAtIndexedSubscript:](sectionNames, "objectAtIndexedSubscript:", [pathCopy section]);
  v7 = [(NSDictionary *)self->_itemsBySectionName objectForKeyedSubscript:?];
  v8 = [pathCopy row];

  v9 = [v7 objectAtIndexedSubscript:v8];

  memory = [v9 memory];
  if (memory)
  {
    v11 = [MEMORY[0x1E6978630] fetchKeyCuratedAssetInAssetCollection:memory referenceAsset:0];
    v12 = [[PXDebugMemoriesViewController alloc] initWithMemory:memory memoryInfo:0];
    navigationController = [(PXExistingMemoriesDebugViewController *)self navigationController];
    [navigationController px_presentViewControllerInNavigationController:v12 animated:1 dimissButtonLocation:0 completion:0];
  }
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  sectionNames = self->_sectionNames;
  pathCopy = path;
  v7 = -[NSArray objectAtIndexedSubscript:](sectionNames, "objectAtIndexedSubscript:", [pathCopy section]);
  v8 = [(NSDictionary *)self->_itemsBySectionName objectForKeyedSubscript:v7];
  v9 = [pathCopy row];

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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  sectionNames = self->_sectionNames;
  pathCopy = path;
  v14 = -[NSArray objectAtIndexedSubscript:](sectionNames, "objectAtIndexedSubscript:", [pathCopy section]);
  v7 = [(NSDictionary *)self->_itemsBySectionName objectForKeyedSubscript:?];
  v8 = [pathCopy row];

  v9 = [v7 objectAtIndexedSubscript:v8];

  memory = [v9 memory];
  if (memory)
  {
    v11 = [(PXExistingMemoriesDebugViewController *)self _photosDetailsContextForMemory:memory];
    v12 = [[PXPhotosDetailsUIViewController alloc] initWithContext:v11 options:0];
    navigationController = [(PXExistingMemoriesDebugViewController *)self navigationController];
    [navigationController pushViewController:v12 animated:1];
  }
}

- (id)_photosDetailsContextForMemory:(id)memory
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6978760];
  memoryCopy = memory;
  v4 = MEMORY[0x1E695DEC8];
  memoryCopy2 = memory;
  v6 = [v4 arrayWithObjects:&memoryCopy count:1];
  v7 = [v3 transientCollectionListWithCollections:v6 title:{0, memoryCopy, v17}];

  v8 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v7 options:0];
  v9 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v8 options:0];
  [(PXPhotosDataSourceConfiguration *)v9 setHideHiddenAssets:1];
  v10 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v9];
  v11 = [[PXDisplayTitleInfo alloc] initWithAssetCollection:memoryCopy2 useVerboseSmartDescription:0];
  v12 = [MEMORY[0x1E6978630] fetchKeyCuratedAssetInAssetCollection:memoryCopy2 referenceAsset:0];
  v13 = [PXPhotosDetailsContext alloc];

  v14 = [(PXPhotosDetailsContext *)v13 initWithPhotosDataSource:v10 displayTitleInfo:v11 parentContext:0 keyAssetsFetchResult:v12];

  return v14;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = PXExistingMemoriesDebugViewController;
  [(PXExistingMemoriesDebugViewController *)&v7 viewDidLoad];
  navigationItem = [(PXExistingMemoriesDebugViewController *)self navigationItem];
  v4 = navigationItem;
  if (self->_name)
  {
    name = self->_name;
  }

  else
  {
    name = @"Existing Memories";
  }

  [navigationItem setTitle:name];

  tableView = [(PXExistingMemoriesDebugViewController *)self tableView];
  [tableView setEstimatedRowHeight:44.0];

  [(PXExistingMemoriesDebugViewController *)self _fetchExistingMemories];
}

- (PXExistingMemoriesDebugViewController)initWithName:(id)name options:(id)options
{
  nameCopy = name;
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = PXExistingMemoriesDebugViewController;
  v9 = [(PXExistingMemoriesDebugViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_options, options);
  }

  return v10;
}

@end