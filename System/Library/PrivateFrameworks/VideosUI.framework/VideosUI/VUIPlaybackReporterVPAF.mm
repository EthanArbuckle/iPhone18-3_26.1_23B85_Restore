@interface VUIPlaybackReporterVPAF
+ (id)sharedInstance;
- (BOOL)_isDelegatedForPlayer:(id)a3;
- (VUIPlaybackReporterVPAF)init;
- (id)_audioFormatForPlayer:(id)a3 session:(id)a4;
- (id)_audioInfoForPlayer:(id)a3;
- (id)_colorRangeForPlayer:(id)a3;
- (id)_connectionInfo;
- (id)_createSessionForPlayer:(id)a3;
- (id)_delegatedInfoForPlayer:(id)a3;
- (id)_downloadInfoForPlayer:(id)a3;
- (id)_focusInfoForSession:(id)a3;
- (id)_metricsForPlayer:(id)a3 session:(id)a4;
- (id)_metricsForSession:(id)a3;
- (id)_screenInfo;
- (id)_sensitiveContentInfoForPlayer:(id)a3;
- (id)_skipIntroActionForSession:(id)a3 consume:(BOOL)a4;
- (id)_subtitleInfoForPlayer:(id)a3;
- (id)_trackerWithBaseEventDataForSession:(id)a3;
- (id)_videoDisplayInfoForSession:(id)a3;
- (unint64_t)_capPlayHeadIfNeeded:(unint64_t)a3 forSession:(id)a4;
- (unint64_t)_snapToNearestPrerollIfNeeded:(unint64_t)a3 forSession:(id)a4 isAtPrerollBoundary:(BOOL *)a5;
- (void)_applicationDidEnterBackground:(id)a3;
- (void)_applicationWillResignActive:(id)a3;
- (void)_catchUpToLiveDidBegin:(id)a3;
- (void)_catchUpToLiveDidEnd:(id)a3;
- (void)_catchUpToLiveItemDidChange:(id)a3;
- (void)_catchUpToLiveItemWillChange:(id)a3;
- (void)_createPlaybackDatePollingTimerForLiveStream:(id)a3;
- (void)_didSelectPostPlayItem:(id)a3;
- (void)_endSession:(id)a3;
- (void)_flushUnreportedEventsAfterDelay:(double)a3;
- (void)_handleBackgroundEnterPIPChange:(id)a3;
- (void)_handleBackgroundExitPIPChange:(id)a3;
- (void)_handleBgMCEmbeddedPlayerVCTransferredToFullScreenControllerNotification:(id)a3;
- (void)_handleDisplaySizeChange:(id)a3;
- (void)_handleIsPlaybackUIBeingShownDidChange:(id)a3;
- (void)_handleMediaControllerNotification:(id)a3;
- (void)_handlePIPChange:(id)a3;
- (void)_handleSkipIntro_iOS:(id)a3;
- (void)_invalidatePlaybackDatePollingTimerForLiveStream:(id)a3;
- (void)_liveSportsPostPlayAutoPlayWillStart:(id)a3;
- (void)_liveSportsPostPlayManualPlayWillStart:(id)a3;
- (void)_mediaControllerDidPlayToEnd:(id)a3;
- (void)_playerCurrentMediaItemWillSeek:(id)a3;
- (void)_reportForSession:(id)a3 state:(id)a4 reason:(id)a5;
- (void)_reportSeekStopAtTimeInMS:(unint64_t)a3 playbackDate:(id)a4 session:(id)a5 tracker:(id)a6 player:(id)a7;
- (void)_setSessionMetadataValue:(id)a3 forKey:(id)a4 player:(id)a5;
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

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v2 selector:sel__playerCurrentMediaItemWillSeek_ name:*MEMORY[0x1E69D60C0] object:0];

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v2 selector:sel__handleMediaControllerNotification_ name:@"VUIBackgroundMediaControllerWillStartPlaybackNotification" object:0];

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v2 selector:sel__handleMediaControllerNotification_ name:@"VUIBackgroundMediaControllerWillStopPlaybackNotification" object:0];

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v2 selector:sel__mediaControllerDidPlayToEnd_ name:@"VUIBackgroundMediaControllerDidPlayToEndNotification" object:0];

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v2 selector:sel__handleDisplaySizeChange_ name:@"VUIBackgroundMediaControllerVideoDisplaySizeDidChangeNotification" object:0];

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v2 selector:sel__handleMediaControllerNotification_ name:@"VUIBackgroundMediaControllerForegroundStateDidChangeNotification" object:0];

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v2 selector:sel__handleBgMCEmbeddedPlayerVCTransferredToFullScreenControllerNotification_ name:@"VUIBackgroundMediaControllerEmbeddedPlayerViewControllerTransferredToFullScreenControllerNotification" object:0];

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v2 selector:sel__catchUpToLiveItemWillChange_ name:@"VUICatchUpToLiveIndexWillChangeNotification" object:0];

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:v2 selector:sel__catchUpToLiveItemDidChange_ name:@"VUICatchUpToLiveIndexDidChangeNotification" object:0];

    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:v2 selector:sel__catchUpToLiveDidBegin_ name:@"VUICatchUpToLiveDidTransitionFromFullscreenNotification" object:0];

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v2 selector:sel__catchUpToLiveDidEnd_ name:@"VUICatchUpToLiveDidTransitionToFullscreenNotification" object:0];

    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:v2 selector:sel__liveSportsPostPlayAutoPlayWillStart_ name:@"VUILiveSportsPostPlayAutoPlayWillStartNotification" object:0];

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v2 selector:sel__handleSkipIntro_iOS_ name:VUIPlaybackManagerWillSkipIntroNotification[0] object:0];

    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 addObserver:v2 selector:sel__handlePIPChange_ name:VUIPlaybackManagerIsPIPingDidChangeNotification[0] object:0];

    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    [v19 addObserver:v2 selector:sel__handleBackgroundEnterPIPChange_ name:@"VUIBackgroundMediaControllerDidEnterPIPNotification" object:0];

    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    [v20 addObserver:v2 selector:sel__handleBackgroundExitPIPChange_ name:@"VUIBackgroundMediaControllerDidStopPIPNotification" object:0];

    v21 = [MEMORY[0x1E696AD88] defaultCenter];
    [v21 addObserver:v2 selector:sel__handleDisplaySizeChange_ name:VUIPlaybackManagerVideoDisplaySizeDidChange[0] object:0];

    v22 = [MEMORY[0x1E696AD88] defaultCenter];
    [v22 addObserver:v2 selector:sel__handleIsPlaybackUIBeingShownDidChange_ name:VUIPlaybackManagerIsPlaybackUIBeingShownDidChange[0] object:0];

    v23 = [MEMORY[0x1E696AD88] defaultCenter];
    [v23 addObserver:v2 selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];

    v24 = [MEMORY[0x1E696AD88] defaultCenter];
    [v24 addObserver:v2 selector:sel__applicationWillResignActive_ name:*MEMORY[0x1E69DDBC8] object:0];

    v25 = [MEMORY[0x1E696AD88] defaultCenter];
    [v25 addObserver:v2 selector:sel__didSelectPostPlayItem_ name:@"VUIPostPlayDidSelectItemNotification" object:0];

    v26 = [MEMORY[0x1E696AD88] defaultCenter];
    [v26 addObserver:v2 selector:sel__liveSportsPostPlayManualPlayWillStart_ name:@"VUILiveSportsPostPlayManualPlayWillStartNotification" object:0];

    v27 = VUIVPAFLogObject();
    [(VUIPlaybackReporter *)v2 setLogObject:v27];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIPlaybackReporterVPAF;
  [(VUIPlaybackReporter *)&v4 dealloc];
}

