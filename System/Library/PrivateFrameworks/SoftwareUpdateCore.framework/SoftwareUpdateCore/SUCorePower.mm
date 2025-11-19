@interface SUCorePower
+ (id)sharedPowerManager;
+ (int)getPowerAssertionCountForIdentifierDomain:(id)a3;
+ (void)_disablePowerAssertion:(id)a3 forAppendedDomain:(id)a4;
+ (void)_enablePowerAssertion:(id)a3 forAppendedDomain:(id)a4;
+ (void)setPowerAssertion:(BOOL)a3 forIdentifierDomain:(id)a4;
- (SUCorePower)init;
@end

@implementation SUCorePower

+ (id)sharedPowerManager
{
  if (sharedPowerManager_powerManagerOnce != -1)
  {
    +[SUCorePower sharedPowerManager];
  }

  v3 = sharedPowerManager_powerManager;

  return v3;
}

uint64_t __33__SUCorePower_sharedPowerManager__block_invoke()
{
  sharedPowerManager_powerManager = objc_alloc_init(SUCorePower);

  return MEMORY[0x2821F96F8]();
}

- (SUCorePower)init
{
  v21 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = SUCorePower;
  v2 = [(SUCorePower *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCACA8]);
    v4 = [MEMORY[0x277D643F8] sharedCore];
    v5 = [v4 commonDomain];
    v6 = [v3 initWithFormat:@"%@.%@", v5, @"core.power.assertion"];

    v7 = [v6 UTF8String];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create(v7, v8);
    assertionQueue = v2->_assertionQueue;
    v2->_assertionQueue = v9;

    if (v2->_assertionQueue)
    {
      v11 = [MEMORY[0x277D64460] sharedLogger];
      v12 = [v11 oslog];

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v20 = v6;
        _os_log_impl(&dword_23193C000, v12, OS_LOG_TYPE_DEFAULT, "[POWER_ASSERTION] DISPATCH: created dispatch queue domain(%{public}@)", buf, 0xCu);
      }
    }

    else
    {
      v12 = [MEMORY[0x277D64428] sharedDiag];
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unable to create dispatch queue domain(%@)", v6];
      [v12 trackError:@"[POWER_ASSERTION]" forReason:v13 withResult:8100 withError:0];
    }

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activePowerAssertions = v2->_activePowerAssertions;
    v2->_activePowerAssertions = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (void)setPowerAssertion:(BOOL)a3 forIdentifierDomain:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = +[SUCorePower sharedPowerManager];
  if (v6)
  {
    v7 = [MEMORY[0x277D643F8] sharedSUCoreDomainAppending:v5];
    v8 = [v6 assertionQueue];
    dispatch_assert_queue_not_V2(v8);

    v9 = [v6 assertionQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__SUCorePower_setPowerAssertion_forIdentifierDomain___block_invoke;
    block[3] = &unk_27892E040;
    v18 = v4;
    v16 = v6;
    v17 = v7;
    v10 = v7;
    dispatch_sync(v9, block);
  }

  else
  {
    v11 = [MEMORY[0x277D64428] sharedDiag];
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v13 = @"disable";
    if (v4)
    {
      v13 = @"enable";
    }

    v14 = [v12 initWithFormat:@"no shared power manager - unable to %@ power assertion for domain(%@)", v13, v5];
    [v11 trackError:@"[POWER_ASSERTION]" forReason:v14 withResult:8101 withError:0];
  }
}

uint64_t __53__SUCorePower_setPowerAssertion_forIdentifierDomain___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(a1 + 48) == 1)
  {
    return [SUCorePower _enablePowerAssertion:v1 forAppendedDomain:v2];
  }

  else
  {
    return [SUCorePower _disablePowerAssertion:v1 forAppendedDomain:v2];
  }
}

+ (int)getPowerAssertionCountForIdentifierDomain:(id)a3
{
  v3 = a3;
  v4 = +[SUCorePower sharedPowerManager];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (v4)
  {
    v5 = [MEMORY[0x277D643F8] sharedSUCoreDomainAppending:v3];
    v6 = [v4 assertionQueue];
    dispatch_assert_queue_not_V2(v6);

    v7 = [v4 assertionQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__SUCorePower_getPowerAssertionCountForIdentifierDomain___block_invoke;
    block[3] = &unk_27892D520;
    v13 = v4;
    v14 = v5;
    v15 = &v16;
    v8 = v5;
    dispatch_sync(v7, block);

    v9 = v13;
  }

  else
  {
    v8 = [MEMORY[0x277D64428] sharedDiag];
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"no shared power manager - unable to get power assertion count for domain(%@)", v3];
    [v8 trackError:@"[POWER_ASSERTION]" forReason:v9 withResult:8101 withError:0];
  }

  v10 = *(v17 + 6);
  _Block_object_dispose(&v16, 8);

  return v10;
}

