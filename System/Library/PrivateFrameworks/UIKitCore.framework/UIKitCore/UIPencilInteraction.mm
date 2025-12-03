@interface UIPencilInteraction
- (UIPencilHoverPose)_hoverPoseForEvent:(uint64_t)event;
- (UIPencilInteraction)init;
- (UIPencilInteraction)initWithDelegate:(id)delegate;
- (UIView)view;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)delegate;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (uint64_t)_internalShouldReceiveEvent:(unsigned __int8 *)event;
- (uint64_t)_updateLastKnownHoverStateFromGesture:(uint64_t)result;
- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)_handleHoverGestureRecognizer:(id)recognizer;
- (void)_installHoverGestureIfNeeded;
- (void)_performCallbacksWithEvent:(_BYTE *)event;
- (void)_registerWithEventIfAble;
- (void)_sendSqueezeFromEvent:(_BYTE *)event;
- (void)_sendTapFromEvent:(_BYTE *)event;
- (void)_uninstallHoverGestureIfNeeded;
- (void)_unregisterFromEvent;
- (void)_willMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)_windowDidMoveToScene:(id)scene;
- (void)_windowWillMoveToScene:(id)scene;
- (void)dealloc;
- (void)didMoveToView:(id)view;
- (void)setDelegate:(id)delegate;
- (void)setEnabled:(BOOL)enabled;
- (void)willMoveToView:(id)view;
@end

@implementation UIPencilInteraction

- (UIPencilInteraction)init
{
  v4.receiver = self;
  v4.super_class = UIPencilInteraction;
  result = [(UIPencilInteraction *)&v4 init];
  if (result)
  {
    result->_enabled = 1;
    v3 = MEMORY[0x1E69792C8];
    *&result->_lastKnownHoverLocation3D.x = *MEMORY[0x1E69792C8];
    result->_lastKnownHoverLocation3D.z = *(v3 + 16);
  }

  return result;
}

- (UIPencilInteraction)initWithDelegate:(id)delegate
{
  v4 = [(UIPencilInteraction *)self init];
  v5 = v4;
  if (v4)
  {
    [(UIPencilInteraction *)v4 setDelegate:delegate];
  }

  return v5;
}

- (void)dealloc
{
  [(UIPencilInteraction *)self _unregisterFromEvent];
  v3.receiver = self;
  v3.super_class = UIPencilInteraction;
  [(UIPencilInteraction *)&v3 dealloc];
}

- (void)_unregisterFromEvent
{
  v5[2] = *MEMORY[0x1E69E9840];
  if (self)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v5[0] = @"_UIWindowWillMoveToSceneNotification";
    v5[1] = @"_UIWindowDidMoveToSceneNotification";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
    [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:self names:v3];

    *(self + 8) &= ~2u;
    [*(self + 24) invalidate];
    v4 = *(self + 24);
    *(self + 24) = 0;
  }
}

- (void)setDelegate:(id)delegate
{
  if (objc_opt_respondsToSelector())
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  *&self->_interactionFlags = *&self->_interactionFlags & 0xFB | v5;
  if (objc_opt_respondsToSelector())
  {
    v6 = 8;
  }

  else
  {
    v6 = 0;
  }

  *&self->_interactionFlags = *&self->_interactionFlags & 0xF7 | v6;
  if (objc_opt_respondsToSelector())
  {
    v7 = 16;
  }

  else
  {
    v7 = 0;
  }

  *&self->_interactionFlags = *&self->_interactionFlags & 0xEF | v7;
  if (objc_opt_respondsToSelector())
  {
    v8 = 32;
  }

  else
  {
    v8 = 0;
  }

  *&self->_interactionFlags = *&self->_interactionFlags & 0xDF | v8;
  if (objc_opt_respondsToSelector())
  {
    v9 = 64;
  }

  else
  {
    v9 = 0;
  }

  *&self->_interactionFlags = *&self->_interactionFlags & 0xBF | v9;

  objc_storeWeak(&self->_delegate, delegate);
}

