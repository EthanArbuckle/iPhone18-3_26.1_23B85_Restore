@interface _UIRemoteKeyboardsEventObserver
- (BOOL)_hasTextAlternativesForTouch:(id)touch;
- (BOOL)_isTrackingPencilTouch;
- (BOOL)_shouldTrackTouch:(id)touch;
- (_UIRemoteKeyboardsEventObserver)init;
- (_UIRemoteKeyboardsEventObserverDelegate)delegate;
- (int64_t)_preferredEventSourceForTouch:(id)touch tracking:(id)tracking shouldUpdateOut:(BOOL *)out;
- (void)_cancelTrackingForTouch:(id)touch;
- (void)_endTrackingForTouch:(id)touch;
- (void)_gestureRecognizer:(id)recognizer didTransitionToState:(int64_t)state;
- (void)_invalidateTrackingForTouch:(id)touch;
- (void)_markTrackingForTouch:(id)touch withGesture:(id)gesture;
- (void)_startTrackingForTouch:(id)touch;
- (void)_trackTouch:(id)touch;
- (void)_updateTrackingForTouch:(id)touch;
- (void)dealloc;
- (void)peekApplicationEvent:(id)event;
- (void)textInputResponderDidChange:(id)change;
@end

@implementation _UIRemoteKeyboardsEventObserver

- (_UIRemoteKeyboardsEventObserver)init
{
  v5.receiver = self;
  v5.super_class = _UIRemoteKeyboardsEventObserver;
  v2 = [(_UIRemoteKeyboardsEventObserver *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_textInputResponderDidChange_ name:@"UITextInputResponderDidChangeNotification" object:0];
  }

  return v2;
}

- (BOOL)_isTrackingPencilTouch
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  touchTracker = self->_touchTracker;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57___UIRemoteKeyboardsEventObserver__isTrackingPencilTouch__block_invoke;
  v5[3] = &unk_1E7105CA0;
  v5[4] = &v6;
  [(NSMutableDictionary *)touchTracker enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (_UIRemoteKeyboardsEventObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UITextInputResponderDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UIRemoteKeyboardsEventObserver;
  [(_UIRemoteKeyboardsEventObserver *)&v4 dealloc];
}

- (void)textInputResponderDidChange:(id)change
{
  userInfo = [change userInfo];
  v4 = [userInfo objectForKey:@"UITextInputResponderCapabilitiesChangedInputResponderKey"];
  [(_UIRemoteKeyboardsEventObserver *)self setHasTextInputResponder:v4 != 0];
}

- (void)_startTrackingForTouch:(id)touch
{
  touchCopy = touch;
  if (!self->_touchTracker)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
    touchTracker = self->_touchTracker;
    self->_touchTracker = v5;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(touchCopy, "_touchIdentifier")}];
  v8 = [(NSMutableDictionary *)self->_touchTracker objectForKey:v7];
  if (!v8)
  {
    v8 = objc_alloc_init(_UIRKEOTouchTracking);
    -[_UIRKEOTouchTracking setType:](v8, "setType:", [touchCopy type]);
    [(NSMutableDictionary *)self->_touchTracker setObject:v8 forKey:v7];
  }

  [(_UIRKEOTouchTracking *)v8 setValid:1];
  [touchCopy majorRadius];
  [(_UIRKEOTouchTracking *)v8 setLargestObservedRadius:?];
  if (![(_UIRemoteKeyboardsEventObserver *)self keyboardIsVisible]&& ![(_UIRemoteKeyboardsEventObserver *)self hasTextInputResponder])
  {
    v12 = 0;
    v9 = [(_UIRemoteKeyboardsEventObserver *)self _preferredEventSourceForTouch:touchCopy tracking:v8 shouldUpdateOut:&v12];
    if (v12 == 1)
    {
      v10 = v9;
      delegate = [(_UIRemoteKeyboardsEventObserver *)self delegate];
      [delegate updateEventSource:v10 options:7];
    }
  }
}

