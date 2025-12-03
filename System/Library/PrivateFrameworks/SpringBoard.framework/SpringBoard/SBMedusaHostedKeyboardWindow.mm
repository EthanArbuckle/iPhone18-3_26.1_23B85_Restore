@interface SBMedusaHostedKeyboardWindow
- (SBMedusaHostedKeyboardWindow)initWithWindowScene:(id)scene keyboardScene:(id)keyboardScene;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)newWindowLevelAssertionWithPriority:(unint64_t)priority windowLevel:(double)level;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_updateWindowLevel;
- (void)addWindowLevelAssertion:(id)assertion;
- (void)dealloc;
- (void)invalidate;
- (void)medusaHostedKeyboardWindowWillHide:(id)hide;
- (void)medusaHostedKeyboardWindowWillShow:(id)show;
- (void)removeWindowLevelAssertion:(id)assertion;
- (void)setHidden:(BOOL)hidden;
@end

@implementation SBMedusaHostedKeyboardWindow

- (SBMedusaHostedKeyboardWindow)initWithWindowScene:(id)scene keyboardScene:(id)keyboardScene
{
  sceneCopy = scene;
  keyboardSceneCopy = keyboardScene;
  settings = [keyboardSceneCopy settings];
  sb_displayIdentityForSceneManagers = [settings sb_displayIdentityForSceneManagers];
  uIScreen = [sb_displayIdentityForSceneManagers UIScreen];

  if (!uIScreen)
  {
    [(SBMedusaHostedKeyboardWindow *)keyboardSceneCopy initWithWindowScene:a2 keyboardScene:self];
  }

  v33.receiver = self;
  v33.super_class = SBMedusaHostedKeyboardWindow;
  v12 = [(SBWindow *)&v33 initWithWindowScene:sceneCopy rootViewController:0 layoutStrategy:0 role:@"SBTraitsParticipantRoleFloatingKeyboard" debugName:@"HostedKeyboardWindow"];
  if (v12)
  {
    uiPresentationManager = [keyboardSceneCopy uiPresentationManager];
    v14 = MEMORY[0x277CCACA8];
    _FBSScene = [sceneCopy _FBSScene];
    identifier = [_FBSScene identifier];
    v17 = identifier;
    v18 = &stru_283094718;
    if (identifier)
    {
      v18 = identifier;
    }

    v19 = [v14 stringWithFormat:@"%@-%@", @"SBMedusaHostedKeyboardWindow", v18];

    v20 = [uiPresentationManager createPresenterWithIdentifier:v19 priority:1];
    remoteHostedKeyboardScenePresenter = v12->_remoteHostedKeyboardScenePresenter;
    v12->_remoteHostedKeyboardScenePresenter = v20;

    v22 = objc_alloc_init(_SBHostedKeyboardViewController);
    view = [(_SBHostedKeyboardViewController *)v22 view];
    [view setAutoresizingMask:18];

    view2 = [(_SBHostedKeyboardViewController *)v22 view];
    presentationView = [(UIScenePresenter *)v12->_remoteHostedKeyboardScenePresenter presentationView];
    [view2 addSubview:presentationView];

    [(SBMedusaHostedKeyboardWindow *)v12 setRootViewController:v22];
    v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
    windowLevelAssertions = v12->_windowLevelAssertions;
    v12->_windowLevelAssertions = v26;

    v28 = [(SBMedusaHostedKeyboardWindow *)v12 newWindowLevelAssertionWithPriority:0 windowLevel:*MEMORY[0x277D772B0] + 5.0 + 15.0];
    defaultWindowLevelAssertion = v12->_defaultWindowLevelAssertion;
    v12->_defaultWindowLevelAssertion = v28;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v12 selector:sel_medusaHostedKeyboardWindowWillShow_ name:@"SBMedusaHostedKeyboardWindowWillShowNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v12 selector:sel_medusaHostedKeyboardWindowWillHide_ name:@"SBMedusaHostedKeyboardWindowWillHideNotification" object:0];
  }

  return v12;
}

