@interface SFMediaPlayerView
- (void)addMovieItem:(id)a3;
- (void)breakFirstEnqueuedLoop;
- (void)dealloc;
- (void)dequeueNonPlayingItemsFromMediaItem:(id)a3;
- (void)enqueueItemsFromMediaItem:(id)a3 afterItem:(id)a4;
- (void)handleBoundaryTimeObserverForMediaItem:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pause;
- (void)play;
- (void)playerItemDidReachEnd:(id)a3;
- (void)removeAllQueuedItems;
- (void)removeMovieItem:(id)a3;
- (void)setPausesAfterEachItem:(BOOL)a3;
- (void)setUpTimeRangeNotificationsForItem:(id)a3;
- (void)speedUpRemainderOfCurrentItem;
- (void)startMovieLoopWithPath:(id)a3;
- (void)startMovieLoopWithPath:(id)a3 assetType:(int)a4 adjustmentsURL:(id)a5;
- (void)stop;
- (void)stopSpeedUpTimer;
- (void)updateViewForAssetType:(int)a3 adjustmentsURL:(id)a4;
@end

@implementation SFMediaPlayerView

- (void)dealloc
{
  if (self->_isKVOObserver && self->_avQueuePlayer)
  {
    v3 = framework_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [(SFMediaPlayerView *)v3 dealloc];
    }

    [(AVQueuePlayer *)self->_avQueuePlayer removeObserver:self forKeyPath:@"currentItem" context:SFMediaPlayerViewObserverContext];
  }

  v4.receiver = self;
  v4.super_class = SFMediaPlayerView;
  [(SFMediaPlayerView *)&v4 dealloc];
}

- (void)startMovieLoopWithPath:(id)a3
{
  v11 = a3;
  v4 = self->_avQueuePlayer;
  if (!v4)
  {
    v5 = [MEMORY[0x1E6958460] sharedInstance];
    [v5 setCategory:*MEMORY[0x1E6958038] withOptions:1 error:0];

    v4 = objc_alloc_init(MEMORY[0x1E6988100]);
    [(AVQueuePlayer *)v4 setAllowsExternalPlayback:0];
    [(AVQueuePlayer *)v4 setPreventsDisplaySleepDuringVideoPlayback:0];
    [(AVQueuePlayer *)v4 _setDisallowsAutoPauseOnRouteRemovalIfNoAudio:1];
    objc_storeStrong(&self->_avQueuePlayer, v4);
    v6 = [(SFMediaPlayerView *)self layer];
    [v6 setPlayer:v4];

    [(SFMediaPlayerView *)self setPausesAfterEachItem:[(SFMediaPlayerView *)self pausesAfterEachItem]];
  }

  v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11 isDirectory:0];
  v8 = [MEMORY[0x1E69880B0] playerItemWithURL:v7];
  v9 = [MEMORY[0x1E69880E8] playerLooperWithPlayer:v4 templateItem:v8];
  avLooper = self->_avLooper;
  self->_avLooper = v9;

  [(SFMediaPlayerView *)self play];
}

- (void)updateViewForAssetType:(int)a3 adjustmentsURL:(id)a4
{
  v6 = SFAdjustmentFiltersForAssetTypeAndURL(a3, a4);
  v5 = [(SFMediaPlayerView *)self layer];
  [v5 setFilters:v6];
}

- (void)startMovieLoopWithPath:(id)a3 assetType:(int)a4 adjustmentsURL:(id)a5
{
  v6 = *&a4;
  v8 = a3;
  [(SFMediaPlayerView *)self updateViewForAssetType:v6 adjustmentsURL:a5];
  [(SFMediaPlayerView *)self startMovieLoopWithPath:v8];
}

