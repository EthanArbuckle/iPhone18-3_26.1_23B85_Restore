@interface VUIActionPlay
+ (void)_playMediaInfo:(id)a3 multiviewMediaInfos:(id)a4 watchType:(int64_t)a5 extrasInfo:(id)a6 playType:(id)a7 isRentAndWatchNow:(BOOL)a8 targetResponder:(id)a9 completion:(id)a10;
+ (void)_playPlayables:(id)a3 multiviewPlayables:(id)a4 appContext:(id)a5 watchType:(int64_t)a6 isUpNextPlayback:(BOOL)a7 userPlaybackInitiationDate:(id)a8 openURLCompletionDate:(id)a9 playType:(id)a10 playbackContext:(unint64_t)a11 targetResponder:(id)a12;
+ (void)playMediaInfo:(id)a3 multiviewMediaInfos:(id)a4 watchType:(int64_t)a5 isRentAndWatchNow:(BOOL)a6 completion:(id)a7;
+ (void)presentPlaybackWithMediaInfo:(id)a3 multiviewMediaInfos:(id)a4 extrasInfo:(id)a5 isCoWatching:(BOOL)a6 watchType:(int64_t)a7 playType:(id)a8 allowsCellular:(BOOL)a9 previewMetadata:(id)a10 targetResponder:(id)a11 completion:(id)a12;
- (BOOL)isAccountRequired;
- (NSString)playType;
- (VUIActionPlay)initWithContextData:(id)a3 appContext:(id)a4;
- (VUIActionPlay)initWithMPMediaItem:(id)a3 watchType:(int64_t)a4 playbackContext:(unint64_t)a5 isRentAndWatchNow:(BOOL)a6;
- (VUIActionPlay)initWithSidebandAdamID:(id)a3 watchType:(int64_t)a4 playbackContext:(unint64_t)a5 isRentAndWatchNow:(BOOL)a6;
- (VUIActionPlay)initWithVideosPlayables:(id)a3 watchType:(int64_t)a4 playbackContext:(unint64_t)a5 isRentAndWatchNow:(BOOL)a6;
- (VUIAppContext)appContext;
- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4;
@end

@implementation VUIActionPlay

- (VUIActionPlay)initWithContextData:(id)a3 appContext:(id)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v51.receiver = self;
  v51.super_class = VUIActionPlay;
  v9 = [(VUIActionPlay *)&v51 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_27;
  }

  v38 = a3;
  v43 = v9;
  v11 = [v7 vui_arrayForKey:@"videosPlayables"];
  v41 = [v7 vui_dictionaryForKey:@"contentMetadata"];
  v42 = v11;
  v37 = [VUIVideosPlayable videosPlayablesFromDictionaries:v11 andMetadataDictionary:?];
  v12 = [v7 vui_arrayForKey:@"multiviewPlaybackInformation"];
  v40 = [v7 vui_stringForKey:@"postPlayPlaybackType"];
  v44 = v7;
  v39 = [v7 vui_stringForKey:@"triggerSource"];
  v46 = [MEMORY[0x1E695DF70] array];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v48;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v48 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v47 + 1) + 8 * i);
        v18 = [v17 objectForKeyedSubscript:@"videosPlayables"];
        v19 = [v17 objectForKeyedSubscript:@"contentMetadata"];
        v20 = [VUIVideosPlayable videosPlayablesFromDictionaries:v18 andMetadataDictionary:v19];

        if ([v20 count])
        {
          v21 = [v20 firstObject];
          [v46 addObject:v21];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v14);
  }

  v10 = v43;
  videosPlayables = v43->_videosPlayables;
  v43->_videosPlayables = v37;
  v23 = v37;

  objc_storeStrong(&v43->_contextData, v38);
  objc_storeWeak(&v43->_appContext, v8);
  v43->_upNextPlayback = [v41 vui_BOOLForKey:@"isUpNextPlayback" defaultValue:0];
  v43->_playRequiresAccount = [v41 vui_BOOLForKey:@"playRequiresAccount" defaultValue:0];
  v24 = [v46 copy];
  multiviewPlayables = v43->_multiviewPlayables;
  v43->_multiviewPlayables = v24;

  v26 = [(NSArray *)v23 firstObject];

  v27 = [v26 sourceRef];
  if ((v27 - 1) >= 3)
  {
    v7 = v44;
    v29 = [v44 vui_stringForKey:@"type"];
    v30 = [v29 isEqualToString:@"replace"];

    v28 = 4;
    if (!v30)
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = qword_1E42973B8[v27 - 1];
    v7 = v44;
  }

  v43->_watchType = v28;
  if (v43->_upNextPlayback)
  {
    v31 = 2;
    v32 = v42;
    v33 = v40;
  }

  else
  {
    v33 = v40;
    switch(v27)
    {
      case 2:
        v31 = 10;
        break;
      case 8:
        v31 = 8;
        break;
      case 3:
        v31 = 12;
        break;
      default:
        v32 = v42;
        if ([v40 isEqualToString:@"nextEpisodeSameSeason"])
        {
          v31 = 10;
        }

        else if ([v40 isEqualToString:@"nextEpisodeDifferentSeason"])
        {
          v31 = 11;
        }

        else if ([v40 isEqualToString:@"other"])
        {
          v31 = 12;
        }

        else
        {
          v31 = 0;
        }

        goto LABEL_24;
    }

    v32 = v42;
  }

