@interface _UIInternalDraggingSessionSource
- (BOOL)_canHandOffCancelledItems:(id)items;
- (BOOL)_routingPolicyHasSpecificTouchContextIDs;
- (BOOL)canAddItems;
- (BOOL)dynamicallyUpdatesPrefersFullSizePreviews;
- (BOOL)prefersFullSizePreview;
- (BOOL)preventsSimultaneousDragFromView:(id)view;
- (BOOL)shouldCancelOnAppDeactivation;
- (BOOL)touchRoutingPolicyContainsContextIDToAlwaysSend:(unsigned int)send;
- (CAPoint3D)centroid;
- (CGPoint)draggingLocationInCoordinateSpace:(id)space;
- (UIDragEvent)dragEvent;
- (UIView)sourceView;
- (UIWindow)weakCentroidWindow;
- (_UIDraggingSessionDelegate)delegate;
- (_UIInternalDraggingSessionSource)initWithDragManager:(id)manager configuration:(id)configuration;
- (void)_didBeginDrag;
- (void)_endWithOperation:(unint64_t)operation;
- (void)_getOperationMaskFromDelegate;
- (void)_handOffCancelledItems:(id)items completion:(id)completion;
- (void)_hostDidDeactivate;
- (void)_sendDataTransferFinished;
- (void)_sendDidEndWithOperation:(unint64_t)operation;
- (void)_sendDidMove;
- (void)_sendDragPreviewReplyWithIndexSet:(id)set dragPreviews:(id)previews completion:(id)completion;
- (void)_sendHandedOffDragImage;
- (void)_sendHandedOffDragImageForItem:(id)item;
- (void)_sendWillAddItems:(id)items;
- (void)_sendWillBegin;
- (void)_sendWillEndWithOperation:(unint64_t)operation;
- (void)_setupAnimationForCancelledItems:(id)items returningLayerContext:(id *)context;
- (void)_updatedPresentation:(id)presentation;
- (void)addPublicItems:(id)items;
- (void)beginDrag:(id)drag;
- (void)cancelDrag;
- (void)dragDidExitApp;
- (void)dragIsInsideApp;
- (void)enumerateItemsUsingBlock:(id)block;
- (void)itemsBecameDirty:(id)dirty;
- (void)setState:(int64_t)state;
- (void)updateCentroidFromDragEvent;
@end

@implementation _UIInternalDraggingSessionSource

- (BOOL)touchRoutingPolicyContainsContextIDToAlwaysSend:(unsigned int)send
{
  v3 = *&send;
  dragManager = [(_UIDraggingImageSlotOwner *)self dragManager];
  screen = [dragManager screen];
  displayConfiguration = [screen displayConfiguration];
  hardwareIdentifier = [displayConfiguration hardwareIdentifier];
  v9 = hardwareIdentifier;
  v10 = _UIDraggingSystemEmbeddedDisplayIdentifier;
  if (hardwareIdentifier)
  {
    v10 = hardwareIdentifier;
  }

  v11 = v10;

  routingPolicy = [(UIDraggingSessionConfiguration *)self->_configuration routingPolicy];
  contextIDsToAlwaysSendTouchesByDisplayIdentifier = [routingPolicy contextIDsToAlwaysSendTouchesByDisplayIdentifier];
  v14 = [contextIDsToAlwaysSendTouchesByDisplayIdentifier objectForKey:v11];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  LOBYTE(routingPolicy) = [v14 containsObject:v15];

  return routingPolicy;
}

