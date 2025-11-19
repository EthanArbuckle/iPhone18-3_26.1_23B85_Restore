@interface PKMediaPlayerView
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
- (void)seekToTime:(id *)a3;
- (void)setPausesAfterEachItem:(BOOL)a3;
- (void)setUpTimeRangeNotificationsForItem:(id)a3;
- (void)speedUpRemainderOfCurrentItem;
- (void)startMovieLoopWithPath:(id)a3;
- (void)stop;
- (void)stopSpeedUpTimer;
- (void)updateViewForAssetType:(int)a3 adjustmentsURL:(id)a4;
@end

@implementation PKMediaPlayerView

- (void)dealloc
{
  if (self->_isKVOObserver && self->_avQueuePlayer)
  {
    v3 = framework_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [(PKMediaPlayerView *)v3 dealloc];
    }

    [(AVQueuePlayer *)self->_avQueuePlayer removeObserver:self forKeyPath:@"currentItem" context:SFMediaPlayerViewObserverContext];
  }

  v4.receiver = self;
  v4.super_class = PKMediaPlayerView;
  [(PKMediaPlayerView *)&v4 dealloc];
}

- (void)startMovieLoopWithPath:(id)a3
{
  v11 = a3;
  v4 = self->_avQueuePlayer;
  if (!v4)
  {
    v5 = [MEMORY[0x277CB83F8] sharedInstance];
    [v5 setCategory:*MEMORY[0x277CB8020] withOptions:1 error:0];

    v4 = objc_alloc_init(MEMORY[0x277CE65F8]);
    [(AVQueuePlayer *)v4 setAllowsExternalPlayback:0];
    [(AVQueuePlayer *)v4 setPreventsDisplaySleepDuringVideoPlayback:0];
    [(AVQueuePlayer *)v4 _setDisallowsAutoPauseOnRouteRemovalIfNoAudio:1];
    objc_storeStrong(&self->_avQueuePlayer, v4);
    v6 = [(PKMediaPlayerView *)self layer];
    [v6 setPlayer:v4];

    [(PKMediaPlayerView *)self setPausesAfterEachItem:[(PKMediaPlayerView *)self pausesAfterEachItem]];
  }

  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v11 isDirectory:0];
  v8 = [MEMORY[0x277CE65B0] playerItemWithURL:v7];
  v9 = [MEMORY[0x277CE65E0] playerLooperWithPlayer:v4 templateItem:v8];
  avLooper = self->_avLooper;
  self->_avLooper = v9;

  [(PKMediaPlayerView *)self play];
}

- (void)updateViewForAssetType:(int)a3 adjustmentsURL:(id)a4
{
  v6 = PKAdjustmentFiltersForAssetTypeAndURL(a3, a4);
  v5 = [(PKMediaPlayerView *)self layer];
  [v5 setFilters:v6];
}

