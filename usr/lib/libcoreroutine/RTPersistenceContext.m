@interface RTPersistenceContext
- (BOOL)_processError:(id *)a3;
- (BOOL)_shouldExecute:(id *)a3;
- (BOOL)save:(id *)a3;
- (BOOL)shouldSubstituteVariables:(id)a3 inPredicate:(id)a4 entityName:(id)a5 model:(id)a6;
- (BOOL)validateEntityName:(id)a3 inModel:(id)a4;
- (RTPersistenceContext)initWithConcurrencyType:(unint64_t)a3 options:(unint64_t)a4;
- (RTPersistenceContextDelegate)delegate;
- (id)executeFetchRequest:(id)a3 error:(id *)a4;
- (id)executeRequest:(id)a3 error:(id *)a4;
- (id)predicateWithDefaultSubstitutionVariables:(id)a3;
- (id)substitutionVariableKeys;
- (unint64_t)countForFetchRequest:(id)a3 error:(id *)a4;
- (void)_updateRequest:(id *)a3 includingContextOptions:(unint64_t)a4;
@end

@implementation RTPersistenceContext

- (id)substitutionVariableKeys
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (([(RTPersistenceContext *)self options]& 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v3 = MEMORY[0x277CBEB98];
    v9 = @"RT_CURRENT_DEVICE";
    v4 = [(NSManagedObjectContext *)self currentDevice];
    v10[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v6 = [v5 allKeys];
    v7 = [v3 setWithArray:v6];
  }

  return v7;
}

- (RTPersistenceContext)initWithConcurrencyType:(unint64_t)a3 options:(unint64_t)a4
{
  if (a4 > 3)
  {
    v6 = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = RTPersistenceContext;
    v5 = [(RTPersistenceContext *)&v8 initWithConcurrencyType:a3];
    if (v5)
    {
      v5->_options = a4;
    }

    self = v5;
    v6 = self;
  }

  return v6;
}

- (id)predicateWithDefaultSubstitutionVariables:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"RT_CURRENT_DEVICE";
  v4 = a3;
  v5 = [(NSManagedObjectContext *)self currentDevice];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 predicateWithSubstitutionVariables:v6];

  return v7;
}

- (BOOL)validateEntityName:(id)a3 inModel:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 hasPrefix:@"RT"])
  {
    v7 = [v6 entitiesByName];
    v8 = [v7 objectForKeyedSubscript:v5];
    v9 = v8 != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldSubstituteVariables:(id)a3 inPredicate:(id)a4 entityName:(id)a5 model:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  predicateInspector = self->_predicateInspector;
  if (!predicateInspector)
  {
    v15 = objc_opt_new();
    v16 = self->_predicateInspector;
    self->_predicateInspector = v15;

    predicateInspector = self->_predicateInspector;
  }

  v17 = [(RTPredicateInspector *)predicateInspector predicate:v11 referencesSubstitutionVariablesFromSet:v10];
  v18 = [(RTPersistenceContext *)self validateEntityName:v12 inModel:v13];

  return v17 && v18;
}

- (id)executeRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && ![(RTPersistenceContext *)self _shouldExecute:a4])
  {
    v17 = 0;
    goto LABEL_20;
  }

  v7 = [(RTPersistenceContext *)self substitutionVariableKeys];
  v8 = [(RTPersistenceContext *)self persistentStoreCoordinator];
  v9 = [v8 managedObjectModel];

  if ([v6 requestType] == 1)
  {
    v10 = [v6 predicate];
    v11 = [v6 entityName];
    if ([(RTPersistenceContext *)self shouldSubstituteVariables:v7 inPredicate:v10 entityName:v11 model:v9])
    {
      v12 = [v6 predicate];
      v13 = [(RTPersistenceContext *)self predicateWithDefaultSubstitutionVariables:v12];
      [v6 setPredicate:v13];
    }

    v36 = v6;
    v14 = &v36;
LABEL_16:
    [(RTPersistenceContext *)self _updateRequest:v14 includingContextOptions:[(RTPersistenceContext *)self options]];
    v25 = *v14;

    v6 = v25;
    goto LABEL_17;
  }

  if ([v6 requestType] == 6)
  {
    v10 = [v6 predicate];
    v11 = [v6 entityName];
    if ([(RTPersistenceContext *)self shouldSubstituteVariables:v7 inPredicate:v10 entityName:v11 model:v9])
    {
      v15 = [v6 predicate];
      v16 = [(RTPersistenceContext *)self predicateWithDefaultSubstitutionVariables:v15];
      [v6 setPredicate:v16];
    }

    v35 = v6;
    v14 = &v35;
    goto LABEL_16;
  }

  if ([v6 requestType] == 7)
  {
    v18 = [v6 fetchRequest];
    v10 = [v18 predicate];

    v19 = [v6 fetchRequest];
    v11 = [v19 entityName];

    if ([(RTPersistenceContext *)self shouldSubstituteVariables:v7 inPredicate:v10 entityName:v11 model:v9])
    {
      v20 = [v6 fetchRequest];
      v30 = [v20 copy];

      v21 = [v6 fetchRequest];
      v22 = [v21 predicate];
      v23 = [(RTPersistenceContext *)self predicateWithDefaultSubstitutionVariables:v22];
      [v30 setPredicate:v23];

      v24 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v30];
      [v24 setResultType:{objc_msgSend(v6, "resultType")}];

      v6 = v24;
    }

    v34 = v6;
    v14 = &v34;
    goto LABEL_16;
  }

