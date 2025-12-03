@interface _UIScrollViewVFD
- (_OWORD)initWithScrollView:(void *)view;
- (uint64_t)_activateActiveSubreasons:(uint64_t)result;
- (uint64_t)_deactivateActiveSubreasons:(uint64_t)result;
- (uint64_t)activateSubreason:(uint64_t)result;
- (uint64_t)deactivateSubreason:(uint64_t)result;
- (uint64_t)setUpdateRequestRecord:(uint64_t)result;
- (uint64_t)updateDisplayLink:(uint64_t)result;
- (void)_updateCompleted;
- (void)dealloc;
- (void)reset;
- (void)updateBounds:(CGFloat)bounds scale:(CGFloat)scale;
@end

@implementation _UIScrollViewVFD

- (void)reset
{
  if (self)
  {
    if (*(self + 24))
    {
      [(_UIScrollViewVFD *)self _deactivateActiveSubreasons:?];
      *(self + 24) = 0;
    }

    _UIUpdateCompletionObservationRemoveObserver(mainCompletionObservation, self, 0);
  }
}

- (void)dealloc
{
  [(_UIScrollViewVFD *)self reset];
  v3.receiver = self;
  v3.super_class = _UIScrollViewVFD;
  [(_UIScrollViewVFD *)&v3 dealloc];
}

- (void)_updateCompleted
{
  self->_lookupState.staticRateRangePrevious = self->_lookupState.staticRateRangeCurrent;
  self->_lookupState.staticRateRangeFramesPrevious = self->_lookupState.staticRateRangeFramesCurrent;
  v3 = _UIUpdateCycleMainScheduler + 576;
  if (*(_UIUpdateCycleMainScheduler + 568) != 1)
  {
    v3 = 0;
  }

  self->_displayedPresentationTime = *(v3 + 24);
  [(UIView *)self->_scrollView bounds];
  self->_displayedOrigin.x = v4;
  self->_displayedOrigin.y = v5;
  scrollView = self->_scrollView;
  if (scrollView)
  {
    vfd = scrollView->_vfd;
    scrollHeartbeat = scrollView->_scrollHeartbeat;

    [(_UIScrollViewVFD *)vfd updateDisplayLink:?];
  }
}

- (_OWORD)initWithScrollView:(void *)view
{
  if (!view)
  {
    return 0;
  }

  v8.receiver = view;
  v8.super_class = _UIScrollViewVFD;
  v3 = objc_msgSendSuper2(&v8, sel_init);
  v4 = v3;
  if (v3)
  {
    v3[2] = xmmword_18A682A10;
    *(v3 + 1) = a2;
    *(v3 + 11) = 0;
    *(v3 + 12) = 0;
    *(v3 + 10) = 0;
    *(v3 + 8) = v3 + 2;
    *(v3 + 18) = 1048577;
    v5 = +[_UIScrollViewFPSHUD createFPSHUD];
    v6 = *(v4 + 2);
    *(v4 + 2) = v5;

    *(v4 + 13) = 0x8000000000000000;
  }

  return v4;
}

- (uint64_t)setUpdateRequestRecord:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 64);
    if (a2)
    {
      *(result + 64) = *a2;
    }

    else
    {
      *(result + 64) = result + 32;
      *(result + 72) = 1048577;
    }

    if (*(result + 24) && v3 != *(result + 64) && DWORD2(v3) != *(result + 72))
    {
      [(_UIScrollViewVFD *)result _deactivateActiveSubreasons:?];
      return [(_UIScrollViewVFD *)v2 _activateActiveSubreasons:?];
    }
  }

  return result;
}

- (uint64_t)_deactivateActiveSubreasons:(uint64_t)result
{
  if (result)
  {
    v3 = *a2;
    v4 = (result + 32);
    if (v3 == (result + 32))
    {
      v5 = *(result + 24);
      if (v5)
      {
        v6 = 1048577;
        do
        {
          if (v5)
          {
            _UIUpdateRequestRegistryRemoveRecord(&mainRegistry, v4, v6);
          }

          ++v6;
          v7 = v5 > 1;
          v5 >>= 1;
        }

        while (v7);
        v3 = *a2;
      }
    }

    v8 = *(a2 + 8);

    return _UIUpdateRequestRegistryRemoveRecord(&mainRegistry, v3, v8);
  }

  return result;
}

- (uint64_t)_activateActiveSubreasons:(uint64_t)result
{
  if (result)
  {
    v3 = *a2;
    v4 = (result + 32);
    if (v3 == (result + 32))
    {
      v5 = *(result + 24);
      if (v5)
      {
        v6 = 1048577;
        do
        {
          if (v5)
          {
            _UIUpdateRequestRegistryAddRecord(&mainRegistry, v4, v6);
          }

          ++v6;
          v7 = v5 > 1;
          v5 >>= 1;
        }

        while (v7);
        v3 = *a2;
      }
    }

    v8 = *(a2 + 8);

    return _UIUpdateRequestRegistryAddRecord(&mainRegistry, v3, v8);
  }

  return result;
}

