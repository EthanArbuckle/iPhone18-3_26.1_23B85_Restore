@interface PXDisplayAssetLoopingVideoContentView
- (BOOL)isDisplayingFullQualityContent;
- (CGRect)currentContentsRect;
- (double)loadingProgress;
- (id)contentView;
- (unint64_t)activityCoordinatorQueuePosition;
- (void)_endLoadingInterval:(BOOL)interval;
- (void)_endPlaybackInterval;
- (void)_handleDidShowPlaceholderForUnloadingPlayerItem:(id)item;
- (void)_handlePlayerItemResult:(id)result info:(id)info requestID:(int64_t)d;
- (void)_loadVideo;
- (void)_unloadVideo;
- (void)_updateVideoPlayerPlayerItem;
- (void)_updateVideoViewContentMode;
- (void)_updateVideoViewPlaceholderFilters;
- (void)animatedContentEnabledDidChange;
- (void)contentModeDidChange;
- (void)contentsRectDidChange;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)imageDidChange;
- (void)imageProgressDidChange;
- (void)isDisplayingFullQualityContentDidChange;
- (void)placeholderImageFiltersDidChange;
- (void)setActivityCoordinatorQueuePosition:(unint64_t)position;
- (void)setAudioSession:(id)session;
- (void)setCanLoadVideo:(BOOL)video;
- (void)setVideoLoadingProgress:(double)progress;
- (void)setVideoPlayer:(id)player;
- (void)setVideoPlayerItem:(id)item;
- (void)toneMapVideoToStandardDynamicRangeDidChange;
- (void)updateContent;
@end

@implementation PXDisplayAssetLoopingVideoContentView

- (void)_endLoadingInterval:(BOOL)interval
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_loadingIntervalID)
  {
    intervalCopy = interval;
    v5 = [(PXDisplayAssetContentView *)self log];
    v6 = v5;
    loadingIntervalID = self->_loadingIntervalID;
    if (loadingIntervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      v8[0] = 67109120;
      v8[1] = intervalCopy;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, OS_SIGNPOST_INTERVAL_END, loadingIntervalID, "Video Loading", "Success: %d", v8, 8u);
    }

    self->_loadingIntervalID = 0;
  }
}

- (void)_endPlaybackInterval
{
  if (self->_playbackIntervalID)
  {
    v3 = [(PXDisplayAssetContentView *)self log];
    v4 = v3;
    playbackIntervalID = self->_playbackIntervalID;
    if (playbackIntervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *v6 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v4, OS_SIGNPOST_INTERVAL_END, playbackIntervalID, "Video Playback Latency", "", v6, 2u);
    }

    self->_playbackIntervalID = 0;
  }
}

- (void)_updateVideoViewPlaceholderFilters
{
  if ([(PXDisplayAssetLoopingVideoContentView *)self isDisplayingFullQualityContent])
  {
    videoView = self->_videoView;

    [(PXVideoPlayerView *)videoView setPlaceholderImageFilters:0];
  }

  else
  {
    placeholderImageFilters = [(PXDisplayAssetContentView *)self placeholderImageFilters];
    [(PXVideoPlayerView *)self->_videoView setPlaceholderImageFilters:placeholderImageFilters];
  }
}

- (void)_updateVideoViewContentMode
{
  v3 = [(PXDisplayAssetLoopingVideoContentView *)self contentMode]== 1;
  videoView = self->_videoView;

  [(PXVideoPlayerView *)videoView setVideoViewContentMode:v3];
}

- (void)_updateVideoPlayerPlayerItem
{
  audioSession = [(PXDisplayAssetLoopingVideoContentView *)self audioSession];

  if (audioSession)
  {
    videoPlayerItem = [(PXDisplayAssetLoopingVideoContentView *)self videoPlayerItem];
    player = [(PXVideoPlayerView *)self->_videoView player];
    v6 = player;
    if (videoPlayerItem)
    {
      v7 = [(PXDisplayAssetContentView *)self log];
      self->_playbackIntervalID = os_signpost_id_generate(v7);
      v8 = v7;
      v9 = v8;
      playbackIntervalID = self->_playbackIntervalID;
      if (playbackIntervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
      {
        *v12 = 0;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v9, OS_SIGNPOST_INTERVAL_BEGIN, playbackIntervalID, "Video Playback Latency", "", v12, 2u);
      }

      [v6 setLoopingEnabled:1 withTemplateItem:videoPlayerItem];
      LODWORD(v11) = 1.0;
      [v6 setRate:v11];
      [(PXVideoPlayerView *)self->_videoView setPlaceholderDisplayMode:0];
    }

    else
    {
      [player setLoopingEnabled:0 withTemplateItem:0];
      [v6 setRate:0.0];
      [v6 replaceCurrentItemWithPlayerItem:0];
    }

    [(PXDisplayAssetLoopingVideoContentView *)self _updateVideoViewPlaceholderFilters];
  }
}

