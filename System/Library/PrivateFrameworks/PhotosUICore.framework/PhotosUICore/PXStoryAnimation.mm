@interface PXStoryAnimation
- (NSString)shortDescription;
- (PXStoryAnimation)initWithIdentifier:(id)identifier;
- (id)description;
- (void)_invalidateTime;
- (void)_updateTime;
- (void)didPerformChanges;
- (void)performChanges:(id)changes;
- (void)setElapsedTime:(id *)time;
- (void)setIsPaused:(BOOL)paused;
- (void)setIsStopped:(BOOL)stopped;
- (void)setLastElapsedTime:(id *)time;
- (void)setTime:(id *)time;
@end

@implementation PXStoryAnimation

- (void)setLastElapsedTime:(id *)time
{
  var3 = time->var3;
  *&self->_lastElapsedTime.value = *&time->var0;
  self->_lastElapsedTime.epoch = var3;
}

- (void)_updateTime
{
  memset(&v22[2], 0, sizeof(CMTime));
  [(PXStoryAnimation *)self elapsedTime];
  if (0 >> 96)
  {
    memset(&v22[1], 0, sizeof(CMTime));
    [(PXStoryAnimation *)self time];
    [(PXStoryAnimation *)self velocity];
    v4 = v3;
    if ([(PXStoryAnimation *)self isPaused])
    {
      [(PXStoryAnimation *)self pauseDeceleration];
      v6 = -v5;
    }

    else
    {
      [(PXStoryAnimation *)self resumeAcceleration];
      v6 = v7;
    }

    [(PXStoryAnimation *)self pausedVelocity];
    v9 = v8;
    if ((v22[1].flags & 1) == 0)
    {
      v22[1].epoch = 0;
      *&v22[1].value = PXStoryTimeZero;
      if (v6 < 0.0)
      {
        v10 = v8;
      }

      else
      {
        v10 = 1.0;
      }

LABEL_30:
      lhs = v22[1];
      [(PXStoryAnimation *)self setTime:&lhs];
      [(PXStoryAnimation *)self setVelocity:v10];
      lhs = v22[2];
      [(PXStoryAnimation *)self setLastElapsedTime:&lhs];
      return;
    }

    memset(v22, 0, 24);
    [(PXStoryAnimation *)self lastElapsedTime];
    memset(&v21, 0, sizeof(v21));
    if (0 >> 96)
    {
      lhs = v22[2];
      rhs = v22[0];
      CMTimeSubtract(&v21, &lhs, &rhs);
    }

    else
    {
      v21.epoch = 0;
      *&v21.value = PXStoryTimeZero;
    }

    if (v6 <= 0.0)
    {
      v12 = 0.0;
      if (v6 >= 0.0)
      {
LABEL_17:
        if (v12 >= 0.0)
        {
          v13 = v12;
        }

        else
        {
          v13 = 0.0;
        }

        if (v13 == 0.0 && (v10 = 1.0, v4 == 1.0))
        {
          lhs = v22[1];
          rhs = v21;
          CMTimeAdd(&v20, &lhs, &rhs);
          *&v22[1].value = *&v20.value;
          epoch = v20.epoch;
        }

        else
        {
          lhs = v22[1];
          Seconds = CMTimeGetSeconds(&lhs);
          lhs = v21;
          v16 = CMTimeGetSeconds(&lhs);
          if (v13 >= v16)
          {
            v17 = v16;
          }

          else
          {
            v17 = v13;
          }

          v18 = Seconds + (v4 + v6 * 0.5 * v17) * v17;
          v19 = v4 + v6 * v17;
          if (v19 < v9)
          {
            v19 = v9;
          }

          v10 = fmin(v19, 1.0);
          CMTimeMakeWithSeconds(&lhs, v18 + v10 * (v16 - v17), 600);
          *&v22[1].value = *&lhs.value;
          epoch = lhs.epoch;
        }

        v22[1].epoch = epoch;
        goto LABEL_30;
      }

      v11 = v9 - v4;
    }

    else
    {
      v11 = 1.0 - v4;
    }

    v12 = v11 / v6;
    goto LABEL_17;
  }
}

