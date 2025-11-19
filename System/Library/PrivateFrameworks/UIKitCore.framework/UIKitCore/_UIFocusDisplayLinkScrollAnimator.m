@interface _UIFocusDisplayLinkScrollAnimator
- (BOOL)isAnimatingScrollableContainer:(id)a3;
- (CGPoint)_applyAccelerationLimitToAcceleration:(CGPoint)a3 currentOffset:(CGPoint)a4 targetOffset:(CGPoint)a5;
- (CGPoint)_hyperJumpContentOffsetIfNecessaryForEntry:(id)a3 currentOffset:(CGPoint)a4;
- (CGPoint)currentVelocityForScrollableContainer:(id)a3;
- (CGPoint)targetContentOffsetForScrollableContainer:(id)a3;
- (CGPoint)velocityToScrollFromOffset:(CGPoint)a3 toOffset:(CGPoint)a4;
- (_UIFocusDisplayLinkScrollAnimator)initWithScreen:(id)a3;
- (id)_createEntryForEnvironmentScrollableContainer:(id)a3;
- (id)_entryForEnvironmentScrollableContainer:(id)a3 createIfNeeded:(BOOL)a4;
- (id)_entryForScrollableContainer:(id)a3;
- (void)_commonHeartbeat;
- (void)_commonHeartbeat:(double)a3;
- (void)_displayLinkHeartbeat:(id)a3;
- (void)_processEntry:(id)a3 timeDelta:(int64_t)a4 completed:(id)a5 cancelled:(id)a6;
- (void)_removeEntry:(id)a3;
- (void)_switchToTimerScrolling;
- (void)_updateHeartbeatConfiguration;
- (void)adjustTargetContentOffsetForScrollableContainer:(id)a3 byDelta:(CGPoint)a4;
- (void)cancelScrollingForScrollableContainer:(id)a3;
- (void)dealloc;
- (void)setTargetContentOffset:(CGPoint)a3 forEnvironmentScrollableContainer:(id)a4 convergenceRate:(double)a5 completion:(id)a6;
@end

@implementation _UIFocusDisplayLinkScrollAnimator

- (void)dealloc
{
  [(CADisplayLink *)self->_displayLink invalidate];
  v3.receiver = self;
  v3.super_class = _UIFocusDisplayLinkScrollAnimator;
  [(_UIFocusDisplayLinkScrollAnimator *)&v3 dealloc];
}

- (_UIFocusDisplayLinkScrollAnimator)initWithScreen:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _UIFocusDisplayLinkScrollAnimator;
  v6 = [(_UIFocusDisplayLinkScrollAnimator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_screen, a3);
  }

  return v7;
}

- (void)setTargetContentOffset:(CGPoint)a3 forEnvironmentScrollableContainer:(id)a4 convergenceRate:(double)a5 completion:(id)a6
{
  y = a3.y;
  x = a3.x;
  v11 = a3.y;
  v12 = a3.x;
  v26 = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a6;
  v15 = [(_UIFocusDisplayLinkScrollAnimator *)self _entryForEnvironmentScrollableContainer:v13 createIfNeeded:1];
  v16 = v15;
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v17 = *(__UILogGetCategoryCachedImpl("FocusScroll", &setTargetContentOffset_forEnvironmentScrollableContainer_convergenceRate_completion____s_category) + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = v17;
      v19 = [v13 scrollableContainer];
      v20 = 134218498;
      v21 = x;
      v22 = 2048;
      v23 = y;
      v24 = 2112;
      v25 = v19;
      _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "Ignoring request to scroll container to non-finite location: (%g, %g) in %@", &v20, 0x20u);
    }
  }

  else
  {
    [v15 setTargetContentOffset:{x, y}];
  }

  [v16 setConvergenceRate:a5];
  [v16 setCompletion:v14];

  [(_UIFocusDisplayLinkScrollAnimator *)self _updateHeartbeatConfiguration];
}

