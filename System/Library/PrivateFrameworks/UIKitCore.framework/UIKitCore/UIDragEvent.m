@interface UIDragEvent
+ (BOOL)_isSessionIDValid:(unsigned int)a3;
+ (void)_invalidateSessionID:(unsigned int)a3;
- (BOOL)_isReadyForReset;
- (BOOL)_sendEventToGestureRecognizer:(id)a3;
- (CGPoint)locationInSceneReferenceSpace;
- (CGPoint)locationInView:(id)a3;
- (UIDragEvent)initWithDragSessionID:(unsigned int)a3 environment:(id)a4;
- (id)_allWindows;
- (id)_gestureRecognizersForWindow:(id)a3;
- (id)_updatingDropGestureRecognizers;
- (unsigned)_touchRoutingPolicyContextID;
- (void)_dragFailedWithCallback:(id)a3;
- (void)_ignoreGestureRecognizer:(id)a3;
- (void)_removeGestureRecognizer:(id)a3 fromComponents:(id)a4;
- (void)_removeGestureRecognizersSendingCancelledEvent:(id)a3;
- (void)_removeQueriedOwnerForDynamicGesturesIfNeeded:(id)a3;
- (void)_reset;
- (void)_sendIfNeeded;
- (void)_setHIDEvent:(__IOHIDEvent *)a3;
- (void)_setNeedsHitTestReset;
- (void)_updateFromCurrentSample;
- (void)_updateGesturesFromCurrentSample;
- (void)_wasDeliveredToGestureRecognizers;
- (void)dealloc;
@end

@implementation UIDragEvent

- (UIDragEvent)initWithDragSessionID:(unsigned int)a3 environment:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  if ([objc_opt_class() _isSessionIDValid:v4])
  {
    v27.receiver = self;
    v27.super_class = UIDragEvent;
    v7 = [(UIEvent *)&v27 _initWithEnvironment:v6];
    v8 = v7;
    if (v7)
    {
      v7[58] = v4;
      v9 = objc_opt_new();
      v10 = v8[19];
      v8[19] = v9;

      v11 = objc_opt_new();
      v12 = v8[20];
      v8[20] = v11;

      v13 = objc_opt_new();
      v14 = v8[21];
      v8[21] = v13;

      v15 = objc_opt_new();
      v16 = v8[22];
      v8[22] = v15;

      v17 = objc_opt_new();
      v18 = v8[23];
      v8[23] = v17;

      v19 = objc_opt_new();
      v20 = v8[24];
      v8[24] = v19;

      v21 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v22 = v8[25];
      v8[25] = v21;

      v23 = objc_opt_new();
      v24 = v8[26];
      v8[26] = v23;
    }

    self = v8;
    v25 = self;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)_gestureRecognizersForWindow:(id)a3
{
  v4 = objc_opt_new();
  [v4 unionSet:self->_beginningGestureRecognizers];
  [v4 unionSet:self->_updatingGestureRecognizers];
  [v4 unionSet:self->_exitingGestureRecognizers];
  [v4 unionSet:self->_endingGestureRecognizers];
  [v4 minusSet:self->_ignoredGestureRecognizers];

  return v4;
}

- (void)_setHIDEvent:(__IOHIDEvent *)a3
{
  v7.receiver = self;
  v7.super_class = UIDragEvent;
  [(UIEvent *)&v7 _setHIDEvent:?];
  if (a3)
  {
    v5 = [_UIDragEventSample sampleFromHIDEvent:a3];
    currentSample = self->_currentSample;
    self->_currentSample = v5;

    [(UIDragEvent *)self _updateFromCurrentSample];
  }
}

