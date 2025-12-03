@interface REMListFetchExecutor
- (REMListFetchExecutor)initWithCoder:(id)coder;
- (REMListFetchExecutor)initWithPredicateDescriptor:(id)descriptor sortDescriptors:(id)descriptors options:(unint64_t)options;
- (id)description;
- (id)resultsFromFetchResult:(id)result inAccount:(id)account error:(id *)error;
- (id)resultsFromFetchResult:(id)result inParentList:(id)list error:(id *)error;
- (id)resultsFromFetchResult:(id)result inStore:(id)store error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMListFetchExecutor

- (REMListFetchExecutor)initWithPredicateDescriptor:(id)descriptor sortDescriptors:(id)descriptors options:(unint64_t)options
{
  descriptorCopy = descriptor;
  descriptorsCopy = descriptors;
  v14.receiver = self;
  v14.super_class = REMListFetchExecutor;
  v11 = [(REMListFetchExecutor *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_predicateDescriptor, descriptor);
    objc_storeStrong(&v12->_sortDescriptors, descriptors);
    v12->_options = options;
  }

  return v12;
}

- (REMListFetchExecutor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = REMListFetchExecutor;
  v5 = [(_REMFetchExecutor *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predicateDescriptor"];
    predicateDescriptor = v5->_predicateDescriptor;
    v5->_predicateDescriptor = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"sortDescriptors"];
    sortDescriptors = v5->_sortDescriptors;
    v5->_sortDescriptors = v11;

    v5->_options = [coderCopy decodeIntegerForKey:@"options"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  predicateDescriptor = [(REMListFetchExecutor *)self predicateDescriptor];
  [coderCopy encodeObject:predicateDescriptor forKey:@"predicateDescriptor"];

  sortDescriptors = [(REMListFetchExecutor *)self sortDescriptors];
  [coderCopy encodeObject:sortDescriptors forKey:@"sortDescriptors"];

  [coderCopy encodeInteger:-[REMListFetchExecutor options](self forKey:{"options"), @"options"}];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  predicateDescriptor = [(REMListFetchExecutor *)self predicateDescriptor];
  sortDescriptors = [(REMListFetchExecutor *)self sortDescriptors];
  v7 = [v3 stringWithFormat:@"<%@: %p predicate: %@, sortDescriptors: %@>", v4, self, predicateDescriptor, sortDescriptors];

  return v7;
}

- (id)resultsFromFetchResult:(id)result inStore:(id)store error:(id *)error
{
  v61 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  storeCopy = store;
  v8 = objc_alloc(MEMORY[0x1E695DF90]);
  fetchedAccountStorages = [resultCopy fetchedAccountStorages];
  v10 = [v8 initWithCapacity:{objc_msgSend(fetchedAccountStorages, "count")}];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v43 = resultCopy;
  fetchedAccountStorages2 = [resultCopy fetchedAccountStorages];
  v12 = [fetchedAccountStorages2 countByEnumeratingWithState:&v54 objects:v60 count:16];
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
          objc_enumerationMutation(fetchedAccountStorages2);
        }

        v16 = [[REMAccount alloc] initWithStore:storeCopy storage:*(*(&v54 + 1) + 8 * i)];
        objectID = [(REMAccount *)v16 objectID];
        [v10 setObject:v16 forKeyedSubscript:objectID];
      }

      v13 = [fetchedAccountStorages2 countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v13);
  }

  v18 = objc_alloc(MEMORY[0x1E695DF90]);
  fetchedListStorages = [v43 fetchedListStorages];
  v20 = [v18 initWithCapacity:{objc_msgSend(fetchedListStorages, "count")}];

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
        accountID = [v25 accountID];
        v27 = [v10 objectForKeyedSubscript:accountID];

        v28 = [[REMList alloc] initWithStore:storeCopy account:v27 storage:v25];
        objectID2 = [(REMList *)v28 objectID];
        [v20 setObject:v28 forKeyedSubscript:objectID2];
      }

      v22 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v22);
  }

  v30 = objc_alloc(MEMORY[0x1E695DF70]);
  requestedObjectIDs = [v43 requestedObjectIDs];
  v32 = [v30 initWithCapacity:{objc_msgSend(requestedObjectIDs, "count")}];

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
        storage = [v37 storage];
        parentListID = [storage parentListID];

        if (parentListID)
        {
          v40 = [v20 objectForKeyedSubscript:parentListID];
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

- (id)resultsFromFetchResult:(id)result inAccount:(id)account error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  accountCopy = account;
  v8 = objc_alloc(MEMORY[0x1E695DF70]);
  fetchedListStorages = [resultCopy fetchedListStorages];
  v10 = [v8 initWithCapacity:{objc_msgSend(fetchedListStorages, "count")}];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = resultCopy;
  fetchedListStorages2 = [resultCopy fetchedListStorages];
  v12 = [fetchedListStorages2 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(fetchedListStorages2);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        v17 = [REMList alloc];
        store = [accountCopy store];
        v19 = [(REMList *)v17 initWithStore:store account:accountCopy storage:v16];

        [v10 addObject:v19];
      }

      v13 = [fetchedListStorages2 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)resultsFromFetchResult:(id)result inParentList:(id)list error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  listCopy = list;
  v8 = objc_alloc(MEMORY[0x1E695DF70]);
  fetchedListStorages = [resultCopy fetchedListStorages];
  v10 = [v8 initWithCapacity:{objc_msgSend(fetchedListStorages, "count")}];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [resultCopy fetchedListStorages];
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
        store = [listCopy store];
        account = [listCopy account];
        v19 = [(REMList *)v16 initWithStore:store account:account storage:v15];

        [(REMList *)v19 setParentList:listCopy];
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