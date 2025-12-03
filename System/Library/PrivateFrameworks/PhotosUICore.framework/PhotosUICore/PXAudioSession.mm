@interface PXAudioSession
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime;
- (NSString)description;
- (PXAudioSession)init;
- (PXAudioSession)initWithAsset:(id)asset volume:(float)volume startTime:(id *)time queue:(id)queue audioSessionDelegate:(id)delegate;
- (PXAudioSessionAVAudioSessionDelegate)audioSessionDelegate;
- (void)_updateDesiredPlayerVolume;
- (void)didPerformChanges;
- (void)pause;
- (void)performChanges:(id)changes;
- (void)performInternalChanges:(id)changes;
- (void)play;
- (void)playFromTime:(id *)time;
- (void)prepareToPlay;
- (void)setContentLoudnessInLKFS:(id)s;
- (void)setContentPeakDecibels:(id)decibels;
- (void)setDesiredPlayerVolume:(float)volume;
- (void)setDuration:(id *)duration;
- (void)setError:(id)error;
- (void)setIsReadyToPlay:(BOOL)play;
- (void)setStatus:(int64_t)status;
- (void)setTargetLoudnessInLKFS:(float)s;
- (void)setVolume:(float)volume;
@end

@implementation PXAudioSession

- (PXAudioSessionAVAudioSessionDelegate)audioSessionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_audioSessionDelegate);

  return WeakRetained;
}

- (void)didPerformChanges
{
  v3.receiver = self;
  v3.super_class = PXAudioSession;
  [(PXAudioSession *)&v3 didPerformChanges];
  [(PXUpdater *)self->_updater updateIfNeeded];
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXAudioSession;
  [(PXAudioSession *)&v3 performChanges:changes];
}

- (void)_updateDesiredPlayerVolume
{
  [(PXAudioSession *)self volume];
  v4 = v3;
  contentPeakDecibels = [(PXAudioSession *)self contentPeakDecibels];
  if (contentPeakDecibels)
  {
    v7 = contentPeakDecibels;
    contentLoudnessInLKFS = [(PXAudioSession *)self contentLoudnessInLKFS];

    if (contentLoudnessInLKFS)
    {
      [(PXAudioSession *)self targetLoudnessInLKFS];
      v10 = v9;
      contentLoudnessInLKFS2 = [(PXAudioSession *)self contentLoudnessInLKFS];
      [contentLoudnessInLKFS2 floatValue];
      v13 = v12;

      contentPeakDecibels2 = [(PXAudioSession *)self contentPeakDecibels];
      [contentPeakDecibels2 floatValue];

      if (v10 != 0.0 && v13 != 0.0)
      {
        PXVolumeGainForTargetLoudness(v10, v13);
        v4 = v4 * *&v6;
      }
    }
  }

  *&v6 = v4;

  [(PXAudioSession *)self setDesiredPlayerVolume:v6];
}

- (void)setDesiredPlayerVolume:(float)volume
{
  if (self->_desiredPlayerVolume != volume)
  {
    self->_desiredPlayerVolume = volume;
    [(PXAudioSession *)self desiredPlayerVolumeDidChange];
  }
}

- (void)setContentLoudnessInLKFS:(id)s
{
  sCopy = s;
  v6 = sCopy;
  if (self->_contentLoudnessInLKFS != sCopy)
  {
    v8 = sCopy;
    v7 = [(NSNumber *)sCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_contentLoudnessInLKFS, s);
      [(PXAudioSession *)self _invalidateDesiredPlayerVolume];
      v6 = v8;
    }
  }
}

- (void)setContentPeakDecibels:(id)decibels
{
  decibelsCopy = decibels;
  v6 = decibelsCopy;
  if (self->_contentPeakDecibels != decibelsCopy)
  {
    v8 = decibelsCopy;
    v7 = [(NSNumber *)decibelsCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_contentPeakDecibels, decibels);
      [(PXAudioSession *)self _invalidateDesiredPlayerVolume];
      v6 = v8;
    }
  }
}

- (void)setIsReadyToPlay:(BOOL)play
{
  if (self->_isReadyToPlay != play)
  {
    self->_isReadyToPlay = play;
    [(PXAudioSession *)self signalChange:8];
  }
}

