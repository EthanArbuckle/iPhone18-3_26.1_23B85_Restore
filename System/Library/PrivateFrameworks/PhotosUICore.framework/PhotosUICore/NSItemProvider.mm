@interface NSItemProvider
@end

@implementation NSItemProvider

void __78__NSItemProvider_PhotosUICore__px_createStreamShareSourceWithCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
    v11 = _PXItemProviderTemporaryURL(v5, v10);

    v12 = [MEMORY[0x1E696AC08] defaultManager];
    [v12 removeItemAtURL:v11 error:0];

    v13 = [MEMORY[0x1E696AC08] defaultManager];
    v31 = 0;
    [v13 moveItemAtURL:v5 toURL:v11 error:&v31];
    v7 = v31;

    if (v7)
    {
      v14 = PLDragAndDropGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 32);
        *buf = 136315650;
        v33 = "[NSItemProvider(PhotosUICore) px_createStreamShareSourceWithCompletionBlock:]_block_invoke";
        v34 = 2112;
        v35 = v15;
        v36 = 2112;
        v37 = v7;
        _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_ERROR, "%s: failed to move to tmp location file for %@ error: %@", buf, 0x20u);
      }

      (*(*(a1 + 48) + 16))();
      goto LABEL_35;
    }

    v16 = objc_alloc_init(MEMORY[0x1E69BE820]);
    v17 = [*(a1 + 32) _px_shareMediaTypeFromUniformTypeIdentifier:*(a1 + 40)];
    [v16 setMediaType:v17];
    if ((v17 - 1) < 2)
    {
      if (v5)
      {
        [v16 setMediaURL:v11];
        if (v17 == 2)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        v20 = [MEMORY[0x1E6978778] collectionShareAssetSourceWithFileURL:v11 resourceType:v21];
LABEL_19:
        v22 = *(a1 + 48);
        if (v22)
        {
          (*(v22 + 16))(v22, v16, v20, 0);
        }

LABEL_34:

LABEL_35:
        goto LABEL_36;
      }

      v23 = PLDragAndDropGetLog();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v26 = *(a1 + 32);
      *buf = 138412546;
      v33 = v26;
      v34 = 2112;
      v35 = 0;
      v25 = "Couldn't get url from provider:%@ error:%@";
      goto LABEL_27;
    }

    if (v17)
    {
      if (v17 != 3)
      {
LABEL_29:
        if (*(a1 + 48))
        {
          v28 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:{@"Couldn't share item from provider %@", *(a1 + 32)}];
          (*(*(a1 + 48) + 16))();
        }

        v29 = PLDragAndDropGetLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = *(a1 + 32);
          *buf = 138412290;
          v33 = v30;
          _os_log_impl(&dword_1A3C1C000, v29, OS_LOG_TYPE_DEFAULT, "Couldn't share item with provider %@", buf, 0xCu);
        }

        v20 = 0;
        goto LABEL_34;
      }

      v18 = [*(a1 + 32) _px_sharedMediaVideoComplementFromURL:v11];
      if (v18)
      {
        v19 = v18;
        [v16 setVideoComplement:v18];
        [v16 setMediaURL:v11];
        v20 = [MEMORY[0x1E6978778] collectionShareAssetSourceWithVideoComplementBundle:v19];

        goto LABEL_19;
      }

      v23 = PLDragAndDropGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v27 = *(a1 + 32);
        *buf = 138412546;
        v33 = v27;
        v34 = 2112;
        v35 = 0;
        v25 = "Couldn't get live photo from provider:%@ error:%@";
        goto LABEL_27;
      }
    }

    else
    {
      v23 = PLDragAndDropGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 32);
        *buf = 138412546;
        v33 = v24;
        v34 = 2112;
        v35 = 0;
        v25 = "Media type unknown, couldn't get url from provider:%@ error:%@";
LABEL_27:
        _os_log_impl(&dword_1A3C1C000, v23, OS_LOG_TYPE_DEFAULT, v25, buf, 0x16u);
      }
    }

LABEL_28:

    goto LABEL_29;
  }

  v7 = v6;
  v8 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    *buf = 136315650;
    v33 = "[NSItemProvider(PhotosUICore) px_createStreamShareSourceWithCompletionBlock:]_block_invoke";
    v34 = 2112;
    v35 = v9;
    v36 = 2112;
    v37 = v7;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "%s: failed to load file representation for %@ error: %@", buf, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
LABEL_36:
}

void __82__NSItemProvider_PhotosUICore__px_createAssetWithImportSessionID_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__19703;
  v18[4] = __Block_byref_object_dispose__19704;
  v19 = 0;
  v7 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__NSItemProvider_PhotosUICore__px_createAssetWithImportSessionID_completionBlock___block_invoke_188;
  v13[3] = &unk_1E77396E8;
  v8 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v8;
  v15 = *(a1 + 48);
  v9 = v5;
  v16 = v9;
  v17 = v18;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__NSItemProvider_PhotosUICore__px_createAssetWithImportSessionID_completionBlock___block_invoke_2;
  v10[3] = &unk_1E7740798;
  v11 = *(a1 + 56);
  v12 = v18;
  [v7 performChanges:v13 completionHandler:v10];

  _Block_object_dispose(v18, 8);
}