- (void)_handlePlayerItemResult:(id)result info:(id)info requestID:(int64_t)d
{
  resultCopy = result;
  infoCopy = info;
  v9 = [infoCopy objectForKeyedSubscript:*off_1E7722068];
  bOOLValue = [v9 BOOLValue];

  if ([(PXDisplayAssetContentView *)self requestID]!= d || bOOLValue)
  {
    [(PXDisplayAssetLoopingVideoContentView *)self _endLoadingInterval:0];
  }

  else
  {
    [(PXDisplayAssetLoopingVideoContentView *)self _endLoadingInterval:resultCopy != 0];
    [(PXDisplayAssetLoopingVideoContentView *)self setVideoPlayerItem:resultCopy];
    if (resultCopy)
    {
      [(PXDisplayAssetLoopingVideoContentView *)self setVideoLoadingProgress:1.0];
    }

    else
    {
      v11 = [infoCopy objectForKeyedSubscript:*off_1E7722070];
      [(PXDisplayAssetContentView *)self handleError:v11];
    }
  }
}

- (void)_loadVideo
{
  v27 = *MEMORY[0x1E69E9840];
  asset = [(PXDisplayAssetContentView *)self asset];
  [(PXDisplayAssetLoopingVideoContentView *)self _endLoadingInterval:0];
  v4 = [(PXDisplayAssetContentView *)self log];
  self->_loadingIntervalID = os_signpost_id_generate(v4);
  uuid = [asset uuid];
  v6 = uuid;
  if (uuid)
  {
    v7 = uuid;
  }

  else
  {
    v7 = [asset description];
  }

  v8 = v7;

  v9 = v4;
  v10 = v9;
  loadingIntervalID = self->_loadingIntervalID;
  if (loadingIntervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_INTERVAL_BEGIN, loadingIntervalID, "Video Loading", "Asset: %@", &buf, 0xCu);
  }

  v12 = objc_alloc_init(PXVideoRequestOptions);
  [(PXVideoRequestOptions *)v12 setNetworkAccessAllowed:1];
  objc_initWeak(&location, self);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __51__PXDisplayAssetLoopingVideoContentView__loadVideo__block_invoke;
  v21[3] = &unk_1E774A490;
  objc_copyWeak(&v22, &location);
  [(PXVideoRequestOptions *)v12 setProgressHandler:v21];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x2020000000;
  v26 = 0;
  mediaProvider = [(PXDisplayAssetContentView *)self mediaProvider];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __51__PXDisplayAssetLoopingVideoContentView__loadVideo__block_invoke_3;
  v18 = &unk_1E7735DD0;
  objc_copyWeak(&v20, &location);
  p_buf = &buf;
  v14 = [mediaProvider requestPlayerItemForVideo:asset options:v12 resultHandler:&v15];

  *(*(&buf + 1) + 24) = v14;
  [(PXDisplayAssetContentView *)self setRequestID:v14, v15, v16, v17, v18];
  _Block_object_dispose(&buf, 8);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __51__PXDisplayAssetLoopingVideoContentView__loadVideo__block_invoke(uint64_t a1, void *a2, double a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  objc_copyWeak(v10, (a1 + 32));
  v10[1] = *&a3;
  px_dispatch_on_main_queue();
}

void __51__PXDisplayAssetLoopingVideoContentView__loadVideo__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&v7, (a1 + 40));
  v5;
  v6;
  px_dispatch_on_main_queue();
}

void __51__PXDisplayAssetLoopingVideoContentView__loadVideo__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handlePlayerItemResult:*(a1 + 32) info:*(a1 + 40) requestID:*(*(*(a1 + 48) + 8) + 24)];
}

void __51__PXDisplayAssetLoopingVideoContentView__loadVideo__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setVideoLoadingProgress:v1];
}

- (void)_handleDidShowPlaceholderForUnloadingPlayerItem:(id)item
{
  itemCopy = item;
  videoPlayerItem = [(PXDisplayAssetLoopingVideoContentView *)self videoPlayerItem];

  if (videoPlayerItem == itemCopy)
  {

    [(PXDisplayAssetLoopingVideoContentView *)self setVideoPlayerItem:0];
  }
}

