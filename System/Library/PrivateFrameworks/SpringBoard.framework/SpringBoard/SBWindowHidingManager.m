@interface SBWindowHidingManager
- (BOOL)_isHidingWindowLevel:(double)a3;
- (SBWindowHidingManager)initWithWindowScene:(id)a3;
- (id)dumpHidingState;
- (id)dumpKnownWindows;
- (void)_adjustWindowsForActiveHideRange;
- (void)_captureWindow:(id)a3;
- (void)_recomputeHideRangeAndAdjustWindows;
- (void)_releaseWindow:(id)a3;
- (void)_takeNoteOfWindow:(id)a3 onScene:(id)a4;
- (void)_window:(id)a3 willDetachFromScene:(id)a4;
- (void)sceneHandle:(id)a3 didUpdateSettingsWithDiff:(id)a4 previousSettings:(id)a5;
- (void)setAlpha:(double)a3 forWindow:(id)a4;
- (void)startHidingWindowsExclusivelyFromLevel:(double)a3 toLevel:(double)a4 forContext:(id)a5 reason:(id)a6;
- (void)stopHidingWindowsForContext:(id)a3;
@end

@implementation SBWindowHidingManager

- (SBWindowHidingManager)initWithWindowScene:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = SBWindowHidingManager;
  v5 = [(SBWindowHidingManager *)&v23 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_windowScene, v4);
    v7 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    hidingContextMap = v6->_hidingContextMap;
    v6->_hidingContextMap = v7;

    v9 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    windowStateMap = v6->_windowStateMap;
    v6->_windowStateMap = v9;

    v6->_hideRange = xmmword_21F8A8BA0;
    v11 = objc_alloc_init(MEMORY[0x277D0AD48]);
    v12 = [MEMORY[0x277D0ADC0] identityForIdentifier:*MEMORY[0x277D22AC8]];
    [v11 setIdentity:v12];

    v13 = [v4 _FBSScene];
    v14 = [v13 settings];
    v15 = [v14 displayIdentity];

    v16 = [objc_alloc(MEMORY[0x277D67970]) _initWithDefinition:v11 displayIdentity:v15];
    keyboardSceneHandle = v6->_keyboardSceneHandle;
    v6->_keyboardSceneHandle = v16;

    [(SBSceneHandle *)v6->_keyboardSceneHandle addObserver:v6];
    v18 = [v4 windows];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __45__SBWindowHidingManager_initWithWindowScene___block_invoke;
    v20[3] = &unk_2783C4D38;
    v21 = v6;
    v22 = v4;
    [v18 enumerateObjectsUsingBlock:v20];
  }

  return v6;
}

- (void)_window:(id)a3 willDetachFromScene:(id)a4
{
  v9 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v8 = [v6 isEqual:WeakRetained];

  if (v8)
  {
    [(SBWindowHidingManager *)self _releaseWindow:v9];
  }
}

- (void)setAlpha:(double)a3 forWindow:(id)a4
{
  v6 = a4;
  v7 = [(NSMapTable *)self->_windowStateMap objectForKey:v6];
  if (!v7)
  {
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "SBWindowManager changing alpha for an untracked window. It may be untracked if the alpha change occurred while it was still hidden.", v9, 2u);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [v6 setAlpha:a3];
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  [v6 windowLevel];
  if (![(SBWindowHidingManager *)self _isHidingWindowLevel:?])
  {
LABEL_7:
    [v6 setAlphaAndObeyBecauseIAmTheWindowManager:a3];
    goto LABEL_9;
  }

  [v7 setDesiredAlpha:a3];
LABEL_9:
}

- (void)startHidingWindowsExclusivelyFromLevel:(double)a3 toLevel:(double)a4 forContext:(id)a5 reason:(id)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  if (a4 >= a3)
  {
    v14 = [(NSMapTable *)self->_hidingContextMap objectForKey:v10];
    if (v14)
    {
      v15 = SBLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        [v14 windowLevelRange];
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%.f, %.f)", v16, v17];
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%.f, %.f)", *&a3, *&a4];
        *buf = 134218754;
        v21 = v10;
        v22 = 2112;
        v23 = v10;
        v24 = 2112;
        v25 = v18;
        v26 = 2112;
        v27 = v19;
        _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_INFO, "Context %p (%@) updating hide window request %@ -> %@", buf, 0x2Au);
      }
    }

    v12 = [SBWindowHideRequest hideRequestWithWindowLevelRange:v11 reason:a3, a4];

    [(NSMapTable *)self->_hidingContextMap setObject:v12 forKey:v10];
    [(SBWindowHidingManager *)self _recomputeHideRangeAndAdjustWindows];
  }

  else
  {
    v12 = SBLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%.f, %.f)", *&a3, *&a4];
      *buf = 134218498;
      v21 = v10;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_INFO, "Context %p (%@) passed an invalid window level range %@", buf, 0x20u);
    }
  }
}

