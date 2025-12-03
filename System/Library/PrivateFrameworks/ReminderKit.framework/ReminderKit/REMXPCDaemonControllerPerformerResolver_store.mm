@interface REMXPCDaemonControllerPerformerResolver_store
- (REMXPCDaemonControllerPerformerResolver_store)initWithStoreContainerToken:(id)token;
- (void)resolveWithDaemon:(id)daemon reason:(id)reason completion:(id)completion;
@end

@implementation REMXPCDaemonControllerPerformerResolver_store

- (REMXPCDaemonControllerPerformerResolver_store)initWithStoreContainerToken:(id)token
{
  tokenCopy = token;
  v9.receiver = self;
  v9.super_class = REMXPCDaemonControllerPerformerResolver_store;
  v6 = [(REMXPCDaemonControllerPerformerResolver_store *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storeContainerToken, token);
  }

  return v7;
}

- (void)resolveWithDaemon:(id)daemon reason:(id)reason completion:(id)completion
{
  v8 = MEMORY[0x1E696AE30];
  completionCopy = completion;
  reasonCopy = reason;
  daemonCopy = daemon;
  processInfo = [v8 processInfo];
  processName = [processInfo processName];

  storeContainerToken = [(REMXPCDaemonControllerPerformerResolver_store *)self storeContainerToken];
  [daemonCopy storePerformerWithProcessName:processName storeContainerToken:storeContainerToken reason:reasonCopy completion:completionCopy];
}

@end