- (void)stop
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = framework_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[PKMediaPlayerView stop]";
    _os_log_impl(&dword_260E02000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  [(PKMediaPlayerView *)self _pause];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSMutableArray *)self->_mediaItems copy];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PKMediaPlayerView *)self removeMovieItem:*(*(&v14 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

  [(PKMediaPlayerView *)self stopSpeedUpTimer];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)play
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = framework_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[PKMediaPlayerView play]";
    _os_log_impl(&dword_260E02000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(AVQueuePlayer *)self->_avQueuePlayer play];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)pause
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = framework_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[PKMediaPlayerView pause]";
    _os_log_impl(&dword_260E02000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(PKMediaPlayerView *)self _pause];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)setPausesAfterEachItem:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x277D85DE8];
  v5 = framework_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "no";
    if (v3)
    {
      v6 = "yes";
    }

    v8 = 136315394;
    v9 = "[PKMediaPlayerView setPausesAfterEachItem:]";
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_260E02000, v5, OS_LOG_TYPE_DEFAULT, "%s %s", &v8, 0x16u);
  }

  self->_pausesAfterEachItem = v3;
  [(AVQueuePlayer *)self->_avQueuePlayer setActionAtItemEnd:v3];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)addMovieItem:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  mediaItems = self->_mediaItems;
  if (!mediaItems)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_mediaItems;
    self->_mediaItems = v6;

    mediaItems = self->_mediaItems;
  }

  [(NSMutableArray *)mediaItems addObject:v4];
  v8 = MEMORY[0x277CE65B0];
  v9 = [v4 url];
  v10 = [v8 playerItemWithURL:v9];

  [v4 setPlayerItem:v10];
  v11 = self->_avQueuePlayer;
  if (!v11)
  {
    v12 = [MEMORY[0x277CB83F8] sharedInstance];
    [v12 setCategory:*MEMORY[0x277CB8020] withOptions:1 error:0];

    v11 = objc_alloc_init(MEMORY[0x277CE65F8]);
    [(AVQueuePlayer *)v11 setAllowsExternalPlayback:0];
    [(AVQueuePlayer *)v11 setPreventsDisplaySleepDuringVideoPlayback:0];
    [(AVQueuePlayer *)v11 _setDisallowsAutoPauseOnRouteRemovalIfNoAudio:1];
    objc_storeStrong(&self->_avQueuePlayer, v11);
    v13 = [(PKMediaPlayerView *)self layer];
    [v13 setPlayer:v11];

    [(PKMediaPlayerView *)self setPausesAfterEachItem:[(PKMediaPlayerView *)self pausesAfterEachItem]];
    [(AVQueuePlayer *)self->_avQueuePlayer addObserver:self forKeyPath:@"currentItem" options:3 context:SFMediaPlayerViewObserverContext];
    self->_isKVOObserver = 1;
  }

  v14 = framework_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "[PKMediaPlayerView addMovieItem:]";
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_260E02000, v14, OS_LOG_TYPE_DEFAULT, "%s %@", &v16, 0x16u);
  }

  [(PKMediaPlayerView *)self enqueueItemsFromMediaItem:v4 afterItem:0];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)removeAllQueuedItems
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_mediaItems copy];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(PKMediaPlayerView *)self removeMovieItem:*(*(&v10 + 1) + 8 * v8++), v10];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeMovieItem:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = framework_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[PKMediaPlayerView removeMovieItem:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_260E02000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v10, 0x16u);
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

  v9 = *MEMORY[0x277D85DE8];
}

- (void)breakFirstEnqueuedLoop
{
  v20 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_mediaItems;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 shouldLoop])
        {
          [v8 setShouldLoop:0];
          [(PKMediaPlayerView *)self dequeueNonPlayingItemsFromMediaItem:v8];
          v9 = framework_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v16 = "[PKMediaPlayerView breakFirstEnqueuedLoop]";
            v17 = 2112;
            v18 = v8;
            _os_log_impl(&dword_260E02000, v9, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
          }

          goto LABEL_13;
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v10 = *MEMORY[0x277D85DE8];
}

- (void)speedUpRemainderOfCurrentItem
{
  [(PKMediaPlayerView *)self stopSpeedUpTimer];
  v3 = [(AVQueuePlayer *)self->_avQueuePlayer currentItem];
  if (v3)
  {
    v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    speedUpTimer = self->_speedUpTimer;
    self->_speedUpTimer = v4;

    v6 = self->_speedUpTimer;
    v7 = dispatch_time(0, 100000000);
    dispatch_source_set_timer(v6, v7, 0x5F5E100uLL, 0x17D7840uLL);
    v8 = self->_speedUpTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __50__PKMediaPlayerView_speedUpRemainderOfCurrentItem__block_invoke;
    handler[3] = &unk_279AC3D60;
    handler[4] = self;
    handler[5] = v3;
    handler[6] = 200;
    v10 = xmmword_260E6AB70;
    v11 = 100;
    v12 = 0x4000000000000000;
    dispatch_source_set_event_handler(v8, handler);
    dispatch_resume(self->_speedUpTimer);
  }
}

