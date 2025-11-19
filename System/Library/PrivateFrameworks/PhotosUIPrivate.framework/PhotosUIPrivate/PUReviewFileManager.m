@interface PUReviewFileManager
+ (id)defaultManager;
- (BOOL)_allowedToDeleteItemAtURL:(id)a3;
- (BOOL)_removeItemAtURL:(id)a3 error:(id *)a4 stackshot:(id)a5;
- (BOOL)removeItemAtURL:(id)a3 error:(id *)a4;
- (PUReviewFileManager)initWithFileManager:(id)a3;
- (void)removeItemAtURL:(id)a3 completion:(id)a4;
@end

@implementation PUReviewFileManager

- (BOOL)_removeItemAtURL:(id)a3 error:(id *)a4 stackshot:(id)a5
{
  v9 = a3;
  v10 = a5;
  if ([(PUReviewFileManager *)self _allowedToDeleteItemAtURL:v9])
  {
    v11 = [(PUReviewFileManager *)self _fileManager];
    v12 = [v11 removeItemAtURL:v9 error:a4];
  }

  else
  {
    v11 = [MEMORY[0x1E696AD60] stringWithFormat:@"Attempt to remove item %@. ", v9];
    v13 = [(PUReviewFileManager *)self _safePathURL];
    [v11 appendFormat:@"The item is outside the specified safe area %@. ", v13];

    if (v10)
    {
      v14 = [v10 componentsJoinedByString:@"\n"];
      [v11 appendFormat:@"The deletion was attempted via\n%@", v14];
    }

    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PUReviewFileManager.m" lineNumber:99 description:v11];

    v12 = 0;
  }

  return v12;
}

- (BOOL)_allowedToDeleteItemAtURL:(id)a3
{
  v4 = [a3 pathComponents];
  v5 = [(PUReviewFileManager *)self _safePathURL];
  v6 = [v5 pathComponents];

  v7 = [v4 count];
  if (v7 <= [v6 count])
  {
    v11 = 0;
  }

  else if ([v6 count])
  {
    v8 = 0;
    do
    {
      v9 = [v4 objectAtIndexedSubscript:v8];
      v10 = [v6 objectAtIndexedSubscript:v8];
      v11 = [v9 isEqualToString:v10];

      if ((v11 & 1) == 0)
      {
        break;
      }

      ++v8;
    }

    while ([v6 count] > v8);
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)removeItemAtURL:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PUReviewFileManager *)self _fileManagementQueue];
  v9 = [MEMORY[0x1E696AF00] callStackSymbols];
  objc_initWeak(&location, self);
  v10 = PLUIGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v6;
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEFAULT, "Attempting to delete file at URL: %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__PUReviewFileManager_removeItemAtURL_completion___block_invoke;
  block[3] = &unk_1E7B7D858;
  objc_copyWeak(&v18, &location);
  v15 = v6;
  v16 = v9;
  v17 = v7;
  v11 = v7;
  v12 = v9;
  v13 = v6;
  dispatch_async(v8, block);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __50__PUReviewFileManager_removeItemAtURL_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = 0;
  v3 = [WeakRetained _removeItemAtURL:*(a1 + 32) error:&v6 stackshot:*(a1 + 40)];
  v4 = v6;

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v3, v4);
  }
}

- (BOOL)removeItemAtURL:(id)a3 error:(id *)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = PLUIGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to delete file at URL: %@", &v10, 0xCu);
  }

  v8 = [(PUReviewFileManager *)self _removeItemAtURL:v6 error:a4 stackshot:0];
  return v8;
}

- (PUReviewFileManager)initWithFileManager:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PUReviewFileManager.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"fileManager"}];
  }

  v17.receiver = self;
  v17.super_class = PUReviewFileManager;
  v7 = [(PUReviewFileManager *)&v17 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->__fileManager, a3);
    v9 = dispatch_queue_create("com.apple.ax-review.filemanagement", 0);
    fileManagementQueue = v8->__fileManagementQueue;
    v8->__fileManagementQueue = v9;

    v11 = MEMORY[0x1E695DFF8];
    v12 = NSTemporaryDirectory();
    v13 = [v11 fileURLWithPath:v12];
    safePathURL = v8->__safePathURL;
    v8->__safePathURL = v13;
  }

  return v8;
}

+ (id)defaultManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__PUReviewFileManager_defaultManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (defaultManager_onceToken_73583 != -1)
  {
    dispatch_once(&defaultManager_onceToken_73583, block);
  }

  v2 = defaultManager_defaultManager;

  return v2;
}

void __37__PUReviewFileManager_defaultManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v2 = [v1 initWithFileManager:v4];
  v3 = defaultManager_defaultManager;
  defaultManager_defaultManager = v2;
}

@end