@interface SBKeyboardSuppressionManager
+ (SBKeyboardSuppressionManager)sharedInstance;
- (SBKeyboardSuppressionManager)init;
- (id)acquireKeyboardSuppressionAssertionWithReason:(id)a3 predicate:(id)a4 displayIdentity:(id)a5;
- (id)description;
- (void)_setKeyboardSuppressed:(BOOL)a3 forReason:(id)a4 withPredicate:(id)a5 displayIdentity:(id)a6;
@end

@implementation SBKeyboardSuppressionManager

+ (SBKeyboardSuppressionManager)sharedInstance
{
  if (sharedInstance_token_0 != -1)
  {
    +[SBKeyboardSuppressionManager sharedInstance];
  }

  v3 = sharedInstance___sharedKeyboardManager;

  return v3;
}

uint64_t __46__SBKeyboardSuppressionManager_sharedInstance__block_invoke()
{
  kdebug_trace();
  v0 = objc_alloc_init(SBKeyboardSuppressionManager);
  v1 = sharedInstance___sharedKeyboardManager;
  sharedInstance___sharedKeyboardManager = v0;

  return kdebug_trace();
}

- (SBKeyboardSuppressionManager)init
{
  v6.receiver = self;
  v6.super_class = SBKeyboardSuppressionManager;
  v2 = [(SBKeyboardSuppressionManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    keyboardSuppressionAssertions = v2->_keyboardSuppressionAssertions;
    v2->_keyboardSuppressionAssertions = v3;
  }

  return v2;
}

- (id)acquireKeyboardSuppressionAssertionWithReason:(id)a3 predicate:(id)a4 displayIdentity:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = objc_alloc(MEMORY[0x277CF0CE8]);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __104__SBKeyboardSuppressionManager_acquireKeyboardSuppressionAssertionWithReason_predicate_displayIdentity___block_invoke;
  v15[3] = &unk_2783AEA48;
  objc_copyWeak(&v17, &location);
  v12 = v8;
  v16 = v12;
  v13 = [v11 initWithIdentifier:@"SBKeyboardSuppressionManager" forReason:v12 invalidationBlock:v15];
  [(SBKeyboardSuppressionManager *)self _setKeyboardSuppressed:1 forReason:v12 withPredicate:v9 displayIdentity:v10];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v13;
}

void __104__SBKeyboardSuppressionManager_acquireKeyboardSuppressionAssertionWithReason_predicate_displayIdentity___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained stopSuppressingKeyboardWithReason:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_setKeyboardSuppressed:(BOOL)a3 forReason:(id)a4 withPredicate:(id)a5 displayIdentity:(id)a6
{
  v8 = a3;
  v19 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(NSMutableDictionary *)self->_keyboardSuppressionAssertions objectForKey:v19];
  v13 = v12;
  if (v8)
  {
    v14 = +[SBSceneManagerCoordinator sharedInstance];
    v15 = [v14 sceneDeactivationManager];
    v16 = [v15 newAssertionWithReason:8];

    v17 = [MEMORY[0x277D75188] transitionContext];
    v18 = [MEMORY[0x277CF0B70] settingsWithDuration:0.25];
    [v17 setAnimationSettings:v18];
    [(NSMutableDictionary *)self->_keyboardSuppressionAssertions setObject:v16 forKeyedSubscript:v19];
    if (v11)
    {
      [v16 sb_acquireWithPredicate:v10 transitionContext:v17 displayIdentity:v11];
    }

    else
    {
      [v16 acquireWithPredicate:v10 transitionContext:v17];
    }

    [v13 relinquish];
  }

  else
  {

    if (!v13)
    {
      goto LABEL_9;
    }

    v13 = [(NSMutableDictionary *)self->_keyboardSuppressionAssertions objectForKeyedSubscript:v19];
    [v13 relinquish];
    [(NSMutableDictionary *)self->_keyboardSuppressionAssertions removeObjectForKey:v19];
  }

LABEL_9:
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p, suppression reasons: %@>", v5, self, self->_keyboardSuppressionAssertions];

  return v6;
}

@end