@interface ISAnimatedImagePlayer
- (BOOL)_anyDestinationIsReady;
- (BOOL)_shouldAnimate;
- (ISAnimatedImagePlayer)initWithAnimatedImage:(id)a3;
- (void)_notifyDestinationsOfAnimationEnd;
- (void)_notifyDestinationsOfAnimationStart;
- (void)_notifyDestinationsOfFrameChange;
- (void)_resetAnimationState;
- (void)_seekToBeginning;
- (void)_setCurrentFrame:(CGImage *)a3;
- (void)animationTimerFired:(double)a3;
- (void)dealloc;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)registerDestination:(id)a3;
- (void)setDisplayedFrameIndex:(unint64_t)a3;
- (void)setPlaying:(BOOL)a3;
- (void)unregisterDestination:(id)a3;
- (void)updateAnimation;
@end

@implementation ISAnimatedImagePlayer

- (void)animationTimerFired:(double)a3
{
  if ([(ISAnimatedImagePlayer *)self _shouldAnimate])
  {
    if (!self->_hasStartedAnimating)
    {
      self->_timeAccumulator = 0.0;
      self->_previousFrameTime = a3;
      self->_hasStartedAnimating = 1;
    }

    [(PFAnimatedImage *)self->_image frameDelayAtIndex:self->_displayedFrameIndex];
    v6 = v5;
    v7 = [(PFAnimatedImage *)self->_image frameCache];
    v8 = [v7 frameAtIndexIfReady:self->_displayedFrameIndex];

    if (v8)
    {
      [(ISAnimatedImagePlayer *)self _setCurrentFrame:v8];
      timeAccumulator = self->_timeAccumulator + a3 - self->_previousFrameTime;
      self->_timeAccumulator = timeAccumulator;
      self->_previousFrameTime = a3;
      if (timeAccumulator >= fmax(v6 + 1.0, 5.0))
      {
        self->_timeAccumulator = 0.0;
        timeAccumulator = 0.0;
      }

      if (timeAccumulator >= v6)
      {
        v10 = MEMORY[0x277D85CD0];
        do
        {
          v11 = timeAccumulator - v6;
          if (!self->_allowFrameDrops)
          {
            v11 = 0.0;
          }

          self->_timeAccumulator = v11;
          v12 = self->_displayedFrameIndex + 1;
          self->_displayedFrameIndex = v12;
          if (v12 >= [(PFAnimatedImage *)self->_image frameCount])
          {
            self->_displayedFrameIndex = 0;
            if (!self->_infiniteLoop)
            {
              v13 = self->_remainingLoopCount - 1;
              self->_remainingLoopCount = v13;
              if (!v13)
              {
                self->_hasFinishedAnimating = 1;
                v14 = ISGetLog();
                if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_25E667000, v14, OS_LOG_TYPE_INFO, "ISAnimatedImagePlayer: Reached end of loop. Stopping", buf, 2u);
                }

                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __45__ISAnimatedImagePlayer_animationTimerFired___block_invoke;
                block[3] = &unk_279A2A180;
                block[4] = self;
                dispatch_async(v10, block);
              }
            }
          }

          timeAccumulator = self->_timeAccumulator;
        }

        while (timeAccumulator >= v6);
      }
    }

    else
    {
      v15 = ISGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_25E667000, v15, OS_LOG_TYPE_DEBUG, "ISAnimatedImagePlayer: Dropped a frame", buf, 2u);
      }
    }
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if (a4)
  {
    [a3 timestamp];

    [(ISAnimatedImagePlayer *)self animationTimerFired:?];
  }
}

- (void)updateAnimation
{
  v3 = [(ISAnimatedImagePlayer *)self _shouldAnimate];
  timer = self->_timer;
  if (v3)
  {
    if (!timer)
    {
      v5 = +[ISAnimatedImageTimer sharedTimer];
      v6 = self->_timer;
      self->_timer = v5;

      [(ISObservable *)self->_timer registerChangeObserver:self context:0];

      [(ISAnimatedImagePlayer *)self _notifyDestinationsOfAnimationStart];
    }
  }

  else if (timer)
  {
    [(ISObservable *)timer unregisterChangeObserver:self context:0];
    v7 = self->_timer;
    self->_timer = 0;

    [(ISAnimatedImagePlayer *)self _resetAnimationState];

    [(ISAnimatedImagePlayer *)self _notifyDestinationsOfAnimationEnd];
  }
}

