@interface SUSUIUserDefaultsBasedTestSession
+ (id)current;
- (Class)strategyClassForServiceType:(int64_t)type;
- (NSString)correlationId;
- (SUSUIUserDefaultsBasedTestSession)init;
- (SUSUIUserDefaultsBasedTestSession)initWithStoredSession:(id)session;
- (id)strategyForServiceType:(int64_t)type;
- (int64_t)currentExecutionResult;
- (int64_t)currentPhase;
- (void)dealloc;
- (void)handleChangedPhase:(int64_t)phase;
- (void)handlePhaseConfigurationSealed;
- (void)handlePhaseFinished;
- (void)handlePhaseRunning;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation SUSUIUserDefaultsBasedTestSession

- (SUSUIUserDefaultsBasedTestSession)init
{
  v11 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v8[1] = a2;
  v8[0] = _SUSUIInternalLoggingFacility();
  v7 = 16;
  if (os_log_type_enabled(v8[0], OS_LOG_TYPE_ERROR))
  {
    log = v8[0];
    type = v7;
    correlationId = [selfCopy correlationId];
    v6 = MEMORY[0x277D82BE0](correlationId);
    __os_log_helper_16_2_1_8_64(v10, v6);
    _os_log_error_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] [SUSUIUserDefaultsBasedTestSession init] shouldn't be invoked directly.", v10, 0xCu);
    MEMORY[0x277D82BD8](correlationId);
    objc_storeStrong(&v6, 0);
  }

  objc_storeStrong(v8, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x277D85DE8];
  return 0;
}

