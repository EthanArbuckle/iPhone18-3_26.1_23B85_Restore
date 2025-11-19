@interface STFetchResultsRequest
+ (id)requestWithFetchRequest:(id)a3;
- (STFetchResultsRequest)initWithEntity:(id)a3 predicate:(id)a4 sortDescriptors:(id)a5;
- (STFetchResultsRequest)initWithFetchRequest:(id)a3;
- (id)description;
@end

@implementation STFetchResultsRequest

+ (id)requestWithFetchRequest:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithFetchRequest:v4];

  return v5;
}

- (STFetchResultsRequest)initWithFetchRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 entity];
  v6 = [v4 predicate];
  v7 = [v4 sortDescriptors];

  v8 = [(STFetchResultsRequest *)self initWithEntity:v5 predicate:v6 sortDescriptors:v7];
  return v8;
}

- (STFetchResultsRequest)initWithEntity:(id)a3 predicate:(id)a4 sortDescriptors:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v32.receiver = self;
  v32.super_class = STFetchResultsRequest;
  v11 = [(STFetchResultsRequest *)&v32 init];
  if (v11)
  {
    v12 = MEMORY[0x1E695D5E0];
    v13 = [v8 name];
    v14 = [v12 fetchRequestWithEntityName:v13];
    fetchRequest = v11->_fetchRequest;
    v11->_fetchRequest = v14;

    [(NSFetchRequest *)v11->_fetchRequest setPredicate:v9];
    if (v10)
    {
      [(NSFetchRequest *)v11->_fetchRequest setSortDescriptors:v10];
    }

    else
    {
      v26 = 0;
      v27 = &v26;
      v28 = 0x3032000000;
      v29 = __Block_byref_object_copy__7;
      v30 = __Block_byref_object_dispose__7;
      v31 = 0;
      v16 = [v8 attributesByName];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __66__STFetchResultsRequest_initWithEntity_predicate_sortDescriptors___block_invoke;
      v25[3] = &unk_1E7CE7690;
      v25[4] = &v26;
      [v16 enumerateKeysAndObjectsUsingBlock:v25];

      v17 = v27[5];
      if (!v17)
      {
        v18 = MEMORY[0x1E69E9C10];
        v19 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          v20 = [v8 name];
          [STFetchResultsRequest initWithEntity:v20 predicate:buf sortDescriptors:?];
        }

        v17 = v27[5];
      }

      v21 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:v17 ascending:1];
      v33 = v21;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
      [(NSFetchRequest *)v11->_fetchRequest setSortDescriptors:v22];

      _Block_object_dispose(&v26, 8);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v11;
}

void __66__STFetchResultsRequest_initWithEntity_predicate_sortDescriptors___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v8 = [a3 attributeType];
  if (v8 > 599)
  {
    if (v8 <= 799)
    {
      if (v8 == 600 || v8 == 700)
      {
        goto LABEL_17;
      }
    }

    else if (v8 == 800 || v8 == 1000 || v8 == 900)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v8 > 299)
    {
      if (v8 != 300 && v8 != 400 && v8 != 500)
      {
        goto LABEL_18;
      }

LABEL_17:
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      *a4 = 1;
      goto LABEL_18;
    }

    if (v8 == 100 || v8 == 200)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
}

- (id)description
{
  v3 = [(STFetchResultsRequest *)self fetchRequest];
  v4 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = STFetchResultsRequest;
  v5 = [(STFetchResultsRequest *)&v10 description];
  v6 = [v3 entityName];
  v7 = [v3 predicate];
  v8 = [v4 stringWithFormat:@"%@ fetch %@: %@", v5, v6, v7];

  return v8;
}

- (void)initWithEntity:(void *)a1 predicate:(uint8_t *)buf sortDescriptors:.cold.1(void *a1, uint8_t *buf)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_fault_impl(&dword_1B831F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "no sort key found for %{pubic}@", buf, 0xCu);
}

@end