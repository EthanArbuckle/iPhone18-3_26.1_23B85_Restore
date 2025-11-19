@interface PKAuthenticatorSharedRootContext
+ (id)sharedInstance;
- (PKAuthenticatorSharedRootContext)init;
- (id)externalizedContext;
- (int64_t)_initialUserIntentAvailabilityState;
- (void)_consumeWithCompletion:(id)a3 reset:(BOOL)a4;
- (void)dealloc;
@end

@implementation PKAuthenticatorSharedRootContext

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[PKAuthenticatorSharedRootContext sharedInstance];
  }

  v3 = sharedInstance_context;

  return v3;
}

uint64_t __50__PKAuthenticatorSharedRootContext_sharedInstance__block_invoke()
{
  sharedInstance_context = objc_alloc_init(PKAuthenticatorSharedRootContext);

  return MEMORY[0x2821F96F8]();
}

- (PKAuthenticatorSharedRootContext)init
{
  v5.receiver = self;
  v5.super_class = PKAuthenticatorSharedRootContext;
  v2 = [(PKAuthenticatorSharedRootContext *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v2->_userIntentAvailabilityState = [(PKAuthenticatorSharedRootContext *)v2 _initialUserIntentAvailabilityState];
  }

  return v3;
}

- (void)dealloc
{
  [(PKAuthenticatorSharedRootContext *)self resetWithCompletion:0];
  v3.receiver = self;
  v3.super_class = PKAuthenticatorSharedRootContext;
  [(PKAuthenticatorSharedRootContext *)&v3 dealloc];
}

- (int64_t)_initialUserIntentAvailabilityState
{
  if (!PKUserIntentIsAvailable())
  {
    return 2;
  }

  if (!PKPearlIsAvailable())
  {
    return 3;
  }

  if (PKRunningInViewService())
  {
    return 3;
  }

  return 2;
}

- (void)_consumeWithCompletion:(id)a3 reset:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v7 = self->_LAContext;
  LAContext = self->_LAContext;
  self->_LAContext = 0;

  if (v4)
  {
    v9 = [(PKAuthenticatorSharedRootContext *)self _initialUserIntentAvailabilityState];
  }

  else
  {
    v9 = 2;
  }

  self->_userIntentAvailabilityState = v9;
  os_unfair_lock_unlock(&self->_lock);
  if (v7)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v16 = v7;
      _os_log_impl(&dword_25E0A9000, v10, OS_LOG_TYPE_DEFAULT, "PKAuthenticatorSharedRootContext (%{public}p): shared context cleared and attempting reset...", buf, 0xCu);
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65__PKAuthenticatorSharedRootContext__consumeWithCompletion_reset___block_invoke;
    v12[3] = &unk_2799FFDC8;
    v13 = v7;
    v14 = v6;
    [(LAContext *)v13 resetWithReply:v12];
  }

  else if (v6)
  {
    v6[2](v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __65__PKAuthenticatorSharedRootContext__consumeWithCompletion_reset___block_invoke(uint64_t a1, char a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [*(a1 + 32) invalidate];
  v6 = PKLogFacilityTypeGetObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 || (a2 & 1) == 0)
  {
    if (!v7)
    {
      goto LABEL_8;
    }

    v12 = *(a1 + 32);
    v18 = 134349314;
    v19 = v12;
    v20 = 2112;
    v21 = v5;
    v9 = "PKAuthenticatorSharedRootContext (%{public}p): failed to reset former shared context - %@.";
    v10 = v6;
    v11 = 22;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_8;
    }

    v8 = *(a1 + 32);
    v18 = 134349056;
    v19 = v8;
    v9 = "PKAuthenticatorSharedRootContext (%{public}p): former context reset and invalidated.";
    v10 = v6;
    v11 = 12;
  }

  _os_log_impl(&dword_25E0A9000, v10, OS_LOG_TYPE_DEFAULT, v9, &v18, v11);
LABEL_8:

  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v13, v14, v15);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)externalizedContext
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  LAContext = self->_LAContext;
  if (!LAContext)
  {
    v4 = objc_alloc_init(MEMORY[0x277CD4790]);
    v5 = self->_LAContext;
    self->_LAContext = v4;

    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_LAContext;
      v12 = 134349056;
      v13 = v7;
      _os_log_impl(&dword_25E0A9000, v6, OS_LOG_TYPE_DEFAULT, "PKAuthenticatorSharedRootContext (%{public}p): creating shared root.", &v12, 0xCu);
    }

    LAContext = self->_LAContext;
  }

  v8 = LAContext;
  os_unfair_lock_unlock(&self->_lock);
  v9 = [(LAContext *)v8 externalizedContext];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end