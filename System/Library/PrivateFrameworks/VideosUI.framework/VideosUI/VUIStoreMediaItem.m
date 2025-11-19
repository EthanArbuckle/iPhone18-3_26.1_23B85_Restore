@interface VUIStoreMediaItem
@end

@implementation VUIStoreMediaItem

void __35__VUIStoreMediaItem_iOS_initialize__block_invoke()
{
  v0 = os_log_create("com.apple.AppleTV.playback", "VUIStoreMediaItem_iOS");
  v1 = sLogObject_14;
  sLogObject_14 = v0;

  v2 = os_log_create("com.apple.AppleTV.playback", "SecureKeyDelivery");
  v3 = sSecureKeyDeliveryLogObject;
  sSecureKeyDeliveryLogObject = v2;
}

void __86__VUIStoreMediaItem_iOS_initWithMPMediaItem_videoManagedObject_isForStartingDownload___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) canonicalID];
  [v2 setMediaItemMetadata:v3 forProperty:*MEMORY[0x1E69D5AE8]];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) referenceID];
  [v4 setMediaItemMetadata:v5 forProperty:*MEMORY[0x1E69D5CD8]];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) requiredAgeForPlayback];
  [v6 setMediaItemMetadata:v7 forProperty:*MEMORY[0x1E69D5D00]];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) frequencyOfAgeConfirmation];
  [v8 setMediaItemMetadata:v9 forProperty:*MEMORY[0x1E69D5BD8]];

  v10 = *(a1 + 32);
  v11 = [*(a1 + 40) mediaMetrics];
  [v10 setMediaItemMetadata:v11 forProperty:*MEMORY[0x1E69D5C70]];

  v12 = *(a1 + 32);
  v13 = [*(a1 + 40) downloadedPlaybackMode];
  [v12 setMediaItemMetadata:v13 forProperty:@"VUIMediaItemMetadataKeyDownloadedPlaybackMode"];

  v14 = *(a1 + 32);
  v15 = [*(a1 + 40) playablePassThrough];
  [v14 setMediaItemMetadata:v15 forProperty:@"VUIMediaItemMetadataPlayablePassThrough"];

  v16 = [*(a1 + 40) programID];
  if (!v16)
  {
    v17 = [*(a1 + 40) downloadURL];
    if (v17)
    {
      v37 = v17;
      v36 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v17 resolvingAgainstBaseURL:0];
      v18 = [v36 queryItems];
      v19 = [v18 mutableCopy];

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v20 = v19;
      v21 = [v20 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v21)
      {
        v22 = v21;
        v16 = 0;
        v23 = *v39;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v39 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v38 + 1) + 8 * i);
            v26 = [v25 name];
            v27 = [v26 isEqualToString:@"id"];

            if (v27)
            {
              v28 = [v25 value];

              v16 = v28;
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v22);
      }

      else
      {
        v16 = 0;
      }

      v17 = v37;
    }

    else
    {
      v16 = 0;
    }
  }

  [*(a1 + 32) setMediaItemMetadata:v16 forProperty:*MEMORY[0x1E69D5BF0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = *(a1 + 32);
    v30 = *(a1 + 40);
    v31 = [v30 series];
    v32 = [v31 canonicalID];
    [v29 setMediaItemMetadata:v32 forProperty:*MEMORY[0x1E69D5D50]];

    v33 = *(a1 + 32);
    v34 = [v30 season];
    v35 = [v34 canonicalID];
    [v33 setMediaItemMetadata:v35 forProperty:*MEMORY[0x1E69D5D28]];
  }
}