- (void)_sendTapFromEvent:(_BYTE *)event
{
  v61 = *MEMORY[0x1E69E9840];
  if (event)
  {
    delegate = [event delegate];
    if ((event[8] & 8) != 0)
    {
      v6 = [(UIPencilInteraction *)event _hoverPoseForEvent:a2];
      objc_opt_self();
      v7 = [UIPencilInteractionTap alloc];
      [a2 timestamp];
      v9 = [(UIPencilInteractionTap *)v7 _initWithTimestamp:v6 hoverPose:v8];

      CategoryCachedImpl = __UILogGetCategoryCachedImpl("PencilInteraction", &_MergedGlobals_1267);
      if (*CategoryCachedImpl)
      {
        v17 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          succinctDescription = [v9 succinctDescription];
          v19 = MEMORY[0x1E696AEC0];
          eventCopy = event;
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          eventCopy = [v19 stringWithFormat:@"<%@: %p>", v22, eventCopy];

          v24 = eventCopy;
          v25 = delegate;
          if (v25)
          {
            v26 = MEMORY[0x1E696AEC0];
            v27 = objc_opt_class();
            v28 = NSStringFromClass(v27);
            v29 = [v26 stringWithFormat:@"<%@: %p>", v28, v25];
          }

          else
          {
            v29 = @"(nil)";
          }

          *buf = 138412802;
          v56 = succinctDescription;
          v57 = 2112;
          v58 = v24;
          v59 = 2112;
          v60 = v29;
          _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "Calling pencilInteraction:didReceiveTap: %@; interaction: %@; delegate: %@", buf, 0x20u);
        }
      }

      [delegate pencilInteraction:event didReceiveTap:v9];
    }

    else
    {
      if ((event[8] & 0x10) == 0)
      {
        if ((event[8] & 4) != 0)
        {
          v5 = __UILogGetCategoryCachedImpl("PencilInteraction", &qword_1ED4A0760);
          if (*v5)
          {
            v43 = *(v5 + 8);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              v44 = MEMORY[0x1E696AEC0];
              eventCopy2 = event;
              v46 = objc_opt_class();
              v47 = NSStringFromClass(v46);
              eventCopy2 = [v44 stringWithFormat:@"<%@: %p>", v47, eventCopy2];

              v49 = eventCopy2;
              v50 = delegate;
              if (v50)
              {
                v51 = MEMORY[0x1E696AEC0];
                v52 = objc_opt_class();
                v53 = NSStringFromClass(v52);
                v54 = [v51 stringWithFormat:@"<%@: %p>", v53, v50];
              }

              else
              {
                v54 = @"(nil)";
              }

              *buf = 138412546;
              v56 = v49;
              v57 = 2112;
              v58 = v54;
              _os_log_impl(&dword_188A29000, v43, OS_LOG_TYPE_ERROR, "Calling pencilInteractionDidTap: %@; delegate: %@", buf, 0x16u);
            }
          }

          [delegate pencilInteractionDidTap:event];
        }

        goto LABEL_15;
      }

      v9 = [(UIPencilInteraction *)event _hoverPoseForEvent:a2];
      v11 = [_UIPencilHoverState _hoverStateFromHoverPose:v9];
      objc_opt_self();
      v12 = [_UIPencilInteractionTap alloc];
      [a2 timestamp];
      if (v12)
      {
        v14 = [(UIPencilInteractionTap *)v12 _initWithTimestamp:v11 hoverPose:v13];
        v15 = v14;
        if (v14)
        {
          objc_storeStrong(v14 + 3, v11);
        }
      }

      else
      {
        v15 = 0;
      }

      v16 = __UILogGetCategoryCachedImpl("PencilInteraction", &qword_1ED4A0758);
      if (*v16)
      {
        v30 = *(v16 + 8);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          succinctDescription2 = [v15 succinctDescription];
          v32 = MEMORY[0x1E696AEC0];
          eventCopy3 = event;
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
          eventCopy3 = [v32 stringWithFormat:@"<%@: %p>", v35, eventCopy3];

          v37 = eventCopy3;
          v38 = delegate;
          if (v38)
          {
            v39 = MEMORY[0x1E696AEC0];
            v40 = objc_opt_class();
            v41 = NSStringFromClass(v40);
            v42 = [v39 stringWithFormat:@"<%@: %p>", v41, v38];
          }

          else
          {
            v42 = @"(nil)";
          }

          *buf = 138412802;
          v56 = succinctDescription2;
          v57 = 2112;
          v58 = v37;
          v59 = 2112;
          v60 = v42;
          _os_log_impl(&dword_188A29000, v30, OS_LOG_TYPE_ERROR, "Calling _pencilInteraction:didReceiveTap: %@; interaction: %@; delegate: %@", buf, 0x20u);
        }
      }

      [delegate _pencilInteraction:event didReceiveTap:v15];
    }

