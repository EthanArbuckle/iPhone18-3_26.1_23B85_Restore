@interface VUIPlaybackReporterVPAF
+ (id)sharedInstance;
- (BOOL)_isDelegatedForPlayer:(id)player;
- (VUIPlaybackReporterVPAF)init;
- (id)_audioFormatForPlayer:(id)player session:(id)session;
- (id)_audioInfoForPlayer:(id)player;
- (id)_colorRangeForPlayer:(id)player;
- (id)_connectionInfo;
- (id)_createSessionForPlayer:(id)player;
- (id)_delegatedInfoForPlayer:(id)player;
- (id)_downloadInfoForPlayer:(id)player;
- (id)_focusInfoForSession:(id)session;
- (id)_metricsForPlayer:(id)player session:(id)session;
- (id)_metricsForSession:(id)session;
- (id)_screenInfo;
- (id)_sensitiveContentInfoForPlayer:(id)player;
- (id)_skipIntroActionForSession:(id)session consume:(BOOL)consume;
- (id)_subtitleInfoForPlayer:(id)player;
- (id)_trackerWithBaseEventDataForSession:(id)session;
- (id)_videoDisplayInfoForSession:(id)session;
- (unint64_t)_capPlayHeadIfNeeded:(unint64_t)needed forSession:(id)session;
- (unint64_t)_snapToNearestPrerollIfNeeded:(unint64_t)needed forSession:(id)session isAtPrerollBoundary:(BOOL *)boundary;
- (void)_applicationDidEnterBackground:(id)background;
- (void)_applicationWillResignActive:(id)active;
- (void)_catchUpToLiveDidBegin:(id)begin;
- (void)_catchUpToLiveDidEnd:(id)end;
- (void)_catchUpToLiveItemDidChange:(id)change;
- (void)_catchUpToLiveItemWillChange:(id)change;
- (void)_createPlaybackDatePollingTimerForLiveStream:(id)stream;
- (void)_didSelectPostPlayItem:(id)item;
- (void)_endSession:(id)session;
- (void)_flushUnreportedEventsAfterDelay:(double)delay;
- (void)_handleBackgroundEnterPIPChange:(id)change;
- (void)_handleBackgroundExitPIPChange:(id)change;
- (void)_handleBgMCEmbeddedPlayerVCTransferredToFullScreenControllerNotification:(id)notification;
- (void)_handleDisplaySizeChange:(id)change;
- (void)_handleIsPlaybackUIBeingShownDidChange:(id)change;
- (void)_handleMediaControllerNotification:(id)notification;
- (void)_handlePIPChange:(id)change;
- (void)_handleSkipIntro_iOS:(id)s;
- (void)_invalidatePlaybackDatePollingTimerForLiveStream:(id)stream;
- (void)_liveSportsPostPlayAutoPlayWillStart:(id)start;
- (void)_liveSportsPostPlayManualPlayWillStart:(id)start;
- (void)_mediaControllerDidPlayToEnd:(id)end;
- (void)_playerCurrentMediaItemWillSeek:(id)seek;
- (void)_reportForSession:(id)session state:(id)state reason:(id)reason;
- (void)_reportSeekStopAtTimeInMS:(unint64_t)s playbackDate:(id)date session:(id)session tracker:(id)tracker player:(id)player;
- (void)_setSessionMetadataValue:(id)value forKey:(id)key player:(id)player;
- (void)dealloc;
@end

@implementation VUIPlaybackReporterVPAF

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_18 != -1)
  {
    +[VUIPlaybackReporterVPAF sharedInstance];
  }

  v3 = sharedInstance___instance_4;

  return v3;
}

void __41__VUIPlaybackReporterVPAF_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(VUIPlaybackReporterVPAF);
  v1 = sharedInstance___instance_4;
  sharedInstance___instance_4 = v0;
}

- (VUIPlaybackReporterVPAF)init
{
  v29.receiver = self;
  v29.super_class = VUIPlaybackReporterVPAF;
  v2 = [(VUIPlaybackReporter *)&v29 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:5 valueOptions:0 capacity:0];
    pendingPlayerProperties = v2->_pendingPlayerProperties;
    v2->_pendingPlayerProperties = v3;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__playerCurrentMediaItemWillSeek_ name:*MEMORY[0x1E69D60C0] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__handleMediaControllerNotification_ name:@"VUIBackgroundMediaControllerWillStartPlaybackNotification" object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel__handleMediaControllerNotification_ name:@"VUIBackgroundMediaControllerWillStopPlaybackNotification" object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:v2 selector:sel__mediaControllerDidPlayToEnd_ name:@"VUIBackgroundMediaControllerDidPlayToEndNotification" object:0];

    defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter5 addObserver:v2 selector:sel__handleDisplaySizeChange_ name:@"VUIBackgroundMediaControllerVideoDisplaySizeDidChangeNotification" object:0];

    defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter6 addObserver:v2 selector:sel__handleMediaControllerNotification_ name:@"VUIBackgroundMediaControllerForegroundStateDidChangeNotification" object:0];

    defaultCenter7 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter7 addObserver:v2 selector:sel__handleBgMCEmbeddedPlayerVCTransferredToFullScreenControllerNotification_ name:@"VUIBackgroundMediaControllerEmbeddedPlayerViewControllerTransferredToFullScreenControllerNotification" object:0];

    defaultCenter8 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter8 addObserver:v2 selector:sel__catchUpToLiveItemWillChange_ name:@"VUICatchUpToLiveIndexWillChangeNotification" object:0];

    defaultCenter9 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter9 addObserver:v2 selector:sel__catchUpToLiveItemDidChange_ name:@"VUICatchUpToLiveIndexDidChangeNotification" object:0];

    defaultCenter10 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter10 addObserver:v2 selector:sel__catchUpToLiveDidBegin_ name:@"VUICatchUpToLiveDidTransitionFromFullscreenNotification" object:0];

    defaultCenter11 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter11 addObserver:v2 selector:sel__catchUpToLiveDidEnd_ name:@"VUICatchUpToLiveDidTransitionToFullscreenNotification" object:0];

    defaultCenter12 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter12 addObserver:v2 selector:sel__liveSportsPostPlayAutoPlayWillStart_ name:@"VUILiveSportsPostPlayAutoPlayWillStartNotification" object:0];

    defaultCenter13 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter13 addObserver:v2 selector:sel__handleSkipIntro_iOS_ name:VUIPlaybackManagerWillSkipIntroNotification[0] object:0];

    defaultCenter14 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter14 addObserver:v2 selector:sel__handlePIPChange_ name:VUIPlaybackManagerIsPIPingDidChangeNotification[0] object:0];

    defaultCenter15 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter15 addObserver:v2 selector:sel__handleBackgroundEnterPIPChange_ name:@"VUIBackgroundMediaControllerDidEnterPIPNotification" object:0];

    defaultCenter16 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter16 addObserver:v2 selector:sel__handleBackgroundExitPIPChange_ name:@"VUIBackgroundMediaControllerDidStopPIPNotification" object:0];

    defaultCenter17 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter17 addObserver:v2 selector:sel__handleDisplaySizeChange_ name:VUIPlaybackManagerVideoDisplaySizeDidChange[0] object:0];

    defaultCenter18 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter18 addObserver:v2 selector:sel__handleIsPlaybackUIBeingShownDidChange_ name:VUIPlaybackManagerIsPlaybackUIBeingShownDidChange[0] object:0];

    defaultCenter19 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter19 addObserver:v2 selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];

    defaultCenter20 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter20 addObserver:v2 selector:sel__applicationWillResignActive_ name:*MEMORY[0x1E69DDBC8] object:0];

    defaultCenter21 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter21 addObserver:v2 selector:sel__didSelectPostPlayItem_ name:@"VUIPostPlayDidSelectItemNotification" object:0];

    defaultCenter22 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter22 addObserver:v2 selector:sel__liveSportsPostPlayManualPlayWillStart_ name:@"VUILiveSportsPostPlayManualPlayWillStartNotification" object:0];

    v27 = VUIVPAFLogObject();
    [(VUIPlaybackReporter *)v2 setLogObject:v27];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIPlaybackReporterVPAF;
  [(VUIPlaybackReporter *)&v4 dealloc];
}

- (void)_flushUnreportedEventsAfterDelay:(double)delay
{
  v15 = *MEMORY[0x1E69E9840];
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__14;
  v11[4] = __Block_byref_object_dispose__14;
  v12 = [[VUIScopedBackgroundTask alloc] initWithIdentifier:@"VUIMetricsBackgroundTaskFlush" expirationHandler:0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__VUIPlaybackReporterVPAF__flushUnreportedEventsAfterDelay___block_invoke;
  aBlock[3] = &unk_1E8732C30;
  aBlock[4] = v11;
  v4 = _Block_copy(aBlock);
  v5 = v4;
  if (delay == 0.0)
  {
    (*(v4 + 2))(v4);
  }

  else
  {
    v6 = VUIVPAFLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      delayCopy = delay;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Will flush events after delay of %f", buf, 0xCu);
    }

    v7 = dispatch_time(0, (delay * 1000000000.0));
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__VUIPlaybackReporterVPAF__flushUnreportedEventsAfterDelay___block_invoke_83;
    v8[3] = &unk_1E872D7E0;
    v9 = v5;
    dispatch_after(v7, MEMORY[0x1E69E96A0], v8);
  }

  _Block_object_dispose(v11, 8);
}

