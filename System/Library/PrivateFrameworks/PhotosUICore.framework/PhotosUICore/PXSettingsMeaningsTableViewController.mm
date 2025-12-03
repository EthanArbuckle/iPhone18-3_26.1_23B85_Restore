@interface PXSettingsMeaningsTableViewController
- (PXSettingsMeaningsTableViewController)init;
- (id)_meaningDataContainerByMeaningLabels;
- (id)_momentIdentifiersByMeaningLabel;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation PXSettingsMeaningsTableViewController

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"PXSettingsMeaningsTableViewCellId" forIndexPath:pathCopy];
  meaningLabels = [(PXSettingsMeaningsTableViewController *)self meaningLabels];
  v9 = [pathCopy row];

  v10 = [meaningLabels objectAtIndexedSubscript:v9];

  textLabel = [v7 textLabel];
  [textLabel setText:v10];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  meaningLabels = [(PXSettingsMeaningsTableViewController *)self meaningLabels];
  v7 = [pathCopy row];

  v15 = [meaningLabels objectAtIndexedSubscript:v7];

  meaningDataContainerByMeaningLabels = [(PXSettingsMeaningsTableViewController *)self meaningDataContainerByMeaningLabels];
  v9 = [meaningDataContainerByMeaningLabels objectForKeyedSubscript:v15];

  assetCollection = [v9 assetCollection];
  curatedAssets = [v9 curatedAssets];
  v12 = PXPhotosViewConfigurationForAssetCollectionWithExistingAssetsFetchResult(assetCollection, curatedAssets, 0, 0, 1);

  v13 = [[PXPhotosUIViewController alloc] initWithConfiguration:v12];
  navigationController = [(PXSettingsMeaningsTableViewController *)self navigationController];
  [navigationController pushViewController:v13 animated:1];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(PXSettingsMeaningsTableViewController *)self meaningLabels:view];
  v5 = [v4 count];

  return v5;
}

