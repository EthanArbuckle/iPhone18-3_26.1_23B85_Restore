@interface REMXPCDaemonControllerPerformerResolver_store
- (REMXPCDaemonControllerPerformerResolver_store)initWithStoreContainerToken:(id)a3;
- (void)resolveWithDaemon:(id)a3 reason:(id)a4 completion:(id)a5;
@end

@implementation REMXPCDaemonControllerPerformerResolver_store

- (REMXPCDaemonControllerPerformerResolver_store)initWithStoreContainerToken:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMXPCDaemonControllerPerformerResolver_store;
  v6 = [(REMXPCDaemonControllerPerformerResolver_store *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storeContainerToken, a3);
  }

  return v7;
}

- (void)resolveWithDaemon:(id)a3 reason:(id)a4 completion:(id)a5
{
  v8 = MEMORY[0x1E696AE30];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 processInfo];
  v14 = [v12 processName];

  v13 = [(REMXPCDaemonControllerPerformerResolver_store *)self storeContainerToken];
  [v11 storePerformerWithProcessName:v14 storeContainerToken:v13 reason:v10 completion:v9];
}

@end