uint64_t std::__function::__func<FSModuleDAL::registerEventHandlers_sync(void)::$_1,std::allocator<FSModuleDAL::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN11FSModuleDAL26registerEventHandlers_syncEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN11FSModuleDAL26registerEventHandlers_syncEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN11FSModuleDAL26registerEventHandlers_syncEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN11FSModuleDAL26registerEventHandlers_syncEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<FSModuleDAL>::execute_wrapped<FSModuleDAL::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(FSModuleDAL::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<FSModuleDAL::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<FSModuleDAL::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  __p = *a1;
  v1 = (*a1)->__vftable;
  BYTE1(v1[23].__get_deleter) = 0;
  get_deleter = v1[2].__get_deleter;
  if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I Reset Detected", buf, 2u);
  }

  v3 = pthread_mutex_lock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  if (!xmmword_2A13995D8)
  {
    HSFilerRT::create_default_global(buf, v3);
    v12 = *buf;
    memset(buf, 0, sizeof(buf));
    v13 = *(&xmmword_2A13995D8 + 1);
    xmmword_2A13995D8 = v12;
    if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

    v14 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
      v5 = *(&xmmword_2A13995D8 + 1);
      v4 = xmmword_2A13995D8 == 0;
      if (!*(&xmmword_2A13995D8 + 1))
      {
        goto LABEL_6;
      }
    }

    else
    {
      v5 = *(&xmmword_2A13995D8 + 1);
      v4 = xmmword_2A13995D8 == 0;
      if (!*(&xmmword_2A13995D8 + 1))
      {
        goto LABEL_6;
      }
    }

    goto LABEL_5;
  }

  v4 = 0;
  v5 = *(&xmmword_2A13995D8 + 1);
  if (*(&xmmword_2A13995D8 + 1))
  {
LABEL_5:
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_6:
  pthread_mutex_unlock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if (v4)
    {
      goto LABEL_30;
    }
  }

  else if (v4)
  {
    goto LABEL_30;
  }

  v6 = pthread_mutex_lock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  v7 = xmmword_2A13995D8;
  if (!xmmword_2A13995D8)
  {
    HSFilerRT::create_default_global(buf, v6);
    v8 = *buf;
    memset(buf, 0, sizeof(buf));
    v9 = *(&xmmword_2A13995D8 + 1);
    xmmword_2A13995D8 = v8;
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v10 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v7 = xmmword_2A13995D8;
  }

  v11 = *(&xmmword_2A13995D8 + 1);
  if (*(&xmmword_2A13995D8 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A13995D8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  HSFilerRT::basebandResetEventHandler(v7);
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

LABEL_30:
  if (__p)
  {
    shared_owners = __p->__shared_owners_;
    if (shared_owners)
    {
      dispatch_group_leave(shared_owners);
      v16 = __p->__shared_owners_;
      if (v16)
      {
        dispatch_release(v16);
      }
    }

    operator delete(__p);
  }

  v17 = a1;
  if (a1)
  {
    v18 = a1[2];
    if (v18)
    {
      if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
        v17 = a1;
      }
    }

    operator delete(v17);
  }
}

void sub_2972DC5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  pthread_mutex_unlock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<FSModuleDAL::registerEventHandlers_sync(void)::$_2,std::allocator<FSModuleDAL::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E366D8;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<FSModuleDAL::registerEventHandlers_sync(void)::$_2,std::allocator<FSModuleDAL::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E366D8;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<FSModuleDAL::registerEventHandlers_sync(void)::$_2,std::allocator<FSModuleDAL::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E366D8;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<FSModuleDAL::registerEventHandlers_sync(void)::$_2,std::allocator<FSModuleDAL::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E366D8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<FSModuleDAL::registerEventHandlers_sync(void)::$_2,std::allocator<FSModuleDAL::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<FSModuleDAL::registerEventHandlers_sync(void)::$_2,std::allocator<FSModuleDAL::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<FSModuleDAL::registerEventHandlers_sync(void)::$_2,std::allocator<FSModuleDAL::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (a1[2])
      {
        if (v4)
        {
          dispatch_retain(v4);
          dispatch_group_enter(v4);
        }

        if (v5)
        {
          xpc_retain(v5);
          v10 = v5;
          v11 = v7[10];
          if (!v11)
          {
LABEL_21:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v10 = xpc_null_create();
          v11 = v7[10];
          if (!v11)
          {
            goto LABEL_21;
          }
        }

        v12 = v7[9];
        v13 = std::__shared_weak_count::lock(v11);
        if (!v13)
        {
          goto LABEL_21;
        }

        v14 = v13;
        v15 = operator new(0x18uLL);
        *v15 = v7;
        v15[1] = v4;
        v15[2] = v10;
        v16 = xpc_null_create();
        v17 = v7[11];
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        v18 = operator new(0x18uLL);
        *v18 = v15;
        v18[1] = v12;
        v18[2] = v14;
        dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<FSModuleDAL>::execute_wrapped<FSModuleDAL::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(FSModuleDAL::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<FSModuleDAL::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<FSModuleDAL::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }

        xpc_release(v16);
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

uint64_t std::__function::__func<FSModuleDAL::registerEventHandlers_sync(void)::$_2,std::allocator<FSModuleDAL::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN11FSModuleDAL26registerEventHandlers_syncEvE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN11FSModuleDAL26registerEventHandlers_syncEvE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN11FSModuleDAL26registerEventHandlers_syncEvE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN11FSModuleDAL26registerEventHandlers_syncEvE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<FSModuleDAL>::execute_wrapped<FSModuleDAL::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(FSModuleDAL::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<FSModuleDAL::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<FSModuleDAL::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v23 = *a1;
  v1 = (*a1)->__vftable;
  get_deleter = v1[2].__get_deleter;
  if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v1[24].__get_deleter;
    *buf = 67109120;
    *&buf[4] = v3;
    _os_log_impl(&dword_297288000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I syncs requested: %u", buf, 8u);
    get_deleter = v1[2].__get_deleter;
  }

  if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
  {
    get_deleter_high = HIDWORD(v1[24].__get_deleter);
    *buf = 67109120;
    *&buf[4] = get_deleter_high;
    _os_log_impl(&dword_297288000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I syncs completed: %u", buf, 8u);
  }

  v5 = pthread_mutex_lock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  if (!xmmword_2A13995D8)
  {
    HSFilerRT::create_default_global(buf, v5);
    v14 = *buf;
    memset(buf, 0, sizeof(buf));
    v15 = *(&xmmword_2A13995D8 + 1);
    xmmword_2A13995D8 = v14;
    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    v16 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
      v7 = *(&xmmword_2A13995D8 + 1);
      v6 = xmmword_2A13995D8 == 0;
      if (!*(&xmmword_2A13995D8 + 1))
      {
        goto LABEL_8;
      }
    }

    else
    {
      v7 = *(&xmmword_2A13995D8 + 1);
      v6 = xmmword_2A13995D8 == 0;
      if (!*(&xmmword_2A13995D8 + 1))
      {
        goto LABEL_8;
      }
    }

    goto LABEL_7;
  }

  v6 = 0;
  v7 = *(&xmmword_2A13995D8 + 1);
  if (*(&xmmword_2A13995D8 + 1))
  {
LABEL_7:
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_8:
  pthread_mutex_unlock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if (v6)
    {
      goto LABEL_32;
    }
  }

  else if (v6)
  {
    goto LABEL_32;
  }

  v8 = pthread_mutex_lock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  v9 = xmmword_2A13995D8;
  if (!xmmword_2A13995D8)
  {
    HSFilerRT::create_default_global(buf, v8);
    v10 = *buf;
    memset(buf, 0, sizeof(buf));
    v11 = *(&xmmword_2A13995D8 + 1);
    xmmword_2A13995D8 = v10;
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

    v9 = xmmword_2A13995D8;
  }

  v13 = *(&xmmword_2A13995D8 + 1);
  if (*(&xmmword_2A13995D8 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A13995D8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  HSFilerRT::dumpState(v9);
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_32:
  if (v23)
  {
    xpc_release(v23->__shared_weak_owners_);
    v23->__shared_weak_owners_ = 0;
    shared_owners = v23->__shared_owners_;
    if (shared_owners)
    {
      dispatch_group_leave(shared_owners);
      v18 = v23->__shared_owners_;
      if (v18)
      {
        dispatch_release(v18);
      }
    }

    operator delete(v23);
  }

  v19 = a1;
  if (a1)
  {
    v20 = a1[2];
    if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
      v19 = a1;
    }

    operator delete(v19);
  }

  v21 = *MEMORY[0x29EDCA608];
}

void sub_2972DCE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  pthread_mutex_unlock(&ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance);
  std::unique_ptr<FSModuleDAL::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<FSModuleDAL::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<FSModuleDAL::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<FSModuleDAL::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 16));
    *(v1 + 16) = 0;
    v3 = *(v1 + 8);
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = *(v1 + 8);
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::detail::group_notify<FSModuleDAL::requestFSSync_sync(unsigned int,BOOL,FSModuleDAL::file)::$_0>(dispatch_group_s *,dispatch_queue_s *,FSModuleDAL::requestFSSync_sync(unsigned int,BOOL,FSModuleDAL::file)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    v3 = *__p;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (__p[1])
      {
        ++*(v3 + 984);
        v8[0] = MEMORY[0x29EDCA5F8];
        v8[1] = 0x40000000;
        v8[2] = ___ZZN11FSModuleDAL18requestFSSync_syncEjbNS_4fileEENK3__0clEv_block_invoke;
        v8[3] = &__block_descriptor_tmp_92;
        v8[4] = v3;
        v9 = *(__p + 9);
        v10 = *(__p + 32);
        v11 = *(__p + 40);
        ctu::SharedSynchronizable<FSModuleDAL>::execute_wrapped((v3 + 72), v8);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  v6 = __p[3];
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = __p[2];
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(__p);
}

void ___ZZN11FSModuleDAL18requestFSSync_syncEjbNS_4fileEENK3__0clEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v1[245] = *(a1 + 40);
  FSModuleDAL::singleFlushOperation_sync(v1, *(a1 + 44), *(a1 + 45));
}

void *__copy_helper_block_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t __cxx_global_var_init_61()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t __cxx_global_var_init_62()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMServer>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t __cxx_global_var_init_63()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<HSFilerRT>::~PthreadMutexGuardPolicy, &ctu::Singleton<HSFilerRT,HSFilerRT,ctu::PthreadMutexGuardPolicy<HSFilerRT>>::sInstance, &dword_297288000);
  }

  return result;
}

void DeviceHistoryDB::DeviceHistoryDB(DeviceHistoryDB *this)
{
  *this = &unk_2A1E36788;
  v2 = this + 8;
  ctu::OsLogContext::OsLogContext(v3, "com.apple.telephony.abm", "DeviceHistroyDB");
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26DE70](v2, v4);
  MEMORY[0x29C26DE80](v4);
  ctu::OsLogContext::~OsLogContext(v3);
  *this = &unk_2A1E36788;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  DeviceHistoryDB::initFromDisk(this);
}

void sub_2972DD278(_Unwind_Exception *a1)
{
  std::vector<_DeviceHistoryItem>::~vector[abi:ne200100](v2);
  MEMORY[0x29C26DE80](v1);
  _Unwind_Resume(a1);
}

void DeviceHistoryDB::initFromDisk(DeviceHistoryDB *this)
{
  v37 = 0;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v2 = off_2A1399498;
  if (!off_2A1399498)
  {
    SharedData::create_default_global(&__dst);
    v3 = __dst;
    __dst = 0uLL;
    v4 = *(&off_2A1399498 + 1);
    off_2A1399498 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&__dst + 1);
    if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A1399498;
  }

  v33[3] = v2;
  v33[4] = *(&off_2A1399498 + 1);
  if (*(&off_2A1399498 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v6 = *MEMORY[0x29EDBE890];
  v7 = strlen(*MEMORY[0x29EDBE890]);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v7 | 7) + 1;
    }

    p_dst = operator new(v10);
    *(&__dst + 1) = v8;
    *v28 = v10 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_19;
  }

  v28[7] = v7;
  p_dst = &__dst;
  if (v7)
  {
LABEL_19:
    memmove(p_dst, v6, v8);
  }

  *(p_dst + v8) = 0;
  os_unfair_lock_lock(v2 + 10);
  Preferences::getPreference<__CFArray const*>(v2, &__dst, &v37);
  os_unfair_lock_unlock(v2 + 10);
  if ((v28[7] & 0x80000000) != 0)
  {
    operator delete(__dst);
  }

  v11 = v33[4];
  if (v33[4] && !atomic_fetch_add(v33[4] + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    v12 = v37;
    v36 = v37;
    if (!v37)
    {
      return;
    }
  }

  else
  {
    v12 = v37;
    v36 = v37;
    if (!v37)
    {
      return;
    }
  }

  CFRetain(v12);
  Count = CFArrayGetCount(v12);
  v14 = Count;
  if (Count)
  {
    v15 = 0;
    v26 = *MEMORY[0x29EDBE930];
    v25 = *MEMORY[0x29EDBE988];
    v16 = *MEMORY[0x29EDBEC08];
    v17 = *MEMORY[0x29EDBEC00];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v12, v15);
      v19 = ValueAtIndex;
      if (ValueAtIndex && (v20 = CFGetTypeID(ValueAtIndex), v20 == CFDictionaryGetTypeID()))
      {
        v35 = v19;
        CFRetain(v19);
      }

      else
      {
        v19 = 0;
        v35 = 0;
      }

      v34[0] = 0xAAAAAAAAAAAAAAAALL;
      v34[1] = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(v34, v19);
      memset(&v33[3], 170, 24);
      __dst = 0uLL;
      *v28 = 0;
      ctu::cf::MakeCFString::MakeCFString(v33, v26);
      ctu::cf::map_adapter::getString();
      MEMORY[0x29C26DF80](v33);
      if ((v28[7] & 0x80000000) != 0)
      {
        operator delete(__dst);
      }

      memset(v33, 170, 24);
      __dst = 0uLL;
      *v28 = 0;
      ctu::cf::MakeCFString::MakeCFString(v32, v25);
      ctu::cf::map_adapter::getString();
      MEMORY[0x29C26DF80](v32);
      if ((v28[7] & 0x80000000) != 0)
      {
        operator delete(__dst);
      }

      memset(v32, 170, sizeof(v32));
      __dst = 0uLL;
      *v28 = 0;
      ctu::cf::MakeCFString::MakeCFString(v31, v16);
      ctu::cf::map_adapter::getString();
      MEMORY[0x29C26DF80](v31);
      if ((v28[7] & 0x80000000) != 0)
      {
        operator delete(__dst);
      }

      memset(v31, 170, sizeof(v31));
      __dst = 0uLL;
      *v28 = 0;
      ctu::cf::MakeCFString::MakeCFString(v38, v17);
      ctu::cf::map_adapter::getString();
      MEMORY[0x29C26DF80](v38);
      if ((v28[7] & 0x80000000) != 0)
      {
        operator delete(__dst);
        *&v22 = 0xAAAAAAAAAAAAAAAALL;
        *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *__p = v22;
        *&__p[16] = v22;
        *&v28[16] = v22;
        *v29 = v22;
        __dst = v22;
        *v28 = v22;
        if ((SHIBYTE(v33[2]) & 0x80000000) == 0)
        {
LABEL_40:
          __dst = *v33;
          *v28 = v33[2];
          goto LABEL_43;
        }
      }

      else
      {
        *&v21 = 0xAAAAAAAAAAAAAAAALL;
        *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *__p = v21;
        *&__p[16] = v21;
        *&v28[16] = v21;
        *v29 = v21;
        __dst = v21;
        *v28 = v21;
        if ((SHIBYTE(v33[2]) & 0x80000000) == 0)
        {
          goto LABEL_40;
        }
      }

      std::string::__init_copy_ctor_external(&__dst, v33[0], v33[1]);
LABEL_43:
      if (SHIBYTE(v32[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v28[8], v32[0], v32[1]);
      }

      else
      {
        *&v28[8] = *v32;
        *&v28[24] = v32[2];
      }

      if (SHIBYTE(v31[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v29, v31[0], v31[1]);
      }

      else
      {
        *v29 = *v31;
        *__p = v31[2];
      }

      if (SHIBYTE(v33[5]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], v33[3], v33[4]);
      }

      else
      {
        *&__p[8] = *&v33[3];
        *&__p[24] = v33[5];
      }

      v23 = *(this + 3);
      if (v23 >= *(this + 4))
      {
        v24 = std::vector<_DeviceHistoryItem>::__emplace_back_slow_path<_DeviceHistoryItem const&>(this + 2, &__dst);
      }

      else
      {
        _DeviceHistoryItem::_DeviceHistoryItem(*(this + 3), &__dst);
        v24 = v23 + 4;
        *(this + 3) = v23 + 4;
      }

      *(this + 3) = v24;
      if ((__p[31] & 0x80000000) != 0)
      {
        operator delete(*&__p[8]);
        if ((__p[7] & 0x80000000) == 0)
        {
LABEL_57:
          if ((v28[31] & 0x80000000) == 0)
          {
            goto LABEL_58;
          }

          goto LABEL_67;
        }
      }

      else if ((__p[7] & 0x80000000) == 0)
      {
        goto LABEL_57;
      }

      operator delete(v29[0]);
      if ((v28[31] & 0x80000000) == 0)
      {
LABEL_58:
        if ((v28[7] & 0x80000000) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_68;
      }

LABEL_67:
      operator delete(*&v28[8]);
      if ((v28[7] & 0x80000000) == 0)
      {
LABEL_59:
        if ((SHIBYTE(v31[2]) & 0x80000000) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_69;
      }

LABEL_68:
      operator delete(__dst);
      if ((SHIBYTE(v31[2]) & 0x80000000) == 0)
      {
LABEL_60:
        if ((SHIBYTE(v32[2]) & 0x80000000) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_70;
      }

LABEL_69:
      operator delete(v31[0]);
      if ((SHIBYTE(v32[2]) & 0x80000000) == 0)
      {
LABEL_61:
        if ((SHIBYTE(v33[2]) & 0x80000000) == 0)
        {
          goto LABEL_62;
        }

        goto LABEL_71;
      }

LABEL_70:
      operator delete(v32[0]);
      if ((SHIBYTE(v33[2]) & 0x80000000) == 0)
      {
LABEL_62:
        if ((SHIBYTE(v33[5]) & 0x80000000) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_72;
      }

LABEL_71:
      operator delete(v33[0]);
      if ((SHIBYTE(v33[5]) & 0x80000000) == 0)
      {
LABEL_63:
        MEMORY[0x29C26DFC0](v34);
        if (!v19)
        {
          goto LABEL_27;
        }

LABEL_73:
        CFRelease(v19);
        goto LABEL_27;
      }

LABEL_72:
      operator delete(v33[3]);
      MEMORY[0x29C26DFC0](v34);
      if (v19)
      {
        goto LABEL_73;
      }

LABEL_27:
      ++v15;
    }

    while (v14 != v15);
  }

  CFRelease(v12);
}

void sub_2972DD928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a38 & 0x80000000) == 0)
  {
LABEL_6:
    if (a44 < 0)
    {
      operator delete(a39);
    }

    if (a50 < 0)
    {
      operator delete(a45);
    }

    if (*(v50 - 137) < 0)
    {
      operator delete(*(v50 - 160));
    }

    MEMORY[0x29C26DFC0](v50 - 136);
    ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef((v50 - 120));
    ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef((v50 - 112));
    _Unwind_Resume(a1);
  }

  operator delete(a33);
  goto LABEL_6;
}

void DeviceHistoryDB::addDeviceHistory(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = (a1 + 16);
  if (*(a1 + 16) == v3)
  {
    goto LABEL_15;
  }

  v5 = SHIBYTE(v3[-3].__r_.__value_.__r.__words[2]);
  if (v5 >= 0)
  {
    size = HIBYTE(v3[-3].__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v3[-3].__r_.__value_.__l.__size_;
  }

  v7 = *(a2 + 47);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 32);
  }

  if (size != v7)
  {
LABEL_15:
    *(a1 + 40) = 1;
    if (v3 >= *(a1 + 32))
    {
LABEL_14:
      v13 = std::vector<_DeviceHistoryItem>::__emplace_back_slow_path<_DeviceHistoryItem const&>(v4, a2);
      goto LABEL_17;
    }
  }

  else
  {
    if (v5 >= 0)
    {
      data = v3 - 3;
    }

    else
    {
      data = v3[-3].__r_.__value_.__l.__data_;
    }

    v10 = (a2 + 24);
    if (v8 < 0)
    {
      v10 = *(a2 + 24);
    }

    v11 = a2;
    v12 = memcmp(data, v10, size);
    a2 = v11;
    *(a1 + 40) = v12 != 0;
    if (v3 >= *(a1 + 32))
    {
      goto LABEL_14;
    }
  }

  _DeviceHistoryItem::_DeviceHistoryItem(v3, a2);
  v13 = v3 + 4;
  *(a1 + 24) = v3 + 4;
