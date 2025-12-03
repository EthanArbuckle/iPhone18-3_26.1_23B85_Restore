@interface _UIPencilEvent
- (id)_init;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)registerInteraction:(uint64_t)interaction;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (uint64_t)_cancelAndRemoveAllDescriptorsAndInteractions;
- (uint64_t)_shouldCollectInteraction:(int)interaction consultingInteraction:(void *)consultingInteraction constrainedToWindow:;
- (void)_cancelAndRemoveInteractionsInAllDeliveryRecordsFromFilter:(uint64_t)filter;
- (void)_cleanupAfterDispatch;
- (void)_setHIDEvent:(__IOHIDEvent *)event;
- (void)dealloc;
- (void)sendToInteractions;
- (void)unregisterAllInteractionsForWindow:(uint64_t)window;
@end

@implementation _UIPencilEvent

- (id)_init
{
  v11.receiver = self;
  v11.super_class = _UIPencilEvent;
  _init = [(UIEvent *)&v11 _init];
  if (_init)
  {
    v3 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:512];
    v4 = _init[24];
    _init[24] = v3;

    _init[21] = 0x7FF8000000000000;
    v5 = [UINotificationFeedbackGenerator alloc];
    v6 = [MEMORY[0x1E695DFD8] setWithObject:&unk_1EFE30130];
    v7 = [_UINotificationFeedbackGeneratorConfiguration privateConfigurationForTypes:v6];
    v8 = [(UIFeedbackGenerator *)v5 initWithConfiguration:v7];
    v9 = _init[19];
    _init[19] = v8;
  }

  return _init;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_stateCaptureToken invalidate];
  v3.receiver = self;
  v3.super_class = _UIPencilEvent;
  [(UIEvent *)&v3 dealloc];
}

- (id)registerInteraction:(uint64_t)interaction
{
  v71[2] = *MEMORY[0x1E69E9840];
  if (!interaction)
  {
    goto LABEL_4;
  }

  if ([*(interaction + 176) containsObject:a2])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_registerInteraction_ object:interaction file:@"_UIPencilEvent.m" lineNumber:444 description:{@"%s: Interaction is already registered with event: interaction: %@; event: %@", "-[_UIPencilEvent registerInteraction:]", a2, interaction}];

