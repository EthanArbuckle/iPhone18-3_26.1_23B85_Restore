@interface UIThreadSafeNode
+ (id)threadSafeNodeWithNode:(id)node;
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)isKindOfClass:(Class)class;
- (BOOL)respondsToSelector:(SEL)selector;
- (UIThreadSafeNode)initWithNode:(id)node;
- (id)description;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation UIThreadSafeNode

+ (id)threadSafeNodeWithNode:(id)node
{
  nodeCopy = node;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = nodeCopy;
  }

  else
  {
    v4 = [[UIThreadSafeNode alloc] initWithNode:nodeCopy];
  }

  v5 = v4;

  return v5;
}

- (UIThreadSafeNode)initWithNode:(id)node
{
  nodeCopy = node;
  v9.receiver = self;
  v9.super_class = UIThreadSafeNode;
  v6 = [(UIThreadSafeNode *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_node, node);
  }

  return v7;
}

- (id)description
{
  if (WebThreadNotCurrent())
  {
    WebThreadLock();
  }

  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = UIThreadSafeNode;
  v4 = [(UIThreadSafeNode *)&v8 description];
  v5 = [(DOMNode *)self->_node description];
  v6 = [v3 stringWithFormat:@"<%@ representing: %@>", v4, v5];

  return v6;
}

- (BOOL)isKindOfClass:(Class)class
{
  v5.receiver = self;
  v5.super_class = UIThreadSafeNode;
  if ([(UIThreadSafeNode *)&v5 isKindOfClass:?])
  {
    isKindOfClass = 1;
  }

  else
  {
    WebThreadLock();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  v7.receiver = self;
  v7.super_class = UIThreadSafeNode;
  if ([(UIThreadSafeNode *)&v7 conformsToProtocol:protocolCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(DOMNode *)self->_node conformsToProtocol:protocolCopy];
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if (WebThreadNotCurrent())
  {
    WebThreadLock();
  }

  if (objc_opt_respondsToSelector())
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = UIThreadSafeNode;
  return [(UIThreadSafeNode *)&v6 respondsToSelector:selector];
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  [invocationCopy selector];
  if (objc_opt_respondsToSelector())
  {
    if (WebThreadNotCurrent())
    {
      WebThreadLock();
    }

    [invocationCopy invokeWithTarget:self->_node];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UIThreadSafeNode;
    [(UIThreadSafeNode *)&v5 forwardInvocation:invocationCopy];
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v4 = [objc_opt_class() instanceMethodSignatureForSelector:selector];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [objc_opt_class() instanceMethodSignatureForSelector:selector];
  }

  v7 = v6;

  return v7;
}

@end