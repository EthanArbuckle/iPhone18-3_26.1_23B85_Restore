@interface RPClient
+ (void)primaryAccountSignedIn;
+ (void)primaryAccountSignedOut;
- (RPClient)init;
- (RPClient)initWithUserProvider:(id)provider;
- (id)_XPCConnectionWithMachServiceName:(id)name options:(unint64_t)options;
- (id)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)activateAssertionWithIdentifier:(id)identifier;
- (void)addOrUpdateIdentity:(id)identity source:(int)source completion:(id)completion;
- (void)clientCreateDeviceMappingInternal:(int)internal applicationService:(id)service deviceID:(id)d endpointID:(id)iD completion:(id)completion;
- (void)clientExchangeQUICPublicKeyFor:(id)for publicKey:(id)key completion:(id)completion;
- (void)diagnosticCommand:(id)command params:(id)params completion:(id)completion;
- (void)diagnosticLogControl:(id)control completion:(id)completion;
- (void)diagnosticShow:(id)show level:(int)level completion:(id)completion;
- (void)getIdentitiesWithFlags:(unsigned int)flags completion:(id)completion;
- (void)invalidate;
- (void)primaryAccountSignedInWithCompletion:(id)completion;
- (void)primaryAccountSignedOutWithCompletion:(id)completion;
- (void)regenerateSelfIdentity:(id)identity withCompletion:(id)completion;
- (void)regenerateTemporarySelfIdentityWithCompletion:(id)completion;
- (void)removeAdHocPairedIdentity:(id)identity completion:(id)completion;
- (void)removeSessionPairedIdentity:(id)identity completion:(id)completion;
- (void)setAutoMapping:(BOOL)mapping completion:(id)completion;
@end

@implementation RPClient

+ (void)primaryAccountSignedIn
{
  if (gLogCategory_RPClient <= 30 && (gLogCategory_RPClient != -1 || _LogCategory_Initialize()))
  {
    +[RPClient primaryAccountSignedIn];
  }

  v2 = objc_alloc_init(RPClient);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__RPClient_primaryAccountSignedIn__block_invoke;
  v3[3] = &unk_1E7C92D58;
  v3[4] = v2;
  [(RPClient *)v2 primaryAccountSignedInWithCompletion:v3];
}

void __34__RPClient_primaryAccountSignedIn__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    v3 = 90;
  }

  else
  {
    v3 = 30;
  }

  if (v3 >= gLogCategory_RPClient && (gLogCategory_RPClient != -1 || _LogCategory_Initialize()))
  {
    v4 = v5;
    LogPrintF();
  }

  [*(a1 + 32) invalidate];
}

+ (void)primaryAccountSignedOut
{
  if (gLogCategory_RPClient <= 30 && (gLogCategory_RPClient != -1 || _LogCategory_Initialize()))
  {
    +[RPClient primaryAccountSignedOut];
  }

  v2 = objc_alloc_init(RPClient);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__RPClient_primaryAccountSignedOut__block_invoke;
  v3[3] = &unk_1E7C92D58;
  v3[4] = v2;
  [(RPClient *)v2 primaryAccountSignedOutWithCompletion:v3];
}

void __35__RPClient_primaryAccountSignedOut__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    v3 = 90;
  }

  else
  {
    v3 = 30;
  }

  if (v3 >= gLogCategory_RPClient && (gLogCategory_RPClient != -1 || _LogCategory_Initialize()))
  {
    v4 = v5;
    LogPrintF();
  }

  [*(a1 + 32) invalidate];
}

- (RPClient)init
{
  v3 = objc_alloc_init(RPSignedInUserProvider);
  v4 = [(RPClient *)self initWithUserProvider:v3];

  return v4;
}

- (RPClient)initWithUserProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = RPClient;
  v6 = [(RPClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v7->_type = 1;
    objc_storeStrong(&v7->_userProvider, provider);
  }

  return v7;
}

- (id)_XPCConnectionWithMachServiceName:(id)name options:(unint64_t)options
{
  v5 = MEMORY[0x1E696B0B8];
  nameCopy = name;
  v7 = [[v5 alloc] initWithMachServiceName:nameCopy options:options];

  return v7;
}