void __57__VUIStoreMediaItem_iOS_prepareForLoadingWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setFpsKeyError:0];

    v38 = MEMORY[0x1E69E9820];
    v39 = 3221225472;
    v40 = __57__VUIStoreMediaItem_iOS_prepareForLoadingWithCompletion___block_invoke_2;
    v41 = &unk_1E87333C0;
    objc_copyWeak(&v43, (a1 + 40));
    v42 = *(a1 + 32);
    v7 = _Block_copy(&v38);
    v8 = objc_loadWeakRetained((a1 + 40));
    v9 = [v8 mediaItemMetadataForProperty:{*MEMORY[0x1E69D5BD0], v38, v39, v40, v41}];
    v10 = [v9 BOOLValue];

    if (v10)
    {
      v11 = sLogObject_14;
      if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "Force streaming is set; configuring for streaming", buf, 2u);
      }

      v12 = objc_loadWeakRetained((a1 + 40));
      [v12 _configureForStreamingPlaybackWithCompletion:v7];
      goto LABEL_40;
    }

    v14 = objc_loadWeakRetained((a1 + 40));
    v15 = [v14 videoManagedObject];
    if (v15)
    {
      v16 = objc_loadWeakRetained((a1 + 40));
      v17 = [v16 videoManagedObject];
      v18 = [v17 downloadState];

      if (v18 == 2)
      {
        v19 = sLogObject_14;
        if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "Using local file path from sideband database", buf, 2u);
        }

        v20 = objc_loadWeakRetained((a1 + 40));
        v21 = [v20 videoManagedObject];
        v12 = [v21 localPlaybackURL];

        v22 = objc_alloc_init(MEMORY[0x1E696AC08]);
        v23 = [v12 path];
        if (!v23 || ([v22 fileExistsAtPath:v23] & 1) == 0)
        {
          if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_ERROR))
          {
            __57__VUIStoreMediaItem_iOS_prepareForLoadingWithCompletion___block_invoke_cold_1();
          }

          v24 = +[VUIMediaLibraryManager defaultManager];
          v25 = [v24 sidebandMediaLibrary];
          v26 = objc_loadWeakRetained((a1 + 40));
          v27 = [v26 videoManagedObject];
          [v25 removeDownloadedMediaForVideoManagedObject:v27 markAsDeleted:0 invalidateImmediately:1];
        }

        v18 = 2;
        if (v12)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {

      v18 = 0;
    }

    v28 = objc_loadWeakRetained((a1 + 40));
    v12 = [v28 _localPlaybackFilePathURL];

    if (v12)
    {
      v29 = sLogObject_14;
      if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v29, OS_LOG_TYPE_DEFAULT, "Using local file path from MediaLibrary database", buf, 2u);
      }

      v30 = 0;
LABEL_25:
      v31 = objc_loadWeakRetained((a1 + 40));
      [v31 setUseSidebandLibraryForPlaybackKeys:v30];

      v32 = objc_loadWeakRetained((a1 + 40));
      v33 = [v32 isForStartingDownload];
      if (v18 == 1)
      {
        v34 = 1;
      }

      else
      {
        v34 = v33;
      }

      if (v34)
      {
        v35 = objc_loadWeakRetained((a1 + 40));
        [v35 _configureForDownloadingWithCompletion:v7];
      }

      else if (v12)
      {
        v36 = sLogObject_14;
        if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v45 = v12;
          _os_log_impl(&dword_1E323F000, v36, OS_LOG_TYPE_DEFAULT, "Found local file path for this media item: %@", buf, 0xCu);
        }

        v35 = objc_loadWeakRetained((a1 + 40));
        [v35 _configureForLocalPlaybackWithURL:v12 completion:v7];
      }

      else
      {
        if (v18 != 3 && v18)
        {
          goto LABEL_40;
        }

        v37 = sLogObject_14;
        if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E323F000, v37, OS_LOG_TYPE_DEFAULT, "No local file path or download exists for this media item; configuring for streaming", buf, 2u);
        }

        v35 = objc_loadWeakRetained((a1 + 40));
        [v35 _configureForStreamingPlaybackWithCompletion:v7];
      }

LABEL_40:
      objc_destroyWeak(&v43);
      goto LABEL_41;
    }

LABEL_24:
    v30 = 1;
    goto LABEL_25;
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))(v13, 0, v5);
  }

LABEL_41:
}