- (void)_invalidateTime
{
  updater = [(PXStoryAnimation *)self updater];
  [updater setNeedsUpdateOf:sel__updateTime];
}

- (NSString)shortDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v4 mutableCopy];

  [v5 px_removePrefix:@"PXStory"];
  [v5 px_removeSuffix:@"Animation"];
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  [(PXStoryAnimation *)self time];
  time = v9;
  v7 = [v6 initWithFormat:@"%@: %0.1fs", v5, CMTimeGetSeconds(&time)];

  return v7;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(PXStoryAnimation *)self time];
  time = v12;
  Seconds = CMTimeGetSeconds(&time);
  isStopped = [(PXStoryAnimation *)self isStopped];
  v8 = @"NO";
  if (isStopped)
  {
    v8 = @"YES";
  }

  v9 = v8;
  v10 = [v3 initWithFormat:@"<%@: %p; t=%0.1f, stopped = %@>", v5, self, *&Seconds, v9];

  return v10;
}

- (void)setIsStopped:(BOOL)stopped
{
  if (self->_isStopped != stopped)
  {
    self->_isStopped = stopped;
    [(PXStoryAnimation *)self signalChange:2];
    if (self->_isStopped)
    {

      [(PXStoryAnimation *)self wasStopped];
    }
  }
}

- (void)setTime:(id *)time
{
  p_time = &self->_time;
  time1 = *time;
  time = self->_time;
  if (CMTimeCompare(&time1, &time))
  {
    v6 = *&time->var0;
    p_time->epoch = time->var3;
    *&p_time->value = v6;
    [(PXStoryAnimation *)self signalChange:1];
    [(PXStoryAnimation *)self timeDidChange];
  }
}

- (void)setIsPaused:(BOOL)paused
{
  if (self->_isPaused != paused)
  {
    self->_isPaused = paused;
    [(PXStoryAnimation *)self _invalidateTime];
  }
}

- (void)setElapsedTime:(id *)time
{
  p_elapsedTime = &self->_elapsedTime;
  time1 = *time;
  elapsedTime = self->_elapsedTime;
  if (CMTimeCompare(&time1, &elapsedTime))
  {
    v6 = *&time->var0;
    p_elapsedTime->epoch = time->var3;
    *&p_elapsedTime->value = v6;
    [(PXStoryAnimation *)self _invalidateTime];
  }
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXStoryAnimation;
  [(PXStoryAnimation *)&v4 didPerformChanges];
  updater = [(PXStoryAnimation *)self updater];
  [updater updateIfNeeded];
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXStoryAnimation;
  [(PXStoryAnimation *)&v3 performChanges:changes];
}

- (PXStoryAnimation)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = PXStoryAnimation;
  v6 = [(PXStoryAnimation *)&v16 init];
  if (v6)
  {
    v7 = [identifierCopy copy];
    uUIDString = v7;
    if (!v7)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
    }

    objc_storeStrong(&v6->_identifier, uUIDString);
    if (!v7)
    {
    }

    *&v6->_elapsedTime.timescale = 0;
    v6->_elapsedTime.epoch = 0;
    v6->_elapsedTime.value = 0;
    *&v6->_lastElapsedTime.timescale = 0;
    v6->_lastElapsedTime.epoch = 0;
    v6->_lastElapsedTime.value = 0;
    *&v6->_time.timescale = 0;
    v6->_time.epoch = 0;
    v6->_time.value = 0;
    v6->_velocity = 1.0;
    v6->_canBePaused = 1;
    v9 = +[PXStorySettings sharedInstance];
    [v9 movementAnimationPauseDeceleration];
    v6->_pauseDeceleration = v10;
    [v9 movementAnimationPausedVelocity];
    v6->_pausedVelocity = v11;
    [v9 movementAnimationResumeAcceleration];
    v6->_resumeAcceleration = v12;
    v13 = [[off_1E7721940 alloc] initWithTarget:v6 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v6->_updater;
    v6->_updater = v13;

    [(PXUpdater *)v6->_updater addUpdateSelector:sel__updateTime];
  }

  return v6;
}

@end