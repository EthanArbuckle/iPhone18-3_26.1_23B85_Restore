@interface SSScreenshotAssetManager
+ (id)sharedAssetManager;
- (void)imageWithPreviouslyRegisteredIdentifier:(id)identifier withAccessBlock:(id)block;
- (void)recordEditsToPersistable:(id)persistable inTransition:(BOOL)transition withCompletionBlock:(id)block;
- (void)recordEditsToPersistableForPDF:(id)f withCompletionBlock:(id)block;
- (void)recordPersistableToTemporaryLocation:(id)location withCompletionBlock:(id)block;
- (void)registerImageForPersistable:(id)persistable options:(id)options withRegistrationBlock:(id)block;
- (void)removePersistable:(id)persistable deleteOptions:(unint64_t)options withCompletionBlock:(id)block;
- (void)resetBackend;
- (void)saveImageDataToTemporaryLocation:(id)location persistable:(id)persistable completionHandler:(id)handler;
@end

@implementation SSScreenshotAssetManager

+ (id)sharedAssetManager
{
  v2 = _sharedAssetManager;
  if (!_sharedAssetManager)
  {
    v3 = objc_alloc_init(SSScreenshotAssetManager);
    v4 = _sharedAssetManager;
    _sharedAssetManager = v3;

    [_sharedAssetManager resetBackend];
    v2 = _sharedAssetManager;
  }

  return v2;
}

- (void)resetBackend
{
  self->_backend = objc_alloc_init(SSScreenshotAssetManagerPhotoLibraryBackend);

  MEMORY[0x1EEE66BB8]();
}

- (void)registerImageForPersistable:(id)persistable options:(id)options withRegistrationBlock:(id)block
{
  blockCopy = block;
  optionsCopy = options;
  persistableCopy = persistable;
  backend = [(SSScreenshotAssetManager *)self backend];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__SSScreenshotAssetManager_registerImageForPersistable_options_withRegistrationBlock___block_invoke;
  v13[3] = &unk_1E8590918;
  v14 = blockCopy;
  v12 = blockCopy;
  [backend registerEntryWithImage:persistableCopy options:optionsCopy identifierHandler:v13];
}

uint64_t __86__SSScreenshotAssetManager_registerImageForPersistable_options_withRegistrationBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3 == 0, a2);
  }

  return result;
}

- (void)imageWithPreviouslyRegisteredIdentifier:(id)identifier withAccessBlock:(id)block
{
  blockCopy = block;
  identifierCopy = identifier;
  backend = [(SSScreenshotAssetManager *)self backend];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__SSScreenshotAssetManager_imageWithPreviouslyRegisteredIdentifier_withAccessBlock___block_invoke;
  v10[3] = &unk_1E8590940;
  v11 = blockCopy;
  v9 = blockCopy;
  [backend imageForPreviouslyRegisteredIdentifier:identifierCopy imageHandler:v10];
}

uint64_t __84__SSScreenshotAssetManager_imageWithPreviouslyRegisteredIdentifier_withAccessBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)recordEditsToPersistable:(id)persistable inTransition:(BOOL)transition withCompletionBlock:(id)block
{
  transitionCopy = transition;
  persistableCopy = persistable;
  blockCopy = block;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__SSScreenshotAssetManager_recordEditsToPersistable_inTransition_withCompletionBlock___block_invoke;
  v12[3] = &unk_1E8590990;
  v13 = persistableCopy;
  selfCopy = self;
  v15 = blockCopy;
  v10 = blockCopy;
  v11 = persistableCopy;
  [v11 requestImageInTransition:transitionCopy withBlock:v12];
}

