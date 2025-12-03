@interface SimpleSyndromeHandler
+ (id)configureClass:(id)class;
+ (id)objectWithName:(id)name;
+ (void)setDefaultNextStage:(id)stage;
- (BOOL)_setName:(id)name;
- (NSString)description;
- (int)configureInstance:(id)instance;
- (int)read:(id)read returnedValues:(id)values;
- (void)didReceiveSyndrome:(id)syndrome;
@end

@implementation SimpleSyndromeHandler

+ (id)objectWithName:(id)name
{
  v14 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v4 = [ConfigurationHandler objectForName:nameCopy];
  if (!v4)
  {
    v9 = objc_alloc_init(SimpleSyndromeHandler);
    v4 = v9;
    if (v9)
    {
      [(SimpleSyndromeHandler *)v9 _setName:nameCopy];
      [ConfigurationHandler setConfigurationObject:v4 forName:nameCopy];
    }

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_8:
    v4 = v4;
    v8 = v4;
    goto LABEL_9;
  }

  v5 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
  {
    v6 = nameCopy;
    v7 = v5;
    v12 = 136315138;
    uTF8String = [nameCopy UTF8String];
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Attempted reuse of name %s", &v12, 0xCu);
  }

  v8 = 0;
LABEL_9:

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)configureClass:(id)class
{
  classCopy = class;
  v5 = [classCopy objectForKey:@"SYNDROME_NAME"];
  if (v5)
  {
    v6 = [self objectWithName:v5];
    v7 = v6;
    if (v6 && ![v6 configureInstance:classCopy])
    {
      v7 = v7;
      v8 = v7;
      goto LABEL_9;
    }
  }

  else
  {
    v9 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "Called with no syndrome name", v11, 2u);
    }

    v7 = 0;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (int)configureInstance:(id)instance
{
  v52 = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  v5 = [instanceCopy objectForKey:@"SYNDROME_DAMPENING_INTERVAL"];
  v6 = v5;
  if (v5)
  {
    unsignedShortValue = [v5 unsignedShortValue];
    self->_dampeningInterval = unsignedShortValue;
    self->_dampeningStart = unsignedShortValue;
  }

  v8 = [instanceCopy objectForKey:@"SYNDROME_DAMPENING_INCREMENT"];
  v9 = v8;
  if (v8)
  {
    self->_dampeningIncrement = [v8 unsignedShortValue];
  }

  v10 = [instanceCopy objectForKey:@"SYNDROME_DAMPENING_MAX"];
  v11 = v10;
  if (v10)
  {
    self->_dampeningMax = [v10 unsignedShortValue];
  }

  v12 = [instanceCopy objectForKey:@"SYNDROME_RESET_SOURCES"];
  if (v12)
  {
    v40 = v6;
    v41 = instanceCopy;
    if (!self->_resetSources)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      resetSources = self->_resetSources;
      self->_resetSources = v13;
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v39 = v12;
    v16 = v12;
    v17 = [v16 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v44;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v44 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v43 + 1) + 8 * i);
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __43__SimpleSyndromeHandler_configureInstance___block_invoke;
          v42[3] = &unk_27898A690;
          v42[4] = self;
          v22 = [defaultCenter addObserverForName:v21 object:0 queue:0 usingBlock:{v42, v39}];
          [(NSMutableArray *)self->_resetSources addObject:v22];
        }

        v18 = [v16 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v18);
    }

    v6 = v40;
    instanceCopy = v41;
    v12 = v39;
  }

  v23 = defaultNextStageClass;
  v24 = [instanceCopy objectForKey:@"SYNDROME_HANDLER"];
  v25 = v24;
  if (v24 && (NSClassFromString(v24), v26 = objc_claimAutoreleasedReturnValue(), v23, (v23 = v26) == 0))
  {
    v33 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      v34 = v25;
      v35 = v33;
      uTF8String = [(NSString *)v25 UTF8String];
      *buf = 136315138;
      v48 = uTF8String;
      _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_ERROR, "Failure to get class for %s", buf, 0xCu);
    }

    v23 = 0;
    v32 = -1;
  }

  else
  {
    if (!self->_nextStage)
    {
      v27 = [v23 getHandlerByName:self->_syndromeName];
      nextStage = self->_nextStage;
      self->_nextStage = v27;

      v29 = evaluationLogHandle;
      if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v30 = self->_nextStage;
        syndromeName = self->_syndromeName;
        *buf = 134218242;
        v48 = v30;
        v49 = 2112;
        v50 = syndromeName;
        _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_DEBUG, "Got %p for next stage for %@", buf, 0x16u);
      }
    }

    v32 = 0;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v32;
}

