@interface AnalyticsEngineCore
+ (id)queue;
- (AnalyticsEngineCore)initWithWorkspace:(id)workspace params:(id)params queue:(id)queue;
- (BOOL)handlesEntity:(id)entity;
- (BOOL)predicateFullyAllowsEvaluation:(id)evaluation;
- (id)entityDictionaryFromObject:(id)object attributeKeys:(id)keys relationshipKeys:(id)relationshipKeys includeObjectID:(BOOL)d;
- (id)extractQueryStringFrom:(id)from isGeneric:(BOOL *)generic;
- (id)getOption:(id)option;
- (id)safeComparisonPredFrom:(id)from forEntity:(id)entity;
- (id)safeCompoundPredicateFrom:(id)from forEntity:(id)entity;
- (id)safePredFrom:(id)from forEntity:(id)entity;
- (id)setOption:(id)option;
- (int)performQueryOnEntityFromCache:(id)cache pred:(id)pred altpred:(id *)altpred actions:(id)actions found:(id *)found;
- (void)_saveAndUnloadAllState;
- (void)createSnapshotFor:(id)for pred:(id)pred actions:(id)actions reply:(id)reply;
- (void)dealloc;
- (void)inquireNOIFor:(id)for orPredicate:(id)predicate requestedKeys:(id)keys options:(id)options connection:(id)connection reply:(id)reply;
- (void)performQueryOnEntity:(id)entity fetchRequestProperties:(id)properties pred:(id)pred sort:(id)sort actions:(id)actions service:(id)service connection:(id)connection reply:(id)self0;
- (void)performQueryOnEntity:(id)entity pred:(id)pred sort:(id)sort actions:(id)actions service:(id)service connection:(id)connection reply:(id)reply;
- (void)performQueryOnEntityCore:(id)core fetchRequestProperties:(id)properties pred:(id)pred sort:(id)sort actions:(id)actions service:(id)service reply:(id)reply;
- (void)performQueryPostProcessing:(id)processing actions:(id)actions processOutcome:(id)outcome;
- (void)resetDataFor:(id)for nameKind:(id)kind;
- (void)setWorkspace:(id)workspace;
- (void)shutdown;
- (void)subscribeToNOIsFor:(id)for orPredicate:(id)predicate options:(id)options connection:(id)connection;
- (void)unsubscribeToNOIs:(id)is connection:(id)connection;
@end

@implementation AnalyticsEngineCore

- (AnalyticsEngineCore)initWithWorkspace:(id)workspace params:(id)params queue:(id)queue
{
  workspaceCopy = workspace;
  paramsCopy = params;
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = AnalyticsEngineCore;
  v11 = [(AnalyticsEngineCore *)&v20 init];
  if (v11)
  {
    date = [MEMORY[0x277CBEAA8] date];
    lastWorkspaceReset = v11->lastWorkspaceReset;
    v11->lastWorkspaceReset = date;

    objc_storeStrong(&v11->_queue, queue);
    v14 = [paramsCopy objectForKeyedSubscript:@"isHelper"];
    v11->_isHelper = [v14 BOOLValue];

    v11->_enableAdHocDatabaseSave = 1;
    [(AnalyticsEngineCore *)v11 setWorkspace:workspaceCopy];
    shared_prefs_store = get_shared_prefs_store();
    if (shared_prefs_store)
    {
      v16 = shared_prefs_store;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __54__AnalyticsEngineCore_initWithWorkspace_params_queue___block_invoke;
      v18[3] = &unk_27898A0A0;
      v19 = v11;
      prefs_add_client(v16, "enable_adhoc_db_save", v18);
    }
  }

  return v11;
}

void __54__AnalyticsEngineCore_initWithWorkspace_params_queue___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86448])
  {
    value = xpc_BOOL_get_value(v5);
    v18 = *(a1 + 32);
    v6 = (a1 + 32);
    if (*(v18 + 48) != value)
    {
      LODWORD(v9) = value;
      v19 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *v6;
        v10 = v19;
        v21 = objc_opt_class();
        v12 = NSStringFromClass(v21);
        v22 = *(*v6 + 48);
        v24 = 138412802;
        v25 = v12;
        v26 = 1024;
        v27 = v22;
        v28 = 1024;
        v29 = v9;
        v13 = "prefs_store: [%@] Setting ad-hoc database save from %d => %d";
        v14 = v10;
        v15 = OS_LOG_TYPE_DEFAULT;
        v16 = 24;
        goto LABEL_9;
      }

LABEL_10:
      *(*v6 + 48) = v9;
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v6 = (a1 + 32);
    if ((*(v7 + 48) & 1) == 0)
    {
      v8 = analyticsLogHandle;
      LOBYTE(v9) = 1;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_INFO))
      {
        v9 = *v6;
        v10 = v8;
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v24 = 138412290;
        v25 = v12;
        v13 = "prefs_store: [%@] Using default setting for ad-hoc database saves (enabled).";
        LOBYTE(v9) = 1;
        v14 = v10;
        v15 = OS_LOG_TYPE_INFO;
        v16 = 12;
LABEL_9:
        _os_log_impl(&dword_23255B000, v14, v15, v13, &v24, v16);

        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AnalyticsEngineCore;
  [(AnalyticsEngineCore *)&v2 dealloc];
}

- (BOOL)handlesEntity:(id)entity
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"AnalyticsEngineCore.m" lineNumber:101 description:{@"Subclasses must provide an impl for %s", "-[AnalyticsEngineCore handlesEntity:]"}];

  return 0;
}

- (void)performQueryOnEntity:(id)entity pred:(id)pred sort:(id)sort actions:(id)actions service:(id)service connection:(id)connection reply:(id)reply
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"AnalyticsEngineCore.m" lineNumber:107 description:{@"Subclasses must provide an impl for %s", "-[AnalyticsEngineCore performQueryOnEntity:pred:sort:actions:service:connection:reply:]"}];
}

- (void)performQueryOnEntity:(id)entity fetchRequestProperties:(id)properties pred:(id)pred sort:(id)sort actions:(id)actions service:(id)service connection:(id)connection reply:(id)self0
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"AnalyticsEngineCore.m" lineNumber:119 description:{@"Subclasses must provide an impl for %s", "-[AnalyticsEngineCore performQueryOnEntity:fetchRequestProperties:pred:sort:actions:service:connection:reply:]"}];
}

- (int)performQueryOnEntityFromCache:(id)cache pred:(id)pred altpred:(id *)altpred actions:(id)actions found:(id *)found
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"AnalyticsEngineCore.m" lineNumber:124 description:{@"Subclasses must provide an impl for %s", "-[AnalyticsEngineCore performQueryOnEntityFromCache:pred:altpred:actions:found:]"}];

  return 2;
}

