@interface _UIScenePresentationView
- (Class)_intelligenceBaseClass;
- (UIScenePresenter)presenter;
- (UIView)backgroundView;
- (_UIScenePresentationView)initWithPresenter:(id)presenter;
- (_UIScenePresenterGeometryDriverStorage)_geometryDriverStorage;
- (id)_hitTest:(CGPoint)test withEvent:(id)event windowServerHitTestWindow:(id)window;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)identifier;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_geometryDidUpdateWithTransitionContext:(id)context;
- (void)_intelligenceCollectContentIn:(CGRect)in collector:(id)collector;
- (void)_intelligenceCollectRemoteContentIn:(CGRect)in remoteContextWrapper:(id)wrapper;
- (void)_updateBackgroundColor;
- (void)_updateFrameAndTransform;
- (void)_updatePresentationContextFrom:(id)from toContext:(id)context;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)invalidate;
- (void)layoutSubviews;
- (void)removeObserver:(id)observer;
- (void)scene:(id)scene clientDidConnect:(id)connect;
- (void)scene:(id)scene didPrepareUpdateWithContext:(id)context;
- (void)sceneDidActivate:(id)activate;
- (void)sceneWillDeactivate:(id)deactivate withContext:(id)context;
- (void)setBackgroundView:(id)view;
- (void)setCurrentPresentationContext:(id)context;
- (void)setHostContainerView:(id)view;
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
  interfaceOrientation = [(FBSSceneSettings *)self->_effectiveSettings interfaceOrientation];
  if ((interfaceOrientation - 1) >= 4)
  {
    v13 = 1;
  }

  else
  {
    v13 = interfaceOrientation;
  }

  v23 = *(MEMORY[0x1E695EFD0] + 16);
  v24 = *MEMORY[0x1E695EFD0];
  *&v29.a = *MEMORY[0x1E695EFD0];
  *&v29.c = v23;
  v22 = *(MEMORY[0x1E695EFD0] + 32);
  *&v29.tx = v22;
  appearanceStyle = [(UIScenePresentationContext *)self->_currentPresentationContext appearanceStyle];
  if (appearanceStyle)
  {
    if (appearanceStyle == 2)
    {
      v5 = _UIWindowConvertRectFromOrientationToOrientation(1, v13, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v9, v11, v9, v11);
      v7 = v16;
      v9 = v17;
      v11 = v18;
      goto LABEL_19;
    }

    if (appearanceStyle != 1)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIScenePresentationView.m" lineNumber:413 description:{@"the appearance style is invalid (%li)", -[UIScenePresentationContext appearanceStyle](self->_currentPresentationContext, "appearanceStyle")}];

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
  hostTransformer = [(UIScenePresentationContext *)self->_currentPresentationContext hostTransformer];
  v21 = hostTransformer;
  memset(&v28, 0, sizeof(v28));
  if (hostTransformer)
  {
    [hostTransformer transform];
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
  window = [(UIView *)self window];
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
          [v9 presentationView:self didMoveToWindow:window];
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
  isHosting = [WeakRetained isHosting];

  currentPresentationContext = self->_currentPresentationContext;
  if (isHosting)
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIScenePresentationView.m" lineNumber:86 description:@"Cannot dealloc a _UIScenePresentation view if it hasn't been invalidated first."];
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

- (void)_intelligenceCollectContentIn:(CGRect)in collector:(id)collector
{
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  collectorCopy = collector;
  selfCopy = self;
  _UIScenePresentationView._intelligenceCollectContent(in:collector:)(collectorCopy, x, y, width, height);
}

- (void)_intelligenceCollectRemoteContentIn:(CGRect)in remoteContextWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  selfCopy = self;
  _UIScenePresentationView._intelligenceCollectRemoteContent(in:remoteContextWrapper:)(wrapperCopy);
}

- (_UIScenePresentationView)initWithPresenter:(id)presenter
{
  presenterCopy = presenter;
  v22.receiver = self;
  v22.super_class = _UIScenePresentationView;
  v5 = [(_UIVisibilityPropagationView *)&v22 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_presenter, presenterCopy);
    presentationContext = [presenterCopy presentationContext];
    currentPresentationContext = v6->_currentPresentationContext;
    v6->_currentPresentationContext = presentationContext;

    scene = [presenterCopy scene];
    scene = v6->_scene;
    v6->_scene = scene;

    clientHandle = [(FBScene *)v6->_scene clientHandle];
    processHandle = [clientHandle processHandle];
    v13 = [processHandle pid];

    if (v13 >= 1)
    {
      v14 = MEMORY[0x1E69C7640];
      identityToken = [(FBScene *)v6->_scene identityToken];
      stringRepresentation = [identityToken stringRepresentation];
      v17 = _UISVisibilityEnvironmentForSceneIdentityTokenString();
      v18 = [v14 targetWithPid:v13 environmentIdentifier:v17];
      [(_UIVisibilityPropagationInteraction *)v6->super._interaction _setVisibilityTarget:v18];
    }

    [(_UIVisibilityPropagationInteraction *)v6->super._interaction _setVisibilityPropagationEnabled:?];
    [(FBScene *)v6->_scene addObserver:v6];
    settings = [(FBScene *)v6->_scene settings];
    effectiveSettings = v6->_effectiveSettings;
    v6->_effectiveSettings = settings;

    [(_UIScenePresentationView *)v6 _updateFrameAndTransform];
  }

  return v6;
}

