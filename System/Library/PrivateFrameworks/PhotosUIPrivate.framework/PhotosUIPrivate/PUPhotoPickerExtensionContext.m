@interface PUPhotoPickerExtensionContext
+ (void)configureImageManagerLimit;
- (NSOperationQueue)multipleMediaConversionConcurrentQueue;
- (OS_dispatch_queue)multipleMediaIsolationQueue;
- (PUPhotoPickerExtensionContext)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5;
- (id)_createSandboxTokenForPath:(id)a3;
- (id)_createSandboxTokenForURL:(id)a3;
- (id)_host;
- (void)_createPhotoPickerInfoDictionaryFromInfoDictionary:(id)a3 appendTo:(id)a4 completion:(id)a5;
- (void)_handleLivePhotoImageUrlFetch:(id)a3 appendTo:(id)a4 completion:(id)a5;
- (void)_handleLivePhotoVideoUrlFetch:(id)a3 appendTo:(id)a4 completion:(id)a5;
- (void)_handleMutlipleMediaCompletion:(id)a3;
- (void)_photoPickerInfoDictionaryFromUIImagePickerControllerInfoDictionary:(id)a3 completion:(id)a4;
- (void)_saveImageURLForLivePhoto:(id)a3 fileURL:(id)a4 appendTo:(id)a5 completion:(id)a6;
- (void)_saveVideoURLForLivePhoto:(id)a3 fileURL:(id)a4 appendTo:(id)a5 completion:(id)a6;
- (void)cancelPhotoPicker;
- (void)didDisplayPhotoPickerPreview;
- (void)didDisplayPhotoPickerSourceType:(id)a3;
- (void)didSelectMediaWithInfoDictionary:(id)a3;
- (void)didSelectMultipleMediaItemsWithInfoDictionaries:(id)a3;
- (void)didSetOnboardingHeaderDismissed:(BOOL)a3;
- (void)dismissCurrentViewControllerFromPhotoPickerAnimated:(id)a3;
- (void)initiatePhotoPickerSelection;
- (void)invalidatePhotoPickerHostServices;
- (void)invalidatePhotoPickerRemoteServices;
- (void)performPhotoPickerPreviewOfFirstAsset;
- (void)performTraitCollectionUpdateUsingData:(id)a3 completion:(id)a4;
- (void)photoPickerIsReadyForDisplay;
- (void)requestedViewControllerOptionsWithCompletionHandler:(id)a3;
@end

@implementation PUPhotoPickerExtensionContext

- (id)_createSandboxTokenForPath:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PUPhotoPickerExtensionContext.m" lineNumber:456 description:@"path cannot be nil"];
  }

  v6 = PLGetSandboxExtensionToken();

  return v6;
}

- (id)_createSandboxTokenForURL:(id)a3
{
  v4 = [a3 path];
  v5 = [(PUPhotoPickerExtensionContext *)self _createSandboxTokenForPath:v4];

  return v5;
}

- (void)_saveVideoURLForLivePhoto:(id)a3 fileURL:(id)a4 appendTo:(id)a5 completion:(id)a6
{
  v14 = a6;
  v9 = a4;
  v10 = [a5 mutableCopy];
  v11 = [v9 path];
  [v10 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69791F0]];

  v12 = [(PUPhotoPickerExtensionContext *)self _createSandboxTokenForURL:v9];

  [v10 setObject:v12 forKeyedSubscript:*MEMORY[0x1E69791F8]];
  if (v14)
  {
    v13 = [v10 copy];
    v14[2](v14, v13);
  }
}