void __50__PKMediaPlayerView_speedUpRemainderOfCurrentItem__block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 416) rate];
  v3 = v2;
  memset(&v25, 0, sizeof(v25));
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
    memset(&v24, 0, sizeof(v24));
  }

  CMTimeSubtract(&v25, &lhs, &v24);
  lhs = v25;
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
      *(&lhs.value + 4) = "[PKMediaPlayerView speedUpRemainderOfCurrentItem]_block_invoke";
      LOWORD(lhs.flags) = 2048;
      *(&lhs.flags + 2) = v15;
      HIWORD(lhs.epoch) = 2048;
      v27 = v6;
      v28 = 2048;
      v29 = v21;
      v30 = 2048;
      v31 = v3;
      v32 = 2048;
      v33 = v17;
      _os_log_impl(&dword_260E02000, v20, OS_LOG_TYPE_DEFAULT, "%s timeToReturnMS:%lums, timeRemaining:%lums (buffer: %lums), rate change %f->%f", &lhs, 0x3Eu);
    }

    *&v22 = v17;
    [*(*(a1 + 32) + 416) setRate:v22];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)stopSpeedUpTimer
{
  v14 = *MEMORY[0x277D85DE8];
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
      v10 = 136315394;
      v11 = "[PKMediaPlayerView stopSpeedUpTimer]";
      v12 = 2048;
      v13 = v8;
      _os_log_impl(&dword_260E02000, v7, OS_LOG_TYPE_DEFAULT, "%s Resetting rate to %f", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)seekToTime:(id *)a3
{
  avQueuePlayer = self->_avQueuePlayer;
  v6 = framework_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (avQueuePlayer)
  {
    if (v7)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_260E02000, v6, OS_LOG_TYPE_DEFAULT, "Seeking to time", &v9, 2u);
    }

    v8 = self->_avQueuePlayer;
    v9 = *&a3->var0;
    var3 = a3->var3;
    [(AVQueuePlayer *)v8 seekToTime:&v9];
  }

  else
  {
    if (v7)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_260E02000, v6, OS_LOG_TYPE_DEFAULT, "No player to seek to time", &v9, 2u);
    }
  }
}

