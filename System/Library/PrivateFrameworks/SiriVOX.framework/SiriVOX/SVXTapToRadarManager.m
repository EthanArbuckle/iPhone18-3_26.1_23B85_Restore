@interface SVXTapToRadarManager
+ (id)sharedInstance;
+ (id)sharedInstanceWithRadarFiler:(id)a3;
- (BOOL)_hasFileTTRWithIssue:(id)a3;
- (BOOL)_hasFileTTRWithRequestID:(id)a3;
- (BOOL)_skipFirstTimeTTR:(id)a3;
- (id)_initWithRadarFiler:(id)a3;
- (void)_updateTTRHistory:(id)a3;
- (void)createProblem:(id)a3 extraContent:(id)a4 completionHandler:(id)a5;
@end

@implementation SVXTapToRadarManager

- (void)_updateTTRHistory:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = AFBuildVersion();
    v6 = [(NSUserDefaults *)self->_ttrHistory arrayForKey:v5];
    v7 = v6;
    if (!v6)
    {
      ttrHistory = self->_ttrHistory;
      v17 = v4;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
      [(NSUserDefaults *)ttrHistory setObject:v12 forKey:v5];

      v13 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v19 = "[SVXTapToRadarManager _updateTTRHistory:]";
        v20 = 2112;
        v21 = v5;
        v22 = 2112;
        v23 = v4;
        _os_log_impl(&dword_2695B9000, v13, OS_LOG_TYPE_INFO, "%s First entry created for build %@, with error %@", buf, 0x20u);
      }

      goto LABEL_13;
    }

    if ([v6 containsObject:v4])
    {
      v8 = *MEMORY[0x277CEF098];
      if (!os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
LABEL_13:

        goto LABEL_14;
      }

      v9 = v8;
      *buf = 136315906;
      v19 = "[SVXTapToRadarManager _updateTTRHistory:]";
      v20 = 2112;
      v21 = v4;
      v22 = 2112;
      v23 = v5;
      v24 = 2048;
      v25 = [v7 count];
      _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s Error %@ already exist for %@. Total errors %lu", buf, 0x2Au);
    }

    else
    {
      v9 = [v7 arrayByAddingObject:v4];
      [(NSUserDefaults *)self->_ttrHistory setObject:v9 forKey:v5];
      v14 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        v15 = v14;
        *buf = 136316162;
        v19 = "[SVXTapToRadarManager _updateTTRHistory:]";
        v20 = 2112;
        v21 = v4;
        v22 = 2112;
        v23 = v5;
        v24 = 2048;
        v25 = [v7 count];
        v26 = 2048;
        v27 = [v9 count];
        _os_log_impl(&dword_2695B9000, v15, OS_LOG_TYPE_INFO, "%s Add new error %@. Total errors for build %@ changed from %lu -> %lu", buf, 0x34u);
      }
    }

    goto LABEL_13;
  }

  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v19 = "[SVXTapToRadarManager _updateTTRHistory:]";
    _os_log_error_impl(&dword_2695B9000, v10, OS_LOG_TYPE_ERROR, "%s No errorCode provided.", buf, 0xCu);
  }

LABEL_14:

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_hasFileTTRWithIssue:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = AFBuildVersion();
  v6 = [(NSUserDefaults *)self->_ttrHistory arrayForKey:v5];
  v7 = v6;
  if (v6)
  {
    if ([v6 containsObject:v4])
    {
      v8 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        v9 = v8;
        v14 = 136315906;
        v15 = "[SVXTapToRadarManager _hasFileTTRWithIssue:]";
        v16 = 2112;
        v17 = v4;
        v18 = 2112;
        v19 = v5;
        v20 = 2048;
        v21 = [v7 count];
        _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s Issue %@ for %@ has been prompted before. Total error count = %ld", &v14, 0x2Au);
      }
    }
  }

  else
  {
    v10 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v14 = 136315394;
      v15 = "[SVXTapToRadarManager _hasFileTTRWithIssue:]";
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_INFO, "%s First error of build %@ occurred, clean old TTR history", &v14, 0x16u);
    }

    [(NSUserDefaults *)self->_ttrHistory removePersistentDomainForName:@"com.apple.siri.sirivox.ttr"];
  }

  v11 = [(SVXRadarRateLimiter *)self->_radarRateLimiter isRateLimited];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)_skipFirstTimeTTR:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = AFBuildVersion();
  v6 = [(NSUserDefaults *)self->_ttrHistory arrayForKey:v5];
  v7 = v6;
  if (v6)
  {
    if ([v6 containsObject:v4])
    {
      v8 = MEMORY[0x277CEF098];
      v9 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        v10 = v9;
        *buf = 136315906;
        v19 = "[SVXTapToRadarManager _skipFirstTimeTTR:]";
        v20 = 2112;
        v21 = v4;
        v22 = 2112;
        v23 = v5;
        v24 = 2048;
        v25 = [v7 count];
        _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_INFO, "%s Issue %@ for %@ has been invoked before. Total error count = %ld", buf, 0x2Au);
      }

      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"ttrFiled_", v4];
      if ([v7 containsObject:v11])
      {
        v12 = *v8;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v19 = "[SVXTapToRadarManager _skipFirstTimeTTR:]";
          _os_log_impl(&dword_2695B9000, v12, OS_LOG_TYPE_INFO, "%s The first TTR was filed before.", buf, 0xCu);
        }
      }

      else if (![&unk_287A33E98 containsObject:v4])
      {
        v15 = 0;
        goto LABEL_16;
      }

      v15 = [(SVXRadarRateLimiter *)self->_radarRateLimiter isRateLimited];
