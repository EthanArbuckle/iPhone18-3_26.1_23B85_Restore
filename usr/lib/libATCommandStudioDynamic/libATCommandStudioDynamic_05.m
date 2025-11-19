void dispatch::detail::group_notify<QMux::State::notifySyncSuccess_sync(void)::$_0>(dispatch_group_s *,dispatch_queue_s *,QMux::State::notifySyncSuccess_sync(void)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(uint64_t *__p)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = *__p;
  if (*(*__p + 208) == 2)
  {
    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = (v2 + 48);
      if (*(v2 + 71) < 0)
      {
        v8 = *v8;
      }

      *buf = 136315138;
      v12 = v8;
      _os_log_impl(&dword_2962DD000, v3, OS_LOG_TYPE_DEFAULT, "#I [%s] All pending clients started, QMux fully initialized", buf, 0xCu);
      v2 = *__p;
    }

    QMux::State::setMainState(v2, 3, v4, v5, v6, v7);
  }

  v9 = __p[1];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(__p);
  v10 = *MEMORY[0x29EDCA608];
}

void sub_29631E43C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<QMux::State::create(std::string const&,QMux::Name,std::weak_ptr<ATCSResetInvoker>,qmi::LogLevel,BOOL)::$_0,std::default_delete<QMux::State::create(std::string const&,QMux::Name,std::weak_ptr<ATCSResetInvoker>,qmi::LogLevel,BOOL)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN8dispatch19async_and_wait_implIRU13block_pointerFjvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

void ***___ZNK3ctu20SharedSynchronizableIN4QMux5StateEE20execute_wrapped_syncIZNKS1_16getQMIWakeReasonEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS6__block_invoke@<X0>(void ***result@<X0>, void *a2@<X8>)
{
  v3 = **result[5];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v5 = v3[39];
  v4 = v3[40];
  v6 = v4 - v5;
  if (v4 != v5)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v7 = operator new(v4 - v5);
    *a2 = v7;
    v8 = &v7[v6];
    a2[2] = &v7[v6];
    result = memcpy(v7, v5, v6);
    a2[1] = v8;
  }

  a2[3] = v3[42];
  return result;
}

double ___ZN8dispatch9sync_implIRU13block_pointerF13QMIWakeReasonvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS5_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v6);
  v2 = *(a1 + 32);
  v3 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v3;
    operator delete(v3);
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
  }

  result = *&v6;
  *v2 = v6;
  v5 = v8;
  *(v2 + 16) = v7;
  *(v2 + 24) = v5;
  return result;
}

double ___ZN8dispatch19async_and_wait_implIRU13block_pointerF13QMIWakeReasonvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS5_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v6);
  v2 = *(a1 + 32);
  v3 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v3;
    operator delete(v3);
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
  }

  result = *&v6;
  *v2 = v6;
  v5 = v8;
  *(v2 + 16) = v7;
  *(v2 + 24) = v5;
  return result;
}

uint64_t ___ZN8dispatch19async_and_wait_implIRU13block_pointerFivEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<QMux::State>::execute_wrapped<QMux::State::invokeReset(std::string)::$_0>(QMux::State::invokeReset(std::string)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<QMux::State::invokeReset(std::string)::$_0,std::default_delete<QMux::State::invokeReset(std::string)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  QMux::State::invokeReset_sync(**a1, (*a1 + 8));
  if (*(v2 + 31) < 0)
  {
    operator delete(v2[1]);
  }

  operator delete(v2);
  v3 = *(a1 + 16);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(a1);
}

void sub_29631E6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  std::unique_ptr<QMux::State::invokeReset(std::string)::$_0,std::default_delete<QMux::State::invokeReset(std::string)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>(qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&)::{lambda(void)#1},std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<QMux::State::invokeReset(std::string)::$_0,std::default_delete<QMux::State::invokeReset(std::string)::$_0>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void **std::unique_ptr<QMux::State::powerUp_sync(void)::$_0,std::default_delete<QMux::State::powerUp_sync(void)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[2];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v1[1];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::detail::group_notify<QMux::State::powerDown_sync(void)::$_0>(dispatch_group_s *,dispatch_queue_s *,QMux::State::powerDown_sync(void)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(uint64_t *__p)
{
  v2 = __p[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *__p;
      if (*__p)
      {
        if (*(v4 + 216) == __p[2])
        {
          v5 = *(v4 + 224);
          *(v4 + 224) = 0;
          if (v5)
          {
            v6 = v3;
            dispatch_group_leave(v5);
            dispatch_release(v5);
            v3 = v6;
          }
        }
      }

      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v7 = v3;
        (v3->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  v8 = __p[2];
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = __p[1];
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(__p);
}

void dispatch::detail::group_notify<QMux::State::powerDown_sync(void)::$_1>(dispatch_group_s *,dispatch_queue_s *,QMux::State::powerDown_sync(void)::$_1 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = a1[1];
  if (v2)
  {
    v3 = a1[3];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*a1 && *(*a1 + 216) == a1[2])
      {
        QMux::State::powerDown_configIndSet_sync(v3);
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = (v3 + 48);
          if (*(v3 + 71) < 0)
          {
            v7 = *v7;
          }

          LODWORD(buf) = 136315138;
          *(&buf + 4) = v7;
          _os_log_impl(&dword_2962DD000, v6, OS_LOG_TYPE_DEFAULT, "#I [%s] EXTRA:     -- wait for QMIControl to finish configuring IND sets", &buf, 0xCu);
        }

        v8 = dispatch_group_create();
        (*(**(v3 + 72) + 120))(*(v3 + 72), v8);
        v9 = *a1;
        v10 = a1[1];
        *&buf = *a1;
        *(&buf + 1) = v10;
        if (v10)
        {
          atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
        }

        v11 = a1[2];
        v19 = v3;
        v20 = v11;
        if (v11)
        {
          dispatch_retain(v11);
        }

        v12 = *(v3 + 24);
        v13 = operator new(0x20uLL);
        *v13 = v9;
        v13[1] = v10;
        v13[2] = v3;
        v13[3] = v11;
        dispatch_group_notify_f(v8, v12, v13, dispatch::detail::group_notify<QMux::State::powerDown_sync(void)::$_1::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,QMux::State::powerDown_sync(void)::$_1::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
        if (v8)
        {
          dispatch_release(v8);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  if (a1)
  {
    v14 = a1[2];
    if (v14)
    {
      dispatch_release(v14);
    }

    v15 = a1[1];
    if (v15)
    {
      std::__shared_weak_count::__release_weak(v15);
    }

    operator delete(a1);
  }

  v16 = *MEMORY[0x29EDCA608];
}

void sub_29631EA88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  QMux::State::powerDown_sync(void)::$_1::operator() const(void)::{lambda(void)#1}::~(va2);
  if (v2)
  {
    dispatch_release(v2);
    std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va1);
    std::unique_ptr<QMux::State::powerUp_sync(void)::$_0,std::default_delete<QMux::State::powerUp_sync(void)::$_0>>::~unique_ptr[abi:ne200100](va);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va1);
  std::unique_ptr<QMux::State::powerUp_sync(void)::$_0,std::default_delete<QMux::State::powerUp_sync(void)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t QMux::State::powerDown_sync(void)::$_1::operator() const(void)::{lambda(void)#1}::~(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void **std::unique_ptr<QMux::State::powerDown_sync(void)::$_1::operator() const(void)::{lambda(void)#1},std::default_delete<QMux::State::powerDown_sync(void)::$_1::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[3];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v1[1];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::detail::group_notify<QMux::State::powerDown_sync(void)::$_1::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,QMux::State::powerDown_sync(void)::$_1::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = a1[2];
  v4 = std::__shared_weak_count::lock(v2);
  if (!v4)
  {
    goto LABEL_7;
  }

  v10 = v4;
  if (*a1 && *(*a1 + 216) == a1[3])
  {
    QMux::State::powerDown_finish_sync(v3, v5, v6, v7, v8, v9);
  }

  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    v11 = a1;
    if (!a1)
    {
      return;
    }
  }

  else
  {
LABEL_7:
    v11 = a1;
    if (!a1)
    {
      return;
    }
  }

  v12 = v11[3];
  if (v12)
  {
    dispatch_release(v12);
  }

  v13 = v11[1];
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  operator delete(v11);
}

void sub_29631EC6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va1);
  std::unique_ptr<QMux::State::powerDown_sync(void)::$_1::operator() const(void)::{lambda(void)#1},std::default_delete<QMux::State::powerDown_sync(void)::$_1::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<QMux::State>::execute_wrapped<QMux::flush(dispatch_group_s *)::$_0>(QMux::flush(dispatch_group_s *)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<QMux::flush(dispatch_group_s *)::$_0,dispatch_queue_s *::default_delete<QMux::flush(dispatch_group_s *)::$_0>>)::{lambda(void *)#1}::__invoke(QMux::State ***a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[2];
  v11.gr_name = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  QMux::State::flush_sync(v2, &v11);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = v1[2];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = v1[2];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  v6 = v1[1];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    operator delete(v1);
    v7 = a1;
    if (!a1)
    {
      return;
    }
  }

  else
  {
    operator delete(v1);
    v7 = a1;
    if (!a1)
    {
      return;
    }
  }

  v8 = v7[2];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v9 = v7;
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    v7 = v9;
  }

  operator delete(v7);
}

void sub_29631EE10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11)
{
  if (v11)
  {
    dispatch_release(v11);
  }

  std::unique_ptr<QMux::flush(dispatch_group_s *)::$_0,std::default_delete<QMux::flush(dispatch_group_s *)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>(qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&)::{lambda(void)#1},std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<QMux::flush(dispatch_group_s *)::$_0,std::default_delete<QMux::flush(dispatch_group_s *)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[2];
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = v1[2];
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    v5 = v1[1];
    if (v5)
    {
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<QMux::State>::execute_wrapped<QMux::add(std::shared_ptr<qmi::QMuxClientIface>)::$_0>(QMux::add(std::shared_ptr<qmi::QMuxClientIface>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<QMux::add(std::shared_ptr<qmi::QMuxClientIface>)::$_0,std::default_delete<QMux::add(std::shared_ptr<qmi::QMuxClientIface>)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  __p = *a1;
  v1 = *(**a1 + 72);
  v2 = __p[3];
  v10 = __p[2];
  v11 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  QMIControl::add_sync(v1, &v10);
  v3 = v11;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  if (__p)
  {
    v4 = __p[3];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = __p[1];
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(__p);
  }

  v6 = a1;
  if (a1)
  {
    v7 = a1[2];
    if (v7)
    {
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        v6 = a1;
      }
    }

    operator delete(v6);
  }
}

void sub_29631F078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, char a11)
{
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a11);
  std::unique_ptr<QMux::add(std::shared_ptr<qmi::QMuxClientIface>)::$_0,std::default_delete<QMux::add(std::shared_ptr<qmi::QMuxClientIface>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>(qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&)::{lambda(void)#1},std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<QMux::add(std::shared_ptr<qmi::QMuxClientIface>)::$_0,std::default_delete<QMux::add(std::shared_ptr<qmi::QMuxClientIface>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[3];
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v2[1];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
  }

  return a1;
}

void dispatch::async<void ctu::SharedSynchronizable<QMux::State>::execute_wrapped<QMux::remove(std::shared_ptr<qmi::QMuxClientIface>)::$_0>(QMux::remove(std::shared_ptr<qmi::QMuxClientIface>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<QMux::remove(std::shared_ptr<qmi::QMuxClientIface>)::$_0,std::default_delete<QMux::remove(std::shared_ptr<qmi::QMuxClientIface>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v1 = *a1;
  QMux::State::remove_sync(**a1, *a1 + 2);
  v2 = v1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = v1[1];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    operator delete(v1);
    v4 = a1;
    if (!a1)
    {
      return;
    }
  }

  else
  {
    operator delete(v1);
    v4 = a1;
    if (!a1)
    {
      return;
    }
  }

  v5 = v4[2];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v4;
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v4 = v6;
  }

  operator delete(v4);
}

void sub_29631F2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<QMux::add(std::shared_ptr<qmi::QMuxClientIface>)::$_0,std::default_delete<QMux::add(std::shared_ptr<qmi::QMuxClientIface>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>(qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&)::{lambda(void)#1},std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<QMux::State>::execute_wrapped<QMux::restart(void)::$_0>(QMux::restart(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<QMux::restart(void)::$_0,dispatch_queue_s *::default_delete<QMux::restart(void)::$_0>>)::{lambda(void *)#1}::__invoke(QMux::State ***a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, const char *a7)
{
  v7 = *a1;
  QMux::State::restart_sync(**a1, a2, a3, a4, a5, a6, a7);
  v8 = v7[1];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    operator delete(v7);
    v9 = a1;
    if (!a1)
    {
      return;
    }
  }

  else
  {
    operator delete(v7);
    v9 = a1;
    if (!a1)
    {
      return;
    }
  }

  v10 = v9[2];
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v11 = v9;
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    v9 = v11;
  }

  operator delete(v9);
}

void sub_29631F444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<QMux::State::create(std::string const&,QMux::Name,std::weak_ptr<ATCSResetInvoker>,qmi::LogLevel,BOOL)::$_0,std::default_delete<QMux::State::create(std::string const&,QMux::Name,std::weak_ptr<ATCSResetInvoker>,qmi::LogLevel,BOOL)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>(qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&)::{lambda(void)#1},std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<QMux::State>::execute_wrapped<QMux::stop(void)::$_0>(QMux::stop(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<QMux::stop(void)::$_0,dispatch_queue_s *::default_delete<QMux::stop(void)::$_0>>)::{lambda(void *)#1}::__invoke(QMux::State ***a1)
{
  v1 = *a1;
  QMux::State::stop_sync(**a1);
  v2 = v1[1];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    operator delete(v1);
    v3 = a1;
    if (!a1)
    {
      return;
    }
  }

  else
  {
    operator delete(v1);
    v3 = a1;
    if (!a1)
    {
      return;
    }
  }

  v4 = v3[2];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v5 = v3;
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v3 = v5;
  }

  operator delete(v3);
}

void sub_29631F598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<QMux::State::create(std::string const&,QMux::Name,std::weak_ptr<ATCSResetInvoker>,qmi::LogLevel,BOOL)::$_0,std::default_delete<QMux::State::create(std::string const&,QMux::Name,std::weak_ptr<ATCSResetInvoker>,qmi::LogLevel,BOOL)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>(qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&)::{lambda(void)#1},std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<QMux::State>::execute_wrapped<QMux::start(void)::$_0>(QMux::start(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<QMux::start(void)::$_0,dispatch_queue_s *::default_delete<QMux::start(void)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, const char *a7)
{
  v7 = *a1;
  v8 = **a1;
  v9 = *(v8 + 208);
  switch(v9)
  {
    case 5:
      _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x26E, "false", "is not", "true", "Should never start() a QMux that is being destroyed!", a7);
      break;
    case 1:
      goto LABEL_5;
    case 0:
      QMux::State::setMainState(*v7, 1, a3, a4, a5, a6);
LABEL_5:
      QMIControl::sendSync_sync(*(v8 + 72));
      break;
  }

  v10 = v7[1];
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    operator delete(v7);
    v11 = a1;
    if (!a1)
    {
      return;
    }
  }

  else
  {
    operator delete(v7);
    v11 = a1;
    if (!a1)
    {
      return;
    }
  }

  v12 = v11[2];
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = v11;
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
    v11 = v13;
  }

  operator delete(v11);
}

void sub_29631F754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<QMux::State::create(std::string const&,QMux::Name,std::weak_ptr<ATCSResetInvoker>,qmi::LogLevel,BOOL)::$_0,std::default_delete<QMux::State::create(std::string const&,QMux::Name,std::weak_ptr<ATCSResetInvoker>,qmi::LogLevel,BOOL)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>(qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&)::{lambda(void)#1},std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t ___ZN8dispatch19async_and_wait_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke_0(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<QMux::State>::execute_wrapped<QMux::dumpState(void)::$_0>(QMux::dumpState(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<QMux::dumpState(void)::$_0,dispatch_queue_s *::default_delete<QMux::dumpState(void)::$_0>>)::{lambda(void *)#1}::__invoke(QMux::State ***a1)
{
  v1 = *a1;
  QMux::State::dumpState_sync(**a1);
  v2 = v1[1];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    operator delete(v1);
    v3 = a1;
    if (!a1)
    {
      return;
    }
  }

  else
  {
    operator delete(v1);
    v3 = a1;
    if (!a1)
    {
      return;
    }
  }

  v4 = v3[2];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v5 = v3;
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v3 = v5;
  }

  operator delete(v3);
}

void sub_29631F900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<QMux::State::create(std::string const&,QMux::Name,std::weak_ptr<ATCSResetInvoker>,qmi::LogLevel,BOOL)::$_0,std::default_delete<QMux::State::create(std::string const&,QMux::Name,std::weak_ptr<ATCSResetInvoker>,qmi::LogLevel,BOOL)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>(qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&)::{lambda(void)#1},std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__13setINS1_4pairIKN3qmi11ServiceTypeEKtEENS1_4lessIS8_EENS1_9allocatorIS8_EEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v6);
  v2 = *(a1 + 32);
  v3 = v2 + 8;
  std::__tree<std::pair<qmi::ServiceType const,unsigned short const>>::destroy(*(v2 + 8));
  v4 = v8;
  *v2 = v6;
  v5 = v7;
  *(v2 + 8) = v7;
  *(v2 + 16) = v4;
  if (v4)
  {
    v5[2] = v3;
    v6 = &v7;
    v7 = 0;
    v8 = 0;
    std::__tree<std::pair<qmi::ServiceType const,unsigned short const>>::destroy(0);
  }

  else
  {
    *v2 = v3;
    std::__tree<std::pair<qmi::ServiceType const,unsigned short const>>::destroy(v5);
  }
}

void QMIServiceMsg::QMIServiceMsg(QMIServiceMsg *this, __int16 a2)
{
  *(this + 2) = 0;
  *this = &unk_2A1D49040;
  *(this + 6) = a2;
  *(this + 14) = 0;
  *(this + 30) = 0;
  *(this + 22) = 0;
  *(this + 19) = 0;
  *(this + 10) = 1;
  *(this + 22) = -1;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
}

{
  *(this + 2) = 0;
  *this = &unk_2A1D49040;
  *(this + 6) = a2;
  *(this + 14) = 0;
  *(this + 30) = 0;
  *(this + 22) = 0;
  *(this + 19) = 0;
  *(this + 10) = 1;
  *(this + 22) = -1;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
}

uint64_t QMIServiceMsg::setErrorValues(uint64_t this)
{
  v1 = this;
  v2 = *(this + 16);
  v3 = *(this + 24);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 0x40000000;
  v8 = ___ZNK13QMIServiceMsg6getTlvEh_block_invoke;
  v9 = &__block_descriptor_tmp_11_0;
  v10 = 2;
  if (v2 != v3)
  {
    while (1)
    {
      this = (v8)(v7, *v2);
      if (this)
      {
        break;
      }

      if (++v2 == v3)
      {
        v2 = v3;
        break;
      }
    }

    v3 = *(v1 + 24);
  }

  if (v2 == v3 || (v4 = *v2, *(v4 + 16) = 0, *(v4 + 2) != 4))
  {
    *(v1 + 40) = 1;
    *(v1 + 44) = 3;
  }

  else
  {
    *(v1 + 40) = 0;
    v5 = *(v4 + 8);
    if (*v5)
    {
      v6 = v5[1];
      *(v1 + 44) = v6;
      if (!v6)
      {
        *(v1 + 40) = 1;
        *(v1 + 44) = 4;
      }
    }

    else
    {
      *(v1 + 44) = 0;
    }
  }

  return this;
}

double QMIServiceMsg::QMIServiceMsg(uint64_t a1, __int16 a2, int a3, __int16 a4)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2A1D49040;
  *(a1 + 12) = a2;
  *(a1 + 14) = 0;
  *(a1 + 30) = 0;
  *(a1 + 22) = 0;
  *(a1 + 38) = 0;
  *(a1 + 40) = a3;
  *(a1 + 44) = a4;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  return result;
}

{
  *(a1 + 8) = 0;
  *a1 = &unk_2A1D49040;
  *(a1 + 12) = a2;
  *(a1 + 14) = 0;
  *(a1 + 30) = 0;
  *(a1 + 22) = 0;
  *(a1 + 38) = 0;
  *(a1 + 40) = a3;
  *(a1 + 44) = a4;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  return result;
}

uint64_t QMIServiceMsg::QMIServiceMsg(uint64_t a1, __int128 *a2, int a3)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2A1D49040;
  *(a1 + 28) = 0u;
  *(a1 + 12) = 0u;
  *(a1 + 44) = -1;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *a2;
  v7 = v5 - *a2;
  if (v7 < 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v9 = operator new(v5 - *a2);
  *(a1 + 56) = v9;
  *(a1 + 64) = v9;
  *(a1 + 72) = &v9[v7];
  memcpy(v9, v6, v7);
  *(a1 + 64) = &v9[v7];
  *(a1 + 80) = a3;
  *(a1 + 12) = *&v9[a3];
  *(a1 + 14) = v7 - a3 - 4;
  return a1;
}

void sub_29631FD24(_Unwind_Exception *a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    *(v1 + 64) = v3;
    operator delete(v3);
    v4 = *(v1 + 16);
    if (!v4)
    {
LABEL_3:
      ATCSCounted::~ATCSCounted(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v4 = *(v1 + 16);
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 24) = v4;
  operator delete(v4);
  ATCSCounted::~ATCSCounted(v1);
  _Unwind_Resume(a1);
}

double QMIServiceMsg::create(QMIServiceMsg *this)
{
  v1 = this;
  v2 = operator new(0x58uLL);
  *(v2 + 2) = 0;
  *v2 = &unk_2A1D49040;
  *(v2 + 6) = v1;
  *(v2 + 14) = 0;
  *(v2 + 30) = 0;
  *(v2 + 22) = 0;
  *(v2 + 19) = 0;
  *(v2 + 10) = 1;
  *(v2 + 22) = -1;
  result = 0.0;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  return result;
}

QMIServiceMsg *QMIServiceMsg::create(QMIServiceMsg *this, char *a2)
{
  v4 = operator new(0x58uLL);
  QMIServiceMsg::QMIServiceMsg(v4, this, a2, 1);
  return v4;
}

double QMIServiceMsg::create(__int16 a1, int a2, __int16 a3)
{
  v6 = operator new(0x58uLL);
  *(v6 + 2) = 0;
  *v6 = &unk_2A1D49040;
  *(v6 + 6) = a1;
  *(v6 + 14) = 0;
  *(v6 + 30) = 0;
  *(v6 + 22) = 0;
  *(v6 + 19) = 0;
  *(v6 + 10) = a2;
  *(v6 + 22) = a3;
  result = 0.0;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  return result;
}

QMIServiceMsg *QMIServiceMsg::createIndication(QMIServiceMsg *this, char *a2)
{
  v4 = operator new(0x58uLL);
  QMIServiceMsg::QMIServiceMsg(v4, this, a2, 0);
  return v4;
}

QMIServiceMsg *QMIServiceMsg::createRequest(QMIServiceMsg *this, char *a2)
{
  v4 = operator new(0x58uLL);
  QMIServiceMsg::QMIServiceMsg(v4, this, a2, 0);
  return v4;
}

double QMIServiceMsg::create(QMIServiceMsg *this, const qmi::MessageBase *a2)
{
  v3 = *(this + 1);
  if (v3)
  {
    v4 = *v3;
    v5 = *(v3 + 8) - *v3;
    if (v5 < 0xFFFF)
    {
      v6 = operator new(0x58uLL);
      QMIServiceMsg::QMIServiceMsg(v6, v4, v5, 1);
      return result;
    }
  }

  v8 = *(this + 1);
  if (qmi::isInternalError())
  {
    if (v8 > 65541)
    {
      switch(v8)
      {
        case 65542:
          LOWORD(v8) = 3;
          break;
        case 65552:
          LOWORD(v8) = 4;
          break;
        case 65553:
          LOWORD(v8) = 5;
          break;
      }

      goto LABEL_19;
    }

    if (v8 == 65537)
    {
      LOWORD(v8) = 0;
LABEL_19:
      v9 = 1;
      goto LABEL_20;
    }

    if (v8 != 65538)
    {
      if (v8 == 65539)
      {
        LOWORD(v8) = 2;
      }

      goto LABEL_19;
    }

    v9 = 1;
    LOWORD(v8) = 1;
  }

  else
  {
    v9 = 0;
  }

LABEL_20:
  v10 = *this;
  v11 = operator new(0x58uLL);
  *(v11 + 2) = 0;
  *v11 = &unk_2A1D49040;
  *(v11 + 6) = v10;
  *(v11 + 14) = 0;
  *(v11 + 30) = 0;
  *(v11 + 22) = 0;
  *(v11 + 19) = 0;
  *(v11 + 10) = v9;
  *(v11 + 22) = v8;
  result = 0.0;
  *(v11 + 3) = 0u;
  *(v11 + 4) = 0u;
  return result;
}

uint64_t QMIServiceMsg::getTlv(QMIServiceMsg *this)
{
  v1 = *(this + 6);
  if (v1 == *(this + 3))
  {
    return 0;
  }

  v2 = *v1;
  *(this + 6) = v1 + 1;
  return v2;
}

uint64_t QMIServiceMsg::getTlv(QMIServiceMsg *this, char a2)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 0x40000000;
  v7 = ___ZNK13QMIServiceMsg6getTlvEh_block_invoke;
  v8 = &__block_descriptor_tmp_11_0;
  v9 = a2;
  if (v2 != v3)
  {
    while (((v7)(v6, *v2) & 1) == 0)
    {
      if (++v2 == v3)
      {
        v2 = v3;
        break;
      }
    }

    v3 = *(this + 3);
  }

  if (v2 == v3)
  {
    return 0;
  }

  result = *v2;
  *(*v2 + 16) = 0;
  return result;
}

