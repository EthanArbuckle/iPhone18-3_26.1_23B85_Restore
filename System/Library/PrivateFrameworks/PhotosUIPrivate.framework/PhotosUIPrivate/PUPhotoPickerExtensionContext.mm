@interface PUPhotoPickerExtensionContext
+ (void)configureImageManagerLimit;
- (NSOperationQueue)multipleMediaConversionConcurrentQueue;
- (OS_dispatch_queue)multipleMediaIsolationQueue;
- (PUPhotoPickerExtensionContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d;
- (id)_createSandboxTokenForPath:(id)path;
- (id)_createSandboxTokenForURL:(id)l;
- (id)_host;
- (void)_createPhotoPickerInfoDictionaryFromInfoDictionary:(id)dictionary appendTo:(id)to completion:(id)completion;
- (void)_handleLivePhotoImageUrlFetch:(id)fetch appendTo:(id)to completion:(id)completion;
- (void)_handleLivePhotoVideoUrlFetch:(id)fetch appendTo:(id)to completion:(id)completion;
- (void)_handleMutlipleMediaCompletion:(id)completion;
- (void)_photoPickerInfoDictionaryFromUIImagePickerControllerInfoDictionary:(id)dictionary completion:(id)completion;
- (void)_saveImageURLForLivePhoto:(id)photo fileURL:(id)l appendTo:(id)to completion:(id)completion;
- (void)_saveVideoURLForLivePhoto:(id)photo fileURL:(id)l appendTo:(id)to completion:(id)completion;
- (void)cancelPhotoPicker;
- (void)didDisplayPhotoPickerPreview;
- (void)didDisplayPhotoPickerSourceType:(id)type;
- (void)didSelectMediaWithInfoDictionary:(id)dictionary;
- (void)didSelectMultipleMediaItemsWithInfoDictionaries:(id)dictionaries;
- (void)didSetOnboardingHeaderDismissed:(BOOL)dismissed;
- (void)dismissCurrentViewControllerFromPhotoPickerAnimated:(id)animated;
- (void)initiatePhotoPickerSelection;
- (void)invalidatePhotoPickerHostServices;
- (void)invalidatePhotoPickerRemoteServices;
- (void)performPhotoPickerPreviewOfFirstAsset;
- (void)performTraitCollectionUpdateUsingData:(id)data completion:(id)completion;
- (void)photoPickerIsReadyForDisplay;
- (void)requestedViewControllerOptionsWithCompletionHandler:(id)handler;
@end

@implementation PUPhotoPickerExtensionContext

- (id)_createSandboxTokenForPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoPickerExtensionContext.m" lineNumber:456 description:@"path cannot be nil"];
  }

  v6 = PLGetSandboxExtensionToken();

  return v6;
}

- (id)_createSandboxTokenForURL:(id)l
{
  path = [l path];
  v5 = [(PUPhotoPickerExtensionContext *)self _createSandboxTokenForPath:path];

  return v5;
}

- (void)_saveVideoURLForLivePhoto:(id)photo fileURL:(id)l appendTo:(id)to completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  v10 = [to mutableCopy];
  path = [lCopy path];
  [v10 setObject:path forKeyedSubscript:*MEMORY[0x1E69791F0]];

  v12 = [(PUPhotoPickerExtensionContext *)self _createSandboxTokenForURL:lCopy];

  [v10 setObject:v12 forKeyedSubscript:*MEMORY[0x1E69791F8]];
  if (completionCopy)
  {
    v13 = [v10 copy];
    completionCopy[2](completionCopy, v13);
  }
}

