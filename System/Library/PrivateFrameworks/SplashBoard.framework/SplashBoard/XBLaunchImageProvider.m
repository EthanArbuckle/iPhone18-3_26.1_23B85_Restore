@interface XBLaunchImageProvider
+ (id)sharedInstance;
- (XBLaunchImageProvider)init;
- (id)createLaunchImageGeneratorWithContext:(id)a3 asyncImageData:(BOOL)a4 error:(id *)a5;
- (void)_addBadLaunchInterfaceToDenyList:(id)a3 forError:(id)a4;
- (void)_generateImageForSnapshot:(id)a3 inManifest:(id)a4 withContext:(id)a5 asyncImageData:(BOOL)a6 dataProvider:(id)a7 scheduleAsyncGeneration:(BOOL)a8 completion:(id)a9;
- (void)_resetBadLaunchInterfaceCount:(id)a3;
- (void)captureLaunchImageForManifest:(id)a3 withCompatibilityInfo:(id)a4 launchRequests:(id)a5 createCaptureInfo:(BOOL)a6 firstImageIsReady:(id)a7 withCompletionHandler:(id)a8;
- (void)dealloc;
@end

@implementation XBLaunchImageProvider

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[XBLaunchImageProvider sharedInstance];
  }

  v3 = sharedInstance_sXBLaunchImageProvider;

  return v3;
}

uint64_t __39__XBLaunchImageProvider_sharedInstance__block_invoke()
{
  sharedInstance_sXBLaunchImageProvider = objc_alloc_init(XBLaunchImageProvider);

  return MEMORY[0x2821F96F8]();
}

- (XBLaunchImageProvider)init
{
  v6.receiver = self;
  v6.super_class = XBLaunchImageProvider;
  v2 = [(XBLaunchImageProvider *)&v6 init];
  if (v2)
  {
    Serial = BSDispatchQueueCreateSerial();
    workQueue = v2->_workQueue;
    v2->_workQueue = Serial;
  }

  return v2;
}

- (void)dealloc
{
  stateCaptureAssertion = self->_stateCaptureAssertion;
  if (stateCaptureAssertion)
  {
    [(BSInvalidatable *)stateCaptureAssertion invalidate];
    v4 = self->_stateCaptureAssertion;
    self->_stateCaptureAssertion = 0;
  }

  v5.receiver = self;
  v5.super_class = XBLaunchImageProvider;
  [(XBLaunchImageProvider *)&v5 dealloc];
}

- (id)createLaunchImageGeneratorWithContext:(id)a3 asyncImageData:(BOOL)a4 error:(id *)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = [v9 launchRequest];
  v11 = [v9 applicationCompatibilityInfo];
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_22:
    [XBLaunchImageProvider createLaunchImageGeneratorWithContext:asyncImageData:error:];
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  [XBLaunchImageProvider createLaunchImageGeneratorWithContext:asyncImageData:error:];
  if (!v10)
  {
    goto LABEL_22;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_23:
  [XBLaunchImageProvider createLaunchImageGeneratorWithContext:asyncImageData:error:];
LABEL_4:
  if ([v11 hasKnownBadLaunchImage])
  {
    v12 = XBLogCapture();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [XBLaunchImageProvider createLaunchImageGeneratorWithContext:v11 asyncImageData:v12 error:?];
    }

    v13 = 0;
  }

  else
  {
    v25 = a4;
    v12 = [MEMORY[0x277CBEAA8] date];
    v14 = XBLogCapture();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v10;
      _os_log_impl(&dword_26B5EF000, v14, OS_LOG_TYPE_DEFAULT, "Synchronously generating image for request: %@", buf, 0xCu);
    }

    v15 = [[XBLaunchImageProviderClient alloc] initWithApplicationInfo:v11];
    v33 = 0;
    v16 = [(XBLaunchImageProviderClient *)v15 generateImageWithContext:v9 captureInfo:0 error:&v33];
    v17 = v33;
    v18 = v17;
    if (v17)
    {
      if (a5)
      {
        v19 = v17;
        *a5 = v18;
      }

      [(XBLaunchImageProvider *)self _addBadLaunchInterfaceToDenyList:v11 forError:v18];
      v20 = 0;
    }

    else
    {
      v20 = 0;
      if (v16 && v16 != -1)
      {
        [(XBLaunchImageProvider *)self _resetBadLaunchInterfaceCount:v11];
        v21 = -[XBLaunchImageDataProvider initWithRequest:contextID:opaque:]([XBLaunchImageDataProvider alloc], "initWithRequest:contextID:opaque:", v10, v16, [v11 launchesOpaque]);
        v22 = [(XBLaunchImageDataProvider *)v21 fetchImage];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __84__XBLaunchImageProvider_createLaunchImageGeneratorWithContext_asyncImageData_error___block_invoke;
        v26[3] = &unk_279CF9C38;
        v31 = a2;
        v26[4] = self;
        v27 = v11;
        v32 = v25;
        v28 = v9;
        v29 = v21;
        v30 = v12;
        v23 = v21;
        v20 = MEMORY[0x26D67C6A0](v26);
      }
    }

    [(BSBaseXPCClient *)v15 invalidate];
    v13 = [v20 copy];
  }

  return v13;
}

