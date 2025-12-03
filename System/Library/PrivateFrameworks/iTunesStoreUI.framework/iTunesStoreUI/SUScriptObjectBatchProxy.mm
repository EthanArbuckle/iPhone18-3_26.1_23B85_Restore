@interface SUScriptObjectBatchProxy
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation SUScriptObjectBatchProxy

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  invocationBatch = [(SUScriptObjectBatchProxy *)self invocationBatch];
  target = [(SUScriptObjectBatchProxy *)self target];
  [invocationCopy setTarget:target];

  if (invocationBatch)
  {
    [invocationBatch enqueueInvocation:invocationCopy];
  }

  else
  {
    [invocationCopy retainArguments];
    [invocationCopy performSelectorOnMainThread:sel_invoke withObject:0 waitUntilDone:0];
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v8.receiver = self;
  v8.super_class = SUScriptObjectBatchProxy;
  v5 = [(SUScriptObjectBatchProxy *)&v8 methodSignatureForSelector:?];
  if (!v5)
  {
    target = [(SUScriptObjectBatchProxy *)self target];
    v5 = [target methodSignatureForSelector:selector];
  }

  return v5;
}

@end