@interface PFSQLiteQueryFactory
+ (BOOL)bindToStatement:(sqlite3_stmt *)statement objectDescriptor:(id)descriptor fromCoder:(id)coder database:(sqlite3 *)database error:(id *)error;
+ (BOOL)decodeObjectForColumn:(id)column stmt:(sqlite3_stmt *)stmt idx:(int)idx outValue:(id *)value;
+ (BOOL)decodeObjectForDescriptor:(id)descriptor stmt:(sqlite3_stmt *)stmt intoCoder:(id)coder;
+ (id)generateDeleteSQLForDescriptor:(id)descriptor predicate:(id)predicate bindings:(id *)bindings;
+ (id)generateInsertStatementForDescriptor:(id)descriptor coder:(id)coder canUpsert:(BOOL)upsert bindings:(id *)bindings;
+ (id)generateSelectStatementForColumns:(id)columns table:(id)table predicate:(id)predicate limitOffset:(id)offset orderedBy:(id)by bindings:(id *)bindings;
+ (id)generateSelectStatementForDescriptor:(id)descriptor predicate:(id)predicate limitOffset:(id)offset orderedBy:(id)by bindings:(id *)bindings;
@end

@implementation PFSQLiteQueryFactory

+ (id)generateSelectStatementForDescriptor:(id)descriptor predicate:(id)predicate limitOffset:(id)offset orderedBy:(id)by bindings:(id *)bindings
{
  predicateCopy = predicate;
  offsetCopy = offset;
  byCopy = by;
  descriptorCopy = descriptor;
  columnNames = [descriptorCopy columnNames];
  array = [columnNames array];
  v17 = [array componentsJoinedByString:{@", "}];

  v18 = MEMORY[0x1E696AEC0];
  tableName = [descriptorCopy tableName];

  v20 = [v18 stringWithFormat:@"SELECT %@ FROM %@", v17, tableName];

  *(&v34 + 1) = 0;
  if (predicateCopy)
  {
    v21 = [predicateCopy pf_toSQLWithBindings:&v34 + 8];
    v22 = [v20 stringByAppendingFormat:@" %@", v21];

    v20 = v22;
  }

  if (byCopy)
  {
    v23 = [byCopy pf_toSQLWithBindings:0];
    v24 = [v20 stringByAppendingFormat:@" %@", v23];

    v20 = v24;
  }

  *&v34 = 0;
  if (offsetCopy)
  {
    v25 = [offsetCopy pf_toSQLWithBindings:&v34];
    v26 = [v20 stringByAppendingFormat:@" %@", v25];

    v20 = v26;
  }

  if (bindings && v34 != 0)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __102__PFSQLiteQueryFactory_generateSelectStatementForDescriptor_predicate_limitOffset_orderedBy_bindings___block_invoke;
    v28[3] = &unk_1E81897F8;
    v32 = *(&v34 + 1);
    v29 = predicateCopy;
    v30 = v20;
    v33 = v34;
    v31 = offsetCopy;
    *bindings = MEMORY[0x1C691C400](v28);
  }

  return v20;
}

uint64_t __102__PFSQLiteQueryFactory_generateSelectStatementForDescriptor_predicate_limitOffset_orderedBy_bindings___block_invoke(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = sqlite3_db_handle(a2);
  if (*(a1 + 56))
  {
    v7 = 0;
    while (([*(a1 + 32) pf_bindToStatement:a2 index:v7 offset:0] & 1) != 0)
    {
      if (++v7 >= *(a1 + 56))
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (!*(a1 + 64))
    {
      return 1;
    }

    v8 = 0;
    while (([*(a1 + 48) pf_bindToStatement:a2 index:v8 offset:*(a1 + 56)] & 1) != 0)
    {
      if (++v8 >= *(a1 + 64))
      {
        return 1;
      }
    }
  }

  if (!a3)
  {
    return 0;
  }

  v10 = _NSErrorForSQLiteDatabase(v6, 3, *(a1 + 40), 0);
  v11 = v10;
  result = 0;
  *a3 = v10;
  return result;
}

+ (id)generateSelectStatementForColumns:(id)columns table:(id)table predicate:(id)predicate limitOffset:(id)offset orderedBy:(id)by bindings:(id *)bindings
{
  predicateCopy = predicate;
  offsetCopy = offset;
  byCopy = by;
  v16 = MEMORY[0x1E696AEC0];
  tableCopy = table;
  v18 = [columns valueForKey:@"name"];
  v19 = [v18 componentsJoinedByString:{@", "}];
  tableCopy = [v16 stringWithFormat:@"SELECT %@ FROM %@", v19, tableCopy];

  v35 = 0;
  if (predicateCopy)
  {
    v21 = [predicateCopy pf_toSQLWithBindings:&v35];
    v22 = [tableCopy stringByAppendingFormat:@" %@", v21];

    tableCopy = v22;
  }

  if (byCopy)
  {
    v23 = [byCopy pf_toSQLWithBindings:0];
    v24 = [tableCopy stringByAppendingFormat:@" %@", v23];

    tableCopy = v24;
  }

  v34 = 0;
  if (offsetCopy)
  {
    v25 = [offsetCopy pf_toSQLWithBindings:&v34];
    v26 = [tableCopy stringByAppendingFormat:@" %@", v25];

    tableCopy = v26;
  }

  if (bindings)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __105__PFSQLiteQueryFactory_generateSelectStatementForColumns_table_predicate_limitOffset_orderedBy_bindings___block_invoke;
    v28[3] = &unk_1E81897F8;
    v32 = v35;
    v29 = predicateCopy;
    v30 = tableCopy;
    v33 = v34;
    v31 = offsetCopy;
    *bindings = MEMORY[0x1C691C400](v28);
  }

  return tableCopy;
}

