@interface PFSQLiteQueryFactory
+ (BOOL)bindToStatement:(sqlite3_stmt *)a3 objectDescriptor:(id)a4 fromCoder:(id)a5 database:(sqlite3 *)a6 error:(id *)a7;
+ (BOOL)decodeObjectForColumn:(id)a3 stmt:(sqlite3_stmt *)a4 idx:(int)a5 outValue:(id *)a6;
+ (BOOL)decodeObjectForDescriptor:(id)a3 stmt:(sqlite3_stmt *)a4 intoCoder:(id)a5;
+ (id)generateDeleteSQLForDescriptor:(id)a3 predicate:(id)a4 bindings:(id *)a5;
+ (id)generateInsertStatementForDescriptor:(id)a3 coder:(id)a4 canUpsert:(BOOL)a5 bindings:(id *)a6;
+ (id)generateSelectStatementForColumns:(id)a3 table:(id)a4 predicate:(id)a5 limitOffset:(id)a6 orderedBy:(id)a7 bindings:(id *)a8;
+ (id)generateSelectStatementForDescriptor:(id)a3 predicate:(id)a4 limitOffset:(id)a5 orderedBy:(id)a6 bindings:(id *)a7;
@end

@implementation PFSQLiteQueryFactory

+ (id)generateSelectStatementForDescriptor:(id)a3 predicate:(id)a4 limitOffset:(id)a5 orderedBy:(id)a6 bindings:(id *)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a3;
  v15 = [v14 columnNames];
  v16 = [v15 array];
  v17 = [v16 componentsJoinedByString:{@", "}];

  v18 = MEMORY[0x1E696AEC0];
  v19 = [v14 tableName];

  v20 = [v18 stringWithFormat:@"SELECT %@ FROM %@", v17, v19];

  *(&v34 + 1) = 0;
  if (v11)
  {
    v21 = [v11 pf_toSQLWithBindings:&v34 + 8];
    v22 = [v20 stringByAppendingFormat:@" %@", v21];

    v20 = v22;
  }

  if (v13)
  {
    v23 = [v13 pf_toSQLWithBindings:0];
    v24 = [v20 stringByAppendingFormat:@" %@", v23];

    v20 = v24;
  }

  *&v34 = 0;
  if (v12)
  {
    v25 = [v12 pf_toSQLWithBindings:&v34];
    v26 = [v20 stringByAppendingFormat:@" %@", v25];

    v20 = v26;
  }

  if (a7 && v34 != 0)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __102__PFSQLiteQueryFactory_generateSelectStatementForDescriptor_predicate_limitOffset_orderedBy_bindings___block_invoke;
    v28[3] = &unk_1E81897F8;
    v32 = *(&v34 + 1);
    v29 = v11;
    v30 = v20;
    v33 = v34;
    v31 = v12;
    *a7 = MEMORY[0x1C691C400](v28);
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

+ (id)generateSelectStatementForColumns:(id)a3 table:(id)a4 predicate:(id)a5 limitOffset:(id)a6 orderedBy:(id)a7 bindings:(id *)a8
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = MEMORY[0x1E696AEC0];
  v17 = a4;
  v18 = [a3 valueForKey:@"name"];
  v19 = [v18 componentsJoinedByString:{@", "}];
  v20 = [v16 stringWithFormat:@"SELECT %@ FROM %@", v19, v17];

  v35 = 0;
  if (v13)
  {
    v21 = [v13 pf_toSQLWithBindings:&v35];
    v22 = [v20 stringByAppendingFormat:@" %@", v21];

    v20 = v22;
  }

  if (v15)
  {
    v23 = [v15 pf_toSQLWithBindings:0];
    v24 = [v20 stringByAppendingFormat:@" %@", v23];

    v20 = v24;
  }

  v34 = 0;
  if (v14)
  {
    v25 = [v14 pf_toSQLWithBindings:&v34];
    v26 = [v20 stringByAppendingFormat:@" %@", v25];

    v20 = v26;
  }

  if (a8)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __105__PFSQLiteQueryFactory_generateSelectStatementForColumns_table_predicate_limitOffset_orderedBy_bindings___block_invoke;
    v28[3] = &unk_1E81897F8;
    v32 = v35;
    v29 = v13;
    v30 = v20;
    v33 = v34;
    v31 = v14;
    *a8 = MEMORY[0x1C691C400](v28);
  }

  return v20;
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

