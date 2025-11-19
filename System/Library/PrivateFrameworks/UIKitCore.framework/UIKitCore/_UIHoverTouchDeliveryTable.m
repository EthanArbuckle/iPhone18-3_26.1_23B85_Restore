@interface _UIHoverTouchDeliveryTable
- (NSSet)gestureRecognizers;
- (_UIHoverTouchDeliveryTable)initWithTouch:(id)a3;
- (int64_t)updateGestureRecognizerForDelivery:(id)a3;
- (void)_cancelAllGestureRecognizers;
- (void)removeGestureRecognizer:(id)a3;
- (void)updateForEvent:(id)a3 forcingHitTest:(BOOL)a4;
@end

@implementation _UIHoverTouchDeliveryTable

- (_UIHoverTouchDeliveryTable)initWithTouch:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"UIHoverEvent.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"touch"}];
  }

  v17.receiver = self;
  v17.super_class = _UIHoverTouchDeliveryTable;
  v7 = [(_UIHoverTouchDeliveryTable *)&v17 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_touch, a3);
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

- (int64_t)updateGestureRecognizerForDelivery:(id)a3
{
  v4 = a3;
  if ([(NSMutableSet *)self->_exitingGestureRecognizers containsObject:v4])
  {
    [(NSMutableSet *)self->_exitingGestureRecognizers removeObject:v4];
    v5 = 7;
  }

  else if (([(NSMutableSet *)self->_updatingGestureRecognizers containsObject:v4]& 1) != 0)
  {
    v5 = 6;
  }

  else if ([(NSMutableSet *)self->_beginningGestureRecognizers containsObject:v4])
  {
    [(NSMutableSet *)self->_beginningGestureRecognizers removeObject:v4];
    [(NSMutableSet *)self->_updatingGestureRecognizers addObject:v4];
    v5 = 5;
  }

  else
  {
    v5 = 2;
  }

  return v5;
}

- (void)removeGestureRecognizer:(id)a3
{
  beginningGestureRecognizers = self->_beginningGestureRecognizers;
  v5 = a3;
  [(NSMutableSet *)beginningGestureRecognizers removeObject:v5];
  [(NSMutableSet *)self->_updatingGestureRecognizers removeObject:v5];
  [(NSMutableSet *)self->_exitingGestureRecognizers removeObject:v5];
}

- (void)_cancelAllGestureRecognizers
{
  v5 = [(_UIHoverTouchDeliveryTable *)self gestureRecognizers];
  [(NSMutableSet *)self->_beginningGestureRecognizers removeAllObjects];
  [(NSMutableSet *)self->_updatingGestureRecognizers removeAllObjects];
  [(NSMutableSet *)self->_exitingGestureRecognizers removeAllObjects];
  v3 = UIApp;
  v4 = [v5 allObjects];
  [v3 _cancelGestureRecognizers:v4];
}

- (void)updateForEvent:(id)a3 forcingHitTest:(BOOL)a4
{
  v109 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [UIApp _isSpringBoard];
  if (_UIEventHIDGetDescendantPointerEvent([v5 _hidEvent]))
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
    if (!v6)
    {
LABEL_6:
      v10 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    MayVendViews = _UIApplicationMayVendViews();
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  v11 = [(UITouch *)self->_touch window];
  if (v11)
  {
    [(UITouch *)self->_touch window];
    v13 = v12 = v5;
    v10 = [v13 _constrainsHoverEventHitTesting];

    v5 = v12;
  }

  else
  {
    v10 = 0;
  }

LABEL_12:
  v63 = [(UITouch *)self->_touch _responder];
  v14 = [(UITouch *)self->_touch phase];
  v15 = v14 - 5;
  if ((v14 - 5) > 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = [(UITouch *)self->_touch _rehitTestWithEvent:v5 constrainingToCurrentWindow:(v8 | v10 | MayVendViews) & 1];
  }

  v17 = v63 == v16 || v15 >= 2;
  v18 = 1;
  v60 = v16;
  if (v17 && !a4)
  {
    v18 = ![(NSMutableSet *)self->_beginningGestureRecognizers count]&& [(NSMutableSet *)self->_updatingGestureRecognizers count]== 0;
    if (!v18 && v8 && ((v6 ^ 1) & 1) == 0)
    {
      v19 = [(UITouch *)self->_touch window];
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

  if (v14 == UITouchPhaseRegionExited)
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

    v28 = self;
    if ((v27 & 1) == 0)
    {
      [(UITouch *)self->_touch _setResponder:v16];
      [(NSMutableSet *)self->_exitingGestureRecognizers removeAllObjects];
      v29 = objc_opt_new();
      v66 = [v5 _isPointerLocked];
      v73 = v29;
      v62 = v5;
      if (v16)
      {
        v64 = MEMORY[0x1E69E9820];
        v30 = v60;
        do
        {
          aBlock[0] = v64;
          aBlock[1] = 3221225472;
          aBlock[2] = __60___UIHoverTouchDeliveryTable_updateForEvent_forcingHitTest___block_invoke;
          aBlock[3] = &unk_1E710B5D0;
          v98 = v66;
          v95 = v29;
          v96 = v28;
          v31 = v5;
          v97 = v31;
          v32 = _Block_copy(aBlock);
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v93 = 0u;
          v68 = v30;
          v33 = [v30 gestureRecognizers];
          v34 = [v33 countByEnumeratingWithState:&v90 objects:v107 count:16];
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
                  objc_enumerationMutation(v33);
                }

                v32[2](v32, *(*(&v90 + 1) + 8 * j));
              }

              v35 = [v33 countByEnumeratingWithState:&v90 objects:v107 count:16];
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

            v5 = v62;
            v28 = self;
            v29 = v73;
          }

          v30 = [v68 _parentGestureRecognizerContainer];
        }

        while (v30);
      }

      if ([(NSMutableSet *)v28->_beginningGestureRecognizers count])
      {
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v65 = v28->_beginningGestureRecognizers;
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
              v51 = v28->_updatingGestureRecognizers;
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

                      v57 = [v50 container];
                      v58 = [v56 container];
                      v59 = isDescendantOfContainer(v57, v58, 0);

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

              v28 = self;
              v49 = obja + 1;
            }

            while (obja + 1 != v69);
            v69 = [(NSMutableSet *)v65 countByEnumeratingWithState:&v78 objects:v104 count:16];
          }

          while (v69);
        }

        [(NSMutableSet *)v28->_updatingGestureRecognizers minusSet:v48];
        [(NSMutableSet *)v28->_exitingGestureRecognizers unionSet:v48];

        v5 = v62;
      }

      else
      {
        [(NSMutableSet *)v28->_exitingGestureRecognizers unionSet:v28->_updatingGestureRecognizers];
        [(NSMutableSet *)v28->_exitingGestureRecognizers minusSet:v29];
        [(NSMutableSet *)v28->_updatingGestureRecognizers minusSet:v28->_exitingGestureRecognizers];
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