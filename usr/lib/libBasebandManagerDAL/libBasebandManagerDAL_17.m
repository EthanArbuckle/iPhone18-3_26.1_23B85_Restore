void StatsModule::~StatsModule(StatsModule *this)
{
  *this = &unk_2A1E3A520;
  v2 = this + 104;
  v3 = *(this + 13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v18, 2u);
  }

  v4 = *(this + 23);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 21);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  std::__tree<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::__map_value_compare<awd::AppID,std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::less<awd::AppID>,true>,std::allocator<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>>>::destroy(*(this + 18));
  v6 = *(this + 14);
  if (v6)
  {
    v7 = *(this + 15);
    v8 = *(this + 14);
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *(this + 14);
    }

    *(this + 15) = v6;
    operator delete(v8);
  }

  MEMORY[0x29C26DE80](v2);
  v10 = *(this + 12);
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = *(this + 11);
  if (v11)
  {
    dispatch_release(v11);
  }

  v12 = *(this + 10);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  *this = &unk_2A1E3EF20;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v13 = *(this + 3);
  if (v13)
  {
    v14 = *(this + 4);
    v15 = *(this + 3);
    if (v14 != v13)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 3;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = *(this + 3);
    }

    *(this + 4) = v13;
    operator delete(v15);
  }

  v17 = *(this + 2);
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }
}

{
  StatsModule::~StatsModule(this);

  operator delete(v1);
}

void ___ZN11StatsModule4initEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&dword_297288000, v2, OS_LOG_TYPE_DEBUG, "#D Initializing", v3, 2u);
    StatsModule::initializeStats_sync(v1);
  }

  else
  {
    StatsModule::initializeStats_sync(v1);
  }
}

void StatsModule::initializeStats_sync(StatsModule *this)
{
  StatsModule::addStatsToModule_sync(this, 0);
  StatsAWD::create(&v8);
  v2 = v8;
  v8 = 0uLL;
  v3 = *(this + 21);
  *(this + 10) = v2;
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(&v8 + 1);
  if (*(&v8 + 1) && !atomic_fetch_add((*(&v8 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  AnalyticsHelper::create(&v8);
  v5 = v8;
  v8 = 0uLL;
  v6 = *(this + 23);
  *(this + 11) = v5;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(&v8 + 1);
  if (*(&v8 + 1))
  {
    if (!atomic_fetch_add((*(&v8 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

_WORD *StatsModule::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

_BYTE *StatsModule::getShutdownStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(1uLL);
  *a1 = v3;
  *v3 = 3;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void StatsModule::shutdownWithStage(void *a1, char a2, NSObject **a3)
{
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1174405120;
  v13[2] = ___ZN11StatsModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke;
  v13[3] = &__block_descriptor_tmp_3_1;
  v5 = *a3;
  group = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(group);
  }

  v15 = a2;
  v6 = a1[10];
  if (!v6 || (v7 = a1[9], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = a1[11];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI11StatsModuleE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E3A6E8;
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

void StatsModule::bootstrap(void *a1, int a2, dispatch_object_t *a3)
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
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
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
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}

void StatsModule::registerCommandHandlers_sync(StatsModule *this)
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

  v7 = *MEMORY[0x29EDBEBD0];
  v8 = strlen(*MEMORY[0x29EDBEBD0]);
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
  v13[2] = ___ZN11StatsModule28registerCommandHandlers_syncEv_block_invoke;
  v13[3] = &__block_descriptor_tmp_5_7;
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

void sub_29735487C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void ___ZN11StatsModule28registerCommandHandlers_syncEv_block_invoke(void *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (!v4)
  {
    goto LABEL_20;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  v28 = v8;
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = v8;
  v10 = a1[5];
  if (!v10)
  {
    goto LABEL_18;
  }

  if (MEMORY[0x29C26F9F0](*a2) != MEMORY[0x29EDCAA00])
  {
    v11 = v7[13];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v27 = *MEMORY[0x29EDBEBD0];
      *object = 136315138;
      *&object[4] = v27;
      _os_log_error_impl(&dword_297288000, v11, OS_LOG_TYPE_ERROR, "No input is given for %s", object, 0xCu);
      if (!*a3)
      {
LABEL_18:
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }

        goto LABEL_20;
      }
    }

    else if (!*a3)
    {
      goto LABEL_18;
    }

    v12 = xpc_null_create();
    v13 = *a3;
    *object = v12;
    v14 = xpc_null_create();
    v13[2](v13, 3760250880, object);
    xpc_release(*object);
    xpc_release(v14);
    goto LABEL_18;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v15 = *a2;
  if (v15)
  {
    xpc_retain(v15);
    v16 = *a3;
    if (*a3)
    {
      goto LABEL_10;
    }

LABEL_13:
    v17 = 0;
    v18 = v7[10];
    if (!v18)
    {
      goto LABEL_23;
    }

    goto LABEL_14;
  }

  v15 = xpc_null_create();
  v16 = *a3;
  if (!*a3)
  {
    goto LABEL_13;
  }

LABEL_10:
  v17 = _Block_copy(v16);
  v18 = v7[10];
  if (!v18)
  {
LABEL_23:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

LABEL_14:
  v19 = v7[9];
  v20 = std::__shared_weak_count::lock(v18);
  if (!v20)
  {
    goto LABEL_23;
  }

  v21 = v20;
  v22 = operator new(0x28uLL);
  *v22 = v7;
  v22[1] = v10;
  v22[2] = v9;
  v22[3] = v15;
  v23 = xpc_null_create();
  v22[4] = v17;
  v24 = v7[11];
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  v25 = operator new(0x18uLL);
  *v25 = v22;
  v25[1] = v19;
  v25[2] = v21;
  dispatch_async_f(v24, v25, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11StatsModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__2EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  xpc_release(v23);
  v9 = v28;
  if (v28)
  {
    goto LABEL_18;
  }

LABEL_20:
  v26 = *MEMORY[0x29EDCA608];
}

void sub_297354BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t __copy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrI11StatsModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrI11StatsModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

BOOL StatsModule::reportStats_sync(uint64_t a1, int a2, xpc_object_t *a3)
{
  v5 = *a3;
  v8 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    v5 = xpc_null_create();
    v8 = v5;
  }

  updated = StatsModule::updateData_sync(a1, a2, &v8);
  xpc_release(v5);
  return updated;
}

BOOL StatsModule::updateData_sync(uint64_t a1, int a2, void **a3)
{
  cf = 0;
  v48 = 0;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v6 = off_2A1399498;
  if (!off_2A1399498)
  {
    SharedData::create_default_global(__p);
    v7 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v8 = *(&off_2A1399498 + 1);
    off_2A1399498 = v7;
    if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v9 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v6 = off_2A1399498;
  }

  v10 = *(&off_2A1399498 + 1);
  if (*(&off_2A1399498 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v11 = &__p[1] + 7;
  if (a2)
  {
    qmemcpy(__p, "UNKNOWN", 7);
    v12 = 7;
    v13 = __p + 7;
  }

  else
  {
    qmemcpy(__p, "Boot Statistics", 15);
    v12 = 15;
    v13 = &__p[1] + 7;
  }

  *v13 = 0;
  v46 = v12;
  os_unfair_lock_lock((v6 + 40));
  Preferences::getPreference<__CFDictionary const*>(v6, __p, &cf);
  os_unfair_lock_unlock((v6 + 40));
  if (v46 < 0)
  {
    operator delete(__p[0]);
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  else if (!v10)
  {
LABEL_19:
    v14 = cf;
    if (!cf)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_19;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  v14 = cf;
  if (cf)
  {
LABEL_20:
    CFRetain(v14);
  }

LABEL_21:
  v15 = v48;
  v48 = v14;
  if (v15)
  {
    CFRelease(v15);
  }

  v17 = (a1 + 144);
  v16 = *(a1 + 144);
  v43 = 0xAAAAAAAAAAAAAAAALL;
  v44 = 0xAAAAAAAAAAAAAAAALL;
  if (v16)
  {
    while (1)
    {
      while (1)
      {
        v18 = v16;
        v19 = *(v16 + 32);
        if (v19 <= a2)
        {
          break;
        }

        v16 = *v18;
        v17 = v18;
        if (!*v18)
        {
          goto LABEL_30;
        }
      }

      if (v19 >= a2)
      {
        break;
      }

      v16 = v18[1];
      if (!v16)
      {
        v17 = v18 + 1;
        goto LABEL_30;
      }
    }

    v34 = v18 + 5;
    v23 = v18[5];
    v22 = v34[1];
    v43 = v23;
    v44 = v22;
    if (v22)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v18 = (a1 + 144);
LABEL_30:
    v20 = operator new(0x38uLL);
    *(v20 + 8) = a2;
    *(v20 + 5) = 0;
    *(v20 + 6) = 0;
    *v20 = 0;
    *(v20 + 1) = 0;
    *(v20 + 2) = v18;
    *v17 = v20;
    v21 = **(a1 + 136);
    if (v21)
    {
      *(a1 + 136) = v21;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 144), v20);
    ++*(a1 + 152);
    v23 = *(v20 + 5);
    v22 = *(v20 + 6);
    v43 = v23;
    v44 = v22;
    if (v22)
    {
LABEL_33:
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (!v23)
  {
    goto LABEL_60;
  }

  v24 = v48;
  v42 = v48;
  if (v48)
  {
    CFRetain(v48);
  }

  v25 = *a3;
  object = v25;
  if (v25)
  {
    xpc_retain(v25);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*v23 + 24))(__p, v23, &v42, &object);
  v26 = __p[0];
  v48 = __p[0];
  __p[0] = 0;
  if (v24)
  {
    CFRelease(v24);
    if (__p[0])
    {
      CFRelease(__p[0]);
    }
  }

  xpc_release(object);
  object = 0;
  if (v42)
  {
    CFRelease(v42);
  }

  if (!v26)
  {
LABEL_60:
    v33 = 0;
    if (!v22)
    {
      goto LABEL_77;
    }

    goto LABEL_76;
  }

  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v27 = off_2A1399498;
  if (!off_2A1399498)
  {
    SharedData::create_default_global(__p);
    v28 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v29 = *(&off_2A1399498 + 1);
    off_2A1399498 = v28;
    if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
    }

    v30 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v30);
    }

    v27 = off_2A1399498;
  }

  v31 = *(&off_2A1399498 + 1);
  if (*(&off_2A1399498 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  if (a2)
  {
    qmemcpy(__p, "UNKNOWN", 7);
    v32 = 7;
    v11 = __p + 7;
  }

  else
  {
    qmemcpy(__p, "Boot Statistics", 15);
    v32 = 15;
  }

  *v11 = 0;
  v46 = v32;
  v35 = v48;
  os_unfair_lock_lock((v27 + 40));
  if (v46 >= 0)
  {
    v36 = __p;
  }

  else
  {
    v36 = __p[0];
  }

  ctu::cf::MakeCFString::MakeCFString(v49, v36);
  v37 = v49[0];
  v49[1] = v35;
  if (v35)
  {
    CFRetain(v35);
    v38 = *MEMORY[0x29EDB8FA8];
    CFPreferencesSetValue(v37, v35, *(v27 + 8), *(v27 + 16), *MEMORY[0x29EDB8FA8]);
    v33 = CFPreferencesSynchronize(*(v27 + 8), *(v27 + 16), v38) != 0;
    CFRelease(v35);
    MEMORY[0x29C26DF80](v49);
    os_unfair_lock_unlock((v27 + 40));
    if ((v46 & 0x80000000) == 0)
    {
      goto LABEL_70;
    }

LABEL_73:
    operator delete(__p[0]);
    if (!v31)
    {
      goto LABEL_75;
    }

LABEL_74:
    if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v31->__on_zero_shared)(v31);
      std::__shared_weak_count::__release_weak(v31);
      v22 = v44;
      if (!v44)
      {
        goto LABEL_77;
      }

      goto LABEL_76;
    }

    goto LABEL_75;
  }

  v33 = 0;
  MEMORY[0x29C26DF80](v49);
  os_unfair_lock_unlock((v27 + 40));
  if (v46 < 0)
  {
    goto LABEL_73;
  }

LABEL_70:
  if (v31)
  {
    goto LABEL_74;
  }

LABEL_75:
  v22 = v44;
  if (!v44)
  {
    goto LABEL_77;
  }

LABEL_76:
  if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
    v39 = v48;
    if (!v48)
    {
      return v33;
    }

    goto LABEL_78;
  }

LABEL_77:
  v39 = v48;
  if (v48)
  {
LABEL_78:
    CFRelease(v39);
  }

  return v33;
}

void sub_297355310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, __int16 a22, char a23, char a24)
{
  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a12);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a21);
  _Unwind_Resume(a1);
}

void sub_2973553F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void StatsModule::getAllStats_sync(StatsModule *this@<X0>, __CFDictionary **a2@<X8>)
{
  v27 = 0;
  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v6 = Mutable;
  if (Mutable)
  {
    v27 = Mutable;
  }

  v7 = *(this + 17);
  v8 = this + 144;
  if (v7 != this + 144)
  {
    while (1)
    {
      v26 = 0;
      pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
      v9 = off_2A1399498;
      if (off_2A1399498)
      {
        v10 = *(&off_2A1399498 + 1);
        if (!*(&off_2A1399498 + 1))
        {
          goto LABEL_9;
        }

LABEL_8:
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_9;
      }

      SharedData::create_default_global(__p);
      v13 = *__p;
      __p[0] = 0;
      __p[1] = 0;
      v14 = *(&off_2A1399498 + 1);
      off_2A1399498 = v13;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
        v15 = __p[1];
        if (!__p[1])
        {
          goto LABEL_37;
        }
      }

      else
      {
        v15 = __p[1];
        if (!__p[1])
        {
          goto LABEL_37;
        }
      }

      if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
      }

LABEL_37:
      v9 = off_2A1399498;
      v10 = *(&off_2A1399498 + 1);
      if (*(&off_2A1399498 + 1))
      {
        goto LABEL_8;
      }

LABEL_9:
      pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
      if (*(v7 + 8))
      {
        qmemcpy(__p, "UNKNOWN", 7);
        v11 = 7;
        v12 = __p + 7;
      }

      else
      {
        qmemcpy(__p, "Boot Statistics", 15);
        v11 = 15;
        v12 = &__p[1] + 7;
      }

      *v12 = 0;
      v25 = v11;
      os_unfair_lock_lock((v9 + 40));
      Preferences::getPreference<__CFDictionary const*>(v9, __p, &v26);
      os_unfair_lock_unlock((v9 + 40));
      if (v25 < 0)
      {
        operator delete(__p[0]);
        if (!v10)
        {
          goto LABEL_22;
        }
      }

      else if (!v10)
      {
        goto LABEL_22;
      }

      if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_22:
        v17 = v26;
        if (!v26)
        {
          goto LABEL_29;
        }

        goto LABEL_23;
      }

      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v17 = v26;
      if (!v26)
      {
        goto LABEL_29;
      }

LABEL_23:
      if (*(v7 + 8))
      {
        qmemcpy(__p, "UNKNOWN", 7);
        v18 = 7;
        v19 = __p + 7;
      }

      else
      {
        qmemcpy(__p, "Boot Statistics", 15);
        v18 = 15;
        v19 = &__p[1] + 7;
      }

      *v19 = 0;
      v25 = v18;
      ctu::cf::insert<char const*,__CFDictionary const*>(v27, __p, v17, v4, v16);
      if ((v25 & 0x80000000) == 0)
      {
LABEL_29:
        v20 = *(v7 + 1);
        if (!v20)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }

      operator delete(__p[0]);
      v20 = *(v7 + 1);
      if (!v20)
      {
        do
        {
LABEL_33:
          v21 = *(v7 + 2);
          v22 = *v21 == v7;
          v7 = v21;
        }

        while (!v22);
        goto LABEL_5;
      }

      do
      {
LABEL_30:
        v21 = v20;
        v20 = *v20;
      }

      while (v20);
LABEL_5:
      v7 = v21;
      if (v21 == v8)
      {
        v6 = v27;
        break;
      }
    }
  }

  if (v6 && (v23 = CFGetTypeID(v6), v23 == CFDictionaryGetTypeID()))
  {
    *a2 = v6;
    CFRetain(v6);
  }

  else
  {
    *a2 = 0;
    if (!v6)
    {
      return;
    }
  }

  CFRelease(v6);
}

void StatsModule::addStatsToModule_sync(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v21 = 0;
  v22 = 0;
  Stats::create(a2, __p);
  v5 = __p[0];
  v4 = __p[1];
  v21 = __p[0];
  v22 = __p[1];
  if (__p[0])
  {
    v6 = *(__p[0] + 12);
    v8 = (a1 + 144);
    v7 = *(a1 + 144);
    if (v7)
    {
      while (1)
      {
        while (1)
        {
          v9 = v7;
          v10 = *(v7 + 32);
          if (v6 >= v10)
          {
            break;
          }

          v7 = *v9;
          v8 = v9;
          if (!*v9)
          {
            goto LABEL_9;
          }
        }

        if (v10 >= v6)
        {
          break;
        }

        v7 = v9[1];
        if (!v7)
        {
          v8 = v9 + 1;
          goto LABEL_9;
        }
      }

      v11 = v9;
      if (!__p[1])
      {
        goto LABEL_13;
      }
    }

    else
    {
      v9 = (a1 + 144);
LABEL_9:
      v11 = operator new(0x38uLL);
      *(v11 + 8) = v6;
      *(v11 + 5) = 0;
      *(v11 + 6) = 0;
      *v11 = 0;
      *(v11 + 1) = 0;
      *(v11 + 2) = v9;
      *v8 = v11;
      v12 = **(a1 + 136);
      if (v12)
      {
        *(a1 + 136) = v12;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 144), v11);
      ++*(a1 + 152);
      if (!v4)
      {
        goto LABEL_13;
      }
    }

    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
LABEL_13:
    v13 = *(v11 + 6);
    *(v11 + 5) = v5;
    *(v11 + 6) = v4;
    if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

    goto LABEL_17;
  }

  v14 = *(a1 + 104);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    if (a2)
    {
      v17 = __p + 7;
      qmemcpy(__p, "UNKNOWN", 7);
      v18 = 7;
    }

    else
    {
      v17 = &__p[1] + 7;
      qmemcpy(__p, "Boot Statistics", 15);
      v18 = 15;
    }

    *v17 = 0;
    v20 = v18;
    *buf = 136315138;
    v24 = __p;
    _os_log_error_impl(&dword_297288000, v14, OS_LOG_TYPE_ERROR, "Failed to create stats of %s", buf, 0xCu);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_17:
  v15 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = *MEMORY[0x29EDCA608];
}

void sub_297355A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297355A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void StatsModule::updateAnalyticsData_sync(uint64_t a1, void **a2)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    v3 = *a2;
    object = v3;
    if (v3 && MEMORY[0x29C26F9F0](v3) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v3);
    }

    else
    {
      object = xpc_null_create();
    }

    AnalyticsHelper::updateData(v2, &object);
    xpc_release(object);
  }

  else
  {
    v4 = *(a1 + 104);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297288000, v4, OS_LOG_TYPE_ERROR, "Analytics object has not created yet", buf, 2u);
    }
  }
}

void StatsModule::reportAWD_sync(uint64_t a1, int a2, void **a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 160);
  if (v4)
  {
    v5 = *a3;
    object = v5;
    if (v5)
    {
      xpc_retain(v5);
    }

    else
    {
      object = xpc_null_create();
    }

    v7.fObj = &object;
    StatsAWD::submit(v4, a2, v7);
    xpc_release(object);
  }

  else
  {
    v6 = *(a1 + 104);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v11 = a2;
      _os_log_error_impl(&dword_297288000, v6, OS_LOG_TYPE_ERROR, "AWD object has not created yet. 0x%x metric ID cannot be submitted", buf, 8u);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
}

void sub_297355C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