void __60__VUIPlaybackReporterVPAF__flushUnreportedEventsAfterDelay___block_invoke(uint64_t a1)
{
  v2 = VUIVPAFLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Begin flushing events", buf, 2u);
  }

  v3 = +[VUIMetricsJetEngine sharedInstance];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__VUIPlaybackReporterVPAF__flushUnreportedEventsAfterDelay___block_invoke_82;
  v4[3] = &unk_1E8732C30;
  v4[4] = *(a1 + 32);
  [v3 flushMetricsWithCompletion:v4];
}

void __60__VUIPlaybackReporterVPAF__flushUnreportedEventsAfterDelay___block_invoke_82(uint64_t a1)
{
  v2 = VUIVPAFLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Done flushing events", v5, 2u);
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (id)_createSessionForPlayer:(id)player
{
  playerCopy = player;
  v5 = VUIVPAFLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Using Jet VPAF tracking", buf, 2u);
  }

  v6 = [[VUIPlaybackReporterVPAFPlaylist alloc] initWithPlayer:playerCopy];
  if (v6)
  {
    v7 = +[VUIMetricsJetEngine sharedInstance];
    wrappedPipeline = [v7 wrappedPipeline];

    if (wrappedPipeline)
    {
      v9 = [objc_alloc(MEMORY[0x1E69AB828]) initWithPipeline:wrappedPipeline playlist:v6 eventData:0 topic:@"xp_amp_tv_vpaf"];
    }

    else
    {
      v10 = VUIVPAFLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Metrics Jet pipeline is nil, not creating VPAF tracker", buf, 2u);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = [[VUIPlaybackReporterSession alloc] initWithPlayer:playerCopy context:v9];
  -[VUIPlaybackReporterSession setHasInterstitials:](v11, "setHasInterstitials:", [playerCopy hasInterstitials]);
  [(VUIPlaybackReporterSession *)v11 setReportingEnabled:v9 != 0];
  v12 = [(NSMapTable *)self->_pendingPlayerProperties objectForKey:playerCopy];
  if (v12)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __51__VUIPlaybackReporterVPAF__createSessionForPlayer___block_invoke;
    v18[3] = &unk_1E8732C58;
    v19 = v11;
    [v12 enumerateKeysAndObjectsUsingBlock:v18];
    [(NSMapTable *)self->_pendingPlayerProperties removeObjectForKey:playerCopy];
  }

  v13 = [(VUIPlaybackReporterSession *)v11 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyForegroundPlayback"];
  currentMediaItem = [playerCopy currentMediaItem];
  v15 = [currentMediaItem mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyReportVPAFWhenPlayingInBackground"];
  if (v13 && ([v13 BOOLValue] & 1) == 0 && (objc_msgSend(v15, "BOOLValue") & 1) == 0)
  {
    [(VUIPlaybackReporterSession *)v11 setReportingEnabled:0];
  }

  if ([VUIPlaybackUtilities playerIsLive:playerCopy])
  {
    [(VUIPlaybackReporterVPAF *)self _createPlaybackDatePollingTimerForLiveStream:v11];
    v16 = MEMORY[0x1E695E118];
  }

  else
  {
    v16 = MEMORY[0x1E695E110];
  }

  [(VUIPlaybackReporterSession *)v11 setMetadata:v16 forKey:@"VUIPlaybackReporterSessionMetadataKeyIsPlayerLive"];

  return v11;
}

- (void)_reportForSession:(id)session state:(id)state reason:(id)reason
{
  v148[2] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  stateCopy = state;
  reasonCopy = reason;
  v11 = [(VUIPlaybackReporterVPAF *)self _trackerWithBaseEventDataForSession:sessionCopy];
  v12 = v11;
  if (v11)
  {
    v113 = v11;
    v114 = reasonCopy;
    player = [sessionCopy player];
    currentMediaItem = [player currentMediaItem];
    v14 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyIsSeekJumpToLive"];
    bOOLValue = [v14 BOOLValue];

    v15 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyIsJumpToLiveAutomatic"];
    bOOLValue2 = [v15 BOOLValue];

    v16 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyIsCatchUpToLive"];
    bOOLValue3 = [v16 BOOLValue];

    playing = [MEMORY[0x1E69D5A40] playing];

    selfCopy = self;
    v115 = stateCopy;
    if (playing != stateCopy)
    {
      v19 = [sessionCopy consumeMetadataForKey:@"VUIPlaybackReporterSessionMetadataKeySeekInfo"];
      v117 = v19;
      if (![VUIPlaybackUtilities playerIsLive:player])
      {
        v20 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyIsPlayerLive"];
        bOOLValue4 = [v20 BOOLValue];

        if (!bOOLValue4)
        {
          v38 = [v19 objectForKey:*MEMORY[0x1E69D60B0]];
          v39 = v38;
          reasonCopy = v114;
          if (v38)
          {
            [v38 doubleValue];
          }

          else
          {
            [player elapsedTime];
          }

          buf[0] = 0;
          v44 = [(VUIPlaybackReporterVPAF *)self _snapToNearestPrerollIfNeeded:vcvtad_u64_f64(v40 * 1000.0) forSession:sessionCopy isAtPrerollBoundary:buf];
          v45 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyHaveSentInitialStartEvent"];
          bOOLValue5 = [v45 BOOLValue];

          v37 = 0;
          if ([sessionCopy hasInterstitials])
          {
            v37 = buf[0] & bOOLValue5;
          }

          v110 = [(VUIPlaybackReporterVPAF *)selfCopy _capPlayHeadIfNeeded:v44 forSession:sessionCopy];

          playbackDate = 0;
LABEL_32:
          consumeStopType = [sessionCopy consumeStopType];
          consumeStopReason = [sessionCopy consumeStopReason];
          v118 = playbackDate;
          if ([consumeStopReason isEqualToString:*MEMORY[0x1E69AB7D8]])
          {
            v120 = consumeStopType;
            v49 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeySkipIntroInfo"];

            if (v49)
            {
              v128 = *MEMORY[0x1E69AB750];
              v129 = *MEMORY[0x1E69AB7F0];
              v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
              self = selfCopy;
              v51 = [(VUIPlaybackReporterVPAF *)selfCopy _skipIntroActionForSession:sessionCopy consume:0];
              v52 = v51;
              v12 = v113;
              if (v51)
              {
                v127[0] = v50;
                v127[1] = v51;
                v53 = MEMORY[0x1E695DEC8];
                v54 = v127;
                v55 = 2;
              }

              else
              {
                v126 = v50;
                v53 = MEMORY[0x1E695DEC8];
                v54 = &v126;
                v55 = 1;
              }

              v57 = [v53 arrayWithObjects:v54 count:v55];

              goto LABEL_49;
            }

            v12 = v113;
            self = selfCopy;
            if (bOOLValue)
            {
              v59 = *MEMORY[0x1E69AB7E0];
              v124[0] = *MEMORY[0x1E69AB750];
              v124[1] = @"extraType";
              v125[0] = v59;
              v125[1] = @"CatchUpToLive";
              v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v125 forKeys:v124 count:2];
              v123 = v50;
              v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v123 count:1];
              v60 = MEMORY[0x1E69AB810];
              if (!bOOLValue2)
              {
                v60 = MEMORY[0x1E69AB818];
              }

              v61 = *v60;

              v120 = v61;
              goto LABEL_49;
            }

            v57 = 0;
LABEL_50:
            v62 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyHaveSentInitialStartEvent"];
            bOOLValue6 = [v62 BOOLValue];

            v64 = VUIVPAFLogObject();
            v65 = v64;
            if (bOOLValue6)
            {
              v66 = currentMediaItem;
              if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
              {
                v67 = [(VUIPlaybackReporterVPAF *)self _playHeadDescriptionForTimeInMS:v110 playbackDate:v118];
                v68 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5B98]];
                *buf = 138413314;
                v131 = v67;
                v132 = 2112;
                v133 = v120;
                v134 = 2112;
                v135 = consumeStopReason;
                v136 = 2112;
                v137 = v68;
                v138 = 2112;
                v139 = v57;
                _os_log_impl(&dword_1E323F000, v65, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Reporting play event stop: position:%@ type:%@ reason:%@ id:%@ data:%@", buf, 0x34u);

                self = selfCopy;
              }

              v69 = v120;
              [v12 playStoppedAtOverallPosition:v110 type:v120 reason:consumeStopReason eventData:v57];
            }

            else
            {
              v66 = currentMediaItem;
              if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
              {
                [(VUIPlaybackReporterVPAF *)v65 _reportForSession:v70 state:v71 reason:v72, v73, v74, v75, v76];
              }

              v69 = v120;
            }

LABEL_83:

            mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
            applicationState = [mEMORY[0x1E69DC668] applicationState];

            if (applicationState == 2)
            {
              [(VUIPlaybackReporterVPAF *)self _flushUnreportedEventsAfterDelay:1.0];
            }

            stateCopy = v115;
            goto LABEL_86;
          }

          if (v37)
          {
            v56 = *MEMORY[0x1E69AB810];

            v57 = 0;
            v50 = consumeStopReason;
            v120 = v56;
            consumeStopReason = *MEMORY[0x1E69AB7E8];
            v12 = v113;
LABEL_38:
            self = selfCopy;
LABEL_49:

            goto LABEL_50;
          }

          v120 = consumeStopType;
          if (![consumeStopReason isEqualToString:*MEMORY[0x1E69AB7F8]])
          {
            v57 = 0;
            v12 = v113;
            self = selfCopy;
            goto LABEL_50;
          }

          paused = [MEMORY[0x1E69D5A40] paused];

          if (paused == v115)
          {
            v50 = *MEMORY[0x1E69AB7C8];
          }

          else
          {
            v50 = consumeStopReason;
          }

          v12 = v113;
          if ([reasonCopy isEqualToString:*MEMORY[0x1E69D5F00]])
          {
            v99 = *MEMORY[0x1E69AB810];

            playlist = [player playlist];
            nextMediaItem = [playlist nextMediaItem];

            if (nextMediaItem)
            {
              v102 = MEMORY[0x1E69AB7C0];
            }

            else
            {
              v102 = MEMORY[0x1E69AB7A8];
            }

            consumeStopReason = *v102;
            v57 = 0;
            v120 = v99;
            goto LABEL_38;
          }

          self = selfCopy;
          if ([reasonCopy isEqualToString:*MEMORY[0x1E69D5EE0]])
          {
            v103 = MEMORY[0x1E69AB7B0];
          }

          else if ([reasonCopy isEqualToString:*MEMORY[0x1E69D5EF8]])
          {
            v103 = MEMORY[0x1E69AB7A0];
          }

          else if ([reasonCopy isEqualToString:@"VUIPostPlayReasonAutomaticUpNext"])
          {
            v103 = MEMORY[0x1E69AB7C0];
          }

          else
          {
            if (![reasonCopy isEqualToString:@"VUIPostPlayReasonAutomaticPlayOther"])
            {
              if ([reasonCopy isEqualToString:@"VUIPostPlayReasonManualUpNext"])
              {
                v105 = MEMORY[0x1E69AB7C0];
              }

              else
              {
                if (![reasonCopy isEqualToString:@"VUIPostPlayReasonManualPlayOther"])
                {
                  v57 = 0;
                  consumeStopReason = v50;
                  goto LABEL_50;
                }

                v105 = MEMORY[0x1E69AB7D0];
              }

              consumeStopReason = *v105;

              v104 = MEMORY[0x1E69AB818];
              goto LABEL_102;
            }

            v103 = MEMORY[0x1E69AB7D0];
          }

          consumeStopReason = *v103;

          v104 = MEMORY[0x1E69AB810];
LABEL_102:
          v57 = 0;
          v50 = v120;
          v120 = *v104;
          goto LABEL_49;
        }
      }

      v22 = [v19 objectForKey:*MEMORY[0x1E69D5F20]];
      v23 = v22;
      reasonCopy = v114;
      if (v22)
      {
        v24 = v22;
      }

      else
      {
        playbackDate = [player playbackDate];
        if (playbackDate)
        {
          goto LABEL_20;
        }

        v24 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyPlaybackDateForLiveStream"];
      }

      playbackDate = v24;
LABEL_20:
      [playbackDate timeIntervalSince1970];
      v110 = vcvtad_u64_f64(v36 * 1000.0);

      v37 = 0;
      goto LABEL_32;
    }

    v119 = bOOLValue3;
    v108 = player;
    if ([VUIPlaybackUtilities playerIsLive:player])
    {
      playbackDate2 = [player playbackDate];
      [playbackDate2 timeIntervalSince1970];
      v109 = vcvtad_u64_f64(v27 * 1000.0);
      if (playbackDate2)
      {
        v118 = playbackDate2;
        v28 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyWaitingForPlaybackDateToSendStartEvent"];
        bOOLValue7 = [v28 BOOLValue];

        if (bOOLValue7)
        {
          [sessionCopy setMetadata:MEMORY[0x1E695E110] forKey:@"VUIPlaybackReporterSessionMetadataKeyWaitingForPlaybackDateToSendStartEvent"];
          v30 = VUIVPAFLogObject();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E323F000, v30, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - In _reportForSession, playback has started and playback date has become non-nil while waiting for it.  Will report play start", buf, 2u);
          }

          v31 = 0;
        }

        else
        {
          v31 = 0;
        }
      }

      else
      {
        v41 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyTimedOutWaitingForPlaybackDate"];
        bOOLValue8 = [v41 BOOLValue];

        if (bOOLValue8)
        {
          v43 = VUIVPAFLogObject();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E323F000, v43, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - In _reportForSession, will report nil playback date since we've timed out waiting for the playback date", buf, 2u);
          }
        }

        else
        {
          [sessionCopy setMetadata:MEMORY[0x1E695E118] forKey:@"VUIPlaybackReporterSessionMetadataKeyWaitingForPlaybackDateToSendStartEvent"];
          v43 = VUIVPAFLogObject();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            [(VUIPlaybackReporterVPAF *)v43 _reportForSession:v77 state:v78 reason:v79, v80, v81, v82, v83];
          }
        }

        v31 = 0;
        v118 = 0;
      }
    }

    else
    {
      [player elapsedTime];
      buf[0] = 0;
      v33 = [(VUIPlaybackReporterVPAF *)self _snapToNearestPrerollIfNeeded:vcvtad_u64_f64(v32 * 1000.0) forSession:sessionCopy isAtPrerollBoundary:buf];
      v34 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyHaveSentInitialStartEvent"];
      bOOLValue9 = [v34 BOOLValue];

      v31 = 0;
      if ([sessionCopy hasInterstitials])
      {
        v31 = buf[0] & bOOLValue9;
      }

      v109 = [(VUIPlaybackReporterVPAF *)self _capPlayHeadIfNeeded:v33 forSession:sessionCopy];
      v118 = 0;
    }

    consumeStartType = [sessionCopy consumeStartType];
    consumeStartReason = [sessionCopy consumeStartReason];
    consumeStopReason = [sessionCopy consumeMetadataForKey:@"VUIPlaybackReporterSessionMetadataKeyHandlingSeek"];
    v86 = [(VUIPlaybackReporterVPAF *)self _skipIntroActionForSession:sessionCopy consume:0];
    v106 = v86;
    if ([consumeStopReason BOOLValue])
    {
      v87 = MEMORY[0x1E69AB810];
      if (!(bOOLValue2 & 1 | ((bOOLValue & 1) == 0)))
      {
        v87 = MEMORY[0x1E69AB818];
      }

      v117 = *v87;

      v121 = *MEMORY[0x1E69AB778];
      if (v86)
      {
        v146 = *MEMORY[0x1E69AB748];
        v147 = *MEMORY[0x1E69AB790];
        v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
        v148[0] = v88;
        v148[1] = v86;
        v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:v148 count:2];

        player = v108;
        v12 = v113;
        [(VUIPlaybackReporterVPAF *)self _reportSeekStopAtTimeInMS:v109 playbackDate:v118 session:sessionCopy tracker:v113 player:v108];
        if (!bOOLValue)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v12 = v113;
        player = v108;
        if ((bOOLValue & 1) == 0)
        {
          [(VUIPlaybackReporterVPAF *)self _reportSeekStopAtTimeInMS:v109 playbackDate:v118 session:sessionCopy tracker:v113 player:v108];
          v89 = 0;
          goto LABEL_77;
        }

        v144 = *MEMORY[0x1E69AB748];
        v145 = *MEMORY[0x1E69AB780];
        v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
        v143 = v91;
        v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v143 count:1];

        [(VUIPlaybackReporterVPAF *)self _reportSeekStopAtTimeInMS:v109 playbackDate:v118 session:sessionCopy tracker:v113 player:v108];
      }

      [sessionCopy setMetadata:0 forKey:{@"VUIPlaybackReporterSessionMetadataKeyIsSeekJumpToLive", v106}];
      [sessionCopy setMetadata:0 forKey:@"VUIPlaybackReporterSessionMetadataKeyIsJumpToLiveAutomatic"];
      [sessionCopy setMetadata:0 forKey:@"VUIPlaybackReporterSessionMetadataKeyIsCatchUpToLive"];
    }

    else
    {
      if (!v119)
      {
        v66 = currentMediaItem;
        if (v31)
        {
          v117 = *MEMORY[0x1E69AB810];

          v121 = *MEMORY[0x1E69AB788];
          v89 = 0;
        }

        else
        {
          v89 = 0;
          v121 = consumeStartReason;
          v117 = consumeStartType;
        }

        v12 = v113;
        player = v108;
        goto LABEL_78;
      }

      v141 = @"extraType";
      v142 = @"CatchUpToLive";
      v90 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
      v140 = v90;
      v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v140 count:1];

      v121 = consumeStartReason;
      v117 = consumeStartType;
      v12 = v113;
      player = v108;
    }

