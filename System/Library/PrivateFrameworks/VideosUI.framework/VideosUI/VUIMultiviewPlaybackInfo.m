@interface VUIMultiviewPlaybackInfo
+ (id)prospectivePlaybackInfo;
- (BOOL)_audioContainsAirPlayRoute;
- (BOOL)isAtLiveEdge;
- (VUIMultiviewPlaybackInfo)initWithPlayer:(id)a3 playerViewController:(id)a4 playsFromStart:(BOOL)a5 broadcastLocale:(id)a6 livePostPlayController:(id)a7;
- (id)_audioTrackForPlayer:(id)a3 withIdentifier:(int)a4;
- (id)_enabledAudioTrackForPlayer:(id)a3;
- (void)_waitForExternalPlaybackToEndForPlayer:(id)a3 completion:(id)a4;
- (void)swapActiveAudioWithPlaybackInfo:(id)a3 completion:(id)a4;
- (void)waitForExternalPlaybackToBecomeType:(int64_t)a3 forPlayer:(id)a4 completion:(id)a5;
@end

@implementation VUIMultiviewPlaybackInfo

- (VUIMultiviewPlaybackInfo)initWithPlayer:(id)a3 playerViewController:(id)a4 playsFromStart:(BOOL)a5 broadcastLocale:(id)a6 livePostPlayController:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v26.receiver = self;
  v26.super_class = VUIMultiviewPlaybackInfo;
  v17 = [(VUIMultiviewPlaybackInfo *)&v26 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_player, a3);
    objc_storeStrong(&v18->_playerViewController, a4);
    v18->_context = 0;
    v18->_playsFromStart = a5;
    objc_storeStrong(&v18->_broadcastLocale, a6);
    v18->_pausedDueToInterruption = 0;
    if (v16)
    {
      v19 = v16;
      livePostPlayController = v18->_livePostPlayController;
      v18->_livePostPlayController = v19;
LABEL_7:

      goto LABEL_8;
    }

    if (v13 && v14)
    {
      livePostPlayController = +[VUIInterfaceFactory sharedInstance];
      v21 = [livePostPlayController documentCreator];
      v22 = [v14 view];
      v23 = [v21 initializeLivePostPlayControllerWithPlayer:v13 playerViewController:v14 presentationView:v22];
      v24 = v18->_livePostPlayController;
      v18->_livePostPlayController = v23;

      goto LABEL_7;
    }
  }

LABEL_8:

  return v18;
}

+ (id)prospectivePlaybackInfo
{
  if (prospectivePlaybackInfo_onceToken != -1)
  {
    +[VUIMultiviewPlaybackInfo prospectivePlaybackInfo];
  }

  v3 = prospectivePlaybackInfo_instance;

  return v3;
}

void __51__VUIMultiviewPlaybackInfo_prospectivePlaybackInfo__block_invoke()
{
  v0 = [[VUIMultiviewPlaybackInfo alloc] initWithPlayer:0 playerViewController:0 playsFromStart:0 broadcastLocale:0 livePostPlayController:0];
  v1 = prospectivePlaybackInfo_instance;
  prospectivePlaybackInfo_instance = v0;
}

- (BOOL)isAtLiveEdge
{
  v2 = [(VUIMultiviewPlaybackInfo *)self player];
  v3 = [v2 isLive];

  return v3;
}

- (BOOL)_audioContainsAirPlayRoute
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6958460] sharedInstance];
  v3 = [v2 currentRoute];
  v4 = [v3 outputs];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    v8 = *MEMORY[0x1E69581A0];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) portType];

        if (v10 == v8)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)waitForExternalPlaybackToBecomeType:(int64_t)a3 forPlayer:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (v8 && [v8 externalPlaybackType] != a3)
  {
    objc_initWeak(&location, self);
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    v11 = [MEMORY[0x1E696ADC8] mainQueue];
    v12 = *MEMORY[0x1E69D60C8];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __85__VUIMultiviewPlaybackInfo_waitForExternalPlaybackToBecomeType_forPlayer_completion___block_invoke;
    v14[3] = &unk_1E8730C20;
    v15 = v8;
    v17[1] = a3;
    objc_copyWeak(v17, &location);
    v16 = v9;
    v13 = [v10 addObserverForName:v12 object:v15 queue:v11 usingBlock:v14];

    [(VUIMultiviewPlaybackInfo *)self setNotificationToken:v13];
    objc_destroyWeak(v17);

    objc_destroyWeak(&location);
  }

  else if (v9)
  {
    v9[2](v9);
  }
}

uint64_t __85__VUIMultiviewPlaybackInfo_waitForExternalPlaybackToBecomeType_forPlayer_completion___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) externalPlaybackType];
  if (result == *(a1 + 56))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v4 = [WeakRetained notificationToken];

    if (v4)
    {
      v5 = [MEMORY[0x1E696AD88] defaultCenter];
      v6 = objc_loadWeakRetained((a1 + 48));
      v7 = [v6 notificationToken];

      [v5 removeObserver:v7];
    }

    result = *(a1 + 40);
    if (result)
    {
      v8 = *(result + 16);

      return v8();
    }
  }

  return result;
}

