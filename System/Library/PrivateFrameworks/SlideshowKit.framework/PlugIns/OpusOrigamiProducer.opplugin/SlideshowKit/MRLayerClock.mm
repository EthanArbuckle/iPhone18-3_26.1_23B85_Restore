@interface MRLayerClock
- (BOOL)isPaused;
- (BOOL)selfIsPaused;
- (MRLayerClock)initWithPlug:(id)a3;
- (double)containerTime;
- (void)pauseAfter:(double)a3;
- (void)pauseOnNextUpdate;
- (void)reactivateWithPlug:(id)a3;
- (void)resumeAfter:(double)a3;
- (void)resumeOnNextUpdate;
- (void)setContainerTime:(double)a3;
- (void)setFullDuration:(double)a3;
- (void)setParentIsPaused:(BOOL)a3;
- (void)syncToPlug:(id)a3;
- (void)updateForExternalTime:(double)externalTimeForPauseInversion;
@end

@implementation MRLayerClock

- (MRLayerClock)initWithPlug:(id)a3
{
  v6.receiver = self;
  v6.super_class = MRLayerClock;
  v4 = [(MRLayerClock *)&v6 init];
  if (v4)
  {
    [a3 container];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || ([a3 container], objc_opt_class(), (objc_opt_isKindOfClass()) && ((objc_msgSend(objc_msgSend(objc_msgSend(a3, "container"), "effectID"), "isEqualToString:", @"ReflectionsBackground") & 1) != 0 || objc_msgSend(objc_msgSend(objc_msgSend(a3, "container"), "effectID"), "isEqualToString:", @"VignettingOverlay")))
    {
      v4->_flags |= 0x80uLL;
    }

    [(MRLayerClock *)v4 syncToPlug:a3];
    v4->_externalTimeForPauseInversion = -1.0e10;
  }

  return v4;
}

- (void)reactivateWithPlug:(id)a3
{
  [(MRLayerClock *)self syncToPlug:?];
  flags = self->_flags;
  if ((flags & 0x21) == 0)
  {
    self->_flags = flags | 1;
    v6 = [a3 startsPaused];
    flags = self->_flags;
    if (!v6)
    {
      flags |= 0x20uLL;
    }
  }

  self->_containerTime = -1.0e10;
  *&self->_internalTimeOffset = xmmword_163840;
  self->_flags = flags | 4;
}

- (void)syncToPlug:(id)a3
{
  [a3 phaseInDuration];
  self->_phaseInDuration = v5;
  if ((self->_flags & 0x80) != 0)
  {
    v6 = 1.0e10;
  }

  else
  {
    [a3 loopDuration];
  }

  self->_loopDuration = v6;
  [a3 phaseOutDuration];
  self->_phaseOutDuration = v7;
  [a3 numberOfLoops];
  self->_numberOfLoops = v8;
  self->_containerDuration = self->_phaseInDuration + self->_loopDuration + self->_phaseOutDuration;
}

- (void)setFullDuration:(double)a3
{
  if ((self->_flags & 0x80) == 0)
  {
    phaseInDuration = self->_phaseInDuration;
    if (phaseInDuration <= a3)
    {
      phaseOutDuration = self->_phaseOutDuration;
      if (phaseInDuration + phaseOutDuration <= a3)
      {
        if (self->_numberOfLoops <= 1.0 || (loopDuration = self->_loopDuration, loopDuration <= 0.0))
        {
          loopDuration = a3 - phaseInDuration - phaseOutDuration;
          self->_loopDuration = loopDuration;
          self->_numberOfLoops = 1.0;
        }

        else
        {
          self->_numberOfLoops = (a3 - phaseInDuration - phaseOutDuration) / loopDuration;
        }
      }

      else
      {
        self->_loopDuration = 0.0;
        phaseOutDuration = a3 - phaseInDuration;
        self->_phaseOutDuration = a3 - phaseInDuration;
        loopDuration = 0.0;
      }
    }

    else
    {
      self->_phaseInDuration = a3;
      phaseOutDuration = 0.0;
      loopDuration = 0.0;
      phaseInDuration = a3;
      self->_loopDuration = 0.0;
      self->_phaseOutDuration = 0.0;
    }

    self->_containerDuration = phaseInDuration + loopDuration + phaseOutDuration;
  }
}

