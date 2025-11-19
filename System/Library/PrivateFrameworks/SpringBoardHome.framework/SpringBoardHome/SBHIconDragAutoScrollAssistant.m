@interface SBHIconDragAutoScrollAssistant
- (CGPoint)_currentLocation;
- (SBHIconDragAutoScrollAssistant)initWithDelegate:(id)a3 referenceView:(id)a4 vertical:(BOOL)a5;
- (SBHIconDragAutoScrollAssistantDelegate)delegate;
- (int64_t)_autoScrollDirectionForLocation:(CGPoint)a3;
- (void)_displayLinkFired:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)setActiveDropSession:(id)a3;
@end

@implementation SBHIconDragAutoScrollAssistant

- (SBHIconDragAutoScrollAssistant)initWithDelegate:(id)a3 referenceView:(id)a4 vertical:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v19.receiver = self;
  v19.super_class = SBHIconDragAutoScrollAssistant;
  v10 = [(SBHIconDragAutoScrollAssistant *)&v19 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_delegate, v8);
    objc_storeStrong(&v11->_referenceView, a4);
    v11->_vertical = a5;
    v12 = [MEMORY[0x1E6979330] displayLinkWithTarget:v11 selector:sel__displayLinkFired_];
    displayLink = v11->_displayLink;
    v11->_displayLink = v12;

    v14 = v11->_displayLink;
    v15 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v14 addToRunLoop:v15 forMode:*MEMORY[0x1E695DA28]];

    v16 = v11->_displayLink;
    v17 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v16 addToRunLoop:v17 forMode:*MEMORY[0x1E69DE760]];

    [(CADisplayLink *)v11->_displayLink setPaused:1];
  }

  return v11;
}

- (void)dealloc
{
  [(SBHIconDragAutoScrollAssistant *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBHIconDragAutoScrollAssistant;
  [(SBHIconDragAutoScrollAssistant *)&v3 dealloc];
}

- (void)setActiveDropSession:(id)a3
{
  v5 = a3;
  p_activeDropSession = &self->_activeDropSession;
  if (self->_activeDropSession != v5)
  {
    v7 = v5;
    objc_storeStrong(p_activeDropSession, a3);
    p_activeDropSession = [(CADisplayLink *)self->_displayLink setPaused:v7 == 0];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](p_activeDropSession, v5);
}

- (void)invalidate
{
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;
}

- (CGPoint)_currentLocation
{
  [(UIDropSession *)self->_activeDropSession locationInView:self->_referenceView];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)_displayLinkFired:(id)a3
{
  v17 = a3;
  [(SBHIconDragAutoScrollAssistant *)self _currentLocation];
  v5 = v4;
  v7 = v6;
  self->_location.x = v4;
  self->_location.y = v6;
  UIDistanceBetweenPoints();
  started = self->_started;
  if (!started || v8 <= 40.0)
  {
    if (!started && v8 > 20.0)
    {
      self->_lastTimestamp = CACurrentMediaTime();
    }
  }

  else
  {
    self->_started = 0;
  }

  v11 = self->_lastTimestamp + 0.75;
  [v17 timestamp];
  if (!self->_started && v11 < v12)
  {
    self->_started = 1;
  }

  if (v11 < v12)
  {
    v13 = [(SBHIconDragAutoScrollAssistant *)self _autoScrollDirectionForLocation:v5, v7];
    v14 = [(SBHIconDragAutoScrollAssistant *)self delegate];
    [v14 autoScrollAssistant:self triggeredAutoScrollInDirection:v13];

    [v17 timestamp];
    self->_lastTimestamp = v15;
  }

  if (BSFloatIsZero())
  {
    [v17 timestamp];
    self->_lastTimestamp = v16;
  }
}

- (int64_t)_autoScrollDirectionForLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [MEMORY[0x1E69DC938] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  v8 = -25.0;
  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v8 = -50.0;
  }

  v9 = x + v8;
  v25 = y + -50.0;
  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v10 = 100.0;
  }

  else
  {
    v10 = 50.0;
  }

  [(UIView *)self->_referenceView bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__SBHIconDragAutoScrollAssistant__autoScrollDirectionForLocation___block_invoke;
  aBlock[3] = &__block_descriptor_64_e39_B40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
  aBlock[4] = v11;
  aBlock[5] = v13;
  aBlock[6] = v15;
  aBlock[7] = v17;
  v19 = _Block_copy(aBlock);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __66__SBHIconDragAutoScrollAssistant__autoScrollDirectionForLocation___block_invoke_2;
  v28[3] = &__block_descriptor_64_e39_B40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
  v28[4] = v12;
  v28[5] = v14;
  v28[6] = v16;
  v28[7] = v18;
  v20 = _Block_copy(v28);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __66__SBHIconDragAutoScrollAssistant__autoScrollDirectionForLocation___block_invoke_3;
  v27[3] = &__block_descriptor_64_e39_B40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
  v27[4] = v12;
  v27[5] = v14;
  v27[6] = v16;
  v27[7] = v18;
  v21 = _Block_copy(v27);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __66__SBHIconDragAutoScrollAssistant__autoScrollDirectionForLocation___block_invoke_4;
  v26[3] = &__block_descriptor_64_e39_B40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
  v26[4] = v12;
  v26[5] = v14;
  v26[6] = v16;
  v26[7] = v18;
  v22 = _Block_copy(v26);
  if (self->_vertical)
  {
    if (v21[2](v21, v9, v25, v10, 100.0))
    {
      v23 = 1;
    }

    else if (v22[2](v22, v9, v25, v10, 100.0))
    {
      v23 = 2;
    }

    else
    {
      v23 = 0;
    }
  }

  else if (v19[2](v19, v9, v25, v10, 100.0))
  {
    if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }
  }

  else if (v20[2](v20, v9, v25, v10, 100.0))
  {
    if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (SBHIconDragAutoScrollAssistantDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end