LABEL_77:
    v66 = currentMediaItem;
LABEL_78:
    [sessionCopy setMetadata:0 forKey:{@"VUIPlaybackReporterSessionMetadataKeySkipIntroInfo", v106}];
    v92 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyWaitingForPlaybackDateToSendStartEvent"];
    bOOLValue10 = [v92 BOOLValue];

    if ((bOOLValue10 & 1) == 0)
    {
      [sessionCopy setMetadata:MEMORY[0x1E695E118] forKey:@"VUIPlaybackReporterSessionMetadataKeyHaveSentInitialStartEvent"];
      v94 = VUIVPAFLogObject();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
      {
        v95 = [(VUIPlaybackReporterVPAF *)self _playHeadDescriptionForTimeInMS:v109 playbackDate:v118];
        v96 = [v66 mediaItemMetadataForProperty:*MEMORY[0x1E69D5B98]];
        *buf = 138413314;
        v131 = v95;
        v132 = 2112;
        v133 = v117;
        v134 = 2112;
        v135 = v121;
        v136 = 2112;
        v137 = v96;
        v138 = 2112;
        v139 = v89;
        _os_log_impl(&dword_1E323F000, v94, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Reporting play event start: position:%@ type:%@ reason:%@ id:%@ data:%@", buf, 0x34u);

        v66 = currentMediaItem;
      }

      [v12 playStartedAtOverallPosition:v109 type:v117 reason:v121 eventData:v89];
    }

    v69 = v121;
    v57 = v107;
    goto LABEL_83;
  }

  player = VUIVPAFLogObject();
  if (os_log_type_enabled(player, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, player, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Unable to report because tracker is nil", buf, 2u);
  }

LABEL_86:
}

