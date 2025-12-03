@interface RTPersistenceContext
- (BOOL)_processError:(id *)error;
- (BOOL)_shouldExecute:(id *)execute;
- (BOOL)save:(id *)save;
- (BOOL)shouldSubstituteVariables:(id)variables inPredicate:(id)predicate entityName:(id)name model:(id)model;
- (BOOL)validateEntityName:(id)name inModel:(id)model;
- (RTPersistenceContext)initWithConcurrencyType:(unint64_t)type options:(unint64_t)options;
- (RTPersistenceContextDelegate)delegate;
- (id)executeFetchRequest:(id)request error:(id *)error;
- (id)executeRequest:(id)request error:(id *)error;
- (id)predicateWithDefaultSubstitutionVariables:(id)variables;
- (id)substitutionVariableKeys;
- (unint64_t)countForFetchRequest:(id)request error:(id *)error;
- (void)_updateRequest:(id *)request includingContextOptions:(unint64_t)options;
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
    currentDevice = [(NSManagedObjectContext *)self currentDevice];
    v10[0] = currentDevice;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    allKeys = [v5 allKeys];
    v7 = [v3 setWithArray:allKeys];
  }

  return v7;
}

- (RTPersistenceContext)initWithConcurrencyType:(unint64_t)type options:(unint64_t)options
{
  if (options > 3)
  {
    selfCopy = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = RTPersistenceContext;
    v5 = [(RTPersistenceContext *)&v8 initWithConcurrencyType:type];
    if (v5)
    {
      v5->_options = options;
    }

    self = v5;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)predicateWithDefaultSubstitutionVariables:(id)variables
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"RT_CURRENT_DEVICE";
  variablesCopy = variables;
  currentDevice = [(NSManagedObjectContext *)self currentDevice];
  v10[0] = currentDevice;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [variablesCopy predicateWithSubstitutionVariables:v6];

  return v7;
}

- (BOOL)validateEntityName:(id)name inModel:(id)model
{
  nameCopy = name;
  modelCopy = model;
  if ([nameCopy hasPrefix:@"RT"])
  {
    entitiesByName = [modelCopy entitiesByName];
    v8 = [entitiesByName objectForKeyedSubscript:nameCopy];
    v9 = v8 != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldSubstituteVariables:(id)variables inPredicate:(id)predicate entityName:(id)name model:(id)model
{
  variablesCopy = variables;
  predicateCopy = predicate;
  nameCopy = name;
  modelCopy = model;
  predicateInspector = self->_predicateInspector;
  if (!predicateInspector)
  {
    v15 = objc_opt_new();
    v16 = self->_predicateInspector;
    self->_predicateInspector = v15;

    predicateInspector = self->_predicateInspector;
  }

  v17 = [(RTPredicateInspector *)predicateInspector predicate:predicateCopy referencesSubstitutionVariablesFromSet:variablesCopy];
  v18 = [(RTPersistenceContext *)self validateEntityName:nameCopy inModel:modelCopy];

  return v17 && v18;
}

- (id)executeRequest:(id)request error:(id *)error
{
  requestCopy = request;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && ![(RTPersistenceContext *)self _shouldExecute:error])
  {
    v17 = 0;
    goto LABEL_20;
  }

  substitutionVariableKeys = [(RTPersistenceContext *)self substitutionVariableKeys];
  persistentStoreCoordinator = [(RTPersistenceContext *)self persistentStoreCoordinator];
  managedObjectModel = [persistentStoreCoordinator managedObjectModel];

  if ([requestCopy requestType] == 1)
  {
    predicate = [requestCopy predicate];
    entityName = [requestCopy entityName];
    if ([(RTPersistenceContext *)self shouldSubstituteVariables:substitutionVariableKeys inPredicate:predicate entityName:entityName model:managedObjectModel])
    {
      predicate2 = [requestCopy predicate];
      v13 = [(RTPersistenceContext *)self predicateWithDefaultSubstitutionVariables:predicate2];
      [requestCopy setPredicate:v13];
    }

    v36 = requestCopy;
    v14 = &v36;
LABEL_16:
    [(RTPersistenceContext *)self _updateRequest:v14 includingContextOptions:[(RTPersistenceContext *)self options]];
    v25 = *v14;

    requestCopy = v25;
    goto LABEL_17;
  }

  if ([requestCopy requestType] == 6)
  {
    predicate = [requestCopy predicate];
    entityName = [requestCopy entityName];
    if ([(RTPersistenceContext *)self shouldSubstituteVariables:substitutionVariableKeys inPredicate:predicate entityName:entityName model:managedObjectModel])
    {
      predicate3 = [requestCopy predicate];
      v16 = [(RTPersistenceContext *)self predicateWithDefaultSubstitutionVariables:predicate3];
      [requestCopy setPredicate:v16];
    }

    v35 = requestCopy;
    v14 = &v35;
    goto LABEL_16;
  }

  if ([requestCopy requestType] == 7)
  {
    fetchRequest = [requestCopy fetchRequest];
    predicate = [fetchRequest predicate];

    fetchRequest2 = [requestCopy fetchRequest];
    entityName = [fetchRequest2 entityName];

    if ([(RTPersistenceContext *)self shouldSubstituteVariables:substitutionVariableKeys inPredicate:predicate entityName:entityName model:managedObjectModel])
    {
      fetchRequest3 = [requestCopy fetchRequest];
      v30 = [fetchRequest3 copy];

      fetchRequest4 = [requestCopy fetchRequest];
      predicate4 = [fetchRequest4 predicate];
      v23 = [(RTPersistenceContext *)self predicateWithDefaultSubstitutionVariables:predicate4];
      [v30 setPredicate:v23];

      v24 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v30];
      [v24 setResultType:{objc_msgSend(requestCopy, "resultType")}];

      requestCopy = v24;
    }

    v34 = requestCopy;
    v14 = &v34;
    goto LABEL_16;
  }

LABEL_17:
  v32.receiver = self;
  v32.super_class = RTPersistenceContext;
  v33 = 0;
  v17 = [(RTPersistenceContext *)&v32 executeRequest:requestCopy error:&v33];
  v26 = v33;
  v31 = v26;
  [(RTPersistenceContext *)self _processError:&v31];
  v27 = v31;

  if (error)
  {
    v28 = v27;
    *error = v27;
  }

LABEL_20:

  return v17;
}