LABEL_24:
  v34 = [v39 isEqualToString:@"liveSportsPostPlay"];
  v35 = 13;
  if (!v34)
  {
    v35 = v31;
  }

  v43->_playbackContext = v35;

LABEL_27:
  return v10;
}

- (VUIActionPlay)initWithVideosPlayables:(id)a3 watchType:(int64_t)a4 playbackContext:(unint64_t)a5 isRentAndWatchNow:(BOOL)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = VUIActionPlay;
  v12 = [(VUIActionPlay *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_videosPlayables, a3);
    v13->_watchType = a4;
    v13->_playbackContext = a5;
    v13->_isRentAndWatchNow = a6;
  }

  return v13;
}

- (VUIActionPlay)initWithMPMediaItem:(id)a3 watchType:(int64_t)a4 playbackContext:(unint64_t)a5 isRentAndWatchNow:(BOOL)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = VUIActionPlay;
  v12 = [(VUIActionPlay *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mpMediaItem, a3);
    v13->_watchType = a4;
    v13->_playbackContext = a5;
    v13->_isRentAndWatchNow = a6;
  }

  return v13;
}

- (VUIActionPlay)initWithSidebandAdamID:(id)a3 watchType:(int64_t)a4 playbackContext:(unint64_t)a5 isRentAndWatchNow:(BOOL)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = VUIActionPlay;
  v12 = [(VUIActionPlay *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sidebandLibraryAdamID, a3);
    v13->_watchType = a4;
    v13->_playbackContext = a5;
    v13->_isRentAndWatchNow = a6;
  }

  return v13;
}

- (NSString)playType
{
  v2 = [(VUIActionPlay *)self contextData];
  v3 = [v2 vui_stringForKey:@"type"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"play";
  }

  v6 = v5;

  return &v5->isa;
}

- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4
{
  v80[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(VUIActionPlay *)self videosPlayables];

  if (v8)
  {
    v9 = [(VUIActionPlay *)self appContext];
    v71 = v7;
    if (![(VUIActionPlay *)self shouldPunchoutToTVApp])
    {
      v69 = v9;
      v39 = v6;
      v40 = [(VUIActionPlay *)self playbackContext];
      if (!v40)
      {
        v41 = [(VUIActionPlay *)self openURLCompletionDate];
        if (v41)
        {
          v40 = 5;
        }

        else
        {
          v40 = 1;
        }
      }

      v42 = objc_opt_class();
      v43 = [(VUIActionPlay *)self videosPlayables];
      v44 = [(VUIActionPlay *)self multiviewPlayables];
      v45 = [(VUIActionPlay *)self watchType];
      v46 = [(VUIActionPlay *)self isUpNextPlayback];
      v47 = [(VUIActionPlay *)self userPlaybackInitiationDate];
      v48 = [(VUIActionPlay *)self openURLCompletionDate];
      v49 = [(VUIActionPlay *)self playType];
      v50 = v42;
      v9 = v69;
      [v50 _playPlayables:v43 multiviewPlayables:v44 appContext:v69 watchType:v45 isUpNextPlayback:v46 userPlaybackInitiationDate:v47 openURLCompletionDate:v48 playType:v49 playbackContext:v40 targetResponder:v39];

      v6 = v39;
      v7 = v71;
      goto LABEL_28;
    }

    v10 = [(VUIActionPlay *)self videosPlayables];
    v11 = [v10 firstObject];

    v12 = [v11 mediaType];
    v13 = [v12 isEqualToString:@"Trailer"];

    if (v11)
    {
      v14 = [v11 mediaType];
      if ((v14 == 0) | v13 & 1 || ([v11 tvAppDeeplinkURL], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
      {
      }

      else
      {
        v16 = v15;
        v17 = [v11 canonicalID];

        if (v17)
        {
          v18 = [v11 extrasInfo];
          v19 = v18 == 0;

          v20 = MEMORY[0x1E69E1580];
          v21 = [v11 tvAppDeeplinkURL];
          v22 = [v20 _punchoutURLForDirectPlayback:v21 ignoreExtras:v19];

          v23 = [MEMORY[0x1E6963608] defaultWorkspace];
          v76 = 0;
          v24 = [v23 openURL:v22 withOptions:MEMORY[0x1E695E0F8] error:&v76];
          v25 = v76;

          if (+[VUITVExtension isRunningInTVExtension])
          {
            v79 = @"result";
            v80[0] = @"open";
            v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:&v79 count:1];
            v27 = [MEMORY[0x1E696AD88] defaultCenter];
            [v27 postNotificationName:@"VUIActionAskToBuyNotification" object:0 userInfo:v26];
          }

          if ((v24 & 1) == 0)
          {
            v28 = VUIDefaultLogObject();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              [VUIActionPlay performWithTargetResponder:v25 completionHandler:v28];
            }
          }

          goto LABEL_27;
        }
      }
    }

    v70 = objc_opt_class();
    v60 = [(VUIActionPlay *)self videosPlayables];
    v61 = [(VUIActionPlay *)self multiviewPlayables];
    v62 = [(VUIActionPlay *)self isUpNextPlayback];
    [(VUIActionPlay *)self userPlaybackInitiationDate];
    v64 = v63 = v6;
    [(VUIActionPlay *)self openURLCompletionDate];
    v65 = v11;
    v67 = v66 = v9;
    v68 = [(VUIActionPlay *)self playType];
    [v70 _playPlayables:v60 multiviewPlayables:v61 appContext:v66 watchType:2 isUpNextPlayback:v62 userPlaybackInitiationDate:v64 openURLCompletionDate:v67 playType:v68 playbackContext:-[VUIActionPlay playbackContext](self targetResponder:{"playbackContext"), v63}];

    v9 = v66;
    v11 = v65;

    v6 = v63;
    v7 = v71;

LABEL_27:
    goto LABEL_28;
  }

  v29 = [(VUIActionPlay *)self mpMediaItem];

  if (v29)
  {
    v30 = [VUIMediaInfo alloc];
    v31 = [(VUIActionPlay *)self playbackContext];
    v32 = [(VUIActionPlay *)self mpMediaItem];
    v78 = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1];
    v34 = [(VUIMediaInfo *)v30 initWithPlaybackContext:v31 mpMediaItems:v33];

    [(VUIMediaInfo *)v34 setIntent:1];
    v35 = objc_opt_class();
    v36 = [(VUIActionPlay *)self watchType];
    v37 = [(VUIActionPlay *)self isRentAndWatchNow];
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __62__VUIActionPlay_performWithTargetResponder_completionHandler___block_invoke;
    v74[3] = &unk_1E8733A10;
    v75 = v34;
    v9 = v34;
    [v35 _playMediaInfo:v9 multiviewMediaInfos:MEMORY[0x1E695E0F0] watchType:v36 extrasInfo:0 playType:@"play" isRentAndWatchNow:v37 targetResponder:v6 completion:v74];
    v38 = v75;
  }

  else
  {
    v51 = [(VUIActionPlay *)self sidebandLibraryAdamID];

    if (!v51)
    {
      goto LABEL_29;
    }

    v52 = [VUIMediaInfo alloc];
    v53 = [(VUIActionPlay *)self playbackContext];
    v54 = [(VUIActionPlay *)self sidebandLibraryAdamID];
    v77 = v54;
    v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
    v56 = [(VUIMediaInfo *)v52 initWithPlaybackContext:v53 sidebandLibraryAdamIDs:v55];

    [(VUIMediaInfo *)v56 setIntent:1];
    v57 = objc_opt_class();
    v58 = [(VUIActionPlay *)self watchType];
    v59 = [(VUIActionPlay *)self isRentAndWatchNow];
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __62__VUIActionPlay_performWithTargetResponder_completionHandler___block_invoke_2;
    v72[3] = &unk_1E8733A10;
    v73 = v56;
    v9 = v56;
    [v57 _playMediaInfo:v9 multiviewMediaInfos:MEMORY[0x1E695E0F0] watchType:v58 extrasInfo:0 playType:@"play" isRentAndWatchNow:v59 targetResponder:v6 completion:v72];
    v38 = v73;
  }

