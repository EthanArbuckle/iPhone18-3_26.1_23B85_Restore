void sub_29713B07C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t __copy_helper_block_e8_40c37_ZTSNSt3__18weak_ptrI12HealthModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c37_ZTSNSt3__18weak_ptrI12HealthModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN12HealthModule28registerCommandHandlers_syncEv_block_invoke_8(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v6 = a1[4];
  v7 = std::__shared_weak_count::lock(v4);
  v23 = v7;
  if (!v7)
  {
    return;
  }

  v22 = a1[5];
  if (!v22 || !*a3)
  {
LABEL_21:
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v20 = v7;
      (v7->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v20);
    }

    return;
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v8;
  v10 = MEMORY[0x29EDCAA00];
  if (v8)
  {
    v21 = v8;
  }

  else
  {
    v9 = xpc_null_create();
    v21 = v9;
    if (!v9)
    {
      v11 = xpc_null_create();
      v9 = 0;
      goto LABEL_12;
    }
  }

  if (MEMORY[0x29C26CE60](v9) == v10)
  {
    xpc_retain(v9);
    goto LABEL_13;
  }

  v11 = xpc_null_create();
LABEL_12:
  v21 = v11;
LABEL_13:
  xpc_release(v9);
  v12 = v21;
  if (MEMORY[0x29C26CE60](v21) == v10)
  {
    BootFailureCauseCode_sync = HealthModule::getBootFailureCauseCode_sync(v6);
    v18 = xpc_int64_create(BootFailureCauseCode_sync);
    if (!v18)
    {
      v18 = xpc_null_create();
    }

    xpc_dictionary_set_value(v21, "HealthEventCauseCode", v18);
    v19 = xpc_null_create();
    xpc_release(v18);
    xpc_release(v19);
    LODWORD(object[0]) = 0;
    dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(a3, object, &v21);
    v12 = v21;
  }

  else
  {
    v13 = *(v6 + 13);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(object[0]) = 0;
      _os_log_error_impl(&dword_296FF7000, v13, OS_LOG_TYPE_ERROR, "Failed to create output dictionary", object, 2u);
    }

    v14 = xpc_null_create();
    v15 = *a3;
    object[0] = v14;
    v16 = xpc_null_create();
    (*(v15 + 16))(v15, 3760250880, object);
    xpc_release(object[0]);
    xpc_release(v16);
  }

  xpc_release(v12);
  v7 = v23;
  if (v23)
  {
    goto LABEL_21;
  }
}

void sub_29713B72C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11, uint64_t a12, xpc_object_t a13)
{
  xpc_release(object);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t HealthModule::getBootFailureCauseCode_sync(HealthModule *this)
{
  v30 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  if (xmmword_2A18B74D0)
  {
    goto LABEL_2;
  }

  v2 = operator new(0x68uLL);
  HealthEventDB::HealthEventDB(v2);
  *buf = v2;
  v3 = operator new(0x20uLL);
  v3->__vftable = &unk_2A1E26F90;
  v3->__shared_owners_ = 0;
  v3->__shared_weak_owners_ = 0;
  v3[1].__vftable = v2;
  v4 = *(&xmmword_2A18B74D0 + 1);
  *&xmmword_2A18B74D0 = v2;
  *(&xmmword_2A18B74D0 + 1) = v3;
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

LABEL_2:
    v3 = *(&xmmword_2A18B74D0 + 1);
    v2 = xmmword_2A18B74D0;
    if (!*(&xmmword_2A18B74D0 + 1))
    {
      goto LABEL_8;
    }
  }

  atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_8:
  pthread_mutex_unlock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v5 = *(v2 + 7);
    if (v5 < 0xA)
    {
LABEL_11:
      v6 = *(this + 13);
      v7 = 0;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v5;
        _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I Current health events size is %lu and we need more events to check boot failure cause", buf, 0xCu);
        v7 = 0;
      }

      goto LABEL_51;
    }
  }

  else
  {
    v5 = *(v2 + 7);
    if (v5 < 0xA)
    {
      goto LABEL_11;
    }
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = &v23;
  while (1)
  {
    v12 = *(v2 + 7) ? *(v2 + 5) : 0;
    v13 = *(this + 13);
    if (v12 == v10)
    {
      break;
    }

    v14 = os_log_type_enabled(*(this + 13), OS_LOG_TYPE_DEBUG);
    v15 = *(v2 + 6);
    v16 = *(v2 + 3);
    v17 = *(v2 + 4);
    if (v14)
    {
      if (v10)
      {
        v15 = v10;
      }

      if (v15 == v16)
      {
        v15 = *(v2 + 4);
      }

      HealthEvent::asString((v15 - 24), buf);
      v18 = buf;
      if (v29 < 0)
      {
        v18 = *buf;
      }

      *v22 = 136315138;
      *&v22[4] = v18;
      _os_log_debug_impl(&dword_296FF7000, v13, OS_LOG_TYPE_DEBUG, "#D %s", v22, 0xCu);
      if (SHIBYTE(v29) < 0)
      {
        operator delete(*buf);
      }

      v15 = *(v2 + 6);
      v16 = *(v2 + 3);
      v17 = *(v2 + 4);
    }

    if (v10)
    {
      v15 = v10;
    }

    if (v15 == v16)
    {
      v15 = v17;
    }

    if (*(v15 - 16) == 1)
    {
      ++v8;
      if (*(v15 - 15) == 2)
      {
        ++v9;
      }
    }

    v10 = v15 - 24;
    if (v8 >= 0xA)
    {
      v13 = *(this + 13);
      break;
    }
  }

  if (v9 <= 4)
  {
    v7 = v8 > 9;
  }

  else
  {
    v7 = 2;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (v7 == 2)
    {
      v24 = 2;
      v19 = 22355;
    }

    else
    {
      if (v7 != 1)
      {
        v24 = 12;
        qmemcpy(v22, "NotAvailable", sizeof(v22));
LABEL_49:
        *v11 = 0;
        *buf = 136315650;
        *&buf[4] = v22;
        v26 = 1024;
        v27 = v9;
        v28 = 1024;
        v29 = v8;
        _os_log_impl(&dword_296FF7000, v13, OS_LOG_TYPE_DEFAULT, "#I Boot failure cause code [%s] - countSwError=%d, totalCount=%d", buf, 0x18u);
        if (v24 < 0)
        {
          operator delete(*v22);
        }

        goto LABEL_51;
      }

      v24 = 2;
      v19 = 22344;
    }

    *v22 = v19;
    v11 = &v22[2];
    goto LABEL_49;
  }

LABEL_51:
  v20 = *MEMORY[0x29EDCA608];
  return v7;
}

void sub_29713BBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::unique_ptr<HealthEventDB>::~unique_ptr[abi:ne200100](va);
  pthread_mutex_unlock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  _Unwind_Resume(a1);
}

void HealthModule::registerEventHandlers_sync(HealthModule *this)
{
  v26 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p) = 0;
    _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "#D Registering event handlers", &__p, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_38:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_38;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_38;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *MEMORY[0x29EDBF460];
  v8 = strlen(*MEMORY[0x29EDBF460]);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
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
    v21 = v11 | 0x8000000000000000;
    *&__p = p_p;
    goto LABEL_14;
  }

  HIBYTE(v21) = v8;
  p_p = &__p;
  if (v8)
  {
LABEL_14:
    memmove(p_p, v7, v9);
  }

  *(p_p + v9) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v25 = 0;
  v12 = operator new(0x20uLL);
  *v12 = &unk_2A1E2BB70;
  v12[1] = this;
  v12[2] = v4;
  v12[3] = v6;
  v25 = v12;
  Service::registerEventHandler(this, &__p, v24);
  if (v25 == v24)
  {
    (*(*v25 + 32))(v25);
    if ((SHIBYTE(v21) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

  if (v25)
  {
    (*(*v25 + 40))();
  }

  if (SHIBYTE(v21) < 0)
  {
LABEL_34:
    operator delete(__p);
  }

LABEL_19:
  v13 = *MEMORY[0x29EDBECC0];
  v14 = strlen(*MEMORY[0x29EDBECC0]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v14 | 7) + 1;
    }

    v16 = operator new(v17);
    *(&__p + 1) = v15;
    v21 = v17 | 0x8000000000000000;
    *&__p = v16;
    goto LABEL_27;
  }

  HIBYTE(v21) = v14;
  v16 = &__p;
  if (v14)
  {
LABEL_27:
    memmove(v16, v13, v15);
  }

  *(v16 + v15) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v23 = 0;
  v18 = operator new(0x20uLL);
  *v18 = &unk_2A1E2BC20;
  v18[1] = this;
  v18[2] = v4;
  v18[3] = v6;
  v23 = v18;
  Service::registerEventHandler(this, &__p, v22);
  if (v23 == v22)
  {
    (*(*v23 + 32))(v23);
    if ((SHIBYTE(v21) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_36:
    operator delete(__p);
    goto LABEL_32;
  }

  if (v23)
  {
    (*(*v23 + 40))();
  }

  if (SHIBYTE(v21) < 0)
  {
    goto LABEL_36;
  }

LABEL_32:
  Service::eventsOn(this);
  std::__shared_weak_count::__release_weak(v6);
  v19 = *MEMORY[0x29EDCA608];
}

void HealthModule::shutdownWithStage(void *a1, char a2, NSObject **a3)
{
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1174405120;
  v13[2] = ___ZN12HealthModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke;
  v13[3] = &__block_descriptor_tmp_13_5;
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
  block[2] = ___ZNK3ctu20SharedSynchronizableI12HealthModuleE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E2BC98;
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

void HealthModule::~HealthModule(HealthModule *this)
{
  *this = &unk_2A1E2B9D0;
  v2 = this + 104;
  v3 = *(this + 13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v14, 2u);
  }

  v4 = *(this + 16);
  *(this + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 15);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  MEMORY[0x29C26B020](v2);
  v6 = *(this + 12);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 11);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 10);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  *this = &unk_2A1E2E7E8;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v9 = *(this + 3);
  if (v9)
  {
    v10 = *(this + 4);
    v11 = *(this + 3);
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 1);
        v10 -= 3;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = *(this + 3);
    }

    *(this + 4) = v9;
    operator delete(v11);
  }

  v13 = *(this + 2);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }
}

{
  HealthModule::~HealthModule(this);

  operator delete(v1);
}

void *HealthModule::HealthModule(void *a1, uint64_t *a2, NSObject **a3)
{
  v5 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E2E7E8;
  a1[1] = v5;
  a1[2] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    a1[3] = 0;
    a1[4] = 0;
    a1[8] = 0;
    a1[7] = 0;
    a1[5] = 0;
    a1[6] = a1 + 7;
    std::__shared_weak_count::__release_weak(v6);
    *a1 = &unk_2A1E23A28;
    std::__shared_weak_count::__release_weak(v6);
    v7 = &unk_2A1E2B9D0;
    *a1 = &unk_2A1E2B9D0;
    v8 = a1 + 9;
    v9 = *a3;
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[5] = 0;
  a1[6] = a1 + 7;
  *a1 = &unk_2A1E23A28;
  v7 = &unk_2A1E2B9D0;
  *a1 = &unk_2A1E2B9D0;
  v8 = a1 + 9;
  v9 = *a3;
  if (*a3)
  {
LABEL_5:
    dispatch_retain(v9);
    v7 = *a1;
  }

LABEL_6:
  v10 = v7[2](a1);
  ctu::OsLogContext::OsLogContext(v18, "com.apple.telephony.abm", v10);
  if (v9)
  {
    dispatch_retain(v9);
  }

  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v12 = dispatch_queue_create_with_target_V2("health.mod", initially_inactive, v9);
  dispatch_set_qos_class_floor(v12, QOS_CLASS_UTILITY, 0);
  dispatch_activate(v12);
  *v8 = 0;
  v8[1] = 0;
  a1[11] = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  a1[12] = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  if (v9)
  {
    dispatch_release(v9);
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26B010](a1 + 13, v19);
  MEMORY[0x29C26B020](v19);
  ctu::OsLogContext::~OsLogContext(v18);
  if (v9)
  {
    dispatch_release(v9);
  }

  *a1 = &unk_2A1E2B9D0;
  a1[14] = 0;
  a1[15] = 0;
  a1[16] = 0;
  ctu::DispatchTimerService::create(v18, v13);
  v14 = *v18;
  *v18 = 0uLL;
  v15 = a1[15];
  *(a1 + 7) = v14;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = v18[1];
  if (v18[1] && !atomic_fetch_add((v18[1] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  return a1;
}

void sub_29713C6D4(_Unwind_Exception *a1)
{
  v5 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v3);
  MEMORY[0x29C26B020](v1 + 104);
  ctu::SharedSynchronizable<StatsModule>::~SharedSynchronizable(v2);
  Service::~Service(v1);
  _Unwind_Resume(a1);
}

void HealthModule::getBasebandFWVersion_sync(void *a1, void **a2)
{
  v3 = a1[10];
  if (!v3 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  v32 = 0xAAAAAAAAAAAAAAAALL;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN12HealthModule25getBasebandFWVersion_syncEN8dispatch5blockIU13block_pointerFvNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_18_2;
  aBlock[4] = a1;
  aBlock[5] = v5;
  v30 = v7;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v9 = *a2;
  if (*a2)
  {
    v9 = _Block_copy(v9);
  }

  v31 = v9;
  v10 = _Block_copy(aBlock);
  v11 = a1[11];
  if (v11)
  {
    dispatch_retain(v11);
  }

  v32 = v10;
  v33 = v11;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v12 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v13 = off_2A18B7390;
  if (!off_2A18B7390)
  {
    CommandDriverFactory::create_default_global(&v34, v12);
    v14 = v34;
    v34 = 0uLL;
    v15 = *(&off_2A18B7390 + 1);
    off_2A18B7390 = v14;
    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    v16 = *(&v34 + 1);
    if (*(&v34 + 1) && !atomic_fetch_add((*(&v34 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    v13 = off_2A18B7390;
  }

  v17 = *(&off_2A18B7390 + 1);
  v23 = v13;
  v24 = *(&off_2A18B7390 + 1);
  if (*(&off_2A18B7390 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7390 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v13 + 16))(&v25, v13);
  v27 = 0;
  v28 = 0;
  if (v26)
  {
    v28 = std::__shared_weak_count::lock(v26);
    if (v28)
    {
      v27 = v25;
    }

    if (v26)
    {
      std::__shared_weak_count::__release_weak(v26);
    }
  }

  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    v18 = v27;
    if (!v27)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v18 = v27;
    if (!v27)
    {
      goto LABEL_35;
    }
  }

  v19 = v32;
  if (v32)
  {
    v19 = _Block_copy(v32);
  }

  v21 = v19;
  object = v33;
  if (v33)
  {
    dispatch_retain(v33);
  }

  (*(*v18 + 64))(v18, &v21);
  if (object)
  {
    dispatch_release(object);
  }

  if (v21)
  {
    _Block_release(v21);
  }

LABEL_35:
  v20 = v28;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  if (v33)
  {
    dispatch_release(v33);
  }

  if (v32)
  {
    _Block_release(v32);
  }

  if (v31)
  {
    _Block_release(v31);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void sub_29713CB28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, void *aBlock)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v25 - 80);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_weak(a23);
  }

  std::__shared_weak_count::__release_weak(v24);
  _Unwind_Resume(a1);
}

void ___ZN12HealthModule25getBasebandFWVersion_syncEN8dispatch5blockIU13block_pointerFvNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEE_block_invoke(void *a1, std::string::size_type *a2, const __CFDictionary **a3)
{
  v24 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (!v4)
  {
    goto LABEL_21;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  v22 = v8;
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = 0xAAAAAAAAAAAAAA00;
  if (!a1[5])
  {
    v15 = 0;
    if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  v10 = *a2;
  if (v10)
  {
    v11 = *(v7 + 104);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v23.__r_.__value_.__l.__data_) = 138412290;
      *(v23.__r_.__value_.__r.__words + 4) = v10;
      _os_log_error_impl(&dword_296FF7000, v11, OS_LOG_TYPE_ERROR, "%@", &v23, 0xCu);
    }

    goto LABEL_7;
  }

  v16 = *a3;
  if (!*a3)
  {
LABEL_7:
    v12 = a1[7];
    v13 = 0xAAAAAAAAAAAAAALL;
    size = 0xAAAAAAAAAAAAAAAALL;
LABEL_8:
    v15 = 0;
    v23.__r_.__value_.__r.__words[0] = v9;
    v23.__r_.__value_.__l.__size_ = size;
    v23.__r_.__value_.__r.__words[2] = v13;
    goto LABEL_9;
  }

  v20[0] = 0xAAAAAAAAAAAAAAAALL;
  v20[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v20, v16);
  v17 = *MEMORY[0x29EDC8D98];
  ctu::cf::map_adapter::getString();
  size = v23.__r_.__value_.__l.__size_;
  v9 = v23.__r_.__value_.__r.__words[0];
  v13 = v23.__r_.__value_.__r.__words[2];
  *(&v23.__r_.__value_.__s + 23) = 0;
  v23.__r_.__value_.__s.__data_[0] = 0;
  MEMORY[0x29C26B180](v20);
  v12 = a1[7];
  if ((v13 & 0x8000000000000000) == 0)
  {
    goto LABEL_8;
  }

  std::string::__init_copy_ctor_external(&v23, v9, size);
  v15 = 1;
LABEL_9:
  (*(v12 + 16))(v12, &v23);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
    v8 = v22;
    if (!v22)
    {
      goto LABEL_19;
    }

LABEL_18:
    if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_19;
    }

LABEL_22:
    v19 = v8;
    (v8->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v19);
    if ((v15 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v8 = v22;
  if (v22)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (v15)
  {
LABEL_20:
    operator delete(v9);
  }

LABEL_21:
  v18 = *MEMORY[0x29EDCA608];
}

void sub_29713CDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  operator delete(v7);
  _Unwind_Resume(a1);
}

void sub_29713CE10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C26B180](&a16);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void sub_29713CE44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a15);
  if (v23)
  {
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_40c37_ZTSNSt3__18weak_ptrI12HealthModuleEE56c106_ZTSN8dispatch5blockIU13block_pointerFvNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[7];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[7] = result;
  return result;
}

void __destroy_helper_block_e8_40c37_ZTSNSt3__18weak_ptrI12HealthModuleEE56c106_ZTSN8dispatch5blockIU13block_pointerFvNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t HealthModule::getFailureCountInHealthEventDB_sync(NSObject **this)
{
  v24 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  if (xmmword_2A18B74D0)
  {
    goto LABEL_2;
  }

  v2 = operator new(0x68uLL);
  HealthEventDB::HealthEventDB(v2);
  *buf = v2;
  v3 = operator new(0x20uLL);
  v3->__vftable = &unk_2A1E26F90;
  v3->__shared_owners_ = 0;
  v3->__shared_weak_owners_ = 0;
  v3[1].__vftable = v2;
  v4 = *(&xmmword_2A18B74D0 + 1);
  *&xmmword_2A18B74D0 = v2;
  *(&xmmword_2A18B74D0 + 1) = v3;
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

LABEL_2:
    v3 = *(&xmmword_2A18B74D0 + 1);
    v2 = xmmword_2A18B74D0;
    if (!*(&xmmword_2A18B74D0 + 1))
    {
      goto LABEL_8;
    }
  }

  atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_8:
  pthread_mutex_unlock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  memset(v21, 170, sizeof(v21));
  HealthModule::findMostRecentBarrierHealthEvent_sync(this, v21);
  if (((LOBYTE(v21[1]) - 3) & 0xFD) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v21[2];
  }

  if (*(v2 + 7) && (v6 = *(v2 + 5)) != 0)
  {
    v7 = 0;
    v8 = *(v2 + 5);
    do
    {
      *buf = &unk_2A1E2BD98;
      *&buf[8] = *(v8 + 8);
      if (*&buf[16] >= v5 && buf[8] == 1)
      {
        ++v7;
      }

      v10 = *(v2 + 3);
      v9 = *(v2 + 4);
      if (v8 + 24 == v9)
      {
        v8 = *(v2 + 3);
      }

      else
      {
        v8 += 24;
      }

      v11 = *(v2 + 6);
    }

    while (v8 != v11 && v8 != 0);
    v13 = 0;
    v18 = v6;
    do
    {
      *buf = &unk_2A1E2BD98;
      *&buf[8] = *(v18 + 8);
      if (*&buf[16] >= v5 && buf[8] == 6)
      {
        ++v13;
      }

      v18 += 24;
      if (v18 == v9)
      {
        v18 = v10;
      }
    }

    while (v18 != v11 && v18 != 0);
    v14 = 0;
    do
    {
      *buf = &unk_2A1E2BD98;
      *&buf[8] = *(v6 + 8);
      if (*&buf[16] >= v5 && buf[8] == 4)
      {
        ++v14;
      }

      v6 += 24;
      if (v6 == v9)
      {
        v6 = v10;
      }
    }

    while (v6 != v11 && v6 != 0);
  }

  else
  {
    v13 = 0;
    v7 = 0;
    v14 = 0;
  }

  v15 = this[13];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    *&buf[4] = v7;
    *&buf[12] = 2048;
    *&buf[14] = v13;
    *&buf[22] = 2048;
    v23 = v14;
    _os_log_impl(&dword_296FF7000, v15, OS_LOG_TYPE_DEFAULT, "#I boot failure count: %ld, baseband crash count: %ld, ping failure count: %ld", buf, 0x20u);
  }

  v16 = *MEMORY[0x29EDCA608];
  return v7 + v13 + v14;
}

