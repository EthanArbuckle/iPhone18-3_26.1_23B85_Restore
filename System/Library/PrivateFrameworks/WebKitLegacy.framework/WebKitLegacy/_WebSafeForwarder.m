@interface _WebSafeForwarder
- (_WebSafeForwarder)initWithTarget:(id)a3 defaultTarget:(id)a4;
- (void)dealloc;
- (void)forwardInvocation:(id)a3;
@end

@implementation _WebSafeForwarder

- (_WebSafeForwarder)initWithTarget:(id)a3 defaultTarget:(id)a4
{
  v9.receiver = self;
  v9.super_class = _WebSafeForwarder;
  result = [(_WebSafeForwarder *)&v9 init];
  if (result)
  {
    result->_target = a3;
    result->_defaultTarget = a4;
    v7 = result;
    v8 = [[_WebSafeAsyncForwarder alloc] initWithForwarder:result];
    result = v7;
    v7->_asyncForwarder = v8;
  }

  return result;
}

- (void)dealloc
{
  self->_target = 0;
  self->_defaultTarget = 0;

  self->_asyncForwarder = 0;
  v3.receiver = self;
  v3.super_class = _WebSafeForwarder;
  [(_WebSafeForwarder *)&v3 dealloc];
}

- (void)forwardInvocation:(id)a3
{
  if (WebThreadIsCurrent())
  {
    [a3 retainArguments];

    WebThreadCallDelegate();
  }

  else
  {
    [a3 selector];
    if (objc_opt_respondsToSelector())
    {
      [a3 invokeWithTarget:self->_target];
    }

    else
    {
      [a3 selector];
      if (objc_opt_respondsToSelector())
      {
        defaultTarget = self->_defaultTarget;

        [a3 invokeWithTarget:defaultTarget];
      }
    }
  }
}

@end