void __57__VUIStoreMediaItem_iOS_prepareForLoadingWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = sLogObject_14;
  if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = [WeakRetained _videoPlaybackTypeDescription];
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "Playback type is %@", &v11, 0xCu);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, a2, v5);
  }
}

void __68__VUIStoreMediaItem_iOS_prepareForPlaybackInitiationWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = *MEMORY[0x1E69D5CA8];
  v7 = [WeakRetained mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
  v8 = MEMORY[0x1E69D6038];
  [v7 addEndEventWithName:*MEMORY[0x1E69D6038]];

  if (v14)
  {
    v9 = objc_loadWeakRetained((a1 + 40));
    v10 = [v9 mediaItemMetadataForProperty:v6];
    [v10 addSingleShotEventWithName:*MEMORY[0x1E69D5FA8] value:v14];

    v11 = objc_loadWeakRetained((a1 + 40));
    v12 = [v11 mediaItemMetadataForProperty:v6];
    [v12 addSingleShotEventWithName:*MEMORY[0x1E69D5FB0] value:*v8];
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))(v13, a2, v14);
  }
}

uint64_t __63__VUIStoreMediaItem_iOS_processFinishedDownloadWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

void __77__VUIStoreMediaItem_iOS_mediaItemAllInitialLoadingComplete_totalTime_player___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained mediaItemMetadataForProperty:*MEMORY[0x1E69D5CE8]];
  v3 = [WeakRetained mediaItemMetadataForProperty:*MEMORY[0x1E69D5B30]];
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69D49C8]) initWithAccountIdentifier:v3 rentalKeyIdentifier:v2];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __77__VUIStoreMediaItem_iOS_mediaItemAllInitialLoadingComplete_totalTime_player___block_invoke_2;
    v7[3] = &unk_1E8733410;
    v7[4] = WeakRetained;
    [v6 startWithResponseBlock:v7];
  }
}

void __77__VUIStoreMediaItem_iOS_mediaItemAllInitialLoadingComplete_totalTime_player___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__VUIStoreMediaItem_iOS_mediaItemAllInitialLoadingComplete_totalTime_player___block_invoke_3;
  block[3] = &unk_1E872E008;
  v11 = v6;
  v12 = v7;
  v13 = *(a1 + 32);
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __77__VUIStoreMediaItem_iOS_mediaItemAllInitialLoadingComplete_totalTime_player___block_invoke_3(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectForKey:*MEMORY[0x1E6993BB8]];
  v3 = sLogObject_14;
  if (v2)
  {
    if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "rentalInformation: %@ error: %@", &v7, 0x16u);
    }

    v6 = sLogObject_14;
    if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v2;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "Playback start date: %@", &v7, 0xCu);
    }

    [*(a1 + 48) _updateRentalPlaybackStartDate:v2];
  }

  else if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_ERROR))
  {
    __77__VUIStoreMediaItem_iOS_mediaItemAllInitialLoadingComplete_totalTime_player___block_invoke_3_cold_1();
  }
}

