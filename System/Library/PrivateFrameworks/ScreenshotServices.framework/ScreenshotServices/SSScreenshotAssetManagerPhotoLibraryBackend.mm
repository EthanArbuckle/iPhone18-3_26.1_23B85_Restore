@interface SSScreenshotAssetManagerPhotoLibraryBackend
+ (id)_gameHighlightsImageDataFromImage:(id)a3 withOptions:(id)a4;
+ (id)_gameHighlightsImageDataFromImageData:(id)a3 withOptions:(id)a4;
+ (id)jpegImageDataFromImage:(id)a3 withProperties:(id)a4;
- (id)_ARKitImageDataFromImage:(id)a3;
- (id)photoLibrary;
- (void)_registerEntryWithImage:(id)a3 options:(id)a4 retry:(BOOL)a5 identifierHandler:(id)a6;
- (void)imageForPreviouslyRegisteredIdentifier:(id)a3 imageHandler:(id)a4;
- (void)removeEntryWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)saveImageDataToTemporaryLocation:(id)a3 withName:(id)a4 imageDescription:(id)a5 completionHandler:(id)a6;
- (void)saveImageToTemporaryLocation:(id)a3 withName:(id)a4 imageDescription:(id)a5 completionHandler:(id)a6;
- (void)updateImageData:(id)a3 withModificationData:(id)a4 forEntryWithIdentifier:(id)a5 registrationOptions:(id)a6 imageDescription:(id)a7 completionHandler:(id)a8;
@end

@implementation SSScreenshotAssetManagerPhotoLibraryBackend

- (id)photoLibrary
{
  v2 = self;
  objc_sync_enter(v2);
  photoLibrary = v2->_photoLibrary;
  if (!photoLibrary)
  {
    v4 = objc_alloc(MEMORY[0x1E69789A8]);
    v5 = [MEMORY[0x1E69789A8] systemPhotoLibraryURL];
    v6 = [v4 initWithPhotoLibraryURL:v5];
    v7 = v2->_photoLibrary;
    v2->_photoLibrary = v6;

    photoLibrary = v2->_photoLibrary;
  }

  v8 = photoLibrary;
  objc_sync_exit(v2);

  return v8;
}

- (id)_ARKitImageDataFromImage:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = *MEMORY[0x1E696DE30];
  v9 = *MEMORY[0x1E69867A0];
  v10 = MEMORY[0x1E695E118];
  v3 = MEMORY[0x1E695DF20];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v12[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v7 = [objc_opt_class() jpegImageDataFromImage:v4 withProperties:v6];

  return v7;
}

+ (id)jpegImageDataFromImage:(id)a3 withProperties:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 CGImage];
  if (v7)
  {
    v8 = v7;
    v9 = [MEMORY[0x1E695DF88] data];
    v10 = CGImageDestinationCreateWithData(v9, @"public.jpeg", 1uLL, 0);
    if (v10)
    {
      v11 = v10;
      CGImageDestinationAddImage(v10, v8, v6);
      if (!CGImageDestinationFinalize(v11))
      {
        v12 = os_log_create("com.apple.screenshotservices", "PhotoLibrary");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [SSScreenshotAssetManagerPhotoLibraryBackend jpegImageDataFromImage:v5 withProperties:?];
        }

        v9 = 0;
      }

      CFRelease(v11);
    }

    else
    {
      v14 = os_log_create("com.apple.screenshotservices", "PhotoLibrary");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [SSScreenshotAssetManagerPhotoLibraryBackend jpegImageDataFromImage:v5 withProperties:?];
      }
    }
  }

  else
  {
    v13 = os_log_create("com.apple.screenshotservices", "PhotoLibrary");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SSScreenshotAssetManagerPhotoLibraryBackend jpegImageDataFromImage:v5 withProperties:?];
    }

    v9 = 0;
  }

  return v9;
}

