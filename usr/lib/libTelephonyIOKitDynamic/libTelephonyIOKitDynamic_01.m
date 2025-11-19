void std::__shared_ptr_pointer<ctu::power::manager *,std::shared_ptr<ctu::power::manager>::__shared_ptr_default_delete<ctu::power::manager,ctu::power::manager>,std::allocator<ctu::power::manager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ctu::power::manager *,std::shared_ptr<ctu::power::manager>::__shared_ptr_default_delete<ctu::power::manager,ctu::power::manager>,std::allocator<ctu::power::manager>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    ctu::power::manager::~manager(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<ctu::power::manager *,std::shared_ptr<ctu::power::manager>::__shared_ptr_default_delete<ctu::power::manager,ctu::power::manager>,std::allocator<ctu::power::manager>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<std::atomic<BOOL>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EB0878;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<ctu::TrackedGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EB08C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9540] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9428], MEMORY[0x29EDC9380]);
}

void std::__shared_ptr_pointer<ctu::power::manager::listenerHandle *,std::shared_ptr<ctu::power::manager::listenerHandle>::__shared_ptr_default_delete<ctu::power::manager::listenerHandle,ctu::power::manager::listenerHandle>,std::allocator<ctu::power::manager::listenerHandle>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ctu::power::manager::listenerHandle *,std::shared_ptr<ctu::power::manager::listenerHandle>::__shared_ptr_default_delete<ctu::power::manager::listenerHandle,ctu::power::manager::listenerHandle>,std::allocator<ctu::power::manager::listenerHandle>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    ctu::power::manager::listenerHandle::~listenerHandle(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<ctu::power::manager::listenerHandle *,std::shared_ptr<ctu::power::manager::listenerHandle>::__shared_ptr_default_delete<ctu::power::manager::listenerHandle,ctu::power::manager::listenerHandle>,std::allocator<ctu::power::manager::listenerHandle>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::unique_lock<ctu::UnfairLock>::~unique_lock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    MEMORY[0x29C284CC0](*a1);
  }

  return a1;
}

uint64_t ctu::iokit::asString@<X0>(ctu::iokit *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = this;
  ctu::appendLabelIfBitSet();
  ctu::appendLabelIfBitSet();
  ctu::appendLabelIfBitSet();
  ctu::appendLabelIfBitSet();
  ctu::appendLabelIfBitSet();
  ctu::appendLabelIfBitSet();
  ctu::appendLabelIfBitSet();
  ctu::appendLabelIfBitSet();
  ctu::appendLabelIfBitSet();
  ctu::appendLabelIfBitSet();
  return MEMORY[0x29C284D40](a2, v4, " | ");
}

void sub_298252F2C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::iokit::IOHIDController::create@<X0>(NSObject **a1@<X0>, NSObject **a2@<X1>, std::__shared_weak_count_vtbl **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  v6 = operator new(0x48uLL);
  v7 = *a1;
  v13 = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *a2;
  v12 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  ctu::iokit::IOHIDController::IOHIDController(v6, &v13, &v12);
  v9 = operator new(0x20uLL);
  v9->__vftable = &unk_2A1EB0990;
  v9->__shared_owners_ = 0;
  v9->__shared_weak_owners_ = 0;
  v9[1].__vftable = v6;
  v10 = v6->~__shared_weak_count_0;
  if (v10)
  {
    if (v10->__shared_owners_ != -1)
    {
      goto LABEL_10;
    }

    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6->~__shared_weak_count = v6;
    v6->~__shared_weak_count_0 = v9;
    std::__shared_weak_count::__release_weak(v10);
  }

  else
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6->~__shared_weak_count = v6;
    v6->~__shared_weak_count_0 = v9;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
LABEL_10:
  *a3 = v6;
  a3[1] = v9;
  if (v8)
  {
    dispatch_release(v8);
  }

  if (v7)
  {
    dispatch_release(v7);
  }

  return ctu::iokit::IOHIDController::init(v6);
}

