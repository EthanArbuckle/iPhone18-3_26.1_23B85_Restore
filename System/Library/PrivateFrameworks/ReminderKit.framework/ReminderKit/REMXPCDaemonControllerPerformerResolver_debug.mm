@interface REMXPCDaemonControllerPerformerResolver_debug
- (REMXPCDaemonControllerPerformerResolver_debug)initWithStoreContainerToken:(id)token;
- (void)resolveWithDaemon:(id)daemon reason:(id)reason completion:(id)completion;
@end

@implementation REMXPCDaemonControllerPerformerResolver_debug

- (REMXPCDaemonControllerPerformerResolver_debug)initWithStoreContainerToken:(id)token
{
  tokenCopy = token;
  v9.receiver = self;
  v9.super_class = REMXPCDaemonControllerPerformerResolver_debug;
  v6 = [(REMXPCDaemonControllerPerformerResolver_debug *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storeContainerToken, token);
  }

  return v7;
}

- (void)resolveWithDaemon:(id)daemon reason:(id)reason completion:(id)completion
{
  completionCopy = completion;
  reasonCopy = reason;
  daemonCopy = daemon;
  storeContainerToken = [(REMXPCDaemonControllerPerformerResolver_debug *)self storeContainerToken];
  [daemonCopy debugPerformerWithStoreContainerToken:storeContainerToken reason:reasonCopy completion:completionCopy];
}

@end