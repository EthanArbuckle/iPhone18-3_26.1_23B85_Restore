@interface OZFxPlugVersioningAPI
- (BOOL)updateVersionAtCreation:(unsigned int)creation;
- (OZFxPlugVersioningAPI)initWithPluginLock:(shared_ptr<OZFxPlugSharedLock>)lock;
- (id).cxx_construct;
- (unsigned)versionAtCreation;
@end

@implementation OZFxPlugVersioningAPI

- (OZFxPlugVersioningAPI)initWithPluginLock:(shared_ptr<OZFxPlugSharedLock>)lock
{
  ptr = lock.__ptr_;
  v10.receiver = self;
  v10.super_class = OZFxPlugVersioningAPI;
  v4 = [(OZFxPlugVersioningAPI *)&v10 init:lock.__ptr_];
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

- (unsigned)versionAtCreation
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
    v3 = (*(**v7[0] + 192))(*v7[0]);
  }

  else
  {
    v3 = -1;
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v7);
  return v3;
}

- (BOOL)updateVersionAtCreation:(unsigned int)creation
{
  v3 = *&creation;
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v16 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v17, &ptr);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v6 = *v17[0];
  if (*v17[0])
  {
    TXParagraphStyleFolder_Factory::createInstance(*v17[0], v5);
    (*(*v6 + 184))(v6, v3);
    PCPrint("File %s, line %d should not have been reached:\n\t", v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Ozone/Effects/FxFilter/OZFxPlugHostPropertiesAPI.mm");
    pcAbortImpl();
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v17);
  return 0;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end