LABEL_28:
LABEL_29:
  if (v7)
  {
    v7[2](v7, 1);
  }
}

void __62__VUIActionPlay_performWithTargetResponder_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tvpPlaylist];
  v1 = [v2 currentMediaItem];
  [VUILibraryMetrics recordPlayOfTVPMediaItem:v1];
}

void __62__VUIActionPlay_performWithTargetResponder_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) tvpPlaylist];
  v1 = [v2 currentMediaItem];
  [VUILibraryMetrics recordPlayOfTVPMediaItem:v1];
}

+ (void)_playPlayables:(id)a3 multiviewPlayables:(id)a4 appContext:(id)a5 watchType:(int64_t)a6 isUpNextPlayback:(BOOL)a7 userPlaybackInitiationDate:(id)a8 openURLCompletionDate:(id)a9 playType:(id)a10 playbackContext:(unint64_t)a11 targetResponder:(id)a12
{
  v51 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  v19 = a9;
  v39 = a10;
  v38 = a12;
  v36 = [v15 firstObject];
  v20 = [[VUIMediaInfo alloc] initWithPlaybackContext:a11 videosPlayables:v15 imageProxies:0 storeDictionary:0];
  v42 = v17;
  [(VUIMediaInfo *)v20 setAppContext:v17];
  [(VUIMediaInfo *)v20 setIntent:1];
  v41 = v18;
  v21 = v19;
  [(VUIMediaInfo *)v20 setUserPlaybackInitiationDate:v18 openURLCompletionDate:v19];
  if (a11 == 13)
  {
    [(VUIMediaInfo *)v20 setPlaybackStartReason:12];
  }

  v37 = v20;
  v22 = [MEMORY[0x1E695DF70] array];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v23 = v16;
  v24 = [v23 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v46;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v46 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v45 + 1) + 8 * i);
        v29 = [VUIMediaInfo alloc];
        v49 = v28;
        v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
        v31 = [(VUIMediaInfo *)v29 initWithPlaybackContext:a11 videosPlayables:v30 imageProxies:0 storeDictionary:0];

        [(VUIMediaInfo *)v31 setAppContext:v42];
        [(VUIMediaInfo *)v31 setIntent:1];
        [(VUIMediaInfo *)v31 setUserPlaybackInitiationDate:v41 openURLCompletionDate:v21];
        [v22 addObject:v31];
      }

      v25 = [v23 countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v25);
  }

  v32 = objc_opt_class();
  v33 = [v22 copy];
  v34 = [v36 extrasInfo];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __179__VUIActionPlay__playPlayables_multiviewPlayables_appContext_watchType_isUpNextPlayback_userPlaybackInitiationDate_openURLCompletionDate_playType_playbackContext_targetResponder___block_invoke;
  v43[3] = &unk_1E8733A10;
  v44 = v36;
  v35 = v36;
  [v32 _playMediaInfo:v37 multiviewMediaInfos:v33 watchType:a6 extrasInfo:v34 playType:v39 isRentAndWatchNow:0 targetResponder:v38 completion:v43];
}

uint64_t __179__VUIActionPlay__playPlayables_multiviewPlayables_appContext_watchType_isUpNextPlayback_userPlaybackInitiationDate_openURLCompletionDate_playType_playbackContext_targetResponder___block_invoke(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    return [VUIMetricsMediaEvent recordPlay:*(result + 32) isLaunchingExtras:a3 ^ 1u];
  }

  return result;
}