- (void)_handleLivePhotoVideoUrlFetch:(id)fetch appendTo:(id)to completion:(id)completion
{
  fetchCopy = fetch;
  toCopy = to;
  completionCopy = completion;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PUPhotoPickerExtensionContext__handleLivePhotoVideoUrlFetch_appendTo_completion___block_invoke;
  aBlock[3] = &unk_1E7B7C150;
  objc_copyWeak(&v21, &location);
  v11 = fetchCopy;
  v18 = v11;
  v12 = toCopy;
  v19 = v12;
  v13 = completionCopy;
  v20 = v13;
  v14 = _Block_copy(aBlock);
  videoFileLoader = [v11 videoFileLoader];
  v16 = videoFileLoader;
  if (videoFileLoader)
  {
    (*(videoFileLoader + 16))(videoFileLoader, 0, 0, v14);
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

- (void)_saveImageURLForLivePhoto:(id)photo fileURL:(id)l appendTo:(id)to completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  photoCopy = photo;
  v16 = [to mutableCopy];
  path = [lCopy path];
  [v16 setObject:path forKeyedSubscript:*MEMORY[0x1E69791E0]];

  v14 = [(PUPhotoPickerExtensionContext *)self _createSandboxTokenForURL:lCopy];

  [v16 setObject:v14 forKeyedSubscript:*MEMORY[0x1E69791E8]];
  v15 = [v16 copy];
  [(PUPhotoPickerExtensionContext *)self _handleLivePhotoVideoUrlFetch:photoCopy appendTo:v15 completion:completionCopy];
}

- (void)_handleLivePhotoImageUrlFetch:(id)fetch appendTo:(id)to completion:(id)completion
{
  fetchCopy = fetch;
  toCopy = to;
  completionCopy = completion;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PUPhotoPickerExtensionContext__handleLivePhotoImageUrlFetch_appendTo_completion___block_invoke;
  aBlock[3] = &unk_1E7B7C150;
  objc_copyWeak(&v21, &location);
  v11 = fetchCopy;
  v18 = v11;
  v12 = toCopy;
  v19 = v12;
  v13 = completionCopy;
  v20 = v13;
  v14 = _Block_copy(aBlock);
  imageFileLoader = [v11 imageFileLoader];
  v16 = imageFileLoader;
  if (imageFileLoader)
  {
    (*(imageFileLoader + 16))(imageFileLoader, 0, 0, v14);
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

- (void)_photoPickerInfoDictionaryFromUIImagePickerControllerInfoDictionary:(id)dictionary completion:(id)completion
{
  v121[5] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  completionCopy = completion;
  v86 = dictionaryCopy;
  v7 = [dictionaryCopy mutableCopy];
  selfCopy = self;
  _principalObject = [(PUPhotoPickerExtensionContext *)self _principalObject];
  savingOptions = [_principalObject savingOptions];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:savingOptions];
  [v7 setObject:v9 forKeyedSubscript:*MEMORY[0x1E6979240]];

  properties = [_principalObject properties];
  v10 = *MEMORY[0x1E69DE940];
  v87 = [properties objectForKeyedSubscript:*MEMORY[0x1E69DE940]];
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
    path = [v16 path];
    [v7 setObject:path forKeyedSubscript:*MEMORY[0x1E6979210]];
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
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    temporaryDirectory = [defaultManager temporaryDirectory];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v29 = [temporaryDirectory URLByAppendingPathComponent:uUIDString isDirectory:0];

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
    path2 = [v29 path];
    v35 = PLGetSandboxExtensionToken();
    v36 = v35;
    if (v108[3] == 1 && path2 && v35)
    {
      [v7 setObject:path2 forKeyedSubscript:*MEMORY[0x1E6979210]];
      [v7 setObject:v36 forKeyedSubscript:*MEMORY[0x1E6979218]];
    }

    else
    {
      v37 = PLUIGetLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [*(*&buf[8] + 40) localizedDescription];
        *v112 = 136315394;
        v113 = "[PUPhotoPickerExtensionContext _photoPickerInfoDictionaryFromUIImagePickerControllerInfoDictionary:completion:]";
        v114 = 2112;
        v115 = localizedDescription;
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
    absoluteString = [v52 absoluteString];
    [v7 setObject:absoluteString forKeyedSubscript:*MEMORY[0x1E6979230]];
  }

  [v7 setObject:0 forKeyedSubscript:v51];
  v55 = *MEMORY[0x1E69DDE08];
  v56 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DDE08]];
  v57 = v56;
  if (v56)
  {
    path3 = [v56 path];
    [v7 setObject:path3 forKeyedSubscript:*MEMORY[0x1E6979200]];

    v59 = [(PUPhotoPickerExtensionContext *)selfCopy _createSandboxTokenForURL:v57];
    [v7 setObject:v59 forKeyedSubscript:*MEMORY[0x1E6979208]];
  }

  [v7 setObject:0 forKeyedSubscript:v55];
  v60 = *MEMORY[0x1E69DE948];
  v61 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DE948]];
  v62 = v61;
  if (v61)
  {
    path4 = [v61 path];
    [v7 setObject:path4 forKeyedSubscript:*MEMORY[0x1E6979220]];

    v64 = [(PUPhotoPickerExtensionContext *)selfCopy _createSandboxTokenForURL:v62];
    [v7 setObject:v64 forKeyedSubscript:*MEMORY[0x1E6979228]];
  }

  [v7 setObject:0 forKeyedSubscript:v60];
  v65 = *MEMORY[0x1E69DE8E0];
  v66 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DE8E0]];
  v67 = v66;
  if (v66)
  {
    path5 = [v66 path];
    [v7 setObject:path5 forKeyedSubscript:*MEMORY[0x1E69791C8]];

    v69 = [(PUPhotoPickerExtensionContext *)selfCopy _createSandboxTokenForURL:v67];
    [v7 setObject:v69 forKeyedSubscript:*MEMORY[0x1E69791D0]];
  }

  [v7 setObject:0 forKeyedSubscript:v65];
  v70 = [v7 objectForKeyedSubscript:@"_UIImagePickerDebugSidecarFileURLs"];
  if (v70)
  {
    _auxiliaryConnection = [(PUPhotoPickerExtensionContext *)selfCopy _auxiliaryConnection];
    v72 = [_auxiliaryConnection valueForEntitlement:@"com.apple.photos.debugsidecar"];
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
    imageURL = [v78 imageURL];
    videoURL = [v78 videoURL];
    v81 = videoURL;
    if (!imageURL || !videoURL)
    {
      [(PUPhotoPickerExtensionContext *)selfCopy _handleLivePhotoImageUrlFetch:v78 appendTo:v7 completion:completionCopy];

      goto LABEL_61;
    }

    path6 = [imageURL path];
    [v7 setObject:path6 forKeyedSubscript:*MEMORY[0x1E69791E0]];

    v83 = [(PUPhotoPickerExtensionContext *)selfCopy _createSandboxTokenForURL:imageURL];
    [v7 setObject:v83 forKeyedSubscript:*MEMORY[0x1E69791E8]];

    path7 = [v81 path];
    [v7 setObject:path7 forKeyedSubscript:*MEMORY[0x1E69791F0]];

    v85 = [(PUPhotoPickerExtensionContext *)selfCopy _createSandboxTokenForURL:v81];
    [v7 setObject:v85 forKeyedSubscript:*MEMORY[0x1E69791F8]];
  }

  if (completionCopy)
  {
    imageURL = [v7 copy];
    completionCopy[2](completionCopy, imageURL);
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
  _host = [(PUPhotoPickerExtensionContext *)self _host];
  [_host photoPickerIsReadyForDisplay];
}

