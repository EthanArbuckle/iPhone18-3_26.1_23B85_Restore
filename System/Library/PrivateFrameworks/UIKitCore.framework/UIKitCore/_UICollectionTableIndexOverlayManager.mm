@interface _UICollectionTableIndexOverlayManager
- (id)initWithHost:(id *)a1;
- (uint64_t)handleWheelChangedEvent:(uint64_t)a1;
- (void)_configureIndexOverlayIndicatorViewIfNecessary;
- (void)_configureIndexOverlaySelectionViewIfNecessary;
- (void)_hideIndicatorAfterDelay:(id)val;
- (void)_prolongIndicatorHideTimer;
- (void)handleMoveEvent:(uint64_t)a1;
- (void)hostDidMoveToWindow:(uint64_t)a1;
- (void)setIndexOverlayIndicatorViewText:(uint64_t)a1;
- (void)tearDown;
- (void)transitionIndexOverlayIndicatorViewToVisible:(int)a3 shouldFadeBackToInvisible:;
- (void)transitionIndexOverlaySelectionViewToVisible:(uint64_t)a1;
@end

@implementation _UICollectionTableIndexOverlayManager

- (void)tearDown
{
  if (a1)
  {
    [*(a1 + 16) removeFromSuperview];
    v2 = *(a1 + 16);
    *(a1 + 16) = 0;

    [*(a1 + 24) removeFromSuperview];
    v3 = *(a1 + 24);
    *(a1 + 24) = 0;
  }
}

- (void)_configureIndexOverlayIndicatorViewIfNecessary
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    if (WeakRetained)
    {
      v7 = WeakRetained;
      if (!*(a1 + 16))
      {
        v3 = [[_UICollectionTableIndexOverlayIndicatorView alloc] initWithHost:WeakRetained];
        v4 = *(a1 + 16);
        *(a1 + 16) = v3;
      }

      v5 = [v7 window];
      [v5 bounds];
      [*(a1 + 16) setFrame:?];

      [*(a1 + 16) setAlpha:0.0];
      [*(a1 + 16) setHidden:1];
      [*(a1 + 16) setAutoresizingMask:18];
      v6 = [v7 window];
      [v6 addSubview:*(a1 + 16)];

      WeakRetained = v7;
    }
  }
}

- (void)_configureIndexOverlaySelectionViewIfNecessary
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    if (WeakRetained)
    {
      v11 = WeakRetained;
      v3 = [WeakRetained window];
      v4 = [v3 _screen];
      v5 = [v4 _capabilityForKey:@"UIScreenCapabilityTouchLevelsKey"];
      v6 = [v5 integerValue];

      WeakRetained = v11;
      if (v6 != 2)
      {
        if (!*(a1 + 24))
        {
          v7 = [[_UICollectionTableIndexOverlaySelectionView alloc] initWithHost:v11];
          v8 = *(a1 + 24);
          *(a1 + 24) = v7;
        }

        v9 = [v11 window];
        [v9 bounds];
        [*(a1 + 24) setFrame:?];

        [*(a1 + 24) setAlpha:0.0];
        [*(a1 + 24) setHidden:1];
        [*(a1 + 24) setAutoresizingMask:18];
        v10 = [v11 window];
        [v10 addSubview:*(a1 + 24)];

        WeakRetained = v11;
      }
    }
  }
}

- (id)initWithHost:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v6.receiver = a1;
    v6.super_class = _UICollectionTableIndexOverlayManager;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    a1 = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 1, v3);
    }
  }

  return a1;
}

- (void)hostDidMoveToWindow:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v8 = v3;
    if (v3)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 8));
      v5 = WeakRetained;
      if (WeakRetained)
      {
        v6 = [WeakRetained _screen];
        v7 = [v6 _userInterfaceIdiom];

        if (v7 == 3)
        {
          [(_UICollectionTableIndexOverlayManager *)a1 _configureIndexOverlayIndicatorViewIfNecessary];
          [(_UICollectionTableIndexOverlayManager *)a1 _configureIndexOverlaySelectionViewIfNecessary];
        }

        else
        {
          [(_UICollectionTableIndexOverlayManager *)a1 tearDown];
        }
      }
    }

    else
    {
      [(_UICollectionTableIndexOverlayManager *)a1 tearDown];
    }

    v3 = v8;
  }
}