- (_UIInternalDraggingSessionSource)initWithDragManager:(id)manager configuration:(id)configuration
{
  configurationCopy = configuration;
  v24.receiver = self;
  v24.super_class = _UIInternalDraggingSessionSource;
  v8 = [(_UIDraggingImageSlotOwner *)&v24 initWithDragManager:manager];
  v9 = v8;
  if (v8)
  {
    v8->_state = 0;
    objc_storeStrong(&v8->_configuration, configuration);
    items = [configurationCopy items];
    v11 = [items copy];
    internalItems = v9->_internalItems;
    v9->_internalItems = v11;

    v9->_dataOwner = [configurationCopy dataOwner];
    [_UIKitDragAndDropStatistics incrementUIKitScalarValueBy:1 forKey:@"dragStarted"];
    [_UIKitDragAndDropStatistics incrementUIKitScalarValueForKnownInternalAppsForKey:@"dragStartedFrom" bundleID:0];
    if (_UIApplicationIsExtension())
    {
      [_UIKitDragAndDropStatistics incrementUIKitScalarValueBy:1 forKey:@"dragStartedFromExtension"];
    }

    [_UIKitDragAndDropStatistics recordUIKitDragAndDropDistributionValue:@"itemsPickedUp" forKey:[(NSArray *)v9->_internalItems count]];
    _UIDragStatisticLogItemsInDragByType(v9->_internalItems, @"itemsPickedUpByType");
    sourceView = [configurationCopy sourceView];
    window = [sourceView window];
    v9->_originatedInHostedWindow = [window _isHostedInAnotherProcess];

    if (v9->_originatedInHostedWindow)
    {
      v9->_hostIsActive = 1;
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v9 selector:sel__hostWillBecomeActive name:0x1EFBB4830 object:0];
      [defaultCenter addObserver:v9 selector:sel__hostDidDeactivate name:0x1EFBB4850 object:0];
    }

    sourceView2 = [configurationCopy sourceView];
    window2 = [sourceView2 window];
    centroidWindow = v9->_centroidWindow;
    v9->_centroidWindow = window2;

    [configurationCopy initialCentroidInSourceWindow];
    v9->_centroid.x = v19;
    v9->_centroid.y = v20;
    v9->_centroid.z = v21;
    v9->_restrictedToSourceApp = [configurationCopy sessionIsRestrictedToSourceApplication];
    z = v9->_centroid.z;
    *&v9->_lastNotifiedCentroid.x = *&v9->_centroid.x;
    v9->_lastNotifiedCentroid.z = z;
  }

  return v9;
}

- (void)setState:(int64_t)state
{
  v18 = *MEMORY[0x1E69E9840];
  state = self->_state;
  if (state != state)
  {
    self->_state = state;
    v6 = *(__UILogGetCategoryCachedImpl("Dragging", &setState____s_category) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = stringFromDraggingSessionSourceState(state);
      v9 = stringFromDraggingSessionSourceState(state);
      v14 = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "_UIInternalDraggingSessionSource: Drag session state changing from %@ to %@", &v14, 0x16u);
    }

    if (state > 3)
    {
      switch(state)
      {
        case 4:
          [(_UIInternalDraggingSessionSource *)self _endWithOperation:[(_UIInternalDraggingSessionSource *)self resultOperation]];
          [_UIKitDragAndDropStatistics recordUIKitDragAndDropDistributionValue:@"itemsDroppedSuccessfully" forKey:[(NSArray *)self->_internalItems count]];
          _UIDragStatisticLogItemsInDragByType(self->_internalItems, @"itemsDroppedSuccessfullyByType");
          v11 = @"dropSuccessful";
          v12 = @"dropSuccessfullFrom";
          break;
        case 5:
          [(_UIInternalDraggingSessionSource *)self _endWithOperation:0];
          dragManager = [(_UIDraggingImageSlotOwner *)self dragManager];
          [dragManager sessionSourceDidEnd:self];

          v11 = @"dropCancelled";
          v12 = @"dropCancelledFrom";
          break;
        case 6:
LABEL_11:
          [(_UIInternalDraggingSessionSource *)self _endWithOperation:0];
          dragManager2 = [(_UIDraggingImageSlotOwner *)self dragManager];
          [dragManager2 sessionSourceDidEnd:self];

          return;
        default:
          return;
      }

      [_UIKitDragAndDropStatistics incrementUIKitScalarValueForKnownInternalAppsForKey:v12 bundleID:0];
      [_UIKitDragAndDropStatistics incrementUIKitScalarValueBy:1 forKey:v11];
      [_UIKitDragAndDropStatistics recordUIKitDragAndDropDistributionValue:@"itemsTotalInDragSession" forKey:[(NSArray *)self->_internalItems count]];
      _UIDragStatisticLogItemsInDragByType(self->_internalItems, @"itemsTotalInDragSessionByType");
      return;
    }

    if (state == 2)
    {
      [(_UIInternalDraggingSessionSource *)self _sendWillBegin];
      [(_UIInternalDraggingSessionSource *)self _getOperationMaskFromDelegate];
      return;
    }

    if (state != 3)
    {
      return;
    }

    goto LABEL_11;
  }
}

