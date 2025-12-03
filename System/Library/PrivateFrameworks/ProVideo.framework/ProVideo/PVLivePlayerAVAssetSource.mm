@interface PVLivePlayerAVAssetSource
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)itemTimeForHostTime:(SEL)time;
- (PVLivePlayerAVAssetSource)initWithAVAsset:(id)asset;
- (__CVBuffer)_copyPixelBufferForHostTime:(double)time;
- (__CVBuffer)_copyPixelBufferForTime:(id *)time;
- (id)imageBufferForHostTime:(double)time;
- (void)dealloc;
- (void)finishReading;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pause;
- (void)play;
- (void)playerItemDidPlayToEnd:(id)end;
- (void)seekToTime:(id *)time;
- (void)setMuted:(BOOL)muted;
- (void)setupPlayer;
- (void)startObservers;
- (void)stopObservers;
@end

@implementation PVLivePlayerAVAssetSource

- (PVLivePlayerAVAssetSource)initWithAVAsset:(id)asset
{
  assetCopy = asset;
  v21.receiver = self;
  v21.super_class = PVLivePlayerAVAssetSource;
  v6 = [(PVLivePlayerAVAssetSource *)&v21 init];
  v7 = v6;
  v8 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_asset, asset);
    asset = v8->_asset;
    if (asset)
    {
      [(AVAsset *)asset duration];
      asset = v7->_asset;
    }

    else
    {
      v19 = 0uLL;
      v20 = 0;
    }

    *&v8->_assetDuration.value = v19;
    v8->_assetDuration.epoch = v20;
    [(AVAsset *)asset preferredRate];
    v8->_assetRate = v10;
    v11 = dispatch_queue_create("com.apple.ProVideo.PVLivePlayerAVAssetSource", 0);
    videoTrackDimensions = v8->_videoTrackDimensions;
    v8->_videoTrackDimensions = v11;

    v13 = dispatch_semaphore_create(0);
    dispatchQueue = v8->_dispatchQueue;
    v8->_dispatchQueue = v13;

    v15 = dispatch_semaphore_create(0);
    playbackReadyCondVar = v8->_playbackReadyCondVar;
    v8->_playbackReadyCondVar = v15;

    cacheImageFrameSet = v8->_cacheImageFrameSet;
    v8->_cacheImageFrameSet = 0;

    operator new();
  }

  return 0;
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  [(AVQueuePlayer *)self->_playerQueue pause];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_playerItemOutputs;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v12 + 1) + 8 * v6++) setDelegate:0 queue:0];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  [(AVQueuePlayer *)self->_playerQueue cancelPendingPrerolls];
  [(AVPlayerLooper *)self->_playerLooper disableLooping];
  [(PVLivePlayerAVAssetSource *)self finishReading];
  [(PVLivePlayerAVAssetSource *)self stopObservers];
  cacheLock = self->_cacheLock;
  if (cacheLock)
  {
    (*(cacheLock->var0 + 1))(cacheLock);
  }

  playerItemOutputs = self->_playerItemOutputs;
  self->_playerItemOutputs = 0;

  playerQueue = self->_playerQueue;
  self->_playerQueue = 0;

  playerLooper = self->_playerLooper;
  self->_playerLooper = 0;

  v11.receiver = self;
  v11.super_class = PVLivePlayerAVAssetSource;
  [(PVLivePlayerAVAssetSource *)&v11 dealloc];
}

- (void)play
{
  if ([(PVLivePlayerAVAssetSource *)self status]== 1)
  {
    return;
  }

  if ([(PVLivePlayerAVAssetSource *)self status]== 2)
  {
    [(AVQueuePlayer *)self->_playerQueue play];

    [(PVLivePlayerAVAssetSource *)self setStatus:1];
    return;
  }

  if ([(PVLivePlayerAVAssetSource *)self loopPlayback])
  {
    [(AVPlayerLooper *)self->_playerLooper loopingPlayerItems];
  }

  else
  {
    [(AVQueuePlayer *)self->_playerQueue items];
  }
  v3 = ;
  firstObject = [v3 firstObject];

  status = [firstObject status];
  switch(status)
  {
    case 0:
      if ([(AVQueuePlayer *)self->_playerQueue status]!= 1)
      {
        dispatch_semaphore_wait(self->_dispatchQueue, 0xFFFFFFFFFFFFFFFFLL);
      }

      goto LABEL_15;
    case 1:
LABEL_15:
      dispatch_semaphore_wait(self->_playbackReadyCondVar, 0xFFFFFFFFFFFFFFFFLL);
      [(AVQueuePlayer *)self->_playerQueue play];
      v5 = 1;
      goto LABEL_16;
    case 2:
      v5 = 4;
LABEL_16:
      [(PVLivePlayerAVAssetSource *)self setStatus:v5];
      break;
  }
}

