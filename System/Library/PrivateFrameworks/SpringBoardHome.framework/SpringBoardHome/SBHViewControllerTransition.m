@interface SBHViewControllerTransition
- (BOOL)isTransitioning;
- (BOOL)wantsAnimation;
- (SBHViewControllerTransitionDelegate)delegate;
- (id)_newTransitionAnimator;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (int64_t)targetEndpoint;
- (void)_handleDidProgressToEndState;
- (void)_handleDidReturnToBeginningState;
- (void)progressToEndStateWithAnimation:(BOOL)a3;
- (void)returnToBeginningStateWithAnimation:(BOOL)a3;
- (void)transitionDidFinish:(id)a3;
- (void)transitionToEndpoint:(int64_t)a3 withAnimation:(BOOL)a4;
@end

@implementation SBHViewControllerTransition

- (BOOL)isTransitioning
{
  v2 = [(SBHViewControllerTransition *)self transitionContext];
  v3 = v2 != 0;

  return v3;
}

- (int64_t)targetEndpoint
{
  v3 = [(SBHViewControllerTransition *)self transitionEndpoint]== 1;
  v4 = [(SBHViewControllerTransition *)self transitionContext];
  v5 = [v4 isCancelled];

  return v3 ^ v5;
}

- (void)transitionToEndpoint:(int64_t)a3 withAnimation:(BOOL)a4
{
  if (a3 == 1)
  {
    [(SBHViewControllerTransition *)self progressToEndStateWithAnimation:a4];
  }

  else
  {
    [(SBHViewControllerTransition *)self returnToBeginningStateWithAnimation:a4];
  }
}

- (void)progressToEndStateWithAnimation:(BOOL)a3
{
  v3 = a3;
  v36 = *MEMORY[0x1E69E9840];
  v6 = [(SBHViewControllerTransition *)self transitionContext];
  [(SBViewControllerTransitionContext *)v6 setWantsAnimation:v3];
  v7 = [(SBHViewControllerTransition *)self transitionEndpoint];
  if ([(SBHViewControllerTransition *)self targetEndpoint]== 1)
  {
    v8 = SBLogIcon();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!v6 || v3)
    {
      if (v9)
      {
        v20 = NSStringFromSelector(a2);
        *buf = 138543618;
        v33 = self;
        v34 = 2114;
        v35 = v20;
        _os_log_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Ignoring %{public}@ because we are already transitioning to the end state", buf, 0x16u);
      }
    }

    else
    {
      if (v9)
      {
        v10 = NSStringFromSelector(a2);
        *buf = 138543618;
        v33 = self;
        v34 = 2114;
        v35 = v10;
        _os_log_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}@ is immediately ending a transition to the end state in progress", buf, 0x16u);
      }

      v11 = objc_opt_self();
      v12 = [(SBViewControllerTransitionContext *)v6 animator];
      v8 = SBFSafeCast();

      v13 = [v8 animator];
      [v13 finalizeAnimationAtEndpoint:1 withContext:self];

      [(SBHViewControllerTransition *)self _handleDidProgressToEndState];
    }
  }

  else
  {
    v14 = [(SBHViewControllerTransition *)self delegate];
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __63__SBHViewControllerTransition_progressToEndStateWithAnimation___block_invoke;
    v29 = &unk_1E8088F18;
    v8 = v14;
    v30 = v8;
    v31 = self;
    v15 = _Block_copy(&v26);
    v16 = v15;
    if (v6)
    {
      v15[2](v15);
      v17 = SBLogIcon();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (v7 == 1)
      {
        if (v18)
        {
          v19 = NSStringFromSelector(a2);
          *buf = 138543618;
          v33 = self;
          v34 = 2114;
          v35 = v19;
          _os_log_impl(&dword_1BEB18000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}@ is restarting a cancelled transition to the end state", buf, 0x16u);
        }

        [(SBViewControllerTransitionContext *)v6 restartTransition:v26];
      }

      else
      {
        if (v18)
        {
          v25 = NSStringFromSelector(a2);
          *buf = 138543618;
          v33 = self;
          v34 = 2114;
          v35 = v25;
          _os_log_impl(&dword_1BEB18000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}@ is cancelling a transition to the beginning state", buf, 0x16u);
        }

        [(SBViewControllerTransitionContext *)v6 cancelTransition:v26];
      }
    }

    else
    {
      v21 = SBLogIcon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = NSStringFromSelector(a2);
        *buf = 138543618;
        v33 = self;
        v34 = 2114;
        v35 = v22;
        _os_log_impl(&dword_1BEB18000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}@ is starting a new transition to the end state", buf, 0x16u);
      }

      [(SBHViewControllerTransition *)self setTransitionEndpoint:1, v26, v27, v28, v29];
      v6 = objc_alloc_init(SBViewControllerTransitionContext);
      [(SBViewControllerTransitionContext *)v6 setAnimationContext:self];
      [(SBViewControllerTransitionContext *)v6 setDelegate:self];
      [(SBHViewControllerTransition *)self setTransitionContext:v6];
      if (objc_opt_respondsToSelector())
      {
        [v8 prepareTransition:self];
      }

      v23 = [(SBHViewControllerTransition *)self transitionContext];

      if (v23 == v6)
      {
        v24 = [(SBHViewControllerTransition *)self _newTransitionAnimator];
        [(SBViewControllerTransitionContext *)v6 setAnimator:v24];
        [(SBViewControllerTransitionContext *)v6 setWantsAnimation:v3];
        v16[2](v16);
        [(SBViewControllerTransitionContext *)v6 startTransition];
      }
    }
  }
}

