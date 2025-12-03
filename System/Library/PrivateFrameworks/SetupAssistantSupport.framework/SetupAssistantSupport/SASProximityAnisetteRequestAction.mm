@interface SASProximityAnisetteRequestAction
+ (id)actionFromDictionary:(id)dictionary;
- (id)requestPayload;
- (id)responsePayload;
- (void)eraseAnisetteWithCompletion:(id)completion;
- (void)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)necessary withCompletion:(id)completion;
- (void)legacyAnisetteDataForDSID:(id)d withCompletion:(id)completion;
- (void)provisionAnisetteWithCompletion:(id)completion;
- (void)setResponseFromData:(id)data;
- (void)syncAnisetteWithSIMData:(id)data completion:(id)completion;
@end

@implementation SASProximityAnisetteRequestAction

+ (id)actionFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(SASProximityAnisetteRequestAction);
  v5 = [dictionaryCopy objectForKeyedSubscript:@"request"];

  -[SASProximityAnisetteRequestAction setRequest:](v4, "setRequest:", [v5 integerValue]);

  return v4;
}

- (id)requestPayload
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"request";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SASProximityAnisetteRequestAction request](self, "request")}];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)responsePayload
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = dispatch_semaphore_create(0);
  request = [(SASProximityAnisetteRequestAction *)self request];
  if (request <= 1)
  {
    if (!request)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __52__SASProximityAnisetteRequestAction_responsePayload__block_invoke;
      v26[3] = &unk_278846520;
      v26[4] = self;
      v6 = &v27;
      v27 = v3;
      [(SASProximityAnisetteRequestAction *)self provisionAnisetteWithCompletion:v26];
      goto LABEL_13;
    }

    if (request != 1)
    {
      goto LABEL_14;
    }

    dsid = [(SASProximityAnisetteRequestAction *)self sim];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __52__SASProximityAnisetteRequestAction_responsePayload__block_invoke_11;
    v24[3] = &unk_278846520;
    v24[4] = self;
    v6 = &v25;
    v25 = v3;
    [(SASProximityAnisetteRequestAction *)self syncAnisetteWithSIMData:dsid completion:v24];
  }

  else
  {
    if (request == 2)
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __52__SASProximityAnisetteRequestAction_responsePayload__block_invoke_12;
      v22[3] = &unk_278846520;
      v22[4] = self;
      v6 = &v23;
      v23 = v3;
      [(SASProximityAnisetteRequestAction *)self eraseAnisetteWithCompletion:v22];
      goto LABEL_13;
    }

    if (request == 3)
    {
      shouldProvision = [(SASProximityAnisetteRequestAction *)self shouldProvision];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __52__SASProximityAnisetteRequestAction_responsePayload__block_invoke_13;
      v20[3] = &unk_278846548;
      v20[4] = self;
      v6 = &v21;
      v21 = v3;
      [(SASProximityAnisetteRequestAction *)self fetchAnisetteDataAndProvisionIfNecessary:shouldProvision withCompletion:v20];
      goto LABEL_13;
    }

    if (request != 4)
    {
      goto LABEL_14;
    }

    dsid = [(SASProximityAnisetteRequestAction *)self dsid];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __52__SASProximityAnisetteRequestAction_responsePayload__block_invoke_15;
    v18[3] = &unk_278846548;
    v18[4] = self;
    v6 = &v19;
    v19 = v3;
    [(SASProximityAnisetteRequestAction *)self legacyAnisetteDataForDSID:dsid withCompletion:v18];
  }

