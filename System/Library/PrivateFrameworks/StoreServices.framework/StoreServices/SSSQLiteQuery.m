@interface SSSQLiteQuery
- (BOOL)createTemporaryTableWithName:(id)a3 properties:(const void *)a4 count:(unint64_t)a5;
- (BOOL)deleteAllEntities;
- (SSSQLiteDatabase)database;
- (SSSQLiteQuery)initWithDatabase:(id)a3 descriptor:(id)a4;
- (SSSQLiteQueryDescriptor)queryDescriptor;
- (id)_newSelectSQLWithProperties:(const void *)a3 count:(unint64_t)a4;
- (id)copyEntityIdentifiers;
- (id)copySelectSQLWithProperties:(const void *)a3 count:(unint64_t)a4;
- (int64_t)countOfEntities;
- (void)bindToSelectStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4;
- (void)dealloc;
- (void)enumerateMemoryEntitiesUsingBlock:(id)a3;
- (void)enumerateMemoryEntitiesWithProperties:(id)a3 usingBlock:(id)a4;
- (void)enumeratePersistentIDsAndProperties:(const void *)a3 count:(unint64_t)a4 usingBlock:(id)a5;
- (void)enumeratePersistentIDsUsingBlock:(id)a3;
@end

@implementation SSSQLiteQuery

- (BOOL)deleteAllEntities
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  database = self->_database;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__SSSQLiteQuery_deleteAllEntities__block_invoke;
  v5[3] = &unk_1E84B2138;
  v5[4] = self;
  v5[5] = &v6;
  [(SSSQLiteDatabase *)database performTransactionWithBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __34__SSSQLiteQuery_deleteAllEntities__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) entityClass];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__SSSQLiteQuery_deleteAllEntities__block_invoke_2;
  v4[3] = &unk_1E84B2110;
  v4[4] = v2;
  v5 = *(a1 + 32);
  [v5 enumeratePersistentIDsUsingBlock:v4];
  return *(*(*(a1 + 40) + 8) + 24);
}

void __34__SSSQLiteQuery_deleteAllEntities__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [objc_alloc(*(a1 + 32)) initWithPersistentID:a2 inDatabase:*(*(a1 + 40) + 8)];
  *(*(*(a1 + 48) + 8) + 24) = [v6 deleteFromDatabase];
  *a4 = *(*(*(a1 + 48) + 8) + 24) ^ 1;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSSQLiteQuery;
  [(SSSQLiteQuery *)&v3 dealloc];
}

- (SSSQLiteQuery)initWithDatabase:(id)a3 descriptor:(id)a4
{
  v8.receiver = self;
  v8.super_class = SSSQLiteQuery;
  v6 = [(SSSQLiteQuery *)&v8 init];
  if (v6)
  {
    v6->_database = a3;
    v6->_descriptor = [a4 copy];
  }

  return v6;
}

- (void)bindToSelectStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4
{
  [(SSSQLitePredicate *)[(SSSQLiteQueryDescriptor *)self->_descriptor predicate] bindToStatement:a3 bindingIndex:a4];
  v7 = [(SSSQLiteQueryDescriptor *)self->_descriptor limitCount];
  if (v7)
  {
    sqlite3_bind_int(a3, *a4, v7);
    ++*a4;
  }
}

- (id)copyEntityIdentifiers
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__SSSQLiteQuery_copyEntityIdentifiers__block_invoke;
  v5[3] = &unk_1E84B2098;
  v5[4] = v3;
  [(SSSQLiteQuery *)self enumeratePersistentIDsUsingBlock:v5];
  return v3;
}

void __38__SSSQLiteQuery_copyEntityIdentifiers__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:a2];
  [*(a1 + 32) addObject:v3];
}

- (id)copySelectSQLWithProperties:(const void *)a3 count:(unint64_t)a4
{
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [(SSSQLiteQueryDescriptor *)self->_descriptor entityClass];
  if (a4)
  {
    v9 = v8;
    v10 = a3;
    v11 = a4;
    do
    {
      v12 = *v10++;
      [v7 addObject:{-[objc_class disambiguatedSQLForProperty:](v9, "disambiguatedSQLForProperty:", v12)}];
      --v11;
    }

    while (v11);
  }

  v13 = [(SSSQLiteQueryDescriptor *)self->_descriptor _newSelectSQLWithProperties:a3 count:a4 columns:v7];

  return v13;
}

