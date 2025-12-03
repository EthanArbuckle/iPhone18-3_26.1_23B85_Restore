@interface WFRemoteActionUserInterface
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)respondsToSelector:(SEL)selector;
- (WFRemoteActionUserInterface)initWithUserInterfaceType:(id)type listenerEndpoint:(id)endpoint interface:(id)interface;
- (id)forwardingTargetForSelector:(SEL)selector;
@end

@implementation WFRemoteActionUserInterface

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = WFRemoteActionUserInterface;
  if ([(WFRemoteActionUserInterface *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    remoteUserInterface = [(WFRemoteActionUserInterface *)self remoteUserInterface];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  remoteUserInterface = [(WFRemoteActionUserInterface *)self remoteUserInterface];
  v6 = [remoteUserInterface conformsToProtocol:protocolCopy];

  return v6;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  v6.receiver = self;
  v6.super_class = WFRemoteActionUserInterface;
  if ([(WFRemoteActionUserInterface *)&v6 respondsToSelector:selector])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(WFRemoteActionUserInterface *)self remoteUserInterface];
  }

  return selfCopy;
}

- (WFRemoteActionUserInterface)initWithUserInterfaceType:(id)type listenerEndpoint:(id)endpoint interface:(id)interface
{
  typeCopy = type;
  endpointCopy = endpoint;
  interfaceCopy = interface;
  if (typeCopy)
  {
    if (endpointCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteActionUserInterface.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"listenerEndpoint"}];

    if (interfaceCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFRemoteActionUserInterface.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"userInterfaceType"}];

  if (!endpointCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (interfaceCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFRemoteActionUserInterface.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"interface"}];

LABEL_4:
  v26.receiver = self;
  v26.super_class = WFRemoteActionUserInterface;
  v13 = [(WFRemoteActionUserInterface *)&v26 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_userInterfaceType, type);
    v15 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:endpointCopy];
    [v15 setRemoteObjectInterface:interfaceCopy];
    objc_initWeak(&location, v14);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __84__WFRemoteActionUserInterface_initWithUserInterfaceType_listenerEndpoint_interface___block_invoke;
    v23[3] = &unk_1E837B8F8;
    objc_copyWeak(&v24, &location);
    [v15 setInterruptionHandler:v23];
    [v15 resume];
    objc_storeStrong(&v14->_connection, v15);
    remoteObjectProxy = [v15 remoteObjectProxy];
    remoteUserInterface = v14->_remoteUserInterface;
    v14->_remoteUserInterface = remoteObjectProxy;

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