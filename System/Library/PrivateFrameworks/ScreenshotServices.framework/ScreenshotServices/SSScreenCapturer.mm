@interface SSScreenCapturer
+ (BOOL)_filesAppExistsOnSystem;
+ (void)playScreenshotSound;
- (BOOL)_betaFeedbackEnabled:(id)enabled;
- (BOOL)_screenshotWasTakenOverBetaApp;
- (SSScreenCapturer)init;
- (SSScreenCapturerDelegate)delegate;
- (id)_applicationProxyForCurrentApp;
- (id)_betaApplicationName;
- (id)_bundleIDForCurrentApplication;
- (id)_currentDisplayLayout;
- (id)_environmentDescriptionFromImage:(id)image;
- (id)_testingCoordinator;
- (void)_captureAndSendDocumentForEnvironmentElement:(id)element;
- (void)_captureAndSendMetadataAndDocumentForEnvironmentDescription:(id)description metadataCaptureCompletion:(id)completion;
- (void)_captureAndSendMetadataForEnvironmentElement:(id)element metadataCapture:(id)capture sendCompletion:(id)completion;
- (void)_preheatAndTakeScreenshotIfPossibleWithOptionsCollection:(id)collection presentationOptions:(id)options appleInternalOptions:(id)internalOptions;
- (void)_saveImageToPhotoLibrary:(id)library environmentDescription:(id)description;
- (void)_sendEnvironmentDescription:(id)description savingImageToPhotos:(id)photos withCompletion:(id)completion;
- (void)_sendEnvironmentDescription:(id)description withCompletion:(id)completion;
- (void)_takeScreenshotWithOptionsCollection:(id)collection serviceOptions:(id)options presentationOptions:(id)presentationOptions appleInternalOptions:(id)internalOptions;
- (void)dealloc;
- (void)preheatWithPresentationOptions:(id)options;
- (void)screenshotWindowWasDismissed;
- (void)screenshotWindowWillBeDisplayed;
- (void)server:(id)server handleRequest:(id)request withCompletion:(id)completion;
- (void)startRecap;
- (void)takeScreenshot;
- (void)testingCoordinator:(id)coordinator requestsTakingScreenshotForRunPPTRequest:(id)request;
@end

@implementation SSScreenCapturer

- (SSScreenCapturer)init
{
  v14.receiver = self;
  v14.super_class = SSScreenCapturer;
  v2 = [(SSScreenCapturer *)&v14 init];
  v3 = objc_alloc_init(SSSnapshotter);
  snapshotter = v2->_snapshotter;
  v2->_snapshotter = v3;

  v5 = objc_alloc_init(SSDittoRemoteConnection);
  dittoRemoteConnection = v2->_dittoRemoteConnection;
  v2->_dittoRemoteConnection = v5;

  v7 = objc_alloc_init(SSApplicationScreenshotSupplementalDataCapturer);
  metadataCapturer = v2->_metadataCapturer;
  v2->_metadataCapturer = v7;

  v9 = [[SSUIServiceServer alloc] initWithDelegate:v2];
  uiServiceServer = v2->_uiServiceServer;
  v2->_uiServiceServer = v9;

  v11 = objc_alloc_init(SSScreenshotsWindow);
  serviceWindow = v2->_serviceWindow;
  v2->_serviceWindow = v11;

  [(SSScreenshotsWindow *)v2->_serviceWindow setDelegate:v2];
  [(SSScreenshotsWindow *)v2->_serviceWindow setUserInteractionEnabled:0];
  v2->_lastUsedPresentationMode = 0;
  v2->_lastScreenshotTime = 0.0;
  [(SSScreenCapturer *)v2 startRecap];
  return v2;
}

- (void)dealloc
{
  [(FBSDisplayLayoutMonitor *)self->_layoutMonitor invalidate];
  v3.receiver = self;
  v3.super_class = SSScreenCapturer;
  [(SSScreenCapturer *)&v3 dealloc];
}

- (void)startRecap
{
  if (_SSEnableContinuousScreenCaptureForBugFiling() && RecapLibraryCore_0())
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v3 = getRCPRecorderConfigClass_softClass;
    v22 = getRCPRecorderConfigClass_softClass;
    if (!getRCPRecorderConfigClass_softClass)
    {
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __getRCPRecorderConfigClass_block_invoke;
      v17 = &unk_1E8590188;
      v18 = &v19;
      __getRCPRecorderConfigClass_block_invoke(&v14);
      v3 = v20[3];
    }

    v4 = v3;
    _Block_object_dispose(&v19, 8);
    v5 = objc_opt_new();
    [v5 setDeviceUsagePageArray:&unk_1F555C300];
    [v5 setMaxStreamDuration:30.0];
    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v6 = getRCPEventStreamRecorderClass_softClass;
    v22 = getRCPEventStreamRecorderClass_softClass;
    if (!getRCPEventStreamRecorderClass_softClass)
    {
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __getRCPEventStreamRecorderClass_block_invoke;
      v17 = &unk_1E8590188;
      v18 = &v19;
      __getRCPEventStreamRecorderClass_block_invoke(&v14);
      v6 = v20[3];
    }

    v7 = v6;
    _Block_object_dispose(&v19, 8);
    v8 = [v6 recorderWithConfiguration:v5];
    recap = self->_recap;
    self->_recap = v8;

    [(RCPEventStreamRecorder *)self->_recap startRecording];
    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v10 = getRCPScreenRecorderClass_softClass;
    v22 = getRCPScreenRecorderClass_softClass;
    if (!getRCPScreenRecorderClass_softClass)
    {
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __getRCPScreenRecorderClass_block_invoke;
      v17 = &unk_1E8590188;
      v18 = &v19;
      __getRCPScreenRecorderClass_block_invoke(&v14);
      v10 = v20[3];
    }

    v11 = v10;
    _Block_object_dispose(&v19, 8);
    v12 = objc_alloc_init(v10);
    recapSnapshotter = self->_recapSnapshotter;
    self->_recapSnapshotter = v12;

    [(RCPScreenRecorder *)self->_recapSnapshotter setMaxDuration:30.0];
    [(RCPScreenRecorder *)self->_recapSnapshotter startRecording];
  }
}

