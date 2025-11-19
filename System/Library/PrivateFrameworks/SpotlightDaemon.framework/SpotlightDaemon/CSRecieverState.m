@interface CSRecieverState
+ (id)sharedInstance;
- (BOOL)checkBundleIdentifier:(id)a3;
- (CSRecieverState)init;
- (void)_updateFromPreferences;
@end

@implementation CSRecieverState

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[CSRecieverState sharedInstance];
  }

  v3 = sCSRecieverState;

  return v3;
}

- (void)_updateFromPreferences
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(CSReceiverPreferences *)self->_receiverPreferences dictionary];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __41__CSRecieverState__updateFromPreferences__block_invoke;
  v15 = &unk_278937708;
  v16 = v3;
  v17 = v4;
  v6 = v4;
  v7 = v3;
  [v5 enumerateKeysAndObjectsUsingBlock:&v12];

  v8 = [v7 copy];
  enabledBundleIdentifiers = self->_enabledBundleIdentifiers;
  self->_enabledBundleIdentifiers = v8;

  v10 = [v6 copy];
  disabledBundleIdentifiers = self->_disabledBundleIdentifiers;
  self->_disabledBundleIdentifiers = v10;
}

void __41__CSRecieverState__updateFromPreferences__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 BOOLValue];
      v7 = 40;
      if (v6)
      {
        v7 = 32;
      }

      [*(a1 + v7) addObject:v8];
    }
  }
}

- (CSRecieverState)init
{
  v8.receiver = self;
  v8.super_class = CSRecieverState;
  v2 = [(CSRecieverState *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CC3480]);
    receiverPreferences = v2->_receiverPreferences;
    v2->_receiverPreferences = v3;

    if ([(CSReceiverPreferences *)v2->_receiverPreferences notifyStart])
    {
      v5 = [(CSReceiverPreferences *)v2->_receiverPreferences notifyToken];
      v2->_notifyToken = v5;
      check = 0;
      notify_check(v5, &check);
      [(CSRecieverState *)v2 _updateFromPreferences];
    }
  }

  return v2;
}

uint64_t __33__CSRecieverState_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSRecieverState);
  v1 = sCSRecieverState;
  sCSRecieverState = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (BOOL)checkBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  check = 0;
  notify_check(v5->_notifyToken, &check);
  if (check == 1)
  {
    [(CSRecieverState *)v5 _updateFromPreferences];
  }

  v6 = [(NSSet *)v5->_disabledBundleIdentifiers containsObject:v4];
  if (!v6 && ![(NSSet *)v5->_enabledBundleIdentifiers containsObject:v4])
  {
    [(CSReceiverPreferences *)v5->_receiverPreferences enableBundleIdentifier:v4];
  }

  objc_sync_exit(v5);

  return !v6;
}

@end