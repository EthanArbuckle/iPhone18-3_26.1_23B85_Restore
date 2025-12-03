@interface IMAVPlayer
+ (NSArray)availableSpeeds;
+ (float)rateForPlaybackSpeed:(unint64_t)speed;
+ (id)avPlaybackSpeedForSpeed:(unint64_t)speed;
+ (id)playerID;
+ (id)sharedPlayer;
+ (unint64_t)decrementPlaybackSpeed:(unint64_t)speed;
+ (unint64_t)incrementPlaybackSpeed:(unint64_t)speed;
+ (unint64_t)playbackSpeedForRate:(float)rate;
+ (void)performOnAvSessionQueue:(id)queue;
+ (void)performOnMainQueue:(id)queue;
- ($377CF2390FDF0262336A0B78E33E12FE)_skipToPreviousThreshold;
- (BOOL)_pause;
- (BOOL)_pause:(BOOL)_pause;
- (BOOL)_stopWithReason:(unint64_t)reason initiator:(unint64_t)initiator stopBlock:(id)block;
- (BOOL)_validatePlay;
- (BOOL)airplayVideoActive;
- (BOOL)bufferEmpty;
- (BOOL)isAtEnd;
- (BOOL)isDurationReady;
- (BOOL)nextRemote;
- (BOOL)pause;
- (BOOL)pauseWithInitiator:(unint64_t)initiator;
- (BOOL)pauseWithInitiator:(unint64_t)initiator interruptionEvent:(BOOL)event;
- (BOOL)play;
- (BOOL)previousRemote:(BOOL)remote;
- (BOOL)stop;
- (BOOL)stopWithReason:(unint64_t)reason initiator:(unint64_t)initiator;
- (BOOL)togglePlayPause;
- (IMAVPlaybackCausalityObserver)causalityObserver;
- (IMAVPlayer)initWithCommandCenter:(id)center infoCenter:(id)infoCenter audioSession:(id)session;
- (IMAVPlayerDelegate)delegate;
- (IMPlayerChapterInfo)currentChapter;
- (double)autoStopTimeRemaining;
- (double)duration;
- (double)loadedDuration;
- (float)actualRate;
- (float)storedVolume;
- (float)volume;
- (id)stillFrameAt:(double)at maxSize:(CGSize)size scale:(double)scale;
- (unint64_t)chapterCount;
- (unint64_t)loadState;
- (void)_autoStopTimerFired;
- (void)_clearAutoStop;
- (void)_clearAutoStopTimmer;
- (void)_configureAudioSessionWithCompletion:(id)completion;
- (void)_createPlayer;
- (void)_durationAvailable;
- (void)_failedToPlayToEndNotification:(id)notification;
- (void)_pauseAutoStopTimer;
- (void)_postNotificationName:(id)name userInfo:(id)info;
- (void)_setChapterIndex:(unint64_t)index;
- (void)_setupAutoStopTimer;
- (void)_updateForCurrentRateAndTimeControlStatus;
- (void)_updatePlayerForCurrentItem;
- (void)_updatePlayerTimeCompleted:(double)completed completion:(id)completion;
- (void)_updatePlayerToCurrentTime:(id)time;
- (void)addCMTimeObserver:(id *)observer;
- (void)addPeriodicTimeObservers;
- (void)addTimeObserver:(double)observer;
- (void)becomeActiveMediaPlayer;
- (void)beginBackgroundTask;
- (void)cancelFadeOut;
- (void)cancelSeek;
- (void)clearTimeObservers;
- (void)configureAudioSessionAndSetActive:(BOOL)active withCompletion:(id)completion;
- (void)dealloc;
- (void)endBackgroundTask;
- (void)endSeek;
- (void)enforceAutoStopForMode:(unint64_t)mode;
- (void)fadeOutWithDuration:(double)duration completion:(id)completion;
- (void)forceTriggerTimeObserverAt:(double)at;
- (void)handleAudioSessionInterruption:(id)interruption;
- (void)handlePlayerInterruption:(id)interruption;
- (void)hdcpTimer:(id)timer;
- (void)manifestCurrentItemDidChange;
- (void)nextChapter;
- (void)nextMediaItem;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)onChaptersLoaded:(id)loaded;
- (void)onRouteChange:(id)change;
- (void)onSeekTimer:(id)timer;
- (void)play:(id)play interruptionEvent:(BOOL)event;
- (void)playerItemDidReachEnd:(id)end;
- (void)previousChapter;
- (void)previousMediaItem;
- (void)removeAllTimeObservers;
- (void)removeCMTimeObserver:(id *)observer;
- (void)removePeriodicTimeObservers;
- (void)resetPlayer:(id)player;
- (void)scanWithRate:(float)rate;
- (void)sendDurationLoadedCoreAnalyticsEvents;
- (void)sendItemEndedNotification;
- (void)sendPeriodicTimeEvent:(double)event duration:(double)duration finished:(BOOL)finished;
- (void)setAutoStop:(unint64_t)stop;
- (void)setAutoStopTimerTime:(double)time;
- (void)setCurrentChapterIndex:(unint64_t)index;
- (void)setCurrentItem:(id)item;
- (void)setCurrentTime:(double)time fromMediaRemote:(BOOL)remote;
- (void)setDelegate:(id)delegate;
- (void)setManifest:(id)manifest completion:(id)completion;
- (void)setPlaybackSpeed:(unint64_t)speed;
- (void)setPlayer:(id)player;
- (void)setPlayerItem:(id)item;
- (void)setRequestedRate:(float)rate;
- (void)setScrubbing:(BOOL)scrubbing;
- (void)setShouldEnforceHDCP:(BOOL)p;
- (void)setState:(unint64_t)state additionalUserInfo:(id)info completion:(id)completion;
- (void)setVolume:(float)volume;
- (void)setWasInterrupted:(BOOL)interrupted;
- (void)setWasInterruptedEarly:(BOOL)early;
- (void)setupChapterAtTime:(double)time;
- (void)setupChapterTimeObservers;
- (void)setupTimeObserver:(id)observer;
- (void)sleep;
- (void)startSeek:(BOOL)seek;
- (void)stopObservingPlayer:(id)player;
- (void)stopObservingPlayerItem:(id)item;
- (void)toggleVideoAspectScaleMode;
- (void)triggerTimeObserverAt:(id)at;
- (void)updateInfoCenterPlaybackState;
- (void)updateNowPlayingDurationSnapshot;
- (void)updateNowPlayingMetadataIncludingArtwork:(BOOL)artwork;
- (void)updateRateForCurrentState:(id)state;
- (void)updateTimeObservers;
@end

@implementation IMAVPlayer