void sub_29713D280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<HealthEventDB>::~unique_ptr[abi:ne200100](va);
  pthread_mutex_unlock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  _Unwind_Resume(a1);
}

void HealthModule::findMostRecentBarrierHealthEvent_sync(HealthModule *this@<X0>, void *a2@<X8>)
{
  v43 = *MEMORY[0x29EDCA608];
  memset(a2, 170, 24);
  Timestamp::Timestamp(&v38);
  Timestamp::asString(&v38, 0, 9, v40);
  *a2 = &unk_2A1E2BD98;
  *(a2 + 4) = 0;
  if (SHIBYTE(v41) < 0)
  {
    std::string::__init_copy_ctor_external(__p, v40[0], v40[1]);
  }

  else
  {
    *__p = *v40;
    *&v36 = v41;
  }

  a2[2] = Timestamp::convert(__p);
  if (SBYTE7(v36) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v41) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((SHIBYTE(v41) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(v40[0]);
LABEL_6:
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v38, v38.__imp_.__imp_);
  v37 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v4;
  v36 = v4;
  pthread_mutex_lock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  if (!xmmword_2A18B74D0)
  {
    v6 = operator new(0x68uLL);
    HealthEventDB::HealthEventDB(v6);
    v38.__vftable = v6;
    v5 = operator new(0x20uLL);
    *v5 = &unk_2A1E26F90;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v6;
    v7 = *(&xmmword_2A18B74D0 + 1);
    *&xmmword_2A18B74D0 = v6;
    *(&xmmword_2A18B74D0 + 1) = v5;
    if (!v7)
    {
      *&buf = v6;
      *(&buf + 1) = v5;
      goto LABEL_15;
    }

    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }

  v5 = *(&xmmword_2A18B74D0 + 1);
  v6 = xmmword_2A18B74D0;
  buf = xmmword_2A18B74D0;
  if (*(&xmmword_2A18B74D0 + 1))
  {
LABEL_15:
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  v8 = *(v6 + 7);
  v37 = v8;
  v10 = *(v6 + 3);
  v9 = *(v6 + 4);
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3);
  if (v11 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::logic_error::logic_error(&v38, "circular_buffer");
    v38.__vftable = (MEMORY[0x29EDC95D8] + 16);
    boost::throw_exception<std::length_error>(&v38);
  }

  if (v9 == v10)
  {
    v12 = 0;
    v13 = (8 * ((v9 - v10) >> 3));
    __p[0] = 0;
    __p[1] = (24 * v11);
    *&v36 = 0;
    v14 = 0;
    if (!v8)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v12 = operator new(v9 - v10);
    v13 = &v12[24 * v11];
    __p[0] = v12;
    __p[1] = v13;
    *&v36 = v12;
    v14 = v12;
    if (!v8)
    {
      goto LABEL_30;
    }
  }

  v15 = *(v6 + 5);
  v14 = v12;
  if (v15)
  {
    v17 = *(v6 + 3);
    v16 = *(v6 + 4);
    v18 = v12;
    v14 = v12;
    v19 = *(v6 + 6);
    do
    {
      *v14 = &unk_2A1E2BD98;
      *(v14 + 8) = *(v15 + 8);
      v15 += 24;
      if (v15 == v16)
      {
        v15 = v17;
      }

      v14 += 24;
      v18 += 24;
    }

    while (v15 != v19 && v15 != 0);
  }

LABEL_30:
  if (v14 == v13)
  {
    v21 = v12;
  }

  else
  {
    v21 = v14;
  }

  *(&v36 + 1) = v21;
  v22 = *(&buf + 1);
  if (*(&buf + 1) && !atomic_fetch_add((*(&buf + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = v37;
  v24 = v36;
  if (v37 && v36)
  {
    if ((v36 + 24) == __p[1])
    {
      v25 = __p[0];
    }

    else
    {
      v25 = (v36 + 24);
    }

    v26 = v25 == *(&v36 + 1) || v25 == 0;
    v27 = v36;
    if (!v26)
    {
      v27 = v36;
      do
      {
        v28 = (v25[8] - 3) & 0xFFFFFFFD;
        if (((v27[8] - 3) & 0xFD) != 0)
        {
          if (((v25[8] - 3) & 0xFD) == 0)
          {
            goto LABEL_51;
          }
        }

        else if (((v25[8] - 3) & 0xFD) != 0)
        {
          goto LABEL_52;
        }

        if (*(v27 + 2) < *(v25 + 2))
        {
LABEL_51:
          v27 = v25;
        }

LABEL_52:
        v25 += 24;
        if (v25 == __p[1])
        {
          v25 = __p[0];
        }
      }

      while (v25 != *(&v36 + 1) && v25);
    }

    *(a2 + 1) = *(v27 + 8);
  }

  v29 = v24;
  v30 = *(this + 13);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    HealthEvent::asString(a2, &v38);
    v31 = v39 >= 0 ? &v38 : v38.__vftable;
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v31;
    _os_log_impl(&dword_296FF7000, v30, OS_LOG_TYPE_DEFAULT, "#I Found preliminary barrier event: %s", &buf, 0xCu);
    if (v39 < 0)
    {
      operator delete(v38.__vftable);
    }
  }

  if (v23)
  {
    v32 = v29;
    v33 = 0;
    do
    {
      (**v32)(v32);
      v32 = (v36 + 24);
      *&v36 = v32;
      if (v32 == __p[1])
      {
        v32 = __p[0];
        *&v36 = __p[0];
      }

      ++v33;
    }

    while (v33 < v37);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v34 = *MEMORY[0x29EDCA608];
}

void sub_29713D7C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, HealthEventDB *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  std::unique_ptr<HealthEventDB>::~unique_ptr[abi:ne200100](&a18);
  pthread_mutex_unlock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  _Unwind_Resume(a1);
}

void HealthModule::checkFailuresAgainstThresholdAndEraseEFSAccordingly_sync(NSObject **this)
{
  v20 = *MEMORY[0x29EDCA608];
  FailureCountInHealthEventDB_sync = HealthModule::getFailureCountInHealthEventDB_sync(this);
  if (FailureCountInHealthEventDB_sync >= 10)
  {
    v3 = capabilities::abs::supportsEFSEraseOnBootLoop(FailureCountInHealthEventDB_sync);
    v4 = this[13];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = ", but EFS erase is not supported";
      if (v3)
      {
        v5 = "; requesting EFS erase";
      }

      *buf = 67109378;
      *&buf[4] = 10;
      LOWORD(v19) = 2080;
      *(&v19 + 2) = v5;
      _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I Total health failure count reached EFS erase threshold (%d)%s", buf, 0x12u);
    }

    if (v3)
    {
      v6 = xpc_dictionary_create(0, 0, 0);
      if (v6 || (v6 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x29C26CE60](v6) == MEMORY[0x29EDCAA00])
        {
          xpc_retain(v6);
          v7 = v6;
        }

        else
        {
          v7 = xpc_null_create();
        }
      }

      else
      {
        v7 = xpc_null_create();
        v6 = 0;
      }

      xpc_release(v6);
      v8 = xpc_string_create(*MEMORY[0x29EDBE950]);
      if (!v8)
      {
        v8 = xpc_null_create();
      }

      xpc_dictionary_set_value(v7, *MEMORY[0x29EDBEED8], v8);
      v9 = xpc_null_create();
      xpc_release(v8);
      xpc_release(v9);
      v10 = *MEMORY[0x29EDBEBB0];
      v11 = strlen(*MEMORY[0x29EDBEBB0]);
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
        *&v19 = v12;
        *(&v19 + 1) = v14 | 0x8000000000000000;
        *buf = v13;
      }

      else
      {
        HIBYTE(v19) = v11;
        v13 = buf;
        if (!v11)
        {
          buf[0] = 0;
          object = v7;
          if (v7)
          {
LABEL_19:
            xpc_retain(v7);
LABEL_26:
            v16 = 0;
            Service::runCommand(this, buf, &object, &v16);
            xpc_release(object);
            object = 0;
            if (SHIBYTE(v19) < 0)
            {
              operator delete(*buf);
            }

            HealthModule::updateHealthEvent_sync(this, 5, 0);
            xpc_release(v7);
            goto LABEL_29;
          }

LABEL_25:
          object = xpc_null_create();
          goto LABEL_26;
        }
      }

      memmove(v13, v10, v12);
      *(v13 + v12) = 0;
      object = v7;
      if (v7)
      {
        goto LABEL_19;
      }

      goto LABEL_25;
    }
  }

LABEL_29:
  v15 = *MEMORY[0x29EDCA608];
}

void sub_29713DB8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HealthModule::updateHealthEvent_sync(HealthModule *a1, int a2, char a3)
{
  pthread_mutex_lock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  if (xmmword_2A18B74D0)
  {
    goto LABEL_2;
  }

  v7 = operator new(0x68uLL);
  HealthEventDB::HealthEventDB(v7);
  v6 = operator new(0x20uLL);
  v6->__vftable = &unk_2A1E26F90;
  v6->__shared_owners_ = 0;
  v6->__shared_weak_owners_ = 0;
  v6[1].__vftable = v7;
  v9 = *(&xmmword_2A18B74D0 + 1);
  *&xmmword_2A18B74D0 = v7;
  *(&xmmword_2A18B74D0 + 1) = v6;
  if (v9)
  {
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

LABEL_2:
    v6 = *(&xmmword_2A18B74D0 + 1);
    v8 = xmmword_2A18B74D0;
    v10 = (v8 >> 64);
    v7 = v8;
    if (!*(&xmmword_2A18B74D0 + 1))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v10 = v6;
LABEL_8:
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_9:
  pthread_mutex_unlock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  HealthEventDB::addHealthEvent(v7, a2, a3);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  HealthModule::checkFailuresAndNotifyHealthEvent_sync(a1, a2 == 3);
}

void sub_29713DD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<HealthEventDB>::~unique_ptr[abi:ne200100](va);
  pthread_mutex_unlock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  _Unwind_Resume(a1);
}

void sub_29713DDD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void HealthModule::checkFailuresAndNotifyHealthEvent_sync(HealthModule *this, int a2)
{
  capabilities::abs::supportedMobileAssetTypes(this);
  v4 = capabilities::abs::operator&();
  if (v4 || (capabilities::abs::supportedMobileAssetTypes(v4), capabilities::abs::operator&()))
  {
    if (a2)
    {
      v5 = xpc_dictionary_create(0, 0, 0);
      if (v5 || (v5 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x29C26CE60](v5) == MEMORY[0x29EDCAA00])
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
      v9 = xpc_BOOL_create(1);
      if (!v9)
      {
        v9 = xpc_null_create();
      }

      xpc_dictionary_set_value(v6, "BasebandHealthy", v9);
      v10 = xpc_null_create();
      xpc_release(v9);
      xpc_release(v10);
      object = v6;
      __p = operator new(0x20uLL);
      v18 = xmmword_297227A50;
      strcpy(__p, "CommandBasebandHealthEvent");
      if (v6)
      {
        xpc_retain(v6);
      }

      else
      {
        object = xpc_null_create();
      }

      v15 = 0;
      Service::runCommand(this, &__p, &object, &v15);
      xpc_release(object);
      object = 0;
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p);
      }

      xpc_release(v6);
    }

    else if (HealthModule::getFailureCountInHealthEventDB_sync(this) == 2)
    {
      v7 = xpc_dictionary_create(0, 0, 0);
      if (v7 || (v7 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x29C26CE60](v7) == MEMORY[0x29EDCAA00])
        {
          xpc_retain(v7);
          v8 = v7;
        }

        else
        {
          v8 = xpc_null_create();
        }
      }

      else
      {
        v8 = xpc_null_create();
        v7 = 0;
      }

      xpc_release(v7);
      v11 = xpc_BOOL_create(0);
      if (!v11)
      {
        v11 = xpc_null_create();
      }

      xpc_dictionary_set_value(v8, "BasebandHealthy", v11);
      v12 = xpc_null_create();
      xpc_release(v11);
      xpc_release(v12);
      __p = operator new(0x20uLL);
      v18 = xmmword_297227A50;
      strcpy(__p, "CommandBasebandHealthEvent");
      v14 = v8;
      if (v8)
      {
        xpc_retain(v8);
      }

      else
      {
        v14 = xpc_null_create();
      }

      v13 = 0;
      Service::runCommand(this, &__p, &v14, &v13);
      xpc_release(v14);
      v14 = 0;
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p);
      }

      xpc_release(v8);
    }
  }
}

void sub_29713E0E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, xpc_object_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  xpc_release(object);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