void sub_298253080(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<ctu::iokit::IOHIDController> ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::make_shared_ptr<ctu::iokit::IOHIDController>(ctu::iokit::IOHIDController*)::{lambda(ctu::iokit::IOHIDController*)#1}::operator() const(ctu::iokit::IOHIDController*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void sub_2982530A8(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  if (v2)
  {
    dispatch_release(v2);
  }

  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t ctu::iokit::IOHIDController::init(ctu::iokit::IOHIDController *this)
{
  v2 = *(this + 1);
  if (!v2 || (v3 = *this, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = this;
  v7 = *(this + 2);
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  v10 = 0;
  v11 = 0;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::init(void)::$_0>(ctu::iokit::IOHIDController::init(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ctu::iokit::IOHIDController::init(void)::$_0,dispatch_queue_s *::default_delete<ctu::iokit::IOHIDController::init(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  std::unique_ptr<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::init(void)::$_0>(ctu::iokit::IOHIDController::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::iokit::IOHIDController::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&v10);
  std::unique_ptr<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::init(void)::$_0>(ctu::iokit::IOHIDController::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::iokit::IOHIDController::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&v11);
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  return 1;
}

uint64_t ctu::iokit::IOHIDController::IOHIDController(uint64_t a1, NSObject **a2, NSObject **a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v5 = *a2;
  *(a1 + 16) = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *a3;
  *(a1 + 24) = *a3;
  if (v6)
  {
    dispatch_retain(v6);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  return a1;
}

void ctu::iokit::IOHIDController::~IOHIDController(ctu::iokit::IOHIDController *this)
{
  if (*(this + 4))
  {
    if (*(this + 56) == 1)
    {
      v2 = *(this + 2);
      MEMORY[0x29C284AB0]();
      *(this + 56) = 0;
      v3 = *(this + 4);
    }

    IOHIDEventSystemClientUnregisterEventBlock();
    v4 = *(this + 8);
    if (v4)
    {
      _Block_release(v4);
    }

    CFRelease(*(this + 4));
  }

  v5 = *(this + 6);
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(this + 5);
  if (v6)
  {
    _Block_release(v6);
  }

  v7 = *(this + 3);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 2);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 1);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }
}

uint64_t ctu::iokit::IOHIDController::stop_sync(uint64_t this)
{
  if (*(this + 56) == 1)
  {
    v1 = this;
    this = *(this + 32);
    if (this)
    {
      this = MEMORY[0x29C284AB0](this, *(v1 + 16));
      *(v1 + 56) = 0;
    }
  }

  return this;
}

void ctu::iokit::IOHIDController::registerProxCallback(uint64_t *a1, const void **a2)
{
  if (*a2)
  {
    v3 = _Block_copy(*a2);
  }

  else
  {
    v3 = 0;
  }

  v4 = a1[1];
  if (!v4 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[2];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  v11 = 0;
  v12 = 0;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::registerProxCallback(dispatch::block<void({block_pointer})>)::$_0>(ctu::iokit::IOHIDController::registerProxCallback(dispatch::block<void({block_pointer})>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ctu::iokit::IOHIDController::registerProxCallback(dispatch::block<void({block_pointer})>)::$_0,dispatch_queue_s *::default_delete<ctu::iokit::IOHIDController::registerProxCallback(dispatch::block<void({block_pointer})>)::$_0>>)::{lambda(void *)#1}::__invoke);
  std::unique_ptr<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::init(void)::$_0>(ctu::iokit::IOHIDController::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::iokit::IOHIDController::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&v11);
  std::unique_ptr<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::init(void)::$_0>(ctu::iokit::IOHIDController::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::iokit::IOHIDController::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&v12);
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void ctu::iokit::IOHIDController::registerKeyboardCallback(uint64_t *a1, const void **a2)
{
  if (*a2)
  {
    v3 = _Block_copy(*a2);
  }

  else
  {
    v3 = 0;
  }

  v4 = a1[1];
  if (!v4 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[2];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  v11 = 0;
  v12 = 0;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::registerKeyboardCallback(dispatch::block<void({block_pointer})(BOOL)>)::$_0>(ctu::iokit::IOHIDController::registerKeyboardCallback(dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ctu::iokit::IOHIDController::registerKeyboardCallback(dispatch::block<void({block_pointer})(BOOL)>)::$_0,dispatch_queue_s *::default_delete<ctu::iokit::IOHIDController::registerKeyboardCallback(dispatch::block<void({block_pointer})(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  std::unique_ptr<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::init(void)::$_0>(ctu::iokit::IOHIDController::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::iokit::IOHIDController::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&v11);
  std::unique_ptr<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::init(void)::$_0>(ctu::iokit::IOHIDController::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::iokit::IOHIDController::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&v12);
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void ctu::iokit::IOHIDController::start(ctu::iokit::IOHIDController *this)
{
  v2 = *(this + 1);
  if (!v2 || (v3 = *this, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = this;
  v7 = *(this + 2);
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  v9 = 0;
  v10 = 0;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::start(void)::$_0>(ctu::iokit::IOHIDController::start(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ctu::iokit::IOHIDController::start(void)::$_0,dispatch_queue_s *::default_delete<ctu::iokit::IOHIDController::start(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  std::unique_ptr<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::init(void)::$_0>(ctu::iokit::IOHIDController::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::iokit::IOHIDController::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&v9);
  std::unique_ptr<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::init(void)::$_0>(ctu::iokit::IOHIDController::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::iokit::IOHIDController::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&v10);
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void ctu::iokit::IOHIDController::queryHIDEventTrigger(ctu::iokit::IOHIDController *this)
{
  v2 = *(this + 1);
  if (!v2 || (v3 = *this, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = this;
  v7 = *(this + 2);
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  v9 = 0;
  v10 = 0;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::queryHIDEventTrigger(void)::$_0>(ctu::iokit::IOHIDController::queryHIDEventTrigger(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ctu::iokit::IOHIDController::queryHIDEventTrigger(void)::$_0,dispatch_queue_s *::default_delete<ctu::iokit::IOHIDController::queryHIDEventTrigger(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  std::unique_ptr<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::init(void)::$_0>(ctu::iokit::IOHIDController::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::iokit::IOHIDController::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&v9);
  std::unique_ptr<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::init(void)::$_0>(ctu::iokit::IOHIDController::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::iokit::IOHIDController::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&v10);
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

const void **ctu::iokit::IOHIDController::queryHIDEventTrigger_sync(IOHIDEventSystemClientRef *this)
{
  v2 = *MEMORY[0x29EDB8ED8];
  KeyboardEvent = IOHIDEventCreateKeyboardEvent();
  v3 = IOHIDEventSystemClientCopyServices(this[4]);
  theArray = v3;
  if (v3 && this[8])
  {
    for (i = 0; i < CFArrayGetCount(v3); ++i)
    {
      CFArrayGetValueAtIndex(theArray, i);
      v6 = 0xAAAAAAAAAAAAAAAALL;
      v6 = IOHIDServiceClientCopyEvent();
      if (v6)
      {
        (*(this[8] + 2))();
      }

      ctu::SharedRef<__IOHIDEvent,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__IOHIDEvent>::~SharedRef(&v6);
      v3 = theArray;
    }
  }

  ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(&theArray);
  return ctu::SharedRef<__IOHIDEvent,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__IOHIDEvent>::~SharedRef(&KeyboardEvent);
}

void sub_298253728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::SharedRef<__IOHIDEvent,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__IOHIDEvent>::~SharedRef(va);
  _Unwind_Resume(a1);
}

void ctu::iokit::IOHIDController::stop(ctu::iokit::IOHIDController *this)
{
  v2 = *(this + 1);
  if (!v2 || (v3 = *this, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = this;
  v7 = *(this + 2);
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  v9 = 0;
  v10 = 0;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::stop(void)::$_0>(ctu::iokit::IOHIDController::stop(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ctu::iokit::IOHIDController::stop(void)::$_0,dispatch_queue_s *::default_delete<ctu::iokit::IOHIDController::stop(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  std::unique_ptr<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::init(void)::$_0>(ctu::iokit::IOHIDController::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::iokit::IOHIDController::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&v9);
  std::unique_ptr<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::init(void)::$_0>(ctu::iokit::IOHIDController::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::iokit::IOHIDController::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&v10);
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

uint64_t ctu::iokit::IOHIDController::setHIDMatchingDictionary@<X0>(unsigned int a1@<W1>, unsigned int a2@<W2>, CFMutableDictionaryRef *a3@<X8>)
{
  *a3 = 0;
  v7 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v10 = Mutable;
  if (Mutable)
  {
    *a3 = Mutable;
    v13 = 0;
    ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&v13);
  }

  ctu::cf::insert<char const*,unsigned int>(v10, "PrimaryUsagePage", a1, v7, v9);
  return ctu::cf::insert<char const*,unsigned int>(v10, "PrimaryUsage", a2, v7, v11);
}

const void **ctu::SharedRef<__IOHIDEvent,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__IOHIDEvent>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__shared_ptr_pointer<ctu::iokit::IOHIDController *,std::shared_ptr<ctu::iokit::IOHIDController> ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::make_shared_ptr<ctu::iokit::IOHIDController>(ctu::iokit::IOHIDController*)::{lambda(ctu::iokit::IOHIDController *)#1},std::allocator<ctu::iokit::IOHIDController>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ctu::iokit::IOHIDController *,std::shared_ptr<ctu::iokit::IOHIDController> ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::make_shared_ptr<ctu::iokit::IOHIDController>(ctu::iokit::IOHIDController*)::{lambda(ctu::iokit::IOHIDController *)#1},std::allocator<ctu::iokit::IOHIDController>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::shared_ptr<ctu::iokit::IOHIDController> ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::make_shared_ptr<ctu::iokit::IOHIDController>(ctu::iokit::IOHIDController*)::{lambda(ctu::iokit::IOHIDController*)#1}::operator() const(ctu::iokit::IOHIDController*)::{lambda(void *)#1}::__invoke(ctu::iokit::IOHIDController *a1)
{
  if (a1)
  {
    ctu::iokit::IOHIDController::~IOHIDController(a1);

    operator delete(v1);
  }
}

void **std::unique_ptr<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::init(void)::$_0>(ctu::iokit::IOHIDController::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::iokit::IOHIDController::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    operator delete(v2);
  }

  return a1;
}

void **dispatch::async<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::init(void)::$_0>(ctu::iokit::IOHIDController::init(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ctu::iokit::IOHIDController::init(void)::$_0,dispatch_queue_s *::default_delete<ctu::iokit::IOHIDController::init(void)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v15 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *MEMORY[0x29EDB8ED8];
  v4 = IOHIDEventSystemClientCreate();
  v2[4] = v4;
  if (v4)
  {
    v20 = 0;
    Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x29EDB9000]);
    if (Mutable)
    {
      v6 = v20;
      v20 = Mutable;
      aBlock[0] = v6;
      ctu::SharedRef<__CFArray,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray>::~SharedRef(aBlock);
    }

    v19 = 0xAAAAAAAAAAAAAAAALL;
    ctu::iokit::IOHIDController::setHIDMatchingDictionary(0xFF00u, 8u, &v19);
    ctu::cf::insert<__CFDictionary *>(v20, v19);
    cf = 0xAAAAAAAAAAAAAAAALL;
    ctu::iokit::IOHIDController::setHIDMatchingDictionary(0xBu, 1u, &cf);
    ctu::cf::insert<__CFDictionary *>(v20, cf);
    v7 = v2[4];
    IOHIDEventSystemClientSetMatchingMultiple();
    v8 = v2[1];
    if (!v8 || (v9 = *v2, (v10 = std::__shared_weak_count::lock(v8)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v11 = v10;
    p_shared_weak_owners = &v10->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZZN3ctu5iokit15IOHIDController4initEvENK3__0clEv_block_invoke;
    aBlock[3] = &__block_descriptor_56_e8_40c52_ZTSNSt3__18weak_ptrIN3ctu5iokit15IOHIDControllerEEE_e35_v40__0_v8_v16_v24____IOHIDEvent__32l;
    aBlock[4] = v2;
    aBlock[5] = v9;
    v17 = v11;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v2[8] = _Block_copy(aBlock);
    v13 = v2[4];
    IOHIDEventSystemClientRegisterEventBlock();
    if (v17)
    {
      std::__shared_weak_count::__release_weak(v17);
    }

    std::__shared_weak_count::__release_weak(v11);
    ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&cf);
    ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&v19);
    ctu::SharedRef<__CFArray,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray>::~SharedRef(&v20);
  }

  operator delete(v1);
  return std::unique_ptr<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::init(void)::$_0>(ctu::iokit::IOHIDController::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::iokit::IOHIDController::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&v15);
}

void sub_298253C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, const void *a18)
{
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  std::__shared_weak_count::__release_weak(v19);
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&a18);
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef((v20 - 64));
  ctu::SharedRef<__CFArray,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray>::~SharedRef((v20 - 56));
  operator delete(v18);
  std::unique_ptr<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::init(void)::$_0>(ctu::iokit::IOHIDController::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::iokit::IOHIDController::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c52_ZTSNSt3__18weak_ptrIN3ctu5iokit15IOHIDControllerEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c52_ZTSNSt3__18weak_ptrIN3ctu5iokit15IOHIDControllerEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void **dispatch::async<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::registerProxCallback(dispatch::block<void({block_pointer})(unsigned int)>)::$_0>(ctu::iokit::IOHIDController::registerProxCallback(dispatch::block<void({block_pointer})(unsigned int)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ctu::iokit::IOHIDController::registerProxCallback(dispatch::block<void({block_pointer})(unsigned int)>)::$_0,dispatch_queue_s *::default_delete<ctu::iokit::IOHIDController::registerProxCallback(dispatch::block<void({block_pointer})(unsigned int)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v7 = a1;
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];
  if (v2)
  {
    v2 = _Block_copy(v2);
  }

  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = v1[1];
  if (v5)
  {
    _Block_release(v5);
  }

  operator delete(v1);
  return std::unique_ptr<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::init(void)::$_0>(ctu::iokit::IOHIDController::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::iokit::IOHIDController::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&v7);
}

void **dispatch::async<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::registerKeyboardCallback(dispatch::block<void({block_pointer})(BOOL)>)::$_0>(ctu::iokit::IOHIDController::registerKeyboardCallback(dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ctu::iokit::IOHIDController::registerKeyboardCallback(dispatch::block<void({block_pointer})(BOOL)>)::$_0,dispatch_queue_s *::default_delete<ctu::iokit::IOHIDController::registerKeyboardCallback(dispatch::block<void({block_pointer})(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v7 = a1;
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];
  if (v2)
  {
    v2 = _Block_copy(v2);
  }

  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = v1[1];
  if (v5)
  {
    _Block_release(v5);
  }

  operator delete(v1);
  return std::unique_ptr<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::init(void)::$_0>(ctu::iokit::IOHIDController::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::iokit::IOHIDController::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&v7);
}

void **dispatch::async<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::start(void)::$_0>(ctu::iokit::IOHIDController::start(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ctu::iokit::IOHIDController::start(void)::$_0,dispatch_queue_s *::default_delete<ctu::iokit::IOHIDController::start(void)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v6 = a1;
  v1 = *a1;
  v2 = **a1;
  if (*(v2 + 56) == 1)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      MEMORY[0x29C284AB0](v3, *(v2 + 16));
      *(v2 + 56) = 0;
    }
  }

  if (*(v2 + 32))
  {
    v4 = *(v2 + 16);
    IOHIDEventSystemClientScheduleWithDispatchQueue();
    ctu::iokit::IOHIDController::queryHIDEventTrigger_sync(v2);
    *(v2 + 56) = 1;
  }

  operator delete(v1);
  return std::unique_ptr<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::init(void)::$_0>(ctu::iokit::IOHIDController::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::iokit::IOHIDController::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&v6);
}

void sub_298253E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::init(void)::$_0>(ctu::iokit::IOHIDController::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::iokit::IOHIDController::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void **dispatch::async<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::queryHIDEventTrigger(void)::$_0>(ctu::iokit::IOHIDController::queryHIDEventTrigger(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ctu::iokit::IOHIDController::queryHIDEventTrigger(void)::$_0,dispatch_queue_s *::default_delete<ctu::iokit::IOHIDController::queryHIDEventTrigger(void)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v3 = a1;
  v1 = *a1;
  ctu::iokit::IOHIDController::queryHIDEventTrigger_sync(**a1);
  operator delete(v1);
  return std::unique_ptr<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::init(void)::$_0>(ctu::iokit::IOHIDController::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::iokit::IOHIDController::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&v3);
}

void sub_298253E90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::init(void)::$_0>(ctu::iokit::IOHIDController::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::iokit::IOHIDController::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void **dispatch::async<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::stop(void)::$_0>(ctu::iokit::IOHIDController::stop(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ctu::iokit::IOHIDController::stop(void)::$_0,dispatch_queue_s *::default_delete<ctu::iokit::IOHIDController::stop(void)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v5 = a1;
  v1 = *a1;
  v2 = **a1;
  if (*(v2 + 56) == 1)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      MEMORY[0x29C284AB0](v3, *(v2 + 16));
      *(v2 + 56) = 0;
    }
  }

  operator delete(v1);
  return std::unique_ptr<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::init(void)::$_0>(ctu::iokit::IOHIDController::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::iokit::IOHIDController::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&v5);
}

void sub_298253F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::init(void)::$_0>(ctu::iokit::IOHIDController::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::iokit::IOHIDController::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t TelephonyUtilWriteToCompletion(int __fd, char *__buf, size_t __nbyte, _DWORD *a4)
{
  *a4 = 0;
  if (!__nbyte)
  {
    return 0;
  }

  v5 = __nbyte;
  while (1)
  {
    v8 = write(__fd, __buf, v5);
    if (v8 < 0)
    {
      break;
    }

    *a4 += v8;
    __buf += v8;
    v5 -= v8;
    if (!v5)
    {
      return 0;
    }
  }

  return *__error();
}

ssize_t TelephonyUtilUnblockableReadWithTimeout(int a1, unsigned int a2, void *a3, unsigned int a4, unsigned int a5)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  if (a1 < 0)
  {
    return 4294967287;
  }

  memset(&v15, 0, sizeof(v15));
  if (__darwin_check_fd_set_overflow(a1, &v15, 0))
  {
    v15.fds_bits[a1 >> 5] |= 1 << a1;
  }

  if ((a2 & 0x80000000) == 0 && __darwin_check_fd_set_overflow(a2, &v15, 0))
  {
    v15.fds_bits[a2 >> 5] |= 1 << a2;
  }

  if (a5 == -1)
  {
    v10 = 0;
  }

  else
  {
    v13 = a5 / 0x3E8uLL;
    LODWORD(v14) = 1000 * (a5 % 0x3E8);
    v10 = &v13;
  }

  if (a1 <= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = a1;
  }

  result = select(v12 + 1, &v15, 0, 0, v10);
  if (result >= 1)
  {
    if (a2 & 0x80000000) == 0 && __darwin_check_fd_set_overflow(a2, &v15, 0) && ((v15.fds_bits[a2 >> 5] >> a2))
    {
      return 0;
    }

    else
    {
      return read(a1, a3, a4);
    }
  }

  return result;
}

BOOL TelephonyUtilUnblockableReadToCompletionWithTimeout(int a1, unsigned int a2, char *a3, unsigned int a4, unsigned int a5)
{
  do
  {
    v9 = a4;
    if (!a4)
    {
      break;
    }

    v10 = TelephonyUtilUnblockableReadWithTimeout(a1, a2, a3, a4, a5);
    a3 += v10;
    a4 = v9 - v10;
  }

  while (v10 > 0);
  return v9 == 0;
}

uint64_t TelephonyUtilLogBinaryToBuffer(_BYTE *a1, unsigned int a2, unsigned __int8 *a3, int a4)
{
  v4 = a1;
  v34 = *MEMORY[0x29EDCA608];
  if (a4 < 1)
  {
    v8 = 0;
    *a1 = 0;
  }

  else
  {
    v5 = a4;
    v7 = 0;
    LODWORD(v8) = 0;
    v26 = a4;
    v9 = a4;
    while (1)
    {
      v10 = v9 - 32;
      if (v9 >= 32)
      {
        v9 = 32;
      }

      memset(&v33[9], 0, 32);
      v11 = v9 <= 1 ? 1 : v9;
      v32 = 0uLL;
      memset(v33, 0, 144);
      v30 = 0uLL;
      v31 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      if (v7 >= v26)
      {
        *(v33 + 15) = 538976288;
        *&v22 = 0x2020202020202020;
        *(&v22 + 1) = 0x2020202020202020;
        v32 = v22;
        v33[0] = v22;
        v30 = v22;
        v31 = v22;
        v21 = 99;
        v28 = v22;
        v29 = v22;
      }

      else
      {
        v12 = v4;
        v13 = (102 - 3 * v11) - 3;
        v14 = a3;
        v15 = v11;
        v16 = &v28 + 1;
        do
        {
          v17 = *v14++;
          v18 = a0123456789abcd[v17 & 0xF];
          *(v16 - 1) = a0123456789abcd[v17 >> 4];
          *v16 = v18;
          v16[1] = 32;
          v16 += 3;
          v13 += 3;
          --v15;
        }

        while (v15);
        memset(v16 - 1, 32, (3 * (33 - v11)));
        for (i = 0; i != v11; ++i)
        {
          v20 = a3[i];
          if ((v20 - 32) > 0x5Eu || a3[i] == 92 || a3[i] == 37)
          {
            v20 = 46;
          }

          *(&v28 + v13 + i) = v20;
        }

        v21 = v13 + i;
        v4 = v12;
        v5 = a4;
      }

      *(&v28 + v21) = 10;
      v8 = (snprintf(&v4[v8], a2 - v8, "%04x  %s", v7, &v28) + v8);
      if (v8 >= a2)
      {
        break;
      }

      v7 += 32;
      a3 += 32;
      v9 = v10;
      if (v7 >= v5)
      {
        goto LABEL_24;
      }
    }

    v8 = a2;
  }

LABEL_24:
  v23 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t TelephonyUtilDecodeHexWithDefault(int a1, unsigned int a2)
{
  v2 = a1 - 48;
  if ((a1 - 97) >= 6)
  {
    v3 = a2;
  }

  else
  {
    v3 = a1 - 87;
  }

  if ((a1 - 65) <= 5)
  {
    v4 = a1 - 55;
  }

  else
  {
    v4 = v3;
  }

  if (v2 <= 9)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t TelephonyUtilEncodeHex(uint64_t result, _BYTE *a2, _BYTE *a3)
{
  *a2 = a0123456789abcd[result >> 4];
  *a3 = a0123456789abcd[result & 0xF];
  return result;
}

uint64_t TelephonyUtilBinToHex(_BYTE *a1, unint64_t a2, unsigned __int8 *a3, unint64_t a4)
{
  v4 = (a2 - 1) >> 1;
  if (a2 > 2 * a4)
  {
    v4 = a4;
  }

  v5 = a1;
  if (v4)
  {
    v6 = a1;
    do
    {
      v7 = *a3++;
      v8 = a0123456789abcd[v7 & 0xF];
      *v6 = a0123456789abcd[v7 >> 4];
      v5 = v6 + 2;
      v6[1] = v8;
      v6 += 2;
      --v4;
    }

    while (v4);
  }

  *v5 = 0;
  return (v5 - a1 + 1);
}

uint64_t TelephonyUtilHexToBin(_BYTE *a1, uint64_t a2, char *__s)
{
  v6 = strlen(__s);
  LODWORD(v7) = v6 >> 1;
  v8 = v6 & 1;
  if (a2 - v8 >= (v6 >> 1))
  {
    v7 = v7;
  }

  else
  {
    v7 = (a2 - v8);
  }

  if (v6)
  {
    v9 = *__s;
    v10 = v9 - 48;
    v11 = v9 - 65;
    if ((v9 - 97) >= 6)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 - 87;
    }

    v13 = v9 - 55;
    if (v11 > 5)
    {
      v13 = v12;
    }

    if (v10 < 0xA)
    {
      v13 = v10;
    }

    *a1 = v13;
  }

  v14 = v6 & 1;
  if (v7)
  {
    v15 = &a1[v8];
    v16 = &__s[v8 + 1];
    v17 = v7;
    do
    {
      v18 = *(v16 - 1);
      v19 = v18 - 48;
      v20 = v18 - 65;
      if ((v18 - 97) >= 6)
      {
        v21 = 0;
      }

      else
      {
        v21 = v18 - 87;
      }

      v22 = v18 - 55;
      if (v20 > 5)
      {
        v22 = v21;
      }

      if (v19 < 0xA)
      {
        v22 = v19;
      }

      v23 = 16 * v22;
      v25 = *v16;
      v16 += 2;
      v24 = v25;
      v26 = v25 - 48;
      v27 = v25 - 65;
      v28 = v25 - 87;
      if ((v25 - 97) >= 6)
      {
        v29 = 0;
      }

      else
      {
        v29 = v28;
      }

      v30 = v24 - 55;
      if (v27 > 5)
      {
        v30 = v29;
      }

      if (v26 < 0xA)
      {
        v30 = v26;
      }

      *v15++ = v30 | v23;
      --v17;
    }

    while (v17);
  }

  return (v7 + v14);
}

uint64_t TelephonyUtilParseHardwareModel(_BYTE *a1, uint64_t a2)
{
  v23 = *MEMORY[0x29EDCA608];
  *(a2 + 8) = 0;
  *a2 = 0;
  if (!*a1)
  {
    goto LABEL_21;
  }

  *__s = 0u;
  v20 = 0u;
  __strlcpy_chk();
  v3 = strlen(__s);
  if (v3 && !(v3 >> 31))
  {
    v4 = 0;
    *__endptr = 0u;
    v22 = 0u;
    v5 = -1;
    while (1)
    {
      v6 = __s[(v3 + v5)];
      if ((v6 - 48) <= 9)
      {
        break;
      }

      if (v4 != 32)
      {
        *(__endptr + v4) = v6;
        --v5;
        if (v3 != ++v4)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    if (v3 - v4 >= 1)
    {
      v7 = -1 - v4;
      while (1)
      {
        v8 = __s[(v3 + v7)];
        if ((v8 - 48) > 9)
        {
          break;
        }

        if (v4 != 32)
        {
          *(__endptr + v4) = v8;
          --v7;
          if (v3 != ++v4)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      if (v4 <= 0x1F)
      {
        *(__endptr + v4) = v8;
        v11 = __s;
        __memset_chk();
        for (i = v4; i != -1; --i)
        {
          *v11++ = *(__endptr + i);
        }

        __s[v4 + 1] = 0;
        __endptr[0] = 0;
        v13 = __s[0];
        *(a2 + 4) = __s[0];
        v14 = __toupper(v13);
        *(a2 + 4) = v14;
        if ((v14 - 91) <= 0xFFFFFFE5)
        {
          goto LABEL_20;
        }

        *__error() = 0;
        *a2 = strtoul(&__s[1], __endptr, 10);
        if (*__error())
        {
          v18 = *__error();
          goto LABEL_20;
        }

        v15 = __endptr[0];
        if (!*__endptr[0])
        {
          *(a2 + 8) = 0;
          goto LABEL_47;
        }

        if (strncasecmp("SIM", __endptr[0], 3uLL))
        {
          v16 = 4;
          if (!strncasecmp("FPGA", v15, 4uLL))
          {
            goto LABEL_40;
          }

          if (!strncasecmp("AP", v15 + 1, 2uLL))
          {
            *(a2 + 8) = 2;
            goto LABEL_46;
          }

          v16 = 2;
          if (!strncasecmp("AP", v15, 2uLL))
          {
LABEL_40:
            *(a2 + 8) = v16;
            goto LABEL_47;
          }

          if (!strncasecmp("DEV", v15 + 1, 3uLL))
          {
            v17 = 1;
          }

          else
          {
            if (!strncasecmp("DEV", v15, 3uLL))
            {
              result = 1;
              *(a2 + 8) = 1;
              goto LABEL_22;
            }

            if (strncasecmp("Mac", v15 + 1, 3uLL))
            {
              if (!strncasecmp("Mac", v15, 3uLL))
              {
                *(a2 + 8) = 5;
LABEL_47:
                result = 1;
                goto LABEL_22;
              }

LABEL_46:
              __strlcpy_chk();
              *(a2 + 5) = __tolower(*(a2 + 5));
              *(a2 + 6) = __tolower(*(a2 + 6));
              goto LABEL_47;
            }

            v17 = 5;
          }

          *(a2 + 8) = v17;
          goto LABEL_46;
        }

        *(a2 + 8) = 3;
        goto LABEL_46;
      }
    }
  }

LABEL_19:
  _TelephonyUtilDebugPrintError();
LABEL_20:
  _TelephonyUtilDebugPrintError();
LABEL_21:
  result = 0;
LABEL_22:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t TelephonyUtilIsInternalBuild()
{
  if (qword_2A1899B98 != -1)
  {
    dispatch_once(&qword_2A1899B98, &__block_literal_global_43);
  }

  return _MergedGlobals_1;
}

uint64_t TelephonyUtilIsCarrierBuild()
{
  if (qword_2A1899B98 != -1)
  {
    dispatch_once(&qword_2A1899B98, &__block_literal_global_43);
  }

  return byte_2A1899B71;
}

uint64_t TelephonyUtilIsDesenseBuild()
{
  if (qword_2A1899B98 != -1)
  {
    dispatch_once(&qword_2A1899B98, &__block_literal_global_43);
  }

  return byte_2A1899B72;
}

uint64_t TelephonyUtilIsVendorBuild()
{
  if (qword_2A1899B98 != -1)
  {
    dispatch_once(&qword_2A1899B98, &__block_literal_global_43);
  }

  return byte_2A1899B73;
}

uint64_t TelephonyUtilIsRestoreOS()
{
  if (qword_2A1899B98 != -1)
  {
    dispatch_once(&qword_2A1899B98, &__block_literal_global_43);
  }

  return byte_2A1899B74;
}

uint64_t TelephonyUtilTraceAllowed()
{
  if (qword_2A1899B98 != -1)
  {
    dispatch_once(&qword_2A1899B98, &__block_literal_global_43);
  }

  if (_MergedGlobals_1 & 1) != 0 || (byte_2A1899B71 & 1) != 0 || (byte_2A1899B72)
  {
    return 1;
  }

  else
  {
    return byte_2A1899B73;
  }
}

unint64_t TelephonyUtilGetSystemTime()
{
  v1.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v1.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v1, 0);
  return 1000 * v1.tv_sec + v1.tv_usec / 0x3E8uLL;
}

uint64_t TelephonyUtilSystemMachTime()
{
  if (!qword_2A1899B80)
  {
    info = 0xAAAAAAAAAAAAAAAALL;
    mach_timebase_info(&info);
    if (info.denom)
    {
      denom = info.denom;
      numer = info.numer;
      do
      {
        v2 = denom;
        denom = numer % denom;
        numer = v2;
      }

      while (denom);
    }

    else
    {
      v2 = info.numer;
    }

    v3 = 1000000;
    v4 = info.numer / v2;
    do
    {
      v5 = v4;
      v4 = v3;
      v3 = v5 % v3;
    }

    while (v3);
    qword_2A1899B78 = info.numer / v2 / v4;
    qword_2A1899B80 = 0xF4240 / v4 * (info.denom / v2);
  }

  return qword_2A1899B78 * mach_absolute_time() / qword_2A1899B80;
}

size_t TelephonyUtilStrlcpy(void *a1, char *__s1, size_t __n)
{
  v6 = strnlen(__s1, __n);
  v7 = v6;
  if (v6 >= __n)
  {
    if (__n)
    {
      v8 = __n - 1;
      memcpy(a1, __s1, v8);
      *(a1 + v8) = 0;
    }
  }

  else
  {
    memcpy(a1, __s1, v6 + 1);
  }

  return v7;
}

uint64_t TelephonyUtilRunCommand(uint64_t a1, uint64_t a2)
{
  v5[1] = *MEMORY[0x29EDCA608];
  v5[0] = 0;
  v4[0] = a1;
  v4[1] = a2;
  v4[4] = 0;
  v4[5] = 0xAAAAAAAAAAAAAA00;
  v4[2] = v5;
  v4[3] = 0;
  if (TelephonyUtilRunCommandExt(v4))
  {
    result = 0;
  }

  else
  {
    result = 22;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t TelephonyUtilRunCommandExt(uint64_t *a1)
{
  v7 = 0;
  if (!a1)
  {
    syslog(3, "%s: parameter cannot be NULL.\n");
    return 0;
  }

  if (!*a1)
  {
    syslog(3, "%s: command cannot be NULL\n");
    return 0;
  }

  v2 = a1[1];
  if (!v2)
  {
    syslog(3, "%s: argument cannot be NULL\n");
    return 0;
  }

  v3 = a1[2];
  if (!v3)
  {
    syslog(3, "%s: environment cannot be NULL\n");
    return 0;
  }

  if (posix_spawn(&v7, *a1, a1[3], a1[4], v2, v3))
  {
    v4 = *a1;
    syslog(3, "%s: spawning %s failed! ret: %d\n");
    return 0;
  }

  if ((a1[5] & 1) == 0)
  {
    v6 = -1431655766;
    waitpid(v7, &v6, 0);
  }

  return v7;
}

uint64_t TelephonyUtilIsBBPlatformSimulationEnabled()
{
  if (qword_2A1899B88 != -1)
  {
    dispatch_once(&qword_2A1899B88, &__block_literal_global_1);
  }

  return byte_2A1899B75;
}

void __TelephonyUtilIsBBPlatformSimulationEnabled_block_invoke()
{
  v7 = *MEMORY[0x29EDCA608];
  if (qword_2A1899B98 != -1)
  {
    dispatch_once(&qword_2A1899B98, &__block_literal_global_43);
  }

  if (_MergedGlobals_1 == 1)
  {
    if (qword_2A1899BA0 != -1)
    {
      dispatch_once(&qword_2A1899BA0, &__block_literal_global_69);
    }

    if (byte_2A1899B77)
    {
      v0 = CFPreferencesCopyValue(@"EnableBBSimulation", @"/private/var/wireless/Library/Preferences/com.apple.AppleBasebandManager.plist", *MEMORY[0x29EDB8FB0], *MEMORY[0x29EDB8F90]);
      if (v0)
      {
        byte_2A1899B75 = v0 == *MEMORY[0x29EDB8F00];
        CFRelease(v0);
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG))
        {
          if (byte_2A1899B75)
          {
            v1 = "enabled";
          }

          else
          {
            v1 = "disabled";
          }

          v5 = 136315138;
          v6 = v1;
          _os_log_debug_impl(&dword_298245000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG, "BBSimulation %s", &v5, 0xCu);
        }

        goto LABEL_18;
      }

      if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      LOWORD(v5) = 0;
      v2 = MEMORY[0x29EDCA988];
      v3 = "BBSimulation disabled due to key not set";
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      LOWORD(v5) = 0;
      v2 = MEMORY[0x29EDCA988];
      v3 = "Platform Simulation disabled due to 'libRemoteTelephonyTransport' not found";
    }

    _os_log_impl(&dword_298245000, v2, OS_LOG_TYPE_DEFAULT, v3, &v5, 2u);
  }

LABEL_18:
  v4 = *MEMORY[0x29EDCA608];
}

uint64_t TelephonyUtilIsOversteerEnabled()
{
  if (qword_2A1899B90 != -1)
  {
    dispatch_once(&qword_2A1899B90, &__block_literal_global_20);
  }

  return byte_2A1899B76;
}

void __TelephonyUtilIsOversteerEnabled_block_invoke()
{
  v7 = *MEMORY[0x29EDCA608];
  if (qword_2A1899B98 != -1)
  {
    dispatch_once(&qword_2A1899B98, &__block_literal_global_43);
  }

  if (_MergedGlobals_1 == 1)
  {
    if (qword_2A1899BA0 != -1)
    {
      dispatch_once(&qword_2A1899BA0, &__block_literal_global_69);
    }

    if (byte_2A1899B77)
    {
      v0 = CFPreferencesCopyValue(@"EnableOversteer", @"/private/var/wireless/Library/Preferences/com.apple.commcenter.plist", *MEMORY[0x29EDB8FB0], *MEMORY[0x29EDB8F90]);
      if (v0)
      {
        byte_2A1899B76 = v0 == *MEMORY[0x29EDB8F00];
        CFRelease(v0);
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG))
        {
          if (byte_2A1899B76)
          {
            v1 = "enabled";
          }

          else
          {
            v1 = "disabled";
          }

          v5 = 136315138;
          v6 = v1;
          _os_log_debug_impl(&dword_298245000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG, "Oversteer %s", &v5, 0xCu);
        }

        goto LABEL_18;
      }

      if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      LOWORD(v5) = 0;
      v2 = MEMORY[0x29EDCA988];
      v3 = "Oversteer disabled due to key not set";
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      LOWORD(v5) = 0;
      v2 = MEMORY[0x29EDCA988];
      v3 = "Oversteer disabled due to 'libRemoteTelephonyTransport' not found";
    }

    _os_log_impl(&dword_298245000, v2, OS_LOG_TYPE_DEFAULT, v3, &v5, 2u);
  }

LABEL_18:
  v4 = *MEMORY[0x29EDCA608];
}

void __TelephonyUtilQueryBuildInformation_block_invoke()
{
  v16[1] = *MEMORY[0x29EDCA608];
  v16[0] = @"ReleaseType";
  v0 = CFArrayCreate(*MEMORY[0x29EDB8ED8], v16, 1, MEMORY[0x29EDB9000]);
  if (v0)
  {
    v1 = v0;
    v2 = dlopen("/usr/lib/libMobileGestalt.dylib", 1);
    if (!v2)
    {
      goto LABEL_25;
    }

    v3 = dlsym(v2, "MGCopyMultipleAnswers");
    if (!v3)
    {
      goto LABEL_25;
    }

    v4 = v3(v1, 0);
    if (!v4)
    {
      goto LABEL_25;
    }

    v5 = v4;
    Value = CFDictionaryGetValue(v4, @"ReleaseType");
    if (!Value)
    {
LABEL_24:
      CFRelease(v5);
LABEL_25:
      CFRelease(v1);
      goto LABEL_26;
    }

    v7 = Value;
    v8 = CFGetTypeID(Value);
    if (v8 == CFStringGetTypeID() && CFStringCompare(v7, @"Vendor", 0) == kCFCompareEqualTo)
    {
      v14 = &byte_2A1899B73;
    }

    else
    {
      v9 = CFGetTypeID(v7);
      if (v9 == CFStringGetTypeID() && CFStringCompare(v7, @"Carrier", 0) == kCFCompareEqualTo)
      {
        v14 = &byte_2A1899B71;
      }

      else
      {
        v10 = CFGetTypeID(v7);
        if (v10 != CFStringGetTypeID() || CFStringCompare(v7, @"Internal", 0))
        {
          v11 = CFGetTypeID(v7);
          if (v11 == CFStringGetTypeID() && CFStringCompare(v7, @"Desense", 0) == kCFCompareEqualTo)
          {
            v14 = &byte_2A1899B72;
            goto LABEL_23;
          }

          v12 = CFGetTypeID(v7);
          if (v12 != CFStringGetTypeID() || CFStringCompare(v7, @"NonUI", 0))
          {
            v13 = CFGetTypeID(v7);
            if (v13 != CFStringGetTypeID() || CFStringCompare(v7, @"Restore", 0))
            {
              goto LABEL_24;
            }

            v14 = &byte_2A1899B74;
            goto LABEL_23;
          }
        }

        v14 = &_MergedGlobals_1;
      }
    }

LABEL_23:
    *v14 = 1;
    goto LABEL_24;
  }

LABEL_26:
  v15 = *MEMORY[0x29EDCA608];
}

const char *__isRTDylibPresent_block_invoke()
{
  result = "/usr/lib/libRemoteTelephonyTransport.dylib";
  for (i = 1; ; i = 0)
  {
    v2 = i;
    v3 = dlopen(result, 1);
    if (v3)
    {
      break;
    }

    result = "/usr/local/lib/libRemoteTelephonyTransport.dylib";
    if ((v2 & 1) == 0)
    {
      return result;
    }
  }

  byte_2A1899B77 = 1;

  return dlclose(v3);
}

void ctu::iokit::IOPortUSBCController::create(NSObject **a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x68uLL);
  v9 = *a1;
  v12 = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v13 = a3;
  *buf = a2;
  ctu::SharedLoggable<ctu::iokit::IOPortUSBCController,ctu::OsLogLogger>::SharedLoggable<char const* const&,char const* const&>(v8, &v12, buf, &v13);
  *(v8 + 11) = 0;
  *(v8 + 12) = 0;
  *(v8 + 7) = 0;
  *(v8 + 8) = 0;
  *(v8 + 12) = 0;
  *(v8 + 9) = 0;
  *(v8 + 10) = v8 + 88;
  v10 = operator new(0x20uLL);
  v10->__vftable = &unk_2A1EB0AA0;
  v10->__shared_owners_ = 0;
  v10->__shared_weak_owners_ = 0;
  v10[1].__vftable = v8;
  v11 = *(v8 + 1);
  if (v11)
  {
    if (v11->__shared_owners_ != -1)
    {
      goto LABEL_8;
    }

    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *v8 = v8;
    *(v8 + 1) = v10;
    std::__shared_weak_count::__release_weak(v11);
  }

  else
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *v8 = v8;
    *(v8 + 1) = v10;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
LABEL_8:
  if (v9)
  {
    dispatch_release(v9);
  }

  if (ctu::iokit::IOPortUSBCController::init(v8))
  {
    *a4 = v8;
    a4[1] = v10;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_298245000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to initialize IOPortUSBCController!", buf, 2u);
    }

    *a4 = 0;
    a4[1] = 0;
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void *ctu::iokit::IOPortUSBCController::IOPortUSBCController(void *a1, NSObject **a2, const char *a3, const char *a4)
{
  v5 = a4;
  v6 = a3;
  result = ctu::SharedLoggable<ctu::iokit::IOPortUSBCController,ctu::OsLogLogger>::SharedLoggable<char const* const&,char const* const&>(a1, a2, &v6, &v5);
  *(result + 12) = 0;
  result[7] = 0;
  result[8] = 0;
  result[12] = 0;
  result[11] = 0;
  result[9] = 0;
  result[10] = result + 11;
  return result;
}

{
  v5 = a4;
  v6 = a3;
  result = ctu::SharedLoggable<ctu::iokit::IOPortUSBCController,ctu::OsLogLogger>::SharedLoggable<char const* const&,char const* const&>(a1, a2, &v6, &v5);
  *(result + 12) = 0;
  result[7] = 0;
  result[8] = 0;
  result[12] = 0;
  result[11] = 0;
  result[9] = 0;
  result[10] = result + 11;
  return result;
}

BOOL ctu::iokit::IOPortUSBCController::init(uint64_t **this)
{
  for (i = 0; i != 5; ++i)
  {
    v3 = ctu::iokit::kUSBCServices[i];
    std::string::basic_string[abi:ne200100]<0>(__p, v3);
    v20 = __p;
    *(std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, __p, &v20) + 56) = 0;
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v3);
    v20 = __p;
    *(std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, __p, &v20) + 15) = 0;
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v3);
    v20 = __p;
    *(std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, __p, &v20) + 16) = 0;
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v3);
    v20 = __p;
    *(std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, __p, &v20) + 17) = 0;
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v3);
    v20 = __p;
    *(std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, __p, &v20) + 18) = 0;
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    if (strlen(v3) == 17 && (*v3 == 0x434354656C707041 ? (v4 = *(v3 + 1) == 0x656C6C6F72746E6FLL) : (v4 = 0), v4 ? (v5 = v3[16] == 114) : (v5 = 0), v5))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, v3);
      v20 = __p;
      v6 = std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, __p, &v20);
      v7 = ctu::iokit::IOPortUSBCController::findingServiceTCController;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, v3);
      v20 = __p;
      v6 = std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, __p, &v20);
      v7 = ctu::iokit::IOPortUSBCController::findingServiceProtocol;
    }

    *(v6 + 10) = v7;
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (!ctu::iokit::IOPortUSBCController::initNotification(this))
  {
    goto LABEL_35;
  }

  std::string::basic_string[abi:ne200100]<0>(v16, "AppleTCController");
  v8 = ctu::iokit::IOPortUSBCController::setupFindingService(this, v16);
  v9 = v8;
  if (v17 < 0)
  {
    operator delete(v16[0]);
    if (!v9)
    {
      goto LABEL_35;
    }

LABEL_31:
    std::string::basic_string[abi:ne200100]<0>(v14, "CC");
    v10 = ctu::iokit::IOPortUSBCController::setupFindingService(this, v14);
    v11 = v10;
    if (v15 < 0)
    {
      operator delete(v14[0]);
      if (!v11)
      {
        goto LABEL_35;
      }
    }

    else if (!v10)
    {
      goto LABEL_35;
    }

    return 1;
  }

  if (v8)
  {
    goto LABEL_31;
  }

LABEL_35:
  v13 = this[4];
  result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
  if (result)
  {
    LOWORD(__p[0]) = 0;
    _os_log_error_impl(&dword_298245000, v13, OS_LOG_TYPE_ERROR, "Failed to initialize IOPort Controller", __p, 2u);
    return 0;
  }

  return result;
}

void sub_298255B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *ctu::SharedLoggable<ctu::iokit::IOPortUSBCController,ctu::OsLogLogger>::SharedLoggable<char const* const&,char const* const&>(void *a1, NSObject **a2, const char **a3, const char **a4)
{
  *a1 = 0;
  a1[1] = 0;
  v7 = *a2;
  a1[2] = *a2;
  if (v7)
  {
    dispatch_retain(v7);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 4), *a3, *a4);
  return a1;
}

void ctu::iokit::IOPortUSBCController::~IOPortUSBCController(ctu::iokit::IOPortUSBCController *this)
{
  for (i = 0; i != 5; ++i)
  {
    v3 = ctu::iokit::kUSBCServices[i];
    std::string::basic_string[abi:ne200100]<0>(__p, v3);
    v18 = __p;
    v4 = *(std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, __p, &v18) + 15);
    if (v17 < 0)
    {
      operator delete(__p[0]);
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    else if (!v4)
    {
      goto LABEL_8;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v3);
    v18 = __p;
    v5 = std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, __p, &v18);
    IOObjectRelease(*(v5 + 15));
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_8:
    std::string::basic_string[abi:ne200100]<0>(__p, v3);
    v18 = __p;
    v6 = *(std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, __p, &v18) + 16);
    if (v17 < 0)
    {
      operator delete(__p[0]);
      if (!v6)
      {
        goto LABEL_16;
      }
    }

    else if (!v6)
    {
      goto LABEL_16;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v3);
    v18 = __p;
    v7 = std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, __p, &v18);
    IOObjectRelease(*(v7 + 16));
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v3);
    v18 = __p;
    *(std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, __p, &v18) + 16) = 0;
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_16:
    std::string::basic_string[abi:ne200100]<0>(__p, v3);
    v18 = __p;
    v8 = *(std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, __p, &v18) + 17);
    if (v17 < 0)
    {
      operator delete(__p[0]);
      if (!v8)
      {
        goto LABEL_24;
      }
    }

    else if (!v8)
    {
      goto LABEL_24;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v3);
    v18 = __p;
    v9 = std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, __p, &v18);
    IOObjectRelease(*(v9 + 17));
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v3);
    v18 = __p;
    *(std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, __p, &v18) + 17) = 0;
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_24:
    std::string::basic_string[abi:ne200100]<0>(__p, v3);
    v18 = __p;
    v10 = *(std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, __p, &v18) + 18);
    if (v17 < 0)
    {
      operator delete(__p[0]);
      if (!v10)
      {
        continue;
      }
    }

    else if (!v10)
    {
      continue;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v3);
    v18 = __p;
    v11 = std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, __p, &v18);
    IOObjectRelease(*(v11 + 18));
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v3);
    v18 = __p;
    *(std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, __p, &v18) + 18) = 0;
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v12 = *(this + 5);
  if (v12)
  {
    IONotificationPortDestroy(v12);
  }

  std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::destroy(*(this + 11));
  v13 = *(this + 7);
  if (v13)
  {
    v14 = *(this + 8);
    v15 = *(this + 7);
    if (v14 != v13)
    {
      do
      {
        v14 -= 16;
        std::allocator_traits<std::allocator<dispatch::callback<void({block_pointer})(ctu::iokit::USBCAccessory)>>>::destroy[abi:ne200100]<dispatch::callback<void({block_pointer})(ctu::iokit::USBCAccessory)>,void,0>(v14);
      }

      while (v14 != v13);
      v15 = *(this + 7);
    }

    *(this + 8) = v13;
    operator delete(v15);
  }

  MEMORY[0x29C284D00](this + 32);
  ctu::SharedSynchronizable<ctu::iokit::IOPortUSBCController>::~SharedSynchronizable(this);
}

uint64_t **ctu::iokit::IOPortUSBCController::findingServiceTCController(uint64_t **this, io_iterator_t iterator)
{
  if (this)
  {
    v3 = this;
    this = IOIteratorNext(iterator);
    v5 = this;
    if (this)
    {
      v4 = this;
      do
      {
        ctu::iokit::IOPortUSBCController::initTCController(v3, &v5);
        IOObjectRelease(v4);
        this = IOIteratorNext(iterator);
        v4 = this;
        v5 = this;
      }

      while (this);
    }
  }

  return this;
}

ctu::iokit::IOPortUSBCController *ctu::iokit::IOPortUSBCController::findingServiceProtocol(ctu::iokit::IOPortUSBCController *this, io_iterator_t iterator)
{
  if (this)
  {
    v3 = this;
    this = IOIteratorNext(iterator);
    v5 = this;
    if (this)
    {
      v4 = this;
      do
      {
        ctu::iokit::IOPortUSBCController::initProtocol(v3, &v5);
        IOObjectRelease(v4);
        this = IOIteratorNext(iterator);
        v4 = this;
        v5 = this;
      }

      while (this);
    }
  }

  return this;
}

BOOL ctu::iokit::IOPortUSBCController::initNotification(ctu::iokit::IOPortUSBCController *this)
{
  v2 = IONotificationPortCreate(*MEMORY[0x29EDBB110]);
  v3 = v2;
  *(this + 5) = v2;
  if (v2)
  {
    IONotificationPortSetDispatchQueue(v2, *(this + 2));
  }

  else
  {
    v4 = *(this + 4);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_298245000, v4, OS_LOG_TYPE_ERROR, "Failed to find the notification with the main port", v6, 2u);
    }
  }

  return v3 != 0;
}

BOOL ctu::iokit::IOPortUSBCController::setupFindingService(uint64_t a1, void **a2)
{
  v2 = a2;
  v28 = *MEMORY[0x29EDCA608];
  v4 = std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::find<std::string>(a1 + 80, a2);
  v5 = *(a1 + 32);
  if (a1 + 88 == v4)
  {
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
    {
      if (*(v2 + 23) < 0)
      {
        v2 = *v2;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
      *(__p.__r_.__value_.__r.__words + 4) = v2;
      _os_log_error_impl(&dword_298245000, v5, OS_LOG_TYPE_ERROR, "Cannot setup finding service because no find %s in the internal context", &__p, 0xCu);
    }

    v12 = 0;
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_DEBUG))
    {
      v24 = v2;
      if (*(v2 + 23) < 0)
      {
        v24 = *v2;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
      *(__p.__r_.__value_.__r.__words + 4) = v24;
      _os_log_debug_impl(&dword_298245000, v5, OS_LOG_TYPE_DEBUG, "#D Setting up service: %s", &__p, 0xCu);
    }

    memset(&__p, 170, sizeof(__p));
    std::string::basic_string[abi:ne200100]<0>(&__p, &unk_29825A069);
    if (!std::string::compare(v2, "AppleTCController"))
    {
      std::string::operator=(&__p, v2);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v25, "IOPortTransportState");
      v6 = *(v2 + 23);
      if (v6 >= 0)
      {
        v7 = v2;
      }

      else
      {
        v7 = *v2;
      }

      if (v6 >= 0)
      {
        v8 = *(v2 + 23);
      }

      else
      {
        v8 = *(v2 + 8);
      }

      v9 = std::string::append(&v25, v7, v8);
      v10 = v9->__r_.__value_.__r.__words[0];
      v26[0] = v9->__r_.__value_.__l.__size_;
      *(v26 + 7) = *(&v9->__r_.__value_.__r.__words[1] + 7);
      v11 = HIBYTE(v9->__r_.__value_.__r.__words[2]);
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[0] = v10;
      __p.__r_.__value_.__l.__size_ = v26[0];
      *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v26 + 7);
      *(&__p.__r_.__value_.__s + 23) = v11;
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }
    }

    v13 = *(a1 + 40);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v15 = IOServiceMatching(p_p);
    v25.__r_.__value_.__r.__words[0] = v2;
    v16 = std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 80), v2, &v25)[10];
    v25.__r_.__value_.__r.__words[0] = v2;
    v17 = std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 80), v2, &v25);
    v18 = IOServiceAddMatchingNotification(v13, "IOServiceFirstPublish", v15, v16, a1, v17 + 16);
    v12 = v18 == 0;
    if (v18 || (v25.__r_.__value_.__r.__words[0] = v2, !*(std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 80), v2, &v25) + 16)))
    {
      v19 = *(a1 + 32);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v2 + 23) < 0)
        {
          v2 = *v2;
        }

        LODWORD(v25.__r_.__value_.__l.__data_) = 136315138;
        *(v25.__r_.__value_.__r.__words + 4) = v2;
        _os_log_impl(&dword_298245000, v19, OS_LOG_TYPE_DEFAULT, "#I Did not find the service (%s) yet", &v25, 0xCu);
      }
    }

    else
    {
      v25.__r_.__value_.__r.__words[0] = v2;
      v20 = std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 80), v2, &v25)[10];
      v25.__r_.__value_.__r.__words[0] = v2;
      v21 = std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 80), v2, &v25);
      v20(a1, *(v21 + 16));
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return v12;
}