{
  v2 = *(this + 2);
  v3 = *(this + 3);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 0x40000000;
  v7 = ___ZNK13QMIServiceMsg6getTlvEh_block_invoke;
  v8 = &__block_descriptor_tmp_11_0;
  v9 = a2;
  if (v2 != v3)
  {
    while (((v7)(v6, *v2) & 1) == 0)
    {
      if (++v2 == v3)
      {
        v2 = v3;
        break;
      }
    }

    v3 = *(this + 3);
  }

  if (v2 == v3)
  {
    return 0;
  }

  result = *v2;
  *(*v2 + 16) = 0;
  return result;
}

void QMIServiceMsg::addTlv(QMIServiceMsg *this, Tlv *a2)
{
  if (a2)
  {
    v5 = *(this + 3);
    v4 = *(this + 4);
    if (v5 < v4)
    {
LABEL_3:
      *v5 = a2;
      v6 = v5 + 8;
      goto LABEL_17;
    }
  }

  else
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMIServiceMsg.cpp", 0x12C, "value", "!=", "NULL", 0, 0);
    v5 = *(this + 3);
    v4 = *(this + 4);
    if (v5 < v4)
    {
      goto LABEL_3;
    }
  }

  v7 = *(this + 2);
  v8 = v5 - v7;
  v9 = (v5 - v7) >> 3;
  v10 = v9 + 1;
  if ((v9 + 1) >> 61)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v11 = v4 - v7;
  if (v11 >> 2 > v10)
  {
    v10 = v11 >> 2;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    v12 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (v12 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = operator new(8 * v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = &v13[8 * v9];
  *v14 = a2;
  v6 = v14 + 8;
  memcpy(v13, v7, v8);
  *(this + 2) = v13;
  *(this + 3) = v6;
  *(this + 4) = &v13[8 * v12];
  if (v7)
  {
    operator delete(v7);
  }

LABEL_17:
  *(this + 3) = v6;
  *(this + 7) += *(a2 + 1) + 3;
  *(this + 6) = *(this + 2);
}

void QMIServiceMsg::createTlv(QMIServiceMsg *this@<X0>, char a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = operator new(0x18uLL);
  *v8 = a2;
  v8[1] = a3;
  v9 = operator new[](a3);
  *(v8 + 1) = v9;
  v8[8] = 0;
  bzero(v9, a3);
  QMIServiceMsg::addTlv(this, v8);
  *a4 = v8;
  *(a4 + 8) = 0;
}

_BYTE **QMIServiceMsg::encodeWord(_BYTE **this, unsigned __int8 **a2)
{
  **this = a2;
  v2 = (*this)++;
  v2[1] = BYTE1(a2);
  ++*this;
  return this;
}

void QMIServiceMsg::serialize(QMIServiceMsg *this, char *a2, uint64_t a3)
{
  if (!a2)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMIServiceMsg.cpp", 0x178, "buffer", "!=", "NULL", 0, 0);
  }

  *a2 = *(this + 6);
  *(a2 + 1) = *(this + 7);
  v6 = a2 + 4;
  v7 = *(this + 2);
  for (i = *(this + 3); v7 != i; v6 = &v11[v10])
  {
    v9 = *v7++;
    v10 = *(v9 + 1);
    *v6 = *v9;
    *(v6 + 1) = v10;
    v11 = v6 + 3;
    memcpy(v6 + 3, *(v9 + 1), v10);
  }

  if (v6 > &a2[a3])
  {

    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMIServiceMsg.cpp", 0x192, "buffer", "<=", "(uint8_t*)bufferPtr + bufferLen", v6, &a2[a3]);
  }
}

uint64_t QMIServiceMsg::getNewError(QMIServiceMsg *this)
{
  v1 = *(this + 10);
  result = *(this + 22);
  if (v1 == 1)
  {
    if (result < 6)
    {
      return dword_296336CF4[result];
    }

    return result | 0xDEAD0000;
  }

  if (v1)
  {
    return result | 0xDEAD0000;
  }

  return result;
}

uint64_t QMIServiceMsg::getErrorString(QMIServiceMsg *this)
{
  v1 = *(this + 10);
  v2 = *(this + 22);
  if (v1 == 1 && v2 < 6)
  {
    v4 = dword_296336CF4[v2];
  }

  return qmi::asString();
}

void _ATCSException::_ATCSException(_ATCSException *this, const char *a2, int a3, const char *a4, ...)
{
  va_start(va, a4);
  *this = &unk_2A1D49098;
  _ATCSException::constructCommon(this, a2, a3, a4, va);
}

{
  va_start(va, a4);
  *this = &unk_2A1D49098;
  _ATCSException::constructCommon(this, a2, a3, a4, va);
}

uint64_t _ATCSException::constructCommon(_ATCSException *this, const char *a2, int a3, const char *a4, va_list a5)
{
  {
    v15 = this;
    v16 = a2;
    a2 = v16;
    v18 = v17;
    this = v15;
    if (v18)
    {
      _ATCSException::constructCommon(char const*,unsigned int,char const*,char *)::trailerLength = 1;
      this = v15;
      a2 = v16;
    }
  }

  v8 = _ATCSException::constructCommon(char const*,unsigned int,char const*,char *)::trailerLength;
  v9 = 512 - _ATCSException::constructCommon(char const*,unsigned int,char const*,char *)::trailerLength;
  v10 = this + 8;
  result = snprintf(this + 8, 512 - _ATCSException::constructCommon(char const*,unsigned int,char const*,char *)::trailerLength, "Exception at %s:%u: \n\t", a2, a3);
  if ((result & 0x80000000) == 0)
  {
    if (v9 <= result)
    {
      v12 = 511 - v8;
    }

    else
    {
      v12 = result;
    }

    v13 = v9 - v12;
    if (v9 - v12 >= 2)
    {
      result = vsnprintf(&v10[v12], v9 - v12, a4, a5);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v14 = result;
      if (v13 <= result)
      {
        v14 = v13 - 1;
      }

      v13 -= v14;
      v12 += v14;
    }

    return snprintf(&v10[v12], _ATCSException::constructCommon(char const*,unsigned int,char const*,char *)::trailerLength + v13, "%s", "\n");
  }

  return result;
}

void _ATCSException::append(_ATCSException *this, const char *a2, va_list a3)
{
  v5 = this + 8;
  v6 = strnlen(this + 8, 0x200uLL);
  if ((atomic_load_explicit(&qword_2A1899A60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1899A60))
  {
    _MergedGlobals = 1;
    __cxa_guard_release(&qword_2A1899A60);
  }

  if ((atomic_load_explicit(&qword_2A1899A70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1899A70))
  {
    qword_2A1899A68 = 1;
    __cxa_guard_release(&qword_2A1899A70);
  }

  if (512 - v6 > qword_2A1899A68 + _MergedGlobals)
  {
    v7 = 512 - (v6 + _MergedGlobals + qword_2A1899A68);
    v8 = snprintf(&v5[v6], v7, "%s", "\t");
    if ((v8 & 0x80000000) == 0)
    {
      v9 = v7 - v8;
      v10 = v6 + v8;
      if (v9 >= 2)
      {
        v11 = vsnprintf(&v5[v10], v9, a2, a3);
        if ((v11 & 0x80000000) != 0)
        {
          return;
        }

        v12 = v11;
        if (v9 <= v11)
        {
          v12 = v9 - 1;
        }

        v9 -= v12;
        v10 += v12;
      }

      snprintf(&v5[v10], qword_2A1899A68 + v9, "%s", "\n");
    }
  }
}

void _ATCSException::_ATCSException(_ATCSException *this, const _ATCSException *a2)
{
  *this = &unk_2A1D49098;
  strncpy(this + 8, a2 + 8, 0x200uLL);
}

{
  *this = &unk_2A1D49098;
  strncpy(this + 8, a2 + 8, 0x200uLL);
}

void _ATCSException::triggerAssertion(_ATCSException *this, const char *a2, const char *a3, const char *a4, const char *a5, const char *a6)
{
  v9 = a2;
  __b[65] = *MEMORY[0x29EDCA608];
  memset(__b, 170, 0x208uLL);
  _ATCSException::_ATCSException(__b, this, v9, "Assertion failure %s %s %s", a3, a4, a5);
  pthread_mutex_lock(&ctu::Singleton<ATCSExceptionHandlerGlobal,ATCSExceptionHandlerGlobal,ctu::PthreadMutexGuardPolicy<ATCSExceptionHandlerGlobal>>::sInstance);
  if (qword_2A18999F8)
  {
    goto LABEL_2;
  }

  v12 = operator new(8uLL);
  *v12 = 0;
  v11 = operator new(0x20uLL);
  v11->__vftable = &unk_2A1D490D8;
  v11->__shared_owners_ = 0;
  v11->__shared_weak_owners_ = 0;
  v11[1].__vftable = v12;
  *v12 = DefaultATCSExceptionHandler;
  v13 = off_2A1899A00;
  qword_2A18999F8 = v12;
  off_2A1899A00 = v11;
  if (v13)
  {
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

LABEL_2:
    v12 = qword_2A18999F8;
    v11 = off_2A1899A00;
    v15 = off_2A1899A00;
    if (!off_2A1899A00)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v15 = v11;
LABEL_8:
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_9:
  pthread_mutex_unlock(&ctu::Singleton<ATCSExceptionHandlerGlobal,ATCSExceptionHandlerGlobal,ctu::PthreadMutexGuardPolicy<ATCSExceptionHandlerGlobal>>::sInstance);
  (*v12)(__b);
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  std::exception::~exception(__b);
  v14 = *MEMORY[0x29EDCA608];
}

void sub_296320EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, std::exception a15)
{
  operator delete(v15);
  pthread_mutex_unlock(&ctu::Singleton<ATCSExceptionHandlerGlobal,ATCSExceptionHandlerGlobal,ctu::PthreadMutexGuardPolicy<ATCSExceptionHandlerGlobal>>::sInstance);
  std::exception::~exception(&a15);
  _Unwind_Resume(a1);
}

void _ATCSException::triggerAssertion(_ATCSException *this, const char *a2, const char *a3, const char *a4, const char *a5, const char *a6, const char *a7, ...)
{
  va_start(va, a7);
  v11 = a2;
  __b[65] = *MEMORY[0x29EDCA608];
  memset(__b, 170, 0x208uLL);
  _ATCSException::_ATCSException(__b, this, v11, "Assertion failure %s %s %s", a3, a4, a5);
  _ATCSException::append(__b, a6, va);
  pthread_mutex_lock(&ctu::Singleton<ATCSExceptionHandlerGlobal,ATCSExceptionHandlerGlobal,ctu::PthreadMutexGuardPolicy<ATCSExceptionHandlerGlobal>>::sInstance);
  if (qword_2A18999F8)
  {
    goto LABEL_2;
  }

  v14 = operator new(8uLL);
  *v14 = 0;
  v13 = operator new(0x20uLL);
  v13->__vftable = &unk_2A1D490D8;
  v13->__shared_owners_ = 0;
  v13->__shared_weak_owners_ = 0;
  v13[1].__vftable = v14;
  *v14 = DefaultATCSExceptionHandler;
  v15 = off_2A1899A00;
  qword_2A18999F8 = v14;
  off_2A1899A00 = v13;
  if (v15)
  {
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

LABEL_2:
    v14 = qword_2A18999F8;
    v13 = off_2A1899A00;
    v17 = off_2A1899A00;
    if (!off_2A1899A00)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v17 = v13;
LABEL_8:
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_9:
  pthread_mutex_unlock(&ctu::Singleton<ATCSExceptionHandlerGlobal,ATCSExceptionHandlerGlobal,ctu::PthreadMutexGuardPolicy<ATCSExceptionHandlerGlobal>>::sInstance);
  (*v14)(__b);
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  std::exception::~exception(__b);
  v16 = *MEMORY[0x29EDCA608];
}

void sub_296321114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, std::exception a15)
{
  operator delete(v15);
  pthread_mutex_unlock(&ctu::Singleton<ATCSExceptionHandlerGlobal,ATCSExceptionHandlerGlobal,ctu::PthreadMutexGuardPolicy<ATCSExceptionHandlerGlobal>>::sInstance);
  std::exception::~exception(&a15);
  _Unwind_Resume(a1);
}

void _ATCSException::triggerAssertion(_ATCSException *this, const char *a2, const char *a3, const char *a4, const char *a5, const char *a6, const void *a7, const char *a8, const char *a9, uint64_t a10, uint64_t a11, ...)
{
  v17 = a2;
  __b[65] = *MEMORY[0x29EDCA608];
  memset(__b, 170, 0x208uLL);
  _ATCSException::_ATCSException(__b, this, v17, "Assertion failure %s %s %s, left operand %p right operand %p", a3, a4, a5, a6, a7);
  _ATCSException::append(__b, a8, &a9);
  pthread_mutex_lock(&ctu::Singleton<ATCSExceptionHandlerGlobal,ATCSExceptionHandlerGlobal,ctu::PthreadMutexGuardPolicy<ATCSExceptionHandlerGlobal>>::sInstance);
  if (qword_2A18999F8)
  {
    goto LABEL_2;
  }

  v20 = operator new(8uLL);
  *v20 = 0;
  v19 = operator new(0x20uLL);
  v19->__vftable = &unk_2A1D490D8;
  v19->__shared_owners_ = 0;
  v19->__shared_weak_owners_ = 0;
  v19[1].__vftable = v20;
  *v20 = DefaultATCSExceptionHandler;
  v21 = off_2A1899A00;
  qword_2A18999F8 = v20;
  off_2A1899A00 = v19;
  if (v21)
  {
    if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
    }

LABEL_2:
    v20 = qword_2A18999F8;
    v19 = off_2A1899A00;
    v23 = off_2A1899A00;
    if (!off_2A1899A00)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v23 = v19;
LABEL_8:
  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_9:
  pthread_mutex_unlock(&ctu::Singleton<ATCSExceptionHandlerGlobal,ATCSExceptionHandlerGlobal,ctu::PthreadMutexGuardPolicy<ATCSExceptionHandlerGlobal>>::sInstance);
  (*v20)(__b);
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  std::exception::~exception(__b);
  v22 = *MEMORY[0x29EDCA608];
}

void sub_296321384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, std::exception a17)
{
  operator delete(v17);
  pthread_mutex_unlock(&ctu::Singleton<ATCSExceptionHandlerGlobal,ATCSExceptionHandlerGlobal,ctu::PthreadMutexGuardPolicy<ATCSExceptionHandlerGlobal>>::sInstance);
  std::exception::~exception(&a17);
  _Unwind_Resume(a1);
}

void _ATCSException::setExceptionHandler(_ATCSException *this, void (*a2)(_ATCSException *))
{
  pthread_mutex_lock(&ctu::Singleton<ATCSExceptionHandlerGlobal,ATCSExceptionHandlerGlobal,ctu::PthreadMutexGuardPolicy<ATCSExceptionHandlerGlobal>>::sInstance);
  if (!qword_2A18999F8)
  {
    v4 = operator new(8uLL);
    v4->~__shared_weak_count = 0;
    v3 = operator new(0x20uLL);
    v3->__vftable = &unk_2A1D490D8;
    v3->__shared_owners_ = 0;
    v3->__shared_weak_owners_ = 0;
    v3[1].__vftable = v4;
    v4->~__shared_weak_count = DefaultATCSExceptionHandler;
    v6 = off_2A1899A00;
    qword_2A18999F8 = v4;
    off_2A1899A00 = v3;
    if (!v6)
    {
      goto LABEL_7;
    }

    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v4 = qword_2A18999F8;
  v3 = off_2A1899A00;
  if (!off_2A1899A00)
  {
    v5 = 1;
    goto LABEL_8;
  }

LABEL_7:
  v5 = 0;
  atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_8:
  pthread_mutex_unlock(&ctu::Singleton<ATCSExceptionHandlerGlobal,ATCSExceptionHandlerGlobal,ctu::PthreadMutexGuardPolicy<ATCSExceptionHandlerGlobal>>::sInstance);
  if (this)
  {
    v7 = this;
  }

  else
  {
    v7 = DefaultATCSExceptionHandler;
  }

  v4->~__shared_weak_count = v7;
  if ((v5 & 1) == 0 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_29632156C(_Unwind_Exception *a1)
{
  operator delete(v1);
  pthread_mutex_unlock(&ctu::Singleton<ATCSExceptionHandlerGlobal,ATCSExceptionHandlerGlobal,ctu::PthreadMutexGuardPolicy<ATCSExceptionHandlerGlobal>>::sInstance);
  _Unwind_Resume(a1);
}

void _ATCSException::~_ATCSException(std::exception *this)
{
  std::exception::~exception(this);

  operator delete(v1);
}

uint64_t ctu::PthreadMutexGuardPolicy<ATCSExceptionHandlerGlobal>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void DefaultATCSExceptionHandler(_ATCSException *a1)
{
  exception = __cxa_allocate_exception(0x208uLL);
  _ATCSException::_ATCSException(exception, a1);
}

void std::__shared_ptr_pointer<ATCSExceptionHandlerGlobal *,std::shared_ptr<ATCSExceptionHandlerGlobal>::__shared_ptr_default_delete<ATCSExceptionHandlerGlobal,ATCSExceptionHandlerGlobal>,std::allocator<ATCSExceptionHandlerGlobal>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ATCSExceptionHandlerGlobal *,std::shared_ptr<ATCSExceptionHandlerGlobal>::__shared_ptr_default_delete<ATCSExceptionHandlerGlobal,ATCSExceptionHandlerGlobal>,std::allocator<ATCSExceptionHandlerGlobal>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<ATCSExceptionHandlerGlobal *,std::shared_ptr<ATCSExceptionHandlerGlobal>::__shared_ptr_default_delete<ATCSExceptionHandlerGlobal,ATCSExceptionHandlerGlobal>,std::allocator<ATCSExceptionHandlerGlobal>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000296336DA8)
  {
    if (((v2 & 0x8000000296336DA8 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000296336DA8))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000296336DA8 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t __cxx_global_var_init_0()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ATCSExceptionHandlerGlobal>::~PthreadMutexGuardPolicy, &ctu::Singleton<ATCSExceptionHandlerGlobal,ATCSExceptionHandlerGlobal,ctu::PthreadMutexGuardPolicy<ATCSExceptionHandlerGlobal>>::sInstance, &dword_2962DD000);
  }

  return result;
}

ssize_t ReadBuffer::readFromFD(ReadBuffer *this, int a2)
{
  v2 = *(this + 2);
  v3 = *(this + 3) + *(this + 4);
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = read(a2, (*this + v3), v2 - v3);
  v4 = v7;
  if (v7 < 0x80000000)
  {
    if (v7 <= 0)
    {
      return v4;
    }
  }

  else
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/IPCDriver/ATCSFileDescriptorIPCDriver.cpp", 0x54, "ret", "<=", "std::numeric_limits<int>::max()", v7, 0x7FFFFFFF);
  }

  *(this + 3) += v4;
  return v4;
}

void ReadBuffer::consume(ReadBuffer *this, char *a2)
{
  v2 = a2;
  v4 = *(this + 3);
  if (v4 < a2)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/IPCDriver/ATCSFileDescriptorIPCDriver.cpp", 0x60, "amount", "<=", "fSize", a2, v4);
    LODWORD(v4) = *(this + 3);
  }

  v5 = *(this + 4) + v2;
  v6 = (v4 - v2);
  *(this + 3) = v6;
  *(this + 4) = v5;
  if (v4 != v2)
  {
    if (v5 < *(this + 2) >> 1)
    {
      return;
    }

    memmove(*this, (*this + v5), v6);
  }

  *(this + 4) = 0;
}

ATCSFileDescriptorIPCDriverPrivate *ATCSFileDescriptorIPCDriver::create(ATCSFileDescriptorIPCDriver *this, int a2, int a3)
{
  v5 = this;
  v6 = operator new(0x140uLL);
  ATCSFileDescriptorIPCDriverPrivate::ATCSFileDescriptorIPCDriverPrivate(v6, v5, a2, a3);
  return v6;
}

void ATCSFileDescriptorIPCDriver::~ATCSFileDescriptorIPCDriver(pthread_cond_t **this)
{
  *this = &unk_2A1D49B88;
  pthread_cond_destroy(this[8]);
  free(this[8]);
  v2 = this[5];
  pthread_mutex_destroy(v2);
  if (v2)
  {
    operator delete(v2);
  }

  MEMORY[0x29C258F40](this + 4);
  v3 = this[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void ATCSFileDescriptorIPCDriverPrivate::ATCSFileDescriptorIPCDriverPrivate(ATCSFileDescriptorIPCDriverPrivate *this, char a2, int a3, int a4)
{
  ATCSThreadedIPCDriver::ATCSThreadedIPCDriver(this);
  *v8 = &unk_2A1D491D0;
  v9 = malloc(0x30uLL);
  *(this + 11) = v9;
  pthread_cond_init(v9, 0);
  *(this + 13) = 0;
  *(this + 12) = this + 104;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 14) = 0;
  *(this + 15) = this + 128;
  *(this + 9) = 0u;
  *(this + 68) = -1;
  *(this + 71) = 0;
  *(this + 288) = a2;
  *(this + 73) = a3;
  *(this + 74) = a4;
  *(this + 38) = 0;
  *(this + 156) = 0;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  v10 = pipe(this + 69);
  if (v10)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/IPCDriver/ATCSFileDescriptorIPCDriver.cpp", 0xF4, "ret", "==", "0", v10, 0);
  }

  v11 = *(this + 69);
  *(this + 68) = v11;
  if (__darwin_check_fd_set_overflow(v11, this + 144, 0))
  {
    *(this + ((v11 >> 3) & 0x1FFFFFFFFFFFFFFCLL) + 144) |= 1 << v11;
  }
}

void sub_296321BB0(_Unwind_Exception *a1)
{
  std::__tree<std::pair<qmi::ServiceType const,unsigned short const>>::destroy(*v4);
  std::__tree<std::pair<qmi::ServiceType const,unsigned short const>>::destroy(*v3);
  ATCSCondition::~ATCSCondition(v2);
  ATCSFileDescriptorIPCDriver::~ATCSFileDescriptorIPCDriver(v1);
  _Unwind_Resume(a1);
}

void ATCSFileDescriptorIPCDriverPrivate::~ATCSFileDescriptorIPCDriverPrivate(ATCSFileDescriptorIPCDriverPrivate *this)
{
  *this = &unk_2A1D491D0;
  ATCSThreadedIPCDriver::tearDownInternal(this);
  close(*(this + 69));
  close(*(this + 70));
  std::__tree<std::pair<qmi::ServiceType const,unsigned short const>>::destroy(*(this + 16));
  std::__tree<std::pair<qmi::ServiceType const,unsigned short const>>::destroy(*(this + 13));
  pthread_cond_destroy(*(this + 11));
  free(*(this + 11));
  *this = &unk_2A1D49B88;
  pthread_cond_destroy(*(this + 8));
  free(*(this + 8));
  v2 = *(this + 5);
  pthread_mutex_destroy(v2);
  if (v2)
  {
    operator delete(v2);
  }

  MEMORY[0x29C258F40](this + 32);
  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

{
  ATCSFileDescriptorIPCDriverPrivate::~ATCSFileDescriptorIPCDriverPrivate(this);

  operator delete(v1);
}

void ATCSFileDescriptorIPCDriverPrivate::writeWorkerMainLoop(uint64_t a1, int a2)
{
  v36 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  v5 = pthread_self();
  if (!pthread_equal(v5, *(v4 + 64)))
  {
    v6 = *(a1 + 40);
    v7 = pthread_self();
    v8 = pthread_equal(v7, *(v6 + 64)) != 0;
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/IPCDriver/ATCSFileDescriptorIPCDriver.cpp", 0x112, "fLock.isLocked()", "==", "true", v8, 1);
  }

  v9 = operator new[](*(a1 + 296));
  v31 = (a1 + 104);
  do
  {
LABEL_4:
    if (*(a1 + 313) != 1)
    {
      goto LABEL_6;
    }

LABEL_5:
    *(a1 + 313) = 0;
    (*(*a1 + 152))(a1, 1);
LABEL_6:
    while (1)
    {
      v10 = *(a1 + 284);
      if (v10)
      {
        break;
      }

      v11 = *(a1 + 40);
      v12 = pthread_self();
      v11[1].__sig = 0;
      pthread_cond_wait(*(a1 + 88), v11);
      v11[1].__sig = v12;
      if ((*(a1 + 80) & a2) != 0)
      {
        goto LABEL_35;
      }

      if (*(a1 + 313) == 1)
      {
        goto LABEL_5;
      }
    }

    *(a1 + 284) = 0;
    v13 = *(a1 + 96);
  }

  while (v13 == v31);
  while (1)
  {
    v14 = *(v13 + 8);
    v15 = v13[5];
    if (*(*(*v15 + 32))(v15) == 1)
    {
      break;
    }

LABEL_25:
    v26 = v13[1];
    if (v26)
    {
      do
      {
        v27 = v26;
        v26 = *v26;
      }

      while (v26);
    }

    else
    {
      do
      {
        v27 = v13[2];
        v28 = *v27 == v13;
        v13 = v27;
      }

      while (!v28);
    }

    if (v27 != v31)
    {
      v13 = v27;
      if (v10)
      {
        continue;
      }
    }

    goto LABEL_4;
  }

  --v10;
  while (1)
  {
    v16 = *(a1 + 40);
    pthread_self();
    v16[1].__sig = 0;
    pthread_mutex_unlock(v16);
    v17 = (*(*v15 + 24))(v15, v9, *(a1 + 296));
    v18 = *(a1 + 32);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v24 = (*(*v15 + 40))(v15);
      if (*(v24 + 23) >= 0)
      {
        v25 = v24;
      }

      else
      {
        v25 = *v24;
      }

      *buf = 134218242;
      v33 = v17;
      v34 = 2080;
      v35 = v25;
      _os_log_debug_impl(&dword_2962DD000, v18, OS_LOG_TYPE_DEBUG, "#D Got %zd from %s", buf, 0x16u);
    }

    v19 = *(a1 + 40);
    pthread_mutex_lock(v19);
    v19[1].__sig = pthread_self();
    if ((*(a1 + 80) & a2) != 0)
    {
      break;
    }

    if (v17 >= 1)
    {
      v20 = *(a1 + 40);
      pthread_self();
      v20[1].__sig = 0;
      pthread_mutex_unlock(v20);
      v21 = writeToCompletion(v14, v9, v17, *(a1 + 32));
      v22 = *(a1 + 40);
      pthread_mutex_lock(v22);
      v22[1].__sig = pthread_self();
      if (v21 < 0)
      {
        v23 = *(a1 + 32);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v33 = v21;
          v34 = 1024;
          LODWORD(v35) = v14;
          _os_log_error_impl(&dword_2962DD000, v23, OS_LOG_TYPE_ERROR, "Failed to write to completion, ret = %zd, fd = %d", buf, 0x12u);
        }
      }
    }

    if ((*(*(*v15 + 32))(v15) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v29 = *(a1 + 32);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_2962DD000, v29, OS_LOG_TYPE_DEBUG, "#D Stop requested", buf, 2u);
  }

LABEL_35:
  operator delete[](v9);
  v30 = *MEMORY[0x29EDCA608];
}

pthread_t ATCSFileDescriptorIPCDriverPrivate::readWorkerMainLoop(uint64_t a1, int a2)
{
  v69 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  v5 = pthread_self();
  if (!pthread_equal(v5, *(v4 + 64)))
  {
    v6 = *(a1 + 40);
    v7 = pthread_self();
    v8 = pthread_equal(v7, *(v6 + 64)) != 0;
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/IPCDriver/ATCSFileDescriptorIPCDriver.cpp", 0x165, "fLock.isLocked()", "==", "true", v8, 1);
  }

  v9 = *(a1 + 272);
  v10 = *(a1 + 224);
  *&v68.fds_bits[16] = *(a1 + 208);
  *&v68.fds_bits[20] = v10;
  v11 = *(a1 + 256);
  *&v68.fds_bits[24] = *(a1 + 240);
  *&v68.fds_bits[28] = v11;
  v12 = *(a1 + 160);
  *v68.fds_bits = *(a1 + 144);
  *&v68.fds_bits[4] = v12;
  v13 = *(a1 + 192);
  *&v68.fds_bits[8] = *(a1 + 176);
  *&v68.fds_bits[12] = v13;
  v14 = (a1 + 104);
  v15 = *(a1 + 96);
  if (v15 != (a1 + 104))
  {
    do
    {
      v16 = (*(*v15[5] + 32))(v15[5]);
      *(v16 + 20) = 0;
      *(v16 + 24) = 0;
      v17 = v15[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v15[2];
          v19 = *v18 == v15;
          v15 = v18;
        }

        while (!v19);
      }

      v15 = v18;
    }

    while (v18 != v14);
  }

  while (1)
  {
LABEL_68:
    *&v53 = 0xAAAAAAAAAAAAAAAALL;
    *(&v53 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v65.fds_bits[24] = v53;
    *&v65.fds_bits[28] = v53;
    *&v65.fds_bits[16] = v53;
    *&v65.fds_bits[20] = v53;
    *&v65.fds_bits[8] = v53;
    *&v65.fds_bits[12] = v53;
    *v65.fds_bits = v53;
    *&v65.fds_bits[4] = v53;
    *&v64.fds_bits[24] = v53;
    *&v64.fds_bits[28] = v53;
    *&v64.fds_bits[16] = v53;
    *&v64.fds_bits[20] = v53;
    *&v64.fds_bits[8] = v53;
    *&v64.fds_bits[12] = v53;
    *v64.fds_bits = v53;
    *&v64.fds_bits[4] = v53;
    v54 = *(a1 + 40);
    pthread_self();
    v54[1].__sig = 0;
    pthread_mutex_unlock(v54);
    v65 = v68;
    v64 = v68;
    v55 = *(a1 + 32);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2962DD000, v55, OS_LOG_TYPE_DEBUG, "#D Sleeping", buf, 2u);
    }

    v21 = select(v9 + 1, &v65, 0, &v64, 0);
    v56 = *(a1 + 32);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *v67 = v21;
      _os_log_debug_impl(&dword_2962DD000, v56, OS_LOG_TYPE_DEBUG, "#D Woken with count %d", buf, 8u);
    }

    v57 = *(a1 + 40);
    pthread_mutex_lock(v57);
    result = pthread_self();
    v57[1].__sig = result;
    if ((*(a1 + 80) & a2) != 0)
    {
      break;
    }

    if (v21 < 0)
    {
      if (!*(a1 + 304))
      {
        break;
      }

      v59 = *(a1 + 40);
      pthread_self();
      v59[1].__sig = 0;
      pthread_mutex_unlock(v59);
      v60 = *(a1 + 304);
      v61 = __error();
      (*(*v60 + 16))(v60, *v61);
      goto LABEL_78;
    }

    v20 = *(a1 + 276);
    if (__darwin_check_fd_set_overflow(v20, &v65, 0) && ((*(v65.fds_bits + ((v20 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v20) & 1) != 0)
    {
      buf[0] = -86;
      read(*(a1 + 276), buf, 1uLL);
      --v21;
    }

    v22 = *(a1 + 96);
    if (v22 != v14 && v21)
    {
      while (1)
      {
        v23 = *(v22 + 8);
        if (__darwin_check_fd_set_overflow(*(v22 + 8), &v64, 0) && ((*(v64.fds_bits + ((v23 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v23) & 1) != 0)
        {
          v24 = *(a1 + 32);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *v67 = v23;
            _os_log_error_impl(&dword_2962DD000, v24, OS_LOG_TYPE_ERROR, "Select exception on FD %d", buf, 8u);
            if (!*(a1 + 304))
            {
              goto LABEL_25;
            }
          }

          else if (!*(a1 + 304))
          {
            goto LABEL_25;
          }

          v25 = *(a1 + 40);
          pthread_self();
          v25[1].__sig = 0;
          pthread_mutex_unlock(v25);
          LOBYTE(v25) = (*(**(a1 + 304) + 24))(*(a1 + 304), v23, 0xFFFFFFFFLL);
          v26 = *(a1 + 40);
          pthread_mutex_lock(v26);
          result = pthread_self();
          v26[1].__sig = result;
          if (v25)
          {
            goto LABEL_79;
          }
        }

LABEL_25:
        if (!__darwin_check_fd_set_overflow(v23, &v65, 0) || ((*(v65.fds_bits + ((v23 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v23) & 1) == 0)
        {
          goto LABEL_39;
        }

        v28 = v22[5];
        v29 = *(a1 + 40);
        pthread_self();
        v29[1].__sig = 0;
        pthread_mutex_unlock(v29);
        v30 = *(a1 + 32);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v49 = (*(*v28 + 40))(v28);
          if (*(v49 + 23) >= 0)
          {
            v50 = v49;
          }

          else
          {
            v50 = *v49;
          }

          *buf = 136315138;
          *v67 = v50;
          _os_log_debug_impl(&dword_2962DD000, v30, OS_LOG_TYPE_DEBUG, "#D Read available on %s", buf, 0xCu);
        }

        v31 = (*(*v28 + 32))(v28);
        v32 = v31;
        v33 = *(v31 + 16);
        v34 = *(v31 + 20) + *(v31 + 24);
        if (v33 < v34)
        {
          v35 = -1;
          goto LABEL_34;
        }

        v36 = read(v23, (*(v31 + 8) + v34), v33 - v34);
        v35 = v36;
        if (v36 < 0x80000000)
        {
          if (v36 <= 0)
          {
            goto LABEL_34;
          }
        }

        else
        {
          _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/IPCDriver/ATCSFileDescriptorIPCDriver.cpp", 0x54, "ret", "<=", "std::numeric_limits<int>::max()", v36, 0x7FFFFFFF);
        }

        *(v32 + 20) += v35;
LABEL_34:
        v37 = *(a1 + 32);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          v51 = (*(*v28 + 40))(v28);
          if (*(v51 + 23) >= 0)
          {
            v52 = v51;
          }

          else
          {
            v52 = *v51;
          }

          *buf = 67109378;
          *v67 = v35;
          *&v67[4] = 2080;
          *&v67[6] = v52;
          _os_log_debug_impl(&dword_2962DD000, v37, OS_LOG_TYPE_DEBUG, "#D %d bytes for read on %s", buf, 0x12u);
        }

        v38 = *(a1 + 40);
        pthread_mutex_lock(v38);
        result = pthread_self();
        v38[1].__sig = result;
        if ((*(a1 + 80) & a2) != 0)
        {
          goto LABEL_79;
        }

        if (v35 < 0)
        {
          if (!*(a1 + 304))
          {
            goto LABEL_79;
          }

          v58 = *(a1 + 40);
          pthread_self();
          v58[1].__sig = 0;
          pthread_mutex_unlock(v58);
          (*(**(a1 + 304) + 32))(*(a1 + 304), "Writing to read buffer failed");
LABEL_78:
          v62 = *(a1 + 40);
          pthread_mutex_lock(v62);
          result = pthread_self();
          v62[1].__sig = result;
          goto LABEL_79;
        }

        v39 = *(a1 + 40);
        pthread_self();
        v39[1].__sig = 0;
        pthread_mutex_unlock(v39);
        v40 = *(v32 + 20);
        while (v40)
        {
          v44 = *(a1 + 32);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            *v67 = v40;
            _os_log_debug_impl(&dword_2962DD000, v44, OS_LOG_TYPE_DEBUG, "#D Giving %u bytes", buf, 8u);
            v40 = *(v32 + 20);
          }

          v45 = (*(*v28 + 16))(v28, *(v32 + 8) + *(v32 + 24), v40);
          v46 = *(a1 + 32);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            *v67 = v45;
            _os_log_debug_impl(&dword_2962DD000, v46, OS_LOG_TYPE_DEBUG, "#D Dispatcher consumed %d bytes", buf, 8u);
            if (!v45)
            {
              break;
            }
          }

          else if (!v45)
          {
            break;
          }

          v47 = *(v32 + 20);
          if (v47 < v45)
          {
            _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/IPCDriver/ATCSFileDescriptorIPCDriver.cpp", 0x60, "amount", "<=", "fSize", v45, v47);
            LODWORD(v47) = *(v32 + 20);
          }

          v48 = *(v32 + 24) + v45;
          v40 = v47 - v45;
          *(v32 + 20) = v40;
          *(v32 + 24) = v48;
          if (v40)
          {
            if (v48 < *(v32 + 16) >> 1)
            {
              continue;
            }

            memmove(*(v32 + 8), (*(v32 + 8) + v48), v40);
            v40 = *(v32 + 20);
          }

          *(v32 + 24) = 0;
        }

        v41 = *(a1 + 40);
        pthread_mutex_lock(v41);
        result = pthread_self();
        v41[1].__sig = result;
        if ((*(a1 + 80) & a2) != 0)
        {
          goto LABEL_79;
        }

LABEL_39:
        v42 = v22[1];
        if (v42)
        {
          do
          {
            v43 = v42;
            v42 = *v42;
          }

          while (v42);
        }

        else
        {
          do
          {
            v43 = v22[2];
            v19 = *v43 == v22;
            v22 = v43;
          }

          while (!v19);
        }

        v22 = v43;
        if (v43 == v14)
        {
          goto LABEL_68;
        }
      }
    }
  }

LABEL_79:
  v63 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ATCSFileDescriptorIPCDriverPrivate::handleWriteReady(ATCSFileDescriptorIPCDriverPrivate *this, ATCSDispatcherCallback *a2, void *a3)
{
  v5 = *(this + 5);
  pthread_mutex_lock(v5);
  v5[1].__sig = pthread_self();
  if (*(this + 312) == 1)
  {
    v6 = *(this + 4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_debug_impl(&dword_2962DD000, v6, OS_LOG_TYPE_DEBUG, "#D Bailing due to low power", v9, 2u);
    }
  }

  else
  {
    *(*(*a2 + 32))(a2) = 1;
    ++*(this + 71);
    pthread_cond_signal(*(this + 11));
  }

  v7 = *(this + 5);
  pthread_self();
  v7[1].__sig = 0;
  return pthread_mutex_unlock(v7);
}

void sub_296322B10(_Unwind_Exception *a1)
{
  v3 = *(v1 + 40);
  pthread_self();
  v3[1].__sig = 0;
  pthread_mutex_unlock(v3);
  _Unwind_Resume(a1);
}

uint64_t ATCSFileDescriptorIPCDriverPrivate::clearWriteReady(ATCSFileDescriptorIPCDriverPrivate *this, ATCSDispatcherCallback *a2, void *a3)
{
  v5 = *(this + 5);
  pthread_mutex_lock(v5);
  v5[1].__sig = pthread_self();
  *(*(*a2 + 32))(a2) = 0;
  v6 = *(this + 5);
  pthread_self();
  v6[1].__sig = 0;
  return pthread_mutex_unlock(v6);
}

void sub_296322BB8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 40);
  pthread_self();
  v3[1].__sig = 0;
  pthread_mutex_unlock(v3);
  _Unwind_Resume(a1);
}

void ATCSFileDescriptorIPCDriverPrivate::kickReader(ATCSFileDescriptorIPCDriverPrivate *this)
{
  __buf = -86;
  v1 = write(*(this + 70), &__buf, 1uLL);
  __error();
  if (v1 != 1)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/IPCDriver/ATCSFileDescriptorIPCDriver.cpp", 0x21D, "ret", "==", "sizeof( buff)", v1, 1);
  }
}