- (void)_handleLivePhotoVideoUrlFetch:(id)a3 appendTo:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PUPhotoPickerExtensionContext__handleLivePhotoVideoUrlFetch_appendTo_completion___block_invoke;
  aBlock[3] = &unk_1E7B7C150;
  objc_copyWeak(&v21, &location);
  v11 = v8;
  v18 = v11;
  v12 = v9;
  v19 = v12;
  v13 = v10;
  v20 = v13;
  v14 = _Block_copy(aBlock);
  v15 = [v11 videoFileLoader];
  v16 = v15;
  if (v15)
  {
    (*(v15 + 16))(v15, 0, 0, v14);
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __83__PUPhotoPickerExtensionContext__handleLivePhotoVideoUrlFetch_appendTo_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _saveVideoURLForLivePhoto:*(a1 + 32) fileURL:v3 appendTo:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)_saveImageURLForLivePhoto:(id)a3 fileURL:(id)a4 appendTo:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v16 = [a5 mutableCopy];
  v13 = [v11 path];
  [v16 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69791E0]];

  v14 = [(PUPhotoPickerExtensionContext *)self _createSandboxTokenForURL:v11];

  [v16 setObject:v14 forKeyedSubscript:*MEMORY[0x1E69791E8]];
  v15 = [v16 copy];
  [(PUPhotoPickerExtensionContext *)self _handleLivePhotoVideoUrlFetch:v12 appendTo:v15 completion:v10];
}

