@interface SPQueryTask
+ (void)initialize;
- (SPQueryTask)init;
- (SPQueryTaskDelegate)delegate;
- (unint64_t)queryIdForFeedback;
- (void)disableUpdates;
- (void)enableUpdates;
- (void)postSearchAgentUpdatedResultsToDelegate:(id)a3;
- (void)pushAndPostUpdates;
- (void)updateResultsThroughDelegate:(BOOL)a3 state:(unint64_t)a4 unchanged:(BOOL)a5 sections:(id)a6;
@end

@implementation SPQueryTask

+ (void)initialize
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.searchd"];
  v3 = sUserDefaults;
  sUserDefaults = v2;

  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("query queue", v6);
  v5 = sQueryQueue_0;
  sQueryQueue_0 = v4;
}

- (SPQueryTask)init
{
  v12.receiver = self;
  v12.super_class = SPQueryTask;
  v2 = [(SPQueryTask *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("query results", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = _os_feature_enabled_impl();
    v2->_clientRankAndBlend = v6;
    if (v6)
    {
      v7 = sQueryQueue_0;
      queryProcessor = v2->_queryProcessor;
      v2->_queryProcessor = v7;
    }

    else
    {
      queryProcessor = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v9 = dispatch_queue_create("query processor", queryProcessor);
      v10 = v2->_queryProcessor;
      v2->_queryProcessor = v9;
    }
  }

  return v2;
}

- (unint64_t)queryIdForFeedback
{
  v2 = [(SPQueryTask *)self query];
  v3 = [v2 queryContext];
  v4 = [v3 queryIdent];

  return v4;
}

- (SPQueryTaskDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)pushAndPostUpdates
{
  v2 = self;
  v87 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!atomic_load(&v2->_updatesDisabled))
  {
    do
    {
      v11 = atomic_load(&v2->_deferredUpdate);
      v12 = v11;
      atomic_compare_exchange_strong(&v2->_deferredUpdate, &v12, 0);
    }

    while (v12 != v11);
    if (!v11)
    {
      v4 = SPLogForSPLogCategoryDefault();
      v57 = *MEMORY[0x277D4BF50];
      if (!os_log_type_enabled(&v4->super, ((*MEMORY[0x277D4BF50] & 1) == 0)))
      {
        goto LABEL_56;
      }

      *buf = 0;
      v7 = "pushAndPostUpdates - nothing to post";
      v8 = (v57 & 1) == 0;
      p_super = &v4->super;
      v10 = 2;
      goto LABEL_4;
    }

    v4 = [[SPQueryResponse alloc] initWithTask:v2];
    v13 = v11[1];
    if (v13)
    {
      sections = v2->_sections;
      v2->_sections = v13;
    }

    if (*v11)
    {
      sessionEntityString = v2->_sessionEntityString;
      v2->_sessionEntityString = *v11;
    }

    v16 = [(NSArray *)v2->_sections copy];
    [(SPQueryResponse *)v4 setResultSections:v16];

    [(SPQueryResponse *)v4 setSessionEntityString:v2->_sessionEntityString];
    v17 = [(SPQueryTask *)v2 query];
    v18 = [v17 queryContext];
    v19 = [v18 queryUnderstandingOutput];

    if (!v19)
    {
LABEL_46:
      v58 = v11[3];
      [(SPQueryResponse *)v4 setState:v58, v66];
      v2->_state = v58;
      v59 = *(v11 + 16);
      v60 = SPLogForSPLogCategoryDefault();
      v61 = *MEMORY[0x277D4BF50];
      v62 = os_log_type_enabled(v60, ((*MEMORY[0x277D4BF50] & 1) == 0));
      if (v59 == 1)
      {
        if (v62)
        {
          *buf = 0;
          _os_log_impl(&dword_26B71B000, v60, ((v61 & 1) == 0), "Post clear", buf, 2u);
        }

        WeakRetained = objc_loadWeakRetained(&v2->_delegate);
        [WeakRetained resultsDidBecomeInvalid:v2];
        v64 = [MEMORY[0x277CC3468] sharedInstance];
        [v64 logWithBundleID:@"com.apple.SpotlightUI" indexOperation:4 itemCount:1 reason:@"UserInput"];
      }

      else
      {
        if (v62)
        {
          *buf = 0;
          _os_log_impl(&dword_26B71B000, v60, ((v61 & 1) == 0), "Post updates", buf, 2u);
        }

        [(SPQueryResponse *)v4 setKind:*(v11 + 32)];
        [(SPQueryTask *)v2 postSearchAgentUpdatedResultsToDelegate:v4];
        if (v2->_state - 1 > 1)
        {
          goto LABEL_55;
        }

        WeakRetained = [MEMORY[0x277CC3468] sharedInstance];
        [WeakRetained logWithBundleID:@"com.apple.SpotlightUI" indexOperation:5 itemCount:1 reason:@"UserInput"];
      }

LABEL_55:
      free(v11);
      goto LABEL_56;
    }

    v20 = [(SPQueryTask *)v2 query];
    v21 = [v20 queryContext];
    v22 = [v21 queryUnderstandingOutput];
    v23 = [v22 objectForKey:@"kQPParseResultEcrGroundedOutput"];
    v24 = v23;
    v25 = MEMORY[0x277CBEC10];
    if (v23)
    {
      v25 = v23;
    }

    v26 = v25;

    v27 = 0x277CBE000uLL;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_45:

      goto LABEL_46;
    }

    v67 = v2;
    v68 = v11;
    v66 = v26;
    v28 = v26;
    v69 = v4;
    [(SPQueryResponse *)v4 setEcrGroundedOutput:v28];
    v29 = v28;
    v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v31 = v29;
    v32 = [v31 countByEnumeratingWithState:&v80 objects:buf count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v81;
      v70 = *v81;
      v71 = v31;
      do
      {
        v35 = 0;
        v72 = v33;
        do
        {
          if (*v81 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v80 + 1) + 8 * v35);
          v37 = [v31 objectForKey:{v36, v66}];
          v38 = *(v27 + 2752);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v39 = v37;
            v40 = v39;
            if (v39)
            {
              v74 = v37;
              v75 = v35;
              v41 = [v39 objectForKey:@"rawQueryToken"];
              v73 = v40;
              v42 = [v40 objectForKey:@"personRelationMap"];
              v43 = v42;
              if (v42)
              {
                v78 = 0u;
                v79 = 0u;
                v76 = 0u;
                v77 = 0u;
                v44 = [v42 countByEnumeratingWithState:&v76 objects:v84 count:16];
                if (v44)
                {
                  v45 = v44;
                  v46 = *v77;
                  do
                  {
                    for (i = 0; i != v45; ++i)
                    {
                      if (*v77 != v46)
                      {
                        objc_enumerationMutation(v43);
                      }

                      v48 = *(*(&v76 + 1) + 8 * i);
                      v49 = [v43 objectForKey:v48];
                      if (v49)
                      {
                        v50 = [objc_alloc(MEMORY[0x277D65858]) initWithName:v48 relationLabel:v49 ecrToken:v36 queryRawToken:v41];
                        [v30 addObject:v50];
                      }
                    }

                    v45 = [v43 countByEnumeratingWithState:&v76 objects:v84 count:16];
                  }

                  while (v45);
                }
              }

              v34 = v70;
              v31 = v71;
              v27 = 0x277CBE000;
              v33 = v72;
              v40 = v73;
              v37 = v74;
              v35 = v75;
            }
          }

          ++v35;
        }

        while (v35 != v33);
        v33 = [v31 countByEnumeratingWithState:&v80 objects:buf count:16];
      }

      while (v33);
    }

    v4 = v69;
    [(SPQueryResponse *)v69 setEcrGroundedPersons:v30];

    v51 = [(SPQueryResponse *)v69 ecrGroundedOutput];
    v52 = [v51 count];

    v53 = SPLogForSPLogCategoryDefault();
    v54 = *MEMORY[0x277D4BF50];
    v55 = os_log_type_enabled(v53, ((*MEMORY[0x277D4BF50] & 1) == 0));
    if (v52)
    {
      v2 = v67;
      v11 = v68;
      if (v55)
      {
        *buf = 0;
        v56 = "Added non empty ecrGroundedOutput to spqueryrespone";
LABEL_43:
        _os_log_impl(&dword_26B71B000, v53, ((v54 & 1) == 0), v56, buf, 2u);
      }
    }

    else
    {
      v2 = v67;
      v11 = v68;
      if (v55)
      {
        *buf = 0;
        v56 = "Added empty ecrGroundedOutput to spqueryrespone";
        goto LABEL_43;
      }
    }

    v26 = v66;
    goto LABEL_45;
  }

  v4 = SPLogForSPLogCategoryDefault();
  v5 = *MEMORY[0x277D4BF50];
  if (os_log_type_enabled(&v4->super, ((*MEMORY[0x277D4BF50] & 1) == 0)))
  {
    v6 = atomic_load(&v2->_updatesDisabled);
    *buf = 67109120;
    v86 = v6;
    v7 = "Skip posting; updates disabled %d.";
    v8 = (v5 & 1) == 0;
    p_super = &v4->super;
    v10 = 8;
LABEL_4:
    _os_log_impl(&dword_26B71B000, p_super, v8, v7, buf, v10);
  }