uint64_t __105__PFSQLiteQueryFactory_generateSelectStatementForColumns_table_predicate_limitOffset_orderedBy_bindings___block_invoke(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = sqlite3_db_handle(a2);
  if (!*(a1 + 56))
  {
LABEL_5:
    if (!*(a1 + 64))
    {
      return 1;
    }

    v8 = 0;
    while (([*(a1 + 48) pf_bindToStatement:a2 index:v8 offset:*(a1 + 56)] & 1) != 0)
    {
      if (++v8 >= *(a1 + 64))
      {
        return 1;
      }
    }

    goto LABEL_11;
  }

  v7 = 0;
  while (([*(a1 + 32) pf_bindToStatement:a2 index:v7 offset:0] & 1) != 0)
  {
    if (++v7 >= *(a1 + 56))
    {
      goto LABEL_5;
    }
  }

  if (a3)
  {
LABEL_11:
    v10 = _NSErrorForSQLiteDatabase(v6, 3, *(a1 + 40), 0);
    v11 = v10;
    result = 0;
    *a3 = v10;
    return result;
  }

  return 0;
}

+ (id)generateDeleteSQLForDescriptor:(id)descriptor predicate:(id)predicate bindings:(id *)bindings
{
  predicateCopy = predicate;
  v8 = MEMORY[0x1E696AEC0];
  tableName = [descriptor tableName];
  v10 = [v8 stringWithFormat:@"DELETE FROM %@", tableName];

  v18 = 0;
  if (predicateCopy)
  {
    v11 = [predicateCopy pf_toSQLWithBindings:&v18];
    v12 = [v10 stringByAppendingFormat:@" %@", v11];

    v10 = v12;
  }

  if (bindings)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __74__PFSQLiteQueryFactory_generateDeleteSQLForDescriptor_predicate_bindings___block_invoke;
    v14[3] = &unk_1E8189820;
    v17 = v18;
    v15 = predicateCopy;
    v16 = v10;
    *bindings = MEMORY[0x1C691C400](v14);
  }

  return v10;
}

uint64_t __74__PFSQLiteQueryFactory_generateDeleteSQLForDescriptor_predicate_bindings___block_invoke(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v6 = sqlite3_db_handle(a2);
  if (!*(a1 + 48))
  {
    return 1;
  }

  v7 = v6;
  v8 = 0;
  while (([*(a1 + 32) pf_bindToStatement:a2 index:v8 offset:0] & 1) != 0)
  {
    if (++v8 >= *(a1 + 48))
    {
      return 1;
    }
  }

  if (!a3)
  {
    return 0;
  }

  v10 = _NSErrorForSQLiteDatabase(v7, 3, *(a1 + 40), 0);
  v11 = v10;
  result = 0;
  *a3 = v10;
  return result;
}

+ (id)generateInsertStatementForDescriptor:(id)descriptor coder:(id)coder canUpsert:(BOOL)upsert bindings:(id *)bindings
{
  descriptorCopy = descriptor;
  coderCopy = coder;
  v10 = MEMORY[0x1E695DF70];
  columns = [descriptorCopy columns];
  v12 = [v10 arrayWithCapacity:{objc_msgSend(columns, "count")}];

  columns2 = [descriptorCopy columns];
  v14 = [columns2 count];

  if (v14)
  {
    v15 = 0;
    do
    {
      [v12 addObject:@"?"];
      ++v15;
      columns3 = [descriptorCopy columns];
      v17 = [columns3 count];
    }

    while (v15 < v17);
  }

  v18 = &stru_1F425B6D8;
  if (upsert)
  {
    columns4 = [descriptorCopy columns];
    v20 = [columns4 bs_firstObjectPassingTest:&__block_literal_global_7];

    if (v20)
    {
      v18 = @"OR REPLACE";
    }
  }

  v21 = MEMORY[0x1E696AEC0];
  tableName = [descriptorCopy tableName];
  columnNames = [descriptorCopy columnNames];
  array = [columnNames array];
  v25 = [array componentsJoinedByString:{@", "}];
  v26 = [v12 componentsJoinedByString:{@", "}];
  v27 = [v21 stringWithFormat:@"INSERT %@ INTO %@ (%@) VALUES(%@)", v18, tableName, v25, v26];;

  if (bindings)
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __86__PFSQLiteQueryFactory_generateInsertStatementForDescriptor_coder_canUpsert_bindings___block_invoke_2;
    v31[3] = &unk_1E8189820;
    selfCopy = self;
    v32 = descriptorCopy;
    v33 = coderCopy;
    *bindings = MEMORY[0x1C691C400](v31);
  }

  return v27;
}

