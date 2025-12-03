@interface TRIXPCHandlerWrapper
- (TRIXPCHandlerWrapper)initWithUnderlyingHandler:(id)handler forProtocol:(id)protocol;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation TRIXPCHandlerWrapper

- (TRIXPCHandlerWrapper)initWithUnderlyingHandler:(id)handler forProtocol:(id)protocol
{
  handlerCopy = handler;
  protocolCopy = protocol;
  if (([handlerCopy conformsToProtocol:protocolCopy] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIXPCHandlerWrapper.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"[handler conformsToProtocol:protocol]"}];
  }

  v14.receiver = self;
  v14.super_class = TRIXPCHandlerWrapper;
  v10 = [(TRIXPCHandlerWrapper *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_underlying, handler);
    objc_storeStrong(&v11->_protocol, protocol);
  }

  return v11;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  MethodDescription = protocol_getMethodDescription(self->_protocol, selector, 1, 1);
  if (MethodDescription.types)
  {
    v4 = [MEMORY[0x277CBEB08] signatureWithObjCTypes:MethodDescription.types];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)forwardInvocation:(id)invocation
{
  v7 = *MEMORY[0x277D85DE8];
  invocationCopy = invocation;
  if (protocol_getMethodDescription(self[16], [invocationCopy selector], 1, 1).types)
  {
    [invocationCopy invokeWithTarget:self->_underlying];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TRIXPCHandlerWrapper;
    [(TRIXPCHandlerWrapper *)&v6 forwardInvocation:invocationCopy];
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end