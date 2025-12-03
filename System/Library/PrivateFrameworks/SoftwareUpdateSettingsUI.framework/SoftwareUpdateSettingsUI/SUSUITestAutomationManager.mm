@interface SUSUITestAutomationManager
+ (id)sharedManager;
- (BOOL)enabled;
- (SUSUITestAutomationManager)init;
- (id)description;
- (void)addResponderDelegate:(id)delegate forServiceType:(int64_t)type;
- (void)dealloc;
- (void)initialize;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)resolveStoredXCUISession:(id)session;
- (void)setupAutomaticTestingForStoredSession:(id)session;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation SUSUITestAutomationManager

+ (id)sharedManager
{
  selfCopy = self;
  v10 = a2;
  obj = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __43__SUSUITestAutomationManager_sharedManager__block_invoke;
  v8 = &__block_descriptor_40_e5_v8__0l;
  selfCopy2 = self;
  v13 = &sharedManager_onceToken_0;
  location = 0;
  objc_storeStrong(&location, &obj);
  if (*v13 != -1)
  {
    dispatch_once(v13, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedManager_sharedManager;

  return v2;
}

uint64_t __43__SUSUITestAutomationManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedManager_sharedManager;
  sharedManager_sharedManager = v1;
  return MEMORY[0x277D82BD8](v2);
}

- (SUSUITestAutomationManager)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = SUSUITestAutomationManager;
  v6 = [(SUSUITestAutomationManager *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    objc_storeStrong(&v6->_currentSession, 0);
    [(SUSUITestAutomationManager *)v6 startObserving];
  }

  v3 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (void)initialize
{
  v10 = *MEMORY[0x277D85DE8];
  v8[2] = self;
  v8[1] = a2;
  v8[0] = _SUSUILoggingFacility();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v8[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v8[0];
    type = v7;
    v2 = objc_opt_class();
    v5 = NSStringFromClass(v2);
    v6 = MEMORY[0x277D82BE0](v5);
    __os_log_helper_16_2_2_8_32_8_64(v9, "[SUSUITestAutomationManager initialize]", v6);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Initializing %@", v9, 0x16u);
    MEMORY[0x277D82BD8](v5);
    objc_storeStrong(&v6, 0);
  }

  objc_storeStrong(v8, 0);
  *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  if (self->_observing)
  {
    [(SUSUITestAutomationManager *)selfCopy stopObserving];
  }

  v2.receiver = selfCopy;
  v2.super_class = SUSUITestAutomationManager;
  [(SUSUITestAutomationManager *)&v2 dealloc];
}

- (id)description
{
  v6 = MEMORY[0x277CCACA8];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v7 = v3;
  v4 = @"YES";
  if (!self->_currentSession)
  {
    v4 = @"NO";
  }

  v8 = [v6 stringWithFormat:@"<%@: %p, automationEnabled: %@>", v3, self, v4];
  MEMORY[0x277D82BD8](v7);

  return v8;
}

- (void)startObserving
{
  v14 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[3] = a2;
  if (self->_observing)
  {
    [(SUSUITestAutomationManager *)selfCopy stopObserving];
  }

  obj = MEMORY[0x277D82BE0](selfCopy);
  objc_sync_enter(obj);
  selfCopy->_observing = 1;
  if ((os_variant_has_internal_content() & 1) != 0 && SoftwareUpdateSettingsMockingKitLibraryCore_0(0))
  {
    v6 = objc_alloc(MEMORY[0x277CBEBD0]);
    softwareUpdateSettingsSuiteName = [getSUSUIUserDefaultsKeysClass_0() SoftwareUpdateSettingsSuiteName];
    v5 = [v6 initWithSuiteName:?];
    uIUnitTestingCurrentSession = [getSUSUIUserDefaultsKeysClass_0() UIUnitTestingCurrentSession];
    [v5 addObserver:selfCopy forKeyPath:? options:? context:?];
    MEMORY[0x277D82BD8](uIUnitTestingCurrentSession);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](softwareUpdateSettingsSuiteName);
    location[0] = _SUSUILoggingFacility();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      if ([(SUSUITestAutomationManager *)selfCopy enabled])
      {
        v2 = @"YES";
      }

      else
      {
        v2 = @"NO";
      }

      __os_log_helper_16_2_2_8_32_8_64(v13, "[SUSUITestAutomationManager startObserving]", v2);
      _os_log_impl(&dword_26AC94000, location[0], v9, "%s: Start to observe for Unit Testing requests.\nNSUserDefaults Automation enabled? %@", v13, 0x16u);
    }

    objc_storeStrong(location, 0);
  }

  else
  {
    v8 = _SUSUILoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v12, "[SUSUITestAutomationManager startObserving]");
      _os_log_error_impl(&dword_26AC94000, v8, OS_LOG_TYPE_ERROR, "%s: SUSUITestAutomationManager exists in Production. Auto-disables.", v12, 0xCu);
    }

    objc_storeStrong(&v8, 0);
  }

  objc_sync_exit(obj);
  MEMORY[0x277D82BD8](obj);
  *MEMORY[0x277D85DE8];
}

