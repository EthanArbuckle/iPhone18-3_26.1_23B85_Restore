@interface ObjectAnalytics
- (ObjectAnalytics)initWithWorkspace:(id)a3 entityName:(id)a4 withCache:(BOOL)a5;
- (id)_fetch:(id)a3 sortDesc:(id)a4 limit:(unint64_t)a5 batchSize:(unint64_t)a6;
- (id)_firstLastHappened:(BOOL)a3;
- (id)createEntityForEntityName:(id)a3;
- (id)createTemporaryEntityForEntityName:(id)a3;
- (id)fetchAllEntityDictionariesWithProperties:(id)a3;
- (id)fetchEntityDictionariesWithProperties:(id)a3 fetchRequestProperties:(id)a4 predicate:(id)a5 sortDescriptors:(id)a6 limit:(unint64_t)a7 offset:(unint64_t)a8 includeObjectID:(BOOL)a9;
- (id)getDescriptionForName:(id)a3;
- (int64_t)removeEntitiesMatching:(id)a3 wspaceReset:(BOOL)a4;
- (unint64_t)countEntitiesMatching:(id)a3;
- (unint64_t)updateEntitiesMatching:(id)a3 properties:(id)a4;
- (void)moveTemporaryEntityToMainContext:(id)a3;
- (void)refresh:(id)a3;
- (void)removeEntities:(id)a3;
@end

@implementation ObjectAnalytics

- (ObjectAnalytics)initWithWorkspace:(id)a3 entityName:(id)a4 withCache:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = ObjectAnalytics;
  v10 = [(ObjectAnalytics *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->wspace, a3);
    objc_storeStrong(&v11->entityName, a4);
  }

  return v11;
}

- (id)fetchAllEntityDictionariesWithProperties:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBE410]);
  [v5 setName:@"objectID"];
  v6 = [MEMORY[0x277CCA9C0] expressionForEvaluatedObject];
  [v5 setExpression:v6];

  [v5 setExpressionResultType:2000];
  v7 = [MEMORY[0x277CBEB18] arrayWithObject:v5];
  if ([v4 count])
  {
    [v7 addObjectsFromArray:v4];
  }

  v8 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:self->entityName];
  [v8 setResultType:2];
  [v8 setAllocationType:1];
  [v8 setPropertiesToFetch:v7];
  v9 = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
  v16 = 0;
  v10 = [v9 executeFetchRequest:v8 error:&v16];
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