- (void)pause
{
  [(AVQueuePlayer *)self->_playerQueue pause];

  [(PVLivePlayerAVAssetSource *)self setStatus:2];
}

- (id)imageBufferForHostTime:(double)time
{
  v5 = [(PVLivePlayerAVAssetSource *)self _copyPixelBufferForHostTime:?];
  if (v5)
  {
    v6 = v5;
    v16 = 0uLL;
    v17 = 0;
    [(PVLivePlayerAVAssetSource *)self itemTimeForHostTime:time];
    v7 = [PVImageBuffer imageWithCVPixelBuffer:v6];
    v14 = v16;
    v15 = v17;
    v12 = *&self->_videoTrackFrameRate;
    v13 = *&self->_videoTrackFrameDelta.timescale;
    v8 = [PVCMSampleBuffer sampleBufferWithPVImageBuffer:v7 timestamp:&v14 frameDuration:&v12];
    v9 = [[PVFrameSet alloc] initWithColorBuffer:v8 metadata:0];
    CVPixelBufferRelease(v6);
  }

  else
  {
    v9 = 0;
  }

  if ([(PVLivePlayerAVAssetSource *)self repeatFrames])
  {
    cacheLock = self->_cacheLock;
    HGSynchronizable::Lock(cacheLock);
    if (v9)
    {
      objc_storeStrong(&self->_cacheImageFrameSet, v9);
    }

    else
    {
      v9 = self->_cacheImageFrameSet;
    }

    HGSynchronizable::Unlock(cacheLock);
  }

  return v9;
}

- (__CVBuffer)_copyPixelBufferForHostTime:(double)time
{
  v5 = [(NSArray *)self->_playerItemOutputs count];
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = (v6 + self->_currentPlayerItemOutput) % v5;
    v8 = [(NSArray *)self->_playerItemOutputs objectAtIndex:v7];
    v9 = v8;
    v14 = 0uLL;
    v15 = 0;
    if (v8)
    {
      [v8 itemTimeForHostTime:time];
    }

    v12 = v14;
    v13 = v15;
    if ([v9 hasNewPixelBufferForItemTime:&v12])
    {
      break;
    }

    if (v5 == ++v6)
    {
      return 0;
    }
  }

  v12 = v14;
  v13 = v15;
  v10 = [v9 copyPixelBufferForItemTime:&v12 itemTimeForDisplay:0];
  self->_currentPlayerItemOutput = v7;

  return v10;
}

