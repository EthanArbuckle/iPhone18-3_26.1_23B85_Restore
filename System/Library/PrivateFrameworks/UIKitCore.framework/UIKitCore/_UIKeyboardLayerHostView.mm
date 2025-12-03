@interface _UIKeyboardLayerHostView
- (_UIKeyboardLayerHostView)initWithKeyboardLayer:(id)layer owningScene:(id)scene;
- (_UIKeyboardLayerHostView)initWithKeyboardProxyLayer:(id)layer owningScene:(id)scene;
- (id)_initWithLayer:(id)layer owningScene:(id)scene keyboardMatchingPredicate:(id)predicate;
- (void)_setKeyboardScene:(id)scene;
- (void)_updatePairingState;
- (void)dealloc;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)setCurrentPresentationContext:(id)context;
- (void)setInheritsSecurity:(BOOL)security;
@end

@implementation _UIKeyboardLayerHostView

- (void)_updatePairingState
{
  keyboardScene = self->_keyboardScene;
  if (!keyboardScene || !self->_owningScene)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIKeyboardLayerHostView.m" lineNumber:153 description:@"Require a keyboard scene."];

    keyboardScene = self->_keyboardScene;
  }

  clientSettings = [(FBScene *)keyboardScene clientSettings];
  preferredSceneHostIdentity = [clientSettings preferredSceneHostIdentity];
  keyboardPreferredHostIdentity = self->_keyboardPreferredHostIdentity;
  self->_keyboardPreferredHostIdentity = preferredSceneHostIdentity;

  v8 = (*(self->_sceneLayerMatchingPredicate + 2))();
  if (self->_isPaired != v8)
  {
    self->_isPaired = v8;
    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x1E696AEC0]);
      v10 = _updatePairingState___hostViewRequesterCount++;
      identifier = [(FBScene *)self->_keyboardScene identifier];
      v12 = [v9 initWithFormat:@"UIKeyboardSceneLayerHostView-%i:%@", v10, identifier];

      uiPresentationManager = [(FBScene *)self->_keyboardScene uiPresentationManager];
      v14 = [uiPresentationManager createPresenterWithIdentifier:v12 priority:{objc_msgSend(uiPresentationManager, "_defaultPresentationPriority") - 1}];
      presenter = self->_presenter;
      self->_presenter = v14;

      v16 = self->_presenter;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __47___UIKeyboardLayerHostView__updatePairingState__block_invoke;
      v20[3] = &unk_1E70FA288;
      v20[4] = self;
      [(UIScenePresenter *)v16 modifyPresentationContext:v20];
      [(UIScenePresenter *)self->_presenter activate];
      presentationView = [(UIScenePresenter *)self->_presenter presentationView];
      [(UIView *)self addSubview:presentationView];
    }

    else
    {
      [(UIScenePresenter *)self->_presenter invalidate];
      v18 = self->_presenter;
      self->_presenter = 0;
    }
  }
}

- (id)_initWithLayer:(id)layer owningScene:(id)scene keyboardMatchingPredicate:(id)predicate
{
  layerCopy = layer;
  sceneCopy = scene;
  predicateCopy = predicate;
  if (layerCopy)
  {
    if (sceneCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIKeyboardLayerHostView.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"scene"}];

    if (predicateCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIKeyboardLayerHostView.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"layer"}];

  if (!sceneCopy)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (predicateCopy)
  {
    goto LABEL_4;
  }

LABEL_11:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UIKeyboardLayerHostView.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"predicate"}];

LABEL_4:
  v25.receiver = self;
  v25.super_class = _UIKeyboardLayerHostView;
  v12 = [(_UISceneLayerHostView *)&v25 initWithSceneLayer:layerCopy];
  if (v12)
  {
    v13 = _Block_copy(predicateCopy);
    sceneLayerMatchingPredicate = v12->_sceneLayerMatchingPredicate;
    v12->_sceneLayerMatchingPredicate = v13;

    objc_storeStrong(&v12->_owningScene, scene);
    objc_initWeak(&location, v12);
    v15 = MEMORY[0x1E699F7D8];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __81___UIKeyboardLayerHostView__initWithLayer_owningScene_keyboardMatchingPredicate___block_invoke;
    v22[3] = &unk_1E70FA238;
    objc_copyWeak(&v23, &location);
    v16 = [v15 observeKeyboardSceneAvailability:v22];
    keyboardSceneAvailabilityObserver = v12->_keyboardSceneAvailabilityObserver;
    v12->_keyboardSceneAvailabilityObserver = v16;

    if (v12->_keyboardScene)
    {
      [(_UIKeyboardLayerHostView *)v12 _updatePairingState];
    }

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v12;
}

