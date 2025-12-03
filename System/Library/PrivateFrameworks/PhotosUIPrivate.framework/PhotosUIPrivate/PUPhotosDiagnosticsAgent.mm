@interface PUPhotosDiagnosticsAgent
+ (id)localDiagnosticsAgent;
- (id)__currentTimestamp;
- (id)_currentAsset;
- (id)_currentAssetDetailedDescription;
- (id)_currentAssetIdentifierDescription;
- (id)_currentAssetIdentifierUUID;
- (id)_currentAssetMetadata;
- (id)_currentAssetViewModelDescription;
- (id)_currentWindows;
- (id)_descriptionForAllUIState;
- (id)_descriptionOfUIState:(int64_t)state;
- (id)_selectedAssetIdentifiersDescription;
- (id)_selectedAssetUUIDsDescription;
- (id)_uuidsShownInGrid;
- (id)_viewControllerHierarchyDescription;
- (id)_viewModelDescription;
- (id)_windowRecursiveDescription;
- (void)_captureCurrentAssetResourcesToDirectory:(id)directory withResultHandler:(id)handler;
- (void)captureDescriptionOfCloudPhotoLibraryWithResultHandler:(id)handler;
- (void)captureDescriptionOfPhotoAnalysisWithResultHandler:(id)handler;
- (void)captureDescriptionOfStatisticsWithResultHandler:(id)handler;
- (void)captureDescriptionOfUIState:(int64_t)state resultHandler:(id)handler;
- (void)dumpState:(int64_t)state toDirectoryURL:(id)l resultHandler:(id)handler;
- (void)postNotificationWithName:(id)name userInfo:(id)info resultHandler:(id)handler;
- (void)setContentPrivacyState:(int64_t)state resultHandler:(id)handler;
- (void)setSystemAuthenticationType:(int64_t)type resultHandler:(id)handler;
- (void)startTungstenRecordingToDirectoryURL:(id)l resultHandler:(id)handler;
- (void)stopTungstenRecordingWithResultHandler:(id)handler;
- (void)timelineForAlbum:(id)album widgetSize:(id)size jsonFormat:(BOOL)format resultHandler:(id)handler;
- (void)timelineForWidgetSize:(id)size jsonFormat:(BOOL)format resultHandler:(id)handler;
@end

@implementation PUPhotosDiagnosticsAgent

- (void)captureDescriptionOfPhotoAnalysisWithResultHandler:(id)handler
{
  handlerCopy = handler;
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  photoAnalysisClient = [px_deprecated_appPhotoLibrary photoAnalysisClient];
  v6 = photoAnalysisClient;
  if (photoAnalysisClient)
  {
    v11 = 0;
    v7 = [photoAnalysisClient dumpAnalysisStatusError:&v11];
    v8 = v11;
    v9 = v8;
    if (v7)
    {
      PLPrettyPrintPList();
    }

    else
    {
      [v8 localizedDescription];
    }
    v10 = ;
    handlerCopy[2](handlerCopy, v10);
  }

  else
  {
    handlerCopy[2](handlerCopy, &stru_1F2AC6818);
  }
}

- (void)captureDescriptionOfCloudPhotoLibraryWithResultHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v4 = objc_alloc(MEMORY[0x1E6994AE8]);
    v5 = [v4 initForManagementWithLibraryIdentifier:*MEMORY[0x1E69949B0]];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __83__PUPhotosDiagnosticsAgent_captureDescriptionOfCloudPhotoLibraryWithResultHandler___block_invoke;
    v7[3] = &unk_1E7B7C770;
    v8 = v5;
    v9 = handlerCopy;
    v6 = v5;
    [v6 openWithCompletionHandler:v7];
  }
}

void __83__PUPhotosDiagnosticsAgent_captureDescriptionOfCloudPhotoLibraryWithResultHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v5 = [a2 localizedDescription];
    (*(v3 + 16))(v3, v5);
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __83__PUPhotosDiagnosticsAgent_captureDescriptionOfCloudPhotoLibraryWithResultHandler___block_invoke_2;
    v6[3] = &unk_1E7B7C748;
    v4 = *(a1 + 32);
    v8 = *(a1 + 40);
    v7 = *(a1 + 32);
    [v4 getStatusForComponents:0 completionHandler:v6];
  }
}

uint64_t __83__PUPhotosDiagnosticsAgent_captureDescriptionOfCloudPhotoLibraryWithResultHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 40);
  if (a3)
  {
    v5 = [a3 localizedDescription];
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    (*(v4 + 16))(*(a1 + 40));
  }

  v6 = *(a1 + 32);

  return [v6 closeWithCompletionHandler:&__block_literal_global_361_64035];
}

- (void)captureDescriptionOfStatisticsWithResultHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v5 = dispatch_queue_create("PUPhotosDiagnosticsAgent.output", 0);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __76__PUPhotosDiagnosticsAgent_captureDescriptionOfStatisticsWithResultHandler___block_invoke;
    aBlock[3] = &unk_1E7B7C540;
    v32 = v5;
    v6 = v4;
    v33 = v6;
    v7 = v5;
    v8 = _Block_copy(aBlock);
    v9 = dispatch_group_create();
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __76__PUPhotosDiagnosticsAgent_captureDescriptionOfStatisticsWithResultHandler___block_invoke_3;
    v28[3] = &unk_1E7B7C6F8;
    v10 = v9;
    v29 = v10;
    v11 = v8;
    v30 = v11;
    v12 = _Block_copy(v28);
    dispatch_group_enter(v10);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__PUPhotosDiagnosticsAgent_captureDescriptionOfStatisticsWithResultHandler___block_invoke_5;
    block[3] = &unk_1E7B80A40;
    v26 = v12;
    v27 = v11;
    v13 = v10;
    v25 = v13;
    v14 = v11;
    v15 = v12;
    v16 = MEMORY[0x1E69E96A0];
    dispatch_async(MEMORY[0x1E69E96A0], block);
    dispatch_group_enter(v13);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __76__PUPhotosDiagnosticsAgent_captureDescriptionOfStatisticsWithResultHandler___block_invoke_8;
    v22[3] = &unk_1E7B80DD0;
    v23 = v13;
    v17 = v13;
    dispatch_async(v7, v22);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __76__PUPhotosDiagnosticsAgent_captureDescriptionOfStatisticsWithResultHandler___block_invoke_9;
    v19[3] = &unk_1E7B80B48;
    v20 = v6;
    v21 = handlerCopy;
    v18 = v6;
    dispatch_group_notify(v17, v16, v19);
  }
}

void __76__PUPhotosDiagnosticsAgent_captureDescriptionOfStatisticsWithResultHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__PUPhotosDiagnosticsAgent_captureDescriptionOfStatisticsWithResultHandler___block_invoke_2;
  v6[3] = &unk_1E7B80C38;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __76__PUPhotosDiagnosticsAgent_captureDescriptionOfStatisticsWithResultHandler___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = a4;
  v10 = a3;
  dispatch_group_enter(v8);
  v11 = [MEMORY[0x1E69C3420] defaultController];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__PUPhotosDiagnosticsAgent_captureDescriptionOfStatisticsWithResultHandler___block_invoke_4;
  v13[3] = &unk_1E7B7C6D0;
  v16 = *(a1 + 40);
  v14 = v7;
  v15 = *(a1 + 32);
  v12 = v7;
  [v11 collectStatisticsForViewModel:v10 extendedTraitCollection:v9 resultHandler:v13];
}

void __76__PUPhotosDiagnosticsAgent_captureDescriptionOfStatisticsWithResultHandler___block_invoke_5(uint64_t a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 windows];
  v4 = [v3 firstObject];
  v5 = [v4 rootViewController];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__PUPhotosDiagnosticsAgent_captureDescriptionOfStatisticsWithResultHandler___block_invoke_6;
  v9[3] = &unk_1E7B80D18;
  v11 = &v12;
  v10 = *(a1 + 40);
  [v5 px_enumerateDescendantViewControllersWithOptions:0 usingBlock:v9];

  if ((v13[3] & 1) == 0)
  {
    (*(*(a1 + 48) + 16))();
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PUPhotosDiagnosticsAgent_captureDescriptionOfStatisticsWithResultHandler___block_invoke_7;
  aBlock[3] = &unk_1E7B7C720;
  v8 = *(a1 + 40);
  v6 = _Block_copy(aBlock);
  v6[2](v6, @"iPhone", 5, 1);
  v6[2](v6, @"iPad Portrait", 7, 1);
  v6[2](v6, @"iPad Landscape", 7, 2);
  dispatch_group_leave(*(a1 + 32));

  _Block_object_dispose(&v12, 8);
}

void __76__PUPhotosDiagnosticsAgent_captureDescriptionOfStatisticsWithResultHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 px_isVisible])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v3 = v7;
    v4 = [v3 viewProvider];
    v5 = [v4 viewModel];

    v6 = [v3 px_extendedTraitCollection];

    (*(*(a1 + 32) + 16))();
  }
}

void __76__PUPhotosDiagnosticsAgent_captureDescriptionOfStatisticsWithResultHandler___block_invoke_7(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x1E69C36A8];
  v8 = a2;
  v14 = [[v7 alloc] initWithFormFactor:a3 orientation:a4 visibleChromeElements:9];
  v9 = objc_alloc(MEMORY[0x1E69C3438]);
  v10 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v11 = [v9 initWithPhotoLibrary:v10 extendedTraitCollection:v14];

  v12 = *(a1 + 32);
  v13 = [v11 viewModel];
  (*(v12 + 16))(v12, v8, v13, v14);
}

void __76__PUPhotosDiagnosticsAgent_captureDescriptionOfStatisticsWithResultHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(a1 + 48);
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"==== Curated Library (%@) ====\n\n", *(a1 + 32)];
  (*(v6 + 16))(v6, v7);

  v8 = *(a1 + 48);
  if (v10)
  {
    [v10 summaryDescription];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to capture curated library statistics: %@", v5];
  }
  v9 = ;
  (*(v8 + 16))(v8, v9);

  (*(*(a1 + 48) + 16))();
  dispatch_group_leave(*(a1 + 40));
}

uint64_t __76__PUPhotosDiagnosticsAgent_captureDescriptionOfStatisticsWithResultHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) appendString:*(a1 + 40)];
  result = [*(a1 + 40) containsString:@"\n"];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 appendString:@"\n"];
  }

  return result;
}

