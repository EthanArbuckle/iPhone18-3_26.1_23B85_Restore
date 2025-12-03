@interface PXSaveVideoFrameAction
+ (BOOL)canPerformOnAsset:(id)asset;
+ (id)_fileExtension;
+ (id)_stillFilenameForVideoAsset:(id)asset;
+ (id)_stillRenderURLForVideoAsset:(id)asset error:(id *)error;
- (PXSaveVideoFrameAction)initWithAsset:(id)asset time:(id *)time assetImageGenerator:(id)generator;
- (void)_handleAssetImageGenerator:(id)generator completionHandler:(id)handler;
- (void)_handleGeneratedImage:(CGImage *)image completionHandler:(id)handler;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXSaveVideoFrameAction

- (void)performUndo:(id)undo
{
  v10[1] = *MEMORY[0x1E69E9840];
  undoCopy = undo;
  createdAsset = [(PXSaveVideoFrameAction *)self createdAsset];
  if (createdAsset)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69786A0]);
    [v6 setExpungeSource:4];
    v7 = MEMORY[0x1E6978648];
    v10[0] = createdAsset;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    photoLibrary = [createdAsset photoLibrary];
    [v7 performBatchExpungeWithAssets:v8 deleteOptions:v6 photoLibrary:photoLibrary completionHandler:undoCopy];

    [(PXSaveVideoFrameAction *)self setCreatedAsset:0];
  }

  else
  {
    undoCopy[2](undoCopy, 1, 0);
  }
}

- (void)_handleGeneratedImage:(CGImage *)image completionHandler:(id)handler
{
  v40[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PXSaveVideoFrameAction__handleGeneratedImage_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7747648;
  v7 = handlerCopy;
  v36 = v7;
  v8 = _Block_copy(aBlock);
  asset = [(PXSaveVideoFrameAction *)self asset];
  v34 = 0;
  v10 = [PXSaveVideoFrameAction _stillRenderURLForVideoAsset:asset error:&v34];
  v11 = v34;
  if (v10)
  {
    v12 = +[PXSaveVideoFrameAction _fileType];
    identifier = [v12 identifier];
    v14 = CGImageDestinationCreateWithURL(v10, identifier, 1uLL, 0);

    if (v14)
    {
      CGImageDestinationAddImage(v14, image, 0);
      v15 = CGImageDestinationFinalize(v14);
      CFRelease(v14);
      if (v15)
      {
        v32[0] = 0;
        v32[1] = v32;
        v32[2] = 0x3032000000;
        v32[3] = __Block_byref_object_copy__205182;
        v32[4] = __Block_byref_object_dispose__205183;
        v33 = 0;
        photoLibrary = [asset photoLibrary];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __66__PXSaveVideoFrameAction__handleGeneratedImage_completionHandler___block_invoke_208;
        v28[3] = &unk_1E7746448;
        v29 = asset;
        v30 = v10;
        v31 = v32;
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __66__PXSaveVideoFrameAction__handleGeneratedImage_completionHandler___block_invoke_2_211;
        v24[3] = &unk_1E7744148;
        v26 = v8;
        v27 = v32;
        v24[4] = self;
        v17 = photoLibrary;
        v25 = v17;
        [v17 performChanges:v28 completionHandler:v24];

        _Block_object_dispose(v32, 8);
      }

      else
      {
        v21 = MEMORY[0x1E696ABC0];
        v37 = *MEMORY[0x1E696A278];
        v38 = @"Failed to write image";
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        v23 = [v21 errorWithDomain:@"PXSaveVideoFrameActionErrorDomain" code:1 userInfo:v22];
        (*(v8 + 2))(v8, 0, v23);
      }
    }

    else
    {
      v18 = MEMORY[0x1E696ABC0];
      v39 = *MEMORY[0x1E696A278];
      v40[0] = @"Failed to create image destination";
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
      v20 = [v18 errorWithDomain:@"PXSaveVideoFrameActionErrorDomain" code:2 userInfo:v19];
      (*(v8 + 2))(v8, 0, v20);
    }
  }

  else
  {
    (*(v8 + 2))(v8, 0, v11);
  }
}

void __66__PXSaveVideoFrameAction__handleGeneratedImage_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *(a1 + 32);
  v5 = v4;
  px_dispatch_on_main_queue();
}

