@interface _UICollectionTableIndexOverlayManager
- (id)initWithHost:(id *)host;
- (uint64_t)handleWheelChangedEvent:(uint64_t)event;
- (void)_configureIndexOverlayIndicatorViewIfNecessary;
- (void)_configureIndexOverlaySelectionViewIfNecessary;
- (void)_hideIndicatorAfterDelay:(id)val;
- (void)_prolongIndicatorHideTimer;
- (void)handleMoveEvent:(uint64_t)event;
- (void)hostDidMoveToWindow:(uint64_t)window;
- (void)setIndexOverlayIndicatorViewText:(uint64_t)text;
- (void)tearDown;
- (void)transitionIndexOverlayIndicatorViewToVisible:(int)visible shouldFadeBackToInvisible:;
- (void)transitionIndexOverlaySelectionViewToVisible:(uint64_t)visible;
@end

@implementation _UICollectionTableIndexOverlayManager

- (void)tearDown
{
  if (self)
  {
    [*(self + 16) removeFromSuperview];
    v2 = *(self + 16);
    *(self + 16) = 0;

    [*(self + 24) removeFromSuperview];
    v3 = *(self + 24);
    *(self + 24) = 0;
  }
}

- (void)_configureIndexOverlayIndicatorViewIfNecessary
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 8));
    if (WeakRetained)
    {
      v7 = WeakRetained;
      if (!*(self + 16))
      {
        v3 = [[_UICollectionTableIndexOverlayIndicatorView alloc] initWithHost:WeakRetained];
        v4 = *(self + 16);
        *(self + 16) = v3;
      }

      window = [v7 window];
      [window bounds];
      [*(self + 16) setFrame:?];

      [*(self + 16) setAlpha:0.0];
      [*(self + 16) setHidden:1];
      [*(self + 16) setAutoresizingMask:18];
      window2 = [v7 window];
      [window2 addSubview:*(self + 16)];

      WeakRetained = v7;
    }
  }
}

- (void)_configureIndexOverlaySelectionViewIfNecessary
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 8));
    if (WeakRetained)
    {
      v11 = WeakRetained;
      window = [WeakRetained window];
      _screen = [window _screen];
      v5 = [_screen _capabilityForKey:@"UIScreenCapabilityTouchLevelsKey"];
      integerValue = [v5 integerValue];

      WeakRetained = v11;
      if (integerValue != 2)
      {
        if (!*(self + 24))
        {
          v7 = [[_UICollectionTableIndexOverlaySelectionView alloc] initWithHost:v11];
          v8 = *(self + 24);
          *(self + 24) = v7;
        }

        window2 = [v11 window];
        [window2 bounds];
        [*(self + 24) setFrame:?];

        [*(self + 24) setAlpha:0.0];
        [*(self + 24) setHidden:1];
        [*(self + 24) setAutoresizingMask:18];
        window3 = [v11 window];
        [window3 addSubview:*(self + 24)];

        WeakRetained = v11;
      }
    }
  }
}

- (id)initWithHost:(id *)host
{
  v3 = a2;
  if (host)
  {
    v6.receiver = host;
    v6.super_class = _UICollectionTableIndexOverlayManager;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    host = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 1, v3);
    }
  }

  return host;
}

- (void)hostDidMoveToWindow:(uint64_t)window
{
  v3 = a2;
  if (window)
  {
    v8 = v3;
    if (v3)
    {
      WeakRetained = objc_loadWeakRetained((window + 8));
      v5 = WeakRetained;
      if (WeakRetained)
      {
        _screen = [WeakRetained _screen];
        _userInterfaceIdiom = [_screen _userInterfaceIdiom];

        if (_userInterfaceIdiom == 3)
        {
          [(_UICollectionTableIndexOverlayManager *)window _configureIndexOverlayIndicatorViewIfNecessary];
          [(_UICollectionTableIndexOverlayManager *)window _configureIndexOverlaySelectionViewIfNecessary];
        }

        else
        {
          [(_UICollectionTableIndexOverlayManager *)window tearDown];
        }
      }
    }

    else
    {
      [(_UICollectionTableIndexOverlayManager *)window tearDown];
    }

    v3 = v8;
  }
}

