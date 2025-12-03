@interface TPSVideoAssetView
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime;
- (BOOL)displayingVideoLastFrame;
- (BOOL)updateImageToVideoLastFrame;
- (TPSVideoAssetViewDelegate)videoDelegate;
- (void)avplayerDidFinishPlaying:(id)playing;
- (void)avplayerItemErrorChanged:(id)changed;
- (void)cancel;
- (void)cancelReplayButtonTimer;
- (void)cancelVideoDownloadTask;
- (void)commonInit;
- (void)dealloc;
- (void)fetchImageWithIdentifier:(id)identifier path:(id)path;
- (void)layoutSubviews;
- (void)playVideo;
- (void)playVideoDelay;
- (void)removeVideoPlayerLayer;
- (void)replayVideo;
- (void)resetVideoPlayer;
- (void)restartVideoDelay;
- (void)scrubVideoToFirstFrame;
- (void)setAspectFillAsset:(BOOL)asset;
- (void)setVideoDelegate:(id)delegate;
- (void)setVideoPath:(id)path;
- (void)stopVideoPlayer;
- (void)updateReplayButtonHiddenState:(BOOL)state;
- (void)updateVideoGravity;
@end

@implementation TPSVideoAssetView

- (void)dealloc
{
  [(TPSVideoAssetView *)self stopVideoPlayer];
  [(TPSVideoAssetView *)self cancelVideoDownloadTask];
  [(TPSKVOManager *)self->_KVOManager removeAllKVOObjects];
  v3.receiver = self;
  v3.super_class = TPSVideoAssetView;
  [(TPSVideoAssetView *)&v3 dealloc];
}

- (void)commonInit
{
  v5.receiver = self;
  v5.super_class = TPSVideoAssetView;
  [(TPSImageAssetView *)&v5 commonInit];
  v3 = [objc_alloc(MEMORY[0x277D71770]) initWithObserver:self];
  KVOManager = self->_KVOManager;
  self->_KVOManager = v3;

  self->_videoDelayTime = 0.4;
}

- (void)setVideoDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_videoDelegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_videoDelegate, obj);
    self->_supportsVideoAssetViewCanShowMedia = objc_opt_respondsToSelector() & 1;

    v6 = objc_loadWeakRetained(&self->_videoDelegate);
    self->_supportsVideoAssetStartedPlaying = objc_opt_respondsToSelector() & 1;

    v7 = objc_loadWeakRetained(&self->_videoDelegate);
    self->_supportsVideoAssetViewFinishedPlayingVideo = objc_opt_respondsToSelector() & 1;

    v8 = objc_loadWeakRetained(&self->_videoDelegate);
    self->_supportsVideoAssetViewUpdateAssetLoadingFinished = objc_opt_respondsToSelector() & 1;
  }
}

- (void)setAspectFillAsset:(BOOL)asset
{
  assetCopy = asset;
  if ([(TPSImageAssetView *)self aspectFillAsset]!= asset)
  {
    v5.receiver = self;
    v5.super_class = TPSVideoAssetView;
    [(TPSImageAssetView *)&v5 setAspectFillAsset:assetCopy];
    [(TPSVideoAssetView *)self updateVideoGravity];
  }
}

- (void)setVideoPath:(id)path
{
  pathCopy = path;
  if (![(NSString *)self->_videoPath isEqualToString:?])
  {
    objc_storeStrong(&self->_videoPath, path);
    [(TPSVideoAssetView *)self resetVideoPlayer];
  }
}

- (void)updateVideoGravity
{
  aspectFillAsset = [(TPSImageAssetView *)self aspectFillAsset];
  v4 = MEMORY[0x277CE5DD8];
  if (!aspectFillAsset)
  {
    v4 = MEMORY[0x277CE5DD0];
  }

  v5 = *v4;
  avplayerLayer = self->_avplayerLayer;

  [(AVPlayerLayer *)avplayerLayer setVideoGravity:v5];
}

- (void)removeVideoPlayerLayer
{
  [(AVPlayer *)self->_avplayer pause];
  avplayerLayer = self->_avplayerLayer;

  [(AVPlayerLayer *)avplayerLayer removeFromSuperlayer];
}