- (void)_endSession:(id)session
{
  sessionCopy = session;
  [(VUIPlaybackReporterVPAF *)self flushUnreportedEvents];
  [(VUIPlaybackReporterVPAF *)self _invalidatePlaybackDatePollingTimerForLiveStream:sessionCopy];
  v5.receiver = self;
  v5.super_class = VUIPlaybackReporterVPAF;
  [(VUIPlaybackReporter *)&v5 _endSession:sessionCopy];
}

- (id)_metricsForSession:(id)session
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF90];
  sessionCopy = session;
  v6 = objc_alloc_init(v4);
  v7 = [(VUIPlaybackReporterVPAF *)self _videoDisplayInfoForSession:sessionCopy];
  [v6 addEntriesFromDictionary:v7];

  _screenInfo = [(VUIPlaybackReporterVPAF *)self _screenInfo];
  [v6 addEntriesFromDictionary:_screenInfo];

  _connectionInfo = [(VUIPlaybackReporterVPAF *)self _connectionInfo];
  [v6 addEntriesFromDictionary:_connectionInfo];

  v10 = [(VUIPlaybackReporterVPAF *)self _focusInfoForSession:sessionCopy];
  [v6 vui_setObjectIfNotNil:v10 forKey:@"playbackFocus"];

  player = [sessionCopy player];
  v12 = [(VUIPlaybackReporterVPAF *)self _metricsForPlayer:player session:sessionCopy];

  [v6 addEntriesFromDictionary:v12];
  v13 = VUIVPAFLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v6;
    _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Session metrics:%@", &v15, 0xCu);
  }

  return v6;
}

- (id)_screenInfo
{
  v15[2] = *MEMORY[0x1E69E9840];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v4 = v3;
  v6 = v5;

  mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen2 scale];
  v9 = v8;

  v14[0] = @"screenHeight";
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:v6 * v9];
  v15[0] = v10;
  v14[1] = @"screenWidth";
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v4 * v9];
  v15[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v12;
}

