@interface IMAVPlayer
+ (NSArray)availableSpeeds;
+ (float)rateForPlaybackSpeed:(unint64_t)a3;
+ (id)avPlaybackSpeedForSpeed:(unint64_t)a3;
+ (id)playerID;
+ (id)sharedPlayer;
+ (unint64_t)decrementPlaybackSpeed:(unint64_t)a3;
+ (unint64_t)incrementPlaybackSpeed:(unint64_t)a3;
+ (unint64_t)playbackSpeedForRate:(float)a3;
+ (void)performOnAvSessionQueue:(id)a3;
+ (void)performOnMainQueue:(id)a3;
- ($377CF2390FDF0262336A0B78E33E12FE)_skipToPreviousThreshold;
- (BOOL)_pause;
- (BOOL)_pause:(BOOL)a3;
- (BOOL)_stopWithReason:(unint64_t)a3 initiator:(unint64_t)a4 stopBlock:(id)a5;
- (BOOL)_validatePlay;
- (BOOL)airplayVideoActive;
- (BOOL)bufferEmpty;
- (BOOL)isAtEnd;
- (BOOL)isDurationReady;
- (BOOL)nextRemote;
- (BOOL)pause;
- (BOOL)pauseWithInitiator:(unint64_t)a3;
- (BOOL)pauseWithInitiator:(unint64_t)a3 interruptionEvent:(BOOL)a4;
- (BOOL)play;
- (BOOL)previousRemote:(BOOL)a3;
- (BOOL)stop;
- (BOOL)stopWithReason:(unint64_t)a3 initiator:(unint64_t)a4;
- (BOOL)togglePlayPause;
- (IMAVPlaybackCausalityObserver)causalityObserver;
- (IMAVPlayer)initWithCommandCenter:(id)a3 infoCenter:(id)a4 audioSession:(id)a5;
- (IMAVPlayerDelegate)delegate;
- (IMPlayerChapterInfo)currentChapter;
- (double)autoStopTimeRemaining;
- (double)duration;
- (double)loadedDuration;
- (float)actualRate;
- (float)storedVolume;
- (float)volume;
- (id)stillFrameAt:(double)a3 maxSize:(CGSize)a4 scale:(double)a5;
- (unint64_t)chapterCount;
- (unint64_t)loadState;
- (void)_autoStopTimerFired;
- (void)_clearAutoStop;
- (void)_clearAutoStopTimmer;
- (void)_configureAudioSessionWithCompletion:(id)a3;
- (void)_createPlayer;
- (void)_durationAvailable;
- (void)_failedToPlayToEndNotification:(id)a3;
- (void)_pauseAutoStopTimer;
- (void)_postNotificationName:(id)a3 userInfo:(id)a4;
- (void)_setChapterIndex:(unint64_t)a3;
- (void)_setupAutoStopTimer;
- (void)_updateForCurrentRateAndTimeControlStatus;
- (void)_updatePlayerForCurrentItem;
- (void)_updatePlayerTimeCompleted:(double)a3 completion:(id)a4;
- (void)_updatePlayerToCurrentTime:(id)a3;
- (void)addCMTimeObserver:(id *)a3;
- (void)addPeriodicTimeObservers;
- (void)addTimeObserver:(double)a3;
- (void)becomeActiveMediaPlayer;
- (void)beginBackgroundTask;
- (void)cancelFadeOut;
- (void)cancelSeek;
- (void)clearTimeObservers;
- (void)configureAudioSessionAndSetActive:(BOOL)a3 withCompletion:(id)a4;
- (void)dealloc;
- (void)endBackgroundTask;
- (void)endSeek;
- (void)enforceAutoStopForMode:(unint64_t)a3;
- (void)fadeOutWithDuration:(double)a3 completion:(id)a4;
- (void)forceTriggerTimeObserverAt:(double)a3;
- (void)handleAudioSessionInterruption:(id)a3;
- (void)handlePlayerInterruption:(id)a3;
- (void)hdcpTimer:(id)a3;
- (void)manifestCurrentItemDidChange;
- (void)nextChapter;
- (void)nextMediaItem;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)onChaptersLoaded:(id)a3;
- (void)onRouteChange:(id)a3;
- (void)onSeekTimer:(id)a3;
- (void)play:(id)a3 interruptionEvent:(BOOL)a4;
- (void)playerItemDidReachEnd:(id)a3;
- (void)previousChapter;
- (void)previousMediaItem;
- (void)removeAllTimeObservers;
- (void)removeCMTimeObserver:(id *)a3;
- (void)removePeriodicTimeObservers;
- (void)resetPlayer:(id)a3;
- (void)scanWithRate:(float)a3;
- (void)sendDurationLoadedCoreAnalyticsEvents;
- (void)sendItemEndedNotification;
- (void)sendPeriodicTimeEvent:(double)a3 duration:(double)a4 finished:(BOOL)a5;
- (void)setAutoStop:(unint64_t)a3;
- (void)setAutoStopTimerTime:(double)a3;
- (void)setCurrentChapterIndex:(unint64_t)a3;
- (void)setCurrentItem:(id)a3;
- (void)setCurrentTime:(double)a3 fromMediaRemote:(BOOL)a4;
- (void)setDelegate:(id)a3;
- (void)setManifest:(id)a3 completion:(id)a4;
- (void)setPlaybackSpeed:(unint64_t)a3;
- (void)setPlayer:(id)a3;
- (void)setPlayerItem:(id)a3;
- (void)setRequestedRate:(float)a3;
- (void)setScrubbing:(BOOL)a3;
- (void)setShouldEnforceHDCP:(BOOL)a3;
- (void)setState:(unint64_t)a3 additionalUserInfo:(id)a4 completion:(id)a5;
- (void)setVolume:(float)a3;
- (void)setWasInterrupted:(BOOL)a3;
- (void)setWasInterruptedEarly:(BOOL)a3;
- (void)setupChapterAtTime:(double)a3;
- (void)setupChapterTimeObservers;
- (void)setupTimeObserver:(id)a3;
- (void)sleep;
- (void)startSeek:(BOOL)a3;
- (void)stopObservingPlayer:(id)a3;
- (void)stopObservingPlayerItem:(id)a3;
- (void)toggleVideoAspectScaleMode;
- (void)triggerTimeObserverAt:(id)a3;
- (void)updateInfoCenterPlaybackState;
- (void)updateNowPlayingDurationSnapshot;
- (void)updateNowPlayingMetadataIncludingArtwork:(BOOL)a3;
- (void)updateRateForCurrentState:(id)a3;
- (void)updateTimeObservers;
@end

@implementation IMAVPlayer

- (IMAVPlayer)initWithCommandCenter:(id)a3 infoCenter:(id)a4 audioSession:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26.receiver = self;
  v26.super_class = IMAVPlayer;
  v11 = [(IMAVPlayer *)&v26 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_13;
  }

  v11->_loops = 0;
  v11->_state = 0;
  if (v10)
  {
    [(IMAVPlayer *)v11 setAudioSession:v10];
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = objc_alloc(MEMORY[0x277CD5FE8]);
    v15 = [objc_opt_class() playerID];
    v16 = [v14 initWithPlayerID:v15];
    [(IMAVPlayer *)v12 setInfoCenter:v16];

    if (v8)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  v13 = [MEMORY[0x277CB83F8] sharedInstance];
  [(IMAVPlayer *)v12 setAudioSession:v13];

  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_4:
  [(IMAVPlayer *)v12 setInfoCenter:v9];
  if (v8)
  {
LABEL_5:
    [(IMAVPlayer *)v12 setCommandCenter:v8];
    goto LABEL_9;
  }

LABEL_8:
  v17 = objc_alloc(MEMORY[0x277CD6028]);
  v18 = [objc_opt_class() playerID];
  v19 = [v17 initWithPlayerID:v18];
  [(IMAVPlayer *)v12 setCommandCenter:v19];

LABEL_9:
  v20 = [(IMAVPlayer *)v12 infoCenter];
  [v20 setPlaybackState:2];

  [(IMAVPlayer *)v12 setChapterMetadataMode:0];
  [(IMAVPlayer *)v12 setScanRate:0.0];
  if ([MEMORY[0x277D3DB60] platformSupportsVideo])
  {
    v12->_videoScale = 0;
    -[IMAVPlayer setProvidesVideoView:](v12, "setProvidesVideoView:", [MEMORY[0x277D3DB60] isRunningOnTV] ^ 1);
    if ((os_feature_enabled_red_sun() & 1) == 0)
    {
      v21 = [[IMAVPlayerVideoViewController alloc] initWithPlayer:v12];
      [(IMAVPlayer *)v12 setVideoViewController:v21];
    }
  }

  v22 = objc_opt_class();
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __60__IMAVPlayer_initWithCommandCenter_infoCenter_audioSession___block_invoke;
  v24[3] = &unk_2782BDD90;
  v25 = v12;
  [v22 performOnMainQueue:v24];

LABEL_13:
  return v12;
}

void __60__IMAVPlayer_initWithCommandCenter_infoCenter_audioSession___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _createPlayer];
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [*(a1 + 32) setPlaybackSpeed:{objc_msgSend(v2, "integerForKey:", @"IMAVPlayerPlaybackSpeedUserDefaultKey"}];

  [*(a1 + 32) storedVolume];
  [*(a1 + 32) setVolume:?];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *(a1 + 32);
  v5 = *MEMORY[0x277CB8068];
  v6 = [v4 audioSession];
  [v3 addObserver:v4 selector:sel_handleAudioSessionInterruption_ name:v5 object:v6];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = *(a1 + 32);
  v9 = *MEMORY[0x277CB8210];
  v10 = [v8 audioSession];
  [v7 addObserver:v8 selector:sel_onRouteChange_ name:v9 object:v10];

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  [v11 addObserver:*(a1 + 32) selector:sel_resetPlayer_ name:*MEMORY[0x277CB80A0] object:0];

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 addObserver:*(a1 + 32) selector:sel_handlePlayerInterruption_ name:*MEMORY[0x277CE6150] object:0];

  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  [v13 addObserver:*(a1 + 32) selector:sel_playerItemDidReachEnd_ name:*MEMORY[0x277CE60C0] object:0];

  v14 = [MEMORY[0x277CCAB98] defaultCenter];
  [v14 addObserver:*(a1 + 32) selector:sel__failedToPlayToEndNotification_ name:*MEMORY[0x277CE60D0] object:0];

  v15 = [MEMORY[0x277CCAB98] defaultCenter];
  [v15 addObserver:*(a1 + 32) selector:sel_onChaptersLoaded_ name:@"IMMediaItemDidLoadChaptersNotification" object:0];
}

- (void)dealloc
{
  v3 = [(IMAVPlayer *)self playerItem];
  [(IMAVPlayer *)self stopObservingPlayerItem:v3];

  v4 = [(IMAVPlayer *)self player];
  [(IMAVPlayer *)self stopObservingPlayer:v4];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self];

  [(IMAVPlayer *)self removeAllTimeObservers];
  [(IMAVPlayer *)self removePeriodicTimeObservers];
  [(NSTimer *)self->_hdcpTimer invalidate];
  hdcpTimer = self->_hdcpTimer;
  self->_hdcpTimer = 0;

  [(NSTimer *)self->_seekTimer invalidate];
  seekTimer = self->_seekTimer;
  self->_seekTimer = 0;

  v8.receiver = self;
  v8.super_class = IMAVPlayer;
  [(IMAVPlayer *)&v8 dealloc];
}

+ (id)sharedPlayer
{
  if ([MEMORY[0x277D3DB60] isRunningOnHomepod] && (objc_msgSend(MEMORY[0x277D27A10], "currentSettings"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "isMultiplayerHost"), v2, v3))
  {
    v4 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21B365000, v4, OS_LOG_TYPE_FAULT, "HomePod attempted to access the shared IMAVPlayer", v7, 2u);
    }

    v5 = 0;
  }

  else
  {
    if (sharedPlayer_onceToken != -1)
    {
      +[IMAVPlayer sharedPlayer];
    }

    v5 = _IMAVPlayer;
  }

  return v5;
}

uint64_t __26__IMAVPlayer_sharedPlayer__block_invoke()
{
  v0 = objc_alloc_init(IMAVPlayer);
  v1 = _IMAVPlayer;
  _IMAVPlayer = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)configureAudioSessionAndSetActive:(BOOL)a3 withCompletion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__IMAVPlayer_configureAudioSessionAndSetActive_withCompletion___block_invoke;
  v8[3] = &unk_2782BDF78;
  v10 = a3;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(IMAVPlayer *)self _configureAudioSessionWithCompletion:v8];
}

void __63__IMAVPlayer_configureAudioSessionAndSetActive_withCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!a2)
  {
    v11 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v6 code];
      v13 = [v6 domain];
      v14 = [v6 userInfo];
      v15 = [v14 description];
      *buf = 134218498;
      v27 = v12;
      v28 = 2112;
      v29 = v13;
      v30 = 2112;
      v31 = v15;
      v16 = "Error setting AVAudioSession Category to Playback: [%ld %@] %@";
LABEL_8:
      _os_log_impl(&dword_21B365000, v11, OS_LOG_TYPE_ERROR, v16, buf, 0x20u);
    }

LABEL_9:

    v10 = 0;
    goto LABEL_10;
  }

  v7 = [*(a1 + 32) audioSession];
  v8 = *(a1 + 48);
  v25 = 0;
  v9 = [v7 setActive:v8 error:&v25];
  v6 = v25;

  if ((v9 & 1) == 0)
  {
    v11 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = [v6 code];
      v13 = [v6 domain];
      v14 = [v6 userInfo];
      v15 = [v14 description];
      *buf = 134218498;
      v27 = v17;
      v28 = 2112;
      v29 = v13;
      v30 = 2112;
      v31 = v15;
      v16 = "Error setting AVAudioSession to Active: [%ld %@] %@";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v10 = 1;
LABEL_10:
  v18 = objc_opt_class();
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __63__IMAVPlayer_configureAudioSessionAndSetActive_withCompletion___block_invoke_153;
  v21[3] = &unk_2782BDF50;
  v19 = *(a1 + 40);
  v24 = v10;
  v22 = v6;
  v23 = v19;
  v20 = v6;
  [v18 performOnMainQueue:v21];
}

- (void)_configureAudioSessionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__IMAVPlayer__configureAudioSessionWithCompletion___block_invoke;
  v7[3] = &unk_2782BDFA0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performOnAvSessionQueue:v7];
}

void __51__IMAVPlayer__configureAudioSessionWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x277CB8030];
  v3 = *MEMORY[0x277CB80E0];
  v4 = [MEMORY[0x277D3DB60] isRunningOnHomepod];
  v5 = [*(a1 + 32) audioSession];
  v6 = v5;
  if (v4)
  {
    v13 = 0;
    v7 = &v13;
    v8 = [v5 setCategory:v2 mode:v3 options:0 error:&v13];
  }

  else
  {
    v12 = 0;
    v7 = &v12;
    v8 = [v5 setCategory:v2 mode:v3 routeSharingPolicy:1 options:0 error:&v12];
  }

  v9 = v8;
  v10 = *v7;

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v9, v10);
  }
}

- (void)becomeActiveMediaPlayer
{
  v3 = [MEMORY[0x277CD5FE8] defaultCenter];
  v4 = [MEMORY[0x277CD6028] sharedCommandCenter];
  infoCenter = self->_infoCenter;

  [(MPNowPlayingInfoCenter *)infoCenter becomeActive];
}

- (void)nextMediaItem
{
  v3 = objc_opt_class();
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__IMAVPlayer_nextMediaItem__block_invoke;
  v4[3] = &unk_2782BDD90;
  v4[4] = self;
  [v3 performOnMainQueue:v4];
}

uint64_t __27__IMAVPlayer_nextMediaItem__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21B365000, v2, OS_LOG_TYPE_DEFAULT, "nextMediaItem", v5, 2u);
  }

  v3 = [*(a1 + 32) manifest];
  [v3 next];

  return [*(a1 + 32) enforceAutoStopForMode:3];
}

- (void)previousMediaItem
{
  v3 = objc_opt_class();
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__IMAVPlayer_previousMediaItem__block_invoke;
  v4[3] = &unk_2782BDD90;
  v4[4] = self;
  [v3 performOnMainQueue:v4];
}

void __31__IMAVPlayer_previousMediaItem__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21B365000, v2, OS_LOG_TYPE_DEFAULT, "previousMediaItem", v4, 2u);
  }

  v3 = [*(a1 + 32) manifest];
  [v3 previous];
}