- (void)_unloadVideo
{
  [(PXDisplayAssetLoopingVideoContentView *)self _endPlaybackInterval];
  [(PXDisplayAssetLoopingVideoContentView *)self _endLoadingInterval:0];
  videoPlayerItem = [(PXDisplayAssetLoopingVideoContentView *)self videoPlayerItem];
  objc_initWeak(&location, self);
  videoView = self->_videoView;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__PXDisplayAssetLoopingVideoContentView__unloadVideo__block_invoke;
  v6[3] = &unk_1E774B248;
  objc_copyWeak(&v8, &location);
  v5 = videoPlayerItem;
  v7 = v5;
  [(PXVideoPlayerView *)videoView setPlaceholderDisplayMode:1 completion:v6];
  [(PXDisplayAssetContentView *)self setRequestID:0];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __53__PXDisplayAssetLoopingVideoContentView__unloadVideo__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleDidShowPlaceholderForUnloadingPlayerItem:*(a1 + 32)];
}

- (void)setVideoPlayerItem:(id)item
{
  itemCopy = item;
  if (self->_videoPlayerItem != itemCopy)
  {
    v6 = itemCopy;
    objc_storeStrong(&self->_videoPlayerItem, item);
    [(PXDisplayAssetLoopingVideoContentView *)self _updateVideoPlayerPlayerItem];
    [(PXDisplayAssetLoopingVideoContentView *)self isDisplayingFullQualityContentDidChange];
    itemCopy = v6;
  }
}

- (void)setCanLoadVideo:(BOOL)video
{
  if (self->_canLoadVideo != video)
  {
    self->_canLoadVideo = video;
    if (video)
    {
      [(PXDisplayAssetLoopingVideoContentView *)self _loadVideo];
    }

    else
    {
      [(PXDisplayAssetLoopingVideoContentView *)self _unloadVideo];
    }
  }
}

- (unint64_t)activityCoordinatorQueuePosition
{
  queuePosition = [(PXDisplayAssetLoopingVideoContentView *)self queuePosition];
  unsignedIntegerValue = [queuePosition unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setActivityCoordinatorQueuePosition:(unint64_t)position
{
  queuePosition = [(PXDisplayAssetLoopingVideoContentView *)self queuePosition];
  if (!queuePosition || (v6 = queuePosition, -[PXDisplayAssetLoopingVideoContentView queuePosition](self, "queuePosition"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 unsignedIntegerValue], v7, v6, v8 != position))
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:position];
    [(PXDisplayAssetLoopingVideoContentView *)self setQueuePosition:v9];

    v10 = +[PXForYouSettings sharedInstance];
    maxSimultaneousVideoCount = [v10 maxSimultaneousVideoCount];

    [(PXDisplayAssetLoopingVideoContentView *)self setCanLoadVideo:maxSimultaneousVideoCount > position];
  }
}

- (void)setVideoLoadingProgress:(double)progress
{
  if (self->_videoLoadingProgress != progress)
  {
    self->_videoLoadingProgress = progress;
    [(PXDisplayAssetContentView *)self invalidateLoadingProgress];
  }
}

- (void)setAudioSession:(id)session
{
  sessionCopy = session;
  if (self->_audioSession != sessionCopy)
  {
    v7 = sessionCopy;
    objc_storeStrong(&self->_audioSession, session);
    if (v7)
    {
      videoPlayer = [(PXDisplayAssetLoopingVideoContentView *)self videoPlayer];
      [videoPlayer setWrappedAudioSession:v7];
    }

    [(PXDisplayAssetLoopingVideoContentView *)self _updateVideoPlayerPlayerItem];
    sessionCopy = v7;
  }
}

- (void)toneMapVideoToStandardDynamicRangeDidChange
{
  v3.receiver = self;
  v3.super_class = PXDisplayAssetLoopingVideoContentView;
  [(PXDisplayAssetContentView *)&v3 toneMapVideoToStandardDynamicRangeDidChange];
  [(PXVideoPlayerView *)self->_videoView setToneMapToStandardDynamicRange:[(PXDisplayAssetContentView *)self toneMapVideoToStandardDynamicRange]];
}

- (void)contentsRectDidChange
{
  v2.receiver = self;
  v2.super_class = PXDisplayAssetLoopingVideoContentView;
  [(PXDisplayAssetContentView *)&v2 contentsRectDidChange];
}

