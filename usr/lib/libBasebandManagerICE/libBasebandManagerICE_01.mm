char *std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::__emplace_back_slow_path<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>(char **a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v7 = operator new(24 * v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[24 * v2];
  v9 = &v7[24 * v6];
  v10 = *a2 ^ (*a2 >> 31);
  v12 = (a2 + 8);
  v11 = *(a2 + 8);
  if (v10 == 2)
  {
    *(v8 + 1) = (*(*v11 + 32))(v11);
    v19 = *a2 ^ (*a2 >> 31);
    v14 = *a1;
    v15 = a1[1];
    v16 = (v15 - *a1);
    *v8 = v19;
    v17 = v8 + 24;
    v18 = v15 - v14;
    if (v15 == v14)
    {
      goto LABEL_26;
    }
  }

  else if (v10 == 1)
  {
    v13 = *(a2 + 16);
    *(v8 + 1) = v11;
    *(v8 + 2) = v13;
    *v12 = 0;
    *(a2 + 16) = 0;
    v14 = *a1;
    v15 = a1[1];
    v16 = (v15 - *a1);
    *v8 = 1;
    v17 = v8 + 24;
    v18 = v15 - v14;
    if (v15 == v14)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v20 = *(a2 + 16);
    *(v8 + 1) = v11;
    *(v8 + 2) = v20;
    *v12 = 0;
    *(a2 + 16) = 0;
    v14 = *a1;
    v15 = a1[1];
    v16 = (v15 - *a1);
    *v8 = 0;
    v17 = v8 + 24;
    v18 = v15 - v14;
    if (v15 == v14)
    {
      goto LABEL_26;
    }
  }

  v28 = v16;
  v29 = &v7[24 * v6];
  v21 = 0;
  v22 = &v7[24 * v2 - 8 * (v18 >> 3)];
  do
  {
    v23 = &v14[v21];
    v24 = &v22[v21];
    v25 = *&v14[v21 + 8];
    if ((*&v14[v21] ^ (*&v14[v21] >> 31)) == 2)
    {
      *(v24 + 1) = (*(*v25 + 32))(v25);
    }

    else
    {
      *(v24 + 1) = v25;
      v26 = *&v14[v21 + 16];
      *&v22[v21 + 16] = v26;
      if (v26)
      {
        atomic_fetch_add_explicit((v26 + 12), 1u, memory_order_relaxed);
      }
    }

    *&v22[v21] = *v23 ^ (*v23 >> 31);
    v21 += 24;
  }

  while (v23 + 6 != v15);
  do
  {
    boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v14);
    v14 += 24;
  }

  while (v14 != v15);
  v14 = *a1;
  v16 = v28;
  v9 = v29;
LABEL_26:
  *a1 = (v8 - v16);
  a1[1] = v17;
  a1[2] = v9;
  if (v14)
  {
    operator delete(v14);
  }

  return v17;
}

void sub_2974853EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__split_buffer<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_297485400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (v6)
  {
    v8 = a4 + v6 + a2 + a3 - 24;
    v9 = -v6;
    do
    {
      boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v8);
      v8 -= 24;
      v9 += 24;
    }

    while (v9);
  }

  std::__split_buffer<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(i - 24);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<data::TransportService::State>>::~foreign_weak_ptr_impl(uint64_t result)
{
  *result = &unk_2A1E41DA0;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<data::TransportService::State>>::~foreign_weak_ptr_impl(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E41DA0;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<data::TransportService::State>>::lock(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(a1 + 8);
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
LABEL_6:
  v7 = operator new(0x18uLL);
  *v7 = &unk_2A1E41E00;
  v7[1] = v6;
  v7[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a2 = v7;
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *a2 = v7;
  }
}

void *boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<data::TransportService::State>>::clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *result = &unk_2A1E41DA0;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *boost::signals2::detail::foreign_shared_ptr_impl<std::shared_ptr<data::TransportService::State>>::~foreign_shared_ptr_impl(void *result)
{
  *result = &unk_2A1E41E00;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void boost::signals2::detail::foreign_shared_ptr_impl<std::shared_ptr<data::TransportService::State>>::~foreign_shared_ptr_impl(void *a1)
{
  *a1 = &unk_2A1E41E00;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

void *boost::signals2::detail::foreign_shared_ptr_impl<std::shared_ptr<data::TransportService::State>>::clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *result = &unk_2A1E41E00;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void **boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>::~slot(void **a1)
{
  v2 = a1[3];
  if (v2)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 4, a1 + 4, 2);
      }
    }

    a1[3] = 0;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v5 -= 24;
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v5);
      }

      while (v5 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
  }

  return a1;
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9540] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9428], MEMORY[0x29EDC9380]);
}

void data::TransportService::State::unblockThrottling_sync(data::TransportService::State *this)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *(this + 4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Disabling throttling", &v13, 2u);
  }

  if (*(this + 10))
  {
    v3 = *(this + 4);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Stop Listening for UI events", &v13, 2u);
    }

    v4 = *(this + 11);
    *(this + 10) = 0;
    *(this + 11) = 0;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  v5 = *(this + 12);
  if (v5)
  {
    dispatch_source_cancel(v5);
    v6 = *(this + 12);
    *(this + 12) = 0;
    if (v6)
    {
      dispatch_release(v6);
    }

    v7 = *(this + 4);
    v5 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_297476000, v7, OS_LOG_TYPE_DEFAULT, "#I Limit timer stopped", &v13, 2u);
    }
  }

  if (*(this + 10) != 1)
  {
    goto LABEL_21;
  }

  if (*(this + 12) == 1)
  {
    v8 = *(this + 4);
    v5 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      v13 = 136315394;
      v14 = "Throttled";
      v15 = 2080;
      v16 = "Idle";
      _os_log_impl(&dword_297476000, v8, OS_LOG_TYPE_DEFAULT, "#I State changing from %s to %s", &v13, 0x16u);
    }

    *(this + 12) = 0;
  }

  Instance = ApplePDPHelperInterface::getInstance(v5);
  if ((ApplePDPHelperInterface::activateLowPowerPDPThrottle(Instance) & 1) == 0 && (v10 = *(this + 4), os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)))
  {
    LOWORD(v13) = 0;
    _os_log_error_impl(&dword_297476000, v10, OS_LOG_TYPE_ERROR, "Failed to disable flow for throttling", &v13, 2u);
    v12 = *MEMORY[0x29EDCA608];
  }

  else
  {
LABEL_21:
    v11 = *MEMORY[0x29EDCA608];
  }
}

void ___ZN4data16TransportService5State13enterLowPowerEv_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = *(v1 + 96);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(v1 + 96);
    *(v1 + 96) = 0;
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = *(v1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Limit timer stopped", &v10, 2u);
    }
  }

  v5 = *(v1 + 48);
  if (v5 >= 2)
  {
    if (v5 == 2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = *(v1 + 32);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "Idle";
      if (v5 == 1)
      {
        v7 = "Throttled";
      }

      v10 = 136315394;
      v11 = v7;
      v12 = 2080;
      v13 = "LowPower";
      _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I State changing from %s to %s", &v10, 0x16u);
    }

    *(v1 + 48) = 2;
  }

  v8 = *(v1 + 32);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_297476000, v8, OS_LOG_TYPE_DEFAULT, "#I Entered low power", &v10, 2u);
  }

LABEL_15:
  v9 = *MEMORY[0x29EDCA608];
}

void ___ZN4data16TransportService5State12exitLowPowerEv_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  if ((v2 - 1) <= 1)
  {
    v3 = *(v1 + 32);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = "LowPower";
      if (v2 != 2)
      {
        v4 = "Throttled";
      }

      *buf = 136315394;
      *&buf[4] = v4;
      *&buf[12] = 2080;
      *&buf[14] = "Throttled";
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I State changing from %s to %s", buf, 0x16u);
    }

    *(v1 + 48) = 1;
    data::TransportService::State::startLimitTimer_sync(v1);
  }

  v5 = *(v1 + 32);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v5, OS_LOG_TYPE_DEFAULT, "#I Exited Low Power", buf, 2u);
  }

  if (!*(v1 + 80))
  {
    v7 = *(v1 + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_297476000, v7, OS_LOG_TYPE_DEFAULT, "#I Listening for UI events", buf, 2u);
    }

    pthread_mutex_lock(&ctu::Singleton<sys::UIObserver,sys::UIObserver,ctu::PthreadMutexGuardPolicy<sys::UIObserver>>::sInstance);
    v8 = xmmword_2A18CAC48;
    if (!xmmword_2A18CAC48)
    {
      memset(buf, 170, 16);
      v9 = operator new(0x40uLL);
      sys::UIObserver::UIObserver(v9);
      std::shared_ptr<sys::UIObserver>::shared_ptr[abi:ne200100]<sys::UIObserver,0>(buf, v9);
      v10 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      v11 = *(&xmmword_2A18CAC48 + 1);
      xmmword_2A18CAC48 = v10;
      if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }

      v12 = *&buf[8];
      if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }

      v8 = xmmword_2A18CAC48;
    }

    v16 = *(&xmmword_2A18CAC48 + 1);
    if (*(&xmmword_2A18CAC48 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18CAC48 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<sys::UIObserver,sys::UIObserver,ctu::PthreadMutexGuardPolicy<sys::UIObserver>>::sInstance);
    sys::UIObserver::observe(v8, 1, &v17);
    v13 = v17;
    v17 = 0uLL;
    v14 = *(v1 + 88);
    *(v1 + 80) = v13;
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    v15 = *(&v17 + 1);
    if (*(&v17 + 1) && !atomic_fetch_add((*(&v17 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }
  }

  v6 = *MEMORY[0x29EDCA608];
}

void sub_2974860C4(_Unwind_Exception *a1)
{
  operator delete(v1);
  pthread_mutex_unlock(&ctu::Singleton<sys::UIObserver,sys::UIObserver,ctu::PthreadMutexGuardPolicy<sys::UIObserver>>::sInstance);
  _Unwind_Resume(a1);
}

void data::TransportService::State::startLimitTimer_sync(data::TransportService::State *this)
{
  if (*(this + 10) == 1)
  {
    v2 = dispatch_time(0, 1000000000 * *(this + 11) + 500000000);
    v3 = *(this + 12);
    if (v3)
    {
      dispatch_source_cancel(v3);
      v4 = *(this + 12);
      *(this + 12) = 0;
      if (v4)
      {
        dispatch_release(v4);
      }

      v5 = *(this + 4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_297476000, v5, OS_LOG_TYPE_DEFAULT, "#I Limit timer stopped", buf, 2u);
      }
    }

    v6 = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, *(this + 2));
    v7 = *(this + 12);
    *(this + 12) = v6;
    if (v7)
    {
      dispatch_release(v7);
      v6 = *(this + 12);
    }

    dispatch_source_set_timer(v6, v2, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    v8 = *(this + 1);
    if (!v8 || (v9 = *this, (v10 = std::__shared_weak_count::lock(v8)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v11 = v10;
    p_shared_weak_owners = &v10->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v11);
    }

    v13 = *(this + 12);
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 1174405120;
    handler[2] = ___ZN4data16TransportService5State20startLimitTimer_syncEv_block_invoke;
    handler[3] = &__block_descriptor_tmp_50;
    handler[4] = this;
    handler[5] = v9;
    v16 = v11;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    dispatch_source_set_event_handler(v13, handler);
    dispatch_activate(*(this + 12));
    v14 = *(this + 4);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_297476000, v14, OS_LOG_TYPE_DEFAULT, "#I Limit timer started", buf, 2u);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_weak(v16);
    }

    std::__shared_weak_count::__release_weak(v11);
  }
}

void ctu::SharedSynchronizable<data::TransportService::State>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN4data16TransportService5StateEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E41E48;
  block[5] = v5;
  v12 = v7;
  p_shared_owners = &v7->__shared_owners_;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  v10 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

uint64_t __copy_helper_block_e8_40c58_ZTSNSt3__110shared_ptrIKN4data16TransportService5StateEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c58_ZTSNSt3__110shared_ptrIKN4data16TransportService5StateEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN4data16TransportService5State20startLimitTimer_syncEv_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    v9 = v4;
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = *(v3 + 4);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Limit timer expired", v7, 2u);
        }

        data::TransportService::State::unblockThrottling_sync(v3);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_297486630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c54_ZTSNSt3__18weak_ptrIN4data16TransportService5StateEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c54_ZTSNSt3__18weak_ptrIN4data16TransportService5StateEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN4data16TransportService5State9setConfigENS0_16ThrottlingConfigE_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT) && ((data::TransportService::ThrottlingConfig::asString((a1 + 40), __p), v14 >= 0) ? (v4 = __p) : (v4 = __p[0]), *buf = 136315138, v16 = v4, _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Config set to %s", buf, 0xCu), v14 < 0))
  {
    operator delete(__p[0]);
    v5 = *(v2 + 40);
    v6 = *(a1 + 40);
    if (v5 == v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *(v2 + 40);
    v6 = *(a1 + 40);
    if (v5 == v6)
    {
      goto LABEL_13;
    }
  }

  *(v2 + 40) = v6;
  v7 = *(v2 + 32);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    LODWORD(__p[0]) = 67109120;
    HIDWORD(__p[0]) = v6;
    _os_log_impl(&dword_297476000, v7, OS_LOG_TYPE_DEFAULT, "#I Throttling %d", __p, 8u);
  }

  Instance = ApplePDPHelperInterface::getInstance(v8);
  if ((ApplePDPHelperInterface::enableLowPowerPDPThrottle(Instance) & 1) == 0)
  {
    v10 = *(v2 + 32);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p[0]) = 67109120;
      HIDWORD(__p[0]) = v6;
      _os_log_error_impl(&dword_297476000, v10, OS_LOG_TYPE_ERROR, "Failed setting throttling to %d", __p, 8u);
    }
  }

  v5 = *(a1 + 40);
LABEL_13:
  if (v5 == 1)
  {
    v11 = *(a1 + 44);
    if (*(v2 + 44) != v11)
    {
      *(v2 + 44) = v11;
      if (*(v2 + 96))
      {
        data::TransportService::State::startLimitTimer_sync(v2);
      }
    }
  }

  v12 = *MEMORY[0x29EDCA608];
}

void ___ZNK4data16TransportService5State9dumpStateEv_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    data::TransportService::ThrottlingConfig::asString((v1 + 40), __p);
    if (v15 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = *__p;
    }

    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Config: %s", buf, 0xCu);
    if (v15 < 0)
    {
      operator delete(*__p);
    }

    v2 = *(v1 + 32);
  }

  v4 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    v5 = *(v1 + 48);
    if (v5 > 2)
    {
      v6 = "???";
    }

    else
    {
      v6 = off_29EE6B2A8[v5];
    }

    *__p = 136315138;
    *&__p[4] = v6;
    _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Low Power State %s", __p, 0xCu);
  }

  memset(buf, 0, 12);
  ApplePDPHelperInterface::getInstance(v4);
  NumLowPowerPDPThrottleStats = ApplePDPHelperInterface::getNumLowPowerPDPThrottleStats();
  v8 = *(v1 + 32);
  if (NumLowPowerPDPThrottleStats)
  {
    if (os_log_type_enabled(*(v1 + 32), OS_LOG_TYPE_DEFAULT))
    {
      *__p = 67109632;
      *&__p[4] = *buf;
      *&__p[8] = 1024;
      *&__p[10] = *&buf[4];
      v13 = 1024;
      v14 = *&buf[8];
      _os_log_impl(&dword_297476000, v8, OS_LOG_TYPE_DEFAULT, "#I Blocked outgoing packets: %u, non-baseband wakes: %u, incoming traffic deactivations: %u", __p, 0x14u);
      v9 = *MEMORY[0x29EDCA608];
      return;
    }
  }

  else if (os_log_type_enabled(*(v1 + 32), OS_LOG_TYPE_ERROR))
  {
    *__p = 0;
    _os_log_error_impl(&dword_297476000, v8, OS_LOG_TYPE_ERROR, "Failed to query throttle stats", __p, 2u);
    v11 = *MEMORY[0x29EDCA608];
    return;
  }

  v10 = *MEMORY[0x29EDCA608];
}

void ___ZN4data16TransportService5State17unblockThrottlingEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Unblocking throttling", v3, 2u);
  }

  data::TransportService::State::unblockThrottling_sync(v1);
}

uint64_t __cxx_global_var_init_3()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<sys::UIObserver>::~PthreadMutexGuardPolicy, &ctu::Singleton<sys::UIObserver,sys::UIObserver,ctu::PthreadMutexGuardPolicy<sys::UIObserver>>::sInstance, &dword_297476000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_297476000);
  }

  return result;
}

void BudgetData::BudgetData(BudgetData *this)
{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
}

{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
}

void BudgetData::~BudgetData(BudgetData *this)
{
  v2 = (this + 8);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this, *(this + 1));
  *this = v2;
  *(this + 2) = 0;
  *v2 = 0;
}

{
  v2 = (this + 8);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this, *(this + 1));
  *this = v2;
  *(this + 2) = 0;
  *v2 = 0;
}

void BudgetData::BudgetData(BudgetData *this, const BudgetData *a2)
{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  if (this != a2)
  {
    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(this, *a2, a2 + 1);
  }
}

{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  if (this != a2)
  {
    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(this, *a2, a2 + 1);
  }
}

void *BudgetData::BudgetData(void *result, uint64_t a2)
{
  result[2] = 0;
  result[1] = 0;
  *result = result + 1;
  *result = *a2;
  v2 = *(a2 + 8);
  *a2 = result + 1;
  *(result + 1) = v2;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  if (result[2])
  {
    v3 = (result[1] + 16);
  }

  else
  {
    v3 = result;
  }

  *v3 = result + 1;
  *a2 = a2 + 8;
  return result;
}

{
  result[2] = 0;
  result[1] = 0;
  *result = result + 1;
  *result = *a2;
  v2 = *(a2 + 8);
  *a2 = result + 1;
  *(result + 1) = v2;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  if (result[2])
  {
    v3 = (result[1] + 16);
  }

  else
  {
    v3 = result;
  }

  *v3 = result + 1;
  *a2 = a2 + 8;
  return result;
}

void **BudgetData::operator=(void **result, void **a2)
{
  if (a2 != result)
  {
    v2 = result;
    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(result, *a2, a2 + 1);
    return v2;
  }

  return result;
}

uint64_t BudgetData::get(uint64_t **a1, unsigned int a2)
{
  v2 = a2;
  v5 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    while (1)
    {
      while (1)
      {
        v6 = v4;
        v7 = *(v4 + 28);
        if (v7 <= a2)
        {
          break;
        }

        v4 = *v6;
        v5 = v6;
        if (!*v6)
        {
          goto LABEL_8;
        }
      }

      if (v7 >= a2)
      {
        break;
      }

      v4 = v6[1];
      if (!v4)
      {
        v5 = v6 + 1;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v6 = (a1 + 1);
LABEL_8:
    v8 = v6;
    v6 = operator new(0x28uLL);
    *(v6 + 28) = v2;
    *(v6 + 32) = 0;
    *(v6 + 36) = 0;
    *v6 = 0;
    v6[1] = 0;
    v6[2] = v8;
    *v5 = v6;
    v9 = **a1;
    if (v9)
    {
      *a1 = v9;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v6);
    a1[2] = (a1[2] + 1);
  }

  return v6[4];
}

uint64_t *BudgetData::set(uint64_t *result, unsigned int a2, int a3)
{
  v4 = a2;
  v5 = result;
  v7 = result + 1;
  v6 = result[1];
  if (v6)
  {
    while (1)
    {
      while (1)
      {
        v8 = v6;
        v9 = *(v6 + 28);
        if (v9 <= a2)
        {
          break;
        }

        v6 = *v8;
        v7 = v8;
        if (!*v8)
        {
          goto LABEL_8;
        }
      }

      if (v9 >= a2)
      {
        break;
      }

      v6 = v8[1];
      if (!v6)
      {
        v7 = v8 + 1;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v8 = result + 1;
LABEL_8:
    v10 = v8;
    v8 = operator new(0x28uLL);
    *(v8 + 28) = v4;
    *(v8 + 32) = 0;
    *(v8 + 36) = 0;
    *v8 = 0;
    v8[1] = 0;
    v8[2] = v10;
    *v7 = v8;
    v11 = **v5;
    if (v11)
    {
      *v5 = v11;
    }

    result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v5[1], v8);
    ++v5[2];
  }

  *(v8 + 8) = a3;
  *(v8 + 36) = 1;
  return result;
}

void BudgetData::clear(BudgetData *this)
{
  v2 = (this + 8);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this, *(this + 1));
  *this = v2;
  *(this + 2) = 0;
  *v2 = 0;
}

void *BudgetData::for_each(void *result, uint64_t a2)
{
  v2 = result + 1;
  v3 = *result;
  if (*result != result + 1)
  {
    do
    {
      v5 = *(a2 + 24);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      result = (*(*v5 + 48))(v5, v3 + 28, v3 + 4);
      if (!result)
      {
        break;
      }

      v6 = v3[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v2);
  }

  return result;
}

void std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(void **a1, void *a2, void *a3)
{
  if (!a1[2])
  {
    goto LABEL_17;
  }

  v6 = *a1;
  v8 = a1 + 1;
  v7 = a1[1];
  *a1 = a1 + 1;
  v7[2] = 0;
  a1[2] = 0;
  a1[1] = 0;
  v9 = v6[1] ? v6[1] : v6;
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9[2];
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v34 = v10[1];
        if (!v34)
        {
          break;
        }

        do
        {
          v10 = v34;
          v34 = *v34;
        }

        while (v34);
      }
    }

    else
    {
      for (v10[1] = 0; v11; v11 = v10[1])
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  if (a2 != a3)
  {
    v24 = a2;
    while (1)
    {
      v12 = v10;
      v25 = *(v24 + 28);
      *(v9 + 28) = v25;
      v26 = *(v24 + 8);
      *(v9 + 36) = *(v24 + 36);
      *(v9 + 8) = v26;
      v27 = *v8;
      v28 = a1 + 1;
      v29 = a1 + 1;
      if (*v8)
      {
        break;
      }

LABEL_38:
      *v9 = 0;
      v9[1] = 0;
      v9[2] = v28;
      *v29 = v9;
      v30 = **a1;
      if (v30)
      {
        goto LABEL_39;
      }

LABEL_40:
      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v9);
      a1[2] = (a1[2] + 1);
      if (v10)
      {
        v10 = v10[2];
        if (v10)
        {
          v32 = *v10;
          if (*v10 == v12)
          {
            *v10 = 0;
            while (1)
            {
              v33 = v10[1];
              if (!v33)
              {
                break;
              }

              do
              {
                v10 = v33;
                v33 = *v33;
              }

              while (v33);
            }
          }

          else
          {
            for (v10[1] = 0; v32; v32 = v10[1])
            {
              do
              {
                v10 = v32;
                v32 = *v32;
              }

              while (v32);
            }
          }
        }
      }

      else
      {
        v10 = 0;
      }

      v31 = v24[1];
      if (v31)
      {
        do
        {
          a2 = v31;
          v31 = *v31;
        }

        while (v31);
      }

      else
      {
        do
        {
          a2 = v24[2];
          v23 = *a2 == v24;
          v24 = a2;
        }

        while (!v23);
      }

      if (v12)
      {
        v24 = a2;
        v9 = v12;
        if (a2 != a3)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    do
    {
      while (1)
      {
        v28 = v27;
        if (v25 >= *(v27 + 28))
        {
          break;
        }

        v27 = *v27;
        v29 = v28;
        if (!*v28)
        {
          goto LABEL_38;
        }
      }

      v27 = v27[1];
    }

    while (v27);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v28;
    v28[1] = v9;
    v30 = **a1;
    if (!v30)
    {
      goto LABEL_40;
    }

LABEL_39:
    *a1 = v30;
    goto LABEL_40;
  }

  v12 = v9;
LABEL_13:
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(a1, v12);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(a1, v10);
  }

LABEL_17:
  if (a2 != a3)
  {
    v14 = a1 + 1;
    while (1)
    {
      v15 = operator new(0x28uLL);
      v16 = *(a2 + 9);
      *(v15 + 28) = *(a2 + 28);
      *(v15 + 9) = v16;
      v17 = *v14;
      v18 = a1 + 1;
      v19 = a1 + 1;
      if (*v14)
      {
        break;
      }

LABEL_25:
      *v15 = 0;
      *(v15 + 1) = 0;
      *(v15 + 2) = v18;
      *v19 = v15;
      v20 = **a1;
      if (v20)
      {
        goto LABEL_26;
      }

LABEL_27:
      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v15);
      a1[2] = (a1[2] + 1);
      v21 = a2[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = a2[2];
          v23 = *v22 == a2;
          a2 = v22;
        }

        while (!v23);
      }

      a2 = v22;
      if (v22 == a3)
      {
        return;
      }
    }

    do
    {
      while (1)
      {
        v18 = v17;
        if (v15[28] >= *(v17 + 28))
        {
          break;
        }

        v17 = *v17;
        v19 = v18;
        if (!*v18)
        {
          goto LABEL_25;
        }
      }

      v17 = v17[1];
    }

    while (v17);
    *v15 = 0;
    *(v15 + 1) = 0;
    *(v15 + 2) = v18;
    v18[1] = v15;
    v20 = **a1;
    if (!v20)
    {
      goto LABEL_27;
    }

LABEL_26:
    *a1 = v20;
    goto LABEL_27;
  }
}

