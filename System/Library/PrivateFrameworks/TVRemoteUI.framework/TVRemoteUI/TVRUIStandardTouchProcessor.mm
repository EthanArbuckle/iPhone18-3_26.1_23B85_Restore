@interface TVRUIStandardTouchProcessor
- (CGPoint)_virtualTouchLocationForTouchPoint:(CGPoint)a3;
- (CGPoint)startingPoint;
- (CGRect)_calculateVirtualBoundingBox:(CGPoint)a3 sizingRatio:(double)a4 swipeDirection:(int64_t)a5;
- (CGRect)virtualBoundingBox;
- (TVRUIStandardTouchProcessor)initWithTouchpadView:(id)a3;
- (_TVRUIEventDelegate)eventDelegate;
- (id)_touchEventForTouch:(id)a3;
- (int64_t)_calculateDominantSwipeDirection:(CGPoint)a3 toPoint:(CGPoint)a4;
- (void)_cleanupOnTouchesEnded;
- (void)_configureGestureRecognizersOnView;
- (void)_endAndRestartTouchesManually:(id)a3;
- (void)_processTouches:(id)a3;
- (void)_sendSelectButtonPressBegan;
- (void)_sendSelectButtonPressEnded;
- (void)handleLongPress:(id)a3;
- (void)handleTapGesture:(id)a3;
- (void)touchesBegan:(id)a3 touches:(id)a4 withEvent:(id)a5;
- (void)touchesCancelled:(id)a3 touches:(id)a4 withEvent:(id)a5;
- (void)touchesEnded:(id)a3 touches:(id)a4 withEvent:(id)a5;
- (void)touchesMoved:(id)a3 touches:(id)a4 withEvent:(id)a5;
@end

@implementation TVRUIStandardTouchProcessor

- (TVRUIStandardTouchProcessor)initWithTouchpadView:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TVRUIStandardTouchProcessor;
  v6 = [(TVRUIStandardTouchProcessor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_touchpadView, a3);
    [(TVRUIStandardTouchProcessor *)v7 _configureGestureRecognizersOnView];
    v8 = [TVRButtonHaptic hapticForView:v5];
    haptic = v7->_haptic;
    v7->_haptic = v8;
  }

  return v7;
}

- (void)touchesBegan:(id)a3 touches:(id)a4 withEvent:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [v7 anyObject];
  v10 = [(TVRUIStandardTouchProcessor *)self touchpadView];
  [v9 preciseLocationInView:v10];
  [(TVRUIStandardTouchProcessor *)self setStartingPoint:?];

  v11 = [MEMORY[0x277CBEB58] set];
  [(TVRUIStandardTouchProcessor *)self setStartingTouches:v11];

  v12 = [MEMORY[0x277CBEB58] set];
  [(TVRUIStandardTouchProcessor *)self setEndedTouches:v12];

  [(TVRUIStandardTouchProcessor *)self setVirtualBoundingBox:*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)];
  [(TVRUIStandardTouchProcessor *)self setPreviousVelocity:0.0];
  [(TVRUIStandardTouchProcessor *)self setPreviousTimestamp:0.0];
  [(TVRUIStandardTouchProcessor *)self setTouchCnt:0];
  v13 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [TVRUIStandardTouchProcessor touchesBegan:v7 touches:v13 withEvent:?];
  }

  v28 = v7;

  v14 = [v8 allTouches];
  v15 = [v14 allObjects];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v30;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v29 + 1) + 8 * i);
        v22 = [v16 indexOfObject:v21];
        if (v22 >= 0)
        {
          v23 = v22 + 1;
        }

        else
        {
          v23 = 1;
        }

        v24 = [_TVRUITouch alloc];
        [v21 timestamp];
        v26 = -[_TVRUITouch initWithTimestamp:touchPhase:fingerIndex:](v24, "initWithTimestamp:touchPhase:fingerIndex:", [v21 phase], v23, v25);
        v27 = [(TVRUIStandardTouchProcessor *)self startingTouches];
        [v27 addObject:v26];
      }

      v18 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v18);
  }
}