+ (void)playMediaInfo:(id)a3 multiviewMediaInfos:(id)a4 watchType:(int64_t)a5 isRentAndWatchNow:(BOOL)a6 completion:(id)a7
{
  v7 = a6;
  v11 = a7;
  v12 = a4;
  v13 = a3;
  v14 = objc_opt_class();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __90__VUIActionPlay_playMediaInfo_multiviewMediaInfos_watchType_isRentAndWatchNow_completion___block_invoke;
  v16[3] = &unk_1E872E9F0;
  v17 = v11;
  v15 = v11;
  [v14 _playMediaInfo:v13 multiviewMediaInfos:v12 watchType:a5 extrasInfo:0 playType:@"play" isRentAndWatchNow:v7 targetResponder:0 completion:v16];
}

uint64_t __90__VUIActionPlay_playMediaInfo_multiviewMediaInfos_watchType_isRentAndWatchNow_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)_playMediaInfo:(id)a3 multiviewMediaInfos:(id)a4 watchType:(int64_t)a5 extrasInfo:(id)a6 playType:(id)a7 isRentAndWatchNow:(BOOL)a8 targetResponder:(id)a9 completion:(id)a10
{
  v10 = a8;
  v15 = a3;
  v32 = a4;
  v30 = a6;
  v16 = a7;
  v17 = a9;
  v18 = a10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __127__VUIActionPlay__playMediaInfo_multiviewMediaInfos_watchType_extrasInfo_playType_isRentAndWatchNow_targetResponder_completion___block_invoke;
  aBlock[3] = &unk_1E872E9F0;
  v19 = v18;
  v44 = v19;
  v20 = _Block_copy(aBlock);
  v21 = [v15 videosPlayables];
  v22 = [v21 firstObject];
  v23 = [v22 sharedWatchId];

  v24 = [VUIGroupActivitiesManagerObjC isSharedWatchIdValidForCurrentSession:v23];
  if (a5 == 1 && v23 && !v24)
  {
    v25 = VUIDefaultLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v25, OS_LOG_TYPE_DEFAULT, "VUIActionPlay - Ignoring playback request because the session does not match the shared watch id", buf, 2u);
    }

    (*(v20 + 2))(v20, 0, 0);
    v27 = v30;
    v26 = v32;
  }

  else
  {
    v28 = [VUIPlaybackStartupCoordinator startupCoordinatorWithMediaInfo:v15 watchType:a5 isRentAndWatchNow:v10, v30];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __127__VUIActionPlay__playMediaInfo_multiviewMediaInfos_watchType_extrasInfo_playType_isRentAndWatchNow_targetResponder_completion___block_invoke_68;
    v33[3] = &unk_1E8733A38;
    v34 = v28;
    v41 = a5;
    v35 = v15;
    v26 = v32;
    v36 = v32;
    v27 = v31;
    v37 = v31;
    v38 = v16;
    v39 = v17;
    v40 = v20;
    v29 = v28;
    [v29 performPlaybackStartupFlowWithCompletion:v33];
  }
}

uint64_t __127__VUIActionPlay__playMediaInfo_multiviewMediaInfos_watchType_extrasInfo_playType_isRentAndWatchNow_targetResponder_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __127__VUIActionPlay__playMediaInfo_multiviewMediaInfos_watchType_extrasInfo_playType_isRentAndWatchNow_targetResponder_completion___block_invoke_68(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, void *a8)
{
  v30 = *MEMORY[0x1E69E9840];
  v13 = a8;
  v14 = VUIDefaultLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    v23 = a2;
    v24 = 2048;
    v25 = a3;
    v26 = 2048;
    v27 = a4;
    v28 = 2048;
    v29 = a5;
    _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "VUIActionPlay - Startup coordinator finished startup flow.  startPlayback == %ld, isCoWatching == %ld, forceDownloadToStream == %ld, allowCellular == %ld", buf, 0x2Au);
  }

  v15 = VUIDefaultLogObject();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "VUIActionPlay - Starting playback since startup flow allowed it", buf, 2u);
    }

    if (a3 && *(a1 + 88) == 1)
    {
      v17 = VUIDefaultLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "VUIActionPlay - Playback will be co-watched, will use existing resume time for join", buf, 2u);
      }
    }

    if (a4)
    {
      v18 = VUIDefaultLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v18, OS_LOG_TYPE_DEFAULT, "VUIActionPlay - Forcing downloaded video to be streamed", buf, 2u);
      }

      v19 = [*(a1 + 40) tvpPlaylist];
      v20 = [v19 currentMediaItem];

      [v20 setMediaItemMetadata:MEMORY[0x1E695E118] forProperty:*MEMORY[0x1E69D5BD0]];
    }

    LOBYTE(v21) = a5;
    [VUIActionPlay presentPlaybackWithMediaInfo:*(a1 + 40) multiviewMediaInfos:*(a1 + 48) extrasInfo:*(a1 + 56) isCoWatching:a3 watchType:*(a1 + 88) playType:*(a1 + 64) allowsCellular:v21 previewMetadata:v13 targetResponder:*(a1 + 72) completion:*(a1 + 80)];
  }

  else
  {
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "VUIActionPlay - Not starting playback since startup flow disallowed it", buf, 2u);
    }

    (*(*(a1 + 80) + 16))();
  }
}

