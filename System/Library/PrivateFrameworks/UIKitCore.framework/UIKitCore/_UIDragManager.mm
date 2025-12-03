@interface _UIDragManager
+ (void)initializeDraggingSystem;
- (CAContext)dragImageContext;
- (UIScreen)screen;
- (_UIDragManager)initWithScreen:(id)screen;
- (id)beginDragWithSessionConfiguration:(id)configuration;
- (id)dragDestinationWithEvent:(id)event;
- (id)sessionSourceWithIdentifier:(unsigned int)identifier;
- (unsigned)uploadImage:(CGImage *)image;
- (void)_willAddDeactivationReason:(id)reason;
- (void)deleteSlots:(id)slots;
- (void)performAfterCompletingPendingSessionRequests:(id)requests;
- (void)performPendingSessionCompletionBlocksIfPossible;
- (void)sessionDestinationDidEnd:(id)end;
- (void)sessionSourceDidEnd:(id)end;
@end

@implementation _UIDragManager

+ (void)initializeDraggingSystem
{
  if (qword_1ED49F488 != -1)
  {
    dispatch_once(&qword_1ED49F488, &__block_literal_global_393);
  }

  v3 = _MergedGlobals_1199;

  [v3 warmUp];
}

- (_UIDragManager)initWithScreen:(id)screen
{
  screenCopy = screen;
  if (!screenCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"screen must be non-nil"];
  }

  v14.receiver = self;
  v14.super_class = _UIDragManager;
  v5 = [(_UIDragManager *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_screen, screenCopy);
    dragSessionSources = v6->_dragSessionSources;
    v8 = MEMORY[0x1E695E0F0];
    v6->_dragSessionSources = MEMORY[0x1E695E0F0];

    dragSessionDestinations = v6->_dragSessionDestinations;
    v6->_dragSessionDestinations = v8;

    v10 = objc_opt_new();
    pendingSessionRequestsCompletionBlocks = v6->_pendingSessionRequestsCompletionBlocks;
    v6->_pendingSessionRequestsCompletionBlocks = v10;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__willAddDeactivationReason_ name:@"_UIApplicationWillAddDeactivationReasonNotification" object:0];
  }

  return v6;
}

- (void)_willAddDeactivationReason:(id)reason
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSArray *)self->_dragSessionSources copy:reason];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 shouldCancelOnAppDeactivation])
        {
          [v8 cancelDrag];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (CAContext)dragImageContext
{
  dragImageContext = self->_dragImageContext;
  if (!dragImageContext)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:@"DragAndDropContext" forKey:*MEMORY[0x1E69796A0]];
    [dictionary setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E69796C0]];
    v5 = [MEMORY[0x1E6979320] remoteContextWithOptions:dictionary];
    v6 = self->_dragImageContext;
    self->_dragImageContext = v5;

    dragImageContext = self->_dragImageContext;
  }

  return dragImageContext;
}

- (unsigned)uploadImage:(CGImage *)image
{
  dragImageContext = [(_UIDragManager *)self dragImageContext];
  if (dragImageContext)
  {
    [MEMORY[0x1E6979518] begin];
    createSlot = [dragImageContext createSlot];
    [dragImageContext setObject:image forSlot:createSlot];
    [MEMORY[0x1E6979518] commit];
  }

  else
  {
    LODWORD(createSlot) = 0;
  }

  return createSlot;
}

- (void)deleteSlots:(id)slots
{
  v16 = *MEMORY[0x1E69E9840];
  slotsCopy = slots;
  dragImageContext = [(_UIDragManager *)self dragImageContext];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = slotsCopy;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [dragImageContext deleteSlot:{objc_msgSend(*(*(&v11 + 1) + 8 * v10++), "unsignedIntegerValue", v11)}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)beginDragWithSessionConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6 = [[_UIInternalDraggingSessionSource alloc] initWithDragManager:self configuration:configurationCopy];

  if (v6)
  {
    dragSessionSources = [(_UIDragManager *)self dragSessionSources];
    v8 = [dragSessionSources mutableCopy];

    [v8 addObject:v6];
    [(_UIDragManager *)self setDragSessionSources:v8];
    ++self->_pendingSessionRequests;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52___UIDragManager_beginDragWithSessionConfiguration___block_invoke;
    v10[3] = &unk_1E70F9B38;
    v10[4] = self;
    v10[5] = a2;
    [(_UIInternalDraggingSessionSource *)v6 beginDrag:v10];
  }

  return v6;
}