- (void)_handleLivePhotoImageUrlFetch:(id)a3 appendTo:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PUPhotoPickerExtensionContext__handleLivePhotoImageUrlFetch_appendTo_completion___block_invoke;
  aBlock[3] = &unk_1E7B7C150;
  objc_copyWeak(&v21, &location);
  v11 = v8;
  v18 = v11;
  v12 = v9;
  v19 = v12;
  v13 = v10;
  v20 = v13;
  v14 = _Block_copy(aBlock);
  v15 = [v11 imageFileLoader];
  v16 = v15;
  if (v15)
  {
    (*(v15 + 16))(v15, 0, 0, v14);
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __83__PUPhotoPickerExtensionContext__handleLivePhotoImageUrlFetch_appendTo_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _saveImageURLForLivePhoto:*(a1 + 32) fileURL:v3 appendTo:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)_photoPickerInfoDictionaryFromUIImagePickerControllerInfoDictionary:(id)a3 completion:(id)a4
{
  v121[5] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v89 = a4;
  v86 = v6;
  v7 = [v6 mutableCopy];
  v98 = self;
  v96 = [(PUPhotoPickerExtensionContext *)self _principalObject];
  v8 = [v96 savingOptions];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
  [v7 setObject:v9 forKeyedSubscript:*MEMORY[0x1E6979240]];

  v88 = [v96 properties];
  v10 = *MEMORY[0x1E69DE940];
  v87 = [v88 objectForKeyedSubscript:*MEMORY[0x1E69DE940]];
  [v7 setObject:v87 forKeyedSubscript:v10];
  v11 = *MEMORY[0x1E69DDE10];
  v94 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DDE10]];
  if (v94)
  {
    v111 = 0;
    v12 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v94 requiringSecureCoding:1 error:&v111];
    v13 = v111;
    if (v13)
    {
      v14 = PLUIGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[PUPhotoPickerExtensionContext _photoPickerInfoDictionaryFromUIImagePickerControllerInfoDictionary:completion:]";
        *&buf[12] = 2112;
        *&buf[14] = v13;
        _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_ERROR, "%s Unable to archive original image %@", buf, 0x16u);
      }
    }

    [v7 setObject:v12 forKeyedSubscript:v11];
  }

  v15 = *MEMORY[0x1E69DDDF0];
  v16 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DDDF0]];
  v97 = v16;
  if (v16)
  {
    v17 = [v16 path];
    [v7 setObject:v17 forKeyedSubscript:*MEMORY[0x1E6979210]];
    [v7 setObject:0 forKeyedSubscript:v15];

    v16 = v97;
  }

  v18 = v16 != 0;
  v95 = [v7 objectForKeyedSubscript:*MEMORY[0x1E6979238]];
  v19 = !v18;
  if (!v95)
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    v20 = dispatch_semaphore_create(0);
    v92 = objc_alloc_init(MEMORY[0x1E69AE870]);
    v120[0] = *MEMORY[0x1E69AE968];
    v21 = [MEMORY[0x1E69C06D8] policyWithLocation:0];
    v121[0] = v21;
    v120[1] = *MEMORY[0x1E69AE980];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UIImagePickerController downscaling image to target length: %@", v95];
    v121[1] = v22;
    v23 = *MEMORY[0x1E69AE958];
    v120[2] = *MEMORY[0x1E69AE920];
    v120[3] = v23;
    v121[2] = MEMORY[0x1E695E118];
    v121[3] = v95;
    v120[4] = *MEMORY[0x1E69AE950];
    v121[4] = &unk_1F2B7E918;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v121 forKeys:v120 count:5];

    v107 = 0;
    v108 = &v107;
    v109 = 0x2020000000;
    v110 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v117 = __Block_byref_object_copy__60974;
    v118 = __Block_byref_object_dispose__60975;
    v119 = 0;
    v25 = [MEMORY[0x1E696AC08] defaultManager];
    v26 = [v25 temporaryDirectory];
    v27 = [MEMORY[0x1E696AFB0] UUID];
    v28 = [v27 UUIDString];
    v29 = [v26 URLByAppendingPathComponent:v28 isDirectory:0];

    v30 = [MEMORY[0x1E69AE880] collectionWithMainResourceURL:v97];
    v31 = [MEMORY[0x1E69AE880] collectionWithMainResourceURL:v29];
    v103[0] = MEMORY[0x1E69E9820];
    v103[1] = 3221225472;
    v103[2] = __112__PUPhotoPickerExtensionContext__photoPickerInfoDictionaryFromUIImagePickerControllerInfoDictionary_completion___block_invoke;
    v103[3] = &unk_1E7B7C128;
    v105 = &v107;
    v106 = buf;
    v32 = v20;
    v104 = v32;
    [v92 convertImageAtSourceURLCollection:v30 toDestinationURLCollection:v31 options:v24 completionHandler:v103];
    v33 = dispatch_time(0, 10000000000);
    dispatch_semaphore_wait(v32, v33);
    v34 = [v29 path];
    v35 = PLGetSandboxExtensionToken();
    v36 = v35;
    if (v108[3] == 1 && v34 && v35)
    {
      [v7 setObject:v34 forKeyedSubscript:*MEMORY[0x1E6979210]];
      [v7 setObject:v36 forKeyedSubscript:*MEMORY[0x1E6979218]];
    }

    else
    {
      v37 = PLUIGetLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = [*(*&buf[8] + 40) localizedDescription];
        *v112 = 136315394;
        v113 = "[PUPhotoPickerExtensionContext _photoPickerInfoDictionaryFromUIImagePickerControllerInfoDictionary:completion:]";
        v114 = 2112;
        v115 = v38;
        _os_log_impl(&dword_1B36F3000, v37, OS_LOG_TYPE_ERROR, "%s Unable to scale image with error: %@", v112, 0x16u);
      }
    }

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v107, 8);
  }

  v39 = *MEMORY[0x1E69DDDE8];
  v93 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DDDE8]];
  if (v93)
  {
    v102 = 0;
    v40 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v93 requiringSecureCoding:1 error:&v102];
    v41 = v102;
    if (v41)
    {
      v42 = PLUIGetLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[PUPhotoPickerExtensionContext _photoPickerInfoDictionaryFromUIImagePickerControllerInfoDictionary:completion:]";
        *&buf[12] = 2112;
        *&buf[14] = v41;
        _os_log_impl(&dword_1B36F3000, v42, OS_LOG_TYPE_ERROR, "%s Unable to archive edited image %@", buf, 0x16u);
      }
    }

    [v7 setObject:v40 forKeyedSubscript:v39];
  }

  v43 = *MEMORY[0x1E69DE938];
  v91 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DE938]];
  if (v91)
  {
    v101 = 0;
    v44 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v91 requiringSecureCoding:1 error:&v101];
    v45 = v101;
    if (v45)
    {
      v46 = PLUIGetLog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[PUPhotoPickerExtensionContext _photoPickerInfoDictionaryFromUIImagePickerControllerInfoDictionary:completion:]";
        *&buf[12] = 2112;
        *&buf[14] = v45;
        _os_log_impl(&dword_1B36F3000, v46, OS_LOG_TYPE_ERROR, "%s Unable to archive fullscreen image %@", buf, 0x16u);
      }
    }

    [v7 setObject:v44 forKeyedSubscript:v43];
  }

  v47 = *MEMORY[0x1E69DDDE0];
  v90 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DDDE0]];
  if (v90)
  {
    v100 = 0;
    v48 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v90 requiringSecureCoding:1 error:&v100];
    v49 = v100;
    if (v49)
    {
      v50 = PLUIGetLog();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[PUPhotoPickerExtensionContext _photoPickerInfoDictionaryFromUIImagePickerControllerInfoDictionary:completion:]";
        *&buf[12] = 2112;
        *&buf[14] = v49;
        _os_log_impl(&dword_1B36F3000, v50, OS_LOG_TYPE_ERROR, "%s Unable to archive crop rect %@", buf, 0x16u);
      }
    }

    [v7 setObject:v48 forKeyedSubscript:*MEMORY[0x1E69791C0]];
    [v7 setObject:0 forKeyedSubscript:v47];
  }

  v51 = *MEMORY[0x1E69DDE20];
  v52 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DDE20]];
  v53 = v52;
  if (v52)
  {
    v54 = [v52 absoluteString];
    [v7 setObject:v54 forKeyedSubscript:*MEMORY[0x1E6979230]];
  }

  [v7 setObject:0 forKeyedSubscript:v51];
  v55 = *MEMORY[0x1E69DDE08];
  v56 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DDE08]];
  v57 = v56;
  if (v56)
  {
    v58 = [v56 path];
    [v7 setObject:v58 forKeyedSubscript:*MEMORY[0x1E6979200]];

    v59 = [(PUPhotoPickerExtensionContext *)v98 _createSandboxTokenForURL:v57];
    [v7 setObject:v59 forKeyedSubscript:*MEMORY[0x1E6979208]];
  }

  [v7 setObject:0 forKeyedSubscript:v55];
  v60 = *MEMORY[0x1E69DE948];
  v61 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DE948]];
  v62 = v61;
  if (v61)
  {
    v63 = [v61 path];
    [v7 setObject:v63 forKeyedSubscript:*MEMORY[0x1E6979220]];

    v64 = [(PUPhotoPickerExtensionContext *)v98 _createSandboxTokenForURL:v62];
    [v7 setObject:v64 forKeyedSubscript:*MEMORY[0x1E6979228]];
  }

  [v7 setObject:0 forKeyedSubscript:v60];
  v65 = *MEMORY[0x1E69DE8E0];
  v66 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DE8E0]];
  v67 = v66;
  if (v66)
  {
    v68 = [v66 path];
    [v7 setObject:v68 forKeyedSubscript:*MEMORY[0x1E69791C8]];

    v69 = [(PUPhotoPickerExtensionContext *)v98 _createSandboxTokenForURL:v67];
    [v7 setObject:v69 forKeyedSubscript:*MEMORY[0x1E69791D0]];
  }

  [v7 setObject:0 forKeyedSubscript:v65];
  v70 = [v7 objectForKeyedSubscript:@"_UIImagePickerDebugSidecarFileURLs"];
  if (v70)
  {
    v71 = [(PUPhotoPickerExtensionContext *)v98 _auxiliaryConnection];
    v72 = [v71 valueForEntitlement:@"com.apple.photos.debugsidecar"];
    v73 = v72 == 0;

    if (!v73)
    {
      v99 = 0;
      v74 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v70 requiringSecureCoding:1 error:&v99];
      v75 = v99;
      [v7 setObject:v74 forKeyedSubscript:@"_UIImagePickerDebugSidecarFileURLsData"];

      if (v75)
      {
        v76 = PLUIGetLog();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "[PUPhotoPickerExtensionContext _photoPickerInfoDictionaryFromUIImagePickerControllerInfoDictionary:completion:]";
          *&buf[12] = 2112;
          *&buf[14] = v75;
          _os_log_impl(&dword_1B36F3000, v76, OS_LOG_TYPE_ERROR, "%s Unable to archive debug sidecar files %@", buf, 0x16u);
        }
      }
    }

    [v7 removeObjectForKey:@"_UIImagePickerDebugSidecarFileURLs"];
  }

  v77 = *MEMORY[0x1E69DDDF8];
  v78 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DDDF8]];
  if (v78)
  {
    [v7 setObject:0 forKeyedSubscript:v77];
    [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69791D8]];
    v79 = [v78 imageURL];
    v80 = [v78 videoURL];
    v81 = v80;
    if (!v79 || !v80)
    {
      [(PUPhotoPickerExtensionContext *)v98 _handleLivePhotoImageUrlFetch:v78 appendTo:v7 completion:v89];

      goto LABEL_61;
    }

    v82 = [v79 path];
    [v7 setObject:v82 forKeyedSubscript:*MEMORY[0x1E69791E0]];

    v83 = [(PUPhotoPickerExtensionContext *)v98 _createSandboxTokenForURL:v79];
    [v7 setObject:v83 forKeyedSubscript:*MEMORY[0x1E69791E8]];

    v84 = [v81 path];
    [v7 setObject:v84 forKeyedSubscript:*MEMORY[0x1E69791F0]];

    v85 = [(PUPhotoPickerExtensionContext *)v98 _createSandboxTokenForURL:v81];
    [v7 setObject:v85 forKeyedSubscript:*MEMORY[0x1E69791F8]];
  }

  if (v89)
  {
    v79 = [v7 copy];
    v89[2](v89, v79);
LABEL_61:
  }
}

