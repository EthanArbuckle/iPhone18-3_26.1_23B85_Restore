@interface PXKeyAssetHackService
+ (BOOL)keyAssetHackServiceIsEnabled;
- (BOOL)canPerformAction;
- (id)asset;
- (void)performAction;
@end

@implementation PXKeyAssetHackService

+ (BOOL)keyAssetHackServiceIsEnabled
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PXKeyAssetHackServiceEnabled"];

  return v3;
}

- (void)performAction
{
  asset = [(PXKeyAssetHackService *)self asset];
  v4 = asset;
  if (asset)
  {
    photoLibrary = [asset photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    v7 = [MEMORY[0x1E6978650] fetchAssetCollectionsContainingAsset:v4 withType:6 options:librarySpecificFetchOptions];
    firstObject = [v7 firstObject];

    if (firstObject)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v10 = firstObject;
      v11 = v10;
      do
      {
        [v9 addObject:v11];
        v12 = [MEMORY[0x1E69789F0] fetchParentHighlightForHighlight:v11 options:librarySpecificFetchOptions];
        firstObject2 = [v12 firstObject];

        v11 = firstObject2;
      }

      while (firstObject2);
      v14 = [MEMORY[0x1E69789F0] fetchParentDayGroupHighlightForHighlight:v10 options:librarySpecificFetchOptions];
      firstObject3 = [v14 firstObject];

      if (firstObject3)
      {
        [v9 addObject:firstObject3];
      }

      photoLibrary2 = [v4 photoLibrary];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __38__PXKeyAssetHackService_performAction__block_invoke;
      v20[3] = &unk_1E774A1B8;
      v21 = v9;
      selfCopy = self;
      v23 = v4;
      v19 = 0;
      v17 = v9;
      [photoLibrary2 performChangesAndWait:v20 error:&v19];
      v18 = v19;
    }
  }
}

void __38__PXKeyAssetHackService_performAction__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([*(a1 + 40) shouldSetKeyAssetForHighlight:{v7, v9}])
        {
          v8 = [MEMORY[0x1E69789F8] changeRequestForPhotosHighlight:v7];
          [v8 setKeyAssetPrivate:*(a1 + 48)];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (BOOL)canPerformAction
{
  if (![objc_opt_class() keyAssetHackServiceIsEnabled])
  {
    return 0;
  }

  asset = [(PXKeyAssetHackService *)self asset];
  v4 = asset != 0;

  return v4;
}

- (id)asset
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  itemProviders = [(PXDiagnosticsService *)self itemProviders];
  v3 = [itemProviders countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(itemProviders);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 hasItemForIdentifier:@"PXDiagnosticsItemIdentifierAsset"])
        {
          v8 = [v7 itemForIdentifier:@"PXDiagnosticsItemIdentifierAsset"];
          goto LABEL_11;
        }
      }

      v4 = [itemProviders countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

@end