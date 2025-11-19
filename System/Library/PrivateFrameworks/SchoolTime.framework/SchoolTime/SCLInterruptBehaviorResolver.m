@interface SCLInterruptBehaviorResolver
- (BOOL)_isEmergencyBypassEnabledForContact:(id)a3;
- (BOOL)_isEntitledWithClientIdentifier:(id)a3;
- (BOOL)_isRepeatSender:(id)a3 date:(id)a4 clientIdentifier:(id)a5;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (SCLInterruptBehaviorResolver)initWithTargetQueue:(id)a3;
- (id)_resolveInterruptBehaviorForEvent:(id)a3 date:(id)a4 clientIdentifier:(id)a5;
- (void)_addResolutionRecord:(id)a3;
- (void)dealloc;
- (void)resolveBehaviorForEvent:(id)a3 clientIdentifier:(id)a4 completion:(id)a5;
- (void)server:(id)a3 didUpdateState:(id)a4 fromState:(id)a5;
@end

@implementation SCLInterruptBehaviorResolver

- (SCLInterruptBehaviorResolver)initWithTargetQueue:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SCLInterruptBehaviorResolver;
  v5 = [(SCLInterruptBehaviorResolver *)&v17 init];
  if (v5)
  {
    v6 = dispatch_queue_create_with_target_V2("SCLInterruptBehaviorResolver", 0, v4);
    queue = v5->_queue;
    v5->_queue = v6;

    v8 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:0x2876227A8];
    listener = v5->_listener;
    v5->_listener = v8;

    [(NSXPCListener *)v5->_listener _setQueue:v5->_queue];
    [(NSXPCListener *)v5->_listener setDelegate:v5];
    v5->_lock._os_unfair_lock_opaque = 0;
    v10 = objc_alloc_init(MEMORY[0x277CBDAC0]);
    v11 = tcc_identity_create();
    [v10 setAssumedIdentity:v11];

    v12 = [objc_alloc(MEMORY[0x277CBDAB8]) initWithConfiguration:v10];
    contactStore = v5->_contactStore;
    v5->_contactStore = v12;

    [(CNContactStore *)v5->_contactStore requestAccessForEntityType:0 completionHandler:&__block_literal_global_6];
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    resolutionRecords = v5->_resolutionRecords;
    v5->_resolutionRecords = v14;
  }

  return v5;
}

void __52__SCLInterruptBehaviorResolver_initWithTargetQueue___block_invoke(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = scl_interrupt_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_264829000, v5, OS_LOG_TYPE_DEFAULT, "Access to contacts store: granted=%{BOOL}u, error=%@", v7, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = SCLInterruptBehaviorResolver;
  [(SCLInterruptBehaviorResolver *)&v3 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = scl_interrupt_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11[0] = 67109120;
    v11[1] = [v5 processIdentifier];
    _os_log_impl(&dword_264829000, v6, OS_LOG_TYPE_INFO, "Accepting new connection from pid %d", v11, 8u);
  }

  v7 = SCLInterruptBehaviorResolutionXPCServerInterface();
  [v5 setExportedInterface:v7];

  [v5 setExportedObject:self];
  v8 = [(SCLInterruptBehaviorResolver *)self queue];
  [v5 _setQueue:v8];

  [v5 resume];
  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)server:(id)a3 didUpdateState:(id)a4 fromState:(id)a5
{
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  currentState = self->_currentState;
  self->_currentState = v6;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)resolveBehaviorForEvent:(id)a3 clientIdentifier:(id)a4 completion:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SCLInterruptBehaviorResolver *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = scl_interrupt_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v18 = 138543362;
    v19 = v8;
    _os_log_impl(&dword_264829000, v12, OS_LOG_TYPE_INFO, "Resolving behavior for event: %{public}@", &v18, 0xCu);
  }

  if ([(SCLInterruptBehaviorResolver *)self _isEntitledWithClientIdentifier:v9])
  {
    v13 = [MEMORY[0x277CBEAA8] date];
    v14 = [(SCLInterruptBehaviorResolver *)self _resolveInterruptBehaviorForEvent:v8 date:v13 clientIdentifier:v9];
    v15 = scl_interrupt_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412546;
      v19 = v14;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&dword_264829000, v15, OS_LOG_TYPE_DEFAULT, "Result behavior:%@ for event: %{public}@", &v18, 0x16u);
    }

    v10[2](v10, v14, 0);
  }

  else
  {
    v16 = scl_interrupt_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SCLInterruptBehaviorResolver resolveBehaviorForEvent:v16 clientIdentifier:? completion:?];
    }

    v13 = SCLEntitlementError(0x2876227A8);
    (v10)[2](v10, 0, v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isEntitledWithClientIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SCLInterruptBehaviorResolver *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [MEMORY[0x277CCAE80] currentConnection];
  v7 = [v6 valueForEntitlement:0x2876227A8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 containsObject:v4];
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 isEqualToString:v4];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:
  v10 = scl_interrupt_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(SCLInterruptBehaviorResolver *)v4 _isEntitledWithClientIdentifier:v9, v10];
  }

  return v9;
}