void __112__PUPhotoPickerExtensionContext__photoPickerInfoDictionaryFromUIImagePickerControllerInfoDictionary_completion___block_invoke(uint64_t a1, uint64_t a2, int a3, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v6 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)photoPickerIsReadyForDisplay
{
  v2 = [(PUPhotoPickerExtensionContext *)self _host];
  [v2 photoPickerIsReadyForDisplay];
}

- (void)performPhotoPickerPreviewOfFirstAsset
{
  v3.receiver = self;
  v3.super_class = PUPhotoPickerExtensionContext;
  v2 = [(PUPhotoPickerAbstractExtensionContext *)&v3 principalObject];
  if ([v2 conformsToProtocol:&unk_1F2C6A348])
  {
    [v2 performPhotoPickerPreviewOfFirstAsset];
  }
}

- (void)initiatePhotoPickerSelection
{
  v3 = PLPhotoPickerGetLog();
  v4 = os_signpost_id_generate(v3);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v3, OS_SIGNPOST_EVENT, v5, "InitiateSelection", "", buf, 2u);
    }
  }

  v7.receiver = self;
  v7.super_class = PUPhotoPickerExtensionContext;
  v6 = [(PUPhotoPickerAbstractExtensionContext *)&v7 principalObject];
  if ([v6 conformsToProtocol:&unk_1F2C6B0E8])
  {
    [v6 performPhotosSelection];
  }
}