LABEL_16:

      goto LABEL_17;
    }
  }

  else
  {
    v13 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v19 = "[SVXTapToRadarManager _skipFirstTimeTTR:]";
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_2695B9000, v13, OS_LOG_TYPE_INFO, "%s First error of build %@ occurred, clean old TTR history", buf, 0x16u);
    }

    [(NSUserDefaults *)self->_ttrHistory removePersistentDomainForName:@"com.apple.siri.sirivox.ttr"];
  }

  v14 = *MEMORY[0x277CEF098];
  v15 = 1;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v19 = "[SVXTapToRadarManager _skipFirstTimeTTR:]";
    v20 = 2112;
    v21 = v4;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_2695B9000, v14, OS_LOG_TYPE_INFO, "%s New issue %@ for %@ occurred. Skip radar as this is the first time", buf, 0x20u);
  }

LABEL_17:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)_hasFileTTRWithRequestID:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  requestID = self->_requestID;
  if (requestID && [(NSUUID *)requestID isEqual:v4])
  {
    v6 = *MEMORY[0x277CEF098];
    v7 = 1;
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "[SVXTapToRadarManager _hasFileTTRWithRequestID:]";
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s A radar was prompted for request %@ before", &v10, 0x16u);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)createProblem:(id)a3 extraContent:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  performer = self->_performer;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__SVXTapToRadarManager_createProblem_extraContent_completionHandler___block_invoke;
  v15[3] = &unk_279C69038;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  [(SVXPerforming *)performer performBlock:v15];
}

void __69__SVXTapToRadarManager_createProblem_extraContent_completionHandler___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) requestID];
  LODWORD(v2) = [v2 _hasFileTTRWithRequestID:v3];

  if (!v2)
  {
    v6 = *(*(a1 + 32) + 32);
    v7 = [*(a1 + 40) error];
    v8 = [v6 containsObject:v7];

    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) error];
    if (v8)
    {
      v11 = [v9 _skipFirstTimeTTR:v10];

      if (v11)
      {
        v12 = *(a1 + 32);
        v13 = [*(a1 + 40) error];
        [v12 _updateTTRHistory:v13];

        v14 = *(a1 + 32);
        v15 = [*(a1 + 40) requestID];
        [v14 _updateRequestID:v15];

        v4 = *MEMORY[0x277CEF098];
        if (!os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
        {
          goto LABEL_5;
        }

        *buf = 136315138;
        v28 = "[SVXTapToRadarManager createProblem:extraContent:completionHandler:]_block_invoke";
        v5 = "%s Met the conditions for _skipFirstTimeTTR - Return without prompting radar";
        goto LABEL_4;
      }
    }

    else
    {
      v16 = [v9 _hasFileTTRWithIssue:v10];

      if (v16)
      {
        v4 = *MEMORY[0x277CEF098];
        if (!os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
        {
          goto LABEL_5;
        }

        *buf = 136315138;
        v28 = "[SVXTapToRadarManager createProblem:extraContent:completionHandler:]_block_invoke";
        v5 = "%s Return without prompting radar";
        goto LABEL_4;
      }
    }

    v17 = [*(*(a1 + 32) + 48) createWithRequiredContent:*(a1 + 40) extraContent:*(a1 + 48)];
    v18 = *(*(a1 + 32) + 40);
    v19 = [*(a1 + 40) displayReason];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __69__SVXTapToRadarManager_createProblem_extraContent_completionHandler___block_invoke_119;
    v24[3] = &unk_279C68360;
    v20 = *(a1 + 56);
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    v26 = v20;
    v24[4] = v21;
    v25 = v22;
    [v18 fileRadar:v17 processName:@"Siri" displayReason:v19 completion:v24];

    goto LABEL_14;
  }

  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v28 = "[SVXTapToRadarManager createProblem:extraContent:completionHandler:]_block_invoke";
    v5 = "%s Return without prompting radar";
LABEL_4:
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, v5, buf, 0xCu);
  }

