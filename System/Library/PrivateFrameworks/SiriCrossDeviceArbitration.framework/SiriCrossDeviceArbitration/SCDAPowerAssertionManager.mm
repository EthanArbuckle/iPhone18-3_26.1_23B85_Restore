@interface SCDAPowerAssertionManager
- (SCDAPowerAssertionManager)initWithIdentifier:(id)a3;
- (void)_createPowerAssertion;
- (void)_releasePowerAssertion;
- (void)assertionCoordinator:(id)a3 didActivateAssertion:(id)a4 isFirstAssertion:(BOOL)a5;
- (void)assertionCoordinator:(id)a3 didDeactivateAssertion:(id)a4 isLastAssertion:(BOOL)a5;
- (void)dealloc;
- (void)releaseAllPowerAssertions;
- (void)releasePowerAssertionWithName:(id)a3;
- (void)takePowerAssertionWithName:(id)a3;
@end

@implementation SCDAPowerAssertionManager

- (void)releaseAllPowerAssertions
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    identifier = self->_identifier;
    *buf = 136315650;
    v9 = "[SCDAPowerAssertionManager releaseAllPowerAssertions]";
    v10 = 2048;
    v11 = self;
    v12 = 2112;
    v13 = identifier;
    _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, "%s %p (%@)", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__SCDAPowerAssertionManager_releaseAllPowerAssertions__block_invoke;
  block[3] = &unk_1E85D3850;
  block[4] = self;
  dispatch_async(queue, block);
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __54__SCDAPowerAssertionManager_releaseAllPowerAssertions__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__SCDAPowerAssertionManager_releaseAllPowerAssertions__block_invoke_2;
  v7[3] = &unk_1E85D30C0;
  v7[4] = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  return [*(a1 + 32) _releasePowerAssertion];
}

- (void)_releasePowerAssertion
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    identifier = self->_identifier;
    v9 = 136315650;
    v10 = "[SCDAPowerAssertionManager _releasePowerAssertion]";
    v11 = 2048;
    v12 = self;
    v13 = 2112;
    v14 = identifier;
    _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, "%s %p (%@)", &v9, 0x20u);
  }

  powerAssertion = self->_powerAssertion;
  if (powerAssertion)
  {
    v6 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v7 = self->_identifier;
      v9 = 136315906;
      v10 = "[SCDAPowerAssertionManager _releasePowerAssertion]";
      v11 = 2048;
      v12 = self;
      v13 = 2112;
      v14 = v7;
      v15 = 1024;
      v16 = powerAssertion;
      _os_log_impl(&dword_1DA758000, v6, OS_LOG_TYPE_INFO, "%s %p (%@) Released power assertion ID %u.", &v9, 0x26u);
      powerAssertion = self->_powerAssertion;
    }

    IOPMAssertionRelease(powerAssertion);
    self->_powerAssertion = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_createPowerAssertion
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_powerAssertion)
  {
    v3 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      identifier = self->_identifier;
      *buf = 136315650;
      v16 = "[SCDAPowerAssertionManager _createPowerAssertion]";
      v17 = 2048;
      v18 = self;
      v19 = 2112;
      v20 = identifier;
      v5 = "%s %p (%@) powerAssertion != kIOPMNullAssertionID";
      v6 = v3;
      v7 = 32;
LABEL_4:
      _os_log_impl(&dword_1DA758000, v6, OS_LOG_TYPE_INFO, v5, buf, v7);
    }
  }

  else
  {
    AssertionID = 0;
    if (!IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, self->_identifier, &AssertionID))
    {
      v10 = AssertionID;
      self->_powerAssertion = AssertionID;
      v11 = SCDALogContextCore;
      if (!os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
      {
        goto LABEL_10;
      }

      v12 = self->_identifier;
      *buf = 136315906;
      v16 = "[SCDAPowerAssertionManager _createPowerAssertion]";
      v17 = 2048;
      v18 = self;
      v19 = 2112;
      v20 = v12;
      v21 = 1024;
      v22 = v10;
      v5 = "%s %p (%@) Created power assertion with ID %u.";
      v6 = v11;
      v7 = 38;
      goto LABEL_4;
    }

    v8 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      v9 = self->_identifier;
      *buf = 136315650;
      v16 = "[SCDAPowerAssertionManager _createPowerAssertion]";
      v17 = 2048;
      v18 = self;
      v19 = 2112;
      v20 = v9;
      _os_log_error_impl(&dword_1DA758000, v8, OS_LOG_TYPE_ERROR, "%s %p (%@) Failed to create power assertion.", buf, 0x20u);
    }
  }

LABEL_10:
  v13 = *MEMORY[0x1E69E9840];
}

