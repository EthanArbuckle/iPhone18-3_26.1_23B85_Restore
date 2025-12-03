@interface _UIViewServiceLegacyClientSession
+ (id)sessionWithConnection:(id)connection manager:(id)manager;
+ (void)initialize;
- (void)_invalidateUnconditionallyThen:(id)then;
- (void)_objc_initiateDealloc;
- (void)_registerSessionForDefaultDeputies;
- (void)dealloc;
- (void)registerDeputyClass:(Class)class withConnectionHandler:(id)handler;
- (void)setTerminationHandler:(id)handler;
@end

@implementation _UIViewServiceLegacyClientSession

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    _class_setCustomDeallocInitiation();
  }
}

- (void)_objc_initiateDealloc
{
  invoke = [(_UIAsyncInvocation *)self->_invalidationInvocation invoke];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58___UIViewServiceLegacyClientSession__objc_initiateDealloc__block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0ls32l8;
  v4[4] = self;
  [invoke whenCompleteDo:v4];
}

+ (id)sessionWithConnection:(id)connection manager:(id)manager
{
  _UIApplicationIsExtension();
  v7 = objc_alloc_init(self);
  *(v7 + 7) = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v8 = objc_alloc_init(_UIViewServiceDeputyManager);
  *(v7 + 4) = v8;
  [(_UIViewServiceDeputyManager *)v8 setDelegate:v7];
  connectionCopy = connection;
  *(v7 + 2) = connectionCopy;
  [connectionCopy setExportedInterface:{objc_msgSend(MEMORY[0x1E696B0D0], "interfaceWithProtocol:", &unk_1F016E010)}];
  [*(v7 + 2) setExportedObject:*(v7 + 4)];
  *(v7 + 3) = manager;
  v10 = [objc_msgSend(objc_msgSend(UIApp "_workspace")];
  *(v7 + 1) = v10;
  dispatch_retain(v10);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67___UIViewServiceLegacyClientSession_sessionWithConnection_manager___block_invoke;
  v16[3] = &__block_descriptor_40_e14_v16__0___v___8ls32l8;
  v16[4] = v7;
  *(v7 + 5) = [_UIAsyncInvocation invocationWithBlock:v16];
  v11 = *(v7 + 2);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67___UIViewServiceLegacyClientSession_sessionWithConnection_manager___block_invoke_2;
  v15[3] = &__block_descriptor_40_e5_v8__0ls32l8;
  v15[4] = v7;
  [v11 setInterruptionHandler:v15];
  v12 = *(v7 + 2);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67___UIViewServiceLegacyClientSession_sessionWithConnection_manager___block_invoke_3;
  v14[3] = &__block_descriptor_40_e5_v8__0ls32l8;
  v14[4] = v7;
  [v12 setInvalidationHandler:v14];
  [*(v7 + 2) _setQueue:*(v7 + 1)];
  [v7 _registerSessionForDefaultDeputies];
  return v7;
}

- (void)_registerSessionForDefaultDeputies
{
  v3 = [_UIWeakReference weakReferenceWrappingObject:self];
  v4 = objc_opt_class();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71___UIViewServiceLegacyClientSession__registerSessionForDefaultDeputies__block_invoke;
  v7[3] = &unk_1E7128A38;
  v7[4] = v3;
  [(_UIViewServiceLegacyClientSession *)self registerDeputyClass:v4 withConnectionHandler:v7];
  if (+[_UIViewServiceTextEffectsOperator _shouldAddServiceOperator])
  {
    v5 = objc_opt_class();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __71___UIViewServiceLegacyClientSession__registerSessionForDefaultDeputies__block_invoke_2;
    v6[3] = &unk_1E7128A38;
    v6[4] = v3;
    [(_UIViewServiceLegacyClientSession *)self registerDeputyClass:v5 withConnectionHandler:v6];
  }
}

- (void)dealloc
{
  if (self->_connection)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  dispatch_release(self->_queue);
  [(_UIViewServiceDeputyManager *)self->_deputyManager setDelegate:0];

  v3.receiver = self;
  v3.super_class = _UIViewServiceLegacyClientSession;
  [(_UIViewServiceLegacyClientSession *)&v3 dealloc];
}

- (void)setTerminationHandler:(id)handler
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59___UIViewServiceLegacyClientSession_setTerminationHandler___block_invoke;
  v4[3] = &unk_1E7101DB8;
  v4[4] = self;
  v4[5] = handler;
  dispatch_async(queue, v4);
}

- (void)_invalidateUnconditionallyThen:(id)then
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68___UIViewServiceLegacyClientSession__invalidateUnconditionallyThen___block_invoke;
  v4[3] = &unk_1E7128A60;
  v4[4] = then;
  v4[5] = self;
  dispatch_async(queue, v4);
}

- (void)registerDeputyClass:(Class)class withConnectionHandler:(id)handler
{
  v7 = [_UIWeakReference weakReferenceWrappingObject:self];
  deputyManager = self->_deputyManager;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79___UIViewServiceLegacyClientSession_registerDeputyClass_withConnectionHandler___block_invoke;
  v9[3] = &unk_1E7128A88;
  v9[4] = v7;
  v9[5] = self;
  v9[6] = handler;
  [(_UIViewServiceDeputyManager *)deputyManager registerDeputyClass:class withConnectionHandler:v9];
}

@end