- (void)stop
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = framework_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[SFMediaPlayerView stop]";
    _os_log_impl(&dword_1B9E4B000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  [(SFMediaPlayerView *)self _pause];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSMutableArray *)self->_mediaItems copy];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(SFMediaPlayerView *)self removeMovieItem:*(*(&v13 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (self->_isKVOObserver)
  {
    [(AVQueuePlayer *)self->_avQueuePlayer removeObserver:self forKeyPath:@"currentItem" context:SFMediaPlayerViewObserverContext];
  }

  avQueuePlayer = self->_avQueuePlayer;
  self->_avQueuePlayer = 0;

  avLooper = self->_avLooper;
  self->_avLooper = 0;

  mediaItems = self->_mediaItems;
  self->_mediaItems = 0;

  [(SFMediaPlayerView *)self stopSpeedUpTimer];
}

- (void)play
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = framework_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SFMediaPlayerView play]";
    _os_log_impl(&dword_1B9E4B000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  [(AVQueuePlayer *)self->_avQueuePlayer play];
}

- (void)pause
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = framework_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SFMediaPlayerView pause]";
    _os_log_impl(&dword_1B9E4B000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  [(SFMediaPlayerView *)self _pause];
}

- (void)setPausesAfterEachItem:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x1E69E9840];
  v5 = framework_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "no";
    if (v3)
    {
      v6 = "yes";
    }

    v7 = 136315394;
    v8 = "[SFMediaPlayerView setPausesAfterEachItem:]";
    v9 = 2080;
    v10 = v6;
    _os_log_impl(&dword_1B9E4B000, v5, OS_LOG_TYPE_DEFAULT, "%s %s", &v7, 0x16u);
  }

  self->_pausesAfterEachItem = v3;
  [(AVQueuePlayer *)self->_avQueuePlayer setActionAtItemEnd:v3];
}

- (void)addMovieItem:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  mediaItems = self->_mediaItems;
  if (!mediaItems)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_mediaItems;
    self->_mediaItems = v6;

    mediaItems = self->_mediaItems;
  }

  [(NSMutableArray *)mediaItems addObject:v4];
  v8 = MEMORY[0x1E69880B0];
  v9 = [v4 url];
  v10 = [v8 playerItemWithURL:v9];

  [v4 setPlayerItem:v10];
  v11 = self->_avQueuePlayer;
  if (!v11)
  {
    v12 = [MEMORY[0x1E6958460] sharedInstance];
    [v12 setCategory:*MEMORY[0x1E6958038] withOptions:1 error:0];

    v11 = objc_alloc_init(MEMORY[0x1E6988100]);
    [(AVQueuePlayer *)v11 setAllowsExternalPlayback:0];
    [(AVQueuePlayer *)v11 setPreventsDisplaySleepDuringVideoPlayback:0];
    [(AVQueuePlayer *)v11 _setDisallowsAutoPauseOnRouteRemovalIfNoAudio:1];
    objc_storeStrong(&self->_avQueuePlayer, v11);
    v13 = [(SFMediaPlayerView *)self layer];
    [v13 setPlayer:v11];

    [(SFMediaPlayerView *)self setPausesAfterEachItem:[(SFMediaPlayerView *)self pausesAfterEachItem]];
    [(AVQueuePlayer *)self->_avQueuePlayer addObserver:self forKeyPath:@"currentItem" options:3 context:SFMediaPlayerViewObserverContext];
    self->_isKVOObserver = 1;
  }

  v14 = framework_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[SFMediaPlayerView addMovieItem:]";
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_1B9E4B000, v14, OS_LOG_TYPE_DEFAULT, "%s %@", &v15, 0x16u);
  }

  [(SFMediaPlayerView *)self enqueueItemsFromMediaItem:v4 afterItem:0];
}

- (void)removeAllQueuedItems
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_mediaItems copy];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(SFMediaPlayerView *)self removeMovieItem:*(*(&v9 + 1) + 8 * v8++), v9];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)removeMovieItem:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = framework_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[SFMediaPlayerView removeMovieItem:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_1B9E4B000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v9, 0x16u);
  }

  v6 = [v4 observerToken];

  if (v6)
  {
    avQueuePlayer = self->_avQueuePlayer;
    v8 = [v4 observerToken];
    [(AVQueuePlayer *)avQueuePlayer removeTimeObserver:v8];
  }

  [v4 invalidate];
  [(NSMutableArray *)self->_mediaItems removeObject:v4];
}