LABEL_4:
    v5 = 0;
    goto LABEL_26;
  }

  view = [a2 view];
  _window = [view _window];
  if (!a2 || (*(a2 + 8) < 0 ? (v8 = *(a2 + 32)) : (v8 = [a2 _dispatchBehavior], *(a2 + 32) = v8), v8 != 2))
  {
    v9 = [MEMORY[0x1E696B098] valueWithPointer:_window];
    v10 = *(interaction + 184);
    if (!v10)
    {
      v11 = objc_opt_new();
      v12 = *(interaction + 184);
      *(interaction + 184) = v11;

      v10 = *(interaction + 184);
    }

    [v10 addObject:v9];
  }

  objc_initWeak(&location, interaction);
  objc_initWeak(&from, a2);
  v13 = ++qword_1ED497210;
  v14 = objc_opt_class();
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s-%p-%lu", class_getName(v14), a2, v13];
  v16 = MEMORY[0x1E696AEC0];
  interactionCopy = interaction;
  v18 = MEMORY[0x1E696AEC0];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  interactionCopy = [v18 stringWithFormat:@"<%@: %p>", v20, interactionCopy];

  v22 = [v16 stringWithFormat:@"Registering interaction with: %@", interactionCopy];

  v23 = objc_alloc(MEMORY[0x1E698E778]);
  v24 = MEMORY[0x1E69E96A0];
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __38___UIPencilEvent_registerInteraction___block_invoke;
  v63[3] = &unk_1E7102148;
  objc_copyWeak(&v64, &location);
  objc_copyWeak(&v65, &from);
  v63[4] = a2;
  v62 = [v23 initWithIdentifier:v15 forReason:v22 queue:MEMORY[0x1E69E96A0] invalidationBlock:v63];

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("PencilInteraction", &_MergedGlobals_32);
  if (*CategoryCachedImpl)
  {
    v43 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = a2;
      v60 = v43;
      if (a2)
      {
        v45 = MEMORY[0x1E696AEC0];
        v46 = objc_opt_class();
        v47 = NSStringFromClass(v46);
        v48 = [v45 stringWithFormat:@"<%@: %p>", v47, v44];
      }

      else
      {
        v48 = @"(nil)";
      }

      v61 = v48;
      view2 = [v44 view];
      if (view2)
      {
        v50 = MEMORY[0x1E696AEC0];
        v51 = objc_opt_class();
        v52 = NSStringFromClass(v51);
        v53 = [v50 stringWithFormat:@"<%@: %p>", v52, view2];
      }

      else
      {
        v53 = @"(nil)";
      }

      v59 = v53;
      v54 = interactionCopy;
      v55 = MEMORY[0x1E696AEC0];
      v56 = objc_opt_class();
      v57 = NSStringFromClass(v56);
      v58 = [v55 stringWithFormat:@"<%@: %p>", v57, v54];

      *buf = 138412802;
      *&buf[4] = v61;
      *&buf[12] = 2112;
      *&buf[14] = v59;
      *&buf[22] = 2112;
      v70 = v58;
      _os_log_impl(&dword_188A29000, v60, OS_LOG_TYPE_ERROR, "Registering interaction: %@; from view: %@; with event: %@", buf, 0x20u);

      v43 = v60;
    }
  }

  v26 = interactionCopy[22];
  if (!v26)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v28 = interactionCopy[22];
    interactionCopy[22] = weakObjectsHashTable;

    v26 = interactionCopy[22];
  }

  [v26 addObject:a2];
  if (!interactionCopy[18] && [interactionCopy[22] count])
  {
    anyObject = [interactionCopy[22] anyObject];
    view3 = [anyObject view];
    _window2 = [view3 _window];
    _windowHostingScene = [_window2 _windowHostingScene];

    objc_initWeak(&v68, interactionCopy);
    v33 = MEMORY[0x1E696AEC0];
    _sceneIdentifier = [_windowHostingScene _sceneIdentifier];
    v35 = [v33 stringWithFormat:@"UIKit - PencilEvent - %@", _sceneIdentifier];

    v36 = MEMORY[0x1E69E96A0];
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __50___UIPencilEvent__registerForStateCaptureIfNeeded__block_invoke;
    v70 = &unk_1E70F6320;
    objc_copyWeak(v71, &v68);
    v37 = BSLogAddStateCaptureBlockForUserRequestsOnlyWithTitle();
    v38 = interactionCopy[18];
    interactionCopy[18] = v37;

    objc_destroyWeak(v71);
    objc_destroyWeak(&v68);
  }

  if (!a2 || (*(a2 + 8) < 0 ? (v39 = *(a2 + 32)) : (v39 = [a2 _dispatchBehavior], *(a2 + 32) = v39), v39 != 2))
  {
    view4 = [a2 view];
    _window3 = [view4 _window];
    _UIPencilEventRequestBarrelFocusIfAbleForWindow(_window3, 0);
  }

  v5 = v62;
  objc_destroyWeak(&v65);
  objc_destroyWeak(&v64);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

LABEL_26:

  return v5;
}

- (void)unregisterAllInteractionsForWindow:(uint64_t)window
{
  v16 = *MEMORY[0x1E69E9840];
  if (window)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [*(window + 176) copy];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          view = [v8 view];
          _window = [view _window];

          if (_window == a2)
          {
            [(UIPencilInteraction *)v8 _unregisterFromEvent];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }
}

