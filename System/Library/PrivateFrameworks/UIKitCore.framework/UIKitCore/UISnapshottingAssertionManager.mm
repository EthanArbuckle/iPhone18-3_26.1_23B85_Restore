@interface UISnapshottingAssertionManager
+ (id)sharedInstance;
- (UISnapshottingAssertionManager)init;
- (id)_init;
- (id)acquireNewAssertion;
- (void)dealloc;
- (void)executeIfNoActiveAssertions:(id)assertions;
- (void)relinquishAssertion:(id)assertion;
- (void)withLock:(id)lock;
@end

@implementation UISnapshottingAssertionManager

+ (id)sharedInstance
{
  if (qword_1ED49E1A8 != -1)
  {
    dispatch_once(&qword_1ED49E1A8, &__block_literal_global_271);
  }

  v3 = _MergedGlobals_1118;

  return v3;
}

void __48__UISnapshottingAssertionManager_sharedInstance__block_invoke()
{
  v0 = [[UISnapshottingAssertionManager alloc] _init];
  v1 = _MergedGlobals_1118;
  _MergedGlobals_1118 = v0;
}

- (UISnapshottingAssertionManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UISnapshottingAssertionManager.m" lineNumber:42 description:{@"UISnapshottingAssertionManager is a singleton, used sharedInstance instead"}];

  return 0;
}

- (id)_init
{
  v7.receiver = self;
  v7.super_class = UISnapshottingAssertionManager;
  v2 = [(UISnapshottingAssertionManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    pthread_mutex_init(&v2->lock, 0);
    v4 = objc_opt_new();
    heldAssertions = v3->_heldAssertions;
    v3->_heldAssertions = v4;
  }

  return v3;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->lock);
  v3.receiver = self;
  v3.super_class = UISnapshottingAssertionManager;
  [(UISnapshottingAssertionManager *)&v3 dealloc];
}

- (void)withLock:(id)lock
{
  if (lock)
  {
    lockCopy = lock;
    pthread_mutex_lock(&self->lock);
    lockCopy[2](lockCopy);

    pthread_mutex_unlock(&self->lock);
  }
}

- (id)acquireNewAssertion
{
  v3 = objc_alloc_init(UISnapshottingAssertion);
  v4 = v3;
  if (v3)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__UISnapshottingAssertionManager_acquireNewAssertion__block_invoke;
    v8[3] = &unk_1E70F35B8;
    v8[4] = self;
    v5 = v3;
    v9 = v5;
    [(UISnapshottingAssertionManager *)self withLock:v8];
    v6 = v5;
  }

  return v4;
}

- (void)relinquishAssertion:(id)assertion
{
  assertionCopy = assertion;
  v5 = assertionCopy;
  if (assertionCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__UISnapshottingAssertionManager_relinquishAssertion___block_invoke;
    v6[3] = &unk_1E70F35B8;
    v6[4] = self;
    v7 = assertionCopy;
    [(UISnapshottingAssertionManager *)self withLock:v6];
  }
}

- (void)executeIfNoActiveAssertions:(id)assertions
{
  assertionsCopy = assertions;
  v5 = assertionsCopy;
  if (assertionsCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__UISnapshottingAssertionManager_executeIfNoActiveAssertions___block_invoke;
    v6[3] = &unk_1E70F37C0;
    v6[4] = self;
    v7 = assertionsCopy;
    [(UISnapshottingAssertionManager *)self withLock:v6];
  }
}

uint64_t __62__UISnapshottingAssertionManager_executeIfNoActiveAssertions___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 72) count];
  if (!result)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

@end