- (void)breakFirstEnqueuedLoop
{
  v19 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_mediaItems;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 shouldLoop])
        {
          [v8 setShouldLoop:0];
          [(SFMediaPlayerView *)self dequeueNonPlayingItemsFromMediaItem:v8];
          v9 = framework_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v15 = "[SFMediaPlayerView breakFirstEnqueuedLoop]";
            v16 = 2112;
            v17 = v8;
            _os_log_impl(&dword_1B9E4B000, v9, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
          }

          goto LABEL_13;
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)speedUpRemainderOfCurrentItem
{
  [(SFMediaPlayerView *)self stopSpeedUpTimer];
  v3 = [(AVQueuePlayer *)self->_avQueuePlayer currentItem];
  if (v3)
  {
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    speedUpTimer = self->_speedUpTimer;
    self->_speedUpTimer = v4;

    v6 = self->_speedUpTimer;
    v7 = dispatch_time(0, 100000000);
    dispatch_source_set_timer(v6, v7, 0x5F5E100uLL, 0x17D7840uLL);
    v8 = self->_speedUpTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __50__SFMediaPlayerView_speedUpRemainderOfCurrentItem__block_invoke;
    handler[3] = &unk_1E7EE3C68;
    handler[4] = self;
    handler[5] = v3;
    handler[6] = 200;
    v10 = xmmword_1B9EDE990;
    v11 = 100;
    v12 = 0x4000000000000000;
    dispatch_source_set_event_handler(v8, handler);
    dispatch_resume(self->_speedUpTimer);
  }
}

void __50__SFMediaPlayerView_speedUpRemainderOfCurrentItem__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 416) rate];
  v3 = v2;
  memset(&v24, 0, sizeof(v24));
  v4 = *(a1 + 40);
  if (v4)
  {
    [v4 duration];
  }

  else
  {
    memset(&lhs, 0, sizeof(lhs));
  }

  v5 = *(*(a1 + 32) + 416);
  if (v5)
  {
    [v5 currentTime];
  }

  else
  {
    memset(&v23, 0, sizeof(v23));
  }

  CMTimeSubtract(&v24, &lhs, &v23);
  lhs = v24;
  v6 = (CMTimeGetSeconds(&lhs) * 1000.0);
  v7 = *(a1 + 48);
  v8 = v6 >= v7;
  v9 = v6 - v7;
  if (!v8)
  {
    v9 = 0;
  }

  v10 = v3;
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = v3 - v11;
  v14 = *(a1 + 72);
  v15 = (v13 / v12 * v14);
  if (v9 <= v15)
  {
    if (v13 <= v11)
    {
      v13 = *(a1 + 56);
    }

    v18 = v13 / v9 * v14;
    v19 = v3 - v18;
    if (v11 >= v19)
    {
      v17 = v11;
    }

    else
    {
      v17 = v19;
    }
  }

  else
  {
    v16 = v12 + v10;
    if (v12 + v10 >= *(a1 + 80))
    {
      v16 = *(a1 + 80);
    }

    v17 = v16;
  }

  if (vabds_f32(v3, v17) >= 0.00000011921)
  {
    v20 = framework_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 48);
      LODWORD(lhs.value) = 136316418;
      *(&lhs.value + 4) = "[SFMediaPlayerView speedUpRemainderOfCurrentItem]_block_invoke";
      LOWORD(lhs.flags) = 2048;
      *(&lhs.flags + 2) = v15;
      HIWORD(lhs.epoch) = 2048;
      v26 = v6;
      v27 = 2048;
      v28 = v21;
      v29 = 2048;
      v30 = v3;
      v31 = 2048;
      v32 = v17;
      _os_log_impl(&dword_1B9E4B000, v20, OS_LOG_TYPE_DEFAULT, "%s timeToReturnMS:%lums, timeRemaining:%lums (buffer: %lums), rate change %f->%f", &lhs, 0x3Eu);
    }

    *&v22 = v17;
    [*(*(a1 + 32) + 416) setRate:v22];
  }
}