- (void)setManifest:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (![v7 isEqual:self->_manifest] || (objc_msgSend(v7, "currentItem"), v9 = objc_claimAutoreleasedReturnValue(), -[IMAVPlayer currentItem](self, "currentItem"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqual:", v10), v10, v9, (v11 & 1) == 0))
  {
    if (self->_manifest)
    {
      v12 = [MEMORY[0x277CCAB98] defaultCenter];
      [v12 removeObserver:self name:@"IMPlayerManifestCurrentItemDidChange" object:self->_manifest];
    }

    [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_ManifestWillChange" userInfo:0];
    objc_storeStrong(&self->_manifest, a3);
    [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_ManifestDidChange" userInfo:0];
    if (v7)
    {
      v13 = [MEMORY[0x277CCAB98] defaultCenter];
      [v13 addObserver:self selector:sel_manifestCurrentItemDidChange name:@"IMPlayerManifestCurrentItemDidChange" object:self->_manifest];

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __37__IMAVPlayer_setManifest_completion___block_invoke;
      v14[3] = &unk_2782BDFC8;
      v15 = v8;
      [v7 load:v14];

      goto LABEL_10;
    }

    [(IMAVPlayer *)self setCurrentItem:0];
  }

  if (v8)
  {
    v8[2](v8);
  }

LABEL_10:
}

uint64_t __37__IMAVPlayer_setManifest_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)manifestCurrentItemDidChange
{
  v4 = [(IMAVPlayer *)self manifest];
  v3 = [v4 currentItem];
  [(IMAVPlayer *)self setCurrentItem:v3];
}

- (void)setCurrentItem:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&dword_21B365000, v5, OS_LOG_TYPE_INFO, "setCurrentItem trace: %@", buf, 0xCu);
  }

  v7 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    currentItem = self->_currentItem;
    *buf = 138412546;
    v17 = v4;
    v18 = 2112;
    v19 = currentItem;
    _os_log_impl(&dword_21B365000, v7, OS_LOG_TYPE_DEFAULT, "setCurrentItem: %@, old: %@", buf, 0x16u);
  }

  v9 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v4 title];
    v11 = [(IMPlayerItem *)self->_currentItem title];
    *buf = 138412546;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_21B365000, v9, OS_LOG_TYPE_DEFAULT, "setCurrentItemTitle: %@, old: %@", buf, 0x16u);
  }

  v12 = objc_opt_class();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __29__IMAVPlayer_setCurrentItem___block_invoke;
  v14[3] = &unk_2782BDD68;
  v14[4] = self;
  v15 = v4;
  v13 = v4;
  [v12 performOnMainQueue:v14];
}

void __29__IMAVPlayer_setCurrentItem___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 104);
  if (v3 != v2 && ([v3 isEqual:?] & 1) == 0)
  {
    v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
    v5 = [*(a1 + 32) currentItem];
    if (v5)
    {
      [v4 setObject:v5 forKey:@"IMAVPlayerNotificationKey_OldMediaItem"];
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      [v4 setObject:v6 forKey:@"IMAVPlayerNotificationKey_NewMediaItem"];
    }

    v7 = [*(a1 + 32) autoStop] == 3;
    v8 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    [v4 setObject:v8 forKey:@"IMAVPlayerNotificationKey_DidSleepAtAssetEnd"];

    v9 = MEMORY[0x277CCABB0];
    [*(a1 + 32) currentTime];
    *&v10 = v10;
    v11 = [v9 numberWithFloat:v10];
    [v4 setObject:v11 forKey:@"IMAVPlayerNotificationKey_CurrentPlayheadTime"];

    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "state")}];
    v13 = [*(a1 + 32) state];
    [v4 setObject:v12 forKey:@"IMAVPlayerNotificationKey_CurrentPlayerState"];
    v14 = *(a1 + 32);
    if (v5 && v13 == 1)
    {
      v15 = [v14 causalityObserver];
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v17 = [*(a1 + 32) causalityObserver];
        [v17 player:*(a1 + 32) willStopWithReason:2 initiator:1];
      }

      [*(a1 + 32) _postNotificationName:@"IMMediaPlayerNotification_MediaItemWillChange" userInfo:v4];
      [*(a1 + 32) _primitiveSetCurrentItem:*(a1 + 40)];
      [v5 invalidateAsset];
      [*(a1 + 32) _updatePlayerForCurrentItem];
      v18 = [*(a1 + 32) causalityObserver];
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        v20 = [*(a1 + 32) causalityObserver];
        [v20 player:*(a1 + 32) didStopWithReason:2 initiator:1];
      }
    }

    else
    {
      [v14 _postNotificationName:@"IMMediaPlayerNotification_MediaItemWillChange" userInfo:v4];
      [*(a1 + 32) _primitiveSetCurrentItem:*(a1 + 40)];
      [v5 invalidateAsset];
      [*(a1 + 32) _updatePlayerForCurrentItem];
    }

    [*(a1 + 32) _postNotificationName:@"IMMediaPlayerNotification_MediaItemDidChange" userInfo:v4];
    v21 = [*(a1 + 40) isVideo];
    v22 = [*(a1 + 32) commandCenter];
    v23 = [v22 setPlaybackSessionCommand];
    [v23 setEnabled:v21 ^ 1u];

    if (([*(a1 + 32) delegateFlags] & 0x800) != 0)
    {
      v28 = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = __29__IMAVPlayer_setCurrentItem___block_invoke_2;
      v31 = &unk_2782BDD68;
      v24 = *(a1 + 40);
      v32 = *(a1 + 32);
      v33 = v24;
      v25 = _Block_copy(&v28);
      v26 = [MEMORY[0x277CCACC8] currentThread];
      v27 = [MEMORY[0x277CCACC8] mainThread];

      if (v26 == v27)
      {
        v25[2](v25);
      }

      else
      {
        dispatch_sync(MEMORY[0x277D85CD0], v25);
      }
    }
  }
}

void __29__IMAVPlayer_setCurrentItem___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 player:*(a1 + 32) currentManifestItemChanged:*(a1 + 40)];
}

- (void)setPlayerItem:(id)a3
{
  v4 = a3;
  v5 = [(IMAVPlayer *)self playerItem];

  if (v5)
  {
    v6 = [(IMAVPlayer *)self playerItem];
    [(IMAVPlayer *)self stopObservingPlayerItem:v6];
  }

  playerItem = self->_playerItem;
  self->_playerItem = v4;
}

- (void)_updatePlayerForCurrentItem
{
  v3 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_21B365000, v3, OS_LOG_TYPE_DEFAULT, "updatePlayerForCurrentItem", buf, 2u);
  }

  [(IMAVPlayer *)self setIsUpdatingCurrentTime:0];
  [(IMAVPlayer *)self removePeriodicTimeObservers];
  [(IMAVPlayer *)self removeAllTimeObservers];
  v4 = [(IMAVPlayer *)self currentItem];

  if (v4)
  {
    v5 = [(IMAVPlayer *)self currentItem];
    v6 = [v5 isVideo];

    [(AVPlayer *)self->_player setAllowsExternalPlayback:v6];
    [(AVPlayer *)self->_player setUsesExternalPlaybackWhileExternalScreenIsActive:v6];
    objc_initWeak(buf, self);
    if ([MEMORY[0x277D3DB60] platformSupportsVideo] && -[IMAVPlayer providesVideoView](self, "providesVideoView"))
    {
      v7 = objc_opt_class();
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __41__IMAVPlayer__updatePlayerForCurrentItem__block_invoke;
      v23[3] = &unk_2782BDFF0;
      v23[4] = self;
      v25 = v6;
      objc_copyWeak(&v24, buf);
      [v7 performOnMainQueue:v23];
      objc_destroyWeak(&v24);
    }

    v8 = MEMORY[0x277CE65B0];
    v9 = [(IMAVPlayer *)self currentItem];
    v10 = [v9 asset];
    v11 = [v8 playerItemWithAsset:v10];
    [(IMAVPlayer *)self setPlayerItem:v11];

    v12 = [(IMAVPlayer *)self playerItem];
    [v12 setAudioTimePitchAlgorithm:*MEMORY[0x277CE5CD8]];

    [(IMAVPlayer *)self playerItem];
    if (v6)
      v13 = {;
      [v13 setAllowedAudioSpatializationFormats:7];
    }

    else
      v13 = {;
      [v13 setAllowedAudioSpatializationFormats:4];
    }

    v14 = [(IMAVPlayer *)self currentItem];
    [v14 playhead];
    [(IMAVPlayer *)self setCurrentTime:?];

    v15 = [(IMAVPlayer *)self playerItem];
    [v15 setPreferredForwardBufferDuration:0.0];

    v16 = [(IMAVPlayer *)self playerItem];
    [v16 setPlaybackLikelyToKeepUpTrigger:1];

    v17 = [(IMAVPlayer *)self currentItem];
    v18 = [v17 isPlayable];

    if ((v18 & 1) == 0 && [(IMAVPlayer *)self isPlaybackRequested])
    {
      v19 = objc_opt_class();
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __41__IMAVPlayer__updatePlayerForCurrentItem__block_invoke_2;
      v22[3] = &unk_2782BDD90;
      v22[4] = self;
      [v19 performOnMainQueue:v22];
    }

    objc_destroyWeak(buf);
  }

  else
  {
    [(IMAVPlayer *)self setPlayerItem:0];
    if ([(IMAVPlayer *)self autoStop])
    {
      [(IMAVPlayer *)self enforceAutoStopForMode:[(IMAVPlayer *)self autoStop]];
    }

    [(IMAVPlayer *)self _pause];
  }

  player = self->_player;
  v21 = [(IMAVPlayer *)self playerItem];
  [(AVPlayer *)player replaceCurrentItemWithPlayerItem:v21];

  [(IMAVPlayer *)self addPeriodicTimeObservers];
  [(IMAVPlayer *)self updateRateForCurrentState];
  [(IMAVPlayer *)self updateNowPlayingDurationSnapshot];
}

void __41__IMAVPlayer__updatePlayerForCurrentItem__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v3 = [WeakRetained player];
  }

  else
  {
    v3 = 0;
  }

  v4 = [*(a1 + 32) videoViewController];
  [v4 setPlayer:v3];

  if (v2)
  {
  }
}

void __41__IMAVPlayer__updatePlayerForCurrentItem__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) currentItem];
  v3 = [v2 notifyUserIsNotPlayable];

  if (v3)
  {
    v4 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_21B365000, v4, OS_LOG_TYPE_DEFAULT, "Pausing: episode is not playable", v12, 2u);
    }

    v5 = [*(a1 + 32) causalityObserver];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [*(a1 + 32) causalityObserver];
      [v7 player:*(a1 + 32) willStopWithReason:10 initiator:2];
    }

    [*(a1 + 32) _pause];
    v8 = [*(a1 + 32) causalityObserver];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [*(a1 + 32) causalityObserver];
      [v10 player:*(a1 + 32) didStopWithReason:10 initiator:2];
    }
  }

  else
  {
    v11 = *(a1 + 32);

    [v11 nextMediaItem];
  }
}

- (void)updateRateForCurrentState:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__IMAVPlayer_updateRateForCurrentState___block_invoke;
  v7[3] = &unk_2782BDFA0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performOnMainQueue:v7];
}

void __40__IMAVPlayer_updateRateForCurrentState___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B365000, v2, OS_LOG_TYPE_DEFAULT, "updateRateForCurrentState", buf, 2u);
  }

  [*(a1 + 32) cancelFadeOut];
  v3 = [*(a1 + 32) state];
  if (!v3)
  {
    [*(a1 + 32) cancelSeek];
    [*(a1 + 32) endBackgroundTask];
    [*(a1 + 32) _pauseAutoStopTimer];
    [*(a1 + 32) setRequestedRate:0.0];
LABEL_11:
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, 0);
    }

    return;
  }

  if (v3 != 1)
  {
    if (v3 != 2)
    {
      return;
    }

    [*(a1 + 32) cancelSeek];
    [*(a1 + 32) endBackgroundTask];
    [*(a1 + 32) _pauseAutoStopTimer];
    [*(a1 + 32) setRequestedRate:0.0];
    [*(a1 + 32) updateNowPlayingDurationSnapshot];
    goto LABEL_11;
  }

  v4 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B365000, v4, OS_LOG_TYPE_DEFAULT, "Activate session begin", buf, 2u);
  }

  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__IMAVPlayer_updateRateForCurrentState___block_invoke_165;
  v7[3] = &unk_2782BE018;
  v7[4] = v5;
  v8 = *(a1 + 40);
  [v5 configureAudioSessionAndSetActive:1 withCompletion:v7];
}

uint64_t __40__IMAVPlayer_updateRateForCurrentState___block_invoke_165(uint64_t a1, int a2)
{
  v4 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21B365000, v4, OS_LOG_TYPE_DEFAULT, "Session active", v7, 2u);
  }

  if ([*(a1 + 32) state] != 1)
  {
    result = *(a1 + 40);
    if (!result)
    {
      return result;
    }

    v6 = *(result + 16);
    return v6();
  }

  if (a2)
  {
    [*(a1 + 32) becomeActiveMediaPlayer];
  }

  [*(a1 + 32) beginBackgroundTask];
  [*(a1 + 32) _setupAutoStopTimer];
  [*(a1 + 32) updateTimeObservers];
  [objc_opt_class() rateForPlaybackSpeed:{objc_msgSend(*(a1 + 32), "playbackSpeed")}];
  [*(a1 + 32) setRequestedRate:?];
  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);
    return v6();
  }

  return result;
}

- (void)_updateForCurrentRateAndTimeControlStatus
{
  v3 = objc_opt_class();
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__IMAVPlayer__updateForCurrentRateAndTimeControlStatus__block_invoke;
  v4[3] = &unk_2782BDD90;
  v4[4] = self;
  [v3 performOnMainQueue:v4];
}

uint64_t __55__IMAVPlayer__updateForCurrentRateAndTimeControlStatus__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) player];
    [v3 rate];
    v5 = v4;
    v6 = [*(a1 + 32) player];
    v24 = 134218240;
    *v25 = v5;
    *&v25[8] = 2048;
    v26 = [v6 timeControlStatus];
    _os_log_impl(&dword_21B365000, v2, OS_LOG_TYPE_DEFAULT, "rate changed: %f. timeControlStatus: %lu", &v24, 0x16u);
  }

  v7 = [*(a1 + 32) player];
  [v7 rate];
  v9 = fabsf(v8);

  if (v9 < 0.00000011921)
  {
    v10 = [*(a1 + 32) playerItem];
    if ([v10 status] != 1 || (objc_msgSend(*(a1 + 32), "isStalled") & 1) != 0 || objc_msgSend(*(a1 + 32), "isAtEnd"))
    {
    }

    else
    {
      v23 = [*(a1 + 32) wasInterrupted];

      if ((v23 & 1) == 0)
      {
        [*(a1 + 32) _pause];
        goto LABEL_15;
      }
    }
  }

  v11 = [*(a1 + 32) player];
  [v11 rate];
  v13 = v12;

  v14 = *(a1 + 32);
  if (v13 <= 0.00000011921)
  {
    v15 = [v14 player];
    [v15 rate];
    v17 = fabsf(v16);

    if (v17 < 0.00000011921)
    {
      v18 = [MEMORY[0x277D3DA88] player];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [*(a1 + 32) isStalled];
        v20 = [*(a1 + 32) isAtEnd];
        v21 = [*(a1 + 32) wasInterrupted];
        v24 = 67109632;
        *v25 = v19;
        *&v25[4] = 1024;
        *&v25[6] = v20;
        LOWORD(v26) = 1024;
        *(&v26 + 2) = v21;
        _os_log_impl(&dword_21B365000, v18, OS_LOG_TYPE_DEFAULT, "rate change to 0 did not result in a pause.  isStalled: %d, isAtEnd: %d, wasInterrupted: %d", &v24, 0x14u);
      }
    }
  }

  else if (![v14 state])
  {
    [*(a1 + 32) play];
  }

LABEL_15:
  [*(a1 + 32) _postNotificationName:@"IMAVPlayerNotification_RateChanged" userInfo:0];
  return [*(a1 + 32) updateNowPlayingDurationSnapshot];
}

