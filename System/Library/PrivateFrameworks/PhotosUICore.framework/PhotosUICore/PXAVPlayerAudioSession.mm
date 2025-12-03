@interface PXAVPlayerAudioSession
+ (OpaqueCMClock)sourceClock;
+ (id)_audioSession;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime;
- (PXAVPlayerAudioSession)initWithAsset:(id)asset volume:(float)volume startTime:(id *)time queue:(id)queue audioSessionDelegate:(id)delegate;
- (void)_handleAVAsset:(id)asset audioMix:(id)mix info:(id)info;
- (void)_handlePlayerItemFinishedSeekingForPlayback:(id)playback;
- (void)_handlePlayerTime:(id *)time;
- (void)_invalidatePlayerRate;
- (void)_invalidatePlayerVolume;
- (void)_invalidateStatus;
- (void)_loadDurationFromAsset:(id)asset;
- (void)_performPlayerTransaction:(id)transaction;
- (void)_playerQueue_performPlayerTransaction:(id)transaction;
- (void)_prepareToPlayIfNeeded;
- (void)_updatePlayerRate;
- (void)_updatePlayerVolume;
- (void)_updateStatus;
- (void)cancelMediaRequest;
- (void)dealloc;
- (void)desiredPlayerVolumeDidChange;
- (void)didPerformChanges;
- (void)errorDidChange;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pause;
- (void)performFinalCleanup;
- (void)performInternalChanges:(id)changes;
- (void)play;
- (void)playFromTime:(id *)time;
- (void)prepareToPlay;
- (void)requestMediaWithResultHandler:(id)handler;
- (void)setIsPlaybackDesired:(BOOL)desired;
- (void)setIsPreparingToPlay:(BOOL)play;
- (void)setPlayerRate:(float)rate;
- (void)setPlayerTime:(id *)time;
@end

@implementation PXAVPlayerAudioSession

- (void)setPlayerTime:(id *)time
{
  var3 = time->var3;
  *&self->_playerTime.value = *&time->var0;
  self->_playerTime.epoch = var3;
}

- (void)_handlePlayerItemFinishedSeekingForPlayback:(id)playback
{
  playbackCopy = playback;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__PXAVPlayerAudioSession__handlePlayerItemFinishedSeekingForPlayback___block_invoke;
  v6[3] = &unk_1E77490F0;
  v7 = playbackCopy;
  v5 = playbackCopy;
  [(PXAVPlayerAudioSession *)self _performPlayerTransaction:v6];
  [(PXAVPlayerAudioSession *)self performInternalChanges:&__block_literal_global_56];
}

void __70__PXAVPlayerAudioSession__handlePlayerItemFinishedSeekingForPlayback___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setIsReadyToPlay:1];
  [v2 setIsPreparingToPlay:0];
}

- (void)_loadDurationFromAsset:(id)asset
{
  v22 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v5 = NSStringFromSelector(sel_duration);
  v16 = 0;
  v6 = [assetCopy statusOfValueForKey:v5 error:&v16];
  v7 = v16;

  if (v6 == 3)
  {
    v8 = PLAudioPlaybackGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = assetCopy;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "Failed to load duration from %@. Error: %@", buf, 0x16u);
    }
  }

  else if (v6 == 2)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __49__PXAVPlayerAudioSession__loadDurationFromAsset___block_invoke;
    v14[3] = &unk_1E77490C8;
    v15 = assetCopy;
    [(PXAVPlayerAudioSession *)self performInternalChanges:v14];
  }

  else
  {
    objc_initWeak(buf, self);
    v9 = NSStringFromSelector(sel_duration);
    v17 = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49__PXAVPlayerAudioSession__loadDurationFromAsset___block_invoke_54;
    v11[3] = &unk_1E774B248;
    objc_copyWeak(&v13, buf);
    v12 = assetCopy;
    [v12 loadValuesAsynchronouslyForKeys:v10 completionHandler:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

void __49__PXAVPlayerAudioSession__loadDurationFromAsset___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    [v4 duration];
  }

  else
  {
    v7 = 0uLL;
    v8 = 0;
  }

  v5 = v7;
  v6 = v8;
  [v3 setDuration:&v5];
}