- (int64_t)countOfEntities
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__SSSQLiteQuery_countOfEntities__block_invoke;
  v4[3] = &unk_1E84B20C0;
  v4[4] = &v5;
  [(SSSQLiteQuery *)self enumeratePersistentIDsUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)createTemporaryTableWithName:(id)a3 properties:(const void *)a4 count:(unint64_t)a5
{
  v9 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"CREATE TEMPORARY TABLE "];
  [v9 appendString:a3];
  [v9 appendString:@" AS "];
  v10 = [(SSSQLiteQueryDescriptor *)self->_descriptor copy];
  [v10 setOrderingDirections:0];
  [v10 setOrderingProperties:0];
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = [(SSSQLiteQueryDescriptor *)self->_descriptor entityClass];
  if (a5)
  {
    v13 = v12;
    v14 = a4;
    v15 = a5;
    do
    {
      v16 = *v14++;
      [v11 addObject:{-[objc_class disambiguatedSQLForProperty:](v13, "disambiguatedSQLForProperty:", v16)}];
      --v15;
    }

    while (v15);
  }

  v17 = [v10 _newSelectSQLWithProperties:a4 count:a5 columns:v11];
  [v9 appendString:v17];

  [v9 appendString:@";"];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  database = self->_database;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __63__SSSQLiteQuery_createTemporaryTableWithName_properties_count___block_invoke;
  v21[3] = &unk_1E84B20E8;
  v21[5] = self;
  v21[6] = &v22;
  v21[4] = v10;
  [(SSSQLiteDatabase *)database prepareStatementForSQL:v9 cache:0 usingBlock:v21];

  v19 = *(v23 + 24);
  _Block_object_dispose(&v22, 8);
  return v19;
}

uint64_t __63__SSSQLiteQuery_createTemporaryTableWithName_properties_count___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = 1;
  [objc_msgSend(*(a1 + 32) "predicate")];
  result = [*(*(a1 + 40) + 8) statementDidFinishAfterStepping:a2];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (SSSQLiteDatabase)database
{
  v2 = self->_database;

  return v2;
}

- (void)enumerateMemoryEntitiesUsingBlock:(id)a3
{
  v5 = [(SSSQLiteQueryDescriptor *)self->_descriptor memoryEntityClass];
  if (!v5)
  {
    v5 = objc_opt_class();
  }

  v6 = [(objc_class *)v5 defaultProperties];

  [(SSSQLiteQuery *)self enumerateMemoryEntitiesWithProperties:v6 usingBlock:a3];
}

- (void)enumerateMemoryEntitiesWithProperties:(id)a3 usingBlock:(id)a4
{
  v7 = [(SSSQLiteQueryDescriptor *)self->_descriptor memoryEntityClass];
  if (!v7)
  {
    v7 = objc_opt_class();
  }

  v8 = [a3 count];
  if (v8)
  {
    v9 = v8;
    v10 = malloc_type_malloc(8 * v8, 0x80040B8603338uLL);
    if (v10)
    {
      v11 = v10;
      [a3 getObjects:v10 range:{0, v9}];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __66__SSSQLiteQuery_enumerateMemoryEntitiesWithProperties_usingBlock___block_invoke_2;
      v12[3] = &unk_1E84B2188;
      v12[4] = v7;
      v12[5] = a3;
      v12[6] = a4;
      v12[7] = v9;
      [(SSSQLiteQuery *)self enumeratePersistentIDsAndProperties:v11 count:v9 usingBlock:v12];
      free(v11);
    }
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __66__SSSQLiteQuery_enumerateMemoryEntitiesWithProperties_usingBlock___block_invoke;
    v13[3] = &unk_1E84B2160;
    v13[4] = v7;
    v13[5] = a4;
    [(SSSQLiteQuery *)self enumeratePersistentIDsUsingBlock:v13];
  }
}

