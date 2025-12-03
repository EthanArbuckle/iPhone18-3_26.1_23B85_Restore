@interface _UIScrollViewScrollingAnimator
- (BOOL)_handlePressIfInterested:(id)interested;
- (BOOL)_keyboardHandlesPressEventForKeyInput:(id)input;
- (BOOL)finishHandlingPressEvent:(id)event;
- (BOOL)handlePressEventIfInterested:(id)interested;
- (CGPoint)_interactiveScrollVelocity;
- (UIScrollView)scrollView;
- (_UIScrollViewScrollingAnimator)initWithScrollView:(id)view;
- (double)_distanceForIncrement:(unint64_t)increment inDirection:(unint64_t)direction;
- (id)_scrollStateForDirection:(unint64_t)direction granularity:(unint64_t)granularity;
- (id)_scrollStateForPress:(id)press;
- (unint64_t)_rubberbandableDirections;
- (unint64_t)_scrollableDirectionsFromOffset:(CGPoint)offset;
- (void)_beginInteractiveAnimationForScrollState:(id)state;
- (void)_displayLinkFired:(id)fired;
- (void)_scrollToContentOffset:(CGPoint)offset;
- (void)_scrollWithScrollToExtentAnimationTo:(CGPoint)to;
- (void)_startDisplayLinkIfNeeded;
- (void)_stopAnimatedScroll;
- (void)_stopDisplayLink;
- (void)animateScrollInDirection:(unint64_t)direction withGranularity:(unint64_t)granularity;
- (void)cancelInteractiveScroll;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _UIScrollViewScrollingAnimator

- (_UIScrollViewScrollingAnimator)initWithScrollView:(id)view
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = _UIScrollViewScrollingAnimator;
  v5 = [(_UIScrollViewScrollingAnimator *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scrollView, viewCopy);
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    trackedPressEvents = v6->_trackedPressEvents;
    v6->_trackedPressEvents = weakObjectsHashTable;
  }

  return v6;
}

- (void)dealloc
{
  [(_UIScrollViewScrollingAnimator *)self invalidate];
  v3.receiver = self;
  v3.super_class = _UIScrollViewScrollingAnimator;
  [(_UIScrollViewScrollingAnimator *)&v3 dealloc];
}

- (BOOL)handlePressEventIfInterested:(id)interested
{
  v18 = *MEMORY[0x1E69E9840];
  interestedCopy = interested;
  if ([(_UIScrollViewScrollingAnimator *)self _keyboardHandlesPressEventForKeyInput:interestedCopy])
  {
    goto LABEL_12;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  allPresses = [interestedCopy allPresses];
  v6 = [allPresses countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v6)
  {

LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v14;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(allPresses);
      }

      v8 |= [(_UIScrollViewScrollingAnimator *)self _handlePressIfInterested:*(*(&v13 + 1) + 8 * i)];
    }

    v7 = [allPresses countByEnumeratingWithState:&v13 objects:v17 count:16];
  }

  while (v7);

  if ((v8 & 1) == 0)
  {
    goto LABEL_12;
  }

  [(NSHashTable *)self->_trackedPressEvents addObject:interestedCopy];
  v11 = 1;
LABEL_13:

  return v11;
}