LABEL_17:
  *(a1 + 24) = v13;

  DeviceHistoryDB::commitToDisk(a1);
}

void DeviceHistoryDB::commitToDisk(DeviceHistoryDB *this)
{
  cf = 0;
  v2 = *MEMORY[0x29EDB8ED8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  v4 = Mutable;
  if (Mutable)
  {
    cf = Mutable;
  }

  v6 = *(this + 2);
  v5 = *(this + 3);
  if (v6 != v5)
  {
    v7 = *MEMORY[0x29EDBE930];
    v8 = *MEMORY[0x29EDBE988];
    v9 = *MEMORY[0x29EDBEC08];
    v10 = *MEMORY[0x29EDBEC00];
    v11 = MEMORY[0x29EDB9020];
    do
    {
      v13 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x29EDB9010], v11);
      if (*(v6 + 95) < 0)
      {
        std::string::__init_copy_ctor_external(&__dst, *(v6 + 9), *(v6 + 10));
      }

      else
      {
        __dst = *(v6 + 3);
      }

      ctu::cf::insert<char const*,std::string>(v13, v7, &__dst, v2, v12);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if ((*(v6 + 23) & 0x80000000) == 0)
        {
LABEL_11:
          v15 = *v6;
          __dst.__r_.__value_.__r.__words[2] = *(v6 + 2);
          *&__dst.__r_.__value_.__l.__data_ = v15;
          goto LABEL_14;
        }
      }

      else if ((*(v6 + 23) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      std::string::__init_copy_ctor_external(&__dst, *v6, *(v6 + 1));
LABEL_14:
      ctu::cf::insert<char const*,std::string>(v13, v8, &__dst, v2, v14);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if ((*(v6 + 47) & 0x80000000) == 0)
        {
LABEL_16:
          __dst = *(v6 + 1);
          goto LABEL_19;
        }
      }

      else if ((*(v6 + 47) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      std::string::__init_copy_ctor_external(&__dst, *(v6 + 3), *(v6 + 4));
LABEL_19:
      ctu::cf::insert<char const*,std::string>(v13, v9, &__dst, v2, v16);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (*(v6 + 71) < 0)
        {
LABEL_23:
          std::string::__init_copy_ctor_external(&__dst, *(v6 + 6), *(v6 + 7));
          goto LABEL_24;
        }
      }

      else if (*(v6 + 71) < 0)
      {
        goto LABEL_23;
      }

      __dst = *(v6 + 2);
LABEL_24:
      ctu::cf::insert<char const*,std::string>(v13, v10, &__dst, v2, v17);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      CFArrayAppendValue(v4, v13);
      if (v13)
      {
        CFRelease(v13);
      }

      v6 += 6;
    }

    while (v6 != v5);
  }

  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v18 = off_2A1399498;
  if (!off_2A1399498)
  {
    SharedData::create_default_global(&__dst);
    v19 = *&__dst.__r_.__value_.__l.__data_;
    *&__dst.__r_.__value_.__l.__data_ = 0uLL;
    v20 = *(&off_2A1399498 + 1);
    off_2A1399498 = v19;
    if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }

    size = __dst.__r_.__value_.__l.__size_;
    if (__dst.__r_.__value_.__l.__size_ && !atomic_fetch_add((__dst.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }

    v18 = off_2A1399498;
  }

  v29 = *(&off_2A1399498 + 1);
  if (*(&off_2A1399498 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v22 = *MEMORY[0x29EDBE890];
  v23 = strlen(*MEMORY[0x29EDBE890]);
  if (v23 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v24 = v23;
  if (v23 >= 0x17)
  {
    if ((v23 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v23 | 7) + 1;
    }

    p_dst = operator new(v26);
    __dst.__r_.__value_.__l.__size_ = v24;
    __dst.__r_.__value_.__r.__words[2] = v26 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_46;
  }

  *(&__dst.__r_.__value_.__s + 23) = v23;
  p_dst = &__dst;
  if (v23)
  {
LABEL_46:
    memmove(p_dst, v22, v24);
  }

  *(p_dst + v24) = 0;
  os_unfair_lock_lock(v18 + 10);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &__dst;
  }

  else
  {
    v27 = __dst.__r_.__value_.__r.__words[0];
  }

  ctu::cf::MakeCFString::MakeCFString(&v32, v27);
  ctu::cf::plist_adapter::set<__CFArray *>(v18, cf, v32, 1);
  MEMORY[0x29C26DF80](&v32);
  os_unfair_lock_unlock(v18 + 10);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (!v29 || atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v28 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_55;
  }

  (v29->__on_zero_shared)(v29);
  std::__shared_weak_count::__release_weak(v29);
  v28 = cf;
  if (cf)
  {
LABEL_55:
    CFRelease(v28);
  }
}

void sub_2972DE06C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(&a12);
  _Unwind_Resume(a1);
}

void DeviceHistoryDB::getDeviceHistory(uint64_t a1, uint64_t a2)
{
  if (a1 + 16 != a2)
  {
    std::vector<_DeviceHistoryItem>::__assign_with_size[abi:ne200100]<_DeviceHistoryItem*,_DeviceHistoryItem*>(a2, *(a1 + 16), *(a1 + 24), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24) - *(a1 + 16)) >> 5));
  }
}

void ***std::vector<_DeviceHistoryItem>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_15:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        if ((*(v3 - 25) & 0x80000000) == 0)
        {
LABEL_7:
          if ((*(v3 - 49) & 0x80000000) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_12;
        }
      }

      else if ((*(v3 - 25) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      operator delete(*(v3 - 6));
      if ((*(v3 - 49) & 0x80000000) == 0)
      {
LABEL_8:
        v5 = v3 - 12;
        if (*(v3 - 73) < 0)
        {
          goto LABEL_13;
        }

        goto LABEL_4;
      }

LABEL_12:
      operator delete(*(v3 - 9));
      v5 = v3 - 12;
      if (*(v3 - 73) < 0)
      {
LABEL_13:
        operator delete(*v5);
      }

LABEL_4:
      v3 = v5;
      if (v5 == v2)
      {
        v4 = *a1;
        goto LABEL_15;
      }
    }
  }

  return a1;
}

std::string *std::vector<_DeviceHistoryItem>::__emplace_back_slow_path<_DeviceHistoryItem const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v5 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 > 0x2AAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v6 = a2;
    v7 = operator new(96 * v5);
    a2 = v6;
  }

  else
  {
    v7 = 0;
  }

  v18 = &v7[96 * v2];
  v19 = &v7[96 * v5];
  _DeviceHistoryItem::_DeviceHistoryItem(v18, a2);
  v8 = *a1;
  v9 = a1[1];
  v10 = v18 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v18 + *a1 - v9;
    do
    {
      v13 = *v11;
      *(v12 + 2) = *(v11 + 2);
      *v12 = v13;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *v11 = 0;
      v14 = *(v11 + 24);
      *(v12 + 5) = *(v11 + 5);
      *(v12 + 24) = v14;
      *(v11 + 4) = 0;
      *(v11 + 5) = 0;
      *(v11 + 3) = 0;
      v15 = v11[3];
      *(v12 + 8) = *(v11 + 8);
      *(v12 + 3) = v15;
      *(v11 + 7) = 0;
      *(v11 + 8) = 0;
      *(v11 + 6) = 0;
      v16 = *(v11 + 72);
      *(v12 + 11) = *(v11 + 11);
      *(v12 + 72) = v16;
      *(v11 + 9) = 0;
      *(v11 + 10) = 0;
      *(v11 + 11) = 0;
      v11 += 6;
      v12 += 96;
    }

    while (v11 != v9);
    while (1)
    {
      if (*(v8 + 95) < 0)
      {
        operator delete(*(v8 + 72));
        if ((*(v8 + 71) & 0x80000000) == 0)
        {
LABEL_18:
          if ((*(v8 + 47) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_23;
        }
      }

      else if ((*(v8 + 71) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      operator delete(*(v8 + 48));
      if ((*(v8 + 47) & 0x80000000) == 0)
      {
LABEL_19:
        if (*(v8 + 23) < 0)
        {
          goto LABEL_24;
        }

        goto LABEL_15;
      }

LABEL_23:
      operator delete(*(v8 + 24));
      if (*(v8 + 23) < 0)
      {
LABEL_24:
        operator delete(*v8);
      }

LABEL_15:
      v8 += 96;
      if (v8 == v9)
      {
        v8 = *a1;
        break;
      }
    }
  }

  *a1 = v10;
  a1[1] = &v18[4];
  a1[2] = v19;
  if (v8)
  {
    operator delete(v8);
  }

  return v18 + 4;
}

void sub_2972DE434(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<_DeviceHistoryItem>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void _DeviceHistoryItem::_DeviceHistoryItem(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 24);
      this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
      *&this[1].__r_.__value_.__l.__data_ = v5;
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
LABEL_6:
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    this[3].__r_.__value_.__r.__words[2] = *(a2 + 11);
    *&this[3].__r_.__value_.__l.__data_ = v7;
  }
}

void sub_2972DE520(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
    if ((*(v1 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v1 + 47) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 24));
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<_DeviceHistoryItem>,_DeviceHistoryItem*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
          if ((*(v4 - 25) & 0x80000000) == 0)
          {
LABEL_7:
            if ((*(v4 - 49) & 0x80000000) == 0)
            {
              goto LABEL_8;
            }

            goto LABEL_12;
          }
        }

        else if ((*(v4 - 25) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        operator delete(*(v4 - 6));
        if ((*(v4 - 49) & 0x80000000) == 0)
        {
LABEL_8:
          v7 = v4 - 12;
          if (*(v4 - 73) < 0)
          {
            goto LABEL_13;
          }

          goto LABEL_4;
        }

LABEL_12:
        operator delete(*(v4 - 9));
        v7 = v4 - 12;
        if (*(v4 - 73) < 0)
        {
LABEL_13:
          operator delete(*v7);
        }

LABEL_4:
        v4 = v7;
      }

      while (v7 != v5);
    }
  }

  return a1;
}

