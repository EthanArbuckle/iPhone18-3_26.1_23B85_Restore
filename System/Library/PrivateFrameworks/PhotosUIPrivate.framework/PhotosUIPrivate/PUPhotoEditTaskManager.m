@interface PUPhotoEditTaskManager
+ (id)sharedManager;
- (PUPhotoEditTaskManager)init;
- (void)createEditableCopyForReadOnlyPhoto:(id)a3 completionHandler:(id)a4;
@end

@implementation PUPhotoEditTaskManager

- (void)createEditableCopyForReadOnlyPhoto:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PUPhotoEditTaskManager.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v9 = [v7 pl_managedAsset];
  v10 = [v9 mainFileURL];

  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__56684;
  v23[4] = __Block_byref_object_dispose__56685;
  v24 = 0;
  v11 = [v7 photoLibrary];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __79__PUPhotoEditTaskManager_createEditableCopyForReadOnlyPhoto_completionHandler___block_invoke;
  v20[3] = &unk_1E7B800C8;
  v12 = v10;
  v21 = v12;
  v22 = v23;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__PUPhotoEditTaskManager_createEditableCopyForReadOnlyPhoto_completionHandler___block_invoke_2;
  v16[3] = &unk_1E7B7ADC8;
  v19 = v23;
  v13 = v11;
  v17 = v13;
  v14 = v8;
  v18 = v14;
  [v13 performChanges:v20 completionHandler:v16];

  _Block_object_dispose(v23, 8);
}

void __79__PUPhotoEditTaskManager_createEditableCopyForReadOnlyPhoto_completionHandler___block_invoke(uint64_t a1)
{
  v6 = [MEMORY[0x1E6978648] creationRequestForAssetFromImageAtFileURL:*(a1 + 32)];
  v2 = [v6 placeholderForCreatedAsset];
  v3 = [v2 localIdentifier];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __79__PUPhotoEditTaskManager_createEditableCopyForReadOnlyPhoto_completionHandler___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2 && *(*(*(a1 + 48) + 8) + 40))
  {
    v6 = [MEMORY[0x1E6978830] fetchOptionsWithInclusiveDefaultsForPhotoLibrary:*(a1 + 32)];
    v7 = MEMORY[0x1E6978630];
    v18[0] = *(*(*(a1 + 48) + 8) + 40);
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v9 = [v7 fetchAssetsWithLocalIdentifiers:v8 options:v6];
    v10 = [v9 firstObject];
  }

  else
  {
    v10 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__PUPhotoEditTaskManager_createEditableCopyForReadOnlyPhoto_completionHandler___block_invoke_3;
  block[3] = &unk_1E7B80CB0;
  v11 = *(a1 + 40);
  v16 = v5;
  v17 = v11;
  v15 = v10;
  v12 = v5;
  v13 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (PUPhotoEditTaskManager)init
{
  v3.receiver = self;
  v3.super_class = PUPhotoEditTaskManager;
  return [(PUPhotoEditTaskManager *)&v3 init];
}

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, &__block_literal_global_56702);
  }

  v3 = sharedManager__sharedInstance;

  return v3;
}

uint64_t __39__PUPhotoEditTaskManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(PUPhotoEditTaskManager);
  v1 = sharedManager__sharedInstance;
  sharedManager__sharedInstance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end