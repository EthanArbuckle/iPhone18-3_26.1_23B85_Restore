@interface SBSASecureFlipBookView
- (BOOL)transitionToState:(id)a3 completion:(id)a4;
- (CGRect)_flipBookUserInfoFrame;
- (CGRect)nominalFrame;
- (NSString)state;
- (SBSASecureFlipBookView)initWithSecureFlipBookName:(id)a3;
- (SBSASecureFlipBookView)initWithSecureFlipBookNameAndFallbacks:(id)a3;
- (double)_lastTargetTimestamp;
- (id)_flipBookUserInfo;
- (id)_flipBookUserInfoComponentName;
- (id)_flipBookUserInfoInitialStateName;
- (id)_flipBookUserInfoSecureSequenceMap;
- (int64_t)_flipBookUserInfoComponentCount;
- (int64_t)_flipBookUserInfoComponentIndex;
- (void)_tick:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)willMoveToWindow:(id)a3;
@end

@implementation SBSASecureFlipBookView

- (SBSASecureFlipBookView)initWithSecureFlipBookName:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v9 count:1];

  v7 = [(SBSASecureFlipBookView *)self initWithSecureFlipBookNameAndFallbacks:v6, v9, v10];
  return v7;
}

- (SBSASecureFlipBookView)initWithSecureFlipBookNameAndFallbacks:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v36.receiver = self;
  v36.super_class = SBSASecureFlipBookView;
  v5 = [(SBSASecureFlipBookView *)&v36 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v5)
  {
    v6 = [v4 firstObject];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v32 objects:v43 count:16];
    if (v8)
    {
      v9 = v8;
      v31 = v6;
      v10 = *v33;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v32 + 1) + 8 * i);
          v13 = [MEMORY[0x277CD9F88] secureFlipBookWithType:v12];
          secureFlipBookLayer = v5->_secureFlipBookLayer;
          v5->_secureFlipBookLayer = v13;

          if (v5->_secureFlipBookLayer)
          {
            v15 = [v7 firstObject];
            v16 = [v12 isEqualToString:v15];
            v17 = SBLogSystemApertureSecureFlipBookElements();
            v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
            if (v16)
            {
              if (v18)
              {
                *buf = 134218242;
                v38 = v5;
                v39 = 2114;
                v40 = v15;
                _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[FlipBookView] <%p> Loaded flipbook named: %{public}@", buf, 0x16u);
              }

              v6 = v31;
            }

            else
            {
              if (v18)
              {
                *buf = 134218498;
                v38 = v5;
                v39 = 2114;
                v40 = v15;
                v41 = 2114;
                v42 = v12;
                _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[FlipBookView] <%p> Unable to load flipbook named: %{public}@; Loaded fallback instead: %{public}@", buf, 0x20u);
              }

              v6 = v12;
              v17 = v31;
            }

            goto LABEL_20;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v32 objects:v43 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

      v6 = v31;
    }

LABEL_20:

    objc_storeStrong(&v5->_flipBookName, v6);
    v5->_lastTargetTimestamp = 0.0;
    v5->_lastTargetTimestampValid = 0;
    if (v5->_secureFlipBookLayer)
    {
      v19 = [(SBSASecureFlipBookView *)v5 layer];
      [v19 addSublayer:v5->_secureFlipBookLayer];

      [(CASecureFlipBookLayer *)v5->_secureFlipBookLayer addObserver:v5 forKeyPath:@"currentState" options:1 context:0];
      v20 = [MEMORY[0x277CD9E48] displayLinkWithTarget:v5 selector:sel__tick_];
      displayLink = v5->_displayLink;
      v5->_displayLink = v20;

      [(CADisplayLink *)v5->_displayLink setPaused:1];
      v22 = v5->_displayLink;
      v23 = SBScreenMaximumFramesPerSecond();
      v24 = SBScreenMaximumFramesPerSecond();
      v25 = SBScreenMaximumFramesPerSecond();
      v45 = CAFrameRateRangeMake(v23, v24, v25);
      [(CADisplayLink *)v22 setPreferredFrameRateRange:*&v45.minimum, *&v45.maximum, *&v45.preferred];
      [(CADisplayLink *)v5->_displayLink setHighFrameRateReason:40];
      v26 = v5->_displayLink;
      v27 = [MEMORY[0x277CBEB88] currentRunLoop];
      [(CADisplayLink *)v26 addToRunLoop:v27 forMode:*MEMORY[0x277CBE738]];
    }

    else
    {
      v27 = SBLogSystemApertureSecureFlipBookElements();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [(SBSASecureFlipBookView *)v5 initWithSecureFlipBookNameAndFallbacks:v6, v27];
      }
    }

    [(SBSASecureFlipBookView *)v5 setUserInteractionEnabled:0];
  }

  if (v5->_secureFlipBookLayer)
  {
    v28 = v5;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;

  return v29;
}

- (void)dealloc
{
  [(CADisplayLink *)self->_displayLink invalidate];
  v3.receiver = self;
  v3.super_class = SBSASecureFlipBookView;
  [(SBSASecureFlipBookView *)&v3 dealloc];
}

