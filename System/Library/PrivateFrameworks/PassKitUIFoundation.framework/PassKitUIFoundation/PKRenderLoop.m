@interface PKRenderLoop
- (BOOL)attachToWindowScene:(id)a3;
- (CAFrameRateRange)preferredFrameRateRange;
- (PKRenderLoop)init;
- (PKRenderLoopDelegate)delegate;
- (UIScreen)screen;
- (UIWindowScene)windowScene;
- (uint64_t)_attachToScreen:(uint64_t)a1;
- (void)_drawAtTime:(uint64_t)a1;
- (void)_drawWithDisplayLink:(uint64_t)a1;
- (void)_resetBackgroundState;
- (void)_setNeedsForcingPauseUpdate;
- (void)_updateBackgroundState;
- (void)_updateEffectivePausedState;
- (void)dealloc;
- (void)invalidate;
- (void)setDelegate:(id)a3;
- (void)setHighFrameRateReason:(unsigned int)a3;
- (void)setPaused:(BOOL)a3;
- (void)setPreferredFrameRateRange:(CAFrameRateRange)a3;
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
  if (a1)
  {
    *(a1 + 34) = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      v2 = [WeakRetained activationState];
      if ((v2 + 1) <= 3)
      {
        *(a1 + 34) = 0x1000001u >> (8 * (v2 + 1));
      }
    }

    [(PKRenderLoop *)a1 _updateEffectivePausedState];
  }
}

- (void)_updateEffectivePausedState
{
  if (!a1)
  {
    return;
  }

  if ((*(a1 + 17) & 1) == 0 && *(a1 + 24) && (CAFrameRateRangeIsEqualToRange(*(a1 + 64), *MEMORY[0x277CD9DD0]) || *(a1 + 68) > 0.0) && (*(a1 + 34) & 1) == 0)
  {
    v2 = [a1 _isForcingPause];
  }

  else
  {
    v2 = 1;
  }

  v3 = v2 ^ 1;
  v4 = *(a1 + 39);
  if (v4 != (v2 ^ 1))
  {
    *(a1 + 39) = v3;
  }

  if (v2)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(a1 + 37);
  }

  if (*(a1 + 38) == (v5 & 1))
  {
    if (v4 == v3 || *(a1 + 36) != 1)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 8));
    [WeakRetained renderLoop:a1 didChangeRunnable:*(a1 + 39)];
    goto LABEL_22;
  }

  *(a1 + 38) = v5 & 1;
  [*(a1 + 24) setPaused:?];
  if (v4 != v3 && *(a1 + 36) == 1)
  {
    v6 = objc_loadWeakRetained((a1 + 8));
    [v6 renderLoop:a1 didChangeRunnable:*(a1 + 39)];
  }

  if (*(a1 + 35) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    [WeakRetained renderLoop:a1 didChangeEffectivePaused:*(a1 + 38)];
LABEL_22:
  }
}

- (void)_setNeedsForcingPauseUpdate
{
  if (a1)
  {
    [(PKRenderLoop *)a1 _updateEffectivePausedState];
  }
}