- (BOOL)nextRemote
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(IMAVPlayer *)self manifest];
  v4 = [v3 hasNext];

  v5 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_21B365000, v5, OS_LOG_TYPE_DEFAULT, "nextRemote", &v16, 2u);
  }

  if ([(IMAVPlayer *)self hasChapters])
  {
    v6 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(IMAVPlayer *)self currentChapterIndex];
      v8 = [(IMAVPlayer *)self currentItem];
      v9 = [v8 timeChapters];
      v10 = [v9 count];
      v16 = 134218240;
      v17 = v7;
      v18 = 2048;
      v19 = v10;
      _os_log_impl(&dword_21B365000, v6, OS_LOG_TYPE_DEFAULT, "Current Chapter Index: %lu, Chapter Count: %lu", &v16, 0x16u);
    }

    v11 = [(IMAVPlayer *)self currentChapterIndex];
    v12 = [(IMAVPlayer *)self currentItem];
    v13 = [v12 timeChapters];
    v14 = [v13 count] - 1;

    if (v11 < v14)
    {
      [(IMAVPlayer *)self nextChapter];
      return 1;
    }
  }

  if (v4)
  {
    [(IMAVPlayer *)self nextMediaItem];
    return 1;
  }

  return 0;
}

- (BOOL)previousRemote:(BOOL)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [(IMAVPlayer *)self manifest];
  v6 = [v5 hasPrevious];

  v7 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.start.value) = 0;
    _os_log_impl(&dword_21B365000, v7, OS_LOG_TYPE_DEFAULT, "previousRemote", &buf, 2u);
  }

  memset(&buf, 0, sizeof(buf));
  [(IMAVPlayer *)self _skipToPreviousThreshold];
  range = buf;
  CMTimeRangeGetEnd(&time, &range);
  Seconds = CMTimeGetSeconds(&time);
  v9 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    [(IMAVPlayer *)self currentTime];
    v11 = v10;
    *&range.start.value = *&buf.start.value;
    range.start.epoch = buf.start.epoch;
    *&v12 = CMTimeGetSeconds(&range.start);
    LODWORD(range.start.value) = 134218496;
    *(&range.start.value + 4) = v11;
    LOWORD(range.start.flags) = 2048;
    *(&range.start.flags + 2) = Seconds;
    HIWORD(range.start.epoch) = 2048;
    range.duration.value = v12;
    _os_log_impl(&dword_21B365000, v9, OS_LOG_TYPE_DEFAULT, "previousRemote: %f, %f, %f", &range, 0x20u);
  }

  if (!a3)
  {
    [(IMAVPlayer *)self currentTime];
    if (v13 > Seconds)
    {
      *&range.start.value = *&buf.start.value;
      range.start.epoch = buf.start.epoch;
      v14 = CMTimeGetSeconds(&range.start);
      v15 = 0.0;
      if (v14 >= 0.0)
      {
        *&range.start.value = *&buf.start.value;
        range.start.epoch = buf.start.epoch;
        v15 = CMTimeGetSeconds(&range.start);
      }

      [(IMAVPlayer *)self setCurrentTime:v15];
      return 1;
    }
  }

  if ([(IMAVPlayer *)self hasChapters]&& [(IMAVPlayer *)self currentChapterIndex])
  {
    [(IMAVPlayer *)self previousChapter];
    return 1;
  }

  if (v6)
  {
    [(IMAVPlayer *)self previousMediaItem];
    return 1;
  }

  return 0;
}

- ($377CF2390FDF0262336A0B78E33E12FE)_skipToPreviousThreshold
{
  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  if ([(IMAVPlayer *)self hasChapters])
  {
    v5 = [(IMAVPlayer *)self currentChapter];
    v6 = v5;
    if (v5)
    {
      [v5 mediaTimeRange];
    }

    else
    {
      v12 = 0u;
      memset(duration, 0, sizeof(duration));
    }

    v8 = *&duration[16];
    *&retstr->var0.var0 = *duration;
    *&retstr->var0.var3 = v8;
    *&retstr->var1.var1 = v12;

    CMTimeMakeWithSeconds(duration, 4.0, retstr->var1.var1);
    *&v10.value = *&retstr->var0.var0;
    var3 = retstr->var0.var3;
  }

  else
  {
    CMTimeMakeWithSeconds(duration, 4.0, 600);
    *&v10.value = *MEMORY[0x277CC08F0];
    var3 = *(MEMORY[0x277CC08F0] + 16);
  }

  v10.epoch = var3;
  return CMTimeRangeMake(retstr, &v10, duration);
}

- (void)hdcpTimer:(id)a3
{
  v4 = objc_opt_class();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __24__IMAVPlayer_hdcpTimer___block_invoke;
  v5[3] = &unk_2782BDD90;
  v5[4] = self;
  [v4 performOnMainQueue:v5];
}

uint64_t __24__IMAVPlayer_hdcpTimer___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isPlaybackRequested])
  {
    v2 = [*(a1 + 32) player];
    v3 = [v2 currentItem];
    v4 = [v3 _isExternalProtectionRequiredForPlayback];

    if (v4)
    {
      v5 = [*(a1 + 32) player];
      v6 = [v5 _externalProtectionStatus];

      if (v6)
      {
        [*(a1 + 32) _pause];
        if (([*(a1 + 32) delegateFlags] & 2) != 0)
        {
          v7 = MEMORY[0x277CCA9B8];
          v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"HDCP error", *MEMORY[0x277CCA450], 0}];
          v9 = [v7 errorWithDomain:@"IMAVPlayer" code:-1 userInfo:v8];

          v10 = [*(a1 + 32) delegate];
          [v10 playerErrorDidOccur:*(a1 + 32) error:v9];
        }
      }
    }
  }

  result = [*(a1 + 32) shouldEnforceHDCP];
  if (result)
  {
    v12 = *(a1 + 32);

    return [v12 setShouldEnforceHDCP:1];
  }

  return result;
}

- (void)setShouldEnforceHDCP:(BOOL)a3
{
  v3 = a3;
  [(NSTimer *)self->_hdcpTimer invalidate];
  hdcpTimer = self->_hdcpTimer;
  self->_hdcpTimer = 0;

  if (v3)
  {
    v6 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_hdcpTimer_ selector:0 userInfo:0 repeats:3.0];
    v7 = self->_hdcpTimer;
    self->_hdcpTimer = v6;

    MEMORY[0x2821F96F8](v6, v7);
  }
}

- (void)setRequestedRate:(float)a3
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(IMAVPlayer *)self isScanning])
  {
    [(IMAVPlayer *)self scanRate];
    a3 = v5;
  }

  else if (self->_seekTimer && self->_seekForward)
  {
    a3 = 2.0;
  }

  v6 = [(IMAVPlayer *)self player];
  [v6 rate];
  v8 = v7;

  if (v8 != a3)
  {
    v9 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(IMAVPlayer *)self player];
      [v10 rate];
      v14 = 134218240;
      v15 = a3;
      v16 = 2048;
      v17 = v11;
      _os_log_impl(&dword_21B365000, v9, OS_LOG_TYPE_DEFAULT, "setRate: %f, old: %f", &v14, 0x16u);
    }

    v12 = [(IMAVPlayer *)self player];
    *&v13 = a3;
    [v12 setRate:v13];
  }
}

- (float)volume
{
  if (self->_fadeOutTimer || [(IMAVPlayer *)self isScanning])
  {

    [(IMAVPlayer *)self storedVolume];
  }

  else
  {
    player = self->_player;

    [(AVPlayer *)player volume];
  }

  return result;
}

- (void)setVolume:(float)a3
{
  if (a3 >= 1.0)
  {
    if (a3 <= 1.0)
    {
      v4 = a3;
    }

    else
    {
      v4 = 1.0;
    }

    *&v5 = v4;
    [(AVPlayer *)self->_player setVolume:v5];
    v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    *&v7 = v4;
    [v6 setFloat:*MEMORY[0x277D3DA48] forKey:v7];

    v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v8 setBool:1 forKey:*MEMORY[0x277D3DA40]];
  }
}

- (float)storedVolume
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:*MEMORY[0x277D3DA40]];

  if (!v3)
  {
    return 1.0;
  }

  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v4 floatForKey:*MEMORY[0x277D3DA48]];
  v6 = v5;

  return v6;
}

- (float)actualRate
{
  if ([(AVPlayer *)self->_player timeControlStatus]!= AVPlayerTimeControlStatusPlaying)
  {
    return 0.0;
  }

  player = self->_player;

  [(AVPlayer *)player rate];
  return result;
}

- (void)setPlaybackSpeed:(unint64_t)a3
{
  playbackSpeed = self->_playbackSpeed;
  self->_playbackSpeed = a3;
  v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v6 setInteger:a3 forKey:@"IMAVPlayerPlaybackSpeedUserDefaultKey"];

  if ([(IMAVPlayer *)self wasInterrupted])
  {
    [(IMAVPlayer *)self play];
  }

  else
  {
    [(IMAVPlayer *)self updateRateForCurrentState];
    if (playbackSpeed != a3 && ![(IMAVPlayer *)self state])
    {
      [(IMAVPlayer *)self updateNowPlayingDurationSnapshot];
    }
  }

  [objc_opt_class() rateForPlaybackSpeed:a3];
  v8 = v7;
  v9 = [(IMAVPlayer *)self player];
  LODWORD(v10) = v8;
  [v9 setDefaultRate:v10];

  [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_PlaybackSpeedChanged" userInfo:0];
}

+ (float)rateForPlaybackSpeed:(unint64_t)a3
{
  result = 0.0;
  if (a3 <= 5)
  {
    return flt_21B4D1880[a3];
  }

  return result;
}

+ (unint64_t)playbackSpeedForRate:(float)a3
{
  if (a3 <= 0.75)
  {
    return 1;
  }

  v3 = 4;
  v4 = 2;
  v5 = 3;
  if (a3 < 2.0)
  {
    v5 = 5;
  }

  if (a3 >= 1.75)
  {
    v4 = v5;
  }

  if (a3 >= 1.5)
  {
    v3 = v4;
  }

  if (a3 >= 1.25)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (id)avPlaybackSpeedForSpeed:(unint64_t)a3
{
  [objc_opt_class() rateForPlaybackSpeed:a3];
  v4 = v3;
  v5 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v5 setMaximumFractionDigits:2];
  [v5 setMinimumFractionDigits:0];
  [v5 setNumberStyle:1];
  LODWORD(v6) = v4;
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v8 = [v5 stringFromNumber:v7];

  v9 = MEMORY[0x277CCACA8];
  v10 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [v10 localizedStringForKey:@"MENU_PLAYBACK_SPEED" value:&stru_282CBB070 table:0];
  v12 = [v9 localizedStringWithFormat:v11, v8];

  v13 = objc_alloc(MEMORY[0x277CB85D8]);
  LODWORD(v14) = v4;
  v15 = [v13 initWithRate:v12 localizedName:v14];

  return v15;
}

+ (NSArray)availableSpeeds
{
  v10[6] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() avPlaybackSpeedForSpeed:1];
  v10[0] = v2;
  v3 = [objc_opt_class() avPlaybackSpeedForSpeed:0];
  v10[1] = v3;
  v4 = [objc_opt_class() avPlaybackSpeedForSpeed:4];
  v10[2] = v4;
  v5 = [objc_opt_class() avPlaybackSpeedForSpeed:2];
  v10[3] = v5;
  v6 = [objc_opt_class() avPlaybackSpeedForSpeed:5];
  v10[4] = v6;
  v7 = [objc_opt_class() avPlaybackSpeedForSpeed:3];
  v10[5] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:6];

  return v8;
}

+ (unint64_t)incrementPlaybackSpeed:(unint64_t)a3
{
  if (a3 > 5)
  {
    return 0;
  }

  else
  {
    return qword_21B4D1898[a3];
  }
}

+ (unint64_t)decrementPlaybackSpeed:(unint64_t)a3
{
  if (a3 > 5)
  {
    return 0;
  }

  else
  {
    return qword_21B4D18C8[a3];
  }
}

- (BOOL)play
{
  v3 = [(IMAVPlayer *)self _validatePlay];
  if (v3)
  {
    [(IMAVPlayer *)self setState:1];
  }

  return v3;
}

- (void)play:(id)a3 interruptionEvent:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4 && !self->_stateChangeInterruptionFlag)
  {
    v9 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location) = 0;
      _os_log_impl(&dword_21B365000, v9, OS_LOG_TYPE_DEFAULT, "Dropping play command because it was the result of an interruption event", &location, 2u);
    }

    v10 = objc_opt_class();
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __37__IMAVPlayer_play_interruptionEvent___block_invoke;
    v18[3] = &unk_2782BDFC8;
    v19 = v6;
    [v10 performOnMainQueue:v18];
    v8 = v19;
    goto LABEL_10;
  }

  if (![(IMAVPlayer *)self _validatePlay])
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    [(IMAVPlayer *)self setStateChangeInterruptionFlag:v4];
    v7 = objc_opt_class();
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __37__IMAVPlayer_play_interruptionEvent___block_invoke_3;
    v11[3] = &unk_2782BDFC8;
    v12 = v6;
    [v7 performOnMainQueue:v11];
    v8 = v12;
LABEL_10:

    goto LABEL_11;
  }

  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __37__IMAVPlayer_play_interruptionEvent___block_invoke_2;
  v13[3] = &unk_2782BE040;
  objc_copyWeak(&v15, &location);
  v16 = v4;
  v14 = v6;
  [(IMAVPlayer *)self setState:1 additionalUserInfo:0 completion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
LABEL_11:
}

uint64_t __37__IMAVPlayer_play_interruptionEvent___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setStateChangeInterruptionFlag:v2];

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (BOOL)_validatePlay
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(IMAVPlayer *)self currentItem];
  v4 = [v3 isPlayable];

  if (v4)
  {
    v5 = [(IMAVPlayer *)self currentItem];
    v6 = [v5 asset];
    v7 = [(IMAVPlayer *)self playerItem];
    v8 = [v7 asset];

    if (v6 != v8)
    {
      [(IMAVPlayer *)self _updatePlayerForCurrentItem];
    }

    v9 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B365000, v9, OS_LOG_TYPE_DEFAULT, "play", buf, 2u);
    }
  }

  else
  {
    v10 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [(IMAVPlayer *)self currentItem];
      v12 = [v11 title];
      v13 = [(IMAVPlayer *)self currentItem];
      v14 = &stru_282CBB070;
      if (!v13)
      {
        v14 = @" - currentItem is nil";
      }

      *buf = 138412546;
      v19 = v12;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_21B365000, v10, OS_LOG_TYPE_ERROR, "play validation failed for %@%@", buf, 0x16u);
    }

    v15 = objc_opt_class();
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __27__IMAVPlayer__validatePlay__block_invoke;
    v17[3] = &unk_2782BDD90;
    v17[4] = self;
    [v15 performOnMainQueue:v17];
    v9 = [(IMAVPlayer *)self currentItem];
    [v9 invalidateAsset];
  }

  return v4;
}

void __27__IMAVPlayer__validatePlay__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) currentItem];
  [v1 notifyUserIsNotPlayable];
}

- (BOOL)pauseWithInitiator:(unint64_t)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__IMAVPlayer_pauseWithInitiator___block_invoke;
  v4[3] = &unk_2782BE068;
  v4[4] = self;
  return [(IMAVPlayer *)self _stopWithReason:3 initiator:a3 stopBlock:v4];
}

- (BOOL)pauseWithInitiator:(unint64_t)a3 interruptionEvent:(BOOL)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__IMAVPlayer_pauseWithInitiator_interruptionEvent___block_invoke;
  v5[3] = &unk_2782BE090;
  v5[4] = self;
  v6 = a4;
  return [(IMAVPlayer *)self _stopWithReason:3 initiator:a3 stopBlock:v5];
}

- (BOOL)stopWithReason:(unint64_t)a3 initiator:(unint64_t)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__IMAVPlayer_stopWithReason_initiator___block_invoke;
  v5[3] = &unk_2782BE068;
  v5[4] = self;
  return [(IMAVPlayer *)self _stopWithReason:a3 initiator:a4 stopBlock:v5];
}

- (BOOL)_stopWithReason:(unint64_t)a3 initiator:(unint64_t)a4 stopBlock:(id)a5
{
  v8 = a5;
  v9 = [(IMAVPlayer *)self causalityObserver];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(IMAVPlayer *)self causalityObserver];
    [v11 player:self willStopWithReason:a3 initiator:a4];
  }

  v12 = v8[2](v8);
  if (v12)
  {
    v13 = [(IMAVPlayer *)self causalityObserver];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [(IMAVPlayer *)self causalityObserver];
      [v15 player:self didStopWithReason:a3 initiator:a4];
LABEL_8:

      goto LABEL_9;
    }
  }

  v16 = [(IMAVPlayer *)self causalityObserver];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v15 = [(IMAVPlayer *)self causalityObserver];
    [v15 player:self failedToStopWithReason:a3 initiator:a4];
    goto LABEL_8;
  }

