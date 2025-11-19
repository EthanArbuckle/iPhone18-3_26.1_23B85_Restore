@interface SVAVPlayer
- (void)addObservers;
- (void)dealloc;
- (void)durationChanged;
- (void)loadFrameRate;
- (void)loadedTimeRangesChanged;
- (void)playedToEnd:(id)a3;
- (void)seekToStartWithCompletionBlock:(id)a3;
- (void)setCumulativeTimePlayed:(id *)a3;
- (void)setElapsedTime:(double)a3 duration:(double)a4;
- (void)startTimeObserver;
- (void)statusChanged;
- (void)stopTimeObserver;
- (void)timeControlStatusChanged;
- (void)updateTime:(id *)a3 duration:(id *)a4;
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

- (void)seekToStartWithCompletionBlock:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__SVAVPlayer_seekToStartWithCompletionBlock___block_invoke;
  v8[3] = &unk_279BC5FE0;
  objc_copyWeak(&v10, &location);
  v5 = v4;
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
  v3 = [(SVAVPlayer *)self currentItem];
  v4 = [v3 asset];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__SVAVPlayer_loadFrameRate__block_invoke;
  v5[3] = &unk_279BC5F18;
  objc_copyWeak(&v6, &location);
  [v4 loadValuesAsynchronouslyForKeys:&unk_2877C6DA8 completionHandler:v5];

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
  v4 = [(SVAVPlayer *)self currentItem];
  v5 = v4;
  if (v4)
  {
    [v4 duration];
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

- (void)updateTime:(id *)a3 duration:(id *)a4
{
  if ((a3->var2 & 0x11) == 1)
  {
    var2 = a4->var2;
    if (var2)
    {
      v14 = v7;
      v15 = v6;
      v16 = v4;
      v17 = v5;
      if ((var2 & 0x1D) == 1)
      {
        *&v13.value = *&a4->var0;
        var3 = a4->var3;
      }

      else
      {
        *&v13.value = *MEMORY[0x277CC08F0];
        var3 = *(MEMORY[0x277CC08F0] + 16);
      }

      v13.epoch = var3;
      v12 = *a3;
      Seconds = CMTimeGetSeconds(&v12);
      v12 = v13;
      [(SVAVPlayer *)self setElapsedTime:Seconds duration:CMTimeGetSeconds(&v12)];
    }
  }
}

- (void)stopTimeObserver
{
  v3 = [(SVAVPlayer *)self timeObserver];
  [(SVAVPlayer *)self removeTimeObserver:v3];

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
  v6 = [(SVAVPlayer *)self currentItem];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __26__SVAVPlayer_addObservers__block_invoke_2;
  v20[3] = &unk_279BC5D60;
  objc_copyWeak(&v21, &location);
  v7 = [(SVKeyValueObserver *)v5 initWithKeyPath:@"status" ofObject:v6 withOptions:1 change:v20];
  [(SVAVPlayer *)self setStatusObserver:v7];

  v8 = [SVKeyValueObserver alloc];
  v9 = [(SVAVPlayer *)self currentItem];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __26__SVAVPlayer_addObservers__block_invoke_3;
  v18[3] = &unk_279BC5D60;
  objc_copyWeak(&v19, &location);
  v10 = [(SVKeyValueObserver *)v8 initWithKeyPath:@"duration" ofObject:v9 withOptions:1 change:v18];
  [(SVAVPlayer *)self setDurationObserver:v10];

  v11 = [SVKeyValueObserver alloc];
  v12 = [(SVAVPlayer *)self currentItem];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __26__SVAVPlayer_addObservers__block_invoke_4;
  v16[3] = &unk_279BC5D60;
  objc_copyWeak(&v17, &location);
  v13 = [(SVKeyValueObserver *)v11 initWithKeyPath:@"loadedTimeRanges" ofObject:v12 withOptions:1 change:v16];
  [(SVAVPlayer *)self setLoadedTimeRangesObserver:v13];

  v14 = [MEMORY[0x277CCAB98] defaultCenter];
  v15 = [(SVAVPlayer *)self currentItem];
  [v14 addObserver:self selector:sel_playedToEnd_ name:*MEMORY[0x277CE60C0] object:v15];

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

- (void)playedToEnd:(id)a3
{
  [(SVAVPlayer *)self setPlaybackPosition:1];

  [(SVAVPlayer *)self setPlaybackStatus:4];
}

- (void)setElapsedTime:(double)a3 duration:(double)a4
{
  if (self->_elapsedTime != a3 || self->_duration != a4)
  {
    if (a3 < 0.0)
    {
      a3 = 0.0;
    }

    [(SVAVPlayer *)self setElapsedTime:a3];
    if (a4 >= 0.0)
    {
      v6 = a4;
    }

    else
    {
      v6 = 0.0;
    }

    [(SVAVPlayer *)self setDuration:v6];
    v7 = [(SVAVPlayer *)self playbackProgressBlock];

    if (v7)
    {
      v11 = [(SVAVPlayer *)self playbackProgressBlock];
      [(SVAVPlayer *)self elapsedTime];
      v9 = v8;
      [(SVAVPlayer *)self duration];
      v11[2](v11, self, v9, v10);
    }
  }
}

- (void)statusChanged
{
  v3 = [(SVAVPlayer *)self currentItem];
  v4 = [v3 status];

  if (v4 == 2)
  {
    v5 = 5;
  }

  else
  {
    if (v4 != 1 || [(SVAVPlayer *)self playbackStatus])
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
  v3 = [(SVAVPlayer *)self loadingProgressBlock];

  if (v3)
  {
    v6 = [(SVAVPlayer *)self loadingProgressBlock];
    v4 = [(SVAVPlayer *)self currentItem];
    v5 = [v4 loadedTimeRanges];
    v6[2](v6, self, v5);
  }
}

- (void)durationChanged
{
  v3 = [(SVAVPlayer *)self currentItem];
  v4 = v3;
  if (v3)
  {
    [v3 currentTime];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  v5 = [(SVAVPlayer *)self currentItem];
  v6 = v5;
  if (v5)
  {
    [v5 duration];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  [(SVAVPlayer *)self updateTime:v8 duration:v7];
}

- (void)setCumulativeTimePlayed:(id *)a3
{
  var3 = a3->var3;
  *&self->_cumulativeTimePlayed.value = *&a3->var0;
  self->_cumulativeTimePlayed.epoch = var3;
}

@end