- (id)_allWindows
{
  v2 = [(_UIDragEventSample *)self->_currentSample window];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFD8] setWithObject:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CGPoint)locationInView:(id)a3
{
  currentSample = self->_currentSample;
  v5 = a3;
  [(_UIDragEventSample *)currentSample locationInWindow];
  v7 = v6;
  v9 = v8;
  v10 = [(_UIDragEventSample *)self->_currentSample window];
  [v10 convertPoint:v5 toView:{v7, v9}];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

- (CGPoint)locationInSceneReferenceSpace
{
  [(_UIDragEventSample *)self->_currentSample locationInWindow];
  v4 = v3;
  v6 = v5;
  v7 = [(_UIDragEventSample *)self->_currentSample window];
  [v7 _convertPointToSceneReferenceSpace:{v4, v6}];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (BOOL)_sendEventToGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = 168;
  if ([(NSMutableSet *)self->_exitingGestureRecognizers containsObject:v4])
  {
    [v4 _componentsCancelled:0 withEvent:self];
  }

  else
  {
    if ([(NSMutableSet *)self->_updatingGestureRecognizers containsObject:v4])
    {
      [v4 _componentsChanged:0 withEvent:self];
      goto LABEL_8;
    }

    if ([(NSMutableSet *)self->_beginningGestureRecognizers containsObject:v4])
    {
      [v4 _componentsBegan:0 withEvent:self];
      [(NSMutableSet *)self->_beginningGestureRecognizers removeObject:v4];
      [(NSMutableSet *)self->_updatingGestureRecognizers addObject:v4];
      goto LABEL_8;
    }

    v5 = 176;
    if (![(NSMutableSet *)self->_endingGestureRecognizers containsObject:v4])
    {
      v6 = 0;
      goto LABEL_9;
    }

    [v4 _componentsEnded:0 withEvent:self];
  }

  [*(&self->super.super.isa + v5) removeObject:v4];
LABEL_8:
  v6 = 1;
LABEL_9:

  return v6;
}

- (void)_removeGestureRecognizer:(id)a3 fromComponents:(id)a4
{
  beginningGestureRecognizers = self->_beginningGestureRecognizers;
  v6 = a3;
  [(NSMutableSet *)beginningGestureRecognizers removeObject:v6];
  [(NSMutableSet *)self->_updatingGestureRecognizers removeObject:v6];
}

- (void)_ignoreGestureRecognizer:(id)a3
{
  v6 = a3;
  v4 = [(UIDragEvent *)self _gestureRecognizersForWindow:0];
  v5 = [v4 containsObject:v6];

  if (v5)
  {
    [(NSMutableSet *)self->_ignoredGestureRecognizers addObject:v6];
  }
}

- (void)_removeGestureRecognizersSendingCancelledEvent:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
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

        [(UIDragEvent *)self _ignoreGestureRecognizer:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_removeQueriedOwnerForDynamicGesturesIfNeeded:(id)a3
{
  v4 = a3;
  if ([(NSHashTable *)self->_ownersQueriedForDynamicGestures containsObject:?])
  {
    [(NSHashTable *)self->_ownersQueriedForDynamicGestures removeObject:v4];
  }
}

- (void)_updateFromCurrentSample
{
  [(_UIDragEventSample *)self->_currentSample isDragEnd];
  if (([(_UIDragEventSample *)self->_currentSample isApplicationEnter]|| [(_UIDragEventSample *)self->_currentSample isApplicationWithin]|| [(_UIDragEventSample *)self->_currentSample isPolicyDriven]) && !self->_dragFailed)
  {
    [(_UIDragEventSample *)self->_currentSample isApplicationEnter];
    v3 = [(_UIDragEventSample *)self->_currentSample window];
    v4 = [v3 screen];
    v5 = [v4 _dragManager];

    if ([v5 hasPendingSessionRequests])
    {
      objc_initWeak(&location, self);
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __39__UIDragEvent__updateFromCurrentSample__block_invoke;
      v15 = &unk_1E70F5A28;
      objc_copyWeak(&v16, &location);
      [v5 performAfterCompletingPendingSessionRequests:&v12];
      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    else
    {
      if (!self->_sessionSource)
      {
        v6 = [v5 sessionSourceWithIdentifier:{-[UIDragEvent dragSessionID](self, "dragSessionID")}];
        sessionSource = self->_sessionSource;
        self->_sessionSource = v6;

        [(_UIInternalDraggingSessionSource *)self->_sessionSource setDragEvent:self];
      }

      if (!self->_sessionDestination)
      {
        v8 = [v5 dragDestinationWithEvent:self];
        sessionDestination = self->_sessionDestination;
        self->_sessionDestination = v8;
      }
    }
  }

  [(_UIInternalDraggingSessionSource *)self->_sessionSource setDragEvent:self, v12, v13, v14, v15];
  [(_UIInternalDraggingSessionSource *)self->_sessionSource updateCentroidFromDragEvent];
  v10 = [(_UIDragEventSample *)self->_currentSample isApplicationExit];
  v11 = self->_sessionSource;
  if (v10)
  {
    [(_UIInternalDraggingSessionSource *)v11 dragDidExitApp];
    [(_UIInternalDraggingSessionDestination *)self->_sessionDestination dragDidExitApp];
  }

  else
  {
    [(_UIInternalDraggingSessionSource *)v11 dragIsInsideApp];
  }

  if ([(UIDragEvent *)self _shouldSendEvent])
  {
    [(_UIInternalDraggingSessionDestination *)self->_sessionDestination updateCentroidFromDragEvent];
    [(UIDragEvent *)self _updateGesturesFromCurrentSample];
  }
}

void __39__UIDragEvent__updateFromCurrentSample__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateFromCurrentSample];
}

- (void)_sendIfNeeded
{
  if (![(_UIDragEventSample *)self->_currentSample hasBeenDelivered])
  {
    if ([(_UIDragEventSample *)self->_currentSample isDragEnd])
    {
      v3 = self->_currentSample;
      v4 = v3;
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
      v14 = 0u;
      if (v3)
      {
        [(_UIDragEventSample *)v3 sampleFlags];
      }

      BYTE4(v17) = 0;
      v12[0] = v14;
      v12[1] = v15;
      v12[2] = v16;
      v13 = v17;
      v5 = [(_UIDragEventSample *)v4 copyWithSampleFlags:v12];
      currentSample = self->_currentSample;
      self->_currentSample = v5;
      v7 = v5;

      [(UIDragEvent *)self _updateFromCurrentSample];
      v8 = [UIApp _gestureEnvironment];
      [(UIGestureEnvironment *)v8 _updateForEvent:0 window:?];

      v9 = self->_currentSample;
      self->_currentSample = v4;
      v10 = v4;
    }

    [(UIDragEvent *)self _updateFromCurrentSample];
    v11 = [UIApp _gestureEnvironment];
    [(UIGestureEnvironment *)v11 _updateForEvent:0 window:?];
  }
}

- (void)_updateGesturesFromCurrentSample
{
  v82 = *MEMORY[0x1E69E9840];
  [(_UIDragEventSample *)self->_currentSample setHasBeenDelivered:1];
  objc_storeStrong(&self->_previousEventView, self->_eventView);
  if (self->_needsHitTestReset)
  {
    v3 = 0;
    self->_needsHitTestReset = 0;
  }

  else
  {
    v3 = [(_UIDragEventSample *)self->_currentSample hitTestWithEvent:self];
  }

  eventView = self->_eventView;
  self->_eventView = v3;

  if ([(_UIDragEventSample *)self->_currentSample isApplicationExit]|| self->_dragFailed)
  {
    exitingGestureRecognizers = self->_exitingGestureRecognizers;
LABEL_7:
    [(NSMutableSet *)exitingGestureRecognizers unionSet:self->_updatingGestureRecognizers];
    updatingGestureRecognizers = self->_updatingGestureRecognizers;

    [(NSMutableSet *)updatingGestureRecognizers removeAllObjects];
    return;
  }

  if ([(_UIDragEventSample *)self->_currentSample isDragEnd])
  {
    exitingGestureRecognizers = self->_endingGestureRecognizers;
    goto LABEL_7;
  }

  if (self->_eventView == self->_previousEventView)
  {
    v54 = [(UIDragEvent *)self _updatingDropGestureRecognizers];
    if ([v54 count])
    {
      v43 = v54;
    }

    else
    {
      v46 = [(_UIDragEventSample *)self->_currentSample isPolicyDriven];

      if (v46)
      {
        return;
      }

      v55 = objc_opt_new();
      [v55 setPrefersFullSizePreview:1];
      if ([(_UIInternalDraggingSessionSource *)self->_sessionSource dynamicallyUpdatesPrefersFullSizePreviews])
      {
        [v55 setPrefersFullSizePreview:{-[_UIInternalDraggingSessionSource prefersFullSizePreview](self->_sessionSource, "prefersFullSizePreview")}];
      }

      [(_UIInternalDraggingSessionDestination *)self->_sessionDestination takePotentialDrop:v55];
      v43 = v55;
    }
  }

  else
  {
    [(NSMutableSet *)self->_exitingGestureRecognizers removeAllObjects];
    v52 = objc_opt_new();
    v53 = self;
    v7 = self->_eventView;
    v8 = &OBJC_IVAR____UITileLayer_maskPath;
    if (v7)
    {
      while (1)
      {
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v9 = [(UIView *)v7 gestureRecognizers];
        v10 = [v9 countByEnumeratingWithState:&v74 objects:v81 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v75;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v75 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v74 + 1) + 8 * i);
              if (v14)
              {
                if ((v14[13] & 0x20) != 0)
                {
                  if ([*(*(&v74 + 1) + 8 * i) isEnabled])
                  {
                    if ([v14 state] <= 2)
                    {
                      [v52 addObject:v14];
                      if (([*(&v53->super.super.isa + v8[587]) containsObject:v14] & 1) == 0 && (-[NSMutableSet containsObject:](v53->_ignoredGestureRecognizers, "containsObject:", v14) & 1) == 0 && -[UIGestureRecognizer _internalShouldReceiveEvent:](v14, v53))
                      {
                        [(NSMutableSet *)v53->_beginningGestureRecognizers addObject:v14];
                      }
                    }
                  }
                }
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v74 objects:v81 count:16];
          }

          while (v11);
        }

        if (!_IsKindOfUIView(v7))
        {
          goto LABEL_50;
        }

        v15 = v7;
        if (![(NSHashTable *)v53->_ownersQueriedForDynamicGestures containsObject:v15])
        {
          break;
        }

LABEL_49:

LABEL_50:
        v7 = [(UIView *)v7 _parentGestureRecognizerContainer];
        if (!v7)
        {
          goto LABEL_51;
        }
      }

      [(NSHashTable *)v53->_ownersQueriedForDynamicGestures addObject:v15];
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v69 = __47__UIDragEvent__updateGesturesFromCurrentSample__block_invoke;
      v70 = &unk_1E7128A10;
      v71 = v53;
      v73 = v15;
      v72 = v52;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v16 = [(UIView *)v15 interactions];
      v17 = [v16 countByEnumeratingWithState:&v64 objects:v80 count:16];
      if (v17)
      {
        v18 = v17;
        v50 = v15;
        v19 = 0;
        v20 = *v65;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v65 != v20)
            {
              objc_enumerationMutation(v16);
            }

            v22 = *(*(&v64 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              objc_opt_class();
              v19 |= objc_opt_isKindOfClass();
              v23 = [v22 _dynamicGestureRecognizersForEvent:v53];
              v69(v68, v23);
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v64 objects:v80 count:16];
        }

        while (v18);

        v8 = &OBJC_IVAR____UITileLayer_maskPath;
        v15 = v50;
        if (v19)
        {
          goto LABEL_48;
        }
      }

      else
      {
      }

      v24 = v15;
      v25 = _UIDragEventPasteConfigurationForOwner(v24);
      if (v25)
      {
        v26 = [(UIView *)v24 _dynamicDropInteraction];
        if (!v26)
        {
          v26 = [[UIDropInteraction alloc] _initWithPasteConfiguration:v25];
          [(UIView *)v24 _setDynamicDropInteraction:v26];
          [v26 _setWantsDefaultVisualBehavior:0];
          [v26 setAllowsSimultaneousDropSessions:1];
          [v26 didMoveToOwner:v24];
        }

        [(NSMutableSet *)v53->_dynamicInteractions addObject:v26];
        v27 = [v26 _dynamicGestureRecognizersForEvent:v53];
        v69(v68, v27);

        v8 = &OBJC_IVAR____UITileLayer_maskPath;
      }

