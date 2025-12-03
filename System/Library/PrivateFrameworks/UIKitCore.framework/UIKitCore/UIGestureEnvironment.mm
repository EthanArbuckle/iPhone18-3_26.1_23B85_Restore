@interface UIGestureEnvironment
- (BOOL)_hasGesturesNeedingUpdate;
- (UIGestureEnvironment)init;
- (id)_gesturesWithDelayedTouchForTouch:(uint64_t)touch event:(void *)event;
- (id)_nodeForGestureRecognizer:(id *)recognizer;
- (id)nodeCoordinator;
- (uint64_t)_activeRelationshipsForGestureRecognizer:(uint64_t)recognizer;
- (uint64_t)_clearGestureNeedsUpdate:(uint64_t)result;
- (uint64_t)gestureRecognizer:(uint64_t)recognizer requiresGestureRecognizerToFail:;
- (uint64_t)setGestureNeedsUpdate:(uint64_t)result;
- (uint64_t)unmetRequirementsForGestureRecognizer:(uint64_t)recognizer;
- (void)_cancelGestureRecognizers:(uint64_t)recognizers;
- (void)_forceUpdateForSpringBoardOnly;
- (void)_gestureNeedsReset:(uint64_t)reset;
- (void)_notifyDependentsGestureRecognizerHasCompleted:(uint64_t)completed;
- (void)_performTouchContinuationWithOverrideHitTestedView:(id *)view;
- (void)_queueGestureRecognizersForResetIfFinished:(uint64_t)finished;
- (void)_removeNodeFromGestureGraph:(id *)graph;
- (void)_runTouchContinuationActions;
- (void)_scheduleTouchContinuationDeliveryForGestureRecognizer:(void *)aBlock deliveryBlock:;
- (void)_updateForEvent:(uint64_t)event window:;
- (void)addGestureRecognizer:(id)recognizer;
- (void)addRequirementForGestureRecognizer:(uint64_t)recognizer requiringGestureRecognizerToFail:;
- (void)dealloc;
- (void)removeGestureRecognizer:(id)recognizer;
- (void)removeRequirementForGestureRecognizer:(uint64_t)recognizer requiringGestureRecognizerToFail:;
- (void)setNeedsExclusivityUpdate;
@end

@implementation UIGestureEnvironment

- (id)nodeCoordinator
{
  if (val)
  {
    v1 = val;
    if (!val[13])
    {
      if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
      {
        dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
      }

      if (_UIIsGesturesFrameworkEnabled_enabled == 1)
      {
        objc_initWeak(&location, v1);
        v7[1] = MEMORY[0x1E69E9820];
        v7[2] = 3221225472;
        v7[3] = __39__UIGestureEnvironment_nodeCoordinator__block_invoke;
        v7[4] = &unk_1E70F5A28;
        objc_copyWeak(&v8, &location);
        v6[1] = MEMORY[0x1E69E9820];
        v6[2] = 3221225472;
        v6[3] = __39__UIGestureEnvironment_nodeCoordinator__block_invoke_2;
        v6[4] = &unk_1E70F5A28;
        objc_copyWeak(v7, &location);
        v2 = GFGestureNodeCoordinatorCreate();
        v3 = v1[13];
        v1[13] = v2;

        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 3221225472;
        v5[2] = __39__UIGestureEnvironment_nodeCoordinator__block_invoke_3;
        v5[3] = &unk_1E70F5A28;
        objc_copyWeak(v6, &location);
        [v1[13] setWillProcessUpdateQueueHandler:v5];
        objc_destroyWeak(v6);
        objc_destroyWeak(v7);
        objc_destroyWeak(&v8);
        objc_destroyWeak(&location);
      }
    }

    val = v1[13];
  }

  return val;
}

- (UIGestureEnvironment)init
{
  v23.receiver = self;
  v23.super_class = UIGestureEnvironment;
  v2 = [(UIGestureEnvironment *)&v23 init];
  if (v2)
  {
    if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
    {
      dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
    }

    if ((_UIIsGesturesFrameworkEnabled_enabled & 1) == 0)
    {
      v22.version = 0;
      memset(&v22.retain, 0, 24);
      v22.info = v2;
      v3 = CFRunLoopObserverCreate(*MEMORY[0x1E695E480], 0x20uLL, 1u, 0, _UIGestureRecognizerUpdateObserver, &v22);
      v2->_gestureEnvironmentUpdateObserver = v3;
      if (v3)
      {
        Main = CFRunLoopGetMain();
        CFRunLoopAddObserver(Main, v2->_gestureEnvironmentUpdateObserver, *MEMORY[0x1E695E8D0]);
      }

      v5 = [MEMORY[0x1E695DFA8] set];
      gestureRecognizersNeedingUpdate = v2->_gestureRecognizersNeedingUpdate;
      v2->_gestureRecognizersNeedingUpdate = v5;

      v7 = [MEMORY[0x1E695DFA8] set];
      gestureRecognizersNeedingReset = v2->_gestureRecognizersNeedingReset;
      v2->_gestureRecognizersNeedingReset = v7;

      v9 = [MEMORY[0x1E695DFA8] set];
      gestureRecognizersNeedingRemoval = v2->_gestureRecognizersNeedingRemoval;
      v2->_gestureRecognizersNeedingRemoval = v9;

      array = [MEMORY[0x1E695DF70] array];
      dirtyGestureRecognizers = v2->_dirtyGestureRecognizers;
      v2->_dirtyGestureRecognizers = array;

      v13 = [MEMORY[0x1E695DFA8] set];
      gestureRecognizersBlockedFromReset = v2->_gestureRecognizersBlockedFromReset;
      v2->_gestureRecognizersBlockedFromReset = v13;

      v2->_lastBlockedResetEvaluationMachTime = 0;
      v15 = objc_opt_new();
      dependencyGraph = v2->_dependencyGraph;
      v2->_dependencyGraph = v15;

      strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      nodesByGestureRecognizer = v2->_nodesByGestureRecognizer;
      v2->_nodesByGestureRecognizer = strongToStrongObjectsMapTable;
    }

    strongToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    touchContinuationDeliveryActions = v2->_touchContinuationDeliveryActions;
    v2->_touchContinuationDeliveryActions = strongToStrongObjectsMapTable2;
  }

  return v2;
}