LABEL_15:
  }
}

- (UIPencilHoverPose)_hoverPoseForEvent:(uint64_t)event
{
  subtype = [a2 subtype];
  v4 = subtype != 251;
  if (([*(event + 40) state] - 4) >= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = 0;
  }

  if (subtype == 251)
  {
    v5 = CAPoint3DEqualToPoint();
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
  if (*(event + 40) != 0 && !v4 && (v5 & 1) == 0)
  {
    v6 = [UIPencilHoverPose alloc];
    if (v6)
    {
      v9.receiver = v6;
      v9.super_class = UIPencilHoverPose;
      v6 = objc_msgSendSuper2(&v9, sel_init);
      if (v6)
      {
        v7 = *(event + 120);
        *&v6->_location3D.x = *(event + 104);
        v6->_location3D.z = v7;
        v6->_zOffset = *(event + 48);
        v6->_azimuthAngle = *(event + 56);
        v6->_azimuthUnitVector = *(event + 88);
        v6->_altitudeAngle = *(event + 64);
        v6->_rollAngle = *(event + 72);
      }
    }
  }

  return v6;
}

- (void)_sendSqueezeFromEvent:(_BYTE *)event
{
  v52 = *MEMORY[0x1E69E9840];
  if (event)
  {
    delegate = [event delegate];
    v5 = [(UIPencilInteraction *)event _hoverPoseForEvent:a2];
    if ((event[8] & 0x20) != 0)
    {
      objc_opt_self();
      v14 = [UIPencilInteractionSqueeze alloc];
      [a2 timestamp];
      if (a2)
      {
        v16 = *(a2 + 20);
        v17 = a2[21];
      }

      else
      {
        v16 = 0;
        v17 = 0.0;
      }

      v12 = [(UIPencilInteractionSqueeze *)v14 _initWithTimestamp:v16 eventPhase:v5 normalizedForceVelocity:v15 hoverPose:v17];
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("PencilInteraction", &qword_1ED4A0768);
      if (*CategoryCachedImpl)
      {
        v19 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          succinctDescription = [v12 succinctDescription];
          v20 = MEMORY[0x1E696AEC0];
          eventCopy = event;
          v22 = objc_opt_class();
          v23 = NSStringFromClass(v22);
          eventCopy = [v20 stringWithFormat:@"<%@: %p>", v23, eventCopy];

          v25 = eventCopy;
          v26 = delegate;
          if (v26)
          {
            v27 = MEMORY[0x1E696AEC0];
            v28 = objc_opt_class();
            v29 = NSStringFromClass(v28);
            v30 = v26;
            v31 = [v27 stringWithFormat:@"<%@: %p>", v29, v26];
          }

          else
          {
            v30 = 0;
            v31 = @"(nil)";
          }

          *buf = 138412802;
          v47 = succinctDescription;
          v48 = 2112;
          v49 = v25;
          v50 = 2112;
          v51 = v31;
          _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "Calling pencilInteraction:didReceiveSqueeze: %@; interaction: %@; delegate: %@", buf, 0x20u);
        }
      }

      [delegate pencilInteraction:event didReceiveSqueeze:v12];
      goto LABEL_14;
    }

    if ((event[8] & 0x40) == 0)
    {
LABEL_15:

      return;
    }

    v6 = [_UIPencilHoverState _hoverStateFromHoverPose:v5];
    objc_opt_self();
    v7 = [_UIPencilInteractionSqueeze alloc];
    [a2 timestamp];
    if (a2)
    {
      v9 = *(a2 + 20);
      v10 = a2[21];
      if (v7)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v9 = 0;
      v10 = 0.0;
      if (v7)
      {
LABEL_6:
        v11 = [(UIPencilInteractionSqueeze *)v7 _initWithTimestamp:v9 eventPhase:v6 normalizedForceVelocity:v8 hoverPose:v10];
        v12 = v11;
        if (v11)
        {
          objc_storeStrong((v11 + 40), v6);
        }

        goto LABEL_8;
      }
    }

    v12 = 0;
LABEL_8:

    v13 = __UILogGetCategoryCachedImpl("PencilInteraction", &qword_1ED4A0770);
    if (*v13)
    {
      v32 = *(v13 + 8);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        succinctDescription2 = [v12 succinctDescription];
        v34 = MEMORY[0x1E696AEC0];
        eventCopy2 = event;
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        eventCopy2 = [v34 stringWithFormat:@"<%@: %p>", v37, eventCopy2];

        v39 = eventCopy2;
        v40 = delegate;
        if (v40)
        {
          v41 = MEMORY[0x1E696AEC0];
          v42 = objc_opt_class();
          v43 = NSStringFromClass(v42);
          v44 = [v41 stringWithFormat:@"<%@: %p>", v43, v40];
        }

        else
        {
          v44 = @"(nil)";
        }

        *buf = 138412802;
        v47 = succinctDescription2;
        v48 = 2112;
        v49 = v39;
        v50 = 2112;
        v51 = v44;
        _os_log_impl(&dword_188A29000, v32, OS_LOG_TYPE_ERROR, "Calling _pencilInteraction:didReceiveSqueeze: %@; interaction: %@; delegate: %@", buf, 0x20u);
      }
    }

    [delegate _pencilInteraction:event didReceiveSqueeze:v12];