uint64_t __69__VUIStoreMediaItem_iOS_loadFairPlayStreamingKeyRequests_completion___block_invoke(uint64_t a1)
{
  v2 = sLogObject_14;
  if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_DEFAULT, "Received response for key request(s)", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __94__VUIStoreMediaItem_iOS__configureForPlaybackFromExistingDownload_downloadManager_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v74 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = [WeakRetained _loadingCancelled:*(a1 + 56)];

  if ((v7 & 1) == 0)
  {
    if (a2 == 1)
    {
      v8 = objc_loadWeakRetained((a1 + 48));
      v9 = [v8 _localPlaybackFilePathURL];

      v10 = [v9 pathExtension];
      v11 = [v10 isEqualToString:@"movpkg"];

      v12 = sLogObject_14;
      if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v73 = v9;
        _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "After downloading, using local file path for this media item: %@", buf, 0xCu);
      }

      v13 = objc_loadWeakRetained((a1 + 48));
      [v13 setPlaybackURL:v9];

      v14 = objc_loadWeakRetained((a1 + 48));
      v15 = v14;
      if (v11)
      {
        v16 = 6;
      }

      else
      {
        v16 = 5;
      }

      if (v11)
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }

      [v14 setPlaybackType:v16];

      v18 = objc_loadWeakRetained((a1 + 48));
      v19 = *MEMORY[0x1E69D5CA8];
      v20 = [v18 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
      [v20 setIsDownloaded:1];

      v21 = objc_loadWeakRetained((a1 + 48));
      v22 = [v21 mediaItemMetadataForProperty:v19];
      [v22 setVideoType:v17];

      (*(*(a1 + 40) + 16))();
    }

    else if (a2 == 2)
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v23 = [*(a1 + 32) assetsForType:*MEMORY[0x1E69D4AA0]];
      v24 = [v23 firstObject];

      v26 = *MEMORY[0x1E69D4A88];
      v69[0] = *MEMORY[0x1E69D4A90];
      v25 = v69[0];
      v69[1] = v26;
      v28 = *MEMORY[0x1E69D4A80];
      v70 = *MEMORY[0x1E69D4A78];
      v27 = v70;
      v71 = v28;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:4];
      v30 = [v24 vui_valuesForProperties:v29];

      v31 = [v30 objectForKey:v25];
      v32 = v26;
      v33 = v24;
      v34 = [v30 objectForKey:v32];
      v35 = [v30 objectForKey:v27];
      v36 = v28;
      v37 = v31;
      v38 = [v30 objectForKey:v36];
      v64 = [v38 BOOLValue];

      v66 = [v24 sinfs];
      if (![v37 length] || (v39 = objc_msgSend(objc_alloc(MEMORY[0x1E695DFF8]), "initWithString:", v37)) == 0)
      {
        if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_ERROR))
        {
          __94__VUIStoreMediaItem_iOS__configureForPlaybackFromExistingDownload_downloadManager_completion___block_invoke_cold_1();
        }

        v39 = 0;
      }

      objc_opt_class();
      v65 = v34;
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![v34 length] || (objc_msgSend(MEMORY[0x1E695DFF8], "fileURLWithPath:", v34), (v40 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_ERROR))
        {
          __94__VUIStoreMediaItem_iOS__configureForPlaybackFromExistingDownload_downloadManager_completion___block_invoke_cold_2();
        }

        v40 = 0;
      }

      if (!v35 || ![v35 unsignedLongLongValue] || (v41 = objc_msgSend(v35, "unsignedLongLongValue"), v41 == *MEMORY[0x1E69D4A38]))
      {
        if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_ERROR))
        {
          __94__VUIStoreMediaItem_iOS__configureForPlaybackFromExistingDownload_downloadManager_completion___block_invoke_cold_3();
        }

        v35 = 0;
      }

      if (!v66)
      {
        v42 = sLogObject_14;
        if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E323F000, v42, OS_LOG_TYPE_DEFAULT, "sinfsArray is nil", buf, 2u);
        }
      }

      if (v39 && v40 && v35)
      {
        v62 = v37;
        v43 = v24;
        v44 = objc_loadWeakRetained((a1 + 48));
        [v44 setPlaybackURL:v39];

        if (v66)
        {
          v45 = objc_loadWeakRetained((a1 + 48));
          v67 = @"sinfs";
          v68 = v66;
          v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
          [v45 setSinfsDict:v46];
        }

        v47 = objc_loadWeakRetained((a1 + 48));
        [v47 setDownloadToken:v35];

        v48 = objc_loadWeakRetained((a1 + 48));
        [v48 setDownloadDestinationURL:v40];

        v49 = objc_loadWeakRetained((a1 + 48));
        v50 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v24, "fileSize")}];
        [v49 setFileSize:v50];

        v51 = objc_loadWeakRetained((a1 + 48));
        v52 = v51;
        if (v64)
        {
          v53 = 4;
        }

        else
        {
          v53 = 3;
        }

        if (v64)
        {
          v54 = 2;
        }

        else
        {
          v54 = 1;
        }

        [v51 setPlaybackType:{v53, v62}];

        v55 = objc_loadWeakRetained((a1 + 48));
        v56 = [v55 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
        v57 = v54;
        v33 = v43;
        [v56 setVideoType:v57];

        (*(*(a1 + 40) + 16))();
        v37 = v63;
      }

      else
      {
        v58 = *(a1 + 40);
        v59 = objc_alloc(MEMORY[0x1E696ABC0]);
        v60 = [v59 initWithDomain:VUIStoreMediaItemErrorDomain code:-123004 userInfo:0];
        (*(v58 + 16))(v58, 0, v60);
      }
    }

    v61 = objc_loadWeakRetained((a1 + 48));
    [v61 setDownloadMonitor:0];
  }
}

