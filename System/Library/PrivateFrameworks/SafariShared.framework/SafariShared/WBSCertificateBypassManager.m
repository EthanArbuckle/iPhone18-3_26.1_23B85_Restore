@interface WBSCertificateBypassManager
+ (WBSCertificateBypassManager)sharedManager;
- (BOOL)_didCertificatExceptionsApplySuccessfully:(id)a3 protectionSpace:(id)a4;
- (BOOL)didInvalidCertificateExceptionsApplySuccessfullyForProtectionSpace:(id)a3 inPrivateBrowsing:(BOOL)a4;
- (WBSCertificateBypassManager)init;
- (id)_hostAndPortForProtectionSpace:(id)a3;
- (id)_readStateFromStorage;
- (void)_clearBypassesInRelationToDate:(id)a3 comparison:(int64_t)a4;
- (void)clearCertificateBypassesForHostIfNecessary:(id)a3 withTrust:(__SecTrust *)a4;
- (void)rememberCertificateBypassForProtectionSpace:(id)a3 inPrivateBrowsing:(BOOL)a4;
@end

@implementation WBSCertificateBypassManager

+ (WBSCertificateBypassManager)sharedManager
{
  if (+[WBSCertificateBypassManager sharedManager]::onceToken != -1)
  {
    +[WBSCertificateBypassManager sharedManager];
  }

  v3 = +[WBSCertificateBypassManager sharedManager]::manager;

  return v3;
}

void __44__WBSCertificateBypassManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(WBSCertificateBypassManager);
  v1 = +[WBSCertificateBypassManager sharedManager]::manager;
  +[WBSCertificateBypassManager sharedManager]::manager = v0;
}

- (WBSCertificateBypassManager)init
{
  v17.receiver = self;
  v17.super_class = WBSCertificateBypassManager;
  v2 = [(WBSCertificateBypassManager *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(WBSCertificateBypassManager *)v2 _readStateFromStorage];
    bypassedHostsToCertificateExceptions = v3->_bypassedHostsToCertificateExceptions;
    v3->_bypassedHostsToCertificateExceptions = v4;

    v6 = [MEMORY[0x1E695DF90] dictionary];
    bypassedHostsToCertificateExceptionsInPrivateBrowsing = v3->_bypassedHostsToCertificateExceptionsInPrivateBrowsing;
    v3->_bypassedHostsToCertificateExceptionsInPrivateBrowsing = v6;

    objc_initWeak(&location, v3);
    v8 = objc_alloc(MEMORY[0x1E69C8840]);
    v9 = _urlForStorage();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __35__WBSCertificateBypassManager_init__block_invoke;
    v14[3] = &unk_1E7FB73C8;
    objc_copyWeak(&v15, &location);
    v10 = [v8 initWithName:@"CertificateBypassesWriter" fileURL:v9 dataSourceQueue:0 plistFormat:200 plistDictionarySourceBlock:v14];
    plistWriter = v3->_plistWriter;
    v3->_plistWriter = v10;

    v12 = v3;
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (id)_readStateFromStorage
{
  v2 = _urlForStorage();
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionaryWithContentsOfURL:v2];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = [MEMORY[0x1E695DF90] dictionary];
    }

    v7 = v5;
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXCertificates();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(WBSCertificateBypassManager *)v6 _readStateFromStorage];
    }

    v7 = [MEMORY[0x1E695DF90] dictionary];
  }

  return v7;
}

void *__35__WBSCertificateBypassManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained[1];
  v3 = v2;

  return v2;
}

- (BOOL)didInvalidCertificateExceptionsApplySuccessfullyForProtectionSpace:(id)a3 inPrivateBrowsing:(BOOL)a4
{
  v6 = a3;
  v7 = [(WBSCertificateBypassManager *)self _didCertificatExceptionsApplySuccessfully:self->_bypassedHostsToCertificateExceptions protectionSpace:v6];
  if (v7 || !a4)
  {
    v8 = a4 || v7;
  }

  else
  {
    v8 = [(WBSCertificateBypassManager *)self _didCertificatExceptionsApplySuccessfully:self->_bypassedHostsToCertificateExceptionsInPrivateBrowsing protectionSpace:v6];
  }

  return v8;
}