LABEL_48:
      goto LABEL_49;
    }

LABEL_51:
    v28 = v53;
    if ([(NSMutableSet *)v53->_beginningGestureRecognizers count])
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      obj = v53->_beginningGestureRecognizers;
      v29 = v52;
      v49 = [(NSMutableSet *)obj countByEnumeratingWithState:&v60 objects:v79 count:16];
      v30 = 0;
      if (v49)
      {
        v48 = *v61;
        do
        {
          v31 = 0;
          do
          {
            if (*v61 != v48)
            {
              objc_enumerationMutation(obj);
            }

            v51 = v31;
            v32 = *(*(&v60 + 1) + 8 * v31);
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            v33 = *(&v28->super.super.isa + v8[587]);
            v34 = [v33 countByEnumeratingWithState:&v56 objects:v78 count:16];
            if (v34)
            {
              v35 = v34;
              v36 = *v57;
              do
              {
                for (k = 0; k != v35; ++k)
                {
                  if (*v57 != v36)
                  {
                    objc_enumerationMutation(v33);
                  }

                  v38 = *(*(&v56 + 1) + 8 * k);
                  if ([v29 containsObject:v38])
                  {
                    if (([(NSMutableSet *)v28->_ignoredGestureRecognizers containsObject:v38]& 1) != 0)
                    {
                      continue;
                    }

                    if (![v38 canBePreventedByGestureRecognizer:v32])
                    {
                      continue;
                    }

                    v39 = [v32 container];
                    v40 = [v38 container];
                    v41 = isDescendantOfContainer(v39, v40, 0);

                    v29 = v52;
                    v28 = v53;
                    if (!v41)
                    {
                      continue;
                    }
                  }

                  if (!v30)
                  {
                    v30 = objc_opt_new();
                  }

                  [v30 addObject:v38];
                }

                v35 = [v33 countByEnumeratingWithState:&v56 objects:v78 count:16];
              }

              while (v35);
            }

            v31 = v51 + 1;
            v8 = &OBJC_IVAR____UITileLayer_maskPath;
          }

          while (v51 + 1 != v49);
          v49 = [(NSMutableSet *)obj countByEnumeratingWithState:&v60 objects:v79 count:16];
        }

        while (v49);
      }

      [*(&v28->super.super.isa + v8[587]) minusSet:v30];
      [(NSMutableSet *)v28->_exitingGestureRecognizers unionSet:v30];

      v42 = v29;
    }

    else
    {
      v44 = v8[587];
      [(NSMutableSet *)v53->_exitingGestureRecognizers unionSet:*(&v53->super.super.isa + v44)];
      v42 = v52;
      [(NSMutableSet *)v53->_exitingGestureRecognizers minusSet:v52];
      [*(&v53->super.super.isa + v44) minusSet:v53->_exitingGestureRecognizers];
    }

    v45 = [MEMORY[0x1E695DFA8] setWithSet:v28->_ignoredGestureRecognizers];
    [v45 minusSet:v42];
    [(NSMutableSet *)v28->_ignoredGestureRecognizers minusSet:v45];
  }
}

