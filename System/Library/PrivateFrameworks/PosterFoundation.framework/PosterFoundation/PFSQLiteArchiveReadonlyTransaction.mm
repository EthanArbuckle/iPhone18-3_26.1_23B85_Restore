@interface PFSQLiteArchiveReadonlyTransaction
@end

@implementation PFSQLiteArchiveReadonlyTransaction

void __61___PFSQLiteArchiveReadonlyTransaction__accessDatabase_error___block_invoke(void *a1, uint64_t a2)
{
  *(a1[4] + 16) = 1;
  *(a1[4] + 24) = a2;
  v3 = objc_autoreleasePoolPush();
  (*(a1[6] + 16))();
  objc_storeStrong((*(a1[7] + 8) + 40), 0);
  objc_autoreleasePoolPop(v3);
  *(a1[4] + 24) = 0;
  *(a1[4] + 16) = 0;
}

uint64_t __100___PFSQLiteArchiveReadonlyTransaction_setupObjectDescriptorForClass_expectedObjectDescriptor_error___block_invoke(uint64_t a1, sqlite3 *a2, void *a3)
{
  v6 = objc_opt_new();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __100___PFSQLiteArchiveReadonlyTransaction_setupObjectDescriptorForClass_expectedObjectDescriptor_error___block_invoke_2;
  v13[3] = &unk_1E8189338;
  v14 = *(a1 + 32);
  v7 = v6;
  v15 = v7;
  v8 = MEMORY[0x1C691C400](v13);
  v9 = PFSQLite_prepare_and_stepThrough_withBlock(a2, *(a1 + 40), 3, 100000, 0, 0, 0, v8, a3);
  if (v9)
  {
    v10 = [v7 count];
    v11 = [*(a1 + 32) columns];
    *(*(*(a1 + 48) + 8) + 24) = v10 == [v11 count];
  }

  return v9;
}

BOOL __100___PFSQLiteArchiveReadonlyTransaction_setupObjectDescriptorForClass_expectedObjectDescriptor_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = sqlite3_column_text(a2, 1);
  v7 = sqlite3_column_int(a2, 3) == 1;
  v8 = sqlite3_column_int(a2, 5) == 1;
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v6 length:strlen(v6) encoding:4 freeWhenDone:0];
  v10 = [*(a1 + 32) columns];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __100___PFSQLiteArchiveReadonlyTransaction_setupObjectDescriptorForClass_expectedObjectDescriptor_error___block_invoke_3;
  v21 = &unk_1E8189310;
  v11 = v9;
  v22 = v11;
  v23 = v7;
  v24 = v8;
  v12 = [v10 bs_firstObjectPassingTest:&v18];

  if (v12)
  {
    [*(a1 + 40) setObject:v12 forKeyedSubscript:v11];
  }

  else
  {
    v13 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A588];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No matching column found for %@", v11, v18, v19, v20, v21];
    v26[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    *a3 = [v13 errorWithDomain:@"PFSQLiteArchiver" code:-3 userInfo:v15];
  }

  v16 = *MEMORY[0x1E69E9840];
  return v12 != 0;
}

