@interface VUIPlaybackReporterUTS
+ (BOOL)_shouldCacheResumeTimeForMediaType:(id)type;
+ (id)sharedInstance;
+ (void)_cachePlaybackResumeTimeForReferenceID:(id)d canonicalID:(id)iD absoluteResumeTime:(id)time featureRelativeResumeTime:(id)resumeTime;
- (BOOL)_isTransitionValidForPlayer:(id)player fromState:(id)state toState:(id)toState;
- (VUIPlaybackReporterUTS)init;
- (VUIPlaybackUpNextConfig)playbackUpNextConfig;
- (WLKPlaybackReporter)reporter;
- (id)_createSessionForPlayer:(id)player;
- (id)_wlkPlaybackRateForState:(id)state player:(id)player;
- (int64_t)_wlkPlaybackStateForState:(id)state;
- (void)_endSession:(id)session;
- (void)_handleBgMCEmbeddedPlayerVCTransferredToFullScreenControllerNotification:(id)notification;
- (void)_handleBgMCWillStartPlaybackNotification:(id)notification;
- (void)_reportForPlayer:(id)player playerState:(id)state completionState:(unint64_t)completionState completionBlock:(id)block;
- (void)_reportForSession:(id)session state:(id)state reason:(id)reason;
- (void)_reportLinearOrEBSForPlayer:(id)player isLinear:(BOOL)linear playerState:(id)state completionState:(unint64_t)completionState completionBlock:(id)block;
- (void)_reportSummary:(id)summary sessionID:(id)d completion:(id)completion;
- (void)_reportVODForPlayer:(id)player playerState:(id)state completionState:(unint64_t)completionState completionBlock:(id)block;
- (void)_setSessionMetadataValue:(id)value forKey:(id)key player:(id)player;
- (void)dealloc;
@end

@implementation VUIPlaybackReporterUTS

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_19 != -1)
  {
    +[VUIPlaybackReporterUTS sharedInstance];
  }

  v3 = sharedInstance___instance_5;

  return v3;
}

void __40__VUIPlaybackReporterUTS_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(VUIPlaybackReporterUTS);
  v1 = sharedInstance___instance_5;
  sharedInstance___instance_5 = v0;
}

- (VUIPlaybackReporterUTS)init
{
  v8.receiver = self;
  v8.super_class = VUIPlaybackReporterUTS;
  v2 = [(VUIPlaybackReporter *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:5 valueOptions:0 capacity:0];
    pendingPlayerProperties = v2->_pendingPlayerProperties;
    v2->_pendingPlayerProperties = v3;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleBgMCWillStartPlaybackNotification_ name:@"VUIBackgroundMediaControllerWillStartPlaybackNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__handleBgMCEmbeddedPlayerVCTransferredToFullScreenControllerNotification_ name:@"VUIBackgroundMediaControllerEmbeddedPlayerViewControllerTransferredToFullScreenControllerNotification" object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIPlaybackReporterUTS;
  [(VUIPlaybackReporter *)&v4 dealloc];
}

- (id)_createSessionForPlayer:(id)player
{
  playerCopy = player;
  v5 = [[VUIPlaybackReporterSession alloc] initWithPlayer:playerCopy context:0];
  v6 = [(NSMapTable *)self->_pendingPlayerProperties objectForKey:playerCopy];
  if (v6)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __50__VUIPlaybackReporterUTS__createSessionForPlayer___block_invoke;
    v23 = &unk_1E8732C58;
    v24 = v5;
    [v6 enumerateKeysAndObjectsUsingBlock:&v20];
    [(NSMapTable *)self->_pendingPlayerProperties removeObjectForKey:playerCopy];
  }

  currentMediaItem = [playerCopy currentMediaItem];
  v8 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];
  v9 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5C38]];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    v11 = VUIDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      v12 = "VUIPlaybackReporterUTS - UTS reporting disabled for adult content";
LABEL_10:
      _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, v12, &v19, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (([v8 isEqualToString:*MEMORY[0x1E69D5EC0]] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E69D5ED8]))
  {
    v11 = VUIDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      v12 = "VUIPlaybackReporterUTS - UTS reporting disabled for trailers/previews";
      goto LABEL_10;
    }

