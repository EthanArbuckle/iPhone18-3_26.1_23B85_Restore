@interface SWDatastoreManager
- (SWDatastore)datastore;
- (SWDatastoreManager)initWithLogger:(id)logger documentStateProvider:(id)provider datastoreSynchronizationManager:(id)manager;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (void)updateDatastore:(id)datastore originatingSession:(id)session options:(unint64_t)options completion:(id)completion;
@end

@implementation SWDatastoreManager

- (SWDatastoreManager)initWithLogger:(id)logger documentStateProvider:(id)provider datastoreSynchronizationManager:(id)manager
{
  loggerCopy = logger;
  providerCopy = provider;
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = SWDatastoreManager;
  v12 = [(SWDatastoreManager *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_logger, logger);
    objc_storeStrong(&v13->_documentStateProvider, provider);
    objc_storeStrong(&v13->_datastoreSynchronizationManager, manager);
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v13->_observers;
    v13->_observers = weakObjectsHashTable;
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

- (void)updateDatastore:(id)datastore originatingSession:(id)session options:(unint64_t)options completion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  datastoreCopy = datastore;
  sessionCopy = session;
  completionCopy = completion;
  if ((options & 1) != 0 || datastoreCopy && ![(SWDatastore *)self->_privateDatastore isEqual:datastoreCopy])
  {
    v14 = (options >> 1) & 1;
    logger = [(SWDatastoreManager *)self logger];
    v16 = MEMORY[0x1E696AEC0];
    identifier = [sessionCopy identifier];
    v18 = [v16 stringWithFormat:@"Processing datastore update message from session: %@", identifier];
    [logger log:v18];

    datastore = [(SWDatastoreManager *)self datastore];
    objc_storeStrong(&self->_privateDatastore, datastore);
    logger2 = [(SWDatastoreManager *)self logger];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Notifying observers and updating datastore to store"];
    [logger2 log:v21];

    datastoreSynchronizationManager = [(SWDatastoreManager *)self datastoreSynchronizationManager];
    [datastoreSynchronizationManager synchronizeDatastore:datastoreCopy from:self previousDatastore:datastore originatingSession:sessionCopy queueable:v14 completion:completionCopy];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    observers = [(SWDatastoreManager *)self observers];
    allObjects = [observers allObjects];

    v25 = [allObjects countByEnumeratingWithState:&v30 objects:v34 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          [*(*(&v30 + 1) + 8 * v28++) datastoreManager:self didChangeFromDatastore:datastore toDatastore:datastoreCopy originatingSession:sessionCopy];
        }

        while (v26 != v28);
        v26 = [allObjects countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v26);
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)addObserver:(id)observer
{
  if (observer)
  {
    observerCopy = observer;
    observers = [(SWDatastoreManager *)self observers];
    [observers addObject:observerCopy];
  }
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    observerCopy = observer;
    observers = [(SWDatastoreManager *)self observers];
    [observers removeObject:observerCopy];
  }
}

@end