- (void)cancelScrollingForScrollableContainer:(id)a3
{
  v4 = [(_UIFocusDisplayLinkScrollAnimator *)self _entryForScrollableContainer:a3];
  if (v4)
  {
    v7 = v4;
    v5 = [v4 completion];

    if (v5)
    {
      v6 = [v7 completion];
      v6[2](v6, 0);
    }

    [(_UIFocusDisplayLinkScrollAnimator *)self _removeEntry:v7];
    [(_UIFocusDisplayLinkScrollAnimator *)self _updateHeartbeatConfiguration];
    v4 = v7;
  }
}

- (void)adjustTargetContentOffsetForScrollableContainer:(id)a3 byDelta:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = [(_UIFocusDisplayLinkScrollAnimator *)self _entryForScrollableContainer:a3];
  if (v6)
  {
    v11 = v6;
    [v6 targetContentOffset];
    [v11 setTargetContentOffset:{x + v7, y + v8}];
    [v11 lastContentOffset];
    [v11 setLastContentOffset:{x + v9, y + v10}];
    v6 = v11;
  }
}

- (BOOL)isAnimatingScrollableContainer:(id)a3
{
  v3 = [(_UIFocusDisplayLinkScrollAnimator *)self _entryForScrollableContainer:a3];
  v4 = v3 != 0;

  return v4;
}

- (CGPoint)targetContentOffsetForScrollableContainer:(id)a3
{
  v3 = [(_UIFocusDisplayLinkScrollAnimator *)self _entryForScrollableContainer:a3];
  v4 = v3;
  if (v3)
  {
    [v3 targetContentOffset];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v6 = *MEMORY[0x1E695EFF8];
    v8 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGPoint)currentVelocityForScrollableContainer:(id)a3
{
  v3 = [(_UIFocusDisplayLinkScrollAnimator *)self _entryForScrollableContainer:a3];
  v4 = v3;
  if (v3)
  {
    [v3 lastContentOffset];
    v19 = v5;
    v17 = v6;
    [v4 targetContentOffset];
    v18 = v7;
    v16 = v8;
    [v4 convergenceRate];
    v10 = pow(v9, 16.0);
    v11.f64[0] = v19;
    v12.f64[0] = v18;
    v11.f64[1] = v17;
    v12.f64[1] = v16;
    v13 = vmulq_f64(vsubq_f64(vaddq_f64(vmulq_n_f64(v11, v10), vmulq_n_f64(v12, 1.0 - v10)), v11), vdupq_n_s64(0x3FB0000000000000uLL));
  }

  else
  {
    v13 = *MEMORY[0x1E695EFF8];
  }

  v20 = v13;

  v15 = v20.f64[1];
  v14 = v20.f64[0];
  result.y = v15;
  result.x = v14;
  return result;
}

- (CGPoint)velocityToScrollFromOffset:(CGPoint)a3 toOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v8 = pow(self->_defaultConvergenceRate, 16.0);
  v9 = v6 * v8 + y * (1.0 - v8) - v6;
  v10 = (v7 * v8 + x * (1.0 - v8) - v7) * 0.0625;
  v11 = v9 * 0.0625;
  result.y = v11;
  result.x = v10;
  return result;
}

- (id)_entryForScrollableContainer:(id)a3
{
  v4 = a3;
  singleScrollableContainerEntry = self->_singleScrollableContainerEntry;
  if (singleScrollableContainerEntry && (-[_UIFocusEngineScrollableContainerOffsets environmentScrollableContainer](singleScrollableContainerEntry, "environmentScrollableContainer"), v6 = objc_claimAutoreleasedReturnValue(), [v6 scrollableContainer], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7 == v4))
  {
    v9 = self->_singleScrollableContainerEntry;
  }

  else
  {
    scrollableContainers = self->_scrollableContainers;
    if (!scrollableContainers)
    {
      v10 = 0;
      goto LABEL_8;
    }

    v9 = [(NSMapTable *)scrollableContainers objectForKey:v4];
  }

  v10 = v9;
LABEL_8:

  return v10;
}

