@interface SBCoverSheetSceneManager
- (SBCoverSheetSceneManager)initWithCoverSheetWindow:(id)window;
- (UIWindow)coverSheetWindow;
- (void)_performNextSceneUpdateBlock;
- (void)_performSceneUpdateBlock:(id)block;
- (void)_setDisplayLayoutElementActive:(BOOL)active;
- (void)_setSceneBackgrounded:(BOOL)backgrounded suspendUnderLockEnvironment:(BOOL)environment;
- (void)_updateForegroundScenesForNotificationCenter:(BOOL)center;
- (void)updateForegroundScenesForCoverSheetAnimationActive:(BOOL)active;
@end

@implementation SBCoverSheetSceneManager

- (void)_performNextSceneUpdateBlock
{
  if (!self->_performingSceneUpdate)
  {
    firstObject = [(NSMutableArray *)self->_pendingSceneUpdateBlocks firstObject];
    if (firstObject)
    {
      self->_performingSceneUpdate = 1;
      [(NSMutableArray *)self->_pendingSceneUpdateBlocks removeObjectAtIndex:0];
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __56__SBCoverSheetSceneManager__performNextSceneUpdateBlock__block_invoke;
      v4[3] = &unk_2783A8C18;
      v4[4] = self;
      (firstObject)[2](firstObject, v4);
    }
  }
}

- (SBCoverSheetSceneManager)initWithCoverSheetWindow:(id)window
{
  windowCopy = window;
  v19.receiver = self;
  v19.super_class = SBCoverSheetSceneManager;
  v5 = [(SBCoverSheetSceneManager *)&v19 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_coverSheetWindow, windowCopy);
    v7 = +[SBSceneManagerCoordinator sharedInstance];
    sceneDeactivationManager = [v7 sceneDeactivationManager];

    v9 = [sceneDeactivationManager newAssertionWithReason:1];
    notificationCenterAssertion = v6->_notificationCenterAssertion;
    v6->_notificationCenterAssertion = v9;

    v11 = [sceneDeactivationManager newAssertionWithReason:5];
    systemAnimationAssertion = v6->_systemAnimationAssertion;
    v6->_systemAnimationAssertion = v11;

    objc_initWeak(&location, v6);
    v13 = MEMORY[0x277D85CD0];
    objc_copyWeak(&v17, &location);
    v14 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureInvalidatable = v6->_stateCaptureInvalidatable;
    v6->_stateCaptureInvalidatable = v14;

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v6;
}

id __53__SBCoverSheetSceneManager_initWithCoverSheetWindow___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v9 = @"pendingSceneUpdateBlocks";
    v3 = MEMORY[0x277CCABB0];
    v4 = [WeakRetained pendingSceneUpdateBlocks];
    v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
    v10[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = [v6 description];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateForegroundScenesForCoverSheetAnimationActive:(BOOL)active
{
  activeCopy = active;
  isAcquired = [(UIApplicationSceneDeactivationAssertion *)self->_systemAnimationAssertion isAcquired];
  if (activeCopy)
  {
    if ((isAcquired & 1) == 0)
    {
      v6 = +[SBSpotlightMultiplexingViewController sharedRemoteSearchViewController];
      sceneIdentifier = [v6 sceneIdentifier];

      systemAnimationAssertion = self->_systemAnimationAssertion;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __79__SBCoverSheetSceneManager_updateForegroundScenesForCoverSheetAnimationActive___block_invoke;
      v13[3] = &unk_2783ADD00;
      v14 = sceneIdentifier;
      v9 = sceneIdentifier;
      WeakRetained = objc_loadWeakRetained(&self->_coverSheetWindow);
      _fbsDisplayIdentity = [WeakRetained _fbsDisplayIdentity];
      [(UIApplicationSceneDeactivationAssertion *)systemAnimationAssertion sb_acquireWithPredicate:v13 transitionContext:0 displayIdentity:_fbsDisplayIdentity];
    }
  }

  else if (isAcquired)
  {
    v12 = self->_systemAnimationAssertion;

    [(UIApplicationSceneDeactivationAssertion *)v12 relinquish];
  }
}

uint64_t __79__SBCoverSheetSceneManager_updateForegroundScenesForCoverSheetAnimationActive___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  LODWORD(a1) = [v3 isEqualToString:*(a1 + 32)];

  return a1 ^ 1;
}

- (void)_performSceneUpdateBlock:(id)block
{
  blockCopy = block;
  pendingSceneUpdateBlocks = self->_pendingSceneUpdateBlocks;
  v9 = blockCopy;
  if (!pendingSceneUpdateBlocks)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    v7 = self->_pendingSceneUpdateBlocks;
    self->_pendingSceneUpdateBlocks = v6;

    pendingSceneUpdateBlocks = self->_pendingSceneUpdateBlocks;
  }

  v8 = MEMORY[0x223D6F7F0]();
  [(NSMutableArray *)pendingSceneUpdateBlocks addObject:v8];

  if (!self->_performingSceneUpdate)
  {
    [(SBCoverSheetSceneManager *)self _performNextSceneUpdateBlock];
  }
}