+ (id)generateDeleteSQLForDescriptor:(id)a3 predicate:(id)a4 bindings:(id *)a5
{
  v7 = a4;
  v8 = MEMORY[0x1E696AEC0];
  v9 = [a3 tableName];
  v10 = [v8 stringWithFormat:@"DELETE FROM %@", v9];

  v18 = 0;
  if (v7)
  {
    v11 = [v7 pf_toSQLWithBindings:&v18];
    v12 = [v10 stringByAppendingFormat:@" %@", v11];

    v10 = v12;
  }

  if (a5)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __74__PFSQLiteQueryFactory_generateDeleteSQLForDescriptor_predicate_bindings___block_invoke;
    v14[3] = &unk_1E8189820;
    v17 = v18;
    v15 = v7;
    v16 = v10;
    *a5 = MEMORY[0x1C691C400](v14);
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

+ (id)generateInsertStatementForDescriptor:(id)a3 coder:(id)a4 canUpsert:(BOOL)a5 bindings:(id *)a6
{
  v9 = a3;
  v30 = a4;
  v10 = MEMORY[0x1E695DF70];
  v11 = [v9 columns];
  v12 = [v10 arrayWithCapacity:{objc_msgSend(v11, "count")}];

  v13 = [v9 columns];
  v14 = [v13 count];

  if (v14)
  {
    v15 = 0;
    do
    {
      [v12 addObject:@"?"];
      ++v15;
      v16 = [v9 columns];
      v17 = [v16 count];
    }

    while (v15 < v17);
  }

  v18 = &stru_1F425B6D8;
  if (a5)
  {
    v19 = [v9 columns];
    v20 = [v19 bs_firstObjectPassingTest:&__block_literal_global_7];

    if (v20)
    {
      v18 = @"OR REPLACE";
    }
  }

  v21 = MEMORY[0x1E696AEC0];
  v22 = [v9 tableName];
  v23 = [v9 columnNames];
  v24 = [v23 array];
  v25 = [v24 componentsJoinedByString:{@", "}];
  v26 = [v12 componentsJoinedByString:{@", "}];
  v27 = [v21 stringWithFormat:@"INSERT %@ INTO %@ (%@) VALUES(%@)", v18, v22, v25, v26];;

  if (a6)
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __86__PFSQLiteQueryFactory_generateInsertStatementForDescriptor_coder_canUpsert_bindings___block_invoke_2;
    v31[3] = &unk_1E8189820;
    v34 = a1;
    v32 = v9;
    v33 = v30;
    *a6 = MEMORY[0x1C691C400](v31);
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

+ (BOOL)bindToStatement:(sqlite3_stmt *)a3 objectDescriptor:(id)a4 fromCoder:(id)a5 database:(sqlite3 *)a6 error:(id *)a7
{
  v13 = a4;
  v14 = a5;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = 0;
  v15 = [v13 columns];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __82__PFSQLiteQueryFactory_bindToStatement_objectDescriptor_fromCoder_database_error___block_invoke;
  v20[3] = &unk_1E8189848;
  v16 = v14;
  v23 = a2;
  v24 = a1;
  v21 = v16;
  v22 = &v27;
  v25 = a3;
  v26 = a6;
  [v15 enumerateObjectsUsingBlock:v20];

  v17 = v28[5];
  if (a7 && v17)
  {
    v17 = v17;
    *a7 = v17;
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

+ (BOOL)decodeObjectForDescriptor:(id)a3 stmt:(sqlite3_stmt *)a4 intoCoder:(id)a5
{
  v8 = a5;
  v9 = [a3 columns];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__PFSQLiteQueryFactory_decodeObjectForDescriptor_stmt_intoCoder___block_invoke;
  v12[3] = &unk_1E8189870;
  v14 = a1;
  v15 = a4;
  v13 = v8;
  v10 = v8;
  [v9 enumerateObjectsUsingBlock:v12];

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

+ (BOOL)decodeObjectForColumn:(id)a3 stmt:(sqlite3_stmt *)a4 idx:(int)a5 outValue:(id *)a6
{
  v9 = a3;
  v10 = [v9 valueTransformer];
  v11 = [v9 type];

  v12 = 0;
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:{sqlite3_column_text(a4, a5)}];
      goto LABEL_13;
    }

    if (v11 == 4)
    {
      v14 = sqlite3_column_blob(a4, a5);
      v13 = [MEMORY[0x1E695DEF0] dataWithBytes:v14 length:{sqlite3_column_bytes(a4, a5)}];
      goto LABEL_13;
    }

    if (v11 != 5)
    {
      goto LABEL_16;
    }

LABEL_9:
    v13 = [MEMORY[0x1E695DFB0] null];
    goto LABEL_13;
  }

  switch(v11)
  {
    case 0:
      goto LABEL_9;
    case 1:
      v13 = [MEMORY[0x1E696AD98] numberWithInt:{sqlite3_column_int(a4, a5)}];
      break;
    case 2:
      v13 = [MEMORY[0x1E696AD98] numberWithDouble:{sqlite3_column_double(a4, a5)}];
      break;
    default:
      goto LABEL_16;
  }

LABEL_13:
  v15 = v13;
  if (v13)
  {
    v16 = [v10 reverseTransformedValue:v13];
    *a6 = v16;

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