- (void)performQueryPostProcessing:(id)processing actions:(id)actions processOutcome:(id)outcome
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"AnalyticsEngineCore.m" lineNumber:130 description:{@"Subclasses must provide an impl for %s", "-[AnalyticsEngineCore performQueryPostProcessing:actions:processOutcome:]"}];
}

- (void)createSnapshotFor:(id)for pred:(id)pred actions:(id)actions reply:(id)reply
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"AnalyticsEngineCore.m" lineNumber:135 description:{@"Subclasses must provide an impl for %s", "-[AnalyticsEngineCore createSnapshotFor:pred:actions:reply:]"}];
}

- (id)setOption:(id)option
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"AnalyticsEngineCore.m" lineNumber:140 description:{@"Subclasses must provide an impl for %s", "-[AnalyticsEngineCore setOption:]"}];

  return 0;
}

- (id)getOption:(id)option
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"AnalyticsEngineCore.m" lineNumber:146 description:{@"Subclasses must provide an impl for %s", "-[AnalyticsEngineCore getOption:]"}];

  return 0;
}

- (void)resetDataFor:(id)for nameKind:(id)kind
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"AnalyticsEngineCore.m" lineNumber:152 description:{@"Subclasses must provide an impl for %s", "-[AnalyticsEngineCore resetDataFor:nameKind:]"}];
}

- (void)subscribeToNOIsFor:(id)for orPredicate:(id)predicate options:(id)options connection:(id)connection
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"AnalyticsEngineCore.m" lineNumber:157 description:{@"Subclasses must provide an impl for %s", "-[AnalyticsEngineCore subscribeToNOIsFor:orPredicate:options:connection:]"}];
}

- (void)inquireNOIFor:(id)for orPredicate:(id)predicate requestedKeys:(id)keys options:(id)options connection:(id)connection reply:(id)reply
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"AnalyticsEngineCore.m" lineNumber:162 description:{@"Subclasses must provide an impl for %s", "-[AnalyticsEngineCore inquireNOIFor:orPredicate:requestedKeys:options:connection:reply:]"}];
}

- (void)unsubscribeToNOIs:(id)is connection:(id)connection
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"AnalyticsEngineCore.m" lineNumber:167 description:{@"Subclasses must provide an impl for %s", "-[AnalyticsEngineCore unsubscribeToNOIs:connection:]"}];
}

- (void)setWorkspace:(id)workspace
{
  v19 = *MEMORY[0x277D85DE8];
  workspaceCopy = workspace;
  objc_storeStrong(&self->workspace, workspace);
  if (self->workspace && (v6 = self->_queue) != 0)
  {
    v7 = dispatch_source_create(MEMORY[0x277D85D18], 0, 6uLL, v6);
    mem_alerts = self->mem_alerts;
    self->mem_alerts = v7;

    v9 = self->mem_alerts;
    if (v9)
    {
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __36__AnalyticsEngineCore_setWorkspace___block_invoke;
      handler[3] = &unk_27898A0C8;
      handler[4] = self;
      dispatch_source_set_event_handler(v9, handler);
      dispatch_resume(self->mem_alerts);
    }
  }

  else
  {
    v10 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      workspace = self->workspace;
      queue = self->_queue;
      *buf = 134218240;
      workspaceCopy2 = workspace;
      v17 = 2048;
      v18 = queue;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Skipping registration of memory pressure handler. workspace:%p, queue:%p", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)predicateFullyAllowsEvaluation:(id)evaluation
{
  v48 = *MEMORY[0x277D85DE8];
  evaluationCopy = evaluation;
  _allowsEvaluation = [evaluationCopy _allowsEvaluation];
  v5 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v6 = "disallows";
    if (_allowsEvaluation)
    {
      v6 = "allows";
    }

    *buf = 138412546;
    v45 = evaluationCopy;
    v46 = 2080;
    v47 = v6;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "predicateFullyAllowsEvaluation: Predicate '%@' (%s evaluation)", buf, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = evaluationCopy;
    v7 = evaluationCopy;
    v8 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v45 = v7;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "predicateFullyAllowsEvaluation: Need to verify sub-predicates for compound predicate '%@'", buf, 0xCu);
    }

    v37 = v7;
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v7, 0}];
    v10 = v9;
    if (_allowsEvaluation)
    {
      if ([v9 count])
      {
        do
        {
          firstObject = [v10 firstObject];
          v12 = analyticsLogHandle;
          if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v13 = v12;
            _allowsEvaluation2 = [firstObject _allowsEvaluation];
            *buf = 138412546;
            v15 = "disallows";
            if (_allowsEvaluation2)
            {
              v15 = "allows";
            }

            v45 = firstObject;
            v46 = 2080;
            v47 = v15;
            _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "predicateFullyAllowsEvaluation: Compound predicate '%@' (%s evaluation)", buf, 0x16u);
          }

          v16 = analyticsLogHandle;
          if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v17 = v16;
            subpredicates = [firstObject subpredicates];
            *buf = 138412290;
            v45 = subpredicates;
            _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "predicateFullyAllowsEvaluation:  Validating sub-predicates '%@'", buf, 0xCu);
          }

          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          subpredicates2 = [firstObject subpredicates];
          v20 = [subpredicates2 countByEnumeratingWithState:&v39 objects:v43 count:16];
          if (v20)
          {
            v21 = v20;
            v38 = firstObject;
            v22 = *v40;
            v23 = 1;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v40 != v22)
                {
                  objc_enumerationMutation(subpredicates2);
                }

                v25 = *(*(&v39 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v10 addObject:v25];
                  v26 = analyticsLogHandle;
                  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v45 = v25;
                    _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEBUG, "predicateFullyAllowsEvaluation:   Adding compound sub-predicate '%@' to validation list", buf, 0xCu);
                  }
                }

                else
                {
                  _allowsEvaluation3 = [v25 _allowsEvaluation];
                  v28 = analyticsLogHandle;
                  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136315394;
                    v29 = "NOT ";
                    if (_allowsEvaluation3)
                    {
                      v29 = "";
                    }

                    v45 = v29;
                    v46 = 2112;
                    v47 = v25;
                    _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_DEBUG, "predicateFullyAllowsEvaluation:   Evaluation %sallowed for sub-predicate '%@'", buf, 0x16u);
                  }

                  v23 &= _allowsEvaluation3;
                }
              }

              v21 = [subpredicates2 countByEnumeratingWithState:&v39 objects:v43 count:16];
            }

            while (v21);

            [v10 removeObject:v38];
            if ((v23 & 1) == 0)
            {
              _allowsEvaluation = 0;
              goto LABEL_40;
            }
          }

          else
          {

            [v10 removeObject:firstObject];
          }
        }

        while ([v10 count]);
      }

      _allowsEvaluation = 1;
    }

