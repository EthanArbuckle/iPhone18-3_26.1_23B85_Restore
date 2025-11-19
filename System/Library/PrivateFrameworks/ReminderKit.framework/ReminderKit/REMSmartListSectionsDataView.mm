@interface REMSmartListSectionsDataView
- (REMSmartListSectionsDataView)initWithStore:(id)a3;
- (id)fetchSmartListSectionWithObjectID:(id)a3 error:(id *)a4;
- (id)fetchSmartListSectionsInSmartList:(id)a3 error:(id *)a4;
- (id)fetchSmartListSectionsWithObjectIDs:(id)a3 error:(id *)a4;
- (id)smartListSectionsFromAccountStorages:(id)a3 smartListStorages:(id)a4 groupStorages:(id)a5 smartListSectionStorages:(id)a6 store:(id)a7;
@end

@implementation REMSmartListSectionsDataView

- (REMSmartListSectionsDataView)initWithStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMSmartListSectionsDataView;
  v6 = [(REMSmartListSectionsDataView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
  }

  return v7;
}

- (id)fetchSmartListSectionsInSmartList:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (v7)
  {
    v8 = [REMSmartListSectionsDataViewInvocation_fetchSmartListSectionsInSmartList alloc];
    v9 = [v7 objectID];
    v10 = [(REMSmartListSectionsDataViewInvocation_fetchSmartListSectionsInSmartList *)v8 initWithParentSmartListObjectID:v9];

    v11 = [(REMSmartListSectionsDataView *)self store];
    v12 = [v11 resultFromPerformingInvocation:v10 error:a4];

    v13 = objc_opt_class();
    v14 = REMDynamicCast(v13, v12);
    v15 = [v14 accountStorages];
    v16 = [v14 smartListStorages];
    v17 = [v14 groupStorages];
    v18 = [v14 smartListSectionStorages];
    v19 = [(REMSmartListSectionsDataView *)self store];
    v20 = [(REMSmartListSectionsDataView *)self smartListSectionsFromAccountStorages:v15 smartListStorages:v16 groupStorages:v17 smartListSectionStorages:v18 store:v19];
  }

  else
  {
    v21 = +[REMLogStore read];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      [REMSmartListSectionsDataView fetchSmartListSectionsInSmartList:a2 error:?];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "smartList");
    v20 = 0;
  }

  return v20;
}

- (id)fetchSmartListSectionsWithObjectIDs:(id)a3 error:(id *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    if ([v7 count])
    {
      v9 = [[REMSmartListSectionsDataViewInvocation_fetchByObjectIDs alloc] initWithObjectIDs:v8];
      v10 = [(REMSmartListSectionsDataView *)self store];
      v11 = [v10 resultFromPerformingInvocation:v9 error:a4];

      v12 = objc_opt_class();
      v13 = REMDynamicCast(v12, v11);
      v14 = [v13 accountStorages];
      v15 = [v13 smartListStorages];
      v16 = [v13 groupStorages];
      v17 = [v13 smartListSectionStorages];
      v18 = [(REMSmartListSectionsDataView *)self store];
      v19 = [(REMSmartListSectionsDataView *)self smartListSectionsFromAccountStorages:v14 smartListStorages:v15 groupStorages:v16 smartListSectionStorages:v17 store:v18];

      if (v19)
      {
        v31 = v11;
        v32 = v9;
        v20 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v19, "count")}];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v21 = v19;
        v22 = [v21 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v34;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v34 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v33 + 1) + 8 * i);
              v27 = [v26 objectID];
              [v20 setObject:v26 forKeyedSubscript:v27];
            }

            v23 = [v21 countByEnumeratingWithState:&v33 objects:v37 count:16];
          }

          while (v23);
        }

        v11 = v31;
        v9 = v32;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = MEMORY[0x1E695E0F8];
    }
  }

  else
  {
    v28 = +[REMLogStore read];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      [REMTemplateSectionsDataView fetchTemplateSectionsWithObjectIDs:a2 error:?];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "objectIDs");
    v20 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)fetchSmartListSectionWithObjectID:(id)a3 error:(id *)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v16[0] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v10 = [(REMSmartListSectionsDataView *)self fetchSmartListSectionsWithObjectIDs:v9 error:a4];

    if (v10)
    {
      v11 = [v10 objectForKeyedSubscript:v8];
      if (v11)
      {
LABEL_12:

        goto LABEL_13;
      }

      v12 = +[REMLogStore read];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [REMSmartListSectionsDataView fetchSmartListSectionWithObjectID:v8 error:v12];
      }

      if (a4)
      {
        [REMError noSuchObjectErrorWithObjectID:v8];
        *a4 = v11 = 0;
        goto LABEL_12;
      }
    }

    v11 = 0;
    goto LABEL_12;
  }

  v13 = +[REMLogStore read];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    [REMTemplateSectionsDataView fetchTemplateSectionWithObjectID:a2 error:?];
  }

  NSLog(&cfstr_SIsUnexpectedl.isa, "objectID");
  v11 = 0;