void __47__UIDragEvent__updateGesturesFromCurrentSample__block_invoke(void **a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (v8)
        {
          *(v8 + 8) |= 0x800000000000uLL;
        }

        [*(a1[4] + 24) addObject:v8];
        [a1[6] addGestureRecognizer:v8];
        [a1[5] addObject:v8];
        if ([(UIGestureRecognizer *)v8 _internalShouldReceiveEvent:?])
        {
          [*(a1[4] + 19) addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (id)_updatingDropGestureRecognizers
{
  updatingGestureRecognizers = self->_updatingGestureRecognizers;
  v3 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_664];
  v4 = [(NSMutableSet *)updatingGestureRecognizers filteredSetUsingPredicate:v3];

  return v4;
}

uint64_t __46__UIDragEvent__updatingDropGestureRecognizers__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_isReadyForReset
{
  if ([(_UIDragEventSample *)self->_currentSample isApplicationExit]|| [(_UIDragEventSample *)self->_currentSample isDragEnd])
  {
    return 1;
  }

  if (self->_dragFailed)
  {
    return self->_dragFailedCallback == 0;
  }

  return 0;
}

- (void)_wasDeliveredToGestureRecognizers
{
  v30 = *MEMORY[0x1E69E9840];
  if ([(_UIDragEventSample *)self->_currentSample isDragEnd])
  {
    if ([(_UIInternalDraggingSessionDestination *)self->_sessionDestination didRequestDropToBePerformed])
    {
      [(_UIInternalDraggingSessionDestination *)self->_sessionDestination sawDragEndEvent];
      [objc_opt_class() _invalidateSessionID:{-[UIDragEvent dragSessionID](self, "dragSessionID")}];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      WeakRetained = objc_loadWeakRetained(&self->super._eventEnvironment);
      v4 = [(UIEventEnvironment *)WeakRetained _dragEvents];

      v5 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v25;
        do
        {
          v8 = 0;
          do
          {
            if (*v25 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v24 + 1) + 8 * v8);
            if (v9 != self)
            {
              v10 = [*(*(&v24 + 1) + 8 * v8) dragSessionID];
              if (v10 == [(UIDragEvent *)self dragSessionID])
              {
                [(UIDragEvent *)v9 _ignoreDragEnd];
              }
            }

            ++v8;
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v6);
      }

LABEL_13:

      goto LABEL_28;
    }

    if (!self->_ignoreDragEnd && (![(_UIDragEventSample *)self->_currentSample isPolicyDriven]|| ![(_UIDragEventSample *)self->_currentSample isApplicationExit]))
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v11 = objc_loadWeakRetained(&self->super._eventEnvironment);
      v4 = [(UIEventEnvironment *)v11 _dragEvents];

      v12 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v21;
LABEL_19:
        v15 = 0;
        while (1)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v4);
          }

          v16 = *(*(&v20 + 1) + 8 * v15);
          if (v16 != self)
          {
            v17 = [*(*(&v20 + 1) + 8 * v15) dragSessionID];
            if (v17 == [(UIDragEvent *)self dragSessionID]&& ![(_UIDragEventSample *)v16->_currentSample isDragEnd])
            {
              goto LABEL_13;
            }
          }

          if (v13 == ++v15)
          {
            v13 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v13)
            {
              goto LABEL_19;
            }

            break;
          }
        }
      }

      [(_UIInternalDraggingSessionDestination *)self->_sessionDestination sawDragEndEvent];
      [objc_opt_class() _invalidateSessionID:{-[UIDragEvent dragSessionID](self, "dragSessionID")}];
    }
  }