void __84__XBLaunchImageProvider_createLaunchImageGeneratorWithContext_asyncImageData_error___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    __84__XBLaunchImageProvider_createLaunchImageGeneratorWithContext_asyncImageData_error___block_invoke_cold_1(a1);
  }

  v4 = [XBSnapshotContainerIdentity identityForCompatibilityInfo:*(a1 + 40)];
  v5 = [XBApplicationSnapshotManifest alloc];
  v6 = [v3 _store];
  v7 = [(XBApplicationSnapshotManifest *)v5 initWithContainerIdentity:v4 store:v6];

  [*(a1 + 32) _generateImageForSnapshot:v3 inManifest:v7 withContext:*(a1 + 48) asyncImageData:*(a1 + 80) dataProvider:*(a1 + 56) scheduleAsyncGeneration:0 completion:0];
  [v3 _generateImageIfPossible];
  v8 = XBLogCapture();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 64) timeIntervalSinceNow];
    *buf = 134217984;
    v11 = -v9;
    _os_log_impl(&dword_26B5EF000, v8, OS_LOG_TYPE_DEFAULT, "Snapshot image generation completed after %.3fs.", buf, 0xCu);
  }
}

- (void)captureLaunchImageForManifest:(id)a3 withCompatibilityInfo:(id)a4 launchRequests:(id)a5 createCaptureInfo:(BOOL)a6 firstImageIsReady:(id)a7 withCompletionHandler:(id)a8
{
  v46 = a6;
  v97 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v39 = a7;
  v15 = a8;
  v45 = v12;
  if (!v12)
  {
    [XBLaunchImageProvider captureLaunchImageForManifest:withCompatibilityInfo:launchRequests:createCaptureInfo:firstImageIsReady:withCompletionHandler:];
  }

  if (([v13 allowsSavingLaunchImages] & 1) == 0)
  {
    [XBLaunchImageProvider captureLaunchImageForManifest:withCompatibilityInfo:launchRequests:createCaptureInfo:firstImageIsReady:withCompletionHandler:];
  }

  if (![v14 count])
  {
    [XBLaunchImageProvider captureLaunchImageForManifest:withCompatibilityInfo:launchRequests:createCaptureInfo:firstImageIsReady:withCompletionHandler:];
  }

  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = __Block_byref_object_copy__3;
  v90 = __Block_byref_object_dispose__3;
  v91 = 0;
  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = __Block_byref_object_copy__3;
  v84 = __Block_byref_object_dispose__3;
  v85 = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__3;
  v78 = __Block_byref_object_dispose__3;
  v79 = 0;
  if (v15 && v46)
  {
    v16 = [objc_alloc(MEMORY[0x277CBEB40]) initWithArray:v14];
    v17 = v87[5];
    v87[5] = v16;

    v18 = [v87[5] count];
    v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v18];
    v20 = v81[5];
    v81[5] = v19;

    v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v18];
    v22 = v75[5];
    v75[5] = v21;
  }

  v23 = [[XBLaunchImageProviderClient alloc] initWithApplicationInfo:v13];
  if (v39)
  {
    v24 = [MEMORY[0x277CF0BA0] sentinelWithQueue:0 signalCount:1 completion:?];
  }

  else
  {
    v24 = 0;
  }

  v25 = MEMORY[0x277CF0BA0];
  v26 = [v14 count];
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __150__XBLaunchImageProvider_captureLaunchImageForManifest_withCompatibilityInfo_launchRequests_createCaptureInfo_firstImageIsReady_withCompletionHandler___block_invoke;
  v66[3] = &unk_279CF9C60;
  v44 = v24;
  v67 = v44;
  v73 = v46;
  v38 = v15;
  v69 = v38;
  v70 = &v86;
  v71 = &v80;
  v72 = &v74;
  v43 = v23;
  v68 = v43;
  v27 = [v25 sentinelWithQueue:0 signalCount:v26 + 1 completion:v66];
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x2020000000;
  v65 = 0;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v14;
  v28 = [obj countByEnumeratingWithState:&v60 objects:v96 count:16];
  v42 = v27;
  if (v28)
  {
    v29 = *v61;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v61 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v60 + 1) + 8 * i);
        v32 = XBLogCapture();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [MEMORY[0x277CF0C00] descriptionForObject:{v31, v38}];
          v34 = [v13 bundleIdentifier];
          *buf = 138412546;
          v93 = v33;
          v94 = 2112;
          v95 = v34;
          _os_log_impl(&dword_26B5EF000, v32, OS_LOG_TYPE_DEFAULT, "Processing launch request %@ for app: %@.", buf, 0x16u);
        }

        v35 = [[XBApplicationSnapshotGenerationContext alloc] initWithApplicationCompatibilityInfo:v13 launchRequest:v31 timeout:0.0];
        workQueue = self->_workQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __150__XBLaunchImageProvider_captureLaunchImageForManifest_withCompatibilityInfo_launchRequests_createCaptureInfo_firstImageIsReady_withCompletionHandler___block_invoke_44;
        block[3] = &unk_279CF9CB0;
        block[4] = v31;
        v55 = v64;
        v48 = v13;
        v49 = v43;
        v50 = v35;
        v59 = v46;
        v51 = v45;
        v52 = self;
        v53 = v44;
        v56 = &v86;
        v57 = &v80;
        v58 = &v74;
        v54 = v42;
        v37 = v35;
        dispatch_async(workQueue, block);
      }

      v28 = [obj countByEnumeratingWithState:&v60 objects:v96 count:16];
    }

    while (v28);
  }

  [v42 signal];
  _Block_object_dispose(v64, 8);

  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v80, 8);

  _Block_object_dispose(&v86, 8);
}