- (void)seekToTime:(id *)time
{
  if (self->_playerQueue)
  {
    v6 = *time;
    CMTimeConvertScale(&v7, &v6, HIDWORD(self->_videoTrackRange.start.value), kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    *time = v7;
    if ([(PVLivePlayerAVAssetSource *)self loopPlayback])
    {
      CMTimeMake(&v7, (time->var0 - *(&self->_assetRate + 1)) % *(&self->_videoTrackRange.start.epoch + 4), time->var1);
      *time = v7;
    }

    playerQueue = self->_playerQueue;
    v7 = *time;
    [(AVQueuePlayer *)playerQueue seekToTime:&v7];
  }
}

- (__CVBuffer)_copyPixelBufferForTime:(id *)time
{
  v5 = [(NSArray *)self->_playerItemOutputs count];
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = (v6 + self->_currentPlayerItemOutput) % v5;
    v9 = [(NSArray *)self->_playerItemOutputs objectAtIndex:v8];

    v12 = *&time->var0;
    var3 = time->var3;
    if ([v9 hasNewPixelBufferForItemTime:&v12])
    {
      break;
    }

    ++v6;
    v7 = v9;
    if (v5 == v6)
    {
      v10 = 0;
      goto LABEL_8;
    }
  }

  v12 = *&time->var0;
  var3 = time->var3;
  v10 = [v9 copyPixelBufferForItemTime:&v12 itemTimeForDisplay:0];
  self->_currentPlayerItemOutput = v8;
LABEL_8:

  return v10;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)itemTimeForHostTime:(SEL)time
{
  v6 = [(NSArray *)self->_playerItemOutputs objectAtIndexedSubscript:self->_currentPlayerItemOutput];
  v8 = v6;
  if (v6)
  {
    [v6 itemTimeForHostTime:a4];
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (void)setMuted:(BOOL)muted
{
  playerQueue = self->_playerQueue;
  if (playerQueue)
  {
    [(AVQueuePlayer *)playerQueue setMuted:muted];
  }
}

- (void)setupPlayer
{
  v3 = [MEMORY[0x277CE65B0] playerItemWithAsset:self->_asset automaticallyLoadedAssetKeys:&unk_28732D808];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:{v3, 0}];
  v5 = [MEMORY[0x277CE65F8] queuePlayerWithItems:v4];
  playerQueue = self->_playerQueue;
  self->_playerQueue = v5;

  [(AVQueuePlayer *)self->_playerQueue setAutomaticallyWaitsToMinimizeStalling:0];
  if ([(PVLivePlayerAVAssetSource *)self loopPlayback])
  {
    v7 = [MEMORY[0x277CE65E0] playerLooperWithPlayer:self->_playerQueue templateItem:v3];
    playerLooper = self->_playerLooper;
    self->_playerLooper = v7;
  }

  v9 = dispatch_semaphore_create(0);
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__2;
  v38 = __Block_byref_object_dispose__2;
  v39 = 0;
  asset = self->_asset;
  v11 = *MEMORY[0x277CE5EA8];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = *"";
  v31[2] = __40__PVLivePlayerAVAssetSource_setupPlayer__block_invoke;
  v31[3] = &unk_279AA5640;
  v33 = &v34;
  v12 = v9;
  v32 = v12;
  [(AVAsset *)asset loadTracksWithMediaType:v11 completionHandler:v31];
  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  formatDescriptions = [v35[5] formatDescriptions];
  v14 = [formatDescriptions objectAtIndex:0];

  v15 = v35;
  v16 = v35[5];
  if (v16)
  {
    [v16 timeRange];
    v15 = v35;
  }

  else
  {
    v30 = 0u;
    memset(v29, 0, sizeof(v29));
  }

  v17 = *&v29[16];
  *(&self->_assetRate + 1) = *v29;
  *&self->_videoTrackRange.start.flags = v17;
  *(&self->_videoTrackRange.duration.value + 4) = v30;
  [v15[5] nominalFrameRate];
  HIDWORD(self->_videoTrackRange.duration.epoch) = v18;
  CMTimeMake(v29, 1, HIDWORD(self->_videoTrackRange.start.value));
  *&self->_videoTrackFrameRate = *v29;
  *&self->_videoTrackFrameDelta.timescale = *&v29[16];
  self->_videoTrackFrameDelta.epoch = CMVideoFormatDescriptionGetDimensions(v14);
  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v19 setObject:&unk_28732D820 forKey:*MEMORY[0x277CC4E30]];
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(PVLivePlayerAVAssetSource *)self loopPlayback])
  {
    loopingPlayerItems = [(AVPlayerLooper *)self->_playerLooper loopingPlayerItems];
    v22 = v28;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = *"";
    v28[2] = __40__PVLivePlayerAVAssetSource_setupPlayer__block_invoke_47;
    v28[3] = &unk_279AA5668;
    v28[4] = v19;
    v28[5] = v20;
    [loopingPlayerItems enumerateObjectsUsingBlock:v28];
  }

  else
  {
    loopingPlayerItems = [(AVQueuePlayer *)self->_playerQueue items];
    v22 = v27;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = *"";
    v27[2] = __40__PVLivePlayerAVAssetSource_setupPlayer__block_invoke_2;
    v27[3] = &unk_279AA5668;
    v27[4] = v19;
    v27[5] = v20;
    [loopingPlayerItems enumerateObjectsUsingBlock:v27];
  }

  [(PVLivePlayerAVAssetSource *)self startObservers];
  v23 = [v20 copy];
  playerItemOutputs = self->_playerItemOutputs;
  self->_playerItemOutputs = v23;

  v25 = self->_playerItemOutputs;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = *"";
  v26[2] = __40__PVLivePlayerAVAssetSource_setupPlayer__block_invoke_3;
  v26[3] = &unk_279AA5690;
  v26[4] = self;
  [(NSArray *)v25 enumerateObjectsUsingBlock:v26];
  self->_currentPlayerItemOutput = 0;
  *(&self->_currentPlayerItemOutput + 1) = *(&self->_assetRate + 1);
  *&self->_currentPlayerItemRange.start.flags = *&self->_videoTrackRange.start.flags;
  *(&self->_currentPlayerItemRange.duration.value + 4) = *(&self->_videoTrackRange.duration.value + 4);

  _Block_object_dispose(&v34, 8);
}

