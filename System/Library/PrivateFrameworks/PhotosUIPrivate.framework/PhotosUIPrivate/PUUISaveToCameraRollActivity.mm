@interface PUUISaveToCameraRollActivity
- (BOOL)_containsVideoComplementsInActivityItems:(id)items outVideoComplements:(id *)complements;
- (BOOL)canPerformWithActivityItems:(id)items;
- (void)prepareWithActivityItems:(id)items;
@end

@implementation PUUISaveToCameraRollActivity

- (BOOL)_containsVideoComplementsInActivityItems:(id)items outVideoComplements:(id *)complements
{
  v21 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if (complements)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    v6 = 0;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = itemsCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v6 addObject:{v13, v16}];
          v10 = 1;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  if (complements)
  {
    v14 = v6;
    *complements = v6;
  }

  return v10 & 1;
}

- (void)prepareWithActivityItems:(id)items
{
  itemsCopy = items;
  v15 = 0;
  v5 = [(PUUISaveToCameraRollActivity *)self _containsVideoComplementsInActivityItems:itemsCopy outVideoComplements:&v15];
  v6 = v15;
  v7 = v6;
  if (v5)
  {
    if ([v6 count])
    {
      objc_initWeak(&location, self);
      px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __57__PUUISaveToCameraRollActivity_prepareWithActivityItems___block_invoke;
      v11[3] = &unk_1E7B80DD0;
      v12 = v7;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __57__PUUISaveToCameraRollActivity_prepareWithActivityItems___block_invoke_2;
      v9[3] = &unk_1E7B7FA30;
      objc_copyWeak(&v10, &location);
      [px_deprecated_appPhotoLibrary performChanges:v11 completionHandler:v9];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = PUUISaveToCameraRollActivity;
    [(UIActivity *)&v14 prepareWithActivityItems:itemsCopy];
  }
}

void __57__PUUISaveToCameraRollActivity_prepareWithActivityItems___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [MEMORY[0x1E6978698] creationRequestForAssetFromVideoComplementBundle:{*(*(&v7 + 1) + 8 * v5++), v7}];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

void __57__PUUISaveToCameraRollActivity_prepareWithActivityItems___block_invoke_2(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__PUUISaveToCameraRollActivity_prepareWithActivityItems___block_invoke_3;
  v3[3] = &unk_1E7B7FA08;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
}

void __57__PUUISaveToCameraRollActivity_prepareWithActivityItems___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained activityDidFinish:*(a1 + 40)];
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  itemsCopy = items;
  if ([(PUUISaveToCameraRollActivity *)self _containsVideoComplementsInActivityItems:itemsCopy outVideoComplements:0])
  {
    v5 = ([MEMORY[0x1E69789A8] authorizationStatusForAccessLevel:1] - 3) < 2;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PUUISaveToCameraRollActivity;
    v5 = [(UISaveToCameraRollActivity *)&v7 canPerformWithActivityItems:itemsCopy];
  }

  return v5;
}

@end