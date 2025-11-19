@interface REMReminderFetchExecutor
- (REMReminderFetchExecutor)initWithCoder:(id)a3;
- (REMReminderFetchExecutor)initWithPredicateDescriptor:(id)a3 sortDescriptors:(id)a4 options:(unint64_t)a5;
- (id)description;
- (id)resultsFromFetchResult:(id)a3 inList:(id)a4 error:(id *)a5;
- (id)resultsFromFetchResult:(id)a3 inParentReminder:(id)a4 error:(id *)a5;
- (id)resultsFromFetchResult:(id)a3 inStore:(id)a4 error:(id *)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMReminderFetchExecutor

- (REMReminderFetchExecutor)initWithPredicateDescriptor:(id)a3 sortDescriptors:(id)a4 options:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = REMReminderFetchExecutor;
  v11 = [(REMReminderFetchExecutor *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_predicateDescriptor, a3);
    objc_storeStrong(&v12->_sortDescriptors, a4);
    v12->_options = a5;
  }

  return v12;
}

- (REMReminderFetchExecutor)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = REMReminderFetchExecutor;
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
  v7.receiver = self;
  v7.super_class = REMReminderFetchExecutor;
  v4 = a3;
  [(_REMFetchExecutor *)&v7 encodeWithCoder:v4];
  v5 = [(REMReminderFetchExecutor *)self predicateDescriptor:v7.receiver];
  [v4 encodeObject:v5 forKey:@"predicateDescriptor"];

  v6 = [(REMReminderFetchExecutor *)self sortDescriptors];
  [v4 encodeObject:v6 forKey:@"sortDescriptors"];

  [v4 encodeInteger:-[REMReminderFetchExecutor options](self forKey:{"options"), @"options"}];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMReminderFetchExecutor *)self predicateDescriptor];
  v6 = [(REMReminderFetchExecutor *)self sortDescriptors];
  v7 = [v3 stringWithFormat:@"<%@: %p predicate: %@, sortDescriptors: %@>", v4, self, v5, v6];

  return v7;
}

- (id)resultsFromFetchResult:(id)a3 inStore:(id)a4 error:(id *)a5
{
  v92 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x1E695DF90]);
  v9 = [v6 fetchedAccountStorages];
  v66 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v65 = v6;
  v10 = [v6 fetchedAccountStorages];
  v11 = [v10 countByEnumeratingWithState:&v83 objects:v91 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v84;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v84 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [[REMAccount alloc] initWithStore:v7 storage:*(*(&v83 + 1) + 8 * i)];
        v16 = [(REMAccount *)v15 objectID];
        [v66 setObject:v15 forKeyedSubscript:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v83 objects:v91 count:16];
    }

    while (v12);
  }

  v17 = objc_alloc(MEMORY[0x1E695DF90]);
  v18 = [v65 fetchedListStorages];
  v19 = [v17 initWithCapacity:{objc_msgSend(v18, "count")}];

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v20 = [v65 fetchedListStorages];
  v21 = [v20 countByEnumeratingWithState:&v79 objects:v90 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v80;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v80 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v79 + 1) + 8 * j);
        v26 = [v25 accountID];
        v27 = [v66 objectForKeyedSubscript:v26];

        v28 = [[REMList alloc] initWithStore:v7 account:v27 storage:v25];
        v29 = [(REMList *)v28 objectID];
        [v19 setObject:v28 forKeyedSubscript:v29];
      }

      v22 = [v20 countByEnumeratingWithState:&v79 objects:v90 count:16];
    }

    while (v22);
  }

  v30 = objc_alloc(MEMORY[0x1E695DF90]);
  v31 = [v65 fetchedReminderStorages];
  v32 = [v30 initWithCapacity:{objc_msgSend(v31, "count")}];

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v33 = [v65 fetchedReminderStorages];
  v34 = [v33 countByEnumeratingWithState:&v75 objects:v89 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v76;
    do
    {
      for (k = 0; k != v35; ++k)
      {
        if (*v76 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v75 + 1) + 8 * k);
        v39 = [v38 listID];

        if (v39)
        {
          v40 = [v38 listID];
          v41 = [v19 objectForKeyedSubscript:v40];

          v42 = [[REMReminder alloc] initWithStore:v7 list:v41 storage:v38];
          v43 = [(REMReminder *)v42 objectID];
          [v32 setObject:v42 forKeyedSubscript:v43];
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v75 objects:v89 count:16];
    }

    while (v35);
  }

  v64 = v19;

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v44 = [v32 allValues];
  v45 = [v44 countByEnumeratingWithState:&v71 objects:v88 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v72;
    do
    {
      for (m = 0; m != v46; ++m)
      {
        if (*v72 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = *(*(&v71 + 1) + 8 * m);
        v50 = [v49 storage];
        v51 = [v50 parentReminderID];
        if (v51)
        {
          v52 = [v32 objectForKeyedSubscript:v51];
          [v49 setParentReminder:v52];
        }
      }

      v46 = [v44 countByEnumeratingWithState:&v71 objects:v88 count:16];
    }

    while (v46);
  }

  v53 = objc_alloc(MEMORY[0x1E695DF70]);
  v54 = [v65 requestedObjectIDs];
  v55 = [v53 initWithCapacity:{objc_msgSend(v54, "count")}];

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v56 = [v65 requestedObjectIDs];
  v57 = [v56 countByEnumeratingWithState:&v67 objects:v87 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v68;
    do
    {
      for (n = 0; n != v58; ++n)
      {
        if (*v68 != v59)
        {
          objc_enumerationMutation(v56);
        }

        v61 = [v32 objectForKeyedSubscript:*(*(&v67 + 1) + 8 * n)];
        if (v61)
        {
          [v55 addObject:v61];
        }
      }

      v58 = [v56 countByEnumeratingWithState:&v67 objects:v87 count:16];
    }

    while (v58);
  }

  v62 = *MEMORY[0x1E69E9840];

  return v55;
}

- (id)resultsFromFetchResult:(id)a3 inList:(id)a4 error:(id *)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x1E695DF70]);
  v9 = [v6 fetchedReminderStorages];
  v10 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = v6;
  v11 = [v6 fetchedReminderStorages];
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
        v17 = [REMReminder alloc];
        v18 = [v7 store];
        v19 = [(REMReminder *)v17 initWithStore:v18 list:v7 storage:v16];

        [v10 addObject:v19];
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)resultsFromFetchResult:(id)a3 inParentReminder:(id)a4 error:(id *)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x1E695DF70]);
  v9 = [v6 fetchedReminderStorages];
  v10 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [v6 fetchedReminderStorages];
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
        v16 = [REMReminder alloc];
        v17 = [v7 store];
        v18 = [v7 list];
        v19 = [(REMReminder *)v16 initWithStore:v17 list:v18 storage:v15];

        [(REMReminder *)v19 setParentReminder:v7];
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