- (void)touchesMoved:(id)a3 touches:(id)a4 withEvent:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 anyObject];
  v8 = [(TVRUIStandardTouchProcessor *)self touchpadView];
  [v7 preciseLocationInView:v8];
  v10 = v9;
  v12 = v11;

  [(TVRUIStandardTouchProcessor *)self virtualBoundingBox];
  if (!CGRectIsEmpty(v52))
  {
    [(TVRUIStandardTouchProcessor *)self virtualBoundingBox];
    if (!CGRectIsNull(v53))
    {
      goto LABEL_19;
    }
  }

  v13 = [(TVRUIStandardTouchProcessor *)self startingTouches];
  if ([v13 count])
  {
    [(TVRUIStandardTouchProcessor *)self startingPoint];
    v15 = v14;
    v17 = v16;
    v18 = *MEMORY[0x277CBF348];
    v19 = *(MEMORY[0x277CBF348] + 8);

    if (v15 != v18 || v17 != v19)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v21 = [v6 anyObject];
  v22 = [(TVRUIStandardTouchProcessor *)self touchpadView];
  [v21 preciseLocationInView:v22];
  [(TVRUIStandardTouchProcessor *)self setStartingPoint:?];

  v23 = [_TVRUITouch alloc];
  [v21 timestamp];
  v24 = [(_TVRUITouch *)v23 initWithTimestamp:0 touchPhase:1 fingerIndex:?];
  v25 = [(TVRUIStandardTouchProcessor *)self startingTouches];
  [v25 addObject:v24];

  v26 = [(TVRUIStandardTouchProcessor *)self endedTouches];
  [v26 removeAllObjects];

LABEL_11:
  [(TVRUIStandardTouchProcessor *)self startingPoint];
  v27 = [TVRUIStandardTouchProcessor _calculateDominantSwipeDirection:"_calculateDominantSwipeDirection:toPoint:" toPoint:?];
  [(TVRUIStandardTouchProcessor *)self startingPoint];
  [TVRUIStandardTouchProcessor _calculateVirtualBoundingBox:"_calculateVirtualBoundingBox:sizingRatio:swipeDirection:" sizingRatio:v27 swipeDirection:?];
  [(TVRUIStandardTouchProcessor *)self setVirtualBoundingBox:?];
  [(TVRUIStandardTouchProcessor *)self setStartingSwipeDirection:v27];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v28 = [(TVRUIStandardTouchProcessor *)self startingTouches];
  v29 = [v28 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v45;
    do
    {
      v32 = 0;
      do
      {
        if (*v45 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v44 + 1) + 8 * v32);
        [(TVRUIStandardTouchProcessor *)self startingPoint];
        [(TVRUIStandardTouchProcessor *)self _virtualTouchLocationForTouchPoint:?];
        v35 = v34;
        v37 = v36;
        v38 = [TVRUITouchEvent alloc];
        [v33 timestamp];
        v40 = -[TVRUITouchEvent initWithTimestamp:touchPhase:fingerIndex:digitizerLocation:](v38, "initWithTimestamp:touchPhase:fingerIndex:digitizerLocation:", [v33 phase], 1, v39, v35, v37);
        v41 = [(TVRUIStandardTouchProcessor *)self eventDelegate];
        [v41 generatedTouchEvent:v40];

        ++v32;
      }

      while (v30 != v32);
      v30 = [v28 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v30);
  }

LABEL_19:
  [(TVRUIStandardTouchProcessor *)self virtualBoundingBox];
  v50.x = v10;
  v50.y = v12;
  if (CGRectContainsPoint(v54, v50))
  {
    [(TVRUIStandardTouchProcessor *)self _processTouches:v6];
  }

  else
  {
    v42 = [(TVRUIStandardTouchProcessor *)self touchpadView];
    [v42 bounds];
    v51.x = v10;
    v51.y = v12;
    v43 = CGRectContainsPoint(v55, v51);

    if (v43)
    {
      [(TVRUIStandardTouchProcessor *)self _endAndRestartTouchesManually:v6];
    }
  }
}

