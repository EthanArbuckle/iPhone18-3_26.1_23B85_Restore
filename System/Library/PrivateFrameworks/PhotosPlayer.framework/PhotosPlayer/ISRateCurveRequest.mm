@interface ISRateCurveRequest
- (ISAVPlayer)avPlayer;
- (ISRateCurveRequest)initWithTargetTime:(id *)time duration:(double)duration initialRate:(float)rate avPlayer:(id)player progressHandler:(id)handler;
- (void)_didReachTargetTime;
- (void)_stepDownRate;
- (void)_stopObservingPlayer;
- (void)dealloc;
- (void)start;
@end

@implementation ISRateCurveRequest

- (ISAVPlayer)avPlayer
{
  WeakRetained = objc_loadWeakRetained(&self->_avPlayer);

  return WeakRetained;
}

- (void)_stopObservingPlayer
{
  if (self->_boundaryObserver)
  {
    WeakRetained = objc_loadWeakRetained(&self->_avPlayer);
    [WeakRetained removeTimeObserver:self->_boundaryObserver];

    boundaryObserver = self->_boundaryObserver;
    self->_boundaryObserver = 0;
  }
}

- (void)dealloc
{
  [(ISRateCurveRequest *)self _stopObservingPlayer];
  v3.receiver = self;
  v3.super_class = ISRateCurveRequest;
  [(ISRateCurveRequest *)&v3 dealloc];
}

- (void)_didReachTargetTime
{
  if (!self->_cancelled)
  {
    self->_cancelled = 1;
    WeakRetained = objc_loadWeakRetained(&self->_avPlayer);
    [WeakRetained _setRate:0.0];

    v4 = objc_loadWeakRetained(&self->_avPlayer);
    targetTime = self->_targetTime;
    v11 = *MEMORY[0x277CC08F0];
    v12 = *(MEMORY[0x277CC08F0] + 16);
    v9 = v11;
    v10 = v12;
    [v4 seekToTime:&targetTime toleranceBefore:&v11 toleranceAfter:&v9];

    progressHandler = [(ISRateCurveRequest *)self progressHandler];

    if (progressHandler)
    {
      progressHandler2 = [(ISRateCurveRequest *)self progressHandler];
      v7 = objc_loadWeakRetained(&self->_avPlayer);
      v8 = v7;
      if (v7)
      {
        [v7 currentTime];
      }

      else
      {
        memset(&targetTime, 0, sizeof(targetTime));
      }

      (progressHandler2)[2](progressHandler2, &targetTime, 1.0);
    }
  }
}

- (void)_stepDownRate
{
  if (!self->_cancelled)
  {
    memset(&v22, 0, sizeof(v22));
    WeakRetained = objc_loadWeakRetained(&self->_avPlayer);
    v4 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained currentTime];
    }

    else
    {
      memset(&v22, 0, sizeof(v22));
    }

    memset(&v21, 0, sizeof(v21));
    lhs = self->_targetTime;
    rhs = v22;
    CMTimeSubtract(&v21, &lhs, &rhs);
    memset(&lhs, 0, sizeof(lhs));
    rhs = self->_targetTime;
    startVideoTime = self->_startVideoTime;
    CMTimeSubtract(&lhs, &rhs, &startVideoTime);
    rhs = v21;
    Seconds = CMTimeGetSeconds(&rhs);
    rhs = lhs;
    v6 = CMTimeGetSeconds(&rhs);
    progressHandler = [(ISRateCurveRequest *)self progressHandler];

    if (progressHandler)
    {
      if (Seconds / v6 <= 1.0)
      {
        v8 = Seconds / v6;
      }

      else
      {
        v8 = 1.0;
      }

      progressHandler2 = [(ISRateCurveRequest *)self progressHandler];
      v10 = progressHandler2[2];
      rhs = v22;
      v10(progressHandler2, &rhs, v8);
    }

    v11 = self->_stepIndex + 1;
    self->_stepIndex = v11;
    v12 = 0.0;
    if (v11 != 4)
    {
      v13 = +[ISPlayerSettings sharedInstance];
      [v13 vitalityEaseMinRate];
      v15 = v14;

      v12 = v15 + ((self->_initialRate - v15) * ((self->_stepIndex * -0.25) + 1.0));
    }

    v16 = objc_loadWeakRetained(&self->_avPlayer);
    *&v17 = v12;
    [v16 _setRate:v17];
  }
}

- (void)start
{
  if (!self->_cancelled)
  {
    avPlayer = [(ISRateCurveRequest *)self avPlayer];
    v4 = avPlayer;
    if (avPlayer)
    {
      memset(&v21, 0, sizeof(v21));
      [avPlayer currentTime];
      lhs = self->_targetTime;
      memset(&v20, 0, sizeof(v20));
      rhs = v21;
      CMTimeSubtract(&v20, &lhs, &rhs);
      self->_stepIndex = 0;
      v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
      v6 = -4;
      do
      {
        memset(&lhs, 0, sizeof(lhs));
        rhs = v20;
        CMTimeMultiplyByRatio(&lhs, &rhs, v6 + 5, 4);
        memset(&rhs, 0, sizeof(rhs));
        v17 = v21;
        v16 = lhs;
        CMTimeAdd(&rhs, &v17, &v16);
        v17 = rhs;
        v7 = [MEMORY[0x277CCAE60] valueWithCMTime:&v17];
        [v5 addObject:v7];
      }

      while (!__CFADD__(v6++, 1));
      *&v8 = self->_initialRate;
      [v4 _setRate:v8];
      objc_initWeak(&lhs, self);
      WeakRetained = objc_loadWeakRetained(&self->_avPlayer);
      dispatchQueue = [WeakRetained dispatchQueue];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __27__ISRateCurveRequest_start__block_invoke;
      v14[3] = &unk_279A2A3C0;
      objc_copyWeak(&v15, &lhs);
      v12 = [v4 addBoundaryTimeObserverForTimes:v5 queue:dispatchQueue usingBlock:v14];
      boundaryObserver = self->_boundaryObserver;
      self->_boundaryObserver = v12;

      objc_destroyWeak(&v15);
      objc_destroyWeak(&lhs);
    }
  }
}

void __27__ISRateCurveRequest_start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stepDownRate];
}

- (ISRateCurveRequest)initWithTargetTime:(id *)time duration:(double)duration initialRate:(float)rate avPlayer:(id)player progressHandler:(id)handler
{
  playerCopy = player;
  handlerCopy = handler;
  v20.receiver = self;
  v20.super_class = ISRateCurveRequest;
  v14 = [(ISRateCurveRequest *)&v20 init];
  v15 = v14;
  if (v14)
  {
    v16 = *&time->var0;
    *(v14 + 15) = time->var3;
    *(v14 + 104) = v16;
    *(v14 + 10) = duration;
    *(v14 + 18) = rate;
    objc_storeWeak(v14 + 11, playerCopy);
    v17 = [handlerCopy copy];
    progressHandler = v15->_progressHandler;
    v15->_progressHandler = v17;
  }

  return v15;
}

@end