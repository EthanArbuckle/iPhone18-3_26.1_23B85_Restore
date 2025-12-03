@interface _UIHoverTouchDeliveryTable
- (NSSet)gestureRecognizers;
- (_UIHoverTouchDeliveryTable)initWithTouch:(id)touch;
- (int64_t)updateGestureRecognizerForDelivery:(id)delivery;
- (void)_cancelAllGestureRecognizers;
- (void)removeGestureRecognizer:(id)recognizer;
- (void)updateForEvent:(id)event forcingHitTest:(BOOL)test;
@end

@implementation _UIHoverTouchDeliveryTable

- (_UIHoverTouchDeliveryTable)initWithTouch:(id)touch
{
  touchCopy = touch;
  if (!touchCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIHoverEvent.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"touch"}];
  }

  v17.receiver = self;
  v17.super_class = _UIHoverTouchDeliveryTable;
  v7 = [(_UIHoverTouchDeliveryTable *)&v17 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_touch, touch);
    v9 = objc_opt_new();
    beginningGestureRecognizers = v8->_beginningGestureRecognizers;
    v8->_beginningGestureRecognizers = v9;

    v11 = objc_opt_new();
    updatingGestureRecognizers = v8->_updatingGestureRecognizers;
    v8->_updatingGestureRecognizers = v11;

    v13 = objc_opt_new();
    exitingGestureRecognizers = v8->_exitingGestureRecognizers;
    v8->_exitingGestureRecognizers = v13;
  }

  return v8;
}

- (int64_t)updateGestureRecognizerForDelivery:(id)delivery
{
  deliveryCopy = delivery;
  if ([(NSMutableSet *)self->_exitingGestureRecognizers containsObject:deliveryCopy])
  {
    [(NSMutableSet *)self->_exitingGestureRecognizers removeObject:deliveryCopy];
    v5 = 7;
  }

  else if (([(NSMutableSet *)self->_updatingGestureRecognizers containsObject:deliveryCopy]& 1) != 0)
  {
    v5 = 6;
  }

  else if ([(NSMutableSet *)self->_beginningGestureRecognizers containsObject:deliveryCopy])
  {
    [(NSMutableSet *)self->_beginningGestureRecognizers removeObject:deliveryCopy];
    [(NSMutableSet *)self->_updatingGestureRecognizers addObject:deliveryCopy];
    v5 = 5;
  }

  else
  {
    v5 = 2;
  }

  return v5;
}

- (void)removeGestureRecognizer:(id)recognizer
{
  beginningGestureRecognizers = self->_beginningGestureRecognizers;
  recognizerCopy = recognizer;
  [(NSMutableSet *)beginningGestureRecognizers removeObject:recognizerCopy];
  [(NSMutableSet *)self->_updatingGestureRecognizers removeObject:recognizerCopy];
  [(NSMutableSet *)self->_exitingGestureRecognizers removeObject:recognizerCopy];
}

- (void)_cancelAllGestureRecognizers
{
  gestureRecognizers = [(_UIHoverTouchDeliveryTable *)self gestureRecognizers];
  [(NSMutableSet *)self->_beginningGestureRecognizers removeAllObjects];
  [(NSMutableSet *)self->_updatingGestureRecognizers removeAllObjects];
  [(NSMutableSet *)self->_exitingGestureRecognizers removeAllObjects];
  v3 = UIApp;
  allObjects = [gestureRecognizers allObjects];
  [v3 _cancelGestureRecognizers:allObjects];
}

