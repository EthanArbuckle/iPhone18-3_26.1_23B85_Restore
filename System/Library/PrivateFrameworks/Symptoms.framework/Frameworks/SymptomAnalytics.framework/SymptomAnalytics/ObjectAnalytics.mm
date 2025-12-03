@interface ObjectAnalytics
- (ObjectAnalytics)initWithWorkspace:(id)workspace entityName:(id)name withCache:(BOOL)cache;
- (id)_fetch:(id)_fetch sortDesc:(id)desc limit:(unint64_t)limit batchSize:(unint64_t)size;
- (id)_firstLastHappened:(BOOL)happened;
- (id)createEntityForEntityName:(id)name;
- (id)createTemporaryEntityForEntityName:(id)name;
- (id)fetchAllEntityDictionariesWithProperties:(id)properties;
- (id)fetchEntityDictionariesWithProperties:(id)properties fetchRequestProperties:(id)requestProperties predicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit offset:(unint64_t)offset includeObjectID:(BOOL)d;
- (id)getDescriptionForName:(id)name;
- (int64_t)removeEntitiesMatching:(id)matching wspaceReset:(BOOL)reset;
- (unint64_t)countEntitiesMatching:(id)matching;
- (unint64_t)updateEntitiesMatching:(id)matching properties:(id)properties;
- (void)moveTemporaryEntityToMainContext:(id)context;
- (void)refresh:(id)refresh;
- (void)removeEntities:(id)entities;
@end

@implementation ObjectAnalytics

- (ObjectAnalytics)initWithWorkspace:(id)workspace entityName:(id)name withCache:(BOOL)cache
{
  workspaceCopy = workspace;
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = ObjectAnalytics;
  v10 = [(ObjectAnalytics *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->wspace, workspace);
    objc_storeStrong(&v11->entityName, name);
  }

  return v11;
}

- (id)fetchAllEntityDictionariesWithProperties:(id)properties
{
  v19 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v5 = objc_alloc_init(MEMORY[0x277CBE410]);
  [v5 setName:@"objectID"];
  expressionForEvaluatedObject = [MEMORY[0x277CCA9C0] expressionForEvaluatedObject];
  [v5 setExpression:expressionForEvaluatedObject];

  [v5 setExpressionResultType:2000];
  v7 = [MEMORY[0x277CBEB18] arrayWithObject:v5];
  if ([propertiesCopy count])
  {
    [v7 addObjectsFromArray:propertiesCopy];
  }

  v8 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:self->entityName];
  [v8 setResultType:2];
  [v8 setAllocationType:1];
  [v8 setPropertiesToFetch:v7];
  mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
  v16 = 0;
  v10 = [mainObjectContext executeFetchRequest:v8 error:&v16];
  v11 = v16;

  if (v11)
  {
    v12 = objectanalyticsHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v11;
      _os_log_impl(&dword_2324AD000, v12, OS_LOG_TYPE_ERROR, "Failure to fetch all entity dictionaries %@", buf, 0xCu);
    }

    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)fetchEntityDictionariesWithProperties:(id)properties fetchRequestProperties:(id)requestProperties predicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit offset:(unint64_t)offset includeObjectID:(BOOL)d
{
  v42 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  requestPropertiesCopy = requestProperties;
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  if (d)
  {
    v18 = objc_alloc_init(MEMORY[0x277CBE410]);
    [v18 setName:@"objectID"];
    expressionForEvaluatedObject = [MEMORY[0x277CCA9C0] expressionForEvaluatedObject];
    [v18 setExpression:expressionForEvaluatedObject];

    [v18 setExpressionResultType:2000];
    v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v21 = v20;
    if (v18)
    {
      [v20 addObject:v18];
    }
  }

  else
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  if ([propertiesCopy count])
  {
    [v21 addObjectsFromArray:propertiesCopy];
  }

  aggregateProperties = [requestPropertiesCopy aggregateProperties];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __135__ObjectAnalytics_fetchEntityDictionariesWithProperties_fetchRequestProperties_predicate_sortDescriptors_limit_offset_includeObjectID___block_invoke;
  v38[3] = &unk_278987508;
  v23 = v21;
  v39 = v23;
  [aggregateProperties enumerateObjectsUsingBlock:v38];

  v24 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:self->entityName];
  [v24 setResultType:2];
  [v24 setAllocationType:1];
  allObjects = [v23 allObjects];
  [v24 setPropertiesToFetch:allObjects];

  groupByProperties = [requestPropertiesCopy groupByProperties];
  v27 = [groupByProperties count];

  if (v27)
  {
    groupByProperties2 = [requestPropertiesCopy groupByProperties];
    [v24 setPropertiesToGroupBy:groupByProperties2];
  }

  if (predicateCopy)
  {
    [v24 setPredicate:predicateCopy];
  }

  if (descriptorsCopy)
  {
    [v24 setSortDescriptors:descriptorsCopy];
  }

  if (limit)
  {
    [v24 setFetchLimit:limit];
  }

  [v24 setFetchOffset:offset];
  mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
  v37 = 0;
  v30 = [mainObjectContext executeFetchRequest:v24 error:&v37];
  v31 = v37;

  if (v31)
  {
    v32 = objectanalyticsHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v41 = v31;
      _os_log_impl(&dword_2324AD000, v32, OS_LOG_TYPE_ERROR, "Failure to fetch entity dictionaries %@", buf, 0xCu);
    }

    v33 = 0;
  }

  else
  {
    v33 = v30;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

void __135__ObjectAnalytics_fetchEntityDictionariesWithProperties_fetchRequestProperties_predicate_sortDescriptors_limit_offset_includeObjectID___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBE410];
  v4 = a2;
  v8 = objc_alloc_init(v3);
  v5 = [v4 expression];
  [v8 setExpression:v5];

  v6 = [v4 name];
  [v8 setName:v6];

  v7 = [v4 resultType];
  [v8 setExpressionResultType:v7];
  [*(a1 + 32) addObject:v8];
}