- (void)stopObserving
{
  v11 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v8 = a2;
  v5 = MEMORY[0x277D82BE0](self);
  objc_sync_enter(v5);
  if (selfCopy->_observing)
  {
    location = _SUSUILoggingFacility();
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v10, "[SUSUITestAutomationManager stopObserving]");
      _os_log_impl(&dword_26AC94000, location, OS_LOG_TYPE_DEFAULT, "%s: Stops observing for Unit Testing requests.", v10, 0xCu);
    }

    objc_storeStrong(&location, 0);
    selfCopy->_observing = 0;
    if ((os_variant_has_internal_content() & 1) != 0 && SoftwareUpdateSettingsMockingKitLibraryCore_0(0))
    {
      softwareUpdateShared = [MEMORY[0x277CBEBD0] softwareUpdateShared];
      v4 = selfCopy;
      uIUnitTestingCurrentSession = [getSUSUIUserDefaultsKeysClass_0() UIUnitTestingCurrentSession];
      [softwareUpdateShared removeObserver:v4 forKeyPath:?];
      MEMORY[0x277D82BD8](uIUnitTestingCurrentSession);
      MEMORY[0x277D82BD8](softwareUpdateShared);
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  objc_sync_exit(v5);
  MEMORY[0x277D82BD8](v5);
  *MEMORY[0x277D85DE8];
}

- (BOOL)enabled
{
  v3 = 0;
  if (self->_currentSession)
  {
    return SoftwareUpdateSettingsMockingKitLibraryCore_0(0) != 0;
  }

  return v3;
}