- (id)_entryForEnvironmentScrollableContainer:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 scrollableContainer];
  singleScrollableContainerEntry = self->_singleScrollableContainerEntry;
  if (self->_scrollableContainers)
  {
    v9 = 0;
  }

  else
  {
    v9 = singleScrollableContainerEntry == 0;
  }

  if (!v9 || !v4)
  {
    v11 = [(_UIFocusEngineScrollableContainerOffsets *)singleScrollableContainerEntry environmentScrollableContainer];
    v12 = [v11 scrollableContainer];

    v13 = self->_singleScrollableContainerEntry;
    if (v12 == v7)
    {
      v22 = v13;
    }

    else
    {
      scrollableContainers = self->_scrollableContainers;
      if (v13 && v4)
      {
        if (!scrollableContainers)
        {
          v15 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
          v16 = self->_scrollableContainers;
          self->_scrollableContainers = v15;
        }

        v22 = [(_UIFocusDisplayLinkScrollAnimator *)self _createEntryForEnvironmentScrollableContainer:v6];
        [(NSMapTable *)self->_scrollableContainers setObject:v22 forKey:v7];
        v18 = self->_singleScrollableContainerEntry;
        v17 = self->_scrollableContainers;
        v19 = [(_UIFocusEngineScrollableContainerOffsets *)v18 environmentScrollableContainer];
        v20 = [v19 scrollableContainer];
        [(NSMapTable *)v17 setObject:v18 forKey:v20];

        v21 = self->_singleScrollableContainerEntry;
        self->_singleScrollableContainerEntry = 0;
      }

      else if (scrollableContainers)
      {
        v22 = [(NSMapTable *)scrollableContainers objectForKey:v7];
        if (!v22 && v4)
        {
          v22 = [(_UIFocusDisplayLinkScrollAnimator *)self _createEntryForEnvironmentScrollableContainer:v6];
          [(NSMapTable *)self->_scrollableContainers setObject:v22 forKey:v7];
        }
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = [(_UIFocusDisplayLinkScrollAnimator *)self _createEntryForEnvironmentScrollableContainer:v6];
    objc_storeStrong(&self->_singleScrollableContainerEntry, v22);
  }

  return v22;
}

- (id)_createEntryForEnvironmentScrollableContainer:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 scrollableContainer];
  if ([v5 __isKindOfUIScrollView])
  {
    v6 = v5;
    v7 = [v6 delegate];
    if ([v6 _adjustsTargetsOnContentOffsetChanges])
    {
      v8 = [v6 isScrollAnimating] ^ 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v7 = 0;
    v8 = 1;
  }

  v9 = objc_alloc_init(_UIFocusEngineScrollableContainerOffsets);
  [(_UIFocusEngineScrollableContainerOffsets *)v9 setAdjustsTargetsOnContentOffsetChanges:v8];
  [(_UIFocusEngineScrollableContainerOffsets *)v9 setEnvironmentScrollableContainer:v4];
  [(_UIFocusEngineScrollableContainerOffsets *)v9 setScrollDelegate:v7];
  [(_UIFocusEngineScrollableContainerOffsets *)v9 setConvergenceRate:self->_defaultConvergenceRate];
  [v5 contentOffset];
  v11 = v10;
  v13 = v12;
  [(_UIFocusEngineScrollableContainerOffsets *)v9 setStartContentOffset:?];
  [(_UIFocusEngineScrollableContainerOffsets *)v9 setTargetContentOffset:v11, v13];
  [(_UIFocusEngineScrollableContainerOffsets *)v9 setLastContentOffset:v11, v13];
  [(_UIFocusEngineScrollableContainerOffsets *)v9 setLastRoundedOffset:v11, v13];
  if ((*__UILogGetCategoryCachedImpl("", &_MergedGlobals_1103) & 1) == 0)
  {
    v14 = *(__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DF80) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v4 owningEnvironment];
      if (v15)
      {
        v16 = MEMORY[0x1E696AEC0];
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = [v16 stringWithFormat:@"<%@: %p>", v18, v15];
      }

      else
      {
        v19 = @"(nil)";
      }

      *buf = 138412290;
      v31 = v19;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "Creating focus scroll animator entry for environment %@", buf, 0xCu);
    }

