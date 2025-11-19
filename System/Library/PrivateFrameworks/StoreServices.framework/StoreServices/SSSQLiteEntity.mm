@interface SSSQLiteEntity
+ (BOOL)_insertValues:(id)a3 intoTable:(id)a4 withPersistentID:(int64_t)a5 database:(id)a6;
+ (id)_aggregateValueForProperty:(id)a3 function:(id)a4 predicate:(id)a5 database:(id)a6;
+ (id)anyInDatabase:(id)a3 predicate:(id)a4;
+ (id)copyDatabaseDictionaryToSetClientDictionary:(id)a3;
+ (id)disambiguatedSQLForProperty:(id)a3;
+ (id)queryWithDatabase:(id)a3 predicate:(id)a4 orderingProperties:(id)a5;
- (BOOL)_deleteRowFromTable:(id)a3 usingColumn:(id)a4;
- (BOOL)deleteFromDatabase;
- (BOOL)existsInDatabase;
- (BOOL)setValue:(id)a3 forProperty:(id)a4;
- (BOOL)setValuesWithDictionary:(id)a3;
- (SSSQLiteEntity)initWithPersistentID:(int64_t)a3 inDatabase:(id)a4;
- (SSSQLiteEntity)initWithPropertyValues:(id)a3 inDatabase:(id)a4;
- (id)_copyTableClusteredValuesWithValues:(id)a3;
- (id)copyValuesForClientProperties:(id)a3;
- (id)copyXPCEncodedValuesForClientProperties:(id)a3;
- (id)valueForProperty:(id)a3;
- (void)getValues:(id *)a3 forProperties:(const void *)a4 count:(unint64_t)a5;
@end

@implementation SSSQLiteEntity

uint64_t __36__SSSQLiteEntity_deleteFromDatabase__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _deleteRowFromTable:objc_msgSend(objc_opt_class() usingColumn:{"databaseTable"), @"ROWID"}];
  v2 = [objc_opt_class() foreignDatabaseTablesToDelete];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v11 + 1) + 8 * v6);
      v8 = [objc_opt_class() foreignKeyColumnForTable:v7];
      if (v8)
      {
        *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _deleteRowFromTable:v7 usingColumn:v8];
        if (*(*(*(a1 + 40) + 8) + 24) != 1)
        {
          break;
        }
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *(*(a1 + 32) + 8) = 0;
    v9 = *(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (BOOL)deleteFromDatabase
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  database = self->_database;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__SSSQLiteEntity_deleteFromDatabase__block_invoke;
  v5[3] = &unk_1E84B1F38;
  v5[4] = self;
  v5[5] = &v6;
  [(SSSQLiteDatabase *)database performTransactionWithBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (SSSQLiteEntity)initWithPersistentID:(int64_t)a3 inDatabase:(id)a4
{
  v7.receiver = self;
  v7.super_class = SSSQLiteEntity;
  result = [(SSSQLiteEntity *)&v7 init];
  if (result)
  {
    result->_database = a4;
    result->_persistentID = a3;
  }

  return result;
}

- (SSSQLiteEntity)initWithPropertyValues:(id)a3 inDatabase:(id)a4
{
  v7 = [a3 objectForKey:@"ROWID"];
  if (v7)
  {
    v8 = [v7 longLongValue];
  }

  else
  {
    v9 = CFUUIDCreate(0);
    v8 = *&CFUUIDGetUUIDBytes(v9);
    CFRelease(v9);
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v10 = [(SSSQLiteEntity *)self _copyTableClusteredValuesWithValues:a3];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__SSSQLiteEntity_initWithPropertyValues_inDatabase___block_invoke;
  v13[3] = &unk_1E84B1EE8;
  v13[4] = self;
  v13[5] = v10;
  v13[7] = &v14;
  v13[8] = v8;
  v13[6] = a4;
  [a4 performTransactionWithBlock:v13];

  if ((v15[3] & 1) == 0)
  {

    self = 0;
  }

  v11 = [(SSSQLiteEntity *)self initWithPersistentID:v8 inDatabase:a4];
  _Block_object_dispose(&v14, 8);
  return v11;
}

uint64_t __52__SSSQLiteEntity_initWithPropertyValues_inDatabase___block_invoke(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__SSSQLiteEntity_initWithPropertyValues_inDatabase___block_invoke_2;
  v5[3] = &unk_1E84B1EC0;
  v5[4] = v2;
  v7 = *(a1 + 64);
  v6 = *(a1 + 48);
  [v3 enumerateKeysAndObjectsUsingBlock:v5];
  return *(*(*(a1 + 56) + 8) + 24);
}

uint64_t __52__SSSQLiteEntity_initWithPropertyValues_inDatabase___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) _insertValues:a3 intoTable:a2 withPersistentID:*(a1 + 56) database:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

+ (id)copyDatabaseDictionaryToSetClientDictionary:(id)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__SSSQLiteEntity_copyDatabaseDictionaryToSetClientDictionary___block_invoke;
  v7[3] = &unk_1E84B1F10;
  v7[4] = a1;
  v7[5] = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
  return v5;
}

void __62__SSSQLiteEntity_copyDatabaseDictionaryToSetClientDictionary___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = [*(a1 + 32) databasePropertyToSetClientProperty:a2];
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) databaseValueForProperty:v6 clientValue:a3];

    [v8 setObject:v9 forKey:v7];
  }

  else
  {
    v10 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    if (!os_log_type_enabled([v10 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v23 = 138412546;
      v24 = objc_opt_class();
      v25 = 2112;
      v26 = a2;
      LODWORD(v22) = 22;
      v13 = _os_log_send_and_compose_impl();
      if (v13)
      {
        v14 = v13;
        v15 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v23, v22}];
        free(v14);
        SSFileLog(v10, @"%@", v16, v17, v18, v19, v20, v21, v15);
      }
    }
  }
}