- (BOOL)preventsSimultaneousDragFromView:(id)view
{
  viewCopy = view;
  sourceView = [(_UIInternalDraggingSessionSource *)self sourceView];

  v6 = sourceView == viewCopy && [(_UIInternalDraggingSessionSource *)self state]< 3;
  return v6;
}

- (BOOL)prefersFullSizePreview
{
  delegate = [(_UIInternalDraggingSessionSource *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(_UIInternalDraggingSessionSource *)self delegate];
  v6 = [delegate2 draggingSessionPrefersFullSizePreviews:self];

  return v6;
}

- (BOOL)dynamicallyUpdatesPrefersFullSizePreviews
{
  delegate = [(_UIInternalDraggingSessionSource *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(_UIInternalDraggingSessionSource *)self delegate];
  v6 = [delegate2 draggingSessionDynamicallyUpdatesPrefersFullSizePreviews:self];

  return v6;
}

- (void)enumerateItemsUsingBlock:(id)block
{
  blockCopy = block;
  internalItems = [(_UIInternalDraggingSessionSource *)self internalItems];
  v6 = enumerateDraggingItems(internalItems, blockCopy);

  [(_UIInternalDraggingSessionSource *)self itemsBecameDirty:v6];
}

- (CGPoint)draggingLocationInCoordinateSpace:(id)space
{
  spaceCopy = space;
  if (!spaceCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"coordinateSpace must be non-nil"];
  }

  [(_UIInternalDraggingSessionSource *)self centroid];
  v6 = v5;
  v8 = v7;
  centroidWindow = [(_UIInternalDraggingSessionSource *)self centroidWindow];
  if (centroidWindow || ([(_UIInternalDraggingSessionSource *)self weakCentroidWindow], (centroidWindow = objc_claimAutoreleasedReturnValue()) != 0))
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

- (BOOL)_routingPolicyHasSpecificTouchContextIDs
{
  dragManager = [(_UIDraggingImageSlotOwner *)self dragManager];
  screen = [dragManager screen];
  displayConfiguration = [screen displayConfiguration];
  hardwareIdentifier = [displayConfiguration hardwareIdentifier];
  v7 = hardwareIdentifier;
  v8 = _UIDraggingSystemEmbeddedDisplayIdentifier;
  if (hardwareIdentifier)
  {
    v8 = hardwareIdentifier;
  }

  v9 = v8;

  routingPolicy = [(UIDraggingSessionConfiguration *)self->_configuration routingPolicy];
  contextIDsToAlwaysSendTouchesByDisplayIdentifier = [routingPolicy contextIDsToAlwaysSendTouchesByDisplayIdentifier];
  v12 = [contextIDsToAlwaysSendTouchesByDisplayIdentifier objectForKey:v9];

  LOBYTE(routingPolicy) = [v12 count] != 0;
  return routingPolicy;
}

- (void)beginDrag:(id)drag
{
  v21 = *MEMORY[0x1E69E9840];
  dragCopy = drag;
  v6 = dyld_program_sdk_at_least();
  state = [(_UIInternalDraggingSessionSource *)self state];
  if (v6)
  {
    if (!state)
    {
      goto LABEL_5;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDragging.m" lineNumber:829 description:@"can't begin a drag session from state %d", [(_UIInternalDraggingSessionSource *)self state]];
    goto LABEL_12;
  }

  if (state)
  {
    v15 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1EA9683A8) + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      currentHandler = v15;
      *buf = 67109120;
      state2 = [(_UIInternalDraggingSessionSource *)self state];
      _os_log_impl(&dword_188A29000, currentHandler, OS_LOG_TYPE_ERROR, "can't begin a drag session from state %d", buf, 8u);
LABEL_12:
    }
  }

LABEL_5:
  v9 = dyld_program_sdk_at_least();
  druidConnection = [(_UIInternalDraggingSessionSource *)self druidConnection];

  if (v9)
  {
    if (druidConnection)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIDragging.m" lineNumber:830 description:@"shouldn't have a druid connection yet"];
    }
  }

  else if (druidConnection)
  {
    v16 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1EA9683B0) + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "shouldn't have a druid connection yet", buf, 2u);
    }
  }

  [(_UIInternalDraggingSessionSource *)self setState:1];
  v12 = objc_alloc_init(_UIDruidSourceConnection);
  [(_UIInternalDraggingSessionSource *)self setDruidConnection:v12];
  configuration = self->_configuration;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __46___UIInternalDraggingSessionSource_beginDrag___block_invoke;
  v17[3] = &unk_1E71065A8;
  v17[4] = self;
  v18 = dragCopy;
  v14 = dragCopy;
  [(_UIDruidSourceConnection *)v12 beginDragWithConfiguration:configuration completion:v17];
}

