@interface _UIInternalDraggingSessionDestination
- (BOOL)canBeDrivenByDragEvent:(id)a3;
- (BOOL)shouldDragEventBeSentToGestureRecognizers;
- (CAPoint3D)centroid;
- (CGPoint)draggingLocationInCoordinateSpace:(id)a3;
- (CGPoint)previewCenterForVisibleItem:(id)a3 inCoordinateSpace:(id)a4;
- (NSArray)preDropItemProviders;
- (UIDragEvent)activeDragEvent;
- (UIWindow)weakCentroidWindow;
- (_UIInternalDraggingSessionDestination)initWithDragManager:(id)a3 dragEvent:(id)a4;
- (unint64_t)actualDragOperationForProposedDragOperation:(unint64_t)a3 destinationDataOwner:(int64_t)a4 forbidden:(BOOL *)a5;
- (unint64_t)sourceOperationMask;
- (void)_removeFromDragManager;
- (void)_sessionDidEndNormally:(BOOL)a3;
- (void)connect;
- (void)dataTransferMonitorBeganTransfers:(id)a3;
- (void)dataTransferMonitorFinishedTransfers:(id)a3;
- (void)dragDidExitApp;
- (void)enteredDestination:(id)a3;
- (void)enumerateItemsUsingBlock:(id)a3;
- (void)handOffDroppedItems:(id)a3 completion:(id)a4;
- (void)itemsBecameDirty:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)requestDropOnOwner:(id)a3 withOperation:(unint64_t)a4 perform:(id)a5 completion:(id)a6;
- (void)requestVisibleItems:(id)a3;
- (void)sawDragEndEvent;
- (void)setUpDropAnimation:(id)a3 layerContext:(id *)a4;
- (void)takePotentialDrop:(id)a3;
- (void)takeVisibleDroppedItems:(id)a3;
- (void)updateCentroidFromDragEvent;
@end

@implementation _UIInternalDraggingSessionDestination

- (_UIInternalDraggingSessionDestination)initWithDragManager:(id)a3 dragEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"dragEvent must be non-nil"];
  }

  v25.receiver = self;
  v25.super_class = _UIInternalDraggingSessionDestination;
  v8 = [(_UIDraggingImageSlotOwner *)&v25 initWithDragManager:v6];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    dragEvents = v8->_dragEvents;
    v8->_dragEvents = v9;

    v8->_sessionIdentifier = [v7 dragSessionID];
    v8->_touchRoutingPolicyContextID = [v7 _touchRoutingPolicyContextID];
    v11 = [(_UIDraggingImageSlotOwner *)v8 dragManager];
    v12 = [v11 sessionSourceWithIdentifier:v8->_sessionIdentifier];
    sessionSource = v8->_sessionSource;
    v8->_sessionSource = v12;

    v8->_isPolicyDriven = [v7 isPolicyDriven];
    [v7 locationInView:0];
    v8->_centroid.x = v14;
    v8->_centroid.y = v15;
    v8->_centroid.z = 0.0;
    v16 = [v7 eventWindow];
    centroidWindow = v8->_centroidWindow;
    v8->_centroidWindow = v16;

    v18 = objc_alloc_init(_UIDataTransferMonitor);
    dataTransferMonitor = v8->_dataTransferMonitor;
    v8->_dataTransferMonitor = v18;

    [(_UIDataTransferMonitor *)v8->_dataTransferMonitor setDelegate:v8];
    [(_UIDataTransferMonitor *)v8->_dataTransferMonitor setSuppressEventsUntilRequested:1];
    v20 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:100];
    progress = v8->_progress;
    v8->_progress = v20;

    v8->_progressIndicatorStyle = 1;
    v22 = [[_UIDropSessionImpl alloc] initWithSessionDestination:v8];
    dropSession = v8->_dropSession;
    v8->_dropSession = v22;

    [(_UIInternalDraggingSessionDestination *)v8 addDragEvent:v7];
  }

  return v8;
}

