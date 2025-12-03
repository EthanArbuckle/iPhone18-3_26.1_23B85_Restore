@interface SVAVPlayer
- (void)addObservers;
- (void)dealloc;
- (void)durationChanged;
- (void)loadFrameRate;
- (void)loadedTimeRangesChanged;
- (void)playedToEnd:(id)end;
- (void)seekToStartWithCompletionBlock:(id)block;
- (void)setCumulativeTimePlayed:(id *)played;
- (void)setElapsedTime:(double)time duration:(double)duration;
- (void)startTimeObserver;
- (void)statusChanged;
- (void)stopTimeObserver;
- (void)timeControlStatusChanged;
- (void)updateTime:(id *)time duration:(id *)duration;
@end

@implementation SVAVPlayer

- (void)dealloc
{
  [(SVAVPlayer *)self stopTimeObserver];
  v3 = [SVAudioSession sharedSessionForMode:[(SVAVPlayer *)self audioMode]];
  [v3 removeInterestForPlayer:self];

  v4.receiver = self;
  v4.super_class = SVAVPlayer;
  [(SVAVPlayer *)&v4 dealloc];
}

- (void)seekToStartWithCompletionBlock:(id)block
{
  blockCopy = block;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__SVAVPlayer_seekToStartWithCompletionBlock___block_invoke;
  v8[3] = &unk_279BC5FE0;
  objc_copyWeak(&v10, &location);
  v5 = blockCopy;
  v9 = v5;
  v6 = *MEMORY[0x277CC08F0];
  v7 = *(MEMORY[0x277CC08F0] + 16);
  [(SVAVPlayer *)self seekToTime:&v6 completionHandler:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __45__SVAVPlayer_seekToStartWithCompletionBlock___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (a2)
  {
    if (WeakRetained)
    {
      [WeakRetained currentTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    [v5 setElapsedTime:CMTimeGetSeconds(&time)];
    [v5 setPlaybackPosition:0];
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

- (void)loadFrameRate
{
  objc_initWeak(&location, self);
  currentItem = [(SVAVPlayer *)self currentItem];
  asset = [currentItem asset];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__SVAVPlayer_loadFrameRate__block_invoke;
  v5[3] = &unk_279BC5F18;
  objc_copyWeak(&v6, &location);
  [asset loadValuesAsynchronouslyForKeys:&unk_2877C6DA8 completionHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __27__SVAVPlayer_loadFrameRate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained currentItem];
  v3 = [v2 asset];
  v4 = [v3 tracksWithMediaType:*MEMORY[0x277CE5EA8]];
  v5 = [v4 firstObject];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __27__SVAVPlayer_loadFrameRate__block_invoke_2;
  v7[3] = &unk_279BC6008;
  v8 = v5;
  v9 = WeakRetained;
  v6 = v5;
  [v6 loadValuesAsynchronouslyForKeys:&unk_2877C6DC0 completionHandler:v7];
}

uint64_t __27__SVAVPlayer_loadFrameRate__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) statusOfValueForKey:@"nominalFrameRate" error:0];
  if (result == 2)
  {
    v3 = *(a1 + 40);
    [*(a1 + 32) nominalFrameRate];
    v5 = v4;

    return [v3 setFrameRate:v5];
  }

  return result;
}

- (void)startTimeObserver
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3810000000;
  v21 = "";
  v22 = 0;
  v23 = 0;
  v24 = 0;
  [(SVAVPlayer *)self currentTime];
  v3 = v19;
  currentItem = [(SVAVPlayer *)self currentItem];
  v5 = currentItem;
  if (currentItem)
  {
    [currentItem duration];
  }

  else
  {
    memset(&v17, 0, sizeof(v17));
  }

  *location = *(v3 + 2);
  v16 = v3[6];
  [(SVAVPlayer *)self updateTime:location duration:&v17];

  objc_initWeak(location, self);
  CMTimeMake(&v17, 1, 10);
  v6 = MEMORY[0x277D85CD0];
  v7 = MEMORY[0x277D85CD0];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __31__SVAVPlayer_startTimeObserver__block_invoke;
  v12 = &unk_279BC6030;
  objc_copyWeak(&v14, location);
  v13 = &v18;
  v8 = [(SVAVPlayer *)self addPeriodicTimeObserverForInterval:&v17 queue:v6 usingBlock:&v9];
  [(SVAVPlayer *)self setTimeObserver:v8, v9, v10, v11, v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(location);
  _Block_object_dispose(&v18, 8);
}

void __31__SVAVPlayer_startTimeObserver__block_invoke(uint64_t a1, __int128 *a2)
{
  memset(&v18, 0, sizeof(v18));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained currentItem];
  v6 = v5;
  if (v5)
  {
    [v5 duration];
  }

  else
  {
    memset(&v18, 0, sizeof(v18));
  }

  if (*(a2 + 12) & 1) != 0 && (v18.flags)
  {
    memset(&v17, 0, sizeof(v17));
    v7 = *(*(a1 + 32) + 8);
    lhs = *a2;
    rhs = *(v7 + 32);
    CMTimeSubtract(&v17, &lhs, &rhs);
    v8 = objc_loadWeakRetained((a1 + 40));
    v9 = v8;
    if (v8)
    {
      [v8 cumulativeTimePlayed];
    }

    else
    {
      memset(&lhs, 0, sizeof(lhs));
    }

    rhs = v17;
    CMTimeAdd(&v14, &lhs, &rhs);
    v10 = objc_loadWeakRetained((a1 + 40));
    lhs = v14;
    [v10 setCumulativeTimePlayed:&lhs];

    v11 = *(*(a1 + 32) + 8);
    v12 = *a2;
    *(v11 + 48) = *(a2 + 2);
    *(v11 + 32) = v12;
    v13 = objc_loadWeakRetained((a1 + 40));
    lhs = *a2;
    rhs = v18;
    [v13 updateTime:&lhs duration:&rhs];
  }
}

- (void)updateTime:(id *)time duration:(id *)duration
{
  if ((time->var2 & 0x11) == 1)
  {
    var2 = duration->var2;
    if (var2)
    {
      v14 = v7;
      v15 = v6;
      v16 = v4;
      v17 = v5;
      if ((var2 & 0x1D) == 1)
      {
        *&v13.value = *&duration->var0;
        var3 = duration->var3;
      }

      else
      {
        *&v13.value = *MEMORY[0x277CC08F0];
        var3 = *(MEMORY[0x277CC08F0] + 16);
      }

      v13.epoch = var3;
      v12 = *time;
      Seconds = CMTimeGetSeconds(&v12);
      v12 = v13;
      [(SVAVPlayer *)self setElapsedTime:Seconds duration:CMTimeGetSeconds(&v12)];
    }
  }
}

- (void)stopTimeObserver
{
  timeObserver = [(SVAVPlayer *)self timeObserver];
  [(SVAVPlayer *)self removeTimeObserver:timeObserver];

  [(SVAVPlayer *)self setTimeObserver:0];
}

- (void)addObservers
{
  objc_initWeak(&location, self);
  v3 = [SVKeyValueObserver alloc];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __26__SVAVPlayer_addObservers__block_invoke;
  v22[3] = &unk_279BC5D60;
  objc_copyWeak(&v23, &location);
  v4 = [(SVKeyValueObserver *)v3 initWithKeyPath:@"timeControlStatus" ofObject:self withOptions:1 change:v22];
  [(SVAVPlayer *)self setTimeControlStatusObserver:v4];

  v5 = [SVKeyValueObserver alloc];
  currentItem = [(SVAVPlayer *)self currentItem];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __26__SVAVPlayer_addObservers__block_invoke_2;
  v20[3] = &unk_279BC5D60;
  objc_copyWeak(&v21, &location);
  v7 = [(SVKeyValueObserver *)v5 initWithKeyPath:@"status" ofObject:currentItem withOptions:1 change:v20];
  [(SVAVPlayer *)self setStatusObserver:v7];

  v8 = [SVKeyValueObserver alloc];
  currentItem2 = [(SVAVPlayer *)self currentItem];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __26__SVAVPlayer_addObservers__block_invoke_3;
  v18[3] = &unk_279BC5D60;
  objc_copyWeak(&v19, &location);
  v10 = [(SVKeyValueObserver *)v8 initWithKeyPath:@"duration" ofObject:currentItem2 withOptions:1 change:v18];
  [(SVAVPlayer *)self setDurationObserver:v10];

  v11 = [SVKeyValueObserver alloc];
  currentItem3 = [(SVAVPlayer *)self currentItem];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __26__SVAVPlayer_addObservers__block_invoke_4;
  v16[3] = &unk_279BC5D60;
  objc_copyWeak(&v17, &location);
  v13 = [(SVKeyValueObserver *)v11 initWithKeyPath:@"loadedTimeRanges" ofObject:currentItem3 withOptions:1 change:v16];
  [(SVAVPlayer *)self setLoadedTimeRangesObserver:v13];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  currentItem4 = [(SVAVPlayer *)self currentItem];
  [defaultCenter addObserver:self selector:sel_playedToEnd_ name:*MEMORY[0x277CE60C0] object:currentItem4];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __26__SVAVPlayer_addObservers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained timeControlStatusChanged];
    WeakRetained = v2;
  }
}

