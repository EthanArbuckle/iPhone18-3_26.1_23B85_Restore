@interface _UIViewServiceDeputyManager
+ (id)exportedInterfaceSupportingDeputyInterfaces:(id)interfaces;
+ (void)initialize;
- (Class)_deputyClassForConnectionSelector:(SEL)selector;
- (_UIViewServiceDeputyManager)init;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)__requestConnectionToDeputyOfClass:(Class)class fromHostObject:(id)object replyHandler:(id)handler;
- (void)_invalidateUnconditionallyThen:(id)then;
- (void)_objc_initiateDealloc;
- (void)checkDeputyForRotation:(id)rotation;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
- (void)registerDeputyClass:(Class)class withConnectionHandler:(id)handler;
- (void)unregisterDeputyClass:(Class)class;
- (void)viewControllerOperator:(id)operator didCreateServiceViewControllerOfClass:(Class)class;
@end

@implementation _UIViewServiceDeputyManager

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
  v4[2] = __52___UIViewServiceDeputyManager__objc_initiateDealloc__block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0ls32l8;
  v4[4] = self;
  [invoke whenCompleteDo:v4];
}

- (_UIViewServiceDeputyManager)init
{
  v8.receiver = self;
  v8.super_class = _UIViewServiceDeputyManager;
  v2 = [(_UIViewServiceDeputyManager *)&v8 init];
  if (v2)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = [objc_msgSend(v3 stringWithFormat:@"com.apple.uikit.%@ %p", NSStringFromClass(v4), v2), "UTF8String"];
    v2->_queue = dispatch_queue_create(v5, 0);
    v2->_connectionHandlers = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_connectionHandlersLock = objc_alloc_init(MEMORY[0x1E696AD10]);
    v2->_deputies = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __35___UIViewServiceDeputyManager_init__block_invoke;
    v7[3] = &__block_descriptor_40_e14_v16__0___v___8ls32l8;
    v7[4] = v2;
    v2->_invalidationInvocation = [_UIAsyncInvocation invocationWithBlock:v7];
  }

  return v2;
}

- (void)dealloc
{
  dispatch_release(self->_queue);

  self->_deputies = 0;
  self->_connectionHandlers = 0;

  self->_connectionHandlersLock = 0;
  self->_invalidationInvocation = 0;
  v3.receiver = self;
  v3.super_class = _UIViewServiceDeputyManager;
  [(_UIViewServiceDeputyManager *)&v3 dealloc];
}

- (void)_invalidateUnconditionallyThen:(id)then
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62___UIViewServiceDeputyManager__invalidateUnconditionallyThen___block_invoke;
  v4[3] = &unk_1E7128A60;
  v4[4] = then;
  v4[5] = self;
  dispatch_async(queue, v4);
}

+ (id)exportedInterfaceSupportingDeputyInterfaces:(id)interfaces
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(interfaces, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [interfaces countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(interfaces);
        }

        [v4 addObject:{objc_msgSend(*(*(&v22 + 1) + 8 * i), "connectionProtocol")}];
      }

      v6 = [interfaces countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  [v4 addObject:&unk_1F016E130];
  v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:_UIProtocolConformingToProtocols(v4)];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [interfaces countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(interfaces);
        }

        v14 = *(*(&v18 + 1) + 8 * j);
        hostObjectInterface = [v14 hostObjectInterface];
        if (hostObjectInterface)
        {
          [v9 setInterface:hostObjectInterface forSelector:objc_msgSend(v14 argumentIndex:"connectionSelector") ofReply:{0, 0}];
        }

        exportedInterface = [v14 exportedInterface];
        if (exportedInterface)
        {
          [v9 setInterface:exportedInterface forSelector:objc_msgSend(v14 argumentIndex:"connectionSelector") ofReply:{0, 1}];
        }
      }

      v11 = [interfaces countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v11);
  }

  return v9;
}

- (Class)_deputyClassForConnectionSelector:(SEL)selector
{
  v17 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->_connectionHandlersLock lock];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  connectionHandlers = self->_connectionHandlers;
  v6 = [(NSMutableDictionary *)connectionHandlers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(connectionHandlers);
      }

      v10 = NSClassFromString(*(*(&v12 + 1) + 8 * v9));
      if (sel_isEqual(selector, [-[objc_class XPCInterface](v10 "XPCInterface")]))
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableDictionary *)connectionHandlers countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  [(NSLock *)self->_connectionHandlersLock unlock];
  return v10;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  result = [(_UIViewServiceDeputyManager *)self _deputyClassForConnectionSelector:selector];
  if (result)
  {
    v4 = objc_opt_class();

    return [v4 instanceMethodSignatureForSelector:sel___prototype_requestConnectionToDeputyFromHostObject_replyHandler_];
  }

  return result;
}