- (void)_flushUnreportedEventsAfterDelay:(double)a3
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
  if (a3 == 0.0)
  {
    (*(v4 + 2))(v4);
  }

  else
  {
    v6 = VUIVPAFLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = a3;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Will flush events after delay of %f", buf, 0xCu);
    }

    v7 = dispatch_time(0, (a3 * 1000000000.0));
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

- (id)_createSessionForPlayer:(id)a3
{
  v4 = a3;
  v5 = VUIVPAFLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Using Jet VPAF tracking", buf, 2u);
  }

  v6 = [[VUIPlaybackReporterVPAFPlaylist alloc] initWithPlayer:v4];
  if (v6)
  {
    v7 = +[VUIMetricsJetEngine sharedInstance];
    v8 = [v7 wrappedPipeline];

    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x1E69AB828]) initWithPipeline:v8 playlist:v6 eventData:0 topic:@"xp_amp_tv_vpaf"];
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

  v11 = [[VUIPlaybackReporterSession alloc] initWithPlayer:v4 context:v9];
  -[VUIPlaybackReporterSession setHasInterstitials:](v11, "setHasInterstitials:", [v4 hasInterstitials]);
  [(VUIPlaybackReporterSession *)v11 setReportingEnabled:v9 != 0];
  v12 = [(NSMapTable *)self->_pendingPlayerProperties objectForKey:v4];
  if (v12)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __51__VUIPlaybackReporterVPAF__createSessionForPlayer___block_invoke;
    v18[3] = &unk_1E8732C58;
    v19 = v11;
    [v12 enumerateKeysAndObjectsUsingBlock:v18];
    [(NSMapTable *)self->_pendingPlayerProperties removeObjectForKey:v4];
  }

  v13 = [(VUIPlaybackReporterSession *)v11 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyForegroundPlayback"];
  v14 = [v4 currentMediaItem];
  v15 = [v14 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyReportVPAFWhenPlayingInBackground"];
  if (v13 && ([v13 BOOLValue] & 1) == 0 && (objc_msgSend(v15, "BOOLValue") & 1) == 0)
  {
    [(VUIPlaybackReporterSession *)v11 setReportingEnabled:0];
  }

  if ([VUIPlaybackUtilities playerIsLive:v4])
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

- (void)_reportForSession:(id)a3 state:(id)a4 reason:(id)a5
{
  v148[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(VUIPlaybackReporterVPAF *)self _trackerWithBaseEventDataForSession:v8];
  v12 = v11;
  if (v11)
  {
    v113 = v11;
    v114 = v10;
    v13 = [v8 player];
    v116 = [v13 currentMediaItem];
    v14 = [v8 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyIsSeekJumpToLive"];
    v112 = [v14 BOOLValue];

    v15 = [v8 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyIsJumpToLiveAutomatic"];
    v111 = [v15 BOOLValue];

    v16 = [v8 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyIsCatchUpToLive"];
    v17 = [v16 BOOLValue];

    v18 = [MEMORY[0x1E69D5A40] playing];

    v122 = self;
    v115 = v9;
    if (v18 != v9)
    {
      v19 = [v8 consumeMetadataForKey:@"VUIPlaybackReporterSessionMetadataKeySeekInfo"];
      v117 = v19;
      if (![VUIPlaybackUtilities playerIsLive:v13])
      {
        v20 = [v8 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyIsPlayerLive"];
        v21 = [v20 BOOLValue];

        if (!v21)
        {
          v38 = [v19 objectForKey:*MEMORY[0x1E69D60B0]];
          v39 = v38;
          v10 = v114;
          if (v38)
          {
            [v38 doubleValue];
          }

          else
          {
            [v13 elapsedTime];
          }

          buf[0] = 0;
          v44 = [(VUIPlaybackReporterVPAF *)self _snapToNearestPrerollIfNeeded:vcvtad_u64_f64(v40 * 1000.0) forSession:v8 isAtPrerollBoundary:buf];
          v45 = [v8 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyHaveSentInitialStartEvent"];
          v46 = [v45 BOOLValue];

          v37 = 0;
          if ([v8 hasInterstitials])
          {
            v37 = buf[0] & v46;
          }

          v110 = [(VUIPlaybackReporterVPAF *)v122 _capPlayHeadIfNeeded:v44 forSession:v8];

          v25 = 0;
LABEL_32:
          v47 = [v8 consumeStopType];
          v48 = [v8 consumeStopReason];
          v118 = v25;
          if ([v48 isEqualToString:*MEMORY[0x1E69AB7D8]])
          {
            v120 = v47;
            v49 = [v8 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeySkipIntroInfo"];

            if (v49)
            {
              v128 = *MEMORY[0x1E69AB750];
              v129 = *MEMORY[0x1E69AB7F0];
              v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
              self = v122;
              v51 = [(VUIPlaybackReporterVPAF *)v122 _skipIntroActionForSession:v8 consume:0];
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
            self = v122;
            if (v112)
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
              if (!v111)
              {
                v60 = MEMORY[0x1E69AB818];
              }

              v61 = *v60;

              v120 = v61;
              goto LABEL_49;
            }

            v57 = 0;
LABEL_50:
            v62 = [v8 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyHaveSentInitialStartEvent"];
            v63 = [v62 BOOLValue];

            v64 = VUIVPAFLogObject();
            v65 = v64;
            if (v63)
            {
              v66 = v116;
              if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
              {
                v67 = [(VUIPlaybackReporterVPAF *)self _playHeadDescriptionForTimeInMS:v110 playbackDate:v118];
                v68 = [v116 mediaItemMetadataForProperty:*MEMORY[0x1E69D5B98]];
                *buf = 138413314;
                v131 = v67;
                v132 = 2112;
                v133 = v120;
                v134 = 2112;
                v135 = v48;
                v136 = 2112;
                v137 = v68;
                v138 = 2112;
                v139 = v57;
                _os_log_impl(&dword_1E323F000, v65, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Reporting play event stop: position:%@ type:%@ reason:%@ id:%@ data:%@", buf, 0x34u);

                self = v122;
              }

              v69 = v120;
              [v12 playStoppedAtOverallPosition:v110 type:v120 reason:v48 eventData:v57];
            }

            else
            {
              v66 = v116;
              if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
              {
                [(VUIPlaybackReporterVPAF *)v65 _reportForSession:v70 state:v71 reason:v72, v73, v74, v75, v76];
              }

              v69 = v120;
            }

LABEL_83:

            v97 = [MEMORY[0x1E69DC668] sharedApplication];
            v98 = [v97 applicationState];

            if (v98 == 2)
            {
              [(VUIPlaybackReporterVPAF *)self _flushUnreportedEventsAfterDelay:1.0];
            }

            v9 = v115;
            goto LABEL_86;
          }

          if (v37)
          {
            v56 = *MEMORY[0x1E69AB810];

            v57 = 0;
            v50 = v48;
            v120 = v56;
            v48 = *MEMORY[0x1E69AB7E8];
            v12 = v113;
LABEL_38:
            self = v122;
LABEL_49:

            goto LABEL_50;
          }

          v120 = v47;
          if (![v48 isEqualToString:*MEMORY[0x1E69AB7F8]])
          {
            v57 = 0;
            v12 = v113;
            self = v122;
            goto LABEL_50;
          }

          v58 = [MEMORY[0x1E69D5A40] paused];

          if (v58 == v115)
          {
            v50 = *MEMORY[0x1E69AB7C8];
          }

          else
          {
            v50 = v48;
          }

          v12 = v113;
          if ([v10 isEqualToString:*MEMORY[0x1E69D5F00]])
          {
            v99 = *MEMORY[0x1E69AB810];

            v100 = [v13 playlist];
            v101 = [v100 nextMediaItem];

            if (v101)
            {
              v102 = MEMORY[0x1E69AB7C0];
            }

            else
            {
              v102 = MEMORY[0x1E69AB7A8];
            }

            v48 = *v102;
            v57 = 0;
            v120 = v99;
            goto LABEL_38;
          }

          self = v122;
          if ([v10 isEqualToString:*MEMORY[0x1E69D5EE0]])
          {
            v103 = MEMORY[0x1E69AB7B0];
          }

          else if ([v10 isEqualToString:*MEMORY[0x1E69D5EF8]])
          {
            v103 = MEMORY[0x1E69AB7A0];
          }

          else if ([v10 isEqualToString:@"VUIPostPlayReasonAutomaticUpNext"])
          {
            v103 = MEMORY[0x1E69AB7C0];
          }

          else
          {
            if (![v10 isEqualToString:@"VUIPostPlayReasonAutomaticPlayOther"])
            {
              if ([v10 isEqualToString:@"VUIPostPlayReasonManualUpNext"])
              {
                v105 = MEMORY[0x1E69AB7C0];
              }

              else
              {
                if (![v10 isEqualToString:@"VUIPostPlayReasonManualPlayOther"])
                {
                  v57 = 0;
                  v48 = v50;
                  goto LABEL_50;
                }

                v105 = MEMORY[0x1E69AB7D0];
              }

              v48 = *v105;

              v104 = MEMORY[0x1E69AB818];
              goto LABEL_102;
            }

            v103 = MEMORY[0x1E69AB7D0];
          }

          v48 = *v103;

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
      v10 = v114;
      if (v22)
      {
        v24 = v22;
      }

      else
      {
        v25 = [v13 playbackDate];
        if (v25)
        {
          goto LABEL_20;
        }

        v24 = [v8 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyPlaybackDateForLiveStream"];
      }

      v25 = v24;
LABEL_20:
      [v25 timeIntervalSince1970];
      v110 = vcvtad_u64_f64(v36 * 1000.0);

      v37 = 0;
      goto LABEL_32;
    }

    v119 = v17;
    v108 = v13;
    if ([VUIPlaybackUtilities playerIsLive:v13])
    {
      v26 = [v13 playbackDate];
      [v26 timeIntervalSince1970];
      v109 = vcvtad_u64_f64(v27 * 1000.0);
      if (v26)
      {
        v118 = v26;
        v28 = [v8 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyWaitingForPlaybackDateToSendStartEvent"];
        v29 = [v28 BOOLValue];

        if (v29)
        {
          [v8 setMetadata:MEMORY[0x1E695E110] forKey:@"VUIPlaybackReporterSessionMetadataKeyWaitingForPlaybackDateToSendStartEvent"];
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
        v41 = [v8 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyTimedOutWaitingForPlaybackDate"];
        v42 = [v41 BOOLValue];

        if (v42)
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
          [v8 setMetadata:MEMORY[0x1E695E118] forKey:@"VUIPlaybackReporterSessionMetadataKeyWaitingForPlaybackDateToSendStartEvent"];
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
      [v13 elapsedTime];
      buf[0] = 0;
      v33 = [(VUIPlaybackReporterVPAF *)self _snapToNearestPrerollIfNeeded:vcvtad_u64_f64(v32 * 1000.0) forSession:v8 isAtPrerollBoundary:buf];
      v34 = [v8 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyHaveSentInitialStartEvent"];
      v35 = [v34 BOOLValue];

      v31 = 0;
      if ([v8 hasInterstitials])
      {
        v31 = buf[0] & v35;
      }

      v109 = [(VUIPlaybackReporterVPAF *)self _capPlayHeadIfNeeded:v33 forSession:v8];
      v118 = 0;
    }

    v84 = [v8 consumeStartType];
    v85 = [v8 consumeStartReason];
    v48 = [v8 consumeMetadataForKey:@"VUIPlaybackReporterSessionMetadataKeyHandlingSeek"];
    v86 = [(VUIPlaybackReporterVPAF *)self _skipIntroActionForSession:v8 consume:0];
    v106 = v86;
    if ([v48 BOOLValue])
    {
      v87 = MEMORY[0x1E69AB810];
      if (!(v111 & 1 | ((v112 & 1) == 0)))
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

        v13 = v108;
        v12 = v113;
        [(VUIPlaybackReporterVPAF *)self _reportSeekStopAtTimeInMS:v109 playbackDate:v118 session:v8 tracker:v113 player:v108];
        if (!v112)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v12 = v113;
        v13 = v108;
        if ((v112 & 1) == 0)
        {
          [(VUIPlaybackReporterVPAF *)self _reportSeekStopAtTimeInMS:v109 playbackDate:v118 session:v8 tracker:v113 player:v108];
          v89 = 0;
          goto LABEL_77;
        }

        v144 = *MEMORY[0x1E69AB748];
        v145 = *MEMORY[0x1E69AB780];
        v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
        v143 = v91;
        v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v143 count:1];

        [(VUIPlaybackReporterVPAF *)self _reportSeekStopAtTimeInMS:v109 playbackDate:v118 session:v8 tracker:v113 player:v108];
      }

      [v8 setMetadata:0 forKey:{@"VUIPlaybackReporterSessionMetadataKeyIsSeekJumpToLive", v106}];
      [v8 setMetadata:0 forKey:@"VUIPlaybackReporterSessionMetadataKeyIsJumpToLiveAutomatic"];
      [v8 setMetadata:0 forKey:@"VUIPlaybackReporterSessionMetadataKeyIsCatchUpToLive"];
    }

    else
    {
      if (!v119)
      {
        v66 = v116;
        if (v31)
        {
          v117 = *MEMORY[0x1E69AB810];

          v121 = *MEMORY[0x1E69AB788];
          v89 = 0;
        }

        else
        {
          v89 = 0;
          v121 = v85;
          v117 = v84;
        }

        v12 = v113;
        v13 = v108;
        goto LABEL_78;
      }

      v141 = @"extraType";
      v142 = @"CatchUpToLive";
      v90 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
      v140 = v90;
      v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v140 count:1];

      v121 = v85;
      v117 = v84;
      v12 = v113;
      v13 = v108;
    }

LABEL_77:
    v66 = v116;
LABEL_78:
    [v8 setMetadata:0 forKey:{@"VUIPlaybackReporterSessionMetadataKeySkipIntroInfo", v106}];
    v92 = [v8 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyWaitingForPlaybackDateToSendStartEvent"];
    v93 = [v92 BOOLValue];

    if ((v93 & 1) == 0)
    {
      [v8 setMetadata:MEMORY[0x1E695E118] forKey:@"VUIPlaybackReporterSessionMetadataKeyHaveSentInitialStartEvent"];
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

        v66 = v116;
      }

      [v12 playStartedAtOverallPosition:v109 type:v117 reason:v121 eventData:v89];
    }

    v69 = v121;
    v57 = v107;
    goto LABEL_83;
  }

  v13 = VUIVPAFLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Unable to report because tracker is nil", buf, 2u);
  }

LABEL_86:
}

- (void)_endSession:(id)a3
{
  v4 = a3;
  [(VUIPlaybackReporterVPAF *)self flushUnreportedEvents];
  [(VUIPlaybackReporterVPAF *)self _invalidatePlaybackDatePollingTimerForLiveStream:v4];
  v5.receiver = self;
  v5.super_class = VUIPlaybackReporterVPAF;
  [(VUIPlaybackReporter *)&v5 _endSession:v4];
}

- (id)_metricsForSession:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(VUIPlaybackReporterVPAF *)self _videoDisplayInfoForSession:v5];
  [v6 addEntriesFromDictionary:v7];

  v8 = [(VUIPlaybackReporterVPAF *)self _screenInfo];
  [v6 addEntriesFromDictionary:v8];

  v9 = [(VUIPlaybackReporterVPAF *)self _connectionInfo];
  [v6 addEntriesFromDictionary:v9];

  v10 = [(VUIPlaybackReporterVPAF *)self _focusInfoForSession:v5];
  [v6 vui_setObjectIfNotNil:v10 forKey:@"playbackFocus"];

  v11 = [v5 player];
  v12 = [(VUIPlaybackReporterVPAF *)self _metricsForPlayer:v11 session:v5];

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
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  v7 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v7 scale];
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

- (id)_videoDisplayInfoForSession:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 player];
  v6 = [(VUIPlaybackReporterVPAF *)self _delegatedInfoForPlayer:v5];

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
    v9 = [v4 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyVideoDisplaySize"];
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

- (id)_skipIntroActionForSession:(id)a3 consume:(BOOL)a4
{
  v4 = a4;
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeySkipIntroInfo"];
  if (v4)
  {
    [v5 setMetadata:0 forKey:@"VUIPlaybackReporterSessionMetadataKeySkipIntroInfo"];
  }

  if (!v6)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v7 = [v6 localizedTitle];
  if (![v7 length])
  {
    v9 = +[VUILocalizationManager sharedInstance];
    v10 = [v9 localizedStringForKey:@"SKIP_INTRO"];

    v7 = v10;
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_6:
  v12 = @"actionName";
  v13[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
LABEL_10:

LABEL_11:

  return v8;
}

- (id)_focusInfoForSession:(id)a3
{
  v3 = a3;
  v4 = @"foreground";
  v5 = [v3 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyForegroundPlayback"];
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

  v8 = [v3 player];
  v9 = [v8 currentMediaItem];
  v10 = [v9 mediaItemMetadataForProperty:@"VUIMediaItemMetadataClipId"];
  v11 = [v10 length];

  if (v11)
  {
    v12 = v4;

    v7 = v12;
  }

  v13 = [v3 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyPIP"];
  if ([v13 BOOLValue])
  {
    v14 = @"pictureInPicture";

    v7 = v14;
  }

  return v7;
}

- (id)_metricsForPlayer:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E695DF90];
  v8 = a4;
  v9 = objc_alloc_init(v7);
  v10 = [v6 currentMediaItem];
  v11 = [v10 mediaItemURL];

  if (([v11 isFileURL] & 1) == 0)
  {
    v12 = [v11 absoluteString];
    [v9 vui_setObjectIfNotNil:v12 forKey:@"url"];
  }

  v13 = [(VUIPlaybackReporterVPAF *)self _colorRangeForPlayer:v6];
  [v9 vui_setObjectIfNotNil:v13 forKey:@"videoColorRange"];

  v14 = [(VUIPlaybackReporterVPAF *)self _audioFormatForPlayer:v6 session:v8];

  [v9 vui_setObjectIfNotNil:v14 forKey:@"audioFormat"];
  v15 = [(VUIPlaybackReporterVPAF *)self _sensitiveContentInfoForPlayer:v6];
  [v9 vui_setObjectIfNotNil:v15 forKey:@"sensitiveContentType"];

  v16 = [(VUIPlaybackReporterVPAF *)self _delegatedInfoForPlayer:v6];
  [v9 vui_setObjectIfNotNil:v16 forKey:@"delegatedPlayback"];

  v17 = [(VUIPlaybackReporterVPAF *)self _downloadInfoForPlayer:v6];
  [v9 vui_setObjectIfNotNil:v17 forKey:@"downloadState"];

  v18 = [(VUIPlaybackReporterVPAF *)self _subtitleInfoForPlayer:v6];
  [v9 setValuesForKeysWithDictionary:v18];

  v19 = [(VUIPlaybackReporterVPAF *)self _audioInfoForPlayer:v6];
  [v9 setValuesForKeysWithDictionary:v19];

  return v9;
}

- (id)_subtitleInfoForPlayer:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 selectedSubtitleOptionWithNoOffOrAutoOption];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 languageCodeBCP47];
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
        v9 = [v6 subtitleType];
        v8 = VUIPlaybackReporterVPAFKeySubtitleLocale;
        if (v9 == 1)
        {
          v8 = VUIPlaybackReporterVPAFKeySDHLocale;
        }
      }

      [v4 vui_setObjectIfNotNil:v7 forKey:*v8];
    }
  }

  v10 = [v4 copy];

  return v10;
}

- (id)_audioInfoForPlayer:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [v3 selectedAudioOption];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 hasAudioDescriptions];
    v8 = [v6 languageCodeBCP47];
    v9 = VUIPlaybackReporterVPAFKeyAudioDescriptionLocale;
    if (!v7)
    {
      v9 = VUIPlaybackReporterVPAFKeyAudioLocale;
    }

    [v4 vui_setObjectIfNotNil:v8 forKey:*v9];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [v6 mediaCharacteristics];
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          if ([VUIVideosPlayable isMediaCharacteristicAnAudioVariantID:v15])
          {
            [v4 vui_setObjectIfNotNil:v15 forKey:@"audioVariantId"];
            goto LABEL_14;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (id)_colorRangeForPlayer:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v4 = [v3 currentMediaItemVideoRange], (v4 - 1) <= 3))
  {
    v5 = *off_1E8732CC8[v4 - 1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_audioFormatForPlayer:(id)a3 session:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = [v5 currentMediaItemAudioFormat];
  if (v7)
  {
    v8 = v7;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    [v6 setMetadata:v9 forKey:@"VUIPlaybackReporterSessionMetadataKeyAudioFormat"];
  }

  else
  {
    v10 = [v6 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyAudioFormat"];
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

- (id)_delegatedInfoForPlayer:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v4 = [v3 externalPlaybackType], v4 <= 2))
  {
    v5 = *off_1E8732D08[v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isDelegatedForPlayer:(id)a3
{
  v3 = [(VUIPlaybackReporterVPAF *)self _delegatedInfoForPlayer:a3];
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

- (id)_sensitiveContentInfoForPlayer:(id)a3
{
  v3 = [a3 currentMediaItem];
  v4 = [v3 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C38]];

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

- (id)_downloadInfoForPlayer:(id)a3
{
  v3 = a3;
  if ([VUIPlaybackUtilities playerIsLive:v3])
  {
    v4 = @"streaming";
  }

  else
  {
    v5 = [v3 currentMediaItem];
    v6 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C68]];

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

- (void)_setSessionMetadataValue:(id)a3 forKey:(id)a4 player:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(VUIPlaybackReporter *)self _sessionForPlayer:v9];
  v11 = v10;
  if (v10)
  {
    [v10 setMetadata:v13 forKey:v8];
  }

  else
  {
    v12 = [(NSMapTable *)self->_pendingPlayerProperties objectForKey:v9];
    if (!v12)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v12 setObject:v13 forKey:v8];
    [(NSMapTable *)self->_pendingPlayerProperties setObject:v12 forKey:v9];
  }
}

- (id)_trackerWithBaseEventDataForSession:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 player];
  v6 = [v5 currentMediaItem];
  v7 = [v4 context];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = +[VUIMetricsController sharedInstance];
    v10 = [v9 baseFieldsForVPAF];

    if (v10)
    {
      v20 = self;
      v11 = [v10 vui_BOOLForKey:@"sharedActivity" defaultValue:0];
      v12 = [v4 metadataForKey:?];
      v13 = v12;
      if (v11)
      {
        if (!v12)
        {
          v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
        }

        [v13 setObject:MEMORY[0x1E695E118] forKey:@"sharedActivity"];
        v14 = [v10 objectForKey:@"sharedActivityDevicesCurrent"];
        v15 = [v10 objectForKey:@"sharedActivityDevicesMax"];
        if (v14)
        {
          [v13 setObject:v14 forKey:@"sharedActivityDevicesCurrent"];
        }

        if (v15)
        {
          [v13 setObject:v15 forKey:@"sharedActivityDevicesMax"];
        }

        [v4 setMetadata:v13 forKey:@"VUIPlaybackReporterSessionKeySavedSharePlayBaseFields"];
      }

      [v8 addEntriesFromDictionary:v10];
      if (v13)
      {
        [v8 addEntriesFromDictionary:v13];
      }

      self = v20;
    }

    v16 = [(VUIPlaybackReporterVPAF *)self _metricsForSession:v4];
    [v8 addEntriesFromDictionary:v16];

    v21[0] = v8;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    [v7 resetEventData:v17];

    v18 = v7;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)_reportSeekStopAtTimeInMS:(unint64_t)a3 playbackDate:(id)a4 session:(id)a5 tracker:(id)a6 player:(id)a7
{
  v37[1] = *MEMORY[0x1E69E9840];
  v26 = a4;
  v12 = a5;
  v13 = a7;
  v14 = a6;
  v25 = [v13 currentMediaItem];
  v15 = *MEMORY[0x1E69AB810];
  v16 = *MEMORY[0x1E69AB808];
  v17 = [(VUIPlaybackReporterVPAF *)self _skipIntroActionForSession:v12 consume:0];
  v18 = [v12 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyIsSeekJumpToLive"];
  v19 = [v18 BOOLValue];

  LOBYTE(v18) = [VUIPlaybackUtilities playerIsLive:v13];
  if ((v18 & 1) == 0)
  {
    a3 = [(VUIPlaybackReporterVPAF *)self _capPlayHeadIfNeeded:a3 forSession:v12];
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

  if (v19)
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
    v23 = [(VUIPlaybackReporterVPAF *)self _playHeadDescriptionForTimeInMS:a3 playbackDate:v26];
    v24 = [v25 mediaItemMetadataForProperty:*MEMORY[0x1E69D5B98]];
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

  [v14 seekStoppedAtOverallPosition:a3 type:v15 reason:v16 eventData:v21];
}

- (void)_playerCurrentMediaItemWillSeek:(id)a3
{
  v47[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = VUIVPAFLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Current media item will seek", buf, 2u);
  }

  v6 = [v4 object];
  v7 = [(VUIPlaybackReporter *)self _sessionForPlayer:v6];
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

    v9 = [VUIPlaybackUtilities playerIsLive:v6];
    v10 = [v4 userInfo];
    v11 = v10;
    if (v9)
    {
      v12 = [v10 objectForKey:*MEMORY[0x1E69D5F20]];

      [v12 timeIntervalSince1970];
      v36 = vcvtad_u64_f64(v13 * 1000.0);
    }

    else
    {
      v15 = [v10 objectForKey:*MEMORY[0x1E69D60B0]];

      [v15 doubleValue];
      v36 = [(VUIPlaybackReporterVPAF *)self _capPlayHeadIfNeeded:[(VUIPlaybackReporterVPAF *)self _snapToNearestPrerollIfNeeded:vcvtad_u64_f64(v16 * 1000.0) forSession:v7 isAtPrerollBoundary:0] forSession:v7];

      v12 = 0;
    }

    v33 = [v7 consumeMetadataForKey:@"VUIPlaybackReporterSessionMetadataKeyHandlingSeek"];
    if ([v33 BOOLValue])
    {
      [(VUIPlaybackReporterVPAF *)self _reportSeekStopAtTimeInMS:v36 playbackDate:v12 session:v7 tracker:v8 player:v6];
    }

    v17 = [v6 state];
    v18 = [MEMORY[0x1E69D5A40] playing];

    v35 = v12;
    if (v17 == v18)
    {
      [v7 setMetadata:*MEMORY[0x1E69AB7D8] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopReason"];
      v19 = *MEMORY[0x1E69AB818];
      [v7 setMetadata:*MEMORY[0x1E69AB818] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopType"];
      v20 = [v4 userInfo];

      if (v20)
      {
        v21 = [v4 userInfo];
        [v7 setMetadata:v21 forKey:@"VUIPlaybackReporterSessionMetadataKeySeekInfo"];
      }
    }

    else
    {
      v19 = *MEMORY[0x1E69AB818];
    }

    [v7 setMetadata:MEMORY[0x1E695E118] forKey:@"VUIPlaybackReporterSessionMetadataKeyHandlingSeek"];
    v34 = [v6 currentMediaItem];
    v22 = [v7 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeySkipIntroInfo"];

    v23 = [v7 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyIsSeekJumpToLive"];
    v24 = [v23 BOOLValue];

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
          v32 = [v34 mediaItemMetadataForProperty:*MEMORY[0x1E69D5B98]];
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
      if (!v24)
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

- (void)_handlePIPChange:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:VUIPlaybackManagerNotificationKeyPlayer[0]];
  v7 = [v4 userInfo];

  v8 = [v7 objectForKeyedSubscript:VUIPlaybackManagerNotificationKeyIsPIPing[0]];

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

- (void)_handleBackgroundEnterPIPChange:(id)a3
{
  v5 = [a3 userInfo];
  v4 = [v5 objectForKeyedSubscript:@"VUIBackgroundMediaControllerPlayerKey"];
  if (v4)
  {
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:MEMORY[0x1E695E118] forKey:@"VUIPlaybackReporterSessionMetadataKeyPIP" player:v4];
  }
}

- (void)_handleBackgroundExitPIPChange:(id)a3
{
  v5 = [a3 userInfo];
  v4 = [v5 objectForKeyedSubscript:@"VUIBackgroundMediaControllerPlayerKey"];
  if (v4)
  {
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:MEMORY[0x1E695E110] forKey:@"VUIPlaybackReporterSessionMetadataKeyPIP" player:v4];
  }
}

- (void)_handleDisplaySizeChange:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:VUIPlaybackManagerNotificationKeyPlayer[0]];
  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:VUIPlaybackManagerNotificationKeyDisplaySize[0]];

  v9 = [v4 name];
  v10 = [v9 isEqualToString:@"VUIBackgroundMediaControllerVideoDisplaySizeDidChangeNotification"];

  if (v10)
  {
    v11 = [v5 objectForKeyedSubscript:@"VUIBackgroundMediaControllerPlayerKey"];

    v12 = [v4 userInfo];
    v13 = [v12 objectForKeyedSubscript:@"VUIBackgroundMediaControllerDisplaySizeKey"];

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

- (void)_handleIsPlaybackUIBeingShownDidChange:(id)a3
{
  v3 = +[VUIPlaybackManager sharedInstance];
  v4 = [v3 isPlaybackUIBeingShown];

  v5 = +[VUIMetricsJetEngine sharedInstance];
  [v5 setMonitorsLifecycleEvents:v4 ^ 1u];
}

- (void)_applicationWillResignActive:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = +[VUIPlaybackManager sharedInstance];
  v5 = [v4 isPlaybackUIBeingShown];

  if (v5)
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

- (void)_applicationDidEnterBackground:(id)a3
{
  v4 = +[VUIPlaybackManager sharedInstance];
  v5 = [v4 isPlaybackUIBeingShown];

  if (v5)
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

- (void)_handleSkipIntro_iOS:(id)a3
{
  v4 = a3;
  v5 = VUIVPAFLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Handling skip intro", v13, 2u);
  }

  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:VUIPlaybackManagerNotificationKeyPlayer[0]];

  v8 = [v4 userInfo];
  v9 = [v8 objectForKeyedSubscript:VUIPlaybackManagerSeekReasonKey[0]];

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
    v11 = [v4 userInfo];
    v12 = [v11 objectForKeyedSubscript:VUIPlaybackManagerSeekInfoKey];

    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v12 forKey:@"VUIPlaybackReporterSessionMetadataKeySkipIntroInfo" player:v7];
  }
}

- (void)_mediaControllerDidPlayToEnd:(id)a3
{
  v7 = [a3 object];
  v4 = [v7 player];

  if (v4)
  {
    v5 = [v7 player];
    v6 = [(VUIPlaybackReporter *)self _sessionForPlayer:v5];
    [v6 setMetadata:*MEMORY[0x1E69AB7A8] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopReason"];
    [v6 setMetadata:*MEMORY[0x1E69AB810] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopType"];
  }
}

- (void)_didSelectPostPlayItem:(id)a3
{
  v9 = [a3 userInfo];
  v4 = [v9 vui_numberForKey:@"VUIPostPlayDidAutoPlayKey"];
  v5 = +[VUIPlaybackManager sharedInstance];
  v6 = [v5 activePlayer];

  v7 = [VUIPlaybackReporterSession transitionTypeForMediaControllerAutoTransition:v4];
  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v7 forKey:@"VUIPlaybackReporterSessionMetadataKeyStopType" player:v6];
  v8 = [VUIPlaybackReporterSession transitionReasonForMediaControllerStopReason:&unk_1F5E5D758 autoStop:v4];
  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v8 forKey:@"VUIPlaybackReporterSessionMetadataKeyStopReason" player:v6];
}

- (void)_handleMediaControllerNotification:(id)a3
{
  v4 = a3;
  v20 = [v4 object];
  v5 = [v20 player];
  v6 = [v4 userInfo];

  v7 = [v6 objectForKeyedSubscript:@"VUIBackgroundMediaControllerIsForegroundedKey"];
  v8 = [v6 objectForKeyedSubscript:@"VUIBackgroundMediaControllerPlaybackStartReasonKey"];
  v9 = [v6 objectForKeyedSubscript:@"VUIBackgroundMediaControllerPlaybackStopReasonKey"];
  v10 = [v6 objectForKeyedSubscript:@"VUIBackgroundMediaControllerIsAutomaticPlaybackStartKey"];
  v11 = [v6 objectForKeyedSubscript:@"VUIBackgroundMediaControllerIsAutomaticPlaybackStopKey"];
  v12 = [v6 objectForKeyedSubscript:@"VUIBackgroundMediaControllerPlaybackStartReasonKey"];
  if (!v12)
  {
    goto LABEL_6;
  }

  v13 = v12;
  if ([v8 unsignedLongValue] != 3)
  {
    v14 = [v8 unsignedLongValue];

    if (v14 == 9)
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
  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v7 forKey:@"VUIPlaybackReporterSessionMetadataKeyForegroundPlayback" player:v5];

LABEL_8:
  v15 = [v5 currentMediaItem];
  v16 = [v15 mediaItemMetadataForProperty:@"VUIMediaItemMetadataClipId"];

  if ([v16 length])
  {
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:MEMORY[0x1E695E118] forKey:@"VUIPlaybackReporterSessionMetadataKeyIsCatchUpToLive" player:v5];
  }

  if (v8)
  {
    v17 = [VUIPlaybackReporterSession transitionTypeForMediaControllerAutoTransition:v10];
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v17 forKey:@"VUIPlaybackReporterSessionMetadataKeyStartType" player:v5];
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
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v17 forKey:@"VUIPlaybackReporterSessionMetadataKeyStopType" player:v5];
    v18 = [VUIPlaybackReporterSession transitionReasonForMediaControllerStopReason:v9 autoStop:v11];
    v19 = VUIPlaybackReporterSessionMetadataKeyStopReason;
  }

  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v18 forKey:*v19 player:v5];

LABEL_15:
}

- (void)_handleBgMCEmbeddedPlayerVCTransferredToFullScreenControllerNotification:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v4 object];
    v8 = [(VUIPlaybackReporter *)self _sessionForPlayer:v7];
    v9 = v8;
    if (v8)
    {
      [v8 setMetadata:MEMORY[0x1E695E118] forKey:@"VUIPlaybackReporterSessionMetadataKeyForegroundPlayback"];
      [v9 setReportingEnabled:1];
      v10 = VUIVPAFLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v7;
        _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Initiating report for player - %@ after being transferred to full screen controller", &v12, 0xCu);
      }

      v11 = [v7 state];
      [(VUIPlaybackReporterVPAF *)self _reportForSession:v9 state:v11 reason:0];
    }
  }
}

