@interface PKRenderLoop
- (BOOL)attachToWindowScene:(id)scene;
- (CAFrameRateRange)preferredFrameRateRange;
- (PKRenderLoop)init;
- (PKRenderLoopDelegate)delegate;
- (UIScreen)screen;
- (UIWindowScene)windowScene;
- (uint64_t)_attachToScreen:(uint64_t)screen;
- (void)_drawAtTime:(uint64_t)time;
- (void)_drawWithDisplayLink:(uint64_t)link;
- (void)_resetBackgroundState;
- (void)_setNeedsForcingPauseUpdate;
- (void)_updateBackgroundState;
- (void)_updateEffectivePausedState;
- (void)dealloc;
- (void)invalidate;
- (void)setDelegate:(id)delegate;
- (void)setHighFrameRateReason:(unsigned int)reason;
- (void)setPaused:(BOOL)paused;
- (void)setPreferredFrameRateRange:(CAFrameRateRange)range;
@end

@implementation PKRenderLoop

- (PKRenderLoop)init
{
  v6.receiver = self;
  v6.super_class = PKRenderLoop;
  v2 = [(PKRenderLoop *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 37) = 257;
    v2[34] = 1;
    v5 = MEMORY[0x277CD9DD0];
    *(v2 + 8) = *MEMORY[0x277CD9DD0];
    *(v2 + 18) = *(v5 + 8);
    [(PKRenderLoop *)v2 _updateBackgroundState];
  }

  return v3;
}

- (void)_updateBackgroundState
{
  if (self)
  {
    *(self + 34) = 1;
    WeakRetained = objc_loadWeakRetained((self + 48));
    if (WeakRetained)
    {
      activationState = [WeakRetained activationState];
      if ((activationState + 1) <= 3)
      {
        *(self + 34) = 0x1000001u >> (8 * (activationState + 1));
      }
    }

    [(PKRenderLoop *)self _updateEffectivePausedState];
  }
}

- (void)_updateEffectivePausedState
{
  if (!self)
  {
    return;
  }

  if ((*(self + 17) & 1) == 0 && *(self + 24) && (CAFrameRateRangeIsEqualToRange(*(self + 64), *MEMORY[0x277CD9DD0]) || *(self + 68) > 0.0) && (*(self + 34) & 1) == 0)
  {
    _isForcingPause = [self _isForcingPause];
  }

  else
  {
    _isForcingPause = 1;
  }

  v3 = _isForcingPause ^ 1;
  v4 = *(self + 39);
  if (v4 != (_isForcingPause ^ 1))
  {
    *(self + 39) = v3;
  }

  if (_isForcingPause)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(self + 37);
  }

  if (*(self + 38) == (v5 & 1))
  {
    if (v4 == v3 || *(self + 36) != 1)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained((self + 8));
    [WeakRetained renderLoop:self didChangeRunnable:*(self + 39)];
    goto LABEL_22;
  }

  *(self + 38) = v5 & 1;
  [*(self + 24) setPaused:?];
  if (v4 != v3 && *(self + 36) == 1)
  {
    v6 = objc_loadWeakRetained((self + 8));
    [v6 renderLoop:self didChangeRunnable:*(self + 39)];
  }

  if (*(self + 35) == 1)
  {
    WeakRetained = objc_loadWeakRetained((self + 8));
    [WeakRetained renderLoop:self didChangeEffectivePaused:*(self + 38)];
LABEL_22:
  }
}

- (void)_setNeedsForcingPauseUpdate
{
  if (self)
  {
    [(PKRenderLoop *)self _updateEffectivePausedState];
  }
}

