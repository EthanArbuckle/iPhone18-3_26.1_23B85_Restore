@interface _UIDynamicButtonEvent
- (BOOL)_sendEventToGestureRecognizer:(id)a3;
- (NSSet)_allDynamicButtons;
- (NSString)description;
- (_UIDynamicButtonEvent)init;
- (id)_allWindows;
- (id)_appendDescriptionToBuilder:(id)result;
- (id)_componentsForGestureRecognizer:(id)a3;
- (id)_componentsForWindow:(id)a3;
- (id)_dispatchWindows;
- (id)_gestureRecognizersForWindow:(id)a3;
- (id)_init;
- (id)_removeComponentsForWindow:(id *)result withCancellation:(uint64_t)a2;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (uint64_t)_appendDescriptionToStream:(uint64_t)result;
- (void)_cleanupAfterDispatch;
- (void)_gestureRecognizerNoLongerNeedsSendEvent:(id)a3;
- (void)_removeComponents:(int)a3 withCancellation:;
- (void)_removeGestureRecognizer:(id)a3 fromComponents:(id)a4;
- (void)_setHIDEvent:(__IOHIDEvent *)a3;
- (void)_windowDidBecomeHidden:(id)a3;
- (void)_windowDidDetachContext:(id)a3;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)dealloc;
@end

@implementation _UIDynamicButtonEvent

- (id)_init
{
  v10.receiver = self;
  v10.super_class = _UIDynamicButtonEvent;
  v2 = [(UIEvent *)&v10 _init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v4 = v2[16];
    v2[16] = v3;

    v5 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v6 = v2[17];
    v2[17] = v5;

    v7 = v2[18];
    v2[18] = 0;

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v2 selector:sel__windowDidDetachContext_ name:_UIWindowDidDetachContextNotification object:0];
    [v8 addObserver:v2 selector:sel__windowDidBecomeHidden_ name:@"UIWindowDidBecomeHiddenNotification" object:0];
  }

  return v2;
}

- (id)_allWindows
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(NSMapTable *)self->_dynamicButtonsByWindow keyEnumerator];
  v4 = [v3 allObjects];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (void)dealloc
{
  v6[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = _UIWindowDidDetachContextNotification;
  v6[1] = @"UIWindowDidBecomeHiddenNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

  v5.receiver = self;
  v5.super_class = _UIDynamicButtonEvent;
  [(UIEvent *)&v5 dealloc];
}

- (_UIDynamicButtonEvent)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIDynamicButtonEvent.m" lineNumber:245 description:{@"%s: init is not allowed on %@", "-[_UIDynamicButtonEvent init]", objc_opt_class()}];

  return 0;
}

- (void)_setHIDEvent:(__IOHIDEvent *)a3
{
  v86 = *MEMORY[0x1E69E9840];
  v70.receiver = self;
  v70.super_class = _UIDynamicButtonEvent;
  [(UIEvent *)&v70 _setHIDEvent:?];
  if (a3)
  {
    if (_UIEventHIDIsDynamicButtonEvent(a3))
    {
      if (self)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v60 = [MEMORY[0x1E696AAA8] currentHandler];
      [v60 handleFailureInMethod:a2 object:self file:@"_UIDynamicButtonEvent.m" lineNumber:289 description:{@"Invalid hidEvent type for %@: %@", objc_opt_class(), a3}];

      if (self)
      {
LABEL_4:
        v6 = _UIEventHIDUIWindowForHIDEvent();
        if (!v6)
        {
          if (os_variant_has_internal_diagnostics())
          {
            v64 = __UIFaultDebugAssertLog();
            if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315394;
              *&buf[4] = "[_UIDynamicButtonEvent _processHIDEventFindingDynamicButtonForDispatch:]";
              *&buf[12] = 2112;
              *&buf[14] = a3;
              _os_log_fault_impl(&dword_188A29000, v64, OS_LOG_TYPE_FAULT, "%s: Received nil window for dispatched HID event: hidEvent: %@", buf, 0x16u);
            }
          }

          else
          {
            v18 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49B088) + 8);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "[_UIDynamicButtonEvent _processHIDEventFindingDynamicButtonForDispatch:]";
              *&buf[12] = 2112;
              *&buf[14] = a3;
              _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "%s: Received nil window for dispatched HID event: hidEvent: %@", buf, 0x16u);
            }
          }

          v19 = 0;
          goto LABEL_93;
        }

        if (_UIEventHIDIsDynamicButtonEvent(a3))
        {
          v7 = 5;
        }

        else
        {
          v7 = 0;
        }

        _UIEventHIDGetChildForceStageEvent(a3);
        IntegerValue = IOHIDEventGetIntegerValue();
        v9 = [(NSMapTable *)self->_dynamicButtonsByWindow objectForKey:v6];
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v71 objects:v83 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = IntegerValue & ~(IntegerValue >> 63);
          v14 = *v72;
