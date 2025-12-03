@interface VUIActionPlay
+ (void)_playMediaInfo:(id)info multiviewMediaInfos:(id)infos watchType:(int64_t)type extrasInfo:(id)extrasInfo playType:(id)playType isRentAndWatchNow:(BOOL)now targetResponder:(id)responder completion:(id)self0;
+ (void)_playPlayables:(id)playables multiviewPlayables:(id)multiviewPlayables appContext:(id)context watchType:(int64_t)type isUpNextPlayback:(BOOL)playback userPlaybackInitiationDate:(id)date openURLCompletionDate:(id)completionDate playType:(id)self0 playbackContext:(unint64_t)self1 targetResponder:(id)self2;
+ (void)playMediaInfo:(id)info multiviewMediaInfos:(id)infos watchType:(int64_t)type isRentAndWatchNow:(BOOL)now completion:(id)completion;
+ (void)presentPlaybackWithMediaInfo:(id)info multiviewMediaInfos:(id)infos extrasInfo:(id)extrasInfo isCoWatching:(BOOL)watching watchType:(int64_t)type playType:(id)playType allowsCellular:(BOOL)cellular previewMetadata:(id)self0 targetResponder:(id)self1 completion:(id)self2;
- (BOOL)isAccountRequired;
- (NSString)playType;
- (VUIActionPlay)initWithContextData:(id)data appContext:(id)context;
- (VUIActionPlay)initWithMPMediaItem:(id)item watchType:(int64_t)type playbackContext:(unint64_t)context isRentAndWatchNow:(BOOL)now;
- (VUIActionPlay)initWithSidebandAdamID:(id)d watchType:(int64_t)type playbackContext:(unint64_t)context isRentAndWatchNow:(BOOL)now;
- (VUIActionPlay)initWithVideosPlayables:(id)playables watchType:(int64_t)type playbackContext:(unint64_t)context isRentAndWatchNow:(BOOL)now;
- (VUIAppContext)appContext;
- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler;
@end

@implementation VUIActionPlay