- (void)stopHidingWindowsForContext:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMapTable *)self->_hidingContextMap objectForKey:v4];
  v6 = SBLogCommon();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v12 = 134218242;
      v13 = v4;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "Context %p (%@) cleared.", &v12, 0x16u);
    }

    [(NSMapTable *)self->_hidingContextMap removeObjectForKey:v4];
    [(SBWindowHidingManager *)self _recomputeHideRangeAndAdjustWindows];
  }

  else
  {
    if (v7)
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = 134218242;
      v13 = v4;
      v14 = 2114;
      v15 = v11;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "Stop hiding request from unknown context %p (%{public}@) ignored", &v12, 0x16u);
    }
  }
}

- (void)_recomputeHideRangeAndAdjustWindows
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(SBWindowHidingManager *)self _isHidingWindows])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = [(NSMapTable *)self->_hidingContextMap objectEnumerator];
    v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
      v7 = 0.0;
      v8 = -1.0;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v17 + 1) + 8 * i) windowLevelRange];
          if (v8 < v7)
          {
            v12 = v11;
          }

          else
          {
            v12 = v8;
          }

          if (v8 < v7)
          {
            v13 = v10;
          }

          else
          {
            v13 = v7;
          }

          if (v7 >= v10)
          {
            v14 = v10;
          }

          else
          {
            v14 = v7;
          }

          if (v8 >= v11)
          {
            v15 = v8;
          }

          else
          {
            v15 = v11;
          }

          v16 = v8 < v7 || v11 < v10;
          if (v16)
          {
            v8 = v12;
          }

          else
          {
            v8 = v15;
          }

          if (v16)
          {
            v7 = v13;
          }

          else
          {
            v7 = v14;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v5);
    }

    else
    {
      v7 = 0.0;
      v8 = -1.0;
    }
  }

  else
  {
    v7 = 0.0;
    v8 = -1.0;
  }

  self->_hideRange.start = v7;
  self->_hideRange.end = v8;
  [(SBWindowHidingManager *)self _adjustWindowsForActiveHideRange];
}

- (void)_adjustWindowsForActiveHideRange
{
  v34 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277D75940] _synchronizeDrawing];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [(NSMapTable *)self->_windowStateMap keyEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v30;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        v9 = [(NSMapTable *)self->_windowStateMap objectForKey:v8];
        [v8 windowLevel];
        v11 = v10;
        if ([(SBWindowHidingManager *)self _isHidingWindows]&& (start = self->_hideRange.start, end = self->_hideRange.end, end >= start))
        {
          v15 = end > v11 && start < v11;
          v14 = [v9 isHidden];
          if (v15 && (v14 & 1) == 0)
          {
            [v8 alpha];
            [v9 setDesiredAlpha:?];
            [v9 setHidden:1];
            v16 = 0.0;
            goto LABEL_18;
          }
        }

        else
        {
          v14 = [v9 isHidden];
          LOBYTE(v15) = 0;
        }

        if (!v15 && v14)
        {
          [v9 setHidden:0];
          [v9 desiredAlpha];
LABEL_18:
          [v8 setAlphaAndObeyBecauseIAmTheWindowManager:v16];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v5);
  }

  v17 = [(SBSceneHandle *)self->_keyboardSceneHandle sceneIfExists];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 settings];
    [v19 level];
    v21 = v20;

    v22 = [v18 uiPresentationManager];
    if (![(SBWindowHidingManager *)self _isHidingWindows]|| (v23 = self->_hideRange.start, v24 = self->_hideRange.end, v24 < v23) || (v23 < v21 ? (v25 = v24 <= v21) : (v25 = 1), v25))
    {
      [(UIScenePresenter *)self->_keyboardPresenter invalidate];
      keyboardPresenter = self->_keyboardPresenter;
      self->_keyboardPresenter = 0;
    }

    else
    {
      if (self->_keyboardPresenter)
      {
        goto LABEL_31;
      }

      v27 = [v22 createPresenterWithIdentifier:@"SBWindowHidingManager" priority:-5];
      v28 = self->_keyboardPresenter;
      self->_keyboardPresenter = v27;

      [(UIScenePresenter *)self->_keyboardPresenter activate];
      keyboardPresenter = [(UIScenePresenter *)self->_keyboardPresenter presentationView];
      [keyboardPresenter setHidden:1];
    }

LABEL_31:
  }
}

- (void)_takeNoteOfWindow:(id)a3 onScene:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v9 = [v7 isEqual:WeakRetained];

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SBWindowHidingManager *)self _captureWindow:v6];
    }

    else
    {
      v10 = SBLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 134217984;
        v12 = v6;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_INFO, "SBWindowManager: Ignoring window %p because it isn't an SBWindow", &v11, 0xCu);
      }
    }
  }

  else
  {
    [(SBWindowHidingManager *)self _releaseWindow:v6];
  }
}

