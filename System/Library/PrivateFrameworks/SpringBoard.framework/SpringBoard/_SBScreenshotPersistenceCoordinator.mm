@interface _SBScreenshotPersistenceCoordinator
- (BOOL)_isWritingSnapshot;
- (void)_decrementWriteCount;
- (void)_incrementWriteCount;
- (void)saveScreenshot:(id)a3 withCompletion:(id)a4;
@end

@implementation _SBScreenshotPersistenceCoordinator

- (void)saveScreenshot:(id)a3 withCompletion:(id)a4
{
  v12 = a3;
  v7 = a4;
  if (!v12)
  {
    [_SBScreenshotPersistenceCoordinator saveScreenshot:a2 withCompletion:self];
  }

  [(_SBScreenshotPersistenceCoordinator *)self _incrementWriteCount];
  v8 = __PhotoLibrarySaveImageFunction_saveImageFunction;
  if (__PhotoLibrarySaveImageFunction_saveImageFunction)
  {
    goto LABEL_7;
  }

  v9 = __PhotoLibraryHandle_photoLibraryHandle;
  if (__PhotoLibraryHandle_photoLibraryHandle || (MEMORY[0x223D6E340](), v10 = objc_claimAutoreleasedReturnValue(), [v10 stringByAppendingPathComponent:@"System/Library/PrivateFrameworks/PhotoLibrary.framework/PhotoLibrary"], v11 = objc_claimAutoreleasedReturnValue(), v10, __PhotoLibraryHandle_photoLibraryHandle = dlopen(objc_msgSend(v11, "fileSystemRepresentation"), 1), v11, (v9 = __PhotoLibraryHandle_photoLibraryHandle) != 0))
  {
    v8 = dlsym(v9, "PLSaveImageToCameraRollWithTypeAndExtension");
    __PhotoLibrarySaveImageFunction_saveImageFunction = v8;
LABEL_7:
    (v8)(v12, @"public.png", @"PNG", self, sel__finishedWritingScreenshot_didFinishSavingWithError_context_, 0);
    goto LABEL_8;
  }

  (__PhotoLibrarySaveImageFunction_saveImageFunction)(v12, @"public.png", @"PNG", self, sel__finishedWritingScreenshot_didFinishSavingWithError_context_, 0);
LABEL_8:
}

- (BOOL)_isWritingSnapshot
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_screenshotWriteCount != 0;
  objc_sync_exit(v2);

  return v3;
}

- (void)_incrementWriteCount
{
  obj = self;
  objc_sync_enter(obj);
  ++obj->_screenshotWriteCount;
  objc_sync_exit(obj);
}

- (void)_decrementWriteCount
{
  obj = self;
  objc_sync_enter(obj);
  screenshotWriteCount = obj->_screenshotWriteCount;
  if (screenshotWriteCount)
  {
    obj->_screenshotWriteCount = screenshotWriteCount - 1;
  }

  objc_sync_exit(obj);
}

- (void)saveScreenshot:(uint64_t)a1 withCompletion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_SBScreenshotPersistenceCoordinator.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"image"}];
}

@end