void __26__SVAVPlayer_addObservers__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained statusChanged];
    WeakRetained = v2;
  }
}

void __26__SVAVPlayer_addObservers__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained durationChanged];
    WeakRetained = v2;
  }
}

void __26__SVAVPlayer_addObservers__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained loadedTimeRangesChanged];
}

- (void)playedToEnd:(id)end
{
  [(SVAVPlayer *)self setPlaybackPosition:1];

  [(SVAVPlayer *)self setPlaybackStatus:4];
}

- (void)setElapsedTime:(double)time duration:(double)duration
{
  if (self->_elapsedTime != time || self->_duration != duration)
  {
    if (time < 0.0)
    {
      time = 0.0;
    }

    [(SVAVPlayer *)self setElapsedTime:time];
    if (duration >= 0.0)
    {
      durationCopy = duration;
    }

    else
    {
      durationCopy = 0.0;
    }

    [(SVAVPlayer *)self setDuration:durationCopy];
    playbackProgressBlock = [(SVAVPlayer *)self playbackProgressBlock];

    if (playbackProgressBlock)
    {
      playbackProgressBlock2 = [(SVAVPlayer *)self playbackProgressBlock];
      [(SVAVPlayer *)self elapsedTime];
      v9 = v8;
      [(SVAVPlayer *)self duration];
      playbackProgressBlock2[2](playbackProgressBlock2, self, v9, v10);
    }
  }
}