- (void)resetVideoPlayer
{
  [(TPSVideoAssetView *)self cancelVideoDownloadTask];
  [(TPSVideoAssetView *)self cancelReplayButtonTimer];
  [(TPSVideoAssetView *)self updateReplayButtonHiddenState:1];
  [(TPSVideoAssetView *)self stopVideoPlayer];
  [(AVPlayer *)self->_avplayer replaceCurrentItemWithPlayerItem:0];

  [(TPSVideoAssetView *)self scrubVideoToFirstFrame];
}

- (void)scrubVideoToFirstFrame
{
  if (!self->_lastFrameDominant || ![(TPSVideoAssetView *)self displayingVideoLastFrame])
  {
    currentItem = [(AVPlayer *)self->_avplayer currentItem];

    if (currentItem)
    {
      avplayer = self->_avplayer;
      v8 = *MEMORY[0x277CC08F0];
      v9 = *(MEMORY[0x277CC08F0] + 16);
      [(AVPlayer *)avplayer seekToTime:&v8];
    }

    else
    {
      currentDisplayIdentifier = [(TPSImageAssetView *)self currentDisplayIdentifier];
      v7 = [TPSImageAssetController imageFromMemoryCacheForIdentifier:currentDisplayIdentifier];

      v6 = v7;
      if (v7)
      {
        [(TPSImageAssetView *)self setImage:v7];
        v6 = v7;
      }
    }
  }
}

- (void)playVideo
{
  if (!self->_lastFrameDominant || ![(TPSVideoAssetView *)self displayingVideoLastFrame]|| [(AVPlayer *)self->_avplayer timeControlStatus]!= AVPlayerTimeControlStatusPlaying)
  {
    if (!self->_videoPath)
    {
      goto LABEL_11;
    }

    if (self->_videoURLSessionItem)
    {
      goto LABEL_9;
    }

    superlayer = [(AVPlayerLayer *)self->_avplayerLayer superlayer];

    if (!superlayer)
    {
      imageView = [(TPSImageAssetView *)self imageView];
      layer = [imageView layer];
      [layer addSublayer:self->_avplayerLayer];
    }

    objc_initWeak(&location, self);
    mEMORY[0x277D716A0] = [MEMORY[0x277D716A0] sharedInstance];
    videoPath = self->_videoPath;
    cacheVideoIdentifier = [(TPSVideoAssetView *)self cacheVideoIdentifier];
    v9 = *MEMORY[0x277CCA798];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __30__TPSVideoAssetView_playVideo__block_invoke;
    v14[3] = &unk_278451398;
    objc_copyWeak(&v15, &location);
    LODWORD(v10) = v9;
    v11 = [mEMORY[0x277D716A0] formattedDataForPath:videoPath identifier:cacheVideoIdentifier attributionIdentifier:0 priority:v14 completionHandler:v10];
    videoURLSessionItem = self->_videoURLSessionItem;
    self->_videoURLSessionItem = v11;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    if (self->_videoPath)
    {
LABEL_9:
      if (!self->_videoPlaybackFinished)
      {
        [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_playVideoDelay object:0];
        [(TPSVideoAssetView *)self performSelector:sel_playVideoDelay withObject:0 afterDelay:self->_videoDelayTime];
      }
    }

    else
    {
LABEL_11:
      if (self->_supportsVideoAssetViewUpdateAssetLoadingFinished)
      {
        WeakRetained = objc_loadWeakRetained(&self->_videoDelegate);
        [WeakRetained videoAssetViewUpdateAssetLoadingFinished:self error:0];
      }
    }
  }
}