- (void)addResponderDelegate:(id)delegate forServiceType:(int64_t)type
{
  v60 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  typeCopy = type;
  v33 = +[SUSUITestAutomationManager sharedManager];
  enabled = [v33 enabled];
  MEMORY[0x277D82BD8](v33);
  if (enabled)
  {
    currentSession = [(SUSUITestAutomationManager *)selfCopy currentSession];
    v51 = [(SUSUIUserDefaultsBasedTestSession *)currentSession strategyForServiceType:typeCopy];
    MEMORY[0x277D82BD8](currentSession);
    if (v51)
    {
      currentSession2 = [(SUSUITestAutomationManager *)selfCopy currentSession];
      v47 = [(SUSUIUserDefaultsBasedTestSession *)currentSession2 strategyClassForServiceType:typeCopy];
      MEMORY[0x277D82BD8](currentSession2);
      if (v47)
      {
        if (objc_opt_respondsToSelector() & 1) == 0 || (v21 = location[0], v22 = -[objc_class responderDelegateProtocol](v47, "responderDelegateProtocol"), v23 = [v21 conformsToProtocol:?], MEMORY[0x277D82BD8](v22), (v23))
        {
          oslog = _SUSUIInternalLoggingFacility();
          v37 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            v7 = oslog;
            v8 = v37;
            v12 = +[SUSUITestAutomationManager sharedManager];
            currentSession3 = [v12 currentSession];
            correlationId = [currentSession3 correlationId];
            v5 = MEMORY[0x277D82BE0](correlationId);
            v36 = v5;
            v6 = location[0];
            v9 = NSStringFromClass(v47);
            v35 = MEMORY[0x277D82BE0](v9);
            __os_log_helper_16_2_3_8_64_8_64_8_64(v56, v5, v6, v35);
            _os_log_impl(&dword_26AC94000, v7, v8, "[XCUI correlationId: %@] Adding a XCUI responder delegate '%@' as a listener to strategy: %@", v56, 0x20u);
            MEMORY[0x277D82BD8](v9);
            MEMORY[0x277D82BD8](correlationId);
            MEMORY[0x277D82BD8](currentSession3);
            MEMORY[0x277D82BD8](v12);
            objc_storeStrong(&v35, 0);
            objc_storeStrong(&v36, 0);
          }

          objc_storeStrong(&oslog, 0);
          [v51 addResponderDelegate:location[0]];
          v52 = 0;
        }

        else
        {
          v43 = _SUSUILoggingFacility();
          v42 = 16;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v15 = v43;
            v16 = v42;
            v4 = objc_opt_class();
            v20 = NSStringFromClass(v4);
            v13 = MEMORY[0x277D82BE0](v20);
            v41 = v13;
            v19 = NSStringFromClass(v47);
            v14 = MEMORY[0x277D82BE0](v19);
            v40 = v14;
            responderDelegateProtocol = [(objc_class *)v47 responderDelegateProtocol];
            v17 = NSStringFromProtocol(responderDelegateProtocol);
            v39 = MEMORY[0x277D82BE0](v17);
            __os_log_helper_16_2_3_8_64_8_64_8_64(v57, v13, v14, v39);
            _os_log_error_impl(&dword_26AC94000, v15, v16, "Could not register a new responder, of type '%@', for the strategy class '%@'. The responder class does not implement the required protocol '%@.", v57, 0x20u);
            MEMORY[0x277D82BD8](v17);
            MEMORY[0x277D82BD8](responderDelegateProtocol);
            MEMORY[0x277D82BD8](v19);
            MEMORY[0x277D82BD8](v20);
            objc_storeStrong(&v39, 0);
            objc_storeStrong(&v40, 0);
            objc_storeStrong(&v41, 0);
          }

          objc_storeStrong(&v43, 0);
          v52 = 1;
        }
      }

      else
      {
        v46 = _SUSUILoggingFacility();
        v45 = 16;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v24 = v46;
          v25 = v45;
          v26 = [getSUSMKMockedServiceTypeUtilityClass_0() descriptionForType:typeCopy];
          v44 = MEMORY[0x277D82BE0](v26);
          __os_log_helper_16_2_1_8_64(v58, v44);
          _os_log_error_impl(&dword_26AC94000, v24, v25, "Could not find any registered strategy class for service type: %@", v58, 0xCu);
          MEMORY[0x277D82BD8](v26);
          objc_storeStrong(&v44, 0);
        }

        objc_storeStrong(&v46, 0);
        v52 = 1;
      }
    }

    else
    {
      v50 = _SUSUILoggingFacility();
      v49 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        log = v50;
        type = v49;
        v30 = [getSUSMKMockedServiceTypeUtilityClass_0() descriptionForType:typeCopy];
        v48 = MEMORY[0x277D82BE0](v30);
        __os_log_helper_16_2_1_8_64(v59, v48);
        _os_log_impl(&dword_26AC94000, log, type, "The service type '%@' was not included in the test plan and thus no strategy was assigned.", v59, 0xCu);
        MEMORY[0x277D82BD8](v30);
        objc_storeStrong(&v48, 0);
      }

      objc_storeStrong(&v50, 0);
      v52 = 1;
    }

    objc_storeStrong(&v51, 0);
  }

  else
  {
    v52 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  v14 = 0;
  objc_storeStrong(&v14, object);
  v13 = 0;
  objc_storeStrong(&v13, change);
  NSLog(&cfstr_SChangedProper.isa, "[SUSUITestAutomationManager observeValueForKeyPath:ofObject:change:context:]", v14, location[0], v13);
  v10 = location[0];
  uIUnitTestingCurrentSession = [getSUSUIUserDefaultsKeysClass_0() UIUnitTestingCurrentSession];
  v12 = [v10 isEqualToString:?];
  MEMORY[0x277D82BD8](uIUnitTestingCurrentSession);
  if (v12)
  {
    v6 = selfCopy;
    v7 = [v13 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    [(SUSUITestAutomationManager *)v6 resolveStoredXCUISession:?];
    MEMORY[0x277D82BD8](v7);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)resolveStoredXCUISession:(id)session
{
  v42 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v33 = 0;
  v18 = 1;
  if (location[0])
  {
    v17 = location[0];
    null = [MEMORY[0x277CBEB68] null];
    v33 = 1;
    v18 = [v17 isEqual:?];
  }

  if (v33)
  {
    MEMORY[0x277D82BD8](null);
  }

  if ((v18 & 1) == 0)
  {
    v31 = 0;
    v15 = MEMORY[0x277CCAAC8];
    getSUSMKUserDefaultsCodedTestCaseSessionClass();
    v3 = objc_opt_class();
    obj = v31;
    v16 = [v15 unarchivedObjectOfClass:v3 fromData:location[0] error:&obj];
    objc_storeStrong(&v31, obj);
    v30 = v16;
    if (!v16 || v31)
    {
      oslog = _SUSUILoggingFacility();
      type = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v41, v31);
        _os_log_impl(&dword_26AC94000, oslog, type, "Could not decode the saved UT session into an SUSMKUserDefaultsCodedTestCaseSession object. Error: %@", v41, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      [(SUSUITestAutomationManager *)selfCopy setupAutomaticTestingForStoredSession:0];
      v32 = 1;
LABEL_32:
      objc_storeStrong(&v30, 0);
      objc_storeStrong(&v31, 0);
      goto LABEL_33;
    }

    mEMORY[0x277D64AE0] = [MEMORY[0x277D64AE0] sharedDefaults];
    shouldKeepPreviousMockingKitSession = [mEMORY[0x277D64AE0] shouldKeepPreviousMockingKitSession];
    MEMORY[0x277D82BD8](mEMORY[0x277D64AE0]);
    if ((shouldKeepPreviousMockingKitSession & 1) == 0)
    {
      if (([MEMORY[0x277CCAC38] isRunning:{objc_msgSend(v30, "processId")}] & 1) == 0)
      {
        mEMORY[0x277D64AE0]2 = [MEMORY[0x277D64AE0] sharedDefaults];
        shouldSkipMockingKitPIDValidation = [mEMORY[0x277D64AE0]2 shouldSkipMockingKitPIDValidation];
        MEMORY[0x277D82BD8](mEMORY[0x277D64AE0]2);
        if ((shouldSkipMockingKitPIDValidation & 1) == 0)
        {
          v26 = _SUSUILoggingFacility();
          v25 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            __os_log_helper_16_2_2_8_32_4_0(v40, "-[SUSUITestAutomationManager resolveStoredXCUISession:]", [v30 processId]);
            _os_log_impl(&dword_26AC94000, v26, v25, "%s: Found a UTs session stored in NSUserDefaults. However, the process '%d' isn't running anymore. Killing the session.", v40, 0x12u);
          }

          objc_storeStrong(&v26, 0);
          [(SUSUITestAutomationManager *)selfCopy setupAutomaticTestingForStoredSession:0];
          v32 = 1;
          goto LABEL_32;
        }

        v24 = _SUSUILoggingFacility();
        v23 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_2_8_32_4_0(v39, "-[SUSUITestAutomationManager resolveStoredXCUISession:]", [v30 processId]);
          _os_log_impl(&dword_26AC94000, v24, v23, "%s: Found a UTs session stored in NSUserDefaults. However, the process '%d' isn't running anymore. As SUSkipMockingKitPIDValidation is on - we will continue to use the test plan with this, incorrect, PID.", v39, 0x12u);
        }

        objc_storeStrong(&v24, 0);
      }

      v22 = [MEMORY[0x277CCAC38] processStartTime:{objc_msgSend(v30, "processId")}];
      if (v22 != [v30 processStartTime])
      {
        mEMORY[0x277D64AE0]3 = [MEMORY[0x277D64AE0] sharedDefaults];
        shouldSkipMockingKitPIDValidation2 = [mEMORY[0x277D64AE0]3 shouldSkipMockingKitPIDValidation];
        MEMORY[0x277D82BD8](mEMORY[0x277D64AE0]3);
        if ((shouldSkipMockingKitPIDValidation2 & 1) == 0)
        {
          v21 = _SUSUILoggingFacility();
          v20 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            processId = [v30 processId];
            __os_log_helper_16_2_4_8_32_8_0_8_0_8_0(v38, "-[SUSUITestAutomationManager resolveStoredXCUISession:]", processId, [v30 processStartTime], v22);
            _os_log_impl(&dword_26AC94000, v21, v20, "%s: Found a UTs session stored in NSUserDefaults. However, the session stored process start time for pid %ld, %ld, different than the start time of the current process with this pid, %ld. Killing the session.", v38, 0x2Au);
          }

          objc_storeStrong(&v21, 0);
          [(SUSUITestAutomationManager *)selfCopy setupAutomaticTestingForStoredSession:0];
          v32 = 1;
          goto LABEL_32;
        }

        v19 = _SUSUILoggingFacility();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          processId2 = [v30 processId];
          __os_log_helper_16_2_4_8_32_8_0_8_0_8_0(v37, "-[SUSUITestAutomationManager resolveStoredXCUISession:]", processId2, [v30 processStartTime], v22);
          _os_log_impl(&dword_26AC94000, v19, OS_LOG_TYPE_DEFAULT, "%s: Found a UTs session stored in NSUserDefaults. However, the session stored process start time for pid %ld, %ld, different than the start time of the current process with this pid, %ld. As SUSkipMockingKitPIDValidation is on - we will continue to use the test plan with this, corrupted, PID.", v37, 0x2Au);
        }

        objc_storeStrong(&v19, 0);
      }
    }

    mEMORY[0x277D64AE0]4 = [MEMORY[0x277D64AE0] sharedDefaults];
    shouldSkipMockingKitPIDValidation3 = [mEMORY[0x277D64AE0]4 shouldSkipMockingKitPIDValidation];
    MEMORY[0x277D82BD8](mEMORY[0x277D64AE0]4);
    if (shouldSkipMockingKitPIDValidation3)
    {
      mEMORY[0x277D64AE0]5 = [MEMORY[0x277D64AE0] sharedDefaults];
      [mEMORY[0x277D64AE0]5 shouldSkipMockingKitPIDValidation:0];
      MEMORY[0x277D82BD8](mEMORY[0x277D64AE0]5);
    }

    [(SUSUITestAutomationManager *)selfCopy setupAutomaticTestingForStoredSession:v30];
    v32 = 0;
    goto LABEL_32;
  }

  [(SUSUITestAutomationManager *)selfCopy setupAutomaticTestingForStoredSession:0];
  v32 = 1;