uint64_t ATCSFileDescriptorIPCDriverPrivate::registerDispatcher(ATCSFileDescriptorIPCDriverPrivate *this, ATCSDispatcherCallback *a2, void *a3, void **a4)
{
  v5 = a3;
  v8 = *(this + 5);
  pthread_mutex_lock(v8);
  v8[1].__sig = pthread_self();
  if (*(this + 288) == 1 && *(this + 18))
  {
    ATCSThreadedIPCDriver::stopWorkersInternal(this);
  }

  v11 = this + 104;
  v10 = *(this + 13);
  if (v10)
  {
    v12 = this + 104;
    v13 = *(this + 13);
    do
    {
      if (*(v13 + 8) >= v5)
      {
        v12 = v13;
      }

      v13 = *&v13[8 * (*(v13 + 8) < v5)];
    }

    while (v13);
    if (v12 == v11 || *(v12 + 8) > v5 || (_ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/IPCDriver/ATCSFileDescriptorIPCDriver.cpp", 0x231, "i", "==", "fMap.end()", v9), v10 = *v11, v14 = this + 104, *v11))
    {
      while (1)
      {
        while (1)
        {
          v14 = v10;
          v15 = *(v10 + 32);
          if (v15 <= v5)
          {
            break;
          }

          v10 = *v14;
          v11 = v14;
          if (!*v14)
          {
            goto LABEL_20;
          }
        }

        if (v15 >= v5)
        {
          break;
        }

        v10 = *(v14 + 1);
        if (!v10)
        {
          v11 = v14 + 8;
          goto LABEL_20;
        }
      }

      *(v14 + 5) = a2;
      v19 = (this + 128);
      v18 = *(this + 16);
      if (v18)
      {
        goto LABEL_27;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v14 = this + 104;
  }

LABEL_20:
  v16 = operator new(0x30uLL);
  v16[8] = v5;
  *(v16 + 5) = 0;
  *v16 = 0;
  *(v16 + 1) = 0;
  *(v16 + 2) = v14;
  *v11 = v16;
  v17 = **(this + 12);
  if (v17)
  {
    *(this + 12) = v17;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 13), v16);
  ++*(this + 14);
  *(v16 + 5) = a2;
  v19 = (this + 128);
  v18 = *(this + 16);
  if (!v18)
  {
LABEL_23:
    v20 = v19;
LABEL_31:
    v22 = operator new(0x30uLL);
    v22[4] = a2;
    *(v22 + 10) = 0;
    *v22 = 0;
    v22[1] = 0;
    v22[2] = v20;
    *v19 = v22;
    v23 = **(this + 15);
    if (v23)
    {
      *(this + 15) = v23;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 16), v22);
    ++*(this + 17);
    goto LABEL_35;
  }

  while (1)
  {
LABEL_27:
    while (1)
    {
      v20 = v18;
      v21 = v18[4];
      if (v21 <= a2)
      {
        break;
      }

      v18 = *v20;
      v19 = v20;
      if (!*v20)
      {
        goto LABEL_31;
      }
    }

    if (v21 >= a2)
    {
      break;
    }

    v18 = v20[1];
    if (!v18)
    {
      v19 = v20 + 1;
      goto LABEL_31;
    }
  }

  v22 = v20;
LABEL_35:
  *(v22 + 10) = v5;
  if (__darwin_check_fd_set_overflow(v5, this + 144, 0))
  {
    *(this + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL) + 144) |= 1 << v5;
  }

  if (*(this + 68) < v5)
  {
    *(this + 68) = v5;
  }

  v24 = operator new(0x20uLL);
  v25 = *(this + 73);
  *v24 = 1;
  v24[1] = 0;
  *(v24 + 5) = 0;
  *(v24 + 6) = 0;
  *(v24 + 4) = v25;
  v24[1] = operator new[](v25);
  *a4 = v24;
  ++*(this + 71);
  if (*(this + 288) == 1)
  {
    ATCSThreadedIPCDriver::startWorkersInternal(this);
  }

  v26 = *(this + 5);
  pthread_self();
  v26[1].__sig = 0;
  return pthread_mutex_unlock(v26);
}

void sub_296322F30(_Unwind_Exception *a1)
{
  v3 = *(v1 + 40);
  pthread_self();
  v3[1].__sig = 0;
  pthread_mutex_unlock(v3);
  _Unwind_Resume(a1);
}

uint64_t ATCSFileDescriptorIPCDriverPrivate::unregisterDispatcher(ATCSFileDescriptorIPCDriverPrivate *this, ATCSDispatcherCallback *a2, void **a3)
{
  v6 = *(this + 5);
  pthread_mutex_lock(v6);
  v6[1].__sig = pthread_self();
  if (*(this + 288) == 1 && *(this + 18))
  {
    ATCSThreadedIPCDriver::stopWorkersInternal(this);
  }

  v8 = *(this + 16);
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = this + 128;
  do
  {
    v10 = *(v8 + 4);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *&v8[8 * v12];
  }

  while (v8);
  if (v9 == this + 128 || *(v9 + 4) > a2)
  {
LABEL_12:
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/IPCDriver/ATCSFileDescriptorIPCDriver.cpp", 0x253, "i", "!=", "fReverseMap.end()", v7);
    v9 = this + 128;
  }

  v13 = *(v9 + 1);
  if (v13)
  {
    do
    {
      v14 = v13;
      v13 = *v13;
    }

    while (v13);
  }

  else
  {
    v15 = v9;
    do
    {
      v14 = *(v15 + 2);
      v16 = *v14 == v15;
      v15 = v14;
    }

    while (!v16);
  }

  v17 = *(v9 + 10);
  if (*(this + 15) == v9)
  {
    *(this + 15) = v14;
  }

  v18 = *(this + 16);
  --*(this + 17);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v18, v9);
  operator delete(v9);
  v20 = *(this + 13);
  if (!v20)
  {
    goto LABEL_28;
  }

  v21 = this + 104;
  do
  {
    if (*(v20 + 8) >= v17)
    {
      v21 = v20;
    }

    v20 = *&v20[8 * (*(v20 + 8) < v17)];
  }

  while (v20);
  if (v21 == this + 104 || v17 < *(v21 + 8))
  {
LABEL_28:
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/IPCDriver/ATCSFileDescriptorIPCDriver.cpp", 0x25A, "j", "!=", "fMap.end()", v19);
    v21 = this + 104;
  }

  v22 = *(v21 + 1);
  if (v22)
  {
    do
    {
      v23 = v22;
      v22 = *v22;
    }

    while (v22);
  }

  else
  {
    v24 = v21;
    do
    {
      v23 = *(v24 + 2);
      v16 = *v23 == v24;
      v24 = v23;
    }

    while (!v16);
  }

  if (*(this + 12) == v21)
  {
    *(this + 12) = v23;
  }

  v25 = *(this + 13);
  --*(this + 14);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v25, v21);
  operator delete(v21);
  v26 = this + 144;
  if (__darwin_check_fd_set_overflow(v17, this + 144, 0))
  {
    *&v26[(v17 >> 3) & 0x1FFFFFFFFFFFFFFCLL] &= ~(1 << v17);
  }

  if (v17 == *(this + 68))
  {
    if (v17 < 1)
    {
LABEL_46:
      v28 = *(this + 69);
    }

    else
    {
      v27 = v17 + 1;
      while (1)
      {
        v28 = v27 - 2;
        if (__darwin_check_fd_set_overflow(v27 - 2, this + 144, 0))
        {
          if ((*&v26[4 * (v28 >> 5)] >> v28))
          {
            break;
          }
        }

        if (--v27 <= 1)
        {
          goto LABEL_46;
        }
      }
    }

    *(this + 68) = v28;
  }

  v29 = *a3;
  if (*a3)
  {
    v30 = v29[1];
    if (v30 || (_ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/IPCDriver/ATCSFileDescriptorIPCDriver.cpp", 0x2D, "fBuffer", "!=", "NULL", 0, 0), (v30 = v29[1]) != 0))
    {
      operator delete[](v30);
    }

    operator delete(v29);
  }

  *a3 = 0;
  if (*(this + 288) == 1 && *(this + 14))
  {
    ATCSThreadedIPCDriver::startWorkersInternal(this);
  }

  v31 = *(this + 5);
  pthread_self();
  v31[1].__sig = 0;
  return pthread_mutex_unlock(v31);
}

void sub_296323280(_Unwind_Exception *a1)
{
  v3 = *(v1 + 40);
  pthread_self();
  v3[1].__sig = 0;
  pthread_mutex_unlock(v3);
  _Unwind_Resume(a1);
}

uint64_t ATCSFileDescriptorIPCDriverPrivate::enterLowPower(ATCSFileDescriptorIPCDriverPrivate *this)
{
  v2 = *(this + 5);
  pthread_mutex_lock(v2);
  v2[1].__sig = pthread_self();
  *(this + 312) = 1;
  (*(*this + 152))(this, 0);
  v3 = *(this + 5);
  pthread_self();
  v3[1].__sig = 0;
  return pthread_mutex_unlock(v3);
}

void sub_296323334(_Unwind_Exception *a1)
{
  v3 = *(v1 + 40);
  pthread_self();
  v3[1].__sig = 0;
  pthread_mutex_unlock(v3);
  _Unwind_Resume(a1);
}

uint64_t ATCSFileDescriptorIPCDriverPrivate::exitLowPower(ATCSFileDescriptorIPCDriverPrivate *this)
{
  v2 = *(this + 5);
  pthread_mutex_lock(v2);
  v2[1].__sig = pthread_self();
  *(this + 156) = 256;
  pthread_cond_signal(*(this + 11));
  v3 = *(this + 5);
  pthread_self();
  v3[1].__sig = 0;
  return pthread_mutex_unlock(v3);
}

void sub_2963233B4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 40);
  pthread_self();
  v3[1].__sig = 0;
  pthread_mutex_unlock(v3);
  _Unwind_Resume(a1);
}