LABEL_28:
  if (self->_dragFailed)
  {
    dragFailedCallback = self->_dragFailedCallback;
    if (dragFailedCallback)
    {
      dragFailedCallback[2]();
      v19 = self->_dragFailedCallback;
      self->_dragFailedCallback = 0;
    }
  }
}

- (void)_dragFailedWithCallback:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UIDragEvent.m" lineNumber:859 description:{@"Invalid parameter not satisfying: %@", @"callback != nil"}];
  }

  self->_dragFailed = 1;
  v6 = _Block_copy(v5);
  dragFailedCallback = self->_dragFailedCallback;
  self->_dragFailedCallback = v6;

  [objc_opt_class() _invalidateSessionID:{-[UIDragEvent dragSessionID](self, "dragSessionID")}];
  [(_UIDragEventSample *)self->_currentSample setHasBeenDelivered:0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__UIDragEvent__dragFailedWithCallback___block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __39__UIDragEvent__dragFailedWithCallback___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _sendIfNeeded];
  if ([*(a1 + 32) _isReadyForReset])
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      WeakRetained = objc_loadWeakRetained((v2 + 104));
      v4 = *(a1 + 32);
    }

    else
    {
      v4 = 0;
      WeakRetained = 0;
    }

    v5 = WeakRetained;
    [(UIEventEnvironment *)WeakRetained _removeDragEvent:v4];
  }
}

