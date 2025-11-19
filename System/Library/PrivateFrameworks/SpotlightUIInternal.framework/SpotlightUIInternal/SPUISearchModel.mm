@interface SPUISearchModel
+ (id)sharedFullZWKInstance;
+ (id)sharedGeneralInstance;
- (BOOL)wantsCompletions;
- (NSArray)sections;
- (SPSearchAgentDelegate)delegate;
- (unint64_t)currentQueryId;
- (void)didReceiveResponse:(id)a3;
- (void)disableUpdates;
- (void)enableUpdates;
- (void)invalidate;
- (void)invalidateQuery:(id)a3;
- (void)purgeMemory;
- (void)updateWithResponse:(id)a3;
@end

@implementation SPUISearchModel

uint64_t __40__SPUISearchModel_sharedGeneralInstance__block_invoke()
{
  sGeneralQueryModel = objc_alloc_init(SPUISearchModelGeneral);

  return MEMORY[0x2821F96F8]();
}

+ (id)sharedGeneralInstance
{
  if (sharedGeneralInstance_onceToken != -1)
  {
    +[SPUISearchModel sharedGeneralInstance];
  }

  v3 = sGeneralQueryModel;

  return v3;
}

+ (id)sharedFullZWKInstance
{
  if (sharedFullZWKInstance_onceToken != -1)
  {
    +[SPUISearchModel sharedFullZWKInstance];
  }

  v3 = sFullZKWQueryModel;

  return v3;
}

uint64_t __40__SPUISearchModel_sharedFullZWKInstance__block_invoke()
{
  sFullZKWQueryModel = objc_alloc_init(SPUISearchModelZKW);

  return MEMORY[0x2821F96F8]();
}

- (SPSearchAgentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSArray)sections
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = SPLogForSPLogCategoryDefault();
  v4 = v3;
  if (*MEMORY[0x277D4BF48])
  {
    v5 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v5 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v3, v5))
  {
    v6 = [(SPQueryResponse *)self->_lastResponse resultSections];
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_26B837000, v4, v5, "Sections: %@", &v10, 0xCu);
  }

  v7 = [(SPQueryResponse *)self->_lastResponse resultSections];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)wantsCompletions
{
  v2 = [(SPUISearchModel *)self queryTask];
  v3 = [v2 queryKind];

  return (v3 - 1) < 2;
}

- (unint64_t)currentQueryId
{
  v3 = [(SPUISearchModel *)self queryTask];
  v4 = [v3 query];
  v5 = [v4 queryContext];

  if (v5)
  {
    v6 = [v5 queryIdent];
  }

  else
  {
    v6 = [(SPUISearchModel *)self lastStoredQueryId];
  }

  v7 = v6;

  return v7;
}

- (void)enableUpdates
{
  updatesDisabled = self->_updatesDisabled;
  if (!updatesDisabled)
  {
    [SPUISearchModel enableUpdates];
  }

  v4 = updatesDisabled - 1;
  self->_updatesDisabled = v4;
  if (!v4)
  {

    [(SPUISearchModel *)self updatesEnabled];
  }
}

- (void)disableUpdates
{
  updatesDisabled = self->_updatesDisabled;
  self->_updatesDisabled = updatesDisabled + 1;
  if (!updatesDisabled)
  {
    [(SPUISearchModel *)self updatesDisabled];
  }
}

- (void)purgeMemory
{
  v3 = [(SPUISearchModel *)self queryTask];
  v4 = [v3 query];
  v5 = [v4 queryContext];
  -[SPUISearchModel setLastStoredQueryId:](self, "setLastStoredQueryId:", [v5 queryIdent]);

  [(SPUISearchModel *)self setLastResponse:0];

  [(SPUISearchModel *)self setQueryTask:0];
}

- (void)updateWithResponse:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 task];
  v6 = [(SPUISearchModel *)self queryTask];

  if (v5 == v6)
  {
    v7 = SPLogForSPLogCategoryDefault();
    v8 = v7;
    if (*MEMORY[0x277D4BF48])
    {
      v9 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v9 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v7, v9))
    {
      *buf = 138412290;
      v49 = v4;
      _os_log_impl(&dword_26B837000, v8, v9, "updateWithResponse: %@", buf, 0xCu);
    }

    v10 = objc_alloc(MEMORY[0x277CBEB18]);
    v11 = [v4 resultSections];
    v36 = [v10 initWithCapacity:{objc_msgSend(v11, "count")}];

    v12 = objc_opt_new();
    v31 = self;
    v13 = [(SPUISearchModel *)self queryTask];
    v14 = [v13 query];
    v37 = [v14 queryContext];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v32 = v4;
    obj = [v4 resultSections];
    v35 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v35)
    {
      v34 = *v43;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v43 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v42 + 1) + 8 * i);
          v17 = [v16 results];
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v18 = v17;
          v19 = [v18 countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v39;
            while (2)
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v39 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                if (!v12 || (v23 = *(*(&v38 + 1) + 8 * j), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || ([v23 resultBundleId], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "isEqualToString:", @"com.apple.searchd.suggestion"), v24, !v25))
                {
                  [v36 addObject:v16];
                  goto LABEL_24;
                }

                v26 = [MEMORY[0x277D65D58] buildResultWithResult:v23 queryContext:v37];
                [v12 addObject:v26];
              }

              v20 = [v18 countByEnumeratingWithState:&v38 objects:v46 count:16];
              if (v20)
              {
                continue;
              }

              break;
            }
          }

LABEL_24:

          if ([v12 count])
          {
            [v16 setResults:v12];
            [v36 addObject:v16];

            v12 = 0;
          }
        }

        v35 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v35);
    }

    v4 = v32;
    [v32 setResultSections:v36];
    [(SPUISearchModel *)v31 setLastResponse:v32];
    v27 = [v32 state];
    [(SPUISearchModel *)v31 setQueryPartiallyComplete:(v27 & 0xFFFFFFFFFFFFFFFELL) == 2];
    [(SPUISearchModel *)v31 setQueryJustHasTopHits:v27 == 1];
    -[SPUISearchModel setQueryComplete:](v31, "setQueryComplete:", [v32 state] == 4);
    v28 = [v32 kind];
    if (v28 == 1)
    {
      v29 = [(SPUISearchModel *)v31 delegate];
      [v29 searchAgentFinishedQueryWithoutAdditionalResults:v31];
    }

    else
    {
      if (v28)
      {
LABEL_33:

        goto LABEL_34;
      }

      v29 = [(SPUISearchModel *)v31 delegate];
      [v29 searchAgentUpdatedResults:v31];
    }

    goto LABEL_33;
  }

LABEL_34:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveResponse:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SPLogForSPLogCategoryDefault();
  v6 = v5;
  if (*MEMORY[0x277D4BF48])
  {
    v7 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v7 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v5, v7))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_26B837000, v6, v7, "Got response %@", &v9, 0xCu);
  }

  [(SPUISearchModel *)self performSelectorOnMainThread:sel_updateWithResponse_ withObject:v4 waitUntilDone:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)invalidateQuery:(id)a3
{
  v4 = a3;
  v5 = [(SPUISearchModel *)self queryTask];

  if (v5 == v4)
  {
    [(SPUISearchModel *)self setLastResponse:0];
    v6 = [(SPUISearchModel *)self delegate];
    [v6 searchAgentUpdatedResults:self];
  }
}

- (void)invalidate
{
  queryTask = self->_queryTask;
  self->_queryTask = 0;

  lastResponse = self->_lastResponse;
  self->_lastResponse = 0;

  self->_queryComplete = 0;
  *&self->_queryJustHasTopHits = 0;
}

@end