atomic_ullong *std::shared_ptr<StatsModule>::shared_ptr[abi:ne200100]<StatsModule,std::shared_ptr<StatsModule> ctu::SharedSynchronizable<StatsModule>::make_shared_ptr<StatsModule>(StatsModule*)::{lambda(StatsModule*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E3A6A0;
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

void sub_297355DBC(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[11], v1, std::shared_ptr<StatsModule> ctu::SharedSynchronizable<StatsModule>::make_shared_ptr<StatsModule>(StatsModule*)::{lambda(StatsModule*)#1}::operator() const(StatsModule*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<StatsModule *,std::shared_ptr<StatsModule> ctu::SharedSynchronizable<StatsModule>::make_shared_ptr<StatsModule>(StatsModule*)::{lambda(StatsModule *)#1},std::allocator<StatsModule>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<StatsModule *,std::shared_ptr<StatsModule> ctu::SharedSynchronizable<StatsModule>::make_shared_ptr<StatsModule>(StatsModule*)::{lambda(StatsModule *)#1},std::allocator<StatsModule>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI11StatsModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI11StatsModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI11StatsModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI11StatsModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<StatsModule> ctu::SharedSynchronizable<StatsModule>::make_shared_ptr<StatsModule>(StatsModule*)::{lambda(StatsModule*)#1}::operator() const(StatsModule*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t __copy_helper_block_e8_40c40_ZTSNSt3__110shared_ptrIK11StatsModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c40_ZTSNSt3__110shared_ptrIK11StatsModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  StatsModule::registerCommandHandlers_sync(**a1);
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

void sub_297356064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(void *__p)
{
  v2 = *__p;
  if (*__p)
  {
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
  }

  v5 = __p[2];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = __p;
  }

  else
  {
    v6 = __p;
  }

  operator delete(v6);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11StatsModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__2EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t *a1)
{
  v40 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v37 = v1;
  v2 = *v1;
  v3 = *MEMORY[0x29EDBE588];
  if (xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE588]))
  {
    value = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE580]);
    v5 = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      v5 = xpc_null_create();
    }

    v8 = MEMORY[0x29C26F9F0](v5);
    v9 = MEMORY[0x29EDCAA00];
    if (v8 != MEMORY[0x29EDCAA00] && MEMORY[0x29C26F9F0](v5) != MEMORY[0x29EDCA9E0])
    {
      v6 = 3760250880;
      v10 = *(v2 + 104);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_297288000, v10, OS_LOG_TYPE_ERROR, "Data type should be dictionary/array", buf, 2u);
      }

      goto LABEL_63;
    }

    memset(buf, 170, 24);
    v11 = xpc_dictionary_get_value(*(v1 + 24), v3);
    *object = v11;
    if (v11)
    {
      xpc_retain(v11);
    }

    else
    {
      *object = xpc_null_create();
    }

    xpc::dyn_cast_or_default(buf, object, "", v12);
    xpc_release(*object);
    v13 = *MEMORY[0x29EDBF8E0];
    v14 = strlen(*MEMORY[0x29EDBF8E0]);
    v15 = buf[23];
    if ((buf[23] & 0x8000000000000000) != 0)
    {
      if (v14 == *&buf[8])
      {
        if (v14 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        if (!memcmp(*buf, v13, v14))
        {
LABEL_41:
          v23 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE660]);
          *object = v23;
          if (v23)
          {
            xpc_retain(v23);
          }

          else
          {
            *object = xpc_null_create();
          }

          v25 = xpc::dyn_cast_or_default(object, 0);
          xpc_release(*object);
          *object = v5;
          if (v5 && MEMORY[0x29C26F9F0](v5) == v9)
          {
            xpc_retain(v5);
            v26 = v5;
          }

          else
          {
            v26 = xpc_null_create();
            *object = v26;
          }

          v35 = StatsModule::reportStats_sync(v2, v25, object);
          xpc_release(v26);
          *object = 0;
          if (v35)
          {
            v6 = 0;
          }

          else
          {
            v6 = 3760250880;
          }

          if ((buf[23] & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_62;
        }
      }
    }

    else if (v14 == buf[23] && !memcmp(buf, v13, v14))
    {
      goto LABEL_41;
    }

    v16 = *MEMORY[0x29EDBF880];
    v17 = strlen(*MEMORY[0x29EDBF880]);
    if ((v15 & 0x80000000) != 0)
    {
      if (v17 == *&buf[8])
      {
        if (v17 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        if (!memcmp(*buf, v16, v17))
        {
          goto LABEL_43;
        }
      }
    }

    else if (v17 == v15 && !memcmp(buf, v16, v17))
    {
LABEL_43:
      v24 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE660]);
      *object = v24;
      if (v24)
      {
        xpc_retain(v24);
      }

      else
      {
        *object = xpc_null_create();
      }

      v27 = xpc::dyn_cast_or_default(object, 0);
      xpc_release(*object);
      *object = v5;
      if (v5)
      {
        xpc_retain(v5);
        v28 = v5;
      }

      else
      {
        v28 = xpc_null_create();
        *object = v28;
      }

      StatsModule::reportAWD_sync(v2, v27, object);
      xpc_release(v28);
LABEL_60:
      v6 = 0;
      *object = 0;
LABEL_61:
      if (buf[23] < 0)
      {
LABEL_62:
        operator delete(*buf);
      }

LABEL_63:
      xpc_release(v5);
      goto LABEL_64;
    }

    v6 = 3760250880;
    v18 = *MEMORY[0x29EDBE550];
    v19 = strlen(*MEMORY[0x29EDBE550]);
    if ((v15 & 0x80000000) != 0)
    {
      if (v19 != *&buf[8])
      {
        v20 = *(v2 + 104);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_61;
        }

        goto LABEL_46;
      }

      if (v19 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (memcmp(*buf, v18, v19))
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v19 != v15)
      {
        v20 = *(v2 + 104);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_61;
        }

        goto LABEL_40;
      }

      if (memcmp(buf, v18, v19))
      {
LABEL_31:
        v20 = *(v2 + 104);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_61;
        }

        if ((v15 & 0x80000000) != 0)
        {
LABEL_46:
          v22 = *buf;
LABEL_47:
          *object = 136315138;
          *&object[4] = v22;
          _os_log_impl(&dword_297288000, v20, OS_LOG_TYPE_DEFAULT, "#I Unrecognized stats type: %s", object, 0xCu);
          if (buf[23] < 0)
          {
            goto LABEL_62;
          }

          goto LABEL_63;
        }

LABEL_40:
        v22 = buf;
        goto LABEL_47;
      }
    }

    *object = v5;
    if (v5)
    {
      xpc_retain(v5);
      v21 = v5;
    }

    else
    {
      v21 = xpc_null_create();
      *object = v21;
    }

    StatsModule::updateAnalyticsData_sync(v2, object);
    xpc_release(v21);
    goto LABEL_60;
  }

  v6 = 3760250880;
  v7 = *(v2 + 104);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_297288000, v7, OS_LOG_TYPE_ERROR, "Stats type is missing!", buf, 2u);
  }

LABEL_64:
  if (*(v1 + 32))
  {
    v29 = xpc_null_create();
    v30 = *(v1 + 32);
    *buf = v29;
    v31 = xpc_null_create();
    (*(v30 + 16))(v30, v6, buf);
    xpc_release(*buf);
    xpc_release(v31);
  }

  _ZNSt3__110unique_ptrIZZN11StatsModule28registerCommandHandlers_syncEvEUb_E3__2NS_14default_deleteIS2_EEED1B8ne200100Ev(&v37);
  v32 = a1;
  if (a1)
  {
    v33 = a1[2];
    if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v33->__on_zero_shared)(v33);
      std::__shared_weak_count::__release_weak(v33);
      v32 = a1;
    }

    operator delete(v32);
  }

  v34 = *MEMORY[0x29EDCA608];
}

void sub_297356710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *_ZNSt3__110unique_ptrIZZN11StatsModule28registerCommandHandlers_syncEvEUb_E3__2NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 24));
    *(v2 + 24) = 0;
    v4 = *(v2 + 16);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL ctu::cf::insert<char const*,__CFDictionary const*>(__CFDictionary *a1, const __CFString **a2, const void *a3, uint64_t a4, const __CFAllocator *a5)
{
  v10 = 0;
  ctu::cf::convert_copy(&v10, a2, 0x8000100, a4, a5);
  v7 = v10;
  v10 = a3;
  if (!a3)
  {
    v8 = 0;
    if (!v7)
    {
      return v8;
    }

LABEL_7:
    CFRelease(v7);
    return v8;
  }

  CFRetain(a3);
  v8 = v7 != 0;
  if (v7)
  {
    CFDictionaryAddValue(a1, v7, a3);
  }

  CFRelease(a3);
  if (v7)
  {
    goto LABEL_7;
  }

  return v8;
}

void sub_2973569A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  _Unwind_Resume(a1);
}

const char *abm::asString(unsigned int a1)
{
  if (a1 > 9)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE67FA0[a1];
  }
}

{
  if (a1 > 3)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE67FF0[a1];
  }
}

const char *abm::asString(int a1)
{
  if ((a1 - 1) > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE68010[a1 - 1];
  }
}

{
  if ((a1 - 1) > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE68028[a1 - 1];
  }
}

PowerStats *PowerStats::create@<X0>(PowerStats **a1@<X8>)
{
  v3 = operator new(0x88uLL);
  PowerStats::PowerStats(v3);
  *a1 = v3;
  result = operator new(0x20uLL);
  *result = &unk_2A1E3A728;
  *(result + 1) = 0;
  *(result + 2) = 0;
  *(result + 3) = v3;
  a1[1] = result;
  return result;
}

void sub_297356B1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<PowerStats>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void PowerStats::PowerStats(PowerStats *this)
{
  ctu::OsLogContext::OsLogContext(&v7, "com.apple.telephony.abm", "power.stats");
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26DE70](this, v8);
  MEMORY[0x29C26DE80](v8);
  ctu::OsLogContext::~OsLogContext(&v7);
  *(this + 120) = 0u;
  *(this + 6) = 0;
  *(this + 5) = this + 48;
  *(this + 92) = 0x200000001;
  *(this + 25) = -536870144;
  *(this + 104) = 0u;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  *(this + 8) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this + 40, 0);
  *(this + 5) = this + 48;
  *(this + 7) = 0;
  *(this + 6) = 0;
  v6 = 11;
  strcpy(__p, "power.stats");
  AppleBasebandManager::create();
  v2 = v7;
  v7 = 0uLL;
  v3 = *(this + 16);
  *(this + 120) = v2;
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(&v7 + 1);
  if (*(&v7 + 1) && !atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_297356D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v17);
  dispatch::callback<void({block_pointer})(xpc::dict)>::~callback(v18);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v16, *(v15 + 48));
  MEMORY[0x29C26DE80](v15);
  _Unwind_Resume(a1);
}

void PowerStats::clear(PowerStats *this)
{
  v2 = (this + 48);
  v1 = *(this + 6);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 8) = 0;
  *(this + 3) = 0;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this + 40, v1);
  *v2 = 0;
  v2[1] = 0;
  *(v2 - 1) = v2;
}

void PowerStats::~PowerStats(PowerStats *this)
{
  v2 = *(this + 16);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 14);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 13);
  if (v4)
  {
    _Block_release(v4);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this + 40, *(this + 6));

  JUMPOUT(0x29C26DE80);
}

void PowerStats::gotAssertion(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 88) = 1;
  v3 = *(a1 + 96);
  if (v3 == 1)
  {
    ++*(a1 + 16);
    if (*(a2 + 23) < 0)
    {
      v4 = a1;
      std::string::__init_copy_ctor_external(&v8, *a2, *(a2 + 8));
      a1 = v4;
    }

    else
    {
      v8 = *a2;
    }

    v5 = &v8;
    PowerStats::submitLowPowerEventMetric_sync(a1, 0, 1u, &v8);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_18;
    }
  }

  else if (!v3)
  {
    if (a3 == 1)
    {
      ++*(a1 + 12);
      if (*(a2 + 23) < 0)
      {
        v6 = a1;
        std::string::__init_copy_ctor_external(&v10, *a2, *(a2 + 8));
        a1 = v6;
      }

      else
      {
        v10 = *a2;
      }

      v5 = &v10;
      PowerStats::submitLowPowerEventMetric_sync(a1, 2u, 0, &v10);
      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_18:
        operator delete(v5->__r_.__value_.__l.__data_);
      }
    }

    else
    {
      ++*(a1 + 8);
      if (*(a2 + 23) < 0)
      {
        v7 = a1;
        std::string::__init_copy_ctor_external(&v9, *a2, *(a2 + 8));
        a1 = v7;
      }

      else
      {
        v9 = *a2;
      }

      v5 = &v9;
      PowerStats::submitLowPowerEventMetric_sync(a1, 0, 0, &v9);
      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_18;
      }
    }
  }
}

void PowerStats::submitLowPowerEventMetric_sync(uint64_t a1, unsigned int a2, unsigned int a3, const char *a4)
{
  v8 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v30[0]) = 0;
    _os_log_impl(&dword_297288000, v8, OS_LOG_TYPE_DEFAULT, "#I Submitting AWD of low power event stats", v30, 2u);
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = MEMORY[0x29EDCAA00];
  if (v9 || (v9 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v9) == v10)
    {
      xpc_retain(v9);
      v11 = v9;
    }

    else
    {
      v11 = xpc_null_create();
    }
  }

  else
  {
    v11 = xpc_null_create();
    v9 = 0;
  }

  xpc_release(v9);
  v12 = xpc_dictionary_create(0, 0, 0);
  if (v12 || (v12 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v12) == v10)
    {
      xpc_retain(v12);
      v13 = v12;
    }

    else
    {
      v13 = xpc_null_create();
    }
  }

  else
  {
    v13 = xpc_null_create();
    v12 = 0;
  }

  xpc_release(v12);
  v14 = xpc_int64_create(a2);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBEAD8], v14);
  v15 = xpc_null_create();
  xpc_release(v14);
  xpc_release(v15);
  v16 = xpc_int64_create(a3);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBEAE8], v16);
  v17 = xpc_null_create();
  xpc_release(v16);
  xpc_release(v17);
  if (a4[23] < 0)
  {
    a4 = *a4;
  }

  v18 = xpc_string_create(a4);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE7F0], v18);
  v19 = xpc_null_create();
  xpc_release(v18);
  xpc_release(v19);
  v20 = xpc_string_create(*MEMORY[0x29EDBF880]);
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, *MEMORY[0x29EDBE588], v20);
  v21 = xpc_null_create();
  xpc_release(v20);
  xpc_release(v21);
  v22 = xpc_int64_create(524464);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, *MEMORY[0x29EDBE660], v22);
  v23 = xpc_null_create();
  xpc_release(v22);
  xpc_release(v23);
  if (v13)
  {
    xpc_retain(v13);
    v24 = v13;
  }

  else
  {
    v24 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, *MEMORY[0x29EDBE580], v24);
  v25 = xpc_null_create();
  xpc_release(v24);
  xpc_release(v25);
  if (*(a1 + 104) && *(a1 + 112))
  {
    if (v11)
    {
      xpc_retain(v11);
      v26 = v11;
      v27 = *(a1 + 104);
      if (v27)
      {
LABEL_34:
        v28 = _Block_copy(v27);
        goto LABEL_37;
      }
    }

    else
    {
      v26 = xpc_null_create();
      v27 = *(a1 + 104);
      if (v27)
      {
        goto LABEL_34;
      }
    }

    v28 = 0;
LABEL_37:
    v29 = *(a1 + 112);
    v30[0] = MEMORY[0x29EDCA5F8];
    v30[1] = 1174405120;
    v30[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc4dictEEEclIJS2_EEEvDpT__block_invoke;
    v30[3] = &__block_descriptor_tmp_30;
    if (v28)
    {
      aBlock = _Block_copy(v28);
      object = v26;
      if (v26)
      {
LABEL_39:
        xpc_retain(v26);
LABEL_42:
        dispatch_async(v29, v30);
        xpc_release(object);
        object = 0;
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v28)
        {
          _Block_release(v28);
        }

        xpc_release(v26);
        goto LABEL_47;
      }
    }

    else
    {
      aBlock = 0;
      object = v26;
      if (v26)
      {
        goto LABEL_39;
      }
    }

    object = xpc_null_create();
    goto LABEL_42;
  }

LABEL_47:
  xpc_release(v13);
  xpc_release(v11);
}

void PowerStats::reportSystemStateChange(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *(a1 + 100) = *(a3 + 2);
  *(a1 + 92) = v4;
  v5 = *(a3 + 2);
  if (v5 != -536870112)
  {
    if (v5 != -536870272)
    {
      return;
    }

    if (*(a3 + 1) == 1)
    {
      if (*(a1 + 88) == 1)
      {
        v6 = *a1;
        if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I Forced sleep while power assertion(s) held ", buf, 2u);
        }

        ++*(a1 + 20);
        v16 = 0;
        LOBYTE(__p) = 0;
        PowerStats::submitLowPowerEventMetric_sync(a1, 1u, 1u, &__p);
        if (v16 < 0)
        {
          operator delete(__p);
        }
      }

      ++*(a1 + 28);
      SystemTime = TelephonyUtilGetSystemTime();
      *(a1 + 72) = SystemTime;
      v8 = *(a1 + 64);
      if (!v8)
      {
        return;
      }
    }

    else
    {
      ++*(a1 + 32);
      SystemTime = TelephonyUtilGetSystemTime();
      *(a1 + 72) = SystemTime;
      v8 = *(a1 + 64);
      if (!v8)
      {
        return;
      }
    }

    *(a1 + 80) = (SystemTime - v8) / 0x3E8u;
    return;
  }

  ++*(a1 + 24);
  v10 = TelephonyUtilGetSystemTime();
  *(a1 + 64) = v10;
  v11 = *(a1 + 72);
  if (v11)
  {
    v12 = (v10 - v11) / 0x3E8u;
    *(a1 + 84) = v12;
  }

  else
  {
    v12 = *(a1 + 84);
  }

  v13 = *(a2 + 4) == 1;
  v14 = *(a1 + 80);

  PowerStats::submitWakeInfoMetric_sync(a1, v13, v12, v14);
}

void PowerStats::submitWakeInfoMetric_sync(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v8 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v30[0]) = 0;
    _os_log_impl(&dword_297288000, v8, OS_LOG_TYPE_DEFAULT, "#I Submitting AWD of wake info", v30, 2u);
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = MEMORY[0x29EDCAA00];
  if (v9 || (v9 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v9) == v10)
    {
      xpc_retain(v9);
      v11 = v9;
    }

    else
    {
      v11 = xpc_null_create();
    }
  }

  else
  {
    v11 = xpc_null_create();
    v9 = 0;
  }

  xpc_release(v9);
  v12 = xpc_dictionary_create(0, 0, 0);
  if (v12 || (v12 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v12) == v10)
    {
      xpc_retain(v12);
      v13 = v12;
    }

    else
    {
      v13 = xpc_null_create();
    }
  }

  else
  {
    v13 = xpc_null_create();
    v12 = 0;
  }

  xpc_release(v12);
  v14 = xpc_int64_create(a2);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBF008], v14);
  v15 = xpc_null_create();
  xpc_release(v14);
  xpc_release(v15);
  v16 = xpc_int64_create(a3);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBF468], v16);
  v17 = xpc_null_create();
  xpc_release(v16);
  xpc_release(v17);
  v18 = xpc_int64_create(a4);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBF358], v18);
  v19 = xpc_null_create();
  xpc_release(v18);
  xpc_release(v19);
  v20 = xpc_string_create(*MEMORY[0x29EDBF880]);
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, *MEMORY[0x29EDBE588], v20);
  v21 = xpc_null_create();
  xpc_release(v20);
  xpc_release(v21);
  v22 = xpc_int64_create(524465);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, *MEMORY[0x29EDBE660], v22);
  v23 = xpc_null_create();
  xpc_release(v22);
  xpc_release(v23);
  if (v13)
  {
    xpc_retain(v13);
    v24 = v13;
  }

  else
  {
    v24 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, *MEMORY[0x29EDBE580], v24);
  v25 = xpc_null_create();
  xpc_release(v24);
  xpc_release(v25);
  if (*(a1 + 104) && *(a1 + 112))
  {
    if (v11)
    {
      xpc_retain(v11);
      v26 = v11;
      v27 = *(a1 + 104);
      if (v27)
      {
LABEL_32:
        v28 = _Block_copy(v27);
        goto LABEL_35;
      }
    }

    else
    {
      v26 = xpc_null_create();
      v27 = *(a1 + 104);
      if (v27)
      {
        goto LABEL_32;
      }
    }

    v28 = 0;
LABEL_35:
    v29 = *(a1 + 112);
    v30[0] = MEMORY[0x29EDCA5F8];
    v30[1] = 1174405120;
    v30[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc4dictEEEclIJS2_EEEvDpT__block_invoke;
    v30[3] = &__block_descriptor_tmp_30;
    if (v28)
    {
      aBlock = _Block_copy(v28);
      object = v26;
      if (v26)
      {
LABEL_37:
        xpc_retain(v26);
LABEL_40:
        dispatch_async(v29, v30);
        xpc_release(object);
        object = 0;
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v28)
        {
          _Block_release(v28);
        }

        xpc_release(v26);
        goto LABEL_45;
      }
    }

    else
    {
      aBlock = 0;
      object = v26;
      if (v26)
      {
        goto LABEL_37;
      }
    }

    object = xpc_null_create();
    goto LABEL_40;
  }

LABEL_45:
  xpc_release(v13);
  xpc_release(v11);
}

