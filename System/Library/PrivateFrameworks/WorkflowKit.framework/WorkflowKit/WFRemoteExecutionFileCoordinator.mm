@interface WFRemoteExecutionFileCoordinator
- (WFRemoteExecutionFileCoordinator)init;
- (void)handleFile:(id)a3 withIdentifier:(id)a4;
- (void)registerArchiver:(id)a3;
@end

@implementation WFRemoteExecutionFileCoordinator

- (void)registerArchiver:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v4 transferIdentifiers];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = [(WFRemoteExecutionFileCoordinator *)self waitingFiles];
        v12 = [v11 objectForKey:v10];

        if (v12)
        {
          v13 = [(WFRemoteExecutionFileCoordinator *)self waitingFiles];
          v14 = [v13 objectForKey:v10];
          [v4 setFileURL:v14];

          [v4 fileAvailabilityChanged];
          v15 = [(WFRemoteExecutionFileCoordinator *)self waitingFiles];
          [v15 removeObjectForKey:v10];

          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v5 = [(WFRemoteExecutionFileCoordinator *)self waitingArchivers];
  [v5 addObject:v4];
LABEL_11:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)handleFile:(id)a3 withIdentifier:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v29 = self;
  obj = [(WFRemoteExecutionFileCoordinator *)self waitingArchivers];
  v9 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v9)
  {
    v10 = v9;
    v31 = *v41;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v41 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v40 + 1) + 8 * i);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v13 = [v12 transferIdentifiers];
        v14 = [v13 countByEnumeratingWithState:&v36 objects:v45 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v37;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v37 != v16)
              {
                objc_enumerationMutation(v13);
              }

              if ([*(*(&v36 + 1) + 8 * j) isEqualToString:v7])
              {
                [v12 setFileURL:v6];
                [v12 fileAvailabilityChanged];
                [v8 addObject:v12];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v36 objects:v45 count:16];
          }

          while (v15);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v10);
  }

  if ([v8 count])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v18 = v8;
    v19 = [v18 countByEnumeratingWithState:&v32 objects:v44 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v33;
      do
      {
        for (k = 0; k != v20; ++k)
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v32 + 1) + 8 * k);
          v24 = [(WFRemoteExecutionFileCoordinator *)v29 waitingArchivers];
          [v24 removeObject:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v32 objects:v44 count:16];
      }

      while (v20);
    }

    goto LABEL_28;
  }

  v25 = [(WFRemoteExecutionFileCoordinator *)v29 waitingFiles];
  v26 = [v25 allKeys];
  v27 = [v26 containsObject:v7];

  if ((v27 & 1) == 0)
  {
    v18 = [(WFRemoteExecutionFileCoordinator *)v29 waitingFiles];
    [v18 setObject:v6 forKey:v7];
LABEL_28:
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (WFRemoteExecutionFileCoordinator)init
{
  v9.receiver = self;
  v9.super_class = WFRemoteExecutionFileCoordinator;
  v2 = [(WFRemoteExecutionFileCoordinator *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_new();
    waitingFiles = v2->_waitingFiles;
    v2->_waitingFiles = v3;

    v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    waitingArchivers = v2->_waitingArchivers;
    v2->_waitingArchivers = v5;

    v7 = v2;
  }

  return v2;
}

@end