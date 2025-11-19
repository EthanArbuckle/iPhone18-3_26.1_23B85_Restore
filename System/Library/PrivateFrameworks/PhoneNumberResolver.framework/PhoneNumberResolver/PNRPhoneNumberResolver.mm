@interface PNRPhoneNumberResolver
- (PNRPhoneNumberResolver)init;
- (id)_notAPhoneNumberError;
- (id)_notFullyQualifiedError;
- (id)resolvePhoneNumber:(id)a3 countryCode:(id)a4 error:(id *)a5;
- (void)resolveFullyQualifiedPhoneNumber:(id)a3 inCountry:(id)a4 logId:(id)a5 resultBlock:(id)a6;
- (void)resolvePhoneNumbers:(id)a3 queue:(id)a4 handler:(id)a5;
@end

@implementation PNRPhoneNumberResolver

- (PNRPhoneNumberResolver)init
{
  v7.receiver = self;
  v7.super_class = PNRPhoneNumberResolver;
  v2 = [(PNRPhoneNumberResolver *)&v7 init];
  if (v2)
  {
    if (init_onceToken != -1)
    {
      [PNRPhoneNumberResolver init];
    }

    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.PhoneNumberResolver.resolve", v3);
    resolveQueue = v2->_resolveQueue;
    v2->_resolveQueue = v4;
  }

  return v2;
}

uint64_t __30__PNRPhoneNumberResolver_init__block_invoke()
{
  _log = os_log_create("com.apple.PhoneNumberResolver", "Resolver");

  return MEMORY[0x2821F96F8]();
}

- (id)_notAPhoneNumberError
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA068];
  v9[0] = @"not a phone number";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v3 errorWithDomain:@"PNRError" code:2 userInfo:v4];

  [(PNRPhoneNumberResolver *)self _recordUsageAnalyticForCountryCode:@"10" success:0];
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_notFullyQualifiedError
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA068];
  v9[0] = @"not fully qualified";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v3 errorWithDomain:@"PNRError" code:3 userInfo:v4];

  [(PNRPhoneNumberResolver *)self _recordUsageAnalyticForCountryCode:@"100" success:0];
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)resolvePhoneNumbers:(id)a3 queue:(id)a4 handler:(id)a5
{
  v57 = *MEMORY[0x277D85DE8];
  v8 = a3;
  queue = a4;
  v31 = a5;
  v36 = objc_alloc_init(PNRPhoneNumberResolutionResultSet);
  v37 = +[PNRUtils _currentCountry];
  group = dispatch_group_create();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v9)
  {
    v10 = v9;
    v35 = *v49;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v49 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v48 + 1) + 8 * i);
        v13 = objc_alloc_init(MEMORY[0x277CCAD78]);
        v14 = [v12 objectForKeyedSubscript:@"kGEOPhoneNumberKey"];
        v15 = [v12 objectForKeyedSubscript:@"kGEOPhoneNumberCountryKey"];
        v16 = v15;
        v17 = v37;
        if (v15)
        {
          v17 = v15;
        }

        v18 = v17;

        v19 = _log;
        if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
        {
          *buf = 138543619;
          v53 = v13;
          v54 = 2113;
          v55 = v14;
          _os_log_impl(&dword_25E515000, v19, OS_LOG_TYPE_INFO, "[%{public}@] resolving %{private}@ asynchronously", buf, 0x16u);
        }

        v20 = [PNRUtils _stringByStrippingFormattingAndNotVisiblyAllowable:v14];
        if (![PNRUtils _isValidPhoneNumber:v20])
        {
          v23 = [(PNRPhoneNumberResolver *)self _notAPhoneNumberError];
          [(PNRPhoneNumberResolutionResultSet *)v36 setError:v23 forPhoneNumber:v14];
          v24 = _log;
          if (!os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
          {
            goto LABEL_18;
          }

          *buf = 138543619;
          v53 = v13;
          v54 = 2113;
          v55 = v14;
          v25 = v24;
          v26 = "[%{public}@] '%{private}@' is not a valid phone number";
          goto LABEL_17;
        }

        if ([v20 hasPrefix:@"+"])
        {
          v21 = [v20 substringFromIndex:1];
          dispatch_group_enter(group);
          resolveQueue = self->_resolveQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __60__PNRPhoneNumberResolver_resolvePhoneNumbers_queue_handler___block_invoke;
          block[3] = &unk_279A240F0;
          block[4] = self;
          v42 = v21;
          v43 = v18;
          v44 = v13;
          v45 = v36;
          v46 = v14;
          v47 = group;
          v23 = v21;
          dispatch_async(resolveQueue, block);

          goto LABEL_18;
        }

        v23 = [(PNRPhoneNumberResolver *)self _notFullyQualifiedError];
        [(PNRPhoneNumberResolutionResultSet *)v36 setError:v23 forPhoneNumber:v14];
        v27 = _log;
        if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
        {
          *buf = 138543619;
          v53 = v13;
          v54 = 2113;
          v55 = v14;
          v25 = v27;
          v26 = "[%{public}@] '%{private}@' is not a fully qualified phone number";
LABEL_17:
          _os_log_impl(&dword_25E515000, v25, OS_LOG_TYPE_INFO, v26, buf, 0x16u);
        }

LABEL_18:
      }

      v10 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v10);
  }

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __60__PNRPhoneNumberResolver_resolvePhoneNumbers_queue_handler___block_invoke_71;
  v38[3] = &unk_279A24118;
  v39 = v36;
  v40 = v31;
  v28 = v36;
  v29 = v31;
  dispatch_group_notify(group, queue, v38);

  v30 = *MEMORY[0x277D85DE8];
}