LABEL_10:
          v15 = v10;
          v16 = 0;
          while (1)
          {
            if (*v72 != v14)
            {
              objc_enumerationMutation(v15);
            }

            v17 = *(*(&v71 + 1) + 8 * v16);
            if ([v17 _physicalButton] == v7 && objc_msgSend(v17, "_stage") == v13)
            {
              break;
            }

            if (v12 == ++v16)
            {
              v10 = v15;
              v12 = [v15 countByEnumeratingWithState:&v71 objects:v83 count:16];
              if (v12)
              {
                goto LABEL_10;
              }

              goto LABEL_17;
            }
          }

          v19 = v17;
          v10 = v15;

          if (!v19)
          {
            goto LABEL_24;
          }

          [(_UIDynamicButton *)v19 _updateWithHIDEvent:a3];
        }

        else
        {
LABEL_17:

LABEL_24:
          v19 = [_UIDynamicButton _dynamicButtonFromHIDEvent:a3];
          if (!v10)
          {
            v10 = objc_opt_new();
          }

          [v10 addObject:v19];
          [(NSMapTable *)self->_dynamicButtonsByWindow setObject:v10 forKey:v6];
          if (!v19)
          {
            stageTransition = 0;
            v20 = 1;
LABEL_28:
            if ((IOHIDEventGetPhase() & 8) != 0)
            {
              if (stageTransition != 2)
              {
                v23 = *(__UILogGetCategoryCachedImpl("DynamicButton", &qword_1ED49B090) + 8);
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  *&buf[4] = a3;
                  _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "Bug in provider of dynamic button HID event: event has the cancel phase bit set but is not an exit stage transition: %{public}@", buf, 0xCu);
                }
              }

              v22 = 4;
            }

            else
            {
              v22 = 3;
              if (stageTransition != 2)
              {
                v22 = 1;
              }

              if (stageTransition == 1)
              {
                v22 = 0;
              }
            }

            if ((v20 & 1) == 0)
            {
              v19->_phase = v22;
            }

            v24 = [(NSMapTable *)self->_deliveryTableByDynamicButton objectForKey:v19];
            if (v24)
            {
              v25 = v24;
            }

            else
            {
              v25 = [_UIDynamicButtonDeliveryTable alloc];
              if (v25)
              {
                if (v20)
                {
                  v65 = [MEMORY[0x1E696AAA8] currentHandler];
                  [v65 handleFailureInMethod:sel_initWithDynamicButton_ object:v25 file:@"_UIDynamicButtonEvent.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"dynamicButton"}];
                }

                *buf = v25;
                *&buf[8] = _UIDynamicButtonDeliveryTable;
                v26 = objc_msgSendSuper2(buf, sel_init);
                v25 = v26;
                if (v26)
                {
                  objc_storeStrong(&v26->_dynamicButton, v19);
                  v27 = objc_opt_new();
                  beginningGestureRecognizers = v25->_beginningGestureRecognizers;
                  v25->_beginningGestureRecognizers = v27;

                  v29 = objc_opt_new();
                  updatingGestureRecognizers = v25->_updatingGestureRecognizers;
                  v25->_updatingGestureRecognizers = v29;

                  v31 = objc_opt_new();
                  endingGestureRecognizers = v25->_endingGestureRecognizers;
                  v25->_endingGestureRecognizers = v31;

                  v33 = objc_opt_new();
                  cancellingGestureRecognizers = v25->_cancellingGestureRecognizers;
                  v25->_cancellingGestureRecognizers = v33;
                }
              }

              [(NSMapTable *)self->_deliveryTableByDynamicButton setObject:v25 forKey:v19];
              if (!v25)
              {
                goto LABEL_91;
              }
            }

            v35 = [(_UIDynamicButton *)v25->_dynamicButton _phase];
            switch(v35)
            {
              case 0:
                v67 = v19;
                v68 = v10;
                v37 = [(_UIDynamicButton *)v25->_dynamicButton _window];
                v38 = [v37 _windowHostingScene];
                v39 = [v38 _physicalButtonInteractionArbiter];

                if (!v39)
                {
                  goto LABEL_68;
                }

                v40 = [(_UIPhysicalButtonInteractionArbiter *)v39 _gestureViewsForWindow:v37 physicalButton:[(_UIDynamicButton *)v25->_dynamicButton _physicalButton]];
                v41 = [v40 mutableCopy];

                v42 = v6;
                if (qword_1ED49B0C8 != -1)
                {
                  dispatch_once(&qword_1ED49B0C8, &__block_literal_global_172_0);
                }

                if (_MergedGlobals_23_8 == 1)
                {
                  v43 = [v37 _responderForKeyEvents];
                  if ([v43 __isKindOfUIRemoteViewController])
                  {
                    v44 = [v43 view];

                    v43 = v44;
                  }

                  if (v43)
                  {
                    do
                    {
                      if (_IsKindOfUIView(v43) && ([v41 containsObject:v43] & 1) == 0 && -[UIView _isInVisibleHierarchy](v43))
                      {
                        [v41 addObject:v43];
                      }

                      v45 = [v43 nextResponder];

                      v43 = v45;
                    }

                    while (v45);
                  }
                }

                v6 = v42;
                if (v41)
                {
                  v46 = [v41 copy];
                }

                else
                {
LABEL_68:
                  v46 = objc_opt_new();
                }

                if ([v46 count])
                {
                  v66 = v6;
                  v81 = 0u;
                  v82 = 0u;
                  v79 = 0u;
                  v80 = 0u;
                  obj = v46;
                  v47 = [obj countByEnumeratingWithState:&v79 objects:buf count:16];
                  if (v47)
                  {
                    v48 = v47;
                    v49 = *v80;
                    do
                    {
                      for (i = 0; i != v48; ++i)
                      {
                        if (*v80 != v49)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v51 = *(*(&v79 + 1) + 8 * i);
                        v75 = 0u;
                        v76 = 0u;
                        v77 = 0u;
                        v78 = 0u;
                        v52 = [v51 gestureRecognizers];
                        v53 = [v52 countByEnumeratingWithState:&v75 objects:v84 count:16];
                        if (v53)
                        {
                          v54 = v53;
                          v55 = *v76;
                          do
                          {
                            for (j = 0; j != v54; ++j)
                            {
                              if (*v76 != v55)
                              {
                                objc_enumerationMutation(v52);
                              }

                              v57 = *(*(&v75 + 1) + 8 * j);
                              if ([v57 isEnabled] && objc_msgSend(v57, "state") <= 2 && -[UIGestureRecognizer _shouldReceiveDynamicButton:forEvent:](v57, v25->_dynamicButton, self))
                              {
                                [(NSMutableSet *)v25->_beginningGestureRecognizers addObject:v57];
                              }
                            }

                            v54 = [v52 countByEnumeratingWithState:&v75 objects:v84 count:16];
                          }

                          while (v54);
                        }
                      }

                      v48 = [obj countByEnumeratingWithState:&v79 objects:buf count:16];
                    }

                    while (v48);
                  }

                  v6 = v66;
                }

                else
                {
                }

                v19 = v67;
                v10 = v68;
                goto LABEL_91;
              case 3:
                v36 = v25->_endingGestureRecognizers;
                break;
              case 4:
                v36 = v25->_cancellingGestureRecognizers;
                break;
              default:
LABEL_91:
                CategoryCachedImpl = __UILogGetCategoryCachedImpl("DynamicButton", &qword_1ED49B098);
                if (*CategoryCachedImpl)
                {
                  v61 = *(CategoryCachedImpl + 8);
                  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                  {
                    v62 = v61;
                    v63 = [(_UIDynamicButton *)v19 debugDescription];
                    *buf = 138412290;
                    *&buf[4] = v63;
                    _os_log_impl(&dword_188A29000, v62, OS_LOG_TYPE_ERROR, "Dynamic button for dispatch: %@", buf, 0xCu);
                  }
                }

LABEL_93:
LABEL_94:
                dynamicButtonForDispatch = self->_dynamicButtonForDispatch;
                self->_dynamicButtonForDispatch = v19;

                return;
            }

            [(NSMutableSet *)v36 unionSet:v25->_updatingGestureRecognizers];
            [(NSMutableSet *)v25->_updatingGestureRecognizers removeAllObjects];
            goto LABEL_91;
          }
        }

        v20 = 0;
        stageTransition = v19->_stageTransition;
        goto LABEL_28;
      }
    }

    v19 = 0;
    goto LABEL_94;
  }
}