+ (id)disambiguatedSQLForProperty:(id)a3
{
  if ([a1 joinClauseForProperty:?])
  {
    return a3;
  }

  else
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", objc_msgSend(a1, "databaseTable"), a3];
  }
}

- (id)copyValuesForClientProperties:(id)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [a3 count];
  v7 = malloc_type_malloc(8 * v6, 0x80040B8603338uLL);
  v8 = malloc_type_malloc(8 * v6, 0x80040B8603338uLL);
  if (v6 < 1)
  {
    [(SSSQLiteEntity *)self getValues:v7 forProperties:v8 count:v6];
    if (v8)
    {
LABEL_10:
      free(v8);
    }
  }

  else
  {
    for (i = 0; i != v6; ++i)
    {
      *(v8 + i) = [objc_opt_class() databasePropertyToGetClientProperty:{objc_msgSend(a3, "objectAtIndex:", i)}];
    }

    [(SSSQLiteEntity *)self getValues:v7 forProperties:v8 count:v6];
    for (j = 0; j != v6; ++j)
    {
      v11 = v7[j];
      if (v11 && *(v8 + j))
      {
        [v5 setObject:v11 forKey:{objc_msgSend(a3, "objectAtIndex:", j)}];
      }
    }

    if (v8)
    {
      goto LABEL_10;
    }
  }

  if (v7)
  {
    free(v7);
  }

  return v5;
}

- (id)copyXPCEncodedValuesForClientProperties:(id)a3
{
  v5 = xpc_array_create(0, 0);
  v6 = [a3 count];
  v7 = malloc_type_malloc(8 * v6, 0x80040B8603338uLL);
  if (v7)
  {
    v8 = v7;
    v9 = malloc_type_malloc(8 * v6, 0x80040B8603338uLL);
    if (v9)
    {
      v10 = v9;
      if (v6)
      {
        v11 = 0;
        while (1)
        {
          v12 = [objc_opt_class() databasePropertyToGetClientProperty:{objc_msgSend(a3, "objectAtIndex:", v11)}];
          v8[v11] = v12;
          if (!v12)
          {
            break;
          }

          if (v6 == ++v11)
          {
            [(SSSQLiteEntity *)self getValues:v10 forProperties:v8 count:v6];
            v13 = v10;
            do
            {
              v14 = *v13;
              if (!*v13)
              {
                v14 = [MEMORY[0x1E695DFB0] null];
              }

              SSXPCArraySetCFObject(v5, 0xFFFFFFFFFFFFFFFFLL, v14);
              ++v13;
              --v6;
            }

            while (v6);
            break;
          }
        }
      }

      else
      {
        [(SSSQLiteEntity *)self getValues:v9 forProperties:v8 count:0];
      }

      free(v10);
    }

    free(v8);
  }

  return v5;
}

