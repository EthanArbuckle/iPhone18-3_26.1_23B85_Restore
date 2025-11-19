@interface SUScriptObjectInvocationBatch
- (SUScriptObject)rootObject;
- (SUScriptObjectInvocationBatch)init;
- (id)batchProxyForObject:(id)a3;
- (id)copyQueuedInvocationsForObject:(id)a3;
- (void)checkOutBatchTarget:(id)a3;
- (void)dealloc;
- (void)dequeueInvocations;
- (void)enqueueInvocation:(id)a3;
- (void)setRootObject:(id)a3;
@end

@implementation SUScriptObjectInvocationBatch

- (SUScriptObjectInvocationBatch)init
{
  v6.receiver = self;
  v6.super_class = SUScriptObjectInvocationBatch;
  v2 = [(SUScriptObjectInvocationBatch *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v2->_lock;
    v2->_lock = v3;
  }

  return v2;
}

- (void)dealloc
{
  invocationQueue = self->_invocationQueue;
  self->_invocationQueue = 0;

  lock = self->_lock;
  self->_lock = 0;

  proxies = self->_proxies;
  if (proxies)
  {
    CFRelease(proxies);
    self->_proxies = 0;
  }

  v6.receiver = self;
  v6.super_class = SUScriptObjectInvocationBatch;
  [(SUScriptObjectInvocationBatch *)&v6 dealloc];
}

- (id)batchProxyForObject:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_lock lock];
  proxies = self->_proxies;
  if (!proxies)
  {
    proxies = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
    self->_proxies = proxies;
  }

  v6 = CFDictionaryGetValue(proxies, v4);
  if (!v6)
  {
    v6 = objc_alloc_init(SUScriptObjectBatchProxy);
    [(SUScriptObjectBatchProxy *)v6 setInvocationBatch:self];
    [(SUScriptObjectBatchProxy *)v6 setTarget:v4];
    CFDictionarySetValue(self->_proxies, v4, v6);
  }

  [(NSLock *)self->_lock unlock];

  return v6;
}

- (void)checkOutBatchTarget:(id)a3
{
  key = a3;
  [(NSLock *)self->_lock lock];
  proxies = self->_proxies;
  if (proxies)
  {
    v5 = CFDictionaryGetValue(proxies, key);
    v6 = v5;
    if (v5)
    {
      [v5 setTarget:0];
      CFDictionaryRemoveValue(self->_proxies, key);
    }
  }

  [(NSLock *)self->_lock unlock];
}

- (id)copyQueuedInvocationsForObject:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(NSLock *)self->_lock lock];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_invocationQueue;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 target];

        if (v12 == v4)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(NSLock *)self->_lock unlock];
  return v5;
}

- (void)dequeueInvocations
{
  [(NSLock *)self->_lock lock];
  v5 = [(NSMutableArray *)self->_invocationQueue copy];
  invocationQueue = self->_invocationQueue;
  self->_invocationQueue = 0;

  [(NSLock *)self->_lock unlock];
  if ([v5 count])
  {
    v4 = [(SUScriptObjectInvocationBatch *)self rootObject];
    [v4 willPerformBatchedInvocations];
    [v5 makeObjectsPerformSelector:sel_invoke];
    [v4 didPerformBatchedInvocations];
  }
}

- (void)enqueueInvocation:(id)a3
{
  lock = self->_lock;
  v5 = a3;
  [(NSLock *)lock lock];
  if (!self->_invocationQueue)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    invocationQueue = self->_invocationQueue;
    self->_invocationQueue = v6;
  }

  [v5 retainArguments];
  [(NSMutableArray *)self->_invocationQueue addObject:v5];

  [(NSLock *)self->_lock unlock];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedDequeueInvocations object:0];

  [(SUScriptObjectInvocationBatch *)self performSelector:sel__delayedDequeueInvocations withObject:0 afterDelay:0.0];
}

- (SUScriptObject)rootObject
{
  [(NSLock *)self->_lock lock];
  v3 = self->_rootObject;
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (void)setRootObject:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_lock lock];
  rootObject = self->_rootObject;
  self->_rootObject = v4;
  v6 = v4;

  [(NSLock *)self->_lock unlock];
}

@end