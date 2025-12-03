@interface SXComponentBehaviorController
- (SXComponentBehaviorController)initWithViewport:(id)viewport andAnimator:(id)animator;
- (id)existingHandlerForComponentView:(id)view behavior:(id)behavior;
- (void)registerComponentView:(id)view behavior:(id)behavior;
- (void)reset;
- (void)unregisterComponentView:(id)view;
- (void)update;
- (void)updateComponentView:(id)view;
- (void)updateHandler:(id)handler;
@end

@implementation SXComponentBehaviorController

- (SXComponentBehaviorController)initWithViewport:(id)viewport andAnimator:(id)animator
{
  viewportCopy = viewport;
  animatorCopy = animator;
  v14.receiver = self;
  v14.super_class = SXComponentBehaviorController;
  v9 = [(SXComponentBehaviorController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewport, viewport);
    objc_storeStrong(&v10->_animator, animator);
    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    behaviorHandlers = v10->_behaviorHandlers;
    v10->_behaviorHandlers = v11;

    [(SXViewport *)v10->_viewport addViewportChangeListener:v10 forOptions:14];
  }

  return v10;
}

- (void)registerComponentView:(id)view behavior:(id)behavior
{
  viewCopy = view;
  behaviorCopy = behavior;
  component = [viewCopy component];
  v8 = [behaviorCopy handlerClassForComponent:component];

  if (v8)
  {
    v9 = [(SXComponentBehaviorController *)self existingHandlerForComponentView:viewCopy behavior:behaviorCopy];
    if (!v9)
    {
      v9 = [[v8 alloc] initWithComponentView:viewCopy withBehavior:behaviorCopy];
      behaviorHandlers = [(SXComponentBehaviorController *)self behaviorHandlers];
      [behaviorHandlers addObject:v9];
    }
  }
}

- (void)unregisterComponentView:(id)view
{
  v30 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  behaviorHandlers = [(SXComponentBehaviorController *)self behaviorHandlers];
  v7 = [behaviorHandlers countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(behaviorHandlers);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        componentView = [v11 componentView];

        if (componentView == viewCopy)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [behaviorHandlers countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  behaviorHandlers2 = [(SXComponentBehaviorController *)self behaviorHandlers];
  v14 = [behaviorHandlers2 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(behaviorHandlers2);
        }

        v18 = *(*(&v20 + 1) + 8 * j);
        if ([v18 isSetup])
        {
          [v18 destroyWithBehaviorController:self];
        }
      }

      v15 = [behaviorHandlers2 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v15);
  }

  behaviorHandlers3 = [(SXComponentBehaviorController *)self behaviorHandlers];
  [behaviorHandlers3 minusSet:v5];
}

- (id)existingHandlerForComponentView:(id)view behavior:(id)behavior
{
  v22 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  behaviorCopy = behavior;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  behaviorHandlers = [(SXComponentBehaviorController *)self behaviorHandlers];
  v9 = [behaviorHandlers countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(behaviorHandlers);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        componentView = [v12 componentView];
        v14 = componentView;
        if (componentView == viewCopy)
        {
          behavior = [v12 behavior];

          if (behavior == behaviorCopy)
          {
            v9 = v12;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v9 = [behaviorHandlers countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v9;
}

- (void)update
{
  v38 = *MEMORY[0x1E69E9840];
  viewport = [(SXComponentBehaviorController *)self viewport];
  isPopulated = [viewport isPopulated];

  if (isPopulated)
  {
    viewport2 = [(SXComponentBehaviorController *)self viewport];
    [viewport2 dynamicBounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    viewport3 = [(SXComponentBehaviorController *)self viewport];
    [viewport3 bounds];
    v16 = v15 * -2.0;
    v39.origin.x = v7;
    v39.origin.y = v9;
    v39.size.width = v11;
    v39.size.height = v13;
    v40 = CGRectInset(v39, 0.0, v16);
    x = v40.origin.x;
    y = v40.origin.y;
    width = v40.size.width;
    height = v40.size.height;

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    behaviorHandlers = [(SXComponentBehaviorController *)self behaviorHandlers];
    v22 = [behaviorHandlers countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v34;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v34 != v24)
          {
            objc_enumerationMutation(behaviorHandlers);
          }

          v26 = *(*(&v33 + 1) + 8 * i);
          if (([v26 requiresContinuousUpdates] & 1) == 0)
          {
            componentView = [v26 componentView];
            [componentView absoluteFrame];
            v42.origin.x = v28;
            v42.origin.y = v29;
            v42.size.width = v30;
            v42.size.height = v31;
            v41.origin.x = x;
            v41.origin.y = y;
            v41.size.width = width;
            v41.size.height = height;
            v32 = CGRectIntersectsRect(v41, v42);

            if (!v32)
            {
              continue;
            }
          }

          [(SXComponentBehaviorController *)self updateHandler:v26];
        }

        v23 = [behaviorHandlers countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v23);
    }
  }
}

- (void)updateComponentView:(id)view
{
  v19 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  viewport = [(SXComponentBehaviorController *)self viewport];
  isPopulated = [viewport isPopulated];

  if (isPopulated)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    behaviorHandlers = [(SXComponentBehaviorController *)self behaviorHandlers];
    v8 = [behaviorHandlers countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(behaviorHandlers);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          componentView = [v12 componentView];

          if (componentView == viewCopy)
          {
            [(SXComponentBehaviorController *)self updateHandler:v12];
          }
        }

        v9 = [behaviorHandlers countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }
}

- (void)updateHandler:(id)handler
{
  handlerCopy = handler;
  if (([handlerCopy isSetup] & 1) == 0)
  {
    [handlerCopy setupWithBehaviorController:self];
  }

  [handlerCopy updateWithBehaviorController:self];
}

- (void)reset
{
  v16 = *MEMORY[0x1E69E9840];
  viewport = [(SXComponentBehaviorController *)self viewport];
  isPopulated = [viewport isPopulated];

  if (isPopulated)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    behaviorHandlers = [(SXComponentBehaviorController *)self behaviorHandlers];
    v6 = [behaviorHandlers countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(behaviorHandlers);
          }

          v10 = *(*(&v11 + 1) + 8 * i);
          if ([v10 isSetup])
          {
            [v10 destroyWithBehaviorController:self];
          }
        }

        v7 = [behaviorHandlers countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

@end