- (void)_endAndRestartTouchesManually:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      v8 = 0;
      do
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v30 + 1) + 8 * v8);
        v10 = [(TVRUIStandardTouchProcessor *)self touchpadView];
        [v9 preciseLocationInView:v10];
        [(TVRUIStandardTouchProcessor *)self _virtualTouchLocationForTouchPoint:?];

        v11 = [(TVRUIStandardTouchProcessor *)self endedTouches];
        v12 = [v11 containsObject:v9];

        if ((v12 & 1) == 0)
        {
          v13 = [TVRUITouchEvent alloc];
          [v9 timestamp];
          v14 = [TVRUITouchEvent initWithTimestamp:v13 touchPhase:"initWithTimestamp:touchPhase:fingerIndex:digitizerLocation:" fingerIndex:3 digitizerLocation:1];
          v15 = [(TVRUIStandardTouchProcessor *)self eventDelegate];
          [v15 generatedTouchEvent:v14];

          v16 = [(TVRUIStandardTouchProcessor *)self endedTouches];
          [v16 addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v6);
  }

  [(TVRUIStandardTouchProcessor *)self _cleanupOnTouchesEnded];
  v17 = [v4 anyObject];
  v18 = [(TVRUIStandardTouchProcessor *)self touchpadView];
  [v17 previousLocationInView:v18];
  [(TVRUIStandardTouchProcessor *)self setStartingPoint:?];

  [(TVRUIStandardTouchProcessor *)self startingPoint];
  v20 = v19;
  v22 = v21;
  v23 = [(TVRUIStandardTouchProcessor *)self touchpadView];
  [v17 preciseLocationInView:v23];
  v26 = [(TVRUIStandardTouchProcessor *)self _calculateDominantSwipeDirection:v20 toPoint:v22, v24, v25];

  [(TVRUIStandardTouchProcessor *)self setStartingSwipeDirection:v26];
  [(TVRUIStandardTouchProcessor *)self startingPoint];
  [TVRUIStandardTouchProcessor _calculateVirtualBoundingBox:"_calculateVirtualBoundingBox:sizingRatio:swipeDirection:" sizingRatio:v26 swipeDirection:?];
  [(TVRUIStandardTouchProcessor *)self setVirtualBoundingBox:?];
  [(TVRUIStandardTouchProcessor *)self startingPoint];
  [(TVRUIStandardTouchProcessor *)self _virtualTouchLocationForTouchPoint:?];
  v27 = [TVRUITouchEvent alloc];
  [v17 timestamp];
  v28 = [TVRUITouchEvent initWithTimestamp:v27 touchPhase:"initWithTimestamp:touchPhase:fingerIndex:digitizerLocation:" fingerIndex:0 digitizerLocation:1];
  v29 = [(TVRUIStandardTouchProcessor *)self eventDelegate];
  [v29 generatedTouchEvent:v28];

  [(TVRUIStandardTouchProcessor *)self _processTouches:v4];
}