- (void)transitionIndexOverlayIndicatorViewToVisible:(int)visible shouldFadeBackToInvisible:
{
  if (self && (*(self + 48) & 1) != a2)
  {
    if (a2)
    {
      [*(self + 16) setHidden:0];
      v6 = 0.15;
    }

    else
    {
      [*(self + 32) invalidate];
      v7 = *(self + 32);
      *(self + 32) = 0;

      v6 = 0.25;
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __112___UICollectionTableIndexOverlayManager_transitionIndexOverlayIndicatorViewToVisible_shouldFadeBackToInvisible___block_invoke;
    v10[3] = &unk_1E70F35E0;
    v10[4] = self;
    v11 = a2;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __112___UICollectionTableIndexOverlayManager_transitionIndexOverlayIndicatorViewToVisible_shouldFadeBackToInvisible___block_invoke_2;
    v8[3] = &unk_1E70FA0F0;
    v9 = a2;
    v8[4] = self;
    [(UIView *)v6 _animateCollectionTableAnimationWithDuration:UIView delay:2 options:v10 animations:v8 completion:?];
    if (a2)
    {
      *(self + 48) |= 1u;
      if (visible)
      {
        [(_UICollectionTableIndexOverlayManager *)self _hideIndicatorAfterDelay:?];
      }
    }
  }
}

- (void)_hideIndicatorAfterDelay:(id)val
{
  if (val)
  {
    objc_initWeak(&location, val);
    v4 = MEMORY[0x1E695DFF0];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __66___UICollectionTableIndexOverlayManager__hideIndicatorAfterDelay___block_invoke;
    v7[3] = &unk_1E70F4130;
    objc_copyWeak(&v8, &location);
    v5 = [v4 scheduledTimerWithTimeInterval:0 repeats:v7 block:a2];
    v6 = *(val + 4);
    *(val + 4) = v5;

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)setIndexOverlayIndicatorViewText:(uint64_t)text
{
  if (text)
  {
    v5 = a2;
    v3 = [v5 copy];
    v4 = *(text + 56);
    *(text + 56) = v3;

    [*(text + 16) setCurrentText:v5];
  }
}

- (void)transitionIndexOverlaySelectionViewToVisible:(uint64_t)visible
{
  if (visible && ((((*(visible + 48) & 2) == 0) ^ a2) & 1) == 0)
  {
    v4 = 0.25;
    if (a2)
    {
      [*(visible + 24) setHidden:{0, 0.25}];
      v4 = 0.15;
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __86___UICollectionTableIndexOverlayManager_transitionIndexOverlaySelectionViewToVisible___block_invoke;
    v8[3] = &unk_1E70F35E0;
    v8[4] = visible;
    v9 = a2;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __86___UICollectionTableIndexOverlayManager_transitionIndexOverlaySelectionViewToVisible___block_invoke_2;
    v6[3] = &unk_1E70FA0F0;
    v7 = a2;
    v6[4] = visible;
    [(UIView *)v4 _animateCollectionTableAnimationWithDuration:UIView delay:2 options:v8 animations:v6 completion:?];
    if (a2)
    {
      *(visible + 48) |= 2u;
      v5 = *(visible + 24);
    }

    else
    {
      v5 = 0;
    }

    if (__UIAccessibilityBroadcastCallback)
    {
      __UIAccessibilityBroadcastCallback(1000, v5);
    }
  }
}

- (uint64_t)handleWheelChangedEvent:(uint64_t)event
{
  v3 = a2;
  if (event)
  {
    WeakRetained = objc_loadWeakRetained((event + 8));
    if (WeakRetained)
    {
      [v3 _wheelVelocity];
      if (fabs(v5) < 20.0 || (*(event + 48) & 1) != 0)
      {
        [(_UICollectionTableIndexOverlayManager *)event _prolongIndicatorHideTimer];
        v6 = 0;
      }

      else
      {
        [WeakRetained _recomputeSectionIndexTitleIndex];
        v6 = 1;
        [(_UICollectionTableIndexOverlayManager *)event transitionIndexOverlayIndicatorViewToVisible:1 shouldFadeBackToInvisible:?];
        *(event + 40) = CACurrentMediaTime();
      }
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_prolongIndicatorHideTimer
{
  if (self)
  {
    v2 = self[4];
    if (v2)
    {
      [v2 invalidate];
      v3 = self[4];
      self[4] = 0;

      [(_UICollectionTableIndexOverlayManager *)self _hideIndicatorAfterDelay:?];
    }
  }
}

- (void)handleMoveEvent:(uint64_t)event
{
  v5 = a2;
  if (event)
  {
    WeakRetained = objc_loadWeakRetained((event + 8));
    if (WeakRetained && CACurrentMediaTime() - *(event + 40) >= 0.25)
    {
      if ([v5 _moveDirection] == 1)
      {
        v4 = 1;
      }

      else
      {
        v4 = -1;
      }

      [WeakRetained _shiftSectionIndexTitleIndexByAmount:v4];
    }
  }
}

@end