- (void)isDisplayingFullQualityContentDidChange
{
  v3.receiver = self;
  v3.super_class = PXDisplayAssetLoopingVideoContentView;
  [(PXDisplayAssetContentView *)&v3 isDisplayingFullQualityContentDidChange];
  [(PXDisplayAssetLoopingVideoContentView *)self _updateVideoViewPlaceholderFilters];
}

- (BOOL)isDisplayingFullQualityContent
{
  videoPlayerItem = [(PXDisplayAssetLoopingVideoContentView *)self videoPlayerItem];
  v3 = videoPlayerItem != 0;

  return v3;
}

- (void)contentModeDidChange
{
  v3.receiver = self;
  v3.super_class = PXDisplayAssetLoopingVideoContentView;
  [(PXDisplayAssetContentView *)&v3 contentModeDidChange];
  [(PXDisplayAssetLoopingVideoContentView *)self _updateVideoViewContentMode];
}

- (void)placeholderImageFiltersDidChange
{
  v3.receiver = self;
  v3.super_class = PXDisplayAssetLoopingVideoContentView;
  [(PXDisplayAssetContentView *)&v3 placeholderImageFiltersDidChange];
  [(PXDisplayAssetLoopingVideoContentView *)self _updateVideoViewPlaceholderFilters];
}

- (void)animatedContentEnabledDidChange
{
  v3.receiver = self;
  v3.super_class = PXDisplayAssetLoopingVideoContentView;
  [(PXDisplayAssetContentView *)&v3 animatedContentEnabledDidChange];
  [(PXDisplayAssetLoopingVideoContentView *)self updateContent];
}

- (void)imageProgressDidChange
{
  v3.receiver = self;
  v3.super_class = PXDisplayAssetLoopingVideoContentView;
  [(PXDisplayAssetContentView *)&v3 imageProgressDidChange];
  [(PXDisplayAssetContentView *)self invalidateLoadingProgress];
}

- (void)imageDidChange
{
  v4.receiver = self;
  v4.super_class = PXDisplayAssetLoopingVideoContentView;
  [(PXDisplayAssetContentView *)&v4 imageDidChange];
  image = [(PXDisplayAssetContentView *)self image];
  [(PXVideoPlayerView *)self->_videoView setPlaceholderImage:image];

  [(PXDisplayAssetLoopingVideoContentView *)self _updateVideoViewPlaceholderFilters];
}

- (double)loadingProgress
{
  videoPlayerItem = [(PXDisplayAssetLoopingVideoContentView *)self videoPlayerItem];

  if (videoPlayerItem)
  {
    return 1.0;
  }

  [(PXDisplayAssetContentView *)self imageProgress];
  v6 = v5;
  [(PXDisplayAssetLoopingVideoContentView *)self videoLoadingProgress];
  return v7 * 0.75 + v6 * 0.25;
}