- (BOOL)existsInDatabase
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT 1 FROM %@ WHERE %@ = ? LIMIT 1;", objc_msgSend(objc_opt_class(), "databaseTable"), @"ROWID"];
  database = self->_database;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__SSSQLiteEntity_existsInDatabase__block_invoke;
  v6[3] = &unk_1E84B1E90;
  v6[4] = self;
  v6[5] = &v7;
  [(SSSQLiteDatabase *)database prepareStatementForSQL:v3 cache:1 usingBlock:v6];

  LOBYTE(self) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return self;
}

uint64_t __34__SSSQLiteEntity_existsInDatabase__block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(*(a1 + 32) + 16));
  result = [*(*(a1 + 32) + 8) statementHasRowAfterStepping:a2];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)getValues:(id *)a3 forProperties:(const void *)a4 count:(unint64_t)a5
{
  v29 = *MEMORY[0x1E69E9840];
  if (a5 == 1 && [*a4 isEqualToString:@"ROWID"])
  {
    *a3 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_persistentID];
  }

  else
  {
    v9 = objc_opt_class();
    v21 = [v9 databaseTable];
    v10 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"SELECT "];
    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    if (a5)
    {
      v12 = 0;
      do
      {
        a3[v12] = 0;
        v13 = [v9 disambiguatedSQLForProperty:{a4[v12], v21}];
        if (v12)
        {
          [v10 appendString:{@", "}];
        }

        [v10 appendString:v13];
        v14 = [v9 joinClauseForProperty:a4[v12]];
        if (v14)
        {
          [v11 addObject:v14];
        }

        ++v12;
      }

      while (a5 != v12);
    }

    [v10 appendString:{@" FROM ", v21}];
    [v10 appendString:v22];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v11);
          }

          v19 = *(*(&v24 + 1) + 8 * i);
          [v10 appendString:@" "];
          [v10 appendString:v19];
        }

        v16 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v16);
    }

    [v10 appendString:@" WHERE "];
    [v10 appendString:v22];
    [v10 appendString:@".ROWID = ?;"];
    database = self->_database;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __48__SSSQLiteEntity_getValues_forProperties_count___block_invoke;
    v23[3] = &unk_1E84B1F60;
    v23[4] = self;
    v23[5] = a5;
    v23[6] = a3;
    [(SSSQLiteDatabase *)database prepareStatementForSQL:v10 cache:1 usingBlock:v23];
  }
}

id __48__SSSQLiteEntity_getValues_forProperties_count___block_invoke(void *a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1[4] + 16));
  result = [*(a1[4] + 8) statementHasRowAfterStepping:a2];
  if (result && a1[5])
  {
    v5 = 0;
    do
    {
      result = SSSQLiteCopyFoundationValueForStatementColumn(a2, v5);
      *(a1[6] + 8 * v5++) = result;
    }

    while (v5 < a1[5]);
  }

  return result;
}

- (BOOL)setValue:(id)a3 forProperty:(id)a4
{
  v7 = objc_alloc(MEMORY[0x1E695DF20]);
  if (!a3)
  {
    a3 = [MEMORY[0x1E695DFB0] null];
  }

  v8 = [v7 initWithObjectsAndKeys:{a3, a4, 0}];
  v9 = [(SSSQLiteEntity *)self setValuesWithDictionary:v8];

  return v9;
}