uint64_t __150__XBLaunchImageProvider_captureLaunchImageForManifest_withCompatibilityInfo_launchRequests_createCaptureInfo_firstImageIsReady_withCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) signal];
  v2 = *(a1 + 48);
  if (v2)
  {
    if (*(a1 + 80) == 1)
    {
      v3 = [[XBApplicationCaptureInformation alloc] initWithLaunchRequests:*(*(*(a1 + 56) + 8) + 40) captureInfos:*(*(*(a1 + 64) + 8) + 40) launchImagePaths:*(*(*(a1 + 72) + 8) + 40)];
      v2 = *(a1 + 48);
    }

    else
    {
      v3 = 0;
    }

    (*(v2 + 16))(v2, v3);
  }

  v4 = *(a1 + 40);

  return [v4 invalidate];
}

void __150__XBLaunchImageProvider_captureLaunchImageForManifest_withCompatibilityInfo_launchRequests_createCaptureInfo_firstImageIsReady_withCompletionHandler___block_invoke_44(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__3;
  v49 = __Block_byref_object_dispose__3;
  v50 = 0;
  v2 = XBLogCapture();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v52 = v3;
    _os_log_impl(&dword_26B5EF000, v2, OS_LOG_TYPE_DEFAULT, "Asynchronously generating image data for request: %@", buf, 0xCu);
  }

  if (*(*(*(a1 + 96) + 8) + 24) == 1)
  {
    v4 = XBLogCapture();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x277CF0C00] descriptionForObject:*(a1 + 32)];
      [*(a1 + 40) bundleIdentifier];
      objc_claimAutoreleasedReturnValue();
      __150__XBLaunchImageProvider_captureLaunchImageForManifest_withCompatibilityInfo_launchRequests_createCaptureInfo_firstImageIsReady_withCompletionHandler___block_invoke_44_cold_3();
    }

    v6 = 0;
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 128);
    if (*(a1 + 128))
    {
      v10 = &v44;
    }

    else
    {
      v10 = 0;
    }

    if (v9 == 1)
    {
      v44 = 0;
    }

    v43 = 0;
    v11 = [v7 generateImageWithContext:v8 captureInfo:v10 error:&v43];
    if (v9)
    {
      v6 = v44;
    }

    else
    {
      v6 = 0;
    }

    v4 = v43;
    if (v4)
    {
      v12 = XBLogCapture();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [MEMORY[0x277CF0C00] descriptionForObject:*(a1 + 32)];
        __150__XBLaunchImageProvider_captureLaunchImageForManifest_withCompatibilityInfo_launchRequests_createCaptureInfo_firstImageIsReady_withCompletionHandler___block_invoke_44_cold_1(v13, buf, v12);
      }

      *(*(*(a1 + 96) + 8) + 24) = 1;
      [*(a1 + 72) _addBadLaunchInterfaceToDenyList:*(a1 + 40) forError:v4];
    }

    else
    {
      if (!v11 || v11 == -1)
      {
        v14 = XBLogCapture();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v29 = [MEMORY[0x277CF0C00] descriptionForObject:*(a1 + 32)];
          __150__XBLaunchImageProvider_captureLaunchImageForManifest_withCompatibilityInfo_launchRequests_createCaptureInfo_firstImageIsReady_withCompletionHandler___block_invoke_44_cold_2(v29, buf, v14);
        }
      }

      else
      {
        v14 = [*(a1 + 56) launchRequest];
        v15 = -[XBLaunchImageDataProvider initWithRequest:contextID:opaque:]([XBLaunchImageDataProvider alloc], "initWithRequest:contextID:opaque:", v14, v11, [*(a1 + 40) launchesOpaque]);
        v16 = dispatch_semaphore_create(0);
        v17 = *(a1 + 64);
        v18 = [v14 groupID];
        v19 = [v17 createSnapshotWithGroupID:v18];
        v20 = v46[5];
        v46[5] = v19;

        v21 = *(a1 + 64);
        v22 = v46[5];
        v23 = *(a1 + 56);
        v35 = *(a1 + 72);
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __150__XBLaunchImageProvider_captureLaunchImageForManifest_withCompatibilityInfo_launchRequests_createCaptureInfo_firstImageIsReady_withCompletionHandler___block_invoke_45;
        v36[3] = &unk_279CF9C88;
        v42 = &v45;
        v24 = *(a1 + 80);
        v25 = *(a1 + 72);
        v37 = v24;
        v38 = v25;
        v26 = *(a1 + 40);
        v27 = *(a1 + 32);
        v39 = v26;
        v40 = v27;
        v28 = v16;
        v41 = v28;
        [v35 _generateImageForSnapshot:v22 inManifest:v21 withContext:v23 asyncImageData:0 dataProvider:v15 scheduleAsyncGeneration:1 completion:v36];
        dispatch_semaphore_wait(v28, 0xFFFFFFFFFFFFFFFFLL);
      }
    }
  }

  if (*(a1 + 128) == 1)
  {
    v30 = [*(*(*(a1 + 104) + 8) + 40) indexOfObject:*(a1 + 32)];
    if (v30 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v31 = v6;
      if (!v6)
      {
        v31 = objc_alloc_init(XBLaunchCaptureInformation);
      }

      [*(*(*(a1 + 112) + 8) + 40) setObject:v31 atIndexedSubscript:v30];
      if (!v6)
      {
      }

      v32 = [v46[5] path];
      v33 = v32;
      if (v32)
      {
        v34 = v32;
      }

      else
      {
        v34 = &stru_287C1E488;
      }

      [*(*(*(a1 + 120) + 8) + 40) setObject:v34 atIndexedSubscript:v30];
    }
  }

  [*(a1 + 88) signal];
  _Block_object_dispose(&v45, 8);
}

