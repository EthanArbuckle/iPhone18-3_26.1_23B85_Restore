@interface STStorageGroupSizeOperation
+ (id)operationForOperations:(id)operations;
- (void)cancel;
- (void)main;
@end

@implementation STStorageGroupSizeOperation

+ (id)operationForOperations:(id)operations
{
  operationsCopy = operations;
  v4 = objc_alloc_init(STStorageGroupSizeOperation);
  [(STStorageGroupSizeOperation *)v4 setOperations:operationsCopy];

  return v4;
}

- (void)main
{
  v21 = *MEMORY[0x277D85DE8];
  operations = [(STStorageGroupSizeOperation *)self operations];
  currentQueue = [MEMORY[0x277CCABD8] currentQueue];
  [currentQueue addOperations:operations waitUntilFinished:1];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = operations;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        error = [v12 error];

        if (error)
        {
          error2 = [v12 error];

          v8 = error2;
        }

        v9 += [v12 size];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  [(STStorageSizeOperation *)self setSize:v9];
  [(STStorageOperation *)self setError:v8];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  v15 = *MEMORY[0x277D85DE8];
  operations = [(STStorageGroupSizeOperation *)self operations];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [operations countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(operations);
        }

        [*(*(&v10 + 1) + 8 * v7++) cancel];
      }

      while (v5 != v7);
      v5 = [operations countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = STStorageGroupSizeOperation;
  [(STStorageGroupSizeOperation *)&v9 cancel];

  v8 = *MEMORY[0x277D85DE8];
}

@end