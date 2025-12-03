@interface SBNonInteractiveDisplaySceneManager
- (BOOL)isSuspendedUnderLock;
- (SBNonInteractiveDisplaySceneManager)initWithReference:(id)reference sceneIdentityProvider:(id)provider presentationBinder:(id)binder snapshotBehavior:(unint64_t)behavior;
- (id)externalApplicationSceneHandles;
- (id)suspendedUnderLockManager:(id)manager sceneHandleForScene:(id)scene;
- (id)suspendedUnderLockManagerDisplayConfiguration:(id)configuration;
- (void)dealloc;
- (void)setSuspendedUnderLock:(BOOL)lock alongsideWillChangeBlock:(id)block alongsideDidChangeBlock:(id)changeBlock;
@end

@implementation SBNonInteractiveDisplaySceneManager

- (SBNonInteractiveDisplaySceneManager)initWithReference:(id)reference sceneIdentityProvider:(id)provider presentationBinder:(id)binder snapshotBehavior:(unint64_t)behavior
{
  v10.receiver = self;
  v10.super_class = SBNonInteractiveDisplaySceneManager;
  v6 = [(SBSceneManager *)&v10 initWithReference:reference sceneIdentityProvider:provider presentationBinder:binder snapshotBehavior:behavior];
  if (v6)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__externalCoverSheetVisibilityDidPresent_ name:@"SBExternalDisplayCoverSheetDidPresent" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v6 selector:sel__externalCoverSheetVisibilityDidDismiss_ name:@"SBExternalDisplayCoverSheetDidDismiss" object:0];
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"SBExternalDisplayCoverSheetDidPresent" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:@"SBExternalDisplayCoverSheetDidDismiss" object:0];

  v5.receiver = self;
  v5.super_class = SBNonInteractiveDisplaySceneManager;
  [(SBSceneManager *)&v5 dealloc];
}

- (id)externalApplicationSceneHandles
{
  v4.receiver = self;
  v4.super_class = SBNonInteractiveDisplaySceneManager;
  externalApplicationSceneHandles = [(SBSceneManager *)&v4 externalApplicationSceneHandles];

  return externalApplicationSceneHandles;
}

- (BOOL)isSuspendedUnderLock
{
  BSDispatchQueueAssertMain();
  lazy_suspendedUnderLockManager = self->_lazy_suspendedUnderLockManager;

  return [(SBSuspendedUnderLockManager *)lazy_suspendedUnderLockManager isSuspendedUnderLock];
}

- (void)setSuspendedUnderLock:(BOOL)lock alongsideWillChangeBlock:(id)block alongsideDidChangeBlock:(id)changeBlock
{
  lockCopy = lock;
  blockCopy = block;
  changeBlockCopy = changeBlock;
  BSDispatchQueueAssertMain();
  lazy_suspendedUnderLockManager = self->_lazy_suspendedUnderLockManager;
  if (!lazy_suspendedUnderLockManager)
  {
    v10 = [SBSuspendedUnderLockManager alloc];
    v11 = +[SBWorkspace mainWorkspace];
    eventQueue = [v11 eventQueue];
    v13 = [(SBSuspendedUnderLockManager *)v10 initWithDelegate:self eventQueue:eventQueue];
    v14 = self->_lazy_suspendedUnderLockManager;
    self->_lazy_suspendedUnderLockManager = v13;

    lazy_suspendedUnderLockManager = self->_lazy_suspendedUnderLockManager;
  }

  [(SBSuspendedUnderLockManager *)lazy_suspendedUnderLockManager setSuspendedUnderLock:lockCopy alongsideWillChangeBlock:blockCopy alongsideDidChangeBlock:changeBlockCopy];
}

- (id)suspendedUnderLockManagerDisplayConfiguration:(id)configuration
{
  displayIdentity = [(SBSceneManager *)self displayIdentity];
  currentConfiguration = [displayIdentity currentConfiguration];

  return currentConfiguration;
}

- (id)suspendedUnderLockManager:(id)manager sceneHandleForScene:(id)scene
{
  v6.receiver = self;
  v6.super_class = SBNonInteractiveDisplaySceneManager;
  v4 = [(SBSceneManager *)&v6 existingSceneHandleForScene:scene];

  return v4;
}

@end