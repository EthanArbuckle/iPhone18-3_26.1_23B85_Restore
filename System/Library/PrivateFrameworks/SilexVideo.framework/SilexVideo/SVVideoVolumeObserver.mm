@interface SVVideoVolumeObserver
- (AVAudioSession)audioSession;
- (SVPlaybackCoordinator)playbackCoordinator;
- (SVVideoVolumeObserver)initWithPlaybackCoordinator:(id)a3 audioSession:(id)a4;
- (void)playbackCoordinatorMuteStateChanged:(id)a3;
- (void)updateWithVolume:(float)a3 muted:(BOOL)a4;
@end

@implementation SVVideoVolumeObserver

- (SVVideoVolumeObserver)initWithPlaybackCoordinator:(id)a3 audioSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = SVVideoVolumeObserver;
  v8 = [(SVVideoVolumeObserver *)&v21 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_playbackCoordinator, v6);
    objc_storeWeak(&v9->_audioSession, v7);
    [v6 addPlaybackObserver:v9];
    [v7 outputVolume];
    v11 = v10;
    v12 = [v6 muted];
    LODWORD(v13) = v11;
    [(SVVideoVolumeObserver *)v9 updateWithVolume:v12 muted:v13];
    objc_initWeak(&location, v9);
    v14 = [SVKeyValueObserver alloc];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __66__SVVideoVolumeObserver_initWithPlaybackCoordinator_audioSession___block_invoke;
    v18[3] = &unk_279BC5D60;
    objc_copyWeak(&v19, &location);
    v15 = [(SVKeyValueObserver *)v14 initWithKeyPath:@"outputVolume" ofObject:v7 withOptions:1 change:v18];
    outputVolumeObserver = v9->_outputVolumeObserver;
    v9->_outputVolumeObserver = v15;

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __66__SVVideoVolumeObserver_initWithPlaybackCoordinator_audioSession___block_invoke(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 audioSession];
  [v1 outputVolume];
  [v2 volumeChanged:?];
}

- (void)playbackCoordinatorMuteStateChanged:(id)a3
{
  v9 = a3;
  v4 = 0;
  if (([v9 muted] & 1) == 0)
  {
    v5 = [(SVVideoVolumeObserver *)self audioSession];
    [v5 outputVolume];
    v4 = v6;
  }

  v7 = [v9 muted];
  LODWORD(v8) = v4;
  [(SVVideoVolumeObserver *)self updateWithVolume:v7 muted:v8];
}

- (void)updateWithVolume:(float)a3 muted:(BOOL)a4
{
  v4 = a4;
  muted = self->_muted;
  if (self->_volume == a3)
  {
    if (muted == a4)
    {
      return;
    }

    self->_muted = a4;
    self->_volume = a3;
    goto LABEL_8;
  }

  self->_muted = a4;
  self->_volume = a3;
  v7 = [(SVVideoVolumeObserver *)self volumeChangeBlock];

  if (v7)
  {
    v8 = [(SVVideoVolumeObserver *)self volumeChangeBlock];
    (v8)[2](v8, self);
  }

  if (muted != v4)
  {
LABEL_8:
    v9 = [(SVVideoVolumeObserver *)self muteStateChangeBlock];

    if (v9)
    {
      v10 = [(SVVideoVolumeObserver *)self muteStateChangeBlock];
      v10[2](v10, self);
    }
  }
}

- (SVPlaybackCoordinator)playbackCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackCoordinator);

  return WeakRetained;
}

- (AVAudioSession)audioSession
{
  WeakRetained = objc_loadWeakRetained(&self->_audioSession);

  return WeakRetained;
}

@end