- (void)_cancelAndRemoveInteractionsInAllDeliveryRecordsFromFilter:(uint64_t)filter
{
  v29 = *MEMORY[0x1E69E9840];
  v20 = *(filter + 160);
  v21 = *(filter + 136);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = *(filter + 192);
  v4 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v23 = *v25;
    do
    {
      v6 = 0;
      do
      {
        if (*v25 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v24 + 1) + 8 * v6);
        v8 = [*(filter + 192) objectForKey:v7];
        v9 = v8;
        if (v8)
        {
          v10 = *(v8 + 16);
          v11 = [v9[2] copy];
        }

        else
        {
          v10 = 0;
          v11 = 0;
        }

        v12 = (*(a2 + 16))(a2, v11);

        if (v12 && [v12 count])
        {
          if (!v7)
          {
            goto LABEL_14;
          }

          v13 = v7[6];
          v14 = 251;
          if (v13 != 5)
          {
            v14 = 0;
          }

          if (!v13)
          {
LABEL_14:
            v14 = 250;
          }

          *(filter + 136) = v14;
          *(filter + 160) = 4;
          objc_storeStrong((filter + 200), v7);
          allObjects = [v12 allObjects];
          v16 = *(filter + 208);
          *(filter + 208) = allObjects;

          [(_UIPencilEvent *)filter sendToInteractions];
          v17 = *(filter + 200);
          *(filter + 200) = 0;

          v18 = *(filter + 208);
          *(filter + 208) = 0;

          [v10 minusSet:v12];
        }

        ++v6;
      }

      while (v5 != v6);
      v19 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      v5 = v19;
    }

    while (v19);
  }

  *(filter + 136) = v21;
  *(filter + 160) = v20;
}

- (void)sendToInteractions
{
  v37 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  v2 = &OBJC_IVAR____UISystemBackgroundView__strokeView;
  v3 = *(self + 136);
  if (v3 == 250)
  {
    v4 = +[UIEventSessionActionAnalytics sharedInstance];
    [v4 didPencilDoubleTap];
    goto LABEL_7;
  }

  if (v3 == 251 && (*(self + 160) | 2) == 3)
  {
    v4 = +[UIEventSessionActionAnalytics sharedInstance];
    [v4 didPencilSqueezeWithPhase:*(self + 160)];
LABEL_7:
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = *(self + 208);
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v29;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v28 + 1) + 8 * v10);
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("PencilInteraction", &sendToInteractions___s_category);
        if (*CategoryCachedImpl)
        {
          log = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            v23 = MEMORY[0x1E696AEC0];
            selfCopy = self;
            v15 = objc_opt_class();
            v21 = NSStringFromClass(v15);
            selfCopy = [v23 stringWithFormat:@"<%@: %p>", v21, selfCopy];

            v16 = selfCopy;
            if (v11)
            {
              v25 = MEMORY[0x1E696AEC0];
              v22 = v16;
              v17 = v11;
              v18 = objc_opt_class();
              v20 = NSStringFromClass(v18);
              v26 = [v25 stringWithFormat:@"<%@: %p>", v20, v17];

              v16 = v22;
            }

            else
            {
              v26 = @"(nil)";
            }

            *buf = 138412546;
            v33 = v16;
            v34 = 2112;
            v35 = v26;
            _os_log_impl(&dword_188A29000, log, OS_LOG_TYPE_ERROR, "Sending %@ to %@", buf, 0x16u);

            v2 = &OBJC_IVAR____UISystemBackgroundView__strokeView;
          }
        }

        [(UIPencilInteraction *)v11 _performCallbacksWithEvent:self];
        if (v11)
        {
          if (*(v11 + 8) < 0)
          {
            _dispatchBehavior = *(v11 + 32);
          }

          else
          {
            _dispatchBehavior = [v11 _dispatchBehavior];
            *(v11 + 32) = _dispatchBehavior;
          }
        }

        else
        {
          _dispatchBehavior = 0;
        }

        v8 |= _dispatchBehavior != 2;
        ++v10;
      }

      while (v7 != v10);
      v19 = [v5 countByEnumeratingWithState:&v28 objects:v36 count:16];
      v7 = v19;
    }

    while (v19);

    if ((v8 & 1) != 0 && *(self + v2[506]) == 250)
    {
      if (*(self + 128))
      {
        [*(self + 152) _privateNotificationOccurred:1023 atLocation:1.79769313e308 senderID:1.79769313e308];
      }
    }
  }

  else
  {
  }
}