void __40__PVLivePlayerAVAssetSource_setupPlayer__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 firstObject];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __40__PVLivePlayerAVAssetSource_setupPlayer__block_invoke_47(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [objc_alloc(MEMORY[0x277CE65D0]) initWithPixelBufferAttributes:*(a1 + 32)];
  [v4 addOutput:v3];
  [*(a1 + 40) addObject:v3];
}

void __40__PVLivePlayerAVAssetSource_setupPlayer__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [objc_alloc(MEMORY[0x277CE65D0]) initWithPixelBufferAttributes:*(a1 + 32)];
  [v4 addOutput:v3];
  [*(a1 + 40) addObject:v3];
}

void __40__PVLivePlayerAVAssetSource_setupPlayer__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 224)];
  [v3 setSuppressesPlayerRendering:1];
  [v3 requestNotificationOfMediaDataChangeWithAdvanceInterval:1.0];
}

- (void)finishReading
{
  [(PVLivePlayerAVAssetSource *)self setStatus:3];
  playbackReadyCondVar = self->_playbackReadyCondVar;

  dispatch_semaphore_signal(playbackReadyCondVar);
}

- (void)startObservers
{
  [(AVQueuePlayer *)self->_playerQueue addObserver:self forKeyPath:@"status" options:0 context:&s_PlayerQueueStatusObservationContext];
  if ([(PVLivePlayerAVAssetSource *)self loopPlayback])
  {
    [(AVPlayerLooper *)self->_playerLooper loopingPlayerItems];
  }

  else
  {
    [(AVQueuePlayer *)self->_playerQueue items];
  }
  v3 = ;
  lastObject = [v3 lastObject];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_playerItemDidPlayToEnd_ name:*MEMORY[0x277CE60C0] object:lastObject];
}

- (void)stopObservers
{
  [(AVQueuePlayer *)self->_playerQueue removeObserver:self forKeyPath:@"status" context:&s_PlayerQueueStatusObservationContext];
  if ([(PVLivePlayerAVAssetSource *)self loopPlayback])
  {
    [(AVPlayerLooper *)self->_playerLooper loopingPlayerItems];
  }

  else
  {
    [(AVQueuePlayer *)self->_playerQueue items];
  }
  v3 = ;
  lastObject = [v3 lastObject];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CE60C0] object:lastObject];
}

- (void)playerItemDidPlayToEnd:(id)end
{
  if (![(PVLivePlayerAVAssetSource *)self loopPlayback])
  {

    [(PVLivePlayerAVAssetSource *)self finishReading];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = [pathCopy isEqualToString:@"status"] ^ 1;
  if (context != &s_PlayerQueueStatusObservationContext)
  {
    LOBYTE(v13) = 1;
  }

  if (v13)
  {
    v14.receiver = self;
    v14.super_class = PVLivePlayerAVAssetSource;
    [(PVLivePlayerAVAssetSource *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }

  else if ([objectCopy status] == 1)
  {
    dispatch_semaphore_signal(self->_dispatchQueue);
  }
}

@end