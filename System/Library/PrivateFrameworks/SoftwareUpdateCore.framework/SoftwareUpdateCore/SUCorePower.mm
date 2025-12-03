@interface SUCorePower
+ (id)sharedPowerManager;
+ (int)getPowerAssertionCountForIdentifierDomain:(id)domain;
+ (void)_disablePowerAssertion:(id)assertion forAppendedDomain:(id)domain;
+ (void)_enablePowerAssertion:(id)assertion forAppendedDomain:(id)domain;
+ (void)setPowerAssertion:(BOOL)assertion forIdentifierDomain:(id)domain;
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
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    commonDomain = [mEMORY[0x277D643F8] commonDomain];
    v6 = [v3 initWithFormat:@"%@.%@", commonDomain, @"core.power.assertion"];

    uTF8String = [v6 UTF8String];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create(uTF8String, v8);
    assertionQueue = v2->_assertionQueue;
    v2->_assertionQueue = v9;

    if (v2->_assertionQueue)
    {
      mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
      oslog = [mEMORY[0x277D64460] oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v20 = v6;
        _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[POWER_ASSERTION] DISPATCH: created dispatch queue domain(%{public}@)", buf, 0xCu);
      }
    }

    else
    {
      oslog = [MEMORY[0x277D64428] sharedDiag];
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unable to create dispatch queue domain(%@)", v6];
      [oslog trackError:@"[POWER_ASSERTION]" forReason:v13 withResult:8100 withError:0];
    }

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activePowerAssertions = v2->_activePowerAssertions;
    v2->_activePowerAssertions = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (void)setPowerAssertion:(BOOL)assertion forIdentifierDomain:(id)domain
{
  assertionCopy = assertion;
  domainCopy = domain;
  v6 = +[SUCorePower sharedPowerManager];
  if (v6)
  {
    v7 = [MEMORY[0x277D643F8] sharedSUCoreDomainAppending:domainCopy];
    assertionQueue = [v6 assertionQueue];
    dispatch_assert_queue_not_V2(assertionQueue);

    assertionQueue2 = [v6 assertionQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__SUCorePower_setPowerAssertion_forIdentifierDomain___block_invoke;
    block[3] = &unk_27892E040;
    v18 = assertionCopy;
    v16 = v6;
    v17 = v7;
    v10 = v7;
    dispatch_sync(assertionQueue2, block);
  }

  else
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v13 = @"disable";
    if (assertionCopy)
    {
      v13 = @"enable";
    }

    domainCopy = [v12 initWithFormat:@"no shared power manager - unable to %@ power assertion for domain(%@)", v13, domainCopy];
    [mEMORY[0x277D64428] trackError:@"[POWER_ASSERTION]" forReason:domainCopy withResult:8101 withError:0];
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

+ (int)getPowerAssertionCountForIdentifierDomain:(id)domain
{
  domainCopy = domain;
  v4 = +[SUCorePower sharedPowerManager];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (v4)
  {
    v5 = [MEMORY[0x277D643F8] sharedSUCoreDomainAppending:domainCopy];
    assertionQueue = [v4 assertionQueue];
    dispatch_assert_queue_not_V2(assertionQueue);

    assertionQueue2 = [v4 assertionQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__SUCorePower_getPowerAssertionCountForIdentifierDomain___block_invoke;
    block[3] = &unk_27892D520;
    v13 = v4;
    v14 = v5;
    v15 = &v16;
    mEMORY[0x277D64428] = v5;
    dispatch_sync(assertionQueue2, block);

    domainCopy = v13;
  }

  else
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    domainCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"no shared power manager - unable to get power assertion count for domain(%@)", domainCopy];
    [mEMORY[0x277D64428] trackError:@"[POWER_ASSERTION]" forReason:domainCopy withResult:8101 withError:0];
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

+ (void)_enablePowerAssertion:(id)assertion forAppendedDomain:(id)domain
{
  v26 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  domainCopy = domain;
  assertionQueue = [assertionCopy assertionQueue];
  dispatch_assert_queue_V2(assertionQueue);

  activePowerAssertions = [assertionCopy activePowerAssertions];
  mEMORY[0x277D64428] = [activePowerAssertions safeObjectForKey:domainCopy ofClass:objc_opt_class()];

  if (!mEMORY[0x277D64428])
  {
    v13 = objc_alloc_init(SUCorePowerAssertion);
    if (!v13)
    {
      mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
      domainCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unable to create SUCorePowerAssertion object for domain(%@)", domainCopy];
      [mEMORY[0x277D64428] trackError:@"[POWER_ASSERTION]" forReason:domainCopy withResult:8100 withError:0];
      goto LABEL_11;
    }

    mEMORY[0x277D64428] = v13;
    AssertionID = -1;
    v14 = IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, domainCopy, &AssertionID);
    if (v14)
    {
      v15 = v14;
      domainCopy = [MEMORY[0x277D64428] sharedDiag];
      domainCopy2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unable to create IOKit Power Assertion for domain(%@)", domainCopy];
      [domainCopy trackError:@"[POWER_ASSERTION]" forReason:domainCopy2 withResult:v15 withError:0];

      goto LABEL_11;
    }

    [mEMORY[0x277D64428] setActiveAssertionCount:{objc_msgSend(mEMORY[0x277D64428], "activeAssertionCount") + 1}];
    [mEMORY[0x277D64428] setAssertionID:AssertionID];
    activePowerAssertions2 = [assertionCopy activePowerAssertions];
    [activePowerAssertions2 setSafeObject:mEMORY[0x277D64428] forKey:domainCopy];

    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    domainCopy = [mEMORY[0x277D64460] oslog];

    if (!os_log_type_enabled(domainCopy, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    activeAssertionCount = [mEMORY[0x277D64428] activeAssertionCount];
    *buf = 67109378;
    activeAssertionCount2 = activeAssertionCount;
    v24 = 2114;
    v25 = domainCopy;
    v12 = "[POWER_ASSERTION] ENABLED(count=%d) for domain(%{public}@)";
    goto LABEL_4;
  }

  [mEMORY[0x277D64428] setActiveAssertionCount:{objc_msgSend(mEMORY[0x277D64428], "activeAssertionCount") + 1}];
  mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
  domainCopy = [mEMORY[0x277D64460]2 oslog];

  if (os_log_type_enabled(domainCopy, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    activeAssertionCount2 = [mEMORY[0x277D64428] activeAssertionCount];
    v24 = 2114;
    v25 = domainCopy;
    v12 = "[POWER_ASSERTION] INCREASED(count=%d) for domain(%{public}@)";
LABEL_4:
    _os_log_impl(&dword_23193C000, domainCopy, OS_LOG_TYPE_DEFAULT, v12, buf, 0x12u);
  }

LABEL_11:

  v20 = *MEMORY[0x277D85DE8];
}

+ (void)_disablePowerAssertion:(id)assertion forAppendedDomain:(id)domain
{
  v25 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  domainCopy = domain;
  assertionQueue = [assertionCopy assertionQueue];
  dispatch_assert_queue_V2(assertionQueue);

  activePowerAssertions = [assertionCopy activePowerAssertions];
  v9 = [activePowerAssertions safeObjectForKey:domainCopy ofClass:objc_opt_class()];

  if (!v9)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    domainCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"disabling power assertion when no assertion is active for domain(%@)", domainCopy];
    [mEMORY[0x277D64428] trackError:@"[POWER_ASSERTION]" forReason:domainCopy withResult:8101 withError:0];

    goto LABEL_7;
  }

  [v9 setActiveAssertionCount:{objc_msgSend(v9, "activeAssertionCount") - 1}];
  if ([v9 activeAssertionCount] <= 0)
  {
    v15 = IOPMAssertionRelease([v9 assertionID]);
    if (v15)
    {
      v16 = v15;
      mEMORY[0x277D64428]2 = [MEMORY[0x277D64428] sharedDiag];
      domainCopy2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unable to release IOKit Power Assertion for domain(%@)", domainCopy];
      [mEMORY[0x277D64428]2 trackError:@"[POWER_ASSERTION]" forReason:domainCopy2 withResult:v16 withError:0];

      goto LABEL_8;
    }

    activePowerAssertions2 = [assertionCopy activePowerAssertions];
    [activePowerAssertions2 removeObjectForKey:domainCopy];

    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    mEMORY[0x277D64428] = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(mEMORY[0x277D64428], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      activeAssertionCount = [v9 activeAssertionCount];
      v23 = 2114;
      v24 = domainCopy;
      v12 = "[POWER_ASSERTION] DISABLED(count=%d) for domain(%{public}@)";
      goto LABEL_5;
    }
  }

  else
  {
    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    mEMORY[0x277D64428] = [mEMORY[0x277D64460]2 oslog];

    if (os_log_type_enabled(mEMORY[0x277D64428], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      activeAssertionCount = [v9 activeAssertionCount];
      v23 = 2114;
      v24 = domainCopy;
      v12 = "[POWER_ASSERTION] DECREASED(count=%d) for domain(%{public}@)";
LABEL_5:
      _os_log_impl(&dword_23193C000, mEMORY[0x277D64428], OS_LOG_TYPE_DEFAULT, v12, buf, 0x12u);
    }
  }

LABEL_7:

LABEL_8:
  v14 = *MEMORY[0x277D85DE8];
}

@end