void sub_298256454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **ctu::iokit::IOPortUSBCController::initTCController(uint64_t **this, unsigned int *a2)
{
  v19 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(__p, "AppleTCController");
  v14 = __p;
  *(std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, __p, &v14) + 56) = 1;
  if (v18 < 0)
  {
    operator delete(*__p);
  }

  ctu::iokit::IOPortUSBCController::getPropertyFromIOService(this, a2, @"TransportsSupported", __p);
  v4 = *__p;
  if (*__p && (v5 = CFGetTypeID(*__p), v5 == CFArrayGetTypeID()))
  {
    theArray = v4;
    CFRetain(v4);
  }

  else
  {
    theArray = 0;
  }

  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(__p);
  v6 = this[4];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 138412290;
    *&__p[4] = theArray;
    _os_log_impl(&dword_298245000, v6, OS_LOG_TYPE_DEFAULT, "#I Supporting Protocol: %@", __p, 0xCu);
  }

  Count = CFArrayGetCount(theArray);
  v8 = this[4];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *__p = 136315394;
    *&__p[4] = "AppleTCController";
    v16 = 2048;
    v17 = Count;
    _os_log_debug_impl(&dword_298245000, v8, OS_LOG_TYPE_DEBUG, "#D The number of Supported Protocol of %s: %lu", __p, 0x16u);
    if (!Count)
    {
      goto LABEL_25;
    }
  }

  else if (!Count)
  {
    goto LABEL_25;
  }

  for (i = 0; i != Count; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
    if (CFStringCompare(ValueAtIndex, @"CC", 1uLL) == kCFCompareEqualTo)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "CC");
      v14 = __p;
      *(std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, __p, &v14) + 56) = 1;
      if (v18 < 0)
      {
        operator delete(*__p);
      }
    }

    if (CFStringCompare(ValueAtIndex, @"USB2", 1uLL) == kCFCompareEqualTo)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "USB2");
      v14 = __p;
      *(std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, __p, &v14) + 56) = 1;
      if (v18 < 0)
      {
        operator delete(*__p);
      }
    }

    if (CFStringCompare(ValueAtIndex, @"USB3", 1uLL) == kCFCompareEqualTo)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "USB3");
      v14 = __p;
      *(std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, __p, &v14) + 56) = 1;
      if (v18 < 0)
      {
        operator delete(*__p);
      }
    }

    if (CFStringCompare(ValueAtIndex, @"DisplayPort", 1uLL) == kCFCompareEqualTo)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "DisplayPort");
      v14 = __p;
      *(std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, __p, &v14) + 56) = 1;
      if (v18 < 0)
      {
        operator delete(*__p);
      }
    }
  }