LABEL_9:

  return v12;
}

- (BOOL)pause
{
  v3 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21B365000, v3, OS_LOG_TYPE_DEFAULT, "pause", v5, 2u);
  }

  [(IMAVPlayer *)self setWasInterruptedEarly:0];
  return [(IMAVPlayer *)self _pause];
}

- (BOOL)_pause
{
  if ([(IMAVPlayer *)self state]!= 2)
  {
    [(IMAVPlayer *)self setState:0];
  }

  return 1;
}

- (BOOL)_pause:(BOOL)a3
{
  if (a3 && !self->_stateChangeInterruptionFlag)
  {
    v6 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21B365000, v6, OS_LOG_TYPE_DEFAULT, "Dropping pause command because it was the result of an interruption event", v7, 2u);
    }

    result = 0;
  }

  else
  {
    result = [(IMAVPlayer *)self pause];
  }

  self->_stateChangeInterruptionFlag = a3;
  return result;
}

- (BOOL)stop
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_21B365000, v3, OS_LOG_TYPE_DEFAULT, "stop", v8, 2u);
  }

  v9 = @"IMAVPlayerNotificationKey_OldPlayheadTime";
  currentTime = self->_currentTime;
  *&currentTime = currentTime;
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:currentTime];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  [(IMAVPlayer *)self setCurrentTime:0.0];
  [(IMAVPlayer *)self setState:2 additionalUserInfo:v6 completion:0];

  return 1;
}

- (BOOL)togglePlayPause
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [(IMAVPlayer *)self isPlaybackRequested];
    _os_log_impl(&dword_21B365000, v3, OS_LOG_TYPE_DEFAULT, "togglePlayPause: %d", v5, 8u);
  }

  if ([(IMAVPlayer *)self isPlaybackRequested])
  {
    return [(IMAVPlayer *)self pause];
  }

  else
  {
    return [(IMAVPlayer *)self play];
  }
}

- (void)toggleVideoAspectScaleMode
{
  v3 = [(IMAVPlayer *)self videoScale]== 0;

  [(IMAVPlayer *)self setVideoScale:v3];
}

- (void)sleep
{
  v3 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B365000, v3, OS_LOG_TYPE_DEFAULT, "sleep", buf, 2u);
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __19__IMAVPlayer_sleep__block_invoke;
  v4[3] = &unk_2782BDD90;
  v4[4] = self;
  [(IMAVPlayer *)self fadeOutWithDuration:v4 completion:2.0];
}

- (void)fadeOutWithDuration:(double)a3 completion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a3;
    _os_log_impl(&dword_21B365000, v7, OS_LOG_TYPE_DEFAULT, "fadeOutWithDuration: %f", &buf, 0xCu);
  }

  if (self->_fadeOutTimer)
  {
    v8 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_21B365000, v8, OS_LOG_TYPE_DEFAULT, "fadeOutWithDuration: skipping!", &buf, 2u);
    }

    goto LABEL_16;
  }

  v9 = [(AVPlayer *)self->_player currentItem];
  if (v9 && [(IMAVPlayer *)self isPlaybackActive])
  {

    if (a3 > 2.22044605e-16)
    {
      v10 = [MEMORY[0x277D3DA88] player];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_21B365000, v10, OS_LOG_TYPE_DEFAULT, "fadeOutWithDuration: starting!", &buf, 2u);
      }

      v11 = 0.05 / a3;
      *&buf = 0;
      *(&buf + 1) = &buf;
      v23 = 0x2020000000;
      v24 = 0;
      v12 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
      fadeOutTimer = self->_fadeOutTimer;
      self->_fadeOutTimer = v12;

      dispatch_source_set_timer(self->_fadeOutTimer, 0, 0x2FAF080uLL, 0);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __45__IMAVPlayer_fadeOutWithDuration_completion___block_invoke;
      aBlock[3] = &unk_2782BE0B8;
      v20 = v11;
      aBlock[4] = self;
      p_buf = &buf;
      v21 = vcvtps_s32_f32(1.0 / v11);
      v18 = v6;
      v14 = _Block_copy(aBlock);
      dispatch_source_set_event_handler(self->_fadeOutTimer, v14);
      v15 = self->_fadeOutTimer;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __45__IMAVPlayer_fadeOutWithDuration_completion___block_invoke_2;
      handler[3] = &unk_2782BDD90;
      handler[4] = self;
      dispatch_source_set_cancel_handler(v15, handler);
      dispatch_resume(self->_fadeOutTimer);

      _Block_object_dispose(&buf, 8);
      goto LABEL_16;
    }
  }

  else
  {
  }

  if (v6)
  {
    v6[2](v6);
  }

LABEL_16:
}

void __45__IMAVPlayer_fadeOutWithDuration_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) player];
  [v2 volume];
  v4 = v3;

  v5 = v4 - *(a1 + 56);
  ++*(*(*(a1 + 48) + 8) + 24);
  if (v5 <= 0.00000011921 || *(*(*(a1 + 48) + 8) + 24) >= *(a1 + 60))
  {
    v7 = [*(a1 + 32) player];
    [v7 setVolume:0.0];

    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))();
    }

    v9 = *(a1 + 32);

    [v9 cancelFadeOut];
  }

  else
  {
    v10 = [*(a1 + 32) player];
    *&v6 = v5;
    [v10 setVolume:v6];
  }
}

void __45__IMAVPlayer_fadeOutWithDuration_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) player];
  LODWORD(v1) = 1.0;
  [v2 setVolume:v1];
}

- (void)cancelFadeOut
{
  fadeOutTimer = self->_fadeOutTimer;
  if (fadeOutTimer)
  {
    dispatch_source_cancel(fadeOutTimer);
    v4 = self->_fadeOutTimer;
    self->_fadeOutTimer = 0;
  }
}

- (void)setState:(unint64_t)a3 additionalUserInfo:(id)a4 completion:(id)a5
{
  v24[3] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  state = self->_state;
  if (state != a3)
  {
    v23[0] = @"IMAVPlayerNotificationKey_CurrentPlayheadTime";
    currentTime = self->_currentTime;
    *&currentTime = currentTime;
    v12 = [MEMORY[0x277CCABB0] numberWithFloat:currentTime];
    v24[0] = v12;
    v23[1] = @"IMAVPlayerNotificationKey_OldPlayerState";
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_state];
    v24[1] = v13;
    v23[2] = @"IMAVPlayerNotificationKey_NewPlayerState";
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v24[2] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
    v16 = [v15 mutableCopy];

    v17 = [(IMAVPlayer *)self currentItem];

    if (v17)
    {
      v18 = [(IMAVPlayer *)self currentItem];
      [v16 setObject:v18 forKey:@"IMAVPlayerNotificationKey_CurrentMediaItem"];
    }

    if (v8)
    {
      [v16 addEntriesFromDictionary:v8];
    }

    [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_StateWillChange" userInfo:v16];
    self->_state = a3;
    v19 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 134217984;
      v22 = a3;
      _os_log_impl(&dword_21B365000, v19, OS_LOG_TYPE_DEFAULT, "setState %lu", &v21, 0xCu);
    }

    if (*&self->_delegateFlags)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained playerStateChanged:self];
    }

    [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_StateDidChange" userInfo:v16];
    [(IMAVPlayer *)self updateRateForCurrentState:v9];
  }

  [(IMAVPlayer *)self scanWithRate:0.0];
  [(IMAVPlayer *)self setWasInterrupted:0];
  [(IMAVPlayer *)self setCurrentInterruptionTime:0.0];
  [(IMAVPlayer *)self setStateChangeInterruptionFlag:0];
  if (v9 && state == a3)
  {
    v9[2](v9, 0);
  }
}

- (unint64_t)loadState
{
  v2 = [(IMAVPlayer *)self player];
  v3 = [v2 timeControlStatus];

  v4 = 2;
  if (!v3)
  {
    v4 = 3;
  }

  if (v3 == 2)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

- (BOOL)isAtEnd
{
  [(IMAVPlayer *)self duration];
  v4 = v3;
  [(IMAVPlayer *)self currentTime];
  return v4 - v5 < 0.5;
}

- (void)setWasInterrupted:(BOOL)a3
{
  v7 = *MEMORY[0x277D85DE8];
  if (self->_wasInterrupted != a3)
  {
    v3 = a3;
    v5 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = v3;
      _os_log_impl(&dword_21B365000, v5, OS_LOG_TYPE_DEFAULT, "setWasInterrupted: %d", v6, 8u);
    }

    self->_wasInterrupted = v3;
    [(IMAVPlayer *)self updateInfoCenterPlaybackState];
  }
}

- (void)setWasInterruptedEarly:(BOOL)a3
{
  v7 = *MEMORY[0x277D85DE8];
  if (self->_wasInterruptedEarly != a3)
  {
    v3 = a3;
    v5 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = v3;
      _os_log_impl(&dword_21B365000, v5, OS_LOG_TYPE_DEFAULT, "setWasInterruptedEarly: %d", v6, 8u);
    }

    self->_wasInterruptedEarly = v3;
    [(IMAVPlayer *)self updateInfoCenterPlaybackState];
  }
}

- (void)beginBackgroundTask
{
  if (!self->_backgroundTask)
  {
    v3 = objc_opt_class();
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __33__IMAVPlayer_beginBackgroundTask__block_invoke;
    v4[3] = &unk_2782BDD90;
    v4[4] = self;
    [v3 performOnMainQueue:v4];
  }

  IMEnsureCanInitiatePlaybackInBackground();
}

void __33__IMAVPlayer_beginBackgroundTask__block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) backgroundTask])
  {
    v2 = [MEMORY[0x277D75128] sharedApplication];
    [v2 backgroundTimeRemaining];
    v4 = v3;

    if (v4 > 1.0)
    {
      v5 = [MEMORY[0x277D75128] sharedApplication];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __33__IMAVPlayer_beginBackgroundTask__block_invoke_2;
      v8[3] = &unk_2782BDD90;
      v8[4] = *(a1 + 32);
      [*(a1 + 32) setBackgroundTask:{objc_msgSend(v5, "beginBackgroundTaskWithName:expirationHandler:", @"IMAVPlayer", v8)}];

      v6 = [MEMORY[0x277D3DA88] player];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_21B365000, v6, OS_LOG_TYPE_DEFAULT, "beginBackgroundTask", v7, 2u);
      }
    }
  }
}

- (void)endBackgroundTask
{
  if (self->_backgroundTask)
  {
    v3 = objc_opt_class();
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __31__IMAVPlayer_endBackgroundTask__block_invoke;
    v6[3] = &unk_2782BDD90;
    v6[4] = self;
    [v3 performOnMainQueue:v6];
    v4 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21B365000, v4, OS_LOG_TYPE_DEFAULT, "endBackgroundTask", v5, 2u);
    }
  }
}

uint64_t __31__IMAVPlayer_endBackgroundTask__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) backgroundTask];
  if (result)
  {
    v3 = [MEMORY[0x277D75128] sharedApplication];
    [v3 endBackgroundTask:{objc_msgSend(*(a1 + 32), "backgroundTask")}];

    v4 = *(a1 + 32);

    return [v4 setBackgroundTask:0];
  }

  return result;
}

- (id)stillFrameAt:(double)a3 maxSize:(CGSize)a4 scale:(double)a5
{
  height = a4.height;
  width = a4.width;
  v9 = MEMORY[0x277CE6408];
  v10 = [(IMAVPlayer *)self currentItem];
  v11 = [v10 asset];
  v12 = [v9 assetImageGeneratorWithAsset:v11];

  if (a5 < 1.0)
  {
    v13 = [MEMORY[0x277D759A0] mainScreen];
    [v13 scale];
    a5 = v14;
  }

  [v12 setMaximumSize:{width * a5, height * a5}];
  v28 = **&MEMORY[0x277CC08B0];
  v26 = *&v28.value;
  epoch = v28.epoch;
  [v12 setRequestedTimeToleranceBefore:&v28];
  *&v28.value = v26;
  v28.epoch = epoch;
  [v12 setRequestedTimeToleranceAfter:&v28];
  CMTimeMakeWithSeconds(&v28, a3, 1000000000);
  v27 = 0;
  v16 = [v12 copyCGImageAtTime:&v28 actualTime:0 error:&v27];
  v17 = v27;
  v18 = v17;
  if (v17)
  {
    v19 = [v17 localizedDescription];
    NSLog(&cfstr_ImavplayerStil.isa, v19);

    v20 = 0;
  }

  else
  {
    v21 = MEMORY[0x277D755B8];
    v22 = [MEMORY[0x277D759A0] mainScreen];
    [v22 scale];
    v24 = v23;

    v20 = [v21 imageWithCGImage:v16 scale:0 orientation:v24];
  }

  CGImageRelease(v16);

  return v20;
}

- (BOOL)airplayVideoActive
{
  v3 = [(AVPlayer *)self->_player isExternalPlaybackActive];
  if (v3)
  {
    LOBYTE(v3) = [(AVPlayer *)self->_player externalPlaybackType]== 1;
  }

  return v3;
}

- (void)handlePlayerInterruption:(id)a3
{
  v6 = *MEMORY[0x277D85DE8];
  [(IMAVPlayer *)self setWasInterruptedEarly:[(IMAVPlayer *)self isPlaybackRequested]];
  v4 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [(IMAVPlayer *)self wasInterruptedEarly];
    _os_log_impl(&dword_21B365000, v4, OS_LOG_TYPE_DEFAULT, "didHandlePlayerInterruption, wasInterruptedEarly %d", v5, 8u);
  }
}

- (void)handleAudioSessionInterruption:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277CB8080]];
  v6 = [v5 unsignedIntegerValue];

  v7 = [v4 objectForKey:*MEMORY[0x277CB8070]];
  v8 = [v7 unsignedIntegerValue];

  v9 = [(IMAVPlayer *)self isPlaybackRequested];
  v10 = [v4 objectForKey:*MEMORY[0x277CB8078]];
  v11 = [v10 unsignedIntegerValue];

  if (v11 == 1)
  {
    v12 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 67109632;
      *v28 = v9;
      *&v28[4] = 1024;
      *&v28[6] = [(IMAVPlayer *)self wasInterrupted];
      *v29 = 1024;
      *&v29[2] = [(IMAVPlayer *)self wasInterruptedEarly];
      _os_log_impl(&dword_21B365000, v12, OS_LOG_TYPE_DEFAULT, "ignoring wasSuspended interruption, wasPlaying: %d, wasInterrupted: %d, wasInterruptedEarly: %d", &v27, 0x14u);
    }
  }

  else if (v6)
  {
    if (v6 == 1)
    {
      v13 = [MEMORY[0x277D3DA88] player];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 67109376;
        *v28 = v9;
        *&v28[4] = 1024;
        *&v28[6] = [(IMAVPlayer *)self wasInterruptedEarly];
        _os_log_impl(&dword_21B365000, v13, OS_LOG_TYPE_DEFAULT, "handleInterruption began, wasPlaying %d, wasInterruptedEarly %d", &v27, 0xEu);
      }

      [(IMAVPlayer *)self _pause];
      v14 = v9 || [(IMAVPlayer *)self wasInterruptedEarly];
      [(IMAVPlayer *)self setWasInterrupted:v14];
      [(IMAVPlayer *)self currentTime];
      [(IMAVPlayer *)self setCurrentInterruptionTime:?];
      [(IMAVPlayer *)self setWasInterruptedEarly:0];
    }
  }

  else
  {
    v15 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 134218496;
      *v28 = v8;
      *&v28[8] = 1024;
      *v29 = [(IMAVPlayer *)self wasInterrupted];
      *&v29[4] = 1024;
      v30 = v8 & 1;
      _os_log_impl(&dword_21B365000, v15, OS_LOG_TYPE_DEFAULT, "handleInterruption ended: %lu wasInterrupted: %d resumable: %d", &v27, 0x18u);
    }

    if ((v8 & 1) != 0 && [(IMAVPlayer *)self wasInterrupted])
    {
      [(IMAVPlayer *)self currentTime];
      v17 = v16;
      [(IMAVPlayer *)self currentInterruptionTime];
      if (v17 == v18)
      {
        [(IMAVPlayer *)self currentTime];
        if (v19 >= 3.0)
        {
          [(IMAVPlayer *)self currentTime];
          v21 = v20;
          [(IMAVPlayer *)self previousInterruptionTime];
          if (v21 < v22 + -3.0 || ([(IMAVPlayer *)self currentTime], v24 = v23, [(IMAVPlayer *)self previousInterruptionTime], v24 > v25 + 3.0))
          {
            [(IMAVPlayer *)self currentTime];
            [(IMAVPlayer *)self setPreviousInterruptionTime:?];
            [(IMAVPlayer *)self currentTime];
            [(IMAVPlayer *)self setCurrentTime:v26 + -3.0];
          }
        }
      }

      [(IMAVPlayer *)self play];
    }

    [(IMAVPlayer *)self setWasInterrupted:0];
    [(IMAVPlayer *)self setCurrentInterruptionTime:0.0];
  }
}