void __60__PNRPhoneNumberResolver_resolvePhoneNumbers_queue_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__PNRPhoneNumberResolver_resolvePhoneNumbers_queue_handler___block_invoke_2;
  v12[3] = &unk_279A240C8;
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 56);
  v9 = *(a1 + 48);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v13 = v11;
  v14 = v10;
  v15 = *(a1 + 80);
  [v2 resolveFullyQualifiedPhoneNumber:v3 inCountry:v4 logId:v5 resultBlock:v12];
}

void __60__PNRPhoneNumberResolver_resolvePhoneNumbers_queue_handler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    [*(a1 + 32) setResult:v7 resultDataSource:a3 forPhoneNumber:*(a1 + 40)];
    v10 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 40);
      v11 = *(a1 + 48);
      v13 = *(a1 + 56);
      v21 = 138544131;
      v22 = v11;
      v23 = 2113;
      v24 = v12;
      v25 = 2113;
      v26 = v13;
      v27 = 2113;
      v28 = v7;
      v14 = "[%{public}@] result for '%{private}@/%{private}@' is '%{private}@'";
LABEL_8:
      _os_log_impl(&dword_25E515000, v10, OS_LOG_TYPE_INFO, v14, &v21, 0x2Au);
    }
  }

  else
  {
    if (!v8)
    {
      v15 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277CCA068];
      v30[0] = @"no result";
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      v9 = [v15 errorWithDomain:@"PNRError" code:1 userInfo:v16];
    }

    [*(a1 + 32) setError:v9 forPhoneNumber:*(a1 + 40)];
    v10 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 40);
      v17 = *(a1 + 48);
      v19 = *(a1 + 56);
      v21 = 138544131;
      v22 = v17;
      v23 = 2113;
      v24 = v18;
      v25 = 2113;
      v26 = v19;
      v27 = 2114;
      v28 = v9;
      v14 = "[%{public}@] no result found for '%{private}@'/'%{private}@' (%{public}@)";
      goto LABEL_8;
    }
  }

  dispatch_group_leave(*(a1 + 64));

  v20 = *MEMORY[0x277D85DE8];
}

