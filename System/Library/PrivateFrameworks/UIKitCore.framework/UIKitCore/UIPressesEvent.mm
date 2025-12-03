@interface UIPressesEvent
- (BOOL)_sendEventToGestureRecognizer:(id)recognizer;
- (NSSet)pressesForGestureRecognizer:(UIGestureRecognizer *)gesture;
- (NSString)description;
- (id)_allPresses;
- (id)_allWindows;
- (id)_cloneEvent;
- (id)_directionalPressWithStrongestForce;
- (id)_gestureRecognizersForWindow:(id)window;
- (id)_init;
- (id)_pressesForGestureRecognizer:(id)recognizer withPhase:(int64_t)phase;
- (id)_pressesForPhase:(int64_t)phase;
- (id)_pressesForResponder:(id)responder withPhase:(int64_t)phase;
- (id)_pressesForWindow:(id)window;
- (id)_respondersForWindow:(id)window;
- (id)_terminalRegistrantsForPressType:(int64_t)type;
- (int64_t)_modifierFlags;
- (void)_addGesturesForPress:(id)press;
- (void)_addPress:(id)press forDelayedDelivery:(BOOL)delivery;
- (void)_cancelComponents:(id)components;
- (void)_registerForTerminalEvent:(id)event;
- (void)_removeComponents:(id)components;
- (void)_removeGestureRecognizer:(id)recognizer fromComponents:(id)components;
- (void)_removePress:(id)press;
@end

@implementation UIPressesEvent

- (id)_allPresses
{
  v2 = [(NSMutableSet *)self->_allPresses copy];

  return v2;
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = UIPressesEvent;
  _init = [(UIEvent *)&v6 _init];
  if (_init)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4 = _init[16];
    _init[16] = v3;
  }

  return _init;
}

- (int64_t)_modifierFlags
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->super._hasValidModifiers)
  {
    v13.receiver = self;
    v13.super_class = UIPressesEvent;
    return [(UIEvent *)&v13 _modifierFlags];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = self->_allPresses;
    v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v2 = 0;
      v6 = *v10;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v2 |= [*(*(&v9 + 1) + 8 * i) modifierFlags];
        }

        v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
      }

      while (v5);
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (id)_cloneEvent
{
  v7.receiver = self;
  v7.super_class = UIPressesEvent;
  _cloneEvent = [(UIEvent *)&v7 _cloneEvent];
  v4 = [(NSMutableSet *)self->_allPresses mutableCopy];
  v5 = _cloneEvent[16];
  _cloneEvent[16] = v4;

  return _cloneEvent;
}

