@interface RERelevanceEngineDiagnosticRegistration
- (id)_allProcesses;
- (id)_defaultRegistrationDirectory;
- (id)_init;
- (id)_processesFileURL;
- (void)_accessEngineDataForProcess:(id)process usingBlock:(id)block;
- (void)_allProcesses;
- (void)checkinEngine:(id)engine;
- (void)enumerateAvailableEngines:(id)engines;
@end

@implementation RERelevanceEngineDiagnosticRegistration

- (id)_init
{
  v6.receiver = self;
  v6.super_class = RERelevanceEngineDiagnosticRegistration;
  _init = [(RESingleton *)&v6 _init];
  if (_init)
  {
    if (_fetchedInternalBuildOnceToken_8 != -1)
    {
      [RERelevanceEngineDiagnosticRegistration _init];
    }

    if (_isInternalDevice_8)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      _defaultRegistrationDirectory = [_init _defaultRegistrationDirectory];
      _init[8] = [defaultManager fileExistsAtPath:_defaultRegistrationDirectory];
    }

    else
    {
      _init[8] = 0;
    }
  }

  return _init;
}

uint64_t __48__RERelevanceEngineDiagnosticRegistration__init__block_invoke()
{
  result = _REGetIsInternalBuild();
  _isInternalDevice_8 = result;
  return result;
}

- (id)_defaultRegistrationDirectory
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__RERelevanceEngineDiagnosticRegistration__defaultRegistrationDirectory__block_invoke;
  block[3] = &unk_2785F9AB8;
  v4 = @"/private/var/mobile/Library/RelevanceEngine/Registration/";
  if (_defaultRegistrationDirectory_onceToken != -1)
  {
    dispatch_once(&_defaultRegistrationDirectory_onceToken, block);
  }

  return @"/private/var/mobile/Library/RelevanceEngine/Registration/";
}

void __72__RERelevanceEngineDiagnosticRegistration__defaultRegistrationDirectory__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = *(a1 + 32);
  v4 = 0;
  [v2 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v4];
}

- (id)_processesFileURL
{
  _defaultRegistrationDirectory = [(RERelevanceEngineDiagnosticRegistration *)self _defaultRegistrationDirectory];
  v3 = [_defaultRegistrationDirectory stringByAppendingPathComponent:@"Processes.dat"];

  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];

  return v4;
}

- (id)_allProcesses
{
  if (self->_supportsRegistration)
  {
    v2 = MEMORY[0x277CBEA60];
    _processesFileURL = [(RERelevanceEngineDiagnosticRegistration *)self _processesFileURL];
    v8 = 0;
    v4 = [v2 arrayWithContentsOfURL:_processesFileURL error:&v8];
    v5 = v8;

    if (!v4)
    {
      v6 = RELogForDomain(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(RERelevanceEngineDiagnosticRegistration *)v5 _allProcesses];
      }

      v4 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (void)_accessEngineDataForProcess:(id)process usingBlock:(id)block
{
  v62 = *MEMORY[0x277D85DE8];
  processCopy = process;
  blockCopy = block;
  v8 = blockCopy;
  if (!blockCopy || !self->_supportsRegistration)
  {
    goto LABEL_36;
  }

  v47 = blockCopy;
  _defaultRegistrationDirectory = [(RERelevanceEngineDiagnosticRegistration *)self _defaultRegistrationDirectory];
  v10 = [_defaultRegistrationDirectory stringByAppendingString:processCopy];

  v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];
  v12 = MEMORY[0x277CBEB58];
  selfCopy = self;
  _allProcesses = [(RERelevanceEngineDiagnosticRegistration *)self _allProcesses];
  v14 = [v12 setWithArray:_allProcesses];

  v50 = v14;
  v49 = [v14 copy];
  v60 = 0;
  dictionary = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v11 error:&v60];
  v16 = v60;
  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    v17 = RELogForDomain(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [RERelevanceEngineDiagnosticRegistration _accessEngineDataForProcess:usingBlock:];
    }
  }

  v45 = v16;
  v46 = v10;
  v48 = processCopy;
  v52 = REBuildVersion();
  date = [MEMORY[0x277CBEAA8] date];
  v19 = [dictionary mutableCopy];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = dictionary;
  v20 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v57;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v57 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v56 + 1) + 8 * i);
        v25 = [v19 objectForKeyedSubscript:v24];
        v26 = [v25 objectForKeyedSubscript:@"Version"];
        v27 = [v26 isEqualToString:v52];

        if (!v27 || ([date timeIntervalSinceDate:date], fabs(v28) > 604800.0))
        {
          [v19 removeObjectForKey:v24];
        }
      }

      v21 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v21);
  }

  v8 = v47;
  v47[2](v47, v19);
  if (![v19 count])
  {
    processCopy = v48;
    [v50 removeObject:v48];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v54 = 0;
    v30 = v11;
    v36 = [defaultManager removeItemAtURL:v11 error:&v54];
    v32 = v54;

    if (!v36)
    {
      v33 = v46;
      v34 = v49;
      v29 = v50;
      goto LABEL_29;
    }

    v37 = RELogForDomain(0);
    v33 = v46;
    v34 = v49;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [RERelevanceEngineDiagnosticRegistration _accessEngineDataForProcess:usingBlock:];
    }

    v29 = v50;
    goto LABEL_27;
  }

  v29 = v50;
  processCopy = v48;
  [v50 addObject:v48];
  v55 = 0;
  v30 = v11;
  v31 = [v19 writeToURL:v11 error:&v55];
  v32 = v55;
  if ((v31 & 1) == 0)
  {
    v37 = RELogForDomain(0);
    v33 = v46;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [RERelevanceEngineDiagnosticRegistration _accessEngineDataForProcess:usingBlock:];
    }

    v34 = v49;