- (void)performAfterCompletingPendingSessionRequests:(id)requests
{
  aBlock = requests;
  if ([(_UIDragManager *)self hasPendingSessionRequests])
  {
    pendingSessionRequestsCompletionBlocks = self->_pendingSessionRequestsCompletionBlocks;
    v5 = _Block_copy(aBlock);

    [(NSMutableArray *)pendingSessionRequestsCompletionBlocks addObject:v5];
    aBlock = v5;
  }

  else
  {
    aBlock[2]();
  }
}

- (void)performPendingSessionCompletionBlocksIfPossible
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_pendingSessionRequestsCompletionBlocks count]&& ![(_UIDragManager *)self hasPendingSessionRequests])
  {
    v3 = [(NSMutableArray *)self->_pendingSessionRequestsCompletionBlocks copy];
    [(NSMutableArray *)self->_pendingSessionRequestsCompletionBlocks removeAllObjects];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          (*(*(*(&v9 + 1) + 8 * v8) + 16))(*(*(&v9 + 1) + 8 * v8));
          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)sessionSourceDidEnd:(id)end
{
  endCopy = end;
  if (!endCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"sessionSource must be non-nil"];
  }

  dragSessionSources = [(_UIDragManager *)self dragSessionSources];
  v5 = [dragSessionSources mutableCopy];

  [v5 removeObjectIdenticalTo:endCopy];
  [(_UIDragManager *)self setDragSessionSources:v5];
}

- (id)sessionSourceWithIdentifier:(unsigned int)identifier
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  dragSessionSources = [(_UIDragManager *)self dragSessionSources];
  v5 = [dragSessionSources countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(dragSessionSources);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 sessionIdentifier] == identifier)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [dragSessionSources countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)dragDestinationWithEvent:(id)event
{
  v19 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if (!eventCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"dragEvent must be non-nil"];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  dragSessionDestinations = [(_UIDragManager *)self dragSessionDestinations];
  v6 = [dragSessionDestinations countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(dragSessionDestinations);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 canBeDrivenByDragEvent:eventCopy])
        {
          [v10 addDragEvent:eventCopy];
          v11 = v10;
          goto LABEL_14;
        }
      }

      v7 = [dragSessionDestinations countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = [[_UIInternalDraggingSessionDestination alloc] initWithDragManager:self dragEvent:eventCopy];
  if (v11)
  {
    dragSessionDestinations2 = [(_UIDragManager *)self dragSessionDestinations];
    dragSessionDestinations = [dragSessionDestinations2 mutableCopy];

    [dragSessionDestinations addObject:v11];
    [(_UIDragManager *)self setDragSessionDestinations:dragSessionDestinations];
    [(_UIInternalDraggingSessionDestination *)v11 connect];
LABEL_14:
  }

  return v11;
}

- (void)sessionDestinationDidEnd:(id)end
{
  endCopy = end;
  if (!endCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"sessionDestination must be non-nil"];
  }

  if (_UIApplicationIsExtension())
  {
    [_UIKitDragAndDropStatistics incrementUIKitScalarValueBy:1 forKey:@"dropOnExtension"];
  }

  dragSessionDestinations = [(_UIDragManager *)self dragSessionDestinations];
  v5 = [dragSessionDestinations mutableCopy];

  [v5 removeObjectIdenticalTo:endCopy];
  [(_UIDragManager *)self setDragSessionDestinations:v5];
}

- (UIScreen)screen
{
  WeakRetained = objc_loadWeakRetained(&self->_screen);

  return WeakRetained;
}

@end