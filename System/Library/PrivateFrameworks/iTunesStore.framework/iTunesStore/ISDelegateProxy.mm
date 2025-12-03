@interface ISDelegateProxy
- (BOOL)respondsToSelector:(SEL)selector;
- (ISDelegateProxy)init;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
- (void)sendInvocationToDelegate:(id)delegate;
- (void)setDelegate:(id)delegate;
- (void)setShouldMessageMainThread:(BOOL)thread;
@end

@implementation ISDelegateProxy

- (ISDelegateProxy)init
{
  v4.receiver = self;
  v4.super_class = ISDelegateProxy;
  v2 = [(ISDelegateProxy *)&v4 init];
  if (v2)
  {
    v2->_lock = objc_alloc_init(MEMORY[0x277CCAAF8]);
  }

  return v2;
}

- (void)dealloc
{
  self->_lock = 0;
  v3.receiver = self;
  v3.super_class = ISDelegateProxy;
  [(ISDelegateProxy *)&v3 dealloc];
}

- (void)setDelegate:(id)delegate
{
  [(NSLock *)self->_lock lock];
  self->_delegate = delegate;
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)sendInvocationToDelegate:(id)delegate
{
  [(NSLock *)self->_lock lock];
  v5 = self->_delegate;
  [(NSLock *)self->_lock unlock];
  selfCopy = self;
  methodSignature = [delegate methodSignature];
  v8 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:methodSignature];
  numberOfArguments = [methodSignature numberOfArguments];
  if (numberOfArguments >= 3)
  {
    v10 = numberOfArguments;
    for (i = 2; i != v10; ++i)
    {
      v12 = 0;
      [delegate getArgument:&v12 atIndex:i];
      [v8 setArgument:&v12 atIndex:i];
    }
  }

  [v8 setSelector:{objc_msgSend(delegate, "selector")}];
  [v8 invokeWithTarget:v5];
}

- (void)setShouldMessageMainThread:(BOOL)thread
{
  [(NSLock *)self->_lock lock];
  self->_shouldMessageMainThread = thread;
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)forwardInvocation:(id)invocation
{
  [(NSLock *)self->_lock lock];
  shouldMessageMainThread = self->_shouldMessageMainThread;
  [(NSLock *)self->_lock unlock];
  if (shouldMessageMainThread)
  {
    [invocation retainArguments];

    [(ISDelegateProxy *)self performSelectorOnMainThread:sel_sendInvocationToDelegate_ withObject:invocation waitUntilDone:0];
  }

  else
  {

    [(ISDelegateProxy *)self sendInvocationToDelegate:invocation];
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = ISDelegateProxy;
  v5 = [(ISDelegateProxy *)&v7 methodSignatureForSelector:?];
  if (!v5)
  {
    [(NSLock *)self->_lock lock];
    v5 = [self->_delegate methodSignatureForSelector:selector];
    [(NSLock *)self->_lock unlock];
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  [(NSLock *)self->_lock lock];
  delegate = self->_delegate;
  v5 = objc_opt_respondsToSelector();
  [(NSLock *)self->_lock unlock];
  return v5 & 1;
}

@end