void HealthModule::sendUserNotificationForCellularDiagnostics(HealthModule *this)
{
  if (config::hw::watch(this))
  {
    return;
  }

  *v4 = 0u;
  memset(v5, 0, 56);
  std::string::__assign_external(&v5[8], "Cellular_Issue_Detected", 0x17uLL);
  v5[7] = 13;
  strcpy(v4, "CellularIssue");
  if ((v5[7] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v1, v4[0], v4[1]);
  }

  else
  {
    *&v1.__r_.__value_.__l.__data_ = *v4;
    v1.__r_.__value_.__r.__words[2] = *v5;
  }

  if ((v5[31] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v2, *&v5[8], *&v5[16]);
  }

  else
  {
    v2 = *&v5[8];
  }

  if ((v5[55] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&__p, *&v5[32], *&v5[40]);
  }

  else
  {
    __p = *&v5[32];
  }

  support::ui::showNotification(2u, &v1, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v2.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_13:
      if ((SHIBYTE(v1.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_20;
    }
  }

  else if ((SHIBYTE(v2.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

  operator delete(v2.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v1.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_14:
    if ((v5[55] & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_21:
    operator delete(*&v5[32]);
    if ((v5[31] & 0x80000000) == 0)
    {
LABEL_16:
      if ((v5[7] & 0x80000000) == 0)
      {
        return;
      }

LABEL_23:
      operator delete(v4[0]);
      return;
    }

    goto LABEL_22;
  }

LABEL_20:
  operator delete(v1.__r_.__value_.__l.__data_);
  if ((v5[55] & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  if ((v5[31] & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_22:
  operator delete(*&v5[8]);
  if ((v5[7] & 0x80000000) != 0)
  {
    goto LABEL_23;
  }
}

void sub_29713E370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      support::ui::NotificationInfo::~NotificationInfo(&a25);
      _Unwind_Resume(a1);
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  support::ui::NotificationInfo::~NotificationInfo(&a25);
  _Unwind_Resume(a1);
}

void sub_29713E3CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  support::ui::NotificationInfo::~NotificationInfo(&a9);
  support::ui::NotificationInfo::~NotificationInfo(&a19);
  _Unwind_Resume(a1);
}

void sub_29713E3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  support::ui::NotificationInfo::~NotificationInfo(va);
  _Unwind_Resume(a1);
}

uint64_t HealthModule::classifyFailureCauseCode(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v56[1] = 0xAAAAAAAAAAAAAAAALL;
    v56[2] = 0x9AAAAAAAAAAAAAALL;
    v48[22] = -86;
    v47[2] = 0x12AAAAAAAAAAAAAALL;
    *buf = operator new(0x30uLL);
    v32 = xmmword_29722BED0;
    strcpy(*buf, "Failed to create BasebandUpdater instance");
    v33 = operator new(0x20uLL);
    v34 = xmmword_2972256B0;
    strcpy(v33, "Copied data size mismatch");
    v35 = operator new(0x20uLL);
    v36 = xmmword_29722A2A0;
    strcpy(v35, "Failed to load the NVM image");
    v37 = operator new(0x28uLL);
    v38 = xmmword_297227AD0;
    strcpy(v37, "Failed to copy NVM image payload");
    v39 = operator new(0x20uLL);
    v40 = xmmword_29722A2A0;
    strcpy(v39, "Failed to copy image payload");
    v41 = operator new(0x20uLL);
    v42 = xmmword_29722A2A0;
    strcpy(v41, "Failed to copy MI Image data");
    v43 = operator new(0x20uLL);
    v44 = xmmword_2972224C0;
    strcpy(v43, "Failed to copy from ELF image");
    v45 = operator new(0x38uLL);
    strcpy(v45, "Copied data size does not match root manifest size");
    v46 = xmmword_29722BEE0;
    strcpy(v47, "BBUpdater error 4.");
    v48[23] = 21;
    strcpy(v48, "kBBUReturnBadArgument");
    v49 = operator new(0x20uLL);
    v50 = xmmword_29722A2A0;
    strcpy(v49, "Failed to create data source");
    v51 = operator new(0x20uLL);
    v52 = xmmword_297227A60;
    strcpy(v51, "Failed creating data source");
    v53 = operator new(0x20uLL);
    v54 = 24;
    strcpy(v53, "Failed to create scratch");
    v55 = 0x8000000000000020;
    strcpy(v56, "bad_alloc");
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__s, *a3, *(a3 + 8));
    }

    else
    {
      __s = *a3;
    }

    v6 = SHIBYTE(__s.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v7 = 0;
      v18 = *&__s.__r_.__value_.__l.__data_;
      v19 = __s.__r_.__value_.__r.__words[0] + __s.__r_.__value_.__l.__size_;
      do
      {
        v20 = *(&v32 + v7 + 15);
        if (v20 >= 0)
        {
          v21 = &buf[v7];
        }

        else
        {
          v21 = *&buf[v7];
        }

        if (v20 >= 0)
        {
          v22 = *(&v32 + v7 + 15);
        }

        else
        {
          v22 = *&buf[v7 + 8];
        }

        if (!v22)
        {
          break;
        }

        if (*(&v18 + 1) >= v22)
        {
          v23 = *v21;
          v24 = *(&v18 + 1);
          v25 = v18;
          do
          {
            v26 = v24 - v22;
            if (v26 == -1)
            {
              break;
            }

            v27 = memchr(v25, v23, v26 + 1);
            if (!v27)
            {
              break;
            }

            v28 = v27;
            if (!memcmp(v27, v21, v22))
            {
              if (v28 == v19 || &v28[-v18] == -1)
              {
                break;
              }

              goto LABEL_45;
            }

            v25 = v28 + 1;
            v24 = v19 - (v28 + 1);
          }

          while (v24 >= v22);
        }

        v7 += 24;
      }

      while (v7 != 336);
    }

    else
    {
      v7 = 0;
      v8 = &__s + SHIBYTE(__s.__r_.__value_.__r.__words[2]);
      do
      {
        v9 = *(&v32 + v7 + 15);
        if (v9 >= 0)
        {
          v10 = &buf[v7];
        }

        else
        {
          v10 = *&buf[v7];
        }

        if (v9 >= 0)
        {
          v11 = *(&v32 + v7 + 15);
        }

        else
        {
          v11 = *&buf[v7 + 8];
        }

        if (!v11)
        {
          break;
        }

        if (v11 <= v6)
        {
          v12 = *v10;
          p_s = &__s;
          v14 = v6;
          do
          {
            v15 = &v14[-v11];
            if (v15 == -1)
            {
              break;
            }

            v16 = memchr(p_s, v12, (v15 + 1));
            if (!v16)
            {
              break;
            }

            v17 = v16;
            if (!memcmp(v16, v10, v11))
            {
              if (v17 == v8 || v17 - &__s == -1)
              {
                break;
              }

              goto LABEL_45;
            }

            p_s = (v17 + 1);
            v14 = (v8 - (v17 + 1));
          }

          while (v14 >= v11);
        }

        v7 += 24;
      }

      while (v7 != 336);
    }

LABEL_45:
    if ((v6 & 0x80000000) != 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (v7 == 336)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    std::array<std::string,14ul>::~array(buf);
  }

  else
  {
    v4 = *(a1 + 104);
    v5 = 0;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I HealthEvent cause analysis is supported only for BootFailure", buf, 2u);
      return 0;
    }
  }

  return v5;
}

void sub_29713E968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::array<std::string,14ul>::~array(va);
  _Unwind_Resume(a1);
}

void sub_29713E97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  while (1)
  {
    v16 = *(v15 - 1);
    v15 -= 3;
    if (v16 < 0)
    {
      operator delete(*v15);
    }

    if (v15 == &a15)
    {
      JUMPOUT(0x29713E974);
    }
  }
}

uint64_t std::array<std::string,14ul>::~array(uint64_t a1)
{
  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
    if ((*(a1 + 311) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 287) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*(a1 + 311) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 288));
  if ((*(a1 + 287) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 263) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*(a1 + 264));
  if ((*(a1 + 263) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(a1 + 239) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(*(a1 + 240));
  if ((*(a1 + 239) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(a1 + 215) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(*(a1 + 216));
  if ((*(a1 + 215) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(a1 + 191) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(*(a1 + 192));
  if ((*(a1 + 191) & 0x80000000) == 0)
  {
LABEL_8:
    if ((*(a1 + 167) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(*(a1 + 168));
  if ((*(a1 + 167) & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(a1 + 143) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(*(a1 + 144));
  if ((*(a1 + 143) & 0x80000000) == 0)
  {
LABEL_10:
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(*(a1 + 120));
  if ((*(a1 + 119) & 0x80000000) == 0)
  {
LABEL_11:
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(*(a1 + 96));
  if ((*(a1 + 95) & 0x80000000) == 0)
  {
LABEL_12:
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(*(a1 + 72));
  if ((*(a1 + 71) & 0x80000000) == 0)
  {
LABEL_13:
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_29;
  }

LABEL_27:
  operator delete(*(a1 + 48));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_29:
  operator delete(*a1);
  return a1;
}

void std::__shared_ptr_pointer<HealthModule *,std::shared_ptr<HealthModule> ctu::SharedSynchronizable<HealthModule>::make_shared_ptr<HealthModule>(HealthModule*)::{lambda(HealthModule *)#1},std::allocator<HealthModule>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<HealthModule *,std::shared_ptr<HealthModule> ctu::SharedSynchronizable<HealthModule>::make_shared_ptr<HealthModule>(HealthModule*)::{lambda(HealthModule *)#1},std::allocator<HealthModule>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI12HealthModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI12HealthModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI12HealthModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI12HealthModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<HealthModule> ctu::SharedSynchronizable<HealthModule>::make_shared_ptr<HealthModule>(HealthModule*)::{lambda(HealthModule*)#1}::operator() const(HealthModule*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<HealthModule>::execute_wrapped<HealthModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(HealthModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<HealthModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<HealthModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  HealthModule::registerCommandHandlers_sync(**a1);
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

void sub_29713ECDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<HealthModule>::execute_wrapped<HealthModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(HealthModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<HealthModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<HealthModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  HealthModule::registerEventHandlers_sync(**a1);
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

void sub_29713EDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *HealthEventDB::create_default_global(HealthEventDB *this)
{
  v2 = operator new(0x68uLL);
  HealthEventDB::HealthEventDB(v2);
  *this = v2;
  result = operator new(0x20uLL);
  *result = &unk_2A1E26F90;
  result[1] = 0;
  result[2] = 0;
  result[3] = v2;
  *(this + 1) = result;
  return result;
}

void sub_29713EE5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<HealthEventDB>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::shared_ptr<HealthEventDB>::operator=[abi:ne200100](__int128 *a1)
{
  v1 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  v2 = off_2A18B74D8;
  *&qword_2A18B74D0 = v1;
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t std::__function::__func<HealthModule::registerEventHandlers_sync(void)::$_0,std::allocator<HealthModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E2BB70;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<HealthModule::registerEventHandlers_sync(void)::$_0,std::allocator<HealthModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E2BB70;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<HealthModule::registerEventHandlers_sync(void)::$_0,std::allocator<HealthModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E2BB70;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<HealthModule::registerEventHandlers_sync(void)::$_0,std::allocator<HealthModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E2BB70;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<HealthModule::registerEventHandlers_sync(void)::$_0,std::allocator<HealthModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<HealthModule::registerEventHandlers_sync(void)::$_0,std::allocator<HealthModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<HealthModule::registerEventHandlers_sync(void)::$_0,std::allocator<HealthModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
    v21 = v8;
    if (v8)
    {
      v9 = v8;
      if (!a1[2] || MEMORY[0x29C26CE60](v5) != MEMORY[0x29EDCAA00])
      {
        goto LABEL_27;
      }

      v10 = a1[2];
      v11 = a1[3];
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
      }

      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(v4);
      }

      if (v5)
      {
        xpc_retain(v5);
        v12 = v5;
        v13 = v7[10];
        if (!v13)
        {
LABEL_24:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }

      else
      {
        v12 = xpc_null_create();
        v13 = v7[10];
        if (!v13)
        {
          goto LABEL_24;
        }
      }

      v14 = v7[9];
      v15 = std::__shared_weak_count::lock(v13);
      if (!v15)
      {
        goto LABEL_24;
      }

      v16 = v15;
      v17 = operator new(0x28uLL);
      *v17 = v7;
      v17[1] = v10;
      v17[2] = v11;
      v17[3] = v4;
      v17[4] = v12;
      v18 = xpc_null_create();
      v19 = v7[11];
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = operator new(0x18uLL);
      *v20 = v17;
      v20[1] = v14;
      v20[2] = v16;
      dispatch_async_f(v19, v20, dispatch::async<void ctu::SharedSynchronizable<HealthModule>::execute_wrapped<HealthModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(HealthModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<HealthModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<HealthModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }

      xpc_release(v18);
      v9 = v21;
      if (v21)
      {
LABEL_27:
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }
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

void sub_29713F30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  xpc_release(v10);
  if (v9)
  {
    dispatch_group_leave(v9);
    dispatch_release(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<HealthModule::registerEventHandlers_sync(void)::$_0,std::allocator<HealthModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN12HealthModule26registerEventHandlers_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN12HealthModule26registerEventHandlers_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN12HealthModule26registerEventHandlers_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN12HealthModule26registerEventHandlers_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<HealthModule>::execute_wrapped<HealthModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(HealthModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<HealthModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<HealthModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v61 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v52 = v1;
  v2 = **a1;
  memset(__s1, 170, sizeof(__s1));
  value = xpc_dictionary_get_value(v1[4], *MEMORY[0x29EDBEAF8]);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  xpc::dyn_cast_or_default(__s1, object, *MEMORY[0x29EDBEFC0], v4);
  xpc_release(object[0]);
  v5 = *MEMORY[0x29EDBF210];
  v6 = strlen(*MEMORY[0x29EDBF210]);
  v7 = SHIBYTE(__s1[2]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) != 0)
  {
    if (v6 == __s1[1])
    {
      if (v6 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(__s1[0], v5, v6))
      {
LABEL_52:
        memset(object, 170, 24);
        v23 = xpc_dictionary_get_value(v1[4], *MEMORY[0x29EDBEEE0]);
        __p.__r_.__value_.__r.__words[0] = v23;
        if (v23)
        {
          xpc_retain(v23);
        }

        else
        {
          __p.__r_.__value_.__r.__words[0] = xpc_null_create();
        }

        xpc::dyn_cast_or_default(object, &__p, "", v24);
        xpc_release(__p.__r_.__value_.__l.__data_);
        v26 = *MEMORY[0x29EDBF5C0];
        v27 = strlen(*MEMORY[0x29EDBF5C0]);
        v28 = SHIBYTE(object[2]);
        if ((SHIBYTE(object[2]) & 0x8000000000000000) != 0)
        {
          if (v27 == object[1])
          {
            if (v27 == -1)
            {
              std::string::__throw_out_of_range[abi:ne200100]();
            }

            if (!memcmp(object[0], v26, v27))
            {
              goto LABEL_72;
            }
          }
        }

        else if (v27 == SHIBYTE(object[2]) && !memcmp(object, v26, v27))
        {
LABEL_72:
          memset(&__p, 170, sizeof(__p));
          v31 = xpc_dictionary_get_value(v1[4], *MEMORY[0x29EDBED88]);
          v55.__r_.__value_.__r.__words[0] = v31;
          if (v31)
          {
            xpc_retain(v31);
          }

          else
          {
            v55.__r_.__value_.__r.__words[0] = xpc_null_create();
          }

          xpc::dyn_cast_or_default(&__p, &v55, "", v32);
          xpc_release(v55.__r_.__value_.__l.__data_);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v55, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            v55 = __p;
          }

          v42 = HealthModule::classifyFailureCauseCode(v2, 1, &v55);
          HealthModule::updateHealthEvent_sync(v2, 1, v42);
          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v55.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_106;
        }

        v29 = *MEMORY[0x29EDBF6D8];
        v30 = strlen(*MEMORY[0x29EDBF6D8]);
        if ((v28 & 0x80000000) != 0)
        {
          if (v30 != object[1])
          {
            goto LABEL_106;
          }

          if (v30 == -1)
          {
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          if (memcmp(object[0], v29, v30))
          {
            goto LABEL_106;
          }
        }

        else if (v30 != v28 || memcmp(object, v29, v30))
        {
LABEL_106:
          if (SHIBYTE(object[2]) < 0)
          {
            operator delete(object[0]);
          }

          goto LABEL_108;
        }

        HealthModule::updateHealthEvent_sync(v2, 6, 0);
        goto LABEL_106;
      }
    }
  }

  else if (v6 == SHIBYTE(__s1[2]) && !memcmp(__s1, v5, v6))
  {
    goto LABEL_52;
  }

  v8 = *MEMORY[0x29EDBEB58];
  v9 = strlen(*MEMORY[0x29EDBEB58]);
  if ((v7 & 0x80000000) != 0)
  {
    if (v9 == __s1[1])
    {
      if (v9 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(__s1[0], v8, v9))
      {
        goto LABEL_54;
      }
    }
  }

  else if (v9 == v7 && !memcmp(__s1, v8, v9))
  {
LABEL_54:
    HealthModule::updateHealthEvent_sync(v2, 2, 0);
    HealthModule::sendUserNotificationForCellularDiagnostics(v25);
LABEL_108:
    HealthModule::checkFailuresAgainstThresholdAndEraseEFSAccordingly_sync(v2);
    goto LABEL_109;
  }

  v10 = *MEMORY[0x29EDBEFB8];
  v11 = strlen(*MEMORY[0x29EDBEFB8]);
  if ((v7 & 0x80000000) != 0)
  {
    if (v11 != __s1[1])
    {
      goto LABEL_108;
    }

    if (v11 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (memcmp(__s1[0], v10, v11))
    {
      goto LABEL_108;
    }
  }

  else if (v11 != v7 || memcmp(__s1, v10, v11))
  {
    goto LABEL_108;
  }

  if (*(v2 + 128))
  {
    v12 = *(v2 + 104);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(object[0]) = 0;
      _os_log_impl(&dword_296FF7000, v12, OS_LOG_TYPE_DEFAULT, "#I Baseband ping timer already running", object, 2u);
      v12 = *(v2 + 104);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(object[0]) = 0;
      _os_log_impl(&dword_296FF7000, v12, OS_LOG_TYPE_DEFAULT, "#I Canceling baseband ping timer", object, 2u);
    }

    (*(**(v2 + 128) + 16))(*(v2 + 128));
    v13 = *(v2 + 128);
    *(v2 + 128) = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    HealthModule::updateHealthEvent_sync(v2, 4, 0);
  }

  v14 = *(v2 + 104);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    object[0] = 0xA04000100;
    _os_log_impl(&dword_296FF7000, v14, OS_LOG_TYPE_DEFAULT, "#I Starting %u sec timer before pinging baseband", object, 8u);
  }

  v15 = *(v2 + 112);
  __p.__r_.__value_.__r.__words[0] = operator new(0x28uLL);
  *&__p.__r_.__value_.__r.__words[1] = xmmword_297227AD0;
  strcpy(__p.__r_.__value_.__l.__data_, "Baseband HealthModule Ping Timer");
  v16 = *(v2 + 88);
  v54 = v16;
  if (v16)
  {
    dispatch_retain(v16);
  }

  object[0] = MEMORY[0x29EDCA5F8];
  object[1] = 1174405120;
  object[2] = ___ZZZN12HealthModule26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke;
  object[3] = &__block_descriptor_tmp_55_0;
  object[4] = v2;
  object[5] = v1[1];
  v17 = v1[2];
  v60 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  aBlock = _Block_copy(object);
  ctu::TimerService::createOneShotTimer(v15, &__p, 0, 10000000, &v54, &aBlock);
  v18 = v55.__r_.__value_.__r.__words[0];
  v55.__r_.__value_.__r.__words[0] = 0;
  v19 = *(v2 + 128);
  *(v2 + 128) = v18;
  if (v19)
  {
    (*(*v19 + 8))(v19);
    v20 = v55.__r_.__value_.__r.__words[0];
    v55.__r_.__value_.__r.__words[0] = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v54)
  {
    dispatch_release(v54);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v21 = xpc_dictionary_create(0, 0, 0);
  if (v21 || (v21 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](v21) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v21);
      v22 = v21;
    }

    else
    {
      v22 = xpc_null_create();
    }
  }

  else
  {
    v22 = xpc_null_create();
    v21 = 0;
  }

  xpc_release(v21);
  v33 = time(0);
  v34 = xpc_int64_create(v33);
  if (!v34)
  {
    v34 = xpc_null_create();
  }

  xpc_dictionary_set_value(v22, *MEMORY[0x29EDBEF58], v34);
  v35 = xpc_null_create();
  xpc_release(v34);
  xpc_release(v35);
  pthread_mutex_lock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  if (!xmmword_2A18B74D0)
  {
    v37 = operator new(0x68uLL);
    HealthEventDB::HealthEventDB(v37);
    v58 = v37;
    v36 = operator new(0x20uLL);
    *v36 = &unk_2A1E26F90;
    v36[1] = 0;
    v36[2] = 0;
    v36[3] = v37;
    v38 = *(&xmmword_2A18B74D0 + 1);
    *&xmmword_2A18B74D0 = v37;
    *(&xmmword_2A18B74D0 + 1) = v36;
    if (!v38)
    {
      v55.__r_.__value_.__r.__words[0] = v37;
      v55.__r_.__value_.__l.__size_ = v36;
      goto LABEL_84;
    }

    if (!atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v38->__on_zero_shared)(v38);
      std::__shared_weak_count::__release_weak(v38);
    }
  }

  v36 = *(&xmmword_2A18B74D0 + 1);
  v37 = xmmword_2A18B74D0;
  *&v55.__r_.__value_.__l.__data_ = xmmword_2A18B74D0;
  if (*(&xmmword_2A18B74D0 + 1))
  {
LABEL_84:
    atomic_fetch_add_explicit(v36 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  v58 = v22;
  if (v22)
  {
    xpc_retain(v22);
  }

  else
  {
    v58 = xpc_null_create();
  }

  updated = HealthEventDB::updateBootStats(v37, &v58);
  xpc_release(v58);
  v58 = 0;
  size = v55.__r_.__value_.__l.__size_;
  if (v55.__r_.__value_.__l.__size_ && !atomic_fetch_add((v55.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (size->__on_zero_shared)(size);
    std::__shared_weak_count::__release_weak(size);
  }

  if (updated)
  {
    xpc_release(v22);
    if (v60)
    {
      std::__shared_weak_count::__release_weak(v60);
    }

    goto LABEL_108;
  }

  v41 = *(v2 + 104);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v55.__r_.__value_.__l.__data_) = 0;
    _os_log_error_impl(&dword_296FF7000, v41, OS_LOG_TYPE_ERROR, "Failed to update health DB", &v55, 2u);
  }

  xpc_release(v22);
  if (v60)
  {
    std::__shared_weak_count::__release_weak(v60);
  }

LABEL_109:
  if (SHIBYTE(__s1[2]) < 0)
  {
    operator delete(__s1[0]);
    v43 = v52;
    if (!v52)
    {
LABEL_111:
      v44 = a1;
      if (!a1)
      {
        goto LABEL_124;
      }

      goto LABEL_120;
    }
  }

  else
  {
    v43 = v52;
    if (!v52)
    {
      goto LABEL_111;
    }
  }

  xpc_release(v43[4]);
  v43[4] = 0;
  v45 = v43[3];
  if (v45)
  {
    dispatch_group_leave(v45);
    v46 = v43[3];
    if (v46)
    {
      dispatch_release(v46);
    }
  }

  v47 = v43[2];
  if (v47)
  {
    std::__shared_weak_count::__release_weak(v47);
  }

  operator delete(v43);
  v44 = a1;
  if (a1)
  {
LABEL_120:
    v48 = v44[2];
    if (v48 && !atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v49 = v44;
      (v48->__on_zero_shared)(v48);
      std::__shared_weak_count::__release_weak(v48);
      v44 = v49;
    }

    operator delete(v44);
  }

LABEL_124:
  v50 = *MEMORY[0x29EDCA608];
}

void sub_29713FDC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *aBlock, dispatch_object_t a12, xpc_object_t object, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, xpc_object_t a31, xpc_object_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, std::__shared_weak_count *a41)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  std::unique_ptr<HealthModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<HealthModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<HealthModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<HealthModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 32));
    *(v1 + 32) = 0;
    v3 = *(v1 + 24);
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = *(v1 + 24);
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    v5 = *(v1 + 16);
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZZN12HealthModule26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    v12 = v4;
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = v3[13];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I Pinging baseband to verify it is healthy", buf, 2u);
        }

        v8[0] = MEMORY[0x29EDCA5F8];
        v8[1] = 0x40000000;
        v8[2] = ___ZZZN12HealthModule26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke_50;
        v8[3] = &__block_descriptor_tmp_52_0;
        v8[4] = v3;
        v7 = _Block_copy(v8);
        v9 = v7;
        HealthModule::getBasebandFWVersion_sync(v3, &v9);
        if (v7)
        {
          _Block_release(v7);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_29714019C(_Unwind_Exception *a1)
{
  if (v1)
  {
    _Block_release(v1);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v2 - 48);
  _Unwind_Resume(a1);
}

void ___ZZZN12HealthModule26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke_50(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v11 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v4 = *(a2 + 23);
  if (v4 < 0)
  {
    if (*(a2 + 8))
    {
      goto LABEL_3;
    }
  }

  else if (*(a2 + 23))
  {
LABEL_3:
    v5 = *(v3 + 13);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if ((v4 & 0x80000000) != 0)
      {
        v2 = *v2;
      }

      v9 = 136315138;
      v10 = v2;
      _os_log_impl(&dword_296FF7000, v5, OS_LOG_TYPE_DEFAULT, "#I Successfully received ping response from baseband (firmware version is %s)", &v9, 0xCu);
    }

    HealthModule::updateHealthEvent_sync(v3, 3, 0);
    v6 = *MEMORY[0x29EDCA608];
    return;
  }

  v7 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 32);

  HealthModule::updateHealthEvent_sync(v8, 4, 0);
}

uint64_t std::__function::__func<HealthModule::registerEventHandlers_sync(void)::$_1,std::allocator<HealthModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E2BC20;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<HealthModule::registerEventHandlers_sync(void)::$_1,std::allocator<HealthModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E2BC20;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<HealthModule::registerEventHandlers_sync(void)::$_1,std::allocator<HealthModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E2BC20;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<HealthModule::registerEventHandlers_sync(void)::$_1,std::allocator<HealthModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E2BC20;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<HealthModule::registerEventHandlers_sync(void)::$_1,std::allocator<HealthModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<HealthModule::registerEventHandlers_sync(void)::$_1,std::allocator<HealthModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<HealthModule::registerEventHandlers_sync(void)::$_1,std::allocator<HealthModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
    v19 = v8;
    if (v8)
    {
      v9 = v8;
      if (!a1[2] || MEMORY[0x29C26CE60](v5) != MEMORY[0x29EDCAA00])
      {
        goto LABEL_25;
      }

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
LABEL_22:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }

      else
      {
        v10 = xpc_null_create();
        v11 = v7[10];
        if (!v11)
        {
          goto LABEL_22;
        }
      }

      v12 = v7[9];
      v13 = std::__shared_weak_count::lock(v11);
      if (!v13)
      {
        goto LABEL_22;
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
      dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<HealthModule>::execute_wrapped<HealthModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(HealthModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<HealthModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<HealthModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      xpc_release(v16);
      v9 = v19;
      if (v19)
      {
LABEL_25:
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }
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

void sub_2971406B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  xpc_release(v10);
  if (v9)
  {
    dispatch_group_leave(v9);
    dispatch_release(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<HealthModule::registerEventHandlers_sync(void)::$_1,std::allocator<HealthModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN12HealthModule26registerEventHandlers_syncEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN12HealthModule26registerEventHandlers_syncEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN12HealthModule26registerEventHandlers_syncEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN12HealthModule26registerEventHandlers_syncEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<HealthModule>::execute_wrapped<HealthModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(HealthModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<HealthModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<HealthModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v22 = *a1;
  v1 = **a1;
  memset(__s1, 170, 24);
  value = xpc_dictionary_get_value(v22[2], *MEMORY[0x29EDBED38]);
  *&object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *&object = xpc_null_create();
  }

  xpc::dyn_cast_or_default(__s1, &object, "", v3);
  xpc_release(object);
  v4 = *(v1 + 104);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = __s1;
    if (__s1[2] < 0)
    {
      v5 = __s1[0];
    }

    LODWORD(object) = 136315138;
    *(&object + 4) = v5;
    _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I %s detected", &object, 0xCu);
  }

  v6 = *MEMORY[0x29EDBF798];
  v7 = strlen(*MEMORY[0x29EDBF798]);
  v8 = HIBYTE(__s1[2]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) != 0)
  {
    if (v7 != __s1[1])
    {
      goto LABEL_32;
    }

    if (v7 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (memcmp(__s1[0], v6, v7))
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (v7 != SHIBYTE(__s1[2]))
    {
      goto LABEL_12;
    }

    if (memcmp(__s1, v6, v7))
    {
LABEL_11:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_32;
    }
  }

  v11 = *(v1 + 104);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(object) = 0;
    _os_log_impl(&dword_296FF7000, v11, OS_LOG_TYPE_DEFAULT, "#I Cleaning up health event db due to change in hardware model", &object, 2u);
  }

  pthread_mutex_lock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  if (xmmword_2A18B74D0)
  {
LABEL_21:
    v12 = *(&xmmword_2A18B74D0 + 1);
    v13 = xmmword_2A18B74D0;
    object = xmmword_2A18B74D0;
    if (!*(&xmmword_2A18B74D0 + 1))
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v13 = operator new(0x68uLL);
  HealthEventDB::HealthEventDB(v13);
  __s1[3] = v13;
  v12 = operator new(0x20uLL);
  *v12 = &unk_2A1E26F90;
  v12[1] = 0;
  v12[2] = 0;
  v12[3] = v13;
  v14 = *(&xmmword_2A18B74D0 + 1);
  *&xmmword_2A18B74D0 = v13;
  *(&xmmword_2A18B74D0 + 1) = v12;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    goto LABEL_21;
  }

  *&object = v13;
  *(&object + 1) = v12;
LABEL_27:
  atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
LABEL_28:
  pthread_mutex_unlock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  HealthEventDB::clearDB(v13);
  v15 = *(&object + 1);
  if (*(&object + 1) && !atomic_fetch_add((*(&object + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  if ((__s1[2] & 0x8000000000000000) == 0)
  {
LABEL_12:
    v9 = v22;
    if (!v22)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(__s1[0]);
  v9 = v22;
  if (!v22)
  {
LABEL_13:
    v10 = a1;
    if (!a1)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

LABEL_33:
  xpc_release(v9[2]);
  v9[2] = 0;
  v16 = v9[1];
  if (v16)
  {
    dispatch_group_leave(v16);
    v17 = v9[1];
    if (v17)
    {
      dispatch_release(v17);
    }
  }

  operator delete(v9);
  v10 = a1;
  if (a1)
  {
LABEL_37:
    v18 = v10[2];
    if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v19 = v10;
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
      v10 = v19;
    }

    operator delete(v10);
  }

LABEL_41:
  v20 = *MEMORY[0x29EDCA608];
}

void sub_297140B08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, HealthEventDB *a17, xpc_object_t object)
{
  std::unique_ptr<HealthEventDB>::~unique_ptr[abi:ne200100](&a17);
  pthread_mutex_unlock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<HealthModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<HealthModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<HealthModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<HealthModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
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

uint64_t __copy_helper_block_e8_40c41_ZTSNSt3__110shared_ptrIK12HealthModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c41_ZTSNSt3__110shared_ptrIK12HealthModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void boost::throw_exception<std::length_error>(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  v3 = boost::wrapexcept<std::length_error>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<std::length_error>::wrapexcept(uint64_t a1, const std::logic_error *a2)
{
  *a1 = &unk_2A1E24E58;
  std::logic_error::logic_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &unk_2A1E2BD20;
  *(a1 + 8) = &unk_2A1E2BD50;
  *(a1 + 24) = &unk_2A1E2BD78;
  return a1;
}

uint64_t boost::wrapexcept<std::length_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_2A1E24EB0;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  MEMORY[0x29C26BBD0](a1 + 8);
  return a1;
}

char *boost::wrapexcept<std::length_error>::clone(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_2A1E24E58;
  std::logic_error::logic_error((v2 + 8), (a1 + 8));
  *(v2 + 1) = MEMORY[0x29EDC95D8] + 16;
  v3 = *(a1 + 32);
  *(v2 + 3) = &unk_2A1E24EB0;
  *(v2 + 4) = v3;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  *(v2 + 40) = *(a1 + 40);
  *(v2 + 14) = *(a1 + 56);
  *v2 = &unk_2A1E2BD20;
  *(v2 + 1) = &unk_2A1E2BD50;
  *(v2 + 3) = &unk_2A1E2BD78;
  boost::exception_detail::copy_boost_exception((v2 + 24), a1 + 24);
  return v2;
}

void boost::wrapexcept<std::length_error>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<std::length_error>::wrapexcept(exception, a1);
}

void boost::wrapexcept<std::length_error>::~wrapexcept(void *a1)
{
  a1[3] = &unk_2A1E24EB0;
  v2 = a1[4];
  if (v2 && (*(*v2 + 32))(v2))
  {
    a1[4] = 0;
  }

  MEMORY[0x29C26BBD0](a1 + 1);

  operator delete(a1);
}

void non-virtual thunk toboost::wrapexcept<std::length_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_2A1E24EB0;
  v1 = *(a1 + 24);
  if (v1 && (*(*v1 + 32))(*(a1 + 24)))
  {
    *(a1 + 24) = 0;
  }

  JUMPOUT(0x29C26BBD0);
}

{
  *(a1 + 16) = &unk_2A1E24EB0;
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = a1;
    v3 = (*(*v1 + 32))(*(a1 + 24));
    a1 = v2;
    if (v3)
    {
      *(v2 + 24) = 0;
    }
  }

  v4 = (a1 - 8);
  MEMORY[0x29C26BBD0]();

  operator delete(v4);
}

void non-virtual thunk toboost::wrapexcept<std::length_error>::~wrapexcept(void *a1)
{
  *a1 = &unk_2A1E24EB0;
  v2 = a1[1];
  if (v2 && (*(*v2 + 32))(v2))
  {
    a1[1] = 0;
  }

  JUMPOUT(0x29C26BBD0);
}

{
  *a1 = &unk_2A1E24EB0;
  v2 = a1[1];
  if (v2 && (*(*v2 + 32))(v2))
  {
    a1[1] = 0;
  }

  MEMORY[0x29C26BBD0](a1 - 2);

  operator delete(a1 - 3);
}

uint64_t boost::wrapexcept<std::length_error>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1E24E58;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = MEMORY[0x29EDC95D8] + 16;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_2A1E24EB0;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_2A1E2BD20;
  *(a1 + 8) = &unk_2A1E2BD50;
  *(a1 + 24) = &unk_2A1E2BD78;
  return a1;
}

uint64_t boost::circular_buffer<HealthEvent,std::allocator<HealthEvent>>::~circular_buffer(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = 0;
    v3 = *(a1 + 16);
    do
    {
      (**v3)(v3);
      v4 = *(a1 + 8);
      v3 = (*(a1 + 16) + 24);
      *(a1 + 16) = v3;
      if (v3 == v4)
      {
        v3 = *a1;
        *(a1 + 16) = *a1;
      }

      ++v2;
    }

    while (v2 < *(a1 + 32));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t __cxx_global_var_init_24()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_296FF7000);
  }

  return result;
}

uint64_t __cxx_global_var_init_25()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<HealthEventDB>::~PthreadMutexGuardPolicy, &ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance, &dword_296FF7000);
  }

  return result;
}

uint64_t __cxx_global_var_init_26()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<DeviceHistoryDB>::~PthreadMutexGuardPolicy, &ctu::Singleton<DeviceHistoryDB,DeviceHistoryDB,ctu::PthreadMutexGuardPolicy<DeviceHistoryDB>>::sInstance, &dword_296FF7000);
  }

  return result;
}

uint64_t hasBasebandEntitlement(xpc_object_t *a1, int a2)
{
  v4 = MEMORY[0x29C26CE60](*a1);
  v5 = MEMORY[0x29EDCAA00];
  if (v4 == MEMORY[0x29EDCAA00])
  {
    remote_connection = xpc_dictionary_get_remote_connection(*a1);
    if (remote_connection)
    {
      v8 = remote_connection;
      xpc_retain(remote_connection);
    }

    else
    {
      v8 = xpc_null_create();
    }

    if (MEMORY[0x29C26CE60](v8) != MEMORY[0x29EDCA9F0])
    {
      v6 = 0;
LABEL_75:
      xpc_release(v8);
      return v6 & 1;
    }

    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v39 = v9;
    v40 = v9;
    xpc_connection_get_audit_token();
    xdict = 0xAAAAAAAAAAAAAAAALL;
    v10 = xpc_copy_entitlement_for_token();
    v11 = v10;
    if (v10)
    {
      xdict = v10;
    }

    else
    {
      v11 = xpc_null_create();
      xdict = v11;
      if (!v11)
      {
        v12 = xpc_null_create();
        v11 = 0;
        goto LABEL_15;
      }
    }

    if (MEMORY[0x29C26CE60](v11) == v5)
    {
      xpc_retain(v11);
      goto LABEL_16;
    }

    v12 = xpc_null_create();
LABEL_15:
    xdict = v12;
LABEL_16:
    xpc_release(v11);
    v13 = xpc_null_create();
    if (MEMORY[0x29C26CE60](xdict) == v5)
    {
      __p = &xdict;
      v42 = kKeyEntitlementFineGrained;
      xpc::dict::object_proxy::operator xpc::array(&__p, object);
      v14 = object[0];
      object[0] = xpc_null_create();
      xpc_release(v13);
      xpc_release(object[0]);
      v13 = v14;
    }

    v15 = MEMORY[0x29C26CE60](v13);
    v16 = MEMORY[0x29EDCA9E0];
    if (v15 != MEMORY[0x29EDCA9E0])
    {
      v6 = 0;
LABEL_36:
      if ((v6 & 1) == 0 && (a2 & 1) == 0)
      {
        if (MEMORY[0x29C26CE60](xdict) == v5)
        {
          value = xpc_dictionary_get_value(xdict, kKeyEntitlementBasebanddAllow);
          v33 = value;
          __p = value;
          if (value)
          {
            xpc_retain(value);
          }

          else
          {
            v33 = xpc_null_create();
            __p = v33;
          }

          if (MEMORY[0x29C26CE60](v33) == MEMORY[0x29EDCAA40])
          {
            v6 = 0;
          }

          else
          {
            v6 = xpc::dyn_cast_or_default(&__p, 0);
            v33 = __p;
          }

          xpc_release(v33);
        }

        else
        {
          v6 = 0;
        }
      }

      xpc_release(v13);
      xpc_release(xdict);
      goto LABEL_75;
    }

    if (v13)
    {
      xpc_retain(v13);
      v17 = v13;
    }

    else
    {
      v17 = xpc_null_create();
      if (!v17)
      {
        v17 = xpc_null_create();
        v18 = 0;
LABEL_24:
        xpc_release(v18);
        if (v13)
        {
          xpc_retain(v13);
          v19 = v13;
        }

        else
        {
          v19 = xpc_null_create();
        }

        if (MEMORY[0x29C26CE60](v13) == v16)
        {
          count = xpc_array_get_count(v13);
          if (v19)
          {
            goto LABEL_29;
          }
        }

        else
        {
          count = 0;
          if (v19)
          {
LABEL_29:
            xpc_retain(v19);
            v35 = v19;
            goto LABEL_32;
          }
        }

        v35 = xpc_null_create();
LABEL_32:
        xpc_release(v19);
        if (!count && v17 == v35)
        {
          v6 = 0;
LABEL_35:
          xpc_release(v35);
          xpc_release(v17);
          goto LABEL_36;
        }

        v6 = 0;
        v21 = 0;
        v22 = count - 1;
        while (1)
        {
          v37 = 0xAAAAAAAAAAAAAAAALL;
          v23 = xpc_array_get_value(v17, v21);
          v37 = v23;
          if (v23)
          {
            xpc_retain(v23);
          }

          else
          {
            v37 = xpc_null_create();
          }

          memset(object, 170, sizeof(object));
          __p = 0;
          v42 = 0;
          v43 = 0;
          xpc::dyn_cast_or_default();
          if (SHIBYTE(v43) < 0)
          {
            operator delete(__p);
            v24 = HIBYTE(object[2]);
            if (a2)
            {
LABEL_46:
              v25 = kBasebandXpcRestricted;
              v26 = strlen(kBasebandXpcRestricted);
              v27 = v26;
              if ((v24 & 0x80) != 0)
              {
                if (v26 != object[1])
                {
                  goto LABEL_58;
                }

                if (v26 == -1)
                {
                  std::string::__throw_out_of_range[abi:ne200100]();
                }

                goto LABEL_57;
              }

              goto LABEL_52;
            }
          }

          else
          {
            v24 = HIBYTE(object[2]);
            if (a2)
            {
              goto LABEL_46;
            }
          }

          v25 = kBasebandXpc;
          v28 = strlen(kBasebandXpc);
          v27 = v28;
          if ((v24 & 0x80) != 0)
          {
            if (v28 != object[1])
            {
              goto LABEL_58;
            }

            if (v28 == -1)
            {
              std::string::__throw_out_of_range[abi:ne200100]();
            }

LABEL_57:
            if (memcmp(object[0], v25, v27))
            {
              goto LABEL_58;
            }

            goto LABEL_65;
          }

LABEL_52:
          if (v27 != v24 || memcmp(object, v25, v27))
          {
LABEL_58:
            v29 = 1;
            if ((v24 & 0x80) == 0)
            {
              goto LABEL_60;
            }

LABEL_59:
            operator delete(object[0]);
            goto LABEL_60;
          }

LABEL_65:
          v29 = 0;
          v6 = 1;
          if ((v24 & 0x80) != 0)
          {
            goto LABEL_59;
          }

LABEL_60:
          xpc_release(v37);
          if (v29)
          {
            v30 = v21 + 1;
            if (v22 != v21++)
            {
              continue;
            }

            v21 = v30;
            if (v17 != v35)
            {
              continue;
            }
          }

          goto LABEL_35;
        }
      }
    }

    xpc_retain(v17);
    v18 = v17;
    goto LABEL_24;
  }

  v6 = 0;
  return v6 & 1;
}

void sub_297141A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t a15, xpc_object_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, xpc_object_t object, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  xpc_release(object);
  xpc_release(v28);
  xpc_release(a16);
  xpc_release(v27);
  _Unwind_Resume(a1);
}

RouterDelegate *RouterDelegate::create@<X0>(RouterDelegate **a1@<X8>)
{
  v3 = operator new(0x20uLL);
  RouterDelegate::RouterDelegate(v3);
  *a1 = v3;
  result = operator new(0x20uLL);
  *result = &unk_2A1E2BE20;
  *(result + 1) = 0;
  *(result + 2) = 0;
  *(result + 3) = v3;
  a1[1] = result;
  return result;
}

void RouterDelegate::RouterDelegate(RouterDelegate *this)
{
  v27 = *MEMORY[0x29EDCA608];
  *this = &unk_2A1E2BDC8;
  v2 = (this + 8);
  ctu::OsLogContext::OsLogContext(&v19, "com.apple.telephony.abm", "ipc.router.delegate");
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26B010](v2, buf);
  MEMORY[0x29C26B020](buf);
  ctu::OsLogContext::~OsLogContext(&v19);
  *this = &unk_2A1E2BDC8;
  *(this + 2) = 0;
  v3 = this + 16;
  *(this + 3) = 0;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v20[16] = v4;
  v21 = v4;
  v19 = v4;
  *v20 = v4;
  *v20 = operator new(0x38uLL);
  *&v20[8] = xmmword_29722B400;
  strcpy(*v20, "/var/wireless/Library/Logs/CoreTelephonyTraceScratch");
  *&v20[24] = 0;
  *&v21 = 0xB00000019;
  DWORD2(v21) = 17;
  LODWORD(v19) = 1;
  *(&v19 + 1) = RouterDelegate::getTime;
  std::string::__assign_external(v20, *MEMORY[0x29EDBFC00]);
  if ((v20[23] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&__p, *v20, *&v20[8]);
  }

  else
  {
    __p = *v20;
  }

  v16 = *&v20[24];
  if (*&v20[24])
  {
    dispatch_retain(*&v20[24]);
  }

  v17 = v21;
  v18 = DWORD2(v21);
  mav_router_t::create();
  v5 = *buf;
  *buf = 0;
  *&buf[8] = 0;
  v6 = *(this + 3);
  *(this + 1) = v5;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (v16)
  {
    dispatch_release(v16);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v8 = *v2;
  v9 = os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT);
  v10 = *v3;
  if (v9)
  {
    v12 = *(v10 + 16);
    *buf = 134217984;
    *&buf[4] = v12;
    _os_log_impl(&dword_296FF7000, v8, OS_LOG_TYPE_DEFAULT, "#I MavRouter is %p", buf, 0xCu);
    v8 = *v2;
    v10 = *v3;
    if (!os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
LABEL_18:
      if (*(v10 + 24))
      {
        goto LABEL_19;
      }

LABEL_26:
      v14 = GetOsLogContext()[1];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315906;
        *&buf[4] = "ABM ASSERT";
        *&buf[12] = 2080;
        *&buf[14] = "fRouter->interface";
        v23 = 2080;
        v24 = "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/BasebandManager/Server/Transport/QMI/Driver/RouterDelegate.cpp";
        v25 = 1024;
        v26 = 28;
        _os_log_fault_impl(&dword_296FF7000, v14, OS_LOG_TYPE_FAULT, "%s (%s): File: %s Line: %d", buf, 0x26u);
      }

      __break(1u);
    }
  }

  else if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_18;
  }

  v13 = *(v10 + 24);
  *buf = 134217984;
  *&buf[4] = v13;
  _os_log_impl(&dword_296FF7000, v8, OS_LOG_TYPE_DEFAULT, "#I MavInterface is %p", buf, 0xCu);
  if (!*(*v3 + 24))
  {
    goto LABEL_26;
  }

LABEL_19:
  if (*&v20[24])
  {
    dispatch_release(*&v20[24]);
  }

  if ((v20[23] & 0x80000000) != 0)
  {
    operator delete(*v20);
  }

  v11 = *MEMORY[0x29EDCA608];
}

void sub_297141FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mav_router_parameters_t::~mav_router_parameters_t(va);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v10);
  MEMORY[0x29C26B020](v9);
  _Unwind_Resume(a1);
}

void sub_29714202C(_Unwind_Exception *a1)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v2);
  MEMORY[0x29C26B020](v1);
  _Unwind_Resume(a1);
}

uint64_t RouterDelegate::getTime(RouterDelegate *this, unsigned int *a2, unsigned int *a3)
{
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v6.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  result = gettimeofday(&v6, 0);
  *this = v6.tv_sec;
  *a2 = 1000 * v6.tv_usec;
  return result;
}

void mav_router_parameters_t::~mav_router_parameters_t(mav_router_parameters_t *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

void RouterDelegate::~RouterDelegate(RouterDelegate *this)
{
  v13 = *MEMORY[0x29EDCA608];
  *this = &unk_2A1E2BDC8;
  if (!*(*(this + 2) + 24))
  {
    v4 = GetOsLogContext()[1];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v5 = 136315906;
      v6 = "ABM ASSERT";
      v7 = 2080;
      v8 = "fRouter->interface";
      v9 = 2080;
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/BasebandManager/Server/Transport/QMI/Driver/RouterDelegate.cpp";
      v11 = 1024;
      v12 = 33;
      _os_log_fault_impl(&dword_296FF7000, v4, OS_LOG_TYPE_FAULT, "%s (%s): File: %s Line: %d", &v5, 0x26u);
    }

    __break(1u);
  }

  v2 = *(this + 3);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x29C26B020](this + 8);
  v3 = *MEMORY[0x29EDCA608];
}