- (void)_captureCurrentAssetResourcesToDirectory:(id)directory withResultHandler:(id)handler
{
  v51 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  handlerCopy = handler;
  array = [MEMORY[0x1E695DF70] array];
  group = dispatch_group_create();
  pu_debugCurrentAsset = [MEMORY[0x1E69DC668] pu_debugCurrentAsset];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = pu_debugCurrentAsset;
  }

  else
  {
    v8 = 0;
  }

  v9 = &unk_1B3D0C000;
  v32 = v8;
  if (v32 && [MEMORY[0x1E69789A8] authorizationStatusForAccessLevel:2] == 3)
  {
    v27 = pu_debugCurrentAsset;
    __currentTimestamp = [(PUPhotosDiagnosticsAgent *)self __currentTimestamp];
    [MEMORY[0x1E69786D8] assetResourcesForAsset:v32];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = v49 = 0u;
    v10 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v47;
      do
      {
        v13 = 0;
        v33 = v11;
        do
        {
          if (*v47 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v46 + 1) + 8 * v13);
          if (([v14 type] & 0xFFFFFFFFFFFFFFFBLL) != 2)
          {
            v15 = MEMORY[0x1E696AEC0];
            uuid = [v32 uuid];
            type = [v14 type];
            originalFilename = [v14 originalFilename];
            v19 = originalFilename;
            v20 = @".unknown";
            if (originalFilename)
            {
              v20 = originalFilename;
            }

            v21 = [v15 stringWithFormat:@"%@/AssetResource_%@_%@_%ld_%@", directoryCopy, __currentTimestamp, uuid, type, v20];

            dispatch_group_enter(group);
            defaultManager = [MEMORY[0x1E69786F0] defaultManager];
            v23 = [MEMORY[0x1E695DFF8] fileURLWithPath:v21 isDirectory:0];
            v38[0] = MEMORY[0x1E69E9820];
            v38[1] = 3221225472;
            v38[2] = __87__PUPhotosDiagnosticsAgent__captureCurrentAssetResourcesToDirectory_withResultHandler___block_invoke;
            v38[3] = &unk_1E7B7C6A8;
            v39 = directoryCopy;
            v40 = __currentTimestamp;
            v41 = v32;
            v42 = v14;
            v43 = array;
            v44 = v21;
            v45 = group;
            v24 = v21;
            [defaultManager writeDataForAssetResource:v14 toFile:v23 options:0 completionHandler:v38];

            v11 = v33;
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v11);
    }

    pu_debugCurrentAsset = v27;
    v9 = &unk_1B3D0C000;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = v9[211];
  block[2] = __87__PUPhotosDiagnosticsAgent__captureCurrentAssetResourcesToDirectory_withResultHandler___block_invoke_325;
  block[3] = &unk_1E7B80B48;
  v36 = array;
  v37 = handlerCopy;
  v25 = array;
  v26 = handlerCopy;
  dispatch_group_notify(group, MEMORY[0x1E69E96A0], block);
}

void __87__PUPhotosDiagnosticsAgent__captureCurrentAssetResourcesToDirectory_withResultHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__PUPhotosDiagnosticsAgent__captureCurrentAssetResourcesToDirectory_withResultHandler___block_invoke_2;
  v9[3] = &unk_1E7B7C680;
  v10 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = *(a1 + 56);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v11 = v7;
  v12 = v6;
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  v8 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __87__PUPhotosDiagnosticsAgent__captureCurrentAssetResourcesToDirectory_withResultHandler___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = [*(a1 + 56) uuid];
    v6 = [v2 stringWithFormat:@"%@/AssetResource_%@_%@_%ld_error.txt", v3, v4, v5, objc_msgSend(*(a1 + 64), "type")];

    v7 = [*(a1 + 32) description];
    v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6 isDirectory:0];
    v13 = 0;
    v9 = [v7 writeToURL:v8 atomically:1 encoding:4 error:&v13];
    v10 = v13;

    if ((v9 & 1) == 0)
    {
      v11 = PLUIGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 32);
        *buf = 138412802;
        v15 = v6;
        v16 = 2112;
        v17 = v12;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_ERROR, "Error writing debug asset resource to path:%@ error:%@ writeError:%@", buf, 0x20u);
      }
    }

    [*(a1 + 72) addObject:v6];
  }

  else
  {
    [*(a1 + 72) addObject:*(a1 + 80)];
  }

  dispatch_group_leave(*(a1 + 88));
}

- (id)__currentTimestamp
{
  date = [MEMORY[0x1E695DF00] date];
  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v3 setDateFormat:@"yyyy_MM_dd_HH_mm_ssZ"];
  v4 = [v3 stringFromDate:date];

  return v4;
}

- (id)_currentWindows
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  windows = [mEMORY[0x1E69DC668] windows];

  return windows;
}