void __30__TPSVideoAssetView_playVideo__block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = a3;
  v10 = a7;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = WeakRetained;
  if (v10)
  {
    if ([WeakRetained supportsVideoAssetViewUpdateAssetLoadingFinished])
    {
      v13 = [MEMORY[0x277D71778] data];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __30__TPSVideoAssetView_playVideo__block_invoke_cold_1(v12, v10, v13);
      }

      v14 = [v12 videoDelegate];
      [v14 videoAssetViewUpdateAssetLoadingFinished:v12 error:v10];
    }
  }

  else
  {
    v15 = [v9 path];
    [v12 setDownloadedVideoPath:v15];

    if ([v12 readyToDisplayAVPlayer])
    {
      [v12 playVideoDelay];
    }
  }

  [v12 setVideoURLSessionItem:0];
}

- (void)playVideoDelay
{
  if (!self->_supportsVideoAssetViewCanShowMedia || (v3 = objc_loadWeakRetained(&self->_videoDelegate), v4 = [v3 videoAssetViewCanDisplayAssets:self], v3, v4))
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_playVideoDelay object:0];
    [(TPSVideoAssetView *)self cancelReplayButtonTimer];
    self->_readyToDisplayAVPlayer = 1;
    if (self->_downloadedVideoPath)
    {
      [(AVPlayer *)self->_avplayer rate];
      if (v5 == 0.0 && !self->_videoPlaybackFinished)
      {
        if (self->_supportsVideoAssetViewUpdateAssetLoadingFinished)
        {
          WeakRetained = objc_loadWeakRetained(&self->_videoDelegate);
          [WeakRetained videoAssetViewUpdateAssetLoadingFinished:self error:0];
        }

        v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:self->_downloadedVideoPath isDirectory:0];
        if (v7)
        {
          v8 = [MEMORY[0x277CE65B0] playerItemWithURL:v7];
        }

        else
        {
          v8 = 0;
        }

        avplayer = self->_avplayer;
        v24 = v8;
        if (avplayer)
        {
          [(AVPlayer *)avplayer replaceCurrentItemWithPlayerItem:v8];
        }

        else
        {
          v10 = [MEMORY[0x277CE6598] playerWithPlayerItem:v8];
          v11 = self->_avplayer;
          self->_avplayer = v10;

          [(AVPlayer *)self->_avplayer setActionAtItemEnd:1];
          [(AVPlayer *)self->_avplayer setAllowsExternalPlayback:0];
          [(AVPlayer *)self->_avplayer setMuted:1];
          [(AVPlayer *)self->_avplayer _setDisallowsVideoLayerDisplayCompositing:1];
          v12 = [MEMORY[0x277CE65D8] playerLayerWithPlayer:self->_avplayer];
          avplayerLayer = self->_avplayerLayer;
          self->_avplayerLayer = v12;

          imageView = [(TPSImageAssetView *)self imageView];
          layer = [imageView layer];
          [layer addSublayer:self->_avplayerLayer];

          [(AVPlayerLayer *)self->_avplayerLayer frame];
          v17 = v16;
          v19 = v18;
          [(TPSVideoAssetView *)self bounds];
          [(AVPlayerLayer *)self->_avplayerLayer setFrame:v17, v19];
          [(TPSVideoAssetView *)self updateVideoGravity];
        }

        if (v24)
        {
          if (!self->_registeredForAVPlayerNotification)
          {
            self->_registeredForAVPlayerNotification = 1;
            defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
            [defaultCenter addObserver:self selector:sel_avplayerDidFinishPlaying_ name:*MEMORY[0x277CE60C0] object:0];

            KVOManager = self->_KVOManager;
            currentItem = [(AVPlayer *)self->_avplayer currentItem];
            [(TPSKVOManager *)KVOManager addKVOObject:currentItem forKeyPath:@"error" options:1 context:sel_avplayerItemErrorChanged_];
          }

          [(TPSVideoAssetView *)self updateReplayButtonHiddenState:1];
          [(AVPlayer *)self->_avplayer play];
          if (self->_supportsVideoAssetStartedPlaying)
          {
            videoDelegate = [(TPSVideoAssetView *)self videoDelegate];
            [videoDelegate videoAssetStartedPlaying:self];
          }
        }
      }
    }
  }
}