void __49__PXAVPlayerAudioSession__loadDurationFromAsset___block_invoke_54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _loadDurationFromAsset:*(a1 + 32)];
}

- (void)_handleAVAsset:(id)asset audioMix:(id)mix info:(id)info
{
  v32 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  mixCopy = mix;
  infoCopy = info;
  v11 = infoCopy;
  if (assetCopy)
  {
    v12 = [objc_alloc(MEMORY[0x1E69880B0]) initWithAsset:assetCopy];
    [v12 setAudioMix:mixCopy];
    v13 = PLAudioPlaybackGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      asset = [(PXAudioSession *)self asset];
      v15 = [v11 objectForKeyedSubscript:@"ProgramLoudnessLKFS"];
      v16 = [v11 objectForKeyedSubscript:@"PeakdBFS"];
      *buf = 138543874;
      v27 = asset;
      v28 = 2114;
      v29 = v15;
      v30 = 2114;
      v31 = v16;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "Applying content loudness for %{public}@:\n\tLoudness: %{public}@\n\tPeak: %{public}@", buf, 0x20u);
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __55__PXAVPlayerAudioSession__handleAVAsset_audioMix_info___block_invoke_50;
    v22[3] = &unk_1E77490C8;
    v23 = v11;
    [(PXAVPlayerAudioSession *)self performInternalChanges:v22];
    [(PXAVPlayerAudioSession *)self _loadDurationFromAsset:assetCopy];
    objc_initWeak(&location, self);
    [(PXAudioSession *)self startTime];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __55__PXAVPlayerAudioSession__handleAVAsset_audioMix_info___block_invoke_2;
    v18[3] = &unk_1E774B330;
    objc_copyWeak(&v20, &location);
    v17 = v12;
    v19 = v17;
    [v17 seekToTime:buf completionHandler:v18];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __55__PXAVPlayerAudioSession__handleAVAsset_audioMix_info___block_invoke;
    v24[3] = &unk_1E7749090;
    v24[4] = self;
    v25 = infoCopy;
    [(PXAVPlayerAudioSession *)self performInternalChanges:v24];
  }
}

void __55__PXAVPlayerAudioSession__handleAVAsset_audioMix_info___block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 setStatus:4];
  v10 = *MEMORY[0x1E696A278];
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ failed to fetch media for this song.", *(a1 + 32), v10];
  v11[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v6 = [*(a1 + 40) objectForKeyedSubscript:@"Error"];
  if (v6)
  {
    v7 = [v5 mutableCopy];
    [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v8 = [v7 copy];

    v5 = v8;
  }

  v9 = [MEMORY[0x1E696ABC0] px_audioSessionErrorWithCode:1 userInfo:v5];
  [v3 setError:v9];
}

void __55__PXAVPlayerAudioSession__handleAVAsset_audioMix_info___block_invoke_50(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:@"PeakdBFS"];
  [v4 setContentPeakDecibels:v5];

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"ProgramLoudnessLKFS"];
  [v4 setContentLoudnessInLKFS:v6];
}

void __55__PXAVPlayerAudioSession__handleAVAsset_audioMix_info___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handlePlayerItemFinishedSeekingForPlayback:*(a1 + 32)];
}

- (void)setIsPlaybackDesired:(BOOL)desired
{
  desiredCopy = desired;
  queue = [(PXAudioSession *)self queue];
  dispatch_assert_queue_V2(queue);

  if (self->_isPlaybackDesired != desiredCopy)
  {
    self->_isPlaybackDesired = desiredCopy;

    [(PXAVPlayerAudioSession *)self _invalidatePlayerRate];
  }
}

- (void)setIsPreparingToPlay:(BOOL)play
{
  playCopy = play;
  queue = [(PXAudioSession *)self queue];
  dispatch_assert_queue_V2(queue);

  if (self->_isPreparingToPlay != playCopy)
  {
    self->_isPreparingToPlay = playCopy;
    [(PXAVPlayerAudioSession *)self _invalidateStatus];

    [(PXAVPlayerAudioSession *)self _invalidatePlayerRate];
  }
}

