@interface PLPublishCloudSharedAssetsJob
+ (id)videoComplementURLForSharingFromAsset:(id)asset;
+ (void)publishBatchOfOriginalAssetUUIDs:(id)ds toSharedAlbum:(id)album withAssetsSharingInfos:(id)infos customExportsInfo:(id)info trimmedVideoPathInfo:(id)pathInfo isNewAlbum:(BOOL)newAlbum batchCommentText:(id)text;
- (BOOL)retrieveURLsFromAssetWithUUID:(id)d withExportedFileURL:(id)l primaryURL:(id *)rL videoComplementURL:(id *)uRL;
- (id)description;
- (id)initFromXPCObject:(id)object libraryServicesManager:(id)manager;
- (void)encodeToXPCObject:(id)object;
- (void)executeDaemonOperation;
- (void)runDaemonSide;
@end

@implementation PLPublishCloudSharedAssetsJob

- (BOOL)retrieveURLsFromAssetWithUUID:(id)d withExportedFileURL:(id)l primaryURL:(id *)rL videoComplementURL:(id *)uRL
{
  v46 = *MEMORY[0x1E69E9840];
  dCopy = d;
  lCopy = l;
  v11 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v40 = lCopy;
    v41 = 2114;
    v42 = dCopy;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Determining URLs to share for exported file URL: %@, asset UUID: %{public}@", buf, 0x16u);
  }

  pathExtension = [lCopy pathExtension];
  if ([pathExtension isEqualToString:*MEMORY[0x1E69C09D0]])
  {
    v13 = [objc_alloc(MEMORY[0x1E69C0918]) initWithBundleAtURL:lCopy];
    imagePath = [v13 imagePath];
    videoPath = [v13 videoPath];
    v16 = videoPath;
    if (imagePath)
    {
      v17 = videoPath == 0;
    }

    else
    {
      v17 = 1;
    }

    v18 = !v17;
    if (v17)
    {
      v32 = videoPath;
      v33 = imagePath;
      v34 = dCopy;
      v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v22 = [defaultManager enumeratorAtURL:lCopy includingPropertiesForKeys:0 options:5 errorHandler:0];

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v23 = v22;
      v24 = [v23 countByEnumeratingWithState:&v35 objects:v45 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v36;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v36 != v26)
            {
              objc_enumerationMutation(v23);
            }

            pathExtension2 = [*(*(&v35 + 1) + 8 * i) pathExtension];
            [v20 addObject:pathExtension2];
          }

          v25 = [v23 countByEnumeratingWithState:&v35 objects:v45 count:16];
        }

        while (v25);
      }

      v29 = PLPhotoSharingGetLog();
      dCopy = v34;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = [v20 componentsJoinedByString:{@", "}];
        *buf = 138412802;
        v40 = lCopy;
        v41 = 2114;
        v42 = v30;
        v43 = 2114;
        v44 = v34;
        _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "Failed to determine URLs to share for exported file URL: %@, with path extensions: (%{public}@), asset UUID: %{public}@", buf, 0x20u);
      }

      v16 = v32;
      imagePath = v33;
    }

    else
    {
      *rL = [MEMORY[0x1E695DFF8] fileURLWithPath:imagePath];
      *uRL = [MEMORY[0x1E695DFF8] fileURLWithPath:v16];
    }
  }

  else
  {
    v19 = lCopy;
    *rL = lCopy;
    v18 = 1;
  }

  return v18;
}

- (void)executeDaemonOperation
{
  v3 = MEMORY[0x1E695DF70];
  originalAssetUUIDs = [(PLPublishCloudSharedAssetsJob *)self originalAssetUUIDs];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(originalAssetUUIDs, "count")}];

  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__75175;
  v24[4] = __Block_byref_object_dispose__75176;
  v25 = 0;
  transientPhotoLibrary = [(PLCloudSharingJob *)self transientPhotoLibrary];
  pathManager = [transientPhotoLibrary pathManager];
  capabilities = [pathManager capabilities];

  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__75175;
  v22[4] = __Block_byref_object_dispose__75176;
  v23 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55__PLPublishCloudSharedAssetsJob_executeDaemonOperation__block_invoke;
  v16[3] = &unk_1E7576F10;
  v20 = v24;
  v16[4] = self;
  v9 = transientPhotoLibrary;
  v17 = v9;
  v10 = capabilities;
  v18 = v10;
  v19 = v5;
  v21 = v22;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__PLPublishCloudSharedAssetsJob_executeDaemonOperation__block_invoke_73;
  v12[3] = &unk_1E7578870;
  v11 = v19;
  v13 = v11;
  v14 = v24;
  v15 = v22;
  [v9 performTransactionAndWait:v16 completionHandler:v12];

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
}