- (id)resolvePhoneNumber:(id)a3 countryCode:(id)a4 error:(id *)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x277CCAD78]);
  v11 = _log;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
  {
    *buf = 138543619;
    *&buf[4] = v10;
    *&buf[12] = 2113;
    *&buf[14] = v8;
    _os_log_impl(&dword_25E515000, v11, OS_LOG_TYPE_INFO, "[%{public}@] resolving %{private}@ synchronously", buf, 0x16u);
  }

  v12 = [PNRUtils _stringByStrippingFormattingAndNotVisiblyAllowable:v8];
  if (![PNRUtils _isValidPhoneNumber:v12])
  {
    v15 = [(PNRPhoneNumberResolver *)self _notAPhoneNumberError];
    v13 = v15;
    if (a5)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (([v12 hasPrefix:@"+"] & 1) == 0)
  {
    v15 = [(PNRPhoneNumberResolver *)self _notFullyQualifiedError];
    v13 = v15;
    if (a5)
    {
LABEL_11:
      v16 = v15;
      v14 = 0;
      *a5 = v13;
      goto LABEL_13;
    }

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v13 = [v12 substringFromIndex:1];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __63__PNRPhoneNumberResolver_resolvePhoneNumber_countryCode_error___block_invoke;
  v19[3] = &unk_279A24140;
  v19[4] = buf;
  v19[5] = &v20;
  [(PNRPhoneNumberResolver *)self resolveFullyQualifiedPhoneNumber:v13 inCountry:v9 logId:v10 resultBlock:v19];
  if (a5)
  {
    *a5 = v21[5];
  }

  v14 = *(*&buf[8] + 40);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(buf, 8);
LABEL_13:

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

void __63__PNRPhoneNumberResolver_resolvePhoneNumber_countryCode_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;
  v12 = v6;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
}

- (void)resolveFullyQualifiedPhoneNumber:(id)a3 inCountry:(id)a4 logId:(id)a5 resultBlock:(id)a6
{
  v64[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[PNRResourceManager sharedManager];
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy_;
  v61 = __Block_byref_object_dispose_;
  v62 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy_;
  v51 = __Block_byref_object_dispose_;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy_;
  v45 = __Block_byref_object_dispose_;
  v46 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke;
  v27 = &unk_279A241E0;
  v15 = v12;
  v28 = v15;
  v32 = &v47;
  v33 = &v41;
  v16 = v10;
  v29 = v16;
  v17 = v14;
  v30 = v17;
  v18 = v11;
  v31 = v18;
  v34 = &v53;
  v35 = &v37;
  v36 = &v57;
  [v17 lookupCCForPhoneNumber:v16 logId:v15 withResult:&v24];
  if (v58[5])
  {
    v19 = 0;
  }

  else
  {
    v20 = v42[5];
    if (v20)
    {
      v21 = MEMORY[0x277CCA9B8];
      v63 = *MEMORY[0x277CCA7E8];
      v64[0] = v20;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:&v63 count:1];
      v19 = [v21 errorWithDomain:@"PNRError" code:1 userInfo:v22];
    }

    else
    {
      v19 = 0;
    }
  }

  [(PNRPhoneNumberResolver *)self _recordUsageAnalyticForCountryCode:v48[5] success:*(v38 + 24), v13, v24, v25, v26, v27];
  v13[2](v13, v58[5], v54[3], v19);

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);

  v23 = *MEMORY[0x277D85DE8];
}

void __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      *buf = 138543618;
      v42 = v9;
      v43 = 2114;
      v44 = v7;
      _os_log_impl(&dword_25E515000, v8, OS_LOG_TYPE_INFO, "[%{public}@] couldn't determine cc (%{public}@)", buf, 0x16u);
    }

    v10 = *(*(a1 + 64) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = @"1000";

    v12 = *(*(a1 + 72) + 8);
    v13 = v7;
    v14 = *(v12 + 40);
    *(v12 + 40) = v13;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
    v15 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      *buf = 138543875;
      v42 = v16;
      v43 = 2114;
      v44 = v6;
      v45 = 2113;
      v46 = v17;
      _os_log_impl(&dword_25E515000, v15, OS_LOG_TYPE_INFO, "[%{public}@] determined cc %{public}@ for %{private}@", buf, 0x20u);
    }

    v18 = [*(a1 + 40) substringFromIndex:{objc_msgSend(v6, "length")}];
    v19 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
    {
      v20 = *(a1 + 32);
      *buf = 138543619;
      v42 = v20;
      v43 = 2113;
      v44 = v18;
      _os_log_impl(&dword_25E515000, v19, OS_LOG_TYPE_INFO, "[%{public}@] now resolving %{private}@", buf, 0x16u);
    }

    v22 = *(a1 + 48);
    v21 = *(a1 + 56);
    v23 = *(a1 + 32);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke_76;
    v31[3] = &unk_279A241B8;
    v37 = *(a1 + 80);
    v32 = v23;
    v33 = v18;
    v24 = v6;
    v25 = *(a1 + 72);
    v34 = v24;
    v38 = v25;
    v26 = *(a1 + 48);
    v27 = *(a1 + 88);
    v35 = v26;
    v39 = v27;
    v28 = *(a1 + 40);
    v29 = *(a1 + 96);
    v36 = v28;
    v40 = v29;
    v14 = v18;
    [v22 lookupStringForPhoneNumber:v14 inCC:v24 countryCodeOfDevice:v21 logId:v32 withResult:v31];
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke_76(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v53 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = v8;
  *(*(*(a1 + 72) + 8) + 24) = a3;
  if (v7)
  {
    *(*(*(a1 + 88) + 8) + 24) = 1;
    v10 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 64);
      *buf = 138543619;
      *&buf[4] = v11;
      *&buf[12] = 2113;
      *&buf[14] = v12;
      _os_log_impl(&dword_25E515000, v10, OS_LOG_TYPE_INFO, "[%{public}@] found result in db for phNo %{private}@", buf, 0x16u);
    }

