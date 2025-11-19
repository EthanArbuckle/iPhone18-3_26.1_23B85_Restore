@interface _UIInternalDraggingSessionSource
- (BOOL)_canHandOffCancelledItems:(id)a3;
- (BOOL)_routingPolicyHasSpecificTouchContextIDs;
- (BOOL)canAddItems;
- (BOOL)dynamicallyUpdatesPrefersFullSizePreviews;
- (BOOL)prefersFullSizePreview;
- (BOOL)preventsSimultaneousDragFromView:(id)a3;
- (BOOL)shouldCancelOnAppDeactivation;
- (BOOL)touchRoutingPolicyContainsContextIDToAlwaysSend:(unsigned int)a3;
- (CAPoint3D)centroid;
- (CGPoint)draggingLocationInCoordinateSpace:(id)a3;
- (UIDragEvent)dragEvent;
- (UIView)sourceView;
- (UIWindow)weakCentroidWindow;
- (_UIDraggingSessionDelegate)delegate;
- (_UIInternalDraggingSessionSource)initWithDragManager:(id)a3 configuration:(id)a4;
- (void)_didBeginDrag;
- (void)_endWithOperation:(unint64_t)a3;
- (void)_getOperationMaskFromDelegate;
- (void)_handOffCancelledItems:(id)a3 completion:(id)a4;
- (void)_hostDidDeactivate;
- (void)_sendDataTransferFinished;
- (void)_sendDidEndWithOperation:(unint64_t)a3;
- (void)_sendDidMove;
- (void)_sendDragPreviewReplyWithIndexSet:(id)a3 dragPreviews:(id)a4 completion:(id)a5;
- (void)_sendHandedOffDragImage;
- (void)_sendHandedOffDragImageForItem:(id)a3;
- (void)_sendWillAddItems:(id)a3;
- (void)_sendWillBegin;
- (void)_sendWillEndWithOperation:(unint64_t)a3;
- (void)_setupAnimationForCancelledItems:(id)a3 returningLayerContext:(id *)a4;
- (void)_updatedPresentation:(id)a3;
- (void)addPublicItems:(id)a3;
- (void)beginDrag:(id)a3;
- (void)cancelDrag;
- (void)dragDidExitApp;
- (void)dragIsInsideApp;
- (void)enumerateItemsUsingBlock:(id)a3;
- (void)itemsBecameDirty:(id)a3;
- (void)setState:(int64_t)a3;
- (void)updateCentroidFromDragEvent;
@end

@implementation _UIInternalDraggingSessionSource

- (BOOL)touchRoutingPolicyContainsContextIDToAlwaysSend:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [(_UIDraggingImageSlotOwner *)self dragManager];
  v6 = [v5 screen];
  v7 = [v6 displayConfiguration];
  v8 = [v7 hardwareIdentifier];
  v9 = v8;
  v10 = _UIDraggingSystemEmbeddedDisplayIdentifier;
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = [(UIDraggingSessionConfiguration *)self->_configuration routingPolicy];
  v13 = [v12 contextIDsToAlwaysSendTouchesByDisplayIdentifier];
  v14 = [v13 objectForKey:v11];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  LOBYTE(v12) = [v14 containsObject:v15];

  return v12;
}