void __55__PLPublishCloudSharedAssetsJob_executeDaemonOperation__block_invoke(uint64_t a1)
{
  v171 = *MEMORY[0x1E69E9840];
  v121 = +[PLPhotoSharingHelper sharingPersonID];
  if (v121)
  {
    v1 = [*(a1 + 32) publishAlbumCloudGUID];
    v2 = [PLCloudSharedAlbum cloudSharedAlbumWithGUID:v1 inLibrary:*(a1 + 40)];
    v3 = *(*(a1 + 64) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    if (*(*(*(a1 + 64) + 8) + 40))
    {
      if ([*(a1 + 32) isNewAlbum])
      {
        [PLPhotoSharingHelper publishCloudSharedAlbumToServer:*(*(*(a1 + 64) + 8) + 40)];
      }

      v5 = [*(a1 + 32) originalAssetUUIDs];
      v6 = [PLManagedAsset assetsWithUUIDs:v5 options:1 inLibrary:*(a1 + 40)];

      v7 = [v6 count];
      v8 = [*(a1 + 32) originalAssetUUIDs];
      v9 = [v8 count];

      if (v7 != v9)
      {
        v10 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = [v6 count];
          v12 = [*(a1 + 32) originalAssetUUIDs];
          *buf = 134218240;
          *&buf[4] = v11;
          *&buf[12] = 2048;
          *&buf[14] = [v12 count];
          _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "ERROR: Only found %lu originalAssets, expected %lu", buf, 0x16u);
        }
      }

      v136 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
      v165 = 0u;
      v166 = 0u;
      v163 = 0u;
      v164 = 0u;
      obj = v6;
      v13 = [obj countByEnumeratingWithState:&v163 objects:v170 count:16];
      if (v13)
      {
        v14 = *v164;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v164 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v163 + 1) + 8 * i);
            v17 = [v16 uuid];
            [v136 setObject:v16 forKey:v17];
          }

          v13 = [obj countByEnumeratingWithState:&v163 objects:v170 count:16];
        }

        while (v13);
      }

      v119 = [MEMORY[0x1E69BF320] UUIDString];
      v120 = [MEMORY[0x1E695DF00] date];
      v118 = [*(*(*(a1 + 64) + 8) + 40) mutableAssets];
      v18 = [*(a1 + 32) batchCommentText];
      v117 = [v18 length];

      v19 = MEMORY[0x1E695DFD8];
      v20 = [*(a1 + 32) stillImageOnlyAssetUUIDs];
      v114 = [v19 setWithArray:v20];

      [*(a1 + 32) originalAssetUUIDs];
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v122 = v160 = 0u;
      v127 = [v122 countByEnumeratingWithState:&v159 objects:v169 count:16];
      if (v127)
      {
        v126 = *v160;
        v116 = *MEMORY[0x1E6987348];
        v115 = *MEMORY[0x1E69874B8];
        do
        {
          v21 = 0;
          do
          {
            if (*v160 != v126)
            {
              v22 = v21;
              objc_enumerationMutation(v122);
              v21 = v22;
            }

            v135 = v21;
            v23 = *(*(&v159 + 1) + 8 * v21);
            v24 = [v136 objectForKey:v23];
            if (v24)
            {
              context = objc_autoreleasePoolPush();
              v25 = [v24 isVideo];
              v124 = [v24 playbackVariation];
              v26 = [*(a1 + 32) customExportsInfo];
              v27 = [v24 uuid];
              v129 = [v26 objectForKey:v27];

              v28 = [*(a1 + 32) trimmedVideoPathInfo];
              v29 = [v24 uuid];
              v138 = [v28 objectForKey:v29];

              if (v138)
              {
                v140 = [MEMORY[0x1E695DFF8] URLWithString:?];
                v30 = PLPhotoSharingGetLog();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *&buf[4] = v140;
                  _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEFAULT, "Original video is trimmed, use the trimmed file %@", buf, 0xCu);
                }

                v137 = 0;
                oslog = 0;
                v125 = 0;
LABEL_26:
                v31 = 1;
LABEL_27:

                v32 = [MEMORY[0x1E696AFB0] UUID];
                v134 = [v32 UUIDString];

                v130 = [v140 pathExtension];
                v33 = [*(a1 + 32) publishAlbumCloudGUID];
                v34 = [*(a1 + 40) pathManager];
                v35 = [PLCloudSharedAssetSaveJob nextDCIMSaveFileURLForCloudPersonID:v121 cloudAlbumGUID:v33 pathManager:v34 fileExtension:v130 assetUUID:v134];

                if (v137)
                {
                  v36 = [v35 URLByDeletingLastPathComponent];
                  v37 = [v35 lastPathComponent];
                  v38 = [v37 stringByDeletingPathExtension];

                  v39 = [v137 pathExtension];
                  v40 = [v39 uppercaseString];
                  v41 = [v38 stringByAppendingPathExtension:v40];

                  v131 = [v36 URLByAppendingPathComponent:v41];
                }

                else
                {
                  v131 = 0;
                }

                if (v138)
                {
                  v45 = 1;
                }

                else
                {
                  v45 = v25 ^ 1;
                }

                if (((v31 | v45) & 1) != 0 || ![v24 isDefaultAdjustedSlomo] || !objc_msgSend(v24, "isPlayableVideo:", 0))
                {
                  if (v31)
                  {
                    v53 = PLPhotoSharingGetLog();
                    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      *&buf[4] = v140;
                      *&buf[12] = 2112;
                      *&buf[14] = v35;
                      _os_log_impl(&dword_19BF1F000, v53, OS_LOG_TYPE_DEFAULT, "Moving result from %@ to %@", buf, 0x16u);
                    }

                    v54 = *(a1 + 48);
                    v146 = 0;
                    v55 = [MEMORY[0x1E69BF238] secureMoveItemAtURL:v140 toURL:v35 capabilities:v54 error:&v146];
                    v56 = v146;
                    if ((v55 & 1) == 0)
                    {
                      v57 = PLPhotoSharingGetLog();
                      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                      {
                        v58 = [v140 path];
                        v59 = [v35 path];
                        *buf = 138412802;
                        *&buf[4] = v58;
                        *&buf[12] = 2112;
                        *&buf[14] = v59;
                        *&buf[22] = 2112;
                        v168 = v56;
                        _os_log_impl(&dword_19BF1F000, v57, OS_LOG_TYPE_ERROR, "Unable to move %@ to %@: %@", buf, 0x20u);
                      }

                      goto LABEL_86;
                    }
                  }

                  else
                  {
                    v145 = 0;
                    v60 = [MEMORY[0x1E69BF238] copyItemAtURL:v140 toURL:v35 error:&v145];
                    v56 = v145;
                    if ((v60 & 1) == 0)
                    {
                      v57 = PLPhotoSharingGetLog();
                      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                      {
                        v77 = [v140 path];
                        v78 = [v35 path];
                        *buf = 138412802;
                        *&buf[4] = v77;
                        *&buf[12] = 2112;
                        *&buf[14] = v78;
                        *&buf[22] = 2112;
                        v168 = v56;
                        _os_log_impl(&dword_19BF1F000, v57, OS_LOG_TYPE_ERROR, "Unable to copy %@ to %@: %@", buf, 0x20u);
                      }

                      goto LABEL_86;
                    }
                  }

                  goto LABEL_52;
                }

                v46 = PLPhotoSharingGetLog();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *&buf[4] = v35;
                  _os_log_impl(&dword_19BF1F000, v46, OS_LOG_TYPE_DEFAULT, "Original is a slow-mo, flatten the video to %@", buf, 0xCu);
                }

                v47 = v116;
                v48 = dispatch_semaphore_create(0);
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x2020000000;
                LOBYTE(v168) = 0;
                v49 = [PLSlalomUtilities videoAVObjectBuilderForManagedAsset:v24 applyVideoAdjustments:1];
                v151[0] = MEMORY[0x1E69E9820];
                v151[1] = 3221225472;
                v151[2] = __55__PLPublishCloudSharedAssetsJob_executeDaemonOperation__block_invoke_65;
                v151[3] = &unk_1E7571B80;
                v152 = v140;
                v50 = v35;
                v153 = v50;
                v155 = buf;
                v51 = v48;
                v154 = v51;
                v149 = *MEMORY[0x1E6960CC0];
                v150 = *(MEMORY[0x1E6960CC0] + 16);
                v147 = v149;
                v148 = v150;
                [PLVideoTranscoder transcodeVideoWithObjectBuilder:v49 outputURL:v50 startTime:&v149 endTime:&v147 presetName:v47 outputFileType:v115 metadata:0 completionHandler:v151];
                dispatch_semaphore_wait(v51, 0xFFFFFFFFFFFFFFFFLL);
                v52 = *(*&buf[8] + 24);

                _Block_object_dispose(buf, 8);
                if (v52)
                {
LABEL_103:

                  v85 = oslog;
                  goto LABEL_104;
                }

LABEL_52:
                v61 = v125;
                if (!v131)
                {
                  v61 = 0;
                }

                if (v61)
                {
                  v62 = PLPhotoSharingGetLog();
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    *&buf[4] = v137;
                    *&buf[12] = 2112;
                    *&buf[14] = v131;
                    _os_log_impl(&dword_19BF1F000, v62, OS_LOG_TYPE_DEFAULT, "Moving video complement from %@ to %@, for an in-place video complement creation later", buf, 0x16u);
                  }

                  v63 = *(a1 + 48);
                  v144 = 0;
                  v64 = [MEMORY[0x1E69BF238] secureMoveItemAtURL:v137 toURL:v131 capabilities:v63 error:&v144];
                  v56 = v144;
                  if (v64)
                  {
                    v65 = v131;

                    v137 = v65;
                    v66 = 2;
                    goto LABEL_60;
                  }

                  v57 = PLPhotoSharingGetLog();
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                  {
                    v86 = [v137 path];
                    v87 = [v131 path];
                    *buf = 138412802;
                    *&buf[4] = v86;
                    *&buf[12] = 2112;
                    *&buf[14] = v87;
                    *&buf[22] = 2112;
                    v168 = v56;
                    _os_log_impl(&dword_19BF1F000, v57, OS_LOG_TYPE_ERROR, "Unable to move %@ to %@: %@", buf, 0x20u);
                  }

LABEL_86:

                  goto LABEL_103;
                }

                v66 = 0;
