@interface SXDragManager
- (BOOL)dragSession:(id)session containsDragItemWithIdentifier:(id)identifier;
- (SXDragManager)initWithSharingPolicy:(unint64_t)policy dataSource:(id)source;
- (SXDragManagerDataSource)dataSource;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (id)dragItemForObject:(id)object withSession:(id)session;
- (id)itemsForSession:(id)session atLocation:(CGPoint)location;
- (void)dealloc;
- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction session:(id)session willAddItems:(id)items forInteraction:(id)forInteraction;
- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin;
- (void)setEnabled:(BOOL)enabled;
- (void)updateAccessibilityDragSourceDescriptorsForDraggableElement:(id)element;
@end

@implementation SXDragManager

- (SXDragManager)initWithSharingPolicy:(unint64_t)policy dataSource:(id)source
{
  sourceCopy = source;
  v13.receiver = self;
  v13.super_class = SXDragManager;
  v7 = [(SXDragManager *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_sharingPolicy = policy;
    objc_storeWeak(&v7->_dataSource, sourceCopy);
    if (policy != 1)
    {
      v9 = [objc_alloc(MEMORY[0x1E69DC988]) initWithDelegate:v8];
      dragInteraction = v8->_dragInteraction;
      v8->_dragInteraction = v9;

      v11 = [sourceCopy viewForDragManager:v8];
      [v11 addInteraction:v8->_dragInteraction];
    }
  }

  return v8;
}

- (void)dealloc
{
  dragInteraction = [(SXDragManager *)self dragInteraction];
  view = [dragInteraction view];
  dragInteraction2 = [(SXDragManager *)self dragInteraction];
  [view removeInteraction:dragInteraction2];

  v6.receiver = self;
  v6.super_class = SXDragManager;
  [(SXDragManager *)&v6 dealloc];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([MEMORY[0x1E69DC988] isEnabledByDefault])
  {
    self->_enabled = enabledCopy;
    dragInteraction = [(SXDragManager *)self dragInteraction];
    [dragInteraction setEnabled:enabledCopy];
  }
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  sessionCopy = session;
  view = [interaction view];
  [sessionCopy locationInView:view];
  v9 = v8;
  v11 = v10;

  v12 = [(SXDragManager *)self itemsForSession:sessionCopy atLocation:v9, v11];

  return v12;
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  itemCopy = item;
  localObject = [itemCopy localObject];
  v7 = [localObject conformsToProtocol:&unk_1F53AB2B8];

  if (v7)
  {
    localObject2 = [itemCopy localObject];
    if (localObject2)
    {
      v9 = objc_alloc(MEMORY[0x1E69DD068]);
      dragPreviewView = [localObject2 dragPreviewView];
      v11 = [v9 initWithView:dragPreviewView];
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

- (id)itemsForSession:(id)session atLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v13[1] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  dataSource = [(SXDragManager *)self dataSource];
  v9 = [dataSource dragManager:self dragableAtLocation:{x, y}];

  v10 = [(SXDragManager *)self dragItemForObject:v9 withSession:sessionCopy];

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

- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  items = [begin items];
  v5 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(items);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        localObject = [v9 localObject];
        v11 = [localObject conformsToProtocol:&unk_1F53AB2B8];

        if (v11)
        {
          localObject2 = [v9 localObject];
          [localObject2 didStartDragging];
        }
      }

      v6 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)dragInteraction:(id)interaction session:(id)session willAddItems:(id)items forInteraction:(id)forInteraction
{
  v20 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [itemsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(itemsCopy);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        localObject = [v11 localObject];
        v13 = [localObject conformsToProtocol:&unk_1F53AB2B8];

        if (v13)
        {
          localObject2 = [v11 localObject];
          [localObject2 didStartDragging];
        }
      }

      v8 = [itemsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  items = [session items];
  v6 = [items countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(items);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        localObject = [v10 localObject];
        v12 = [localObject conformsToProtocol:&unk_1F53AB2B8];

        if (v12)
        {
          localObject2 = [v10 localObject];
          [localObject2 didEndDragging];
        }
      }

      v7 = [items countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (id)dragItemForObject:(id)object withSession:(id)session
{
  objectCopy = object;
  sessionCopy = session;
  dragIdentifier = [objectCopy dragIdentifier];
  v9 = [(SXDragManager *)self dragSession:sessionCopy containsDragItemWithIdentifier:dragIdentifier];

  dragObject = [objectCopy dragObject];

  v11 = 0;
  if (dragObject && !v9)
  {
    v12 = objc_alloc(MEMORY[0x1E696ACA0]);
    dragObject2 = [objectCopy dragObject];
    v14 = [v12 initWithObject:dragObject2];

    v11 = [objc_alloc(MEMORY[0x1E69DC990]) initWithItemProvider:v14];
    [v11 setLocalObject:objectCopy];
  }

  return v11;
}

- (BOOL)dragSession:(id)session containsDragItemWithIdentifier:(id)identifier
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  items = [session items];
  v7 = [items countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(items);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        localObject = [v10 localObject];
        v12 = [localObject conformsToProtocol:&unk_1F53AB2B8];

        if (v12)
        {
          localObject2 = [v10 localObject];
          v14 = localObject2;
          if (localObject2)
          {
            dragIdentifier = [localObject2 dragIdentifier];
            v16 = [dragIdentifier isEqualToString:identifierCopy];

            if (v16)
            {

              LOBYTE(v7) = 1;
              goto LABEL_14;
            }
          }
        }
      }

      v7 = [items countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (void)updateAccessibilityDragSourceDescriptorsForDraggableElement:(id)element
{
  v11[1] = *MEMORY[0x1E69E9840];
  elementCopy = element;
  if ([elementCopy conformsToProtocol:&unk_1F53AB2B8])
  {
    stringForAXDragAction = [elementCopy stringForAXDragAction];
  }

  else
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    stringForAXDragAction = [mainBundle localizedStringForKey:@"Drag Item" value:&stru_1F532F6C0 table:0];
  }

  dataSource = [(SXDragManager *)self dataSource];
  v8 = [dataSource viewForDragManager:self];

  v9 = [objc_alloc(MEMORY[0x1E69DC620]) initWithName:stringForAXDragAction view:v8];
  v11[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [elementCopy setAccessibilityDragSourceDescriptors:v10];
}

- (SXDragManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end