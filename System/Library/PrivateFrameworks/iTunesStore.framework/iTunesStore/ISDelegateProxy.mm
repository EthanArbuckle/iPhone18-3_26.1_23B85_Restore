@interface ISDelegateProxy
- (BOOL)respondsToSelector:(SEL)a3;
- (ISDelegateProxy)init;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)dealloc;
- (void)forwardInvocation:(id)a3;
- (void)sendInvocationToDelegate:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setShouldMessageMainThread:(BOOL)a3;
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

- (void)setDelegate:(id)a3
{
  [(NSLock *)self->_lock lock];
  self->_delegate = a3;
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)sendInvocationToDelegate:(id)a3
{
  [(NSLock *)self->_lock lock];
  v5 = self->_delegate;
  [(NSLock *)self->_lock unlock];
  v6 = self;
  v7 = [a3 methodSignature];
  v8 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v7];
  v9 = [v7 numberOfArguments];
  if (v9 >= 3)
  {
    v10 = v9;
    for (i = 2; i != v10; ++i)
    {
      v12 = 0;
      [a3 getArgument:&v12 atIndex:i];
      [v8 setArgument:&v12 atIndex:i];
    }
  }

  [v8 setSelector:{objc_msgSend(a3, "selector")}];
  [v8 invokeWithTarget:v5];
}

- (void)setShouldMessageMainThread:(BOOL)a3
{
  [(NSLock *)self->_lock lock];
  self->_shouldMessageMainThread = a3;
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)forwardInvocation:(id)a3
{
  [(NSLock *)self->_lock lock];
  shouldMessageMainThread = self->_shouldMessageMainThread;
  [(NSLock *)self->_lock unlock];
  if (shouldMessageMainThread)
  {
    [a3 retainArguments];

    [(ISDelegateProxy *)self performSelectorOnMainThread:sel_sendInvocationToDelegate_ withObject:a3 waitUntilDone:0];
  }

  else
  {

    [(ISDelegateProxy *)self sendInvocationToDelegate:a3];
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = ISDelegateProxy;
  v5 = [(ISDelegateProxy *)&v7 methodSignatureForSelector:?];
  if (!v5)
  {
    [(NSLock *)self->_lock lock];
    v5 = [self->_delegate methodSignatureForSelector:a3];
    [(NSLock *)self->_lock unlock];
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  [(NSLock *)self->_lock lock];
  delegate = self->_delegate;
  v5 = objc_opt_respondsToSelector();
  [(NSLock *)self->_lock unlock];
  return v5 & 1;
}

@end