@interface UISpringLoadedInteraction
+ (UISpringLoadedInteraction)springLoadedInteractionWithHandler:(id)a3;
+ (id)_blinkEffect;
+ (id)hysteresisBehaviorWithBeginningVelocity:(double)a3 cancelingVelocity:(double)a4;
- (BOOL)_shouldAllowInteractionWithContext:(id)a3;
- (UISpringLoadedInteraction)initWithInteractionBehavior:(id)interactionBehavior interactionEffect:(id)interactionEffect activationHandler:(void *)handler;
- (UISpringLoadedInteractionContextImpl)context;
- (UIView)view;
- (id)_dynamicGestureRecognizersForEvent:(id)a3;
- (void)_activateSpringLoading:(id)a3;
- (void)_cancelActions;
- (void)_reloadSpringLoadedInteractionBehavior;
- (void)_resetBehavior;
- (void)_springloadedStateChanged:(id)a3;
- (void)_startActivateAction;
- (void)_startEmphasizeAction;
- (void)didMoveToView:(id)a3;
- (void)setState:(int64_t)a3;
@end

@implementation UISpringLoadedInteraction

+ (id)_blinkEffect
{
  v2 = objc_alloc_init(_UISpringLoadedBlinkingEffect);

  return v2;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

+ (UISpringLoadedInteraction)springLoadedInteractionWithHandler:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__UISpringLoadedInteraction_springLoadedInteractionWithHandler___block_invoke;
  v9[3] = &unk_1E7106350;
  v10 = v4;
  v6 = v4;
  v7 = [v5 initWithActivationHandler:v9];

  return v7;
}

- (UISpringLoadedInteraction)initWithInteractionBehavior:(id)interactionBehavior interactionEffect:(id)interactionEffect activationHandler:(void *)handler
{
  v8 = interactionBehavior;
  v9 = interactionEffect;
  v10 = handler;
  v20.receiver = self;
  v20.super_class = UISpringLoadedInteraction;
  v11 = [(UISpringLoadedInteraction *)&v20 init];
  if (v11)
  {
    v12 = _Block_copy(v10);
    v13 = v11->_handler;
    v11->_handler = v12;

    if (v8)
    {
      v14 = v8;
      v15 = v11->_interactionBehavior;
      v11->_interactionBehavior = v14;
    }

    else
    {
      v16 = +[UISpringLoadedInteraction _defaultInteractionBehavior];
      [v16 setDelegate:v11];
      v15 = v11->_interactionBehavior;
      v11->_interactionBehavior = v16;
    }

    if (v9)
    {
      v17 = v9;
    }

    else
    {
      v17 = +[UISpringLoadedInteraction _blinkEffect];
    }

    v18 = v11->_interactionEffect;
    v11->_interactionEffect = v17;

    v11->_possibleStateDuration = 0.8;
  }

  return v11;
}

- (void)didMoveToView:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  objc_storeWeak(&self->_view, v4);
  if (!v4 && WeakRetained)
  {
    objc_opt_class();
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [WeakRetained gestureRecognizers];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          if (objc_opt_isKindOfClass())
          {
            v12 = [v11 delegate];

            if (v12 == self)
            {
              [WeakRetained removeGestureRecognizer:v11];
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (id)_dynamicGestureRecognizersForEvent:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = [(UIDragGestureRecognizer *)[UISpringLoadedGestureRecognizer alloc] initWithTarget:self action:sel__springloadedStateChanged_];
  [(UIGestureRecognizer *)v4 setDelegate:self];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  return v5;
}

- (void)_springloadedStateChanged:(id)a3
{
  v4 = a3;
  v10 = [(UISpringLoadedInteraction *)self context];
  [v10 setCurrentRecognizer:v4];
  v5 = [v4 state];

  if ((v5 - 1) >= 2)
  {
    if (v5 == 3)
    {
      v9 = 3;
    }

    else
    {
      v9 = 0;
    }

    [(UISpringLoadedInteraction *)self setState:v9];
    [(UISpringLoadedInteraction *)self _resetBehavior];
    [(UISpringLoadedInteraction *)self setContext:0];
    goto LABEL_12;
  }

  v6 = [(UISpringLoadedInteraction *)self _shouldAllowInteractionWithContext:v10];
  if ([v10 state] <= 0 && v6)
  {
    v7 = self;
    v8 = 1;
  }

  else
  {
    if (v6)
    {
      goto LABEL_12;
    }

    v7 = self;
    v8 = 0;
  }

  [(UISpringLoadedInteraction *)v7 setState:v8];
LABEL_12:
}

- (void)setState:(int64_t)a3
{
  v8 = [(UISpringLoadedInteraction *)self context];
  if ([v8 state] != a3)
  {
    [v8 setState:a3];
    v5 = [(UISpringLoadedInteraction *)self view];
    [v8 setTargetView:v5];

    [(UISpringLoadedInteractionEffect *)self->_interactionEffect interaction:self didChangeWithContext:v8];
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        [(UISpringLoadedInteraction *)self _startActivateAction];
        goto LABEL_12;
      }

      if (a3 != 3)
      {
        goto LABEL_12;
      }

      handler = self->_handler;
      if (handler)
      {
        v7 = [(UISpringLoadedInteraction *)self context];
        handler[2](handler, self, v7);
      }
    }

    else if (a3)
    {
      goto LABEL_4;
    }

    [(UISpringLoadedInteraction *)self _cancelActions];
    goto LABEL_12;
  }

LABEL_4:
  if (a3 == 1)
  {
    [(UISpringLoadedInteraction *)self _startEmphasizeAction];
  }

LABEL_12:
}