uint64_t std::__split_buffer<_DeviceHistoryItem>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
      if ((*(i - 25) & 0x80000000) == 0)
      {
LABEL_6:
        if (*(i - 49) < 0)
        {
          goto LABEL_11;
        }

        goto LABEL_7;
      }
    }

    else if ((*(i - 25) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    operator delete(*(i - 48));
    if (*(i - 49) < 0)
    {
LABEL_11:
      operator delete(*(i - 72));
      if ((*(i - 73) & 0x80000000) == 0)
      {
        continue;
      }

      goto LABEL_12;
    }

LABEL_7:
    if ((*(i - 73) & 0x80000000) == 0)
    {
      continue;
    }

LABEL_12:
    operator delete(*(i - 96));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void _DeviceHistoryItem::~_DeviceHistoryItem(void **this)
{
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
    if ((*(this + 71) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 47) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(this + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[6]);
  if ((*(this + 47) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(this + 23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_9:
    operator delete(*this);
    return;
  }

LABEL_8:
  operator delete(this[3]);
  if (*(this + 23) < 0)
  {
    goto LABEL_9;
  }
}

void std::vector<_DeviceHistoryItem>::__assign_with_size[abi:ne200100]<_DeviceHistoryItem*,_DeviceHistoryItem*>(uint64_t a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 5) < a4)
  {
    if (!v8)
    {
      goto LABEL_40;
    }

    v9 = a4;
    v10 = *(a1 + 8);
    v11 = *a1;
    if (v10 == v8)
    {
LABEL_39:
      *(a1 + 8) = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      a4 = v9;
LABEL_40:
      if (a4 > 0x2AAAAAAAAAAAAAALL)
      {
        goto LABEL_51;
      }

      v18 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 5);
      v19 = 2 * v18;
      if (2 * v18 <= a4)
      {
        v19 = a4;
      }

      v20 = v18 >= 0x155555555555555 ? 0x2AAAAAAAAAAAAAALL : v19;
      if (v20 > 0x2AAAAAAAAAAAAAALL)
      {
LABEL_51:
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v21 = 4 * v20;
      v22 = operator new(96 * v20);
      *a1 = v22;
      *(a1 + 8) = v22;
      *(a1 + 16) = &v22[v21];
      for (i = v22; v5 != a3; i += 4)
      {
        _DeviceHistoryItem::_DeviceHistoryItem(v22, v5);
        v5 += 6;
        v22 = i + 4;
      }

      *(a1 + 8) = v22;
      return;
    }

    while (1)
    {
      if (*(v10 - 1) < 0)
      {
        operator delete(*(v10 - 3));
        if ((*(v10 - 25) & 0x80000000) == 0)
        {
LABEL_8:
          if ((*(v10 - 49) & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_13;
        }
      }

      else if ((*(v10 - 25) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      operator delete(*(v10 - 6));
      if ((*(v10 - 49) & 0x80000000) == 0)
      {
LABEL_9:
        v12 = (v10 - 96);
        if (*(v10 - 73) < 0)
        {
          goto LABEL_14;
        }

        goto LABEL_5;
      }

LABEL_13:
      operator delete(*(v10 - 9));
      v12 = (v10 - 96);
      if (*(v10 - 73) < 0)
      {
LABEL_14:
        operator delete(*v12);
      }

LABEL_5:
      v10 = v12;
      if (v12 == v8)
      {
        v11 = *a1;
        goto LABEL_39;
      }
    }
  }

  v13 = *(a1 + 8);
  v14 = v13 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v8) >> 5) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        _DeviceHistoryItem::operator=(v8, v5);
        v5 += 6;
        v8 += 96;
      }

      while (v5 != a3);
      v13 = *(a1 + 8);
    }

    if (v13 == v8)
    {
LABEL_27:
      *(a1 + 8) = v8;
      return;
    }

    while (1)
    {
      if (SHIBYTE(v13[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13[-1].__r_.__value_.__l.__data_);
        if ((SHIBYTE(v13[-2].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_31:
          if ((SHIBYTE(v13[-3].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_32;
          }

          goto LABEL_36;
        }
      }

      else if ((SHIBYTE(v13[-2].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_31;
      }

      operator delete(v13[-2].__r_.__value_.__l.__data_);
      if ((SHIBYTE(v13[-3].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_32:
        p_data = &v13[-4].__r_.__value_.__l.__data_;
        if (SHIBYTE(v13[-4].__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_37;
        }

        goto LABEL_28;
      }

LABEL_36:
      operator delete(v13[-3].__r_.__value_.__l.__data_);
      p_data = &v13[-4].__r_.__value_.__l.__data_;
      if (SHIBYTE(v13[-4].__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_37:
        operator delete(*p_data);
      }

LABEL_28:
      v13 = p_data;
      if (p_data == v8)
      {
        goto LABEL_27;
      }
    }
  }

  v15 = (a2 + v14);
  if (v13 != v8)
  {
    do
    {
      _DeviceHistoryItem::operator=(v8, v5);
      v5 += 6;
      v8 += 96;
      v14 -= 96;
    }

    while (v14);
    v13 = *(a1 + 8);
  }

  v23 = v13;
  v16 = v13;
  if (v15 != a3)
  {
    v16 = v13;
    do
    {
      _DeviceHistoryItem::_DeviceHistoryItem(v16, v15);
      v15 += 6;
      v16 = v23 + 4;
      v23 += 4;
    }

    while (v15 != a3);
  }

  *(a1 + 8) = v16;
}

void sub_2972DEAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<_DeviceHistoryItem>,_DeviceHistoryItem*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_2972DEAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<_DeviceHistoryItem>,_DeviceHistoryItem*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

char *_DeviceHistoryItem::operator=(char *a1, char *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v3 = a2;
  if ((a1[23] & 0x80000000) == 0)
  {
    if (a2[23] < 0)
    {
      std::string::__assign_no_alias<true>(a1, *a2, *(a2 + 1));
      v5 = v3 + 24;
      v6 = v3[47];
      if (a1[47] < 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v4 = *a2;
      *(a1 + 2) = *(a2 + 2);
      *a1 = v4;
      v5 = a2 + 24;
      v6 = a2[47];
      if (a1[47] < 0)
      {
        goto LABEL_14;
      }
    }

LABEL_10:
    if ((v6 & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(a1 + 3, *(v3 + 3), *(v3 + 4));
      v9 = v3 + 48;
      v10 = v3[71];
      if ((a1[71] & 0x80000000) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v8 = *v5;
      *(a1 + 5) = *(v5 + 2);
      *(a1 + 24) = v8;
      v9 = v3 + 48;
      v10 = v3[71];
      if ((a1[71] & 0x80000000) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_25:
    if ((v10 & 0x80u) == 0)
    {
      v16 = v9;
    }

    else
    {
      v16 = *(v3 + 6);
    }

    if ((v10 & 0x80u) == 0)
    {
      v17 = v10;
    }

    else
    {
      v17 = *(v3 + 7);
    }

    std::string::__assign_no_alias<false>(a1 + 6, v16, v17);
    v14 = v3 + 72;
    v15 = v3[95];
    if (a1[95] < 0)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  if (a2[23] >= 0)
  {
    v7 = a2[23];
  }

  else
  {
    a2 = *a2;
    v7 = *(v3 + 1);
  }

  std::string::__assign_no_alias<false>(a1, a2, v7);
  v5 = v3 + 24;
  v6 = v3[47];
  if ((a1[47] & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_14:
  if ((v6 & 0x80u) == 0)
  {
    v11 = v5;
  }

  else
  {
    v11 = *(v3 + 3);
  }

  if ((v6 & 0x80u) == 0)
  {
    v12 = v6;
  }

  else
  {
    v12 = *(v3 + 4);
  }

  std::string::__assign_no_alias<false>(a1 + 3, v11, v12);
  v9 = v3 + 48;
  v10 = v3[71];
  if (a1[71] < 0)
  {
    goto LABEL_25;
  }

LABEL_21:
  if ((v10 & 0x80) == 0)
  {
    v13 = *v9;
    *(a1 + 8) = v9[2];
    *(a1 + 3) = v13;
    v14 = v3 + 72;
    v15 = v3[95];
    if (a1[95] < 0)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  std::string::__assign_no_alias<true>(a1 + 6, *(v3 + 6), *(v3 + 7));
  v14 = v3 + 72;
  v15 = v3[95];
  if ((a1[95] & 0x80000000) == 0)
  {
LABEL_32:
    if ((v15 & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(a1 + 9, *(v3 + 9), *(v3 + 10));
      return a1;
    }

    v18 = *v14;
    *(a1 + 11) = v14[2];
    *(a1 + 72) = v18;
    return a1;
  }

LABEL_36:
  if ((v15 & 0x80u) == 0)
  {
    v20 = v14;
  }

  else
  {
    v20 = *(v3 + 9);
  }

  if ((v15 & 0x80u) == 0)
  {
    v21 = v15;
  }

  else
  {
    v21 = *(v3 + 10);
  }

  std::string::__assign_no_alias<false>(a1 + 9, v20, v21);
  return a1;
}

uint64_t __cxx_global_var_init_5()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_297288000);
  }

  return result;
}

void sub_2972DF298(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<void ()(BOOL,BOOL,char const*)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t VoIPCallDelegate::create@<X0>(capabilities::abs *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  capabilities::abs::supportedSARFeatures(a1);
  result = capabilities::abs::operator&();
  if (result)
  {
    *a3 = 0xAAAAAAAAAAAAAAAALL;
    a3[1] = 0xAAAAAAAAAAAAAAAALL;
    v7 = operator new(0x28uLL);
    *(v7 + 1) = 0;
    *(v7 + 2) = 0;
    *v7 = &unk_2A1E36868;
    result = std::construct_at[abi:ne200100]<VoIPCallDelegate,dispatch::queue &,std::function<void ()(BOOL,BOOL,char const*)> &,VoIPCallDelegate*>(v7 + 3, a1, a2);
    *a3 = v7 + 24;
    a3[1] = v7;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

void sub_2972DF914(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void ***VoIPCallDelegate::VoIPCallDelegate(void ***a1, dispatch_object_t *a2, uint64_t a3)
{
  v23 = *MEMORY[0x29EDCA608];
  v5 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  v6 = *(a3 + 24);
  if (!v6)
  {
    goto LABEL_6;
  }

  if (v6 != a3)
  {
    v6 = (*(*v6 + 16))(v6);
LABEL_6:
    v18 = v6;
    goto LABEL_8;
  }

  v18 = v17;
  (*(*v6 + 24))(v6, v17);
LABEL_8:
  *a1 = 0;
  a1[1] = 0;
  v7 = operator new(8uLL);
  if (v5)
  {
    dispatch_retain(v5);
  }

  v8 = v18;
  if (!v18)
  {
    goto LABEL_13;
  }

  if (v18 != v17)
  {
    v8 = (*(*v18 + 16))();
LABEL_13:
    v20 = v8;
    goto LABEL_15;
  }

  v20 = v19;
  (*(*v18 + 24))();
LABEL_15:
  *v7 = 0;
  v9 = [VoIPCallObserverImpl alloc];
  v10 = v20;
  if (!v20)
  {
LABEL_18:
    v22 = v10;
    goto LABEL_20;
  }

  v11 = v9;
  if (v20 != v19)
  {
    v10 = (*(*v20 + 16))();
    v9 = v11;
    goto LABEL_18;
  }

  v22 = v21;
  (*(*v20 + 24))();
  v9 = v11;
LABEL_20:
  v12 = [(VoIPCallObserverImpl *)v9 initWithCallback:v21 queue:v5];
  v13 = *v7;
  *v7 = v12;

  if (v22 == v21)
  {
    (*(*v22 + 32))(v22);
  }

  else if (v22)
  {
    (*(*v22 + 40))();
  }

  v21[0] = v7;
  v14 = operator new(0x20uLL);
  *v14 = &unk_2A1E36818;
  v14[1] = 0;
  v14[2] = 0;
  v14[3] = v7;
  *a1 = v7;
  a1[1] = v14;
  if (v20 == v19)
  {
    (*(*v20 + 32))(v20);
    if (v5)
    {
LABEL_28:
      dispatch_release(v5);
    }
  }

  else
  {
    if (v20)
    {
      (*(*v20 + 40))();
    }

    if (v5)
    {
      goto LABEL_28;
    }
  }

  if (v18 == v17)
  {
    (*(*v18 + 32))(v18);
    if (!v5)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (v18)
  {
    (*(*v18 + 40))();
  }

  if (v5)
  {
LABEL_33:
    dispatch_release(v5);
  }

LABEL_34:
  v15 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2972DFCBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (v18)
  {
    dispatch_release(v18);
  }

  operator delete(v20);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v19);
  std::function<void ()(BOOL,BOOL,char const*)>::~function(&a10);
  if (v18)
  {
    dispatch_release(v18);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void ___ZL16sGetOsLogContextv_block_invoke_0()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "voip");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

void std::__shared_ptr_pointer<VoIPCallObserver *,std::shared_ptr<VoIPCallObserver>::__shared_ptr_default_delete<VoIPCallObserver,VoIPCallObserver>,std::allocator<VoIPCallObserver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<VoIPCallObserver *,std::shared_ptr<VoIPCallObserver>::__shared_ptr_default_delete<VoIPCallObserver,VoIPCallObserver>,std::allocator<VoIPCallObserver>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<VoIPCallObserver *,std::shared_ptr<VoIPCallObserver>::__shared_ptr_default_delete<VoIPCallObserver,VoIPCallObserver>,std::allocator<VoIPCallObserver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000297430BC6)
  {
    if (((v2 & 0x8000000297430BC6 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000297430BC6))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000297430BC6 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

id **std::unique_ptr<VoIPCallObserver>::~unique_ptr[abi:ne200100](id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;

    operator delete(v1);
    return v2;
  }

  return result;
}

void std::__shared_ptr_emplace<VoIPCallDelegate>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E36868;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<VoIPCallDelegate>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ***std::construct_at[abi:ne200100]<VoIPCallDelegate,dispatch::queue &,std::function<void ()(BOOL,BOOL,char const*)> &,VoIPCallDelegate*>(void ***a1, NSObject **a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v5 = *a2;
  v9 = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(a3 + 24);
  if (!v6)
  {
    goto LABEL_6;
  }

  if (v6 != a3)
  {
    v6 = (*(*v6 + 16))(v6);
LABEL_6:
    v11 = v6;
    goto LABEL_8;
  }

  v11 = v10;
  (*(*v6 + 24))(v6, v10);
LABEL_8:
  VoIPCallDelegate::VoIPCallDelegate(a1, &v9, v10);
  if (v11 == v10)
  {
    (*(*v11 + 32))(v11);
    if (!v5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v11)
  {
    (*(*v11 + 40))(v11);
  }

  if (v5)
  {
LABEL_12:
    dispatch_release(v5);
  }

LABEL_13:
  v7 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2972E0120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v10)
  {
    dispatch_release(v10);
  }

  _Unwind_Resume(exception_object);
}

void LegacyAccessoryManager::create(LegacyAccessoryManager *this@<X0>, const char *a2@<X1>, queue a3@<0:X2>, LegacyAccessoryManager **a4@<X8>)
{
  v7 = operator new(0x78uLL);
  v8 = *a2;
  v20 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v9.fObj.fObj = &v20;
  LegacyAccessoryManager::LegacyAccessoryManager(v7, this, v9);
  v21 = v7;
  *buf = v7;
  v10 = operator new(0x20uLL);
  v10[1] = 0;
  v11 = v10 + 1;
  *v10 = &unk_2A1E36918;
  v10[2] = 0;
  v10[3] = v7;
  v22 = v10;
  *buf = 0;
  v12 = *(v7 + 2);
  if (!v12)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v10 + 2, 1uLL, memory_order_relaxed);
    *(v7 + 1) = v7;
    *(v7 + 2) = v10;
    if (atomic_fetch_add(v11, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v12->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v10 + 2, 1uLL, memory_order_relaxed);
    *(v7 + 1) = v7;
    *(v7 + 2) = v10;
    v13 = v10;
    std::__shared_weak_count::__release_weak(v12);
    v10 = v13;
    if (!atomic_fetch_add(v11, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_8:
      v14 = v10;
      (*(*v10 + 16))();
      std::__shared_weak_count::__release_weak(v14);
    }
  }

LABEL_9:
  if (*buf)
  {
    LegacyAccessoryManager::~LegacyAccessoryManager(*buf);
    operator delete(v15);
  }

  if (v8)
  {
    dispatch_release(v8);
  }

  v16 = v21;
  if (v21 && LegacyAccessoryManager::init(v21))
  {
    v17 = v22;
    *a4 = v16;
    a4[1] = v17;
    return;
  }

  {
    GetOsLogContext(void)::sOsLogContext = 0;
    qword_2A1399CD8 = 0;
  }

  if (GetOsLogContext(void)::onceToken == -1)
  {
    v18 = qword_2A1399CD8;
    if (!os_log_type_enabled(qword_2A1399CD8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

LABEL_24:
    *buf = 0;
    _os_log_error_impl(&dword_297288000, v18, OS_LOG_TYPE_ERROR, "Failed to create OBD Manager!", buf, 2u);
    *a4 = 0;
    a4[1] = 0;
    v19 = v22;
    if (!v22)
    {
      return;
    }

    goto LABEL_20;
  }

  dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_13);
  v18 = qword_2A1399CD8;
  if (os_log_type_enabled(qword_2A1399CD8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_24;
  }

LABEL_19:
  *a4 = 0;
  a4[1] = 0;
  v19 = v22;
  if (!v22)
  {
    return;
  }

LABEL_20:
  if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }
}

void sub_2972E0400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2972E0414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<LegacyAccessoryManager>::~unique_ptr[abi:ne200100](va);
  if (v5)
  {
    dispatch_release(v5);
  }

  _Unwind_Resume(a1);
}

BOOL LegacyAccessoryManager::init(LegacyAccessoryManager *this)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(this + 7);
  if (v2)
  {
    v4 = *(this + 1);
    v3 = *(this + 2);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    LegacyAccessoryManager::generateAccessoryMapping(this);
    if (*(this + 9))
    {
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1174405120;
      aBlock[2] = ___ZN22LegacyAccessoryManager4initEv_block_invoke;
      aBlock[3] = &__block_descriptor_tmp_23;
      aBlock[4] = this;
      aBlock[5] = v4;
      v17 = v3;
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = _Block_copy(aBlock);
      ctu::iokit::IOHIDController::registerKeyboardCallback();
      if (v18)
      {
        _Block_release(v18);
      }

      ctu::iokit::IOHIDController::start(*(this + 9));
      if (v17)
      {
        std::__shared_weak_count::__release_weak(v17);
      }
    }

    v5 = *(this + 7);
    if (!v5)
    {
      goto LABEL_33;
    }

    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 1174405120;
    v14[2] = ___ZN22LegacyAccessoryManager4initEv_block_invoke_5;
    v14[3] = &__block_descriptor_tmp_9_2;
    v14[4] = this;
    v14[5] = v4;
    v15 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = _Block_copy(v14);
    v7 = *(this + 3);
    if (v7)
    {
      dispatch_retain(*(this + 3));
    }

    if (v6)
    {
      v8 = _Block_copy(v6);
      v9 = *(v5 + 24);
      *(v5 + 24) = v8;
      if (!v9)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v9 = *(v5 + 24);
      *(v5 + 24) = 0;
      if (!v9)
      {
LABEL_23:
        if (v7)
        {
          dispatch_retain(v7);
        }

        v11 = *(v5 + 32);
        *(v5 + 32) = v7;
        if (v11)
        {
          dispatch_release(v11);
        }

        if (v7)
        {
          dispatch_release(v7);
        }

        if (v6)
        {
          _Block_release(v6);
        }

        IOKitEventNotifier::start(*(this + 7));
        if (v15)
        {
          std::__shared_weak_count::__release_weak(v15);
        }

LABEL_33:
        if (v3)
        {
          std::__shared_weak_count::__release_weak(v3);
        }

        goto LABEL_35;
      }
    }

    _Block_release(v9);
    goto LABEL_23;
  }

  v10 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "LegacyAccessoryManager";
    _os_log_impl(&dword_297288000, v10, OS_LOG_TYPE_DEFAULT, "#I IOKit Event Notifier is NULL: %s", buf, 0xCu);
  }

LABEL_35:
  result = v2 != 0;
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2972E06E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void LegacyAccessoryManager::LegacyAccessoryManager(LegacyAccessoryManager *this, const char *__s, queue a3)
{
  v6 = 0x7FFFFFFFFFFFFFF7;
  v7 = strlen(__s);
  if (v7 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v7 | 7) + 1;
    }

    p_dst = operator new(v14);
    *(&__dst + 1) = v8;
    v52 = v14 | 0x8000000000000000;
    *&__dst = p_dst;
  }

  else
  {
    HIBYTE(v52) = v7;
    p_dst = &__dst;
    if (!v7)
    {
      LOBYTE(__dst) = 0;
      v10 = SHIBYTE(v52);
      if ((SHIBYTE(v52) & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  memcpy(p_dst, __s, v8);
  *(p_dst + v8) = 0;
  v10 = SHIBYTE(v52);
  if ((SHIBYTE(v52) & 0x8000000000000000) == 0)
  {
LABEL_5:
    v11 = &__dst;
    if (v10 == 22)
    {
      v12 = 22;
      v13 = 23;
LABEL_15:
      v15 = 2 * v12;
      if (v13 > 2 * v12)
      {
        v15 = v13;
      }

      if ((v15 | 7) == 0x17)
      {
        v16 = 25;
      }

      else
      {
        v16 = (v15 | 7) + 1;
      }

      if (v15 >= 0x17)
      {
        v17 = v16;
      }

      else
      {
        v17 = 23;
      }

      v18 = v12 == 22;
      goto LABEL_24;
    }

LABEL_30:
    *(v11 + v10) = 46;
    v22 = v10 + 1;
    if (SHIBYTE(v52) < 0)
    {
      *(&__dst + 1) = v22;
    }

    else
    {
      HIBYTE(v52) = v22 & 0x7F;
    }

    v21 = v11 + v22;
    goto LABEL_34;
  }

LABEL_12:
  v10 = *(&__dst + 1);
  v13 = v52 & 0x7FFFFFFFFFFFFFFFLL;
  v12 = (v52 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v12 != *(&__dst + 1))
  {
    v11 = __dst;
    goto LABEL_30;
  }

  if (v13 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = __dst;
  if (v12 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_15;
  }

  v18 = 0;
  v17 = 0x7FFFFFFFFFFFFFF7;
LABEL_24:
  v19 = operator new(v17);
  v20 = v19;
  if (v12)
  {
    memmove(v19, v11, v12);
  }

  v20[v12] = 46;
  if (!v18)
  {
    operator delete(v11);
  }

  *(&__dst + 1) = v13;
  v52 = v17 | 0x8000000000000000;
  *&__dst = v20;
  v21 = &v20[v13];
LABEL_34:
  *v21 = 0;
  v54 = v52;
  *v53 = __dst;
  v52 = 0;
  __dst = 0uLL;
  v23 = SHIBYTE(v54);
  if ((SHIBYTE(v54) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v54) - 1) < 0x16)
    {
      v24 = (SHIBYTE(v54) + 22);
      v25 = v53;
      v26 = 22;
LABEL_40:
      v27 = 2 * v26;
      if (v24 > 2 * v26)
      {
        v27 = v24;
      }

      if ((v27 | 7) == 0x17)
      {
        v28 = 25;
      }

      else
      {
        v28 = (v27 | 7) + 1;
      }

      if (v27 >= 0x17)
      {
        v6 = v28;
      }

      else
      {
        v6 = 23;
      }

      v29 = v26 == 22;
      goto LABEL_49;
    }

    v33 = v53;
LABEL_56:
    qmemcpy(v33 + v23, "LegacyAccessoryManager", 22);
    v34 = v23 + 22;
    if (SHIBYTE(v54) < 0)
    {
      v53[1] = (v23 + 22);
    }

    else
    {
      HIBYTE(v54) = v34 & 0x7F;
    }

    v32 = v33 + v34;
    goto LABEL_60;
  }

  v23 = v53[1];
  v26 = (v54 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v26 - v53[1] >= 0x16)
  {
    v33 = v53[0];
    goto LABEL_56;
  }

  v24 = v53[1] + 22;
  if ((0x7FFFFFFFFFFFFFF7 - (v54 & 0x7FFFFFFFFFFFFFFFLL)) < v53[1] - v26 + 22)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v25 = v53[0];
  if (v26 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_40;
  }

  v29 = 0;
LABEL_49:
  v30 = operator new(v6);
  v31 = v30;
  if (v23)
  {
    memmove(v30, v25, v23);
  }

  qmemcpy(v31 + v23, "LegacyAccessoryManager", 22);
  if (!v29)
  {
    operator delete(v25);
  }

  v53[1] = v24;
  v54 = v6 | 0x8000000000000000;
  v53[0] = v31;
  v32 = &v24[v31];
LABEL_60:
  *v32 = 0;
  v56 = v54;
  *__p = *v53;
  v53[1] = 0;
  v54 = 0;
  v53[0] = 0;
  if (v56 >= 0)
  {
    v35 = __p;
  }

  else
  {
    v35 = __p[0];
  }

  ctu::OsLogLogger::OsLogLogger(this, "com.apple.telephony.abm", v35);
  if (SHIBYTE(v56) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v54) & 0x80000000) == 0)
    {
LABEL_65:
      if ((SHIBYTE(v52) & 0x80000000) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_98;
    }
  }

  else if ((SHIBYTE(v54) & 0x80000000) == 0)
  {
    goto LABEL_65;
  }

  operator delete(v53[0]);
  if ((SHIBYTE(v52) & 0x80000000) == 0)
  {
LABEL_66:
    *(this + 1) = 0;
    *(this + 2) = 0;
    v36 = *a3.fObj.fObj;
    *(this + 3) = *a3.fObj.fObj;
    if (!v36)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

LABEL_98:
  operator delete(__dst);
  *(this + 1) = 0;
  *(this + 2) = 0;
  v36 = *a3.fObj.fObj;
  *(this + 3) = *a3.fObj.fObj;
  if (v36)
  {
LABEL_67:
    dispatch_retain(v36);
  }

LABEL_68:
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  pthread_mutex_lock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v37 = off_2A1399448;
  if (!off_2A1399448)
  {
    ABMServer::create_default_global(__p);
    v38 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v39 = *(&off_2A1399448 + 1);
    off_2A1399448 = v38;
    if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v39->__on_zero_shared)(v39);
      std::__shared_weak_count::__release_weak(v39);
    }

    v40 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v40->__on_zero_shared)(v40);
      std::__shared_weak_count::__release_weak(v40);
    }

    v37 = off_2A1399448;
  }

  v41 = *(&off_2A1399448 + 1);
  v53[0] = v37;
  v53[1] = *(&off_2A1399448 + 1);
  if (*(&off_2A1399448 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399448 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v42 = *(*v37 + 144);
  *(this + 7) = 0xAAAAAAAAAAAAAAAALL;
  *(this + 8) = 0xAAAAAAAAAAAAAAAALL;
  v43 = operator new(0x88uLL);
  v43[1] = 0;
  v43[2] = 0;
  *v43 = &unk_2A1E3CAD0;
  ctu::OsLogLogger::OsLogLogger((v43 + 3), "com.apple.telephony", "iokit.event");
  v45 = ctu::iokit::Controller::create(v42, v44);
  *(v43 + 6) = 0u;
  *(v43 + 7) = 0u;
  *(v43 + 4) = 0u;
  *(v43 + 5) = 0u;
  *(v43 + 3) = 0u;
  v43[16] = v42;
  *(this + 7) = v43 + 3;
  *(this + 8) = v43;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 92) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = this + 104;
  if (capabilities::txpower::supportsKeyboard(v45))
  {
    v50 = *a3.fObj.fObj;
    if (*a3.fObj.fObj)
    {
      dispatch_retain(*a3.fObj.fObj);
    }

    ctu::iokit::IOHIDController::create();
    v46 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v47 = *(this + 10);
    *(this + 72) = v46;
    if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v47->__on_zero_shared)(v47);
      std::__shared_weak_count::__release_weak(v47);
    }

    v48 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v48->__on_zero_shared)(v48);
      std::__shared_weak_count::__release_weak(v48);
    }

    if (v50)
    {
      dispatch_release(v50);
    }

    if (!*(this + 9))
    {
      v49 = *this;
      if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p[0]) = 0;
        _os_log_error_impl(&dword_297288000, v49, OS_LOG_TYPE_ERROR, "Failed to create IO HID Controller!", __p, 2u);
      }
    }
  }
}

void sub_2972E0E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  std::vector<dispatch::callback<void({block_pointer})>>::~vector[abi:ne200100](v24);
  v26 = *(v23 + 24);
  if (v26)
  {
    dispatch_release(v26);
  }

  v27 = *(v23 + 16);
  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  MEMORY[0x29C26DE80](v23);
  _Unwind_Resume(a1);
}

void sub_2972E0F28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
    if (a20 < 0)
    {
LABEL_5:
      operator delete(a15);
      if (SHIBYTE(a14) < 0)
      {
        operator delete(a12);
        _Unwind_Resume(a1);
      }

      JUMPOUT(0x2972E0F20);
    }
  }

  else if (a20 < 0)
  {
    goto LABEL_5;
  }

  JUMPOUT(0x2972E0E80);
}

void LegacyAccessoryManager::~LegacyAccessoryManager(LegacyAccessoryManager *this)
{
  v2 = *(this + 4);
  for (i = *(this + 5); i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      dispatch_release(v4);
    }

    v6 = *(i - 16);
    v5 = v6;
    if (v6)
    {
      _Block_release(v5);
    }
  }

  *(this + 5) = v2;
  v7 = *(this + 9);
  if (v7)
  {
    ctu::iokit::IOHIDController::stop(v7);
  }

  v8 = *(this + 7);
  if (v8)
  {
    IOKitEventNotifier::shutdown(v8);
  }

  std::__tree<std::__value_type<ctu::iokit::TelephonyIOKitAccessoryType,LegacyAccessoryTypes>,std::__map_value_compare<ctu::iokit::TelephonyIOKitAccessoryType,std::__value_type<ctu::iokit::TelephonyIOKitAccessoryType,LegacyAccessoryTypes>,std::less<ctu::iokit::TelephonyIOKitAccessoryType>,true>,std::allocator<std::__value_type<ctu::iokit::TelephonyIOKitAccessoryType,LegacyAccessoryTypes>>>::destroy(*(this + 13));
  v9 = *(this + 10);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *(this + 8);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    v11 = *(this + 4);
    if (!v11)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v11 = *(this + 4);
    if (!v11)
    {
      goto LABEL_26;
    }
  }

  v12 = *(this + 5);
  v13 = v11;
  if (v12 != v11)
  {
    do
    {
      v14 = *(v12 - 1);
      if (v14)
      {
        dispatch_release(v14);
      }

      v16 = *(v12 - 2);
      v12 -= 16;
      v15 = v16;
      if (v16)
      {
        _Block_release(v15);
      }
    }

    while (v12 != v11);
    v13 = *(this + 4);
  }

  *(this + 5) = v11;
  operator delete(v13);
LABEL_26:
  v17 = *(this + 3);
  if (v17)
  {
    dispatch_release(v17);
  }

  v18 = *(this + 2);
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  JUMPOUT(0x29C26DE80);
}

uint64_t *LegacyAccessoryManager::generateAccessoryMapping(uint64_t *this)
{
  v1 = this;
  v3 = this + 13;
  v2 = this[13];
  v4 = this + 13;
  v5 = this + 13;
  if (v2)
  {
    v6 = this[13];
    while (1)
    {
      while (1)
      {
        v5 = v6;
        v7 = *(v6 + 28);
        if (v7 < 3)
        {
          break;
        }

        v6 = *v5;
        v4 = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      if (v7 == 2)
      {
        break;
      }

      v6 = v5[1];
      if (!v6)
      {
        v4 = v5 + 1;
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v8 = v5;
    v5 = operator new(0x28uLL);
    *(v5 + 28) = 2;
    *v5 = 0;
    v5[1] = 0;
    v5[2] = v8;
    *v4 = v5;
    v9 = **(v1 + 96);
    if (v9)
    {
      *(v1 + 96) = v9;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v5);
    v2 = *(v1 + 104);
    ++*(v1 + 112);
  }

  *(v5 + 8) = 16;
  v10 = v3;
  v11 = v3;
  if (v2)
  {
    while (1)
    {
      while (1)
      {
        v11 = v2;
        v12 = *(v2 + 28);
        if (v12 < 5)
        {
          break;
        }

        v2 = *v11;
        v10 = v11;
        if (!*v11)
        {
          goto LABEL_18;
        }
      }

      if (v12 == 4)
      {
        break;
      }

      v2 = v11[1];
      if (!v2)
      {
        v10 = v11 + 1;
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    v13 = v11;
    v11 = operator new(0x28uLL);
    *(v11 + 28) = 4;
    *v11 = 0;
    v11[1] = 0;
    v11[2] = v13;
    *v10 = v11;
    v14 = **(v1 + 96);
    if (v14)
    {
      *(v1 + 96) = v14;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v11);
    ++*(v1 + 112);
  }

  *(v11 + 8) = 32;
  v15 = *v3;
  v16 = v3;
  v17 = v3;
  if (*v3)
  {
    v18 = *v3;
    while (1)
    {
      while (1)
      {
        v17 = v18;
        v19 = *(v18 + 28);
        if (v19 < 9)
        {
          break;
        }

        v18 = *v17;
        v16 = v17;
        if (!*v17)
        {
          goto LABEL_28;
        }
      }

      if (v19 == 8)
      {
        break;
      }

      v18 = v17[1];
      if (!v18)
      {
        v16 = v17 + 1;
        goto LABEL_28;
      }
    }
  }

  else
  {
LABEL_28:
    v20 = v17;
    v17 = operator new(0x28uLL);
    *(v17 + 28) = 8;
    *v17 = 0;
    v17[1] = 0;
    v17[2] = v20;
    *v16 = v17;
    v21 = **(v1 + 96);
    if (v21)
    {
      *(v1 + 96) = v21;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v17);
    v15 = *(v1 + 104);
    ++*(v1 + 112);
  }

  *(v17 + 8) = 64;
  v22 = v3;
  v23 = v3;
  if (v15)
  {
    while (1)
    {
      while (1)
      {
        v23 = v15;
        v24 = *(v15 + 28);
        if (v24 < 0x11)
        {
          break;
        }

        v15 = *v23;
        v22 = v23;
        if (!*v23)
        {
          goto LABEL_38;
        }
      }

      if (v24 == 16)
      {
        break;
      }

      v15 = v23[1];
      if (!v15)
      {
        v22 = v23 + 1;
        goto LABEL_38;
      }
    }
  }

  else
  {
LABEL_38:
    v25 = v23;
    v23 = operator new(0x28uLL);
    *(v23 + 28) = 16;
    *v23 = 0;
    v23[1] = 0;
    v23[2] = v25;
    *v22 = v23;
    v26 = **(v1 + 96);
    if (v26)
    {
      *(v1 + 96) = v26;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v23);
    ++*(v1 + 112);
  }

  *(v23 + 8) = 1024;
  v27 = *v3;
  v28 = v3;
  v29 = v3;
  if (*v3)
  {
    v30 = *v3;
    while (1)
    {
      while (1)
      {
        v29 = v30;
        v31 = *(v30 + 28);
        if (v31 < 0x21)
        {
          break;
        }

        v30 = *v29;
        v28 = v29;
        if (!*v29)
        {
          goto LABEL_48;
        }
      }

      if (v31 == 32)
      {
        break;
      }

      v30 = v29[1];
      if (!v30)
      {
        v28 = v29 + 1;
        goto LABEL_48;
      }
    }
  }

  else
  {
LABEL_48:
    v32 = v29;
    v29 = operator new(0x28uLL);
    *(v29 + 28) = 32;
    *v29 = 0;
    v29[1] = 0;
    v29[2] = v32;
    *v28 = v29;
    v33 = **(v1 + 96);
    if (v33)
    {
      *(v1 + 96) = v33;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v29);
    v27 = *(v1 + 104);
    ++*(v1 + 112);
  }

  *(v29 + 8) = 256;
  v34 = v3;
  v35 = v3;
  if (v27)
  {
    while (1)
    {
      while (1)
      {
        v35 = v27;
        v36 = *(v27 + 28);
        if (v36 < 0x41)
        {
          break;
        }

        v27 = *v35;
        v34 = v35;
        if (!*v35)
        {
          goto LABEL_58;
        }
      }

      if (v36 == 64)
      {
        break;
      }

      v27 = v35[1];
      if (!v27)
      {
        v34 = v35 + 1;
        goto LABEL_58;
      }
    }
  }

  else
  {
LABEL_58:
    v37 = v35;
    v35 = operator new(0x28uLL);
    *(v35 + 28) = 64;
    *v35 = 0;
    v35[1] = 0;
    v35[2] = v37;
    *v34 = v35;
    v38 = **(v1 + 96);
    if (v38)
    {
      *(v1 + 96) = v38;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v35);
    ++*(v1 + 112);
  }

  *(v35 + 8) = 2048;
  v39 = *v3;
  v40 = v3;
  v41 = v3;
  if (*v3)
  {
    v42 = *v3;
    while (1)
    {
      while (1)
      {
        v41 = v42;
        v43 = *(v42 + 28);
        if (v43 < 0x81)
        {
          break;
        }

        v42 = *v41;
        v40 = v41;
        if (!*v41)
        {
          goto LABEL_68;
        }
      }

      if (v43 == 128)
      {
        break;
      }

      v42 = v41[1];
      if (!v42)
      {
        v40 = v41 + 1;
        goto LABEL_68;
      }
    }
  }

  else
  {
LABEL_68:
    v44 = v41;
    v41 = operator new(0x28uLL);
    *(v41 + 28) = 128;
    *v41 = 0;
    v41[1] = 0;
    v41[2] = v44;
    *v40 = v41;
    v45 = **(v1 + 96);
    if (v45)
    {
      *(v1 + 96) = v45;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v41);
    v39 = *(v1 + 104);
    ++*(v1 + 112);
  }

  *(v41 + 8) = 4096;
  v46 = v3;
  v47 = v3;
  if (v39)
  {
    while (1)
    {
      while (1)
      {
        v47 = v39;
        v48 = *(v39 + 28);
        if (v48 < 0x101)
        {
          break;
        }

        v39 = *v47;
        v46 = v47;
        if (!*v47)
        {
          goto LABEL_78;
        }
      }

      if (v48 == 256)
      {
        break;
      }

      v39 = v47[1];
      if (!v39)
      {
        v46 = v47 + 1;
        goto LABEL_78;
      }
    }
  }

  else
  {
LABEL_78:
    v49 = v47;
    v47 = operator new(0x28uLL);
    *(v47 + 28) = 256;
    *v47 = 0;
    v47[1] = 0;
    v47[2] = v49;
    *v46 = v47;
    v50 = **(v1 + 96);
    if (v50)
    {
      *(v1 + 96) = v50;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v47);
    ++*(v1 + 112);
  }

  *(v47 + 8) = 0x2000;
  v51 = *v3;
  v52 = v3;
  v53 = v3;
  if (*v3)
  {
    v54 = *v3;
    while (1)
    {
      while (1)
      {
        v53 = v54;
        v55 = *(v54 + 28);
        if (v55 < 0x201)
        {
          break;
        }

        v54 = *v53;
        v52 = v53;
        if (!*v53)
        {
          goto LABEL_88;
        }
      }

      if (v55 == 512)
      {
        break;
      }

      v54 = v53[1];
      if (!v54)
      {
        v52 = v53 + 1;
        goto LABEL_88;
      }
    }
  }

  else
  {
LABEL_88:
    v56 = v53;
    v53 = operator new(0x28uLL);
    *(v53 + 28) = 512;
    *v53 = 0;
    v53[1] = 0;
    v53[2] = v56;
    *v52 = v53;
    v57 = **(v1 + 96);
    if (v57)
    {
      *(v1 + 96) = v57;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v53);
    v51 = *(v1 + 104);
    ++*(v1 + 112);
  }

  *(v53 + 8) = 0x4000;
  v58 = v3;
  v59 = v3;
  if (v51)
  {
    while (1)
    {
      while (1)
      {
        v59 = v51;
        v60 = *(v51 + 28);
        if (v60 < 0x401)
        {
          break;
        }

        v51 = *v59;
        v58 = v59;
        if (!*v59)
        {
          goto LABEL_98;
        }
      }

      if (v60 == 1024)
      {
        break;
      }

      v51 = v59[1];
      if (!v51)
      {
        v58 = v59 + 1;
        goto LABEL_98;
      }
    }
  }

  else
  {
LABEL_98:
    v61 = v59;
    v59 = operator new(0x28uLL);
    *(v59 + 28) = 1024;
    *v59 = 0;
    v59[1] = 0;
    v59[2] = v61;
    *v58 = v59;
    v62 = **(v1 + 96);
    if (v62)
    {
      *(v1 + 96) = v62;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v59);
    ++*(v1 + 112);
  }

  *(v59 + 8) = 0x8000;
  v63 = *v3;
  v64 = v3;
  v65 = v3;
  if (*v3)
  {
    v66 = *v3;
    while (1)
    {
      while (1)
      {
        v65 = v66;
        v67 = *(v66 + 28);
        if (v67 < 0x801)
        {
          break;
        }

        v66 = *v65;
        v64 = v65;
        if (!*v65)
        {
          goto LABEL_108;
        }
      }

      if (v67 == 2048)
      {
        break;
      }

      v66 = v65[1];
      if (!v66)
      {
        v64 = v65 + 1;
        goto LABEL_108;
      }
    }
  }

  else
  {
LABEL_108:
    v68 = v65;
    v65 = operator new(0x28uLL);
    *(v65 + 28) = 2048;
    *v65 = 0;
    v65[1] = 0;
    v65[2] = v68;
    *v64 = v65;
    v69 = **(v1 + 96);
    if (v69)
    {
      *(v1 + 96) = v69;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v65);
    v63 = *(v1 + 104);
    ++*(v1 + 112);
  }

  *(v65 + 8) = 0x10000;
  v70 = v3;
  if (v63)
  {
    while (1)
    {
      while (1)
      {
        v70 = v63;
        v71 = *(v63 + 28);
        if (v71 <= 0x1000)
        {
          break;
        }

        v63 = *v70;
        v3 = v70;
        if (!*v70)
        {
          goto LABEL_118;
        }
      }

      if (v71 == 4096)
      {
        break;
      }

      v63 = v70[1];
      if (!v63)
      {
        v3 = v70 + 1;
        goto LABEL_118;
      }
    }
  }

  else
  {
LABEL_118:
    v72 = v70;
    v70 = operator new(0x28uLL);
    *(v70 + 28) = 4096;
    *v70 = 0;
    v70[1] = 0;
    v70[2] = v72;
    *v3 = v70;
    v73 = **(v1 + 96);
    if (v73)
    {
      *(v1 + 96) = v73;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v70);
    ++*(v1 + 112);
  }

  *(v70 + 8) = 0x20000;
  return this;
}

void ___ZN22LegacyAccessoryManager4initEv_block_invoke(void *a1, int a2)
{
  v34 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (!v3)
  {
    goto LABEL_58;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  if (!v6)
  {
    goto LABEL_58;
  }

  v7 = a1[5];
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v7)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v8 = v6;
    (v6->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v8);
    if (!v7)
    {
      goto LABEL_58;
    }
  }

  if (*(v5 + 92) == a2)
  {
    goto LABEL_58;
  }

  v9 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "OPENED";
    if (a2)
    {
      v10 = "CLOSED";
    }

    LODWORD(v29) = 136315138;
    *(&v29 + 4) = v10;
    _os_log_impl(&dword_297288000, v9, OS_LOG_TYPE_DEFAULT, "#I Smart Keyboard Cover: %s", &v29, 0xCu);
  }

  v12 = (v5 + 104);
  v11 = *(v5 + 104);
  *(v5 + 92) = a2;
  v13 = (v5 + 104);
  if (a2)
  {
    if (v11)
    {
      while (1)
      {
        while (1)
        {
          v13 = v11;
          v14 = *(v11 + 7);
          if (v14 <= 0x1000)
          {
            break;
          }

          v11 = *v13;
          v12 = v13;
          if (!*v13)
          {
            goto LABEL_20;
          }
        }

        if (v14 == 4096)
        {
          break;
        }

        v11 = v13[1];
        if (!v11)
        {
          v12 = v13 + 1;
          goto LABEL_20;
        }
      }

      v15 = v13;
    }

    else
    {
LABEL_20:
      v15 = operator new(0x28uLL);
      *(v15 + 28) = 4096;
      *v15 = 0;
      v15[1] = 0;
      v15[2] = v13;
      *v12 = v15;
      v16 = **(v5 + 96);
      if (v16)
      {
        *(v5 + 96) = v16;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v5 + 104), v15);
      ++*(v5 + 112);
    }

    *(v5 + 88) |= *(v15 + 8);
    v20 = *(v5 + 32);
    v21 = *(v5 + 40);
    if (v20 != v21)
    {
      goto LABEL_40;
    }

    goto LABEL_58;
  }

  if (v11)
  {
    while (1)
    {
      while (1)
      {
        v13 = v11;
        v17 = *(v11 + 7);
        if (v17 <= 0x1000)
        {
          break;
        }

        v11 = *v13;
        v12 = v13;
        if (!*v13)
        {
          goto LABEL_30;
        }
      }

      if (v17 == 4096)
      {
        break;
      }

      v11 = v13[1];
      if (!v11)
      {
        v12 = v13 + 1;
        goto LABEL_30;
      }
    }

    v18 = v13;
  }

  else
  {
LABEL_30:
    v18 = operator new(0x28uLL);
    *(v18 + 28) = 4096;
    *v18 = 0;
    v18[1] = 0;
    v18[2] = v13;
    *v12 = v18;
    v19 = **(v5 + 96);
    if (v19)
    {
      *(v5 + 96) = v19;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v5 + 104), v18);
    ++*(v5 + 112);
  }

  *(v5 + 88) &= ~*(v18 + 8);
  v20 = *(v5 + 32);
  v21 = *(v5 + 40);
  if (v20 != v21)
  {
LABEL_40:
    while (!*v20)
    {
      v22 = 0;
      v23 = *(v20 + 8);
      if (v23)
      {
        goto LABEL_42;
      }

LABEL_43:
      v24 = *(v5 + 88);
      if (!v22)
      {
        v26 = 0;
        *&v29 = MEMORY[0x29EDCA5F8];
        *(&v29 + 1) = 1174405120;
        v30 = ___ZNK8dispatch8callbackIU13block_pointerFvjEEclIJjEEEvDpT__block_invoke;
        v31 = &__block_descriptor_tmp_17_1;
LABEL_49:
        v27 = 0;
        goto LABEL_50;
      }

      v25 = _Block_copy(v22);
      v26 = v25;
      *&v29 = MEMORY[0x29EDCA5F8];
      *(&v29 + 1) = 1174405120;
      v30 = ___ZNK8dispatch8callbackIU13block_pointerFvjEEclIJjEEEvDpT__block_invoke;
      v31 = &__block_descriptor_tmp_17_1;
      if (!v25)
      {
        goto LABEL_49;
      }

      v27 = _Block_copy(v25);
LABEL_50:
      aBlock = v27;
      v33 = v24;
      dispatch_async(v23, &v29);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v26)
      {
        _Block_release(v26);
      }

      if (v23)
      {
        dispatch_release(v23);
      }

      if (v22)
      {
        _Block_release(v22);
      }

      v20 += 16;
      if (v20 == v21)
      {
        goto LABEL_58;
      }
    }

    v22 = _Block_copy(*v20);
    v23 = *(v20 + 8);
    if (!v23)
    {
      goto LABEL_43;
    }

LABEL_42:
    dispatch_retain(v23);
    goto LABEL_43;
  }

LABEL_58:
  v28 = *MEMORY[0x29EDCA608];
}

void sub_2972E1C60(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c47_ZTSNSt3__18weak_ptrI22LegacyAccessoryManagerEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c47_ZTSNSt3__18weak_ptrI22LegacyAccessoryManagerEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN22LegacyAccessoryManager4initEv_block_invoke_5(void *a1, unint64_t a2, int a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = a1[5];
      if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (!v9)
        {
          return;
        }
      }

      else
      {
        v10 = v8;
        (v8->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v10);
        if (!v9)
        {
          return;
        }
      }

      LegacyAccessoryManager::accessoryNotification_sync(v7, a2, a3);
    }
  }
}

void LegacyAccessoryManager::accessoryNotification_sync(uint64_t a1, unint64_t a2, int a3)
{
  v33 = *MEMORY[0x29EDCA608];
  v6 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p[0]) = 67109120;
    HIDWORD(__p[0]) = a3;
    _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I Accessory Port Number: %u", __p, 8u);
    v6 = *a1;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    ctu::iokit::asString();
    if (v30 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136315138;
    v32 = v7;
    _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I Accessory Status: %s", buf, 0xCu);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    v6 = *a1;
  }

  v8 = HIDWORD(a2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT) && ((ctu::iokit::asString(), v30 >= 0) ? (v9 = __p) : (v9 = __p[0]), *buf = 136315138, v32 = v9, _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I Accessory Type: %s", buf, 0xCu), v30 < 0))
  {
    operator delete(__p[0]);
    if ((a3 - 3) <= 0xFFFFFFFD)
    {
LABEL_16:
      v10 = *a1;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__p[0]) = 67109120;
        HIDWORD(__p[0]) = a3;
        _os_log_impl(&dword_297288000, v10, OS_LOG_TYPE_DEFAULT, "#I This port (%d) is not supported.", __p, 8u);
      }

      goto LABEL_61;
    }
  }

  else if ((a3 - 3) <= 0xFFFFFFFD)
  {
    goto LABEL_16;
  }

  v11 = *a1;
  v12 = os_log_type_enabled(*a1, OS_LOG_TYPE_DEBUG);
  if (a2 == 1)
  {
    if (!v12)
    {
      if (v8 == 4096)
      {
        goto LABEL_42;
      }

LABEL_22:
      v13 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(__p[0]) = 0;
        _os_log_debug_impl(&dword_297288000, v13, OS_LOG_TYPE_DEBUG, "#D Detected not keyboard type. Setting the accessory bitmask", __p, 2u);
        v15 = (a1 + 104);
        v14 = *(a1 + 104);
        if (v14)
        {
          while (1)
          {
LABEL_33:
            while (1)
            {
              v16 = v14;
              v17 = *(v14 + 28);
              if (v17 <= v8)
              {
                break;
              }

              v14 = *v16;
              v15 = v16;
              if (!*v16)
              {
                goto LABEL_37;
              }
            }

            if (v17 >= v8)
            {
              break;
            }

            v14 = v16[1];
            if (!v14)
            {
              v15 = v16 + 1;
              goto LABEL_37;
            }
          }

          v18 = v16;
          goto LABEL_41;
        }
      }

      else
      {
        v15 = (a1 + 104);
        v14 = *(a1 + 104);
        if (v14)
        {
          goto LABEL_33;
        }
      }

      v16 = v15;
LABEL_37:
      v18 = operator new(0x28uLL);
      v18[7] = v8;
      v18[8] = 0;
      *v18 = 0;
      *(v18 + 1) = 0;
      *(v18 + 2) = v16;
      *v15 = v18;
      v19 = **(a1 + 96);
      if (v19)
      {
        *(a1 + 96) = v19;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 104), v18);
      ++*(a1 + 112);
LABEL_41:
      *(a1 + 88) |= v18[8];
      goto LABEL_42;
    }

    LOWORD(__p[0]) = 0;
    _os_log_debug_impl(&dword_297288000, v11, OS_LOG_TYPE_DEBUG, "#D An accessory is attached", __p, 2u);
    if (v8 != 4096)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v12)
    {
      LOWORD(__p[0]) = 0;
      _os_log_debug_impl(&dword_297288000, v11, OS_LOG_TYPE_DEBUG, "#D An accessory is detached. Clear all the bits in the accessory state", __p, 2u);
    }

    *(a1 + 88) = 0;
  }

LABEL_42:
  v20 = *a1;
  if (*(a1 + 92) == 1)
  {
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(__p[0]) = 0;
      _os_log_debug_impl(&dword_297288000, v20, OS_LOG_TYPE_DEBUG, "#D If a keyboard is covered, we should set the keyboard accessory state regardless of the accessory event", __p, 2u);
      v22 = (a1 + 104);
      v21 = *(a1 + 104);
      if (v21)
      {
        while (1)
        {
LABEL_49:
          while (1)
          {
            v23 = v21;
            v24 = *(v21 + 7);
            if (v24 <= 0x1000)
            {
              break;
            }

            v21 = *v23;
            v22 = v23;
            if (!*v23)
            {
              goto LABEL_53;
            }
          }

          if (v24 == 4096)
          {
            break;
          }

          v21 = v23[1];
          if (!v21)
          {
            v22 = v23 + 1;
            goto LABEL_53;
          }
        }

        v25 = v23;
        goto LABEL_57;
      }
    }

    else
    {
      v22 = (a1 + 104);
      v21 = *(a1 + 104);
      if (v21)
      {
        goto LABEL_49;
      }
    }

    v23 = v22;
LABEL_53:
    v25 = operator new(0x28uLL);
    *(v25 + 28) = 4096;
    *v25 = 0;
    v25[1] = 0;
    v25[2] = v23;
    *v22 = v25;
    v26 = **(a1 + 96);
    if (v26)
    {
      *(a1 + 96) = v26;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 104), v25);
    ++*(a1 + 112);
LABEL_57:
    *(a1 + 88) |= *(v25 + 8);
    v20 = *a1;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *(a1 + 88);
    LODWORD(__p[0]) = 67109120;
    HIDWORD(__p[0]) = v27;
    _os_log_impl(&dword_297288000, v20, OS_LOG_TYPE_DEFAULT, "#I Accessory State: 0x%x\n", __p, 8u);
  }

  LegacyAccessoryManager::notifyClients(a1);
LABEL_61:
  v28 = *MEMORY[0x29EDCA608];
}

void LegacyAccessoryManager::notifyClients(NSObject **this)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 22);
    LODWORD(v13) = 67109120;
    HIDWORD(v13) = v3;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Notifying Accessory State: 0x%x\n", &v13, 8u);
  }

  v4 = this[4];
  v5 = this[5];
  if (v4 != v5)
  {
    while (!v4->isa)
    {
      v6 = 0;
      isa = v4[1].isa;
      if (isa)
      {
        goto LABEL_8;
      }

LABEL_9:
      v8 = *(this + 22);
      if (!v6)
      {
        v10 = 0;
        v13 = MEMORY[0x29EDCA5F8];
        v14 = 1174405120;
        v15 = ___ZNK8dispatch8callbackIU13block_pointerFvjEEclIJjEEEvDpT__block_invoke;
        v16 = &__block_descriptor_tmp_17_1;
LABEL_15:
        v11 = 0;
        goto LABEL_16;
      }

      v9 = _Block_copy(v6);
      v10 = v9;
      v13 = MEMORY[0x29EDCA5F8];
      v14 = 1174405120;
      v15 = ___ZNK8dispatch8callbackIU13block_pointerFvjEEclIJjEEEvDpT__block_invoke;
      v16 = &__block_descriptor_tmp_17_1;
      if (!v9)
      {
        goto LABEL_15;
      }

      v11 = _Block_copy(v9);
LABEL_16:
      aBlock = v11;
      v18 = v8;
      dispatch_async(isa, &v13);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v10)
      {
        _Block_release(v10);
      }

      if (isa)
      {
        dispatch_release(isa);
      }

      if (v6)
      {
        _Block_release(v6);
      }

      v4 += 2;
      if (v4 == v5)
      {
        goto LABEL_24;
      }
    }

    v6 = _Block_copy(v4->isa);
    isa = v4[1].isa;
    if (!isa)
    {
      goto LABEL_9;
    }