uint64_t __86__PFSQLiteQueryFactory_generateInsertStatementForDescriptor_coder_canUpsert_bindings___block_invoke_2(void *a1, sqlite3_stmt *a2, uint64_t a3)
{
  v6 = sqlite3_db_handle(a2);
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[4];

  return [v7 bindToStatement:a2 objectDescriptor:v9 fromCoder:v8 database:v6 error:a3];
}

+ (BOOL)bindToStatement:(sqlite3_stmt *)statement objectDescriptor:(id)descriptor fromCoder:(id)coder database:(sqlite3 *)database error:(id *)error
{
  descriptorCopy = descriptor;
  coderCopy = coder;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = 0;
  columns = [descriptorCopy columns];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __82__PFSQLiteQueryFactory_bindToStatement_objectDescriptor_fromCoder_database_error___block_invoke;
  v20[3] = &unk_1E8189848;
  v16 = coderCopy;
  v23 = a2;
  selfCopy = self;
  v21 = v16;
  v22 = &v27;
  statementCopy = statement;
  databaseCopy = database;
  [columns enumerateObjectsUsingBlock:v20];

  v17 = v28[5];
  if (error && v17)
  {
    v17 = v17;
    *error = v17;
  }

  v18 = v17 == 0;

  _Block_object_dispose(&v27, 8);
  return v18;
}