- (_UIInternalDraggingSessionSource)initWithDragManager:(id)a3 configuration:(id)a4
{
  v7 = a4;
  v24.receiver = self;
  v24.super_class = _UIInternalDraggingSessionSource;
  v8 = [(_UIDraggingImageSlotOwner *)&v24 initWithDragManager:a3];
  v9 = v8;
  if (v8)
  {
    v8->_state = 0;
    objc_storeStrong(&v8->_configuration, a4);
    v10 = [v7 items];
    v11 = [v10 copy];
    internalItems = v9->_internalItems;
    v9->_internalItems = v11;

    v9->_dataOwner = [v7 dataOwner];
    [_UIKitDragAndDropStatistics incrementUIKitScalarValueBy:1 forKey:@"dragStarted"];
    [_UIKitDragAndDropStatistics incrementUIKitScalarValueForKnownInternalAppsForKey:@"dragStartedFrom" bundleID:0];
    if (_UIApplicationIsExtension())
    {
      [_UIKitDragAndDropStatistics incrementUIKitScalarValueBy:1 forKey:@"dragStartedFromExtension"];
    }

    [_UIKitDragAndDropStatistics recordUIKitDragAndDropDistributionValue:@"itemsPickedUp" forKey:[(NSArray *)v9->_internalItems count]];
    _UIDragStatisticLogItemsInDragByType(v9->_internalItems, @"itemsPickedUpByType");
    v13 = [v7 sourceView];
    v14 = [v13 window];
    v9->_originatedInHostedWindow = [v14 _isHostedInAnotherProcess];

    if (v9->_originatedInHostedWindow)
    {
      v9->_hostIsActive = 1;
      v15 = [MEMORY[0x1E696AD88] defaultCenter];
      [v15 addObserver:v9 selector:sel__hostWillBecomeActive name:0x1EFBB4830 object:0];
      [v15 addObserver:v9 selector:sel__hostDidDeactivate name:0x1EFBB4850 object:0];
    }

    v16 = [v7 sourceView];
    v17 = [v16 window];
    centroidWindow = v9->_centroidWindow;
    v9->_centroidWindow = v17;

    [v7 initialCentroidInSourceWindow];
    v9->_centroid.x = v19;
    v9->_centroid.y = v20;
    v9->_centroid.z = v21;
    v9->_restrictedToSourceApp = [v7 sessionIsRestrictedToSourceApplication];
    z = v9->_centroid.z;
    *&v9->_lastNotifiedCentroid.x = *&v9->_centroid.x;
    v9->_lastNotifiedCentroid.z = z;
  }

  return v9;
}

- (void)setState:(int64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  state = self->_state;
  if (state != a3)
  {
    self->_state = a3;
    v6 = *(__UILogGetCategoryCachedImpl("Dragging", &setState____s_category) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = stringFromDraggingSessionSourceState(state);
      v9 = stringFromDraggingSessionSourceState(a3);
      v14 = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "_UIInternalDraggingSessionSource: Drag session state changing from %@ to %@", &v14, 0x16u);
    }

    if (a3 > 3)
    {
      switch(a3)
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
          v13 = [(_UIDraggingImageSlotOwner *)self dragManager];
          [v13 sessionSourceDidEnd:self];

          v11 = @"dropCancelled";
          v12 = @"dropCancelledFrom";
          break;
        case 6:
LABEL_11:
          [(_UIInternalDraggingSessionSource *)self _endWithOperation:0];
          v10 = [(_UIDraggingImageSlotOwner *)self dragManager];
          [v10 sessionSourceDidEnd:self];

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

    if (a3 == 2)
    {
      [(_UIInternalDraggingSessionSource *)self _sendWillBegin];
      [(_UIInternalDraggingSessionSource *)self _getOperationMaskFromDelegate];
      return;
    }

    if (a3 != 3)
    {
      return;
    }

    goto LABEL_11;
  }
}

- (BOOL)preventsSimultaneousDragFromView:(id)a3
{
  v4 = a3;
  v5 = [(_UIInternalDraggingSessionSource *)self sourceView];

  v6 = v5 == v4 && [(_UIInternalDraggingSessionSource *)self state]< 3;
  return v6;
}

- (BOOL)prefersFullSizePreview
{
  v3 = [(_UIInternalDraggingSessionSource *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(_UIInternalDraggingSessionSource *)self delegate];
  v6 = [v5 draggingSessionPrefersFullSizePreviews:self];

  return v6;
}

- (BOOL)dynamicallyUpdatesPrefersFullSizePreviews
{
  v3 = [(_UIInternalDraggingSessionSource *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(_UIInternalDraggingSessionSource *)self delegate];
  v6 = [v5 draggingSessionDynamicallyUpdatesPrefersFullSizePreviews:self];

  return v6;
}

- (void)enumerateItemsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(_UIInternalDraggingSessionSource *)self internalItems];
  v6 = enumerateDraggingItems(v5, v4);

  [(_UIInternalDraggingSessionSource *)self itemsBecameDirty:v6];
}