- (void)didSelectMediaWithInfoDictionary:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__PUPhotoPickerExtensionContext_didSelectMediaWithInfoDictionary___block_invoke;
  v5[3] = &unk_1E7B7CF78;
  objc_copyWeak(&v6, &location);
  [(PUPhotoPickerExtensionContext *)self _photoPickerInfoDictionaryFromUIImagePickerControllerInfoDictionary:v4 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __66__PUPhotoPickerExtensionContext_didSelectMediaWithInfoDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained _host];
  [v4 didSelectMediaWithInfoDictionary:v3];
}

- (void)_handleMutlipleMediaCompletion:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__60974;
  v18 = __Block_byref_object_dispose__60975;
  v19 = 0;
  v5 = [(PUPhotoPickerExtensionContext *)self multipleMediaIsolationQueue];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __64__PUPhotoPickerExtensionContext__handleMutlipleMediaCompletion___block_invoke;
  v11 = &unk_1E7B800C8;
  v13 = &v14;
  v6 = v4;
  v12 = v6;
  dispatch_sync(v5, &v8);

  v7 = [(PUPhotoPickerExtensionContext *)self _host:v8];
  [v7 didSelectMultipleMediaItemsWithInfoDictionaries:v15[5]];

  _Block_object_dispose(&v14, 8);
}