- (void)_catchUpToLiveItemWillChange:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [v4 userInfo];

  v7 = [v6 vui_BOOLForKey:@"VUICatchUpToLiveIsAutomaticKey" defaultValue:0];
  if (v5)
  {
    v8 = MEMORY[0x1E69AB810];
    if (!v7)
    {
      v8 = MEMORY[0x1E69AB818];
    }

    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*v8 forKey:@"VUIPlaybackReporterSessionMetadataKeyStopType" player:v5];
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB7C0] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopReason" player:v5];
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

- (void)_catchUpToLiveItemDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [v4 userInfo];

  v7 = [v6 vui_BOOLForKey:@"VUICatchUpToLiveIsAutomaticKey" defaultValue:0];
  if (v5)
  {
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:MEMORY[0x1E695E118] forKey:@"VUIPlaybackReporterSessionMetadataKeyIsCatchUpToLive" player:v5];
    v8 = MEMORY[0x1E69AB810];
    if (!v7)
    {
      v8 = MEMORY[0x1E69AB818];
    }

    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*v8 forKey:@"VUIPlaybackReporterSessionMetadataKeyStartType" player:v5];
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB760] forKey:@"VUIPlaybackReporterSessionMetadataKeyStartReason" player:v5];
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

- (void)_catchUpToLiveDidBegin:(id)a3
{
  v5 = [a3 object];
  v4 = [(VUIPlaybackReporter *)self _sessionForPlayer:v5];
  [v4 setMetadata:MEMORY[0x1E695E118] forKey:@"VUIPlaybackReporterSessionMetadataKeyIsCatchUpToLive"];
}