void __82__PFSQLiteQueryFactory_bindToStatement_objectDescriptor_fromCoder_database_error___block_invoke(uint64_t a1, void *a2, int a3, _BYTE *a4)
{
  v20 = a2;
  v7 = [v20 name];
  v8 = [v20 valueTransformer];
  v9 = [*(a1 + 32) dictionary];
  v10 = [v9 objectForKey:v7];

  v11 = [v8 transformedValue:v10];
  v12 = [v20 type];
  v13 = 1;
  if (v12 > 2)
  {
    if (v12 == 3)
    {
      if (v11)
      {
        v16 = sqlite3_bind_text(*(a1 + 64), a3 + 1, [v11 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
        goto LABEL_12;
      }

      if ([v20 isNonnull])
      {
        __82__PFSQLiteQueryFactory_bindToStatement_objectDescriptor_fromCoder_database_error___block_invoke_cold_3(v20, a1);
      }

      goto LABEL_11;
    }

    if (v12 == 4)
    {
      if (v11)
      {
        v16 = sqlite3_bind_blob(*(a1 + 64), a3 + 1, [v11 bytes], objc_msgSend(v11, "length"), 0xFFFFFFFFFFFFFFFFLL);
LABEL_12:
        v13 = v16;
        if (!v16)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if ([v20 isNonnull])
      {
        __82__PFSQLiteQueryFactory_bindToStatement_objectDescriptor_fromCoder_database_error___block_invoke_cold_2(v20, a1);
      }

LABEL_11:
      v16 = sqlite3_bind_null(*(a1 + 64), a3 + 1);
      goto LABEL_12;
    }

    if (v12 != 5)
    {
      goto LABEL_13;
    }

LABEL_10:
    if ([v20 isNonnull])
    {
      __82__PFSQLiteQueryFactory_bindToStatement_objectDescriptor_fromCoder_database_error___block_invoke_cold_1(v20, a1);
    }

    goto LABEL_11;
  }

  switch(v12)
  {
    case 0:
      goto LABEL_10;
    case 1:
      if (v11)
      {
        v16 = sqlite3_bind_int(*(a1 + 64), a3 + 1, [v11 intValue]);
        goto LABEL_12;
      }

      if ([v20 isNonnull])
      {
        __82__PFSQLiteQueryFactory_bindToStatement_objectDescriptor_fromCoder_database_error___block_invoke_cold_5(v20, a1);
      }

      goto LABEL_11;
    case 2:
      if (v11)
      {
        v14 = *(a1 + 64);
        [v11 doubleValue];
        v16 = sqlite3_bind_double(v14, a3 + 1, v15);
        goto LABEL_12;
      }

      if ([v20 isNonnull])
      {
        __82__PFSQLiteQueryFactory_bindToStatement_objectDescriptor_fromCoder_database_error___block_invoke_cold_4(v20, a1);
      }

      goto LABEL_11;
  }

LABEL_13:
  v17 = _NSErrorForSQLiteDatabase(*(a1 + 72), v13, 0, 0);
  v18 = *(*(a1 + 40) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  *a4 = 1;
LABEL_14:
}

+ (BOOL)decodeObjectForDescriptor:(id)descriptor stmt:(sqlite3_stmt *)stmt intoCoder:(id)coder
{
  coderCopy = coder;
  columns = [descriptor columns];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__PFSQLiteQueryFactory_decodeObjectForDescriptor_stmt_intoCoder___block_invoke;
  v12[3] = &unk_1E8189870;
  selfCopy = self;
  stmtCopy = stmt;
  v13 = coderCopy;
  v10 = coderCopy;
  [columns enumerateObjectsUsingBlock:v12];

  return 1;
}

void __65__PFSQLiteQueryFactory_decodeObjectForDescriptor_stmt_intoCoder___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1[5];
  v7 = a1[6];
  v12 = 0;
  if ([v6 decodeObjectForColumn:v5 stmt:v7 idx:a3 outValue:&v12])
  {
    v8 = a1[4];
    v9 = v12;
    v10 = [v8 dictionary];
    v11 = [v5 name];
    [v10 bs_setSafeObject:v9 forKey:v11];
  }
}

+ (BOOL)decodeObjectForColumn:(id)column stmt:(sqlite3_stmt *)stmt idx:(int)idx outValue:(id *)value
{
  columnCopy = column;
  valueTransformer = [columnCopy valueTransformer];
  type = [columnCopy type];

  v12 = 0;
  if (type > 2)
  {
    if (type == 3)
    {
      null = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:{sqlite3_column_text(stmt, idx)}];
      goto LABEL_13;
    }

    if (type == 4)
    {
      v14 = sqlite3_column_blob(stmt, idx);
      null = [MEMORY[0x1E695DEF0] dataWithBytes:v14 length:{sqlite3_column_bytes(stmt, idx)}];
      goto LABEL_13;
    }

    if (type != 5)
    {
      goto LABEL_16;
    }

LABEL_9:
    null = [MEMORY[0x1E695DFB0] null];
    goto LABEL_13;
  }

  switch(type)
  {
    case 0:
      goto LABEL_9;
    case 1:
      null = [MEMORY[0x1E696AD98] numberWithInt:{sqlite3_column_int(stmt, idx)}];
      break;
    case 2:
      null = [MEMORY[0x1E696AD98] numberWithDouble:{sqlite3_column_double(stmt, idx)}];
      break;
    default:
      goto LABEL_16;
  }

LABEL_13:
  v15 = null;
  if (null)
  {
    v16 = [valueTransformer reverseTransformedValue:null];
    *value = v16;

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

LABEL_16:

  return v12;
}

void __82__PFSQLiteQueryFactory_bindToStatement_objectDescriptor_fromCoder_database_error___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Column '%@' has marked as nonnull but is attempting to bind null to a query."];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(*(a2 + 48));
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_2_1();
    v6 = NSStringFromClass(v5);
    v7 = *(a2 + 56);
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, a1, v14, v15);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __82__PFSQLiteQueryFactory_bindToStatement_objectDescriptor_fromCoder_database_error___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Column '%@' has marked as nonnull but is attempting to bind null to a query."];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(*(a2 + 48));
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_2_1();
    v6 = NSStringFromClass(v5);
    v7 = *(a2 + 56);
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, a1, v14, v15);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __82__PFSQLiteQueryFactory_bindToStatement_objectDescriptor_fromCoder_database_error___block_invoke_cold_3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Column '%@' has marked as nonnull but is attempting to bind null to a query."];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(*(a2 + 48));
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_2_1();
    v6 = NSStringFromClass(v5);
    v7 = *(a2 + 56);
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, a1, v14, v15);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __82__PFSQLiteQueryFactory_bindToStatement_objectDescriptor_fromCoder_database_error___block_invoke_cold_4(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Column '%@' has marked as nonnull but is attempting to bind null to a query."];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(*(a2 + 48));
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_2_1();
    v6 = NSStringFromClass(v5);
    v7 = *(a2 + 56);
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, a1, v14, v15);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __82__PFSQLiteQueryFactory_bindToStatement_objectDescriptor_fromCoder_database_error___block_invoke_cold_5(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Column '%@' has marked as nonnull but is attempting to bind null to a query."];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(*(a2 + 48));
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_2_1();
    v6 = NSStringFromClass(v5);
    v7 = *(a2 + 56);
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, a1, v14, v15);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end