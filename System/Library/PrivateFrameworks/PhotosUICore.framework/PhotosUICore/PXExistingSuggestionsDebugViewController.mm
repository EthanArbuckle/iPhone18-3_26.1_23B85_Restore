@interface PXExistingSuggestionsDebugViewController
- (PXExistingSuggestionsDebugViewController)initWithName:(id)name options:(id)options;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)assetsDataSourceManagerForSuggestion:(id)suggestion;
- (id)oneUpPresentationInitialAssetReference:(id)reference;
- (id)oneUpPresentationMediaProvider:(id)provider;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_fetchExistingSuggestions;
- (void)configureCell:(id)cell withItem:(id)item;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation PXExistingSuggestionsDebugViewController

- (void)_fetchExistingSuggestions
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

  v8 = [MEMORY[0x1E6978AE8] fetchSuggestionsWithOptions:librarySpecificFetchOptions];
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
          v17 = [[PXExistingSuggestionsDebugCollectionItem alloc] initWithSuggestion:v16];
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
  cellCopy = cell;
  itemCopy = item;
  suggestion = [itemCopy suggestion];
  [cellCopy setSuggestion:suggestion];
  state = [suggestion state];
  v8 = 0;
  if (state <= 1)
  {
    if (state)
    {
      if (state != 1)
      {
        goto LABEL_13;
      }

      labelColor = [MEMORY[0x1E69DC888] labelColor];
    }

    else
    {
      labelColor = [MEMORY[0x1E69DC888] blueColor];
    }
  }

  else
  {
    switch(state)
    {
      case 2:
        labelColor = [MEMORY[0x1E69DC888] grayColor];
        break;
      case 4:
        labelColor = [MEMORY[0x1E69DC888] redColor];
        break;
      case 3:
        labelColor = [MEMORY[0x1E69DC888] greenColor];
        break;
      default:
        goto LABEL_13;
    }
  }

  v8 = labelColor;
LABEL_13:
  textLabel = [cellCopy textLabel];
  name = [itemCopy name];
  v12 = [name stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F1741150];

  [textLabel setText:v12];
  [textLabel setTextColor:v8];
  detailTextLabel = [cellCopy detailTextLabel];
  v14 = [itemCopy description];
  [detailTextLabel setText:v14];

  [detailTextLabel setTextColor:v8];
  [detailTextLabel sizeToFit];
  suggestion2 = [itemCopy suggestion];

  [cellCopy setAccessoryType:4 * (suggestion2 != 0)];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"ExistingSuggestionsDebugTableViewCellIdentifier"];
  if (!v7)
  {
    v7 = [[PXExistingSuggestionsDebugViewCell alloc] initWithStyle:3 reuseIdentifier:@"ExistingSuggestionsDebugTableViewCellIdentifier"];
    detailTextLabel = [(PXExistingSuggestionsDebugViewCell *)v7 detailTextLabel];
    [detailTextLabel setNumberOfLines:2];

    detailTextLabel2 = [(PXExistingSuggestionsDebugViewCell *)v7 detailTextLabel];
    [detailTextLabel2 setLineBreakMode:0];
  }

  v10 = -[NSArray objectAtIndexedSubscript:](self->_sectionNames, "objectAtIndexedSubscript:", [pathCopy section]);
  v11 = [(NSDictionary *)self->_itemsBySectionName objectForKeyedSubscript:v10];
  v12 = [pathCopy row];

  v13 = [v11 objectAtIndexedSubscript:v12];

  [(PXExistingSuggestionsDebugViewController *)self configureCell:v7 withItem:v13];

  return v7;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(NSArray *)self->_sectionNames objectAtIndexedSubscript:section];
  v6 = [(NSDictionary *)self->_itemsBySectionName objectForKeyedSubscript:v5];
  v7 = [v6 count];

  return v7;
}

- (id)oneUpPresentationInitialAssetReference:(id)reference
{
  v3 = [(PXExistingSuggestionsDebugViewController *)self oneUpPresentationDataSourceManager:reference];
  dataSource = [v3 dataSource];
  startingAssetReference = [dataSource startingAssetReference];

  return startingAssetReference;
}

- (id)oneUpPresentationMediaProvider:(id)provider
{
  v3 = objc_alloc_init(PXPhotoKitUIMediaProvider);

  return v3;
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  sectionNames = self->_sectionNames;
  pathCopy = path;
  v14 = -[NSArray objectAtIndexedSubscript:](sectionNames, "objectAtIndexedSubscript:", [pathCopy section]);
  v7 = [(NSDictionary *)self->_itemsBySectionName objectForKeyedSubscript:?];
  v8 = [pathCopy row];

  v9 = [v7 objectAtIndexedSubscript:v8];

  suggestion = [v9 suggestion];
  if (suggestion)
  {
    v11 = [MEMORY[0x1E6978630] fetchKeyCuratedAssetInAssetCollection:suggestion referenceAsset:0];
    v12 = [[PXSuggestionDebugViewController alloc] initWithSuggestion:suggestion suggestionInfo:0];
    navigationController = [(PXExistingSuggestionsDebugViewController *)self navigationController];
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
  v12 = -[NSArray objectAtIndexedSubscript:](sectionNames, "objectAtIndexedSubscript:", [pathCopy section]);
  v7 = [(NSDictionary *)self->_itemsBySectionName objectForKeyedSubscript:?];
  v8 = [pathCopy row];

  v9 = [v7 objectAtIndexedSubscript:v8];

  suggestion = [v9 suggestion];
  if (suggestion)
  {
    objc_storeStrong(&self->_currentSuggestion, suggestion);
    [(UIViewController *)self px_enableOneUpPresentation];
    px_oneUpPresentation = [(UIViewController *)self px_oneUpPresentation];
    [px_oneUpPresentation setDelegate:self];
    [px_oneUpPresentation startWithConfigurationHandler:0];
  }
}

- (id)assetsDataSourceManagerForSuggestion:(id)suggestion
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6978630] fetchKeyAssetsInAssetCollection:suggestion options:0];
  fetchedObjects = [v3 fetchedObjects];

  v5 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssets:fetchedObjects title:0];
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
  navigationItem = [(PXExistingSuggestionsDebugViewController *)self navigationItem];
  v4 = navigationItem;
  if (self->_name)
  {
    name = self->_name;
  }

  else
  {
    name = @"Existing Suggestions";
  }

  [navigationItem setTitle:name];

  tableView = [(PXExistingSuggestionsDebugViewController *)self tableView];
  [tableView setEstimatedRowHeight:44.0];

  [(PXExistingSuggestionsDebugViewController *)self _fetchExistingSuggestions];
}

- (PXExistingSuggestionsDebugViewController)initWithName:(id)name options:(id)options
{
  nameCopy = name;
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = PXExistingSuggestionsDebugViewController;
  v9 = [(PXExistingSuggestionsDebugViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_options, options);
  }

  return v10;
}

@end