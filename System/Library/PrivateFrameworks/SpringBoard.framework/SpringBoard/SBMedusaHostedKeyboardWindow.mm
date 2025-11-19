@interface SBMedusaHostedKeyboardWindow
- (SBMedusaHostedKeyboardWindow)initWithWindowScene:(id)a3 keyboardScene:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)newWindowLevelAssertionWithPriority:(unint64_t)a3 windowLevel:(double)a4;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_updateWindowLevel;
- (void)addWindowLevelAssertion:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)medusaHostedKeyboardWindowWillHide:(id)a3;
- (void)medusaHostedKeyboardWindowWillShow:(id)a3;
- (void)removeWindowLevelAssertion:(id)a3;
- (void)setHidden:(BOOL)a3;
@end

@implementation SBMedusaHostedKeyboardWindow

- (SBMedusaHostedKeyboardWindow)initWithWindowScene:(id)a3 keyboardScene:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 settings];
  v10 = [v9 sb_displayIdentityForSceneManagers];
  v11 = [v10 UIScreen];

  if (!v11)
  {
    [(SBMedusaHostedKeyboardWindow *)v8 initWithWindowScene:a2 keyboardScene:self];
  }

  v33.receiver = self;
  v33.super_class = SBMedusaHostedKeyboardWindow;
  v12 = [(SBWindow *)&v33 initWithWindowScene:v7 rootViewController:0 layoutStrategy:0 role:@"SBTraitsParticipantRoleFloatingKeyboard" debugName:@"HostedKeyboardWindow"];
  if (v12)
  {
    v13 = [v8 uiPresentationManager];
    v14 = MEMORY[0x277CCACA8];
    v15 = [v7 _FBSScene];
    v16 = [v15 identifier];
    v17 = v16;
    v18 = &stru_283094718;
    if (v16)
    {
      v18 = v16;
    }

    v19 = [v14 stringWithFormat:@"%@-%@", @"SBMedusaHostedKeyboardWindow", v18];

    v20 = [v13 createPresenterWithIdentifier:v19 priority:1];
    remoteHostedKeyboardScenePresenter = v12->_remoteHostedKeyboardScenePresenter;
    v12->_remoteHostedKeyboardScenePresenter = v20;

    v22 = objc_alloc_init(_SBHostedKeyboardViewController);
    v23 = [(_SBHostedKeyboardViewController *)v22 view];
    [v23 setAutoresizingMask:18];

    v24 = [(_SBHostedKeyboardViewController *)v22 view];
    v25 = [(UIScenePresenter *)v12->_remoteHostedKeyboardScenePresenter presentationView];
    [v24 addSubview:v25];

    [(SBMedusaHostedKeyboardWindow *)v12 setRootViewController:v22];
    v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
    windowLevelAssertions = v12->_windowLevelAssertions;
    v12->_windowLevelAssertions = v26;

    v28 = [(SBMedusaHostedKeyboardWindow *)v12 newWindowLevelAssertionWithPriority:0 windowLevel:*MEMORY[0x277D772B0] + 5.0 + 15.0];
    defaultWindowLevelAssertion = v12->_defaultWindowLevelAssertion;
    v12->_defaultWindowLevelAssertion = v28;

    v30 = [MEMORY[0x277CCAB98] defaultCenter];
    [v30 addObserver:v12 selector:sel_medusaHostedKeyboardWindowWillShow_ name:@"SBMedusaHostedKeyboardWindowWillShowNotification" object:0];

    v31 = [MEMORY[0x277CCAB98] defaultCenter];
    [v31 addObserver:v12 selector:sel_medusaHostedKeyboardWindowWillHide_ name:@"SBMedusaHostedKeyboardWindowWillHideNotification" object:0];
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

- (id)newWindowLevelAssertionWithPriority:(unint64_t)a3 windowLevel:(double)a4
{
  v7 = [SBMedusaHostedKeyboardWindowLevelAssertion alloc];

  return [(SBMedusaHostedKeyboardWindowLevelAssertion *)v7 initWithMedusaHostedKeyboardWindow:self priority:a3 windowLevel:a4];
}

- (void)addWindowLevelAssertion:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  windowLevelAssertions = self->_windowLevelAssertions;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __56__SBMedusaHostedKeyboardWindow_addWindowLevelAssertion___block_invoke;
  v10 = &unk_2783B45C0;
  v6 = v4;
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

- (void)removeWindowLevelAssertion:(id)a3
{
  [(NSMutableArray *)self->_windowLevelAssertions removeObject:a3];

  [(SBMedusaHostedKeyboardWindow *)self _updateWindowLevel];
}

- (void)_updateWindowLevel
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_windowLevelAssertions firstObject];
  v4 = v3;
  if (v3)
  {
    [v3 windowLevel];
    [(SBMedusaHostedKeyboardWindow *)self setWindowLevel:?];
    v5 = SBLogMedusaKeyboard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      [v4 windowLevel];
      v9 = v8;
      v10 = [v4 priority];
      v11 = @"Medusa";
      if (v10 == 1)
      {
        v11 = @"Library";
      }

      if (v10 == 2)
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

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v22 = *MEMORY[0x277D85DE8];
  v5 = SBLogMedusaKeyboard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = _SBFLoggingMethodProem();
    v7 = v6;
    v8 = "SHOWING";
    remoteHostedKeyboardScenePresenter = self->_remoteHostedKeyboardScenePresenter;
    if (v3)
    {
      v8 = "HIDING";
    }

    *buf = 138544130;
    v15 = v6;
    v16 = 2082;
    v17 = v8;
    v10 = "deactivating";
    if (!v3)
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
  [(SBWindow *)&v13 setHidden:v3];
  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  v12 = v11;
  if (v3)
  {
    [v11 postNotificationName:@"SBMedusaHostedKeyboardWindowWillHideNotification" object:self];

    [(UIScenePresenter *)self->_remoteHostedKeyboardScenePresenter deactivate];
  }

  else
  {
    [v11 postNotificationName:@"SBMedusaHostedKeyboardWindowWillShowNotification" object:self];

    [(UIScenePresenter *)self->_remoteHostedKeyboardScenePresenter activate];
  }
}