void __66__PXSaveVideoFrameAction__handleGeneratedImage_completionHandler___block_invoke_208(uint64_t a1)
{
  v12 = [MEMORY[0x1E6978698] creationRequestForAsset];
  v2 = objc_alloc_init(MEMORY[0x1E69786E0]);
  v3 = [PXSaveVideoFrameAction _stillFilenameForVideoAsset:*(a1 + 32)];
  [v2 setOriginalFilename:v3];

  v4 = +[PXSaveVideoFrameAction _fileType];
  v5 = [v4 identifier];
  [v2 setUniformTypeIdentifier:v5];

  [v2 setShouldMoveFile:1];
  [v12 addResourceWithType:1 fileURL:*(a1 + 40) options:v2];
  v6 = [*(a1 + 32) creationDate];
  [v12 setCreationDate:v6];

  v7 = [*(a1 + 32) location];
  [v12 setLocation:v7];

  [v12 setHidden:{objc_msgSend(*(a1 + 32), "isHidden")}];
  v8 = [v12 placeholderForCreatedAsset];
  v9 = [v8 localIdentifier];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

uint64_t __66__PXSaveVideoFrameAction__handleGeneratedImage_completionHandler___block_invoke_2_211(uint64_t a1, char a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = MEMORY[0x1E6978630];
    v10[0] = *(*(*(a1 + 56) + 8) + 40);
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v5 = [*(a1 + 40) librarySpecificFetchOptions];
    v6 = [v3 fetchAssetsWithLocalIdentifiers:v4 options:v5];
    v7 = [v6 lastObject];
    [*(a1 + 32) setCreatedAsset:v7];

    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9 = *(*(a1 + 48) + 16);

    return v9();
  }
}

- (void)_handleAssetImageGenerator:(id)generator completionHandler:(id)handler
{
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__PXSaveVideoFrameAction__handleAssetImageGenerator_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7747648;
  v7 = handlerCopy;
  v19 = v7;
  generatorCopy = generator;
  v9 = _Block_copy(aBlock);
  v10 = MEMORY[0x1E6960CC0];
  v16 = *MEMORY[0x1E6960CC0];
  v17 = *(MEMORY[0x1E6960CC0] + 16);
  [generatorCopy setRequestedTimeToleranceBefore:&v16];
  v16 = *v10;
  v17 = *(v10 + 2);
  [generatorCopy setRequestedTimeToleranceAfter:&v16];
  [generatorCopy setDynamicRangePolicy:*MEMORY[0x1E6987360]];
  [generatorCopy setAppliesPreferredTrackTransform:1];
  [generatorCopy setApertureMode:*MEMORY[0x1E6987350]];
  [(PXSaveVideoFrameAction *)self time];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__PXSaveVideoFrameAction__handleAssetImageGenerator_completionHandler___block_invoke_3;
  v13[3] = &unk_1E7744120;
  v13[4] = self;
  v14 = v9;
  v15 = v7;
  v11 = v7;
  v12 = v9;
  [generatorCopy generateCGImageAsynchronouslyForTime:&v16 completionHandler:v13];
}

void __71__PXSaveVideoFrameAction__handleAssetImageGenerator_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *(a1 + 32);
  v5 = v4;
  px_dispatch_on_main_queue();
}

uint64_t __71__PXSaveVideoFrameAction__handleAssetImageGenerator_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [*(a1 + 32) _handleGeneratedImage:a2 completionHandler:*(a1 + 48)];
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