- (void)__requestConnectionToDeputyOfClass:(Class)class fromHostObject:(id)object replyHandler:(id)handler
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94___UIViewServiceDeputyManager___requestConnectionToDeputyOfClass_fromHostObject_replyHandler___block_invoke;
  block[3] = &unk_1E7128E88;
  block[4] = self;
  block[5] = class;
  block[7] = handler;
  block[8] = a2;
  block[6] = object;
  dispatch_async(queue, block);
}

- (void)forwardInvocation:(id)invocation
{
  v5 = -[_UIViewServiceDeputyManager _deputyClassForConnectionSelector:](self, "_deputyClassForConnectionSelector:", [invocation selector]);
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    [invocation getArgument:&v8 atIndex:2];
    [invocation getArgument:&v7 atIndex:3];
    [(_UIViewServiceDeputyManager *)self __requestConnectionToDeputyOfClass:v6 fromHostObject:v8 replyHandler:v7];
  }
}

- (void)registerDeputyClass:(Class)class withConnectionHandler:(id)handler
{
  v8 = NSStringFromClass(class);
  [(NSLock *)self->_connectionHandlersLock lock];
  if ([(NSMutableDictionary *)self->_connectionHandlers objectForKey:v8])
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(a2);
    NSLog(&cfstr_Newdeputyclass.isa, v9, v10, class);
  }

  else
  {
    -[NSMutableDictionary setObject:forKey:](self->_connectionHandlers, "setObject:forKey:", [handler copy], v8);
    if (objc_opt_respondsToSelector())
    {
      v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableDictionary count](self->_connectionHandlers, "count")}];
      connectionHandlers = self->_connectionHandlers;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __73___UIViewServiceDeputyManager_registerDeputyClass_withConnectionHandler___block_invoke;
      v13[3] = &unk_1E7128EB0;
      v13[4] = v11;
      [(NSMutableDictionary *)connectionHandlers enumerateKeysAndObjectsUsingBlock:v13];
      [self->_delegate deputyManager:self didUpdateExportedInterface:{objc_msgSend(objc_opt_class(), "exportedInterfaceSupportingDeputyInterfaces:", v11)}];
    }
  }

  [(NSLock *)self->_connectionHandlersLock unlock];
}

- (void)unregisterDeputyClass:(Class)class
{
  [(NSLock *)self->_connectionHandlersLock lock];
  v5 = NSStringFromClass(class);
  v6 = [(NSMutableDictionary *)self->_connectionHandlers objectForKey:v5];
  [(NSMutableDictionary *)self->_connectionHandlers removeObjectForKey:v5];
  if (objc_opt_respondsToSelector())
  {
    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableDictionary count](self->_connectionHandlers, "count")}];
    connectionHandlers = self->_connectionHandlers;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53___UIViewServiceDeputyManager_unregisterDeputyClass___block_invoke;
    v9[3] = &unk_1E7128EB0;
    v9[4] = v7;
    [(NSMutableDictionary *)connectionHandlers enumerateKeysAndObjectsUsingBlock:v9];
    [self->_delegate deputyManager:self didUpdateExportedInterface:{objc_msgSend(objc_opt_class(), "exportedInterfaceSupportingDeputyInterfaces:", v7)}];
  }

  [(NSLock *)self->_connectionHandlersLock unlock];
}

- (void)checkDeputyForRotation:(id)rotation
{
  v27 = *MEMORY[0x1E69E9840];
  if ([rotation conformsToProtocol:&unk_1F00EBF40])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    deputies = self->_deputies;
    v6 = [(NSMutableSet *)deputies countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(deputies);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          if ([v10 conformsToProtocol:&unk_1F00E9F50])
          {
            [rotation addDeputyRotationDelegate:v10];
          }
        }

        v7 = [(NSMutableSet *)deputies countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v7);
    }
  }

  if ([rotation conformsToProtocol:&unk_1F00E9F50])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = self->_deputies;
    v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v17 + 1) + 8 * j);
          if ([v16 conformsToProtocol:&unk_1F00EBF40])
          {
            [v16 addDeputyRotationDelegate:rotation];
          }
        }

        v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v13);
    }
  }
}

- (void)viewControllerOperator:(id)operator didCreateServiceViewControllerOfClass:(Class)class
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __92___UIViewServiceDeputyManager_viewControllerOperator_didCreateServiceViewControllerOfClass___block_invoke;
  v4[3] = &unk_1E7128F28;
  v4[4] = self;
  v4[5] = class;
  v4[6] = operator;
  [(_UIViewServiceDeputyManager *)self registerDeputyClass:class withConnectionHandler:v4];
}

@end