LABEL_14:

    goto LABEL_15;
  }
}

- (void)_performCallbacksWithEvent:(_BYTE *)event
{
  if (event)
  {
    subtype = [a2 subtype];
    if (subtype == 251)
    {
      [(UIPencilInteraction *)event _sendSqueezeFromEvent:a2];
    }

    else if (subtype == 250)
    {
      [(UIPencilInteraction *)event _sendTapFromEvent:a2];
    }

    if (a2 && (a2[20] - 3) <= 1)
    {

      [(UIPencilInteraction *)event _updateLastKnownHoverStateFromGesture:?];
    }
  }
}

- (uint64_t)_updateLastKnownHoverStateFromGesture:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (a2)
    {
      WeakRetained = objc_loadWeakRetained((result + 16));
      [a2 _location3DInView:WeakRetained];
      *(v3 + 104) = v5;
      *(v3 + 112) = v6;
      *(v3 + 120) = v7;
    }

    else
    {
      v8 = MEMORY[0x1E69792C8];
      *(result + 104) = *MEMORY[0x1E69792C8];
      *(result + 120) = *(v8 + 16);
    }

    [a2 zOffset];
    *(v3 + 48) = v9;
    v10 = objc_loadWeakRetained((v3 + 16));
    [a2 azimuthAngleInView:v10];
    *(v3 + 56) = v11;

    v12 = objc_loadWeakRetained((v3 + 16));
    [a2 azimuthUnitVectorInView:v12];
    *(v3 + 88) = v13;
    *(v3 + 96) = v14;

    [a2 altitudeAngle];
    *(v3 + 64) = v15;
    result = [a2 _rollAngle];
    *(v3 + 72) = v16;
  }

  return result;
}

- (uint64_t)_internalShouldReceiveEvent:(unsigned __int8 *)event
{
  if (!event)
  {
    return 0;
  }

  subtype = [a2 subtype];
  if (subtype == 250)
  {
    if (((event[8] >> 2) | (event[8] >> 3) | (event[8] >> 4)))
    {
      v4 = 0;
      goto LABEL_8;
    }

    return 0;
  }

  if (subtype != 251 || (event[8] & 0x60) == 0)
  {
    return 0;
  }

  v4 = 1;
LABEL_8:

  return [event _shouldReceiveGestureType:v4];
}