LABEL_13:
LABEL_14:
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[SASProximityAnisetteRequestAction success](self, "success")}];
  [v8 setObject:v9 forKeyedSubscript:@"success"];

  anisetteData = [(SASProximityAnisetteRequestAction *)self anisetteData];

  if (anisetteData)
  {
    anisetteData2 = [(SASProximityAnisetteRequestAction *)self anisetteData];
    [v8 setObject:anisetteData2 forKeyedSubscript:@"anisette"];
  }

  v17 = 0;
  v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v17];
  v13 = v17;
  if (!v12)
  {
    v14 = +[SASLogging facility];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v13;
      _os_log_impl(&dword_22E4D7000, v14, OS_LOG_TYPE_DEFAULT, "Failed to archive response: %@", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

void __52__SASProximityAnisetteRequestAction_responsePayload__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [*(a1 + 32) setAnisetteData:0];
  [*(a1 + 32) setSuccess:a2];
  if (v5)
  {
    v6 = +[SASLogging facility];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_22E4D7000, v6, OS_LOG_TYPE_DEFAULT, "Provisioning anisette failed: %@", &v8, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v7 = *MEMORY[0x277D85DE8];
}

void __52__SASProximityAnisetteRequestAction_responsePayload__block_invoke_11(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [*(a1 + 32) setAnisetteData:0];
  [*(a1 + 32) setSuccess:a2];
  if (v5)
  {
    v6 = +[SASLogging facility];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_22E4D7000, v6, OS_LOG_TYPE_DEFAULT, "Syncing anisette with SIM data failed: %@", &v8, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v7 = *MEMORY[0x277D85DE8];
}

void __52__SASProximityAnisetteRequestAction_responsePayload__block_invoke_12(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [*(a1 + 32) setAnisetteData:0];
  [*(a1 + 32) setSuccess:a2];
  if (v5)
  {
    v6 = +[SASLogging facility];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_22E4D7000, v6, OS_LOG_TYPE_DEFAULT, "Erase anisette failed: %@", &v8, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v7 = *MEMORY[0x277D85DE8];
}

void __52__SASProximityAnisetteRequestAction_responsePayload__block_invoke_13(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [*(a1 + 32) setAnisetteData:a2];
  [*(a1 + 32) setSuccess:v5 != 0];
  if (v5)
  {
    v6 = +[SASLogging facility];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_22E4D7000, v6, OS_LOG_TYPE_DEFAULT, "Fetch anisette data and provision failed: %@", &v8, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v7 = *MEMORY[0x277D85DE8];
}

void __52__SASProximityAnisetteRequestAction_responsePayload__block_invoke_15(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [*(a1 + 32) setAnisetteData:a2];
  [*(a1 + 32) setSuccess:v5 != 0];
  if (v5)
  {
    v6 = +[SASLogging facility];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_22E4D7000, v6, OS_LOG_TYPE_DEFAULT, "Legacy anisette data for DSID failed: %@", &v8, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setResponseFromData:(id)data
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAAC8];
  v5 = MEMORY[0x277CBEB98];
  dataCopy = data;
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v5 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
  v17 = 0;
  v11 = [v4 unarchivedObjectOfClasses:v10 fromData:dataCopy error:&v17];

  v12 = v17;
  if (!v11)
  {
    v13 = +[SASLogging facility];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&dword_22E4D7000, v13, OS_LOG_TYPE_DEFAULT, "Failed to unarchive information: %@", buf, 0xCu);
    }
  }

  v14 = [v11 objectForKeyedSubscript:@"anisette"];
  [(SASProximityAnisetteRequestAction *)self setAnisetteData:v14];

  v15 = [v11 objectForKeyedSubscript:@"success"];
  -[SASProximityAnisetteRequestAction setSuccess:](self, "setSuccess:", [v15 BOOLValue]);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)provisionAnisetteWithCompletion:(id)completion
{
  v3 = MEMORY[0x277CF0168];
  completionCopy = completion;
  v5 = objc_alloc_init(v3);
  [v5 provisionWithCompletion:completionCopy];
}

- (void)syncAnisetteWithSIMData:(id)data completion:(id)completion
{
  v5 = MEMORY[0x277CF0168];
  completionCopy = completion;
  dataCopy = data;
  v8 = objc_alloc_init(v5);
  [v8 syncWithSIMData:dataCopy completion:completionCopy];
}

- (void)eraseAnisetteWithCompletion:(id)completion
{
  v3 = MEMORY[0x277CF0168];
  completionCopy = completion;
  v5 = objc_alloc_init(v3);
  [v5 eraseWithCompletion:completionCopy];
}

- (void)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)necessary withCompletion:(id)completion
{
  v4 = MEMORY[0x277CF0168];
  completionCopy = completion;
  v6 = objc_alloc_init(v4);
  [v6 anisetteDataWithCompletion:completionCopy];
}

- (void)legacyAnisetteDataForDSID:(id)d withCompletion:(id)completion
{
  v5 = MEMORY[0x277CF0168];
  completionCopy = completion;
  dCopy = d;
  v8 = objc_alloc_init(v5);
  [v8 legacyAnisetteDataForDSID:dCopy withCompletion:completionCopy];
}

@end