- (id)_connectionInfo
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (+[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable])
  {
    v2 = @"false";
  }

  else
  {
    v2 = @"true";
  }

  v5 = @"isOffline";
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (id)_videoDisplayInfoForSession:(id)session
{
  v15[2] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  player = [sessionCopy player];
  v6 = [(VUIPlaybackReporterVPAF *)self _delegatedInfoForPlayer:player];

  if ([v6 isEqualToString:@"TVOut"])
  {
    v7 = MGGetBoolAnswer();
  }

  else
  {
    v7 = 0;
  }

  if (([v6 isEqualToString:@"None"] & 1) != 0 || v7)
  {
    v9 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyVideoDisplaySize"];
    v13 = *MEMORY[0x1E695F060];
    if (CGSizeMakeWithDictionaryRepresentation(v9, &v13))
    {
      v14[0] = @"videoViewportHeight";
      v10 = [MEMORY[0x1E696AD98] numberWithDouble:floor(v13.height)];
      v14[1] = @"videoViewportWidth";
      v15[0] = v10;
      v11 = [MEMORY[0x1E696AD98] numberWithDouble:floor(v13.width)];
      v15[1] = v11;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_skipIntroActionForSession:(id)session consume:(BOOL)consume
{
  consumeCopy = consume;
  v13[1] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v6 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeySkipIntroInfo"];
  if (consumeCopy)
  {
    [sessionCopy setMetadata:0 forKey:@"VUIPlaybackReporterSessionMetadataKeySkipIntroInfo"];
  }

  if (!v6)
  {
    v8 = 0;
    goto LABEL_11;
  }

  localizedTitle = [v6 localizedTitle];
  if (![localizedTitle length])
  {
    v9 = +[VUILocalizationManager sharedInstance];
    v10 = [v9 localizedStringForKey:@"SKIP_INTRO"];

    localizedTitle = v10;
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if (!localizedTitle)
  {
    goto LABEL_9;
  }

LABEL_6:
  v12 = @"actionName";
  v13[0] = localizedTitle;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
LABEL_10:

LABEL_11:

  return v8;
}

- (id)_focusInfoForSession:(id)session
{
  sessionCopy = session;
  v4 = @"foreground";
  v5 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyForegroundPlayback"];
  v6 = v5;
  v7 = v4;
  if (v5)
  {
    v7 = v4;
    if (([v5 BOOLValue] & 1) == 0)
    {
      v7 = @"background";
    }
  }

  player = [sessionCopy player];
  currentMediaItem = [player currentMediaItem];
  v10 = [currentMediaItem mediaItemMetadataForProperty:@"VUIMediaItemMetadataClipId"];
  v11 = [v10 length];

  if (v11)
  {
    v12 = v4;

    v7 = v12;
  }

  v13 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyPIP"];
  if ([v13 BOOLValue])
  {
    v14 = @"pictureInPicture";

    v7 = v14;
  }

  return v7;
}

- (id)_metricsForPlayer:(id)player session:(id)session
{
  playerCopy = player;
  v7 = MEMORY[0x1E695DF90];
  sessionCopy = session;
  v9 = objc_alloc_init(v7);
  currentMediaItem = [playerCopy currentMediaItem];
  mediaItemURL = [currentMediaItem mediaItemURL];

  if (([mediaItemURL isFileURL] & 1) == 0)
  {
    absoluteString = [mediaItemURL absoluteString];
    [v9 vui_setObjectIfNotNil:absoluteString forKey:@"url"];
  }

  v13 = [(VUIPlaybackReporterVPAF *)self _colorRangeForPlayer:playerCopy];
  [v9 vui_setObjectIfNotNil:v13 forKey:@"videoColorRange"];

  v14 = [(VUIPlaybackReporterVPAF *)self _audioFormatForPlayer:playerCopy session:sessionCopy];

  [v9 vui_setObjectIfNotNil:v14 forKey:@"audioFormat"];
  v15 = [(VUIPlaybackReporterVPAF *)self _sensitiveContentInfoForPlayer:playerCopy];
  [v9 vui_setObjectIfNotNil:v15 forKey:@"sensitiveContentType"];

  v16 = [(VUIPlaybackReporterVPAF *)self _delegatedInfoForPlayer:playerCopy];
  [v9 vui_setObjectIfNotNil:v16 forKey:@"delegatedPlayback"];

  v17 = [(VUIPlaybackReporterVPAF *)self _downloadInfoForPlayer:playerCopy];
  [v9 vui_setObjectIfNotNil:v17 forKey:@"downloadState"];

  v18 = [(VUIPlaybackReporterVPAF *)self _subtitleInfoForPlayer:playerCopy];
  [v9 setValuesForKeysWithDictionary:v18];

  v19 = [(VUIPlaybackReporterVPAF *)self _audioInfoForPlayer:playerCopy];
  [v9 setValuesForKeysWithDictionary:v19];

  return v9;
}

- (id)_subtitleInfoForPlayer:(id)player
{
  playerCopy = player;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selectedSubtitleOptionWithNoOffOrAutoOption = [playerCopy selectedSubtitleOptionWithNoOffOrAutoOption];
    if (selectedSubtitleOptionWithNoOffOrAutoOption)
    {
      v6 = selectedSubtitleOptionWithNoOffOrAutoOption;
      languageCodeBCP47 = [selectedSubtitleOptionWithNoOffOrAutoOption languageCodeBCP47];
      if ([v6 containsOnlyForcedSubtitles])
      {
        v8 = VUIPlaybackReporterVPAFKeyForcedSubtitleLocale;
      }

      else if ([v6 subtitleType] == 2)
      {
        v8 = VUIPlaybackReporterVPAFKeyClosedCaptionLocale;
      }

      else
      {
        subtitleType = [v6 subtitleType];
        v8 = VUIPlaybackReporterVPAFKeySubtitleLocale;
        if (subtitleType == 1)
        {
          v8 = VUIPlaybackReporterVPAFKeySDHLocale;
        }
      }

      [v4 vui_setObjectIfNotNil:languageCodeBCP47 forKey:*v8];
    }
  }

  v10 = [v4 copy];

  return v10;
}

- (id)_audioInfoForPlayer:(id)player
{
  v23 = *MEMORY[0x1E69E9840];
  playerCopy = player;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  selectedAudioOption = [playerCopy selectedAudioOption];
  v6 = selectedAudioOption;
  if (selectedAudioOption)
  {
    hasAudioDescriptions = [selectedAudioOption hasAudioDescriptions];
    languageCodeBCP47 = [v6 languageCodeBCP47];
    v9 = VUIPlaybackReporterVPAFKeyAudioDescriptionLocale;
    if (!hasAudioDescriptions)
    {
      v9 = VUIPlaybackReporterVPAFKeyAudioLocale;
    }

    [v4 vui_setObjectIfNotNil:languageCodeBCP47 forKey:*v9];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    mediaCharacteristics = [v6 mediaCharacteristics];
    v11 = [mediaCharacteristics countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(mediaCharacteristics);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          if ([VUIVideosPlayable isMediaCharacteristicAnAudioVariantID:v15])
          {
            [v4 vui_setObjectIfNotNil:v15 forKey:@"audioVariantId"];
            goto LABEL_14;
          }
        }

        v12 = [mediaCharacteristics countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  v16 = [v4 copy];

  return v16;
}

- (id)_colorRangeForPlayer:(id)player
{
  playerCopy = player;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v4 = [playerCopy currentMediaItemVideoRange], (v4 - 1) <= 3))
  {
    v5 = *off_1E8732CC8[v4 - 1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_audioFormatForPlayer:(id)player session:(id)session
{
  playerCopy = player;
  sessionCopy = session;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  currentMediaItemAudioFormat = [playerCopy currentMediaItemAudioFormat];
  if (currentMediaItemAudioFormat)
  {
    v8 = currentMediaItemAudioFormat;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:currentMediaItemAudioFormat];
    [sessionCopy setMetadata:v9 forKey:@"VUIPlaybackReporterSessionMetadataKeyAudioFormat"];
  }

  else
  {
    v10 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyAudioFormat"];
    v9 = v10;
    v8 = v10 ? [v10 integerValue] : 0;
  }

  if ((v8 - 1) <= 3)
  {
    v11 = *off_1E8732CE8[v8 - 1];
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  return v11;
}

- (id)_delegatedInfoForPlayer:(id)player
{
  playerCopy = player;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v4 = [playerCopy externalPlaybackType], v4 <= 2))
  {
    v5 = *off_1E8732D08[v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isDelegatedForPlayer:(id)player
{
  v3 = [(VUIPlaybackReporterVPAF *)self _delegatedInfoForPlayer:player];
  if ([v3 isEqualToString:@"Airplay"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"TVOut"];
  }

  return v4;
}

- (id)_sensitiveContentInfoForPlayer:(id)player
{
  currentMediaItem = [player currentMediaItem];
  v4 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5C38]];

  if ([v4 BOOLValue])
  {
    v5 = @"adult";
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_downloadInfoForPlayer:(id)player
{
  playerCopy = player;
  if ([VUIPlaybackUtilities playerIsLive:playerCopy])
  {
    v4 = @"streaming";
  }

  else
  {
    currentMediaItem = [playerCopy currentMediaItem];
    v6 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5C68]];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v7 = [v6 integerValue], (v7 - 1) <= 2))
    {
      v4 = *off_1E8732D20[v7 - 1];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
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

  else
  {
    v12 = [(NSMapTable *)self->_pendingPlayerProperties objectForKey:playerCopy];
    if (!v12)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v12 setObject:valueCopy forKey:keyCopy];
    [(NSMapTable *)self->_pendingPlayerProperties setObject:v12 forKey:playerCopy];
  }
}

- (id)_trackerWithBaseEventDataForSession:(id)session
{
  v21[1] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  player = [sessionCopy player];
  currentMediaItem = [player currentMediaItem];
  context = [sessionCopy context];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = +[VUIMetricsController sharedInstance];
    baseFieldsForVPAF = [v9 baseFieldsForVPAF];

    if (baseFieldsForVPAF)
    {
      selfCopy = self;
      v11 = [baseFieldsForVPAF vui_BOOLForKey:@"sharedActivity" defaultValue:0];
      v12 = [sessionCopy metadataForKey:?];
      v13 = v12;
      if (v11)
      {
        if (!v12)
        {
          v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
        }

        [v13 setObject:MEMORY[0x1E695E118] forKey:@"sharedActivity"];
        v14 = [baseFieldsForVPAF objectForKey:@"sharedActivityDevicesCurrent"];
        v15 = [baseFieldsForVPAF objectForKey:@"sharedActivityDevicesMax"];
        if (v14)
        {
          [v13 setObject:v14 forKey:@"sharedActivityDevicesCurrent"];
        }

        if (v15)
        {
          [v13 setObject:v15 forKey:@"sharedActivityDevicesMax"];
        }

        [sessionCopy setMetadata:v13 forKey:@"VUIPlaybackReporterSessionKeySavedSharePlayBaseFields"];
      }

      [v8 addEntriesFromDictionary:baseFieldsForVPAF];
      if (v13)
      {
        [v8 addEntriesFromDictionary:v13];
      }

      self = selfCopy;
    }

    v16 = [(VUIPlaybackReporterVPAF *)self _metricsForSession:sessionCopy];
    [v8 addEntriesFromDictionary:v16];

    v21[0] = v8;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    [context resetEventData:v17];

    v18 = context;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)_reportSeekStopAtTimeInMS:(unint64_t)s playbackDate:(id)date session:(id)session tracker:(id)tracker player:(id)player
{
  v37[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  sessionCopy = session;
  playerCopy = player;
  trackerCopy = tracker;
  currentMediaItem = [playerCopy currentMediaItem];
  v15 = *MEMORY[0x1E69AB810];
  v16 = *MEMORY[0x1E69AB808];
  v17 = [(VUIPlaybackReporterVPAF *)self _skipIntroActionForSession:sessionCopy consume:0];
  v18 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyIsSeekJumpToLive"];
  bOOLValue = [v18 BOOLValue];

  LOBYTE(v18) = [VUIPlaybackUtilities playerIsLive:playerCopy];
  if ((v18 & 1) == 0)
  {
    s = [(VUIPlaybackReporterVPAF *)self _capPlayHeadIfNeeded:s forSession:sessionCopy];
  }

  if (v17)
  {
    v20 = *MEMORY[0x1E69AB7F0];

    v37[0] = v17;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
LABEL_7:
    v16 = v20;
    goto LABEL_8;
  }

  if (bOOLValue)
  {
    v20 = *MEMORY[0x1E69AB7E0];

    v21 = 0;
    goto LABEL_7;
  }

  v21 = 0;
LABEL_8:
  v22 = VUIVPAFLogObject();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [(VUIPlaybackReporterVPAF *)self _playHeadDescriptionForTimeInMS:s playbackDate:dateCopy];
    v24 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5B98]];
    *buf = 138413314;
    v28 = v23;
    v29 = 2112;
    v30 = v15;
    v31 = 2112;
    v32 = v16;
    v33 = 2112;
    v34 = v24;
    v35 = 2112;
    v36 = v21;
    _os_log_impl(&dword_1E323F000, v22, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Reporting seek event stop: position:%@ type:%@ reason:%@ id:%@ data:%@", buf, 0x34u);
  }

  [trackerCopy seekStoppedAtOverallPosition:s type:v15 reason:v16 eventData:v21];
}

- (void)_playerCurrentMediaItemWillSeek:(id)seek
{
  v47[1] = *MEMORY[0x1E69E9840];
  seekCopy = seek;
  v5 = VUIVPAFLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Current media item will seek", buf, 2u);
  }

  object = [seekCopy object];
  v7 = [(VUIPlaybackReporter *)self _sessionForPlayer:object];
  if (v7)
  {
    v8 = [(VUIPlaybackReporterVPAF *)self _trackerWithBaseEventDataForSession:v7];
    if (!v8)
    {
      v14 = VUIVPAFLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Unable to report seek because tracker is nil", buf, 2u);
      }

      goto LABEL_28;
    }

    v9 = [VUIPlaybackUtilities playerIsLive:object];
    userInfo = [seekCopy userInfo];
    v11 = userInfo;
    if (v9)
    {
      v12 = [userInfo objectForKey:*MEMORY[0x1E69D5F20]];

      [v12 timeIntervalSince1970];
      v36 = vcvtad_u64_f64(v13 * 1000.0);
    }

    else
    {
      v15 = [userInfo objectForKey:*MEMORY[0x1E69D60B0]];

      [v15 doubleValue];
      v36 = [(VUIPlaybackReporterVPAF *)self _capPlayHeadIfNeeded:[(VUIPlaybackReporterVPAF *)self _snapToNearestPrerollIfNeeded:vcvtad_u64_f64(v16 * 1000.0) forSession:v7 isAtPrerollBoundary:0] forSession:v7];

      v12 = 0;
    }

    v33 = [v7 consumeMetadataForKey:@"VUIPlaybackReporterSessionMetadataKeyHandlingSeek"];
    if ([v33 BOOLValue])
    {
      [(VUIPlaybackReporterVPAF *)self _reportSeekStopAtTimeInMS:v36 playbackDate:v12 session:v7 tracker:v8 player:object];
    }

    state = [object state];
    playing = [MEMORY[0x1E69D5A40] playing];

    v35 = v12;
    if (state == playing)
    {
      [v7 setMetadata:*MEMORY[0x1E69AB7D8] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopReason"];
      v19 = *MEMORY[0x1E69AB818];
      [v7 setMetadata:*MEMORY[0x1E69AB818] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopType"];
      userInfo2 = [seekCopy userInfo];

      if (userInfo2)
      {
        userInfo3 = [seekCopy userInfo];
        [v7 setMetadata:userInfo3 forKey:@"VUIPlaybackReporterSessionMetadataKeySeekInfo"];
      }
    }

    else
    {
      v19 = *MEMORY[0x1E69AB818];
    }

    [v7 setMetadata:MEMORY[0x1E695E118] forKey:@"VUIPlaybackReporterSessionMetadataKeyHandlingSeek"];
    currentMediaItem = [object currentMediaItem];
    v22 = [v7 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeySkipIntroInfo"];

    v23 = [v7 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyIsSeekJumpToLive"];
    bOOLValue = [v23 BOOLValue];

    v25 = v19;
    v26 = *MEMORY[0x1E69AB800];
    if (v22)
    {
      v27 = *MEMORY[0x1E69AB790];

      v28 = [(VUIPlaybackReporterVPAF *)self _skipIntroActionForSession:v7 consume:0];
      v26 = v28;
      if (v28)
      {
        v47[0] = v28;
        v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
LABEL_24:
        v14 = v35;

        v26 = v27;
LABEL_25:
        v30 = VUIVPAFLogObject();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [(VUIPlaybackReporterVPAF *)self _playHeadDescriptionForTimeInMS:v36 playbackDate:v14];
          v32 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5B98]];
          *buf = 138413314;
          v38 = v31;
          v39 = 2112;
          v40 = v25;
          v41 = 2112;
          v42 = v26;
          v43 = 2112;
          v44 = v32;
          v45 = 2112;
          v46 = v29;
          _os_log_impl(&dword_1E323F000, v30, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Reporting seek event start: position:%@ type:%@ reason:%@ id:%@ data:%@", buf, 0x34u);

          v14 = v35;
        }

        [v8 seekStartedAtOverallPosition:v36 type:v25 reason:v26 eventData:v29];
LABEL_28:

        goto LABEL_29;
      }
    }

    else
    {
      if (!bOOLValue)
      {
        v29 = 0;
        v14 = v35;
        goto LABEL_25;
      }

      v27 = *MEMORY[0x1E69AB780];
    }

    v29 = 0;
    goto LABEL_24;
  }

  v8 = VUIVPAFLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Unable to report seek because session is nil", buf, 2u);
  }

LABEL_29:
}

- (void)_handlePIPChange:(id)change
{
  v13 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:VUIPlaybackManagerNotificationKeyPlayer[0]];
  userInfo2 = [changeCopy userInfo];

  v8 = [userInfo2 objectForKeyedSubscript:VUIPlaybackManagerNotificationKeyIsPIPing[0]];

  if (v8)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = VUIVPAFLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Handling player PIP change:%@", &v11, 0xCu);
    }

    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v8 forKey:@"VUIPlaybackReporterSessionMetadataKeyPIP" player:v6];
  }
}