- (void)_prepareToPlayIfNeeded
{
  if ([(PXAudioSession *)self status]<= 0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__PXAVPlayerAudioSession__prepareToPlayIfNeeded__block_invoke;
    v6[3] = &unk_1E77497E0;
    v6[4] = self;
    [(PXAudioSession *)self performChanges:v6];
    objc_initWeak(&location, self);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __48__PXAVPlayerAudioSession__prepareToPlayIfNeeded__block_invoke_2;
    v3[3] = &unk_1E7749060;
    objc_copyWeak(&v4, &location);
    [(PXAVPlayerAudioSession *)self requestMediaWithResultHandler:v3];
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

void __48__PXAVPlayerAudioSession__prepareToPlayIfNeeded__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAVAsset:v9 audioMix:v8 info:v7];
}

- (void)_handlePlayerTime:(id *)time
{
  v4 = *time;
  [(PXAVPlayerAudioSession *)self setPlayerTime:&v4];
  [(PXAVPlayerAudioSession *)self setPlayerTimeHasChangedSinceSeeking:1];
}

- (void)_playerQueue_performPlayerTransaction:(id)transaction
{
  transactionCopy = transaction;
  playerQueue_player = [(PXAVPlayerAudioSession *)self playerQueue_player];
  (*(transaction + 2))(transactionCopy, playerQueue_player);
}

- (void)_performPlayerTransaction:(id)transaction
{
  transactionCopy = transaction;
  objc_initWeak(&location, self);
  playerQueue = [(PXAVPlayerAudioSession *)self playerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PXAVPlayerAudioSession__performPlayerTransaction___block_invoke;
  block[3] = &unk_1E774AA30;
  objc_copyWeak(&v9, &location);
  v8 = transactionCopy;
  v6 = transactionCopy;
  dispatch_async(playerQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __52__PXAVPlayerAudioSession__performPlayerTransaction___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _playerQueue_performPlayerTransaction:*(a1 + 32)];
}

- (void)setPlayerRate:(float)rate
{
  queue = [(PXAudioSession *)self queue];
  dispatch_assert_queue_V2(queue);

  if (self->_playerRate != rate)
  {
    self->_playerRate = rate;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__PXAVPlayerAudioSession_setPlayerRate___block_invoke;
    v6[3] = &__block_descriptor_36_e18_v16__0__AVPlayer_8l;
    rateCopy = rate;
    [(PXAVPlayerAudioSession *)self _performPlayerTransaction:v6];
    [(PXAVPlayerAudioSession *)self _invalidateStatus];
  }
}

- (void)_updatePlayerRate
{
  isPlaybackDesired = [(PXAVPlayerAudioSession *)self isPlaybackDesired];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__PXAVPlayerAudioSession__updatePlayerRate__block_invoke;
  v4[3] = &unk_1E7749018;
  v4[4] = self;
  v5 = isPlaybackDesired;
  [(PXAudioSession *)self performChanges:v4];
}

- (void)_invalidatePlayerRate
{
  updater = [(PXAVPlayerAudioSession *)self updater];
  [updater setNeedsUpdateOf:sel__updatePlayerRate];
}

- (void)_updatePlayerVolume
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __45__PXAVPlayerAudioSession__updatePlayerVolume__block_invoke;
  v2[3] = &unk_1E7748F18;
  v2[4] = self;
  [(PXAVPlayerAudioSession *)self _performPlayerTransaction:v2];
}

void __45__PXAVPlayerAudioSession__updatePlayerVolume__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 desiredPlayerVolume];
  [v3 setVolume:?];
}

- (void)_invalidatePlayerVolume
{
  updater = [(PXAVPlayerAudioSession *)self updater];
  [updater setNeedsUpdateOf:sel__updatePlayerVolume];
}