void __39__UIGestureEnvironment_nodeCoordinator__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
}

void __39__UIGestureEnvironment_nodeCoordinator__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = [UIApp _gestureDelayedEventComponentDispatcher];
    [(UIGestureDelayedEventComponentDispatcher *)v1 sendDelayedTouches];

    v2 = [UIApp _gestureDelayedEventComponentDispatcher];
    [(UIGestureDelayedEventComponentDispatcher *)v2 sendDelayedPresses];
  }
}

void __39__UIGestureEnvironment_nodeCoordinator__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [UIGestureEnvironment _runTouchContinuationActions];
    WeakRetained = v2;
  }
}

- (void)_runTouchContinuationActions
{
  v32 = *MEMORY[0x1E69E9840];
  if (self && [self[9] count])
  {
    v2 = [self[9] copy];
    if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
    {
      dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
    }

    if (_UIIsGesturesFrameworkEnabled_enabled == 1 && ([(UIGestureEnvironment *)self nodeCoordinator], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_opt_respondsToSelector(), v3, (v4 & 1) != 0))
    {
      v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v2, "count")}];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v6 = v2;
      v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v27;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v27 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v26 + 1) + 8 * i);
            if (v11)
            {
              v11 = v11[29];
            }

            v12 = v11;
            [v5 addObject:v12];
          }

          v8 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v8);
      }

      nodeCoordinator = [(UIGestureEnvironment *)self nodeCoordinator];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __52__UIGestureEnvironment__runTouchContinuationActions__block_invoke;
      v24[3] = &unk_1E710B4E0;
      v25 = v6;
      [nodeCoordinator enqueueUpdatesForNodes:v5 inBlock:v24 reason:@"touchContinuation"];
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v5 = v2;
      v14 = [v5 countByEnumeratingWithState:&v20 objects:v30 count:16];
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
              objc_enumerationMutation(v5);
            }

            v18 = *(*(&v20 + 1) + 8 * j);
            v19 = [v5 objectForKey:{v18, v20}];
            v19[2](v19, v18);
          }

          v15 = [v5 countByEnumeratingWithState:&v20 objects:v30 count:16];
        }

        while (v15);
      }
    }

    [self[9] removeAllObjects];
  }
}

- (void)_forceUpdateForSpringBoardOnly
{
  if (val)
  {
    if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
    {
      dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
    }

    if (_UIIsGesturesFrameworkEnabled_enabled == 1)
    {
      nodeCoordinator = [(UIGestureEnvironment *)val nodeCoordinator];
      [nodeCoordinator updateWithNodes:MEMORY[0x1E695E0F0] reason:@"SpringBoard" updateHandler:&__block_literal_global_77_0];
    }

    else
    {

      _UIGestureEnvironmentUpdate(val);
    }
  }
}

void __52__UIGestureEnvironment__runTouchContinuationActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = _UIGestureNodeGetGestureRecognizer(a2);
  if (v3)
  {
    v5 = v3;
    v4 = [*(a1 + 32) objectForKey:?];
    (v4)[2](v4, v5);

    v3 = v5;
  }
}

id __69__UIGestureEnvironment__configureBlockResetStateCaptureTokenIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = _UIGestureEnvironmentSubgraphsBlockedFromResetDescription(WeakRetained, 1);
  v3 = [v2 description];

  return v3;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_blockedResetStateCaptureToken invalidate];
  v3.receiver = self;
  v3.super_class = UIGestureEnvironment;
  [(UIGestureEnvironment *)&v3 dealloc];
}

- (id)_nodeForGestureRecognizer:(id *)recognizer
{
  if (recognizer)
  {
    recognizer = [recognizer[12] objectForKey:a2];
    v2 = vars8;
  }

  return recognizer;
}

- (void)_notifyDependentsGestureRecognizerHasCompleted:(uint64_t)completed
{
  v34 = *MEMORY[0x1E69E9840];
  if (completed)
  {
    if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
    {
      dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
    }

    if (_UIIsGesturesFrameworkEnabled_enabled == 1)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v18 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v18, OS_LOG_TYPE_FAULT, "Shouldn't end up here", buf, 2u);
        }
      }

      else
      {
        v4 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498318) + 8);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Shouldn't end up here", buf, 2u);
        }
      }
    }

    [*(completed + 96) objectForKey:a2];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = v26 = 0u;
    outEdges = [v22 outEdges];
    v6 = [outEdges countByEnumeratingWithState:&v23 objects:v33 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      do
      {
        v9 = 0;
        do
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(outEdges);
          }

          targetNode = [*(*(&v23 + 1) + 8 * v9) targetNode];
          v11 = [targetNode propertyForKey:@"gestureRecognizerNode"];

          CategoryCachedImpl = __UILogGetCategoryCachedImpl("GestureEnvironment", &qword_1ED498320);
          if (*CategoryCachedImpl)
          {
            v13 = *(CategoryCachedImpl + 8);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              log = v13;
              _briefDescription = [v11 _briefDescription];
              if (a2)
              {
                _state = [(UIGestureRecognizer *)a2 _state];
                v16 = @"will be unblocked";
                if ((_state - 1) < 3)
                {
                  v16 = @"will be failed";
                }
              }

              else
              {
                v16 = @"will be unblocked";
              }

              v20 = v16;
              _briefDescription2 = [a2 _briefDescription];
              *buf = 138412802;
              v28 = _briefDescription;
              v29 = 2112;
              v30 = v20;
              v31 = 2112;
              v32 = _briefDescription2;
              _os_log_impl(&dword_188A29000, log, OS_LOG_TYPE_ERROR, "%@ %@ by %@", buf, 0x20u);
            }
          }

          [(UIGestureRecognizer *)v11 _requiredGestureRecognizerCompletedOrWasUnrelated:a2];

          ++v9;
        }

        while (v7 != v9);
        v17 = [outEdges countByEnumeratingWithState:&v23 objects:v33 count:16];
        v7 = v17;
      }

      while (v17);
    }
  }
}