- (CGPoint)draggingLocationInCoordinateSpace:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"coordinateSpace must be non-nil"];
  }

  [(_UIInternalDraggingSessionSource *)self centroid];
  v6 = v5;
  v8 = v7;
  v9 = [(_UIInternalDraggingSessionSource *)self centroidWindow];
  if (v9 || ([(_UIInternalDraggingSessionSource *)self weakCentroidWindow], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
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

- (BOOL)_routingPolicyHasSpecificTouchContextIDs
{
  v3 = [(_UIDraggingImageSlotOwner *)self dragManager];
  v4 = [v3 screen];
  v5 = [v4 displayConfiguration];
  v6 = [v5 hardwareIdentifier];
  v7 = v6;
  v8 = _UIDraggingSystemEmbeddedDisplayIdentifier;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = [(UIDraggingSessionConfiguration *)self->_configuration routingPolicy];
  v11 = [v10 contextIDsToAlwaysSendTouchesByDisplayIdentifier];
  v12 = [v11 objectForKey:v9];

  LOBYTE(v10) = [v12 count] != 0;
  return v10;
}

- (void)beginDrag:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = dyld_program_sdk_at_least();
  v7 = [(_UIInternalDraggingSessionSource *)self state];
  if (v6)
  {
    if (!v7)
    {
      goto LABEL_5;
    }

    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UIDragging.m" lineNumber:829 description:@"can't begin a drag session from state %d", [(_UIInternalDraggingSessionSource *)self state]];
    goto LABEL_12;
  }

  if (v7)
  {
    v15 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1EA9683A8) + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v8 = v15;
      *buf = 67109120;
      v20 = [(_UIInternalDraggingSessionSource *)self state];
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "can't begin a drag session from state %d", buf, 8u);
LABEL_12:
    }
  }

LABEL_5:
  v9 = dyld_program_sdk_at_least();
  v10 = [(_UIInternalDraggingSessionSource *)self druidConnection];

  if (v9)
  {
    if (v10)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"UIDragging.m" lineNumber:830 description:@"shouldn't have a druid connection yet"];
    }
  }

  else if (v10)
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
  v18 = v5;
  v14 = v5;
  [(_UIDruidSourceConnection *)v12 beginDragWithConfiguration:configuration completion:v17];
}

- (void)_sendDragPreviewReplyWithIndexSet:(id)a3 dragPreviews:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = UIApp;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __94___UIInternalDraggingSessionSource__sendDragPreviewReplyWithIndexSet_dragPreviews_completion___block_invoke;
  v15[3] = &unk_1E7100388;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v10;
  v14 = v8;
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
  v3 = [(_UIInternalDraggingSessionSource *)self druidConnection];
  [v3 setDragPreviewProviderBlock:v19];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __49___UIInternalDraggingSessionSource__didBeginDrag__block_invoke_2;
  v17[3] = &unk_1E71065F8;
  objc_copyWeak(&v18, &location);
  v4 = [(_UIInternalDraggingSessionSource *)self druidConnection];
  [v4 setUpdatedPresentationBlock:v17];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49___UIInternalDraggingSessionSource__didBeginDrag__block_invoke_3;
  v15[3] = &unk_1E7106620;
  objc_copyWeak(&v16, &location);
  v5 = [(_UIInternalDraggingSessionSource *)self druidConnection];
  [v5 setCanHandOffCancelledItemsBlock:v15];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49___UIInternalDraggingSessionSource__didBeginDrag__block_invoke_4;
  v13[3] = &unk_1E7106648;
  objc_copyWeak(&v14, &location);
  v6 = [(_UIInternalDraggingSessionSource *)self druidConnection];
  [v6 setHandOffCancelledItemsBlock:v13];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49___UIInternalDraggingSessionSource__didBeginDrag__block_invoke_5;
  v11[3] = &unk_1E7106670;
  objc_copyWeak(&v12, &location);
  v7 = [(_UIInternalDraggingSessionSource *)self druidConnection];
  [v7 setDragCompletionBlock:v11];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49___UIInternalDraggingSessionSource__didBeginDrag__block_invoke_6;
  v9[3] = &unk_1E70F5A28;
  objc_copyWeak(&v10, &location);
  v8 = [(_UIInternalDraggingSessionSource *)self druidConnection];
  [v8 setDataTransferFinishedBlock:v9];

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
  v3 = [(_UIInternalDraggingSessionSource *)self delegate];
  self->_withinAppSourceOperationMask = [v3 draggingSession:self sourceOperationMaskForDraggingWithinApp:1];

  v4 = [(_UIInternalDraggingSessionSource *)self delegate];
  self->_outsideAppSourceOperationMask = [v4 draggingSession:self sourceOperationMaskForDraggingWithinApp:0];

  v5 = [(_UIInternalDraggingSessionSource *)self prefersFullSizePreview];
  v6 = [(_UIInternalDraggingSessionSource *)self druidConnection];
  [v6 takeInsideAppSourceOperationMask:self->_withinAppSourceOperationMask outsideAppSourceOperationMask:self->_outsideAppSourceOperationMask prefersFullSizePreview:v5];
}

