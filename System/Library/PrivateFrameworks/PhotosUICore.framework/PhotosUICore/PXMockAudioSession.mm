@interface PXMockAudioSession
- (PXMockAudioSession)initWithAsset:(id)asset volume:(float)volume startTime:(id *)time queue:(id)queue audioSessionDelegate:(id)delegate;
- (void)_handleCurrentTimeUpdateTimer:(id)timer;
- (void)_invalidateCurrentTimeUpdateTimer;
- (void)_startCurrentTimeUpdateTimer;
- (void)pause;
- (void)play;
- (void)playFromTime:(id *)time;
- (void)prepareToPlay;
@end

@implementation PXMockAudioSession

- (void)_handleCurrentTimeUpdateTimer:(id)timer
{
  p_currentTime = &self->_currentTime;
  CMTimeMake(&rhs, 1, 10);
  v4 = *p_currentTime;
  CMTimeAdd(&v6, &v4, &rhs);
  *p_currentTime = v6;
}

- (void)_invalidateCurrentTimeUpdateTimer
{
  currentTimeUpdateTimer = self->_currentTimeUpdateTimer;
  if (currentTimeUpdateTimer)
  {
    [(NSTimer *)currentTimeUpdateTimer invalidate];
    v4 = self->_currentTimeUpdateTimer;
    self->_currentTimeUpdateTimer = 0;
  }
}

- (void)_startCurrentTimeUpdateTimer
{
  [(PXMockAudioSession *)self _invalidateCurrentTimeUpdateTimer];
  v3 = [MEMORY[0x1E695DFF0] px_scheduledTimerWithTimeInterval:self weakTarget:sel__handleCurrentTimeUpdateTimer_ selector:0 userInfo:1 repeats:0.1];
  currentTimeUpdateTimer = self->_currentTimeUpdateTimer;
  self->_currentTimeUpdateTimer = v3;
}

- (void)playFromTime:(id *)time
{
  [(PXAudioSession *)self performInternalChanges:&__block_literal_global_9_159222];
  var3 = time->var3;
  *&self->_currentTime.value = *&time->var0;
  self->_currentTime.epoch = var3;

  [(PXMockAudioSession *)self _startCurrentTimeUpdateTimer];
}

- (void)play
{
  [(PXAudioSession *)self performInternalChanges:&__block_literal_global_7_159224];

  [(PXMockAudioSession *)self _startCurrentTimeUpdateTimer];
}

- (void)pause
{
  [(PXMockAudioSession *)self _invalidateCurrentTimeUpdateTimer];

  [(PXAudioSession *)self performInternalChanges:&__block_literal_global_5_159226];
}

- (void)prepareToPlay
{
  [(PXAudioSession *)self performInternalChanges:&__block_literal_global_159228];
  v3 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__PXMockAudioSession_prepareToPlay__block_invoke_2;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x1E69E96A0], block);
}

void __35__PXMockAudioSession_prepareToPlay__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setIsReadyToPlay:1];
  [v2 setStatus:2];
}

- (PXMockAudioSession)initWithAsset:(id)asset volume:(float)volume startTime:(id *)time queue:(id)queue audioSessionDelegate:(id)delegate
{
  v11.receiver = self;
  v11.super_class = PXMockAudioSession;
  v10 = *time;
  result = [(PXAudioSession *)&v11 initWithAsset:asset volume:&v10 startTime:queue queue:0 audioSessionDelegate:?];
  if (result)
  {
    var3 = time->var3;
    *&result->_currentTime.value = *&time->var0;
    result->_currentTime.epoch = var3;
  }

  return result;
}

@end