- (VUIActionPlay)initWithContextData:(id)data appContext:(id)context
{
  v53 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  contextCopy = context;
  v51.receiver = self;
  v51.super_class = VUIActionPlay;
  v9 = [(VUIActionPlay *)&v51 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_27;
  }

  dataCopy2 = data;
  v43 = v9;
  v11 = [dataCopy vui_arrayForKey:@"videosPlayables"];
  v41 = [dataCopy vui_dictionaryForKey:@"contentMetadata"];
  v42 = v11;
  v37 = [VUIVideosPlayable videosPlayablesFromDictionaries:v11 andMetadataDictionary:?];
  v12 = [dataCopy vui_arrayForKey:@"multiviewPlaybackInformation"];
  v40 = [dataCopy vui_stringForKey:@"postPlayPlaybackType"];
  v44 = dataCopy;
  v39 = [dataCopy vui_stringForKey:@"triggerSource"];
  array = [MEMORY[0x1E695DF70] array];
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
          firstObject = [v20 firstObject];
          [array addObject:firstObject];
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

  objc_storeStrong(&v43->_contextData, dataCopy2);
  objc_storeWeak(&v43->_appContext, contextCopy);
  v43->_upNextPlayback = [v41 vui_BOOLForKey:@"isUpNextPlayback" defaultValue:0];
  v43->_playRequiresAccount = [v41 vui_BOOLForKey:@"playRequiresAccount" defaultValue:0];
  v24 = [array copy];
  multiviewPlayables = v43->_multiviewPlayables;
  v43->_multiviewPlayables = v24;

  firstObject2 = [(NSArray *)v23 firstObject];

  sourceRef = [firstObject2 sourceRef];
  if ((sourceRef - 1) >= 3)
  {
    dataCopy = v44;
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
    v28 = qword_1E42973B8[sourceRef - 1];
    dataCopy = v44;
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
    switch(sourceRef)
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

- (VUIActionPlay)initWithVideosPlayables:(id)playables watchType:(int64_t)type playbackContext:(unint64_t)context isRentAndWatchNow:(BOOL)now
{
  playablesCopy = playables;
  v15.receiver = self;
  v15.super_class = VUIActionPlay;
  v12 = [(VUIActionPlay *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_videosPlayables, playables);
    v13->_watchType = type;
    v13->_playbackContext = context;
    v13->_isRentAndWatchNow = now;
  }

  return v13;
}

- (VUIActionPlay)initWithMPMediaItem:(id)item watchType:(int64_t)type playbackContext:(unint64_t)context isRentAndWatchNow:(BOOL)now
{
  itemCopy = item;
  v15.receiver = self;
  v15.super_class = VUIActionPlay;
  v12 = [(VUIActionPlay *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mpMediaItem, item);
    v13->_watchType = type;
    v13->_playbackContext = context;
    v13->_isRentAndWatchNow = now;
  }

  return v13;
}

- (VUIActionPlay)initWithSidebandAdamID:(id)d watchType:(int64_t)type playbackContext:(unint64_t)context isRentAndWatchNow:(BOOL)now
{
  dCopy = d;
  v15.receiver = self;
  v15.super_class = VUIActionPlay;
  v12 = [(VUIActionPlay *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sidebandLibraryAdamID, d);
    v13->_watchType = type;
    v13->_playbackContext = context;
    v13->_isRentAndWatchNow = now;
  }

  return v13;
}

- (NSString)playType
{
  contextData = [(VUIActionPlay *)self contextData];
  v3 = [contextData vui_stringForKey:@"type"];
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

- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler
{
  v80[1] = *MEMORY[0x1E69E9840];
  responderCopy = responder;
  handlerCopy = handler;
  videosPlayables = [(VUIActionPlay *)self videosPlayables];

  if (videosPlayables)
  {
    appContext = [(VUIActionPlay *)self appContext];
    v71 = handlerCopy;
    if (![(VUIActionPlay *)self shouldPunchoutToTVApp])
    {
      v69 = appContext;
      v39 = responderCopy;
      playbackContext = [(VUIActionPlay *)self playbackContext];
      if (!playbackContext)
      {
        openURLCompletionDate = [(VUIActionPlay *)self openURLCompletionDate];
        if (openURLCompletionDate)
        {
          playbackContext = 5;
        }

        else
        {
          playbackContext = 1;
        }
      }

      v42 = objc_opt_class();
      videosPlayables2 = [(VUIActionPlay *)self videosPlayables];
      multiviewPlayables = [(VUIActionPlay *)self multiviewPlayables];
      watchType = [(VUIActionPlay *)self watchType];
      isUpNextPlayback = [(VUIActionPlay *)self isUpNextPlayback];
      userPlaybackInitiationDate = [(VUIActionPlay *)self userPlaybackInitiationDate];
      openURLCompletionDate2 = [(VUIActionPlay *)self openURLCompletionDate];
      playType = [(VUIActionPlay *)self playType];
      v50 = v42;
      appContext = v69;
      [v50 _playPlayables:videosPlayables2 multiviewPlayables:multiviewPlayables appContext:v69 watchType:watchType isUpNextPlayback:isUpNextPlayback userPlaybackInitiationDate:userPlaybackInitiationDate openURLCompletionDate:openURLCompletionDate2 playType:playType playbackContext:playbackContext targetResponder:v39];

      responderCopy = v39;
      handlerCopy = v71;
      goto LABEL_28;
    }

    videosPlayables3 = [(VUIActionPlay *)self videosPlayables];
    firstObject = [videosPlayables3 firstObject];

    mediaType = [firstObject mediaType];
    v13 = [mediaType isEqualToString:@"Trailer"];

    if (firstObject)
    {
      mediaType2 = [firstObject mediaType];
      if ((mediaType2 == 0) | v13 & 1 || ([firstObject tvAppDeeplinkURL], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
      {
      }

      else
      {
        v16 = v15;
        canonicalID = [firstObject canonicalID];

        if (canonicalID)
        {
          extrasInfo = [firstObject extrasInfo];
          v19 = extrasInfo == 0;

          v20 = MEMORY[0x1E69E1580];
          tvAppDeeplinkURL = [firstObject tvAppDeeplinkURL];
          v22 = [v20 _punchoutURLForDirectPlayback:tvAppDeeplinkURL ignoreExtras:v19];

          defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
          v76 = 0;
          v24 = [defaultWorkspace openURL:v22 withOptions:MEMORY[0x1E695E0F8] error:&v76];
          v25 = v76;

          if (+[VUITVExtension isRunningInTVExtension])
          {
            v79 = @"result";
            v80[0] = @"open";
            v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:&v79 count:1];
            defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
            [defaultCenter postNotificationName:@"VUIActionAskToBuyNotification" object:0 userInfo:v26];
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
    videosPlayables4 = [(VUIActionPlay *)self videosPlayables];
    multiviewPlayables2 = [(VUIActionPlay *)self multiviewPlayables];
    isUpNextPlayback2 = [(VUIActionPlay *)self isUpNextPlayback];
    [(VUIActionPlay *)self userPlaybackInitiationDate];
    v64 = v63 = responderCopy;
    [(VUIActionPlay *)self openURLCompletionDate];
    v65 = firstObject;
    v67 = v66 = appContext;
    playType2 = [(VUIActionPlay *)self playType];
    [v70 _playPlayables:videosPlayables4 multiviewPlayables:multiviewPlayables2 appContext:v66 watchType:2 isUpNextPlayback:isUpNextPlayback2 userPlaybackInitiationDate:v64 openURLCompletionDate:v67 playType:playType2 playbackContext:-[VUIActionPlay playbackContext](self targetResponder:{"playbackContext"), v63}];

    appContext = v66;
    firstObject = v65;

    responderCopy = v63;
    handlerCopy = v71;

LABEL_27:
    goto LABEL_28;
  }

  mpMediaItem = [(VUIActionPlay *)self mpMediaItem];

  if (mpMediaItem)
  {
    v30 = [VUIMediaInfo alloc];
    playbackContext2 = [(VUIActionPlay *)self playbackContext];
    mpMediaItem2 = [(VUIActionPlay *)self mpMediaItem];
    v78 = mpMediaItem2;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1];
    v34 = [(VUIMediaInfo *)v30 initWithPlaybackContext:playbackContext2 mpMediaItems:v33];

    [(VUIMediaInfo *)v34 setIntent:1];
    v35 = objc_opt_class();
    watchType2 = [(VUIActionPlay *)self watchType];
    isRentAndWatchNow = [(VUIActionPlay *)self isRentAndWatchNow];
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __62__VUIActionPlay_performWithTargetResponder_completionHandler___block_invoke;
    v74[3] = &unk_1E8733A10;
    v75 = v34;
    appContext = v34;
    [v35 _playMediaInfo:appContext multiviewMediaInfos:MEMORY[0x1E695E0F0] watchType:watchType2 extrasInfo:0 playType:@"play" isRentAndWatchNow:isRentAndWatchNow targetResponder:responderCopy completion:v74];
    v38 = v75;
  }

  else
  {
    sidebandLibraryAdamID = [(VUIActionPlay *)self sidebandLibraryAdamID];

    if (!sidebandLibraryAdamID)
    {
      goto LABEL_29;
    }

    v52 = [VUIMediaInfo alloc];
    playbackContext3 = [(VUIActionPlay *)self playbackContext];
    sidebandLibraryAdamID2 = [(VUIActionPlay *)self sidebandLibraryAdamID];
    v77 = sidebandLibraryAdamID2;
    v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
    v56 = [(VUIMediaInfo *)v52 initWithPlaybackContext:playbackContext3 sidebandLibraryAdamIDs:v55];

    [(VUIMediaInfo *)v56 setIntent:1];
    v57 = objc_opt_class();
    watchType3 = [(VUIActionPlay *)self watchType];
    isRentAndWatchNow2 = [(VUIActionPlay *)self isRentAndWatchNow];
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __62__VUIActionPlay_performWithTargetResponder_completionHandler___block_invoke_2;
    v72[3] = &unk_1E8733A10;
    v73 = v56;
    appContext = v56;
    [v57 _playMediaInfo:appContext multiviewMediaInfos:MEMORY[0x1E695E0F0] watchType:watchType3 extrasInfo:0 playType:@"play" isRentAndWatchNow:isRentAndWatchNow2 targetResponder:responderCopy completion:v72];
    v38 = v73;
  }

LABEL_28:
LABEL_29:
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 1);
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

+ (void)_playPlayables:(id)playables multiviewPlayables:(id)multiviewPlayables appContext:(id)context watchType:(int64_t)type isUpNextPlayback:(BOOL)playback userPlaybackInitiationDate:(id)date openURLCompletionDate:(id)completionDate playType:(id)self0 playbackContext:(unint64_t)self1 targetResponder:(id)self2
{
  v51 = *MEMORY[0x1E69E9840];
  playablesCopy = playables;
  multiviewPlayablesCopy = multiviewPlayables;
  contextCopy = context;
  dateCopy = date;
  completionDateCopy = completionDate;
  playTypeCopy = playType;
  responderCopy = responder;
  firstObject = [playablesCopy firstObject];
  v20 = [[VUIMediaInfo alloc] initWithPlaybackContext:playbackContext videosPlayables:playablesCopy imageProxies:0 storeDictionary:0];
  v42 = contextCopy;
  [(VUIMediaInfo *)v20 setAppContext:contextCopy];
  [(VUIMediaInfo *)v20 setIntent:1];
  v41 = dateCopy;
  v21 = completionDateCopy;
  [(VUIMediaInfo *)v20 setUserPlaybackInitiationDate:dateCopy openURLCompletionDate:completionDateCopy];
  if (playbackContext == 13)
  {
    [(VUIMediaInfo *)v20 setPlaybackStartReason:12];
  }

  v37 = v20;
  array = [MEMORY[0x1E695DF70] array];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v23 = multiviewPlayablesCopy;
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
        v31 = [(VUIMediaInfo *)v29 initWithPlaybackContext:playbackContext videosPlayables:v30 imageProxies:0 storeDictionary:0];

        [(VUIMediaInfo *)v31 setAppContext:v42];
        [(VUIMediaInfo *)v31 setIntent:1];
        [(VUIMediaInfo *)v31 setUserPlaybackInitiationDate:v41 openURLCompletionDate:v21];
        [array addObject:v31];
      }

      v25 = [v23 countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v25);
  }

  v32 = objc_opt_class();
  v33 = [array copy];
  extrasInfo = [firstObject extrasInfo];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __179__VUIActionPlay__playPlayables_multiviewPlayables_appContext_watchType_isUpNextPlayback_userPlaybackInitiationDate_openURLCompletionDate_playType_playbackContext_targetResponder___block_invoke;
  v43[3] = &unk_1E8733A10;
  v44 = firstObject;
  v35 = firstObject;
  [v32 _playMediaInfo:v37 multiviewMediaInfos:v33 watchType:type extrasInfo:extrasInfo playType:playTypeCopy isRentAndWatchNow:0 targetResponder:responderCopy completion:v43];
}

uint64_t __179__VUIActionPlay__playPlayables_multiviewPlayables_appContext_watchType_isUpNextPlayback_userPlaybackInitiationDate_openURLCompletionDate_playType_playbackContext_targetResponder___block_invoke(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    return [VUIMetricsMediaEvent recordPlay:*(result + 32) isLaunchingExtras:a3 ^ 1u];
  }

  return result;
}

+ (void)playMediaInfo:(id)info multiviewMediaInfos:(id)infos watchType:(int64_t)type isRentAndWatchNow:(BOOL)now completion:(id)completion
{
  nowCopy = now;
  completionCopy = completion;
  infosCopy = infos;
  infoCopy = info;
  v14 = objc_opt_class();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __90__VUIActionPlay_playMediaInfo_multiviewMediaInfos_watchType_isRentAndWatchNow_completion___block_invoke;
  v16[3] = &unk_1E872E9F0;
  v17 = completionCopy;
  v15 = completionCopy;
  [v14 _playMediaInfo:infoCopy multiviewMediaInfos:infosCopy watchType:type extrasInfo:0 playType:@"play" isRentAndWatchNow:nowCopy targetResponder:0 completion:v16];
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

+ (void)_playMediaInfo:(id)info multiviewMediaInfos:(id)infos watchType:(int64_t)type extrasInfo:(id)extrasInfo playType:(id)playType isRentAndWatchNow:(BOOL)now targetResponder:(id)responder completion:(id)self0
{
  nowCopy = now;
  infoCopy = info;
  infosCopy = infos;
  extrasInfoCopy = extrasInfo;
  playTypeCopy = playType;
  responderCopy = responder;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __127__VUIActionPlay__playMediaInfo_multiviewMediaInfos_watchType_extrasInfo_playType_isRentAndWatchNow_targetResponder_completion___block_invoke;
  aBlock[3] = &unk_1E872E9F0;
  v19 = completionCopy;
  v44 = v19;
  v20 = _Block_copy(aBlock);
  videosPlayables = [infoCopy videosPlayables];
  firstObject = [videosPlayables firstObject];
  sharedWatchId = [firstObject sharedWatchId];

  v24 = [VUIGroupActivitiesManagerObjC isSharedWatchIdValidForCurrentSession:sharedWatchId];
  if (type == 1 && sharedWatchId && !v24)
  {
    v25 = VUIDefaultLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v25, OS_LOG_TYPE_DEFAULT, "VUIActionPlay - Ignoring playback request because the session does not match the shared watch id", buf, 2u);
    }

    (*(v20 + 2))(v20, 0, 0);
    v27 = extrasInfoCopy;
    v26 = infosCopy;
  }

  else
  {
    extrasInfoCopy = [VUIPlaybackStartupCoordinator startupCoordinatorWithMediaInfo:infoCopy watchType:type isRentAndWatchNow:nowCopy, extrasInfoCopy];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __127__VUIActionPlay__playMediaInfo_multiviewMediaInfos_watchType_extrasInfo_playType_isRentAndWatchNow_targetResponder_completion___block_invoke_68;
    v33[3] = &unk_1E8733A38;
    v34 = extrasInfoCopy;
    typeCopy = type;
    v35 = infoCopy;
    v26 = infosCopy;
    v36 = infosCopy;
    v27 = v31;
    v37 = v31;
    v38 = playTypeCopy;
    v39 = responderCopy;
    v40 = v20;
    v29 = extrasInfoCopy;
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

+ (void)presentPlaybackWithMediaInfo:(id)info multiviewMediaInfos:(id)infos extrasInfo:(id)extrasInfo isCoWatching:(BOOL)watching watchType:(int64_t)type playType:(id)playType allowsCellular:(BOOL)cellular previewMetadata:(id)self0 targetResponder:(id)self1 completion:(id)self2
{
  v92[1] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  infosCopy = infos;
  playTypeCopy = playType;
  metadataCopy = metadata;
  responderCopy = responder;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __167__VUIActionPlay_presentPlaybackWithMediaInfo_multiviewMediaInfos_extrasInfo_isCoWatching_watchType_playType_allowsCellular_previewMetadata_targetResponder_completion___block_invoke;
  aBlock[3] = &unk_1E872D790;
  v18 = completionCopy;
  v90 = v18;
  v19 = _Block_copy(aBlock);
  tvpPlaylist = [infoCopy tvpPlaylist];
  v78 = +[VUIApplicationRouter currentNavigationController];
  topViewController = [v78 topViewController];
  presentedViewController = [topViewController presentedViewController];
  v23 = presentedViewController;
  if (!presentedViewController || ([presentedViewController isBeingDismissed] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v24 = +[VUITVAppLauncher sharedInstance];
    appWindow = [v24 appWindow];

    rootViewController = [appWindow rootViewController];

    if (!rootViewController)
    {
      v27 = +[VUIInterfaceFactory sharedInstance];
      rootViewController = [v27 controllerPresenter];
    }
  }

  else
  {
    rootViewController = v23;
  }

  v82 = responderCopy;
  v79 = v19;
  v80 = v18;
  v76 = v23;
  v77 = topViewController;
  if (+[VUITVExtension isRunningInCompanionApp])
  {
    v28 = metadataCopy;
    v29 = +[VUITVExtension sharedInstance];
    presentationViewController = [v29 presentationViewController];

    v83 = presentationViewController;
  }

  else
  {
    v83 = rootViewController;
    v28 = metadataCopy;
  }

  v31 = playTypeCopy;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(infoCopy, "playbackContext")}];
  [dictionary setObject:v33 forKey:VUIPlaybackManagerPresentPlaylistUserInfoPlaybackContext[0]];

  videosPlayables = [infoCopy videosPlayables];
  firstObject = [videosPlayables firstObject];
  metadata = [firstObject metadata];

  v37 = tvpPlaylist;
  if (metadata)
  {
    videosPlayables2 = [infoCopy videosPlayables];
    firstObject2 = [videosPlayables2 firstObject];
    metadata2 = [firstObject2 metadata];
    isEligibleForPlayerTabs = [metadata2 isEligibleForPlayerTabs];

    v42 = isEligibleForPlayerTabs;
    tvpPlaylist = v37;
    v43 = [MEMORY[0x1E696AD98] numberWithBool:v42];
    [dictionary setObject:v43 forKey:VUIPlaybackManagerPresentPlaylistUserInfoIsEligibleForPlayerTabs[0]];
  }

  v44 = v28;
  [dictionary vui_setObjectIfNotNil:v28 forKey:VUIPlaybackManagerPresentPlaylistUserInfoSharedWatchMetadata[0]];
  videosPlayables3 = [infoCopy videosPlayables];
  firstObject3 = [videosPlayables3 firstObject];
  sharedWatchId = [firstObject3 sharedWatchId];
  [dictionary vui_setObjectIfNotNil:sharedWatchId forKey:VUIPlaybackManagerPresentPlaylistUserInfoSharedWatchId[0]];

  videosPlayables4 = [infoCopy videosPlayables];
  firstObject4 = [videosPlayables4 firstObject];
  sharedWatchUrl = [firstObject4 sharedWatchUrl];
  [dictionary vui_setObjectIfNotNil:sharedWatchUrl forKey:VUIPlaybackManagerPresentPlaylistUserInfoSharedWatchURL[0]];

  v51 = v82;
  [dictionary vui_setObjectIfNotNil:v82 forKey:VUIPlaybackManagerPresentPlaylistUserInfoTargetResponder[0]];
  v75 = infoCopy;
  if ([playTypeCopy isEqualToString:@"multiview"])
  {
    v52 = +[VUIPlaybackManager sharedInstance];
    if ([v52 isPlaylistBeingPresented:tvpPlaylist])
    {

LABEL_25:
      v53 = +[VUIPlaybackManager sharedInstance];
      [v53 removePlaylistFromMultiview:v37 animated:1];
      v65 = v79;
      v66 = v80;
      v67 = v78;
      v68 = infosCopy;
      goto LABEL_28;
    }

    v63 = +[VUIPlaybackManager sharedInstance];
    v64 = [v63 isPlaylistBeingPresentedInMultiview:tvpPlaylist];

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
      isMultiviewPlaybackUIBeingShown = [v71 isMultiviewPlaybackUIBeingShown];

      if (!isMultiviewPlaybackUIBeingShown)
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
    v68 = infosCopy;
    v31 = playTypeCopy;
    goto LABEL_28;
  }

  v74 = v44;
  v53 = [MEMORY[0x1E695DF70] arrayWithObject:tvpPlaylist];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v54 = infosCopy;
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

        tvpPlaylist2 = [*(*(&v85 + 1) + 8 * i) tvpPlaylist];
        [v53 addObject:tvpPlaylist2];
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
    v69 = [dictionary copy];
    [v62 presentPlaylist:v37 fromViewController:v83 dismissalOperation:0 allowsCellular:cellular animated:1 userInfo:v69 completion:0];
  }

  else
  {
    [v61 presentMultiviewWithPlaylists:v53 fromViewController:v83 animated:1];
  }

  v44 = v74;
  v51 = v82;
  v66 = v80;
  v67 = v78;

  v68 = infosCopy;
  v31 = playTypeCopy;
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
  playbackContext = [(VUIActionPlay *)self playbackContext];
  videosPlayables = [(VUIActionPlay *)self videosPlayables];
  firstObject = [videosPlayables firstObject];
  mediaType = [firstObject mediaType];

  v7 = [mediaType isEqualToString:@"Trailer"];
  v8 = playbackContext == 3;
  playRequiresAccount = playbackContext != 3;
  if (!v8 && v7)
  {
    playRequiresAccount = [(VUIActionPlay *)self playRequiresAccount];
  }

  return playRequiresAccount;
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