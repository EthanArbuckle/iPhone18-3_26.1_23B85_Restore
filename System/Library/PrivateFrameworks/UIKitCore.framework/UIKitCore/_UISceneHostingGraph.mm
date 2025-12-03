@interface _UISceneHostingGraph
+ (id)sharedInstance;
- (id)_init;
- (id)_localWindowGraphHostingContextID:(unsigned int)d;
- (id)_rawWindowHostingContextID:(unsigned int)d;
- (id)localWindowGraphHostingContextID:(unsigned int)d;
- (id)observeLocalWindowGraphHostingContextID:(unsigned int)d withHandler:(id)handler;
- (void)_noteContextID:(unsigned int)d hostedByWindow:(id)window;
@end

@implementation _UISceneHostingGraph

+ (id)sharedInstance
{
  if (qword_1ED4992E0 != -1)
  {
    dispatch_once(&qword_1ED4992E0, &__block_literal_global_278);
  }

  v3 = _MergedGlobals_1_13;

  return v3;
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = _UISceneHostingGraph;
  v2 = [(_UISceneHostingGraph *)&v6 init];
  if (v2)
  {
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    hostingGraph = v2->_hostingGraph;
    v2->_hostingGraph = strongToWeakObjectsMapTable;
  }

  return v2;
}

- (id)localWindowGraphHostingContextID:(unsigned int)d
{
  v3 = *&d;
  BSDispatchQueueAssertMain();

  return [(_UISceneHostingGraph *)self _localWindowGraphHostingContextID:v3];
}

- (id)observeLocalWindowGraphHostingContextID:(unsigned int)d withHandler:(id)handler
{
  v4 = *&d;
  handlerCopy = handler;
  BSDispatchQueueAssertMain();
  v7 = [(_UISceneHostingGraph *)self localWindowGraphHostingContextID:v4];
  if (!self->_lazy_contextTrackingAssertions)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    lazy_contextTrackingAssertions = self->_lazy_contextTrackingAssertions;
    self->_lazy_contextTrackingAssertions = weakObjectsHashTable;
  }

  objc_initWeak(&location, self);
  v10 = [_UIContextGraphTrackingAssertion alloc];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __76___UISceneHostingGraph_observeLocalWindowGraphHostingContextID_withHandler___block_invoke;
  v16 = &unk_1E70FA170;
  objc_copyWeak(&v17, &location);
  v11 = [(_UIContextGraphTrackingAssertion *)v10 initWithContextID:v4 windowGraph:v7 clientHandlerBlock:handlerCopy invalidationBlock:&v13];
  [(NSHashTable *)self->_lazy_contextTrackingAssertions addObject:v11, v13, v14, v15, v16];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v11;
}

- (void)_noteContextID:(unsigned int)d hostedByWindow:(id)window
{
  v4 = *&d;
  v21 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  BSDispatchQueueAssertMain();
  hostingGraph = self->_hostingGraph;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  if (windowCopy)
  {
    [(NSMapTable *)hostingGraph setObject:windowCopy forKey:v8];
  }

  else
  {
    [(NSMapTable *)hostingGraph removeObjectForKey:v8];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_lazy_contextTrackingAssertions;
  v10 = [(NSHashTable *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if ([v14 isContextIDRelevant:{v4, v16}])
        {
          v15 = -[_UISceneHostingGraph localWindowGraphHostingContextID:](self, "localWindowGraphHostingContextID:", [v14 contextID]);
          [v14 setWindowGraph:v15];
        }
      }

      v11 = [(NSHashTable *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }
}

- (id)_rawWindowHostingContextID:(unsigned int)d
{
  hostingGraph = self->_hostingGraph;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&d];
  v5 = [(NSMapTable *)hostingGraph objectForKey:v4];

  return v5;
}

- (id)_localWindowGraphHostingContextID:(unsigned int)d
{
  _contextId = *&d;
  v22 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  v5 = 0;
  v6 = 0;
  array = 0;
  while (1)
  {
    v8 = v6;
    v6 = v5;

    v9 = [UIWindow allWindowsIncludingInternalWindows:1 onlyVisibleWindows:0];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v9;
    v5 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v11 = *v18;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v10);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          if ([v13 _contextId] == _contextId)
          {
            v5 = v13;
            goto LABEL_12;
          }
        }

        v5 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    if (v6 == v5)
    {
    }

    else if (v5)
    {
      goto LABEL_17;
    }

    hostingGraph = self->_hostingGraph;
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:_contextId];
    v5 = [(NSMapTable *)hostingGraph objectForKey:v15];

    if (!v5)
    {
      break;
    }

LABEL_17:
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:v5];
    _contextId = [v5 _contextId];
  }

  [0 _contextId];

  return array;
}

@end