- (CGRect)nominalFrame
{
  [(SBSASecureFlipBookView *)self _flipBookUserInfoFrame];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  if (CGRectEqualToRect(v10, *MEMORY[0x277CBF3A0]))
  {
    y = 100.0;
    height = 66.6666667;
    width = 66.6666667;
    x = 100.0;
  }

  v6 = x;
  v7 = y;
  v8 = width;
  v9 = height;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (NSString)state
{
  secureFlipBookLayer = self->_secureFlipBookLayer;
  if (secureFlipBookLayer)
  {
    secureFlipBookLayer = [secureFlipBookLayer currentState];
    v2 = vars8;
  }

  return secureFlipBookLayer;
}

- (BOOL)transitionToState:(id)a3 completion:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = SBLogSystemApertureSecureFlipBookElements();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(SBSASecureFlipBookView *)self componentName];
    *buf = 134218498;
    v32 = self;
    v33 = 2114;
    v34 = v9;
    v35 = 2114;
    v36 = v6;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[FlipBookView] <%p> (%{public}@) transitionToState: %{public}@", buf, 0x20u);
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __55__SBSASecureFlipBookView_transitionToState_completion___block_invoke;
  v28[3] = &unk_2783AE5A0;
  v28[4] = self;
  v10 = v6;
  v29 = v10;
  v11 = v7;
  v30 = v11;
  v12 = MEMORY[0x223D6F7F0](v28);
  secureFlipBookLayer = self->_secureFlipBookLayer;
  if (!secureFlipBookLayer)
  {
    v19 = SBLogSystemApertureSecureFlipBookElements();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(SBSASecureFlipBookView *)self componentName];
      *buf = 134218242;
      v32 = self;
      v33 = 2114;
      v34 = v20;
      _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "[FlipBookView] <%p> (%{public}@) Secure FlipBook Layer Unavailable", buf, 0x16u);
    }

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __55__SBSASecureFlipBookView_transitionToState_completion___block_invoke_15;
    v26[3] = &unk_2783A9348;
    v27 = v12;
    dispatch_async(MEMORY[0x277D85CD0], v26);
    v18 = v27;
    goto LABEL_14;
  }

  if (![(CASecureFlipBookLayer *)secureFlipBookLayer canTransitionToState:v10])
  {
    v22 = SBLogSystemApertureSecureFlipBookElements();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(SBSASecureFlipBookView *)self componentName];
      v24 = [(CASecureFlipBookLayer *)self->_secureFlipBookLayer currentState];
      *buf = 134218754;
      v32 = self;
      v33 = 2114;
      v34 = v23;
      v35 = 2114;
      v36 = v24;
      v37 = 2114;
      v38 = v10;
      _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "[FlipBookView] <%p> (%{public}@) unable to transition from state: %{public}@ to state: %{public}@", buf, 0x2Au);

LABEL_19:
    }

LABEL_20:

    v12[2](v12, 0);
    v21 = 0;
    goto LABEL_21;
  }

  if (![(CASecureFlipBookLayer *)self->_secureFlipBookLayer transitionToState:v10])
  {
    v22 = SBLogSystemApertureSecureFlipBookElements();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(SBSASecureFlipBookView *)self componentName];
      *buf = 134218498;
      v32 = self;
      v33 = 2114;
      v34 = v23;
      v35 = 2114;
      v36 = v10;
      _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "[FlipBookView] <%p> (%{public}@) unexpectedly failed to transition to state: %{public}@ ", buf, 0x20u);
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (self->_stateTransitionCompletionBlock)
  {
    v14 = SBLogSystemApertureSecureFlipBookElements();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(SBSASecureFlipBookView *)self componentName];
      *buf = 134218242;
      v32 = self;
      v33 = 2114;
      v34 = v15;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "[FlipBookView] <%p> (%{public}@) requested another transition before ticking, calling saved completion block", buf, 0x16u);
    }

    (*(self->_stateTransitionCompletionBlock + 2))();
    stateTransitionCompletionBlock = self->_stateTransitionCompletionBlock;
    self->_stateTransitionCompletionBlock = 0;
  }

  v17 = [v12 copy];
  v18 = self->_stateTransitionCompletionBlock;
  self->_stateTransitionCompletionBlock = v17;
LABEL_14:

  v21 = 1;
LABEL_21:

  return v21;
}

uint64_t __55__SBSASecureFlipBookView_transitionToState_completion___block_invoke(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = SBLogSystemApertureSecureFlipBookElements();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = [v5 componentName];
    v7 = a1[5];
    v9 = 134218754;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    v15 = 1024;
    v16 = a2;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[FlipBookView] <%p> (%{public}@) completed transitionToState: %{public}@. Finished?: %{BOOL}u ", &v9, 0x26u);
  }

  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (self->_secureFlipBookLayer == a4)
  {
    if ([a3 isEqualToString:@"currentState"])
    {
      stateTransitionCompletionBlock = self->_stateTransitionCompletionBlock;
      if (stateTransitionCompletionBlock)
      {
        stateTransitionCompletionBlock[2](stateTransitionCompletionBlock, 1);
        v8 = self->_stateTransitionCompletionBlock;
        self->_stateTransitionCompletionBlock = 0;
      }
    }
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBSASecureFlipBookView;
  [(SBSASecureFlipBookView *)&v3 layoutSubviews];
  [(SBSASecureFlipBookView *)self bounds];
  [(CASecureFlipBookLayer *)self->_secureFlipBookLayer setFrame:?];
}