+ (void)presentPlaybackWithMediaInfo:(id)a3 multiviewMediaInfos:(id)a4 extrasInfo:(id)a5 isCoWatching:(BOOL)a6 watchType:(int64_t)a7 playType:(id)a8 allowsCellular:(BOOL)a9 previewMetadata:(id)a10 targetResponder:(id)a11 completion:(id)a12
{
  v92[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v81 = a4;
  v84 = a8;
  v15 = a10;
  v16 = a11;
  v17 = a12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __167__VUIActionPlay_presentPlaybackWithMediaInfo_multiviewMediaInfos_extrasInfo_isCoWatching_watchType_playType_allowsCellular_previewMetadata_targetResponder_completion___block_invoke;
  aBlock[3] = &unk_1E872D790;
  v18 = v17;
  v90 = v18;
  v19 = _Block_copy(aBlock);
  v20 = [v14 tvpPlaylist];
  v78 = +[VUIApplicationRouter currentNavigationController];
  v21 = [v78 topViewController];
  v22 = [v21 presentedViewController];
  v23 = v22;
  if (!v22 || ([v22 isBeingDismissed] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v24 = +[VUITVAppLauncher sharedInstance];
    v25 = [v24 appWindow];

    v26 = [v25 rootViewController];

    if (!v26)
    {
      v27 = +[VUIInterfaceFactory sharedInstance];
      v26 = [v27 controllerPresenter];
    }
  }

  else
  {
    v26 = v23;
  }

  v82 = v16;
  v79 = v19;
  v80 = v18;
  v76 = v23;
  v77 = v21;
  if (+[VUITVExtension isRunningInCompanionApp])
  {
    v28 = v15;
    v29 = +[VUITVExtension sharedInstance];
    v30 = [v29 presentationViewController];

    v83 = v30;
  }

  else
  {
    v83 = v26;
    v28 = v15;
  }

  v31 = v84;
  v32 = [MEMORY[0x1E695DF90] dictionary];
  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v14, "playbackContext")}];
  [v32 setObject:v33 forKey:VUIPlaybackManagerPresentPlaylistUserInfoPlaybackContext[0]];

  v34 = [v14 videosPlayables];
  v35 = [v34 firstObject];
  v36 = [v35 metadata];

  v37 = v20;
  if (v36)
  {
    v38 = [v14 videosPlayables];
    v39 = [v38 firstObject];
    v40 = [v39 metadata];
    v41 = [v40 isEligibleForPlayerTabs];

    v42 = v41;
    v20 = v37;
    v43 = [MEMORY[0x1E696AD98] numberWithBool:v42];
    [v32 setObject:v43 forKey:VUIPlaybackManagerPresentPlaylistUserInfoIsEligibleForPlayerTabs[0]];
  }

  v44 = v28;
  [v32 vui_setObjectIfNotNil:v28 forKey:VUIPlaybackManagerPresentPlaylistUserInfoSharedWatchMetadata[0]];
  v45 = [v14 videosPlayables];
  v46 = [v45 firstObject];
  v47 = [v46 sharedWatchId];
  [v32 vui_setObjectIfNotNil:v47 forKey:VUIPlaybackManagerPresentPlaylistUserInfoSharedWatchId[0]];

  v48 = [v14 videosPlayables];
  v49 = [v48 firstObject];
  v50 = [v49 sharedWatchUrl];
  [v32 vui_setObjectIfNotNil:v50 forKey:VUIPlaybackManagerPresentPlaylistUserInfoSharedWatchURL[0]];

  v51 = v82;
  [v32 vui_setObjectIfNotNil:v82 forKey:VUIPlaybackManagerPresentPlaylistUserInfoTargetResponder[0]];
  v75 = v14;
  if ([v84 isEqualToString:@"multiview"])
  {
    v52 = +[VUIPlaybackManager sharedInstance];
    if ([v52 isPlaylistBeingPresented:v20])
    {

LABEL_25:
      v53 = +[VUIPlaybackManager sharedInstance];
      [v53 removePlaylistFromMultiview:v37 animated:1];
      v65 = v79;
      v66 = v80;
      v67 = v78;
      v68 = v81;
      goto LABEL_28;
    }

    v63 = +[VUIPlaybackManager sharedInstance];
    v64 = [v63 isPlaylistBeingPresentedInMultiview:v20];

    if (v64)
    {
      goto LABEL_25;
    }

    v70 = +[VUIPlaybackManager sharedInstance];
    if ([v70 isFullscreenPlaybackUIBeingShown])
    {
    }

    else
    {
      v71 = +[VUIPlaybackManager sharedInstance];
      v72 = [v71 isMultiviewPlaybackUIBeingShown];

      if (!v72)
      {
        v53 = +[VUIPlaybackManager sharedInstance];
        v92[0] = v37;
        v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:1];
        [v53 presentMultiviewWithPlaylists:v73 fromViewController:v83 animated:1];

        goto LABEL_35;
      }
    }

    v53 = +[VUIPlaybackManager sharedInstance];
    [v53 addPlaylistToMultiview:v37 animated:1 completion:0];
