@interface PXPhotoKitAssetFilePromise
+ (id)filePromiseWithAsset:(id)a3 error:(id *)a4;
- (id)fileNameForType:(id)a3;
- (void)writeToURL:(id)a3 completionHandler:(id)a4;
@end

@implementation PXPhotoKitAssetFilePromise

+ (id)filePromiseWithAsset:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v20 = 0;
  v8 = [MEMORY[0x1E69786A8] exportRequestForAsset:v7 error:&v20];
  v9 = v20;
  if (v8)
  {
    v10 = [v8 variants];
    v11 = [v10 objectForKeyedSubscript:&unk_1F190AA20];
    if (v11)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    if ([v7 isRAW])
    {
      v13 = [*MEMORY[0x1E6982E58] identifier];
    }

    else
    {
      v17 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
      v13 = [v10 objectForKeyedSubscript:v17];
    }

    v16 = objc_alloc_init(a1);
    objc_storeStrong(v16 + 4, a3);
    objc_storeStrong(v16 + 1, v8);
    v16[2] = v12;
    v18 = v16[5];
    v16[5] = v13;
  }

  else
  {
    v14 = PLUIGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = v7;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_ERROR, "No export request for asset %@ with error %@.", buf, 0x16u);
    }

    if (a4)
    {
      v15 = v9;
      v16 = 0;
      *a4 = v9;
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (void)writeToURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PXPhotoKitAssetFilePromise *)self asset];
  v9 = objc_alloc_init(MEMORY[0x1E69786B0]);
  [v9 setTreatLivePhotoAsStill:1];
  [v9 setFlattenSlomoVideos:1];
  [v9 setDontAllowRAW:1];
  [v9 setVariant:self->_variant];
  exportRequest = self->_exportRequest;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__PXPhotoKitAssetFilePromise_writeToURL_completionHandler___block_invoke;
  v14[3] = &unk_1E7731DD8;
  v15 = v8;
  v16 = v6;
  v17 = v7;
  v11 = v7;
  v12 = v6;
  v13 = v8;
  [(PHAssetExportRequest *)exportRequest exportWithOptions:v9 completionHandler:v14];
}

void __59__PXPhotoKitAssetFilePromise_writeToURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) playbackStyle];
  if ((v7 - 1) < 3)
  {
    v8 = MEMORY[0x1E6978B98];
  }

  else
  {
    if ((v7 - 4) >= 2)
    {
      if (!v7)
      {
        v14 = PLUIGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_ERROR, "Trying to drag unsupported playback style", buf, 2u);
        }
      }

      goto LABEL_11;
    }

    v8 = MEMORY[0x1E6978BA0];
  }

  v9 = [v5 objectForKeyedSubscript:*v8];
  if (v9)
  {
    v10 = v9;
    v11 = [MEMORY[0x1E696AC08] defaultManager];
    v12 = *(a1 + 40);
    v15 = 0;
    [v11 copyItemAtURL:v10 toURL:v12 error:&v15];
    v13 = v15;

    (*(*(a1 + 48) + 16))();
LABEL_14:

    goto LABEL_15;
  }

LABEL_11:
  if (!v6)
  {
    v10 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"No export URL available for %@", *(a1 + 32)}];
    (*(*(a1 + 48) + 16))();
    goto LABEL_14;
  }

  (*(*(a1 + 48) + 16))();
LABEL_15:
}

- (id)fileNameForType:(id)a3
{
  v4 = [(PXPhotoKitAssetFilePromise *)self asset];
  v5 = MEMORY[0x1E69C08F0];
  v6 = [(PXPhotoKitAssetFilePromise *)self fileType];
  v7 = [v5 typeWithIdentifier:v6];

  v8 = [v4 px_exportFilename];
  v9 = [v8 stringByDeletingPathExtension];
  if (v7)
  {
    v10 = [MEMORY[0x1E69C08F0] preferredOrFallbackFilenameExtensionForType:v7];
  }

  else
  {
    v10 = @"data";
  }

  v11 = [v9 stringByAppendingPathExtension:v10];

  return v11;
}

@end