- (IMAVPlayer)initWithCommandCenter:(id)center infoCenter:(id)infoCenter audioSession:(id)session
{
  centerCopy = center;
  infoCenterCopy = infoCenter;
  sessionCopy = session;
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
  if (sessionCopy)
  {
    [(IMAVPlayer *)v11 setAudioSession:sessionCopy];
    if (infoCenterCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = objc_alloc(MEMORY[0x277CD5FE8]);
    playerID = [objc_opt_class() playerID];
    v16 = [v14 initWithPlayerID:playerID];
    [(IMAVPlayer *)v12 setInfoCenter:v16];

    if (centerCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  [(IMAVPlayer *)v12 setAudioSession:mEMORY[0x277CB83F8]];

  if (!infoCenterCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  [(IMAVPlayer *)v12 setInfoCenter:infoCenterCopy];
  if (centerCopy)
  {
LABEL_5:
    [(IMAVPlayer *)v12 setCommandCenter:centerCopy];
    goto LABEL_9;
  }

LABEL_8:
  v17 = objc_alloc(MEMORY[0x277CD6028]);
  playerID2 = [objc_opt_class() playerID];
  v19 = [v17 initWithPlayerID:playerID2];
  [(IMAVPlayer *)v12 setCommandCenter:v19];

LABEL_9:
  infoCenter = [(IMAVPlayer *)v12 infoCenter];
  [infoCenter setPlaybackState:2];

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
  playerItem = [(IMAVPlayer *)self playerItem];
  [(IMAVPlayer *)self stopObservingPlayerItem:playerItem];

  player = [(IMAVPlayer *)self player];
  [(IMAVPlayer *)self stopObservingPlayer:player];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

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
    player = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(player, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_FAULT, "HomePod attempted to access the shared IMAVPlayer", v7, 2u);
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

- (void)configureAudioSessionAndSetActive:(BOOL)active withCompletion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__IMAVPlayer_configureAudioSessionAndSetActive_withCompletion___block_invoke;
  v8[3] = &unk_2782BDF78;
  activeCopy = active;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
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

- (void)_configureAudioSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_opt_class();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__IMAVPlayer__configureAudioSessionWithCompletion___block_invoke;
  v7[3] = &unk_2782BDFA0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
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
  defaultCenter = [MEMORY[0x277CD5FE8] defaultCenter];
  mEMORY[0x277CD6028] = [MEMORY[0x277CD6028] sharedCommandCenter];
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

- (void)setManifest:(id)manifest completion:(id)completion
{
  manifestCopy = manifest;
  completionCopy = completion;
  if (![manifestCopy isEqual:self->_manifest] || (objc_msgSend(manifestCopy, "currentItem"), v9 = objc_claimAutoreleasedReturnValue(), -[IMAVPlayer currentItem](self, "currentItem"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqual:", v10), v10, v9, (v11 & 1) == 0))
  {
    if (self->_manifest)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter removeObserver:self name:@"IMPlayerManifestCurrentItemDidChange" object:self->_manifest];
    }

    [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_ManifestWillChange" userInfo:0];
    objc_storeStrong(&self->_manifest, manifest);
    [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_ManifestDidChange" userInfo:0];
    if (manifestCopy)
    {
      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel_manifestCurrentItemDidChange name:@"IMPlayerManifestCurrentItemDidChange" object:self->_manifest];

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __37__IMAVPlayer_setManifest_completion___block_invoke;
      v14[3] = &unk_2782BDFC8;
      v15 = completionCopy;
      [manifestCopy load:v14];

      goto LABEL_10;
    }

    [(IMAVPlayer *)self setCurrentItem:0];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
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
  manifest = [(IMAVPlayer *)self manifest];
  currentItem = [manifest currentItem];
  [(IMAVPlayer *)self setCurrentItem:currentItem];
}

- (void)setCurrentItem:(id)item
{
  v20 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  player = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(player, OS_LOG_TYPE_INFO))
  {
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 138412290;
    v17 = callStackSymbols;
    _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_INFO, "setCurrentItem trace: %@", buf, 0xCu);
  }

  player2 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(player2, OS_LOG_TYPE_DEFAULT))
  {
    currentItem = self->_currentItem;
    *buf = 138412546;
    v17 = itemCopy;
    v18 = 2112;
    v19 = currentItem;
    _os_log_impl(&dword_21B365000, player2, OS_LOG_TYPE_DEFAULT, "setCurrentItem: %@, old: %@", buf, 0x16u);
  }

  player3 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(player3, OS_LOG_TYPE_DEFAULT))
  {
    title = [itemCopy title];
    title2 = [(IMPlayerItem *)self->_currentItem title];
    *buf = 138412546;
    v17 = title;
    v18 = 2112;
    v19 = title2;
    _os_log_impl(&dword_21B365000, player3, OS_LOG_TYPE_DEFAULT, "setCurrentItemTitle: %@, old: %@", buf, 0x16u);
  }

  v12 = objc_opt_class();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __29__IMAVPlayer_setCurrentItem___block_invoke;
  v14[3] = &unk_2782BDD68;
  v14[4] = self;
  v15 = itemCopy;
  v13 = itemCopy;
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

- (void)setPlayerItem:(id)item
{
  itemCopy = item;
  playerItem = [(IMAVPlayer *)self playerItem];

  if (playerItem)
  {
    playerItem2 = [(IMAVPlayer *)self playerItem];
    [(IMAVPlayer *)self stopObservingPlayerItem:playerItem2];
  }

  playerItem = self->_playerItem;
  self->_playerItem = itemCopy;
}

- (void)_updatePlayerForCurrentItem
{
  player = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(player, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_DEFAULT, "updatePlayerForCurrentItem", buf, 2u);
  }

  [(IMAVPlayer *)self setIsUpdatingCurrentTime:0];
  [(IMAVPlayer *)self removePeriodicTimeObservers];
  [(IMAVPlayer *)self removeAllTimeObservers];
  currentItem = [(IMAVPlayer *)self currentItem];

  if (currentItem)
  {
    currentItem2 = [(IMAVPlayer *)self currentItem];
    isVideo = [currentItem2 isVideo];

    [(AVPlayer *)self->_player setAllowsExternalPlayback:isVideo];
    [(AVPlayer *)self->_player setUsesExternalPlaybackWhileExternalScreenIsActive:isVideo];
    objc_initWeak(buf, self);
    if ([MEMORY[0x277D3DB60] platformSupportsVideo] && -[IMAVPlayer providesVideoView](self, "providesVideoView"))
    {
      v7 = objc_opt_class();
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __41__IMAVPlayer__updatePlayerForCurrentItem__block_invoke;
      v23[3] = &unk_2782BDFF0;
      v23[4] = self;
      v25 = isVideo;
      objc_copyWeak(&v24, buf);
      [v7 performOnMainQueue:v23];
      objc_destroyWeak(&v24);
    }

    v8 = MEMORY[0x277CE65B0];
    currentItem3 = [(IMAVPlayer *)self currentItem];
    asset = [currentItem3 asset];
    v11 = [v8 playerItemWithAsset:asset];
    [(IMAVPlayer *)self setPlayerItem:v11];

    playerItem = [(IMAVPlayer *)self playerItem];
    [playerItem setAudioTimePitchAlgorithm:*MEMORY[0x277CE5CD8]];

    [(IMAVPlayer *)self playerItem];
    if (isVideo)
      v13 = {;
      [v13 setAllowedAudioSpatializationFormats:7];
    }

    else
      v13 = {;
      [v13 setAllowedAudioSpatializationFormats:4];
    }

    currentItem4 = [(IMAVPlayer *)self currentItem];
    [currentItem4 playhead];
    [(IMAVPlayer *)self setCurrentTime:?];

    playerItem2 = [(IMAVPlayer *)self playerItem];
    [playerItem2 setPreferredForwardBufferDuration:0.0];

    playerItem3 = [(IMAVPlayer *)self playerItem];
    [playerItem3 setPlaybackLikelyToKeepUpTrigger:1];

    currentItem5 = [(IMAVPlayer *)self currentItem];
    isPlayable = [currentItem5 isPlayable];

    if ((isPlayable & 1) == 0 && [(IMAVPlayer *)self isPlaybackRequested])
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
  playerItem4 = [(IMAVPlayer *)self playerItem];
  [(AVPlayer *)player replaceCurrentItemWithPlayerItem:playerItem4];

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

- (void)updateRateForCurrentState:(id)state
{
  stateCopy = state;
  v5 = objc_opt_class();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__IMAVPlayer_updateRateForCurrentState___block_invoke;
  v7[3] = &unk_2782BDFA0;
  v7[4] = self;
  v8 = stateCopy;
  v6 = stateCopy;
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
  manifest = [(IMAVPlayer *)self manifest];
  hasNext = [manifest hasNext];

  player = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(player, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_DEFAULT, "nextRemote", &v16, 2u);
  }

  if ([(IMAVPlayer *)self hasChapters])
  {
    player2 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(player2, OS_LOG_TYPE_DEFAULT))
    {
      currentChapterIndex = [(IMAVPlayer *)self currentChapterIndex];
      currentItem = [(IMAVPlayer *)self currentItem];
      timeChapters = [currentItem timeChapters];
      v10 = [timeChapters count];
      v16 = 134218240;
      v17 = currentChapterIndex;
      v18 = 2048;
      v19 = v10;
      _os_log_impl(&dword_21B365000, player2, OS_LOG_TYPE_DEFAULT, "Current Chapter Index: %lu, Chapter Count: %lu", &v16, 0x16u);
    }

    currentChapterIndex2 = [(IMAVPlayer *)self currentChapterIndex];
    currentItem2 = [(IMAVPlayer *)self currentItem];
    timeChapters2 = [currentItem2 timeChapters];
    v14 = [timeChapters2 count] - 1;

    if (currentChapterIndex2 < v14)
    {
      [(IMAVPlayer *)self nextChapter];
      return 1;
    }
  }

  if (hasNext)
  {
    [(IMAVPlayer *)self nextMediaItem];
    return 1;
  }

  return 0;
}

- (BOOL)previousRemote:(BOOL)remote
{
  v20 = *MEMORY[0x277D85DE8];
  manifest = [(IMAVPlayer *)self manifest];
  hasPrevious = [manifest hasPrevious];

  player = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(player, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.start.value) = 0;
    _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_DEFAULT, "previousRemote", &buf, 2u);
  }

  memset(&buf, 0, sizeof(buf));
  [(IMAVPlayer *)self _skipToPreviousThreshold];
  range = buf;
  CMTimeRangeGetEnd(&time, &range);
  Seconds = CMTimeGetSeconds(&time);
  player2 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(player2, OS_LOG_TYPE_DEFAULT))
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
    _os_log_impl(&dword_21B365000, player2, OS_LOG_TYPE_DEFAULT, "previousRemote: %f, %f, %f", &range, 0x20u);
  }

  if (!remote)
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

  if (hasPrevious)
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
    currentChapter = [(IMAVPlayer *)self currentChapter];
    v6 = currentChapter;
    if (currentChapter)
    {
      [currentChapter mediaTimeRange];
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

- (void)hdcpTimer:(id)timer
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

- (void)setShouldEnforceHDCP:(BOOL)p
{
  pCopy = p;
  [(NSTimer *)self->_hdcpTimer invalidate];
  hdcpTimer = self->_hdcpTimer;
  self->_hdcpTimer = 0;

  if (pCopy)
  {
    v6 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_hdcpTimer_ selector:0 userInfo:0 repeats:3.0];
    v7 = self->_hdcpTimer;
    self->_hdcpTimer = v6;

    MEMORY[0x2821F96F8](v6, v7);
  }
}

- (void)setRequestedRate:(float)rate
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(IMAVPlayer *)self isScanning])
  {
    [(IMAVPlayer *)self scanRate];
    rate = v5;
  }

  else if (self->_seekTimer && self->_seekForward)
  {
    rate = 2.0;
  }

  player = [(IMAVPlayer *)self player];
  [player rate];
  v8 = v7;

  if (v8 != rate)
  {
    player2 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(player2, OS_LOG_TYPE_DEFAULT))
    {
      player3 = [(IMAVPlayer *)self player];
      [player3 rate];
      v14 = 134218240;
      rateCopy = rate;
      v16 = 2048;
      v17 = v11;
      _os_log_impl(&dword_21B365000, player2, OS_LOG_TYPE_DEFAULT, "setRate: %f, old: %f", &v14, 0x16u);
    }

    player4 = [(IMAVPlayer *)self player];
    *&v13 = rate;
    [player4 setRate:v13];
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

- (void)setVolume:(float)volume
{
  if (volume >= 1.0)
  {
    if (volume <= 1.0)
    {
      volumeCopy = volume;
    }

    else
    {
      volumeCopy = 1.0;
    }

    *&v5 = volumeCopy;
    [(AVPlayer *)self->_player setVolume:v5];
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    *&v7 = volumeCopy;
    [standardUserDefaults setFloat:*MEMORY[0x277D3DA48] forKey:v7];

    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults2 setBool:1 forKey:*MEMORY[0x277D3DA40]];
  }
}

- (float)storedVolume
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:*MEMORY[0x277D3DA40]];

  if (!v3)
  {
    return 1.0;
  }

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults2 floatForKey:*MEMORY[0x277D3DA48]];
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

- (void)setPlaybackSpeed:(unint64_t)speed
{
  playbackSpeed = self->_playbackSpeed;
  self->_playbackSpeed = speed;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setInteger:speed forKey:@"IMAVPlayerPlaybackSpeedUserDefaultKey"];

  if ([(IMAVPlayer *)self wasInterrupted])
  {
    [(IMAVPlayer *)self play];
  }

  else
  {
    [(IMAVPlayer *)self updateRateForCurrentState];
    if (playbackSpeed != speed && ![(IMAVPlayer *)self state])
    {
      [(IMAVPlayer *)self updateNowPlayingDurationSnapshot];
    }
  }

  [objc_opt_class() rateForPlaybackSpeed:speed];
  v8 = v7;
  player = [(IMAVPlayer *)self player];
  LODWORD(v10) = v8;
  [player setDefaultRate:v10];

  [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_PlaybackSpeedChanged" userInfo:0];
}

+ (float)rateForPlaybackSpeed:(unint64_t)speed
{
  result = 0.0;
  if (speed <= 5)
  {
    return flt_21B4D1880[speed];
  }

  return result;
}

