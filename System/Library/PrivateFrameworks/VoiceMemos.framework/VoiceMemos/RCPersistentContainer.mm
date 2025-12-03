@interface RCPersistentContainer
+ (id)storeDescriptionForURL:(id)l isXPCClient:(BOOL)client configuration:(id)configuration;
- (RCPersistentContainer)initWithURL:(id)l;
- (id)loadStore:(id)store error:(id *)error;
- (id)newBackgroundModel;
- (id)newContextWithConcurrencyType:(unint64_t)type;
- (id)storeDescriptionWithURL:(id)l;
- (void)_configureContext:(id)context isViewContext:(BOOL)viewContext;
- (void)performBlockAndWaitWithBackgroundModel:(id)model;
- (void)performBlockWithBackgroundModel:(id)model;
@end

@implementation RCPersistentContainer

- (id)newBackgroundModel
{
  v3 = [RCSavedRecordingsModel alloc];
  v4 = [(RCPersistentContainer *)self newContextWithConcurrencyType:1];
  v5 = [(RCSavedRecordingsModel *)v3 initWithContext:v4];

  return v5;
}

- (RCPersistentContainer)initWithURL:(id)l
{
  lCopy = l;
  v24.receiver = self;
  v24.super_class = RCPersistentContainer;
  v5 = [(RCPersistentContainer *)&v24 init];
  if (!v5)
  {
LABEL_10:
    v18 = v5;
    goto LABEL_11;
  }

  rc_newObjectModel = [MEMORY[0x277CBE450] rc_newObjectModel];
  v7 = [objc_alloc(MEMORY[0x277CBE4A0]) initWithName:@"VoiceMemos" managedObjectModel:rc_newObjectModel];
  persistentContainer = v5->_persistentContainer;
  v5->_persistentContainer = v7;

  v23 = 0;
  v9 = [(RCPersistentContainer *)v5 loadStore:lCopy error:&v23];
  v10 = v23;
  store = v5->_store;
  v5->_store = v9;

  if (v5->_store)
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v15 = bundleIdentifier;
    if (bundleIdentifier)
    {
      processName = bundleIdentifier;
    }

    else
    {
      processName = [processInfo processName];
    }

    v19 = processName;

    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%d", v19, objc_msgSend(processInfo, "processIdentifier")];
    transactionAuthor = v5->_transactionAuthor;
    v5->_transactionAuthor = v20;

    goto LABEL_10;
  }

  v17 = OSLogForCategory(@"Default");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    [(RCPersistentContainer *)v10 initWithURL:v17];
  }

  v18 = 0;
LABEL_11:

  return v18;
}

- (id)storeDescriptionWithURL:(id)l
{
  lCopy = l;
  v4 = [objc_opt_class() storeDescriptionForURL:lCopy isXPCClient:1 configuration:@"Cloud"];

  return v4;
}