- (void)_handleHoverGestureRecognizer:(id)recognizer
{
  hoverGestureRecognizer = self->_hoverGestureRecognizer;
  if (hoverGestureRecognizer != recognizer)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIPencilInteraction.m" lineNumber:895 description:{@"%s: Received updates from an unknown hover gesture recognizer: %@", "-[UIPencilInteraction _handleHoverGestureRecognizer:]", recognizer}];

    hoverGestureRecognizer = self->_hoverGestureRecognizer;
  }

  state = [(UIGestureRecognizer *)hoverGestureRecognizer state];
  if (state < 3 || state == 4)
  {
    v7 = self->_hoverGestureRecognizer;

    [(UIPencilInteraction *)self _updateLastKnownHoverStateFromGesture:v7];
  }
}

- (void)_installHoverGestureIfNeeded
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 16));

    if (WeakRetained)
    {
      if (!*(self + 40))
      {
        v3 = [[UIHoverGestureRecognizer alloc] initWithTarget:self action:sel__handleHoverGestureRecognizer_];
        v4 = *(self + 40);
        *(self + 40) = v3;

        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pencilInteraction.hover.%p", self];
        [*(self + 40) setName:v5];

        [*(self + 40) setDelegate:self];
        [(UIHoverGestureRecognizer *)*(self + 40) _setAllowedTouchTypes:?];
      }

      v6 = objc_loadWeakRetained((self + 16));
      [v6 addGestureRecognizer:*(self + 40)];
    }
  }
}

- (void)_uninstallHoverGestureIfNeeded
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 16));
    if (WeakRetained)
    {
      v3 = *(self + 40);

      if (v3)
      {
        [(UIPencilInteraction *)self _updateLastKnownHoverStateFromGesture:?];
        v4 = objc_loadWeakRetained((self + 16));
        [v4 removeGestureRecognizer:*(self + 40)];

        v5 = *(self + 40);
        *(self + 40) = 0;
      }
    }
  }
}

- (void)_registerWithEventIfAble
{
  if (!self)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained((self + 16));
  _window = [WeakRetained _window];

  _windowHostingScene = [_window _windowHostingScene];
  v4 = *(self + 8);
  if (_windowHostingScene)
  {
    *(self + 8) = v4 & 0xFD;
    _mainEventEnvironment = [UIApp _mainEventEnvironment];
    v6 = [(UIEventEnvironment *)_mainEventEnvironment _pencilEventForWindow:_window];

    v7 = [(_UIPencilEvent *)v6 registerInteraction:self];
    v8 = *(self + 24);
    *(self + 24) = v7;

    if ((v4 & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (_window)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel__windowWillMoveToScene_ name:@"_UIWindowWillMoveToSceneNotification" object:_window];
      [defaultCenter addObserver:self selector:sel__windowDidMoveToScene_ name:@"_UIWindowDidMoveToSceneNotification" object:_window];
    }

    goto LABEL_9;
  }

  if (_window)
  {
    *(self + 8) = v4 | 2;
    if ((v4 & 2) == 0)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    if (enabled)
    {
      [(UIPencilInteraction *)self _installHoverGestureIfNeeded];

      [(UIPencilInteraction *)self _registerWithEventIfAble];
    }

    else
    {
      [(UIPencilInteraction *)self _uninstallHoverGestureIfNeeded];

      [(UIPencilInteraction *)self _unregisterFromEvent];
    }
  }
}

- (void)willMoveToView:(id)view
{
  if (self)
  {
    [(UIPencilInteraction *)self _uninstallHoverGestureIfNeeded];
    [(UIPencilInteraction *)self _unregisterFromEvent];
  }

  objc_storeWeak(&self->_view, 0);
}

- (void)didMoveToView:(id)view
{
  v5 = objc_storeWeak(&self->_view, view);
  if (view)
  {
    enabled = self->_enabled;

    if (enabled)
    {
      [(UIPencilInteraction *)self _installHoverGestureIfNeeded];

      [(UIPencilInteraction *)self _registerWithEventIfAble];
    }
  }
}

