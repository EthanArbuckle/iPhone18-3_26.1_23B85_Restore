@interface SYNotesActivationClient
- (SYNotesActivationClient)init;
- (void)_ensureConnection;
- (void)activateNotesWithUserActivity:(id)activity completion:(id)completion;
@end

@implementation SYNotesActivationClient

- (SYNotesActivationClient)init
{
  v7.receiver = self;
  v7.super_class = SYNotesActivationClient;
  v2 = [(SYNotesActivationClient *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.synapse.ActivationClient", v3);
    clientQueue = v2->__clientQueue;
    v2->__clientQueue = v4;
  }

  return v2;
}

- (void)activateNotesWithUserActivity:(id)activity completion:(id)completion
{
  completionCopy = completion;
  v7 = SYActivationContextForUserActivity(activity);
  _clientQueue = [(SYNotesActivationClient *)self _clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__SYNotesActivationClient_activateNotesWithUserActivity_completion___block_invoke;
  block[3] = &unk_27856BAB8;
  v12 = v7;
  v13 = completionCopy;
  block[4] = self;
  v9 = v7;
  v10 = completionCopy;
  dispatch_async(_clientQueue, block);
}

void __68__SYNotesActivationClient_activateNotesWithUserActivity_completion___block_invoke(uint64_t a1)
{
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __68__SYNotesActivationClient_activateNotesWithUserActivity_completion___block_invoke_2;
  v9 = &unk_27856BCB0;
  v2 = *(a1 + 48);
  v10 = *(a1 + 32);
  v11 = v2;
  v3 = MEMORY[0x22AA6A360](&v6);
  [*(a1 + 32) _ensureConnection];
  v4 = [*(a1 + 32) _connection];
  v5 = [v4 remoteObjectProxyWithErrorHandler:v3];

  [v5 activateNotesWithContext:*(a1 + 40) completion:v3];
}

uint64_t __68__SYNotesActivationClient_activateNotesWithUserActivity_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) _connection];
  [v3 invalidate];

  v4 = *(a1 + 32);

  return [v4 _setConnection:0];
}

- (void)_ensureConnection
{
  _connection = [(SYNotesActivationClient *)self _connection];

  if (!_connection)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.synapse.notes-activation-service" options:0];
    [(SYNotesActivationClient *)self _setConnection:v4];

    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2838F4608];
    _connection2 = [(SYNotesActivationClient *)self _connection];
    [_connection2 setRemoteObjectInterface:v5];

    _connection3 = [(SYNotesActivationClient *)self _connection];
    _clientQueue = [(SYNotesActivationClient *)self _clientQueue];
    [_connection3 _setQueue:_clientQueue];

    _connection4 = [(SYNotesActivationClient *)self _connection];
    [_connection4 resume];
  }
}

@end