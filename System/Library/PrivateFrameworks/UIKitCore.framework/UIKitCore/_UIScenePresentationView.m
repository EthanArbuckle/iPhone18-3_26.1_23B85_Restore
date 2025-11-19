@interface _UIScenePresentationView
- (Class)_intelligenceBaseClass;
- (UIScenePresenter)presenter;
- (UIView)backgroundView;
- (_UIScenePresentationView)initWithPresenter:(id)a3;
- (_UIScenePresenterGeometryDriverStorage)_geometryDriverStorage;
- (id)_hitTest:(CGPoint)a3 withEvent:(id)a4 windowServerHitTestWindow:(id)a5;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)identifier;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_geometryDidUpdateWithTransitionContext:(id)a3;
- (void)_intelligenceCollectContentIn:(CGRect)a3 collector:(id)a4;
- (void)_intelligenceCollectRemoteContentIn:(CGRect)a3 remoteContextWrapper:(id)a4;
- (void)_updateBackgroundColor;
- (void)_updateFrameAndTransform;
- (void)_updatePresentationContextFrom:(id)a3 toContext:(id)a4;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)invalidate;
- (void)layoutSubviews;
- (void)removeObserver:(id)a3;
- (void)scene:(id)a3 clientDidConnect:(id)a4;
- (void)scene:(id)a3 didPrepareUpdateWithContext:(id)a4;
- (void)sceneDidActivate:(id)a3;
- (void)sceneWillDeactivate:(id)a3 withContext:(id)a4;
- (void)setBackgroundView:(id)a3;
- (void)setCurrentPresentationContext:(id)a3;
- (void)setHostContainerView:(id)a3;
@end

@implementation _UIScenePresentationView

- (void)_updateFrameAndTransform
{
  [(_UISceneLayerHostContainerView *)self->_hostContainerView updateForGeometrySettingsChanges:self->_effectiveSettings];
  [(FBSSceneSettings *)self->_effectiveSettings frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(FBSSceneSettings *)self->_effectiveSettings interfaceOrientation];
  if ((v12 - 1) >= 4)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  v23 = *(MEMORY[0x1E695EFD0] + 16);
  v24 = *MEMORY[0x1E695EFD0];
  *&v29.a = *MEMORY[0x1E695EFD0];
  *&v29.c = v23;
  v22 = *(MEMORY[0x1E695EFD0] + 32);
  *&v29.tx = v22;
  v14 = [(UIScenePresentationContext *)self->_currentPresentationContext appearanceStyle];
  if (v14)
  {
    if (v14 == 2)
    {
      v5 = _UIWindowConvertRectFromOrientationToOrientation(1, v13, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v9, v11, v9, v11);
      v7 = v16;
      v9 = v17;
      v11 = v18;
      goto LABEL_19;
    }

    if (v14 != 1)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      [v19 handleFailureInMethod:a2 object:self file:@"_UIScenePresentationView.m" lineNumber:413 description:{@"the appearance style is invalid (%li)", -[UIScenePresentationContext appearanceStyle](self->_currentPresentationContext, "appearanceStyle")}];

      goto LABEL_19;
    }

    v5 = *MEMORY[0x1E695EFF8];
    v7 = *(MEMORY[0x1E695EFF8] + 8);
  }

  switch(v13)
  {
    case 1:
      v15 = 0.0;
      break;
    case 3:
      v15 = 1.57079633;
      break;
    case 4:
      v15 = -1.57079633;
      break;
    default:
      v15 = 3.14159265;
      if (v13 != 2)
      {
        v15 = 0.0;
      }

      break;
  }

  CGAffineTransformMakeRotation(&v28, v15);
  *&v28.a = vrndaq_f64(*&v28.a);
  *&v28.c = vrndaq_f64(*&v28.c);
  *&v28.tx = vrndaq_f64(*&v28.tx);
  v29 = v28;
LABEL_19:
  v28 = v29;
  [(UIView *)self setTransform:&v28];
  [(UIView *)self setFrame:v5, v7, v9, v11];
  v20 = [(UIScenePresentationContext *)self->_currentPresentationContext hostTransformer];
  v21 = v20;
  memset(&v28, 0, sizeof(v28));
  if (v20)
  {
    [v20 transform];
  }

  else
  {
    *&v28.a = v24;
    *&v28.c = v23;
    *&v28.tx = v22;
  }

  t1 = v29;
  memset(&v27, 0, sizeof(v27));
  t2 = v28;
  CGAffineTransformConcat(&v27, &t1, &t2);
  t1 = v27;
  [(UIView *)self setTransform:&t1];
}

