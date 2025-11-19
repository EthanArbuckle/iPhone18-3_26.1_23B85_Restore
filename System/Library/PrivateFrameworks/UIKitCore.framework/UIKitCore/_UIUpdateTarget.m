@interface _UIUpdateTarget
+ (_UIUpdateTarget)targetWithCADisplay:(uint64_t)a1;
- (_UIUpdateTarget)init;
- (uint64_t)requestPresentaionForMode:(uint64_t)a3@<X2> earliestReferenceDeadlineTime:(uint64_t)a4@<X3> earliestCommitDeadlineTime:(uint64_t *)a5@<X8>;
- (uint64_t)start;
- (uint64_t)stop;
- (uint64_t)sync;
- (uint64_t)syncedRequestedMaxFrameDuration;
- (void)dealloc;
@end

@implementation _UIUpdateTarget

- (uint64_t)sync
{
  if (result)
  {
    v1 = result;
    [*(result + 8) heartbeatRate];
    v2 = UCTimeFromSeconds();
    v3 = [*(v1 + 8) minimumFrameDuration];
    if (v2)
    {
      v4 = v3;
    }

    else
    {
      v2 = UCTimeFromSeconds();
      v4 = 1;
    }

    v5 = v2 * v4;
    if (*(v1 + 40) == v5)
    {
      return 0;
    }

    else
    {
      *(v1 + 40) = v5;
      v6 = UCTimeFromSeconds();
      v7 = v2 + 7;
      if (v2 >= 0)
      {
        v7 = v2;
      }

      if (v6 <= v7 >> 3)
      {
        v8 = v7 >> 3;
      }

      else
      {
        v8 = v6;
      }

      *(v1 + 32) = v8;
      v9 = _UIDeviceNativeUserInterfaceIdiomIgnoringClassic();
      if (v9 == 4)
      {
        v10 = 1;
      }

      else if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = _UIVariableFrameDurationEnabled();
      }

      *(v1 + 48) = v5 << v10;
      v11 = _UIMachDurationForMediaDuration(0.004);
      v12 = *(v1 + 32);
      *(v1 + 72) = v11;
      *(v1 + 80) = v5 - v12;
      kdebug_trace();
      return 1;
    }
  }

  return result;
}

- (_UIUpdateTarget)init
{
  v5.receiver = self;
  v5.super_class = _UIUpdateTarget;
  v2 = [(_UIUpdateTarget *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_displayId = [(CADisplay *)v2->_display.direct displayId];
    v3->_frameSourceActive = [(CADynamicFrameRateSource *)v3->_frameSource.direct isPaused]^ 1;
    if (_UIUpdateCycleDebugTracingCheck && _UIUpdateCycleDebugTracingCheck())
    {
      kdebug_trace();
    }

    v3->_minFrameDuration = 0;
  }

  return v3;
}

- (uint64_t)syncedRequestedMaxFrameDuration
{
  if (result)
  {
    [*(result + 8) highestLocalPreferredFrameRateRequest];
    if (v1 <= 0.0)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {

      return UCTimeFromSeconds();
    }
  }

  return result;
}

- (uint64_t)start
{
  if (result)
  {
    v1 = result;
    *(result + 28) = 1;
    if (_UIUpdateCycleDebugTracingCheck && _UIUpdateCycleDebugTracingCheck())
    {
      kdebug_trace();
    }

    v2 = *(v1 + 16);

    return [v2 setPaused:0];
  }

  return result;
}

- (uint64_t)stop
{
  if (result)
  {
    v1 = result;
    *(result + 28) = 0;
    if (_UIUpdateCycleDebugTracingCheck && _UIUpdateCycleDebugTracingCheck())
    {
      kdebug_trace();
    }

    v2 = *(v1 + 16);

    return [v2 setPaused:1];
  }

  return result;
}

- (void)dealloc
{
  direct = self->_frameSource.direct;
  self->_frameSource.direct = 0;

  v4 = self->_display.direct;
  self->_display.direct = 0;

  v5.receiver = self;
  v5.super_class = _UIUpdateTarget;
  [(_UIUpdateTarget *)&v5 dealloc];
}

+ (_UIUpdateTarget)targetWithCADisplay:(uint64_t)a1
{
  objc_opt_self();
  v3 = [_UIUpdateTarget alloc];
  if (v3)
  {
    v4 = v3;
    objc_storeStrong(&v3->_display.direct, a2);
    v5 = [objc_alloc(MEMORY[0x1E6979348]) initWithDisplay:a2];
    direct = v4->_frameSource.direct;
    v4->_frameSource.direct = v5;

    v3 = [(_UIUpdateTarget *)v4 init];
  }

  return v3;
}

- (uint64_t)requestPresentaionForMode:(uint64_t)a3@<X2> earliestReferenceDeadlineTime:(uint64_t)a4@<X3> earliestCommitDeadlineTime:(uint64_t *)a5@<X8>
{
  if (result)
  {
    v9 = result;
    v10 = *(result + 32);
    UCTimeToSeconds();
    [*(v9 + 16) commitDeadlineAfterTimestamp:?];
    result = UCTimeFromSeconds();
    v11 = result;
    if (!result)
    {
      result = mach_absolute_time();
      v12 = *(v9 + 40) + result;
      if (v12 <= a3)
      {
        v12 = a3;
      }

      if (v12 <= a4)
      {
        v11 = a4;
      }

      else
      {
        v11 = v12;
      }
    }

    v13 = v11 - *(v9 + 8 * a2 + 64);
    v14 = *(v9 + 48 + 8 * a2);
    v15 = v11 - *(v9 + 80);
    v16 = v14 - *(v9 + 48);
    *a5 = v11;
    a5[1] = v13;
    a5[2] = v15;
    a5[3] = v14 + v11;
    a5[4] = v16;
    a5[5] = v13 + v10;
    if (_UIUpdateCycleDebugTracingCheck)
    {
      result = _UIUpdateCycleDebugTracingCheck();
      if (result)
      {

        return kdebug_trace();
      }
    }
  }

  else
  {
    *(a5 + 1) = 0u;
    *(a5 + 2) = 0u;
    *a5 = 0u;
  }

  return result;
}

@end