- (void)_handleBackgroundEnterPIPChange:(id)change
{
  userInfo = [change userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"VUIBackgroundMediaControllerPlayerKey"];
  if (v4)
  {
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:MEMORY[0x1E695E118] forKey:@"VUIPlaybackReporterSessionMetadataKeyPIP" player:v4];
  }
}

- (void)_handleBackgroundExitPIPChange:(id)change
{
  userInfo = [change userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"VUIBackgroundMediaControllerPlayerKey"];
  if (v4)
  {
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:MEMORY[0x1E695E110] forKey:@"VUIPlaybackReporterSessionMetadataKeyPIP" player:v4];
  }
}

- (void)_handleDisplaySizeChange:(id)change
{
  v18 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:VUIPlaybackManagerNotificationKeyPlayer[0]];
  userInfo2 = [changeCopy userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:VUIPlaybackManagerNotificationKeyDisplaySize[0]];

  name = [changeCopy name];
  v10 = [name isEqualToString:@"VUIBackgroundMediaControllerVideoDisplaySizeDidChangeNotification"];

  if (v10)
  {
    v11 = [userInfo objectForKeyedSubscript:@"VUIBackgroundMediaControllerPlayerKey"];

    userInfo3 = [changeCopy userInfo];
    v13 = [userInfo3 objectForKeyedSubscript:@"VUIBackgroundMediaControllerDisplaySizeKey"];

    v8 = v13;
    v6 = v11;
  }

  if (v8)
  {
    v14 = v6 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v15 = VUIVPAFLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Handling player display change:%@", &v16, 0xCu);
    }

    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v8 forKey:@"VUIPlaybackReporterSessionMetadataKeyVideoDisplaySize" player:v6];
  }
}

- (void)_handleIsPlaybackUIBeingShownDidChange:(id)change
{
  v3 = +[VUIPlaybackManager sharedInstance];
  isPlaybackUIBeingShown = [v3 isPlaybackUIBeingShown];

  v5 = +[VUIMetricsJetEngine sharedInstance];
  [v5 setMonitorsLifecycleEvents:isPlaybackUIBeingShown ^ 1u];
}

- (void)_applicationWillResignActive:(id)active
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = +[VUIPlaybackManager sharedInstance];
  isPlaybackUIBeingShown = [v4 isPlaybackUIBeingShown];

  if (isPlaybackUIBeingShown)
  {
    v6 = VUIVPAFLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = 0x3FC999999999999ALL;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Application will resign active while playback UI is being shown.  Will flush unreported events after %.1f seconds", &v7, 0xCu);
    }

    [(VUIPlaybackReporterVPAF *)self _flushUnreportedEventsAfterDelay:0.2];
  }
}

- (void)_applicationDidEnterBackground:(id)background
{
  v4 = +[VUIPlaybackManager sharedInstance];
  isPlaybackUIBeingShown = [v4 isPlaybackUIBeingShown];

  if (isPlaybackUIBeingShown)
  {
    v6 = VUIVPAFLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Application did enter background while playback UI is being shown.  Flushing unreported events", v7, 2u);
    }

    [(VUIPlaybackReporterVPAF *)self flushUnreportedEvents];
  }
}

- (void)_handleSkipIntro_iOS:(id)s
{
  sCopy = s;
  v5 = VUIVPAFLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Handling skip intro", v13, 2u);
  }

  userInfo = [sCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:VUIPlaybackManagerNotificationKeyPlayer[0]];

  userInfo2 = [sCopy userInfo];
  v9 = [userInfo2 objectForKeyedSubscript:VUIPlaybackManagerSeekReasonKey[0]];

  if (v7)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && [v9 integerValue] == 1)
  {
    userInfo3 = [sCopy userInfo];
    v12 = [userInfo3 objectForKeyedSubscript:VUIPlaybackManagerSeekInfoKey];

    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v12 forKey:@"VUIPlaybackReporterSessionMetadataKeySkipIntroInfo" player:v7];
  }
}

- (void)_mediaControllerDidPlayToEnd:(id)end
{
  object = [end object];
  player = [object player];

  if (player)
  {
    player2 = [object player];
    v6 = [(VUIPlaybackReporter *)self _sessionForPlayer:player2];
    [v6 setMetadata:*MEMORY[0x1E69AB7A8] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopReason"];
    [v6 setMetadata:*MEMORY[0x1E69AB810] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopType"];
  }
}

- (void)_didSelectPostPlayItem:(id)item
{
  userInfo = [item userInfo];
  v4 = [userInfo vui_numberForKey:@"VUIPostPlayDidAutoPlayKey"];
  v5 = +[VUIPlaybackManager sharedInstance];
  activePlayer = [v5 activePlayer];

  v7 = [VUIPlaybackReporterSession transitionTypeForMediaControllerAutoTransition:v4];
  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v7 forKey:@"VUIPlaybackReporterSessionMetadataKeyStopType" player:activePlayer];
  v8 = [VUIPlaybackReporterSession transitionReasonForMediaControllerStopReason:&unk_1F5E5D758 autoStop:v4];
  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v8 forKey:@"VUIPlaybackReporterSessionMetadataKeyStopReason" player:activePlayer];
}