LABEL_40:
    [v10 removeAllObjects];
    v32 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_INFO))
    {
      v33 = "NOT ";
      if (_allowsEvaluation)
      {
        v33 = "";
      }

      *buf = 136315394;
      v45 = v33;
      v46 = 2112;
      v47 = v37;
      _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_INFO, "predicateFullyAllowsEvaluation: Evaluation %sallowed for compound predicate: '%@'", buf, 0x16u);
    }

    evaluationCopy = v36;
  }

  else
  {
    v30 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_INFO))
    {
      v31 = "NOT ";
      if (_allowsEvaluation)
      {
        v31 = "";
      }

      *buf = 136315394;
      v45 = v31;
      v46 = 2112;
      v47 = evaluationCopy;
      _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_INFO, "predicateFullyAllowsEvaluation: Evaluation %sallowed for predicate: '%@'", buf, 0x16u);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
  return _allowsEvaluation;
}

- (id)safePredFrom:(id)from forEntity:(id)entity
{
  v15 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  entityCopy = entity;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(AnalyticsEngineCore *)self safeCompoundPredicateFrom:fromCopy forEntity:entityCopy];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v8 = [(AnalyticsEngineCore *)self safeComparisonPredFrom:fromCopy forEntity:entityCopy];
  }

  v9 = v8;
  if (v8)
  {
    v10 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_INFO, "SymptomAnalytics safePred: synthesized localPred '%@'", &v13, 0xCu);
    }
  }

LABEL_9:

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)safeCompoundPredicateFrom:(id)from forEntity:(id)entity
{
  fromCopy = from;
  entityCopy = entity;
  compoundPredicateType = [fromCopy compoundPredicateType];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  subpredicates = [fromCopy subpredicates];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __59__AnalyticsEngineCore_safeCompoundPredicateFrom_forEntity___block_invoke;
  v18[3] = &unk_27898A0F0;
  v18[4] = self;
  v11 = entityCopy;
  v19 = v11;
  v12 = v9;
  v20 = v12;
  v13 = fromCopy;
  v21 = v13;
  [subpredicates enumerateObjectsUsingBlock:v18];

  if (![v12 count] || (v14 = objc_msgSend(objc_alloc(MEMORY[0x277CCA920]), "initWithType:subpredicates:", compoundPredicateType, v12)) == 0)
  {
    v15 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "safe predicate: failed to create new compound predicate", v17, 2u);
    }

    v14 = 0;
  }

  return v14;
}

void __59__AnalyticsEngineCore_safeCompoundPredicateFrom_forEntity___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [*(a1 + 32) safeCompoundPredicateFrom:v6 forEntity:*(a1 + 40)];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v16 = 138412290;
        v17 = v12;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "SymptomAnalytics safe predicate: unsupported predicate of class %@", &v16, 0xCu);
      }

      goto LABEL_10;
    }

    if ([v6 _allowsEvaluation])
    {
      v7 = v6;
    }

    else
    {
      v7 = [*(a1 + 32) safeComparisonPredFrom:v6 forEntity:*(a1 + 40)];
    }
  }

  v8 = v7;
  if (v7)
  {
    [*(a1 + 48) addObject:v7];

    goto LABEL_13;
  }

LABEL_10:
  v13 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v14 = *(a1 + 56);
    v16 = 138412290;
    v17 = v14;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "SymptomAnalytics safe predicate: failed to create safe subpredicate for %@. aborting", &v16, 0xCu);
  }

  [*(a1 + 48) removeAllObjects];
  *a4 = 1;
LABEL_13:

  v15 = *MEMORY[0x277D85DE8];
}

- (id)safeComparisonPredFrom:(id)from forEntity:(id)entity
{
  v49 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  entityCopy = entity;
  leftExpression = [fromCopy leftExpression];
  expressionType = [leftExpression expressionType];

  if (expressionType == 3)
  {
    attributesByName = [entityCopy attributesByName];
    allKeys = [attributesByName allKeys];

    relationshipsByName = [entityCopy relationshipsByName];
    allKeys2 = [relationshipsByName allKeys];

    v13 = [allKeys arrayByAddingObjectsFromArray:allKeys2];
    leftExpression2 = [fromCopy leftExpression];
    keyPath = [leftExpression2 keyPath];
    v16 = [keyPath componentsSeparatedByString:@"."];

    if (v16 && [v16 count] && (objc_msgSend(v16, "objectAtIndexedSubscript:", 0), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v13, "containsObject:", v17), v17, (v18 & 1) != 0))
    {
      rightExpression = [fromCopy rightExpression];
      expressionType2 = [rightExpression expressionType];

      if ((expressionType2 & 0xFFFFFFFFFFFFFFFDLL) != 0)
      {
        v21 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
        {
          v22 = v21;
          v23 = NSStringForNSExpressionType(expressionType2);
          *buf = 138412290;
          v48 = v23;
          _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "SymptomAnalytics safe predicate: rhs is not conformant to constant value or variable expression type (%@)", buf, 0xCu);

LABEL_13:
        }
      }

      else
      {
        v34 = MEMORY[0x277CCA9C0];
        leftExpression3 = [fromCopy leftExpression];
        keyPath2 = [leftExpression3 keyPath];
        v46 = [v34 expressionForKeyPath:keyPath2];

        v37 = MEMORY[0x277CCA9C0];
        rightExpression2 = [fromCopy rightExpression];
        v39 = rightExpression2;
        if (expressionType2)
        {
          variable = [rightExpression2 variable];
          [v37 expressionForVariable:variable];
        }

        else
        {
          variable = [rightExpression2 constantValue];
          [v37 expressionForConstantValue:variable];
        }
        v41 = ;

        if (v46 && v41)
        {
          v42 = [objc_alloc(MEMORY[0x277CCA918]) initWithLeftExpression:v46 rightExpression:v41 modifier:0 type:objc_msgSend(fromCopy options:{"predicateOperatorType"), 0}];
          if (!v42)
          {
            v43 = analyticsLogHandle;
            if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_ERROR, "safe predicate: failed to create new comparison predicate", buf, 2u);
            }
          }

          v28 = v42;

          goto LABEL_15;
        }

        v44 = analyticsLogHandle;
        v45 = os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR);
        if (v46)
        {
          if (v45)
          {
            *buf = 138412290;
            v48 = v41;
            _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_ERROR, "SymptomAnalytics safe predicate: rhs failed validation (%@)", buf, 0xCu);
          }
        }

        else
        {
          if (v45)
          {
            *buf = 138412290;
            v48 = 0;
            _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_ERROR, "SymptomAnalytics safe predicate: lhs failed validation (%@)", buf, 0xCu);
          }
        }
      }
    }

    else
    {
      v29 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        v22 = v29;
        leftExpression4 = [fromCopy leftExpression];
        keyPath3 = [leftExpression4 keyPath];
        *buf = 138412290;
        v48 = keyPath3;
        _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "SymptomAnalytics safe predicate: lhs key path is not conformant (%@)", buf, 0xCu);

        goto LABEL_13;
      }
    }

    v28 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v24 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v25 = v24;
    leftExpression5 = [fromCopy leftExpression];
    v27 = NSStringForNSExpressionType([leftExpression5 expressionType]);
    *buf = 138412290;
    v48 = v27;
    _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_ERROR, "SymptomAnalytics safe predicate: lhs is not conformant to keypath expression type (%@)", buf, 0xCu);
  }

  v28 = 0;