- (SUSUIUserDefaultsBasedTestSession)initWithStoredSession:(id)session
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v3 = selfCopy;
  selfCopy = 0;
  v18.receiver = v3;
  v18.super_class = SUSUIUserDefaultsBasedTestSession;
  v17 = [(SUSUIUserDefaultsBasedTestSession *)&v18 init];
  selfCopy = v17;
  objc_storeStrong(&selfCopy, v17);
  if (v17)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    services = selfCopy->_services;
    selfCopy->_services = v4;
    MEMORY[0x277D82BD8](services);
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    servicesClasses = selfCopy->_servicesClasses;
    selfCopy->_servicesClasses = v6;
    MEMORY[0x277D82BD8](servicesClasses);
    objc_storeStrong(&selfCopy->_session, location[0]);
    if ([(SUSUIUserDefaultsBasedTestSession *)selfCopy currentPhase]> 2)
    {
      softwareUpdateShared = [MEMORY[0x277CBEBD0] softwareUpdateShared];
      uIUnitTestingCurrentPhase = [getSUSUIUserDefaultsKeysClass() UIUnitTestingCurrentPhase];
      [softwareUpdateShared setObject:&unk_287B85570 forKey:?];
      MEMORY[0x277D82BD8](uIUnitTestingCurrentPhase);
      MEMORY[0x277D82BD8](softwareUpdateShared);
    }

    v10 = objc_alloc(MEMORY[0x277CBEBD0]);
    softwareUpdateSettingsSuiteName = [getSUSUIUserDefaultsKeysClass() SoftwareUpdateSettingsSuiteName];
    v13 = [v10 initWithSuiteName:?];
    v11 = selfCopy;
    uIUnitTestingCurrentPhase2 = [getSUSUIUserDefaultsKeysClass() UIUnitTestingCurrentPhase];
    [v13 addObserver:v11 forKeyPath:? options:? context:?];
    MEMORY[0x277D82BD8](uIUnitTestingCurrentPhase2);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](softwareUpdateSettingsSuiteName);
  }

  v9 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (void)dealloc
{
  selfCopy = self;
  v5 = a2;
  softwareUpdateShared = [MEMORY[0x277CBEBD0] softwareUpdateShared];
  uIUnitTestingCurrentPhase = [getSUSUIUserDefaultsKeysClass() UIUnitTestingCurrentPhase];
  [softwareUpdateShared removeObserver:selfCopy forKeyPath:?];
  MEMORY[0x277D82BD8](uIUnitTestingCurrentPhase);
  MEMORY[0x277D82BD8](softwareUpdateShared);
  v4.receiver = selfCopy;
  v4.super_class = SUSUIUserDefaultsBasedTestSession;
  [(SUSUIUserDefaultsBasedTestSession *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v32 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  v28 = 0;
  objc_storeStrong(&v28, object);
  v27 = 0;
  objc_storeStrong(&v27, change);
  contextCopy = context;
  v15 = location[0];
  uIUnitTestingCurrentPhase = [getSUSUIUserDefaultsKeysClass() UIUnitTestingCurrentPhase];
  v17 = [v15 isEqualToString:?];
  MEMORY[0x277D82BD8](uIUnitTestingCurrentPhase);
  if (v17)
  {
    v25 = [v27 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    v23 = 0;
    v11 = 1;
    if (v25)
    {
      null = [MEMORY[0x277CBEB68] null];
      v23 = 1;
      v11 = [v25 isEqual:?];
    }

    if (v23)
    {
      MEMORY[0x277D82BD8](null);
    }

    if (v11)
    {
      v22 = _SUSUIInternalLoggingFacility();
      v21 = 16;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        log = v22;
        type = v21;
        correlationId = [(SUSUIUserDefaultsBasedTestSession *)selfCopy correlationId];
        v6 = MEMORY[0x277D82BE0](correlationId);
        v20 = v6;
        v9 = [v27 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
        __os_log_helper_16_2_2_8_64_8_64(v31, v6, v9);
        _os_log_error_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] Failed to decode the changed phase into an NSNumber. Got: %@", v31, 0x16u);
        MEMORY[0x277D82BD8](v9);
        MEMORY[0x277D82BD8](correlationId);
        objc_storeStrong(&v20, 0);
      }

      objc_storeStrong(&v22, 0);
      v19 = 1;
    }

    else
    {
      -[SUSUIUserDefaultsBasedTestSession handleChangedPhase:](selfCopy, "handleChangedPhase:", [v25 integerValue]);
      v19 = 1;
    }

    objc_storeStrong(&v25, 0);
  }

  else
  {
    v18.receiver = selfCopy;
    v18.super_class = SUSUIUserDefaultsBasedTestSession;
    [(SUSUIUserDefaultsBasedTestSession *)&v18 observeValueForKeyPath:location[0] ofObject:v28 change:v27 context:contextCopy];
    v19 = 0;
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)strategyForServiceType:(int64_t)type
{
  services = self->_services;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:type];
  v6 = [(NSMutableDictionary *)services objectForKey:?];
  MEMORY[0x277D82BD8](v5);

  return v6;
}

- (Class)strategyClassForServiceType:(int64_t)type
{
  servicesClasses = self->_servicesClasses;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:type];
  v6 = [(NSMutableDictionary *)servicesClasses objectForKey:?];
  MEMORY[0x277D82BD8](v5);

  return v6;
}

- (int64_t)currentExecutionResult
{
  softwareUpdateShared = [MEMORY[0x277CBEBD0] softwareUpdateShared];
  unitTestingCurrentTestResult = [softwareUpdateShared unitTestingCurrentTestResult];
  MEMORY[0x277D82BD8](softwareUpdateShared);
  return unitTestingCurrentTestResult;
}

- (NSString)correlationId
{
  v4 = 0;
  if (self->_session)
  {
    correlationId = [(SUSMKUserDefaultsCodedTestCaseSession *)self->_session correlationId];
    v4 = 1;
    v2 = MEMORY[0x277D82BE0](correlationId);
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](@"N/A");
  }

  v6 = v2;
  if (v4)
  {
    MEMORY[0x277D82BD8](correlationId);
  }

  return v6;
}

- (int64_t)currentPhase
{
  softwareUpdateShared = [MEMORY[0x277CBEBD0] softwareUpdateShared];
  unitTestingCurrentPhase = [softwareUpdateShared unitTestingCurrentPhase];
  MEMORY[0x277D82BD8](softwareUpdateShared);
  return unitTestingCurrentPhase;
}

+ (id)current
{
  v3 = +[SUSUITestAutomationManager sharedManager];
  currentSession = [v3 currentSession];
  MEMORY[0x277D82BD8](v3);

  return currentSession;
}

