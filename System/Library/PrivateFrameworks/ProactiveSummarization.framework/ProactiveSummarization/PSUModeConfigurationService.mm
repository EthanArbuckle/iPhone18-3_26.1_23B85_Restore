@interface PSUModeConfigurationService
- (BOOL)doesModeHaveIntelligentBreakthroughEnabled:(id)enabled;
- (PSUModeConfigurationService)init;
- (void)_updateModesWithIntelligentBreakthroughEnabled;
@end

@implementation PSUModeConfigurationService

- (void)_updateModesWithIntelligentBreakthroughEnabled
{
  v11 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  modeService = selfCopy->_modeService;
  v8 = 0;
  v4 = [(DNDModeConfigurationService *)modeService modeConfigurationsReturningError:&v8];
  v5 = v8;
  if (v4)
  {
    [(NSMutableSet *)selfCopy->_modesWithIntelligentBreakthroughEnabled removeAllObjects];
    selfCopy->_didCompleteOneSuccessfulModeConfigurationFetch = 1;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __77__PSUModeConfigurationService__updateModesWithIntelligentBreakthroughEnabled__block_invoke;
    v7[3] = &unk_278947730;
    v7[4] = selfCopy;
    [v4 enumerateKeysAndObjectsUsingBlock:v7];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v10 = v5;
    _os_log_error_impl(&dword_231CAE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not fetch mode configurations: %@", buf, 0xCu);
  }

  objc_sync_exit(selfCopy);
  v6 = *MEMORY[0x277D85DE8];
}

void __77__PSUModeConfigurationService__updateModesWithIntelligentBreakthroughEnabled__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v4 = [v10 configuration];
  v5 = [v4 allowIntelligentManagement];

  if (v5 == 2)
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = [v10 mode];
    v8 = [v7 identifier];
    v9 = [v8 UUIDString];
    [v6 addObject:v9];
  }
}

- (BOOL)doesModeHaveIntelligentBreakthroughEnabled:(id)enabled
{
  enabledCopy = enabled;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_didCompleteOneSuccessfulModeConfigurationFetch)
  {
    [(PSUModeConfigurationService *)selfCopy _updateModesWithIntelligentBreakthroughEnabled];
  }

  v6 = [(NSMutableSet *)selfCopy->_modesWithIntelligentBreakthroughEnabled containsObject:enabledCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (PSUModeConfigurationService)init
{
  v10.receiver = self;
  v10.super_class = PSUModeConfigurationService;
  v2 = [(PSUModeConfigurationService *)&v10 init];
  if (v2)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v3 = getDNDModeConfigurationServiceClass_softClass;
    v15 = getDNDModeConfigurationServiceClass_softClass;
    if (!getDNDModeConfigurationServiceClass_softClass)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __getDNDModeConfigurationServiceClass_block_invoke;
      v11[3] = &unk_278947758;
      v11[4] = &v12;
      __getDNDModeConfigurationServiceClass_block_invoke(v11);
      v3 = v13[3];
    }

    v4 = v3;
    _Block_object_dispose(&v12, 8);
    v5 = [v3 serviceForClientIdentifier:@"com.apple.proactive.summarization"];
    modeService = v2->_modeService;
    v2->_modeService = v5;

    v7 = objc_opt_new();
    modesWithIntelligentBreakthroughEnabled = v2->_modesWithIntelligentBreakthroughEnabled;
    v2->_modesWithIntelligentBreakthroughEnabled = v7;

    [(PSUModeConfigurationService *)v2 _updateModesWithIntelligentBreakthroughEnabled];
    [(DNDModeConfigurationService *)v2->_modeService addListener:v2 withCompletionHandler:&__block_literal_global_58];
  }

  return v2;
}

void __35__PSUModeConfigurationService_init__block_invoke(uint64_t a1, char a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_error_impl(&dword_231CAE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not add mode configuration listener: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end