- (void)_resetAnimationState
{
  *&self->_hasStartedAnimating = 0;
  self->_timeAccumulator = 0.0;
  self->_infiniteLoop = [(PFAnimatedImage *)self->_image loopCount]== 0;
  self->_remainingLoopCount = [(PFAnimatedImage *)self->_image loopCount];
}

- (BOOL)_shouldAnimate
{
  image = self->_image;
  if (!image)
  {
    return 0;
  }

  v4 = [(PFAnimatedImage *)image frameCount];
  v5 = self->_playing && v4 >= 2;
  if (!v5 || self->_hasFinishedAnimating)
  {
    return 0;
  }

  return [(ISAnimatedImagePlayer *)self _anyDestinationIsReady];
}

- (void)setDisplayedFrameIndex:(unint64_t)a3
{
  if (self->_displayedFrameIndex != a3)
  {
    self->_displayedFrameIndex = a3;
    v5 = [(PFAnimatedImage *)self->_image frameCache];
    -[ISAnimatedImagePlayer _setCurrentFrame:](self, "_setCurrentFrame:", [v5 frameAtIndex:self->_displayedFrameIndex]);
    [(ISAnimatedImagePlayer *)self _resetAnimationState];
  }
}

- (void)setPlaying:(BOOL)a3
{
  if (self->_playing != a3)
  {
    self->_playing = a3;
    [(ISAnimatedImagePlayer *)self _resetAnimationState];

    [(ISAnimatedImagePlayer *)self updateAnimation];
  }
}

- (void)_setCurrentFrame:(CGImage *)a3
{
  if (self->_currentImage != a3)
  {
    CGImageRetain(a3);
    CGImageRelease(self->_currentImage);
    self->_currentImage = a3;

    [(ISAnimatedImagePlayer *)self _notifyDestinationsOfFrameChange];
  }
}

- (void)_seekToBeginning
{
  image = self->_image;
  if (!image)
  {
LABEL_4:
    v5 = [(PFAnimatedImage *)image frameCache];
    self->_displayedFrameIndex = 0;
    -[ISAnimatedImagePlayer _setCurrentFrame:](self, "_setCurrentFrame:", [v5 frameAtIndex:0]);
    [(ISAnimatedImagePlayer *)self _resetAnimationState];

    return;
  }

  if ([(PFAnimatedImage *)image frameCount])
  {
    image = self->_image;
    goto LABEL_4;
  }

  v4 = ISGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_25E667000, v4, OS_LOG_TYPE_ERROR, "ISAnimatedImagePlayer: Attempted to seek an empty PFAnimatedImage to the beginning", buf, 2u);
  }
}

- (BOOL)_anyDestinationIsReady
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_weakDestinations;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v11 + 1) + 8 * i) animatedImagePlayerIsReadyToDisplay:{self, v11}])
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_notifyDestinationsOfAnimationEnd
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_weakDestinations;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 animatedImagePlayerDidEndAnimating:{self, v10}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_notifyDestinationsOfAnimationStart
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_weakDestinations;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 animatedImagePlayerDidBeginAnimating:{self, v10}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_notifyDestinationsOfFrameChange
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_weakDestinations;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) animatedImagePlayerFrameDidChange:{self, v9}];
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)unregisterDestination:(id)a3
{
  [(NSHashTable *)self->_weakDestinations removeObject:a3];

  [(ISAnimatedImagePlayer *)self updateAnimation];
}

- (void)registerDestination:(id)a3
{
  weakDestinations = self->_weakDestinations;
  v5 = a3;
  [(NSHashTable *)weakDestinations addObject:v5];
  [v5 animatedImagePlayerFrameDidChange:self];

  [(ISAnimatedImagePlayer *)self updateAnimation];
}

- (void)dealloc
{
  CGImageRelease(self->_currentImage);
  self->_currentImage = 0;
  [(ISObservable *)self->_timer unregisterChangeObserver:self context:0];
  v3.receiver = self;
  v3.super_class = ISAnimatedImagePlayer;
  [(ISAnimatedImagePlayer *)&v3 dealloc];
}

- (ISAnimatedImagePlayer)initWithAnimatedImage:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ISAnimatedImagePlayer;
  v6 = [(ISAnimatedImagePlayer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_image, a3);
    v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    weakDestinations = v7->_weakDestinations;
    v7->_weakDestinations = v8;

    v7->_allowFrameDrops = 1;
    [(ISAnimatedImagePlayer *)v7 _seekToBeginning];
  }

  return v7;
}

@end