void __70__VUIStoreMediaItem_iOS__configureForStreamingPlaybackWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v85 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained _loadingCancelled:*(a1 + 48)];

  v9 = v6;
  if ((v8 & 1) == 0)
  {
    v10 = MEMORY[0x1E69D5CA8];
    v69 = v6;
    if (v5)
    {
      v70 = a1;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v68 = v5;
      obj = [v5 objectForKey:@"assets"];
      v11 = [obj countByEnumeratingWithState:&v76 objects:v84 count:16];
      if (!v11)
      {
        v13 = 0;
        v71 = 0;
        v72 = 0;
        v75 = 0;
        goto LABEL_22;
      }

      v12 = v11;
      v13 = 0;
      v71 = 0;
      v72 = 0;
      v75 = 0;
      v14 = *v77;
      while (1)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v77 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v76 + 1) + 8 * i);
          v17 = [v16 objectForKey:@"flavor"];
          if ([v17 isEqualToString:@"1080p"])
          {
            v18 = v75;
            v19 = v13;
            v75 = v16;
          }

          else if ([v17 isEqualToString:@"720p"])
          {
            v18 = v72;
            v19 = v13;
            v72 = v16;
          }

          else if ([v17 isEqualToString:@"480p"])
          {
            v18 = v71;
            v19 = v13;
            v71 = v16;
          }

          else
          {
            v18 = v13;
            v19 = v16;
            if (![v17 isEqualToString:@"SD"])
            {
              goto LABEL_16;
            }
          }

          v20 = v16;

          v13 = v19;
