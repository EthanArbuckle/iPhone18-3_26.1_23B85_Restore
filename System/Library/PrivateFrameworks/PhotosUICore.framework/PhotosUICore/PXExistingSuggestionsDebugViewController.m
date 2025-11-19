@interface PXExistingSuggestionsDebugViewController
- (PXExistingSuggestionsDebugViewController)initWithName:(id)a3 options:(id)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)assetsDataSourceManagerForSuggestion:(id)a3;
- (id)oneUpPresentationInitialAssetReference:(id)a3;
- (id)oneUpPresentationMediaProvider:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_fetchExistingSuggestions;
- (void)configureCell:(id)a3 withItem:(id)a4;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation PXExistingSuggestionsDebugViewController

- (void)_fetchExistingSuggestions
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

  v8 = [MEMORY[0x1E6978AE8] fetchSuggestionsWithOptions:v4];
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
          v17 = [[PXExistingSuggestionsDebugCollectionItem alloc] initWithSuggestion:v16];
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
  v16 = a3;
  v5 = a4;
  v6 = [v5 suggestion];
  [v16 setSuggestion:v6];
  v7 = [v6 state];
  v8 = 0;
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_13;
      }

      v9 = [MEMORY[0x1E69DC888] labelColor];
    }

    else
    {
      v9 = [MEMORY[0x1E69DC888] blueColor];
    }
  }

  else
  {
    switch(v7)
    {
      case 2:
        v9 = [MEMORY[0x1E69DC888] grayColor];
        break;
      case 4:
        v9 = [MEMORY[0x1E69DC888] redColor];
        break;
      case 3:
        v9 = [MEMORY[0x1E69DC888] greenColor];
        break;
      default:
        goto LABEL_13;
    }
  }

  v8 = v9;
LABEL_13:
  v10 = [v16 textLabel];
  v11 = [v5 name];
  v12 = [v11 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F1741150];

  [v10 setText:v12];
  [v10 setTextColor:v8];
  v13 = [v16 detailTextLabel];
  v14 = [v5 description];
  [v13 setText:v14];

  [v13 setTextColor:v8];
  [v13 sizeToFit];
  v15 = [v5 suggestion];

  [v16 setAccessoryType:4 * (v15 != 0)];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"ExistingSuggestionsDebugTableViewCellIdentifier"];
  if (!v7)
  {
    v7 = [[PXExistingSuggestionsDebugViewCell alloc] initWithStyle:3 reuseIdentifier:@"ExistingSuggestionsDebugTableViewCellIdentifier"];
    v8 = [(PXExistingSuggestionsDebugViewCell *)v7 detailTextLabel];
    [v8 setNumberOfLines:2];

    v9 = [(PXExistingSuggestionsDebugViewCell *)v7 detailTextLabel];
    [v9 setLineBreakMode:0];
  }

  v10 = -[NSArray objectAtIndexedSubscript:](self->_sectionNames, "objectAtIndexedSubscript:", [v6 section]);
  v11 = [(NSDictionary *)self->_itemsBySectionName objectForKeyedSubscript:v10];
  v12 = [v6 row];

  v13 = [v11 objectAtIndexedSubscript:v12];

  [(PXExistingSuggestionsDebugViewController *)self configureCell:v7 withItem:v13];

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(NSArray *)self->_sectionNames objectAtIndexedSubscript:a4];
  v6 = [(NSDictionary *)self->_itemsBySectionName objectForKeyedSubscript:v5];
  v7 = [v6 count];

  return v7;
}

- (id)oneUpPresentationInitialAssetReference:(id)a3
{
  v3 = [(PXExistingSuggestionsDebugViewController *)self oneUpPresentationDataSourceManager:a3];
  v4 = [v3 dataSource];
  v5 = [v4 startingAssetReference];

  return v5;
}

- (id)oneUpPresentationMediaProvider:(id)a3
{
  v3 = objc_alloc_init(PXPhotoKitUIMediaProvider);

  return v3;
}

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  sectionNames = self->_sectionNames;
  v6 = a4;
  v14 = -[NSArray objectAtIndexedSubscript:](sectionNames, "objectAtIndexedSubscript:", [v6 section]);
  v7 = [(NSDictionary *)self->_itemsBySectionName objectForKeyedSubscript:?];
  v8 = [v6 row];

  v9 = [v7 objectAtIndexedSubscript:v8];

  v10 = [v9 suggestion];
  if (v10)
  {
    v11 = [MEMORY[0x1E6978630] fetchKeyCuratedAssetInAssetCollection:v10 referenceAsset:0];
    v12 = [[PXSuggestionDebugViewController alloc] initWithSuggestion:v10 suggestionInfo:0];
    v13 = [(PXExistingSuggestionsDebugViewController *)self navigationController];
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
  v12 = -[NSArray objectAtIndexedSubscript:](sectionNames, "objectAtIndexedSubscript:", [v6 section]);
  v7 = [(NSDictionary *)self->_itemsBySectionName objectForKeyedSubscript:?];
  v8 = [v6 row];

  v9 = [v7 objectAtIndexedSubscript:v8];

  v10 = [v9 suggestion];
  if (v10)
  {
    objc_storeStrong(&self->_currentSuggestion, v10);
    [(UIViewController *)self px_enableOneUpPresentation];
    v11 = [(UIViewController *)self px_oneUpPresentation];
    [v11 setDelegate:self];
    [v11 startWithConfigurationHandler:0];
  }
}

- (id)assetsDataSourceManagerForSuggestion:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6978630] fetchKeyAssetsInAssetCollection:a3 options:0];
  v4 = [v3 fetchedObjects];

  v5 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssets:v4 title:0];
  v6 = MEMORY[0x1E6978760];
  v14[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v8 = [v6 transientCollectionListWithCollections:v7 title:0];

  v9 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v8 options:0];
  v10 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v9 options:4];
  v11 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v10];
  v12 = [[PXPhotoKitAssetsDataSourceManager alloc] initWithPhotosDataSource:v11];

  return v12;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = PXExistingSuggestionsDebugViewController;
  [(PXExistingSuggestionsDebugViewController *)&v7 viewDidLoad];
  v3 = [(PXExistingSuggestionsDebugViewController *)self navigationItem];
  v4 = v3;
  if (self->_name)
  {
    name = self->_name;
  }

  else
  {
    name = @"Existing Suggestions";
  }

  [v3 setTitle:name];

  v6 = [(PXExistingSuggestionsDebugViewController *)self tableView];
  [v6 setEstimatedRowHeight:44.0];

  [(PXExistingSuggestionsDebugViewController *)self _fetchExistingSuggestions];
}

- (PXExistingSuggestionsDebugViewController)initWithName:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXExistingSuggestionsDebugViewController;
  v9 = [(PXExistingSuggestionsDebugViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    objc_storeStrong(&v10->_options, a4);
  }

  return v10;
}

@end