- (id)_dispatchWindows
{
  v2 = [(_UIDynamicButton *)self->_dynamicButtonForDispatch _window];
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

- (id)_gestureRecognizersForWindow:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(NSMapTable *)self->_dynamicButtonsByWindow objectForKey:a3, 0];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMapTable *)self->_deliveryTableByDynamicButton objectForKey:*(*(&v14 + 1) + 8 * i)];
        v12 = [(_UIDynamicButtonDeliveryTable *)v11 gestureRecognizers];
        [v5 unionSet:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)_sendEventToGestureRecognizer:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("DynamicButton", &qword_1ED49B0A0);
  if (*CategoryCachedImpl)
  {
    v14 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
      v16 = [a3 _briefDescription];
      v29 = 138412546;
      v30 = v16;
      v31 = 2112;
      v32 = self;
      _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Sending dynamic button event to: %@; \n%@", &v29, 0x16u);
    }
  }

  v6 = [(NSMapTable *)self->_deliveryTableByDynamicButton objectForKey:self->_dynamicButtonForDispatch];
  v7 = v6;
  if (v6)
  {
    if ([*(v6 + 32) containsObject:a3])
    {
      [*(v7 + 32) removeObject:a3];
      v8 = objc_opt_new();
      [(_UIDynamicButtonEvent *)v8 addObject:*(v7 + 40)];
      if (v8)
      {
        v9 = __UILogGetCategoryCachedImpl("DynamicButton", &qword_1ED49B0C0);
        if (*v9)
        {
          v17 = *(v9 + 8);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = v17;
            v19 = [a3 _briefDescription];
            v29 = 138412546;
            v30 = v19;
            v31 = 2112;
            v32 = v8;
            _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "Sending dynamicButtonsCancelled to: %@; \n%@", &v29, 0x16u);
          }
        }

        [a3 _componentsCancelled:v8 withEvent:self];
LABEL_19:
      }
    }

    else if ([*(v7 + 24) containsObject:a3])
    {
      [*(v7 + 24) removeObject:a3];
      v8 = objc_opt_new();
      [(_UIDynamicButtonEvent *)v8 addObject:*(v7 + 40)];
      if (v8)
      {
        v10 = __UILogGetCategoryCachedImpl("DynamicButton", &qword_1ED49B0B8);
        if (*v10)
        {
          v20 = *(v10 + 8);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = v20;
            v22 = [a3 _briefDescription];
            v29 = 138412546;
            v30 = v22;
            v31 = 2112;
            v32 = v8;
            _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "Sending dynamicButtonsEnded to: %@; \n%@", &v29, 0x16u);
          }
        }

        [a3 _componentsEnded:v8 withEvent:self];
        goto LABEL_19;
      }
    }

    else if ([*(v7 + 16) containsObject:a3])
    {
      v8 = objc_opt_new();
      [(_UIDynamicButtonEvent *)v8 addObject:*(v7 + 40)];
      if (v8)
      {
        v11 = __UILogGetCategoryCachedImpl("DynamicButton", &qword_1ED49B0B0);
        if (*v11)
        {
          v23 = *(v11 + 8);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = v23;
            v25 = [a3 _briefDescription];
            v29 = 138412546;
            v30 = v25;
            v31 = 2112;
            v32 = v8;
            _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "Sending dynamicButtonsChanged to: %@; \n%@", &v29, 0x16u);
          }
        }

        [a3 _componentsChanged:v8 withEvent:self];
        goto LABEL_19;
      }
    }

    else if ([*(v7 + 8) containsObject:a3])
    {
      [*(v7 + 8) removeObject:a3];
      [*(v7 + 16) addObject:a3];
      v8 = objc_opt_new();
      [(_UIDynamicButtonEvent *)v8 addObject:*(v7 + 40)];
      if (v8)
      {
        v12 = __UILogGetCategoryCachedImpl("DynamicButton", &qword_1ED49B0A8);
        if (*v12)
        {
          v26 = *(v12 + 8);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = v26;
            v28 = [a3 _briefDescription];
            v29 = 138412546;
            v30 = v28;
            v31 = 2112;
            v32 = v8;
            _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_ERROR, "Sending dynamicButtonsBegan to: %@; \n%@", &v29, 0x16u);
          }
        }

        [a3 _componentsBegan:v8 withEvent:self];
        goto LABEL_19;
      }
    }
  }

  return 1;
}