LABEL_17:
  v32.receiver = self;
  v32.super_class = RTPersistenceContext;
  v33 = 0;
  v17 = [(RTPersistenceContext *)&v32 executeRequest:v6 error:&v33];
  v26 = v33;
  v31 = v26;
  [(RTPersistenceContext *)self _processError:&v31];
  v27 = v31;

  if (a4)
  {
    v28 = v27;
    *a4 = v27;
  }

LABEL_20:

  return v17;
}

- (id)executeFetchRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(RTPersistenceContext *)self _shouldExecute:a4])
  {
    v7 = [(RTPersistenceContext *)self substitutionVariableKeys];
    v8 = [(RTPersistenceContext *)self persistentStoreCoordinator];
    v9 = [v8 managedObjectModel];

    v10 = [v6 predicate];
    v11 = [v6 entityName];
    v12 = [(RTPersistenceContext *)self shouldSubstituteVariables:v7 inPredicate:v10 entityName:v11 model:v9];

    if (v12)
    {
      v13 = [v6 predicate];
      v14 = [(RTPersistenceContext *)self predicateWithDefaultSubstitutionVariables:v13];
      [v6 setPredicate:v14];
    }

    v24 = v6;
    [(RTPersistenceContext *)self _updateRequest:&v24 includingContextOptions:[(RTPersistenceContext *)self options]];
    v15 = v24;

    v22.receiver = self;
    v22.super_class = RTPersistenceContext;
    v23 = 0;
    v16 = [(RTPersistenceContext *)&v22 executeFetchRequest:v15 error:&v23];
    v17 = v23;
    v21 = v17;
    [(RTPersistenceContext *)self _processError:&v21];
    v18 = v21;

    if (a4)
    {
      v19 = v18;
      *a4 = v18;
    }

    v6 = v15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)save:(id *)a3
{
  v31 = *MEMORY[0x277D85DE8];
  if ([(RTPersistenceContext *)self _shouldExecute:?])
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    v10 = [v6 stringWithFormat:@"%@-%@", v8, v9];
    [v10 UTF8String];
    v11 = os_transaction_create();

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = NSStringFromSelector(a2);
        *buf = 138412546;
        v28 = v21;
        v29 = 2112;
        v30 = v22;
        _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", buf, 0x16u);
      }
    }

    v25.receiver = self;
    v25.super_class = RTPersistenceContext;
    v26 = 0;
    v13 = [(RTPersistenceContext *)&v25 save:&v26];
    v14 = v26;
    v15 = v14;
    if (v13 && !v14)
    {
      if ([(RTPersistenceContext *)self mirroringQualityOfService])
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v24 = 0;
        LOBYTE(v13) = [WeakRetained persistenceContextPerformedSave:self error:&v24];
        v15 = v24;
      }

      else
      {
        v15 = 0;
        LOBYTE(v13) = 1;
      }
    }

    v23 = v15;
    [(RTPersistenceContext *)self _processError:&v23];
    v17 = v23;

    if (a3)
    {
      v18 = v17;
      *a3 = v17;
    }

    [(RTPersistenceContext *)self setMirroringQualityOfService:0];
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (unint64_t)countForFetchRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(RTPersistenceContext *)self _shouldExecute:a4])
  {
    v7 = [(RTPersistenceContext *)self substitutionVariableKeys];
    v8 = [(RTPersistenceContext *)self persistentStoreCoordinator];
    v9 = [v8 managedObjectModel];

    v10 = [v6 predicate];
    v11 = [v6 entityName];
    v12 = [(RTPersistenceContext *)self shouldSubstituteVariables:v7 inPredicate:v10 entityName:v11 model:v9];

    if (v12)
    {
      v13 = [v6 predicate];
      v14 = [(RTPersistenceContext *)self predicateWithDefaultSubstitutionVariables:v13];
      [v6 setPredicate:v14];
    }

    v24 = v6;
    [(RTPersistenceContext *)self _updateRequest:&v24 includingContextOptions:[(RTPersistenceContext *)self options]];
    v15 = v24;

    v22.receiver = self;
    v22.super_class = RTPersistenceContext;
    v23 = 0;
    v16 = [(RTPersistenceContext *)&v22 countForFetchRequest:v15 error:&v23];
    v17 = v23;
    v21 = v17;
    [(RTPersistenceContext *)self _processError:&v21];
    v18 = v21;

    if (a4)
    {
      v19 = v18;
      *a4 = v18;
    }

    v6 = v15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)_shouldExecute:(id *)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector() & 1) == 0 || ([WeakRetained persistenceContextShouldExecute:self] & 1) != 0 || (self->_options)
  {
    v8 = 1;
  }

  else
  {
    v10 = *MEMORY[0x277CCA450];
    v11[0] = @"Request execution is unavailable.";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:5 userInfo:v6];
    if (a3)
    {
      v7 = v7;
      *a3 = v7;
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)_processError:(id *)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (!a3 || !*a3)
  {
    return 0;
  }

  v5 = *a3;
  v6 = [(RTPersistenceContext *)self delegate];
  [v6 persistenceContext:self encounteredError:v5];

  v7 = [v5 localizedDescription];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v5 description];
  }

  v11 = v9;

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = @"no description";
  }

  v21 = *MEMORY[0x277CCA450];
  v22[0] = v12;
  v10 = 1;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v14 = MEMORY[0x277CCA9B8];
  v15 = [v5 domain];
  v16 = [v14 errorWithDomain:v15 code:objc_msgSend(v5 userInfo:{"code"), v13}];

  v19 = *MEMORY[0x277CCA7E8];
  v20 = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v17];

  return v10;
}

