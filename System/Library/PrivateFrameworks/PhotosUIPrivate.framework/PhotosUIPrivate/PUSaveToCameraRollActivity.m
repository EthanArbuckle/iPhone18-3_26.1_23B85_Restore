@interface PUSaveToCameraRollActivity
- (BOOL)_itemIsVideoAtURL:(id)a3;
- (BOOL)canPerformWithActivityItems:(id)a3;
- (PXActivityItemSourceController)itemSourceController;
- (void)performActivity;
@end

@implementation PUSaveToCameraRollActivity

- (PXActivityItemSourceController)itemSourceController
{
  WeakRetained = objc_loadWeakRetained(&self->_itemSourceController);

  return WeakRetained;
}

- (BOOL)_itemIsVideoAtURL:(id)a3
{
  v3 = a3;
  v12 = 0;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5 isDirectory:&v12];

  if (v6 && (v12 & 1) == 0)
  {
    v8 = MEMORY[0x1E6982C40];
    v9 = [v3 pathExtension];
    v10 = [v8 typeWithFilenameExtension:v9];

    if (v10)
    {
      v7 = [v10 conformsToType:*MEMORY[0x1E6982EE8]];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)performActivity
{
  v82 = *MEMORY[0x1E69E9840];
  v38 = [(PUSaveToCameraRollActivity *)self itemSourceController];
  v50 = [v38 activityViewController];
  v49 = [(UISaveToCameraRollActivity *)self activityType];
  v2 = [v38 assetItemSources];
  v3 = dispatch_group_create();
  v41 = [MEMORY[0x1E696AC08] defaultManager];
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v73 objects:v81 count:16];
  if (v4)
  {
    v51 = *v74;
    v39 = *MEMORY[0x1E69874C0];
    v40 = *MEMORY[0x1E6987338];
    *&v5 = 138412546;
    v37 = v5;
    do
    {
      v6 = 0;
      do
      {
        if (*v74 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v73 + 1) + 8 * v6);
        v8 = [v7 asset];
        if (v8)
        {
          dispatch_group_enter(v3);
          v9 = [v8 isStreamedVideo];
          v10 = [v7 activityViewController:v50 itemForActivityType:v49];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (v9)
          {
            if ((isKindOfClass & 1) != 0 && [(PUSaveToCameraRollActivity *)self _itemIsVideoAtURL:v10])
            {
              *buf = 0;
              v63 = buf;
              v64 = 0x3032000000;
              v65 = __Block_byref_object_copy__76264;
              v66 = __Block_byref_object_dispose__76265;
              v12 = v10;
              v67 = v12;
              v13 = dispatch_group_create();
              dispatch_group_enter(v13);
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __45__PUSaveToCameraRollActivity_performActivity__block_invoke_193;
              block[3] = &unk_1E7B800C8;
              v61 = buf;
              v60 = v3;
              dispatch_group_notify(v13, MEMORY[0x1E69E96A0], block);
              if ([v8 sourceType] == 2 && objc_msgSend(v8, "playbackStyle") == 5)
              {
                v14 = v12;
                v43 = [v14 lastPathComponent];
                v42 = v14;
                v15 = [v14 URLByDeletingLastPathComponent];
                v44 = [v15 URLByAppendingPathComponent:@"transcoded"];

                v46 = [v44 URLByAppendingPathComponent:v43];
                v16 = [v46 path];
                v17 = [v41 fileExistsAtPath:v16];

                if (v17)
                {
                  v58 = 0;
                  v18 = [v41 removeItemAtURL:v46 error:&v58];
                  v19 = v58;
                  if ((v18 & 1) == 0)
                  {
                    v20 = PLUIGetLog();
                    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                    {
                      *v77 = v37;
                      v78 = v46;
                      v79 = 2112;
                      v80 = v19;
                      v21 = v20;
                      v22 = "Share Sheet: failed to delete already-existing transcoded video at url: %@, reason: %@";
                      goto LABEL_29;
                    }

                    goto LABEL_30;
                  }
                }

                else
                {
                  v57 = 0;
                  v28 = [v41 createDirectoryAtURL:v44 withIntermediateDirectories:1 attributes:0 error:&v57];
                  v19 = v57;
                  if ((v28 & 1) == 0)
                  {
                    v20 = PLUIGetLog();
                    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                    {
                      *v77 = v37;
                      v78 = v44;
                      v79 = 2112;
                      v80 = v19;
                      v21 = v20;
                      v22 = "Share Sheet: failed to create transcode directory at url: %@, reason: %@";
LABEL_29:
                      _os_log_impl(&dword_1B36F3000, v21, OS_LOG_TYPE_ERROR, v22, v77, 0x16u);
                    }

LABEL_30:
                  }
                }

                v45 = [MEMORY[0x1E6987E28] assetWithURL:v42];
                v29 = [MEMORY[0x1E695DF70] array];
                v30 = MEMORY[0x1E69C0728];
                v31 = [MEMORY[0x1E69C0718] playbackVariationMetadataIdentifier];
                v32 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(v8, "playbackVariation")}];
                [v30 addQuickTimeMetadataItemsWithIdentifier:v31 value:v32 toItems:v29];

                v33 = [v45 metadata];
                [v29 addObjectsFromArray:v33];

                v34 = MEMORY[0x1E69BE890];
                v53[0] = MEMORY[0x1E69E9820];
                v53[1] = 3221225472;
                v53[2] = __45__PUSaveToCameraRollActivity_performActivity__block_invoke_205;
                v53[3] = &unk_1E7B7DBE8;
                v56 = buf;
                v35 = v42;
                v54 = v35;
                v55 = v13;
                [v34 transcodeVideo:v45 outputURL:v46 presetName:v40 outputFileType:v39 metadata:v29 completionHandler:v53];
              }

              else
              {
                dispatch_group_leave(v13);
              }

              _Block_object_dispose(buf, 8);
LABEL_22:

              goto LABEL_23;
            }
          }

          else
          {
            if (isKindOfClass)
            {
              v23 = [objc_alloc(MEMORY[0x1E69C0918]) initWithBundleAtURL:v10];
              v24 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
              v25 = MEMORY[0x1E69E9820];
              v70[0] = MEMORY[0x1E69E9820];
              v70[1] = 3221225472;
              v70[2] = __45__PUSaveToCameraRollActivity_performActivity__block_invoke;
              v70[3] = &unk_1E7B80C38;
              v71 = v23;
              v72 = v10;
              v68[0] = v25;
              v68[1] = 3221225472;
              v68[2] = __45__PUSaveToCameraRollActivity_performActivity__block_invoke_2;
              v68[3] = &unk_1E7B80280;
              v69 = v3;
              v26 = v23;
              [v24 performChanges:v70 completionHandler:v68];

              goto LABEL_22;
            }

            v27 = PLUIGetLog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_1B36F3000, v27, OS_LOG_TYPE_ERROR, "Share Sheet: did not get a URL for an in-app save", buf, 2u);
            }
          }

          dispatch_group_leave(v3);
          goto LABEL_22;
        }