uint64_t ATCSFileDescriptorIPCDriverPrivate::reconfigureWithMask(ATCSFileDescriptorIPCDriverPrivate *this, fd_set *a2)
{
  if (*(this + 18))
  {
    v3 = a2;
    ATCSThreadedIPCDriver::stopWorkersInternal(this);
    v4 = *(this + 18);
    if (v4)
    {
      ATCSThreadedIPCDriver::stopWorkersInternal(this);
    }

    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/IPCDriver/ATCSFileDescriptorIPCDriver.cpp", 0x297, "stopWorkersIfNeeded()", "==", "kNobody", v4, 0);
    a2 = v3;
  }

  v5 = this + 144;
  memmove(this + 144, a2, 0x80uLL);
  v6 = *(this + 69);
  result = __darwin_check_fd_set_overflow(v6, v5, 0);
  if (result)
  {
    *&v5[(v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL] |= 1 << v6;
  }

  return result;
}

uint64_t ATCSFileDescriptorIPCDriverPrivate::handleWriteReadyForAllInternal(uint64_t this, char a2)
{
  v2 = *(this + 96);
  v3 = (this + 104);
  if (v2 != (this + 104))
  {
    if (a2)
    {
      v5 = this;
      do
      {
        this = (*(*v2[5] + 32))(v2[5]);
        *this = a2;
        ++*(v5 + 284);
        v9 = v2[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v2[2];
            v8 = *v10 == v2;
            v2 = v10;
          }

          while (!v8);
        }

        v2 = v10;
      }

      while (v10 != v3);
    }

    else
    {
      do
      {
        this = (*(*v2[5] + 32))(v2[5]);
        *this = a2;
        v6 = v2[1];
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
            v7 = v2[2];
            v8 = *v7 == v2;
            v2 = v7;
          }

          while (!v8);
        }

        v2 = v7;
      }

      while (v7 != v3);
    }
  }

  return this;
}

uint64_t ATCSFileDescriptorIPCDriverPrivate::handleWriteReadyForAll(ATCSFileDescriptorIPCDriverPrivate *this)
{
  v2 = *(this + 5);
  pthread_mutex_lock(v2);
  v2[1].__sig = pthread_self();
  (*(*this + 152))(this, 1);
  v3 = *(this + 5);
  pthread_self();
  v3[1].__sig = 0;
  return pthread_mutex_unlock(v3);
}

void sub_296323640(_Unwind_Exception *a1)
{
  v3 = *(v1 + 40);
  pthread_self();
  v3[1].__sig = 0;
  pthread_mutex_unlock(v3);
  _Unwind_Resume(a1);
}

uint64_t ATCSFileDescriptorIPCDriverPrivate::startWorkers(ATCSFileDescriptorIPCDriverPrivate *this)
{
  if (*(this + 288))
  {
    v2 = this;
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/IPCDriver/ATCSFileDescriptorIPCDriver.cpp", 0x9C, "fAutostart", "==", "false", 1, 0);
    this = v2;
    v1 = vars8;
  }

  return ATCSThreadedIPCDriver::startRemainingWorkers(this);
}

uint64_t ATCSFileDescriptorIPCDriverPrivate::stopWorkers(ATCSFileDescriptorIPCDriverPrivate *this)
{
  v2 = *(this + 5);
  pthread_mutex_lock(v2);
  v2[1].__sig = pthread_self();
  if (*(this + 288))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/IPCDriver/ATCSFileDescriptorIPCDriver.cpp", 0xA3, "fAutostart", "==", "false", 1, 0);
  }

  if (*(this + 18))
  {
    ATCSThreadedIPCDriver::stopWorkersInternal(this);
  }

  v3 = *(this + 5);
  pthread_self();
  v3[1].__sig = 0;
  return pthread_mutex_unlock(v3);
}

void sub_296323770(_Unwind_Exception *a1)
{
  v3 = *(v1 + 40);
  pthread_self();
  v3[1].__sig = 0;
  pthread_mutex_unlock(v3);
  _Unwind_Resume(a1);
}

qmi::Server::State *qmi::Server::State::State(qmi::Server::State *this)
{
  v2 = dispatch_queue_create("qmi::Server", 0);
  ctu::OsLogContext::OsLogContext(v5, "com.apple.telephony.bb", "server");
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }

  *(this + 3) = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C258F30](this + 32, v6);
  MEMORY[0x29C258F40](v6);
  ctu::OsLogContext::~OsLogContext(v5);
  if (v2)
  {
    dispatch_release(v2);
  }

  object = xpc_null_create();
  MEMORY[0x29C258FC0](this + 40, &object);
  xpc_release(object);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  return this;
}

void sub_29632386C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  xpc_release(object);
  MEMORY[0x29C258F40](v9 + 4);
  ctu::SharedSynchronizable<qmi::ClientProxy::State>::~SharedSynchronizable(v9);
  _Unwind_Resume(a1);
}

void qmi::Server::State::~State(qmi::Server::State *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = *(this + 7);
    v4 = *(this + 6);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(this + 6);
    }

    *(this + 7) = v2;
    operator delete(v4);
  }

  MEMORY[0x29C258FD0](this + 40);
  MEMORY[0x29C258F40](this + 32);
  v6 = *(this + 3);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 2);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 1);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

void qmi::Server::State::create(xpc_object_t *a1@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x48uLL);
  qmi::Server::State::State(v4);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<qmi::Server::State>::shared_ptr[abi:ne200100]<qmi::Server::State,std::shared_ptr<qmi::Server::State> ctu::SharedSynchronizable<qmi::Server::State>::make_shared_ptr<qmi::Server::State>(qmi::Server::State*)::{lambda(qmi::Server::State*)#1},0>(a2, v4);
  qmi::Server::State::init_sync(*a2, a1);
}

void qmi::Server::State::init_sync(uint64_t *a1, xpc_object_t *a2)
{
  object = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    object = xpc_null_create();
  }

  v3 = (a1 + 5);
  ctu::XpcServerHelper::setListener();
  xpc_release(object);
  v4 = a1[2];
  if (v4)
  {
    dispatch_retain(a1[2]);
  }

  v5 = a1[1];
  if (!v5 || (v6 = *a1, (v7 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v8);
  }

  if (MEMORY[0x29C259C10](*v3) == MEMORY[0x29EDCA9F0])
  {
    v9 = *v3;
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 1174405120;
    handler[2] = ___ZN3ctu15XpcServerHelper13startListenerIN3qmi6Server5StateEEEvN8dispatch5queueENSt3__18weak_ptrIT_EE_block_invoke;
    handler[3] = &__block_descriptor_tmp_9;
    handler[4] = v3;
    handler[5] = v6;
    v12 = v8;
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v13 = v9;
    xpc_connection_set_event_handler(v9, handler);
    xpc_connection_set_target_queue(*v3, v4);
    xpc_connection_resume(*v3);
    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }
  }

  std::__shared_weak_count::__release_weak(v8);
  if (v4)
  {
    dispatch_release(v4);
  }
}

void sub_296323BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  std::__shared_weak_count::__release_weak(v18);
  if (v17)
  {
    dispatch_release(v17);
  }

  _Unwind_Resume(a1);
}

void qmi::Server::State::handleListenerError(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_2;
  }

  v5 = MEMORY[0x29C259B40](*a2);
  memset(__dst, 170, sizeof(__dst));
  v6 = strlen(v5);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v6 | 7) + 1;
    }

    v8 = operator new(v9);
    __dst[1] = v7;
    __dst[2] = (v9 | 0x8000000000000000);
    __dst[0] = v8;
  }

  else
  {
    HIBYTE(__dst[2]) = v6;
    v8 = __dst;
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  memcpy(v8, v5, v7);
LABEL_12:
  *(v7 + v8) = 0;
  free(v5);
  v10 = __dst;
  if (SHIBYTE(__dst[2]) < 0)
  {
    v10 = __dst[0];
  }

  *buf = 136315138;
  v13 = v10;
  _os_log_debug_impl(&dword_2962DD000, v3, OS_LOG_TYPE_DEBUG, "#D Connection error: %s", buf, 0xCu);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }

LABEL_2:
  v4 = *MEMORY[0x29EDCA608];
}