LABEL_13:

    goto LABEL_14;
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DF78);
  if (*CategoryCachedImpl)
  {
    v14 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v22 = [v4 owningEnvironment];
      if (v22)
      {
        v23 = MEMORY[0x1E696AEC0];
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = [v23 stringWithFormat:@"<%@: %p>", v25, v22];
      }

      else
      {
        v26 = @"(nil)";
      }

      v27 = MEMORY[0x1E696AF00];
      v28 = v26;
      v29 = [v27 callStackSymbols];
      *buf = 138412546;
      v31 = v26;
      v32 = 2114;
      v33 = v29;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Creating focus scroll animator entry for environment %@\n%{public}@", buf, 0x16u);
    }

    goto LABEL_13;
  }

LABEL_14:

  return v9;
}

- (void)_switchToTimerScrolling
{
  displayLink = self->_displayLink;
  [(CADisplayLink *)displayLink invalidate];
  v4 = self->_displayLink;
  self->_displayLink = 0;

  if (displayLink)
  {
    _UIQOSManagedCommitsEnd(self, @"FocusScrollAnimation");
    [(_UIFocusDisplayLinkScrollAnimator *)self _updateHeartbeatConfiguration];
    if ([(_UIFocusDisplayLinkScrollAnimator *)self _shouldPushAndPopRunLoopModes])
    {
      v5 = UIApp;

      [v5 _popRunLoopMode:@"UITrackingRunLoopMode" requester:self reason:{@"Focus scroll animator, display link switched to timer"}];
    }
  }

  else
  {

    [(_UIFocusDisplayLinkScrollAnimator *)self _updateHeartbeatConfiguration];
  }
}

- (void)_updateHeartbeatConfiguration
{
  displayLink = self->_displayLink;
  timer = self->_timer;
  if (self->_singleScrollableContainerEntry)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [(NSMapTable *)self->_scrollableContainers count]!= 0;
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  if (displayLink)
  {
    v6 = 0;
  }

  else
  {
    v6 = timer == 0;
  }

  if (v6)
  {
    self->_lastHeartbeatTime = CFAbsoluteTimeGetCurrent();
    if ([(_UIFocusDisplayLinkScrollAnimator *)self _canCreateDisplayLink])
    {
      v7 = [(UIScreen *)self->_screen displayLinkWithTarget:self selector:sel__displayLinkHeartbeat_];
      v8 = self->_displayLink;
      self->_displayLink = v7;

      v9 = self->_displayLink;
      v10 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [(CADisplayLink *)v9 addToRunLoop:v10 forMode:*MEMORY[0x1E695DA28]];

      _UIQOSManagedCommitsBegin(self, @"FocusScrollAnimation");
      v11 = @"Focus scroll animator, display link";
    }

    else
    {
      v17 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel__timerHeartbeat_ selector:0 userInfo:1 repeats:0.0166666667];
      v18 = self->_timer;
      self->_timer = v17;

      v19 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [v19 addTimer:self->_timer forMode:*MEMORY[0x1E695DA28]];

      v11 = @"Focus scroll animator, timer";
    }

    if ([(_UIFocusDisplayLinkScrollAnimator *)self _shouldPushAndPopRunLoopModes])
    {
      v20 = UIApp;

      [v20 _pushRunLoopMode:@"UITrackingRunLoopMode" requester:self reason:v11];
    }

    return;
  }