- (void)_catchUpToLiveDidEnd:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [v4 userInfo];
  v7 = [v6 objectForKey:@"VUICatchUpToLiveDidJumpToLiveKey"];
  v8 = [v7 BOOLValue];

  v9 = [v4 userInfo];

  v10 = [v9 objectForKey:@"VUICatchUpToLiveIsAutomaticKey"];

  v11 = [(VUIPlaybackReporter *)self _sessionForPlayer:v5];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:v8];
  [v11 setMetadata:v12 forKey:@"VUIPlaybackReporterSessionMetadataKeyIsSeekJumpToLive"];

  [v11 setMetadata:v10 forKey:@"VUIPlaybackReporterSessionMetadataKeyIsJumpToLiveAutomatic"];
  if (v8)
  {
    v13 = [VUIPlaybackReporterSession transitionTypeForMediaControllerAutoTransition:v10];
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v13 forKey:@"VUIPlaybackReporterSessionMetadataKeyStopType" player:v5];
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB7D8] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopReason" player:v5];
    [v11 setMetadata:MEMORY[0x1E695E110] forKey:@"VUIPlaybackReporterSessionMetadataKeyIsCatchUpToLive"];
  }

  else
  {
    v14 = *MEMORY[0x1E69AB818];
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB818] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopType" player:v5];
    v15 = *MEMORY[0x1E69AB7D0];
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB7D0] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopReason" player:v5];
    v16 = [MEMORY[0x1E69D5A40] stopped];
    [(VUIPlaybackReporterVPAF *)self _reportForSession:v11 state:v16 reason:0];

    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v14 forKey:@"VUIPlaybackReporterSessionMetadataKeyStartType" player:v5];
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v15 forKey:@"VUIPlaybackReporterSessionMetadataKeyStartReason" player:v5];
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