- (void)_reloadSpringLoadedInteractionBehavior
{
  v4 = [(UISpringLoadedInteraction *)self context];
  v3 = [v4 currentRecognizer];
  [(UISpringLoadedInteraction *)self _springloadedStateChanged:v3];
}

- (void)_startEmphasizeAction
{
  v3 = [(UISpringLoadedInteraction *)self emphasizeAction];

  if (v3)
  {
    v4 = [(UISpringLoadedInteraction *)self emphasizeAction];
    [(UIDelayedAction *)v4 touch];
  }

  else
  {
    v4 = [[UIDelayedAction alloc] initWithTarget:self action:sel__emphasizeSpringLoading_ userInfo:0 delay:self->_possibleStateDuration];
    [(UISpringLoadedInteraction *)self setEmphasizeAction:?];
  }
}

- (void)_startActivateAction
{
  v3 = [(UISpringLoadedInteraction *)self activateAction];

  if (v3)
  {
    v4 = [(UISpringLoadedInteraction *)self activateAction];
    [(UIDelayedAction *)v4 touch];
  }

  else
  {
    v4 = [[UIDelayedAction alloc] initWithTarget:self action:sel__activateSpringLoading_ userInfo:0 delay:0.4];
    [(UISpringLoadedInteraction *)self setActivateAction:?];
  }
}

- (void)_activateSpringLoading:(id)a3
{
  v4 = [(UISpringLoadedInteraction *)self context];
  v3 = [v4 currentRecognizer];
  [v3 spring];
}

- (void)_cancelActions
{
  v3 = [(UISpringLoadedInteraction *)self emphasizeAction];
  [v3 cancel];

  [(UISpringLoadedInteraction *)self setEmphasizeAction:0];
  v4 = [(UISpringLoadedInteraction *)self activateAction];
  [v4 cancel];

  [(UISpringLoadedInteraction *)self setActivateAction:0];
}

- (UISpringLoadedInteractionContextImpl)context
{
  context = self->_context;
  if (!context)
  {
    v4 = objc_opt_new();
    v5 = self->_context;
    self->_context = v4;

    v6 = [(UISpringLoadedInteraction *)self view];
    [(UISpringLoadedInteractionContextImpl *)self->_context setTargetView:v6];

    context = self->_context;
  }

  return context;
}

- (void)_resetBehavior
{
  v3 = self->_interactionBehavior;
  if (objc_opt_respondsToSelector())
  {
    [(UISpringLoadedInteractionBehavior *)v3 interactionDidFinish:self];
  }
}

- (BOOL)_shouldAllowInteractionWithContext:(id)a3
{
  v4 = a3;
  v5 = self->_interactionBehavior;
  if (objc_opt_respondsToSelector())
  {
    v6 = [(UISpringLoadedInteractionBehavior *)v5 shouldAllowInteraction:self withContext:v4];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

+ (id)hysteresisBehaviorWithBeginningVelocity:(double)a3 cancelingVelocity:(double)a4
{
  v6 = objc_alloc_init(_UISpringLoadedHysteresisBehavior);
  [(_UISpringLoadedHysteresisBehavior *)v6 setBeginningVelocityThreshold:a3];
  [(_UISpringLoadedHysteresisBehavior *)v6 setCancelingVelocityThreshold:a4];

  return v6;
}

@end