LABEL_25:
  result = ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(&theArray);
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2982567DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ctu::iokit::IOPortUSBCController::getPropertyFromIOService(ctu::iokit::IOPortUSBCController *this@<X0>, io_registry_entry_t *a2@<X1>, CFStringRef key@<X2>, void *a4@<X8>)
{
  v13 = *MEMORY[0x29EDCA608];
  *a4 = 0;
  CFProperty = IORegistryEntryCreateCFProperty(*a2, key, *MEMORY[0x29EDB8ED8], 0);
  *a4 = CFProperty;
  *v10 = 0;
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(v10);
  v8 = *(this + 4);
  if (CFProperty)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v10 = 138412546;
      *&v10[4] = key;
      v11 = 2112;
      v12 = CFProperty;
      _os_log_debug_impl(&dword_298245000, v8, OS_LOG_TYPE_DEBUG, "#D Property for %@: %@", v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v10 = 138412290;
    *&v10[4] = key;
    _os_log_error_impl(&dword_298245000, v8, OS_LOG_TYPE_ERROR, "Failed to get a property of %@", v10, 0xCu);
  }

  v9 = *MEMORY[0x29EDCA608];
}

void ctu::iokit::IOPortUSBCController::initProtocol(ctu::iokit::IOPortUSBCController *this, unsigned int *a2)
{
  v27 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  if (*a2)
  {
    cf = 0;
    v5 = *MEMORY[0x29EDB8ED8];
    cf = IORegistryEntryCreateCFProperty(v3, @"TransportTypeDescription", *MEMORY[0x29EDB8ED8], 0);
    *buf = 0;
    ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(buf);
    if (!cf)
    {
      goto LABEL_28;
    }

    v6 = CFGetTypeID(cf);
    if (v6 != CFStringGetTypeID())
    {
      goto LABEL_28;
    }

    v7 = *(this + 4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = cf;
      _os_log_impl(&dword_298245000, v7, OS_LOG_TYPE_DEFAULT, "#I Found: %@", buf, 0xCu);
    }

    *buf = 0u;
    v26 = 0u;
    if (CFStringGetCString(cf, buf, 32, 0x600u) && !ctu::iokit::IOPortUSBCController::registerMessageNotifier(this, buf, a2))
    {
      v11 = *(this + 4);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v21 = 138412290;
        *&v21[4] = cf;
        _os_log_error_impl(&dword_298245000, v11, OS_LOG_TYPE_ERROR, "%@: Failed to initialize register message notifier", v21, 0xCu);
      }

      goto LABEL_28;
    }

    CFProperty = 0;
    CFProperty = IORegistryEntryCreateCFProperty(*a2, @"Active", v5, 0);
    *v21 = 0;
    ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(v21);
    if (CFProperty)
    {
      v8 = CFGetTypeID(CFProperty);
      if (v8 == CFBooleanGetTypeID())
      {
        v9 = *(this + 4);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          Value = CFBooleanGetValue(CFProperty);
          v16 = "YES";
          if (!Value)
          {
            v16 = "NO";
          }

          *v21 = 138412546;
          *&v21[4] = cf;
          v22 = 2080;
          v23 = v16;
          _os_log_debug_impl(&dword_298245000, v9, OS_LOG_TYPE_DEBUG, "#D %@: [init] Active: %s", v21, 0x16u);
        }

        if (CFBooleanGetValue(CFProperty))
        {
          if (CFStringCompare(cf, @"CC", 1uLL))
          {
            ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(&v17, cf);
            ctu::iokit::IOPortUSBCController::detectingAccessories(this, &v17, a2);
            ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v17);
          }

          else
          {
            ctu::iokit::IOPortUSBCController::setupUSBProtocols(this);
          }
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(v21, buf);
    v20 = v21;
    v12 = *(std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, v21, &v20) + 16);
    if (v24 < 0)
    {
      operator delete(*v21);
      if (!v12)
      {
LABEL_27:
        ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&CFProperty);
LABEL_28:
        ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&cf);
        goto LABEL_29;
      }
    }

    else if (!v12)
    {
      goto LABEL_27;
    }

    std::string::basic_string[abi:ne200100]<0>(v21, buf);
    v20 = v21;
    v13 = std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, v21, &v20);
    IOObjectRelease(*(v13 + 16));
    if (v24 < 0)
    {
      operator delete(*v21);
    }

    std::string::basic_string[abi:ne200100]<0>(v21, buf);
    v20 = v21;
    *(std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, v21, &v20) + 16) = 0;
    if (v24 < 0)
    {
      operator delete(*v21);
    }

    goto LABEL_27;
  }

  v10 = *(this + 4);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_298245000, v10, OS_LOG_TYPE_ERROR, "service object is NULL!", buf, 2u);
  }