void __82__NSItemProvider_PhotosUICore__px_createAssetWithImportSessionID_completionBlock___block_invoke_194(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = PLDragAndDropGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 136315650;
      *&buf[4] = "[NSItemProvider(PhotosUICore) px_createAssetWithImportSessionID:completionBlock:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v9;
      *&buf[22] = 2112;
      v33 = v7;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "%s: failed to load file representation for %@ error: %@", buf, 0x20u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v10 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
    v11 = _PXItemProviderTemporaryURL(v5, v10);

    v12 = [MEMORY[0x1E696AC08] defaultManager];
    [v12 removeItemAtURL:v11 error:0];

    v13 = [MEMORY[0x1E696AC08] defaultManager];
    v29 = 0;
    [v13 copyItemAtURL:v5 toURL:v11 error:&v29];
    v7 = v29;

    if (v7)
    {
      v14 = PLDragAndDropGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 32);
        *buf = 136315650;
        *&buf[4] = "[NSItemProvider(PhotosUICore) px_createAssetWithImportSessionID:completionBlock:]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v15;
        *&buf[22] = 2112;
        v33 = v7;
        _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_ERROR, "%s: failed to move to tmp location file for %@ error: %@", buf, 0x20u);
      }

      (*(*(a1 + 56) + 16))();
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v33 = __Block_byref_object_copy__19703;
      v34 = __Block_byref_object_dispose__19704;
      v35 = 0;
      v16 = [*(a1 + 32) _px_assetResourceBagsFromUniformTypeIdentifier:*(a1 + 40) atURL:v11];
      if ([v16 count])
      {
        v17 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __82__NSItemProvider_PhotosUICore__px_createAssetWithImportSessionID_completionBlock___block_invoke_201;
        v24[3] = &unk_1E77448A8;
        v25 = v5;
        v26 = *(a1 + 48);
        v27 = v16;
        v28 = buf;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __82__NSItemProvider_PhotosUICore__px_createAssetWithImportSessionID_completionBlock___block_invoke_2_202;
        v20[3] = &unk_1E773B1A0;
        v22 = *(a1 + 56);
        v23 = buf;
        v21 = v11;
        [v17 performChanges:v24 completionHandler:v20];
      }

      else
      {
        v17 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:{@"Couldn't get valid resources %@", *(a1 + 32)}];
        v18 = PLDragAndDropGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(a1 + 32);
          *v30 = 138412290;
          v31 = v19;
          _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_DEFAULT, "Couldn't share item with provider %@", v30, 0xCu);
        }

        (*(*(a1 + 56) + 16))();
      }

      _Block_object_dispose(buf, 8);
    }
  }
}

void __82__NSItemProvider_PhotosUICore__px_createAssetWithImportSessionID_completionBlock___block_invoke_201(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E69786E0]);
  [v2 setShouldMoveFile:0];
  v3 = [*(a1 + 32) lastPathComponent];
  [v2 setOriginalFilename:v3];

  v4 = [MEMORY[0x1E6978698] creationRequestForAsset];
  [v4 setImportSessionID:*(a1 + 40)];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = *(a1 + 48);
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 resourceType];
        v12 = [v10 url];
        [v4 addResourceWithType:v11 fileURL:v12 options:v2];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v13 = [v4 placeholderForCreatedAsset];
  v14 = [v13 localIdentifier];
  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;
}

void __82__NSItemProvider_PhotosUICore__px_createAssetWithImportSessionID_completionBlock___block_invoke_2_202(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = PLDragAndDropGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[NSItemProvider(PhotosUICore) px_createAssetWithImportSessionID:completionBlock:]_block_invoke_2";
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "%s: failed to perform creationRequest with error: %@", buf, 0x16u);
    }

    v7 = *(a1 + 40);
    v8 = [v5 copy];
    (*(v7 + 16))(v7, 0, v8);
  }

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = *(a1 + 32);
  v14 = v5;
  [v9 removeItemAtURL:v10 error:&v14];
  v11 = v14;

  if (v11)
  {
    v12 = PLDragAndDropGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      *buf = 136315650;
      v16 = "[NSItemProvider(PhotosUICore) px_createAssetWithImportSessionID:completionBlock:]_block_invoke";
      v17 = 2112;
      v18 = v13;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "%s: failed to remove item at url  %@ with error: %@", buf, 0x20u);
    }
  }
}

void __82__NSItemProvider_PhotosUICore__px_createAssetWithImportSessionID_completionBlock___block_invoke_188(uint64_t a1)
{
  v2 = [*(a1 + 32) _px_assetResourceTypeFromUniformTypeIdentifier:*(a1 + 40)];
  v8 = objc_alloc_init(MEMORY[0x1E69786E0]);
  [v8 setShouldMoveFile:0];
  v3 = [MEMORY[0x1E6978698] creationRequestForAsset];
  [v3 setImportSessionID:*(a1 + 48)];
  [v3 addResourceWithType:v2 data:*(a1 + 56) options:v8];
  v4 = [v3 placeholderForCreatedAsset];
  v5 = [v4 localIdentifier];
  v6 = *(*(a1 + 64) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __82__NSItemProvider_PhotosUICore__px_createAssetWithImportSessionID_completionBlock___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    (*(v6 + 16))(v6, *(*(*(a1 + 40) + 8) + 40), 0);
  }

  else
  {
    (*(v6 + 16))(v6, 0, v5);
    v7 = PLDragAndDropGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[NSItemProvider(PhotosUICore) px_createAssetWithImportSessionID:completionBlock:]_block_invoke_2";
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "%s: failed to perform creationRequest with error: %@", &v8, 0x16u);
    }
  }
}

@end