- (void)_handleMediaControllerNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  player = [object player];
  userInfo = [notificationCopy userInfo];

  v7 = [userInfo objectForKeyedSubscript:@"VUIBackgroundMediaControllerIsForegroundedKey"];
  v8 = [userInfo objectForKeyedSubscript:@"VUIBackgroundMediaControllerPlaybackStartReasonKey"];
  v9 = [userInfo objectForKeyedSubscript:@"VUIBackgroundMediaControllerPlaybackStopReasonKey"];
  v10 = [userInfo objectForKeyedSubscript:@"VUIBackgroundMediaControllerIsAutomaticPlaybackStartKey"];
  v11 = [userInfo objectForKeyedSubscript:@"VUIBackgroundMediaControllerIsAutomaticPlaybackStopKey"];
  v12 = [userInfo objectForKeyedSubscript:@"VUIBackgroundMediaControllerPlaybackStartReasonKey"];
  if (!v12)
  {
    goto LABEL_6;
  }

  v13 = v12;
  if ([v8 unsignedLongValue] != 3)
  {
    unsignedLongValue = [v8 unsignedLongValue];

    if (unsignedLongValue == 9)
    {
      goto LABEL_5;
    }

LABEL_6:
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_5:
  v7 = MEMORY[0x1E695E118];
LABEL_7:
  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v7 forKey:@"VUIPlaybackReporterSessionMetadataKeyForegroundPlayback" player:player];

LABEL_8:
  currentMediaItem = [player currentMediaItem];
  v16 = [currentMediaItem mediaItemMetadataForProperty:@"VUIMediaItemMetadataClipId"];

  if ([v16 length])
  {
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:MEMORY[0x1E695E118] forKey:@"VUIPlaybackReporterSessionMetadataKeyIsCatchUpToLive" player:player];
  }

  if (v8)
  {
    v17 = [VUIPlaybackReporterSession transitionTypeForMediaControllerAutoTransition:v10];
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v17 forKey:@"VUIPlaybackReporterSessionMetadataKeyStartType" player:player];
    v18 = [VUIPlaybackReporterSession transitionReasonForMediaControllerStartReason:v8 autoStart:v10];
    v19 = VUIPlaybackReporterSessionMetadataKeyStartReason;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    v17 = [VUIPlaybackReporterSession transitionTypeForMediaControllerAutoTransition:v11];
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v17 forKey:@"VUIPlaybackReporterSessionMetadataKeyStopType" player:player];
    v18 = [VUIPlaybackReporterSession transitionReasonForMediaControllerStopReason:v9 autoStop:v11];
    v19 = VUIPlaybackReporterSessionMetadataKeyStopReason;
  }

  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v18 forKey:*v19 player:player];

LABEL_15:
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
      v10 = VUIVPAFLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = object2;
        _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Initiating report for player - %@ after being transferred to full screen controller", &v12, 0xCu);
      }

      state = [object2 state];
      [(VUIPlaybackReporterVPAF *)self _reportForSession:v9 state:state reason:0];
    }
  }
}

- (void)_catchUpToLiveItemWillChange:(id)change
{
  changeCopy = change;
  object = [changeCopy object];
  userInfo = [changeCopy userInfo];

  v7 = [userInfo vui_BOOLForKey:@"VUICatchUpToLiveIsAutomaticKey" defaultValue:0];
  if (object)
  {
    v8 = MEMORY[0x1E69AB810];
    if (!v7)
    {
      v8 = MEMORY[0x1E69AB818];
    }

    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*v8 forKey:@"VUIPlaybackReporterSessionMetadataKeyStopType" player:object];
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB7C0] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopReason" player:object];
  }

  else
  {
    v9 = VUIVPAFLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Not setting catch up to live metadata because player is missing", v10, 2u);
    }
  }
}

- (void)_catchUpToLiveItemDidChange:(id)change
{
  changeCopy = change;
  object = [changeCopy object];
  userInfo = [changeCopy userInfo];

  v7 = [userInfo vui_BOOLForKey:@"VUICatchUpToLiveIsAutomaticKey" defaultValue:0];
  if (object)
  {
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:MEMORY[0x1E695E118] forKey:@"VUIPlaybackReporterSessionMetadataKeyIsCatchUpToLive" player:object];
    v8 = MEMORY[0x1E69AB810];
    if (!v7)
    {
      v8 = MEMORY[0x1E69AB818];
    }

    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*v8 forKey:@"VUIPlaybackReporterSessionMetadataKeyStartType" player:object];
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB760] forKey:@"VUIPlaybackReporterSessionMetadataKeyStartReason" player:object];
  }

  else
  {
    v9 = VUIVPAFLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Not setting catch up to live metadata because player is missing", v10, 2u);
    }
  }
}

- (void)_catchUpToLiveDidBegin:(id)begin
{
  object = [begin object];
  v4 = [(VUIPlaybackReporter *)self _sessionForPlayer:object];
  [v4 setMetadata:MEMORY[0x1E695E118] forKey:@"VUIPlaybackReporterSessionMetadataKeyIsCatchUpToLive"];
}

- (void)_catchUpToLiveDidEnd:(id)end
{
  endCopy = end;
  object = [endCopy object];
  userInfo = [endCopy userInfo];
  v7 = [userInfo objectForKey:@"VUICatchUpToLiveDidJumpToLiveKey"];
  bOOLValue = [v7 BOOLValue];

  userInfo2 = [endCopy userInfo];

  v10 = [userInfo2 objectForKey:@"VUICatchUpToLiveIsAutomaticKey"];

  v11 = [(VUIPlaybackReporter *)self _sessionForPlayer:object];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:bOOLValue];
  [v11 setMetadata:v12 forKey:@"VUIPlaybackReporterSessionMetadataKeyIsSeekJumpToLive"];

  [v11 setMetadata:v10 forKey:@"VUIPlaybackReporterSessionMetadataKeyIsJumpToLiveAutomatic"];
  if (bOOLValue)
  {
    v13 = [VUIPlaybackReporterSession transitionTypeForMediaControllerAutoTransition:v10];
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v13 forKey:@"VUIPlaybackReporterSessionMetadataKeyStopType" player:object];
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB7D8] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopReason" player:object];
    [v11 setMetadata:MEMORY[0x1E695E110] forKey:@"VUIPlaybackReporterSessionMetadataKeyIsCatchUpToLive"];
  }

  else
  {
    v14 = *MEMORY[0x1E69AB818];
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB818] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopType" player:object];
    v15 = *MEMORY[0x1E69AB7D0];
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB7D0] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopReason" player:object];
    stopped = [MEMORY[0x1E69D5A40] stopped];
    [(VUIPlaybackReporterVPAF *)self _reportForSession:v11 state:stopped reason:0];

    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v14 forKey:@"VUIPlaybackReporterSessionMetadataKeyStartType" player:object];
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v15 forKey:@"VUIPlaybackReporterSessionMetadataKeyStartReason" player:object];
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__VUIPlaybackReporterVPAF__catchUpToLiveDidEnd___block_invoke;
    block[3] = &unk_1E87301C0;
    v18 = v11;
    objc_copyWeak(&v19, &location);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v19);

    objc_destroyWeak(&location);
  }
}

void __48__VUIPlaybackReporterVPAF__catchUpToLiveDidEnd___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setMetadata:MEMORY[0x1E695E110] forKey:@"VUIPlaybackReporterSessionMetadataKeyIsCatchUpToLive"];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E69D5A40] playing];
  [WeakRetained _reportForSession:v2 state:v3 reason:0];
}

- (void)_liveSportsPostPlayAutoPlayWillStart:(id)start
{
  startCopy = start;
  userInfo = [startCopy userInfo];
  v9 = [userInfo objectForKey:@"VUILiveSportsPostPlayCurrentPlayer"];

  v6 = *MEMORY[0x1E69AB810];
  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB810] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopType" player:v9];
  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB7C0] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopReason" player:v9];
  userInfo2 = [startCopy userInfo];

  v8 = [userInfo2 objectForKey:@"VUILiveSportsPostPlayNextPlayer"];

  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v6 forKey:@"VUIPlaybackReporterSessionMetadataKeyStartType" player:v8];
  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB760] forKey:@"VUIPlaybackReporterSessionMetadataKeyStartReason" player:v8];
}

- (void)_liveSportsPostPlayManualPlayWillStart:(id)start
{
  startCopy = start;
  userInfo = [startCopy userInfo];
  v9 = [userInfo objectForKey:@"VUILiveSportsPostPlayCurrentPlayer"];

  v6 = *MEMORY[0x1E69AB818];
  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB818] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopType" player:v9];
  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB7C0] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopReason" player:v9];
  userInfo2 = [startCopy userInfo];

  v8 = [userInfo2 objectForKey:@"VUILiveSportsPostPlayNextPlayer"];

  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v6 forKey:@"VUIPlaybackReporterSessionMetadataKeyStartType" player:v8];
  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB760] forKey:@"VUIPlaybackReporterSessionMetadataKeyStartReason" player:v8];
}

