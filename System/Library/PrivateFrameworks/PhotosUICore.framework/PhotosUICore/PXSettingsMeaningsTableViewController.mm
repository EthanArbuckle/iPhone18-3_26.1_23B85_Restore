@interface PXSettingsMeaningsTableViewController
- (PXSettingsMeaningsTableViewController)init;
- (id)_meaningDataContainerByMeaningLabels;
- (id)_momentIdentifiersByMeaningLabel;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation PXSettingsMeaningsTableViewController

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"PXSettingsMeaningsTableViewCellId" forIndexPath:v6];
  v8 = [(PXSettingsMeaningsTableViewController *)self meaningLabels];
  v9 = [v6 row];

  v10 = [v8 objectAtIndexedSubscript:v9];

  v11 = [v7 textLabel];
  [v11 setText:v10];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(PXSettingsMeaningsTableViewController *)self meaningLabels];
  v7 = [v5 row];

  v15 = [v6 objectAtIndexedSubscript:v7];

  v8 = [(PXSettingsMeaningsTableViewController *)self meaningDataContainerByMeaningLabels];
  v9 = [v8 objectForKeyedSubscript:v15];

  v10 = [v9 assetCollection];
  v11 = [v9 curatedAssets];
  v12 = PXPhotosViewConfigurationForAssetCollectionWithExistingAssetsFetchResult(v10, v11, 0, 0, 1);

  v13 = [[PXPhotosUIViewController alloc] initWithConfiguration:v12];
  v14 = [(PXSettingsMeaningsTableViewController *)self navigationController];
  [v14 pushViewController:v13 animated:1];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(PXSettingsMeaningsTableViewController *)self meaningLabels:a3];
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
    v38 = self;
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
          v45 = [v17 firstObject];
          if (([v45 isEqualToString:&stru_1F1741150] & 1) == 0)
          {
            if (v13)
            {
              v19 = v18;
              v20 = v42;
              v42 = v19;
            }

            else
            {
              v43 = v45;
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
                    v27 = [v26 BOOLValue];

                    if (v27)
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

    v34 = [v9 allKeys];
    meaningLabels = v38->_meaningLabels;
    v38->_meaningLabels = v34;

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
  v2 = [(PXSettingsMeaningsTableViewController *)self _momentIdentifiersByMeaningLabel];
  v3 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v4 = [v3 librarySpecificFetchOptions];

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
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [v2 enumerateKeysAndObjectsUsingBlock:v8];
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
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v4 = [(PXSettingsMeaningsTableViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(PXSettingsMeaningsTableViewController *)self tableView];
  [v5 setAllowsMultipleSelection:0];

  v6 = [(PXSettingsMeaningsTableViewController *)self tableView];
  [v6 registerClass:objc_opt_class() forCellReuseIdentifier:@"PXSettingsMeaningsTableViewCellId"];
}

- (PXSettingsMeaningsTableViewController)init
{
  v10.receiver = self;
  v10.super_class = PXSettingsMeaningsTableViewController;
  v2 = [(PXSettingsMeaningsTableViewController *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(PXSettingsMeaningsTableViewController *)v2 _meaningDataContainerByMeaningLabels];
    [(PXSettingsMeaningsTableViewController *)v3 setMeaningDataContainerByMeaningLabels:v4];

    v5 = [(PXSettingsMeaningsTableViewController *)v3 meaningDataContainerByMeaningLabels];
    v6 = [v5 count];

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