void PowerStats::setPowerdownMessage(uint64_t a1, xpc_object_t *a2)
{
  theArray = 0xAAAAAAAAAAAAAAAALL;
  value = xpc_dictionary_get_value(*a2, abm::kKeyPowerDownMessageList[0]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::bridge(cf, &object, v4);
  v5 = cf[0];
  if (cf[0])
  {
    v6 = CFGetTypeID(cf[0]);
    if (v6 == CFArrayGetTypeID())
    {
      theArray = v5;
      CFRetain(v5);
      v7 = cf[0];
      if (!cf[0])
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  v5 = 0;
  theArray = 0;
  v7 = cf[0];
  if (cf[0])
  {
LABEL_9:
    CFRelease(v7);
  }

LABEL_10:
  xpc_release(object);
  v8 = 0;
  v9 = (a1 + 48);
  while (1)
  {
    Count = CFArrayGetCount(v5);
    v5 = theArray;
    if (Count <= v8)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
    v12 = ValueAtIndex;
    if (!ValueAtIndex)
    {
      goto LABEL_13;
    }

    cf[0] = 0xAAAAAAAAAAAAAAAALL;
    cf[1] = 0xAAAAAAAAAAAAAAAALL;
    v13 = CFGetTypeID(ValueAtIndex);
    if (v13 == CFDictionaryGetTypeID())
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    ctu::cf::dict_adapter::dict_adapter(cf, v14);
    ctu::cf::MakeCFString::MakeCFString(&object, abm::kKeyPowerDownMessageQMISvc[0]);
    Int = ctu::cf::map_adapter::getInt(cf, object);
    MEMORY[0x29C26DF80](&object);
    ctu::cf::MakeCFString::MakeCFString(&object, abm::kKeyPowerDownMessageId[0]);
    v16 = ctu::cf::map_adapter::getInt(cf, object);
    MEMORY[0x29C26DF80](&object);
    v17 = *v9;
    v18 = (a1 + 48);
    v19 = (a1 + 48);
    if (*v9)
    {
      while (1)
      {
        while (1)
        {
          v19 = v17;
          v20 = *(v17 + 7);
          if (Int == v20)
          {
            break;
          }

          if (Int >= v20)
          {
            if (v20 >= Int)
            {
              v24 = 1;
            }

            else
            {
              v24 = -1;
            }

            if ((v24 & 0x80) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_36;
          }

LABEL_21:
          v17 = *v19;
          v18 = v19;
          if (!*v19)
          {
            goto LABEL_38;
          }
        }

        v21 = *(v19 + 8);
        if (v16 < v21)
        {
          goto LABEL_21;
        }

        v22 = v21 == v16;
        if (v21 >= v16)
        {
          v23 = 1;
        }

        else
        {
          v23 = -1;
        }

        if (v22)
        {
          v23 = 0;
        }

        if ((v23 & 0x80) == 0)
        {
LABEL_40:
          v25 = v19;
          goto LABEL_12;
        }

LABEL_36:
        v17 = *(v19 + 1);
        if (!v17)
        {
          v18 = v19 + 8;
          break;
        }
      }
    }

LABEL_38:
    v25 = operator new(0x28uLL);
    *(v25 + 28) = Int | (v16 << 32);
    *(v25 + 9) = 0;
    *v25 = 0;
    *(v25 + 1) = 0;
    *(v25 + 2) = v19;
    *v18 = v25;
    v26 = **(a1 + 40);
    if (v26)
    {
      *(a1 + 40) = v26;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 48), v25);
    ++*(a1 + 56);
LABEL_12:
    ++*(v25 + 9);
    MEMORY[0x29C26DFC0](cf);
LABEL_13:
    ++v8;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }
}

void PowerStats::submitLowPowerStatsMetric_sync(os_log_t *this)
{
  v1 = this;
  v2 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Submitting AWD of low power stats", buf, 2u);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v3) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v5 = xpc_dictionary_create(0, 0, 0);
  if (v5 || (v5 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v5) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v5);
      v6 = v5;
    }

    else
    {
      v6 = xpc_null_create();
    }
  }

  else
  {
    v6 = xpc_null_create();
    v5 = 0;
  }

  xpc_release(v5);
  v7 = xpc_int64_create(*(v1 + 3));
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, *MEMORY[0x29EDBF288], v7);
  v8 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v8);
  v9 = xpc_int64_create((*(v1 + 4) + *(v1 + 2)));
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, *MEMORY[0x29EDBEAE0], v9);
  v10 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v10);
  v11 = xpc_int64_create(*(v1 + 5));
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, *MEMORY[0x29EDBEEC8], v11);
  v12 = xpc_null_create();
  xpc_release(v11);
  xpc_release(v12);
  v13 = xpc_int64_create(*(v1 + 6));
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, *MEMORY[0x29EDBE768], v13);
  v14 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v14);
  v15 = xpc_int64_create(*(v1 + 8));
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, *MEMORY[0x29EDBEC20], v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  v17 = xpc_int64_create(*(v1 + 7));
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, *MEMORY[0x29EDBED48], v17);
  v18 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v18);
  v19 = xpc_array_create(0, 0);
  if (v19 || (v19 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v19) == MEMORY[0x29EDCA9E0])
    {
      xpc_retain(v19);
      v20 = v19;
    }

    else
    {
      v20 = xpc_null_create();
    }
  }

  else
  {
    v20 = xpc_null_create();
    v19 = 0;
  }

  xpc_release(v19);
  v21 = v1[5];
  v22 = v1 + 6;
  if (v21 == (v1 + 6))
  {
    v23 = 0;
    if (v20)
    {
LABEL_57:
      xpc_retain(v20);
      v41 = v20;
      goto LABEL_60;
    }
  }

  else
  {
    xarray = v20;
    v56 = v4;
    v57 = v6;
    v55 = v1;
    LODWORD(v23) = 0;
    key = *MEMORY[0x29EDBEEC0];
    v59 = *MEMORY[0x29EDBED58];
    v58 = *MEMORY[0x29EDBE760];
    v24 = *MEMORY[0x29EDBE758];
    do
    {
      isa_high = HIDWORD(v21[3].isa);
      isa_low = LODWORD(v21[4].isa);
      v27 = HIDWORD(v21[4].isa);
      v28 = xpc_dictionary_create(0, 0, 0);
      if (v28 || (v28 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x29C26F9F0](v28) == MEMORY[0x29EDCAA00])
        {
          xpc_retain(v28);
          v29 = v28;
        }

        else
        {
          v29 = xpc_null_create();
        }
      }

      else
      {
        v29 = xpc_null_create();
        v28 = 0;
      }

      xpc_release(v28);
      v30 = xpc_int64_create(0);
      if (!v30)
      {
        v30 = xpc_null_create();
      }

      xpc_dictionary_set_value(v29, key, v30);
      v31 = xpc_null_create();
      xpc_release(v30);
      xpc_release(v31);
      v32 = xpc_int64_create(isa_high);
      if (!v32)
      {
        v32 = xpc_null_create();
      }

      xpc_dictionary_set_value(v29, v59, v32);
      v33 = xpc_null_create();
      xpc_release(v32);
      xpc_release(v33);
      v34 = xpc_int64_create(isa_low);
      if (!v34)
      {
        v34 = xpc_null_create();
      }

      xpc_dictionary_set_value(v29, v58, v34);
      v35 = xpc_null_create();
      xpc_release(v34);
      xpc_release(v35);
      v36 = xpc_int64_create(v27);
      if (!v36)
      {
        v36 = xpc_null_create();
      }

      xpc_dictionary_set_value(v29, v24, v36);
      v37 = xpc_null_create();
      xpc_release(v36);
      xpc_release(v37);
      xpc_array_append_value(xarray, v29);
      xpc_release(v29);
      isa = v21[1].isa;
      if (isa)
      {
        do
        {
          v39 = isa;
          isa = isa->isa;
        }

        while (isa);
      }

      else
      {
        do
        {
          v39 = v21[2].isa;
          v40 = v39->isa == v21;
          v21 = v39;
        }

        while (!v40);
      }

      v23 = (v27 + v23);
      v21 = v39;
    }

    while (v39 != v22);
    v1 = v55;
    v4 = v56;
    v6 = v57;
    v20 = xarray;
    if (xarray)
    {
      goto LABEL_57;
    }
  }

  v41 = xpc_null_create();
LABEL_60:
  xpc_dictionary_set_value(v6, *MEMORY[0x29EDBED50], v41);
  v42 = xpc_null_create();
  xpc_release(v41);
  xpc_release(v42);
  v43 = xpc_int64_create(v23);
  if (!v43)
  {
    v43 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, *MEMORY[0x29EDBF148], v43);
  v44 = xpc_null_create();
  xpc_release(v43);
  xpc_release(v44);
  v45 = xpc_string_create(*MEMORY[0x29EDBF880]);
  if (!v45)
  {
    v45 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, *MEMORY[0x29EDBE588], v45);
  v46 = xpc_null_create();
  xpc_release(v45);
  xpc_release(v46);
  v47 = xpc_int64_create(524466);
  if (!v47)
  {
    v47 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, *MEMORY[0x29EDBE660], v47);
  v48 = xpc_null_create();
  xpc_release(v47);
  xpc_release(v48);
  if (v6)
  {
    xpc_retain(v6);
    v49 = v6;
  }

  else
  {
    v49 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, *MEMORY[0x29EDBE580], v49);
  v50 = xpc_null_create();
  xpc_release(v49);
  xpc_release(v50);
  if (v1[13] && v1[14])
  {
    if (v4)
    {
      xpc_retain(v4);
      v51 = v4;
      v52 = v1[13];
      if (v52)
      {
LABEL_73:
        v53 = _Block_copy(v52);
        goto LABEL_76;
      }
    }

    else
    {
      v51 = xpc_null_create();
      v52 = v1[13];
      if (v52)
      {
        goto LABEL_73;
      }
    }

    v53 = 0;
LABEL_76:
    v54 = v1[14];
    *buf = MEMORY[0x29EDCA5F8];
    v63 = 1174405120;
    v64 = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc4dictEEEclIJS2_EEEvDpT__block_invoke;
    v65 = &__block_descriptor_tmp_30;
    if (v53)
    {
      aBlock = _Block_copy(v53);
      object = v51;
      if (v51)
      {
LABEL_78:
        xpc_retain(v51);
LABEL_81:
        dispatch_async(v54, buf);
        xpc_release(object);
        object = 0;
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v53)
        {
          _Block_release(v53);
        }

        xpc_release(v51);
        goto LABEL_86;
      }
    }

    else
    {
      aBlock = 0;
      object = v51;
      if (v51)
      {
        goto LABEL_78;
      }
    }

    object = xpc_null_create();
    goto LABEL_81;
  }

LABEL_86:
  xpc_release(v20);
  xpc_release(v6);
  xpc_release(v4);
}

void sub_2973588A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t object)
{
  xpc_release(v16);
  xpc_release(object);
  xpc_release(a12);
  xpc_release(a11);
  _Unwind_Resume(a1);
}

void PowerStats::reportStats(os_log_t *this, int a2)
{
  if (a2 == 524466)
  {
    PowerStats::submitLowPowerStatsMetric_sync(this);
  }
}

void PowerStats::registerStatsHandler(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a1 + 104);
  *(a1 + 104) = v4;
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = *(a1 + 112);
  *(a1 + 112) = v6;
  if (v7)
  {

    dispatch_release(v7);
  }
}