- (id)fetchEntityDictionariesWithProperties:(id)a3 fetchRequestProperties:(id)a4 predicate:(id)a5 sortDescriptors:(id)a6 limit:(unint64_t)a7 offset:(unint64_t)a8 includeObjectID:(BOOL)a9
{
  v42 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  if (a9)
  {
    v18 = objc_alloc_init(MEMORY[0x277CBE410]);
    [v18 setName:@"objectID"];
    v19 = [MEMORY[0x277CCA9C0] expressionForEvaluatedObject];
    [v18 setExpression:v19];

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

  if ([v14 count])
  {
    [v21 addObjectsFromArray:v14];
  }

  v22 = [v15 aggregateProperties];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __135__ObjectAnalytics_fetchEntityDictionariesWithProperties_fetchRequestProperties_predicate_sortDescriptors_limit_offset_includeObjectID___block_invoke;
  v38[3] = &unk_278987508;
  v23 = v21;
  v39 = v23;
  [v22 enumerateObjectsUsingBlock:v38];

  v24 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:self->entityName];
  [v24 setResultType:2];
  [v24 setAllocationType:1];
  v25 = [v23 allObjects];
  [v24 setPropertiesToFetch:v25];

  v26 = [v15 groupByProperties];
  v27 = [v26 count];

  if (v27)
  {
    v28 = [v15 groupByProperties];
    [v24 setPropertiesToGroupBy:v28];
  }

  if (v16)
  {
    [v24 setPredicate:v16];
  }

  if (v17)
  {
    [v24 setSortDescriptors:v17];
  }

  if (a7)
  {
    [v24 setFetchLimit:a7];
  }

  [v24 setFetchOffset:a8];
  v29 = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
  v37 = 0;
  v30 = [v29 executeFetchRequest:v24 error:&v37];
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

- (id)_firstLastHappened:(BOOL)a3
{
  v4 = [(ObjectAnalytics *)self _fetch:0 sortDesc:0];
  v5 = v4;
  if (v4 && [v4 count])
  {
    if (a3)
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

- (id)createEntityForEntityName:(id)a3
{
  v4 = a3;
  v5 = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
  if (v5)
  {
    if (!v4)
    {
      v4 = self->entityName;
    }

    v6 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:v4 inManagedObjectContext:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)createTemporaryEntityForEntityName:(id)a3
{
  v4 = a3;
  v5 = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
  if (v5)
  {
    if (!v4)
    {
      v4 = self->entityName;
    }

    v6 = [MEMORY[0x277CBE408] entityForName:v4 inManagedObjectContext:v5];
    v7 = [objc_alloc(MEMORY[0x277CBE438]) initWithEntity:v6 insertIntoManagedObjectContext:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)moveTemporaryEntityToMainContext:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
    [v5 insertObject:v4];
  }

  else
  {
    v5 = objectanalyticsHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [v4 description];
      v8 = 136315138;
      v9 = [v6 UTF8String];
      _os_log_impl(&dword_2324AD000, v5, OS_LOG_TYPE_ERROR, "Invalid object %s", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)getDescriptionForName:(id)a3
{
  v3 = MEMORY[0x277CBE408];
  wspace = self->wspace;
  v5 = a3;
  v6 = [(AnalyticsWorkspace *)wspace mainObjectContext];
  v7 = [v3 entityForName:v5 inManagedObjectContext:v6];

  return v7;
}

- (void)refresh:(id)a3
{
  v4 = a3;
  v5 = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      [v5 refreshObject:v4 mergeChanges:0];
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

- (void)removeEntities:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
  if (v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
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

          [v5 deleteObject:{*(*(&v13 + 1) + 8 * i), v13}];
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

- (unint64_t)countEntitiesMatching:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->entityName)
  {
    v5 = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
    if (!v5)
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
    v7 = [MEMORY[0x277CBE408] entityForName:self->entityName inManagedObjectContext:v5];
    [v6 setEntity:v7];

    [v6 setPredicate:v4];
    v16 = 0;
    v8 = [v5 countForFetchRequest:v6 error:&v16];
    v9 = v16;
    if (v9)
    {
      v10 = objectanalyticsHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [v9 description];
        v12 = [v11 UTF8String];
        *buf = 136315138;
        v18 = v12;
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
        v18 = v4;
        _os_log_impl(&dword_2324AD000, v10, OS_LOG_TYPE_ERROR, "an error occrred counting entities matching: %@", buf, 0xCu);
      }
    }

    v8 = 0;
LABEL_16:

LABEL_17:
    goto LABEL_18;
  }

  v5 = objectanalyticsHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_2324AD000, v5, OS_LOG_TYPE_ERROR, "entityName is nil", buf, 2u);
  }

  v8 = 0;
LABEL_18:

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

- (int64_t)removeEntitiesMatching:(id)a3 wspaceReset:(BOOL)a4
{
  v4 = a4;
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (self->entityName)
  {
    v7 = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
    if (v7)
    {
      v8 = [(AnalyticsWorkspace *)self->wspace persistentStoreCoordinator];
      v9 = [v8 persistentStores];
      v10 = [v9 count];

      if (v10)
      {
        v11 = [v8 persistentStores];
        v12 = [v11 objectAtIndexedSubscript:0];

        v13 = [v12 type];
        v14 = [v13 isEqualToString:*MEMORY[0x277CBE2E8]];

        if (v14)
        {
          [(AnalyticsWorkspace *)self->wspace save];
          v15 = objc_alloc_init(MEMORY[0x277CBE428]);
          v16 = [MEMORY[0x277CBE408] entityForName:self->entityName inManagedObjectContext:v7];
          [v15 setEntity:v16];

          [v15 setPredicate:v6];
          v17 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v15];
          [v17 setResultType:2];
          v30 = 0;
          v18 = [v7 executeRequest:v17 error:&v30];
          v19 = v30;
          v29 = v18;
          if (v19)
          {
            v20 = objectanalyticsHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v21 = [v19 description];
              v22 = [v21 UTF8String];
              *buf = 136315138;
              v32 = v22;
              _os_log_impl(&dword_2324AD000, v20, OS_LOG_TYPE_ERROR, "error batch deleting: %s", buf, 0xCu);
            }

            v23 = 0;
          }

          else
          {
            v28 = v17;
            v24 = [v18 result];
            v23 = [v24 integerValue];

            v25 = objectanalyticsHandle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v32 = v23;
              _os_log_impl(&dword_2324AD000, v25, OS_LOG_TYPE_DEFAULT, "batch deleted %ld entities", buf, 0xCu);
            }

            if (v4 && v23 >= 1)
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

          v23 = 0;
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

        v23 = 0;
      }
    }

    else
    {
      v8 = objectanalyticsHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_2324AD000, v8, OS_LOG_TYPE_ERROR, "moc is nil", buf, 2u);
      }

      v23 = 0;
    }
  }

  else
  {
    v7 = objectanalyticsHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2324AD000, v7, OS_LOG_TYPE_ERROR, "entityName is nil", buf, 2u);
    }

    v23 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v23;
}