- (uint64_t)_activeRelationshipsForGestureRecognizer:(uint64_t)recognizer
{
  v22 = *MEMORY[0x1E69E9840];
  if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
  {
    dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
  }

  if (_UIIsGesturesFrameworkEnabled_enabled == 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v15 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v15, OS_LOG_TYPE_FAULT, "Shouldn't end up here", buf, 2u);
      }
    }

    else
    {
      v4 = *(__UILogGetCategoryCachedImpl("Assert", &_activeRelationshipsForGestureRecognizer____s_category) + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Shouldn't end up here", buf, 2u);
      }
    }
  }

  v5 = [*(recognizer + 96) objectForKey:a2];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allEdges = [v5 allEdges];
  v7 = [allEdges countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(allEdges);
        }

        v11 = [*(*(&v16 + 1) + 8 * i) oppositeNode:v5];
        v12 = [v11 propertyForKey:@"gestureRecognizerNode"];

        LOBYTE(v11) = [(UIGestureRecognizer *)v12 _isActive];
        if (v11)
        {
          v13 = 1;
          goto LABEL_17;
        }
      }

      v8 = [allEdges countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_17:

  return v13;
}

- (uint64_t)gestureRecognizer:(uint64_t)recognizer requiresGestureRecognizerToFail:
{
  if (!self)
  {
    return 0;
  }

  if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
  {
    dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
  }

  if (_UIIsGesturesFrameworkEnabled_enabled == 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v11 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Shouldn't end up here", buf, 2u);
      }
    }

    else
    {
      v6 = *(__UILogGetCategoryCachedImpl("Assert", &gestureRecognizer_requiresGestureRecognizerToFail____s_category) + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Shouldn't end up here", v12, 2u);
      }
    }
  }

  v7 = [*(self + 96) objectForKey:a2];
  v8 = [*(self + 96) objectForKey:recognizer];
  v9 = [v7 hasEdgeFromNode:v8];

  return v9;
}

- (uint64_t)unmetRequirementsForGestureRecognizer:(uint64_t)recognizer
{
  v22 = *MEMORY[0x1E69E9840];
  if (!recognizer)
  {
    return 0;
  }

  if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
  {
    dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
  }

  if (_UIIsGesturesFrameworkEnabled_enabled == 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v15 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v15, OS_LOG_TYPE_FAULT, "Shouldn't end up here", buf, 2u);
      }
    }

    else
    {
      v4 = *(__UILogGetCategoryCachedImpl("Assert", &unmetRequirementsForGestureRecognizer____s_category) + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Shouldn't end up here", buf, 2u);
      }
    }
  }

  v5 = [*(recognizer + 96) objectForKey:a2];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  inEdges = [v5 inEdges];
  v7 = [inEdges countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(inEdges);
        }

        sourceNode = [*(*(&v16 + 1) + 8 * i) sourceNode];
        v12 = [sourceNode propertyForKey:@"gestureRecognizerNode"];

        LOBYTE(sourceNode) = [(UIGestureRecognizer *)v12 _isActive];
        if (sourceNode)
        {
          v13 = 1;
          goto LABEL_18;
        }
      }

      v8 = [inEdges countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_18:

  return v13;
}

- (void)removeRequirementForGestureRecognizer:(uint64_t)recognizer requiringGestureRecognizerToFail:
{
  if (self)
  {
    if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
    {
      dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
    }

    if (_UIIsGesturesFrameworkEnabled_enabled == 1)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v9 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Shouldn't end up here", buf, 2u);
        }
      }

      else
      {
        v6 = *(__UILogGetCategoryCachedImpl("Assert", &removeRequirementForGestureRecognizer_requiringGestureRecognizerToFail____s_category) + 8);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Shouldn't end up here", buf, 2u);
        }
      }
    }

    v7 = [*(self + 96) objectForKey:a2];
    v8 = [*(self + 96) objectForKey:recognizer];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __95__UIGestureEnvironment_removeRequirementForGestureRecognizer_requiringGestureRecognizerToFail___block_invoke;
    v10[3] = &unk_1E710B470;
    v10[4] = self;
    [v7 enumerateEdgesFromNode:v8 usingBlock:v10];
  }
}

void __95__UIGestureEnvironment_removeRequirementForGestureRecognizer_requiringGestureRecognizerToFail___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 label];
  v5 = [v4 isEqualToString:@"failureRequirement"];

  if (v5)
  {
    v6 = *(*(a1 + 32) + 88);

    [v6 removeEdge:a2];
  }
}

- (void)addRequirementForGestureRecognizer:(uint64_t)recognizer requiringGestureRecognizerToFail:
{
  v16 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
    {
      dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
    }

    if (_UIIsGesturesFrameworkEnabled_enabled == 1)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v13 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          LOWORD(v14) = 0;
          _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "Shouldn't end up here", &v14, 2u);
        }
      }

      else
      {
        v6 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498330) + 8);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v14) = 0;
          _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Shouldn't end up here", &v14, 2u);
        }
      }
    }

    v7 = [*(self + 96) objectForKey:recognizer];
    v8 = [*(self + 96) objectForKey:a2];
    v9 = v8;
    if (v7 && v8)
    {
      v10 = [*(self + 88) addUniqueEdgeWithLabel:@"failureRequirement" sourceNode:v7 targetNode:v8 directed:1 properties:0];
    }

    else
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("GestureEnvironment", &qword_1ED498338);
      if (*CategoryCachedImpl)
      {
        v12 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v14 = 136315138;
          v15 = "[UIGestureEnvironment addRequirementForGestureRecognizer:requiringGestureRecognizerToFail:]";
          _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "%s - unable to add requirement at this time because connections nodes have not yet added", &v14, 0xCu);
        }
      }
    }
  }
}