- (void)updateForExternalTime:(double)externalTimeForPauseInversion
{
  self->_externalTime = externalTimeForPauseInversion;
  phaseInDuration = self->_phaseInDuration;
  loopDuration = self->_loopDuration;
  self->_containerDuration = phaseInDuration + loopDuration + self->_phaseOutDuration;
  internalTimeOffset = self->_internalTimeOffset;
  containerTime = self->_containerTime;
  if (externalTimeForPauseInversion < 0.0)
  {
    self->_internalTimeOffset = 0.0;
    self->_currentLoopIndex = 0;
    if (internalTimeOffset != -1.0e10)
    {
      self->_flags = self->_flags & 0xFFFFFFFFFFFFFFFDLL | (2 * (containerTime > externalTimeForPauseInversion));
    }

    self->_containerTime = externalTimeForPauseInversion;
    return;
  }

  flags = self->_flags;
  v9 = self->_internalTimeOffset;
  if (internalTimeOffset == -1.0e10)
  {
    v9 = externalTimeForPauseInversion - containerTime;
    self->_internalTimeOffset = externalTimeForPauseInversion - containerTime;
    self->_currentLoopIndex = 0;
  }

  if ((flags & 0x20) != 0 && (v10 = self->_externalTimeForPauseInversion, v10 <= externalTimeForPauseInversion))
  {
    if ((flags & 1) == 0 || internalTimeOffset == -1.0e10 || containerTime == -1.0e10)
    {
      v12 = flags ^ 1;
      v13 = flags & 0xFFFFFFFFFFFFFFDFLL ^ 1;
      if (flags)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10 >= 0.0;
        if (v10 >= 0.0 && internalTimeOffset != -1.0e10)
        {
          externalTimeForPauseInversion = self->_externalTimeForPauseInversion;
        }
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v9 = externalTimeForPauseInversion - (containerTime + self->_currentLoopIndex * loopDuration);
      self->_internalTimeOffset = v9;
      v13 = flags & 0xFFFFFFFFFFFFFFDELL;
    }

    self->_externalTimeForPauseInversion = -1.0e10;
    flags = v13;
  }

  else
  {
    v11 = 0;
    v12 = flags;
  }

  if (internalTimeOffset == -1.0e10)
  {
    if (containerTime != -1.0e10)
    {
      goto LABEL_41;
    }
  }

  else if (!v11 && (v12 & 1) != 0 && containerTime != -1.0e10)
  {
    flags &= ~2uLL;
    goto LABEL_41;
  }

  v15 = externalTimeForPauseInversion - v9;
  if (v15 <= phaseInDuration)
  {
    v19 = 0;
  }

  else
  {
    numberOfLoops = self->_numberOfLoops;
    if (v15 >= phaseInDuration + loopDuration * numberOfLoops)
    {
      v15 = v15 - loopDuration * (numberOfLoops + -1.0);
      v19 = (ceil(numberOfLoops) + -1.0);
    }

    else
    {
      if (loopDuration <= 0.0)
      {
        v19 = 0;
        v18 = 0.0;
      }

      else
      {
        v17 = v15 - phaseInDuration;
        v18 = fmod(v15 - phaseInDuration, loopDuration);
        v19 = vcvtmd_s64_f64(v17 / loopDuration);
      }

      v15 = phaseInDuration + v18;
    }
  }

  self->_currentLoopIndex = v19;
  v20 = flags & 0xFFFFFFFFFFFFFFFDLL;
  if (v15 < containerTime)
  {
    v20 = flags | 2;
  }

  if (internalTimeOffset != -1.0e10)
  {
    flags = v20;
  }

  self->_containerTime = v15;
  containerTime = v15;
LABEL_41:
  v21 = flags & 0xFFFFFFFFFFFFFFE7;
  self->_flags = flags & 0xFFFFFFFFFFFFFFE7;
  if (containerTime >= 0.0 && (flags & 4) != 0)
  {
    if (containerTime >= phaseInDuration)
    {
      if (containerTime < phaseInDuration + loopDuration)
      {
        return;
      }

      v23 = v21 | 0x10;
    }

    else
    {
      v23 = v21 | 8;
    }

    self->_flags = v23;
  }
}

- (void)resumeOnNextUpdate
{
  flags = self->_flags;
  if (flags)
  {
    v3 = flags | 0x20;
  }

  else
  {
    v3 = flags & 0xFFFFFFFFFFFFFFDELL;
  }

  self->_externalTimeForPauseInversion = -1.0e10;
  self->_flags = v3;
}

- (void)pauseOnNextUpdate
{
  v2 = (self->_flags & 0xFFFFFFFFFFFFFFDFLL | (32 * (self->_flags & 1))) ^ 0x20;
  self->_externalTimeForPauseInversion = -1.0e10;
  self->_flags = v2;
}

- (void)resumeAfter:(double)a3
{
  flags = self->_flags;
  if (flags)
  {
    v4 = flags | 0x20;
    v5 = self->_externalTime + a3;
  }

  else
  {
    v4 = flags & 0xFFFFFFFFFFFFFFDELL;
    v5 = -1.0e10;
  }

  self->_flags = v4;
  self->_externalTimeForPauseInversion = v5;
}

- (void)pauseAfter:(double)a3
{
  flags = self->_flags;
  if (flags)
  {
    v4 = flags & 0xFFFFFFFFFFFFFFDFLL;
    v5 = -1.0e10;
  }

  else
  {
    v4 = flags | 0x20;
    v5 = self->_externalTime + a3;
  }

  self->_flags = v4;
  self->_externalTimeForPauseInversion = v5;
}

- (void)setContainerTime:(double)a3
{
  if (self->_containerTime > a3)
  {
    v3 = self->_flags | 2;
LABEL_5:
    self->_flags = v3;
    goto LABEL_6;
  }

  if (self->_internalTimeOffset != -1.0e10)
  {
    v3 = self->_flags & 0xFFFFFFFFFFFFFFFDLL;
    goto LABEL_5;
  }

LABEL_6:
  self->_containerTime = a3;
  self->_internalTimeOffset = -1.0e10;
}

- (void)setParentIsPaused:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFFFFFFFFFFBFLL | v3;
}

- (BOOL)isPaused
{
  flags = self->_flags;
  v3 = (flags & 0x20) != 0 && self->_externalTimeForPauseInversion <= self->_externalTime;
  v4 = (flags >> 6) & 1;
  return (self->_flags & 1) != v3 || v4;
}

- (BOOL)selfIsPaused
{
  flags = self->_flags;
  v3 = (flags & 0x20) != 0 && self->_externalTimeForPauseInversion <= self->_externalTime;
  return (flags & 1) != v3;
}

- (double)containerTime
{
  result = self->_containerTime;
  if (result >= self->_containerDuration + -0.001)
  {
    return self->_containerDuration + -0.001;
  }

  return result;
}

@end