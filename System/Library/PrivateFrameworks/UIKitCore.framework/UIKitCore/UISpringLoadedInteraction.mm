@interface UISpringLoadedInteraction
+ (UISpringLoadedInteraction)springLoadedInteractionWithHandler:(id)handler;
+ (id)_blinkEffect;
+ (id)hysteresisBehaviorWithBeginningVelocity:(double)velocity cancelingVelocity:(double)cancelingVelocity;
- (BOOL)_shouldAllowInteractionWithContext:(id)context;
- (UISpringLoadedInteraction)initWithInteractionBehavior:(id)interactionBehavior interactionEffect:(id)interactionEffect activationHandler:(void *)handler;
- (UISpringLoadedInteractionContextImpl)context;
- (UIView)view;
- (id)_dynamicGestureRecognizersForEvent:(id)event;
- (void)_activateSpringLoading:(id)loading;
- (void)_cancelActions;
- (void)_reloadSpringLoadedInteractionBehavior;
- (void)_resetBehavior;
- (void)_springloadedStateChanged:(id)changed;
- (void)_startActivateAction;
- (void)_startEmphasizeAction;
- (void)didMoveToView:(id)view;
- (void)setState:(int64_t)state;
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

+ (UISpringLoadedInteraction)springLoadedInteractionWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [self alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__UISpringLoadedInteraction_springLoadedInteractionWithHandler___block_invoke;
  v9[3] = &unk_1E7106350;
  v10 = handlerCopy;
  v6 = handlerCopy;
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

- (void)didMoveToView:(id)view
{
  v18 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  objc_storeWeak(&self->_view, viewCopy);
  if (!viewCopy && WeakRetained)
  {
    objc_opt_class();
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    gestureRecognizers = [WeakRetained gestureRecognizers];
    v7 = [gestureRecognizers countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(gestureRecognizers);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          if (objc_opt_isKindOfClass())
          {
            delegate = [v11 delegate];

            if (delegate == self)
            {
              [WeakRetained removeGestureRecognizer:v11];
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [gestureRecognizers countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (id)_dynamicGestureRecognizersForEvent:(id)event
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = [(UIDragGestureRecognizer *)[UISpringLoadedGestureRecognizer alloc] initWithTarget:self action:sel__springloadedStateChanged_];
  [(UIGestureRecognizer *)v4 setDelegate:self];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  return v5;
}

- (void)_springloadedStateChanged:(id)changed
{
  changedCopy = changed;
  context = [(UISpringLoadedInteraction *)self context];
  [context setCurrentRecognizer:changedCopy];
  state = [changedCopy state];

  if ((state - 1) >= 2)
  {
    if (state == 3)
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

  v6 = [(UISpringLoadedInteraction *)self _shouldAllowInteractionWithContext:context];
  if ([context state] <= 0 && v6)
  {
    selfCopy2 = self;
    v8 = 1;
  }

  else
  {
    if (v6)
    {
      goto LABEL_12;
    }

    selfCopy2 = self;
    v8 = 0;
  }

  [(UISpringLoadedInteraction *)selfCopy2 setState:v8];
LABEL_12:
}

- (void)setState:(int64_t)state
{
  context = [(UISpringLoadedInteraction *)self context];
  if ([context state] != state)
  {
    [context setState:state];
    view = [(UISpringLoadedInteraction *)self view];
    [context setTargetView:view];

    [(UISpringLoadedInteractionEffect *)self->_interactionEffect interaction:self didChangeWithContext:context];
    if (state > 1)
    {
      if (state == 2)
      {
        [(UISpringLoadedInteraction *)self _startActivateAction];
        goto LABEL_12;
      }

      if (state != 3)
      {
        goto LABEL_12;
      }

      handler = self->_handler;
      if (handler)
      {
        context2 = [(UISpringLoadedInteraction *)self context];
        handler[2](handler, self, context2);
      }
    }

    else if (state)
    {
      goto LABEL_4;
    }

    [(UISpringLoadedInteraction *)self _cancelActions];
    goto LABEL_12;
  }

LABEL_4:
  if (state == 1)
  {
    [(UISpringLoadedInteraction *)self _startEmphasizeAction];
  }

LABEL_12:
}

- (void)_reloadSpringLoadedInteractionBehavior
{
  context = [(UISpringLoadedInteraction *)self context];
  currentRecognizer = [context currentRecognizer];
  [(UISpringLoadedInteraction *)self _springloadedStateChanged:currentRecognizer];
}

- (void)_startEmphasizeAction
{
  emphasizeAction = [(UISpringLoadedInteraction *)self emphasizeAction];

  if (emphasizeAction)
  {
    emphasizeAction2 = [(UISpringLoadedInteraction *)self emphasizeAction];
    [(UIDelayedAction *)emphasizeAction2 touch];
  }

  else
  {
    emphasizeAction2 = [[UIDelayedAction alloc] initWithTarget:self action:sel__emphasizeSpringLoading_ userInfo:0 delay:self->_possibleStateDuration];
    [(UISpringLoadedInteraction *)self setEmphasizeAction:?];
  }
}

- (void)_startActivateAction
{
  activateAction = [(UISpringLoadedInteraction *)self activateAction];

  if (activateAction)
  {
    activateAction2 = [(UISpringLoadedInteraction *)self activateAction];
    [(UIDelayedAction *)activateAction2 touch];
  }

  else
  {
    activateAction2 = [[UIDelayedAction alloc] initWithTarget:self action:sel__activateSpringLoading_ userInfo:0 delay:0.4];
    [(UISpringLoadedInteraction *)self setActivateAction:?];
  }
}

- (void)_activateSpringLoading:(id)loading
{
  context = [(UISpringLoadedInteraction *)self context];
  currentRecognizer = [context currentRecognizer];
  [currentRecognizer spring];
}

- (void)_cancelActions
{
  emphasizeAction = [(UISpringLoadedInteraction *)self emphasizeAction];
  [emphasizeAction cancel];

  [(UISpringLoadedInteraction *)self setEmphasizeAction:0];
  activateAction = [(UISpringLoadedInteraction *)self activateAction];
  [activateAction cancel];

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

    view = [(UISpringLoadedInteraction *)self view];
    [(UISpringLoadedInteractionContextImpl *)self->_context setTargetView:view];

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

- (BOOL)_shouldAllowInteractionWithContext:(id)context
{
  contextCopy = context;
  v5 = self->_interactionBehavior;
  if (objc_opt_respondsToSelector())
  {
    v6 = [(UISpringLoadedInteractionBehavior *)v5 shouldAllowInteraction:self withContext:contextCopy];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

+ (id)hysteresisBehaviorWithBeginningVelocity:(double)velocity cancelingVelocity:(double)cancelingVelocity
{
  v6 = objc_alloc_init(_UISpringLoadedHysteresisBehavior);
  [(_UISpringLoadedHysteresisBehavior *)v6 setBeginningVelocityThreshold:velocity];
  [(_UISpringLoadedHysteresisBehavior *)v6 setCancelingVelocityThreshold:cancelingVelocity];

  return v6;
}

@end