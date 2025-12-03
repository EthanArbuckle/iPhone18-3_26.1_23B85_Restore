@interface REMListSectionsDataView
- (REMListSectionsDataView)initWithStore:(id)store;
- (id)fetchListSectionWithObjectID:(id)d error:(id *)error;
- (id)fetchListSectionsCountWithListObjectID:(id)d error:(id *)error;
- (id)fetchListSectionsInList:(id)list error:(id *)error;
- (id)fetchListSectionsWithListObjectID:(id)d error:(id *)error;
- (id)fetchListSectionsWithObjectIDs:(id)ds error:(id *)error;
- (id)listSectionsFromAccountStorages:(id)storages listStorages:(id)listStorages listSectionStorages:(id)sectionStorages store:(id)store;
@end

@implementation REMListSectionsDataView

- (REMListSectionsDataView)initWithStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = REMListSectionsDataView;
  v6 = [(REMListSectionsDataView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
  }

  return v7;
}

- (id)fetchListSectionsWithListObjectID:(id)d error:(id *)error
{
  dCopy = d;
  if (dCopy)
  {
    v7 = [[REMListSectionsDataViewInvocation_fetchListSectionsInList alloc] initWithParentListObjectID:dCopy];
    store = [(REMListSectionsDataView *)self store];
    v9 = [store resultFromPerformingInvocation:v7 error:error];

    v10 = objc_opt_class();
    v11 = REMDynamicCast(v10, v9);
    accountStorages = [v11 accountStorages];
    listStorages = [v11 listStorages];
    listSectionStorages = [v11 listSectionStorages];
    store2 = [(REMListSectionsDataView *)self store];
    v16 = [(REMListSectionsDataView *)self listSectionsFromAccountStorages:accountStorages listStorages:listStorages listSectionStorages:listSectionStorages store:store2];
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

- (id)fetchListSectionsInList:(id)list error:(id *)error
{
  objectID = [list objectID];
  v7 = [(REMListSectionsDataView *)self fetchListSectionsWithListObjectID:objectID error:error];

  return v7;
}

- (id)fetchListSectionsWithObjectIDs:(id)ds error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v7 = dsCopy;
  if (dsCopy)
  {
    if ([dsCopy count])
    {
      v8 = [[REMListSectionsDataViewInvocation_fetchByObjectIDs alloc] initWithObjectIDs:v7];
      store = [(REMListSectionsDataView *)self store];
      v10 = [store resultFromPerformingInvocation:v8 error:error];

      v11 = objc_opt_class();
      v12 = REMDynamicCast(v11, v10);
      accountStorages = [v12 accountStorages];
      listStorages = [v12 listStorages];
      listSectionStorages = [v12 listSectionStorages];
      store2 = [(REMListSectionsDataView *)self store];
      v17 = [(REMListSectionsDataView *)self listSectionsFromAccountStorages:accountStorages listStorages:listStorages listSectionStorages:listSectionStorages store:store2];

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
              objectID = [v24 objectID];
              [v18 setObject:v24 forKeyedSubscript:objectID];
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

- (id)fetchListSectionWithObjectID:(id)d error:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = dCopy;
  if (dCopy)
  {
    v15[0] = dCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v9 = [(REMListSectionsDataView *)self fetchListSectionsWithObjectIDs:v8 error:error];

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

      if (error)
      {
        [REMError noSuchObjectErrorWithObjectID:v7];
        *error = v10 = 0;
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

- (id)fetchListSectionsCountWithListObjectID:(id)d error:(id *)error
{
  dCopy = d;
  if (dCopy)
  {
    v7 = [[REMListSectionsDataViewInvocation_fetchListSectionsCountInList alloc] initWithParentListObjectID:dCopy];
    store = [(REMListSectionsDataView *)self store];
    v9 = [store resultFromPerformingInvocation:v7 error:error];

    v10 = objc_opt_class();
    v11 = [v9 storedPropertyForKey:@"SectionsCount"];
    v12 = REMDynamicCast(v10, v11);

    if (!v12)
    {
      v15 = +[REMLogStore read];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [REMListSectionsDataView fetchListSectionsCountWithListObjectID:dCopy error:v15];
      }

      if (error && !*error)
      {
        *error = +[REMError unexpectedError];
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

- (id)listSectionsFromAccountStorages:(id)storages listStorages:(id)listStorages listSectionStorages:(id)sectionStorages store:(id)store
{
  v30 = *MEMORY[0x1E69E9840];
  sectionStoragesCopy = sectionStorages;
  storeCopy = store;
  v11 = [REMListsDataView listsFromAccountStorages:storages listStorages:listStorages store:storeCopy];
  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(sectionStoragesCopy, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = sectionStoragesCopy;
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
        listID = [v17 listID];

        if (!listID)
        {
          NSLog(&cfstr_SIsUnexpectedl.isa, "listSectionStorage.listID");
        }

        listID2 = [v17 listID];
        v20 = [v11 objectForKeyedSubscript:listID2];
        v21 = [[REMListSection alloc] initWithStore:storeCopy list:v20 storage:v17];
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