- (id)_ensureXPCStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_xpcCnx)
  {
    if ([(RPSignedInUserProvider *)self->_userProvider supportsMultipleUsers]&& self->_targetUserSession)
    {
      if (![(RPSignedInUserProvider *)self->_userProvider signedInUserID])
      {
        if (gLogCategory_RPClient <= 50 && (gLogCategory_RPClient != -1 || _LogCategory_Initialize()))
        {
          [RPClient _ensureXPCStarted];
        }

        v10 = RPErrorF();
        goto LABEL_17;
      }

      if (gLogCategory_RPClient <= 30 && (gLogCategory_RPClient != -1 || _LogCategory_Initialize()))
      {
        [RPClient _ensureXPCStarted];
      }
    }

    if (self->_type != 1)
    {
      type = self->_type;
      v12 = FatalErrorF();
      return __29__RPClient__ensureXPCStarted__block_invoke(v12);
    }

    v3 = [(RPClient *)self _XPCConnectionWithMachServiceName:@"com.apple.rapport" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v3;

    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EFEB98];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v5];

    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EFEBF8];
    v7 = objc_alloc(MEMORY[0x1E695DFD8]);
    v8 = objc_opt_class();
    v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
    [v6 setClasses:v9 forSelector:sel_getIdentitiesWithFlags_completion_ argumentIndex:0 ofReply:1];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v6];

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __29__RPClient__ensureXPCStarted__block_invoke;
    v15[3] = &unk_1E7C92CE8;
    v15[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v15];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __29__RPClient__ensureXPCStarted__block_invoke_2;
    v14[3] = &unk_1E7C92CE8;
    v14[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v14];
    if (self->_targetUserSession && [(RPSignedInUserProvider *)self->_userProvider supportsMultipleUsers]&& [(RPSignedInUserProvider *)self->_userProvider signedInUserID])
    {
      [(NSXPCConnection *)self->_xpcCnx _setTargetUserIdentifier:[(RPSignedInUserProvider *)self->_userProvider signedInUserID]];
    }

    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_RPClient <= 10 && (gLogCategory_RPClient != -1 || _LogCategory_Initialize()))
    {
      [RPClient _ensureXPCStarted];
    }
  }

  v10 = 0;
LABEL_17:

  return v10;
}

- (void)_interrupted
{
  v19 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_RPClient <= 50 && (gLogCategory_RPClient != -1 || _LogCategory_Initialize()))
  {
    [RPClient _interrupted];
  }

  if ([(NSMutableSet *)self->_assertions count])
  {
    _ensureXPCStarted = [(RPClient *)self _ensureXPCStarted];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = self->_assertions;
    v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * v8);
          if (gLogCategory_RPClient <= 50 && (gLogCategory_RPClient != -1 || _LogCategory_Initialize()))
          {
            [RPClient _interrupted];
          }

          remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
          [remoteObjectProxy activateAssertionWithIdentifier:v9];

          ++v8;
        }

        while (v6 != v8);
        v11 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        v6 = v11;
      }

      while (v11);
    }
  }

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    interruptionHandler[2]();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__RPClient_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __22__RPClient_invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    if ((*(*(a1 + 32) + 25) & 1) == 0 && gLogCategory_RPClient <= 30 && (gLogCategory_RPClient != -1 || _LogCategory_Initialize()))
    {
      __22__RPClient_invalidate__block_invoke_cold_1();
    }

    v3 = *(*(a1 + 32) + 40);
    if (v3)
    {
      [v3 invalidate];
      v4 = *(a1 + 32);
      v5 = *(v4 + 40);
      *(v4 + 40) = 0;
    }

    else
    {
      v6 = *(a1 + 32);

      [v6 _invalidated];
    }
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_RPClient <= 50 && (gLogCategory_RPClient != -1 || _LogCategory_Initialize()))
    {
      [RPClient _invalidated];
    }

    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
    }

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v5 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_RPClient <= 10 && (gLogCategory_RPClient != -1 || _LogCategory_Initialize()))
    {
      [RPClient _invalidated];
    }
  }
}

- (void)activateAssertionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__RPClient_activateAssertionWithIdentifier___block_invoke;
  v7[3] = &unk_1E7C92D80;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(dispatchQueue, v7);
}

void __44__RPClient_activateAssertionWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;

    v2 = *(*(a1 + 32) + 8);
  }

  [v2 addObject:*(a1 + 40)];
  v6 = [*(a1 + 32) _ensureXPCStarted];
  v7 = [*(*(a1 + 32) + 40) remoteObjectProxy];
  [v7 activateAssertionWithIdentifier:*(a1 + 40)];
}