LABEL_11:

    v13 = 0;
    goto LABEL_12;
  }

  if (v5)
  {
    v15 = [(VUIPlaybackReporterSession *)v5 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyForegroundPlayback"];
    if (v15)
    {
      v16 = v15;
      v17 = [(VUIPlaybackReporterSession *)v5 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyForegroundPlayback"];
      bOOLValue2 = [v17 BOOLValue];

      if ((bOOLValue2 & 1) == 0)
      {
        v11 = VUIDefaultLogObject();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_11;
        }

        LOWORD(v19) = 0;
        v12 = "VUIPlaybackReporterUTS - UTS reporting disabled for background playback";
        goto LABEL_10;
      }
    }
  }

  v13 = 1;
LABEL_12:
  [(VUIPlaybackReporterSession *)v5 setReportingEnabled:v13, v19, v20, v21, v22, v23];

  return v5;
}

- (void)_reportForSession:(id)session state:(id)state reason:(id)reason
{
  stateCopy = state;
  player = [session player];
  [(VUIPlaybackReporterUTS *)self _reportForPlayer:player playerState:stateCopy completionState:0 completionBlock:0];
}

- (BOOL)_isTransitionValidForPlayer:(id)player fromState:(id)state toState:(id)toState
{
  playerCopy = player;
  stateCopy = state;
  toStateCopy = toState;
  if ([VUIPlaybackUtilities playerIsLive:playerCopy])
  {
    playing = [MEMORY[0x1E69D5A40] playing];
    v12 = playing;
    if (playing == toStateCopy)
    {
      paused = [MEMORY[0x1E69D5A40] paused];

      if (paused != stateCopy)
      {
        v14 = 1;
        goto LABEL_6;
      }
    }

    else
    {
    }

    stopped = [MEMORY[0x1E69D5A40] stopped];
    v14 = stopped == toStateCopy;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = VUIPlaybackReporterUTS;
    v14 = [(VUIPlaybackReporter *)&v17 _isTransitionValidForPlayer:playerCopy fromState:stateCopy toState:toStateCopy];
  }

LABEL_6:

  return v14;
}

- (void)_endSession:(id)session
{
  v7.receiver = self;
  v7.super_class = VUIPlaybackReporterUTS;
  sessionCopy = session;
  [(VUIPlaybackReporter *)&v7 _endSession:sessionCopy];
  v5 = [(VUIPlaybackReporterUTS *)self reporter:v7.receiver];
  uUID = [sessionCopy UUID];

  [v5 endPlaybackSession:uUID];
}

- (WLKPlaybackReporter)reporter
{
  reporter = self->_reporter;
  if (!reporter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69E1588]);
    v5 = self->_reporter;
    self->_reporter = v4;

    reporter = self->_reporter;
  }

  return reporter;
}

- (VUIPlaybackUpNextConfig)playbackUpNextConfig
{
  playbackUpNextConfig = self->_playbackUpNextConfig;
  if (!playbackUpNextConfig)
  {
    v4 = +[VUIFeaturesConfiguration sharedInstance];
    playbackUpNextConfig = [v4 playbackUpNextConfig];

    v6 = self->_playbackUpNextConfig;
    self->_playbackUpNextConfig = playbackUpNextConfig;

    playbackUpNextConfig = self->_playbackUpNextConfig;
  }

  return playbackUpNextConfig;
}