- (BOOL)canBeDrivenByDragEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 dragSessionID];
  v6 = v5 == -[_UIInternalDraggingSessionDestination sessionIdentifier](self, "sessionIdentifier") && [v4 _touchRoutingPolicyContextID] == self->_touchRoutingPolicyContextID && self->_isPolicyDriven == objc_msgSend(v4, "isPolicyDriven");

  return v6;
}

- (UIDragEvent)activeDragEvent
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(_UIInternalDraggingSessionDestination *)self dragEvents];
  v3 = [v2 firstObject];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
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
        if ([v9 hasActiveGestureRecognizers])
        {
          v10 = v9;

          v3 = v10;
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

LABEL_11:

  return v3;
}

- (void)connect
{
  v3 = [(_UIInternalDraggingSessionDestination *)self druidConnection];

  if (!v3)
  {
    v4 = [[_UIDruidDestinationConnection alloc] initWithSessionIdentifier:self->_sessionIdentifier systemPolicy:self->_isPolicyDriven];
    [(_UIInternalDraggingSessionDestination *)self setDruidConnection:v4];

    objc_initWeak(&location, self);
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x3032000000;
    v24[3] = __Block_byref_object_copy__70;
    v24[4] = __Block_byref_object_dispose__70;
    v25 = [(_UIInternalDraggingSessionDestination *)self dragEvents];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __48___UIInternalDraggingSessionDestination_connect__block_invoke;
    v22[3] = &unk_1E7106698;
    objc_copyWeak(&v23, &location);
    v22[4] = self;
    v22[5] = v24;
    v5 = [(_UIInternalDraggingSessionDestination *)self druidConnection];
    [v5 setConnectionBlock:v22];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __48___UIInternalDraggingSessionDestination_connect__block_invoke_2;
    v20[3] = &unk_1E71065D0;
    objc_copyWeak(&v21, &location);
    v6 = [(_UIInternalDraggingSessionDestination *)self druidConnection];
    [v6 setDragPreviewProviderBlock:v20];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __48___UIInternalDraggingSessionDestination_connect__block_invoke_4;
    v18[3] = &unk_1E71066C0;
    objc_copyWeak(&v19, &location);
    v7 = [(_UIInternalDraggingSessionDestination *)self druidConnection];
    [v7 setItemsAddedBlock:v18];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __48___UIInternalDraggingSessionDestination_connect__block_invoke_5;
    v16[3] = &unk_1E71066E8;
    objc_copyWeak(&v17, &location);
    v16[4] = self;
    v8 = [(_UIInternalDraggingSessionDestination *)self druidConnection];
    [v8 setDropPerformBlock:v16];

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __48___UIInternalDraggingSessionDestination_connect__block_invoke_6;
    v14[3] = &unk_1E7106648;
    objc_copyWeak(&v15, &location);
    v9 = [(_UIInternalDraggingSessionDestination *)self druidConnection];
    [v9 setHandOffDroppedItemsBlock:v14];

    v12 = MEMORY[0x1E69E9820];
    objc_copyWeak(&v13, &location);
    v10 = [(_UIInternalDraggingSessionDestination *)self druidConnection:v12];
    [v10 setDragEndBlock:&v12];

    v11 = [(_UIInternalDraggingSessionDestination *)self druidConnection];
    [v11 connect];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    _Block_object_dispose(v24, 8);

    objc_destroyWeak(&location);
  }
}