- (void)assertionCoordinator:(id)a3 didDeactivateAssertion:(id)a4 isLastAssertion:(BOOL)a5
{
  v5 = a5;
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  dispatch_assert_queue_V2(self->_queue);
  assertionCoordinator = self->_assertionCoordinator;
  v11 = SCDALogContextCore;
  if (assertionCoordinator == v8)
  {
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      identifier = self->_identifier;
      v15 = 136316162;
      v16 = "[SCDAPowerAssertionManager assertionCoordinator:didDeactivateAssertion:isLastAssertion:]";
      v17 = 2048;
      v18 = self;
      v19 = 2112;
      v20 = identifier;
      v21 = 2112;
      v22 = v9;
      v23 = 1024;
      LODWORD(v24) = v5;
      _os_log_debug_impl(&dword_1DA758000, v11, OS_LOG_TYPE_DEBUG, "%s %p (%@) assertion = %@, isLastAssertion = %d", &v15, 0x30u);
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    else if (!v5)
    {
      goto LABEL_7;
    }

    [(SCDAPowerAssertionManager *)self _releasePowerAssertion];
    goto LABEL_7;
  }

  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
  {
    v12 = self->_identifier;
    v15 = 136316162;
    v16 = "[SCDAPowerAssertionManager assertionCoordinator:didDeactivateAssertion:isLastAssertion:]";
    v17 = 2048;
    v18 = self;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = assertionCoordinator;
    v23 = 2112;
    v24 = v8;
    _os_log_error_impl(&dword_1DA758000, v11, OS_LOG_TYPE_ERROR, "%s %p (%@) Expected assertion coordinator is %@, actual assertion coordinator is %@.", &v15, 0x34u);
  }

LABEL_7:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)assertionCoordinator:(id)a3 didActivateAssertion:(id)a4 isFirstAssertion:(BOOL)a5
{
  v5 = a5;
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  dispatch_assert_queue_V2(self->_queue);
  assertionCoordinator = self->_assertionCoordinator;
  v11 = SCDALogContextCore;
  if (assertionCoordinator == v8)
  {
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      identifier = self->_identifier;
      v15 = 136316162;
      v16 = "[SCDAPowerAssertionManager assertionCoordinator:didActivateAssertion:isFirstAssertion:]";
      v17 = 2048;
      v18 = self;
      v19 = 2112;
      v20 = identifier;
      v21 = 2112;
      v22 = v9;
      v23 = 1024;
      LODWORD(v24) = v5;
      _os_log_debug_impl(&dword_1DA758000, v11, OS_LOG_TYPE_DEBUG, "%s %p (%@) assertion = %@, isFirstAssertion = %d", &v15, 0x30u);
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    else if (!v5)
    {
      goto LABEL_7;
    }

    [(SCDAPowerAssertionManager *)self _createPowerAssertion];
    goto LABEL_7;
  }

  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
  {
    v12 = self->_identifier;
    v15 = 136316162;
    v16 = "[SCDAPowerAssertionManager assertionCoordinator:didActivateAssertion:isFirstAssertion:]";
    v17 = 2048;
    v18 = self;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = assertionCoordinator;
    v23 = 2112;
    v24 = v8;
    _os_log_error_impl(&dword_1DA758000, v11, OS_LOG_TYPE_ERROR, "%s %p (%@) Expected assertion coordinator is %@, actual assertion coordinator is %@.", &v15, 0x34u);
  }

LABEL_7:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    identifier = self->_identifier;
    *buf = 136315650;
    v8 = "[SCDAPowerAssertionManager dealloc]";
    v9 = 2048;
    v10 = self;
    v11 = 2112;
    v12 = identifier;
    _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, "%s %p (%@)", buf, 0x20u);
  }

  [(SCDAPowerAssertionManager *)self _releasePowerAssertion];
  v6.receiver = self;
  v6.super_class = SCDAPowerAssertionManager;
  [(SCDAPowerAssertionManager *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

void __54__SCDAPowerAssertionManager_releaseAllPowerAssertions__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 8);
    v11 = 136316162;
    v12 = "[SCDAPowerAssertionManager releaseAllPowerAssertions]_block_invoke_2";
    v13 = 2048;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_debug_impl(&dword_1DA758000, v7, OS_LOG_TYPE_DEBUG, "%s %p (%@), name = %@, assertion = %@", &v11, 0x34u);
  }

  [v6 relinquishWithContext:0 options:0];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)releasePowerAssertionWithName:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    identifier = self->_identifier;
    *buf = 136315906;
    v15 = "[SCDAPowerAssertionManager releasePowerAssertionWithName:]";
    v16 = 2048;
    v17 = self;
    v18 = 2112;
    v19 = identifier;
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_INFO, "%s %p (%@) name = %@", buf, 0x2Au);
  }

  v7 = @"default";
  if (v4)
  {
    v7 = v4;
  }

  v8 = v7;
  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__SCDAPowerAssertionManager_releasePowerAssertionWithName___block_invoke;
  v12[3] = &unk_1E85D38A0;
  v12[4] = self;
  v13 = v8;
  v10 = v8;
  dispatch_async(queue, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __59__SCDAPowerAssertionManager_releasePowerAssertionWithName___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + 8);
      v9 = 136315906;
      v10 = "[SCDAPowerAssertionManager releasePowerAssertionWithName:]_block_invoke";
      v11 = 2048;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v2;
      _os_log_debug_impl(&dword_1DA758000, v3, OS_LOG_TYPE_DEBUG, "%s %p (%@) assertion = %@", &v9, 0x2Au);
    }

    [v2 relinquishWithContext:0 options:0];
    [*(*(a1 + 32) + 40) removeObjectForKey:*(a1 + 40)];
    if (![*(*(a1 + 32) + 40) count])
    {
      v4 = *(a1 + 32);
      v5 = *(v4 + 40);
      *(v4 + 40) = 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)takePowerAssertionWithName:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    identifier = self->_identifier;
    *buf = 136315906;
    v23 = "[SCDAPowerAssertionManager takePowerAssertionWithName:]";
    v24 = 2048;
    v25 = self;
    v26 = 2112;
    v27 = identifier;
    v28 = 2112;
    v29 = v4;
    _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_INFO, "%s %p (%@) name = %@", buf, 0x2Au);
  }

  v7 = @"default";
  if (v4)
  {
    v7 = v4;
  }

  v8 = v7;
  assertionCoordinator = self->_assertionCoordinator;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __56__SCDAPowerAssertionManager_takePowerAssertionWithName___block_invoke;
  v20[3] = &unk_1E85D3098;
  v10 = v8;
  v21 = v10;
  v11 = [SCDAAssertionContext newWithBuilder:v20];
  v12 = [(SCDAAssertionCoordinator *)assertionCoordinator acquireRelinquishableAssertionWithContext:v11 relinquishmentHandler:0];

  queue = self->_queue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __56__SCDAPowerAssertionManager_takePowerAssertionWithName___block_invoke_2;
  v17[3] = &unk_1E85D3270;
  v17[4] = self;
  v18 = v12;
  v19 = v10;
  v14 = v10;
  v15 = v12;
  dispatch_async(queue, v17);

  v16 = *MEMORY[0x1E69E9840];
}