- (void)medusaHostedKeyboardWindowWillShow:(id)a3
{
  v4 = [a3 object];
  if (v4 == self)
  {
  }

  else
  {
    v7 = v4;
    v5 = [(UIScenePresenter *)self->_remoteHostedKeyboardScenePresenter isActive];

    if (v5)
    {
      remoteHostedKeyboardScenePresenter = self->_remoteHostedKeyboardScenePresenter;

      [(UIScenePresenter *)remoteHostedKeyboardScenePresenter deactivate];
    }
  }
}

- (void)medusaHostedKeyboardWindowWillHide:(id)a3
{
  v4 = [a3 object];
  if (v4 == self)
  {
  }

  else
  {
    v7 = v4;
    v5 = [(UIScenePresenter *)self->_remoteHostedKeyboardScenePresenter isActive];

    if (v5)
    {
      remoteHostedKeyboardScenePresenter = self->_remoteHostedKeyboardScenePresenter;

      [(UIScenePresenter *)remoteHostedKeyboardScenePresenter deactivate];
    }
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = SBMedusaHostedKeyboardWindow;
  v5 = [(SBMedusaHostedKeyboardWindow *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
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
  v2 = [(SBMedusaHostedKeyboardWindow *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(SBMedusaHostedKeyboardWindow *)self _debugName];
  v5 = [v3 appendObject:v4 withName:0 skipIfNil:1];

  [(SBMedusaHostedKeyboardWindow *)self frame];
  v10 = _SBWindowFrameDescription(v6, v7, v8, v9);
  v11 = [v3 appendObject:v10 withName:@"frame"];

  v12 = [v3 appendBool:-[SBMedusaHostedKeyboardWindow isHidden](self withName:"isHidden") ifEqualTo:{@"hidden", 1}];
  v13 = [(SBMedusaHostedKeyboardWindow *)self layer];
  v14 = [v3 appendObject:v13 withName:@"layer"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBMedusaHostedKeyboardWindow *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBMedusaHostedKeyboardWindow *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__SBMedusaHostedKeyboardWindow_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

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