- (void)_liveSportsPostPlayAutoPlayWillStart:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v9 = [v5 objectForKey:@"VUILiveSportsPostPlayCurrentPlayer"];

  v6 = *MEMORY[0x1E69AB810];
  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB810] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopType" player:v9];
  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB7C0] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopReason" player:v9];
  v7 = [v4 userInfo];

  v8 = [v7 objectForKey:@"VUILiveSportsPostPlayNextPlayer"];

  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v6 forKey:@"VUIPlaybackReporterSessionMetadataKeyStartType" player:v8];
  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB760] forKey:@"VUIPlaybackReporterSessionMetadataKeyStartReason" player:v8];
}

- (void)_liveSportsPostPlayManualPlayWillStart:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v9 = [v5 objectForKey:@"VUILiveSportsPostPlayCurrentPlayer"];

  v6 = *MEMORY[0x1E69AB818];
  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB818] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopType" player:v9];
  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB7C0] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopReason" player:v9];
  v7 = [v4 userInfo];

  v8 = [v7 objectForKey:@"VUILiveSportsPostPlayNextPlayer"];

  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v6 forKey:@"VUIPlaybackReporterSessionMetadataKeyStartType" player:v8];
  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB760] forKey:@"VUIPlaybackReporterSessionMetadataKeyStartReason" player:v8];
}

