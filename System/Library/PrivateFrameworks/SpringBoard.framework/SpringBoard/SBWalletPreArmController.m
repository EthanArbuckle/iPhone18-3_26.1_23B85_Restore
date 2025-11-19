@interface SBWalletPreArmController
+ (SBWalletPreArmController)sharedInstance;
- (BOOL)isPreArmAllowed;
- (BOOL)isPreArmExternallySuppressed;
- (SBWalletPreArmController)init;
- (SBWalletPreArmController)initWithWalletPresentation:(id)a3 biometricResource:(id)a4;
- (id)acquireSuppressPreArmAssertionOfType:(int64_t)a3 forReason:(id)a4;
- (int64_t)_computeTriggerSource;
- (void)_setNFDefaults:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation SBWalletPreArmController

+ (SBWalletPreArmController)sharedInstance
{
  if (sharedInstance_onceToken_58 != -1)
  {
    +[SBWalletPreArmController sharedInstance];
  }

  v3 = sharedInstance_sharedController;

  return v3;
}

void __42__SBWalletPreArmController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBWalletPreArmController);
  v1 = sharedInstance_sharedController;
  sharedInstance_sharedController = v0;
}

- (SBWalletPreArmController)init
{
  v3 = objc_alloc_init(MEMORY[0x277D2C8A8]);
  v4 = [MEMORY[0x277D67C98] sharedInstance];
  v5 = [(SBWalletPreArmController *)self initWithWalletPresentation:v3 biometricResource:v4];

  return v5;
}

- (SBWalletPreArmController)initWithWalletPresentation:(id)a3 biometricResource:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = SBWalletPreArmController;
  v9 = [(SBWalletPreArmController *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_walletPresentation, a3);
    objc_storeStrong(&v10->_biometricResource, a4);
    v11 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    disabledPreArmAssertions = v10->_disabledPreArmAssertions;
    v10->_disabledPreArmAssertions = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    disabledPreArmAssertionsByType = v10->_disabledPreArmAssertionsByType;
    v10->_disabledPreArmAssertionsByType = v13;

    v15 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.stockholm.wallet.presentation"];
    [(SBWalletPreArmController *)v10 _setNFDefaults:v15];

    v10->_triggerSource = [(SBWalletPreArmController *)v10 _computeTriggerSource];
  }

  return v10;
}

- (BOOL)isPreArmAllowed
{
  v3 = [(SBWalletPreArmController *)self isPreArmAvailable];
  if (v3)
  {
    LOBYTE(v3) = ![(SBWalletPreArmController *)self isPreArmSuppressed];
  }

  return v3;
}

- (BOOL)isPreArmExternallySuppressed
{
  v2 = [(NSMutableDictionary *)self->_disabledPreArmAssertionsByType objectForKeyedSubscript:&unk_2833723F8];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)acquireSuppressPreArmAssertionOfType:(int64_t)a3 forReason:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = objc_alloc(MEMORY[0x277CF0CE8]);
  v8 = MEMORY[0x277D85CD0];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __75__SBWalletPreArmController_acquireSuppressPreArmAssertionOfType_forReason___block_invoke;
  v25[3] = &unk_2783C3B58;
  objc_copyWeak(v28, &location);
  v28[1] = a3;
  v9 = v6;
  v26 = v9;
  v27 = self;
  v10 = [v7 initWithIdentifier:@"DisableWalletPreArmAssertion" forReason:v9 queue:MEMORY[0x277D85CD0] invalidationBlock:v25];

  if (v10)
  {
    v11 = SBLogLockScreenBiometricCoordinator();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = SBWalletPreArmSuppressionAssertionTypeDescription(a3);
      *buf = 138412546;
      v31 = v12;
      v32 = 2112;
      v33 = v9;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_INFO, "Added disable wallet pre-arm assertion of type %@ for reason: %@", buf, 0x16u);
    }

    v13 = [(SBWalletPreArmController *)self isPreArmSuppressed];
    [(NSHashTable *)self->_disabledPreArmAssertions addObject:v10];
    disabledPreArmAssertionsByType = self->_disabledPreArmAssertionsByType;
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v16 = [(NSMutableDictionary *)disabledPreArmAssertionsByType objectForKeyedSubscript:v15];
    LODWORD(disabledPreArmAssertionsByType) = v16 == 0;

    if (disabledPreArmAssertionsByType)
    {
      v17 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v18 = self->_disabledPreArmAssertionsByType;
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
      [(NSMutableDictionary *)v18 setObject:v17 forKeyedSubscript:v19];
    }

    v20 = self->_disabledPreArmAssertionsByType;
    v21 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v22 = [(NSMutableDictionary *)v20 objectForKeyedSubscript:v21];
    [v22 addObject:v10];

    if (!v13)
    {
      v23 = [MEMORY[0x277CCAB98] defaultCenter];
      [v23 postNotificationName:@"SBWalletPreArmControllerPreArmSuppressionDidChange" object:self];
    }
  }

  objc_destroyWeak(v28);
  objc_destroyWeak(&location);

  return v10;
}

void __75__SBWalletPreArmController_acquireSuppressPreArmAssertionOfType_forReason___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained[4] removeObject:v3];
  v5 = WeakRetained[5];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
  v7 = [v5 objectForKeyedSubscript:v6];
  [v7 removeObject:v3];

  v8 = SBLogLockScreenBiometricCoordinator();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = SBWalletPreArmSuppressionAssertionTypeDescription(*(a1 + 56));
    v10 = *(a1 + 32);
    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "Removed disable wallet pre-arm assertion of type %@ for reason: %@", &v12, 0x16u);
  }

  if (([WeakRetained isPreArmSuppressed] & 1) == 0)
  {
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 postNotificationName:@"SBWalletPreArmControllerPreArmSuppressionDidChange" object:*(a1 + 40)];
  }
}

- (int64_t)_computeTriggerSource
{
  v2 = [(SBUIBiometricResource *)self->_biometricResource hasPearlSupport];
  v3 = +[SBDefaults localDefaults];
  v4 = [v3 miscellaneousDefaults];
  v5 = [v4 walletPreArmForceLockButton];

  if ((v5 | v2))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)_setNFDefaults:(id)a3
{
  v5 = a3;
  if (self->_nfDefaults != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_nfDefaults, a3);
    self->_walletDoublePressConsumerAvailable = [(NSUserDefaults *)self->_nfDefaults BOOLForKey:@"walletDoubleButtonPressedConsumerAvailable"];
    [(NSUserDefaults *)self->_nfDefaults addObserver:self forKeyPath:@"walletDoubleButtonPressedConsumerAvailable" options:1 context:&self->_walletDoublePressConsumerAvailable];
    v5 = v6;
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v13 = *MEMORY[0x277D85DE8];
  p_walletDoublePressConsumerAvailable = &self->_walletDoublePressConsumerAvailable;
  if ([a3 isEqualToString:{@"walletDoubleButtonPressedConsumerAvailable", a4, a5}])
  {
    v9 = p_walletDoublePressConsumerAvailable == a6;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = [(NSUserDefaults *)self->_nfDefaults BOOLForKey:@"walletDoubleButtonPressedConsumerAvailable"];
    v11 = SBLogLockScreenBiometricCoordinator();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12[0] = 67109120;
      v12[1] = v10;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Wallet pre-arm double-click consumer did become available: %{BOOL}u", v12, 8u);
    }

    *p_walletDoublePressConsumerAvailable = v10;
  }
}

@end