- (void)statusChanged
{
  currentItem = [(SVAVPlayer *)self currentItem];
  status = [currentItem status];

  if (status == 2)
  {
    v5 = 5;
  }

  else
  {
    if (status != 1 || [(SVAVPlayer *)self playbackStatus])
    {
      return;
    }

    v5 = 1;
  }

  [(SVAVPlayer *)self setPlaybackStatus:v5];
}

- (void)timeControlStatusChanged
{
  if ([(SVAVPlayer *)self timeControlStatus]== 2)
  {
    if ([(SVAVPlayer *)self playbackStatus]!= 2)
    {
      [(SVAVPlayer *)self setPlaybackStatus:2];

      [(SVAVPlayer *)self setPlaybackPosition:2];
    }
  }

  else if (![(SVAVPlayer *)self timeControlStatus])
  {
    [(SVAVPlayer *)self stopTimeObserver];
    if ([(SVAVPlayer *)self playbackStatus]== 2 && [(SVAVPlayer *)self playbackPosition]== 2)
    {

      [(SVAVPlayer *)self setPlaybackStatus:3];
    }
  }
}

- (void)loadedTimeRangesChanged
{
  loadingProgressBlock = [(SVAVPlayer *)self loadingProgressBlock];

  if (loadingProgressBlock)
  {
    loadingProgressBlock2 = [(SVAVPlayer *)self loadingProgressBlock];
    currentItem = [(SVAVPlayer *)self currentItem];
    loadedTimeRanges = [currentItem loadedTimeRanges];
    loadingProgressBlock2[2](loadingProgressBlock2, self, loadedTimeRanges);
  }
}

- (void)durationChanged
{
  currentItem = [(SVAVPlayer *)self currentItem];
  v4 = currentItem;
  if (currentItem)
  {
    [currentItem currentTime];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  currentItem2 = [(SVAVPlayer *)self currentItem];
  v6 = currentItem2;
  if (currentItem2)
  {
    [currentItem2 duration];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  [(SVAVPlayer *)self updateTime:v8 duration:v7];
}

- (void)setCumulativeTimePlayed:(id *)played
{
  var3 = played->var3;
  *&self->_cumulativeTimePlayed.value = *&played->var0;
  self->_cumulativeTimePlayed.epoch = var3;
}

@end