@interface _WebSafeAsyncForwarder
- (_WebSafeAsyncForwarder)initWithForwarder:(id)forwarder;
- (id)methodSignatureForSelector:(SEL)selector;
- (uint64_t)forwardInvocation:(WTF *)this;
- (uint64_t)forwardInvocation:(uint64_t)invocation;
- (void)forwardInvocation:(id)invocation;
- (void)forwardInvocation:(void *)invocation;
@end

@implementation _WebSafeAsyncForwarder

- (_WebSafeAsyncForwarder)initWithForwarder:(id)forwarder
{
  v6.receiver = self;
  v6.super_class = _WebSafeAsyncForwarder;
  result = [(_WebSafeAsyncForwarder *)&v6 init];
  if (result)
  {
    v5 = result;
    objc_storeWeak(&result->_forwarder, forwarder);
    return v5;
  }

  return result;
}

- (void)forwardInvocation:(id)invocation
{
  if (WebThreadIsCurrent())
  {
    WTF::RunLoop::mainSingleton([invocation retainArguments]);
    Weak = objc_loadWeak(&self->_forwarder);
    v6 = Weak;
    if (Weak)
    {
      v7 = Weak;
    }

    if (invocation)
    {
      invocationCopy = invocation;
    }

    v9 = WTF::fastMalloc(0x18);
    *v9 = &unk_1F472C3D8;
    v9[1] = v6;
    v9[2] = invocation;
    v11 = v9;
    WTF::RunLoop::dispatch();
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  else
  {
    v10 = objc_loadWeak(&self->_forwarder);

    [v10 forwardInvocation:invocation];
  }
}

- (uint64_t)forwardInvocation:(uint64_t)invocation
{
  v2 = *(invocation + 8);
  *(invocation + 8) = 0;
  if (v2)
  {
  }

  v3 = *invocation;
  *invocation = 0;
  if (v3)
  {
  }

  return invocation;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  Weak = objc_loadWeak(&self->_forwarder);

  return [Weak methodSignatureForSelector:selector];
}

- (void)forwardInvocation:(void *)invocation
{
  *invocation = &unk_1F472C3D8;
  v2 = invocation[2];
  invocation[2] = 0;
  if (v2)
  {
  }

  v3 = invocation[1];
  invocation[1] = 0;
  if (v3)
  {
  }

  return invocation;
}

- (uint64_t)forwardInvocation:(WTF *)this
{
  *this = &unk_1F472C3D8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
  }

  return WTF::fastFree(this, a2);
}

@end