- (void)updateForEvent:(id)event forcingHitTest:(BOOL)test
{
  v109 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  _isSpringBoard = [UIApp _isSpringBoard];
  if (_UIEventHIDGetDescendantPointerEvent([eventCopy _hidEvent]))
  {
    v7 = BKSHIDEventGetPointerAttributes();
    v8 = [v7 pointerState] == 4;
  }

  else
  {
    v8 = 0;
  }

  if (_UIApplicationIsExtension())
  {
    MayVendViews = 1;
    if (!_isSpringBoard)
    {
LABEL_6:
      _constrainsHoverEventHitTesting = 0;
      goto LABEL_12;
    }
  }

  else
  {
    MayVendViews = _UIApplicationMayVendViews();
    if (!_isSpringBoard)
    {
      goto LABEL_6;
    }
  }

  window = [(UITouch *)self->_touch window];
  if (window)
  {
    [(UITouch *)self->_touch window];
    v13 = v12 = eventCopy;
    _constrainsHoverEventHitTesting = [v13 _constrainsHoverEventHitTesting];

    eventCopy = v12;
  }

  else
  {
    _constrainsHoverEventHitTesting = 0;
  }

LABEL_12:
  _responder = [(UITouch *)self->_touch _responder];
  phase = [(UITouch *)self->_touch phase];
  v15 = phase - 5;
  if ((phase - 5) > 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = [(UITouch *)self->_touch _rehitTestWithEvent:eventCopy constrainingToCurrentWindow:(v8 | _constrainsHoverEventHitTesting | MayVendViews) & 1];
  }

  v17 = _responder == v16 || v15 >= 2;
  v18 = 1;
  v60 = v16;
  if (v17 && !test)
  {
    v18 = ![(NSMutableSet *)self->_beginningGestureRecognizers count]&& [(NSMutableSet *)self->_updatingGestureRecognizers count]== 0;
    if (!v18 && v8 && ((_isSpringBoard ^ 1) & 1) == 0)
    {
      window2 = [(UITouch *)self->_touch window];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v21 = objc_opt_new();
        [v21 unionSet:self->_beginningGestureRecognizers];
        [v21 unionSet:self->_updatingGestureRecognizers];
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v22 = v21;
        v23 = [v22 countByEnumeratingWithState:&v99 objects:v108 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v100;
          while (2)
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v100 != v25)
              {
                objc_enumerationMutation(v22);
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v18 = 0;
                goto LABEL_40;
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v99 objects:v108 count:16];
            if (v24)
            {
              continue;
            }

            break;
          }

          v18 = 1;
        }

        else
        {
          v18 = 1;
        }

LABEL_40:
      }

      else
      {
        v18 = 0;
      }

      v16 = v60;
    }
  }

  if (phase == UITouchPhaseRegionExited)
  {
    [(NSMutableSet *)self->_exitingGestureRecognizers unionSet:self->_updatingGestureRecognizers];
    v16 = v60;
    [(NSMutableSet *)self->_updatingGestureRecognizers removeAllObjects];
  }

  else
  {
    v27 = !v18;
    if (v15 > 1)
    {
      v27 = 1;
    }

    selfCopy3 = self;
    if ((v27 & 1) == 0)
    {
      [(UITouch *)self->_touch _setResponder:v16];
      [(NSMutableSet *)self->_exitingGestureRecognizers removeAllObjects];
      v29 = objc_opt_new();
      _isPointerLocked = [eventCopy _isPointerLocked];
      v73 = v29;
      v62 = eventCopy;
      if (v16)
      {
        v64 = MEMORY[0x1E69E9820];
        _parentGestureRecognizerContainer = v60;
        do
        {
          aBlock[0] = v64;
          aBlock[1] = 3221225472;
          aBlock[2] = __60___UIHoverTouchDeliveryTable_updateForEvent_forcingHitTest___block_invoke;
          aBlock[3] = &unk_1E710B5D0;
          v98 = _isPointerLocked;
          v95 = v29;
          v96 = selfCopy3;
          v31 = eventCopy;
          v97 = v31;
          v32 = _Block_copy(aBlock);
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v93 = 0u;
          v68 = _parentGestureRecognizerContainer;
          gestureRecognizers = [_parentGestureRecognizerContainer gestureRecognizers];
          v34 = [gestureRecognizers countByEnumeratingWithState:&v90 objects:v107 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v91;
            do
            {
              for (j = 0; j != v35; ++j)
              {
                if (*v91 != v36)
                {
                  objc_enumerationMutation(gestureRecognizers);
                }

                v32[2](v32, *(*(&v90 + 1) + 8 * j));
              }

              v35 = [gestureRecognizers countByEnumeratingWithState:&v90 objects:v107 count:16];
            }

            while (v35);
          }

          if (_os_feature_enabled_impl())
          {
            v88 = 0u;
            v89 = 0u;
            v86 = 0u;
            v87 = 0u;
            obj = [(UIEvent *)v31 _eventObservers];
            v38 = [obj countByEnumeratingWithState:&v86 objects:v106 count:16];
            if (v38)
            {
              v39 = v38;
              v40 = *v87;
              do
              {
                for (k = 0; k != v39; ++k)
                {
                  if (*v87 != v40)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v42 = *(*(&v86 + 1) + 8 * k);
                  v82 = 0u;
                  v83 = 0u;
                  v84 = 0u;
                  v85 = 0u;
                  v43 = [v42 _gestureRecognizersForEvent:{v31, v60}];
                  v44 = [v43 countByEnumeratingWithState:&v82 objects:v105 count:16];
                  if (v44)
                  {
                    v45 = v44;
                    v46 = *v83;
                    do
                    {
                      for (m = 0; m != v45; ++m)
                      {
                        if (*v83 != v46)
                        {
                          objc_enumerationMutation(v43);
                        }

                        v32[2](v32, *(*(&v82 + 1) + 8 * m));
                      }

                      v45 = [v43 countByEnumeratingWithState:&v82 objects:v105 count:16];
                    }

                    while (v45);
                  }
                }

                v39 = [obj countByEnumeratingWithState:&v86 objects:v106 count:16];
              }

              while (v39);
            }

            eventCopy = v62;
            selfCopy3 = self;
            v29 = v73;
          }

          _parentGestureRecognizerContainer = [v68 _parentGestureRecognizerContainer];
        }

        while (_parentGestureRecognizerContainer);
      }

      if ([(NSMutableSet *)selfCopy3->_beginningGestureRecognizers count])
      {
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v65 = selfCopy3->_beginningGestureRecognizers;
        v69 = [(NSMutableSet *)v65 countByEnumeratingWithState:&v78 objects:v104 count:16];
        v48 = 0;
        if (v69)
        {
          v67 = *v79;
          do
          {
            v49 = 0;
            do
            {
              if (*v79 != v67)
              {
                objc_enumerationMutation(v65);
              }

              obja = v49;
              v50 = *(*(&v78 + 1) + 8 * v49);
              v74 = 0u;
              v75 = 0u;
              v76 = 0u;
              v77 = 0u;
              v51 = selfCopy3->_updatingGestureRecognizers;
              v52 = [(NSMutableSet *)v51 countByEnumeratingWithState:&v74 objects:v103 count:16];
              if (v52)
              {
                v53 = v52;
                v54 = *v75;
                do
                {
                  for (n = 0; n != v53; ++n)
                  {
                    if (*v75 != v54)
                    {
                      objc_enumerationMutation(v51);
                    }

                    v56 = *(*(&v74 + 1) + 8 * n);
                    if ([v29 containsObject:v56])
                    {
                      if (![v56 canBePreventedByGestureRecognizer:v50])
                      {
                        continue;
                      }

                      container = [v50 container];
                      container2 = [v56 container];
                      v59 = isDescendantOfContainer(container, container2, 0);

                      v29 = v73;
                      if (!v59)
                      {
                        continue;
                      }
                    }

                    if (!v48)
                    {
                      v48 = objc_opt_new();
                    }

                    [v48 addObject:v56];
                  }

                  v53 = [(NSMutableSet *)v51 countByEnumeratingWithState:&v74 objects:v103 count:16];
                }

                while (v53);
              }

              selfCopy3 = self;
              v49 = obja + 1;
            }

            while (obja + 1 != v69);
            v69 = [(NSMutableSet *)v65 countByEnumeratingWithState:&v78 objects:v104 count:16];
          }

          while (v69);
        }

        [(NSMutableSet *)selfCopy3->_updatingGestureRecognizers minusSet:v48];
        [(NSMutableSet *)selfCopy3->_exitingGestureRecognizers unionSet:v48];

        eventCopy = v62;
      }

      else
      {
        [(NSMutableSet *)selfCopy3->_exitingGestureRecognizers unionSet:selfCopy3->_updatingGestureRecognizers];
        [(NSMutableSet *)selfCopy3->_exitingGestureRecognizers minusSet:v29];
        [(NSMutableSet *)selfCopy3->_updatingGestureRecognizers minusSet:selfCopy3->_exitingGestureRecognizers];
      }

      v16 = v61;
    }
  }
}

- (NSSet)gestureRecognizers
{
  v3 = objc_opt_new();
  [v3 unionSet:self->_beginningGestureRecognizers];
  [v3 unionSet:self->_updatingGestureRecognizers];
  [v3 unionSet:self->_exitingGestureRecognizers];

  return v3;
}

@end