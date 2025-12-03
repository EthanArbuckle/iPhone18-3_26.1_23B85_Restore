@interface _SBRemoteAlertHandleServerTarget
+ (_SBRemoteAlertHandleServerTarget)currentTarget;
- (BSServiceConnection)connection;
- (SBSRemoteAlertHandleServiceServerInterface)proxyInterface;
- (_SBRemoteAlertHandleServerTarget)initWithConnection:(id)connection proxyInterface:(id)interface;
- (id)createRemoteAlertHandleContextWithDefinition:(id)definition configurationContext:(id)context;
- (id)remoteAlertHandleContextsForDefinition:(id)definition allowsCreationValue:(id)value configurationContext:(id)context;
- (void)_performBlock:(id)block;
- (void)activateRemoteAlertHandleWithID:(id)d activationContext:(id)context;
- (void)invalidateRemoteAlertHandleWithID:(id)d;
@end

@implementation _SBRemoteAlertHandleServerTarget

- (_SBRemoteAlertHandleServerTarget)initWithConnection:(id)connection proxyInterface:(id)interface
{
  connectionCopy = connection;
  interfaceCopy = interface;
  v11.receiver = self;
  v11.super_class = _SBRemoteAlertHandleServerTarget;
  v8 = [(_SBRemoteAlertHandleServerTarget *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_connection, connectionCopy);
    objc_storeWeak(&v9->_proxyInterface, interfaceCopy);
  }

  return v9;
}

- (id)remoteAlertHandleContextsForDefinition:(id)definition allowsCreationValue:(id)value configurationContext:(id)context
{
  definitionCopy = definition;
  valueCopy = value;
  contextCopy = context;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__133;
  v25 = __Block_byref_object_dispose__133;
  v26 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __116___SBRemoteAlertHandleServerTarget_remoteAlertHandleContextsForDefinition_allowsCreationValue_configurationContext___block_invoke;
  v16[3] = &unk_2783BDC20;
  v20 = &v21;
  v16[4] = self;
  v11 = definitionCopy;
  v17 = v11;
  v12 = valueCopy;
  v18 = v12;
  v13 = contextCopy;
  v19 = v13;
  [(_SBRemoteAlertHandleServerTarget *)self _performBlock:v16];
  v14 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v14;
}

- (id)createRemoteAlertHandleContextWithDefinition:(id)definition configurationContext:(id)context
{
  definitionCopy = definition;
  contextCopy = context;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__133;
  v20 = __Block_byref_object_dispose__133;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __102___SBRemoteAlertHandleServerTarget_createRemoteAlertHandleContextWithDefinition_configurationContext___block_invoke;
  v12[3] = &unk_2783B24A0;
  v15 = &v16;
  v12[4] = self;
  v8 = definitionCopy;
  v13 = v8;
  v9 = contextCopy;
  v14 = v9;
  [(_SBRemoteAlertHandleServerTarget *)self _performBlock:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

- (void)activateRemoteAlertHandleWithID:(id)d activationContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86___SBRemoteAlertHandleServerTarget_activateRemoteAlertHandleWithID_activationContext___block_invoke;
  v10[3] = &unk_2783A8ED8;
  v10[4] = self;
  v11 = dCopy;
  v12 = contextCopy;
  v8 = contextCopy;
  v9 = dCopy;
  [(_SBRemoteAlertHandleServerTarget *)self _performBlock:v10];
}

- (void)invalidateRemoteAlertHandleWithID:(id)d
{
  dCopy = d;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70___SBRemoteAlertHandleServerTarget_invalidateRemoteAlertHandleWithID___block_invoke;
  v6[3] = &unk_2783A92D8;
  v6[4] = self;
  v7 = dCopy;
  v5 = dCopy;
  [(_SBRemoteAlertHandleServerTarget *)self _performBlock:v6];
}

+ (_SBRemoteAlertHandleServerTarget)currentTarget
{
  if (_SBRemoteAlertHandleServerTargetThreadDictionaryKey_sOnceToken != -1)
  {
    +[_SBRemoteAlertHandleServerTarget currentTarget];
  }

  v3 = _SBRemoteAlertHandleServerTargetThreadDictionaryKey_sSBRemoteAlertHandleServerTargetThreadDictionaryKey;

  return pthread_getspecific(v3);
}

- (void)_performBlock:(id)block
{
  blockCopy = block;
  if (_SBRemoteAlertHandleServerTargetThreadDictionaryKey_sOnceToken != -1)
  {
    +[_SBRemoteAlertHandleServerTarget currentTarget];
  }

  pthread_setspecific(_SBRemoteAlertHandleServerTargetThreadDictionaryKey_sSBRemoteAlertHandleServerTargetThreadDictionaryKey, self);
  blockCopy[2]();
  if (_SBRemoteAlertHandleServerTargetThreadDictionaryKey_sOnceToken != -1)
  {
    +[_SBRemoteAlertHandleServerTarget currentTarget];
  }

  pthread_setspecific(_SBRemoteAlertHandleServerTargetThreadDictionaryKey_sSBRemoteAlertHandleServerTargetThreadDictionaryKey, 0);
}

- (BSServiceConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (SBSRemoteAlertHandleServiceServerInterface)proxyInterface
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyInterface);

  return WeakRetained;
}

@end