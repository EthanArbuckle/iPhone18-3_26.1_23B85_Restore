@interface TVPProgressiveJumpingScrubber
- (TVPPlayer)player;
- (double)_nextTimeToAdvanceFromTime:(double)time;
- (void)_skipTimerFired:(id)fired;
- (void)cancelScrub;
- (void)startScrubWithRate:(double)rate;
@end

@implementation TVPProgressiveJumpingScrubber

- (void)startScrubWithRate:(double)rate
{
  WeakRetained = objc_loadWeakRetained(&self->_player);

  if (WeakRetained)
  {
    self->_skipCount = 0;
    self->_skipAdjustPeriod = 0.5;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v7 = -5.0;
    if (rate > 0.0)
    {
      v7 = 5.0;
    }

    self->_skipAdjustTime = v7;
    self->_nextSkipAdjustTime = v6;
    self->_rate = rate;
    v8 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__skipTimerFired_ selector:0 userInfo:1 repeats:0.5];
    skipTimer = self->_skipTimer;
    self->_skipTimer = v8;

    MEMORY[0x2821F96F8]();
  }
}

- (void)cancelScrub
{
  [(NSTimer *)self->_skipTimer invalidate];
  skipTimer = self->_skipTimer;
  self->_skipTimer = 0;
}

- (double)_nextTimeToAdvanceFromTime:(double)time
{
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  nextSkipAdjustTime = self->_nextSkipAdjustTime;
  if (v6 >= nextSkipAdjustTime)
  {
    skipAdjustPeriod = self->_skipAdjustPeriod;
    v8 = nextSkipAdjustTime + skipAdjustPeriod;
    v9 = self->_skipCount + 1;
    self->_skipCount = v9;
    v10 = skipAdjustPeriod + -0.0333333333;
    if (v10 < 0.25)
    {
      v10 = 0.25;
    }

    self->_nextSkipAdjustTime = v8;
    self->_skipAdjustPeriod = v10;
    if (v9 >= 0xB)
    {
      v9 = 10;
      self->_skipCount = 10;
    }

    if (self->_skipAdjustTime + self->_skipAdjustTime * (v9 * v9) * 3.0 / 100.0 + time >= 0.0)
    {
      return self->_skipAdjustTime + self->_skipAdjustTime * (v9 * v9) * 3.0 / 100.0 + time;
    }

    else
    {
      return -1.0;
    }
  }

  return time;
}

- (void)_skipTimerFired:(id)fired
{
  WeakRetained = objc_loadWeakRetained(&self->_player);

  if (!WeakRetained)
  {
LABEL_12:

    [(TVPProgressiveJumpingScrubber *)self cancelScrub];
    return;
  }

  v5 = objc_loadWeakRetained(&self->_player);
  [v5 elapsedTime];
  [(TVPProgressiveJumpingScrubber *)self _nextTimeToAdvanceFromTime:?];
  v7 = v6;

  v8 = objc_loadWeakRetained(&self->_player);
  [v8 duration];
  v10 = v9;

  if (v7 == -1.0 || (v10 != 3.40282347e38 ? (v11 = v7 < v10) : (v11 = 1), !v11))
  {
    v12 = objc_loadWeakRetained(&self->_player);
    [v12 playerDidHitBeginningOrEnd];

    goto LABEL_12;
  }

  v13 = objc_loadWeakRetained(&self->_player);
  [v13 setElapsedTime:v7];
}

- (TVPPlayer)player
{
  WeakRetained = objc_loadWeakRetained(&self->_player);

  return WeakRetained;
}

@end