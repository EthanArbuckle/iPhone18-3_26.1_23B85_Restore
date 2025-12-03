@interface TIPreferencesControllerClient
+ (id)sharedPreferencesController;
- (TIPreferencesControllerClient)init;
- (void)_disconnect;
- (void)_pushValue:(id)value toPreference:(id)preference domain:(id)domain;
- (void)createConnectionIfNecessary;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
- (void)performWithWriteability:(BOOL)writeability operations:(id)operations;
- (void)updateInputModes:(id)modes;
@end

@implementation TIPreferencesControllerClient

+ (id)sharedPreferencesController
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__TIPreferencesControllerClient_sharedPreferencesController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedPreferencesController_once_769 != -1)
  {
    dispatch_once(&sharedPreferencesController_once_769, block);
  }

  v2 = sharedPreferencesController_sharedController_770;

  return v2;
}

uint64_t __60__TIPreferencesControllerClient_sharedPreferencesController__block_invoke()
{
  sharedPreferencesController_sharedController_770 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (TIPreferencesControllerClient)init
{
  v6.receiver = self;
  v6.super_class = TIPreferencesControllerClient;
  v2 = [(TIPreferencesController *)&v6 init];
  if (v2)
  {
    v3 = [@"com.apple.TextInput.preferences" copy];
    machName = v2->_machName;
    v2->_machName = v3;

    v2->_isValid = 0;
  }

  return v2;
}

- (void)updateInputModes:(id)modes
{
  modesCopy = modes;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__TIPreferencesControllerClient_updateInputModes___block_invoke;
  v6[3] = &unk_1E6F4D8D8;
  v7 = modesCopy;
  selfCopy = self;
  v5 = modesCopy;
  [(TIPreferencesControllerClient *)self performWithWriteability:1 operations:v6];
}

id __50__TIPreferencesControllerClient_updateInputModes___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = TIPreferencesControllerClient;
  return objc_msgSendSuper2(&v3, sel_updateInputModes_, v1);
}

- (void)performWithWriteability:(BOOL)writeability operations:(id)operations
{
  writeable = self->_writeable;
  self->_writeable = writeability;
  (*(operations + 2))(operations, a2);
  self->_writeable = writeable;
}

- (void)_pushValue:(id)value toPreference:(id)preference domain:(id)domain
{
  if (self->_writeable)
  {
    v8 = v5;
    v9 = v6;
    v7.receiver = self;
    v7.super_class = TIPreferencesControllerClient;
    [(TIPreferencesController *)&v7 _pushValue:value toPreference:preference domain:domain];
  }
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  v4 = &unk_1EF7ED518;
  MethodDescription = protocol_getMethodDescription(v4, [invocationCopy selector], 1, 1);
  if (MethodDescription.name && *MethodDescription.types == 118)
  {
    [(TIPreferencesControllerClient *)self createConnectionIfNecessary];
    remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    if (remoteObjectProxy)
    {
      [(TIPreferencesController *)self setIgnoreNextSyncNotification:1];
      remoteObjectProxy2 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
      [invocationCopy invokeWithTarget:remoteObjectProxy2];
    }
  }

  [invocationCopy invokeWithTarget:self];
}

- (void)createConnectionIfNecessary
{
  if (!self->_isValid)
  {
    [(NSXPCConnection *)self->_connection invalidate];
    connection = self->_connection;
    self->_connection = 0;

    self->_isValid = 1;
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:self->_machName options:4096];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = +[TIPreferencesControllerClient serviceInterface];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v6];

    v7 = self->_connection;
    if (_preferencesClientDispatchQueue_onceToken != -1)
    {
      dispatch_once(&_preferencesClientDispatchQueue_onceToken, &__block_literal_global_889);
    }

    [(NSXPCConnection *)v7 _setQueue:_preferencesClientDispatchQueue___xpc_queue];
    selfCopy = self;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __60__TIPreferencesControllerClient_createConnectionIfNecessary__block_invoke;
    v17[3] = &unk_1E6F4D860;
    v9 = selfCopy;
    v18 = v9;
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v17];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __60__TIPreferencesControllerClient_createConnectionIfNecessary__block_invoke_2;
    v15 = &unk_1E6F4D860;
    v16 = v9;
    v10 = self->_connection;
    v11 = v9;
    [(NSXPCConnection *)v10 setInvalidationHandler:&v12];
    [(NSXPCConnection *)self->_connection resume:v12];
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = TIPreferencesControllerClient;
  [(TIPreferencesController *)&v3 dealloc];
}

- (void)_disconnect
{
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  self->_isValid = 0;
}

@end