- (BOOL)setValuesWithDictionary:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v5 = objc_opt_class();
  v6 = [v5 databaseTable];
  database = self->_database;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__SSSQLiteEntity_setValuesWithDictionary___block_invoke;
  v9[3] = &unk_1E84B1FD8;
  v9[4] = self;
  v9[5] = a3;
  v9[6] = v5;
  v9[7] = v6;
  v9[8] = &v10;
  [(SSSQLiteDatabase *)database performTransactionWithBlock:v9];
  LOBYTE(a3) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return a3;
}

uint64_t __42__SSSQLiteEntity_setValuesWithDictionary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyTableClusteredValuesWithValues:*(a1 + 40)];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__SSSQLiteEntity_setValuesWithDictionary___block_invoke_2;
  v5[3] = &unk_1E84B1FB0;
  v6 = *(a1 + 48);
  v3 = *(a1 + 64);
  v7 = *(a1 + 32);
  v8 = v3;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];

  return *(*(*(a1 + 64) + 8) + 24);
}

void __42__SSSQLiteEntity_setValuesWithDictionary___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = [*(a1 + 32) foreignKeyColumnForTable:a2];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = @"ROWID";
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  if (([a2 isEqualToString:*(a1 + 40)] & 1) == 0)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"SELECT 1 FROM "];
    [v10 appendString:a2];
    [v10 appendString:@" WHERE "];
    [v10 appendString:v9];
    [v10 appendString:@" =  ? LIMIT 1;"];
    v11 = *(a1 + 48);
    v12 = *(v11 + 8);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __42__SSSQLiteEntity_setValuesWithDictionary___block_invoke_3;
    v22[3] = &unk_1E84B1E90;
    v22[4] = v11;
    v22[5] = &v23;
    [v12 prepareStatementForSQL:v10 cache:1 usingBlock:v22];
  }

  if (v24[3])
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"UPDATE "];
    [v14 appendString:a2];
    [v14 appendString:@" SET "];
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v21 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __42__SSSQLiteEntity_setValuesWithDictionary___block_invoke_4;
    v19[3] = &unk_1E84B1F88;
    v19[5] = v13;
    v19[6] = v20;
    v19[4] = v14;
    [a3 enumerateKeysAndObjectsUsingBlock:v19];
    [v14 appendString:@" WHERE "];
    [v14 appendString:a2];
    [v14 appendString:@"."];
    [v14 appendString:v9];
    [v14 appendString:@" = ?;"];
    v17[0] = MEMORY[0x1E69E9820];
    v15 = *(a1 + 48);
    v16 = *(*(a1 + 48) + 8);
    v17[1] = 3221225472;
    v17[2] = __42__SSSQLiteEntity_setValuesWithDictionary___block_invoke_5;
    v17[3] = &unk_1E84B1E40;
    v17[4] = v13;
    v18 = v15;
    [v16 prepareStatementForSQL:v14 cache:1 usingBlock:v17];

    _Block_object_dispose(v20, 8);
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = [objc_opt_class() _insertValues:a3 intoTable:a2 withPersistentID:*(*(a1 + 48) + 16) database:*(*(a1 + 48) + 8)];
  }

  *a4 = *(*(*(a1 + 56) + 8) + 24) ^ 1;
  _Block_object_dispose(&v23, 8);
}

uint64_t __42__SSSQLiteEntity_setValuesWithDictionary___block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(*(a1 + 32) + 16));
  result = [*(*(a1 + 32) + 8) statementHasRowAfterStepping:a2];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __42__SSSQLiteEntity_setValuesWithDictionary___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  [*(a1 + 32) appendString:a2];
  [*(a1 + 32) appendString:@" = ?"];
  *(*(*(a1 + 48) + 8) + 24) = 1;
  v6 = *(a1 + 40);

  return [v6 addObject:a3];
}

