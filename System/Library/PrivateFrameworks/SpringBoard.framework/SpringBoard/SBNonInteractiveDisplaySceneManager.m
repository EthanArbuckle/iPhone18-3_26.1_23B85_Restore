@interface SBNonInteractiveDisplaySceneManager
- (BOOL)isSuspendedUnderLock;
- (SBNonInteractiveDisplaySceneManager)initWithReference:(id)a3 sceneIdentityProvider:(id)a4 presentationBinder:(id)a5 snapshotBehavior:(unint64_t)a6;
- (id)externalApplicationSceneHandles;
- (id)suspendedUnderLockManager:(id)a3 sceneHandleForScene:(id)a4;
- (id)suspendedUnderLockManagerDisplayConfiguration:(id)a3;
- (void)dealloc;
- (void)setSuspendedUnderLock:(BOOL)a3 alongsideWillChangeBlock:(id)a4 alongsideDidChangeBlock:(id)a5;
@end

@implementation SBNonInteractiveDisplaySceneManager

- (SBNonInteractiveDisplaySceneManager)initWithReference:(id)a3 sceneIdentityProvider:(id)a4 presentationBinder:(id)a5 snapshotBehavior:(unint64_t)a6
{
  v10.receiver = self;
  v10.super_class = SBNonInteractiveDisplaySceneManager;
  v6 = [(SBSceneManager *)&v10 initWithReference:a3 sceneIdentityProvider:a4 presentationBinder:a5 snapshotBehavior:a6];
  if (v6)
  {
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v6 selector:sel__externalCoverSheetVisibilityDidPresent_ name:@"SBExternalDisplayCoverSheetDidPresent" object:0];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v6 selector:sel__externalCoverSheetVisibilityDidDismiss_ name:@"SBExternalDisplayCoverSheetDidDismiss" object:0];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"SBExternalDisplayCoverSheetDidPresent" object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:@"SBExternalDisplayCoverSheetDidDismiss" object:0];

  v5.receiver = self;
  v5.super_class = SBNonInteractiveDisplaySceneManager;
  [(SBSceneManager *)&v5 dealloc];
}

- (id)externalApplicationSceneHandles
{
  v4.receiver = self;
  v4.super_class = SBNonInteractiveDisplaySceneManager;
  v2 = [(SBSceneManager *)&v4 externalApplicationSceneHandles];

  return v2;
}

- (BOOL)isSuspendedUnderLock
{
  BSDispatchQueueAssertMain();
  lazy_suspendedUnderLockManager = self->_lazy_suspendedUnderLockManager;

  return [(SBSuspendedUnderLockManager *)lazy_suspendedUnderLockManager isSuspendedUnderLock];
}

- (void)setSuspendedUnderLock:(BOOL)a3 alongsideWillChangeBlock:(id)a4 alongsideDidChangeBlock:(id)a5
{
  v6 = a3;
  v15 = a4;
  v8 = a5;
  BSDispatchQueueAssertMain();
  lazy_suspendedUnderLockManager = self->_lazy_suspendedUnderLockManager;
  if (!lazy_suspendedUnderLockManager)
  {
    v10 = [SBSuspendedUnderLockManager alloc];
    v11 = +[SBWorkspace mainWorkspace];
    v12 = [v11 eventQueue];
    v13 = [(SBSuspendedUnderLockManager *)v10 initWithDelegate:self eventQueue:v12];
    v14 = self->_lazy_suspendedUnderLockManager;
    self->_lazy_suspendedUnderLockManager = v13;

    lazy_suspendedUnderLockManager = self->_lazy_suspendedUnderLockManager;
  }

  [(SBSuspendedUnderLockManager *)lazy_suspendedUnderLockManager setSuspendedUnderLock:v6 alongsideWillChangeBlock:v15 alongsideDidChangeBlock:v8];
}

- (id)suspendedUnderLockManagerDisplayConfiguration:(id)a3
{
  v3 = [(SBSceneManager *)self displayIdentity];
  v4 = [v3 currentConfiguration];

  return v4;
}

- (id)suspendedUnderLockManager:(id)a3 sceneHandleForScene:(id)a4
{
  v6.receiver = self;
  v6.super_class = SBNonInteractiveDisplaySceneManager;
  v4 = [(SBSceneManager *)&v6 existingSceneHandleForScene:a4];

  return v4;
}

@end