- (void)touchesEnded:(id)a3 touches:(id)a4 withEvent:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = v6;
    _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "TouchesEnded: touches: %@", buf, 0xCu);
  }

  [(TVRUIStandardTouchProcessor *)self virtualBoundingBox];
  if (CGRectIsNull(v43))
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v35;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if ([*(*(&v34 + 1) + 8 * v12) tapCount])
          {
            v24 = _TVRUIViewControllerLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              [TVRUIStandardTouchProcessor touchesEnded:v24 touches:? withEvent:?];
            }

            v25 = [(TVRUIStandardTouchProcessor *)self eventDelegate];
            if (v25)
            {
              v26 = v25;
              v27 = [(TVRUIStandardTouchProcessor *)self eventDelegate];
              v28 = objc_opt_respondsToSelector();

              if (v28)
              {
                [(TVRUIStandardTouchProcessor *)self _sendSelectButtonPressBegan];
                [(TVRUIStandardTouchProcessor *)self _sendSelectButtonPressEnded];
                [(TVRButtonHaptic *)self->_haptic userInteractionBegan];
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __62__TVRUIStandardTouchProcessor_touchesEnded_touches_withEvent___block_invoke;
                block[3] = &unk_279D87C20;
                block[4] = self;
                dispatch_async(MEMORY[0x277D85CD0], block);
              }
            }

            [(TVRUIStandardTouchProcessor *)self _cleanupOnTouchesEnded];

            goto LABEL_32;
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  v13 = [(TVRUIStandardTouchProcessor *)self endedTouches];
  v14 = [v13 count];

  if (v14)
  {
    v15 = [MEMORY[0x277CBEB58] set];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = v6;
    v17 = [v16 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v30;
      do
      {
        v20 = 0;
        do
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v29 + 1) + 8 * v20);
          v22 = [(TVRUIStandardTouchProcessor *)self endedTouches];
          v23 = [v22 containsObject:v21];

          if ((v23 & 1) == 0)
          {
            [v15 addObject:v21];
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v18);
    }

    [(TVRUIStandardTouchProcessor *)self _processTouches:v15];
  }

  else
  {
    [(TVRUIStandardTouchProcessor *)self _processTouches:v6];
  }

  [(TVRUIStandardTouchProcessor *)self _cleanupOnTouchesEnded];
LABEL_32:
}

- (void)touchesCancelled:(id)a3 touches:(id)a4 withEvent:(id)a5
{
  [(TVRUIStandardTouchProcessor *)self _processTouches:a4];

  [(TVRUIStandardTouchProcessor *)self _cleanupOnTouchesEnded];
}

- (void)_processTouches:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(TVRUIStandardTouchProcessor *)self _touchEventForTouch:*(*(&v15 + 1) + 8 * v8)];
        v10 = [(TVRUIStandardTouchProcessor *)self eventDelegate];
        if (v10)
        {
          v11 = v10;
          v12 = [(TVRUIStandardTouchProcessor *)self eventDelegate];
          v13 = objc_opt_respondsToSelector();

          if (v13)
          {
            v14 = [(TVRUIStandardTouchProcessor *)self eventDelegate];
            [v14 generatedTouchEvent:v9];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (void)_cleanupOnTouchesEnded
{
  [(TVRUIStandardTouchProcessor *)self setVirtualBoundingBox:*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)];
  v3 = [(TVRUIStandardTouchProcessor *)self startingTouches];
  [v3 removeAllObjects];

  v4 = [(TVRUIStandardTouchProcessor *)self endedTouches];
  [v4 removeAllObjects];

  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);

  [(TVRUIStandardTouchProcessor *)self setStartingPoint:v5, v6];
}

- (id)_touchEventForTouch:(id)a3
{
  v4 = a3;
  v5 = [(TVRUIStandardTouchProcessor *)self touchpadView];
  [v4 preciseLocationInView:v5];
  [(TVRUIStandardTouchProcessor *)self _virtualTouchLocationForTouchPoint:?];
  v7 = v6;
  v9 = v8;

  v10 = [TVRUITouchEvent alloc];
  [v4 timestamp];
  v12 = v11;
  v13 = [v4 phase];

  v14 = [(TVRUITouchEvent *)v10 initWithTimestamp:v13 touchPhase:1 fingerIndex:v12 digitizerLocation:v7, v9];

  return v14;
}

