@interface SXComponentBehaviorController
- (SXComponentBehaviorController)initWithViewport:(id)a3 andAnimator:(id)a4;
- (id)existingHandlerForComponentView:(id)a3 behavior:(id)a4;
- (void)registerComponentView:(id)a3 behavior:(id)a4;
- (void)reset;
- (void)unregisterComponentView:(id)a3;
- (void)update;
- (void)updateComponentView:(id)a3;
- (void)updateHandler:(id)a3;
@end

@implementation SXComponentBehaviorController

- (SXComponentBehaviorController)initWithViewport:(id)a3 andAnimator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SXComponentBehaviorController;
  v9 = [(SXComponentBehaviorController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewport, a3);
    objc_storeStrong(&v10->_animator, a4);
    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    behaviorHandlers = v10->_behaviorHandlers;
    v10->_behaviorHandlers = v11;

    [(SXViewport *)v10->_viewport addViewportChangeListener:v10 forOptions:14];
  }

  return v10;
}

- (void)registerComponentView:(id)a3 behavior:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v11 component];
  v8 = [v6 handlerClassForComponent:v7];

  if (v8)
  {
    v9 = [(SXComponentBehaviorController *)self existingHandlerForComponentView:v11 behavior:v6];
    if (!v9)
    {
      v9 = [[v8 alloc] initWithComponentView:v11 withBehavior:v6];
      v10 = [(SXComponentBehaviorController *)self behaviorHandlers];
      [v10 addObject:v9];
    }
  }
}

- (void)unregisterComponentView:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [(SXComponentBehaviorController *)self behaviorHandlers];
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = [v11 componentView];

        if (v12 == v4)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = [(SXComponentBehaviorController *)self behaviorHandlers];
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v20 + 1) + 8 * j);
        if ([v18 isSetup])
        {
          [v18 destroyWithBehaviorController:self];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v15);
  }

  v19 = [(SXComponentBehaviorController *)self behaviorHandlers];
  [v19 minusSet:v5];
}

- (id)existingHandlerForComponentView:(id)a3 behavior:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [(SXComponentBehaviorController *)self behaviorHandlers];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 componentView];
        v14 = v13;
        if (v13 == v6)
        {
          v15 = [v12 behavior];

          if (v15 == v7)
          {
            v9 = v12;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  v3 = [(SXComponentBehaviorController *)self viewport];
  v4 = [v3 isPopulated];

  if (v4)
  {
    v5 = [(SXComponentBehaviorController *)self viewport];
    [v5 dynamicBounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(SXComponentBehaviorController *)self viewport];
    [v14 bounds];
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
    v21 = [(SXComponentBehaviorController *)self behaviorHandlers];
    v22 = [v21 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v33 + 1) + 8 * i);
          if (([v26 requiresContinuousUpdates] & 1) == 0)
          {
            v27 = [v26 componentView];
            [v27 absoluteFrame];
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

        v23 = [v21 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v23);
    }
  }
}

- (void)updateComponentView:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SXComponentBehaviorController *)self viewport];
  v6 = [v5 isPopulated];

  if (v6)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [(SXComponentBehaviorController *)self behaviorHandlers];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          v13 = [v12 componentView];

          if (v13 == v4)
          {
            [(SXComponentBehaviorController *)self updateHandler:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }
}

- (void)updateHandler:(id)a3
{
  v4 = a3;
  if (([v4 isSetup] & 1) == 0)
  {
    [v4 setupWithBehaviorController:self];
  }

  [v4 updateWithBehaviorController:self];
}

- (void)reset
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(SXComponentBehaviorController *)self viewport];
  v4 = [v3 isPopulated];

  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(SXComponentBehaviorController *)self behaviorHandlers];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v11 + 1) + 8 * i);
          if ([v10 isSetup])
          {
            [v10 destroyWithBehaviorController:self];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

@end