intptr_t __150__XBLaunchImageProvider_captureLaunchImageForManifest_withCompatibilityInfo_launchRequests_createCaptureInfo_firstImageIsReady_withCompletionHandler___block_invoke_45(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  [*(*(*(a1 + 72) + 8) + 40) _cacheImage:0];
  [*(a1 + 32) signal];
  if (a2)
  {
    [*(a1 + 40) _resetBadLaunchInterfaceCount:*(a1 + 48)];
    v4 = XBLogCapture();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 56);
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_26B5EF000, v4, OS_LOG_TYPE_DEFAULT, "Image generation complete for: %{public}@", &v8, 0xCu);
    }
  }

  else
  {
    v4 = XBLogCapture();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __150__XBLaunchImageProvider_captureLaunchImageForManifest_withCompatibilityInfo_launchRequests_createCaptureInfo_firstImageIsReady_withCompletionHandler___block_invoke_45_cold_1(a1, v4, v6);
    }
  }

  return dispatch_semaphore_signal(*(a1 + 64));
}

- (void)_generateImageForSnapshot:(id)a3 inManifest:(id)a4 withContext:(id)a5 asyncImageData:(BOOL)a6 dataProvider:(id)a7 scheduleAsyncGeneration:(BOOL)a8 completion:(id)a9
{
  LODWORD(v26) = a6;
  HIDWORD(v26) = a8;
  v29 = a4;
  v12 = a9;
  v13 = a7;
  v14 = a5;
  v15 = a3;
  v16 = [v14 launchRequest];
  v17 = [v14 applicationCompatibilityInfo];

  v18 = [v16 groupID];
  if (v29)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [XBLaunchImageProvider _generateImageForSnapshot:inManifest:withContext:asyncImageData:dataProvider:scheduleAsyncGeneration:completion:];
    if (v14)
    {
LABEL_3:
      if (v17)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  [XBLaunchImageProvider _generateImageForSnapshot:inManifest:withContext:asyncImageData:dataProvider:scheduleAsyncGeneration:completion:];
  if (v17)
  {
LABEL_4:
    if (v13)
    {
      goto LABEL_5;
    }

LABEL_19:
    [XBLaunchImageProvider _generateImageForSnapshot:inManifest:withContext:asyncImageData:dataProvider:scheduleAsyncGeneration:completion:];
    if (v18)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_18:
  [XBLaunchImageProvider _generateImageForSnapshot:inManifest:withContext:asyncImageData:dataProvider:scheduleAsyncGeneration:completion:];
  if (!v13)
  {
    goto LABEL_19;
  }

LABEL_5:
  if (v18)
  {
    goto LABEL_6;
  }

LABEL_20:
  [XBLaunchImageProvider _generateImageForSnapshot:inManifest:withContext:asyncImageData:dataProvider:scheduleAsyncGeneration:completion:];
LABEL_6:
  v19 = [XBApplicationSnapshotManifestImpl _snapshotPredicateForRequest:v16, v26];
  v20 = [v29 snapshotsForGroupID:v18 matchingPredicate:v19];

  v21 = [v20 indexesOfObjectsPassingTest:&__block_literal_global_60];
  v22 = [v20 objectsAtIndexes:v21];

  if ([v22 count])
  {
    [v29 deleteSnapshots:v22];
  }

  [XBApplicationSnapshotManifestImpl _configureSnapshot:v15 withCompatibilityInfo:v17 forLaunchRequest:v16];
  v23 = [v17 allowsSavingLaunchImages];
  v24 = v23;
  if (v27)
  {
    v24 = v23 | 2;
  }

  if (v28)
  {
    v25 = v24;
  }

  else
  {
    v25 = v24 | 4;
  }

  [v29 generateImageForSnapshot:v15 dataProvider:v13 options:v25 imageGeneratedHandler:v12 imageDataSavedHandler:0];
}

BOOL __137__XBLaunchImageProvider__generateImageForSnapshot_inManifest_withContext_asyncImageData_dataProvider_scheduleAsyncGeneration_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 generationContext];
  v3 = v2 == 0;

  return v3;
}

