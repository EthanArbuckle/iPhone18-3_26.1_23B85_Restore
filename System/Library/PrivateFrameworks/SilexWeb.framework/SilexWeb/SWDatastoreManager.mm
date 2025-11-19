@interface SWDatastoreManager
- (SWDatastore)datastore;
- (SWDatastoreManager)initWithLogger:(id)a3 documentStateProvider:(id)a4 datastoreSynchronizationManager:(id)a5;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
- (void)updateDatastore:(id)a3 originatingSession:(id)a4 options:(unint64_t)a5 completion:(id)a6;
@end

@implementation SWDatastoreManager

- (SWDatastoreManager)initWithLogger:(id)a3 documentStateProvider:(id)a4 datastoreSynchronizationManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = SWDatastoreManager;
  v12 = [(SWDatastoreManager *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_logger, a3);
    objc_storeStrong(&v13->_documentStateProvider, a4);
    objc_storeStrong(&v13->_datastoreSynchronizationManager, a5);
    v14 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v13->_observers;
    v13->_observers = v14;
  }

  return v13;
}

- (SWDatastore)datastore
{
  privateDatastore = self->_privateDatastore;
  if (privateDatastore)
  {
    v3 = privateDatastore;
  }

  else
  {
    v3 = +[SWDatastore emptyDatastore];
  }

  return v3;
}

- (void)updateDatastore:(id)a3 originatingSession:(id)a4 options:(unint64_t)a5 completion:(id)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if ((a5 & 1) != 0 || v11 && ![(SWDatastore *)self->_privateDatastore isEqual:v11])
  {
    v14 = (a5 >> 1) & 1;
    v15 = [(SWDatastoreManager *)self logger];
    v16 = MEMORY[0x1E696AEC0];
    v17 = [v12 identifier];
    v18 = [v16 stringWithFormat:@"Processing datastore update message from session: %@", v17];
    [v15 log:v18];

    v19 = [(SWDatastoreManager *)self datastore];
    objc_storeStrong(&self->_privateDatastore, a3);
    v20 = [(SWDatastoreManager *)self logger];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Notifying observers and updating datastore to store"];
    [v20 log:v21];

    v22 = [(SWDatastoreManager *)self datastoreSynchronizationManager];
    [v22 synchronizeDatastore:v11 from:self previousDatastore:v19 originatingSession:v12 queueable:v14 completion:v13];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v23 = [(SWDatastoreManager *)self observers];
    v24 = [v23 allObjects];

    v25 = [v24 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v31;
      do
      {
        v28 = 0;
        do
        {
          if (*v31 != v27)
          {
            objc_enumerationMutation(v24);
          }

          [*(*(&v30 + 1) + 8 * v28++) datastoreManager:self didChangeFromDatastore:v19 toDatastore:v11 originatingSession:v12];
        }

        while (v26 != v28);
        v26 = [v24 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v26);
    }
  }

  else if (v13)
  {
    v13[2](v13);
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)addObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SWDatastoreManager *)self observers];
    [v5 addObject:v4];
  }
}

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SWDatastoreManager *)self observers];
    [v5 removeObject:v4];
  }
}

@end