void __43__SimpleSyndromeHandler_configureInstance___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__SimpleSyndromeHandler_configureInstance___block_invoke_2;
  v5[3] = &unk_27898A7D0;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

- (int)read:(id)read returnedValues:(id)values
{
  valuesCopy = values;
  syndromeName = self->_syndromeName;
  readCopy = read;
  [valuesCopy setObject:syndromeName forKey:@"GENERIC_CONFIG_TARGET"];
  v9 = [readCopy objectForKey:@"SYNDROME_DAMPENING_INTERVAL"];

  if (v9)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:self->_dampeningInterval];
    [valuesCopy setObject:v10 forKey:@"SYNDROME_DAMPENING_INTERVAL"];
  }

  return 0;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@ at %p for %@", v5, self, self->_syndromeName];

  return v6;
}

- (BOOL)_setName:(id)name
{
  nameCopy = name;
  objc_storeStrong(&self->_syndromeName, name);
  uTF8String = [nameCopy UTF8String];
  if (!uTF8String)
  {
    [WiFiTriggerHandler getHandlerByName:?];
  }

  v7 = strdup(uTF8String);
  if (!v7)
  {
    [WiFiTriggerHandler getHandlerByName:?];
  }

  self->_syndromeUTF8Name = v7;
  self->_dampeningInterval = 60;

  return 1;
}

+ (void)setDefaultNextStage:(id)stage
{
  v3 = NSClassFromString(stage);
  v4 = defaultNextStageClass;
  defaultNextStageClass = v3;

  if (!defaultNextStageClass)
  {
    v5 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "No default next stage class", v6, 2u);
    }
  }
}

- (void)didReceiveSyndrome:(id)syndrome
{
  v28 = *MEMORY[0x277D85DE8];
  syndromeCopy = syndrome;
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v7 = v6;

  dampeningInterval = self->_dampeningInterval;
  if (v7 - self->_lastReportTime >= dampeningInterval)
  {
    self->_lastReportTime = v7;
    dampeningIncrement = self->_dampeningIncrement;
    if (dampeningIncrement)
    {
      dampeningMax = dampeningIncrement + dampeningInterval;
      if (dampeningMax >= self->_dampeningMax)
      {
        dampeningMax = self->_dampeningMax;
      }

      self->_dampeningInterval = dampeningMax;
      v15 = evaluationLogHandle;
      if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v16 = self->_dampeningInterval;
        syndromeUTF8Name = self->_syndromeUTF8Name;
        v26 = 67109378;
        *v27 = v16;
        *&v27[4] = 2080;
        *&v27[6] = syndromeUTF8Name;
        _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "Set dampening to %d for syndrome %s", &v26, 0x12u);
      }
    }

    nextStage = self->_nextStage;
    if (nextStage)
    {
      [(SyndromeHandlerProtocol *)nextStage didReceiveSyndrome:syndromeCopy];
    }

    else
    {
      v19 = configurationLogHandle;
      if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
      {
        syndromeName = self->_syndromeName;
        v21 = v19;
        v22 = [(NSString *)syndromeName description];
        uTF8String = [v22 UTF8String];
        reason = [syndromeCopy reason];
        v26 = 136315394;
        *v27 = uTF8String;
        *&v27[8] = 2080;
        *&v27[10] = reason;
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, "No NEXT STAGE, Received syndrome %s triggered by %s", &v26, 0x16u);
      }
    }
  }

  else
  {
    v9 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v10 = self->_syndromeUTF8Name;
      v11 = (v7 - self->_lastReportTime);
      v12 = self->_dampeningInterval;
      v26 = 136315650;
      *v27 = v10;
      *&v27[8] = 1024;
      *&v27[10] = v11;
      *&v27[14] = 1024;
      *&v27[16] = v12;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "Ignore syndrome  %s, too close in time to previous evaluation (%d secs, need %d secs)", &v26, 0x18u);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

@end