- (void)didMoveToWindow
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = _UIScenePresentationView;
  [(UIView *)&v14 didMoveToWindow];
  v3 = [(UIView *)self window];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSHashTable *)self->_observers copy];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 presentationView:self didMoveToWindow:v3];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

- (UIView)backgroundView
{
  BSDispatchQueueAssertMain();
  backgroundView = self->_backgroundView;

  return backgroundView;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UIScenePresentationView;
  [(UIView *)&v3 layoutSubviews];
  [(_UIScenePresenterGeometryDriverStorage *)self->_geometryDriverStorage scenePresentationViewIsLayingOutSubviews];
}

- (void)_updateBackgroundColor
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  v4 = [WeakRetained isHosting];

  currentPresentationContext = self->_currentPresentationContext;
  if (v4)
  {
    [(UIScenePresentationContext *)currentPresentationContext backgroundColorWhileHosting];
  }

  else
  {
    [(UIScenePresentationContext *)currentPresentationContext backgroundColorWhileNotHosting];
  }
  v6 = ;
  [(UIView *)self setBackgroundColor:v6];
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    [(FBSSceneSettingsDiffInspector *)self->_geometrySettingsDiffInspector removeAllObservers];
    [(FBScene *)self->_scene removeObserver:self];
    [(_UISceneLayerHostContainerView *)self->_hostContainerView popDataSource:self];
    hostContainerView = self->_hostContainerView;
    self->_hostContainerView = 0;

    interaction = self->super._interaction;

    [(_UIVisibilityPropagationInteraction *)interaction _setVisibilityTarget:?];
  }
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"_UIScenePresentationView.m" lineNumber:86 description:@"Cannot dealloc a _UIScenePresentation view if it hasn't been invalidated first."];
  }

  v5.receiver = self;
  v5.super_class = _UIScenePresentationView;
  [(_UIVisibilityPropagationView *)&v5 dealloc];
}

- (Class)_intelligenceBaseClass
{
  sub_189227020();

  return swift_getObjCClassFromMetadata();
}

- (void)_intelligenceCollectContentIn:(CGRect)a3 collector:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = self;
  _UIScenePresentationView._intelligenceCollectContent(in:collector:)(v9, x, y, width, height);
}

- (void)_intelligenceCollectRemoteContentIn:(CGRect)a3 remoteContextWrapper:(id)a4
{
  v5 = a4;
  v6 = self;
  _UIScenePresentationView._intelligenceCollectRemoteContent(in:remoteContextWrapper:)(v5);
}

- (_UIScenePresentationView)initWithPresenter:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = _UIScenePresentationView;
  v5 = [(_UIVisibilityPropagationView *)&v22 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_presenter, v4);
    v7 = [v4 presentationContext];
    currentPresentationContext = v6->_currentPresentationContext;
    v6->_currentPresentationContext = v7;

    v9 = [v4 scene];
    scene = v6->_scene;
    v6->_scene = v9;

    v11 = [(FBScene *)v6->_scene clientHandle];
    v12 = [v11 processHandle];
    v13 = [v12 pid];

    if (v13 >= 1)
    {
      v14 = MEMORY[0x1E69C7640];
      v15 = [(FBScene *)v6->_scene identityToken];
      v16 = [v15 stringRepresentation];
      v17 = _UISVisibilityEnvironmentForSceneIdentityTokenString();
      v18 = [v14 targetWithPid:v13 environmentIdentifier:v17];
      [(_UIVisibilityPropagationInteraction *)v6->super._interaction _setVisibilityTarget:v18];
    }

    [(_UIVisibilityPropagationInteraction *)v6->super._interaction _setVisibilityPropagationEnabled:?];
    [(FBScene *)v6->_scene addObserver:v6];
    v19 = [(FBScene *)v6->_scene settings];
    effectiveSettings = v6->_effectiveSettings;
    v6->_effectiveSettings = v19;

    [(_UIScenePresentationView *)v6 _updateFrameAndTransform];
  }

  return v6;
}

- (void)setCurrentPresentationContext:(id)a3
{
  v4 = a3;
  currentPresentationContext = self->_currentPresentationContext;
  if (currentPresentationContext != v4)
  {
    v9 = v4;
    v6 = v4;
    v7 = self->_currentPresentationContext;
    self->_currentPresentationContext = v6;
    v8 = currentPresentationContext;

    [(_UIScenePresentationView *)self _updatePresentationContextFrom:v8 toContext:self->_currentPresentationContext];
    v4 = v9;
  }
}

