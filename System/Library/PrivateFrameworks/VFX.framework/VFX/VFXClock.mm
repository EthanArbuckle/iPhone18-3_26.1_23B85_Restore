@interface VFXClock
- (VFXClock)init;
- (VFXClockTimeRange)replayLoopRange;
- (id)_scene;
- (void)_updateVFXCorePause;
- (void)_updateVFXCoreSpeedFactor;
- (void)_updateVFXCoreTime:(double)time;
- (void)_updateVFXCoreTimeStep:(double)step;
- (void)_updateVFXCoreUseFixedTimeStep:(BOOL)step;
- (void)_updateWithAbsoluteTime:(double)time usingLoopRange:(VFXClockTimeRange)range;
- (void)dealloc;
- (void)setPaused:(BOOL)paused;
- (void)setSpeed:(float)speed;
- (void)setTime:(double)time;
- (void)setTimeStep:(double)step;
- (void)setUseFixedTimeStep:(BOOL)step;
- (void)setWorld:(__CFXWorld *)world;
- (void)updateWithAbsoluteTime:(double)time;
@end

@implementation VFXClock

- (VFXClock)init
{
  v3.receiver = self;
  v3.super_class = VFXClock;
  result = [(VFXClock *)&v3 init];
  if (result)
  {
    result->_speed = 1.0;
    result->_replayLoopRange.begin = 0.0;
    result->_replayLoopRange.end = 0.0;
  }

  return result;
}

- (void)dealloc
{
  world = self->_world;
  if (world)
  {
    CFRelease(world);
    self->_world = 0;
  }

  v4.receiver = self;
  v4.super_class = VFXClock;
  [(VFXClock *)&v4 dealloc];
}

- (id)_scene
{
  result = self->_world;
  if (result)
  {
    return sub_1AF1CF878(result);
  }

  return result;
}

- (void)_updateVFXCoreSpeedFactor
{
  v4 = objc_msgSend__scene(self, a2, v2, v3);

  MEMORY[0x1EEE66B58](v4, sel_setSpeedFactor_, v5, v6);
}

- (void)_updateVFXCorePause
{
  paused = self->_paused;
  v5 = objc_msgSend__scene(self, a2, v2, v3);

  objc_msgSend_setPaused_(v5, v6, paused, v7);
}

- (void)_updateVFXCoreTime:(double)time
{
  timeCopy = time;
  v6 = objc_msgSend__scene(self, a2, v3, v4);
  *&v10 = timeCopy;

  objc_msgSend_setTime_(v6, v7, v8, v9, v10);
}

- (void)_updateVFXCoreUseFixedTimeStep:(BOOL)step
{
  stepCopy = step;
  v5 = objc_msgSend__scene(self, a2, step, v3);

  objc_msgSend_setUseFixedTimeStep_(v5, v6, stepCopy, v7);
}

- (void)_updateVFXCoreTimeStep:(double)step
{
  v6 = objc_msgSend__scene(self, a2, v3, v4);

  objc_msgSend_setTimeStep_(v6, v7, v8, v9, step);
}

- (void)setSpeed:(float)speed
{
  if (self->_speed != speed)
  {
    self->_speed = speed;
    (MEMORY[0x1EEE66B58])(self, sel__updateVFXCoreSpeedFactor);
  }
}

- (void)setPaused:(BOOL)paused
{
  if (self->_paused != paused)
  {
    self->_paused = paused;
    if (paused)
    {
      self->_wasPaused = 1;
    }

    (MEMORY[0x1EEE66B58])(self, sel__updateVFXCorePause, paused);
  }
}

- (void)updateWithAbsoluteTime:(double)time
{
  if (self->_replayLoopRange.end == self->_replayLoopRange.begin)
  {
    lastUpdateTime = self->_lastUpdateTime;
    if (lastUpdateTime < time)
    {
      if (lastUpdateTime == 0.0)
      {
        lastUpdateTime = time;
      }

      if (self->_paused)
      {
        self->_wasPaused = 1;
      }

      else if (self->_wasPaused)
      {
        self->_wasPaused = 0;
      }

      else
      {
        self->_time = self->_time + (time - lastUpdateTime) * self->_speed;
      }

      self->_lastUpdateTime = time;
    }
  }

  else
  {
    (MEMORY[0x1EEE66B58])(self, sel__updateWithAbsoluteTime_usingLoopRange_);
  }
}

- (void)_updateWithAbsoluteTime:(double)time usingLoopRange:(VFXClockTimeRange)range
{
  begin = range.begin;
  time = self->_time;
  if (time <= range.end)
  {
    if (self->_paused)
    {
      self->_wasPaused = 1;
    }

    else if (self->_wasPaused)
    {
      self->_wasPaused = 0;
    }

    else
    {
      v10 = self->_replayLoopRange.begin;
      end = self->_replayLoopRange.end;
      v11 = time + (time - self->_lastUpdateTime) * self->_speed;
      self->_time = v11;
      if (v11 <= range.end)
      {
        if (v11 < begin)
        {
          self->_time = begin;
        }
      }

      else
      {
        self->_time = begin + fmod(v11 - begin, end - v10);
      }
    }

    self->_lastUpdateTime = time;
  }

  else
  {
    paused = self->_paused;
    if (!paused)
    {
      self->_time = range.begin;
      self->_lastUpdateTime = time;
    }

    self->_wasPaused = paused;
  }
}

- (void)setWorld:(__CFXWorld *)world
{
  world = self->_world;
  if (world != world)
  {
    if (world)
    {
      CFRelease(world);
      self->_world = 0;
    }

    if (world)
    {
      v6 = CFRetain(world);
    }

    else
    {
      v6 = 0;
    }

    self->_world = v6;
  }
}

- (void)setTime:(double)time
{
  self->_time = time;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2B7328;
  v3[3] = &unk_1E7A7E248;
  v3[4] = self;
  *&v3[5] = time;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (void)setUseFixedTimeStep:(BOOL)step
{
  self->_useFixedTimeStep = step;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2B73C4;
  v3[3] = &unk_1E7A7E298;
  v3[4] = self;
  stepCopy = step;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (void)setTimeStep:(double)step
{
  self->_timeStep = step;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2B745C;
  v3[3] = &unk_1E7A7E248;
  v3[4] = self;
  *&v3[5] = step;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (VFXClockTimeRange)replayLoopRange
{
  begin = self->_replayLoopRange.begin;
  end = self->_replayLoopRange.end;
  result.end = end;
  result.begin = begin;
  return result;
}

@end