- (_UIKeyboardLayerHostView)initWithKeyboardProxyLayer:(id)layer owningScene:(id)scene
{
  layerCopy = layer;
  sceneCopy = scene;
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67___UIKeyboardLayerHostView_initWithKeyboardProxyLayer_owningScene___block_invoke;
  v11[3] = &unk_1E70FA260;
  objc_copyWeak(&v13, &location);
  v8 = layerCopy;
  v12 = v8;
  v9 = [(_UIKeyboardLayerHostView *)self _initWithLayer:v8 owningScene:sceneCopy keyboardMatchingPredicate:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v9;
}

- (_UIKeyboardLayerHostView)initWithKeyboardLayer:(id)layer owningScene:(id)scene
{
  layerCopy = layer;
  sceneCopy = scene;
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62___UIKeyboardLayerHostView_initWithKeyboardLayer_owningScene___block_invoke;
  v11[3] = &unk_1E70FA260;
  objc_copyWeak(&v13, &location);
  v8 = sceneCopy;
  v12 = v8;
  v9 = [(_UIKeyboardLayerHostView *)self _initWithLayer:layerCopy owningScene:v8 keyboardMatchingPredicate:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v9;
}

- (void)dealloc
{
  [(UIScenePresenter *)self->_presenter invalidate];
  [(FBScene *)self->_keyboardScene removeObserver:self];
  [(BSInvalidatable *)self->_keyboardSceneAvailabilityObserver invalidate];
  v3.receiver = self;
  v3.super_class = _UIKeyboardLayerHostView;
  [(UIView *)&v3 dealloc];
}

- (void)setCurrentPresentationContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = _UIKeyboardLayerHostView;
  [(_UISceneLayerHostView *)&v10 setCurrentPresentationContext:contextCopy];
  presentationContext = [(UIScenePresenter *)self->_presenter presentationContext];
  [presentationContext _isVisibilityPropagationEnabled];
  [contextCopy _isVisibilityPropagationEnabled];
  v6 = BSEqualBools();

  if ((v6 & 1) == 0)
  {
    presenter = self->_presenter;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58___UIKeyboardLayerHostView_setCurrentPresentationContext___block_invoke;
    v8[3] = &unk_1E70FA288;
    v9 = contextCopy;
    [(UIScenePresenter *)presenter modifyPresentationContext:v8];
  }
}

- (void)setInheritsSecurity:(BOOL)security
{
  v8.receiver = self;
  v8.super_class = _UIKeyboardLayerHostView;
  [(_UISceneLayerHostView *)&v8 setInheritsSecurity:?];
  if (self->_isPaired)
  {
    presenter = self->_presenter;
    if (presenter)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __48___UIKeyboardLayerHostView_setInheritsSecurity___block_invoke;
      v6[3] = &__block_descriptor_33_e43_v16__0__UIMutableScenePresentationContext_8l;
      securityCopy = security;
      [(UIScenePresenter *)presenter modifyPresentationContext:v6];
    }
  }
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
  objc_initWeak(&location, self);
  keyboardSceneClientSettingsDiffInspector = self->_keyboardSceneClientSettingsDiffInspector;
  if (!keyboardSceneClientSettingsDiffInspector)
  {
    v10 = objc_alloc_init(MEMORY[0x1E699FBF0]);
    v11 = self->_keyboardSceneClientSettingsDiffInspector;
    self->_keyboardSceneClientSettingsDiffInspector = v10;

    v12 = self->_keyboardSceneClientSettingsDiffInspector;
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __58___UIKeyboardLayerHostView_scene_didUpdateClientSettings___block_invoke;
    v16 = &unk_1E70FA2D0;
    objc_copyWeak(&v17, &location);
    [(FBSSceneClientSettingsDiffInspector *)v12 observePreferredSceneHostIdentityWithBlock:&v13];
    objc_destroyWeak(&v17);
    keyboardSceneClientSettingsDiffInspector = self->_keyboardSceneClientSettingsDiffInspector;
  }

  [(FBSSceneClientSettingsDiffInspector *)keyboardSceneClientSettingsDiffInspector inspectDiff:settingsDiff withContext:0, v13, v14, v15, v16];
  objc_destroyWeak(&location);
}

- (void)_setKeyboardScene:(id)scene
{
  sceneCopy = scene;
  if (self->_keyboardScene)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIKeyboardLayerHostView.m" lineNumber:138 description:@"Cannot already have a keyboard scene."];
  }

  [(BSInvalidatable *)self->_keyboardSceneAvailabilityObserver invalidate];
  keyboardSceneAvailabilityObserver = self->_keyboardSceneAvailabilityObserver;
  self->_keyboardSceneAvailabilityObserver = 0;

  [(FBScene *)self->_keyboardScene removeObserver:self];
  keyboardScene = self->_keyboardScene;
  self->_keyboardScene = sceneCopy;
  v8 = sceneCopy;

  [(FBScene *)self->_keyboardScene addObserver:self];

  [(_UIKeyboardLayerHostView *)self _updatePairingState];
}

@end