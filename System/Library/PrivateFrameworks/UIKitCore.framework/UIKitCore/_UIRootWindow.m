@interface _UIRootWindow
- ($706CF31DF3EBD1610FB422704D6694BE)_bindingDescription;
- (CGAffineTransform)_additionalRootLayerAffineTransform;
- (NSString)visibilityEnvironment;
- (_UIRootWindow)initWithDisplay:(id)a3;
- (_UIRootWindow)initWithScreen:(id)a3;
- (id)_context;
- (id)_visibilityLock_environment;
- (void)_configureRootLayer:(id)a3 sceneTransformLayer:(id)a4 transformLayer:(id)a5;
- (void)_didMoveFromScene:(id)a3 toScene:(id)a4;
- (void)_didMoveFromScreen:(id)a3 toScreen:(id)a4;
- (void)_noteScreenDidChangeMode:(id)a3;
- (void)_prepareHierarchyForWindowHostingSceneRemoval;
- (void)_setAdditionalRootLayerAffineTransform:(CGAffineTransform *)a3;
- (void)_updateVisibility;
- (void)_visibilityLock_enqueueUpdateIfNecessary;
- (void)_visibilityLock_enqueueUpdateIfNecessary_body;
- (void)dealloc;
- (void)setHidden:(BOOL)a3;
- (void)setVisibilityIdentifier:(id)a3;
@end

@implementation _UIRootWindow

- (CGAffineTransform)_additionalRootLayerAffineTransform
{
  v3 = *&self[20].ty;
  *&retstr->a = *&self[20].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[21].b;
  return self;
}

- (_UIRootWindow)initWithDisplay:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"_UIRootWindow.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"display"}];
  }

  v6 = [v5 identity];
  currentDisplayIdentity = self->_currentDisplayIdentity;
  self->_currentDisplayIdentity = v6;

  +[UIScreen _FBSDisplayConfigurationConnected:andNotify:](UIScreen, "_FBSDisplayConfigurationConnected:andNotify:", v5, [UIApp _hasCalledRunWithMainScene]);
  v8 = [UIScreen _screenWithFBSDisplayIdentity:self->_currentDisplayIdentity];
  [v8 _scale];
  self->_scale = v9;
  self->super._viewOrientation = 1;
  v10 = MEMORY[0x1E695EFD0];
  *&self->_additionalRootLayerAffineTransform.tx = *(MEMORY[0x1E695EFD0] + 32);
  v11 = v10[1];
  *&self->_additionalRootLayerAffineTransform.a = *v10;
  *&self->_additionalRootLayerAffineTransform.c = v11;
  [v5 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - display %@", objc_opt_class(), v5];
  v21 = [UIWindowScene _unassociatedWindowSceneForScreen:v8 create:1];
  v22 = [(UIWindow *)self _initWithFrame:v20 debugName:v21 windowScene:v13, v15, v17, v19];

  if (v22)
  {
    if ([v5 isExternal])
    {
      [(UIWindow *)v22 setFrame:v13, v15, v17, v19];
    }

    [(_UIRootWindow *)v22 _updateVisibility];
  }

  return v22;
}

- (_UIRootWindow)initWithScreen:(id)a3
{
  v4 = [a3 displayConfiguration];
  v5 = [(_UIRootWindow *)self initWithDisplay:v4];

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"_UIScreenDisplayConfigurationUpdatedNotification" object:0];

  [(RBSAssertion *)self->_visibilityProcessingLock_assertion invalidate];
  v4.receiver = self;
  v4.super_class = _UIRootWindow;
  [(UIWindow *)&v4 dealloc];
}

- (NSString)visibilityEnvironment
{
  os_unfair_lock_lock(&self->_visibilityLock);
  v3 = [(_UIRootWindow *)self _visibilityLock_environment];
  os_unfair_lock_unlock(&self->_visibilityLock);

  return v3;
}

- (void)setVisibilityIdentifier:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_visibilityLock);
  if ((BSEqualStrings() & 1) == 0)
  {
    v4 = [v6 copy];
    visibilityLock_identifier = self->_visibilityLock_identifier;
    self->_visibilityLock_identifier = v4;

    [(_UIRootWindow *)self _visibilityLock_enqueueUpdateIfNecessary];
  }

  os_unfair_lock_unlock(&self->_visibilityLock);
}

