@interface TBPersistenceRemoteStoreServer
- (TBPersistenceRemoteStoreServer)initWithStoreURL:(id)l modelURL:(id)rL options:(id)options;
- (void)startListening;
@end

@implementation TBPersistenceRemoteStoreServer

- (TBPersistenceRemoteStoreServer)initWithStoreURL:(id)l modelURL:(id)rL options:(id)options
{
  lCopy = l;
  rLCopy = rL;
  optionsCopy = options;
  v15.receiver = self;
  v15.super_class = TBPersistenceRemoteStoreServer;
  v12 = [(TBPersistenceRemoteStoreServer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_storeURL, l);
    objc_storeStrong(&v13->_modelURL, rL);
    objc_storeStrong(&v13->_serverOptions, options);
  }

  return v13;
}

- (void)startListening
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_opt_new();
  v5 = objc_alloc(MEMORY[0x277CBE510]);
  storeURL = [(TBPersistenceRemoteStoreServer *)self storeURL];
  modelURL = [(TBPersistenceRemoteStoreServer *)self modelURL];
  serverOptions = [(TBPersistenceRemoteStoreServer *)self serverOptions];
  v9 = [v5 initForStoreWithURL:storeURL usingModelAtURL:modelURL options:serverOptions policy:v4];
  [(TBPersistenceRemoteStoreServer *)self setXpcStoreServer:v9];

  serverOptions2 = [(TBPersistenceRemoteStoreServer *)self serverOptions];
  NSLog(&cfstr_SStartedListen.isa, "[TBPersistenceRemoteStoreServer startListening]", serverOptions2);

  objc_autoreleasePoolPop(v3);
  xpcStoreServer = [(TBPersistenceRemoteStoreServer *)self xpcStoreServer];
  [xpcStoreServer startListening];
}

@end