- (id)_windowRecursiveDescription
{
  v18 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _currentWindows = [(PUPhotosDiagnosticsAgent *)self _currentWindows];
  v5 = [_currentWindows countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(_currentWindows);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        recursiveDescription = [v9 recursiveDescription];
        pu_stringByIndentingNewLines = [recursiveDescription pu_stringByIndentingNewLines];
        [string appendFormat:@"%@:\n\t%@\n", v9, pu_stringByIndentingNewLines];
      }

      v6 = [_currentWindows countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return string;
}

- (id)_viewControllerHierarchyDescription
{
  v18 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _currentWindows = [(PUPhotosDiagnosticsAgent *)self _currentWindows];
  v5 = [_currentWindows countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(_currentWindows);
        }

        rootViewController = [*(*(&v13 + 1) + 8 * i) rootViewController];
        _printHierarchy = [rootViewController _printHierarchy];

        if (_printHierarchy)
        {
          [array addObject:_printHierarchy];
        }
      }

      v6 = [_currentWindows countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [array componentsJoinedByString:@"\n"];

  return v11;
}

- (id)_viewModelDescription
{
  pu_debugCurrentViewModel = [MEMORY[0x1E69DC668] pu_debugCurrentViewModel];
  debugDetailedDescription = [pu_debugCurrentViewModel debugDetailedDescription];

  return debugDetailedDescription;
}

- (id)_currentAssetDetailedDescription
{
  _currentAsset = [(PUPhotosDiagnosticsAgent *)self _currentAsset];
  photoLibrary = [_currentAsset photoLibrary];
  v3PhotoLibrary = [photoLibrary photoLibrary];
  v5 = [_currentAsset detailedDebugDescriptionInLibrary:v3PhotoLibrary];

  return v5;
}

- (id)_currentAssetMetadata
{
  _currentAsset = [(PUPhotosDiagnosticsAgent *)self _currentAsset];
  metadataDebugDescription = [_currentAsset metadataDebugDescription];

  return metadataDebugDescription;
}

- (id)_currentAssetViewModelDescription
{
  pu_debugCurrentViewModel = [MEMORY[0x1E69DC668] pu_debugCurrentViewModel];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentAssetReference = [pu_debugCurrentViewModel currentAssetReference];
    if (currentAssetReference)
    {
      v4 = [pu_debugCurrentViewModel assetViewModelForAssetReference:currentAssetReference];
      debugDetailedDescription = [v4 debugDetailedDescription];
    }

    else
    {
      debugDetailedDescription = 0;
    }
  }

  else
  {
    debugDetailedDescription = 0;
  }

  return debugDetailedDescription;
}

- (id)_selectedAssetUUIDsDescription
{
  v18 = *MEMORY[0x1E69E9840];
  _selectedAssets = [(PUPhotosDiagnosticsAgent *)self _selectedAssets];
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = _selectedAssets;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          uuid = [v9 uuid];
          [array addObject:uuid];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [array componentsJoinedByString:{@", "}];

  return v11;
}

- (id)_selectedAssetIdentifiersDescription
{
  v18 = *MEMORY[0x1E69E9840];
  _selectedAssets = [(PUPhotosDiagnosticsAgent *)self _selectedAssets];
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = _selectedAssets;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          localIdentifier = [v9 localIdentifier];
          [array addObject:localIdentifier];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [array componentsJoinedByString:{@", "}];

  return v11;
}

- (id)_uuidsShownInGrid
{
  pu_debugCurrentPhotosViewController = [MEMORY[0x1E69DC668] pu_debugCurrentPhotosViewController];
  visibleUUIDs = [pu_debugCurrentPhotosViewController visibleUUIDs];

  v4 = [visibleUUIDs description];

  return v4;
}

- (id)_currentAssetIdentifierUUID
{
  _currentAsset = [(PUPhotosDiagnosticsAgent *)self _currentAsset];
  uuid = [_currentAsset uuid];

  return uuid;
}

- (id)_currentAssetIdentifierDescription
{
  _currentAsset = [(PUPhotosDiagnosticsAgent *)self _currentAsset];
  localIdentifier = [_currentAsset localIdentifier];

  return localIdentifier;
}

