@interface VUIPostPlayDataManager
+ (id)_generateMediaInfoFromJSResponse:(id)a3;
+ (id)_metricsForPostPlayMediaItemFromLibrary:(id)a3;
+ (void)_fetchContentFromLibraryForCurrentMediaItem:(id)a3 completion:(id)a4;
+ (void)_fetchPostPlayItemFromJSForSeriesCanonicalID:(id)a3 andVideoCanonicalID:(id)a4 seasonNumber:(id)a5 completion:(id)a6;
+ (void)_fetchPostPlayItemFromLibraryContentForStoreID:(id)a3 completion:(id)a4;
+ (void)fetchPostPlayItemForCurrentMediaItem:(id)a3 completion:(id)a4;
@end

@implementation VUIPostPlayDataManager

+ (void)fetchPostPlayItemForCurrentMediaItem:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (fetchPostPlayItemForCurrentMediaItem_completion__onceToken != -1)
  {
    +[VUIPostPlayDataManager fetchPostPlayItemForCurrentMediaItem:completion:];
  }

  if (![v5 hasTrait:*MEMORY[0x1E69D5E68]])
  {
    v8 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D50]];
    v9 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];
    v10 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D30]];
    if (v9)
    {
      if (+[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable])
      {
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __74__VUIPostPlayDataManager_fetchPostPlayItemForCurrentMediaItem_completion___block_invoke_74;
        v18[3] = &unk_1E8733088;
        v11 = &v19;
        v19 = v6;
        [VUIPostPlayDataManager _fetchPostPlayItemFromJSForSeriesCanonicalID:v8 andVideoCanonicalID:v9 seasonNumber:v10 completion:v18];
LABEL_15:

        goto LABEL_16;
      }

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __74__VUIPostPlayDataManager_fetchPostPlayItemForCurrentMediaItem_completion___block_invoke_76;
      v16[3] = &unk_1E87330B0;
      v11 = &v17;
      v17 = v6;
      v13 = v16;
    }

    else
    {
      v12 = sLogObject_13;
      if (os_log_type_enabled(sLogObject_13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "Current Item has no canonical id; checking with storeID", buf, 2u);
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __74__VUIPostPlayDataManager_fetchPostPlayItemForCurrentMediaItem_completion___block_invoke_78;
      v14[3] = &unk_1E87330B0;
      v11 = &v15;
      v15 = v6;
      v13 = v14;
    }

    [VUIPostPlayDataManager _fetchContentFromLibraryForCurrentMediaItem:v5 completion:v13];
    goto LABEL_15;
  }

  v7 = sLogObject_13;
  if (os_log_type_enabled(sLogObject_13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "Current Item is a Scene, no post play allowed", buf, 2u);
  }

  (*(v6 + 2))(v6, 0, 0, 0, 0, 0, 0);
LABEL_16:
}

void __74__VUIPostPlayDataManager_fetchPostPlayItemForCurrentMediaItem_completion___block_invoke()
{
  v0 = os_log_create("com.apple.AppleTV.playback", "VUIPostPlayDataManager");
  v1 = sLogObject_13;
  sLogObject_13 = v0;
}

void __74__VUIPostPlayDataManager_fetchPostPlayItemForCurrentMediaItem_completion___block_invoke_74(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  if (v13)
  {
    v17 = *(*(a1 + 32) + 16);
  }

  else if (v15)
  {
    v17 = *(*(a1 + 32) + 16);
  }

  else
  {
    v18 = sLogObject_13;
    if (os_log_type_enabled(sLogObject_13, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_1E323F000, v18, OS_LOG_TYPE_DEFAULT, "Failed to find post play item from JS", v19, 2u);
    }

    v17 = *(*(a1 + 32) + 16);
  }

  v17();
}

void __74__VUIPostPlayDataManager_fetchPostPlayItemForCurrentMediaItem_completion___block_invoke_76(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [VUIPostPlayDataManager _metricsForPostPlayMediaItemFromLibrary:v5];
  (*(*(a1 + 32) + 16))();
}

void __74__VUIPostPlayDataManager_fetchPostPlayItemForCurrentMediaItem_completion___block_invoke_78(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [VUIPostPlayDataManager _metricsForPostPlayMediaItemFromLibrary:v5];
  (*(*(a1 + 32) + 16))();
}