- (void)_updateStatus
{
  error = [(PXAudioSession *)self error];

  if (error)
  {
    v4 = 4;
  }

  else if ([(PXAVPlayerAudioSession *)self isPreparingToPlay])
  {
    v4 = 1;
  }

  else
  {
    [(PXAVPlayerAudioSession *)self playerRate];
    v4 = 2;
    if (v5 > 0.0)
    {
      v4 = 3;
    }
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__PXAVPlayerAudioSession__updateStatus__block_invoke;
  v6[3] = &__block_descriptor_40_e49_v16__0___PXInternalMutableAVPlayerAudioSession__8l;
  v6[4] = v4;
  [(PXAVPlayerAudioSession *)self performInternalChanges:v6];
}

- (void)_invalidateStatus
{
  updater = [(PXAVPlayerAudioSession *)self updater];
  [updater setNeedsUpdateOf:sel__updateStatus];
}

- (void)didPerformChanges
{
  queue = [(PXAudioSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v4.receiver = self;
  v4.super_class = PXAVPlayerAudioSession;
  [(PXAudioSession *)&v4 didPerformChanges];
  [(PXUpdater *)self->_updater updateIfNeeded];
}

- (void)cancelMediaRequest
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAVPlayerAudioSession.m" lineNumber:211 description:{@"Method %s is a responsibility of subclass %@", "-[PXAVPlayerAudioSession cancelMediaRequest]", v6}];

  abort();
}

- (void)requestMediaWithResultHandler:(id)handler
{
  handlerCopy = handler;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAVPlayerAudioSession.m" lineNumber:207 description:{@"Method %s is a responsibility of subclass %@", "-[PXAVPlayerAudioSession requestMediaWithResultHandler:]", v8}];

  abort();
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v7 = [change objectForKeyedSubscript:{*MEMORY[0x1E696A500], object}];
  if (v7)
  {
    null = [MEMORY[0x1E695DFB0] null];

    if (v7 != null)
    {
      memset(&v15, 0, sizeof(v15));
      asset = [(PXAudioSession *)self asset];
      v10 = PXAudioAssetDefaultEntryPoint(asset);
      [v10 time];
      CMTimeMakeWithSeconds(&v15, v11, 600);

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __73__PXAVPlayerAudioSession_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v12[3] = &unk_1E7748FD0;
      v13 = v7;
      v14 = v15;
      [(PXAVPlayerAudioSession *)self _performPlayerTransaction:v12];
    }
  }
}

void __73__PXAVPlayerAudioSession_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__PXAVPlayerAudioSession_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
  v8[3] = &unk_1E7749628;
  v9 = v3;
  v10 = v4;
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v5 = v3;
  [v10 seekToTime:&v6 completionHandler:v8];
}

- (void)performInternalChanges:(id)changes
{
  changesCopy = changes;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__PXAVPlayerAudioSession_performInternalChanges___block_invoke;
  v7[3] = &unk_1E7748FA8;
  v8 = changesCopy;
  v6.receiver = self;
  v6.super_class = PXAVPlayerAudioSession;
  v5 = changesCopy;
  [(PXAudioSession *)&v6 performInternalChanges:v7];
}

- (void)errorDidChange
{
  v3.receiver = self;
  v3.super_class = PXAVPlayerAudioSession;
  [(PXAudioSession *)&v3 errorDidChange];
  [(PXAVPlayerAudioSession *)self _invalidateStatus];
}

- (void)desiredPlayerVolumeDidChange
{
  v3.receiver = self;
  v3.super_class = PXAVPlayerAudioSession;
  [(PXAudioSession *)&v3 desiredPlayerVolumeDidChange];
  [(PXAVPlayerAudioSession *)self _invalidatePlayerVolume];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime
{
  if ([(PXAVPlayerAudioSession *)self playerTimeHasChangedSinceSeeking])
  {

    return [(PXAVPlayerAudioSession *)self playerTime];
  }

  else
  {

    return [(PXAudioSession *)self startTime];
  }
}

- (void)playFromTime:(id *)time
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__PXAVPlayerAudioSession_playFromTime___block_invoke;
  v3[3] = &__block_descriptor_56_e18_v16__0__AVPlayer_8l;
  v4 = *time;
  [(PXAVPlayerAudioSession *)self _performPlayerTransaction:v3];
}

void __39__PXAVPlayerAudioSession_playFromTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v2 = a2;
  [v2 seekToTime:&v3];
  [v2 play];
}

