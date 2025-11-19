@interface UIThreadSafeNode
+ (id)threadSafeNodeWithNode:(id)a3;
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)isKindOfClass:(Class)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (UIThreadSafeNode)initWithNode:(id)a3;
- (id)description;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation UIThreadSafeNode

+ (id)threadSafeNodeWithNode:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = [[UIThreadSafeNode alloc] initWithNode:v3];
  }

  v5 = v4;

  return v5;
}

- (UIThreadSafeNode)initWithNode:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UIThreadSafeNode;
  v6 = [(UIThreadSafeNode *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_node, a3);
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

- (BOOL)isKindOfClass:(Class)a3
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

- (BOOL)conformsToProtocol:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UIThreadSafeNode;
  if ([(UIThreadSafeNode *)&v7 conformsToProtocol:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(DOMNode *)self->_node conformsToProtocol:v4];
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)a3
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
  return [(UIThreadSafeNode *)&v6 respondsToSelector:a3];
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  [v4 selector];
  if (objc_opt_respondsToSelector())
  {
    if (WebThreadNotCurrent())
    {
      WebThreadLock();
    }

    [v4 invokeWithTarget:self->_node];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UIThreadSafeNode;
    [(UIThreadSafeNode *)&v5 forwardInvocation:v4];
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v4 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
  }

  v7 = v6;

  return v7;
}

@end