- (void)preheatWithPresentationOptions:(id)options
{
  optionsCopy = options;
  v5 = os_log_create("com.apple.screenshotservices", "Capture");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1D9E04000, v5, OS_LOG_TYPE_DEFAULT, "Asked to preheat", v8, 2u);
  }

  v6 = +[SSScreenCaptureAbilityCheck abilityCheck];
  if ([v6 isAbleToTakeScreenshots])
  {
    [(SSScreenshotsWindow *)self->_serviceWindow activateRemoteViewControllerIfAppropriate];
    -[SSDittoRemoteConnection sendDittoProcessPreheatRequestWithPresentationMode:completion:](self->_dittoRemoteConnection, "sendDittoProcessPreheatRequestWithPresentationMode:completion:", [optionsCopy presentationMode], &__block_literal_global_9);
  }

  else
  {
    v7 = os_log_create("com.apple.screenshotservices", "Capture");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SSScreenCapturer preheatWithPresentationOptions:v6];
    }
  }
}

- (void)takeScreenshot
{
  v3 = objc_alloc_init(SSScreenCapturerPresentationOptions);
  [(SSScreenCapturerPresentationOptions *)v3 setPresentationMode:1];
  [(SSScreenCapturer *)self takeScreenshotWithPresentationOptions:v3];
}

- (void)screenshotWindowWasDismissed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 _screenshotWindowWasDismissed];
  }
}

- (void)screenshotWindowWillBeDisplayed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 _screenshotWindowWillBeDisplayed];
  }
}

- (id)_environmentDescriptionFromImage:(id)image
{
  imageCopy = image;
  v4 = objc_alloc_init(SSEnvironmentDescription);
  ss_imageSurfaceFromImage = [imageCopy ss_imageSurfaceFromImage];
  [(SSEnvironmentDescription *)v4 setImageSurface:ss_imageSurfaceFromImage];

  [imageCopy size];
  v7 = v6;
  v9 = v8;
  [imageCopy scale];
  v11 = v10;

  [(SSEnvironmentDescription *)v4 setImagePixelSize:v7 * v11, v9 * v11];
  [(SSEnvironmentDescription *)v4 setImageScale:v11];

  return v4;
}

- (void)_sendEnvironmentDescription:(id)description savingImageToPhotos:(id)photos withCompletion:(id)completion
{
  descriptionCopy = description;
  photosCopy = photos;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __83__SSScreenCapturer__sendEnvironmentDescription_savingImageToPhotos_withCompletion___block_invoke;
  v14[3] = &unk_1E85909E0;
  v14[4] = self;
  v15 = photosCopy;
  v16 = descriptionCopy;
  v17 = completionCopy;
  v11 = descriptionCopy;
  v12 = photosCopy;
  v13 = completionCopy;
  [(SSScreenCapturer *)self _sendEnvironmentDescription:v11 withCompletion:v14];
}

uint64_t __83__SSScreenCapturer__sendEnvironmentDescription_savingImageToPhotos_withCompletion___block_invoke(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];

  return [v3 _saveImageToPhotoLibrary:v4 environmentDescription:v5];
}

- (void)_sendEnvironmentDescription:(id)description withCompletion:(id)completion
{
  completionCopy = completion;
  descriptionCopy = description;
  v8 = _SSSignpostLog();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D9E04000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SendScreenshot", &unk_1D9E28D6F, buf, 2u);
  }

  v9 = os_log_create("com.apple.screenshotservices", "Performance");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1D9E04000, v9, OS_LOG_TYPE_INFO, "BEGIN SendScreenshot", buf, 2u);
  }

  dittoRemoteConnection = self->_dittoRemoteConnection;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__SSScreenCapturer__sendEnvironmentDescription_withCompletion___block_invoke;
  v12[3] = &unk_1E8590228;
  v13 = completionCopy;
  v11 = completionCopy;
  [(SSDittoRemoteConnection *)dittoRemoteConnection sendDittoProcessEnvironmentDescription:descriptionCopy completion:v12];
}