- (uint64_t)activateSubreason:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = 1 << a2;
    v5 = *(result + 24);
    if ((v5 & (1 << a2)) == 0)
    {
      if (!v5)
      {
        result = _UIUpdateRequestRegistryAddRecord(&mainRegistry, *(result + 64), *(result + 72));
      }

      if (*(v3 + 64) == v3 + 32)
      {
        result = _UIUpdateRequestRegistryAddRecord(&mainRegistry, (v3 + 32), a2 + 1048577);
      }

      *(v3 + 24) |= v4;
    }
  }

  return result;
}

- (uint64_t)deactivateSubreason:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 24);
    if ((v4 & (1 << a2)) != 0)
    {
      v5 = v4 & ~(1 << a2);
      *(result + 24) = v5;
      if (!v5)
      {
        result = _UIUpdateRequestRegistryRemoveRecord(&mainRegistry, *(result + 64), *(result + 72));
        *(v3 + 36) = 0x7800000050;
        *(v3 + 44) = 120;
      }

      if (*(v3 + 64) == v3 + 32)
      {

        return _UIUpdateRequestRegistryRemoveRecord(&mainRegistry, (v3 + 32), a2 + 1048577);
      }
    }
  }

  return result;
}

- (void)updateBounds:(CGFloat)bounds scale:(CGFloat)scale
{
  if (self)
  {
    if (*(self + 24))
    {
      v7 = (self + 32);
      if (*(self + 64) == self + 32)
      {
        if (*(self + 104) != 0x8000000000000000 && _UIUpdateCycleMainScheduler && *(_UIUpdateCycleMainScheduler + 568) == 1 && (UCTimeToSeconds(), v14 = v13, v13 > 0.0) && v13 < 0.064)
        {
          v15 = hypot(*(self + 112) - a2, *(self + 120) - bounds) * a6 / v13;
          v16 = (1.0 / v14 + 0.5);
          if (qword_1ED497420[0] != -1)
          {
            dispatch_once(qword_1ED497420, &__block_literal_global_571);
          }

          v17 = v15;
          *&v30[0] = 0;
          v31 = 0;
          v18 = _UIScrollViewVFDTableLookup(*qword_1ED497418, *(qword_1ED497418 + 8), v16, v30, &v31, v17);
          v19 = v15;
          v20 = _UIScrollViewVFDTableLookup(*qword_1ED497410, *(qword_1ED497410 + 8), v16, v30, &v31, v19);
          *(self + 88) = v20;
          if (*(self + 80) == v20)
          {
            v26 = *(self + 96);
            v22 = _MergedGlobals_32_1;
            if (_MergedGlobals_32_1 <= v26)
            {
              v21 = *(self + 98);
            }

            else
            {
              v21 = v26 + 1;
              *(self + 98) = v21;
            }
          }

          else
          {
            v21 = 0;
            *(self + 98) = 0;
            v22 = _MergedGlobals_32_1;
          }

          if (v22 <= v21)
          {
            v27 = v20;
          }

          else
          {
            v27 = v18;
          }

          v23 = v27[1];
          v25 = v27[2];
          v24 = *v27;
          kdebug_trace();
          v28 = *(self + 16);
          v29 = *(self + 48);
          v30[0] = *v7;
          v30[1] = v29;
          [(_UIScrollViewFPSHUD *)v28 displayUpdateRequest:v30 reportedRateForPreviousFrame:v16];
        }

        else
        {
          kdebug_trace();
          v23 = 120;
          v24 = 80;
          v25 = 120;
        }

        _UIUpdateCompletionObservationAddObserver(mainCompletionObservation, self, 0);
        *(self + 36) = v24;
        *(self + 40) = v25;
        *(self + 44) = v23;
        _UIUpdateRequestRegistryMutableRequestChanged(&mainRegistry, (self + 32));
        [(_UIScrollViewFPSHUD *)*(self + 16) updateDebugOverlayBounds:a2 withScrollView:bounds, scale, a5];
      }
    }
  }
}

- (uint64_t)updateDisplayLink:(uint64_t)result
{
  if (result && a2)
  {
    v4 = CAFrameRateRangeMake(*(*(result + 64) + 4), *(*(result + 64) + 12), *(*(result + 64) + 8));

    return [a2 setPreferredFrameRateRange:{*&v4.minimum, *&v4.maximum, *&v4.preferred}];
  }

  return result;
}

@end