- (void)_cleanupAfterDispatch
{
  v7.receiver = self;
  v7.super_class = _UIDynamicButtonEvent;
  [(UIEvent *)&v7 _cleanupAfterDispatch];
  if ([(_UIDynamicButton *)self->_dynamicButtonForDispatch _phase]> 1)
  {
    [(NSMapTable *)self->_deliveryTableByDynamicButton removeObjectForKey:self->_dynamicButtonForDispatch];
    v4 = [(_UIDynamicButton *)self->_dynamicButtonForDispatch _window];
    v5 = [(NSMapTable *)self->_dynamicButtonsByWindow objectForKey:v4];
    [v5 removeObject:self->_dynamicButtonForDispatch];
    if (![v5 count])
    {
      [(NSMapTable *)self->_dynamicButtonsByWindow removeObjectForKey:v4];
    }

    [(UIBackgroundConfiguration *)self->_dynamicButtonForDispatch _setCustomView:?];
  }

  else
  {
    dynamicButtonForDispatch = self->_dynamicButtonForDispatch;
    if (dynamicButtonForDispatch)
    {
      dynamicButtonForDispatch->_phase = 2;
    }
  }

  v6 = self->_dynamicButtonForDispatch;
  self->_dynamicButtonForDispatch = 0;
}

- (void)_gestureRecognizerNoLongerNeedsSendEvent:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_deliveryTableByDynamicButton;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x1E695DFD8] setWithObject:{*(*(&v11 + 1) + 8 * v9), v11}];
        [(_UIDynamicButtonEvent *)self _removeGestureRecognizer:a3 fromComponents:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (NSSet)_allDynamicButtons
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_deliveryTableByDynamicButton;
  v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

        [v3 addObject:{*(*(&v11 + 1) + 8 * i), v11}];
      }

      v6 = [(NSMapTable *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = [v3 copy];

  return v9;
}

- (id)_componentsForGestureRecognizer:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v16 = [MEMORY[0x1E695DFA8] set];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = self->_deliveryTableByDynamicButton;
    v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [(NSMapTable *)self->_deliveryTableByDynamicButton objectForKey:v10];
          v12 = [(_UIDynamicButtonDeliveryTable *)v11 gestureRecognizers];
          v13 = [v12 containsObject:a3];

          if (v13)
          {
            [v16 addObject:v10];
          }
        }

        v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    v14 = [v16 copy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_removeGestureRecognizer:(id)a3 fromComponents:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    v10 = 0x1E696A000uLL;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        v13 = [v12 _eventComponentType];
        if (v13 != 2)
        {
          v16 = v13;
          v17 = [*(v10 + 2728) currentHandler];
          [v17 handleFailureInMethod:a2 object:self file:@"_UIDynamicButtonEvent.m" lineNumber:541 description:{@"Wrong component type for event: %@; component: %lu", self, v16}];

          v10 = 0x1E696A000;
        }

        v14 = [(NSMapTable *)self->_deliveryTableByDynamicButton objectForKey:v12];
        v15 = v14;
        if (v14)
        {
          [*(v14 + 8) removeObject:a3];
          [v15[2] removeObject:a3];
          [v15[3] removeObject:a3];
          [v15[4] removeObject:a3];
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }
}