void coex::Module::create(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x58uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  v9[0] = v6;
  v9[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  coex::Module::Module(v4, v9);
  *a2 = v5;
  v8 = operator new(0x20uLL);
  *v8 = &unk_2A1E42B20;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = v5;
  a2[1] = v8;
  if (v7)
  {

    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_2974873E4(_Unwind_Exception *a1)
{
  (*(*v1 + 8))(v1);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  _Unwind_Resume(a1);
}

void *coex::Module::Module(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E500C0;
  a1[1] = v4;
  a1[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    a1[3] = 0;
    a1[4] = 0;
    a1[8] = 0;
    a1[7] = 0;
    a1[5] = 0;
    a1[6] = a1 + 7;
    std::__shared_weak_count::__release_weak(v5);
    *a1 = &unk_2A1E42AA8;
    std::__shared_weak_count::__release_weak(v5);
  }

  else
  {
    a1[3] = 0;
    a1[4] = 0;
    a1[7] = 0;
    a1[8] = 0;
    a1[5] = 0;
    a1[6] = a1 + 7;
    *a1 = &unk_2A1E42AA8;
  }

  *a1 = &unk_2A1E420F8;
  a1[9] = 0;
  a1[10] = 0;
  if (capabilities::abs::supportsCoex(a1))
  {
    v6 = *a2;
    v7 = a2[1];
    v12 = v6;
    v13 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    coex::Module::State::create(&v12, &v14);
    v8 = v14;
    v14 = 0uLL;
    v9 = a1[10];
    *(a1 + 9) = v8;
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v10 = *(&v14 + 1);
    if (*(&v14 + 1) && !atomic_fetch_add((*(&v14 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  return a1;
}

void sub_297487640(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v3);
    Service::~Service(v1);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v3);
  Service::~Service(v1);
  _Unwind_Resume(a1);
}

void coex::Module::State::create(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  v4 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v5 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(&v30, v4);
    v6 = v30;
    v30 = 0uLL;
    v7 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v6;
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v8 = *(&v30 + 1);
    if (*(&v30 + 1) && !atomic_fetch_add((*(&v30 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v5 = off_2A18CADD8;
  }

  v9 = *(&off_2A18CADD8 + 1);
  v27[2] = v5;
  v27[3] = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v5 + 48))(&v28, v5);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  *a2 = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 8) = 0xAAAAAAAAAAAAAAAALL;
  v10 = operator new(0xC8uLL);
  v11 = v10;
  v12 = v29;
  v27[0] = v28;
  v27[1] = v29;
  if (v29)
  {
    atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *a1;
  v14 = a1[1];
  v26[0] = v13;
  v26[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  coex::Module::State::State(v10, v27, v26);
  *a2 = v11;
  *(a2 + 8) = 0xAAAAAAAAAAAAAAAALL;
  v15 = operator new(0x20uLL);
  v15[1] = 0;
  v21 = v15 + 1;
  *v15 = &unk_2A1E42B70;
  v15[2] = 0;
  v15[3] = v11;
  *(a2 + 8) = v15;
  v22 = v11[1];
  if (!v22)
  {
    atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v15 + 2, 1uLL, memory_order_relaxed);
    *v11 = v11;
    v11[1] = v15;
    if (atomic_fetch_add(v21, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v22->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v15 + 2, 1uLL, memory_order_relaxed);
    *v11 = v11;
    v11[1] = v15;
    v23 = v15;
    std::__shared_weak_count::__release_weak(v22);
    v15 = v23;
    if (!atomic_fetch_add(v21, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_23:
      v24 = v15;
      (*(*v15 + 16))(v15, v16, v17, v18, v19, v20);
      std::__shared_weak_count::__release_weak(v24);
    }
  }

LABEL_24:
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  coex::Module::State::init(*a2);
  v25 = v29;
  if (v29)
  {
    if (!atomic_fetch_add((v29 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v25->__on_zero_shared)(v25);
      std::__shared_weak_count::__release_weak(v25);
    }
  }
}

void sub_297487A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v7);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297487A3C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<coex::Module::State> ctu::SharedSynchronizable<coex::Module::State>::make_shared_ptr<coex::Module::State>(coex::Module::State*)::{lambda(coex::Module::State*)#1}::operator() const(coex::Module::State*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void sub_297487A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  __cxa_end_catch();
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_297487ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297487AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void coex::Module::~Module(coex::Module *this)
{
  *this = &unk_2A1E420F8;
  v2 = *(this + 10);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  *this = &unk_2A1E500C0;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v3 = *(this + 3);
  if (v3)
  {
    v4 = *(this + 4);
    v5 = *(this + 3);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = *(this + 3);
    }

    *(this + 4) = v3;
    operator delete(v5);
  }

  v7 = *(this + 2);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

{
  *this = &unk_2A1E420F8;
  v2 = *(this + 10);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  *this = &unk_2A1E500C0;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v3 = *(this + 3);
  if (v3)
  {
    v4 = *(this + 4);
    v5 = *(this + 3);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = *(this + 3);
    }

    *(this + 4) = v3;
    operator delete(v5);
  }

  v7 = *(this + 2);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

{
  *this = &unk_2A1E420F8;
  v2 = *(this + 10);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  *this = &unk_2A1E500C0;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v3 = *(this + 3);
  if (v3)
  {
    v4 = *(this + 4);
    v5 = *(this + 3);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = *(this + 3);
    }

    *(this + 4) = v3;
    operator delete(v5);
  }

  v7 = *(this + 2);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(this);
}

_WORD *coex::Module::getBootstrapStages@<X0>(_WORD *this@<X0>, void *a2@<X8>)
{
  if (*(this + 9))
  {
    v3 = operator new(2uLL);
    *a2 = v3;
    *v3 = 256;
    this = v3 + 1;
    a2[1] = this;
    a2[2] = this;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return this;
}

_WORD *coex::Module::State::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

_BYTE *coex::Module::getShutdownStages@<X0>(_BYTE *this@<X0>, void *a2@<X8>)
{
  if (*(this + 9))
  {
    v3 = operator new(1uLL);
    *a2 = v3;
    *v3 = 3;
    this = v3 + 1;
    a2[1] = this;
    a2[2] = this;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return this;
}

_BYTE *coex::Module::State::getShutdownStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(1uLL);
  *a1 = v3;
  *v3 = 3;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void coex::Module::bootstrap(coex::Module *a1)
{
  v2 = *(a1 + 9);
  if (v2)
  {
    coex::Module::State::registerEventHandlers(v2, a1);
  }
}

void coex::Module::State::registerEventHandlers(coex::Module::State *this, coex::Module *a2)
{
  v3 = *(this + 1);
  if (!v3 || (v5 = *this, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = this;
  v8[1] = a2;
  v9 = *(this + 2);
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<coex::Module::State>::execute_wrapped<coex::Module::State::registerEventHandlers(coex::Module*)::$_0>(coex::Module::State::registerEventHandlers(coex::Module*)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<coex::Module::State::registerEventHandlers(coex::Module*)::$_0,dispatch_queue_s *::default_delete<coex::Module::State::registerEventHandlers(coex::Module*)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void coex::Module::shutdownWithStage(uint64_t a1, char a2, NSObject **a3)
{
  v3 = *(a1 + 72);
  if (v3)
  {
    v4 = *a3;
    v6 = v4;
    if (v4)
    {
      dispatch_retain(v4);
      dispatch_group_enter(v4);
      coex::Module::State::shutdown(v3, a2, &v6);
      dispatch_group_leave(v4);

      dispatch_release(v4);
    }

    else
    {
      coex::Module::State::shutdown(v3, a2, &v6);
    }
  }
}

void coex::Module::State::shutdown(uint64_t *a1, char a2, NSObject **a3)
{
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1174405120;
  v13[2] = ___ZN4coex6Module5State8shutdownE13ShutdownStageN8dispatch13group_sessionE_block_invoke;
  v13[3] = &__block_descriptor_tmp_118;
  v5 = *a3;
  v13[4] = a1;
  group = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(group);
  }

  v15 = a2;
  v6 = a1[1];
  if (!v6 || (v7 = *a1, (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = a1[2];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E434A8;
  block[5] = v7;
  v17 = v9;
  p_shared_owners = &v9->__shared_owners_;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v13;
  dispatch_async(v10, block);
  v12 = v17;
  if (!v17 || atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_8:
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

LABEL_9:
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void coex::Module::State::init(coex::Module::State *this)
{
  v850 = *MEMORY[0x29EDCA608];
  v2 = *(this + 1);
  if (!v2 || (v3 = *this, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v744 = this;
  p_shared_weak_owners = &v4->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
  }

  v7 = v5;
  v8 = *(v744 + 7);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN4coex6Module5State4initEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_23;
  aBlock[4] = v744;
  aBlock[5] = v3;
  v761 = v7;
  v815 = v7;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v9 = _Block_copy(aBlock);
  v10 = v9;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v8;
  LODWORD(v839) = 1200;
  if (!v9)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v8 + 1, &block);
    v11 = v838[1];
    if (!v838[1])
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v838[1] = _Block_copy(v9);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v8 + 1, &block);
  v11 = v838[1];
  if (v838[1])
  {
LABEL_9:
    _Block_release(v11);
  }

LABEL_10:
  if (v10)
  {
    _Block_release(v10);
  }

  v12 = *(v744 + 7);
  v812[0] = MEMORY[0x29EDCA5F8];
  v812[1] = 1174405120;
  v812[2] = ___ZN4coex6Module5State4initEv_block_invoke_21;
  v812[3] = &__block_descriptor_tmp_24;
  v812[4] = v744;
  v812[5] = v3;
  v813 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v13 = _Block_copy(v812);
  v14 = v13;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v12;
  LODWORD(v839) = 1201;
  if (!v13)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v12 + 1, &block);
    v15 = v838[1];
    if (!v838[1])
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v838[1] = _Block_copy(v13);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v12 + 1, &block);
  v15 = v838[1];
  if (v838[1])
  {
LABEL_16:
    _Block_release(v15);
  }

LABEL_17:
  if (v14)
  {
    _Block_release(v14);
  }

  v16 = *(v744 + 7);
  v810[0] = MEMORY[0x29EDCA5F8];
  v810[1] = 1174405120;
  v810[2] = ___ZN4coex6Module5State4initEv_block_invoke_25;
  v810[3] = &__block_descriptor_tmp_28_1;
  v810[4] = v744;
  v810[5] = v3;
  v811 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v17 = _Block_copy(v810);
  v18 = v17;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v16;
  LODWORD(v839) = 1202;
  if (!v17)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v16 + 1, &block);
    v19 = v838[1];
    if (!v838[1])
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v838[1] = _Block_copy(v17);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v16 + 1, &block);
  v19 = v838[1];
  if (v838[1])
  {
LABEL_23:
    _Block_release(v19);
  }

LABEL_24:
  if (v18)
  {
    _Block_release(v18);
  }

  v20 = *(v744 + 7);
  v808[0] = MEMORY[0x29EDCA5F8];
  v808[1] = 1174405120;
  v808[2] = ___ZN4coex6Module5State4initEv_block_invoke_29;
  v808[3] = &__block_descriptor_tmp_32_0;
  v808[4] = v744;
  v808[5] = v3;
  v809 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v21 = _Block_copy(v808);
  v22 = v21;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v20;
  LODWORD(v839) = 1203;
  if (!v21)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v20 + 1, &block);
    v23 = v838[1];
    if (!v838[1])
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v838[1] = _Block_copy(v21);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v20 + 1, &block);
  v23 = v838[1];
  if (v838[1])
  {
LABEL_30:
    _Block_release(v23);
  }

LABEL_31:
  if (v22)
  {
    _Block_release(v22);
  }

  v24 = *(v744 + 7);
  v806[0] = MEMORY[0x29EDCA5F8];
  v806[1] = 1174405120;
  v806[2] = ___ZN4coex6Module5State4initEv_block_invoke_33;
  v806[3] = &__block_descriptor_tmp_36_0;
  v806[4] = v744;
  v806[5] = v3;
  v807 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v25 = _Block_copy(v806);
  v26 = v25;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v24;
  LODWORD(v839) = 1206;
  if (!v25)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v24 + 1, &block);
    v27 = v838[1];
    if (!v838[1])
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v838[1] = _Block_copy(v25);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v24 + 1, &block);
  v27 = v838[1];
  if (v838[1])
  {
LABEL_37:
    _Block_release(v27);
  }

LABEL_38:
  if (v26)
  {
    _Block_release(v26);
  }

  v28 = *(v744 + 7);
  v804[0] = MEMORY[0x29EDCA5F8];
  v804[1] = 1174405120;
  v804[2] = ___ZN4coex6Module5State4initEv_block_invoke_37;
  v804[3] = &__block_descriptor_tmp_40_1;
  v804[4] = v744;
  v804[5] = v3;
  v805 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v29 = _Block_copy(v804);
  v30 = v29;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v28;
  LODWORD(v839) = 1204;
  if (!v29)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v28 + 1, &block);
    v31 = v838[1];
    if (!v838[1])
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v838[1] = _Block_copy(v29);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v28 + 1, &block);
  v31 = v838[1];
  if (v838[1])
  {
LABEL_44:
    _Block_release(v31);
  }

LABEL_45:
  if (v30)
  {
    _Block_release(v30);
  }

  v32 = *(v744 + 7);
  v802[0] = MEMORY[0x29EDCA5F8];
  v802[1] = 1174405120;
  v802[2] = ___ZN4coex6Module5State4initEv_block_invoke_41;
  v802[3] = &__block_descriptor_tmp_44;
  v802[4] = v744;
  v802[5] = v3;
  v803 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v33 = _Block_copy(v802);
  v34 = v33;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v32;
  LODWORD(v839) = 1205;
  if (!v33)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v32 + 1, &block);
    v35 = v838[1];
    if (!v838[1])
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  v838[1] = _Block_copy(v33);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v32 + 1, &block);
  v35 = v838[1];
  if (v838[1])
  {
LABEL_51:
    _Block_release(v35);
  }

LABEL_52:
  if (v34)
  {
    _Block_release(v34);
  }

  v36 = *(v744 + 7);
  v800[0] = MEMORY[0x29EDCA5F8];
  v800[1] = 1174405120;
  v800[2] = ___ZN4coex6Module5State4initEv_block_invoke_45;
  v800[3] = &__block_descriptor_tmp_48_0;
  v800[4] = v744;
  v800[5] = v3;
  v801 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v37 = _Block_copy(v800);
  v38 = v37;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v36;
  LODWORD(v839) = 1207;
  if (!v37)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v36 + 1, &block);
    v39 = v838[1];
    if (!v838[1])
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  v838[1] = _Block_copy(v37);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v36 + 1, &block);
  v39 = v838[1];
  if (v838[1])
  {
LABEL_58:
    _Block_release(v39);
  }

LABEL_59:
  if (v38)
  {
    _Block_release(v38);
  }

  v40 = *(v744 + 7);
  v798[0] = MEMORY[0x29EDCA5F8];
  v798[1] = 1174405120;
  v798[2] = ___ZN4coex6Module5State4initEv_block_invoke_49;
  v798[3] = &__block_descriptor_tmp_52_2;
  v798[4] = v744;
  v798[5] = v3;
  v799 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v41 = _Block_copy(v798);
  v42 = v41;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v40;
  LODWORD(v839) = 1208;
  if (!v41)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v40 + 1, &block);
    v43 = v838[1];
    if (!v838[1])
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  v838[1] = _Block_copy(v41);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v40 + 1, &block);
  v43 = v838[1];
  if (v838[1])
  {
LABEL_65:
    _Block_release(v43);
  }

LABEL_66:
  if (v42)
  {
    _Block_release(v42);
  }

  v44 = *(v744 + 7);
  v796[0] = MEMORY[0x29EDCA5F8];
  v796[1] = 1174405120;
  v796[2] = ___ZN4coex6Module5State4initEv_block_invoke_53;
  v796[3] = &__block_descriptor_tmp_56;
  v796[4] = v744;
  v796[5] = v3;
  v797 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v45 = _Block_copy(v796);
  v46 = v45;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v44;
  LODWORD(v839) = 1209;
  if (!v45)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v44 + 1, &block);
    v47 = v838[1];
    if (!v838[1])
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  v838[1] = _Block_copy(v45);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v44 + 1, &block);
  v47 = v838[1];
  if (v838[1])
  {
LABEL_72:
    _Block_release(v47);
  }

LABEL_73:
  if (v46)
  {
    _Block_release(v46);
  }

  v48 = *(v744 + 7);
  v794[0] = MEMORY[0x29EDCA5F8];
  v794[1] = 1174405120;
  v794[2] = ___ZN4coex6Module5State4initEv_block_invoke_57;
  v794[3] = &__block_descriptor_tmp_60_0;
  v794[4] = v744;
  v794[5] = v3;
  v795 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v49 = _Block_copy(v794);
  v50 = v49;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v48;
  LODWORD(v839) = 1210;
  if (!v49)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v48 + 1, &block);
    v51 = v838[1];
    if (!v838[1])
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  v838[1] = _Block_copy(v49);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v48 + 1, &block);
  v51 = v838[1];
  if (v838[1])
  {
LABEL_79:
    _Block_release(v51);
  }

LABEL_80:
  if (v50)
  {
    _Block_release(v50);
  }

  v52 = *(v744 + 7);
  v792[0] = MEMORY[0x29EDCA5F8];
  v792[1] = 1174405120;
  v792[2] = ___ZN4coex6Module5State4initEv_block_invoke_61;
  v792[3] = &__block_descriptor_tmp_64_0;
  v792[4] = v744;
  v792[5] = v3;
  v793 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v53 = _Block_copy(v792);
  v54 = v53;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v52;
  LODWORD(v839) = 1211;
  if (!v53)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v52 + 1, &block);
    v55 = v838[1];
    if (!v838[1])
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  v838[1] = _Block_copy(v53);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v52 + 1, &block);
  v55 = v838[1];
  if (v838[1])
  {
LABEL_86:
    _Block_release(v55);
  }

LABEL_87:
  if (v54)
  {
    _Block_release(v54);
  }

  v56 = *(v744 + 7);
  v790[0] = MEMORY[0x29EDCA5F8];
  v790[1] = 1174405120;
  v790[2] = ___ZN4coex6Module5State4initEv_block_invoke_65;
  v790[3] = &__block_descriptor_tmp_68;
  v790[4] = v744;
  v790[5] = v3;
  v791 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v57 = _Block_copy(v790);
  v58 = v57;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v56;
  LODWORD(v839) = 1212;
  if (!v57)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v56 + 1, &block);
    v59 = v838[1];
    if (!v838[1])
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  v838[1] = _Block_copy(v57);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v56 + 1, &block);
  v59 = v838[1];
  if (v838[1])
  {
LABEL_93:
    _Block_release(v59);
  }

LABEL_94:
  if (v58)
  {
    _Block_release(v58);
  }

  v60 = *(v744 + 7);
  v788[0] = MEMORY[0x29EDCA5F8];
  v788[1] = 1174405120;
  v788[2] = ___ZN4coex6Module5State4initEv_block_invoke_69;
  v788[3] = &__block_descriptor_tmp_72_0;
  v788[4] = v744;
  v788[5] = v3;
  v789 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v61 = _Block_copy(v788);
  v62 = v61;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v60;
  LODWORD(v839) = 1213;
  if (!v61)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v60 + 1, &block);
    v63 = v838[1];
    if (!v838[1])
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

  v838[1] = _Block_copy(v61);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v60 + 1, &block);
  v63 = v838[1];
  if (v838[1])
  {
LABEL_100:
    _Block_release(v63);
  }