- (void)_reportForPlayer:(id)player playerState:(id)state completionState:(unint64_t)completionState completionBlock:(id)block
{
  playerCopy = player;
  stateCopy = state;
  blockCopy = block;
  currentMediaItem = [playerCopy currentMediaItem];
  if ([VUIPlaybackUtilities playerIsLive:playerCopy])
  {
    v14 = [currentMediaItem mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyPlayableType"];
    unsignedIntValue = [v14 unsignedIntValue];

    if (unsignedIntValue != 1)
    {
      v16 = [currentMediaItem mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyPlayableType"];
      unsignedIntValue2 = [v16 unsignedIntValue];

      if (unsignedIntValue2 == 2)
      {
        selfCopy2 = self;
        v19 = playerCopy;
        v20 = 0;
LABEL_10:
        [(VUIPlaybackReporterUTS *)selfCopy2 _reportLinearOrEBSForPlayer:v19 isLinear:v20 playerState:stateCopy completionState:completionState completionBlock:blockCopy];
        goto LABEL_11;
      }

      v21 = VUIDefaultLogObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
      }
    }

    selfCopy2 = self;
    v19 = playerCopy;
    v20 = 1;
    goto LABEL_10;
  }

  [(VUIPlaybackReporterUTS *)self _reportVODForPlayer:playerCopy playerState:stateCopy completionState:completionState completionBlock:blockCopy];
LABEL_11:
}

- (void)_reportVODForPlayer:(id)player playerState:(id)state completionState:(unint64_t)completionState completionBlock:(id)block
{
  v110[1] = *MEMORY[0x1E69E9840];
  playerCopy = player;
  stateCopy = state;
  blockCopy = block;
  v13 = VUIDefaultLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterUTS - VOD report", buf, 2u);
  }

  currentMediaItem = [playerCopy currentMediaItem];
  v15 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5B30]];
  if (v15)
  {
    ams_DSID = v15;
    goto LABEL_8;
  }

  v17 = VUIDefaultLogObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterUTS - No DSID specified in mediaItem. Falling back to active account", buf, 2u);
  }

  activeAccount = [MEMORY[0x1E69D5920] activeAccount];
  ams_DSID = [activeAccount ams_DSID];

  if (ams_DSID)
  {
LABEL_8:
    if (!stateCopy)
    {
      stateCopy = [playerCopy state];
    }

    v90 = [(VUIPlaybackReporterUTS *)self _wlkPlaybackStateForState:stateCopy];
    v99 = [(VUIPlaybackReporterUTS *)self _wlkPlaybackRateForState:stateCopy player:playerCopy];
    v96 = ams_DSID;
    if (completionState)
    {
      if (completionState == 1)
      {
        v19 = VUIDefaultLogObject();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterUTS - [CompletionState] State was specified: InProgress", buf, 2u);
        }

        v20 = 1;
      }

      else
      {
        if (completionState != 2)
        {
          v20 = 0;
LABEL_51:
          [playerCopy elapsedTime];
          v45 = v44;
          v46 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5BC0]];
          v47 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5BB8]];
          v48 = v47;
          v100 = 0;
          if (v46 && v47)
          {
            [v46 doubleValue];
            v50 = v45 - v49;
            if (v50 >= 0.0)
            {
              v51 = v50;
            }

            else
            {
              v51 = 0.0;
            }

            [v48 doubleValue];
            if (v51 < v52)
            {
              v52 = v51;
            }

            v100 = [MEMORY[0x1E696AD98] numberWithDouble:v52];
          }

          v98 = v48;
          v89 = v46;
          selfCopy = self;
          v93 = blockCopy;
          v94 = stateCopy;
          v53 = +[VUIAppReviewManager sharedInstance];
          v102[0] = MEMORY[0x1E69E9820];
          v102[1] = 3221225472;
          v102[2] = __90__VUIPlaybackReporterUTS__reportVODForPlayer_playerState_completionState_completionBlock___block_invoke;
          v102[3] = &unk_1E8733238;
          v97 = v20;
          v104 = v20;
          v95 = playerCopy;
          v54 = playerCopy;
          v103 = v54;
          [v53 isFeatureEnabled:v102];

          +[_TtC8VideosUI8VideosUI getPlaybackElapsedTime];
          v56 = v55;
          [v54 elapsedTime];
          if (v56 < v57)
          {
            [v54 elapsedTime];
            [_TtC8VideosUI8VideosUI markPlaybackElapsedTime:?];
          }

          v58 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];
          v59 = [v58 isEqualToString:*MEMORY[0x1E69D5ED0]];

          v60 = MEMORY[0x1E69D5D38];
          if (!v59)
          {
            v60 = MEMORY[0x1E69D5DC0];
          }

          v61 = [currentMediaItem mediaItemMetadataForProperty:*v60];
          v62 = MEMORY[0x1E69E1590];
          mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
          bundleIdentifier = [mainBundle bundleIdentifier];
          v64 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5AD0]];
          [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5B98]];
          v65 = v101 = currentMediaItem;
          stringValue = [ams_DSID stringValue];
          v85 = [v101 mediaItemMetadataForProperty:*MEMORY[0x1E69D5BA0]];
          date = [MEMORY[0x1E695DF00] date];
          v67 = MEMORY[0x1E696AD98];
          [v54 duration];
          v68 = [v67 numberWithDouble:?];
          v69 = MEMORY[0x1E696AD98];
          [v54 elapsedTime];
          v70 = [v69 numberWithDouble:?];
          v71 = [v101 mediaItemMetadataForProperty:@"VUIMediaItemMetadataPlayablePassThrough"];
          v88 = v61;
          v91 = [v62 VODSummaryWithBundleID:bundleIdentifier channelID:v64 contentID:v65 accountID:stringValue externalProfileID:v85 timestamp:date duration:v68 elapsedTime:v70 featureDuration:v98 featureElapsedTime:v100 playbackState:v90 playbackRate:v99 playablePassthrough:v71 contentTitle:v61 completionState:v97];

          v72 = v54;
          currentMediaItem = v101;

          if (![objc_opt_class() _shouldCacheResumeTimeForMediaType:v101])
          {
            goto LABEL_72;
          }

          v73 = MEMORY[0x1E696AD98];
          [v54 elapsedTime];
          v74 = [v73 numberWithDouble:?];
          v75 = [v101 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CD8]];
          v76 = [v101 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];
          if (v97)
          {
            if (v97 != 2)
            {
              goto LABEL_69;
            }
          }

          else
          {
            v77 = MEMORY[0x1E69E1590];
            [v72 duration];
            v79 = v78;
            [v72 elapsedTime];
            v81 = [v77 completionStateForDuration:v79 elapsedTime:v80];
            if (v81 != 2)
            {
              if (v81 != 1)
              {
LABEL_71:

LABEL_72:
                v83 = [(VUIPlaybackReporter *)selfCopy _sessionForPlayer:v72];
                uUID = [v83 UUID];

                blockCopy = v93;
                [(VUIPlaybackReporterUTS *)selfCopy _reportSummary:v91 sessionID:uUID completion:v93];

                stateCopy = v94;
                playerCopy = v95;
                v28 = v96;
                goto LABEL_73;
              }

LABEL_69:
              [objc_opt_class() _cachePlaybackResumeTimeForReferenceID:v75 canonicalID:v76 absoluteResumeTime:v74 featureRelativeResumeTime:v100];
              goto LABEL_71;
            }
          }

          v82 = +[VUIStreamingBookmarkCache sharedInstance];
          [v82 removeBookmarkForReferenceID:v75];

          goto LABEL_71;
        }

        v19 = VUIDefaultLogObject();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v20 = 2;
          _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterUTS - [CompletionState] State was specified: Done", buf, 2u);
        }

        else
        {
          v20 = 2;
        }
      }
    }

    else
    {
      currentMediaItem2 = [playerCopy currentMediaItem];
      v19 = [currentMediaItem2 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CB0]];

      currentMediaItem3 = [playerCopy currentMediaItem];
      v23 = [currentMediaItem3 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DF8]];

      if (v19 | v23)
      {
        objc_opt_class();
        v24 = 0.0;
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v19 isEqualToNumber:&unk_1F5E5D7D0] & 1) == 0)
        {
          [v19 doubleValue];
          v31 = v30;
          [(VUIPlaybackReporterUTS *)self _completionFudgeFactor];
          v24 = v31 - v32;
          v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[PostPlay:%.3f]", v31 - v32];
        }

        else
        {
          v25 = &stru_1F5DB25C0;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v23 isEqualToNumber:&unk_1F5E5D7D0] & 1) == 0)
        {
          [v23 doubleValue];
          v34 = v33;
          if (v24 == 0.0 || v33 < v24)
          {
            v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[WatchedTime:%.3f]", *&v33];
            v36 = v25;
            v25 = v35;

            v24 = v34;
          }
        }

        [playerCopy duration];
        v38 = fmin(v37, v24);
        if (v38 == 0.0)
        {
          v29 = VUIDefaultLogObject();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v106 = v19;
            v107 = 2112;
            v108 = v23;
            _os_log_impl(&dword_1E323F000, v29, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterUTS - [CompletionState] HLS metadata is invalid. PostPlay:[%@] Watched:[%@]", buf, 0x16u);
          }

          v20 = 0;
        }

        else
        {
          v39 = v37;
          [playerCopy elapsedTime];
          if (v40 >= v38)
          {
            v41 = @" [Elapsed:%.3f] [Duration:%.3f] [Done]";
          }

          else
          {
            v41 = @" [Elapsed:%.3f] [Duration:%.3f] [InProgress]";
          }

          if (v40 < v38)
          {
            v20 = 1;
          }

          else
          {
            v20 = 2;
          }

          v42 = [(__CFString *)v25 stringByAppendingFormat:v41, *&v40, *&v39];
          v43 = v25;
          v25 = v42;

          v29 = VUIDefaultLogObject();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v106 = v25;
            _os_log_impl(&dword_1E323F000, v29, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterUTS - [CompletionState] State was derived from HLS metadata: %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v29 = VUIDefaultLogObject();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E323F000, v29, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterUTS - [CompletionState] State unknown", buf, 2u);
        }

        v20 = 0;
        v25 = &stru_1F5DB25C0;
      }

      ams_DSID = v96;
    }

    goto LABEL_51;
  }

  v26 = VUIDefaultLogObject();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v26, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterUTS - No DSID found. Will not report", buf, 2u);
  }

  if (blockCopy)
  {
    v27 = MEMORY[0x1E696ABC0];
    v109 = *MEMORY[0x1E696A578];
    v110[0] = @"DSID is missing";
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v110 forKeys:&v109 count:1];
    v99 = [v27 errorWithDomain:@"VUIPlaybackReporterUTS" code:101 userInfo:v28];
    blockCopy[2](blockCopy, 0);
