@interface PKDismissalPreventionAssertionManager
+ (id)sharedInstance;
- (PKDismissalPreventionAssertionManager)init;
- (id)acquireAssertion;
@end

@implementation PKDismissalPreventionAssertionManager

+ (id)sharedInstance
{
  if (_MergedGlobals_590 != -1)
  {
    dispatch_once(&_MergedGlobals_590, &__block_literal_global_35);
  }

  v3 = qword_1EBD6ABC8;

  return v3;
}

void __55__PKDismissalPreventionAssertionManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PKDismissalPreventionAssertionManager);
  v1 = qword_1EBD6ABC8;
  qword_1EBD6ABC8 = v0;
}

- (PKDismissalPreventionAssertionManager)init
{
  v6.receiver = self;
  v6.super_class = PKDismissalPreventionAssertionManager;
  v2 = [(PKDismissalPreventionAssertionManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    assertions = v2->_assertions;
    v2->_assertions = v3;
  }

  return v2;
}

- (id)acquireAssertion
{
  objc_initWeak(&location, self);
  v3 = [PKDismissalPreventionAssertion alloc];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __57__PKDismissalPreventionAssertionManager_acquireAssertion__block_invoke;
  v9 = &unk_1E8013858;
  objc_copyWeak(&v10, &location);
  v4 = [(PKDismissalPreventionAssertion *)v3 initWithInvalidationHandler:&v6];
  [(NSMutableSet *)self->_assertions addObject:v4, v6, v7, v8, v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v4;
}

void __57__PKDismissalPreventionAssertionManager_acquireAssertion__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[1] removeObject:v5];
  }
}

@end