void __56__SCDAPowerAssertionManager_takePowerAssertionWithName___block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v7 = @"effectiveName";
  v8[0] = v2;
  v3 = MEMORY[0x1E695DF20];
  v4 = a2;
  v5 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v4 setUserInfo:v5];

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __56__SCDAPowerAssertionManager_takePowerAssertionWithName___block_invoke_2(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    v9 = a1[4];
    v10 = a1[5];
    v11 = *(v9 + 8);
    v12 = 136315906;
    v13 = "[SCDAPowerAssertionManager takePowerAssertionWithName:]_block_invoke_2";
    v14 = 2048;
    v15 = v9;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v10;
    _os_log_debug_impl(&dword_1DA758000, v2, OS_LOG_TYPE_DEBUG, "%s %p (%@) assertion = %@", &v12, 0x2Au);
  }

  v3 = *(a1[4] + 40);
  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = a1[4];
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = *(a1[4] + 40);
  }

  result = [v3 setObject:a1[5] forKey:a1[6]];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (SCDAPowerAssertionManager)initWithIdentifier:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SCDAPowerAssertionManager;
  v5 = [(SCDAPowerAssertionManager *)&v16 init];
  if (v5)
  {
    if ([v4 length])
    {
      v6 = [v4 copy];
    }

    else
    {
      v6 = @"com.apple.assistant.scda.power-assertion-manager";
    }

    identifier = v5->_identifier;
    v5->_identifier = &v6->isa;

    v8 = SCDADispatchSerialQueueWithRelativePriority([@"com.apple.assistant.scda.power-assertion-manager" UTF8String], QOS_CLASS_DEFAULT, 0);
    queue = v5->_queue;
    v5->_queue = v8;

    v10 = [[SCDAAssertionCoordinator alloc] initWithIdentifier:@"com.apple.assistant.scda.power-assertion-manager" queue:v5->_queue delegate:v5];
    assertionCoordinator = v5->_assertionCoordinator;
    v5->_assertionCoordinator = v10;

    v5->_powerAssertion = 0;
    v12 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v13 = v5->_identifier;
      *buf = 136315650;
      v18 = "[SCDAPowerAssertionManager initWithIdentifier:]";
      v19 = 2048;
      v20 = v5;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_1DA758000, v12, OS_LOG_TYPE_INFO, "%s %p (%@)", buf, 0x20u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

@end