LABEL_60:
                if (oslog)
                {
                  v67 = [MEMORY[0x1E696AC08] defaultManager];
                  v143 = 0;
                  [v67 removeItemAtURL:oslog error:&v143];
                  v68 = v143;

                  if (v68)
                  {
                    v69 = PLPhotoSharingGetLog();
                    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      *&buf[4] = oslog;
                      *&buf[12] = 2112;
                      *&buf[14] = v68;
                      _os_log_impl(&dword_19BF1F000, v69, OS_LOG_TYPE_DEFAULT, "Unable to opportunistically clean up temporary directory: %@ Error: %@", buf, 0x16u);
                    }
                  }
                }

                *&v147 = 0;
                v70 = *(a1 + 40);
                v71 = [MEMORY[0x1E69BF328] savedAssetTypeForCloudSharedAsset];
                v142 = 0;
                v72 = [PLManagedAsset insertAssetIntoPhotoLibrary:v70 mainFileURL:v35 savedAssetType:v71 bundleScope:2 uuid:v134 replacementUUID:0 imageSource:&v147 imageData:&v142];
                v73 = v142;
                v74 = [PLPhotoSharingHelper photoSharingOriginalFilenameForAsset:v24];
                [v72 setOriginalFilename:v74];

                if (!v72)
                {
                  osloga = PLPhotoSharingGetLog();
                  if (os_log_type_enabled(osloga, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    *&buf[4] = v35;
                    _os_log_impl(&dword_19BF1F000, osloga, OS_LOG_TYPE_ERROR, "ERROR: couldn't insert new asset for file at %@", buf, 0xCu);
                  }

                  goto LABEL_102;
                }

                if ([v72 isVideo])
                {
                  v141 = 0;
                  v75 = [v72 isPlayableVideo:&v141];
                  osloga = v141;
                  if ((v75 & 1) == 0)
                  {
                    v76 = PLPhotoSharingGetLog();
                    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      *&buf[4] = v35;
                      *&buf[12] = 2112;
                      *&buf[14] = osloga;
                      _os_log_impl(&dword_19BF1F000, v76, OS_LOG_TYPE_ERROR, "ERROR: can't play new asset for file at %@, with codec: %@", buf, 0x16u);
                    }

LABEL_102:
                    oslog = 0;
                    goto LABEL_103;
                  }
                }

                else
                {
                  osloga = 0;
                }

                [v72 setVisibilityState:2];
                v88 = PLPhotoSharingGetLog();
                if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *&buf[4] = v23;
                  _os_log_impl(&dword_19BF1F000, v88, OS_LOG_TYPE_DEFAULT, "Generating new thumbnails for asset with UUID %@", buf, 0xCu);
                }

                [v72 generateAndUpdateThumbnailsWithPreviewImage:0 thumbnailImage:0 fromImageSource:v147 imageData:v73 forceSRGBConversion:1];
                v89 = [MEMORY[0x1E69BF320] UUIDString];
                v90 = [v24 additionalAttributes];
                v91 = [v90 originalFilename];
                v92 = [v72 additionalAttributes];
                [v92 setOriginalFilename:v91];

                [v72 setCloudAssetGUID:v89];
                [v72 setCloudBatchID:v119];
                [v72 setCloudBatchPublishDate:v120];
                [v72 setCloudIsMyAsset:1];
                [v72 setCloudIsDeletable:1];
                [v72 setPlaybackVariationAndLoopingPlaybackStyleWithPlaybackVariation:v124];
                if ((v45 & 1) == 0)
                {
                  v93 = [v24 uuid];
                  [v72 setOriginalAssetsUUID:v93];

                  v94 = PLPhotoSharingGetLog();
                  if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
                  {
                    v95 = [v72 originalAssetsUUID];
                    *buf = 138412290;
                    *&buf[4] = v95;
                    _os_log_impl(&dword_19BF1F000, v94, OS_LOG_TYPE_DEFAULT, "Saved original video uuid %@ for later playback", buf, 0xCu);
                  }
                }

                if (v137)
                {
                  v96 = [v24 mediaGroupUUID];
                  [v24 photoIrisVideoDuration];
                  [v24 photoIrisStillDisplayTime];
                  [v72 becomePhotoIrisWithMediaGroupUUID:v96 mainFileMetadata:0 videoURL:v137 videoDuration:buf stillDisplayTime:&v149 options:v66];
                }

                [v118 addObject:v72];
                v97 = PLPhotoSharingGetLog();
                if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
                {
                  v98 = [v35 path];
                  *buf = 138412802;
                  *&buf[4] = v140;
                  *&buf[12] = 2112;
                  *&buf[14] = v98;
                  *&buf[22] = 2112;
                  v168 = v89;
                  _os_log_impl(&dword_19BF1F000, v97, OS_LOG_TYPE_DEFAULT, "Created copy of original asset at %@ to %@ and assigned it new cloudAssetGUID %@", buf, 0x20u);
                }

                [*(a1 + 56) addObject:v72];
                if (v117 && !*(*(*(a1 + 72) + 8) + 40))
                {
                  v99 = [*(a1 + 32) batchCommentText];
                  v100 = [PLCloudSharedComment insertNewCommentIntoAsset:v72 commentDate:0 withText:v99 isLike:0 isMyComment:1 inLibrary:*(a1 + 40)];
                  v101 = *(*(a1 + 72) + 8);
                  v102 = *(v101 + 40);
                  *(v101 + 40) = v100;

                  v103 = *(*(*(a1 + 72) + 8) + 40);
                  v104 = [MEMORY[0x1E696AD98] numberWithBool:1];
                  [v103 setIsCaption:v104];

                  v105 = *(*(*(a1 + 72) + 8) + 40);
                  v106 = [MEMORY[0x1E696AD98] numberWithBool:1];
                  [v105 setIsBatchComment:v106];
                }

                [PLResourceInstaller installInternalResourcesForExistingAsset:v72 assumeNoExistingResources:1 referencedResourceURLs:0 error:0];

                goto LABEL_102;
              }

              if (v129)
              {
                v30 = [MEMORY[0x1E695DFF8] URLWithString:?];
                v42 = *(a1 + 32);
                v157 = 0;
                v158 = 0;
                v43 = [v42 retrieveURLsFromAssetWithUUID:v23 withExportedFileURL:v30 primaryURL:&v158 videoComplementURL:&v157];
                v140 = v158;
                v44 = v157;
                if (v43)
                {
                  v137 = v44;
                  v125 = v44 != 0;
                  oslog = [v30 URLByDeletingLastPathComponent];
                  goto LABEL_26;
                }

                v84 = v44;

                v85 = v140;
                goto LABEL_104;
              }

              v79 = [v24 isLoopingVideo];
              if (v79)
              {
                v80 = PLPhotoSharingGetLog();
                if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134217984;
                  *&buf[4] = v124;
                  _os_log_impl(&dword_19BF1F000, v80, OS_LOG_TYPE_DEFAULT, "Sharing looping video with playback variation %ld", buf, 0xCu);
                }

                if (v25)
                {
                  v30 = [v24 pathForVideoFile];
                  v81 = PLPhotoSharingGetLog();
                  if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    *&buf[4] = v30;
                    v82 = v81;
                    v83 = "Original is a looping video, use the original file %@";
                    goto LABEL_117;
                  }