void __66__SSSQLiteQuery_enumerateMemoryEntitiesWithProperties_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(*(a1 + 32));
  [v4 setDatabaseID:a2];
  (*(*(a1 + 40) + 16))();
}

void __66__SSSQLiteQuery_enumerateMemoryEntitiesWithProperties_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = objc_alloc_init(*(a1 + 32));
  [v9 setDatabaseID:a2];
  v6 = *(a1 + 56);
  if (v6 >= 1)
  {
    for (i = 0; i < v6; ++i)
    {
      v8 = *(a3 + 8 * i);
      if (v8)
      {
        [v9 setValue:v8 forProperty:{objc_msgSend(*(a1 + 40), "objectAtIndex:", i)}];
        v6 = *(a1 + 56);
      }
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)enumeratePersistentIDsUsingBlock:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__SSSQLiteQuery_enumeratePersistentIDsUsingBlock___block_invoke;
  v3[3] = &unk_1E84B21B0;
  v3[4] = a3;
  [(SSSQLiteQuery *)self enumeratePersistentIDsAndProperties:0 count:0 usingBlock:v3];
}

- (void)enumeratePersistentIDsAndProperties:(const void *)a3 count:(unint64_t)a4 usingBlock:(id)a5
{
  v8 = [(SSSQLiteQuery *)self _newSelectSQLWithProperties:a3 count:?];
  database = self->_database;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__SSSQLiteQuery_enumeratePersistentIDsAndProperties_count_usingBlock___block_invoke;
  v10[3] = &unk_1E84B21D8;
  v10[5] = a5;
  v10[6] = a4;
  v10[4] = self;
  [(SSSQLiteDatabase *)database prepareStatementForSQL:v8 cache:0 usingBlock:v10];
}

void __70__SSSQLiteQuery_enumeratePersistentIDsAndProperties_count_usingBlock___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v13 = 1;
  [*(a1 + 32) bindToSelectStatement:a2 bindingIndex:&v13];
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = malloc_type_calloc(v4, 8uLL, 0x80040B8603338uLL);
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
  do
  {
    if (![*(*(a1 + 32) + 8) statementHasRowAfterStepping:a2])
    {
      break;
    }

    v7 = objc_autoreleasePoolPush();
    if (v5 && *(a1 + 48))
    {
      v8 = 0;
      do
      {

        v5[v8] = SSSQLiteCopyFoundationValueForStatementColumn(a2, v8 + 1);
        ++v8;
      }

      while (v8 < *(a1 + 48));
    }

    v12 = 0;
    v9 = *(a1 + 40);
    v10 = sqlite3_column_int64(a2, 0);
    (*(v9 + 16))(v9, v10, v5, v6++, &v12);
    LODWORD(v9) = v12;
    objc_autoreleasePoolPop(v7);
  }

  while (v9 != 1);
  if (v5)
  {
    if (*(a1 + 48))
    {
      v11 = 0;
      do
      {
      }

      while (v11 < *(a1 + 48));
    }

    free(v5);
  }
}

- (SSSQLiteQueryDescriptor)queryDescriptor
{
  v2 = [(SSSQLiteQueryDescriptor *)self->_descriptor copy];

  return v2;
}

- (id)_newSelectSQLWithProperties:(const void *)a3 count:(unint64_t)a4
{
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [(SSSQLiteQueryDescriptor *)self->_descriptor entityClass];
  [v7 addObject:{-[objc_class disambiguatedSQLForProperty:](v8, "disambiguatedSQLForProperty:", @"ROWID"}];
  if (a4)
  {
    v9 = a3;
    v10 = a4;
    do
    {
      v11 = *v9++;
      [v7 addObject:{-[objc_class disambiguatedSQLForProperty:](v8, "disambiguatedSQLForProperty:", v11)}];
      --v10;
    }

    while (v10);
  }

  v12 = [(SSSQLiteQueryDescriptor *)self->_descriptor _newSelectSQLWithProperties:a3 count:a4 columns:v7];

  return v12;
}

@end