+ (id)_gameHighlightsImageDataFromImageData:(id)a3 withOptions:(id)a4
{
  v5 = MEMORY[0x1E69DCAB8];
  v6 = a4;
  v7 = [v5 imageWithData:a3];
  v8 = [objc_opt_class() _gameHighlightsImageDataFromImage:v7 withOptions:v6];

  return v8;
}

+ (id)_gameHighlightsImageDataFromImage:(id)a3 withOptions:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a4 assetMetadata];
  v7 = [v6 assetDescription];
  v8 = [v7 componentsJoinedByString:@" | "];

  v15 = *MEMORY[0x1E696DF40];
  v16[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v13 = *MEMORY[0x1E696DF28];
  v14 = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v11 = [objc_opt_class() jpegImageDataFromImage:v5 withProperties:v10];

  return v11;
}

- (void)_registerEntryWithImage:(id)a3 options:(id)a4 retry:(BOOL)a5 identifierHandler:(id)a6
{
  v7 = a5;
  v36 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__0;
  v30[4] = __Block_byref_object_dispose__0;
  v31 = 0;
  v13 = os_log_create("com.apple.screenshotservices", "PhotoLibrary");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [v10 description];
    *buf = 138412546;
    v33 = v14;
    v34 = 1024;
    v35 = v7;
    _os_log_impl(&dword_1D9E04000, v13, OS_LOG_TYPE_INFO, "Saving screenshot with image %@ to the photo library (retry:%d)", buf, 0x12u);
  }

  v15 = [(SSScreenshotAssetManagerPhotoLibraryBackend *)self photoLibrary];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __103__SSScreenshotAssetManagerPhotoLibraryBackend__registerEntryWithImage_options_retry_identifierHandler___block_invoke;
  v25[3] = &unk_1E8590420;
  v26 = v11;
  v27 = v10;
  v28 = self;
  v29 = v30;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __103__SSScreenshotAssetManagerPhotoLibraryBackend__registerEntryWithImage_options_retry_identifierHandler___block_invoke_51;
  v19[3] = &unk_1E8590448;
  v24 = v7;
  v19[4] = self;
  v16 = v27;
  v20 = v16;
  v17 = v26;
  v21 = v17;
  v18 = v12;
  v22 = v18;
  v23 = v30;
  [v15 performChanges:v25 completionHandler:v19];

  _Block_object_dispose(v30, 8);
}

void __103__SSScreenshotAssetManagerPhotoLibraryBackend__registerEntryWithImage_options_retry_identifierHandler___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) saveLocation];
  if (!v3)
  {
    v4 = [*(a1 + 40) ss_ioSurfaceImageData];
    if (!v4)
    {
      v5 = os_log_create("com.apple.screenshotservices", "PhotoLibrary");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __103__SSScreenshotAssetManagerPhotoLibraryBackend__registerEntryWithImage_options_retry_identifierHandler___block_invoke_cold_3((a1 + 40));
      }

      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if ([*(a1 + 32) saveLocation] != 2)
  {
    v4 = [*(a1 + 48) _ARKitImageDataFromImage:*(a1 + 40)];
    if (!v4)
    {
      v5 = os_log_create("com.apple.screenshotservices", "PhotoLibrary");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __103__SSScreenshotAssetManagerPhotoLibraryBackend__registerEntryWithImage_options_retry_identifierHandler___block_invoke_cold_1((a1 + 40));
      }

      goto LABEL_13;
    }

LABEL_10:
    v6 = v4;
    goto LABEL_14;
  }

  v4 = [objc_opt_class() _gameHighlightsImageDataFromImage:*(a1 + 40) withOptions:*(a1 + 32)];
  if (v4)
  {
    goto LABEL_10;
  }

  v5 = os_log_create("com.apple.screenshotservices", "PhotoLibrary");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __103__SSScreenshotAssetManagerPhotoLibraryBackend__registerEntryWithImage_options_retry_identifierHandler___block_invoke_cold_2((a1 + 40));
  }

LABEL_13:

  v6 = 0;