- (id)_resolveInterruptBehaviorForEvent:(id)a3 date:(id)a4 clientIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SCLInterruptBehaviorResolver *)self queue];
  dispatch_assert_queue_V2(v11);

  os_unfair_lock_lock(&self->_lock);
  v12 = [(SCLInterruptBehaviorResolver *)self currentState];
  os_unfair_lock_unlock(&self->_lock);
  v13 = [v8 sender];
  if (![v12 isActive] || (objc_msgSend(v8, "shouldAlwaysInterrupt") & 1) != 0 || objc_msgSend(v8, "urgency") == 1)
  {
    v14 = 0;
    v15 = 1;
  }

  else if (v13)
  {
    v20 = [(SCLInterruptBehaviorResolver *)self _isEmergencyBypassEnabledForContact:v13];
    v14 = !v20;
    v15 = v20;
  }

  else
  {
    v15 = 0;
    v14 = 1;
  }

  v16 = [v8 type];
  if (v14 && v16 == 1 && v13)
  {
    v15 = [(SCLInterruptBehaviorResolver *)self _isRepeatSender:v13 date:v9 clientIdentifier:v10];
  }

  v17 = [[SCLInterruptEventBehavior alloc] initWithEvent:v8 interruptEligibility:v15];
  if ([v8 type] == 1)
  {
    v18 = [SCLInterruptBehaviorResolutionRecord resolutionRecordForDate:v9 eventBehavior:v17 clientIdentifier:v10];
    [(SCLInterruptBehaviorResolver *)self _addResolutionRecord:v18];
  }

  return v17;
}

- (BOOL)_isEmergencyBypassEnabledForContact:(id)a3
{
  v28[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SCLInterruptBehaviorResolver *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_alloc(MEMORY[0x277CBDA70]);
  v7 = *MEMORY[0x277CBD048];
  v28[0] = *MEMORY[0x277CBD018];
  v28[1] = v7;
  v28[2] = *MEMORY[0x277CBCFA0];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
  v9 = [v6 initWithKeysToFetch:v8];

  v10 = [MEMORY[0x277CBDA58] scl_predicateForContactsMatchingEventSender:v4];
  [v9 setPredicate:v10];

  [v9 setUnifyResults:1];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  contactStore = self->_contactStore;
  v18[4] = &v20;
  v19 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __68__SCLInterruptBehaviorResolver__isEmergencyBypassEnabledForContact___block_invoke;
  v18[3] = &unk_279B6C6D8;
  LODWORD(v10) = [(CNContactStore *)contactStore enumerateContactsWithFetchRequest:v9 error:&v19 usingBlock:v18];
  v12 = v19;
  if (v10)
  {
    v13 = scl_interrupt_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(v21 + 24);
      *buf = 138543618;
      v25 = v4;
      v26 = 1024;
      v27 = v14;
      _os_log_impl(&dword_264829000, v13, OS_LOG_TYPE_DEFAULT, "sender=%{public}@, isEmergencyBypassEnabled=%{BOOL}u", buf, 0x12u);
    }
  }

  else
  {
    v13 = scl_interrupt_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(SCLInterruptBehaviorResolver *)v12 _isEmergencyBypassEnabledForContact:v13];
    }
  }

  v15 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);

  v16 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