- (void)setHostContainerView:(id)a3
{
  v5 = a3;
  hostContainerView = self->_hostContainerView;
  if (hostContainerView != v5)
  {
    v8 = v5;
    [(_UISceneLayerHostContainerView *)hostContainerView popDataSource:self];
    v7 = self->_hostContainerView;
    self->_hostContainerView = 0;

    if (v8)
    {
      objc_storeStrong(&self->_hostContainerView, a3);
      [(_UISceneLayerHostContainerView *)self->_hostContainerView pushDataSource:self];
      [(_UISceneLayerHostContainerView *)self->_hostContainerView updateForGeometrySettingsChanges:self->_effectiveSettings];
    }

    [(UIView *)self addSubview:v8];
    [(_UIScenePresentationView *)self _updateBackgroundColor];
    v5 = v8;
  }
}

- (_UIScenePresenterGeometryDriverStorage)_geometryDriverStorage
{
  geometryDriverStorage = self->_geometryDriverStorage;
  if (!geometryDriverStorage)
  {
    v4 = [[_UIScenePresenterGeometryDriverStorage alloc] initWithScenePresentationView:self];
    v5 = self->_geometryDriverStorage;
    self->_geometryDriverStorage = v4;

    geometryDriverStorage = self->_geometryDriverStorage;
  }

  v6 = geometryDriverStorage;

  return v6;
}

- (void)addObserver:(id)a3
{
  v9 = a3;
  if (!v9)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_UIScenePresentationView.m" lineNumber:136 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
  }

  BSDispatchQueueAssertMain();
  observers = self->_observers;
  if (!observers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v9];
}

- (void)removeObserver:(id)a3
{
  v7 = a3;
  BSDispatchQueueAssertMain();
  v4 = v7;
  if (v7)
  {
    [(NSHashTable *)self->_observers removeObject:v7];
    v5 = [(NSHashTable *)self->_observers count];
    v4 = v7;
    if (!v5)
    {
      observers = self->_observers;
      self->_observers = 0;

      v4 = v7;
    }
  }
}