- (void)addOrUpdateIdentity:(id)identity source:(int)source completion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__RPClient_addOrUpdateIdentity_source_completion___block_invoke;
  v13[3] = &unk_1E7C92DD0;
  v14 = identityCopy;
  v15 = completionCopy;
  v13[4] = self;
  sourceCopy = source;
  v11 = identityCopy;
  v12 = completionCopy;
  dispatch_async(dispatchQueue, v13);
}

void __50__RPClient_addOrUpdateIdentity_source_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _ensureXPCStarted];
  if (v2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 32) + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50__RPClient_addOrUpdateIdentity_source_completion___block_invoke_2;
    v9[3] = &unk_1E7C92DA8;
    v10 = *(a1 + 48);
    v4 = [v3 remoteObjectProxyWithErrorHandler:v9];
    v5 = *(a1 + 56);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__RPClient_addOrUpdateIdentity_source_completion___block_invoke_3;
    v7[3] = &unk_1E7C92DA8;
    v6 = *(a1 + 40);
    v8 = *(a1 + 48);
    [v4 addOrUpdateIdentity:v6 source:v5 completion:v7];
  }
}

uint64_t __50__RPClient_addOrUpdateIdentity_source_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __50__RPClient_addOrUpdateIdentity_source_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)regenerateSelfIdentity:(id)identity withCompletion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__RPClient_regenerateSelfIdentity_withCompletion___block_invoke;
  block[3] = &unk_1E7C92DF8;
  v12 = identityCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = identityCopy;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __50__RPClient_regenerateSelfIdentity_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _ensureXPCStarted];
  if (v2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 32) + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__RPClient_regenerateSelfIdentity_withCompletion___block_invoke_2;
    v8[3] = &unk_1E7C92DA8;
    v9 = *(a1 + 48);
    v4 = [v3 remoteObjectProxyWithErrorHandler:v8];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50__RPClient_regenerateSelfIdentity_withCompletion___block_invoke_3;
    v6[3] = &unk_1E7C92DA8;
    v5 = *(a1 + 40);
    v7 = *(a1 + 48);
    [v4 regenerateSelfIdentity:v5 withCompletion:v6];
  }
}

uint64_t __50__RPClient_regenerateSelfIdentity_withCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __50__RPClient_regenerateSelfIdentity_withCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)regenerateTemporarySelfIdentityWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__RPClient_regenerateTemporarySelfIdentityWithCompletion___block_invoke;
  v7[3] = &unk_1E7C92E20;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __58__RPClient_regenerateTemporarySelfIdentityWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _ensureXPCStarted];
  if (v2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 32) + 40);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__RPClient_regenerateTemporarySelfIdentityWithCompletion___block_invoke_2;
    v7[3] = &unk_1E7C92DA8;
    v8 = *(a1 + 40);
    v4 = [v3 remoteObjectProxyWithErrorHandler:v7];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __58__RPClient_regenerateTemporarySelfIdentityWithCompletion___block_invoke_3;
    v5[3] = &unk_1E7C92DA8;
    v6 = *(a1 + 40);
    [v4 regenerateTemporarySelfIdentityWithCompletion:v5];
  }
}

uint64_t __58__RPClient_regenerateTemporarySelfIdentityWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __58__RPClient_regenerateTemporarySelfIdentityWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)diagnosticCommand:(id)command params:(id)params completion:(id)completion
{
  commandCopy = command;
  paramsCopy = params;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __48__RPClient_diagnosticCommand_params_completion___block_invoke;
  v15[3] = &unk_1E7C92E70;
  v15[4] = self;
  v16 = commandCopy;
  v17 = paramsCopy;
  v18 = completionCopy;
  v12 = paramsCopy;
  v13 = commandCopy;
  v14 = completionCopy;
  dispatch_async(dispatchQueue, v15);
}

void __48__RPClient_diagnosticCommand_params_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _ensureXPCStarted];
  if (v2)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 32) + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__RPClient_diagnosticCommand_params_completion___block_invoke_2;
    v9[3] = &unk_1E7C92DA8;
    v10 = *(a1 + 56);
    v4 = [v3 remoteObjectProxyWithErrorHandler:v9];
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__RPClient_diagnosticCommand_params_completion___block_invoke_3;
    v7[3] = &unk_1E7C92E48;
    v8 = *(a1 + 56);
    [v4 diagnosticCommand:v5 params:v6 completion:v7];
  }
}