LABEL_101:
  if (v62)
  {
    _Block_release(v62);
  }

  v64 = *(v744 + 7);
  v786[0] = MEMORY[0x29EDCA5F8];
  v786[1] = 1174405120;
  v786[2] = ___ZN4coex6Module5State4initEv_block_invoke_73;
  v786[3] = &__block_descriptor_tmp_76;
  v786[4] = v744;
  v786[5] = v3;
  v787 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v65 = _Block_copy(v786);
  v66 = v65;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v64;
  LODWORD(v839) = 1214;
  if (!v65)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v64 + 1, &block);
    v67 = v838[1];
    if (!v838[1])
    {
      goto LABEL_108;
    }

    goto LABEL_107;
  }

  v838[1] = _Block_copy(v65);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v64 + 1, &block);
  v67 = v838[1];
  if (v838[1])
  {
LABEL_107:
    _Block_release(v67);
  }

LABEL_108:
  if (v66)
  {
    _Block_release(v66);
  }

  v68 = *(v744 + 7);
  v784[0] = MEMORY[0x29EDCA5F8];
  v784[1] = 1174405120;
  v784[2] = ___ZN4coex6Module5State4initEv_block_invoke_77;
  v784[3] = &__block_descriptor_tmp_80_0;
  v784[4] = v744;
  v784[5] = v3;
  v785 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v69 = _Block_copy(v784);
  v70 = v69;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v68;
  LODWORD(v839) = 1215;
  if (!v69)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v68 + 1, &block);
    v71 = v838[1];
    if (!v838[1])
    {
      goto LABEL_115;
    }

    goto LABEL_114;
  }

  v838[1] = _Block_copy(v69);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v68 + 1, &block);
  v71 = v838[1];
  if (v838[1])
  {
LABEL_114:
    _Block_release(v71);
  }

LABEL_115:
  if (v70)
  {
    _Block_release(v70);
  }

  v72 = *(v744 + 7);
  v782[0] = MEMORY[0x29EDCA5F8];
  v782[1] = 1174405120;
  v782[2] = ___ZN4coex6Module5State4initEv_block_invoke_81;
  v782[3] = &__block_descriptor_tmp_84;
  v782[4] = v744;
  v782[5] = v3;
  v783 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v73 = _Block_copy(v782);
  v74 = v73;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v72;
  LODWORD(v839) = 1216;
  if (!v73)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v72 + 1, &block);
    v75 = v838[1];
    if (!v838[1])
    {
      goto LABEL_122;
    }

    goto LABEL_121;
  }

  v838[1] = _Block_copy(v73);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v72 + 1, &block);
  v75 = v838[1];
  if (v838[1])
  {
LABEL_121:
    _Block_release(v75);
  }

LABEL_122:
  if (v74)
  {
    _Block_release(v74);
  }

  v76 = *(v744 + 7);
  v780[0] = MEMORY[0x29EDCA5F8];
  v780[1] = 1174405120;
  v780[2] = ___ZN4coex6Module5State4initEv_block_invoke_85;
  v780[3] = &__block_descriptor_tmp_88;
  v780[4] = v744;
  v780[5] = v3;
  v781 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v77 = _Block_copy(v780);
  v78 = v77;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v76;
  LODWORD(v839) = 1221;
  if (!v77)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v76 + 1, &block);
    v79 = v838[1];
    if (!v838[1])
    {
      goto LABEL_129;
    }

    goto LABEL_128;
  }

  v838[1] = _Block_copy(v77);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v76 + 1, &block);
  v79 = v838[1];
  if (v838[1])
  {
LABEL_128:
    _Block_release(v79);
  }

LABEL_129:
  if (v78)
  {
    _Block_release(v78);
  }

  v80 = *(v744 + 7);
  v778[0] = MEMORY[0x29EDCA5F8];
  v778[1] = 1174405120;
  v778[2] = ___ZN4coex6Module5State4initEv_block_invoke_89;
  v778[3] = &__block_descriptor_tmp_92;
  v778[4] = v744;
  v778[5] = v3;
  v779 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v81 = _Block_copy(v778);
  v82 = v81;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v80;
  LODWORD(v839) = 1224;
  if (!v81)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v80 + 1, &block);
    v83 = v838[1];
    if (!v838[1])
    {
      goto LABEL_136;
    }

    goto LABEL_135;
  }

  v838[1] = _Block_copy(v81);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v80 + 1, &block);
  v83 = v838[1];
  if (v838[1])
  {
LABEL_135:
    _Block_release(v83);
  }

LABEL_136:
  if (v82)
  {
    _Block_release(v82);
  }

  v84 = *(v744 + 7);
  v776[0] = MEMORY[0x29EDCA5F8];
  v776[1] = 1174405120;
  v776[2] = ___ZN4coex6Module5State4initEv_block_invoke_93;
  v776[3] = &__block_descriptor_tmp_96;
  v776[4] = v744;
  v776[5] = v3;
  v777 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v85 = _Block_copy(v776);
  v86 = v85;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v84;
  LODWORD(v839) = 1222;
  if (!v85)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v84 + 1, &block);
    v87 = v838[1];
    if (!v838[1])
    {
      goto LABEL_143;
    }

    goto LABEL_142;
  }

  v838[1] = _Block_copy(v85);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v84 + 1, &block);
  v87 = v838[1];
  if (v838[1])
  {
LABEL_142:
    _Block_release(v87);
  }

LABEL_143:
  if (v86)
  {
    _Block_release(v86);
  }

  v88 = *(v744 + 7);
  v774[0] = MEMORY[0x29EDCA5F8];
  v774[1] = 1174405120;
  v774[2] = ___ZN4coex6Module5State4initEv_block_invoke_97;
  v774[3] = &__block_descriptor_tmp_100;
  v774[4] = v744;
  v774[5] = v3;
  v775 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v89 = _Block_copy(v774);
  v90 = v89;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v88;
  LODWORD(v839) = 1217;
  if (!v89)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v88 + 1, &block);
    v91 = v838[1];
    if (!v838[1])
    {
      goto LABEL_150;
    }

    goto LABEL_149;
  }

  v838[1] = _Block_copy(v89);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v88 + 1, &block);
  v91 = v838[1];
  if (v838[1])
  {
LABEL_149:
    _Block_release(v91);
  }

LABEL_150:
  if (v90)
  {
    _Block_release(v90);
  }

  v92 = *(v744 + 7);
  v772[0] = MEMORY[0x29EDCA5F8];
  v772[1] = 1174405120;
  v772[2] = ___ZN4coex6Module5State4initEv_block_invoke_101;
  v772[3] = &__block_descriptor_tmp_104;
  v772[4] = v744;
  v772[5] = v3;
  v773 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v93 = _Block_copy(v772);
  v94 = v93;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v92;
  LODWORD(v839) = 1218;
  if (!v93)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v92 + 1, &block);
    v95 = v838[1];
    if (!v838[1])
    {
      goto LABEL_157;
    }

    goto LABEL_156;
  }

  v838[1] = _Block_copy(v93);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v92 + 1, &block);
  v95 = v838[1];
  if (v838[1])
  {
LABEL_156:
    _Block_release(v95);
  }

LABEL_157:
  if (v94)
  {
    _Block_release(v94);
  }

  v96 = *(v744 + 7);
  v770[0] = MEMORY[0x29EDCA5F8];
  v770[1] = 1174405120;
  v770[2] = ___ZN4coex6Module5State4initEv_block_invoke_105;
  v770[3] = &__block_descriptor_tmp_108_0;
  v770[4] = v744;
  v770[5] = v3;
  v771 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v97 = _Block_copy(v770);
  v98 = v97;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v96;
  LODWORD(v839) = 1219;
  if (!v97)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v96 + 1, &block);
    v99 = v838[1];
    if (!v838[1])
    {
      goto LABEL_164;
    }

    goto LABEL_163;
  }

  v838[1] = _Block_copy(v97);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v96 + 1, &block);
  v99 = v838[1];
  if (v838[1])
  {
LABEL_163:
    _Block_release(v99);
  }

LABEL_164:
  if (v98)
  {
    _Block_release(v98);
  }

  v100 = *(v744 + 7);
  v768[0] = MEMORY[0x29EDCA5F8];
  v768[1] = 1174405120;
  v768[2] = ___ZN4coex6Module5State4initEv_block_invoke_109;
  v768[3] = &__block_descriptor_tmp_112;
  v768[4] = v744;
  v768[5] = v3;
  v769 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v101 = _Block_copy(v768);
  v102 = v101;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v100;
  LODWORD(v839) = 1220;
  if (!v101)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v100 + 1, &block);
    v103 = v838[1];
    if (!v838[1])
    {
      goto LABEL_171;
    }

    goto LABEL_170;
  }

  v838[1] = _Block_copy(v101);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v100 + 1, &block);
  v103 = v838[1];
  if (v838[1])
  {
LABEL_170:
    _Block_release(v103);
  }

LABEL_171:
  if (v102)
  {
    _Block_release(v102);
  }

  v104 = *(v744 + 7);
  v766[0] = MEMORY[0x29EDCA5F8];
  v766[1] = 1174405120;
  v766[2] = ___ZN4coex6Module5State4initEv_block_invoke_113;
  v766[3] = &__block_descriptor_tmp_116;
  v766[4] = v744;
  v766[5] = v3;
  v767 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v105 = _Block_copy(v766);
  v106 = v105;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v104;
  LODWORD(v839) = 1223;
  if (!v105)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v104 + 1, &block);
    v107 = v838[1];
    if (!v838[1])
    {
      goto LABEL_178;
    }

    goto LABEL_177;
  }

  v838[1] = _Block_copy(v105);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v104 + 1, &block);
  v107 = v838[1];
  if (v838[1])
  {
LABEL_177:
    _Block_release(v107);
  }