- (id)_firstLastHappened:(BOOL)happened
{
  v4 = [(ObjectAnalytics *)self _fetch:0 sortDesc:0];
  v5 = v4;
  if (v4 && [v4 count])
  {
    if (happened)
    {
      [v5 objectAtIndex:0];
    }

    else
    {
      [v5 lastObject];
    }
    v6 = ;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)createEntityForEntityName:(id)name
{
  nameCopy = name;
  mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
  if (mainObjectContext)
  {
    if (!nameCopy)
    {
      nameCopy = self->entityName;
    }

    v6 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:nameCopy inManagedObjectContext:mainObjectContext];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)createTemporaryEntityForEntityName:(id)name
{
  nameCopy = name;
  mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
  if (mainObjectContext)
  {
    if (!nameCopy)
    {
      nameCopy = self->entityName;
    }

    v6 = [MEMORY[0x277CBE408] entityForName:nameCopy inManagedObjectContext:mainObjectContext];
    v7 = [objc_alloc(MEMORY[0x277CBE438]) initWithEntity:v6 insertIntoManagedObjectContext:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)moveTemporaryEntityToMainContext:(id)context
{
  v10 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (contextCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
    [mainObjectContext insertObject:contextCopy];
  }

  else
  {
    mainObjectContext = objectanalyticsHandle();
    if (os_log_type_enabled(mainObjectContext, OS_LOG_TYPE_ERROR))
    {
      v6 = [contextCopy description];
      v8 = 136315138;
      uTF8String = [v6 UTF8String];
      _os_log_impl(&dword_2324AD000, mainObjectContext, OS_LOG_TYPE_ERROR, "Invalid object %s", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)getDescriptionForName:(id)name
{
  v3 = MEMORY[0x277CBE408];
  wspace = self->wspace;
  nameCopy = name;
  mainObjectContext = [(AnalyticsWorkspace *)wspace mainObjectContext];
  v7 = [v3 entityForName:nameCopy inManagedObjectContext:mainObjectContext];

  return v7;
}

- (void)refresh:(id)refresh
{
  refreshCopy = refresh;
  mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
  v6 = mainObjectContext;
  if (mainObjectContext)
  {
    if (refreshCopy)
    {
      [mainObjectContext refreshObject:refreshCopy mergeChanges:0];
    }
  }

  else
  {
    v7 = objectanalyticsHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_2324AD000, v7, OS_LOG_TYPE_ERROR, "moc is nil", v8, 2u);
    }
  }
}

- (void)removeEntities:(id)entities
{
  v19 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
  if (mainObjectContext)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = entitiesCopy;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [mainObjectContext deleteObject:{*(*(&v13 + 1) + 8 * i), v13}];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v8);
    }

    [(AnalyticsWorkspace *)self->wspace save];
  }

  else
  {
    v11 = objectanalyticsHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2324AD000, v11, OS_LOG_TYPE_ERROR, "moc is nil", buf, 2u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (unint64_t)countEntitiesMatching:(id)matching
{
  v19 = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  if (self->entityName)
  {
    mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
    if (!mainObjectContext)
    {
      v9 = objectanalyticsHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_2324AD000, v9, OS_LOG_TYPE_ERROR, "moc is nil", buf, 2u);
      }

      v8 = 0;
      goto LABEL_17;
    }

    v6 = objc_alloc_init(MEMORY[0x277CBE428]);
    v7 = [MEMORY[0x277CBE408] entityForName:self->entityName inManagedObjectContext:mainObjectContext];
    [v6 setEntity:v7];

    [v6 setPredicate:matchingCopy];
    v16 = 0;
    v8 = [mainObjectContext countForFetchRequest:v6 error:&v16];
    v9 = v16;
    if (v9)
    {
      v10 = objectanalyticsHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [v9 description];
        uTF8String = [v11 UTF8String];
        *buf = 136315138;
        v18 = uTF8String;
        _os_log_impl(&dword_2324AD000, v10, OS_LOG_TYPE_ERROR, "error counting entities: %s", buf, 0xCu);
      }
    }

    else
    {
      v13 = objectanalyticsHandle();
      v10 = v13;
      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v18 = v8;
          _os_log_impl(&dword_2324AD000, v10, OS_LOG_TYPE_DEFAULT, "counted %ld entities", buf, 0xCu);
        }

        goto LABEL_16;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = matchingCopy;
        _os_log_impl(&dword_2324AD000, v10, OS_LOG_TYPE_ERROR, "an error occrred counting entities matching: %@", buf, 0xCu);
      }
    }

    v8 = 0;