- (id)_currentAsset
{
  pu_debugCurrentAsset = [MEMORY[0x1E69DC668] pu_debugCurrentAsset];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = pu_debugCurrentAsset;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)_descriptionOfUIState:(int64_t)state
{
  switch(state)
  {
    case 1:
      mEMORY[0x1E69C3450] = [MEMORY[0x1E69C3450] sharedController];
      currentItemProviders = [mEMORY[0x1E69C3450] currentItemProviders];
      v5 = [mEMORY[0x1E69C3450] servicesWithItemProviders:currentItemProviders];
      v6 = [mEMORY[0x1E69C3450] consoleDescriptionForServices:v5];

      goto LABEL_10;
    case 2:
      _currentAssetIdentifierDescription = [(PUPhotosDiagnosticsAgent *)self _currentAssetIdentifierDescription];
      goto LABEL_23;
    case 3:
      _currentAssetIdentifierDescription = [(PUPhotosDiagnosticsAgent *)self _currentAssetIdentifierUUID];
      goto LABEL_23;
    case 4:
      _currentAssetIdentifierDescription = [(PUPhotosDiagnosticsAgent *)self _currentAssetViewModelDescription];
      goto LABEL_23;
    case 5:
      _currentAssetIdentifierDescription = [(PUPhotosDiagnosticsAgent *)self _currentAssetDetailedDescription];
      goto LABEL_23;
    case 6:
      _currentAssetIdentifierDescription = [(PUPhotosDiagnosticsAgent *)self _currentAssetMetadata];
      goto LABEL_23;
    case 7:
      _currentAssetIdentifierDescription = [(PUPhotosDiagnosticsAgent *)self _selectedAssetIdentifiersDescription];
      goto LABEL_23;
    case 8:
      _currentAssetIdentifierDescription = [(PUPhotosDiagnosticsAgent *)self _selectedAssetUUIDsDescription];
      goto LABEL_23;
    case 9:
      _currentAssetIdentifierDescription = [(PUPhotosDiagnosticsAgent *)self _viewModelDescription];
      goto LABEL_23;
    case 10:
      _currentAssetIdentifierDescription = [(PUPhotosDiagnosticsAgent *)self _viewControllerHierarchyDescription];
      goto LABEL_23;
    case 11:
      _currentAssetIdentifierDescription = [MEMORY[0x1E69DD258] _allDescriptions];
      goto LABEL_23;
    case 12:
      _currentAssetIdentifierDescription = [(PUPhotosDiagnosticsAgent *)self _windowRecursiveDescription];
      goto LABEL_23;
    case 13:
      v11 = objc_alloc_init(MEMORY[0x1E696AD60]);
      v12 = MEMORY[0x1E69DB590];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __50__PUPhotosDiagnosticsAgent__descriptionOfUIState___block_invoke;
      v14[3] = &unk_1E7B7C658;
      v15 = v11;
      mEMORY[0x1E69C3450] = v11;
      [v12 enumerateAllViewsUsingBlock:v14];
      v6 = [mEMORY[0x1E69C3450] copy];

      goto LABEL_10;
    case 14:
      _currentAssetIdentifierDescription = [MEMORY[0x1E69C3B30] allDiagnosticDescriptions];
      goto LABEL_23;
    case 15:
      v9 = MEMORY[0x1E69C38A8];
      mEMORY[0x1E69C3450] = [(PUPhotosDiagnosticsAgent *)self _currentWindows];
      v6 = [v9 diagnosticDescriptionForWindows:mEMORY[0x1E69C3450]];
LABEL_10:

      break;
    case 16:
      _currentAssetIdentifierDescription = [(PUPhotosDiagnosticsAgent *)self _uuidsShownInGrid];
LABEL_23:
      v6 = _currentAssetIdentifierDescription;
      break;
    case 17:
      v7 = +[_TtC15PhotosUIPrivate22PUSearchDebugUtilities assetRetrievalMap];
      v8 = [v7 description];

      if (v8)
      {
        v6 = v8;
      }

      else
      {
        v6 = @"No assets found.\nIf you are expecting assets, please make sure that Show Debug Badges internal search setting is enabled";
      }

      break;
    default:
      v6 = 0;
      break;
  }

  return v6;
}

void __50__PUPhotosDiagnosticsAgent__descriptionOfUIState___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) length])
  {
    [*(a1 + 32) appendString:@"\n"];
  }

  v3 = *(a1 + 32);
  v4 = [v5 diagnosticDescription];
  [v3 appendString:v4];
}

- (id)_descriptionForAllUIState
{
  string = [MEMORY[0x1E696AD60] string];
  v7 = MEMORY[0x1E69E9820];
  selfCopy = self;
  v9 = string;
  v4 = string;
  PLDiagnosticsEnumerateAllUIStatesUsingBlock();
  v5 = [v4 copy];

  return v5;
}

void __53__PUPhotosDiagnosticsAgent__descriptionForAllUIState__block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = PLDiagnosticsTitleOfUIState();
  v4 = [*(a1 + 32) _descriptionOfUIState:a2];
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 40);
    v7 = [v4 pu_stringByIndentingNewLines];
    [v6 appendFormat:@"%@:\n\t%@\n\n", v8, v7];
  }
}

- (void)setSystemAuthenticationType:(int64_t)type resultHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__PUPhotosDiagnosticsAgent_setSystemAuthenticationType_resultHandler___block_invoke;
  v7[3] = &unk_1E7B7C608;
  v8 = handlerCopy;
  typeCopy = type;
  v6 = handlerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __70__PUPhotosDiagnosticsAgent_setSystemAuthenticationType_resultHandler___block_invoke(uint64_t a1)
{
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v2 = [MEMORY[0x1E69C3B68] sharedObserver];
  v3 = *(a1 + 40);
  v4 = MEMORY[0x1E696AEC0];
  v5 = PXDebugDescriptionFromSystemAuthenticationType();
  v6 = [v4 stringWithFormat:@"System authentication type simulation set to %@", v5];
  [v9 addObject:v6];

  [v2 setForcedSystemAuthenticationType:v3];
  v7 = *(a1 + 32);
  v8 = [v9 componentsJoinedByString:@"\n"];
  (*(v7 + 16))(v7, v8);
}

- (void)postNotificationWithName:(id)name userInfo:(id)info resultHandler:(id)handler
{
  nameCopy = name;
  infoCopy = info;
  handlerCopy = handler;
  diagnosticsNotificationCenter = self->_diagnosticsNotificationCenter;
  if (!diagnosticsNotificationCenter)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69C3460]);
    v12 = self->_diagnosticsNotificationCenter;
    self->_diagnosticsNotificationCenter = v11;

    diagnosticsNotificationCenter = self->_diagnosticsNotificationCenter;
  }

  [(PXDiagnosticsNotificationCenter *)diagnosticsNotificationCenter postNotificationWithName:nameCopy userInfo:infoCopy resultHandler:handlerCopy];
}

- (void)stopTungstenRecordingWithResultHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__PUPhotosDiagnosticsAgent_stopTungstenRecordingWithResultHandler___block_invoke;
  v6[3] = &unk_1E7B80B48;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __67__PUPhotosDiagnosticsAgent_stopTungstenRecordingWithResultHandler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if (([v7 isStopped] & 1) == 0)
        {
          [v7 stop];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 8);
  *(v8 + 8) = 0;

  return (*(*(a1 + 40) + 16))();
}

- (void)startTungstenRecordingToDirectoryURL:(id)l resultHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__PUPhotosDiagnosticsAgent_startTungstenRecordingToDirectoryURL_resultHandler___block_invoke;
  block[3] = &unk_1E7B80CB0;
  selfCopy = self;
  v13 = handlerCopy;
  v11 = lCopy;
  v8 = handlerCopy;
  v9 = lCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __79__PUPhotosDiagnosticsAgent_startTungstenRecordingToDirectoryURL_resultHandler___block_invoke(void *a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v22 = [MEMORY[0x1E696AC08] defaultManager];
  v2 = a1[4];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [v22 temporaryDirectory];
  }

  v4 = v3;
  v36 = 0;
  v5 = [v22 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:&v36];
  v6 = v36;
  v21 = v6;
  if (v5)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__64130;
    v34 = __Block_byref_object_dispose__64131;
    v35 = [MEMORY[0x1E695DF70] array];
    v7 = MEMORY[0x1E69DB590];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __79__PUPhotosDiagnosticsAgent_startTungstenRecordingToDirectoryURL_resultHandler___block_invoke_2;
    v27[3] = &unk_1E7B7C5E0;
    v28 = v4;
    v29 = &v30;
    [v7 enumerateAllViewsUsingBlock:v27];
    v8 = [MEMORY[0x1E696AD60] stringWithString:@"No recordings were started. Ensure that current renderers support recording."];
    if ([v31[5] count])
    {
      v9 = MEMORY[0x1E696AD60];
      v10 = [v31[5] count];
      v11 = &stru_1F2AC6818;
      if (v10 > 1)
      {
        v11 = @"s";
      }

      v12 = [v9 stringWithFormat:@"Started recording%@:\n  ", v11];

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v13 = v31[5];
      v14 = [v13 countByEnumeratingWithState:&v23 objects:v37 count:16];
      if (v14)
      {
        v15 = *v24;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v24 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = [*(*(&v23 + 1) + 8 * i) recordingURL];
            v18 = [v17 path];
            [v12 appendFormat:@"%@\n  ", v18];
          }

          v14 = [v13 countByEnumeratingWithState:&v23 objects:v37 count:16];
        }

        while (v14);
      }
    }

    else
    {
      v12 = v8;
    }

    objc_storeStrong((a1[5] + 8), v31[5]);
    (*(a1[6] + 16))();

    _Block_object_dispose(&v30, 8);
  }

  else
  {
    v19 = a1[6];
    v20 = [v6 localizedDescription];
    (*(v19 + 16))(v19, 0, v20);
  }
}

void __79__PUPhotosDiagnosticsAgent_startTungstenRecordingToDirectoryURL_resultHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [a2 engine];
  v3 = [v4 startRecordingToDirectoryURL:*(a1 + 32)];
  if (v3)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
  }
}

- (void)setContentPrivacyState:(int64_t)state resultHandler:(id)handler
{
  handlerCopy = handler;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PUPhotosDiagnosticsAgent_setContentPrivacyState_resultHandler___block_invoke;
  block[3] = &unk_1E7B7D790;
  v9 = handlerCopy;
  stateCopy = state;
  block[4] = self;
  v7 = handlerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __65__PUPhotosDiagnosticsAgent_setContentPrivacyState_resultHandler___block_invoke(uint64_t a1)
{
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v2 = [*(a1 + 32) _currentPrivacyController];
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_8;
      }

      [v2 lockImmediately];
      v5 = @"Privacy controller set to LOCKED";
    }

    else
    {
      [v2 unlock];
      v5 = @"Privacy controller set to UNLOCKED";
    }
  }

  else
  {
    v5 = @"Couldn't find a privacy controller in current view hierarchy";
  }

  [v8 addObject:v5];
LABEL_8:
  v6 = *(a1 + 40);
  v7 = [v8 componentsJoinedByString:@"\n"];
  (*(v6 + 16))(v6, v7);
}

- (void)timelineForAlbum:(id)album widgetSize:(id)size jsonFormat:(BOOL)format resultHandler:(id)handler
{
  formatCopy = format;
  v9 = MEMORY[0x1E69C3BA0];
  handlerCopy = handler;
  v11 = [v9 timelineDiagnosticForAlbum:album widgetSize:size jsonFormat:formatCopy];
  handlerCopy[2](handlerCopy, v11);
}