LABEL_16:

  v32 = *MEMORY[0x277D85DE8];

  return v28;
}

- (void)_saveAndUnloadAllState
{
  pending_mem_alerts = self->pending_mem_alerts;
  self->pending_mem_alerts = pending_mem_alerts + 1;
  if (!pending_mem_alerts)
  {
    block[9] = v2;
    block[10] = v3;
    v6 = dispatch_time(0, 400000000);
    queue = [(AnalyticsEngineCore *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__AnalyticsEngineCore__saveAndUnloadAllState__block_invoke;
    block[3] = &unk_27898A0C8;
    block[4] = self;
    dispatch_after(v6, queue, block);
  }
}

void __45__AnalyticsEngineCore__saveAndUnloadAllState__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v9 = 134217984;
    v10 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "core analyticsengine: memory pressure event on %p", &v9, 0xCu);
  }

  [*(a1 + 32) shutdown];
  *(*(a1 + 32) + 32) = 0;
  v4 = [MEMORY[0x277CBEAA8] date];
  [v4 timeIntervalSinceDate:*(*(a1 + 32) + 40)];
  if (v5 > 1800.0)
  {
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 134217984;
      v10 = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "core analyticsengine: memory pressure event leading to reset %p", &v9, 0xCu);
    }

    [*(*(a1 + 32) + 8) reset];
    objc_storeStrong((*(a1 + 32) + 40), v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)shutdown
{
  v7 = *MEMORY[0x277D85DE8];
  if (self->workspace)
  {
    v3 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v5 = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "core analyticsengine: saving context for %p", &v5, 0xCu);
    }

    [(AnalyticsWorkspace *)self->workspace save];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)entityDictionaryFromObject:(id)object attributeKeys:(id)keys relationshipKeys:(id)relationshipKeys includeObjectID:(BOOL)d
{
  dCopy = d;
  v45 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  keysCopy = keys;
  relationshipKeysCopy = relationshipKeys;
  v12 = keysCopy;
  v13 = v12;
  if (dCopy)
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v12];
    [v13 addObject:@"objectID"];
  }

  if (v13)
  {
    v14 = [objectCopy dictionaryWithValuesForKeys:v13];
    if (v14)
    {
      v30 = v14;
      v15 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v14];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v31 = relationshipKeysCopy;
      v16 = relationshipKeysCopy;
      v17 = [v16 countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v37;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v37 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v36 + 1) + 8 * i);
            v22 = [objectCopy valueForKeyPath:v21];
            if (v22)
            {
              [v15 setObject:v22 forKey:v21];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v36 objects:v44 count:16];
        }

        while (v18);
      }

      v23 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __97__AnalyticsEngineCore_entityDictionaryFromObject_attributeKeys_relationshipKeys_includeObjectID___block_invoke;
      v34[3] = &unk_27898A118;
      v35 = v23;
      v24 = v23;
      [v15 enumerateKeysAndObjectsUsingBlock:v34];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __97__AnalyticsEngineCore_entityDictionaryFromObject_attributeKeys_relationshipKeys_includeObjectID___block_invoke_75;
      v32[3] = &unk_27898A140;
      v25 = v15;
      v33 = v25;
      [v24 enumerateObjectsUsingBlock:v32];

      v14 = v30;
      relationshipKeysCopy = v31;
    }

    else
    {
      v27 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v41 = objectCopy;
        v42 = 2112;
        v43 = v13;
        _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_ERROR, "SymptomAnalytics entityDictionaryFromObject: failed to synthesize dictionary with values for keys from managed object (%@) with attributes (%@)", buf, 0x16u);
      }

      v25 = 0;
    }
  }

  else
  {
    v26 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_ERROR, "SymptomAnalytics entityDictionaryFromObject: attribute keys array should not be nil when creating an entity dictionary from a managed object", buf, 2u);
    }

    v25 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v25;
}

void __97__AnalyticsEngineCore_entityDictionaryFromObject_attributeKeys_relationshipKeys_includeObjectID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v5];
    v7 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "SymptomAnalytics entityDictionaryFromObject: Found null entry %@ for attribute '%@'. Marking for removal", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __97__AnalyticsEngineCore_entityDictionaryFromObject_attributeKeys_relationshipKeys_includeObjectID___block_invoke_75(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) setObject:0 forKeyedSubscript:v3];
  v4 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_INFO, "SymptomAnalytics entityDictionaryFromObject: Removing null entry for attribute '%@'", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)performQueryOnEntityCore:(id)core fetchRequestProperties:(id)properties pred:(id)pred sort:(id)sort actions:(id)actions service:(id)service reply:(id)reply
{
  v238 = *MEMORY[0x277D85DE8];
  coreCopy = core;
  propertiesCopy = properties;
  predCopy = pred;
  sortCopy = sort;
  actionsCopy = actions;
  serviceCopy = service;
  replyCopy = reply;
  v183 = objc_autoreleasePoolPush();
  v189 = coreCopy;
  if (!self->workspace)
  {
    v22 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *&buf[4] = self;
      _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEBUG, "core analyticsengine: cannot query workspace-less engine %p", buf, 0xCu);
    }

    goto LABEL_15;
  }

  selfCopy = self;
  v187 = [(NSMutableDictionary *)self->spaces objectForKey:coreCopy];
  if (!v187)
  {
    v16 = [objc_alloc(MEMORY[0x277D6B540]) initWithWorkspace:self->workspace entityName:coreCopy withCache:0];
    if (v16)
    {
      v187 = v16;
      [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];
      goto LABEL_5;
    }

    v25 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = coreCopy;
      _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_ERROR, "SymptomAnalytics ServiceImpl: failed to allocate space for entityName:%@", buf, 0xCu);
    }

LABEL_15:
    replyCopy[2](replyCopy, 0);
    goto LABEL_188;
  }