uint64_t qmi::Server::State::handleNewClient(uint64_t *a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (!*a2)
  {
    v3 = xpc_null_create();
    v4 = a1[2];
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  xpc_retain(*a2);
  v4 = a1[2];
  if (v4)
  {
LABEL_3:
    dispatch_retain(v4);
  }

LABEL_4:
  v5 = a1[1];
  if (!v5 || (v6 = *a1, (v7 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  p_shared_weak_owners = &v7->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v8);
  }

  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 1174405120;
  handler[2] = ___ZNK3ctu15XpcServerHelper12acceptClientIN3qmi6Server5StateEEEvN3xpc10connectionEN8dispatch5queueENSt3__18weak_ptrIT_EE_block_invoke;
  handler[3] = &__block_descriptor_tmp_10_0;
  handler[4] = v6;
  v12 = v8;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v13 = v3;
  xpc_connection_set_event_handler(v3, handler);
  xpc_connection_set_target_queue(v3, v4);
  xpc_connection_resume(v3);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  std::__shared_weak_count::__release_weak(v8);
  if (v4)
  {
    dispatch_release(v4);
  }

  xpc_release(v3);
  return 1;
}

void sub_296323EE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  std::__shared_weak_count::__release_weak(v17);
  if (v16)
  {
    dispatch_release(v16);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

void qmi::Server::State::handleClientMessage(void *a1, uint64_t a2, xpc_object_t *a3)
{
  v42 = *MEMORY[0x29EDCA608];
  v38 = 0xAAAAAAAAAAAAAAAALL;
  v39 = 0xAAAAAAAAAAAAAAAALL;
  v5 = xpc_null_create();
  v6 = MEMORY[0x29C259C10](*a3);
  v7 = MEMORY[0x29EDCAA00];
  if (v6 == MEMORY[0x29EDCAA00])
  {
    reply = xpc_dictionary_create_reply(*a3);
    if (reply || (reply = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C259C10](reply) == v7)
      {
        xpc_retain(reply);
        v8 = reply;
      }

      else
      {
        v8 = xpc_null_create();
      }
    }

    else
    {
      v8 = xpc_null_create();
      reply = 0;
    }

    v10 = xpc_null_create();
    xpc_release(v5);
    xpc_release(v10);
    xpc_release(reply);
  }

  else
  {
    v8 = v5;
  }

  if (MEMORY[0x29C259C10](v8) == v7)
  {
    v11 = operator new(8uLL);
    *v11 = v8;
    if (v8)
    {
      xpc_retain(v8);
    }

    else
    {
      *v11 = xpc_null_create();
    }

    v12 = operator new(0x28uLL);
    *v12 = &unk_2A1D492B0;
    v12[1] = 0;
    v12[2] = 0;
    v12[3] = v11;
    v12[4] = MEMORY[0x29EDC91C8];
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v38 = v11;
  v39 = v12;
  xpc_release(v8);
  v13 = a1[6];
  while (v13 != a1[7])
  {
    __p[0] = 0;
    __p[1] = 0;
    v14 = *(v13 + 8);
    if (v14)
    {
      v15 = std::__shared_weak_count::lock(v14);
      __p[1] = v15;
      if (v15)
      {
        v16 = *v13;
        __p[0] = v16;
        if (v16)
        {
          v17 = (*(*v16 + 16))(v16, a3, a1 + 2);
          if (v17)
          {
            v18 = 0;
          }

          else
          {
            v18 = 16;
          }

          v13 += v18;
          if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
LABEL_42:
            (v15->__on_zero_shared)(v15);
            std::__shared_weak_count::__release_weak(v15);
          }

LABEL_18:
          if ((v17 | 2) != 2)
          {
            goto LABEL_49;
          }

          continue;
        }
      }
    }

    else
    {
      v15 = 0;
    }

    v19 = a1[7];
    if (v13 + 16 == v19)
    {
      v21 = v13;
    }

    else
    {
      v20 = v13;
      do
      {
        v23 = *(v20 + 16);
        *(v20 + 16) = 0;
        *(v20 + 24) = 0;
        v24 = *(v20 + 8);
        *v20 = v23;
        if (v24)
        {
          std::__shared_weak_count::__release_weak(v24);
        }

        v21 = v20 + 16;
        v22 = v20 + 32;
        v20 += 16;
      }

      while (v22 != v19);
      v19 = a1[7];
    }

    while (v19 != v21)
    {
      v25 = *(v19 - 8);
      if (v25)
      {
        std::__shared_weak_count::__release_weak(v25);
      }

      v19 -= 16;
    }

    a1[7] = v21;
    if (v15)
    {
      v17 = 2;
      if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_42;
      }

      goto LABEL_18;
    }
  }

  v26 = a1[4];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&dword_2962DD000, v26, OS_LOG_TYPE_DEFAULT, "#I Incoming connection was not accepted; dropped.", __p, 2u);
    v26 = a1[4];
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v31 = MEMORY[0x29C259B40](*a3);
    memset(__p, 170, 24);
    v32 = strlen(v31);
    if (v32 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v33 = v32;
    if (v32 >= 0x17)
    {
      if ((v32 | 7) == 0x17)
      {
        v35 = 25;
      }

      else
      {
        v35 = (v32 | 7) + 1;
      }

      v34 = operator new(v35);
      __p[1] = v33;
      __p[2] = (v35 | 0x8000000000000000);
      __p[0] = v34;
    }

    else
    {
      HIBYTE(__p[2]) = v32;
      v34 = __p;
      if (!v32)
      {
        goto LABEL_62;
      }
    }

    memcpy(v34, v31, v33);
LABEL_62:
    *(v33 + v34) = 0;
    free(v31);
    v36 = __p;
    if (SHIBYTE(__p[2]) < 0)
    {
      v36 = __p[0];
    }

    *buf = 136315138;
    v41 = v36;
    _os_log_debug_impl(&dword_2962DD000, v26, OS_LOG_TYPE_DEBUG, "#D  -- details of dropped connection: %s", buf, 0xCu);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v27 = xpc_string_create("not accepted");
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  xpc_dictionary_set_value(*v38, "error", v27);
  v28 = xpc_null_create();
  xpc_release(v27);
  xpc_release(v28);
LABEL_49:
  v29 = v39;
  if (v39 && !atomic_fetch_add((v39 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  v30 = *MEMORY[0x29EDCA608];
}

void sub_29632443C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_end_catch();
    JUMPOUT(0x29632448CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_296324484(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_296324494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  JUMPOUT(0x2963244B0);
}

void qmi::Server::State::getEndpoint(NSObject **this@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = this;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK3ctu20SharedSynchronizableIN3qmi6Server5StateEE20execute_wrapped_syncIZNKS3_11getEndpointEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v5[3] = &__block_descriptor_tmp_12;
  v5[4] = this;
  v5[5] = &v4;
  v6 = v5;
  v3 = this[2];
  if (this[3])
  {
    *a2 = 0xAAAAAAAAAAAAAAAALL;
    *a2 = xpc_null_create();
    block = MEMORY[0x29EDCA5F8];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFN3xpc8endpointEvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS6_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_15;
    v11 = a2;
    v12 = &v6;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    *a2 = 0xAAAAAAAAAAAAAAAALL;
    *a2 = xpc_null_create();
    block = MEMORY[0x29EDCA5F8];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch9sync_implIRU13block_pointerFN3xpc8endpointEvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS6_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_14;
    v11 = a2;
    v12 = &v6;
    dispatch_sync(v3, &block);
  }
}

void qmi::Server::State::registerAccepter(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  if (!v5 || (v6 = *a1, (v7 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  v9 = operator new(0x18uLL);
  *v9 = a1;
  v9[1] = v3;
  v9[2] = v4;
  v10 = a1[2];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v9;
  v11[1] = v6;
  v11[2] = v8;
  dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<qmi::Server::State>::execute_wrapped<qmi::Server::State::registerAccepter(std::weak_ptr<qmi::Server::Accepter>)::$_0>(qmi::Server::State::registerAccepter(std::weak_ptr<qmi::Server::Accepter>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<qmi::Server::State::registerAccepter(std::weak_ptr<qmi::Server::Accepter>)::$_0,std::default_delete<qmi::Server::State::registerAccepter(std::weak_ptr<qmi::Server::Accepter>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
  }
}

uint64_t **qmi::Server::Server(uint64_t **a1, xpc_object_t *a2)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x48uLL);
  qmi::Server::State::State(v4);
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<qmi::Server::State>::shared_ptr[abi:ne200100]<qmi::Server::State,std::shared_ptr<qmi::Server::State> ctu::SharedSynchronizable<qmi::Server::State>::make_shared_ptr<qmi::Server::State>(qmi::Server::State*)::{lambda(qmi::Server::State*)#1},0>(a1, v4);
  qmi::Server::State::init_sync(*a1, a2);
  return a1;
}

{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x48uLL);
  qmi::Server::State::State(v4);
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<qmi::Server::State>::shared_ptr[abi:ne200100]<qmi::Server::State,std::shared_ptr<qmi::Server::State> ctu::SharedSynchronizable<qmi::Server::State>::make_shared_ptr<qmi::Server::State>(qmi::Server::State*)::{lambda(qmi::Server::State*)#1},0>(a1, v4);
  qmi::Server::State::init_sync(*a1, a2);
  return a1;
}

void qmi::Server::~Server(qmi::Server *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

{
  v1 = *(this + 1);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

void qmi::Server::create(xpc_object_t *a1@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x48uLL);
  qmi::Server::State::State(v4);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<qmi::Server::State>::shared_ptr[abi:ne200100]<qmi::Server::State,std::shared_ptr<qmi::Server::State> ctu::SharedSynchronizable<qmi::Server::State>::make_shared_ptr<qmi::Server::State>(qmi::Server::State*)::{lambda(qmi::Server::State*)#1},0>(a2, v4);
  qmi::Server::State::init_sync(*a2, a1);
}

void qmi::Server::registerAccepter(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    qmi::Server::State::registerAccepter(v2, v4);

    std::__shared_weak_count::__release_weak(v3);
  }

  else
  {
    qmi::Server::State::registerAccepter(v2, v4);
  }
}

void std::__shared_ptr_pointer<xpc::dict *,void (*)(xpc::dict *),std::allocator<xpc::dict>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<xpc::dict *,void (*)(xpc::dict *),std::allocator<xpc::dict>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x8000000296336EA2)
  {
    return a1 + 32;
  }

  if (((v2 & 0x8000000296336EA2 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000296336EA2))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000296336EA2 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 32;
  }

  return 0;
}

void *std::shared_ptr<qmi::Server::State>::shared_ptr[abi:ne200100]<qmi::Server::State,std::shared_ptr<qmi::Server::State> ctu::SharedSynchronizable<qmi::Server::State>::make_shared_ptr<qmi::Server::State>(qmi::Server::State*)::{lambda(qmi::Server::State*)#1},0>(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1D49300;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = a2[1];
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *a2 = a2;
      a2[1] = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *a2 = a2;
  a2[1] = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_296324C2C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<qmi::Server::State> ctu::SharedSynchronizable<qmi::Server::State>::make_shared_ptr<qmi::Server::State>(qmi::Server::State*)::{lambda(qmi::Server::State*)#1}::operator() const(qmi::Server::State*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<qmi::Server::State *,std::shared_ptr<qmi::Server::State> ctu::SharedSynchronizable<qmi::Server::State>::make_shared_ptr<qmi::Server::State>(qmi::Server::State*)::{lambda(qmi::Server::State *)#1},std::allocator<qmi::Server::State>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<qmi::Server::State *,std::shared_ptr<qmi::Server::State> ctu::SharedSynchronizable<qmi::Server::State>::make_shared_ptr<qmi::Server::State>(qmi::Server::State*)::{lambda(qmi::Server::State *)#1},std::allocator<qmi::Server::State>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN3qmi6Server5StateEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN3qmi6Server5StateEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN3qmi6Server5StateEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN3qmi6Server5StateEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<qmi::Server::State> ctu::SharedSynchronizable<qmi::Server::State>::make_shared_ptr<qmi::Server::State>(qmi::Server::State*)::{lambda(qmi::Server::State*)#1}::operator() const(qmi::Server::State*)::{lambda(void *)#1}::__invoke(qmi::Server::State *a1)
{
  if (a1)
  {
    qmi::Server::State::~State(a1);

    operator delete(v1);
  }
}

void ___ZN3ctu15XpcServerHelper13startListenerIN3qmi6Server5StateEEEvN8dispatch5queueENSt3__18weak_ptrIT_EE_block_invoke(void *a1, xpc_object_t a2)
{
  v3 = a1[6];
  if (!v3)
  {
    return;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v13 = v6;
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = a1[5];
  v12[1] = v8;
  if (v8)
  {
    v9 = MEMORY[0x29C259C10](a2);
    v10 = MEMORY[0x29EDCA9F0];
    if (v9 != MEMORY[0x29EDCA9F0])
    {
      if (v9 == MEMORY[0x29EDCAA18] && *ctu::XpcServerHelper::getListener(v5) == a1[7])
      {
        v12[0] = a2;
        if (a2)
        {
          xpc_retain(a2);
        }

        else
        {
          a2 = xpc_null_create();
          v12[0] = a2;
        }

        qmi::Server::State::handleListenerError(v8, v12);
        xpc_release(a2);
      }

      goto LABEL_21;
    }

    if (a2)
    {
      xpc_retain(a2);
      v12[0] = a2;
    }

    else
    {
      a2 = xpc_null_create();
      v12[0] = a2;
      if (!a2)
      {
        v11 = xpc_null_create();
        a2 = 0;
        goto LABEL_16;
      }
    }

    if (MEMORY[0x29C259C10](a2) == v10)
    {
      xpc_retain(a2);
      v11 = a2;
      goto LABEL_17;
    }

    v11 = xpc_null_create();
LABEL_16:
    v12[0] = v11;
LABEL_17:
    qmi::Server::State::handleNewClient(v8, v12);
    xpc_release(v11);
    v12[0] = 0;
    xpc_release(a2);
    v7 = v13;
    if (!v13)
    {
      return;
    }
  }

LABEL_21:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_296324F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  xpc_release(v11);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c42_ZTSNSt3__18weak_ptrIN3qmi6Server5StateEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c42_ZTSNSt3__18weak_ptrIN3qmi6Server5StateEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZNK3ctu15XpcServerHelper12acceptClientIN3qmi6Server5StateEEEvN3xpc10connectionEN8dispatch5queueENSt3__18weak_ptrIT_EE_block_invoke(uint64_t a1, xpc_object_t a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    v15 = v5;
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 32);
      object[1] = v7;
      if (!v7)
      {
        goto LABEL_23;
      }

      v8 = MEMORY[0x29C259C10](a2);
      v9 = MEMORY[0x29EDCAA00];
      if (v8 != MEMORY[0x29EDCAA00])
      {
        if (v8 != MEMORY[0x29EDCAA18])
        {
          goto LABEL_23;
        }

        v10 = *(a1 + 48);
        if (v10)
        {
          xpc_retain(*(a1 + 48));
          if (a2)
          {
LABEL_8:
            xpc_retain(a2);
LABEL_19:
            xpc_release(a2);
            xpc_release(v10);
LABEL_23:
            if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v6->__on_zero_shared)(v6);
              std::__shared_weak_count::__release_weak(v6);
            }

            return;
          }
        }

        else
        {
          v10 = xpc_null_create();
          if (a2)
          {
            goto LABEL_8;
          }
        }

        a2 = xpc_null_create();
        goto LABEL_19;
      }

      v11 = *(a1 + 48);
      if (v11)
      {
        xpc_retain(*(a1 + 48));
        if (a2)
        {
LABEL_11:
          xpc_retain(a2);
          object[0] = a2;
          goto LABEL_14;
        }
      }

      else
      {
        v11 = xpc_null_create();
        if (a2)
        {
          goto LABEL_11;
        }
      }

      a2 = xpc_null_create();
      object[0] = a2;
      if (!a2)
      {
        v12 = xpc_null_create();
        a2 = 0;
        goto LABEL_21;
      }

LABEL_14:
      if (MEMORY[0x29C259C10](a2) == v9)
      {
        xpc_retain(a2);
        goto LABEL_22;
      }

      v12 = xpc_null_create();
LABEL_21:
      object[0] = v12;
LABEL_22:
      qmi::Server::State::handleClientMessage(v7, v13, object);
      xpc_release(object[0]);
      object[0] = 0;
      xpc_release(a2);
      xpc_release(v11);
      v6 = v15;
      if (!v15)
      {
        return;
      }

      goto LABEL_23;
    }
  }
}

void sub_29632517C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11)
{
  xpc_release(object);
  xpc_release(v11);
  xpc_release(v12);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c42_ZTSNSt3__18weak_ptrIN3qmi6Server5StateEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c42_ZTSNSt3__18weak_ptrIN3qmi6Server5StateEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *___ZNK3ctu20SharedSynchronizableIN3qmi6Server5StateEE20execute_wrapped_syncIZNKS3_11getEndpointEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  Listener = ctu::XpcServerHelper::getListener((**(a1 + 40) + 40));
  result = xpc_endpoint_create(*Listener);
  *a2 = result;
  if (!result)
  {
    result = xpc_null_create();
    *a2 = result;
  }

  return result;
}

void ___ZN8dispatch9sync_implIRU13block_pointerFN3xpc8endpointEvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS6_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&object);
  v2 = *(a1 + 32);
  v3 = object;
  object = xpc_null_create();
  v4 = *v2;
  *v2 = v3;
  xpc_release(v4);
  xpc_release(object);
}

void ___ZN8dispatch19async_and_wait_implIRU13block_pointerFN3xpc8endpointEvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS6_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&object);
  v2 = *(a1 + 32);
  v3 = object;
  object = xpc_null_create();
  v4 = *v2;
  *v2 = v3;
  xpc_release(v4);
  xpc_release(object);
}

void dispatch::async<void ctu::SharedSynchronizable<qmi::Server::State>::execute_wrapped<qmi::Server::State::registerAccepter(std::weak_ptr<qmi::Server::Accepter>)::$_0>(qmi::Server::State::registerAccepter(std::weak_ptr<qmi::Server::Accepter>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<qmi::Server::State::registerAccepter(std::weak_ptr<qmi::Server::Accepter>)::$_0,std::default_delete<qmi::Server::State::registerAccepter(std::weak_ptr<qmi::Server::Accepter>)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = v3[7];
  v5 = v3[8];
  if (v4 < v5)
  {
    v6 = v2[2];
    *v4 = v2[1];
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
    goto LABEL_17;
  }

  v8 = v3[6];
  v9 = v4 - v8;
  v10 = (v4 - v8) >> 4;
  v11 = v10 + 1;
  if ((v10 + 1) >> 60)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v12 = v5 - v8;
  if (v12 >> 3 > v11)
  {
    v11 = v12 >> 3;
  }

  if (v12 >= 0x7FFFFFFFFFFFFFF0)
  {
    v13 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    if (v13 >> 60)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v14 = operator new(16 * v13);
    v15 = &v14[16 * v10];
    v16 = &v14[16 * v13];
    v17 = *(v2 + 1);
    *v15 = v17;
    v18 = *(&v17 + 1);
    if (!*(&v17 + 1))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v15 = (16 * v10);
  v16 = 0;
  v22 = *(v2 + 1);
  *(16 * v10) = v22;
  v18 = *(&v22 + 1);
  if (*(&v22 + 1))
  {
LABEL_14:
    atomic_fetch_add_explicit((v18 + 16), 1uLL, memory_order_relaxed);
    v8 = v3[6];
    v9 = v3[7] - v8;
    v10 = v9 >> 4;
  }

LABEL_15:
  v7 = v15 + 16;
  v19 = &v15[-16 * v10];
  memcpy(v19, v8, v9);
  v3[6] = v19;
  v3[7] = v7;
  v3[8] = v16;
  if (v8)
  {
    operator delete(v8);
  }

LABEL_17:
  v3[7] = v7;
  v20 = v2[2];
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  operator delete(v2);
  v21 = a1[2];
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  operator delete(a1);
}

void sub_2963254FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<qmi::Server::State::registerAccepter(std::weak_ptr<qmi::Server::Accepter>)::$_0,std::default_delete<qmi::Server::State::registerAccepter(std::weak_ptr<qmi::Server::Accepter>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>(qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&)::{lambda(void)#1},std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<qmi::Server::State::registerAccepter(std::weak_ptr<qmi::Server::Accepter>)::$_0,std::default_delete<qmi::Server::State::registerAccepter(std::weak_ptr<qmi::Server::Accepter>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[2];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t qmi::QMuxServerAccepter::State::State(uint64_t a1, void *a2, NSObject **a3, __int128 *a4)
{
  ctu::OsLogContext::OsLogContext(v12, "com.apple.telephony.bb", "acceptor");
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v8 = *a3;
  *(a1 + 24) = *a3;
  if (v8)
  {
    dispatch_retain(v8);
  }

  *(a1 + 32) = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C258F30](a1 + 40, v13);
  MEMORY[0x29C258F40](v13);
  ctu::OsLogContext::~OsLogContext(v12);
  *a1 = &unk_2A1D493B0;
  v9 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *a4;
  *(a1 + 80) = *(a4 + 2);
  *(a1 + 64) = v10;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *a4 = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  return a1;
}

void qmi::QMuxServerAccepter::State::~State(qmi::QMuxServerAccepter::State *this)
{
  *this = &unk_2A1D493B0;
  v2 = *(this + 15);
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = *(this + 16);
  v4 = *(this + 15);
  if (v3 == v2)
  {
    goto LABEL_12;
  }

  do
  {
    v5 = *(v3 - 8);
    if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = *(v3 - 24);
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      std::__shared_weak_count::__release_weak(v6);
      goto LABEL_4;
    }

    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = *(v3 - 24);
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_4:
    v3 -= 32;
  }

  while (v3 != v2);
  v4 = *(this + 15);
LABEL_12:
  *(this + 16) = v2;
  operator delete(v4);
LABEL_13:
  v7 = *(this + 14);
  if (v7 == (this + 88))
  {
    (*(*v7 + 32))(v7);
    if ((*(this + 87) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    if ((*(this + 87) & 0x80000000) == 0)
    {
LABEL_17:
      v8 = *(this + 7);
      if (!v8)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }
  }

  operator delete(*(this + 8));
  v8 = *(this + 7);
  if (!v8)
  {
    goto LABEL_23;
  }

LABEL_21:
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

LABEL_23:
  MEMORY[0x29C258F40](this + 40);
  v9 = *(this + 4);
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = *(this + 3);
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = *(this + 2);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }
}

{
  qmi::QMuxServerAccepter::State::~State(this);

  operator delete(v1);
}

void qmi::QMuxServerAccepter::State::create(void *a1@<X0>, NSObject **a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x90uLL);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  qmi::QMuxServerAccepter::State::State(v8, a1, a2, &__p);
  *a4 = v8;
  a4[1] = 0xAAAAAAAAAAAAAAAALL;
  v9 = operator new(0x20uLL);
  v9[1] = 0;
  v12 = v9 + 1;
  *v9 = &unk_2A1D495B0;
  v9[2] = 0;
  v9[3] = v8;
  a4[1] = v9;
  v13 = *(v8 + 2);
  if (v13)
  {
    if (v13->__shared_owners_ != -1)
    {
      goto LABEL_10;
    }

    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v9 + 2, 1uLL, memory_order_relaxed);
    *(v8 + 1) = v8;
    *(v8 + 2) = v9;
    v14 = v9;
    std::__shared_weak_count::__release_weak(v13);
    v9 = v14;
    if (atomic_fetch_add(v12, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_10;
    }
  }

  else
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v9 + 2, 1uLL, memory_order_relaxed);
    *(v8 + 1) = v8;
    *(v8 + 2) = v9;
    if (atomic_fetch_add(v12, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_10;
    }
  }

  v15 = v9;
  (*(*v9 + 16))(v9, v10, v11);
  std::__shared_weak_count::__release_weak(v15);
LABEL_10:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t qmi::QMuxServerAccepter::State::accept(uint64_t a1, uint64_t a2)
{
  v5[0] = a2;
  v5[1] = a1;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK3ctu20SharedSynchronizableIN3qmi18QMuxServerAccepter5StateEE20execute_wrapped_syncIZNS3_6acceptERKN3xpc4dictERKN8dispatch5queueEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSF__block_invoke;
  v6[3] = &__block_descriptor_tmp_18;
  v6[4] = a1 + 8;
  v6[5] = v5;
  v7 = v6;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    v14 = -86;
    block = MEMORY[0x29EDCA5F8];
    v9 = 0x40000000;
    v10 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke_1;
    v11 = &__block_descriptor_tmp_22;
    v12 = &v14;
    v13 = &v7;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v14 = -86;
    block = MEMORY[0x29EDCA5F8];
    v9 = 0x40000000;
    v10 = ___ZN8dispatch9sync_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke_1;
    v11 = &__block_descriptor_tmp_21;
    v12 = &v14;
    v13 = &v7;
    dispatch_sync(v2, &block);
  }

  return v14 & 1;
}

BOOL qmi::QMuxServerAccepter::State::acceptLocal(uint64_t a1, xpc_object_t *a2, uint64_t *a3, uint64_t *a4)
{
  v78 = *MEMORY[0x29EDCA608];
  memset(__p, 170, sizeof(__p));
  value = xpc_dictionary_get_value(*a2, "connect");
  object.__r_.__value_.__r.__words[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object.__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  memset(buf, 0, 24);
  xpc::dyn_cast_or_default();
  xpc_release(object.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v9 = HIBYTE(__p[2]);
  }

  else
  {
    v9 = __p[1];
  }

  v10 = *(a1 + 87);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a1 + 72);
  }

  if (v9 != v10)
  {
    goto LABEL_17;
  }

  v12 = (a1 + 64);
  v13 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
  v14 = *v12;
  v15 = (v11 >= 0 ? a1 + 64 : *v12);
  if (memcmp(v13, v15, v9))
  {
    goto LABEL_17;
  }

  v19 = xpc_dictionary_get_value(*a2, "svc_type");
  *buf = v19;
  if (v19)
  {
    xpc_retain(v19);
  }

  else
  {
    *buf = xpc_null_create();
  }

  v20 = xpc::dyn_cast_or_default();
  xpc_release(*buf);
  if (!v20)
  {
    v22 = *(a1 + 40);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 87) < 0)
      {
        v12 = *v12;
      }

      *buf = 136315394;
      *&buf[4] = v12;
      *&buf[12] = 1024;
      *&buf[14] = 0;
      _os_log_impl(&dword_2962DD000, v22, OS_LOG_TYPE_DEFAULT, "#E QMux '%s' rejects incoming client due to bad service type 0x%x", buf, 0x12u);
    }

LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  memset(&object, 170, sizeof(object));
  v21 = xpc_dictionary_get_value(*a2, "name");
  v68.__r_.__value_.__r.__words[0] = v21;
  if (v21)
  {
    xpc_retain(v21);
  }

  else
  {
    v68.__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  memset(buf, 0, 24);
  xpc::dyn_cast_or_default();
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v68.__r_.__value_.__l.__data_);
  v23 = HIBYTE(object.__r_.__value_.__r.__words[2]);
  size = object.__r_.__value_.__l.__size_;
  if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(object.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = object.__r_.__value_.__l.__size_;
  }

  v16 = v25 != 0;
  if (!v25)
  {
    v28 = *(a1 + 40);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 87) < 0)
      {
        v12 = *v12;
      }

      *buf = 136315394;
      *&buf[4] = v12;
      *&buf[12] = 1024;
      *&buf[14] = v20;
      _os_log_impl(&dword_2962DD000, v28, OS_LOG_TYPE_DEFAULT, "#E QMux '%s' rejects incoming client(svcType=0x%x) due to empty name", buf, 0x12u);
    }

    goto LABEL_132;
  }

  if ((*(&object.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    v27 = (object.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v27 - object.__r_.__value_.__l.__size_ < 7)
    {
      v29 = 0x7FFFFFFFFFFFFFF7;
      v26 = object.__r_.__value_.__l.__size_ + 7;
      if (0x7FFFFFFFFFFFFFF7 - (object.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < object.__r_.__value_.__l.__size_ + 7 - v27)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      __src = object.__r_.__value_.__r.__words[0];
      if (v27 > 0x3FFFFFFFFFFFFFF2)
      {
        v66 = 0;
LABEL_57:
        v32 = operator new(v29);
        v33 = v32;
        if (size)
        {
          memmove(v32, __src, size);
        }

        v34 = (v33 + size);
        *(v34 + 3) = 2037935986;
        *v34 = 1919957562;
        if (!v66)
        {
          operator delete(__src);
        }

        object.__r_.__value_.__l.__size_ = v26;
        object.__r_.__value_.__r.__words[2] = v29 | 0x8000000000000000;
        object.__r_.__value_.__r.__words[0] = v33;
        v35 = (v33 + v26);
        goto LABEL_68;
      }

LABEL_48:
      v30 = 2 * v27;
      if (v26 > 2 * v27)
      {
        v30 = v26;
      }

      if ((v30 | 7) == 0x17)
      {
        v31 = 25;
      }

      else
      {
        v31 = (v30 | 7) + 1;
      }

      if (v30 >= 0x17)
      {
        v29 = v31;
      }

      else
      {
        v29 = 23;
      }

      v66 = v27 == 22;
      goto LABEL_57;
    }

    v23 = object.__r_.__value_.__l.__size_;
    p_object = object.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (HIBYTE(object.__r_.__value_.__r.__words[2]) - 16 < 7)
    {
      v26 = HIBYTE(object.__r_.__value_.__r.__words[2]) + 7;
      __src = &object;
      v27 = 22;
      size = HIBYTE(object.__r_.__value_.__r.__words[2]);
      goto LABEL_48;
    }

    p_object = &object;
  }

  v37 = (p_object + v23);
  *(v37 + 3) = 2037935986;
  *v37 = 1919957562;
  v38 = v23 + 7;
  if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
  {
    object.__r_.__value_.__l.__size_ = v38;
  }

  else
  {
    *(&object.__r_.__value_.__s + 23) = v38 & 0x7F;
  }

  v35 = p_object + v38;
LABEL_68:
  *v35 = 0;
  qmi::QMuxServerAccepter::State::tidyUp_sync(a1);
  v39 = *(a1 + 40);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 87) < 0)
    {
      v12 = *v12;
    }

    v40 = &object;
    if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v40 = object.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v12;
    *&buf[12] = 1024;
    *&buf[14] = v20;
    *&buf[18] = 2080;
    *&buf[20] = v40;
    _os_log_impl(&dword_2962DD000, v39, OS_LOG_TYPE_DEFAULT, "#I QMux '%s' accepted client(svcType=0x%x, name='%s')", buf, 0x1Cu);
  }

  memset(&v68, 170, sizeof(v68));
  if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v68, object.__r_.__value_.__l.__data_, object.__r_.__value_.__l.__size_);
  }

  else
  {
    v68 = object;
  }

  *&v41 = 0xAAAAAAAAAAAAAAAALL;
  *(&v41 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v41;
  *&buf[16] = v41;
  v42 = *a3;
  v43 = a3[1];
  if (v43)
  {
    atomic_fetch_add_explicit(&v43->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v44 = *a4;
  v45 = a4[1];
  if (v45)
  {
    atomic_fetch_add_explicit(&v45->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v75 = 0xAAAAAAAAAAAAAAAALL;
  v76 = 0xAAAAAAAAAAAAAAAALL;
  v73 = v42;
  v74 = v43;
  if (v43)
  {
    atomic_fetch_add_explicit(&v43->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v71 = v44;
  v72 = v45;
  if (v45)
  {
    atomic_fetch_add_explicit(&v45->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::create_client_proxy_gcd_state((a1 + 48), &object, v20, &v73, &v71, &v75);
  if (v72)
  {
    std::__shared_weak_count::__release_weak(v72);
  }

  if (v74)
  {
    std::__shared_weak_count::__release_weak(v74);
  }

  qmi::ClientProxy::ClientProxy(buf, &v75);
  v46 = v76;
  if (v76 && !atomic_fetch_add((v76 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v46->__on_zero_shared)(v46);
    std::__shared_weak_count::__release_weak(v46);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_weak(v45);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_weak(v43);
  }

  v48 = *(a1 + 128);
  v47 = *(a1 + 136);
  if (v48 >= v47)
  {
    v51 = *(a1 + 120);
    v52 = (v48 - v51) >> 5;
    v53 = v52 + 1;
    if ((v52 + 1) >> 59)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v54 = *&buf[16];
    v55 = v47 - v51;
    if (v55 >> 4 > v53)
    {
      v53 = v55 >> 4;
    }

    if (v55 >= 0x7FFFFFFFFFFFFFE0)
    {
      v56 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v56 = v53;
    }

    if (v56)
    {
      if (v56 >> 59)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v57 = operator new(32 * v56);
    }

    else
    {
      v57 = 0;
    }

    v58 = &v57[32 * v52];
    *v58 = 0;
    *(v58 + 1) = 0;
    *(v58 + 1) = v54;
    if (*(&v54 + 1))
    {
      atomic_fetch_add_explicit((*(&v54 + 1) + 8), 1uLL, memory_order_relaxed);
      v51 = *(a1 + 120);
      v48 = *(a1 + 128);
      v52 = (v48 - v51) >> 5;
    }

    v59 = &v57[32 * v56];
    v50 = v58 + 32;
    v60 = &v58[-32 * v52];
    if (v51 != v48)
    {
      v61 = v51;
      v62 = v60;
      do
      {
        *v62 = 0;
        *(v62 + 1) = 0;
        *(v62 + 1) = *(v61 + 1);
        *(v61 + 2) = 0;
        *(v61 + 3) = 0;
        v61 += 32;
        v62 += 32;
      }

      while (v61 != v48);
      do
      {
        v63 = *(v51 + 3);
        if (v63 && !atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v63->__on_zero_shared)(v63);
          std::__shared_weak_count::__release_weak(v63);
        }

        v64 = *(v51 + 1);
        if (v64)
        {
          std::__shared_weak_count::__release_weak(v64);
        }

        v51 += 32;
      }

      while (v51 != v48);
      v51 = *(a1 + 120);
    }

    *(a1 + 120) = v60;
    *(a1 + 128) = v50;
    *(a1 + 136) = v59;
    if (v51)
    {
      operator delete(v51);
    }
  }

  else
  {
    *v48 = 0;
    *(v48 + 1) = 0;
    *(v48 + 2) = *&buf[16];
    v49 = *&buf[24];
    *(v48 + 3) = *&buf[24];
    if (v49)
    {
      atomic_fetch_add_explicit((v49 + 8), 1uLL, memory_order_relaxed);
    }

    v50 = v48 + 32;
  }

  *(a1 + 128) = v50;
  v65 = *&buf[24];
  if (*&buf[24] && !atomic_fetch_add((*&buf[24] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v65->__on_zero_shared)(v65);
    std::__shared_weak_count::__release_weak(v65);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_weak(*&buf[8]);
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

LABEL_132:
  if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(object.__r_.__value_.__l.__data_);
  }

LABEL_18:
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  v17 = *MEMORY[0x29EDCA608];
  return v16;
}

void sub_296326410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, std::__shared_weak_count *a35, char a36)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void qmi::QMuxServerAccepter::State::tidyUp_sync(qmi::QMuxServerAccepter::State *this)
{
  v3 = *(this + 15);
  v2 = *(this + 16);
  if (v3 == v2)
  {
    LOBYTE(v4) = 0;
    v18 = *(this + 16);
    if (v3 == v18)
    {
      goto LABEL_37;
    }

    goto LABEL_40;
  }

  v4 = 0;
  v5 = v3 + 32;
  while (1)
  {
    v7 = *(v5 - 16);
    if (v7)
    {
      if (qmi::ClientProxy::State::isValid(v7))
      {
        goto LABEL_10;
      }

      v8 = *(v5 - 16);
      if (v8)
      {
        break;
      }
    }

    v4 = 1;
LABEL_4:
    v6 = v5 == v2;
    v5 += 32;
    if (v6)
    {
      v3 = v2;
      goto LABEL_36;
    }
  }

  if ((qmi::ClientProxy::State::isStopped(v8) & 1) == 0)
  {
    v4 = 1;
  }

LABEL_10:
  v9 = *(v5 - 16);
  if (!v9)
  {
    goto LABEL_4;
  }

  if (qmi::ClientProxy::State::isValid(v9))
  {
    goto LABEL_4;
  }

  v10 = *(v5 - 16);
  if (!v10 || (qmi::ClientProxy::State::isStopped(v10) & 1) == 0)
  {
    goto LABEL_4;
  }

  v3 = v5 - 32;
  if (v5 - 32 != v2 && v5 != v2)
  {
    do
    {
      while (1)
      {
        v11 = *(v5 + 16);
        if (!v11)
        {
          v4 = 1;
LABEL_28:
          v15 = *(v5 + 16);
          *(v5 + 16) = 0;
          *(v5 + 24) = 0;
          v16 = *(v3 + 24);
          *(v3 + 16) = v15;
          if (v16)
          {
            goto LABEL_29;
          }

          goto LABEL_31;
        }

        isValid = qmi::ClientProxy::State::isValid(v11);
        v13 = *(v5 + 16);
        if ((isValid & 1) == 0)
        {
          break;
        }

LABEL_22:
        if (!v13)
        {
          goto LABEL_28;
        }

        if (qmi::ClientProxy::State::isValid(v13))
        {
          goto LABEL_28;
        }

        v14 = *(v5 + 16);
        if (!v14 || (qmi::ClientProxy::State::isStopped(v14) & 1) == 0)
        {
          goto LABEL_28;
        }

        v5 += 32;
        if (v5 == v2)
        {
          goto LABEL_36;
        }
      }

      if (v13)
      {
        v4 |= qmi::ClientProxy::State::isStopped(v13) ^ 1;
        v13 = *(v5 + 16);
        goto LABEL_22;
      }

      v4 = 1;
      v17 = *(v5 + 16);
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      v16 = *(v3 + 24);
      *(v3 + 16) = v17;
      if (v16)
      {
LABEL_29:
        if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
        }
      }

LABEL_31:
      v3 += 32;
      v5 += 32;
    }

    while (v5 != v2);
  }

LABEL_36:
  v18 = *(this + 16);
  if (v3 == v18)
  {
LABEL_37:
    if (v4)
    {
      goto LABEL_50;
    }

    return;
  }

LABEL_40:
  if (v18 != v3)
  {
    while (2)
    {
      v19 = *(v18 - 8);
      if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v19->__on_zero_shared)(v19);
        std::__shared_weak_count::__release_weak(v19);
        v20 = *(v18 - 24);
        if (v20)
        {
LABEL_46:
          std::__shared_weak_count::__release_weak(v20);
        }
      }

      else
      {
        v20 = *(v18 - 24);
        if (v20)
        {
          goto LABEL_46;
        }
      }

      v18 -= 32;
      if (v18 == v3)
      {
        break;
      }

      continue;
    }
  }

  *(this + 16) = v3;
  if (v4)
  {
LABEL_50:
    v21 = *(this + 2);
    if (!v21 || (v22 = *(this + 1), (v23 = std::__shared_weak_count::lock(v21)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v24 = v23;
    p_shared_weak_owners = &v23->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v24);
    }

    v26 = dispatch_time(0, 250000000);
    v27 = *(this + 3);
    v28[0] = MEMORY[0x29EDCA5F8];
    v28[1] = 1174405120;
    v28[2] = ___ZN3qmi18QMuxServerAccepter5State11tidyUp_syncEv_block_invoke;
    v28[3] = &__block_descriptor_tmp_10;
    v28[4] = v22;
    v29 = v24;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    dispatch_after(v26, v27, v28);
    if (v29)
    {
      std::__shared_weak_count::__release_weak(v29);
    }

    std::__shared_weak_count::__release_weak(v24);
  }
}

void ___ZN3qmi18QMuxServerAccepter5State11tidyUp_syncEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        qmi::QMuxServerAccepter::State::tidyUp_sync(v5);
      }

      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);

        std::__shared_weak_count::__release_weak(v4);
      }
    }
  }
}

uint64_t __copy_helper_block_e8_32c55_ZTSNSt3__18weak_ptrIN3qmi18QMuxServerAccepter5StateEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c55_ZTSNSt3__18weak_ptrIN3qmi18QMuxServerAccepter5StateEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void qmi::QMuxServerAccepter::State::getAllClients(qmi::QMuxServerAccepter::State *this@<X0>, void *a2@<X8>)
{
  v4 = this;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK3ctu20SharedSynchronizableIN3qmi18QMuxServerAccepter5StateEE20execute_wrapped_syncIZNKS3_13getAllClientsEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v5[3] = &__block_descriptor_tmp_25;
  v5[4] = this + 8;
  v5[5] = &v4;
  v6 = v5;
  v3 = this + 24;
  v2 = *(this + 3);
  if (*(v3 + 1))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    block = MEMORY[0x29EDCA5F8];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__16vectorIN3qmi11ClientProxyENS1_9allocatorIS4_EEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_27;
    v11 = a2;
    v12 = &v6;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    block = MEMORY[0x29EDCA5F8];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__16vectorIN3qmi11ClientProxyENS1_9allocatorIS4_EEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_26;
    v11 = a2;
    v12 = &v6;
    dispatch_sync(v2, &block);
  }
}