- (BOOL)finishHandlingPressEvent:(id)event
{
  v21 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if (self->_isScrollingInteractively && [(NSHashTable *)self->_trackedPressEvents containsObject:eventCopy])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    allPresses = [eventCopy allPresses];
    v6 = [allPresses countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(allPresses);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [(_UIScrollViewScrollingAnimator *)self _scrollStateForPress:v10];
          if (!v11 || [v10 phase] == 3 || objc_msgSend(v10, "phase") == 4 || (objc_msgSend(v10, "key"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "modifierFlags"), v12, (v13 & 0x100000) != 0))
          {
            [(_UIScrollViewScrollingAnimator *)self _stopAnimatedScroll];
            self->_isScrollingInteractively = 0;

            goto LABEL_17;
          }
        }

        v7 = [allPresses countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    [(NSHashTable *)self->_trackedPressEvents removeObject:eventCopy];
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)animateScrollInDirection:(unint64_t)direction withGranularity:(unint64_t)granularity
{
  [(_UIScrollViewScrollingAnimator *)self cancelInteractiveScroll];
  v7 = [(_UIScrollViewScrollingAnimator *)self _scrollStateForDirection:direction granularity:granularity];
  [(_UIScrollViewScrollingAnimator *)self _beginInteractiveAnimationForScrollState:v7];
  [(_UIScrollViewScrollingAnimator *)self _stopAnimatedScroll];
}

- (void)cancelInteractiveScroll
{
  if (!self->_isAdjustingScrollViewOffset)
  {
    self->_velocity = *MEMORY[0x1E695EFF8];
    [(_UIScrollViewScrollingAnimator *)self _stopAnimatedScroll];

    [(_UIScrollViewScrollingAnimator *)self _stopDisplayLink];
  }
}

- (void)invalidate
{
  [(_UIScrollViewScrollingAnimator *)self _stopAnimatedScroll];
  [(_UIScrollViewScrollingAnimator *)self _stopDisplayLink];

  objc_storeWeak(&self->_scrollView, 0);
}

- (void)_beginInteractiveAnimationForScrollState:(id)state
{
  stateCopy = state;
  objc_storeStrong(&self->_currentScroll, state);
  if ([stateCopy granularity] == 3)
  {
    [(_UIScrollViewScrollingAnimator *)self cancelInteractiveScroll];
    [stateCopy offset];
    v6 = self->_modelPosition.x + v5;
    v8 = v7 + self->_modelPosition.y;
    WeakRetained = objc_loadWeakRetained(&self->_scrollView);
    [WeakRetained _adjustedContentOffsetForContentOffset:{v6, v8}];
    v11 = v10;
    v13 = v12;

    [(_UIScrollViewScrollingAnimator *)self _scrollWithScrollToExtentAnimationTo:v11, v13];
  }

  else
  {
    v14 = objc_loadWeakRetained(&self->_scrollView);
    [v14 contentOffset];
    self->_modelPosition.x = v15;
    self->_modelPosition.y = v16;

    [(_UIScrollViewScrollingAnimator *)self _interactiveScrollVelocity];
    v18.f64[1] = v17;
    self->_velocity = vaddq_f64(self->_velocity, v18);
    [(_UIScrollViewScrollingAnimatorState *)self->_currentScroll offset];
    v20.f64[1] = v19;
    self->_idealPositionForMinimumTravel = vaddq_f64(self->_modelPosition, v20);
    [(_UIScrollViewScrollingAnimator *)self _startDisplayLinkIfNeeded];
  }
}

- (BOOL)_keyboardHandlesPressEventForKeyInput:(id)input
{
  inputCopy = input;
  v4 = +[UIKeyboardImpl activeInstance];
  if (v4 && [inputCopy type] == 4)
  {
    if ([v4 delegateRequiresKeyEvents])
    {
      v5 = 1;
    }

    else
    {
      v7 = inputCopy;
      if ([v4 _isKeyCommand:v7])
      {
        v5 = 1;
      }

      else
      {
        _unmodifiedInput = [v7 _unmodifiedInput];
        v9 = [_unmodifiedInput length];

        if (v9 == 1)
        {
          inputDelegateManager = [v4 inputDelegateManager];
          keyInputDelegate = [inputDelegateManager keyInputDelegate];
          v5 = keyInputDelegate != 0;
        }

        else
        {
          v5 = 0;
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_handlePressIfInterested:(id)interested
{
  interestedCopy = interested;
  if (![interestedCopy phase])
  {
    v6 = [(_UIScrollViewScrollingAnimator *)self _scrollStateForPress:interestedCopy];
    if (v6)
    {
      if (self->_isScrollingInteractively)
      {
        v5 = 1;
LABEL_12:

        goto LABEL_13;
      }

      _rubberbandableDirections = [(_UIScrollViewScrollingAnimator *)self _rubberbandableDirections];
      direction = [v6 direction];
      if ((direction - 1) > 3)
      {
        v9 = 0;
      }

      else
      {
        v9 = qword_18A67E2A0[direction - 1];
      }

      if ((v9 & _rubberbandableDirections) != 0)
      {
        v5 = 1;
        self->_isScrollingInteractively = 1;
        [(_UIScrollViewScrollingAnimator *)self _beginInteractiveAnimationForScrollState:v6];
        goto LABEL_12;
      }
    }

    v5 = 0;
    goto LABEL_12;
  }

  v5 = 0;
LABEL_13:

  return v5;
}

- (id)_scrollStateForDirection:(unint64_t)direction granularity:(unint64_t)granularity
{
  [(_UIScrollViewScrollingAnimator *)self _distanceForIncrement:granularity inDirection:direction];
  v7 = v6;
  v8 = (&unk_18A67E1F0 + 8 * direction - 8);
  if (direction - 1 >= 4)
  {
    v9 = (MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    v9 = (&unk_18A67E210 + 8 * direction - 8);
  }

  if (direction - 1 >= 4)
  {
    v8 = MEMORY[0x1E695EFF8];
  }

  v10 = *v8;
  v11 = *v9;
  v12 = objc_alloc_init(_UIScrollViewScrollingAnimatorState);
  [(_UIScrollViewScrollingAnimatorState *)v12 setOffset:v7 * v10, v7 * v11];
  [(_UIScrollViewScrollingAnimatorState *)v12 offset];
  [(_UIScrollViewScrollingAnimatorState *)v12 setMaximumVelocity:v13 * 25.0, v14 * 25.0];
  [(_UIScrollViewScrollingAnimatorState *)v12 setDirection:direction];
  [(_UIScrollViewScrollingAnimatorState *)v12 setGranularity:granularity];
  [(_UIScrollViewScrollingAnimatorState *)v12 maximumVelocity];
  [(_UIScrollViewScrollingAnimatorState *)v12 setForce:?];

  return v12;
}

- (id)_scrollStateForPress:(id)press
{
  pressCopy = press;
  v5 = scrollingKeyForPress(pressCopy);
  if (!v5 || (v6 = v5, v7 = [pressCopy modifierFlags], ((v7 >> 17) & 1) + ((v7 >> 19) & 1) + ((v7 >> 20) & 1) > 1) || (v6 > 6 ? (LODWORD(v8) = -1) : (v8 = qword_18A67E230[v6 - 1]), (v7 & v8 & 0x1A0000) != 0))
  {
    v9 = 0;
    goto LABEL_8;
  }

  if (v6 > 8)
  {
    goto LABEL_22;
  }

  if (((1 << v6) & 0x18) != 0)
  {
    v12 = 3;
    if ((*&v7 & 0x100000) == 0)
    {
      v12 = 1;
    }

    if ((*&v7 & 0x80000) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v12;
    }

    goto LABEL_25;
  }

  if (((1 << v6) & 0x60) == 0)
  {
    if (((1 << v6) & 0x180) != 0)
    {
      v11 = 3;
      goto LABEL_25;
    }

LABEL_22:
    if ((*&v7 & 0x80000) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    goto LABEL_25;
  }

  v11 = 2;
LABEL_25:
  v9 = [(_UIScrollViewScrollingAnimator *)self _scrollStateForDirection:qword_18A67E260[v6 - 1] granularity:v11];
LABEL_8:

  return v9;
}

- (void)_stopAnimatedScroll
{
  currentScroll = self->_currentScroll;
  if (!currentScroll)
  {
    return;
  }

  x = self->_velocity.x;
  y = self->_velocity.y;
  v6 = sqrt(x * x * 0.00917431193);
  if (x >= 0.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = -v6;
  }

  v8 = sqrt(y * y * 0.00917431193);
  if (y >= 0.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = -v8;
  }

  v10 = self->_modelPosition.x + v7;
  v11 = self->_modelPosition.y + v9;
  direction = [(_UIScrollViewScrollingAnimatorState *)currentScroll direction];
  if (direction > 2)
  {
    v14 = self->_idealPositionForMinimumTravel.x;
    if (direction == 3)
    {
      if (v10 >= v14)
      {
        v10 = self->_idealPositionForMinimumTravel.x;
      }

      goto LABEL_26;
    }

    if (direction == 4)
    {
      if (v10 < v14)
      {
        v10 = self->_idealPositionForMinimumTravel.x;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v13 = self->_idealPositionForMinimumTravel.y;
    if (direction == 1)
    {
      if (v11 >= v13)
      {
        v11 = self->_idealPositionForMinimumTravel.y;
      }

      goto LABEL_26;
    }

    if (direction == 2)
    {
      if (v11 < v13)
      {
        v11 = self->_idealPositionForMinimumTravel.y;
      }

      goto LABEL_26;
    }
  }

  v10 = *MEMORY[0x1E695EFF8];
  v11 = *(MEMORY[0x1E695EFF8] + 8);
LABEL_26:
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);
  [WeakRetained _adjustedContentOffsetForContentOffset:{v10, v11}];
  self->_idealPosition.x = v16;
  self->_idealPosition.y = v17;

  v18 = self->_currentScroll;
  self->_currentScroll = 0;
}

- (void)_startDisplayLinkIfNeeded
{
  if (!self->_displayLink)
  {
    WeakRetained = objc_loadWeakRetained(&self->_scrollView);
    window = [WeakRetained window];

    if (window)
    {
      v6 = objc_loadWeakRetained(&self->_scrollView);
      window2 = [v6 window];
      screen = [window2 screen];
      v9 = [screen displayLinkWithTarget:self selector:sel__displayLinkFired_];
      displayLink = self->_displayLink;
      self->_displayLink = v9;
    }

    else
    {
      v11 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__smoothScrollDisplayLink_];
      v6 = self->_displayLink;
      self->_displayLink = v11;
    }

    v12 = self->_displayLink;
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v12 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];
  }
}

- (void)_stopDisplayLink
{
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;
}

- (void)_displayLinkFired:(id)fired
{
  firedCopy = fired;
  v4 = MEMORY[0x1E695EFF8];
  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  if (!self->_currentScroll)
  {
    v11 = 1.0;
    v12 = 1.0;
LABEL_21:
    p_idealPosition = &self->_idealPosition;
    p_y = &self->_idealPosition.y;
    goto LABEL_22;
  }

  p_y = &self->_modelPosition.y;
  v8 = [(_UIScrollViewScrollingAnimator *)self _scrollableDirectionsFromOffset:self->_modelPosition.x, self->_modelPosition.y];
  v9 = [(_UIScrollViewScrollingAnimatorState *)self->_currentScroll direction]- 1;
  if (v9 > 3)
  {
    v10 = 0;
  }

  else
  {
    v10 = qword_18A67E2A0[v9];
  }

  if ((v10 & v8) != 0)
  {
    if (v9 <= 3)
    {
      v5 = dbl_18A67E2C0[v9];
      v6 = dbl_18A67E2E0[v9];
    }

    [(_UIScrollViewScrollingAnimatorState *)self->_currentScroll force];
    v14 = v13;
    v16 = v15;
    v12 = v6;
    v11 = v5;
  }

  else
  {
    if (v9 >= 4)
    {
      v14 = v5 * 5000.0;
      v16 = v6 * 5000.0;
    }

    else
    {
      v14 = dbl_18A67E300[v9];
      v16 = dbl_18A67E320[v9];
    }

    v12 = 1.0;
    v11 = 1.0;
  }

  v17 = fabs(self->_velocity.x);
  [(_UIScrollViewScrollingAnimatorState *)self->_currentScroll maximumVelocity];
  v6 = 0.0;
  if (v17 >= fabs(v18))
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v14;
  }

  v19 = fabs(self->_velocity.y);
  [(_UIScrollViewScrollingAnimatorState *)self->_currentScroll maximumVelocity];
  if (v19 < fabs(v20))
  {
    v6 = v16;
  }

  if (!self->_currentScroll)
  {
    goto LABEL_21;
  }

  p_idealPosition = &self->_modelPosition;
LABEL_22:
  x = p_idealPosition->x;
  v23 = *p_y;
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);
  [WeakRetained _adjustedContentOffsetForContentOffset:{x, v23}];
  v26 = v25;
  v28 = v27;

  p_velocity = &self->_velocity;
  v30 = v12 * ((self->_modelPosition.y - v28) * -109.0 - self->_velocity.y * 20.0);
  v31 = v5 + v11 * ((self->_modelPosition.x - v26) * -109.0 - self->_velocity.x * 20.0);
  v32 = v6 + v30;
  [firedCopy targetTimestamp];
  v34 = v33;
  [firedCopy timestamp];
  v36 = v34 - v35;
  v37 = self->_velocity.x + v31 * v36;
  v38 = self->_modelPosition.x;
  v39 = self->_velocity.y + v36 * v32;
  self->_velocity.x = v37;
  y = self->_modelPosition.y;
  self->_velocity.y = v39;
  self->_modelPosition.x = v36 * v37 + v38;
  self->_modelPosition.y = v36 * v39 + y;
  [(_UIScrollViewScrollingAnimator *)self _scrollToContentOffset:?];
  if (!self->_isScrollingInteractively && vaddvq_f64(vmulq_f64(*p_velocity, *p_velocity)) < 1.0)
  {
    [(_UIScrollViewScrollingAnimator *)self _stopDisplayLink];
    *p_velocity = *v4;
  }
}

- (double)_distanceForIncrement:(unint64_t)increment inDirection:(unint64_t)direction
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);
  v7 = WeakRetained;
  v8 = 0.0;
  if (!WeakRetained)
  {
    goto LABEL_14;
  }

  if (increment == 1)
  {
    [WeakRetained zoomScale];
    v15 = 40.0;
LABEL_13:
    v8 = v14 * v15;
    goto LABEL_14;
  }

  v9 = direction - 3;
  if (increment == 2)
  {
    [WeakRetained frame];
    if (v9 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    v15 = 0.8;
    goto LABEL_13;
  }

  if (increment == 3)
  {
    [WeakRetained contentSize];
    if (v9 <= 1)
    {
      v8 = v10;
    }

    else
    {
      v8 = v11;
    }
  }

LABEL_14:

  return v8;
}

- (void)_scrollToContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  self->_isAdjustingScrollViewOffset = 1;
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57___UIScrollViewScrollingAnimator__scrollToContentOffset___block_invoke;
  v7[3] = &unk_1E70F6848;
  v7[4] = self;
  *&v7[5] = x;
  *&v7[6] = y;
  [WeakRetained withScrollIndicatorsShownForContentOffsetChanges:v7];

  self->_isAdjustingScrollViewOffset = 0;
}

- (void)_scrollWithScrollToExtentAnimationTo:(CGPoint)to
{
  y = to.y;
  x = to.x;
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71___UIScrollViewScrollingAnimator__scrollWithScrollToExtentAnimationTo___block_invoke;
  v7[3] = &unk_1E70F6848;
  v7[4] = self;
  *&v7[5] = x;
  *&v7[6] = y;
  [WeakRetained withScrollIndicatorsShownForContentOffsetChanges:v7];
}

- (CGPoint)_interactiveScrollVelocity
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);
  [WeakRetained _horizontalVelocity];
  v5 = v4 * 1000.0;
  v6 = objc_loadWeakRetained(&self->_scrollView);
  [v6 _verticalVelocity];
  v8 = v7 * 1000.0;

  v9 = v5;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (unint64_t)_scrollableDirectionsFromOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);
  [WeakRetained adjustedContentInset];
  v7 = v6;
  v9 = v8;
  v29 = v10;
  v12 = v11;

  v13 = objc_loadWeakRetained(&self->_scrollView);
  [v13 contentSize];
  v15 = v14;
  v17 = v16;

  v18 = objc_loadWeakRetained(&self->_scrollView);
  [v18 bounds];
  v20 = v19;
  v22 = v21;

  v23 = -v7;
  v24 = v12 + v15 - v20;
  if (v24 <= -v9)
  {
    v24 = -v9;
  }

  v25 = v29 + v17 - v22;
  if (v25 <= v23)
  {
    v25 = -v7;
  }

  v26 = y > v23;
  v27 = 4;
  if (y > v23)
  {
    v27 = 5;
  }

  if (y < v25)
  {
    v26 = v27;
  }

  if (x > -v9)
  {
    v26 |= 2uLL;
  }

  if (x >= v24)
  {
    return v26;
  }

  else
  {
    return v26 | 8;
  }
}

- (unint64_t)_rubberbandableDirections
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);
  _canScrollWithoutBouncingY = [WeakRetained _canScrollWithoutBouncingY];

  if (_canScrollWithoutBouncingY)
  {
    v5 = 5;
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_loadWeakRetained(&self->_scrollView);
  _canScrollWithoutBouncingX = [v6 _canScrollWithoutBouncingX];

  if (_canScrollWithoutBouncingX)
  {
    return v5 | 0xA;
  }

  else
  {
    return v5;
  }
}

- (UIScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

@end