LABEL_56:

  v65 = *MEMORY[0x277D85DE8];
}

- (void)enableUpdates
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__SPQueryTask_enableUpdates__block_invoke;
  block[3] = &unk_279CFE2D8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __28__SPQueryTask_enableUpdates__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = atomic_load((*(a1 + 32) + 8));
  if (v1 <= 0)
  {
    __28__SPQueryTask_enableUpdates__block_invoke_cold_1();
  }

  atomic_fetch_add((*(a1 + 32) + 8), 0xFFFFFFFF);
  v3 = SPLogForSPLogCategoryDefault();
  v4 = *MEMORY[0x277D4BF50];
  if (os_log_type_enabled(v3, ((*MEMORY[0x277D4BF50] & 1) == 0)))
  {
    v5 = atomic_load((*(a1 + 32) + 8));
    v8[0] = 67109120;
    v8[1] = v5;
    _os_log_impl(&dword_26B71B000, v3, ((v4 & 1) == 0), "Enable updates %d", v8, 8u);
  }

  result = [*(a1 + 32) pushAndPostUpdates];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)disableUpdates
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__SPQueryTask_disableUpdates__block_invoke;
  block[3] = &unk_279CFE2D8;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

void __29__SPQueryTask_disableUpdates__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  atomic_fetch_add((*(a1 + 32) + 8), 1u);
  v2 = SPLogForSPLogCategoryDefault();
  v3 = *MEMORY[0x277D4BF50];
  if (os_log_type_enabled(v2, ((*MEMORY[0x277D4BF50] & 1) == 0)))
  {
    v4 = atomic_load((*(a1 + 32) + 8));
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&dword_26B71B000, v2, ((v3 & 1) == 0), "Disable updates %d", v6, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)postSearchAgentUpdatedResultsToDelegate:(id)a3
{
  v11 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [v11 sessionEntityString];
  v6 = [v5 length];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277D0EDB8]);
    v8 = [v11 sessionEntityString];
    v9 = [v7 initWithSessionEntityString:v8];

    v10 = [MEMORY[0x277D0EDB0] sharedInstance];
    [v10 setSharedMapsUserSessionEntity:v9 shareSessionIDWithMaps:1];
  }

  [WeakRetained didReceiveResponse:v11];
}