LABEL_178:
  if (v106)
  {
    _Block_release(v106);
  }

  v108 = *(v744 + 7);
  v825[0] = MEMORY[0x29EDCA5F8];
  v825[1] = 0x40000000;
  *&v826 = ___ZN4coex9XpcClient5startEv_block_invoke;
  *(&v826 + 1) = &__block_descriptor_tmp_4;
  *&v827 = v108;
  v816 = v825;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 0x40000000;
  *&v837 = ___ZNK3ctu20SharedSynchronizableINS_9XpcClientEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_14;
  v838[0] = v108 + 1;
  v838[1] = &v816;
  v109 = v108[3];
  if (v108[4])
  {
    dispatch_async_and_wait(v109, &block);
  }

  else
  {
    dispatch_sync(v109, &block);
  }

  v110 = *(v744 + 5);
  v816 = MEMORY[0x29EDCA5F8];
  v817 = 0x40000000;
  v818 = ___ZN3ctu20SharedSynchronizableIN4coex6Module5StateEE13connect_eventIN5boost8signals26signalIFvvENS7_19optional_last_valueIvEEiNSt3__14lessIiEENS6_8functionIS9_EENSF_IFvRKNS7_10connectionEEEENS7_5mutexEEES3_vJEEEDTcl7connectfp_cvNSC_10shared_ptrIS3_EE_EcvP16dispatch_queue_s_EcvPFT1_DpT2_ELi0EEERT_MT0_FSS_SU_E_block_invoke;
  v819 = &__block_descriptor_tmp_352;
  v820 = v744;
  v821 = coex::Module::State::handleCommandDriverStarted_sync;
  v822 = 0;
  v111 = _Block_copy(&v816);
  v753 = v110;
  v112 = *(v744 + 1);
  if (!v112 || (v113 = *v744, (v114 = std::__shared_weak_count::lock(v112)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v115 = v114;
  v116 = *(v744 + 2);
  v823 = v116;
  if (v111)
  {
    v117 = _Block_copy(v111);
  }

  else
  {
    v117 = 0;
  }

  v824 = v117;
  dispatch_retain(v116);
  v826 = 0u;
  *v825 = 0u;
  v829 = v116;
  if (v117)
  {
    v117 = _Block_copy(v117);
  }

  v830 = v117;
  dispatch_retain(v116);
  object = v116;
  v738 = v111;
  v742 = v115;
  if (!v117)
  {
    v835 = 0;
    dispatch_retain(v116);
    goto LABEL_199;
  }

  v118 = _Block_copy(v117);
  v835 = v118;
  dispatch_retain(v116);
  if (!v118)
  {
LABEL_199:
    dispatch_retain(v116);
    v831 = 0;
    goto LABEL_200;
  }

  v119 = _Block_copy(v118);
  dispatch_retain(v116);
  v831 = 0;
  if (!v119)
  {
LABEL_200:
    dispatch_retain(v116);
    v733 = 0;
    v124 = 1;
LABEL_201:
    dispatch_retain(v116);
    v745 = 0;
    v125 = 1;
LABEL_202:
    dispatch_retain(v116);
    v121 = 0;
    v126 = 1;
LABEL_203:
    dispatch_retain(v116);
    v122 = 0;
    v832 = v116;
    v127 = 1;
    goto LABEL_204;
  }

  v120 = _Block_copy(v119);
  dispatch_retain(v116);
  v733 = v119;
  if (!v120)
  {
    v124 = 0;
    goto LABEL_201;
  }

  v121 = _Block_copy(v120);
  dispatch_retain(v116);
  v745 = v120;
  if (!v121)
  {
    v124 = 0;
    v125 = 0;
    goto LABEL_202;
  }

  v122 = _Block_copy(v121);
  dispatch_retain(v116);
  if (!v122)
  {
    v124 = 0;
    v125 = 0;
    v126 = 0;
    goto LABEL_203;
  }

  v123 = _Block_copy(v122);
  dispatch_retain(v116);
  v832 = v116;
  if (v123)
  {
    v124 = 0;
    v125 = 0;
    v126 = 0;
    v127 = 0;
    v833 = _Block_copy(v123);
    dispatch_retain(v116);
    dispatch_release(v116);
    _Block_release(v123);
    goto LABEL_205;
  }

  v124 = 0;
  v125 = 0;
  v126 = 0;
  v127 = 0;
LABEL_204:
  v833 = 0;
  dispatch_retain(v116);
  dispatch_release(v116);
LABEL_205:
  dispatch_release(v116);
  if ((v127 & 1) == 0)
  {
    _Block_release(v122);
  }

  dispatch_release(v116);
  if ((v126 & 1) == 0)
  {
    _Block_release(v121);
  }

  v831 = boost::function0<void>::assign_to<ctu::DispatchSlot<dispatch::block<void({block_pointer})(void)>>>(ctu::DispatchSlot<dispatch::block<void({block_pointer})(void)>>)::stored_vtable;
  dispatch_release(v116);
  if ((v125 & 1) == 0)
  {
    _Block_release(v745);
  }

  dispatch_release(v116);
  if ((v124 & 1) == 0)
  {
    _Block_release(v733);
  }

  *(&v837 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v837 = 0xAAAAAAAAAAAAAAAALL;
  *(&block + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&block = 0;
  boost::function0<void>::move_assign(&block, &v831);
  boost::function0<void>::move_assign(&v831, &v826 + 8);
  boost::function0<void>::move_assign(&v826 + 8, &block);
  if (block && (block & 1) == 0 && *block)
  {
    (*block)(&block + 8, &block + 8, 2);
  }

  if (v831)
  {
    if ((v831 & 1) == 0 && *v831)
    {
      (*v831)(&v832, &v832, 2u);
    }

    v831 = 0;
  }

  dispatch_release(object);
  if (v835)
  {
    _Block_release(v835);
  }

  dispatch_release(v829);
  if (v830)
  {
    _Block_release(v830);
  }

  atomic_fetch_add_explicit(&v742->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v128 = operator new(0x18uLL);
  *v128 = &unk_2A1E42DD8;
  v128[1] = v113;
  v128[2] = v742;
  atomic_fetch_add_explicit(&v742->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v129 = operator new(0x18uLL);
  *v129 = &unk_2A1E42DD8;
  v129[1] = v113;
  v129[2] = v742;
  atomic_fetch_add_explicit(&v742->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *(&block + 1) = v129;
  LODWORD(block) = 2;
  v130 = v825[1];
  if (v825[1] < v826)
  {
    v131 = operator new(0x18uLL);
    *v131 = &unk_2A1E42DD8;
    v131[1] = v113;
    v131[2] = v742;
    atomic_fetch_add_explicit(&v742->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v130[1] = v131;
    *v130 = 2;
    v825[1] = v130 + 3;
LABEL_228:
    (*(*v129 + 8))(v129);
    goto LABEL_229;
  }

  v232 = std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::__emplace_back_slow_path<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>(v825, &block);
  v233 = block ^ (block >> 31);
  v825[1] = v232;
  if (v233 == 2)
  {
    v129 = *(&block + 1);
    if (!*(&block + 1))
    {
      goto LABEL_229;
    }

    goto LABEL_228;
  }

  if (v233 == 1)
  {
    v234 = v837;
    if (v837 && atomic_fetch_add((v837 + 12), 0xFFFFFFFF) == 1)
    {
LABEL_420:
      (*(*v234 + 24))(v234);
    }
  }

  else
  {
    v234 = v837;
    if (v837 && atomic_fetch_add((v837 + 12), 0xFFFFFFFF) == 1)
    {
      goto LABEL_420;
    }
  }

LABEL_229:
  (*(*v128 + 8))(v128);
  std::__shared_weak_count::__release_weak(v742);
  v132 = *(v753 + 72);
  *&v133 = 0xAAAAAAAAAAAAAAAALL;
  *(&v133 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v845 = v133;
  v844 = v133;
  v843 = v133;
  v842 = v133;
  v841 = v133;
  v840 = v133;
  v839 = v133;
  *v838 = v133;
  v837 = v133;
  block = v133;
  v134 = v132[3];
  v846 = 10;
  __p = &block;
  v848 = 0;
  v849 = v134;
  pthread_mutex_lock(v134);
  v135 = v132[1];
  v746 = v132;
  if (!v135 || atomic_load_explicit(v135 + 2, memory_order_acquire) != 1)
  {
    v139 = operator new(0x20uLL);
    v140 = *v132;
    v141 = **v132;
    v734 = v139;
    v142 = operator new(0x40uLL);
    v143 = v142;
    *v142 = v142;
    v142[1] = v142;
    v142[2] = 0;
    v144 = *(v141 + 1);
    if (v144 != v141)
    {
      v145 = 0;
      v146 = v142;
      do
      {
        v147 = operator new(0x20uLL);
        v147[2] = *(v144 + 2);
        v148 = *(v144 + 3);
        v147[3] = v148;
        if (v148)
        {
          atomic_fetch_add_explicit((v148 + 8), 1u, memory_order_relaxed);
          v146 = *v143;
          v145 = v143[2];
        }

        *v147 = v146;
        v147[1] = v143;
        v146[1] = v147;
        *v143 = v147;
        v143[2] = ++v145;
        v144 = *(v144 + 1);
        v146 = v147;
      }

      while (v144 != v141);
    }

    v726 = v140;
    v143[3] = 0;
    v143[4] = 0;
    v149 = v143 + 4;
    v143[5] = 0;
    *(v143 + 48) = *(v141 + 48);
    v754 = (v143 + 3);
    v143[3] = v143 + 4;
    v150 = *(v141 + 3);
    v151 = (v141 + 32);
    if (v150 == (v141 + 32))
    {
LABEL_239:
      *(v143 + 56) = *(v141 + 56);
      v152 = *(v141 + 3);
      if (v152 != v151)
      {
        v153 = v143[3];
        v154 = v143[1];
        do
        {
          v153[6] = v154;
          v155 = v141;
          if (v152 != v151)
          {
            v155 = v152[6];
          }

          v156 = v152[1];
          v157 = v156;
          v158 = v152;
          if (v156)
          {
            do
            {
              v159 = v157;
              v157 = *v157;
            }

            while (v157);
          }

          else
          {
            do
            {
              v159 = v158[2];
              v203 = *v159 == v158;
              v158 = v159;
            }

            while (!v203);
          }

          v160 = v141;
          if (v159 != v151)
          {
            v160 = v159[6];
          }

          while (v155 != v160)
          {
            v155 = *(v155 + 1);
            v154 = *(v154 + 8);
          }

          if (v156)
          {
            do
            {
              v161 = v156;
              v156 = *v156;
            }

            while (v156);
          }

          else
          {
            do
            {
              v161 = v152[2];
              v203 = *v161 == v152;
              v152 = v161;
            }

            while (!v203);
          }

          v162 = v153[1];
          if (v162)
          {
            do
            {
              v163 = v162;
              v162 = *v162;
            }

            while (v162);
          }

          else
          {
            do
            {
              v163 = v153[2];
              v203 = *v163 == v153;
              v153 = v163;
            }

            while (!v203);
          }

          v152 = v161;
          v153 = v163;
        }

        while (v161 != v151);
      }

      *v734 = v143;
      v734[1] = 0;
      v183 = operator new(0x18uLL);
      *(v183 + 1) = 0x100000001;
      *v183 = &unk_2A1E42C20;
      *(v183 + 2) = v143;
      v734[1] = v183;
      v734[2] = v726[2];
      v184 = v726[3];
      v734[3] = v184;
      if (v184)
      {
        atomic_fetch_add_explicit(v184 + 2, 1u, memory_order_relaxed);
      }

      v831 = v734;
      v832 = 0;
      v185 = operator new(0x18uLL);
      v132 = v746;
      v185[1] = 0x100000001;
      *v185 = &unk_2A1E42BC0;
      v185[2] = v734;
      v186 = v746[1];
      v831 = *v746;
      *v746 = v734;
      v746[1] = v185;
      v832 = v186;
      if (v186)
      {
        if (atomic_fetch_add(v186 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v186 + 16))(v186);
          if (atomic_fetch_add(v186 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v186 + 24))(v186);
          }
        }
      }

      v136 = **v746;
      v138 = -1;
LABEL_318:
      v137 = *(v136 + 1);
      if (v136 == v137)
      {
        goto LABEL_413;
      }

      goto LABEL_319;
    }

    while (1)
    {
      v164 = *(v150 + 8);
      v165 = *v754;
      v166 = *v149;
      v167 = v143 + 4;
      if (*v754 != v149)
      {
        v168 = *v149;
        v169 = v143 + 4;
        if (v166)
        {
          do
          {
            v167 = v168;
            v168 = v168[1];
          }

          while (v168);
        }

        else
        {
          do
          {
            v167 = v169[2];
            v203 = *v167 == v169;
            v169 = v167;
          }

          while (v203);
        }

        v170 = *(v150 + 10);
        v171 = *(v167 + 8);
        if (v171 == v164)
        {
          if (v164 != 1)
          {
            goto LABEL_284;
          }

          if (*(v167 + 10) >= v170)
          {
            v172 = *v149;
            v173 = v143 + 4;
            v174 = v143 + 4;
            if (v166)
            {
              goto LABEL_288;
            }

LABEL_295:
            v178 = operator new(0x38uLL);
            v179 = *(v150 + 2);
            v178[6] = v150[6];
            *(v178 + 2) = v179;
            *v178 = 0;
            v178[1] = 0;
            v178[2] = v174;
            *v173 = v178;
            if (*v165)
            {
              *v754 = *v165;
            }

            std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v143[4], v178);
            ++v143[5];
            goto LABEL_298;
          }
        }

        else if (v171 >= v164)
        {
LABEL_284:
          v173 = v143 + 4;
          v174 = v143 + 4;
          if (!v166)
          {
            goto LABEL_295;
          }

          v172 = *v149;
          if (v164 != 1)
          {
            v175 = *(v166 + 8);
            v174 = *v149;
            while (v164 != v175)
            {
              if (v164 < v175)
              {
                v182 = *v174;
                v173 = v174;
                if (!*v174)
                {
                  goto LABEL_295;
                }
              }

              else
              {
                if (v175 >= v164)
                {
                  goto LABEL_298;
                }

                v182 = v174[1];
                if (!v182)
                {
                  goto LABEL_294;
                }
              }

              v175 = *(v182 + 32);
              v174 = v182;
            }

            goto LABEL_298;
          }

          while (1)
          {
LABEL_288:
            v174 = v172;
            v176 = *(v172 + 8);
            if (v176 == 1)
            {
              v177 = *(v172 + 10);
              if (v177 > v170)
              {
                goto LABEL_287;
              }

              if (v177 >= v170)
              {
                goto LABEL_298;
              }
            }

            else if (v176 > 1)
            {
LABEL_287:
              v172 = *v172;
              v173 = v174;
              if (!*v174)
              {
                goto LABEL_295;
              }

              continue;
            }

            v172 = v172[1];
            if (!v172)
            {
LABEL_294:
              v173 = v174 + 1;
              goto LABEL_295;
            }
          }
        }
      }

      if (v166)
      {
        v174 = v167;
      }

      else
      {
        v174 = v143 + 4;
      }

      if (v166)
      {
        v173 = v167 + 1;
      }

      else
      {
        v173 = v143 + 4;
      }

      if (!*v173)
      {
        goto LABEL_295;
      }

LABEL_298:
      v180 = v150[1];
      if (v180)
      {
        do
        {
          v181 = v180;
          v180 = *v180;
        }

        while (v180);
      }

      else
      {
        do
        {
          v181 = v150[2];
          v203 = *v181 == v150;
          v150 = v181;
        }

        while (!v203);
      }

      v150 = v181;
      if (v181 == v151)
      {
        goto LABEL_239;
      }
    }
  }

  v136 = **v132;
  v137 = v132[2];
  v138 = 1;
  if (v137 == v136)
  {
    goto LABEL_318;
  }

LABEL_319:
  v187 = 0;
  do
  {
    v189 = *(v137 + 2);
    v190 = *(v189 + 32);
    if (v190)
    {
      for (i = *v190; i != v190[1]; i += 24)
      {
        if ((*i ^ (*i >> 31)) > 1)
        {
          if ((*(**(i + 8) + 24))(*(i + 8)))
          {
            goto LABEL_335;
          }
        }

        else
        {
          v192 = *(i + 16);
          if (!v192 || !atomic_load_explicit((v192 + 8), memory_order_acquire))
          {
LABEL_335:
            if (*(v189 + 24) == 1)
            {
              *(v189 + 24) = 0;
              boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(v189, &block);
            }

            break;
          }
        }
      }
    }

    v193 = *(v137 + 2);
    if (*(v193 + 24))
    {
      v136 = *(v137 + 1);
      goto LABEL_321;
    }

    v194 = **v132;
    v196 = (v194 + 32);
    v195 = *(v194 + 4);
    if (!v195)
    {
      if (*(v194 + 10) != v137)
      {
        goto LABEL_408;
      }

      v216 = *(v137 + 1);
      v218 = (v194 + 32);
      v199 = (v194 + 32);
      if (v216 != v194)
      {
        goto LABEL_404;
      }

LABEL_386:
      v221 = v199[1];
      v222 = v199;
      if (v221)
      {
        do
        {
          v223 = v221;
          v221 = *v221;
        }

        while (v221);
      }

      else
      {
        do
        {
          v223 = v222[2];
          v203 = *v223 == v222;
          v222 = v223;
        }

        while (!v203);
      }

      if (*(v194 + 3) == v199)
      {
        *(v194 + 3) = v223;
      }

      --*(v194 + 5);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v195, v199);
      operator delete(v199);
      goto LABEL_408;
    }

    v197 = *(v193 + 64);
    v198 = *(v193 + 72);
    v199 = (v194 + 32);
    v200 = *(v194 + 4);
    if (v197 == 1)
    {
      v199 = (v194 + 32);
      v201 = *(v194 + 4);
      do
      {
        while (1)
        {
          v206 = *(v201 + 32);
          v207 = v206 < 1;
          if (v206 == 1)
          {
            v207 = *(v201 + 40) < v198;
          }

          if (!v207)
          {
            break;
          }

          v201 = *(v201 + 8);
          if (!v201)
          {
            goto LABEL_354;
          }
        }

        v199 = v201;
        v201 = *v201;
      }

      while (v201);
    }

    else
    {
      do
      {
        v202 = *(v200 + 32);
        v203 = v202 == v197;
        v207 = v202 < v197;
        v204 = 8 * (v202 < v197);
        if (v207)
        {
          v205 = v199;
        }

        else
        {
          v205 = v200;
        }

        if (v203)
        {
          v204 = 0;
          v199 = v200;
        }

        else
        {
          v199 = v205;
        }

        v200 = *(v200 + v204);
      }

      while (v200);
    }

LABEL_354:
    if (v199[6] != v137)
    {
      goto LABEL_408;
    }

    v208 = (v194 + 32);
    v209 = *(v194 + 4);
    if (v197 == 1)
    {
      while (1)
      {
        v214 = *(v209 + 8);
        if (v214 == 1)
        {
          if (v198 < *(v209 + 10))
          {
            goto LABEL_369;
          }

LABEL_364:
          v209 = v209[1];
          if (!v209)
          {
            goto LABEL_370;
          }
        }

        else
        {
          if (v214 <= 1)
          {
            goto LABEL_364;
          }

LABEL_369:
          v208 = v209;
          v209 = *v209;
          if (!v209)
          {
            goto LABEL_370;
          }
        }
      }
    }

    do
    {
      v210 = *(v209 + 8);
      v211 = v197 == v210;
      v207 = v197 < v210;
      v212 = v197 >= v210;
      if (v207)
      {
        v213 = v209;
      }

      else
      {
        v213 = v208;
      }

      if (v211)
      {
        v212 = 1;
      }

      else
      {
        v208 = v213;
      }

      v209 = v209[v212];
    }

    while (v209);
LABEL_370:
    v215 = v194;
    if (v208 != v196)
    {
      v215 = v208[6];
    }

    v216 = *(v137 + 1);
    if (v216 == v215)
    {
      goto LABEL_386;
    }

    if (v197 == 1)
    {
      while (1)
      {
        while (1)
        {
          v218 = v195;
          v219 = *(v195 + 8);
          if (v219 == 1)
          {
            break;
          }

          if (v219 <= 1)
          {
            goto LABEL_382;
          }

LABEL_376:
          v195 = *v195;
          if (!*v218)
          {
            v196 = v218;
            goto LABEL_404;
          }
        }

        v220 = *(v195 + 10);
        if (v220 > v198)
        {
          goto LABEL_376;
        }

        if (v220 >= v198)
        {
          *(v195 + 6) = v216;
          goto LABEL_408;
        }

LABEL_382:
        v195 = *(v195 + 1);
        if (!v195)
        {
          v196 = v218 + 1;
          goto LABEL_404;
        }
      }
    }

    v217 = *(v195 + 8);
    if (v197 == v217)
    {
      goto LABEL_407;
    }

    while (v197 >= v217)
    {
      if (v217 >= v197)
      {
        goto LABEL_407;
      }

      v224 = *(v195 + 1);
      if (!v224)
      {
        v196 = v195 + 8;
        goto LABEL_403;
      }

LABEL_395:
      v217 = *(v224 + 8);
      v195 = v224;
      if (v197 == v217)
      {
        v224[6] = v216;
        goto LABEL_408;
      }
    }

    v224 = *v195;
    if (*v195)
    {
      goto LABEL_395;
    }

    v196 = v195;
LABEL_403:
    v218 = v195;
LABEL_404:
    v195 = operator new(0x38uLL);
    v225 = *(v193 + 64);
    *(v195 + 10) = *(v193 + 72);
    *(v195 + 4) = v225;
    *(v195 + 6) = 0;
    *v195 = 0;
    *(v195 + 1) = 0;
    *(v195 + 2) = v218;
    *v196 = v195;
    v226 = **(v194 + 3);
    if (v226)
    {
      *(v194 + 3) = v226;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v194 + 4), v195);
    ++*(v194 + 5);
LABEL_407:
    *(v195 + 6) = v216;
LABEL_408:
    v227 = *v137;
    v136 = *(v137 + 1);
    *(v227 + 8) = v136;
    *v136 = v227;
    --*(v194 + 2);
    v228 = *(v137 + 3);
    if (v228)
    {
      if (atomic_fetch_add(v228 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v228 + 16))(v228);
        if (atomic_fetch_add(v228 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v228 + 24))(v228);
        }
      }
    }

    operator delete(v137);
    v132 = v746;
LABEL_321:
    v188 = v136 != **v132 && v138 >= ++v187;
    v137 = v136;
  }

  while (v188);
LABEL_413:
  v132[2] = v136;
  v229 = operator new(0x50uLL);
  *(v229 + 1) = 0;
  *(v229 + 2) = 0;
  v229[24] = 1;
  *(v229 + 7) = 1;
  *v229 = &unk_2A1E42C80;
  v230 = operator new(0x38uLL);
  std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::vector[abi:ne200100](v230, v825);
  v230[3] = 0;
  v231 = *(&v826 + 1);
  if (*(&v826 + 1))
  {
    v230[3] = *(&v826 + 1);
    if (v231)
    {
      *(v230 + 2) = v827;
      v230[6] = v828;
    }

    else
    {
      (*v231)(&v827, v230 + 32, 0);
    }
  }

  *(v229 + 5) = 0;
  *(v229 + 4) = v230;
  v235 = operator new(0x18uLL);
  v235[1] = 0x100000001;
  *v235 = &unk_2A1E42CD8;
  v235[2] = v230;
  *(v229 + 5) = v235;
  *(v229 + 6) = v746[3];
  v236 = v746[4];
  *(v229 + 7) = v236;
  if (v236)
  {
    atomic_fetch_add_explicit(v236 + 2, 1u, memory_order_relaxed);
  }

  *(v229 + 16) = 0;
  v229[68] = 0;
  object = v229;
  v835 = 0;
  v237 = operator new(0x18uLL);
  *(v237 + 1) = 0x100000001;
  *v237 = &unk_2A1E42D38;
  *(v237 + 2) = v229;
  v835 = v237;
  v238 = **v746;
  v239 = operator new(0x20uLL);
  v240 = (v238 + 32);
  v239[2] = v229;
  v239[3] = v237;
  atomic_fetch_add_explicit(v237 + 2, 1u, memory_order_relaxed);
  v241 = *v238;
  *(v241 + 8) = v239;
  *v239 = v241;
  *v238 = v239;
  v239[1] = v238;
  ++*(v238 + 2);
  v242 = *(v238 + 4);
  if (v242)
  {
    v243 = v238 + 32;
    v244 = *(v238 + 4);
    do
    {
      v245 = *(v244 + 32);
      v246 = v245 == 2;
      v207 = v245 < 2;
      v247 = v245 < 2;
      if (!v207)
      {
        v243 = v244;
      }

      if (v246)
      {
        v243 = v244;
      }

      v244 = *(v244 + 8 * v247);
    }

    while (v244);
    if (v243 == v240 || *(v243 + 32) != 2)
    {
      v248 = *(v242 + 8);
      while (v248 != 2)
      {
        if (v248 < 3)
        {
          v249 = v242[1];
          if (!v249)
          {
            v240 = v242 + 1;
            goto LABEL_441;
          }
        }

        else
        {
          v249 = *v242;
          v240 = v242;
          if (!*v242)
          {
            goto LABEL_441;
          }
        }

        v248 = *(v249 + 8);
        v242 = v249;
      }
    }
  }

  else
  {
    v242 = (v238 + 32);
LABEL_441:
    v250 = operator new(0x38uLL);
    v250[4] = 0xAAAAAA0000000002;
    *(v250 + 10) = -1431655766;
    v250[6] = v239;
    *v250 = 0;
    v250[1] = 0;
    v250[2] = v242;
    *v240 = v250;
    v251 = **(v238 + 3);
    if (v251)
    {
      *(v238 + 3) = v251;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v238 + 4), v250);
    ++*(v238 + 5);
    v229 = object;
  }

  v252 = v744;
  *(v229 + 16) = 2;
  *(v229 + 68) = 0xAAAAAAAAAAAAAA00;
  atomic_fetch_add_explicit(v237 + 3, 1u, memory_order_relaxed);
  *&v762 = v229;
  *(&v762 + 1) = v237;
  atomic_fetch_add_explicit(v237 + 3, 1u, memory_order_relaxed);
  if (atomic_fetch_add(v237 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v237 + 24))(v237);
  }

  v253 = v835;
  if (v835)
  {
    if (atomic_fetch_add(v835 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v253 + 16))(v253);
      if (atomic_fetch_add(v253 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v253 + 24))(v253);
      }
    }
  }

  pthread_mutex_unlock(v849);
  v254 = __p;
  if (__p)
  {
    if (v848 > 0)
    {
      v715 = __p + 16 * v848;
      do
      {
        v716 = *(v715 - 1);
        if (v716)
        {
          if (atomic_fetch_add(v716 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v716 + 16))(v716);
            if (atomic_fetch_add(v716 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v716 + 24))(v716);
            }
          }
        }

        v715 -= 16;
      }

      while (v715 > v254);
    }

    v252 = v744;
    if (v846 >= 0xB)
    {
      operator delete(__p);
    }
  }

  if (*(&v826 + 1))
  {
    if ((BYTE8(v826) & 1) == 0 && **(&v826 + 1))
    {
      (**(&v826 + 1))(&v827, &v827, 2);
    }

    *(&v826 + 1) = 0;
  }

  v255 = v825[0];
  if (v825[0])
  {
    v256 = v825[1];
    v257 = v825[0];
    if (v825[1] != v825[0])
    {
      do
      {
        v256 -= 24;
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v256);
      }

      while (v256 != v255);
      v257 = v825[0];
    }

    v825[1] = v255;
    operator delete(v257);
  }

  dispatch_release(v823);
  if (v824)
  {
    _Block_release(v824);
  }

  if (atomic_fetch_add(&v742->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v258 = v738;
    if (!v738)
    {
      goto LABEL_471;
    }

LABEL_470:
    _Block_release(v258);
  }

  else
  {
    (v742->__on_zero_shared)(v742);
    std::__shared_weak_count::__release_weak(v742);
    v258 = v738;
    if (v738)
    {
      goto LABEL_470;
    }
  }

LABEL_471:
  v259 = operator new(0x20uLL);
  v259[1] = v762;
  v260 = *(v252 + 20);
  v743 = (v252 + 160);
  *v259 = v260;
  *(v259 + 1) = v252 + 160;
  *(v260 + 8) = v259;
  *(v252 + 20) = v259;
  ++*(v252 + 22);
  v261 = *(v252 + 5);
  v816 = MEMORY[0x29EDCA5F8];
  v817 = 0x40000000;
  v818 = ___ZN3ctu20SharedSynchronizableIN4coex6Module5StateEE13connect_eventIN5boost8signals26signalIFvNS_2cf11CFSharedRefIK14__CFDictionaryEENS1_5SubIdEENS7_19optional_last_valueIvEEiNSt3__14lessIiEENS6_8functionISF_EENSL_IFvRKNS7_10connectionESD_SE_EEENS7_5mutexEEES3_vJSD_SE_EEEDTcl7connectfp_cvNSI_10shared_ptrIS3_EE_EcvP16dispatch_queue_s_EcvPFT1_DpT2_ELi0EEERT_MT0_FSY_S10_E_block_invoke;
  v819 = &__block_descriptor_tmp_378;
  v820 = v252;
  v821 = coex::Module::State::handleCommandDriverStateUpdate_sync;
  v822 = 0;
  v262 = _Block_copy(&v816);
  v755 = v261;
  v263 = *(v252 + 1);
  if (!v263 || (v264 = *v252, (v265 = std::__shared_weak_count::lock(v263)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v266 = v265;
  v267 = *(v252 + 2);
  v823 = v267;
  if (v262)
  {
    v268 = _Block_copy(v262);
  }

  else
  {
    v268 = 0;
  }

  v824 = v268;
  dispatch_retain(v267);
  v826 = 0u;
  *v825 = 0u;
  v829 = v267;
  if (v268)
  {
    v268 = _Block_copy(v268);
  }

  v830 = v268;
  dispatch_retain(v267);
  object = v267;
  v735 = v262;
  v739 = v266;
  if (!v268)
  {
    v835 = 0;
    dispatch_retain(v267);
    goto LABEL_487;
  }

  v269 = _Block_copy(v268);
  v835 = v269;
  dispatch_retain(v267);
  if (!v269)
  {
LABEL_487:
    dispatch_retain(v267);
    v831 = 0;
    goto LABEL_488;
  }

  v270 = _Block_copy(v269);
  dispatch_retain(v267);
  v831 = 0;
  if (!v270)
  {
LABEL_488:
    dispatch_retain(v267);
    v727 = 0;
    v275 = 1;
LABEL_489:
    dispatch_retain(v267);
    v747 = 0;
    v276 = 1;
LABEL_490:
    dispatch_retain(v267);
    v272 = 0;
    v277 = 1;
LABEL_491:
    dispatch_retain(v267);
    v273 = 0;
    v832 = v267;
    v278 = 1;
    goto LABEL_492;
  }

  v271 = _Block_copy(v270);
  dispatch_retain(v267);
  v727 = v270;
  if (!v271)
  {
    v275 = 0;
    goto LABEL_489;
  }

  v272 = _Block_copy(v271);
  dispatch_retain(v267);
  v747 = v271;
  if (!v272)
  {
    v275 = 0;
    v276 = 0;
    goto LABEL_490;
  }

  v273 = _Block_copy(v272);
  dispatch_retain(v267);
  if (!v273)
  {
    v275 = 0;
    v276 = 0;
    v277 = 0;
    goto LABEL_491;
  }

  v274 = _Block_copy(v273);
  dispatch_retain(v267);
  v832 = v267;
  if (v274)
  {
    v275 = 0;
    v276 = 0;
    v277 = 0;
    v278 = 0;
    v833 = _Block_copy(v274);
    dispatch_retain(v267);
    dispatch_release(v267);
    _Block_release(v274);
    goto LABEL_493;
  }

  v275 = 0;
  v276 = 0;
  v277 = 0;
  v278 = 0;
LABEL_492:
  v833 = 0;
  dispatch_retain(v267);
  dispatch_release(v267);
LABEL_493:
  dispatch_release(v267);
  if ((v278 & 1) == 0)
  {
    _Block_release(v273);
  }

  dispatch_release(v267);
  if ((v277 & 1) == 0)
  {
    _Block_release(v272);
  }

  v831 = boost::function2<void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::assign_to<ctu::DispatchSlot<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>>(ctu::DispatchSlot<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>)::stored_vtable;
  dispatch_release(v267);
  if ((v276 & 1) == 0)
  {
    _Block_release(v747);
  }

  dispatch_release(v267);
  if ((v275 & 1) == 0)
  {
    _Block_release(v727);
  }

  *(&v837 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v837 = 0xAAAAAAAAAAAAAAAALL;
  *(&block + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&block = 0;
  boost::function2<void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::move_assign(&block, &v831);
  boost::function2<void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::move_assign(&v831, &v826 + 8);
  boost::function2<void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::move_assign(&v826 + 8, &block);
  if (block && (block & 1) == 0 && *block)
  {
    (*block)(&block + 8, &block + 8, 2);
  }

  if (v831)
  {
    if ((v831 & 1) == 0 && *v831)
    {
      (*v831)(&v832, &v832, 2u);
    }

    v831 = 0;
  }

  dispatch_release(object);
  if (v835)
  {
    _Block_release(v835);
  }

  dispatch_release(v829);
  if (v830)
  {
    _Block_release(v830);
  }

  atomic_fetch_add_explicit(&v739->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v279 = operator new(0x18uLL);
  *v279 = &unk_2A1E42DD8;
  v279[1] = v264;
  v279[2] = v739;
  atomic_fetch_add_explicit(&v739->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v280 = operator new(0x18uLL);
  *v280 = &unk_2A1E42DD8;
  v280[1] = v264;
  v280[2] = v739;
  atomic_fetch_add_explicit(&v739->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *(&block + 1) = v280;
  LODWORD(block) = 2;
  v281 = v825[1];
  if (v825[1] < v826)
  {
    v282 = operator new(0x18uLL);
    *v282 = &unk_2A1E42DD8;
    v282[1] = v264;
    v282[2] = v739;
    atomic_fetch_add_explicit(&v739->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v281[1] = v282;
    *v281 = 2;
    v825[1] = v281 + 3;
    goto LABEL_516;
  }

  v383 = std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::__emplace_back_slow_path<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>(v825, &block);
  v384 = block ^ (block >> 31);
  v825[1] = v383;
  if (v384 == 2)
  {
    v280 = *(&block + 1);
    if (*(&block + 1))
    {
LABEL_516:
      (*(*v280 + 8))(v280);
    }
  }

  else if (v384 == 1)
  {
    v385 = v837;
    if (v837 && atomic_fetch_add((v837 + 12), 0xFFFFFFFF) == 1)
    {
      goto LABEL_708;
    }
  }

  else
  {
    v385 = v837;
    if (v837 && atomic_fetch_add((v837 + 12), 0xFFFFFFFF) == 1)
    {
LABEL_708:
      (*(*v385 + 24))(v385);
    }
  }

  (*(*v279 + 8))(v279);
  std::__shared_weak_count::__release_weak(v739);
  v283 = *(v755 + 96);
  *&v284 = 0xAAAAAAAAAAAAAAAALL;
  *(&v284 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v845 = v284;
  v844 = v284;
  v843 = v284;
  v842 = v284;
  v841 = v284;
  v840 = v284;
  v839 = v284;
  *v838 = v284;
  v837 = v284;
  block = v284;
  v285 = v283[3];
  v846 = 10;
  __p = &block;
  v848 = 0;
  v849 = v285;
  pthread_mutex_lock(v285);
  v286 = v283[1];
  v748 = v283;
  if (v286 && atomic_load_explicit(v286 + 2, memory_order_acquire) == 1)
  {
    v287 = **v283;
    v288 = v283[2];
    v289 = 1;
    if (v288 != v287)
    {
      goto LABEL_607;
    }

    goto LABEL_606;
  }

  v290 = operator new(0x20uLL);
  v291 = *v283;
  v292 = **v283;
  v728 = v290;
  v293 = operator new(0x40uLL);
  v294 = v293;
  *v293 = v293;
  v293[1] = v293;
  v293[2] = 0;
  v295 = *(v292 + 1);
  if (v295 != v292)
  {
    v296 = 0;
    v297 = v293;
    do
    {
      v298 = operator new(0x20uLL);
      v298[2] = *(v295 + 2);
      v299 = *(v295 + 3);
      v298[3] = v299;
      if (v299)
      {
        atomic_fetch_add_explicit((v299 + 8), 1u, memory_order_relaxed);
        v297 = *v294;
        v296 = v294[2];
      }

      *v298 = v297;
      v298[1] = v294;
      v297[1] = v298;
      *v294 = v298;
      v294[2] = ++v296;
      v295 = *(v295 + 1);
      v297 = v298;
    }

    while (v295 != v292);
  }

  v723 = v291;
  v294[3] = 0;
  v294[4] = 0;
  v300 = v294 + 4;
  v294[5] = 0;
  *(v294 + 48) = *(v292 + 48);
  v756 = (v294 + 3);
  v294[3] = v294 + 4;
  v301 = *(v292 + 3);
  v302 = (v292 + 32);
  if (v301 != (v292 + 32))
  {
    do
    {
      v315 = *(v301 + 8);
      v316 = *v756;
      v317 = *v300;
      v318 = v294 + 4;
      if (*v756 != v300)
      {
        v319 = *v300;
        v320 = v294 + 4;
        if (v317)
        {
          do
          {
            v318 = v319;
            v319 = v319[1];
          }

          while (v319);
        }

        else
        {
          do
          {
            v318 = v320[2];
            v203 = *v318 == v320;
            v320 = v318;
          }

          while (v203);
        }

        v321 = *(v301 + 10);
        v322 = *(v318 + 8);
        if (v322 == v315)
        {
          if (v315 != 1)
          {
            goto LABEL_572;
          }

          if (*(v318 + 10) >= v321)
          {
            v323 = *v300;
            v324 = v294 + 4;
            v325 = v294 + 4;
            if (v317)
            {
              goto LABEL_576;
            }

LABEL_583:
            v329 = operator new(0x38uLL);
            v330 = *(v301 + 2);
            v329[6] = v301[6];
            *(v329 + 2) = v330;
            *v329 = 0;
            v329[1] = 0;
            v329[2] = v325;
            *v324 = v329;
            if (*v316)
            {
              *v756 = *v316;
            }

            std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v294[4], v329);
            ++v294[5];
            goto LABEL_586;
          }
        }

        else if (v322 >= v315)
        {
LABEL_572:
          v324 = v294 + 4;
          v325 = v294 + 4;
          if (!v317)
          {
            goto LABEL_583;
          }

          v323 = *v300;
          if (v315 != 1)
          {
            v326 = *(v317 + 8);
            v325 = *v300;
            while (v315 != v326)
            {
              if (v315 < v326)
              {
                v333 = *v325;
                v324 = v325;
                if (!*v325)
                {
                  goto LABEL_583;
                }
              }

              else
              {
                if (v326 >= v315)
                {
                  goto LABEL_586;
                }

                v333 = v325[1];
                if (!v333)
                {
                  goto LABEL_582;
                }
              }

              v326 = *(v333 + 32);
              v325 = v333;
            }

            goto LABEL_586;
          }

          while (1)
          {
LABEL_576:
            v325 = v323;
            v327 = *(v323 + 8);
            if (v327 == 1)
            {
              v328 = *(v323 + 10);
              if (v328 > v321)
              {
                goto LABEL_575;
              }

              if (v328 >= v321)
              {
                goto LABEL_586;
              }
            }

            else if (v327 > 1)
            {
LABEL_575:
              v323 = *v323;
              v324 = v325;
              if (!*v325)
              {
                goto LABEL_583;
              }

              continue;
            }

            v323 = v323[1];
            if (!v323)
            {
LABEL_582:
              v324 = v325 + 1;
              goto LABEL_583;
            }
          }
        }
      }

      if (v317)
      {
        v325 = v318;
      }

      else
      {
        v325 = v294 + 4;
      }

      if (v317)
      {
        v324 = v318 + 1;
      }

      else
      {
        v324 = v294 + 4;
      }

      if (!*v324)
      {
        goto LABEL_583;
      }

LABEL_586:
      v331 = v301[1];
      if (v331)
      {
        do
        {
          v332 = v331;
          v331 = *v331;
        }

        while (v331);
      }

      else
      {
        do
        {
          v332 = v301[2];
          v203 = *v332 == v301;
          v301 = v332;
        }

        while (!v203);
      }

      v301 = v332;
    }

    while (v332 != v302);
  }

  *(v294 + 56) = *(v292 + 56);
  v303 = *(v292 + 3);
  if (v303 != v302)
  {
    v304 = v294[3];
    v305 = v294[1];
    do
    {
      v304[6] = v305;
      v306 = v292;
      if (v303 != v302)
      {
        v306 = v303[6];
      }

      v307 = v303[1];
      v308 = v307;
      v309 = v303;
      if (v307)
      {
        do
        {
          v310 = v308;
          v308 = *v308;
        }

        while (v308);
      }

      else
      {
        do
        {
          v310 = v309[2];
          v203 = *v310 == v309;
          v309 = v310;
        }

        while (!v203);
      }

      v311 = v292;
      if (v310 != v302)
      {
        v311 = v310[6];
      }

      while (v306 != v311)
      {
        v306 = *(v306 + 1);
        v305 = *(v305 + 8);
      }

      if (v307)
      {
        do
        {
          v312 = v307;
          v307 = *v307;
        }

        while (v307);
      }

      else
      {
        do
        {
          v312 = v303[2];
          v203 = *v312 == v303;
          v303 = v312;
        }

        while (!v203);
      }

      v313 = v304[1];
      if (v313)
      {
        do
        {
          v314 = v313;
          v313 = *v313;
        }

        while (v313);
      }

      else
      {
        do
        {
          v314 = v304[2];
          v203 = *v314 == v304;
          v304 = v314;
        }

        while (!v203);
      }

      v303 = v312;
      v304 = v314;
    }

    while (v312 != v302);
  }

  *v728 = v294;
  v728[1] = 0;
  v334 = operator new(0x18uLL);
  *(v334 + 1) = 0x100000001;
  *v334 = &unk_2A1E42EC8;
  *(v334 + 2) = v294;
  v728[1] = v334;
  v728[2] = v723[2];
  v335 = v723[3];
  v728[3] = v335;
  if (v335)
  {
    atomic_fetch_add_explicit(v335 + 2, 1u, memory_order_relaxed);
  }

  v831 = v728;
  v832 = 0;
  v336 = operator new(0x18uLL);
  v283 = v748;
  v336[1] = 0x100000001;
  *v336 = &unk_2A1E42E68;
  v336[2] = v728;
  v337 = v748[1];
  v831 = *v748;
  *v748 = v728;
  v748[1] = v336;
  v832 = v337;
  if (v337)
  {
    if (atomic_fetch_add(v337 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v337 + 16))(v337);
      if (atomic_fetch_add(v337 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v337 + 24))(v337);
      }
    }
  }

  v287 = **v748;
  v289 = -1;
LABEL_606:
  v288 = *(v287 + 1);
  if (v287 == v288)
  {
    goto LABEL_701;
  }

LABEL_607:
  v338 = 0;
  while (2)
  {
    v340 = *(v288 + 2);
    v341 = *(v340 + 32);
    if (v341)
    {
      for (j = *v341; j != v341[1]; j += 24)
      {
        if ((*j ^ (*j >> 31)) > 1)
        {
          if ((*(**(j + 8) + 24))(*(j + 8)))
          {
            goto LABEL_623;
          }
        }

        else
        {
          v343 = *(j + 16);
          if (!v343 || !atomic_load_explicit((v343 + 8), memory_order_acquire))
          {
LABEL_623:
            if (*(v340 + 24) == 1)
            {
              *(v340 + 24) = 0;
              boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(v340, &block);
            }

            break;
          }
        }
      }
    }

    v344 = *(v288 + 2);
    if (*(v344 + 24))
    {
      v287 = *(v288 + 1);
      goto LABEL_609;
    }

    v345 = **v283;
    v347 = (v345 + 32);
    v346 = *(v345 + 4);
    if (!v346)
    {
      if (*(v345 + 10) != v288)
      {
        goto LABEL_696;
      }

      v367 = *(v288 + 1);
      v369 = (v345 + 32);
      v350 = (v345 + 32);
      if (v367 != v345)
      {
        goto LABEL_692;
      }

      goto LABEL_674;
    }

    v348 = *(v344 + 64);
    v349 = *(v344 + 72);
    v350 = (v345 + 32);
    v351 = *(v345 + 4);
    if (v348 == 1)
    {
      v350 = (v345 + 32);
      v352 = *(v345 + 4);
      do
      {
        while (1)
        {
          v357 = *(v352 + 32);
          v358 = v357 < 1;
          if (v357 == 1)
          {
            v358 = *(v352 + 40) < v349;
          }

          if (!v358)
          {
            break;
          }

          v352 = *(v352 + 8);
          if (!v352)
          {
            goto LABEL_642;
          }
        }

        v350 = v352;
        v352 = *v352;
      }

      while (v352);
    }

    else
    {
      do
      {
        v353 = *(v351 + 32);
        v354 = v353 == v348;
        v207 = v353 < v348;
        v355 = 8 * (v353 < v348);
        if (v207)
        {
          v356 = v350;
        }

        else
        {
          v356 = v351;
        }

        if (v354)
        {
          v355 = 0;
          v350 = v351;
        }

        else
        {
          v350 = v356;
        }

        v351 = *(v351 + v355);
      }

      while (v351);
    }

LABEL_642:
    if (v350[6] != v288)
    {
      goto LABEL_696;
    }

    v359 = (v345 + 32);
    v360 = *(v345 + 4);
    if (v348 == 1)
    {
      while (1)
      {
        v365 = *(v360 + 8);
        if (v365 == 1)
        {
          if (v349 < *(v360 + 10))
          {
            goto LABEL_657;
          }

LABEL_652:
          v360 = v360[1];
          if (!v360)
          {
            goto LABEL_658;
          }
        }

        else
        {
          if (v365 <= 1)
          {
            goto LABEL_652;
          }

LABEL_657:
          v359 = v360;
          v360 = *v360;
          if (!v360)
          {
            goto LABEL_658;
          }
        }
      }
    }

    do
    {
      v361 = *(v360 + 8);
      v362 = v348 == v361;
      v207 = v348 < v361;
      v363 = v348 >= v361;
      if (v207)
      {
        v364 = v360;
      }

      else
      {
        v364 = v359;
      }

      if (v362)
      {
        v363 = 1;
      }

      else
      {
        v359 = v364;
      }

      v360 = v360[v363];
    }

    while (v360);
LABEL_658:
    v366 = v345;
    if (v359 != v347)
    {
      v366 = v359[6];
    }

    v367 = *(v288 + 1);
    if (v367 == v366)
    {
LABEL_674:
      v372 = v350[1];
      v373 = v350;
      if (v372)
      {
        do
        {
          v374 = v372;
          v372 = *v372;
        }

        while (v372);
      }

      else
      {
        do
        {
          v374 = v373[2];
          v203 = *v374 == v373;
          v373 = v374;
        }

        while (!v203);
      }

      if (*(v345 + 3) == v350)
      {
        *(v345 + 3) = v374;
      }

      --*(v345 + 5);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v346, v350);
      operator delete(v350);
      goto LABEL_696;
    }

    if (v348 == 1)
    {
      while (1)
      {
        while (1)
        {
          v369 = v346;
          v370 = *(v346 + 8);
          if (v370 == 1)
          {
            break;
          }

          if (v370 <= 1)
          {
            goto LABEL_670;
          }

LABEL_664:
          v346 = *v346;
          if (!*v369)
          {
            v347 = v369;
            goto LABEL_692;
          }
        }

        v371 = *(v346 + 10);
        if (v371 > v349)
        {
          goto LABEL_664;
        }

        if (v371 >= v349)
        {
          *(v346 + 6) = v367;
          goto LABEL_696;
        }

LABEL_670:
        v346 = *(v346 + 1);
        if (!v346)
        {
          v347 = v369 + 1;
          goto LABEL_692;
        }
      }
    }

    v368 = *(v346 + 8);
    if (v348 == v368)
    {
      goto LABEL_695;
    }

    while (2)
    {
      if (v348 >= v368)
      {
        if (v368 >= v348)
        {
          goto LABEL_695;
        }

        v375 = *(v346 + 1);
        if (!v375)
        {
          v347 = v346 + 8;
          goto LABEL_691;
        }

        goto LABEL_683;
      }

      v375 = *v346;
      if (*v346)
      {
LABEL_683:
        v368 = *(v375 + 8);
        v346 = v375;
        if (v348 == v368)
        {
          v375[6] = v367;
          goto LABEL_696;
        }

        continue;
      }

      break;
    }

    v347 = v346;
LABEL_691:
    v369 = v346;
LABEL_692:
    v346 = operator new(0x38uLL);
    v376 = *(v344 + 64);
    *(v346 + 10) = *(v344 + 72);
    *(v346 + 4) = v376;
    *(v346 + 6) = 0;
    *v346 = 0;
    *(v346 + 1) = 0;
    *(v346 + 2) = v369;
    *v347 = v346;
    v377 = **(v345 + 3);
    if (v377)
    {
      *(v345 + 3) = v377;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v345 + 4), v346);
    ++*(v345 + 5);
LABEL_695:
    *(v346 + 6) = v367;
LABEL_696:
    v378 = *v288;
    v287 = *(v288 + 1);
    *(v378 + 8) = v287;
    *v287 = v378;
    --*(v345 + 2);
    v379 = *(v288 + 3);
    if (v379)
    {
      if (atomic_fetch_add(v379 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v379 + 16))(v379);
        if (atomic_fetch_add(v379 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v379 + 24))(v379);
        }
      }
    }

    operator delete(v288);
    v283 = v748;
LABEL_609:
    v339 = v287 != **v283 && v289 >= ++v338;
    v288 = v287;
    if (v339)
    {
      continue;
    }

    break;
  }

LABEL_701:
  v283[2] = v287;
  v380 = operator new(0x50uLL);
  *(v380 + 1) = 0;
  *(v380 + 2) = 0;
  v380[24] = 1;
  *(v380 + 7) = 1;
  *v380 = &unk_2A1E42F28;
  v381 = operator new(0x38uLL);
  std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::vector[abi:ne200100](v381, v825);
  v381[3] = 0;
  v382 = *(&v826 + 1);
  if (*(&v826 + 1))
  {
    v381[3] = *(&v826 + 1);
    if (v382)
    {
      *(v381 + 2) = v827;
      v381[6] = v828;
    }

    else
    {
      (*v382)(&v827, v381 + 32, 0);
    }
  }

  *(v380 + 5) = 0;
  *(v380 + 4) = v381;
  v386 = operator new(0x18uLL);
  v386[1] = 0x100000001;
  *v386 = &unk_2A1E42F80;
  v386[2] = v381;
  *(v380 + 5) = v386;
  *(v380 + 6) = v748[3];
  v387 = v748[4];
  *(v380 + 7) = v387;
  if (v387)
  {
    atomic_fetch_add_explicit(v387 + 2, 1u, memory_order_relaxed);
  }

  *(v380 + 16) = 0;
  v380[68] = 0;
  object = v380;
  v835 = 0;
  v388 = operator new(0x18uLL);
  *(v388 + 1) = 0x100000001;
  *v388 = &unk_2A1E42FE0;
  *(v388 + 2) = v380;
  v835 = v388;
  v389 = **v748;
  v390 = operator new(0x20uLL);
  v391 = (v389 + 32);
  v390[2] = v380;
  v390[3] = v388;
  atomic_fetch_add_explicit(v388 + 2, 1u, memory_order_relaxed);
  v392 = *v389;
  *(v392 + 8) = v390;
  *v390 = v392;
  *v389 = v390;
  v390[1] = v389;
  ++*(v389 + 2);
  v393 = *(v389 + 4);
  if (v393)
  {
    v394 = v389 + 32;
    v395 = *(v389 + 4);
    do
    {
      v396 = *(v395 + 32);
      v397 = v396 == 2;
      v207 = v396 < 2;
      v398 = v396 < 2;
      if (!v207)
      {
        v394 = v395;
      }

      if (v397)
      {
        v394 = v395;
      }

      v395 = *(v395 + 8 * v398);
    }

    while (v395);
    if (v394 == v391 || *(v394 + 32) != 2)
    {
      v399 = *(v393 + 8);
      while (v399 != 2)
      {
        if (v399 < 3)
        {
          v400 = v393[1];
          if (!v400)
          {
            v391 = v393 + 1;
            goto LABEL_729;
          }
        }

        else
        {
          v400 = *v393;
          v391 = v393;
          if (!*v393)
          {
            goto LABEL_729;
          }
        }

        v399 = *(v400 + 8);
        v393 = v400;
      }
    }
  }

  else
  {
    v393 = (v389 + 32);
LABEL_729:
    v401 = operator new(0x38uLL);
    v401[4] = 0xAAAAAA0000000002;
    *(v401 + 10) = -1431655766;
    v401[6] = v390;
    *v401 = 0;
    v401[1] = 0;
    v401[2] = v393;
    *v391 = v401;
    v402 = **(v389 + 3);
    if (v402)
    {
      *(v389 + 3) = v402;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v389 + 4), v401);
    ++*(v389 + 5);
    v380 = object;
  }

  v403 = v744;
  *(v380 + 16) = 2;
  *(v380 + 68) = 0xAAAAAAAAAAAAAA00;
  atomic_fetch_add_explicit(v388 + 3, 1u, memory_order_relaxed);
  *&v763 = v380;
  *(&v763 + 1) = v388;
  atomic_fetch_add_explicit(v388 + 3, 1u, memory_order_relaxed);
  if (atomic_fetch_add(v388 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v388 + 24))(v388);
  }

  v404 = v835;
  if (v835)
  {
    if (atomic_fetch_add(v835 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v404 + 16))(v404);
      if (atomic_fetch_add(v404 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v404 + 24))(v404);
      }
    }
  }

  pthread_mutex_unlock(v849);
  v405 = __p;
  if (__p)
  {
    if (v848 > 0)
    {
      v717 = __p + 16 * v848;
      do
      {
        v718 = *(v717 - 1);
        if (v718)
        {
          if (atomic_fetch_add(v718 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v718 + 16))(v718);
            if (atomic_fetch_add(v718 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v718 + 24))(v718);
            }
          }
        }

        v717 -= 16;
      }

      while (v717 > v405);
    }

    v403 = v744;
    if (v846 >= 0xB)
    {
      operator delete(__p);
    }
  }

  if (*(&v826 + 1))
  {
    if ((BYTE8(v826) & 1) == 0 && **(&v826 + 1))
    {
      (**(&v826 + 1))(&v827, &v827, 2);
    }

    *(&v826 + 1) = 0;
  }

  v406 = v825[0];
  if (v825[0])
  {
    v407 = v825[1];
    v408 = v825[0];
    if (v825[1] != v825[0])
    {
      do
      {
        v407 -= 24;
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v407);
      }

      while (v407 != v406);
      v408 = v825[0];
    }

    v825[1] = v406;
    operator delete(v408);
  }

  dispatch_release(v823);
  if (v824)
  {
    _Block_release(v824);
  }

  v409 = v761;
  if (!atomic_fetch_add(&v739->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v739->__on_zero_shared)(v739);
    std::__shared_weak_count::__release_weak(v739);
    v410 = v735;
    if (!v735)
    {
      goto LABEL_759;
    }

    goto LABEL_758;
  }

  v410 = v735;
  if (v735)
  {
LABEL_758:
    _Block_release(v410);
  }