LABEL_29:
  v14 = *MEMORY[0x29EDCA608];
}

void sub_298256D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&a9);
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&a10);
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&a11);
  _Unwind_Resume(a1);
}

BOOL ctu::iokit::IOPortUSBCController::registerMessageNotifier(ctu::iokit::IOPortUSBCController *this, char *a2, unsigned int *a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v5 = *(this + 5);
  v6 = *a3;
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v15 = __p;
  v7 = std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, __p, &v15);
  v8 = IOServiceAddInterestNotification(v5, v6, "IOGeneralInterest", ctu::iokit::IOPortUSBCController::serviceCallback, this, v7 + 18);
  v9 = v8;
  if (v19 < 0)
  {
    operator delete(*__p);
    if (!v9)
    {
      goto LABEL_15;
    }
  }

  else if (!v8)
  {
    goto LABEL_15;
  }

  v10 = *(this + 4);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *__p = 136315394;
    *&__p[4] = a2;
    v17 = 1024;
    v18 = v9;
    _os_log_error_impl(&dword_298245000, v10, OS_LOG_TYPE_ERROR, "Failed to add notification to %s with error of 0x%x", __p, 0x12u);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v15 = __p;
  v11 = *(std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, __p, &v15) + 18);
  if (v19 < 0)
  {
    operator delete(*__p);
    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else if (!v11)
  {
    goto LABEL_15;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v15 = __p;
  v12 = std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, __p, &v15);
  IOObjectRelease(*(v12 + 18));
  if (v19 < 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v15 = __p;
  *(std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, __p, &v15) + 18) = 0;
  if (v19 < 0)
  {
    operator delete(*__p);
  }

LABEL_15:
  result = v9 == 0;
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298256FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ctu::iokit::IOPortUSBCController::setupUSBProtocols(ctu::iokit::IOPortUSBCController *this)
{
  v2 = *(this + 1);
  if (!v2 || (v3 = *this, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = this;
  v7 = *(this + 2);
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  v9 = 0;
  v10 = 0;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<ctu::iokit::IOPortUSBCController>::execute_wrapped<ctu::iokit::IOPortUSBCController::setupUSBProtocols(void)::$_0>(ctu::iokit::IOPortUSBCController::setupUSBProtocols(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ctu::iokit::IOPortUSBCController::setupUSBProtocols(void)::$_0,dispatch_queue_s *::default_delete<ctu::iokit::IOPortUSBCController::setupUSBProtocols(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  std::unique_ptr<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::init(void)::$_0>(ctu::iokit::IOHIDController::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::iokit::IOHIDController::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&v9);
  std::unique_ptr<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::init(void)::$_0>(ctu::iokit::IOHIDController::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::iokit::IOHIDController::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&v10);
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void ctu::iokit::IOPortUSBCController::notifyCallback(ctu::iokit::IOPortUSBCController *this)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *(this + 4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 12);
    LODWORD(v14[0]) = 67109120;
    HIDWORD(v14[0]) = v3;
    _os_log_impl(&dword_298245000, v2, OS_LOG_TYPE_DEFAULT, "#I Notifying callback with bitmask: 0x%x", v14, 8u);
  }

  v4 = *(this + 56);
  v5 = *(this + 8);
  v6 = *(this + 7);
  if (v6 == v5)
  {
    v12 = *(this + 4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14[0]) = 0;
      _os_log_error_impl(&dword_298245000, v12, OS_LOG_TYPE_ERROR, "No callback is registered yet", v14, 2u);
    }
  }

  else
  {
    do
    {
      if (*v6)
      {
        v7 = _Block_copy(*v6);
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v6 + 8);
      if (v8)
      {
        dispatch_retain(*(v6 + 8));
      }

      v9 = *(this + 12);
      if (v7)
      {
        v10 = _Block_copy(v7);
      }

      else
      {
        v10 = 0;
      }

      v14[0] = MEMORY[0x29EDCA5F8];
      v14[1] = 1174405120;
      v14[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu5iokit13USBCAccessoryEEEclIJS3_EEEvDpT__block_invoke;
      v14[3] = &__block_descriptor_tmp_3;
      if (v10)
      {
        v11 = _Block_copy(v10);
      }

      else
      {
        v11 = 0;
      }

      aBlock = v11;
      v16 = v9;
      dispatch_async(v8, v14);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v10)
      {
        _Block_release(v10);
      }

      if (v8)
      {
        dispatch_release(v8);
      }

      if (v7)
      {
        _Block_release(v7);
      }

      v6 += 16;
    }

    while (v6 != v5);
  }

  v13 = *MEMORY[0x29EDCA608];
}

void sub_2982572C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

BOOL ctu::iokit::IOPortUSBCController::setupDisconnectingService(uint64_t a1, void **a2)
{
  v2 = a2;
  v24 = *MEMORY[0x29EDCA608];
  v4 = std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::find<std::string>(a1 + 80, a2);
  v5 = *(a1 + 32);
  if (a1 + 88 == v4)
  {
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
    {
      if (*(v2 + 23) < 0)
      {
        v2 = *v2;
      }

      LODWORD(__p[0]) = 136315138;
      *(__p + 4) = v2;
      _os_log_error_impl(&dword_298245000, v5, OS_LOG_TYPE_ERROR, "Cannot setup disconnecting service because no find %s in the internal context", __p, 0xCu);
    }

    v16 = 0;
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_DEBUG))
    {
      v20 = v2;
      if (*(v2 + 23) < 0)
      {
        v20 = *v2;
      }

      LODWORD(__p[0]) = 136315138;
      *(__p + 4) = v20;
      _os_log_debug_impl(&dword_298245000, v5, OS_LOG_TYPE_DEBUG, "#D Setting up disconnecting service: %s", __p, 0xCu);
    }

    std::string::basic_string[abi:ne200100]<0>(&v21, "IOPortTransportState");
    v6 = *(v2 + 23);
    if (v6 >= 0)
    {
      v7 = v2;
    }

    else
    {
      v7 = *v2;
    }

    if (v6 >= 0)
    {
      v8 = *(v2 + 23);
    }

    else
    {
      v8 = *(v2 + 8);
    }

    v9 = std::string::append(&v21, v7, v8);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v23 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    v11 = *(a1 + 40);
    if (v23 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    v13 = IOServiceMatching(v12);
    v21.__r_.__value_.__r.__words[0] = v2;
    v14 = std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 80), v2, &v21);
    v15 = IOServiceAddMatchingNotification(v11, "IOServiceTerminate", v13, ctu::iokit::IOPortUSBCController::disconnectingService, a1, v14 + 17);
    v16 = v15 == 0;
    if (!v15)
    {
      v21.__r_.__value_.__r.__words[0] = v2;
      if (*(std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 80), v2, &v21) + 17))
      {
        v21.__r_.__value_.__r.__words[0] = v2;
        v17 = std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 80), v2, &v21);
        ctu::iokit::IOPortUSBCController::disconnectingService(a1, *(v17 + 17));
      }
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v18 = *MEMORY[0x29EDCA608];
  return v16;
}