- (void)_willMoveFromWindow:(id)window toWindow:(id)toWindow
{
  if (!self->_enabled)
  {
    return;
  }

  _windowHostingScene = [toWindow _windowHostingScene];
  if (self->_eventRegistrationToken)
  {
    if (window && toWindow && _windowHostingScene)
    {
      *&self->_interactionFlags |= 1u;
LABEL_7:
      v9 = _windowHostingScene;
      [(UIPencilInteraction *)self _unregisterFromEvent];
      _windowHostingScene = v9;
      goto LABEL_11;
    }

    if (!toWindow || !_windowHostingScene)
    {
      goto LABEL_7;
    }
  }

LABEL_11:
}

- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow
{
  if (!self->_enabled)
  {
    return;
  }

  _windowHostingScene = [window _windowHostingScene];
  _windowHostingScene2 = [toWindow _windowHostingScene];
  eventRegistrationToken = self->_eventRegistrationToken;
  interactionFlags = self->_interactionFlags;
  v11 = (window != 0) & interactionFlags;
  if (!toWindow)
  {
    v11 = 0;
  }

  if (!(window | eventRegistrationToken))
  {
    v11 = 1;
  }

  if (eventRegistrationToken)
  {
    v12 = _windowHostingScene == 0;
  }

  else
  {
    v12 = 1;
  }

  v15 = !v12 && _windowHostingScene2 != 0 && _windowHostingScene != _windowHostingScene2;
  if (v11 == 1 && _windowHostingScene2 != 0)
  {
    *&self->_interactionFlags = interactionFlags & 0xFE;
LABEL_30:
    [(UIPencilInteraction *)self _registerWithEventIfAble];
    goto LABEL_31;
  }

  if (!window && toWindow && !eventRegistrationToken && !_windowHostingScene2)
  {
    goto LABEL_30;
  }

  if (v15)
  {
    [(UIPencilInteraction *)self _unregisterFromEvent];
    goto LABEL_30;
  }

LABEL_31:
}

- (void)_windowWillMoveToScene:(id)scene
{
  object = [scene object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_7;
  }

  object2 = [scene object];

  if (!object2)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  WeakRetained = objc_loadWeakRetained(&self->_view);
  _window = [WeakRetained _window];

  v8 = object2;
  if (_window == object2)
  {
    eventRegistrationToken = self->_eventRegistrationToken;
    if (eventRegistrationToken)
    {
      [(BSInvalidatable *)eventRegistrationToken invalidate];
      v10 = self->_eventRegistrationToken;
      self->_eventRegistrationToken = 0;

      v8 = object2;
      *&self->_interactionFlags |= 2u;
    }
  }

LABEL_8:
}

- (void)_windowDidMoveToScene:(id)scene
{
  object = [scene object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    object2 = [scene object];

    v6 = object2;
    if (object2)
    {
      WeakRetained = objc_loadWeakRetained(&self->_view);
      _window = [WeakRetained _window];

      v6 = object2;
      if (_window == object2 && !self->_eventRegistrationToken && (*&self->_interactionFlags & 2) != 0)
      {
        [(UIPencilInteraction *)self _registerWithEventIfAble];
        v6 = object2;
      }
    }
  }

  else
  {

    v6 = 0;
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(UIPencilInteraction *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendBool:self->_enabled withName:@"enabled"];
  v5 = objc_loadWeakRetained(&self->_view);
  if (v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"<%@: %p>", v8, v5];
  }

  else
  {
    v9 = @"(nil)";
  }

  v10 = [v3 appendObject:v9 withName:@"view"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    if (v12)
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [v13 stringWithFormat:@"<%@: %p>", v15, v12];
    }

    else
    {
      v16 = @"(nil)";
    }

    v17 = [v3 appendObject:v16 withName:@"delegate"];
  }

  if (os_variant_has_internal_diagnostics())
  {
    if ((*&self->_interactionFlags & 0x80000000) != 0)
    {
      cachedDispatchBehavior = self->_cachedDispatchBehavior;
    }

    else
    {
      cachedDispatchBehavior = [(UIPencilInteraction *)self _dispatchBehavior];
      self->_cachedDispatchBehavior = cachedDispatchBehavior;
    }

    if (cachedDispatchBehavior > 2)
    {
      v20 = &stru_1EFB14550;
    }

    else
    {
      v20 = off_1E711F318[cachedDispatchBehavior];
    }

    v21 = [v3 appendObject:v20 withName:@"dispatchBehavior"];
  }

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UIPencilInteraction *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UIPencilInteraction *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v6 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v6 setActiveMultilinePrefix:prefix];
  v7 = [v6 appendBool:self->_enabled withName:@"enabled"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__UIPencilInteraction_descriptionBuilderWithMultilinePrefix___block_invoke;
  v12[3] = &unk_1E70F5AF0;
  v8 = v6;
  v13 = v8;
  selfCopy = self;
  v15 = has_internal_diagnostics;
  v9 = [v8 modifyBody:v12];
  v10 = v8;

  return v8;
}