- (void)_resetBackgroundState
{
  if (self)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v98 = defaultCenter;
    v9 = MEMORY[0x277D76E70];
    v10 = MEMORY[0x277D76E50];
    v11 = MEMORY[0x277D76E48];
    v12 = MEMORY[0x277D76E78];
    v13 = MEMORY[0x277D76E80];
    v14 = MEMORY[0x277D76E58];
    if (*(self + 32) == 1)
    {
      v15 = [OUTLINED_FUNCTION_0(defaultCenter v3];
      v22 = [OUTLINED_FUNCTION_0(v15 v16];
      v29 = [OUTLINED_FUNCTION_0(v22 v23];
      v36 = [OUTLINED_FUNCTION_0(v29 v30];
      v43 = [OUTLINED_FUNCTION_0(v36 v37];
      [OUTLINED_FUNCTION_0(v43 v44];
      *(self + 32) = 0;
    }

    WeakRetained = objc_loadWeakRetained((self + 48));
    v56 = WeakRetained;
    if (WeakRetained)
    {
      *(self + 32) = 1;
      v57 = [OUTLINED_FUNCTION_0(WeakRetained v51];
      v63 = [OUTLINED_FUNCTION_0(v57 v58];
      v69 = [OUTLINED_FUNCTION_0(v63 v64];
      v75 = [OUTLINED_FUNCTION_0(v69 v70];
      v81 = [OUTLINED_FUNCTION_0(v75 v76];
      [OUTLINED_FUNCTION_0(v81 v82];
    }

    [(PKRenderLoop *)self _updateBackgroundState];
  }
}

- (UIScreen)screen
{
  WeakRetained = objc_loadWeakRetained(&self->_screen);

  return WeakRetained;
}

- (void)_drawWithDisplayLink:(uint64_t)link
{
  v3 = a2;
  if (link && v3 && *(link + 24) == v3)
  {
    v5 = v3;
    [v3 targetTimestamp];
    [(PKRenderLoop *)link _drawAtTime:v4];
    v3 = v5;
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(PKRenderLoop *)self invalidate];
  v4.receiver = self;
  v4.super_class = PKRenderLoop;
  [(PKRenderLoop *)&v4 dealloc];
}

- (BOOL)attachToWindowScene:(id)scene
{
  sceneCopy = scene;
  if (!self->_invalidated)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    if (WeakRetained == sceneCopy)
    {
      displayLink = self->_displayLink;
      if (sceneCopy)
      {
        if (displayLink)
        {
          v5 = 1;
LABEL_11:

          goto LABEL_12;
        }
      }

      else if (!displayLink)
      {
        v5 = 0;
        goto LABEL_11;
      }
    }

    else
    {
      objc_storeWeak(&self->_windowScene, sceneCopy);
      [(PKRenderLoop *)self _resetBackgroundState];
    }

    screen = [sceneCopy screen];
    v5 = [(PKRenderLoop *)self _attachToScreen:screen];

    goto LABEL_11;
  }

  v5 = 0;
LABEL_12:

  return v5;
}

- (void)invalidate
{
  *self = 1;
  [a2 _didInvalidate];
  objc_storeWeak((a2 + 56), 0);
  v3 = *(a2 + 24);
  if (v3)
  {
    [v3 invalidate];
    v4 = *(a2 + 24);
    *(a2 + 24) = 0;
  }

  [(PKRenderLoop *)a2 _updateEffectivePausedState];
}

- (void)setPreferredFrameRateRange:(CAFrameRateRange)range
{
  preferred = range.preferred;
  maximum = range.maximum;
  minimum = range.minimum;
  if (!CAFrameRateRangeIsEqualToRange(self->_preferredFrameRateRange, range))
  {
    self->_preferredFrameRateRange.minimum = minimum;
    self->_preferredFrameRateRange.maximum = maximum;
    self->_preferredFrameRateRange.preferred = preferred;
    *&v7 = minimum;
    *&v8 = maximum;
    *&v9 = preferred;
    [(CADisplayLink *)self->_displayLink setPreferredFrameRateRange:v7, v8, v9];

    [(PKRenderLoop *)self _updateEffectivePausedState];
  }
}

- (void)setHighFrameRateReason:(unsigned int)reason
{
  self->_hasHighFrameRateReason = 1;
  self->_highFrameRateReason = reason;
  [(CADisplayLink *)self->_displayLink setHighFrameRateReason:?];
}

- (void)setPaused:(BOOL)paused
{
  if (self->_paused != paused)
  {
    self->_paused = paused;
    [(PKRenderLoop *)self _updateEffectivePausedState];
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  if (delegateCopy)
  {
    self->_delegateObservesEffectivePaused = objc_opt_respondsToSelector() & 1;
    v4 = objc_opt_respondsToSelector();
  }

  else
  {
    v4 = 0;
    self->_delegateObservesEffectivePaused = 0;
  }

  self->_delegateObservesRunnable = v4 & 1;

  MEMORY[0x2821F9730]();
}

- (UIWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (CAFrameRateRange)preferredFrameRateRange
{
  minimum = self->_preferredFrameRateRange.minimum;
  maximum = self->_preferredFrameRateRange.maximum;
  preferred = self->_preferredFrameRateRange.preferred;
  result.preferred = preferred;
  result.maximum = maximum;
  result.minimum = minimum;
  return result;
}

- (PKRenderLoopDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (uint64_t)_attachToScreen:(uint64_t)screen
{
  v3 = a2;
  if (screen)
  {
    if (*(screen + 17))
    {
      LOBYTE(screen) = 0;
      goto LABEL_20;
    }

    WeakRetained = objc_loadWeakRetained((screen + 56));
    if (WeakRetained == v3)
    {
      v6 = (screen + 24);
      v5 = *(screen + 24);
      if (v3)
      {
        if (v5)
        {
          LOBYTE(screen) = 1;
LABEL_19:

          goto LABEL_20;
        }

        objc_storeWeak((screen + 56), v3);
        goto LABEL_15;
      }

      if (!v5)
      {
        LOBYTE(screen) = 0;
        goto LABEL_19;
      }
    }

    else
    {
      v6 = (screen + 24);
      v5 = *(screen + 24);
      if (!v5)
      {
        goto LABEL_12;
      }
    }

    [v5 invalidate];
    v7 = *v6;
    *v6 = 0;

LABEL_12:
    objc_storeWeak((screen + 56), v3);
    if (!v3)
    {
LABEL_18:
      [(PKRenderLoop *)screen _updateEffectivePausedState];
      LOBYTE(screen) = *(screen + 39);
      goto LABEL_19;
    }

LABEL_15:
    v8 = [[PKDisplayLinkTargetProxy alloc] initWithTarget:screen];
    v9 = [v3 displayLinkWithTarget:v8 selector:sel_drawWithDisplayLink_];
    v10 = *(screen + 24);
    *(screen + 24) = v9;

    [*(screen + 24) setPaused:*(screen + 38)];
    LODWORD(v11) = *(screen + 64);
    LODWORD(v12) = *(screen + 68);
    LODWORD(v13) = *(screen + 72);
    [*(screen + 24) setPreferredFrameRateRange:{v11, v12, v13}];
    if (*(screen + 33) == 1)
    {
      [*(screen + 24) setHighFrameRateReason:*(screen + 40)];
    }

    v14 = *v6;
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [v14 addToRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE738]];

    goto LABEL_18;
  }

LABEL_20:

  return screen & 1;
}

- (void)_drawAtTime:(uint64_t)time
{
  if (time && (*(time + 38) & 1) == 0)
  {
    v4 = objc_autoreleasePoolPush();
    *(time + 16) = 1;
    [time _willDraw];
    WeakRetained = objc_loadWeakRetained((time + 8));
    [WeakRetained renderLoop:time drawAtTime:a2];

    *(time + 16) = 0;
    [time _didDraw];

    objc_autoreleasePoolPop(v4);
  }
}

@end