- (void)_captureWindow:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMapTable *)self->_windowStateMap objectForKey:v4];
  v6 = SBLogCommon();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      v8 = 134217984;
      v9 = v4;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "SBWindowManager: already tracking window %p", &v8, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      v8 = 134217984;
      v9 = v4;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "SBWindowManager now tracking window %p", &v8, 0xCu);
    }

    v5 = objc_alloc_init(SBWindowHideState);
    [(SBWindowHideState *)v5 setHidden:0];
    [v4 alpha];
    [(SBWindowHideState *)v5 setDesiredAlpha:?];
    [(NSMapTable *)self->_windowStateMap setObject:v5 forKey:v4];
  }
}

- (BOOL)_isHidingWindowLevel:(double)a3
{
  start = self->_hideRange.start;
  end = self->_hideRange.end;
  if (end < start)
  {
    return 0;
  }

  if (end > a3)
  {
    return start < a3;
  }

  return 0;
}

- (void)_releaseWindow:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMapTable *)self->_windowStateMap objectForKey:v4];
  if (v5)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 134217984;
      v11 = v4;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "SBWindowManager is releasing window %p", &v10, 0xCu);
    }

    if ([v5 isHidden])
    {
      v7 = SBLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        [v5 desiredAlpha];
        v10 = 134218240;
        v11 = v8;
        v12 = 2048;
        v13 = v4;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "SBWindowManager restoring alpha to %.f for released window %p", &v10, 0x16u);
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      [v5 desiredAlpha];
      if (isKindOfClass)
      {
        [v4 setAlphaAndObeyBecauseIAmTheWindowManager:?];
      }

      else
      {
        [v4 setAlpha:?];
      }
    }

    [(NSMapTable *)self->_windowStateMap removeObjectForKey:v4];
  }
}

- (id)dumpHidingState
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = v3;
  end = self->_hideRange.end;
  if (end >= self->_hideRange.start)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%.f, %.f)", *&self->_hideRange.start, *&end];
    [v4 appendFormat:@"Active hide range is: %@\n", v6];
  }

  else
  {
    [v3 appendFormat:@"Active hide range is: %@\n", @"OFF"];
  }

  [v4 appendString:@"These are our active hide requests:\n"];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(NSMapTable *)self->_hidingContextMap keyEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [(NSMapTable *)self->_hidingContextMap objectForKey:v12];
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        [v4 appendFormat:@"Context %p (%@): %@\n", v12, v15, v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  return v4;
}

- (id)dumpKnownWindows
{
  v29 = *MEMORY[0x277D85DE8];
  v17 = [MEMORY[0x277CCAB68] string];
  [v17 appendString:@"These are our known windows:\n"];
  v3 = [MEMORY[0x277CBEB58] set];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [(NSMapTable *)self->_windowStateMap keyEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v9 = [(NSMapTable *)self->_windowStateMap objectForKey:v8];
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        [v17 appendFormat:@"Window %p [%@]: %@\n", v8, v11, v9];

        [v3 addObject:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v5);
  }

  v12 = MEMORY[0x277CBEB58];
  v13 = [MEMORY[0x277D75DA0] allWindowsIncludingInternalWindows:1 onlyVisibleWindows:1];
  v14 = [v12 setWithArray:v13];

  [v14 minusSet:v3];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  if ([v14 count])
  {
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x2020000000;
    v23 = 0;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __41__SBWindowHidingManager_dumpKnownWindows__block_invoke;
    v18[3] = &unk_2783C4D60;
    v19 = WeakRetained;
    v21 = v22;
    v20 = v17;
    [v14 enumerateObjectsUsingBlock:v18];

    _Block_object_dispose(v22, 8);
  }

  return v17;
}

void __41__SBWindowHidingManager_dumpKnownWindows__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 windowScene];
  v4 = [v3 isEqual:*(a1 + 32)];

  if (v4)
  {
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      [*(a1 + 40) appendString:@"There are additional UIKit windows that we don't know about:\n"];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    v5 = *(a1 + 40);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v9 = @"NOT an SBWindow";
    if (isKindOfClass)
    {
      v9 = @"SBWindow";
    }

    [v5 appendFormat:@"%p: %@ (%@)\n", v10, v7, v9];
  }
}

- (void)sceneHandle:(id)a3 didUpdateSettingsWithDiff:(id)a4 previousSettings:(id)a5
{
  v7 = a5;
  v14 = [a3 scene];
  v8 = [v14 settings];
  [v8 level];
  v10 = v9;
  [v7 level];
  v12 = v11;

  if (v10 == v12)
  {
  }

  else
  {
    v13 = [(SBWindowHidingManager *)self _isHidingWindows];

    if (v13)
    {

      [(SBWindowHidingManager *)self _adjustWindowsForActiveHideRange];
    }
  }
}

@end