- (void)_sessionDidEndNormally:(BOOL)a3
{
  if (!a3)
  {
    dropPerformBlock = self->_dropPerformBlock;
    if (dropPerformBlock)
    {
      self->_dropPerformBlock = 0;

      dropCompletionBlock = self->_dropCompletionBlock;
      self->_dropCompletionBlock = 0;
    }

    setDownAnimation = self->_setDownAnimation;
    if (setDownAnimation)
    {
      [(_UIDragSetDownAnimation *)setDownAnimation begin];
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64___UIInternalDraggingSessionDestination__sessionDidEndNormally___block_invoke;
  v11[3] = &unk_1E70F35E0;
  v11[4] = self;
  v12 = a3;
  v8 = _Block_copy(v11);
  if (self->_setDownAnimation && ([UIApp _isSpringBoard] & 1) == 0)
  {
    v9 = _Block_copy(v8);
    postDropAnimationCompletionBlock = self->_postDropAnimationCompletionBlock;
    self->_postDropAnimationCompletionBlock = v9;
  }

  else
  {
    v8[2](v8);
  }
}

- (void)_removeFromDragManager
{
  v3 = [(_UIDraggingImageSlotOwner *)self dragManager];
  [v3 sessionDestinationDidEnd:self];

  dropSession = self->_dropSession;
  self->_dropSession = 0;
}

- (void)dataTransferMonitorBeganTransfers:(id)a3
{
  v4 = a3;
  v5 = +[UIApplication _systemAnimationFenceExemptQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75___UIInternalDraggingSessionDestination_dataTransferMonitorBeganTransfers___block_invoke;
  v7[3] = &unk_1E70F35B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performAsync:v7];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a5;
  if ([a3 isEqualToString:@"outstandingItemsCount"])
  {
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    v10 = [v9 unsignedIntegerValue];

    v11 = +[UIApplication _systemAnimationFenceExemptQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __88___UIInternalDraggingSessionDestination_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v12[3] = &unk_1E70F32F0;
    v12[4] = self;
    v12[5] = v10;
    [v11 performAsync:v12];
  }
}

- (void)dataTransferMonitorFinishedTransfers:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *(__UILogGetCategoryCachedImpl("Dragging", &dataTransferMonitorFinishedTransfers____s_category) + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v8 = self;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "Data transfer finished for dragging session destination %p", buf, 0xCu);
  }

  v5 = +[UIApplication _systemAnimationFenceExemptQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78___UIInternalDraggingSessionDestination_dataTransferMonitorFinishedTransfers___block_invoke;
  v6[3] = &unk_1E70F3590;
  v6[4] = self;
  [v5 performAsync:v6];
}

- (BOOL)shouldDragEventBeSentToGestureRecognizers
{
  if (!self->_connectedToDruid)
  {
    return 0;
  }

  sessionSource = self->_sessionSource;
  return !sessionSource || [(_UIInternalDraggingSessionSource *)sessionSource didHandOffDragImage];
}

- (void)sawDragEndEvent
{
  v2 = [(_UIInternalDraggingSessionDestination *)self druidConnection];
  [v2 sawDragEndEvent];
}

- (void)updateCentroidFromDragEvent
{
  if (self->_centroidWindow)
  {
    v3 = [(_UIInternalDraggingSessionDestination *)self activeDragEvent];
    if (v3)
    {
      v8 = v3;
      [v3 locationInView:0];
      self->_centroid.x = v4;
      self->_centroid.y = v5;
      self->_centroid.z = 0.0;
      v6 = [v8 eventWindow];
      centroidWindow = self->_centroidWindow;
      self->_centroidWindow = v6;

      v3 = v8;
    }
  }
}

- (void)dragDidExitApp
{
  lastPotentialDrop = self->_lastPotentialDrop;
  self->_lastPotentialDrop = 0;
}

- (void)enteredDestination:(id)a3
{
  v4 = a3;
  enteredDestinations = self->_enteredDestinations;
  v8 = v4;
  if (!enteredDestinations)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v7 = self->_enteredDestinations;
    self->_enteredDestinations = v6;

    v4 = v8;
    enteredDestinations = self->_enteredDestinations;
  }

  [(NSMutableSet *)enteredDestinations addObject:v4];
}

- (void)itemsBecameDirty:(id)a3
{
  v5 = a3;
  if ([v5 count] && self->_connectedToDruid && !self->_dragInteractionDidEnd)
  {
    v4 = [(_UIInternalDraggingSessionDestination *)self druidConnection];
    [v4 dirtyItems:v5];
  }
}

- (void)takePotentialDrop:(id)a3
{
  v6 = a3;
  if (![(_DUIPotentialDrop *)self->_lastPotentialDrop isEqual:?])
  {
    v5 = [(_UIInternalDraggingSessionDestination *)self druidConnection];
    [v5 takePotentialDrop:v6];

    objc_storeStrong(&self->_lastPotentialDrop, a3);
  }
}

- (void)requestDropOnOwner:(id)a3 withOperation:(unint64_t)a4 perform:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (a4)
  {
    objc_initWeak(&location, self);
    objc_storeStrong(&self->_dropDestinationOwner, a3);
    if (_IsKindOfUIView(self->_dropDestinationOwner))
    {
      v14 = [v11 _window];
      objc_storeWeak(&self->_dropDestinationWindow, v14);

      v15 = objc_alloc_init(_DUITargetLayerDescriptor);
      WeakRetained = objc_loadWeakRetained(&self->_dropDestinationWindow);
      -[_DUITargetLayerDescriptor setContextID:](v15, "setContextID:", [WeakRetained _contextId]);

      v17 = objc_loadWeakRetained(&self->_dropDestinationWindow);
      v18 = [v17 layer];
      [(_DUITargetLayerDescriptor *)v15 setRenderID:CALayerGetRenderId()];

      v19 = objc_loadWeakRetained(&self->_dropDestinationWindow);
      v20 = [v19 windowScene];

      v21 = [v20 systemShellHostingEnvironment];
      v22 = [v21 systemShellHostingSpaceIdentifier];
      [(_DUITargetLayerDescriptor *)v15 setSystemShellHostingSpaceIdentifier:v22];
    }

    else
    {
      v15 = 0;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __93___UIInternalDraggingSessionDestination_requestDropOnOwner_withOperation_perform_completion___block_invoke;
    aBlock[3] = &unk_1E71036E8;
    objc_copyWeak(&v30, &location);
    v29 = v12;
    v23 = _Block_copy(aBlock);
    dropPerformBlock = self->_dropPerformBlock;
    self->_dropPerformBlock = v23;

    v25 = _Block_copy(v13);
    dropCompletionBlock = self->_dropCompletionBlock;
    self->_dropCompletionBlock = v25;

    v27 = [(_UIInternalDraggingSessionDestination *)self druidConnection];
    [v27 requestDropWithOperation:a4 layerContext:v15];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }
}

- (unint64_t)sourceOperationMask
{
  v3 = [(_UIInternalDraggingSessionDestination *)self inAppSessionSource];

  if (v3)
  {
    v4 = [(_UIInternalDraggingSessionDestination *)self inAppSessionSource];
    v5 = [v4 withinAppSourceOperationMask];

    return v5;
  }

  else
  {

    return [(_UIInternalDraggingSessionDestination *)self outsideAppSourceOperationMask];
  }
}

- (NSArray)preDropItemProviders
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(_UIInternalDraggingSessionDestination *)self internalItems];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) itemProvider];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)takeVisibleDroppedItems:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 itemIndex];
        v11 = [(_UIInternalDraggingSessionDestination *)self internalItems];
        v12 = [v11 count];

        if (v10 < v12)
        {
          v13 = [(_UIInternalDraggingSessionDestination *)self internalItems];
          v14 = [v13 objectAtIndexedSubscript:v10];

          [v14 _setVisibleDropItemSize:visibleDroppedItemSize(v9)];
          [v9 center];
          [v14 _setVisibleDropItemCenter:?];
          if (v9)
          {
            [v9 appliedTransform];
          }

          else
          {
            v17 = 0u;
            v18 = 0u;
            v16 = 0u;
          }

          v15[0] = v16;
          v15[1] = v17;
          v15[2] = v18;
          [v14 set_suggestedTransform:v15];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }
}