+ (unint64_t)playbackSpeedForRate:(float)rate
{
  if (rate <= 0.75)
  {
    return 1;
  }

  v3 = 4;
  v4 = 2;
  v5 = 3;
  if (rate < 2.0)
  {
    v5 = 5;
  }

  if (rate >= 1.75)
  {
    v4 = v5;
  }

  if (rate >= 1.5)
  {
    v3 = v4;
  }

  if (rate >= 1.25)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (id)avPlaybackSpeedForSpeed:(unint64_t)speed
{
  [objc_opt_class() rateForPlaybackSpeed:speed];
  v4 = v3;
  v5 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v5 setMaximumFractionDigits:2];
  [v5 setMinimumFractionDigits:0];
  [v5 setNumberStyle:1];
  LODWORD(v6) = v4;
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v8 = [v5 stringFromNumber:v7];

  v9 = MEMORY[0x277CCACA8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [mainBundle localizedStringForKey:@"MENU_PLAYBACK_SPEED" value:&stru_282CBB070 table:0];
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

+ (unint64_t)incrementPlaybackSpeed:(unint64_t)speed
{
  if (speed > 5)
  {
    return 0;
  }

  else
  {
    return qword_21B4D1898[speed];
  }
}

+ (unint64_t)decrementPlaybackSpeed:(unint64_t)speed
{
  if (speed > 5)
  {
    return 0;
  }

  else
  {
    return qword_21B4D18C8[speed];
  }
}

- (BOOL)play
{
  _validatePlay = [(IMAVPlayer *)self _validatePlay];
  if (_validatePlay)
  {
    [(IMAVPlayer *)self setState:1];
  }

  return _validatePlay;
}

- (void)play:(id)play interruptionEvent:(BOOL)event
{
  eventCopy = event;
  playCopy = play;
  if (eventCopy && !self->_stateChangeInterruptionFlag)
  {
    player = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(player, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location) = 0;
      _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_DEFAULT, "Dropping play command because it was the result of an interruption event", &location, 2u);
    }

    v10 = objc_opt_class();
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __37__IMAVPlayer_play_interruptionEvent___block_invoke;
    v18[3] = &unk_2782BDFC8;
    v19 = playCopy;
    [v10 performOnMainQueue:v18];
    v8 = v19;
    goto LABEL_10;
  }

  if (![(IMAVPlayer *)self _validatePlay])
  {
    if (!playCopy)
    {
      goto LABEL_11;
    }

    [(IMAVPlayer *)self setStateChangeInterruptionFlag:eventCopy];
    v7 = objc_opt_class();
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __37__IMAVPlayer_play_interruptionEvent___block_invoke_3;
    v11[3] = &unk_2782BDFC8;
    v12 = playCopy;
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
  v16 = eventCopy;
  v14 = playCopy;
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
  currentItem = [(IMAVPlayer *)self currentItem];
  isPlayable = [currentItem isPlayable];

  if (isPlayable)
  {
    currentItem2 = [(IMAVPlayer *)self currentItem];
    asset = [currentItem2 asset];
    playerItem = [(IMAVPlayer *)self playerItem];
    asset2 = [playerItem asset];

    if (asset != asset2)
    {
      [(IMAVPlayer *)self _updatePlayerForCurrentItem];
    }

    player = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(player, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_DEFAULT, "play", buf, 2u);
    }
  }

  else
  {
    player2 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(player2, OS_LOG_TYPE_ERROR))
    {
      currentItem3 = [(IMAVPlayer *)self currentItem];
      title = [currentItem3 title];
      currentItem4 = [(IMAVPlayer *)self currentItem];
      v14 = &stru_282CBB070;
      if (!currentItem4)
      {
        v14 = @" - currentItem is nil";
      }

      *buf = 138412546;
      v19 = title;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_21B365000, player2, OS_LOG_TYPE_ERROR, "play validation failed for %@%@", buf, 0x16u);
    }

    v15 = objc_opt_class();
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __27__IMAVPlayer__validatePlay__block_invoke;
    v17[3] = &unk_2782BDD90;
    v17[4] = self;
    [v15 performOnMainQueue:v17];
    player = [(IMAVPlayer *)self currentItem];
    [player invalidateAsset];
  }

  return isPlayable;
}

void __27__IMAVPlayer__validatePlay__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) currentItem];
  [v1 notifyUserIsNotPlayable];
}

- (BOOL)pauseWithInitiator:(unint64_t)initiator
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__IMAVPlayer_pauseWithInitiator___block_invoke;
  v4[3] = &unk_2782BE068;
  v4[4] = self;
  return [(IMAVPlayer *)self _stopWithReason:3 initiator:initiator stopBlock:v4];
}

- (BOOL)pauseWithInitiator:(unint64_t)initiator interruptionEvent:(BOOL)event
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__IMAVPlayer_pauseWithInitiator_interruptionEvent___block_invoke;
  v5[3] = &unk_2782BE090;
  v5[4] = self;
  eventCopy = event;
  return [(IMAVPlayer *)self _stopWithReason:3 initiator:initiator stopBlock:v5];
}

- (BOOL)stopWithReason:(unint64_t)reason initiator:(unint64_t)initiator
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__IMAVPlayer_stopWithReason_initiator___block_invoke;
  v5[3] = &unk_2782BE068;
  v5[4] = self;
  return [(IMAVPlayer *)self _stopWithReason:reason initiator:initiator stopBlock:v5];
}

- (BOOL)_stopWithReason:(unint64_t)reason initiator:(unint64_t)initiator stopBlock:(id)block
{
  blockCopy = block;
  causalityObserver = [(IMAVPlayer *)self causalityObserver];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    causalityObserver2 = [(IMAVPlayer *)self causalityObserver];
    [causalityObserver2 player:self willStopWithReason:reason initiator:initiator];
  }

  v12 = blockCopy[2](blockCopy);
  if (v12)
  {
    causalityObserver3 = [(IMAVPlayer *)self causalityObserver];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      causalityObserver4 = [(IMAVPlayer *)self causalityObserver];
      [causalityObserver4 player:self didStopWithReason:reason initiator:initiator];
LABEL_8:

      goto LABEL_9;
    }
  }

  causalityObserver5 = [(IMAVPlayer *)self causalityObserver];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    causalityObserver4 = [(IMAVPlayer *)self causalityObserver];
    [causalityObserver4 player:self failedToStopWithReason:reason initiator:initiator];
    goto LABEL_8;
  }

LABEL_9:

  return v12;
}

- (BOOL)pause
{
  player = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(player, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_DEFAULT, "pause", v5, 2u);
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

- (BOOL)_pause:(BOOL)_pause
{
  if (_pause && !self->_stateChangeInterruptionFlag)
  {
    player = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(player, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_DEFAULT, "Dropping pause command because it was the result of an interruption event", v7, 2u);
    }

    result = 0;
  }

  else
  {
    result = [(IMAVPlayer *)self pause];
  }

  self->_stateChangeInterruptionFlag = _pause;
  return result;
}

- (BOOL)stop
{
  v10[1] = *MEMORY[0x277D85DE8];
  player = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(player, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_DEFAULT, "stop", v8, 2u);
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
  player = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(player, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [(IMAVPlayer *)self isPlaybackRequested];
    _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_DEFAULT, "togglePlayPause: %d", v5, 8u);
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
  player = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(player, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_DEFAULT, "sleep", buf, 2u);
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __19__IMAVPlayer_sleep__block_invoke;
  v4[3] = &unk_2782BDD90;
  v4[4] = self;
  [(IMAVPlayer *)self fadeOutWithDuration:v4 completion:2.0];
}

- (void)fadeOutWithDuration:(double)duration completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  player = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(player, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = duration;
    _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_DEFAULT, "fadeOutWithDuration: %f", &buf, 0xCu);
  }

  if (self->_fadeOutTimer)
  {
    player2 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(player2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_21B365000, player2, OS_LOG_TYPE_DEFAULT, "fadeOutWithDuration: skipping!", &buf, 2u);
    }

    goto LABEL_16;
  }

  currentItem = [(AVPlayer *)self->_player currentItem];
  if (currentItem && [(IMAVPlayer *)self isPlaybackActive])
  {

    if (duration > 2.22044605e-16)
    {
      player3 = [MEMORY[0x277D3DA88] player];
      if (os_log_type_enabled(player3, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_21B365000, player3, OS_LOG_TYPE_DEFAULT, "fadeOutWithDuration: starting!", &buf, 2u);
      }

      v11 = 0.05 / duration;
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
      v18 = completionCopy;
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

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
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

- (void)setState:(unint64_t)state additionalUserInfo:(id)info completion:(id)completion
{
  v24[3] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  completionCopy = completion;
  state = self->_state;
  if (state != state)
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
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
    v24[2] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
    v16 = [v15 mutableCopy];

    currentItem = [(IMAVPlayer *)self currentItem];

    if (currentItem)
    {
      currentItem2 = [(IMAVPlayer *)self currentItem];
      [v16 setObject:currentItem2 forKey:@"IMAVPlayerNotificationKey_CurrentMediaItem"];
    }

    if (infoCopy)
    {
      [v16 addEntriesFromDictionary:infoCopy];
    }

    [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_StateWillChange" userInfo:v16];
    self->_state = state;
    player = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(player, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 134217984;
      stateCopy = state;
      _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_DEFAULT, "setState %lu", &v21, 0xCu);
    }

    if (*&self->_delegateFlags)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained playerStateChanged:self];
    }

    [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_StateDidChange" userInfo:v16];
    [(IMAVPlayer *)self updateRateForCurrentState:completionCopy];
  }

  [(IMAVPlayer *)self scanWithRate:0.0];
  [(IMAVPlayer *)self setWasInterrupted:0];
  [(IMAVPlayer *)self setCurrentInterruptionTime:0.0];
  [(IMAVPlayer *)self setStateChangeInterruptionFlag:0];
  if (completionCopy && state == state)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (unint64_t)loadState
{
  player = [(IMAVPlayer *)self player];
  timeControlStatus = [player timeControlStatus];

  v4 = 2;
  if (!timeControlStatus)
  {
    v4 = 3;
  }

  if (timeControlStatus == 2)
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

- (void)setWasInterrupted:(BOOL)interrupted
{
  v7 = *MEMORY[0x277D85DE8];
  if (self->_wasInterrupted != interrupted)
  {
    interruptedCopy = interrupted;
    player = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(player, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = interruptedCopy;
      _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_DEFAULT, "setWasInterrupted: %d", v6, 8u);
    }

    self->_wasInterrupted = interruptedCopy;
    [(IMAVPlayer *)self updateInfoCenterPlaybackState];
  }
}

- (void)setWasInterruptedEarly:(BOOL)early
{
  v7 = *MEMORY[0x277D85DE8];
  if (self->_wasInterruptedEarly != early)
  {
    earlyCopy = early;
    player = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(player, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = earlyCopy;
      _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_DEFAULT, "setWasInterruptedEarly: %d", v6, 8u);
    }

    self->_wasInterruptedEarly = earlyCopy;
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
    player = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(player, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_DEFAULT, "endBackgroundTask", v5, 2u);
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

- (id)stillFrameAt:(double)at maxSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v9 = MEMORY[0x277CE6408];
  currentItem = [(IMAVPlayer *)self currentItem];
  asset = [currentItem asset];
  v12 = [v9 assetImageGeneratorWithAsset:asset];

  if (scale < 1.0)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    scale = v14;
  }

  [v12 setMaximumSize:{width * scale, height * scale}];
  v28 = **&MEMORY[0x277CC08B0];
  v26 = *&v28.value;
  epoch = v28.epoch;
  [v12 setRequestedTimeToleranceBefore:&v28];
  *&v28.value = v26;
  v28.epoch = epoch;
  [v12 setRequestedTimeToleranceAfter:&v28];
  CMTimeMakeWithSeconds(&v28, at, 1000000000);
  v27 = 0;
  v16 = [v12 copyCGImageAtTime:&v28 actualTime:0 error:&v27];
  v17 = v27;
  v18 = v17;
  if (v17)
  {
    localizedDescription = [v17 localizedDescription];
    NSLog(&cfstr_ImavplayerStil.isa, localizedDescription);

    v20 = 0;
  }

  else
  {
    v21 = MEMORY[0x277D755B8];
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 scale];
    v24 = v23;

    v20 = [v21 imageWithCGImage:v16 scale:0 orientation:v24];
  }

  CGImageRelease(v16);

  return v20;
}