LABEL_759:
  v411 = operator new(0x20uLL);
  v411[1] = v763;
  v412 = *(v403 + 20);
  *v411 = v412;
  *(v411 + 1) = v743;
  *(v412 + 8) = v411;
  *(v403 + 20) = v411;
  ++*(v403 + 22);
  v413 = *(v403 + 18);
  if (!v413)
  {
    goto LABEL_1337;
  }

  v816 = MEMORY[0x29EDCA5F8];
  v817 = 0x40000000;
  v818 = ___ZN3ctu20SharedSynchronizableIN4coex6Module5StateEE13connect_eventIN5boost8signals26signalIFvNS1_5SubIdEENS7_19optional_last_valueIvEEiNSt3__14lessIiEENS6_8functionISA_EENSG_IFvRKNS7_10connectionES9_EEENS7_5mutexEEES3_vJS9_EEEDTcl7connectfp_cvNSD_10shared_ptrIS3_EE_EcvP16dispatch_queue_s_EcvPFT1_DpT2_ELi0EEERT_MT0_FST_SV_E_block_invoke;
  v819 = &__block_descriptor_tmp_384;
  v820 = v403;
  v821 = coex::Module::State::handleDesenseCommandDriverStarted_sync;
  v822 = 0;
  v414 = _Block_copy(&v816);
  v757 = v413;
  v415 = *(v403 + 1);
  if (!v415 || (v416 = *v403, (v417 = std::__shared_weak_count::lock(v415)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v418 = v417;
  v419 = *(v403 + 2);
  v823 = v419;
  if (v414)
  {
    v420 = _Block_copy(v414);
  }

  else
  {
    v420 = 0;
  }

  v824 = v420;
  dispatch_retain(v419);
  v826 = 0u;
  *v825 = 0u;
  v829 = v419;
  if (v420)
  {
    v420 = _Block_copy(v420);
  }

  v830 = v420;
  dispatch_retain(v419);
  object = v419;
  v736 = v414;
  v740 = v418;
  if (!v420)
  {
    v835 = 0;
    dispatch_retain(v419);
    goto LABEL_776;
  }

  v421 = _Block_copy(v420);
  v835 = v421;
  dispatch_retain(v419);
  if (!v421)
  {
LABEL_776:
    dispatch_retain(v419);
    v831 = 0;
    goto LABEL_777;
  }

  v422 = _Block_copy(v421);
  dispatch_retain(v419);
  v831 = 0;
  if (!v422)
  {
LABEL_777:
    dispatch_retain(v419);
    v729 = 0;
    v427 = 1;
LABEL_778:
    dispatch_retain(v419);
    v749 = 0;
    v428 = 1;
LABEL_779:
    dispatch_retain(v419);
    v424 = 0;
    v429 = 1;
LABEL_780:
    dispatch_retain(v419);
    v425 = 0;
    v832 = v419;
    v430 = 1;
    goto LABEL_781;
  }

  v423 = _Block_copy(v422);
  dispatch_retain(v419);
  v729 = v422;
  if (!v423)
  {
    v427 = 0;
    goto LABEL_778;
  }

  v424 = _Block_copy(v423);
  dispatch_retain(v419);
  v749 = v423;
  if (!v424)
  {
    v427 = 0;
    v428 = 0;
    goto LABEL_779;
  }

  v425 = _Block_copy(v424);
  dispatch_retain(v419);
  if (!v425)
  {
    v427 = 0;
    v428 = 0;
    v429 = 0;
    goto LABEL_780;
  }

  v426 = _Block_copy(v425);
  dispatch_retain(v419);
  v832 = v419;
  if (v426)
  {
    v427 = 0;
    v428 = 0;
    v429 = 0;
    v430 = 0;
    v833 = _Block_copy(v426);
    dispatch_retain(v419);
    dispatch_release(v419);
    _Block_release(v426);
    goto LABEL_782;
  }

  v427 = 0;
  v428 = 0;
  v429 = 0;
  v430 = 0;
LABEL_781:
  v833 = 0;
  dispatch_retain(v419);
  dispatch_release(v419);
LABEL_782:
  dispatch_release(v419);
  if ((v430 & 1) == 0)
  {
    _Block_release(v425);
  }

  dispatch_release(v419);
  if ((v429 & 1) == 0)
  {
    _Block_release(v424);
  }

  v831 = boost::function1<void,coex::SubId>::assign_to<ctu::DispatchSlot<dispatch::block<void({block_pointer})(coex::SubId)>>>(ctu::DispatchSlot<dispatch::block<void({block_pointer})(coex::SubId)>>)::stored_vtable;
  dispatch_release(v419);
  if ((v428 & 1) == 0)
  {
    _Block_release(v749);
  }

  dispatch_release(v419);
  if ((v427 & 1) == 0)
  {
    _Block_release(v729);
  }

  *(&v837 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v837 = 0xAAAAAAAAAAAAAAAALL;
  *(&block + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&block = 0;
  boost::function1<void,coex::SubId>::move_assign(&block, &v831);
  boost::function1<void,coex::SubId>::move_assign(&v831, &v826 + 8);
  boost::function1<void,coex::SubId>::move_assign(&v826 + 8, &block);
  if (block && (block & 1) == 0 && *block)
  {
    (*block)(&block + 8, &block + 8, 2);
  }

  if (v831)
  {
    if ((v831 & 1) == 0 && *v831)
    {
      (*v831)(&v832, &v832, 2u);
    }

    v831 = 0;
  }

  dispatch_release(object);
  if (v835)
  {
    _Block_release(v835);
  }

  dispatch_release(v829);
  if (v830)
  {
    _Block_release(v830);
  }

  atomic_fetch_add_explicit(&v740->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v431 = operator new(0x18uLL);
  *v431 = &unk_2A1E42DD8;
  v431[1] = v416;
  v431[2] = v740;
  atomic_fetch_add_explicit(&v740->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v432 = operator new(0x18uLL);
  *v432 = &unk_2A1E42DD8;
  v432[1] = v416;
  v432[2] = v740;
  atomic_fetch_add_explicit(&v740->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *(&block + 1) = v432;
  LODWORD(block) = 2;
  v433 = v825[1];
  if (v825[1] < v826)
  {
    v434 = operator new(0x18uLL);
    *v434 = &unk_2A1E42DD8;
    v434[1] = v416;
    v434[2] = v740;
    atomic_fetch_add_explicit(&v740->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v433[1] = v434;
    *v433 = 2;
    v825[1] = v433 + 3;
    goto LABEL_805;
  }

  v535 = std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::__emplace_back_slow_path<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>(v825, &block);
  v536 = block ^ (block >> 31);
  v825[1] = v535;
  if (v536 == 2)
  {
    v432 = *(&block + 1);
    if (*(&block + 1))
    {
LABEL_805:
      (*(*v432 + 8))(v432);
    }
  }

  else if (v536 == 1)
  {
    v537 = v837;
    if (v837 && atomic_fetch_add((v837 + 12), 0xFFFFFFFF) == 1)
    {
      goto LABEL_997;
    }
  }

  else
  {
    v537 = v837;
    if (v837 && atomic_fetch_add((v837 + 12), 0xFFFFFFFF) == 1)
    {
LABEL_997:
      (*(*v537 + 24))(v537);
    }
  }

  (*(*v431 + 8))(v431);
  std::__shared_weak_count::__release_weak(v740);
  v435 = *(v757 + 56);
  *&v436 = 0xAAAAAAAAAAAAAAAALL;
  *(&v436 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v845 = v436;
  v844 = v436;
  v843 = v436;
  v842 = v436;
  v841 = v436;
  v840 = v436;
  v839 = v436;
  *v838 = v436;
  v837 = v436;
  block = v436;
  v437 = v435[3];
  v846 = 10;
  __p = &block;
  v848 = 0;
  v849 = v437;
  pthread_mutex_lock(v437);
  v438 = v435[1];
  v750 = v435;
  if (v438 && atomic_load_explicit(v438 + 2, memory_order_acquire) == 1)
  {
    v439 = **v435;
    v440 = v435[2];
    v441 = 1;
    if (v440 != v439)
    {
      goto LABEL_896;
    }

    goto LABEL_895;
  }

  v442 = operator new(0x20uLL);
  v443 = *v435;
  v444 = *v443;
  v730 = v442;
  v445 = operator new(0x40uLL);
  v446 = v445;
  *v445 = v445;
  v445[1] = v445;
  v445[2] = 0;
  v447 = *(v444 + 1);
  if (v447 != v444)
  {
    v448 = 0;
    v449 = v445;
    do
    {
      v450 = operator new(0x20uLL);
      v450[2] = *(v447 + 2);
      v451 = *(v447 + 3);
      v450[3] = v451;
      if (v451)
      {
        atomic_fetch_add_explicit((v451 + 8), 1u, memory_order_relaxed);
        v449 = *v446;
        v448 = v446[2];
      }

      *v450 = v449;
      v450[1] = v446;
      v449[1] = v450;
      *v446 = v450;
      v446[2] = ++v448;
      v447 = *(v447 + 1);
      v449 = v450;
    }

    while (v447 != v444);
  }

  v724 = v443;
  v446[3] = 0;
  v446[4] = 0;
  v452 = v446 + 4;
  v446[5] = 0;
  *(v446 + 48) = *(v444 + 48);
  v758 = (v446 + 3);
  v446[3] = v446 + 4;
  v453 = *(v444 + 3);
  v454 = (v444 + 32);
  if (v453 != (v444 + 32))
  {
    do
    {
      v467 = *(v453 + 8);
      v468 = *v758;
      v469 = *v452;
      v470 = v446 + 4;
      if (*v758 != v452)
      {
        v471 = *v452;
        v472 = v446 + 4;
        if (v469)
        {
          do
          {
            v470 = v471;
            v471 = v471[1];
          }

          while (v471);
        }

        else
        {
          do
          {
            v470 = v472[2];
            v203 = *v470 == v472;
            v472 = v470;
          }

          while (v203);
        }

        v473 = *(v453 + 10);
        v474 = *(v470 + 8);
        if (v474 == v467)
        {
          if (v467 != 1)
          {
            goto LABEL_861;
          }

          if (*(v470 + 10) >= v473)
          {
            v475 = *v452;
            v476 = v446 + 4;
            v477 = v446 + 4;
            if (v469)
            {
              goto LABEL_865;
            }

LABEL_872:
            v481 = operator new(0x38uLL);
            v482 = *(v453 + 2);
            v481[6] = v453[6];
            *(v481 + 2) = v482;
            *v481 = 0;
            v481[1] = 0;
            v481[2] = v477;
            *v476 = v481;
            if (*v468)
            {
              *v758 = *v468;
            }

            std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v446[4], v481);
            ++v446[5];
            goto LABEL_875;
          }
        }

        else if (v474 >= v467)
        {
LABEL_861:
          v476 = v446 + 4;
          v477 = v446 + 4;
          if (!v469)
          {
            goto LABEL_872;
          }

          v475 = *v452;
          if (v467 != 1)
          {
            v478 = *(v469 + 8);
            v477 = *v452;
            while (v467 != v478)
            {
              if (v467 < v478)
              {
                v485 = *v477;
                v476 = v477;
                if (!*v477)
                {
                  goto LABEL_872;
                }
              }

              else
              {
                if (v478 >= v467)
                {
                  goto LABEL_875;
                }

                v485 = v477[1];
                if (!v485)
                {
                  goto LABEL_871;
                }
              }

              v478 = *(v485 + 32);
              v477 = v485;
            }

            goto LABEL_875;
          }

          while (1)
          {
LABEL_865:
            v477 = v475;
            v479 = *(v475 + 8);
            if (v479 == 1)
            {
              v480 = *(v475 + 10);
              if (v480 > v473)
              {
                goto LABEL_864;
              }

              if (v480 >= v473)
              {
                goto LABEL_875;
              }
            }

            else if (v479 > 1)
            {
LABEL_864:
              v475 = *v475;
              v476 = v477;
              if (!*v477)
              {
                goto LABEL_872;
              }

              continue;
            }

            v475 = v475[1];
            if (!v475)
            {
LABEL_871:
              v476 = v477 + 1;
              goto LABEL_872;
            }
          }
        }
      }

      if (v469)
      {
        v477 = v470;
      }

      else
      {
        v477 = v446 + 4;
      }

      if (v469)
      {
        v476 = v470 + 1;
      }

      else
      {
        v476 = v446 + 4;
      }

      if (!*v476)
      {
        goto LABEL_872;
      }

LABEL_875:
      v483 = v453[1];
      if (v483)
      {
        do
        {
          v484 = v483;
          v483 = *v483;
        }

        while (v483);
      }

      else
      {
        do
        {
          v484 = v453[2];
          v203 = *v484 == v453;
          v453 = v484;
        }

        while (!v203);
      }

      v453 = v484;
    }

    while (v484 != v454);
  }

  *(v446 + 56) = *(v444 + 56);
  v455 = *(v444 + 3);
  if (v455 != v454)
  {
    v456 = v446[3];
    v457 = v446[1];
    do
    {
      v456[6] = v457;
      v458 = v444;
      if (v455 != v454)
      {
        v458 = v455[6];
      }

      v459 = v455[1];
      v460 = v459;
      v461 = v455;
      if (v459)
      {
        do
        {
          v462 = v460;
          v460 = *v460;
        }

        while (v460);
      }

      else
      {
        do
        {
          v462 = v461[2];
          v203 = *v462 == v461;
          v461 = v462;
        }

        while (!v203);
      }

      v463 = v444;
      if (v462 != v454)
      {
        v463 = v462[6];
      }

      while (v458 != v463)
      {
        v458 = *(v458 + 1);
        v457 = *(v457 + 8);
      }

      if (v459)
      {
        do
        {
          v464 = v459;
          v459 = *v459;
        }

        while (v459);
      }

      else
      {
        do
        {
          v464 = v455[2];
          v203 = *v464 == v455;
          v455 = v464;
        }

        while (!v203);
      }

      v465 = v456[1];
      if (v465)
      {
        do
        {
          v466 = v465;
          v465 = *v465;
        }

        while (v465);
      }

      else
      {
        do
        {
          v466 = v456[2];
          v203 = *v466 == v456;
          v456 = v466;
        }

        while (!v203);
      }

      v455 = v464;
      v456 = v466;
    }

    while (v464 != v454);
  }

  *v730 = v446;
  v730[1] = 0;
  v486 = operator new(0x18uLL);
  *(v486 + 1) = 0x100000001;
  *v486 = &unk_2A1E430E0;
  *(v486 + 2) = v446;
  v730[1] = v486;
  v730[2] = v724[2];
  v487 = v724[3];
  v730[3] = v487;
  if (v487)
  {
    atomic_fetch_add_explicit(v487 + 2, 1u, memory_order_relaxed);
  }

  v831 = v730;
  v832 = 0;
  v488 = operator new(0x18uLL);
  v435 = v750;
  v488[1] = 0x100000001;
  *v488 = &unk_2A1E43080;
  v488[2] = v730;
  v489 = v750[1];
  v831 = *v750;
  *v750 = v730;
  v750[1] = v488;
  v832 = v489;
  if (v489)
  {
    if (atomic_fetch_add(v489 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v489 + 16))(v489);
      if (atomic_fetch_add(v489 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v489 + 24))(v489);
      }
    }
  }

  v439 = **v750;
  v441 = -1;
LABEL_895:
  v440 = *(v439 + 1);
  if (v439 == v440)
  {
    goto LABEL_990;
  }

LABEL_896:
  v490 = 0;
  while (2)
  {
    v492 = *(v440 + 2);
    v493 = *(v492 + 32);
    if (v493)
    {
      for (k = *v493; k != v493[1]; k += 24)
      {
        if ((*k ^ (*k >> 31)) > 1)
        {
          if ((*(**(k + 8) + 24))(*(k + 8)))
          {
            goto LABEL_912;
          }
        }

        else
        {
          v495 = *(k + 16);
          if (!v495 || !atomic_load_explicit((v495 + 8), memory_order_acquire))
          {
LABEL_912:
            if (*(v492 + 24) == 1)
            {
              *(v492 + 24) = 0;
              boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(v492, &block);
            }

            break;
          }
        }
      }
    }

    v496 = *(v440 + 2);
    if (*(v496 + 24))
    {
      v439 = *(v440 + 1);
      goto LABEL_898;
    }

    v497 = **v435;
    v499 = (v497 + 32);
    v498 = *(v497 + 4);
    if (!v498)
    {
      if (*(v497 + 10) != v440)
      {
        goto LABEL_985;
      }

      v519 = *(v440 + 1);
      v521 = (v497 + 32);
      v502 = (v497 + 32);
      if (v519 != v497)
      {
        goto LABEL_981;
      }

      goto LABEL_963;
    }

    v500 = *(v496 + 64);
    v501 = *(v496 + 72);
    v502 = (v497 + 32);
    v503 = *(v497 + 4);
    if (v500 == 1)
    {
      v502 = (v497 + 32);
      v504 = *(v497 + 4);
      do
      {
        while (1)
        {
          v509 = *(v504 + 32);
          v510 = v509 < 1;
          if (v509 == 1)
          {
            v510 = *(v504 + 40) < v501;
          }

          if (!v510)
          {
            break;
          }

          v504 = *(v504 + 8);
          if (!v504)
          {
            goto LABEL_931;
          }
        }

        v502 = v504;
        v504 = *v504;
      }

      while (v504);
    }

    else
    {
      do
      {
        v505 = *(v503 + 32);
        v506 = v505 == v500;
        v207 = v505 < v500;
        v507 = 8 * (v505 < v500);
        if (v207)
        {
          v508 = v502;
        }

        else
        {
          v508 = v503;
        }

        if (v506)
        {
          v507 = 0;
          v502 = v503;
        }

        else
        {
          v502 = v508;
        }

        v503 = *(v503 + v507);
      }

      while (v503);
    }

LABEL_931:
    if (v502[6] != v440)
    {
      goto LABEL_985;
    }

    v511 = (v497 + 32);
    v512 = *(v497 + 4);
    if (v500 == 1)
    {
      while (1)
      {
        v517 = *(v512 + 8);
        if (v517 == 1)
        {
          if (v501 < *(v512 + 10))
          {
            goto LABEL_946;
          }

LABEL_941:
          v512 = v512[1];
          if (!v512)
          {
            goto LABEL_947;
          }
        }

        else
        {
          if (v517 <= 1)
          {
            goto LABEL_941;
          }

LABEL_946:
          v511 = v512;
          v512 = *v512;
          if (!v512)
          {
            goto LABEL_947;
          }
        }
      }
    }

    do
    {
      v513 = *(v512 + 8);
      v514 = v500 == v513;
      v207 = v500 < v513;
      v515 = v500 >= v513;
      if (v207)
      {
        v516 = v512;
      }

      else
      {
        v516 = v511;
      }

      if (v514)
      {
        v515 = 1;
      }

      else
      {
        v511 = v516;
      }

      v512 = v512[v515];
    }

    while (v512);
LABEL_947:
    v518 = v497;
    if (v511 != v499)
    {
      v518 = v511[6];
    }

    v519 = *(v440 + 1);
    if (v519 == v518)
    {
LABEL_963:
      v524 = v502[1];
      v525 = v502;
      if (v524)
      {
        do
        {
          v526 = v524;
          v524 = *v524;
        }

        while (v524);
      }

      else
      {
        do
        {
          v526 = v525[2];
          v203 = *v526 == v525;
          v525 = v526;
        }

        while (!v203);
      }

      if (*(v497 + 3) == v502)
      {
        *(v497 + 3) = v526;
      }

      --*(v497 + 5);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v498, v502);
      operator delete(v502);
      goto LABEL_985;
    }

    if (v500 == 1)
    {
      while (1)
      {
        while (1)
        {
          v521 = v498;
          v522 = *(v498 + 8);
          if (v522 == 1)
          {
            break;
          }

          if (v522 <= 1)
          {
            goto LABEL_959;
          }

LABEL_953:
          v498 = *v498;
          if (!*v521)
          {
            v499 = v521;
            goto LABEL_981;
          }
        }

        v523 = *(v498 + 10);
        if (v523 > v501)
        {
          goto LABEL_953;
        }

        if (v523 >= v501)
        {
          *(v498 + 6) = v519;
          goto LABEL_985;
        }

LABEL_959:
        v498 = *(v498 + 1);
        if (!v498)
        {
          v499 = v521 + 1;
          goto LABEL_981;
        }
      }
    }

    v520 = *(v498 + 8);
    if (v500 == v520)
    {
      goto LABEL_984;
    }

    while (2)
    {
      if (v500 >= v520)
      {
        if (v520 >= v500)
        {
          goto LABEL_984;
        }

        v527 = *(v498 + 1);
        if (!v527)
        {
          v499 = v498 + 8;
          goto LABEL_980;
        }

        goto LABEL_972;
      }

      v527 = *v498;
      if (*v498)
      {
LABEL_972:
        v520 = *(v527 + 8);
        v498 = v527;
        if (v500 == v520)
        {
          v527[6] = v519;
          goto LABEL_985;
        }

        continue;
      }

      break;
    }

    v499 = v498;
LABEL_980:
    v521 = v498;
LABEL_981:
    v498 = operator new(0x38uLL);
    v528 = *(v496 + 64);
    *(v498 + 10) = *(v496 + 72);
    *(v498 + 4) = v528;
    *(v498 + 6) = 0;
    *v498 = 0;
    *(v498 + 1) = 0;
    *(v498 + 2) = v521;
    *v499 = v498;
    v529 = **(v497 + 3);
    if (v529)
    {
      *(v497 + 3) = v529;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v497 + 4), v498);
    ++*(v497 + 5);
LABEL_984:
    *(v498 + 6) = v519;
LABEL_985:
    v530 = *v440;
    v439 = *(v440 + 1);
    *(v530 + 8) = v439;
    *v439 = v530;
    --*(v497 + 2);
    v531 = *(v440 + 3);
    if (v531)
    {
      if (atomic_fetch_add(v531 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v531 + 16))(v531);
        if (atomic_fetch_add(v531 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v531 + 24))(v531);
        }
      }
    }

    operator delete(v440);
    v435 = v750;
LABEL_898:
    v491 = v439 != **v435 && v441 >= ++v490;
    v440 = v439;
    if (v491)
    {
      continue;
    }

    break;
  }

LABEL_990:
  v435[2] = v439;
  v532 = operator new(0x50uLL);
  *(v532 + 1) = 0;
  *(v532 + 2) = 0;
  v532[24] = 1;
  *(v532 + 7) = 1;
  *v532 = &unk_2A1E43140;
  v533 = operator new(0x38uLL);
  std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::vector[abi:ne200100](v533, v825);
  v533[3] = 0;
  v534 = *(&v826 + 1);
  if (*(&v826 + 1))
  {
    v533[3] = *(&v826 + 1);
    if (v534)
    {
      *(v533 + 2) = v827;
      v533[6] = v828;
    }

    else
    {
      (*v534)(&v827, v533 + 32, 0);
    }
  }

  *(v532 + 5) = 0;
  *(v532 + 4) = v533;
  v538 = operator new(0x18uLL);
  v538[1] = 0x100000001;
  *v538 = &unk_2A1E43198;
  v538[2] = v533;
  *(v532 + 5) = v538;
  *(v532 + 6) = v750[3];
  v539 = v750[4];
  *(v532 + 7) = v539;
  if (v539)
  {
    atomic_fetch_add_explicit(v539 + 2, 1u, memory_order_relaxed);
  }

  *(v532 + 16) = 0;
  v532[68] = 0;
  object = v532;
  v835 = 0;
  v540 = operator new(0x18uLL);
  *(v540 + 1) = 0x100000001;
  *v540 = &unk_2A1E431F8;
  *(v540 + 2) = v532;
  v835 = v540;
  v541 = **v750;
  v542 = operator new(0x20uLL);
  v543 = (v541 + 32);
  v542[2] = v532;
  v542[3] = v540;
  atomic_fetch_add_explicit(v540 + 2, 1u, memory_order_relaxed);
  v544 = *v541;
  *(v544 + 8) = v542;
  *v542 = v544;
  *v541 = v542;
  v542[1] = v541;
  ++*(v541 + 2);
  v545 = *(v541 + 4);
  if (v545)
  {
    v546 = v541 + 32;
    v547 = *(v541 + 4);
    do
    {
      v548 = *(v547 + 32);
      v549 = v548 == 2;
      v207 = v548 < 2;
      v550 = v548 < 2;
      if (!v207)
      {
        v546 = v547;
      }

      if (v549)
      {
        v546 = v547;
      }

      v547 = *(v547 + 8 * v550);
    }

    while (v547);
    if (v546 == v543 || *(v546 + 32) != 2)
    {
      v551 = *(v545 + 8);
      while (v551 != 2)
      {
        if (v551 < 3)
        {
          v552 = v545[1];
          if (!v552)
          {
            v543 = v545 + 1;
            goto LABEL_1018;
          }
        }

        else
        {
          v552 = *v545;
          v543 = v545;
          if (!*v545)
          {
            goto LABEL_1018;
          }
        }

        v551 = *(v552 + 8);
        v545 = v552;
      }
    }
  }

  else
  {
    v545 = (v541 + 32);
LABEL_1018:
    v553 = operator new(0x38uLL);
    v553[4] = 0xAAAAAA0000000002;
    *(v553 + 10) = -1431655766;
    v553[6] = v542;
    *v553 = 0;
    v553[1] = 0;
    v553[2] = v545;
    *v543 = v553;
    v554 = **(v541 + 3);
    if (v554)
    {
      *(v541 + 3) = v554;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v541 + 4), v553);
    ++*(v541 + 5);
    v532 = object;
  }

  v555 = v744;
  *(v532 + 16) = 2;
  *(v532 + 68) = 0xAAAAAAAAAAAAAA00;
  atomic_fetch_add_explicit(v540 + 3, 1u, memory_order_relaxed);
  *&v764 = v532;
  *(&v764 + 1) = v540;
  atomic_fetch_add_explicit(v540 + 3, 1u, memory_order_relaxed);
  if (atomic_fetch_add(v540 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v540 + 24))(v540);
  }

  v556 = v835;
  if (v835)
  {
    if (atomic_fetch_add(v835 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v556 + 16))(v556);
      if (atomic_fetch_add(v556 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v556 + 24))(v556);
      }
    }
  }

  pthread_mutex_unlock(v849);
  v557 = __p;
  if (__p)
  {
    if (v848 > 0)
    {
      v719 = __p + 16 * v848;
      do
      {
        v720 = *(v719 - 1);
        if (v720)
        {
          if (atomic_fetch_add(v720 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v720 + 16))(v720);
            if (atomic_fetch_add(v720 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v720 + 24))(v720);
            }
          }
        }

        v719 -= 16;
      }

      while (v719 > v557);
    }

    v555 = v744;
    if (v846 >= 0xB)
    {
      operator delete(__p);
    }
  }

  if (*(&v826 + 1))
  {
    if ((BYTE8(v826) & 1) == 0 && **(&v826 + 1))
    {
      (**(&v826 + 1))(&v827, &v827, 2);
    }

    *(&v826 + 1) = 0;
  }

  v558 = v825[0];
  if (v825[0])
  {
    v559 = v825[1];
    v560 = v825[0];
    if (v825[1] != v825[0])
    {
      do
      {
        v559 -= 24;
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v559);
      }

      while (v559 != v558);
      v560 = v825[0];
    }

    v825[1] = v558;
    operator delete(v560);
  }

  dispatch_release(v823);
  if (v824)
  {
    _Block_release(v824);
  }

  if (atomic_fetch_add(&v740->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v561 = v736;
    if (!v736)
    {
      goto LABEL_1048;
    }

LABEL_1047:
    _Block_release(v561);
  }

  else
  {
    (v740->__on_zero_shared)(v740);
    std::__shared_weak_count::__release_weak(v740);
    v561 = v736;
    if (v736)
    {
      goto LABEL_1047;
    }
  }

LABEL_1048:
  v562 = operator new(0x20uLL);
  v562[1] = v764;
  v563 = *(v555 + 20);
  *v562 = v563;
  *(v562 + 1) = v743;
  *(v563 + 8) = v562;
  *(v555 + 20) = v562;
  ++*(v555 + 22);
  v564 = *(v555 + 18);
  v816 = MEMORY[0x29EDCA5F8];
  v817 = 0x40000000;
  v818 = ___ZN3ctu20SharedSynchronizableIN4coex6Module5StateEE13connect_eventIN5boost8signals26signalIFvNSt3__13mapIPKcNS9_4listINS9_4pairIyjEENS9_9allocatorISF_EEEENS9_4lessISC_EENSG_INSE_IKSC_SI_EEEEEENS1_5SubIdEENS7_19optional_last_valueIvEEiNSJ_IiEENS6_8functionISQ_EENSU_IFvRKNS7_10connectionESO_SP_EEENS7_5mutexEEES3_vJSO_SP_EEEDTcl7connectfp_cvNS9_10shared_ptrIS3_EE_EcvP16dispatch_queue_s_EcvPFT1_DpT2_ELi0EEERT_MT0_FS17_S19_E_block_invoke;
  v819 = &__block_descriptor_tmp_391;
  v820 = v555;
  v821 = coex::Module::State::handleDesenseFrequencyReport_sync;
  v822 = 0;
  v565 = _Block_copy(&v816);
  v759 = v564;
  v566 = *(v555 + 1);
  if (!v566 || (v567 = *v555, (v568 = std::__shared_weak_count::lock(v566)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v569 = v568;
  v570 = *(v555 + 2);
  v823 = v570;
  if (v565)
  {
    v571 = _Block_copy(v565);
  }

  else
  {
    v571 = 0;
  }

  v824 = v571;
  dispatch_retain(v570);
  v826 = 0u;
  *v825 = 0u;
  v829 = v570;
  if (v571)
  {
    v571 = _Block_copy(v571);
  }

  v830 = v571;
  dispatch_retain(v570);
  object = v570;
  v737 = v565;
  v741 = v569;
  if (!v571)
  {
    v835 = 0;
    dispatch_retain(v570);
    goto LABEL_1064;
  }

  v572 = _Block_copy(v571);
  v835 = v572;
  dispatch_retain(v570);
  if (!v572)
  {
LABEL_1064:
    dispatch_retain(v570);
    v831 = 0;
    goto LABEL_1065;
  }

  v573 = _Block_copy(v572);
  dispatch_retain(v570);
  v831 = 0;
  if (!v573)
  {
LABEL_1065:
    dispatch_retain(v570);
    v731 = 0;
    v578 = 1;
LABEL_1066:
    dispatch_retain(v570);
    v751 = 0;
    v579 = 1;
LABEL_1067:
    dispatch_retain(v570);
    v575 = 0;
    v580 = 1;
LABEL_1068:
    dispatch_retain(v570);
    v576 = 0;
    v832 = v570;
    v581 = 1;
    goto LABEL_1069;
  }

  v574 = _Block_copy(v573);
  dispatch_retain(v570);
  v731 = v573;
  if (!v574)
  {
    v578 = 0;
    goto LABEL_1066;
  }

  v575 = _Block_copy(v574);
  dispatch_retain(v570);
  v751 = v574;
  if (!v575)
  {
    v578 = 0;
    v579 = 0;
    goto LABEL_1067;
  }

  v576 = _Block_copy(v575);
  dispatch_retain(v570);
  if (!v576)
  {
    v578 = 0;
    v579 = 0;
    v580 = 0;
    goto LABEL_1068;
  }

  v577 = _Block_copy(v576);
  dispatch_retain(v570);
  v832 = v570;
  if (v577)
  {
    v578 = 0;
    v579 = 0;
    v580 = 0;
    v581 = 0;
    v833 = _Block_copy(v577);
    dispatch_retain(v570);
    dispatch_release(v570);
    _Block_release(v577);
    goto LABEL_1070;
  }

  v578 = 0;
  v579 = 0;
  v580 = 0;
  v581 = 0;
LABEL_1069:
  v833 = 0;
  dispatch_retain(v570);
  dispatch_release(v570);
LABEL_1070:
  dispatch_release(v570);
  if ((v581 & 1) == 0)
  {
    _Block_release(v576);
  }

  dispatch_release(v570);
  if ((v580 & 1) == 0)
  {
    _Block_release(v575);
  }

  v831 = boost::function2<void,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>::assign_to<ctu::DispatchSlot<dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>>(ctu::DispatchSlot<dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>)::stored_vtable;
  dispatch_release(v570);
  if ((v579 & 1) == 0)
  {
    _Block_release(v751);
  }

  dispatch_release(v570);
  if ((v578 & 1) == 0)
  {
    _Block_release(v731);
  }

  *(&v837 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v837 = 0xAAAAAAAAAAAAAAAALL;
  *(&block + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&block = 0;
  boost::function2<void,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>::move_assign(&block, &v831);
  boost::function2<void,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>::move_assign(&v831, &v826 + 8);
  boost::function2<void,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>::move_assign(&v826 + 8, &block);
  if (block && (block & 1) == 0 && *block)
  {
    (*block)(&block + 8, &block + 8, 2);
  }

  if (v831)
  {
    if ((v831 & 1) == 0 && *v831)
    {
      (*v831)(&v832, &v832, 2u);
    }

    v831 = 0;
  }

  dispatch_release(object);
  if (v835)
  {
    _Block_release(v835);
  }

  dispatch_release(v829);
  if (v830)
  {
    _Block_release(v830);
  }

  atomic_fetch_add_explicit(&v741->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v582 = operator new(0x18uLL);
  *v582 = &unk_2A1E42DD8;
  v582[1] = v567;
  v582[2] = v741;
  atomic_fetch_add_explicit(&v741->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v583 = operator new(0x18uLL);
  *v583 = &unk_2A1E42DD8;
  v583[1] = v567;
  v583[2] = v741;
  atomic_fetch_add_explicit(&v741->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *(&block + 1) = v583;
  LODWORD(block) = 2;
  v584 = v825[1];
  if (v825[1] < v826)
  {
    v585 = operator new(0x18uLL);
    *v585 = &unk_2A1E42DD8;
    v585[1] = v567;
    v585[2] = v741;
    atomic_fetch_add_explicit(&v741->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v584[1] = v585;
    *v584 = 2;
    v825[1] = v584 + 3;
    goto LABEL_1093;
  }

  v686 = std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::__emplace_back_slow_path<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>(v825, &block);
  v687 = block ^ (block >> 31);
  v825[1] = v686;
  if (v687 == 2)
  {
    v583 = *(&block + 1);
    if (*(&block + 1))
    {
LABEL_1093:
      (*(*v583 + 8))(v583);
    }
  }

  else if (v687 == 1)
  {
    v688 = v837;
    if (v837 && atomic_fetch_add((v837 + 12), 0xFFFFFFFF) == 1)
    {
      goto LABEL_1285;
    }
  }

  else
  {
    v688 = v837;
    if (v837 && atomic_fetch_add((v837 + 12), 0xFFFFFFFF) == 1)
    {
LABEL_1285:
      (*(*v688 + 24))(v688);
    }
  }

  (*(*v582 + 8))(v582);
  std::__shared_weak_count::__release_weak(v741);
  v586 = *(v759 + 80);
  *&v587 = 0xAAAAAAAAAAAAAAAALL;
  *(&v587 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v845 = v587;
  v844 = v587;
  v843 = v587;
  v842 = v587;
  v841 = v587;
  v840 = v587;
  v839 = v587;
  *v838 = v587;
  v837 = v587;
  block = v587;
  v588 = v586[3];
  v846 = 10;
  __p = &block;
  v848 = 0;
  v849 = v588;
  pthread_mutex_lock(v588);
  v589 = v586[1];
  v752 = v586;
  if (v589 && atomic_load_explicit(v589 + 2, memory_order_acquire) == 1)
  {
    v590 = **v586;
    v591 = v586[2];
    v592 = 1;
    if (v591 != v590)
    {
      goto LABEL_1184;
    }

    goto LABEL_1183;
  }

  v593 = operator new(0x20uLL);
  v594 = *v586;
  v595 = **v586;
  v732 = v593;
  v596 = operator new(0x40uLL);
  v597 = v596;
  *v596 = v596;
  v596[1] = v596;
  v596[2] = 0;
  v598 = *(v595 + 1);
  if (v598 != v595)
  {
    v599 = 0;
    v600 = v596;
    do
    {
      v601 = operator new(0x20uLL);
      v601[2] = *(v598 + 2);
      v602 = *(v598 + 3);
      v601[3] = v602;
      if (v602)
      {
        atomic_fetch_add_explicit((v602 + 8), 1u, memory_order_relaxed);
        v600 = *v597;
        v599 = v597[2];
      }

      *v601 = v600;
      v601[1] = v597;
      v600[1] = v601;
      *v597 = v601;
      v597[2] = ++v599;
      v598 = *(v598 + 1);
      v600 = v601;
    }

    while (v598 != v595);
  }

  v725 = v594;
  v597[3] = 0;
  v597[4] = 0;
  v603 = v597 + 4;
  v597[5] = 0;
  *(v597 + 48) = *(v595 + 48);
  v760 = (v597 + 3);
  v597[3] = v597 + 4;
  v604 = *(v595 + 3);
  v605 = (v595 + 32);
  if (v604 != (v595 + 32))
  {
    do
    {
      v618 = *(v604 + 8);
      v619 = *v760;
      v620 = *v603;
      v621 = v597 + 4;
      if (*v760 != v603)
      {
        v622 = *v603;
        v623 = v597 + 4;
        if (v620)
        {
          do
          {
            v621 = v622;
            v622 = v622[1];
          }

          while (v622);
        }

        else
        {
          do
          {
            v621 = v623[2];
            v203 = *v621 == v623;
            v623 = v621;
          }

          while (v203);
        }

        v624 = *(v604 + 10);
        v625 = *(v621 + 8);
        if (v625 == v618)
        {
          if (v618 != 1)
          {
            goto LABEL_1149;
          }

          if (*(v621 + 10) >= v624)
          {
            v626 = *v603;
            v627 = v597 + 4;
            v628 = v597 + 4;
            if (v620)
            {
              goto LABEL_1153;
            }

LABEL_1160:
            v632 = operator new(0x38uLL);
            v633 = *(v604 + 2);
            v632[6] = v604[6];
            *(v632 + 2) = v633;
            *v632 = 0;
            v632[1] = 0;
            v632[2] = v628;
            *v627 = v632;
            if (*v619)
            {
              *v760 = *v619;
            }

            std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v597[4], v632);
            ++v597[5];
            goto LABEL_1163;
          }
        }

        else if (v625 >= v618)
        {
LABEL_1149:
          v627 = v597 + 4;
          v628 = v597 + 4;
          if (!v620)
          {
            goto LABEL_1160;
          }

          v626 = *v603;
          if (v618 != 1)
          {
            v629 = *(v620 + 8);
            v628 = *v603;
            while (v618 != v629)
            {
              if (v618 < v629)
              {
                v636 = *v628;
                v627 = v628;
                if (!*v628)
                {
                  goto LABEL_1160;
                }
              }

              else
              {
                if (v629 >= v618)
                {
                  goto LABEL_1163;
                }

                v636 = v628[1];
                if (!v636)
                {
                  goto LABEL_1159;
                }
              }

              v629 = *(v636 + 32);
              v628 = v636;
            }

            goto LABEL_1163;
          }

          while (1)
          {
LABEL_1153:
            v628 = v626;
            v630 = *(v626 + 8);
            if (v630 == 1)
            {
              v631 = *(v626 + 10);
              if (v631 > v624)
              {
                goto LABEL_1152;
              }

              if (v631 >= v624)
              {
                goto LABEL_1163;
              }
            }

            else if (v630 > 1)
            {
LABEL_1152:
              v626 = *v626;
              v627 = v628;
              if (!*v628)
              {
                goto LABEL_1160;
              }

              continue;
            }

            v626 = v626[1];
            if (!v626)
            {
LABEL_1159:
              v627 = v628 + 1;
              goto LABEL_1160;
            }
          }
        }
      }

      if (v620)
      {
        v628 = v621;
      }

      else
      {
        v628 = v597 + 4;
      }

      if (v620)
      {
        v627 = v621 + 1;
      }

      else
      {
        v627 = v597 + 4;
      }

      if (!*v627)
      {
        goto LABEL_1160;
      }

LABEL_1163:
      v634 = v604[1];
      if (v634)
      {
        do
        {
          v635 = v634;
          v634 = *v634;
        }

        while (v634);
      }

      else
      {
        do
        {
          v635 = v604[2];
          v203 = *v635 == v604;
          v604 = v635;
        }

        while (!v203);
      }

      v604 = v635;
    }

    while (v635 != v605);
  }

  *(v597 + 56) = *(v595 + 56);
  v606 = *(v595 + 3);
  if (v606 != v605)
  {
    v607 = v597[3];
    v608 = v597[1];
    do
    {
      v607[6] = v608;
      v609 = v595;
      if (v606 != v605)
      {
        v609 = v606[6];
      }

      v610 = v606[1];
      v611 = v610;
      v612 = v606;
      if (v610)
      {
        do
        {
          v613 = v611;
          v611 = *v611;
        }

        while (v611);
      }

      else
      {
        do
        {
          v613 = v612[2];
          v203 = *v613 == v612;
          v612 = v613;
        }

        while (!v203);
      }

      v614 = v595;
      if (v613 != v605)
      {
        v614 = v613[6];
      }

      while (v609 != v614)
      {
        v609 = *(v609 + 1);
        v608 = *(v608 + 8);
      }

      if (v610)
      {
        do
        {
          v615 = v610;
          v610 = *v610;
        }

        while (v610);
      }

      else
      {
        do
        {
          v615 = v606[2];
          v203 = *v615 == v606;
          v606 = v615;
        }

        while (!v203);
      }

      v616 = v607[1];
      if (v616)
      {
        do
        {
          v617 = v616;
          v616 = *v616;
        }

        while (v616);
      }

      else
      {
        do
        {
          v617 = v607[2];
          v203 = *v617 == v607;
          v607 = v617;
        }

        while (!v203);
      }

      v606 = v615;
      v607 = v617;
    }

    while (v615 != v605);
  }

  *v732 = v597;
  v732[1] = 0;
  v637 = operator new(0x18uLL);
  *(v637 + 1) = 0x100000001;
  *v637 = &unk_2A1E432F8;
  *(v637 + 2) = v597;
  v732[1] = v637;
  v732[2] = v725[2];
  v638 = v725[3];
  v732[3] = v638;
  if (v638)
  {
    atomic_fetch_add_explicit(v638 + 2, 1u, memory_order_relaxed);
  }

  v831 = v732;
  v832 = 0;
  v639 = operator new(0x18uLL);
  v586 = v752;
  v639[1] = 0x100000001;
  *v639 = &unk_2A1E43298;
  v639[2] = v732;
  v640 = v752[1];
  v831 = *v752;
  *v752 = v732;
  v752[1] = v639;
  v832 = v640;
  if (v640)
  {
    if (atomic_fetch_add(v640 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v640 + 16))(v640);
      if (atomic_fetch_add(v640 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v640 + 24))(v640);
      }
    }
  }

  v590 = **v752;
  v592 = -1;
LABEL_1183:
  v591 = *(v590 + 1);
  if (v590 == v591)
  {
    goto LABEL_1278;
  }

LABEL_1184:
  v641 = 0;
  while (2)
  {
    v643 = *(v591 + 2);
    v644 = *(v643 + 32);
    if (v644)
    {
      for (m = *v644; m != v644[1]; m += 24)
      {
        if ((*m ^ (*m >> 31)) > 1)
        {
          if ((*(**(m + 8) + 24))(*(m + 8)))
          {
            goto LABEL_1200;
          }
        }

        else
        {
          v646 = *(m + 16);
          if (!v646 || !atomic_load_explicit((v646 + 8), memory_order_acquire))
          {
LABEL_1200:
            if (*(v643 + 24) == 1)
            {
              *(v643 + 24) = 0;
              boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(v643, &block);
            }

            break;
          }
        }
      }
    }

    v647 = *(v591 + 2);
    if (*(v647 + 24))
    {
      v590 = *(v591 + 1);
      goto LABEL_1186;
    }

    v648 = **v586;
    v650 = (v648 + 32);
    v649 = *(v648 + 4);
    if (!v649)
    {
      if (*(v648 + 10) != v591)
      {
        goto LABEL_1273;
      }

      v670 = *(v591 + 1);
      v672 = (v648 + 32);
      v653 = (v648 + 32);
      if (v670 != v648)
      {
        goto LABEL_1269;
      }

      goto LABEL_1251;
    }

    v651 = *(v647 + 64);
    v652 = *(v647 + 72);
    v653 = (v648 + 32);
    v654 = *(v648 + 4);
    if (v651 == 1)
    {
      v653 = (v648 + 32);
      v655 = *(v648 + 4);
      do
      {
        while (1)
        {
          v660 = *(v655 + 32);
          v661 = v660 < 1;
          if (v660 == 1)
          {
            v661 = *(v655 + 40) < v652;
          }

          if (!v661)
          {
            break;
          }

          v655 = *(v655 + 8);
          if (!v655)
          {
            goto LABEL_1219;
          }
        }

        v653 = v655;
        v655 = *v655;
      }

      while (v655);
    }

    else
    {
      do
      {
        v656 = *(v654 + 32);
        v657 = v656 == v651;
        v207 = v656 < v651;
        v658 = 8 * (v656 < v651);
        if (v207)
        {
          v659 = v653;
        }

        else
        {
          v659 = v654;
        }

        if (v657)
        {
          v658 = 0;
          v653 = v654;
        }

        else
        {
          v653 = v659;
        }

        v654 = *(v654 + v658);
      }

      while (v654);
    }

LABEL_1219:
    if (v653[6] != v591)
    {
      goto LABEL_1273;
    }

    v662 = (v648 + 32);
    v663 = *(v648 + 4);
    if (v651 == 1)
    {
      while (1)
      {
        v668 = *(v663 + 8);
        if (v668 == 1)
        {
          if (v652 < *(v663 + 10))
          {
            goto LABEL_1234;
          }

LABEL_1229:
          v663 = v663[1];
          if (!v663)
          {
            goto LABEL_1235;
          }
        }

        else
        {
          if (v668 <= 1)
          {
            goto LABEL_1229;
          }

LABEL_1234:
          v662 = v663;
          v663 = *v663;
          if (!v663)
          {
            goto LABEL_1235;
          }
        }
      }
    }

    do
    {
      v664 = *(v663 + 8);
      v665 = v651 == v664;
      v207 = v651 < v664;
      v666 = v651 >= v664;
      if (v207)
      {
        v667 = v663;
      }

      else
      {
        v667 = v662;
      }

      if (v665)
      {
        v666 = 1;
      }

      else
      {
        v662 = v667;
      }

      v663 = v663[v666];
    }

    while (v663);
LABEL_1235:
    v669 = v648;
    if (v662 != v650)
    {
      v669 = v662[6];
    }

    v670 = *(v591 + 1);
    if (v670 == v669)
    {
LABEL_1251:
      v675 = v653[1];
      v676 = v653;
      if (v675)
      {
        do
        {
          v677 = v675;
          v675 = *v675;
        }

        while (v675);
      }

      else
      {
        do
        {
          v677 = v676[2];
          v203 = *v677 == v676;
          v676 = v677;
        }

        while (!v203);
      }

      if (*(v648 + 3) == v653)
      {
        *(v648 + 3) = v677;
      }

      --*(v648 + 5);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v649, v653);
      operator delete(v653);
      goto LABEL_1273;
    }

    if (v651 == 1)
    {
      while (1)
      {
        while (1)
        {
          v672 = v649;
          v673 = *(v649 + 8);
          if (v673 == 1)
          {
            break;
          }

          if (v673 <= 1)
          {
            goto LABEL_1247;
          }

LABEL_1241:
          v649 = *v649;
          if (!*v672)
          {
            v650 = v672;
            goto LABEL_1269;
          }
        }

        v674 = *(v649 + 10);
        if (v674 > v652)
        {
          goto LABEL_1241;
        }

        if (v674 >= v652)
        {
          *(v649 + 6) = v670;
          goto LABEL_1273;
        }

LABEL_1247:
        v649 = *(v649 + 1);
        if (!v649)
        {
          v650 = v672 + 1;
          goto LABEL_1269;
        }
      }
    }

    v671 = *(v649 + 8);
    if (v651 == v671)
    {
      goto LABEL_1272;
    }

    while (2)
    {
      if (v651 >= v671)
      {
        if (v671 >= v651)
        {
          goto LABEL_1272;
        }

        v678 = *(v649 + 1);
        if (!v678)
        {
          v650 = v649 + 8;
          goto LABEL_1268;
        }

        goto LABEL_1260;
      }

      v678 = *v649;
      if (*v649)
      {
LABEL_1260:
        v671 = *(v678 + 8);
        v649 = v678;
        if (v651 == v671)
        {
          v678[6] = v670;
          goto LABEL_1273;
        }

        continue;
      }

      break;
    }

    v650 = v649;
LABEL_1268:
    v672 = v649;
LABEL_1269:
    v649 = operator new(0x38uLL);
    v679 = *(v647 + 64);
    *(v649 + 10) = *(v647 + 72);
    *(v649 + 4) = v679;
    *(v649 + 6) = 0;
    *v649 = 0;
    *(v649 + 1) = 0;
    *(v649 + 2) = v672;
    *v650 = v649;
    v680 = **(v648 + 3);
    if (v680)
    {
      *(v648 + 3) = v680;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v648 + 4), v649);
    ++*(v648 + 5);
LABEL_1272:
    *(v649 + 6) = v670;
LABEL_1273:
    v681 = *v591;
    v590 = *(v591 + 1);
    *(v681 + 8) = v590;
    *v590 = v681;
    --*(v648 + 2);
    v682 = *(v591 + 3);
    if (v682)
    {
      if (atomic_fetch_add(v682 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v682 + 16))(v682);
        if (atomic_fetch_add(v682 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v682 + 24))(v682);
        }
      }
    }

    operator delete(v591);
    v586 = v752;
LABEL_1186:
    v642 = v590 != **v586 && v592 >= ++v641;
    v591 = v590;
    if (v642)
    {
      continue;
    }

    break;
  }

LABEL_1278:
  v586[2] = v590;
  v683 = operator new(0x50uLL);
  *(v683 + 1) = 0;
  *(v683 + 2) = 0;
  v683[24] = 1;
  *(v683 + 7) = 1;
  *v683 = &unk_2A1E43358;
  v684 = operator new(0x38uLL);
  std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::vector[abi:ne200100](v684, v825);
  v684[3] = 0;
  v685 = *(&v826 + 1);
  if (*(&v826 + 1))
  {
    v684[3] = *(&v826 + 1);
    if (v685)
    {
      *(v684 + 2) = v827;
      v684[6] = v828;
    }

    else
    {
      (*v685)(&v827, v684 + 32, 0);
    }
  }

  *(v683 + 5) = 0;
  *(v683 + 4) = v684;
  v689 = operator new(0x18uLL);
  v689[1] = 0x100000001;
  *v689 = &unk_2A1E433B0;
  v689[2] = v684;
  *(v683 + 5) = v689;
  *(v683 + 6) = v752[3];
  v690 = v752[4];
  *(v683 + 7) = v690;
  if (v690)
  {
    atomic_fetch_add_explicit(v690 + 2, 1u, memory_order_relaxed);
  }

  *(v683 + 16) = 0;
  v683[68] = 0;
  object = v683;
  v835 = 0;
  v691 = operator new(0x18uLL);
  *(v691 + 1) = 0x100000001;
  *v691 = &unk_2A1E43410;
  *(v691 + 2) = v683;
  v835 = v691;
  v692 = **v752;
  v693 = operator new(0x20uLL);
  v694 = (v692 + 32);
  v693[2] = v683;
  v693[3] = v691;
  atomic_fetch_add_explicit(v691 + 2, 1u, memory_order_relaxed);
  v695 = *v692;
  *(v695 + 8) = v693;
  *v693 = v695;
  *v692 = v693;
  v693[1] = v692;
  ++*(v692 + 2);
  v696 = *(v692 + 4);
  if (v696)
  {
    v697 = v692 + 32;
    v698 = *(v692 + 4);
    do
    {
      v699 = *(v698 + 32);
      v700 = v699 == 2;
      v207 = v699 < 2;
      v701 = v699 < 2;
      if (!v207)
      {
        v697 = v698;
      }

      if (v700)
      {
        v697 = v698;
      }

      v698 = *(v698 + 8 * v701);
    }

    while (v698);
    if (v697 == v694 || *(v697 + 32) != 2)
    {
      v702 = *(v696 + 8);
      while (v702 != 2)
      {
        if (v702 < 3)
        {
          v703 = v696[1];
          if (!v703)
          {
            v694 = v696 + 1;
            goto LABEL_1306;
          }
        }

        else
        {
          v703 = *v696;
          v694 = v696;
          if (!*v696)
          {
            goto LABEL_1306;
          }
        }

        v702 = *(v703 + 8);
        v696 = v703;
      }
    }
  }

  else
  {
    v696 = (v692 + 32);
LABEL_1306:
    v704 = operator new(0x38uLL);
    v704[4] = 0xAAAAAA0000000002;
    *(v704 + 10) = -1431655766;
    v704[6] = v693;
    *v704 = 0;
    v704[1] = 0;
    v704[2] = v696;
    *v694 = v704;
    v705 = **(v692 + 3);
    if (v705)
    {
      *(v692 + 3) = v705;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v692 + 4), v704);
    ++*(v692 + 5);
    v683 = object;
  }

  v403 = v744;
  *(v683 + 16) = 2;
  *(v683 + 68) = 0xAAAAAAAAAAAAAA00;
  atomic_fetch_add_explicit(v691 + 3, 1u, memory_order_relaxed);
  *&v765 = v683;
  *(&v765 + 1) = v691;
  atomic_fetch_add_explicit(v691 + 3, 1u, memory_order_relaxed);
  if (atomic_fetch_add(v691 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v691 + 24))(v691);
  }

  v706 = v835;
  if (v835)
  {
    if (atomic_fetch_add(v835 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v706 + 16))(v706);
      if (atomic_fetch_add(v706 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v706 + 24))(v706);
      }
    }
  }

  pthread_mutex_unlock(v849);
  v707 = __p;
  if (__p)
  {
    if (v848 > 0)
    {
      v721 = __p + 16 * v848;
      do
      {
        v722 = *(v721 - 1);
        if (v722)
        {
          if (atomic_fetch_add(v722 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v722 + 16))(v722);
            if (atomic_fetch_add(v722 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v722 + 24))(v722);
            }
          }
        }

        v721 -= 16;
      }

      while (v721 > v707);
    }

    v403 = v744;
    if (v846 >= 0xB)
    {
      operator delete(__p);
    }
  }

  if (*(&v826 + 1))
  {
    if ((BYTE8(v826) & 1) == 0 && **(&v826 + 1))
    {
      (**(&v826 + 1))(&v827, &v827, 2);
    }

    *(&v826 + 1) = 0;
  }

  v708 = v825[0];
  if (v825[0])
  {
    v709 = v825[1];
    v710 = v825[0];
    if (v825[1] != v825[0])
    {
      do
      {
        v709 -= 24;
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v709);
      }

      while (v709 != v708);
      v710 = v825[0];
    }

    v825[1] = v708;
    operator delete(v710);
  }

  dispatch_release(v823);
  if (v824)
  {
    _Block_release(v824);
  }

  v409 = v761;
  if (!atomic_fetch_add(&v741->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v741->__on_zero_shared)(v741);
    std::__shared_weak_count::__release_weak(v741);
    v711 = v737;
    if (!v737)
    {
      goto LABEL_1336;
    }

    goto LABEL_1335;
  }

  v711 = v737;
  if (v737)
  {
LABEL_1335:
    _Block_release(v711);
  }