- (void)performPhotoPickerPreviewOfFirstAsset
{
  v3.receiver = self;
  v3.super_class = PUPhotoPickerExtensionContext;
  principalObject = [(PUPhotoPickerAbstractExtensionContext *)&v3 principalObject];
  if ([principalObject conformsToProtocol:&unk_1F2C6A348])
  {
    [principalObject performPhotoPickerPreviewOfFirstAsset];
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
  principalObject = [(PUPhotoPickerAbstractExtensionContext *)&v7 principalObject];
  if ([principalObject conformsToProtocol:&unk_1F2C6B0E8])
  {
    [principalObject performPhotosSelection];
  }
}

- (void)didSelectMediaWithInfoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__PUPhotoPickerExtensionContext_didSelectMediaWithInfoDictionary___block_invoke;
  v5[3] = &unk_1E7B7CF78;
  objc_copyWeak(&v6, &location);
  [(PUPhotoPickerExtensionContext *)self _photoPickerInfoDictionaryFromUIImagePickerControllerInfoDictionary:dictionaryCopy completion:v5];
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

- (void)_handleMutlipleMediaCompletion:(id)completion
{
  completionCopy = completion;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__60974;
  v18 = __Block_byref_object_dispose__60975;
  v19 = 0;
  multipleMediaIsolationQueue = [(PUPhotoPickerExtensionContext *)self multipleMediaIsolationQueue];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __64__PUPhotoPickerExtensionContext__handleMutlipleMediaCompletion___block_invoke;
  v11 = &unk_1E7B800C8;
  v13 = &v14;
  v6 = completionCopy;
  v12 = v6;
  dispatch_sync(multipleMediaIsolationQueue, &v8);

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

- (void)_createPhotoPickerInfoDictionaryFromInfoDictionary:(id)dictionary appendTo:(id)to completion:(id)completion
{
  dictionaryCopy = dictionary;
  toCopy = to;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __104__PUPhotoPickerExtensionContext__createPhotoPickerInfoDictionaryFromInfoDictionary_appendTo_completion___block_invoke;
  v13[3] = &unk_1E7B7C100;
  objc_copyWeak(&v16, &location);
  v11 = toCopy;
  v14 = v11;
  v12 = completionCopy;
  v15 = v12;
  [(PUPhotoPickerExtensionContext *)self _photoPickerInfoDictionaryFromUIImagePickerControllerInfoDictionary:dictionaryCopy completion:v13];

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

- (void)didSelectMultipleMediaItemsWithInfoDictionaries:(id)dictionaries
{
  v35 = *MEMORY[0x1E69E9840];
  dictionariesCopy = dictionaries;
  v5 = PLPhotoPickerGetLog();
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if ((v6 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 134349056;
    v34 = [dictionariesCopy count];
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "ProcessingSelections", "%{public}ld", buf, 0xCu);
  }

  v18 = v8;

  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(dictionariesCopy, "count")}];
  v10 = dispatch_group_create();
  objc_initWeak(buf, self);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = dictionariesCopy;
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
        multipleMediaConversionConcurrentQueue = [(PUPhotoPickerExtensionContext *)self multipleMediaConversionConcurrentQueue];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __81__PUPhotoPickerExtensionContext_didSelectMultipleMediaItemsWithInfoDictionaries___block_invoke;
        v24[3] = &unk_1E7B7F478;
        objc_copyWeak(&v27, buf);
        v24[4] = v14;
        v25 = v9;
        v26 = v10;
        [multipleMediaConversionConcurrentQueue addOperationWithBlock:v24];

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
  _host = [(PUPhotoPickerExtensionContext *)self _host];
  [_host didDisplayPhotoPickerPreview];
}

- (void)didDisplayPhotoPickerSourceType:(id)type
{
  typeCopy = type;
  _host = [(PUPhotoPickerExtensionContext *)self _host];
  [_host didDisplayPhotoPickerSourceType:typeCopy];
}

- (void)dismissCurrentViewControllerFromPhotoPickerAnimated:(id)animated
{
  animatedCopy = animated;
  _host = [(PUPhotoPickerExtensionContext *)self _host];
  [_host dismissCurrentViewControllerFromPhotoPickerAnimated:animatedCopy];
}

- (void)didSetOnboardingHeaderDismissed:(BOOL)dismissed
{
  dismissedCopy = dismissed;
  _host = [(PUPhotoPickerExtensionContext *)self _host];
  [_host didSetOnboardingHeaderDismissed:dismissedCopy];
}

- (void)invalidatePhotoPickerHostServices
{
  _host = [(PUPhotoPickerExtensionContext *)self _host];
  [_host invalidatePhotoPickerHostServices];
}

- (void)cancelPhotoPicker
{
  _host = [(PUPhotoPickerExtensionContext *)self _host];
  [_host cancelPhotoPicker];
}

- (void)performTraitCollectionUpdateUsingData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  if (!dataCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoPickerExtensionContext.m" lineNumber:114 description:@"NSData may not be nil in setTraitCollectionWithData:completion"];
  }

  v11.receiver = self;
  v11.super_class = PUPhotoPickerExtensionContext;
  principalObject = [(PUPhotoPickerAbstractExtensionContext *)&v11 principalObject];
  if ([principalObject conformsToProtocol:&unk_1F2C6B0E8])
  {
    [principalObject performTraitCollectionUpdateUsingData:dataCopy completion:completionCopy];
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
  proxy = [(PUPhotoPickerAbstractExtensionContext *)&v4 proxy];

  return proxy;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  multipleMediaIsolationQueue = selfCopy->_multipleMediaIsolationQueue;
  if (!multipleMediaIsolationQueue)
  {
    v4 = dispatch_queue_create("com.apple.mobileslideshow.photo-picker.multiplemediawrite", 0);
    v5 = selfCopy->_multipleMediaIsolationQueue;
    selfCopy->_multipleMediaIsolationQueue = v4;

    multipleMediaIsolationQueue = selfCopy->_multipleMediaIsolationQueue;
  }

  v6 = multipleMediaIsolationQueue;
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)requestedViewControllerOptionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  inputItems = [(PUPhotoPickerExtensionContext *)self inputItems];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__PUPhotoPickerExtensionContext_requestedViewControllerOptionsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7B7C0D8;
  v6 = handlerCopy;
  v8 = v6;
  objc_copyWeak(&v9, &location);
  [(PUPhotoPickerAbstractExtensionContext *)self firstPayloadFromExtensionItems:inputItems completion:v7];
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

- (PUPhotoPickerExtensionContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d
{
  v7.receiver = self;
  v7.super_class = PUPhotoPickerExtensionContext;
  v5 = [(PUPhotoPickerExtensionContext *)&v7 initWithInputItems:items listenerEndpoint:endpoint contextUUID:d];
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