LABEL_8:
    dispatch_retain(isa);
    goto LABEL_9;
  }

LABEL_24:
  v12 = *MEMORY[0x29EDCA608];
}

void sub_2972E2458(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

char *LegacyAccessoryManager::registerCallback(unint64_t *a1, void **a2)
{
  v4 = a1[5];
  if (v4 >= a1[6])
  {
    result = std::vector<dispatch::callback<void({block_pointer})>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})> const&>(a1 + 4, a2);
    a1[5] = result;
  }

  else
  {
    v5 = *a2;
    if (*a2)
    {
      v5 = _Block_copy(v5);
    }

    v6 = a2[1];
    *v4 = v5;
    v4[1] = v6;
    if (v6)
    {
      dispatch_retain(v6);
    }

    result = (v4 + 2);
    a1[5] = (v4 + 2);
  }

  return result;
}

void **std::vector<dispatch::callback<void({block_pointer})(unsigned int)>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5)
        {
          dispatch_release(v5);
        }

        v7 = *(v3 - 2);
        v3 -= 16;
        v6 = v7;
        if (v7)
        {
          _Block_release(v6);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitAccessoryParameter)>::~callback(uint64_t a1)
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

  return a1;
}

char *std::vector<dispatch::callback<void({block_pointer})(unsigned int)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(unsigned int)> const&>(unint64_t *a1, uint64_t a2)
{
  v2 = a1[1] - *a1;
  v3 = v2 >> 4;
  v4 = (v2 >> 4) + 1;
  if (v4 >> 60)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 3 > v4)
  {
    v4 = v7 >> 3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v8 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  if (!v8)
  {
    v9 = 0;
    v10 = *a2;
    if (!*a2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v8 >> 60)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v9 = operator new(16 * v8);
  v10 = *a2;
  if (*a2)
  {
LABEL_12:
    v10 = _Block_copy(v10);
  }

LABEL_13:
  v11 = *(a2 + 8);
  v12 = &v9[16 * v3];
  *v12 = v10;
  *(v12 + 1) = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v13 = *a1;
  v14 = a1[1];
  v15 = &v12[-(v14 - *a1)];
  v16 = v14 - *a1;
  if (v14 != *a1)
  {
    v17 = v16 - 16;
    v18 = *a1;
    v19 = &v12[-(v14 - *a1)];
    if ((v16 - 16) < 0x110)
    {
      goto LABEL_48;
    }

    v20 = &v9[v2 + (v17 & 0xFFFFFFFFFFFFFFF0) - v16];
    v21 = v20 + 8;
    v22 = v13 + (v17 & 0xFFFFFFFFFFFFFFF0);
    v23 = (v20 + 16);
    v24 = &v9[v2 - v16 + 8] >= v22 + 16 || v13 + 8 >= v23;
    v25 = !v24;
    v26 = v13 >= v21 || v15 >= v22 + 8;
    v18 = *a1;
    v19 = &v12[-(v14 - *a1)];
    if (!v26)
    {
      goto LABEL_48;
    }

    v18 = *a1;
    v19 = &v12[-(v14 - *a1)];
    if (v25)
    {
      goto LABEL_48;
    }

    v27 = v16 >> 4;
    v28 = (v17 >> 4) + 1;
    v29 = 16 * (v28 & 0x1FFFFFFFFFFFFFFCLL);
    v18 = v13 + v29;
    v19 = (v15 + v29);
    v30 = &v9[16 * v3 + 32 + -16 * v27];
    v31 = (v13 + 32);
    v32 = v28 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      v33 = *(v31 - 1);
      v34 = *v31;
      v35 = v31[1];
      *(v30 - 2) = *(v31 - 2);
      *(v30 - 1) = v33;
      *v30 = v34;
      *(v30 + 1) = v35;
      v30 += 64;
      *(v31 - 2) = 0uLL;
      *(v31 - 1) = 0uLL;
      *v31 = 0uLL;
      v31[1] = 0uLL;
      v31 += 4;
      v32 -= 4;
    }

    while (v32);
    if (v28 != (v28 & 0x1FFFFFFFFFFFFFFCLL))
    {
LABEL_48:
      do
      {
        *v19 = *v18;
        v19 += 16;
        *v18 = 0;
        *(v18 + 8) = 0;
        v18 += 16;
      }

      while (v18 != v14);
    }

    do
    {
      v36 = *(v13 + 8);
      if (v36)
      {
        dispatch_release(v36);
      }

      if (*v13)
      {
        _Block_release(*v13);
      }

      v13 += 16;
    }

    while (v13 != v14);
    v13 = *a1;
  }

  *a1 = v15;
  a1[1] = (v12 + 16);
  a1[2] = &v9[16 * v8];
  if (v13)
  {
    operator delete(v13);
  }

  return v12 + 16;
}