LABEL_11:
  if (displayLink)
  {
    v12 = v5;
  }

  else
  {
    v12 = 1;
  }

  if ((v12 & 1) == 0)
  {
    [(CADisplayLink *)self->_displayLink invalidate];
    v16 = self->_displayLink;
    self->_displayLink = 0;

    _UIQOSManagedCommitsEnd(self, @"FocusScrollAnimation");
    if (![(_UIFocusDisplayLinkScrollAnimator *)self _shouldPushAndPopRunLoopModes])
    {
      return;
    }

    v14 = UIApp;
    v15 = @"Focus scroll animator, display link";
    goto LABEL_22;
  }

  if (!timer)
  {
    LOBYTE(v5) = 1;
  }

  if (!v5)
  {
    [(NSTimer *)self->_timer invalidate];
    v13 = self->_timer;
    self->_timer = 0;

    if ([(_UIFocusDisplayLinkScrollAnimator *)self _shouldPushAndPopRunLoopModes])
    {
      v14 = UIApp;
      v15 = @"Focus scroll animator, timer";
LABEL_22:

      [v14 _popRunLoopMode:@"UITrackingRunLoopMode" requester:self reason:v15];
    }
  }
}

- (void)_displayLinkHeartbeat:(id)a3
{
  v8 = a3;
  [v8 timestamp];
  v5 = _UIMachTimeForMediaTime(v4);
  [v8 targetTimestamp];
  v7 = _UIMachTimeForMediaTime(v6);
  _UIQOSProcessingBegin("UIFocusScrollAnimator", 0, v5, v7);
  [(_UIFocusDisplayLinkScrollAnimator *)self _commonHeartbeat];
  _UIQOSProcessingEnd();
}

- (void)_commonHeartbeat
{
  Current = CFAbsoluteTimeGetCurrent();
  [(_UIFocusDisplayLinkScrollAnimator *)self _commonHeartbeat:Current - self->_lastHeartbeatTime];
  self->_lastHeartbeatTime = Current;
}

- (void)_commonHeartbeat:(double)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = (a3 * 1000.0);
  if (v3 >= 1)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = [(NSMapTable *)self->_scrollableContainers objectEnumerator];
    singleScrollableContainerEntry = self->_singleScrollableContainerEntry;
    if (singleScrollableContainerEntry)
    {
      [(_UIFocusDisplayLinkScrollAnimator *)self _processEntry:singleScrollableContainerEntry timeDelta:v3 completed:v5 cancelled:v6];
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v45;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v45 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [(_UIFocusDisplayLinkScrollAnimator *)self _processEntry:*(*(&v44 + 1) + 8 * i) timeDelta:v3 completed:v5 cancelled:v6];
        }

        v11 = [v9 countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v11);
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v14 = v6;
    v15 = [v14 countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v41;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v41 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v40 + 1) + 8 * j);
          v20 = [v19 completion];

          if (v20)
          {
            v21 = [v19 completion];
            v21[2](v21, 0);
          }

          [(_UIFocusDisplayLinkScrollAnimator *)self _removeEntry:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v40 objects:v49 count:16];
      }

      while (v16);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v22 = v5;
    v23 = [v22 countByEnumeratingWithState:&v36 objects:v48 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v37;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v37 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v36 + 1) + 8 * k);
          [v27 targetContentOffset];
          v29 = v28;
          v31 = v30;
          v32 = [v27 environmentScrollableContainer];
          v33 = [v32 scrollableContainer];
          [v33 setContentOffset:{v29, v31}];

          v34 = [v27 completion];

          if (v34)
          {
            v35 = [v27 completion];
            v35[2](v35, 1);
          }

          [(_UIFocusDisplayLinkScrollAnimator *)self _removeEntry:v27];
        }

        v24 = [v22 countByEnumeratingWithState:&v36 objects:v48 count:16];
      }

      while (v24);
    }

    [(_UIFocusDisplayLinkScrollAnimator *)self _updateHeartbeatConfiguration];
  }
}

- (void)_removeEntry:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((*__UILogGetCategoryCachedImpl("", &qword_1ED49DF88) & 1) == 0)
  {
    v5 = *(__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DF98) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(_UIFocusEngineScrollableContainerOffsets *)v4 environmentScrollableContainer];
      v7 = [v6 owningEnvironment];
      if (v7)
      {
        v8 = MEMORY[0x1E696AEC0];
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = [v8 stringWithFormat:@"<%@: %p>", v10, v7];
      }

      else
      {
        v11 = @"(nil)";
      }

      *buf = 138412290;
      v27 = v11;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Removing focus scroll animator entry for environment %@", buf, 0xCu);
    }

