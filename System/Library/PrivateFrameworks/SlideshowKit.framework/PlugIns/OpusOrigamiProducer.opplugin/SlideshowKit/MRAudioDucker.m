@interface MRAudioDucker
- (MRAudioDucker)init;
- (double)currentDuckLevel;
@end

@implementation MRAudioDucker

- (MRAudioDucker)init
{
  v3.receiver = self;
  v3.super_class = MRAudioDucker;
  result = [(MRAudioDucker *)&v3 init];
  if (result)
  {
    *&result->_duckInTime = vdupq_n_s64(0xC08F400000000000);
  }

  return result;
}

- (double)currentDuckLevel
{
  duckInDuration = self->_duckInDuration;
  duckInTime = self->_duckInTime;
  time = self->_time;
  if (duckInDuration <= 0.0)
  {
    if (duckInTime >= -10.0)
    {
      v7 = time - duckInTime;
    }

    else
    {
      v7 = self->_time;
    }

    v8 = v7 < 0.0;
    v6 = 0.0;
    if (!v8)
    {
      v6 = 1.0;
    }
  }

  else
  {
    if (duckInTime >= -10.0)
    {
      v5 = time - duckInTime;
    }

    else
    {
      v5 = duckInDuration + time;
    }

    v6 = v5 / duckInDuration;
  }

  duckOutDuration = self->_duckOutDuration;
  duckOutTime = self->_duckOutTime;
  if (duckOutDuration <= 0.0)
  {
    if (duckOutTime >= -10.0)
    {
      duckOutDuration = self->_duckOutTime;
    }

    v8 = time < duckOutDuration;
    v12 = 0.0;
    if (v8)
    {
      v12 = 1.0;
    }
  }

  else
  {
    parentDuration = self->_parentDuration;
    if (parentDuration >= self->_duration)
    {
      parentDuration = self->_duration;
    }

    if (duckOutTime < -10.0)
    {
      duckOutTime = parentDuration;
    }

    v12 = (duckOutDuration + duckOutTime - time) / duckOutDuration;
  }

  v13 = fmin(v6, 1.0);
  if (v12 >= v13)
  {
    v12 = v13;
  }

  if (v12 < 0.0)
  {
    v12 = 0.0;
  }

  return 1.0 - (1.0 - self->_duckLevel) * v12;
}

@end