- (unint64_t)_capPlayHeadIfNeeded:(unint64_t)needed forSession:(id)session
{
  sessionCopy = session;
  v6 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyInitialDurationInMillis"];
  v7 = v6;
  if (v6)
  {
    unsignedLongValue = [v6 unsignedLongValue];
LABEL_8:
    if (unsignedLongValue >= needed)
    {
      neededCopy = needed;
    }

    else
    {
      neededCopy = unsignedLongValue;
    }

    if (unsignedLongValue)
    {
      needed = neededCopy;
    }

    goto LABEL_13;
  }

  player = [sessionCopy player];
  [player duration];
  v11 = v10;

  if (v11 != *MEMORY[0x1E69D5A80] && v11 != *MEMORY[0x1E69D5A78])
  {
    unsignedLongValue = vcvtad_u64_f64(v11 * 1000.0);
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedLongValue];
    [sessionCopy setMetadata:v13 forKey:@"VUIPlaybackReporterSessionMetadataKeyInitialDurationInMillis"];

    goto LABEL_8;
  }

LABEL_13:

  return needed;
}

- (unint64_t)_snapToNearestPrerollIfNeeded:(unint64_t)needed forSession:(id)session isAtPrerollBoundary:(BOOL *)boundary
{
  boundaryCopy = boundary;
  selfCopy = self;
  v43 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  player = [sessionCopy player];
  currentMediaItem = [player currentMediaItem];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  neededCopy = needed;
  if (![VUIPlaybackUtilities playerIsLive:player])
  {
    v8 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyIsPlayerLive"];
    bOOLValue = [v8 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5D08]];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v11 = v35 = 0u;
      v12 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v12)
      {
        v13 = *v35;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v35 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v34 + 1) + 8 * i);
            if ([v15 type] == 1)
            {
              [v15 start];
              v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:vcvtad_u64_f64(v16 * 1000.0)];
              [v10 addObject:v17];
            }
          }

          v12 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
        }

        while (v12);
      }

      v18 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5BC0]];
      v19 = v18;
      if (v18)
      {
        [v18 doubleValue];
        v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:vcvtad_u64_f64(v20 * 1000.0)];
        [v10 addObject:v21];
      }

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __88__VUIPlaybackReporterVPAF__snapToNearestPrerollIfNeeded_forSession_isAtPrerollBoundary___block_invoke;
      v28[3] = &unk_1E8732C80;
      neededCopy2 = needed;
      v22 = v10;
      v33 = boundaryCopy;
      v31 = &v38;
      v29 = v22;
      v30 = selfCopy;
      [v22 enumerateObjectsUsingBlock:v28];
    }
  }

  v23 = v39[3];
  _Block_object_dispose(&v38, 8);

  return v23;
}

void __88__VUIPlaybackReporterVPAF__snapToNearestPrerollIfNeeded_forSession_isAtPrerollBoundary___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = [a2 unsignedIntegerValue];
  v8 = vcvtad_u64_f64(vabdd_f64(*(a1 + 56), v7));
  if (v8)
  {
    if (v8 > 0x1F3)
    {
      return;
    }

    *(*(*(a1 + 48) + 8) + 24) = v7;
    v9 = VUIVPAFLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 40) _playHeadDescriptionForTimeInMS:*(a1 + 56) playbackDate:0];
      if ([*(a1 + 32) count] - 1 == a3)
      {
        v11 = @"primary content";
      }

      else
      {
        v11 = @"nearest preroll";
      }

      v12 = [*(a1 + 40) _playHeadDescriptionForTimeInMS:*(*(*(a1 + 48) + 8) + 24) playbackDate:0];
      v15 = 138412802;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Snapping play position: %@ to start of %@: %@", &v15, 0x20u);
    }
  }

  else
  {
    v9 = VUIVPAFLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if ([*(a1 + 32) count] - 1 == a3)
      {
        v13 = @"primary content";
      }

      else
      {
        v13 = @"nearest preroll";
      }

      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - No snapping needed as we landed directly at the boundary of %@", &v15, 0xCu);
    }
  }

  v14 = *(a1 + 64);
  if (v14)
  {
    *v14 = 1;
  }

  *a4 = 1;
}

- (void)_createPlaybackDatePollingTimerForLiveStream:(id)stream
{
  streamCopy = stream;
  v5 = [streamCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyPlaybackDatePollingTimerForLiveStream"];
  if (!v5)
  {
    objc_initWeak(&location, streamCopy);
    objc_initWeak(&from, self);
    date = [MEMORY[0x1E695DF00] date];
    v7 = MEMORY[0x1E695DFF0];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __72__VUIPlaybackReporterVPAF__createPlaybackDatePollingTimerForLiveStream___block_invoke;
    v15 = &unk_1E8732CA8;
    objc_copyWeak(&v18, &location);
    objc_copyWeak(&v19, &from);
    v8 = streamCopy;
    v16 = v8;
    v9 = date;
    v17 = v9;
    v5 = [v7 scheduledTimerWithTimeInterval:1 repeats:&v12 block:5.0];
    player = [v8 player];
    playbackDate = [player playbackDate];

    [v8 setMetadata:playbackDate forKey:@"VUIPlaybackReporterSessionMetadataKeyPlaybackDateForLiveStream"];
    [v8 setMetadata:v5 forKey:@"VUIPlaybackReporterSessionMetadataKeyPlaybackDatePollingTimerForLiveStream"];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v18);

    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __72__VUIPlaybackReporterVPAF__createPlaybackDatePollingTimerForLiveStream___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained player];
  v4 = [v3 playbackDate];

  v5 = objc_loadWeakRetained(a1 + 7);
  v6 = [a1[4] player];
  if (!v4)
  {
    v11 = [a1[5] dateByAddingTimeInterval:20.0];
    v13 = [MEMORY[0x1E695DF00] date];
    v14 = [v13 earlierDate:v11];
    if (v14 == v11)
    {
      v15 = [a1[4] metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyWaitingForPlaybackDateToSendStartEvent"];
      if ([v15 BOOLValue])
      {
        v16 = [a1[4] metadataForKey:?];
        v29 = [v16 BOOLValue];

        if ((v29 & 1) == 0)
        {
          v17 = VUIVPAFLogObject();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            __72__VUIPlaybackReporterVPAF__createPlaybackDatePollingTimerForLiveStream___block_invoke_cold_1(v17, v18, v19, v20, v21, v22, v23, v24);
          }

          [a1[4] setMetadata:MEMORY[0x1E695E110] forKey:@"VUIPlaybackReporterSessionMetadataKeyWaitingForPlaybackDateToSendStartEvent"];
          [a1[4] setMetadata:MEMORY[0x1E695E118] forKey:@"VUIPlaybackReporterSessionMetadataKeyTimedOutWaitingForPlaybackDate"];
          v25 = [v6 state];
          v26 = [MEMORY[0x1E69D5A40] playing];

          if (v25 == v26)
          {
            v27 = VUIVPAFLogObject();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *v30 = 0;
              _os_log_impl(&dword_1E323F000, v27, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - After playback date timeout, playback state is playing.  Reporting start event even though it will have no playback date", v30, 2u);
            }

            v28 = [MEMORY[0x1E69D5A40] playing];
            [v5 _reportForSession:WeakRetained state:v28 reason:0];
          }
        }

        goto LABEL_20;
      }
    }

LABEL_20:
    goto LABEL_21;
  }

  [WeakRetained setMetadata:v4 forKey:@"VUIPlaybackReporterSessionMetadataKeyPlaybackDateForLiveStream"];
  v7 = [a1[4] metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyWaitingForPlaybackDateToSendStartEvent"];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    [a1[4] setMetadata:MEMORY[0x1E695E110] forKey:@"VUIPlaybackReporterSessionMetadataKeyWaitingForPlaybackDateToSendStartEvent"];
    v9 = [v6 state];
    v10 = [MEMORY[0x1E69D5A40] playing];

    v11 = VUIVPAFLogObject();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v9 == v10)
    {
      if (v12)
      {
        *v32 = 0;
        _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - After polling, playback date has become available while waiting for it and playback is playing.  Reporting start event", v32, 2u);
      }

      v11 = [MEMORY[0x1E69D5A40] playing];
      [v5 _reportForSession:WeakRetained state:v11 reason:0];
    }

    else if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - After polling, playback date has become available while waiting for it, but playback state is not playing.", buf, 2u);
    }

    goto LABEL_20;
  }

LABEL_21:
}

- (void)_invalidatePlaybackDatePollingTimerForLiveStream:(id)stream
{
  streamCopy = stream;
  v3 = [streamCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyPlaybackDatePollingTimerForLiveStream"];
  v4 = v3;
  if (v3)
  {
    [v3 invalidate];
    [streamCopy setMetadata:0 forKey:@"VUIPlaybackReporterSessionMetadataKeyPlaybackDatePollingTimerForLiveStream"];
  }
}

@end