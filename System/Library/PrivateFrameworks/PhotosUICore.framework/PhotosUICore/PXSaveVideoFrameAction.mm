@interface PXSaveVideoFrameAction
+ (BOOL)canPerformOnAsset:(id)a3;
+ (id)_fileExtension;
+ (id)_stillFilenameForVideoAsset:(id)a3;
+ (id)_stillRenderURLForVideoAsset:(id)a3 error:(id *)a4;
- (PXSaveVideoFrameAction)initWithAsset:(id)a3 time:(id *)a4 assetImageGenerator:(id)a5;
- (void)_handleAssetImageGenerator:(id)a3 completionHandler:(id)a4;
- (void)_handleGeneratedImage:(CGImage *)a3 completionHandler:(id)a4;
- (void)performAction:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXSaveVideoFrameAction

- (void)performUndo:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXSaveVideoFrameAction *)self createdAsset];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69786A0]);
    [v6 setExpungeSource:4];
    v7 = MEMORY[0x1E6978648];
    v10[0] = v5;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v9 = [v5 photoLibrary];
    [v7 performBatchExpungeWithAssets:v8 deleteOptions:v6 photoLibrary:v9 completionHandler:v4];

    [(PXSaveVideoFrameAction *)self setCreatedAsset:0];
  }

  else
  {
    v4[2](v4, 1, 0);
  }
}

- (void)_handleGeneratedImage:(CGImage *)a3 completionHandler:(id)a4
{
  v40[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PXSaveVideoFrameAction__handleGeneratedImage_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7747648;
  v7 = v6;
  v36 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [(PXSaveVideoFrameAction *)self asset];
  v34 = 0;
  v10 = [PXSaveVideoFrameAction _stillRenderURLForVideoAsset:v9 error:&v34];
  v11 = v34;
  if (v10)
  {
    v12 = +[PXSaveVideoFrameAction _fileType];
    v13 = [v12 identifier];
    v14 = CGImageDestinationCreateWithURL(v10, v13, 1uLL, 0);

    if (v14)
    {
      CGImageDestinationAddImage(v14, a3, 0);
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
        v16 = [v9 photoLibrary];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __66__PXSaveVideoFrameAction__handleGeneratedImage_completionHandler___block_invoke_208;
        v28[3] = &unk_1E7746448;
        v29 = v9;
        v30 = v10;
        v31 = v32;
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __66__PXSaveVideoFrameAction__handleGeneratedImage_completionHandler___block_invoke_2_211;
        v24[3] = &unk_1E7744148;
        v26 = v8;
        v27 = v32;
        v24[4] = self;
        v17 = v16;
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

- (void)_handleAssetImageGenerator:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__PXSaveVideoFrameAction__handleAssetImageGenerator_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7747648;
  v7 = v6;
  v19 = v7;
  v8 = a3;
  v9 = _Block_copy(aBlock);
  v10 = MEMORY[0x1E6960CC0];
  v16 = *MEMORY[0x1E6960CC0];
  v17 = *(MEMORY[0x1E6960CC0] + 16);
  [v8 setRequestedTimeToleranceBefore:&v16];
  v16 = *v10;
  v17 = *(v10 + 2);
  [v8 setRequestedTimeToleranceAfter:&v16];
  [v8 setDynamicRangePolicy:*MEMORY[0x1E6987360]];
  [v8 setAppliesPreferredTrackTransform:1];
  [v8 setApertureMode:*MEMORY[0x1E6987350]];
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
  [v8 generateCGImageAsynchronouslyForTime:&v16 completionHandler:v13];
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

- (void)performAction:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__PXSaveVideoFrameAction_performAction___block_invoke;
  aBlock[3] = &unk_1E7747648;
  v5 = v4;
  v20 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [(PXSaveVideoFrameAction *)self assetImageGenerator];

  if (v7)
  {
    v8 = [(PXSaveVideoFrameAction *)self assetImageGenerator];
    [(PXSaveVideoFrameAction *)self _handleAssetImageGenerator:v8 completionHandler:v5];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E6978B18]);
    [v8 setVersion:0];
    [v8 setDeliveryMode:1];
    [v8 setNetworkAccessAllowed:1];
    v9 = [MEMORY[0x1E6978860] defaultManager];
    v10 = [(PXSaveVideoFrameAction *)self asset];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __40__PXSaveVideoFrameAction_performAction___block_invoke_3;
    v15 = &unk_1E77440F8;
    v16 = self;
    v17 = v6;
    v18 = v5;
    v11 = [v9 requestAVAssetForVideo:v10 options:v8 resultHandler:&v12];
    [(PXSaveVideoFrameAction *)self setImageRequestID:v11, v12, v13, v14, v15, v16];
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

- (PXSaveVideoFrameAction)initWithAsset:(id)a3 time:(id *)a4 assetImageGenerator:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = [v9 photoLibrary];
  v15.receiver = self;
  v15.super_class = PXSaveVideoFrameAction;
  v12 = [(PXPhotosAction *)&v15 initWithPhotoLibrary:v11];

  if (v12)
  {
    objc_storeStrong(v12 + 13, a3);
    var3 = a4->var3;
    *(v12 + 120) = *&a4->var0;
    *(v12 + 17) = var3;
    objc_storeStrong(v12 + 14, a5);
  }

  return v12;
}

+ (id)_fileExtension
{
  v2 = +[PXSaveVideoFrameAction _fileType];
  v3 = [v2 preferredFilenameExtension];

  return v3;
}

+ (id)_stillRenderURLForVideoAsset:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v7 temporaryDirectory];
  v9 = [v6 URLForDirectory:99 inDomain:1 appropriateForURL:v8 create:1 error:a4];

  if (v9)
  {
    v10 = [PXSaveVideoFrameAction _stillFilenameForVideoAsset:v5];
    v11 = [v9 URLByAppendingPathComponent:v10 isDirectory:0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_stillFilenameForVideoAsset:(id)a3
{
  v3 = a3;
  v4 = [v3 originalFilename];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 filename];
  }

  v7 = v6;

  v8 = [v7 stringByDeletingPathExtension];

  v9 = [v8 stringByAppendingString:@"_still"];

  v10 = +[PXSaveVideoFrameAction _fileExtension];
  v11 = [v9 stringByAppendingPathExtension:v10];

  return v11;
}

+ (BOOL)canPerformOnAsset:(id)a3
{
  v3 = a3;
  if ([v3 isTrashed] & 1) != 0 || (objc_msgSend(v3, "isRecoveredAsset") & 1) != 0 || objc_msgSend(v3, "px_isSyndicatedAsset") && (!objc_msgSend(v3, "px_isUnsavedSyndicatedAsset") || (objc_msgSend(v3, "px_isSyndicationPhotoLibraryAsset")) || !objc_msgSend(v3, "isVideo"))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [v3 needsSensitivityProtection] ^ 1;
  }

  return v4;
}

@end