uint64_t __63__SSScreenCapturer__sendEnvironmentDescription_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_captureAndSendMetadataForEnvironmentElement:(id)element metadataCapture:(id)capture sendCompletion:(id)completion
{
  captureCopy = capture;
  completionCopy = completion;
  elementCopy = element;
  v11 = _SSSignpostLog();
  if (os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D9E04000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CaptureMetadata", &unk_1D9E28D6F, buf, 2u);
  }

  v12 = os_log_create("com.apple.screenshotservices", "Performance");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1D9E04000, v12, OS_LOG_TYPE_INFO, "BEGIN CaptureMetadata", buf, 2u);
  }

  metadataCapturer = self->_metadataCapturer;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __96__SSScreenCapturer__captureAndSendMetadataForEnvironmentElement_metadataCapture_sendCompletion___block_invoke;
  v16[3] = &unk_1E8590A08;
  v16[4] = self;
  v17 = captureCopy;
  v18 = completionCopy;
  v14 = completionCopy;
  v15 = captureCopy;
  [(SSApplicationScreenshotSupplementalDataCapturer *)metadataCapturer captureMetadataForEnvironmentElement:elementCopy withCompletionBlock:v16];
}

void __96__SSScreenCapturer__captureAndSendMetadataForEnvironmentElement_metadataCapture_sendCompletion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = _SSSignpostLog();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D9E04000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CaptureMetadata", &unk_1D9E28D6F, buf, 2u);
  }

  v5 = os_log_create("com.apple.screenshotservices", "Performance");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_1D9E04000, v5, OS_LOG_TYPE_INFO, "END CaptureMetadata", v9, 2u);
  }

  v6 = a1[5];
  v7 = [v3 metadata];
  (*(v6 + 16))(v6, v7);

  if (v3)
  {
    [*(a1[4] + 16) sendDittoProcessMetadataUpdate:v3 completion:a1[6]];
  }

  else
  {
    v8 = a1[6];
    if (v8)
    {
      (*(v8 + 16))(v8, 0);
    }
  }
}

- (void)_captureAndSendDocumentForEnvironmentElement:(id)element
{
  elementCopy = element;
  v5 = _SSSignpostLog();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D9E04000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CaptureDocument", &unk_1D9E28D6F, buf, 2u);
  }

  v6 = os_log_create("com.apple.screenshotservices", "Performance");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1D9E04000, v6, OS_LOG_TYPE_INFO, "BEGIN CaptureDocument", buf, 2u);
  }

  metadataCapturer = self->_metadataCapturer;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__SSScreenCapturer__captureAndSendDocumentForEnvironmentElement___block_invoke;
  v8[3] = &unk_1E8590A30;
  v8[4] = self;
  [(SSApplicationScreenshotSupplementalDataCapturer *)metadataCapturer captureDocumentForEnvironmentElement:elementCopy withCompletionBlock:v8];
}

void __65__SSScreenCapturer__captureAndSendDocumentForEnvironmentElement___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _SSSignpostLog();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D9E04000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CaptureDocument", &unk_1D9E28D6F, buf, 2u);
  }

  v5 = os_log_create("com.apple.screenshotservices", "Performance");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D9E04000, v5, OS_LOG_TYPE_INFO, "END CaptureDocument", v6, 2u);
  }

  if (v3)
  {
    [*(*(a1 + 32) + 16) sendDittoProcessDocumentUpdate:v3];
  }
}

- (void)_captureAndSendMetadataAndDocumentForEnvironmentDescription:(id)description metadataCaptureCompletion:(id)completion
{
  v54 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  completionCopy = completion;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v27 = descriptionCopy;
  elements = [descriptionCopy elements];
  v8 = [elements countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v8)
  {
    v9 = *v41;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(elements);
        }

        if (![*(*(&v40 + 1) + 8 * i) supportsMetadataCapture])
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v8 = [elements countByEnumeratingWithState:&v40 objects:v49 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = dispatch_group_create();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [v27 elements];
  v13 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v13)
  {
    v26 = *v37;
    while (2)
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v36 + 1) + 8 * j);
        bundleIdentifier = [v15 bundleIdentifier];
        if (bundleIdentifier)
        {
          v44 = 0;
          v45 = &v44;
          v46 = 0x2050000000;
          v17 = getAPApplicationClass_softClass;
          v47 = getAPApplicationClass_softClass;
          if (!getAPApplicationClass_softClass)
          {
            *&buf = MEMORY[0x1E69E9820];
            *(&buf + 1) = 3221225472;
            v51 = __getAPApplicationClass_block_invoke;
            v52 = &unk_1E8590188;
            v53 = &v44;
            __getAPApplicationClass_block_invoke(&buf);
            v17 = v45[3];
          }

          v18 = v17;
          _Block_object_dispose(&v44, 8);
          v19 = [v17 applicationWithBundleIdentifier:bundleIdentifier];
          isLocked = [v19 isLocked];

          if (isLocked)
          {
            v21 = os_log_create("com.apple.screenshotservices", "Capture");
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = bundleIdentifier;
              _os_log_impl(&dword_1D9E04000, v21, OS_LOG_TYPE_DEFAULT, "Skip requesting metadata from locked app with bundleID: %@", &buf, 0xCu);
            }

            goto LABEL_26;
          }
        }

        dispatch_group_enter(v12);
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __106__SSScreenCapturer__captureAndSendMetadataAndDocumentForEnvironmentDescription_metadataCaptureCompletion___block_invoke;
        v32[3] = &unk_1E8590A58;
        v35 = v11;
        v33 = v27;
        v34 = v12;
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __106__SSScreenCapturer__captureAndSendMetadataAndDocumentForEnvironmentDescription_metadataCaptureCompletion___block_invoke_2;
        v30[3] = &unk_1E8590A80;
        v31 = v11;
        v30[4] = self;
        v30[5] = v15;
        [(SSScreenCapturer *)self _captureAndSendMetadataForEnvironmentElement:v15 metadataCapture:v32 sendCompletion:v30];
      }

      v13 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_26:

  v22 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__SSScreenCapturer__captureAndSendMetadataAndDocumentForEnvironmentDescription_metadataCaptureCompletion___block_invoke_3;
  block[3] = &unk_1E8590228;
  v29 = completionCopy;
  v23 = completionCopy;
  dispatch_group_notify(v12, v22, block);
}