LABEL_16:
        }

        v12 = [obj countByEnumeratingWithState:&v76 objects:v84 count:16];
        if (!v12)
        {
LABEL_22:

          v21 = +[VUIPlaybackSettings sharedSettings];
          v22 = [v21 preferredPlaybackQualityForCurrentNetworkStatus];

          v23 = objc_loadWeakRetained((a1 + 40));
          v24 = [v23 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C80]];

          if (v24)
          {
            v22 = [v24 BOOLValue] ^ 1;
          }

          if (!v22 && (v25 = v75) != 0 || !v22 && (v25 = v72) != 0 || (v25 = v71) != 0 || (v25 = v13) != 0)
          {
            v26 = v25;
            v27 = sLogObject_14;
            if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
            {
              v28 = v27;
              v29 = [v26 objectForKey:@"flavor"];
              *buf = 138412290;
              v83 = v29;
              _os_log_impl(&dword_1E323F000, v28, OS_LOG_TYPE_DEFAULT, "Preferred CRABS asset flavor: %@", buf, 0xCu);
            }
          }

          else
          {
            v65 = sLogObject_14;
            if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
            {
              v66 = v65;
              v67 = [v68 valueForKeyPath:@"asset-info.flavor"];
              *buf = 138412290;
              v83 = v67;
              _os_log_impl(&dword_1E323F000, v66, OS_LOG_TYPE_DEFAULT, "No assets available in store item dictionary.  Returning store item dictionary itself.  Flavor is %@", buf, 0xCu);
            }

            v26 = v68;
          }

          v30 = [v26 objectForKey:@"URL"];
          v31 = [v68 objectForKey:@"hls-playlist-url"];
          if ([v31 length] && (*(v70 + 56) & 1) == 0)
          {
            obja = v30;
            v42 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v31];
            v43 = objc_loadWeakRetained((v70 + 40));
            v44 = [v43 _hlsURLEnsuringDsidQueryParamIsPresentFromURL:v42];

            v45 = objc_loadWeakRetained((v70 + 40));
            v32 = +[VUIPlaybackUtilities updatedHLSURL:forPlaybackContext:](VUIPlaybackUtilities, "updatedHLSURL:forPlaybackContext:", v44, [v45 playbackContext]);

            v46 = objc_loadWeakRetained((v70 + 40));
            [v46 setPlaybackURL:v32];

            v47 = objc_loadWeakRetained((v70 + 40));
            [v47 setPlaybackType:2];

            v48 = objc_loadWeakRetained((v70 + 40));
            v49 = [v48 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
            [v49 setVideoType:2];

            v50 = sLogObject_14;
            if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1E323F000, v50, OS_LOG_TYPE_DEFAULT, "Updating ML3Track's HLS playlist URL", buf, 2u);
            }

            v51 = objc_loadWeakRetained((v70 + 40));
            v52 = [v51 ml3Track];
            v81 = v31;
            v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
            v80 = *MEMORY[0x1E69B2FD8];
            v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
            [v52 setValues:v53 forProperties:v54 async:1 withCompletionBlock:0];

            v9 = v69;
            v30 = obja;
          }

          else if (v30)
          {
            v32 = [MEMORY[0x1E695DFF8] URLWithString:v30];
            v33 = objc_loadWeakRetained((v70 + 40));
            v34 = [v26 objectForKey:@"downloadKey"];
            [v33 _setDownloadKeyCookieWithURL:v32 downloadKey:v34];

            v35 = objc_loadWeakRetained((v70 + 40));
            [v35 setPlaybackURL:v32];

            v36 = objc_loadWeakRetained((v70 + 40));
            [v36 setSinfsDict:v26];

            v37 = objc_loadWeakRetained((v70 + 40));
            v38 = [v26 objectForKey:@"file-size"];
            [v37 setFileSize:v38];

            v39 = objc_loadWeakRetained((v70 + 40));
            [v39 setPlaybackType:1];

            v40 = objc_loadWeakRetained((v70 + 40));
            v41 = [v40 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
            [v41 setVideoType:1];

            v9 = v69;
          }

          else
          {
            v55 = objc_alloc(MEMORY[0x1E696ABC0]);
            v9 = [v55 initWithDomain:VUIStoreMediaItemErrorDomain code:-123005 userInfo:0];
            v32 = v69;
          }

          v5 = v68;
          a1 = v70;
          v10 = MEMORY[0x1E69D5CA8];
          goto LABEL_41;
        }
      }
    }

    if (v6)
    {
      v9 = v6;
    }

    else
    {
      if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_ERROR))
      {
        __70__VUIStoreMediaItem_iOS__configureForStreamingPlaybackWithCompletion___block_invoke_cold_1();
      }

      v64 = objc_alloc(MEMORY[0x1E696ABC0]);
      v9 = [v64 initWithDomain:VUIStoreMediaItemErrorDomain code:-123006 userInfo:0];
    }

LABEL_41:
    v56 = objc_loadWeakRetained((a1 + 40));
    v57 = *v10;
    v58 = [v56 mediaItemMetadataForProperty:*v10];
    v59 = MEMORY[0x1E69D5F90];
    [v58 addEndEventWithName:*MEMORY[0x1E69D5F90]];

    if (v9)
    {
      v60 = objc_loadWeakRetained((a1 + 40));
      v61 = [v60 mediaItemMetadataForProperty:v57];
      [v61 addSingleShotEventWithName:*MEMORY[0x1E69D5FA8] value:v9];

      v62 = objc_loadWeakRetained((a1 + 40));
      v63 = [v62 mediaItemMetadataForProperty:v57];
      [v63 addSingleShotEventWithName:*MEMORY[0x1E69D5FB0] value:*v59];
    }

    (*(*(a1 + 32) + 16))();
    v6 = v69;
  }
}