- (id)_context
{
  WeakRetained = objc_loadWeakRetained(&self->super._layerContext);

  return WeakRetained;
}

- (void)_setAdditionalRootLayerAffineTransform:(CGAffineTransform *)a3
{
  p_additionalRootLayerAffineTransform = &self->_additionalRootLayerAffineTransform;
  v6 = *&self->_additionalRootLayerAffineTransform.c;
  *&t1.a = *&self->_additionalRootLayerAffineTransform.a;
  *&t1.c = v6;
  *&t1.tx = *&self->_additionalRootLayerAffineTransform.tx;
  v7 = *&a3->c;
  *&v10.a = *&a3->a;
  *&v10.c = v7;
  *&v10.tx = *&a3->tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v10))
  {
    v8 = *&a3->a;
    v9 = *&a3->tx;
    *&p_additionalRootLayerAffineTransform->c = *&a3->c;
    *&p_additionalRootLayerAffineTransform->tx = v9;
    *&p_additionalRootLayerAffineTransform->a = v8;
    [(UIWindow *)self _updateTransformLayer];
  }
}

- ($706CF31DF3EBD1610FB422704D6694BE)_bindingDescription
{
  retstr->var0 = 0;
  *&retstr->var1 = 0;
  *&retstr->var9 = 0;
  v5.receiver = self;
  v5.super_class = _UIRootWindow;
  result = [($706CF31DF3EBD1610FB422704D6694BE *)&v5 _bindingDescription];
  retstr->var1 = 1;
  return result;
}

- (void)_configureRootLayer:(id)a3 sceneTransformLayer:(id)a4 transformLayer:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(UIWindow *)self screen];
  [v11 _unjailedReferenceBounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = v12 + v16 * 0.5;
  v21 = v14 + v18 * 0.5;
  [v11 scale];
  v23 = v22;
  [v11 _rotation];
  CGAffineTransformMakeRotation(&v41, -v24);
  *&v41.a = vrndaq_f64(*&v41.a);
  *&v41.c = vrndaq_f64(*&v41.c);
  *&v42.c = *&v41.c;
  *&v42.tx = vrndaq_f64(*&v41.tx);
  *&v42.a = *&v41.a;
  *&v41.tx = *&v42.tx;
  CGAffineTransformScale(&v42, &v41, v23, v23);
  v25 = *&self->_additionalRootLayerAffineTransform.c;
  *&v41.a = *&self->_additionalRootLayerAffineTransform.a;
  *&v41.c = v25;
  *&v41.tx = *&self->_additionalRootLayerAffineTransform.tx;
  if (!CGAffineTransformIsIdentity(&v41))
  {
    t1 = v42;
    v26 = *&self->_additionalRootLayerAffineTransform.c;
    *&t2.a = *&self->_additionalRootLayerAffineTransform.a;
    *&t2.c = v26;
    *&t2.tx = *&self->_additionalRootLayerAffineTransform.tx;
    CGAffineTransformConcat(&v41, &t1, &t2);
    v42 = v41;
  }

  v27 = [v11 displayConfiguration];
  [v27 renderingCenter];
  [v10 setPosition:?];

  v41 = v42;
  [v10 setAffineTransform:&v41];
  [v10 setBounds:{v13, v15, v17, v19}];

  v37 = *(MEMORY[0x1E695EFD0] + 16);
  v38 = *MEMORY[0x1E695EFD0];
  *&v41.a = *MEMORY[0x1E695EFD0];
  *&v41.c = v37;
  v36 = *(MEMORY[0x1E695EFD0] + 32);
  *&v41.tx = v36;
  [v9 setAffineTransform:&v41];
  [v9 setPosition:{v20, v21}];
  [v9 setBounds:{v13, v15, v17, v19}];

  [v8 setPosition:{v20, v21}];
  if ([objc_opt_class() _transformLayerRotationsAreEnabled])
  {
    viewOrientation = self->super._viewOrientation;
    switch(viewOrientation)
    {
      case 1:
        v29 = 0.0;
        break;
      case 3:
        v29 = 1.57079633;
        break;
      case 4:
        v29 = -1.57079633;
        break;
      default:
        v29 = 3.14159265;
        if (viewOrientation != 2)
        {
          v29 = 0.0;
        }

        break;
    }

    CGAffineTransformMakeRotation(&t1, v29);
    *&t1.a = vrndaq_f64(*&t1.a);
    *&t1.c = vrndaq_f64(*&t1.c);
    *&v41.c = *&t1.c;
    *&v41.tx = vrndaq_f64(*&t1.tx);
    *&t1.tx = *&v41.tx;
    *&v41.a = *&t1.a;
    [v8 setAffineTransform:&t1];
    v31 = _UIWindowConvertRectFromOrientationToOrientation(1, self->super._viewOrientation, v13, v15, v17, v19, v17, v19);
    v30 = v8;
  }

  else
  {
    *&v41.a = v38;
    *&v41.c = v37;
    *&v41.tx = v36;
    [v8 setAffineTransform:&v41];
    v30 = v8;
    v31 = v13;
    v32 = v15;
    v33 = v17;
    v34 = v19;
  }

  [v30 setBounds:{v31, v32, v33, v34}];
  [v8 setMasksToBounds:1];
  if (self->_scale != v23)
  {
    self->_scale = v23;
    v35 = [(UIWindow *)self windowScene];
    [v35 _recycleAttachmentForWindow:self];
  }
}