- (void)addGestureRecognizer:(id)recognizer
{
  v29[1] = *MEMORY[0x1E69E9840];
  if (recognizer)
  {
    [(UIGestureRecognizer *)recognizer setGestureEnvironment:?];
    if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
    {
      dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
    }

    if ((_UIIsGesturesFrameworkEnabled_enabled & 1) == 0)
    {
      [(NSMutableSet *)self->_gestureRecognizersNeedingRemoval removeObject:recognizer];
      v5 = [(UIGestureEnvironment *)&self->super.isa _nodeForGestureRecognizer:recognizer];
      if (!v5)
      {
        dependencyGraph = self->_dependencyGraph;
        v28 = @"gestureRecognizerNode";
        v29[0] = recognizer;
        v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
        v5 = [(UIGestureGraph *)dependencyGraph addNodeWithLabel:@"gestureRecognizerNode" properties:v7];

        [(NSMapTable *)self->_nodesByGestureRecognizer setObject:v5 forKey:recognizer];
      }

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v8 = *(recognizer + 21);
      v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v23;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v23 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [(UIGestureEnvironment *)self addRequirementForGestureRecognizer:recognizer requiringGestureRecognizerToFail:*(*(&v22 + 1) + 8 * i)];
          }

          v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v10);
      }

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v13 = *(recognizer + 22);
      v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v19;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v19 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [(UIGestureEnvironment *)self addRequirementForGestureRecognizer:recognizer requiringGestureRecognizerToFail:?];
          }

          v15 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
        }

        while (v15);
      }
    }
  }
}

- (void)removeGestureRecognizer:(id)recognizer
{
  v20 = *MEMORY[0x1E69E9840];
  if (recognizer)
  {
    v5 = &qword_1ED4A3000;
    if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
    {
      dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
    }

    if ((_UIIsGesturesFrameworkEnabled_enabled & 1) == 0)
    {
      v6 = [(UIGestureEnvironment *)&self->super.isa _nodeForGestureRecognizer:recognizer];
      if (v6)
      {
        container = [recognizer container];

        if (container)
        {
          [recognizer setContainer:0];
        }

        if ((*(recognizer + 12) & 8) != 0)
        {
          CategoryCachedImpl = __UILogGetCategoryCachedImpl("GestureEnvironment", &qword_1ED498340);
          if (*CategoryCachedImpl)
          {
            v14 = *(CategoryCachedImpl + 8);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v15 = v14;
              _briefDescription = [recognizer _briefDescription];
              v18 = 138412290;
              v19 = _briefDescription;
              _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "queueing gesture for removal from environment %@", &v18, 0xCu);

              v5 = &qword_1ED4A3000;
            }
          }

          [(NSMutableSet *)self->_gestureRecognizersNeedingRemoval addObject:recognizer];
          if (v5[217] != -1)
          {
            dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
          }

          if (_UIIsGesturesFrameworkEnabled_enabled == 1)
          {
            if (os_variant_has_internal_diagnostics())
            {
              v17 = __UIFaultDebugAssertLog();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
              {
                LOWORD(v18) = 0;
                _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "Shouldn't end up here", &v18, 2u);
              }
            }

            else
            {
              v13 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498360) + 8);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                LOWORD(v18) = 0;
                _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Shouldn't end up here", &v18, 2u);
              }
            }
          }

          if ([recognizer state] >= 3 && (-[UIGestureEnvironment _activeRelationshipsForGestureRecognizer:](self, recognizer) & 1) == 0)
          {
            [(UIGestureEnvironment *)self _gestureNeedsReset:recognizer];
          }
        }

        else
        {
          [(UIGestureEnvironment *)&self->super.isa _removeNodeFromGestureGraph:v6];
        }
      }

      else
      {
        v8 = __UILogGetCategoryCachedImpl("GestureEnvironment", &qword_1ED498348);
        if (*v8)
        {
          v9 = *(v8 + 8);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v10 = v9;
            _briefDescription2 = [recognizer _briefDescription];
            v18 = 138412290;
            v19 = _briefDescription2;
            _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "ERROR - Unable to find node for gesture %@", &v18, 0xCu);
          }
        }
      }
    }
  }
}

- (void)_removeNodeFromGestureGraph:(id *)graph
{
  v13 = *MEMORY[0x1E69E9840];
  if (graph)
  {
    if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
    {
      dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
    }

    if (_UIIsGesturesFrameworkEnabled_enabled == 1)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v10 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          LOWORD(v11) = 0;
          _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Shouldn't end up here", &v11, 2u);
        }
      }

      else
      {
        v4 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498350) + 8);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v11) = 0;
          _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Shouldn't end up here", &v11, 2u);
        }
      }
    }

    v5 = [a2 propertyForKey:@"gestureRecognizerNode"];
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("GestureEnvironment", &qword_1ED498358);
    if (*CategoryCachedImpl)
    {
      v7 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = v7;
        _briefDescription = [v5 _briefDescription];
        v11 = 138412290;
        v12 = _briefDescription;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "removing gesture from environment %@", &v11, 0xCu);
      }
    }

    [graph[12] removeObjectForKey:v5];
    [graph[11] removeNode:a2];
    [graph[4] removeObject:v5];
    [(UIGestureRecognizer *)v5 setGestureEnvironment:?];
  }
}