- (void)_setDisplayLayoutElementActive:(BOOL)active
{
  displayLayoutAssertion = self->_displayLayoutAssertion;
  if (active)
  {
    if (displayLayoutAssertion)
    {
      return;
    }

    v5 = objc_alloc(MEMORY[0x277D66A50]);
    v12 = [v5 initWithIdentifier:*MEMORY[0x277D0ABA0]];
    WeakRetained = objc_loadWeakRetained(&self->_coverSheetWindow);
    [WeakRetained level];
    [v12 setLevel:v7];

    [v12 setFillsDisplayBounds:1];
    [v12 setLayoutRole:3];
    mEMORY[0x277D0AAA0] = [MEMORY[0x277D0AAA0] sharedInstance];
    v9 = [mEMORY[0x277D0AAA0] addElement:v12];
    v10 = self->_displayLayoutAssertion;
    self->_displayLayoutAssertion = v9;

    v11 = v12;
  }

  else
  {
    if (!displayLayoutAssertion)
    {
      return;
    }

    [(BSInvalidatable *)displayLayoutAssertion invalidate];
    v11 = self->_displayLayoutAssertion;
    self->_displayLayoutAssertion = 0;
  }
}

- (void)_setSceneBackgrounded:(BOOL)backgrounded suspendUnderLockEnvironment:(BOOL)environment
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __78__SBCoverSheetSceneManager__setSceneBackgrounded_suspendUnderLockEnvironment___block_invoke;
  v4[3] = &unk_2783BB1F8;
  backgroundedCopy = backgrounded;
  v4[4] = self;
  environmentCopy = environment;
  [(SBCoverSheetSceneManager *)self _performSceneUpdateBlock:v4];
}

void __78__SBCoverSheetSceneManager__setSceneBackgrounded_suspendUnderLockEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  if (*(a1 + 40) == 1)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __78__SBCoverSheetSceneManager__setSceneBackgrounded_suspendUnderLockEnvironment___block_invoke_2;
    v10[3] = &unk_2783A8C18;
    v10[4] = *(a1 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __78__SBCoverSheetSceneManager__setSceneBackgrounded_suspendUnderLockEnvironment___block_invoke_3;
    v8[3] = &unk_2783A9348;
    v9 = v3;
    [v4 setSuspendedUnderLock:0 alongsideWillChangeBlock:v10 alongsideDidChangeBlock:v8];
    v5 = v9;
  }

  else
  {
    if (*(a1 + 41) != 1)
    {
      [*(a1 + 32) _updateForegroundScenesForNotificationCenter:1];
      [*(a1 + 32) _setDisplayLayoutElementActive:1];
      v3[2](v3);
      goto LABEL_7;
    }

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __78__SBCoverSheetSceneManager__setSceneBackgrounded_suspendUnderLockEnvironment___block_invoke_4;
    v6[3] = &unk_2783A98A0;
    v6[4] = *(a1 + 32);
    v7 = v3;
    [v4 setSuspendedUnderLock:1 alongsideWillChangeBlock:0 alongsideDidChangeBlock:v6];
    v5 = v7;
  }

LABEL_7:
}

uint64_t __78__SBCoverSheetSceneManager__setSceneBackgrounded_suspendUnderLockEnvironment___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setDisplayLayoutElementActive:0];
  v2 = *(a1 + 32);

  return [v2 _updateForegroundScenesForNotificationCenter:0];
}

uint64_t __78__SBCoverSheetSceneManager__setSceneBackgrounded_suspendUnderLockEnvironment___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _updateForegroundScenesForNotificationCenter:0];
  [*(a1 + 32) _setDisplayLayoutElementActive:1];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_updateForegroundScenesForNotificationCenter:(BOOL)center
{
  centerCopy = center;
  isAcquired = [(UIApplicationSceneDeactivationAssertion *)self->_notificationCenterAssertion isAcquired];
  if (centerCopy)
  {
    if ((isAcquired & 1) == 0)
    {
      notificationCenterAssertion = self->_notificationCenterAssertion;

      [(UIApplicationSceneDeactivationAssertion *)notificationCenterAssertion acquireWithPredicate:&__block_literal_global_247 transitionContext:0];
    }
  }

  else if (isAcquired)
  {
    v7 = self->_notificationCenterAssertion;

    [(UIApplicationSceneDeactivationAssertion *)v7 relinquish];
  }
}

uint64_t __73__SBCoverSheetSceneManager__updateForegroundScenesForNotificationCenter___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SBCoverSheetPresentationManager sharedInstance];
  v4 = [v2 identifier];

  if ([v3 isCoverSheetHostingAnApp] && (objc_msgSend(v3, "coverSheetHostedAppSceneHandle"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "sceneIfExists"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "identifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v4, "isEqualToString:", v7), v7, v6, v5, (v8 & 1) != 0))
  {
    v9 = 0;
  }

  else if (SBSpotlightIsVisible())
  {
    v10 = +[SBSpotlightMultiplexingViewController sharedRemoteSearchViewController];
    v11 = [v10 sceneIdentifier];
    v12 = [v4 isEqualToString:v11];

    v9 = v12 ^ 1u;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (UIWindow)coverSheetWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetWindow);

  return WeakRetained;
}

@end