- (id)loadStore:(id)store error:(id *)error
{
  v24[1] = *MEMORY[0x277D85DE8];
  storeCopy = store;
  v7 = [(RCPersistentContainer *)self storeDescriptionWithURL:storeCopy];
  v24[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  persistentContainer = [(RCPersistentContainer *)self persistentContainer];
  [persistentContainer setPersistentStoreDescriptions:v8];

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__5;
  v22 = __Block_byref_object_dispose__5;
  v23 = 0;
  persistentContainer2 = [(RCPersistentContainer *)self persistentContainer];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __41__RCPersistentContainer_loadStore_error___block_invoke;
  v17[3] = &unk_279E44678;
  v17[4] = &v18;
  [persistentContainer2 loadPersistentStoresWithCompletionHandler:v17];

  if (error)
  {
    *error = v19[5];
  }

  persistentContainer3 = [(RCPersistentContainer *)self persistentContainer];
  persistentStoreCoordinator = [persistentContainer3 persistentStoreCoordinator];
  v13 = [v7 URL];
  v14 = [persistentStoreCoordinator persistentStoreForURL:v13];

  _Block_object_dispose(&v18, 8);
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)newContextWithConcurrencyType:(unint64_t)type
{
  persistentContainer = self->_persistentContainer;
  if (type == 2)
  {
    viewContext = [(NSPersistentContainer *)persistentContainer viewContext];
    if (!self->_viewContextIsConfigured)
    {
      [(RCPersistentContainer *)self _configureContext:viewContext isViewContext:1];
      self->_viewContextIsConfigured = 1;
    }
  }

  else
  {
    viewContext = [(NSPersistentContainer *)persistentContainer newBackgroundContext];
    [(RCPersistentContainer *)self _configureContext:viewContext isViewContext:0];
  }

  return viewContext;
}

- (void)_configureContext:(id)context isViewContext:(BOOL)viewContext
{
  contextCopy = context;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__RCPersistentContainer__configureContext_isViewContext___block_invoke;
  v8[3] = &unk_279E43E90;
  v9 = contextCopy;
  selfCopy = self;
  viewContextCopy = viewContext;
  v7 = contextCopy;
  [v7 performBlockAndWait:v8];
}

uint64_t __57__RCPersistentContainer__configureContext_isViewContext___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setTransactionAuthor:*(*(a1 + 40) + 24)];
  [*(a1 + 32) setMergePolicy:*MEMORY[0x277CBE1C8]];
  if (*(a1 + 48))
  {
    v2 = @"view";
  }

  else
  {
    v2 = @"background";
  }

  v3 = *(a1 + 32);

  return [v3 setName:v2];
}

+ (id)storeDescriptionForURL:(id)l isXPCClient:(BOOL)client configuration:(id)configuration
{
  clientCopy = client;
  v7 = MEMORY[0x277CBE4E0];
  configurationCopy = configuration;
  v9 = [v7 persistentStoreDescriptionWithURL:l];
  v10 = MEMORY[0x277CBEC38];
  [v9 setOption:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE1D8]];
  [v9 setOption:v10 forKey:*MEMORY[0x277CBE178]];
  [v9 setOption:*MEMORY[0x277CCA1A0] forKey:*MEMORY[0x277CBE240]];
  [v9 setOption:v10 forKey:*MEMORY[0x277CBE210]];
  [v9 setOption:v10 forKey:*MEMORY[0x277CBE268]];
  [v9 setOption:v10 forKey:*MEMORY[0x277CBE338]];
  [v9 setConfiguration:configurationCopy];

  if (clientCopy)
  {
    [v9 setOption:@"com.apple.voicememod.datastore.Cloud" forKey:*MEMORY[0x277CBE340]];
    [v9 setOption:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE328]];
    v11 = MEMORY[0x277CBE348];
  }

  else
  {
    v11 = MEMORY[0x277CBE2E8];
  }

  [v9 setType:*v11];

  return v9;
}

- (void)performBlockWithBackgroundModel:(id)model
{
  modelCopy = model;
  newBackgroundModel = [(RCPersistentContainer *)self newBackgroundModel];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__RCPersistentContainer_performBlockWithBackgroundModel___block_invoke;
  v8[3] = &unk_279E44380;
  v9 = newBackgroundModel;
  v10 = modelCopy;
  v6 = newBackgroundModel;
  v7 = modelCopy;
  [v6 performBlock:v8];
}

- (void)performBlockAndWaitWithBackgroundModel:(id)model
{
  modelCopy = model;
  newBackgroundModel = [(RCPersistentContainer *)self newBackgroundModel];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__RCPersistentContainer_performBlockAndWaitWithBackgroundModel___block_invoke;
  v8[3] = &unk_279E44380;
  v9 = newBackgroundModel;
  v10 = modelCopy;
  v6 = newBackgroundModel;
  v7 = modelCopy;
  [v6 performBlockAndWait:v8];
}

- (void)initWithURL:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[RCPersistentContainer initWithURL:]";
  v5 = 2112;
  v6 = a1;
  _os_log_fault_impl(&dword_272442000, a2, OS_LOG_TYPE_FAULT, "%s -- Failed to load persistent store, error = %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end