- (void)performAction:(id)action
{
  actionCopy = action;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__PXSaveVideoFrameAction_performAction___block_invoke;
  aBlock[3] = &unk_1E7747648;
  v5 = actionCopy;
  v20 = v5;
  v6 = _Block_copy(aBlock);
  assetImageGenerator = [(PXSaveVideoFrameAction *)self assetImageGenerator];

  if (assetImageGenerator)
  {
    assetImageGenerator2 = [(PXSaveVideoFrameAction *)self assetImageGenerator];
    [(PXSaveVideoFrameAction *)self _handleAssetImageGenerator:assetImageGenerator2 completionHandler:v5];
  }

  else
  {
    assetImageGenerator2 = objc_alloc_init(MEMORY[0x1E6978B18]);
    [assetImageGenerator2 setVersion:0];
    [assetImageGenerator2 setDeliveryMode:1];
    [assetImageGenerator2 setNetworkAccessAllowed:1];
    defaultManager = [MEMORY[0x1E6978860] defaultManager];
    asset = [(PXSaveVideoFrameAction *)self asset];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __40__PXSaveVideoFrameAction_performAction___block_invoke_3;
    v15 = &unk_1E77440F8;
    selfCopy = self;
    v17 = v6;
    v18 = v5;
    v11 = [defaultManager requestAVAssetForVideo:asset options:assetImageGenerator2 resultHandler:&v12];
    [(PXSaveVideoFrameAction *)self setImageRequestID:v11, v12, v13, v14, v15, selfCopy];
  }
}

void __40__PXSaveVideoFrameAction_performAction___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *(a1 + 32);
  v5 = v4;
  px_dispatch_on_main_queue();
}

void __40__PXSaveVideoFrameAction_performAction___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E6987E68] assetImageGeneratorWithAsset:a2];
    [v5 _handleAssetImageGenerator:? completionHandler:?];
  }

  else
  {
    v6 = [a4 objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
    (*(*(a1 + 40) + 16))();
  }
}

- (PXSaveVideoFrameAction)initWithAsset:(id)asset time:(id *)time assetImageGenerator:(id)generator
{
  assetCopy = asset;
  generatorCopy = generator;
  photoLibrary = [assetCopy photoLibrary];
  v15.receiver = self;
  v15.super_class = PXSaveVideoFrameAction;
  v12 = [(PXPhotosAction *)&v15 initWithPhotoLibrary:photoLibrary];

  if (v12)
  {
    objc_storeStrong(v12 + 13, asset);
    var3 = time->var3;
    *(v12 + 120) = *&time->var0;
    *(v12 + 17) = var3;
    objc_storeStrong(v12 + 14, generator);
  }

  return v12;
}

+ (id)_fileExtension
{
  v2 = +[PXSaveVideoFrameAction _fileType];
  preferredFilenameExtension = [v2 preferredFilenameExtension];

  return preferredFilenameExtension;
}

+ (id)_stillRenderURLForVideoAsset:(id)asset error:(id *)error
{
  assetCopy = asset;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  temporaryDirectory = [defaultManager2 temporaryDirectory];
  v9 = [defaultManager URLForDirectory:99 inDomain:1 appropriateForURL:temporaryDirectory create:1 error:error];

  if (v9)
  {
    v10 = [PXSaveVideoFrameAction _stillFilenameForVideoAsset:assetCopy];
    v11 = [v9 URLByAppendingPathComponent:v10 isDirectory:0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_stillFilenameForVideoAsset:(id)asset
{
  assetCopy = asset;
  originalFilename = [assetCopy originalFilename];
  v5 = originalFilename;
  if (originalFilename)
  {
    filename = originalFilename;
  }

  else
  {
    filename = [assetCopy filename];
  }

  v7 = filename;

  stringByDeletingPathExtension = [v7 stringByDeletingPathExtension];

  v9 = [stringByDeletingPathExtension stringByAppendingString:@"_still"];

  v10 = +[PXSaveVideoFrameAction _fileExtension];
  v11 = [v9 stringByAppendingPathExtension:v10];

  return v11;
}

+ (BOOL)canPerformOnAsset:(id)asset
{
  assetCopy = asset;
  if ([assetCopy isTrashed] & 1) != 0 || (objc_msgSend(assetCopy, "isRecoveredAsset") & 1) != 0 || objc_msgSend(assetCopy, "px_isSyndicatedAsset") && (!objc_msgSend(assetCopy, "px_isUnsavedSyndicatedAsset") || (objc_msgSend(assetCopy, "px_isSyndicationPhotoLibraryAsset")) || !objc_msgSend(assetCopy, "isVideo"))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [assetCopy needsSensitivityProtection] ^ 1;
  }

  return v4;
}

@end