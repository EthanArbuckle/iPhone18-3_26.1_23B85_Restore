@interface TRIXPCHandlerWrapper
- (TRIXPCHandlerWrapper)initWithUnderlyingHandler:(id)a3 forProtocol:(id)a4;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation TRIXPCHandlerWrapper

- (TRIXPCHandlerWrapper)initWithUnderlyingHandler:(id)a3 forProtocol:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (([v8 conformsToProtocol:v9] & 1) == 0)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"TRIXPCHandlerWrapper.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"[handler conformsToProtocol:protocol]"}];
  }

  v14.receiver = self;
  v14.super_class = TRIXPCHandlerWrapper;
  v10 = [(TRIXPCHandlerWrapper *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_underlying, a3);
    objc_storeStrong(&v11->_protocol, a4);
  }

  return v11;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  MethodDescription = protocol_getMethodDescription(self->_protocol, a3, 1, 1);
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

- (void)forwardInvocation:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (protocol_getMethodDescription(self[16], [v4 selector], 1, 1).types)
  {
    [v4 invokeWithTarget:self->_underlying];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TRIXPCHandlerWrapper;
    [(TRIXPCHandlerWrapper *)&v6 forwardInvocation:v4];
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end