LABEL_1336:
  v712 = operator new(0x20uLL);
  v712[1] = v765;
  v713 = *(v403 + 20);
  *v712 = v713;
  *(v712 + 1) = v743;
  *(v713 + 8) = v712;
  *(v403 + 20) = v712;
  ++*(v403 + 22);
LABEL_1337:
  coex::Module::State::setIndications_sync(v403);
  if (v767)
  {
    std::__shared_weak_count::__release_weak(v767);
  }

  if (v769)
  {
    std::__shared_weak_count::__release_weak(v769);
  }

  if (v771)
  {
    std::__shared_weak_count::__release_weak(v771);
  }

  if (v773)
  {
    std::__shared_weak_count::__release_weak(v773);
  }

  if (v775)
  {
    std::__shared_weak_count::__release_weak(v775);
  }

  if (v777)
  {
    std::__shared_weak_count::__release_weak(v777);
  }

  if (v779)
  {
    std::__shared_weak_count::__release_weak(v779);
  }

  if (v781)
  {
    std::__shared_weak_count::__release_weak(v781);
  }

  if (v783)
  {
    std::__shared_weak_count::__release_weak(v783);
  }

  if (v785)
  {
    std::__shared_weak_count::__release_weak(v785);
  }

  if (v787)
  {
    std::__shared_weak_count::__release_weak(v787);
  }

  if (v789)
  {
    std::__shared_weak_count::__release_weak(v789);
  }

  if (v791)
  {
    std::__shared_weak_count::__release_weak(v791);
  }

  if (v793)
  {
    std::__shared_weak_count::__release_weak(v793);
  }

  if (v795)
  {
    std::__shared_weak_count::__release_weak(v795);
  }

  if (v797)
  {
    std::__shared_weak_count::__release_weak(v797);
  }

  if (v799)
  {
    std::__shared_weak_count::__release_weak(v799);
  }

  if (v801)
  {
    std::__shared_weak_count::__release_weak(v801);
  }

  if (v803)
  {
    std::__shared_weak_count::__release_weak(v803);
  }

  if (v805)
  {
    std::__shared_weak_count::__release_weak(v805);
  }

  if (v807)
  {
    std::__shared_weak_count::__release_weak(v807);
  }

  if (v809)
  {
    std::__shared_weak_count::__release_weak(v809);
  }

  if (v811)
  {
    std::__shared_weak_count::__release_weak(v811);
  }

  if (v813)
  {
    std::__shared_weak_count::__release_weak(v813);
  }

  if (v815)
  {
    std::__shared_weak_count::__release_weak(v815);
  }

  std::__shared_weak_count::__release_weak(v409);
  v714 = *MEMORY[0x29EDCA608];
}

