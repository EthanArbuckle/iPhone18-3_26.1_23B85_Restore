@interface RCPersistentContainer
+ (id)storeDescriptionForURL:(id)a3 isXPCClient:(BOOL)a4 configuration:(id)a5;
- (RCPersistentContainer)initWithURL:(id)a3;
- (id)loadStore:(id)a3 error:(id *)a4;
- (id)newBackgroundModel;
- (id)newContextWithConcurrencyType:(unint64_t)a3;
- (id)storeDescriptionWithURL:(id)a3;
- (void)_configureContext:(id)a3 isViewContext:(BOOL)a4;
- (void)performBlockAndWaitWithBackgroundModel:(id)a3;
- (void)performBlockWithBackgroundModel:(id)a3;
@end

@implementation RCPersistentContainer

- (id)newBackgroundModel
{
  v3 = [RCSavedRecordingsModel alloc];
  v4 = [(RCPersistentContainer *)self newContextWithConcurrencyType:1];
  v5 = [(RCSavedRecordingsModel *)v3 initWithContext:v4];

  return v5;
}

- (RCPersistentContainer)initWithURL:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = RCPersistentContainer;
  v5 = [(RCPersistentContainer *)&v24 init];
  if (!v5)
  {
LABEL_10:
    v18 = v5;
    goto LABEL_11;
  }

  v6 = [MEMORY[0x277CBE450] rc_newObjectModel];
  v7 = [objc_alloc(MEMORY[0x277CBE4A0]) initWithName:@"VoiceMemos" managedObjectModel:v6];
  persistentContainer = v5->_persistentContainer;
  v5->_persistentContainer = v7;

  v23 = 0;
  v9 = [(RCPersistentContainer *)v5 loadStore:v4 error:&v23];
  v10 = v23;
  store = v5->_store;
  v5->_store = v9;

  if (v5->_store)
  {
    v12 = [MEMORY[0x277CCAC38] processInfo];
    v13 = [MEMORY[0x277CCA8D8] mainBundle];
    v14 = [v13 bundleIdentifier];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [v12 processName];
    }

    v19 = v16;

    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%d", v19, objc_msgSend(v12, "processIdentifier")];
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

- (id)storeDescriptionWithURL:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() storeDescriptionForURL:v3 isXPCClient:1 configuration:@"Cloud"];

  return v4;
}

- (id)loadStore:(id)a3 error:(id *)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(RCPersistentContainer *)self storeDescriptionWithURL:v6];
  v24[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v9 = [(RCPersistentContainer *)self persistentContainer];
  [v9 setPersistentStoreDescriptions:v8];

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__5;
  v22 = __Block_byref_object_dispose__5;
  v23 = 0;
  v10 = [(RCPersistentContainer *)self persistentContainer];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __41__RCPersistentContainer_loadStore_error___block_invoke;
  v17[3] = &unk_279E44678;
  v17[4] = &v18;
  [v10 loadPersistentStoresWithCompletionHandler:v17];

  if (a4)
  {
    *a4 = v19[5];
  }

  v11 = [(RCPersistentContainer *)self persistentContainer];
  v12 = [v11 persistentStoreCoordinator];
  v13 = [v7 URL];
  v14 = [v12 persistentStoreForURL:v13];

  _Block_object_dispose(&v18, 8);
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)newContextWithConcurrencyType:(unint64_t)a3
{
  persistentContainer = self->_persistentContainer;
  if (a3 == 2)
  {
    v5 = [(NSPersistentContainer *)persistentContainer viewContext];
    if (!self->_viewContextIsConfigured)
    {
      [(RCPersistentContainer *)self _configureContext:v5 isViewContext:1];
      self->_viewContextIsConfigured = 1;
    }
  }

  else
  {
    v5 = [(NSPersistentContainer *)persistentContainer newBackgroundContext];
    [(RCPersistentContainer *)self _configureContext:v5 isViewContext:0];
  }

  return v5;
}

- (void)_configureContext:(id)a3 isViewContext:(BOOL)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__RCPersistentContainer__configureContext_isViewContext___block_invoke;
  v8[3] = &unk_279E43E90;
  v9 = v6;
  v10 = self;
  v11 = a4;
  v7 = v6;
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

+ (id)storeDescriptionForURL:(id)a3 isXPCClient:(BOOL)a4 configuration:(id)a5
{
  v5 = a4;
  v7 = MEMORY[0x277CBE4E0];
  v8 = a5;
  v9 = [v7 persistentStoreDescriptionWithURL:a3];
  v10 = MEMORY[0x277CBEC38];
  [v9 setOption:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE1D8]];
  [v9 setOption:v10 forKey:*MEMORY[0x277CBE178]];
  [v9 setOption:*MEMORY[0x277CCA1A0] forKey:*MEMORY[0x277CBE240]];
  [v9 setOption:v10 forKey:*MEMORY[0x277CBE210]];
  [v9 setOption:v10 forKey:*MEMORY[0x277CBE268]];
  [v9 setOption:v10 forKey:*MEMORY[0x277CBE338]];
  [v9 setConfiguration:v8];

  if (v5)
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

- (void)performBlockWithBackgroundModel:(id)a3
{
  v4 = a3;
  v5 = [(RCPersistentContainer *)self newBackgroundModel];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__RCPersistentContainer_performBlockWithBackgroundModel___block_invoke;
  v8[3] = &unk_279E44380;
  v9 = v5;
  v10 = v4;
  v6 = v5;
  v7 = v4;
  [v6 performBlock:v8];
}

- (void)performBlockAndWaitWithBackgroundModel:(id)a3
{
  v4 = a3;
  v5 = [(RCPersistentContainer *)self newBackgroundModel];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__RCPersistentContainer_performBlockAndWaitWithBackgroundModel___block_invoke;
  v8[3] = &unk_279E44380;
  v9 = v5;
  v10 = v4;
  v6 = v5;
  v7 = v4;
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