void std::__shared_ptr_pointer<LegacyAccessoryManager *,std::shared_ptr<LegacyAccessoryManager>::__shared_ptr_default_delete<LegacyAccessoryManager,LegacyAccessoryManager>,std::allocator<LegacyAccessoryManager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<LegacyAccessoryManager *,std::shared_ptr<LegacyAccessoryManager>::__shared_ptr_default_delete<LegacyAccessoryManager,LegacyAccessoryManager>,std::allocator<LegacyAccessoryManager>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    LegacyAccessoryManager::~LegacyAccessoryManager(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<LegacyAccessoryManager *,std::shared_ptr<LegacyAccessoryManager>::__shared_ptr_default_delete<LegacyAccessoryManager,LegacyAccessoryManager>,std::allocator<LegacyAccessoryManager>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000297430D47)
  {
    if (((v2 & 0x8000000297430D47 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000297430D47))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000297430D47 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

LegacyAccessoryManager **std::unique_ptr<LegacyAccessoryManager>::~unique_ptr[abi:ne200100](LegacyAccessoryManager **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    LegacyAccessoryManager::~LegacyAccessoryManager(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

void std::__tree<std::__value_type<ctu::iokit::TelephonyIOKitAccessoryType,LegacyAccessoryTypes>,std::__map_value_compare<ctu::iokit::TelephonyIOKitAccessoryType,std::__value_type<ctu::iokit::TelephonyIOKitAccessoryType,LegacyAccessoryTypes>,std::less<ctu::iokit::TelephonyIOKitAccessoryType>,true>,std::allocator<std::__value_type<ctu::iokit::TelephonyIOKitAccessoryType,LegacyAccessoryTypes>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<ctu::iokit::TelephonyIOKitAccessoryType,LegacyAccessoryTypes>,std::__map_value_compare<ctu::iokit::TelephonyIOKitAccessoryType,std::__value_type<ctu::iokit::TelephonyIOKitAccessoryType,LegacyAccessoryTypes>,std::less<ctu::iokit::TelephonyIOKitAccessoryType>,true>,std::allocator<std::__value_type<ctu::iokit::TelephonyIOKitAccessoryType,LegacyAccessoryTypes>>>::destroy(*a1);
    std::__tree<std::__value_type<ctu::iokit::TelephonyIOKitAccessoryType,LegacyAccessoryTypes>,std::__map_value_compare<ctu::iokit::TelephonyIOKitAccessoryType,std::__value_type<ctu::iokit::TelephonyIOKitAccessoryType,LegacyAccessoryTypes>,std::less<ctu::iokit::TelephonyIOKitAccessoryType>,true>,std::allocator<std::__value_type<ctu::iokit::TelephonyIOKitAccessoryType,LegacyAccessoryTypes>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void *__copy_helper_block_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvjEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvjEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t __cxx_global_var_init_6()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMServer>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance, &dword_297288000);
  }

  return result;
}

void sub_2972E2BC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_ea8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v2 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v2;
  }
}

void __destroy_helper_block_ea8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void sub_2972E39F0(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_2A1399D68);

  _Unwind_Resume(a1);
}

void sub_2972E3A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v8 = *(v5 + 64);
  if (v8)
  {
    dispatch_release(v8);

    if (*(v5 + 55) < 0)
    {
LABEL_3:
      operator delete(*(v5 + 32));
      std::unique_ptr<std::__tree_node<std::__value_type<std::string,CallBackData>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,CallBackData>,void *>>>>::~unique_ptr[abi:ne200100](va);

      _Unwind_Resume(a1);
    }
  }

  else
  {

    if (*(v5 + 55) < 0)
    {
      goto LABEL_3;
    }
  }

  std::unique_ptr<std::__tree_node<std::__value_type<std::string,CallBackData>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,CallBackData>,void *>>>>::~unique_ptr[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_2972E3ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,CallBackData>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,CallBackData>,void *>>>>::~unique_ptr[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_2972E3D14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  support::ui::NotificationInfo::~NotificationInfo((v25 + 40));
  _Unwind_Resume(a1);
}

void sub_2972E3D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void CallBackData::~CallBackData(void **this)
{
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  v2 = this[1];
  if (v2)
  {
    dispatch_release(v2);
  }
}

void support::ui::NotificationInfo::~NotificationInfo(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
    if ((*(this + 47) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 23) & 0x80000000) == 0)
      {
        return;
      }

LABEL_7:
      operator delete(*this);
      return;
    }
  }

  else if ((*(this + 47) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[3]);
  if (*(this + 23) < 0)
  {
    goto LABEL_7;
  }
}

void __copy_helper_block_ea8_40c35_ZTSN7support2ui16NotificationInfoE112c18_ZTS12CallBackData(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
    if ((*(a2 + 87) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
    if ((*(a2 + 87) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 64);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 64) = v5;
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 64), *(a2 + 72));
LABEL_6:
  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v6 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v6;
  }

  v7 = _Block_copy(*(a2 + 112));
  v8 = *(a2 + 120);
  *(a1 + 112) = v7;
  *(a1 + 120) = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  if (*(a2 + 151) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 128), *(a2 + 128), *(a2 + 136));
  }

  else
  {
    v9 = *(a2 + 128);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 128) = v9;
  }
}

void sub_2972E4794(_Unwind_Exception *a1)
{
  v3 = *(v1 + 120);
  if (v3)
  {
    dispatch_release(v3);
  }

  support::ui::NotificationInfo::~NotificationInfo((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_2972E47BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
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

void __destroy_helper_block_ea8_40c35_ZTSN7support2ui16NotificationInfoE112c18_ZTS12CallBackData(uint64_t a1)
{
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  v2 = *(a1 + 120);
  if (v2)
  {
    dispatch_release(v2);
  }

  if ((*(a1 + 111) & 0x80000000) == 0)
  {
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    operator delete(*(a1 + 64));
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

  operator delete(*(a1 + 88));
  if (*(a1 + 87) < 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  if ((*(a1 + 63) & 0x80000000) == 0)
  {
    return;
  }

LABEL_11:
  v3 = *(a1 + 40);

  operator delete(v3);
}

void sub_2972E4C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  operator delete(v25);
  xpc_release(*(v26 - 72));
  _Unwind_Resume(a1);
}

void sub_2972E5578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, dispatch_object_t object, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, dispatch_object_t a32)
{
  if (object)
  {
    dispatch_release(object);
  }

  CallBackData::~CallBackData(&a31);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void __copy_helper_block_ea8_32c18_ZTS12CallBackData(std::string *a1, uint64_t a2)
{
  v4 = _Block_copy(*(a2 + 32));
  v5 = *(a2 + 40);
  a1[1].__r_.__value_.__l.__size_ = v4;
  a1[1].__r_.__value_.__r.__words[2] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v6 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v6;
  }
}

void sub_2972E56C4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    dispatch_release(v3);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_32c18_ZTS12CallBackData(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 32);
}

void support::ui::showNotification(unsigned int a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *a2, *(a2 + 8));
  }

  else
  {
    v7 = *a2;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v8 = *(a2 + 24);
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    __p = *(a2 + 48);
  }

  v6 = 0;
  support::ui::showNotification(a1, &v7, v5, &v6);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    operator delete(v8.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v7.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  if ((SHIBYTE(v7.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_13:

    return;
  }

LABEL_16:
  operator delete(v7.__r_.__value_.__l.__data_);
}

void sub_2972E58C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((a16 & 0x80000000) == 0)
    {
LABEL_3:

      _Unwind_Resume(a1);
    }
  }

  else if ((a16 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a11);

  _Unwind_Resume(a1);
}

void sub_2972E5928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  support::ui::NotificationInfo::~NotificationInfo(va);

  _Unwind_Resume(a1);
}

void support::ui::showNotification(unsigned int a1, uint64_t a2, void *a3, void *a4)
{
  v49 = *MEMORY[0x29EDCA608];
  v7 = a3;
  memset(&v46, 170, sizeof(v46));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v46, *a2, *(a2 + 8));
  }

  else
  {
    v46 = *a2;
  }

  size = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v46.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::string::insert(&v46, 0, "com.apple.telephony.", 0x14uLL);
    goto LABEL_11;
  }

  if ((atomic_load_explicit(&qword_2A1399D98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399D98))
  {
    qword_2A1399DA0 = 0;
    qword_2A1399DA8 = 0;
    __cxa_guard_release(&qword_2A1399D98);
  }

  if (qword_2A1399D90 == -1)
  {
    v9 = qword_2A1399DA8;
    if (!os_log_type_enabled(qword_2A1399DA8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

LABEL_14:
    LOWORD(buf) = 0;
    _os_log_error_impl(&dword_297288000, v9, OS_LOG_TYPE_ERROR, "User notification requires an identifier", &buf, 2u);
    memset(&v45, 0, sizeof(v45));
    if (a1 <= 3)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  dispatch_once(&qword_2A1399D90, &__block_literal_global_2);
  v9 = qword_2A1399DA8;
  if (os_log_type_enabled(qword_2A1399DA8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_14;
  }

LABEL_11:
  memset(&v45, 0, sizeof(v45));
  if (a1 <= 3)
  {
LABEL_12:
    v10 = std::string::__assign_external(&v45, "BasebandServicesNotification", 0x1CuLL);
    goto LABEL_18;
  }

LABEL_15:
  if ((atomic_load_explicit(&qword_2A1399D98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399D98))
  {
    qword_2A1399DA0 = 0;
    qword_2A1399DA8 = 0;
    __cxa_guard_release(&qword_2A1399D98);
  }

  if (qword_2A1399D90 == -1)
  {
    v11 = qword_2A1399DA8;
    v10 = os_log_type_enabled(qword_2A1399DA8, OS_LOG_TYPE_ERROR);
    if (!v10)
    {
      goto LABEL_18;
    }

LABEL_125:
    LODWORD(buf) = 67109120;
    DWORD1(buf) = a1;
    _os_log_error_impl(&dword_297288000, v11, OS_LOG_TYPE_ERROR, "User notification is not supported for caller %d", &buf, 8u);
    v37 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v37 = v46.__r_.__value_.__l.__size_;
    }

    if (!v37)
    {
      goto LABEL_113;
    }

    goto LABEL_21;
  }

  dispatch_once(&qword_2A1399D90, &__block_literal_global_2);
  v11 = qword_2A1399DA8;
  v10 = os_log_type_enabled(qword_2A1399DA8, OS_LOG_TYPE_ERROR);
  if (v10)
  {
    goto LABEL_125;
  }

LABEL_18:
  v12 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = v46.__r_.__value_.__l.__size_;
  }

  if (!v12)
  {
    goto LABEL_113;
  }

LABEL_21:
  v13 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v13 = v45.__r_.__value_.__l.__size_;
  }

  if (v13)
  {
    v14 = (a2 + 24);
    v15 = *(a2 + 32);
    if (*(a2 + 47) < 0 && v15 == 23)
    {
      v17 = **v14 == 0x72616C756C6C6543 && *(*v14 + 8) == 0x445F65757373495FLL && *(*v14 + 15) == 0x6465746365746544;
      if (v17 && (a1 != 2 || (config::hw::watch(v10) & 1) != 0))
      {
        goto LABEL_113;
      }

LABEL_79:
      v32 = *a2;
      v33 = *(a2 + 8);
      *a2 = v46;
      v46.__r_.__value_.__r.__words[0] = v32;
      *&v46.__r_.__value_.__r.__words[1] = v33;
      v48.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAAAALL;
      *&v33 = 0xAAAAAAAAAAAAAAAALL;
      *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
      buf = v33;
      *&v48.__r_.__value_.__l.__data_ = v33;
      *&buf = _Block_copy(v7);
      *(&buf + 1) = *a4;
      if (*(&buf + 1))
      {
        dispatch_retain(*(&buf + 1));
      }

      if (*(a2 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v48, *(a2 + 24), *(a2 + 32));
      }

      else
      {
        *&v48.__r_.__value_.__l.__data_ = *v14;
        v48.__r_.__value_.__r.__words[2] = *(a2 + 40);
      }

      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v44, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
      }

      else
      {
        v44 = v45;
      }

      v34 = [UserNotificationManager sharedInstance:&v44];
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v41, *a2, *(a2 + 8));
      }

      else
      {
        v41 = *a2;
      }

      if (*(a2 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v42, *(a2 + 24), *(a2 + 32));
      }

      else
      {
        *&v42.__r_.__value_.__l.__data_ = *v14;
        v42.__r_.__value_.__r.__words[2] = *(a2 + 40);
      }

      if (*(a2 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&v43, *(a2 + 48), *(a2 + 56));
      }

      else
      {
        v43 = *(a2 + 48);
      }

      v38 = _Block_copy(buf);
      object = *(&buf + 1);
      if (*(&buf + 1))
      {
        dispatch_retain(*(&buf + 1));
      }

      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v48;
      }

      [v34 showNotification:&v41 withCallBackData:&v38];
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (object)
      {
        dispatch_release(object);
      }

      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_107:
          if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_108;
          }