void PowerStats::dumpState(os_log_t *this)
{
  v30 = *MEMORY[0x29EDCA608];
  v2 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I --------------- ABM Power state ---------------", buf, 2u);
    v2 = *this;
    v3 = &xmmword_29742F000;
    if (!os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
    {
LABEL_3:
      v4 = "9LogDumpDB";
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v3 = &xmmword_29742F000;
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_3;
    }
  }

  v7 = *(this + 3);
  *buf = *(v3 + 41);
  v25 = v7;
  _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Idle sleep reverted due to BB events: %u", buf, 8u);
  v2 = *this;
  v4 = "9LogDumpDB";
  if (!os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
LABEL_4:
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v8 = *(this + 2);
  v9 = *(this + 4);
  *buf = *(v4 + 212);
  v25 = v8;
  v26 = 1024;
  v27 = v9;
  _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I BB events deferred on idle sleep: %u, on forced sleep: %u", buf, 0xEu);
  v2 = *this;
  if (!os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
LABEL_5:
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v10 = *(this + 5);
  *buf = *(v3 + 41);
  v25 = v10;
  _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Forced sleep during BB event handling: %u", buf, 8u);
  v2 = *this;
  if (!os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
LABEL_6:
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

LABEL_14:
    v14 = *(this + 20);
    v15 = *(this + 21);
    *buf = *(v4 + 212);
    v25 = v14;
    v26 = 1024;
    v27 = v15;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Last wake duration: %u, sleep duration: %u", buf, 0xEu);
    v5 = this[5];
    v6 = (this + 6);
    if (v5 == (this + 6))
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

LABEL_13:
  v12 = *(this + 7);
  v11 = *(this + 8);
  v13 = *(this + 6);
  *buf = 67109632;
  v25 = v11;
  v26 = 1024;
  v27 = v12;
  v28 = 1024;
  v29 = v13;
  _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Number of idle sleeps: %u, forced sleeps: %u, wakes: %u", buf, 0x14u);
  v2 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_14;
  }

LABEL_7:
  v5 = this[5];
  v6 = (this + 6);
  if (v5 == (this + 6))
  {
    goto LABEL_25;
  }

  do
  {
LABEL_17:
    v16 = *this;
    if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
    {
      isa = v5[4].isa;
      isa_high = HIDWORD(v5[4].isa);
      v19 = HIDWORD(v5[3].isa);
      *buf = 67109632;
      v25 = v19;
      v26 = 1024;
      v27 = isa;
      v28 = 1024;
      v29 = isa_high;
      _os_log_impl(&dword_297288000, v16, OS_LOG_TYPE_DEFAULT, "#I Received message QMI_SVC 0x%x, ID 0x%x, %u times after powerdown", buf, 0x14u);
    }

    v20 = v5[1].isa;
    if (v20)
    {
      do
      {
        v21 = v20;
        v20 = v20->isa;
      }

      while (v20);
    }

    else
    {
      do
      {
        v21 = v5[2].isa;
        v22 = v21->isa == v5;
        v5 = v21;
      }

      while (!v22);
    }

    v5 = v21;
  }

  while (v21 != v6);
LABEL_25:
  v23 = *MEMORY[0x29EDCA608];
}

void std::__shared_ptr_pointer<PowerStats *,std::shared_ptr<PowerStats>::__shared_ptr_default_delete<PowerStats,PowerStats>,std::allocator<PowerStats>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<PowerStats *,std::shared_ptr<PowerStats>::__shared_ptr_default_delete<PowerStats,PowerStats>,std::allocator<PowerStats>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    PowerStats::~PowerStats(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<PowerStats *,std::shared_ptr<PowerStats>::__shared_ptr_default_delete<PowerStats,PowerStats>,std::allocator<PowerStats>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000029743334CLL)
  {
    if (((v2 & 0x800000029743334CLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029743334CLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029743334CLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

PowerStats **std::unique_ptr<PowerStats>::~unique_ptr[abi:ne200100](PowerStats **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    PowerStats::~PowerStats(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc4dictEEEclIJS2_EEEvDpT__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  object = v1;
  if (v1)
  {
    xpc_retain(v1);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v2 + 16))(v2, &object);
  xpc_release(object);
}

xpc_object_t __copy_helper_block_e8_32c53_ZTSN8dispatch5blockIU13block_pointerFvN3xpc4dictEEEE40c15_ZTSN3xpc4dictE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = _Block_copy(v4);
    v6 = *(a2 + 40);
    *(a1 + 32) = v5;
    *(a1 + 40) = v6;
    if (v6)
    {
      return xpc_retain(v6);
    }
  }

  else
  {
    v6 = *(a2 + 40);
    *(a1 + 32) = 0;
    *(a1 + 40) = v6;
    if (v6)
    {
      return xpc_retain(v6);
    }
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_32c53_ZTSN8dispatch5blockIU13block_pointerFvN3xpc4dictEEEE40c15_ZTSN3xpc4dictE(uint64_t a1)
{
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }
}

atomic_ullong *CircularFileLogWriter::create@<X0>(__int128 *a1@<X0>, atomic_ullong *a2@<X8>)
{
  v4 = operator new(0xB8uLL);
  CircularFileLogWriter::CircularFileLogWriter(v4, a1);

  return std::shared_ptr<CircularFileLogWriter>::shared_ptr[abi:ne200100]<CircularFileLogWriter,std::shared_ptr<CircularFileLogWriter> ctu::SharedSynchronizable<CircularFileLogWriter>::make_shared_ptr<CircularFileLogWriter>(CircularFileLogWriter*)::{lambda(CircularFileLogWriter*)#1},0>(a2, v4);
}

uint64_t CircularFileLogWriter::CircularFileLogWriter(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x29EDC91D0] + 16;
  v4 = dispatch_queue_create("CircularFileLogWriter", 0);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v4;
  if (v4)
  {
    v5 = v4;
    dispatch_retain(v4);
    *(a1 + 32) = 0;
    dispatch_release(v5);
    *a1 = &unk_2A1E3A7A8;
    *(a1 + 40) = 0;
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      v6 = *a2;
      *(a1 + 64) = *(a2 + 2);
      *(a1 + 48) = v6;
      goto LABEL_6;
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *a1 = &unk_2A1E3A7A8;
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  std::string::__init_copy_ctor_external((a1 + 48), *a2, *(a2 + 1));
LABEL_6:
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v7 = *(a2 + 24);
    *(a1 + 88) = *(a2 + 5);
    *(a1 + 72) = v7;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v8 = a2[3];
    *(a1 + 112) = *(a2 + 8);
    *(a1 + 96) = v8;
  }

  v9 = *(a2 + 72);
  *(a1 + 136) = *(a2 + 88);
  *(a1 + 120) = v9;
  *(a1 + 144) = 1;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  return a1;
}

void sub_29735918C(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
    if ((*(v1 + 71) & 0x80000000) == 0)
    {
LABEL_3:
      v4 = *(v1 + 40);
      *(v1 + 40) = 0;
      if (!v4)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v1 + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 48));
  v4 = *(v1 + 40);
  *(v1 + 40) = 0;
  if (!v4)
  {
LABEL_4:
    ctu::SharedSynchronizable<WorkoutModule>::~SharedSynchronizable(v2);
    _Unwind_Resume(a1);
  }

LABEL_7:
  (*(*v4 + 8))(v4);
  ctu::SharedSynchronizable<WorkoutModule>::~SharedSynchronizable(v2);
  _Unwind_Resume(a1);
}

void CircularFileLogWriter::open(CircularFileLogWriter *this)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZN21CircularFileLogWriter4openEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_11;
  v3[4] = this;
  v4 = v3;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI21CircularFileLogWriterE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_21_1;
  block[4] = this + 8;
  block[5] = &v4;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

void ___ZN21CircularFileLogWriter4openEv_block_invoke(uint64_t a1)
{
  v40[2] = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  *(v1 + 152) = 0;
  *(v1 + 156) = 0;
  if (*(v1 + 40))
  {
    std::ostream::flush();
    v2 = *(v1 + 40);
    if (!std::filebuf::close())
    {
      std::ios_base::clear((v2 + *(*v2 - 24)), *(v2 + *(*v2 - 24) + 32) | 4);
    }

    v3 = *(v1 + 40);
    *(v1 + 40) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  *(v1 + 144) = *(v1 + 120) / *(v1 + 128);
  v4 = *(v1 + 95);
  if (v4 >= 0)
  {
    v5 = *(v1 + 95);
  }

  else
  {
    v5 = *(v1 + 80);
  }

  v6 = v5 + 8;
  if (v5 + 8 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = (v1 + 72);
  if (v6 < 0x17)
  {
    memset(&v38, 0, sizeof(v38));
    v9 = &v38;
    *(&v38.__r_.__value_.__s + 23) = v5 + 8;
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if ((v6 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v6 | 7) + 1;
    }

    v9 = operator new(v8);
    v38.__r_.__value_.__l.__size_ = v5 + 8;
    v38.__r_.__value_.__r.__words[2] = v8 | 0x8000000000000000;
    v38.__r_.__value_.__r.__words[0] = v9;
  }

  v10 = *v7;
  if (v4 >= 0)
  {
    v11 = (v1 + 72);
  }

  else
  {
    v11 = *v7;
  }

  memmove(v9, v11, v5);
LABEL_20:
  strcpy(v9 + v5, "/latest-");
  v12 = *(v1 + 71);
  if (v12 >= 0)
  {
    v13 = (v1 + 48);
  }

  else
  {
    v13 = *(v1 + 48);
  }

  if (v12 >= 0)
  {
    v14 = *(v1 + 71);
  }

  else
  {
    v14 = *(v1 + 56);
  }

  v15 = std::string::append(&v38, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  *&v39.st_uid = *(&v15->__r_.__value_.__l + 2);
  *&v39.st_dev = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = *(v1 + 119);
  if (v17 >= 0)
  {
    v18 = (v1 + 96);
  }

  else
  {
    v18 = *(v1 + 96);
  }

  if (v17 >= 0)
  {
    v19 = *(v1 + 119);
  }

  else
  {
    v19 = *(v1 + 104);
  }

  v20 = std::string::append(&v39, v18, v19);
  v21 = v20->__r_.__value_.__r.__words[0];
  v40[0] = v20->__r_.__value_.__l.__size_;
  *(v40 + 7) = *(&v20->__r_.__value_.__r.__words[1] + 7);
  v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (*(v1 + 183) < 0)
  {
    operator delete(*(v1 + 160));
  }

  v23 = v40[0];
  *(v1 + 160) = v21;
  *(v1 + 168) = v23;
  *(v1 + 175) = *(v40 + 7);
  *(v1 + 183) = v22;
  if (SHIBYTE(v39.st_gid) < 0)
  {
    operator delete(*&v39.st_dev);
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }
  }

  else if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

  operator delete(v38.__r_.__value_.__l.__data_);
LABEL_36:
  v24 = *(v1 + 95);
  if (v24 >= 0)
  {
    v25 = *(v1 + 95);
  }

  else
  {
    v25 = *(v1 + 80);
  }

  v26 = v25 + 1;
  if (v25 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v26 < 0x17)
  {
    memset(&v39, 0, 24);
    v28 = &v39;
    HIBYTE(v39.st_gid) = v25 + 1;
    if (!v25)
    {
      goto LABEL_50;
    }
  }

  else
  {
    if ((v26 | 7) == 0x17)
    {
      v27 = 25;
    }

    else
    {
      v27 = (v26 | 7) + 1;
    }

    v28 = operator new(v27);
    v39.st_ino = v25 + 1;
    *&v39.st_uid = v27 | 0x8000000000000000;
    *&v39.st_dev = v28;
  }

  v29 = *v7;
  if (v24 >= 0)
  {
    v30 = (v1 + 72);
  }

  else
  {
    v30 = *v7;
  }

  memmove(v28, v30, v25);
LABEL_50:
  *&v28[v25] = 47;
  if (v24 < 0)
  {
    operator delete(*v7);
  }

  *v7 = *&v39.st_dev;
  *(v1 + 88) = *&v39.st_uid;
  v31.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v31.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v39.st_blksize = v31;
  *v39.st_qspare = v31;
  v39.st_birthtimespec = v31;
  *&v39.st_size = v31;
  v39.st_mtimespec = v31;
  v39.st_ctimespec = v31;
  *&v39.st_uid = v31;
  v39.st_atimespec = v31;
  *&v39.st_dev = v31;
  if (*(v1 + 95) >= 0)
  {
    v32 = (v1 + 72);
  }

  else
  {
    v32 = *(v1 + 72);
  }

  if (!stat(v32, &v39) && (*(v1 + 95) >= 0 ? (v34 = (v1 + 72)) : (v34 = *(v1 + 72)), (v35 = opendir(v34), (v36 = v35) != 0) && (v37 = readdir(v35), closedir(v36), v37)))
  {
    CircularFileLogWriter::getFileIndex_sync(v1, (v1 + 156), (v1 + 152));
  }

  else
  {
    support::fs::createDir((v1 + 72), 0x1EDu, 1);
  }

  CircularFileLogWriter::openNewLog_sync(v1);
  v33 = *MEMORY[0x29EDCA608];
}

void sub_2973596CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CircularFileLogWriter::close_sync(CircularFileLogWriter *this)
{
  *(this + 19) = 0;
  result = *(this + 5);
  if (result)
  {
    std::ostream::flush();
    v3 = *(this + 5);
    if (std::filebuf::close())
    {
      result = *(this + 5);
      *(this + 5) = 0;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      std::ios_base::clear((v3 + *(*v3 - 24)), *(v3 + *(*v3 - 24) + 32) | 4);
      result = *(this + 5);
      *(this + 5) = 0;
      if (!result)
      {
        return result;
      }
    }

    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

void CircularFileLogWriter::getFileIndex_sync(CircularFileLogWriter *this, unsigned int *a2, unsigned int *a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v58 = v6;
  v59 = v6;
  *&v56[0].__locale_ = v6;
  v57 = v6;
  v46[23] = 10;
  strcpy(v46, "([0-9]{8})");
  v7 = *(this + 119);
  if (v7 >= 0)
  {
    v8 = this + 96;
  }

  else
  {
    v8 = *(this + 12);
  }

  if (v7 >= 0)
  {
    v9 = *(this + 119);
  }

  else
  {
    v9 = *(this + 13);
  }

  v10 = std::string::append(v46, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  *&__dst[16] = *(&v10->__r_.__value_.__l + 2);
  *__dst = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v56, __dst, 0);
  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
    if ((v46[23] & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_60:
    operator delete(*v46);
    goto LABEL_9;
  }

  if ((v46[23] & 0x80000000) != 0)
  {
    goto LABEL_60;
  }

LABEL_9:
  __p = 0;
  v54 = 0;
  v55 = 0;
  support::fs::readDir(this + 72, &__p);
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v47 = 0xAAAAAAAAAAAAAAAALL;
  v49 = 0xAAAAAAAAAAAAAA00;
  v51 = v12;
  v48 = 0;
  v50 = 0uLL;
  LOBYTE(v51) = 0;
  BYTE8(v51) = 0;
  v52 = 0;
  memset(v46, 0, sizeof(v46));
  v13 = __p;
  v14 = v54;
  if (__p == v54)
  {
    *a2 = 0;
    *a3 = 0;
    v39 = __p;
    if (!__p)
    {
      goto LABEL_57;
    }

    goto LABEL_62;
  }

  v43 = a3;
  v15 = 0;
  v16 = 0;
  v17 = &v47;
  v18 = 1;
  do
  {
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v67 = v19;
    v64 = 0xAAAAAAAAAAAAAA00;
    v61 = 0xAAAAAAAAAAAAAAAALL;
    v62 = 0;
    v63 = 0;
    v65 = 0;
    v66 = 0;
    LOBYTE(v67) = 0;
    BYTE8(v67) = 0;
    v68 = 0;
    memset(__dst, 0, sizeof(__dst));
    second = *(&v13->matched + 7);
    if (second >= 0)
    {
      first = v13;
    }

    else
    {
      first = v13->first;
    }

    if (second < 0)
    {
      second = v13->second;
    }

    v22 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v56, first, &second[first], __dst, 0);
    v23 = *(&v13->matched + 7);
    if (v23 >= 0)
    {
      v24 = v13;
    }

    else
    {
      v24 = v13->first;
    }

    if (v23 < 0)
    {
      v23 = v13->second;
    }

    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v46, v24, &v23[v24], __dst, 0);
    if (*__dst)
    {
      *&__dst[8] = *__dst;
      operator delete(*__dst);
    }

    if (v22)
    {
      memset(__dst, 170, 24);
      v25 = (*v46 + 16);
      if (*&v46[8] == *v46)
      {
        v25 = v17;
      }

      if (*v25 != 1)
      {
        memset(__dst, 0, 24);
        goto LABEL_39;
      }

      v26 = &v46[24];
      if (*&v46[8] != *v46)
      {
        v26 = *v46;
      }

      v27 = *v26;
      v28 = (*v46 + 8);
      if (*&v46[8] == *v46)
      {
        v28 = &v46[32];
      }

      v29 = *v28;
      v30 = *v28 - v27;
      if (v30 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v45 = v18;
      if (v30 > 0x16)
      {
        v44 = v16;
        v34 = v17;
        v35 = v14;
        v36 = v15;
        if ((v30 | 7) == 0x17)
        {
          v37 = 25;
        }

        else
        {
          v37 = (v30 | 7) + 1;
        }

        v31 = operator new(v37);
        *&__dst[8] = v30;
        *&__dst[16] = v37 | 0x8000000000000000;
        *__dst = v31;
        v15 = v36;
        v14 = v35;
        v17 = v34;
        v16 = v44;
        if (v29 == v27)
        {
          goto LABEL_37;
        }
      }

      else
      {
        __dst[23] = *v28 - v27;
        v31 = __dst;
        if (v29 == v27)
        {
LABEL_37:
          v31[v30] = 0;
          v18 = v45;
LABEL_39:
          v32 = std::stoul(__dst, 0, 10);
          if (v18)
          {
            v33 = v32;
          }

          else
          {
            v33 = v15;
          }

          if (v33 >= v32)
          {
            v15 = v32;
          }

          else
          {
            v15 = v33;
          }

          if (v16 < v32)
          {
            v16 = v32 + 1;
          }

          if ((__dst[23] & 0x80000000) != 0)
          {
            operator delete(*__dst);
          }

          v18 = 0;
          goto LABEL_12;
        }
      }

      memmove(v31, v27, v30);
      goto LABEL_37;
    }

LABEL_12:
    ++v13;
  }

  while (v13 != v14);
  v38 = *v46;
  *a2 = v15;
  *v43 = v16;
  if (v38)
  {
    *&v46[8] = v38;
    operator delete(v38);
  }

  v39 = __p;
  if (!__p)
  {
LABEL_57:
    v40 = v59;
    if (!v59)
    {
      goto LABEL_71;
    }

LABEL_69:
    if (!atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v40->__on_zero_shared)(v40);
      std::__shared_weak_count::__release_weak(v40);
    }

    goto LABEL_71;
  }

LABEL_62:
  v41 = v54;
  if (v54 == v39)
  {
    v54 = v39;
    operator delete(v39);
    v40 = v59;
    if (!v59)
    {
      goto LABEL_71;
    }

    goto LABEL_69;
  }

  do
  {
    v42 = *(v41 - 1);
    v41 -= 3;
    if (v42 < 0)
    {
      operator delete(*v41);
    }
  }

  while (v41 != v39);
  v54 = v39;
  operator delete(__p);
  v40 = v59;
  if (v59)
  {
    goto LABEL_69;
  }

LABEL_71:
  std::locale::~locale(v56);
}

void sub_297359C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void **a33, uint64_t a34, uint64_t a35, std::locale a36)
{
  std::vector<std::string>::~vector[abi:ne200100](&a33);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a36);
  _Unwind_Resume(a1);
}

void CircularFileLogWriter::openNewLog_sync(CircularFileLogWriter *this)
{
  if (*(this + 5))
  {
    std::ostream::flush();
    v2 = *(this + 5);
    if (!std::filebuf::close())
    {
      std::ios_base::clear((v2 + *(*v2 - 24)), *(v2 + *(*v2 - 24) + 32) | 4);
    }

    v3 = *(this + 5);
    *(this + 5) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  v4 = this + 160;
  v5 = this + 160;
  if (*(this + 183) < 0)
  {
    v5 = *v4;
  }

  unlink(v5);
  v6 = *(this + 38);
  *(this + 38) = v6 + 1;
  CircularFileLogWriter::generateFileName_sync(this, v6, &v20);
  v7 = *(this + 95);
  if (v7 >= 0)
  {
    v8 = this + 72;
  }

  else
  {
    v8 = *(this + 9);
  }

  if (v7 >= 0)
  {
    v9 = *(this + 95);
  }

  else
  {
    v9 = *(this + 10);
  }

  v10 = std::string::insert(&v20, 0, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v22 = v10->__r_.__value_.__r.__words[2];
  *__p = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  v12 = operator new(0x238uLL);
  v12[58] = 0;
  v13 = MEMORY[0x29EDC9560] + 64;
  v12[52] = MEMORY[0x29EDC9560] + 64;
  v14 = *(MEMORY[0x29EDC9520] + 16);
  v15 = *(MEMORY[0x29EDC9520] + 8);
  *v12 = v15;
  *(v12 + *(v15 - 24)) = v14;
  v16 = (v12 + *(*v12 - 24));
  std::ios_base::init(v16, v12 + 1);
  v17 = MEMORY[0x29EDC9560] + 24;
  v16[1].__vftable = 0;
  v16[1].__fmtflags_ = -1;
  *v12 = v17;
  v12[52] = v13;
  MEMORY[0x29C26E940](v12 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((v12 + *(*v12 - 24)), *(v12 + *(*v12 - 24) + 32) | 4);
  }

  v18 = *(this + 5);
  *(this + 5) = v12;
  if (v18)
  {
    (*(*v18 + 8))(v18);
    v12 = *(this + 5);
  }

  if (v12[16])
  {
    support::fs::getFileName(&v20);
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v20;
    }

    else
    {
      v19 = v20.__r_.__value_.__r.__words[0];
    }

    if (*(this + 183) < 0)
    {
      v4 = *v4;
    }

    symlink(v19, v4);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  CircularFileLogWriter::clearOldLogs_sync(this);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_297359FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void CircularFileLogWriter::close(CircularFileLogWriter *this)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZN21CircularFileLogWriter5closeEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_4;
  v3[4] = this;
  v4 = v3;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI21CircularFileLogWriterE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_21_1;
  block[4] = this + 8;
  block[5] = &v4;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

uint64_t ___ZN21CircularFileLogWriter5closeEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 152) = 0;
  result = *(v1 + 40);
  if (result)
  {
    std::ostream::flush();
    v3 = *(v1 + 40);
    if (std::filebuf::close())
    {
      result = *(v1 + 40);
      *(v1 + 40) = 0;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      std::ios_base::clear((v3 + *(*v3 - 24)), *(v3 + *(*v3 - 24) + 32) | 4);
      result = *(v1 + 40);
      *(v1 + 40) = 0;
      if (!result)
      {
        return result;
      }
    }

    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

void CircularFileLogWriter::clear(CircularFileLogWriter *this)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZN21CircularFileLogWriter5clearEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_5_0;
  v3[4] = this;
  v4 = v3;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI21CircularFileLogWriterE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_21_1;
  block[4] = this + 8;
  block[5] = &v4;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

BOOL CircularFileLogWriter::clear_sync(CircularFileLogWriter *this)
{
  *(this + 19) = 0;
  if (*(this + 5))
  {
    std::ostream::flush();
    v2 = *(this + 5);
    if (!std::filebuf::close())
    {
      std::ios_base::clear((v2 + *(*v2 - 24)), *(v2 + *(*v2 - 24) + 32) | 4);
    }

    v3 = *(this + 5);
    *(this + 5) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  v4 = (this + 160);
  if (*(this + 183) < 0)
  {
    unlink(*v4);
    v5 = this + 72;
  }

  else
  {
    unlink(v4);
    v5 = this + 72;
  }

  return support::fs::removeDir(v5);
}

void CircularFileLogWriter::write(uint64_t a1, uint64_t *a2)
{
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 1174405120;
  v5[2] = ___ZN21CircularFileLogWriter5writeENSt3__110shared_ptrIN3ctu10LogMessageEEE_block_invoke;
  v5[3] = &__block_descriptor_tmp_6_4;
  v3 = *a2;
  v2 = a2[1];
  v5[4] = a1;
  v5[5] = v3;
  v6 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ctu::SharedSynchronizable<CircularFileLogWriter>::execute_wrapped((a1 + 8), v5);
  v4 = v6;
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void ___ZN21CircularFileLogWriter5writeENSt3__110shared_ptrIN3ctu10LogMessageEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v4[0] = a1[5];
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  CircularFileLogWriter::write_sync(v2, v4);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t CircularFileLogWriter::write_sync(uint64_t result, uint64_t *a2)
{
  v61 = *MEMORY[0x29EDCA608];
  v2 = *a2;
  if (!*a2)
  {
    goto LABEL_60;
  }

  v3 = result;
  v4 = *(result + 40);
  if (!v4 || !*(v4 + 128))
  {
    goto LABEL_60;
  }

  v6 = *(v2 + 71);
  if (v6 < 0)
  {
    v7 = *(v2 + 56) + 1;
    if (v7 < 2)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v7 = v6 + 1;
    if ((v6 + 1) < 2)
    {
      goto LABEL_60;
    }
  }

  v8 = *(v2 + 8);
  v56 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v55[7] = v9;
  v55[8] = v9;
  v55[5] = v9;
  v55[6] = v9;
  v55[3] = v9;
  v55[4] = v9;
  v55[1] = v9;
  v55[2] = v9;
  v54 = v9;
  v55[0] = v9;
  *__p = v9;
  v53 = v9;
  v50 = v9;
  v51 = v9;
  v48 = v9;
  v49 = v9;
  v47 = v9;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v47);
  v10.n128_f64[0] = v8 / 1000000000.0;
  v11 = v48;
  *(&v48 + *(v48 - 24) + 8) |= 4u;
  *(&v48 + *(v11 - 24) + 16) = 3;
  v12 = MEMORY[0x29C26EA40](&v48, v10);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " [", 2);
  v14 = *(*a2 + 16);
  LOBYTE(__dst.__locale_) = ctu::asChar();
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &__dst, 1);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "] ", 2);
  v17 = *(*a2 + 47);
  if (v17 >= 0)
  {
    v18 = *a2 + 24;
  }

  else
  {
    v18 = *(*a2 + 24);
  }

  if (v17 >= 0)
  {
    v19 = *(*a2 + 47);
  }

  else
  {
    v19 = *(*a2 + 32);
  }

  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ": ", 2);
  v21 = &v48 + *(v48 - 24);
  if ((v21[32] & 5) != 0)
  {
    v22 = v7 - 1;
    v23 = *(v3 + 16);
    if (v7 - 1 > v23)
    {
      goto LABEL_57;
    }

LABEL_18:
    v24 = *(v3 + 5) + *(**(v3 + 5) - 24);
    if ((*(v24 + 32) & 5) != 0)
    {
      if (v22 - 1 <= v23)
      {
LABEL_23:
        v25 = *a2;
        v26 = *(*a2 + 71);
        if (v26 < 0)
        {
          v27 = *(v25 + 56);
          if (v27)
          {
LABEL_27:
            v28 = (v25 + 48);
            v29 = v27 - 1;
            if ((v26 & 0x80000000) != 0)
            {
              v28 = *v28;
            }

            *(v28 + v29);
            v30 = *(v3 + 5);
            v31 = BYTE8(v54);
            if ((BYTE8(v54) & 0x10) == 0)
            {
              goto LABEL_30;
            }

            goto LABEL_33;
          }
        }

        else if (*(*a2 + 71))
        {
          v27 = *(*a2 + 71);
          goto LABEL_27;
        }

        v30 = *(v3 + 5);
        v31 = BYTE8(v54);
        if ((BYTE8(v54) & 0x10) == 0)
        {
LABEL_30:
          if ((v31 & 8) == 0)
          {
            v32 = 0;
            HIBYTE(v59) = 0;
            p_dst = &__dst;
            goto LABEL_46;
          }

          v35 = &v49 + 1;
          v34 = *(&v50 + 1);
LABEL_37:
          v36 = *v35;
          v32 = v34 - *v35;
          if (v32 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v32 >= 0x17)
          {
            if ((v32 | 7) == 0x17)
            {
              v37 = 25;
            }

            else
            {
              v37 = (v32 | 7) + 1;
            }

            p_dst = operator new(v37);
            v58 = v32;
            v59 = v37 | 0x8000000000000000;
            __dst.__locale_ = p_dst;
          }

          else
          {
            HIBYTE(v59) = v34 - *v35;
            p_dst = &__dst;
            if (!v32)
            {
              goto LABEL_46;
            }
          }

          memmove(p_dst, v36, v32);
LABEL_46:
          *(p_dst + v32) = 0;
          if (v59 >= 0)
          {
            locale = &__dst;
          }

          else
          {
            locale = __dst.__locale_;
          }

          if (v59 >= 0)
          {
            v39 = HIBYTE(v59);
          }

          else
          {
            v39 = v58;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, locale, v39);
          if (SHIBYTE(v59) < 0)
          {
            operator delete(__dst.__locale_);
          }

          v40 = *(v3 + 5);
          v41 = *a2;
          if ((*(*a2 + 71) & 0x8000000000000000) != 0)
          {
            v42 = *(v41 + 48);
            v43 = *(v41 + 56);
          }

          std::ostream::write();
          std::ios_base::getloc((*(v3 + 5) + *(**(v3 + 5) - 24)));
          v44 = std::locale::use_facet(&__dst, MEMORY[0x29EDC93D0]);
          (v44->__vftable[2].~facet_0)(v44, 10);
          std::locale::~locale(&__dst);
          std::ostream::put();
          std::ostream::flush();
          goto LABEL_57;
        }

LABEL_33:
        v34 = v54;
        if (v54 < *(&v51 + 1))
        {
          *&v54 = *(&v51 + 1);
          v34 = *(&v51 + 1);
        }

        v35 = &v51;
        goto LABEL_37;
      }
    }

    else
    {
      (*(**(v24 + 40) + 32))(&__dst);
      if (v60 + v22 <= *(v3 + 16))
      {
        goto LABEL_23;
      }
    }

    CircularFileLogWriter::openNewLog_sync(v3);
    goto LABEL_23;
  }

  (*(**(v21 + 5) + 32))(&__dst);
  v22 = v60 + v7;
  v23 = *(v3 + 16);
  if (v60 + v7 <= v23)
  {
    goto LABEL_18;
  }

LABEL_57:
  *&v47 = *MEMORY[0x29EDC9528];
  v45 = *(MEMORY[0x29EDC9528] + 72);
  *(&v47 + *(v47 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v48 = v45;
  *(&v48 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v53) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v48 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v49);
  std::iostream::~basic_iostream();
  result = MEMORY[0x29C26EC90](v55);
LABEL_60:
  v46 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29735AB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a9, MEMORY[0x29EDC9528]);
  MEMORY[0x29C26EC90](&a25);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c44_ZTSNSt3__110shared_ptrIN3ctu10LogMessageEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c44_ZTSNSt3__110shared_ptrIN3ctu10LogMessageEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void CircularFileLogWriter::writeBuffer(CircularFileLogWriter *this, const char *a2, uint64_t a3)
{
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 0x40000000;
  v5[2] = ___ZN21CircularFileLogWriter11writeBufferEPKcm_block_invoke;
  v5[3] = &__block_descriptor_tmp_7;
  v5[4] = this;
  v5[5] = a2;
  v5[6] = a3;
  v6 = v5;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI21CircularFileLogWriterE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_21_1;
  block[4] = this + 8;
  block[5] = &v6;
  v4 = this + 24;
  v3 = *(this + 3);
  if (*(v4 + 1))
  {
    dispatch_async_and_wait(v3, block);
  }

  else
  {
    dispatch_sync(v3, block);
  }
}

uint64_t CircularFileLogWriter::writeBuffer_sync(uint64_t this, const char *a2, uint64_t a3)
{
  v17 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    goto LABEL_22;
  }

  v3 = a3;
  if (!a3)
  {
    goto LABEL_22;
  }

  v4 = this;
  v5 = *(this + 40);
  if (!v5 || !v5[16])
  {
    goto LABEL_22;
  }

  v6 = a2;
  if (*(this + 136) == 1)
  {
    while (1)
    {
      v9 = v5 + *(*v5 - 24);
      if ((v9[32] & 5) != 0)
      {
        v10 = *(v4 + 16);
        if (v3 - 1 <= v10)
        {
          goto LABEL_20;
        }
      }

      else
      {
        (*(**(v9 + 5) + 32))(v15);
        v10 = *(v4 + 16);
        if (v16 + v3 <= v10)
        {
          goto LABEL_20;
        }
      }

      v11 = *(v4 + 5) + *(**(v4 + 5) - 24);
      if ((*(v11 + 32) & 5) != 0)
      {
        break;
      }

      (*(**(v11 + 40) + 32))(v15);
      v7 = v16;
      if (v10 != v16)
      {
        v12 = *(v4 + 5);
        goto LABEL_8;
      }

LABEL_9:
      CircularFileLogWriter::openNewLog_sync(v4);
      v5 = *(v4 + 5);
    }

    v7 = -1;
LABEL_8:
    v8 = v10 - v7;
    std::ostream::write();
    v6 += v8;
    v3 -= v8;
    goto LABEL_9;
  }

  v13 = v5 + *(*v5 - 24);
  if ((v13[32] & 5) != 0)
  {
    if ((a3 - 1) <= *(this + 128))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  (*(**(v13 + 5) + 32))(v15);
  if ((v16 + v3) > *(v4 + 16))
  {
LABEL_19:
    CircularFileLogWriter::openNewLog_sync(v4);
  }

LABEL_20:
  this = *(v4 + 5);
  if (this)
  {
    this = std::ostream::write();
  }

LABEL_22:
  v14 = *MEMORY[0x29EDCA608];
  return this;
}

void CircularFileLogWriter::setCapacity(CircularFileLogWriter *this, uint64_t a2)
{
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___ZN21CircularFileLogWriter11setCapacityEm_block_invoke;
  v2[3] = &__block_descriptor_tmp_8;
  v2[4] = this;
  v2[5] = a2;
  ctu::SharedSynchronizable<CircularFileLogWriter>::execute_wrapped(this + 1, v2);
}

void ___ZN21CircularFileLogWriter11setCapacityEm_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  *(v1 + 15) = v2;
  *(v1 + 18) = v2 / *(v1 + 16);
  CircularFileLogWriter::clearOldLogs_sync(v1);
}

void CircularFileLogWriter::clearOldLogs_sync(CircularFileLogWriter *this)
{
  v1 = *(this + 39);
  if (*(this + 18) < (*(this + 38) - v1))
  {
    v3 = this + 72;
    do
    {
      *(this + 39) = v1 + 1;
      CircularFileLogWriter::generateFileName_sync(this, v1, &v12);
      v4 = *(this + 95);
      if (v4 >= 0)
      {
        v5 = v3;
      }

      else
      {
        v5 = *(this + 9);
      }

      if (v4 >= 0)
      {
        v6 = *(this + 95);
      }

      else
      {
        v6 = *(this + 10);
      }

      v7 = std::string::insert(&v12, 0, v5, v6);
      v13 = *v7;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
      }

      v9 = SHIBYTE(v13.__r_.__value_.__r.__words[2]);
      v10 = v13.__r_.__value_.__r.__words[0];
      if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v13;
      }

      else
      {
        v11 = v13.__r_.__value_.__r.__words[0];
      }

      if (remove(v11, v8))
      {
        unlink(v11);
      }

      if (v9 < 0)
      {
        operator delete(v10);
      }

      v1 = *(this + 39);
    }

    while (*(this + 18) < (*(this + 38) - v1));
  }
}

void sub_29735B140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CircularFileLogWriter::closeRunningLog_sync(CircularFileLogWriter *this)
{
  result = *(this + 5);
  if (result)
  {
    std::ostream::flush();
    v3 = *(this + 5);
    if (std::filebuf::close())
    {
      result = *(this + 5);
      *(this + 5) = 0;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      std::ios_base::clear((v3 + *(*v3 - 24)), *(v3 + *(*v3 - 24) + 32) | 4);
      result = *(this + 5);
      *(this + 5) = 0;
      if (!result)
      {
        return result;
      }
    }

    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

void CircularFileLogWriter::generateFileName_sync(CircularFileLogWriter *this@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v30 = *MEMORY[0x29EDCA608];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28 = v5;
  v29 = v5;
  *__str = v5;
  v27 = v5;
  snprintf(__str, 0x40uLL, "%08zu", a2);
  v6 = *(this + 71);
  if (v6 >= 0)
  {
    v7 = *(this + 71);
  }

  else
  {
    v7 = *(this + 7);
  }

  v8 = v7 + 1;
  if (v7 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8 < 0x17)
  {
    memset(&v24, 0, sizeof(v24));
    v10 = &v24;
    *(&v24.__r_.__value_.__s + 23) = v7 + 1;
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v8 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v8 | 7) + 1;
    }

    v10 = operator new(v9);
    v24.__r_.__value_.__l.__size_ = v7 + 1;
    v24.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
    v24.__r_.__value_.__r.__words[0] = v10;
  }

  if (v6 >= 0)
  {
    v11 = this + 48;
  }

  else
  {
    v11 = *(this + 6);
  }

  memmove(v10, v11, v7);
LABEL_15:
  *&v10[v7] = 46;
  v12 = strlen(__str);
  v13 = std::string::append(&v24, __str, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v17 = *(this + 12);
  v16 = this + 96;
  v15 = v17;
  v18 = v16[23];
  if (v18 >= 0)
  {
    v19 = v16;
  }

  else
  {
    v19 = v15;
  }

  if (v18 >= 0)
  {
    v20 = v16[23];
  }

  else
  {
    v20 = *(v16 + 1);
  }

  v21 = std::string::append(&v25, v19, v20);
  *a3 = *v21;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_26:
    operator delete(v24.__r_.__value_.__l.__data_);
    v23 = *MEMORY[0x29EDCA608];
    return;
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_26;
  }

LABEL_23:
  v22 = *MEMORY[0x29EDCA608];
}

void sub_29735B3E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

void CircularFileLogWriter::~CircularFileLogWriter(void **this)
{
  CircularFileLogWriter::~CircularFileLogWriter(this);

  operator delete(v1);
}

{
  *this = &unk_2A1E3A7A8;
  if (*(this + 183) < 0)
  {
    operator delete(this[20]);
    if ((*(this + 119) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 95) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*(this + 119) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[12]);
  if ((*(this + 95) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(this + 71) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(this[9]);
  if ((*(this + 71) & 0x80000000) == 0)
  {
LABEL_5:
    v2 = this[5];
    this[5] = 0;
    if (!v2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_17:
  operator delete(this[6]);
  v2 = this[5];
  this[5] = 0;
  if (v2)
  {
LABEL_6:
    (*(*v2 + 8))(v2);
  }

LABEL_7:
  v3 = this[4];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = this[3];
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = this[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

atomic_ullong *std::shared_ptr<CircularFileLogWriter>::shared_ptr[abi:ne200100]<CircularFileLogWriter,std::shared_ptr<CircularFileLogWriter> ctu::SharedSynchronizable<CircularFileLogWriter>::make_shared_ptr<CircularFileLogWriter>(CircularFileLogWriter*)::{lambda(CircularFileLogWriter*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E3A898;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
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
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
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

void sub_29735B678(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<CircularFileLogWriter> ctu::SharedSynchronizable<CircularFileLogWriter>::make_shared_ptr<CircularFileLogWriter>(CircularFileLogWriter*)::{lambda(CircularFileLogWriter*)#1}::operator() const(CircularFileLogWriter*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<CircularFileLogWriter *,std::shared_ptr<CircularFileLogWriter> ctu::SharedSynchronizable<CircularFileLogWriter>::make_shared_ptr<CircularFileLogWriter>(CircularFileLogWriter*)::{lambda(CircularFileLogWriter *)#1},std::allocator<CircularFileLogWriter>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<CircularFileLogWriter *,std::shared_ptr<CircularFileLogWriter> ctu::SharedSynchronizable<CircularFileLogWriter>::make_shared_ptr<CircularFileLogWriter>(CircularFileLogWriter*)::{lambda(CircularFileLogWriter *)#1},std::allocator<CircularFileLogWriter>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI21CircularFileLogWriterE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI21CircularFileLogWriterE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI21CircularFileLogWriterE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI21CircularFileLogWriterE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<CircularFileLogWriter> ctu::SharedSynchronizable<CircularFileLogWriter>::make_shared_ptr<CircularFileLogWriter>(CircularFileLogWriter*)::{lambda(CircularFileLogWriter*)#1}::operator() const(CircularFileLogWriter*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ctu::SharedSynchronizable<CircularFileLogWriter>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableI21CircularFileLogWriterE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E3A8E0;
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

uint64_t __copy_helper_block_e8_40c50_ZTSNSt3__110shared_ptrIK21CircularFileLogWriterEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c50_ZTSNSt3__110shared_ptrIK21CircularFileLogWriterEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

BOOL defaults::get(char *a1, char *a2, std::string *a3)
{
  v28 = *MEMORY[0x29EDCA608];
  if (a1[23] < 0)
  {
    v6 = *a1;
    if (strcasecmp(*a1, *MEMORY[0x29EDBE5F0]) && strcasecmp(v6, *MEMORY[0x29EDBF8A0]) && strcasecmp(v6, *MEMORY[0x29EDBD2C0]) && strcasecmp(v6, *MEMORY[0x29EDBD2B8]))
    {
      if (strcasecmp(v6, *MEMORY[0x29EDBE5F8]))
      {
        if (strcasecmp(v6, *MEMORY[0x29EDBF8E8]) && strcasecmp(v6, *MEMORY[0x29EDBE690]))
        {
          if (strcasecmp(v6, *MEMORY[0x29EDBE7A8]))
          {
            if (strcasecmp(v6, *MEMORY[0x29EDBE7B0]))
            {
              if (strcasecmp(v6, *MEMORY[0x29EDBE718]))
              {
                if (strcasecmp(v6, *MEMORY[0x29EDBE528]))
                {
                  if (strcasecmp(v6, *MEMORY[0x29EDBE710]))
                  {
                    if (strcasecmp(v6, *MEMORY[0x29EDBE5B0]))
                    {
                      if (strcasecmp(v6, *MEMORY[0x29EDBE608]))
                      {
LABEL_16:
                        if (!strcasecmp(v6, *MEMORY[0x29EDBE600]))
                        {
                          v20 = *MEMORY[0x29EDCA608];

                          return defaults::tracesettings::get(a2, a3);
                        }

                        else
                        {
                          sGetOsLogContext();
                          v7 = qword_2A1399E40;
                          if (os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR))
                          {
                            if (a1[23] >= 0)
                            {
                              v21 = a1;
                            }

                            else
                            {
                              v21 = *a1;
                            }

                            if (a2[23] >= 0)
                            {
                              v22 = a2;
                            }

                            else
                            {
                              v22 = *a2;
                            }

                            v24 = 136315394;
                            v25 = v21;
                            v26 = 2080;
                            v27 = v22;
                            _os_log_error_impl(&dword_297288000, v7, OS_LOG_TYPE_ERROR, "Invalid domain; domain='%s' key='%s'", &v24, 0x16u);
                            v23 = *MEMORY[0x29EDCA608];
                          }

                          else
                          {
                            v8 = *MEMORY[0x29EDCA608];
                          }

                          return 0;
                        }
                      }

                      goto LABEL_34;
                    }

                    goto LABEL_61;
                  }

                  goto LABEL_58;
                }

                goto LABEL_55;
              }

              goto LABEL_52;
            }

            goto LABEL_49;
          }

          goto LABEL_46;
        }

        goto LABEL_40;
      }

      goto LABEL_43;
    }
  }

  else if (strcasecmp(a1, *MEMORY[0x29EDBE5F0]) && strcasecmp(a1, *MEMORY[0x29EDBF8A0]) && strcasecmp(a1, *MEMORY[0x29EDBD2C0]) && strcasecmp(a1, *MEMORY[0x29EDBD2B8]))
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBE5F8]))
    {
      if (strcasecmp(a1, *MEMORY[0x29EDBF8E8]) && strcasecmp(a1, *MEMORY[0x29EDBE690]))
      {
        if (strcasecmp(a1, *MEMORY[0x29EDBE7A8]))
        {
          if (strcasecmp(a1, *MEMORY[0x29EDBE7B0]))
          {
            if (strcasecmp(a1, *MEMORY[0x29EDBE718]))
            {
              if (strcasecmp(a1, *MEMORY[0x29EDBE528]))
              {
                if (strcasecmp(a1, *MEMORY[0x29EDBE710]))
                {
                  if (strcasecmp(a1, *MEMORY[0x29EDBE5B0]))
                  {
                    v6 = a1;
                    if (strcasecmp(a1, *MEMORY[0x29EDBE608]))
                    {
                      goto LABEL_16;
                    }

LABEL_34:
                    v10 = *MEMORY[0x29EDCA608];

                    return defaults::tailspin::get(a2, a3);
                  }

LABEL_61:
                  v19 = *MEMORY[0x29EDCA608];

                  return defaults::profile::get(a2, a3);
                }

LABEL_58:
                v18 = *MEMORY[0x29EDCA608];

                return defaults::systemlogs::get(a2, a3);
              }

LABEL_55:
              v17 = *MEMORY[0x29EDCA608];

              return defaults::logfilter::get(a2, a3);
            }

LABEL_52:
            v16 = *MEMORY[0x29EDCA608];

            return defaults::ttr::get(a2, a3);
          }

LABEL_49:
          v15 = *MEMORY[0x29EDCA608];

          return defaults::compression::get(a2, a3);
        }

LABEL_46:
        v14 = *MEMORY[0x29EDCA608];

        return defaults::bbipc::get(a2, a3);
      }

LABEL_40:
      v12 = *MEMORY[0x29EDCA608];

      return defaults::ipc::get(a2, a3);
    }

LABEL_43:
    v13 = *MEMORY[0x29EDCA608];

    return defaults::coredump::get(a2, a3);
  }

  v11 = *MEMORY[0x29EDCA608];

  return defaults::bbtrace::get(a2, a3);
}

BOOL defaults::bbtrace::get(char *a1, std::string::size_type *a2)
{
  v65 = *MEMORY[0x29EDCA608];
  v4 = a1[23];
  if ((v4 & 0x80000000) == 0)
  {
    v5 = strcasecmp(a1, *MEMORY[0x29EDBE6E0]);
    if (v5)
    {
      v6 = strcasecmp(a1, *MEMORY[0x29EDBE798]);
      if (v6)
      {
        v7 = strcasecmp(a1, *MEMORY[0x29EDBEA30]);
        if (v7)
        {
          if (strcasecmp(a1, *MEMORY[0x29EDBE590]) && strcasecmp(a1, *MEMORY[0x29EDBF208]))
          {
            if (!strcasecmp(a1, *MEMORY[0x29EDBE8F8]))
            {
              goto LABEL_128;
            }

            if (strcasecmp(a1, *MEMORY[0x29EDBE880]))
            {
              v8 = strcasecmp(a1, *MEMORY[0x29EDBE6E8]);
              v9 = a1;
              if (v8)
              {
                goto LABEL_10;
              }

LABEL_25:
              v18 = capabilities::trace::defaultHistorySizeMB(v8);
              if (v18 >= 0x7FFFFFFF)
              {
                v19 = 0x7FFFFFFF;
              }

              else
              {
                v19 = v18;
              }

              util::to_str<int>(&v64, v19);
LABEL_83:
              if (*(a2 + 23) < 0)
              {
                operator delete(*a2);
              }

              *a2 = v64;
              goto LABEL_36;
            }
          }

          goto LABEL_32;
        }

        goto LABEL_31;
      }

      goto LABEL_30;
    }

LABEL_29:
    v20 = capabilities::trace::enabledByDefault(v5);
    std::to_string(&v64, v20);
LABEL_33:
    *v63 = v64.__r_.__value_.__l.__size_;
    v23 = v64.__r_.__value_.__r.__words[0];
    *&v63[7] = *(&v64.__r_.__value_.__r.__words[1] + 7);
    v24 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v23;
    a2[1] = *v63;
    *(a2 + 15) = *&v63[7];
    *(a2 + 23) = v24;
    goto LABEL_36;
  }

  v9 = *a1;
  v5 = strcasecmp(*a1, *MEMORY[0x29EDBE6E0]);
  if (!v5)
  {
    goto LABEL_29;
  }

  v6 = strcasecmp(v9, *MEMORY[0x29EDBE798]);
  if (!v6)
  {
LABEL_30:
    v21 = capabilities::trace::supportsHighTPutByDefault(v6);
    std::to_string(&v64, v21);
    goto LABEL_33;
  }

  v7 = strcasecmp(v9, *MEMORY[0x29EDBEA30]);
  if (!v7)
  {
LABEL_31:
    v22 = capabilities::trace::supportsDataLoggingByDefault(v7);
    std::to_string(&v64, v22);
    goto LABEL_33;
  }

  if (!strcasecmp(v9, *MEMORY[0x29EDBE590]) || !strcasecmp(v9, *MEMORY[0x29EDBF208]))
  {
    goto LABEL_32;
  }

  if (!strcasecmp(v9, *MEMORY[0x29EDBE8F8]))
  {
    goto LABEL_128;
  }

  if (!strcasecmp(v9, *MEMORY[0x29EDBE880]))
  {
LABEL_32:
    std::to_string(&v64, 0);
    goto LABEL_33;
  }

  v8 = strcasecmp(v9, *MEMORY[0x29EDBE6E8]);
  if (!v8)
  {
    goto LABEL_25;
  }

LABEL_10:
  v10 = MEMORY[0x29EDBD4C8];
  v11 = *MEMORY[0x29EDBD4C8];
  v12 = strcasecmp(v9, *MEMORY[0x29EDBD4C8]);
  if (!v12)
  {
    v27 = capabilities::radio::maverick(v12);
    if (v27 & 1) != 0 || (capabilities::radio::ice(v27))
    {
      util::to_str<diag::config::DuringAPSleep>(&v64);
      goto LABEL_83;
    }

    LOBYTE(v4) = a1[23];
    v11 = *v10;
  }

  v13 = *a1;
  if ((v4 & 0x80u) == 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = *a1;
  }

  v15 = strcasecmp(v14, v11);
  if (!v15)
  {
    v16 = capabilities::radio::initium(v15);
    if (v16)
    {
      v17 = capabilities::trace::defaultSleepTraceMode(v16);
      util::to_str<unsigned int>(&v64, v17);
      goto LABEL_83;
    }

    LOBYTE(v4) = a1[23];
    v13 = *a1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v28 = a1;
  }

  else
  {
    v28 = v13;
  }

  v29 = strcasecmp(v28, *MEMORY[0x29EDBD4B8]);
  if (!v29)
  {
    if (capabilities::radio::maverick(v29))
    {
      goto LABEL_82;
    }

    LOBYTE(v4) = a1[23];
    v13 = *a1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v30 = a1;
  }

  else
  {
    v30 = v13;
  }

  v31 = strcasecmp(v30, *MEMORY[0x29EDBD4B0]);
  if (!v31)
  {
    if (capabilities::radio::maverick(v31))
    {
      goto LABEL_82;
    }

    LOBYTE(v4) = a1[23];
    v13 = *a1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v32 = a1;
  }

  else
  {
    v32 = v13;
  }

  v33 = strcasecmp(v32, *MEMORY[0x29EDBD4D0]);
  if (!v33)
  {
    if (capabilities::radio::maverick(v33))
    {
      util::to_str<unsigned int>(&v64, 3u);
      goto LABEL_83;
    }

    LOBYTE(v4) = a1[23];
    v13 = *a1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v34 = a1;
  }

  else
  {
    v34 = v13;
  }

  v35 = strcasecmp(v34, *MEMORY[0x29EDBD4D8]);
  if (!v35)
  {
    if (capabilities::radio::maverick(v35))
    {
      util::to_str<diag::config::Recovery>(&v64);
      goto LABEL_83;
    }

    LOBYTE(v4) = a1[23];
  }

  if ((v4 & 0x80) == 0)
  {
    v36 = a1;
    if (strcasecmp(a1, *MEMORY[0x29EDBD4C0]))
    {
      goto LABEL_72;
    }

LABEL_82:
    util::to_str<BOOL>(&v64, 0);
    goto LABEL_83;
  }

  v36 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBD4C0]))
  {
    goto LABEL_82;
  }

LABEL_72:
  v37 = strcasecmp(v36, *MEMORY[0x29EDBF200]);
  if (!v37)
  {
    v38 = capabilities::radio::maverick(v37);
    if (v38)
    {
      goto LABEL_88;
    }

    LOBYTE(v4) = a1[23];
  }

  if ((v4 & 0x80) == 0)
  {
    v39 = strcasecmp(a1, *MEMORY[0x29EDBF418]);
    v40 = a1;
    if (v39)
    {
      goto LABEL_77;
    }

LABEL_87:
    v38 = capabilities::radio::ice(v39);
    if (!v38)
    {
      v42 = "None";
LABEL_92:
      std::string::__assign_external(a2, v42);
LABEL_36:
      result = 1;
      goto LABEL_37;
    }

LABEL_88:
    if (config::hw::watch(v38))
    {
      v42 = "Lite";
    }

    else
    {
      v42 = "Default";
    }

    goto LABEL_92;
  }

  v40 = *a1;
  v39 = strcasecmp(*a1, *MEMORY[0x29EDBF418]);
  if (!v39)
  {
    goto LABEL_87;
  }

LABEL_77:
  v41 = strcasecmp(v40, *MEMORY[0x29EDBD4A8]);
  if (!v41)
  {
    if (capabilities::radio::maverick(v41))
    {
      if (*(a2 + 23) < 0)
      {
        a2[1] = 4;
        a2 = *a2;
      }

      else
      {
        *(a2 + 23) = 4;
      }

      strcpy(a2, "None");
      goto LABEL_36;
    }

    LOBYTE(v4) = a1[23];
  }

  if ((v4 & 0x80u) == 0)
  {
    v43 = a1;
  }

  else
  {
    v43 = *a1;
  }

  v44 = strcasecmp(v43, *MEMORY[0x29EDBEF70]);
  if (!v44)
  {
    if (capabilities::radio::maverick(v44))
    {
      if (*(a2 + 23) < 0)
      {
        a2[1] = 5;
        a2 = *a2;
      }

      else
      {
        *(a2 + 23) = 5;
      }

      strcpy(a2, "Sleep");
      goto LABEL_36;
    }

    LOBYTE(v4) = a1[23];
  }

  if ((v4 & 0x80) == 0)
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBE938]))
    {
      v45 = strcasecmp(a1, *MEMORY[0x29EDBF2E0]);
      if (v45)
      {
        if (!strcasecmp(a1, *MEMORY[0x29EDBF7F0]))
        {
          goto LABEL_82;
        }

        if (strcasecmp(a1, *MEMORY[0x29EDBF7B0]) && strcasecmp(a1, *MEMORY[0x29EDBF7B8]))
        {
          v46 = strcasecmp(a1, *MEMORY[0x29EDBE790]);
          if (v46)
          {
            v47 = strcasecmp(a1, *MEMORY[0x29EDBEDD8]);
            if (v47)
            {
              v48 = strcasecmp(a1, *MEMORY[0x29EDBEF80]);
              if (v48)
              {
                v49 = a1;
                if (strcasecmp(a1, *MEMORY[0x29EDBF410]))
                {
                  goto LABEL_112;
                }

LABEL_127:
                util::to_str<BOOL>(&v64, 1);
                goto LABEL_83;
              }

LABEL_144:
              count = defaults::bbtrace::transport_read_count(v48);
              util::to_str<unsigned int>(&v64, count);
              goto LABEL_83;
            }

LABEL_143:
            size = defaults::bbtrace::transport_read_size(v47);
            util::to_str<unsigned int>(&v64, size);
            goto LABEL_83;
          }

LABEL_142:
          v55 = capabilities::trace::defaultFileSizeBytes(v46);
          util::to_str<unsigned int>(&v64, v55);
          goto LABEL_83;
        }

LABEL_128:
        if (*(a2 + 23) < 0)
        {
          a2[1] = 0;
          a2 = *a2;
        }

        else
        {
          *(a2 + 23) = 0;
        }

        *a2 = 0;
        goto LABEL_36;
      }

LABEL_134:
      v54 = capabilities::trace::defaultMemoryFileMaxCount(v45);
      util::to_str<unsigned int>(&v64, v54);
      goto LABEL_83;
    }

LABEL_132:
    if (*(a2 + 23) < 0)
    {
      a2[1] = 17;
      a2 = *a2;
    }

    else
    {
      *(a2 + 23) = 17;
    }

    strcpy(a2, "/usr/lib/bbmasks/");
    goto LABEL_36;
  }

  v49 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE938]))
  {
    goto LABEL_132;
  }

  v45 = strcasecmp(v49, *MEMORY[0x29EDBF2E0]);
  if (!v45)
  {
    goto LABEL_134;
  }

  if (!strcasecmp(v49, *MEMORY[0x29EDBF7F0]))
  {
    goto LABEL_82;
  }

  if (!strcasecmp(v49, *MEMORY[0x29EDBF7B0]) || !strcasecmp(v49, *MEMORY[0x29EDBF7B8]))
  {
    goto LABEL_128;
  }

  v46 = strcasecmp(v49, *MEMORY[0x29EDBE790]);
  if (!v46)
  {
    goto LABEL_142;
  }

  v47 = strcasecmp(v49, *MEMORY[0x29EDBEDD8]);
  if (!v47)
  {
    goto LABEL_143;
  }

  v48 = strcasecmp(v49, *MEMORY[0x29EDBEF80]);
  if (!v48)
  {
    goto LABEL_144;
  }

  if (!strcasecmp(v49, *MEMORY[0x29EDBF410]))
  {
    goto LABEL_127;
  }

