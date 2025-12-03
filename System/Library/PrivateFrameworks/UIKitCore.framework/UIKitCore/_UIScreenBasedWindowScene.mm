@interface _UIScreenBasedWindowScene
+ (id)_unassociatedWindowSceneForScreen:(id)screen create:(BOOL)create;
+ (id)unassociationCache;
+ (id)unassociationCacheAccessQueue;
- (CGRect)_referenceBounds;
- (CGRect)_referenceBoundsForOrientation:(int64_t)orientation;
- (_UIScreenBasedWindowScene)initWithScreen:(id)screen session:(id)session lookupKey:(id)key;
- (id)_displayInfoProvider;
- (id)_homeAffordanceSceneNotifier;
- (id)_preventAutoInvalidationForReason:(uint64_t)reason;
- (id)_primaryViewServiceOperator;
- (id)_synthesizedSettings;
- (id)renderingEnvironment;
- (id)screen;
- (id)systemShellHostingEnvironment;
- (void)_addSubclassDebugDescriptionWithBuilder:(id)builder;
- (void)_addSubclassFlagsToDebugDescriptionWithBuilder:(id)builder;
- (void)_attachWindow:(id)window;
- (void)_detachWindow:(id)window;
- (void)_invalidate;
- (void)_openURL:(id)l options:(id)options completionHandler:(id)handler;
- (void)_performInvalidationIfNeeded;
- (void)_removeAutoInvalidationPreventionAssertion:(id)assertion;
- (void)_screenDisconnected:(id)disconnected;
- (void)_screenInterfaceOrientationChanged:(id)changed;
- (void)_setKeepContextAssociationInBackground:(BOOL)background;
@end

@implementation _UIScreenBasedWindowScene

+ (id)unassociationCacheAccessQueue
{
  if (qword_1ED499DE8 != -1)
  {
    dispatch_once(&qword_1ED499DE8, &__block_literal_global_101);
  }

  v3 = _MergedGlobals_17;

  return v3;
}

+ (id)unassociationCache
{
  unassociationCacheAccessQueue = [objc_opt_class() unassociationCacheAccessQueue];
  dispatch_assert_queue_V2(unassociationCacheAccessQueue);

  v3 = unassociationCache__screenWindowSceneDictionary;
  if (!unassociationCache__screenWindowSceneDictionary)
  {
    v4 = objc_opt_new();
    v5 = unassociationCache__screenWindowSceneDictionary;
    unassociationCache__screenWindowSceneDictionary = v4;

    v3 = unassociationCache__screenWindowSceneDictionary;
  }

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 objectForKeyedSubscript:v7];

  if (!v8)
  {
    v8 = objc_opt_new();
    v9 = unassociationCache__screenWindowSceneDictionary;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v9 setObject:v8 forKey:v11];
  }

  return v8;
}

- (id)screen
{
  screen = self->_screen;
  if (screen)
  {
    mainScreen = screen;
  }

  else
  {
    mainScreen = [objc_opt_self() mainScreen];
  }

  return mainScreen;
}

- (id)_synthesizedSettings
{
  if (!self->_synthesizedSettings)
  {
    v3 = objc_opt_new();
    [(UIMutableApplicationSceneSettings *)v3 setForeground:0];
    synthesizedSettings = self->_synthesizedSettings;
    self->_synthesizedSettings = v3;
  }

  [(UIScreen *)self->_screen _referenceBounds];
  [(UIMutableApplicationSceneSettings *)self->_synthesizedSettings setFrame:?];
  [(UIMutableApplicationSceneSettings *)self->_synthesizedSettings setArtworkSubtype:[(UIScreen *)self->_screen _artworkSubtype]];
  [(UIMutableApplicationSceneSettings *)self->_synthesizedSettings setInterfaceOrientation:[(UIScreen *)self->_screen _interfaceOrientation]];
  [(UIMutableApplicationSceneSettings *)self->_synthesizedSettings setArtworkSubtype:[(UIScreen *)self->_screen _artworkSubtype]];
  displayConfiguration = [(UIScreen *)self->_screen displayConfiguration];
  if (displayConfiguration)
  {
    [(UIMutableApplicationSceneSettings *)self->_synthesizedSettings setDisplayConfiguration:displayConfiguration];
  }

  traitCollection = [(UIScreen *)self->_screen traitCollection];
  -[UIMutableApplicationSceneSettings setUserInterfaceStyle:](self->_synthesizedSettings, "setUserInterfaceStyle:", [traitCollection userInterfaceStyle]);

  v7 = [(UIMutableApplicationSceneSettings *)self->_synthesizedSettings copy];

  return v7;
}