void __106__SSScreenCapturer__captureAndSendMetadataAndDocumentForEnvironmentDescription_metadataCaptureCompletion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    if (*(a1 + 48) == 1)
    {
      [v6 setUserActivityTitle:0];
      [v6 setUserActivityURL:0];
    }

    v3 = MEMORY[0x1E695DF70];
    v4 = [*(a1 + 32) harvestedMetadata];
    v5 = [v3 arrayWithArray:v4];

    [v5 addObject:v6];
    [*(a1 + 32) setHarvestedMetadata:v5];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __106__SSScreenCapturer__captureAndSendMetadataAndDocumentForEnvironmentDescription_metadataCaptureCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6 = v3;
    v4 = [v3 info];
    [v4 flagForSetting:8];
    IsYes = BSSettingFlagIsYes();

    v3 = v6;
    if (IsYes)
    {
      if ((*(a1 + 48) & 1) == 0)
      {
        [*(a1 + 32) _captureAndSendDocumentForEnvironmentElement:*(a1 + 40)];
        v3 = v6;
      }
    }
  }
}

uint64_t __106__SSScreenCapturer__captureAndSendMetadataAndDocumentForEnvironmentDescription_metadataCaptureCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_saveImageToPhotoLibrary:(id)library environmentDescription:(id)description
{
  v28 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  descriptionCopy = description;
  v8 = objc_alloc_init(SSScreenshotAssetManagerRegistrationOptions);
  serviceOptions = [descriptionCopy serviceOptions];
  -[SSScreenshotAssetManagerRegistrationOptions setSaveLocation:](v8, "setSaveLocation:", [serviceOptions saveLocation]);

  serviceOptions2 = [descriptionCopy serviceOptions];
  assetMetadata = [serviceOptions2 assetMetadata];
  [(SSScreenshotAssetManagerRegistrationOptions *)v8 setAssetMetadata:assetMetadata];

  currentApplicationBundleID = [descriptionCopy currentApplicationBundleID];
  [(SSScreenshotAssetManagerRegistrationOptions *)v8 setApplicationBundleID:currentApplicationBundleID];

  harvestedMetadata = [descriptionCopy harvestedMetadata];
  [(SSScreenshotAssetManagerRegistrationOptions *)v8 setHarvestedMetadata:harvestedMetadata];

  v14 = os_log_create("com.apple.screenshotservices", "Capture");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [libraryCopy description];
    *buf = 138412290;
    v27 = v15;
    _os_log_impl(&dword_1D9E04000, v14, OS_LOG_TYPE_INFO, "Registering image with asset manager %@", buf, 0xCu);
  }

  identifier = [descriptionCopy identifier];
  v17 = _SSSignpostLog();
  if (os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D9E04000, v17, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SaveToPhotos", &unk_1D9E28D6F, buf, 2u);
  }

  v18 = os_log_create("com.apple.screenshotservices", "Performance");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1D9E04000, v18, OS_LOG_TYPE_INFO, "BEGIN SaveToPhotos", buf, 2u);
  }

  v19 = +[SSScreenshotAssetManager sharedAssetManager];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __68__SSScreenCapturer__saveImageToPhotoLibrary_environmentDescription___block_invoke;
  v22[3] = &unk_1E8590AA8;
  v23 = identifier;
  v24 = libraryCopy;
  selfCopy = self;
  v20 = libraryCopy;
  v21 = identifier;
  [v19 registerImageForPersistable:v20 options:v8 withRegistrationBlock:v22];
}

