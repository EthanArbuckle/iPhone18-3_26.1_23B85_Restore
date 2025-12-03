@interface _UIInternalDraggingSessionDestination
- (BOOL)canBeDrivenByDragEvent:(id)event;
- (BOOL)shouldDragEventBeSentToGestureRecognizers;
- (CAPoint3D)centroid;
- (CGPoint)draggingLocationInCoordinateSpace:(id)space;
- (CGPoint)previewCenterForVisibleItem:(id)item inCoordinateSpace:(id)space;
- (NSArray)preDropItemProviders;
- (UIDragEvent)activeDragEvent;
- (UIWindow)weakCentroidWindow;
- (_UIInternalDraggingSessionDestination)initWithDragManager:(id)manager dragEvent:(id)event;
- (unint64_t)actualDragOperationForProposedDragOperation:(unint64_t)operation destinationDataOwner:(int64_t)owner forbidden:(BOOL *)forbidden;
- (unint64_t)sourceOperationMask;
- (void)_removeFromDragManager;
- (void)_sessionDidEndNormally:(BOOL)normally;
- (void)connect;
- (void)dataTransferMonitorBeganTransfers:(id)transfers;
- (void)dataTransferMonitorFinishedTransfers:(id)transfers;
- (void)dragDidExitApp;
- (void)enteredDestination:(id)destination;
- (void)enumerateItemsUsingBlock:(id)block;
- (void)handOffDroppedItems:(id)items completion:(id)completion;
- (void)itemsBecameDirty:(id)dirty;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)requestDropOnOwner:(id)owner withOperation:(unint64_t)operation perform:(id)perform completion:(id)completion;
- (void)requestVisibleItems:(id)items;
- (void)sawDragEndEvent;
- (void)setUpDropAnimation:(id)animation layerContext:(id *)context;
- (void)takePotentialDrop:(id)drop;
- (void)takeVisibleDroppedItems:(id)items;
- (void)updateCentroidFromDragEvent;
@end

@implementation _UIInternalDraggingSessionDestination

- (_UIInternalDraggingSessionDestination)initWithDragManager:(id)manager dragEvent:(id)event
{
  managerCopy = manager;
  eventCopy = event;
  if (!eventCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"dragEvent must be non-nil"];
  }

  v25.receiver = self;
  v25.super_class = _UIInternalDraggingSessionDestination;
  v8 = [(_UIDraggingImageSlotOwner *)&v25 initWithDragManager:managerCopy];
  if (v8)
  {
    weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    dragEvents = v8->_dragEvents;
    v8->_dragEvents = weakObjectsPointerArray;

    v8->_sessionIdentifier = [eventCopy dragSessionID];
    v8->_touchRoutingPolicyContextID = [eventCopy _touchRoutingPolicyContextID];
    dragManager = [(_UIDraggingImageSlotOwner *)v8 dragManager];
    v12 = [dragManager sessionSourceWithIdentifier:v8->_sessionIdentifier];
    sessionSource = v8->_sessionSource;
    v8->_sessionSource = v12;

    v8->_isPolicyDriven = [eventCopy isPolicyDriven];
    [eventCopy locationInView:0];
    v8->_centroid.x = v14;
    v8->_centroid.y = v15;
    v8->_centroid.z = 0.0;
    eventWindow = [eventCopy eventWindow];
    centroidWindow = v8->_centroidWindow;
    v8->_centroidWindow = eventWindow;

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

    [(_UIInternalDraggingSessionDestination *)v8 addDragEvent:eventCopy];
  }

  return v8;
}

- (BOOL)canBeDrivenByDragEvent:(id)event
{
  eventCopy = event;
  dragSessionID = [eventCopy dragSessionID];
  v6 = dragSessionID == -[_UIInternalDraggingSessionDestination sessionIdentifier](self, "sessionIdentifier") && [eventCopy _touchRoutingPolicyContextID] == self->_touchRoutingPolicyContextID && self->_isPolicyDriven == objc_msgSend(eventCopy, "isPolicyDriven");

  return v6;
}

- (UIDragEvent)activeDragEvent
{
  v17 = *MEMORY[0x1E69E9840];
  dragEvents = [(_UIInternalDraggingSessionDestination *)self dragEvents];
  firstObject = [dragEvents firstObject];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = dragEvents;
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

          firstObject = v10;
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

  return firstObject;
}