uint64_t qmi::QMuxServerAccepter::State::setValidationStrategy(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v16 = v15;
      (*(*v3 + 24))(v3, v15);
    }

    else
    {
      v16 = *(a2 + 24);
      *(a2 + 24) = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x28uLL);
  v9 = v16;
  *v8 = a1;
  if (v9)
  {
    if (v9 == v15)
    {
      v8[4] = v8 + 1;
      (*(*v9 + 24))(v9);
    }

    else
    {
      v8[4] = v9;
      v16 = 0;
    }
  }

  else
  {
    v8[4] = 0;
  }

  v10 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v8;
  v11[1] = v5;
  v11[2] = v7;
  dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<qmi::QMuxServerAccepter::State>::execute_wrapped<qmi::QMuxServerAccepter::State::setValidationStrategy(std::function<BOOL ()(void *)> &&)::$_0>(qmi::QMuxServerAccepter::State::setValidationStrategy(std::function<BOOL ()(void *)> &&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<qmi::QMuxServerAccepter::State::setValidationStrategy(std::function<BOOL ()(void *)> &&)::$_0,std::default_delete<qmi::QMuxServerAccepter::State::setValidationStrategy(std::function<BOOL ()(void *)> &&)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    result = v16;
    if (v16 != v15)
    {
      goto LABEL_15;
    }

LABEL_18:
    result = (*(*result + 32))(result);
    goto LABEL_19;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  result = v16;
  if (v16 == v15)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

LABEL_19:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296326D9C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void qmi::QMuxServerAccepter::State::registerResponse(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1174405120;
  v10[2] = ___ZN3qmi18QMuxServerAccepter5State16registerResponseENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEtNS2_6vectorIhNS6_IhEEEE_block_invoke;
  v10[3] = &__block_descriptor_tmp_4;
  v10[4] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a2, *(a2 + 8));
    v15 = a3;
    v13 = 0;
    v14 = 0;
    __p = 0;
    v7 = *a4;
    v8 = *(a4 + 8) - *a4;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = *a2;
    v15 = a3;
    v13 = 0;
    v14 = 0;
    __p = 0;
    v7 = *a4;
    v8 = *(a4 + 8) - *a4;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  __p = operator new(v8);
  v13 = __p;
  v9 = __p + v8;
  v14 = __p + v8;
  memcpy(__p, v7, v8);
  v13 = v9;
LABEL_7:
  ctu::SharedSynchronizable<qmi::QMuxServerAccepter::State>::execute_wrapped((a1 + 8), v10);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_296326F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
    if ((a19 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a19 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a14);
  _Unwind_Resume(exception_object);
}

void ___ZN3qmi18QMuxServerAccepter5State16registerResponseENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEtNS2_6vectorIhNS6_IhEEEE_block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v3 = v1[15];
  v2 = v1[16];
  if (v3 != v2)
  {
    v5 = (a1 + 40);
    v28 = *(a1 + 32);
    do
    {
      v6 = v1[5];
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
      v8 = *(a1 + 63);
      if (v7)
      {
        v22 = v5;
        if ((v8 & 0x80) != 0)
        {
          v22 = *v5;
        }

        v23 = *(v3 + 16);
        v26 = *(v23 + 48);
        v24 = v23 + 48;
        v25 = v26;
        if (*(v24 + 23) < 0)
        {
          v24 = v25;
        }

        *buf = 136315394;
        *&buf[4] = v22;
        *&buf[12] = 2080;
        *&buf[14] = v24;
        _os_log_debug_impl(&dword_2962DD000, v6, OS_LOG_TYPE_DEBUG, "#D Register response - Checking whether the client name matches: '%s' - '%s'", buf, 0x16u);
        v8 = *(a1 + 63);
      }

      v9 = *(v3 + 16);
      v10 = v8;
      if ((v8 & 0x80u) == 0)
      {
        v11 = v8;
      }

      else
      {
        v11 = *(a1 + 48);
      }

      v12 = *(v9 + 71);
      v13 = v12;
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(v9 + 56);
      }

      if (v11 == v12)
      {
        v14 = v10 >= 0 ? v5 : *v5;
        v15 = v13 >= 0 ? (v9 + 48) : *(v9 + 48);
        if (!memcmp(v14, v15, v11))
        {
          v16 = *(a1 + 88);
          v18 = *(a1 + 64);
          v17 = *(a1 + 72);
          v19 = v17 - v18;
          if (v17 == v18)
          {
            v20 = 0;
            v21 = 0;
            memset(buf, 0, sizeof(buf));
          }

          else
          {
            if ((v19 & 0x8000000000000000) != 0)
            {
              std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
            }

            v20 = operator new(v17 - v18);
            memcpy(v20, v18, v19);
            v9 = *(v3 + 16);
            memset(buf, 0, sizeof(buf));
            v21 = operator new(v19);
            *buf = v21;
            *&buf[16] = &v21[v19];
            memcpy(v21, v20, v19);
            *&buf[8] = &v21[v19];
          }

          qmi::ClientProxy::State::registerResponse(v9, v16, buf);
          if (v21)
          {
            operator delete(v21);
          }

          v1 = v28;
          if (v20)
          {
            operator delete(v20);
          }
        }
      }

      v3 += 32;
    }

    while (v3 != v2);
  }

  v27 = *MEMORY[0x29EDCA608];
}

void sub_296327184(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
  }

  if (v1)
  {
    operator delete(v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c39_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    v6 = *(a2 + 64);
    v8 = *(a2 + 72);
    v7 = v8 - v6;
    if (v8 == v6)
    {
      return;
    }
  }

  else
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    v6 = *(a2 + 64);
    v5 = *(a2 + 72);
    v7 = v5 - v6;
    if (v5 == v6)
    {
      return;
    }
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v9 = operator new(v7);
  *(a1 + 64) = v9;
  *(a1 + 72) = v9;
  v10 = &v9[v7];
  *(a1 + 80) = &v9[v7];
  memcpy(v9, v6, v7);
  *(a1 + 72) = v10;
}

void sub_296327274(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 72) = v4;
    operator delete(v4);
    if ((*(v1 + 63) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 63) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 40));
  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c39_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  if (*(a1 + 63) < 0)
  {
    v3 = *(a1 + 40);

    operator delete(v3);
  }
}

void qmi::QMuxServerAccepter::State::deregisterResponse(uint64_t a1, uint64_t a2, __int16 a3)
{
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 1174405120;
  v5[2] = ___ZN3qmi18QMuxServerAccepter5State18deregisterResponseENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEt_block_invoke;
  v5[3] = &__block_descriptor_tmp_5;
  v5[4] = a1;
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    __p = *a2;
    v7 = a3;
    ctu::SharedSynchronizable<qmi::QMuxServerAccepter::State>::execute_wrapped((a1 + 8), v5);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(__p.__r_.__value_.__l.__data_);
    return;
  }

  std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  v7 = a3;
  ctu::SharedSynchronizable<qmi::QMuxServerAccepter::State>::execute_wrapped((a1 + 8), v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_5;
  }
}

void ___ZN3qmi18QMuxServerAccepter5State18deregisterResponseENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEt_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = v1[15];
  v3 = v1[16];
  if (v2 != v3)
  {
    v5 = (a1 + 40);
    do
    {
      v6 = v1[5];
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
      v8 = *(a1 + 63);
      if (v7)
      {
        v17 = v5;
        if ((v8 & 0x80) != 0)
        {
          v17 = *v5;
        }

        v18 = *(v2 + 16);
        v21 = *(v18 + 48);
        v19 = v18 + 48;
        v20 = v21;
        if (*(v19 + 23) < 0)
        {
          v19 = v20;
        }

        *buf = 136315394;
        *&buf[4] = v17;
        *&buf[12] = 2080;
        *&buf[14] = v19;
        _os_log_debug_impl(&dword_2962DD000, v6, OS_LOG_TYPE_DEBUG, "#D Deregister response - Checking whether the client name matches: '%s' - '%s'", buf, 0x16u);
        v8 = *(a1 + 63);
      }

      v9 = *(v2 + 16);
      v10 = v8;
      if ((v8 & 0x80u) == 0)
      {
        v11 = v8;
      }

      else
      {
        v11 = *(a1 + 48);
      }

      v12 = *(v9 + 71);
      v13 = v12;
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(v9 + 56);
      }

      if (v11 == v12)
      {
        if (v10 >= 0)
        {
          v14 = v5;
        }

        else
        {
          v14 = *v5;
        }

        if (v13 >= 0)
        {
          v15 = (v9 + 48);
        }

        else
        {
          v15 = *(v9 + 48);
        }

        if (!memcmp(v14, v15, v11))
        {
          v16 = *(a1 + 64);
          *buf = MEMORY[0x29EDCA5F8];
          *&buf[8] = 0x40000000;
          *&buf[16] = ___ZN3qmi11ClientProxy5State18deregisterResponseEt_block_invoke;
          v24 = &__block_descriptor_tmp_35;
          v25 = v9;
          v26 = v16;
          ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped((v9 + 8), buf);
        }
      }

      v2 += 32;
    }

    while (v2 != v3);
  }

  v22 = *MEMORY[0x29EDCA608];
}

void __copy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v2 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v2;
  }
}

void __destroy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void qmi::QMuxServerAccepter::State::sendIndication(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1174405120;
  v8[2] = ___ZN3qmi18QMuxServerAccepter5State14sendIndicationENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEENS2_6vectorIhNS6_IhEEEE_block_invoke;
  v8[3] = &__block_descriptor_tmp_8;
  v8[4] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a2, *(a2 + 8));
    __p = 0;
    v11 = 0;
    v12 = 0;
    v5 = *a3;
    v6 = *(a3 + 8) - *a3;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = *a2;
    __p = 0;
    v11 = 0;
    v12 = 0;
    v5 = *a3;
    v6 = *(a3 + 8) - *a3;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  __p = operator new(v6);
  v11 = __p;
  v7 = __p + v6;
  v12 = __p + v6;
  memcpy(__p, v5, v6);
  v11 = v7;
LABEL_7:
  ctu::SharedSynchronizable<qmi::QMuxServerAccepter::State>::execute_wrapped((a1 + 8), v8);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_29632774C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void ___ZN3qmi18QMuxServerAccepter5State14sendIndicationENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEENS2_6vectorIhNS6_IhEEEE_block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = v1[15];
  v3 = v1[16];
  if (v2 != v3)
  {
    v5 = (a1 + 40);
    do
    {
      v6 = v1[5];
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
      v8 = *(a1 + 63);
      if (v7)
      {
        v21 = v5;
        if ((v8 & 0x80) != 0)
        {
          v21 = *v5;
        }

        v22 = *(v2 + 16);
        v25 = *(v22 + 48);
        v23 = v22 + 48;
        v24 = v25;
        if (*(v23 + 23) < 0)
        {
          v23 = v24;
        }

        *buf = 136315394;
        *&buf[4] = v21;
        *&buf[12] = 2080;
        *&buf[14] = v23;
        _os_log_debug_impl(&dword_2962DD000, v6, OS_LOG_TYPE_DEBUG, "#D Send indication - Checking whether the client name matches: '%s' - '%s'", buf, 0x16u);
        v8 = *(a1 + 63);
      }

      v9 = *(v2 + 16);
      v10 = v8;
      if ((v8 & 0x80u) == 0)
      {
        v11 = v8;
      }

      else
      {
        v11 = *(a1 + 48);
      }

      v12 = *(v9 + 71);
      v13 = v12;
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(v9 + 56);
      }

      if (v11 == v12)
      {
        v14 = v10 >= 0 ? v5 : *v5;
        v15 = v13 >= 0 ? (v9 + 48) : *(v9 + 48);
        if (!memcmp(v14, v15, v11))
        {
          v17 = *(a1 + 64);
          v16 = *(a1 + 72);
          v18 = v16 - v17;
          if (v16 == v17)
          {
            v19 = 0;
            v20 = 0;
            memset(buf, 0, sizeof(buf));
          }

          else
          {
            if ((v18 & 0x8000000000000000) != 0)
            {
              std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
            }

            v19 = operator new(v16 - v17);
            memcpy(v19, v17, v18);
            v9 = *(v2 + 16);
            memset(buf, 0, sizeof(buf));
            v20 = operator new(v18);
            *buf = v20;
            *&buf[16] = &v20[v18];
            memcpy(v20, v19, v18);
            *&buf[8] = &v20[v18];
          }

          qmi::ClientProxy::State::sendIndication(v9, buf);
          if (v20)
          {
            operator delete(v20);
          }

          if (v19)
          {
            operator delete(v19);
          }
        }
      }

      v2 += 32;
    }

    while (v2 != v3);
  }

  v26 = *MEMORY[0x29EDCA608];
}

void sub_2963279B0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
  }

  if (v1)
  {
    operator delete(v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t qmi::QMuxServerAccepter::State::shutdown_sync(uint64_t this)
{
  v1 = *(this + 120);
  for (i = *(this + 128); v1 != i; v1 += 32)
  {
    this = (*(**(v1 + 16) + 16))(*(v1 + 16));
  }

  return this;
}

void *qmi::QMuxServerAccepter::QMuxServerAccepter(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_2A1D49498;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_2A1D49498;
  return this;
}

qmi::QMuxServerAccepter *qmi::QMuxServerAccepter::QMuxServerAccepter(qmi::QMuxServerAccepter *this, const QMux *a2, NSObject **a3)
{
  *this = &unk_2A1D49498;
  v5 = *a3;
  v9 = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  QMux::getName(a2, __p);
  qmi::QMuxServerAccepter::State::create(a2, &v9, __p, this + 1);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5)
  {
    dispatch_release(v5);
  }

  return this;
}

void sub_296327B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if (!v14)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v14)
  {
    goto LABEL_3;
  }

  dispatch_release(v14);
  _Unwind_Resume(exception_object);
}

void *qmi::QMuxServerAccepter::QMuxServerAccepter(void *a1, void *a2, NSObject **a3, uint64_t a4)
{
  *a1 = &unk_2A1D49498;
  v7 = a1 + 1;
  v8 = *a3;
  v10 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  qmi::QMuxServerAccepter::State::create(a2, &v10, a4, v7);
  if (v8)
  {
    dispatch_release(v8);
  }

  return a1;
}

{
  *a1 = &unk_2A1D49498;
  v7 = a1 + 1;
  v8 = *a3;
  v10 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  qmi::QMuxServerAccepter::State::create(a2, &v10, a4, v7);
  if (v8)
  {
    dispatch_release(v8);
  }

  return a1;
}

void sub_296327C04(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_296327CB4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void qmi::QMuxServerAccepter::~QMuxServerAccepter(qmi::QMuxServerAccepter *this)
{
  *this = &unk_2A1D49498;
  v1 = *(this + 2);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

{
  *this = &unk_2A1D49498;
  v1 = *(this + 2);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

{
  *this = &unk_2A1D49498;
  v1 = *(this + 2);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  operator delete(this);
}

void qmi::QMuxServerAccepter::listen(qmi::QMuxServerAccepter *this, uint64_t **a2)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *a2;
    v6 = v2;
    v7 = v3;
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    qmi::Server::State::registerAccepter(v4, &v6);
    std::__shared_weak_count::__release_weak(v3);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);

      std::__shared_weak_count::__release_weak(v3);
    }
  }

  else
  {
    v5 = *a2;
    v6 = v2;
    v7 = 0;
    qmi::Server::State::registerAccepter(v5, &v6);
  }
}

BOOL qmi::QMuxServerAccepter::acceptWithClientRef(uint64_t a1, xpc_object_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *(a1 + 8);
  v5 = a3[1];
  v10[0] = *a3;
  v10[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  v9[0] = *a4;
  v9[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = qmi::QMuxServerAccepter::State::acceptLocal(v4, a2, v10, v9);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return v7;
}

void sub_296328014(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
    if (!v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(exception_object);
}

uint64_t qmi::QMuxServerAccepter::shutdown(uint64_t this)
{
  v1 = *(this + 8);
  v2 = *(v1 + 120);
  for (i = *(v1 + 128); v2 != i; v2 += 32)
  {
    this = (*(**(v2 + 16) + 16))(*(v2 + 16));
  }

  return this;
}

void std::__shared_ptr_pointer<qmi::QMuxServerAccepter::State *,std::shared_ptr<qmi::QMuxServerAccepter::State> ctu::SharedSynchronizable<qmi::QMuxServerAccepter::State>::make_shared_ptr<qmi::QMuxServerAccepter::State>(qmi::QMuxServerAccepter::State*)::{lambda(qmi::QMuxServerAccepter::State *)#1},std::allocator<qmi::QMuxServerAccepter::State>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<qmi::QMuxServerAccepter::State *,std::shared_ptr<qmi::QMuxServerAccepter::State> ctu::SharedSynchronizable<qmi::QMuxServerAccepter::State>::make_shared_ptr<qmi::QMuxServerAccepter::State>(qmi::QMuxServerAccepter::State*)::{lambda(qmi::QMuxServerAccepter::State *)#1},std::allocator<qmi::QMuxServerAccepter::State>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN3qmi18QMuxServerAccepter5StateEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN3qmi18QMuxServerAccepter5StateEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN3qmi18QMuxServerAccepter5StateEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN3qmi18QMuxServerAccepter5StateEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<qmi::QMuxServerAccepter::State> ctu::SharedSynchronizable<qmi::QMuxServerAccepter::State>::make_shared_ptr<qmi::QMuxServerAccepter::State>(qmi::QMuxServerAccepter::State*)::{lambda(qmi::QMuxServerAccepter::State*)#1}::operator() const(qmi::QMuxServerAccepter::State*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

BOOL ___ZNK3ctu20SharedSynchronizableIN3qmi18QMuxServerAccepter5StateEE20execute_wrapped_syncIZNS3_6acceptERKN3xpc4dictERKN8dispatch5queueEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSF__block_invoke(uint64_t a1)
{
  __p[5] = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 40);
  v2 = v1[1];
  memset(v61, 170, sizeof(v61));
  value = xpc_dictionary_get_value(**v1, "connect");
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  memset(__p, 0, 24);
  xpc::dyn_cast_or_default();
  xpc_release(object[0]);
  if (SHIBYTE(v61[2]) >= 0)
  {
    v4 = HIBYTE(v61[2]);
  }

  else
  {
    v4 = v61[1];
  }

  v5 = *(v2 + 87);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = v2[9];
  }

  if (v4 != v5)
  {
    goto LABEL_17;
  }

  v7 = v2 + 8;
  v8 = SHIBYTE(v61[2]) >= 0 ? v61 : v61[0];
  v9 = *v7;
  v10 = v6 >= 0 ? v2 + 8 : *v7;
  if (memcmp(v8, v10, v4))
  {
    goto LABEL_17;
  }

  v14 = xpc_dictionary_get_value(**v1, "svc_type");
  __p[0] = v14;
  if (v14)
  {
    xpc_retain(v14);
  }

  else
  {
    __p[0] = xpc_null_create();
  }

  v15 = xpc::dyn_cast_or_default();
  xpc_release(__p[0]);
  if (!v15)
  {
    v17 = v2[5];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v2 + 87) < 0)
      {
        v7 = *v7;
      }

      LODWORD(__p[0]) = 136315394;
      *(__p + 4) = v7;
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = 0;
      _os_log_impl(&dword_2962DD000, v17, OS_LOG_TYPE_DEFAULT, "#E QMux '%s' rejects incoming client due to bad service type 0x%x", __p, 0x12u);
    }

LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  memset(object, 170, sizeof(object));
  v16 = xpc_dictionary_get_value(**v1, "name");
  *&v62 = v16;
  if (v16)
  {
    xpc_retain(v16);
  }

  else
  {
    *&v62 = xpc_null_create();
  }

  memset(__p, 0, 24);
  xpc::dyn_cast_or_default();
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v62);
  v58 = v15;
  v18 = HIBYTE(object[2]);
  if (SHIBYTE(object[2]) < 0)
  {
    v18 = object[1];
  }

  if (!v18)
  {
    v22 = v2[5];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v2 + 87) < 0)
      {
        v7 = *v7;
      }

      LODWORD(__p[0]) = 136315394;
      *(__p + 4) = v7;
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = v15;
      v23 = "#E QMux '%s' rejects incoming client(svcType=0x%x) due to empty name";
      v24 = v22;
      v25 = 18;
      goto LABEL_51;
    }

LABEL_52:
    v11 = 0;
    goto LABEL_115;
  }

  v19 = v2[14];
  if (v19)
  {
    __p[0] = **v1;
    if (((*(*v19 + 48))(v19, __p) & 1) == 0)
    {
      v26 = v2[5];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v2 + 87) < 0)
        {
          v7 = *v7;
        }

        v27 = object;
        if (SHIBYTE(object[2]) < 0)
        {
          v27 = object[0];
        }

        LODWORD(__p[0]) = 136315650;
        *(__p + 4) = v7;
        WORD2(__p[1]) = 1024;
        *(&__p[1] + 6) = v15;
        WORD1(__p[2]) = 2080;
        *(&__p[2] + 4) = v27;
        v23 = "#N QMux '%s' validation failed for incoming client(svcType=0x%x, name='%s')";
        v24 = v26;
        v25 = 28;
LABEL_51:
        _os_log_impl(&dword_2962DD000, v24, OS_LOG_TYPE_DEFAULT, v23, __p, v25);
        goto LABEL_52;
      }

      goto LABEL_52;
    }
  }

  v20 = xpc_dictionary_get_value(**v1, "endpoint");
  v21 = v20;
  if (v20)
  {
    xpc_retain(v20);
  }

  else
  {
    v21 = xpc_null_create();
  }

  v28 = MEMORY[0x29C259C10](v21);
  v11 = v28 != MEMORY[0x29EDCAA40];
  if (v28 == MEMORY[0x29EDCAA40])
  {
    v32 = v2[5];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v2 + 87) < 0)
      {
        v7 = *v7;
      }

      v33 = object;
      if (SHIBYTE(object[2]) < 0)
      {
        v33 = object[0];
      }

      LODWORD(__p[0]) = 136315650;
      *(__p + 4) = v7;
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = v58;
      WORD1(__p[2]) = 2080;
      *(&__p[2] + 4) = v33;
      _os_log_impl(&dword_2962DD000, v32, OS_LOG_TYPE_DEFAULT, "#E QMux '%s' rejects incoming client(svcType=0x%x, name='%s') because of a bad endpoint", __p, 0x1Cu);
    }

    goto LABEL_114;
  }

  v29 = SHIBYTE(object[2]);
  if ((SHIBYTE(object[2]) & 0x8000000000000000) != 0)
  {
    v29 = object[1];
    v31 = (object[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v31 - object[1] < 7)
    {
      v34 = 0x7FFFFFFFFFFFFFF7;
      v30 = object[1] + 7;
      if ((0x7FFFFFFFFFFFFFF7 - (object[2] & 0x7FFFFFFFFFFFFFFFLL)) < object[1] - v31 + 7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      __src = object[0];
      if (v31 > 0x3FFFFFFFFFFFFFF2)
      {
        v37 = 0;
LABEL_76:
        v38 = operator new(v34);
        v39 = v38;
        if (v29)
        {
          memmove(v38, __src, v29);
        }

        v40 = v39 + v29;
        *(v40 + 3) = 2037935986;
        *v40 = 1919957562;
        if (!v37)
        {
          operator delete(__src);
        }

        object[1] = v30;
        object[2] = (v34 | 0x8000000000000000);
        object[0] = v39;
        v41 = &v30[v39];
        goto LABEL_87;
      }

LABEL_67:
      v35 = 2 * v31;
      if (v30 > 2 * v31)
      {
        v35 = v30;
      }

      if ((v35 | 7) == 0x17)
      {
        v36 = 25;
      }

      else
      {
        v36 = (v35 | 7) + 1;
      }

      if (v35 >= 0x17)
      {
        v34 = v36;
      }

      else
      {
        v34 = 23;
      }

      v37 = v31 == 22;
      goto LABEL_76;
    }

    v42 = object[0];
  }

  else
  {
    if ((SHIBYTE(object[2]) - 16) < 7)
    {
      v30 = (SHIBYTE(object[2]) + 7);
      __src = object;
      v31 = 22;
      goto LABEL_67;
    }

    v42 = object;
  }

  v43 = (v42 + v29);
  *(v43 + 3) = 2037935986;
  *v43 = 1919957562;
  v44 = v29 + 7;
  if (SHIBYTE(object[2]) < 0)
  {
    object[1] = (v29 + 7);
  }

  else
  {
    HIBYTE(object[2]) = v44 & 0x7F;
  }

  v41 = v42 + v44;
LABEL_87:
  *v41 = 0;
  qmi::QMuxServerAccepter::State::tidyUp_sync(v2);
  v45 = v2[5];
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v2 + 87) < 0)
    {
      v7 = *v7;
    }

    v46 = object;
    if (SHIBYTE(object[2]) < 0)
    {
      v46 = object[0];
    }

    LODWORD(__p[0]) = 136315650;
    *(__p + 4) = v7;
    WORD2(__p[1]) = 1024;
    *(&__p[1] + 6) = v15;
    WORD1(__p[2]) = 2080;
    *(&__p[2] + 4) = v46;
    _os_log_impl(&dword_2962DD000, v45, OS_LOG_TYPE_DEFAULT, "#I QMux '%s' accepted client(svcType=0x%x, name='%s')", __p, 0x1Cu);
  }

  v47 = MEMORY[0x29EDCAA10];
  if (v21 && MEMORY[0x29C259C10](v21) == v47)
  {
    xpc_retain(v21);
    v48 = v21;
  }

  else
  {
    v48 = xpc_null_create();
  }

  v59 = xpc_null_create();
  if (MEMORY[0x29C259C10](v48) == v47)
  {
    v49 = xpc_connection_create_from_endpoint(v48);
    if (!v49)
    {
      v49 = xpc_null_create();
    }

    v50 = xpc_null_create();
    v51 = v59;
    v59 = v49;
    xpc_release(v51);
    xpc_release(v50);
  }

  *&v62 = 0xAAAAAAAAAAAAAAAALL;
  *(&v62 + 1) = 0xAAAAAAAAAAAAAAAALL;
  qmi::create_client_proxy_state(v2 + 6, object, v15, &v62);
  __p[0] = 0;
  __p[1] = 0;
  v53 = *(&v62 + 1);
  v52 = v62;
  *&__p[2] = v62;
  if (*(&v62 + 1))
  {
    atomic_fetch_add_explicit((*(&v62 + 1) + 8), 1uLL, memory_order_relaxed);
    v52 = __p[2];
  }

  qmi::ClientProxy::State::init(v52, &v59);
  if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v53->__on_zero_shared)(v53);
    std::__shared_weak_count::__release_weak(v53);
  }

  v54 = v2[16];
  if (v54 >= v2[17])
  {
    v55 = std::vector<qmi::ClientProxy>::__emplace_back_slow_path<qmi::ClientProxy>(v2 + 15, __p);
    v56 = __p[3];
    v2[16] = v55;
    if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v56->__on_zero_shared)(v56);
      std::__shared_weak_count::__release_weak(v56);
    }
  }

  else
  {
    *v54 = 0;
    v54[1] = 0;
    *(v54 + 1) = *&__p[2];
    *&__p[2] = 0uLL;
    v2[16] = v54 + 4;
  }

  if (__p[1])
  {
    std::__shared_weak_count::__release_weak(__p[1]);
  }

  xpc_release(v59);
  v59 = 0;
  xpc_release(v48);