LABEL_112:
  v50 = strcasecmp(v49, *MEMORY[0x29EDBF1F8]);
  if (!v50)
  {
    v51 = capabilities::trace::supportsDataRateObserver(v50);
    if (v51)
    {
      v52 = capabilities::trace::defaultPeakBandwidthMbps(v51);
      if (v52 >= 0xFFFFFFFF)
      {
        v53 = -1;
      }

      else
      {
        v53 = v52;
      }

      util::to_str<unsigned int>(&v64, v53);
      goto LABEL_83;
    }

    LOBYTE(v4) = a1[23];
  }

  if ((v4 & 0x80) != 0)
  {
    v58 = *a1;
    if (strcasecmp(*a1, *MEMORY[0x29EDBFC80]))
    {
      if (strcasecmp(v58, *MEMORY[0x29EDBFC98]))
      {
        if (!strcasecmp(v58, *MEMORY[0x29EDBFC78]))
        {
          goto LABEL_163;
        }

        if (strcasecmp(v58, *MEMORY[0x29EDBFC90]))
        {
          if (strcasecmp(v58, *MEMORY[0x29EDBF2D8]))
          {
            goto LABEL_152;
          }

LABEL_160:
          util::to_str<unsigned int>(&v64, 0x1F4u);
          goto LABEL_83;
        }
      }

LABEL_162:
      util::to_str<trace::LogLevel>(&v64);
      goto LABEL_83;
    }

LABEL_161:
    util::to_str<trace::LogMode>(&v64, 1);
    goto LABEL_83;
  }

  if (!strcasecmp(a1, *MEMORY[0x29EDBFC80]))
  {
    goto LABEL_161;
  }

  if (!strcasecmp(a1, *MEMORY[0x29EDBFC98]))
  {
    goto LABEL_162;
  }

  if (!strcasecmp(a1, *MEMORY[0x29EDBFC78]))
  {
LABEL_163:
    util::to_str<trace::LogMode>(&v64, 2);
    goto LABEL_83;
  }

  if (!strcasecmp(a1, *MEMORY[0x29EDBFC90]))
  {
    goto LABEL_162;
  }

  v58 = a1;
  if (!strcasecmp(a1, *MEMORY[0x29EDBF2D8]))
  {
    goto LABEL_160;
  }

