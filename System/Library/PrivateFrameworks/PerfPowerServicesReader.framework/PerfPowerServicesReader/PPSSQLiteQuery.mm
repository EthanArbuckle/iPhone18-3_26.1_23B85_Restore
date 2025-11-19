@interface PPSSQLiteQuery
+ (id)queryWithDatabase:(id)a3 entity:(id)a4 predicate:(id)a5;
+ (id)queryWithDatabase:(id)a3 entity:(id)a4 predicate:(id)a5 groupByProperties:(id)a6 orderByProperties:(id)a7 orderByDirections:(id)a8 limitCount:(unint64_t)a9 offsetCount:(unint64_t)a10;
- (BOOL)enumerateProperties:(id)a3 error:(id *)a4 enumerationHandler:(id)a5;
- (PPSSQLiteQuery)initWithDatabase:(id)a3 descriptor:(id)a4;
- (id)columnNamesForProperties:(id)a3;
- (id)selectSQLWithProperties:(id)a3;
- (void)bindToSelectStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4;
@end

@implementation PPSSQLiteQuery

- (PPSSQLiteQuery)initWithDatabase:(id)a3 descriptor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PPSSQLiteQuery;
  v9 = [(PPSSQLiteQuery *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_database, a3);
    v11 = [v8 copy];
    descriptor = v10->_descriptor;
    v10->_descriptor = v11;
  }

  return v10;
}

- (void)bindToSelectStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4
{
  v7 = [(PPSSQLiteQuery *)self descriptor];
  v8 = [v7 predicate];
  [v8 bindToStatement:a3 bindingIndex:a4];

  v9 = [(PPSSQLiteQuery *)self descriptor];
  v10 = [v9 limitCount];

  if (v10 >> 31)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"bindToSelectStatement called with limit count %ld, greater than maximum allowed limit count (%d)", v10, 0x7FFFFFFFLL}];
  }

  v11 = [(PPSSQLiteQuery *)self descriptor];
  v12 = [v11 offsetCount];

  if (v12 >> 31)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"bindToSelectStatement called with offset count %ld, greater than maximum allowed offset count (%d)", v12, 0x7FFFFFFFLL}];
  }

  if (v10)
  {
    sqlite3_bind_int(a3, *a4, v10);
    ++*a4;
  }

  if (v12)
  {
    sqlite3_bind_int(a3, *a4, v12);
    ++*a4;
  }
}

- (id)columnNamesForProperties:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v17, "count")}];
  v5 = [(PPSSQLiteQuery *)self descriptor];
  v6 = [v5 entity];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v17;
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
          v13 = [v6 disambiguatedSQLForProperty:v11 shouldEscape:0];
          [v4 addObject:v13];
        }

        else
        {
          v13 = [v11 substringFromIndex:v12 + 1];
          v14 = [v6 disambiguatedSQLForProperty:v13 shouldEscape:0];
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

- (id)selectSQLWithProperties:(id)a3
{
  v4 = a3;
  v5 = [(PPSSQLiteQuery *)self descriptor];
  v6 = [v5 _sqlForSelectWithProperties:v4];

  return v6;
}

- (BOOL)enumerateProperties:(id)a3 error:(id *)a4 enumerationHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 count] >= 0x80000000)
  {
    v10 = MEMORY[0x277CBEAD8];
    v11 = [v8 count];
    [v10 raise:*MEMORY[0x277CBE660] format:{@"Insane number of properties for enumeration (%lu)", v11}];
  }

  v12 = [(PPSSQLiteQuery *)self descriptor];
  v13 = [v12 _sqlForSelectWithProperties:v8];

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
  v15 = v8;
  v20 = v15;
  v16 = v9;
  v21 = v16;
  v17 = [(PPSSQLiteDatabase *)database executeSQL:v13 shouldCache:1 error:a4 bindingHandler:v23 enumerationHandler:v19];

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

+ (id)queryWithDatabase:(id)a3 entity:(id)a4 predicate:(id)a5
{
  v5 = [PPSSQLiteQuery queryWithDatabase:a3 entity:a4 predicate:a5 groupByProperties:0 orderByProperties:0 orderByDirections:0 limitCount:0 offsetCount:0];

  return v5;
}

+ (id)queryWithDatabase:(id)a3 entity:(id)a4 predicate:(id)a5 groupByProperties:(id)a6 orderByProperties:(id)a7 orderByDirections:(id)a8 limitCount:(unint64_t)a9 offsetCount:(unint64_t)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = [[PPSSQLiteQueryDescriptor alloc] initWithEntity:v16 predicate:v17];
  [(PPSSQLiteQueryDescriptor *)v21 setOrderByDirections:v20];
  [(PPSSQLiteQueryDescriptor *)v21 setOrderByProperties:v19];
  [(PPSSQLiteQueryDescriptor *)v21 setGroupByProperties:v18];
  [(PPSSQLiteQueryDescriptor *)v21 setLimitCount:a9];
  [(PPSSQLiteQueryDescriptor *)v21 setOffsetCount:a10];
  v22 = [[PPSSQLiteQuery alloc] initWithDatabase:v15 descriptor:v21];

  return v22;
}

@end