LABEL_114:
  xpc_release(v21);
LABEL_115:
  if (SHIBYTE(object[2]) < 0)
  {
    operator delete(object[0]);
  }

LABEL_18:
  if (SHIBYTE(v61[2]) < 0)
  {
    operator delete(v61[0]);
  }

  v12 = *MEMORY[0x29EDCA608];
  return v11;
}

void sub_2963289BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, xpc_object_t a25, uint64_t a26, xpc_object_t a27, std::__shared_weak_count *a28, int a29, __int16 a30, char a31, char a32)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

char *std::vector<qmi::ClientProxy>::__emplace_back_slow_path<qmi::ClientProxy>(char **a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  if (v7)
  {
    if (v7 >> 59)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v8 = operator new(32 * v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[32 * v2];
  v10 = &v8[32 * v7];
  *v9 = 0;
  *(v9 + 1) = 0;
  *(v9 + 1) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v11 = v9 + 32;
  v12 = *a1;
  v13 = a1[1];
  v14 = &v9[*a1 - v13];
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = v14;
    do
    {
      *v16 = 0;
      *(v16 + 1) = 0;
      *(v16 + 1) = *(v15 + 1);
      *(v15 + 2) = 0;
      *(v15 + 3) = 0;
      v15 += 32;
      v16 += 32;
    }

    while (v15 != v13);
    while (1)
    {
      v17 = *(v12 + 3);
      if (v17)
      {
        if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          break;
        }
      }

      v18 = *(v12 + 1);
      if (v18)
      {
        goto LABEL_19;
      }

LABEL_15:
      v12 += 32;
      if (v12 == v13)
      {
        v12 = *a1;
        goto LABEL_23;
      }
    }

    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    v18 = *(v12 + 1);
    if (!v18)
    {
      goto LABEL_15;
    }

LABEL_19:
    std::__shared_weak_count::__release_weak(v18);
    goto LABEL_15;
  }

LABEL_23:
  *a1 = v14;
  a1[1] = v11;
  a1[2] = v10;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

uint64_t ___ZN8dispatch19async_and_wait_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke_1(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

void **___ZNK3ctu20SharedSynchronizableIN3qmi18QMuxServerAccepter5StateEE20execute_wrapped_syncIZNKS3_13getAllClientsEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke@<X0>(void **result@<X0>, void *a2@<X8>)
{
  v3 = *result[5];
  v4 = *(v3 + 120);
  v5 = *(v3 + 128);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v6 = v5 - v4;
  if (v5 != v4)
  {
    if (v6 < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    result = operator new(v5 - v4);
    *a2 = result;
    a2[1] = result;
    a2[2] = result + v6;
    do
    {
      *result = 0;
      result[1] = 0;
      v7 = *(v4 + 24);
      result[2] = *(v4 + 16);
      result[3] = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
      }

      v4 += 32;
      result += 4;
    }

    while (v4 != v5);
    a2[1] = result;
  }

  return result;
}

void ***std::__exception_guard_exceptions<std::vector<qmi::ClientProxy>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***a1)
{
  if (a1[1])
  {
    return a1;
  }

  v2 = *a1;
  v3 = **a1;
  if (!v3)
  {
    return a1;
  }

  v4 = v2[1];
  v5 = **a1;
  if (v4 == v3)
  {
    goto LABEL_13;
  }

  do
  {
    v6 = *(v4 - 1);
    if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = *(v4 - 3);
      if (!v7)
      {
        goto LABEL_5;
      }

LABEL_9:
      std::__shared_weak_count::__release_weak(v7);
      goto LABEL_5;
    }

    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v7 = *(v4 - 3);
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_5:
    v4 -= 32;
  }

  while (v4 != v3);
  v5 = **a1;
LABEL_13:
  v2[1] = v3;
  operator delete(v5);
  return a1;
}

double ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__16vectorIN3qmi11ClientProxyENS1_9allocatorIS4_EEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v9);
  v2 = *(a1 + 32);
  v3 = *v2;
  if (!*v2)
  {
    goto LABEL_13;
  }

  v4 = v2[1];
  v5 = *v2;
  if (v4 == v3)
  {
    goto LABEL_12;
  }

  do
  {
    v6 = *(v4 - 1);
    if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = *(v4 - 3);
      if (!v7)
      {
        goto LABEL_4;
      }

LABEL_8:
      std::__shared_weak_count::__release_weak(v7);
      goto LABEL_4;
    }

    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v7 = *(v4 - 3);
    if (v7)
    {
      goto LABEL_8;
    }

LABEL_4:
    v4 -= 32;
  }

  while (v4 != v3);
  v5 = *v2;
LABEL_12:
  v2[1] = v3;
  operator delete(v5);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
LABEL_13:
  result = *&v9;
  *v2 = v9;
  v2[2] = v10;
  return result;
}

double ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__16vectorIN3qmi11ClientProxyENS1_9allocatorIS4_EEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v9);
  v2 = *(a1 + 32);
  v3 = *v2;
  if (!*v2)
  {
    goto LABEL_13;
  }

  v4 = v2[1];
  v5 = *v2;
  if (v4 == v3)
  {
    goto LABEL_12;
  }

  do
  {
    v6 = *(v4 - 1);
    if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = *(v4 - 3);
      if (!v7)
      {
        goto LABEL_4;
      }

LABEL_8:
      std::__shared_weak_count::__release_weak(v7);
      goto LABEL_4;
    }

    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v7 = *(v4 - 3);
    if (v7)
    {
      goto LABEL_8;
    }

LABEL_4:
    v4 -= 32;
  }

  while (v4 != v3);
  v5 = *v2;
LABEL_12:
  v2[1] = v3;
  operator delete(v5);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
LABEL_13:
  result = *&v9;
  *v2 = v9;
  v2[2] = v10;
  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<qmi::QMuxServerAccepter::State>::execute_wrapped<qmi::QMuxServerAccepter::State::setValidationStrategy(std::function<BOOL ()(void *)> &&)::$_0>(qmi::QMuxServerAccepter::State::setValidationStrategy(std::function<BOOL ()(void *)> &&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<qmi::QMuxServerAccepter::State::setValidationStrategy(std::function<BOOL ()(void *)> &&)::$_0,std::default_delete<qmi::QMuxServerAccepter::State::setValidationStrategy(std::function<BOOL ()(void *)> &&)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = (*a1 + 1);
  v4 = **a1;
  v7 = *(v4 + 112);
  v6 = (v4 + 112);
  v5 = v7;
  *v6 = 0;
  if (v7 == v6 - 3)
  {
    (*(*v5 + 32))(v5);
    v9 = v2 + 4;
    v8 = v2[4];
    if (!v8)
    {
LABEL_9:
      *v6 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    if (v5)
    {
      (*(*v5 + 40))(v5);
    }

    v9 = v2 + 4;
    v8 = v2[4];
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  if (v8 != v3)
  {
    *v6 = v8;
    v6 = v9;
    goto LABEL_9;
  }

  *v6 = v6 - 3;
  (*(**v9 + 24))(*v9, v6 - 3);
LABEL_11:
  v10 = *v9;
  if (*v9 == v3)
  {
    (*(*v10 + 32))(v10);
    operator delete(v2);
    v11 = a1[2];
    if (!v11)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v10)
  {
    (*(*v10 + 40))(v10);
  }

  operator delete(v2);
  v11 = a1[2];
  if (v11)
  {
LABEL_17:
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }

LABEL_19:

  operator delete(a1);
}

void ctu::SharedSynchronizable<qmi::QMuxServerAccepter::State>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableIN3qmi18QMuxServerAccepter5StateEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &__block_descriptor_tmp_28_0;
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

void __copy_helper_block_e8_32b40c59_ZTSNSt3__110shared_ptrIKN3qmi18QMuxServerAccepter5StateEEE(void *a1, uint64_t a2)
{
  _Block_object_assign(a1 + 4, *(a2 + 32), 7);
  v4 = *(a2 + 48);
  a1[5] = *(a2 + 40);
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_32b40c59_ZTSNSt3__110shared_ptrIKN3qmi18QMuxServerAccepter5StateEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = *(a1 + 32);
  }

  _Block_object_dispose(v2, 7);
}

void QMIControl::QMIControl(QMIControl *this, const QMux *a2)
{
  QMux::getName(a2, &__p);
  v4 = SHIBYTE(v28);
  if ((SHIBYTE(v28) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v28) - 11) < 0xC)
    {
      v5 = SHIBYTE(v28) + 12;
      p_p = &__p;
      v7 = 22;
LABEL_7:
      v9 = 2 * v7;
      if (v5 > 2 * v7)
      {
        v9 = v5;
      }

      if ((v9 | 7) == 0x17)
      {
        v10 = 25;
      }

      else
      {
        v10 = (v9 | 7) + 1;
      }

      if (v9 >= 0x17)
      {
        v8 = v10;
      }

      else
      {
        v8 = 23;
      }

      v11 = v7 == 22;
      goto LABEL_16;
    }

    v16 = &__p;
LABEL_23:
    v17 = &v16[v4];
    *v17 = *"::QMIControl";
    *(v17 + 2) = 1819243124;
    v18 = v4 + 12;
    if (SHIBYTE(v28) < 0)
    {
      v27 = v4 + 12;
    }

    else
    {
      HIBYTE(v28) = v18 & 0x7F;
    }

    v15 = &v16[v18];
    goto LABEL_27;
  }

  v4 = v27;
  v7 = (v28 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v7 - v27 >= 0xC)
  {
    v16 = __p;
    goto LABEL_23;
  }

  v8 = 0x7FFFFFFFFFFFFFF7;
  v5 = v27 + 12;
  if (0x7FFFFFFFFFFFFFF7 - (v28 & 0x7FFFFFFFFFFFFFFFLL) < v27 + 12 - v7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  p_p = __p;
  if (v7 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_7;
  }

  v11 = 0;
LABEL_16:
  v12 = operator new(v8);
  v13 = v12;
  if (v4)
  {
    memmove(v12, p_p, v4);
  }

  v14 = &v13[v4];
  *v14 = *"::QMIControl";
  *(v14 + 2) = 1819243124;
  if (!v11)
  {
    operator delete(p_p);
  }

  v27 = v5;
  v28 = v8 | 0x8000000000000000;
  __p = v13;
  v15 = &v13[v5];
LABEL_27:
  *v15 = 0;
  v20 = __p;
  v19 = v27;
  v25[0] = v28;
  *(v25 + 3) = *(&v28 + 3);
  v21 = SHIBYTE(v28);
  v27 = 0;
  v28 = 0;
  __p = 0;
  *this = &unk_2A1D48000;
  if (v21 < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), v20, v19);
    *(this + 16) = -256;
    *(this + 36) = 0x2FFFFFFFFLL;
    *(this + 44) = 1;
    operator delete(v20);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    *(this + 1) = v20;
    *(this + 2) = v19;
    *(this + 6) = v25[0];
    *(this + 27) = *(v25 + 3);
    *(this + 31) = v21;
    *(this + 16) = -256;
    *(this + 36) = 0x2FFFFFFFFLL;
    *(this + 44) = 1;
  }

  ctu::OsLogContext::OsLogContext(&__p, "com.apple.telephony.bb", "qmux");
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C258F30](this + 48, v25);
  MEMORY[0x29C258F40](v25);
  ctu::OsLogContext::~OsLogContext(&__p);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *this = &unk_2A1D49630;
  *(this + 9) = *a2;
  v22 = *(a2 + 1);
  *(this + 10) = v22;
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 16), 1uLL, memory_order_relaxed);
  }

  *(this + 11) = dispatch_get_current_queue();
  v23 = dispatch_queue_create("com.apple.CommCenter.ATCS.QMIControl.Callbacks", 0);
  *(this + 13) = 0;
  *(this + 12) = v23;
  *(this + 16) = 0;
  *(this + 14) = 0;
  *(this + 117) = 0;
  v24 = operator new(0x48uLL);
  v24[1].__sig = 0;
  if ((initialized & 1) == 0)
  {
    pthread_key_create(&threadInfoKey, 0);
    initialized = 1;
  }

  pthread_mutex_init(v24, 0);
  *(this + 18) = 0;
  *(this + 16) = v24;
  *(this + 17) = this + 144;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 21) = 0;
  *(this + 19) = 0;
  *(this + 20) = this + 168;
  *(this + 48) = 0;
  *(this + 27) = 0;
  *(this + 26) = 0;
  *(this + 25) = this + 208;
  dispatch_retain(*(this + 11));
}

void sub_296329848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  operator delete(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

QMIControl::ClientIdRequests *QMIControl::ClientIdRequests::ClientIdRequests(QMIControl::ClientIdRequests *this)
{
  *this = 0;
  v2 = operator new(0x48uLL);
  v2[1].__sig = 0;
  if ((initialized & 1) == 0)
  {
    pthread_key_create(&threadInfoKey, 0);
    initialized = 1;
  }

  pthread_mutex_init(v2, 0);
  *(this + 2) = 0;
  *this = v2;
  *(this + 1) = this + 16;
  *(this + 6) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 4) = this + 40;
  return this;
}

{
  *this = 0;
  v2 = operator new(0x48uLL);
  v2[1].__sig = 0;
  if ((initialized & 1) == 0)
  {
    pthread_key_create(&threadInfoKey, 0);
    initialized = 1;
  }

  pthread_mutex_init(v2, 0);
  *(this + 2) = 0;
  *this = v2;
  *(this + 1) = this + 16;
  *(this + 6) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 4) = this + 40;
  return this;
}

void QMIControl::~QMIControl(QMIControl *this)
{
  *this = &unk_2A1D49630;
  qmi::TransactionQueue::State::stop_sync(*(this + 13));
  dispatch_release(*(this + 12));
  dispatch_release(*(this + 11));
  v2 = *(this + 23);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(this + 23);
    *(this + 23) = 0;
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  std::__tree<std::__value_type<qmi::ServiceType,std::set<unsigned short>>,std::__map_value_compare<qmi::ServiceType,std::__value_type<qmi::ServiceType,std::set<unsigned short>>,std::less<qmi::ServiceType>,true>,std::allocator<std::__value_type<qmi::ServiceType,std::set<unsigned short>>>>::destroy(*(this + 26));
  v4 = *(this + 23);
  if (v4)
  {
    dispatch_release(v4);
  }

  std::__tree<std::pair<qmi::ServiceType const,unsigned short const>>::destroy(*(this + 21));
  std::__tree<std::__value_type<qmi::ServiceType,std::vector<std::weak_ptr<qmi::QMuxClientIface>>>,std::__map_value_compare<qmi::ServiceType,std::__value_type<qmi::ServiceType,std::vector<std::weak_ptr<qmi::QMuxClientIface>>>,std::less<qmi::ServiceType>,true>,std::allocator<std::__value_type<qmi::ServiceType,std::vector<std::weak_ptr<qmi::QMuxClientIface>>>>>::destroy(*(this + 18));
  v5 = *(this + 16);
  pthread_mutex_destroy(v5);
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 14);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(this + 10);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(this + 8);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  MEMORY[0x29C258F40](this + 48);
  *this = &unk_2A1D48000;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  QMIControl::~QMIControl(this);

  operator delete(v1);
}

void QMIControl::ClientIdRequests::~ClientIdRequests(QMIControl::ClientIdRequests *this)
{
  std::__tree<std::pair<qmi::ServiceType const,unsigned short const>>::destroy(*(this + 5));
  std::__tree<std::__value_type<qmi::ServiceType,std::vector<std::weak_ptr<qmi::QMuxClientIface>>>,std::__map_value_compare<qmi::ServiceType,std::__value_type<qmi::ServiceType,std::vector<std::weak_ptr<qmi::QMuxClientIface>>>,std::less<qmi::ServiceType>,true>,std::allocator<std::__value_type<qmi::ServiceType,std::vector<std::weak_ptr<qmi::QMuxClientIface>>>>>::destroy(*(this + 2));
  v2 = *this;
  pthread_mutex_destroy(*this);
  if (v2)
  {
    operator delete(v2);
  }
}

{
  std::__tree<std::pair<qmi::ServiceType const,unsigned short const>>::destroy(*(this + 5));
  std::__tree<std::__value_type<qmi::ServiceType,std::vector<std::weak_ptr<qmi::QMuxClientIface>>>,std::__map_value_compare<qmi::ServiceType,std::__value_type<qmi::ServiceType,std::vector<std::weak_ptr<qmi::QMuxClientIface>>>,std::less<qmi::ServiceType>,true>,std::allocator<std::__value_type<qmi::ServiceType,std::vector<std::weak_ptr<qmi::QMuxClientIface>>>>>::destroy(*(this + 2));
  v2 = *this;
  pthread_mutex_destroy(*this);
  if (v2)
  {
    operator delete(v2);
  }
}

void QMIControl::Deleter::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 88);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN10QMIControl7DeleterclEPS__block_invoke;
  block[3] = &__block_descriptor_tmp_1;
  block[4] = a2;
  dispatch_async(v2, block);
}

uint64_t ___ZN10QMIControl7DeleterclEPS__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void QMIControl::init_sync(QMIControl *this, const QMux *a2)
{
  current_queue = dispatch_get_current_queue();
  v5 = *(this + 8);
  if (!v5 || (v6 = *(this + 7), (v7 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v17 = v6;
  v18 = v7;
  v8 = operator new(0x118uLL);
  qmi::TransactionQueue::State::State(v8, current_queue, current_queue, a2, &v17);
  std::shared_ptr<qmi::TransactionQueue::State>::shared_ptr[abi:ne200100]<qmi::TransactionQueue::State,qmi::TransactionQueue::State::Deleter,0>(&v19, v8);
  v10 = v19;
  v9 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(this + 14);
  *(this + 13) = v10;
  *(this + 14) = v9;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = v20;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v18;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v15 = dispatch_get_current_queue();
  v16 = *(this + 13);
  if (v15 != *(v16 + 24))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0x232, "dispatch_get_current_queue()==fState->queue()", "is not", "true", v14);
    v16 = *(this + 13);
  }

  *(v16 + 40) = 1;
  qmi::TransactionQueue::State::checkFlushNotifiers_sync(v16);
}

void sub_296329DF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  operator delete(v11);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_296329E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void QMIControl::create(QMIControl *this@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v5 = operator new(0xE0uLL);
  QMIControl::QMIControl(v5, this);
  std::shared_ptr<QMIControl>::shared_ptr[abi:ne200100]<QMIControl,QMIControl::Deleter,0>(a2, v5);
  QMIControl::init_sync(*a2, this);
}

void QMIControl::revokeRegistration(qmi::TransactionQueue::State **this)
{
  qmi::TransactionQueue::State::stop_sync(this[13]);
  std::__tree<std::__value_type<qmi::ServiceType,std::set<unsigned short>>,std::__map_value_compare<qmi::ServiceType,std::__value_type<qmi::ServiceType,std::set<unsigned short>>,std::less<qmi::ServiceType>,true>,std::allocator<std::__value_type<qmi::ServiceType,std::set<unsigned short>>>>::destroy(this[26]);
  this[26] = 0;
  this[27] = 0;
  this[25] = (this + 26);
  *(this + 61) = 0;
  *(this + 124) = 0;
  current_queue = dispatch_get_current_queue();
  v4 = this[13];
  if (current_queue != *(v4 + 3))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0x232, "dispatch_get_current_queue()==fState->queue()", "is not", "true", v2);
    v4 = this[13];
  }

  *(v4 + 10) = 1;

  qmi::TransactionQueue::State::checkFlushNotifiers_sync(v4);
}

void QMIControl::revokeRegistration_sync(qmi::TransactionQueue::State **this)
{
  qmi::TransactionQueue::State::stop_sync(this[13]);
  std::__tree<std::__value_type<qmi::ServiceType,std::set<unsigned short>>,std::__map_value_compare<qmi::ServiceType,std::__value_type<qmi::ServiceType,std::set<unsigned short>>,std::less<qmi::ServiceType>,true>,std::allocator<std::__value_type<qmi::ServiceType,std::set<unsigned short>>>>::destroy(this[26]);
  this[26] = 0;
  this[27] = 0;
  this[25] = (this + 26);
  *(this + 61) = 0;
  *(this + 124) = 0;
  current_queue = dispatch_get_current_queue();
  v4 = this[13];
  if (current_queue != *(v4 + 3))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0x232, "dispatch_get_current_queue()==fState->queue()", "is not", "true", v2);
    v4 = this[13];
  }

  *(v4 + 10) = 1;

  qmi::TransactionQueue::State::checkFlushNotifiers_sync(v4);
}

void QMIControl::start_sync(QMIControl *this, BOOL a2, NSObject *a3)
{
  *(this + 48) = 0;
  v5 = *(this + 23);
  if (v5)
  {
    dispatch_source_cancel(v5);
    v6 = *(this + 23);
    *(this + 23) = 0;
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  QMIControl::setPowerMode_sync(this, 0);
  qmi::TransactionQueue::State::start_sync(*(this + 13));
  current_queue = dispatch_get_current_queue();
  v9 = *(this + 13);
  if (current_queue != *(v9 + 3))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0x23E, "dispatch_get_current_queue()==fState->queue()", "is not", "true", v7);
    v9 = *(this + 13);
  }

  qmi::TransactionQueue::State::flush_sync(v9, a3);
}

