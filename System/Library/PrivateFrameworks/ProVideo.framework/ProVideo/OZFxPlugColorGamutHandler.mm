@interface OZFxPlugColorGamutHandler
- (OZFxPlugColorGamutHandler)initWithPluginLock:(shared_ptr<OZFxPlugSharedLock>)lock;
- (id).cxx_construct;
- (id)colorMatrixFromDesiredRGBToYCbCr;
- (id)colorMatrixFromYCbCrToDesiredRGB;
- (id)pcFloat33MatrixToFxMatrix44:(const float *)matrix44;
- (unint64_t)colorPrimaries;
@end

@implementation OZFxPlugColorGamutHandler

- (OZFxPlugColorGamutHandler)initWithPluginLock:(shared_ptr<OZFxPlugSharedLock>)lock
{
  ptr = lock.__ptr_;
  v10.receiver = self;
  v10.super_class = OZFxPlugColorGamutHandler;
  v4 = [(OZFxPlugColorGamutHandler *)&v10 init:lock.__ptr_];
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

- (id)pcFloat33MatrixToFxMatrix44:(const float *)matrix44
{
  v3 = 0;
  v12 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v4 = v7;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      v4[i] = matrix44[i];
    }

    *(&v7[2 * v3++ + 1] + 1) = 0;
    matrix44 += 3;
    v4 += 4;
  }

  while (v3 != 3);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0x3FF0000000000000;
  return [[FxMatrix44 alloc] initWithColorMatrix44Data:v7];
}

- (id)colorMatrixFromDesiredRGBToYCbCr
{
  v12 = *MEMORY[0x277D85DE8];
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v9 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v10, &ptr);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (*v10[0])
  {
    WorkingGamut = getWorkingGamut(*v10[0]);
    PCGetWorkingColorSpaceRGBToYCbCrMatrix(WorkingGamut, v11);
    v5 = [(OZFxPlugColorGamutHandler *)self pcFloat33MatrixToFxMatrix44:v11, ptr];
  }

  else
  {
    v5 = objc_alloc_init(FxMatrix44);
  }

  v6 = v5;
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v10);
  return v6;
}

- (id)colorMatrixFromYCbCrToDesiredRGB
{
  v12 = *MEMORY[0x277D85DE8];
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v9 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v10, &ptr);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (*v10[0])
  {
    WorkingGamut = getWorkingGamut(*v10[0]);
    PCGetWorkingColorSpaceYCbCrToRGBMatrix(WorkingGamut, v11);
    v5 = [(OZFxPlugColorGamutHandler *)self pcFloat33MatrixToFxMatrix44:v11, ptr];
  }

  else
  {
    v5 = objc_alloc_init(FxMatrix44);
  }

  v6 = v5;
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v10);
  return v6;
}

- (unint64_t)colorPrimaries
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
    v3 = getWorkingGamut(*v7[0]) == 1;
  }

  else
  {
    v3 = 0;
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v7);
  return v3;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end