uint64_t __63__SBHViewControllerTransition_progressToEndStateWithAnimation___block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 transitionWillProgressToEndState:v4];
  }

  return result;
}

- (void)returnToBeginningStateWithAnimation:(BOOL)a3
{
  v3 = a3;
  v32 = *MEMORY[0x1E69E9840];
  v6 = [(SBHViewControllerTransition *)self transitionContext];
  [(SBViewControllerTransitionContext *)v6 setWantsAnimation:v3];
  v7 = [(SBHViewControllerTransition *)self transitionEndpoint];
  if ([(SBHViewControllerTransition *)self targetEndpoint])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__SBHViewControllerTransition_returnToBeginningStateWithAnimation___block_invoke;
    aBlock[3] = &unk_1E8088C90;
    aBlock[4] = self;
    v8 = _Block_copy(aBlock);
    v9 = v8;
    if (v6)
    {
      v8[2](v8);
      if (v7)
      {
        v10 = [(SBViewControllerTransitionContext *)v6 isTransitioning];
        v11 = SBLogIcon();
        v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        if (v10)
        {
          if (v12)
          {
            v13 = NSStringFromSelector(a2);
            *buf = 138543618;
            v29 = self;
            v30 = 2114;
            v31 = v13;
            _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}@ is cancelling a transition to the end state", buf, 0x16u);
          }

          [(SBViewControllerTransitionContext *)v6 cancelTransition];
        }

        else
        {
          if (v12)
          {
            v26 = NSStringFromSelector(a2);
            *buf = 138543618;
            v29 = self;
            v30 = 2114;
            v31 = v26;
            _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}@ is cancelling a transition to the end state before it started", buf, 0x16u);
          }

          [(SBHViewControllerTransition *)self _handleDidReturnToBeginningState];
        }
      }

      else
      {
        v24 = SBLogIcon();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = NSStringFromSelector(a2);
          *buf = 138543618;
          v29 = self;
          v30 = 2114;
          v31 = v25;
          _os_log_impl(&dword_1BEB18000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}@ is restarting a cancelled transition to the beginning state", buf, 0x16u);
        }

        [(SBViewControllerTransitionContext *)v6 restartTransition];
      }
    }

    else
    {
      v20 = SBLogIcon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = NSStringFromSelector(a2);
        *buf = 138543618;
        v29 = self;
        v30 = 2114;
        v31 = v21;
        _os_log_impl(&dword_1BEB18000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}@ is starting a new transition to the beginning state", buf, 0x16u);
      }

      [(SBHViewControllerTransition *)self setTransitionEndpoint:0];
      v6 = objc_alloc_init(SBViewControllerTransitionContext);
      [(SBViewControllerTransitionContext *)v6 setAnimationContext:self];
      [(SBViewControllerTransitionContext *)v6 setDelegate:self];
      [(SBHViewControllerTransition *)self setTransitionContext:v6];
      v22 = [(SBHViewControllerTransition *)self _newTransitionAnimator];
      [(SBViewControllerTransitionContext *)v6 setAnimator:v22];
      [(SBViewControllerTransitionContext *)v6 setWantsAnimation:v3];
      (*(v9 + 16))(v9);
      [(SBViewControllerTransitionContext *)v6 startTransition];
    }

