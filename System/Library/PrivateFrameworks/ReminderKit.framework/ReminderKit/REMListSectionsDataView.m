@interface REMListSectionsDataView
- (REMListSectionsDataView)initWithStore:(id)a3;
- (id)fetchListSectionWithObjectID:(id)a3 error:(id *)a4;
- (id)fetchListSectionsCountWithListObjectID:(id)a3 error:(id *)a4;
- (id)fetchListSectionsInList:(id)a3 error:(id *)a4;
- (id)fetchListSectionsWithListObjectID:(id)a3 error:(id *)a4;
- (id)fetchListSectionsWithObjectIDs:(id)a3 error:(id *)a4;
- (id)listSectionsFromAccountStorages:(id)a3 listStorages:(id)a4 listSectionStorages:(id)a5 store:(id)a6;
@end

@implementation REMListSectionsDataView

- (REMListSectionsDataView)initWithStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMListSectionsDataView;
  v6 = [(REMListSectionsDataView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
  }

  return v7;
}

- (id)fetchListSectionsWithListObjectID:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [[REMListSectionsDataViewInvocation_fetchListSectionsInList alloc] initWithParentListObjectID:v6];
    v8 = [(REMListSectionsDataView *)self store];
    v9 = [v8 resultFromPerformingInvocation:v7 error:a4];

    v10 = objc_opt_class();
    v11 = REMDynamicCast(v10, v9);
    v12 = [v11 accountStorages];
    v13 = [v11 listStorages];
    v14 = [v11 listSectionStorages];
    v15 = [(REMListSectionsDataView *)self store];
    v16 = [(REMListSectionsDataView *)self listSectionsFromAccountStorages:v12 listStorages:v13 listSectionStorages:v14 store:v15];
  }

  else
  {
    v17 = +[REMLogStore read];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [REMListSectionsDataView fetchListSectionsWithListObjectID:error:];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "listObjectID");
    v16 = 0;
  }

  return v16;
}

- (id)fetchListSectionsInList:(id)a3 error:(id *)a4
{
  v6 = [a3 objectID];
  v7 = [(REMListSectionsDataView *)self fetchListSectionsWithListObjectID:v6 error:a4];

  return v7;
}

- (id)fetchListSectionsWithObjectIDs:(id)a3 error:(id *)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if ([v6 count])
    {
      v8 = [[REMListSectionsDataViewInvocation_fetchByObjectIDs alloc] initWithObjectIDs:v7];
      v9 = [(REMListSectionsDataView *)self store];
      v10 = [v9 resultFromPerformingInvocation:v8 error:a4];

      v11 = objc_opt_class();
      v12 = REMDynamicCast(v11, v10);
      v13 = [v12 accountStorages];
      v14 = [v12 listStorages];
      v15 = [v12 listSectionStorages];
      v16 = [(REMListSectionsDataView *)self store];
      v17 = [(REMListSectionsDataView *)self listSectionsFromAccountStorages:v13 listStorages:v14 listSectionStorages:v15 store:v16];

      if (v17)
      {
        v29 = v10;
        v30 = v8;
        v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v17, "count")}];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v19 = v17;
        v20 = [v19 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v32;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v32 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v31 + 1) + 8 * i);
              v25 = [v24 objectID];
              [v18 setObject:v24 forKeyedSubscript:v25];
            }

            v21 = [v19 countByEnumeratingWithState:&v31 objects:v35 count:16];
          }

          while (v21);
        }

        v10 = v29;
        v8 = v30;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = MEMORY[0x1E695E0F8];
    }
  }

  else
  {
    v26 = +[REMLogStore read];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      [REMListSectionsDataView fetchListSectionsWithObjectIDs:error:];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "objectIDs");
    v18 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)fetchListSectionWithObjectID:(id)a3 error:(id *)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v15[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v9 = [(REMListSectionsDataView *)self fetchListSectionsWithObjectIDs:v8 error:a4];

    if (v9)
    {
      v10 = [v9 objectForKeyedSubscript:v7];
      if (v10)
      {
LABEL_12:

        goto LABEL_13;
      }

      v11 = +[REMLogStore read];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [REMListSectionsDataView fetchListSectionWithObjectID:v7 error:v11];
      }

      if (a4)
      {
        [REMError noSuchObjectErrorWithObjectID:v7];
        *a4 = v10 = 0;
        goto LABEL_12;
      }
    }

    v10 = 0;
    goto LABEL_12;
  }

  v12 = +[REMLogStore read];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [REMListSectionsDataView fetchListSectionWithObjectID:error:];
  }

  NSLog(&cfstr_SIsUnexpectedl.isa, "objectID");
  v10 = 0;
LABEL_13:

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)fetchListSectionsCountWithListObjectID:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [[REMListSectionsDataViewInvocation_fetchListSectionsCountInList alloc] initWithParentListObjectID:v6];
    v8 = [(REMListSectionsDataView *)self store];
    v9 = [v8 resultFromPerformingInvocation:v7 error:a4];

    v10 = objc_opt_class();
    v11 = [v9 storedPropertyForKey:@"SectionsCount"];
    v12 = REMDynamicCast(v10, v11);

    if (!v12)
    {
      v15 = +[REMLogStore read];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [REMListSectionsDataView fetchListSectionsCountWithListObjectID:v6 error:v15];
      }

      if (a4 && !*a4)
      {
        *a4 = +[REMError unexpectedError];
      }
    }
  }

  else
  {
    v13 = +[REMLogStore read];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [REMListSectionsDataView fetchListSectionsWithListObjectID:error:];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "listObjectID");
    v12 = 0;
  }

  return v12;
}

- (id)listSectionsFromAccountStorages:(id)a3 listStorages:(id)a4 listSectionStorages:(id)a5 store:(id)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a6;
  v11 = [REMListsDataView listsFromAccountStorages:a3 listStorages:a4 store:v10];
  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v9;
  v13 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        v18 = [v17 listID];

        if (!v18)
        {
          NSLog(&cfstr_SIsUnexpectedl.isa, "listSectionStorage.listID");
        }

        v19 = [v17 listID];
        v20 = [v11 objectForKeyedSubscript:v19];
        v21 = [[REMListSection alloc] initWithStore:v10 list:v20 storage:v17];
        [v12 addObject:v21];
      }

      v14 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }

  v22 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)fetchListSectionsWithListObjectID:error:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)fetchListSectionsWithObjectIDs:error:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)fetchListSectionWithObjectID:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "REMListSectionsDataView: Requested to fetch non-existent listSection {objectID: %{public}@}", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)fetchListSectionWithObjectID:error:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_4_1();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_1();
  v5 = [v2 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v6, v7, "[%{public}@] Passing in nil '%s'", v8, v9, v10, v11, v13, v14, v15);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)fetchListSectionsCountWithListObjectID:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch Sections count from list with listObjectID {listObjectID: %@}", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end