{
  RouterDelegate::~RouterDelegate(this);

  operator delete(v1);
}

void sub_29714228C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t RouterDelegate::getRouterInstance@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 24);
  *a2 = *(this + 16);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t RouterDelegate::getChannelForService(uint64_t a1, uint64_t *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    v9 = 136315138;
    v10 = v5;
    _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I Get channel for service %s", &v9, 0xCu);
  }

  v6 = *(a1 + 16);
  result = mav_router_t::get_channel_for_service();
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL RouterDelegate::engage(RouterDelegate *this)
{
  v2 = *(this + 1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "#D Engaging", v4, 2u);
  }

  return mav_router::device::controller::engage(*(*(this + 2) + 24)) == 0;
}

uint64_t RouterDelegate::disengage(RouterDelegate *this)
{
  v1 = *(this + 1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&dword_296FF7000, v1, OS_LOG_TYPE_DEBUG, "#D Disengaging", v3, 2u);
  }

  return 1;
}

BOOL RouterDelegate::sleep(RouterDelegate *this)
{
  v2 = *(this + 1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "#D Sleeping", v4, 2u);
  }

  return (*(**(*(this + 2) + 24) + 56))(*(*(this + 2) + 24)) == 0;
}

BOOL RouterDelegate::teardown(RouterDelegate *this)
{
  v2 = *(this + 1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "#D Tearingdown", v4, 2u);
  }

  return (*(**(*(this + 2) + 24) + 40))(*(*(this + 2) + 24)) == 0;
}