- (void)dealloc
{
  [(SBMedusaHostedKeyboardWindow *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBMedusaHostedKeyboardWindow;
  [(SBWindow *)&v3 dealloc];
}

- (void)invalidate
{
  [(UIScenePresenter *)self->_remoteHostedKeyboardScenePresenter invalidate];
  defaultWindowLevelAssertion = self->_defaultWindowLevelAssertion;

  [(SBMedusaHostedKeyboardWindowLevelAssertion *)defaultWindowLevelAssertion invalidate];
}

- (id)newWindowLevelAssertionWithPriority:(unint64_t)priority windowLevel:(double)level
{
  v7 = [SBMedusaHostedKeyboardWindowLevelAssertion alloc];

  return [(SBMedusaHostedKeyboardWindowLevelAssertion *)v7 initWithMedusaHostedKeyboardWindow:self priority:priority windowLevel:level];
}

- (void)addWindowLevelAssertion:(id)assertion
{
  assertionCopy = assertion;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  windowLevelAssertions = self->_windowLevelAssertions;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __56__SBMedusaHostedKeyboardWindow_addWindowLevelAssertion___block_invoke;
  v10 = &unk_2783B45C0;
  v6 = assertionCopy;
  v11 = v6;
  v12 = &v13;
  [(NSMutableArray *)windowLevelAssertions enumerateObjectsUsingBlock:&v7];
  [(NSMutableArray *)self->_windowLevelAssertions insertObject:v6 atIndex:v14[3], v7, v8, v9, v10];
  [(SBMedusaHostedKeyboardWindow *)self _updateWindowLevel];

  _Block_object_dispose(&v13, 8);
}

void __56__SBMedusaHostedKeyboardWindow_addWindowLevelAssertion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 priority];
  v8 = [v6 priority];

  if (v7 > v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }
}

- (void)removeWindowLevelAssertion:(id)assertion
{
  [(NSMutableArray *)self->_windowLevelAssertions removeObject:assertion];

  [(SBMedusaHostedKeyboardWindow *)self _updateWindowLevel];
}

- (void)_updateWindowLevel
{
  v19 = *MEMORY[0x277D85DE8];
  firstObject = [(NSMutableArray *)self->_windowLevelAssertions firstObject];
  v4 = firstObject;
  if (firstObject)
  {
    [firstObject windowLevel];
    [(SBMedusaHostedKeyboardWindow *)self setWindowLevel:?];
    v5 = SBLogMedusaKeyboard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      [v4 windowLevel];
      v9 = v8;
      priority = [v4 priority];
      v11 = @"Medusa";
      if (priority == 1)
      {
        v11 = @"Library";
      }

      if (priority == 2)
      {
        v11 = @"Spotlight";
      }

      v12 = v11;
      v13 = 138543874;
      v14 = v7;
      v15 = 2048;
      v16 = v9;
      v17 = 2114;
      v18 = v12;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating window level to %f for %{public}@", &v13, 0x20u);
    }
  }
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v22 = *MEMORY[0x277D85DE8];
  v5 = SBLogMedusaKeyboard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = _SBFLoggingMethodProem();
    v7 = v6;
    v8 = "SHOWING";
    remoteHostedKeyboardScenePresenter = self->_remoteHostedKeyboardScenePresenter;
    if (hiddenCopy)
    {
      v8 = "HIDING";
    }

    *buf = 138544130;
    v15 = v6;
    v16 = 2082;
    v17 = v8;
    v10 = "deactivating";
    if (!hiddenCopy)
    {
      v10 = "activating";
    }

    v18 = 2080;
    v19 = v10;
    v20 = 2114;
    v21 = remoteHostedKeyboardScenePresenter;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "%{public}@ %{public}s the keyboard and %s scene presenter %{public}@", buf, 0x2Au);
  }

  v13.receiver = self;
  v13.super_class = SBMedusaHostedKeyboardWindow;
  [(SBWindow *)&v13 setHidden:hiddenCopy];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v12 = defaultCenter;
  if (hiddenCopy)
  {
    [defaultCenter postNotificationName:@"SBMedusaHostedKeyboardWindowWillHideNotification" object:self];

    [(UIScenePresenter *)self->_remoteHostedKeyboardScenePresenter deactivate];
  }

  else
  {
    [defaultCenter postNotificationName:@"SBMedusaHostedKeyboardWindowWillShowNotification" object:self];

    [(UIScenePresenter *)self->_remoteHostedKeyboardScenePresenter activate];
  }
}