- (id)_componentsForWindow:(id)a3
{
  v3 = [(NSMapTable *)self->_dynamicButtonsByWindow objectForKey:a3];
  v4 = [v3 copy];

  return v4;
}

- (void)_removeComponents:(int)a3 withCancellation:
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = a2;
    v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (!v5)
    {
      goto LABEL_17;
    }

    v6 = v5;
    v7 = *v18;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        if ([v9 _eventComponentType] == 2)
        {
          if (!a3)
          {
            goto LABEL_10;
          }

LABEL_9:
          v10 = [a1[17] objectForKey:v9];
          v11 = [(_UIDynamicButtonDeliveryTable *)v10 gestureRecognizers];
          [a1 _removeGestureRecognizersSendingCancelledEvent:v11];

          goto LABEL_10;
        }

        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        [v14 handleFailureInMethod:sel__removeComponents_withCancellation_ object:a1 file:@"_UIDynamicButtonEvent.m" lineNumber:555 description:{@"Unexpected component type: %ld", objc_msgSend(v9, "_eventComponentType")}];

        if (a3)
        {
          goto LABEL_9;
        }

LABEL_10:
        v12 = [v9 _window];
        v13 = [a1[16] objectForKey:v12];
        [v13 removeObject:v9];
        if (![v13 count])
        {
          [a1[16] removeObjectForKey:v12];
        }

        [a1[17] removeObjectForKey:v9];
        [(UIBackgroundConfiguration *)v9 _setCustomView:?];

        ++v8;
      }

      while (v6 != v8);
      v15 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      v6 = v15;
      if (!v15)
      {
LABEL_17:

        return;
      }
    }
  }
}

