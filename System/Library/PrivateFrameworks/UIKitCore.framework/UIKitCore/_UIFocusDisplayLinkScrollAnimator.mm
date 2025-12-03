@interface _UIFocusDisplayLinkScrollAnimator
- (BOOL)isAnimatingScrollableContainer:(id)container;
- (CGPoint)_applyAccelerationLimitToAcceleration:(CGPoint)acceleration currentOffset:(CGPoint)offset targetOffset:(CGPoint)targetOffset;
- (CGPoint)_hyperJumpContentOffsetIfNecessaryForEntry:(id)entry currentOffset:(CGPoint)offset;
- (CGPoint)currentVelocityForScrollableContainer:(id)container;
- (CGPoint)targetContentOffsetForScrollableContainer:(id)container;
- (CGPoint)velocityToScrollFromOffset:(CGPoint)offset toOffset:(CGPoint)toOffset;
- (_UIFocusDisplayLinkScrollAnimator)initWithScreen:(id)screen;
- (id)_createEntryForEnvironmentScrollableContainer:(id)container;
- (id)_entryForEnvironmentScrollableContainer:(id)container createIfNeeded:(BOOL)needed;
- (id)_entryForScrollableContainer:(id)container;
- (void)_commonHeartbeat;
- (void)_commonHeartbeat:(double)heartbeat;
- (void)_displayLinkHeartbeat:(id)heartbeat;
- (void)_processEntry:(id)entry timeDelta:(int64_t)delta completed:(id)completed cancelled:(id)cancelled;
- (void)_removeEntry:(id)entry;
- (void)_switchToTimerScrolling;
- (void)_updateHeartbeatConfiguration;
- (void)adjustTargetContentOffsetForScrollableContainer:(id)container byDelta:(CGPoint)delta;
- (void)cancelScrollingForScrollableContainer:(id)container;
- (void)dealloc;
- (void)setTargetContentOffset:(CGPoint)offset forEnvironmentScrollableContainer:(id)container convergenceRate:(double)rate completion:(id)completion;
@end

@implementation _UIFocusDisplayLinkScrollAnimator

- (void)dealloc
{
  [(CADisplayLink *)self->_displayLink invalidate];
  v3.receiver = self;
  v3.super_class = _UIFocusDisplayLinkScrollAnimator;
  [(_UIFocusDisplayLinkScrollAnimator *)&v3 dealloc];
}

- (_UIFocusDisplayLinkScrollAnimator)initWithScreen:(id)screen
{
  screenCopy = screen;
  v9.receiver = self;
  v9.super_class = _UIFocusDisplayLinkScrollAnimator;
  v6 = [(_UIFocusDisplayLinkScrollAnimator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_screen, screen);
  }

  return v7;
}

- (void)setTargetContentOffset:(CGPoint)offset forEnvironmentScrollableContainer:(id)container convergenceRate:(double)rate completion:(id)completion
{
  y = offset.y;
  x = offset.x;
  v11 = offset.y;
  v12 = offset.x;
  v26 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  completionCopy = completion;
  v15 = [(_UIFocusDisplayLinkScrollAnimator *)self _entryForEnvironmentScrollableContainer:containerCopy createIfNeeded:1];
  v16 = v15;
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v17 = *(__UILogGetCategoryCachedImpl("FocusScroll", &setTargetContentOffset_forEnvironmentScrollableContainer_convergenceRate_completion____s_category) + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = v17;
      scrollableContainer = [containerCopy scrollableContainer];
      v20 = 134218498;
      v21 = x;
      v22 = 2048;
      v23 = y;
      v24 = 2112;
      v25 = scrollableContainer;
      _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "Ignoring request to scroll container to non-finite location: (%g, %g) in %@", &v20, 0x20u);
    }
  }

  else
  {
    [v15 setTargetContentOffset:{x, y}];
  }

  [v16 setConvergenceRate:rate];
  [v16 setCompletion:completionCopy];

  [(_UIFocusDisplayLinkScrollAnimator *)self _updateHeartbeatConfiguration];
}