- (int64_t)_preferredEventSourceForTouch:(id)touch tracking:(id)tracking shouldUpdateOut:(BOOL *)out
{
  v27 = *MEMORY[0x1E69E9840];
  touchCopy = touch;
  trackingCopy = tracking;
  view = [touchCopy view];
  if (objc_opt_respondsToSelector())
  {
    _interactionTextInputSource = [view _interactionTextInputSource];
    _isSpringBoard = 1;
    goto LABEL_6;
  }

  if ([objc_msgSend(trackingCopy "beganGestureClass")] & 1) != 0 || -[_UIRemoteKeyboardsEventObserver hasTextInputResponder](self, "hasTextInputResponder") && ((objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass())))
  {
    _isSpringBoard = 0;
    goto LABEL_5;
  }

  _isSpringBoard = view != 0;
  if ([touchCopy type] != 2 || !view)
  {
    if (![touchCopy phase])
    {
      _isSpringBoard = [UIApp _isSpringBoard];
      if ([touchCopy type] == 2)
      {
        _interactionTextInputSource = 3;
      }

      else
      {
        _interactionTextInputSource = 0;
      }

      goto LABEL_6;
    }

LABEL_5:
    _interactionTextInputSource = 0;
    goto LABEL_6;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  gestureRecognizers = [view gestureRecognizers];
  v15 = [gestureRecognizers countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v21 = trackingCopy;
    v17 = *v23;
    while (2)
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(gestureRecognizers);
        }

        delegate = [*(*(&v22 + 1) + 8 * v18) delegate];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          _isSpringBoard = 0;
          goto LABEL_28;
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [gestureRecognizers countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }

    _isSpringBoard = 1;
LABEL_28:
    trackingCopy = v21;
  }

  else
  {
    _isSpringBoard = 1;
  }

  _interactionTextInputSource = 3;
LABEL_6:
  if (out)
  {
    *out = _isSpringBoard;
  }

  return _interactionTextInputSource;
}

- (BOOL)_hasTextAlternativesForTouch:(id)touch
{
  v21 = *MEMORY[0x1E69E9840];
  touchCopy = touch;
  view = [touchCopy view];
  [touchCopy locationInView:view];
  v6 = v5;
  v8 = v7;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  view2 = [touchCopy view];
  interactions = [view2 interactions];

  v11 = [interactions countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = *v17;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(interactions);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v14 _hasTextAlternativesAtLocation:{v6, v8}])
        {
          LOBYTE(v11) = 1;
          goto LABEL_12;
        }
      }

      v11 = [interactions countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v11;
}

- (void)_updateTrackingForTouch:(id)touch
{
  touchCopy = touch;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(touchCopy, "_touchIdentifier")}];
  v5 = [(NSMutableDictionary *)self->_touchTracker objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    if ([v5 valid])
    {
      [touchCopy majorRadius];
      v8 = v7;
      [v6 largestObservedRadius];
      if (v8 > v9)
      {
        [touchCopy majorRadius];
        [v6 setLargestObservedRadius:?];
      }
    }
  }
}

- (void)_endTrackingForTouch:(id)touch
{
  touchCopy = touch;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(touchCopy, "_touchIdentifier")}];
  v6 = [(NSMutableDictionary *)self->_touchTracker objectForKey:v5];
  v7 = v6;
  if (v6 && [v6 valid])
  {
    v17 = 0;
    v8 = [(_UIRemoteKeyboardsEventObserver *)self _preferredEventSourceForTouch:touchCopy tracking:v7 shouldUpdateOut:&v17];
    if (v8)
    {
      if (v8 == 3 && v17 == 1)
      {
        delegate = [(_UIRemoteKeyboardsEventObserver *)self delegate];
        v10 = delegate;
        v11 = 3;
LABEL_7:
        [delegate updateEventSource:v11 options:7];
      }
    }

    else if (v17 == 1)
    {
      if ([v7 beganGestureClass])
      {
        goto LABEL_21;
      }

      view = [touchCopy view];
      if (view)
      {
        superview = view;
        do
        {
          v15 = superview;
          v16 = superview[11];
          superview = [superview superview];
        }

        while ((v16 & 8) == 0 && superview);

        if ((v16 & 8) != 0)
        {
LABEL_21:
          [v7 largestObservedRadius];
          if (v12 <= 75.0 && ![(_UIRemoteKeyboardsEventObserver *)self _hasTextAlternativesForTouch:touchCopy])
          {
            delegate = [(_UIRemoteKeyboardsEventObserver *)self delegate];
            v10 = delegate;
            v11 = 0;
            goto LABEL_7;
          }
        }
      }
    }
  }

  [(NSMutableDictionary *)self->_touchTracker removeObjectForKey:v5];
}

- (void)_cancelTrackingForTouch:(id)touch
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(touch, "_touchIdentifier")}];
  [(NSMutableDictionary *)self->_touchTracker removeObjectForKey:v4];
}

- (void)_invalidateTrackingForTouch:(id)touch
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(touch, "_touchIdentifier")}];
  v4 = [(NSMutableDictionary *)self->_touchTracker objectForKey:v5];
  [v4 setValid:0];
}

- (void)_markTrackingForTouch:(id)touch withGesture:(id)gesture
{
  v6 = MEMORY[0x1E696AD98];
  gestureCopy = gesture;
  v10 = [v6 numberWithUnsignedInt:{objc_msgSend(touch, "_touchIdentifier")}];
  v8 = [(NSMutableDictionary *)self->_touchTracker objectForKey:v10];
  v9 = objc_opt_class();

  [v8 setBeganGestureClass:v9];
}