- (id)_removeComponentsForWindow:(id *)result withCancellation:(uint64_t)a2
{
  if (result)
  {
    v3 = result;
    v4 = [result _componentsForWindow:a2];
    [(_UIDynamicButtonEvent *)v3 _removeComponents:v4 withCancellation:1];

    v5 = v3[16];

    return [v5 removeObjectForKey:a2];
  }

  return result;
}

- (void)_windowDidDetachContext:(id)a3
{
  v7 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a3 object];

    if (!v5)
    {
      return;
    }

    [_UIDynamicButtonEvent _removeComponentsForWindow:v5 withCancellation:?];
    v6 = v5;
  }

  else
  {
    v6 = v7;
  }
}

- (void)_windowDidBecomeHidden:(id)a3
{
  v7 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a3 object];

    if (!v5)
    {
      return;
    }

    [_UIDynamicButtonEvent _removeComponentsForWindow:v5 withCancellation:?];
    v6 = v5;
  }

  else
  {
    v6 = v7;
  }
}

- (uint64_t)_appendDescriptionToStream:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    [a2 appendProem:result block:&__block_literal_global_733];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __52___UIDynamicButtonEvent__appendDescriptionToStream___block_invoke_2;
    v4[3] = &unk_1E70F35B8;
    v4[4] = a2;
    v4[5] = v3;
    return [a2 appendBodySectionWithName:0 block:v4];
  }

  return result;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v5 = objc_opt_class();
  v6 = a3;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v12 = v7;

  if (v12)
  {
    [(_UIDynamicButtonEvent *)self _appendDescriptionToStream:v12];
  }

  else
  {
    v8 = objc_opt_class();
    v9 = v6;
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      [(_UIDynamicButtonEvent *)self _appendDescriptionToBuilder:v11];
    }

    else if (self)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __61___UIDynamicButtonEvent__appendSimpleDescriptionToFormatter___block_invoke;
      v13[3] = &unk_1E70F35B8;
      v13[4] = v9;
      v13[5] = self;
      [v9 appendProem:self block:v13];
    }
  }
}

- (id)_appendDescriptionToBuilder:(id)result
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __53___UIDynamicButtonEvent__appendDescriptionToBuilder___block_invoke;
    v2[3] = &unk_1E70F35B8;
    v2[4] = a2;
    v2[5] = result;
    return [a2 modifyBody:v2];
  }

  return result;
}

- (id)succinctDescription
{
  v2 = [(_UIDynamicButtonEvent *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [(_UIDynamicButtonEvent *)self _appendDescriptionToBuilder:v3];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIDynamicButtonEvent *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIDynamicButtonEvent *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:a3];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63___UIDynamicButtonEvent_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v6 = v5;
  v11 = v6;
  v12 = self;
  v7 = [v6 modifyBody:v10];
  v8 = v6;

  return v6;
}

- (NSString)description
{
  v3 = objc_opt_new();
  [(_UIDynamicButtonEvent *)self _appendDescriptionToStream:v3];
  v4 = [v3 description];

  return v4;
}

@end