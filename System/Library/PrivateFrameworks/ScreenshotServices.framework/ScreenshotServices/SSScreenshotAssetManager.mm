@interface SSScreenshotAssetManager
+ (id)sharedAssetManager;
- (void)imageWithPreviouslyRegisteredIdentifier:(id)a3 withAccessBlock:(id)a4;
- (void)recordEditsToPersistable:(id)a3 inTransition:(BOOL)a4 withCompletionBlock:(id)a5;
- (void)recordEditsToPersistableForPDF:(id)a3 withCompletionBlock:(id)a4;
- (void)recordPersistableToTemporaryLocation:(id)a3 withCompletionBlock:(id)a4;
- (void)registerImageForPersistable:(id)a3 options:(id)a4 withRegistrationBlock:(id)a5;
- (void)removePersistable:(id)a3 deleteOptions:(unint64_t)a4 withCompletionBlock:(id)a5;
- (void)resetBackend;
- (void)saveImageDataToTemporaryLocation:(id)a3 persistable:(id)a4 completionHandler:(id)a5;
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

- (void)registerImageForPersistable:(id)a3 options:(id)a4 withRegistrationBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SSScreenshotAssetManager *)self backend];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__SSScreenshotAssetManager_registerImageForPersistable_options_withRegistrationBlock___block_invoke;
  v13[3] = &unk_1E8590918;
  v14 = v8;
  v12 = v8;
  [v11 registerEntryWithImage:v10 options:v9 identifierHandler:v13];
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

- (void)imageWithPreviouslyRegisteredIdentifier:(id)a3 withAccessBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SSScreenshotAssetManager *)self backend];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__SSScreenshotAssetManager_imageWithPreviouslyRegisteredIdentifier_withAccessBlock___block_invoke;
  v10[3] = &unk_1E8590940;
  v11 = v6;
  v9 = v6;
  [v8 imageForPreviouslyRegisteredIdentifier:v7 imageHandler:v10];
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

- (void)recordEditsToPersistable:(id)a3 inTransition:(BOOL)a4 withCompletionBlock:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__SSScreenshotAssetManager_recordEditsToPersistable_inTransition_withCompletionBlock___block_invoke;
  v12[3] = &unk_1E8590990;
  v13 = v8;
  v14 = self;
  v15 = v9;
  v10 = v9;
  v11 = v8;
  [v11 requestImageInTransition:v6 withBlock:v12];
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

- (void)recordPersistableToTemporaryLocation:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__SSScreenshotAssetManager_recordPersistableToTemporaryLocation_withCompletionBlock___block_invoke;
  v10[3] = &unk_1E8590990;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)saveImageDataToTemporaryLocation:(id)a3 persistable:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SSScreenshotAssetManager *)self backend];
  v12 = [v9 filename];
  v13 = [v9 imageDescription];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __91__SSScreenshotAssetManager_saveImageDataToTemporaryLocation_persistable_completionHandler___block_invoke;
  v15[3] = &unk_1E85909B8;
  v16 = v8;
  v14 = v8;
  [v11 saveImageDataToTemporaryLocation:v10 withName:v12 imageDescription:v13 completionHandler:v15];
}

- (void)removePersistable:(id)a3 deleteOptions:(unint64_t)a4 withCompletionBlock:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (a4 - 1 <= 1)
  {
    [v8 removePDF];
  }

  if ((a4 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    if (v9)
    {
      v10 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v16 = a4;
        _os_log_impl(&dword_1D9E04000, v10, OS_LOG_TYPE_DEFAULT, "remove persistable calling completion block for unhandled delete options: %ld", buf, 0xCu);
      }

      v9[2](v9);
    }
  }

  else
  {
    v11 = [(SSScreenshotAssetManager *)self backend];
    v12 = [v8 identifier];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __80__SSScreenshotAssetManager_removePersistable_deleteOptions_withCompletionBlock___block_invoke;
    v13[3] = &unk_1E8590968;
    v14 = v9;
    [v11 removeEntryWithIdentifier:v12 completionHandler:v13];
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

- (void)recordEditsToPersistableForPDF:(id)a3 withCompletionBlock:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__SSScreenshotAssetManager_recordEditsToPersistableForPDF_withCompletionBlock___block_invoke;
  v7[3] = &unk_1E8590228;
  v8 = v5;
  v6 = v5;
  [a3 savePDFWithBlock:v7];
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