LABEL_13:

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)smartListSectionsFromAccountStorages:(id)a3 smartListStorages:(id)a4 groupStorages:(id)a5 smartListSectionStorages:(id)a6 store:(id)a7
{
  v83 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v58 = a4;
  v12 = a5;
  v56 = a6;
  v13 = a7;
  v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = v11;
  v15 = [obj countByEnumeratingWithState:&v75 objects:v82 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v76;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v76 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = [[REMAccount alloc] initWithStore:v13 storage:*(*(&v75 + 1) + 8 * i)];
        v20 = [(REMAccount *)v19 objectID];
        [v14 setObject:v19 forKeyedSubscript:v20];
      }

      v16 = [obj countByEnumeratingWithState:&v75 objects:v82 count:16];
    }

    while (v16);
  }

  v62 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v12, "count")}];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v60 = v12;
  v21 = [v60 countByEnumeratingWithState:&v71 objects:v81 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v72;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v72 != v23)
        {
          objc_enumerationMutation(v60);
        }

        v25 = *(*(&v71 + 1) + 8 * j);
        v26 = [v25 accountID];

        if (!v26)
        {
          NSLog(&cfstr_SIsUnexpectedl.isa, "groupStorage.accountID");
        }

        v27 = [v25 accountID];
        v28 = [v14 objectForKeyedSubscript:v27];

        v29 = [[REMList alloc] initWithStore:v13 account:v28 storage:v25];
        v30 = [(REMList *)v29 objectID];
        [v62 setObject:v29 forKeyedSubscript:v30];
      }

      v22 = [v60 countByEnumeratingWithState:&v71 objects:v81 count:16];
    }

    while (v22);
  }

  v31 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v58, "count")}];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v59 = v58;
  v32 = [v59 countByEnumeratingWithState:&v67 objects:v80 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v68;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v68 != v34)
        {
          objc_enumerationMutation(v59);
        }

        v36 = *(*(&v67 + 1) + 8 * k);
        v37 = [v36 accountID];

        if (!v37)
        {
          NSLog(&cfstr_SIsUnexpectedl.isa, "smartListStorage.accountID");
        }

        v38 = [v36 accountID];
        v39 = [v14 objectForKeyedSubscript:v38];

        v40 = [v36 parentListID];

        if (v40)
        {
          v41 = [v36 parentListID];
          v40 = [v62 objectForKeyedSubscript:v41];
        }

        v42 = [[REMSmartList alloc] initWithStore:v13 account:v39 parentList:v40 storage:v36];
        v43 = [(REMSmartList *)v42 objectID];
        [v31 setObject:v42 forKeyedSubscript:v43];
      }

      v33 = [v59 countByEnumeratingWithState:&v67 objects:v80 count:16];
    }

    while (v33);
  }

  v44 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v56, "count")}];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v57 = v56;
  v45 = [v57 countByEnumeratingWithState:&v63 objects:v79 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v64;
    do
    {
      for (m = 0; m != v46; ++m)
      {
        if (*v64 != v47)
        {
          objc_enumerationMutation(v57);
        }

        v49 = *(*(&v63 + 1) + 8 * m);
        v50 = [v49 smartListID];

        if (!v50)
        {
          NSLog(&cfstr_SIsUnexpectedl.isa, "smartListSectionStorage.smartListID");
        }

        v51 = [v49 smartListID];
        v52 = [v31 objectForKeyedSubscript:v51];
        v53 = [[REMSmartListSection alloc] initWithStore:v13 smartList:v52 storage:v49];
        [v44 addObject:v53];
      }

      v46 = [v57 countByEnumeratingWithState:&v63 objects:v79 count:16];
    }

    while (v46);
  }

  v54 = *MEMORY[0x1E69E9840];

  return v44;
}

- (void)fetchSmartListSectionsInSmartList:(uint64_t)a1 error:(const char *)a2 .cold.1(uint64_t a1, const char *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(a2);
  v7 = [v3 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v8, v9, "[%{public}@] Passing in nil '%s'", v10, v11, v12, v13, v5, v6, v15);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)fetchSmartListSectionWithObjectID:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "REMSmartListSectionsDataView: Requested to fetch non-existent smartListSection {objectID: %{public}@}", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end