LABEL_7:

    goto LABEL_8;
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DF90);
  if (*CategoryCachedImpl)
  {
    v5 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v17 = [(_UIFocusEngineScrollableContainerOffsets *)v4 environmentScrollableContainer];
      v18 = [v17 owningEnvironment];
      if (v18)
      {
        v19 = MEMORY[0x1E696AEC0];
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = [v19 stringWithFormat:@"<%@: %p>", v21, v18];
      }

      else
      {
        v22 = @"(nil)";
      }

      v23 = MEMORY[0x1E696AF00];
      v24 = v22;
      v25 = [v23 callStackSymbols];
      *buf = 138412546;
      v27 = v22;
      v28 = 2114;
      v29 = v25;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Removing focus scroll animator entry for environment %@\n%{public}@", buf, 0x16u);
    }

    goto LABEL_7;
  }

LABEL_8:
  singleScrollableContainerEntry = self->_singleScrollableContainerEntry;
  if (singleScrollableContainerEntry == v4)
  {
    self->_singleScrollableContainerEntry = 0;
  }

  scrollableContainers = self->_scrollableContainers;
  if (scrollableContainers)
  {
    v14 = [(_UIFocusEngineScrollableContainerOffsets *)v4 environmentScrollableContainer];
    v15 = [v14 scrollableContainer];
    [(NSMapTable *)scrollableContainers removeObjectForKey:v15];
  }
}

- (void)_processEntry:(id)a3 timeDelta:(int64_t)a4 completed:(id)a5 cancelled:(id)a6
{
  v70 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = [v10 environmentScrollableContainer];
  v13 = [v12 owningEnvironment];

  if (!v13)
  {
    v59 = [MEMORY[0x1E696AAA8] currentHandler];
    [v59 handleFailureInMethod:a2 object:self file:@"_UIFocusScrollAnimator.m" lineNumber:463 description:{@"Invalid parameter not satisfying: %@", @"owningEnvironment != nil"}];
  }

  [v10 lastContentOffset];
  v15 = v14;
  v17 = v16;
  [v10 targetContentOffset];
  v19 = v18;
  v21 = v20;
  v22 = vabdd_f64(v17, v20);
  if (vabdd_f64(v15, v18) < 0.5 && v22 < 0.5)
  {
    [v11 addObject:v10];
  }

  else
  {
    [v10 convergenceRate];
    v25 = pow(v24, a4);
    v26 = v15 * v25 + v19 * (1.0 - v25);
    v27 = v17 * v25 + v21 * (1.0 - v25);
    [v10 lastVelocity];
    v29 = v28;
    v31 = v30;
    [(_UIFocusDisplayLinkScrollAnimator *)self _applyAccelerationLimitToAcceleration:(v26 - v15 - v28) currentOffset:(v27 - v17 - v30) targetOffset:v15, v17, v19, v21];
    v33 = v29 + v32;
    v35 = v31 + v34;
    [(_UIFocusDisplayLinkScrollAnimator *)self _hyperJumpContentOffsetIfNecessaryForEntry:v10 currentOffset:v15, v17];
    v37 = v36 + v33;
    v39 = v38 + v35;
    v40 = [v10 environmentScrollableContainer];
    v41 = [v40 scrollableContainer];

    [v41 contentOffset];
    v43 = v42;
    v45 = v44;
    [v10 lastRoundedOffset];
    v47 = v43 - v46;
    v49 = v45 - v48;
    if ((v47 != *MEMORY[0x1E695EFF8] || v49 != *(MEMORY[0x1E695EFF8] + 8)) && [v10 adjustsTargetsOnContentOffsetChanges])
    {
      v37 = v37 + v47;
      v39 = v39 + v49;
      [v10 targetContentOffset];
      [v10 setTargetContentOffset:{v47 + v50, v49 + v51}];
    }

    v52 = +[UIWindow _applicationKeyWindow];
    [v52 _currentScreenScale];
    v54 = UIPointRoundToScale(v37, v39, v53);
    v56 = v55;
    v57 = v55;

    if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v57 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      v58 = *(__UILogGetCategoryCachedImpl("FocusScroll", &_processEntry_timeDelta_completed_cancelled____s_category) + 8);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        *buf = 134219010;
        v61 = v37;
        v62 = 2048;
        v63 = v39;
        v64 = 2048;
        v65 = v54;
        v66 = 2048;
        v67 = v56;
        v68 = 2112;
        v69 = v41;
        _os_log_impl(&dword_188A29000, v58, OS_LOG_TYPE_ERROR, "Focus entry attempted to scroll container to non-finite location: (%g, %g) rounded to (%g, %g) in container %@", buf, 0x34u);
      }

      [v11 addObject:v10];
    }

    else
    {
      [v10 setLastContentOffset:{v37, v39}];
      [v10 setLastRoundedOffset:{v54, v56}];
      [v41 setContentOffset:{v54, v56}];
      [v10 setLastVelocity:{v33, v35}];
    }
  }
}

