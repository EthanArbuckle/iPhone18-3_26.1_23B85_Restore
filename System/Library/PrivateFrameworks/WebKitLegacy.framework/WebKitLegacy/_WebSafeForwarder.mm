@interface _WebSafeForwarder
- (_WebSafeForwarder)initWithTarget:(id)target defaultTarget:(id)defaultTarget;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
@end

@implementation _WebSafeForwarder

- (_WebSafeForwarder)initWithTarget:(id)target defaultTarget:(id)defaultTarget
{
  v9.receiver = self;
  v9.super_class = _WebSafeForwarder;
  result = [(_WebSafeForwarder *)&v9 init];
  if (result)
  {
    result->_target = target;
    result->_defaultTarget = defaultTarget;
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

- (void)forwardInvocation:(id)invocation
{
  if (WebThreadIsCurrent())
  {
    [invocation retainArguments];

    WebThreadCallDelegate();
  }

  else
  {
    [invocation selector];
    if (objc_opt_respondsToSelector())
    {
      [invocation invokeWithTarget:self->_target];
    }

    else
    {
      [invocation selector];
      if (objc_opt_respondsToSelector())
      {
        defaultTarget = self->_defaultTarget;

        [invocation invokeWithTarget:defaultTarget];
      }
    }
  }
}

@end