LABEL_152:
  v59 = strcasecmp(v58, *MEMORY[0x29EDBFCA8]);
  if (!v59 && capabilities::trace::supportsErrorHandling(v59))
  {
    util::to_str<int>(&v64, 0);
    goto LABEL_83;
  }

  sGetOsLogContext();
  v60 = qword_2A1399E40;
  result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v61 = *MEMORY[0x29EDBF8A0];
    if (a1[23] >= 0)
    {
      v62 = a1;
    }

    else
    {
      v62 = *a1;
    }

    LODWORD(v64.__r_.__value_.__l.__data_) = 136315394;
    *(v64.__r_.__value_.__r.__words + 4) = v61;
    WORD2(v64.__r_.__value_.__r.__words[1]) = 2080;
    *(&v64.__r_.__value_.__r.__words[1] + 6) = v62;
    _os_log_error_impl(&dword_297288000, v60, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &v64, 0x16u);
    result = 0;
  }

LABEL_37:
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29735CB10(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x29735C328);
    }

    JUMPOUT(0x29735C330);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::coredump::get(std::string::size_type a1, uint64_t a2)
{
  v3 = a1;
  v16 = *MEMORY[0x29EDCA608];
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  v4 = strcasecmp(a1, *MEMORY[0x29EDBE6E0]);
  v5 = v4;
  if (v4)
  {
    if ((atomic_load_explicit(&qword_2A1399E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399E30))
    {
      qword_2A1399E38 = 0;
      qword_2A1399E40 = 0;
      __cxa_guard_release(&qword_2A1399E30);
    }

    if (_MergedGlobals_8 == -1)
    {
      v6 = qword_2A1399E40;
      if (!os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_8, &__block_literal_global_7);
      v6 = qword_2A1399E40;
      if (!os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }
    }

    v7 = *MEMORY[0x29EDBE5F8];
    if (*(v3 + 23) >= 0)
    {
      v8 = v3;
    }

    else
    {
      v8 = *v3;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v7;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v8;
    _os_log_error_impl(&dword_297288000, v6, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &buf, 0x16u);
  }

  else
  {
    v9 = capabilities::trace::allowed(v4);
    std::to_string(&buf, v9);
    *v14 = buf.__r_.__value_.__l.__size_;
    v10 = buf.__r_.__value_.__r.__words[0];
    *&v14[7] = *(&buf.__r_.__value_.__r.__words[1] + 7);
    v11 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v10;
    *(a2 + 8) = *v14;
    *(a2 + 15) = *&v14[7];
    *(a2 + 23) = v11;
  }

LABEL_14:
  result = v5 == 0;
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29735CD4C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x29735CCA4);
    }

    JUMPOUT(0x29735CCACLL);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::ipc::get(char *a1, uint64_t a2)
{
  v23 = *MEMORY[0x29EDCA608];
  if (a1[23] < 0)
  {
    v6 = *a1;
    v4 = strcasecmp(*a1, *MEMORY[0x29EDBE6E0]);
    if (v4)
    {
      v5 = strcasecmp(v6, *MEMORY[0x29EDBE6E8]);
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_9:
      v10 = capabilities::ipc::defaultPCIBinaryTraceHistorySizeMB(v5);
      std::to_string(&v22, v10);
      goto LABEL_13;
    }

LABEL_10:
    v11 = capabilities::ipc::supportsPCI(v4);
    if (v11)
    {
      LODWORD(v11) = capabilities::trace::enabledByDefault(v11);
    }

    std::to_string(&v22, v11);
    goto LABEL_13;
  }

  v4 = strcasecmp(a1, *MEMORY[0x29EDBE6E0]);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = strcasecmp(a1, *MEMORY[0x29EDBE6E8]);
  v6 = a1;
  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_4:
  v7 = strcasecmp(v6, "BufferCount");
  if (!v7)
  {
    v8 = capabilities::ipc::supportsPCI(v7);
    if (v8)
    {
      v9 = capabilities::ipc::defaultPCIBinaryTraceBufferCount(v8);
      std::to_string(&v22, v9);
LABEL_13:
      *v21 = v22.__r_.__value_.__l.__size_;
      v12 = v22.__r_.__value_.__r.__words[0];
      *&v21[7] = *(&v22.__r_.__value_.__r.__words[1] + 7);
      v13 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = v12;
      *(a2 + 8) = *v21;
      *(a2 + 15) = *&v21[7];
      *(a2 + 23) = v13;
      result = 1;
      v15 = *MEMORY[0x29EDCA608];
      return result;
    }
  }

  if ((atomic_load_explicit(&qword_2A1399E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399E30))
  {
    qword_2A1399E38 = 0;
    qword_2A1399E40 = 0;
    __cxa_guard_release(&qword_2A1399E30);
  }

  if (_MergedGlobals_8 == -1)
  {
    v16 = qword_2A1399E40;
    result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
LABEL_19:
      v17 = *MEMORY[0x29EDCA608];
      return result;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_8, &__block_literal_global_7);
    v16 = qword_2A1399E40;
    result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_19;
    }
  }

  v18 = *MEMORY[0x29EDBF8E8];
  if (a1[23] >= 0)
  {
    v19 = a1;
  }

  else
  {
    v19 = *a1;
  }

  LODWORD(v22.__r_.__value_.__l.__data_) = 136315394;
  *(v22.__r_.__value_.__r.__words + 4) = v18;
  WORD2(v22.__r_.__value_.__r.__words[1]) = 2080;
  *(&v22.__r_.__value_.__r.__words[1] + 6) = v19;
  _os_log_error_impl(&dword_297288000, v16, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &v22, 0x16u);
  result = 0;
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29735CFF8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x29735CE8CLL);
    }

    JUMPOUT(0x29735CE94);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::bbipc::get(char *a1, uint64_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if ((a1[23] & 0x80000000) == 0)
  {
    v4 = strcasecmp(a1, *MEMORY[0x29EDBE6E0]);
    if (v4)
    {
      v5 = strcasecmp(a1, *MEMORY[0x29EDBE7A0]);
      v6 = a1;
      if (v5)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }

LABEL_15:
    v13 = capabilities::trace::enabledByDefault(v4);
    std::to_string(&buf, v13);
    goto LABEL_17;
  }

  v6 = *a1;
  v4 = strcasecmp(*a1, *MEMORY[0x29EDBE6E0]);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = strcasecmp(v6, *MEMORY[0x29EDBE7A0]);
  if (!v5)
  {
LABEL_14:
    v12 = capabilities::ipc::defaultLogLevel(v5);
    std::to_string(&buf, v12);
LABEL_17:
    *v18 = buf.__r_.__value_.__l.__size_;
    v15 = buf.__r_.__value_.__r.__words[0];
    *&v18[7] = *(&buf.__r_.__value_.__r.__words[1] + 7);
    v16 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v15;
    *(a2 + 8) = *v18;
    *(a2 + 15) = *&v18[7];
    *(a2 + 23) = v16;
    result = 1;
    goto LABEL_20;
  }

LABEL_4:
  v7 = strcasecmp(v6, *MEMORY[0x29EDBEA38]);
  if (!v7)
  {
    v14 = capabilities::ipc::defaultMHIConfigPayloadSizeBytes(v7);
    std::to_string(&buf, v14);
    goto LABEL_17;
  }

  if ((atomic_load_explicit(&qword_2A1399E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399E30))
  {
    qword_2A1399E38 = 0;
    qword_2A1399E40 = 0;
    __cxa_guard_release(&qword_2A1399E30);
  }

  if (_MergedGlobals_8 == -1)
  {
    v8 = qword_2A1399E40;
    result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_20;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_8, &__block_literal_global_7);
    v8 = qword_2A1399E40;
    result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_20;
    }
  }

  v10 = *MEMORY[0x29EDBE7A8];
  if (a1[23] >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
  *(buf.__r_.__value_.__r.__words + 4) = v10;
  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
  *(&buf.__r_.__value_.__r.__words[1] + 6) = v11;
  _os_log_error_impl(&dword_297288000, v8, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &buf, 0x16u);
  result = 0;
LABEL_20:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29735D28C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x29735D1E8);
    }

    JUMPOUT(0x29735D1F0);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::compression::get(char *a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if ((a1[23] & 0x80000000) == 0)
  {
    v4 = a1;
    if (strcasecmp(a1, *MEMORY[0x29EDBD4A0]))
    {
      goto LABEL_3;
    }

LABEL_12:
    IsInternalBuild = TelephonyUtilIsInternalBuild();
    if ((IsInternalBuild & 1) != 0 || (IsInternalBuild = TelephonyUtilIsCarrierBuild(), IsInternalBuild))
    {
      CompressionMode = capabilities::trace::getCompressionMode(IsInternalBuild);
    }

    else
    {
      CompressionMode = 2;
    }

    std::to_string(&v12, CompressionMode);
    goto LABEL_18;
  }

  v4 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBD4A0]))
  {
    goto LABEL_12;
  }

LABEL_3:
  if (!strcasecmp(v4, *MEMORY[0x29EDBD340]))
  {
    std::to_string(&v12, 0);
LABEL_18:
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v12;
    result = 1;
    goto LABEL_21;
  }

  if ((atomic_load_explicit(&qword_2A1399E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399E30))
  {
    qword_2A1399E38 = 0;
    qword_2A1399E40 = 0;
    __cxa_guard_release(&qword_2A1399E30);
  }

  if (_MergedGlobals_8 == -1)
  {
    v5 = qword_2A1399E40;
    result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_21;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_8, &__block_literal_global_7);
    v5 = qword_2A1399E40;
    result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_21;
    }
  }

  v7 = *MEMORY[0x29EDBE7B0];
  if (a1[23] >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  LODWORD(v12.__r_.__value_.__l.__data_) = 136315394;
  *(v12.__r_.__value_.__r.__words + 4) = v7;
  WORD2(v12.__r_.__value_.__r.__words[1]) = 2080;
  *(&v12.__r_.__value_.__r.__words[1] + 6) = v8;
  _os_log_error_impl(&dword_297288000, v5, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &v12, 0x16u);
  result = 0;
LABEL_21:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL defaults::ttr::get(char *a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if ((a1[23] & 0x80000000) == 0)
  {
    v4 = a1;
    if (strcasecmp(a1, *MEMORY[0x29EDBE590]))
    {
      goto LABEL_3;
    }

LABEL_12:
    IsInternalBuild = TelephonyUtilIsInternalBuild();
    if ((IsInternalBuild & 1) != 0 || (IsInternalBuild = TelephonyUtilIsCarrierBuild(), IsInternalBuild))
    {
      if (capabilities::radio::initium(IsInternalBuild))
      {
        LODWORD(IsInternalBuild) = 3;
      }

      else
      {
        LODWORD(IsInternalBuild) = 1;
      }
    }

    std::to_string(&buf, IsInternalBuild);
    goto LABEL_19;
  }

  v4 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE590]))
  {
    goto LABEL_12;
  }