- (id)_allWindows
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_allPresses;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

        window = [*(*(&v11 + 1) + 8 * i) window];
        if (window)
        {
          [v3 addObject:window];
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSSet)pressesForGestureRecognizer:(UIGestureRecognizer *)gesture
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = gesture;
  v5 = [MEMORY[0x1E695DFA8] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  _allPresses = [(UIPressesEvent *)self _allPresses];
  v7 = [_allPresses countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(_allPresses);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        gestureRecognizers = [v11 gestureRecognizers];
        v13 = [gestureRecognizers containsObject:v4];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [_allPresses countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

- (id)_pressesForWindow:(id)window
{
  v19 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  v5 = [MEMORY[0x1E695DFA8] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_allPresses;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

        v11 = *(*(&v14 + 1) + 8 * i);
        window = [v11 window];

        if (window == windowCopy)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_respondersForWindow:(id)window
{
  v18 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  v5 = [MEMORY[0x1E695DFA8] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(UIPressesEvent *)self _pressesForWindow:windowCopy, 0];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        responder = [*(*(&v13 + 1) + 8 * i) responder];
        if (responder)
        {
          [v5 addObject:responder];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_pressesForPhase:(int64_t)phase
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_allPresses;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 phase] == phase && (objc_msgSend(v10, "isDelayed") & 1) == 0)
        {
          if (!v7)
          {
            v7 = [MEMORY[0x1E695DFA8] set];
          }

          [v7 addObject:v10];
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_pressesForResponder:(id)responder withPhase:(int64_t)phase
{
  v21 = *MEMORY[0x1E69E9840];
  responderCopy = responder;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [(UIPressesEvent *)self _pressesForPhase:phase, 0];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        responder = [v13 responder];

        if (responder == responderCopy)
        {
          if (!v10)
          {
            v10 = [MEMORY[0x1E695DFA8] set];
          }

          [v10 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_pressesForGestureRecognizer:(id)recognizer withPhase:(int64_t)phase
{
  v20 = *MEMORY[0x1E69E9840];
  recognizerCopy = recognizer;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(UIPressesEvent *)self pressesForGestureRecognizer:recognizerCopy, 0];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([v13 phase] == phase)
        {
          if (!v10)
          {
            v10 = [MEMORY[0x1E695DFA8] set];
          }

          [v10 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_gestureRecognizersForWindow:(id)window
{
  v18 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(UIPressesEvent *)self _pressesForWindow:windowCopy, 0];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        gestureRecognizers = [*(*(&v13 + 1) + 8 * i) gestureRecognizers];
        if (gestureRecognizers)
        {
          if (!v8)
          {
            v8 = [MEMORY[0x1E695DFA8] set];
          }

          [v8 addObjectsFromArray:gestureRecognizers];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_removeGestureRecognizer:(id)recognizer fromComponents:(id)components
{
  v20 = *MEMORY[0x1E69E9840];
  recognizerCopy = recognizer;
  componentsCopy = components;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [componentsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(componentsCopy);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([v13 _eventComponentType] != 1)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"UIPressesEvent.m" lineNumber:211 description:{@"Wrong component type for event: %@; component: %@", self, v13}];
        }

        [v13 _removeGestureRecognizer:recognizerCopy];
      }

      v10 = [componentsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)_addPress:(id)press forDelayedDelivery:(BOOL)delivery
{
  pressCopy = press;
  [(NSMutableSet *)self->_allPresses addObject:pressCopy];
  if (![pressCopy phase] && !delivery)
  {
    [(UIPressesEvent *)self _addGesturesForPress:pressCopy];
  }
}

- (void)_addGesturesForPress:(id)press
{
  v22 = *MEMORY[0x1E69E9840];
  pressCopy = press;
  responder = [pressCopy responder];
  if (responder)
  {
    v6 = responder;
    array = 0;
    do
    {
      if (objc_opt_respondsToSelector())
      {
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        gestureRecognizers = [v6 gestureRecognizers];
        v9 = [gestureRecognizers countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v18;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v18 != v11)
              {
                objc_enumerationMutation(gestureRecognizers);
              }

              v13 = *(*(&v17 + 1) + 8 * i);
              if ([v13 isEnabled] && objc_msgSend(v13, "state") <= 2 && -[UIGestureRecognizer _shouldReceivePress:forPressesEvent:](v13, pressCopy, self))
              {
                if (!array)
                {
                  array = [MEMORY[0x1E695DF70] array];
                }

                [array addObject:v13];
              }
            }

            v10 = [gestureRecognizers countByEnumeratingWithState:&v17 objects:v21 count:16];
          }

          while (v10);
        }

        if (_IsKindOfUIView(v6))
        {
          nextResponder = v6;
          [pressCopy type];
          deliversPressesForGesturesToSuperview = [nextResponder deliversPressesForGesturesToSuperview];

          if (!deliversPressesForGesturesToSuperview)
          {
            break;
          }
        }
      }

      nextResponder = [v6 nextResponder];

      v6 = nextResponder;
    }

    while (nextResponder);
  }

  else
  {
    nextResponder = 0;
    array = 0;
  }

  v16 = [array copy];
  [pressCopy setGestureRecognizers:v16];
}

- (void)_removePress:(id)press
{
  pressCopy = press;
  [pressCopy setResponder:0];
  [pressCopy setWindow:0];
  [(NSMutableSet *)self->_allPresses removeObject:pressCopy];
}

- (id)_directionalPressWithStrongestForce
{
  v19 = *MEMORY[0x1E69E9840];
  allPresses = [(UIPressesEvent *)self allPresses];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [allPresses countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(allPresses);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if ([v8 _isDirectionalPress])
        {
          [v8 force];
          v10 = v9;
          [v5 force];
          if (v10 > v11)
          {
            v12 = v8;

            v5 = v12;
          }
        }
      }

      v4 = [allPresses countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  allPresses = [(UIPressesEvent *)self allPresses];
  v6 = [v3 stringWithFormat:@"<%@ : %p presses: %@>", v4, self, allPresses];

  return v6;
}

- (void)_registerForTerminalEvent:(id)event
{
  eventCopy = event;
  v10 = eventCopy;
  if (!eventCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIPressesEvent.m" lineNumber:286 description:{@"Invalid parameter not satisfying: %@", @"registrant"}];

    eventCopy = 0;
  }

  terminalEventRegistrants = self->_terminalEventRegistrants;
  if (!terminalEventRegistrants)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v8 = self->_terminalEventRegistrants;
    self->_terminalEventRegistrants = weakObjectsHashTable;

    eventCopy = v10;
    terminalEventRegistrants = self->_terminalEventRegistrants;
  }

  [(NSHashTable *)terminalEventRegistrants addObject:eventCopy];
}

- (id)_terminalRegistrantsForPressType:(int64_t)type
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = [MEMORY[0x1E695DFA8] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_terminalEventRegistrants;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        allowedPressTypes = [v10 allowedPressTypes];
        v12 = [MEMORY[0x1E696AD98] numberWithInteger:type];
        v13 = [allowedPressTypes containsObject:v12];

        if (v13)
        {
          [v15 addObject:v10];
        }
      }

      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v15;
}

- (BOOL)_sendEventToGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if ([recognizerCopy state] > 2)
  {
    v7 = 0;
  }

  else
  {
    v5 = [(UIPressesEvent *)self _pressesForGestureRecognizer:recognizerCopy withPhase:0];
    v6 = [v5 count];
    v7 = v6 != 0;
    if (v6)
    {
      [recognizerCopy _componentsBegan:v5 withEvent:self];
    }

    v8 = [(UIPressesEvent *)self _pressesForGestureRecognizer:recognizerCopy withPhase:1];

    if ([v8 count])
    {
      [recognizerCopy _componentsChanged:v8 withEvent:self];
      v7 = 1;
    }

    v9 = [(UIPressesEvent *)self _pressesForGestureRecognizer:recognizerCopy withPhase:3];

    if ([v9 count])
    {
      [recognizerCopy _componentsEnded:v9 withEvent:self];
      v7 = 1;
    }

    v10 = [(UIPressesEvent *)self _pressesForGestureRecognizer:recognizerCopy withPhase:4];

    if ([v10 count])
    {
      [recognizerCopy _componentsCancelled:v10 withEvent:self];
      v7 = 1;
    }
  }

  return v7;
}

- (void)_removeComponents:(id)components
{
  v17 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [componentsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(componentsCopy);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 _eventComponentType] != 1)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"UIPressesEvent.m" lineNumber:345 description:{@"Unexpected event component type: %ld", objc_msgSend(v10, "_eventComponentType")}];
        }

        [(UIPressesEvent *)self _removePress:v10];
      }

      v7 = [componentsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_cancelComponents:(id)components
{
  v55 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __36__UIPressesEvent__cancelComponents___block_invoke;
  v50[3] = &unk_1E7115D70;
  v50[4] = self;
  v50[5] = a2;
  v32 = [componentsCopy objectsPassingTest:v50];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(componentsCopy, "count")}];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v7 = componentsCopy;
  v8 = [v7 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v47;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v47 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v46 + 1) + 8 * i);
        phase = [v12 phase];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __36__UIPressesEvent__cancelComponents___block_invoke_2;
        aBlock[3] = &unk_1E70F32F0;
        aBlock[4] = v12;
        aBlock[5] = phase;
        v14 = _Block_copy(aBlock);
        [v6 addObject:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v9);
  }

  [UIApp _cancelViewProcessingOfTouchesOrPresses:v7 withEvent:self sendingCancelToViewsOfTouchesOrPresses:v32];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v42;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v42 != v18)
        {
          objc_enumerationMutation(v15);
        }

        (*(*(*(&v41 + 1) + 8 * j) + 16))();
      }

      v17 = [v15 countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v17);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v20 = v7;
  v21 = [v20 countByEnumeratingWithState:&v37 objects:v52 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v38;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v38 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v37 + 1) + 8 * k);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        gestureRecognizers = [v25 gestureRecognizers];
        v27 = [gestureRecognizers countByEnumeratingWithState:&v33 objects:v51 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v34;
          do
          {
            for (m = 0; m != v28; ++m)
            {
              if (*v34 != v29)
              {
                objc_enumerationMutation(gestureRecognizers);
              }

              [(UIGestureRecognizer *)*(*(&v33 + 1) + 8 * m) _pressWasCancelled:v25];
            }

            v28 = [gestureRecognizers countByEnumeratingWithState:&v33 objects:v51 count:16];
          }

          while (v28);
        }

        _gestureDelayedEventComponentDispatcher = [UIApp _gestureDelayedEventComponentDispatcher];
        [(UIGestureDelayedEventComponentDispatcher *)_gestureDelayedEventComponentDispatcher removePress:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v37 objects:v52 count:16];
    }

    while (v22);
  }
}

BOOL __36__UIPressesEvent__cancelComponents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _eventComponentType] != 1)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"UIPressesEvent.m" lineNumber:353 description:{@"Unexpected event component type: %ld", objc_msgSend(v3, "_eventComponentType")}];
  }

  v4 = [UIApp _gestureDelayedEventComponentDispatcher];
  v5 = !-[UIGestureDelayedEventComponentDispatcher pressesBeganWasDelayedForPress:](v4, v3) && [v3 phase] != 0;

  return v5;
}

@end