@interface _SBScreenshotPersistenceCoordinator
- (BOOL)_isWritingSnapshot;
- (void)_decrementWriteCount;
- (void)_incrementWriteCount;
- (void)saveScreenshot:(id)screenshot withCompletion:(id)completion;
@end

@implementation _SBScreenshotPersistenceCoordinator

- (void)saveScreenshot:(id)screenshot withCompletion:(id)completion
{
  screenshotCopy = screenshot;
  completionCopy = completion;
  if (!screenshotCopy)
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
    (v8)(screenshotCopy, @"public.png", @"PNG", self, sel__finishedWritingScreenshot_didFinishSavingWithError_context_, 0);
    goto LABEL_8;
  }

  (__PhotoLibrarySaveImageFunction_saveImageFunction)(screenshotCopy, @"public.png", @"PNG", self, sel__finishedWritingScreenshot_didFinishSavingWithError_context_, 0);
LABEL_8:
}

- (BOOL)_isWritingSnapshot
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_screenshotWriteCount != 0;
  objc_sync_exit(selfCopy);

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