- (CGRect)_calculateVirtualBoundingBox:(CGPoint)a3 sizingRatio:(double)a4 swipeDirection:(int64_t)a5
{
  y = a3.y;
  x = a3.x;
  v9 = [(TVRUIStandardTouchProcessor *)self touchpadView];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  if (TVRPointSizeOfSiriRemoteOnMainScreen_onceToken != -1)
  {
    [TVRUIStandardTouchProcessor _calculateVirtualBoundingBox:sizingRatio:swipeDirection:];
  }

  v18 = *&TVRPointSizeOfSiriRemoteOnMainScreen_size_0 * a4;
  v19 = *&TVRPointSizeOfSiriRemoteOnMainScreen_size_1 * a4;
  if (a5 <= 2)
  {
    if (a5 != 1)
    {
      if (a5 == 2)
      {
        v20 = -0.2;
LABEL_10:
        v21 = x + v18 * v20;
        v22 = y + v19 * -0.5;
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    v21 = x + v18 * -0.5;
    v31 = -0.8;
LABEL_18:
    v22 = y + v19 * v31;
    goto LABEL_19;
  }

  if (a5 == 3)
  {
    v21 = x + v18 * -0.5;
    v31 = -0.2;
    goto LABEL_18;
  }

  if (a5 == 4)
  {
    v20 = -0.8;
    goto LABEL_10;
  }

LABEL_11:
  v38.origin.x = v11;
  v38.origin.y = v13;
  v38.size.width = v15;
  v38.size.height = v17;
  v37 = y;
  v23 = v17;
  MinX = CGRectGetMinX(v38);
  v39.origin.x = v11;
  v39.origin.y = v13;
  v39.size.width = v15;
  v39.size.height = v23;
  v25 = (x - MinX) / (CGRectGetMaxX(v39) - MinX);
  if (v25 < 0.0)
  {
    v25 = 0.0;
  }

  v36 = v18 * fmin(v25, 1.0) + 0.0;
  v40.origin.x = v11;
  v40.origin.y = v13;
  v40.size.width = v15;
  v40.size.height = v23;
  MinY = CGRectGetMinY(v40);
  v41.origin.x = v11;
  v41.origin.y = v13;
  v41.size.width = v15;
  v41.size.height = v23;
  MaxY = CGRectGetMaxY(v41);
  v28 = v37 - MinY;
  v29 = MaxY - MinY;
  v17 = v23;
  v30 = v28 / v29;
  if (v30 < 0.0)
  {
    v30 = 0.0;
  }

  v21 = x - v36;
  v22 = v37 - (v19 * fmin(v30, 1.0) + 0.0);
LABEL_19:
  v32 = 0.0;
  v33 = 0.0;
  if (v21 >= 0.0)
  {
    v33 = v21;
    if (v18 + v21 > v15)
    {
      v33 = v15 - v18;
    }
  }

  if (v22 >= 0.0)
  {
    v32 = v22;
    if (v19 + v22 > v17)
    {
      v32 = v17 - v19;
    }
  }

  v34 = v18;
  v35 = v19;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v32;
  result.origin.x = v33;
  return result;
}

- (CGPoint)_virtualTouchLocationForTouchPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(TVRUIStandardTouchProcessor *)self virtualBoundingBox];
  v4 = v17.origin.x;
  v5 = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  MinX = CGRectGetMinX(v17);
  v18.origin.x = v4;
  v18.origin.y = v5;
  v18.size.width = width;
  v18.size.height = height;
  v9 = (x - MinX) / (CGRectGetMaxX(v18) - MinX);
  if (v9 < 0.0)
  {
    v9 = 0.0;
  }

  v10 = fmin(v9, 1.0) + 0.0;
  v19.origin.x = v4;
  v19.origin.y = v5;
  v19.size.width = width;
  v19.size.height = height;
  MinY = CGRectGetMinY(v19);
  v20.origin.x = v4;
  v20.origin.y = v5;
  v20.size.width = width;
  v20.size.height = height;
  v12 = (y - MinY) / (CGRectGetMaxY(v20) - MinY);
  if (v12 < 0.0)
  {
    v12 = 0.0;
  }

  v13 = fmin(v12, 1.0) + 0.0;
  v14 = v10;
  result.y = v13;
  result.x = v14;
  return result;
}

