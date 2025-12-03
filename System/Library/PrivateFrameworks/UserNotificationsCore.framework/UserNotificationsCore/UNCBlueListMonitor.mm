@interface UNCBlueListMonitor
- (BOOL)shouldBoostOpportunisticTopicsToEnabled;
- (UNCBlueListMonitor)init;
- (UNCBlueListMonitorDelegate)delegate;
- (void)_startMonitoring;
- (void)setDelegate:(id)delegate;
@end

@implementation UNCBlueListMonitor

- (UNCBlueListMonitor)init
{
  v19.receiver = self;
  v19.super_class = UNCBlueListMonitor;
  v2 = [(UNCBlueListMonitor *)&v19 init];
  if (!v2)
  {
LABEL_12:
    v15 = v2;
    goto LABEL_13;
  }

  userContext = [MEMORY[0x1E6997A60] userContext];
  context = v2->_context;
  v2->_context = userContext;

  if (v2->_context)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.usernotificationsserver.BlueListMonitor", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = [MEMORY[0x1E6997A78] keyPathWithKey:@"/push/bluelist"];
    blueListKeyPath = v2->_blueListKeyPath;
    v2->_blueListKeyPath = v8;

    v10 = [(_CDContext *)v2->_context objectForKeyedSubscript:v2->_blueListKeyPath];
    v11 = objc_opt_class();
    v12 = v10;
    if (v11)
    {
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v16 = v13;

    bOOLValue = [v16 BOOLValue];
    v2->_budgetExhausted = bOOLValue;
    [(UNCBlueListMonitor *)v2 _startMonitoring];
    goto LABEL_12;
  }

  v14 = *MEMORY[0x1E6983390];
  if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_ERROR))
  {
    [(UNCBlueListMonitor *)v14 init];
  }

  v15 = 0;
LABEL_13:

  return v15;
}

- (BOOL)shouldBoostOpportunisticTopicsToEnabled
{
  selfCopy = self;
  dispatch_assert_queue_not_V2(self->_queue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = selfCopy->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__UNCBlueListMonitor_shouldBoostOpportunisticTopicsToEnabled__block_invoke;
  v5[3] = &unk_1E85D6E48;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return (selfCopy & 1) == 0;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__UNCBlueListMonitor_setDelegate___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_sync(queue, v7);
}

- (void)_startMonitoring
{
  v3 = MEMORY[0x1E6997A70];
  v4 = [MEMORY[0x1E6997A80] predicateForChangeAtKeyPath:self->_blueListKeyPath];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__UNCBlueListMonitor__startMonitoring__block_invoke;
  v6[3] = &unk_1E85D6EC0;
  v6[4] = self;
  v5 = [v3 localWakingRegistrationWithIdentifier:@"com.apple.usernotifications.bluelist" contextualPredicate:v4 clientIdentifier:@"com.apple.UserNotificationsServer" callback:v6];

  [(_CDContext *)self->_context registerCallback:v5];
}

void __38__UNCBlueListMonitor__startMonitoring__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__UNCBlueListMonitor__startMonitoring__block_invoke_13;
  block[3] = &unk_1E85D6E98;
  block[4] = v7;
  block[5] = &v20;
  block[6] = &v14;
  dispatch_sync(v8, block);
  v9 = *MEMORY[0x1E6983390];
  if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(v21 + 24);
    v11 = v15[5];
    *buf = 67109376;
    v25 = v10;
    v26 = 2048;
    v27 = v11;
    _os_log_impl(&dword_1DA7A9000, v9, OS_LOG_TYPE_DEFAULT, "bluelist status changed; budgetExhausted: %d, notifying delegate: %p", buf, 0x12u);
  }

  [v15[5] bluelistStatusChanged];
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __38__UNCBlueListMonitor__startMonitoring__block_invoke_13(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:*(a1[4] + 24)];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 BOOLValue];
  *(a1[4] + 8) = v7;
  *(*(a1[5] + 8) + 24) = *(a1[4] + 8);
  WeakRetained = objc_loadWeakRetained((a1[4] + 40));
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = WeakRetained;

  return MEMORY[0x1EEE66BB8]();
}

- (UNCBlueListMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end