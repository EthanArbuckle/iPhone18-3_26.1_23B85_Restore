@interface VPSpatialTutorialContentView
- (VPSpatialTutorialContentView)initWithFrame:(CGRect)frame mode:(int)mode;
- (void)dealloc;
- (void)initPlayerSpatial;
- (void)initPlayerStereo;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)startPlayers;
- (void)stopPlayers;
- (void)syncPlayersWithRate:(float)rate;
- (void)updatePlayersValuesBasedOnMode;
@end

@implementation VPSpatialTutorialContentView

- (VPSpatialTutorialContentView)initWithFrame:(CGRect)frame mode:(int)mode
{
  v8.receiver = self;
  v8.super_class = VPSpatialTutorialContentView;
  v5 = [(VPSpatialTutorialContentView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_mode = mode;
    v5->_playersPlaying = 0;
    v5->_playersStartTriggered = 0;
    v5->_spatialStatus = 0;
    v5->_stereoStatus = 0;
    [(VPSpatialTutorialContentView *)v5 initPlayerStereo];
    [(VPSpatialTutorialContentView *)v6 initPlayerSpatial];
    [(VPSpatialTutorialContentView *)v6 updatePlayersValuesBasedOnMode];
  }

  return v6;
}

- (void)layoutSublayersOfLayer:(id)layer
{
  v4.receiver = self;
  v4.super_class = VPSpatialTutorialContentView;
  [(VPSpatialTutorialContentView *)&v4 layoutSublayersOfLayer:layer];
  [(VPSpatialTutorialContentView *)self bounds];
  [(AVPlayerLayer *)self->_playerLayerStereo setFrame:?];
  [(VPSpatialTutorialContentView *)self bounds];
  [(AVPlayerLayer *)self->_playerLayerSpatial setFrame:?];
}

- (void)dealloc
{
  [(AVPlayerLooper *)self->_looperStereo removeObserver:self forKeyPath:@"status" context:&self->_looperStereo];
  [(AVQueuePlayer *)self->_playerStereo removeObserver:self forKeyPath:@"status" context:&self->_playerStereo];
  [(AVPlayerLooper *)self->_looperSpatial removeObserver:self forKeyPath:@"status" context:&self->_looperSpatial];
  [(AVQueuePlayer *)self->_playerSpatial removeObserver:self forKeyPath:@"status" context:&self->_playerSpatial];
  v3.receiver = self;
  v3.super_class = VPSpatialTutorialContentView;
  [(VPSpatialTutorialContentView *)&v3 dealloc];
}

- (void)initPlayerStereo
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"StereoAudioLoop" ofType:@"mov"];

  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  v6 = [MEMORY[0x277CE65B0] playerItemWithURL:v5];
  playerItemStereo = self->_playerItemStereo;
  self->_playerItemStereo = v6;

  [(AVPlayerItem *)self->_playerItemStereo setAllowedAudioSpatializationFormats:0];
  v8 = objc_alloc_init(MEMORY[0x277CE65F8]);
  playerStereo = self->_playerStereo;
  self->_playerStereo = v8;

  [(AVQueuePlayer *)self->_playerStereo setAutomaticallyWaitsToMinimizeStalling:0];
  v10 = MEMORY[0x277CE65E0];
  v11 = self->_playerStereo;
  v12 = self->_playerItemStereo;
  CMTimeMake(&duration, 14000, 1000);
  v18 = **&MEMORY[0x277CC08F0];
  CMTimeRangeMake(&v20, &v18, &duration);
  v13 = [v10 playerLooperWithPlayer:v11 templateItem:v12 timeRange:&v20];
  looperStereo = self->_looperStereo;
  self->_looperStereo = v13;

  [(AVPlayerLooper *)self->_looperStereo addObserver:self forKeyPath:@"status" options:5 context:&self->_looperStereo];
  [(AVQueuePlayer *)self->_playerStereo addObserver:self forKeyPath:@"status" options:5 context:&self->_playerStereo];
  v15 = [MEMORY[0x277CE65D8] playerLayerWithPlayer:self->_playerStereo];
  playerLayerStereo = self->_playerLayerStereo;
  self->_playerLayerStereo = v15;

  layer = [(VPSpatialTutorialContentView *)self layer];
  [layer addSublayer:self->_playerLayerStereo];
}