- (void)handleChangedPhase:(int64_t)phase
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v15 = a2;
  phaseCopy = phase;
  v13 = _SUSUIInternalLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    log = v13;
    type = v12;
    correlationId = [(SUSUIUserDefaultsBasedTestSession *)selfCopy correlationId];
    v5 = MEMORY[0x277D82BE0](correlationId);
    v11 = v5;
    v8 = [getSUSMKTestCaseSessionPhaseUtilityClass() descriptionForPhase:phaseCopy];
    v10 = MEMORY[0x277D82BE0](v8);
    __os_log_helper_16_2_2_8_64_8_64(v17, v5, v10);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] Changed XCUI testing session phase into: %@", v17, 0x16u);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](correlationId);
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v13, 0);
  switch(phaseCopy)
  {
    case 2:
      [(SUSUIUserDefaultsBasedTestSession *)selfCopy handlePhaseConfigurationSealed];
      [(SUSUIUserDefaultsBasedTestSession *)selfCopy handlePhaseRunning];
      break;
    case 3:
      mEMORY[0x277D64AE0] = [MEMORY[0x277D64AE0] sharedDefaults];
      shouldKeepPreviousMockingKitSession = [mEMORY[0x277D64AE0] shouldKeepPreviousMockingKitSession];
      MEMORY[0x277D82BD8](mEMORY[0x277D64AE0]);
      if (shouldKeepPreviousMockingKitSession)
      {
        [(SUSUIUserDefaultsBasedTestSession *)selfCopy handlePhaseConfigurationSealed];
      }

      [(SUSUIUserDefaultsBasedTestSession *)selfCopy handlePhaseRunning];
      break;
    case 4:
      [(SUSUIUserDefaultsBasedTestSession *)selfCopy handlePhaseFinished];
      break;
  }

  *MEMORY[0x277D85DE8];
}