- (void)stopSpeedUpTimer
{
  v13 = *MEMORY[0x1E69E9840];
  speedUpTimer = self->_speedUpTimer;
  if (speedUpTimer)
  {
    v4 = speedUpTimer;
    dispatch_source_cancel(v4);
    v5 = self->_speedUpTimer;
    self->_speedUpTimer = 0;

    LODWORD(v6) = 1.0;
    [(AVQueuePlayer *)self->_avQueuePlayer setRate:v6];
    v7 = framework_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      [(AVQueuePlayer *)self->_avQueuePlayer rate];
      v9 = 136315394;
      v10 = "[SFMediaPlayerView stopSpeedUpTimer]";
      v11 = 2048;
      v12 = v8;
      _os_log_impl(&dword_1B9E4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Resetting rate to %f", &v9, 0x16u);
    }
  }
}

- (void)enqueueItemsFromMediaItem:(id)a3 afterItem:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = framework_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[SFMediaPlayerView enqueueItemsFromMediaItem:afterItem:]";
    _os_log_impl(&dword_1B9E4B000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v9 = v7;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = v6;
  obj = [v6 playerItems];
  v10 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  v21 = v9;
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    v22 = *MEMORY[0x1E6987A10];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v15 = [(AVQueuePlayer *)self->_avQueuePlayer items];
        v16 = [v15 containsObject:v14];

        if ((v16 & 1) == 0)
        {
          *buf = *MEMORY[0x1E6960CC0];
          *&buf[16] = *(MEMORY[0x1E6960CC0] + 16);
          v26 = *buf;
          v27 = *&buf[16];
          v24 = *buf;
          v25 = *&buf[16];
          [v14 seekToTime:buf toleranceBefore:&v26 toleranceAfter:&v24 completionHandler:0];
          v17 = framework_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = "[SFMediaPlayerView enqueueItemsFromMediaItem:afterItem:]";
            *&buf[12] = 2112;
            *&buf[14] = v14;
            *&buf[22] = 2112;
            v33 = v9;
            _os_log_impl(&dword_1B9E4B000, v17, OS_LOG_TYPE_DEFAULT, "%s insertItem: %@ afterItem: %@", buf, 0x20u);
          }

          [(AVQueuePlayer *)self->_avQueuePlayer insertItem:v14 afterItem:v9];
          v18 = [MEMORY[0x1E696AD88] defaultCenter];
          [v18 addObserver:self selector:sel_playerItemDidReachEnd_ name:v22 object:v14];

          v19 = v14;
          v9 = v19;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v11);
  }
}