- (void)enqueueItemsFromMediaItem:(id)a3 afterItem:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = framework_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[PKMediaPlayerView enqueueItemsFromMediaItem:afterItem:]";
    _os_log_impl(&dword_260E02000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v9 = v7;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v21 = v6;
  obj = [v6 playerItems];
  v10 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  v22 = v9;
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    v23 = *MEMORY[0x277CE60C0];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        v15 = [(AVQueuePlayer *)self->_avQueuePlayer items];
        v16 = [v15 containsObject:v14];

        if ((v16 & 1) == 0)
        {
          *buf = *MEMORY[0x277CC08F0];
          *&buf[16] = *(MEMORY[0x277CC08F0] + 16);
          v27 = *buf;
          v28 = *&buf[16];
          v25 = *buf;
          v26 = *&buf[16];
          [v14 seekToTime:buf toleranceBefore:&v27 toleranceAfter:&v25 completionHandler:0];
          v17 = framework_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = "[PKMediaPlayerView enqueueItemsFromMediaItem:afterItem:]";
            *&buf[12] = 2112;
            *&buf[14] = v14;
            *&buf[22] = 2112;
            v34 = v9;
            _os_log_impl(&dword_260E02000, v17, OS_LOG_TYPE_DEFAULT, "%s insertItem: %@ afterItem: %@", buf, 0x20u);
          }

          [(AVQueuePlayer *)self->_avQueuePlayer insertItem:v14 afterItem:v9];
          v18 = [MEMORY[0x277CCAB98] defaultCenter];
          [v18 addObserver:self selector:sel_playerItemDidReachEnd_ name:v23 object:v14];

          v19 = v14;
          v9 = v19;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v11);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)dequeueNonPlayingItemsFromMediaItem:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = framework_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "[PKMediaPlayerView dequeueNonPlayingItemsFromMediaItem:]";
    _os_log_impl(&dword_260E02000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v6 = [(AVQueuePlayer *)self->_avQueuePlayer currentItem];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v19 = v4;
  v7 = [v4 playerItems];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
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
          v25 = "[PKMediaPlayerView dequeueNonPlayingItemsFromMediaItem:]";
          v26 = 2112;
          v27 = v15;
          _os_log_impl(&dword_260E02000, v17, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
        }

        [(AVQueuePlayer *)self->_avQueuePlayer removeItem:v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v9);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v47 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (SFMediaPlayerViewObserverContext == a6)
  {
    v13 = v10;
    if (v13 == @"currentItem" || (v14 = v13) != 0 && (v15 = [(__CFString *)v13 isEqual:@"currentItem"], v14, v15))
    {
      v31 = v11;
      v32 = v10;
      v16 = [v12 objectForKey:*MEMORY[0x277CCA300]];
      v17 = [v12 objectForKey:*MEMORY[0x277CCA2F0]];
      v18 = framework_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v42 = "[PKMediaPlayerView observeValueForKeyPath:ofObject:change:context:]";
        v43 = 2112;
        v44 = v16;
        v45 = 2112;
        v46 = v17;
        _os_log_impl(&dword_260E02000, v18, OS_LOG_TYPE_DEFAULT, "%s currentItem: %@ -> %@", buf, 0x20u);
      }

      v30 = v16;

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v19 = self->_mediaItems;
      v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v36;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v36 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v35 + 1) + 8 * i);
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

              [(PKMediaPlayerView *)self setUpTimeRangeNotificationsForItem:v24];
              if ([v24 shouldLoop])
              {
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __68__PKMediaPlayerView_observeValueForKeyPath_ofObject_change_context___block_invoke;
                block[3] = &unk_279AC3D88;
                block[4] = self;
                block[5] = v24;
                v34 = v17;
                dispatch_async(MEMORY[0x277D85CD0], block);
              }
            }
          }

          v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v21);
      }

      v11 = v31;
      v10 = v32;
    }
  }

  else
  {
    v39.receiver = self;
    v39.super_class = PKMediaPlayerView;
    [(PKMediaPlayerView *)&v39 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)setUpTimeRangeNotificationsForItem:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
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
    v9 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
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
          memset(&location, 0, sizeof(location));
          if (v12)
          {
            [v12 CMTimeRangeValue];
          }

          *&range.start.value = *&location.start.value;
          range.start.epoch = location.start.epoch;
          v13 = [MEMORY[0x277CCAE60] valueWithCMTime:&range];
          [v7 addObject:v13];

          v14 = MEMORY[0x277CCAE60];
          range = location;
          CMTimeRangeGetEnd(&v30, &range);
          v15 = [v14 valueWithCMTime:&v30];
          [v7 addObject:v15];
        }

        v9 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
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

    objc_initWeak(&location, self);
    objc_initWeak(&range, v4);
    v19 = self->_avQueuePlayer;
    v20 = MEMORY[0x277D85CD0];
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __56__PKMediaPlayerView_setUpTimeRangeNotificationsForItem___block_invoke;
    v26 = &unk_279AC3DB0;
    objc_copyWeak(&v27, &location);
    objc_copyWeak(&v28, &range);
    v21 = [(AVQueuePlayer *)v19 addBoundaryTimeObserverForTimes:v7 queue:MEMORY[0x277D85CD0] usingBlock:&v23];
    [v4 setObserverToken:{v21, v23, v24, v25, v26}];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&range);
    objc_destroyWeak(&location);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __56__PKMediaPlayerView_setUpTimeRangeNotificationsForItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleBoundaryTimeObserverForMediaItem:v2];
}