- (void)fetchImageWithIdentifier:(id)identifier path:(id)path
{
  identifierCopy = identifier;
  pathCopy = path;
  if (self->_lastFrameDominant && [(TPSVideoAssetView *)self updateImageToVideoLastFrame])
  {
    [(TPSImageAssetView *)self setCurrentImagePath:pathCopy];
    delegate = [(TPSImageAssetView *)self delegate];
    [delegate imageAssetViewImageUpdated:self];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TPSVideoAssetView;
    [(TPSImageAssetView *)&v9 fetchImageWithIdentifier:identifierCopy path:pathCopy];
  }
}

- (void)avplayerItemErrorChanged:(id)changed
{
  avplayer = self->_avplayer;
  changedCopy = changed;
  currentItem = [(AVPlayer *)avplayer currentItem];

  v6 = currentItem;
  if (currentItem == changedCopy)
  {
    error = [currentItem error];

    v6 = currentItem;
    if (error)
    {
      mEMORY[0x277D716A0] = [MEMORY[0x277D716A0] sharedInstance];
      cacheVideoIdentifier = [(TPSVideoAssetView *)self cacheVideoIdentifier];
      [mEMORY[0x277D716A0] removeCacheForIdentifier:cacheVideoIdentifier];

      v6 = currentItem;
    }
  }
}

- (void)updateReplayButtonHiddenState:(BOOL)state
{
  stateCopy = state;
  [(UIButton *)self->_replayButton setHidden:?];
  [(UIImageView *)self->_replayGradientView setHidden:stateCopy];
  if (!stateCopy)
  {
    [(UIButton *)self->_replayButton setAlpha:0.0];
    [(UIImageView *)self->_replayGradientView setAlpha:0.0];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__TPSVideoAssetView_updateReplayButtonHiddenState___block_invoke;
    v6[3] = &unk_278451288;
    v6[4] = self;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __51__TPSVideoAssetView_updateReplayButtonHiddenState___block_invoke_2;
    v5[3] = &unk_2784513C0;
    v5[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v6 animations:v5 completion:1.0];
  }
}

void __51__TPSVideoAssetView_updateReplayButtonHiddenState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) replayButton];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) replayGradientView];
  [v3 setAlpha:1.0];
}

void __51__TPSVideoAssetView_updateReplayButtonHiddenState___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) replayButton];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) replayGradientView];
  [v3 setAlpha:1.0];
}

- (void)replayVideo
{
  [(TPSVideoAssetView *)self cancelReplayButtonTimer];
  [(TPSVideoAssetView *)self updateReplayButtonHiddenState:1];
  avplayer = self->_avplayer;
  v4 = *MEMORY[0x277CC08F0];
  v5 = *(MEMORY[0x277CC08F0] + 16);
  [(AVPlayer *)avplayer seekToTime:&v4];
  [(AVPlayer *)self->_avplayer pause];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_restartVideoDelay object:0];
  [(TPSVideoAssetView *)self performSelector:sel_restartVideoDelay withObject:0 afterDelay:self->_videoDelayTime];
}

- (void)restartVideoDelay
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_restartVideoDelay object:0];
  avplayer = self->_avplayer;

  [(AVPlayer *)avplayer play];
}

- (void)stopVideoPlayer
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_restartVideoDelay object:0];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_playVideoDelay object:0];
  if (self->_registeredForAVPlayerNotification)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277CE60C0] object:0];

    KVOManager = self->_KVOManager;
    currentItem = [(AVPlayer *)self->_avplayer currentItem];
    [(TPSKVOManager *)KVOManager removeKVOObject:currentItem forKeyPath:@"error"];

    self->_registeredForAVPlayerNotification = 0;
  }

  [(AVPlayer *)self->_avplayer pause];
  [(AVPlayer *)self->_avplayer setRate:0.0];
  self->_readyToDisplayAVPlayer = 0;
  self->_videoPlaybackFinished = 0;
  downloadedVideoPath = self->_downloadedVideoPath;
  self->_downloadedVideoPath = 0;
}