LABEL_118:

                  if (v30)
                  {
                    v140 = [MEMORY[0x1E695DFF8] fileURLWithPath:v30 isDirectory:0];
                    if ([v24 canPlayPhotoIris] && (objc_msgSend(v24, "uuid"), v108 = objc_claimAutoreleasedReturnValue(), v109 = objc_msgSend(v114, "containsObject:", v108), v108, ((v79 | v109) & 1) == 0))
                    {
                      v137 = [objc_opt_class() videoComplementURLForSharingFromAsset:v24];
                    }

                    else
                    {
                      v137 = 0;
                    }

                    oslog = 0;
                    v125 = 0;
                    v31 = 0;
                    goto LABEL_27;
                  }

                  v85 = PLPhotoSharingGetLog();
                  if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    *&buf[4] = v23;
                    _os_log_impl(&dword_19BF1F000, v85, OS_LOG_TYPE_ERROR, "No local file path on disk to support sharing asset %@", buf, 0xCu);
                  }

LABEL_104:

                  objc_autoreleasePoolPop(context);
                  goto LABEL_105;
                }

                v30 = [v24 pathForFullsizeRenderVideoFile];
                v81 = PLPhotoSharingGetLog();
                if (!os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_118;
                }

                *buf = 138412290;
                *&buf[4] = v30;
                v82 = v81;
                v83 = "Original is a regular photo, use the full size render video file %@";
              }

              else if (v25)
              {
                if ([v24 isPlayableVideo:0])
                {
                  [v24 pathForVideoFile];
                }

                else
                {
                  [v24 pathForMediumVideoFile];
                }
                v30 = ;
                v81 = PLPhotoSharingGetLog();
                if (!os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_118;
                }

                *buf = 138412290;
                *&buf[4] = v30;
                v82 = v81;
                v83 = "Original is a video, use the video file %@";
              }

              else
              {
                v156 = 0;
                v107 = [PLResourceChooser fileReservationForLargeDisplayableImageFileForAsset:v24 format:0 allowMetadataSnapshot:0 forceLarge:1 outFilePath:&v156 outImageType:0];
                v30 = v156;
                v81 = PLPhotoSharingGetLog();
                if (!os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_118;
                }

                *buf = 138412290;
                *&buf[4] = v30;
                v82 = v81;
                v83 = "Original is not a video, use the large displayable image file %@";
              }