void sub_29748F0A0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748F0A8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29748F0B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_29748F0BC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_29748F0C4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748F0D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748F0DC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748F0E4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748F0F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748F100(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748F10C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748F120(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748F128(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748F134(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748F144(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748F14C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748F160(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748F168(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748F170(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748F178(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748F184(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748F18C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748F1A0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    boost::signals2::slot_base::~slot_base(v3);
    operator delete(v3);
    boost::signals2::detail::connection_body_base::~connection_body_base(v2);
    operator delete(v5);
    boost::signals2::detail::garbage_collecting_lock<boost::signals2::mutex>::~garbage_collecting_lock(&STACK[0x6A0]);
    boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>::~slot(&STACK[0x620]);
    ctu::DispatchSlot<dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>::~DispatchSlot(&STACK[0x610]);
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748F61C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::~auto_buffer(&STACK[0x6A0]);
    boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>::~slot(&STACK[0x620]);
    ctu::DispatchSlot<dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>::~DispatchSlot(&STACK[0x610]);
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748F644(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x29748F64CLL);
  }

  _Unwind_Resume(a1);
}

void sub_29748F678(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x29748F680);
  }

  _Unwind_Resume(a1);
}

void sub_29748F6A0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748F6AC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748F6B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    (*(*v2 + 8))(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_29748F6EC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_end_catch();
    JUMPOUT(0x29748F6F8);
  }

  _Unwind_Resume(a1);
}

void sub_29748F704(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748F70C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    boost::checked_delete<boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>>(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_29748F724(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_end_catch();
    boost::detail::shared_count::~shared_count(v3);
    boost::signals2::detail::connection_body_base::~connection_body_base(v2);
    JUMPOUT(0x297490278);
  }

  _Unwind_Resume(a1);
}

void sub_29748F73C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748F744(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x29748F74CLL);
  }

  _Unwind_Resume(a1);
}

void sub_29748F758(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x29748F760);
  }

  _Unwind_Resume(a1);
}

void sub_29748F76C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::~auto_buffer(&STACK[0x6A0]);
    boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>::~slot(&STACK[0x620]);
    ctu::DispatchSlot<dispatch::block<void({block_pointer})(coex::SubId)>>::~DispatchSlot(&STACK[0x610]);
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748F794(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x29748F79CLL);
  }

  _Unwind_Resume(a1);
}

