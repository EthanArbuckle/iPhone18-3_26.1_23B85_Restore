@interface _UIRemoteKeyboardsEventObserver
- (BOOL)_hasTextAlternativesForTouch:(id)a3;
- (BOOL)_isTrackingPencilTouch;
- (BOOL)_shouldTrackTouch:(id)a3;
- (_UIRemoteKeyboardsEventObserver)init;
- (_UIRemoteKeyboardsEventObserverDelegate)delegate;
- (int64_t)_preferredEventSourceForTouch:(id)a3 tracking:(id)a4 shouldUpdateOut:(BOOL *)a5;
- (void)_cancelTrackingForTouch:(id)a3;
- (void)_endTrackingForTouch:(id)a3;
- (void)_gestureRecognizer:(id)a3 didTransitionToState:(int64_t)a4;
- (void)_invalidateTrackingForTouch:(id)a3;
- (void)_markTrackingForTouch:(id)a3 withGesture:(id)a4;
- (void)_startTrackingForTouch:(id)a3;
- (void)_trackTouch:(id)a3;
- (void)_updateTrackingForTouch:(id)a3;
- (void)dealloc;
- (void)peekApplicationEvent:(id)a3;
- (void)textInputResponderDidChange:(id)a3;
@end

@implementation _UIRemoteKeyboardsEventObserver

- (_UIRemoteKeyboardsEventObserver)init
{
  v5.receiver = self;
  v5.super_class = _UIRemoteKeyboardsEventObserver;
  v2 = [(_UIRemoteKeyboardsEventObserver *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel_textInputResponderDidChange_ name:@"UITextInputResponderDidChangeNotification" object:0];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UITextInputResponderDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UIRemoteKeyboardsEventObserver;
  [(_UIRemoteKeyboardsEventObserver *)&v4 dealloc];
}

- (void)textInputResponderDidChange:(id)a3
{
  v5 = [a3 userInfo];
  v4 = [v5 objectForKey:@"UITextInputResponderCapabilitiesChangedInputResponderKey"];
  [(_UIRemoteKeyboardsEventObserver *)self setHasTextInputResponder:v4 != 0];
}

- (void)_startTrackingForTouch:(id)a3
{
  v4 = a3;
  if (!self->_touchTracker)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
    touchTracker = self->_touchTracker;
    self->_touchTracker = v5;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v4, "_touchIdentifier")}];
  v8 = [(NSMutableDictionary *)self->_touchTracker objectForKey:v7];
  if (!v8)
  {
    v8 = objc_alloc_init(_UIRKEOTouchTracking);
    -[_UIRKEOTouchTracking setType:](v8, "setType:", [v4 type]);
    [(NSMutableDictionary *)self->_touchTracker setObject:v8 forKey:v7];
  }

  [(_UIRKEOTouchTracking *)v8 setValid:1];
  [v4 majorRadius];
  [(_UIRKEOTouchTracking *)v8 setLargestObservedRadius:?];
  if (![(_UIRemoteKeyboardsEventObserver *)self keyboardIsVisible]&& ![(_UIRemoteKeyboardsEventObserver *)self hasTextInputResponder])
  {
    v12 = 0;
    v9 = [(_UIRemoteKeyboardsEventObserver *)self _preferredEventSourceForTouch:v4 tracking:v8 shouldUpdateOut:&v12];
    if (v12 == 1)
    {
      v10 = v9;
      v11 = [(_UIRemoteKeyboardsEventObserver *)self delegate];
      [v11 updateEventSource:v10 options:7];
    }
  }
}

- (int64_t)_preferredEventSourceForTouch:(id)a3 tracking:(id)a4 shouldUpdateOut:(BOOL *)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v8 view];
  if (objc_opt_respondsToSelector())
  {
    v11 = [v10 _interactionTextInputSource];
    v12 = 1;
    goto LABEL_6;
  }

  if ([objc_msgSend(v9 "beganGestureClass")] & 1) != 0 || -[_UIRemoteKeyboardsEventObserver hasTextInputResponder](self, "hasTextInputResponder") && ((objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass())))
  {
    v12 = 0;
    goto LABEL_5;
  }

  v12 = v10 != 0;
  if ([v8 type] != 2 || !v10)
  {
    if (![v8 phase])
    {
      v12 = [UIApp _isSpringBoard];
      if ([v8 type] == 2)
      {
        v11 = 3;
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_6;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = [v10 gestureRecognizers];
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v21 = v9;
    v17 = *v23;
    while (2)
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v22 + 1) + 8 * v18) delegate];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v12 = 0;
          goto LABEL_28;
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }

    v12 = 1;
LABEL_28:
    v9 = v21;
  }

  else
  {
    v12 = 1;
  }

  v11 = 3;
LABEL_6:
  if (a5)
  {
    *a5 = v12;
  }

  return v11;
}

- (BOOL)_hasTextAlternativesForTouch:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 view];
  [v3 locationInView:v4];
  v6 = v5;
  v8 = v7;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v3 view];
  v10 = [v9 interactions];

  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = *v17;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v14 _hasTextAlternativesAtLocation:{v6, v8}])
        {
          LOBYTE(v11) = 1;
          goto LABEL_12;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)_updateTrackingForTouch:(id)a3
{
  v10 = a3;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v10, "_touchIdentifier")}];
  v5 = [(NSMutableDictionary *)self->_touchTracker objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    if ([v5 valid])
    {
      [v10 majorRadius];
      v8 = v7;
      [v6 largestObservedRadius];
      if (v8 > v9)
      {
        [v10 majorRadius];
        [v6 setLargestObservedRadius:?];
      }
    }
  }
}

