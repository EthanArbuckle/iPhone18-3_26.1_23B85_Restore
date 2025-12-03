@interface PPSSQLiteQuery
+ (id)queryWithDatabase:(id)database entity:(id)entity predicate:(id)predicate;
+ (id)queryWithDatabase:(id)database entity:(id)entity predicate:(id)predicate groupByProperties:(id)properties orderByProperties:(id)byProperties orderByDirections:(id)directions limitCount:(unint64_t)count offsetCount:(unint64_t)self0;
- (BOOL)enumerateProperties:(id)properties error:(id *)error enumerationHandler:(id)handler;
- (PPSSQLiteQuery)initWithDatabase:(id)database descriptor:(id)descriptor;
- (id)columnNamesForProperties:(id)properties;
- (id)selectSQLWithProperties:(id)properties;
- (void)bindToSelectStatement:(sqlite3_stmt *)statement bindingIndex:(int *)index;
@end

@implementation PPSSQLiteQuery

- (PPSSQLiteQuery)initWithDatabase:(id)database descriptor:(id)descriptor
{
  databaseCopy = database;
  descriptorCopy = descriptor;
  v14.receiver = self;
  v14.super_class = PPSSQLiteQuery;
  v9 = [(PPSSQLiteQuery *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_database, database);
    v11 = [descriptorCopy copy];
    descriptor = v10->_descriptor;
    v10->_descriptor = v11;
  }

  return v10;
}

- (void)bindToSelectStatement:(sqlite3_stmt *)statement bindingIndex:(int *)index
{
  descriptor = [(PPSSQLiteQuery *)self descriptor];
  predicate = [descriptor predicate];
  [predicate bindToStatement:statement bindingIndex:index];

  descriptor2 = [(PPSSQLiteQuery *)self descriptor];
  limitCount = [descriptor2 limitCount];

  if (limitCount >> 31)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"bindToSelectStatement called with limit count %ld, greater than maximum allowed limit count (%d)", limitCount, 0x7FFFFFFFLL}];
  }

  descriptor3 = [(PPSSQLiteQuery *)self descriptor];
  offsetCount = [descriptor3 offsetCount];

  if (offsetCount >> 31)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"bindToSelectStatement called with offset count %ld, greater than maximum allowed offset count (%d)", offsetCount, 0x7FFFFFFFLL}];
  }

  if (limitCount)
  {
    sqlite3_bind_int(statement, *index, limitCount);
    ++*index;
  }

  if (offsetCount)
  {
    sqlite3_bind_int(statement, *index, offsetCount);
    ++*index;
  }
}

- (id)columnNamesForProperties:(id)properties
{
  v23 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(propertiesCopy, "count")}];
  descriptor = [(PPSSQLiteQuery *)self descriptor];
  entity = [descriptor entity];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = propertiesCopy;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 rangeOfString:@"."];
        if (v12 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = [entity disambiguatedSQLForProperty:v11 shouldEscape:0];
          [v4 addObject:v13];
        }

        else
        {
          v13 = [v11 substringFromIndex:v12 + 1];
          v14 = [entity disambiguatedSQLForProperty:v13 shouldEscape:0];
          [v4 addObject:v14];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)selectSQLWithProperties:(id)properties
{
  propertiesCopy = properties;
  descriptor = [(PPSSQLiteQuery *)self descriptor];
  v6 = [descriptor _sqlForSelectWithProperties:propertiesCopy];

  return v6;
}

- (BOOL)enumerateProperties:(id)properties error:(id *)error enumerationHandler:(id)handler
{
  propertiesCopy = properties;
  handlerCopy = handler;
  if ([propertiesCopy count] >= 0x80000000)
  {
    v10 = MEMORY[0x277CBEAD8];
    v11 = [propertiesCopy count];
    [v10 raise:*MEMORY[0x277CBE660] format:{@"Insane number of properties for enumeration (%lu)", v11}];
  }

  descriptor = [(PPSSQLiteQuery *)self descriptor];
  v13 = [descriptor _sqlForSelectWithProperties:propertiesCopy];

  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  database = self->_database;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __63__PPSSQLiteQuery_enumerateProperties_error_enumerationHandler___block_invoke;
  v23[3] = &unk_279A117F8;
  v23[4] = self;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __63__PPSSQLiteQuery_enumerateProperties_error_enumerationHandler___block_invoke_2;
  v19[3] = &unk_279A11820;
  v22 = v24;
  v15 = propertiesCopy;
  v20 = v15;
  v16 = handlerCopy;
  v21 = v16;
  v17 = [(PPSSQLiteDatabase *)database executeSQL:v13 shouldCache:1 error:error bindingHandler:v23 enumerationHandler:v19];

  _Block_object_dispose(v24, 8);
  return v17;
}

uint64_t __63__PPSSQLiteQuery_enumerateProperties_error_enumerationHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    PPSSQLiteRow::setColumnNames(a2, *(a1 + 32));
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

+ (id)queryWithDatabase:(id)database entity:(id)entity predicate:(id)predicate
{
  v5 = [PPSSQLiteQuery queryWithDatabase:database entity:entity predicate:predicate groupByProperties:0 orderByProperties:0 orderByDirections:0 limitCount:0 offsetCount:0];

  return v5;
}

+ (id)queryWithDatabase:(id)database entity:(id)entity predicate:(id)predicate groupByProperties:(id)properties orderByProperties:(id)byProperties orderByDirections:(id)directions limitCount:(unint64_t)count offsetCount:(unint64_t)self0
{
  databaseCopy = database;
  entityCopy = entity;
  predicateCopy = predicate;
  propertiesCopy = properties;
  byPropertiesCopy = byProperties;
  directionsCopy = directions;
  v21 = [[PPSSQLiteQueryDescriptor alloc] initWithEntity:entityCopy predicate:predicateCopy];
  [(PPSSQLiteQueryDescriptor *)v21 setOrderByDirections:directionsCopy];
  [(PPSSQLiteQueryDescriptor *)v21 setOrderByProperties:byPropertiesCopy];
  [(PPSSQLiteQueryDescriptor *)v21 setGroupByProperties:propertiesCopy];
  [(PPSSQLiteQueryDescriptor *)v21 setLimitCount:count];
  [(PPSSQLiteQueryDescriptor *)v21 setOffsetCount:offsetCount];
  v22 = [[PPSSQLiteQuery alloc] initWithDatabase:databaseCopy descriptor:v21];

  return v22;
}

@end