- (void)onRouteChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277CB8220]];

  if ([v5 integerValue] == 2)
  {
    v6 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B365000, v6, OS_LOG_TYPE_DEFAULT, "route change: old device unavailable", buf, 2u);
    }

    v7 = [(IMAVPlayer *)self wasInterrupted];
    v8 = [MEMORY[0x277D3DA88] player];
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        *buf = 0;
        _os_log_impl(&dword_21B365000, v8, OS_LOG_TYPE_DEFAULT, "next endInterruption should NOT be resumable", buf, 2u);
      }
    }

    else
    {
      if (v9)
      {
        *buf = 0;
        _os_log_impl(&dword_21B365000, v8, OS_LOG_TYPE_DEFAULT, "pausing: old device is unavailable", buf, 2u);
      }

      v10 = objc_opt_class();
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __28__IMAVPlayer_onRouteChange___block_invoke;
      v11[3] = &unk_2782BDD90;
      v11[4] = self;
      [v10 performOnMainQueue:v11];
    }
  }
}

- (void)_createPlayer
{
  v3 = objc_alloc_init(MEMORY[0x277CE6598]);
  [(IMAVPlayer *)self setPlayer:v3];

  v4 = [(IMAVPlayer *)self audioSession];

  if (v4)
  {
    v5 = [(IMAVPlayer *)self audioSession];
    v6 = [(IMAVPlayer *)self player];
    [v6 setAudioSession:v5];
  }

  v7 = [(IMAVPlayer *)self player];
  [v7 setActionAtItemEnd:2];
}

- (void)setPlayer:(id)a3
{
  v5 = a3;
  if (self->_player != v5)
  {
    v7 = v5;
    [(IMAVPlayer *)self willChangeValueForKey:@"player"];
    if (self->_player)
    {
      [(IMAVPlayer *)self stopObservingPlayer:?];
      [(IMAVPlayer *)self setPlayerItem:0];
    }

    [(IMAVPlayer *)self removePeriodicTimeObservers];
    [(IMAVPlayer *)self clearTimeObservers];
    objc_storeStrong(&self->_player, a3);
    player = self->_player;
    if (player)
    {
      [(AVPlayer *)player setAppliesMediaSelectionCriteriaAutomatically:1];
      [(AVPlayer *)self->_player setAudiovisualBackgroundPlaybackPolicy:3];
      if ([MEMORY[0x277D3DB60] platformSupportsVideo])
      {
        [(AVPlayer *)self->_player addObserver:self forKeyPath:@"externalPlaybackActive" options:4 context:0];
      }

      [(AVPlayer *)self->_player addObserver:self forKeyPath:@"currentItem" options:6 context:0];
      [(AVPlayer *)self->_player addObserver:self forKeyPath:@"rate" options:6 context:0];
      [(AVPlayer *)self->_player addObserver:self forKeyPath:@"timeControlStatus" options:6 context:0];
      [(AVPlayer *)self->_player addObserver:self forKeyPath:@"volume" options:6 context:0];
    }

    [(IMAVPlayer *)self didChangeValueForKey:@"player"];
    v5 = v7;
  }
}

- (void)stopObservingPlayerItem:(id)a3
{
  v4 = a3;
  [v4 removeObserver:self forKeyPath:@"status"];
  [v4 removeObserver:self forKeyPath:@"playbackLikelyToKeepUp"];
  [v4 removeObserver:self forKeyPath:@"playbackBufferEmpty"];
  [v4 removeObserver:self forKeyPath:@"loadedTimeRanges"];
  [v4 removeObserver:self forKeyPath:@"presentationSize"];
}

- (void)stopObservingPlayer:(id)a3
{
  v4 = a3;
  [v4 removeObserver:self forKeyPath:@"currentItem" context:0];
  [v4 removeObserver:self forKeyPath:@"rate" context:0];
  [v4 removeObserver:self forKeyPath:@"timeControlStatus" context:0];
  [v4 removeObserver:self forKeyPath:@"volume" context:0];
  if ([MEMORY[0x277D3DB60] platformSupportsVideo])
  {
    [v4 removeObserver:self forKeyPath:@"externalPlaybackActive" context:0];
  }
}

- (void)resetPlayer:(id)a3
{
  v4 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_21B365000, v4, OS_LOG_TYPE_ERROR, "resetPlayer!", buf, 2u);
  }

  v5 = objc_opt_class();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __26__IMAVPlayer_resetPlayer___block_invoke;
  v6[3] = &unk_2782BDD90;
  v6[4] = self;
  [v5 performOnMainQueue:v6];
}

uint64_t __26__IMAVPlayer_resetPlayer___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _postNotificationName:@"IMAVPlayerNotification_MediaServicesWillReset" userInfo:0];
  [*(a1 + 32) setPlayer:0];
  v2 = [*(a1 + 32) currentItem];
  [v2 reset];

  [*(a1 + 32) _pause];
  [*(a1 + 32) _createPlayer];
  [*(a1 + 32) _updatePlayerForCurrentItem];
  [*(a1 + 32) currentTime];
  [*(a1 + 32) setCurrentTime:v3 + -1.0];
  v4 = *(a1 + 32);

  return [v4 _postNotificationName:@"IMAVPlayerNotification_MediaServicesDidReset" userInfo:0];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v107[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:@"currentItem"])
  {
    v13 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(AVPlayer *)self->_player currentItem];
      v15 = [(IMAVPlayer *)self currentItem];
      v16 = [v15 title];
      *buf = 138412546;
      v101 = v14;
      v102 = 2112;
      v103 = v16;
      _os_log_impl(&dword_21B365000, v13, OS_LOG_TYPE_DEFAULT, "currentItem changed: %@. Title: %@", buf, 0x16u);
    }

    v17 = [v12 objectForKey:*MEMORY[0x277CCA300]];
    if (v17)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(IMAVPlayer *)self stopObservingPlayerItem:v17];
      }
    }

    if ((*&self->_delegateFlags & 0x40) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained playerCurrentItemChanged:self];
    }

    v19 = [(AVPlayer *)self->_player currentItem];

    if (v19)
    {
      v20 = objc_opt_class();
      v95[0] = MEMORY[0x277D85DD0];
      v95[1] = 3221225472;
      v95[2] = __61__IMAVPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v95[3] = &unk_2782BDD90;
      v95[4] = self;
      [v20 performOnMainQueue:v95];
      v21 = [(AVPlayer *)self->_player currentItem];
      [v21 addObserver:self forKeyPath:@"status" options:6 context:0];

      v22 = [(AVPlayer *)self->_player currentItem];
      [v22 addObserver:self forKeyPath:@"playbackLikelyToKeepUp" options:0 context:0];

      v23 = [(AVPlayer *)self->_player currentItem];
      [v23 addObserver:self forKeyPath:@"playbackBufferEmpty" options:0 context:0];

      v24 = [(AVPlayer *)self->_player currentItem];
      [v24 addObserver:self forKeyPath:@"loadedTimeRanges" options:0 context:0];

      v25 = [(AVPlayer *)self->_player currentItem];
      [v25 addObserver:self forKeyPath:@"presentationSize" options:0 context:0];

      v26 = [(AVPlayer *)self->_player currentItem];
      [v26 willChangeValueForKey:@"status"];

      v27 = [(AVPlayer *)self->_player currentItem];
      [v27 didChangeValueForKey:@"status"];

      v28 = [(AVPlayer *)self->_player currentItem];
      [v28 willChangeValueForKey:@"playbackLikelyToKeepUp"];

      v29 = [(AVPlayer *)self->_player currentItem];
      [v29 didChangeValueForKey:@"playbackLikelyToKeepUp"];

      v30 = [(AVPlayer *)self->_player currentItem];
      [v30 willChangeValueForKey:@"playbackBufferEmpty"];

      v31 = [(AVPlayer *)self->_player currentItem];
      [v31 didChangeValueForKey:@"playbackBufferEmpty"];

      v32 = [(AVPlayer *)self->_player currentItem];
      [v32 willChangeValueForKey:@"loadedTimeRanges"];

      v33 = [(AVPlayer *)self->_player currentItem];
      [v33 didChangeValueForKey:@"loadedTimeRanges"];

      v34 = [(AVPlayer *)self->_player currentItem];
      [v34 willChangeValueForKey:@"presentationSize"];

      v35 = [(AVPlayer *)self->_player currentItem];
      [v35 didChangeValueForKey:@"presentationSize"];

      [(IMPlayerItem *)self->_currentItem duration];
      [(IMAVPlayer *)self setDurationBeforeItemLoaded:?];
      v36 = [(AVPlayer *)self->_player currentItem];
      v37 = [v36 asset];
      v94[0] = MEMORY[0x277D85DD0];
      v94[1] = 3221225472;
      v94[2] = __61__IMAVPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
      v94[3] = &unk_2782BDD90;
      v94[4] = self;
      [v37 loadValuesAsynchronouslyForKeys:&unk_282CCBC28 completionHandler:v94];
    }

    goto LABEL_21;
  }

  if ([v10 isEqualToString:@"rate"])
  {
    v38 = [v12 objectForKey:*MEMORY[0x277CCA300]];
    v39 = v38;
    if (v38)
    {
      v40 = [v38 longValue];
      [(AVPlayer *)self->_player rate];
      if (v40 == v41)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_19;
  }

  if ([v10 isEqualToString:@"timeControlStatus"])
  {
    v42 = [v12 objectForKey:*MEMORY[0x277CCA300]];
    v39 = v42;
    if (v42)
    {
      v43 = [v42 longValue];
      if (v43 == [(AVPlayer *)self->_player timeControlStatus])
      {
        goto LABEL_20;
      }
    }

LABEL_19:
    [(IMAVPlayer *)self _updateForCurrentRateAndTimeControlStatus];
LABEL_20:

    goto LABEL_21;
  }

  if ([v10 isEqualToString:@"volume"])
  {
    if (self->_fadeOutTimer || [(IMAVPlayer *)self isScanning])
    {
      goto LABEL_21;
    }

    v44 = @"IMAVPlayerNotification_PlayerVolumeDidChange";
LABEL_26:
    [(IMAVPlayer *)self _postNotificationName:v44 userInfo:0];
    goto LABEL_21;
  }

  if ([v10 isEqualToString:@"status"])
  {
    v45 = [(AVPlayer *)self->_player currentItem];

    if (!v45)
    {
      goto LABEL_21;
    }

    v46 = *MEMORY[0x277CCA300];
    v47 = [v12 objectForKey:*MEMORY[0x277CCA300]];
    v39 = v47;
    if (v47)
    {
      v48 = [v47 longValue];
      v49 = [(AVPlayer *)self->_player currentItem];
      v50 = [v49 status];

      if (v48 == v50)
      {
        v51 = [MEMORY[0x277D3DA88] player];
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v101 = [v39 longValue];
          _os_log_impl(&dword_21B365000, v51, OS_LOG_TYPE_DEFAULT, "ignoring item status KVO because it is unchanged: %ld", buf, 0xCu);
        }

        goto LABEL_74;
      }
    }

    v90 = v11;
    v53 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = [v39 longValue];
      v55 = [(AVPlayer *)self->_player currentItem];
      *buf = 134218240;
      v101 = v54;
      v102 = 2048;
      v103 = [v55 status];
      _os_log_impl(&dword_21B365000, v53, OS_LOG_TYPE_DEFAULT, "item status changed from: %ld to: %ld", buf, 0x16u);
    }

    if (v39)
    {
      v106 = v46;
      v107[0] = v39;
      v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:&v106 count:1];
    }

    else
    {
      v56 = 0;
    }

    [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_MediaItemStatusDidChange" userInfo:v56];
    v69 = [(AVPlayer *)self->_player currentItem];
    v70 = [v69 status];

    if (v70 == 1)
    {
      v88 = [(IMAVPlayer *)self currentItem];

      if (v88)
      {
        v96 = @"IMAVPlayerNotificationKey_CurrentMediaItem";
        v72 = [(IMAVPlayer *)self currentItem];
        v97 = v72;
        v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
        [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_PlayerItemReadyToPlay" userInfo:v86];
        goto LABEL_71;
      }
    }

    else if (v70 == 2)
    {
      v71 = [(AVPlayer *)self->_player currentItem];
      v72 = [v71 error];

      v89 = [(IMAVPlayer *)self isPlaybackRequested];
      if ((*&self->_delegateFlags & 2) != 0)
      {
        v73 = objc_loadWeakRetained(&self->_delegate);
        [v73 playerErrorDidOccur:self error:v72];
      }

      v74 = [MEMORY[0x277D3DA88] player];
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        v75 = [v72 code];
        v76 = [v72 domain];
        v77 = v76;
        v78 = @"no";
        *buf = 134218498;
        v101 = v75;
        v102 = 2112;
        if (v89)
        {
          v78 = @"yes";
        }

        v103 = v76;
        v104 = 2112;
        v105 = v78;
        _os_log_impl(&dword_21B365000, v74, OS_LOG_TYPE_ERROR, "Player error encountered, code %ld domain: %@, was playing: %@. Invalidating asset.", buf, 0x20u);
      }

      if (v89)
      {
        v79 = [(IMAVPlayer *)self playbackErrorFallback];
        if (v79)
        {
          v80 = v79;
          v81 = [(IMAVPlayer *)self playbackErrorFallback];
          v82 = [(IMAVPlayer *)self currentItem];
          v83 = (v81)[2](v81, v82, v72);

          if (v83)
          {
            goto LABEL_72;
          }
        }
      }

      if ([v72 code] != -11819)
      {
        v84 = objc_opt_class();
        v93[0] = MEMORY[0x277D85DD0];
        v93[1] = 3221225472;
        v93[2] = __61__IMAVPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_245;
        v93[3] = &unk_2782BDD90;
        v93[4] = self;
        [v84 performOnMainQueue:v93];
      }

      v85 = [(IMAVPlayer *)self currentItem];
      [v85 cleanupAfterError];

      v99[0] = v72;
      v98[0] = @"IMAVPlayerNotificationKey_Error";
      v98[1] = @"IMAVPlayerNotificationKey_PlaybackInterrupted";
      v86 = [MEMORY[0x277CCABB0] numberWithBool:v89];
      v99[1] = v86;
      v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:2];
      [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_ErrorDidOccur" userInfo:v87];

LABEL_71:
LABEL_72:
    }

    v11 = v90;
    goto LABEL_21;
  }

  if ([v10 isEqualToString:@"externalPlaybackActive"] && objc_msgSend(MEMORY[0x277D3DB60], "platformSupportsVideo"))
  {
    [(IMAVPlayer *)self willChangeValueForKey:@"airPlayVideoActive"];
    [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_AirplayActiveDidChange" userInfo:0];
    [(IMAVPlayer *)self didChangeValueForKey:@"airPlayVideoActive"];
    goto LABEL_21;
  }

  if ([v10 isEqualToString:@"playbackBufferEmpty"])
  {
    [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_BufferEmptyChanged" userInfo:0];
    v39 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v52 = [(AVPlayer *)self->_player currentItem];
      *buf = 67109120;
      LODWORD(v101) = [v52 isPlaybackBufferEmpty];
      _os_log_impl(&dword_21B365000, v39, OS_LOG_TYPE_DEFAULT, "playbackBufferEmpty: %d", buf, 8u);
    }

    goto LABEL_20;
  }

  if ([v10 isEqualToString:@"playbackLikelyToKeepUp"])
  {
    v57 = [(AVPlayer *)self->_player currentItem];
    [v57 isPlaybackLikelyToKeepUp];

    v39 = [(IMAVPlayer *)self currentItem];
    v51 = [(IMAVPlayer *)self currentItem];
    [v51 isVideo];
    kdebug_trace();
LABEL_74:

    goto LABEL_20;
  }

  if (![v10 isEqualToString:@"loadedTimeRanges"])
  {
    if (![v10 isEqualToString:@"presentationSize"])
    {
      v91.receiver = self;
      v91.super_class = IMAVPlayer;
      [(IMAVPlayer *)&v91 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
      goto LABEL_21;
    }

    v44 = @"IMAVPlayerNotification_MediaItemPresentationSizeDidChange";
    goto LABEL_26;
  }

  v58 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21B365000, v58, OS_LOG_TYPE_INFO, "loadedTimeRanges did change", buf, 2u);
  }

  [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_LoadedDurationDidChange" userInfo:0];
  if ((*&self->_delegateFlags & 0x200) != 0)
  {
    v59 = [(IMAVPlayer *)self delegate];
    [v59 playerLoadedDurationChanged:self];
  }

  if ([(IMAVPlayer *)self loadState]== 2)
  {
    v60 = [(IMAVPlayer *)self currentItem];
    [v60 playhead];
    v62 = floor(v61);

    v63 = [(IMAVPlayer *)self player];
    v64 = [v63 currentItem];
    v65 = [v64 loadedTimeRanges];
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = __61__IMAVPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_249;
    v92[3] = &__block_descriptor_40_e24_B32__0__NSValue_8Q16_B24l;
    *&v92[4] = v62;
    v66 = [v65 indexOfObjectPassingTest:v92];

    if (v66 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(IMAVPlayer *)self requestedRate];
      if (v67 > 0.0)
      {
        v68 = [(IMAVPlayer *)self player];
        [(IMAVPlayer *)self requestedRate];
        [v68 playImmediatelyAtRate:?];
      }
    }
  }

