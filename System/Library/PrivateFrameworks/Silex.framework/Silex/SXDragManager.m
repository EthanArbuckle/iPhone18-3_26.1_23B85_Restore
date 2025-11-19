@interface SXDragManager
- (BOOL)dragSession:(id)a3 containsDragItemWithIdentifier:(id)a4;
- (SXDragManager)initWithSharingPolicy:(unint64_t)a3 dataSource:(id)a4;
- (SXDragManagerDataSource)dataSource;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
- (id)dragItemForObject:(id)a3 withSession:(id)a4;
- (id)itemsForSession:(id)a3 atLocation:(CGPoint)a4;
- (void)dealloc;
- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5;
- (void)dragInteraction:(id)a3 session:(id)a4 willAddItems:(id)a5 forInteraction:(id)a6;
- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4;
- (void)setEnabled:(BOOL)a3;
- (void)updateAccessibilityDragSourceDescriptorsForDraggableElement:(id)a3;
@end

@implementation SXDragManager

- (SXDragManager)initWithSharingPolicy:(unint64_t)a3 dataSource:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = SXDragManager;
  v7 = [(SXDragManager *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_sharingPolicy = a3;
    objc_storeWeak(&v7->_dataSource, v6);
    if (a3 != 1)
    {
      v9 = [objc_alloc(MEMORY[0x1E69DC988]) initWithDelegate:v8];
      dragInteraction = v8->_dragInteraction;
      v8->_dragInteraction = v9;

      v11 = [v6 viewForDragManager:v8];
      [v11 addInteraction:v8->_dragInteraction];
    }
  }

  return v8;
}

- (void)dealloc
{
  v3 = [(SXDragManager *)self dragInteraction];
  v4 = [v3 view];
  v5 = [(SXDragManager *)self dragInteraction];
  [v4 removeInteraction:v5];

  v6.receiver = self;
  v6.super_class = SXDragManager;
  [(SXDragManager *)&v6 dealloc];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  if ([MEMORY[0x1E69DC988] isEnabledByDefault])
  {
    self->_enabled = v3;
    v5 = [(SXDragManager *)self dragInteraction];
    [v5 setEnabled:v3];
  }
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v6 = a4;
  v7 = [a3 view];
  [v6 locationInView:v7];
  v9 = v8;
  v11 = v10;

  v12 = [(SXDragManager *)self itemsForSession:v6 atLocation:v9, v11];

  return v12;
}

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
{
  v5 = a4;
  v6 = [v5 localObject];
  v7 = [v6 conformsToProtocol:&unk_1F53AB2B8];

  if (v7)
  {
    v8 = [v5 localObject];
    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x1E69DD068]);
      v10 = [v8 dragPreviewView];
      v11 = [v9 initWithView:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)itemsForSession:(id)a3 atLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [(SXDragManager *)self dataSource];
  v9 = [v8 dragManager:self dragableAtLocation:{x, y}];

  v10 = [(SXDragManager *)self dragItemForObject:v9 withSession:v7];

  if (v10)
  {
    v13[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [a4 items];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 localObject];
        v11 = [v10 conformsToProtocol:&unk_1F53AB2B8];

        if (v11)
        {
          v12 = [v9 localObject];
          [v12 didStartDragging];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)dragInteraction:(id)a3 session:(id)a4 willAddItems:(id)a5 forInteraction:(id)a6
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a5;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 localObject];
        v13 = [v12 conformsToProtocol:&unk_1F53AB2B8];

        if (v13)
        {
          v14 = [v11 localObject];
          [v14 didStartDragging];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [a4 items];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 localObject];
        v12 = [v11 conformsToProtocol:&unk_1F53AB2B8];

        if (v12)
        {
          v13 = [v10 localObject];
          [v13 didEndDragging];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (id)dragItemForObject:(id)a3 withSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 dragIdentifier];
  v9 = [(SXDragManager *)self dragSession:v7 containsDragItemWithIdentifier:v8];

  v10 = [v6 dragObject];

  v11 = 0;
  if (v10 && !v9)
  {
    v12 = objc_alloc(MEMORY[0x1E696ACA0]);
    v13 = [v6 dragObject];
    v14 = [v12 initWithObject:v13];

    v11 = [objc_alloc(MEMORY[0x1E69DC990]) initWithItemProvider:v14];
    [v11 setLocalObject:v6];
  }

  return v11;
}

- (BOOL)dragSession:(id)a3 containsDragItemWithIdentifier:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [a3 items];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 localObject];
        v12 = [v11 conformsToProtocol:&unk_1F53AB2B8];

        if (v12)
        {
          v13 = [v10 localObject];
          v14 = v13;
          if (v13)
          {
            v15 = [v13 dragIdentifier];
            v16 = [v15 isEqualToString:v5];

            if (v16)
            {

              LOBYTE(v7) = 1;
              goto LABEL_14;
            }
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v7;
}

- (void)updateAccessibilityDragSourceDescriptorsForDraggableElement:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_1F53AB2B8])
  {
    v5 = [v4 stringForAXDragAction];
  }

  else
  {
    v6 = [MEMORY[0x1E696AAE8] mainBundle];
    v5 = [v6 localizedStringForKey:@"Drag Item" value:&stru_1F532F6C0 table:0];
  }

  v7 = [(SXDragManager *)self dataSource];
  v8 = [v7 viewForDragManager:self];

  v9 = [objc_alloc(MEMORY[0x1E69DC620]) initWithName:v5 view:v8];
  v11[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [v4 setAccessibilityDragSourceDescriptors:v10];
}

- (SXDragManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end