void __64__VUIStoreMediaItem_iOS__configureForDownloadingWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v76 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained _loadingCancelled:*(a1 + 48)];

  v9 = v6;
  if (v8)
  {
    goto LABEL_41;
  }

  if (!v5)
  {
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_ERROR))
      {
        __70__VUIStoreMediaItem_iOS__configureForStreamingPlaybackWithCompletion___block_invoke_cold_1();
      }

      v58 = objc_alloc(MEMORY[0x1E696ABC0]);
      v9 = [v58 initWithDomain:VUIStoreMediaItemErrorDomain code:-123006 userInfo:0];
    }

    goto LABEL_40;
  }

  v62 = v6;
  v63 = v5;
  v64 = a1;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = [v5 objectForKey:@"assets"];
  v10 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
  if (!v10)
  {
    v12 = 0;
    v65 = 0;
    v66 = 0;
    v68 = 0;
    goto LABEL_22;
  }

  v11 = v10;
  v12 = 0;
  v65 = 0;
  v66 = 0;
  v68 = 0;
  v13 = *v70;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v70 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v69 + 1) + 8 * i);
      v16 = [v15 objectForKey:@"flavor"];
      if ([v16 isEqualToString:@"1080p"])
      {
        v17 = v68;
        v18 = v12;
        v68 = v15;
      }

      else if ([v16 isEqualToString:@"720p"])
      {
        v17 = v66;
        v18 = v12;
        v66 = v15;
      }

      else if ([v16 isEqualToString:@"480p"])
      {
        v17 = v65;
        v18 = v12;
        v65 = v15;
      }

      else
      {
        v17 = v12;
        v18 = v15;
        if (![v16 isEqualToString:@"SD"])
        {
          goto LABEL_16;
        }
      }

      v19 = v15;

      v12 = v18;
LABEL_16:
    }

    v11 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
  }

  while (v11);