void __68__SSScreenCapturer__saveImageToPhotoLibrary_environmentDescription___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _SSSignpostLog();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D9E04000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SaveToPhotos", &unk_1D9E28D6F, buf, 2u);
  }

  v7 = os_log_create("com.apple.screenshotservices", "Performance");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_1D9E04000, v7, OS_LOG_TYPE_INFO, "END SaveToPhotos", v10, 2u);
  }

  v8 = objc_alloc_init(SSImageIdentifierUpdate);
  [(SSImageIdentifierUpdate *)v8 setEnvironmentDescriptionIdentifier:*(a1 + 32)];
  if (a2)
  {
    [(SSImageIdentifierUpdate *)v8 setImageIdentifier:v5];
  }

  else
  {
    v9 = os_log_create("com.apple.screenshotservices", "Capture");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __68__SSScreenCapturer__saveImageToPhotoLibrary_environmentDescription___block_invoke_cold_1(a1);
    }
  }

  [(SSImageIdentifierUpdate *)v8 setSuccess:a2];
  [*(*(a1 + 48) + 16) sendDittoProcessImageIdentifierUpdate:v8];
}

- (void)_preheatAndTakeScreenshotIfPossibleWithOptionsCollection:(id)collection presentationOptions:(id)options appleInternalOptions:(id)internalOptions
{
  v23 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  optionsCopy = options;
  internalOptionsCopy = internalOptions;
  v11 = _SSSignpostLog();
  if (os_signpost_enabled(v11))
  {
    LOWORD(v21) = 0;
    _os_signpost_emit_with_name_impl(&dword_1D9E04000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CalledBySpringBoard", &unk_1D9E28D6F, &v21, 2u);
  }

  v12 = os_log_create("com.apple.screenshotservices", "Performance");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&dword_1D9E04000, v12, OS_LOG_TYPE_INFO, "DISCRETE CalledBySpringBoard", &v21, 2u);
  }

  v13 = _SSSignpostLog();
  if (os_signpost_enabled(v13))
  {
    LOWORD(v21) = 0;
    _os_signpost_emit_with_name_impl(&dword_1D9E04000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ScreenshotGestureToAnimationStart", &unk_1D9E28D6F, &v21, 2u);
  }

  v14 = os_log_create("com.apple.screenshotservices", "Performance");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&dword_1D9E04000, v14, OS_LOG_TYPE_INFO, "BEGIN ScreenshotGestureToAnimationStart", &v21, 2u);
  }

  v15 = _SSSignpostLog();
  if (os_signpost_enabled(v15))
  {
    LOWORD(v21) = 0;
    _os_signpost_emit_with_name_impl(&dword_1D9E04000, v15, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ServiceLaunch", &unk_1D9E28D6F, &v21, 2u);
  }

  v16 = os_log_create("com.apple.screenshotservices", "Performance");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&dword_1D9E04000, v16, OS_LOG_TYPE_INFO, "BEGIN ServiceLaunch", &v21, 2u);
  }

  [(SSDittoRemoteConnection *)self->_dittoRemoteConnection preheatDittoProcess];
  v17 = os_log_create("com.apple.screenshotservices", "Capture");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [optionsCopy description];
    v21 = 138412290;
    v22 = v18;
    _os_log_impl(&dword_1D9E04000, v17, OS_LOG_TYPE_DEFAULT, "Asked to capture with presentation options %@", &v21, 0xCu);
  }

  v19 = +[SSScreenCaptureAbilityCheck abilityCheck];
  if ([v19 isAbleToTakeScreenshots])
  {
    [(SSScreenshotsWindow *)self->_serviceWindow activateRemoteViewControllerIfAppropriate];
    [(SSScreenCapturer *)self _takeScreenshotWithOptionsCollection:collectionCopy serviceOptions:0 presentationOptions:optionsCopy appleInternalOptions:internalOptionsCopy];
  }

  else
  {
    v20 = os_log_create("com.apple.screenshotservices", "Capture");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SSScreenCapturer _preheatAndTakeScreenshotIfPossibleWithOptionsCollection:v19 presentationOptions:? appleInternalOptions:?];
    }
  }
}