- (void)handlePhaseConfigurationSealed
{
  v113 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v104[1] = a2;
  v104[0] = [getSUSMKMockedServiceTypeUtilityClass() allOptionClasses];
  softwareUpdateShared = [MEMORY[0x277CBEBD0] softwareUpdateShared];
  unitTestingRegisteredServicesDictionary = [softwareUpdateShared unitTestingRegisteredServicesDictionary];
  MEMORY[0x277D82BD8](softwareUpdateShared);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](unitTestingRegisteredServicesDictionary);
  v69 = [obj countByEnumeratingWithState:__b objects:v112 count:16];
  if (v69)
  {
    v64 = *__b[2];
    v65 = 0;
    v66 = v69;
    while (1)
    {
      v63 = v65;
      if (*__b[2] != v64)
      {
        objc_enumerationMutation(obj);
      }

      v102 = *(__b[1] + 8 * v65);
      v100 = 0;
      v2 = objc_alloc(MEMORY[0x277CBEB58]);
      v99 = [v2 initWithSet:v104[0]];
      v58 = v99;
      getSUSMKUserDefaultsCodedMockedStrategyClass();
      [v58 addObject:objc_opt_class()];
      v60 = MEMORY[0x277CCAAC8];
      v59 = v99;
      v62 = [unitTestingRegisteredServicesDictionary objectForKeyedSubscript:v102];
      v97 = v100;
      v61 = [v60 unarchivedObjectOfClasses:v59 fromData:? error:?];
      objc_storeStrong(&v100, v97);
      v98 = v61;
      MEMORY[0x277D82BD8](v62);
      if (v98 && !v100)
      {
        SUSMKMockedServiceTypeUtilityClass = getSUSMKMockedServiceTypeUtilityClass();
        mockedStrategyClassName = [v98 mockedStrategyClassName];
        v52 = [SUSMKMockedServiceTypeUtilityClass acceptibleStrategyClassName:mockedStrategyClassName forType:{objc_msgSend(v98, "mockedService")}];
        MEMORY[0x277D82BD8](mockedStrategyClassName);
        if (v52)
        {
          mockedStrategyClassName2 = [v98 mockedStrategyClassName];
          v86 = NSClassFromString(mockedStrategyClassName2);
          MEMORY[0x277D82BD8](mockedStrategyClassName2);
          if (!v86)
          {
            v85 = _SUSUIInternalLoggingFacility();
            v84 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
            {
              v37 = v85;
              v38 = v84;
              correlationId = [(SUSUIUserDefaultsBasedTestSession *)selfCopy correlationId];
              v35 = MEMORY[0x277D82BE0](correlationId);
              v83 = v35;
              mockedStrategyClassName3 = [v98 mockedStrategyClassName];
              v36 = MEMORY[0x277D82BE0](mockedStrategyClassName3);
              v82 = v36;
              v39 = [getSUSMKMockedServiceTypeUtilityClass() descriptionForType:{objc_msgSend(v102, "integerValue")}];
              v81 = MEMORY[0x277D82BE0](v39);
              __os_log_helper_16_2_3_8_64_8_64_8_64(v109, v35, v36, v81);
              _os_log_error_impl(&dword_26AC94000, v37, v38, "[XCUI correlationId: %@] Could not fetch an NSClass instance from the class name string: '%@' for type: '%@'", v109, 0x20u);
              MEMORY[0x277D82BD8](v39);
              MEMORY[0x277D82BD8](mockedStrategyClassName3);
              MEMORY[0x277D82BD8](correlationId);
              objc_storeStrong(&v81, 0);
              objc_storeStrong(&v82, 0);
              objc_storeStrong(&v83, 0);
            }

            objc_storeStrong(&v85, 0);
          }

          v27 = [v86 alloc];
          v26 = selfCopy;
          mockedStrategyOptions = [v98 mockedStrategyOptions];
          v80 = [v27 initForSession:v26 usingOptions:?];
          MEMORY[0x277D82BD8](mockedStrategyOptions);
          v29 = v80;
          services = selfCopy->_services;
          v31 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v98, "mockedService")}];
          [(NSMutableDictionary *)services setObject:v29 forKeyedSubscript:?];
          MEMORY[0x277D82BD8](v31);
          v32 = v86;
          servicesClasses = selfCopy->_servicesClasses;
          v34 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v98, "mockedService")}];
          [(NSMutableDictionary *)servicesClasses setObject:v32 forKeyedSubscript:?];
          MEMORY[0x277D82BD8](v34);
          v79 = _SUSUIInternalLoggingFacility();
          v78 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
          {
            v22 = v79;
            v23 = v78;
            correlationId2 = [(SUSUIUserDefaultsBasedTestSession *)selfCopy correlationId];
            v20 = MEMORY[0x277D82BE0](correlationId2);
            v77 = v20;
            v21 = v86;
            v24 = [getSUSMKMockedServiceTypeUtilityClass() descriptionForType:{objc_msgSend(v98, "mockedService")}];
            v76 = MEMORY[0x277D82BE0](v24);
            __os_log_helper_16_2_3_8_64_8_64_8_64(v108, v20, v21, v76);
            _os_log_impl(&dword_26AC94000, v22, v23, "[XCUI correlationId: %@] Creating mocked service class: %@ for service '%@'", v108, 0x20u);
            MEMORY[0x277D82BD8](v24);
            MEMORY[0x277D82BD8](correlationId2);
            objc_storeStrong(&v76, 0);
            objc_storeStrong(&v77, 0);
          }

          objc_storeStrong(&v79, 0);
          objc_storeStrong(&v80, 0);
          v92 = 0;
        }

        else
        {
          v91 = _SUSUIInternalLoggingFacility();
          v90 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
          {
            v45 = v91;
            v46 = v90;
            correlationId3 = [(SUSUIUserDefaultsBasedTestSession *)selfCopy correlationId];
            v43 = MEMORY[0x277D82BE0](correlationId3);
            v89 = v43;
            mockedStrategyClassName4 = [v98 mockedStrategyClassName];
            v44 = MEMORY[0x277D82BE0](mockedStrategyClassName4);
            v88 = v44;
            v47 = [getSUSMKMockedServiceTypeUtilityClass() descriptionForType:{objc_msgSend(v98, "mockedService")}];
            v87 = MEMORY[0x277D82BE0](v47);
            __os_log_helper_16_2_3_8_64_8_64_8_64(v110, v43, v44, v87);
            _os_log_error_impl(&dword_26AC94000, v45, v46, "[XCUI correlationId: %@] The supplied strategy class name '%@' for type '%@' is not acceptible. Each strategy must be manually registered in the Service Type class.", v110, 0x20u);
            MEMORY[0x277D82BD8](v47);
            MEMORY[0x277D82BD8](mockedStrategyClassName4);
            MEMORY[0x277D82BD8](correlationId3);
            objc_storeStrong(&v87, 0);
            objc_storeStrong(&v88, 0);
            objc_storeStrong(&v89, 0);
          }

          objc_storeStrong(&v91, 0);
          v92 = 3;
        }
      }

      else
      {
        oslog = _SUSUIInternalLoggingFacility();
        type = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          log = oslog;
          v55 = type;
          correlationId4 = [(SUSUIUserDefaultsBasedTestSession *)selfCopy correlationId];
          v53 = MEMORY[0x277D82BE0](correlationId4);
          v94 = v53;
          v56 = [getSUSMKMockedServiceTypeUtilityClass() descriptionForType:{objc_msgSend(v102, "integerValue")}];
          v93 = MEMORY[0x277D82BE0](v56);
          __os_log_helper_16_2_3_8_64_8_64_8_64(v111, v53, v93, v100);
          _os_log_error_impl(&dword_26AC94000, log, v55, "[XCUI correlationId: %@] Could not instantiate SUSMKUserDefaultsCodedMockedStrategy for type: '%@'.\nError: %@", v111, 0x20u);
          MEMORY[0x277D82BD8](v56);
          MEMORY[0x277D82BD8](correlationId4);
          objc_storeStrong(&v93, 0);
          objc_storeStrong(&v94, 0);
        }

        objc_storeStrong(&oslog, 0);
        v92 = 3;
      }

      objc_storeStrong(&v98, 0);
      objc_storeStrong(&v99, 0);
      objc_storeStrong(&v100, 0);
      ++v65;
      if (v63 + 1 >= v66)
      {
        v65 = 0;
        v66 = [obj countByEnumeratingWithState:__b objects:v112 count:16];
        if (!v66)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  memset(v74, 0, sizeof(v74));
  allCases = [getSUSMKMockedServiceTypeUtilityClass() allCases];
  v19 = [allCases countByEnumeratingWithState:v74 objects:v107 count:16];
  if (v19)
  {
    v15 = *v74[2];
    v16 = 0;
    v17 = v19;
    while (1)
    {
      v14 = v16;
      if (*v74[2] != v15)
      {
        objc_enumerationMutation(allCases);
      }

      v75 = *(v74[1] + 8 * v16);
      v13 = [(NSMutableDictionary *)selfCopy->_services objectForKeyedSubscript:v75];
      MEMORY[0x277D82BD8](v13);
      if (v13)
      {
        v73 = _SUSUIInternalLoggingFacility();
        v72 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v73;
          v10 = v72;
          correlationId5 = [(SUSUIUserDefaultsBasedTestSession *)selfCopy correlationId];
          v8 = MEMORY[0x277D82BE0](correlationId5);
          v71 = v8;
          v11 = [getSUSMKMockedServiceTypeUtilityClass() descriptionForType:{objc_msgSend(v75, "integerValue")}];
          v70 = MEMORY[0x277D82BE0](v11);
          __os_log_helper_16_2_2_8_64_8_64(v106, v8, v70);
          _os_log_impl(&dword_26AC94000, v9, v10, "[XCUI correlationId: %@] Registering the default implementation for service type: %@", v106, 0x16u);
          MEMORY[0x277D82BD8](v11);
          MEMORY[0x277D82BD8](correlationId5);
          objc_storeStrong(&v70, 0);
          objc_storeStrong(&v71, 0);
        }

        objc_storeStrong(&v73, 0);
        v6 = getSUSMKMockedServiceTypeUtilityClass();
        integerValue = [v75 integerValue];
        v7 = [v6 instantiateDefaultStrategyHandlerForType:integerValue withSession:selfCopy];
        [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
        MEMORY[0x277D82BD8](v7);
        v4 = [getSUSMKMockedServiceTypeUtilityClass() defaultStrategyClassHandlerForType:{objc_msgSend(v75, "integerValue")}];
        [(NSMutableDictionary *)selfCopy->_servicesClasses setObject:v4 forKeyedSubscript:v75];
      }

      ++v16;
      if (v14 + 1 >= v17)
      {
        v16 = 0;
        v17 = [allCases countByEnumeratingWithState:v74 objects:v107 count:16];
        if (!v17)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](allCases);
  softwareUpdateShared2 = [MEMORY[0x277CBEBD0] softwareUpdateShared];
  [softwareUpdateShared2 setUnitTestingCurrentPhase:3];
  MEMORY[0x277D82BD8](softwareUpdateShared2);
  objc_storeStrong(&unitTestingRegisteredServicesDictionary, 0);
  objc_storeStrong(v104, 0);
  *MEMORY[0x277D85DE8];
}

- (void)handlePhaseRunning
{
  selfCopy = self;
  v13[1] = a2;
  mEMORY[0x277D64AE0] = [MEMORY[0x277D64AE0] sharedDefaults];
  shouldKeepPreviousMockingKitSession = [mEMORY[0x277D64AE0] shouldKeepPreviousMockingKitSession];
  MEMORY[0x277D82BD8](mEMORY[0x277D64AE0]);
  if ((shouldKeepPreviousMockingKitSession & 1) != 0 && ![(NSMutableDictionary *)selfCopy->_services count])
  {
    [(SUSUIUserDefaultsBasedTestSession *)selfCopy handlePhaseConfigurationSealed];
  }

  when = dispatch_time(0, 100000000);
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __55__SUSUIUserDefaultsBasedTestSession_handlePhaseRunning__block_invoke;
  v12 = &unk_279CB93E8;
  v13[0] = MEMORY[0x277D82BE0](selfCopy);
  dispatch_after(when, queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v13, 0);
}

uint64_t __55__SUSUIUserDefaultsBasedTestSession_handlePhaseRunning__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v22 = a1;
  v21 = a1;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](*(*(a1 + 32) + 8));
  v14 = [obj countByEnumeratingWithState:__b objects:v24 count:16];
  if (v14)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v14;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(__b[1] + 8 * v10);
      oslog = _SUSUIInternalLoggingFacility();
      type = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        log = oslog;
        v5 = type;
        v7 = [*(a1 + 32) correlationId];
        v3 = MEMORY[0x277D82BE0](v7);
        v16 = v3;
        v6 = [getSUSMKMockedServiceTypeUtilityClass() descriptionForType:{objc_msgSend(v20, "integerValue")}];
        v15 = MEMORY[0x277D82BE0](v6);
        __os_log_helper_16_2_2_8_64_8_64(v23, v3, v15);
        _os_log_impl(&dword_26AC94000, log, v5, "[XCUI correlationId: %@] Sending the willBegin event to service type: %@", v23, 0x16u);
        MEMORY[0x277D82BD8](v6);
        MEMORY[0x277D82BD8](v7);
        objc_storeStrong(&v15, 0);
        objc_storeStrong(&v16, 0);
      }

      objc_storeStrong(&oslog, 0);
      v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v20];
      [v2 willBegin];
      MEMORY[0x277D82BD8](v2);
      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [obj countByEnumeratingWithState:__b objects:v24 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  result = MEMORY[0x277D82BD8](obj);
  *MEMORY[0x277D85DE8];
  return result;
}

