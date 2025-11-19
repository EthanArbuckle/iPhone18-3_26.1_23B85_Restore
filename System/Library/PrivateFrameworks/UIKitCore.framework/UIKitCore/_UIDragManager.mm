@interface _UIDragManager
+ (void)initializeDraggingSystem;
- (CAContext)dragImageContext;
- (UIScreen)screen;
- (_UIDragManager)initWithScreen:(id)a3;
- (id)beginDragWithSessionConfiguration:(id)a3;
- (id)dragDestinationWithEvent:(id)a3;
- (id)sessionSourceWithIdentifier:(unsigned int)a3;
- (unsigned)uploadImage:(CGImage *)a3;
- (void)_willAddDeactivationReason:(id)a3;
- (void)deleteSlots:(id)a3;
- (void)performAfterCompletingPendingSessionRequests:(id)a3;
- (void)performPendingSessionCompletionBlocksIfPossible;
- (void)sessionDestinationDidEnd:(id)a3;
- (void)sessionSourceDidEnd:(id)a3;
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

- (_UIDragManager)initWithScreen:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"screen must be non-nil"];
  }

  v14.receiver = self;
  v14.super_class = _UIDragManager;
  v5 = [(_UIDragManager *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_screen, v4);
    dragSessionSources = v6->_dragSessionSources;
    v8 = MEMORY[0x1E695E0F0];
    v6->_dragSessionSources = MEMORY[0x1E695E0F0];

    dragSessionDestinations = v6->_dragSessionDestinations;
    v6->_dragSessionDestinations = v8;

    v10 = objc_opt_new();
    pendingSessionRequestsCompletionBlocks = v6->_pendingSessionRequestsCompletionBlocks;
    v6->_pendingSessionRequestsCompletionBlocks = v10;

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v6 selector:sel__willAddDeactivationReason_ name:@"_UIApplicationWillAddDeactivationReasonNotification" object:0];
  }

  return v6;
}

- (void)_willAddDeactivationReason:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSArray *)self->_dragSessionSources copy:a3];
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
    v4 = [MEMORY[0x1E695DF90] dictionary];
    [v4 setObject:@"DragAndDropContext" forKey:*MEMORY[0x1E69796A0]];
    [v4 setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E69796C0]];
    v5 = [MEMORY[0x1E6979320] remoteContextWithOptions:v4];
    v6 = self->_dragImageContext;
    self->_dragImageContext = v5;

    dragImageContext = self->_dragImageContext;
  }

  return dragImageContext;
}

- (unsigned)uploadImage:(CGImage *)a3
{
  v4 = [(_UIDragManager *)self dragImageContext];
  if (v4)
  {
    [MEMORY[0x1E6979518] begin];
    v5 = [v4 createSlot];
    [v4 setObject:a3 forSlot:v5];
    [MEMORY[0x1E6979518] commit];
  }

  else
  {
    LODWORD(v5) = 0;
  }

  return v5;
}

- (void)deleteSlots:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_UIDragManager *)self dragImageContext];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v4;
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

        [v5 deleteSlot:{objc_msgSend(*(*(&v11 + 1) + 8 * v10++), "unsignedIntegerValue", v11)}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)beginDragWithSessionConfiguration:(id)a3
{
  v5 = a3;
  v6 = [[_UIInternalDraggingSessionSource alloc] initWithDragManager:self configuration:v5];

  if (v6)
  {
    v7 = [(_UIDragManager *)self dragSessionSources];
    v8 = [v7 mutableCopy];

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

- (void)performAfterCompletingPendingSessionRequests:(id)a3
{
  aBlock = a3;
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

- (void)sessionSourceDidEnd:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"sessionSource must be non-nil"];
  }

  v4 = [(_UIDragManager *)self dragSessionSources];
  v5 = [v4 mutableCopy];

  [v5 removeObjectIdenticalTo:v6];
  [(_UIDragManager *)self setDragSessionSources:v5];
}

- (id)sessionSourceWithIdentifier:(unsigned int)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(_UIDragManager *)self dragSessionSources];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 sessionIdentifier] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (id)dragDestinationWithEvent:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"dragEvent must be non-nil"];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(_UIDragManager *)self dragSessionDestinations];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 canBeDrivenByDragEvent:v4])
        {
          [v10 addDragEvent:v4];
          v11 = v10;
          goto LABEL_14;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = [[_UIInternalDraggingSessionDestination alloc] initWithDragManager:self dragEvent:v4];
  if (v11)
  {
    v12 = [(_UIDragManager *)self dragSessionDestinations];
    v5 = [v12 mutableCopy];

    [v5 addObject:v11];
    [(_UIDragManager *)self setDragSessionDestinations:v5];
    [(_UIInternalDraggingSessionDestination *)v11 connect];
LABEL_14:
  }

  return v11;
}

- (void)sessionDestinationDidEnd:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"sessionDestination must be non-nil"];
  }

  if (_UIApplicationIsExtension())
  {
    [_UIKitDragAndDropStatistics incrementUIKitScalarValueBy:1 forKey:@"dropOnExtension"];
  }

  v4 = [(_UIDragManager *)self dragSessionDestinations];
  v5 = [v4 mutableCopy];

  [v5 removeObjectIdenticalTo:v6];
  [(_UIDragManager *)self setDragSessionDestinations:v5];
}

- (UIScreen)screen
{
  WeakRetained = objc_loadWeakRetained(&self->_screen);

  return WeakRetained;
}

@end