- (void)willMoveToWindow:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogSystemApertureSecureFlipBookElements();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = [(SBSASecureFlipBookView *)self componentName];
      v11 = 134218242;
      v12 = self;
      v13 = 2114;
      v14 = v7;
      v8 = "[FlipBookView] <%p> (%{public}@) moving to window";
LABEL_6:
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, v8, &v11, 0x16u);
    }
  }

  else if (v6)
  {
    v7 = [(SBSASecureFlipBookView *)self componentName];
    v11 = 134218242;
    v12 = self;
    v13 = 2114;
    v14 = v7;
    v8 = "[FlipBookView] <%p> (%{public}@) moving out of any window";
    goto LABEL_6;
  }

  [(CADisplayLink *)self->_displayLink setPaused:v4 == 0];
  self->_lastTargetTimestampValid = 0;
  if (!v4)
  {
    stateTransitionCompletionBlock = self->_stateTransitionCompletionBlock;
    if (stateTransitionCompletionBlock)
    {
      stateTransitionCompletionBlock[2](stateTransitionCompletionBlock, 0);
      v10 = self->_stateTransitionCompletionBlock;
      self->_stateTransitionCompletionBlock = 0;
    }
  }
}

- (void)_tick:(id)a3
{
  [a3 targetTimestamp];
  v5 = v4;
  secureFlipBookLayer = self->_secureFlipBookLayer;
  [(SBSASecureFlipBookView *)self _lastTargetTimestamp];
  [(CASecureFlipBookLayer *)secureFlipBookLayer tick:v5 - v7];

  [(SBSASecureFlipBookView *)self _setLastTargetTimestamp:v5];
}

- (CGRect)_flipBookUserInfoFrame
{
  v2 = *(MEMORY[0x277CBF3A0] + 16);
  v9.origin = *MEMORY[0x277CBF3A0];
  v9.size = v2;
  v3 = [(SBSASecureFlipBookView *)self _flipBookUserInfo];
  v4 = [v3 valueForKey:@"Component_Frame"];

  CGRectMakeWithDictionaryRepresentation(v4, &v9);
  if (v4)
  {
    CFRelease(v4);
  }

  y = v9.origin.y;
  x = v9.origin.x;
  height = v9.size.height;
  width = v9.size.width;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (double)_lastTargetTimestamp
{
  if (self->_lastTargetTimestampValid)
  {
    return self->_lastTargetTimestamp;
  }

  [(CADisplayLink *)self->_displayLink timestamp];
  return result;
}

- (int64_t)_flipBookUserInfoComponentIndex
{
  v3 = [(SBSASecureFlipBookView *)self _flipBookUserInfo];
  if (v3)
  {
    v4 = [(SBSASecureFlipBookView *)self _flipBookUserInfo];
    v5 = [v4 valueForKey:@"Component_Index"];
    v6 = [v5 integerValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)_flipBookUserInfoComponentCount
{
  v3 = [(SBSASecureFlipBookView *)self _flipBookUserInfo];
  if (v3)
  {
    v4 = [(SBSASecureFlipBookView *)self _flipBookUserInfo];
    v5 = [v4 valueForKey:@"Component_Count"];
    v6 = [v5 integerValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_flipBookUserInfoComponentName
{
  v3 = [(SBSASecureFlipBookView *)self _flipBookUserInfo];
  if (v3)
  {
    v4 = [(SBSASecureFlipBookView *)self _flipBookUserInfo];
    v5 = [v4 valueForKey:@"Component_Name"];
  }

  else
  {
    v5 = @"Unknown";
  }

  return v5;
}

- (id)_flipBookUserInfoInitialStateName
{
  v3 = [(SBSASecureFlipBookView *)self _flipBookUserInfo];
  if (v3)
  {
    v4 = [(SBSASecureFlipBookView *)self _flipBookUserInfo];
    v5 = [v4 valueForKey:@"Initial_State"];
  }

  else
  {
    v5 = @"Unknown";
  }

  return v5;
}

- (id)_flipBookUserInfoSecureSequenceMap
{
  v3 = [(SBSASecureFlipBookView *)self _flipBookUserInfo];
  if (v3)
  {
    v4 = [(SBSASecureFlipBookView *)self _flipBookUserInfo];
    v5 = [v4 valueForKey:@"Secure_States_Dict"];
  }

  else
  {
    v5 = [MEMORY[0x277CBEAC0] dictionary];
  }

  return v5;
}

- (id)_flipBookUserInfo
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(CASecureFlipBookLayer *)self->_secureFlipBookLayer userInfo];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)initWithSecureFlipBookNameAndFallbacks:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218242;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "[FlipBookView] <%p> Unable to load flipbook (or any fallbacks) named: %{public}@", &v3, 0x16u);
}

@end