- (void)initPlayerSpatial
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"SpatialAudioLoop" ofType:@"mov"];

  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  v6 = [MEMORY[0x277CE65B0] playerItemWithURL:v5];
  playerItemSpatial = self->_playerItemSpatial;
  self->_playerItemSpatial = v6;

  v8 = objc_alloc_init(MEMORY[0x277CE65F8]);
  playerSpatial = self->_playerSpatial;
  self->_playerSpatial = v8;

  [(AVQueuePlayer *)self->_playerSpatial setAutomaticallyWaitsToMinimizeStalling:0];
  v10 = MEMORY[0x277CE65E0];
  v11 = self->_playerSpatial;
  v12 = self->_playerItemSpatial;
  CMTimeMake(&duration, 14000, 1000);
  v18 = **&MEMORY[0x277CC08F0];
  CMTimeRangeMake(&v20, &v18, &duration);
  v13 = [v10 playerLooperWithPlayer:v11 templateItem:v12 timeRange:&v20];
  looperSpatial = self->_looperSpatial;
  self->_looperSpatial = v13;

  [(AVPlayerLooper *)self->_looperSpatial addObserver:self forKeyPath:@"status" options:5 context:&self->_looperSpatial];
  [(AVQueuePlayer *)self->_playerSpatial addObserver:self forKeyPath:@"status" options:5 context:&self->_playerSpatial];
  v15 = [MEMORY[0x277CE65D8] playerLayerWithPlayer:self->_playerSpatial];
  playerLayerSpatial = self->_playerLayerSpatial;
  self->_playerLayerSpatial = v15;

  layer = [(VPSpatialTutorialContentView *)self layer];
  [layer addSublayer:self->_playerLayerSpatial];
}

- (void)startPlayers
{
  self->_playersStartTriggered = 1;
  if (self->_stereoStatus.looperReady && self->_stereoStatus.playerReady && self->_spatialStatus.looperReady && self->_spatialStatus.playerReady)
  {
    [(VPSpatialTutorialContentView *)self updatePlayersValuesBasedOnMode];
    LODWORD(v3) = 1.0;

    [(VPSpatialTutorialContentView *)self syncPlayersWithRate:v3];
  }

  else if (gLogCategory_STCV <= 50 && (gLogCategory_STCV != -1 || _LogCategory_Initialize()))
  {

    LogPrintF();
  }
}

- (void)stopPlayers
{
  self->_playersStartTriggered = 0;
  if (self->_playersPlaying)
  {

    [(VPSpatialTutorialContentView *)self syncPlayersWithRate:0.0];
  }

  else if (gLogCategory_STCV <= 50 && (gLogCategory_STCV != -1 || _LogCategory_Initialize()))
  {

    LogPrintF();
  }
}