uint64_t __48__RPClient_diagnosticCommand_params_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t __48__RPClient_diagnosticCommand_params_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)diagnosticLogControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__RPClient_diagnosticLogControl_completion___block_invoke;
  block[3] = &unk_1E7C92DF8;
  v12 = controlCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = controlCopy;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __44__RPClient_diagnosticLogControl_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _ensureXPCStarted];
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 48);
    v5 = [v2 description];
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    v6 = *(*(a1 + 32) + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __44__RPClient_diagnosticLogControl_completion___block_invoke_2;
    v11[3] = &unk_1E7C92DA8;
    v12 = *(a1 + 48);
    v7 = [v6 remoteObjectProxyWithErrorHandler:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__RPClient_diagnosticLogControl_completion___block_invoke_3;
    v9[3] = &unk_1E7C92E98;
    v8 = *(a1 + 40);
    v10 = *(a1 + 48);
    [v7 diagnosticLogControl:v8 completion:v9];
  }
}

void __44__RPClient_diagnosticLogControl_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = NSPrintF();
    (*(v1 + 16))(v1, v2);
  }
}

void __44__RPClient_diagnosticLogControl_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v7 = v3;
    if (v3)
    {
      (*(v5 + 16))(v5, v3);
    }

    else
    {
      v6 = NSPrintF();
      (*(v5 + 16))(v5, v6);
    }

    v4 = v7;
  }
}

- (void)diagnosticShow:(id)show level:(int)level completion:(id)completion
{
  showCopy = show;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44__RPClient_diagnosticShow_level_completion___block_invoke;
  v13[3] = &unk_1E7C92DD0;
  v14 = showCopy;
  v15 = completionCopy;
  v13[4] = self;
  levelCopy = level;
  v11 = showCopy;
  v12 = completionCopy;
  dispatch_async(dispatchQueue, v13);
}

void __44__RPClient_diagnosticShow_level_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _ensureXPCStarted];
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 48);
    v5 = [v2 description];
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    v6 = *(*(a1 + 32) + 40);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__RPClient_diagnosticShow_level_completion___block_invoke_2;
    v12[3] = &unk_1E7C92DA8;
    v13 = *(a1 + 48);
    v7 = [v6 remoteObjectProxyWithErrorHandler:v12];
    v8 = *(a1 + 56);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__RPClient_diagnosticShow_level_completion___block_invoke_3;
    v10[3] = &unk_1E7C92E98;
    v9 = *(a1 + 40);
    v11 = *(a1 + 48);
    [v7 diagnosticShow:v9 level:v8 completion:v10];
  }
}

void __44__RPClient_diagnosticShow_level_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = NSPrintF();
    (*(v1 + 16))(v1, v2);
  }
}

void __44__RPClient_diagnosticShow_level_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v7 = v3;
    if (v3)
    {
      (*(v5 + 16))(v5, v3);
    }

    else
    {
      v6 = NSPrintF();
      (*(v5 + 16))(v5, v6);
    }

    v4 = v7;
  }
}

- (void)getIdentitiesWithFlags:(unsigned int)flags completion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__RPClient_getIdentitiesWithFlags_completion___block_invoke;
  block[3] = &unk_1E7C92EC0;
  block[4] = self;
  v10 = completionCopy;
  flagsCopy = flags;
  v8 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __46__RPClient_getIdentitiesWithFlags_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _ensureXPCStarted];
  if (v2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 32) + 40);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __46__RPClient_getIdentitiesWithFlags_completion___block_invoke_2;
    v5[3] = &unk_1E7C92DA8;
    v6 = *(a1 + 40);
    v4 = [v3 remoteObjectProxyWithErrorHandler:v5];
    [v4 getIdentitiesWithFlags:*(a1 + 48) completion:*(a1 + 40)];
  }
}