void __86__SSScreenshotAssetManager_recordEditsToPersistable_inTransition_withCompletionBlock___block_invoke(id *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [a1[4] identifier];
    *buf = 138412290;
    v14 = v5;
    _os_log_impl(&dword_1D9E04000, v4, OS_LOG_TYPE_INFO, "Finished getting output image for %@.  Preparing to call update image on the backend", buf, 0xCu);
  }

  v6 = [a1[5] backend];
  v7 = [a1[4] imageModificationData];
  v8 = [a1[4] identifier];
  v9 = [a1[4] registrationOptions];
  v10 = [a1[4] imageDescription];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__SSScreenshotAssetManager_recordEditsToPersistable_inTransition_withCompletionBlock___block_invoke_15;
  v11[3] = &unk_1E8590968;
  v12 = a1[6];
  [v6 updateImageData:v3 withModificationData:v7 forEntryWithIdentifier:v8 registrationOptions:v9 imageDescription:v10 completionHandler:v11];
}

uint64_t __86__SSScreenshotAssetManager_recordEditsToPersistable_inTransition_withCompletionBlock___block_invoke_15(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)recordPersistableToTemporaryLocation:(id)location withCompletionBlock:(id)block
{
  locationCopy = location;
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__SSScreenshotAssetManager_recordPersistableToTemporaryLocation_withCompletionBlock___block_invoke;
  v10[3] = &unk_1E8590990;
  v10[4] = self;
  v11 = locationCopy;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = locationCopy;
  [v9 requestImageInTransition:0 withBlock:v10];
}

void __85__SSScreenshotAssetManager_recordPersistableToTemporaryLocation_withCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 backend];
  v6 = [*(a1 + 40) filename];
  v7 = [*(a1 + 40) imageDescription];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__SSScreenshotAssetManager_recordPersistableToTemporaryLocation_withCompletionBlock___block_invoke_2;
  v8[3] = &unk_1E85909B8;
  v9 = *(a1 + 48);
  [v5 saveImageDataToTemporaryLocation:v4 withName:v6 imageDescription:v7 completionHandler:v8];
}

uint64_t __85__SSScreenshotAssetManager_recordPersistableToTemporaryLocation_withCompletionBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3 == 0, a2);
  }

  return result;
}

- (void)saveImageDataToTemporaryLocation:(id)location persistable:(id)persistable completionHandler:(id)handler
{
  handlerCopy = handler;
  persistableCopy = persistable;
  locationCopy = location;
  backend = [(SSScreenshotAssetManager *)self backend];
  filename = [persistableCopy filename];
  imageDescription = [persistableCopy imageDescription];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __91__SSScreenshotAssetManager_saveImageDataToTemporaryLocation_persistable_completionHandler___block_invoke;
  v15[3] = &unk_1E85909B8;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [backend saveImageDataToTemporaryLocation:locationCopy withName:filename imageDescription:imageDescription completionHandler:v15];
}

- (void)removePersistable:(id)persistable deleteOptions:(unint64_t)options withCompletionBlock:(id)block
{
  v17 = *MEMORY[0x1E69E9840];
  persistableCopy = persistable;
  blockCopy = block;
  if (options - 1 <= 1)
  {
    [persistableCopy removePDF];
  }

  if ((options & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    if (blockCopy)
    {
      v10 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        optionsCopy = options;
        _os_log_impl(&dword_1D9E04000, v10, OS_LOG_TYPE_DEFAULT, "remove persistable calling completion block for unhandled delete options: %ld", buf, 0xCu);
      }

      blockCopy[2](blockCopy);
    }
  }

  else
  {
    backend = [(SSScreenshotAssetManager *)self backend];
    identifier = [persistableCopy identifier];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __80__SSScreenshotAssetManager_removePersistable_deleteOptions_withCompletionBlock___block_invoke;
    v13[3] = &unk_1E8590968;
    v14 = blockCopy;
    [backend removeEntryWithIdentifier:identifier completionHandler:v13];
  }
}

uint64_t __80__SSScreenshotAssetManager_removePersistable_deleteOptions_withCompletionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)recordEditsToPersistableForPDF:(id)f withCompletionBlock:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__SSScreenshotAssetManager_recordEditsToPersistableForPDF_withCompletionBlock___block_invoke;
  v7[3] = &unk_1E8590228;
  v8 = blockCopy;
  v6 = blockCopy;
  [f savePDFWithBlock:v7];
}

uint64_t __79__SSScreenshotAssetManager_recordEditsToPersistableForPDF_withCompletionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end