LABEL_5:
  if (([(AnalyticsWorkspace *)self->workspace persistent]& 1) != 0)
  {
    v203 = [v187 getDescriptionForName:coreCopy];
    v17 = v203;
    if (!v203)
    {
      v24 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = coreCopy;
        _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_ERROR, "SymptomAnalytics ServiceImpl: failed to allocate entityDescription for entityName:%@", buf, 0xCu);
      }

      goto LABEL_12;
    }

    v18 = actionsCopy;
    if (actionsCopy)
    {
      v19 = [actionsCopy objectForKeyedSubscript:@"process"];
      if (v19)
      {
        v20 = [actionsCopy objectForKeyedSubscript:@"sweepUsage"];

        if (v20)
        {
          v21 = analyticsLogHandle;
          if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = actionsCopy;
            _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, "SymptomAnalytics ServiceImpl: requesting mutually exclusive service:%@", buf, 0xCu);
          }

LABEL_12:
          replyCopy[2](replyCopy, 0);
LABEL_187:

          goto LABEL_188;
        }
      }

      v201 = [actionsCopy keysOfEntriesPassingTest:&__block_literal_global_1];
      v18 = actionsCopy;
      v17 = v203;
    }

    else
    {
      v201 = 0;
    }

    v227 = 0;
    v226 = 0;
    v26 = [(AnalyticsEngineCore *)self performQueryOnEntityFromCache:v17 pred:predCopy altpred:&v227 actions:v18 found:&v226];
    v180 = v227;
    v181 = v226;
    v27 = analyticsLogHandle;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = [v181 count];
      *buf = 67109376;
      *&buf[4] = v26;
      *&buf[8] = 2048;
      *&buf[10] = v28;
      _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: cache returning %d, %lu records", buf, 0x12u);
    }

    if ((v26 & 0xFFFFFFFD) == 0)
    {
      v43 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_DEBUG, "SymptomAnalytics performQueryOnEntity: found entities in cache", buf, 2u);
      }

      context = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:10];
      v44 = [actionsCopy objectForKeyedSubscript:@"process"];
      v45 = v44 == 0;

      v46 = analyticsLogHandle;
      v47 = os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_INFO);
      if (v45)
      {
        if (v47)
        {
          v65 = v46;
          v66 = [v181 count];
          *buf = 134217984;
          *&buf[4] = v66;
          _os_log_impl(&dword_23255B000, v65, OS_LOG_TYPE_INFO, "SymptomAnalytics performQueryOnEntity: transforming %ld entities in cache into dictionaries", buf, 0xCu);
        }

        v224 = 0u;
        v225 = 0u;
        v222 = 0u;
        v223 = 0u;
        v67 = v181;
        v68 = [v67 countByEnumeratingWithState:&v222 objects:v237 count:16];
        if (v68)
        {
          v69 = *v223;
          do
          {
            for (i = 0; i != v68; ++i)
            {
              if (*v223 != v69)
              {
                objc_enumerationMutation(v67);
              }

              v71 = *(*(&v222 + 1) + 8 * i);
              v72 = objc_autoreleasePoolPush();
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v73 = v71;
                attributesByName = [v203 attributesByName];
                allKeys = [attributesByName allKeys];
                v76 = [(AnalyticsEngineCore *)selfCopy entityDictionaryFromObject:v73 attributeKeys:allKeys relationshipKeys:v201 includeObjectID:0];

                if (v76)
                {
                  [context addObject:v76];
                }

                else
                {
                  v81 = analyticsLogHandle;
                  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    *&buf[4] = v203;
                    *&buf[12] = 2112;
                    *&buf[14] = v73;
                    _os_log_impl(&dword_23255B000, v81, OS_LOG_TYPE_ERROR, "SymptomAnalytics performQueryOnEntity: entity dictionary creation returned nil for description (%@) and managed object (%@)", buf, 0x16u);
                  }
                }
              }

              else
              {
                v77 = analyticsLogHandle;
                if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
                {
                  v78 = v77;
                  v79 = objc_opt_class();
                  v80 = NSStringFromClass(v79);
                  *buf = 138412546;
                  *&buf[4] = v80;
                  *&buf[12] = 2112;
                  *&buf[14] = v71;
                  _os_log_impl(&dword_23255B000, v78, OS_LOG_TYPE_ERROR, "SymptomAnalytics performQueryOnEntity: found unexpected class %@ object %@ in cache results array", buf, 0x16u);
                }
              }

              objc_autoreleasePoolPop(v72);
            }

            v68 = [v67 countByEnumeratingWithState:&v222 objects:v237 count:16];
          }

          while (v68);
        }
      }

      else
      {
        if (v47)
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v46, OS_LOG_TYPE_INFO, "SymptomAnalytics performQueryOnEntity: post-processing entities in cache", buf, 2u);
        }

        [(AnalyticsEngineCore *)self performQueryPostProcessing:v181 actions:actionsCopy processOutcome:context];
      }

      v82 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v83 = v82;
        v84 = [v181 count];
        *buf = 134217984;
        *&buf[4] = v84;
        _os_log_impl(&dword_23255B000, v83, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: %lu records from query", buf, 0xCu);
      }

      goto LABEL_186;
    }

    v29 = [actionsCopy objectForKeyedSubscript:@"fetchOffset"];
    unsignedIntegerValue = [v29 unsignedIntegerValue];

    v30 = [actionsCopy objectForKeyedSubscript:@"fetchLimit"];
    unsignedIntegerValue2 = [v30 unsignedIntegerValue];

    v32 = analyticsLogHandle;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      *&buf[4] = coreCopy;
      *&buf[12] = 2048;
      *&buf[14] = unsignedIntegerValue;
      *&buf[22] = 2048;
      *&buf[24] = unsignedIntegerValue2;
      _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_DEBUG, "SymptomAnalytics performQueryOnEntity: fetchEntity query required for %@, offset %lu, limit %lu", buf, 0x20u);
    }

    if (propertiesCopy)
    {
      v33 = objc_autoreleasePoolPush();
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      *&buf[24] = 0;
      workspace = selfCopy->workspace;
      v221[0] = MEMORY[0x277D85DD0];
      v221[1] = 3221225472;
      v221[2] = __103__AnalyticsEngineCore_performQueryOnEntityCore_fetchRequestProperties_pred_sort_actions_service_reply___block_invoke_80;
      v221[3] = &unk_27898A188;
      v221[4] = buf;
      [(AnalyticsWorkspace *)workspace enumerateResidentObjectsOfType:v203 usingBlock:v221];
      v35 = analyticsLogHandle;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        v36 = *(*&buf[8] + 24);
        *v235 = 134218242;
        *&v235[4] = v36;
        *&v235[12] = 2112;
        *&v235[14] = coreCopy;
        _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_DEBUG, "SymptomAnalytics performQueryOnEntity: dirtyCount is %ld for %@", v235, 0x16u);
      }

      if (*(*&buf[8] + 24))
      {
        v37 = analyticsLogHandle;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          *v235 = 138412290;
          *&v235[4] = coreCopy;
          _os_log_impl(&dword_23255B000, v37, OS_LOG_TYPE_INFO, "SymptomAnalytics performQueryOnEntity: saving changes before performing database queries for entity %@", v235, 0xCu);
        }

        [(AnalyticsWorkspace *)selfCopy->workspace save];
      }

      v38 = buf;
    }

    else
    {
      v48 = [actionsCopy objectForKeyedSubscript:@"sweepUsage"];
      if (!v48 || (enableAdHocDatabaseSave = selfCopy->_enableAdHocDatabaseSave, v48, !enableAdHocDatabaseSave))
      {
LABEL_41:
        v39 = [actionsCopy objectForKeyedSubscript:@"process"];
        v40 = v39 == 0;

        v41 = analyticsLogHandle;
        if (!v40)
        {
          if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v41, OS_LOG_TYPE_INFO, "SymptomAnalytics performQueryOnEntity: query requires post-processing, fetching entities as objects", buf, 2u);
          }

          if (v180)
          {
            v42 = v180;
          }

          else
          {
            v42 = predCopy;
          }

          v179 = [v187 fetchEntitiesFreeForm:v42 sortDesc:sortCopy];
          context = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:10];
          [(AnalyticsEngineCore *)selfCopy performQueryPostProcessing:v179 actions:actionsCopy processOutcome:context];
          goto LABEL_183;
        }

        v61 = analyticsLogHandle;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v61, OS_LOG_TYPE_INFO, "SymptomAnalytics performQueryOnEntity: fetching entities as dictionary", buf, 2u);
        }

        v176 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (propertiesCopy)
        {
          fetchProperties = [propertiesCopy fetchProperties];
          v63 = [fetchProperties count] == 0;

          if (v63)
          {
            goto LABEL_95;
          }

          fetchProperties2 = [propertiesCopy fetchProperties];
        }

        else
        {
          attributesByName2 = [v203 attributesByName];
          allKeys2 = [attributesByName2 allKeys];
          [v176 addObjectsFromArray:allKeys2];

          fetchProperties2 = [v201 allObjects];
        }

        v87 = fetchProperties2;
        [v176 addObjectsFromArray:fetchProperties2];