- (void)primaryAccountSignedInWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__RPClient_primaryAccountSignedInWithCompletion___block_invoke;
  v7[3] = &unk_1E7C92E20;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __49__RPClient_primaryAccountSignedInWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _ensureXPCStarted];
  if (v2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 32) + 40);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__RPClient_primaryAccountSignedInWithCompletion___block_invoke_2;
    v7[3] = &unk_1E7C92DA8;
    v8 = *(a1 + 40);
    v4 = [v3 remoteObjectProxyWithErrorHandler:v7];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __49__RPClient_primaryAccountSignedInWithCompletion___block_invoke_3;
    v5[3] = &unk_1E7C92DA8;
    v6 = *(a1 + 40);
    [v4 primaryAccountSignedInWithCompletion:v5];
  }
}

uint64_t __49__RPClient_primaryAccountSignedInWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __49__RPClient_primaryAccountSignedInWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)primaryAccountSignedOutWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__RPClient_primaryAccountSignedOutWithCompletion___block_invoke;
  v7[3] = &unk_1E7C92E20;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __50__RPClient_primaryAccountSignedOutWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _ensureXPCStarted];
  if (v2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 32) + 40);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__RPClient_primaryAccountSignedOutWithCompletion___block_invoke_2;
    v7[3] = &unk_1E7C92DA8;
    v8 = *(a1 + 40);
    v4 = [v3 remoteObjectProxyWithErrorHandler:v7];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __50__RPClient_primaryAccountSignedOutWithCompletion___block_invoke_3;
    v5[3] = &unk_1E7C92DA8;
    v6 = *(a1 + 40);
    [v4 primaryAccountSignedOutWithCompletion:v5];
  }
}

uint64_t __50__RPClient_primaryAccountSignedOutWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __50__RPClient_primaryAccountSignedOutWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)clientCreateDeviceMappingInternal:(int)internal applicationService:(id)service deviceID:(id)d endpointID:(id)iD completion:(id)completion
{
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __96__RPClient_clientCreateDeviceMappingInternal_applicationService_deviceID_endpointID_completion___block_invoke;
  v21[3] = &unk_1E7C92F10;
  v22 = serviceCopy;
  v23 = dCopy;
  v25 = iDCopy;
  v26 = completionCopy;
  internalCopy = internal;
  selfCopy = self;
  v17 = iDCopy;
  v18 = completionCopy;
  v19 = dCopy;
  v20 = serviceCopy;
  dispatch_async(dispatchQueue, v21);
}

void __96__RPClient_clientCreateDeviceMappingInternal_applicationService_deviceID_endpointID_completion___block_invoke(uint64_t a1)
{
  if (gLogCategory_RPClient <= 40 && (gLogCategory_RPClient != -1 || _LogCategory_Initialize()))
  {
    __96__RPClient_clientCreateDeviceMappingInternal_applicationService_deviceID_endpointID_completion___block_invoke_cold_1(a1);
  }

  v2 = [*(a1 + 48) _ensureXPCStarted];
  if (v2)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 48) + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __96__RPClient_clientCreateDeviceMappingInternal_applicationService_deviceID_endpointID_completion___block_invoke_2;
    v11[3] = &unk_1E7C92DA8;
    v12 = *(a1 + 64);
    v4 = [v3 remoteObjectProxyWithErrorHandler:v11];
    v5 = *(a1 + 72);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __96__RPClient_clientCreateDeviceMappingInternal_applicationService_deviceID_endpointID_completion___block_invoke_3;
    v9[3] = &unk_1E7C92EE8;
    v8 = *(a1 + 56);
    v10 = *(a1 + 64);
    [v4 serverCreateDeviceMappingInternal:v5 applicationService:v6 deviceID:v7 endpointID:v8 completion:v9];
  }
}

uint64_t __96__RPClient_clientCreateDeviceMappingInternal_applicationService_deviceID_endpointID_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t __96__RPClient_clientCreateDeviceMappingInternal_applicationService_deviceID_endpointID_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)clientExchangeQUICPublicKeyFor:(id)for publicKey:(id)key completion:(id)completion
{
  forCopy = for;
  keyCopy = key;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__RPClient_clientExchangeQUICPublicKeyFor_publicKey_completion___block_invoke;
  v15[3] = &unk_1E7C92F38;
  v16 = forCopy;
  v17 = keyCopy;
  selfCopy = self;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = keyCopy;
  v14 = forCopy;
  dispatch_async(dispatchQueue, v15);
}