+ (id)_metricsForPostPlayMediaItemFromLibrary:(id)a3
{
  v23[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];
    if ([v5 length])
    {
      v6 = [v4 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D50]];
      v7 = MEMORY[0x1E695DF90];
      v22[0] = @"pageId";
      v22[1] = @"pageType";
      v23[0] = v5;
      v23[1] = @"PostPlay";
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
      v9 = [v7 dictionaryWithDictionary:v8];

      if ([v6 length])
      {
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObject:v6 forKey:@"showId"];
        [v9 setObject:v10 forKeyedSubscript:@"pageDetails"];
      }

      v11 = [VUIMetricsMediaEvent clickMetricsFromTVPMediaItem:v4];
      v12 = [v11 mutableCopy];

      v20[0] = @"actionType";
      v20[1] = @"targetType";
      v21[0] = @"play";
      v21[1] = @"lockup";
      v20[2] = @"targetId";
      v21[2] = v5;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
      [v12 addEntriesFromDictionary:v13];

      v18[0] = @"VUIContentMetadataPostPlayItemMetricsClickDataKey";
      v14 = [v12 copy];
      v18[1] = @"VUIContentMetadataPostPlayItemMetricsPageDataKey";
      v19[0] = v14;
      v15 = [v9 copy];
      v19[1] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (void)_fetchPostPlayItemFromJSForSeriesCanonicalID:(id)a3 andVideoCanonicalID:(id)a4 seasonNumber:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([v9 length])
  {
    [v13 setObject:v9 forKey:@"showCanonicalId"];
  }

  if ([v10 length])
  {
    [v13 setObject:v10 forKey:@"canonicalId"];
  }

  if (v11)
  {
    [v13 setObject:v11 forKey:@"seasonNumber"];
  }

  v14 = sLogObject_13;
  if (os_log_type_enabled(sLogObject_13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "Fetching MediaEntity from JS for current TVPMediaItem", buf, 2u);
  }

  v15 = +[VUITVAppLauncher sharedInstance];
  v16 = [v15 appController];

  v17 = [v16 appContext];
  if (v17)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __115__VUIPostPlayDataManager__fetchPostPlayItemFromJSForSeriesCanonicalID_andVideoCanonicalID_seasonNumber_completion___block_invoke;
    v18[3] = &unk_1E872FC68;
    v19 = v13;
    v20 = v12;
    [v17 evaluate:v18];
  }

  else
  {
    (*(v12 + 2))(v12, 0, 0, 0, 0, 0, 0);
  }
}

void __115__VUIPostPlayDataManager__fetchPostPlayItemFromJSForSeriesCanonicalID_andVideoCanonicalID_seasonNumber_completion___block_invoke(uint64_t a1, void *a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = [a2 objectForKeyedSubscript:@"PostPlayItemInterface"];
  v12[0] = *(a1 + 32);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __115__VUIPostPlayDataManager__fetchPostPlayItemFromJSForSeriesCanonicalID_andVideoCanonicalID_seasonNumber_completion___block_invoke_2;
  v10 = &unk_1E872FC40;
  v11 = *(a1 + 40);
  v4 = _Block_copy(&v7);
  v12[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:{2, v7, v8, v9, v10}];
  v6 = [v3 invokeMethod:@"getPostPlayItem" withArguments:v5];
}