LABEL_95:
        v88 = objc_alloc(MEMORY[0x277CBEB58]);
        mainObjectContext = [(AnalyticsWorkspace *)selfCopy->workspace mainObjectContext];
        updatedObjects = [mainObjectContext updatedObjects];
        v174 = [v88 initWithSet:updatedObjects];

        v91 = objc_alloc(MEMORY[0x277CBEB58]);
        mainObjectContext2 = [(AnalyticsWorkspace *)selfCopy->workspace mainObjectContext];
        insertedObjects = [mainObjectContext2 insertedObjects];
        v173 = [v91 initWithSet:insertedObjects];

        v94 = analyticsLogHandle;
        if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
        {
          v95 = [v174 count];
          v96 = [v173 count];
          *buf = 134218240;
          *&buf[4] = v95;
          *&buf[12] = 2048;
          *&buf[14] = v96;
          _os_log_impl(&dword_23255B000, v94, OS_LOG_TYPE_DEBUG, "SymptomAnalytics performQueryOnEntity: updatedObjects: (%ld) insertedObjects: (%ld)", buf, 0x16u);
        }

        v97 = MEMORY[0x277CCAC30];
        managedObjectClassName = [v203 managedObjectClassName];
        v170 = [v97 predicateWithFormat:@"self isKindOfClass: %@", NSClassFromString(managedObjectClassName)];

        v99 = predCopy;
        if (v180)
        {
          v99 = v180;
        }

        v100 = v99;
        v101 = analyticsLogHandle;
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
        {
          _allowsEvaluation = [v100 _allowsEvaluation];
          *buf = 67110146;
          *&buf[4] = _allowsEvaluation;
          *&buf[8] = 2048;
          *&buf[10] = v100;
          *&buf[18] = 2112;
          *&buf[20] = v100;
          *&buf[28] = 2048;
          *&buf[30] = v180;
          *&buf[38] = 2048;
          *&buf[40] = predCopy;
          _os_log_impl(&dword_23255B000, v101, OS_LOG_TYPE_DEBUG, "SymptomAnalytics performQueryOnEntity: targetPred(%d) %p: %@ (altpred: %p, pred: %p)", buf, 0x30u);
        }

        if (![(AnalyticsEngineCore *)selfCopy predicateFullyAllowsEvaluation:v100])
        {
          v103 = [(AnalyticsEngineCore *)selfCopy safePredFrom:v100 forEntity:v203];

          v100 = v103;
        }

        if (!v100)
        {
          v114 = analyticsLogHandle;
          if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v114, OS_LOG_TYPE_ERROR, "SymptomAnalytics performQueryOnEntity: failed to process target predicate", buf, 2u);
          }

          v179 = 0;
          context = 0;
          goto LABEL_182;
        }

        v171 = v100;
        v104 = objc_alloc(MEMORY[0x277CCA920]);
        v233[0] = v170;
        v233[1] = v100;
        v105 = [MEMORY[0x277CBEA60] arrayWithObjects:v233 count:2];
        v172 = [v104 initWithType:1 subpredicates:v105];

        v106 = analyticsLogHandle;
        if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v172;
          _os_log_impl(&dword_23255B000, v106, OS_LOG_TYPE_INFO, "SymptomAnalytics performQueryOnEntity: performing filter with predicate %@", buf, 0xCu);
        }

        v175 = [v174 filteredSetUsingPredicate:v172];
        v177 = [v173 filteredSetUsingPredicate:v172];
        v107 = analyticsLogHandle;
        if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
        {
          v108 = [v175 count];
          v109 = [v177 count];
          *buf = 134218240;
          *&buf[4] = v108;
          *&buf[12] = 2048;
          *&buf[14] = v109;
          _os_log_impl(&dword_23255B000, v107, OS_LOG_TYPE_DEBUG, "SymptomAnalytics performQueryOnEntity: filteredUpdatedObjects: (%ld) filteredInsertedObjects: (%ld)", buf, 0x16u);
        }

        v110 = [v175 count];
        v111 = v110 != 0;
        v169 = [v177 count] != 0;
        v112 = analyticsLogHandle;
        if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          *&buf[4] = v171;
          *&buf[12] = 2048;
          *&buf[14] = unsignedIntegerValue2;
          *&buf[22] = 2048;
          *&buf[24] = unsignedIntegerValue;
          _os_log_impl(&dword_23255B000, v112, OS_LOG_TYPE_DEBUG, "SymptomAnalytics performQueryOnEntity: performing query with predicate %@, limit %lu, offset %lu", buf, 0x20u);
        }

        if (sortCopy)
        {
          v232 = sortCopy;
          v113 = [MEMORY[0x277CBEA60] arrayWithObjects:&v232 count:1];
        }

        else
        {
          v113 = 0;
        }

        LOBYTE(v168) = v110 != 0;
        v115 = [v187 fetchEntityDictionariesWithProperties:v176 fetchRequestProperties:propertiesCopy predicate:v171 sortDescriptors:v113 limit:unsignedIntegerValue2 offset:unsignedIntegerValue includeObjectID:v168];
        if (sortCopy)
        {
        }

        v116 = analyticsLogHandle;
        if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v115;
          _os_log_impl(&dword_23255B000, v116, OS_LOG_TYPE_DEBUG, "SymptomAnalytics performQueryOnEntity: query result: %@", buf, 0xCu);
        }

        v117 = v115;
        v179 = v117;
        if (v111)
        {
          v193 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v118 = analyticsLogHandle;
          if (os_log_type_enabled(v118, OS_LOG_TYPE_INFO))
          {
            v119 = [v175 count];
            v120 = [v179 count];
            *buf = 134218240;
            *&buf[4] = v119;
            *&buf[12] = 2048;
            *&buf[14] = v120;
            _os_log_impl(&dword_23255B000, v118, OS_LOG_TYPE_INFO, "SymptomAnalytics performQueryOnEntity: Need to merge %ld objects with %ld results from query", buf, 0x16u);
          }

          v195 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v218 = 0u;
          v219 = 0u;
          v216 = 0u;
          v217 = 0u;
          v121 = v175;
          v122 = [v121 countByEnumeratingWithState:&v216 objects:v231 count:16];
          if (v122)
          {
            v123 = *v217;
            do
            {
              for (j = 0; j != v122; ++j)
              {
                if (*v217 != v123)
                {
                  objc_enumerationMutation(v121);
                }

                v125 = *(*(&v216 + 1) + 8 * j);
                attributesByName3 = [v203 attributesByName];
                allKeys3 = [attributesByName3 allKeys];
                v128 = [(AnalyticsEngineCore *)selfCopy entityDictionaryFromObject:v125 attributeKeys:allKeys3 relationshipKeys:v201 includeObjectID:1];

                if (v128)
                {
                  [v195 addObject:v128];
                }

                else
                {
                  v129 = analyticsLogHandle;
                  if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    *&buf[4] = v203;
                    *&buf[12] = 2112;
                    *&buf[14] = v125;
                    _os_log_impl(&dword_23255B000, v129, OS_LOG_TYPE_ERROR, "SymptomAnalytics performQueryOnEntity: entity dictionary creation returned nil for description (%@) and managed object (%@)", buf, 0x16u);
                  }
                }
              }

              v122 = [v121 countByEnumeratingWithState:&v216 objects:v231 count:16];
            }

            while (v122);
          }

          v214 = 0u;
          v215 = 0u;
          v212 = 0u;
          v213 = 0u;
          obj = v179;
          v194 = [obj countByEnumeratingWithState:&v212 objects:v230 count:16];
          if (v194)
          {
            v192 = *v213;
            do
            {
              v130 = 0;
              do
              {
                if (*v213 != v192)
                {
                  v131 = v130;
                  objc_enumerationMutation(obj);
                  v130 = v131;
                }

                v197 = v130;
                v132 = *(*(&v212 + 1) + 8 * v130);
                contexta = objc_autoreleasePoolPush();
                v210 = 0u;
                v211 = 0u;
                v208 = 0u;
                v209 = 0u;
                v133 = v195;
                v134 = [v133 countByEnumeratingWithState:&v208 objects:v229 count:16];
                if (v134)
                {
                  v135 = *v209;
LABEL_142:
                  v136 = 0;
                  while (1)
                  {
                    if (*v209 != v135)
                    {
                      objc_enumerationMutation(v133);
                    }

                    v137 = *(*(&v208 + 1) + 8 * v136);
                    v138 = [v132 objectForKeyedSubscript:@"objectID"];
                    v139 = [v137 objectForKeyedSubscript:@"objectID"];
                    v140 = [v138 isEqual:v139];

                    if (v140)
                    {
                      break;
                    }

                    if (v134 == ++v136)
                    {
                      v134 = [v133 countByEnumeratingWithState:&v208 objects:v229 count:16];
                      if (v134)
                      {
                        goto LABEL_142;
                      }

                      goto LABEL_148;
                    }
                  }

                  v141 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v137];
                  [v141 setObject:0 forKeyedSubscript:@"objectID"];
                  v142 = v137;

                  if (v142)
                  {
                    [v133 removeObject:v142];
                  }

                  objc_autoreleasePoolPop(contexta);
                  if (v141)
                  {
                    goto LABEL_153;
                  }
                }

                else
                {
LABEL_148:

                  objc_autoreleasePoolPop(contexta);
                }

                v141 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v132];
                [v141 setObject:0 forKeyedSubscript:@"objectID"];
LABEL_153:
                [v193 addObject:v141];

                v130 = v197 + 1;
              }

              while (v197 + 1 != v194);
              v194 = [obj countByEnumeratingWithState:&v212 objects:v230 count:16];
            }

            while (v194);
          }

          v143 = v193;
          v144 = v169;
          if (unsignedIntegerValue)
          {
            v144 = 0;
          }

          if (v144)
          {
            if (v143)
            {
              v145 = v143;
              v196 = v145;
              v198 = v145;
LABEL_167:
              v148 = analyticsLogHandle;
              if (os_log_type_enabled(v148, OS_LOG_TYPE_INFO))
              {
                v149 = [v177 count];
                v150 = [v179 count];
                *buf = 134218240;
                *&buf[4] = v149;
                *&buf[12] = 2048;
                *&buf[14] = v150;
                _os_log_impl(&dword_23255B000, v148, OS_LOG_TYPE_INFO, "SymptomAnalytics performQueryOnEntity: Adding %lu new objects to %lu results from query", buf, 0x16u);
              }

              v206 = 0u;
              v207 = 0u;
              v204 = 0u;
              v205 = 0u;
              v151 = v177;
              v152 = [v151 countByEnumeratingWithState:&v204 objects:v228 count:16];
              if (v152)
              {
                v153 = *v205;
                do
                {
                  for (k = 0; k != v152; ++k)
                  {
                    if (*v205 != v153)
                    {
                      objc_enumerationMutation(v151);
                    }

                    v155 = *(*(&v204 + 1) + 8 * k);
                    attributesByName4 = [v203 attributesByName];
                    allKeys4 = [attributesByName4 allKeys];
                    v158 = [(AnalyticsEngineCore *)selfCopy entityDictionaryFromObject:v155 attributeKeys:allKeys4 relationshipKeys:v201 includeObjectID:0];

                    [v145 addObject:v158];
                    v159 = analyticsLogHandle;
                    if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
                    {
                      v160 = [v158 objectForKeyedSubscript:@"hasProcess.procName"];
                      v161 = [v158 objectForKeyedSubscript:@"objectID"];
                      *buf = 138412546;
                      *&buf[4] = v160;
                      *&buf[12] = 2112;
                      *&buf[14] = v161;
                      _os_log_impl(&dword_23255B000, v159, OS_LOG_TYPE_DEBUG, "  SymptomAnalytics performQueryOnEntity: new entry for process %@ [%@]", buf, 0x16u);
                    }
                  }

                  v152 = [v151 countByEnumeratingWithState:&v204 objects:v228 count:16];
                }

                while (v152);
              }

              v162 = analyticsLogHandle;
              if (os_log_type_enabled(v162, OS_LOG_TYPE_DEBUG))
              {
                v163 = [v179 count];
                v164 = [v145 count];
                *buf = 134218240;
                *&buf[4] = v163;
                *&buf[12] = 2048;
                *&buf[14] = v164;
                _os_log_impl(&dword_23255B000, v162, OS_LOG_TYPE_DEBUG, "SymptomAnalytics performQueryOnEntity: %ld entries => %ld entries", buf, 0x16u);
              }

              context = v145;
              v143 = v196;
              goto LABEL_181;
            }

            v147 = 0;
LABEL_166:
            v198 = v147;
            v145 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v179];
            v196 = 0;
            goto LABEL_167;
          }

          context = v143;
        }

        else
        {
          v146 = v169;
          if (unsignedIntegerValue)
          {
            v146 = 0;
          }

          v147 = v117;
          if (v146)
          {
            goto LABEL_166;
          }

          v143 = 0;
          context = v117;
        }

