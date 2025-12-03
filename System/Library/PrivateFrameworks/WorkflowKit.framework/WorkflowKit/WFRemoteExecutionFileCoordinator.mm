@interface WFRemoteExecutionFileCoordinator
- (WFRemoteExecutionFileCoordinator)init;
- (void)handleFile:(id)file withIdentifier:(id)identifier;
- (void)registerArchiver:(id)archiver;
@end

@implementation WFRemoteExecutionFileCoordinator

- (void)registerArchiver:(id)archiver
{
  v22 = *MEMORY[0x1E69E9840];
  archiverCopy = archiver;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  transferIdentifiers = [archiverCopy transferIdentifiers];
  v6 = [transferIdentifiers countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(transferIdentifiers);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        waitingFiles = [(WFRemoteExecutionFileCoordinator *)self waitingFiles];
        v12 = [waitingFiles objectForKey:v10];

        if (v12)
        {
          waitingFiles2 = [(WFRemoteExecutionFileCoordinator *)self waitingFiles];
          v14 = [waitingFiles2 objectForKey:v10];
          [archiverCopy setFileURL:v14];

          [archiverCopy fileAvailabilityChanged];
          waitingFiles3 = [(WFRemoteExecutionFileCoordinator *)self waitingFiles];
          [waitingFiles3 removeObjectForKey:v10];

          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [transferIdentifiers countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  transferIdentifiers = [(WFRemoteExecutionFileCoordinator *)self waitingArchivers];
  [transferIdentifiers addObject:archiverCopy];
LABEL_11:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)handleFile:(id)file withIdentifier:(id)identifier
{
  v47 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  identifierCopy = identifier;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  selfCopy = self;
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
        transferIdentifiers = [v12 transferIdentifiers];
        v14 = [transferIdentifiers countByEnumeratingWithState:&v36 objects:v45 count:16];
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
                objc_enumerationMutation(transferIdentifiers);
              }

              if ([*(*(&v36 + 1) + 8 * j) isEqualToString:identifierCopy])
              {
                [v12 setFileURL:fileCopy];
                [v12 fileAvailabilityChanged];
                [v8 addObject:v12];
              }
            }

            v15 = [transferIdentifiers countByEnumeratingWithState:&v36 objects:v45 count:16];
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
    waitingFiles2 = v8;
    v19 = [waitingFiles2 countByEnumeratingWithState:&v32 objects:v44 count:16];
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
            objc_enumerationMutation(waitingFiles2);
          }

          v23 = *(*(&v32 + 1) + 8 * k);
          waitingArchivers = [(WFRemoteExecutionFileCoordinator *)selfCopy waitingArchivers];
          [waitingArchivers removeObject:v23];
        }

        v20 = [waitingFiles2 countByEnumeratingWithState:&v32 objects:v44 count:16];
      }

      while (v20);
    }

    goto LABEL_28;
  }

  waitingFiles = [(WFRemoteExecutionFileCoordinator *)selfCopy waitingFiles];
  allKeys = [waitingFiles allKeys];
  v27 = [allKeys containsObject:identifierCopy];

  if ((v27 & 1) == 0)
  {
    waitingFiles2 = [(WFRemoteExecutionFileCoordinator *)selfCopy waitingFiles];
    [waitingFiles2 setObject:fileCopy forKey:identifierCopy];
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

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    waitingArchivers = v2->_waitingArchivers;
    v2->_waitingArchivers = weakObjectsHashTable;

    v7 = v2;
  }

  return v2;
}

@end