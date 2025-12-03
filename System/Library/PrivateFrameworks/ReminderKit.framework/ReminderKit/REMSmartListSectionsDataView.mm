@interface REMSmartListSectionsDataView
- (REMSmartListSectionsDataView)initWithStore:(id)store;
- (id)fetchSmartListSectionWithObjectID:(id)d error:(id *)error;
- (id)fetchSmartListSectionsInSmartList:(id)list error:(id *)error;
- (id)fetchSmartListSectionsWithObjectIDs:(id)ds error:(id *)error;
- (id)smartListSectionsFromAccountStorages:(id)storages smartListStorages:(id)listStorages groupStorages:(id)groupStorages smartListSectionStorages:(id)sectionStorages store:(id)store;
@end

@implementation REMSmartListSectionsDataView

- (REMSmartListSectionsDataView)initWithStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = REMSmartListSectionsDataView;
  v6 = [(REMSmartListSectionsDataView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
  }

  return v7;
}

- (id)fetchSmartListSectionsInSmartList:(id)list error:(id *)error
{
  listCopy = list;
  if (listCopy)
  {
    v8 = [REMSmartListSectionsDataViewInvocation_fetchSmartListSectionsInSmartList alloc];
    objectID = [listCopy objectID];
    v10 = [(REMSmartListSectionsDataViewInvocation_fetchSmartListSectionsInSmartList *)v8 initWithParentSmartListObjectID:objectID];

    store = [(REMSmartListSectionsDataView *)self store];
    v12 = [store resultFromPerformingInvocation:v10 error:error];

    v13 = objc_opt_class();
    v14 = REMDynamicCast(v13, v12);
    accountStorages = [v14 accountStorages];
    smartListStorages = [v14 smartListStorages];
    groupStorages = [v14 groupStorages];
    smartListSectionStorages = [v14 smartListSectionStorages];
    store2 = [(REMSmartListSectionsDataView *)self store];
    v20 = [(REMSmartListSectionsDataView *)self smartListSectionsFromAccountStorages:accountStorages smartListStorages:smartListStorages groupStorages:groupStorages smartListSectionStorages:smartListSectionStorages store:store2];
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

- (id)fetchSmartListSectionsWithObjectIDs:(id)ds error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v8 = dsCopy;
  if (dsCopy)
  {
    if ([dsCopy count])
    {
      v9 = [[REMSmartListSectionsDataViewInvocation_fetchByObjectIDs alloc] initWithObjectIDs:v8];
      store = [(REMSmartListSectionsDataView *)self store];
      v11 = [store resultFromPerformingInvocation:v9 error:error];

      v12 = objc_opt_class();
      v13 = REMDynamicCast(v12, v11);
      accountStorages = [v13 accountStorages];
      smartListStorages = [v13 smartListStorages];
      groupStorages = [v13 groupStorages];
      smartListSectionStorages = [v13 smartListSectionStorages];
      store2 = [(REMSmartListSectionsDataView *)self store];
      v19 = [(REMSmartListSectionsDataView *)self smartListSectionsFromAccountStorages:accountStorages smartListStorages:smartListStorages groupStorages:groupStorages smartListSectionStorages:smartListSectionStorages store:store2];

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
              objectID = [v26 objectID];
              [v20 setObject:v26 forKeyedSubscript:objectID];
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

- (id)fetchSmartListSectionWithObjectID:(id)d error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v8 = dCopy;
  if (dCopy)
  {
    v16[0] = dCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v10 = [(REMSmartListSectionsDataView *)self fetchSmartListSectionsWithObjectIDs:v9 error:error];

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

      if (error)
      {
        [REMError noSuchObjectErrorWithObjectID:v8];
        *error = v11 = 0;
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

- (id)smartListSectionsFromAccountStorages:(id)storages smartListStorages:(id)listStorages groupStorages:(id)groupStorages smartListSectionStorages:(id)sectionStorages store:(id)store
{
  v83 = *MEMORY[0x1E69E9840];
  storagesCopy = storages;
  listStoragesCopy = listStorages;
  groupStoragesCopy = groupStorages;
  sectionStoragesCopy = sectionStorages;
  storeCopy = store;
  v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(storagesCopy, "count")}];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = storagesCopy;
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

        v19 = [[REMAccount alloc] initWithStore:storeCopy storage:*(*(&v75 + 1) + 8 * i)];
        objectID = [(REMAccount *)v19 objectID];
        [v14 setObject:v19 forKeyedSubscript:objectID];
      }

      v16 = [obj countByEnumeratingWithState:&v75 objects:v82 count:16];
    }

    while (v16);
  }

  v62 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(groupStoragesCopy, "count")}];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v60 = groupStoragesCopy;
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
        accountID = [v25 accountID];

        if (!accountID)
        {
          NSLog(&cfstr_SIsUnexpectedl.isa, "groupStorage.accountID");
        }

        accountID2 = [v25 accountID];
        v28 = [v14 objectForKeyedSubscript:accountID2];

        v29 = [[REMList alloc] initWithStore:storeCopy account:v28 storage:v25];
        objectID2 = [(REMList *)v29 objectID];
        [v62 setObject:v29 forKeyedSubscript:objectID2];
      }

      v22 = [v60 countByEnumeratingWithState:&v71 objects:v81 count:16];
    }

    while (v22);
  }

  v31 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(listStoragesCopy, "count")}];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v59 = listStoragesCopy;
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
        accountID3 = [v36 accountID];

        if (!accountID3)
        {
          NSLog(&cfstr_SIsUnexpectedl.isa, "smartListStorage.accountID");
        }

        accountID4 = [v36 accountID];
        v39 = [v14 objectForKeyedSubscript:accountID4];

        parentListID = [v36 parentListID];

        if (parentListID)
        {
          parentListID2 = [v36 parentListID];
          parentListID = [v62 objectForKeyedSubscript:parentListID2];
        }

        v42 = [[REMSmartList alloc] initWithStore:storeCopy account:v39 parentList:parentListID storage:v36];
        objectID3 = [(REMSmartList *)v42 objectID];
        [v31 setObject:v42 forKeyedSubscript:objectID3];
      }

      v33 = [v59 countByEnumeratingWithState:&v67 objects:v80 count:16];
    }

    while (v33);
  }

  v44 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(sectionStoragesCopy, "count")}];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v57 = sectionStoragesCopy;
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
        smartListID = [v49 smartListID];

        if (!smartListID)
        {
          NSLog(&cfstr_SIsUnexpectedl.isa, "smartListSectionStorage.smartListID");
        }

        smartListID2 = [v49 smartListID];
        v52 = [v31 objectForKeyedSubscript:smartListID2];
        v53 = [[REMSmartListSection alloc] initWithStore:storeCopy smartList:v52 storage:v49];
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