- (void)setHidden:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _UIRootWindow;
  [(UIWindow *)&v4 setHidden:a3];
  [(_UIRootWindow *)self _updateVisibility];
}

- (void)_didMoveFromScene:(id)a3 toScene:(id)a4
{
  v24.receiver = self;
  v24.super_class = _UIRootWindow;
  v6 = a4;
  v7 = a3;
  [(UIWindow *)&v24 _didMoveFromScene:v7 toScene:v6];
  v8 = [v7 _screen];

  v9 = [v8 displayIdentity];

  v10 = [v6 _screen];

  v11 = [v10 displayConfiguration];

  v12 = [v11 identity];
  v13 = v9;
  v14 = v12;
  v15 = v14;
  if (v13 == v14)
  {

    v17 = v13;
LABEL_25:

    goto LABEL_26;
  }

  if (!v13 || !v14)
  {

    if (v7)
    {
      goto LABEL_15;
    }

LABEL_9:
    if (v6)
    {
      currentDisplayIdentity = self->_currentDisplayIdentity;
      v19 = v15;
      v20 = currentDisplayIdentity;
      v21 = v20;
      if (v19 == v20)
      {

LABEL_24:
        v23 = v15;
        v17 = self->_currentDisplayIdentity;
        self->_currentDisplayIdentity = v23;
        goto LABEL_25;
      }

      if (v15 && v20)
      {
        v22 = [(FBSDisplayIdentity *)v19 isEqual:v20];

        if (v22)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }

LABEL_23:
      +[UIScreen _FBSDisplayConfigurationConnected:andNotify:](UIScreen, "_FBSDisplayConfigurationConnected:andNotify:", v11, [UIApp _hasCalledRunWithMainScene]);
      goto LABEL_24;
    }

LABEL_15:
    if (!v7 || !v6)
    {
      goto LABEL_24;
    }

    if (self->_currentDisplayIdentity)
    {
      [UIScreen _FBSDisplayIdentityDisconnected:?];
    }

    if (!v15)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v16 = [(FBSDisplayIdentity *)v13 isEqual:v14];

  if ((v16 & 1) == 0)
  {
    if (v7)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

LABEL_26:
}

- (void)_prepareHierarchyForWindowHostingSceneRemoval
{
  [UIScreen _FBSDisplayIdentityDisconnected:self->_currentDisplayIdentity];
  currentDisplayIdentity = self->_currentDisplayIdentity;
  self->_currentDisplayIdentity = 0;

  v4.receiver = self;
  v4.super_class = _UIRootWindow;
  [(UIWindow *)&v4 _prepareHierarchyForWindowHostingSceneRemoval];
}

- (void)_didMoveFromScreen:(id)a3 toScreen:(id)a4
{
  v6 = MEMORY[0x1E696AD88];
  v7 = a4;
  v8 = a3;
  v9 = [v6 defaultCenter];
  [v9 removeObserver:self];
  v10.receiver = self;
  v10.super_class = _UIRootWindow;
  [(UIWindow *)&v10 _didMoveFromScreen:v8 toScreen:v7];

  [v9 addObserver:self selector:sel__noteScreenDidChangeMode_ name:@"_UIScreenDisplayConfigurationUpdatedNotification" object:v7];
}

- (void)_noteScreenDidChangeMode:(id)a3
{
  v17 = a3;
  v5 = [v17 object];
  if (!v5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"_UIRootWindow.m" lineNumber:273 description:{@"got a screen mode change notification without a screen -> %@", v17}];
  }

  v6 = [v5 displayConfiguration];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [(UIWindow *)self setFrame:v8, v10, v12, v14];
  [(UIWindow *)self _updateTransformLayer];
  v15 = [(UIWindow *)self windowScene];
  [v15 _recycleAttachmentForWindow:self];
}

- (void)_updateVisibility
{
  os_unfair_lock_lock(&self->_visibilityLock);
  v3 = [(UIView *)self isHidden];
  if (self->_visibilityLock_enabled != !v3)
  {
    self->_visibilityLock_enabled = !v3;
    [(_UIRootWindow *)self _visibilityLock_enqueueUpdateIfNecessary];
  }

  os_unfair_lock_unlock(&self->_visibilityLock);
}

- (id)_visibilityLock_environment
{
  os_unfair_lock_assert_owner(&self->_visibilityLock);
  visibilityLock_environment = self->_visibilityLock_environment;
  if (!visibilityLock_environment)
  {
    v4 = _UIVisibilityEnvironmentForRootWindow(self);
    v5 = [v4 copy];
    v6 = self->_visibilityLock_environment;
    self->_visibilityLock_environment = v5;

    visibilityLock_environment = self->_visibilityLock_environment;
  }

  return visibilityLock_environment;
}

- (void)_visibilityLock_enqueueUpdateIfNecessary
{
  os_unfair_lock_assert_owner(&self->_visibilityLock);
  if (!self->_visibilityLock_updateEnqueued && (*(&self->super.super._viewFlags + 1) & 8) == 0)
  {
    self->_visibilityLock_updateEnqueued = 1;
    v5[0] = 0;
    v5[1] = v5;
    v5[2] = 0x3032000000;
    v5[3] = __Block_byref_object_copy__169;
    v5[4] = __Block_byref_object_dispose__169;
    v6 = self;
    v3 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57___UIRootWindow__visibilityLock_enqueueUpdateIfNecessary__block_invoke;
    block[3] = &unk_1E70F2F20;
    block[4] = v5;
    dispatch_async(v3, block);

    _Block_object_dispose(v5, 8);
  }
}

- (void)_visibilityLock_enqueueUpdateIfNecessary_body
{
  v18[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_visibilityProcessingLock);
  os_unfair_lock_lock(&self->_visibilityLock);
  visibilityLock_enabled = self->_visibilityLock_enabled;
  v4 = [(_UIRootWindow *)self _visibilityLock_environment];
  visibilityLock_identifier = self->_visibilityLock_identifier;
  v6 = visibilityLock_identifier;
  self->_visibilityLock_updateEnqueued = 0;
  os_unfair_lock_unlock(&self->_visibilityLock);
  if (!BSEqualBools() || (BSEqualStrings() & 1) == 0)
  {
    objc_storeStrong(&self->_visibilityProcessingLock_identifier, visibilityLock_identifier);
    v7 = self->_visibilityProcessingLock_assertion;
    visibilityProcessingLock_assertion = self->_visibilityProcessingLock_assertion;
    self->_visibilityProcessingLock_assertion = 0;

    if (visibilityLock_enabled)
    {
      v9 = [MEMORY[0x1E69C7640] targetWithPid:getpid() environmentIdentifier:v4];
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"creating %@ visibility", v9];
      if (v6)
      {
        v11 = v6;
      }

      else
      {
        v11 = MEMORY[0x1E695E118];
      }

      [MEMORY[0x1E69C7578] grantWithNamespace:*MEMORY[0x1E69DED50] endowment:v11];
      v12 = v17 = v4;
      v13 = objc_alloc(MEMORY[0x1E69C7548]);
      v18[0] = v12;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      v15 = [v13 initWithExplanation:v10 target:v9 attributes:v14];
      v16 = self->_visibilityProcessingLock_assertion;
      self->_visibilityProcessingLock_assertion = v15;

      [(RBSAssertion *)self->_visibilityProcessingLock_assertion acquireWithError:0];
      v4 = v17;
    }

    [(RBSAssertion *)v7 invalidate];
  }

  os_unfair_lock_unlock(&self->_visibilityProcessingLock);
}

@end