- (uint64_t)_cancelAndRemoveAllDescriptorsAndInteractions
{
  v12 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("PencilInteraction", &_cancelAndRemoveAllDescriptorsAndInteractions___s_category);
    if (*CategoryCachedImpl)
    {
      v3 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = MEMORY[0x1E696AEC0];
        v5 = v1;
        v6 = v3;
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = [v4 stringWithFormat:@"<%@: %p>", v8, v5];

        *buf = 138412290;
        v11 = v9;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Cancelling and removing all interactions from event: %@", buf, 0xCu);
      }
    }

    [(_UIPencilEvent *)v1 _cancelAndRemoveInteractionsInAllDeliveryRecordsFromFilter:?];
    return [v1[24] removeAllObjects];
  }

  return result;
}

- (uint64_t)_shouldCollectInteraction:(int)interaction consultingInteraction:(void *)consultingInteraction constrainedToWindow:
{
  if (!self || ![a2 isEnabled])
  {
    return 0;
  }

  if (consultingInteraction)
  {
    view = [a2 view];
    _window = [view _window];
    if (_window != consultingInteraction)
    {
      _isInVisibleHierarchy = 0;
LABEL_11:

      return _isInVisibleHierarchy;
    }
  }

  view2 = [a2 view];
  _isInVisibleHierarchy = [(UIView *)view2 _isInVisibleHierarchy];
  if (_isInVisibleHierarchy && interaction)
  {
    _isInVisibleHierarchy = [(UIPencilInteraction *)a2 _internalShouldReceiveEvent:self];
  }

  if (consultingInteraction)
  {
    goto LABEL_11;
  }

  return _isInVisibleHierarchy;
}