LABEL_73:
  }
}

void __90__VUIPlaybackReporterUTS__reportVODForPlayer_playerState_completionState_completionBlock___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 1.0;
    if (*(a1 + 40) != 2)
    {
      [*(a1 + 32) duration];
      v3 = 0.0;
      if (v4 > 0.0)
      {
        [*(a1 + 32) elapsedTime];
        v6 = v5;
        [*(a1 + 32) duration];
        v3 = v6 / v7;
      }
    }

    v8 = +[VUIAppReviewManager sharedInstance];
    [v8 setMostRecentPlaybackProgressForNonTrailerContent:v3];
  }
}

- (void)_reportLinearOrEBSForPlayer:(id)player isLinear:(BOOL)linear playerState:(id)state completionState:(unint64_t)completionState completionBlock:(id)block
{
  linearCopy = linear;
  v51[1] = *MEMORY[0x1E69E9840];
  playerCopy = player;
  blockCopy = block;
  stateCopy = state;
  v14 = [(VUIPlaybackReporterUTS *)self _wlkPlaybackStateForState:stateCopy];
  v48 = [(VUIPlaybackReporterUTS *)self _wlkPlaybackRateForState:stateCopy player:playerCopy];

  currentMediaItem = [playerCopy currentMediaItem];
  v16 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5B30]];
  if (v16)
  {
    ams_DSID = v16;
LABEL_6:
    v20 = VUIDefaultLogObject();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    selfCopy = self;
    v47 = blockCopy;
    v44 = v14;
    v45 = ams_DSID;
    v42 = currentMediaItem;
    if (linearCopy)
    {
      if (v21)
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterUTS - Linear report", buf, 2u);
      }

      v40 = MEMORY[0x1E69E1590];
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v23 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5AD0]];
      v24 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5BA8]];
      stringValue = [ams_DSID stringValue];
      v26 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5BA0]];
      date = [MEMORY[0x1E695DF00] date];
      [playerCopy playbackDate];
      v29 = v28 = playerCopy;
      v30 = [currentMediaItem mediaItemMetadataForProperty:@"VUIMediaItemMetadataPlayablePassThrough"];
      v31 = bundleIdentifier;
      v32 = [v40 liveSummaryWithBundleID:bundleIdentifier channelID:v23 serviceID:v24 accountID:stringValue externalProfileID:v26 timestamp:date playbackState:v44 playbackRate:v48 currentPlaybackDate:v29 playablePassthrough:v30];
    }

    else
    {
      if (v21)
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterUTS - EBS report", buf, 2u);
      }

      v41 = MEMORY[0x1E69E1590];
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier2 = [mainBundle bundleIdentifier];
      v23 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5AD0]];
      v24 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5B98]];
      stringValue = [ams_DSID stringValue];
      v26 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5BA0]];
      date = [MEMORY[0x1E695DF00] date];
      [playerCopy playbackDate];
      v29 = v28 = playerCopy;
      v30 = [currentMediaItem mediaItemMetadataForProperty:@"VUIMediaItemMetadataPlayablePassThrough"];
      v31 = bundleIdentifier2;
      v32 = [v41 EBSSummaryWithBundleID:bundleIdentifier2 channelID:v23 externalId:v24 accountID:stringValue externalProfileID:v26 timestamp:date playbackState:v44 playbackRate:v48 currentPlaybackDate:v29 playablePassthrough:v30];
    }

    v34 = v32;

    v35 = [(VUIPlaybackReporter *)selfCopy _sessionForPlayer:v28];
    uUID = [v35 UUID];

    blockCopy = v47;
    [(VUIPlaybackReporterUTS *)selfCopy _reportSummary:v34 sessionID:uUID completion:v47];

    playerCopy = v28;
    v37 = v45;
    currentMediaItem = v42;
    goto LABEL_14;
  }

  v18 = VUIDefaultLogObject();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v18, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterUTS - No DSID specified in mediaItem. Falling back to active account", buf, 2u);
  }

  activeAccount = [MEMORY[0x1E69D5920] activeAccount];
  ams_DSID = [activeAccount ams_DSID];

  if (ams_DSID)
  {
    goto LABEL_6;
  }

  v38 = VUIDefaultLogObject();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v38, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterUTS - No DSID found. Will not report", buf, 2u);
  }

  if (blockCopy)
  {
    v39 = MEMORY[0x1E696ABC0];
    v50 = *MEMORY[0x1E696A578];
    v51[0] = @"DSID is missing";
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
    v34 = [v39 errorWithDomain:@"VUIPlaybackReporterUTS" code:101 userInfo:v37];
    blockCopy[2](blockCopy, 0, v34);
LABEL_14:
  }
}