- (void)updateResultsThroughDelegate:(BOOL)a3 state:(unint64_t)a4 unchanged:(BOOL)a5 sections:(id)a6
{
  v6 = a5;
  queryProcessor = self->_queryProcessor;
  v11 = a6;
  dispatch_assert_queue_V2(queryProcessor);
  v12 = [(SPQueryTask *)self retainAndMergeSections:v11 forState:a4];

  if ([(SPQueryTask *)self readyToUpdate])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [(SPQueryTask *)self unsafeSessionEntityString];
      v16 = malloc_type_malloc(0x28uLL, 0x10600402A2A81BBuLL);
      if (v15)
      {
        v17 = v15;
      }

      *v16 = v15;
      if (v12)
      {
        v18 = v12;
      }

      v16[1] = v12;
      *(v16 + 16) = a3;
      v16[3] = a4;
      *(v16 + 32) = v6;
      if (v6)
      {
        do
        {
          v19 = atomic_load(&self->_deferredUpdate);
          v20 = v19;
          atomic_compare_exchange_strong(&self->_deferredUpdate, &v20, 0);
        }

        while (v20 != v19);
        if (v19)
        {
          *(v16 + 32) = 0;
        }

        atomic_store(v16, &self->_deferredUpdate);
      }

      else
      {
        do
        {
          v19 = atomic_load(&self->_deferredUpdate);
          v21 = v19;
          atomic_compare_exchange_strong(&self->_deferredUpdate, &v21, v16);
        }

        while (v21 != v19);
      }

      if (v19)
      {
        v22 = *(v19 + 8);
        if (v22)
        {
          CFRelease(v22);
        }

        if (*v19)
        {
          CFRelease(*v19);
        }

        free(v19);
      }

      else
      {
        dispatchQueue = self->_dispatchQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __69__SPQueryTask_updateResultsThroughDelegate_state_unchanged_sections___block_invoke;
        block[3] = &unk_279CFE2D8;
        block[4] = self;
        v24 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
        dispatch_async(dispatchQueue, v24);
      }
    }
  }
}

@end