BOOL RouterDelegate::recover(RouterDelegate *this)
{
  v2 = *(this + 1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "#D Recovering", v4, 2u);
  }

  return (*(**(*(this + 2) + 24) + 48))(*(*(this + 2) + 24)) == 0;
}

uint64_t RouterDelegate::hasFatalErrorOccurred(RouterDelegate *this)
{
  v6 = 0;
  (*(**(*(this + 2) + 24) + 72))(*(*(this + 2) + 24), &v6);
  v2 = 0;
  if (v6 != 1)
  {
    return v2 & 1;
  }

  v3 = *(this + 1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Fatal error has occurred", v5, 2u);
    v2 = v6;
    return v2 & 1;
  }

  return 1;
}

void RouterDelegate::getFatalErrorReason(RouterDelegate *this@<X0>, uint64_t *a2@<X8>)
{
  v11 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(**(*(this + 2) + 24) + 80))(*(*(this + 2) + 24), a2);
  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v4)
  {
    v6 = *(this + 1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *a2;
      if (v5 >= 0)
      {
        v7 = a2;
      }

      v9 = 136315138;
      v10 = v7;
      _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I Fatal error reason is '%s'", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
}

void sub_297142838(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<RouterDelegate *,std::shared_ptr<RouterDelegate>::__shared_ptr_default_delete<RouterDelegate,RouterDelegate>,std::allocator<RouterDelegate>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<RouterDelegate *,std::shared_ptr<RouterDelegate>::__shared_ptr_default_delete<RouterDelegate,RouterDelegate>,std::allocator<RouterDelegate>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<RouterDelegate *,std::shared_ptr<RouterDelegate>::__shared_ptr_default_delete<RouterDelegate,RouterDelegate>,std::allocator<RouterDelegate>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000029722C34BLL)
  {
    if (((v2 & 0x800000029722C34BLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029722C34BLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029722C34BLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void abm::AWDHelperSetConnection(uint64_t *a1)
{
  v1 = a1[1];
  v5 = *a1;
  v6 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  abm::AWDHelper::create(&v5, &v7);
  pthread_mutex_lock(&ctu::Singleton<abm::AWDHelper,abm::AWDHelper,ctu::PthreadMutexGuardPolicy<abm::AWDHelper>>::sInstance);
  v2 = off_2A18B72A8;
  *&qword_2A18B72A0 = v7;
  v7 = 0uLL;
  pthread_mutex_unlock(&ctu::Singleton<abm::AWDHelper,abm::AWDHelper,ctu::PthreadMutexGuardPolicy<abm::AWDHelper>>::sInstance);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(&v7 + 1);
  if (*(&v7 + 1) && !atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

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

void sub_297142A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void abm::AWDHelper::create(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x10uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    *v4 = v6;
    v4[1] = v7;
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *v4 = v6;
    v4[1] = 0;
  }

  *a2 = v4;
  v8 = operator new(0x20uLL);
  *v8 = &unk_2A1E2BE70;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = v5;
  a2[1] = v8;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_297142BB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  std::unique_ptr<ABMServer>::~unique_ptr[abi:ne200100](va1);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void abm::AWDHelperGetConnection(void *a1@<X8>)
{
  pthread_mutex_lock(&ctu::Singleton<abm::AWDHelper,abm::AWDHelper,ctu::PthreadMutexGuardPolicy<abm::AWDHelper>>::sInstance);
  v3 = qword_2A18B72A0;
  if (!qword_2A18B72A0)
  {
    v4 = operator new(0x10uLL);
    wis::WISServerConnection::WISServerConnection(v4);
    v16 = v4;
    v5 = operator new(0x20uLL);
    v5->__shared_owners_ = 0;
    v5->__vftable = &unk_2A1E2BEC0;
    v5->__shared_weak_owners_ = 0;
    v5[1].__vftable = v4;
    v17 = v5;
    v14 = v4;
    v15 = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    abm::AWDHelper::create(&v14, &v13);
    v6 = v15;
    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v7 = v17;
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v8 = v13;
    v13 = 0uLL;
    v9 = off_2A18B72A8;
    *&qword_2A18B72A0 = v8;
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v10 = *(&v13 + 1);
    if (*(&v13 + 1) && !atomic_fetch_add((*(&v13 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v3 = qword_2A18B72A0;
  }

  v11 = off_2A18B72A8;
  if (off_2A18B72A8)
  {
    atomic_fetch_add_explicit(off_2A18B72A8 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<abm::AWDHelper,abm::AWDHelper,ctu::PthreadMutexGuardPolicy<abm::AWDHelper>>::sInstance);
  v12 = v3[1];
  *a1 = *v3;
  a1[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }
}

void sub_297142E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va1);
  pthread_mutex_unlock(&ctu::Singleton<abm::AWDHelper,abm::AWDHelper,ctu::PthreadMutexGuardPolicy<abm::AWDHelper>>::sInstance);
  _Unwind_Resume(a1);
}

uint64_t ctu::PthreadMutexGuardPolicy<abm::AWDHelper>::~PthreadMutexGuardPolicy(uint64_t a1)
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

void std::__shared_ptr_pointer<abm::AWDHelper *,std::shared_ptr<abm::AWDHelper>::__shared_ptr_default_delete<abm::AWDHelper,abm::AWDHelper>,std::allocator<abm::AWDHelper>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<abm::AWDHelper *,std::shared_ptr<abm::AWDHelper>::__shared_ptr_default_delete<abm::AWDHelper,abm::AWDHelper>,std::allocator<abm::AWDHelper>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = v1[1];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v3 = v1;
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      v1 = v3;
    }

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<abm::AWDHelper *,std::shared_ptr<abm::AWDHelper>::__shared_ptr_default_delete<abm::AWDHelper,abm::AWDHelper>,std::allocator<abm::AWDHelper>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000029722C416)
  {
    if (((v2 & 0x800000029722C416 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029722C416))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029722C416 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<wis::WISServerConnection *,std::shared_ptr<wis::WISServerConnection>::__shared_ptr_default_delete<wis::WISServerConnection,wis::WISServerConnection>,std::allocator<wis::WISServerConnection>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<wis::WISServerConnection *,std::shared_ptr<wis::WISServerConnection>::__shared_ptr_default_delete<wis::WISServerConnection,wis::WISServerConnection>,std::allocator<wis::WISServerConnection>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    wis::WISServerConnection::~WISServerConnection(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<wis::WISServerConnection *,std::shared_ptr<wis::WISServerConnection>::__shared_ptr_default_delete<wis::WISServerConnection,wis::WISServerConnection>,std::allocator<wis::WISServerConnection>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000029722C4ECLL)
  {
    if (((v2 & 0x800000029722C4ECLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029722C4ECLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029722C4ECLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

wis::WISServerConnection **std::unique_ptr<wis::WISServerConnection>::~unique_ptr[abi:ne200100](wis::WISServerConnection **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    wis::WISServerConnection::~WISServerConnection(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

uint64_t __cxx_global_var_init_15()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<abm::AWDHelper>::~PthreadMutexGuardPolicy, &ctu::Singleton<abm::AWDHelper,abm::AWDHelper,ctu::PthreadMutexGuardPolicy<abm::AWDHelper>>::sInstance, &dword_296FF7000);
  }

  return result;
}

void lcdm::constructSubTLVWithUInt32Value(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *__dst = 0u;
  v27 = 0u;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(__p.__r_.__value_.__r.__words[2]) - 5 >= 0xFFFFFFFC)
    {
      goto LABEL_14;
    }

    v6 = 0;
    goto LABEL_38;
  }

  if (!__p.__r_.__value_.__l.__size_ || __p.__r_.__value_.__l.__size_ > 4)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v6 = 0;
    goto LABEL_38;
  }

  while (1)
  {
LABEL_14:
    if ((v5 & 0x80) == 0)
    {
      size = v5;
      if (v5 < 4)
      {
        p_p = &__p;
LABEL_22:
        p_p->__r_.__value_.__s.__data_[size] = 32;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          __p.__r_.__value_.__l.__size_ = size + 1;
        }

        else
        {
          *(&__p.__r_.__value_.__s + 23) = size + 1;
        }

        v7 = &p_p->__r_.__value_.__s.__data_[size + 1];
        goto LABEL_13;
      }

      strncpy(__dst, &__p, v5);
      *&__dst[4] = 4;
      v14 = *&__dst[8];
      v13 = v27;
      v15 = v27 - *&__dst[8];
      if (v27 - *&__dst[8] > 3uLL)
      {
        goto LABEL_34;
      }

LABEL_25:
      if (*(&v27 + 1) - v13 >= 4 - v15)
      {
        v20 = &v13[4 - v15];
        bzero(v13, 4 - v15);
        *&v27 = v20;
      }

      else
      {
        v16 = 2 * (*(&v27 + 1) - v14);
        if (v16 <= 4)
        {
          v16 = 4;
        }

        if (*(&v27 + 1) - v14 >= 0x3FFFFFFFFFFFFFFFuLL)
        {
          v17 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v16;
        }

        v18 = operator new(v17);
        bzero(&v18[v15], 4 - v15);
        memcpy(v18, v14, v15);
        *&__dst[8] = v18;
        *&v27 = v18 + 4;
        *(&v27 + 1) = &v18[v17];
        if (v14)
        {
          operator delete(v14);
        }
      }

      goto LABEL_37;
    }

    size = __p.__r_.__value_.__l.__size_;
    if (__p.__r_.__value_.__l.__size_ >= 4)
    {
      break;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    v10 = __p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
    if ((__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1 != __p.__r_.__value_.__l.__size_)
    {
      goto LABEL_22;
    }

    v11 = operator new(0x17uLL);
    v12 = v11;
    if (size)
    {
      memmove(v11, p_p, size);
    }

    *(v12 + size) = 32;
    operator delete(p_p);
    __p.__r_.__value_.__l.__size_ = v10;
    __p.__r_.__value_.__r.__words[2] = 0x8000000000000017;
    v7 = (v12 + v10);
    __p.__r_.__value_.__r.__words[0] = v12;
LABEL_13:
    *v7 = 0;
    v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  v19 = __p.__r_.__value_.__r.__words[0];
  strncpy(__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  operator delete(v19);
  *&__dst[4] = 4;
  v14 = *&__dst[8];
  v13 = v27;
  v15 = v27 - *&__dst[8];
  if (v27 - *&__dst[8] <= 3uLL)
  {
    goto LABEL_25;
  }

LABEL_34:
  if (v15 != 4)
  {
    *&v27 = v14 + 4;
  }

LABEL_37:
  **&__dst[8] = a2;
  v6 = 1;
LABEL_38:
  *a3 = v6;
  v21 = *&__dst[8];
  *(a3 + 8) = *__dst;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  v22 = v27 - v21;
  if (v27 != v21)
  {
    if ((v22 & 0x8000000000000000) != 0)
    {
      std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
    }

    v23 = operator new(v27 - v21);
    *(a3 + 16) = v23;
    v24 = &v23[v22];
    *(a3 + 32) = &v23[v22];
    memcpy(v23, v21, v22);
    *(a3 + 24) = v24;
  }

  if (v21)
  {
    *&v27 = v21;
    operator delete(v21);
  }
}

void sub_2971434DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t lcdm::setSubTLVType(char *__dst, char *__src)
{
  v2 = __src;
  v3 = __src[23];
  if ((__src[23] & 0x80000000) == 0)
  {
    if (__src[23])
    {
      v4 = __src[23];
      goto LABEL_5;
    }

    return 0;
  }

  v4 = *(__src + 1);
  if (!v4)
  {
    return 0;
  }

LABEL_5:
  if (v4 > 4)
  {
    return 0;
  }

  while ((v3 & 0x80) == 0)
  {
    if (v3 > 3)
    {
      v7 = v3;
      goto LABEL_14;
    }

LABEL_9:
    std::string::append(v2, " ", 1uLL);
    v3 = v2[23];
  }

  v7 = *(v2 + 1);
  if (v7 < 4)
  {
    goto LABEL_9;
  }

  v2 = *v2;
LABEL_14:
  strncpy(__dst, v2, v7);
  return 1;
}

uint64_t lcdm::setSubTLVLength(uint64_t a1, unint64_t a2)
{
  if (HIDWORD(a2))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_2A1E2BF28;
  }

  *(a1 + 4) = a2;
  return 1;
}

BOOL sub_297143664(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  return v1 == 0;
}

uint64_t lcdm::setSubTLVValueToUInt32(void *a1, int a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = v4 - v5;
  if ((v4 - v5) > 3)
  {
    if (v6 != 4)
    {
      a1[2] = v5 + 4;
    }
  }

  else
  {
    v7 = a1[3];
    if (v7 - v4 >= 4 - v6)
    {
      bzero(v4, 4 - v6);
      a1[2] = v5 + 4;
    }

    else
    {
      v8 = v7 - v5;
      v9 = 2 * v8;
      if (2 * v8 <= 4)
      {
        v9 = 4;
      }

      if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      v11 = operator new(v10);
      bzero(&v11[v6], 4 - v6);
      memcpy(v11, v5, v6);
      a1[1] = v11;
      a1[2] = v11 + 4;
      a1[3] = &v11[v10];
      if (v5)
      {
        operator delete(v5);
      }
    }
  }

  *a1[1] = a2;
  return 1;
}

void lcdm::constructSubTLVWithUInt64Value(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *__dst = 0u;
  v27 = 0u;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(__p.__r_.__value_.__r.__words[2]) - 5 >= 0xFFFFFFFC)
    {
      goto LABEL_14;
    }

    v6 = 0;
    goto LABEL_38;
  }

  if (!__p.__r_.__value_.__l.__size_ || __p.__r_.__value_.__l.__size_ > 4)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v6 = 0;
    goto LABEL_38;
  }

  while (1)
  {
LABEL_14:
    if ((v5 & 0x80) == 0)
    {
      size = v5;
      if (v5 < 4)
      {
        p_p = &__p;
LABEL_22:
        p_p->__r_.__value_.__s.__data_[size] = 32;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          __p.__r_.__value_.__l.__size_ = size + 1;
        }

        else
        {
          *(&__p.__r_.__value_.__s + 23) = size + 1;
        }

        v7 = &p_p->__r_.__value_.__s.__data_[size + 1];
        goto LABEL_13;
      }

      strncpy(__dst, &__p, v5);
      *&__dst[4] = 8;
      v14 = *&__dst[8];
      v13 = v27;
      v15 = v27 - *&__dst[8];
      if (v27 - *&__dst[8] > 7uLL)
      {
        goto LABEL_34;
      }

LABEL_25:
      if (*(&v27 + 1) - v13 >= 8 - v15)
      {
        v20 = &v13[8 - v15];
        bzero(v13, 8 - v15);
        *&v27 = v20;
      }

      else
      {
        v16 = 2 * (*(&v27 + 1) - v14);
        if (v16 <= 8)
        {
          v16 = 8;
        }

        if (*(&v27 + 1) - v14 >= 0x3FFFFFFFFFFFFFFFuLL)
        {
          v17 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v16;
        }

        v18 = operator new(v17);
        bzero(&v18[v15], 8 - v15);
        memcpy(v18, v14, v15);
        *&__dst[8] = v18;
        *&v27 = v18 + 8;
        *(&v27 + 1) = &v18[v17];
        if (v14)
        {
          operator delete(v14);
        }
      }

      goto LABEL_37;
    }

    size = __p.__r_.__value_.__l.__size_;
    if (__p.__r_.__value_.__l.__size_ >= 4)
    {
      break;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    v10 = __p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
    if ((__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1 != __p.__r_.__value_.__l.__size_)
    {
      goto LABEL_22;
    }

    v11 = operator new(0x17uLL);
    v12 = v11;
    if (size)
    {
      memmove(v11, p_p, size);
    }

    *(v12 + size) = 32;
    operator delete(p_p);
    __p.__r_.__value_.__l.__size_ = v10;
    __p.__r_.__value_.__r.__words[2] = 0x8000000000000017;
    v7 = (v12 + v10);
    __p.__r_.__value_.__r.__words[0] = v12;
LABEL_13:
    *v7 = 0;
    v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  v19 = __p.__r_.__value_.__r.__words[0];
  strncpy(__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  operator delete(v19);
  *&__dst[4] = 8;
  v14 = *&__dst[8];
  v13 = v27;
  v15 = v27 - *&__dst[8];
  if (v27 - *&__dst[8] <= 7uLL)
  {
    goto LABEL_25;
  }

LABEL_34:
  if (v15 != 8)
  {
    *&v27 = v14 + 8;
  }

LABEL_37:
  **&__dst[8] = a2;
  v6 = 1;
LABEL_38:
  *a3 = v6;
  v21 = *&__dst[8];
  *(a3 + 8) = *__dst;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  v22 = v27 - v21;
  if (v27 != v21)
  {
    if ((v22 & 0x8000000000000000) != 0)
    {
      std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
    }

    v23 = operator new(v27 - v21);
    *(a3 + 16) = v23;
    v24 = &v23[v22];
    *(a3 + 32) = &v23[v22];
    memcpy(v23, v21, v22);
    *(a3 + 24) = v24;
  }

  if (v21)
  {
    *&v27 = v21;
    operator delete(v21);
  }
}

void sub_297143A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t lcdm::setSubTLVValueToUInt64(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = v4 - v5;
  if ((v4 - v5) > 7)
  {
    if (v6 != 8)
    {
      a1[2] = v5 + 8;
    }
  }

  else
  {
    v7 = a1[3];
    if (v7 - v4 >= 8 - v6)
    {
      bzero(v4, 8 - v6);
      a1[2] = v5 + 8;
    }

    else
    {
      v8 = v7 - v5;
      v9 = 2 * v8;
      if (2 * v8 <= 8)
      {
        v9 = 8;
      }

      if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      v11 = operator new(v10);
      bzero(&v11[v6], 8 - v6);
      memcpy(v11, v5, v6);
      a1[1] = v11;
      a1[2] = v11 + 8;
      a1[3] = &v11[v10];
      if (v5)
      {
        operator delete(v5);
      }
    }
  }

  *a1[1] = a2;
  return 1;
}

void lcdm::asString(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = strnlen(a1, 4uLL);
  memset(__dst, 170, sizeof(__dst));
  if (v4 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    __dst[1] = v5;
    __dst[2] = (v7 | 0x8000000000000000);
    __dst[0] = v6;
    goto LABEL_9;
  }

  HIBYTE(__dst[2]) = v4;
  v6 = __dst;
  if (v4)
  {
LABEL_9:
    memcpy(v6, a1, v5);
  }

  *(v5 + v6) = 0;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28[7] = v8;
  v28[8] = v8;
  v28[5] = v8;
  v28[6] = v8;
  v28[3] = v8;
  v28[4] = v8;
  v28[1] = v8;
  v28[2] = v8;
  v27 = v8;
  v28[0] = v8;
  *__p = v8;
  v26 = v8;
  v23 = v8;
  *__src = v8;
  v21 = v8;
  v22 = v8;
  v20 = v8;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v20);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "Type = '", 8);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v10 = __dst;
  }

  else
  {
    v10 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) >= 0)
  {
    v11 = HIBYTE(__dst[2]);
  }

  else
  {
    v11 = __dst[1];
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "', Length = ", 12);
  MEMORY[0x29C26BE00](v13, *(a1 + 4));
  if ((BYTE8(v27) & 0x10) != 0)
  {
    v15 = v27;
    if (v27 < __src[1])
    {
      *&v27 = __src[1];
      v15 = __src[1];
    }

    v16 = __src[0];
    v14 = v15 - __src[0];
    if ((v15 - __src[0]) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_36;
    }
  }

  else
  {
    if ((BYTE8(v27) & 8) == 0)
    {
      v14 = 0;
      a2[23] = 0;
      goto LABEL_30;
    }

    v16 = *(&v22 + 1);
    v14 = *(&v23 + 1) - *(&v22 + 1);
    if (*(&v23 + 1) - *(&v22 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_36:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v14 | 7) + 1;
    }

    v18 = operator new(v17);
    *(a2 + 1) = v14;
    *(a2 + 2) = v17 | 0x8000000000000000;
    *a2 = v18;
    a2 = v18;
    goto LABEL_29;
  }

  a2[23] = v14;
  if (v14)
  {
LABEL_29:
    memmove(a2, v16, v14);
  }

LABEL_30:
  a2[v14] = 0;
  *&v20 = *MEMORY[0x29EDC9528];
  v19 = *(MEMORY[0x29EDC9528] + 72);
  *(&v20 + *(v20 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v21 = v19;
  *(&v21 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v21 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v22);
  std::iostream::~basic_iostream();
  MEMORY[0x29C26C030](v28);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_297143EF8(_Unwind_Exception *exception_object)
{
  if (*(v1 - 65) < 0)
  {
    operator delete(*(v1 - 88));
  }

  _Unwind_Resume(exception_object);
}

unint64_t lcdm::getSubTLVValueAsUInt32(uint64_t a1)
{
  if (*(a1 + 4) == 4)
  {
    return (**(a1 + 8) << 32) | 1;
  }

  else
  {
    return 0;
  }
}

uint64_t lcdm::setSubTLVTypeFromBuf(_DWORD *a1, unint64_t a2, _DWORD *a3)
{
  if (a2 < 4)
  {
    return 0;
  }

  *a3 = *a1;
  return 1;
}

uint64_t lcdm::setSubTLVLengthFromBuf(_DWORD *a1, unint64_t a2, uint64_t a3)
{
  if (a2 < 4)
  {
    return 0;
  }

  *(a3 + 4) = *a1;
  return 1;
}

uint64_t lcdm::setSubTLVValueFromBuf(const void *a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 4);
  if (a2 < v3)
  {
    return 0;
  }

  v8 = *(a3 + 8);
  v7 = *(a3 + 16);
  v9 = v7 - v8;
  v10 = v3 - (v7 - v8);
  if (v3 <= v7 - v8)
  {
    if (v3 < v7 - v8)
    {
      *(a3 + 16) = &v8[v3];
    }
  }

  else
  {
    v11 = *(a3 + 24);
    if (v11 - v7 >= v10)
    {
      bzero(v7, v10);
      *(a3 + 16) = &v8[v3];
      v16 = *(a3 + 4);
      if (!v16)
      {
        return 1;
      }

      goto LABEL_16;
    }

    v12 = v11 - v8;
    v13 = 2 * v12;
    if (2 * v12 <= v3)
    {
      v13 = *(a3 + 4);
    }

    if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    v15 = operator new(v14);
    bzero(&v15[v9], v10);
    memcpy(v15, v8, v9);
    *(a3 + 8) = v15;
    *(a3 + 16) = &v15[v3];
    *(a3 + 24) = &v15[v14];
    if (v8)
    {
      operator delete(v8);
      v16 = *(a3 + 4);
      if (!v16)
      {
        return 1;
      }

      goto LABEL_16;
    }
  }

  v16 = *(a3 + 4);
  if (v16)
  {
LABEL_16:
    memmove(*(a3 + 8), a1, v16);
    v17 = *(a3 + 4);
  }

  return 1;
}

uint64_t lcdm::serializeSubTLV(_DWORD *a1, unint64_t a2, uint64_t a3)
{
  if (a2 < *(a3 + 4) + 8)
  {
    return 0;
  }

  *a1 = *a3;
  a1[1] = *(a3 + 4);
  memcpy(a1 + 2, *(a3 + 8), *(a3 + 4));
  v5 = *(a3 + 4) + 8;
  return 1;
}

uint64_t lcdm::serializeSubTLVs(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = a3[1];
  v4 = a3[4];
  v5 = (v3 + 8 * (v4 >> 7));
  v6 = *v5 + 32 * (v4 & 0x7F);
  if (*(v6 + 4) != 4 || a2 < **(v6 + 8))
  {
    return 0;
  }

  if (a3[2] == v3)
  {
    return 1;
  }

  v10 = *(v3 + (((a3[5] + v4) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a3[5] + v4) & 0x7F);
  if (v6 == v10)
  {
    return 1;
  }

  v12 = 0;
  v8 = 1;
  while (a2 - v12 >= *(v6 + 4) + 8)
  {
    v13 = (a1 + v12);
    *v13 = *v6;
    v13[1] = *(v6 + 4);
    memcpy((a1 + v12 + 8), *(v6 + 8), *(v6 + 4));
    v14 = v6 + 32;
    if (v6 + 32 - *v5 == 4096)
    {
      v15 = v5[1];
      ++v5;
      v14 = v15;
    }

    v12 += *(v6 + 4) + 8;
    v6 = v14;
    if (v14 == v10)
    {
      return v8;
    }
  }

  return 0;
}

void lcdm::deserializeSubTLV(unsigned int *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 > 7)
  {
    v5 = *a1;
    v4 = a1[1];
    if (a2 - 8 >= v4)
    {
      if (v4)
      {
        v7 = operator new(a1[1]);
        v8 = &v7[v4];
        memmove(v7, a1 + 2, v4);
      }

      else
      {
        v7 = 0;
        v8 = 0;
      }

      *a3 = 1;
      *(a3 + 8) = v4 + 8;
      *(a3 + 16) = v5 | (v4 << 32);
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 24) = 0;
      v9 = v8 - v7;
      if (v8 != v7)
      {
        if (v9 < 0)
        {
          std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
        }

        v10 = operator new(v8 - v7);
        *(a3 + 24) = v10;
        v11 = &v10[v9];
        *(a3 + 40) = &v10[v9];
        memcpy(v10, v7, v8 - v7);
        *(a3 + 32) = v11;
      }

      if (v7)
      {

        operator delete(v7);
      }
    }

    else
    {
      *a3 = 0;
      *(a3 + 8) = 8;
      *(a3 + 16) = v5 | (v4 << 32);
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 24) = 0;
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0;
  }
}

void sub_2971443E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void lcdm::deserializeToSubTLVs(unsigned int *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  lcdm::deserializeSubTLV(a1, a2, v44);
  v6 = v45;
  v7 = v46;
  v49 = v46;
  v39 = v47;
  v50 = v47;
  v51 = v48;
  if ((v44[0] & 1) == 0)
  {
    *a3 = 0;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    v16 = (v54 >> 4) & 0xFFFFFFFFFFFFFF8;
    if (v53 == *(&v52 + 1))
    {
      v17 = 0;
    }

    else
    {
      v17 = (*(*(&v52 + 1) + v16) + 32 * (v54 & 0x7F));
      v18 = ((*(&v54 + 1) + v54) >> 4) & 0xFFFFFFFFFFFFFF8;
      v19 = (BYTE8(v54) + v54) & 0x7F;
      if ((*(*(&v52 + 1) + v18) + 32 * v19) != v17)
      {
        v20 = v19 - (v54 & 0x7F) + 16 * (v18 - v16);
LABEL_27:
        std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>((a3 + 8), (*(&v52 + 1) + v16), v17, v20);
        goto LABEL_28;
      }
    }

    v20 = 0;
    goto LABEL_27;
  }

  std::deque<lcdm::SubTLV>::push_back(&v52, &v49);
  if (HIDWORD(v7) != 4 || a2 != *v39)
  {
    *a3 = 0;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    v16 = (v54 >> 4) & 0xFFFFFFFFFFFFFF8;
    if (v53 == *(&v52 + 1))
    {
      v17 = 0;
    }

    else
    {
      v17 = (*(*(&v52 + 1) + v16) + 32 * (v54 & 0x7F));
      v21 = ((*(&v54 + 1) + v54) >> 4) & 0xFFFFFFFFFFFFFF8;
      v22 = (BYTE8(v54) + v54) & 0x7F;
      if ((*(*(&v52 + 1) + v21) + 32 * v22) != v17)
      {
        v20 = v22 - (v54 & 0x7F) + 16 * (v21 - v16);
        goto LABEL_27;
      }
    }

    v20 = 0;
    goto LABEL_27;
  }

  v8 = a2 - v6;
  while (v8)
  {
    lcdm::deserializeSubTLV((a1 + v6), a2 - v6, v44);
    v9 = v44[0];
    v10 = v45;
    v41 = v46;
    v40 = v47;
    v42 = v47;
    v43 = v48;
    if ((v44[0] & 1) == 0)
    {
      *a3 = 0;
      *(a3 + 8) = 0u;
      *(a3 + 24) = 0u;
      *(a3 + 40) = 0u;
      v11 = (v54 >> 4) & 0xFFFFFFFFFFFFFF8;
      if (v53 == *(&v52 + 1))
      {
        v12 = 0;
      }

      else
      {
        v12 = (*(*(&v52 + 1) + v11) + 32 * (v54 & 0x7F));
        v13 = ((*(&v54 + 1) + v54) >> 4) & 0xFFFFFFFFFFFFFF8;
        v14 = (BYTE8(v54) + v54) & 0x7F;
        if ((*(*(&v52 + 1) + v13) + 32 * v14) != v12)
        {
          v15 = v14 - (v54 & 0x7F) + 16 * (v13 - v11);
LABEL_14:
          std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>((a3 + 8), (*(&v52 + 1) + v11), v12, v15);
          goto LABEL_15;
        }
      }

      v15 = 0;
      goto LABEL_14;
    }

    std::deque<lcdm::SubTLV>::push_back(&v52, &v41);
    v8 -= v10;
    v6 += v10;
LABEL_15:
    if (v40)
    {
      operator delete(v40);
    }

    if ((v9 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  *a3 = 1;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  v34 = (v54 >> 4) & 0xFFFFFFFFFFFFFF8;
  if (v53 == *(&v52 + 1))
  {
    v35 = 0;
  }

  else
  {
    v35 = (*(*(&v52 + 1) + v34) + 32 * (v54 & 0x7F));
    v36 = ((*(&v54 + 1) + v54) >> 4) & 0xFFFFFFFFFFFFFF8;
    v37 = (BYTE8(v54) + v54) & 0x7F;
    if ((*(*(&v52 + 1) + v36) + 32 * v37) != v35)
    {
      v38 = v37 - (v54 & 0x7F) + 16 * (v36 - v34);
      goto LABEL_59;
    }
  }

  v38 = 0;
LABEL_59:
  std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>((a3 + 8), (*(&v52 + 1) + v34), v35, v38);
LABEL_28:
  if (v39)
  {
    operator delete(v39);
  }

  v23 = *(&v52 + 1);
  v24 = v53;
  if (v53 == *(&v52 + 1))
  {
    v24 = *(&v52 + 1);
    *(&v54 + 1) = 0;
    v29 = 0;
  }

  else
  {
    v25 = (*(&v52 + 1) + 8 * (v54 >> 7));
    v26 = *v25;
    v27 = *v25 + 32 * (v54 & 0x7F);
    v28 = *(*(&v52 + 1) + (((*(&v54 + 1) + v54) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(&v54 + 1) + v54) & 0x7F);
    if (v27 == v28)
    {
      *(&v54 + 1) = 0;
      v29 = (v53 - *(&v52 + 1)) >> 3;
      if (v29 >= 3)
      {
        goto LABEL_33;
      }
    }

    else
    {
      do
      {
        v31 = *(v27 + 8);
        if (v31)
        {
          *(v27 + 16) = v31;
          operator delete(v31);
          v26 = *v25;
        }

        v27 += 32;
        if (v27 - v26 == 4096)
        {
          v32 = v25[1];
          ++v25;
          v26 = v32;
          v27 = v32;
        }
      }

      while (v27 != v28);
      v23 = *(&v52 + 1);
      v24 = v53;
      *(&v54 + 1) = 0;
      v29 = (v53 - *(&v52 + 1)) >> 3;
      if (v29 >= 3)
      {
        do
        {
LABEL_33:
          operator delete(*v23);
          v24 = v53;
          v23 = (*(&v52 + 1) + 8);
          *(&v52 + 1) = v23;
          v29 = (v53 - v23) >> 3;
        }

        while (v29 > 2);
      }
    }
  }

  if (v29 == 1)
  {
    v30 = 64;
LABEL_46:
    *&v54 = v30;
  }

  else if (v29 == 2)
  {
    v30 = 128;
    goto LABEL_46;
  }

  if (v23 != v24)
  {
    do
    {
      v33 = *v23++;
      operator delete(v33);
    }

    while (v23 != v24);
    if (v53 != *(&v52 + 1))
    {
      *&v53 = v53 + ((*(&v52 + 1) - v53 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v52)
  {
    operator delete(v52);
  }
}

void sub_29714488C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  std::__split_buffer<lcdm::SubTLV *>::~__split_buffer(v9 + 8);
  if (!a9)
  {
    std::deque<lcdm::SubTLV>::~deque[abi:ne200100](v10 - 112);
    _Unwind_Resume(a1);
  }

  operator delete(a9);
  std::deque<lcdm::SubTLV>::~deque[abi:ne200100](v10 - 112);
  _Unwind_Resume(a1);
}

void std::deque<lcdm::SubTLV>::push_back(uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = v4 - v5;
  if (v4 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = 16 * (v4 - v5) - 1;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40) + v8;
  if (v7 == v9)
  {
    if (v8 >= 0x80)
    {
      *(a1 + 32) = v8 - 128;
      v53 = *v5;
      *(a1 + 8) = v5 + 1;
      goto LABEL_7;
    }

    v10 = *(a1 + 24);
    v11 = &v10[-*a1];
    if (v6 < v11)
    {
      if (v10 != v4)
      {
        v53 = operator new(0x1000uLL);
        std::__split_buffer<lcdm::SubTLV *>::emplace_back<lcdm::SubTLV *&>(a1, &v53);
        goto LABEL_22;
      }

      v53 = operator new(0x1000uLL);
      std::__split_buffer<lcdm::SubTLV *>::emplace_front<lcdm::SubTLV *>(a1, &v53);
      v30 = *(a1 + 8);
      v53 = *v30;
      *(a1 + 8) = v30 + 1;
LABEL_7:
      std::__split_buffer<lcdm::SubTLV *>::emplace_back<lcdm::SubTLV *&>(a1, &v53);
LABEL_22:
      v5 = *(a1 + 8);
      v9 = *(a1 + 40) + *(a1 + 32);
      goto LABEL_23;
    }

    v12 = v11 >> 2;
    if (v10 == *a1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    if (v13 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v14 = 8 * v13;
    v15 = operator new(8 * v13);
    v16 = operator new(0x1000uLL);
    v17 = v16;
    v18 = &v15[v6];
    v19 = &v15[v14];
    if (v6 != v14)
    {
      goto LABEL_18;
    }

    if (v6 >= 1)
    {
      v18 -= ((v6 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
LABEL_18:
      *v18 = v16;
      v20 = v18 + 8;
      if (v4 != v5)
      {
        goto LABEL_36;
      }

LABEL_19:
      v21 = v18;
LABEL_20:
      v22 = *a1;
      *a1 = v15;
      *(a1 + 8) = v21;
      *(a1 + 16) = v20;
      *(a1 + 24) = v19;
      if (v22)
      {
        operator delete(v22);
      }

      goto LABEL_22;
    }

    if (v4 == v5)
    {
      v31 = 1;
    }

    else
    {
      v31 = v6 >> 2;
    }

    if (v31 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v18 = operator new(8 * v31);
    v19 = &v18[8 * v31];
    operator delete(v15);
    v32 = *(a1 + 8);
    v4 = *(a1 + 16);
    v15 = v18;
    *v18 = v17;
    v20 = v18 + 8;
    if (v4 == v32)
    {
      goto LABEL_19;
    }

LABEL_36:
    while (v18 != v15)
    {
      v33 = v18;
LABEL_35:
      v34 = *(v4 - 1);
      v4 -= 8;
      *(v33 - 1) = v34;
      v21 = v33 - 8;
      v18 = v21;
      if (v4 == *(a1 + 8))
      {
        goto LABEL_20;
      }
    }

    if (v20 < v19)
    {
      v33 = &v15[8 * ((((v19 - v20) >> 3) + 1 + ((((v19 - v20) >> 3) + 1) >> 63)) >> 1)];
      v36 = v20 - v15;
      v35 = v20 == v15;
      v20 += 8 * ((((v19 - v20) >> 3) + 1 + ((((v19 - v20) >> 3) + 1) >> 63)) >> 1);
      if (!v35)
      {
        memmove(v33, v18, v36);
      }

      goto LABEL_35;
    }

    if (v19 == v15)
    {
      v37 = 1;
    }

    else
    {
      v37 = (v19 - v15) >> 2;
    }

    if (v37 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v38 = operator new(8 * v37);
    v39 = v38;
    v40 = (v37 + 3) >> 2;
    v33 = &v38[8 * v40];
    v41 = v20 - v15;
    v35 = v20 == v15;
    v20 = v33;
    if (!v35)
    {
      v20 = &v33[v41];
      v42 = v41 - 8;
      if (v42 >= 0x18 && (v43 = 8 * v40, (&v38[8 * v40] - v18) >= 0x20))
      {
        v47 = (v42 >> 3) + 1;
        v48 = 8 * (v47 & 0x3FFFFFFFFFFFFFFCLL);
        v44 = &v33[v48];
        v45 = &v18[v48];
        v49 = (v18 + 16);
        v50 = &v38[v43 + 16];
        v51 = v47 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v52 = *v49;
          *(v50 - 1) = *(v49 - 1);
          *v50 = v52;
          v49 += 2;
          v50 += 32;
          v51 -= 4;
        }

        while (v51);
        if (v47 == (v47 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_49;
        }
      }

      else
      {
        v44 = &v38[8 * v40];
        v45 = v18;
      }

      do
      {
        v46 = *v45;
        v45 += 8;
        *v44 = v46;
        v44 += 8;
      }

      while (v44 != v20);
    }

LABEL_49:
    v19 = &v38[8 * v37];
    operator delete(v15);
    v15 = v39;
    goto LABEL_35;
  }

LABEL_23:
  v23 = *(v5 + ((v9 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v9 & 0x7F);
  v24 = *a2;
  v23[1] = 0;
  *v23 = v24;
  v23[2] = 0;
  v23[3] = 0;
  v26 = a2[1];
  v25 = a2[2];
  v27 = v25 - v26;
  if (v25 != v26)
  {
    if ((v27 & 0x8000000000000000) != 0)
    {
      std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
    }

    v28 = operator new(v25 - v26);
    v23[1] = v28;
    v23[2] = v28;
    v29 = &v28[v27];
    v23[3] = &v28[v27];
    memcpy(v28, v26, v27);
    v23[2] = v29;
  }

  ++*(a1 + 40);
}

void sub_297144CE4(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void gsl::narrowing_error::~narrowing_error(std::exception *this)
{
  std::exception::~exception(this);

  operator delete(v1);
}

void *Stats::Stats(void *a1, char *a2)
{
  v2 = a2;
  if (a2[23] < 0)
  {
    v2 = *a2;
  }

  ctu::OsLogContext::OsLogContext(v5, "com.apple.telephony.abm", v2);
  ctu::SharedLoggable<Stats,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(a1 + 1, v2, QOS_CLASS_DEFAULT);
  ctu::OsLogContext::~OsLogContext(v5);
  *a1 = &unk_2A1E2BF50;
  return a1;
}

void *ctu::SharedLoggable<Stats,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(void *a1, const char *a2, dispatch_qos_class_t qos_class)
{
  v5 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v6 = dispatch_queue_create(a2, v5);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v6;
  if (v6)
  {
    v7 = v6;
    dispatch_retain(v6);
    a1[3] = 0;
    dispatch_release(v7);
  }

  else
  {
    a1[3] = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26B010](a1 + 4, v9);
  MEMORY[0x29C26B020](v9);
  return a1;
}

void Stats::~Stats(Stats *this)
{
  MEMORY[0x29C26B020](this + 40);
  v2 = *(this + 4);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t Stats::create@<X0>(int a1@<W0>, void *a2@<X8>)
{
  v12 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  a2[1] = 0;
  if (a1)
  {
    v6 = GetOsLogContext()[1];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v7 = 136315906;
      *&v7[4] = "ABM ASSERT";
      *&v7[12] = 2080;
      *&v7[14] = "statsType != statsType";
      v8 = 2080;
      v9 = "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/BasebandManager/Server/Stats/Stats.cpp";
      v10 = 1024;
      v11 = 33;
      _os_log_fault_impl(&dword_296FF7000, v6, OS_LOG_TYPE_FAULT, "%s (%s): File: %s Line: %d", v7, 0x26u);
    }

    __break(1u);
  }

  BootStats::createInternal(v7);
  v3 = *v7;
  *a2 = *v7;
  result = v3.n128_u64[0];
  if (v3.n128_u64[0])
  {
    result = (*(*v3.n128_u64[0] + 16))(v3.n128_u64[0], 0, v3);
  }

  v5 = *MEMORY[0x29EDCA608];
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
      MEMORY[0x29C26B020](this + 24);
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
  MEMORY[0x29C26B020](this + 24);
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
  MEMORY[0x29C26B010](a1 + 24, &v25);
  MEMORY[0x29C26B020](&v25);
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
  v8 = off_2A18B75C0;
  if (!off_2A18B75C0)
  {
    SharedData::create_default_global(&v26);
    v9 = *&v26.__r_.__value_.__l.__data_;
    *&v26.__r_.__value_.__l.__data_ = 0uLL;
    v10 = *(&off_2A18B75C0 + 1);
    off_2A18B75C0 = v9;
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

    v8 = off_2A18B75C0;
  }

  v23 = v8;
  v24 = *(&off_2A18B75C0 + 1);
  if (*(&off_2A18B75C0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B75C0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v12 = *MEMORY[0x29EDBFC30];
  v13 = strlen(*MEMORY[0x29EDBFC30]);
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

void sub_29714564C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  __clang_call_terminate(a1);
}

void ServerLogging::init(os_unfair_lock_s *this)
{
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___ZN13ServerLogging4initEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_15;
  v2[4] = this;
  os_unfair_lock_lock(this + 4);
  ___ZN13ServerLogging4initEv_block_invoke(v2);
  os_unfair_lock_unlock(this + 4);
}

void ___ZN13ServerLogging4initEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Init", v4, 2u);
  }

  v3 = ServerLogging::monitorSnapshotPath_sync(v1);
  *(v1 + 10) = v3;
  ServerLogging::clearScratchFolders_sync(v3);
}

NSObject *ServerLogging::monitorSnapshotPath_sync(ServerLogging *this)
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = this + 56;
  v2 = *(this + 7);
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v20.st_blksize = v4;
  *v20.st_qspare = v4;
  v20.st_birthtimespec = v4;
  *&v20.st_size = v4;
  v20.st_mtimespec = v4;
  v20.st_ctimespec = v4;
  *&v20.st_uid = v4;
  v20.st_atimespec = v4;
  *&v20.st_dev = v4;
  if (*(this + 79) >= 0)
  {
    v5 = this + 56;
  }

  else
  {
    v5 = v2;
  }

  if (stat(v5, &v20))
  {
    v6 = *(this + 3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v3;
      if (*(this + 79) < 0)
      {
        v7 = *v3;
      }

      v20.st_dev = 136315138;
      *&v20.st_mode = v7;
      _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I Snapshot path %s was not found, so recreating it", &v20, 0xCu);
    }

    support::fs::createDir(v3, 0x1EDu, 1);
  }

  if (*(this + 79) < 0)
  {
    v8 = open(*v3, 0x8000);
    if ((v8 & 0x80000000) != 0)
    {
LABEL_17:
      result = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v8 = open(v3, 0x8000);
    if ((v8 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }
  }

  v9 = v8;
  v10 = v8;
  global_queue = dispatch_get_global_queue(17, 0);
  v12 = dispatch_source_create(MEMORY[0x29EDCA5D8], v10, 0x21uLL, global_queue);
  if (!v12)
  {
    close(v9);
    goto LABEL_17;
  }

  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 0x40000000;
  handler[2] = ___ZN13ServerLogging24monitorSnapshotPath_syncEv_block_invoke;
  handler[3] = &__block_descriptor_tmp_7;
  handler[4] = this;
  v19 = v9;
  v13 = v12;
  dispatch_source_set_event_handler(v12, handler);
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 0x40000000;
  v16[2] = ___ZN13ServerLogging24monitorSnapshotPath_syncEv_block_invoke_8;
  v16[3] = &__block_descriptor_tmp_9_0;
  v17 = v9;
  dispatch_source_set_cancel_handler(v13, v16);
  dispatch_activate(v13);
  result = v13;
LABEL_18:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void ServerLogging::clearScratchFolders_sync(ServerLogging *this)
{
  v1 = *MEMORY[0x29EDBFBF0];
  v2 = strlen(*MEMORY[0x29EDBFBF0]);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v3 = v2;
  if (v2 >= 0x17)
  {
    if ((v2 | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (v2 | 7) + 1;
    }

    v4 = operator new(v5);
    __dst[1] = v3;
    v9 = v5 | 0x8000000000000000;
    __dst[0] = v4;
    goto LABEL_9;
  }

  HIBYTE(v9) = v2;
  v4 = __dst;
  if (v2)
  {
LABEL_9:
    memmove(v4, v1, v3);
  }

  *(v3 + v4) = 0;
  support::fs::createDir(__dst, 0x1EDu, 1);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__dst[0]);
  }

  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_async(global_queue, &__block_literal_global_13);
  capabilities::abs::logScratchPath(__dst, v7);
  support::fs::createDir(__dst, 0x1EDu, 1);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_297145B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN13ServerLogging24clearScratchFolders_syncEv_block_invoke()
{
  v0 = *MEMORY[0x29EDBFBF0];
  v1 = strlen(*MEMORY[0x29EDBFBF0]);
  if (v1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v2 = v1;
  if (v1 >= 0x17)
  {
    if ((v1 | 7) == 0x17)
    {
      v4 = 25;
    }

    else
    {
      v4 = (v1 | 7) + 1;
    }

    v3 = operator new(v4);
    __dst[1] = v2;
    v6 = v4 | 0x8000000000000000;
    __dst[0] = v3;
    goto LABEL_9;
  }

  HIBYTE(v6) = v1;
  v3 = __dst;
  if (v1)
  {
LABEL_9:
    memmove(v3, v0, v2);
  }

  *(v2 + v3) = 0;
  support::fs::removeDirContents(__dst, 0);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_297145C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ServerLogging::backupFolders_sync(capabilities::abs *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 8) = 0;
  v7 = (a4 + 8);
  *a4 = 0;
  *(a4 + 16) = 0;
  capabilities::abs::logScratchPath(&__p, a1);
  v8.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v8.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v40.st_blksize = v8;
  *v40.st_qspare = v8;
  v40.st_birthtimespec = v8;
  *&v40.st_size = v8;
  v40.st_mtimespec = v8;
  v40.st_ctimespec = v8;
  *&v40.st_uid = v8;
  v40.st_atimespec = v8;
  *&v40.st_dev = v8;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (stat(p_p, &v40))
  {
    LODWORD(v10) = 0;
  }

  else
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &__p;
    }

    else
    {
      v11 = __p.__r_.__value_.__r.__words[0];
    }

    v12 = opendir(v11);
    v10 = v12;
    if (v12)
    {
      v13 = readdir(v12);
      closedir(v10);
      LODWORD(v10) = v13 != 0;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v10)
    {
      return;
    }
  }

  else if (!v10)
  {
    return;
  }

  v14 = *(a2 + 23);
  if (v14 >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = a2[1];
  }

  v16 = v15 + 7;
  if (v15 + 7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v16 < 0x17)
  {
    memset(&__p, 0, sizeof(__p));
    v18 = &__p;
    *(&__p.__r_.__value_.__s + 23) = v15 + 7;
    if (!v15)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if ((v16 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v16 | 7) + 1;
    }

    v18 = operator new(v17);
    __p.__r_.__value_.__l.__size_ = v15 + 7;
    __p.__r_.__value_.__r.__words[2] = v17 | 0x8000000000000000;
    __p.__r_.__value_.__r.__words[0] = v18;
  }

  v19 = *a2;
  if (v14 >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  memmove(v18, v20, v15);
LABEL_29:
  strcpy(v18 + v15, "log-bb-");
  Timestamp::Timestamp(v35);
  Timestamp::asString(v35, 0, 9, v37);
  if ((v38 & 0x80u) == 0)
  {
    v21 = v37;
  }

  else
  {
    v21 = v37[0];
  }

  if ((v38 & 0x80u) == 0)
  {
    v22 = v38;
  }

  else
  {
    v22 = v37[1];
  }

  v23 = std::string::append(&__p, v21, v22);
  v24 = *&v23->__r_.__value_.__l.__data_;
  *&v40.st_uid = *(&v23->__r_.__value_.__l + 2);
  *&v40.st_dev = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  v25 = *(a3 + 23);
  if (v25 >= 0)
  {
    v26 = a3;
  }

  else
  {
    v26 = *a3;
  }

  if (v25 >= 0)
  {
    v27 = *(a3 + 23);
  }

  else
  {
    v27 = *(a3 + 8);
  }

  v28 = std::string::append(&v40, v26, v27);
  v29 = v28->__r_.__value_.__r.__words[0];
  *v7 = v28->__r_.__value_.__l.__size_;
  *(v7 + 7) = *(&v28->__r_.__value_.__r.__words[1] + 7);
  v30 = HIBYTE(v28->__r_.__value_.__r.__words[2]);
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  st_gid_high = SHIBYTE(v40.st_gid);
  *a4 = v29;
  *(a4 + 23) = v30;
  if ((st_gid_high & 0x80000000) == 0)
  {
    if ((v38 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

LABEL_48:
    operator delete(v37[0]);
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v35, v36);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_49;
  }

  operator delete(*&v40.st_dev);
  if (v38 < 0)
  {
    goto LABEL_48;
  }

LABEL_43:
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v35, v36);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

LABEL_49:
  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_44:
  capabilities::abs::logScratchPath(&v40.st_dev, v32);
  support::fs::moveDirUnique(&v40, a4, &v33);
  if ((v34 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v40.st_gid) & 0x80000000) == 0)
    {
      return;
    }

LABEL_51:
    operator delete(*&v40.st_dev);
    return;
  }

  operator delete(v33);
  if (SHIBYTE(v40.st_gid) < 0)
  {
    goto LABEL_51;
  }
}

void sub_297145F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN13ServerLogging24monitorSnapshotPath_syncEv_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (v2 + 56);
    if (*(v2 + 79) < 0)
    {
      v4 = *v4;
    }

    v7 = 136315138;
    v8 = v4;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Snapshot path %s was removed", &v7, 0xCu);
  }

  dispatch_release(*(v2 + 80));
  *(v2 + 80) = 0;
  close(*(a1 + 40));
  result = ServerLogging::monitorSnapshotPath_sync(v2);
  *(v2 + 80) = result;
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void initServerLogging(void)
{
  if (initServerLogging(void)::sOnce != -1)
  {
    dispatch_once(&initServerLogging(void)::sOnce, &__block_literal_global_12);
  }
}

uint64_t ___Z17initServerLoggingv_block_invoke()
{
  {
    GetOsLogContext(void)::sOsLogContext = 0;
    qword_2A18B7680 = 0;
  }

  if (GetOsLogContext(void)::onceToken == -1)
  {
    v0 = qword_2A18B7680;
    if (!os_log_type_enabled(qword_2A18B7680, OS_LOG_TYPE_INFO))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_16);
  v0 = qword_2A18B7680;
  if (os_log_type_enabled(qword_2A18B7680, OS_LOG_TYPE_INFO))
  {
LABEL_4:
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_296FF7000, v0, OS_LOG_TYPE_INFO, "Initializing server logging and registering log handlers", &buf, 2u);
  }

LABEL_5:
  v1 = pthread_mutex_lock(&ctu::Singleton<ServerLogging,ServerLogging,ctu::PthreadMutexGuardPolicy<ServerLogging>>::sInstance);
  if (qword_2A18B7480)
  {
    goto LABEL_6;
  }

  capabilities::abs::logScratchPath(&buf, v1);
  v4 = strlen(kDaemonLogScratchDir);
  v5 = std::string::append(&buf, kDaemonLogScratchDir, v4);
  v15 = *v5;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  memset(__p, 170, sizeof(__p));
  capabilities::abs::logSnapshotPath(__p, v5);
  v6 = operator new(0x58uLL);
  ServerLogging::ServerLogging(v6, &v15, __p);
  buf.__r_.__value_.__r.__words[0] = v6;
  v2 = operator new(0x20uLL);
  v2->__shared_owners_ = 0;
  p_shared_owners = &v2->__shared_owners_;
  v2->__vftable = &unk_2A1E2C058;
  v2->__shared_weak_owners_ = 0;
  v2[1].__vftable = v6;
  buf.__r_.__value_.__r.__words[0] = 0;
  v8 = *(v6 + 1);
  if (!v8)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *v6 = v6;
    *(v6 + 1) = v2;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v8->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *v6 = v6;
    *(v6 + 1) = v2;
    std::__shared_weak_count::__release_weak(v8);
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_15:
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }
  }

LABEL_16:
  if (buf.__r_.__value_.__r.__words[0])
  {
    ServerLogging::~ServerLogging(buf.__r_.__value_.__l.__data_);
    operator delete(v9);
  }

  buf.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
  buf.__r_.__value_.__l.__size_ = 0x40000000;
  buf.__r_.__value_.__r.__words[2] = ___ZN13ServerLogging4initEv_block_invoke;
  v17 = &__block_descriptor_tmp_15;
  v18 = v6;
  os_unfair_lock_lock(v6 + 4);
  (buf.__r_.__value_.__r.__words[2])(&buf);
  os_unfair_lock_unlock(v6 + 4);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_20:
      v10 = off_2A18B7488;
      qword_2A18B7480 = v6;
      off_2A18B7488 = v2;
      if (!v10)
      {
        goto LABEL_25;
      }

      goto LABEL_21;
    }
  }

  else if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  operator delete(v15.__r_.__value_.__l.__data_);
  v10 = off_2A18B7488;
  qword_2A18B7480 = v6;
  off_2A18B7488 = v2;
  if (!v10)
  {
    goto LABEL_25;
  }

LABEL_21:
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_6:
  v2 = off_2A18B7488;
  if (off_2A18B7488)
  {
LABEL_25:
    v3 = 0;
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_26;
  }

  v3 = 1;
LABEL_26:
  v11 = pthread_mutex_unlock(&ctu::Singleton<ServerLogging,ServerLogging,ctu::PthreadMutexGuardPolicy<ServerLogging>>::sInstance);
  if ((v3 & 1) != 0 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return abm::debug::registerLogHandlers(v11);
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  return abm::debug::registerLogHandlers(v13);
}

void sub_297146504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  std::unique_ptr<ServerLogging>::~unique_ptr[abi:ne200100](&a23);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  pthread_mutex_unlock(&ctu::Singleton<ServerLogging,ServerLogging,ctu::PthreadMutexGuardPolicy<ServerLogging>>::sInstance);
  _Unwind_Resume(a1);
}

uint64_t ctu::PthreadMutexGuardPolicy<ServerLogging>::~PthreadMutexGuardPolicy(uint64_t a1)
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

void std::__shared_ptr_pointer<ServerLogging *,std::shared_ptr<ServerLogging>::__shared_ptr_default_delete<ServerLogging,ServerLogging>,std::allocator<ServerLogging>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ServerLogging *,std::shared_ptr<ServerLogging>::__shared_ptr_default_delete<ServerLogging,ServerLogging>,std::allocator<ServerLogging>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    ServerLogging::~ServerLogging(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<ServerLogging *,std::shared_ptr<ServerLogging>::__shared_ptr_default_delete<ServerLogging,ServerLogging>,std::allocator<ServerLogging>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000029722C688)
  {
    if (((v2 & 0x800000029722C688 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029722C688))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029722C688 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

ServerLogging **std::unique_ptr<ServerLogging>::~unique_ptr[abi:ne200100](ServerLogging **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    ServerLogging::~ServerLogging(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

uint64_t __cxx_global_var_init_16()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_296FF7000);
  }

  return result;
}

uint64_t abm::debug::registerLogHandlers(abm::debug *this)
{
  if (!_MergedGlobals_13)
  {
    this = os_log_create("com.apple.telephony.abm", "libtu");
    _MergedGlobals_13 = this;
  }

  capabilities::abs::TUDebugFlags(this);
  TelephonyUtilDebugSetFlags();
  v1 = TelephonyUtilDebugRegisterDelegate();
  v2 = capabilities::radio::ice(v1);
  if ((v2 & 1) == 0)
  {
    v3 = capabilities::radio::initium(v2);
    if ((v3 & 1) == 0)
    {
      if (capabilities::radio::maverick(v3))
      {
        if (!qword_2A18B7940)
        {
          qword_2A18B7940 = os_log_create("com.apple.telephony.abm", "libetl");
        }

        ETLDebugRegisterDelegate();
      }
    }
  }

  if (!qword_2A18B7948)
  {
    qword_2A18B7948 = os_log_create("com.apple.telephony.abm", "bbu");
  }

  return MEMORY[0x2A1C6CFB8](0, abm::debug::handleDebugPrintBBU);
}

void abm::debug::handleDebugPrintBinaryTelephonyUtil(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = "misc";
  if (!a2)
  {
    v4 = "send";
  }

  if (a2 == 1)
  {
    v5 = "recv";
  }

  else
  {
    v5 = v4;
  }

  abm::debug::handleDebugPrintBinary(0, v5, a3, a4);
}

void abm::debug::handleDebugPrintBinaryETL(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = "misc";
  if (!a2)
  {
    v4 = "send";
  }

  if (a2 == 1)
  {
    v5 = "recv";
  }

  else
  {
    v5 = v4;
  }

  abm::debug::handleDebugPrintBinary(1, v5, a3, a4);
}

uint64_t abm::debug::handleDebugPrintBBU(abm::debug *this, void *a2, const char *a3, const char *a4)
{
  v30 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29[7] = v6;
  v29[8] = v6;
  v29[5] = v6;
  v29[6] = v6;
  v29[3] = v6;
  v29[4] = v6;
  v29[1] = v6;
  v29[2] = v6;
  v29[0] = v6;
  v27 = v6;
  v28 = v6;
  v25 = v6;
  *__p = v6;
  v23 = v6;
  v24 = v6;
  v22 = v6;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
  v7 = MEMORY[0x29C26BDF0](&v22, a2);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ":", 1);
  v9 = strlen(a3);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, a3, v9);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v28) & 0x10) != 0)
  {
    v16 = v28;
    if (v28 < *(&v25 + 1))
    {
      *&v28 = *(&v25 + 1);
      v16 = *(&v25 + 1);
    }

    v17 = v25;
    v14 = v16 - v25;
    if ((v16 - v25) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((BYTE8(v28) & 8) == 0)
    {
      v14 = 0;
      HIBYTE(__dst[2]) = 0;
      v15 = __dst;
      goto LABEL_15;
    }

    v17 = *(&v23 + 1);
    v14 = *(&v24 + 1) - *(&v23 + 1);
    if (*(&v24 + 1) - *(&v23 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_23:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v14 | 7) + 1;
    }

    v15 = operator new(v18);
    __dst[1] = v14;
    __dst[2] = (v18 | 0x8000000000000000);
    __dst[0] = v15;
    goto LABEL_14;
  }

  HIBYTE(__dst[2]) = v14;
  v15 = __dst;
  if (v14)
  {
LABEL_14:
    v10 = memmove(v15, v17, v14);
  }

LABEL_15:
  *(v15 + v14) = 0;
  v19 = __dst;
  if (SHIBYTE(__dst[2]) < 0)
  {
    v19 = __dst[0];
  }

  abm::debug::handleDebugPrintBBUHelper(v10, v11, v12, v13, v19);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }

  *&v22 = *MEMORY[0x29EDC9538];
  *(&v22 + *(v22 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v22 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v22 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v23);
  std::ostream::~ostream();
  return MEMORY[0x29C26C030](v29);
}

void sub_297146BFC(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (a8 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a9, MEMORY[0x29EDC9538]);
  MEMORY[0x29C26C030](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<ctu::LogMessage *,std::shared_ptr<ctu::LogMessage>::__shared_ptr_default_delete<ctu::LogMessage,ctu::LogMessage>,std::allocator<ctu::LogMessage>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ctu::LogMessage *,std::shared_ptr<ctu::LogMessage>::__shared_ptr_default_delete<ctu::LogMessage,ctu::LogMessage>,std::allocator<ctu::LogMessage>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000029722C761)
  {
    if (((v2 & 0x800000029722C761 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029722C761))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029722C761 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void abm::debug::handleDebugPrintBinary(int a1, uint64_t a2, uint64_t a3, int a4)
{
  v18 = *MEMORY[0x29EDCA608];
  __p[1] = 0xAAAAAAAAAAAAAAAALL;
  v11 = 0xAAAAAAAAAAAAAALL;
  __p[0] = 0xAAAAAAAAAAAAAA00;
  ctu::assign();
  if (a1)
  {
    v7 = qword_2A18B7940;
    if (qword_2A18B7940 && os_log_type_enabled(qword_2A18B7940, OS_LOG_TYPE_DEBUG))
    {
      v8 = __p;
      if (v11 < 0)
      {
        v8 = __p[0];
      }

      goto LABEL_14;
    }
  }

  else
  {
    v7 = _MergedGlobals_13;
    if (_MergedGlobals_13 && os_log_type_enabled(_MergedGlobals_13, OS_LOG_TYPE_DEBUG))
    {
      v8 = __p;
      if (v11 < 0)
      {
        v8 = __p[0];
      }

LABEL_14:
      *buf = 67109634;
      v13 = a4;
      v14 = 2080;
      v15 = a2;
      v16 = 2080;
      v17 = v8;
      _os_log_debug_impl(&dword_296FF7000, v7, OS_LOG_TYPE_DEBUG, "(%d) %s: %s", buf, 0x1Cu);
      if ((SHIBYTE(v11) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  if (SHIBYTE(v11) < 0)
  {
LABEL_10:
    operator delete(__p[0]);
  }

LABEL_11:
  v9 = *MEMORY[0x29EDCA608];
}

void sub_297146E68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AntennaModule::create(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  v4 = dispatch_workloop_create("antenna.wl");
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v5 = operator new(0x88uLL);
  v6 = *a1;
  v7 = a1[1];
  v9[0] = v6;
  v9[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  AntennaModule::AntennaModule(v5, v9, &v8);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<AntennaModule>::shared_ptr[abi:ne200100]<AntennaModule,std::shared_ptr<AntennaModule> ctu::SharedSynchronizable<AntennaModule>::make_shared_ptr<AntennaModule>(AntennaModule*)::{lambda(AntennaModule*)#1},0>(a2, v5);
  if (v4)
  {
    dispatch_release(v4);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  AntennaModule::init(*a2);
  if (v4)
  {

    dispatch_release(v4);
  }
}

void sub_297146FC8(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  dispatch_release(v1);
  _Unwind_Resume(exception_object);
}

void AntennaModule::init(NSObject **this)
{
  v4 = this;
  if (this[12])
  {
    if (dispatch_workloop_is_current())
    {
      AntennaModule::init(void)::$_0::operator()(this);
      return;
    }

    v2 = this[12] == 0;
  }

  else
  {
    v2 = 1;
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI13AntennaModuleE20execute_wrapped_syncIZNS1_4initEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  block[3] = &__block_descriptor_tmp_45;
  block[4] = this + 9;
  block[5] = &v4;
  v3 = this[11];
  if (v2)
  {
    dispatch_sync(v3, block);
  }

  else
  {
    dispatch_async_and_wait(v3, block);
  }
}

void *AntennaModule::AntennaModule(void *a1, uint64_t *a2, NSObject **a3)
{
  v5 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E2E7E8;
  a1[1] = v5;
  a1[2] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    a1[3] = 0;
    a1[4] = 0;
    a1[8] = 0;
    a1[7] = 0;
    a1[5] = 0;
    a1[6] = a1 + 7;
    std::__shared_weak_count::__release_weak(v6);
    *a1 = &unk_2A1E23A28;
    std::__shared_weak_count::__release_weak(v6);
    v7 = &unk_2A1E2C118;
    *a1 = &unk_2A1E2C118;
    v8 = a1 + 9;
    v9 = *a3;
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[5] = 0;
  a1[6] = a1 + 7;
  *a1 = &unk_2A1E23A28;
  v7 = &unk_2A1E2C118;
  *a1 = &unk_2A1E2C118;
  v8 = a1 + 9;
  v9 = *a3;
  if (*a3)
  {
LABEL_5:
    dispatch_retain(v9);
    v7 = *a1;
  }

LABEL_6:
  v10 = v7[2](a1);
  ctu::OsLogContext::OsLogContext(v14, "com.apple.telephony.abm", v10);
  if (v9)
  {
    dispatch_retain(v9);
  }

  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v12 = dispatch_queue_create_with_target_V2("antenna.mod", initially_inactive, v9);
  dispatch_set_qos_class_floor(v12, QOS_CLASS_USER_INITIATED, 0);
  dispatch_activate(v12);
  *v8 = 0;
  v8[1] = 0;
  a1[11] = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  a1[12] = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  if (v9)
  {
    dispatch_release(v9);
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26B010](a1 + 13, v15);
  MEMORY[0x29C26B020](v15);
  ctu::OsLogContext::~OsLogContext(v14);
  if (v9)
  {
    dispatch_release(v9);
  }

  *a1 = &unk_2A1E2C118;
  a1[15] = 0;
  a1[16] = 0;
  a1[14] = 0;
  return a1;
}

void AntennaModule::~AntennaModule(AntennaModule *this)
{
  *this = &unk_2A1E2C118;
  v2 = this + 104;
  v3 = *(this + 13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 0;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v15, 2u);
  }

  v4 = *(this + 16);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 14);
  if (v5)
  {
    do
    {
      v12 = *v5;
      if (*(v5 + 31) < 0)
      {
        operator delete(v5[1]);
      }

      operator delete(v5);
      v5 = v12;
    }

    while (v12);
  }

  *(this + 14) = 0;
  MEMORY[0x29C26B020](v2);
  v6 = *(this + 12);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 11);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 10);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  *this = &unk_2A1E2E7E8;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v9 = *(this + 3);
  if (v9)
  {
    v10 = *(this + 4);
    v11 = *(this + 3);
    if (v10 != v9)
    {
      do
      {
        v13 = *(v10 - 1);
        v10 -= 3;
        if (v13 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = *(this + 3);
    }

    *(this + 4) = v9;
    operator delete(v11);
  }

  v14 = *(this + 2);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }
}

{
  AntennaModule::~AntennaModule(this);

  operator delete(v1);
}

_WORD *AntennaModule::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

_WORD *AntennaModule::getShutdownStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 770;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void AntennaModule::shutdownWithStage(uint64_t a1, int a2, NSObject **a3)
{
  if (a2 != 3)
  {
    if (a2 != 2)
    {
      return;
    }

    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 1174405120;
    v9[2] = ___ZN13AntennaModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke;
    v9[3] = &__block_descriptor_tmp_39;
    v4 = *a3;
    v9[4] = a1;
    group = v4;
    if (v4)
    {
      dispatch_retain(v4);
      dispatch_group_enter(group);
    }

    ctu::SharedSynchronizable<AntennaModule>::execute_wrapped((a1 + 72), v9);
    if (!group)
    {
      return;
    }

    dispatch_group_leave(group);
    v5 = group;
    if (!group)
    {
      return;
    }

LABEL_12:
    dispatch_release(v5);
    return;
  }

  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZN13AntennaModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_5;
  v7[3] = &__block_descriptor_tmp_6_4;
  v6 = *a3;
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(object);
  }

  ctu::SharedSynchronizable<AntennaModule>::execute_wrapped((a1 + 72), v7);
  if (object)
  {
    dispatch_group_leave(object);
    v5 = object;
    if (object)
    {
      goto LABEL_12;
    }
  }
}

void ___ZN13AntennaModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke(uint64_t a1)
{
  v1 = **(*(a1 + 32) + 120);
  if (v1)
  {
    antenna::Service::Internal::shutdown(v1);
  }
}

void AntennaModule::bootstrap(void *a1, int a2, dispatch_object_t *a3)
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
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
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
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}

void AntennaModule::registerCommandHandlers_sync(AntennaModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__dst) = 0;
    _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", &__dst, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_68:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_68;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_68;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *MEMORY[0x29EDBEAB0];
  v8 = strlen(*MEMORY[0x29EDBEAB0]);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
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

    p_dst = operator new(v11);
    v44 = v9;
    v45 = v11 | 0x8000000000000000;
    __dst = p_dst;
    goto LABEL_14;
  }

  HIBYTE(v45) = v8;
  p_dst = &__dst;
  if (v8)
  {
LABEL_14:
    memmove(p_dst, v7, v9);
  }

  *(p_dst + v9) = 0;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN13AntennaModule28registerCommandHandlers_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_8_2;
  aBlock[4] = this;
  aBlock[5] = v4;
  v41 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v12 = _Block_copy(aBlock);
  v42 = v12;
  Service::registerCommandHandler(this, &__dst, &v42);
  if (v12)
  {
    _Block_release(v12);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(__dst);
  }

  v13 = *MEMORY[0x29EDBE730];
  v14 = strlen(*MEMORY[0x29EDBE730]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v14 | 7) + 1;
    }

    v16 = operator new(v17);
    v44 = v15;
    v45 = v17 | 0x8000000000000000;
    __dst = v16;
    goto LABEL_27;
  }

  HIBYTE(v45) = v14;
  v16 = &__dst;
  if (v14)
  {
LABEL_27:
    memmove(v16, v13, v15);
  }

  *(v16 + v15) = 0;
  v37[0] = MEMORY[0x29EDCA5F8];
  v37[1] = 1174405120;
  v37[2] = ___ZN13AntennaModule28registerCommandHandlers_syncEv_block_invoke_9;
  v37[3] = &__block_descriptor_tmp_12_3;
  v37[4] = this;
  v37[5] = v4;
  v38 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v18 = _Block_copy(v37);
  v39 = v18;
  Service::registerCommandHandler(this, &__dst, &v39);
  if (v18)
  {
    _Block_release(v18);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(__dst);
  }

  v19 = *MEMORY[0x29EDBF128];
  v20 = strlen(*MEMORY[0x29EDBF128]);
  if (v20 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v21 = v20;
  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v20 | 7) + 1;
    }

    v22 = operator new(v23);
    v44 = v21;
    v45 = v23 | 0x8000000000000000;
    __dst = v22;
    goto LABEL_40;
  }

  HIBYTE(v45) = v20;
  v22 = &__dst;
  if (v20)
  {
LABEL_40:
    memmove(v22, v19, v21);
  }

  *(v22 + v21) = 0;
  v34[0] = MEMORY[0x29EDCA5F8];
  v34[1] = 1174405120;
  v34[2] = ___ZN13AntennaModule28registerCommandHandlers_syncEv_block_invoke_13;
  v34[3] = &__block_descriptor_tmp_16_2;
  v34[4] = this;
  v34[5] = v4;
  v35 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v24 = _Block_copy(v34);
  v36 = v24;
  Service::registerCommandHandler(this, &__dst, &v36);
  if (v24)
  {
    _Block_release(v24);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(__dst);
  }

  v25 = *MEMORY[0x29EDBF118];
  v26 = strlen(*MEMORY[0x29EDBF118]);
  if (v26 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v27 = v26;
  if (v26 >= 0x17)
  {
    if ((v26 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v26 | 7) + 1;
    }

    v28 = operator new(v29);
    v44 = v27;
    v45 = v29 | 0x8000000000000000;
    __dst = v28;
    goto LABEL_53;
  }

  HIBYTE(v45) = v26;
  v28 = &__dst;
  if (v26)
  {
LABEL_53:
    memmove(v28, v25, v27);
  }

  *(v28 + v27) = 0;
  v31[0] = MEMORY[0x29EDCA5F8];
  v31[1] = 1174405120;
  v31[2] = ___ZN13AntennaModule28registerCommandHandlers_syncEv_block_invoke_17;
  v31[3] = &__block_descriptor_tmp_20_0;
  v31[4] = this;
  v31[5] = v4;
  v32 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v30 = _Block_copy(v31);
  v33 = v30;
  Service::registerCommandHandler(this, &__dst, &v33);
  if (v30)
  {
    _Block_release(v30);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(__dst);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_weak(v35);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_weak(v38);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_weak(v41);
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_297147E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39)
{
  if (v40)
  {
    _Block_release(v40);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if ((*(v41 - 105) & 0x80000000) == 0)
    {
LABEL_5:
      v43 = a23;
      if (!a23)
      {
LABEL_10:
        if (a31)
        {
          std::__shared_weak_count::__release_weak(a31);
        }

        if (a39)
        {
          std::__shared_weak_count::__release_weak(a39);
          std::__shared_weak_count::__release_weak(v39);
          _Unwind_Resume(a1);
        }

        std::__shared_weak_count::__release_weak(v39);
        _Unwind_Resume(a1);
      }

LABEL_9:
      std::__shared_weak_count::__release_weak(v43);
      goto LABEL_10;
    }
  }

  else if ((*(v41 - 105) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(v41 - 128));
  v43 = a23;
  if (!a23)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void ___ZN13AntennaModule28registerCommandHandlers_syncEv_block_invoke(void *a1, xpc_object_t *a2, const void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return;
  }

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

  v11 = *a2;
  if (v11)
  {
    xpc_retain(v11);
    v12 = *a3;
    if (*a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = xpc_null_create();
    v12 = *a3;
    if (*a3)
    {
LABEL_9:
      v13 = _Block_copy(v12);
      v14 = v7[10];
      if (!v14)
      {
LABEL_18:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      goto LABEL_13;
    }
  }

  v13 = 0;
  v14 = v7[10];
  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_13:
  v15 = v7[9];
  v16 = std::__shared_weak_count::lock(v14);
  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = v16;
  v18 = operator new(0x18uLL);
  *v18 = v7;
  v18[1] = v11;
  v19 = xpc_null_create();
  v18[2] = v13;
  v20 = v7[11];
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v21 = operator new(0x18uLL);
  *v21 = v18;
  v21[1] = v15;
  v21[2] = v17;
  dispatch_async_f(v20, v21, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13AntennaModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__3EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  xpc_release(v19);
}

uint64_t __copy_helper_block_e8_40c38_ZTSNSt3__18weak_ptrI13AntennaModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c38_ZTSNSt3__18weak_ptrI13AntennaModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN13AntennaModule28registerCommandHandlers_syncEv_block_invoke_9(void *a1, xpc_object_t *a2, const void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return;
  }

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

  v11 = *a2;
  if (v11)
  {
    xpc_retain(v11);
    v12 = *a3;
    if (*a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = xpc_null_create();
    v12 = *a3;
    if (*a3)
    {
LABEL_9:
      v13 = _Block_copy(v12);
      v14 = v7[10];
      if (!v14)
      {
LABEL_18:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      goto LABEL_13;
    }
  }

  v13 = 0;
  v14 = v7[10];
  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_13:
  v15 = v7[9];
  v16 = std::__shared_weak_count::lock(v14);
  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = v16;
  v18 = operator new(0x18uLL);
  *v18 = v7;
  v18[1] = v11;
  v19 = xpc_null_create();
  v18[2] = v13;
  v20 = v7[11];
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v21 = operator new(0x18uLL);
  *v21 = v18;
  v21[1] = v15;
  v21[2] = v17;
  dispatch_async_f(v20, v21, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13AntennaModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  xpc_release(v19);
}

void ___ZN13AntennaModule28registerCommandHandlers_syncEv_block_invoke_13(void *a1, xpc_object_t *a2, const void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return;
  }

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

  v11 = *a2;
  if (v11)
  {
    xpc_retain(v11);
    v12 = *a3;
    if (*a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = xpc_null_create();
    v12 = *a3;
    if (*a3)
    {
LABEL_9:
      v13 = _Block_copy(v12);
      v14 = v7[10];
      if (!v14)
      {
LABEL_18:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      goto LABEL_13;
    }
  }

  v13 = 0;
  v14 = v7[10];
  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_13:
  v15 = v7[9];
  v16 = std::__shared_weak_count::lock(v14);
  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = v16;
  v18 = operator new(0x18uLL);
  *v18 = v7;
  v18[1] = v11;
  v19 = xpc_null_create();
  v18[2] = v13;
  v20 = v7[11];
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v21 = operator new(0x18uLL);
  *v21 = v18;
  v21[1] = v15;
  v21[2] = v17;
  dispatch_async_f(v20, v21, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13AntennaModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  xpc_release(v19);
}

void ___ZN13AntennaModule28registerCommandHandlers_syncEv_block_invoke_17(void *a1, xpc_object_t *a2, const void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return;
  }

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

  v11 = *a2;
  if (v11)
  {
    xpc_retain(v11);
    v12 = *a3;
    if (*a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = xpc_null_create();
    v12 = *a3;
    if (*a3)
    {
LABEL_9:
      v13 = _Block_copy(v12);
      v14 = v7[10];
      if (!v14)
      {
LABEL_18:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      goto LABEL_13;
    }
  }

  v13 = 0;
  v14 = v7[10];
  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_13:
  v15 = v7[9];
  v16 = std::__shared_weak_count::lock(v14);
  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = v16;
  v18 = operator new(0x18uLL);
  *v18 = v7;
  v18[1] = v11;
  v19 = xpc_null_create();
  v18[2] = v13;
  v20 = v7[11];
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v21 = operator new(0x18uLL);
  *v21 = v18;
  v21[1] = v15;
  v21[2] = v17;
  dispatch_async_f(v20, v21, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13AntennaModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  xpc_release(v19);
}

void AntennaModule::registerEventHandlers_sync(AntennaModule *this)
{
  v42 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p) = 0;
    _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "#D Registering event handlers", &__p, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_68:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_68;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_68;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *MEMORY[0x29EDBEFF0];
  v8 = strlen(*MEMORY[0x29EDBEFF0]);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
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
    v33 = v11 | 0x8000000000000000;
    *&__p = p_p;
    goto LABEL_14;
  }

  HIBYTE(v33) = v8;
  p_p = &__p;
  if (v8)
  {
LABEL_14:
    memmove(p_p, v7, v9);
  }

  *(p_p + v9) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v41 = 0;
  v12 = operator new(0x20uLL);
  *v12 = &unk_2A1E2C460;
  v12[1] = this;
  v12[2] = v4;
  v12[3] = v6;
  v41 = v12;
  Service::registerEventHandler(this, &__p, v40);
  if (v41 == v40)
  {
    (*(*v41 + 32))(v41);
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_60;
  }

  if (v41)
  {
    (*(*v41 + 40))(v41);
  }

  if (SHIBYTE(v33) < 0)
  {
LABEL_60:
    operator delete(__p);
  }

LABEL_19:
  v13 = *MEMORY[0x29EDBEFF8];
  v14 = strlen(*MEMORY[0x29EDBEFF8]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v14 | 7) + 1;
    }

    v16 = operator new(v17);
    *(&__p + 1) = v15;
    v33 = v17 | 0x8000000000000000;
    *&__p = v16;
    goto LABEL_27;
  }

  HIBYTE(v33) = v14;
  v16 = &__p;
  if (v14)
  {
LABEL_27:
    memmove(v16, v13, v15);
  }

  *(v16 + v15) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v39 = 0;
  v18 = operator new(0x20uLL);
  *v18 = &unk_2A1E2C4E0;
  v18[1] = this;
  v18[2] = v4;
  v18[3] = v6;
  v39 = v18;
  Service::registerEventHandler(this, &__p, v38);
  if (v39 == v38)
  {
    (*(*v39 + 32))(v39);
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_62;
  }

  if (v39)
  {
    (*(*v39 + 40))();
  }

  if (SHIBYTE(v33) < 0)
  {
LABEL_62:
    operator delete(__p);
  }

LABEL_32:
  v19 = *MEMORY[0x29EDBF460];
  v20 = strlen(*MEMORY[0x29EDBF460]);
  if (v20 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v21 = v20;
  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v20 | 7) + 1;
    }

    v22 = operator new(v23);
    *(&__p + 1) = v21;
    v33 = v23 | 0x8000000000000000;
    *&__p = v22;
    goto LABEL_40;
  }

  HIBYTE(v33) = v20;
  v22 = &__p;
  if (v20)
  {
LABEL_40:
    memmove(v22, v19, v21);
  }

  *(v22 + v21) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v37 = 0;
  v24 = operator new(0x20uLL);
  *v24 = &unk_2A1E2C560;
  v24[1] = this;
  v24[2] = v4;
  v24[3] = v6;
  v37 = v24;
  Service::registerEventHandler(this, &__p, v36);
  if (v37 == v36)
  {
    (*(*v37 + 32))(v37);
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_64;
  }

  if (v37)
  {
    (*(*v37 + 40))();
  }

  if (SHIBYTE(v33) < 0)
  {
LABEL_64:
    operator delete(__p);
  }

LABEL_45:
  v25 = *MEMORY[0x29EDBE618];
  v26 = strlen(*MEMORY[0x29EDBE618]);
  if (v26 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v27 = v26;
  if (v26 >= 0x17)
  {
    if ((v26 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v26 | 7) + 1;
    }

    v28 = operator new(v29);
    *(&__p + 1) = v27;
    v33 = v29 | 0x8000000000000000;
    *&__p = v28;
    goto LABEL_53;
  }

  HIBYTE(v33) = v26;
  v28 = &__p;
  if (v26)
  {
LABEL_53:
    memmove(v28, v25, v27);
  }

  *(v28 + v27) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v35 = 0;
  v30 = operator new(0x20uLL);
  *v30 = &unk_2A1E2C5E0;
  v30[1] = this;
  v30[2] = v4;
  v30[3] = v6;
  v35 = v30;
  Service::registerEventHandler(this, &__p, v34);
  if (v35 == v34)
  {
    (*(*v35 + 32))(v35);
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

LABEL_66:
    operator delete(__p);
    goto LABEL_58;
  }

  if (v35)
  {
    (*(*v35 + 40))();
  }

  if (SHIBYTE(v33) < 0)
  {
    goto LABEL_66;
  }

LABEL_58:
  Service::eventsOn(this);
  std::__shared_weak_count::__release_weak(v6);
  v31 = *MEMORY[0x29EDCA608];
}