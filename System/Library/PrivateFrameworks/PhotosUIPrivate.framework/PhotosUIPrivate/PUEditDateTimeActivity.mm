@interface PUEditDateTimeActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (id)activityViewController;
@end

@implementation PUEditDateTimeActivity

- (BOOL)canPerformWithActivityItems:(id)items
{
  v19 = *MEMORY[0x1E69E9840];
  if (![items count])
  {
    return 0;
  }

  itemSourceController = [(PXActivity *)self itemSourceController];
  assets = [itemSourceController assets];
  array = [assets array];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = array;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (![*(*(&v14 + 1) + 8 * i) canPerformEditOperation:{3, v14}])
        {
          v12 = 0;
          goto LABEL_12;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_12:

  return v12;
}

- (id)activityViewController
{
  v15[1] = *MEMORY[0x1E69E9840];
  itemSourceController = [(PXActivity *)self itemSourceController];
  assets = [itemSourceController assets];
  array = [assets array];

  v6 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssets:array title:0];
  v7 = MEMORY[0x1E6978830];
  v8 = [array objectAtIndexedSubscript:0];
  v9 = [v7 fetchOptionsWithPhotoLibrary:0 orObject:v8];

  v15[0] = *MEMORY[0x1E6978CA8];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [v9 setFetchPropertySets:v10];

  v11 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v6 options:v9];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__PUEditDateTimeActivity_activityViewController__block_invoke;
  v14[3] = &unk_1E7B7F020;
  v14[4] = self;
  v12 = [MEMORY[0x1E69C3890] dateTimeViewControllerWithAssets:v11 completion:v14];

  return v12;
}

@end