LABEL_21:
}

uint64_t __61__IMAVPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_249(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  memset(v16, 0, 24);
  if (v3)
  {
    [v3 CMTimeRangeValue];
  }

  *&time.value = 0u;
  time.epoch = *&v16[0];
  v5 = floor(CMTimeGetSeconds(&time));
  *&time.value = *(v16 + 8);
  time.epoch = 0;
  v6 = floor(CMTimeGetSeconds(&time));
  v7 = *(a1 + 32);
  v8 = v7 <= v5 + v6;
  if (v5 + v6 - v7 <= 30.0)
  {
    v8 = 0;
  }

  v9 = (v7 >= v5) & v8;
  v10 = [MEMORY[0x277D3DA88] player];
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9 == 1)
  {
    if (v11)
    {
      v12 = *(a1 + 32);
      LODWORD(time.value) = 134218752;
      *(&time.value + 4) = v12;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = v5;
      HIWORD(time.epoch) = 2048;
      v18 = v6;
      v19 = 2048;
      v20 = v5 + v6;
      v13 = "Found resumable time range: playhead %f, start %f, duration %f, end %f";
LABEL_10:
      _os_log_impl(&dword_21B365000, v10, OS_LOG_TYPE_DEFAULT, v13, &time, 0x2Au);
    }
  }

  else if (v11)
  {
    v14 = *(a1 + 32);
    LODWORD(time.value) = 134218752;
    *(&time.value + 4) = v14;
    LOWORD(time.flags) = 2048;
    *(&time.flags + 2) = v5;
    HIWORD(time.epoch) = 2048;
    v18 = v6;
    v19 = 2048;
    v20 = v5 + v6;
    v13 = "Time range not resumable: playhead %f, start %f, duration %f, end %f";
    goto LABEL_10;
  }

  return v9;
}

- (void)_durationAvailable
{
  v3 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21B365000, v3, OS_LOG_TYPE_DEFAULT, "_durationAvailable", v7, 2u);
  }

  delegateFlags = self->_delegateFlags;
  if ((delegateFlags & 4) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained playerMediaTypeAvailable:self];

    delegateFlags = self->_delegateFlags;
  }

  if ((delegateFlags & 8) != 0)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 playerDurationAvailable:self];
  }

  [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_DurationAvailable" userInfo:0];
  [(IMAVPlayer *)self sendDurationLoadedCoreAnalyticsEvents];
}

- (void)sendDurationLoadedCoreAnalyticsEvents
{
  v19 = objc_opt_new();
  v3 = [(IMAVPlayer *)self currentItem];
  v4 = [v3 paidSubscriptionActive];

  if ((v4 & 1) == 0)
  {
    v5 = MEMORY[0x277D3DB58];
    v6 = [(IMAVPlayer *)self currentItem];
    v7 = [v6 episodeStoreId];
    v8 = [(IMAVPlayer *)self currentItem];
    [v8 duration];
    v9 = [v5 episodeDurationComparisonWithEpisodeAdamId:v7 duration:?];
    [v19 sendEvent:v9];
  }

  v10 = [(IMAVPlayer *)self currentItem];
  [v10 playhead];
  if (v11 == 0.0)
  {
    v12 = [(IMAVPlayer *)self currentItem];
    v13 = [v12 playCount];

    if (v13)
    {
      goto LABEL_7;
    }

    v14 = MEMORY[0x277D3DB58];
    [(IMAVPlayer *)self durationBeforeItemLoaded];
    v16 = v15;
    v10 = [(IMAVPlayer *)self currentItem];
    [v10 duration];
    v18 = [v14 episodeDurationComparisonWithMapiProvidedDuration:v16 playerItemDuration:v17];
    [v19 sendEvent:v18];
  }

LABEL_7:
}

- (void)playerItemDidReachEnd:(id)a3
{
  player = self->_player;
  v5 = a3;
  v6 = [(AVPlayer *)player currentItem];
  v7 = [v5 object];

  if (v6 == v7)
  {
    if (self->_loops)
    {
      [(IMAVPlayer *)self setCurrentTime:0.0];
      loops = self->_loops;
      v9 = __OFSUB__(loops, 1);
      v10 = loops - 1;
      if (v10 < 0 == v9)
      {
        self->_loops = v10;
      }
    }

    else if (![(IMAVPlayer *)self scrubbing])
    {

      [(IMAVPlayer *)self sendItemEndedNotification];
    }
  }
}

- (void)sendItemEndedNotification
{
  v3 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_21B365000, v3, OS_LOG_TYPE_DEFAULT, "sendItemEndedNotification", v14, 2u);
  }

  [(IMAVPlayer *)self duration];
  v5 = v4;
  [(IMAVPlayer *)self duration];
  [(IMAVPlayer *)self sendPeriodicTimeEvent:1 duration:v5 finished:v6];
  if ((*&self->_delegateFlags & 0x100) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained playerCurrentItemEnded:self];
  }

  v8 = [(IMAVPlayer *)self causalityObserver];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(IMAVPlayer *)self causalityObserver];
    [v10 player:self willStopWithReason:13 initiator:2];
  }

  [(IMAVPlayer *)self nextMediaItem];
  v11 = [(IMAVPlayer *)self causalityObserver];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(IMAVPlayer *)self causalityObserver];
    [v13 player:self didStopWithReason:13 initiator:2];
  }
}

- (void)_failedToPlayToEndNotification:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_21B365000, v5, OS_LOG_TYPE_DEFAULT, "_failedToPlayToEndNotification", v12, 2u);
  }

  v6 = [v4 object];
  v7 = [(IMAVPlayer *)self playerItem];

  if (v6 == v7)
  {
    v8 = [v4 userInfo];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CE60C8]];

    if ([v9 code] != -11870 && -[IMAVPlayer isPlaybackRequested](self, "isPlaybackRequested"))
    {
      [(IMAVPlayer *)self pause];
      [(IMAVPlayer *)self nextMediaItem];
    }

    v10 = [(IMAVPlayer *)self currentItem];
    [v10 cleanupAfterError];

    v13 = @"IMAVPlayerNotificationKey_Error";
    v14[0] = v9;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_FailedToPlayToEndTime" userInfo:v11];
  }
}

- (void)_postNotificationName:(id)a3 userInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__IMAVPlayer__postNotificationName_userInfo___block_invoke;
  v11[3] = &unk_2782BDDB8;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performOnMainQueue:v11];
}

void __45__IMAVPlayer__postNotificationName_userInfo___block_invoke(void *a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:a1[4] object:a1[5] userInfo:a1[6]];
}

- (void)setCurrentTime:(double)a3 fromMediaRemote:(BOOL)a4
{
  v4 = a4;
  v26 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v23 = a3;
    v24 = 1024;
    v25 = v4;
    _os_log_impl(&dword_21B365000, v7, OS_LOG_TYPE_DEFAULT, "setCurrentTime %f fromMediaRemote %d", buf, 0x12u);
  }

  v8 = 0.0;
  if (a3 >= 0.0)
  {
    if ([(IMAVPlayer *)self isDurationReady])
    {
      [(IMAVPlayer *)self duration];
      v8 = a3;
      if (v9 < a3)
      {
        [(IMAVPlayer *)self duration];
        v8 = v10;
      }
    }

    else
    {
      v8 = a3;
    }
  }

  v20[0] = @"IMAVPlayerNotificationKey_OldPlayheadTime";
  currentTime = self->_currentTime;
  *&currentTime = currentTime;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:{currentTime, @"IMAVPlayerNotificationKey_OldPlayheadTime"}];
  v21[0] = v12;
  v20[1] = @"IMAVPlayerNotificationKey_NewPlayheadTime";
  *&v13 = v8;
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  v21[1] = v14;
  v20[2] = @"IMAVPlayerNotificationKey_FromMediaRemote";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  v21[2] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v17 = [v16 mutableCopy];

  v18 = [(IMAVPlayer *)self currentItem];

  if (v18)
  {
    v19 = [(IMAVPlayer *)self currentItem];
    [v17 setObject:v19 forKey:@"IMAVPlayerNotificationKey_CurrentMediaItem"];
  }

  [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_PlayerHeadWillChange" userInfo:v17];
  self->_currentTime = v8;
  if (![(IMAVPlayer *)self isUpdatingCurrentTime])
  {
    [(IMAVPlayer *)self setIsUpdatingCurrentTime:1];
    [(IMAVPlayer *)self _updatePlayerToCurrentTime:0];
  }

  [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_PlayerHeadDidChange" userInfo:v17];
}

- (void)_updatePlayerToCurrentTime:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMAVPlayer *)self playerItem];

  currentTime = self->_currentTime;
  if (v5)
  {
    v7 = [(IMAVPlayer *)self playerItem];
    v8 = v7;
    if (v7)
    {
      [v7 currentTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);

    if (vabdd_f64(Seconds, currentTime) <= 0.5)
    {
      [(IMAVPlayer *)self _updatePlayerTimeCompleted:v4 completion:currentTime];
    }

    else
    {
      v10 = [MEMORY[0x277D3DA88] player];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(time.value) = 134218240;
        *(&time.value + 4) = currentTime;
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = Seconds;
        _os_log_impl(&dword_21B365000, v10, OS_LOG_TYPE_DEFAULT, "_updatePlayerToTime: %f currentTime: %f", &time, 0x16u);
      }

      v11 = [(IMAVPlayer *)self playerItem];
      CMTimeMakeWithSeconds(&time, currentTime, 1000000000);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __41__IMAVPlayer__updatePlayerToCurrentTime___block_invoke;
      v16[3] = &unk_2782BE100;
      v18 = currentTime;
      v16[4] = self;
      v17 = v4;
      v14 = *MEMORY[0x277CC08F0];
      v15 = *(MEMORY[0x277CC08F0] + 16);
      v12 = v14;
      v13 = v15;
      [v11 seekToTime:&time toleranceBefore:&v14 toleranceAfter:&v12 completionHandler:v16];
    }
  }

  else
  {
    [(IMAVPlayer *)self _updatePlayerTimeCompleted:v4 completion:self->_currentTime];
    [(IMAVPlayer *)self updateNowPlayingDurationSnapshot];
  }
}

void __41__IMAVPlayer__updatePlayerToCurrentTime___block_invoke(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    v6 = 134218240;
    v7 = v5;
    v8 = 1024;
    v9 = a2;
    _os_log_impl(&dword_21B365000, v4, OS_LOG_TYPE_DEFAULT, "_updatePlayerToTime: %f Finished %d", &v6, 0x12u);
  }

  if (a2)
  {
    [*(a1 + 32) _updatePlayerTimeCompleted:*(a1 + 40) completion:*(a1 + 48)];
    [*(a1 + 32) updateNowPlayingDurationSnapshot];
  }
}

- (void)_updatePlayerTimeCompleted:(double)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    currentTime = self->_currentTime;
    v9 = [(IMAVPlayer *)self playerItem];
    v10 = v9;
    if (v9)
    {
      [v9 currentTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
    LODWORD(time.value) = 134218496;
    *(&time.value + 4) = a3;
    LOWORD(time.flags) = 2048;
    *(&time.flags + 2) = currentTime;
    HIWORD(time.epoch) = 2048;
    v17 = Seconds;
    _os_log_impl(&dword_21B365000, v7, OS_LOG_TYPE_DEFAULT, "_updatePlayerTimeCompleted set time %f, currentTime %f, playerTime: %f", &time, 0x20u);
  }

  if (vabdd_f64(self->_currentTime, a3) >= 1.0)
  {
    v13 = dispatch_time(0, 500000000);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __52__IMAVPlayer__updatePlayerTimeCompleted_completion___block_invoke;
    v14[3] = &unk_2782BDFA0;
    v14[4] = self;
    v15 = v6;
    dispatch_after(v13, MEMORY[0x277D85CD0], v14);
  }

  else
  {
    [(IMAVPlayer *)self setIsUpdatingCurrentTime:0];
    [(IMAVPlayer *)self forceTriggerTimeObserverAt:a3];
    if (![(IMAVPlayer *)self isPlaybackActive])
    {
      [(IMAVPlayer *)self duration];
      [(IMAVPlayer *)self sendPeriodicTimeEvent:0 duration:a3 finished:v12];
    }

    if (v6)
    {
      v6[2](v6);
    }
  }
}

- (void)startSeek:(BOOL)a3
{
  if (a3)
  {
    v5 = 2.0;
  }

  else
  {
    v5 = 1.0;
  }

  if (![(IMAVPlayer *)self isSeeking]|| ([(IMAVPlayer *)self requestedRate], v5 != v6))
  {
    [(IMAVPlayer *)self cancelFadeOut];
    [(IMAVPlayer *)self endSeek];
    self->_seekForward = a3;
    v7 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_onSeekTimer_ selector:0 userInfo:1 repeats:0.8];
    seekTimer = self->_seekTimer;
    self->_seekTimer = v7;

    *&v9 = v5;
    [(IMAVPlayer *)self setRequestedRate:v9];

    [(IMAVPlayer *)self updateNowPlayingDurationSnapshot];
  }
}

- (void)cancelSeek
{
  [(NSTimer *)self->_seekTimer invalidate];
  seekTimer = self->_seekTimer;
  self->_seekTimer = 0;
}

- (void)endSeek
{
  [(IMAVPlayer *)self cancelSeek];
  [(IMAVPlayer *)self updateRateForCurrentState];

  [(IMAVPlayer *)self updateNowPlayingDurationSnapshot];
}

- (void)onSeekTimer:(id)a3
{
  seekForward = self->_seekForward;
  [(IMAVPlayer *)self currentTime];
  if (seekForward)
  {
    v6 = v5 + 10.0;
  }

  else
  {
    v7 = v5 + -10.0;
    v6 = 0.0;
    if (v7 >= 0.0)
    {
      [(IMAVPlayer *)self currentTime];
      v6 = v8 + -10.0;
    }
  }

  [(IMAVPlayer *)self setCurrentTime:v6];
}

- (void)setScrubbing:(BOOL)a3
{
  if (self->_scrubbing != a3)
  {
    self->_scrubbing = a3;
  }
}

