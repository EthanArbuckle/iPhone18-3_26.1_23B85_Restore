@interface VFXClock
- (VFXClock)init;
- (VFXClockTimeRange)replayLoopRange;
- (id)_scene;
- (void)_updateVFXCorePause;
- (void)_updateVFXCoreSpeedFactor;
- (void)_updateVFXCoreTime:(double)a3;
- (void)_updateVFXCoreTimeStep:(double)a3;
- (void)_updateVFXCoreUseFixedTimeStep:(BOOL)a3;
- (void)_updateWithAbsoluteTime:(double)a3 usingLoopRange:(VFXClockTimeRange)a4;
- (void)dealloc;
- (void)setPaused:(BOOL)a3;
- (void)setSpeed:(float)a3;
- (void)setTime:(double)a3;
- (void)setTimeStep:(double)a3;
- (void)setUseFixedTimeStep:(BOOL)a3;
- (void)setWorld:(__CFXWorld *)a3;
- (void)updateWithAbsoluteTime:(double)a3;
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

- (void)_updateVFXCoreTime:(double)a3
{
  v5 = a3;
  v6 = objc_msgSend__scene(self, a2, v3, v4);
  *&v10 = v5;

  objc_msgSend_setTime_(v6, v7, v8, v9, v10);
}

- (void)_updateVFXCoreUseFixedTimeStep:(BOOL)a3
{
  v4 = a3;
  v5 = objc_msgSend__scene(self, a2, a3, v3);

  objc_msgSend_setUseFixedTimeStep_(v5, v6, v4, v7);
}

- (void)_updateVFXCoreTimeStep:(double)a3
{
  v6 = objc_msgSend__scene(self, a2, v3, v4);

  objc_msgSend_setTimeStep_(v6, v7, v8, v9, a3);
}

- (void)setSpeed:(float)a3
{
  if (self->_speed != a3)
  {
    self->_speed = a3;
    (MEMORY[0x1EEE66B58])(self, sel__updateVFXCoreSpeedFactor);
  }
}

- (void)setPaused:(BOOL)a3
{
  if (self->_paused != a3)
  {
    self->_paused = a3;
    if (a3)
    {
      self->_wasPaused = 1;
    }

    (MEMORY[0x1EEE66B58])(self, sel__updateVFXCorePause, a3);
  }
}

- (void)updateWithAbsoluteTime:(double)a3
{
  if (self->_replayLoopRange.end == self->_replayLoopRange.begin)
  {
    lastUpdateTime = self->_lastUpdateTime;
    if (lastUpdateTime < a3)
    {
      if (lastUpdateTime == 0.0)
      {
        lastUpdateTime = a3;
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
        self->_time = self->_time + (a3 - lastUpdateTime) * self->_speed;
      }

      self->_lastUpdateTime = a3;
    }
  }

  else
  {
    (MEMORY[0x1EEE66B58])(self, sel__updateWithAbsoluteTime_usingLoopRange_);
  }
}

- (void)_updateWithAbsoluteTime:(double)a3 usingLoopRange:(VFXClockTimeRange)a4
{
  begin = a4.begin;
  time = self->_time;
  if (time <= a4.end)
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
      v11 = time + (a3 - self->_lastUpdateTime) * self->_speed;
      self->_time = v11;
      if (v11 <= a4.end)
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

    self->_lastUpdateTime = a3;
  }

  else
  {
    paused = self->_paused;
    if (!paused)
    {
      self->_time = a4.begin;
      self->_lastUpdateTime = a3;
    }

    self->_wasPaused = paused;
  }
}

- (void)setWorld:(__CFXWorld *)a3
{
  world = self->_world;
  if (world != a3)
  {
    if (world)
    {
      CFRelease(world);
      self->_world = 0;
    }

    if (a3)
    {
      v6 = CFRetain(a3);
    }

    else
    {
      v6 = 0;
    }

    self->_world = v6;
  }
}

- (void)setTime:(double)a3
{
  self->_time = a3;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2B7328;
  v3[3] = &unk_1E7A7E248;
  v3[4] = self;
  *&v3[5] = a3;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (void)setUseFixedTimeStep:(BOOL)a3
{
  self->_useFixedTimeStep = a3;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2B73C4;
  v3[3] = &unk_1E7A7E298;
  v3[4] = self;
  v4 = a3;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (void)setTimeStep:(double)a3
{
  self->_timeStep = a3;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2B745C;
  v3[3] = &unk_1E7A7E248;
  v3[4] = self;
  *&v3[5] = a3;
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