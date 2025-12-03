@interface REMXPCDaemonControllerPerformerResolver_changeTracking
- (REMXPCDaemonControllerPerformerResolver_changeTracking)initWithStoreContainerToken:(id)token;
- (void)resolveWithDaemon:(id)daemon reason:(id)reason completion:(id)completion;
@end

@implementation REMXPCDaemonControllerPerformerResolver_changeTracking

- (REMXPCDaemonControllerPerformerResolver_changeTracking)initWithStoreContainerToken:(id)token
{
  tokenCopy = token;
  v9.receiver = self;
  v9.super_class = REMXPCDaemonControllerPerformerResolver_changeTracking;
  v6 = [(REMXPCDaemonControllerPerformerResolver_changeTracking *)&v9 init];
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
  storeContainerToken = [(REMXPCDaemonControllerPerformerResolver_changeTracking *)self storeContainerToken];
  [daemonCopy changeTrackingPerformerWithStoreContainerToken:storeContainerToken reason:reasonCopy completion:completionCopy];
}

@end