- (void)transitionIndexOverlayIndicatorViewToVisible:(int)a3 shouldFadeBackToInvisible:
{
  if (a1 && (*(a1 + 48) & 1) != a2)
  {
    if (a2)
    {
      [*(a1 + 16) setHidden:0];
      v6 = 0.15;
    }

    else
    {
      [*(a1 + 32) invalidate];
      v7 = *(a1 + 32);
      *(a1 + 32) = 0;

      v6 = 0.25;
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __112___UICollectionTableIndexOverlayManager_transitionIndexOverlayIndicatorViewToVisible_shouldFadeBackToInvisible___block_invoke;
    v10[3] = &unk_1E70F35E0;
    v10[4] = a1;
    v11 = a2;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __112___UICollectionTableIndexOverlayManager_transitionIndexOverlayIndicatorViewToVisible_shouldFadeBackToInvisible___block_invoke_2;
    v8[3] = &unk_1E70FA0F0;
    v9 = a2;
    v8[4] = a1;
    [(UIView *)v6 _animateCollectionTableAnimationWithDuration:UIView delay:2 options:v10 animations:v8 completion:?];
    if (a2)
    {
      *(a1 + 48) |= 1u;
      if (a3)
      {
        [(_UICollectionTableIndexOverlayManager *)a1 _hideIndicatorAfterDelay:?];
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

- (void)setIndexOverlayIndicatorViewText:(uint64_t)a1
{
  if (a1)
  {
    v5 = a2;
    v3 = [v5 copy];
    v4 = *(a1 + 56);
    *(a1 + 56) = v3;

    [*(a1 + 16) setCurrentText:v5];
  }
}

- (void)transitionIndexOverlaySelectionViewToVisible:(uint64_t)a1
{
  if (a1 && ((((*(a1 + 48) & 2) == 0) ^ a2) & 1) == 0)
  {
    v4 = 0.25;
    if (a2)
    {
      [*(a1 + 24) setHidden:{0, 0.25}];
      v4 = 0.15;
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __86___UICollectionTableIndexOverlayManager_transitionIndexOverlaySelectionViewToVisible___block_invoke;
    v8[3] = &unk_1E70F35E0;
    v8[4] = a1;
    v9 = a2;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __86___UICollectionTableIndexOverlayManager_transitionIndexOverlaySelectionViewToVisible___block_invoke_2;
    v6[3] = &unk_1E70FA0F0;
    v7 = a2;
    v6[4] = a1;
    [(UIView *)v4 _animateCollectionTableAnimationWithDuration:UIView delay:2 options:v8 animations:v6 completion:?];
    if (a2)
    {
      *(a1 + 48) |= 2u;
      v5 = *(a1 + 24);
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

- (uint64_t)handleWheelChangedEvent:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    if (WeakRetained)
    {
      [v3 _wheelVelocity];
      if (fabs(v5) < 20.0 || (*(a1 + 48) & 1) != 0)
      {
        [(_UICollectionTableIndexOverlayManager *)a1 _prolongIndicatorHideTimer];
        v6 = 0;
      }

      else
      {
        [WeakRetained _recomputeSectionIndexTitleIndex];
        v6 = 1;
        [(_UICollectionTableIndexOverlayManager *)a1 transitionIndexOverlayIndicatorViewToVisible:1 shouldFadeBackToInvisible:?];
        *(a1 + 40) = CACurrentMediaTime();
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
  if (a1)
  {
    v2 = a1[4];
    if (v2)
    {
      [v2 invalidate];
      v3 = a1[4];
      a1[4] = 0;

      [(_UICollectionTableIndexOverlayManager *)a1 _hideIndicatorAfterDelay:?];
    }
  }
}

- (void)handleMoveEvent:(uint64_t)a1
{
  v5 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    if (WeakRetained && CACurrentMediaTime() - *(a1 + 40) >= 0.25)
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