LABEL_16:

LABEL_17:
    goto LABEL_18;
  }

  mainObjectContext = objectanalyticsHandle();
  if (os_log_type_enabled(mainObjectContext, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_2324AD000, mainObjectContext, OS_LOG_TYPE_ERROR, "entityName is nil", buf, 2u);
  }

  v8 = 0;
LABEL_18:

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

- (int64_t)removeEntitiesMatching:(id)matching wspaceReset:(BOOL)reset
{
  resetCopy = reset;
  v33 = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  if (self->entityName)
  {
    mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
    if (mainObjectContext)
    {
      persistentStoreCoordinator = [(AnalyticsWorkspace *)self->wspace persistentStoreCoordinator];
      persistentStores = [persistentStoreCoordinator persistentStores];
      v10 = [persistentStores count];

      if (v10)
      {
        persistentStores2 = [persistentStoreCoordinator persistentStores];
        v12 = [persistentStores2 objectAtIndexedSubscript:0];

        type = [v12 type];
        v14 = [type isEqualToString:*MEMORY[0x277CBE2E8]];

        if (v14)
        {
          [(AnalyticsWorkspace *)self->wspace save];
          v15 = objc_alloc_init(MEMORY[0x277CBE428]);
          v16 = [MEMORY[0x277CBE408] entityForName:self->entityName inManagedObjectContext:mainObjectContext];
          [v15 setEntity:v16];

          [v15 setPredicate:matchingCopy];
          v17 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v15];
          [v17 setResultType:2];
          v30 = 0;
          v18 = [mainObjectContext executeRequest:v17 error:&v30];
          v19 = v30;
          v29 = v18;
          if (v19)
          {
            v20 = objectanalyticsHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v21 = [v19 description];
              uTF8String = [v21 UTF8String];
              *buf = 136315138;
              v32 = uTF8String;
              _os_log_impl(&dword_2324AD000, v20, OS_LOG_TYPE_ERROR, "error batch deleting: %s", buf, 0xCu);
            }

            integerValue = 0;
          }

          else
          {
            v28 = v17;
            result = [v18 result];
            integerValue = [result integerValue];

            v25 = objectanalyticsHandle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v32 = integerValue;
              _os_log_impl(&dword_2324AD000, v25, OS_LOG_TYPE_DEFAULT, "batch deleted %ld entities", buf, 0xCu);
            }

            if (resetCopy && integerValue >= 1)
            {
              [(AnalyticsWorkspace *)self->wspace reset];
            }

            [(AnalyticsWorkspace *)self->wspace save];
            v17 = v28;
          }
        }

        else
        {
          v19 = objectanalyticsHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_2324AD000, v19, OS_LOG_TYPE_ERROR, "*** Batch deleting only supported for NSSQLiteStoreType, no-op ***", buf, 2u);
          }

          integerValue = 0;
        }
      }

      else
      {
        v12 = objectanalyticsHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_2324AD000, v12, OS_LOG_TYPE_ERROR, "no backing store configured", buf, 2u);
        }

        integerValue = 0;
      }
    }

    else
    {
      persistentStoreCoordinator = objectanalyticsHandle();
      if (os_log_type_enabled(persistentStoreCoordinator, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_2324AD000, persistentStoreCoordinator, OS_LOG_TYPE_ERROR, "moc is nil", buf, 2u);
      }

      integerValue = 0;
    }
  }

  else
  {
    mainObjectContext = objectanalyticsHandle();
    if (os_log_type_enabled(mainObjectContext, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2324AD000, mainObjectContext, OS_LOG_TYPE_ERROR, "entityName is nil", buf, 2u);
    }

    integerValue = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return integerValue;
}