- (void)setUpDropAnimation:(id)a3 layerContext:(id *)a4
{
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73___UIInternalDraggingSessionDestination_setUpDropAnimation_layerContext___block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  if ([v6 count])
  {
    v8 = [_UIDragSetDownAnimation alloc];
    v9 = [(_UIInternalDraggingSessionDestination *)self internalItems];
    v10 = [(_UIDragSetDownAnimation *)v8 initWithVisibleDroppedItems:v6 items:v9 forSource:0 policyDriven:self->_isPolicyDriven completion:v7];
    setDownAnimation = self->_setDownAnimation;
    self->_setDownAnimation = v10;

    if (a4)
    {
      v12 = [(_UIDragSetDownAnimation *)self->_setDownAnimation _targetLayerDescriptor];
      *a4 = v12;
    }
  }

  else
  {
    v7[2](v7);
  }
}

- (void)handOffDroppedItems:(id)a3 completion:(id)a4
{
  setDownAnimation = self->_setDownAnimation;
  v7 = a3;
  [(_UIDragSetDownAnimation *)setDownAnimation addCompletion:a4];
  [(_UIDragSetDownAnimation *)self->_setDownAnimation updateVisibleDroppedItems:v7];

  v8 = self->_setDownAnimation;

  [(_UIDragSetDownAnimation *)v8 begin];
}