- (id)_displayInfoProvider
{
  screen = [(_UIScreenBasedWindowScene *)self screen];
  _displayInfoProvider = [screen _displayInfoProvider];

  return _displayInfoProvider;
}

- (CGRect)_referenceBounds
{
  [(UIScreen *)self->_screen _unjailedReferenceBounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)_homeAffordanceSceneNotifier
{
  if (!_UIDeviceSupportsGlobalEdgeSwipeTouches())
  {
    goto LABEL_6;
  }

  v3 = _UIApplicationSupportsHomeAffordanceObservation();
  _existingHomeAffordanceSceneNotifier = 0;
  if (self && v3)
  {
    if (![(UIScene *)self _hostsWindows]|| [(UIScene *)self _hasInvalidated])
    {
LABEL_6:
      _existingHomeAffordanceSceneNotifier = 0;
      goto LABEL_7;
    }

    _existingHomeAffordanceSceneNotifier = [(UIScene *)self _existingHomeAffordanceSceneNotifier];
    if (!_existingHomeAffordanceSceneNotifier)
    {
      [UIApp isFrontBoard];
      _existingHomeAffordanceSceneNotifier = [objc_alloc(objc_opt_class()) initWithScene:self];
      [(UIWindowScene *)self _registerSceneComponent:_existingHomeAffordanceSceneNotifier forKey:@"_UIHomeAffordanceSceneNotifierComponentKey"];
    }
  }

LABEL_7:

  return _existingHomeAffordanceSceneNotifier;
}

+ (id)_unassociatedWindowSceneForScreen:(id)screen create:(BOOL)create
{
  screenCopy = screen;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__25;
  v37 = __Block_byref_object_dispose__25;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__25;
  v31 = __Block_byref_object_dispose__25;
  v32 = 0;
  unassociationCacheAccessQueue = [self unassociationCacheAccessQueue];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __70___UIScreenBasedWindowScene__unassociatedWindowSceneForScreen_create___block_invoke;
  v20 = &unk_1E70FA120;
  v22 = &v33;
  v8 = screenCopy;
  v21 = v8;
  v23 = &v27;
  v24 = &v39;
  createCopy = create;
  selfCopy = self;
  dispatch_sync(unassociationCacheAccessQueue, &v17);

  v9 = v28;
  if (*(v40 + 24) == 1 && v28[5] && v34[5])
  {
    v10 = [self alloc];
    session = [v28[5] session];
    v12 = [v10 initWithScreen:v8 session:session lookupKey:v34[5]];

    [v28[5] setScene:v12];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"UISceneWillConnectNotification" object:v12];

    session2 = [v28[5] session];
    [session2 _setScene:v12];

    v9 = v28;
  }

  scene = [v9[5] scene];

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);

  return scene;
}

- (_UIScreenBasedWindowScene)initWithScreen:(id)screen session:(id)session lookupKey:(id)key
{
  screenCopy = screen;
  keyCopy = key;
  sessionCopy = session;
  v13 = objc_opt_new();
  v14 = [UISceneConnectionOptions alloc];
  v15 = objc_opt_new();
  v16 = [(UISceneConnectionOptions *)&v14->super.isa _initWithConnectionOptionsContext:v15 fbsScene:0 specification:v13];

  [sessionCopy _resetStateRestorationToActivity:0];
  [sessionCopy _clearAllDirtyFlags];
  objc_storeStrong(&self->_screen, screen);
  objc_storeStrong(&self->_lookupKey, key);
  v17 = objc_opt_new();
  metricsCalculator = self->super._metricsCalculator;
  self->super._metricsCalculator = v17;

  v31.receiver = self;
  v31.super_class = _UIScreenBasedWindowScene;
  v19 = [(UIWindowScene *)&v31 initWithSession:sessionCopy connectionOptions:v16];

  if (v19)
  {
    [(UIWindowScene *)v19 _computeMetrics:0];
    if ([objc_opt_class() shouldAllowComponents])
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __62___UIScreenBasedWindowScene_initWithScreen_session_lookupKey___block_invoke;
      aBlock[3] = &unk_1E70FA148;
      v30 = a2;
      v20 = v19;
      v28 = v20;
      v21 = v13;
      v29 = v21;
      v22 = _Block_copy(aBlock);
      coreSceneComponentClassDictionary = [v21 coreSceneComponentClassDictionary];
      [coreSceneComponentClassDictionary enumerateKeysAndObjectsUsingBlock:v22];

      baseSceneComponentClassDictionary = [v21 baseSceneComponentClassDictionary];
      [baseSceneComponentClassDictionary enumerateKeysAndObjectsUsingBlock:v22];

      [(UIScene *)v20 _initializeSceneComponents];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v19 selector:sel__screenDisconnected_ name:@"_UIScreenDidDisconnectNotification" object:screenCopy];
    [defaultCenter addObserver:v19 selector:sel__screenInterfaceOrientationChanged_ name:@"_UIScreenInterfaceOrientationDidChangeNotification" object:screenCopy];
  }

  return v19;
}

