@interface OZFxPrincipalDelegate
- (OZFxPrincipalDelegate)initWithPluginLock:(shared_ptr<OZFxPlugSharedLock>)lock;
- (id).cxx_construct;
- (id)fxServiceProxy;
@end

@implementation OZFxPrincipalDelegate

- (OZFxPrincipalDelegate)initWithPluginLock:(shared_ptr<OZFxPlugSharedLock>)lock
{
  ptr = lock.__ptr_;
  v10.receiver = self;
  v10.super_class = OZFxPrincipalDelegate;
  v4 = [(OZFxPrincipalDelegate *)&v10 init:lock.__ptr_];
  v5 = v4;
  if (v4)
  {
    v7 = *ptr;
    v6 = *(ptr + 1);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v4->_fxPlugLock.__cntrl_;
    v5->_fxPlugLock.__ptr_ = v7;
    v5->_fxPlugLock.__cntrl_ = v6;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }
  }

  return v5;
}

- (id)fxServiceProxy
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v6 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v7, &ptr);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*v7[0])
  {
    pluginKitPlug = [objc_msgSend(*(*v7[0] + 16) pluginKitPlug];
  }

  else
  {
    pluginKitPlug = 0;
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v7);
  return pluginKitPlug;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end