LABEL_120:
          operator delete(v41.__r_.__value_.__l.__data_);
LABEL_108:

          if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v44.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_110:
              v35 = *(&buf + 1);
              if (!*(&buf + 1))
              {
LABEL_112:

                goto LABEL_113;
              }

LABEL_111:
              dispatch_release(v35);
              goto LABEL_112;
            }
          }

          else if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_110;
          }

          operator delete(v48.__r_.__value_.__l.__data_);
          v35 = *(&buf + 1);
          if (!*(&buf + 1))
          {
            goto LABEL_112;
          }

          goto LABEL_111;
        }
      }

      else if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_107;
      }

      operator delete(v42.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_108;
      }

      goto LABEL_120;
    }

    v18 = *(a2 + 47);
    if ((v18 & 0x80) != 0)
    {
      if (v15 != 20)
      {
        if (v15 == 22)
        {
          v22 = *(*v14 + 14);
          v23 = **v14 == 0x6E6F6870656C6554 && *(*v14 + 8) == 0x535F706D75445F79;
          v24 = 0x646574726174535FLL;
          goto LABEL_72;
        }

LABEL_63:
        if ((v18 & 0x80) == 0 || v15 != 27)
        {
          goto LABEL_79;
        }

        v22 = *(*v14 + 19);
        v23 = **v14 == 0x6E6F6870656C6554 && *(*v14 + 8) == 0x495F706D75445F79 && *(*v14 + 16) == 0x696369666675736ELL;
        v24 = 0x746E656963696666;
LABEL_72:
        if (!v23 || v22 != v24)
        {
          goto LABEL_79;
        }

        goto LABEL_77;
      }

      v19 = *v14;
    }

    else
    {
      v19 = (a2 + 24);
      if (v18 != 20)
      {
        if (v18 != 22)
        {
          goto LABEL_79;
        }

        v20 = *v14 == 0x6E6F6870656C6554 && *(a2 + 32) == 0x535F706D75445F79;
        if (!v20 || *(a2 + 38) != 0x646574726174535FLL)
        {
          goto LABEL_79;
        }

        goto LABEL_77;
      }
    }

    v25 = *v19;
    v26 = v19[1];
    v27 = *(v19 + 4);
    if (v25 == 0x6E6F6870656C6554 && v26 == 0x525F706D75445F79 && v27 == 2036621669)
    {
LABEL_77:
      if ((TelephonyUtilIsInternalBuild() & 1) == 0 && !TelephonyUtilIsCarrierBuild())
      {
        goto LABEL_113;
      }

      goto LABEL_79;
    }

    goto LABEL_63;
  }

LABEL_113:
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_115;
    }

LABEL_117:
    operator delete(v46.__r_.__value_.__l.__data_);
    goto LABEL_115;
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_117;
  }

LABEL_115:

  v36 = *MEMORY[0x29EDCA608];
}

void sub_2972E6090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, dispatch_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (object)
  {
    dispatch_release(object);
  }

  support::ui::NotificationInfo::~NotificationInfo(&a15);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  CallBackData::~CallBackData((v44 - 112));
  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (*(v44 - 121) < 0)
  {
    operator delete(*(v44 - 144));
  }

  _Unwind_Resume(a1);
}

void ___ZL16sGetOsLogContextv_block_invoke_1()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "support.ui");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,CallBackData>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,CallBackData>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      if (*(v1 + 95) < 0)
      {
        operator delete(*(v1 + 72));
      }

      v3 = *(v1 + 64);
      if (v3)
      {
        dispatch_release(v3);
      }

      if (*(v1 + 55) < 0)
      {
        operator delete(*(v1 + 32));
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void std::__tree<std::__value_type<std::string,CallBackData>,std::__map_value_compare<std::string,std::__value_type<std::string,CallBackData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CallBackData>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,CallBackData>,std::__map_value_compare<std::string,std::__value_type<std::string,CallBackData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CallBackData>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,CallBackData>,std::__map_value_compare<std::string,std::__value_type<std::string,CallBackData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CallBackData>>>::destroy(*(a1 + 1));
    if (a1[95] < 0)
    {
      operator delete(*(a1 + 9));
    }

    v2 = *(a1 + 8);
    if (v2)
    {
      dispatch_release(v2);
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v3 = a1;
    }

    else
    {
      v3 = a1;
    }

    operator delete(v3);
  }
}

void AudioManager::create(AudioManager *this@<X0>, AudioManager **a2@<X8>)
{
  v5 = operator new(0x98uLL);
  AudioManager::AudioManager(v5, this);
  v6 = operator new(0x20uLL);
  v6->__shared_owners_ = 0;
  p_shared_owners = &v6->__shared_owners_;
  v6->__vftable = &unk_2A1E36A50;
  v6->__shared_weak_owners_ = 0;
  v6[1].__vftable = v5;
  v8 = *(v5 + 2);
  if (v8)
  {
    if (v8->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      *(v5 + 1) = v5;
      *(v5 + 2) = v6;
      std::__shared_weak_count::__release_weak(v8);
      if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(v5 + 1) = v5;
    *(v5 + 2) = v6;
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_6:
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  *a2 = v5;
  a2[1] = v6;
}

void sub_2972E6428(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<AudioManager>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void AudioManager::AudioManager(AudioManager *this, const char *__s)
{
  v4 = 0x7FFFFFFFFFFFFFF7;
  v5 = strlen(__s);
  if (v5 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v5 | 7) + 1;
    }

    p_dst = operator new(v12);
    *(&__dst + 1) = v6;
    v37 = v12 | 0x8000000000000000;
    *&__dst = p_dst;
  }

  else
  {
    HIBYTE(v37) = v5;
    p_dst = &__dst;
    if (!v5)
    {
      LOBYTE(__dst) = 0;
      v8 = SHIBYTE(v37);
      if ((SHIBYTE(v37) & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  memcpy(p_dst, __s, v6);
  *(p_dst + v6) = 0;
  v8 = SHIBYTE(v37);
  if ((SHIBYTE(v37) & 0x8000000000000000) == 0)
  {
LABEL_5:
    v9 = &__dst;
    if (v8 == 22)
    {
      v10 = 22;
      v11 = 23;
LABEL_15:
      v13 = 2 * v10;
      if (v11 > 2 * v10)
      {
        v13 = v11;
      }

      if ((v13 | 7) == 0x17)
      {
        v14 = 25;
      }

      else
      {
        v14 = (v13 | 7) + 1;
      }

      if (v13 >= 0x17)
      {
        v15 = v14;
      }

      else
      {
        v15 = 23;
      }

      v16 = v10 == 22;
      goto LABEL_24;
    }

LABEL_30:
    *(v9 + v8) = 46;
    v20 = v8 + 1;
    if (SHIBYTE(v37) < 0)
    {
      *(&__dst + 1) = v20;
    }

    else
    {
      HIBYTE(v37) = v20 & 0x7F;
    }

    v19 = v9 + v20;
    goto LABEL_34;
  }

LABEL_12:
  v8 = *(&__dst + 1);
  v11 = v37 & 0x7FFFFFFFFFFFFFFFLL;
  v10 = (v37 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 != *(&__dst + 1))
  {
    v9 = __dst;
    goto LABEL_30;
  }

  if (v11 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = __dst;
  if (v10 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_15;
  }

  v16 = 0;
  v15 = 0x7FFFFFFFFFFFFFF7;
LABEL_24:
  v17 = operator new(v15);
  v18 = v17;
  if (v10)
  {
    memmove(v17, v9, v10);
  }

  v18[v10] = 46;
  if (!v16)
  {
    operator delete(v9);
  }

  *(&__dst + 1) = v11;
  v37 = v15 | 0x8000000000000000;
  *&__dst = v18;
  v19 = &v18[v11];
LABEL_34:
  *v19 = 0;
  v39 = v37;
  *v38 = __dst;
  v37 = 0;
  __dst = 0uLL;
  v21 = SHIBYTE(v39);
  if ((SHIBYTE(v39) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v39) - 11) < 0xC)
    {
      v22 = (SHIBYTE(v39) + 12);
      v23 = v38;
      v24 = 22;
LABEL_40:
      v25 = 2 * v24;
      if (v22 > 2 * v24)
      {
        v25 = v22;
      }

      if ((v25 | 7) == 0x17)
      {
        v26 = 25;
      }

      else
      {
        v26 = (v25 | 7) + 1;
      }

      if (v25 >= 0x17)
      {
        v4 = v26;
      }

      else
      {
        v4 = 23;
      }

      v27 = v24 == 22;
      goto LABEL_49;
    }

    v32 = v38;
LABEL_56:
    v33 = v32 + v21;
    *v33 = *"AudioManager";
    *(v33 + 2) = 1919248225;
    v34 = v21 + 12;
    if (SHIBYTE(v39) < 0)
    {
      v38[1] = (v21 + 12);
    }

    else
    {
      HIBYTE(v39) = v34 & 0x7F;
    }

    v31 = v32 + v34;
    goto LABEL_60;
  }

  v21 = v38[1];
  v24 = (v39 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v24 - v38[1] >= 0xC)
  {
    v32 = v38[0];
    goto LABEL_56;
  }

  v22 = v38[1] + 12;
  if ((0x7FFFFFFFFFFFFFF7 - (v39 & 0x7FFFFFFFFFFFFFFFLL)) < v38[1] - v24 + 12)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v23 = v38[0];
  if (v24 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_40;
  }

  v27 = 0;
LABEL_49:
  v28 = operator new(v4);
  v29 = v28;
  if (v21)
  {
    memmove(v28, v23, v21);
  }

  v30 = v29 + v21;
  *v30 = *"AudioManager";
  *(v30 + 2) = 1919248225;
  if (!v27)
  {
    operator delete(v23);
  }

  v38[1] = v22;
  v39 = v4 | 0x8000000000000000;
  v38[0] = v29;
  v31 = &v22[v29];
LABEL_60:
  *v31 = 0;
  v41 = v39;
  *__p = *v38;
  v38[1] = 0;
  v39 = 0;
  v38[0] = 0;
  if (v41 >= 0)
  {
    v35 = __p;
  }

  else
  {
    v35 = __p[0];
  }

  ctu::OsLogLogger::OsLogLogger(this, "com.apple.telephony.abm", v35);
  if ((SHIBYTE(v41) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v39) & 0x80000000) == 0)
    {
      goto LABEL_65;
    }

LABEL_68:
    operator delete(v38[0]);
    if ((SHIBYTE(v37) & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

LABEL_69:
    operator delete(__dst);
    goto LABEL_66;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v39) < 0)
  {
    goto LABEL_68;
  }

LABEL_65:
  if (SHIBYTE(v37) < 0)
  {
    goto LABEL_69;
  }

LABEL_66:
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 24) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 56) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 8) = 0;
  *(this + 88) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0;
  *(this + 120) = 0;
}

void sub_2972E6850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(a16);
    if (a15 < 0)
    {
LABEL_3:
      operator delete(__p);
      _Unwind_Resume(exception_object);
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(exception_object);
}

void AudioManager::~AudioManager(AudioManager *this)
{
  v2 = *(this + 4);
  for (i = *(this + 5); i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      dispatch_release(v4);
    }

    v6 = *(i - 16);
    v5 = v6;
    if (v6)
    {
      _Block_release(v5);
    }
  }

  *(this + 5) = v2;
  v7 = *(this + 8);
  for (j = *(this + 9); j != v7; j -= 16)
  {
    v9 = *(j - 8);
    if (v9)
    {
      dispatch_release(v9);
    }

    v11 = *(j - 16);
    v10 = v11;
    if (v11)
    {
      _Block_release(v10);
    }
  }

  *(this + 9) = v7;
  v12 = *(this + 12);
  for (k = *(this + 13); k != v12; k -= 16)
  {
    v14 = *(k - 8);
    if (v14)
    {
      dispatch_release(v14);
    }

    v16 = *(k - 16);
    v15 = v16;
    if (v16)
    {
      _Block_release(v15);
    }
  }

  *(this + 13) = v12;
  v17 = *(this + 16);
  v18 = *(this + 17);
  v19 = v17;
  if (v18 == v17)
  {
    *(this + 17) = v17;
    if (!v17)
    {
      goto LABEL_21;
    }
  }

  else
  {
    do
    {
      v24 = *(v18 - 1);
      if (v24)
      {
        dispatch_release(v24);
      }

      v26 = *(v18 - 2);
      v18 -= 16;
      v25 = v26;
      if (v26)
      {
        _Block_release(v25);
      }
    }

    while (v18 != v17);
    v19 = *(this + 16);
    *(this + 17) = v17;
    if (!v19)
    {
LABEL_21:
      v20 = *(this + 12);
      if (!v20)
      {
        goto LABEL_22;
      }

LABEL_44:
      v31 = *(this + 13);
      if (v31 == v20)
      {
        *(this + 13) = v20;
        operator delete(v20);
        v21 = *(this + 8);
        if (v21)
        {
          goto LABEL_53;
        }
      }

      else
      {
        do
        {
          v32 = *(v31 - 1);
          if (v32)
          {
            dispatch_release(v32);
          }

          v34 = *(v31 - 2);
          v31 -= 16;
          v33 = v34;
          if (v34)
          {
            _Block_release(v33);
          }
        }

        while (v31 != v20);
        v35 = *(this + 12);
        *(this + 13) = v20;
        operator delete(v35);
        v21 = *(this + 8);
        if (v21)
        {
          goto LABEL_53;
        }
      }

LABEL_23:
      v22 = *(this + 4);
      if (!v22)
      {
        goto LABEL_24;
      }

LABEL_62:
      v41 = *(this + 5);
      if (v41 == v22)
      {
        *(this + 5) = v22;
        operator delete(v22);
        v23 = *(this + 2);
        if (!v23)
        {
          goto LABEL_26;
        }
      }

      else
      {
        do
        {
          v42 = *(v41 - 1);
          if (v42)
          {
            dispatch_release(v42);
          }

          v44 = *(v41 - 2);
          v41 -= 16;
          v43 = v44;
          if (v44)
          {
            _Block_release(v43);
          }
        }

        while (v41 != v22);
        v45 = *(this + 4);
        *(this + 5) = v22;
        operator delete(v45);
        v23 = *(this + 2);
        if (!v23)
        {
LABEL_26:

          JUMPOUT(0x29C26DE80);
        }
      }

LABEL_25:
      std::__shared_weak_count::__release_weak(v23);
      goto LABEL_26;
    }
  }

  if (v17 == v19)
  {
    *(this + 17) = v19;
    operator delete(v19);
    v20 = *(this + 12);
    if (v20)
    {
      goto LABEL_44;
    }
  }

  else
  {
    do
    {
      v27 = *(v17 - 1);
      if (v27)
      {
        dispatch_release(v27);
      }

      v29 = *(v17 - 2);
      v17 -= 16;
      v28 = v29;
      if (v29)
      {
        _Block_release(v28);
      }
    }

    while (v17 != v19);
    v30 = *(this + 16);
    *(this + 17) = v19;
    operator delete(v30);
    v20 = *(this + 12);
    if (v20)
    {
      goto LABEL_44;
    }
  }

LABEL_22:
  v21 = *(this + 8);
  if (!v21)
  {
    goto LABEL_23;
  }

LABEL_53:
  v36 = *(this + 9);
  if (v36 == v21)
  {
    *(this + 9) = v21;
    operator delete(v21);
    v22 = *(this + 4);
    if (v22)
    {
      goto LABEL_62;
    }
  }

  else
  {
    do
    {
      v37 = *(v36 - 1);
      if (v37)
      {
        dispatch_release(v37);
      }

      v39 = *(v36 - 2);
      v36 -= 16;
      v38 = v39;
      if (v39)
      {
        _Block_release(v38);
      }
    }

    while (v36 != v21);
    v40 = *(this + 8);
    *(this + 9) = v21;
    operator delete(v40);
    v22 = *(this + 4);
    if (v22)
    {
      goto LABEL_62;
    }
  }

LABEL_24:
  v23 = *(this + 2);
  if (!v23)
  {
    goto LABEL_26;
  }

  goto LABEL_25;
}

void AudioManager::registerAudioInputCallback(void *a1, uint64_t a2)
{
  v5 = a1[5];
  v4 = a1[6];
  if (v5 < v4)
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
    goto LABEL_49;
  }

  v9 = a1[4];
  v10 = v5 - v9;
  v11 = (v5 - v9) >> 4;
  if ((v11 + 1) >> 60)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v12 = v4 - v9;
  v13 = v12 >> 3;
  if (v12 >> 3 <= (v11 + 1))
  {
    v13 = v11 + 1;
  }

  if (v12 >= 0x7FFFFFFFFFFFFFF0)
  {
    v14 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v13;
  }

  if (v14)
  {
    if (v14 >> 60)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v15 = operator new(16 * v14);
    v16 = *a2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v15 = 0;
  v16 = *a2;
  if (*a2)
  {
LABEL_18:
    v16 = _Block_copy(v16);
  }

LABEL_19:
  v17 = *(a2 + 8);
  v18 = v15 + 16 * v11;
  *v18 = v16;
  *(v18 + 1) = v17;
  if (v17)
  {
    dispatch_retain(v17);
  }

  v19 = a1[4];
  v20 = a1[5];
  v21 = &v18[-(v20 - v19)];
  v22 = v20 - v19;
  if (v20 != v19)
  {
    v23 = v22 - 16;
    v24 = a1[4];
    v25 = &v18[-(v20 - v19)];
    if ((v22 - 16) < 0x110)
    {
      goto LABEL_54;
    }

    v26 = &v10[(v23 & 0xFFFFFFFFFFFFFFF0) - v22 + v15];
    v27 = v26 + 8;
    v28 = v19 + (v23 & 0xFFFFFFFFFFFFFFF0);
    v29 = (v26 + 16);
    v30 = &v10[v15 - v22 + 8] >= (v28 + 16) || v19 + 8 >= v29;
    v31 = !v30;
    v32 = v19 >= v27 || v21 >= v28 + 8;
    v24 = a1[4];
    v25 = &v18[-(v20 - v19)];
    if (!v32)
    {
      goto LABEL_54;
    }

    v24 = a1[4];
    v25 = &v18[-(v20 - v19)];
    if (v31)
    {
      goto LABEL_54;
    }

    v33 = v22 >> 4;
    v34 = (v23 >> 4) + 1;
    v35 = 16 * (v34 & 0x1FFFFFFFFFFFFFFCLL);
    v24 = v19 + v35;
    v25 = (v21 + v35);
    v36 = v15 + 16 * v11 + -16 * v33 + 32;
    v37 = (v19 + 32);
    v38 = v34 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      v39 = *(v37 - 1);
      v40 = *v37;
      v41 = v37[1];
      *(v36 - 2) = *(v37 - 2);
      *(v36 - 1) = v39;
      *v36 = v40;
      *(v36 + 1) = v41;
      v36 += 64;
      *(v37 - 2) = 0uLL;
      *(v37 - 1) = 0uLL;
      *v37 = 0uLL;
      v37[1] = 0uLL;
      v37 += 4;
      v38 -= 4;
    }

    while (v38);
    if (v34 != (v34 & 0x1FFFFFFFFFFFFFFCLL))
    {
LABEL_54:
      do
      {
        *v25 = *v24;
        v25 += 16;
        *v24 = 0;
        *(v24 + 8) = 0;
        v24 += 16;
      }

      while (v24 != v20);
    }

    do
    {
      v42 = *(v19 + 8);
      if (v42)
      {
        dispatch_release(v42);
      }

      if (*v19)
      {
        _Block_release(*v19);
      }

      v19 += 16;
    }

    while (v19 != v20);
    v19 = a1[4];
  }

  v43 = v15 + 16 * v14;
  v8 = v18 + 16;
  a1[4] = v21;
  a1[5] = v18 + 16;
  a1[6] = v43;
  if (v19)
  {
    operator delete(v19);
  }