- (void)_reportSummary:(id)summary sessionID:(id)d completion:(id)completion
{
  v27[1] = *MEMORY[0x1E69E9840];
  summaryCopy = summary;
  dCopy = d;
  completionCopy = completion;
  if (summaryCopy)
  {
    contentID = [summaryCopy contentID];
    if (contentID)
    {
      [summaryCopy contentID];
    }

    else
    {
      [summaryCopy serviceID];
    }
    v14 = ;

    reporter = [(VUIPlaybackReporterUTS *)self reporter];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __62__VUIPlaybackReporterUTS__reportSummary_sessionID_completion___block_invoke;
    v18[3] = &unk_1E872E470;
    v19 = completionCopy;
    [reporter reportPlayback:summaryCopy sessionID:dCopy completion:v18];

    v17 = VUIDefaultLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v21 = v14;
      v22 = 2112;
      v23 = dCopy;
      v24 = 2112;
      v25 = summaryCopy;
      _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterUTS - Report sent for [%@] [%@] %@", buf, 0x20u);
    }

    v15 = v19;
    goto LABEL_12;
  }

  v12 = VUIDefaultLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterUTS - Playback summary is nil", buf, 2u);
  }

  if (completionCopy)
  {
    v13 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A578];
    v27[0] = @"Playback summary is nil";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v15 = [v13 errorWithDomain:@"VUIPlaybackReporterUTS" code:100 userInfo:v14];
    (*(completionCopy + 2))(completionCopy, 0, v15);