void __115__VUIPostPlayDataManager__fetchPostPlayItemFromJSForSeriesCanonicalID_andVideoCanonicalID_seasonNumber_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __115__VUIPostPlayDataManager__fetchPostPlayItemFromJSForSeriesCanonicalID_andVideoCanonicalID_seasonNumber_completion___block_invoke_3;
  v8 = &unk_1E872E580;
  v9 = v3;
  v10 = *(a1 + 32);
  v4 = MEMORY[0x1E696AF00];
  v5 = v3;
  if ([v4 isMainThread])
  {
    v7(v6);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

void __115__VUIPostPlayDataManager__fetchPostPlayItemFromJSForSeriesCanonicalID_andVideoCanonicalID_seasonNumber_completion___block_invoke_3(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = sLogObject_13;
  if (os_log_type_enabled(sLogObject_13, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v16 = 138412290;
    v17 = v3;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_DEFAULT, "PostPlay JS Fetch Complete: %@", &v16, 0xCu);
  }

  v4 = [*(a1 + 32) vui_dictionaryForKey:@"playable"];
  v5 = [*(a1 + 32) vui_dictionaryForKey:@"postPlayViewEntity"];
  v6 = [*(a1 + 32) vui_dictionaryForKey:@"metrics"];
  v7 = [*(a1 + 32) vui_dictionaryForKey:@"routerDataSource"];
  v8 = v7;
  if (v4)
  {
    [*(a1 + 32) vui_BOOLForKey:@"canAutoPlay" defaultValue:1];
    v9 = [VUIPostPlayDataManager _generateMediaInfoFromJSResponse:v4];
    v10 = [v9 tvpPlaylist];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 trackList];
      v13 = [v12 firstObject];

      v14 = sLogObject_13;
      if (os_log_type_enabled(sLogObject_13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v13;
        _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "Found Next Media Item for Post Play: <%@>", &v16, 0xCu);
      }
    }

    else
    {
      v13 = 0;
    }

    v15 = 0;
  }

  else
  {
    if (v7)
    {
      v15 = [[VUIRouterDataSource alloc] initWithRouterData:v7 appContext:0];
    }

    else
    {
      v15 = 0;
    }

    v13 = 0;
    v9 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

+ (void)_fetchPostPlayItemFromLibraryContentForStoreID:(id)a3 completion:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = +[VUIMediaLibraryManager defaultManager];
  v8 = [v7 aggregateMediaLibrary];

  v9 = +[VUIMediaEntityFetchRequest episodesFetchRequest];
  [v9 addAdamIdPredicate:v5];
  v10 = sLogObject_13;
  if (os_log_type_enabled(sLogObject_13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "Fetching MediaEntity from Library for current TVPMediaItem", buf, 2u);
  }

  v19[0] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__VUIPostPlayDataManager__fetchPostPlayItemFromLibraryContentForStoreID_completion___block_invoke;
  v15[3] = &unk_1E8733150;
  v16 = v5;
  v17 = v6;
  v12 = v5;
  v13 = v6;
  v14 = [v8 enqueueFetchRequests:v11 completionHandler:v15];
}

void __84__VUIPostPlayDataManager__fetchPostPlayItemFromLibraryContentForStoreID_completion___block_invoke(uint64_t a1, void *a2)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v3 = [a2 firstObject];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 mediaEntities];
    v6 = [v5 firstObject];

    if (!v6)
    {
      v15 = sLogObject_13;
      if (os_log_type_enabled(sLogObject_13, OS_LOG_TYPE_ERROR))
      {
        __84__VUIPostPlayDataManager__fetchPostPlayItemFromLibraryContentForStoreID_completion___block_invoke_cold_1(v15);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      v21 = __84__VUIPostPlayDataManager__fetchPostPlayItemFromLibraryContentForStoreID_completion___block_invoke_98;
      v22 = &unk_1E872D7E0;
      v23 = *(a1 + 40);
      if ([MEMORY[0x1E696AF00] isMainThread])
      {
        v21(block);
      }

      else
      {
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }

      v8 = v23;
      goto LABEL_21;
    }

    v7 = [v6 showIdentifier];
    if (v7)
    {
      v8 = v7;
      v9 = [VUIMediaEntityFetchRequest episodesGroupedBySeasonIdentifierFetchRequestWithShowIdentifier:v7];
      v10 = sLogObject_13;
      if (os_log_type_enabled(sLogObject_13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "Fetching Series for current MediaEntity", buf, 2u);
      }

      v11 = [v6 mediaLibrary];
      v32[0] = v9;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __84__VUIPostPlayDataManager__fetchPostPlayItemFromLibraryContentForStoreID_completion___block_invoke_89;
      v24[3] = &unk_1E8733128;
      v25 = *(a1 + 32);
      v26 = *(a1 + 40);
      v13 = [v11 enqueueFetchRequests:v12 completionHandler:v24];

LABEL_21:
      goto LABEL_24;
    }

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v29 = __84__VUIPostPlayDataManager__fetchPostPlayItemFromLibraryContentForStoreID_completion___block_invoke_2;
    v30 = &unk_1E872D7E0;
    v31 = *(a1 + 40);
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v29(v28);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], v28);
    }
  }

  else
  {
    v14 = sLogObject_13;
    if (os_log_type_enabled(sLogObject_13, OS_LOG_TYPE_ERROR))
    {
      __84__VUIPostPlayDataManager__fetchPostPlayItemFromLibraryContentForStoreID_completion___block_invoke_cold_2(v14);
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v17 = __84__VUIPostPlayDataManager__fetchPostPlayItemFromLibraryContentForStoreID_completion___block_invoke_99;
    v18 = &unk_1E872D7E0;
    v19 = *(a1 + 40);
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v17(v16);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], v16);
    }

    v6 = v19;
  }