void __57__SUCorePower_getPowerAssertionCountForIdentifierDomain___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activePowerAssertions];
  v4 = [v2 safeObjectForKey:*(a1 + 40) ofClass:objc_opt_class()];

  v3 = v4;
  if (v4)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v4 activeAssertionCount];
    v3 = v4;
  }
}

+ (void)_enablePowerAssertion:(id)a3 forAppendedDomain:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 assertionQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 activePowerAssertions];
  v9 = [v8 safeObjectForKey:v6 ofClass:objc_opt_class()];

  if (!v9)
  {
    v13 = objc_alloc_init(SUCorePowerAssertion);
    if (!v13)
    {
      v9 = [MEMORY[0x277D64428] sharedDiag];
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unable to create SUCorePowerAssertion object for domain(%@)", v6];
      [v9 trackError:@"[POWER_ASSERTION]" forReason:v11 withResult:8100 withError:0];
      goto LABEL_11;
    }

    v9 = v13;
    AssertionID = -1;
    v14 = IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, v6, &AssertionID);
    if (v14)
    {
      v15 = v14;
      v11 = [MEMORY[0x277D64428] sharedDiag];
      v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unable to create IOKit Power Assertion for domain(%@)", v6];
      [v11 trackError:@"[POWER_ASSERTION]" forReason:v16 withResult:v15 withError:0];

      goto LABEL_11;
    }

    [v9 setActiveAssertionCount:{objc_msgSend(v9, "activeAssertionCount") + 1}];
    [v9 setAssertionID:AssertionID];
    v17 = [v5 activePowerAssertions];
    [v17 setSafeObject:v9 forKey:v6];

    v18 = [MEMORY[0x277D64460] sharedLogger];
    v11 = [v18 oslog];

    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v19 = [v9 activeAssertionCount];
    *buf = 67109378;
    v23 = v19;
    v24 = 2114;
    v25 = v6;
    v12 = "[POWER_ASSERTION] ENABLED(count=%d) for domain(%{public}@)";
    goto LABEL_4;
  }

  [v9 setActiveAssertionCount:{objc_msgSend(v9, "activeAssertionCount") + 1}];
  v10 = [MEMORY[0x277D64460] sharedLogger];
  v11 = [v10 oslog];

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v23 = [v9 activeAssertionCount];
    v24 = 2114;
    v25 = v6;
    v12 = "[POWER_ASSERTION] INCREASED(count=%d) for domain(%{public}@)";
LABEL_4:
    _os_log_impl(&dword_23193C000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 0x12u);
  }

LABEL_11:

  v20 = *MEMORY[0x277D85DE8];
}

+ (void)_disablePowerAssertion:(id)a3 forAppendedDomain:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 assertionQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 activePowerAssertions];
  v9 = [v8 safeObjectForKey:v6 ofClass:objc_opt_class()];

  if (!v9)
  {
    v11 = [MEMORY[0x277D64428] sharedDiag];
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"disabling power assertion when no assertion is active for domain(%@)", v6];
    [v11 trackError:@"[POWER_ASSERTION]" forReason:v13 withResult:8101 withError:0];

    goto LABEL_7;
  }

  [v9 setActiveAssertionCount:{objc_msgSend(v9, "activeAssertionCount") - 1}];
  if ([v9 activeAssertionCount] <= 0)
  {
    v15 = IOPMAssertionRelease([v9 assertionID]);
    if (v15)
    {
      v16 = v15;
      v17 = [MEMORY[0x277D64428] sharedDiag];
      v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unable to release IOKit Power Assertion for domain(%@)", v6];
      [v17 trackError:@"[POWER_ASSERTION]" forReason:v18 withResult:v16 withError:0];

      goto LABEL_8;
    }

    v19 = [v5 activePowerAssertions];
    [v19 removeObjectForKey:v6];

    v20 = [MEMORY[0x277D64460] sharedLogger];
    v11 = [v20 oslog];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v22 = [v9 activeAssertionCount];
      v23 = 2114;
      v24 = v6;
      v12 = "[POWER_ASSERTION] DISABLED(count=%d) for domain(%{public}@)";
      goto LABEL_5;
    }
  }

  else
  {
    v10 = [MEMORY[0x277D64460] sharedLogger];
    v11 = [v10 oslog];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v22 = [v9 activeAssertionCount];
      v23 = 2114;
      v24 = v6;
      v12 = "[POWER_ASSERTION] DECREASED(count=%d) for domain(%{public}@)";
LABEL_5:
      _os_log_impl(&dword_23193C000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 0x12u);
    }
  }

LABEL_7:

LABEL_8:
  v14 = *MEMORY[0x277D85DE8];
}

@end