LABEL_33:
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)setupAutomaticTestingForStoredSession:(id)session
{
  v33 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v19 = +[SUSUIServiceManager sharedInstance];
  [(SUSUIServiceManager *)v19 reset];
  MEMORY[0x277D82BD8](v19);
  if (location[0])
  {
    v27 = _SUSUILoggingFacility();
    v26 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v32, "[SUSUITestAutomationManager setupAutomaticTestingForStoredSession:]");
      _os_log_impl(&dword_26AC94000, v27, v26, "%s: In unit testing mode, registering mocks third-party services", v32, 0xCu);
    }

    objc_storeStrong(&v27, 0);
    v18 = +[SUSUIServiceManager sharedInstance];
    [(SUSUIServiceManager *)v18 registerMockClasses];
    MEMORY[0x277D82BD8](v18);
    v25 = _SUSUILoggingFacility();
    v24 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v25;
      v16 = v24;
      v3 = objc_opt_class();
      v14 = MEMORY[0x277D82BE0](v3);
      v23 = v14;
      correlationId = [location[0] correlationId];
      v22 = MEMORY[0x277D82BE0](correlationId);
      __os_log_helper_16_2_3_8_32_8_64_8_64(v31, "[SUSUITestAutomationManager setupAutomaticTestingForStoredSession:]", v14, v22);
      _os_log_impl(&dword_26AC94000, v15, v16, "%s: XCUI Automation is enabled. Setting up the XCUI communication client using: %@ for test session: %@", v31, 0x20u);
      MEMORY[0x277D82BD8](correlationId);
      objc_storeStrong(&v22, 0);
      objc_storeStrong(&v23, 0);
    }

    objc_storeStrong(&v25, 0);
    v4 = [SUSUIUserDefaultsBasedTestSession alloc];
    v5 = [(SUSUIUserDefaultsBasedTestSession *)v4 initWithStoredSession:location[0]];
    currentSession = selfCopy->_currentSession;
    selfCopy->_currentSession = v5;
    MEMORY[0x277D82BD8](currentSession);
  }

  else
  {
    memset(__b, 0, sizeof(__b));
    uIUnitTestingKeys = [getSUSUIUserDefaultsKeysClass_0() UIUnitTestingKeys];
    v13 = [uIUnitTestingKeys countByEnumeratingWithState:__b objects:v30 count:16];
    if (v13)
    {
      v9 = *__b[2];
      v10 = 0;
      v11 = v13;
      while (1)
      {
        v8 = v10;
        if (*__b[2] != v9)
        {
          objc_enumerationMutation(uIUnitTestingKeys);
        }

        v21 = *(__b[1] + 8 * v10);
        softwareUpdateShared = [MEMORY[0x277CBEBD0] softwareUpdateShared];
        [softwareUpdateShared removeObjectForKey:v21];
        MEMORY[0x277D82BD8](softwareUpdateShared);
        ++v10;
        if (v8 + 1 >= v11)
        {
          v10 = 0;
          v11 = [uIUnitTestingKeys countByEnumeratingWithState:__b objects:v30 count:16];
          if (!v11)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](uIUnitTestingKeys);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

@end