- (void)play
{
  queue = [(PXAudioSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__PXAVPlayerAudioSession_play__block_invoke;
  v4[3] = &unk_1E77497E0;
  v4[4] = self;
  [(PXAudioSession *)self performChanges:v4];
  [(PXAVPlayerAudioSession *)self _prepareToPlayIfNeeded];
}

- (void)pause
{
  queue = [(PXAudioSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__PXAVPlayerAudioSession_pause__block_invoke;
  v4[3] = &unk_1E77497E0;
  v4[4] = self;
  [(PXAudioSession *)self performChanges:v4];
  [(PXAVPlayerAudioSession *)self _performPlayerTransaction:&__block_literal_global_20_232933];
}

- (void)prepareToPlay
{
  queue = [(PXAudioSession *)self queue];
  dispatch_assert_queue_V2(queue);

  [(PXAVPlayerAudioSession *)self _prepareToPlayIfNeeded];
}

- (void)performFinalCleanup
{
  v4.receiver = self;
  v4.super_class = PXAVPlayerAudioSession;
  [(PXAudioSession *)&v4 performFinalCleanup];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__PXAVPlayerAudioSession_performFinalCleanup__block_invoke;
  v3[3] = &unk_1E7748F18;
  v3[4] = self;
  [(PXAVPlayerAudioSession *)self _performPlayerTransaction:v3];
}

- (void)dealloc
{
  playerQueue_player = self->_playerQueue_player;
  v4 = NSStringFromSelector(sel_currentItem);
  [(AVQueuePlayer *)playerQueue_player removeObserver:self forKeyPath:v4];

  v5.receiver = self;
  v5.super_class = PXAVPlayerAudioSession;
  [(PXAVPlayerAudioSession *)&v5 dealloc];
}

- (PXAVPlayerAudioSession)initWithAsset:(id)asset volume:(float)volume startTime:(id *)time queue:(id)queue audioSessionDelegate:(id)delegate
{
  assetCopy = asset;
  queueCopy = queue;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = PXAVPlayerAudioSession;
  v16 = *time;
  if ([(PXAudioSession *)&v17 initWithAsset:assetCopy volume:&v16 startTime:queueCopy queue:delegateCopy audioSessionDelegate:COERCE_DOUBLE(__PAIR64__(HIDWORD(v16.value), LODWORD(volume)))])
  {
    dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_claimAutoreleasedReturnValue();
    px_dispatch_queue_create();
  }

  return 0;
}

void __84__PXAVPlayerAudioSession_initWithAsset_volume_startTime_queue_audioSessionDelegate___block_invoke_2(uint64_t a1, __int128 *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = *a2;
  v5 = *(a2 + 2);
  [WeakRetained _handlePlayerTime:&v4];
}

+ (id)_audioSession
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__PXAVPlayerAudioSession__audioSession__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_audioSession_onceToken != -1)
  {
    dispatch_once(&_audioSession_onceToken, block);
  }

  v2 = _audioSession_session;

  return v2;
}

void __39__PXAVPlayerAudioSession__audioSession__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6958460] auxiliarySession];
  v3 = _audioSession_session;
  _audioSession_session = v2;

  v4 = *MEMORY[0x1E6958068];
  v9 = 0;
  v5 = [_audioSession_session setCategory:v4 withOptions:1 error:&v9];
  v6 = v9;
  if ((v5 & 1) == 0)
  {
    v7 = PLStoryGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "Failed to initialize shared audio session category for %@. Error: %@", buf, 0x16u);
    }
  }
}

+ (OpaqueCMClock)sourceClock
{
  if (sourceClock_onceToken != -1)
  {
    dispatch_once(&sourceClock_onceToken, &__block_literal_global_232954);
  }

  return sourceClock_clock;
}

@end