- (void)_takeScreenshotWithOptionsCollection:(id)collection serviceOptions:(id)options presentationOptions:(id)presentationOptions appleInternalOptions:(id)internalOptions
{
  v79 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  optionsCopy = options;
  presentationOptionsCopy = presentationOptions;
  internalOptionsCopy = internalOptions;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  date = [MEMORY[0x1E695DF00] date];
  array = [MEMORY[0x1E695DF70] array];
  v11 = _SSSignpostLog();
  if (os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D9E04000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CaptureScreen", &unk_1D9E28D6F, buf, 2u);
  }

  v12 = os_log_create("com.apple.screenshotservices", "Performance");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1D9E04000, v12, OS_LOG_TYPE_INFO, "BEGIN CaptureScreen", buf, 2u);
  }

  v70 = 0;
  v13 = [(SSSnapshotter *)self->_snapshotter captureAvailableSnapshotsWithOptionsCollection:collectionCopy didFindOnenessScreens:&v70];
  v14 = _SSSignpostLog();
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D9E04000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CaptureScreen", &unk_1D9E28D6F, buf, 2u);
  }

  v15 = os_log_create("com.apple.screenshotservices", "Performance");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1D9E04000, v15, OS_LOG_TYPE_INFO, "END CaptureScreen", buf, 2u);
  }

  v16 = [v13 count];
  v17 = os_log_create("com.apple.screenshotservices", "Capture");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    shorterLoggableString = [uUIDString shorterLoggableString];
    *buf = 134218242;
    *&buf[4] = v16;
    *&buf[12] = 2112;
    *&buf[14] = shorterLoggableString;
    _os_log_impl(&dword_1D9E04000, v17, OS_LOG_TYPE_INFO, "Have %ld potential snapshots for session %@", buf, 0x16u);
  }

  [objc_opt_class() playScreenshotSound];
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v13;
  v61 = [obj countByEnumeratingWithState:&v66 objects:v75 count:16];
  if (v61)
  {
    v51 = &buf[16];
    v54 = *v67;
    do
    {
      for (i = 0; i != v61; ++i)
      {
        if (*v67 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v66 + 1) + 8 * i);
        screen = [v20 screen];
        [array addObject:screen];
        image = [v20 image];
        v23 = [(SSScreenCapturer *)self _environmentDescriptionFromImage:image];

        [v23 setDate:date];
        [v23 setSessionIdentifier:uUIDString];
        [screen scale];
        [v23 setImageScale:?];
        [v23 setServiceOptions:optionsCopy];
        effectivePresentationMode = [presentationOptionsCopy effectivePresentationMode];
        date2 = [MEMORY[0x1E695DF00] date];
        [date2 timeIntervalSince1970];
        v27 = v26;

        lastScreenshotTime = self->_lastScreenshotTime;
        self->_lastScreenshotTime = v27;
        hasRemoteViewController = [(SSScreenshotsWindow *)self->_serviceWindow hasRemoteViewController];
        v30 = effectivePresentationMode != 3 && hasRemoteViewController;
        if (v30 && (v27 - lastScreenshotTime >= 0.5 || self->_lastUsedPresentationMode != 2 || effectivePresentationMode != 2))
        {
          v31 = os_log_create("com.apple.screenshotservices", "ScreenCapturer");
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1D9E04000, v31, OS_LOG_TYPE_DEFAULT, "overridden effectivePresentationMode to PIP", buf, 2u);
          }

          effectivePresentationMode = 1;
        }

        self->_lastUsedPresentationMode = effectivePresentationMode;
        [v23 setPresentationMode:effectivePresentationMode];
        [v23 setAppleInternalOptions:internalOptionsCopy];
        [v23 setHasOnenessScreen:v70];
        screenshotsWindow = [(SSScreenCapturer *)self screenshotsWindow];
        [screenshotsWindow safeAreaInsets];
        [v23 setScreenshotsWindowSafeAreaInsets:?];

        if (screen)
        {
          v33 = [collectionCopy screenshotOptionsForScreen:screen];
          v34 = v33;
          if (v33)
          {
            [v23 setExternalFlashLayerContextID:{objc_msgSend(v33, "externalFlashLayerContextID")}];
            [v23 setExternalFlashLayerRenderID:{objc_msgSend(v34, "externalFlashLayerRenderID")}];
          }
        }

        else
        {
          v34 = 0;
        }

        if ([(SSScreenCapturer *)self _screenshotWasTakenOverBetaApp])
        {
          _bundleIDForCurrentApplication = [(SSScreenCapturer *)self _bundleIDForCurrentApplication];
          if ([(SSScreenCapturer *)self _betaFeedbackEnabled:_bundleIDForCurrentApplication])
          {
            [v23 setBetaApplicationBundleID:_bundleIDForCurrentApplication];
            _betaApplicationName = [(SSScreenCapturer *)self _betaApplicationName];
            [v23 setBetaApplicationName:_betaApplicationName];
          }
        }

        [v23 setCanAutosaveToFiles:{objc_msgSend(objc_opt_class(), "_filesAppExistsOnSystem")}];
        [v23 setSkipShutterSound:1];
        if (self->_recap)
        {
          v71 = 0;
          v72 = &v71;
          v73 = 0x2050000000;
          v37 = getRCPMovieClass_softClass_0;
          v74 = getRCPMovieClass_softClass_0;
          if (!getRCPMovieClass_softClass_0)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __getRCPMovieClass_block_invoke_0;
            v77 = &unk_1E8590188;
            v78 = &v71;
            __getRCPMovieClass_block_invoke_0(buf);
            v37 = v72[3];
          }

          v38 = v37;
          _Block_object_dispose(&v71, 8);
          v39 = [v37 alloc];
          v40 = [(RCPEventStreamRecorder *)self->_recap copy];
          snapshots = [(RCPScreenRecorder *)self->_recapSnapshotter snapshots];
          v42 = [v39 initWithEventStream:v40 snapshots:snapshots];

          v43 = objc_alloc_init(SSEnvironmentDescriptionAppleInternalOptions);
          [v23 setAppleInternalOptions:v43];

          appleInternalOptions = [v23 appleInternalOptions];
          [appleInternalOptions setRecapMovie:v42];
        }

        mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
        v46 = screen == mainScreen;

        if (v46)
        {
          _currentDisplayLayout = [(SSScreenCapturer *)self _currentDisplayLayout];
          [v23 takeElementsFromDisplayLayout:_currentDisplayLayout];
        }

        objc_initWeak(buf, self);
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = __113__SSScreenCapturer__takeScreenshotWithOptionsCollection_serviceOptions_presentationOptions_appleInternalOptions___block_invoke;
        v62[3] = &unk_1E8590AF8;
        v48 = v23;
        v63 = v48;
        objc_copyWeak(&v65, buf);
        v64 = v20;
        [(SSScreenCapturer *)self _sendEnvironmentDescription:v48 withCompletion:v62];
        objc_destroyWeak(&v65);

        objc_destroyWeak(buf);
      }

      v61 = [obj countByEnumeratingWithState:&v66 objects:v75 count:16];
    }

    while (v61);
  }

  delegate = [(SSScreenCapturer *)self delegate];

  if (delegate)
  {
    delegate2 = [(SSScreenCapturer *)self delegate];
    [delegate2 screenCapturer:self didCaptureScreenshotsOfScreens:array];
  }
}

