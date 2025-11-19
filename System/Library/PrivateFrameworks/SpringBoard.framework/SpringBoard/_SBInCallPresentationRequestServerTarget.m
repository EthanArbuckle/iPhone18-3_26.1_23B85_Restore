@interface _SBInCallPresentationRequestServerTarget
+ (_SBInCallPresentationRequestServerTarget)currentTarget;
- (BSServiceConnection)connection;
- (SBSInCallPresentationClientToServerInterface)proxyInterface;
- (_SBInCallPresentationRequestServerTarget)initWithConnection:(id)a3 proxyInterface:(id)a4;
- (void)_performBlock:(id)a3;
- (void)presentWithConfiguration:(id)a3 completion:(id)a4;
@end

@implementation _SBInCallPresentationRequestServerTarget

- (_SBInCallPresentationRequestServerTarget)initWithConnection:(id)a3 proxyInterface:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = _SBInCallPresentationRequestServerTarget;
  v8 = [(_SBInCallPresentationRequestServerTarget *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_connection, v6);
    objc_storeWeak(&v9->_proxyInterface, v7);
    v10 = [MEMORY[0x277CCAD78] UUID];
    clientIdentifier = v9->_clientIdentifier;
    v9->_clientIdentifier = v10;
  }

  return v9;
}

- (void)presentWithConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80___SBInCallPresentationRequestServerTarget_presentWithConfiguration_completion___block_invoke;
  v10[3] = &unk_2783AA1E8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)_performBlock:(id)a3
{
  v4 = a3;
  if (_SBInCallPresentationRequestServerTargetThreadDictionaryKey_sOnceToken != -1)
  {
    +[_SBInCallPresentationRequestServerTarget currentTarget];
  }

  pthread_setspecific(_SBInCallPresentationRequestServerTargetThreadDictionaryKey_sSBInCallPresentationRequestServerTargetThreadDictionaryKey, self);
  v4[2]();
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