- (void)setDuration:(id *)duration
{
  p_duration = &self->_duration;
  time1 = *duration;
  duration = self->_duration;
  if (CMTimeCompare(&time1, &duration))
  {
    v6 = *&duration->var0;
    p_duration->epoch = duration->var3;
    *&p_duration->value = v6;
    [(PXAudioSession *)self signalChange:1];
  }
}

- (void)setError:(id)error
{
  errorCopy = error;
  if (self->_error != errorCopy)
  {
    v6 = errorCopy;
    objc_storeStrong(&self->_error, error);
    [(PXAudioSession *)self errorDidChange];
    [(PXAudioSession *)self signalChange:4];
    errorCopy = v6;
  }
}

- (void)setStatus:(int64_t)status
{
  if (self->_status != status)
  {
    self->_status = status;
    [(PXAudioSession *)self signalChange:2];
  }
}

- (void)setTargetLoudnessInLKFS:(float)s
{
  if (self->_targetLoudnessInLKFS != s)
  {
    self->_targetLoudnessInLKFS = s;
    [(PXAudioSession *)self _invalidateDesiredPlayerVolume];
  }
}

- (void)setVolume:(float)volume
{
  if (self->_volume != volume)
  {
    self->_volume = volume;
    [(PXAudioSession *)self _invalidateDesiredPlayerVolume];
  }
}

- (void)playFromTime:(id *)time
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAudioSession.m" lineNumber:102 description:{@"Method %s is a responsibility of subclass %@", "-[PXAudioSession playFromTime:]", v7}];

  abort();
}

- (void)play
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAudioSession.m" lineNumber:98 description:{@"Method %s is a responsibility of subclass %@", "-[PXAudioSession play]", v6}];

  abort();
}

- (void)pause
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAudioSession.m" lineNumber:94 description:{@"Method %s is a responsibility of subclass %@", "-[PXAudioSession pause]", v6}];

  abort();
}

- (void)prepareToPlay
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAudioSession.m" lineNumber:90 description:{@"Method %s is a responsibility of subclass %@", "-[PXAudioSession prepareToPlay]", v6}];

  abort();
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a3 object:self file:@"PXAudioSession.m" lineNumber:74 description:{@"Method %s is a responsibility of subclass %@", "-[PXAudioSession currentTime]", v7}];

  abort();
}

- (void)performInternalChanges:(id)changes
{
  changesCopy = changes;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__PXAudioSession_performInternalChanges___block_invoke;
  block[3] = &unk_1E774AA30;
  objc_copyWeak(&v9, &location);
  v8 = changesCopy;
  v6 = changesCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __41__PXAudioSession_performInternalChanges___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained performChanges:*(a1 + 32)];
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PXAudioSession *)self status]- 1;
  if (v6 > 3)
  {
    v7 = @"Unknown";
  }

  else
  {
    v7 = off_1E773F210[v6];
  }

  asset = [(PXAudioSession *)self asset];
  v9 = [v3 initWithFormat:@"<%@: %p; status: %@; asset: %@>", v5, self, v7, asset];

  return v9;
}

- (PXAudioSession)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAudioSession.m" lineNumber:41 description:{@"%s is not available as initializer", "-[PXAudioSession init]"}];

  abort();
}

- (PXAudioSession)initWithAsset:(id)asset volume:(float)volume startTime:(id *)time queue:(id)queue audioSessionDelegate:(id)delegate
{
  assetCopy = asset;
  queueCopy = queue;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = PXAudioSession;
  v16 = [(PXAudioSession *)&v22 init];
  v17 = v16;
  if (v16)
  {
    var3 = time->var3;
    *(v16 + 200) = *&time->var0;
    *(v16 + 27) = var3;
    objc_storeStrong(v16 + 21, asset);
    v17->_desiredPlayerVolume = volume;
    v17->_volume = volume;
    objc_storeStrong(&v17->_queue, queue);
    v19 = [[off_1E7721940 alloc] initWithTarget:v17];
    updater = v17->_updater;
    v17->_updater = v19;

    [(PXUpdater *)v17->_updater addUpdateSelector:sel__updateDesiredPlayerVolume];
    objc_storeWeak(&v17->_audioSessionDelegate, delegateCopy);
  }

  return v17;
}

@end