LABEL_16:
    v26 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
    {
      v27 = *(a1 + 32);
      v28 = *(a1 + 64);
      *buf = 138543875;
      *&buf[4] = v27;
      *&buf[12] = 2113;
      *&buf[14] = v28;
      *&buf[22] = 2113;
      v51 = v7;
      _os_log_impl(&dword_25E515000, v26, OS_LOG_TYPE_INFO, "[%{public}@] resolved %{private}@ to %{private}@", buf, 0x20u);
    }

    goto LABEL_21;
  }

  if (v8)
  {
    v13 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      *buf = 138544131;
      *&buf[4] = v14;
      *&buf[12] = 2113;
      *&buf[14] = v15;
      *&buf[22] = 2113;
      v51 = v16;
      LOWORD(v52) = 2114;
      *(&v52 + 2) = v9;
      _os_log_impl(&dword_25E515000, v13, OS_LOG_TYPE_INFO, "[%{public}@] lookup of %{private}@ in %{private}@ ended in error (%{public}@)", buf, 0x2Au);
    }

    objc_storeStrong((*(*(a1 + 80) + 8) + 40), a4);
  }

  v17 = _log;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
  {
    v18 = *(a1 + 32);
    v19 = *(a1 + 48);
    *buf = 138543618;
    *&buf[4] = v18;
    *&buf[12] = 2114;
    *&buf[14] = v19;
    _os_log_impl(&dword_25E515000, v17, OS_LOG_TYPE_INFO, "[%{public}@] using only cc of %{public}@ for resolution", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v51 = __Block_byref_object_copy_;
  *&v52 = __Block_byref_object_dispose_;
  *(&v52 + 1) = 0;
  if ([*(a1 + 48) isEqualToString:@"1"])
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke_80;
    v47[3] = &unk_279A24168;
    v49[1] = *(a1 + 80);
    v48 = v21;
    v49[0] = *(a1 + 40);
    v49[2] = buf;
    v49[3] = *(a1 + 72);
    [v20 lookupISOCountryCodeFromNANPNumber:v22 logId:v48 withResult:v47];
    v23 = &v48;
    v24 = v49;
  }

  else
  {
    v25 = *(a1 + 48);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke_82;
    v44[3] = &unk_279A24168;
    v46[1] = *(a1 + 80);
    v45 = *(a1 + 32);
    v46[0] = *(a1 + 40);
    v46[2] = buf;
    v46[3] = *(a1 + 72);
    [PNRUtils _countryCodeFromInternationalCode:v25 result:v44];
    v23 = &v45;
    v24 = v46;
  }

  v7 = *(*&buf[8] + 40);
  if (v7)
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy_;
    v42 = __Block_byref_object_dispose_;
    v43 = 0;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke_83;
    v33[3] = &unk_279A24190;
    v35 = *(a1 + 80);
    v34 = *(a1 + 32);
    v36 = buf;
    v37 = &v38;
    [PNRUtils _localizedCountryNameForISOCountryCode:v7 result:v33];
    v7 = v39[5];

    _Block_object_dispose(&v38, 8);
  }

  _Block_object_dispose(buf, 8);

  if (v7)
  {
    goto LABEL_16;
  }

  if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
  {
    __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke_76_cold_1(a1);
  }

  v7 = 0;
