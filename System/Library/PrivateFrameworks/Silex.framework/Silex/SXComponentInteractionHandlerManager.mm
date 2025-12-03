@interface SXComponentInteractionHandlerManager
- (SXComponentInteractionHandlerManager)initWithViewport:(id)viewport;
- (id)componentViewForLocation:(CGPoint)location;
- (id)interactionsForComponentView:(id)view;
- (id)interactionsForComponentView:(id)view type:(unint64_t)type;
- (void)addInteractionHandler:(id)handler componentView:(id)view types:(unint64_t)types;
- (void)removeInteractionHandler:(id)handler componentView:(id)view;
- (void)updateUserInteractionForComponentView:(id)view;
@end

@implementation SXComponentInteractionHandlerManager

- (SXComponentInteractionHandlerManager)initWithViewport:(id)viewport
{
  viewportCopy = viewport;
  v10.receiver = self;
  v10.super_class = SXComponentInteractionHandlerManager;
  v6 = [(SXComponentInteractionHandlerManager *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:517 valueOptions:0];
    interactionHandlers = v6->_interactionHandlers;
    v6->_interactionHandlers = v7;

    objc_storeStrong(&v6->_viewport, viewport);
  }

  return v6;
}

- (void)addInteractionHandler:(id)handler componentView:(id)view types:(unint64_t)types
{
  handlerCopy = handler;
  viewCopy = view;
  if (handlerCopy && viewCopy)
  {
    v9 = [[SXComponentInteraction alloc] initWithComponentView:viewCopy handler:handlerCopy types:types];
    if (-[SXComponentInteraction handlesType:](v9, "handlesType:", 8) && ([handlerCopy conformsToProtocol:&unk_1F53A02A8] & 1) != 0 || !-[SXComponentInteraction handlesType:](v9, "handlesType:", 8))
    {
      interactionHandlers = [(SXComponentInteractionHandlerManager *)self interactionHandlers];
      array = [interactionHandlers objectForKey:viewCopy];

      if (!array)
      {
        array = [MEMORY[0x1E695DF70] array];
        interactionHandlers2 = [(SXComponentInteractionHandlerManager *)self interactionHandlers];
        [interactionHandlers2 setObject:array forKey:viewCopy];
      }

      [array addObject:v9];
      [(SXComponentInteractionHandlerManager *)self updateUserInteractionForComponentView:viewCopy];
    }
  }
}

- (void)removeInteractionHandler:(id)handler componentView:(id)view
{
  v23 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  viewCopy = view;
  v8 = viewCopy;
  if (handlerCopy && viewCopy)
  {
    interactionHandlers = [(SXComponentInteractionHandlerManager *)self interactionHandlers];
    v10 = [interactionHandlers objectForKey:v8];

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
          handler = [v16 handler];

          if (handler == handlerCopy)
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

- (id)componentViewForLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  interactionHandlers = [(SXComponentInteractionHandlerManager *)self interactionHandlers];
  keyEnumerator = [interactionHandlers keyEnumerator];

  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    v9 = nextObject;
    while (1)
    {
      [v9 absoluteFrame];
      v19.x = x;
      v19.y = y;
      if (CGRectContainsPoint(v21, v19))
      {
        viewport = [(SXComponentInteractionHandlerManager *)self viewport];
        [viewport convertPoint:v9 toView:{x, y}];
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

      nextObject2 = [keyEnumerator nextObject];

      v9 = nextObject2;
      if (!nextObject2)
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

- (id)interactionsForComponentView:(id)view
{
  viewCopy = view;
  interactionHandlers = [(SXComponentInteractionHandlerManager *)self interactionHandlers];
  v6 = [interactionHandlers objectForKey:viewCopy];

  reverseObjectEnumerator = [v6 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  v9 = [allObjects copy];
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

- (id)interactionsForComponentView:(id)view type:(unint64_t)type
{
  typeCopy = type;
  v29 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  interactionHandlers = [(SXComponentInteractionHandlerManager *)self interactionHandlers];
  v8 = [interactionHandlers objectForKey:viewCopy];
  reverseObjectEnumerator = [v8 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];
  v11 = [allObjects mutableCopy];

  array = [MEMORY[0x1E695DF70] array];
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
        if ((typeCopy & 2) != 0 && v19)
        {
          [array addObject:v18];
        }

        v20 = [v18 handlesType:4];
        if ((typeCopy & 4) != 0 && v20)
        {
          [array addObject:v18];
        }

        v21 = [v18 handlesType:8];
        if ((typeCopy & 8) != 0 && v21)
        {
          [array addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  v22 = [array copy];

  return v22;
}

- (void)updateUserInteractionForComponentView:(id)view
{
  v18 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  interactionHandlers = [(SXComponentInteractionHandlerManager *)self interactionHandlers];
  v6 = [interactionHandlers objectForKey:viewCopy];

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

  [viewCopy setUserInteractionEnabled:v12];
}

@end