- (void)_invalidate
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = _UIScreenBasedWindowScene;
  [(UIWindowScene *)&v4 _invalidate];
}

- (void)_performInvalidationIfNeeded
{
  v9 = *MEMORY[0x1E69E9840];
  if (self && self[537] == 1 && ([self _hasInvalidated] & 1) == 0)
  {
    self[537] = 0;
    v2 = *(__UILogGetCategoryCachedImpl("SceneAutoInvalidation", &_performInvalidationIfNeeded___s_category) + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
      succinctDescription = [self succinctDescription];
      *buf = 138543362;
      v8 = succinctDescription;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "Performing invalidation for scene: %{public}@", buf, 0xCu);
    }

    [self _invalidate];
    unassociationCacheAccessQueue = [objc_opt_class() unassociationCacheAccessQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57___UIScreenBasedWindowScene__performInvalidationIfNeeded__block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    dispatch_sync(unassociationCacheAccessQueue, block);
  }
}

- (id)_preventAutoInvalidationForReason:(uint64_t)reason
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (reason && [objc_opt_class() autoInvalidates] && (*(reason + 537) & 1) == 0)
  {
    if (!*(reason + 552))
    {
      v5 = objc_opt_new();
      v6 = *(reason + 552);
      *(reason + 552) = v5;
    }

    v7 = objc_opt_class();
    Name = class_getName(v7);
    if (!*(reason + 544))
    {
      reason = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %p: prevent screen disconnection", Name, reason];
      v10 = [(UIScreen *)*(reason + 520) _preventDisconnectionForReason:reason];
      v11 = *(reason + 544);
      *(reason + 544) = v10;
    }

    objc_initWeak(&location, reason);
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s-%p-%lu", Name, reason, ++qword_1ED499DF0];
    v13 = objc_alloc(MEMORY[0x1E698E778]);
    v14 = MEMORY[0x1E69E96A0];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __63___UIScreenBasedWindowScene__preventAutoInvalidationForReason___block_invoke;
    v24[3] = &unk_1E70FA170;
    objc_copyWeak(&v25, &location);
    v4 = [v13 initWithIdentifier:v12 forReason:v3 queue:MEMORY[0x1E69E96A0] invalidationBlock:v24];

    [*(reason + 552) addObject:v4];
    v15 = *(__UILogGetCategoryCachedImpl("SceneAutoInvalidation", &qword_1ED499DF8) + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      reasonCopy = reason;
      v17 = MEMORY[0x1E696AEC0];
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      reasonCopy = [v17 stringWithFormat:@"<%@: %p>", v19, reasonCopy];

      v21 = reasonCopy;
      v22 = [reasonCopy[69] count];
      *buf = 138543874;
      v28 = v21;
      v29 = 2048;
      v30 = v22;
      v31 = 2114;
      v32 = v4;
      _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEFAULT, "Preventing auto invalidation of scene: %{public}@; assertionsCount: %lu; assertion: %{public}@", buf, 0x20u);
    }

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_removeAutoInvalidationPreventionAssertion:(id)assertion
{
  v26 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  if (([(NSMutableSet *)self->_autoInvalidationPreventionAssertions containsObject:assertionCopy]& 1) == 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v18 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        autoInvalidationPreventionAssertions = self->_autoInvalidationPreventionAssertions;
        *buf = 138412546;
        v21 = assertionCopy;
        v22 = 2112;
        v23 = autoInvalidationPreventionAssertions;
        _os_log_fault_impl(&dword_188A29000, v18, OS_LOG_TYPE_FAULT, "Attempting to remove untracked autoInvalidationPreventionAssertion: %@; _autoInvalidationPreventionAssertions: %@", buf, 0x16u);
      }
    }

    else
    {
      v16 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED499E00) + 8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = self->_autoInvalidationPreventionAssertions;
        *buf = 138412546;
        v21 = assertionCopy;
        v22 = 2112;
        v23 = v17;
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Attempting to remove untracked autoInvalidationPreventionAssertion: %@; _autoInvalidationPreventionAssertions: %@", buf, 0x16u);
      }
    }
  }

  v5 = *(__UILogGetCategoryCachedImpl("SceneAutoInvalidation", &qword_1ED499E08) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x1E696AEC0];
    selfCopy = self;
    v8 = v5;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    selfCopy = [v6 stringWithFormat:@"<%@: %p>", v10, selfCopy];

    v12 = self->_autoInvalidationPreventionAssertions;
    v13 = selfCopy;
    v14 = [(NSMutableSet *)v12 count];
    *buf = 138543874;
    v21 = selfCopy;
    v22 = 2048;
    v23 = v14;
    v24 = 2114;
    v25 = assertionCopy;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "Removing autoInvalidationPreventionAssertion from scene: %{public}@; assertionsCount: %lu; assertion: %{public}@; ", buf, 0x20u);
  }

  [(NSMutableSet *)self->_autoInvalidationPreventionAssertions removeObject:assertionCopy];
  if (![(NSMutableSet *)self->_autoInvalidationPreventionAssertions count])
  {
    [(_UIScreenBasedWindowScene *)self _performInvalidationIfNeeded];
    [(BSInvalidatable *)self->_screenDisconnectionPreventionAssertion invalidate];
    screenDisconnectionPreventionAssertion = self->_screenDisconnectionPreventionAssertion;
    self->_screenDisconnectionPreventionAssertion = 0;
  }
}