- (void)timelineForWidgetSize:(id)size jsonFormat:(BOOL)format resultHandler:(id)handler
{
  formatCopy = format;
  v7 = MEMORY[0x1E69C3BA0];
  handlerCopy = handler;
  v9 = [v7 timelineDiagnosticForWidgetSize:size jsonFormat:formatCopy];
  handlerCopy[2](handlerCopy, v9);
}

- (void)dumpState:(int64_t)state toDirectoryURL:(id)l resultHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v11 = defaultManager;
  if (lCopy)
  {
    temporaryDirectory = lCopy;
  }

  else
  {
    temporaryDirectory = [defaultManager temporaryDirectory];
  }

  v13 = temporaryDirectory;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__64130;
  v28 = __Block_byref_object_dispose__64131;
  v29 = 0;
  obj = 0;
  v14 = [v11 createDirectoryAtURL:temporaryDirectory withIntermediateDirectories:1 attributes:0 error:&obj];
  objc_storeStrong(&v29, obj);
  if (v14)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__PUPhotosDiagnosticsAgent_dumpState_toDirectoryURL_resultHandler___block_invoke;
    block[3] = &unk_1E7B7C5B8;
    stateCopy = state;
    v17 = v13;
    selfCopy = self;
    v19 = v11;
    v21 = &v24;
    v20 = handlerCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    localizedDescription = v17;
  }

  else
  {
    localizedDescription = [v25[5] localizedDescription];
    (*(handlerCopy + 2))(handlerCopy, localizedDescription);
  }

  _Block_object_dispose(&v24, 8);
}

void __67__PUPhotosDiagnosticsAgent_dumpState_toDirectoryURL_resultHandler___block_invoke(uint64_t a1)
{
  v70 = *MEMORY[0x1E69E9840];
  v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v2 = *(a1 + 72);
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        v29 = *(a1 + 40);
        v30 = [*(a1 + 32) path];
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __67__PUPhotosDiagnosticsAgent_dumpState_toDirectoryURL_resultHandler___block_invoke_5;
        v47[3] = &unk_1E7B7DAA8;
        v48 = *(a1 + 56);
        [v29 _captureCurrentAssetResourcesToDirectory:v30 withResultHandler:v47];
      }

      else if (v2 == 4)
      {
        v3 = [*(a1 + 32) px_URLByAppendingPathComponentFollowedByCurrentDateAndTime:@"Memories"];
        v4 = MEMORY[0x1E69C3B30];
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __67__PUPhotosDiagnosticsAgent_dumpState_toDirectoryURL_resultHandler___block_invoke_6;
        v44[3] = &unk_1E7B7F938;
        v5 = *(a1 + 56);
        v45 = v3;
        v46 = v5;
        v6 = v3;
        [v4 dumpTapToRadarDiagnosticAttachmentsToURL:v6 completionHandler:v44];
      }

      goto LABEL_25;
    }

    v27 = [MEMORY[0x1E69DB590] dumpAllViewsToDirectory:*(a1 + 32)];
    [v43 addObjectsFromArray:v27];

    v26 = *(a1 + 56);
    v25 = v43;
LABEL_19:
    v28 = [v25 componentsJoinedByString:@"\n"];
    (*(v26 + 16))(v26, v28);

    goto LABEL_25;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      goto LABEL_25;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v7 = [MEMORY[0x1E69DC668] sharedApplication];
    v8 = [v7 windows];

    obj = v8;
    v9 = [v8 countByEnumeratingWithState:&v49 objects:v69 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v50;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v50 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v49 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Naming layer tree for %@", v13];
            [v43 addObject:v14];

            [v13 _recursivelyNameLayerTree];
          }

          v15 = MEMORY[0x1E696AEC0];
          v16 = *(a1 + 32);
          v17 = [*(a1 + 40) __currentTimestamp];
          v18 = [v15 stringWithFormat:@"PhotosLayerHierarchy_%p_%@.caar", v13, v17];
          v19 = [v16 URLByAppendingPathComponent:v18];

          v20 = [v13 layer];
          v21 = [v19 path];
          [v21 UTF8String];
          CAEncodeLayerTreeToFile();

          v22 = MEMORY[0x1E696AEC0];
          v23 = [v19 path];
          v24 = [v22 stringWithFormat:@"Dumped layer tree to %@", v23];
          [v43 addObject:v24];
        }

        v10 = [obj countByEnumeratingWithState:&v49 objects:v69 count:16];
      }

      while (v10);
    }

    v25 = v43;
    v26 = *(a1 + 56);
    goto LABEL_19;
  }

  v31 = MEMORY[0x1E696AEC0];
  v32 = *(a1 + 32);
  v33 = [*(a1 + 40) __currentTimestamp];
  v34 = [v31 stringWithFormat:@"PhotosUI_%@", v33];
  v35 = [v32 URLByAppendingPathComponent:v34];

  v36 = *(a1 + 48);
  v37 = *(*(a1 + 64) + 8);
  v68 = *(v37 + 40);
  LOBYTE(v33) = [v36 createDirectoryAtURL:v35 withIntermediateDirectories:1 attributes:0 error:&v68];
  objc_storeStrong((v37 + 40), v68);
  if (v33)
  {
    v38 = [*(a1 + 40) _descriptionForAllUIState];
    v39 = [v35 URLByAppendingPathComponent:@"PhotosUIDescription.txt"];
    [v38 writeToURL:v39 atomically:1 encoding:4 error:0];

    v61 = MEMORY[0x1E69E9820];
    v62 = 3221225472;
    v63 = __67__PUPhotosDiagnosticsAgent_dumpState_toDirectoryURL_resultHandler___block_invoke_2;
    v64 = &unk_1E7B7C568;
    v65 = *(a1 + 40);
    v66 = v35;
    v67 = v43;
    v53 = MEMORY[0x1E69E9820];
    v54 = 3221225472;
    v55 = __67__PUPhotosDiagnosticsAgent_dumpState_toDirectoryURL_resultHandler___block_invoke_4;
    v56 = &unk_1E7B7C590;
    v57 = v66;
    v58 = *(a1 + 32);
    v59 = v67;
    v60 = *(a1 + 56);
    PXIterateAsynchronously();
  }

  else
  {
    v40 = *(a1 + 56);
    v41 = [*(*(*(a1 + 64) + 8) + 40) localizedDescription];
    (*(v40 + 16))(v40, v41);
  }

