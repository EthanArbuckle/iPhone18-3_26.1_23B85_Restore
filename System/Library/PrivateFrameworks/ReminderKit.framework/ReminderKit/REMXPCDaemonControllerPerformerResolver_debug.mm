@interface REMXPCDaemonControllerPerformerResolver_debug
- (REMXPCDaemonControllerPerformerResolver_debug)initWithStoreContainerToken:(id)a3;
- (void)resolveWithDaemon:(id)a3 reason:(id)a4 completion:(id)a5;
@end

@implementation REMXPCDaemonControllerPerformerResolver_debug

- (REMXPCDaemonControllerPerformerResolver_debug)initWithStoreContainerToken:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMXPCDaemonControllerPerformerResolver_debug;
  v6 = [(REMXPCDaemonControllerPerformerResolver_debug *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storeContainerToken, a3);
  }

  return v7;
}

- (void)resolveWithDaemon:(id)a3 reason:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(REMXPCDaemonControllerPerformerResolver_debug *)self storeContainerToken];
  [v10 debugPerformerWithStoreContainerToken:v11 reason:v9 completion:v8];
}

@end