- (BOOL)isDurationReady
{
  v3 = [(IMAVPlayer *)self currentItem];
  if ([v3 isAssetLoaded])
  {
    v4 = [(IMAVPlayer *)self currentItem];
    v5 = [v4 asset];
    v6 = [v5 statusOfValueForKey:@"duration" error:0] == 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)duration
{
  v2 = [(IMAVPlayer *)self currentItem];
  [v2 duration];
  v4 = v3;

  return v4;
}

- (double)loadedDuration
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(IMAVPlayer *)self playerItem];

  if (!v3)
  {
    return 0.0;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(IMAVPlayer *)self playerItem];
  v5 = [v4 loadedTimeRanges];

  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if (v11)
        {
          [v11 CMTimeRangeValue];
        }

        else
        {
          memset(&v14, 0, sizeof(v14));
        }

        CMTimeRangeGetEnd(&time, &v14);
        Seconds = CMTimeGetSeconds(&time);
        if (Seconds > v9)
        {
          v9 = Seconds;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

- (BOOL)bufferEmpty
{
  v2 = [(AVPlayer *)self->_player currentItem];
  v3 = [v2 isPlaybackBufferEmpty];

  return v3;
}

- (void)scanWithRate:(float)a3
{
  [(IMAVPlayer *)self scanRate];
  if (*&v5 != a3)
  {
    *&v5 = a3;
    [(IMAVPlayer *)self setScanRate:v5];
    [(IMAVPlayer *)self updateRateForCurrentState];
    v6 = 0;
    if (![(IMAVPlayer *)self isScanning])
    {
      [(IMAVPlayer *)self storedVolume];
      v6 = v7;
    }

    v9 = [(IMAVPlayer *)self player];
    LODWORD(v8) = v6;
    [v9 setVolume:v8];
  }
}

- (void)addTimeObserver:(double)a3
{
  if (a3 >= 0.0)
  {
    v7 = v3;
    v8 = v4;
    CMTimeMakeWithSeconds(&v6, a3, 1000000000);
    [(IMAVPlayer *)self addCMTimeObserver:&v6];
  }
}

- (void)addCMTimeObserver:(id *)a3
{
  if (a3->var2)
  {
    if (!self->_observingTimes)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      observingTimes = self->_observingTimes;
      self->_observingTimes = v5;
    }

    v8 = *&a3->var0;
    var3 = a3->var3;
    v7 = [MEMORY[0x277CCAE60] valueWithCMTime:&v8];
    [(NSMutableArray *)self->_observingTimes addObject:v7];
    self->_timeObserverNeedsUpdate = 1;
  }
}

- (void)removeCMTimeObserver:(id *)a3
{
  observingTimes = self->_observingTimes;
  v5 = *a3;
  v4 = [MEMORY[0x277CCAE60] valueWithCMTime:&v5];
  [(NSMutableArray *)observingTimes removeObject:v4];
}

- (void)removeAllTimeObservers
{
  [(IMAVPlayer *)self clearTimeObservers];
  [(NSMutableArray *)self->_observingTimes removeAllObjects];
  observingTimes = self->_observingTimes;
  self->_observingTimes = 0;
}

- (void)clearTimeObservers
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_timeObservers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(AVPlayer *)self->_player removeTimeObserver:*(*(&v9 + 1) + 8 * v7++), v9];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_timeObservers removeAllObjects];
  timeObservers = self->_timeObservers;
  self->_timeObservers = 0;
}

- (void)addPeriodicTimeObservers
{
  if (self->_player)
  {
    objc_initWeak(&location, self);
    v3 = [(IMAVPlayer *)self periodicTimeObserver];

    if (!v3)
    {
      player = self->_player;
      CMTimeMakeWithSeconds(&v16, 1.0, 1000000000);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __38__IMAVPlayer_addPeriodicTimeObservers__block_invoke;
      v14[3] = &unk_2782BE128;
      objc_copyWeak(&v15, &location);
      v5 = [(AVPlayer *)player addPeriodicTimeObserverForInterval:&v16 queue:0 usingBlock:v14];
      [(IMAVPlayer *)self setPeriodicTimeObserver:v5];

      objc_destroyWeak(&v15);
    }

    v6 = [(IMAVPlayer *)self nowPlayingInfoPeriodicTimeObserver];

    if (!v6)
    {
      v7 = self->_player;
      CMTimeMakeWithSeconds(&v16, 10.0, 1000000000);
      v9 = MEMORY[0x277D85DD0];
      v10 = 3221225472;
      v11 = __38__IMAVPlayer_addPeriodicTimeObservers__block_invoke_2;
      v12 = &unk_2782BE128;
      objc_copyWeak(&v13, &location);
      v8 = [(AVPlayer *)v7 addPeriodicTimeObserverForInterval:&v16 queue:0 usingBlock:&v9];
      [(IMAVPlayer *)self setNowPlayingInfoPeriodicTimeObserver:v8, v9, v10, v11, v12];

      objc_destroyWeak(&v13);
    }

    objc_destroyWeak(&location);
  }
}

void __38__IMAVPlayer_addPeriodicTimeObservers__block_invoke(uint64_t a1, CMTime *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained duration];
  v5 = v4;
  v7 = *a2;
  Seconds = CMTimeGetSeconds(&v7);
  if ([WeakRetained isPlaybackActive])
  {
    [WeakRetained sendPeriodicTimeEvent:0 duration:Seconds finished:v5];
  }
}

void __38__IMAVPlayer_addPeriodicTimeObservers__block_invoke_2(uint64_t a1, CMTime *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *a2;
    Seconds = CMTimeGetSeconds(&v9);
    LODWORD(v9.value) = 134217984;
    *(&v9.value + 4) = Seconds;
    _os_log_impl(&dword_21B365000, v4, OS_LOG_TYPE_DEFAULT, "periodic time observer: %f", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isPlaybackActive] && (objc_msgSend(WeakRetained, "isUpdatingCurrentTime") & 1) == 0)
  {
    v9 = *a2;
    v7 = CMTimeGetSeconds(&v9);
    [WeakRetained _setCurrentTime:?];
    v8 = [WeakRetained currentItem];
    [v8 setPlayhead:v7];
  }

  [WeakRetained updateNowPlayingDurationSnapshot];
}

- (void)removePeriodicTimeObservers
{
  v3 = [(IMAVPlayer *)self periodicTimeObserver];

  if (v3)
  {
    player = self->_player;
    v5 = [(IMAVPlayer *)self periodicTimeObserver];
    [(AVPlayer *)player removeTimeObserver:v5];

    [(IMAVPlayer *)self setPeriodicTimeObserver:0];
  }

  v6 = [(IMAVPlayer *)self nowPlayingInfoPeriodicTimeObserver];

  if (v6)
  {
    v7 = self->_player;
    v8 = [(IMAVPlayer *)self nowPlayingInfoPeriodicTimeObserver];
    [(AVPlayer *)v7 removeTimeObserver:v8];

    [(IMAVPlayer *)self setNowPlayingInfoPeriodicTimeObserver:0];
  }
}

- (void)sendPeriodicTimeEvent:(double)a3 duration:(double)a4 finished:(BOOL)a5
{
  v5 = a5;
  v27 = *MEMORY[0x277D85DE8];
  if (![(IMAVPlayer *)self isUpdatingCurrentTime])
  {
    v9 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [(IMAVPlayer *)self currentItem];
      v11 = [v10 title];
      v12 = [(IMAVPlayer *)self player];
      v13 = v12;
      if (v12)
      {
        [v12 currentTime];
      }

      else
      {
        memset(&v21, 0, sizeof(v21));
      }

      Seconds = CMTimeGetSeconds(&v21);
      currentTime = self->_currentTime;
      LODWORD(v21.value) = 138413314;
      *(&v21.value + 4) = v11;
      LOWORD(v21.flags) = 2048;
      *(&v21.flags + 2) = a3;
      HIWORD(v21.epoch) = 2048;
      v22 = a4;
      v23 = 2048;
      v24 = Seconds;
      v25 = 2048;
      v26 = currentTime;
      _os_log_impl(&dword_21B365000, v9, OS_LOG_TYPE_INFO, "sendPeriodicTimeEvent for episode: %@, time: %f, duration: %f, playerTime: %f, storedTime: %f", &v21, 0x34u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      delegateFlags = self->_delegateFlags;

      if ((delegateFlags & 0x20) != 0)
      {
        v18 = objc_loadWeakRetained(&self->_delegate);
        [v18 playerPeriodicUpdate:self elapsed:v5 duration:a3 isFinished:a4];
      }
    }

    [(IMAVPlayer *)self autoStopMediaTime];
    if (a3 + -2.0 >= v19)
    {
      [(IMAVPlayer *)self enforceAutoStopForMode:4];
    }

    self->_currentTime = a3;
    v20 = [(IMAVPlayer *)self currentItem];
    [v20 setPlayhead:a3];

    [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_PeriodicUpdate" userInfo:0];
  }
}

- (void)updateTimeObservers
{
  v13 = *MEMORY[0x277D85DE8];
  [(IMAVPlayer *)self _assertMainThread];
  if (self->_timeObserverNeedsUpdate)
  {
    [(IMAVPlayer *)self clearTimeObservers];
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = self->_observingTimes;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(IMAVPlayer *)self setupTimeObserver:*(*(&v8 + 1) + 8 * v7++), v8];
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    self->_timeObserverNeedsUpdate = 0;
    [(IMAVPlayer *)self currentTime];
    [(IMAVPlayer *)self forceTriggerTimeObserverAt:?];
  }
}

- (void)setupTimeObserver:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(IMAVPlayer *)self _assertMainThread];
  v5 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_21B365000, v5, OS_LOG_TYPE_INFO, "add BoundaryTimeObserver timeValue %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v6 = self;
  v25 = v6;
  player = v6->_player;
  v8 = [MEMORY[0x277CBEA60] arrayWithObject:v4];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __32__IMAVPlayer_setupTimeObserver___block_invoke;
  v18 = &unk_2782BDD18;
  p_buf = &buf;
  v9 = v4;
  v19 = v9;
  v10 = [(AVPlayer *)player addBoundaryTimeObserverForTimes:v8 queue:0 usingBlock:&v15];

  timeObservers = v6->_timeObservers;
  if (!timeObservers)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = v6->_timeObservers;
    p_timeObservers = &v6->_timeObservers;
    *p_timeObservers = v12;

    timeObservers = *p_timeObservers;
  }

  [(NSMutableArray *)timeObservers addObject:v10, v15, v16, v17, v18];

  _Block_object_dispose(&buf, 8);
}

- (void)triggerTimeObserverAt:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 CMTimeValue];
  }

  else
  {
    memset(&v9, 0, sizeof(v9));
  }

  Seconds = CMTimeGetSeconds(&v9);
  [(IMAVPlayer *)self setupChapterAtTime:?];
  [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_DidCrossTimeBoundry" userInfo:0];
  if ((*&self->_delegateFlags & 0x10) != 0)
  {
    v7 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LODWORD(v9.value) = 134217984;
      *(&v9.value + 4) = Seconds;
      _os_log_impl(&dword_21B365000, v7, OS_LOG_TYPE_INFO, "triggerTimeObserver %f", &v9, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained player:self callbackForTime:Seconds];
  }
}

- (void)forceTriggerTimeObserverAt:(double)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_observingTimes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v15 + 1) + 8 * v10);
        if (v12)
        {
          [*(*(&v15 + 1) + 8 * v10) CMTimeValue];
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        Seconds = CMTimeGetSeconds(&time);
        if (Seconds > a3)
        {
          v8 = v11;
          goto LABEL_16;
        }

        if (Seconds == a3)
        {
          goto LABEL_18;
        }

        ++v11;
        ++v10;
      }

      while (v7 != v10);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_16:

  if (v8)
  {
    v12 = [(NSMutableArray *)self->_observingTimes objectAtIndex:v8 - 1];
    v5 = v12;
LABEL_18:
    [(IMAVPlayer *)self triggerTimeObserverAt:v12];
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_delegate, obj);
    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFFE | objc_opt_respondsToSelector() & 1;

    v6 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFFD | v7;

    v8 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v9 = 4;
    }

    else
    {
      v9 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFFB | v9;

    v10 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFF7 | v11;

    v12 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v13 = 16;
    }

    else
    {
      v13 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFEF | v13;

    v14 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v15 = 32;
    }

    else
    {
      v15 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFDF | v15;

    v16 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v17 = 64;
    }

    else
    {
      v17 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFBF | v17;

    v18 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v19 = 128;
    }

    else
    {
      v19 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFF7F | v19;

    v20 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v21 = 256;
    }

    else
    {
      v21 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFEFF | v21;

    v22 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v23 = 512;
    }

    else
    {
      v23 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFDFF | v23;

    v24 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v25 = 1024;
    }

    else
    {
      v25 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFBFF | v25;

    v26 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v27 = 2048;
    }

    else
    {
      v27 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xF7FF | v27;
  }
}

- (void)updateNowPlayingMetadataIncludingArtwork:(BOOL)a3
{
  v3 = a3;
  v5 = [(IMAVPlayer *)self currentItem];

  if (!v5)
  {
    return;
  }

  v6 = [(IMAVPlayer *)self currentItem];
  v7 = [v6 title];

  v8 = [(IMAVPlayer *)self currentItem];
  v9 = [v8 album];

  v34 = v7;
  v10 = v9;
  v11 = [(IMAVPlayer *)self currentItem];
  v12 = [v11 timeChapters];
  if (!v12)
  {
    v18 = v10;
    v19 = v34;
LABEL_15:

    goto LABEL_16;
  }

  v13 = v12;
  currentChapterIndex = self->_currentChapterIndex;
  v15 = [(IMAVPlayer *)self currentItem];
  v16 = [v15 timeChapters];
  v17 = [v16 count];

  v18 = v10;
  v19 = v34;
  if (currentChapterIndex < v17)
  {
    v20 = [(IMAVPlayer *)self currentItem];
    v21 = [v20 timeChapters];
    v22 = [v21 objectAtIndexedSubscript:self->_currentChapterIndex];
    v11 = [v22 title];

    v23 = [(IMAVPlayer *)self currentItem];
    v24 = [v23 title];

    v18 = v10;
    v19 = v34;
    if ([v11 length])
    {
      v25 = [(IMAVPlayer *)self chapterMetadataMode];
      v26 = [v24 length];
      if (v25 == 1)
      {
        v19 = v34;
        if (v26)
        {
          v19 = v24;
        }

        v18 = v11;
        v27 = v10;
        goto LABEL_13;
      }

      v18 = v10;
      v19 = v34;
      if (v26)
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %@", v11, v24];
        v27 = v34;
        v18 = v10;
LABEL_13:
      }
    }

    goto LABEL_15;
  }

LABEL_16:
  v28 = [(IMAVPlayer *)self currentItem];
  v29 = [v28 contentItem];

  if (v3)
  {
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"-%lu", -[IMAVPlayer currentChapterIndex](self, "currentChapterIndex")];
    v31 = [(IMAVPlayer *)self currentItem];
    v32 = [v31 artworkIdentifier];
    v33 = [v32 stringByAppendingString:v30];

    [v29 setArtworkIdentifier:v33];
    [v29 invalidateArtwork];
  }

  [v29 setTitle:v19];
  [v29 setAlbumName:v18];
}

