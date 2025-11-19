@interface TBPersistenceRemoteStoreServer
- (TBPersistenceRemoteStoreServer)initWithStoreURL:(id)a3 modelURL:(id)a4 options:(id)a5;
- (void)startListening;
@end

@implementation TBPersistenceRemoteStoreServer

- (TBPersistenceRemoteStoreServer)initWithStoreURL:(id)a3 modelURL:(id)a4 options:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TBPersistenceRemoteStoreServer;
  v12 = [(TBPersistenceRemoteStoreServer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_storeURL, a3);
    objc_storeStrong(&v13->_modelURL, a4);
    objc_storeStrong(&v13->_serverOptions, a5);
  }

  return v13;
}

- (void)startListening
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_opt_new();
  v5 = objc_alloc(MEMORY[0x277CBE510]);
  v6 = [(TBPersistenceRemoteStoreServer *)self storeURL];
  v7 = [(TBPersistenceRemoteStoreServer *)self modelURL];
  v8 = [(TBPersistenceRemoteStoreServer *)self serverOptions];
  v9 = [v5 initForStoreWithURL:v6 usingModelAtURL:v7 options:v8 policy:v4];
  [(TBPersistenceRemoteStoreServer *)self setXpcStoreServer:v9];

  v10 = [(TBPersistenceRemoteStoreServer *)self serverOptions];
  NSLog(&cfstr_SStartedListen.isa, "[TBPersistenceRemoteStoreServer startListening]", v10);

  objc_autoreleasePoolPop(v3);
  v11 = [(TBPersistenceRemoteStoreServer *)self xpcStoreServer];
  [v11 startListening];
}

@end