- (id)_gesturesWithDelayedTouchForTouch:(uint64_t)touch event:(void *)event
{
  v35 = *MEMORY[0x1E69E9840];
  if (touch && [event isDelayed])
  {
    v4 = [MEMORY[0x1E695DFA8] setWithArray:*(touch + 40)];
    v5 = MEMORY[0x1E695DFA8];
    gestureRecognizers = [event gestureRecognizers];
    v7 = [v5 setWithArray:gestureRecognizers];

    [v4 minusSet:v7];
    if ([v4 count])
    {
      v20 = v7;
      v21 = v4;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      obj = v4;
      v24 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      v8 = 0;
      if (v24)
      {
        v23 = *v30;
        do
        {
          v9 = 0;
          do
          {
            if (*v30 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v29 + 1) + 8 * v9);
            v25 = 0u;
            v26 = 0u;
            v27 = 0u;
            v28 = 0u;
            if (v10)
            {
              v11 = [*(v10 + 32) copy];
            }

            else
            {
              v11 = 0;
            }

            v12 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v26;
              do
              {
                for (i = 0; i != v13; ++i)
                {
                  if (*v26 != v14)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v16 = *(*(&v25 + 1) + 8 * i);
                  if (v16)
                  {
                    v16 = v16[3];
                  }

                  v17 = v16;

                  if (v17 == event)
                  {
                    if (!v8)
                    {
                      v8 = objc_opt_new();
                    }

                    [v8 addObject:v10];
                  }
                }

                v13 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
              }

              while (v13);
            }

            ++v9;
          }

          while (v9 != v24);
          v18 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
          v24 = v18;
        }

        while (v18);
      }

      v7 = v20;
      v4 = v21;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_updateForEvent:(uint64_t)event window:
{
  v54 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [(UIGestureEnvironment *)self _runTouchContinuationActions];
    v6 = [a2 _gestureRecognizersForWindow:event];
    v7 = [v6 copy];

    if (([a2 _consumeBeforeDeliveryToGestureRecognizers:v7 inWindow:event] & 1) == 0)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __47__UIGestureEnvironment__updateForEvent_window___block_invoke;
      aBlock[3] = &unk_1E710B580;
      aBlock[4] = a2;
      aBlock[5] = self;
      v8 = _Block_copy(aBlock);
      if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
      {
        dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
      }

      if (_UIIsGesturesFrameworkEnabled_enabled == 1)
      {
        v9 = objc_opt_new();
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v36 = v7;
        v10 = v7;
        v11 = [v10 countByEnumeratingWithState:&v42 objects:v52 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v43;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v43 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v42 + 1) + 8 * i);
              if (v15)
              {
                v15 = v15[29];
              }

              v16 = v15;
              [v9 addObject:v16];
            }

            v12 = [v10 countByEnumeratingWithState:&v42 objects:v52 count:16];
          }

          while (v12);
        }

        nodeCoordinator = [(UIGestureEnvironment *)self nodeCoordinator];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __47__UIGestureEnvironment__updateForEvent_window___block_invoke_35;
        v41[3] = &unk_1E710B498;
        v41[4] = v8;
        [nodeCoordinator updateWithNodes:v9 reason:@"events" updateHandler:v41];

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v18 = v10;
        v19 = [v18 countByEnumeratingWithState:&v37 objects:v51 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v38;
          do
          {
            v22 = 0;
            do
            {
              if (*v38 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v37 + 1) + 8 * v22);
              if (!v23)
              {
                v24 = 0;
LABEL_24:
                v25 = v24;
                isBlocked = [v25 isBlocked];

                if (!isBlocked)
                {
                  goto LABEL_26;
                }

                goto LABEL_25;
              }

              if ((*(v23 + 12) & 8) == 0 || [*(*(&v37 + 1) + 8 * v22) state])
              {
                v24 = *(v23 + 232);
                goto LABEL_24;
              }

LABEL_25:
              [v23 _updateForActiveEvents];
              [(UIGestureRecognizer *)v23 _delayActiveEventsToRespondersIfNeeded];
LABEL_26:
              ++v22;
            }

            while (v20 != v22);
            v27 = [v18 countByEnumeratingWithState:&v37 objects:v51 count:16];
            v20 = v27;
          }

          while (v27);
        }

        v7 = v36;
      }

      else
      {
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v28 = v7;
        v29 = [v28 countByEnumeratingWithState:&v47 objects:buf count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v48;
          do
          {
            for (j = 0; j != v30; ++j)
            {
              if (*v48 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v8[2](v8, *(*(&v47 + 1) + 8 * j));
            }

            v30 = [v28 countByEnumeratingWithState:&v47 objects:buf count:16];
          }

          while (v30);
        }

        [(UIGestureEnvironment *)self _queueGestureRecognizersForResetIfFinished:v28];
        if (-[UIGestureEnvironment _hasGesturesNeedingUpdate](self) || ([UIApp _gestureDelayedEventComponentDispatcher], (v33 = objc_claimAutoreleasedReturnValue()) != 0) && (v34 = v33, v35 = objc_msgSend(*(v33 + 16), "count"), v34, v35))
        {
          _UIGestureEnvironmentUpdate(self);
        }
      }

      [a2 _wasDeliveredToGestureRecognizers];
    }
  }
}

void __47__UIGestureEnvironment__updateForEvent_window___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [a2 state];
  v5 = *(a1 + 32);
  if (v4 <= 2)
  {
    if (([v5 _sendEventToGestureRecognizer:a2] & 1) == 0)
    {
      return;
    }

    v6 = *(a1 + 40);
    v7 = &qword_1ED4A3000;
    if (v6)
    {
      if (!a2)
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        v7 = &qword_1ED4A3000;
        [v14 handleFailureInMethod:sel__markGestureAsDirty_ object:v6 file:@"UIGestureEnvironment.m" lineNumber:1200 description:{@"Invalid parameter not satisfying: %@", @"gestureRecognizer"}];
      }

      if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
      {
        dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
      }

      if (*(v7 + 1720) == 1)
      {
        if (!a2)
        {
          return;
        }

        *(a2 + 8) |= 0x800000000uLL;
LABEL_19:
        if ((*(a2 + 16) & 0x40) != 0)
        {
          if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
          {
            dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
          }

          if (*(v7 + 1720) == 1)
          {
            v8 = *(a2 + 240);

            if (!v8)
            {
              v9 = *(a2 + 232);
              v16 = 0;
              v10 = [v9 ensureUpdated:&v16];
              v11 = v16;

              if ((v10 & 1) == 0)
              {
                CategoryCachedImpl = __UILogGetCategoryCachedImpl("GestureEnvironment", &kUIDynamicFailureRequirementLabel_block_invoke___s_category);
                if (*CategoryCachedImpl)
                {
                  v15 = *(CategoryCachedImpl + 8);
                  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v18 = v11;
                    _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Failed to update the node: %@", buf, 0xCu);
                  }
                }
              }
            }
          }

          else
          {
            v13 = *(a1 + 40);

            [(UIGestureEnvironment *)v13 setGestureNeedsUpdate:a2];
          }
        }

        return;
      }

      if (([*(v6 + 40) containsObject:a2] & 1) == 0)
      {
        [*(v6 + 40) addObject:a2];
        if (a2)
        {
          *(a2 + 8) |= 0x800000000uLL;
        }

        [(UIGestureEnvironment *)v6 setNeedsExclusivityUpdate];
        *(v6 + 80) = 1;
      }
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_19;
  }

  [v5 _gestureRecognizerNoLongerNeedsSendEvent:a2];
}

- (uint64_t)setGestureNeedsUpdate:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
    {
      dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
    }

    if (_UIIsGesturesFrameworkEnabled_enabled == 1)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v6 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          *v9 = 0;
          _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "Shouldn't end up here", v9, 2u);
        }

        if (a2)
        {
          goto LABEL_9;
        }