- (BOOL)_shouldTrackTouch:(id)touch
{
  touchCopy = touch;
  view = [touchCopy view];
  _responderWindow = [view _responderWindow];

  if ([_responderWindow _appearsInLoupe])
  {
    if ([_responderWindow _isHostedInAnotherProcess])
    {
      v7 = [_responderWindow _isTextEffectsWindow] ^ 1;
    }

    else
    {
      LOBYTE(v7) = [_responderWindow _canAffectStatusBarAppearance];
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  if ([touchCopy type] == 2)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v8 = ![(_UIRemoteKeyboardsEventObserver *)self _isTrackingPencilTouch];
  }

  return v7 & v8;
}

- (void)_trackTouch:(id)touch
{
  touchCopy = touch;
  phase = [touchCopy phase];
  if (phase > 2)
  {
    if (phase == 3)
    {
      [(_UIRemoteKeyboardsEventObserver *)self _endTrackingForTouch:touchCopy];
      goto LABEL_11;
    }

    v5 = touchCopy;
    if (phase == 4)
    {
      [(_UIRemoteKeyboardsEventObserver *)self _cancelTrackingForTouch:touchCopy];
      goto LABEL_11;
    }
  }

  else if (phase)
  {
    v5 = touchCopy;
    if (phase == 1)
    {
      [(_UIRemoteKeyboardsEventObserver *)self _updateTrackingForTouch:touchCopy];
LABEL_11:
      v5 = touchCopy;
    }
  }

  else
  {
    v6 = [(_UIRemoteKeyboardsEventObserver *)self _shouldTrackTouch:touchCopy];
    v5 = touchCopy;
    if (v6)
    {
      [(_UIRemoteKeyboardsEventObserver *)self _startTrackingForTouch:touchCopy];
      goto LABEL_11;
    }
  }

  if ([v5 type] == 2 && (!objc_msgSend(touchCopy, "phase") || objc_msgSend(touchCopy, "phase") == 1))
  {
    window = [touchCopy window];
    if ([window _isTextEffectsWindow])
    {
      view = [touchCopy view];
      v9 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      inputViews = [v9 inputViews];
      inputAccessoryView = [inputViews inputAccessoryView];
      v12 = [view isDescendantOfView:inputAccessoryView];

      if (!v12)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    v13 = +[UIKeyboardImpl activeInstance];
    [v13 updateIdleDetection:3];
  }

LABEL_20:
}

- (void)peekApplicationEvent:(id)event
{
  v17 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if (![eventCopy type])
  {
    _eventObservers = [(UIEvent *)eventCopy _eventObservers];
    v6 = [_eventObservers containsObject:self];

    if ((v6 & 1) == 0)
    {
      [(UIEvent *)eventCopy _addEventObserver:?];
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    allTouches = [eventCopy allTouches];
    v8 = [allTouches countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(allTouches);
          }

          [(_UIRemoteKeyboardsEventObserver *)self _trackTouch:*(*(&v12 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [allTouches countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)_gestureRecognizer:(id)recognizer didTransitionToState:(int64_t)state
{
  v28 = *MEMORY[0x1E69E9840];
  recognizerCopy = recognizer;
  v7 = recognizerCopy;
  if (state == 1)
  {
    if ([recognizerCopy _isGestureType:8])
    {
      v24 = 0uLL;
      v25 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      _allActiveTouches = [v7 _allActiveTouches];
      v9 = [_allActiveTouches countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v23;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v23 != v11)
            {
              objc_enumerationMutation(_allActiveTouches);
            }

            v13 = *(*(&v22 + 1) + 8 * i);
            if (![v13 type])
            {
              [(_UIRemoteKeyboardsEventObserver *)self _invalidateTrackingForTouch:v13];
            }
          }

          v10 = [_allActiveTouches countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v10);
      }
    }

    else
    {
      v20 = 0uLL;
      v21 = 0uLL;
      *(&v18 + 1) = 0;
      v19 = 0uLL;
      _allActiveTouches = [v7 _allActiveTouches];
      v14 = [_allActiveTouches countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v19;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v19 != v16)
            {
              objc_enumerationMutation(_allActiveTouches);
            }

            [(_UIRemoteKeyboardsEventObserver *)self _markTrackingForTouch:*(*(&v18 + 1) + 8 * j) withGesture:v7];
          }

          v15 = [_allActiveTouches countByEnumeratingWithState:&v18 objects:v26 count:16];
        }

        while (v15);
      }
    }
  }
}

@end