void sub_298257530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::iokit::IOPortUSBCController::disconnectingService(ctu::iokit::IOPortUSBCController *this, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  v6 = result;
  if (result)
  {
    v5 = result;
    do
    {
      if (this)
      {
        ctu::iokit::IOPortUSBCController::disconnectedService(this, &v6);
      }

      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
      v6 = result;
    }

    while (result);
  }

  return result;
}

const void **ctu::iokit::IOPortUSBCController::disconnectedService(ctu::iokit::IOPortUSBCController *this, unsigned int *a2)
{
  v27 = *MEMORY[0x29EDCA608];
  cf = 0;
  cf = IORegistryEntryCreateCFProperty(*a2, @"TransportTypeDescription", *MEMORY[0x29EDB8ED8], 0);
  *buf = 0;
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(buf);
  if (cf && (v3 = CFGetTypeID(cf), v3 == CFStringGetTypeID()))
  {
    v4 = *(this + 4);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = cf;
      _os_log_impl(&dword_298245000, v4, OS_LOG_TYPE_DEFAULT, "#I %@: Disconnected Service", buf, 0xCu);
    }

    v5 = *(this + 12);
    v6 = v5;
    if ((v5 & 4) != 0)
    {
      v7 = *(this + 4);
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      v9 = v5;
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_298245000, v7, OS_LOG_TYPE_DEFAULT, "#I USB-C to 3.5mm Headphone Jack Adapter is removed", buf, 2u);
        v9 = *(this + 12);
      }

      v6 = v9 & 0xFFFFFFFB;
      *(this + 12) = v9 & 0xFFFFFFFB;
    }

    if ((v5 & 8) != 0)
    {
      v10 = *(this + 4);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_298245000, v10, OS_LOG_TYPE_DEFAULT, "#I EarPods with USB-C Connector is removed", buf, 2u);
        v6 = *(this + 12);
      }

      *(this + 12) = v6 & 0xFFFFFFF7;
    }

    if (CFStringCompare(cf, @"USB2", 1uLL) == kCFCompareEqualTo)
    {
      v14 = *(this + 4);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_298245000, v14, OS_LOG_TYPE_DEFAULT, "#I USB2 accessory is removed", buf, 2u);
      }

      std::string::basic_string[abi:ne200100]<0>(buf, "USB2");
      v24 = buf;
      v15 = *(std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, buf, &v24) + 17);
      if (v26 < 0)
      {
        operator delete(*buf);
      }

      if (v15)
      {
        std::string::basic_string[abi:ne200100]<0>(buf, "USB2");
        v24 = buf;
        v16 = std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, buf, &v24);
        IOObjectRelease(*(v16 + 17));
        if (v26 < 0)
        {
          operator delete(*buf);
        }

        std::string::basic_string[abi:ne200100]<0>(buf, "USB2");
        v24 = buf;
        *(std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, buf, &v24) + 17) = 0;
        if (v26 < 0)
        {
          operator delete(*buf);
        }
      }
    }

    if ((v5 & 1) != 0 && CFStringCompare(cf, @"USB3", 1uLL) == kCFCompareEqualTo)
    {
      v17 = *(this + 4);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_298245000, v17, OS_LOG_TYPE_DEFAULT, "#I USB3 accessory is removed", buf, 2u);
      }

      *(this + 12) &= ~1u;
      std::string::basic_string[abi:ne200100]<0>(buf, "USB3");
      v24 = buf;
      v18 = *(std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, buf, &v24) + 17);
      if (v26 < 0)
      {
        operator delete(*buf);
      }

      if (v18)
      {
        std::string::basic_string[abi:ne200100]<0>(buf, "USB3");
        v24 = buf;
        v19 = std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, buf, &v24);
        IOObjectRelease(*(v19 + 17));
        if (v26 < 0)
        {
          operator delete(*buf);
        }

        std::string::basic_string[abi:ne200100]<0>(buf, "USB3");
        v24 = buf;
        *(std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, buf, &v24) + 17) = 0;
        if (v26 < 0)
        {
          operator delete(*buf);
        }
      }
    }

    if ((v5 & 2) != 0 && CFStringCompare(cf, @"DisplayPort", 1uLL) == kCFCompareEqualTo)
    {
      v20 = *(this + 4);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_298245000, v20, OS_LOG_TYPE_DEFAULT, "#I DP (DisplayPort) accessory is removed", buf, 2u);
      }

      *(this + 12) &= ~2u;
      std::string::basic_string[abi:ne200100]<0>(buf, "DisplayPort");
      v24 = buf;
      v21 = *(std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, buf, &v24) + 17);
      if (v26 < 0)
      {
        operator delete(*buf);
      }

      if (v21)
      {
        std::string::basic_string[abi:ne200100]<0>(buf, "DisplayPort");
        v24 = buf;
        v22 = std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, buf, &v24);
        IOObjectRelease(*(v22 + 17));
        if (v26 < 0)
        {
          operator delete(*buf);
        }

        std::string::basic_string[abi:ne200100]<0>(buf, "DisplayPort");
        v24 = buf;
        *(std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 10, buf, &v24) + 17) = 0;
        if (v26 < 0)
        {
          operator delete(*buf);
        }
      }
    }

    if (v5 != *(this + 12))
    {
      ctu::iokit::IOPortUSBCController::notifyCallback(this);
    }
  }

  else
  {
    v11 = *(this + 4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_298245000, v11, OS_LOG_TYPE_ERROR, "Failed to get transport description!", buf, 2u);
    }
  }

  result = ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&cf);
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298257B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&a9);
  _Unwind_Resume(a1);
}