LABEL_181:

        v100 = v171;
LABEL_182:

LABEL_183:
        v165 = analyticsLogHandle;
        if (os_log_type_enabled(v165, OS_LOG_TYPE_DEBUG))
        {
          v166 = [context count];
          *buf = 134218242;
          *&buf[4] = v166;
          *&buf[12] = 2112;
          *&buf[14] = context;
          _os_log_impl(&dword_23255B000, v165, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: %lu records from query %@", buf, 0x16u);
        }

LABEL_186:
        (replyCopy)[2](replyCopy, context);

        goto LABEL_187;
      }

      v33 = objc_autoreleasePoolPush();
      *v235 = 0;
      *&v235[8] = v235;
      *&v235[16] = 0x2020000000;
      v236 = 0;
      v50 = selfCopy->workspace;
      v220[0] = MEMORY[0x277D85DD0];
      v220[1] = 3221225472;
      v220[2] = __103__AnalyticsEngineCore_performQueryOnEntityCore_fetchRequestProperties_pred_sort_actions_service_reply___block_invoke_82;
      v220[3] = &unk_27898A188;
      v220[4] = v235;
      [(AnalyticsWorkspace *)v50 enumerateResidentObjectsOfType:v203 usingBlock:v220];
      v51 = [(AnalyticsWorkspace *)selfCopy->workspace canCloneObjectsOfType:v203];
      v52 = (*(*&v235[8] + 24) < 0xBuLL) & v51;
      v53 = analyticsLogHandle;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        v54 = *(*&v235[8] + 24);
        name = [v203 name];
        v56 = name;
        v57 = "NOT ";
        *buf = 134218754;
        *&buf[4] = v54;
        if (v51)
        {
          v58 = "";
        }

        else
        {
          v58 = "NOT ";
        }

        *&buf[12] = 2112;
        *&buf[14] = name;
        *&buf[22] = 2080;
        if (!v52)
        {
          v57 = "";
        }

        *&buf[24] = v58;
        *&buf[32] = 2080;
        *&buf[34] = v57;
        _os_log_impl(&dword_23255B000, v53, OS_LOG_TYPE_DEBUG, "SymptomAnalytics sweep: MOC dirty with %lu objects of type %@, %sclonable, will %ssave", buf, 0x2Au);
      }

      if ((v52 & 1) == 0)
      {
        v59 = analyticsLogHandle;
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          v60 = *(*&v235[8] + 24) > 0xAuLL;
          *buf = 67109376;
          *&buf[4] = v60;
          *&buf[8] = 1024;
          *&buf[10] = v51 ^ 1;
          _os_log_impl(&dword_23255B000, v59, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics performQueryOnEntity: workspace save (dirty: %d, not clonable: %d)", buf, 0xEu);
        }

        [(AnalyticsWorkspace *)selfCopy->workspace save];
      }

      v38 = v235;
    }

    _Block_object_dispose(v38, 8);
    objc_autoreleasePoolPop(v33);
    goto LABEL_41;
  }

  v23 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = coreCopy;
    _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_ERROR, "SymptomAnalytics ServiceImpl: workspace is non-persistent:%@", buf, 0xCu);
  }

  replyCopy[2](replyCopy, 0);