void QMIControl::add_sync(void *a1, void *a2)
{
  v4 = *(*a2 + 32);
  if (QMIControl::ClientIdRequests::addRequest((a1 + 16), a2))
  {

    QMIControl::requestClientId_sync(a1, v4);
    return;
  }

  v43 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v42[7] = v5;
  v42[8] = v5;
  v42[5] = v5;
  v42[6] = v5;
  v42[3] = v5;
  v42[4] = v5;
  v42[1] = v5;
  v42[2] = v5;
  v41 = v5;
  v42[0] = v5;
  *__p = v5;
  v40 = v5;
  v37 = v5;
  v38 = v5;
  v35 = v5;
  v36 = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v35);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "QMI client double request for ID", 32);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " client=", 8);
  v8 = MEMORY[0x29C259270](v7, *(*a2 + 33));
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " svc=", 5);
  v10 = MEMORY[0x29C259270](v9, *(*a2 + 32));
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " [", 2);
  v12 = *(*a2 + 31);
  if (v12 >= 0)
  {
    v13 = *a2 + 8;
  }

  else
  {
    v13 = *(*a2 + 8);
  }

  if (v12 >= 0)
  {
    v14 = *(*a2 + 31);
  }

  else
  {
    v14 = *(*a2 + 16);
  }

  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "]", 1);
  v33 = 0;
  v34 = 0;
  v17 = a1[10];
  if (!v17 || (v34 = std::__shared_weak_count::lock(v17)) == 0 || (v33 = a1[9]) == 0)
  {
    if ((BYTE8(v41) & 0x10) != 0)
    {
      v22 = v41;
      if (v41 < *(&v38 + 1))
      {
        *&v41 = *(&v38 + 1);
        v22 = *(&v38 + 1);
      }

      v23 = v38;
      v20 = v22 - v38;
      if ((v22 - v38) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if ((BYTE8(v41) & 8) == 0)
      {
        v20 = 0;
        HIBYTE(v32) = 0;
        p_dst = &__dst;
        goto LABEL_31;
      }

      v23 = *(&v36 + 1);
      v20 = *(&v37 + 1) - *(&v36 + 1);
      if (*(&v37 + 1) - *(&v36 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
      {
LABEL_41:
        std::string::__throw_length_error[abi:ne200100]();
      }
    }

    if (v20 >= 0x17)
    {
      if ((v20 | 7) == 0x17)
      {
        v24 = 25;
      }

      else
      {
        v24 = (v20 | 7) + 1;
      }

      p_dst = operator new(v24);
      v31 = v20;
      v32 = v24 | 0x8000000000000000;
      __dst = p_dst;
    }

    else
    {
      HIBYTE(v32) = v20;
      p_dst = &__dst;
      if (!v20)
      {
        goto LABEL_31;
      }
    }

    memmove(p_dst, v23, v20);
LABEL_31:
    *(p_dst + v20) = 0;
    v25 = &__dst;
    if (v32 < 0)
    {
      v25 = __dst;
    }

    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMIControl.cpp", 0x9B, "false", "is not", "true", "%s", v16, v25);
    goto LABEL_48;
  }

  if ((BYTE8(v41) & 0x10) != 0)
  {
    v26 = v41;
    if (v41 < *(&v38 + 1))
    {
      *&v41 = *(&v38 + 1);
      v26 = *(&v38 + 1);
    }

    v27 = v38;
    v18 = v26 - v38;
    if ((v26 - v38) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_57;
    }
  }

  else
  {
    if ((BYTE8(v41) & 8) == 0)
    {
      v18 = 0;
      HIBYTE(v32) = 0;
      v19 = &__dst;
      goto LABEL_47;
    }

    v27 = *(&v36 + 1);
    v18 = *(&v37 + 1) - *(&v36 + 1);
    if (*(&v37 + 1) - *(&v36 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_57:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v18 >= 0x17)
  {
    if ((v18 | 7) == 0x17)
    {
      v28 = 25;
    }

    else
    {
      v28 = (v18 | 7) + 1;
    }

    v19 = operator new(v28);
    v31 = v18;
    v32 = v28 | 0x8000000000000000;
    __dst = v19;
  }

  else
  {
    HIBYTE(v32) = v18;
    v19 = &__dst;
    if (!v18)
    {
      goto LABEL_47;
    }
  }

  memmove(v19, v27, v18);
LABEL_47:
  *(v19 + v18) = 0;
  QMux::invokeReset(&v33, &__dst, 0);
LABEL_48:
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__dst);
  }

  v29 = v34;
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  *&v35 = *MEMORY[0x29EDC9538];
  *(&v35 + *(v35 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v35 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v35 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v36);
  std::ostream::~ostream();
  MEMORY[0x29C259330](v42);
}

void sub_29632A574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a15 < 0)
  {
    operator delete(__p);
    QMux::~QMux(&a16);
    std::ostringstream::~ostringstream(&a18);
    _Unwind_Resume(a1);
  }

  QMux::~QMux(&a16);
  std::ostringstream::~ostringstream(&a18);
  _Unwind_Resume(a1);
}

void sub_29632A5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

BOOL QMIControl::ClientIdRequests::addRequest(uint64_t a1, void *a2)
{
  v4 = *a1;
  pthread_mutex_lock(*a1);
  v4[1].__sig = pthread_self();
  v5 = *(*a2 + 32);
  v7 = (a1 + 16);
  v6 = *(a1 + 16);
  if (v6)
  {
    while (1)
    {
      while (1)
      {
        v8 = v6;
        v9 = *(v6 + 32);
        if (v5 >= v9)
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

      if (v9 >= v5)
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

    v10 = v8;
    v14 = v8 + 5;
    v12 = v8[5];
    v13 = v14[1];
    if (v12 != v13)
    {
      goto LABEL_17;
    }

LABEL_11:
    if (v12 != v13)
    {
      goto LABEL_45;
    }

    goto LABEL_28;
  }

  v8 = (a1 + 16);
LABEL_8:
  v10 = operator new(0x40uLL);
  v10[32] = v5;
  *(v10 + 6) = 0;
  *(v10 + 7) = 0;
  *(v10 + 5) = 0;
  *v10 = 0;
  *(v10 + 1) = 0;
  *(v10 + 2) = v8;
  *v7 = v10;
  v11 = **(a1 + 8);
  if (v11)
  {
    *(a1 + 8) = v11;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 16), v10);
  ++*(a1 + 24);
  v12 = *(v10 + 5);
  v13 = *(v10 + 6);
  if (v12 == v13)
  {
    goto LABEL_11;
  }

  do
  {
LABEL_17:
    v15 = v12[1];
    if (v15)
    {
      v16 = std::__shared_weak_count::lock(v15);
      v17 = *a2;
      if (v16)
      {
        v18 = *v12;
        if (atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          if (v17 == v18)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v19 = v16;
          (v16->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v19);
          if (v17 == v18)
          {
            goto LABEL_27;
          }
        }
      }

      else if (!v17)
      {
        goto LABEL_27;
      }
    }

    else if (!*a2)
    {
      goto LABEL_27;
    }

    v12 += 2;
  }

  while (v12 != v13);
  v12 = v13;
LABEL_27:
  v13 = *(v10 + 6);
  if (v12 == v13)
  {
LABEL_28:
    v20 = *a2;
    v21 = a2[1];
    v22 = v13;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 16), 1uLL, memory_order_relaxed);
      v22 = *(v10 + 6);
    }

    v23 = *(v10 + 7);
    if (v22 >= v23)
    {
      v25 = *(v10 + 5);
      v26 = v22 - v25;
      v27 = (v22 - v25) >> 4;
      v28 = v27 + 1;
      if ((v27 + 1) >> 60)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v29 = v23 - v25;
      if (v29 >> 3 > v28)
      {
        v28 = v29 >> 3;
      }

      if (v29 >= 0x7FFFFFFFFFFFFFF0)
      {
        v30 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v28;
      }

      if (v30)
      {
        v38 = v20;
        if (v30 >> 60)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v31 = operator new(16 * v30);
        v25 = *(v10 + 5);
        v26 = *(v10 + 6) - v25;
        v32 = v26 >> 4;
        v20 = v38;
      }

      else
      {
        v31 = 0;
        v32 = v27;
      }

      v33 = &v31[16 * v27];
      v34 = &v31[16 * v30];
      v35 = &v33[-16 * v32];
      *v33 = v20;
      v24 = v33 + 16;
      memcpy(v35, v25, v26);
      *(v10 + 5) = v35;
      *(v10 + 6) = v24;
      *(v10 + 7) = v34;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v22 = v20;
      *(v22 + 1) = v21;
      v24 = v22 + 16;
    }

    *(v10 + 6) = v24;
  }

LABEL_45:
  v36 = *a1;
  pthread_self();
  v36[1].__sig = 0;
  pthread_mutex_unlock(v36);
  return v12 == v13;
}

void sub_29632A8A0(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v4 = *v1;
  pthread_self();
  v4[1].__sig = 0;
  pthread_mutex_unlock(v4);
  _Unwind_Resume(a1);
}

void QMIControl::requestClientId_sync(void *a1, char a2)
{
  v45 = 0;
  v46 = 0;
  v4 = a1[10];
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    v46 = v5;
    if (v5)
    {
      v31 = a1[9];
      v45 = v31;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
  }

  v31 = 0;
LABEL_6:
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v43 = v6;
  v44 = v6;
  qmi::MutableMessageBase::MutableMessageBase(&v43);
  v39[0] = MEMORY[0x29EDCA5F8];
  v39[1] = 0x40000000;
  v7 = ___ZN10QMIControl20requestClientId_syncEN3qmi11ServiceTypeE_block_invoke;
  v40 = ___ZN10QMIControl20requestClientId_syncEN3qmi11ServiceTypeE_block_invoke;
  v41 = &__block_descriptor_tmp_19;
  v42 = a2;
  v8 = *(&v43 + 1);
  v9 = v44;
  v10 = *(&v43 + 1);
  if (*(&v43 + 1) != v44)
  {
    v10 = *(&v43 + 1);
    while (*(*v10 + 8) != 1)
    {
      if (++v10 == v44)
      {
        goto LABEL_14;
      }
    }
  }

  if (v10 == v44)
  {
LABEL_14:
    v14 = operator new(0x10uLL);
    v15 = v14;
    v14[4] = 1;
    *v14 = &unk_2A1D499A0;
    if (v9 >= *(&v44 + 1))
    {
      v17 = v9 - v8;
      v18 = (v9 - v8) >> 3;
      v19 = v18 + 1;
      if ((v18 + 1) >> 61)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v20 = *(&v44 + 1) - v8;
      if ((*(&v44 + 1) - v8) >> 2 > v19)
      {
        v19 = v20 >> 2;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFF8)
      {
        v21 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        if (v21 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v22 = operator new(8 * v21);
      }

      else
      {
        v22 = 0;
      }

      v23 = &v22[8 * v18];
      *v23 = v15;
      v16 = v23 + 8;
      memcpy(v22, v8, v17);
      *(&v43 + 1) = v22;
      *&v44 = v16;
      *(&v44 + 1) = &v22[8 * v21];
      if (v8)
      {
        operator delete(v8);
      }
    }

    else
    {
      *v9 = v14;
      v16 = v9 + 8;
    }

    v13 = v15 + 9;
    *&v44 = v16;
    v7 = v40;
  }

  else
  {
    v11 = ***v10;
    if (!v12)
    {
      __cxa_bad_cast();
    }

    v13 = v12 + 9;
  }

  v7(v39, v13);
  v25 = a1[7];
  v24 = a1[8];
  v37 = v25;
  if (!v24 || (v26 = std::__shared_weak_count::lock(v24), (v38 = v26) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v32[0] = MEMORY[0x29EDCA5F8];
  v32[1] = 1174405120;
  v32[2] = ___ZN10QMIControl20requestClientId_syncEN3qmi11ServiceTypeE_block_invoke_2;
  v32[3] = &__block_descriptor_tmp_21_0;
  v32[4] = v25;
  v33 = v26;
  atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  v36 = a2;
  v34 = v31;
  v35 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::TransactionQueue::send_sync(a1 + 13, &v43, 25000, v32);
  v27 = v35;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  v28 = v33;
  if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  v29 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v43);
  v30 = v46;
  if (v46)
  {
    if (!atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v30);
    }
  }
}

void sub_29632AD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  QMux::~QMux((v27 + 48));
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](v27 + 32);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a20);
  qmi::MutableMessageBase::~MutableMessageBase(&a27);
  QMux::~QMux((v28 - 104));
  _Unwind_Resume(a1);
}

void sub_29632AD50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  qmi::MutableMessageBase::~MutableMessageBase(&a27);
  QMux::~QMux((v27 - 104));
  _Unwind_Resume(a1);
}

void QMIControl::remove_sync(void *a1, uint64_t *a2)
{
  v4 = *(*a2 + 33);
  v5 = *(*a2 + 32);
  v6 = QMIControl::ClientIdRequests::removeRequestsForClient((a1 + 16), a2);
  if (v4 != 255)
  {
    if (!v6)
    {
LABEL_60:
      QMIControl::releaseClientId_sync(a1, v5, v4);
      return;
    }

    v48 = 0xAAAAAAAAAAAAAAAALL;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v47[7] = v7;
    v47[8] = v7;
    v47[5] = v7;
    v47[6] = v7;
    v47[3] = v7;
    v47[4] = v7;
    v47[1] = v7;
    v47[2] = v7;
    v46 = v7;
    v47[0] = v7;
    *__p = v7;
    v45 = v7;
    v42 = v7;
    v43 = v7;
    v40 = v7;
    v41 = v7;
    std::ostringstream::basic_ostringstream[abi:ne200100](&v40);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "QMI client has an ID and is waiting for one,", 44);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " client=", 8);
    v10 = MEMORY[0x29C259270](v9, v4);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " svc=", 5);
    v12 = MEMORY[0x29C259270](v11, v5);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " [", 2);
    v14 = *(*a2 + 31);
    if (v14 >= 0)
    {
      v15 = *a2 + 8;
    }

    else
    {
      v15 = *(*a2 + 8);
    }

    if (v14 >= 0)
    {
      v16 = *(*a2 + 31);
    }

    else
    {
      v16 = *(*a2 + 16);
    }

    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "]", 1);
    v38 = 0;
    v39 = 0;
    v19 = a1[10];
    if (v19)
    {
      v39 = std::__shared_weak_count::lock(v19);
      if (v39)
      {
        v38 = a1[9];
        if (v38)
        {
          if ((BYTE8(v46) & 0x10) != 0)
          {
            v31 = v46;
            if (v46 < *(&v43 + 1))
            {
              *&v46 = *(&v43 + 1);
              v31 = *(&v43 + 1);
            }

            v32 = v43;
            v20 = v31 - v43;
            if ((v31 - v43) > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_63;
            }
          }

          else
          {
            if ((BYTE8(v46) & 8) == 0)
            {
              v20 = 0;
              HIBYTE(v37) = 0;
              p_dst = &__dst;
              goto LABEL_51;
            }

            v32 = *(&v41 + 1);
            v20 = *(&v42 + 1) - *(&v41 + 1);
            if (*(&v42 + 1) - *(&v41 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
            {
LABEL_63:
              std::string::__throw_length_error[abi:ne200100]();
            }
          }

          if (v20 >= 0x17)
          {
            if ((v20 | 7) == 0x17)
            {
              v33 = 25;
            }

            else
            {
              v33 = (v20 | 7) + 1;
            }

            p_dst = operator new(v33);
            v36 = v20;
            v37 = v33 | 0x8000000000000000;
            __dst = p_dst;
          }

          else
          {
            HIBYTE(v37) = v20;
            p_dst = &__dst;
            if (!v20)
            {
              goto LABEL_51;
            }
          }

          memmove(p_dst, v32, v20);
LABEL_51:
          *(p_dst + v20) = 0;
          QMux::invokeReset(&v38, &__dst, 0);
LABEL_52:
          if (SHIBYTE(v37) < 0)
          {
            operator delete(__dst);
          }

          v34 = v39;
          if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v34->__on_zero_shared)(v34);
            std::__shared_weak_count::__release_weak(v34);
          }

          *&v40 = *MEMORY[0x29EDC9538];
          *(&v40 + *(v40 - 24)) = *(MEMORY[0x29EDC9538] + 24);
          *(&v40 + 1) = MEMORY[0x29EDC9570] + 16;
          if (SHIBYTE(v45) < 0)
          {
            operator delete(__p[1]);
          }

          *(&v40 + 1) = MEMORY[0x29EDC9568] + 16;
          std::locale::~locale(&v41);
          std::ostream::~ostream();
          MEMORY[0x29C259330](v47);
          goto LABEL_60;
        }
      }
    }

    if ((BYTE8(v46) & 0x10) != 0)
    {
      v27 = v46;
      if (v46 < *(&v43 + 1))
      {
        *&v46 = *(&v43 + 1);
        v27 = *(&v43 + 1);
      }

      v28 = v43;
      v25 = v27 - v43;
      if ((v27 - v43) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if ((BYTE8(v46) & 8) == 0)
      {
        v25 = 0;
        HIBYTE(v37) = 0;
        v26 = &__dst;
        goto LABEL_35;
      }

      v28 = *(&v41 + 1);
      v25 = *(&v42 + 1) - *(&v41 + 1);
      if (*(&v42 + 1) - *(&v41 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
      {
LABEL_45:
        std::string::__throw_length_error[abi:ne200100]();
      }
    }

    if (v25 >= 0x17)
    {
      if ((v25 | 7) == 0x17)
      {
        v29 = 25;
      }

      else
      {
        v29 = (v25 | 7) + 1;
      }

      v26 = operator new(v29);
      v36 = v25;
      v37 = v29 | 0x8000000000000000;
      __dst = v26;
    }

    else
    {
      HIBYTE(v37) = v25;
      v26 = &__dst;
      if (!v25)
      {
        goto LABEL_35;
      }
    }

    memmove(v26, v28, v25);
LABEL_35:
    *(v26 + v25) = 0;
    v30 = &__dst;
    if (v37 < 0)
    {
      v30 = __dst;
    }

    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMIControl.cpp", 0xC0, "false", "is not", "true", "%s", v18, v30);
    goto LABEL_52;
  }

  if (v6)
  {
    v22 = a1[12];
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN10QMIControl11remove_syncENSt3__110shared_ptrIN3qmi15QMuxClientIfaceEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_16_0;
    v23 = a2[1];
    block[4] = *a2;
    v50 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
    }

    dispatch_async(v22, block);
    v24 = v50;
    if (v50 && !atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }
  }
}

void sub_29632B2D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a15 < 0)
  {
    operator delete(__p);
    QMux::~QMux(&a16);
    std::ostringstream::~ostringstream(&a18);
    _Unwind_Resume(a1);
  }

  QMux::~QMux(&a16);
  std::ostringstream::~ostringstream(&a18);
  _Unwind_Resume(a1);
}

void sub_29632B324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

BOOL QMIControl::ClientIdRequests::removeRequestsForClient(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  pthread_mutex_lock(*a1);
  v4[1].__sig = pthread_self();
  v5 = *(*a2 + 32);
  v7 = (a1 + 16);
  v6 = *(a1 + 16);
  if (v6)
  {
    while (1)
    {
      while (1)
      {
        v8 = v6;
        v9 = *(v6 + 32);
        if (v5 >= v9)
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

      if (v9 >= v5)
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

    v10 = v8;
    v14 = v8 + 5;
    v12 = v8[5];
    v13 = v14[1];
    if (v12 != v13)
    {
      goto LABEL_17;
    }

LABEL_11:
    if (v12 == v13)
    {
      goto LABEL_40;
    }

    goto LABEL_28;
  }

  v8 = (a1 + 16);
LABEL_8:
  v10 = operator new(0x40uLL);
  v10[32] = v5;
  *(v10 + 6) = 0;
  *(v10 + 7) = 0;
  *(v10 + 5) = 0;
  *v10 = 0;
  *(v10 + 1) = 0;
  *(v10 + 2) = v8;
  *v7 = v10;
  v11 = **(a1 + 8);
  if (v11)
  {
    *(a1 + 8) = v11;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 16), v10);
  ++*(a1 + 24);
  v12 = *(v10 + 5);
  v13 = *(v10 + 6);
  if (v12 == v13)
  {
    goto LABEL_11;
  }

  do
  {
LABEL_17:
    v15 = v12[1];
    if (v15)
    {
      v16 = std::__shared_weak_count::lock(v15);
      v17 = *a2;
      if (v16)
      {
        v18 = *v12;
        if (atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          if (v17 == v18)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v19 = v16;
          (v16->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v19);
          if (v17 == v18)
          {
            goto LABEL_27;
          }
        }
      }

      else if (!v17)
      {
        goto LABEL_27;
      }
    }

    else if (!*a2)
    {
      goto LABEL_27;
    }

    v12 += 2;
  }

  while (v12 != v13);
  v12 = v13;
LABEL_27:
  v13 = *(v10 + 6);
  if (v12 != v13)
  {
LABEL_28:
    if (v12 + 2 == v13)
    {
      v25 = v13;
      v21 = v12;
    }

    else
    {
      v20 = v12;
      do
      {
        v23 = *(v20 + 1);
        v20[2] = 0;
        v20[3] = 0;
        v24 = v20[1];
        *v20 = v23;
        if (v24)
        {
          std::__shared_weak_count::__release_weak(v24);
        }

        v21 = v20 + 2;
        v22 = v20 + 4;
        v20 += 2;
      }

      while (v22 != v13);
      v25 = *(v10 + 6);
    }

    while (v25 != v21)
    {
      v26 = *(v25 - 1);
      if (v26)
      {
        std::__shared_weak_count::__release_weak(v26);
      }

      v25 -= 2;
    }

    *(v10 + 6) = v21;
  }

LABEL_40:
  v27 = *a1;
  pthread_self();
  v27[1].__sig = 0;
  pthread_mutex_unlock(v27);
  return v12 != v13;
}

void sub_29632B584(_Unwind_Exception *a1)
{
  v3 = *v1;
  pthread_self();
  v3[1].__sig = 0;
  pthread_mutex_unlock(v3);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c50_ZTSKNSt3__110shared_ptrIN3qmi15QMuxClientIfaceEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c50_ZTSKNSt3__110shared_ptrIN3qmi15QMuxClientIfaceEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void QMIControl::releaseClientId_sync(void *a1, char a2, char a3)
{
  v47 = 0;
  v48 = 0;
  v6 = a1[10];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    v48 = v7;
    if (v7)
    {
      v8 = a1[9];
      v47 = v8;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = 0;
LABEL_6:
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v45 = v9;
  v46 = v9;
  qmi::MutableMessageBase::MutableMessageBase(&v45);
  v40[0] = MEMORY[0x29EDCA5F8];
  v40[1] = 0x40000000;
  v10 = ___ZN10QMIControl20releaseClientId_syncEN3qmi11ServiceTypeEh_block_invoke;
  v41 = ___ZN10QMIControl20releaseClientId_syncEN3qmi11ServiceTypeEh_block_invoke;
  v42 = &__block_descriptor_tmp_23;
  v43 = a2;
  v44 = a3;
  v11 = *(&v45 + 1);
  v12 = v46;
  v13 = *(&v45 + 1);
  if (*(&v45 + 1) != v46)
  {
    v13 = *(&v45 + 1);
    while (*(*v13 + 8) != 1)
    {
      if (++v13 == v46)
      {
        goto LABEL_14;
      }
    }
  }

  if (v13 == v46)
  {
LABEL_14:
    v17 = operator new(0x10uLL);
    v18 = v17;
    v17[4] = 1;
    *v17 = &unk_2A1D499F0;
    *(v17 + 10) = 0;
    if (v12 >= *(&v46 + 1))
    {
      v20 = v12 - v11;
      v21 = (v12 - v11) >> 3;
      v22 = v21 + 1;
      if ((v21 + 1) >> 61)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v23 = *(&v46 + 1) - v11;
      if ((*(&v46 + 1) - v11) >> 2 > v22)
      {
        v22 = v23 >> 2;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF8)
      {
        v24 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v22;
      }

      if (v24)
      {
        if (v24 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v25 = operator new(8 * v24);
      }

      else
      {
        v25 = 0;
      }

      v26 = &v25[8 * v21];
      *v26 = v18;
      v19 = v26 + 8;
      memcpy(v25, v11, v20);
      *(&v45 + 1) = v25;
      *&v46 = v19;
      *(&v46 + 1) = &v25[8 * v24];
      if (v11)
      {
        operator delete(v11);
      }
    }

    else
    {
      *v12 = v17;
      v19 = v12 + 8;
    }

    v16 = v18 + 9;
    *&v46 = v19;
    v10 = v41;
  }

  else
  {
    v14 = ***v13;
    if (!v15)
    {
      __cxa_bad_cast();
    }

    v16 = v15 + 9;
  }

  v10(v40, v16);
  v28 = a1[7];
  v27 = a1[8];
  v38 = v28;
  if (!v27 || (v29 = std::__shared_weak_count::lock(v27), (v39 = v29) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v34[0] = MEMORY[0x29EDCA5F8];
  v34[1] = 1174405120;
  v34[2] = ___ZN10QMIControl20releaseClientId_syncEN3qmi11ServiceTypeEh_block_invoke_2;
  v34[3] = &__block_descriptor_tmp_24;
  v34[4] = a1;
  v34[5] = v28;
  v35 = v29;
  atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  v36 = v8;
  v37 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::TransactionQueue::send_sync(a1 + 13, &v45, 25000, v34);
  v30 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

  v31 = v35;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  v32 = v39;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v45);
  v33 = v48;
  if (v48)
  {
    if (!atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v33->__on_zero_shared)(v33);
      std::__shared_weak_count::__release_weak(v33);
    }
  }
}