uint64_t __64__PUPhotoPickerExtensionContext__handleMutlipleMediaCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)_createPhotoPickerInfoDictionaryFromInfoDictionary:(id)a3 appendTo:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __104__PUPhotoPickerExtensionContext__createPhotoPickerInfoDictionaryFromInfoDictionary_appendTo_completion___block_invoke;
  v13[3] = &unk_1E7B7C100;
  objc_copyWeak(&v16, &location);
  v11 = v9;
  v14 = v11;
  v12 = v10;
  v15 = v12;
  [(PUPhotoPickerExtensionContext *)self _photoPickerInfoDictionaryFromUIImagePickerControllerInfoDictionary:v8 completion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __104__PUPhotoPickerExtensionContext__createPhotoPickerInfoDictionaryFromInfoDictionary_appendTo_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));

  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained((a1 + 48));
    v9 = [v8 multipleMediaIsolationQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __104__PUPhotoPickerExtensionContext__createPhotoPickerInfoDictionaryFromInfoDictionary_appendTo_completion___block_invoke_2;
    v11[3] = &unk_1E7B80C38;
    v12 = *(a1 + 32);
    v13 = v3;
    dispatch_sync(v9, v11);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6, v7);
  }
}

- (void)didSelectMultipleMediaItemsWithInfoDictionaries:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLPhotoPickerGetLog();
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if ((v6 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 134349056;
    v34 = [v4 count];
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "ProcessingSelections", "%{public}ld", buf, 0xCu);
  }

  v18 = v8;

  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v10 = dispatch_group_create();
  objc_initWeak(buf, self);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v4;
  v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v11)
  {
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        dispatch_group_enter(v10);
        v15 = [(PUPhotoPickerExtensionContext *)self multipleMediaConversionConcurrentQueue];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __81__PUPhotoPickerExtensionContext_didSelectMultipleMediaItemsWithInfoDictionaries___block_invoke;
        v24[3] = &unk_1E7B7F478;
        objc_copyWeak(&v27, buf);
        v24[4] = v14;
        v25 = v9;
        v26 = v10;
        [v15 addOperationWithBlock:v24];

        objc_destroyWeak(&v27);
      }

      v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v11);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__PUPhotoPickerExtensionContext_didSelectMultipleMediaItemsWithInfoDictionaries___block_invoke_3;
  block[3] = &unk_1E7B7D1F0;
  v21 = v18;
  v23[1] = v6;
  v16 = v18;
  objc_copyWeak(v23, buf);
  v22 = v9;
  v17 = v9;
  dispatch_group_notify(v10, MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v23);
  objc_destroyWeak(buf);
}

void __81__PUPhotoPickerExtensionContext_didSelectMultipleMediaItemsWithInfoDictionaries___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __81__PUPhotoPickerExtensionContext_didSelectMultipleMediaItemsWithInfoDictionaries___block_invoke_2;
  v5[3] = &unk_1E7B80DD0;
  v6 = *(a1 + 48);
  [WeakRetained _createPhotoPickerInfoDictionaryFromInfoDictionary:v3 appendTo:v4 completion:v5];
}

void __81__PUPhotoPickerExtensionContext_didSelectMultipleMediaItemsWithInfoDictionaries___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = *(a1 + 56);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v3, OS_SIGNPOST_INTERVAL_END, v4, "ProcessingSelections", "", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleMutlipleMediaCompletion:*(a1 + 40)];
}

- (void)didDisplayPhotoPickerPreview
{
  v2 = [(PUPhotoPickerExtensionContext *)self _host];
  [v2 didDisplayPhotoPickerPreview];
}

- (void)didDisplayPhotoPickerSourceType:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotoPickerExtensionContext *)self _host];
  [v5 didDisplayPhotoPickerSourceType:v4];
}

- (void)dismissCurrentViewControllerFromPhotoPickerAnimated:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotoPickerExtensionContext *)self _host];
  [v5 dismissCurrentViewControllerFromPhotoPickerAnimated:v4];
}

- (void)didSetOnboardingHeaderDismissed:(BOOL)a3
{
  v3 = a3;
  v4 = [(PUPhotoPickerExtensionContext *)self _host];
  [v4 didSetOnboardingHeaderDismissed:v3];
}

- (void)invalidatePhotoPickerHostServices
{
  v2 = [(PUPhotoPickerExtensionContext *)self _host];
  [v2 invalidatePhotoPickerHostServices];
}

- (void)cancelPhotoPicker
{
  v2 = [(PUPhotoPickerExtensionContext *)self _host];
  [v2 cancelPhotoPicker];
}