LABEL_23:

        ++v6;
      }

      while (v4 != v6);
      v36 = [obj countByEnumeratingWithState:&v73 objects:v81 count:16];
      v4 = v36;
    }

    while (v36);
  }

  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __45__PUSaveToCameraRollActivity_performActivity__block_invoke_207;
  v52[3] = &unk_1E7B80DD0;
  v52[4] = self;
  dispatch_group_notify(v3, MEMORY[0x1E69E96A0], v52);
}

id __45__PUSaveToCameraRollActivity_performActivity__block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return [MEMORY[0x1E6978698] creationRequestForAssetFromVideoComplementBundle:?];
  }

  else
  {
    return [MEMORY[0x1E6978698] creationRequestForAssetFromImageAtFileURL:*(a1 + 40)];
  }
}

void __45__PUSaveToCameraRollActivity_performActivity__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Share Sheet: failed to save cloud shared asset to library with error: %@", &v7, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void __45__PUSaveToCameraRollActivity_performActivity__block_invoke_193(uint64_t a1)
{
  v2 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__PUSaveToCameraRollActivity_performActivity__block_invoke_2_194;
  v3[3] = &unk_1E7B800F0;
  v3[4] = *(a1 + 40);
  [v2 performChangesAndWait:v3 error:0];

  dispatch_group_leave(*(a1 + 32));
}

void __45__PUSaveToCameraRollActivity_performActivity__block_invoke_205(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v6 || v7)
  {
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = 138412546;
      v12 = v10;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "Share Sheet: failed to passthrough-transcode shared video at url: %@, reason: %@", &v11, 0x16u);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __45__PUSaveToCameraRollActivity_performActivity__block_invoke_2_194(uint64_t a1)
{
  v3 = objc_alloc_init(MEMORY[0x1E69786E0]);
  [v3 setShouldMoveFile:1];
  v2 = [MEMORY[0x1E6978698] creationRequestForAsset];
  [v2 addResourceWithType:2 fileURL:*(*(*(a1 + 32) + 8) + 40) options:v3];
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = PUSaveToCameraRollActivity;
  if ([(UISaveToCameraRollActivity *)&v16 canPerformWithActivityItems:a3])
  {
    v4 = [(PUSaveToCameraRollActivity *)self itemSourceController];
    v5 = [v4 assets];

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v7)
    {
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if (([v10 px_isSharedAlbumAsset] & 1) == 0 && !objc_msgSend(v10, "isPhotoStreamPhoto"))
          {
            LOBYTE(v7) = 0;
            goto LABEL_14;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }

      LOBYTE(v7) = 1;
    }

LABEL_14:
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

@end