- (id)_primaryViewServiceOperator
{
  v3 = +[_UIActiveViewServiceSessionTracker sharedTracker];
  if (![(_UIActiveViewServiceSessionTracker *)v3 hasTrackedSessions])
  {
    v10 = 0;
    goto LABEL_26;
  }

  traitCollection = [(UIWindowScene *)self traitCollection];
  v5 = -[_UIActiveViewServiceSessionTracker mostActiveViewServiceSessionForUserInterfaceIdiom:](v3, [traitCollection userInterfaceIdiom]);

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(v5 + 9);
  }

  else
  {
    WeakRetained = 0;
  }

  v7 = objc_opt_class();
  v8 = WeakRetained;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = v9;

  if (!v11)
  {
    goto LABEL_15;
  }

  windowScene = [v11 windowScene];
  selfCopy = self;
  v14 = selfCopy;
  if (windowScene == selfCopy)
  {

    goto LABEL_17;
  }

  if (!selfCopy || !windowScene)
  {

    v10 = 0;
LABEL_24:

    goto LABEL_25;
  }

  v15 = [(_UIScreenBasedWindowScene *)windowScene isEqual:selfCopy];

  if (v15)
  {
LABEL_17:
    rootViewController = [v11 rootViewController];
    v17 = objc_opt_class();
    windowScene = rootViewController;
    if (v17)
    {
      if (objc_opt_isKindOfClass())
      {
        v18 = windowScene;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    v10 = v18;
    goto LABEL_24;
  }

LABEL_15:
  v10 = 0;
LABEL_25:

LABEL_26:

  return v10;
}

- (void)_addSubclassFlagsToDebugDescriptionWithBuilder:(id)builder
{
  builderCopy = builder;
  v7.receiver = self;
  v7.super_class = _UIScreenBasedWindowScene;
  [(UIScene *)&v7 _addSubclassFlagsToDebugDescriptionWithBuilder:builderCopy];
  v5 = [builderCopy appendBool:objc_msgSend(objc_opt_class() withName:{"autoInvalidates"), @"autoInvalidates"}];
  v6 = [builderCopy appendBool:self->_needsInvalidation withName:@"needsInvalidation"];
}

- (void)_addSubclassDebugDescriptionWithBuilder:(id)builder
{
  builderCopy = builder;
  v10.receiver = self;
  v10.super_class = _UIScreenBasedWindowScene;
  [(UIWindowScene *)&v10 _addSubclassDebugDescriptionWithBuilder:builderCopy];
  screenDisconnectionPreventionAssertion = self->_screenDisconnectionPreventionAssertion;
  if (screenDisconnectionPreventionAssertion)
  {
    v6 = [builderCopy appendObject:screenDisconnectionPreventionAssertion withName:@"screenDisconnectionPreventionAssertion"];
  }

  if (self->_autoInvalidationPreventionAssertions)
  {
    activeMultilinePrefix = [builderCopy activeMultilinePrefix];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69___UIScreenBasedWindowScene__addSubclassDebugDescriptionWithBuilder___block_invoke;
    v8[3] = &unk_1E70F35B8;
    v8[4] = self;
    v9 = builderCopy;
    [v9 appendBodySectionWithName:@"autoInvalidationPreventionAssertions" multilinePrefix:activeMultilinePrefix block:v8];
  }
}

- (CGRect)_referenceBoundsForOrientation:(int64_t)orientation
{
  [(UIScreen *)self->_screen _unjailedReferenceBoundsForInterfaceOrientation:orientation];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_setKeepContextAssociationInBackground:(BOOL)background
{
  backgroundCopy = background;
  if ([objc_opt_class() alwaysKeepContexts])
  {
    _contextBinder = [(UIWindowScene *)self _contextBinder];
    [_contextBinder setContextManagementPolicy:1];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _UIScreenBasedWindowScene;
    [(UIWindowScene *)&v6 _setKeepContextAssociationInBackground:backgroundCopy];
  }
}

- (void)_attachWindow:(id)window
{
  v5.receiver = self;
  v5.super_class = _UIScreenBasedWindowScene;
  [(UIWindowScene *)&v5 _attachWindow:window];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_UIScreenBasedWindowSceneDidAttachWindowNotification" object:self userInfo:0];
}

- (void)_detachWindow:(id)window
{
  v5.receiver = self;
  v5.super_class = _UIScreenBasedWindowScene;
  [(UIWindowScene *)&v5 _detachWindow:window];
  if ([objc_opt_class() autoInvalidates] && !self->_invalidationEvaluatorRegistered && !-[UIScene _hasInvalidated](self, "_hasInvalidated") && !self->_invalidationEvaluatorRegistered)
  {
    self->_invalidationEvaluatorRegistered = 1;
    objc_initWeak(&location, self);
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __67___UIScreenBasedWindowScene__registerInvalidationEvaluatorIfNeeded__block_invoke;
    v6[3] = &unk_1E70F2F80;
    objc_copyWeak(&v7, &location);
    v6[4] = self;
    [mainRunLoop performBlock:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)_openURL:(id)l options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = handlerCopy;
  if (handlerCopy)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64___UIScreenBasedWindowScene__openURL_options_completionHandler___block_invoke;
    block[3] = &unk_1E70F0F78;
    v8 = handlerCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_screenDisconnected:(id)disconnected
{
  v17 = *MEMORY[0x1E69E9840];
  disconnectedCopy = disconnected;
  object = [disconnectedCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object2 = [disconnectedCopy object];
    if (object2 == self->_screen)
    {
      if (self->_screenDisconnectionPreventionAssertion)
      {
        if (os_variant_has_internal_diagnostics())
        {
          v11 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            screenDisconnectionPreventionAssertion = self->_screenDisconnectionPreventionAssertion;
            v13 = 138412546;
            v14 = object2;
            v15 = 2112;
            v16 = screenDisconnectionPreventionAssertion;
            _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Screen is disconnecting when we have an assertion that should prevent it from doing so: %@; screenDisconnectionPreventionAssertion: %@", &v13, 0x16u);
          }
        }

        else
        {
          v9 = *(__UILogGetCategoryCachedImpl("Assert", &_screenDisconnected____s_category) + 8);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v10 = self->_screenDisconnectionPreventionAssertion;
            v13 = 138412546;
            v14 = object2;
            v15 = 2112;
            v16 = v10;
            _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Screen is disconnecting when we have an assertion that should prevent it from doing so: %@; screenDisconnectionPreventionAssertion: %@", &v13, 0x16u);
          }
        }
      }

      [(BSInvalidatable *)self->_screenDisconnectionPreventionAssertion invalidate];
      v8 = self->_screenDisconnectionPreventionAssertion;
      self->_screenDisconnectionPreventionAssertion = 0;

      self->_needsInvalidation = 1;
      [(_UIScreenBasedWindowScene *)self _performInvalidationIfNeeded];
    }
  }
}

- (void)_screenInterfaceOrientationChanged:(id)changed
{
  changedCopy = changed;
  object = [changedCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = changedCopy;
  if (isKindOfClass)
  {
    object2 = [changedCopy object];
    if (object2 == self->_screen)
    {
      [(UIWindowScene *)self _computeMetrics:0];
    }

    v6 = changedCopy;
  }
}

- (id)systemShellHostingEnvironment
{
  _settingsScene = [(UIScene *)self _settingsScene];
  if ([(UIScene *)self _hasSettingsScene])
  {
    systemShellHostingEnvironment = [_settingsScene systemShellHostingEnvironment];
    goto LABEL_17;
  }

  _primaryViewServiceOperator = [(_UIScreenBasedWindowScene *)self _primaryViewServiceOperator];
  _sceneContext = [_primaryViewServiceOperator _sceneContext];
  v7 = _sceneContext;
  if (!_sceneContext)
  {
    if (([UIApp isFrontBoard] & 1) == 0)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v15 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v15, OS_LOG_TYPE_FAULT, "Unexpectedly falling back to the key window scene for the systemShellHostingEnvironment", buf, 2u);
        }
      }

      else
      {
        v14 = *(__UILogGetCategoryCachedImpl("Assert", &systemShellHostingEnvironment___s_category) + 8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v16[0] = 0;
          _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Unexpectedly falling back to the key window scene for the systemShellHostingEnvironment", v16, 2u);
        }
      }
    }

    v8 = +[UIWindowScene _keyWindowScene];
    if (v8)
    {
      selfCopy = self;
      v10 = v8;
      v11 = v10;
      if (v10 == selfCopy)
      {
      }

      else
      {
        if (!selfCopy)
        {

LABEL_14:
          systemShellHostingEnvironment = [(_UIScreenBasedWindowScene *)v11 systemShellHostingEnvironment];
          goto LABEL_15;
        }

        v12 = [(_UIScreenBasedWindowScene *)selfCopy isEqual:v10];

        if ((v12 & 1) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    systemShellHostingEnvironment = 0;
LABEL_15:

    goto LABEL_16;
  }

  systemShellHostingEnvironment = _sceneContext;
LABEL_16:

LABEL_17:

  return systemShellHostingEnvironment;
}

- (id)renderingEnvironment
{
  _settingsScene = [(UIScene *)self _settingsScene];
  if ([(UIScene *)self _hasSettingsScene])
  {
    renderingEnvironment = [_settingsScene renderingEnvironment];
    goto LABEL_17;
  }

  _primaryViewServiceOperator = [(_UIScreenBasedWindowScene *)self _primaryViewServiceOperator];
  _sceneContext = [_primaryViewServiceOperator _sceneContext];
  v7 = _sceneContext;
  if (!_sceneContext)
  {
    if (([UIApp isFrontBoard] & 1) == 0)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v15 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v15, OS_LOG_TYPE_FAULT, "Unexpectedly falling back to the key window scene for the systemShellHostingEnvironment", buf, 2u);
        }
      }

      else
      {
        v14 = *(__UILogGetCategoryCachedImpl("Assert", &renderingEnvironment___s_category) + 8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v16[0] = 0;
          _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Unexpectedly falling back to the key window scene for the systemShellHostingEnvironment", v16, 2u);
        }
      }
    }

    v8 = +[UIWindowScene _keyWindowScene];
    if (v8)
    {
      selfCopy = self;
      v10 = v8;
      v11 = v10;
      if (v10 == selfCopy)
      {
      }

      else
      {
        if (!selfCopy)
        {

LABEL_14:
          renderingEnvironment = [(_UIScreenBasedWindowScene *)v11 renderingEnvironment];
          goto LABEL_15;
        }

        v12 = [(_UIScreenBasedWindowScene *)selfCopy isEqual:v10];

        if ((v12 & 1) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    renderingEnvironment = 0;
LABEL_15:

    goto LABEL_16;
  }

  renderingEnvironment = _sceneContext;
LABEL_16:

LABEL_17:

  return renderingEnvironment;
}

@end