LABEL_49:
  a1[5] = v8;
}

char *AudioManager::registerAudioOutputCallback(unint64_t *a1, void **a2)
{
  v4 = a1[9];
  if (v4 >= a1[10])
  {
    result = std::vector<dispatch::callback<void({block_pointer})(AudioManager::AudioOutputState)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(AudioManager::AudioOutputState)> const&>(a1 + 8, a2);
    a1[9] = result;
  }

  else
  {
    v5 = *a2;
    if (*a2)
    {
      v5 = _Block_copy(v5);
    }

    v6 = a2[1];
    *v4 = v5;
    v4[1] = v6;
    if (v6)
    {
      dispatch_retain(v6);
    }

    result = (v4 + 2);
    a1[9] = (v4 + 2);
  }

  return result;
}

char *AudioManager::registerAudioSpeakerCallback(unint64_t *a1, void **a2)
{
  v4 = a1[13];
  if (v4 >= a1[14])
  {
    result = std::vector<dispatch::callback<void({block_pointer})(BOOL)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(BOOL)> const&>(a1 + 12, a2);
    a1[13] = result;
  }

  else
  {
    v5 = *a2;
    if (*a2)
    {
      v5 = _Block_copy(v5);
    }

    v6 = a2[1];
    *v4 = v5;
    v4[1] = v6;
    if (v6)
    {
      dispatch_retain(v6);
    }

    result = (v4 + 2);
    a1[13] = (v4 + 2);
  }

  return result;
}

char *AudioManager::registerAudioWiredPortCallback(unint64_t *a1, void **a2)
{
  v4 = a1[17];
  if (v4 >= a1[18])
  {
    result = std::vector<dispatch::callback<void({block_pointer})(BOOL)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(BOOL)> const&>(a1 + 16, a2);
    a1[17] = result;
  }

  else
  {
    v5 = *a2;
    if (*a2)
    {
      v5 = _Block_copy(v5);
    }

    v6 = a2[1];
    *v4 = v5;
    v4[1] = v6;
    if (v6)
    {
      dispatch_retain(v6);
    }

    result = (v4 + 2);
    a1[17] = (v4 + 2);
  }

  return result;
}

BOOL AudioManager::isAudioOutputReportSupported(AudioManager *this)
{
  if ((atomic_load_explicit(&qword_2A1399DB8, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A1399DB8);
    if (v2)
    {
      _MergedGlobals_3 = capabilities::txpower::supportedControlInput(v2);
      __cxa_guard_release(&qword_2A1399DB8);
    }
  }

  return capabilities::txpower::operator&() != 0;
}

void AudioManager::setAudioState(uint64_t a1, xpc::object *a2)
{
  v59 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEBUG))
  {
    xpc::object::to_string(object, a2);
    v24 = SHIBYTE(object[2]) >= 0 ? object : object[0];
    *xdict = 136315138;
    *&xdict[4] = v24;
    _os_log_debug_impl(&dword_297288000, v4, OS_LOG_TYPE_DEBUG, "#D Setting Audio State: %s", xdict, 0xCu);
    if (SHIBYTE(object[2]) < 0)
    {
      operator delete(object[0]);
    }
  }

  *xdict = 0xAAAAAAAAAAAAAAAALL;
  v5 = *MEMORY[0x29EDBE6B0];
  object[0] = a2;
  object[1] = v5;
  xpc::dict::object_proxy::operator xpc::dict(object, xdict);
  value = xpc_dictionary_get_value(*xdict, *MEMORY[0x29EDBEED0]);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v7 = xpc::dyn_cast_or_default(object, 0);
  xpc_release(object[0]);
  if (v7)
  {
    v8 = 0;
    LOBYTE(v9) = 1;
    if (*(a1 + 56) == 1)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v10 = xpc_dictionary_get_value(*xdict, *MEMORY[0x29EDBED70]);
  object[0] = v10;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v11 = xpc::dyn_cast_or_default(object, 0);
  xpc_release(object[0]);
  if (v11)
  {
    LOBYTE(v9) = 2;
    v8 = 1;
    if (*(a1 + 56) == 2)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v18 = xpc_dictionary_get_value(*xdict, *MEMORY[0x29EDBEAF0]);
  object[0] = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v21 = xpc::dyn_cast_or_default(object, 0);
  xpc_release(object[0]);
  v8 = 0;
  if (v21)
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 56) != v9)
  {
LABEL_13:
    *(a1 + 56) = v9;
    AudioManager::notifyAudioOutputClients(a1);
  }

LABEL_14:
  v12 = v8 & (v8 & (*(a1 + 88) == 0) | *(a1 + 88)) & 1;
  if (*(a1 + 88) != v12)
  {
    *(a1 + 88) = v12;
    AudioManager::notifyAudioSpeakerClients(a1);
  }

  v56 = 0xAAAAAAAAAAAAAAAALL;
  v13 = *MEMORY[0x29EDBE628];
  object[0] = a2;
  object[1] = v13;
  xpc::dict::object_proxy::operator xpc::dict(object, &v56);
  v14 = xpc_dictionary_get_value(v56, *MEMORY[0x29EDBE800]);
  object[0] = v14;
  if (v14)
  {
    xpc_retain(v14);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v15 = xpc::dyn_cast_or_default(object, 0);
  xpc_release(object[0]);
  if (v15)
  {
    v16 = 1;
  }

  else
  {
    v17 = xpc_dictionary_get_value(v56, *MEMORY[0x29EDBE808]);
    object[0] = v17;
    if (v17)
    {
      xpc_retain(v17);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v19 = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
    if (v19)
    {
      v16 = 2;
    }

    else
    {
      v20 = xpc_dictionary_get_value(v56, *MEMORY[0x29EDBE810]);
      object[0] = v20;
      if (v20)
      {
        xpc_retain(v20);
      }

      else
      {
        object[0] = xpc_null_create();
      }

      v22 = xpc::dyn_cast_or_default(object, 0);
      xpc_release(object[0]);
      if (v22)
      {
        v16 = 3;
      }

      else
      {
        v23 = xpc_dictionary_get_value(v56, *MEMORY[0x29EDBE818]);
        object[0] = v23;
        if (v23)
        {
          xpc_retain(v23);
        }

        else
        {
          object[0] = xpc_null_create();
        }

        v25 = xpc::dyn_cast_or_default(object, 0);
        xpc_release(object[0]);
        if (v25)
        {
          v16 = 4;
        }

        else
        {
          v26 = xpc_dictionary_get_value(v56, *MEMORY[0x29EDBE820]);
          object[0] = v26;
          if (v26)
          {
            xpc_retain(v26);
          }

          else
          {
            object[0] = xpc_null_create();
          }

          v27 = xpc::dyn_cast_or_default(object, 0);
          xpc_release(object[0]);
          if (v27)
          {
            v16 = 5;
          }

          else
          {
            v28 = xpc_dictionary_get_value(v56, *MEMORY[0x29EDBE828]);
            object[0] = v28;
            if (v28)
            {
              xpc_retain(v28);
            }

            else
            {
              object[0] = xpc_null_create();
            }

            v29 = xpc::dyn_cast_or_default(object, 0);
            xpc_release(object[0]);
            if (v29)
            {
              v16 = 6;
            }

            else
            {
              v16 = 0;
            }
          }
        }
      }
    }
  }

  if (*(a1 + 24) != v16)
  {
    *(a1 + 24) = v16;
    AudioManager::notifyAudioInputClients(a1);
  }

  xarray = 0xAAAAAAAAAAAAAAAALL;
  v30 = *MEMORY[0x29EDBEC30];
  object[0] = a2;
  object[1] = v30;
  xpc::dict::object_proxy::operator xpc::array(object, &xarray);
  v31 = *(a1 + 120);
  v32 = xarray;
  if (xarray)
  {
    xpc_retain(xarray);
LABEL_65:
    xpc_retain(v32);
    v33 = v32;
    goto LABEL_66;
  }

  v32 = xpc_null_create();
  if (v32)
  {
    goto LABEL_65;
  }

  v32 = xpc_null_create();
  v33 = 0;
LABEL_66:
  xpc_release(v33);
  v34 = xarray;
  if (xarray)
  {
    xpc_retain(xarray);
  }

  else
  {
    v34 = xpc_null_create();
  }

  if (MEMORY[0x29C26F9F0](xarray) == MEMORY[0x29EDCA9E0])
  {
    count = xpc_array_get_count(xarray);
    v52 = a1;
    if (v34)
    {
      goto LABEL_71;
    }

LABEL_73:
    v53 = xpc_null_create();
    goto LABEL_74;
  }

  count = 0;
  v52 = a1;
  if (!v34)
  {
    goto LABEL_73;
  }

LABEL_71:
  xpc_retain(v34);
  v53 = v34;
LABEL_74:
  xpc_release(v34);
  if (count || v32 != v53)
  {
    v36 = 0;
    v37 = *MEMORY[0x29EDBE830];
    v38 = count - 1;
    while (1)
    {
      while (1)
      {
        memset(object, 170, sizeof(object));
        v39 = xpc_array_get_value(v32, v36);
        v54 = v39;
        if (v39)
        {
          xpc_retain(v39);
        }

        else
        {
          v54 = xpc_null_create();
        }

        xpc::dyn_cast_or_default(object, &v54, "", v40);
        xpc_release(v54);
        v41 = strlen(v37);
        v42 = v41;
        v43 = SHIBYTE(object[2]);
        if ((SHIBYTE(object[2]) & 0x8000000000000000) != 0)
        {
          if (v41 == -1)
          {
LABEL_101:
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          v44 = object[0];
          v45 = object[1];
        }

        else
        {
          if (v41 == -1)
          {
            goto LABEL_101;
          }

          v44 = object;
          v45 = SHIBYTE(object[2]);
        }

        v46 = v45 >= v42 ? v42 : v45;
        v47 = memcmp(v44, v37, v46) == 0;
        v48 = v45 == v42 && v47;
        if ((v43 & 0x80000000) == 0)
        {
          break;
        }

        operator delete(object[0]);
        v31 |= v48;
        v49 = v36 + 1;
        v50 = v38 == v36++;
        if (v50)
        {
          goto LABEL_96;
        }
      }

      v31 |= v48;
      v49 = v36 + 1;
      v50 = v38 == v36++;
      if (v50)
      {
LABEL_96:
        v36 = v49;
        if (v32 == v53)
        {
          break;
        }
      }
    }
  }

  xpc_release(v53);
  xpc_release(v32);
  if (*(v52 + 120) != (v31 & 1))
  {
    *(v52 + 120) = v31 & 1;
    AudioManager::notifyAudioWiredPortClients(v52);
  }

  xpc_release(xarray);
  xpc_release(v56);
  xpc_release(*xdict);
  v51 = *MEMORY[0x29EDCA608];
}

void sub_2972E76D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t a11, xpc_object_t a12, xpc_object_t a13, xpc_object_t object, uint64_t a15, uint64_t a16, xpc_object_t a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void xpc::dict::object_proxy::operator xpc::dict(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_dictionary_get_value(**a1, *(a1 + 8));
  if (value)
  {
    v4 = value;
    xpc_retain(value);
    *a2 = v4;
  }

  else
  {
    v4 = xpc_null_create();
    *a2 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C26F9F0](v4) != MEMORY[0x29EDCAA00])
  {
    v5 = xpc_null_create();
LABEL_8:
    *a2 = v5;
    goto LABEL_9;
  }

  xpc_retain(v4);
LABEL_9:
  xpc_release(v4);
}

void AudioManager::notifyAudioOutputClients(os_log_t *this)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 56);
    if (v3 > 3)
    {
      v4 = "Unknown Audio Output";
    }

    else
    {
      v4 = off_29EE679A0[v3];
    }

    LODWORD(v14) = 136315138;
    *(&v14 + 4) = v4;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Notifying Audio Output: %s", &v14, 0xCu);
  }

  v5 = this[8];
  v6 = this[9];
  if (v5 != v6)
  {
    while (!v5->isa)
    {
      v7 = 0;
      isa = v5[1].isa;
      if (isa)
      {
        goto LABEL_11;
      }

LABEL_12:
      v9 = *(this + 56);
      if (!v7)
      {
        v11 = 0;
        *&v14 = MEMORY[0x29EDCA5F8];
        *(&v14 + 1) = 3321888768;
        v15 = ___ZNK8dispatch8callbackIU13block_pointerFvN12AudioManager16AudioOutputStateEEEclIJS2_EEEvDpT__block_invoke;
        v16 = &__block_descriptor_41_e8_32c76_ZTSN8dispatch5blockIU13block_pointerFvN12AudioManager16AudioOutputStateEEEE_e5_v8__0l;
LABEL_18:
        v12 = 0;
        goto LABEL_19;
      }

      v10 = _Block_copy(v7);
      v11 = v10;
      *&v14 = MEMORY[0x29EDCA5F8];
      *(&v14 + 1) = 3321888768;
      v15 = ___ZNK8dispatch8callbackIU13block_pointerFvN12AudioManager16AudioOutputStateEEEclIJS2_EEEvDpT__block_invoke;
      v16 = &__block_descriptor_41_e8_32c76_ZTSN8dispatch5blockIU13block_pointerFvN12AudioManager16AudioOutputStateEEEE_e5_v8__0l;
      if (!v10)
      {
        goto LABEL_18;
      }

      v12 = _Block_copy(v10);
LABEL_19:
      aBlock = v12;
      v18 = v9;
      dispatch_async(isa, &v14);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v11)
      {
        _Block_release(v11);
      }

      if (isa)
      {
        dispatch_release(isa);
      }

      if (v7)
      {
        _Block_release(v7);
      }

      v5 += 2;
      if (v5 == v6)
      {
        goto LABEL_27;
      }
    }

    v7 = _Block_copy(v5->isa);
    isa = v5[1].isa;
    if (!isa)
    {
      goto LABEL_12;
    }

LABEL_11:
    dispatch_retain(isa);
    goto LABEL_12;
  }

LABEL_27:
  v13 = *MEMORY[0x29EDCA608];
}

void sub_2972E7B78(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void AudioManager::notifyAudioSpeakerClients(NSObject **this)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 88))
    {
      v3 = "YES";
    }

    else
    {
      v3 = "NO";
    }

    LODWORD(v13) = 136315138;
    *(&v13 + 4) = v3;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Notifying Speaker State: %s", &v13, 0xCu);
  }

  v4 = this[12];
  v5 = this[13];
  if (v4 != v5)
  {
    while (!v4->isa)
    {
      v6 = 0;
      isa = v4[1].isa;
      if (isa)
      {
        goto LABEL_11;
      }

LABEL_12:
      v8 = *(this + 88);
      if (!v6)
      {
        v10 = 0;
        *&v13 = MEMORY[0x29EDCA5F8];
        *(&v13 + 1) = 3321888768;
        v14 = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke_0;
        v15 = &__block_descriptor_41_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE_e5_v8__0l;
LABEL_18:
        v11 = 0;
        goto LABEL_19;
      }

      v9 = _Block_copy(v6);
      v10 = v9;
      *&v13 = MEMORY[0x29EDCA5F8];
      *(&v13 + 1) = 3321888768;
      v14 = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke_0;
      v15 = &__block_descriptor_41_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE_e5_v8__0l;
      if (!v9)
      {
        goto LABEL_18;
      }

      v11 = _Block_copy(v9);
LABEL_19:
      aBlock = v11;
      v17 = v8;
      dispatch_async(isa, &v13);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v10)
      {
        _Block_release(v10);
      }

      if (isa)
      {
        dispatch_release(isa);
      }

      if (v6)
      {
        _Block_release(v6);
      }

      v4 += 2;
      if (v4 == v5)
      {
        goto LABEL_27;
      }
    }

    v6 = _Block_copy(v4->isa);
    isa = v4[1].isa;
    if (!isa)
    {
      goto LABEL_12;
    }

LABEL_11:
    dispatch_retain(isa);
    goto LABEL_12;
  }

LABEL_27:
  v12 = *MEMORY[0x29EDCA608];
}

void sub_2972E7DBC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void AudioManager::notifyAudioInputClients(os_log_t *this)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 24);
    if (v3 > 6)
    {
      v4 = "Unknown Audio Input";
    }

    else
    {
      v4 = off_29EE679C0[v3];
    }

    LODWORD(v14) = 136315138;
    *(&v14 + 4) = v4;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Notifying Audio Input: %s", &v14, 0xCu);
  }

  v5 = this[4];
  v6 = this[5];
  if (v5 != v6)
  {
    while (!v5->isa)
    {
      v7 = 0;
      isa = v5[1].isa;
      if (isa)
      {
        goto LABEL_11;
      }

LABEL_12:
      v9 = *(this + 24);
      if (!v7)
      {
        v11 = 0;
        *&v14 = MEMORY[0x29EDCA5F8];
        *(&v14 + 1) = 3321888768;
        v15 = ___ZNK8dispatch8callbackIU13block_pointerFvN12AudioManager15AudioInputStateEEEclIJS2_EEEvDpT__block_invoke;
        v16 = &__block_descriptor_41_e8_32c75_ZTSN8dispatch5blockIU13block_pointerFvN12AudioManager15AudioInputStateEEEE_e5_v8__0l;
LABEL_18:
        v12 = 0;
        goto LABEL_19;
      }

      v10 = _Block_copy(v7);
      v11 = v10;
      *&v14 = MEMORY[0x29EDCA5F8];
      *(&v14 + 1) = 3321888768;
      v15 = ___ZNK8dispatch8callbackIU13block_pointerFvN12AudioManager15AudioInputStateEEEclIJS2_EEEvDpT__block_invoke;
      v16 = &__block_descriptor_41_e8_32c75_ZTSN8dispatch5blockIU13block_pointerFvN12AudioManager15AudioInputStateEEEE_e5_v8__0l;
      if (!v10)
      {
        goto LABEL_18;
      }

      v12 = _Block_copy(v10);
LABEL_19:
      aBlock = v12;
      v18 = v9;
      dispatch_async(isa, &v14);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v11)
      {
        _Block_release(v11);
      }

      if (isa)
      {
        dispatch_release(isa);
      }

      if (v7)
      {
        _Block_release(v7);
      }

      v5 += 2;
      if (v5 == v6)
      {
        goto LABEL_27;
      }
    }

    v7 = _Block_copy(v5->isa);
    isa = v5[1].isa;
    if (!isa)
    {
      goto LABEL_12;
    }

LABEL_11:
    dispatch_retain(isa);
    goto LABEL_12;
  }

LABEL_27:
  v13 = *MEMORY[0x29EDCA608];
}

void sub_2972E8008(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void AudioManager::notifyAudioWiredPortClients(NSObject **this)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 120))
    {
      v3 = "YES";
    }

    else
    {
      v3 = "NO";
    }

    LODWORD(v13) = 136315138;
    *(&v13 + 4) = v3;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Notifying Wired State: %s", &v13, 0xCu);
  }

  v4 = this[16];
  v5 = this[17];
  if (v4 != v5)
  {
    while (!v4->isa)
    {
      v6 = 0;
      isa = v4[1].isa;
      if (isa)
      {
        goto LABEL_11;
      }

LABEL_12:
      v8 = *(this + 120);
      if (!v6)
      {
        v10 = 0;
        *&v13 = MEMORY[0x29EDCA5F8];
        *(&v13 + 1) = 3321888768;
        v14 = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke_0;
        v15 = &__block_descriptor_41_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE_e5_v8__0l;
LABEL_18:
        v11 = 0;
        goto LABEL_19;
      }

      v9 = _Block_copy(v6);
      v10 = v9;
      *&v13 = MEMORY[0x29EDCA5F8];
      *(&v13 + 1) = 3321888768;
      v14 = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke_0;
      v15 = &__block_descriptor_41_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE_e5_v8__0l;
      if (!v9)
      {
        goto LABEL_18;
      }

      v11 = _Block_copy(v9);
LABEL_19:
      aBlock = v11;
      v17 = v8;
      dispatch_async(isa, &v13);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v10)
      {
        _Block_release(v10);
      }

      if (isa)
      {
        dispatch_release(isa);
      }

      if (v6)
      {
        _Block_release(v6);
      }

      v4 += 2;
      if (v4 == v5)
      {
        goto LABEL_27;
      }
    }

    v6 = _Block_copy(v4->isa);
    isa = v4[1].isa;
    if (!isa)
    {
      goto LABEL_12;
    }

LABEL_11:
    dispatch_retain(isa);
    goto LABEL_12;
  }

LABEL_27:
  v12 = *MEMORY[0x29EDCA608];
}

void sub_2972E824C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

const char *AudioManager::toString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "Unknown Audio Output";
  }

  else
  {
    return off_29EE679A0[a1];
  }
}