LABEL_12:
  }
}

void __62__VUIPlaybackReporterUTS__reportSummary_sessionID_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = +[VUIFeaturesConfiguration sharedInstance];
  v7 = [v6 playbackUpNextConfig];
  [v7 documentUpdateOffsetInterval];
  v9 = dispatch_time(0, (v8 * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__VUIPlaybackReporterUTS__reportSummary_sessionID_completion___block_invoke_2;
  block[3] = &unk_1E87317D0;
  v10 = *(a1 + 32);
  v15 = a2;
  v13 = v5;
  v14 = v10;
  v11 = v5;
  dispatch_after(v9, MEMORY[0x1E69E96A0], block);
}

uint64_t __62__VUIPlaybackReporterUTS__reportSummary_sessionID_completion___block_invoke_2(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = result;
    v2 = VUIDefaultLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterUTS - Calling _reportSummary completion", v3, 2u);
    }

    return (*(*(v1 + 40) + 16))();
  }

  return result;
}

- (int64_t)_wlkPlaybackStateForState:(id)state
{
  stateCopy = state;
  playing = [MEMORY[0x1E69D5A40] playing];

  if (playing == stateCopy)
  {
    v9 = 1;
    goto LABEL_10;
  }

  paused = [MEMORY[0x1E69D5A40] paused];
  if (paused == stateCopy)
  {
    goto LABEL_8;
  }

  loading = [MEMORY[0x1E69D5A40] loading];
  v7 = loading;
  if (loading == stateCopy)
  {

LABEL_8:
    goto LABEL_9;
  }

  scanning = [MEMORY[0x1E69D5A40] scanning];

  if (scanning == stateCopy)
  {
LABEL_9:
    v9 = 2;
    goto LABEL_10;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (id)_wlkPlaybackRateForState:(id)state player:(id)player
{
  playerCopy = player;
  v6 = MEMORY[0x1E69D5A40];
  stateCopy = state;
  playing = [v6 playing];

  if (playing == stateCopy)
  {
    v10 = MEMORY[0x1E696AD98];
    [playerCopy rateUsedForPlayback];
    v9 = [v10 numberWithDouble:?];
  }

  else
  {
    v9 = &unk_1F5E5D7D0;
  }

  return v9;
}

- (void)_handleBgMCWillStartPlaybackNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = notificationCopy;
  if (isKindOfClass)
  {
    object2 = [notificationCopy object];
    player = [object2 player];
    userInfo = [notificationCopy userInfo];
    v10 = [userInfo objectForKeyedSubscript:@"VUIBackgroundMediaControllerIsForegroundedKey"];
    if (v10)
    {
      [(VUIPlaybackReporterUTS *)self _setSessionMetadataValue:v10 forKey:@"VUIPlaybackReporterSessionMetadataKeyForegroundPlayback" player:player];
    }

    v6 = notificationCopy;
  }
}

- (void)_handleBgMCEmbeddedPlayerVCTransferredToFullScreenControllerNotification:(id)notification
{
  v14 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object2 = [notificationCopy object];
    v8 = [(VUIPlaybackReporter *)self _sessionForPlayer:object2];
    v9 = v8;
    if (v8)
    {
      [v8 setMetadata:MEMORY[0x1E695E118] forKey:@"VUIPlaybackReporterSessionMetadataKeyForegroundPlayback"];
      [v9 setReportingEnabled:1];
      v10 = VUIDefaultLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = object2;
        _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterUTS - Initiating report for player - %@ after being transferred to full screen controller", &v12, 0xCu);
      }

      state = [object2 state];
      [(VUIPlaybackReporterUTS *)self _reportForPlayer:object2 playerState:state completionState:0 completionBlock:0];
    }
  }
}