- (unsigned)_touchRoutingPolicyContextID
{
  v3 = [(_UIDragEventSample *)self->_currentSample windowServerHitTestContextID];
  if ([(_UIInternalDraggingSessionSource *)self->_sessionSource touchRoutingPolicyContainsContextIDToAlwaysSend:v3])
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (void)_invalidateSessionID:(unsigned int)a3
{
  if (a3)
  {
    v3 = _MergedGlobals_23_7[0];
    _MergedGlobals_23_7[_MergedGlobals_23_7[0] + 1] = a3;
    _MergedGlobals_23_7[0] = (v3 + 1) % 0xAu;
  }
}

+ (BOOL)_isSessionIDValid:(unsigned int)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = 1u;
  do
  {
    v4 = _MergedGlobals_23_7[v3];
    if (!v4)
    {
      break;
    }

    if (v4 == a3)
    {
      return 0;
    }

    ++v3;
  }

  while (v3 != 11);
  return 1;
}

- (void)_setNeedsHitTestReset
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(UIDragEvent *)self _updatingDropGestureRecognizers];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (([(UIGestureRecognizer *)*(*(&v8 + 1) + 8 * v7) _internalShouldReceiveEvent:?]& 1) != 0)
        {

          return;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  self->_needsHitTestReset = 1;
}

- (void)dealloc
{
  [(UIDragEvent *)self _reset];
  v3.receiver = self;
  v3.super_class = UIDragEvent;
  [(UIEvent *)&v3 dealloc];
}

- (void)_reset
{
  v17 = *MEMORY[0x1E69E9840];
  previousEventView = self->_previousEventView;
  self->_previousEventView = 0;

  eventView = self->_eventView;
  self->_eventView = 0;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_dynamicGestureRecognizers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
        v11 = [v10 container];
        [v11 removeGestureRecognizer:v10];
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(NSMutableSet *)self->_dynamicGestureRecognizers removeAllObjects];
  [(NSHashTable *)self->_ownersQueriedForDynamicGestures removeAllObjects];
  [(NSMutableSet *)self->_dynamicInteractions removeAllObjects];
}

@end