- (void)syncPlayersWithRate:(float)rate
{
  memset(&v20, 0, sizeof(v20));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v20, HostTimeClock);
  memset(&v19, 0, sizeof(v19));
  CMTimeMakeWithSeconds(&rhs, 0.1, 1000);
  lhs = v20;
  CMTimeAdd(&v19, &lhs, &rhs);
  playerStereo = self->_playerStereo;
  if (playerStereo)
  {
    [(AVQueuePlayer *)playerStereo currentTime];
    if ((v15 & 0x100000000) != 0)
    {
      v7 = self->_playerStereo;
      if (v7)
      {
        [(AVQueuePlayer *)v7 currentTime];
      }

      else
      {
        memset(&lhs, 0, sizeof(lhs));
      }

      *&rhs.value = *&lhs.value;
      epoch = lhs.epoch;
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  *&rhs.value = *MEMORY[0x277CC08F0];
  epoch = *(MEMORY[0x277CC08F0] + 16);
LABEL_9:
  rhs.epoch = epoch;
  if (gLogCategory_STCV <= 50 && (gLogCategory_STCV != -1 || _LogCategory_Initialize()))
  {
    lhs = rhs;
    Seconds = CMTimeGetSeconds(&lhs);
    rateCopy = rate;
    LogPrintF();
  }

  v9 = self->_playerStereo;
  lhs = rhs;
  v13 = v19;
  [(AVQueuePlayer *)v9 setRate:&lhs time:&v13 atHostTime:COERCE_DOUBLE(__PAIR64__(HIDWORD(v19.value), LODWORD(rate))), *&Seconds, *&rateCopy];
  playerSpatial = self->_playerSpatial;
  lhs = rhs;
  v13 = v19;
  [(AVQueuePlayer *)playerSpatial setRate:&lhs time:&v13 atHostTime:COERCE_DOUBLE(__PAIR64__(HIDWORD(v19.value), LODWORD(rate)))];
  self->_playersPlaying = rate == 1.0;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  v9 = CUMainQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__VPSpatialTutorialContentView_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_279E32160;
  v12 = changeCopy;
  contextCopy = context;
  block[4] = self;
  v10 = changeCopy;
  dispatch_async(v9, block);
}

_BYTE *__79__VPSpatialTutorialContentView_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == v3 + 416 || v2 == v3 + 424)
  {
    v4 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 integerValue];
    }

    else
    {
      v5 = 0;
    }

    v6 = *(a1 + 48);
    v7 = *(a1 + 32);
    if (v6 == v7 + 416)
    {
      if (gLogCategory_STCV <= 50 && (gLogCategory_STCV != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (v5 != 1)
      {
        goto LABEL_46;
      }

      v11 = &OBJC_IVAR___VPSpatialTutorialContentView__stereoStatus;
    }

    else
    {
      if (v6 != v7 + 424)
      {
        goto LABEL_46;
      }

      if (gLogCategory_STCV <= 50 && (gLogCategory_STCV != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (v5 != 1)
      {
        goto LABEL_46;
      }

      v11 = &OBJC_IVAR___VPSpatialTutorialContentView__spatialStatus;
    }

    *(*(a1 + 32) + *v11) = 1;
    goto LABEL_46;
  }

  if (v2 == v3 + 432 || v2 == v3 + 440)
  {
    v4 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v4 integerValue];
    }

    else
    {
      v8 = 0;
    }

    v9 = *(a1 + 48);
    v10 = *(a1 + 32);
    if (v9 == v10 + 432)
    {
      if (gLogCategory_STCV <= 50 && (gLogCategory_STCV != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (v8 != 1)
      {
        goto LABEL_46;
      }

      v12 = &OBJC_IVAR___VPSpatialTutorialContentView__stereoStatus;
    }

    else
    {
      if (v9 != v10 + 440)
      {
        goto LABEL_46;
      }

      if (gLogCategory_STCV <= 50 && (gLogCategory_STCV != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (v8 != 1)
      {
        goto LABEL_46;
      }

      v12 = &OBJC_IVAR___VPSpatialTutorialContentView__spatialStatus;
    }

    *(*(a1 + 32) + *v12 + 1) = 1;
LABEL_46:

    goto LABEL_47;
  }

  if (gLogCategory_STCV <= 90 && (gLogCategory_STCV != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_47:
  result = *(a1 + 32);
  if (result[481] == 1)
  {

    return [result startPlayers];
  }

  return result;
}

- (void)updatePlayersValuesBasedOnMode
{
  v3 = &OBJC_IVAR___VPSpatialTutorialContentView__playerLayerStereo;
  mode = self->_mode;
  if (mode)
  {
    if (mode != 1)
    {
      return;
    }

    v5 = &OBJC_IVAR___VPSpatialTutorialContentView__playerLayerStereo;
    v6 = &OBJC_IVAR___VPSpatialTutorialContentView__playerStereo;
    v7 = &OBJC_IVAR___VPSpatialTutorialContentView__playerSpatial;
    v3 = &OBJC_IVAR___VPSpatialTutorialContentView__playerLayerSpatial;
  }

  else
  {
    v6 = &OBJC_IVAR___VPSpatialTutorialContentView__playerSpatial;
    v7 = &OBJC_IVAR___VPSpatialTutorialContentView__playerStereo;
    v5 = &OBJC_IVAR___VPSpatialTutorialContentView__playerLayerSpatial;
  }

  [*(&self->super.super.super.isa + *v3) setHidden:0];
  [*(&self->super.super.super.isa + *v5) setHidden:1];
  LODWORD(v8) = 1.0;
  [*(&self->super.super.super.isa + *v7) setVolume:v8];
  v9 = *(&self->super.super.super.isa + *v6);

  [v9 setVolume:0.0];
}

@end