- (void)_sendDragPreviewReplyWithIndexSet:(id)set dragPreviews:(id)previews completion:(id)completion
{
  setCopy = set;
  previewsCopy = previews;
  completionCopy = completion;
  v11 = UIApp;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __94___UIInternalDraggingSessionSource__sendDragPreviewReplyWithIndexSet_dragPreviews_completion___block_invoke;
  v15[3] = &unk_1E7100388;
  v15[4] = self;
  v16 = setCopy;
  v17 = previewsCopy;
  v18 = completionCopy;
  v12 = previewsCopy;
  v13 = completionCopy;
  v14 = setCopy;
  [v11 _performBlockAfterCATransactionCommits:v15];
}

- (void)_didBeginDrag
{
  [(_UIInternalDraggingSessionSource *)self setState:2];
  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __49___UIInternalDraggingSessionSource__didBeginDrag__block_invoke;
  v19[3] = &unk_1E71065D0;
  objc_copyWeak(&v20, &location);
  druidConnection = [(_UIInternalDraggingSessionSource *)self druidConnection];
  [druidConnection setDragPreviewProviderBlock:v19];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __49___UIInternalDraggingSessionSource__didBeginDrag__block_invoke_2;
  v17[3] = &unk_1E71065F8;
  objc_copyWeak(&v18, &location);
  druidConnection2 = [(_UIInternalDraggingSessionSource *)self druidConnection];
  [druidConnection2 setUpdatedPresentationBlock:v17];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49___UIInternalDraggingSessionSource__didBeginDrag__block_invoke_3;
  v15[3] = &unk_1E7106620;
  objc_copyWeak(&v16, &location);
  druidConnection3 = [(_UIInternalDraggingSessionSource *)self druidConnection];
  [druidConnection3 setCanHandOffCancelledItemsBlock:v15];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49___UIInternalDraggingSessionSource__didBeginDrag__block_invoke_4;
  v13[3] = &unk_1E7106648;
  objc_copyWeak(&v14, &location);
  druidConnection4 = [(_UIInternalDraggingSessionSource *)self druidConnection];
  [druidConnection4 setHandOffCancelledItemsBlock:v13];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49___UIInternalDraggingSessionSource__didBeginDrag__block_invoke_5;
  v11[3] = &unk_1E7106670;
  objc_copyWeak(&v12, &location);
  druidConnection5 = [(_UIInternalDraggingSessionSource *)self druidConnection];
  [druidConnection5 setDragCompletionBlock:v11];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49___UIInternalDraggingSessionSource__didBeginDrag__block_invoke_6;
  v9[3] = &unk_1E70F5A28;
  objc_copyWeak(&v10, &location);
  druidConnection6 = [(_UIInternalDraggingSessionSource *)self druidConnection];
  [druidConnection6 setDataTransferFinishedBlock:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)_getOperationMaskFromDelegate
{
  delegate = [(_UIInternalDraggingSessionSource *)self delegate];
  self->_withinAppSourceOperationMask = [delegate draggingSession:self sourceOperationMaskForDraggingWithinApp:1];

  delegate2 = [(_UIInternalDraggingSessionSource *)self delegate];
  self->_outsideAppSourceOperationMask = [delegate2 draggingSession:self sourceOperationMaskForDraggingWithinApp:0];

  prefersFullSizePreview = [(_UIInternalDraggingSessionSource *)self prefersFullSizePreview];
  druidConnection = [(_UIInternalDraggingSessionSource *)self druidConnection];
  [druidConnection takeInsideAppSourceOperationMask:self->_withinAppSourceOperationMask outsideAppSourceOperationMask:self->_outsideAppSourceOperationMask prefersFullSizePreview:prefersFullSizePreview];
}

- (void)itemsBecameDirty:(id)dirty
{
  dirtyCopy = dirty;
  if ([dirtyCopy count] && -[_UIInternalDraggingSessionSource state](self, "state") == 2)
  {
    druidConnection = [(_UIInternalDraggingSessionSource *)self druidConnection];
    [druidConnection dirtyItems:dirtyCopy];
  }
}

- (void)updateCentroidFromDragEvent
{
  if ([(_UIInternalDraggingSessionSource *)self state]== 2)
  {
    dragEvent = [(_UIInternalDraggingSessionSource *)self dragEvent];

    if (dragEvent)
    {
      dragEvent2 = [(_UIInternalDraggingSessionSource *)self dragEvent];
      [dragEvent2 locationInView:0];
      v6 = v5;
      v8 = v7;

      self->_centroid.x = v6;
      self->_centroid.y = v8;
      self->_centroid.z = 0.0;
      dragEvent3 = [(_UIInternalDraggingSessionSource *)self dragEvent];
      eventWindow = [dragEvent3 eventWindow];
      centroidWindow = self->_centroidWindow;
      self->_centroidWindow = eventWindow;
    }

    if ((CAPoint3DEqualToPoint() & 1) == 0)
    {
      [(_UIInternalDraggingSessionSource *)self _sendDidMove];
      v12 = *&self->_centroid.x;
      self->_lastNotifiedCentroid.z = self->_centroid.z;
      *&self->_lastNotifiedCentroid.x = v12;
    }
  }
}

- (void)dragDidExitApp
{
  if ([(_UIInternalDraggingSessionSource *)self state]== 2)
  {
    if (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_DraggingExitTimerDuration, @"DraggingExitTimerDuration", _UIInternalPreferenceUpdateDouble))
    {
      v3 = 0.2;
    }

    else
    {
      v3 = *&qword_1EA95E308;
    }

    objc_initWeak(&location, self);
    v4 = MEMORY[0x1E695DFF0];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50___UIInternalDraggingSessionSource_dragDidExitApp__block_invoke;
    v7[3] = &unk_1E70F4130;
    objc_copyWeak(&v8, &location);
    v5 = [v4 scheduledTimerWithTimeInterval:0 repeats:v7 block:v3];
    waitingToSendDidExitAppTimer = self->_waitingToSendDidExitAppTimer;
    self->_waitingToSendDidExitAppTimer = v5;

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)dragIsInsideApp
{
  [(NSTimer *)self->_waitingToSendDidExitAppTimer invalidate];
  waitingToSendDidExitAppTimer = self->_waitingToSendDidExitAppTimer;
  self->_waitingToSendDidExitAppTimer = 0;
}

- (void)addPublicItems:(id)items
{
  v24 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if ([(_UIInternalDraggingSessionSource *)self canAddItems])
  {
    v5 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    reverseObjectEnumerator = [itemsCopy reverseObjectEnumerator];
    v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        v10 = 0;
        do
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          [v5 addObject:*(*(&v19 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    if ([v5 count])
    {
      internalItems = [(_UIInternalDraggingSessionSource *)self internalItems];
      v12 = [internalItems count];
      [_UIKitDragAndDropStatistics incrementUIKitScalarValueBy:1 forKey:@"itemsAddedToDrag"];
      if (v12)
      {
        if (v12 == 1)
        {
          v13 = @"itemsAddedToSingleDrag";
        }

        else
        {
          v13 = @"itemsAddedToMultipleDrag";
        }

        [_UIKitDragAndDropStatistics incrementUIKitScalarValueBy:1 forKey:v13];
      }

      internalItems2 = [(_UIInternalDraggingSessionSource *)self internalItems];
      v15 = [internalItems2 arrayByAddingObjectsFromArray:v5];
      [(_UIInternalDraggingSessionSource *)self setInternalItems:v15];

      druidConnection = [(_UIInternalDraggingSessionSource *)self druidConnection];
      v17 = [druidConnection addItems:v5 withOldItemCollection:self->_pbItemCollection];
      pbItemCollection = self->_pbItemCollection;
      self->_pbItemCollection = v17;

      [(_UIInternalDraggingSessionSource *)self _sendWillAddItems:itemsCopy];
    }
  }
}

- (BOOL)_canHandOffCancelledItems:(id)items
{
  selfCopy = self;
  internalItems = [(_UIInternalDraggingSessionSource *)self internalItems];
  LOBYTE(selfCopy) = [_UIDragSetDownAnimation canAnimateItems:internalItems forSource:1 policyDriven:[(_UIInternalDraggingSessionSource *)selfCopy _routingPolicyHasSpecificTouchContextIDs]];

  return selfCopy;
}

- (void)_setupAnimationForCancelledItems:(id)items returningLayerContext:(id *)context
{
  itemsCopy = items;
  [(_UIInternalDraggingSessionSource *)self _sendWillEndWithOperation:0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91___UIInternalDraggingSessionSource__setupAnimationForCancelledItems_returningLayerContext___block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  if ([itemsCopy count])
  {
    v8 = [_UIDragSetDownAnimation alloc];
    internalItems = [(_UIInternalDraggingSessionSource *)self internalItems];
    v10 = [(_UIDragSetDownAnimation *)v8 initWithVisibleDroppedItems:itemsCopy items:internalItems forSource:1 policyDriven:[(_UIInternalDraggingSessionSource *)self _routingPolicyHasSpecificTouchContextIDs] completion:v7];
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

- (void)_handOffCancelledItems:(id)items completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  completionCopy = completion;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [itemsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        itemIndex = [v12 itemIndex];
        internalItems = [(_UIInternalDraggingSessionSource *)self internalItems];
        v15 = [internalItems count];

        if (itemIndex < v15)
        {
          internalItems2 = [(_UIInternalDraggingSessionSource *)self internalItems];
          v17 = [internalItems2 objectAtIndexedSubscript:itemIndex];

          [v17 _setVisibleDropItemSize:visibleDroppedItemSize(v12)];
          [v12 center];
          [v17 _setVisibleDropItemCenter:?];
        }
      }

      v9 = [itemsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  [(_UIDragSetDownAnimation *)self->_setDownAnimation addCompletion:completionCopy];
  [(_UIDragSetDownAnimation *)self->_setDownAnimation updateVisibleDroppedItems:itemsCopy];
  [(_UIDragSetDownAnimation *)self->_setDownAnimation begin];
}

- (void)_endWithOperation:(unint64_t)operation
{
  [(_UIInternalDraggingSessionSource *)self _sendWillEndWithOperation:?];
  [(_UIInternalDraggingSessionSource *)self _sendDidEndWithOperation:operation];
  objc_storeWeak(&self->_weakCentroidWindow, self->_centroidWindow);
  centroidWindow = self->_centroidWindow;
  self->_centroidWindow = 0;
}

- (void)_sendWillEndWithOperation:(unint64_t)operation
{
  if (!self->_sentWillEnd)
  {
    self->_sentWillEnd = 1;
    delegate = [(_UIInternalDraggingSessionSource *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(_UIInternalDraggingSessionSource *)self delegate];
      [delegate2 draggingSessionWillEnd:self withOperation:operation];
    }
  }
}

- (BOOL)shouldCancelOnAppDeactivation
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v4 = &_MergedGlobals_932;
    v5 = @"CancelOnDeactivationPad";
  }

  else
  {
    v4 = &unk_1ED48AD88;
    v5 = @"CancelOnDeactivationPhone";
  }

  return (*(v4 + 4) != 0) & ~_UIInternalPreferenceUsesDefault(v4, v5, _UIInternalPreferenceUpdateBool);
}

- (void)cancelDrag
{
  if ([(_UIInternalDraggingSessionSource *)self state]<= 2)
  {
    druidConnection = [(_UIInternalDraggingSessionSource *)self druidConnection];
    [druidConnection cancelDrag];
  }
}

- (BOOL)canAddItems
{
  if ([(_UIInternalDraggingSessionSource *)self state]== 2)
  {
    druidConnection = [(_UIInternalDraggingSessionSource *)self druidConnection];
    v4 = [druidConnection isCancelled] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_hostDidDeactivate
{
  self->_hostIsActive = 0;
  if ([(_UIInternalDraggingSessionSource *)self shouldCancelOnAppDeactivation])
  {

    [(_UIInternalDraggingSessionSource *)self cancelDrag];
  }
}

- (void)_sendWillBegin
{
  delegate = [(_UIInternalDraggingSessionSource *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(_UIInternalDraggingSessionSource *)self delegate];
    [delegate2 draggingSessionWillBegin:self];
  }
}

- (void)_sendHandedOffDragImage
{
  delegate = [(_UIInternalDraggingSessionSource *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(_UIInternalDraggingSessionSource *)self delegate];
    [delegate2 _draggingSessionHandedOffDragImage:self];
  }
}

- (void)_sendHandedOffDragImageForItem:(id)item
{
  itemCopy = item;
  delegate = [(_UIInternalDraggingSessionSource *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(_UIInternalDraggingSessionSource *)self delegate];
    [delegate2 _draggingSession:self handedOffDragImageForItem:itemCopy];
  }
}

- (void)_sendWillAddItems:(id)items
{
  itemsCopy = items;
  delegate = [(_UIInternalDraggingSessionSource *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(_UIInternalDraggingSessionSource *)self delegate];
    [delegate2 draggingSession:self willAddItems:itemsCopy];
  }
}

- (void)_sendDidEndWithOperation:(unint64_t)operation
{
  delegate = [(_UIInternalDraggingSessionSource *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(_UIInternalDraggingSessionSource *)self delegate];
    [delegate2 draggingSessionDidEnd:self withOperation:operation];
  }
}

- (void)_sendDidMove
{
  delegate = [(_UIInternalDraggingSessionSource *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(_UIInternalDraggingSessionSource *)self delegate];
    [delegate2 draggingSessionDidMove:self];
  }
}

- (void)_sendDataTransferFinished
{
  delegate = [(_UIInternalDraggingSessionSource *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(_UIInternalDraggingSessionSource *)self delegate];
    [delegate2 draggingSessionDidTransferItems:self];
  }
}

- (void)_updatedPresentation:(id)presentation
{
  presentationCopy = presentation;
  delegate = [(_UIInternalDraggingSessionSource *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(_UIInternalDraggingSessionSource *)self delegate];
    [delegate2 _draggingSession:self updatedPresentation:presentationCopy];
  }
}

- (_UIDraggingSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIDragEvent)dragEvent
{
  WeakRetained = objc_loadWeakRetained(&self->_dragEvent);

  return WeakRetained;
}

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
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