- (void)dequeueNonPlayingItemsFromMediaItem:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = framework_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[SFMediaPlayerView dequeueNonPlayingItemsFromMediaItem:]";
    _os_log_impl(&dword_1B9E4B000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v6 = [(AVQueuePlayer *)self->_avQueuePlayer currentItem];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v18 = v4;
  v7 = [v4 playerItems];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = v6;
        v14 = v12;
        v15 = v14;
        if (v13 == v14)
        {

          continue;
        }

        if ((v6 != 0) != (v14 == 0))
        {
          v16 = [v13 isEqual:v14];

          if (v16)
          {
            continue;
          }
        }

        else
        {
        }

        v17 = framework_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v24 = "[SFMediaPlayerView dequeueNonPlayingItemsFromMediaItem:]";
          v25 = 2112;
          v26 = v15;
          _os_log_impl(&dword_1B9E4B000, v17, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
        }

        [(AVQueuePlayer *)self->_avQueuePlayer removeItem:v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v9);
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (SFMediaPlayerViewObserverContext == a6)
  {
    v13 = v10;
    if (v13 == @"currentItem" || (v14 = v13) != 0 && (v15 = [(__CFString *)v13 isEqual:@"currentItem"], v14, v15))
    {
      v30 = v11;
      v31 = v10;
      v16 = [v12 objectForKey:*MEMORY[0x1E696A500]];
      v17 = [v12 objectForKey:*MEMORY[0x1E696A4F0]];
      v18 = framework_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v41 = "[SFMediaPlayerView observeValueForKeyPath:ofObject:change:context:]";
        v42 = 2112;
        v43 = v16;
        v44 = 2112;
        v45 = v17;
        _os_log_impl(&dword_1B9E4B000, v18, OS_LOG_TYPE_DEFAULT, "%s currentItem: %@ -> %@", buf, 0x20u);
      }

      v29 = v16;

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v19 = self->_mediaItems;
      v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v35;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v35 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v34 + 1) + 8 * i);
            v25 = [v24 playerItems];
            v26 = [v25 containsObject:v17];

            if (v26)
            {
              v27 = [v24 startedHandler];

              if (v27)
              {
                v28 = [v24 startedHandler];
                v28[2]();
              }

              [(SFMediaPlayerView *)self setUpTimeRangeNotificationsForItem:v24];
              if ([v24 shouldLoop])
              {
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = __68__SFMediaPlayerView_observeValueForKeyPath_ofObject_change_context___block_invoke;
                block[3] = &unk_1E7EE3770;
                block[4] = self;
                block[5] = v24;
                v33 = v17;
                dispatch_async(MEMORY[0x1E69E96A0], block);
              }
            }
          }

          v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v21);
      }

      v11 = v30;
      v10 = v31;
    }
  }

  else
  {
    v38.receiver = self;
    v38.super_class = SFMediaPlayerView;
    [(SFMediaPlayerView *)&v38 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)setUpTimeRangeNotificationsForItem:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 playbackNotificationTimeRanges];
  v6 = [v5 count];

  if (v6)
  {
    v7 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v8 = [v4 playbackNotificationTimeRanges];
    v9 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v9)
    {
      v10 = *v33;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v32 + 1) + 8 * i);
          memset(&buf, 0, sizeof(buf));
          if (v12)
          {
            [v12 CMTimeRangeValue];
          }

          *&range.start.value = *&buf.start.value;
          range.start.epoch = buf.start.epoch;
          v13 = [MEMORY[0x1E696B098] valueWithCMTime:&range];
          [v7 addObject:v13];

          v14 = MEMORY[0x1E696B098];
          range = buf;
          CMTimeRangeGetEnd(&v31, &range);
          v15 = [v14 valueWithCMTime:&v31];
          [v7 addObject:v15];
        }

        v9 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v9);
    }

    v16 = [v4 observerToken];

    if (v16)
    {
      avQueuePlayer = self->_avQueuePlayer;
      v18 = [v4 observerToken];
      [(AVQueuePlayer *)avQueuePlayer removeTimeObserver:v18];
    }

    v19 = framework_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = SFCompactStringFromCollection();
      LODWORD(buf.start.value) = 136315650;
      *(&buf.start.value + 4) = "[SFMediaPlayerView setUpTimeRangeNotificationsForItem:]";
      LOWORD(buf.start.flags) = 2112;
      *(&buf.start.flags + 2) = v4;
      HIWORD(buf.start.epoch) = 2112;
      buf.duration.value = v20;
      _os_log_impl(&dword_1B9E4B000, v19, OS_LOG_TYPE_DEFAULT, "%s mediaItem: %@, times: %@", &buf, 0x20u);
    }

    objc_initWeak(&buf, self);
    objc_initWeak(&range, v4);
    v21 = self->_avQueuePlayer;
    v22 = MEMORY[0x1E69E96A0];
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __56__SFMediaPlayerView_setUpTimeRangeNotificationsForItem___block_invoke;
    v27 = &unk_1E7EE3C90;
    objc_copyWeak(&v28, &buf);
    objc_copyWeak(&v29, &range);
    v23 = [(AVQueuePlayer *)v21 addBoundaryTimeObserverForTimes:v7 queue:MEMORY[0x1E69E96A0] usingBlock:&v24];
    [v4 setObserverToken:{v23, v24, v25, v26, v27}];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&range);
    objc_destroyWeak(&buf);
  }
}

void __56__SFMediaPlayerView_setUpTimeRangeNotificationsForItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleBoundaryTimeObserverForMediaItem:v2];
}