- (void)_addBadLaunchInterfaceToDenyList:(id)a3 forError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 code];
  v9 = [v6 bundleIdentifier];
  v10 = XBLogCapture();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [(XBLaunchImageProvider *)v7 _addBadLaunchInterfaceToDenyList:v9 forError:v10];
  }

  if (v8 != 10 && ([v6 hasKnownBadLaunchImage] & 1) == 0)
  {
    if ((v8 & 0xFFFFFFFFFFFFFFFELL) != 8)
    {
      goto LABEL_12;
    }

    v11 = [v6 badLaunchImageCandidateCount];
    if ((v11 & 0x8000000000000000) != 0)
    {
      [XBLaunchImageProvider _addBadLaunchInterfaceToDenyList:a2 forError:?];
    }

    if (v11 >= 4)
    {
      [XBLaunchImageProvider _addBadLaunchInterfaceToDenyList:a2 forError:?];
    }

    v12 = v11 + 1;
    v13 = v11 + 1 >= 3 ? 3 : v11 + 1;
    [v6 setBadLaunchImageCandidateCount:v13];
    if (v12 == 3)
    {
LABEL_12:
      [v6 setHasKnownBadLaunchImage:1];
    }

    if ([v6 hasKnownBadLaunchImage])
    {
      v14 = XBLogCapture();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(XBLaunchImageProvider *)v9 _addBadLaunchInterfaceToDenyList:v14 forError:v15];
      }

      v16 = +[XBApplicationDataStore sharedInstance];
      [v16 _persistCompatibilityInfo:v6 forBundleIdentifier:v9];
    }
  }
}

