@interface _UIInterruptScrollDecelerationGestureRecognizer
- (BOOL)_shouldReceiveTouch:(id)a3 forEvent:(id)a4 recognizerView:(id)a5;
- (void)_hoverCancelled:(id)a3 withEvent:(id)a4;
- (void)_hoverEntered:(id)a3 withEvent:(id)a4;
- (void)_hoverExited:(id)a3 withEvent:(id)a4;
- (void)_hoverMoved:(id)a3 withEvent:(id)a4;
- (void)_scrollingChangedWithEvent:(id)a3;
- (void)reset;
@end

@implementation _UIInterruptScrollDecelerationGestureRecognizer

- (void)reset
{
  v4.receiver = self;
  v4.super_class = _UIInterruptScrollDecelerationGestureRecognizer;
  [(UIGestureRecognizer *)&v4 reset];
  currentHoverEvent = self->_currentHoverEvent;
  self->_currentHoverEvent = 0;

  self->_previousTrackpadFingerDownCount = 0;
  self->_trackpadFingerDownCount = 0;
}

- (BOOL)_shouldReceiveTouch:(id)a3 forEvent:(id)a4 recognizerView:(id)a5
{
  v9 = [a4 type];
  if (v9)
  {
    v11.receiver = self;
    v11.super_class = _UIInterruptScrollDecelerationGestureRecognizer;
    LOBYTE(v9) = [(UIGestureRecognizer *)&v11 _shouldReceiveTouch:a3 forEvent:a4 recognizerView:a5];
  }

  return v9;
}

- (void)_hoverEntered:(id)a3 withEvent:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("InterruptScrollGesture", &_MergedGlobals_1_15);
  if (*CategoryCachedImpl)
  {
    v10 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412546;
      v14 = a3;
      v15 = 2112;
      v16 = a4;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "_hoverEntered: %@ withEvent: %@", &v13, 0x16u);
    }
  }

  if (!self->_currentHoverEvent)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&self->_currentHoverEvent, a4);
      v8 = [(UIEvent *)self->_currentHoverEvent _trackpadFingerDownCount];
      self->_trackpadFingerDownCount = v8;
      self->_previousTrackpadFingerDownCount = v8;
      v9 = __UILogGetCategoryCachedImpl("InterruptScrollGesture", &qword_1ED499310);
      if (*v9)
      {
        v11 = *(v9 + 8);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          trackpadFingerDownCount = self->_trackpadFingerDownCount;
          v13 = 134217984;
          v14 = trackpadFingerDownCount;
          _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "trackpadFingerDownCount (and previous) changed to %ld", &v13, 0xCu);
        }
      }
    }
  }
}

- (void)_hoverMoved:(id)a3 withEvent:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("InterruptScrollGesture", &qword_1ED499318);
  if (*CategoryCachedImpl)
  {
    v11 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412546;
      v17 = a3;
      v18 = 2112;
      v19 = a4;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "_hoverMoved: %@ withEvent: %@", &v16, 0x16u);
    }
  }

  if (self->_currentHoverEvent == a4)
  {
    self->_previousTrackpadFingerDownCount = self->_trackpadFingerDownCount;
    v8 = [a4 _trackpadFingerDownCount];
    self->_trackpadFingerDownCount = v8;
    if (self->_previousTrackpadFingerDownCount != v8)
    {
      v9 = __UILogGetCategoryCachedImpl("InterruptScrollGesture", &qword_1ED499320);
      if (*v9)
      {
        v12 = *(v9 + 8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          previousTrackpadFingerDownCount = self->_previousTrackpadFingerDownCount;
          trackpadFingerDownCount = self->_trackpadFingerDownCount;
          v16 = 134218240;
          v17 = previousTrackpadFingerDownCount;
          v18 = 2048;
          v19 = trackpadFingerDownCount;
          _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "trackpadFingerDownCount changed from %ld to %ld", &v16, 0x16u);
        }
      }

      if (!self->_previousTrackpadFingerDownCount && self->_trackpadFingerDownCount == 1)
      {
        v10 = __UILogGetCategoryCachedImpl("InterruptScrollGesture", &qword_1ED499328);
        if (*v10)
        {
          v15 = *(v10 + 8);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = 138412290;
            v17 = self;
            _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Trackpad finger down count went from 0 to 1, so recognizing: %@", &v16, 0xCu);
          }
        }

        [(UIGestureRecognizer *)self setState:3];
      }
    }
  }
}

- (void)_hoverExited:(id)a3 withEvent:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("InterruptScrollGesture", &qword_1ED499330);
  if (*CategoryCachedImpl)
  {
    v9 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412546;
      v12 = a3;
      v13 = 2112;
      v14 = a4;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "_hoverExited: %@ withEvent: %@", &v11, 0x16u);
    }
  }

  if (self->_currentHoverEvent == a4)
  {
    [(UIGestureRecognizer *)self setState:5];
    v8 = __UILogGetCategoryCachedImpl("InterruptScrollGesture", &qword_1ED499338);
    if (*v8)
    {
      v10 = *(v8 + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412290;
        v12 = self;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Failed: %@", &v11, 0xCu);
      }
    }
  }
}

- (void)_hoverCancelled:(id)a3 withEvent:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("InterruptScrollGesture", &qword_1ED499340);
  if (*CategoryCachedImpl)
  {
    v9 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412546;
      v12 = a3;
      v13 = 2112;
      v14 = a4;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "_hoverCancelled: %@ withEvent: %@", &v11, 0x16u);
    }
  }

  if (self->_currentHoverEvent == a4)
  {
    [(UIGestureRecognizer *)self setState:5];
    v8 = __UILogGetCategoryCachedImpl("InterruptScrollGesture", &qword_1ED499348);
    if (*v8)
    {
      v10 = *(v8 + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412290;
        v12 = self;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Failed: %@", &v11, 0xCu);
      }
    }
  }
}

- (void)_scrollingChangedWithEvent:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("InterruptScrollGesture", &qword_1ED499350);
  if (*CategoryCachedImpl)
  {
    v7 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = a3;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "_scrollingChangedWithEvent: %@", &v9, 0xCu);
    }
  }

  if ([a3 phase] == 1)
  {
    v6 = __UILogGetCategoryCachedImpl("InterruptScrollGesture", &qword_1ED499358);
    if (*v6)
    {
      v8 = *(v6 + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = 138412290;
        v10 = self;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Scroll event phase is MayBegin, so recognizing: %@", &v9, 0xCu);
      }
    }

    [(UIGestureRecognizer *)self setState:3];
  }
}

@end