LABEL_188:
  objc_autoreleasePoolPop(v183);

  v167 = *MEMORY[0x277D85DE8];
}

uint64_t __103__AnalyticsEngineCore_performQueryOnEntityCore_fetchRequestProperties_pred_sort_actions_service_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB68] null];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v3 isEqual:@"copyRelationship"];
  }

  return v6;
}

- (id)extractQueryStringFrom:(id)from isGeneric:(BOOL *)generic
{
  fromCopy = from;
  *generic = 0;
  if ([fromCopy predicateOperatorType] != 4)
  {
    goto LABEL_9;
  }

  leftExpression = [fromCopy leftExpression];
  expressionType = [leftExpression expressionType];

  if (expressionType != 3)
  {
    goto LABEL_9;
  }

  rightExpression = [fromCopy rightExpression];
  if ([rightExpression expressionType])
  {
  }

  else
  {
    rightExpression2 = [fromCopy rightExpression];
    constantValue = [rightExpression2 constantValue];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      rightExpression3 = [fromCopy rightExpression];
      constantValue2 = [rightExpression3 constantValue];

      goto LABEL_10;
    }
  }

  rightExpression4 = [fromCopy rightExpression];
  expressionType2 = [rightExpression4 expressionType];

  if (expressionType2 == 2)
  {
    constantValue2 = 0;
    *generic = 1;
  }

  else
  {
LABEL_9:
    constantValue2 = 0;
  }

LABEL_10:

  return constantValue2;
}

+ (id)queue
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"AnalyticsEngineCore.m" lineNumber:867 description:{@"Subclasses must provide an impl for %s", "+[AnalyticsEngineCore queue]"}];

  return 0;
}

@end