LABEL_117:
              _os_log_impl(&dword_19BF1F000, v82, OS_LOG_TYPE_DEFAULT, v83, buf, 0xCu);
              goto LABEL_118;
            }

LABEL_105:

            v21 = v135 + 1;
          }

          while (v127 != v135 + 1);
          v110 = [v122 countByEnumeratingWithState:&v159 objects:v169 count:16];
          v127 = v110;
        }

        while (v110);
      }

      [*(*(*(a1 + 64) + 8) + 40) updateCloudLastInterestingChangeDateWithDate:v120];
      [*(*(*(a1 + 64) + 8) + 40) updateCloudLastContributionDateWithDate:v120];

      v111 = obj;
    }

    else
    {
      v112 = PLPhotoSharingGetLog();
      v111 = v112;
      if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
      {
        v113 = [*(a1 + 32) publishAlbumCloudGUID];
        *buf = 138412290;
        *&buf[4] = v113;
        _os_log_impl(&dword_19BF1F000, v112, OS_LOG_TYPE_ERROR, "ERROR: couldn't find album with cloud GUID %@ to publish assets from", buf, 0xCu);

        v111 = v112;
      }
    }
  }

  else
  {
    v111 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v111, OS_LOG_TYPE_ERROR, "ERROR: sharingPersonID is nil, ending job", buf, 2u);
    }
  }
}