- (void)_waitForExternalPlaybackToEndForPlayer:(id)a3 completion:(id)a4
{
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__VUIMultiviewPlaybackInfo__waitForExternalPlaybackToEndForPlayer_completion___block_invoke;
  v9[3] = &unk_1E872D7E0;
  v10 = v6;
  v7 = v6;
  v8 = a3;
  [(VUIMultiviewPlaybackInfo *)self waitForExternalPlaybackToBecomeType:0 forPlayer:v8 completion:v9];
  [v8 setAllowsExternalPlayback:0];
}

uint64_t __78__VUIMultiviewPlaybackInfo__waitForExternalPlaybackToEndForPlayer_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_enabledAudioTrackForPlayer:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [a3 avPlayer];
  v4 = [v3 currentItem];
  v5 = [v4 tracks];

  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v9 = *MEMORY[0x1E69875A0];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 assetTrack];
        v13 = [v12 mediaType];
        if ([v13 isEqualToString:v9])
        {
          v14 = [v11 isEnabled];

          if (v14)
          {
            v15 = v11;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = 0;
LABEL_13:

  return v15;
}

- (id)_audioTrackForPlayer:(id)a3 withIdentifier:(int)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [a3 avPlayer];
  v6 = [v5 currentItem];
  v7 = [v6 tracks];

  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 assetTrack];
        v14 = [v13 trackID];

        if (v14 == a4)
        {
          v15 = v12;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (void)swapActiveAudioWithPlaybackInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 player];
  v9 = [v6 playerViewController];
  v10 = [(VUIMultiviewPlaybackInfo *)self player];
  v11 = [(VUIMultiviewPlaybackInfo *)self playerViewController];
  if ([(VUIMultiviewPlaybackInfo *)self _audioContainsAirPlayRoute])
  {
    [v8 pause];
    objc_initWeak(&location, self);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__VUIMultiviewPlaybackInfo_swapActiveAudioWithPlaybackInfo_completion___block_invoke;
    v17[3] = &unk_1E8730C48;
    v18 = v8;
    objc_copyWeak(&v23, &location);
    v19 = v9;
    v20 = v10;
    v21 = v11;
    v22 = v7;
    [(VUIMultiviewPlaybackInfo *)self _waitForExternalPlaybackToEndForPlayer:v18 completion:v17];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  else
  {
    [v8 setAllowsExternalPlayback:0];
    [v9 setUpdatesNowPlayingInfoCenter:0];
    v12 = [v9 playerController];
    [v12 setAllowsAudioPlayback:0];

    [v8 setMuted:1];
    v13 = [(VUIMultiviewPlaybackInfo *)self _enabledAudioTrackForPlayer:v8];
    [v13 setEnabled:0];
    [v10 setAllowsExternalPlayback:1];
    [v11 setUpdatesNowPlayingInfoCenter:1];
    v14 = [v11 playerController];
    [v14 setAllowsAudioPlayback:1];

    [v10 setMuted:0];
    v15 = [(VUIMultiviewPlaybackInfo *)self _audioTrackForPlayer:v10 withIdentifier:[(VUIMultiviewPlaybackInfo *)self disabledAudioTrackId]];
    [v15 setEnabled:1];
    v16 = [v13 assetTrack];
    -[VUIMultiviewPlaybackInfo setDisabledAudioTrackId:](self, "setDisabledAudioTrackId:", [v16 trackID]);

    [v9 setPreferredPlaybackControlsSupplementalSubtitleDisplayOption:0];
    [v11 setPreferredPlaybackControlsSupplementalSubtitleDisplayOption:4];
    if (v7)
    {
      v7[2](v7);
    }
  }
}

void __71__VUIMultiviewPlaybackInfo_swapActiveAudioWithPlaybackInfo_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setMuted:1];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v12 = [WeakRetained _enabledAudioTrackForPlayer:*(a1 + 32)];

  [v12 setEnabled:0];
  v3 = [*(a1 + 40) playerController];
  [v3 setAllowsAudioPlayback:0];

  [*(a1 + 32) play];
  [*(a1 + 48) pause];
  [*(a1 + 48) setAllowsExternalPlayback:1];
  [*(a1 + 48) setMuted:0];
  v4 = objc_loadWeakRetained((a1 + 72));
  v5 = *(a1 + 48);
  v6 = v4;
  v7 = [v6 _audioTrackForPlayer:v5 withIdentifier:{objc_msgSend(v6, "disabledAudioTrackId")}];

  [v7 setEnabled:1];
  v8 = [*(a1 + 56) playerController];
  [v8 setAllowsAudioPlayback:1];

  [*(a1 + 48) play];
  v9 = objc_loadWeakRetained((a1 + 72));
  v10 = [v12 assetTrack];
  [v9 setDisabledAudioTrackId:{objc_msgSend(v10, "trackID")}];

  [*(a1 + 40) setPreferredPlaybackControlsSupplementalSubtitleDisplayOption:0];
  [*(a1 + 56) setPreferredPlaybackControlsSupplementalSubtitleDisplayOption:4];
  v11 = *(a1 + 64);
  if (v11)
  {
    (*(v11 + 16))();
  }
}

@end