- (id)_hitTest:(CGPoint)a3 withEvent:(id)a4 windowServerHitTestWindow:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = a5;
  v11 = [(UIView *)self window];

  if (v11 == v10)
  {
    v16.receiver = self;
    v16.super_class = _UIScenePresentationView;
    v13 = [(UIView *)&v16 _hitTest:v9 withEvent:v10 windowServerHitTestWindow:x, y];
    if ([(UIScenePresentationContext *)self->_currentPresentationContext shouldPassthroughHitTestEventsIfTransparent])
    {
      v14 = v13 == self;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      v12 = 0;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (UIScenePresenter)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

- (void)setBackgroundView:(id)a3
{
  v5 = a3;
  BSDispatchQueueAssertMain();
  if (self->_backgroundView != v5)
  {
    objc_storeStrong(&self->_backgroundView, a3);
    [(_UISceneLayerHostContainerView *)self->_hostContainerView refreshDataSource:self];
  }
}

- (id)identifier
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  v3 = [WeakRetained identifier];

  return v3;
}

- (void)scene:(id)a3 clientDidConnect:(id)a4
{
  v14 = a3;
  v6 = [a4 processHandle];
  v7 = [v6 pid];

  v8 = v14;
  if (v7 >= 1)
  {
    v9 = MEMORY[0x1E69C7640];
    v10 = [v14 identityToken];
    v11 = [v10 stringRepresentation];
    v12 = _UISVisibilityEnvironmentForSceneIdentityTokenString();
    v13 = [v9 targetWithPid:v7 environmentIdentifier:v12];
    if (self)
    {
      [(_UIVisibilityPropagationInteraction *)self->super._interaction _setVisibilityTarget:v13];
    }

    v8 = v14;
  }
}

- (void)sceneDidActivate:(id)a3
{
  v13 = a3;
  v4 = [v13 clientHandle];
  v5 = [v4 processHandle];
  v6 = [v5 pid];

  v7 = v13;
  if (v6 >= 1)
  {
    v8 = MEMORY[0x1E69C7640];
    v9 = [v13 identityToken];
    v10 = [v9 stringRepresentation];
    v11 = _UISVisibilityEnvironmentForSceneIdentityTokenString();
    v12 = [v8 targetWithPid:v6 environmentIdentifier:v11];
    if (self)
    {
      [(_UIVisibilityPropagationInteraction *)self->super._interaction _setVisibilityTarget:v12];
    }

    v7 = v13;
  }
}

- (void)sceneWillDeactivate:(id)a3 withContext:(id)a4
{
  if (self)
  {
    [(_UIVisibilityPropagationInteraction *)self->super._interaction _setVisibilityTarget:?];
  }
}

- (void)scene:(id)a3 didPrepareUpdateWithContext:(id)a4
{
  v5 = a4;
  v6 = [v5 transactionID];
  v7 = [v5 settings];
  effectiveSettings = self->_effectiveSettings;
  self->_effectiveSettings = v7;

  if (!self->_geometrySettingsDiffInspector)
  {
    v9 = objc_alloc_init(MEMORY[0x1E699FC38]);
    geometrySettingsDiffInspector = self->_geometrySettingsDiffInspector;
    self->_geometrySettingsDiffInspector = v9;

    [(FBSSceneSettingsDiffInspector *)self->_geometrySettingsDiffInspector observeFrameWithBlock:&__block_literal_global_259];
    [(FBSSceneSettingsDiffInspector *)self->_geometrySettingsDiffInspector observeInterfaceOrientationWithBlock:&__block_literal_global_26_2];
    [(FBSSceneSettingsDiffInspector *)self->_geometrySettingsDiffInspector observeDisplayConfigurationWithBlock:&__block_literal_global_28_1];
  }

  if (v6 <= 1 || (v14 = 0, v11 = self->_geometrySettingsDiffInspector, [v5 settingsDiff], v12 = objc_claimAutoreleasedReturnValue(), -[FBSSceneSettingsDiffInspector inspectDiff:withContext:](v11, "inspectDiff:withContext:", v12, &v14), v12, v14 == 1))
  {
    v13 = [v5 transitionContext];
    [(_UIScenePresentationView *)self _geometryDidUpdateWithTransitionContext:v13];
  }
}

- (id)succinctDescription
{
  v2 = [(_UIScenePresentationView *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  v5 = [v3 appendObject:WeakRetained withName:@"presenter" skipIfNil:1];

  v6 = [(UIScenePresentationContext *)self->_currentPresentationContext _exclusiveLayerTargetsToInclude];
  if ([v6 count] == 1)
  {
    v7 = [v6 anyObject];
    v8 = [v3 appendObject:v7 withName:@"exclusiveHostLayerTarget"];
  }

  else if ([v6 count])
  {
    v9 = [v3 appendObject:v6 withName:@"exclusiveHostLayerTargets"];
  }

  v10 = [(FBScene *)self->_scene identifier];
  v11 = [v3 appendObject:v10 withName:@"sceneID" skipIfNil:1];

  [(UIView *)self frame];
  v12 = [v3 appendRect:@"frame" withName:?];
  [(UIView *)self transform];
  if (!CGAffineTransformIsIdentity(&v17))
  {
    [(UIView *)self transform];
    v13 = NSStringFromCGAffineTransform(&v17);
    v14 = [v3 appendObject:v13 withName:@"transform"];
  }

  v15 = [v3 appendBool:-[UIView isHidden](self withName:{"isHidden"), @"hidden"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIScenePresentationView *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(_UIScenePresentationView *)self succinctDescriptionBuilder];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66___UIScenePresentationView_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v10[4] = self;
  v6 = v5;
  v11 = v6;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v10];

  v7 = v11;
  v8 = v6;

  return v6;
}

- (void)_updatePresentationContextFrom:(id)a3 toContext:(id)a4
{
  v16 = a3;
  v6 = a4;
  [(_UISceneLayerHostContainerView *)self->_hostContainerView refreshDataSource:self];
  v7 = [v16 backgroundColorWhileHosting];
  v8 = [v6 backgroundColorWhileHosting];
  if (BSEqualObjects())
  {
    v9 = [v16 backgroundColorWhileNotHosting];
    v10 = [v6 backgroundColorWhileNotHosting];
    v11 = BSEqualObjects();

    if (v11)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  [(_UIScenePresentationView *)self _updateBackgroundColor];
LABEL_6:
  v12 = [v16 appearanceStyle];
  if (v12 != [v6 appearanceStyle] || (objc_msgSend(v16, "hostTransformer"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "hostTransformer"), v14 = objc_claimAutoreleasedReturnValue(), v15 = BSEqualObjects(), v14, v13, (v15 & 1) == 0))
  {
    [(_UIScenePresentationView *)self _updateFrameAndTransform];
  }

  [v16 _isVisibilityPropagationEnabled];
  [v6 _isVisibilityPropagationEnabled];
  if ((BSEqualBools() & 1) == 0)
  {
    -[_UIVisibilityPropagationInteraction _setVisibilityPropagationEnabled:](self->super._interaction, [v6 _isVisibilityPropagationEnabled]);
  }
}

- (void)_geometryDidUpdateWithTransitionContext:(id)a3
{
  v4 = MEMORY[0x1E698E608];
  v5 = [a3 animationSettings];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68___UIScenePresentationView__geometryDidUpdateWithTransitionContext___block_invoke;
  v6[3] = &unk_1E70F5AC0;
  v6[4] = self;
  [v4 tryAnimatingWithSettings:v5 actions:v6 completion:0];
}

@end