- (void)medusaHostedKeyboardWindowWillShow:(id)show
{
  object = [show object];
  if (object == self)
  {
  }

  else
  {
    v7 = object;
    isActive = [(UIScenePresenter *)self->_remoteHostedKeyboardScenePresenter isActive];

    if (isActive)
    {
      remoteHostedKeyboardScenePresenter = self->_remoteHostedKeyboardScenePresenter;

      [(UIScenePresenter *)remoteHostedKeyboardScenePresenter deactivate];
    }
  }
}

- (void)medusaHostedKeyboardWindowWillHide:(id)hide
{
  object = [hide object];
  if (object == self)
  {
  }

  else
  {
    v7 = object;
    isActive = [(UIScenePresenter *)self->_remoteHostedKeyboardScenePresenter isActive];

    if (isActive)
    {
      remoteHostedKeyboardScenePresenter = self->_remoteHostedKeyboardScenePresenter;

      [(UIScenePresenter *)remoteHostedKeyboardScenePresenter deactivate];
    }
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = SBMedusaHostedKeyboardWindow;
  v5 = [(SBMedusaHostedKeyboardWindow *)&v9 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBMedusaHostedKeyboardWindow *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  _debugName = [(SBMedusaHostedKeyboardWindow *)self _debugName];
  v5 = [v3 appendObject:_debugName withName:0 skipIfNil:1];

  [(SBMedusaHostedKeyboardWindow *)self frame];
  v10 = _SBWindowFrameDescription(v6, v7, v8, v9);
  v11 = [v3 appendObject:v10 withName:@"frame"];

  v12 = [v3 appendBool:-[SBMedusaHostedKeyboardWindow isHidden](self withName:"isHidden") ifEqualTo:{@"hidden", 1}];
  layer = [(SBMedusaHostedKeyboardWindow *)self layer];
  v14 = [v3 appendObject:layer withName:@"layer"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBMedusaHostedKeyboardWindow *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBMedusaHostedKeyboardWindow *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__SBMedusaHostedKeyboardWindow_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

void __70__SBMedusaHostedKeyboardWindow_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 984) withName:@"presenter"];
  v3 = [*(*(a1 + 40) + 1000) count];
  v4 = *(a1 + 32);
  if (v3 == 1)
  {
    v5 = MEMORY[0x277CCACA8];
    v10 = [*(*(a1 + 40) + 1000) firstObject];
    v6 = [v5 stringWithFormat:@"( %@)", v10];
    v7 = [v4 appendObject:v6 withName:@"window level assertions"];
  }

  else
  {
    v8 = *(*(a1 + 40) + 1000);
    v9 = *(a1 + 32);

    [v9 appendArraySection:v8 withName:@"window level assertions" skipIfEmpty:1];
  }
}

- (void)initWithWindowScene:(uint64_t)a3 keyboardScene:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v6 = [a1 settings];
  v7 = [v6 displayConfiguration];
  [v8 handleFailureInMethod:a2 object:a3 file:@"SBMedusaHostedKeyboardWindow.m" lineNumber:68 description:{@"Must have a UIScreen associated to the display identity vended by the keyboard scene: %@", v7}];
}

@end