- (CGPoint)_applyAccelerationLimitToAcceleration:(CGPoint)a3 currentOffset:(CGPoint)a4 targetOffset:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4.y;
  v8 = a4.x;
  v22 = *&a3.y;
  v9 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_FocusScrollAccelerationLimit, @"FocusScrollAccelerationLimit");
  v13 = a3.x;
  if (v9)
  {
    v14 = 10.0;
  }

  else
  {
    v14 = *&qword_1EA95E460;
  }

  *v11.i64 = x - v8;
  v10.i64[0] = 1.0;
  v15.f64[0] = NAN;
  v15.f64[1] = NAN;
  v16 = vnegq_f64(v15);
  v17 = *vbslq_s8(v16, v10, a3).i64 == *vbslq_s8(v16, v10, v11).i64;
  v18 = -v14;
  if (v17)
  {
    if (a3.x <= v18)
    {
      v19 = -v14;
    }

    else
    {
      v19 = a3.x;
    }

    if (v14 <= v19)
    {
      v13 = v14;
    }

    else
    {
      v13 = v19;
    }
  }

  v20 = *v22.i64;
  *v12.i64 = y - v7;
  if (*vbslq_s8(v16, v10, v22).i64 == *vbslq_s8(v16, v10, v12).i64)
  {
    if (*v22.i64 <= v18)
    {
      v20 = -v14;
    }

    if (v14 <= v20)
    {
      v20 = v14;
    }
  }

  result.y = v20;
  result.x = v13;
  return result;
}

- (CGPoint)_hyperJumpContentOffsetIfNecessaryForEntry:(id)a3 currentOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3;
  if (_UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_FocusScrollPageLimit, @"FocusScrollPageLimit"))
  {
    v7 = 2.0;
  }

  else
  {
    v7 = *&qword_1EA95E470;
  }

  [v6 startContentOffset];
  v31 = v8;
  v10 = v9;
  [v6 targetContentOffset];
  v12 = v11;
  v14 = v13;
  v15 = [v6 environmentScrollableContainer];

  v16 = [v15 scrollableContainer];
  [v16 visibleSize];
  v18 = v17;
  v20 = v19;

  *v22.i64 = v14 - y;
  v23 = fabs(v12 - x);
  *v24.i64 = v7 * v18;
  v25 = vabdd_f64(x, v31) < v18 || v23 < *v24.i64;
  v26.f64[0] = NAN;
  v26.f64[1] = NAN;
  v27 = vnegq_f64(v26);
  *v21.i64 = v12 - x;
  *v21.i64 = v12 - *vbslq_s8(v27, v24, v21).i64;
  if (v25)
  {
    *v21.i64 = x;
  }

  v28 = fabs(*v22.i64);
  *v24.i64 = v7 * v20;
  v29 = fabs(y - v10) < v20 || v28 < *v24.i64;
  v30 = v14 - *vbslq_s8(v27, v24, v22).i64;
  if (v29)
  {
    v30 = y;
  }

  result.x = *v21.i64;
  result.y = v30;
  return result;
}

@end