void __68__SCLInterruptBehaviorResolver__isEmergencyBypassEnabledForContact___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([v5 isUnified])
  {
    v6 = [v5 linkedContacts];
  }

  else
  {
    v9[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  v7 = v6;
  *(*(*(a1 + 32) + 8) + 24) = [v6 bs_containsObjectPassingTest:&__block_literal_global_21];
  *a3 = *(*(*(a1 + 32) + 8) + 24);

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __68__SCLInterruptBehaviorResolver__isEmergencyBypassEnabledForContact___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 callAlert];
  v3 = [v2 ignoreMute];

  return v3;
}

- (BOOL)_isRepeatSender:(id)a3 date:(id)a4 clientIdentifier:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(SCLInterruptBehaviorResolver *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = [v10 dateByAddingTimeInterval:-180.0];

  resolutionRecords = self->_resolutionRecords;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __70__SCLInterruptBehaviorResolver__isRepeatSender_date_clientIdentifier___block_invoke;
  v21[3] = &unk_279B6C700;
  v22 = v12;
  v23 = v9;
  v14 = v8;
  v24 = v14;
  v15 = v9;
  v16 = v12;
  v17 = [(NSMutableArray *)resolutionRecords bs_containsObjectPassingTest:v21];
  v18 = scl_interrupt_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v26 = v14;
    v27 = 1024;
    v28 = v17;
    _os_log_impl(&dword_264829000, v18, OS_LOG_TYPE_DEFAULT, "Checked if event sender is a repeat: sender=%{public}@, repeat=%{BOOL}u", buf, 0x12u);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t __70__SCLInterruptBehaviorResolver__isRepeatSender_date_clientIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 date];
  v6 = [v3 compare:v5] != 1;

  v7 = [v4 clientIdentifier];
  LODWORD(v5) = [v7 isEqualToString:*(v2 + 40)];

  v8 = [v4 eventBehavior];

  v9 = [v8 event];
  v10 = [v9 sender];
  LODWORD(v2) = [v10 isEqual:*(v2 + 48)];

  return v6 & v5 & v2;
}

- (void)_addResolutionRecord:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SCLInterruptBehaviorResolver *)self queue];
  dispatch_assert_queue_V2(v5);

  if (v4)
  {
    [(NSMutableArray *)self->_resolutionRecords addObject:v4];
    v6 = scl_interrupt_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v19 = v4;
      _os_log_impl(&dword_264829000, v6, OS_LOG_TYPE_INFO, "New record added %{public}@", buf, 0xCu);
    }

    if ([(NSMutableArray *)self->_resolutionRecords count]>= 0x15)
    {
      v7 = [(NSMutableArray *)self->_resolutionRecords count];
      v8 = [v4 date];
      v9 = [v8 dateByAddingTimeInterval:-180.0];

      v10 = MEMORY[0x277CCAC30];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __53__SCLInterruptBehaviorResolver__addResolutionRecord___block_invoke;
      v16[3] = &unk_279B6C728;
      v11 = v9;
      v17 = v11;
      v12 = [v10 predicateWithBlock:v16];
      [(NSMutableArray *)self->_resolutionRecords filterUsingPredicate:v12];
      v13 = v7 - [(NSMutableArray *)self->_resolutionRecords count];
      if (v13)
      {
        v14 = scl_interrupt_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v19 = v13;
          _os_log_impl(&dword_264829000, v14, OS_LOG_TYPE_DEFAULT, "Pruned %lu resolution records", buf, 0xCu);
        }
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

BOOL __53__SCLInterruptBehaviorResolver__addResolutionRecord___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 date];
  v4 = [v2 compare:v3] != 1;

  return v4;
}

- (void)_isEntitledWithClientIdentifier:(os_log_t)log .cold.1(uint64_t a1, char a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 1024;
  v7 = a2 & 1;
  _os_log_debug_impl(&dword_264829000, log, OS_LOG_TYPE_DEBUG, "Client %@ entitled %{BOOL}u", &v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_isEmergencyBypassEnabledForContact:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_264829000, a2, OS_LOG_TYPE_ERROR, "Error checking emergency bypass contacts: error=%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end