LABEL_24:
}

void __84__VUIPostPlayDataManager__fetchPostPlayItemFromLibraryContentForStoreID_completion___block_invoke_89(uint64_t a1, void *a2, void *a3)
{
  v65[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 firstObject];
  v8 = [v7 grouping];
  if ([v8 count])
  {
    *buf = 0;
    v58 = buf;
    v59 = 0x3032000000;
    v60 = __Block_byref_object_copy__16;
    v61 = __Block_byref_object_dispose__16;
    v62 = 0;
    v51 = 0;
    v52 = &v51;
    v53 = 0x3032000000;
    v54 = __Block_byref_object_copy__16;
    v55 = __Block_byref_object_dispose__16;
    v56 = 0;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __84__VUIPostPlayDataManager__fetchPostPlayItemFromLibraryContentForStoreID_completion___block_invoke_90;
    v47[3] = &unk_1E8733100;
    v49 = buf;
    v50 = &v51;
    v48 = *(a1 + 32);
    [v8 enumerateObjectsUsingBlock:v47];
    v9 = v52[5];
    if (!v9)
    {
      v29 = sLogObject_13;
      if (os_log_type_enabled(sLogObject_13, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 0;
        _os_log_impl(&dword_1E323F000, v29, OS_LOG_TYPE_DEFAULT, "No Next Episode for Post Play", v63, 2u);
      }

      v17 = 0;
      v18 = 0;
      v19 = 0;
      goto LABEL_25;
    }

    v10 = [v9 episodeIndexInSeries];
    if (!v10 || ([*(v58 + 5) episodeIndexInSeries], v11 = objc_claimAutoreleasedReturnValue(), v12 = v11 == 0, v11, v10, v12))
    {
      v20 = [*(v58 + 5) seasonIdentifier];
      v21 = [v52[5] seasonIdentifier];
      if (([v20 isEqual:v21] & 1) == 0 || (objc_msgSend(v52[5], "episodeNumber"), (v22 = objc_claimAutoreleasedReturnValue()) == 0))
      {

LABEL_19:
        v19 = 0;
        v28 = 12;
        goto LABEL_20;
      }

      v23 = [*(v58 + 5) episodeNumber];
      v24 = v23 == 0;

      if (v24)
      {
        goto LABEL_19;
      }

      v25 = [v52[5] episodeNumber];
      v26 = [v25 longValue];
      v27 = [*(v58 + 5) episodeNumber];
      LODWORD(v26) = v26 == [v27 longValue] + 1;

      if (!v26)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v13 = [v52[5] episodeIndexInSeries];
      v14 = [v13 longValue];
      v15 = [*(v58 + 5) episodeIndexInSeries];
      LOBYTE(v14) = v14 == [v15 longValue] + 1;

      if ((v14 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v19 = 1;
    v28 = 10;
LABEL_20:
    v30 = [VUIMediaInfo alloc];
    v65[0] = v52[5];
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:1];
    v18 = [(VUIMediaInfo *)v30 initWithPlaybackContext:v28 vuiMediaItems:v31];

    [(VUIMediaInfo *)v18 setIntent:1];
    v32 = [(VUIMediaInfo *)v18 tvpPlaylist];
    v33 = v32;
    if (v32)
    {
      v34 = [v32 trackList];
      v17 = [v34 firstObject];

      v35 = sLogObject_13;
      if (os_log_type_enabled(sLogObject_13, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 138412290;
        v64 = v17;
        _os_log_impl(&dword_1E323F000, v35, OS_LOG_TYPE_DEFAULT, "Found Next Episode for Post Play: <%@>", v63, 0xCu);
      }
    }

    else
    {
      v17 = 0;
    }

LABEL_25:
    _Block_object_dispose(&v51, 8);

    _Block_object_dispose(buf, 8);
    goto LABEL_26;
  }

  v16 = sLogObject_13;
  if (os_log_type_enabled(sLogObject_13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "Failed to find Series for current MediaEntity", buf, 2u);
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
LABEL_26:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v41 = __84__VUIPostPlayDataManager__fetchPostPlayItemFromLibraryContentForStoreID_completion___block_invoke_96;
  v42 = &unk_1E8732248;
  v36 = *(a1 + 40);
  v44 = v17;
  v45 = v36;
  v43 = v18;
  v46 = v19;
  v37 = MEMORY[0x1E696AF00];
  v38 = v17;
  v39 = v18;
  if ([v37 isMainThread])
  {
    v41(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __84__VUIPostPlayDataManager__fetchPostPlayItemFromLibraryContentForStoreID_completion___block_invoke_90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = [a2 mediaEntities];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__VUIPostPlayDataManager__fetchPostPlayItemFromLibraryContentForStoreID_completion___block_invoke_2_91;
  v9[3] = &unk_1E87330D8;
  v11 = *(a1 + 48);
  v12 = a4;
  v8 = *(a1 + 32);
  v7 = v8;
  v10 = v8;
  [v6 enumerateObjectsUsingBlock:v9];
}

void __84__VUIPostPlayDataManager__fetchPostPlayItemFromLibraryContentForStoreID_completion___block_invoke_2_91(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (*(*(*(a1 + 40) + 8) + 40))
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
      v7 = [*(*(*(a1 + 40) + 8) + 40) seasonIdentifier];
      v8 = [*(*(*(a1 + 48) + 8) + 40) seasonIdentifier];
      if ([v7 isEqual:v8])
      {
        v9 = [*(*(*(a1 + 48) + 8) + 40) episodeIndexInSeries];
        v10 = [v9 unsignedIntegerValue];
        v11 = [*(*(*(a1 + 40) + 8) + 40) episodeIndexInSeries];
        v12 = [v11 unsignedIntegerValue] + 1;

        if (v10 == v12)
        {
          *a4 = 1;
          **(a1 + 56) = 1;
        }
      }

      else
      {
      }

      v13 = [*(*(*(a1 + 48) + 8) + 40) isLocal];
      v14 = [v13 BOOLValue];

      if (v14)
      {
        *a4 = 1;
        **(a1 + 56) = 1;
      }
    }

    v15 = v18;
    v16 = [v15 storeID];
    v17 = [v16 isEqualToNumber:*(a1 + 32)];

    if (v17)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    }
  }
}

+ (void)_fetchContentFromLibraryForCurrentMediaItem:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [a3 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];
  v7 = v6;
  if (v6)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v6, "longLongValue")}];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __81__VUIPostPlayDataManager__fetchContentFromLibraryForCurrentMediaItem_completion___block_invoke;
    v11[3] = &unk_1E87330B0;
    v12 = v5;
    [VUIPostPlayDataManager _fetchPostPlayItemFromLibraryContentForStoreID:v8 completion:v11];
  }

  else
  {
    v9 = sLogObject_13;
    if (os_log_type_enabled(sLogObject_13, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "Failed to find StoreID for currentMediaItem", v10, 2u);
    }

    (*(v5 + 2))(v5, 0, 0, 0);
  }
}

+ (id)_generateMediaInfoFromJSResponse:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"videosPlayables"];
  v5 = [v3 objectForKey:@"contentMetadata"];
  v6 = [VUIVideosPlayable videosPlayablesFromDictionaries:v4 andMetadataDictionary:v5];

  if ([v6 count])
  {
    v7 = [v3 vui_stringForKey:@"postPlayPlaybackType"];
    if ([v7 isEqualToString:@"nextEpisodeSameSeason"])
    {
      v8 = 10;
    }

    else if ([v7 isEqualToString:@"nextEpisodeDifferentSeason"])
    {
      v8 = 11;
    }

    else if ([v7 isEqualToString:@"other"])
    {
      v8 = 12;
    }

    else
    {
      v8 = 0;
    }

    v9 = [[VUIMediaInfo alloc] initWithPlaybackContext:v8 videosPlayables:v6 imageProxies:0 storeDictionary:0];
    [(VUIMediaInfo *)v9 setIntent:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end