- (int64_t)_calculateDominantSwipeDirection:(CGPoint)a3 toPoint:(CGPoint)a4
{
  if (a3.x == a4.x && a3.y == a4.y)
  {
    return 0;
  }

  v5 = 2;
  if (a4.x - a3.x < 0.0)
  {
    v5 = 4;
  }

  v6 = 3;
  if (a4.y - a3.y < 0.0)
  {
    v6 = 1;
  }

  if (vabdd_f64(a4.x, a3.x) >= vabdd_f64(a4.y, a3.y))
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

- (void)_configureGestureRecognizersOnView
{
  [(UIView *)self->_touchpadView removeAllGestureRecognizers];
  v4 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleTapGesture_];
  [v4 setCancelsTouchesInView:1];
  [v4 setDelaysTouchesBegan:0];
  [v4 setDelaysTouchesEnded:0];
  [v4 setAllowableMovement:5.0];
  [(UIView *)self->_touchpadView addGestureRecognizer:v4];
  v3 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel_handleLongPress_];
  [v3 setMinimumPressDuration:0.3];
  [v3 setCancelsTouchesInView:1];
  [v3 setDelaysTouchesBegan:0];
  [v3 setDelaysTouchesEnded:0];
  [(UIView *)self->_touchpadView addGestureRecognizer:v3];
}

- (void)handleTapGesture:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 state] == 3)
  {
    v5 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Handling tap gesture on touchpad %@", buf, 0xCu);
    }

    v6 = [(TVRUIStandardTouchProcessor *)self eventDelegate];
    if (v6)
    {
      v7 = v6;
      v8 = [(TVRUIStandardTouchProcessor *)self eventDelegate];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        [(TVRUIStandardTouchProcessor *)self _sendSelectButtonPressBegan];
        [(TVRUIStandardTouchProcessor *)self _sendSelectButtonPressEnded];
        [(TVRButtonHaptic *)self->_haptic userInteractionBegan];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __48__TVRUIStandardTouchProcessor_handleTapGesture___block_invoke;
        block[3] = &unk_279D87C20;
        block[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }
  }
}

- (void)handleLongPress:(id)a3
{
  v4 = a3;
  if ([v4 state] == 1)
  {
    [(TVRUIStandardTouchProcessor *)self _sendSelectButtonPressBegan];
  }

  else if ([v4 state] == 3 || objc_msgSend(v4, "state") == 4)
  {
    [(TVRUIStandardTouchProcessor *)self _sendSelectButtonPressEnded];
  }
}

- (void)_sendSelectButtonPressBegan
{
  v4 = [TVRUIButtonEvent createButtonEvent:1 buttonType:1];
  v3 = [(TVRUIStandardTouchProcessor *)self eventDelegate];
  [v3 generatedButtonEvent:v4];
}

- (void)_sendSelectButtonPressEnded
{
  v4 = [TVRUIButtonEvent createButtonEvent:2 buttonType:1];
  v3 = [(TVRUIStandardTouchProcessor *)self eventDelegate];
  [v3 generatedButtonEvent:v4];
}

- (_TVRUIEventDelegate)eventDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_eventDelegate);

  return WeakRetained;
}

- (CGRect)virtualBoundingBox
{
  x = self->_virtualBoundingBox.origin.x;
  y = self->_virtualBoundingBox.origin.y;
  width = self->_virtualBoundingBox.size.width;
  height = self->_virtualBoundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)startingPoint
{
  x = self->_startingPoint.x;
  y = self->_startingPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)touchesBegan:(uint64_t)a1 touches:(NSObject *)a2 withEvent:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_26CFEB000, a2, OS_LOG_TYPE_DEBUG, "TouchesBegan: touches: %@", &v2, 0xCu);
}

@end