void ctu::iokit::IOPortUSBCController::registerCallback(void *a1, uint64_t a2)
{
  v5 = a1[8];
  v4 = a1[9];
  if (v5 >= v4)
  {
    v9 = a1[7];
    v10 = (v5 - v9) >> 4;
    if ((v10 + 1) >> 60)
    {
      std::vector<std::weak_ptr<std::string>>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v9;
    v12 = v11 >> 3;
    if (v11 >> 3 <= (v10 + 1))
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      if (v13 >> 60)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v14 = operator new(16 * v13);
    }

    else
    {
      v14 = 0;
    }

    v15 = *a2;
    if (*a2)
    {
      v15 = _Block_copy(v15);
    }

    v16 = *(a2 + 8);
    v17 = &v14[16 * v10];
    *v17 = v15;
    *(v17 + 1) = v16;
    if (v16)
    {
      dispatch_retain(v16);
    }

    v18 = &v14[16 * v13];
    v8 = v17 + 16;
    v19 = a1[7];
    v20 = a1[8];
    v21 = &v17[v19 - v20];
    if (v20 != v19)
    {
      v22 = a1[7];
      v23 = &v17[v19 - v20];
      do
      {
        *v23 = *v22;
        v23 += 16;
        *v22 = 0;
        *(v22 + 1) = 0;
        v22 += 16;
      }

      while (v22 != v20);
      do
      {
        std::allocator_traits<std::allocator<dispatch::callback<void({block_pointer})(ctu::iokit::USBCAccessory)>>>::destroy[abi:ne200100]<dispatch::callback<void({block_pointer})(ctu::iokit::USBCAccessory)>,void,0>(v19);
        v19 += 16;
      }

      while (v19 != v20);
      v19 = a1[7];
    }

    a1[7] = v21;
    a1[8] = v8;
    a1[9] = v18;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    v6 = *a2;
    if (*a2)
    {
      v6 = _Block_copy(v6);
    }

    v7 = *(a2 + 8);
    *v5 = v6;
    v5[1] = v7;
    if (v7)
    {
      dispatch_retain(v7);
    }

    v8 = v5 + 2;
  }

  a1[8] = v8;
}