- (void)_resetBadLaunchInterfaceCount:(id)a3
{
  v5 = a3;
  if ([v5 badLaunchImageCandidateCount])
  {
    [v5 setBadLaunchImageCandidateCount:0];
    v3 = [v5 bundleIdentifier];
    v4 = +[XBApplicationDataStore sharedInstance];
    [v4 _persistCompatibilityInfo:v5 forBundleIdentifier:v3];
  }
}

- (void)createLaunchImageGeneratorWithContext:asyncImageData:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"context" object:? file:? lineNumber:? description:?];
}

- (void)createLaunchImageGeneratorWithContext:asyncImageData:error:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"launchRequest" object:? file:? lineNumber:? description:?];
}

- (void)createLaunchImageGeneratorWithContext:asyncImageData:error:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"appInfo" object:? file:? lineNumber:? description:?];
}

- (void)createLaunchImageGeneratorWithContext:(void *)a1 asyncImageData:(NSObject *)a2 error:.cold.4(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 bundleIdentifier];
  v5 = 138543362;
  v6 = v3;
  OUTLINED_FUNCTION_2_1(&dword_26B5EF000, a2, v4, "Snapshot generation request for bundleID: %{public}@ rejected due to the app being denylisted.", &v5);
}

void __84__XBLaunchImageProvider_createLaunchImageGeneratorWithContext_asyncImageData_error___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"XBLaunchImageProvider.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"snapshot"}];
}

- (void)captureLaunchImageForManifest:withCompatibilityInfo:launchRequests:createCaptureInfo:firstImageIsReady:withCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"manifest" object:? file:? lineNumber:? description:?];
}

- (void)captureLaunchImageForManifest:withCompatibilityInfo:launchRequests:createCaptureInfo:firstImageIsReady:withCompletionHandler:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"[appInfo allowsSavingLaunchImages]" object:? file:? lineNumber:? description:?];
}