- (unint64_t)actualDragOperationForProposedDragOperation:(unint64_t)a3 destinationDataOwner:(int64_t)a4 forbidden:(BOOL *)a5
{
  v8 = [(_UIInternalDraggingSessionDestination *)self sourceDataOwner];
  if (_UIShouldEnforceOpenInRulesInAccountBasedApp())
  {
    if ((_UIDropAllowedWithinAccountBasedApp(v8, a4) & 1) == 0)
    {
      a3 = 0;
      if (a5)
      {
        *a5 = 1;
      }
    }
  }

  return a3;
}

- (void)requestVisibleItems:(id)a3
{
  v4 = a3;
  v5 = [(_UIInternalDraggingSessionDestination *)self druidConnection];
  [v5 requestVisibleItems:v4];
}

- (CGPoint)previewCenterForVisibleItem:(id)a3 inCoordinateSpace:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 _visibleDropItemSize];
  if (v9 == *MEMORY[0x1E695F060] && v8 == *(MEMORY[0x1E695F060] + 8))
  {
    v13 = *MEMORY[0x1E695F050];
    v15 = *(MEMORY[0x1E695F050] + 8);
  }

  else
  {
    v11 = [(_UIDropInteractionOwning *)self->_dropDestinationOwner _window];
    [v6 _visibleDropItemCenter];
    [v7 convertPoint:v11 fromCoordinateSpace:?];
    v13 = v12;
    v15 = v14;
  }

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (void)enumerateItemsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(_UIInternalDraggingSessionDestination *)self internalItems];
  v6 = enumerateDraggingItems(v5, v4);

  [(_UIInternalDraggingSessionDestination *)self itemsBecameDirty:v6];
}

- (CGPoint)draggingLocationInCoordinateSpace:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"coordinateSpace must be non-nil"];
  }

  [(_UIInternalDraggingSessionDestination *)self updateCentroidFromDragEvent];
  [(_UIInternalDraggingSessionDestination *)self centroid];
  v6 = v5;
  v8 = v7;
  v9 = [(_UIInternalDraggingSessionDestination *)self centroidWindow];
  if (v9 || ([(_UIInternalDraggingSessionDestination *)self weakCentroidWindow], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    if (_IsKindOfUIView(v4))
    {
      [v10 convertPoint:v4 toView:{v6, v8}];
    }

    else
    {
      [v10 convertPoint:v4 toCoordinateSpace:{v6, v8}];
    }

    v13 = v11;
    v14 = v12;
  }

  else
  {
    v13 = *MEMORY[0x1E695EFF8];
    v14 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v15 = v13;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

- (CAPoint3D)centroid
{
  x = self->_centroid.x;
  y = self->_centroid.y;
  z = self->_centroid.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (UIWindow)weakCentroidWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_weakCentroidWindow);

  return WeakRetained;
}

@end