LABEL_24:

    goto LABEL_25;
  }

  v9 = SBLogIcon();
  v14 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!v6 || v3)
  {
    if (v14)
    {
      v23 = NSStringFromSelector(a2);
      *buf = 138543618;
      v29 = self;
      v30 = 2114;
      v31 = v23;
      _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Ignoring %{public}@ because we are already transitioning to the beginning state", buf, 0x16u);
    }

    goto LABEL_24;
  }

  if (v14)
  {
    v15 = NSStringFromSelector(a2);
    *buf = 138543618;
    v29 = self;
    v30 = 2114;
    v31 = v15;
    _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}@ is immediately ending a transition to the beginning state in progress", buf, 0x16u);
  }

  v16 = objc_opt_self();
  v17 = [(SBViewControllerTransitionContext *)v6 animator];
  v18 = SBFSafeCast();

  [(SBViewControllerTransitionContext *)v6 setWantsAnimation:0];
  v19 = [v18 animator];
  [v19 finalizeAnimationAtEndpoint:0 withContext:self];

  [(SBHViewControllerTransition *)self _handleDidReturnToBeginningState];
LABEL_25:
}

void __67__SBHViewControllerTransition_returnToBeginningStateWithAnimation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 transitionWillReturnToBeginningState:*(a1 + 32)];
  }
}

- (BOOL)wantsAnimation
{
  v2 = [(SBHViewControllerTransition *)self transitionContext];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isAnimated];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)transitionDidFinish:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(SBHViewControllerTransition *)self transitionContext];

  if (v6 == v5)
  {
    if ([(SBHViewControllerTransition *)self targetEndpoint]== 1)
    {
      [(SBHViewControllerTransition *)self _handleDidProgressToEndState];
    }

    else
    {
      [(SBHViewControllerTransition *)self _handleDidReturnToBeginningState];
    }
  }

  else
  {
    v7 = SBLogIcon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromSelector(a2);
      v9 = [(SBHViewControllerTransition *)self transitionContext];
      v10 = 138544130;
      v11 = self;
      v12 = 2114;
      v13 = v8;
      v14 = 2114;
      v15 = v5;
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@]: ignoring %{public}@ for unexpected transition: %{public}@ -- expected transition: %{public}@", &v10, 0x2Au);
    }
  }
}

- (void)_handleDidProgressToEndState
{
  [(SBHViewControllerTransition *)self setTransitionContext:0];
  [(SBHViewControllerTransition *)self setTransitionEndpoint:1];
  v3 = [(SBHViewControllerTransition *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 transitionDidProgressToEndState:self];
  }
}

- (void)_handleDidReturnToBeginningState
{
  [(SBHViewControllerTransition *)self setTransitionContext:0];
  [(SBHViewControllerTransition *)self setTransitionEndpoint:0];
  v3 = [(SBHViewControllerTransition *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 transitionDidReturnToBeginningState:self];
  }
}

- (id)_newTransitionAnimator
{
  v3 = [(SBHViewControllerTransition *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v3 animatorForTransition:self], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [[SBHViewControllerTransitionAnimatorAdapter alloc] initWithAnimator:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)succinctDescription
{
  v2 = [(SBHViewControllerTransition *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHViewControllerTransition *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBHViewControllerTransition *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__SBHViewControllerTransition_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E8088F18;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

id __69__SBHViewControllerTransition_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isTransitioning"), @"isTransitioning"}];
  v3 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"wantsAnimation"), @"wantsAnimation"}];
  v4 = [*(a1 + 32) appendInteger:objc_msgSend(*(a1 + 40) withName:{"targetEndpoint"), @"targetEndpoint"}];
  return [*(a1 + 32) appendInteger:objc_msgSend(*(a1 + 40) withName:{"transitionEndpoint"), @"transitionEndpoint"}];
}

- (SBHViewControllerTransitionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end