LABEL_3:
  if (!strcasecmp(v4, *MEMORY[0x29EDBF2D0]))
  {
    std::to_string(&buf, 43200);
LABEL_19:
    *v13 = buf.__r_.__value_.__l.__size_;
    v10 = buf.__r_.__value_.__r.__words[0];
    *&v13[7] = *(&buf.__r_.__value_.__r.__words[1] + 7);
    v11 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v10;
    *(a2 + 8) = *v13;
    *(a2 + 15) = *&v13[7];
    *(a2 + 23) = v11;
    result = 1;
    goto LABEL_22;
  }

  if ((atomic_load_explicit(&qword_2A1399E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399E30))
  {
    qword_2A1399E38 = 0;
    qword_2A1399E40 = 0;
    __cxa_guard_release(&qword_2A1399E30);
  }

  if (_MergedGlobals_8 == -1)
  {
    v5 = qword_2A1399E40;
    result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_22;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_8, &__block_literal_global_7);
    v5 = qword_2A1399E40;
    result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_22;
    }
  }

  v7 = *MEMORY[0x29EDBE718];
  if (a1[23] >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
  *(buf.__r_.__value_.__r.__words + 4) = v7;
  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
  *(&buf.__r_.__value_.__r.__words[1] + 6) = v8;
  _os_log_error_impl(&dword_297288000, v5, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &buf, 0x16u);
  result = 0;
LABEL_22:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29735D6F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x29735D650);
    }

    JUMPOUT(0x29735D658);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::logfilter::get(char *a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((a1[23] & 0x80000000) == 0)
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBEB40]))
    {
      v4 = a1;
      if (strcasecmp(a1, *MEMORY[0x29EDBEDE8]))
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }

LABEL_15:
    std::to_string(&buf, 512);
    goto LABEL_17;
  }

  v4 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBEB40]))
  {
    goto LABEL_15;
  }

  if (!strcasecmp(v4, *MEMORY[0x29EDBEDE8]))
  {
LABEL_14:
    std::to_string(&buf, -1);
LABEL_17:
    *v14 = buf.__r_.__value_.__l.__size_;
    v11 = buf.__r_.__value_.__r.__words[0];
    *&v14[7] = *(&buf.__r_.__value_.__r.__words[1] + 7);
    v12 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v11;
    *(a2 + 8) = *v14;
    *(a2 + 15) = *&v14[7];
    *(a2 + 23) = v12;
    result = 1;
    goto LABEL_20;
  }

LABEL_4:
  v5 = strcasecmp(v4, *MEMORY[0x29EDBF810]);
  if (!v5)
  {
    v10 = capabilities::trace::supportsDuplicateSignatureDetection(v5);
    std::to_string(&buf, v10);
    goto LABEL_17;
  }

  if ((atomic_load_explicit(&qword_2A1399E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399E30))
  {
    qword_2A1399E38 = 0;
    qword_2A1399E40 = 0;
    __cxa_guard_release(&qword_2A1399E30);
  }

  if (_MergedGlobals_8 == -1)
  {
    v6 = qword_2A1399E40;
    result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_20;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_8, &__block_literal_global_7);
    v6 = qword_2A1399E40;
    result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_20;
    }
  }

  v8 = *MEMORY[0x29EDBE528];
  if (a1[23] >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
  *(buf.__r_.__value_.__r.__words + 4) = v8;
  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
  *(&buf.__r_.__value_.__r.__words[1] + 6) = v9;
  _os_log_error_impl(&dword_297288000, v6, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &buf, 0x16u);
  result = 0;
LABEL_20:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29735D978(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x29735D8D4);
    }

    JUMPOUT(0x29735D8DCLL);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::systemlogs::get(char *a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if ((a1[23] & 0x80000000) == 0)
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBE590]))
    {
      v4 = strcasecmp(a1, *MEMORY[0x29EDBE6E8]);
      v5 = a1;
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_14:
      v10 = capabilities::abs::defaultSystemLogsHistory(v4);
      std::to_string(&buf, v10);
LABEL_20:
      *v15 = buf.__r_.__value_.__l.__size_;
      v12 = buf.__r_.__value_.__r.__words[0];
      *&v15[7] = *(&buf.__r_.__value_.__r.__words[1] + 7);
      v13 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = v12;
      *(a2 + 8) = *v15;
      *(a2 + 15) = *&v15[7];
      *(a2 + 23) = v13;
      result = 1;
      goto LABEL_23;
    }

LABEL_15:
    if (TelephonyUtilIsInternalBuild())
    {
      IsCarrierBuild = 1;
    }

    else
    {
      IsCarrierBuild = TelephonyUtilIsCarrierBuild();
    }

    std::to_string(&buf, IsCarrierBuild);
    goto LABEL_20;
  }

  v5 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE590]))
  {
    goto LABEL_15;
  }

  v4 = strcasecmp(v5, *MEMORY[0x29EDBE6E8]);
  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (!strcasecmp(v5, *MEMORY[0x29EDBF0A8]))
  {
    std::to_string(&buf, 1);
    goto LABEL_20;
  }

  if ((atomic_load_explicit(&qword_2A1399E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399E30))
  {
    qword_2A1399E38 = 0;
    qword_2A1399E40 = 0;
    __cxa_guard_release(&qword_2A1399E30);
  }

  if (_MergedGlobals_8 == -1)
  {
    v6 = qword_2A1399E40;
    result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_23;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_8, &__block_literal_global_7);
    v6 = qword_2A1399E40;
    result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_23;
    }
  }

  v8 = *MEMORY[0x29EDBE710];
  if (a1[23] >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
  *(buf.__r_.__value_.__r.__words + 4) = v8;
  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
  *(&buf.__r_.__value_.__r.__words[1] + 6) = v9;
  _os_log_error_impl(&dword_297288000, v6, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &buf, 0x16u);
  result = 0;
LABEL_23:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29735DC1C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x29735DB78);
    }

    JUMPOUT(0x29735DB80);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::profile::get(char *a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a1[23] < 0)
  {
    v4 = *a1;
    if (!strcasecmp(*a1, *MEMORY[0x29EDBE4C8]))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = a1;
    if (!strcasecmp(a1, *MEMORY[0x29EDBE4C8]))
    {
LABEL_12:
      std::to_string(&buf, 0);
      *v12 = buf.__r_.__value_.__l.__size_;
      v9 = buf.__r_.__value_.__r.__words[0];
      *&v12[7] = *(&buf.__r_.__value_.__r.__words[1] + 7);
      v10 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = v9;
      *(a2 + 8) = *v12;
      *(a2 + 15) = *&v12[7];
      *(a2 + 23) = v10;
      result = 1;
      goto LABEL_15;
    }
  }

  if (!strcasecmp(v4, *MEMORY[0x29EDBF7D0]))
  {
    goto LABEL_12;
  }

  if ((atomic_load_explicit(&qword_2A1399E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399E30))
  {
    qword_2A1399E38 = 0;
    qword_2A1399E40 = 0;
    __cxa_guard_release(&qword_2A1399E30);
  }

  if (_MergedGlobals_8 == -1)
  {
    v5 = qword_2A1399E40;
    result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_15;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_8, &__block_literal_global_7);
    v5 = qword_2A1399E40;
    result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_15;
    }
  }

  v7 = *MEMORY[0x29EDBE5B0];
  if (a1[23] >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
  *(buf.__r_.__value_.__r.__words + 4) = v7;
  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
  *(&buf.__r_.__value_.__r.__words[1] + 6) = v8;
  _os_log_error_impl(&dword_297288000, v5, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &buf, 0x16u);
  result = 0;
LABEL_15:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29735DE6C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x29735DDC8);
    }

    JUMPOUT(0x29735DDD0);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::tailspin::get(std::string::size_type a1, uint64_t a2)
{
  v3 = a1;
  v15 = *MEMORY[0x29EDCA608];
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  v4 = strcasecmp(a1, *MEMORY[0x29EDBE4C8]);
  if (v4)
  {
    if ((atomic_load_explicit(&qword_2A1399E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399E30))
    {
      qword_2A1399E38 = 0;
      qword_2A1399E40 = 0;
      __cxa_guard_release(&qword_2A1399E30);
    }

    if (_MergedGlobals_8 == -1)
    {
      v5 = qword_2A1399E40;
      if (!os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_8, &__block_literal_global_7);
      v5 = qword_2A1399E40;
      if (!os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }
    }

    v6 = *MEMORY[0x29EDBE608];
    if (*(v3 + 23) >= 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = *v3;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v6;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v7;
    _os_log_error_impl(&dword_297288000, v5, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &buf, 0x16u);
  }

  else
  {
    IsInternalBuild = TelephonyUtilIsInternalBuild();
    std::to_string(&buf, IsInternalBuild);
    *v13 = buf.__r_.__value_.__l.__size_;
    v9 = buf.__r_.__value_.__r.__words[0];
    *&v13[7] = *(&buf.__r_.__value_.__r.__words[1] + 7);
    v10 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v9;
    *(a2 + 8) = *v13;
    *(a2 + 15) = *&v13[7];
    *(a2 + 23) = v10;
  }

LABEL_14:
  result = v4 == 0;
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29735E068(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x29735DFC0);
    }

    JUMPOUT(0x29735DFC8);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::tracesettings::get(char *a1, std::string *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if ((a1[23] & 0x80000000) == 0)
  {
    if (!strcasecmp(a1, *MEMORY[0x29EDBEF68]))
    {
LABEL_19:
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        a2->__r_.__value_.__l.__size_ = 1;
        a2 = a2->__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&a2->__r_.__value_.__s + 23) = 1;
      }

      LOWORD(a2->__r_.__value_.__l.__data_) = 48;
      goto LABEL_36;
    }

    if (strcasecmp(a1, *MEMORY[0x29EDBF098]))
    {
      v4 = a1;
      if (strcasecmp(a1, *MEMORY[0x29EDBEA40]))
      {
        goto LABEL_5;
      }

LABEL_16:
      if ((TelephonyUtilIsInternalBuild() & 1) != 0 || TelephonyUtilIsCarrierBuild())
      {
        v9 = "1";
      }

      else
      {
        v9 = "3";
      }

      std::string::__assign_external(a2, v9);
      goto LABEL_36;
    }

LABEL_21:
    v10 = abm::helper::asString();
    v11 = strlen(v10);
    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v12 = v11;
    if (v11 >= 0x17)
    {
      if ((v11 | 7) == 0x17)
      {
        v14 = 25;
      }

      else
      {
        v14 = (v11 | 7) + 1;
      }

      v13 = operator new(v14);
      *&v16[8] = v12;
      *&v16[16] = v14 | 0x8000000000000000;
      *v16 = v13;
    }

    else
    {
      v16[23] = v11;
      v13 = v16;
      if (!v11)
      {
        v16[0] = 0;
        if ((SHIBYTE(a2->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_25:
          *&a2->__r_.__value_.__l.__data_ = *v16;
          a2->__r_.__value_.__r.__words[2] = *&v16[16];
LABEL_36:
          result = 1;
          goto LABEL_37;
        }

LABEL_33:
        operator delete(a2->__r_.__value_.__l.__data_);
        goto LABEL_25;
      }
    }

    memmove(v13, v10, v12);
    v13[v12] = 0;
    if ((SHIBYTE(a2->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

  v4 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBEF68]))
  {
    goto LABEL_19;
  }

  if (!strcasecmp(v4, *MEMORY[0x29EDBF098]))
  {
    goto LABEL_21;
  }

  if (!strcasecmp(v4, *MEMORY[0x29EDBEA40]))
  {
    goto LABEL_16;
  }

LABEL_5:
  if (!strcasecmp(v4, *MEMORY[0x29EDBEDD0]))
  {
    goto LABEL_19;
  }

  if ((atomic_load_explicit(&qword_2A1399E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399E30))
  {
    qword_2A1399E38 = 0;
    qword_2A1399E40 = 0;
    __cxa_guard_release(&qword_2A1399E30);
  }

  if (_MergedGlobals_8 == -1)
  {
    v5 = qword_2A1399E40;
    result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_37;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_8, &__block_literal_global_7);
    v5 = qword_2A1399E40;
    result = os_log_type_enabled(qword_2A1399E40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_37;
    }
  }

  v7 = *MEMORY[0x29EDBE600];
  if (a1[23] >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  *v16 = 136315394;
  *&v16[4] = v7;
  *&v16[12] = 2080;
  *&v16[14] = v8;
  _os_log_error_impl(&dword_297288000, v5, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", v16, 0x16u);
  result = 0;
LABEL_37:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

double util::to_str<BOOL>(std::string *a1, int __val)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v4, __val);
  result = *&v4.__r_.__value_.__l.__data_;
  *a1 = v4;
  return result;
}

void sub_29735E470(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29735E460);
}

void sub_29735E47C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double util::to_str<int>(std::string *a1, int __val)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v4, __val);
  result = *&v4.__r_.__value_.__l.__data_;
  *a1 = v4;
  return result;
}

void sub_29735E4F8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29735E4E8);
}

void sub_29735E504(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t defaults::bbtrace::history(defaults::bbtrace *this)
{
  result = capabilities::trace::defaultHistorySizeMB(this);
  if (result >= 0x7FFFFFFF)
  {
    return 0x7FFFFFFFLL;
  }

  return result;
}

double util::to_str<diag::config::DuringAPSleep>(std::string *a1)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v3, 0);
  result = *&v3.__r_.__value_.__l.__data_;
  *a1 = v3;
  return result;
}

void sub_29735E598(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29735E588);
}

void sub_29735E5A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double util::to_str<unsigned int>(std::string *a1, unsigned int __val)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v4, __val);
  result = *&v4.__r_.__value_.__l.__data_;
  *a1 = v4;
  return result;
}

void sub_29735E614(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29735E604);
}

void sub_29735E620(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double util::to_str<diag::config::Recovery>(std::string *a1)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v3, 0);
  result = *&v3.__r_.__value_.__l.__data_;
  *a1 = v3;
  return result;
}

void sub_29735E6A4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29735E694);
}

void sub_29735E6B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const char *defaults::bbtrace::primary_dmc(defaults::bbtrace *this)
{
  if (config::hw::watch(this))
  {
    return "Lite";
  }

  else
  {
    return "Default";
  }
}

const char *defaults::bbtrace::secondary_dmc(defaults::bbtrace *this)
{
  v1 = capabilities::radio::ice(this);
  if (!v1)
  {
    return "None";
  }

  if (config::hw::watch(v1))
  {
    return "Lite";
  }

  return "Default";
}

uint64_t defaults::bbtrace::transport_read_size(defaults::bbtrace *this)
{
  v1 = capabilities::radio::vendor(this);
  if ((v1 - 1) > 3)
  {
    v2 = 25;
  }

  else
  {
    v2 = dword_297433540[v1 - 1];
  }

  v3 = capabilities::radio::dal(v1);
  if (v3)
  {
    v4 = 1024;
  }

  else
  {
    v4 = 0x4000;
  }

  shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v3);
  if (shouldUseMinBasebandTransportIOReadSize)
  {
    return v4;
  }

  if (v2 == 17)
  {
    return 0x80000;
  }

  if (v2 == 21 || v2 == 20)
  {
    return 61440;
  }

  capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
  if ((v2 - 19) > 5)
  {
    return 0x8000;
  }

  else
  {
    return dword_297433550[v2 - 19];
  }
}

uint64_t defaults::bbtrace::transport_read_count(defaults::bbtrace *this)
{
  v1 = capabilities::radio::vendor(this);
  if ((v1 - 1) > 3)
  {
    v2 = 25;
    shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadCount(v1);
    if (shouldUseMinBasebandTransportIOReadCount)
    {
      return 4;
    }
  }

  else
  {
    v2 = dword_297433540[v1 - 1];
    shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadCount(v1);
    if (shouldUseMinBasebandTransportIOReadCount)
    {
      return 4;
    }
  }

  switch(v2)
  {
    case 17:
      return 16;
    case 21:
      return 15;
    case 20:
      return 63;
  }

  capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
  if (v2 <= 18)
  {
    if (v2 != 2)
    {
      if (v2 == 15 || v2 == 16)
      {
        return 36;
      }

      return 4;
    }

    return 16;
  }

  result = 31;
  if (v2 > 22)
  {
    if (v2 == 23)
    {
      return result;
    }

    if (v2 == 24)
    {
      return 86;
    }

    return 4;
  }

  if (v2 != 19)
  {
    return 15;
  }

  return result;
}

unint64_t defaults::bbtrace::bandwidth_mbps(defaults::bbtrace *this)
{
  result = capabilities::trace::defaultPeakBandwidthMbps(this);
  if (result >= 0xFFFFFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

double util::to_str<trace::LogMode>(std::string *a1, int __val)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v4, __val);
  result = *&v4.__r_.__value_.__l.__data_;
  *a1 = v4;
  return result;
}

void sub_29735E9F8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29735E9E8);
}

void sub_29735EA04(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double util::to_str<trace::LogLevel>(std::string *a1)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v3, 3);
  result = *&v3.__r_.__value_.__l.__data_;
  *a1 = v3;
  return result;
}

void sub_29735EA6C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29735EA5CLL);
}

