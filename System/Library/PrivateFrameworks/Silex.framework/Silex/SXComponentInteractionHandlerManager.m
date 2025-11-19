@interface SXComponentInteractionHandlerManager
- (SXComponentInteractionHandlerManager)initWithViewport:(id)a3;
- (id)componentViewForLocation:(CGPoint)a3;
- (id)interactionsForComponentView:(id)a3;
- (id)interactionsForComponentView:(id)a3 type:(unint64_t)a4;
- (void)addInteractionHandler:(id)a3 componentView:(id)a4 types:(unint64_t)a5;
- (void)removeInteractionHandler:(id)a3 componentView:(id)a4;
- (void)updateUserInteractionForComponentView:(id)a3;
@end

@implementation SXComponentInteractionHandlerManager

- (SXComponentInteractionHandlerManager)initWithViewport:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SXComponentInteractionHandlerManager;
  v6 = [(SXComponentInteractionHandlerManager *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:517 valueOptions:0];
    interactionHandlers = v6->_interactionHandlers;
    v6->_interactionHandlers = v7;

    objc_storeStrong(&v6->_viewport, a3);
  }

  return v6;
}

- (void)addInteractionHandler:(id)a3 componentView:(id)a4 types:(unint64_t)a5
{
  v13 = a3;
  v8 = a4;
  if (v13 && v8)
  {
    v9 = [[SXComponentInteraction alloc] initWithComponentView:v8 handler:v13 types:a5];
    if (-[SXComponentInteraction handlesType:](v9, "handlesType:", 8) && ([v13 conformsToProtocol:&unk_1F53A02A8] & 1) != 0 || !-[SXComponentInteraction handlesType:](v9, "handlesType:", 8))
    {
      v10 = [(SXComponentInteractionHandlerManager *)self interactionHandlers];
      v11 = [v10 objectForKey:v8];

      if (!v11)
      {
        v11 = [MEMORY[0x1E695DF70] array];
        v12 = [(SXComponentInteractionHandlerManager *)self interactionHandlers];
        [v12 setObject:v11 forKey:v8];
      }

      [v11 addObject:v9];
      [(SXComponentInteractionHandlerManager *)self updateUserInteractionForComponentView:v8];
    }
  }
}

- (void)removeInteractionHandler:(id)a3 componentView:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [(SXComponentInteractionHandlerManager *)self interactionHandlers];
    v10 = [v9 objectForKey:v8];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = [v10 copy];
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v18 + 1) + 8 * i);
          v17 = [v16 handler];

          if (v17 == v6)
          {
            [v10 removeObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }

    [(SXComponentInteractionHandlerManager *)self updateUserInteractionForComponentView:v8];
  }
}

- (id)componentViewForLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(SXComponentInteractionHandlerManager *)self interactionHandlers];
  v7 = [v6 keyEnumerator];

  v8 = [v7 nextObject];
  if (v8)
  {
    v9 = v8;
    while (1)
    {
      [v9 absoluteFrame];
      v19.x = x;
      v19.y = y;
      if (CGRectContainsPoint(v21, v19))
      {
        v10 = [(SXComponentInteractionHandlerManager *)self viewport];
        [v10 convertPoint:v9 toView:{x, y}];
        v12 = v11;
        v14 = v13;

        [v9 interactionFrame];
        v20.x = v12;
        v20.y = v14;
        if (CGRectContainsPoint(v22, v20))
        {
          break;
        }
      }

      v15 = [v7 nextObject];

      v9 = v15;
      if (!v15)
      {
        goto LABEL_6;
      }
    }

    v16 = v9;
  }

  else
  {
LABEL_6:
    v16 = 0;
  }

  return v16;
}

- (id)interactionsForComponentView:(id)a3
{
  v4 = a3;
  v5 = [(SXComponentInteractionHandlerManager *)self interactionHandlers];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 reverseObjectEnumerator];
  v8 = [v7 allObjects];

  v9 = [v8 copy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  v12 = v11;

  return v11;
}

- (id)interactionsForComponentView:(id)a3 type:(unint64_t)a4
{
  v4 = a4;
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(SXComponentInteractionHandlerManager *)self interactionHandlers];
  v8 = [v7 objectForKey:v6];
  v9 = [v8 reverseObjectEnumerator];
  v10 = [v9 allObjects];
  v11 = [v10 mutableCopy];

  v12 = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        v19 = [v18 handlesType:{2, v24}];
        if ((v4 & 2) != 0 && v19)
        {
          [v12 addObject:v18];
        }

        v20 = [v18 handlesType:4];
        if ((v4 & 4) != 0 && v20)
        {
          [v12 addObject:v18];
        }

        v21 = [v18 handlesType:8];
        if ((v4 & 8) != 0 && v21)
        {
          [v12 addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  v22 = [v12 copy];

  return v22;
}

- (void)updateUserInteractionForComponentView:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(SXComponentInteractionHandlerManager *)self interactionHandlers];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 handlesType:2] & 1) != 0 || (objc_msgSend(v11, "handlesType:", 4))
        {
          v12 = 0;
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v12 = 1;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 1;
  }

LABEL_13:

  [v4 setUserInteractionEnabled:v12];
}

@end