void sub_29748F7C8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x29748F7D0);
  }

  _Unwind_Resume(a1);
}

void sub_29748F7F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748F7FC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748F808(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748F814(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748F820(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748F980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    boost::checked_delete<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::invocation_state>(a11);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_29748F9A0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_end_catch();
    boost::detail::shared_count::~shared_count((v2 + 8));
    boost::signals2::detail::garbage_collecting_lock<boost::signals2::mutex>::~garbage_collecting_lock(&STACK[0x6A0]);
    boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>::~slot(&STACK[0x620]);
    ctu::DispatchSlot<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>::~DispatchSlot(&STACK[0x610]);
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748FB20(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748FB2C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    boost::checked_delete<boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>>(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_29748FB4C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_end_catch();
    boost::detail::shared_count::~shared_count(v3);
    boost::signals2::detail::connection_body_base::~connection_body_base(v2);
    operator delete(v4);
    JUMPOUT(0x297490320);
  }

  _Unwind_Resume(a1);
}

void sub_29748FB64(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748FB70(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x29748FB78);
  }

  _Unwind_Resume(a1);
}

void sub_29748FB84(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x29748FB8CLL);
  }

  _Unwind_Resume(a1);
}

void sub_29748FB9C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::~auto_buffer(&STACK[0x6A0]);
    boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>::~slot(&STACK[0x620]);
    ctu::DispatchSlot<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>::~DispatchSlot(&STACK[0x610]);
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748FBC4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x29748FBCCLL);
  }

  _Unwind_Resume(a1);
}

void sub_29748FBF8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x29748FC00);
  }

  _Unwind_Resume(a1);
}

void sub_29748FC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, std::__shared_weak_count *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, std::__shared_weak_count *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, std::__shared_weak_count *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, std::__shared_weak_count *a62, uint64_t a63)
{
  boost::signals2::connection::~connection(&a19);
  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
    v70 = a34;
    if (!a34)
    {
LABEL_3:
      v71 = a41;
      if (!a41)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v70 = a34;
    if (!a34)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v70);
  v71 = a41;
  if (!a41)
  {
LABEL_4:
    v72 = a48;
    if (!a48)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  std::__shared_weak_count::__release_weak(v71);
  v72 = a48;
  if (!a48)
  {
LABEL_5:
    v73 = a55;
    if (!a55)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  std::__shared_weak_count::__release_weak(v72);
  v73 = a55;
  if (!a55)
  {
LABEL_6:
    v74 = a62;
    if (!a62)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  std::__shared_weak_count::__release_weak(v73);
  v74 = a62;
  if (!a62)
  {
LABEL_7:
    v75 = a69;
    if (!a69)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  std::__shared_weak_count::__release_weak(v74);
  v75 = a69;
  if (!a69)
  {
LABEL_8:
    v76 = STACK[0x218];
    if (!STACK[0x218])
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  std::__shared_weak_count::__release_weak(v75);
  v76 = STACK[0x218];
  if (!STACK[0x218])
  {
LABEL_9:
    v77 = STACK[0x250];
    if (!STACK[0x250])
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  std::__shared_weak_count::__release_weak(v76);
  v77 = STACK[0x250];
  if (!STACK[0x250])
  {
LABEL_10:
    v78 = STACK[0x288];
    if (!STACK[0x288])
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  std::__shared_weak_count::__release_weak(v77);
  v78 = STACK[0x288];
  if (!STACK[0x288])
  {
LABEL_11:
    v79 = STACK[0x2C0];
    if (!STACK[0x2C0])
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  std::__shared_weak_count::__release_weak(v78);
  v79 = STACK[0x2C0];
  if (!STACK[0x2C0])
  {
LABEL_12:
    v80 = STACK[0x2F8];
    if (!STACK[0x2F8])
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  std::__shared_weak_count::__release_weak(v79);
  v80 = STACK[0x2F8];
  if (!STACK[0x2F8])
  {
LABEL_13:
    v81 = STACK[0x330];
    if (!STACK[0x330])
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  std::__shared_weak_count::__release_weak(v80);
  v81 = STACK[0x330];
  if (!STACK[0x330])
  {
LABEL_14:
    v82 = STACK[0x368];
    if (!STACK[0x368])
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  std::__shared_weak_count::__release_weak(v81);
  v82 = STACK[0x368];
  if (!STACK[0x368])
  {
LABEL_15:
    v83 = STACK[0x3A0];
    if (!STACK[0x3A0])
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  std::__shared_weak_count::__release_weak(v82);
  v83 = STACK[0x3A0];
  if (!STACK[0x3A0])
  {
LABEL_16:
    v84 = STACK[0x3D8];
    if (!STACK[0x3D8])
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  std::__shared_weak_count::__release_weak(v83);
  v84 = STACK[0x3D8];
  if (!STACK[0x3D8])
  {
LABEL_17:
    v85 = STACK[0x410];
    if (!STACK[0x410])
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  std::__shared_weak_count::__release_weak(v84);
  v85 = STACK[0x410];
  if (!STACK[0x410])
  {
LABEL_18:
    v86 = STACK[0x448];
    if (!STACK[0x448])
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  std::__shared_weak_count::__release_weak(v85);
  v86 = STACK[0x448];
  if (!STACK[0x448])
  {
LABEL_19:
    v87 = STACK[0x480];
    if (!STACK[0x480])
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  std::__shared_weak_count::__release_weak(v86);
  v87 = STACK[0x480];
  if (!STACK[0x480])
  {
LABEL_20:
    v88 = STACK[0x4B8];
    if (!STACK[0x4B8])
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  std::__shared_weak_count::__release_weak(v87);
  v88 = STACK[0x4B8];
  if (!STACK[0x4B8])
  {
LABEL_21:
    v89 = STACK[0x4F0];
    if (!STACK[0x4F0])
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  std::__shared_weak_count::__release_weak(v88);
  v89 = STACK[0x4F0];
  if (!STACK[0x4F0])
  {
LABEL_22:
    v90 = STACK[0x528];
    if (!STACK[0x528])
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  std::__shared_weak_count::__release_weak(v89);
  v90 = STACK[0x528];
  if (!STACK[0x528])
  {
LABEL_23:
    v91 = STACK[0x560];
    if (!STACK[0x560])
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_49:
  std::__shared_weak_count::__release_weak(v90);
  v91 = STACK[0x560];
  if (!STACK[0x560])
  {
LABEL_24:
    v92 = STACK[0x598];
    if (!STACK[0x598])
    {
      goto LABEL_25;
    }

    goto LABEL_51;
  }

LABEL_50:
  std::__shared_weak_count::__release_weak(v91);
  v92 = STACK[0x598];
  if (!STACK[0x598])
  {
LABEL_25:
    v93 = STACK[0x5D0];
    if (!STACK[0x5D0])
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_51:
  std::__shared_weak_count::__release_weak(v92);
  v93 = STACK[0x5D0];
  if (!STACK[0x5D0])
  {
LABEL_27:
    std::__shared_weak_count::__release_weak(a18);
    _Unwind_Resume(a1);
  }

LABEL_26:
  std::__shared_weak_count::__release_weak(v93);
  goto LABEL_27;
}