- (BOOL)displayingVideoLastFrame
{
  currentItem = [(AVPlayer *)self->_avplayer currentItem];
  v4 = currentItem;
  if (self->_videoPlaybackFinished)
  {
    if (currentItem)
    {
      [currentItem currentTime];
      v5 = v10;
      [v4 duration];
      v6 = v9;
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    v7 = v5 == v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime
{
  currentItem = [(AVPlayer *)self->_avplayer currentItem];
  if (currentItem)
  {
    v6 = currentItem;
    [currentItem currentTime];
    currentItem = v6;
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (BOOL)updateImageToVideoLastFrame
{
  v10 = 0uLL;
  v11 = 0;
  currentItem = [(AVPlayer *)self->_avplayer currentItem];
  v4 = currentItem;
  if (currentItem)
  {
    [currentItem duration];
  }

  else
  {
    v10 = 0uLL;
    v11 = 0;
  }

  v5 = v10;
  if (v10 >= 1)
  {
    avplayer = self->_avplayer;
    v8 = v10;
    v9 = v11;
    [(AVPlayer *)avplayer seekToTime:&v8];
  }

  return v5 > 0;
}

- (void)avplayerDidFinishPlaying:(id)playing
{
  playingCopy = playing;
  object = [playingCopy object];
  currentItem = [(AVPlayer *)self->_avplayer currentItem];
  v7 = [object isEqual:currentItem];

  if (v7)
  {
    self->_videoPlaybackFinished = 1;
    if (self->_supportsVideoAssetViewFinishedPlayingVideo)
    {
      WeakRetained = objc_loadWeakRetained(&self->_videoDelegate);
      [WeakRetained videoAssetViewFinishedPlayingVideo:self];
    }

    if (self->_replayButton)
    {
      objc_initWeak(&location, self);
      v9 = MEMORY[0x277CBEBB8];
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __46__TPSVideoAssetView_avplayerDidFinishPlaying___block_invoke;
      v16 = &unk_2784513E8;
      objc_copyWeak(&v17, &location);
      v10 = [v9 timerWithTimeInterval:0 repeats:&v13 block:4.0];
      replayButtonTimer = self->_replayButtonTimer;
      self->_replayButtonTimer = v10;

      currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
      [currentRunLoop addTimer:self->_replayButtonTimer forMode:*MEMORY[0x277CBE640]];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }
}

void __46__TPSVideoAssetView_avplayerDidFinishPlaying___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateReplayButtonHiddenState:0];
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = TPSVideoAssetView;
  [(TPSImageAssetView *)&v3 cancel];
  [(TPSVideoAssetView *)self cancelVideoDownloadTask];
  [(TPSVideoAssetView *)self cancelReplayButtonTimer];
}

- (void)cancelVideoDownloadTask
{
  defaultManager = [MEMORY[0x277D717E0] defaultManager];
  [defaultManager cancelSessionItem:self->_videoURLSessionItem];

  videoURLSessionItem = self->_videoURLSessionItem;
  self->_videoURLSessionItem = 0;
}

- (void)cancelReplayButtonTimer
{
  [(NSTimer *)self->_replayButtonTimer invalidate];
  replayButtonTimer = self->_replayButtonTimer;
  self->_replayButtonTimer = 0;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = TPSVideoAssetView;
  [(TPSImageAssetView *)&v15 layoutSubviews];
  avplayerLayer = self->_avplayerLayer;
  if (avplayerLayer)
  {
    [(AVPlayerLayer *)avplayerLayer frame];
    v5 = v4;
    v7 = v6;
    [(TPSVideoAssetView *)self bounds];
    v9 = v8;
    v11 = v10;
    [(AVPlayerLayer *)self->_avplayerLayer frame];
    if (v9 != v13 || v11 != v12)
    {
      [(AVPlayerLayer *)self->_avplayerLayer setFrame:v5, v7, v9, v11];
    }
  }
}

- (TPSVideoAssetViewDelegate)videoDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_videoDelegate);

  return WeakRetained;
}

void __30__TPSVideoAssetView_playVideo__block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 videoPath];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_220B31000, a3, OS_LOG_TYPE_DEBUG, "Video asset path %@ fetch error: %@", &v6, 0x16u);
}

@end