- (void)connect
{
  druidConnection = [(_UIInternalDraggingSessionDestination *)self druidConnection];

  if (!druidConnection)
  {
    v4 = [[_UIDruidDestinationConnection alloc] initWithSessionIdentifier:self->_sessionIdentifier systemPolicy:self->_isPolicyDriven];
    [(_UIInternalDraggingSessionDestination *)self setDruidConnection:v4];

    objc_initWeak(&location, self);
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x3032000000;
    v24[3] = __Block_byref_object_copy__70;
    v24[4] = __Block_byref_object_dispose__70;
    dragEvents = [(_UIInternalDraggingSessionDestination *)self dragEvents];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __48___UIInternalDraggingSessionDestination_connect__block_invoke;
    v22[3] = &unk_1E7106698;
    objc_copyWeak(&v23, &location);
    v22[4] = self;
    v22[5] = v24;
    druidConnection2 = [(_UIInternalDraggingSessionDestination *)self druidConnection];
    [druidConnection2 setConnectionBlock:v22];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __48___UIInternalDraggingSessionDestination_connect__block_invoke_2;
    v20[3] = &unk_1E71065D0;
    objc_copyWeak(&v21, &location);
    druidConnection3 = [(_UIInternalDraggingSessionDestination *)self druidConnection];
    [druidConnection3 setDragPreviewProviderBlock:v20];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __48___UIInternalDraggingSessionDestination_connect__block_invoke_4;
    v18[3] = &unk_1E71066C0;
    objc_copyWeak(&v19, &location);
    druidConnection4 = [(_UIInternalDraggingSessionDestination *)self druidConnection];
    [druidConnection4 setItemsAddedBlock:v18];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __48___UIInternalDraggingSessionDestination_connect__block_invoke_5;
    v16[3] = &unk_1E71066E8;
    objc_copyWeak(&v17, &location);
    v16[4] = self;
    druidConnection5 = [(_UIInternalDraggingSessionDestination *)self druidConnection];
    [druidConnection5 setDropPerformBlock:v16];

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __48___UIInternalDraggingSessionDestination_connect__block_invoke_6;
    v14[3] = &unk_1E7106648;
    objc_copyWeak(&v15, &location);
    druidConnection6 = [(_UIInternalDraggingSessionDestination *)self druidConnection];
    [druidConnection6 setHandOffDroppedItemsBlock:v14];

    v12 = MEMORY[0x1E69E9820];
    objc_copyWeak(&v13, &location);
    v10 = [(_UIInternalDraggingSessionDestination *)self druidConnection:v12];
    [v10 setDragEndBlock:&v12];

    druidConnection7 = [(_UIInternalDraggingSessionDestination *)self druidConnection];
    [druidConnection7 connect];

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

- (void)_sessionDidEndNormally:(BOOL)normally
{
  if (!normally)
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
  normallyCopy = normally;
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
  dragManager = [(_UIDraggingImageSlotOwner *)self dragManager];
  [dragManager sessionDestinationDidEnd:self];

  dropSession = self->_dropSession;
  self->_dropSession = 0;
}

- (void)dataTransferMonitorBeganTransfers:(id)transfers
{
  transfersCopy = transfers;
  v5 = +[UIApplication _systemAnimationFenceExemptQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75___UIInternalDraggingSessionDestination_dataTransferMonitorBeganTransfers___block_invoke;
  v7[3] = &unk_1E70F35B8;
  v7[4] = self;
  v8 = transfersCopy;
  v6 = transfersCopy;
  [v5 performAsync:v7];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  if ([path isEqualToString:@"outstandingItemsCount"])
  {
    v9 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    unsignedIntegerValue = [v9 unsignedIntegerValue];

    v11 = +[UIApplication _systemAnimationFenceExemptQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __88___UIInternalDraggingSessionDestination_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v12[3] = &unk_1E70F32F0;
    v12[4] = self;
    v12[5] = unsignedIntegerValue;
    [v11 performAsync:v12];
  }
}

- (void)dataTransferMonitorFinishedTransfers:(id)transfers
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *(__UILogGetCategoryCachedImpl("Dragging", &dataTransferMonitorFinishedTransfers____s_category) + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
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
  druidConnection = [(_UIInternalDraggingSessionDestination *)self druidConnection];
  [druidConnection sawDragEndEvent];
}

- (void)updateCentroidFromDragEvent
{
  if (self->_centroidWindow)
  {
    activeDragEvent = [(_UIInternalDraggingSessionDestination *)self activeDragEvent];
    if (activeDragEvent)
    {
      v8 = activeDragEvent;
      [activeDragEvent locationInView:0];
      self->_centroid.x = v4;
      self->_centroid.y = v5;
      self->_centroid.z = 0.0;
      eventWindow = [v8 eventWindow];
      centroidWindow = self->_centroidWindow;
      self->_centroidWindow = eventWindow;

      activeDragEvent = v8;
    }
  }
}

- (void)dragDidExitApp
{
  lastPotentialDrop = self->_lastPotentialDrop;
  self->_lastPotentialDrop = 0;
}

- (void)enteredDestination:(id)destination
{
  destinationCopy = destination;
  enteredDestinations = self->_enteredDestinations;
  v8 = destinationCopy;
  if (!enteredDestinations)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v7 = self->_enteredDestinations;
    self->_enteredDestinations = v6;

    destinationCopy = v8;
    enteredDestinations = self->_enteredDestinations;
  }

  [(NSMutableSet *)enteredDestinations addObject:destinationCopy];
}

- (void)itemsBecameDirty:(id)dirty
{
  dirtyCopy = dirty;
  if ([dirtyCopy count] && self->_connectedToDruid && !self->_dragInteractionDidEnd)
  {
    druidConnection = [(_UIInternalDraggingSessionDestination *)self druidConnection];
    [druidConnection dirtyItems:dirtyCopy];
  }
}

- (void)takePotentialDrop:(id)drop
{
  dropCopy = drop;
  if (![(_DUIPotentialDrop *)self->_lastPotentialDrop isEqual:?])
  {
    druidConnection = [(_UIInternalDraggingSessionDestination *)self druidConnection];
    [druidConnection takePotentialDrop:dropCopy];

    objc_storeStrong(&self->_lastPotentialDrop, drop);
  }
}

- (void)requestDropOnOwner:(id)owner withOperation:(unint64_t)operation perform:(id)perform completion:(id)completion
{
  ownerCopy = owner;
  performCopy = perform;
  completionCopy = completion;
  if (operation)
  {
    objc_initWeak(&location, self);
    objc_storeStrong(&self->_dropDestinationOwner, owner);
    if (_IsKindOfUIView(self->_dropDestinationOwner))
    {
      _window = [ownerCopy _window];
      objc_storeWeak(&self->_dropDestinationWindow, _window);

      v15 = objc_alloc_init(_DUITargetLayerDescriptor);
      WeakRetained = objc_loadWeakRetained(&self->_dropDestinationWindow);
      -[_DUITargetLayerDescriptor setContextID:](v15, "setContextID:", [WeakRetained _contextId]);

      v17 = objc_loadWeakRetained(&self->_dropDestinationWindow);
      layer = [v17 layer];
      [(_DUITargetLayerDescriptor *)v15 setRenderID:CALayerGetRenderId()];

      v19 = objc_loadWeakRetained(&self->_dropDestinationWindow);
      windowScene = [v19 windowScene];

      systemShellHostingEnvironment = [windowScene systemShellHostingEnvironment];
      systemShellHostingSpaceIdentifier = [systemShellHostingEnvironment systemShellHostingSpaceIdentifier];
      [(_DUITargetLayerDescriptor *)v15 setSystemShellHostingSpaceIdentifier:systemShellHostingSpaceIdentifier];
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
    v29 = performCopy;
    v23 = _Block_copy(aBlock);
    dropPerformBlock = self->_dropPerformBlock;
    self->_dropPerformBlock = v23;

    v25 = _Block_copy(completionCopy);
    dropCompletionBlock = self->_dropCompletionBlock;
    self->_dropCompletionBlock = v25;

    druidConnection = [(_UIInternalDraggingSessionDestination *)self druidConnection];
    [druidConnection requestDropWithOperation:operation layerContext:v15];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }
}

- (unint64_t)sourceOperationMask
{
  inAppSessionSource = [(_UIInternalDraggingSessionDestination *)self inAppSessionSource];

  if (inAppSessionSource)
  {
    inAppSessionSource2 = [(_UIInternalDraggingSessionDestination *)self inAppSessionSource];
    withinAppSourceOperationMask = [inAppSessionSource2 withinAppSourceOperationMask];

    return withinAppSourceOperationMask;
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
  internalItems = [(_UIInternalDraggingSessionDestination *)self internalItems];
  v5 = [internalItems countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(internalItems);
        }

        itemProvider = [*(*(&v11 + 1) + 8 * i) itemProvider];
        if (itemProvider)
        {
          [v3 addObject:itemProvider];
        }
      }

      v6 = [internalItems countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)takeVisibleDroppedItems:(id)items
{
  v24 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [itemsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(itemsCopy);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        itemIndex = [v9 itemIndex];
        internalItems = [(_UIInternalDraggingSessionDestination *)self internalItems];
        v12 = [internalItems count];

        if (itemIndex < v12)
        {
          internalItems2 = [(_UIInternalDraggingSessionDestination *)self internalItems];
          v14 = [internalItems2 objectAtIndexedSubscript:itemIndex];

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

      v6 = [itemsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }
}

- (void)setUpDropAnimation:(id)animation layerContext:(id *)context
{
  animationCopy = animation;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73___UIInternalDraggingSessionDestination_setUpDropAnimation_layerContext___block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  if ([animationCopy count])
  {
    v8 = [_UIDragSetDownAnimation alloc];
    internalItems = [(_UIInternalDraggingSessionDestination *)self internalItems];
    v10 = [(_UIDragSetDownAnimation *)v8 initWithVisibleDroppedItems:animationCopy items:internalItems forSource:0 policyDriven:self->_isPolicyDriven completion:v7];
    setDownAnimation = self->_setDownAnimation;
    self->_setDownAnimation = v10;

    if (context)
    {
      _targetLayerDescriptor = [(_UIDragSetDownAnimation *)self->_setDownAnimation _targetLayerDescriptor];
      *context = _targetLayerDescriptor;
    }
  }

  else
  {
    v7[2](v7);
  }
}

- (void)handOffDroppedItems:(id)items completion:(id)completion
{
  setDownAnimation = self->_setDownAnimation;
  itemsCopy = items;
  [(_UIDragSetDownAnimation *)setDownAnimation addCompletion:completion];
  [(_UIDragSetDownAnimation *)self->_setDownAnimation updateVisibleDroppedItems:itemsCopy];

  v8 = self->_setDownAnimation;

  [(_UIDragSetDownAnimation *)v8 begin];
}

- (unint64_t)actualDragOperationForProposedDragOperation:(unint64_t)operation destinationDataOwner:(int64_t)owner forbidden:(BOOL *)forbidden
{
  sourceDataOwner = [(_UIInternalDraggingSessionDestination *)self sourceDataOwner];
  if (_UIShouldEnforceOpenInRulesInAccountBasedApp())
  {
    if ((_UIDropAllowedWithinAccountBasedApp(sourceDataOwner, owner) & 1) == 0)
    {
      operation = 0;
      if (forbidden)
      {
        *forbidden = 1;
      }
    }
  }

  return operation;
}

- (void)requestVisibleItems:(id)items
{
  itemsCopy = items;
  druidConnection = [(_UIInternalDraggingSessionDestination *)self druidConnection];
  [druidConnection requestVisibleItems:itemsCopy];
}

- (CGPoint)previewCenterForVisibleItem:(id)item inCoordinateSpace:(id)space
{
  itemCopy = item;
  spaceCopy = space;
  [itemCopy _visibleDropItemSize];
  if (v9 == *MEMORY[0x1E695F060] && v8 == *(MEMORY[0x1E695F060] + 8))
  {
    v13 = *MEMORY[0x1E695F050];
    v15 = *(MEMORY[0x1E695F050] + 8);
  }

  else
  {
    _window = [(_UIDropInteractionOwning *)self->_dropDestinationOwner _window];
    [itemCopy _visibleDropItemCenter];
    [spaceCopy convertPoint:_window fromCoordinateSpace:?];
    v13 = v12;
    v15 = v14;
  }

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (void)enumerateItemsUsingBlock:(id)block
{
  blockCopy = block;
  internalItems = [(_UIInternalDraggingSessionDestination *)self internalItems];
  v6 = enumerateDraggingItems(internalItems, blockCopy);

  [(_UIInternalDraggingSessionDestination *)self itemsBecameDirty:v6];
}

- (CGPoint)draggingLocationInCoordinateSpace:(id)space
{
  spaceCopy = space;
  if (!spaceCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"coordinateSpace must be non-nil"];
  }

  [(_UIInternalDraggingSessionDestination *)self updateCentroidFromDragEvent];
  [(_UIInternalDraggingSessionDestination *)self centroid];
  v6 = v5;
  v8 = v7;
  centroidWindow = [(_UIInternalDraggingSessionDestination *)self centroidWindow];
  if (centroidWindow || ([(_UIInternalDraggingSessionDestination *)self weakCentroidWindow], (centroidWindow = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = centroidWindow;
    if (_IsKindOfUIView(spaceCopy))
    {
      [v10 convertPoint:spaceCopy toView:{v6, v8}];
    }

    else
    {
      [v10 convertPoint:spaceCopy toCoordinateSpace:{v6, v8}];
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