LABEL_14:
  v7 = v3 == 0;
  v8 = objc_alloc_init(MEMORY[0x1E6978690]);
  [v8 setUseRecoverableStagingDirectory:1];
  [v8 setShouldCreateScreenshot:v7];
  v9 = [MEMORY[0x1E6978698] creationRequestForAssetFromImageData:v6 options:v8];
  if (_SSLinksInPhotosEnabled())
  {
    v10 = [*(a1 + 32) applicationBundleID];
    [v9 setImportedByBundleIdentifier:v10];
  }

  v11 = [*(a1 + 32) assetDescription];
  [v9 setAssetDescription:v11];

  v12 = [v9 placeholderForCreatedAsset];
  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  objc_autoreleasePoolPop(v2);
}

void __103__SSScreenshotAssetManagerPhotoLibraryBackend__registerEntryWithImage_options_retry_identifierHandler___block_invoke_51(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if (*(a1 + 72) == 1)
  {
    v6 = [v4 domain];
    v7 = v6;
    if (v6 == *MEMORY[0x1E696A250])
    {
      v8 = [v4 code];

      if (v8 == 4099)
      {
        [*(a1 + 32) _registerEntryWithImage:*(a1 + 40) options:*(a1 + 48) retry:0 identifierHandler:*(a1 + 56)];
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  v9 = os_log_create("com.apple.screenshotservices", "PhotoLibrary");
  v10 = v9;
  if (v4)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __103__SSScreenshotAssetManagerPhotoLibraryBackend__registerEntryWithImage_options_retry_identifierHandler___block_invoke_51_cold_1(v4);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = [*(*(*(a1 + 64) + 8) + 40) localIdentifier];
    v14 = 138412290;
    v15 = v11;
    _os_log_impl(&dword_1D9E04000, v10, OS_LOG_TYPE_INFO, "Created asset in photos with identifier %@", &v14, 0xCu);
  }

  v12 = *(a1 + 56);
  v13 = [*(*(*(a1 + 64) + 8) + 40) localIdentifier];
  (*(v12 + 16))(v12, v13, v4);

LABEL_12:
  objc_autoreleasePoolPop(v5);
}

- (void)imageForPreviouslyRegisteredIdentifier:(id)a3 imageHandler:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E6978630];
  v23[0] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v10 = [(SSScreenshotAssetManagerPhotoLibraryBackend *)self photoLibrary];
  v11 = [v10 librarySpecificFetchOptions];
  v12 = [v8 fetchAssetsWithLocalIdentifiers:v9 options:v11];
  v13 = [v12 firstObject];

  v14 = *MEMORY[0x1E6978E30];
  v15 = *(MEMORY[0x1E6978E30] + 8);
  v16 = objc_alloc_init(MEMORY[0x1E6978868]);
  [v16 setSynchronous:1];
  [v16 setResizeMode:0];
  [v16 setDeliveryMode:1];
  v17 = [MEMORY[0x1E6978860] defaultManager];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __99__SSScreenshotAssetManagerPhotoLibraryBackend_imageForPreviouslyRegisteredIdentifier_imageHandler___block_invoke;
  v20[3] = &unk_1E8590470;
  v21 = v6;
  v22 = v7;
  v18 = v7;
  v19 = v6;
  [v17 requestImageForAsset:v13 targetSize:0 contentMode:v16 options:v20 resultHandler:{v14, v15}];
}

void __99__SSScreenshotAssetManagerPhotoLibraryBackend_imageForPreviouslyRegisteredIdentifier_imageHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *MEMORY[0x1E6978DF0];
  v7 = a3;
  v8 = [v7 valueForKey:v6];
  v9 = [v7 valueForKey:*MEMORY[0x1E6978E50]];

  v10 = [v9 BOOLValue];
  if (!v8 && (v10 & 1) == 0)
  {
    v11 = os_log_create("com.apple.screenshotservices", "PhotoLibrary");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      v15 = 138412290;
      v16 = v12;
      _os_log_impl(&dword_1D9E04000, v11, OS_LOG_TYPE_INFO, "Retrieved image for identifier %@", &v15, 0xCu);
    }

    v13 = *(*(a1 + 40) + 16);
