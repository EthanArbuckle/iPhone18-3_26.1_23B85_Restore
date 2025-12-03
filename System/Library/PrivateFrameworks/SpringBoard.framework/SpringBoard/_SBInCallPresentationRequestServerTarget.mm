@interface _SBInCallPresentationRequestServerTarget
+ (_SBInCallPresentationRequestServerTarget)currentTarget;
- (BSServiceConnection)connection;
- (SBSInCallPresentationClientToServerInterface)proxyInterface;
- (_SBInCallPresentationRequestServerTarget)initWithConnection:(id)connection proxyInterface:(id)interface;
- (void)_performBlock:(id)block;
- (void)presentWithConfiguration:(id)configuration completion:(id)completion;
@end

@implementation _SBInCallPresentationRequestServerTarget

- (_SBInCallPresentationRequestServerTarget)initWithConnection:(id)connection proxyInterface:(id)interface
{
  connectionCopy = connection;
  interfaceCopy = interface;
  v13.receiver = self;
  v13.super_class = _SBInCallPresentationRequestServerTarget;
  v8 = [(_SBInCallPresentationRequestServerTarget *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_connection, connectionCopy);
    objc_storeWeak(&v9->_proxyInterface, interfaceCopy);
    uUID = [MEMORY[0x277CCAD78] UUID];
    clientIdentifier = v9->_clientIdentifier;
    v9->_clientIdentifier = uUID;
  }

  return v9;
}

- (void)presentWithConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80___SBInCallPresentationRequestServerTarget_presentWithConfiguration_completion___block_invoke;
  v10[3] = &unk_2783AA1E8;
  v10[4] = self;
  v11 = configurationCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = configurationCopy;
  [(_SBInCallPresentationRequestServerTarget *)self _performBlock:v10];
}

+ (_SBInCallPresentationRequestServerTarget)currentTarget
{
  if (_SBInCallPresentationRequestServerTargetThreadDictionaryKey_sOnceToken != -1)
  {
    +[_SBInCallPresentationRequestServerTarget currentTarget];
  }

  v3 = _SBInCallPresentationRequestServerTargetThreadDictionaryKey_sSBInCallPresentationRequestServerTargetThreadDictionaryKey;

  return pthread_getspecific(v3);
}

- (void)_performBlock:(id)block
{
  blockCopy = block;
  if (_SBInCallPresentationRequestServerTargetThreadDictionaryKey_sOnceToken != -1)
  {
    +[_SBInCallPresentationRequestServerTarget currentTarget];
  }

  pthread_setspecific(_SBInCallPresentationRequestServerTargetThreadDictionaryKey_sSBInCallPresentationRequestServerTargetThreadDictionaryKey, self);
  blockCopy[2]();
  if (_SBInCallPresentationRequestServerTargetThreadDictionaryKey_sOnceToken != -1)
  {
    +[_SBInCallPresentationRequestServerTarget currentTarget];
  }

  pthread_setspecific(_SBInCallPresentationRequestServerTargetThreadDictionaryKey_sSBInCallPresentationRequestServerTargetThreadDictionaryKey, 0);
}

- (BSServiceConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (SBSInCallPresentationClientToServerInterface)proxyInterface
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyInterface);

  return WeakRetained;
}

@end