LABEL_21:
  v29 = *(*(a1 + 96) + 8);
  v30 = *(v29 + 40);
  *(v29 + 40) = v7;
  v31 = v7;

  v32 = *MEMORY[0x277D85DE8];
}

void __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke_80(void *a1, void *a2, void *a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = *(a1[6] + 8);
    if (*(v9 + 40))
    {
      v10 = objc_alloc(MEMORY[0x277CCA9B8]);
      v11 = [v8 domain];
      v12 = [v8 code];
      v13 = *(*(a1[6] + 8) + 40);
      v20 = *MEMORY[0x277CCA7E8];
      v21[0] = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v15 = [v10 initWithDomain:v11 code:v12 userInfo:v14];
      v16 = *(a1[6] + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;
    }

    else
    {
      v18 = v7;
      v11 = *(v9 + 40);
      *(v9 + 40) = v18;
    }

    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke_80_cold_1(a1);
    }
  }

  else
  {
    objc_storeStrong((*(a1[7] + 8) + 40), a2);
    *(*(a1[8] + 8) + 24) = 2;
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke_82(void *a1, void *a2, void *a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = *(a1[6] + 8);
    if (*(v9 + 40))
    {
      v10 = objc_alloc(MEMORY[0x277CCA9B8]);
      v11 = [v8 domain];
      v12 = [v8 code];
      v13 = *(*(a1[6] + 8) + 40);
      v20 = *MEMORY[0x277CCA7E8];
      v21[0] = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v15 = [v10 initWithDomain:v11 code:v12 userInfo:v14];
      v16 = *(a1[6] + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;
    }

    else
    {
      v18 = v7;
      v11 = *(v9 + 40);
      *(v9 + 40) = v18;
    }

    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke_82_cold_1(a1);
    }
  }

  else
  {
    objc_storeStrong((*(a1[7] + 8) + 40), a2);
    *(*(a1[8] + 8) + 24) = 3;
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke_83(uint64_t a1, void *a2, void *a3)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = *(*(a1 + 40) + 8);
    if (*(v9 + 40))
    {
      v10 = objc_alloc(MEMORY[0x277CCA9B8]);
      v11 = [v8 domain];
      v12 = [v8 code];
      v13 = *(*(*(a1 + 40) + 8) + 40);
      v21 = *MEMORY[0x277CCA7E8];
      v22[0] = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v15 = [v10 initWithDomain:v11 code:v12 userInfo:v14];
      v16 = *(*(a1 + 40) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;
    }

    else
    {
      v18 = v7;
      v11 = *(v9 + 40);
      *(v9 + 40) = v18;
    }

    v19 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke_83_cold_1(a1, v8, v19);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  v20 = *MEMORY[0x277D85DE8];
}

id __69__PNRPhoneNumberResolver__recordUsageAnalyticForCountryCode_success___block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v8[0] = &unk_28703BAC0;
  v7[0] = @"Count";
  v7[1] = @"cc";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 32)];
  v8[1] = v2;
  v7[2] = @"success";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 36)];
  v8[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

void __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke_76_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = a1[8];
  v3 = *(*(a1[10] + 8) + 40);
  OUTLINED_FUNCTION_0_0();
  v8 = v4;
  _os_log_error_impl(&dword_25E515000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] didn't resolved %{private}@ : %{public}@", v7, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke_80_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25E515000, v3, v4, "[%{public}@] country lookup failure for NANP number %{private}@ (%{public}@)");
  v5 = *MEMORY[0x277D85DE8];
}

void __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke_82_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25E515000, v3, v4, "[%{public}@] country lookup failure for non-NANP number %{private}@ (%{public}@)");
  v5 = *MEMORY[0x277D85DE8];
}

void __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke_83_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  *v4 = 138543874;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2114;
  *&v4[14] = *(*(*(a1 + 48) + 8) + 40);
  *&v4[22] = 2114;
  OUTLINED_FUNCTION_1_0(&dword_25E515000, a2, a3, "[%{public}@] localized country name lookup failure for country code %{public}@ (%{public}@)", *v4, *&v4[8], *&v4[16], a2);
  v3 = *MEMORY[0x277D85DE8];
}

@end