LABEL_10:
    v13();
    goto LABEL_11;
  }

  if (v8)
  {
    v14 = os_log_create("com.apple.screenshotservices", "PhotoLibrary");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __99__SSScreenshotAssetManagerPhotoLibraryBackend_imageForPreviouslyRegisteredIdentifier_imageHandler___block_invoke_cold_1(a1, v8);
    }

    v13 = *(*(a1 + 40) + 16);
    goto LABEL_10;
  }

LABEL_11:
}

- (void)updateImageData:(id)a3 withModificationData:(id)a4 forEntryWithIdentifier:(id)a5 registrationOptions:(id)a6 imageDescription:(id)a7 completionHandler:(id)a8
{
  v41[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v30 = a4;
  v15 = a5;
  v16 = a6;
  v29 = a7;
  v17 = a8;
  v18 = [MEMORY[0x1E69DCAB8] ss_isHEICImageData:v14];
  if ([v16 saveLocation] == 2)
  {
    v19 = [objc_opt_class() _gameHighlightsImageDataFromImageData:v14 withOptions:v16];

    v18 = 0;
    v14 = v19;
  }

  v20 = MEMORY[0x1E6978630];
  v41[0] = v15;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
  v22 = [(SSScreenshotAssetManagerPhotoLibraryBackend *)self photoLibrary];
  v23 = [v22 librarySpecificFetchOptions];
  v24 = [v20 fetchAssetsWithLocalIdentifiers:v21 options:v23];
  v25 = [v24 firstObject];

  if (v25)
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __162__SSScreenshotAssetManagerPhotoLibraryBackend_updateImageData_withModificationData_forEntryWithIdentifier_registrationOptions_imageDescription_completionHandler___block_invoke;
    v31[3] = &unk_1E85904E8;
    v38 = v18;
    v26 = v30;
    v32 = v30;
    v33 = v14;
    v34 = v15;
    v35 = v25;
    v37 = v17;
    v27 = v29;
    v36 = v29;
    [v35 requestContentEditingInputWithOptions:0 completionHandler:v31];
  }

  else
  {
    v28 = os_log_create("com.apple.screenshotservices", "PhotoLibrary");
    v26 = v30;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = v15;
      _os_log_impl(&dword_1D9E04000, v28, OS_LOG_TYPE_DEFAULT, "Asset update skipped: asset with identifier %@ not found in photo library", buf, 0xCu);
    }

    v27 = v29;
    if (v17)
    {
      (*(v17 + 2))(v17, 0, 0);
    }
  }
}

