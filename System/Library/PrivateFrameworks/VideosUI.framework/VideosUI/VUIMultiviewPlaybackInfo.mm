@interface VUIMultiviewPlaybackInfo
+ (id)prospectivePlaybackInfo;
- (BOOL)_audioContainsAirPlayRoute;
- (BOOL)isAtLiveEdge;
- (VUIMultiviewPlaybackInfo)initWithPlayer:(id)player playerViewController:(id)controller playsFromStart:(BOOL)start broadcastLocale:(id)locale livePostPlayController:(id)playController;
- (id)_audioTrackForPlayer:(id)player withIdentifier:(int)identifier;
- (id)_enabledAudioTrackForPlayer:(id)player;
- (void)_waitForExternalPlaybackToEndForPlayer:(id)player completion:(id)completion;
- (void)swapActiveAudioWithPlaybackInfo:(id)info completion:(id)completion;
- (void)waitForExternalPlaybackToBecomeType:(int64_t)type forPlayer:(id)player completion:(id)completion;
@end

@implementation VUIMultiviewPlaybackInfo

- (VUIMultiviewPlaybackInfo)initWithPlayer:(id)player playerViewController:(id)controller playsFromStart:(BOOL)start broadcastLocale:(id)locale livePostPlayController:(id)playController
{
  playerCopy = player;
  controllerCopy = controller;
  localeCopy = locale;
  playControllerCopy = playController;
  v26.receiver = self;
  v26.super_class = VUIMultiviewPlaybackInfo;
  v17 = [(VUIMultiviewPlaybackInfo *)&v26 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_player, player);
    objc_storeStrong(&v18->_playerViewController, controller);
    v18->_context = 0;
    v18->_playsFromStart = start;
    objc_storeStrong(&v18->_broadcastLocale, locale);
    v18->_pausedDueToInterruption = 0;
    if (playControllerCopy)
    {
      v19 = playControllerCopy;
      livePostPlayController = v18->_livePostPlayController;
      v18->_livePostPlayController = v19;
LABEL_7:

      goto LABEL_8;
    }

    if (playerCopy && controllerCopy)
    {
      livePostPlayController = +[VUIInterfaceFactory sharedInstance];
      documentCreator = [livePostPlayController documentCreator];
      view = [controllerCopy view];
      v23 = [documentCreator initializeLivePostPlayControllerWithPlayer:playerCopy playerViewController:controllerCopy presentationView:view];
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
  player = [(VUIMultiviewPlaybackInfo *)self player];
  isLive = [player isLive];

  return isLive;
}

- (BOOL)_audioContainsAirPlayRoute
{
  v17 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
  currentRoute = [mEMORY[0x1E6958460] currentRoute];
  outputs = [currentRoute outputs];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = outputs;
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

        portType = [*(*(&v12 + 1) + 8 * i) portType];

        if (portType == v8)
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

- (void)waitForExternalPlaybackToBecomeType:(int64_t)type forPlayer:(id)player completion:(id)completion
{
  playerCopy = player;
  completionCopy = completion;
  if (playerCopy && [playerCopy externalPlaybackType] != type)
  {
    objc_initWeak(&location, self);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
    v12 = *MEMORY[0x1E69D60C8];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __85__VUIMultiviewPlaybackInfo_waitForExternalPlaybackToBecomeType_forPlayer_completion___block_invoke;
    v14[3] = &unk_1E8730C20;
    v15 = playerCopy;
    v17[1] = type;
    objc_copyWeak(v17, &location);
    v16 = completionCopy;
    v13 = [defaultCenter addObserverForName:v12 object:v15 queue:mainQueue usingBlock:v14];

    [(VUIMultiviewPlaybackInfo *)self setNotificationToken:v13];
    objc_destroyWeak(v17);

    objc_destroyWeak(&location);
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
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

- (void)_waitForExternalPlaybackToEndForPlayer:(id)player completion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__VUIMultiviewPlaybackInfo__waitForExternalPlaybackToEndForPlayer_completion___block_invoke;
  v9[3] = &unk_1E872D7E0;
  v10 = completionCopy;
  v7 = completionCopy;
  playerCopy = player;
  [(VUIMultiviewPlaybackInfo *)self waitForExternalPlaybackToBecomeType:0 forPlayer:playerCopy completion:v9];
  [playerCopy setAllowsExternalPlayback:0];
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

- (id)_enabledAudioTrackForPlayer:(id)player
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  avPlayer = [player avPlayer];
  currentItem = [avPlayer currentItem];
  tracks = [currentItem tracks];

  v6 = [tracks countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(tracks);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        assetTrack = [v11 assetTrack];
        mediaType = [assetTrack mediaType];
        if ([mediaType isEqualToString:v9])
        {
          isEnabled = [v11 isEnabled];

          if (isEnabled)
          {
            v15 = v11;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v7 = [tracks countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = 0;
LABEL_13:

  return v15;
}

- (id)_audioTrackForPlayer:(id)player withIdentifier:(int)identifier
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  avPlayer = [player avPlayer];
  currentItem = [avPlayer currentItem];
  tracks = [currentItem tracks];

  v8 = [tracks countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(tracks);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        assetTrack = [v12 assetTrack];
        trackID = [assetTrack trackID];

        if (trackID == identifier)
        {
          v15 = v12;
          goto LABEL_11;
        }
      }

      v9 = [tracks countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (void)swapActiveAudioWithPlaybackInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  player = [infoCopy player];
  playerViewController = [infoCopy playerViewController];
  player2 = [(VUIMultiviewPlaybackInfo *)self player];
  playerViewController2 = [(VUIMultiviewPlaybackInfo *)self playerViewController];
  if ([(VUIMultiviewPlaybackInfo *)self _audioContainsAirPlayRoute])
  {
    [player pause];
    objc_initWeak(&location, self);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__VUIMultiviewPlaybackInfo_swapActiveAudioWithPlaybackInfo_completion___block_invoke;
    v17[3] = &unk_1E8730C48;
    v18 = player;
    objc_copyWeak(&v23, &location);
    v19 = playerViewController;
    v20 = player2;
    v21 = playerViewController2;
    v22 = completionCopy;
    [(VUIMultiviewPlaybackInfo *)self _waitForExternalPlaybackToEndForPlayer:v18 completion:v17];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  else
  {
    [player setAllowsExternalPlayback:0];
    [playerViewController setUpdatesNowPlayingInfoCenter:0];
    playerController = [playerViewController playerController];
    [playerController setAllowsAudioPlayback:0];

    [player setMuted:1];
    v13 = [(VUIMultiviewPlaybackInfo *)self _enabledAudioTrackForPlayer:player];
    [v13 setEnabled:0];
    [player2 setAllowsExternalPlayback:1];
    [playerViewController2 setUpdatesNowPlayingInfoCenter:1];
    playerController2 = [playerViewController2 playerController];
    [playerController2 setAllowsAudioPlayback:1];

    [player2 setMuted:0];
    v15 = [(VUIMultiviewPlaybackInfo *)self _audioTrackForPlayer:player2 withIdentifier:[(VUIMultiviewPlaybackInfo *)self disabledAudioTrackId]];
    [v15 setEnabled:1];
    assetTrack = [v13 assetTrack];
    -[VUIMultiviewPlaybackInfo setDisabledAudioTrackId:](self, "setDisabledAudioTrackId:", [assetTrack trackID]);

    [playerViewController setPreferredPlaybackControlsSupplementalSubtitleDisplayOption:0];
    [playerViewController2 setPreferredPlaybackControlsSupplementalSubtitleDisplayOption:4];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
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