- (void)performTraitCollectionUpdateUsingData:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PUPhotoPickerExtensionContext.m" lineNumber:114 description:@"NSData may not be nil in setTraitCollectionWithData:completion"];
  }

  v11.receiver = self;
  v11.super_class = PUPhotoPickerExtensionContext;
  v9 = [(PUPhotoPickerAbstractExtensionContext *)&v11 principalObject];
  if ([v9 conformsToProtocol:&unk_1F2C6B0E8])
  {
    [v9 performTraitCollectionUpdateUsingData:v7 completion:v8];
  }
}

- (void)invalidatePhotoPickerRemoteServices
{
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.mobileslideshow.photo-picker" code:0 userInfo:MEMORY[0x1E695E0F8]];
  [(PUPhotoPickerExtensionContext *)self cancelRequestWithError:v3];
  v4.receiver = self;
  v4.super_class = PUPhotoPickerExtensionContext;
  [(PUPhotoPickerAbstractExtensionContext *)&v4 invalidateContext];
}

- (id)_host
{
  v4.receiver = self;
  v4.super_class = PUPhotoPickerExtensionContext;
  v2 = [(PUPhotoPickerAbstractExtensionContext *)&v4 proxy];

  return v2;
}

- (NSOperationQueue)multipleMediaConversionConcurrentQueue
{
  multipleMediaConversionConcurrentQueue = self->_multipleMediaConversionConcurrentQueue;
  if (!multipleMediaConversionConcurrentQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v5 = self->_multipleMediaConversionConcurrentQueue;
    self->_multipleMediaConversionConcurrentQueue = v4;

    [(NSOperationQueue *)self->_multipleMediaConversionConcurrentQueue setMaxConcurrentOperationCount:2];
    multipleMediaConversionConcurrentQueue = self->_multipleMediaConversionConcurrentQueue;
  }

  return multipleMediaConversionConcurrentQueue;
}

- (OS_dispatch_queue)multipleMediaIsolationQueue
{
  v2 = self;
  objc_sync_enter(v2);
  multipleMediaIsolationQueue = v2->_multipleMediaIsolationQueue;
  if (!multipleMediaIsolationQueue)
  {
    v4 = dispatch_queue_create("com.apple.mobileslideshow.photo-picker.multiplemediawrite", 0);
    v5 = v2->_multipleMediaIsolationQueue;
    v2->_multipleMediaIsolationQueue = v4;

    multipleMediaIsolationQueue = v2->_multipleMediaIsolationQueue;
  }

  v6 = multipleMediaIsolationQueue;
  objc_sync_exit(v2);

  return v6;
}

- (void)requestedViewControllerOptionsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotoPickerExtensionContext *)self inputItems];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__PUPhotoPickerExtensionContext_requestedViewControllerOptionsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7B7C0D8;
  v6 = v4;
  v8 = v6;
  objc_copyWeak(&v9, &location);
  [(PUPhotoPickerAbstractExtensionContext *)self firstPayloadFromExtensionItems:v5 completion:v7];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

void __85__PUPhotoPickerExtensionContext_requestedViewControllerOptionsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      (*(v6 + 16))(v6, 0, v5);
    }
  }

  else
  {
    v7 = [v11 photoPickerProperties];
    v8 = [v7 objectForKeyedSubscript:@"_UIImagePickerControllerTemporaryDirectoryUrl"];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setTemporaryDirectoryInHost:v8];

    v10 = *(a1 + 32);
    if (v10)
    {
      (*(v10 + 16))(v10, v11, 0);
    }
  }
}

- (PUPhotoPickerExtensionContext)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5
{
  v7.receiver = self;
  v7.super_class = PUPhotoPickerExtensionContext;
  v5 = [(PUPhotoPickerExtensionContext *)&v7 initWithInputItems:a3 listenerEndpoint:a4 contextUUID:a5];
  if (v5)
  {
    [objc_opt_class() configureImageManagerLimit];
  }

  return v5;
}

+ (void)configureImageManagerLimit
{
  if (configureImageManagerLimit_onceToken != -1)
  {
    dispatch_once(&configureImageManagerLimit_onceToken, &__block_literal_global_61064);
  }
}

@end