- (void)itemsBecameDirty:(id)a3
{
  v5 = a3;
  if ([v5 count] && -[_UIInternalDraggingSessionSource state](self, "state") == 2)
  {
    v4 = [(_UIInternalDraggingSessionSource *)self druidConnection];
    [v4 dirtyItems:v5];
  }
}

- (void)updateCentroidFromDragEvent
{
  if ([(_UIInternalDraggingSessionSource *)self state]== 2)
  {
    v3 = [(_UIInternalDraggingSessionSource *)self dragEvent];

    if (v3)
    {
      v4 = [(_UIInternalDraggingSessionSource *)self dragEvent];
      [v4 locationInView:0];
      v6 = v5;
      v8 = v7;

      self->_centroid.x = v6;
      self->_centroid.y = v8;
      self->_centroid.z = 0.0;
      v9 = [(_UIInternalDraggingSessionSource *)self dragEvent];
      v10 = [v9 eventWindow];
      centroidWindow = self->_centroidWindow;
      self->_centroidWindow = v10;
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

- (void)addPublicItems:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_UIInternalDraggingSessionSource *)self canAddItems])
  {
    v5 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = [v4 reverseObjectEnumerator];
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(v6);
          }

          [v5 addObject:*(*(&v19 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    if ([v5 count])
    {
      v11 = [(_UIInternalDraggingSessionSource *)self internalItems];
      v12 = [v11 count];
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

      v14 = [(_UIInternalDraggingSessionSource *)self internalItems];
      v15 = [v14 arrayByAddingObjectsFromArray:v5];
      [(_UIInternalDraggingSessionSource *)self setInternalItems:v15];

      v16 = [(_UIInternalDraggingSessionSource *)self druidConnection];
      v17 = [v16 addItems:v5 withOldItemCollection:self->_pbItemCollection];
      pbItemCollection = self->_pbItemCollection;
      self->_pbItemCollection = v17;

      [(_UIInternalDraggingSessionSource *)self _sendWillAddItems:v4];
    }
  }
}

- (BOOL)_canHandOffCancelledItems:(id)a3
{
  v3 = self;
  v4 = [(_UIInternalDraggingSessionSource *)self internalItems];
  LOBYTE(v3) = [_UIDragSetDownAnimation canAnimateItems:v4 forSource:1 policyDriven:[(_UIInternalDraggingSessionSource *)v3 _routingPolicyHasSpecificTouchContextIDs]];

  return v3;
}

- (void)_setupAnimationForCancelledItems:(id)a3 returningLayerContext:(id *)a4
{
  v6 = a3;
  [(_UIInternalDraggingSessionSource *)self _sendWillEndWithOperation:0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91___UIInternalDraggingSessionSource__setupAnimationForCancelledItems_returningLayerContext___block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  if ([v6 count])
  {
    v8 = [_UIDragSetDownAnimation alloc];
    v9 = [(_UIInternalDraggingSessionSource *)self internalItems];
    v10 = [(_UIDragSetDownAnimation *)v8 initWithVisibleDroppedItems:v6 items:v9 forSource:1 policyDriven:[(_UIInternalDraggingSessionSource *)self _routingPolicyHasSpecificTouchContextIDs] completion:v7];
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

- (void)_handOffCancelledItems:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 itemIndex];
        v14 = [(_UIInternalDraggingSessionSource *)self internalItems];
        v15 = [v14 count];

        if (v13 < v15)
        {
          v16 = [(_UIInternalDraggingSessionSource *)self internalItems];
          v17 = [v16 objectAtIndexedSubscript:v13];

          [v17 _setVisibleDropItemSize:visibleDroppedItemSize(v12)];
          [v12 center];
          [v17 _setVisibleDropItemCenter:?];
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  [(_UIDragSetDownAnimation *)self->_setDownAnimation addCompletion:v7];
  [(_UIDragSetDownAnimation *)self->_setDownAnimation updateVisibleDroppedItems:v6];
  [(_UIDragSetDownAnimation *)self->_setDownAnimation begin];
}

- (void)_endWithOperation:(unint64_t)a3
{
  [(_UIInternalDraggingSessionSource *)self _sendWillEndWithOperation:?];
  [(_UIInternalDraggingSessionSource *)self _sendDidEndWithOperation:a3];
  objc_storeWeak(&self->_weakCentroidWindow, self->_centroidWindow);
  centroidWindow = self->_centroidWindow;
  self->_centroidWindow = 0;
}

- (void)_sendWillEndWithOperation:(unint64_t)a3
{
  if (!self->_sentWillEnd)
  {
    self->_sentWillEnd = 1;
    v5 = [(_UIInternalDraggingSessionSource *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(_UIInternalDraggingSessionSource *)self delegate];
      [v7 draggingSessionWillEnd:self withOperation:a3];
    }
  }
}

- (BOOL)shouldCancelOnAppDeactivation
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
    v3 = [(_UIInternalDraggingSessionSource *)self druidConnection];
    [v3 cancelDrag];
  }
}

- (BOOL)canAddItems
{
  if ([(_UIInternalDraggingSessionSource *)self state]== 2)
  {
    v3 = [(_UIInternalDraggingSessionSource *)self druidConnection];
    v4 = [v3 isCancelled] ^ 1;
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
  v3 = [(_UIInternalDraggingSessionSource *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(_UIInternalDraggingSessionSource *)self delegate];
    [v5 draggingSessionWillBegin:self];
  }
}

- (void)_sendHandedOffDragImage
{
  v3 = [(_UIInternalDraggingSessionSource *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(_UIInternalDraggingSessionSource *)self delegate];
    [v5 _draggingSessionHandedOffDragImage:self];
  }
}

- (void)_sendHandedOffDragImageForItem:(id)a3
{
  v7 = a3;
  v4 = [(_UIInternalDraggingSessionSource *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(_UIInternalDraggingSessionSource *)self delegate];
    [v6 _draggingSession:self handedOffDragImageForItem:v7];
  }
}

- (void)_sendWillAddItems:(id)a3
{
  v7 = a3;
  v4 = [(_UIInternalDraggingSessionSource *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(_UIInternalDraggingSessionSource *)self delegate];
    [v6 draggingSession:self willAddItems:v7];
  }
}

- (void)_sendDidEndWithOperation:(unint64_t)a3
{
  v5 = [(_UIInternalDraggingSessionSource *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(_UIInternalDraggingSessionSource *)self delegate];
    [v7 draggingSessionDidEnd:self withOperation:a3];
  }
}

- (void)_sendDidMove
{
  v3 = [(_UIInternalDraggingSessionSource *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(_UIInternalDraggingSessionSource *)self delegate];
    [v5 draggingSessionDidMove:self];
  }
}

- (void)_sendDataTransferFinished
{
  v3 = [(_UIInternalDraggingSessionSource *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(_UIInternalDraggingSessionSource *)self delegate];
    [v5 draggingSessionDidTransferItems:self];
  }
}

- (void)_updatedPresentation:(id)a3
{
  v7 = a3;
  v4 = [(_UIInternalDraggingSessionSource *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(_UIInternalDraggingSessionSource *)self delegate];
    [v6 _draggingSession:self updatedPresentation:v7];
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