void __64__RPClient_clientExchangeQUICPublicKeyFor_publicKey_completion___block_invoke(uint64_t a1)
{
  if (gLogCategory_RPClient <= 40 && (gLogCategory_RPClient != -1 || _LogCategory_Initialize()))
  {
    __64__RPClient_clientExchangeQUICPublicKeyFor_publicKey_completion___block_invoke_cold_1(a1);
  }

  v2 = [*(a1 + 48) _ensureXPCStarted];
  if (v2)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 48) + 40);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __64__RPClient_clientExchangeQUICPublicKeyFor_publicKey_completion___block_invoke_2;
    v5[3] = &unk_1E7C92DA8;
    v6 = *(a1 + 56);
    v4 = [v3 remoteObjectProxyWithErrorHandler:v5];
    [v4 serverExchangeQUICPublicKeyFor:*(a1 + 32) publicKey:*(a1 + 40) completion:*(a1 + 56)];
  }
}

uint64_t __64__RPClient_clientExchangeQUICPublicKeyFor_publicKey_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, a2);
  }

  return result;
}

- (void)setAutoMapping:(BOOL)mapping completion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__RPClient_setAutoMapping_completion___block_invoke;
  block[3] = &unk_1E7C92F60;
  mappingCopy = mapping;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __38__RPClient_setAutoMapping_completion___block_invoke(uint64_t a1)
{
  if (gLogCategory_RPClient <= 40 && (gLogCategory_RPClient != -1 || _LogCategory_Initialize()))
  {
    __38__RPClient_setAutoMapping_completion___block_invoke_cold_1(a1);
  }

  v2 = [*(a1 + 32) _ensureXPCStarted];
  if (v2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))(v3, v2);
    }
  }

  else
  {
    v4 = *(*(a1 + 32) + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __38__RPClient_setAutoMapping_completion___block_invoke_2;
    v9[3] = &unk_1E7C92DA8;
    v10 = *(a1 + 40);
    v5 = [v4 remoteObjectProxyWithErrorHandler:v9];
    v6 = *(a1 + 48);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __38__RPClient_setAutoMapping_completion___block_invoke_3;
    v7[3] = &unk_1E7C92DA8;
    v8 = *(a1 + 40);
    [v5 serverSetAutoMappingInternal:v6 completion:v7];
  }
}

uint64_t __38__RPClient_setAutoMapping_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __38__RPClient_setAutoMapping_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)removeSessionPairedIdentity:(id)identity completion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__RPClient_removeSessionPairedIdentity_completion___block_invoke;
  block[3] = &unk_1E7C92DF8;
  v12 = identityCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = identityCopy;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __51__RPClient_removeSessionPairedIdentity_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _ensureXPCStarted];
  if (v2)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      (*(v3 + 16))(v3, v2);
    }
  }

  else
  {
    v4 = *(*(a1 + 32) + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__RPClient_removeSessionPairedIdentity_completion___block_invoke_2;
    v6[3] = &unk_1E7C92DA8;
    v7 = *(a1 + 48);
    v5 = [v4 remoteObjectProxyWithErrorHandler:v6];
    [v5 removeSessionPairedIdentity:*(a1 + 40) completion:*(a1 + 48)];
  }
}

uint64_t __51__RPClient_removeSessionPairedIdentity_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)removeAdHocPairedIdentity:(id)identity completion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__RPClient_removeAdHocPairedIdentity_completion___block_invoke;
  block[3] = &unk_1E7C92DF8;
  v12 = identityCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = identityCopy;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __49__RPClient_removeAdHocPairedIdentity_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _ensureXPCStarted];
  if (v2)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      (*(v3 + 16))(v3, v2);
    }
  }

  else
  {
    v4 = *(*(a1 + 32) + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__RPClient_removeAdHocPairedIdentity_completion___block_invoke_2;
    v6[3] = &unk_1E7C92DA8;
    v7 = *(a1 + 48);
    v5 = [v4 remoteObjectProxyWithErrorHandler:v6];
    [v5 removeAdHocPairedIdentity:*(a1 + 40) completion:*(a1 + 48)];
  }
}

uint64_t __49__RPClient_removeAdHocPairedIdentity_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __96__RPClient_clientCreateDeviceMappingInternal_applicationService_deviceID_endpointID_completion___block_invoke_cold_1(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return LogPrintF();
}

uint64_t __64__RPClient_clientExchangeQUICPublicKeyFor_publicKey_completion___block_invoke_cold_1(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return LogPrintF();
}

@end