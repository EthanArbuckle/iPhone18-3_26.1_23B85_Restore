@interface OZFxPlugGamutNotificationReceiver
- (OZFxPlugGamutNotificationReceiver)initWithPluginLock:(shared_ptr<OZFxPlugSharedLock>)lock;
- (id).cxx_construct;
- (void)handleAllParameterResetNotification:(id)notification;
- (void)handleProjectColorChangeNotification:(id)notification;
@end

@implementation OZFxPlugGamutNotificationReceiver

- (OZFxPlugGamutNotificationReceiver)initWithPluginLock:(shared_ptr<OZFxPlugSharedLock>)lock
{
  ptr = lock.__ptr_;
  v10.receiver = self;
  v10.super_class = OZFxPlugGamutNotificationReceiver;
  v4 = [(OZFxPlugGamutNotificationReceiver *)&v10 init:lock.__ptr_];
  v5 = v4;
  if (v4)
  {
    v7 = *ptr;
    v6 = *(ptr + 1);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v4->_pluginLock.__cntrl_;
    v5->_pluginLock.__ptr_ = v7;
    v5->_pluginLock.__cntrl_ = v6;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }
  }

  return v5;
}

- (void)handleProjectColorChangeNotification:(id)notification
{
  cntrl = self->_pluginLock.__cntrl_;
  ptr = self->_pluginLock.__ptr_;
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
    OZChannelBase::setRangeName(*v7[0], v4);
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v7);
}

- (void)handleAllParameterResetNotification:(id)notification
{
  cntrl = self->_pluginLock.__cntrl_;
  ptr = self->_pluginLock.__ptr_;
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
    OZChannelBase::setRangeName(*v7[0], v4);
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v7);
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end