- (void)updateContent
{
  v11.receiver = self;
  v11.super_class = PXDisplayAssetLoopingVideoContentView;
  [(PXDisplayAssetContentView *)&v11 updateContent];
  mediaProvider = [(PXDisplayAssetContentView *)self mediaProvider];
  asset = [(PXDisplayAssetContentView *)self asset];
  [(PXDisplayAssetContentView *)self targetSize];
  v6 = v5;
  v8 = v7;
  v9 = [PXActivityCoordinator coordinatorForActivity:@"PXDisplayAssetContentViewActivityVideo"];
  if ([(PXDisplayAssetContentView *)self isAnimatedContentEnabled]&& ([(PXDisplayAssetLoopingVideoContentView *)self window], v10 = objc_claimAutoreleasedReturnValue(), v10, v10) && mediaProvider && asset && v6 > 0.0 && v8 > 0.0)
  {
    [v9 registerItem:self];
  }

  else
  {
    [v9 unregisterItem:self];
    [(PXDisplayAssetLoopingVideoContentView *)self setQueuePosition:0];
    [(PXDisplayAssetLoopingVideoContentView *)self setCanLoadVideo:0];
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = PXDisplayAssetLoopingVideoContentView;
  [(PXDisplayAssetContentView *)&v3 didMoveToWindow];
  [(PXDisplayAssetContentView *)self setNeedsUpdateContent];
}

- (CGRect)currentContentsRect
{
  v2 = *off_1E77221F8;
  v3 = *(off_1E77221F8 + 1);
  v4 = *(off_1E77221F8 + 2);
  v5 = *(off_1E77221F8 + 3);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setVideoPlayer:(id)player
{
  playerCopy = player;
  videoPlayer = self->_videoPlayer;
  if (videoPlayer != playerCopy)
  {
    [(ISWrappedAVPlayer *)videoPlayer removeTimeObserver:self->_timeObserver];
    objc_storeStrong(&self->_videoPlayer, player);
    audioSession = [(PXDisplayAssetLoopingVideoContentView *)self audioSession];
    if (audioSession)
    {
      [(ISWrappedAVPlayer *)playerCopy setWrappedAudioSession:audioSession];
    }

    [(ISWrappedAVPlayer *)playerCopy setVolume:0.0];
    [(ISWrappedAVPlayer *)playerCopy setPreventsSleepDuringVideoPlayback:0];
    [(PXVideoPlayerView *)self->_videoView setPlayer:playerCopy];
    objc_initWeak(&location, self);
    CMTimeMakeWithSeconds(&v14, 0.1, 600);
    v8 = MEMORY[0x1E69E96A0];
    v9 = MEMORY[0x1E69E96A0];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__PXDisplayAssetLoopingVideoContentView_setVideoPlayer___block_invoke;
    v12[3] = &unk_1E7748F40;
    objc_copyWeak(&v13, &location);
    v10 = [(ISWrappedAVPlayer *)playerCopy addPeriodicTimeObserverForInterval:&v14 queue:v8 usingBlock:v12];
    timeObserver = self->_timeObserver;
    self->_timeObserver = v10;

    [(PXDisplayAssetLoopingVideoContentView *)self _updateVideoPlayerPlayerItem];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __56__PXDisplayAssetLoopingVideoContentView_setVideoPlayer___block_invoke(uint64_t a1, __int128 *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = *a2;
  v5 = *(a2 + 2);
  [WeakRetained _handleVideoPlayerTimeObserverWithTime:&v4];
}

- (id)contentView
{
  videoView = self->_videoView;
  if (!videoView)
  {
    v4 = objc_alloc_init(PXVideoPlayerView);
    [(PXDisplayAssetContentView *)self placeholderTransitionDuration];
    [(PXVideoPlayerView *)v4 setVideoAppearanceCrossfadeDuration:?];
    [(PXVideoPlayerView *)v4 setClipsToBounds:1];
    [(PXVideoPlayerView *)v4 setPlaceholderDisplayMode:1];
    [(PXVideoPlayerView *)v4 setToneMapToStandardDynamicRange:[(PXDisplayAssetContentView *)self toneMapVideoToStandardDynamicRange]];
    v5 = self->_videoView;
    self->_videoView = v4;

    [(PXDisplayAssetLoopingVideoContentView *)self _updateVideoViewContentMode];
    objc_initWeak(&location, self);
    v6 = dispatch_get_global_queue(9, 0);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__PXDisplayAssetLoopingVideoContentView_contentView__block_invoke;
    v9[3] = &unk_1E774C318;
    objc_copyWeak(&v10, &location);
    v7 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, v9);
    dispatch_async(v6, v7);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
    videoView = self->_videoView;
  }

  return videoView;
}

void __52__PXDisplayAssetLoopingVideoContentView_contentView__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E69C1B20]);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__PXDisplayAssetLoopingVideoContentView_contentView__block_invoke_2;
  v4[3] = &unk_1E774B248;
  objc_copyWeak(&v6, (a1 + 32));
  v5 = v2;
  v3 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v4);

  objc_destroyWeak(&v6);
}

void __52__PXDisplayAssetLoopingVideoContentView_contentView__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setVideoPlayer:v2];

  v4 = MEMORY[0x1E69C1B18];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__PXDisplayAssetLoopingVideoContentView_contentView__block_invoke_3;
  v5[3] = &unk_1E7735D80;
  objc_copyWeak(&v6, (a1 + 40));
  [v4 sharedInstanceWithKind:1 loadHandler:v5];
  objc_destroyWeak(&v6);
}

void __52__PXDisplayAssetLoopingVideoContentView_contentView__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v4, (a1 + 32));
  v3;
  px_dispatch_on_main_queue();
}

void __52__PXDisplayAssetLoopingVideoContentView_contentView__block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setAudioSession:v1];
}

- (void)dealloc
{
  [(PXDisplayAssetLoopingVideoContentView *)self _endLoadingInterval:0];
  [(PXDisplayAssetLoopingVideoContentView *)self _endPlaybackInterval];
  v3.receiver = self;
  v3.super_class = PXDisplayAssetLoopingVideoContentView;
  [(PXDisplayAssetLoopingVideoContentView *)&v3 dealloc];
}

@end