LABEL_16:
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:sel_setGestureNeedsUpdate_ object:v3 file:@"UIGestureEnvironment.m" lineNumber:1180 description:{@"Invalid parameter not satisfying: %@", @"gestureRecognizer"}];

LABEL_9:
        container = [a2 container];

        if (container)
        {
          return [*(v3 + 16) addObject:a2];
        }

        else
        {
          return [(UIGestureEnvironment *)v3 _clearGestureNeedsUpdate:a2];
        }
      }

      v4 = *(__UILogGetCategoryCachedImpl("Assert", &setGestureNeedsUpdate____s_category) + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Shouldn't end up here", buf, 2u);
      }
    }

    if (a2)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  return result;
}

void __47__UIGestureEnvironment__updateForEvent_window___block_invoke_35(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = _UIGestureNodeGetGestureRecognizer(a2);
  (*(v2 + 16))(v2, v3);
}

- (void)_queueGestureRecognizersForResetIfFinished:(uint64_t)finished
{
  v18 = *MEMORY[0x1E69E9840];
  if (finished)
  {
    if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
    {
      dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
    }

    if (_UIIsGesturesFrameworkEnabled_enabled == 1)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v11 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Shouldn't end up here", buf, 2u);
        }
      }

      else
      {
        v4 = *(__UILogGetCategoryCachedImpl("Assert", &_queueGestureRecognizersForResetIfFinished____s_category) + 8);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Shouldn't end up here", buf, 2u);
        }
      }
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = a2;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([v10 state] >= 3 && (-[UIGestureEnvironment _activeRelationshipsForGestureRecognizer:](finished, v10) & 1) == 0)
          {
            [(UIGestureEnvironment *)finished _gestureNeedsReset:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (BOOL)_hasGesturesNeedingUpdate
{
  if (result)
  {
    v1 = result;
    if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
    {
      dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
    }

    if (_UIIsGesturesFrameworkEnabled_enabled == 1)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v3 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v3, OS_LOG_TYPE_FAULT, "Shouldn't end up here", buf, 2u);
        }
      }

      else
      {
        v2 = *(__UILogGetCategoryCachedImpl("Assert", &_hasGesturesNeedingUpdate___s_category) + 8);
        if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
        {
          *v4 = 0;
          _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Shouldn't end up here", v4, 2u);
        }
      }
    }

    return [*(v1 + 16) count] != 0;
  }

  return result;
}