void __162__SSScreenshotAssetManagerPhotoLibraryBackend_updateImageData_withModificationData_forEntryWithIdentifier_registrationOptions_imageDescription_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (*(a1 + 80) == 1)
    {
      v7 = objc_alloc_init(MEMORY[0x1E69787A8]);
      [v7 setPreferHEICForRenderedImages:1];
    }

    else
    {
      v7 = 0;
    }

    v10 = [objc_alloc(MEMORY[0x1E69787A0]) initWithContentEditingInput:v5 withOptions:v7];
    if (*(a1 + 32))
    {
      v11 = [objc_alloc(MEMORY[0x1E6978608]) initWithFormatIdentifier:@"ScreenshotServices" formatVersion:@"2.0" data:*(a1 + 32)];
      [v10 setAdjustmentData:v11];
    }

    v12 = *(a1 + 40);
    v13 = [v10 renderedContentURL];
    [v12 writeToURL:v13 atomically:1];

    v14 = os_log_create("com.apple.screenshotservices", "PhotoLibrary");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 48);
      *buf = 138412290;
      v33 = v15;
      _os_log_impl(&dword_1D9E04000, v14, OS_LOG_TYPE_INFO, "Found contentEditingInput for identifier %@. Preparing to ask Photos to update photo with update image.", buf, 0xCu);
    }

    v16 = [*(a1 + 56) photoLibrary];
    if (v16)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __162__SSScreenshotAssetManagerPhotoLibraryBackend_updateImageData_withModificationData_forEntryWithIdentifier_registrationOptions_imageDescription_completionHandler___block_invoke_67;
      v28[3] = &unk_1E8590498;
      v29 = *(a1 + 56);
      v30 = *(a1 + 64);
      v31 = v10;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __162__SSScreenshotAssetManagerPhotoLibraryBackend_updateImageData_withModificationData_forEntryWithIdentifier_registrationOptions_imageDescription_completionHandler___block_invoke_2;
      v25[3] = &unk_1E85904C0;
      v26 = *(a1 + 48);
      v27 = *(a1 + 72);
      [v16 performChanges:v28 completionHandler:v25];
    }

    else
    {
      v17 = os_log_create("com.apple.screenshotservices", "PhotoLibrary");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __162__SSScreenshotAssetManagerPhotoLibraryBackend_updateImageData_withModificationData_forEntryWithIdentifier_registrationOptions_imageDescription_completionHandler___block_invoke_cold_1(a1, v17, v18, v19, v20, v21, v22, v23);
      }

      v24 = *(a1 + 72);
      if (v24)
      {
        (*(v24 + 16))(v24, 0, 0);
      }
    }
  }

  else
  {
    v8 = os_log_create("com.apple.screenshotservices", "PhotoLibrary");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __162__SSScreenshotAssetManagerPhotoLibraryBackend_updateImageData_withModificationData_forEntryWithIdentifier_registrationOptions_imageDescription_completionHandler___block_invoke_cold_2(a1, v6);
    }

    v9 = *(a1 + 72);
    if (v9)
    {
      (*(v9 + 16))(v9, 0, 0);
    }
  }
}

void __162__SSScreenshotAssetManagerPhotoLibraryBackend_updateImageData_withModificationData_forEntryWithIdentifier_registrationOptions_imageDescription_completionHandler___block_invoke_67(uint64_t a1)
{
  v2 = [MEMORY[0x1E6978648] changeRequestForAsset:*(a1 + 32)];
  if ([*(a1 + 40) length])
  {
    [v2 setAccessibilityDescription:*(a1 + 40)];
  }

  [v2 setContentEditingOutput:*(a1 + 48)];
}

void __162__SSScreenshotAssetManagerPhotoLibraryBackend_updateImageData_withModificationData_forEntryWithIdentifier_registrationOptions_imageDescription_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = os_log_create("com.apple.screenshotservices", "PhotoLibrary");
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_1D9E04000, v7, OS_LOG_TYPE_INFO, "Updated photo for identifier %@", &v11, 0xCu);
    }
  }

  else
  {
    v9 = v6;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __162__SSScreenshotAssetManagerPhotoLibraryBackend_updateImageData_withModificationData_forEntryWithIdentifier_registrationOptions_imageDescription_completionHandler___block_invoke_2_cold_1(a1, v5);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, a2, v5);
  }
}

- (void)saveImageToTemporaryLocation:(id)a3 withName:(id)a4 imageDescription:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  if ([v13 ss_isHDRImage])
  {
    [v13 ss_heicDataWithImageDescription:0];
  }

  else
  {
    [v13 ss_pngDataWithImageDescription:0];
  }
  v14 = ;

  [(SSScreenshotAssetManagerPhotoLibraryBackend *)self saveImageDataToTemporaryLocation:v14 withName:v12 imageDescription:v11 completionHandler:v10];
}