LABEL_35:
    v65 = v79;
    v66 = v80;
    v67 = v78;
    v68 = v81;
    v31 = v84;
    goto LABEL_28;
  }

  v74 = v44;
  v53 = [MEMORY[0x1E695DF70] arrayWithObject:v20];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v54 = v81;
  v55 = [v54 countByEnumeratingWithState:&v85 objects:v91 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v86;
    do
    {
      for (i = 0; i != v56; ++i)
      {
        if (*v86 != v57)
        {
          objc_enumerationMutation(v54);
        }

        v59 = [*(*(&v85 + 1) + 8 * i) tvpPlaylist];
        [v53 addObject:v59];
      }

      v56 = [v54 countByEnumeratingWithState:&v85 objects:v91 count:16];
    }

    while (v56);
  }

  v60 = [v53 count];
  v61 = +[VUIPlaybackManager sharedInstance];
  v62 = v61;
  if (v60 < 2)
  {
    v69 = [v32 copy];
    [v62 presentPlaylist:v37 fromViewController:v83 dismissalOperation:0 allowsCellular:a9 animated:1 userInfo:v69 completion:0];
  }

  else
  {
    [v61 presentMultiviewWithPlaylists:v53 fromViewController:v83 animated:1];
  }

  v44 = v74;
  v51 = v82;
  v66 = v80;
  v67 = v78;

  v68 = v81;
  v31 = v84;
  v65 = v79;
LABEL_28:

  v65[2](v65, 1);
}

uint64_t __167__VUIActionPlay_presentPlaybackWithMediaInfo_multiviewMediaInfos_extrasInfo_isCoWatching_watchType_playType_allowsCellular_previewMetadata_targetResponder_completion___block_invoke(uint64_t result)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(result + 32))
  {
    v1 = result;
    v2 = VUIDefaultLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [MEMORY[0x1E695DF00] date];
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_DEFAULT, "VUIActionPlay - DropOnTab: resetting last playback date %@", &v6, 0xCu);
    }

    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = [MEMORY[0x1E695DF00] date];
    [v4 setObject:v5 forKey:@"lastPlaybackDate"];

    return (*(*(v1 + 32) + 16))();
  }

  return result;
}

- (BOOL)isAccountRequired
{
  v3 = [(VUIActionPlay *)self playbackContext];
  v4 = [(VUIActionPlay *)self videosPlayables];
  v5 = [v4 firstObject];
  v6 = [v5 mediaType];

  v7 = [v6 isEqualToString:@"Trailer"];
  v8 = v3 == 3;
  v9 = v3 != 3;
  if (!v8 && v7)
  {
    v9 = [(VUIActionPlay *)self playRequiresAccount];
  }

  return v9;
}

- (VUIAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

- (void)performWithTargetResponder:(uint64_t)a1 completionHandler:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "VUIActionPlay - Failed to punch out TV App -- %@", &v2, 0xCu);
}

@end