- (void)_performTouchContinuationWithOverrideHitTestedView:(id *)view
{
  v125 = *MEMORY[0x1E69E9840];
  if (view)
  {
    v2 = UIApp;
    _window = [a2 _window];
    v4 = [v2 _touchesEventForWindow:_window];

    v79 = v4;
    allTouches = [v4 allTouches];
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v6 = [allTouches countByEnumeratingWithState:&v112 objects:v124 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v113;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v113 != v8)
          {
            objc_enumerationMutation(allTouches);
          }

          v10 = *(*(&v112 + 1) + 8 * i);
          v108 = 0u;
          v109 = 0u;
          v110 = 0u;
          v111 = 0u;
          gestureRecognizers = [v10 gestureRecognizers];
          v12 = [gestureRecognizers countByEnumeratingWithState:&v108 objects:v123 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v109;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v109 != v14)
                {
                  objc_enumerationMutation(gestureRecognizers);
                }

                v16 = *(*(&v108 + 1) + 8 * j);
                if (([v16 _keepTouchesOnContinuation] & 1) == 0)
                {
                  [(UIGestureRecognizer *)v16 _removeTouch:v10 forEvent:v79 byCancellingTouches:1];
                }
              }

              v13 = [gestureRecognizers countByEnumeratingWithState:&v108 objects:v123 count:16];
            }

            while (v13);
          }
        }

        v7 = [allTouches countByEnumeratingWithState:&v112 objects:v124 count:16];
      }

      while (v7);
    }

    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    obj = allTouches;
    v17 = [obj countByEnumeratingWithState:&v104 objects:v122 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v105;
      v20 = MEMORY[0x1E695E118];
      do
      {
        for (k = 0; k != v18; ++k)
        {
          if (*v105 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v104 + 1) + 8 * k);
          _responder = [v22 _responder];

          if (_responder)
          {
            if ([v22 phase] <= 3)
            {
              v24 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v22, "phase")}];
              objc_setAssociatedObject(v22, &_MergedGlobals_62, v24, 1);

              [v22 setPhase:4];
              if ([v22 isDelayed])
              {
                objc_setAssociatedObject(v22, &unk_1ED498309, v20, 1);
              }
            }
          }
        }

        v18 = [obj countByEnumeratingWithState:&v104 objects:v122 count:16];
      }

      while (v18);
    }

    if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
    {
      dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
    }

    if (_UIIsGesturesFrameworkEnabled_enabled == 1)
    {
      nodeCoordinator = [(UIGestureEnvironment *)view nodeCoordinator];
      [nodeCoordinator updateWithNodes:MEMORY[0x1E695E0F0] reason:@"TouchContinuation" updateHandler:&__block_literal_global_289];
    }

    else
    {
      _UIGestureEnvironmentUpdate(view);
    }

    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    _allWindows = [v79 _allWindows];
    v71 = [_allWindows countByEnumeratingWithState:&v100 objects:v121 count:16];
    if (v71)
    {
      v70 = *v101;
      do
      {
        v26 = 0;
        do
        {
          if (*v101 != v70)
          {
            objc_enumerationMutation(_allWindows);
          }

          v72 = v26;
          v27 = *(*(&v100 + 1) + 8 * v26);
          v96 = 0u;
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          v73 = [v79 _respondersForWindow:v27];
          vala = [v73 countByEnumeratingWithState:&v96 objects:v120 count:16];
          if (vala)
          {
            v74 = *v97;
            do
            {
              for (m = 0; m != vala; m = m + 1)
              {
                if (*v97 != v74)
                {
                  objc_enumerationMutation(v73);
                }

                v29 = *(*(&v96 + 1) + 8 * m);
                v30 = [v79 _touchesForResponder:v29 withPhase:4];
                v31 = v30;
                if (v30)
                {
                  v75 = v29;
                  v32 = [v30 mutableCopy];
                  v92 = 0u;
                  v93 = 0u;
                  v94 = 0u;
                  v95 = 0u;
                  v33 = v31;
                  v34 = [v33 countByEnumeratingWithState:&v92 objects:v119 count:16];
                  if (v34)
                  {
                    v35 = v34;
                    v36 = *v93;
                    do
                    {
                      for (n = 0; n != v35; ++n)
                      {
                        if (*v93 != v36)
                        {
                          objc_enumerationMutation(v33);
                        }

                        v38 = *(*(&v92 + 1) + 8 * n);
                        v39 = objc_getAssociatedObject(v38, &unk_1ED498309);

                        if (v39)
                        {
                          [v32 removeObject:v38];
                        }
                      }

                      v35 = [v33 countByEnumeratingWithState:&v92 objects:v119 count:16];
                    }

                    while (v35);
                  }

                  if (v32)
                  {
                    [v75 touchesCancelled:v33 withEvent:v79];
                  }
                }
              }

              vala = [v73 countByEnumeratingWithState:&v96 objects:v120 count:16];
            }

            while (vala);
          }

          v26 = v72 + 1;
        }

        while (v72 + 1 != v71);
        v71 = [_allWindows countByEnumeratingWithState:&v100 objects:v121 count:16];
      }

      while (v71);
    }

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v40 = obj;
    v41 = [v40 countByEnumeratingWithState:&v88 objects:v118 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v89;
      do
      {
        for (ii = 0; ii != v42; ++ii)
        {
          if (*v89 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v88 + 1) + 8 * ii);
          v46 = objc_getAssociatedObject(v45, &_MergedGlobals_62);
          v47 = v46;
          if (v46)
          {
            [v45 setPhase:{objc_msgSend(v46, "integerValue")}];
          }

          objc_setAssociatedObject(v45, &_MergedGlobals_62, 0, 1);
          objc_setAssociatedObject(v45, &unk_1ED498309, 0, 1);
          phase = [v45 phase];
          if (v45)
          {
            v49 = phase <= 2;
          }

          else
          {
            v49 = 0;
          }

          if (v49)
          {
            v45[118] &= ~8u;
          }
        }

        v42 = [v40 countByEnumeratingWithState:&v88 objects:v118 count:16];
      }

      while (v42);
    }

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    valb = v40;
    v50 = [valb countByEnumeratingWithState:&v84 objects:v117 count:16];
    v51 = a2;
    if (v50)
    {
      v52 = v50;
      v53 = *v85;
      do
      {
        for (jj = 0; jj != v52; ++jj)
        {
          if (*v85 != v53)
          {
            objc_enumerationMutation(valb);
          }

          v55 = *(*(&v84 + 1) + 8 * jj);
          if (v51)
          {
            _rehitTest = v51;
          }

          else
          {
            _rehitTest = [(UITouch *)*(*(&v84 + 1) + 8 * jj) _rehitTest];
            if (!_rehitTest)
            {
              continue;
            }
          }

          _eventReceivingWindow = [_rehitTest _eventReceivingWindow];
          _exclusiveTouchWindows = [v79 _exclusiveTouchWindows];
          [_exclusiveTouchWindows removeObject:_eventReceivingWindow];

          [_eventReceivingWindow _setExclusiveTouchView:0];
          [v55 _setResponder:_rehitTest];
          _eventReceivingWindow2 = [_rehitTest _eventReceivingWindow];
          window = [v55 window];

          if (_eventReceivingWindow2 != window)
          {
            _eventReceivingWindow3 = [_rehitTest _eventReceivingWindow];
            [v55 setWindow:_eventReceivingWindow3];
          }

          [v79 _addGestureRecognizersForTouchContinuationFromContainer:_rehitTest toTouch:v55];
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          gestureRecognizers2 = [v55 gestureRecognizers];
          v63 = [gestureRecognizers2 countByEnumeratingWithState:&v80 objects:v116 count:16];
          if (v63)
          {
            v64 = v63;
            v65 = *v81;
            do
            {
              for (kk = 0; kk != v64; ++kk)
              {
                if (*v81 != v65)
                {
                  objc_enumerationMutation(gestureRecognizers2);
                }

                [*(*(&v80 + 1) + 8 * kk) _addTouch:v55 forEvent:v79];
              }

              v64 = [gestureRecognizers2 countByEnumeratingWithState:&v80 objects:v116 count:16];
            }

            while (v64);
          }

          v51 = a2;
        }

        v52 = [valb countByEnumeratingWithState:&v84 objects:v117 count:16];
      }

      while (v52);
    }
  }
}

- (void)_scheduleTouchContinuationDeliveryForGestureRecognizer:(void *)aBlock deliveryBlock:
{
  if (self && aBlock)
  {
    v4 = *(self + 72);
    v5 = _Block_copy(aBlock);
    [v4 setObject:v5 forKey:a2];
  }
}