LABEL_22:

  v20 = objc_loadWeakRetained((v64 + 40));
  v21 = [v20 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyDownloadQuality"];
  v22 = [v21 integerValue];

  if (!v22 && (v23 = v68) != 0 || (v23 = v66) != 0 || (v23 = v65) != 0 || (v23 = v12) != 0)
  {
    v24 = v23;
    v25 = sLogObject_14;
    v26 = v5;
    if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v25;
      v28 = [v24 objectForKey:@"flavor"];
      *buf = 138412290;
      v74 = v28;
      _os_log_impl(&dword_1E323F000, v27, OS_LOG_TYPE_DEFAULT, "Preferred CRABS asset flavor: %@", buf, 0xCu);
    }
  }

  else
  {
    v59 = sLogObject_14;
    v26 = v5;
    if (os_log_type_enabled(sLogObject_14, OS_LOG_TYPE_DEFAULT))
    {
      v60 = v59;
      v61 = [v5 valueForKeyPath:@"asset-info.flavor"];
      *buf = 138412290;
      v74 = v61;
      _os_log_impl(&dword_1E323F000, v60, OS_LOG_TYPE_DEFAULT, "No assets available in store item dictionary.  Returning store item dictionary itself.  Flavor is %@", buf, 0xCu);
    }

    v24 = v5;
  }

  v29 = [v24 objectForKey:@"URL"];
  v30 = [v26 objectForKey:@"hls-playlist-url"];
  if ([v30 length] && (*(v64 + 56) & 1) == 0)
  {
    v47 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v30];
    v48 = objc_loadWeakRetained((v64 + 40));
    v49 = [v48 _hlsURLEnsuringDsidQueryParamIsPresentFromURL:v47];

    v31 = [v49 vui_URLByAddingQueryParamWithName:@"playback-type" value:@"download"];

    v50 = objc_loadWeakRetained((v64 + 40));
    [v50 setPlaybackURL:v31];

    v51 = objc_loadWeakRetained((v64 + 40));
    [v51 setPlaybackType:4];

    v52 = objc_loadWeakRetained((v64 + 40));
    v53 = [v52 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
    [v53 setVideoType:2];

LABEL_34:
    v9 = v62;
  }

  else
  {
    if (v29)
    {
      v31 = [MEMORY[0x1E695DFF8] URLWithString:v29];
      v32 = objc_loadWeakRetained((v64 + 40));
      v33 = [v24 objectForKey:@"downloadKey"];
      [v32 _setDownloadKeyCookieWithURL:v31 downloadKey:v33];

      v34 = objc_loadWeakRetained((v64 + 40));
      [v34 setPlaybackURL:v31];

      v35 = objc_loadWeakRetained((v64 + 40));
      [v35 setSinfsDict:v24];

      v36 = objc_loadWeakRetained((v64 + 40));
      v37 = [v24 objectForKey:@"file-size"];
      [v36 setFileSize:v37];

      v38 = objc_loadWeakRetained((v64 + 40));
      [v38 setPlaybackType:3];

      v39 = objc_loadWeakRetained((v64 + 40));
      v40 = [v39 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
      [v40 setVideoType:1];

      v41 = objc_loadWeakRetained((v64 + 40));
      v42 = [v41 videoManagedObject];
      [v42 setPlaybackURL:v31];

      v43 = objc_loadWeakRetained((v64 + 40));
      v44 = [v43 videoManagedObject];
      [v44 setRedownloadProductResponseDictionary:v24];

      v45 = +[VUIMediaLibraryManager defaultManager];
      v46 = [v45 sidebandMediaLibrary];
      [v46 saveChangesToManagedObjects];

      goto LABEL_34;
    }

    v54 = objc_alloc(MEMORY[0x1E696ABC0]);
    v9 = [v54 initWithDomain:VUIStoreMediaItemErrorDomain code:-123005 userInfo:0];
    v31 = v62;
  }

  v5 = v63;
  v55 = [v63 vui_numberForKey:@"rental-id"];
  v56 = v55;
  if (v55 && ([v55 isEqualToNumber:&unk_1F5E5D7E8] & 1) == 0)
  {
    v57 = objc_loadWeakRetained((v64 + 40));
    [v57 setMediaItemMetadata:v56 forProperty:*MEMORY[0x1E69D5CE8]];
  }

  a1 = v64;
  v6 = v62;
LABEL_40:
  (*(*(a1 + 32) + 16))();
LABEL_41:
}

void __87__VUIStoreMediaItem_iOS__checkoutRentalWithCheckoutType_startPlaybackClock_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = v5;
  v8 = [v7 domain];
  if ([v8 isEqualToString:@"TVPlaybackErrorDomain"])
  {
    v9 = [v7 code];

    v10 = v7;
    if (v9 == 812)
    {
      v11 = [WeakRetained mediaItemMetadataForProperty:*MEMORY[0x1E69D5DC0]];
      if (![(__CFString *)v11 length])
      {

        v11 = &stru_1F5DB25C0;
      }

      v12 = MEMORY[0x1E696AEC0];
      v13 = +[VUILocalizationManager sharedInstance];
      v14 = [v13 localizedStringForKey:@"TOO_MANY_STREAMS_FORMAT"];
      v15 = [v12 stringWithValidatedFormat:v14 validFormatSpecifiers:@"%@" error:0, v11];

      v18 = *MEMORY[0x1E696A598];
      v19[0] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v10 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"TVPlaybackErrorDomain" code:812 userInfo:v16];
    }
  }

  else
  {

    v10 = v7;
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    (*(v17 + 16))(v17, a2, v10);
  }
}

void __57__VUIStoreMediaItem_iOS_prepareForLoadingWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __77__VUIStoreMediaItem_iOS_mediaItemAllInitialLoadingComplete_totalTime_player___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __94__VUIStoreMediaItem_iOS__configureForPlaybackFromExistingDownload_downloadManager_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __94__VUIStoreMediaItem_iOS__configureForPlaybackFromExistingDownload_downloadManager_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __94__VUIStoreMediaItem_iOS__configureForPlaybackFromExistingDownload_downloadManager_completion___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __70__VUIStoreMediaItem_iOS__configureForStreamingPlaybackWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end