- (void)_setHIDEvent:(__IOHIDEvent *)event
{
  v86 = *MEMORY[0x1E69E9840];
  if (!event)
  {
    v69.receiver = self;
    v69.super_class = _UIPencilEvent;
    [(UIEvent *)&v69 _setHIDEvent:?];
    return;
  }

  if (!_UIEventHIDIsPencilBarrelEvent())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPencilEvent.m" lineNumber:748 description:{@"Invalid hidEvent type for %@: %@", objc_opt_class(), event}];

    return;
  }

  v69.receiver = self;
  v69.super_class = _UIPencilEvent;
  [(UIEvent *)&v69 _setHIDEvent:event];
  IntegerValue = IOHIDEventGetIntegerValue();
  SenderID = IOHIDEventGetSenderID();
  v8 = 251;
  if (IntegerValue != 5)
  {
    v8 = 0;
  }

  if (!IntegerValue)
  {
    v8 = 250;
  }

  self->_senderID = SenderID;
  self->_subtype = v8;
  if (IntegerValue != 5)
  {
LABEL_16:
    v10 = 3;
    goto LABEL_19;
  }

  Phase = IOHIDEventGetPhase();
  if (Phase)
  {
    v10 = 1;
  }

  else
  {
    if ((Phase & 2) == 0)
    {
      if ((Phase & 4) == 0)
      {
        v10 = (Phase >> 1) & 4;
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    v10 = 2;
  }

LABEL_19:
  self->_phase = v10;
  if (!_os_feature_enabled_impl())
  {
    if (_UIEventHIDGetChildVendorDefinedForceStageEvent(event))
    {
      v11 = *(IOHIDEventGetDataValue() + 40);
      goto LABEL_25;
    }

LABEL_24:
    v11 = NAN;
    goto LABEL_25;
  }

  if (!_UIEventHIDGetChildForceStageEvent(event))
  {
    goto LABEL_24;
  }

  IOHIDEventGetDoubleValue();
LABEL_25:
  self->_normalizedForceVelocity = v11;
  v12 = _UIEventHIDUIWindowForHIDEvent();
  if ([v12 _isSystemGestureWindow])
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = 0;
  if (self->_registeredInteractions && self->_subtype == 251)
  {
    v64 = v12;
    Type = IOHIDEventGetType();
    v17 = IOHIDEventGetSenderID();
    eventCopy = event;
    v18 = IOHIDEventGetIntegerValue();
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v19 = self->_deliveryRecordsByDescriptor;
    v20 = [(NSMapTable *)v19 countByEnumeratingWithState:&v78 objects:v84 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v79;
      if (Type)
      {
        v23 = 0;
      }

      else
      {
        v23 = v17 == 0;
      }

      v24 = v23;
      v65 = v24;
LABEL_38:
      v25 = 0;
      while (1)
      {
        if (*v79 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v26 = *(*(&v78 + 1) + 8 * v25);
        if (v26)
        {
          if (*(v26 + 8) == Type && *(v26 + 16) == v17)
          {
            v27 = *(v26 + 24);
            goto LABEL_45;
          }
        }

        else if (v65)
        {
          v27 = 0;
LABEL_45:
          if (v27 == v18)
          {
            v30 = &OBJC_IVAR____UISystemBackgroundView__strokeView;
            v66 = v26;
            v29 = [(NSMapTable *)self->_deliveryRecordsByDescriptor objectForKey:?];

            if (v26)
            {
              goto LABEL_54;
            }

            goto LABEL_53;
          }
        }

        if (v21 == ++v25)
        {
          v28 = [(NSMapTable *)v19 countByEnumeratingWithState:&v78 objects:v84 count:16];
          v21 = v28;
          if (v28)
          {
            goto LABEL_38;
          }

          break;
        }
      }
    }

    v29 = 0;
    v30 = &OBJC_IVAR____UISystemBackgroundView__strokeView;
LABEL_53:
    v31 = [_UIGenericGestureHIDEventDescriptor descriptorWithEvent:eventCopy];
    v32 = objc_opt_new();

    v66 = v31;
    [*(&self->super.super.isa + v30[502]) setObject:v32 forKey:v31];
    v29 = v32;
LABEL_54:
    if (self->_phase == 1)
    {
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v33 = self->_registeredInteractions;
      v34 = [(NSHashTable *)v33 countByEnumeratingWithState:&v74 objects:v83 count:16];
      if (v34)
      {
        v35 = v34;
        v68 = 0;
        v36 = 0;
        v37 = *v75;
        do
        {
          v38 = 0;
          do
          {
            if (*v75 != v37)
            {
              objc_enumerationMutation(v33);
            }

            v39 = *(*(&v74 + 1) + 8 * v38);
            if (v39)
            {
              if (*(v39 + 8) < 0)
              {
                _dispatchBehavior = *(v39 + 32);
              }

              else
              {
                _dispatchBehavior = [*(*(&v74 + 1) + 8 * v38) _dispatchBehavior];
                *(v39 + 32) = _dispatchBehavior;
              }
            }

            else
            {
              _dispatchBehavior = 0;
            }

            if ([(_UIPencilEvent *)self _shouldCollectInteraction:v39 consultingInteraction:1 constrainedToWindow:v14])
            {
              if (v29)
              {
                v41 = v29[2];
              }

              else
              {
                v41 = 0;
              }

              [v41 addObject:v39];
              if ((_dispatchBehavior != 0) | v36 & 1)
              {
                if (_dispatchBehavior == 1)
                {
                  v42 = v68;
                  if (!v68)
                  {
                    v42 = objc_opt_new();
                  }

                  v68 = v42;
                  [v42 addObject:v39];
                }
              }

              else
              {
                v36 = 1;
              }
            }

            ++v38;
          }

          while (v35 != v38);
          v43 = [(NSHashTable *)v33 countByEnumeratingWithState:&v74 objects:v83 count:16];
          v35 = v43;
        }

        while (v43);
      }

      else
      {
        v68 = 0;
        v36 = 0;
      }

      if (+[UIPencilInteraction preferredSqueezeAction](UIPencilInteraction, "preferredSqueezeAction") == 5 && (v36 & 1) != 0 && [v68 count])
      {
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v44 = v68;
        v45 = [v44 countByEnumeratingWithState:&v70 objects:v82 count:16];
        if (v45)
        {
          v46 = v45;
          v47 = *v71;
          do
          {
            v48 = 0;
            do
            {
              if (*v71 != v47)
              {
                objc_enumerationMutation(v44);
              }

              if (v29)
              {
                v49 = v29[2];
              }

              else
              {
                v49 = 0;
              }

              [v49 removeObject:*(*(&v70 + 1) + 8 * v48++)];
            }

            while (v46 != v48);
            v50 = [v44 countByEnumeratingWithState:&v70 objects:v82 count:16];
            v46 = v50;
          }

          while (v50);
        }
      }
    }

    v12 = v64;
    v15 = v66;
  }

  continuousEventDescriptorForDispatch = self->_continuousEventDescriptorForDispatch;
  self->_continuousEventDescriptorForDispatch = v15;

  v52 = [(NSMapTable *)self->_deliveryRecordsByDescriptor objectForKey:self->_continuousEventDescriptorForDispatch];
  v53 = v52;
  if (v52)
  {
    *(v52 + 8) = self->_phase;
    v54 = *(v52 + 16);
  }

  else
  {
    v54 = 0;
  }

  v55 = v54;
  allObjects = [v55 allObjects];
  interactionsForDispatch = self->_interactionsForDispatch;
  self->_interactionsForDispatch = allObjects;

  if (!v53)
  {
    subtype = self->_subtype;
    if ([(NSHashTable *)self->_registeredInteractions count])
    {
      if (subtype != 251)
      {
        allObjects2 = [(NSHashTable *)self->_registeredInteractions allObjects];
        v84[0] = MEMORY[0x1E69E9820];
        v84[1] = 3221225472;
        v84[2] = __89___UIPencilEvent__collectAllActiveInteractionsConstrainedToWindow_consultingInteraction___block_invoke;
        v84[3] = &unk_1E71021B8;
        v85 = 1;
        v84[4] = self;
        v84[5] = v14;
        v60 = [MEMORY[0x1E696AE18] predicateWithBlock:v84];
        v61 = [allObjects2 filteredArrayUsingPredicate:v60];

        v62 = self->_interactionsForDispatch;
        self->_interactionsForDispatch = v61;
      }
    }
  }
}

- (void)_cleanupAfterDispatch
{
  v7.receiver = self;
  v7.super_class = _UIPencilEvent;
  [(UIEvent *)&v7 _cleanupAfterDispatch];
  if (self->_continuousEventDescriptorForDispatch)
  {
    v3 = [(NSMapTable *)self->_deliveryRecordsByDescriptor objectForKey:?];
    v4 = v3;
    if (v3 && (*(v3 + 8) - 3) <= 1)
    {
      [(NSMapTable *)self->_deliveryRecordsByDescriptor removeObjectForKey:self->_continuousEventDescriptorForDispatch];
    }
  }

  self->_senderID = 0;
  self->_subtype = 0;
  self->_phase = 0;
  self->_normalizedForceVelocity = NAN;
  continuousEventDescriptorForDispatch = self->_continuousEventDescriptorForDispatch;
  self->_continuousEventDescriptorForDispatch = 0;

  interactionsForDispatch = self->_interactionsForDispatch;
  self->_interactionsForDispatch = 0;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_UIPencilEvent *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = v3;
  subtype = self->_subtype;
  v6 = @"squeeze";
  v7 = @"(unknown)";
  if (subtype == 250)
  {
    v7 = @"tap";
  }

  if (subtype != 251)
  {
    v6 = v7;
  }

  if (subtype)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"none";
  }

  [v3 appendString:v8 withName:@"subtype"];
  phase = self->_phase;
  if (phase > 4)
  {
    v10 = @"(unknown)";
  }

  else
  {
    v10 = off_1E71021E0[phase];
  }

  [v4 appendString:v10 withName:@"phase"];
  if (os_variant_has_internal_diagnostics())
  {
    v13 = [v4 appendFloat:@"normalizedForceVelocity" withName:1 decimalPrecision:self->_normalizedForceVelocity];
  }

  v11 = [v4 appendUnsignedInteger:-[NSHashTable count](self->_registeredInteractions withName:{"count"), @"registeredInteractions.count"}];

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIPencilEvent *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIPencilEvent *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:prefix];
  subtype = self->_subtype;
  v7 = @"squeeze";
  v8 = @"(unknown)";
  if (subtype == 250)
  {
    v8 = @"tap";
  }

  if (subtype != 251)
  {
    v7 = v8;
  }

  if (subtype)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"none";
  }

  [v5 appendString:v9 withName:@"subtype"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56___UIPencilEvent_descriptionBuilderWithMultilinePrefix___block_invoke;
  v14[3] = &unk_1E70F35B8;
  v10 = v5;
  v15 = v10;
  selfCopy = self;
  v11 = [v10 modifyBody:v14];
  v12 = v10;

  return v10;
}

@end