- (unint64_t)_capPlayHeadIfNeeded:(unint64_t)a3 forSession:(id)a4
{
  v5 = a4;
  v6 = [v5 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyInitialDurationInMillis"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 unsignedLongValue];
LABEL_8:
    if (v8 >= a3)
    {
      v14 = a3;
    }

    else
    {
      v14 = v8;
    }

    if (v8)
    {
      a3 = v14;
    }

    goto LABEL_13;
  }

  v9 = [v5 player];
  [v9 duration];
  v11 = v10;

  if (v11 != *MEMORY[0x1E69D5A80] && v11 != *MEMORY[0x1E69D5A78])
  {
    v8 = vcvtad_u64_f64(v11 * 1000.0);
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
    [v5 setMetadata:v13 forKey:@"VUIPlaybackReporterSessionMetadataKeyInitialDurationInMillis"];

    goto LABEL_8;
  }

LABEL_13:

  return a3;
}

- (unint64_t)_snapToNearestPrerollIfNeeded:(unint64_t)a3 forSession:(id)a4 isAtPrerollBoundary:(BOOL *)a5
{
  v25 = a5;
  v26 = self;
  v43 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [v6 player];
  v27 = [v7 currentMediaItem];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = a3;
  if (![VUIPlaybackUtilities playerIsLive:v7])
  {
    v8 = [v6 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyIsPlayerLive"];
    v9 = [v8 BOOLValue];

    if ((v9 & 1) == 0)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v27 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D08]];
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

      v18 = [v27 mediaItemMetadataForProperty:*MEMORY[0x1E69D5BC0]];
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
      v32 = a3;
      v22 = v10;
      v33 = v25;
      v31 = &v38;
      v29 = v22;
      v30 = v26;
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

- (void)_createPlaybackDatePollingTimerForLiveStream:(id)a3
{
  v4 = a3;
  v5 = [v4 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyPlaybackDatePollingTimerForLiveStream"];
  if (!v5)
  {
    objc_initWeak(&location, v4);
    objc_initWeak(&from, self);
    v6 = [MEMORY[0x1E695DF00] date];
    v7 = MEMORY[0x1E695DFF0];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __72__VUIPlaybackReporterVPAF__createPlaybackDatePollingTimerForLiveStream___block_invoke;
    v15 = &unk_1E8732CA8;
    objc_copyWeak(&v18, &location);
    objc_copyWeak(&v19, &from);
    v8 = v4;
    v16 = v8;
    v9 = v6;
    v17 = v9;
    v5 = [v7 scheduledTimerWithTimeInterval:1 repeats:&v12 block:5.0];
    v10 = [v8 player];
    v11 = [v10 playbackDate];

    [v8 setMetadata:v11 forKey:@"VUIPlaybackReporterSessionMetadataKeyPlaybackDateForLiveStream"];
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

- (void)_invalidatePlaybackDatePollingTimerForLiveStream:(id)a3
{
  v5 = a3;
  v3 = [v5 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyPlaybackDatePollingTimerForLiveStream"];
  v4 = v3;
  if (v3)
  {
    [v3 invalidate];
    [v5 setMetadata:0 forKey:@"VUIPlaybackReporterSessionMetadataKeyPlaybackDatePollingTimerForLiveStream"];
  }
}

@end