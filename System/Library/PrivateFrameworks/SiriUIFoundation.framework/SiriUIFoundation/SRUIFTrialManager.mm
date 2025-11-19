@interface SRUIFTrialManager
- (SRUIFTrialManager)initWithNamespace:(id)a3 projectId:(int)a4;
- (id)_levelForFactor:(id)a3;
- (void)BOOLValueForFactor:(id)a3 defaultValueIfNoFactorsFilePresent:(BOOL)a4 withCompletionHandler:(id)a5;
- (void)BOOLValueForFactor:(id)a3 withCompletionHandler:(id)a4;
- (void)_initializeTrialClient;
- (void)_refreshTreatments;
@end

@implementation SRUIFTrialManager

- (void)_initializeTrialClient
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SRUIFTrialManager__initializeTrialClient__block_invoke;
  block[3] = &unk_279C61898;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(queue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __43__SRUIFTrialManager__initializeTrialClient__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277D73660] clientWithIdentifier:*(*(a1 + 32) + 8)];
    v4 = WeakRetained[2];
    WeakRetained[2] = v3;

    if (!WeakRetained[2])
    {
      v5 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315138;
        v8 = "[SRUIFTrialManager _initializeTrialClient]_block_invoke";
        _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s #trial client initializations returned nil.", &v7, 0xCu);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_refreshTreatments
{
  trialClient = self->_trialClient;
  if (trialClient)
  {
    [(TRIClient *)trialClient refresh];
  }
}

- (SRUIFTrialManager)initWithNamespace:(id)a3 projectId:(int)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = SRUIFTrialManager;
  v8 = [(SRUIFTrialManager *)&v12 init];
  if (v8)
  {
    v9 = dispatch_queue_create("SRUIFTrialManager", 0);
    queue = v8->_queue;
    v8->_queue = v9;

    objc_storeStrong(&v8->_trialNamespaceName, a3);
    v8->_trialProjectId = a4;
    [(SRUIFTrialManager *)v8 _initializeTrialClient];
  }

  return v8;
}

- (id)_levelForFactor:(id)a3
{
  v4 = a3;
  [(SRUIFTrialManager *)self _refreshTreatments];
  trialClient = self->_trialClient;
  if (trialClient)
  {
    v6 = [(TRIClient *)trialClient levelForFactor:v4 withNamespaceName:self->_trialNamespaceName];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)BOOLValueForFactor:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__SRUIFTrialManager_BOOLValueForFactor_withCompletionHandler___block_invoke;
  v11[3] = &unk_279C618C0;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __62__SRUIFTrialManager_BOOLValueForFactor_withCompletionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _levelForFactor:*(a1 + 32)];
    v5 = *MEMORY[0x277CEF098];
    if (v4)
    {
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v7 = v3[3];
        v8 = v5;
        v9 = [v4 BOOLeanValue];
        v10 = "FALSE";
        *v13 = 136315906;
        *&v13[4] = "[SRUIFTrialManager BOOLValueForFactor:withCompletionHandler:]_block_invoke";
        *&v13[14] = v6;
        *&v13[12] = 2112;
        if (v9)
        {
          v10 = "TRUE";
        }

        *&v13[22] = 2112;
        v14 = v7;
        v15 = 2080;
        v16 = v10;
        _os_log_impl(&dword_26951F000, v8, OS_LOG_TYPE_DEFAULT, "%s #trial Trial factor %@ found with namespace %@, value: %s", v13, 0x2Au);
      }

      (*(*(a1 + 40) + 16))(*(a1 + 40), 0, [v4 BOOLeanValue]);
    }

    else
    {
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        __62__SRUIFTrialManager_BOOLValueForFactor_withCompletionHandler___block_invoke_cold_1((a1 + 32), v3, v5);
      }

      v11 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.siri.Trial" code:0 userInfo:&unk_287A18CF0];
      (*(*(a1 + 40) + 16))();
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)BOOLValueForFactor:(id)a3 defaultValueIfNoFactorsFilePresent:(BOOL)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__SRUIFTrialManager_BOOLValueForFactor_defaultValueIfNoFactorsFilePresent_withCompletionHandler___block_invoke;
  block[3] = &unk_279C629A8;
  objc_copyWeak(&v16, &location);
  v14 = v8;
  v15 = v9;
  v17 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __97__SRUIFTrialManager_BOOLValueForFactor_defaultValueIfNoFactorsFilePresent_withCompletionHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _levelForFactor:*(a1 + 32)];
    v5 = *MEMORY[0x277CEF098];
    v6 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        v7 = *(a1 + 32);
        v8 = v3[3];
        v9 = v5;
        v10 = [v4 BOOLeanValue];
        v11 = "FALSE";
        *v15 = 136315906;
        *&v15[4] = "[SRUIFTrialManager BOOLValueForFactor:defaultValueIfNoFactorsFilePresent:withCompletionHandler:]_block_invoke";
        *&v15[14] = v7;
        *&v15[12] = 2112;
        if (v10)
        {
          v11 = "TRUE";
        }

        *&v15[22] = 2112;
        v16 = v8;
        v17 = 2080;
        v18 = v11;
        _os_log_impl(&dword_26951F000, v9, OS_LOG_TYPE_DEFAULT, "%s #trial Trial factor %@ found with namespace %@, value: %s", v15, 0x2Au);
      }

      (*(*(a1 + 40) + 16))(*(a1 + 40), [v4 BOOLeanValue]);
    }

    else
    {
      if (v6)
      {
        v12 = *(a1 + 32);
        v13 = v3[3];
        *v15 = 136315650;
        *&v15[4] = "[SRUIFTrialManager BOOLValueForFactor:defaultValueIfNoFactorsFilePresent:withCompletionHandler:]_block_invoke";
        *&v15[12] = 2112;
        *&v15[14] = v12;
        *&v15[22] = 2112;
        v16 = v13;
        _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s #trial Failed to read Trial factor %@ with namespace %@ and default_factors.pb file doesn't exist.", v15, 0x20u);
      }

      (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 56));
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __62__SRUIFTrialManager_BOOLValueForFactor_withCompletionHandler___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(a2 + 24);
  v6 = 136315650;
  v7 = "[SRUIFTrialManager BOOLValueForFactor:withCompletionHandler:]_block_invoke";
  v8 = 2112;
  v9 = v3;
  v10 = 2112;
  v11 = v4;
  _os_log_error_impl(&dword_26951F000, log, OS_LOG_TYPE_ERROR, "%s #trial Failed to read Trial factor %@ with namespace %@ and default_factors.pb file doesn't exist.", &v6, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

@end