- (void)cancelScrollingForScrollableContainer:(id)container
{
  v4 = [(_UIFocusDisplayLinkScrollAnimator *)self _entryForScrollableContainer:container];
  if (v4)
  {
    v7 = v4;
    completion = [v4 completion];

    if (completion)
    {
      completion2 = [v7 completion];
      completion2[2](completion2, 0);
    }

    [(_UIFocusDisplayLinkScrollAnimator *)self _removeEntry:v7];
    [(_UIFocusDisplayLinkScrollAnimator *)self _updateHeartbeatConfiguration];
    v4 = v7;
  }
}

- (void)adjustTargetContentOffsetForScrollableContainer:(id)container byDelta:(CGPoint)delta
{
  y = delta.y;
  x = delta.x;
  v6 = [(_UIFocusDisplayLinkScrollAnimator *)self _entryForScrollableContainer:container];
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

- (BOOL)isAnimatingScrollableContainer:(id)container
{
  v3 = [(_UIFocusDisplayLinkScrollAnimator *)self _entryForScrollableContainer:container];
  v4 = v3 != 0;

  return v4;
}

- (CGPoint)targetContentOffsetForScrollableContainer:(id)container
{
  v3 = [(_UIFocusDisplayLinkScrollAnimator *)self _entryForScrollableContainer:container];
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

- (CGPoint)currentVelocityForScrollableContainer:(id)container
{
  v3 = [(_UIFocusDisplayLinkScrollAnimator *)self _entryForScrollableContainer:container];
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

- (CGPoint)velocityToScrollFromOffset:(CGPoint)offset toOffset:(CGPoint)toOffset
{
  y = toOffset.y;
  x = toOffset.x;
  v6 = offset.y;
  v7 = offset.x;
  v8 = pow(self->_defaultConvergenceRate, 16.0);
  v9 = v6 * v8 + y * (1.0 - v8) - v6;
  v10 = (v7 * v8 + x * (1.0 - v8) - v7) * 0.0625;
  v11 = v9 * 0.0625;
  result.y = v11;
  result.x = v10;
  return result;
}

- (id)_entryForScrollableContainer:(id)container
{
  containerCopy = container;
  singleScrollableContainerEntry = self->_singleScrollableContainerEntry;
  if (singleScrollableContainerEntry && (-[_UIFocusEngineScrollableContainerOffsets environmentScrollableContainer](singleScrollableContainerEntry, "environmentScrollableContainer"), v6 = objc_claimAutoreleasedReturnValue(), [v6 scrollableContainer], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7 == containerCopy))
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

    v9 = [(NSMapTable *)scrollableContainers objectForKey:containerCopy];
  }

  v10 = v9;
LABEL_8:

  return v10;
}

- (id)_entryForEnvironmentScrollableContainer:(id)container createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  containerCopy = container;
  scrollableContainer = [containerCopy scrollableContainer];
  singleScrollableContainerEntry = self->_singleScrollableContainerEntry;
  if (self->_scrollableContainers)
  {
    v9 = 0;
  }

  else
  {
    v9 = singleScrollableContainerEntry == 0;
  }

  if (!v9 || !neededCopy)
  {
    environmentScrollableContainer = [(_UIFocusEngineScrollableContainerOffsets *)singleScrollableContainerEntry environmentScrollableContainer];
    scrollableContainer2 = [environmentScrollableContainer scrollableContainer];

    v13 = self->_singleScrollableContainerEntry;
    if (scrollableContainer2 == scrollableContainer)
    {
      v22 = v13;
    }

    else
    {
      scrollableContainers = self->_scrollableContainers;
      if (v13 && neededCopy)
      {
        if (!scrollableContainers)
        {
          weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
          v16 = self->_scrollableContainers;
          self->_scrollableContainers = weakToStrongObjectsMapTable;
        }

        v22 = [(_UIFocusDisplayLinkScrollAnimator *)self _createEntryForEnvironmentScrollableContainer:containerCopy];
        [(NSMapTable *)self->_scrollableContainers setObject:v22 forKey:scrollableContainer];
        v18 = self->_singleScrollableContainerEntry;
        v17 = self->_scrollableContainers;
        environmentScrollableContainer2 = [(_UIFocusEngineScrollableContainerOffsets *)v18 environmentScrollableContainer];
        scrollableContainer3 = [environmentScrollableContainer2 scrollableContainer];
        [(NSMapTable *)v17 setObject:v18 forKey:scrollableContainer3];

        v21 = self->_singleScrollableContainerEntry;
        self->_singleScrollableContainerEntry = 0;
      }

      else if (scrollableContainers)
      {
        v22 = [(NSMapTable *)scrollableContainers objectForKey:scrollableContainer];
        if (!v22 && neededCopy)
        {
          v22 = [(_UIFocusDisplayLinkScrollAnimator *)self _createEntryForEnvironmentScrollableContainer:containerCopy];
          [(NSMapTable *)self->_scrollableContainers setObject:v22 forKey:scrollableContainer];
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
    v22 = [(_UIFocusDisplayLinkScrollAnimator *)self _createEntryForEnvironmentScrollableContainer:containerCopy];
    objc_storeStrong(&self->_singleScrollableContainerEntry, v22);
  }

  return v22;
}

- (id)_createEntryForEnvironmentScrollableContainer:(id)container
{
  v34 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  scrollableContainer = [containerCopy scrollableContainer];
  if ([scrollableContainer __isKindOfUIScrollView])
  {
    v6 = scrollableContainer;
    delegate = [v6 delegate];
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
    delegate = 0;
    v8 = 1;
  }

  v9 = objc_alloc_init(_UIFocusEngineScrollableContainerOffsets);
  [(_UIFocusEngineScrollableContainerOffsets *)v9 setAdjustsTargetsOnContentOffsetChanges:v8];
  [(_UIFocusEngineScrollableContainerOffsets *)v9 setEnvironmentScrollableContainer:containerCopy];
  [(_UIFocusEngineScrollableContainerOffsets *)v9 setScrollDelegate:delegate];
  [(_UIFocusEngineScrollableContainerOffsets *)v9 setConvergenceRate:self->_defaultConvergenceRate];
  [scrollableContainer contentOffset];
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
      owningEnvironment = [containerCopy owningEnvironment];
      if (owningEnvironment)
      {
        v16 = MEMORY[0x1E696AEC0];
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = [v16 stringWithFormat:@"<%@: %p>", v18, owningEnvironment];
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
      owningEnvironment2 = [containerCopy owningEnvironment];
      if (owningEnvironment2)
      {
        v23 = MEMORY[0x1E696AEC0];
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = [v23 stringWithFormat:@"<%@: %p>", v25, owningEnvironment2];
      }

      else
      {
        v26 = @"(nil)";
      }

      v27 = MEMORY[0x1E696AF00];
      v28 = v26;
      callStackSymbols = [v27 callStackSymbols];
      *buf = 138412546;
      v31 = v26;
      v32 = 2114;
      v33 = callStackSymbols;
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
      mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
      [(CADisplayLink *)v9 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

      _UIQOSManagedCommitsBegin(self, @"FocusScrollAnimation");
      v11 = @"Focus scroll animator, display link";
    }

    else
    {
      v17 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel__timerHeartbeat_ selector:0 userInfo:1 repeats:0.0166666667];
      v18 = self->_timer;
      self->_timer = v17;

      mainRunLoop2 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [mainRunLoop2 addTimer:self->_timer forMode:*MEMORY[0x1E695DA28]];

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

- (void)_displayLinkHeartbeat:(id)heartbeat
{
  heartbeatCopy = heartbeat;
  [heartbeatCopy timestamp];
  v5 = _UIMachTimeForMediaTime(v4);
  [heartbeatCopy targetTimestamp];
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

- (void)_commonHeartbeat:(double)heartbeat
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = (heartbeat * 1000.0);
  if (v3 >= 1)
  {
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    objectEnumerator = [(NSMapTable *)self->_scrollableContainers objectEnumerator];
    singleScrollableContainerEntry = self->_singleScrollableContainerEntry;
    if (singleScrollableContainerEntry)
    {
      [(_UIFocusDisplayLinkScrollAnimator *)self _processEntry:singleScrollableContainerEntry timeDelta:v3 completed:array cancelled:array2];
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v9 = objectEnumerator;
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

          [(_UIFocusDisplayLinkScrollAnimator *)self _processEntry:*(*(&v44 + 1) + 8 * i) timeDelta:v3 completed:array cancelled:array2];
        }

        v11 = [v9 countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v11);
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v14 = array2;
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
          completion = [v19 completion];

          if (completion)
          {
            completion2 = [v19 completion];
            completion2[2](completion2, 0);
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
    v22 = array;
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
          environmentScrollableContainer = [v27 environmentScrollableContainer];
          scrollableContainer = [environmentScrollableContainer scrollableContainer];
          [scrollableContainer setContentOffset:{v29, v31}];

          completion3 = [v27 completion];

          if (completion3)
          {
            completion4 = [v27 completion];
            completion4[2](completion4, 1);
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

- (void)_removeEntry:(id)entry
{
  v30 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  if ((*__UILogGetCategoryCachedImpl("", &qword_1ED49DF88) & 1) == 0)
  {
    v5 = *(__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DF98) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      environmentScrollableContainer = [(_UIFocusEngineScrollableContainerOffsets *)entryCopy environmentScrollableContainer];
      owningEnvironment = [environmentScrollableContainer owningEnvironment];
      if (owningEnvironment)
      {
        v8 = MEMORY[0x1E696AEC0];
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = [v8 stringWithFormat:@"<%@: %p>", v10, owningEnvironment];
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
      environmentScrollableContainer2 = [(_UIFocusEngineScrollableContainerOffsets *)entryCopy environmentScrollableContainer];
      owningEnvironment2 = [environmentScrollableContainer2 owningEnvironment];
      if (owningEnvironment2)
      {
        v19 = MEMORY[0x1E696AEC0];
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = [v19 stringWithFormat:@"<%@: %p>", v21, owningEnvironment2];
      }

      else
      {
        v22 = @"(nil)";
      }

      v23 = MEMORY[0x1E696AF00];
      v24 = v22;
      callStackSymbols = [v23 callStackSymbols];
      *buf = 138412546;
      v27 = v22;
      v28 = 2114;
      v29 = callStackSymbols;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Removing focus scroll animator entry for environment %@\n%{public}@", buf, 0x16u);
    }

    goto LABEL_7;
  }

LABEL_8:
  singleScrollableContainerEntry = self->_singleScrollableContainerEntry;
  if (singleScrollableContainerEntry == entryCopy)
  {
    self->_singleScrollableContainerEntry = 0;
  }

  scrollableContainers = self->_scrollableContainers;
  if (scrollableContainers)
  {
    environmentScrollableContainer3 = [(_UIFocusEngineScrollableContainerOffsets *)entryCopy environmentScrollableContainer];
    scrollableContainer = [environmentScrollableContainer3 scrollableContainer];
    [(NSMapTable *)scrollableContainers removeObjectForKey:scrollableContainer];
  }
}

- (void)_processEntry:(id)entry timeDelta:(int64_t)delta completed:(id)completed cancelled:(id)cancelled
{
  v70 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  completedCopy = completed;
  environmentScrollableContainer = [entryCopy environmentScrollableContainer];
  owningEnvironment = [environmentScrollableContainer owningEnvironment];

  if (!owningEnvironment)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusScrollAnimator.m" lineNumber:463 description:{@"Invalid parameter not satisfying: %@", @"owningEnvironment != nil"}];
  }

  [entryCopy lastContentOffset];
  v15 = v14;
  v17 = v16;
  [entryCopy targetContentOffset];
  v19 = v18;
  v21 = v20;
  v22 = vabdd_f64(v17, v20);
  if (vabdd_f64(v15, v18) < 0.5 && v22 < 0.5)
  {
    [completedCopy addObject:entryCopy];
  }

  else
  {
    [entryCopy convergenceRate];
    v25 = pow(v24, delta);
    v26 = v15 * v25 + v19 * (1.0 - v25);
    v27 = v17 * v25 + v21 * (1.0 - v25);
    [entryCopy lastVelocity];
    v29 = v28;
    v31 = v30;
    [(_UIFocusDisplayLinkScrollAnimator *)self _applyAccelerationLimitToAcceleration:(v26 - v15 - v28) currentOffset:(v27 - v17 - v30) targetOffset:v15, v17, v19, v21];
    v33 = v29 + v32;
    v35 = v31 + v34;
    [(_UIFocusDisplayLinkScrollAnimator *)self _hyperJumpContentOffsetIfNecessaryForEntry:entryCopy currentOffset:v15, v17];
    v37 = v36 + v33;
    v39 = v38 + v35;
    environmentScrollableContainer2 = [entryCopy environmentScrollableContainer];
    scrollableContainer = [environmentScrollableContainer2 scrollableContainer];

    [scrollableContainer contentOffset];
    v43 = v42;
    v45 = v44;
    [entryCopy lastRoundedOffset];
    v47 = v43 - v46;
    v49 = v45 - v48;
    if ((v47 != *MEMORY[0x1E695EFF8] || v49 != *(MEMORY[0x1E695EFF8] + 8)) && [entryCopy adjustsTargetsOnContentOffsetChanges])
    {
      v37 = v37 + v47;
      v39 = v39 + v49;
      [entryCopy targetContentOffset];
      [entryCopy setTargetContentOffset:{v47 + v50, v49 + v51}];
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
        v69 = scrollableContainer;
        _os_log_impl(&dword_188A29000, v58, OS_LOG_TYPE_ERROR, "Focus entry attempted to scroll container to non-finite location: (%g, %g) rounded to (%g, %g) in container %@", buf, 0x34u);
      }

      [completedCopy addObject:entryCopy];
    }

    else
    {
      [entryCopy setLastContentOffset:{v37, v39}];
      [entryCopy setLastRoundedOffset:{v54, v56}];
      [scrollableContainer setContentOffset:{v54, v56}];
      [entryCopy setLastVelocity:{v33, v35}];
    }
  }
}

- (CGPoint)_applyAccelerationLimitToAcceleration:(CGPoint)acceleration currentOffset:(CGPoint)offset targetOffset:(CGPoint)targetOffset
{
  y = targetOffset.y;
  x = targetOffset.x;
  v7 = offset.y;
  v8 = offset.x;
  v22 = *&acceleration.y;
  v9 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_FocusScrollAccelerationLimit, @"FocusScrollAccelerationLimit");
  v13 = acceleration.x;
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
  v17 = *vbslq_s8(v16, v10, acceleration).i64 == *vbslq_s8(v16, v10, v11).i64;
  v18 = -v14;
  if (v17)
  {
    if (acceleration.x <= v18)
    {
      v19 = -v14;
    }

    else
    {
      v19 = acceleration.x;
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

- (CGPoint)_hyperJumpContentOffsetIfNecessaryForEntry:(id)entry currentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  entryCopy = entry;
  if (_UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_FocusScrollPageLimit, @"FocusScrollPageLimit"))
  {
    v7 = 2.0;
  }

  else
  {
    v7 = *&qword_1EA95E470;
  }

  [entryCopy startContentOffset];
  v31 = v8;
  v10 = v9;
  [entryCopy targetContentOffset];
  v12 = v11;
  v14 = v13;
  environmentScrollableContainer = [entryCopy environmentScrollableContainer];

  scrollableContainer = [environmentScrollableContainer scrollableContainer];
  [scrollableContainer visibleSize];
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