- (void)_setSessionMetadataValue:(id)value forKey:(id)key player:(id)player
{
  valueCopy = value;
  keyCopy = key;
  playerCopy = player;
  v10 = [(VUIPlaybackReporter *)self _sessionForPlayer:playerCopy];
  v11 = v10;
  if (v10)
  {
    [v10 setMetadata:valueCopy forKey:keyCopy];
  }

  else if (keyCopy)
  {
    v12 = [(NSMapTable *)self->_pendingPlayerProperties objectForKey:playerCopy];
    if (!v12)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    if (valueCopy)
    {
      [v12 setObject:valueCopy forKey:keyCopy];
    }

    else
    {
      [v12 removeObjectForKey:keyCopy];
    }

    [(NSMapTable *)self->_pendingPlayerProperties setObject:v12 forKey:playerCopy];
  }
}

+ (BOOL)_shouldCacheResumeTimeForMediaType:(id)type
{
  v3 = [type mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];
  if ([v3 isEqualToString:*MEMORY[0x1E69D5ED0]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69D5EB8]))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:*MEMORY[0x1E69D5EC8]];
  }

  return v4;
}

+ (void)_cachePlaybackResumeTimeForReferenceID:(id)d canonicalID:(id)iD absoluteResumeTime:(id)time featureRelativeResumeTime:(id)resumeTime
{
  if (d && iD && time)
  {
    v9 = MEMORY[0x1E695DF00];
    resumeTimeCopy = resumeTime;
    timeCopy = time;
    iDCopy = iD;
    dCopy = d;
    date = [v9 date];
    v14 = +[VUIStreamingBookmarkCache sharedInstance];
    [v14 addBookmarkForReferenceID:dCopy canonicalID:iDCopy absoluteResumeTime:timeCopy absoluteBookmarkTimestamp:date relativeResumeTime:resumeTimeCopy relativeBookmarkTimestamp:date];
  }
}

@end