- (void)handleBoundaryTimeObserverForMediaItem:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  memset(&v22, 0, sizeof(v22));
  avQueuePlayer = self->_avQueuePlayer;
  if (avQueuePlayer)
  {
    [(AVQueuePlayer *)avQueuePlayer currentTime];
  }

  memset(&v21, 0, sizeof(v21));
  CMTimeMake(&v21, 1, 10);
  v6 = [v4 playbackNotificationTimeRanges];
  v7 = [v6 count];

  if (v7)
  {
    v8 = 0;
    while (1)
    {
      v9 = [v4 playbackNotificationTimeRanges];
      v10 = [v9 objectAtIndexedSubscript:v8];

      memset(&v20, 0, sizeof(v20));
      if (v10)
      {
        [v10 CMTimeRangeValue];
      }

      start = v20.start;
      lhs = v20.start;
      rhs = v21;
      CMTimeSubtract(&time1.start, &lhs, &rhs);
      lhs = v22;
      if (CMTimeCompare(&time1.start, &lhs) < 0)
      {
        lhs = start;
        rhs = v21;
        CMTimeAdd(&time1.start, &lhs, &rhs);
        lhs = v22;
        if (CMTimeCompare(&time1.start, &lhs) >= 1)
        {
          break;
        }
      }

      memset(&lhs, 0, sizeof(lhs));
      time1 = v20;
      CMTimeRangeGetEnd(&lhs, &time1);
      rhs = lhs;
      v16 = v21;
      CMTimeSubtract(&time1.start, &rhs, &v16);
      rhs = v22;
      if (CMTimeCompare(&time1.start, &rhs) < 0)
      {
        rhs = lhs;
        v16 = v21;
        CMTimeAdd(&time1.start, &rhs, &v16);
        rhs = v22;
        if (CMTimeCompare(&time1.start, &rhs) >= 1)
        {
          v13 = framework_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(time1.start.value) = 136315650;
            *(&time1.start.value + 4) = "[PKMediaPlayerView handleBoundaryTimeObserverForMediaItem:]";
            LOWORD(time1.start.flags) = 2112;
            *(&time1.start.flags + 2) = v4;
            HIWORD(time1.start.epoch) = 2048;
            time1.duration.value = v8;
            _os_log_impl(&dword_260E02000, v13, OS_LOG_TYPE_DEFAULT, "%s mediaItem: %@, triggering timeRangeHandler with end of range %ld", &time1, 0x20u);
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
      *(&time1.start.value + 4) = "[PKMediaPlayerView handleBoundaryTimeObserverForMediaItem:]";
      LOWORD(time1.start.flags) = 2112;
      *(&time1.start.flags + 2) = v4;
      HIWORD(time1.start.epoch) = 2048;
      time1.duration.value = v8;
      _os_log_impl(&dword_260E02000, v13, OS_LOG_TYPE_DEFAULT, "%s mediaItem: %@, triggering timeRangeHandler with start of range %ld", &time1, 0x20u);
    }

LABEL_18:

    v14 = [v4 timeRangeHandler];
    v14[2]();
  }

LABEL_19:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)playerItemDidReachEnd:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(PKMediaPlayerView *)self stopSpeedUpTimer];
  v5 = [v4 object];

  v6 = framework_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[PKMediaPlayerView playerItemDidReachEnd:]";
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_260E02000, v6, OS_LOG_TYPE_DEFAULT, "%s playerItem: %@", buf, 0x16u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__PKMediaPlayerView_playerItemDidReachEnd___block_invoke;
  v9[3] = &unk_279AC3DD8;
  v9[4] = self;
  v10 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __43__PKMediaPlayerView_playerItemDidReachEnd___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(*(a1 + 32) + 424);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
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
              v19 = "[PKMediaPlayerView playerItemDidReachEnd:]_block_invoke";
              v20 = 2112;
              v21 = v7;
              _os_log_impl(&dword_260E02000, v10, OS_LOG_TYPE_DEFAULT, "%s endedItem: %@", buf, 0x16u);
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

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v22 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v13 = *MEMORY[0x277D85DE8];
}

@end