- (id)executeFetchRequest:(id)request error:(id *)error
{
  requestCopy = request;
  if ([(RTPersistenceContext *)self _shouldExecute:error])
  {
    substitutionVariableKeys = [(RTPersistenceContext *)self substitutionVariableKeys];
    persistentStoreCoordinator = [(RTPersistenceContext *)self persistentStoreCoordinator];
    managedObjectModel = [persistentStoreCoordinator managedObjectModel];

    predicate = [requestCopy predicate];
    entityName = [requestCopy entityName];
    v12 = [(RTPersistenceContext *)self shouldSubstituteVariables:substitutionVariableKeys inPredicate:predicate entityName:entityName model:managedObjectModel];

    if (v12)
    {
      predicate2 = [requestCopy predicate];
      v14 = [(RTPersistenceContext *)self predicateWithDefaultSubstitutionVariables:predicate2];
      [requestCopy setPredicate:v14];
    }

    v24 = requestCopy;
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

    if (error)
    {
      v19 = v18;
      *error = v18;
    }

    requestCopy = v15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)save:(id *)save
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

    if (save)
    {
      v18 = v17;
      *save = v17;
    }

    [(RTPersistenceContext *)self setMirroringQualityOfService:0];
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (unint64_t)countForFetchRequest:(id)request error:(id *)error
{
  requestCopy = request;
  if ([(RTPersistenceContext *)self _shouldExecute:error])
  {
    substitutionVariableKeys = [(RTPersistenceContext *)self substitutionVariableKeys];
    persistentStoreCoordinator = [(RTPersistenceContext *)self persistentStoreCoordinator];
    managedObjectModel = [persistentStoreCoordinator managedObjectModel];

    predicate = [requestCopy predicate];
    entityName = [requestCopy entityName];
    v12 = [(RTPersistenceContext *)self shouldSubstituteVariables:substitutionVariableKeys inPredicate:predicate entityName:entityName model:managedObjectModel];

    if (v12)
    {
      predicate2 = [requestCopy predicate];
      v14 = [(RTPersistenceContext *)self predicateWithDefaultSubstitutionVariables:predicate2];
      [requestCopy setPredicate:v14];
    }

    v24 = requestCopy;
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

    if (error)
    {
      v19 = v18;
      *error = v18;
    }

    requestCopy = v15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)_shouldExecute:(id *)execute
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
    if (execute)
    {
      v7 = v7;
      *execute = v7;
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)_processError:(id *)error
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (!error || !*error)
  {
    return 0;
  }

  v5 = *error;
  delegate = [(RTPersistenceContext *)self delegate];
  [delegate persistenceContext:self encounteredError:v5];

  localizedDescription = [v5 localizedDescription];
  v8 = localizedDescription;
  if (localizedDescription)
  {
    v9 = localizedDescription;
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
  domain = [v5 domain];
  v16 = [v14 errorWithDomain:domain code:objc_msgSend(v5 userInfo:{"code"), v13}];

  v19 = *MEMORY[0x277CCA7E8];
  v20 = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v17];

  return v10;
}

- (void)_updateRequest:(id *)request includingContextOptions:(unint64_t)options
{
  v31 = *MEMORY[0x277D85DE8];
  if (request)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v6 = *request;
        goto LABEL_8;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        fetchRequest = [*request fetchRequest];
        v6 = [fetchRequest copy];

LABEL_8:
        v8 = +[RTCloudManagedObject entityNamesEligibleForDeletionByOtherDevices];
        entityName = [v6 entityName];
        v10 = [v8 containsObject:entityName];

        if (v10)
        {
          predicate = [v6 predicate];
          predicateFormat = [predicate predicateFormat];
          v13 = +[RTCloudManagedObject notTombstonedPredicate];
          predicateFormat2 = [v13 predicateFormat];
          v15 = [predicateFormat containsString:predicateFormat2];

          if (v15)
          {
LABEL_16:

            return;
          }

          if (![(RTPersistenceContext *)self allowTombstones])
          {
            predicate2 = [v6 predicate];

            if (predicate2)
            {
              v17 = MEMORY[0x277CCA920];
              predicate3 = [v6 predicate];
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
          [v23 setResultType:{objc_msgSend(*request, "resultType")}];
          v24 = v23;
          *request = v23;
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