- (void)updateNowPlayingDurationSnapshot
{
  v37 = *MEMORY[0x277D85DE8];
  [objc_opt_class() rateForPlaybackSpeed:{-[IMAVPlayer playbackSpeed](self, "playbackSpeed")}];
  v4 = v3;
  v5 = 0.0;
  if ([(IMAVPlayer *)self isPlaybackRequested])
  {
    [(IMAVPlayer *)self actualRate];
    v5 = v6;
    if (self->_seekTimer)
    {
      if (!self->_seekForward)
      {
        v5 = -v6;
      }
    }
  }

  v7 = [(IMAVPlayer *)self playerItem];
  if ([v7 status] == 1)
  {
    v8 = [(IMAVPlayer *)self playerItem];
    v9 = v8;
    if (v8)
    {
      [v8 currentTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
  }

  else
  {
    [(IMAVPlayer *)self currentTime];
    Seconds = v10;
  }

  if (Seconds <= 0.00000011920929)
  {
    Seconds = 0.1;
  }

  v12 = [(IMAVPlayer *)self currentItem];
  v13 = [v12 contentItem];

  LODWORD(v14) = v4;
  [v13 setDefaultPlaybackRate:v14];
  [(IMAVPlayer *)self duration];
  [v13 setDuration:?];
  [v13 playbackRate];
  v16 = vabds_f32(v15, v5);
  [v13 elapsedTime];
  HIDWORD(v18) = 872415232;
  if (v16 > 0.00000011921 || (v18 = 0.5, vabdd_f64(v17, Seconds) > 0.5))
  {
    *&v18 = v5;
    [v13 setElapsedTime:Seconds playbackRate:v18];
    v19 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      [(IMAVPlayer *)self duration];
      LODWORD(time.value) = 134218496;
      *(&time.value + 4) = Seconds;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = v20;
      HIWORD(time.epoch) = 2048;
      v36 = v5;
      _os_log_impl(&dword_21B365000, v19, OS_LOG_TYPE_INFO, "Updated MPNowPlayingContentItem snapshot: elapsedTime: %f, duration: %f, playbackRate: %f", &time, 0x20u);
    }
  }

  v21 = [(IMAVPlayer *)self manifest];
  if (v21)
  {
    v22 = [(IMAVPlayer *)self manifest];
    if ([v22 currentIndex] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = 0;
    }

    else
    {
      v24 = [(IMAVPlayer *)self manifest];
      v23 = [v24 currentIndex];
    }
  }

  else
  {
    v23 = 0;
  }

  v25 = [(IMAVPlayer *)self manifest];
  if (v25)
  {
    v26 = [(IMAVPlayer *)self manifest];
    v27 = [v26 count];
  }

  else
  {
    v27 = 1;
  }

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v23, *MEMORY[0x277D27C48]}];
  v34[0] = v28;
  v33[1] = *MEMORY[0x277D27CA0];
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v27];
  v34[1] = v29;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];

  [v13 updateNowPlayingInfoIfNeeded:v30];
  v31 = [(IMAVPlayer *)self currentItem];
  if ([v31 isPlaceholder])
  {
    v32 = 1;
  }

  else if ([(IMAVPlayer *)self isPlaybackRequested])
  {
    v32 = [(IMAVPlayer *)self isPlaybackActive]^ 1;
  }

  else
  {
    v32 = 0;
  }

  if (v32 != [v13 isLoading])
  {
    [v13 setLoading:v32];
  }

  [(IMAVPlayer *)self updateInfoCenterPlaybackState];
}

- (void)updateInfoCenterPlaybackState
{
  v3 = [(IMAVPlayer *)self state];
  if (v3)
  {
    if (v3 == 2)
    {
      v4 = 3;
    }

    else
    {
      v4 = v3 == 1;
    }
  }

  else if ([(IMAVPlayer *)self wasInterrupted])
  {
    v4 = 4;
  }

  else if ([(IMAVPlayer *)self wasInterruptedEarly])
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  v5 = [(IMAVPlayer *)self infoCenter];
  [v5 setPlaybackState:v4];
}

- (unint64_t)chapterCount
{
  v2 = [(IMAVPlayer *)self currentItem];
  v3 = [v2 timeChapters];
  v4 = [v3 count];

  return v4;
}

- (void)setupChapterTimeObservers
{
  [(IMAVPlayer *)self _assertMainThread];
  [(IMAVPlayer *)self removeAllTimeObservers];
  v3 = [(IMAVPlayer *)self currentItem];
  v4 = [v3 chapters];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = [(IMAVPlayer *)self currentItem];
      v8 = [v7 chapters];
      v9 = [v8 objectAtIndex:v6];

      if (v9)
      {
        [v9 assetTimeRange];
      }

      else
      {
        v14 = 0u;
        v15 = 0u;
        v13 = 0u;
      }

      v16 = v13;
      v17 = v14;
      [(IMAVPlayer *)self addCMTimeObserver:&v16, v13, v14, v15];

      ++v6;
      v10 = [(IMAVPlayer *)self currentItem];
      v11 = [v10 chapters];
      v12 = [v11 count];
    }

    while (v6 < v12);
  }

  [(IMAVPlayer *)self updateTimeObservers];
}

- (void)setCurrentChapterIndex:(unint64_t)a3
{
  if ([(IMAVPlayer *)self chapterCount]> a3)
  {
    [(IMAVPlayer *)self _setChapterIndex:a3];
    v5 = [(IMAVPlayer *)self currentItem];
    v6 = [v5 timeChapters];
    v7 = [v6 objectAtIndex:a3];

    if (v7)
    {
      [v7 assetTimeRange];
    }

    else
    {
      memset(&v8, 0, sizeof(v8));
    }

    time = v8;
    [(IMAVPlayer *)self setCurrentTime:CMTimeGetSeconds(&time)];
  }
}

- (IMPlayerChapterInfo)currentChapter
{
  v3 = [(IMAVPlayer *)self currentItem];
  v4 = [v3 timeChapters];

  v5 = [(IMAVPlayer *)self currentItem];
  v6 = [v5 timeChapters];
  if (v6)
  {
    v7 = v6;
    currentChapterIndex = self->_currentChapterIndex;
    v9 = [v4 count];

    if (currentChapterIndex < v9)
    {
      v10 = [v4 objectAtIndex:self->_currentChapterIndex];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (void)setupChapterAtTime:(double)a3
{
  if (![(IMAVPlayer *)self scrubbing])
  {
    v5 = [(IMAVPlayer *)self currentItem];
    v6 = [v5 chapters];
    v7 = [v6 count];

    if (v7)
    {
      v8 = 0;
      do
      {
        v9 = [(IMAVPlayer *)self currentItem];
        v10 = [v9 chapters];
        v11 = [v10 objectAtIndex:v8];

        if (v11)
        {
          [v11 assetTimeRange];
          *&time.value = v28;
          time.epoch = v29;
          Seconds = CMTimeGetSeconds(&time);
          [v11 assetTimeRange];
        }

        else
        {
          v29 = 0u;
          v30 = 0u;
          v28 = 0u;
          memset(&time, 0, sizeof(time));
          Seconds = CMTimeGetSeconds(&time);
          v26 = 0u;
          memset(v27, 0, sizeof(v27));
        }

        time = *(v27 + 8);
        v13 = Seconds + CMTimeGetSeconds(&time);
        if (Seconds + -0.001 < a3 && v13 > a3)
        {
          if (![v11 type])
          {
            v15 = [(IMAVPlayer *)self currentItem];
            v16 = [v15 timeChapters];
            v17 = [v16 indexOfObject:v11];

            if (v17 != 0x7FFFFFFFFFFFFFFFLL)
            {
              [(IMAVPlayer *)self _setChapterIndex:v17];
            }

            [(IMAVPlayer *)self updateNowPlayingMetadataIncludingArtwork:1];
          }

          if ((*&self->_delegateFlags & 0x400) != 0)
          {
            v24[0] = MEMORY[0x277D85DD0];
            v24[1] = 3221225472;
            v24[2] = __33__IMAVPlayer_setupChapterAtTime___block_invoke;
            v24[3] = &unk_2782BDD68;
            v24[4] = self;
            v25 = v11;
            v18 = _Block_copy(v24);
            v19 = [MEMORY[0x277CCACC8] currentThread];
            v20 = [MEMORY[0x277CCACC8] mainThread];

            if (v19 == v20)
            {
              v18[2](v18);
            }

            else
            {
              dispatch_sync(MEMORY[0x277D85CD0], v18);
            }
          }
        }

        ++v8;
        v21 = [(IMAVPlayer *)self currentItem];
        v22 = [v21 chapters];
        v23 = [v22 count];
      }

      while (v8 < v23);
    }
  }
}

void __33__IMAVPlayer_setupChapterAtTime___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 player:*(a1 + 32) chapterStarted:*(a1 + 40)];
}

- (void)_setChapterIndex:(unint64_t)a3
{
  if (self->_currentChapterIndex < a3)
  {
    [(IMAVPlayer *)self enforceAutoStopForMode:2];
  }

  self->_currentChapterIndex = a3;

  [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_CurrentChapterDidChange" userInfo:0];
}

- (void)onChaptersLoaded:(id)a3
{
  v4 = [a3 object];
  currentItem = self->_currentItem;

  if (v4 == currentItem)
  {
    v6 = objc_opt_class();
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __31__IMAVPlayer_onChaptersLoaded___block_invoke;
    v7[3] = &unk_2782BDD90;
    v7[4] = self;
    [v6 performOnMainQueue:v7];
  }
}

void __31__IMAVPlayer_onChaptersLoaded___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentItem];

  if (v2)
  {
    [*(a1 + 32) setupChapterTimeObservers];
    v3 = *(a1 + 32);
    [v3 currentTime];

    [v3 setupChapterAtTime:?];
  }
}

- (void)nextChapter
{
  v3 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21B365000, v3, OS_LOG_TYPE_DEFAULT, "nextChapter", v4, 2u);
  }

  [(IMAVPlayer *)self setCurrentChapterIndex:[(IMAVPlayer *)self currentChapterIndex]+ 1];
}

- (void)previousChapter
{
  v3 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21B365000, v3, OS_LOG_TYPE_DEFAULT, "previousChapter", v4, 2u);
  }

  [(IMAVPlayer *)self setCurrentChapterIndex:[(IMAVPlayer *)self currentChapterIndex]- 1];
}

- (void)setAutoStop:(unint64_t)a3
{
  if (self->_autoStop != a3)
  {
    [(IMAVPlayer *)self _clearAutoStop];
    self->_autoStop = a3;
    if (a3 == 1)
    {

      [(IMAVPlayer *)self _setupAutoStopTimer];
    }
  }
}

- (void)setAutoStopTimerTime:(double)a3
{
  self->_autoStopTimerTime = a3;
  [(IMAVPlayer *)self _clearAutoStopTimmer];

  [(IMAVPlayer *)self _setupAutoStopTimer];
}

- (double)autoStopTimeRemaining
{
  v3 = [(IMAVPlayer *)self autoStop];
  v4 = 0.0;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      [(IMAVPlayer *)self duration];
    }

    else
    {
      if (v3 != 4)
      {
        return v4;
      }

      [(IMAVPlayer *)self autoStopMediaTime];
    }

    v16 = v12;
    [(IMAVPlayer *)self currentTime];
    return v16 - v17;
  }

  if (v3 != 1)
  {
    if (v3 == 2)
    {
      v5 = [(IMAVPlayer *)self currentChapter];
      [v5 time];
      v7 = v6;
      v8 = [(IMAVPlayer *)self currentChapter];
      [v8 duration];
      v10 = v7 + v9;
      [(IMAVPlayer *)self currentTime];
      v4 = v10 - v11;
    }

    return v4;
  }

  [(IMAVPlayer *)self autoStopTimerPausedTime];
  if (v13 > 0.0)
  {
    [(IMAVPlayer *)self autoStopTimerPausedTime];
    v15 = v14;
    return v15 + 2.0;
  }

  v18 = [(IMAVPlayer *)self autoStopTimer];

  if (v18)
  {
    v19 = [(IMAVPlayer *)self autoStopTimer];
    v20 = [v19 fireDate];
    [v20 timeIntervalSinceReferenceDate];
    v22 = v21;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v15 = v22 - v23;

    return v15 + 2.0;
  }

  [(IMAVPlayer *)self autoStopTimerTime];
  return result;
}

- (void)_setupAutoStopTimer
{
  v3 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21B365000, v3, OS_LOG_TYPE_INFO, "_setupAutoStopTimer", buf, 2u);
  }

  if ([(IMAVPlayer *)self autoStop]!= 1 || ![(IMAVPlayer *)self isPlaybackRequested])
  {
    v5 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v6 = "_setupAutoStopTimer: abort, not timer mode or playing back!";
      goto LABEL_10;
    }

LABEL_11:

    return;
  }

  v4 = [(IMAVPlayer *)self autoStopTimer];

  if (v4)
  {
    v5 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v6 = "_setupAutoStopTimer: abort, timer exists!";
LABEL_10:
      _os_log_impl(&dword_21B365000, v5, OS_LOG_TYPE_INFO, v6, buf, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  [(IMAVPlayer *)self autoStopTimerPausedTime];
  if (v7 <= 0.0)
  {
    [(IMAVPlayer *)self autoStopTimerTime];
    if (v10 <= 0.0)
    {
      v5 = [MEMORY[0x277D3DA88] player];
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        goto LABEL_11;
      }

      *buf = 0;
      v6 = "_setupAutoStopTimer: abort, no time!";
      goto LABEL_10;
    }

    [(IMAVPlayer *)self autoStopTimerTime];
    v9 = v11 + -2.0;
  }

  else
  {
    [(IMAVPlayer *)self autoStopTimerPausedTime];
    v9 = v8;
  }

  v12 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21B365000, v12, OS_LOG_TYPE_INFO, "_setupAutoStopTimer: created timer!", buf, 2u);
  }

  v13 = objc_opt_class();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __33__IMAVPlayer__setupAutoStopTimer__block_invoke;
  v14[3] = &unk_2782BE150;
  v14[4] = self;
  *&v14[5] = v9;
  [v13 performOnMainQueue:v14];
}

uint64_t __33__IMAVPlayer__setupAutoStopTimer__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:*(a1 + 32) target:sel__autoStopTimerFired selector:0 userInfo:0 repeats:*(a1 + 40)];
  [*(a1 + 32) setAutoStopTimer:v2];

  v3 = *(a1 + 32);

  return [v3 setAutoStopTimerPausedTime:0.0];
}

- (void)_pauseAutoStopTimer
{
  v3 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_21B365000, v3, OS_LOG_TYPE_INFO, "_pauseAutoStopTimer", v5, 2u);
  }

  [(IMAVPlayer *)self autoStopTimeRemaining];
  [(IMAVPlayer *)self setAutoStopTimerPausedTime:v4 + -2.0];
  [(IMAVPlayer *)self _clearAutoStopTimmer];
}

- (void)_clearAutoStopTimmer
{
  v3 = [(IMAVPlayer *)self autoStopTimer];

  if (v3)
  {
    v4 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_21B365000, v4, OS_LOG_TYPE_INFO, "_clearAutoStopTimmer", v6, 2u);
    }

    v5 = [(IMAVPlayer *)self autoStopTimer];
    [v5 invalidate];

    [(IMAVPlayer *)self setAutoStopTimer:0];
  }
}

- (void)_autoStopTimerFired
{
  v3 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_21B365000, v3, OS_LOG_TYPE_INFO, "_autoStopTimerFired", v4, 2u);
  }

  [(IMAVPlayer *)self enforceAutoStopForMode:1];
}

- (void)enforceAutoStopForMode:(unint64_t)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134218240;
    v7 = a3;
    v8 = 2048;
    v9 = [(IMAVPlayer *)self autoStop];
    _os_log_impl(&dword_21B365000, v5, OS_LOG_TYPE_INFO, "enforceAutoStopForMode: %lu, withCurrentMode: %lu", &v6, 0x16u);
  }

  if ([(IMAVPlayer *)self autoStop]== a3)
  {
    if (a3 <= 4 && ((1 << a3) & 0x13) != 0)
    {
      [(IMAVPlayer *)self sleep];
    }

    else
    {
      [(IMAVPlayer *)self pauseWithInitiator:2];
    }

    [(IMAVPlayer *)self setAutoStop:0];
    [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_AutoStopModeDidChange" userInfo:0];
  }
}

- (void)_clearAutoStop
{
  v3 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_21B365000, v3, OS_LOG_TYPE_INFO, "clearAutoStop", v4, 2u);
  }

  self->_autoStop = 0;
  [(IMAVPlayer *)self setAutoStopTimerPausedTime:0.0];
  [(IMAVPlayer *)self setAutoStopTimerTime:0.0];
  [(IMAVPlayer *)self _clearAutoStopTimmer];
}

+ (void)performOnMainQueue:(id)a3
{
  v3 = MEMORY[0x277CCACC8];
  block = a3;
  if ([v3 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

+ (void)performOnAvSessionQueue:(id)a3
{
  v3 = performOnAvSessionQueue__onceToken;
  v4 = a3;
  v6 = v4;
  if (v3 == -1)
  {
    v5 = v4;
  }

  else
  {
    +[IMAVPlayer performOnAvSessionQueue:];
    v5 = v6;
  }

  dispatch_async(performOnAvSessionQueue__IMAVSessionConfigurationQueue, v5);
}

void __38__IMAVPlayer_performOnAvSessionQueue___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("IMAVPlayer.avsession_queue", v2);
  v1 = performOnAvSessionQueue__IMAVSessionConfigurationQueue;
  performOnAvSessionQueue__IMAVSessionConfigurationQueue = v0;
}

+ (id)playerID
{
  if ([MEMORY[0x277D3DB60] supportsBlueMoon])
  {
    return @"Podcasts-Legacy";
  }

  else
  {
    return @"Podcasts";
  }
}

- (IMAVPlaybackCausalityObserver)causalityObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_causalityObserver);

  return WeakRetained;
}

- (IMAVPlayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end