- (void)_cancelGestureRecognizers:(uint64_t)recognizers
{
  v44 = *MEMORY[0x1E69E9840];
  if (!recognizers)
  {
    return;
  }

  recognizersCopy = recognizers;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v36 objects:v43 count:16];
  v6 = &qword_1ED4A3000;
  v7 = &qword_1ED4A3000;
  if (!v4)
  {
    goto LABEL_40;
  }

  v8 = v4;
  v30 = *v37;
  *&v5 = 138412290;
  v27 = v5;
  v28 = v3;
  v29 = recognizersCopy;
  do
  {
    v9 = 0;
    do
    {
      if (*v37 != v30)
      {
        objc_enumerationMutation(v3);
      }

      v10 = *(*(&v36 + 1) + 8 * v9);
      if (v6[217] != -1)
      {
        dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
      }

      if (*(v7 + 1720) == 1)
      {
        if (v10)
        {
          v11 = *(v10 + 232);
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;
        v35 = 0;
        v13 = [v12 abort:&v35];
        v14 = v35;

        if ((v13 & 1) == 0)
        {
          CategoryCachedImpl = __UILogGetCategoryCachedImpl("GestureEnvironment", &_cancelGestureRecognizers____s_category);
          if (*CategoryCachedImpl)
          {
            v25 = *(CategoryCachedImpl + 8);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = v27;
              v42 = v14;
              _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "Failed to abort the node: %@", buf, 0xCu);
            }
          }
        }

        goto LABEL_34;
      }

      container = [v10 container];

      if (!container)
      {
        [(UIGestureEnvironment *)recognizersCopy _clearGestureNeedsUpdate:v10];
      }

      if (v10 && (*(v10 + 12) & 8) != 0 && [v10 state] <= 2)
      {
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        _activeEvents = [v10 _activeEvents];
        v18 = [_activeEvents countByEnumeratingWithState:&v31 objects:v40 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v32;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v32 != v20)
              {
                objc_enumerationMutation(_activeEvents);
              }

              v22 = *(*(&v31 + 1) + 8 * i);
              v23 = [MEMORY[0x1E695DFD8] setWithObject:{v10, v27}];
              [v22 _removeGestureRecognizersSendingCancelledEvent:v23];
            }

            v19 = [_activeEvents countByEnumeratingWithState:&v31 objects:v40 count:16];
          }

          while (v19);
        }

        if ([v10 state])
        {
          v3 = v28;
          recognizersCopy = v29;
          v7 = &qword_1ED4A3000;
          v6 = &qword_1ED4A3000;
          if ([v10 state] <= 2)
          {
            v24 = 4;
            goto LABEL_31;
          }
        }

        else
        {
          v24 = 5;
          v3 = v28;
          recognizersCopy = v29;
          v7 = &qword_1ED4A3000;
          v6 = &qword_1ED4A3000;
LABEL_31:
          [v10 setState:{v24, v27}];
        }

        [(UIGestureEnvironment *)recognizersCopy _clearGestureNeedsUpdate:v10];
        [(UIGestureRecognizer *)v10 _updateGestureForActiveEvents];
        if ([v10 state] >= 3)
        {
          [(UIGestureEnvironment *)recognizersCopy _notifyDependentsGestureRecognizerHasCompleted:v10];
        }
      }

LABEL_34:
      ++v9;
    }

    while (v9 != v8);
    v26 = [v3 countByEnumeratingWithState:&v36 objects:v43 count:16];
    v8 = v26;
  }

  while (v26);
LABEL_40:

  if (v6[217] != -1)
  {
    dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
  }

  if ((v7[215] & 1) == 0)
  {
    [(UIGestureEnvironment *)recognizersCopy _queueGestureRecognizersForResetIfFinished:v3];
  }
}

- (uint64_t)_clearGestureNeedsUpdate:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
    {
      dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
    }

    if (_UIIsGesturesFrameworkEnabled_enabled == 1)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v5 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
          *v8 = 0;
          _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "Shouldn't end up here", v8, 2u);
        }

        if (a2)
        {
          return [*(v3 + 16) removeObject:a2];
        }

        goto LABEL_14;
      }

      v4 = *(__UILogGetCategoryCachedImpl("Assert", &_clearGestureNeedsUpdate____s_category) + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Shouldn't end up here", buf, 2u);
      }
    }

    if (a2)
    {
      return [*(v3 + 16) removeObject:a2];
    }

LABEL_14:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__clearGestureNeedsUpdate_ object:v3 file:@"UIGestureEnvironment.m" lineNumber:1151 description:{@"Invalid parameter not satisfying: %@", @"gestureRecognizer"}];

    return [*(v3 + 16) removeObject:a2];
  }

  return result;
}

- (void)_gestureNeedsReset:(uint64_t)reset
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
  {
    dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
  }

  if (_UIIsGesturesFrameworkEnabled_enabled == 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v16 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        LOWORD(buf) = 0;
        _os_log_fault_impl(&dword_188A29000, v16, OS_LOG_TYPE_FAULT, "Shouldn't end up here", &buf, 2u);
      }
    }

    else
    {
      v4 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498378) + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Shouldn't end up here", &buf, 2u);
      }
    }
  }

  if (!a2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__gestureNeedsReset_ object:reset file:@"UIGestureEnvironment.m" lineNumber:1191 description:{@"Invalid parameter not satisfying: %@", @"gestureRecognizer"}];
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("GestureEnvironment", &qword_1ED498380);
  if (*CategoryCachedImpl)
  {
    v12 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = v12;
      _briefDescription = [a2 _briefDescription];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = _briefDescription;
      v15 = _briefDescription;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Queueing gesture for reset: %@", &buf, 0xCu);
    }
  }

  [*(reset + 24) addObject:a2];
  [*(reset + 48) addObject:a2];
  if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
  {
    dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
  }

  if (_UIIsGesturesFrameworkEnabled_enabled == 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v17 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        LOWORD(buf) = 0;
        _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "Shouldn't end up here", &buf, 2u);
      }
    }

    else
    {
      v6 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498310) + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Shouldn't end up here", &buf, 2u);
      }
    }
  }

  if (!*(reset + 64))
  {
    objc_initWeak(&location, reset);
    v7 = MEMORY[0x1E69E96A0];
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v20 = __69__UIGestureEnvironment__configureBlockResetStateCaptureTokenIfNeeded__block_invoke;
    v21 = &unk_1E70F6320;
    objc_copyWeak(v22, &location);
    v8 = BSLogAddStateCaptureBlockWithTitle();
    v9 = *(reset + 64);
    *(reset + 64) = v8;

    objc_destroyWeak(v22);
    objc_destroyWeak(&location);
  }

  if (a2)
  {
    v10 = *(a2 + 16);
    if ((v10 & 0x20) == 0)
    {
      *(a2 + 16) = v10 | 0x20;
      *(a2 + 216) = mach_absolute_time();
    }
  }
}

- (void)setNeedsExclusivityUpdate
{
  if (self)
  {
    if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
    {
      dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
    }

    if (_UIIsGesturesFrameworkEnabled_enabled == 1)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v3 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v3, OS_LOG_TYPE_FAULT, "Shouldn't end up here", buf, 2u);
        }
      }

      else
      {
        v2 = *(__UILogGetCategoryCachedImpl("Assert", &setNeedsExclusivityUpdate___s_category) + 8);
        if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
        {
          *v4 = 0;
          _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Shouldn't end up here", v4, 2u);
        }
      }
    }

    *(self + 81) = 1;
  }
}

@end