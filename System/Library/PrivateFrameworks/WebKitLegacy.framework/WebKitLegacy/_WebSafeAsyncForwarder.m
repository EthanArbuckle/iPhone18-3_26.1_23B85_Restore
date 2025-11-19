@interface _WebSafeAsyncForwarder
- (_WebSafeAsyncForwarder)initWithForwarder:(id)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (uint64_t)forwardInvocation:(WTF *)this;
- (uint64_t)forwardInvocation:(uint64_t)a1;
- (void)forwardInvocation:(id)a3;
- (void)forwardInvocation:(void *)a1;
@end

@implementation _WebSafeAsyncForwarder

- (_WebSafeAsyncForwarder)initWithForwarder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _WebSafeAsyncForwarder;
  result = [(_WebSafeAsyncForwarder *)&v6 init];
  if (result)
  {
    v5 = result;
    objc_storeWeak(&result->_forwarder, a3);
    return v5;
  }

  return result;
}

- (void)forwardInvocation:(id)a3
{
  if (WebThreadIsCurrent())
  {
    WTF::RunLoop::mainSingleton([a3 retainArguments]);
    Weak = objc_loadWeak(&self->_forwarder);
    v6 = Weak;
    if (Weak)
    {
      v7 = Weak;
    }

    if (a3)
    {
      v8 = a3;
    }

    v9 = WTF::fastMalloc(0x18);
    *v9 = &unk_1F472C3D8;
    v9[1] = v6;
    v9[2] = a3;
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

    [v10 forwardInvocation:a3];
  }
}

- (uint64_t)forwardInvocation:(uint64_t)a1
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
  }

  return a1;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  Weak = objc_loadWeak(&self->_forwarder);

  return [Weak methodSignatureForSelector:a3];
}

- (void)forwardInvocation:(void *)a1
{
  *a1 = &unk_1F472C3D8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
  }

  return a1;
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