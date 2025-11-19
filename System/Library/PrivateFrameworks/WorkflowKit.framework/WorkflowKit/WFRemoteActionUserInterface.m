@interface WFRemoteActionUserInterface
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (WFRemoteActionUserInterface)initWithUserInterfaceType:(id)a3 listenerEndpoint:(id)a4 interface:(id)a5;
- (id)forwardingTargetForSelector:(SEL)a3;
@end

@implementation WFRemoteActionUserInterface

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = WFRemoteActionUserInterface;
  if ([(WFRemoteActionUserInterface *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(WFRemoteActionUserInterface *)self remoteUserInterface];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (BOOL)conformsToProtocol:(id)a3
{
  v4 = a3;
  v5 = [(WFRemoteActionUserInterface *)self remoteUserInterface];
  v6 = [v5 conformsToProtocol:v4];

  return v6;
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  v6.receiver = self;
  v6.super_class = WFRemoteActionUserInterface;
  if ([(WFRemoteActionUserInterface *)&v6 respondsToSelector:a3])
  {
    v4 = self;
  }

  else
  {
    v4 = [(WFRemoteActionUserInterface *)self remoteUserInterface];
  }

  return v4;
}

- (WFRemoteActionUserInterface)initWithUserInterfaceType:(id)a3 listenerEndpoint:(id)a4 interface:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_8:
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"WFRemoteActionUserInterface.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"listenerEndpoint"}];

    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"WFRemoteActionUserInterface.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"userInterfaceType"}];

  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v12)
  {
    goto LABEL_4;
  }

LABEL_9:
  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"WFRemoteActionUserInterface.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"interface"}];

LABEL_4:
  v26.receiver = self;
  v26.super_class = WFRemoteActionUserInterface;
  v13 = [(WFRemoteActionUserInterface *)&v26 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_userInterfaceType, a3);
    v15 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v11];
    [v15 setRemoteObjectInterface:v12];
    objc_initWeak(&location, v14);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __84__WFRemoteActionUserInterface_initWithUserInterfaceType_listenerEndpoint_interface___block_invoke;
    v23[3] = &unk_1E837B8F8;
    objc_copyWeak(&v24, &location);
    [v15 setInterruptionHandler:v23];
    [v15 resume];
    objc_storeStrong(&v14->_connection, v15);
    v16 = [v15 remoteObjectProxy];
    remoteUserInterface = v14->_remoteUserInterface;
    v14->_remoteUserInterface = v16;

    v18 = v14;
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v14;
}

void __84__WFRemoteActionUserInterface_initWithUserInterfaceType_listenerEndpoint_interface___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained onInterfaceInterruption];

  if (v1)
  {
    v2 = [WeakRetained onInterfaceInterruption];
    v2[2]();
  }
}

@end