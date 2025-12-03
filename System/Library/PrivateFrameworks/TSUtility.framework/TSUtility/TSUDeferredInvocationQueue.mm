@interface TSUDeferredInvocationQueue
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
- (void)performInvocations;
@end

@implementation TSUDeferredInvocationQueue

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSUDeferredInvocationQueue;
  [(TSUDeferredInvocationQueue *)&v3 dealloc];
}

- (void)forwardInvocation:(id)invocation
{
  if (!self->_invocations)
  {
    self->_invocations = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  [invocation setTarget:self->_target];
  self->_target = 0;
  invocations = self->_invocations;

  [(NSMutableArray *)invocations addObject:invocation];
}

- (void)performInvocations
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  invocations = self->_invocations;
  v4 = [(NSMutableArray *)invocations countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(invocations);
        }

        [*(*(&v8 + 1) + 8 * i) invoke];
      }

      v5 = [(NSMutableArray *)invocations countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  self->_invocations = 0;
}

@end