- (void)setCurrentPresentationContext:(id)context
{
  contextCopy = context;
  currentPresentationContext = self->_currentPresentationContext;
  if (currentPresentationContext != contextCopy)
  {
    v9 = contextCopy;
    v6 = contextCopy;
    v7 = self->_currentPresentationContext;
    self->_currentPresentationContext = v6;
    v8 = currentPresentationContext;

    [(_UIScenePresentationView *)self _updatePresentationContextFrom:v8 toContext:self->_currentPresentationContext];
    contextCopy = v9;
  }
}

- (void)setHostContainerView:(id)view
{
  viewCopy = view;
  hostContainerView = self->_hostContainerView;
  if (hostContainerView != viewCopy)
  {
    v8 = viewCopy;
    [(_UISceneLayerHostContainerView *)hostContainerView popDataSource:self];
    v7 = self->_hostContainerView;
    self->_hostContainerView = 0;

    if (v8)
    {
      objc_storeStrong(&self->_hostContainerView, view);
      [(_UISceneLayerHostContainerView *)self->_hostContainerView pushDataSource:self];
      [(_UISceneLayerHostContainerView *)self->_hostContainerView updateForGeometrySettingsChanges:self->_effectiveSettings];
    }

    [(UIView *)self addSubview:v8];
    [(_UIScenePresentationView *)self _updateBackgroundColor];
    viewCopy = v8;
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

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (!observerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIScenePresentationView.m" lineNumber:136 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
  }

  BSDispatchQueueAssertMain();
  observers = self->_observers;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  BSDispatchQueueAssertMain();
  v4 = observerCopy;
  if (observerCopy)
  {
    [(NSHashTable *)self->_observers removeObject:observerCopy];
    v5 = [(NSHashTable *)self->_observers count];
    v4 = observerCopy;
    if (!v5)
    {
      observers = self->_observers;
      self->_observers = 0;

      v4 = observerCopy;
    }
  }
}

- (id)_hitTest:(CGPoint)test withEvent:(id)event windowServerHitTestWindow:(id)window
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  windowCopy = window;
  window = [(UIView *)self window];

  if (window == windowCopy)
  {
    v16.receiver = self;
    v16.super_class = _UIScenePresentationView;
    v13 = [(UIView *)&v16 _hitTest:eventCopy withEvent:windowCopy windowServerHitTestWindow:x, y];
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

- (void)setBackgroundView:(id)view
{
  viewCopy = view;
  BSDispatchQueueAssertMain();
  if (self->_backgroundView != viewCopy)
  {
    objc_storeStrong(&self->_backgroundView, view);
    [(_UISceneLayerHostContainerView *)self->_hostContainerView refreshDataSource:self];
  }
}

- (id)identifier
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  identifier = [WeakRetained identifier];

  return identifier;
}

- (void)scene:(id)scene clientDidConnect:(id)connect
{
  sceneCopy = scene;
  processHandle = [connect processHandle];
  v7 = [processHandle pid];

  v8 = sceneCopy;
  if (v7 >= 1)
  {
    v9 = MEMORY[0x1E69C7640];
    identityToken = [sceneCopy identityToken];
    stringRepresentation = [identityToken stringRepresentation];
    v12 = _UISVisibilityEnvironmentForSceneIdentityTokenString();
    v13 = [v9 targetWithPid:v7 environmentIdentifier:v12];
    if (self)
    {
      [(_UIVisibilityPropagationInteraction *)self->super._interaction _setVisibilityTarget:v13];
    }

    v8 = sceneCopy;
  }
}

- (void)sceneDidActivate:(id)activate
{
  activateCopy = activate;
  clientHandle = [activateCopy clientHandle];
  processHandle = [clientHandle processHandle];
  v6 = [processHandle pid];

  v7 = activateCopy;
  if (v6 >= 1)
  {
    v8 = MEMORY[0x1E69C7640];
    identityToken = [activateCopy identityToken];
    stringRepresentation = [identityToken stringRepresentation];
    v11 = _UISVisibilityEnvironmentForSceneIdentityTokenString();
    v12 = [v8 targetWithPid:v6 environmentIdentifier:v11];
    if (self)
    {
      [(_UIVisibilityPropagationInteraction *)self->super._interaction _setVisibilityTarget:v12];
    }

    v7 = activateCopy;
  }
}

- (void)sceneWillDeactivate:(id)deactivate withContext:(id)context
{
  if (self)
  {
    [(_UIVisibilityPropagationInteraction *)self->super._interaction _setVisibilityTarget:?];
  }
}

- (void)scene:(id)scene didPrepareUpdateWithContext:(id)context
{
  contextCopy = context;
  transactionID = [contextCopy transactionID];
  settings = [contextCopy settings];
  effectiveSettings = self->_effectiveSettings;
  self->_effectiveSettings = settings;

  if (!self->_geometrySettingsDiffInspector)
  {
    v9 = objc_alloc_init(MEMORY[0x1E699FC38]);
    geometrySettingsDiffInspector = self->_geometrySettingsDiffInspector;
    self->_geometrySettingsDiffInspector = v9;

    [(FBSSceneSettingsDiffInspector *)self->_geometrySettingsDiffInspector observeFrameWithBlock:&__block_literal_global_259];
    [(FBSSceneSettingsDiffInspector *)self->_geometrySettingsDiffInspector observeInterfaceOrientationWithBlock:&__block_literal_global_26_2];
    [(FBSSceneSettingsDiffInspector *)self->_geometrySettingsDiffInspector observeDisplayConfigurationWithBlock:&__block_literal_global_28_1];
  }

  if (transactionID <= 1 || (v14 = 0, v11 = self->_geometrySettingsDiffInspector, [contextCopy settingsDiff], v12 = objc_claimAutoreleasedReturnValue(), -[FBSSceneSettingsDiffInspector inspectDiff:withContext:](v11, "inspectDiff:withContext:", v12, &v14), v12, v14 == 1))
  {
    transitionContext = [contextCopy transitionContext];
    [(_UIScenePresentationView *)self _geometryDidUpdateWithTransitionContext:transitionContext];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_UIScenePresentationView *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  v5 = [v3 appendObject:WeakRetained withName:@"presenter" skipIfNil:1];

  _exclusiveLayerTargetsToInclude = [(UIScenePresentationContext *)self->_currentPresentationContext _exclusiveLayerTargetsToInclude];
  if ([_exclusiveLayerTargetsToInclude count] == 1)
  {
    anyObject = [_exclusiveLayerTargetsToInclude anyObject];
    v8 = [v3 appendObject:anyObject withName:@"exclusiveHostLayerTarget"];
  }

  else if ([_exclusiveLayerTargetsToInclude count])
  {
    v9 = [v3 appendObject:_exclusiveLayerTargetsToInclude withName:@"exclusiveHostLayerTargets"];
  }

  identifier = [(FBScene *)self->_scene identifier];
  v11 = [v3 appendObject:identifier withName:@"sceneID" skipIfNil:1];

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

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIScenePresentationView *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(_UIScenePresentationView *)self succinctDescriptionBuilder];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66___UIScenePresentationView_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v10[4] = self;
  v6 = succinctDescriptionBuilder;
  v11 = v6;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

  v7 = v11;
  v8 = v6;

  return v6;
}

- (void)_updatePresentationContextFrom:(id)from toContext:(id)context
{
  fromCopy = from;
  contextCopy = context;
  [(_UISceneLayerHostContainerView *)self->_hostContainerView refreshDataSource:self];
  backgroundColorWhileHosting = [fromCopy backgroundColorWhileHosting];
  backgroundColorWhileHosting2 = [contextCopy backgroundColorWhileHosting];
  if (BSEqualObjects())
  {
    backgroundColorWhileNotHosting = [fromCopy backgroundColorWhileNotHosting];
    backgroundColorWhileNotHosting2 = [contextCopy backgroundColorWhileNotHosting];
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
  appearanceStyle = [fromCopy appearanceStyle];
  if (appearanceStyle != [contextCopy appearanceStyle] || (objc_msgSend(fromCopy, "hostTransformer"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(contextCopy, "hostTransformer"), v14 = objc_claimAutoreleasedReturnValue(), v15 = BSEqualObjects(), v14, v13, (v15 & 1) == 0))
  {
    [(_UIScenePresentationView *)self _updateFrameAndTransform];
  }

  [fromCopy _isVisibilityPropagationEnabled];
  [contextCopy _isVisibilityPropagationEnabled];
  if ((BSEqualBools() & 1) == 0)
  {
    -[_UIVisibilityPropagationInteraction _setVisibilityPropagationEnabled:](self->super._interaction, [contextCopy _isVisibilityPropagationEnabled]);
  }
}

- (void)_geometryDidUpdateWithTransitionContext:(id)context
{
  v4 = MEMORY[0x1E698E608];
  animationSettings = [context animationSettings];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68___UIScenePresentationView__geometryDidUpdateWithTransitionContext___block_invoke;
  v6[3] = &unk_1E70F5AC0;
  v6[4] = self;
  [v4 tryAnimatingWithSettings:animationSettings actions:v6 completion:0];
}

@end