- (id)_momentIdentifiersByMeaningLabel
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = MEMORY[0x1E695DFF8];
  v5 = NSTemporaryDirectory();
  v6 = [v5 stringByAppendingPathComponent:@"fingerprint.csv"];
  v7 = [v4 fileURLWithPath:v6];
  v8 = [v3 stringWithContentsOfURL:v7 encoding:4 error:0];

  if (v8)
  {
    selfCopy = self;
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v37 = v8;
    v10 = [v8 componentsSeparatedByString:@"\n"];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v11)
    {
      v12 = v11;
      v42 = 0;
      v13 = 1;
      v14 = *v47;
      v15 = @"Meaning_";
      v39 = *v47;
      v40 = v10;
      do
      {
        v16 = 0;
        v41 = v12;
        do
        {
          if (*v47 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v17 = [*(*(&v46 + 1) + 8 * v16) componentsSeparatedByString:{@", "}];
          v18 = [v17 subarrayWithRange:{1, objc_msgSend(v17, "count") - 1}];
          v44 = v17;
          firstObject = [v17 firstObject];
          if (([firstObject isEqualToString:&stru_1F1741150] & 1) == 0)
          {
            if (v13)
            {
              v19 = v18;
              v20 = v42;
              v42 = v19;
            }

            else
            {
              v43 = firstObject;
              if ([v18 count])
              {
                v21 = 0;
                v22 = v42;
                do
                {
                  v23 = [v22 objectAtIndexedSubscript:v21];
                  if ([v23 hasPrefix:v15])
                  {
                    v24 = v15;
                    v25 = [v23 stringByReplacingOccurrencesOfString:v15 withString:&stru_1F1741150];
                    v26 = [v18 objectAtIndexedSubscript:v21];
                    bOOLValue = [v26 BOOLValue];

                    if (bOOLValue)
                    {
                      v28 = [v9 valueForKey:v25];
                      v29 = v28;
                      if (v28)
                      {
                        v30 = [v28 setByAddingObject:v43];
                        [v9 setValue:v30 forKey:v25];
                      }

                      else
                      {
                        v31 = v9;
                        v32 = MEMORY[0x1E695DFD8];
                        v50 = v43;
                        v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
                        v33 = [v32 setWithArray:v30];
                        [v31 setValue:v33 forKey:v25];

                        v9 = v31;
                        v22 = v42;
                      }
                    }

                    v15 = v24;
                  }

                  ++v21;
                }

                while (v21 < [v18 count]);
                v14 = v39;
                v10 = v40;
                v12 = v41;
              }

              v20 = v43;
            }

            v13 = 0;
          }

          ++v16;
        }

        while (v16 != v12);
        v12 = [v10 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v12);
    }

    else
    {
      v42 = 0;
    }

    allKeys = [v9 allKeys];
    meaningLabels = selfCopy->_meaningLabels;
    selfCopy->_meaningLabels = allKeys;

    v8 = v37;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_meaningDataContainerByMeaningLabels
{
  _momentIdentifiersByMeaningLabel = [(PXSettingsMeaningsTableViewController *)self _momentIdentifiersByMeaningLabel];
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  librarySpecificFetchOptions = [px_deprecated_appPhotoLibrary librarySpecificFetchOptions];

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__56616;
  v15 = __Block_byref_object_dispose__56617;
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__PXSettingsMeaningsTableViewController__meaningDataContainerByMeaningLabels__block_invoke;
  v8[3] = &unk_1E7733170;
  v5 = librarySpecificFetchOptions;
  v9 = v5;
  v10 = &v11;
  [_momentIdentifiersByMeaningLabel enumerateKeysAndObjectsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __77__PXSettingsMeaningsTableViewController__meaningDataContainerByMeaningLabels__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E6978650];
  v6 = a2;
  v7 = [a3 allObjects];
  v11 = [v5 fetchAssetCollectionsWithLocalIdentifiers:v7 options:*(a1 + 32)];

  v8 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollections:v11 options:*(a1 + 32)];
  v9 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v8 title:v6];
  v10 = [[PXSettingsMeaningMomentDataContainer alloc] initWithCuratedAssets:v8 assetCollection:v9];
  [*(*(*(a1 + 40) + 8) + 40) setObject:v10 forKey:v6];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = PXSettingsMeaningsTableViewController;
  [(PXSettingsMeaningsTableViewController *)&v7 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view = [(PXSettingsMeaningsTableViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  tableView = [(PXSettingsMeaningsTableViewController *)self tableView];
  [tableView setAllowsMultipleSelection:0];

  tableView2 = [(PXSettingsMeaningsTableViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"PXSettingsMeaningsTableViewCellId"];
}

- (PXSettingsMeaningsTableViewController)init
{
  v10.receiver = self;
  v10.super_class = PXSettingsMeaningsTableViewController;
  v2 = [(PXSettingsMeaningsTableViewController *)&v10 init];
  v3 = v2;
  if (v2)
  {
    _meaningDataContainerByMeaningLabels = [(PXSettingsMeaningsTableViewController *)v2 _meaningDataContainerByMeaningLabels];
    [(PXSettingsMeaningsTableViewController *)v3 setMeaningDataContainerByMeaningLabels:_meaningDataContainerByMeaningLabels];

    meaningDataContainerByMeaningLabels = [(PXSettingsMeaningsTableViewController *)v3 meaningDataContainerByMeaningLabels];
    v6 = [meaningDataContainerByMeaningLabels count];

    if (!v6)
    {
      v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Meaning Scores Not Found" message:@"Please make sure to run the fingerprint generation before. " preferredStyle:1];
      v8 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:&__block_literal_global_56632];
      [v7 addAction:v8];
      [(PXSettingsMeaningsTableViewController *)v3 presentViewController:v7 animated:1 completion:0];
    }
  }

  return v3;
}

@end