BOOL __100___PFSQLiteArchiveReadonlyTransaction_setupObjectDescriptorForClass_expectedObjectDescriptor_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 name];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5 && (v6 = *(a1 + 40), v6 == [v3 isNonnull]))
  {
    v7 = *(a1 + 41);
    v8 = v7 == [v3 isPrimaryKey];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL __101___PFSQLiteArchiveReadonlyTransaction_unarchiveObjectsOfClass_predicate_limitOffset_orderedBy_error___block_invoke(uint64_t a1, sqlite3 *a2, void *a3)
{
  v6 = [*(a1 + 32) setupObjectDescriptorForClass:*(a1 + 72) expectedObjectDescriptor:0 error:a3];
  if (v6)
  {
    if ([*(a1 + 40) limit] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = objc_opt_new();
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 40), "limit")}];
    }

    v8 = v7;
    v9 = objc_opt_new();
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __101___PFSQLiteArchiveReadonlyTransaction_unarchiveObjectsOfClass_predicate_limitOffset_orderedBy_error___block_invoke_2;
    v28[3] = &unk_1E8189388;
    v10 = v6;
    v29 = v10;
    v30 = v9;
    v32 = *(a1 + 72);
    v11 = v8;
    v31 = v11;
    v12 = v9;
    v13 = MEMORY[0x1C691C400](v28);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __101___PFSQLiteArchiveReadonlyTransaction_unarchiveObjectsOfClass_predicate_limitOffset_orderedBy_error___block_invoke_3;
    v26[3] = &unk_1E81893B0;
    v27 = v11;
    v14 = v11;
    v15 = MEMORY[0x1C691C400](v26);
    v17 = *(a1 + 40);
    v16 = *(a1 + 48);
    v18 = *(a1 + 56);
    v25 = 0;
    v19 = [PFSQLiteQueryFactory generateSelectStatementForDescriptor:v10 predicate:v16 limitOffset:v17 orderedBy:v18 bindings:&v25];
    v20 = MEMORY[0x1C691C400](v25);
    PFSQLite_prepare_and_stepThrough_withBlock(a2, v19, 3, 100000, *(*(a1 + 32) + 32), v20, v15, v13, a3);
    v21 = [v14 copy];
    v22 = *(*(a1 + 64) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;
  }

  return v6 != 0;
}

uint64_t __101___PFSQLiteArchiveReadonlyTransaction_unarchiveObjectsOfClass_predicate_limitOffset_orderedBy_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ([PFSQLiteQueryFactory decodeObjectForDescriptor:*(a1 + 32) stmt:a2 intoCoder:*(a1 + 40)])
  {
    v3 = [objc_alloc(*(a1 + 56)) initWithCoder:*(a1 + 40)];
    [*(a1 + 48) bs_safeAddObject:v3];
  }

  [*(a1 + 40) reset];
  return 1;
}

uint64_t __99___PFSQLiteArchiveReadonlyTransaction_objectsOfClass_column_predicate_limitOffset_orderedBy_error___block_invoke(uint64_t a1, sqlite3 *a2, void *a3)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v6 = [*(a1 + 32) setupObjectDescriptorForClass:*(a1 + 80) expectedObjectDescriptor:0 error:a3];
  if (v6)
  {
    v7 = objc_opt_new();
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __99___PFSQLiteArchiveReadonlyTransaction_objectsOfClass_column_predicate_limitOffset_orderedBy_error___block_invoke_2;
    v29[3] = &unk_1E8189338;
    v30 = *(a1 + 40);
    v8 = v7;
    v31 = v8;
    v25 = MEMORY[0x1C691C400](v29);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __99___PFSQLiteArchiveReadonlyTransaction_objectsOfClass_column_predicate_limitOffset_orderedBy_error___block_invoke_3;
    v27[3] = &unk_1E81893B0;
    v9 = v8;
    v28 = v9;
    v10 = MEMORY[0x1C691C400](v27);
    v32[0] = *(a1 + 40);
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    [v6 tableName];
    v13 = v12 = a2;
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    v26 = 0;
    v17 = [PFSQLiteQueryFactory generateSelectStatementForColumns:v11 table:v13 predicate:v14 limitOffset:v15 orderedBy:v16 bindings:&v26];
    v18 = MEMORY[0x1C691C400](v26);

    v19 = PFSQLite_prepare_and_stepThrough_withBlock(v12, v17, 3, 100000, *(*(a1 + 32) + 32), v18, v10, v25, a3);
    if (v19)
    {
      v20 = [v9 copy];
      v21 = *(*(a1 + 72) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;
    }
  }

  else
  {
    v19 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t __99___PFSQLiteArchiveReadonlyTransaction_objectsOfClass_column_predicate_limitOffset_orderedBy_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v6 = 0;
  if ([PFSQLiteQueryFactory decodeObjectForColumn:v3 stmt:a2 idx:0 outValue:&v6])
  {
    v4 = v6 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    [*(a1 + 40) addObject:?];
  }

  return 1;
}

void __61___PFSQLiteArchiveReadonlyTransaction__accessDatabase_error___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1C269D000, v1, v2, "Exception thrown for database during tx '%@': %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

@end