- (unint64_t)updateEntitiesMatching:(id)matching properties:(id)properties
{
  v24 = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  propertiesCopy = properties;
  if (self->entityName)
  {
    mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
    if (!mainObjectContext)
    {
      v9 = objectanalyticsHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_2324AD000, v9, OS_LOG_TYPE_ERROR, "moc is nil", buf, 2u);
      }

      unsignedIntegerValue = 0;
      goto LABEL_18;
    }

    v9 = [MEMORY[0x277CBE380] batchUpdateRequestWithEntityName:self->entityName];
    [v9 setPropertiesToUpdate:propertiesCopy];
    [v9 setPredicate:matchingCopy];
    [v9 setResultType:2];
    v21 = 0;
    v10 = [mainObjectContext executeRequest:v9 error:&v21];
    v11 = v21;
    if (v11)
    {
      result = objectanalyticsHandle();
      if (os_log_type_enabled(result, OS_LOG_TYPE_ERROR))
      {
        v13 = [v11 description];
        uTF8String = [v13 UTF8String];
        *buf = 136315138;
        v23 = uTF8String;
        _os_log_impl(&dword_2324AD000, result, OS_LOG_TYPE_ERROR, "batch update return error: %s", buf, 0xCu);
      }
    }

    else
    {
      result = [v10 result];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        result2 = [v10 result];
        v17 = [result2 count];

        if (v17 != 1)
        {
          unsignedIntegerValue = 0;
          goto LABEL_17;
        }

        result = [v10 result];
        v18 = [result objectAtIndex:0];
        unsignedIntegerValue = [v18 unsignedIntegerValue];

LABEL_16:
LABEL_17:

LABEL_18:
        goto LABEL_19;
      }
    }

    unsignedIntegerValue = 0;
    goto LABEL_16;
  }

  mainObjectContext = objectanalyticsHandle();
  if (os_log_type_enabled(mainObjectContext, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_2324AD000, mainObjectContext, OS_LOG_TYPE_ERROR, "entityName is nil", buf, 2u);
  }

  unsignedIntegerValue = 0;
LABEL_19:

  v19 = *MEMORY[0x277D85DE8];
  return unsignedIntegerValue;
}

- (id)_fetch:(id)_fetch sortDesc:(id)desc limit:(unint64_t)limit batchSize:(unint64_t)size
{
  v26[1] = *MEMORY[0x277D85DE8];
  _fetchCopy = _fetch;
  descCopy = desc;
  mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
  if (mainObjectContext)
  {
    if (!descCopy)
    {
      descCopy = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"timeStamp" ascending:1];
    }

    v13 = [MEMORY[0x277CBE408] entityForName:self->entityName inManagedObjectContext:mainObjectContext];
    v14 = objc_alloc_init(MEMORY[0x277CBE428]);
    [v14 setEntity:v13];
    if (_fetchCopy)
    {
      [v14 setPredicate:_fetchCopy];
    }

    else
    {
      [v14 setReturnsObjectsAsFaults:0];
    }

    v26[0] = descCopy;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    [v14 setSortDescriptors:v16];

    if (limit)
    {
      [v14 setFetchLimit:limit];
    }

    if (size)
    {
      [v14 setFetchBatchSize:size];
    }

    v23 = 0;
    v15 = [mainObjectContext executeFetchRequest:v14 error:&v23];
    v17 = v23;
    if (!v15)
    {
      v18 = objectanalyticsHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [v17 description];
        uTF8String = [v19 UTF8String];
        *buf = 136315138;
        v25 = uTF8String;
        _os_log_impl(&dword_2324AD000, v18, OS_LOG_TYPE_ERROR, "fetch failed, err %s", buf, 0xCu);
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v15;
}

@end