uint64_t __42__SSSQLiteEntity_setValuesWithDictionary___block_invoke_5(void *a1, sqlite3_stmt *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a1[4];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    v8 = 1;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        SSSQLiteBindFoundationValueToStatement(a2, v10 + v9, *(*(&v13 + 1) + 8 * v9));
        ++v9;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v8 = v10 + v9;
    }

    while (v6);
    v11 = v10 + v9;
  }

  else
  {
    v11 = 1;
  }

  sqlite3_bind_int64(a2, v11, *(a1[5] + 16));
  result = [*(a1[5] + 8) statementDidFinishAfterStepping:a2];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (id)valueForProperty:(id)a3
{
  v4 = 0;
  v5 = a3;
  [(SSSQLiteEntity *)self getValues:&v4 forProperties:&v5 count:1];
  return v4;
}

+ (BOOL)_insertValues:(id)a3 intoTable:(id)a4 withPersistentID:(int64_t)a5 database:(id)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 1;
  v11 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"INSERT OR REPLACE INTO "];
  [v11 appendString:a4];
  objc_msgSend(v11, "appendString:", @" (");
  v12 = [a1 foreignKeyColumnForTable:a4];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = @"ROWID";
  }

  [v11 appendString:v13];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = [a3 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v14)
  {
    v15 = *v28;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(a3);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        [v11 appendString:{@", "}];
        [v11 appendString:v17];
      }

      v14 = [a3 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v14);
  }

  [v11 appendString:@") VALUES (?"];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v18 = [a3 countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v18)
  {
    v19 = *v24;
    while (1)
    {
      if (*v24 != v19)
      {
        objc_enumerationMutation(a3);
      }

      [v11 appendString:{@", ?"}];
      if (!--v18)
      {
        v18 = [a3 countByEnumeratingWithState:&v23 objects:v35 count:16];
        if (!v18)
        {
          break;
        }
      }
    }
  }

  [v11 appendString:@";"]);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __68__SSSQLiteEntity__insertValues_intoTable_withPersistentID_database___block_invoke;
  v22[3] = &unk_1E84B2000;
  v22[6] = &v31;
  v22[7] = a5;
  v22[4] = a3;
  v22[5] = a6;
  [a6 prepareStatementForSQL:v11 cache:0 usingBlock:v22];

  v20 = *(v32 + 24);
  _Block_object_dispose(&v31, 8);
  return v20;
}

uint64_t __68__SSSQLiteEntity__insertValues_intoTable_withPersistentID_database___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  sqlite3_bind_int64(a2, 1, *(a1 + 56));
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = 2;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v8 = v10 + 1;
        SSSQLiteBindFoundationValueToStatement(a2, v10++, [*(a1 + 32) objectForKey:*(*(&v12 + 1) + 8 * v9++)]);
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  result = [*(a1 + 40) statementDidFinishAfterStepping:a2];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (id)_copyTableClusteredValuesWithValues:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = objc_opt_class();
  v6 = [v5 databaseTable];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__SSSQLiteEntity__copyTableClusteredValuesWithValues___block_invoke;
  v8[3] = &unk_1E84B2028;
  v8[4] = v5;
  v8[5] = v6;
  v8[6] = v4;
  [a3 enumerateKeysAndObjectsUsingBlock:v8];
  return v4;
}

uint64_t __54__SSSQLiteEntity__copyTableClusteredValuesWithValues___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  result = [a2 isEqualToString:@"ROWID"];
  if ((result & 1) == 0)
  {
    v7 = [*(a1 + 32) foreignDatabaseTableForProperty:v4];
    if (v7)
    {
      v8 = v7;
      v4 = [*(a1 + 32) foreignDatabaseColumnForProperty:v4];
    }

    else
    {
      v8 = *(a1 + 40);
    }

    v9 = [*(a1 + 48) objectForKey:v8];
    if (!v9)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [*(a1 + 48) setObject:v9 forKey:v8];
      v10 = v9;
    }

    return [v9 setObject:a3 forKey:v4];
  }

  return result;
}