- (void)saveImageDataToTemporaryLocation:(id)a3 withName:(id)a4 imageDescription:(id)a5 completionHandler:(id)a6
{
  v35 = a3;
  v9 = a4;
  v34 = a5;
  v33 = a6;
  v10 = 0;
  v11 = 1;
  do
  {
    v12 = v9;

    v13 = v12;
    if (v11 != 1)
    {
      v14 = MEMORY[0x1E696ADA0];
      v15 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
      v16 = [v14 localizedStringFromNumber:v15 numberStyle:0];

      v17 = [v12 stringByAppendingString:@" "];
      v13 = [v17 stringByAppendingString:v16];
    }

    v18 = [MEMORY[0x1E69DCAB8] ss_isHEICImageData:{v35, v33}];
    v19 = NSTemporaryDirectory();
    if (v18)
    {
      v20 = @"heic";
    }

    else
    {
      v20 = @"png";
    }

    v21 = [v13 stringByAppendingPathExtension:v20];
    v10 = [v19 stringByAppendingPathComponent:v21];

    v22 = [MEMORY[0x1E696AC08] defaultManager];
    v23 = [v22 fileExistsAtPath:v10];

    ++v11;
  }

  while ((v23 & 1) != 0);
  v24 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10];
  v37 = 0;
  [v35 writeToURL:v24 options:0 error:&v37];
  v25 = v37;
  if ([v34 length])
  {
    err = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v26 = getMAImageCaptioningSetCaptionSymbolLoc_ptr;
    v42 = getMAImageCaptioningSetCaptionSymbolLoc_ptr;
    if (!getMAImageCaptioningSetCaptionSymbolLoc_ptr)
    {
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __getMAImageCaptioningSetCaptionSymbolLoc_block_invoke;
      v38[3] = &unk_1E8590188;
      v38[4] = &v39;
      __getMAImageCaptioningSetCaptionSymbolLoc_block_invoke(v38);
      v26 = v40[3];
    }

    _Block_object_dispose(&v39, 8);
    if (!v26)
    {
      v32 = [SSScreenshotAssetManagerPhotoLibraryBackend saveImageDataToTemporaryLocation:withName:imageDescription:completionHandler:];
      _Block_object_dispose(&v39, 8);
      _Unwind_Resume(v32);
    }

    if ((v26(v24, v34, &err) & 1) == 0)
    {
      if (err)
      {
        v27 = CFErrorCopyDescription(err);
        CFRelease(err);
      }

      else
      {
        v27 = 0;
      }

      v28 = [(__CFString *)v27 length];
      v29 = os_log_create("com.apple.screenshotservices", "PhotoLibrary");
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
      if (v28)
      {
        if (v30)
        {
          [SSScreenshotAssetManagerPhotoLibraryBackend saveImageDataToTemporaryLocation:withName:imageDescription:completionHandler:];
        }
      }

      else if (v30)
      {
        [SSScreenshotAssetManagerPhotoLibraryBackend saveImageDataToTemporaryLocation:withName:imageDescription:completionHandler:];
      }
    }
  }

  if (v25)
  {
    v31 = os_log_create("com.apple.screenshotservices", "PhotoLibrary");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [SSScreenshotAssetManagerPhotoLibraryBackend saveImageDataToTemporaryLocation:v24 withName:v25 imageDescription:? completionHandler:?];
    }
  }

  v33[2](v33, v24, v25);
}

- (void)removeEntryWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E6978630];
  v25[0] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v10 = [(SSScreenshotAssetManagerPhotoLibraryBackend *)self photoLibrary];
  v11 = [v10 librarySpecificFetchOptions];
  v12 = [v8 fetchAssetsWithLocalIdentifiers:v9 options:v11];
  v13 = [v12 firstObject];

  if (v13)
  {
    v14 = [v13 photoLibrary];
    if (v14)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __91__SSScreenshotAssetManagerPhotoLibraryBackend_removeEntryWithIdentifier_completionHandler___block_invoke;
      v20[3] = &unk_1E85903B8;
      v21 = v6;
      v22 = self;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __91__SSScreenshotAssetManagerPhotoLibraryBackend_removeEntryWithIdentifier_completionHandler___block_invoke_2;
      v17[3] = &unk_1E85904C0;
      v18 = v21;
      v19 = v7;
      [v14 performChanges:v20 completionHandler:v17];
    }

    else
    {
      v16 = os_log_create("com.apple.screenshotservices", "PhotoLibrary");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [SSScreenshotAssetManagerPhotoLibraryBackend removeEntryWithIdentifier:completionHandler:];
      }

      if (v7)
      {
        (*(v7 + 2))(v7, 0, 0);
      }
    }
  }

  else
  {
    v15 = os_log_create("com.apple.screenshotservices", "PhotoLibrary");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v6;
      _os_log_impl(&dword_1D9E04000, v15, OS_LOG_TYPE_DEFAULT, "Asset with identifier %@ not found, assume already deleted", buf, 0xCu);
    }

    if (v7)
    {
      (*(v7 + 2))(v7, 1, 0);
    }
  }
}