void __61__UIPencilInteraction_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activeMultilinePrefix];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__UIPencilInteraction_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v6[3] = &unk_1E70F5AF0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  v9 = *(a1 + 48);
  [v2 appendBodySectionWithName:0 multilinePrefix:v3 block:v6];
}

id __61__UIPencilInteraction_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_loadWeakRetained((*(a1 + 40) + 16));
  if (v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v4 stringWithFormat:@"<%@: %p>", v6, v3];
  }

  else
  {
    v7 = @"(nil)";
  }

  v8 = [v2 appendObject:v7 withName:@"view"];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 80));

  if (WeakRetained)
  {
    v10 = *(a1 + 32);
    v11 = objc_loadWeakRetained((*(a1 + 40) + 80));
    if (v11)
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [v12 stringWithFormat:@"<%@: %p>", v14, v11];
    }

    else
    {
      v15 = @"(nil)";
    }

    v16 = [v10 appendObject:v15 withName:@"delegate"];
  }

  if (*(a1 + 48) == 1)
  {
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    if (v18)
    {
      if (*(v18 + 8) < 0)
      {
        v19 = *(v18 + 32);
      }

      else
      {
        v19 = [*(a1 + 40) _dispatchBehavior];
        *(v18 + 32) = v19;
      }

      if (v19 > 2)
      {
        v20 = &stru_1EFB14550;
      }

      else
      {
        v20 = off_1E711F318[v19];
      }
    }

    else
    {
      v20 = @"default";
    }

    v21 = [v17 appendObject:v20 withName:@"dispatchBehavior"];
  }

  v22 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 8) & 1 withName:@"registrationPendingDidMoveToWindow" ifEqualTo:1];
  result = [*(a1 + 32) appendBool:(*(*(a1 + 40) + 8) >> 1) & 1 withName:@"registrationPendingWindowMoveToScene" ifEqualTo:1];
  if (*(a1 + 48) == 1)
  {
    v24 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"registrationToken"];
    v25 = [*(a1 + 32) ui_appendPoint3D:@"lastKnownHoverLocation3D" withName:{*(*(a1 + 40) + 104), *(*(a1 + 40) + 112), *(*(a1 + 40) + 120)}];
    v26 = [*(a1 + 32) appendFloat:@"lastKnownHoverZOffset" withName:3 decimalPrecision:*(*(a1 + 40) + 48)];
    v27 = [*(a1 + 32) appendFloat:@"lastKnownHoverAzimuthAngle" withName:3 decimalPrecision:*(*(a1 + 40) + 56)];
    v28 = [*(a1 + 32) ui_appendVector:@"lastKnownHoverAzimuthUnitVector" withName:3 decimalPrecision:{*(*(a1 + 40) + 88), *(*(a1 + 40) + 96)}];
    v29 = [*(a1 + 32) appendFloat:@"lastKnownHoverAltitudeAngle" withName:3 decimalPrecision:*(*(a1 + 40) + 64)];
    return [*(a1 + 32) appendFloat:@"lastKnownHoverRollAngle" withName:3 decimalPrecision:*(*(a1 + 40) + 72)];
  }

  return result;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end