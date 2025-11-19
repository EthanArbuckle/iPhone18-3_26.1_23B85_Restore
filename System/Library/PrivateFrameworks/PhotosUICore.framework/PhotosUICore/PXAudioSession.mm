@interface PXAudioSession
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime;
- (NSString)description;
- (PXAudioSession)init;
- (PXAudioSession)initWithAsset:(id)a3 volume:(float)a4 startTime:(id *)a5 queue:(id)a6 audioSessionDelegate:(id)a7;
- (PXAudioSessionAVAudioSessionDelegate)audioSessionDelegate;
- (void)_updateDesiredPlayerVolume;
- (void)didPerformChanges;
- (void)pause;
- (void)performChanges:(id)a3;
- (void)performInternalChanges:(id)a3;
- (void)play;
- (void)playFromTime:(id *)a3;
- (void)prepareToPlay;
- (void)setContentLoudnessInLKFS:(id)a3;
- (void)setContentPeakDecibels:(id)a3;
- (void)setDesiredPlayerVolume:(float)a3;
- (void)setDuration:(id *)a3;
- (void)setError:(id)a3;
- (void)setIsReadyToPlay:(BOOL)a3;
- (void)setStatus:(int64_t)a3;
- (void)setTargetLoudnessInLKFS:(float)a3;
- (void)setVolume:(float)a3;
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

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXAudioSession;
  [(PXAudioSession *)&v3 performChanges:a3];
}

- (void)_updateDesiredPlayerVolume
{
  [(PXAudioSession *)self volume];
  v4 = v3;
  v5 = [(PXAudioSession *)self contentPeakDecibels];
  if (v5)
  {
    v7 = v5;
    v8 = [(PXAudioSession *)self contentLoudnessInLKFS];

    if (v8)
    {
      [(PXAudioSession *)self targetLoudnessInLKFS];
      v10 = v9;
      v11 = [(PXAudioSession *)self contentLoudnessInLKFS];
      [v11 floatValue];
      v13 = v12;

      v14 = [(PXAudioSession *)self contentPeakDecibels];
      [v14 floatValue];

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

- (void)setDesiredPlayerVolume:(float)a3
{
  if (self->_desiredPlayerVolume != a3)
  {
    self->_desiredPlayerVolume = a3;
    [(PXAudioSession *)self desiredPlayerVolumeDidChange];
  }
}

- (void)setContentLoudnessInLKFS:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_contentLoudnessInLKFS != v5)
  {
    v8 = v5;
    v7 = [(NSNumber *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_contentLoudnessInLKFS, a3);
      [(PXAudioSession *)self _invalidateDesiredPlayerVolume];
      v6 = v8;
    }
  }
}

- (void)setContentPeakDecibels:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_contentPeakDecibels != v5)
  {
    v8 = v5;
    v7 = [(NSNumber *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_contentPeakDecibels, a3);
      [(PXAudioSession *)self _invalidateDesiredPlayerVolume];
      v6 = v8;
    }
  }
}

- (void)setIsReadyToPlay:(BOOL)a3
{
  if (self->_isReadyToPlay != a3)
  {
    self->_isReadyToPlay = a3;
    [(PXAudioSession *)self signalChange:8];
  }
}

- (void)setDuration:(id *)a3
{
  p_duration = &self->_duration;
  time1 = *a3;
  duration = self->_duration;
  if (CMTimeCompare(&time1, &duration))
  {
    v6 = *&a3->var0;
    p_duration->epoch = a3->var3;
    *&p_duration->value = v6;
    [(PXAudioSession *)self signalChange:1];
  }
}

- (void)setError:(id)a3
{
  v5 = a3;
  if (self->_error != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_error, a3);
    [(PXAudioSession *)self errorDidChange];
    [(PXAudioSession *)self signalChange:4];
    v5 = v6;
  }
}

- (void)setStatus:(int64_t)a3
{
  if (self->_status != a3)
  {
    self->_status = a3;
    [(PXAudioSession *)self signalChange:2];
  }
}

- (void)setTargetLoudnessInLKFS:(float)a3
{
  if (self->_targetLoudnessInLKFS != a3)
  {
    self->_targetLoudnessInLKFS = a3;
    [(PXAudioSession *)self _invalidateDesiredPlayerVolume];
  }
}

- (void)setVolume:(float)a3
{
  if (self->_volume != a3)
  {
    self->_volume = a3;
    [(PXAudioSession *)self _invalidateDesiredPlayerVolume];
  }
}

- (void)playFromTime:(id *)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PXAudioSession.m" lineNumber:102 description:{@"Method %s is a responsibility of subclass %@", "-[PXAudioSession playFromTime:]", v7}];

  abort();
}

- (void)play
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXAudioSession.m" lineNumber:98 description:{@"Method %s is a responsibility of subclass %@", "-[PXAudioSession play]", v6}];

  abort();
}

- (void)pause
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXAudioSession.m" lineNumber:94 description:{@"Method %s is a responsibility of subclass %@", "-[PXAudioSession pause]", v6}];

  abort();
}

- (void)prepareToPlay
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXAudioSession.m" lineNumber:90 description:{@"Method %s is a responsibility of subclass %@", "-[PXAudioSession prepareToPlay]", v6}];

  abort();
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a3 object:self file:@"PXAudioSession.m" lineNumber:74 description:{@"Method %s is a responsibility of subclass %@", "-[PXAudioSession currentTime]", v7}];

  abort();
}

- (void)performInternalChanges:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__PXAudioSession_performInternalChanges___block_invoke;
  block[3] = &unk_1E774AA30;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
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

  v8 = [(PXAudioSession *)self asset];
  v9 = [v3 initWithFormat:@"<%@: %p; status: %@; asset: %@>", v5, self, v7, v8];

  return v9;
}

- (PXAudioSession)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXAudioSession.m" lineNumber:41 description:{@"%s is not available as initializer", "-[PXAudioSession init]"}];

  abort();
}

- (PXAudioSession)initWithAsset:(id)a3 volume:(float)a4 startTime:(id *)a5 queue:(id)a6 audioSessionDelegate:(id)a7
{
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v22.receiver = self;
  v22.super_class = PXAudioSession;
  v16 = [(PXAudioSession *)&v22 init];
  v17 = v16;
  if (v16)
  {
    var3 = a5->var3;
    *(v16 + 200) = *&a5->var0;
    *(v16 + 27) = var3;
    objc_storeStrong(v16 + 21, a3);
    v17->_desiredPlayerVolume = a4;
    v17->_volume = a4;
    objc_storeStrong(&v17->_queue, a6);
    v19 = [[off_1E7721940 alloc] initWithTarget:v17];
    updater = v17->_updater;
    v17->_updater = v19;

    [(PXUpdater *)v17->_updater addUpdateSelector:sel__updateDesiredPlayerVolume];
    objc_storeWeak(&v17->_audioSessionDelegate, v15);
  }

  return v17;
}

@end