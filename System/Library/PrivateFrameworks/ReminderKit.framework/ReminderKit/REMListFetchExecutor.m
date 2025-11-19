@interface REMListFetchExecutor
- (REMListFetchExecutor)initWithCoder:(id)a3;
- (REMListFetchExecutor)initWithPredicateDescriptor:(id)a3 sortDescriptors:(id)a4 options:(unint64_t)a5;
- (id)description;
- (id)resultsFromFetchResult:(id)a3 inAccount:(id)a4 error:(id *)a5;
- (id)resultsFromFetchResult:(id)a3 inParentList:(id)a4 error:(id *)a5;
- (id)resultsFromFetchResult:(id)a3 inStore:(id)a4 error:(id *)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMListFetchExecutor

- (REMListFetchExecutor)initWithPredicateDescriptor:(id)a3 sortDescriptors:(id)a4 options:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = REMListFetchExecutor;
  v11 = [(REMListFetchExecutor *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_predicateDescriptor, a3);
    objc_storeStrong(&v12->_sortDescriptors, a4);
    v12->_options = a5;
  }

  return v12;
}

- (REMListFetchExecutor)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = REMListFetchExecutor;
  v5 = [(_REMFetchExecutor *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predicateDescriptor"];
    predicateDescriptor = v5->_predicateDescriptor;
    v5->_predicateDescriptor = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"sortDescriptors"];
    sortDescriptors = v5->_sortDescriptors;
    v5->_sortDescriptors = v11;

    v5->_options = [v4 decodeIntegerForKey:@"options"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(REMListFetchExecutor *)self predicateDescriptor];
  [v6 encodeObject:v4 forKey:@"predicateDescriptor"];

  v5 = [(REMListFetchExecutor *)self sortDescriptors];
  [v6 encodeObject:v5 forKey:@"sortDescriptors"];

  [v6 encodeInteger:-[REMListFetchExecutor options](self forKey:{"options"), @"options"}];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMListFetchExecutor *)self predicateDescriptor];
  v6 = [(REMListFetchExecutor *)self sortDescriptors];
  v7 = [v3 stringWithFormat:@"<%@: %p predicate: %@, sortDescriptors: %@>", v4, self, v5, v6];

  return v7;
}

- (id)resultsFromFetchResult:(id)a3 inStore:(id)a4 error:(id *)a5
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x1E695DF90]);
  v9 = [v6 fetchedAccountStorages];
  v10 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v43 = v6;
  v11 = [v6 fetchedAccountStorages];
  v12 = [v11 countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v55;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v55 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [[REMAccount alloc] initWithStore:v7 storage:*(*(&v54 + 1) + 8 * i)];
        v17 = [(REMAccount *)v16 objectID];
        [v10 setObject:v16 forKeyedSubscript:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v13);
  }

  v18 = objc_alloc(MEMORY[0x1E695DF90]);
  v19 = [v43 fetchedListStorages];
  v20 = [v18 initWithCapacity:{objc_msgSend(v19, "count")}];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = [v43 fetchedListStorages];
  v21 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v51;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v51 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v50 + 1) + 8 * j);
        v26 = [v25 accountID];
        v27 = [v10 objectForKeyedSubscript:v26];

        v28 = [[REMList alloc] initWithStore:v7 account:v27 storage:v25];
        v29 = [(REMList *)v28 objectID];
        [v20 setObject:v28 forKeyedSubscript:v29];
      }

      v22 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v22);
  }

  v30 = objc_alloc(MEMORY[0x1E695DF70]);
  v31 = [v43 requestedObjectIDs];
  v32 = [v30 initWithCapacity:{objc_msgSend(v31, "count")}];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obja = [v43 requestedObjectIDs];
  v33 = [obja countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v47;
    do
    {
      for (k = 0; k != v34; ++k)
      {
        if (*v47 != v35)
        {
          objc_enumerationMutation(obja);
        }

        v37 = [v20 objectForKeyedSubscript:*(*(&v46 + 1) + 8 * k)];
        v38 = [v37 storage];
        v39 = [v38 parentListID];

        if (v39)
        {
          v40 = [v20 objectForKeyedSubscript:v39];
          [v37 setParentList:v40];
        }

        [v32 addObject:v37];
      }

      v34 = [obja countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v34);
  }

  v41 = *MEMORY[0x1E69E9840];

  return v32;
}

- (id)resultsFromFetchResult:(id)a3 inAccount:(id)a4 error:(id *)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x1E695DF70]);
  v9 = [v6 fetchedListStorages];
  v10 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = v6;
  v11 = [v6 fetchedListStorages];
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        v17 = [REMList alloc];
        v18 = [v7 store];
        v19 = [(REMList *)v17 initWithStore:v18 account:v7 storage:v16];

        [v10 addObject:v19];
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)resultsFromFetchResult:(id)a3 inParentList:(id)a4 error:(id *)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x1E695DF70]);
  v9 = [v6 fetchedListStorages];
  v10 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [v6 fetchedListStorages];
  v11 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = [REMList alloc];
        v17 = [v7 store];
        v18 = [v7 account];
        v19 = [(REMList *)v16 initWithStore:v17 account:v18 storage:v15];

        [(REMList *)v19 setParentList:v7];
        [v10 addObject:v19];
      }

      v12 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v10;
}

@end