uint64_t __55__PLPublishCloudSharedAssetsJob_executeDaemonOperation__block_invoke_73(uint64_t a1)
{
  result = [*(a1 + 32) count];
  if (result)
  {
    result = [PLPhotoSharingHelper enqueueCloudSharedAssetsForPublishToServer:*(a1 + 32) inSharedAlbum:*(*(*(a1 + 40) + 8) + 40)];
    if (*(*(*(a1 + 48) + 8) + 40))
    {

      return [PLPhotoSharingHelper publishCloudSharedCommentToServer:?];
    }
  }

  return result;
}

void __55__PLPublishCloudSharedAssetsJob_executeDaemonOperation__block_invoke_65(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLPhotoSharingGetLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) path];
      v8 = [*(a1 + 40) path];
      v11 = 138412802;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "could not generate trimmed video for %@ to %@ error %@", &v11, 0x20u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) path];
      v10 = [*(a1 + 40) path];
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "generated trimmed video of %@ to %@ ", &v11, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (void)runDaemonSide
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = objc_opt_class();
    v12 = 2112;
    selfCopy = self;
    v4 = v11;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "%@ : runDaemonSide %@", buf, 0x16u);
  }

  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLPublishCloudSharedAssetsJob runDaemonSide]"];
  highPriorityOperationQueue = [objc_opt_class() highPriorityOperationQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__PLPublishCloudSharedAssetsJob_runDaemonSide__block_invoke;
  v8[3] = &unk_1E7578848;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [highPriorityOperationQueue addOperationWithBlock:v8];
}