void __91__SSScreenshotAssetManagerPhotoLibraryBackend_removeEntryWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6978630];
  v7[0] = *(a1 + 32);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v4 = [*(a1 + 40) photoLibrary];
  v5 = [v4 librarySpecificFetchOptions];
  v6 = [v2 fetchAssetsWithLocalIdentifiers:v3 options:v5];

  [MEMORY[0x1E6978648] deleteAssets:v6];
}

void __91__SSScreenshotAssetManagerPhotoLibraryBackend_removeEntryWithIdentifier_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = os_log_create("com.apple.screenshotservices", "PhotoLibrary");
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_1D9E04000, v7, OS_LOG_TYPE_DEFAULT, "Removed photo for identifier %@", &v11, 0xCu);
    }
  }

  else
  {
    v9 = v6;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __91__SSScreenshotAssetManagerPhotoLibraryBackend_removeEntryWithIdentifier_completionHandler___block_invoke_2_cold_1(a1, v5);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, a2, v5);
  }
}

+ (void)jpegImageDataFromImage:(void *)a1 withProperties:.cold.1(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)jpegImageDataFromImage:(void *)a1 withProperties:.cold.2(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)jpegImageDataFromImage:(void *)a1 withProperties:.cold.3(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __103__SSScreenshotAssetManagerPhotoLibraryBackend__registerEntryWithImage_options_retry_identifierHandler___block_invoke_cold_1(id *a1)
{
  v1 = [*a1 description];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __103__SSScreenshotAssetManagerPhotoLibraryBackend__registerEntryWithImage_options_retry_identifierHandler___block_invoke_cold_2(id *a1)
{
  v1 = [*a1 description];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __103__SSScreenshotAssetManagerPhotoLibraryBackend__registerEntryWithImage_options_retry_identifierHandler___block_invoke_cold_3(id *a1)
{
  v1 = [*a1 description];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __103__SSScreenshotAssetManagerPhotoLibraryBackend__registerEntryWithImage_options_retry_identifierHandler___block_invoke_51_cold_1(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __99__SSScreenshotAssetManagerPhotoLibraryBackend_imageForPreviouslyRegisteredIdentifier_imageHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_3(a1 a2)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __162__SSScreenshotAssetManagerPhotoLibraryBackend_updateImageData_withModificationData_forEntryWithIdentifier_registrationOptions_imageDescription_completionHandler___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v2 = [a2 description];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __162__SSScreenshotAssetManagerPhotoLibraryBackend_updateImageData_withModificationData_forEntryWithIdentifier_registrationOptions_imageDescription_completionHandler___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_3(a1 a2)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)saveImageDataToTemporaryLocation:withName:imageDescription:completionHandler:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1D9E04000, v1, OS_LOG_TYPE_ERROR, "Could not set image description for a file %@ with error %@", v2, 0x16u);
}

- (uint64_t)saveImageDataToTemporaryLocation:withName:imageDescription:completionHandler:.cold.3()
{
  dlerror();
  v0 = abort_report_np();
  return [SSScreenshotAssetManagerPhotoLibraryBackend saveImageDataToTemporaryLocation:v0 withName:? imageDescription:? completionHandler:?];
}

- (void)saveImageDataToTemporaryLocation:(uint64_t)a1 withName:(void *)a2 imageDescription:completionHandler:.cold.4(uint64_t a1, void *a2)
{
  v2 = [a2 description];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __91__SSScreenshotAssetManagerPhotoLibraryBackend_removeEntryWithIdentifier_completionHandler___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_3(a1 a2)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

@end