- (void)captureLaunchImageForManifest:withCompatibilityInfo:launchRequests:createCaptureInfo:firstImageIsReady:withCompletionHandler:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"[launchRequests count] > 0" object:? file:? lineNumber:? description:?];
}

void __150__XBLaunchImageProvider_captureLaunchImageForManifest_withCompatibilityInfo_launchRequests_createCaptureInfo_firstImageIsReady_withCompletionHandler___block_invoke_44_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_2_1(&dword_26B5EF000, a3, a3, "Error generating image for launch request %@ .", a2);
}

void __150__XBLaunchImageProvider_captureLaunchImageForManifest_withCompatibilityInfo_launchRequests_createCaptureInfo_firstImageIsReady_withCompletionHandler___block_invoke_44_cold_2(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_2_1(&dword_26B5EF000, a3, a3, "Unable to generate context for %@, so skipping it and moving on.", a2);
}

void __150__XBLaunchImageProvider_captureLaunchImageForManifest_withCompatibilityInfo_launchRequests_createCaptureInfo_firstImageIsReady_withCompletionHandler___block_invoke_44_cold_3()
{
  OUTLINED_FUNCTION_0();
  *v2 = 138412546;
  *(v2 + 4) = v3;
  *(v2 + 12) = 2112;
  *(v2 + 14) = v4;
  _os_log_error_impl(&dword_26B5EF000, v6, OS_LOG_TYPE_ERROR, "Skipping launch request %@ due to denied app: %@.", v5, 0x16u);
}

void __150__XBLaunchImageProvider_captureLaunchImageForManifest_withCompatibilityInfo_launchRequests_createCaptureInfo_firstImageIsReady_withCompletionHandler___block_invoke_45_cold_1(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 56);
  v4 = 138543362;
  v5 = v3;
  OUTLINED_FUNCTION_2_1(&dword_26B5EF000, a2, a3, "Image generation failed for: %{public}@", &v4);
}

- (void)_generateImageForSnapshot:inManifest:withContext:asyncImageData:dataProvider:scheduleAsyncGeneration:completion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"manifest" object:? file:? lineNumber:? description:?];
}

- (void)_generateImageForSnapshot:inManifest:withContext:asyncImageData:dataProvider:scheduleAsyncGeneration:completion:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"context" object:? file:? lineNumber:? description:?];
}

- (void)_generateImageForSnapshot:inManifest:withContext:asyncImageData:dataProvider:scheduleAsyncGeneration:completion:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"appInfo" object:? file:? lineNumber:? description:?];
}

- (void)_generateImageForSnapshot:inManifest:withContext:asyncImageData:dataProvider:scheduleAsyncGeneration:completion:.cold.4()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"dataProvider" object:? file:? lineNumber:? description:?];
}

- (void)_generateImageForSnapshot:inManifest:withContext:asyncImageData:dataProvider:scheduleAsyncGeneration:completion:.cold.5()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"snapshotGroupID" object:? file:? lineNumber:? description:?];
}

- (void)_addBadLaunchInterfaceToDenyList:(NSObject *)a3 forError:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 134218242;
  v6 = [a1 code];
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_26B5EF000, a3, OS_LOG_TYPE_ERROR, "Snapshot generation resulted in an error with code: %ld for app bundleID: %@", &v5, 0x16u);
}

- (void)_addBadLaunchInterfaceToDenyList:(uint64_t)a3 forError:.cold.2(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  OUTLINED_FUNCTION_2_1(&dword_26B5EF000, a2, a3, "Noting that the application %@ has a bad launch image until it is updated.", &v3);
}

- (void)_addBadLaunchInterfaceToDenyList:(const char *)a1 forError:.cold.3(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"strikeCount <= NumberOfStrikesBeforeMarkingBad + 1"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"XBLaunchImageProvider.m";
    v9 = 1024;
    v10 = 313;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_26B5EF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_addBadLaunchInterfaceToDenyList:(const char *)a1 forError:.cold.4(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"strikeCount >= 1"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"XBLaunchImageProvider.m";
    v9 = 1024;
    v10 = 312;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_26B5EF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end