- (void)_endTrackingForTouch:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v4, "_touchIdentifier")}];
  v6 = [(NSMutableDictionary *)self->_touchTracker objectForKey:v5];
  v7 = v6;
  if (v6 && [v6 valid])
  {
    v17 = 0;
    v8 = [(_UIRemoteKeyboardsEventObserver *)self _preferredEventSourceForTouch:v4 tracking:v7 shouldUpdateOut:&v17];
    if (v8)
    {
      if (v8 == 3 && v17 == 1)
      {
        v9 = [(_UIRemoteKeyboardsEventObserver *)self delegate];
        v10 = v9;
        v11 = 3;
LABEL_7:
        [v9 updateEventSource:v11 options:7];
      }
    }

    else if (v17 == 1)
    {
      if ([v7 beganGestureClass])
      {
        goto LABEL_21;
      }

      v13 = [v4 view];
      if (v13)
      {
        v14 = v13;
        do
        {
          v15 = v14;
          v16 = v14[11];
          v14 = [v14 superview];
        }

        while ((v16 & 8) == 0 && v14);

        if ((v16 & 8) != 0)
        {
LABEL_21:
          [v7 largestObservedRadius];
          if (v12 <= 75.0 && ![(_UIRemoteKeyboardsEventObserver *)self _hasTextAlternativesForTouch:v4])
          {
            v9 = [(_UIRemoteKeyboardsEventObserver *)self delegate];
            v10 = v9;
            v11 = 0;
            goto LABEL_7;
          }
        }
      }
    }
  }

  [(NSMutableDictionary *)self->_touchTracker removeObjectForKey:v5];
}

- (void)_cancelTrackingForTouch:(id)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a3, "_touchIdentifier")}];
  [(NSMutableDictionary *)self->_touchTracker removeObjectForKey:v4];
}

- (void)_invalidateTrackingForTouch:(id)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a3, "_touchIdentifier")}];
  v4 = [(NSMutableDictionary *)self->_touchTracker objectForKey:v5];
  [v4 setValid:0];
}

- (void)_markTrackingForTouch:(id)a3 withGesture:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v10 = [v6 numberWithUnsignedInt:{objc_msgSend(a3, "_touchIdentifier")}];
  v8 = [(NSMutableDictionary *)self->_touchTracker objectForKey:v10];
  v9 = objc_opt_class();

  [v8 setBeganGestureClass:v9];
}

- (BOOL)_shouldTrackTouch:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  v6 = [v5 _responderWindow];

  if ([v6 _appearsInLoupe])
  {
    if ([v6 _isHostedInAnotherProcess])
    {
      v7 = [v6 _isTextEffectsWindow] ^ 1;
    }

    else
    {
      LOBYTE(v7) = [v6 _canAffectStatusBarAppearance];
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  if ([v4 type] == 2)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v8 = ![(_UIRemoteKeyboardsEventObserver *)self _isTrackingPencilTouch];
  }

  return v7 & v8;
}

- (void)_trackTouch:(id)a3
{
  v14 = a3;
  v4 = [v14 phase];
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      [(_UIRemoteKeyboardsEventObserver *)self _endTrackingForTouch:v14];
      goto LABEL_11;
    }

    v5 = v14;
    if (v4 == 4)
    {
      [(_UIRemoteKeyboardsEventObserver *)self _cancelTrackingForTouch:v14];
      goto LABEL_11;
    }
  }

  else if (v4)
  {
    v5 = v14;
    if (v4 == 1)
    {
      [(_UIRemoteKeyboardsEventObserver *)self _updateTrackingForTouch:v14];
LABEL_11:
      v5 = v14;
    }
  }

  else
  {
    v6 = [(_UIRemoteKeyboardsEventObserver *)self _shouldTrackTouch:v14];
    v5 = v14;
    if (v6)
    {
      [(_UIRemoteKeyboardsEventObserver *)self _startTrackingForTouch:v14];
      goto LABEL_11;
    }
  }

  if ([v5 type] == 2 && (!objc_msgSend(v14, "phase") || objc_msgSend(v14, "phase") == 1))
  {
    v7 = [v14 window];
    if ([v7 _isTextEffectsWindow])
    {
      v8 = [v14 view];
      v9 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v10 = [v9 inputViews];
      v11 = [v10 inputAccessoryView];
      v12 = [v8 isDescendantOfView:v11];

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

- (void)peekApplicationEvent:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![v4 type])
  {
    v5 = [(UIEvent *)v4 _eventObservers];
    v6 = [v5 containsObject:self];

    if ((v6 & 1) == 0)
    {
      [(UIEvent *)v4 _addEventObserver:?];
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [v4 allTouches];
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v7);
          }

          [(_UIRemoteKeyboardsEventObserver *)self _trackTouch:*(*(&v12 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)_gestureRecognizer:(id)a3 didTransitionToState:(int64_t)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (a4 == 1)
  {
    if ([v6 _isGestureType:8])
    {
      v24 = 0uLL;
      v25 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      v8 = [v7 _allActiveTouches];
      v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
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
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v22 + 1) + 8 * i);
            if (![v13 type])
            {
              [(_UIRemoteKeyboardsEventObserver *)self _invalidateTrackingForTouch:v13];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
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
      v8 = [v7 _allActiveTouches];
      v14 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
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
              objc_enumerationMutation(v8);
            }

            [(_UIRemoteKeyboardsEventObserver *)self _markTrackingForTouch:*(*(&v18 + 1) + 8 * j) withGesture:v7];
          }

          v15 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
        }

        while (v15);
      }
    }
  }
}

@end