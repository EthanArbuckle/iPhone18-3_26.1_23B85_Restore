@interface BYSilentLoginUpgradeGuarantor
+ (id)sharedInstance;
- (BYSilentLoginUpgradeGuarantor)init;
- (void)_ensureQueuesAndStartSilentLoginUpgrade;
- (void)blockUntilShortLivedTokenUpgradeCompletes;
- (void)blockUntilSilentLoginUpgradeCompletes;
- (void)blockUntilSilentLoginUpgradeCompletesForNonLoginUser;
@end

@implementation BYSilentLoginUpgradeGuarantor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[BYSilentLoginUpgradeGuarantor sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __47__BYSilentLoginUpgradeGuarantor_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(BYSilentLoginUpgradeGuarantor);

  return MEMORY[0x1EEE66BB8]();
}

- (BYSilentLoginUpgradeGuarantor)init
{
  v5.receiver = self;
  v5.super_class = BYSilentLoginUpgradeGuarantor;
  v2 = [(BYSilentLoginUpgradeGuarantor *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BYSilentLoginUpgradeGuarantor *)v2 setDidEnsureQueuesAndStartSilentLoginUpgrade:0];
  }

  return v3;
}

- (void)_ensureQueuesAndStartSilentLoginUpgrade
{
  v2 = self;
  objc_sync_enter(v2);
  if (![(BYSilentLoginUpgradeGuarantor *)v2 didEnsureQueuesAndStartSilentLoginUpgrade])
  {
    v3 = dispatch_queue_create("com.apple.purplebuddy.silentloginupgradecompletion", 0);
    [(BYSilentLoginUpgradeGuarantor *)v2 setSilentLoginUpgradeCompletionQueue:v3];

    v4 = [(BYSilentLoginUpgradeGuarantor *)v2 silentLoginUpgradeCompletionQueue];
    dispatch_suspend(v4);

    v5 = dispatch_queue_create("com.apple.purplebuddy.shortlivedtokenupgradecompletion", 0);
    [(BYSilentLoginUpgradeGuarantor *)v2 setShortLivedTokenUpgradeCompletionQueue:v5];

    v6 = [(BYSilentLoginUpgradeGuarantor *)v2 shortLivedTokenUpgradeCompletionQueue];
    dispatch_suspend(v6);

    v7 = +[BYManagedAppleIDBootstrap sharedManager];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__BYSilentLoginUpgradeGuarantor__ensureQueuesAndStartSilentLoginUpgrade__block_invoke;
    v9[3] = &unk_1E7D02FC8;
    v9[4] = v2;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __72__BYSilentLoginUpgradeGuarantor__ensureQueuesAndStartSilentLoginUpgrade__block_invoke_5;
    v8[3] = &unk_1E7D027A8;
    v8[4] = v2;
    [v7 runSilentLoginUpgradeIfNeededWithCompletion:v9 shortLivedTokenUpgradeCompletion:v8];

    [(BYSilentLoginUpgradeGuarantor *)v2 setDidEnsureQueuesAndStartSilentLoginUpgrade:1];
  }

  objc_sync_exit(v2);
}

void __72__BYSilentLoginUpgradeGuarantor__ensureQueuesAndStartSilentLoginUpgrade__block_invoke(uint64_t a1)
{
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B862F000, v2, OS_LOG_TYPE_DEFAULT, "Daemon did finish silent upgrade. Resuming completion queue.", v4, 2u);
  }

  v3 = [*(a1 + 32) silentLoginUpgradeCompletionQueue];
  dispatch_resume(v3);
}

void __72__BYSilentLoginUpgradeGuarantor__ensureQueuesAndStartSilentLoginUpgrade__block_invoke_5(uint64_t a1)
{
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B862F000, v2, OS_LOG_TYPE_DEFAULT, "Daemon did finish short lived token upgrade. Resuming completion queue.", v4, 2u);
  }

  v3 = [*(a1 + 32) shortLivedTokenUpgradeCompletionQueue];
  dispatch_resume(v3);
}

- (void)blockUntilSilentLoginUpgradeCompletesForNonLoginUser
{
  [(BYSilentLoginUpgradeGuarantor *)self _ensureQueuesAndStartSilentLoginUpgrade];
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "blockUntilSilentLoginUpgradeCompletesForNonLoginUser will schedule block.", v5, 2u);
  }

  v4 = [(BYSilentLoginUpgradeGuarantor *)self silentLoginUpgradeCompletionQueue];
  dispatch_sync(v4, &__block_literal_global_7);
}

void __85__BYSilentLoginUpgradeGuarantor_blockUntilSilentLoginUpgradeCompletesForNonLoginUser__block_invoke()
{
  v0 = _BYLoggingFacility();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B862F000, v0, OS_LOG_TYPE_DEFAULT, "blockUntilSilentLoginUpgradeCompletesForNonLoginUser returning.", v1, 2u);
  }
}

- (void)blockUntilSilentLoginUpgradeCompletes
{
  v3 = +[BYManagedAppleIDBootstrap sharedManager];
  v4 = [v3 isLoginUser];

  if (v4)
  {

    [(BYSilentLoginUpgradeGuarantor *)self didShortCircuitSilentLoginUpgrade];
  }

  else
  {

    [(BYSilentLoginUpgradeGuarantor *)self blockUntilSilentLoginUpgradeCompletesForNonLoginUser];
  }
}

- (void)blockUntilShortLivedTokenUpgradeCompletes
{
  v3 = +[BYManagedAppleIDBootstrap sharedManager];
  v4 = [v3 isLoginUser];

  if (v4)
  {

    [(BYSilentLoginUpgradeGuarantor *)self didShortCircuitShortLivedTokenUpgrade];
  }

  else
  {
    [(BYSilentLoginUpgradeGuarantor *)self _ensureQueuesAndStartSilentLoginUpgrade];
    v5 = _BYLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B862F000, v5, OS_LOG_TYPE_DEFAULT, "blockUntilShortLivedTokenUpgradeCompletes will schedule block.", v7, 2u);
    }

    v6 = [(BYSilentLoginUpgradeGuarantor *)self shortLivedTokenUpgradeCompletionQueue];
    dispatch_sync(v6, &__block_literal_global_9);
  }
}

void __74__BYSilentLoginUpgradeGuarantor_blockUntilShortLivedTokenUpgradeCompletes__block_invoke()
{
  v0 = _BYLoggingFacility();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B862F000, v0, OS_LOG_TYPE_DEFAULT, "blockUntilShortLivedTokenUpgradeCompletes returning.", v1, 2u);
  }
}

@end