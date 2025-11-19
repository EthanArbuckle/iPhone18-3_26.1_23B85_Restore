@interface PUTimedAnimationGroup
- (PUTimedAnimationGroup)init;
- (double)elapsedTime;
- (void)_update;
- (void)pauseAnimations;
- (void)resumeAnimations;
- (void)setElapsedTime:(double)a3;
@end

@implementation PUTimedAnimationGroup

- (void)_update
{
  v3 = [(PUAnimationGroup *)self isPaused];
  v4 = v3;
  if (self->_areAnimationsPaused != v3 || [(PUAnimationGroup *)self isPaused])
  {
    self->_areAnimationsPaused = v4;
    [(PUTimedAnimationGroup *)self updateAnimations];

    [(PUAnimationGroup *)self completeIfNeeded];
  }
}

- (void)resumeAnimations
{
  v4.receiver = self;
  v4.super_class = PUTimedAnimationGroup;
  [(PUAnimationGroup *)&v4 resumeAnimations];
  [(PUTimedAnimationGroup *)self currentTime];
  self->_beginTime = v3 - self->_pausedElapsedTime;
  [(PUTimedAnimationGroup *)self _update];
}

- (void)pauseAnimations
{
  v6.receiver = self;
  v6.super_class = PUTimedAnimationGroup;
  [(PUAnimationGroup *)&v6 pauseAnimations];
  [(PUTimedAnimationGroup *)self currentTime];
  v4 = v3;
  [(PUTimedAnimationGroup *)self beginTime];
  self->_pausedElapsedTime = v4 - v5;
  [(PUTimedAnimationGroup *)self _update];
}

- (void)setElapsedTime:(double)a3
{
  if (![(PUAnimationGroup *)self isPaused])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PUTimedAnimationGroup.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"[self isPaused]"}];
  }

  if (self->_pausedElapsedTime != a3)
  {
    self->_pausedElapsedTime = a3;

    [(PUTimedAnimationGroup *)self _update];
  }
}

- (double)elapsedTime
{
  if ([(PUAnimationGroup *)self isPaused])
  {
    return self->_pausedElapsedTime;
  }

  [(PUTimedAnimationGroup *)self currentTime];
  v5 = v4;
  [(PUTimedAnimationGroup *)self beginTime];
  return v5 - v6;
}

- (PUTimedAnimationGroup)init
{
  v6.receiver = self;
  v6.super_class = PUTimedAnimationGroup;
  v2 = [(PUTimedAnimationGroup *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(PUTimedAnimationGroup *)v2 currentTime];
    v3->_beginTime = v4;
  }

  return v3;
}

@end