- (BOOL)airplayVideoActive
{
  isExternalPlaybackActive = [(AVPlayer *)self->_player isExternalPlaybackActive];
  if (isExternalPlaybackActive)
  {
    LOBYTE(isExternalPlaybackActive) = [(AVPlayer *)self->_player externalPlaybackType]== 1;
  }

  return isExternalPlaybackActive;
}

- (void)handlePlayerInterruption:(id)interruption
{
  v6 = *MEMORY[0x277D85DE8];
  [(IMAVPlayer *)self setWasInterruptedEarly:[(IMAVPlayer *)self isPlaybackRequested]];
  player = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(player, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [(IMAVPlayer *)self wasInterruptedEarly];
    _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_DEFAULT, "didHandlePlayerInterruption, wasInterruptedEarly %d", v5, 8u);
  }
}

- (void)handleAudioSessionInterruption:(id)interruption
{
  v31 = *MEMORY[0x277D85DE8];
  userInfo = [interruption userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277CB8080]];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v7 = [userInfo objectForKey:*MEMORY[0x277CB8070]];
  unsignedIntegerValue2 = [v7 unsignedIntegerValue];

  isPlaybackRequested = [(IMAVPlayer *)self isPlaybackRequested];
  v10 = [userInfo objectForKey:*MEMORY[0x277CB8078]];
  unsignedIntegerValue3 = [v10 unsignedIntegerValue];

  if (unsignedIntegerValue3 == 1)
  {
    player = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(player, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 67109632;
      *v28 = isPlaybackRequested;
      *&v28[4] = 1024;
      *&v28[6] = [(IMAVPlayer *)self wasInterrupted];
      *v29 = 1024;
      *&v29[2] = [(IMAVPlayer *)self wasInterruptedEarly];
      _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_DEFAULT, "ignoring wasSuspended interruption, wasPlaying: %d, wasInterrupted: %d, wasInterruptedEarly: %d", &v27, 0x14u);
    }
  }

  else if (unsignedIntegerValue)
  {
    if (unsignedIntegerValue == 1)
    {
      player2 = [MEMORY[0x277D3DA88] player];
      if (os_log_type_enabled(player2, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 67109376;
        *v28 = isPlaybackRequested;
        *&v28[4] = 1024;
        *&v28[6] = [(IMAVPlayer *)self wasInterruptedEarly];
        _os_log_impl(&dword_21B365000, player2, OS_LOG_TYPE_DEFAULT, "handleInterruption began, wasPlaying %d, wasInterruptedEarly %d", &v27, 0xEu);
      }

      [(IMAVPlayer *)self _pause];
      v14 = isPlaybackRequested || [(IMAVPlayer *)self wasInterruptedEarly];
      [(IMAVPlayer *)self setWasInterrupted:v14];
      [(IMAVPlayer *)self currentTime];
      [(IMAVPlayer *)self setCurrentInterruptionTime:?];
      [(IMAVPlayer *)self setWasInterruptedEarly:0];
    }
  }

  else
  {
    player3 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(player3, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 134218496;
      *v28 = unsignedIntegerValue2;
      *&v28[8] = 1024;
      *v29 = [(IMAVPlayer *)self wasInterrupted];
      *&v29[4] = 1024;
      v30 = unsignedIntegerValue2 & 1;
      _os_log_impl(&dword_21B365000, player3, OS_LOG_TYPE_DEFAULT, "handleInterruption ended: %lu wasInterrupted: %d resumable: %d", &v27, 0x18u);
    }

    if ((unsignedIntegerValue2 & 1) != 0 && [(IMAVPlayer *)self wasInterrupted])
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

- (void)onRouteChange:(id)change
{
  userInfo = [change userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277CB8220]];

  if ([v5 integerValue] == 2)
  {
    player = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(player, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_DEFAULT, "route change: old device unavailable", buf, 2u);
    }

    wasInterrupted = [(IMAVPlayer *)self wasInterrupted];
    player2 = [MEMORY[0x277D3DA88] player];
    v9 = os_log_type_enabled(player2, OS_LOG_TYPE_DEFAULT);
    if (wasInterrupted)
    {
      if (v9)
      {
        *buf = 0;
        _os_log_impl(&dword_21B365000, player2, OS_LOG_TYPE_DEFAULT, "next endInterruption should NOT be resumable", buf, 2u);
      }
    }

    else
    {
      if (v9)
      {
        *buf = 0;
        _os_log_impl(&dword_21B365000, player2, OS_LOG_TYPE_DEFAULT, "pausing: old device is unavailable", buf, 2u);
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

  audioSession = [(IMAVPlayer *)self audioSession];

  if (audioSession)
  {
    audioSession2 = [(IMAVPlayer *)self audioSession];
    player = [(IMAVPlayer *)self player];
    [player setAudioSession:audioSession2];
  }

  player2 = [(IMAVPlayer *)self player];
  [player2 setActionAtItemEnd:2];
}

- (void)setPlayer:(id)player
{
  playerCopy = player;
  if (self->_player != playerCopy)
  {
    v7 = playerCopy;
    [(IMAVPlayer *)self willChangeValueForKey:@"player"];
    if (self->_player)
    {
      [(IMAVPlayer *)self stopObservingPlayer:?];
      [(IMAVPlayer *)self setPlayerItem:0];
    }

    [(IMAVPlayer *)self removePeriodicTimeObservers];
    [(IMAVPlayer *)self clearTimeObservers];
    objc_storeStrong(&self->_player, player);
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
    playerCopy = v7;
  }
}

- (void)stopObservingPlayerItem:(id)item
{
  itemCopy = item;
  [itemCopy removeObserver:self forKeyPath:@"status"];
  [itemCopy removeObserver:self forKeyPath:@"playbackLikelyToKeepUp"];
  [itemCopy removeObserver:self forKeyPath:@"playbackBufferEmpty"];
  [itemCopy removeObserver:self forKeyPath:@"loadedTimeRanges"];
  [itemCopy removeObserver:self forKeyPath:@"presentationSize"];
}

- (void)stopObservingPlayer:(id)player
{
  playerCopy = player;
  [playerCopy removeObserver:self forKeyPath:@"currentItem" context:0];
  [playerCopy removeObserver:self forKeyPath:@"rate" context:0];
  [playerCopy removeObserver:self forKeyPath:@"timeControlStatus" context:0];
  [playerCopy removeObserver:self forKeyPath:@"volume" context:0];
  if ([MEMORY[0x277D3DB60] platformSupportsVideo])
  {
    [playerCopy removeObserver:self forKeyPath:@"externalPlaybackActive" context:0];
  }
}

- (void)resetPlayer:(id)player
{
  player = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(player, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_ERROR, "resetPlayer!", buf, 2u);
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v107[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"currentItem"])
  {
    player = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(player, OS_LOG_TYPE_DEFAULT))
    {
      currentItem = [(AVPlayer *)self->_player currentItem];
      currentItem2 = [(IMAVPlayer *)self currentItem];
      title = [currentItem2 title];
      *buf = 138412546;
      longValue4 = currentItem;
      v102 = 2112;
      status2 = title;
      _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_DEFAULT, "currentItem changed: %@. Title: %@", buf, 0x16u);
    }

    v17 = [changeCopy objectForKey:*MEMORY[0x277CCA300]];
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

    currentItem3 = [(AVPlayer *)self->_player currentItem];

    if (currentItem3)
    {
      v20 = objc_opt_class();
      v95[0] = MEMORY[0x277D85DD0];
      v95[1] = 3221225472;
      v95[2] = __61__IMAVPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v95[3] = &unk_2782BDD90;
      v95[4] = self;
      [v20 performOnMainQueue:v95];
      currentItem4 = [(AVPlayer *)self->_player currentItem];
      [currentItem4 addObserver:self forKeyPath:@"status" options:6 context:0];

      currentItem5 = [(AVPlayer *)self->_player currentItem];
      [currentItem5 addObserver:self forKeyPath:@"playbackLikelyToKeepUp" options:0 context:0];

      currentItem6 = [(AVPlayer *)self->_player currentItem];
      [currentItem6 addObserver:self forKeyPath:@"playbackBufferEmpty" options:0 context:0];

      currentItem7 = [(AVPlayer *)self->_player currentItem];
      [currentItem7 addObserver:self forKeyPath:@"loadedTimeRanges" options:0 context:0];

      currentItem8 = [(AVPlayer *)self->_player currentItem];
      [currentItem8 addObserver:self forKeyPath:@"presentationSize" options:0 context:0];

      currentItem9 = [(AVPlayer *)self->_player currentItem];
      [currentItem9 willChangeValueForKey:@"status"];

      currentItem10 = [(AVPlayer *)self->_player currentItem];
      [currentItem10 didChangeValueForKey:@"status"];

      currentItem11 = [(AVPlayer *)self->_player currentItem];
      [currentItem11 willChangeValueForKey:@"playbackLikelyToKeepUp"];

      currentItem12 = [(AVPlayer *)self->_player currentItem];
      [currentItem12 didChangeValueForKey:@"playbackLikelyToKeepUp"];

      currentItem13 = [(AVPlayer *)self->_player currentItem];
      [currentItem13 willChangeValueForKey:@"playbackBufferEmpty"];

      currentItem14 = [(AVPlayer *)self->_player currentItem];
      [currentItem14 didChangeValueForKey:@"playbackBufferEmpty"];

      currentItem15 = [(AVPlayer *)self->_player currentItem];
      [currentItem15 willChangeValueForKey:@"loadedTimeRanges"];

      currentItem16 = [(AVPlayer *)self->_player currentItem];
      [currentItem16 didChangeValueForKey:@"loadedTimeRanges"];

      currentItem17 = [(AVPlayer *)self->_player currentItem];
      [currentItem17 willChangeValueForKey:@"presentationSize"];

      currentItem18 = [(AVPlayer *)self->_player currentItem];
      [currentItem18 didChangeValueForKey:@"presentationSize"];

      [(IMPlayerItem *)self->_currentItem duration];
      [(IMAVPlayer *)self setDurationBeforeItemLoaded:?];
      currentItem19 = [(AVPlayer *)self->_player currentItem];
      asset = [currentItem19 asset];
      v94[0] = MEMORY[0x277D85DD0];
      v94[1] = 3221225472;
      v94[2] = __61__IMAVPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
      v94[3] = &unk_2782BDD90;
      v94[4] = self;
      [asset loadValuesAsynchronouslyForKeys:&unk_282CCBC28 completionHandler:v94];
    }

    goto LABEL_21;
  }

  if ([pathCopy isEqualToString:@"rate"])
  {
    v38 = [changeCopy objectForKey:*MEMORY[0x277CCA300]];
    player5 = v38;
    if (v38)
    {
      longValue = [v38 longValue];
      [(AVPlayer *)self->_player rate];
      if (longValue == v41)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_19;
  }

  if ([pathCopy isEqualToString:@"timeControlStatus"])
  {
    v42 = [changeCopy objectForKey:*MEMORY[0x277CCA300]];
    player5 = v42;
    if (v42)
    {
      longValue2 = [v42 longValue];
      if (longValue2 == [(AVPlayer *)self->_player timeControlStatus])
      {
        goto LABEL_20;
      }
    }

LABEL_19:
    [(IMAVPlayer *)self _updateForCurrentRateAndTimeControlStatus];
LABEL_20:

    goto LABEL_21;
  }

  if ([pathCopy isEqualToString:@"volume"])
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

  if ([pathCopy isEqualToString:@"status"])
  {
    currentItem20 = [(AVPlayer *)self->_player currentItem];

    if (!currentItem20)
    {
      goto LABEL_21;
    }

    v46 = *MEMORY[0x277CCA300];
    v47 = [changeCopy objectForKey:*MEMORY[0x277CCA300]];
    player5 = v47;
    if (v47)
    {
      longValue3 = [v47 longValue];
      currentItem21 = [(AVPlayer *)self->_player currentItem];
      status = [currentItem21 status];

      if (longValue3 == status)
      {
        player2 = [MEMORY[0x277D3DA88] player];
        if (os_log_type_enabled(player2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          longValue4 = [player5 longValue];
          _os_log_impl(&dword_21B365000, player2, OS_LOG_TYPE_DEFAULT, "ignoring item status KVO because it is unchanged: %ld", buf, 0xCu);
        }

        goto LABEL_74;
      }
    }

    v90 = objectCopy;
    player3 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(player3, OS_LOG_TYPE_DEFAULT))
    {
      longValue5 = [player5 longValue];
      currentItem22 = [(AVPlayer *)self->_player currentItem];
      *buf = 134218240;
      longValue4 = longValue5;
      v102 = 2048;
      status2 = [currentItem22 status];
      _os_log_impl(&dword_21B365000, player3, OS_LOG_TYPE_DEFAULT, "item status changed from: %ld to: %ld", buf, 0x16u);
    }

    if (player5)
    {
      v106 = v46;
      v107[0] = player5;
      v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:&v106 count:1];
    }

    else
    {
      v56 = 0;
    }

    [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_MediaItemStatusDidChange" userInfo:v56];
    currentItem23 = [(AVPlayer *)self->_player currentItem];
    status3 = [currentItem23 status];

    if (status3 == 1)
    {
      currentItem24 = [(IMAVPlayer *)self currentItem];

      if (currentItem24)
      {
        v96 = @"IMAVPlayerNotificationKey_CurrentMediaItem";
        currentItem25 = [(IMAVPlayer *)self currentItem];
        v97 = currentItem25;
        v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
        [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_PlayerItemReadyToPlay" userInfo:v86];
        goto LABEL_71;
      }
    }

    else if (status3 == 2)
    {
      currentItem26 = [(AVPlayer *)self->_player currentItem];
      currentItem25 = [currentItem26 error];

      isPlaybackRequested = [(IMAVPlayer *)self isPlaybackRequested];
      if ((*&self->_delegateFlags & 2) != 0)
      {
        v73 = objc_loadWeakRetained(&self->_delegate);
        [v73 playerErrorDidOccur:self error:currentItem25];
      }

      player4 = [MEMORY[0x277D3DA88] player];
      if (os_log_type_enabled(player4, OS_LOG_TYPE_ERROR))
      {
        code = [currentItem25 code];
        domain = [currentItem25 domain];
        v77 = domain;
        v78 = @"no";
        *buf = 134218498;
        longValue4 = code;
        v102 = 2112;
        if (isPlaybackRequested)
        {
          v78 = @"yes";
        }

        status2 = domain;
        v104 = 2112;
        v105 = v78;
        _os_log_impl(&dword_21B365000, player4, OS_LOG_TYPE_ERROR, "Player error encountered, code %ld domain: %@, was playing: %@. Invalidating asset.", buf, 0x20u);
      }

      if (isPlaybackRequested)
      {
        playbackErrorFallback = [(IMAVPlayer *)self playbackErrorFallback];
        if (playbackErrorFallback)
        {
          v80 = playbackErrorFallback;
          playbackErrorFallback2 = [(IMAVPlayer *)self playbackErrorFallback];
          currentItem27 = [(IMAVPlayer *)self currentItem];
          v83 = (playbackErrorFallback2)[2](playbackErrorFallback2, currentItem27, currentItem25);

          if (v83)
          {
            goto LABEL_72;
          }
        }
      }

      if ([currentItem25 code] != -11819)
      {
        v84 = objc_opt_class();
        v93[0] = MEMORY[0x277D85DD0];
        v93[1] = 3221225472;
        v93[2] = __61__IMAVPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_245;
        v93[3] = &unk_2782BDD90;
        v93[4] = self;
        [v84 performOnMainQueue:v93];
      }

      currentItem28 = [(IMAVPlayer *)self currentItem];
      [currentItem28 cleanupAfterError];

      v99[0] = currentItem25;
      v98[0] = @"IMAVPlayerNotificationKey_Error";
      v98[1] = @"IMAVPlayerNotificationKey_PlaybackInterrupted";
      v86 = [MEMORY[0x277CCABB0] numberWithBool:isPlaybackRequested];
      v99[1] = v86;
      v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:2];
      [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_ErrorDidOccur" userInfo:v87];

LABEL_71:
LABEL_72:
    }

    objectCopy = v90;
    goto LABEL_21;
  }

  if ([pathCopy isEqualToString:@"externalPlaybackActive"] && objc_msgSend(MEMORY[0x277D3DB60], "platformSupportsVideo"))
  {
    [(IMAVPlayer *)self willChangeValueForKey:@"airPlayVideoActive"];
    [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_AirplayActiveDidChange" userInfo:0];
    [(IMAVPlayer *)self didChangeValueForKey:@"airPlayVideoActive"];
    goto LABEL_21;
  }

  if ([pathCopy isEqualToString:@"playbackBufferEmpty"])
  {
    [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_BufferEmptyChanged" userInfo:0];
    player5 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(player5, OS_LOG_TYPE_DEFAULT))
    {
      currentItem29 = [(AVPlayer *)self->_player currentItem];
      *buf = 67109120;
      LODWORD(longValue4) = [currentItem29 isPlaybackBufferEmpty];
      _os_log_impl(&dword_21B365000, player5, OS_LOG_TYPE_DEFAULT, "playbackBufferEmpty: %d", buf, 8u);
    }

    goto LABEL_20;
  }

  if ([pathCopy isEqualToString:@"playbackLikelyToKeepUp"])
  {
    currentItem30 = [(AVPlayer *)self->_player currentItem];
    [currentItem30 isPlaybackLikelyToKeepUp];

    player5 = [(IMAVPlayer *)self currentItem];
    player2 = [(IMAVPlayer *)self currentItem];
    [player2 isVideo];
    kdebug_trace();
LABEL_74:

    goto LABEL_20;
  }

  if (![pathCopy isEqualToString:@"loadedTimeRanges"])
  {
    if (![pathCopy isEqualToString:@"presentationSize"])
    {
      v91.receiver = self;
      v91.super_class = IMAVPlayer;
      [(IMAVPlayer *)&v91 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
      goto LABEL_21;
    }

    v44 = @"IMAVPlayerNotification_MediaItemPresentationSizeDidChange";
    goto LABEL_26;
  }

  player6 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(player6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21B365000, player6, OS_LOG_TYPE_INFO, "loadedTimeRanges did change", buf, 2u);
  }

  [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_LoadedDurationDidChange" userInfo:0];
  if ((*&self->_delegateFlags & 0x200) != 0)
  {
    delegate = [(IMAVPlayer *)self delegate];
    [delegate playerLoadedDurationChanged:self];
  }

  if ([(IMAVPlayer *)self loadState]== 2)
  {
    currentItem31 = [(IMAVPlayer *)self currentItem];
    [currentItem31 playhead];
    v62 = floor(v61);

    player7 = [(IMAVPlayer *)self player];
    currentItem32 = [player7 currentItem];
    loadedTimeRanges = [currentItem32 loadedTimeRanges];
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = __61__IMAVPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_249;
    v92[3] = &__block_descriptor_40_e24_B32__0__NSValue_8Q16_B24l;
    *&v92[4] = v62;
    v66 = [loadedTimeRanges indexOfObjectPassingTest:v92];

    if (v66 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(IMAVPlayer *)self requestedRate];
      if (v67 > 0.0)
      {
        player8 = [(IMAVPlayer *)self player];
        [(IMAVPlayer *)self requestedRate];
        [player8 playImmediatelyAtRate:?];
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
  player = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(player, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_DEFAULT, "_durationAvailable", v7, 2u);
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
  currentItem = [(IMAVPlayer *)self currentItem];
  paidSubscriptionActive = [currentItem paidSubscriptionActive];

  if ((paidSubscriptionActive & 1) == 0)
  {
    v5 = MEMORY[0x277D3DB58];
    currentItem2 = [(IMAVPlayer *)self currentItem];
    episodeStoreId = [currentItem2 episodeStoreId];
    currentItem3 = [(IMAVPlayer *)self currentItem];
    [currentItem3 duration];
    v9 = [v5 episodeDurationComparisonWithEpisodeAdamId:episodeStoreId duration:?];
    [v19 sendEvent:v9];
  }

  currentItem4 = [(IMAVPlayer *)self currentItem];
  [currentItem4 playhead];
  if (v11 == 0.0)
  {
    currentItem5 = [(IMAVPlayer *)self currentItem];
    playCount = [currentItem5 playCount];

    if (playCount)
    {
      goto LABEL_7;
    }

    v14 = MEMORY[0x277D3DB58];
    [(IMAVPlayer *)self durationBeforeItemLoaded];
    v16 = v15;
    currentItem4 = [(IMAVPlayer *)self currentItem];
    [currentItem4 duration];
    v18 = [v14 episodeDurationComparisonWithMapiProvidedDuration:v16 playerItemDuration:v17];
    [v19 sendEvent:v18];
  }

LABEL_7:
}

- (void)playerItemDidReachEnd:(id)end
{
  player = self->_player;
  endCopy = end;
  currentItem = [(AVPlayer *)player currentItem];
  object = [endCopy object];

  if (currentItem == object)
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
  player = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(player, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_DEFAULT, "sendItemEndedNotification", v14, 2u);
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

  causalityObserver = [(IMAVPlayer *)self causalityObserver];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    causalityObserver2 = [(IMAVPlayer *)self causalityObserver];
    [causalityObserver2 player:self willStopWithReason:13 initiator:2];
  }

  [(IMAVPlayer *)self nextMediaItem];
  causalityObserver3 = [(IMAVPlayer *)self causalityObserver];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    causalityObserver4 = [(IMAVPlayer *)self causalityObserver];
    [causalityObserver4 player:self didStopWithReason:13 initiator:2];
  }
}

- (void)_failedToPlayToEndNotification:(id)notification
{
  v14[1] = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  player = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(player, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_DEFAULT, "_failedToPlayToEndNotification", v12, 2u);
  }

  object = [notificationCopy object];
  playerItem = [(IMAVPlayer *)self playerItem];

  if (object == playerItem)
  {
    userInfo = [notificationCopy userInfo];
    v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CE60C8]];

    if ([v9 code] != -11870 && -[IMAVPlayer isPlaybackRequested](self, "isPlaybackRequested"))
    {
      [(IMAVPlayer *)self pause];
      [(IMAVPlayer *)self nextMediaItem];
    }

    currentItem = [(IMAVPlayer *)self currentItem];
    [currentItem cleanupAfterError];

    v13 = @"IMAVPlayerNotificationKey_Error";
    v14[0] = v9;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_FailedToPlayToEndTime" userInfo:v11];
  }
}

- (void)_postNotificationName:(id)name userInfo:(id)info
{
  nameCopy = name;
  infoCopy = info;
  v8 = objc_opt_class();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__IMAVPlayer__postNotificationName_userInfo___block_invoke;
  v11[3] = &unk_2782BDDB8;
  v12 = nameCopy;
  selfCopy = self;
  v14 = infoCopy;
  v9 = infoCopy;
  v10 = nameCopy;
  [v8 performOnMainQueue:v11];
}

void __45__IMAVPlayer__postNotificationName_userInfo___block_invoke(void *a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:a1[4] object:a1[5] userInfo:a1[6]];
}