- (unint64_t)updateEntitiesMatching:(id)a3 properties:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->entityName)
  {
    v8 = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
    if (!v8)
    {
      v9 = objectanalyticsHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_2324AD000, v9, OS_LOG_TYPE_ERROR, "moc is nil", buf, 2u);
      }

      v15 = 0;
      goto LABEL_18;
    }

    v9 = [MEMORY[0x277CBE380] batchUpdateRequestWithEntityName:self->entityName];
    [v9 setPropertiesToUpdate:v7];
    [v9 setPredicate:v6];
    [v9 setResultType:2];
    v21 = 0;
    v10 = [v8 executeRequest:v9 error:&v21];
    v11 = v21;
    if (v11)
    {
      v12 = objectanalyticsHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [v11 description];
        v14 = [v13 UTF8String];
        *buf = 136315138;
        v23 = v14;
        _os_log_impl(&dword_2324AD000, v12, OS_LOG_TYPE_ERROR, "batch update return error: %s", buf, 0xCu);
      }
    }

    else
    {
      v12 = [v10 result];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v10 result];
        v17 = [v16 count];

        if (v17 != 1)
        {
          v15 = 0;
          goto LABEL_17;
        }

        v12 = [v10 result];
        v18 = [v12 objectAtIndex:0];
        v15 = [v18 unsignedIntegerValue];

LABEL_16:
LABEL_17:

LABEL_18:
        goto LABEL_19;
      }
    }

    v15 = 0;
    goto LABEL_16;
  }

  v8 = objectanalyticsHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_2324AD000, v8, OS_LOG_TYPE_ERROR, "entityName is nil", buf, 2u);
  }

  v15 = 0;
LABEL_19:

  v19 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)_fetch:(id)a3 sortDesc:(id)a4 limit:(unint64_t)a5 batchSize:(unint64_t)a6
{
  v26[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
  if (v12)
  {
    if (!v11)
    {
      v11 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"timeStamp" ascending:1];
    }

    v13 = [MEMORY[0x277CBE408] entityForName:self->entityName inManagedObjectContext:v12];
    v14 = objc_alloc_init(MEMORY[0x277CBE428]);
    [v14 setEntity:v13];
    if (v10)
    {
      [v14 setPredicate:v10];
    }

    else
    {
      [v14 setReturnsObjectsAsFaults:0];
    }

    v26[0] = v11;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    [v14 setSortDescriptors:v16];

    if (a5)
    {
      [v14 setFetchLimit:a5];
    }

    if (a6)
    {
      [v14 setFetchBatchSize:a6];
    }

    v23 = 0;
    v15 = [v12 executeFetchRequest:v14 error:&v23];
    v17 = v23;
    if (!v15)
    {
      v18 = objectanalyticsHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [v17 description];
        v20 = [v19 UTF8String];
        *buf = 136315138;
        v25 = v20;
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