- (BOOL)_deleteRowFromTable:(id)a3 usingColumn:(id)a4
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DELETE FROM %@ WHERE %@ = ?;", a3, a4];
  database = self->_database;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__SSSQLiteEntity__deleteRowFromTable_usingColumn___block_invoke;
  v8[3] = &unk_1E84B1E90;
  v8[4] = self;
  v8[5] = &v9;
  [(SSSQLiteDatabase *)database prepareStatementForSQL:v5 cache:1 usingBlock:v8];

  LOBYTE(self) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return self;
}

uint64_t __50__SSSQLiteEntity__deleteRowFromTable_usingColumn___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(*(a1 + 32) + 16));
  result = [*(*(a1 + 32) + 8) statementDidFinishAfterStepping:a2];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (id)anyInDatabase:(id)a3 predicate:(id)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__60;
  v14 = __Block_byref_object_dispose__60;
  v15 = 0;
  v6 = [a1 queryWithDatabase:a3 predicate:a4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__SSSQLiteEntity_SSSQLiteQueryAdditions__anyInDatabase_predicate___block_invoke;
  v9[3] = &unk_1E84B2200;
  v9[5] = a3;
  v9[6] = &v10;
  v9[4] = a1;
  [v6 enumeratePersistentIDsUsingBlock:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t __66__SSSQLiteEntity_SSSQLiteQueryAdditions__anyInDatabase_predicate___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [objc_alloc(*(a1 + 32)) initWithPersistentID:a2 inDatabase:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 40) = result;
  *a4 = 1;
  return result;
}

+ (id)_aggregateValueForProperty:(id)a3 function:(id)a4 predicate:(id)a5 database:(id)a6
{
  v23[1] = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = __Block_byref_object_copy__60;
  v21 = __Block_byref_object_dispose__60;
  v22 = 0;
  v11 = objc_alloc_init(SSSQLiteQueryDescriptor);
  [(SSSQLiteQueryDescriptor *)v11 setEntityClass:a1];
  [(SSSQLiteQueryDescriptor *)v11 setPredicate:a5];
  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@(%@)", a4, objc_msgSend(a1, "disambiguatedSQLForProperty:", a3)];
  v23[0] = a3;
  v13 = -[SSSQLiteQueryDescriptor _newSelectSQLWithProperties:count:columns:](v11, "_newSelectSQLWithProperties:count:columns:", v23, 1, [MEMORY[0x1E695DEC8] arrayWithObject:v12]);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __97__SSSQLiteEntity_SSSQLiteQueryAdditions___aggregateValueForProperty_function_predicate_database___block_invoke;
  v16[3] = &unk_1E84B1E40;
  v16[4] = v11;
  v16[5] = a6;
  v16[6] = &v17;
  [a6 prepareStatementForSQL:v13 cache:1 usingBlock:v16];

  v14 = v18[5];
  _Block_object_dispose(&v17, 8);
  return v14;
}

uint64_t __97__SSSQLiteEntity_SSSQLiteQueryAdditions___aggregateValueForProperty_function_predicate_database___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v5 = 1;
  [objc_msgSend(*(a1 + 32) "predicate")];
  result = [*(a1 + 40) statementHasRowAfterStepping:a2];
  if (result)
  {
    result = SSSQLiteCopyFoundationValueForStatementColumn(a2, 0);
    *(*(*(a1 + 48) + 8) + 40) = result;
  }

  return result;
}

+ (id)queryWithDatabase:(id)a3 predicate:(id)a4 orderingProperties:(id)a5
{
  v9 = objc_alloc_init(SSSQLiteQueryDescriptor);
  [(SSSQLiteQueryDescriptor *)v9 setEntityClass:a1];
  -[SSSQLiteQueryDescriptor setMemoryEntityClass:](v9, "setMemoryEntityClass:", [a1 memoryEntityClass]);
  [(SSSQLiteQueryDescriptor *)v9 setOrderingProperties:a5];
  [(SSSQLiteQueryDescriptor *)v9 setPredicate:a4];
  v10 = [[SSSQLiteQuery alloc] initWithDatabase:a3 descriptor:v9];

  return v10;
}

@end