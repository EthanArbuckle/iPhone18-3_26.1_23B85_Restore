@interface REMTemplatesDataView
- (REMTemplatesDataView)initWithStore:(id)store;
- (id)fetchTemplateWithObjectID:(id)d error:(id *)error;
- (id)fetchTemplatesInAccount:(id)account error:(id *)error;
- (id)fetchTemplatesWithObjectIDs:(id)ds error:(id *)error;
- (id)templatesFromTemplateStorages:(id)storages store:(id)store;
@end

@implementation REMTemplatesDataView

- (REMTemplatesDataView)initWithStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = REMTemplatesDataView;
  v6 = [(REMTemplatesDataView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
  }

  return v7;
}

- (id)fetchTemplatesInAccount:(id)account error:(id *)error
{
  accountCopy = account;
  v7 = [REMTemplatesDataViewInvocation_fetchTemplatesInAccount alloc];
  objectID = [accountCopy objectID];

  v9 = [(REMTemplatesDataViewInvocation_fetchTemplatesInAccount *)v7 initWithParentAccountObjectID:objectID];
  store = [(REMTemplatesDataView *)self store];
  v11 = [store resultFromPerformingInvocation:v9 error:error];

  v12 = objc_opt_class();
  v13 = REMDynamicCast(v12, v11);
  templateStorages = [v13 templateStorages];
  store2 = [(REMTemplatesDataView *)self store];
  v16 = [(REMTemplatesDataView *)self templatesFromTemplateStorages:templateStorages store:store2];

  return v16;
}

- (id)fetchTemplatesWithObjectIDs:(id)ds error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if ([dsCopy count])
  {
    v7 = [[REMTemplatesDataViewInvocation_fetchByObjectIDs alloc] initWithObjectIDs:dsCopy];
    store = [(REMTemplatesDataView *)self store];
    v9 = [store resultFromPerformingInvocation:v7 error:error];

    v10 = objc_opt_class();
    v11 = REMDynamicCast(v10, v9);
    templateStorages = [v11 templateStorages];
    store2 = [(REMTemplatesDataView *)self store];
    v14 = [(REMTemplatesDataView *)self templatesFromTemplateStorages:templateStorages store:store2];

    if (v14)
    {
      v25 = v9;
      v26 = v7;
      v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v14, "count")}];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v16 = v14;
      v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v28;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v28 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v27 + 1) + 8 * i);
            objectID = [v21 objectID];
            [v15 setObject:v21 forKeyedSubscript:objectID];
          }

          v18 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v18);
      }

      v9 = v25;
      v7 = v26;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = MEMORY[0x1E695E0F8];
  }

  v23 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)fetchTemplateWithObjectID:(id)d error:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  v15[0] = dCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v9 = [v7 initWithArray:v8];
  v10 = [(REMTemplatesDataView *)self fetchTemplatesWithObjectIDs:v9 error:error];

  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = [v10 objectForKeyedSubscript:dCopy];
  if (v11)
  {
    goto LABEL_8;
  }

  v12 = +[REMLogStore read];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [REMTemplatesDataView fetchTemplateWithObjectID:dCopy error:v12];
  }

  if (error)
  {
    [REMError noSuchObjectErrorWithObjectID:dCopy];
    *error = v11 = 0;
  }

  else
  {
LABEL_7:
    v11 = 0;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)templatesFromTemplateStorages:(id)storages store:(id)store
{
  v23 = *MEMORY[0x1E69E9840];
  storagesCopy = storages;
  storeCopy = store;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(storagesCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = storagesCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [REMTemplate alloc];
        v15 = [(REMTemplate *)v14 initWithStore:storeCopy storage:v13, v18];
        [v7 addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)fetchTemplateWithObjectID:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "REMTemplatesDataView: Requested to fetch non-existent template {objectID: %{public}@}", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end