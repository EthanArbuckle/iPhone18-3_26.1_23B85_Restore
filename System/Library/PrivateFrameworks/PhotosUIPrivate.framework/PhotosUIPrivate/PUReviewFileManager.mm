@interface PUReviewFileManager
+ (id)defaultManager;
- (BOOL)_allowedToDeleteItemAtURL:(id)l;
- (BOOL)_removeItemAtURL:(id)l error:(id *)error stackshot:(id)stackshot;
- (BOOL)removeItemAtURL:(id)l error:(id *)error;
- (PUReviewFileManager)initWithFileManager:(id)manager;
- (void)removeItemAtURL:(id)l completion:(id)completion;
@end

@implementation PUReviewFileManager

- (BOOL)_removeItemAtURL:(id)l error:(id *)error stackshot:(id)stackshot
{
  lCopy = l;
  stackshotCopy = stackshot;
  if ([(PUReviewFileManager *)self _allowedToDeleteItemAtURL:lCopy])
  {
    _fileManager = [(PUReviewFileManager *)self _fileManager];
    v12 = [_fileManager removeItemAtURL:lCopy error:error];
  }

  else
  {
    _fileManager = [MEMORY[0x1E696AD60] stringWithFormat:@"Attempt to remove item %@. ", lCopy];
    _safePathURL = [(PUReviewFileManager *)self _safePathURL];
    [_fileManager appendFormat:@"The item is outside the specified safe area %@. ", _safePathURL];

    if (stackshotCopy)
    {
      v14 = [stackshotCopy componentsJoinedByString:@"\n"];
      [_fileManager appendFormat:@"The deletion was attempted via\n%@", v14];
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUReviewFileManager.m" lineNumber:99 description:_fileManager];

    v12 = 0;
  }

  return v12;
}

- (BOOL)_allowedToDeleteItemAtURL:(id)l
{
  pathComponents = [l pathComponents];
  _safePathURL = [(PUReviewFileManager *)self _safePathURL];
  pathComponents2 = [_safePathURL pathComponents];

  v7 = [pathComponents count];
  if (v7 <= [pathComponents2 count])
  {
    v11 = 0;
  }

  else if ([pathComponents2 count])
  {
    v8 = 0;
    do
    {
      v9 = [pathComponents objectAtIndexedSubscript:v8];
      v10 = [pathComponents2 objectAtIndexedSubscript:v8];
      v11 = [v9 isEqualToString:v10];

      if ((v11 & 1) == 0)
      {
        break;
      }

      ++v8;
    }

    while ([pathComponents2 count] > v8);
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)removeItemAtURL:(id)l completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  lCopy = l;
  completionCopy = completion;
  _fileManagementQueue = [(PUReviewFileManager *)self _fileManagementQueue];
  callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
  objc_initWeak(&location, self);
  v10 = PLUIGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = lCopy;
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEFAULT, "Attempting to delete file at URL: %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__PUReviewFileManager_removeItemAtURL_completion___block_invoke;
  block[3] = &unk_1E7B7D858;
  objc_copyWeak(&v18, &location);
  v15 = lCopy;
  v16 = callStackSymbols;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = callStackSymbols;
  v13 = lCopy;
  dispatch_async(_fileManagementQueue, block);

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

- (BOOL)removeItemAtURL:(id)l error:(id *)error
{
  v12 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v7 = PLUIGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = lCopy;
    _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to delete file at URL: %@", &v10, 0xCu);
  }

  v8 = [(PUReviewFileManager *)self _removeItemAtURL:lCopy error:error stackshot:0];
  return v8;
}

- (PUReviewFileManager)initWithFileManager:(id)manager
{
  managerCopy = manager;
  if (!managerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUReviewFileManager.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"fileManager"}];
  }

  v17.receiver = self;
  v17.super_class = PUReviewFileManager;
  v7 = [(PUReviewFileManager *)&v17 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->__fileManager, manager);
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
  block[4] = self;
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