- (BOOL)_didCertificatExceptionsApplySuccessfully:(id)a3 protectionSpace:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBSCertificateBypassManager *)self _hostAndPortForProtectionSpace:v7];
  v9 = [v6 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = [v6 objectForKeyedSubscript:v8];
    v11 = [v10 safari_dataForKey:@"BypassedInvalidCertificateExceptionData"];

    if (v11)
    {
      v12 = SecTrustSetExceptions([v7 serverTrust], v11);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)rememberCertificateBypassForProtectionSpace:(id)a3 inPrivateBrowsing:(BOOL)a4
{
  v4 = a4;
  v18[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 serverTrust];
  if (v7)
  {
    v8 = SecTrustCopyExceptions(v7);
    v9 = [(WBSCertificateBypassManager *)self _hostAndPortForProtectionSpace:v6];
    if (v4)
    {
      v17[0] = @"BypassedInvalidCertificateExceptionData";
      v17[1] = @"BypassedInvalidCertificateHost";
      v18[0] = v8;
      v10 = [v6 host];
      v18[1] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
      [(NSMutableDictionary *)self->_bypassedHostsToCertificateExceptionsInPrivateBrowsing setObject:v11 forKeyedSubscript:v9];
    }

    else
    {
      v15[0] = @"BypassedInvalidCertificateDate";
      v12 = [MEMORY[0x1E695DF00] now];
      v16[0] = v12;
      v16[1] = v8;
      v15[1] = @"BypassedInvalidCertificateExceptionData";
      v15[2] = @"BypassedInvalidCertificateHost";
      v13 = [v6 host];
      v16[2] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
      [(NSMutableDictionary *)self->_bypassedHostsToCertificateExceptions setObject:v14 forKeyedSubscript:v9];

      [(WBSCoalescedAsynchronousWriter *)self->_plistWriter scheduleWrite];
    }
  }
}

- (void)clearCertificateBypassesForHostIfNecessary:(id)a3 withTrust:(__SecTrust *)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = [(NSMutableDictionary *)self->_bypassedHostsToCertificateExceptions mutableCopy];
    bypassedHostsToCertificateExceptions = self->_bypassedHostsToCertificateExceptions;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __84__WBSCertificateBypassManager_clearCertificateBypassesForHostIfNecessary_withTrust___block_invoke;
    v11[3] = &unk_1E7FB73F0;
    v14 = a4;
    v12 = v6;
    v9 = v7;
    v13 = v9;
    [(NSMutableDictionary *)bypassedHostsToCertificateExceptions enumerateKeysAndObjectsUsingBlock:v11];
    v10 = [(NSMutableDictionary *)self->_bypassedHostsToCertificateExceptions count];
    if (v10 != [v9 count])
    {
      objc_storeStrong(&self->_bypassedHostsToCertificateExceptions, v7);
      [(WBSCoalescedAsynchronousWriter *)self->_plistWriter scheduleWrite];
    }
  }
}

void __84__WBSCertificateBypassManager_clearCertificateBypassesForHostIfNecessary_withTrust___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v5 safari_stringForKey:@"BypassedInvalidCertificateHost"];
  v7 = [v5 safari_dataForKey:@"BypassedInvalidCertificateExceptionData"];
  v8 = SecTrustCopyExceptions(*(a1 + 48));
  if ([v6 isEqualToString:*(a1 + 32)] && (objc_msgSend(v7, "isEqualToData:", v8) & 1) == 0)
  {
    [*(a1 + 40) removeObjectForKey:v9];
  }
}

- (void)_clearBypassesInRelationToDate:(id)a3 comparison:(int64_t)a4
{
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_bypassedHostsToCertificateExceptions mutableCopy];
  bypassedHostsToCertificateExceptions = self->_bypassedHostsToCertificateExceptions;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__WBSCertificateBypassManager__clearBypassesInRelationToDate_comparison___block_invoke;
  v12[3] = &unk_1E7FB73F0;
  v9 = v6;
  v13 = v9;
  v15 = a4;
  v10 = v7;
  v14 = v10;
  [(NSMutableDictionary *)bypassedHostsToCertificateExceptions enumerateKeysAndObjectsUsingBlock:v12];
  v11 = [(NSMutableDictionary *)self->_bypassedHostsToCertificateExceptions count];
  if (v11 != [v10 count])
  {
    objc_storeStrong(&self->_bypassedHostsToCertificateExceptions, v7);
    [(WBSCoalescedAsynchronousWriter *)self->_plistWriter scheduleWrite];
  }
}

void __73__WBSCertificateBypassManager__clearBypassesInRelationToDate_comparison___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 safari_dateForKey:@"BypassedInvalidCertificateDate"];
  if ([v5 compare:*(a1 + 32)] == *(a1 + 48))
  {
    [*(a1 + 40) setObject:0 forKeyedSubscript:v6];
  }
}

- (id)_hostAndPortForProtectionSpace:(id)a3
{
  v3 = a3;
  v4 = [v3 host];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "port")}];
  v6 = [v5 stringValue];
  v7 = [v4 stringByAppendingString:v6];

  return v7;
}

@end