- (void)handlePhaseFinished
{
  selfCopy = self;
  v11[1] = a2;
  when = dispatch_time(0, 100000000);
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __56__SUSUIUserDefaultsBasedTestSession_handlePhaseFinished__block_invoke;
  v10 = &unk_279CB93E8;
  v11[0] = MEMORY[0x277D82BE0](selfCopy);
  dispatch_after(when, queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v11, 0);
}

uint64_t __56__SUSUIUserDefaultsBasedTestSession_handlePhaseFinished__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v23 = a1;
  v22 = a1;
  v21 = [*(a1 + 32) currentExecutionResult];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](*(*(a1 + 32) + 8));
  v14 = [obj countByEnumeratingWithState:__b objects:v25 count:16];
  if (v14)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v14;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(__b[1] + 8 * v10);
      oslog = _SUSUIInternalLoggingFacility();
      type = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        log = oslog;
        v5 = type;
        v7 = [*(a1 + 32) correlationId];
        v3 = MEMORY[0x277D82BE0](v7);
        v16 = v3;
        v6 = [getSUSMKMockedServiceTypeUtilityClass() descriptionForType:{objc_msgSend(v20, "integerValue")}];
        v15 = MEMORY[0x277D82BE0](v6);
        __os_log_helper_16_2_2_8_64_8_64(v24, v3, v15);
        _os_log_impl(&dword_26AC94000, log, v5, "[XCUI correlationId: %@] Sending the didEnd event to service type: %@", v24, 0x16u);
        MEMORY[0x277D82BD8](v6);
        MEMORY[0x277D82BD8](v7);
        objc_storeStrong(&v15, 0);
        objc_storeStrong(&v16, 0);
      }

      objc_storeStrong(&oslog, 0);
      v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v20];
      [v2 didEndWithResult:v21];
      MEMORY[0x277D82BD8](v2);
      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [obj countByEnumeratingWithState:__b objects:v25 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  result = MEMORY[0x277D82BD8](obj);
  *MEMORY[0x277D85DE8];
  return result;
}

@end