LABEL_5:
  (*(*(a1 + 56) + 16))();
LABEL_14:
  v23 = *MEMORY[0x277D85DE8];
}

void __69__SVXTapToRadarManager_createProblem_extraContent_completionHandler___block_invoke_119(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 localizedDescription];
      *buf = 136315394;
      v19 = "[SVXTapToRadarManager createProblem:extraContent:completionHandler:]_block_invoke";
      v20 = 2112;
      v21 = v6;
      _os_log_error_impl(&dword_2695B9000, v5, OS_LOG_TYPE_ERROR, "%s Failed creating a radar - error: %@", buf, 0x16u);
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) error];
    [v7 _updateTTRHistory:v8];

    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) requestID];
    [v9 _updateRequestID:v10];

    v11 = *(*(a1 + 32) + 32);
    v12 = [*(a1 + 40) error];
    LODWORD(v11) = [v11 containsObject:v12];

    if (v11)
    {
      v13 = MEMORY[0x277CCACA8];
      v14 = [*(a1 + 40) error];
      v15 = [v13 stringWithFormat:@"%@%@", @"ttrFiled_", v14];

      [*(a1 + 32) _updateTTRHistory:v15];
    }

    v16 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v19 = "[SVXTapToRadarManager createProblem:extraContent:completionHandler:]_block_invoke";
      _os_log_impl(&dword_2695B9000, v16, OS_LOG_TYPE_INFO, "%s Radar Created", buf, 0xCu);
    }
  }

  (*(*(a1 + 48) + 16))();

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_initWithRadarFiler:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = SVXTapToRadarManager;
  v6 = [(SVXTapToRadarManager *)&v21 init];
  v7 = v6;
  if (v6)
  {
    recognitionText = v6->_recognitionText;
    v6->_recognitionText = &stru_287A1C130;

    v9 = [[SVXQueuePerformer alloc] initWithIdentifier:@"SVXTTRManagerQueue" qosClass:17 relativePriority:0 options:0];
    performer = v7->_performer;
    v7->_performer = v9;

    v11 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.siri.sirivox.ttr"];
    ttrHistory = v7->_ttrHistory;
    v7->_ttrHistory = v11;

    requestID = v7->_requestID;
    v7->_requestID = 0;

    v14 = [MEMORY[0x277CBEB98] setWithArray:&unk_287A33E80];
    errorsToSkipFirstTime = v7->_errorsToSkipFirstTime;
    v7->_errorsToSkipFirstTime = v14;

    v16 = objc_alloc_init(SVXRadarDraftFactory);
    radarDraftFactory = v7->_radarDraftFactory;
    v7->_radarDraftFactory = v16;

    v18 = objc_alloc_init(SVXRadarRateLimiter);
    radarRateLimiter = v7->_radarRateLimiter;
    v7->_radarRateLimiter = v18;

    objc_storeStrong(&v7->_radarFiler, a3);
  }

  return v7;
}

+ (id)sharedInstanceWithRadarFiler:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SVXTapToRadarManager_sharedInstanceWithRadarFiler___block_invoke;
  block[3] = &unk_279C68FC0;
  v10 = v3;
  v4 = sharedInstanceWithRadarFiler__onceToken;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&sharedInstanceWithRadarFiler__onceToken, block);
  }

  v6 = sharedInstanceWithRadarFiler__privateInstance;
  v7 = sharedInstanceWithRadarFiler__privateInstance;

  return v6;
}

void __53__SVXTapToRadarManager_sharedInstanceWithRadarFiler___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = sharedInstanceWithRadarFiler__privateInstance;
  sharedInstanceWithRadarFiler__privateInstance = 0;

  if ([*(a1 + 32) supportsRadarFiling])
  {
    sharedInstanceWithRadarFiler__privateInstance = [[SVXTapToRadarManager alloc] _initWithRadarFiler:*(a1 + 32)];
    v3 = *MEMORY[0x277D85DE8];

    MEMORY[0x2821F96F8]();
  }

  else
  {
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "+[SVXTapToRadarManager sharedInstanceWithRadarFiler:]_block_invoke";
      v8 = 2080;
      v9 = "+[SVXTapToRadarManager sharedInstanceWithRadarFiler:]_block_invoke";
      _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s %s: TapToRadarService class is not available", &v6, 0x16u);
    }

    v5 = *MEMORY[0x277D85DE8];
  }
}

+ (id)sharedInstance
{
  v3 = objc_alloc_init(SVXRadarFiler);
  v4 = [a1 sharedInstanceWithRadarFiler:v3];

  return v4;
}

@end