- (void)setCurrentTime:(double)time fromMediaRemote:(BOOL)remote
{
  remoteCopy = remote;
  v26 = *MEMORY[0x277D85DE8];
  player = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(player, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    timeCopy = time;
    v24 = 1024;
    v25 = remoteCopy;
    _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_DEFAULT, "setCurrentTime %f fromMediaRemote %d", buf, 0x12u);
  }

  timeCopy3 = 0.0;
  if (time >= 0.0)
  {
    if ([(IMAVPlayer *)self isDurationReady])
    {
      [(IMAVPlayer *)self duration];
      timeCopy3 = time;
      if (v9 < time)
      {
        [(IMAVPlayer *)self duration];
        timeCopy3 = v10;
      }
    }

    else
    {
      timeCopy3 = time;
    }
  }

  v20[0] = @"IMAVPlayerNotificationKey_OldPlayheadTime";
  currentTime = self->_currentTime;
  *&currentTime = currentTime;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:{currentTime, @"IMAVPlayerNotificationKey_OldPlayheadTime"}];
  v21[0] = v12;
  v20[1] = @"IMAVPlayerNotificationKey_NewPlayheadTime";
  *&v13 = timeCopy3;
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  v21[1] = v14;
  v20[2] = @"IMAVPlayerNotificationKey_FromMediaRemote";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:remoteCopy];
  v21[2] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v17 = [v16 mutableCopy];

  currentItem = [(IMAVPlayer *)self currentItem];

  if (currentItem)
  {
    currentItem2 = [(IMAVPlayer *)self currentItem];
    [v17 setObject:currentItem2 forKey:@"IMAVPlayerNotificationKey_CurrentMediaItem"];
  }

  [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_PlayerHeadWillChange" userInfo:v17];
  self->_currentTime = timeCopy3;
  if (![(IMAVPlayer *)self isUpdatingCurrentTime])
  {
    [(IMAVPlayer *)self setIsUpdatingCurrentTime:1];
    [(IMAVPlayer *)self _updatePlayerToCurrentTime:0];
  }

  [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_PlayerHeadDidChange" userInfo:v17];
}

- (void)_updatePlayerToCurrentTime:(id)time
{
  v20 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  playerItem = [(IMAVPlayer *)self playerItem];

  currentTime = self->_currentTime;
  if (playerItem)
  {
    playerItem2 = [(IMAVPlayer *)self playerItem];
    v8 = playerItem2;
    if (playerItem2)
    {
      [playerItem2 currentTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);

    if (vabdd_f64(Seconds, currentTime) <= 0.5)
    {
      [(IMAVPlayer *)self _updatePlayerTimeCompleted:timeCopy completion:currentTime];
    }

    else
    {
      player = [MEMORY[0x277D3DA88] player];
      if (os_log_type_enabled(player, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(time.value) = 134218240;
        *(&time.value + 4) = currentTime;
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = Seconds;
        _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_DEFAULT, "_updatePlayerToTime: %f currentTime: %f", &time, 0x16u);
      }

      playerItem3 = [(IMAVPlayer *)self playerItem];
      CMTimeMakeWithSeconds(&time, currentTime, 1000000000);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __41__IMAVPlayer__updatePlayerToCurrentTime___block_invoke;
      v16[3] = &unk_2782BE100;
      v18 = currentTime;
      v16[4] = self;
      v17 = timeCopy;
      v14 = *MEMORY[0x277CC08F0];
      v15 = *(MEMORY[0x277CC08F0] + 16);
      v12 = v14;
      v13 = v15;
      [playerItem3 seekToTime:&time toleranceBefore:&v14 toleranceAfter:&v12 completionHandler:v16];
    }
  }

  else
  {
    [(IMAVPlayer *)self _updatePlayerTimeCompleted:timeCopy completion:self->_currentTime];
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

- (void)_updatePlayerTimeCompleted:(double)completed completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  player = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(player, OS_LOG_TYPE_DEFAULT))
  {
    currentTime = self->_currentTime;
    playerItem = [(IMAVPlayer *)self playerItem];
    v10 = playerItem;
    if (playerItem)
    {
      [playerItem currentTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
    LODWORD(time.value) = 134218496;
    *(&time.value + 4) = completed;
    LOWORD(time.flags) = 2048;
    *(&time.flags + 2) = currentTime;
    HIWORD(time.epoch) = 2048;
    v17 = Seconds;
    _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_DEFAULT, "_updatePlayerTimeCompleted set time %f, currentTime %f, playerTime: %f", &time, 0x20u);
  }

  if (vabdd_f64(self->_currentTime, completed) >= 1.0)
  {
    v13 = dispatch_time(0, 500000000);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __52__IMAVPlayer__updatePlayerTimeCompleted_completion___block_invoke;
    v14[3] = &unk_2782BDFA0;
    v14[4] = self;
    v15 = completionCopy;
    dispatch_after(v13, MEMORY[0x277D85CD0], v14);
  }

  else
  {
    [(IMAVPlayer *)self setIsUpdatingCurrentTime:0];
    [(IMAVPlayer *)self forceTriggerTimeObserverAt:completed];
    if (![(IMAVPlayer *)self isPlaybackActive])
    {
      [(IMAVPlayer *)self duration];
      [(IMAVPlayer *)self sendPeriodicTimeEvent:0 duration:completed finished:v12];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (void)startSeek:(BOOL)seek
{
  if (seek)
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
    self->_seekForward = seek;
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

- (void)onSeekTimer:(id)timer
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

- (void)setScrubbing:(BOOL)scrubbing
{
  if (self->_scrubbing != scrubbing)
  {
    self->_scrubbing = scrubbing;
  }
}

- (BOOL)isDurationReady
{
  currentItem = [(IMAVPlayer *)self currentItem];
  if ([currentItem isAssetLoaded])
  {
    currentItem2 = [(IMAVPlayer *)self currentItem];
    asset = [currentItem2 asset];
    v6 = [asset statusOfValueForKey:@"duration" error:0] == 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)duration
{
  currentItem = [(IMAVPlayer *)self currentItem];
  [currentItem duration];
  v4 = v3;

  return v4;
}

- (double)loadedDuration
{
  v21 = *MEMORY[0x277D85DE8];
  playerItem = [(IMAVPlayer *)self playerItem];

  if (!playerItem)
  {
    return 0.0;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  playerItem2 = [(IMAVPlayer *)self playerItem];
  loadedTimeRanges = [playerItem2 loadedTimeRanges];

  v6 = [loadedTimeRanges countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(loadedTimeRanges);
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

      v7 = [loadedTimeRanges countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  currentItem = [(AVPlayer *)self->_player currentItem];
  isPlaybackBufferEmpty = [currentItem isPlaybackBufferEmpty];

  return isPlaybackBufferEmpty;
}

- (void)scanWithRate:(float)rate
{
  [(IMAVPlayer *)self scanRate];
  if (*&v5 != rate)
  {
    *&v5 = rate;
    [(IMAVPlayer *)self setScanRate:v5];
    [(IMAVPlayer *)self updateRateForCurrentState];
    v6 = 0;
    if (![(IMAVPlayer *)self isScanning])
    {
      [(IMAVPlayer *)self storedVolume];
      v6 = v7;
    }

    player = [(IMAVPlayer *)self player];
    LODWORD(v8) = v6;
    [player setVolume:v8];
  }
}

- (void)addTimeObserver:(double)observer
{
  if (observer >= 0.0)
  {
    v7 = v3;
    v8 = v4;
    CMTimeMakeWithSeconds(&v6, observer, 1000000000);
    [(IMAVPlayer *)self addCMTimeObserver:&v6];
  }
}

- (void)addCMTimeObserver:(id *)observer
{
  if (observer->var2)
  {
    if (!self->_observingTimes)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      observingTimes = self->_observingTimes;
      self->_observingTimes = v5;
    }

    v8 = *&observer->var0;
    var3 = observer->var3;
    v7 = [MEMORY[0x277CCAE60] valueWithCMTime:&v8];
    [(NSMutableArray *)self->_observingTimes addObject:v7];
    self->_timeObserverNeedsUpdate = 1;
  }
}

- (void)removeCMTimeObserver:(id *)observer
{
  observingTimes = self->_observingTimes;
  v5 = *observer;
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
    periodicTimeObserver = [(IMAVPlayer *)self periodicTimeObserver];

    if (!periodicTimeObserver)
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

    nowPlayingInfoPeriodicTimeObserver = [(IMAVPlayer *)self nowPlayingInfoPeriodicTimeObserver];

    if (!nowPlayingInfoPeriodicTimeObserver)
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
  periodicTimeObserver = [(IMAVPlayer *)self periodicTimeObserver];

  if (periodicTimeObserver)
  {
    player = self->_player;
    periodicTimeObserver2 = [(IMAVPlayer *)self periodicTimeObserver];
    [(AVPlayer *)player removeTimeObserver:periodicTimeObserver2];

    [(IMAVPlayer *)self setPeriodicTimeObserver:0];
  }

  nowPlayingInfoPeriodicTimeObserver = [(IMAVPlayer *)self nowPlayingInfoPeriodicTimeObserver];

  if (nowPlayingInfoPeriodicTimeObserver)
  {
    v7 = self->_player;
    nowPlayingInfoPeriodicTimeObserver2 = [(IMAVPlayer *)self nowPlayingInfoPeriodicTimeObserver];
    [(AVPlayer *)v7 removeTimeObserver:nowPlayingInfoPeriodicTimeObserver2];

    [(IMAVPlayer *)self setNowPlayingInfoPeriodicTimeObserver:0];
  }
}

- (void)sendPeriodicTimeEvent:(double)event duration:(double)duration finished:(BOOL)finished
{
  finishedCopy = finished;
  v27 = *MEMORY[0x277D85DE8];
  if (![(IMAVPlayer *)self isUpdatingCurrentTime])
  {
    player = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(player, OS_LOG_TYPE_INFO))
    {
      currentItem = [(IMAVPlayer *)self currentItem];
      title = [currentItem title];
      player2 = [(IMAVPlayer *)self player];
      v13 = player2;
      if (player2)
      {
        [player2 currentTime];
      }

      else
      {
        memset(&v21, 0, sizeof(v21));
      }

      Seconds = CMTimeGetSeconds(&v21);
      currentTime = self->_currentTime;
      LODWORD(v21.value) = 138413314;
      *(&v21.value + 4) = title;
      LOWORD(v21.flags) = 2048;
      *(&v21.flags + 2) = event;
      HIWORD(v21.epoch) = 2048;
      durationCopy = duration;
      v23 = 2048;
      v24 = Seconds;
      v25 = 2048;
      v26 = currentTime;
      _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_INFO, "sendPeriodicTimeEvent for episode: %@, time: %f, duration: %f, playerTime: %f, storedTime: %f", &v21, 0x34u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      delegateFlags = self->_delegateFlags;

      if ((delegateFlags & 0x20) != 0)
      {
        v18 = objc_loadWeakRetained(&self->_delegate);
        [v18 playerPeriodicUpdate:self elapsed:finishedCopy duration:event isFinished:duration];
      }
    }

    [(IMAVPlayer *)self autoStopMediaTime];
    if (event + -2.0 >= v19)
    {
      [(IMAVPlayer *)self enforceAutoStopForMode:4];
    }

    self->_currentTime = event;
    currentItem2 = [(IMAVPlayer *)self currentItem];
    [currentItem2 setPlayhead:event];

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

- (void)setupTimeObserver:(id)observer
{
  v26 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  [(IMAVPlayer *)self _assertMainThread];
  player = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(player, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = observerCopy;
    _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_INFO, "add BoundaryTimeObserver timeValue %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  selfCopy = self;
  v25 = selfCopy;
  player = selfCopy->_player;
  v8 = [MEMORY[0x277CBEA60] arrayWithObject:observerCopy];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __32__IMAVPlayer_setupTimeObserver___block_invoke;
  v18 = &unk_2782BDD18;
  p_buf = &buf;
  v9 = observerCopy;
  v19 = v9;
  v10 = [(AVPlayer *)player addBoundaryTimeObserverForTimes:v8 queue:0 usingBlock:&v15];

  timeObservers = selfCopy->_timeObservers;
  if (!timeObservers)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = selfCopy->_timeObservers;
    p_timeObservers = &selfCopy->_timeObservers;
    *p_timeObservers = v12;

    timeObservers = *p_timeObservers;
  }

  [(NSMutableArray *)timeObservers addObject:v10, v15, v16, v17, v18];

  _Block_object_dispose(&buf, 8);
}

- (void)triggerTimeObserverAt:(id)at
{
  v10 = *MEMORY[0x277D85DE8];
  atCopy = at;
  v5 = atCopy;
  if (atCopy)
  {
    [atCopy CMTimeValue];
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
    player = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(player, OS_LOG_TYPE_INFO))
    {
      LODWORD(v9.value) = 134217984;
      *(&v9.value + 4) = Seconds;
      _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_INFO, "triggerTimeObserver %f", &v9, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained player:self callbackForTime:Seconds];
  }
}

- (void)forceTriggerTimeObserverAt:(double)at
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
        if (Seconds > at)
        {
          v8 = v11;
          goto LABEL_16;
        }

        if (Seconds == at)
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

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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

- (void)updateNowPlayingMetadataIncludingArtwork:(BOOL)artwork
{
  artworkCopy = artwork;
  currentItem = [(IMAVPlayer *)self currentItem];

  if (!currentItem)
  {
    return;
  }

  currentItem2 = [(IMAVPlayer *)self currentItem];
  title = [currentItem2 title];

  currentItem3 = [(IMAVPlayer *)self currentItem];
  album = [currentItem3 album];

  v34 = title;
  v10 = album;
  currentItem4 = [(IMAVPlayer *)self currentItem];
  timeChapters = [currentItem4 timeChapters];
  if (!timeChapters)
  {
    v18 = v10;
    v19 = v34;
LABEL_15:

    goto LABEL_16;
  }

  v13 = timeChapters;
  currentChapterIndex = self->_currentChapterIndex;
  currentItem5 = [(IMAVPlayer *)self currentItem];
  timeChapters2 = [currentItem5 timeChapters];
  v17 = [timeChapters2 count];

  v18 = v10;
  v19 = v34;
  if (currentChapterIndex < v17)
  {
    currentItem6 = [(IMAVPlayer *)self currentItem];
    timeChapters3 = [currentItem6 timeChapters];
    v22 = [timeChapters3 objectAtIndexedSubscript:self->_currentChapterIndex];
    currentItem4 = [v22 title];

    currentItem7 = [(IMAVPlayer *)self currentItem];
    title2 = [currentItem7 title];

    v18 = v10;
    v19 = v34;
    if ([currentItem4 length])
    {
      chapterMetadataMode = [(IMAVPlayer *)self chapterMetadataMode];
      v26 = [title2 length];
      if (chapterMetadataMode == 1)
      {
        v19 = v34;
        if (v26)
        {
          v19 = title2;
        }

        v18 = currentItem4;
        v27 = v10;
        goto LABEL_13;
      }

      v18 = v10;
      v19 = v34;
      if (v26)
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %@", currentItem4, title2];
        v27 = v34;
        v18 = v10;
LABEL_13:
      }
    }

    goto LABEL_15;
  }

LABEL_16:
  currentItem8 = [(IMAVPlayer *)self currentItem];
  contentItem = [currentItem8 contentItem];

  if (artworkCopy)
  {
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"-%lu", -[IMAVPlayer currentChapterIndex](self, "currentChapterIndex")];
    currentItem9 = [(IMAVPlayer *)self currentItem];
    artworkIdentifier = [currentItem9 artworkIdentifier];
    v33 = [artworkIdentifier stringByAppendingString:v30];

    [contentItem setArtworkIdentifier:v33];
    [contentItem invalidateArtwork];
  }

  [contentItem setTitle:v19];
  [contentItem setAlbumName:v18];
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

  playerItem = [(IMAVPlayer *)self playerItem];
  if ([playerItem status] == 1)
  {
    playerItem2 = [(IMAVPlayer *)self playerItem];
    v9 = playerItem2;
    if (playerItem2)
    {
      [playerItem2 currentTime];
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

  currentItem = [(IMAVPlayer *)self currentItem];
  contentItem = [currentItem contentItem];

  LODWORD(v14) = v4;
  [contentItem setDefaultPlaybackRate:v14];
  [(IMAVPlayer *)self duration];
  [contentItem setDuration:?];
  [contentItem playbackRate];
  v16 = vabds_f32(v15, v5);
  [contentItem elapsedTime];
  HIDWORD(v18) = 872415232;
  if (v16 > 0.00000011921 || (v18 = 0.5, vabdd_f64(v17, Seconds) > 0.5))
  {
    *&v18 = v5;
    [contentItem setElapsedTime:Seconds playbackRate:v18];
    player = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(player, OS_LOG_TYPE_INFO))
    {
      [(IMAVPlayer *)self duration];
      LODWORD(time.value) = 134218496;
      *(&time.value + 4) = Seconds;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = v20;
      HIWORD(time.epoch) = 2048;
      v36 = v5;
      _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_INFO, "Updated MPNowPlayingContentItem snapshot: elapsedTime: %f, duration: %f, playbackRate: %f", &time, 0x20u);
    }
  }

  manifest = [(IMAVPlayer *)self manifest];
  if (manifest)
  {
    manifest2 = [(IMAVPlayer *)self manifest];
    if ([manifest2 currentIndex] == 0x7FFFFFFFFFFFFFFFLL)
    {
      currentIndex = 0;
    }

    else
    {
      manifest3 = [(IMAVPlayer *)self manifest];
      currentIndex = [manifest3 currentIndex];
    }
  }

  else
  {
    currentIndex = 0;
  }

  manifest4 = [(IMAVPlayer *)self manifest];
  if (manifest4)
  {
    manifest5 = [(IMAVPlayer *)self manifest];
    v27 = [manifest5 count];
  }

  else
  {
    v27 = 1;
  }

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{currentIndex, *MEMORY[0x277D27C48]}];
  v34[0] = v28;
  v33[1] = *MEMORY[0x277D27CA0];
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v27];
  v34[1] = v29;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];

  [contentItem updateNowPlayingInfoIfNeeded:v30];
  currentItem2 = [(IMAVPlayer *)self currentItem];
  if ([currentItem2 isPlaceholder])
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

  if (v32 != [contentItem isLoading])
  {
    [contentItem setLoading:v32];
  }

  [(IMAVPlayer *)self updateInfoCenterPlaybackState];
}

- (void)updateInfoCenterPlaybackState
{
  state = [(IMAVPlayer *)self state];
  if (state)
  {
    if (state == 2)
    {
      v4 = 3;
    }

    else
    {
      v4 = state == 1;
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

  infoCenter = [(IMAVPlayer *)self infoCenter];
  [infoCenter setPlaybackState:v4];
}

- (unint64_t)chapterCount
{
  currentItem = [(IMAVPlayer *)self currentItem];
  timeChapters = [currentItem timeChapters];
  v4 = [timeChapters count];

  return v4;
}

- (void)setupChapterTimeObservers
{
  [(IMAVPlayer *)self _assertMainThread];
  [(IMAVPlayer *)self removeAllTimeObservers];
  currentItem = [(IMAVPlayer *)self currentItem];
  chapters = [currentItem chapters];
  v5 = [chapters count];

  if (v5)
  {
    v6 = 0;
    do
    {
      currentItem2 = [(IMAVPlayer *)self currentItem];
      chapters2 = [currentItem2 chapters];
      v9 = [chapters2 objectAtIndex:v6];

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
      currentItem3 = [(IMAVPlayer *)self currentItem];
      chapters3 = [currentItem3 chapters];
      v12 = [chapters3 count];
    }

    while (v6 < v12);
  }

  [(IMAVPlayer *)self updateTimeObservers];
}

- (void)setCurrentChapterIndex:(unint64_t)index
{
  if ([(IMAVPlayer *)self chapterCount]> index)
  {
    [(IMAVPlayer *)self _setChapterIndex:index];
    currentItem = [(IMAVPlayer *)self currentItem];
    timeChapters = [currentItem timeChapters];
    v7 = [timeChapters objectAtIndex:index];

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
  currentItem = [(IMAVPlayer *)self currentItem];
  timeChapters = [currentItem timeChapters];

  currentItem2 = [(IMAVPlayer *)self currentItem];
  timeChapters2 = [currentItem2 timeChapters];
  if (timeChapters2)
  {
    v7 = timeChapters2;
    currentChapterIndex = self->_currentChapterIndex;
    v9 = [timeChapters count];

    if (currentChapterIndex < v9)
    {
      v10 = [timeChapters objectAtIndex:self->_currentChapterIndex];
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

- (void)setupChapterAtTime:(double)time
{
  if (![(IMAVPlayer *)self scrubbing])
  {
    currentItem = [(IMAVPlayer *)self currentItem];
    chapters = [currentItem chapters];
    v7 = [chapters count];

    if (v7)
    {
      v8 = 0;
      do
      {
        currentItem2 = [(IMAVPlayer *)self currentItem];
        chapters2 = [currentItem2 chapters];
        v11 = [chapters2 objectAtIndex:v8];

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
        if (Seconds + -0.001 < time && v13 > time)
        {
          if (![v11 type])
          {
            currentItem3 = [(IMAVPlayer *)self currentItem];
            timeChapters = [currentItem3 timeChapters];
            v17 = [timeChapters indexOfObject:v11];

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
            currentThread = [MEMORY[0x277CCACC8] currentThread];
            mainThread = [MEMORY[0x277CCACC8] mainThread];

            if (currentThread == mainThread)
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
        currentItem4 = [(IMAVPlayer *)self currentItem];
        chapters3 = [currentItem4 chapters];
        v23 = [chapters3 count];
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

- (void)_setChapterIndex:(unint64_t)index
{
  if (self->_currentChapterIndex < index)
  {
    [(IMAVPlayer *)self enforceAutoStopForMode:2];
  }

  self->_currentChapterIndex = index;

  [(IMAVPlayer *)self _postNotificationName:@"IMAVPlayerNotification_CurrentChapterDidChange" userInfo:0];
}

- (void)onChaptersLoaded:(id)loaded
{
  object = [loaded object];
  currentItem = self->_currentItem;

  if (object == currentItem)
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
  player = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(player, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_DEFAULT, "nextChapter", v4, 2u);
  }

  [(IMAVPlayer *)self setCurrentChapterIndex:[(IMAVPlayer *)self currentChapterIndex]+ 1];
}

- (void)previousChapter
{
  player = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(player, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_DEFAULT, "previousChapter", v4, 2u);
  }

  [(IMAVPlayer *)self setCurrentChapterIndex:[(IMAVPlayer *)self currentChapterIndex]- 1];
}

- (void)setAutoStop:(unint64_t)stop
{
  if (self->_autoStop != stop)
  {
    [(IMAVPlayer *)self _clearAutoStop];
    self->_autoStop = stop;
    if (stop == 1)
    {

      [(IMAVPlayer *)self _setupAutoStopTimer];
    }
  }
}

- (void)setAutoStopTimerTime:(double)time
{
  self->_autoStopTimerTime = time;
  [(IMAVPlayer *)self _clearAutoStopTimmer];

  [(IMAVPlayer *)self _setupAutoStopTimer];
}

- (double)autoStopTimeRemaining
{
  autoStop = [(IMAVPlayer *)self autoStop];
  v4 = 0.0;
  if (autoStop > 2)
  {
    if (autoStop == 3)
    {
      [(IMAVPlayer *)self duration];
    }

    else
    {
      if (autoStop != 4)
      {
        return v4;
      }

      [(IMAVPlayer *)self autoStopMediaTime];
    }

    v16 = v12;
    [(IMAVPlayer *)self currentTime];
    return v16 - v17;
  }

  if (autoStop != 1)
  {
    if (autoStop == 2)
    {
      currentChapter = [(IMAVPlayer *)self currentChapter];
      [currentChapter time];
      v7 = v6;
      currentChapter2 = [(IMAVPlayer *)self currentChapter];
      [currentChapter2 duration];
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

  autoStopTimer = [(IMAVPlayer *)self autoStopTimer];

  if (autoStopTimer)
  {
    autoStopTimer2 = [(IMAVPlayer *)self autoStopTimer];
    fireDate = [autoStopTimer2 fireDate];
    [fireDate timeIntervalSinceReferenceDate];
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
  player = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(player, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_INFO, "_setupAutoStopTimer", buf, 2u);
  }

  if ([(IMAVPlayer *)self autoStop]!= 1 || ![(IMAVPlayer *)self isPlaybackRequested])
  {
    player2 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(player2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v6 = "_setupAutoStopTimer: abort, not timer mode or playing back!";
      goto LABEL_10;
    }

LABEL_11:

    return;
  }

  autoStopTimer = [(IMAVPlayer *)self autoStopTimer];

  if (autoStopTimer)
  {
    player2 = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(player2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v6 = "_setupAutoStopTimer: abort, timer exists!";
LABEL_10:
      _os_log_impl(&dword_21B365000, player2, OS_LOG_TYPE_INFO, v6, buf, 2u);
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
      player2 = [MEMORY[0x277D3DA88] player];
      if (!os_log_type_enabled(player2, OS_LOG_TYPE_INFO))
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

  player3 = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(player3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21B365000, player3, OS_LOG_TYPE_INFO, "_setupAutoStopTimer: created timer!", buf, 2u);
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
  player = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(player, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_INFO, "_pauseAutoStopTimer", v5, 2u);
  }

  [(IMAVPlayer *)self autoStopTimeRemaining];
  [(IMAVPlayer *)self setAutoStopTimerPausedTime:v4 + -2.0];
  [(IMAVPlayer *)self _clearAutoStopTimmer];
}

- (void)_clearAutoStopTimmer
{
  autoStopTimer = [(IMAVPlayer *)self autoStopTimer];

  if (autoStopTimer)
  {
    player = [MEMORY[0x277D3DA88] player];
    if (os_log_type_enabled(player, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_INFO, "_clearAutoStopTimmer", v6, 2u);
    }

    autoStopTimer2 = [(IMAVPlayer *)self autoStopTimer];
    [autoStopTimer2 invalidate];

    [(IMAVPlayer *)self setAutoStopTimer:0];
  }
}

- (void)_autoStopTimerFired
{
  player = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(player, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_INFO, "_autoStopTimerFired", v4, 2u);
  }

  [(IMAVPlayer *)self enforceAutoStopForMode:1];
}

- (void)enforceAutoStopForMode:(unint64_t)mode
{
  v10 = *MEMORY[0x277D85DE8];
  player = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(player, OS_LOG_TYPE_INFO))
  {
    v6 = 134218240;
    modeCopy = mode;
    v8 = 2048;
    autoStop = [(IMAVPlayer *)self autoStop];
    _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_INFO, "enforceAutoStopForMode: %lu, withCurrentMode: %lu", &v6, 0x16u);
  }

  if ([(IMAVPlayer *)self autoStop]== mode)
  {
    if (mode <= 4 && ((1 << mode) & 0x13) != 0)
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
  player = [MEMORY[0x277D3DA88] player];
  if (os_log_type_enabled(player, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_21B365000, player, OS_LOG_TYPE_INFO, "clearAutoStop", v4, 2u);
  }

  self->_autoStop = 0;
  [(IMAVPlayer *)self setAutoStopTimerPausedTime:0.0];
  [(IMAVPlayer *)self setAutoStopTimerTime:0.0];
  [(IMAVPlayer *)self _clearAutoStopTimmer];
}

+ (void)performOnMainQueue:(id)queue
{
  v3 = MEMORY[0x277CCACC8];
  block = queue;
  if ([v3 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

+ (void)performOnAvSessionQueue:(id)queue
{
  v3 = performOnAvSessionQueue__onceToken;
  queueCopy = queue;
  v6 = queueCopy;
  if (v3 == -1)
  {
    v5 = queueCopy;
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