{
  if (a1 > 6)
  {
    return "Unknown Audio Input";
  }

  else
  {
    return off_29EE679C0[a1];
  }
}

void AudioManager::notifyClients(os_log_t *this)
{
  AudioManager::notifyAudioInputClients(this);
  AudioManager::notifyAudioOutputClients(this);
  AudioManager::notifyAudioSpeakerClients(this);

  AudioManager::notifyAudioWiredPortClients(this);
}

char *std::vector<dispatch::callback<void({block_pointer})(AudioManager::AudioOutputState)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(AudioManager::AudioOutputState)> const&>(unint64_t *a1, uint64_t a2)
{
  v2 = a1[1] - *a1;
  v3 = v2 >> 4;
  v4 = (v2 >> 4) + 1;
  if (v4 >> 60)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 3 > v4)
  {
    v4 = v7 >> 3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v8 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  if (!v8)
  {
    v9 = 0;
    v10 = *a2;
    if (!*a2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v8 >> 60)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v9 = operator new(16 * v8);
  v10 = *a2;
  if (*a2)
  {
LABEL_12:
    v10 = _Block_copy(v10);
  }

LABEL_13:
  v11 = *(a2 + 8);
  v12 = &v9[16 * v3];
  *v12 = v10;
  *(v12 + 1) = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v13 = *a1;
  v14 = a1[1];
  v15 = &v12[-(v14 - *a1)];
  v16 = v14 - *a1;
  if (v14 != *a1)
  {
    v17 = v16 - 16;
    v18 = *a1;
    v19 = &v12[-(v14 - *a1)];
    if ((v16 - 16) < 0x110)
    {
      goto LABEL_48;
    }

    v20 = &v9[v2 + (v17 & 0xFFFFFFFFFFFFFFF0) - v16];
    v21 = v20 + 8;
    v22 = v13 + (v17 & 0xFFFFFFFFFFFFFFF0);
    v23 = (v20 + 16);
    v24 = &v9[v2 - v16 + 8] >= v22 + 16 || v13 + 8 >= v23;
    v25 = !v24;
    v26 = v13 >= v21 || v15 >= v22 + 8;
    v18 = *a1;
    v19 = &v12[-(v14 - *a1)];
    if (!v26)
    {
      goto LABEL_48;
    }

    v18 = *a1;
    v19 = &v12[-(v14 - *a1)];
    if (v25)
    {
      goto LABEL_48;
    }

    v27 = v16 >> 4;
    v28 = (v17 >> 4) + 1;
    v29 = 16 * (v28 & 0x1FFFFFFFFFFFFFFCLL);
    v18 = v13 + v29;
    v19 = (v15 + v29);
    v30 = &v9[16 * v3 + 32 + -16 * v27];
    v31 = (v13 + 32);
    v32 = v28 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      v33 = *(v31 - 1);
      v34 = *v31;
      v35 = v31[1];
      *(v30 - 2) = *(v31 - 2);
      *(v30 - 1) = v33;
      *v30 = v34;
      *(v30 + 1) = v35;
      v30 += 64;
      *(v31 - 2) = 0uLL;
      *(v31 - 1) = 0uLL;
      *v31 = 0uLL;
      v31[1] = 0uLL;
      v31 += 4;
      v32 -= 4;
    }

    while (v32);
    if (v28 != (v28 & 0x1FFFFFFFFFFFFFFCLL))
    {
LABEL_48:
      do
      {
        *v19 = *v18;
        v19 += 16;
        *v18 = 0;
        *(v18 + 8) = 0;
        v18 += 16;
      }

      while (v18 != v14);
    }

    do
    {
      v36 = *(v13 + 8);
      if (v36)
      {
        dispatch_release(v36);
      }

      if (*v13)
      {
        _Block_release(*v13);
      }

      v13 += 16;
    }

    while (v13 != v14);
    v13 = *a1;
  }

  *a1 = v15;
  a1[1] = (v12 + 16);
  a1[2] = &v9[16 * v8];
  if (v13)
  {
    operator delete(v13);
  }

  return v12 + 16;
}

char *std::vector<dispatch::callback<void({block_pointer})(BOOL)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(BOOL)> const&>(unint64_t *a1, uint64_t a2)
{
  v2 = a1[1] - *a1;
  v3 = v2 >> 4;
  v4 = (v2 >> 4) + 1;
  if (v4 >> 60)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 3 > v4)
  {
    v4 = v7 >> 3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v8 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  if (!v8)
  {
    v9 = 0;
    v10 = *a2;
    if (!*a2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v8 >> 60)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v9 = operator new(16 * v8);
  v10 = *a2;
  if (*a2)
  {
LABEL_12:
    v10 = _Block_copy(v10);
  }

LABEL_13:
  v11 = *(a2 + 8);
  v12 = &v9[16 * v3];
  *v12 = v10;
  *(v12 + 1) = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v13 = *a1;
  v14 = a1[1];
  v15 = &v12[-(v14 - *a1)];
  v16 = v14 - *a1;
  if (v14 != *a1)
  {
    v17 = v16 - 16;
    v18 = *a1;
    v19 = &v12[-(v14 - *a1)];
    if ((v16 - 16) < 0x110)
    {
      goto LABEL_48;
    }

    v20 = &v9[v2 + (v17 & 0xFFFFFFFFFFFFFFF0) - v16];
    v21 = v20 + 8;
    v22 = v13 + (v17 & 0xFFFFFFFFFFFFFFF0);
    v23 = (v20 + 16);
    v24 = &v9[v2 - v16 + 8] >= v22 + 16 || v13 + 8 >= v23;
    v25 = !v24;
    v26 = v13 >= v21 || v15 >= v22 + 8;
    v18 = *a1;
    v19 = &v12[-(v14 - *a1)];
    if (!v26)
    {
      goto LABEL_48;
    }

    v18 = *a1;
    v19 = &v12[-(v14 - *a1)];
    if (v25)
    {
      goto LABEL_48;
    }

    v27 = v16 >> 4;
    v28 = (v17 >> 4) + 1;
    v29 = 16 * (v28 & 0x1FFFFFFFFFFFFFFCLL);
    v18 = v13 + v29;
    v19 = (v15 + v29);
    v30 = &v9[16 * v3 + 32 + -16 * v27];
    v31 = (v13 + 32);
    v32 = v28 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      v33 = *(v31 - 1);
      v34 = *v31;
      v35 = v31[1];
      *(v30 - 2) = *(v31 - 2);
      *(v30 - 1) = v33;
      *v30 = v34;
      *(v30 + 1) = v35;
      v30 += 64;
      *(v31 - 2) = 0uLL;
      *(v31 - 1) = 0uLL;
      *v31 = 0uLL;
      v31[1] = 0uLL;
      v31 += 4;
      v32 -= 4;
    }

    while (v32);
    if (v28 != (v28 & 0x1FFFFFFFFFFFFFFCLL))
    {
LABEL_48:
      do
      {
        *v19 = *v18;
        v19 += 16;
        *v18 = 0;
        *(v18 + 8) = 0;
        v18 += 16;
      }

      while (v18 != v14);
    }

    do
    {
      v36 = *(v13 + 8);
      if (v36)
      {
        dispatch_release(v36);
      }

      if (*v13)
      {
        _Block_release(*v13);
      }

      v13 += 16;
    }

    while (v13 != v14);
    v13 = *a1;
  }

  *a1 = v15;
  a1[1] = (v12 + 16);
  a1[2] = &v9[16 * v8];
  if (v13)
  {
    operator delete(v13);
  }

  return v12 + 16;
}

void std::__shared_ptr_pointer<AudioManager *,std::shared_ptr<AudioManager>::__shared_ptr_default_delete<AudioManager,AudioManager>,std::allocator<AudioManager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<AudioManager *,std::shared_ptr<AudioManager>::__shared_ptr_default_delete<AudioManager,AudioManager>,std::allocator<AudioManager>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    AudioManager::~AudioManager(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<AudioManager *,std::shared_ptr<AudioManager>::__shared_ptr_default_delete<AudioManager,AudioManager>,std::allocator<AudioManager>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000297430E18)
  {
    if (((v2 & 0x8000000297430E18 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000297430E18))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000297430E18 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

AudioManager **std::unique_ptr<AudioManager>::~unique_ptr[abi:ne200100](AudioManager **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    AudioManager::~AudioManager(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

void *__copy_helper_block_e8_32c75_ZTSN8dispatch5blockIU13block_pointerFvN12AudioManager15AudioInputStateEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c75_ZTSN8dispatch5blockIU13block_pointerFvN12AudioManager15AudioInputStateEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void *__copy_helper_block_e8_32c76_ZTSN8dispatch5blockIU13block_pointerFvN12AudioManager16AudioOutputStateEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c76_ZTSN8dispatch5blockIU13block_pointerFvN12AudioManager16AudioOutputStateEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void Simulator::create(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  v4 = operator new(0x78uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  v8[0] = v6;
  v8[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  Simulator::Simulator(v4, v8);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<Simulator>::shared_ptr[abi:ne200100]<Simulator,std::shared_ptr<Simulator> ctu::SharedSynchronizable<Simulator>::make_shared_ptr<Simulator>(Simulator*)::{lambda(Simulator*)#1},0>(a2, v5);
  if (v7)
  {

    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_2972E8A1C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
    if (!v3)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

uint64_t Simulator::Simulator(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E3EF20;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 64) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = a1 + 56;
    std::__shared_weak_count::__release_weak(v4);
    *a1 = &unk_2A1E34AE8;
    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = a1 + 56;
    *a1 = &unk_2A1E34AE8;
  }

  *a1 = &unk_2A1E36B30;
  ctu::OsLogContext::OsLogContext(v6, "com.apple.telephony.abm", "simulator");
  ctu::SharedLoggable<Simulator,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>((a1 + 72), "simulator", QOS_CLASS_DEFAULT);
  ctu::OsLogContext::~OsLogContext(v6);
  *a1 = &unk_2A1E36B30;
  *(a1 + 112) = 0;
  return a1;
}

void sub_2972E8B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  Service::~Service(v9);
  _Unwind_Resume(a1);
}

void *ctu::SharedLoggable<Simulator,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(void *a1, const char *a2, dispatch_qos_class_t a3)
{
  object = 0;
  ctu::SharedSynchronizable<AnalyticsHelper>::SharedSynchronizable(a1, a2, a3, &object);
  if (object)
  {
    dispatch_release(object);
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26DE70](a1 + 4, &object);
  MEMORY[0x29C26DE80](&object);
  return a1;
}

void Simulator::bootstrap(void *a1, int a2, dispatch_object_t *a3)
{
  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    v4 = *a3;
    if (*a3)
    {
      dispatch_retain(*a3);
      dispatch_group_enter(v4);
    }

    v5 = a1[10];
    if (!v5 || (v6 = a1[9], (v7 = std::__shared_weak_count::lock(v5)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v8 = v7;
    v9 = operator new(0x10uLL);
    *v9 = a1;
    v9[1] = v4;
    v10 = a1[11];
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = operator new(0x18uLL);
    *v11 = v9;
    v11[1] = v6;
    v11[2] = v8;
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<Simulator>::execute_wrapped<Simulator::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(Simulator::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<Simulator::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<Simulator::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_14:
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
    return;
  }

  v12 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
    dispatch_group_enter(v12);
  }

  v13 = a1[10];
  if (!v13 || (v14 = a1[9], (v15 = std::__shared_weak_count::lock(v13)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v15;
  v16 = operator new(0x10uLL);
  *v16 = a1;
  v16[1] = v12;
  v17 = a1[11];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = operator new(0x18uLL);
  *v18 = v16;
  v18[1] = v14;
  v18[2] = v8;
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<Simulator>::execute_wrapped<Simulator::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(Simulator::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<Simulator::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<Simulator::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}

void Simulator::registerCommandHandlers_sync(Simulator *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__dst[0]) = 0;
    _os_log_debug_impl(&dword_297288000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", __dst, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_23:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_23;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_23;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *MEMORY[0x29EDBF698];
  v8 = strlen(*MEMORY[0x29EDBF698]);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    if ((v8 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v8 | 7) + 1;
    }

    v10 = operator new(v11);
    __dst[1] = v9;
    v17 = v11 | 0x8000000000000000;
    __dst[0] = v10;
    goto LABEL_14;
  }

  HIBYTE(v17) = v8;
  v10 = __dst;
  if (v8)
  {
LABEL_14:
    memmove(v10, v7, v9);
  }

  *(v9 + v10) = 0;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1174405120;
  v13[2] = ___ZN9Simulator28registerCommandHandlers_syncEv_block_invoke;
  v13[3] = &__block_descriptor_tmp_4_1;
  v13[4] = this;
  v13[5] = v4;
  v14 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v12 = _Block_copy(v13);
  v15 = v12;
  Service::registerCommandHandler(this, __dst, &v15);
  if (v12)
  {
    _Block_release(v12);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst[0]);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_2972E9054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (v23)
  {
    _Block_release(v23);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_5:
      std::__shared_weak_count::__release_weak(v22);
      _Unwind_Resume(a1);
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(__p);
  std::__shared_weak_count::__release_weak(v22);
  _Unwind_Resume(a1);
}

void ___ZN9Simulator28registerCommandHandlers_syncEv_block_invoke(void *a1, void **a2, void **a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (!a1[5])
      {
LABEL_12:
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }

        return;
      }

      v12[0] = MEMORY[0x29EDCA5F8];
      v12[1] = 1174405120;
      v12[2] = ___ZN9Simulator28registerCommandHandlers_syncEv_block_invoke_2;
      v12[3] = &__block_descriptor_tmp_24;
      v10 = *a2;
      v12[4] = v7;
      object = v10;
      if (v10)
      {
        xpc_retain(v10);
        v11 = *a3;
        if (!*a3)
        {
          goto LABEL_9;
        }
      }

      else
      {
        object = xpc_null_create();
        v11 = *a3;
        if (!*a3)
        {
LABEL_9:
          aBlock = v11;
          ctu::SharedSynchronizable<Simulator>::execute_wrapped((v7 + 72), v12);
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          xpc_release(object);
          object = 0;
          goto LABEL_12;
        }
      }

      v11 = _Block_copy(v11);
      goto LABEL_9;
    }
  }
}

void ___ZN9Simulator28registerCommandHandlers_syncEv_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  value = xpc_dictionary_get_value(*(a1 + 40), *MEMORY[0x29EDBF400]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  v4 = xpc::dyn_cast_or_default(&object, 0);
  xpc_release(object);
  if ((v4 | 0xE0000000) != 0xE0000270)
  {
    *(v2 + 112) = (v4 | 0xE0000000) == -536870272;
  }

  v5 = xpc_null_create();
  v6 = *(a1 + 48);
  object = v5;
  v7 = xpc_null_create();
  (*(v6 + 16))(v6, 3760250880, &object);
  xpc_release(object);
  xpc_release(v7);
}

void sub_2972E9310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

uint64_t Simulator::handleSimulatedPowerNotification_sync(Simulator *this, int a2)
{
  if (a2 != -536870288)
  {
    *(this + 112) = a2 == -536870272;
  }

  return 0;
}

void *__copy_helper_block_e8_40c15_ZTSN3xpc4dictE48c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (v4)
  {
    xpc_retain(v4);
    result = *(a2 + 48);
    if (!result)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *(a1 + 40) = xpc_null_create();
  result = *(a2 + 48);
  if (result)
  {
LABEL_5:
    result = _Block_copy(result);
  }

LABEL_6:
  *(a1 + 48) = result;
  return result;
}

void __destroy_helper_block_e8_40c15_ZTSN3xpc4dictE48c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    _Block_release(v2);
  }

  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
}

uint64_t __copy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9SimulatorEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9SimulatorEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void Simulator::registerEventHandlers_sync(Simulator *this)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p) = 0;
    _os_log_debug_impl(&dword_297288000, v2, OS_LOG_TYPE_DEBUG, "#D Registering event handlers", &__p, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_23:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_23;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_23;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *MEMORY[0x29EDBF278];
  v8 = strlen(*MEMORY[0x29EDBF278]);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    if ((v8 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v8 | 7) + 1;
    }

    p_p = operator new(v11);
    *(&__p + 1) = v9;
    v15 = v11 | 0x8000000000000000;
    *&__p = p_p;
    goto LABEL_14;
  }

  HIBYTE(v15) = v8;
  p_p = &__p;
  if (v8)
  {
LABEL_14:
    memmove(p_p, v7, v9);
  }

  *(p_p + v9) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v17 = 0;
  v12 = operator new(0x20uLL);
  *v12 = &unk_2A1E36D68;
  v12[1] = this;
  v12[2] = v4;
  v12[3] = v6;
  v17 = v12;
  Service::registerEventHandler(this, &__p, v16);
  if (v17 == v16)
  {
    (*(*v17 + 32))(v17);
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_21:
    operator delete(__p);
    goto LABEL_19;
  }

  if (v17)
  {
    (*(*v17 + 40))();
  }

  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  Service::eventsOn(this);
  std::__shared_weak_count::__release_weak(v6);
  v13 = *MEMORY[0x29EDCA608];
}

_WORD *Simulator::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

_BYTE *Simulator::getShutdownStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(1uLL);
  *a1 = v3;
  *v3 = 3;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void Simulator::shutdownWithStage(uint64_t a1, char a2, NSObject **a3)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN9Simulator17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke;
  v6[3] = &__block_descriptor_tmp_5_4;
  v5 = *a3;
  group = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(group);
  }

  v8 = a2;
  ctu::SharedSynchronizable<Simulator>::execute_wrapped((a1 + 72), v6);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void Simulator::~Simulator(Simulator *this)
{
  MEMORY[0x29C26DE80](this + 104);
  v2 = *(this + 12);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  *this = &unk_2A1E3EF20;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v5 = *(this + 3);
  if (v5)
  {
    v6 = *(this + 4);
    v7 = *(this + 3);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 3);
    }

    *(this + 4) = v5;
    operator delete(v7);
  }

  v9 = *(this + 2);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }
}

{
  MEMORY[0x29C26DE80](this + 104);
  v2 = *(this + 12);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  *this = &unk_2A1E3EF20;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v5 = *(this + 3);
  if (v5)
  {
    v6 = *(this + 4);
    v7 = *(this + 3);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 3);
    }

    *(this + 4) = v5;
    operator delete(v7);
  }

  v9 = *(this + 2);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(this);
}

atomic_ullong *std::shared_ptr<Simulator>::shared_ptr[abi:ne200100]<Simulator,std::shared_ptr<Simulator> ctu::SharedSynchronizable<Simulator>::make_shared_ptr<Simulator>(Simulator*)::{lambda(Simulator*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E36CE0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 80);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 72) = a2;
      *(a2 + 80) = v4;
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
  *(a2 + 72) = a2;
  *(a2 + 80) = v4;
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

void sub_2972E9B24(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[11], v1, std::shared_ptr<Simulator> ctu::SharedSynchronizable<Simulator>::make_shared_ptr<Simulator>(Simulator*)::{lambda(Simulator*)#1}::operator() const(Simulator*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<Simulator *,std::shared_ptr<Simulator> ctu::SharedSynchronizable<Simulator>::make_shared_ptr<Simulator>(Simulator*)::{lambda(Simulator *)#1},std::allocator<Simulator>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<Simulator *,std::shared_ptr<Simulator> ctu::SharedSynchronizable<Simulator>::make_shared_ptr<Simulator>(Simulator*)::{lambda(Simulator *)#1},std::allocator<Simulator>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI9SimulatorE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI9SimulatorE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI9SimulatorE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI9SimulatorE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<Simulator> ctu::SharedSynchronizable<Simulator>::make_shared_ptr<Simulator>(Simulator*)::{lambda(Simulator*)#1}::operator() const(Simulator*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<Simulator>::execute_wrapped<Simulator::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(Simulator::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<Simulator::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<Simulator::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  Simulator::registerCommandHandlers_sync(**a1);
  v3 = v2[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = v2[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete(v2);
  v5 = *(a1 + 16);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = a1;
  }

  else
  {
    v6 = a1;
  }

  operator delete(v6);
}

void sub_2972E9D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<Simulator>::execute_wrapped<Simulator::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(Simulator::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<Simulator::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<Simulator::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  Simulator::registerEventHandlers_sync(**a1);
  v3 = v2[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = v2[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete(v2);
  v5 = *(a1 + 16);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = a1;
  }

  else
  {
    v6 = a1;
  }

  operator delete(v6);
}

void sub_2972E9E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ctu::SharedSynchronizable<Simulator>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableI9SimulatorE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E36D28;
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

uint64_t __copy_helper_block_e8_40c37_ZTSNSt3__110shared_ptrIK9SimulatorEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c37_ZTSNSt3__110shared_ptrIK9SimulatorEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}