void __113__SSScreenCapturer__takeScreenshotWithOptionsCollection_serviceOptions_presentationOptions_appleInternalOptions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceOptions];
  v3 = [v2 saveLocation];

  if (v3 != 3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      objc_initWeak(&location, WeakRetained);
      v5 = *(a1 + 32);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __113__SSScreenCapturer__takeScreenshotWithOptionsCollection_serviceOptions_presentationOptions_appleInternalOptions___block_invoke_2;
      v8[3] = &unk_1E8590AD0;
      objc_copyWeak(&v10, &location);
      v7 = *(a1 + 32);
      v6 = v7.i64[0];
      v9 = vextq_s8(v7, v7, 8uLL);
      [WeakRetained _captureAndSendMetadataAndDocumentForEnvironmentDescription:v5 metadataCaptureCompletion:v8];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

void __113__SSScreenCapturer__takeScreenshotWithOptionsCollection_serviceOptions_presentationOptions_appleInternalOptions___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [*(a1 + 32) image];
    [v4 _saveImageToPhotoLibrary:v3 environmentDescription:*(a1 + 40)];

    WeakRetained = v4;
  }
}

- (BOOL)_screenshotWasTakenOverBetaApp
{
  _applicationProxyForCurrentApp = [(SSScreenCapturer *)self _applicationProxyForCurrentApp];
  v3 = _applicationProxyForCurrentApp;
  if (!_applicationProxyForCurrentApp)
  {
    goto LABEL_8;
  }

  applicationType = [_applicationProxyForCurrentApp applicationType];
  if (![applicationType isEqualToString:@"User"])
  {
    goto LABEL_7;
  }

  itemID = [v3 itemID];
  if (![itemID unsignedIntegerValue])
  {

LABEL_7:
    goto LABEL_8;
  }

  isBetaApp = [v3 isBetaApp];

  if ((isBetaApp & 1) == 0)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v7 = 1;
LABEL_9:

  return v7;
}

- (id)_betaApplicationName
{
  _applicationProxyForCurrentApp = [(SSScreenCapturer *)self _applicationProxyForCurrentApp];
  v3 = _applicationProxyForCurrentApp;
  if (_applicationProxyForCurrentApp)
  {
    itemName = [_applicationProxyForCurrentApp itemName];
  }

  else
  {
    itemName = 0;
  }

  return itemName;
}

- (id)_bundleIDForCurrentApplication
{
  _currentDisplayLayout = [(SSScreenCapturer *)self _currentDisplayLayout];
  elements = [_currentDisplayLayout elements];
  v4 = [elements count];

  if (v4 == 1)
  {
    elements2 = [_currentDisplayLayout elements];
    v6 = [elements2 objectAtIndexedSubscript:0];

    bundleIdentifier = [v6 bundleIdentifier];
  }

  else
  {
    bundleIdentifier = 0;
  }

  return bundleIdentifier;
}

- (id)_applicationProxyForCurrentApp
{
  _bundleIDForCurrentApplication = [(SSScreenCapturer *)self _bundleIDForCurrentApplication];
  if (_bundleIDForCurrentApplication)
  {
    v3 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:_bundleIDForCurrentApplication];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_betaFeedbackEnabled:(id)enabled
{
  enabledCopy = enabled;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v4 = getTFBetaApplicationProxyClass_softClass;
  v13 = getTFBetaApplicationProxyClass_softClass;
  if (!getTFBetaApplicationProxyClass_softClass)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getTFBetaApplicationProxyClass_block_invoke;
    v9[3] = &unk_1E8590188;
    v9[4] = &v10;
    __getTFBetaApplicationProxyClass_block_invoke(v9);
    v4 = v11[3];
  }

  v5 = v4;
  _Block_object_dispose(&v10, 8);
  v6 = [[v4 alloc] initForAppWithIdentifier:enabledCopy];
  isProactiveFeedbackEnabledForInstalledVersion = [v6 isProactiveFeedbackEnabledForInstalledVersion];

  return isProactiveFeedbackEnabledForInstalledVersion;
}

