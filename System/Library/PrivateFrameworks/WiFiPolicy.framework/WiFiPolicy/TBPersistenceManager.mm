@interface TBPersistenceManager
+ (BOOL)isStoreCompatibleAtURL:(id)l withModel:(id)model;
- (TBPersistenceManager)initWithManagedObjectModel:(id)model storeDescriptor:(id)descriptor;
- (void)addPersistentStorage:(id)storage completionHandler:(id)handler;
@end

@implementation TBPersistenceManager

- (TBPersistenceManager)initWithManagedObjectModel:(id)model storeDescriptor:(id)descriptor
{
  modelCopy = model;
  descriptorCopy = descriptor;
  v36.receiver = self;
  v36.super_class = TBPersistenceManager;
  v9 = [(TBPersistenceManager *)&v36 init];
  objc_storeStrong(&v9->_managedObjectModel, model);
  if (!v9->_managedObjectModel)
  {
    NSLog(&cfstr_SNsmanagedobje.isa, "[TBPersistenceManager initWithManagedObjectModel:storeDescriptor:]");
    goto LABEL_12;
  }

  v10 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:v9->_managedObjectModel];
  persistenceCoordinator = v9->_persistenceCoordinator;
  v9->_persistenceCoordinator = v10;

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  storeURL = [descriptorCopy storeURL];
  path = [storeURL path];
  if ([defaultManager fileExistsAtPath:path])
  {
    v15 = objc_opt_class();
    storeURL2 = [descriptorCopy storeURL];
    LOBYTE(v15) = [v15 isStoreCompatibleAtURL:storeURL2 withModel:v9->_managedObjectModel];

    if (v15)
    {
      goto LABEL_9;
    }

    storeURL3 = [descriptorCopy storeURL];
    NSLog(&cfstr_SRemovingIncom.isa, "[TBPersistenceManager initWithManagedObjectModel:storeDescriptor:]", storeURL3);

    v18 = v9->_persistenceCoordinator;
    storeURL4 = [descriptorCopy storeURL];
    storeDescription = [descriptorCopy storeDescription];
    type = [storeDescription type];
    storeOptions = [descriptorCopy storeOptions];
    v35 = 0;
    [(NSPersistentStoreCoordinator *)v18 destroyPersistentStoreAtURL:storeURL4 withType:type options:storeOptions error:&v35];
    v23 = v35;

    if (!v23)
    {
      goto LABEL_9;
    }

    defaultManager = [descriptorCopy storeURL];
    NSLog(&cfstr_SFailedToStore.isa, "[TBPersistenceManager initWithManagedObjectModel:storeDescriptor:]", defaultManager);
  }

  else
  {
  }

LABEL_9:
  v24 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
  mergeByPropertyObjectTrumpMergePolicy = [MEMORY[0x277CBE460] mergeByPropertyObjectTrumpMergePolicy];
  [v24 setMergePolicy:mergeByPropertyObjectTrumpMergePolicy];

  [v24 setPersistentStoreCoordinator:v9->_persistenceCoordinator];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];
  [v24 setTransactionAuthor:processName];

  objc_storeStrong(&v9->_persistenceContext, v24);
  if (![descriptorCopy type])
  {
    v28 = [TBPersistenceRemoteStoreServer alloc];
    storeURL5 = [descriptorCopy storeURL];
    modelURL = [descriptorCopy modelURL];
    storeOptions2 = [descriptorCopy storeOptions];
    v32 = [(TBPersistenceRemoteStoreServer *)v28 initWithStoreURL:storeURL5 modelURL:modelURL options:storeOptions2];
    remoteStoreServer = v9->_remoteStoreServer;
    v9->_remoteStoreServer = v32;

    [(TBPersistenceRemoteStoreServer *)v9->_remoteStoreServer startListening];
    NSLog(&cfstr_SInitializedRe.isa, "[TBPersistenceManager initWithManagedObjectModel:storeDescriptor:]", v9->_remoteStoreServer);
  }

LABEL_12:
  return v9;
}

- (void)addPersistentStorage:(id)storage completionHandler:(id)handler
{
  handlerCopy = handler;
  persistenceCoordinator = self->_persistenceCoordinator;
  storeDescription = [storage storeDescription];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__TBPersistenceManager_addPersistentStorage_completionHandler___block_invoke;
  v10[3] = &unk_2789C7E58;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(NSPersistentStoreCoordinator *)persistenceCoordinator addPersistentStoreWithDescription:storeDescription completionHandler:v10];
}

void __63__TBPersistenceManager_addPersistentStorage_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = a3;
    NSLog(&cfstr_ErrorAddingPer.isa, v5, a2);
    v6 = *MEMORY[0x277CCA7E8];
    v12[0] = *MEMORY[0x277CCA450];
    v12[1] = v6;
    v13[0] = @"Failed to add persistent store.";
    v13[1] = v5;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v8 = [[TBError alloc] initWithType:104 userInfo:v7];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    v7 = 0;
    v10(v9, 0);
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isStoreCompatibleAtURL:(id)l withModel:(id)model
{
  modelCopy = model;
  v6 = *MEMORY[0x277CBE2E8];
  v12 = 0;
  v7 = [MEMORY[0x277CBE4D8] metadataForPersistentStoreOfType:v6 URL:l options:0 error:&v12];
  v8 = v12;
  v9 = v8;
  if (v8)
  {
    NSLog(&cfstr_SErrorRetrievi.isa, "+[TBPersistenceManager isStoreCompatibleAtURL:withModel:]", v8);
LABEL_7:
    v10 = 0;
    goto LABEL_4;
  }

  if (!v7)
  {
    NSLog(&cfstr_SFailedToGetMe.isa, "+[TBPersistenceManager isStoreCompatibleAtURL:withModel:]");
    goto LABEL_7;
  }

  v10 = [modelCopy isConfiguration:0 compatibleWithStoreMetadata:v7];
LABEL_4:

  return v10;
}

@end