@interface SVVideoVolumeObserver
- (AVAudioSession)audioSession;
- (SVPlaybackCoordinator)playbackCoordinator;
- (SVVideoVolumeObserver)initWithPlaybackCoordinator:(id)coordinator audioSession:(id)session;
- (void)playbackCoordinatorMuteStateChanged:(id)changed;
- (void)updateWithVolume:(float)volume muted:(BOOL)muted;
@end

@implementation SVVideoVolumeObserver

- (SVVideoVolumeObserver)initWithPlaybackCoordinator:(id)coordinator audioSession:(id)session
{
  coordinatorCopy = coordinator;
  sessionCopy = session;
  v21.receiver = self;
  v21.super_class = SVVideoVolumeObserver;
  v8 = [(SVVideoVolumeObserver *)&v21 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_playbackCoordinator, coordinatorCopy);
    objc_storeWeak(&v9->_audioSession, sessionCopy);
    [coordinatorCopy addPlaybackObserver:v9];
    [sessionCopy outputVolume];
    v11 = v10;
    muted = [coordinatorCopy muted];
    LODWORD(v13) = v11;
    [(SVVideoVolumeObserver *)v9 updateWithVolume:muted muted:v13];
    objc_initWeak(&location, v9);
    v14 = [SVKeyValueObserver alloc];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __66__SVVideoVolumeObserver_initWithPlaybackCoordinator_audioSession___block_invoke;
    v18[3] = &unk_279BC5D60;
    objc_copyWeak(&v19, &location);
    v15 = [(SVKeyValueObserver *)v14 initWithKeyPath:@"outputVolume" ofObject:sessionCopy withOptions:1 change:v18];
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

- (void)playbackCoordinatorMuteStateChanged:(id)changed
{
  changedCopy = changed;
  v4 = 0;
  if (([changedCopy muted] & 1) == 0)
  {
    audioSession = [(SVVideoVolumeObserver *)self audioSession];
    [audioSession outputVolume];
    v4 = v6;
  }

  muted = [changedCopy muted];
  LODWORD(v8) = v4;
  [(SVVideoVolumeObserver *)self updateWithVolume:muted muted:v8];
}

- (void)updateWithVolume:(float)volume muted:(BOOL)muted
{
  mutedCopy = muted;
  muted = self->_muted;
  if (self->_volume == volume)
  {
    if (muted == muted)
    {
      return;
    }

    self->_muted = muted;
    self->_volume = volume;
    goto LABEL_8;
  }

  self->_muted = muted;
  self->_volume = volume;
  volumeChangeBlock = [(SVVideoVolumeObserver *)self volumeChangeBlock];

  if (volumeChangeBlock)
  {
    volumeChangeBlock2 = [(SVVideoVolumeObserver *)self volumeChangeBlock];
    (volumeChangeBlock2)[2](volumeChangeBlock2, self);
  }

  if (muted != mutedCopy)
  {
LABEL_8:
    muteStateChangeBlock = [(SVVideoVolumeObserver *)self muteStateChangeBlock];

    if (muteStateChangeBlock)
    {
      muteStateChangeBlock2 = [(SVVideoVolumeObserver *)self muteStateChangeBlock];
      muteStateChangeBlock2[2](muteStateChangeBlock2, self);
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