- (void)handleBoundaryTimeObserverForMediaItem:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  memset(&v21, 0, sizeof(v21));
  avQueuePlayer = self->_avQueuePlayer;
  if (avQueuePlayer)
  {
    [(AVQueuePlayer *)avQueuePlayer currentTime];
  }

  memset(&v20, 0, sizeof(v20));
  CMTimeMake(&v20, 1, 10);
  v6 = [v4 playbackNotificationTimeRanges];
  v7 = [v6 count];

  if (v7)
  {
    v8 = 0;
    while (1)
    {
      v9 = [v4 playbackNotificationTimeRanges];
      v10 = [v9 objectAtIndexedSubscript:v8];

      memset(&v19, 0, sizeof(v19));
      if (v10)
      {
        [v10 CMTimeRangeValue];
      }

      start = v19.start;
      lhs = v19.start;
      rhs = v20;
      CMTimeSubtract(&time1.start, &lhs, &rhs);
      lhs = v21;
      if (CMTimeCompare(&time1.start, &lhs) < 0)
      {
        lhs = start;
        rhs = v20;
        CMTimeAdd(&time1.start, &lhs, &rhs);
        lhs = v21;
        if (CMTimeCompare(&time1.start, &lhs) >= 1)
        {
          break;
        }
      }

      memset(&lhs, 0, sizeof(lhs));
      time1 = v19;
      CMTimeRangeGetEnd(&lhs, &time1);
      rhs = lhs;
      v15 = v20;
      CMTimeSubtract(&time1.start, &rhs, &v15);
      rhs = v21;
      if (CMTimeCompare(&time1.start, &rhs) < 0)
      {
        rhs = lhs;
        v15 = v20;
        CMTimeAdd(&time1.start, &rhs, &v15);
        rhs = v21;
        if (CMTimeCompare(&time1.start, &rhs) >= 1)
        {
          v13 = framework_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(time1.start.value) = 136315650;
            *(&time1.start.value + 4) = "[SFMediaPlayerView handleBoundaryTimeObserverForMediaItem:]";
            LOWORD(time1.start.flags) = 2112;
            *(&time1.start.flags + 2) = v4;
            HIWORD(time1.start.epoch) = 2048;
            time1.duration.value = v8;
            _os_log_impl(&dword_1B9E4B000, v13, OS_LOG_TYPE_DEFAULT, "%s mediaItem: %@, triggering timeRangeHandler with end of range %ld", &time1, 0x20u);
          }

          goto LABEL_18;
        }
      }

      ++v8;
      v11 = [v4 playbackNotificationTimeRanges];
      v12 = [v11 count];

      if (v8 >= v12)
      {
        goto LABEL_19;
      }
    }

    v13 = framework_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(time1.start.value) = 136315650;
      *(&time1.start.value + 4) = "[SFMediaPlayerView handleBoundaryTimeObserverForMediaItem:]";
      LOWORD(time1.start.flags) = 2112;
      *(&time1.start.flags + 2) = v4;
      HIWORD(time1.start.epoch) = 2048;
      time1.duration.value = v8;
      _os_log_impl(&dword_1B9E4B000, v13, OS_LOG_TYPE_DEFAULT, "%s mediaItem: %@, triggering timeRangeHandler with start of range %ld", &time1, 0x20u);
    }

LABEL_18:

    v14 = [v4 timeRangeHandler];
    v14[2]();
  }

LABEL_19:
}

- (void)playerItemDidReachEnd:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(SFMediaPlayerView *)self stopSpeedUpTimer];
  v5 = [v4 object];

  v6 = framework_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[SFMediaPlayerView playerItemDidReachEnd:]";
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_1B9E4B000, v6, OS_LOG_TYPE_DEFAULT, "%s playerItem: %@", buf, 0x16u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__SFMediaPlayerView_playerItemDidReachEnd___block_invoke;
  v8[3] = &unk_1E7EE3748;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __43__SFMediaPlayerView_playerItemDidReachEnd___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(*(a1 + 32) + 424);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 playerItems];
        v9 = [v8 containsObject:*(a1 + 40)];

        if (v9)
        {
          if (([v7 shouldLoop] & 1) == 0)
          {
            v10 = framework_log();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v18 = "[SFMediaPlayerView playerItemDidReachEnd:]_block_invoke";
              v19 = 2112;
              v20 = v7;
              _os_log_impl(&dword_1B9E4B000, v10, OS_LOG_TYPE_DEFAULT, "%s endedItem: %@", buf, 0x16u);
            }

            v11 = [v7 completedHandler];

            if (v11)
            {
              v12 = [v7 completedHandler];
              v12[2]();
            }

            [*(a1 + 32) removeMovieItem:v7];
          }

          goto LABEL_16;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
}

@end