+ (BOOL)_filesAppExistsOnSystem
{
  v2 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:@"com.apple.DocumentsApp"];
  appState = [v2 appState];
  isInstalled = [appState isInstalled];

  return isInstalled;
}

- (id)_currentDisplayLayout
{
  layoutMonitor = self->_layoutMonitor;
  if (!layoutMonitor)
  {
    v4 = MEMORY[0x1E699FAE0];
    configurationForDefaultMainDisplayMonitor = [MEMORY[0x1E699FAF8] configurationForDefaultMainDisplayMonitor];
    v6 = [v4 monitorWithConfiguration:configurationForDefaultMainDisplayMonitor];
    v7 = self->_layoutMonitor;
    self->_layoutMonitor = v6;

    layoutMonitor = self->_layoutMonitor;
  }

  return [(FBSDisplayLayoutMonitor *)layoutMonitor currentLayout];
}

+ (void)playScreenshotSound
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = getAudioServicesPlaySystemSoundSymbolLoc_ptr;
  v8 = getAudioServicesPlaySystemSoundSymbolLoc_ptr;
  if (!getAudioServicesPlaySystemSoundSymbolLoc_ptr)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getAudioServicesPlaySystemSoundSymbolLoc_block_invoke;
    v4[3] = &unk_1E8590188;
    v4[4] = &v5;
    __getAudioServicesPlaySystemSoundSymbolLoc_block_invoke(v4);
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    v3 = [SSScreenshotAssetManagerPhotoLibraryBackend saveImageDataToTemporaryLocation:withName:imageDescription:completionHandler:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v3);
  }

  v2(1108);
}

- (void)server:(id)server handleRequest:(id)request withCompletion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  [(SSScreenshotsWindow *)self->_serviceWindow activateRemoteViewControllerIfAppropriate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = requestCopy;
    image = [v8 image];
    v10 = [(SSScreenCapturer *)self _environmentDescriptionFromImage:image];
    options = [v8 options];

    [(SSScreenCapturerPresentationOptions *)v10 setServiceOptions:options];
    [(SSScreenCapturer *)self _sendEnvironmentDescription:v10 savingImageToPhotos:image withCompletion:completionCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = requestCopy;
      image = [(SSScreenCapturer *)self _testingCoordinator];
      [image handleRunPPTRequest:v10];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_8;
      }

      image = [requestCopy options];
      v10 = objc_alloc_init(SSScreenCapturerPresentationOptions);
      [(SSScreenCapturerPresentationOptions *)v10 setPresentationMode:1];
      [(SSScreenCapturer *)self _takeScreenshotWithOptionsCollection:0 serviceOptions:image presentationOptions:v10 appleInternalOptions:0];
    }
  }

LABEL_8:
}

- (id)_testingCoordinator
{
  testingCoordinator = self->_testingCoordinator;
  if (!testingCoordinator)
  {
    v4 = objc_alloc_init(SSTestingCoordinator);
    v5 = self->_testingCoordinator;
    self->_testingCoordinator = v4;

    [(SSTestingCoordinator *)self->_testingCoordinator setDelegate:self];
    testingCoordinator = self->_testingCoordinator;
  }

  return testingCoordinator;
}

- (void)testingCoordinator:(id)coordinator requestsTakingScreenshotForRunPPTRequest:(id)request
{
  requestCopy = request;
  v6 = objc_alloc_init(SSEnvironmentDescriptionAppleInternalOptions);
  [(SSEnvironmentDescriptionAppleInternalOptions *)v6 setRunPPTServiceRequest:requestCopy];
  if ([requestCopy numberOfRequiredScreenshots])
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E96A0];
    do
    {
      v9 = dispatch_time(0, (++v7 * 1000000000.0));
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __80__SSScreenCapturer_testingCoordinator_requestsTakingScreenshotForRunPPTRequest___block_invoke;
      v10[3] = &unk_1E85903B8;
      v10[4] = self;
      v11 = v6;
      dispatch_after(v9, v8, v10);
    }

    while (v7 < [requestCopy numberOfRequiredScreenshots]);
  }
}

- (SSScreenCapturerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)preheatWithPresentationOptions:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 reasonForNotBeingAbleToTakeScreenshots];
  OUTLINED_FUNCTION_0_0(&dword_1D9E04000, v2, v3, "Could not comply with request to preheat for reason: %@", v4, v5, v6, v7, 2u);
}

void __68__SSScreenCapturer__saveImageToPhotoLibrary_environmentDescription___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) description];
  OUTLINED_FUNCTION_0_0(&dword_1D9E04000, v2, v3, "Failed to register snapshot with image %@ with backend", v4, v5, v6, v7, 2u);
}

- (void)_preheatAndTakeScreenshotIfPossibleWithOptionsCollection:(void *)a1 presentationOptions:appleInternalOptions:.cold.1(void *a1)
{
  v1 = [a1 reasonForNotBeingAbleToTakeScreenshots];
  OUTLINED_FUNCTION_0_0(&dword_1D9E04000, v2, v3, "Could not comply with request to capture for reason: %@", v4, v5, v6, v7, 2u);
}

@end