void sub_29735EA78(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t defaults::bbtrace::high_water_mark(defaults::bbtrace *this)
{
  if (capabilities::radio::ice(this))
  {
    return 80;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t defaults::bbtrace::low_water_mark(defaults::bbtrace *this)
{
  if (capabilities::radio::ice(this))
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t defaults::bbtrace::min_file_size(defaults::bbtrace *this)
{
  v1 = capabilities::radio::vendor(this);
  if ((v1 - 1) > 3)
  {
    v2 = 25;
  }

  else
  {
    v2 = dword_297433540[v1 - 1];
  }

  v3 = capabilities::radio::dal(v1);
  if (v3)
  {
    v4 = 1024;
  }

  else
  {
    v4 = 0x4000;
  }

  shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v3);
  if (shouldUseMinBasebandTransportIOReadSize)
  {
    return v4;
  }

  if (v2 == 17)
  {
    return 0x80000;
  }

  if (v2 == 21 || v2 == 20)
  {
    return 61440;
  }

  capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
  if ((v2 - 19) > 5)
  {
    return 0x8000;
  }

  else
  {
    return dword_297433550[v2 - 19];
  }
}

capabilities::trace *defaults::ipc::enabled(defaults::ipc *this)
{
  result = capabilities::ipc::supportsPCI(this);
  if (result)
  {

    return capabilities::trace::enabledByDefault(result);
  }

  return result;
}

uint64_t defaults::compression::mode(defaults::compression *this)
{
  IsInternalBuild = TelephonyUtilIsInternalBuild();
  if ((IsInternalBuild & 1) == 0)
  {
    IsInternalBuild = TelephonyUtilIsCarrierBuild();
    if (!IsInternalBuild)
    {
      return 2;
    }
  }

  return capabilities::trace::getCompressionMode(IsInternalBuild);
}

uint64_t defaults::ttr::mode(defaults::ttr *this)
{
  result = TelephonyUtilIsInternalBuild();
  if ((result & 1) != 0 || (result = TelephonyUtilIsCarrierBuild(), result))
  {
    if (capabilities::radio::initium(result))
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t defaults::ttr::supported(defaults::ttr *this)
{
  if (TelephonyUtilIsInternalBuild())
  {
    return 1;
  }

  return TelephonyUtilIsCarrierBuild();
}

uint64_t defaults::systemlogs::mode(defaults::systemlogs *this)
{
  if (TelephonyUtilIsInternalBuild())
  {
    return 1;
  }

  else
  {
    return TelephonyUtilIsCarrierBuild();
  }
}

unint64_t defaults::tracesettings::config@<X0>(void *a1@<X8>)
{
  v3 = abm::helper::asString();
  result = strlen(v3);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  if (result >= 0x17)
  {
    if ((result | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (result | 7) + 1;
    }

    v7 = operator new(v6);
    a1[1] = v5;
    a1[2] = v6 | 0x8000000000000000;
    *a1 = v7;
    a1 = v7;
  }

  else
  {
    *(a1 + 23) = result;
    if (!result)
    {
      *a1 = 0;
      return result;
    }
  }

  result = memmove(a1, v3, v5);
  *(a1 + v5) = 0;
  return result;
}

void ___ZL16sGetOsLogContextv_block_invoke_4()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "prop.default");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

void *ABMServerRegistryBuilder::create@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x28uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A1E3A940;
  v6 = *a1;
  v5 = a1[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  result[3] = v6;
  result[4] = v5;
  *a2 = result + 3;
  a2[1] = result;
  return result;
}

__n128 ABMServerRegistryBuilder::ABMServerRegistryBuilder(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

{
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

void ABMServerRegistryBuilder::~ABMServerRegistryBuilder(ABMServerRegistryBuilder *this)
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

void ABMServerRegistryBuilder::setupAdaptiveTimerService(uint64_t a1, Registry **a2)
{
  RegistryModel = Registry::getRegistryModel(*a2);
  v4 = *RegistryModel;
  if (!*(*RegistryModel + 64))
  {
    (*(**a1 + 32))(&v8);
    v5 = v8;
    v8 = 0uLL;
    v6 = *(v4 + 72);
    *(v4 + 64) = v5;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v7 = *(&v8 + 1);
    if (*(&v8 + 1))
    {
      if (!atomic_fetch_add((*(&v8 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void ABMServerRegistryBuilder::setupQMIServer(uint64_t a1, Registry **a2, uint64_t *a3)
{
  RegistryModel = Registry::getRegistryModel(*a2);
  v6 = *RegistryModel;
  if (!**RegistryModel)
  {
    v7 = *a3;
    if (*a3)
    {
      v8 = a3[1];
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = v6[1];
      *v6 = v7;
      v6[1] = v8;
      if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);

        std::__shared_weak_count::__release_weak(v9);
      }
    }

    else
    {
      (*(**a1 + 8))(&v13);
      v10 = v13;
      v13 = 0uLL;
      v11 = v6[1];
      *v6 = v10;
      if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }

      v12 = *(&v13 + 1);
      if (*(&v13 + 1) && !atomic_fetch_add((*(&v13 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }
    }
  }
}

void ABMServerRegistryBuilder::setupRouterServer(uint64_t a1, Registry **a2, uint64_t *a3)
{
  RegistryModel = Registry::getRegistryModel(*a2);
  v6 = *RegistryModel;
  if (!*(*RegistryModel + 16))
  {
    v7 = *a3;
    if (*a3)
    {
      v8 = a3[1];
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = *(v6 + 24);
      *(v6 + 16) = v7;
      *(v6 + 24) = v8;
      if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);

        std::__shared_weak_count::__release_weak(v9);
      }
    }

    else
    {
      (*(**a1 + 16))(&v13);
      v10 = v13;
      v13 = 0uLL;
      v11 = *(v6 + 24);
      *(v6 + 16) = v10;
      if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }

      v12 = *(&v13 + 1);
      if (*(&v13 + 1) && !atomic_fetch_add((*(&v13 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }
    }
  }
}

void std::__shared_ptr_emplace<ABMServerRegistryBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E3A940;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<ABMServerRegistryBuilder>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void CMHandDetectionDelegate::create(NSObject **a1@<X0>, NSObject **a2@<X1>, void *a3@<X8>)
{
  pthread_mutex_lock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  v6 = unk_2A1399880;
  if (!unk_2A1399880)
  {
    v7 = operator new(1uLL);
    v8 = operator new(0x20uLL);
    *v8 = &unk_2A1E3EA18;
    v8[1] = 0;
    v8[2] = 0;
    v8[3] = v7;
    v9 = off_2A1399888;
    unk_2A1399880 = v7;
    off_2A1399888 = v8;
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v6 = unk_2A1399880;
  }

  v10 = off_2A1399888;
  v17[0] = v6;
  v17[1] = off_2A1399888;
  if (off_2A1399888)
  {
    atomic_fetch_add_explicit(off_2A1399888 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  isCMHandDetectionSupported = Capabilities::isCMHandDetectionSupported(v6);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v16 = isCMHandDetectionSupported;
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (v16)
    {
      goto LABEL_11;
    }

LABEL_21:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  if ((isCMHandDetectionSupported & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v12 = operator new(0x28uLL);
  v12[1] = 0;
  v12[2] = 0;
  *v12 = &unk_2A1E3AA10;
  v13 = v12 + 3;
  v14 = *a1;
  v17[0] = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  v15 = *a2;
  v18 = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  CMHandDetectionDelegate::CMHandDetectionDelegate(v13, v17, &v18);
  if (v15)
  {
    dispatch_release(v15);
  }

  if (v14)
  {
    dispatch_release(v14);
  }

  *a3 = v13;
  a3[1] = v12;
}

void sub_29735F8AC(_Unwind_Exception *a1)
{
  operator delete(v1);
  pthread_mutex_unlock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  _Unwind_Resume(a1);
}

void sub_29735F8D8(_Unwind_Exception *a1)
{
  if (v1)
  {
    dispatch_release(v1);
    if (!v2)
    {
LABEL_3:
      std::__shared_weak_count::~__shared_weak_count(v3);
      operator delete(v5);
      _Unwind_Resume(a1);
    }
  }

  else if (!v2)
  {
    goto LABEL_3;
  }

  dispatch_release(v2);
  std::__shared_weak_count::~__shared_weak_count(v3);
  operator delete(v6);
  _Unwind_Resume(a1);
}

void sub_29735F920(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *CMHandDetectionDelegate::CMHandDetectionDelegate(void *a1, dispatch_object_t *a2, NSObject **a3)
{
  v5 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  v6 = *a3;
  if (v6)
  {
    dispatch_retain(v6);
  }

  *a1 = 0;
  a1[1] = 0;
  if ([MEMORY[0x29EDB93A8] isCallHandednessAvailable])
  {
    v7 = operator new(0x40uLL);
    if (v5)
    {
      dispatch_retain(v5);
    }

    if (v6)
    {
      dispatch_retain(v6);
    }

    *v7 = 0;
    v7[1] = 0;
    v7[2] = v5;
    if (v5)
    {
      dispatch_retain(v5);
    }

    v7[3] = v6;
    if (v6)
    {
      dispatch_retain(v6);
    }

    v7[4] = 0;
    v7[6] = 0;
    *(v7 + 56) = 0;
    v7[4] = objc_alloc_init(MEMORY[0x29EDB93A8]);
    v8 = operator new(0x20uLL);
    v9 = v8;
    v8[2] = 0;
    v8[1] = 0;
    *v8 = &unk_2A1E3A990;
    v8[3] = v7;
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v8 + 2, 1uLL, memory_order_relaxed);
    *v7 = v7;
    v7[1] = v8;
    if (!atomic_fetch_add(v8 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v8 + 16))(v8);
      std::__shared_weak_count::__release_weak(v9);
    }

    *a1 = v7;
    a1[1] = v9;
    if (v6)
    {
      dispatch_release(v6);
    }

    if (v5)
    {
      dispatch_release(v5);
    }
  }

  if (v6)
  {
    dispatch_release(v6);
  }

  if (v5)
  {
    dispatch_release(v5);
  }

  return a1;
}

void sub_29735FAC0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<CMHandDetectionHandler> ctu::SharedSynchronizable<CMHandDetectionHandler>::make_shared_ptr<CMHandDetectionHandler>(CMHandDetectionHandler*)::{lambda(CMHandDetectionHandler*)#1}::operator() const(CMHandDetectionHandler*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void sub_29735FAE8(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  if (v3)
  {
    dispatch_release(v3);
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  dispatch_release(v1);
LABEL_3:
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v2);
  if (v3)
  {
    dispatch_release(v3);
    if (!v1)
    {
LABEL_5:
      _Unwind_Resume(a1);
    }
  }

  else if (!v1)
  {
    goto LABEL_5;
  }

  dispatch_release(v1);
  _Unwind_Resume(a1);
}

void CMHandDetectionDelegate::~CMHandDetectionDelegate(CMHandDetectionDelegate *this)
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

uint64_t CMHandDetectionDelegate::isSupported(CMHandDetectionDelegate *this)
{
  if ((atomic_load_explicit(&qword_2A1399E58, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_2A1399E58))
  {
    return _MergedGlobals_9;
  }

  pthread_mutex_lock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  v2 = unk_2A1399880;
  if (!unk_2A1399880)
  {
    Capabilities::create_default_global(&v6);
    std::shared_ptr<Capabilities>::operator=[abi:ne200100](&v6);
    std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&v6);
    v2 = unk_2A1399880;
  }

  v4 = v2;
  v5 = off_2A1399888;
  if (off_2A1399888)
  {
    atomic_fetch_add_explicit(off_2A1399888 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  if (Capabilities::isCMHandDetectionSupported(v2))
  {
    v3 = [MEMORY[0x29EDB93A8] isCallHandednessAvailable];
  }

  else
  {
    v3 = 0;
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&v4);
  _MergedGlobals_9 = v3;
  __cxa_guard_release(&qword_2A1399E58);
  return _MergedGlobals_9;
}

void sub_29735FD8C(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  __cxa_guard_abort(&qword_2A1399E58);
  _Unwind_Resume(a1);
}

void CMHandDetectionDelegate::registerCallback(uint64_t **a1, const void **a2)
{
  v2 = *a1;
  if (!*a2)
  {
    v4 = 0;
    v7 = *a1;
LABEL_6:
    v5 = 1;
    aBlock = 0;
    ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>(v2, &v7);
    v6 = aBlock;
    if (!aBlock)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = _Block_copy(*a2);
  v4 = v3;
  v7 = v2;
  if (!v3)
  {
    goto LABEL_6;
  }

  v5 = 0;
  aBlock = _Block_copy(v3);
  ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>(v2, &v7);
  v6 = aBlock;
  if (aBlock)
  {
LABEL_7:
    _Block_release(v6);
  }

LABEL_8:
  if ((v5 & 1) == 0)
  {
    _Block_release(v4);
  }
}

const char *CMHandDetectionDelegate::toString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "Unknown Hand Detection";
  }

  else
  {
    return off_29EE68148[a1];
  }
}

uint64_t ctu::PthreadMutexGuardPolicy<Capabilities>::~PthreadMutexGuardPolicy(uint64_t a1)
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

void std::__shared_ptr_pointer<CMHandDetectionHandler *,std::shared_ptr<CMHandDetectionHandler> ctu::SharedSynchronizable<CMHandDetectionHandler>::make_shared_ptr<CMHandDetectionHandler>(CMHandDetectionHandler*)::{lambda(CMHandDetectionHandler *)#1},std::allocator<CMHandDetectionHandler>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<CMHandDetectionHandler *,std::shared_ptr<CMHandDetectionHandler> ctu::SharedSynchronizable<CMHandDetectionHandler>::make_shared_ptr<CMHandDetectionHandler>(CMHandDetectionHandler*)::{lambda(CMHandDetectionHandler *)#1},std::allocator<CMHandDetectionHandler>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI22CMHandDetectionHandlerE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI22CMHandDetectionHandlerE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI22CMHandDetectionHandlerE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI22CMHandDetectionHandlerE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<CMHandDetectionHandler> ctu::SharedSynchronizable<CMHandDetectionHandler>::make_shared_ptr<CMHandDetectionHandler>(CMHandDetectionHandler*)::{lambda(CMHandDetectionHandler*)#1}::operator() const(CMHandDetectionHandler*)::{lambda(void *)#1}::__invoke(void *__p)
{
  if (__p)
  {
    v2 = __p[6];
    if (v2)
    {
      _Block_release(v2);
    }

    v3 = __p[3];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = __p[2];
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = __p[1];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(__p);
  }
}

void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::start(void)::{lambda(void)#1}>(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(8uLL);
  *v8 = *a2;
  v9 = a1[2];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::start(void)::{lambda(void)#1}>(CMHandDetectionHandler::start(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CMHandDetectionHandler::start(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<CMHandDetectionHandler::start(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::start(void)::{lambda(void)#1}>(CMHandDetectionHandler::start(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CMHandDetectionHandler::start(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<CMHandDetectionHandler::start(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 32);
  if (v4 && (*(v3 + 56) & 1) == 0)
  {
    [v4 startCallHandednessUpdates];
    *(v3 + 56) = 1;
  }

  operator delete(v2);
  v5 = a1[2];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_297360308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::stop(void)::{lambda(void)#1}>(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(8uLL);
  *v8 = *a2;
  v9 = a1[2];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::stop(void)::{lambda(void)#1}>(CMHandDetectionHandler::stop(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CMHandDetectionHandler::stop(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<CMHandDetectionHandler::stop(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::stop(void)::{lambda(void)#1}>(CMHandDetectionHandler::stop(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CMHandDetectionHandler::stop(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<CMHandDetectionHandler::stop(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 32);
  if (v4 && *(v3 + 56) == 1)
  {
    [v4 stopCallHandednessUpdates];
    *(v3 + 56) = 0;
  }

  operator delete(v2);
  v5 = a1[2];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_2973604EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = *a2;
  *(a2 + 8) = 0;
  v9 = a1[2];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>(CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1},dispatch_queue_s *::default_delete<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>(CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1},dispatch_queue_s *::default_delete<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t ***a1)
{
  v2 = *a1;
  v14 = *a1;
  v3 = **a1;
  if (!v3[4] || !v2[1])
  {
    goto LABEL_17;
  }

  v4 = v3[1];
  if (!v4 || (v5 = *v3, (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = v2[1];
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v7);
  v8 = v2[1];
  if (v8)
  {
LABEL_9:
    v8 = _Block_copy(v8);
  }

LABEL_10:
  v9 = v3[6];
  v3[6] = v8;
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = objc_alloc_init(CMHandDetectionDelegateInternal);
  v3[5] = v10;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZZN22CMHandDetectionHandler16registerCallbackEN8dispatch5blockIU13block_pointerFvN23CMHandDetectionDelegate21CMHandDetectionResultEEEEENKUlvE_clEv_block_invoke;
  aBlock[3] = &__block_descriptor_56_e8_40c47_ZTSNSt3__18weak_ptrI22CMHandDetectionHandlerEE_e8_v16__0q8l;
  aBlock[4] = v3;
  aBlock[5] = v5;
  v16 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v17 = _Block_copy(aBlock);
  [(CMHandDetectionDelegateInternal *)v10 registerHandler:&v17, a1, v14];
  if (v17)
  {
    _Block_release(v17);
  }

  [v3[4] setDelegate:v3[5]];
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  std::__shared_weak_count::__release_weak(v7);
LABEL_17:
  v11 = v2[1];
  if (v11)
  {
    _Block_release(v11);
  }

  operator delete(v2);
  v12 = a1[2];
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  operator delete(a1);
}

void sub_297360820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  std::__shared_weak_count::__release_weak(v17);
  std::unique_ptr<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1},std::default_delete<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_297360878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1},std::default_delete<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ___ZZN22CMHandDetectionHandler16registerCallbackEN8dispatch5blockIU13block_pointerFvN23CMHandDetectionDelegate21CMHandDetectionResultEEEEENKUlvE_clEv_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (!a1[5])
      {
        goto LABEL_16;
      }

      v8 = v5[1];
      if (!v8 || (v9 = *v5, (v10 = std::__shared_weak_count::lock(v8)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v11 = v10;
      v12 = operator new(0x10uLL);
      *v12 = v5;
      v12[1] = a2;
      v13 = v5[2];
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = operator new(0x18uLL);
      *v14 = v12;
      v14[1] = v9;
      v14[2] = v11;
      dispatch_async_f(v13, v14, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI22CMHandDetectionHandlerE15execute_wrappedIZZZNS3_16registerCallbackENS_5blockIU13block_pointerFvN23CMHandDetectionDelegate21CMHandDetectionResultEEEEENKUlvE_clEvEUb_EUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISE_NSJ_14default_deleteISE_EEEEENUlPvE_8__invokeESO_);
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }
      }

      else
      {
LABEL_16:
        if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }
      }

      (v7->__on_zero_shared)(v7);

      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

uint64_t __copy_helper_block_e8_40c47_ZTSNSt3__18weak_ptrI22CMHandDetectionHandlerEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c47_ZTSNSt3__18weak_ptrI22CMHandDetectionHandlerEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI22CMHandDetectionHandlerE15execute_wrappedIZZZNS3_16registerCallbackENS_5blockIU13block_pointerFvN23CMHandDetectionDelegate21CMHandDetectionResultEEEEENKUlvE_clEvEUb_EUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISE_NSJ_14default_deleteISE_EEEEENUlPvE_8__invokeESO_(void *a1)
{
  v2 = *a1;
  *(*a1 + 8);
  (*(*(**a1 + 48) + 16))();
  operator delete(v2);
  v3 = a1[2];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = a1;
  }

  else
  {
    v4 = a1;
  }

  operator delete(v4);
}

void sub_297360B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1},std::default_delete<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[1];
    if (v3)
    {
      _Block_release(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::shutdown(void)::{lambda(void)#1}>(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(8uLL);
  *v8 = *a2;
  v9 = a1[2];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::shutdown(void)::{lambda(void)#1}>(CMHandDetectionHandler::shutdown(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CMHandDetectionHandler::shutdown(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<CMHandDetectionHandler::shutdown(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::shutdown(void)::{lambda(void)#1}>(CMHandDetectionHandler::shutdown(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CMHandDetectionHandler::shutdown(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<CMHandDetectionHandler::shutdown(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 32);
  if (v4)
  {

    *(v3 + 32) = 0;
  }

  operator delete(v2);
  v5 = a1[2];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_297360D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void std::shared_ptr<Capabilities>::operator=[abi:ne200100](__int128 *a1)
{
  v1 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  v2 = off_2A1399888;
  unk_2A1399880 = v1;
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void std::__shared_ptr_emplace<CMHandDetectionDelegate>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E3AA10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<CMHandDetectionDelegate>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __cxx_global_var_init_12()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<Capabilities>::~PthreadMutexGuardPolicy, &ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance, &dword_297288000);
  }

  return result;
}

void ServerLogging::~ServerLogging(ServerLogging *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 10));
    *(this + 10) = 0;
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
    if ((*(this + 55) & 0x80000000) == 0)
    {
LABEL_5:
      MEMORY[0x29C26DE80](this + 24);
      v3 = *(this + 1);
      if (!v3)
      {
        return;
      }

      goto LABEL_6;
    }
  }

  else if ((*(this + 55) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(this + 4));
  MEMORY[0x29C26DE80](this + 24);
  v3 = *(this + 1);
  if (!v3)
  {
    return;
  }

LABEL_6:
  std::__shared_weak_count::__release_weak(v3);
}

uint64_t ServerLogging::ServerLogging(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  ctu::OsLogContext::OsLogContext(&v26, "com.apple.telephony.abm", "server.logging");
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26DE70](a1 + 24, &v25);
  MEMORY[0x29C26DE80](&v25);
  ctu::OsLogContext::~OsLogContext(&v26);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(a1 + 48) = *(a2 + 2);
    *(a1 + 32) = v6;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(a1 + 72) = *(a3 + 2);
    *(a1 + 56) = v7;
  }

  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v8 = off_2A1399498;
  if (!off_2A1399498)
  {
    SharedData::create_default_global(&v26);
    v9 = *&v26.__r_.__value_.__l.__data_;
    *&v26.__r_.__value_.__l.__data_ = 0uLL;
    v10 = *(&off_2A1399498 + 1);
    off_2A1399498 = v9;
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    size = v26.__r_.__value_.__l.__size_;
    if (v26.__r_.__value_.__l.__size_ && !atomic_fetch_add((v26.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }

    v8 = off_2A1399498;
  }

  v23 = v8;
  v24 = *(&off_2A1399498 + 1);
  if (*(&off_2A1399498 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v12 = *MEMORY[0x29EDBD290];
  v13 = strlen(*MEMORY[0x29EDBD290]);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v13 | 7) + 1;
    }

    v15 = operator new(v16);
    __dst[1] = v14;
    v22 = v16 | 0x8000000000000000;
    __dst[0] = v15;
LABEL_26:
    memmove(v15, v12, v14);
    *(v14 + v15) = 0;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }

  HIBYTE(v22) = v13;
  v15 = __dst;
  if (v13)
  {
    goto LABEL_26;
  }

  LOBYTE(__dst[0]) = 0;
  if ((*(a3 + 23) & 0x80000000) == 0)
  {
LABEL_21:
    __p = *a3;
    goto LABEL_28;
  }

LABEL_27:
  std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 1));
LABEL_28:
  os_unfair_lock_lock(v8 + 10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v25 = __p;
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
  }

  else
  {
    v26 = v25;
  }

  if (v22 >= 0)
  {
    v17 = __dst;
  }

  else
  {
    v17 = __dst[0];
  }

  ctu::cf::plist_adapter::set<std::string>(v8, &v26, v17);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_39:
      os_unfair_lock_unlock(v8 + 10);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_45;
    }
  }

  else if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_39;
  }

  operator delete(v25.__r_.__value_.__l.__data_);
  os_unfair_lock_unlock(v8 + 10);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_40:
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_46:
    operator delete(__dst[0]);
    v18 = v24;
    if (!v24)
    {
      return a1;
    }

    goto LABEL_47;
  }

LABEL_45:
  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v22) < 0)
  {
    goto LABEL_46;
  }

LABEL_41:
  v18 = v24;
  if (!v24)
  {
    return a1;
  }

LABEL_47:
  if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  return a1;
}