- (void)_updateRequest:(id *)a3 includingContextOptions:(unint64_t)a4
{
  v31 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v6 = *a3;
        goto LABEL_8;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [*a3 fetchRequest];
        v6 = [v7 copy];

LABEL_8:
        v8 = +[RTCloudManagedObject entityNamesEligibleForDeletionByOtherDevices];
        v9 = [v6 entityName];
        v10 = [v8 containsObject:v9];

        if (v10)
        {
          v11 = [v6 predicate];
          v12 = [v11 predicateFormat];
          v13 = +[RTCloudManagedObject notTombstonedPredicate];
          v14 = [v13 predicateFormat];
          v15 = [v12 containsString:v14];

          if (v15)
          {
LABEL_16:

            return;
          }

          if (![(RTPersistenceContext *)self allowTombstones])
          {
            v16 = [v6 predicate];

            if (v16)
            {
              v17 = MEMORY[0x277CCA920];
              v18 = [v6 predicate];
              v19 = +[RTCloudManagedObject notTombstonedPredicate];
              v28[1] = v19;
              v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
              v21 = [v17 andPredicateWithSubpredicates:v20];
              [v6 setPredicate:v21];
            }

            else
            {
              v22 = +[RTCloudManagedObject notTombstonedPredicate];
              [v6 setPredicate:v22];
            }
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v6];
          [v23 setResultType:{objc_msgSend(*a3, "resultType")}];
          v24 = v23;
          *a3 = v23;
        }

        goto LABEL_16;
      }

      v25 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        *buf = 138412290;
        v30 = v27;
        _os_log_fault_impl(&dword_2304B3000, v25, OS_LOG_TYPE_FAULT, "unhandled request class, %@", buf, 0xCu);
      }

      __break(1u);
    }
  }
}

- (RTPersistenceContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end