LABEL_25:
}

void __67__PUPhotosDiagnosticsAgent_dumpState_toDirectoryURL_resultHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 index];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__PUPhotosDiagnosticsAgent_dumpState_toDirectoryURL_resultHandler___block_invoke_3;
  v8[3] = &unk_1E7B7C540;
  v9 = *(a1 + 48);
  v10 = v3;
  v7 = v3;
  [v5 dumpState:v4 + 1 toDirectoryURL:v6 resultHandler:v8];
}

void __67__PUPhotosDiagnosticsAgent_dumpState_toDirectoryURL_resultHandler___block_invoke_4(uint64_t a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v2 = getDEUtilsClass_softClass;
  v15 = getDEUtilsClass_softClass;
  if (!getDEUtilsClass_softClass)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __getDEUtilsClass_block_invoke;
    v11[3] = &unk_1E7B800F0;
    v11[4] = &v12;
    __getDEUtilsClass_block_invoke(v11);
    v2 = v13[3];
  }

  v3 = v2;
  _Block_object_dispose(&v12, 8);
  v4 = [v2 copyItem:*(a1 + 32) toDestinationDir:*(a1 + 40) zipped:1];
  v5 = *(a1 + 48);
  v6 = MEMORY[0x1E696AEC0];
  v7 = [v4 path];
  v8 = [v6 stringWithFormat:@"\nArchive of Photos UI state available at %@\n\nEnjoy.", v7];
  [v5 addObject:v8];

  v9 = *(a1 + 56);
  v10 = [*(a1 + 48) componentsJoinedByString:@"\n"];
  (*(v9 + 16))(v9, v10);
}

void __67__PUPhotosDiagnosticsAgent_dumpState_toDirectoryURL_resultHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696AEC0];
  v5 = [a2 componentsJoinedByString:@"\n"];
  v4 = [v3 stringWithFormat:@"Captured current asset resources:\n%@", v5];
  (*(v2 + 16))(v2, v4);
}

void __67__PUPhotosDiagnosticsAgent_dumpState_toDirectoryURL_resultHandler___block_invoke_6(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = MEMORY[0x1E696AEC0];
  if (a2)
  {
    v6 = [*(a1 + 32) path];
    v5 = [v4 stringWithFormat:@"Dumped Memory diagnostics to: %@\n", v6];
    (*(v3 + 16))(v3, v5);
  }

  else
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to dump Memory diagnostics: %@\n", a3];
    (*(v3 + 16))(v3);
  }
}

uint64_t __67__PUPhotosDiagnosticsAgent_dumpState_toDirectoryURL_resultHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addObject:a2];
  v3 = *(a1 + 40);

  return [v3 next];
}

- (void)captureDescriptionOfUIState:(int64_t)state resultHandler:(id)handler
{
  handlerCopy = handler;
  v7 = handlerCopy;
  if (handlerCopy)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__PUPhotosDiagnosticsAgent_captureDescriptionOfUIState_resultHandler___block_invoke;
    block[3] = &unk_1E7B7D790;
    stateCopy = state;
    block[4] = self;
    v9 = handlerCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __70__PUPhotosDiagnosticsAgent_captureDescriptionOfUIState_resultHandler___block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  if (v2)
  {
    [v3 _descriptionOfUIState:?];
  }

  else
  {
    [v3 _descriptionForAllUIState];
  }
  v4 = ;
  (*(a1[5] + 16))();
}

+ (id)localDiagnosticsAgent
{
  if (localDiagnosticsAgent_onceToken != -1)
  {
    dispatch_once(&localDiagnosticsAgent_onceToken, &__block_literal_global_64202);
  }

  v3 = localDiagnosticsAgent_localDiagnosticsAgent;

  return v3;
}

uint64_t __49__PUPhotosDiagnosticsAgent_localDiagnosticsAgent__block_invoke()
{
  v0 = objc_alloc_init(PUPhotosDiagnosticsAgent);
  v1 = localDiagnosticsAgent_localDiagnosticsAgent;
  localDiagnosticsAgent_localDiagnosticsAgent = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end