- (void)_resetBackgroundState
{
  if (a1)
  {
    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    v98 = v2;
    v9 = MEMORY[0x277D76E70];
    v10 = MEMORY[0x277D76E50];
    v11 = MEMORY[0x277D76E48];
    v12 = MEMORY[0x277D76E78];
    v13 = MEMORY[0x277D76E80];
    v14 = MEMORY[0x277D76E58];
    if (*(a1 + 32) == 1)
    {
      v15 = [OUTLINED_FUNCTION_0(v2 v3];
      v22 = [OUTLINED_FUNCTION_0(v15 v16];
      v29 = [OUTLINED_FUNCTION_0(v22 v23];
      v36 = [OUTLINED_FUNCTION_0(v29 v30];
      v43 = [OUTLINED_FUNCTION_0(v36 v37];
      [OUTLINED_FUNCTION_0(v43 v44];
      *(a1 + 32) = 0;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v56 = WeakRetained;
    if (WeakRetained)
    {
      *(a1 + 32) = 1;
      v57 = [OUTLINED_FUNCTION_0(WeakRetained v51];
      v63 = [OUTLINED_FUNCTION_0(v57 v58];
      v69 = [OUTLINED_FUNCTION_0(v63 v64];
      v75 = [OUTLINED_FUNCTION_0(v69 v70];
      v81 = [OUTLINED_FUNCTION_0(v75 v76];
      [OUTLINED_FUNCTION_0(v81 v82];
    }

    [(PKRenderLoop *)a1 _updateBackgroundState];
  }
}

- (UIScreen)screen
{
  WeakRetained = objc_loadWeakRetained(&self->_screen);

  return WeakRetained;
}

- (void)_drawWithDisplayLink:(uint64_t)a1
{
  v3 = a2;
  if (a1 && v3 && *(a1 + 24) == v3)
  {
    v5 = v3;
    [v3 targetTimestamp];
    [(PKRenderLoop *)a1 _drawAtTime:v4];
    v3 = v5;
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(PKRenderLoop *)self invalidate];
  v4.receiver = self;
  v4.super_class = PKRenderLoop;
  [(PKRenderLoop *)&v4 dealloc];
}

- (BOOL)attachToWindowScene:(id)a3
{
  v4 = a3;
  if (!self->_invalidated)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    if (WeakRetained == v4)
    {
      displayLink = self->_displayLink;
      if (v4)
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
      objc_storeWeak(&self->_windowScene, v4);
      [(PKRenderLoop *)self _resetBackgroundState];
    }

    v8 = [v4 screen];
    v5 = [(PKRenderLoop *)self _attachToScreen:v8];

    goto LABEL_11;
  }

  v5 = 0;
LABEL_12:

  return v5;
}

- (void)invalidate
{
  *a1 = 1;
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

- (void)setPreferredFrameRateRange:(CAFrameRateRange)a3
{
  preferred = a3.preferred;
  maximum = a3.maximum;
  minimum = a3.minimum;
  if (!CAFrameRateRangeIsEqualToRange(self->_preferredFrameRateRange, a3))
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

- (void)setHighFrameRateReason:(unsigned int)a3
{
  self->_hasHighFrameRateReason = 1;
  self->_highFrameRateReason = a3;
  [(CADisplayLink *)self->_displayLink setHighFrameRateReason:?];
}

- (void)setPaused:(BOOL)a3
{
  if (self->_paused != a3)
  {
    self->_paused = a3;
    [(PKRenderLoop *)self _updateEffectivePausedState];
  }
}

- (void)setDelegate:(id)a3
{
  v5 = a3;
  objc_storeWeak(&self->_delegate, v5);
  if (v5)
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

- (uint64_t)_attachToScreen:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if (*(a1 + 17))
    {
      LOBYTE(a1) = 0;
      goto LABEL_20;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (WeakRetained == v3)
    {
      v6 = (a1 + 24);
      v5 = *(a1 + 24);
      if (v3)
      {
        if (v5)
        {
          LOBYTE(a1) = 1;
LABEL_19:

          goto LABEL_20;
        }

        objc_storeWeak((a1 + 56), v3);
        goto LABEL_15;
      }

      if (!v5)
      {
        LOBYTE(a1) = 0;
        goto LABEL_19;
      }
    }

    else
    {
      v6 = (a1 + 24);
      v5 = *(a1 + 24);
      if (!v5)
      {
        goto LABEL_12;
      }
    }

    [v5 invalidate];
    v7 = *v6;
    *v6 = 0;

LABEL_12:
    objc_storeWeak((a1 + 56), v3);
    if (!v3)
    {
LABEL_18:
      [(PKRenderLoop *)a1 _updateEffectivePausedState];
      LOBYTE(a1) = *(a1 + 39);
      goto LABEL_19;
    }

LABEL_15:
    v8 = [[PKDisplayLinkTargetProxy alloc] initWithTarget:a1];
    v9 = [v3 displayLinkWithTarget:v8 selector:sel_drawWithDisplayLink_];
    v10 = *(a1 + 24);
    *(a1 + 24) = v9;

    [*(a1 + 24) setPaused:*(a1 + 38)];
    LODWORD(v11) = *(a1 + 64);
    LODWORD(v12) = *(a1 + 68);
    LODWORD(v13) = *(a1 + 72);
    [*(a1 + 24) setPreferredFrameRateRange:{v11, v12, v13}];
    if (*(a1 + 33) == 1)
    {
      [*(a1 + 24) setHighFrameRateReason:*(a1 + 40)];
    }

    v14 = *v6;
    v15 = [MEMORY[0x277CBEB88] currentRunLoop];
    [v14 addToRunLoop:v15 forMode:*MEMORY[0x277CBE738]];

    goto LABEL_18;
  }

LABEL_20:

  return a1 & 1;
}

- (void)_drawAtTime:(uint64_t)a1
{
  if (a1 && (*(a1 + 38) & 1) == 0)
  {
    v4 = objc_autoreleasePoolPush();
    *(a1 + 16) = 1;
    [a1 _willDraw];
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    [WeakRetained renderLoop:a1 drawAtTime:a2];

    *(a1 + 16) = 0;
    [a1 _didDraw];

    objc_autoreleasePoolPop(v4);
  }
}

@end