void __46__PLPublishCloudSharedAssetsJob_runDaemonSide__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) executeDaemonOperation];
  v3.receiver = *(a1 + 32);
  v3.super_class = PLPublishCloudSharedAssetsJob;
  objc_msgSendSuper2(&v3, sel_runDaemonSide);
  [*(a1 + 40) stillAlive];
  objc_autoreleasePoolPop(v2);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  publishAlbumCloudGUID = [(PLPublishCloudSharedAssetsJob *)self publishAlbumCloudGUID];
  originalAssetUUIDs = [(PLPublishCloudSharedAssetsJob *)self originalAssetUUIDs];
  if ([(PLPublishCloudSharedAssetsJob *)self isNewAlbum])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  batchCommentText = [(PLPublishCloudSharedAssetsJob *)self batchCommentText];
  v9 = [v3 stringWithFormat:@"%@ (albumGUID=%@ originalAssetUUIDs=%@ isNewAlbum=%@ batchComment=%@)", v4, publishAlbumCloudGUID, originalAssetUUIDs, v7, batchCommentText];

  return v9;
}

- (id)initFromXPCObject:(id)object libraryServicesManager:(id)manager
{
  objectCopy = object;
  v15.receiver = self;
  v15.super_class = PLPublishCloudSharedAssetsJob;
  v7 = [(PLCloudSharingJob *)&v15 initFromXPCObject:objectCopy libraryServicesManager:manager];
  if (v7)
  {
    v8 = PLStringFromXPCDictionary();
    [v7 setPublishAlbumCloudGUID:v8];

    v9 = PLArrayFromXPCDictionary();
    [v7 setOriginalAssetUUIDs:v9];

    v10 = PLArrayFromXPCDictionary();
    [v7 setStillImageOnlyAssetUUIDs:v10];

    [v7 setIsNewAlbum:{xpc_dictionary_get_BOOL(objectCopy, propertyKeyIsNewAlbum)}];
    v11 = PLStringFromXPCDictionary();
    [v7 setBatchCommentText:v11];

    v12 = PLDictionaryFromXPCDictionary();
    [v7 setCustomExportsInfo:v12];

    v13 = PLDictionaryFromXPCDictionary();
    [v7 setTrimmedVideoPathInfo:v13];
  }

  return v7;
}

- (void)encodeToXPCObject:(id)object
{
  objectCopy = object;
  v13.receiver = self;
  v13.super_class = PLPublishCloudSharedAssetsJob;
  [(PLDaemonJob *)&v13 encodeToXPCObject:objectCopy];
  publishAlbumCloudGUID = [(PLPublishCloudSharedAssetsJob *)self publishAlbumCloudGUID];
  PLXPCDictionarySetString();

  originalAssetUUIDs = [(PLPublishCloudSharedAssetsJob *)self originalAssetUUIDs];
  PLXPCDictionarySetArray();

  stillImageOnlyAssetUUIDs = [(PLPublishCloudSharedAssetsJob *)self stillImageOnlyAssetUUIDs];
  PLXPCDictionarySetArray();

  xpc_dictionary_set_BOOL(objectCopy, propertyKeyIsNewAlbum, [(PLPublishCloudSharedAssetsJob *)self isNewAlbum]);
  batchCommentText = [(PLPublishCloudSharedAssetsJob *)self batchCommentText];
  PLXPCDictionarySetString();

  customExportsInfo = [(PLPublishCloudSharedAssetsJob *)self customExportsInfo];

  if (customExportsInfo)
  {
    customExportsInfo2 = [(PLPublishCloudSharedAssetsJob *)self customExportsInfo];
    PLXPCDictionarySetDictionary();
  }

  trimmedVideoPathInfo = [(PLPublishCloudSharedAssetsJob *)self trimmedVideoPathInfo];

  if (trimmedVideoPathInfo)
  {
    trimmedVideoPathInfo2 = [(PLPublishCloudSharedAssetsJob *)self trimmedVideoPathInfo];
    PLXPCDictionarySetDictionary();
  }
}