LABEL_27:

    goto LABEL_29;
  }

  v33 = v46;
  v34 = v49;
LABEL_29:

  if (([v34 isEqualToSet:v29] & 1) == 0)
  {
    allObjects = [v29 allObjects];
    _processesFileURL = [(RERelevanceEngineDiagnosticRegistration *)selfCopy _processesFileURL];
    v53 = 0;
    v40 = [allObjects writeToURL:_processesFileURL error:&v53];
    v41 = v53;

    if ((v40 & 1) == 0)
    {
      v42 = RELogForDomain(0);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [RERelevanceEngineDiagnosticRegistration _accessEngineDataForProcess:v41 usingBlock:v42];
      }
    }

    v34 = v49;
    v29 = v50;
  }

LABEL_36:
  v43 = *MEMORY[0x277D85DE8];
}

- (void)checkinEngine:(id)engine
{
  engineCopy = engine;
  if (self->_supportsRegistration)
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__RERelevanceEngineDiagnosticRegistration_checkinEngine___block_invoke;
    v7[3] = &unk_2785FD460;
    v8 = engineCopy;
    [(RERelevanceEngineDiagnosticRegistration *)self _accessEngineDataForProcess:processName usingBlock:v7];
  }
}

void __57__RERelevanceEngineDiagnosticRegistration_checkinEngine___block_invoke(uint64_t a1, void *a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 name];
  v5 = REBuildVersion();
  v6 = [MEMORY[0x277CBEAA8] date];
  v9[0] = @"Version";
  v9[1] = @"Date";
  v10[0] = v5;
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v3 setObject:v7 forKeyedSubscript:v4];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)enumerateAvailableEngines:(id)engines
{
  v20 = *MEMORY[0x277D85DE8];
  enginesCopy = engines;
  if (enginesCopy && self->_supportsRegistration)
  {
    _allProcesses = [(RERelevanceEngineDiagnosticRegistration *)self _allProcesses];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [_allProcesses countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(_allProcesses);
          }

          v10 = *(*(&v15 + 1) + 8 * v9);
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __69__RERelevanceEngineDiagnosticRegistration_enumerateAvailableEngines___block_invoke;
          v13[3] = &unk_2785FD4B0;
          v11 = enginesCopy;
          v13[4] = v10;
          v14 = v11;
          [(RERelevanceEngineDiagnosticRegistration *)self _accessEngineDataForProcess:v10 usingBlock:v13];

          ++v9;
        }

        while (v7 != v9);
        v7 = [_allProcesses countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __69__RERelevanceEngineDiagnosticRegistration_enumerateAvailableEngines___block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__RERelevanceEngineDiagnosticRegistration_enumerateAvailableEngines___block_invoke_2;
  v5[3] = &unk_2785FD488;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [a2 enumerateKeysAndObjectsUsingBlock:v5];
}

- (void)_allProcesses
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_22859F000, a2, OS_LOG_TYPE_ERROR, "Unable to read registration list: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_accessEngineDataForProcess:usingBlock:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_5(&dword_22859F000, v0, v1, "Unable to read process %@ registration data: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_accessEngineDataForProcess:usingBlock:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_5(&dword_22859F000, v0, v1, "Unable to write process %@ registration data: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_accessEngineDataForProcess:usingBlock:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_5(&dword_22859F000, v0, v1, "Unable to remove process %@ registration data: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_accessEngineDataForProcess:(uint64_t)a1 usingBlock:(NSObject *)a2 .cold.4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22859F000, a2, OS_LOG_TYPE_ERROR, "Unable to write registration list: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end