std::string *ctu::iokit::IOPortUSBCController::asString@<X0>(std::string *result@<X0>, std::string *a2@<X8>)
{
  v2 = result;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (result)
  {
    result = std::string::append(a2, "|USB3 Accessory", 0xFuLL);
  }

  if ((v2 & 2) != 0)
  {
    result = std::string::append(a2, "|DisplayPort Accessory", 0x16uLL);
  }

  if ((v2 & 4) != 0)
  {
    result = std::string::append(a2, "|USB-C to 3.5mm Headphone Jack Adapter", 0x26uLL);
  }

  if ((v2 & 8) != 0)
  {
    return std::string::append(a2, "|EarPods with USB-C Connector", 0x1DuLL);
  }

  return result;
}

void sub_298257DA0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator_traits<std::allocator<dispatch::callback<void({block_pointer})(ctu::iokit::USBCAccessory)>>>::destroy[abi:ne200100]<dispatch::callback<void({block_pointer})(ctu::iokit::USBCAccessory)>,void,0>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }
}

void *ctu::SharedSynchronizable<ctu::iokit::IOPortUSBCController>::~SharedSynchronizable(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void std::__shared_ptr_pointer<ctu::iokit::IOPortUSBCController *,std::shared_ptr<ctu::iokit::IOPortUSBCController> ctu::SharedSynchronizable<ctu::iokit::IOPortUSBCController>::make_shared_ptr<ctu::iokit::IOPortUSBCController>(ctu::iokit::IOPortUSBCController*)::{lambda(ctu::iokit::IOPortUSBCController *)#1},std::allocator<ctu::iokit::IOPortUSBCController>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ctu::iokit::IOPortUSBCController *,std::shared_ptr<ctu::iokit::IOPortUSBCController> ctu::SharedSynchronizable<ctu::iokit::IOPortUSBCController>::make_shared_ptr<ctu::iokit::IOPortUSBCController>(ctu::iokit::IOPortUSBCController*)::{lambda(ctu::iokit::IOPortUSBCController *)#1},std::allocator<ctu::iokit::IOPortUSBCController>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::shared_ptr<ctu::iokit::IOPortUSBCController> ctu::SharedSynchronizable<ctu::iokit::IOPortUSBCController>::make_shared_ptr<ctu::iokit::IOPortUSBCController>(ctu::iokit::IOPortUSBCController*)::{lambda(ctu::iokit::IOPortUSBCController*)#1}::operator() const(ctu::iokit::IOPortUSBCController*)::{lambda(void *)#1}::__invoke(ctu::iokit::IOPortUSBCController *a1)
{
  if (a1)
  {
    ctu::iokit::IOPortUSBCController::~IOPortUSBCController(a1);

    operator delete(v1);
  }
}

void std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

_OWORD *std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t **a1, void **a2, _OWORD **a3)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v5 = std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__find_equal<std::string>(a1, &v11, a2);
  v6 = *v5;
  if (!*v5)
  {
    v7 = v5;
    v6 = operator new(0x58uLL);
    v8 = *a3;
    v9 = *(*a3 + 2);
    v6[2] = **a3;
    *(v6 + 6) = v9;
    *v8 = 0;
    v8[1] = 0;
    v8[2] = 0;
    *(v6 + 56) = 0u;
    *(v6 + 72) = 0u;
    std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__insert_node_at(a1, v11, v7, v6);
  }

  return v6;
}

void *std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__find_equal<std::string>(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t *std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::find<std::string>(uint64_t a1, void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t *std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, void **a2, __int128 **a3)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v5 = std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__find_equal<std::string>(a1, &v12, a2);
  v6 = *v5;
  if (!*v5)
  {
    v7 = v5;
    v8 = *a3;
    v9 = operator new(0x58uLL);
    v6 = v9;
    if (*(v8 + 23) < 0)
    {
      std::string::__init_copy_ctor_external((v9 + 32), *v8, *(v8 + 1));
    }

    else
    {
      v10 = *v8;
      *(v9 + 6) = *(v8 + 2);
      *(v9 + 2) = v10;
    }

    *(v6 + 9) = 0u;
    *(v6 + 7) = 0u;
    std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__insert_node_at(a1, v12, v7, v6);
  }

  return v6;
}

void **dispatch::async<void ctu::SharedSynchronizable<ctu::iokit::IOPortUSBCController>::execute_wrapped<ctu::iokit::IOPortUSBCController::setupUSBProtocols(void)::$_0>(ctu::iokit::IOPortUSBCController::setupUSBProtocols(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ctu::iokit::IOPortUSBCController::setupUSBProtocols(void)::$_0,dispatch_queue_s *::default_delete<ctu::iokit::IOPortUSBCController::setupUSBProtocols(void)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v5 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_298245000, v3, OS_LOG_TYPE_DEFAULT, "#I USB protocol is detected. Setting it up", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "USB2");
  v16[0] = buf;
  if (*(std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((v2 + 80), buf, v16) + 56) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v16, "USB2");
    if (ctu::iokit::IOPortUSBCController::setupFindingService(v2, v16))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "USB2");
      ctu::iokit::IOPortUSBCController::setupDisconnectingService(v2, __p);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v17 < 0)
    {
      operator delete(v16[0]);
    }
  }

  if (v19 < 0)
  {
    operator delete(*buf);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "USB3");
  v12[0] = buf;
  if (*(std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((v2 + 80), buf, v12) + 56) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v12, "USB3");
    if (ctu::iokit::IOPortUSBCController::setupFindingService(v2, v12))
    {
      std::string::basic_string[abi:ne200100]<0>(v10, "USB3");
      ctu::iokit::IOPortUSBCController::setupDisconnectingService(v2, v10);
      if (v11 < 0)
      {
        operator delete(v10[0]);
      }
    }

    if (v13 < 0)
    {
      operator delete(v12[0]);
    }
  }

  if (v19 < 0)
  {
    operator delete(*buf);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "DisplayPort");
  v8[0] = buf;
  if (*(std::__tree<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::iokit::IOPortUSBCController::DeviceContext>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((v2 + 80), buf, v8) + 56) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "DisplayPort");
    if (ctu::iokit::IOPortUSBCController::setupFindingService(v2, v8))
    {
      std::string::basic_string[abi:ne200100]<0>(v6, "DisplayPort");
      ctu::iokit::IOPortUSBCController::setupDisconnectingService(v2, v6);
      if (v7 < 0)
      {
        operator delete(v6[0]);
      }
    }

    if (v9 < 0)
    {
      operator delete(v8[0]);
    }
  }

  if (v19 < 0)
  {
    operator delete(*buf);
  }

  operator delete(v1);
  return std::unique_ptr<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::init(void)::$_0>(ctu::iokit::IOHIDController::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::iokit::IOHIDController::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&v5);
}

void sub_298258474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (*(v41 - 41) < 0)
  {
    operator delete(*(v41 - 64));
  }

  operator delete(v40);
  std::unique_ptr<void ctu::SharedSynchronizable<ctu::iokit::IOHIDController>::execute_wrapped<ctu::iokit::IOHIDController::init(void)::$_0>(ctu::iokit::IOHIDController::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::iokit::IOHIDController::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c69_ZTSN8dispatch5blockIU13block_pointerFvN3ctu5iokit13USBCAccessoryEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c69_ZTSN8dispatch5blockIU13block_pointerFvN3ctu5iokit13USBCAccessoryEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t ctu::cf::assign()
{
  return MEMORY[0x2A1C6F268]();
}

{
  return MEMORY[0x2A1C6F270]();
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}