+ (id)videoComplementURLForSharingFromAsset:(id)asset
{
  v23 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v4 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [assetCopy uuid];
    *buf = 138412290;
    v20 = uuid;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Determining video complement path to use. UUID: %@", buf, 0xCu);
  }

  v18 = 0;
  v6 = [assetCopy isPlayableVideo:&v18];
  v7 = v18;
  if (v6)
  {
    hasAdjustedVideoComplement = [assetCopy hasAdjustedVideoComplement];
    v9 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (hasAdjustedVideoComplement)
      {
        v10 = @"adjusted";
      }

      else
      {
        v10 = @"original";
      }

      uuid2 = [assetCopy uuid];
      *buf = 138412546;
      v20 = v10;
      v21 = 2112;
      v22 = uuid2;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Using the %@ original video component. UUID: %@", buf, 0x16u);
    }

    if (hasAdjustedVideoComplement)
    {
      [assetCopy pathForFullsizeRenderVideoFile];
    }

    else
    {
      [assetCopy pathForVideoComplementFile];
    }
    pathForMediumVideoFile = ;
  }

  else
  {
    v13 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      uuid3 = [assetCopy uuid];
      *buf = 138412546;
      v20 = v7;
      v21 = 2112;
      v22 = uuid3;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Falling back to medium, since the original video component is unsupported. Codec: %@, UUID: %@", buf, 0x16u);
    }

    pathForMediumVideoFile = [assetCopy pathForMediumVideoFile];
  }

  v15 = pathForMediumVideoFile;
  v16 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathForMediumVideoFile isDirectory:0];

  return v16;
}

+ (void)publishBatchOfOriginalAssetUUIDs:(id)ds toSharedAlbum:(id)album withAssetsSharingInfos:(id)infos customExportsInfo:(id)info trimmedVideoPathInfo:(id)pathInfo isNewAlbum:(BOOL)newAlbum batchCommentText:(id)text
{
  if (album)
  {
    newAlbumCopy = newAlbum;
    textCopy = text;
    pathInfoCopy = pathInfo;
    infoCopy = info;
    infosCopy = infos;
    albumCopy = album;
    dsCopy = ds;
    v21 = objc_alloc_init(objc_opt_class());
    [v21 setOriginalAssetUUIDs:dsCopy];

    v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(infosCopy, "count")}];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __170__PLPublishCloudSharedAssetsJob_publishBatchOfOriginalAssetUUIDs_toSharedAlbum_withAssetsSharingInfos_customExportsInfo_trimmedVideoPathInfo_isNewAlbum_batchCommentText___block_invoke;
    v25[3] = &unk_1E75718E0;
    v26 = v22;
    v23 = v22;
    [infosCopy enumerateKeysAndObjectsUsingBlock:v25];

    [v21 setStillImageOnlyAssetUUIDs:v23];
    cloudGUID = [albumCopy cloudGUID];

    [v21 setPublishAlbumCloudGUID:cloudGUID];
    [v21 setIsNewAlbum:newAlbumCopy];
    [v21 setBatchCommentText:textCopy];

    [v21 setCustomExportsInfo:infoCopy];
    [v21 setTrimmedVideoPathInfo:pathInfoCopy];

    [v21 run];
  }
}

void __170__PLPublishCloudSharedAssetsJob_publishBatchOfOriginalAssetUUIDs_toSharedAlbum_withAssetsSharingInfos_customExportsInfo_trimmedVideoPathInfo_isNewAlbum_batchCommentText___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 objectForKeyedSubscript:@"useStillImageOnly"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    [*(a1 + 32) addObject:v7];
  }
}

@end