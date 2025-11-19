void sub_2975824F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *aBlock, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, xpc_object_t object, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **_ZNSt3__110unique_ptrIZZN11RadioModule28registerCommandHandlers_syncEvEUb13_E4__16NS_14default_deleteIS2_EEED1B8ne200100Ev(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[3];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v1[1];
    if (v4)
    {
      _Block_release(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb13_ENK4__16clEv_block_invoke(void *a1, void *a2, void *a3)
{
  v4 = a1[5];
  if (!v4)
  {
    return;
  }

  v7 = std::__shared_weak_count::lock(v4);
  v20 = v7;
  if (!v7)
  {
    return;
  }

  if (!a1[4])
  {
LABEL_21:
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v16 = v7;
      (v7->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v16);
    }

    return;
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v8;
  if (v8)
  {
    xdict = v8;
  }

  else
  {
    v9 = xpc_null_create();
    xdict = v9;
    if (!v9)
    {
      v10 = xpc_null_create();
      v9 = 0;
      goto LABEL_11;
    }
  }

  if (MEMORY[0x29C272BA0](v9) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v9);
    goto LABEL_12;
  }

  v10 = xpc_null_create();
LABEL_11:
  xdict = v10;
LABEL_12:
  xpc_release(v9);
  v11 = MEMORY[0x29C272BA0](*a3);
  v12 = MEMORY[0x29EDCAA40];
  if (v11 != MEMORY[0x29EDCAA40])
  {
    v13 = *a3;
    if (v13)
    {
      xpc_retain(v13);
    }

    else
    {
      v13 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBE9C8], v13);
    v14 = xpc_null_create();
    xpc_release(v13);
    xpc_release(v14);
  }

  if (MEMORY[0x29C272BA0](*a2) == v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = -534716416;
  }

  v17 = v15;
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(a1 + 6, &v17, &xdict);
  xpc_release(xdict);
  v7 = v20;
  if (v20)
  {
    goto LABEL_21;
  }
}

void sub_297582850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11)
{
  xpc_release(object);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_0,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E48AC0;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_0,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E48AC0;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_0,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E48AC0;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_0,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E48AC0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_0,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_0,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_0,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
      if (!a1[2] || MEMORY[0x29C272BA0](v5) != MEMORY[0x29EDCAA00])
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
      dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<RadioModule>::execute_wrapped<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
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

void sub_297582C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

uint64_t std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_0,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN11RadioModule26registerEventHandlers_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN11RadioModule26registerEventHandlers_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN11RadioModule26registerEventHandlers_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN11RadioModule26registerEventHandlers_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<RadioModule>::execute_wrapped<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v34 = *a1;
  v1 = **a1;
  memset(__s1, 170, sizeof(__s1));
  value = xpc_dictionary_get_value(v34[2], *MEMORY[0x29EDBEAF8]);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  xpc::dyn_cast_or_default(__s1, object, *MEMORY[0x29EDBEFC0], v3);
  xpc_release(object[0]);
  v4 = *MEMORY[0x29EDBEFB8];
  v5 = strlen(*MEMORY[0x29EDBEFB8]);
  v6 = SHIBYTE(__s1[2]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) == 0)
  {
    if (v5 == SHIBYTE(__s1[2]))
    {
      v7 = memcmp(__s1, v4, v5);
      if (!v7)
      {
        goto LABEL_27;
      }
    }

LABEL_11:
    v8 = *MEMORY[0x29EDBF210];
    v9 = strlen(*MEMORY[0x29EDBF210]);
    if ((v6 & 0x80000000) != 0)
    {
      if (v9 == __s1[1])
      {
        if (v9 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        if (!memcmp(__s1[0], v8, v9))
        {
          goto LABEL_25;
        }
      }
    }

    else if (v9 == v6 && !memcmp(__s1, v8, v9))
    {
      goto LABEL_25;
    }

    v10 = *MEMORY[0x29EDBF4A0];
    v11 = strlen(*MEMORY[0x29EDBF4A0]);
    if ((v6 & 0x80000000) != 0)
    {
      if (v11 != __s1[1])
      {
        goto LABEL_66;
      }

      if (v11 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (memcmp(__s1[0], v10, v11))
      {
        goto LABEL_66;
      }
    }

    else if (v11 != v6 || memcmp(__s1, v10, v11))
    {
      goto LABEL_66;
    }

LABEL_25:
    v12 = *(v1 + 216);
    if (v12)
    {
      ctu::iokit::Controller::stopBatteryInfoNotifications(v12);
    }

    else
    {
      v26 = *(v1 + 104);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        LOWORD(object[0]) = 0;
        _os_log_error_impl(&dword_297476000, v26, OS_LOG_TYPE_ERROR, "Invalid fIOKitController", object, 2u);
        if (SHIBYTE(__s1[2]) < 0)
        {
          goto LABEL_71;
        }

        goto LABEL_67;
      }
    }

LABEL_66:
    if (SHIBYTE(__s1[2]) < 0)
    {
      goto LABEL_71;
    }

    goto LABEL_67;
  }

  if (v5 != __s1[1])
  {
    goto LABEL_11;
  }

  if (v5 == -1)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v7 = memcmp(__s1[0], v4, v5);
  if (v7)
  {
    goto LABEL_11;
  }

LABEL_27:
  v13 = capabilities::radio::supportsBasebandStateController(v7);
  if (v13)
  {
    RadioModule::getResetProperties_sync(v1);
  }

  v14 = capabilities::abs::supportsBatteryInfoMonitoring(v13);
  if (v14)
  {
    *(v1 + 232) = 0;
    *(v1 + 234) = 0;
    RadioModule::monitorBatteryInfo_sync(v1);
  }

  RadioModule::setRegion_sync(v14);
  object[0] = MEMORY[0x29EDCA5F8];
  object[1] = 0x40000000;
  object[2] = ___ZZZN11RadioModule26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke;
  object[3] = &__block_descriptor_tmp_271;
  object[4] = v1;
  v15 = _Block_copy(object);
  v40 = v15;
  RadioModule::getVersion_sync(v1, &v40);
  if (v15)
  {
    _Block_release(v15);
  }

  v17 = capabilities::abs::supportsCalibrationQuery(v16);
  if (v17)
  {
    if (*(v1 + 136) == 3)
    {
      RadioModule::queryFactoryCalibrationStatus_sync(v1);
    }

    if (*(v1 + 144) == 2)
    {
      RadioModule::queryRFCalibrationStatus_sync(v1);
    }
  }

  v18 = capabilities::abs::supportsFieldTestConfig(v17);
  if (v18)
  {
    RadioModule::queryFieldTestConfig_sync(v1);
  }

  if (!capabilities::abs::supportsResetSPMIEvent(v18))
  {
    goto LABEL_66;
  }

  v37 = 0xAAAAAAAAAAAAAAAALL;
  v38 = 0xAAAAAAAAAAAAAAAALL;
  v19 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v20 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(&v42, v19);
    v21 = v42;
    v42 = 0uLL;
    v22 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v21;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }

    v23 = *(&v42 + 1);
    if (*(&v42 + 1) && !atomic_fetch_add((*(&v42 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }

    v20 = off_2A18CADD8;
  }

  v24 = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v20 + 16))(&v35, v20);
  v37 = 0;
  v38 = 0;
  if (v36)
  {
    v38 = std::__shared_weak_count::lock(v36);
    if (v38)
    {
      v37 = v35;
    }

    if (v36)
    {
      std::__shared_weak_count::__release_weak(v36);
    }
  }

  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  if (v37)
  {
    (*(*v37 + 344))(v37);
  }

  v25 = v38;
  if (!v38 || atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_66;
  }

  (v25->__on_zero_shared)(v25);
  std::__shared_weak_count::__release_weak(v25);
  if (SHIBYTE(__s1[2]) < 0)
  {
LABEL_71:
    operator delete(__s1[0]);
    v27 = v34;
    if (v34)
    {
      goto LABEL_72;
    }

LABEL_68:
    v28 = a1;
    if (!a1)
    {
      return;
    }

    goto LABEL_76;
  }

LABEL_67:
  v27 = v34;
  if (!v34)
  {
    goto LABEL_68;
  }

LABEL_72:
  xpc_release(v27[2]);
  v27[2] = 0;
  v29 = v27[1];
  if (v29)
  {
    dispatch_group_leave(v29);
    v30 = v27[1];
    if (v30)
    {
      dispatch_release(v30);
    }
  }

  operator delete(v27);
  v28 = a1;
  if (a1)
  {
LABEL_76:
    v31 = v28[2];
    if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v32 = v28;
      (v31->__on_zero_shared)(v31);
      std::__shared_weak_count::__release_weak(v31);
      operator delete(v32);
    }

    else
    {
      operator delete(v28);
    }
  }
}

void sub_297583300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, xpc_object_t object)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  if (*(v19 - 49) < 0)
  {
    operator delete(*(v19 - 72));
  }

  std::unique_ptr<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
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

void ___ZZZN11RadioModule26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke(uint64_t a1, size_t *a2)
{
  v2 = a2;
  v82 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v4 = (v3 + 112);
  if ((v3 + 112) == a2)
  {
    goto LABEL_10;
  }

  if (*(v3 + 135) < 0)
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v7 = v2[1];
    }

    v4 = std::string::__assign_no_alias<false>(v4, a2, v7);
LABEL_10:
    isHardwareModelChanged = sys::isHardwareModelChanged(v4);
    if (isHardwareModelChanged)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if ((*(a2 + 23) & 0x80) != 0)
  {
    v9 = std::string::__assign_no_alias<true>(v4, *a2, a2[1]);
    isHardwareModelChanged = sys::isHardwareModelChanged(v9);
    if (isHardwareModelChanged)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 128) = a2[2];
    *v4 = v5;
    isHardwareModelChanged = sys::isHardwareModelChanged(v4);
    if (isHardwareModelChanged)
    {
      goto LABEL_15;
    }
  }

LABEL_11:
  isHardwareModelChanged = sys::isFWVersionChanged(v2);
  if (!isHardwareModelChanged)
  {
    isHardwareModelChanged = sys::isOSVersionChanged(isHardwareModelChanged);
    if (!isHardwareModelChanged)
    {
      v8 = *MEMORY[0x29EDB8ED8];
      goto LABEL_78;
    }
  }

LABEL_15:
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v79 = v10;
  v80 = v10;
  v77 = v10;
  v78 = v10;
  v75 = v10;
  v76 = v10;
  config::hw::product(isHardwareModelChanged);
  config::build::version(v11);
  if (*(v2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v78, *v2, v2[1]);
  }

  else
  {
    v78 = *v2;
    *&v79 = v2[2];
  }

  Timestamp::Timestamp(&buf);
  Timestamp::asString(v12, 0, 9, &v79 + 8);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&buf, buf.__r_.__value_.__l.__size_);
  pthread_mutex_lock(&ctu::Singleton<DeviceHistoryDB,DeviceHistoryDB,ctu::PthreadMutexGuardPolicy<DeviceHistoryDB>>::sInstance);
  if (!xmmword_2A18CAE28)
  {
    v14 = operator new(0x30uLL);
    DeviceHistoryDB::DeviceHistoryDB(v14);
    v67.__r_.__value_.__r.__words[0] = v14;
    v13 = operator new(0x20uLL);
    *v13 = &unk_2A1E467C8;
    v13[1] = 0;
    v13[2] = 0;
    v13[3] = v14;
    v15 = *(&xmmword_2A18CAE28 + 1);
    *&xmmword_2A18CAE28 = v14;
    *(&xmmword_2A18CAE28 + 1) = v13;
    if (!v15)
    {
      buf.__r_.__value_.__r.__words[0] = v14;
      buf.__r_.__value_.__l.__size_ = v13;
      goto LABEL_25;
    }

    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

  v13 = *(&xmmword_2A18CAE28 + 1);
  v14 = xmmword_2A18CAE28;
  *&buf.__r_.__value_.__l.__data_ = xmmword_2A18CAE28;
  if (*(&xmmword_2A18CAE28 + 1))
  {
LABEL_25:
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<DeviceHistoryDB,DeviceHistoryDB,ctu::PthreadMutexGuardPolicy<DeviceHistoryDB>>::sInstance);
  _DeviceHistoryItem::_DeviceHistoryItem(&v68, &v75);
  DeviceHistoryDB::addDeviceHistory(v14, &v68);
  if (v74 < 0)
  {
    operator delete(__p);
    if ((v72 & 0x80000000) == 0)
    {
LABEL_28:
      if ((v70 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_34;
    }
  }

  else if ((v72 & 0x80000000) == 0)
  {
    goto LABEL_28;
  }

  operator delete(v71);
  if ((v70 & 0x80000000) == 0)
  {
LABEL_29:
    if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(v69);
  if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_30:
    size = buf.__r_.__value_.__l.__size_;
    if (!buf.__r_.__value_.__l.__size_)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(v68.__r_.__value_.__l.__data_);
  size = buf.__r_.__value_.__l.__size_;
  if (!buf.__r_.__value_.__l.__size_)
  {
    goto LABEL_38;
  }

LABEL_36:
  if (!atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (size->__on_zero_shared)(size);
    std::__shared_weak_count::__release_weak(size);
  }

LABEL_38:
  v17 = *(v3 + 104);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  v19 = MEMORY[0x29EDBED38];
  if (v18)
  {
    v20 = *MEMORY[0x29EDBED38];
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v20;
    _os_log_impl(&dword_297476000, v17, OS_LOG_TYPE_DEFAULT, "#I Broadcasting %s", &buf, 0xCu);
  }

  memset(&v67, 0, sizeof(v67));
  if (sys::isHardwareModelChanged(v18))
  {
    v21 = MEMORY[0x29EDBF798];
  }

  else
  {
    isFWVersionChanged = sys::isFWVersionChanged(v2);
    v21 = MEMORY[0x29EDBF618];
    if (isFWVersionChanged)
    {
      v21 = MEMORY[0x29EDBF710];
    }
  }

  std::string::__assign_external(&v67, *v21);
  cf = 0;
  v8 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    cf = Mutable;
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    v25 = Mutable;
    std::string::__init_copy_ctor_external(&buf, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_);
    Mutable = v25;
  }

  else
  {
    buf = v67;
  }

  ctu::cf::insert<char const*,std::string>(Mutable, *v19, &buf, v8, v24);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v26 = *MEMORY[0x29EDBECC0];
  v27 = strlen(*MEMORY[0x29EDBECC0]);
  if (v27 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v28 = v27;
  if (v27 >= 0x17)
  {
    if ((v27 | 7) == 0x17)
    {
      v31 = 25;
    }

    else
    {
      v31 = (v27 | 7) + 1;
    }

    v29 = operator new(v31);
    __dst[1] = v28;
    v65 = v31 | 0x8000000000000000;
    __dst[0] = v29;
LABEL_60:
    memmove(v29, v26, v28);
    *(v28 + v29) = 0;
    v30 = cf;
    if (!cf)
    {
      goto LABEL_63;
    }

    goto LABEL_61;
  }

  HIBYTE(v65) = v27;
  v29 = __dst;
  if (v27)
  {
    goto LABEL_60;
  }

  LOBYTE(__dst[0]) = 0;
  v30 = cf;
  if (!cf)
  {
    goto LABEL_63;
  }

LABEL_61:
  v32 = CFGetTypeID(v30);
  if (v32 == CFDictionaryGetTypeID())
  {
    v63 = v30;
    CFRetain(v30);
    goto LABEL_64;
  }

LABEL_63:
  v63 = 0;
LABEL_64:
  aBlock = 0;
  Service::broadcastEvent(v3, __dst, &v63, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v63)
  {
    CFRelease(v63);
  }

  if (SHIBYTE(v65) < 0)
  {
    operator delete(__dst[0]);
    if (!v30)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  if (v30)
  {
LABEL_72:
    CFRelease(v30);
  }

LABEL_73:
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v80) & 0x80000000) == 0)
    {
LABEL_75:
      if ((SBYTE7(v79) & 0x80000000) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_85;
    }
  }

  else if ((SHIBYTE(v80) & 0x80000000) == 0)
  {
    goto LABEL_75;
  }

  operator delete(*(&v79 + 1));
  if ((SBYTE7(v79) & 0x80000000) == 0)
  {
LABEL_76:
    if ((SHIBYTE(v77) & 0x80000000) == 0)
    {
      goto LABEL_77;
    }

LABEL_86:
    operator delete(*(&v76 + 1));
    if ((SBYTE7(v76) & 0x80000000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_87;
  }

LABEL_85:
  operator delete(v78);
  if (SHIBYTE(v77) < 0)
  {
    goto LABEL_86;
  }

LABEL_77:
  if ((SBYTE7(v76) & 0x80000000) == 0)
  {
    goto LABEL_78;
  }

LABEL_87:
  operator delete(v75);
LABEL_78:
  cf = 0;
  v33 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v35 = v33;
  if (!v33)
  {
    v36 = *(v3 + 104);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v75) = 0;
      _os_log_error_impl(&dword_297476000, v36, OS_LOG_TYPE_ERROR, "Failed to create dictionary to update abm domain preferences", &v75, 2u);
    }

    goto LABEL_154;
  }

  cf = v33;
  if (*(v2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v75, *v2, v2[1]);
  }

  else
  {
    v75 = *v2;
    *&v76 = v2[2];
  }

  v37 = ctu::cf::insert<char const*,std::string>(v35, *MEMORY[0x29EDBEC00], &v75, v8, v34);
  if (SBYTE7(v76) < 0)
  {
    operator delete(v75);
  }

  config::build::version(v37);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v75, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
  }

  else
  {
    v75 = *&buf.__r_.__value_.__l.__data_;
    *&v76 = *(&buf.__r_.__value_.__l + 2);
  }

  ctu::cf::insert<char const*,std::string>(v35, *MEMORY[0x29EDBEC08], &v75, v8, v38);
  if (SBYTE7(v76) < 0)
  {
    operator delete(v75);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_96;
    }
  }

  else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_96;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
LABEL_96:
  v39 = operator new(0x28uLL);
  strcpy(v39, "AppleBasebandServices_Manager-1397");
  std::string::__init_copy_ctor_external(&v75, v39, 0x22uLL);
  ctu::cf::insert<char const*,std::string>(v35, *MEMORY[0x29EDBE990], &v75, v8, v40);
  if (SBYTE7(v76) < 0)
  {
    operator delete(v75);
  }

  operator delete(v39);
  config::hw::product(v41);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v75, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
  }

  else
  {
    v75 = *&buf.__r_.__value_.__l.__data_;
    *&v76 = *(&buf.__r_.__value_.__l + 2);
  }

  ctu::cf::insert<char const*,std::string>(v35, *MEMORY[0x29EDBE988], &v75, v8, v42);
  if (SBYTE7(v76) < 0)
  {
    operator delete(v75);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_105;
    }
  }

  else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_105;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
LABEL_105:
  v43 = getpid();
  std::to_string(&buf, v43);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v75, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
  }

  else
  {
    v75 = *&buf.__r_.__value_.__l.__data_;
    *&v76 = *(&buf.__r_.__value_.__l + 2);
  }

  v45 = ctu::cf::insert<char const*,std::string>(v35, *MEMORY[0x29EDBE6A8], &v75, v8, v44);
  if (SBYTE7(v76) < 0)
  {
    operator delete(v75);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_112;
    }
  }

  else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_112;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
LABEL_112:
  capabilities::radio::radioType(&buf, v45);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v75, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
  }

  else
  {
    v75 = *&buf.__r_.__value_.__l.__data_;
    *&v76 = *(&buf.__r_.__value_.__l + 2);
  }

  ctu::cf::insert<char const*,std::string>(v35, *MEMORY[0x29EDBEC10], &v75, v8, v46);
  if (SBYTE7(v76) < 0)
  {
    operator delete(v75);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_119;
    }
  }

  else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_119;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
LABEL_119:
  config::hw::getBootArgs(&buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v75, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
  }

  else
  {
    v75 = *&buf.__r_.__value_.__l.__data_;
    *&v76 = *(&buf.__r_.__value_.__l + 2);
  }

  ctu::cf::insert<char const*,std::string>(v35, *MEMORY[0x29EDBEAB8], &v75, v8, v47);
  if (SBYTE7(v76) < 0)
  {
    operator delete(v75);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_126;
    }
  }

  else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_126;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
LABEL_126:
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v48 = off_2A18CAFB8;
  if (!off_2A18CAFB8)
  {
    SharedData::create_default_global(&v75);
    v49 = v75;
    v75 = 0uLL;
    v50 = *(&off_2A18CAFB8 + 1);
    off_2A18CAFB8 = v49;
    if (v50 && !atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v50->__on_zero_shared)(v50);
      std::__shared_weak_count::__release_weak(v50);
    }

    v51 = *(&v75 + 1);
    if (*(&v75 + 1) && !atomic_fetch_add((*(&v75 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v51->__on_zero_shared)(v51);
      std::__shared_weak_count::__release_weak(v51);
    }

    v48 = off_2A18CAFB8;
  }

  buf.__r_.__value_.__r.__words[0] = v48;
  buf.__r_.__value_.__l.__size_ = *(&off_2A18CAFB8 + 1);
  if (*(&off_2A18CAFB8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CAFB8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v52 = *MEMORY[0x29EDBEA50];
  v53 = strlen(*MEMORY[0x29EDBEA50]);
  if (v53 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v54 = v53;
  if (v53 >= 0x17)
  {
    if ((v53 | 7) == 0x17)
    {
      v56 = 25;
    }

    else
    {
      v56 = (v53 | 7) + 1;
    }

    v55 = operator new(v56);
    *(&v75 + 1) = v54;
    *&v76 = v56 | 0x8000000000000000;
    *&v75 = v55;
  }

  else
  {
    BYTE7(v76) = v53;
    v55 = &v75;
    if (!v53)
    {
      goto LABEL_145;
    }
  }

  memmove(v55, v52, v54);
LABEL_145:
  *(v55 + v54) = 0;
  v57 = cf;
  os_unfair_lock_lock(v48 + 10);
  if ((SBYTE7(v76) & 0x80u) == 0)
  {
    v58 = &v75;
  }

  else
  {
    v58 = v75;
  }

  ctu::cf::MakeCFString::MakeCFString(&v67, v58);
  ctu::cf::plist_adapter::set<__CFArray *>(v48, v57, v67.__r_.__value_.__l.__data_, 1);
  MEMORY[0x29C270E70](&v67);
  os_unfair_lock_unlock(v48 + 10);
  if (SBYTE7(v76) < 0)
  {
    operator delete(v75);
  }

  v59 = buf.__r_.__value_.__l.__size_;
  if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v59->__on_zero_shared)(v59);
    std::__shared_weak_count::__release_weak(v59);
    v60 = cf;
    if (!cf)
    {
      goto LABEL_154;
    }

    goto LABEL_153;
  }

  v60 = cf;
  if (cf)
  {
LABEL_153:
    CFRelease(v60);
  }

LABEL_154:
  v61 = *MEMORY[0x29EDCA608];
}

void sub_297583FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, char a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, const void *a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a18);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_1,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E48B40;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_1,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E48B40;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_1,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E48B40;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_1,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E48B40;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_1,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_1,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_1,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
      if (!a1[2])
      {
        goto LABEL_21;
      }

      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(v4);
      }

      v10 = v7[10];
      if (!v10 || (v11 = v7[9], (v12 = std::__shared_weak_count::lock(v10)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v13 = v12;
      v14 = operator new(0x10uLL);
      *v14 = v7;
      v14[1] = v4;
      v15 = v7[11];
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = operator new(0x18uLL);
      *v16 = v14;
      v16[1] = v11;
      v16[2] = v13;
      dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<RadioModule>::execute_wrapped<RadioModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(RadioModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<RadioModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<RadioModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_21:
        if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_10:
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

LABEL_11:
  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

uint64_t std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_1,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN11RadioModule26registerEventHandlers_syncEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN11RadioModule26registerEventHandlers_syncEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN11RadioModule26registerEventHandlers_syncEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN11RadioModule26registerEventHandlers_syncEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<RadioModule>::execute_wrapped<RadioModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(RadioModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<RadioModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<RadioModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v24 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 104);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v6 = (v3 + 112);
    if (*(v3 + 135) < 0)
    {
      v6 = *v6;
    }

    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Baseband FW Version: %s", buf, 0xCu);
  }

  if (capabilities::abs::supportsCalibrationQuery(v5))
  {
    v7 = *(v3 + 104);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      v9 = capabilities::radio::supportsFactoryCalibrationV2(v8) ? radio::asStringV2() : radio::asString();
      v10 = v9;
      radio::RFCalibration_t::toString(buf, (v3 + 144));
      v11 = v19 >= 0 ? buf : *buf;
      *v20 = 136315394;
      v21 = v10;
      v22 = 2080;
      v23 = v11;
      _os_log_impl(&dword_297476000, v7, OS_LOG_TYPE_DEFAULT, "#I \n--- Factory and RF calibration ---\n%s\n%s\n----------------------------------", v20, 0x16u);
      if (v19 < 0)
      {
        operator delete(*buf);
      }
    }
  }

  if (MEMORY[0x29C272BA0](*(v3 + 192)) == MEMORY[0x29EDCAA00])
  {
    v12 = *(v3 + 104);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      xpc::object::to_string(buf, (v3 + 192));
      v13 = v19 >= 0 ? buf : *buf;
      *v20 = 136315138;
      v21 = v13;
      _os_log_impl(&dword_297476000, v12, OS_LOG_TYPE_DEFAULT, "#I Baseband field test config:\n%s", v20, 0xCu);
      if (v19 < 0)
      {
        operator delete(*buf);
      }
    }
  }

  v14 = v2[1];
  if (v14)
  {
    dispatch_group_leave(v14);
    v15 = v2[1];
    if (v15)
    {
      dispatch_release(v15);
    }
  }

  operator delete(v2);
  v16 = a1[2];
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  operator delete(a1);
  v17 = *MEMORY[0x29EDCA608];
}

void sub_297584908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3ctu20SharedSynchronizableI11RadioModuleE13connect_eventIN5boost8signals26signalIFvjENS5_19optional_last_valueIvEEiNSt3__14lessIiEENS4_8functionIS7_EENSD_IFvRKNS5_10connectionEjEEENS5_5mutexEEES1_vJjEEEDTcl7connectfp_cvNSA_10shared_ptrIS1_EE_EcvP16dispatch_queue_s_EcvPFT1_DpT2_ELi0EEERT_MT0_FSQ_SS_E_block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = (a1[4] + (v2 >> 1) - 72);
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t ctu::DispatchSlot<dispatch::block<void({block_pointer})(unsigned int)>>::~DispatchSlot(uint64_t a1)
{
  dispatch_release(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(unsigned int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(unsigned int)>,boost::function<void ()(boost::signals2::connection const&,unsigned int)>,boost::signals2::mutex>::invocation_state>(void *a1)
{
  if (a1)
  {
    v1 = a1[3];
    if (v1)
    {
      if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
      {
        v2 = a1;
        (*(*v1 + 16))(v1);
        a1 = v2;
        if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v1 + 24))(v1);
          a1 = v2;
        }
      }
    }

    v3 = a1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        v4 = a1;
        (*(*v3 + 16))(v3);
        a1 = v4;
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
          a1 = v4;
        }
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(unsigned int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(unsigned int)>,boost::function<void ()(boost::signals2::connection const&,unsigned int)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[3];
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 16))(v2);
        if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v2 + 24))(v2);
        }
      }
    }

    v3 = v1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
        }
      }
    }

    operator delete(v1);
  }
}

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v6 + 16))(v6);
          if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 24))(v6);
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t *std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>,boost::signals2::mutex>>>::~list(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>,boost::signals2::mutex>>>>(uint64_t *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
    if (a1[2])
    {
      v2 = a1[1];
      v3 = *(*a1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      a1[2] = 0;
      if (v2 != a1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != a1);
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(v1[4]);
    if (v1[2])
    {
      v2 = v1[1];
      v3 = *(*v1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      v1[2] = 0;
      if (v2 != v1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != v1);
      }
    }

    operator delete(v1);
  }
}

void boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  v1 = boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>::~connection_body(a1);

  operator delete(v1);
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>,boost::signals2::mutex>::connected(uint64_t a1)
{
  v20[3] = *MEMORY[0x29EDCA608];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[8] = v2;
  v15[9] = v2;
  v15[6] = v2;
  v15[7] = v2;
  v15[4] = v2;
  v15[5] = v2;
  v15[2] = v2;
  v15[3] = v2;
  v15[0] = v2;
  v15[1] = v2;
  v3 = *(a1 + 48);
  v16 = 10;
  v17 = v15;
  v18 = 0;
  v19 = v3;
  pthread_mutex_lock(v3);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *v4;
    if (*v4 != v4[1])
    {
      while (1)
      {
        memset(v20, 170, 24);
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>(v5, v20);
        if ((*v5 ^ (*v5 >> 31)) == 2)
        {
          if (!(*(**(v5 + 8) + 24))(*(v5 + 8)))
          {
            goto LABEL_6;
          }
        }

        else
        {
          v6 = *(v5 + 16);
          if (v6 && atomic_load_explicit((v6 + 8), memory_order_acquire))
          {
LABEL_6:
            v7 = 0;
            if (LODWORD(v20[0]) == SLODWORD(v20[0]) >> 31)
            {
              goto LABEL_13;
            }

            goto LABEL_7;
          }
        }

        if (*(a1 + 24) == 1)
        {
          *(a1 + 24) = 0;
          boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(a1, v15);
        }

        v7 = 1;
        if (LODWORD(v20[0]) == SLODWORD(v20[0]) >> 31)
        {
LABEL_13:
          v8 = v20[2];
          if (v20[2])
          {
            if (atomic_fetch_add((v20[2] + 8), 0xFFFFFFFF) == 1)
            {
              (*(*v8 + 16))(v8);
              if (atomic_fetch_add(v8 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v8 + 24))(v8);
              }
            }
          }

          goto LABEL_17;
        }

LABEL_7:
        if (v20[1])
        {
          (*(*v20[1] + 8))(v20[1]);
        }

LABEL_17:
        if ((v7 & 1) == 0)
        {
          v5 += 24;
          if (v5 != *(*(a1 + 32) + 8))
          {
            continue;
          }
        }

        break;
      }
    }
  }

  v9 = *(a1 + 24);
  pthread_mutex_unlock(v19);
  v10 = v17;
  if (v17)
  {
    if (v18 > 0)
    {
      v13 = &v17[16 * v18];
      do
      {
        v14 = *(v13 - 1);
        if (v14)
        {
          if (atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v14 + 16))(v14);
            if (atomic_fetch_add(v14 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v14 + 24))(v14);
            }
          }
        }

        v13 -= 16;
      }

      while (v13 > v10);
    }

    if (v16 >= 0xB)
    {
      operator delete(v17);
    }
  }

  v11 = *MEMORY[0x29EDCA608];
  return v9;
}

void sub_2975853FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>,boost::signals2::mutex>::release_slot@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 40);
  v2 = (result + 32);
  *a2 = *(result + 32);
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
    v4 = *(result + 40);
    *v2 = 0;
    *(result + 40) = 0;
    if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*v4 + 16))(v4);
      if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
      {
        return (*(*v4 + 24))(v4);
      }
    }
  }

  else
  {
    *v2 = 0;
    *(result + 40) = 0;
  }

  return result;
}

void boost::checked_delete<boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>>(void **__p)
{
  if (__p)
  {
    v2 = __p[3];
    if (v2)
    {
      if ((v2 & 1) == 0)
      {
        v3 = *v2;
        if (v3)
        {
          v3(__p + 4, __p + 4, 2);
        }
      }

      __p[3] = 0;
    }

    v4 = *__p;
    if (*__p)
    {
      v5 = __p[1];
      v6 = *__p;
      if (v5 != v4)
      {
        do
        {
          v5 -= 24;
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v5);
        }

        while (v5 != v4);
        v6 = *__p;
      }

      __p[1] = v4;
      operator delete(v6);
    }

    operator delete(__p);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[3];
    if (v2)
    {
      if ((v2 & 1) == 0)
      {
        v3 = *v2;
        if (v3)
        {
          v3(v1 + 4, v1 + 4, 2);
        }
      }

      v1[3] = 0;
    }

    v4 = *v1;
    if (*v1)
    {
      v5 = v1[1];
      v6 = *v1;
      if (v5 != v4)
      {
        do
        {
          v5 -= 24;
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v5);
        }

        while (v5 != v4);
        v6 = *v1;
      }

      v1[1] = v4;
      operator delete(v6);
    }

    operator delete(v1);
  }
}

void *boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  *a1 = &unk_2A1E48C80;
  v2 = a1[7];
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 16))(v2);
      if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 24))(v2);
      }
    }
  }

  v3 = a1[5];
  if (v3)
  {
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
      if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 24))(v3);
      }
    }
  }

  *a1 = &unk_2A1E41C60;
  v4 = a1[2];
  if (v4 && atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 24))(v4);
  }

  return a1;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>,boost::signals2::mutex>>::dispose(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>,boost::signals2::mutex>>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void (***boost::function<void ()(unsigned int)>::~function(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

void boost::detail::function::functor_manager<ctu::DispatchSlot<dispatch::block<void({block_pointer})(unsigned int)>>>::manage(uint64_t a1, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v9 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
      if (v9 == (0x80000002976A27BDLL & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v9, (0x80000002976A27BDLL & 0x7FFFFFFFFFFFFFFFLL)))
      {
        *a2 = a1;
      }

      else
      {
        *a2 = 0;
      }
    }

    else
    {
      if (a3 != 2)
      {
LABEL_2:
        a2[4] = 0;
        return;
      }

      dispatch_release(*a2);
      v8 = *(a2 + 1);
      if (v8)
      {
LABEL_9:
        _Block_release(v8);
      }
    }
  }

  else
  {
    v6 = *a1;
    v7 = *(a1 + 8);
    *a2 = *a1;
    if (v7)
    {
      v7 = _Block_copy(v7);
      v6 = *a2;
    }

    *(a2 + 1) = v7;
    dispatch_retain(v6);
    if (a3 == 1)
    {
      dispatch_release(*a1);
      v8 = *(a1 + 8);
      if (v8)
      {
        goto LABEL_9;
      }
    }
  }
}

void boost::detail::function::void_function_obj_invoker1<ctu::DispatchSlot<dispatch::block<void({block_pointer})(unsigned int)>>,void,unsigned int>::invoke(uint64_t a1, int a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if (!v3)
  {
    v6 = 0;
    goto LABEL_10;
  }

  v5 = _Block_copy(v3);
  v6 = v5;
  if (!v5)
  {
LABEL_10:
    v18 = 1;
LABEL_11:
    v17 = 0;
    v22[0] = 0;
    goto LABEL_21;
  }

  v7 = _Block_copy(v5);
  v8 = v7;
  if (!v7)
  {
    v18 = 0;
    goto LABEL_11;
  }

  v9 = _Block_copy(v7);
  v10 = v9;
  if (v9)
  {
    v11 = _Block_copy(v9);
    v12 = v11;
    if (v11)
    {
      v13 = _Block_copy(v11);
      v14 = v13;
      if (v13)
      {
        v15 = _Block_copy(v13);
        v16 = v15;
        if (v15)
        {
          v17 = _Block_copy(v15);
          v22[0] = v17;
          _Block_release(v16);
        }

        else
        {
          v17 = 0;
          v22[0] = 0;
        }

        _Block_release(v14);
      }

      else
      {
        v17 = 0;
        v22[0] = 0;
      }

      _Block_release(v12);
    }

    else
    {
      v17 = 0;
      v22[0] = 0;
    }

    _Block_release(v10);
  }

  else
  {
    v17 = 0;
    v22[0] = 0;
  }

  _Block_release(v8);
  v18 = 0;
LABEL_21:
  v19 = operator new(4uLL);
  *v19 = a2;
  v20 = operator new(0x20uLL);
  *v20 = boost::function1<void,unsigned int>::assign_to<dispatch::block<void({block_pointer})>>(dispatch::block<void({block_pointer})>)::stored_vtable;
  if (v17)
  {
    v21 = _Block_copy(v17);
  }

  else
  {
    v21 = 0;
  }

  v20[1] = v21;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___Z13execute_blockP16dispatch_queue_sRKN5boost8functionIFvjEEEj_block_invoke;
  block[3] = &__block_descriptor_tmp_288_0;
  block[4] = v20;
  block[5] = v19;
  dispatch_async(v4, block);
  if (boost::function1<void,unsigned int>::assign_to<dispatch::block<void({block_pointer})>>(dispatch::block<void({block_pointer})>)::stored_vtable && (boost::function1<void,unsigned int>::assign_to<dispatch::block<void({block_pointer})>>(dispatch::block<void({block_pointer})>)::stored_vtable & 1) == 0 && boost::function1<void,unsigned int>::assign_to<dispatch::block<void({block_pointer})>>(dispatch::block<void({block_pointer})>)::stored_vtable[0])
  {
    (boost::function1<void,unsigned int>::assign_to<dispatch::block<void({block_pointer})>>(dispatch::block<void({block_pointer})>)::stored_vtable[0])(v22, v22, 2);
  }

  if ((v18 & 1) == 0)
  {
    _Block_release(v6);
  }
}

void sub_297585D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (**a9)(void, void, void))
{
  boost::function<void ()>::~function(&a9);
  if ((v10 & 1) == 0)
  {
    _Block_release(v9);
  }

  _Unwind_Resume(a1);
}

void ___Z13execute_blockP16dispatch_queue_sRKN5boost8functionIFvjEEEj_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*v1)
  {
    std::runtime_error::runtime_error(&v8, "call to empty boost::function");
    v8.__vftable = &unk_2A1E420B0;
    boost::throw_exception<boost::bad_function_call>(&v8);
  }

  (*((*v1 & 0xFFFFFFFFFFFFFFFELL) + 8))(v1 + 1, **(a1 + 40));
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *v3;
    if (*v3)
    {
      if ((v4 & 1) == 0)
      {
        v5 = *v4;
        if (v5)
        {
          v6 = *(a1 + 32);
          v5(v3 + 1, v6 + 1, 2);
          v3 = v6;
        }
      }

      *v3 = 0;
    }

    operator delete(v3);
  }

  v7 = *(a1 + 40);
  if (v7)
  {

    operator delete(v7);
  }
}

void boost::detail::function::functor_manager<dispatch::block<void({block_pointer})(unsigned int)>>::manage(void **a1, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v8 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
      if (v8 == (0x80000002976A27FBLL & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v8, (0x80000002976A27FBLL & 0x7FFFFFFFFFFFFFFFLL)))
      {
        *a2 = a1;
      }

      else
      {
        *a2 = 0;
      }
    }

    else
    {
      if (a3 != 2)
      {
LABEL_2:
        a2[4] = 0;
        return;
      }

      v7 = *a2;
      if (*a2)
      {
LABEL_9:
        _Block_release(v7);
      }
    }
  }

  else
  {
    v6 = *a1;
    if (*a1)
    {
      v6 = _Block_copy(v6);
    }

    *a2 = v6;
    if (a3 == 1)
    {
      v7 = *a1;
      if (*a1)
      {
        goto LABEL_9;
      }
    }
  }
}

uint64_t boost::function1<void,unsigned int>::move_assign(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = *a2;
    if (*a2)
    {
      *result = v2;
      if (v2)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        v3 = a2;
        result = (*v2)(a2 + 8, result + 8, 1);
        a2 = v3;
      }
    }

    else
    {
      v4 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v4 & 1) != 0 || (v5 = *v4) == 0)
      {
        a2 = result;
      }

      else
      {
        v6 = result;
        result = v5(result + 8, result + 8, 2);
        a2 = v6;
      }
    }

    *a2 = 0;
  }

  return result;
}

void sub_297585FEC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***boost::function1<void,unsigned int>::~function1(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

uint64_t boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<RadioModule>>::~foreign_weak_ptr_impl(uint64_t result)
{
  *result = &unk_2A1E48DD8;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<RadioModule>>::~foreign_weak_ptr_impl(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E48DD8;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<RadioModule>>::lock(uint64_t a1@<X0>, void *a2@<X8>)
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
  *v7 = &unk_2A1E48E28;
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

void *boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<RadioModule>>::clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *result = &unk_2A1E48DD8;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *boost::signals2::detail::foreign_shared_ptr_impl<std::shared_ptr<RadioModule>>::~foreign_shared_ptr_impl(void *result)
{
  *result = &unk_2A1E48E28;
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

void boost::signals2::detail::foreign_shared_ptr_impl<std::shared_ptr<RadioModule>>::~foreign_shared_ptr_impl(void *a1)
{
  *a1 = &unk_2A1E48E28;
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

void *boost::signals2::detail::foreign_shared_ptr_impl<std::shared_ptr<RadioModule>>::clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *result = &unk_2A1E48E28;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void **boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>::~slot(void **a1)
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

BOOL ctu::cf::plist_adapter::set<unsigned int>(uint64_t a1, unsigned int a2, const __CFString *a3, int a4)
{
  v7 = *MEMORY[0x29EDB8ED8];
  valuePtr = a2;
  v8 = CFNumberCreate(v7, kCFNumberLongLongType, &valuePtr);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = *MEMORY[0x29EDB8FA8];
  CFPreferencesSetValue(a3, v8, *(a1 + 8), *(a1 + 16), *MEMORY[0x29EDB8FA8]);
  if (a4)
  {
    v11 = CFPreferencesSynchronize(*(a1 + 8), *(a1 + 16), v10) != 0;
  }

  else
  {
    v11 = 1;
  }

  CFRelease(v9);
  return v11;
}

uint64_t __cxx_global_var_init_200()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t __cxx_global_var_init_201()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMServer>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t __cxx_global_var_init_202()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t __cxx_global_var_init_203()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<DeviceHistoryDB>::~PthreadMutexGuardPolicy, &ctu::Singleton<DeviceHistoryDB,DeviceHistoryDB,ctu::PthreadMutexGuardPolicy<DeviceHistoryDB>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t __cxx_global_var_init_204()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMProperties>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t abm::stats::typeAsString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result)
  {
    strcpy(a2, "UNKNOWN");
    a2[23] = 7;
  }

  else
  {
    strcpy(a2, "Boot Statistics");
    a2[23] = 15;
  }

  return result;
}

void util::strip_non_printable(std::string *this)
{
  v1 = this;
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v3 = this;
  }

  else
  {
    v3 = this->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v4 = (v3 + size);
  if (size)
  {
    v5 = size - 1;
    v6 = MEMORY[0x29EDCA600];
    while (1)
    {
      v7 = v3->__r_.__value_.__s.__data_[0];
      if ((v7 & 0x80000000) != 0)
      {
        break;
      }

      v8 = *(v6 + 4 * v7 + 60);
      if ((v8 & 0x40000) == 0 || (v8 & 0x4000) != 0)
      {
        goto LABEL_15;
      }

LABEL_8:
      v3 = (v3 + 1);
      --v5;
      if (v3 == v4)
      {
        goto LABEL_28;
      }
    }

    if (__maskrune(v3->__r_.__value_.__s.__data_[0], 0x40000uLL) && !__maskrune(v7, 0x4000uLL))
    {
      goto LABEL_8;
    }

LABEL_15:
    if (v3 != v4 && (&v3->__r_.__value_.__l.__data_ + 1) != v4)
    {
      v9 = 1;
      v4 = v3;
      while (1)
      {
        v10 = v3->__r_.__value_.__s.__data_[v9];
        if ((v10 & 0x80000000) != 0)
        {
          if (!__maskrune(v3->__r_.__value_.__s.__data_[v9], 0x40000uLL) || __maskrune(v10, 0x4000uLL))
          {
            goto LABEL_19;
          }
        }

        else
        {
          v11 = *(v6 + 4 * v10 + 60);
          if ((v11 & 0x40000) == 0 || (v11 & 0x4000) != 0)
          {
            goto LABEL_19;
          }
        }

        v4->__r_.__value_.__s.__data_[0] = v3->__r_.__value_.__s.__data_[v9];
        v4 = (v4 + 1);
LABEL_19:
        ++v9;
        if (!--v5)
        {
          goto LABEL_28;
        }
      }
    }

    v4 = v3;
  }

LABEL_28:
  v12 = HIBYTE(v1->__r_.__value_.__r.__words[2]);
  v13 = v12;
  v14 = v1->__r_.__value_.__r.__words[0];
  v15 = (v1->__r_.__value_.__r.__words[0] + v1->__r_.__value_.__l.__size_);
  if ((v12 & 0x80u) != 0)
  {
    v16 = v1->__r_.__value_.__r.__words[0];
  }

  else
  {
    v15 = v1 + v12;
    v16 = v1;
  }

  if ((v12 & 0x80u) != 0)
  {
    v12 = v1->__r_.__value_.__l.__size_;
  }

  v17 = v4 - v16;
  if (v12 < v4 - v16)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v15 - v4 == -1)
  {
    if (v13 < 0)
    {
      v1->__r_.__value_.__l.__size_ = v17;
      v1 = v14;
    }

    else
    {
      *(&v1->__r_.__value_.__s + 23) = v17 & 0x7F;
    }

    v1->__r_.__value_.__s.__data_[v17] = 0;
  }

  else
  {

    std::string::__erase_external_with_move(v1, v17, v15 - v4);
  }
}

uint64_t util::convert_garbage(uint64_t result)
{
  v1 = *(result + 23);
  if (v1 >= 0)
  {
    v2 = result;
  }

  else
  {
    v2 = *result;
  }

  if (v1 >= 0)
  {
    v3 = *(result + 23);
  }

  else
  {
    v3 = *(result + 8);
  }

  if (v3)
  {
    v4 = MEMORY[0x29EDCA600];
    do
    {
      v5 = *v2;
      if ((v5 & 0x80000000) != 0)
      {
        result = __maskrune(*v2, 0x40000uLL);
        if (result)
        {
          goto LABEL_10;
        }

        result = __maskrune(v5, 0x4000uLL);
        if (result)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v6 = *(v4 + 4 * v5 + 60);
        if ((v6 & 0x40000) != 0)
        {
          goto LABEL_10;
        }

        result = v6 & 0x4000;
        if ((v6 & 0x4000) != 0)
        {
          goto LABEL_10;
        }
      }

      *v2 = 32;
LABEL_10:
      ++v2;
      --v3;
    }

    while (v3);
  }

  return result;
}

void util::strip_pattern(char *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  memset(a3, 170, sizeof(std::string));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *a2;
    a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  v5 = a1[23];
  v6 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  v7 = a3->__r_.__value_.__r.__words[0];
  if ((v6 & 0x80u) == 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = a3->__r_.__value_.__r.__words[0];
  }

  size = a3->__r_.__value_.__l.__size_;
  if ((v6 & 0x80u) == 0)
  {
    v9 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = a3->__r_.__value_.__l.__size_;
  }

  if (v5 >= 0)
  {
    v10 = a1[23];
  }

  else
  {
    v10 = *(a1 + 1);
  }

  if (v5 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if (!v10)
  {
    v12 = 0;
    goto LABEL_20;
  }

  if (v9 >= v10)
  {
    v25 = v8 + v9;
    v26 = *v11;
    v27 = v8;
    do
    {
      v28 = v9 - v10;
      if (v28 == -1)
      {
        break;
      }

      v29 = memchr(v27, v26, v28 + 1);
      if (!v29)
      {
        break;
      }

      v30 = v29;
      if (!memcmp(v29, v11, v10))
      {
        if (v30 != v25)
        {
          v12 = v30 - v8;
          if (v30 - v8 != -1)
          {
            if (v10 == -1)
            {
              while (1)
              {
                v31 = size;
                if ((v6 & 0x80u) == 0)
                {
                  v31 = v6;
                }

                if (v31 < v12)
                {
                  break;
                }

                if (v6 < 0)
                {
                  a3->__r_.__value_.__l.__size_ = v12;
                }

                else
                {
                  *(&a3->__r_.__value_.__s + 23) = v12 & 0x7F;
                  v7 = a3;
                }

                v7->__r_.__value_.__s.__data_[v12] = 0;
                v6 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
                v7 = a3->__r_.__value_.__r.__words[0];
                if ((v6 & 0x80u) == 0)
                {
                  v32 = a3;
                }

                else
                {
                  v32 = a3->__r_.__value_.__r.__words[0];
                }

                size = a3->__r_.__value_.__l.__size_;
                if ((v6 & 0x80u) == 0)
                {
                  v33 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v33 = a3->__r_.__value_.__l.__size_;
                }

                v34 = a1[23];
                if (v34 >= 0)
                {
                  v35 = a1;
                }

                else
                {
                  v35 = *a1;
                }

                if (v34 >= 0)
                {
                  v36 = a1[23];
                }

                else
                {
                  v36 = *(a1 + 1);
                }

                if (v36)
                {
                  if (v33 < v36)
                  {
                    return;
                  }

                  v37 = v32 + v33;
                  v38 = *v35;
                  v39 = v32;
                  while (1)
                  {
                    v40 = v33 - v36;
                    if (v40 == -1)
                    {
                      return;
                    }

                    v41 = memchr(v39, v38, v40 + 1);
                    if (!v41)
                    {
                      return;
                    }

                    v42 = v41;
                    if (!memcmp(v41, v35, v36))
                    {
                      break;
                    }

                    v39 = (v42 + 1);
                    v33 = v37 - (v42 + 1);
                    if (v33 < v36)
                    {
                      return;
                    }
                  }

                  if (v42 == v37)
                  {
                    return;
                  }

                  v12 = v42 - v32;
                  if (v42 - v32 == -1)
                  {
                    return;
                  }
                }

                else
                {
                  v12 = 0;
                }
              }
            }

            else
            {
              while (1)
              {
LABEL_20:
                v13 = size;
                if ((v6 & 0x80u) == 0)
                {
                  v13 = v6;
                }

                if (v13 < v12)
                {
                  break;
                }

                std::string::__erase_external_with_move(a3, v12, v10);
                v6 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
                if ((v6 & 0x80u) == 0)
                {
                  v14 = a3;
                }

                else
                {
                  v14 = a3->__r_.__value_.__r.__words[0];
                }

                size = a3->__r_.__value_.__l.__size_;
                if ((v6 & 0x80u) == 0)
                {
                  v15 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v15 = a3->__r_.__value_.__l.__size_;
                }

                v16 = a1[23];
                if (v16 >= 0)
                {
                  v17 = a1;
                }

                else
                {
                  v17 = *a1;
                }

                if (v16 >= 0)
                {
                  v18 = a1[23];
                }

                else
                {
                  v18 = *(a1 + 1);
                }

                if (v18)
                {
                  if (v15 < v18)
                  {
                    return;
                  }

                  v19 = v14 + v15;
                  v20 = *v17;
                  v21 = v14;
                  while (1)
                  {
                    v22 = v15 - v18;
                    if (v22 == -1)
                    {
                      return;
                    }

                    v23 = memchr(v21, v20, v22 + 1);
                    if (!v23)
                    {
                      return;
                    }

                    v24 = v23;
                    if (!memcmp(v23, v17, v18))
                    {
                      break;
                    }

                    v21 = (v24 + 1);
                    v15 = v19 - (v24 + 1);
                    if (v15 < v18)
                    {
                      return;
                    }
                  }

                  if (v24 == v19)
                  {
                    return;
                  }

                  v12 = v24 - v14;
                  if (v24 - v14 == -1)
                  {
                    return;
                  }
                }

                else
                {
                  v12 = 0;
                }
              }
            }

            std::string::__throw_out_of_range[abi:ne200100]();
          }
        }

        return;
      }

      v27 = (v30 + 1);
      v9 = v25 - (v30 + 1);
    }

    while (v9 >= v10);
  }
}

void sub_297586CE4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *util::strip_leading_trailing@<X0>(char *result@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v4 = result[23];
  v5 = *(result + 1);
  v20 = *result;
  if ((v4 & 0x80u) == 0)
  {
    v6 = result;
  }

  else
  {
    v6 = *result;
  }

  if ((v4 & 0x80u) == 0)
  {
    v7 = result[23];
  }

  else
  {
    v7 = *(result + 1);
  }

  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  if (!v7)
  {
    goto LABEL_26;
  }

  v11 = result;
  v12 = &v6[v7];
  v13 = 0;
  if (!v10)
  {
    v14 = v7 - 1;
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  while (1)
  {
    result = memchr(v9, v6[v13], v10);
    if (!result)
    {
      break;
    }

    if (v7 == ++v13)
    {
      goto LABEL_26;
    }
  }

  if (v13 == -1)
  {
LABEL_26:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return result;
  }

  while (v7)
  {
    v15 = *--v12;
    result = memchr(v9, v15, v10);
    --v7;
    if (!result)
    {
      v14 = v12 - v6;
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_24;
      }

LABEL_28:
      if (v5 >= v13)
      {
        v4 = v5;
        v11 = v20;
        goto LABEL_30;
      }

LABEL_43:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  v14 = -1;
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_28;
  }

LABEL_24:
  if (v13 > v4)
  {
    goto LABEL_43;
  }

LABEL_30:
  v16 = v14 - v13 + 1;
  if (v4 - v13 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v4 - v13;
  }

  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v17 >= 0x17)
  {
    if ((v17 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v17 | 7) + 1;
    }

    v19 = operator new(v18);
    a3[1] = v17;
    a3[2] = v18 | 0x8000000000000000;
    *a3 = v19;
    a3 = v19;
  }

  else
  {
    *(a3 + 23) = v17;
    if (!v17)
    {
      goto LABEL_42;
    }
  }

  result = memmove(a3, v11 + v13, v17);
LABEL_42:
  *(a3 + v17) = 0;
  return result;
}

double util::strip_trailing@<D0>(__int128 *a1@<X0>, void **a2@<X1>, std::string *a3@<X8>)
{
  memset(a3, 170, sizeof(std::string));
  if (*(a1 + 23) < 0)
  {
    v5 = a2;
    std::string::__init_copy_ctor_external(a3, *a1, *(a1 + 1));
    a2 = v5;
  }

  else
  {
    v4 = *a1;
    *&a3->__r_.__value_.__l.__data_ = *a1;
    a3->__r_.__value_.__r.__words[2] = *(a1 + 2);
  }

  v6 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = a3->__r_.__value_.__r.__words[0];
  }

  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  if (v10)
  {
    if (v6 >= 0)
    {
      size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a3->__r_.__value_.__l.__size_;
    }

    v12 = size;
    do
    {
      if (!v12)
      {
        return *&v4;
      }
    }

    while (!memchr(v9, v7->__r_.__value_.__s.__data_[--v12], v10));
    if (v12 == -1)
    {
      return *&v4;
    }

    if (size >= size - v10)
    {
      v14 = size - v10;
    }

    else
    {
      v14 = size;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v14 >= 0x17)
    {
      if ((v14 | 7) == 0x17)
      {
        v16 = 25;
      }

      else
      {
        v16 = (v14 | 7) + 1;
      }

      p_dst = operator new(v16);
      *(&__dst + 1) = v14;
      v19 = v16 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v19) = v14;
      p_dst = &__dst;
      if (!v14)
      {
        LOBYTE(__dst) = 0;
        if ((SHIBYTE(a3->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_28:
          *&v4 = __dst;
          *&a3->__r_.__value_.__l.__data_ = __dst;
          a3->__r_.__value_.__r.__words[2] = v19;
          return *&v4;
        }

LABEL_35:
        operator delete(a3->__r_.__value_.__l.__data_);
        goto LABEL_28;
      }
    }

    memmove(p_dst, v7, v14);
    *(p_dst + v14) = 0;
    if ((SHIBYTE(a3->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  return *&v4;
}

void sub_297587020(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t util::to_upper(uint64_t result)
{
  v1 = *(result + 23);
  v2 = v1;
  v3 = (result + v1);
  if (v2 >= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = (*result + *(result + 8));
  }

  if (v2 >= 0)
  {
    v5 = result;
  }

  else
  {
    v5 = *result;
  }

  for (; v5 != v4; ++v5)
  {
    result = __toupper(*v5);
    *v5 = result;
  }

  return result;
}

BOOL util::equal_nocase(const char *a1, const char *a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  return strcasecmp(a1, a2) == 0;
}

void util::strip_non_alpha(std::string *this)
{
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v3 = this;
  }

  else
  {
    v3 = this->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v4 = (v3 + size);
  if (!size)
  {
    goto LABEL_22;
  }

  v5 = size - 1;
  v6 = MEMORY[0x29EDCA600];
  while (1)
  {
    v7 = v3->__r_.__value_.__s.__data_[0];
    if ((v7 & 0x80000000) != 0)
    {
      if (!__maskrune(v7, 0x100uLL))
      {
        break;
      }

      goto LABEL_9;
    }

    if ((*(v6 + 4 * v7 + 60) & 0x100) == 0)
    {
      break;
    }

LABEL_9:
    v3 = (v3 + 1);
    --v5;
    if (v3 == v4)
    {
      goto LABEL_22;
    }
  }

  if (v3 != v4 && (&v3->__r_.__value_.__l.__data_ + 1) != v4)
  {
    v8 = 1;
    v4 = v3;
    while (1)
    {
      v9 = v3->__r_.__value_.__s.__data_[v8];
      if ((v9 & 0x80000000) == 0)
      {
        break;
      }

      if (__maskrune(v9, 0x100uLL))
      {
        goto LABEL_16;
      }

LABEL_17:
      ++v8;
      if (!--v5)
      {
        goto LABEL_22;
      }
    }

    if ((*(v6 + 4 * v9 + 60) & 0x100) == 0)
    {
      goto LABEL_17;
    }

LABEL_16:
    v4->__r_.__value_.__s.__data_[0] = v3->__r_.__value_.__s.__data_[v8];
    v4 = (v4 + 1);
    goto LABEL_17;
  }

  v4 = v3;
LABEL_22:
  v10 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v11 = v10;
  v12 = this->__r_.__value_.__r.__words[0];
  v13 = (this->__r_.__value_.__r.__words[0] + this->__r_.__value_.__l.__size_);
  if ((v10 & 0x80u) != 0)
  {
    v14 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v13 = this + v10;
    v14 = this;
  }

  if ((v10 & 0x80u) != 0)
  {
    v10 = this->__r_.__value_.__l.__size_;
  }

  v15 = v4 - v14;
  if (v10 < v4 - v14)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v13 - v4 == -1)
  {
    if (v11 < 0)
    {
      this->__r_.__value_.__l.__size_ = v15;
      *(v12 + v15) = 0;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v15 & 0x7F;
      this->__r_.__value_.__s.__data_[v15] = 0;
    }
  }

  else
  {

    std::string::__erase_external_with_move(this, v15, v13 - v4);
  }
}

void util::readPlistToCFDictionary(uint64_t a1@<X0>, CFPropertyListRef *a2@<X8>)
{
  v2 = a1;
  v22 = *MEMORY[0x29EDCA608];
  v4 = *MEMORY[0x29EDB8ED8];
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;
  }

  v19 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v2, 0x8000100u);
  v5 = CFURLCreateWithFileSystemPath(v4, v19, kCFURLPOSIXPathStyle, 0);
  cf = v5;
  *a2 = 0;
  if (v5)
  {
    v6 = CFReadStreamCreateWithFile(v4, v5);
    v7 = v6;
    v17 = v6;
    if (!v6)
    {
      goto LABEL_16;
    }

    CFReadStreamOpen(v6);
    error = 0;
    *a2 = CFPropertyListCreateWithStream(v4, v7, 0, 1uLL, 0, &error);
    CFReadStreamClose(v7);
    if (!error)
    {
      goto LABEL_15;
    }

    CFErrorGetDomain(error);
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    *__p = *buf;
    v15 = *&buf[16];
    if ((atomic_load_explicit(&qword_2A18CB248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB248))
    {
      qword_2A18CB250 = 0;
      qword_2A18CB258 = 0;
      __cxa_guard_release(&qword_2A18CB248);
    }

    if (_MergedGlobals_6 == -1)
    {
      v8 = qword_2A18CB258;
      if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_6, &__block_literal_global_5);
      v8 = qword_2A18CB258;
      if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    v11 = cf;
    Code = CFErrorGetCode(error);
    v13 = __p;
    if (v15 < 0)
    {
      v13 = __p[0];
    }

    *buf = 138412802;
    *&buf[4] = v11;
    *&buf[12] = 2048;
    *&buf[14] = Code;
    *&buf[22] = 2080;
    v21 = v13;
    _os_log_error_impl(&dword_297476000, v8, OS_LOG_TYPE_ERROR, "Failed to create %@ PropertyList: %ld: %s", buf, 0x20u);
LABEL_9:
    CFRelease(error);
    v9 = *a2;
    *a2 = 0;
    if (v9)
    {
      CFRelease(v9);
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
      v7 = v17;
      if (!v17)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v7 = v17;
      if (!v17)
      {
LABEL_16:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_18;
      }
    }

LABEL_15:
    CFRelease(v7);
    goto LABEL_16;
  }

LABEL_18:
  if (v19)
  {
    CFRelease(v19);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void sub_2975874D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void util::moveDirContent(std::string::size_type a1, const std::string::value_type **a2, unsigned int a3, int a4, uint64_t a5)
{
  v158 = *MEMORY[0x29EDCA608];
  v149 = 0;
  v150 = 0;
  v151 = 0;
  v8 = *(a1 + 23);
  if (v8 < 0)
  {
    v9 = *a1;
  }

  if (v8 >= 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = *(a1 + 8);
  }

  std::locale::locale(&v143, a5);
  v144 = *(a5 + 8);
  v145 = *(a5 + 24);
  v11 = *(a5 + 48);
  v146 = *(a5 + 40);
  v147 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v148 = *(a5 + 56);
  filtered_files = ctu::fs::get_filtered_files();
  v13 = v147;
  if (v147 && !atomic_fetch_add(&v147->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    std::locale::~locale(&v143);
    if (filtered_files)
    {
LABEL_11:
      v14 = v149;
      v131 = v150;
      if (v149 != v150)
      {
        if (a4)
        {
          while (1)
          {
            memset(&v157, 170, sizeof(v157));
            if (*(v14 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v157, *v14, v14[1]);
            }

            else
            {
              v15 = *v14;
              v157.__r_.__value_.__r.__words[2] = v14[2];
              *&v157.__r_.__value_.__l.__data_ = v15;
            }

            v16 = *(a1 + 23);
            if (v16 >= 0)
            {
              v17 = *(a1 + 23);
            }

            else
            {
              v17 = *(a1 + 8);
            }

            v18 = v17 + 1;
            if (v17 + 1 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v18 < 0x17)
            {
              memset(&v141, 0, sizeof(v141));
              v20 = &v141;
              *(&v141.__r_.__value_.__s + 23) = v17 + 1;
              if (!v17)
              {
                goto LABEL_32;
              }
            }

            else
            {
              if ((v18 | 7) == 0x17)
              {
                v19 = 25;
              }

              else
              {
                v19 = (v18 | 7) + 1;
              }

              v20 = operator new(v19);
              v141.__r_.__value_.__l.__size_ = v17 + 1;
              v141.__r_.__value_.__r.__words[2] = v19 | 0x8000000000000000;
              v141.__r_.__value_.__r.__words[0] = v20;
            }

            v21 = *a1;
            if (v16 >= 0)
            {
              v22 = a1;
            }

            else
            {
              v22 = *a1;
            }

            memmove(v20, v22, v17);
LABEL_32:
            *&v20[v17] = 47;
            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v23 = &v157;
            }

            else
            {
              v23 = v157.__r_.__value_.__r.__words[0];
            }

            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v157.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v157.__r_.__value_.__l.__size_;
            }

            v25 = std::string::append(&v141, v23, size);
            v26 = *&v25->__r_.__value_.__l.__data_;
            __p[2] = v25->__r_.__value_.__r.__words[2];
            *__p = v26;
            v25->__r_.__value_.__l.__size_ = 0;
            v25->__r_.__value_.__r.__words[2] = 0;
            v25->__r_.__value_.__r.__words[0] = 0;
            is_directory = ctu::fs::is_directory();
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
              if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_40:
                if (is_directory)
                {
                  goto LABEL_41;
                }

                goto LABEL_52;
              }
            }

            else if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_40;
            }

            operator delete(v141.__r_.__value_.__l.__data_);
            if (is_directory)
            {
LABEL_41:
              v28 = *(a1 + 23);
              if (v28 >= 0)
              {
                v29 = *(a1 + 23);
              }

              else
              {
                v29 = *(a1 + 8);
              }

              v30 = v29 + 1;
              if (v29 + 1 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              if (v30 < 0x17)
              {
                memset(&v141, 0, sizeof(v141));
                v32 = &v141;
                *(&v141.__r_.__value_.__s + 23) = v29 + 1;
                if (v29)
                {
                  goto LABEL_65;
                }
              }

              else
              {
                if ((v30 | 7) == 0x17)
                {
                  v31 = 25;
                }

                else
                {
                  v31 = (v30 | 7) + 1;
                }

                v32 = operator new(v31);
                v141.__r_.__value_.__l.__size_ = v29 + 1;
                v141.__r_.__value_.__r.__words[2] = v31 | 0x8000000000000000;
                v141.__r_.__value_.__r.__words[0] = v32;
LABEL_65:
                v39 = *a1;
                if (v28 >= 0)
                {
                  v40 = a1;
                }

                else
                {
                  v40 = *a1;
                }

                memmove(v32, v40, v29);
              }

              *&v32[v29] = 47;
              if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v41 = &v157;
              }

              else
              {
                v41 = v157.__r_.__value_.__r.__words[0];
              }

              if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v42 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v42 = v157.__r_.__value_.__l.__size_;
              }

              v43 = std::string::append(&v141, v41, v42);
              v44 = *&v43->__r_.__value_.__l.__data_;
              __p[2] = v43->__r_.__value_.__r.__words[2];
              *__p = v44;
              v43->__r_.__value_.__l.__size_ = 0;
              v43->__r_.__value_.__r.__words[2] = 0;
              v43->__r_.__value_.__r.__words[0] = 0;
              v45 = SHIBYTE(__p[2]);
              if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
              {
                v45 = __p[1];
                v47 = __p[2] & 0x7FFFFFFFFFFFFFFFLL;
                v48 = (__p[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                if (v48 != __p[1])
                {
                  v46 = __p[0];
                  goto LABEL_96;
                }

                if (v47 == 0x7FFFFFFFFFFFFFF7)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                v46 = __p[0];
                if (v48 > 0x3FFFFFFFFFFFFFF2)
                {
                  v52 = 0;
                  v51 = 0x7FFFFFFFFFFFFFF7;
                }

                else
                {
LABEL_81:
                  v49 = 2 * v48;
                  if (v47 > 2 * v48)
                  {
                    v49 = v47;
                  }

                  if ((v49 | 7) == 0x17)
                  {
                    v50 = 25;
                  }

                  else
                  {
                    v50 = (v49 | 7) + 1;
                  }

                  if (v49 >= 0x17)
                  {
                    v51 = v50;
                  }

                  else
                  {
                    v51 = 23;
                  }

                  v52 = v48 == 22;
                }

                v53 = operator new(v51);
                v54 = v53;
                if (v48)
                {
                  memmove(v53, v46, v48);
                }

                v54[v48] = 47;
                if (!v52)
                {
                  operator delete(v46);
                }

                __p[1] = v47;
                __p[2] = (v51 | 0x8000000000000000);
                __p[0] = v54;
                v55 = &v54[v47];
              }

              else
              {
                v46 = __p;
                if (SHIBYTE(__p[2]) == 22)
                {
                  v47 = 23;
                  v48 = 22;
                  goto LABEL_81;
                }

LABEL_96:
                *(v45 + v46) = 47;
                v56 = v45 + 1;
                if (SHIBYTE(__p[2]) < 0)
                {
                  __p[1] = v56;
                }

                else
                {
                  HIBYTE(__p[2]) = v56 & 0x7F;
                }

                v55 = &v56[v46];
              }

              *v55 = 0;
              *v139 = *__p;
              v140 = __p[2];
              memset(__p, 0, sizeof(__p));
              if (*(a2 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&v138, *a2, a2[1]);
              }

              else
              {
                v138 = *a2;
              }

              std::locale::locale(&v132, a5);
              v133 = *(a5 + 8);
              v134 = *(a5 + 24);
              v57 = *(a5 + 48);
              v135 = *(a5 + 40);
              v136 = v57;
              if (v57)
              {
                atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v137 = *(a5 + 56);
              util::moveDirContent(v139, &v138, a3, (a4 - 1), &v132);
              v58 = v136;
              if (v136 && !atomic_fetch_add(&v136->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v58->__on_zero_shared)(v58);
                std::__shared_weak_count::__release_weak(v58);
                std::locale::~locale(&v132);
                if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_108;
                }
              }

              else
              {
                std::locale::~locale(&v132);
                if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_108:
                  if ((SHIBYTE(v140) & 0x80000000) == 0)
                  {
                    goto LABEL_109;
                  }

LABEL_114:
                  operator delete(v139[0]);
                  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_110;
                  }

                  goto LABEL_115;
                }
              }

              operator delete(v138.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v140) & 0x80000000) == 0)
              {
LABEL_109:
                if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                {
                  goto LABEL_110;
                }

                goto LABEL_115;
              }

              goto LABEL_114;
            }

LABEL_52:
            if ((atomic_load_explicit(&qword_2A18CB248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB248))
            {
              qword_2A18CB250 = 0;
              qword_2A18CB258 = 0;
              __cxa_guard_release(&qword_2A18CB248);
            }

            if (_MergedGlobals_6 == -1)
            {
              v33 = qword_2A18CB258;
              if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_117;
              }
            }

            else
            {
              dispatch_once(&_MergedGlobals_6, &__block_literal_global_5);
              v33 = qword_2A18CB258;
              if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_117;
              }
            }

            v34 = *(a1 + 23);
            if (v34 >= 0)
            {
              v35 = *(a1 + 23);
            }

            else
            {
              v35 = *(a1 + 8);
            }

            v36 = v35 + 1;
            if (v35 + 1 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v36 < 0x17)
            {
              memset(&v141, 0, sizeof(v141));
              v38 = &v141;
              *(&v141.__r_.__value_.__s + 23) = v35 + 1;
              if (!v35)
              {
                goto LABEL_125;
              }
            }

            else
            {
              if ((v36 | 7) == 0x17)
              {
                v37 = 25;
              }

              else
              {
                v37 = (v36 | 7) + 1;
              }

              v38 = operator new(v37);
              v141.__r_.__value_.__l.__size_ = v35 + 1;
              v141.__r_.__value_.__r.__words[2] = v37 | 0x8000000000000000;
              v141.__r_.__value_.__r.__words[0] = v38;
            }

            v59 = *a1;
            if (v34 >= 0)
            {
              v60 = a1;
            }

            else
            {
              v60 = *a1;
            }

            memmove(v38, v60, v35);
LABEL_125:
            *&v38[v35] = 47;
            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v61 = &v157;
            }

            else
            {
              v61 = v157.__r_.__value_.__r.__words[0];
            }

            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v62 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v62 = v157.__r_.__value_.__l.__size_;
            }

            v63 = std::string::append(&v141, v61, v62);
            v64 = *&v63->__r_.__value_.__l.__data_;
            __p[2] = v63->__r_.__value_.__r.__words[2];
            *__p = v64;
            v63->__r_.__value_.__l.__size_ = 0;
            v63->__r_.__value_.__r.__words[2] = 0;
            v63->__r_.__value_.__r.__words[0] = 0;
            v65 = __p;
            if (SHIBYTE(__p[2]) < 0)
            {
              v65 = __p[0];
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
            *(buf.__r_.__value_.__r.__words + 4) = v65;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = a4;
            _os_log_error_impl(&dword_297476000, v33, OS_LOG_TYPE_ERROR, "%s is not a directory, so not moving it at depth %d", &buf, 0x12u);
            if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
            {
LABEL_110:
              if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_116;
              }

              goto LABEL_117;
            }

LABEL_115:
            operator delete(__p[0]);
            if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_116:
              operator delete(v141.__r_.__value_.__l.__data_);
            }

LABEL_117:
            if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v157.__r_.__value_.__l.__data_);
            }

            v14 += 3;
            if (v14 == v131)
            {
              goto LABEL_143;
            }
          }
        }

        while (1)
        {
          memset(&v157, 170, sizeof(v157));
          if (*(v14 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v157, *v14, v14[1]);
          }

          else
          {
            v75 = *v14;
            v157.__r_.__value_.__r.__words[2] = v14[2];
            *&v157.__r_.__value_.__l.__data_ = v75;
          }

          memset(__p, 170, sizeof(__p));
          v76 = *(a2 + 23);
          if (v76 >= 0)
          {
            v77 = *(a2 + 23);
          }

          else
          {
            v77 = a2[1];
          }

          v78 = v77 + 1;
          if (v77 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v78 < 0x17)
          {
            memset(&buf, 0, sizeof(buf));
            p_buf = &buf;
            *(&buf.__r_.__value_.__s + 23) = v77 + 1;
            if (!v77)
            {
              goto LABEL_179;
            }
          }

          else
          {
            if ((v78 | 7) == 0x17)
            {
              v79 = 25;
            }

            else
            {
              v79 = (v78 | 7) + 1;
            }

            p_buf = operator new(v79);
            buf.__r_.__value_.__l.__size_ = v77 + 1;
            buf.__r_.__value_.__r.__words[2] = v79 | 0x8000000000000000;
            buf.__r_.__value_.__r.__words[0] = p_buf;
          }

          v81 = *a2;
          if (v76 >= 0)
          {
            v82 = a2;
          }

          else
          {
            v82 = *a2;
          }

          memmove(p_buf, v82, v77);
LABEL_179:
          *(&p_buf->__r_.__value_.__l.__data_ + v77) = 47;
          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v83 = &v157;
          }

          else
          {
            v83 = v157.__r_.__value_.__r.__words[0];
          }

          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v84 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v84 = v157.__r_.__value_.__l.__size_;
          }

          v85 = std::string::append(&buf, v83, v84);
          v86 = *&v85->__r_.__value_.__l.__data_;
          v141.__r_.__value_.__r.__words[2] = v85->__r_.__value_.__r.__words[2];
          *&v141.__r_.__value_.__l.__data_ = v86;
          v85->__r_.__value_.__l.__size_ = 0;
          v85->__r_.__value_.__r.__words[2] = 0;
          v85->__r_.__value_.__r.__words[0] = 0;
          ctu::fs::get_unique_filename();
          if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v141.__r_.__value_.__l.__data_);
            if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_187;
            }
          }

          else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_187;
          }

          operator delete(buf.__r_.__value_.__l.__data_);
LABEL_187:
          v87 = *(a1 + 23);
          if (v87 >= 0)
          {
            v88 = *(a1 + 23);
          }

          else
          {
            v88 = *(a1 + 8);
          }

          v89 = v88 + 1;
          if (v88 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v89 < 0x17)
          {
            memset(&buf, 0, sizeof(buf));
            v91 = &buf;
            *(&buf.__r_.__value_.__s + 23) = v88 + 1;
            if (!v88)
            {
              goto LABEL_201;
            }
          }

          else
          {
            if ((v89 | 7) == 0x17)
            {
              v90 = 25;
            }

            else
            {
              v90 = (v89 | 7) + 1;
            }

            v91 = operator new(v90);
            buf.__r_.__value_.__l.__size_ = v88 + 1;
            buf.__r_.__value_.__r.__words[2] = v90 | 0x8000000000000000;
            buf.__r_.__value_.__r.__words[0] = v91;
          }

          v92 = *a1;
          if (v87 >= 0)
          {
            v93 = a1;
          }

          else
          {
            v93 = *a1;
          }

          memmove(v91, v93, v88);
LABEL_201:
          *(&v91->__r_.__value_.__l.__data_ + v88) = 47;
          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v94 = &v157;
          }

          else
          {
            v94 = v157.__r_.__value_.__r.__words[0];
          }

          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v95 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v95 = v157.__r_.__value_.__l.__size_;
          }

          v96 = std::string::append(&buf, v94, v95);
          v97 = *&v96->__r_.__value_.__l.__data_;
          v141.__r_.__value_.__r.__words[2] = v96->__r_.__value_.__r.__words[2];
          *&v141.__r_.__value_.__l.__data_ = v97;
          v96->__r_.__value_.__l.__size_ = 0;
          v96->__r_.__value_.__r.__words[2] = 0;
          v96->__r_.__value_.__r.__words[0] = 0;
          v98 = ctu::fs::rename();
          if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v141.__r_.__value_.__l.__data_);
            if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_209:
              explicit = atomic_load_explicit(&qword_2A18CB248, memory_order_acquire);
              if (v98)
              {
                goto LABEL_210;
              }

              goto LABEL_226;
            }
          }

          else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_209;
          }

          operator delete(buf.__r_.__value_.__l.__data_);
          explicit = atomic_load_explicit(&qword_2A18CB248, memory_order_acquire);
          if (v98)
          {
LABEL_210:
            if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB248))
            {
              qword_2A18CB250 = 0;
              qword_2A18CB258 = 0;
              __cxa_guard_release(&qword_2A18CB248);
            }

            if (_MergedGlobals_6 == -1)
            {
              v100 = qword_2A18CB258;
              if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_274;
              }
            }

            else
            {
              dispatch_once(&_MergedGlobals_6, &__block_literal_global_5);
              v100 = qword_2A18CB258;
              if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_274;
              }
            }

            v101 = *(a1 + 23);
            if (v101 >= 0)
            {
              v102 = *(a1 + 23);
            }

            else
            {
              v102 = *(a1 + 8);
            }

            v103 = v102 + 1;
            if (v102 + 1 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v103 < 0x17)
            {
              memset(&buf, 0, sizeof(buf));
              v105 = &buf;
              *(&buf.__r_.__value_.__s + 23) = v102 + 1;
              if (v102)
              {
                goto LABEL_239;
              }
            }

            else
            {
              if ((v103 | 7) == 0x17)
              {
                v104 = 25;
              }

              else
              {
                v104 = (v103 | 7) + 1;
              }

              v105 = operator new(v104);
              buf.__r_.__value_.__l.__size_ = v102 + 1;
              buf.__r_.__value_.__r.__words[2] = v104 | 0x8000000000000000;
              buf.__r_.__value_.__r.__words[0] = v105;
LABEL_239:
              v112 = *a1;
              if (v101 >= 0)
              {
                v113 = a1;
              }

              else
              {
                v113 = *a1;
              }

              memmove(v105, v113, v102);
            }

            *(&v105->__r_.__value_.__l.__data_ + v102) = 47;
            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v114 = &v157;
            }

            else
            {
              v114 = v157.__r_.__value_.__r.__words[0];
            }

            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v115 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v115 = v157.__r_.__value_.__l.__size_;
            }

            v116 = std::string::append(&buf, v114, v115);
            v117 = *&v116->__r_.__value_.__l.__data_;
            v141.__r_.__value_.__r.__words[2] = v116->__r_.__value_.__r.__words[2];
            *&v141.__r_.__value_.__l.__data_ = v117;
            v116->__r_.__value_.__l.__size_ = 0;
            v116->__r_.__value_.__r.__words[2] = 0;
            v116->__r_.__value_.__r.__words[0] = 0;
            v118 = &v141;
            if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v118 = v141.__r_.__value_.__r.__words[0];
            }

            v119 = __p;
            if (SHIBYTE(__p[2]) < 0)
            {
              v119 = __p[0];
            }

            *v152 = 136315394;
            v153 = v118;
            v154 = 2080;
            v155 = v119;
            _os_log_impl(&dword_297476000, v100, OS_LOG_TYPE_DEFAULT, "Moved %s -> %s", v152, 0x16u);
            if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_254;
            }

            goto LABEL_272;
          }

LABEL_226:
          if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB248))
          {
            qword_2A18CB250 = 0;
            qword_2A18CB258 = 0;
            __cxa_guard_release(&qword_2A18CB248);
          }

          if (_MergedGlobals_6 == -1)
          {
            v106 = qword_2A18CB258;
            if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_274;
            }
          }

          else
          {
            dispatch_once(&_MergedGlobals_6, &__block_literal_global_5);
            v106 = qword_2A18CB258;
            if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_274;
            }
          }

          v107 = *(a1 + 23);
          if (v107 >= 0)
          {
            v108 = *(a1 + 23);
          }

          else
          {
            v108 = *(a1 + 8);
          }

          v109 = v108 + 1;
          if (v108 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v109 < 0x17)
          {
            memset(&buf, 0, sizeof(buf));
            v111 = &buf;
            *(&buf.__r_.__value_.__s + 23) = v108 + 1;
            if (!v108)
            {
              goto LABEL_261;
            }
          }

          else
          {
            if ((v109 | 7) == 0x17)
            {
              v110 = 25;
            }

            else
            {
              v110 = (v109 | 7) + 1;
            }

            v111 = operator new(v110);
            buf.__r_.__value_.__l.__size_ = v108 + 1;
            buf.__r_.__value_.__r.__words[2] = v110 | 0x8000000000000000;
            buf.__r_.__value_.__r.__words[0] = v111;
          }

          v120 = *a1;
          if (v107 >= 0)
          {
            v121 = a1;
          }

          else
          {
            v121 = *a1;
          }

          memmove(v111, v121, v108);
LABEL_261:
          *(&v111->__r_.__value_.__l.__data_ + v108) = 47;
          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v122 = &v157;
          }

          else
          {
            v122 = v157.__r_.__value_.__r.__words[0];
          }

          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v123 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v123 = v157.__r_.__value_.__l.__size_;
          }

          v124 = std::string::append(&buf, v122, v123);
          v125 = *&v124->__r_.__value_.__l.__data_;
          v141.__r_.__value_.__r.__words[2] = v124->__r_.__value_.__r.__words[2];
          *&v141.__r_.__value_.__l.__data_ = v125;
          v124->__r_.__value_.__l.__size_ = 0;
          v124->__r_.__value_.__r.__words[2] = 0;
          v124->__r_.__value_.__r.__words[0] = 0;
          v126 = &v141;
          if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v126 = v141.__r_.__value_.__r.__words[0];
          }

          v127 = __p;
          if (SHIBYTE(__p[2]) < 0)
          {
            v127 = __p[0];
          }

          *v152 = 136315394;
          v153 = v126;
          v154 = 2080;
          v155 = v127;
          _os_log_error_impl(&dword_297476000, v106, OS_LOG_TYPE_ERROR, "Failed to move %s -> %s", v152, 0x16u);
          if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_254:
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_273;
            }

            goto LABEL_274;
          }

LABEL_272:
          operator delete(v141.__r_.__value_.__l.__data_);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_273:
            operator delete(buf.__r_.__value_.__l.__data_);
          }

LABEL_274:
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
            if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_161;
            }

LABEL_276:
            operator delete(v157.__r_.__value_.__l.__data_);
            v14 += 3;
            if (v14 == v131)
            {
              goto LABEL_143;
            }
          }

          else
          {
            if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_276;
            }

LABEL_161:
            v14 += 3;
            if (v14 == v131)
            {
              goto LABEL_143;
            }
          }
        }
      }

      goto LABEL_143;
    }
  }

  else
  {
    std::locale::~locale(&v143);
    if (filtered_files)
    {
      goto LABEL_11;
    }
  }

  if ((atomic_load_explicit(&qword_2A18CB248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB248))
  {
    qword_2A18CB250 = 0;
    qword_2A18CB258 = 0;
    __cxa_guard_release(&qword_2A18CB248);
  }

  if (_MergedGlobals_6 == -1)
  {
    v66 = qword_2A18CB258;
    if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_143;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_6, &__block_literal_global_5);
    v66 = qword_2A18CB258;
    if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_143;
    }
  }

  v128 = a1;
  if (*(a1 + 23) < 0)
  {
    v128 = *a1;
  }

  LODWORD(v157.__r_.__value_.__l.__data_) = 136315138;
  *(v157.__r_.__value_.__r.__words + 4) = v128;
  _os_log_error_impl(&dword_297476000, v66, OS_LOG_TYPE_ERROR, "Did not find any matching content in source directory %s", &v157, 0xCu);
LABEL_143:
  if (a3)
  {
    v67 = *(a1 + 23);
    if (v67 < 0)
    {
      v68 = *a1;
    }

    if (v67 >= 0)
    {
      v69 = *(a1 + 23);
    }

    else
    {
      v69 = *(a1 + 8);
    }

    ctu::fs::remove_dir();
  }

  v70 = v149;
  if (v149)
  {
    v71 = v150;
    v72 = v149;
    if (v150 != v149)
    {
      do
      {
        v73 = *(v71 - 1);
        v71 -= 3;
        if (v73 < 0)
        {
          operator delete(*v71);
        }
      }

      while (v71 != v70);
      v72 = v149;
    }

    v150 = v70;
    operator delete(v72);
  }

  v74 = *MEMORY[0x29EDCA608];
}

void sub_297588610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, char a52)
{
  if (a51 < 0)
  {
    operator delete(__p);
  }

  if (*(v52 - 105) < 0)
  {
    operator delete(*(v52 - 128));
  }

  std::vector<std::string>::~vector[abi:ne200100]((v52 - 216));
  _Unwind_Resume(a1);
}

void util::generateSHA256(const char *a1@<X0>, void *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v42 = *MEMORY[0x29EDCA608];
  v8 = operator new(0x20uLL);
  *(a4 + 8) = v8 + 2;
  *(a4 + 16) = v8 + 2;
  *v8 = 0u;
  v8[1] = 0u;
  *a4 = v8;
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_2A18CB248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB248))
    {
      qword_2A18CB250 = 0;
      qword_2A18CB258 = 0;
      __cxa_guard_release(&qword_2A18CB248);
    }

    if (_MergedGlobals_6 == -1)
    {
      v17 = qword_2A18CB258;
      if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_6, &__block_literal_global_5);
      v17 = qword_2A18CB258;
      if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }
    }

    LOWORD(c.count[0]) = 0;
    v18 = "dataIn buffer is NULL";
    p_c = &c;
    v20 = v17;
    v21 = 2;
LABEL_25:
    _os_log_error_impl(&dword_297476000, v20, OS_LOG_TYPE_ERROR, v18, p_c, v21);
    goto LABEL_30;
  }

  *&c.wbuf[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&c.wbuf[6] = v9;
  *&c.wbuf[10] = v9;
  *&c.hash[6] = v9;
  *&c.wbuf[2] = v9;
  *c.count = v9;
  *&c.hash[2] = v9;
  v10 = a1[23];
  if (v10 < 0)
  {
    v11 = *a1;
  }

  if (v10 >= 0)
  {
    v12 = a1[23];
  }

  else
  {
    v12 = *(a1 + 1);
  }

  if (ctu::fs::get_file_size())
  {
    CC_SHA256_Init(&c);
    v13 = a1;
    if (a1[23] < 0)
    {
      v13 = *a1;
    }

    v14 = open(v13, 0);
    if (v14 >= 1)
    {
      v15 = 0;
      while (1)
      {
        v16 = read(v14, a2, a3);
        if (v16 == -1)
        {
          break;
        }

        CC_SHA256_Update(&c, a2, v16);
        v15 += v16;
        if (v15 >= 0xAAAAAAAAAAAAAAAALL)
        {
          goto LABEL_29;
        }
      }

      if ((atomic_load_explicit(&qword_2A18CB248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB248))
      {
        qword_2A18CB250 = 0;
        qword_2A18CB258 = 0;
        __cxa_guard_release(&qword_2A18CB248);
      }

      if (_MergedGlobals_6 == -1)
      {
        v27 = qword_2A18CB258;
        if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR))
        {
LABEL_29:
          CC_SHA256_Final(*a4, &c);
          close(v14);
          goto LABEL_30;
        }
      }

      else
      {
        dispatch_once(&_MergedGlobals_6, &__block_literal_global_5);
        v27 = qword_2A18CB258;
        if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }
      }

      if (a1[23] < 0)
      {
        a1 = *a1;
      }

      v29 = __error();
      v30 = strerror(*v29);
      v31 = *__error();
      v32 = *__error();
      *buf = 136315906;
      v35 = a1;
      v36 = 2080;
      v37 = v30;
      v38 = 1024;
      v39 = v31;
      v40 = 1024;
      v41 = v32;
      _os_log_error_impl(&dword_297476000, v27, OS_LOG_TYPE_ERROR, "Failed to read %s : %s (%d, 0x%x)", buf, 0x22u);
      goto LABEL_29;
    }

    if ((atomic_load_explicit(&qword_2A18CB248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB248))
    {
      qword_2A18CB250 = 0;
      qword_2A18CB258 = 0;
      __cxa_guard_release(&qword_2A18CB248);
    }

    if (_MergedGlobals_6 != -1)
    {
      dispatch_once(&_MergedGlobals_6, &__block_literal_global_5);
      v22 = qword_2A18CB258;
      if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    v22 = qword_2A18CB258;
    if (os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR))
    {
LABEL_22:
      if (a1[23] < 0)
      {
        a1 = *a1;
      }

      v23 = __error();
      v24 = strerror(*v23);
      v25 = *__error();
      v26 = *__error();
      *buf = 136315906;
      v35 = a1;
      v36 = 2080;
      v37 = v24;
      v38 = 1024;
      v39 = v25;
      v40 = 1024;
      v41 = v26;
      v18 = "Failed to open %s : %s (%d, 0x%x)";
      p_c = buf;
      v20 = v22;
      v21 = 34;
      goto LABEL_25;
    }
  }

LABEL_30:
  v28 = *MEMORY[0x29EDCA608];
}

void sub_297588C28(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL util::markPurgeableFile(uint64_t *a1)
{
  v1 = a1;
  v27 = *MEMORY[0x29EDCA608];
  v16 = 65541;
  if (*(a1 + 23) < 0)
  {
    v2 = open(*a1, 0);
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    if ((atomic_load_explicit(&qword_2A18CB248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB248))
    {
      qword_2A18CB250 = 0;
      qword_2A18CB258 = 0;
      __cxa_guard_release(&qword_2A18CB248);
    }

    if (_MergedGlobals_6 == -1)
    {
      v12 = qword_2A18CB258;
      result = os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_19;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_6, &__block_literal_global_5);
      v12 = qword_2A18CB258;
      result = os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_19;
      }
    }

    if (*(v1 + 23) < 0)
    {
      v1 = *v1;
    }

    v13 = __error();
    v14 = strerror(*v13);
    *buf = 136315394;
    v18 = v1;
    v19 = 2080;
    v20 = v14;
    v9 = "Failed to open %s : %s";
    v10 = v12;
    v11 = 22;
    goto LABEL_17;
  }

  v2 = open(a1, 0);
  if (v2 < 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  v3 = v2;
  v4 = ffsctl(v2, 0xC0084A44uLL, &v16, 0);
  close(v3);
  if (!v4)
  {
    result = 1;
    goto LABEL_19;
  }

  if ((atomic_load_explicit(&qword_2A18CB248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB248))
  {
    qword_2A18CB250 = 0;
    qword_2A18CB258 = 0;
    __cxa_guard_release(&qword_2A18CB248);
  }

  if (_MergedGlobals_6 != -1)
  {
    dispatch_once(&_MergedGlobals_6, &__block_literal_global_5);
    v5 = qword_2A18CB258;
    result = os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  v5 = qword_2A18CB258;
  result = os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR);
  if (result)
  {
LABEL_7:
    if (*(v1 + 23) < 0)
    {
      v1 = *v1;
    }

    v7 = __error();
    v8 = strerror(*v7);
    *buf = 136316162;
    v18 = v1;
    v19 = 2080;
    v20 = v8;
    v21 = 1024;
    v22 = v4;
    v23 = 1024;
    v24 = v4;
    v25 = 2048;
    v26 = v16;
    v9 = "Failed to mark %s as purgeable: %s (%d, 0x%x) (flags 0x%llx)";
    v10 = v5;
    v11 = 44;
LABEL_17:
    _os_log_error_impl(&dword_297476000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
    result = 0;
  }

LABEL_19:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL util::checkLogFileAge(uint64_t a1, int64_t a2, uint64_t a3)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v46 = 0xAAAAAAAAAAAAAAAALL;
  v48 = 0xAAAAAAAAAAAAAA00;
  v50 = v4;
  v47 = 0;
  v49 = 0uLL;
  LOBYTE(v50) = 0;
  BYTE8(v50) = 0;
  v51 = 0;
  memset(v45, 0, sizeof(v45));
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v54 = 0xAAAAAAAAAAAAAA00;
  __p.tm_gmtoff = 0xAAAAAAAAAAAAAAAALL;
  v57 = v4;
  __p.tm_zone = 0;
  v53 = 0;
  v55 = 0;
  v56 = 0;
  LOBYTE(v57) = 0;
  BYTE8(v57) = 0;
  v58 = 0;
  memset(&__p, 0, 41);
  v8 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a3, v6, (v6 + v7), &__p, 4160);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v45, v6, (v6 + v7), &__p.tm_sec, 0);
  if (*&__p.tm_sec)
  {
    *&__p.tm_hour = *&__p.tm_sec;
    operator delete(*&__p.tm_sec);
  }

  if (v8 && (v50 & 1) == 0)
  {
    memset(&__p, 0, sizeof(__p));
    v12 = *v45;
    if (*(*v45 + 40) != 1)
    {
      memset(&__dst, 0, sizeof(__dst));
LABEL_21:
      util::convert<int>(&__dst, &__p.tm_year, 10);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        __p.tm_year -= 1900;
        if (*(v12 + 64) == 1)
        {
LABEL_23:
          v17 = *(v12 + 48);
          v18 = *(v12 + 56);
          v19 = v18 - v17;
          if ((v18 - v17) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v19 > 0x16)
          {
            if ((v19 | 7) == 0x17)
            {
              v39 = 25;
            }

            else
            {
              v39 = (v19 | 7) + 1;
            }

            p_dst = operator new(v39);
            __dst.__r_.__value_.__l.__size_ = v18 - v17;
            __dst.__r_.__value_.__r.__words[2] = v39 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = p_dst;
            if (v18 == v17)
            {
              goto LABEL_27;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v18 - v17;
            p_dst = &__dst;
            if (v18 == v17)
            {
LABEL_27:
              p_dst->__r_.__value_.__s.__data_[v19] = 0;
              goto LABEL_30;
            }
          }

          memmove(p_dst, v17, v18 - v17);
          goto LABEL_27;
        }
      }

      else
      {
        __p.tm_year -= 1900;
        if (*(v12 + 64) == 1)
        {
          goto LABEL_23;
        }
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_30:
      util::convert<int>(&__dst, &__p.tm_mon, 10);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        --__p.tm_mon;
        if (*(v12 + 88) == 1)
        {
LABEL_32:
          v21 = *(v12 + 72);
          v22 = *(v12 + 80);
          v23 = v22 - v21;
          if ((v22 - v21) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v23 > 0x16)
          {
            if ((v23 | 7) == 0x17)
            {
              v40 = 25;
            }

            else
            {
              v40 = (v23 | 7) + 1;
            }

            v24 = operator new(v40);
            __dst.__r_.__value_.__l.__size_ = v22 - v21;
            __dst.__r_.__value_.__r.__words[2] = v40 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v24;
            if (v22 == v21)
            {
              goto LABEL_36;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v22 - v21;
            v24 = &__dst;
            if (v22 == v21)
            {
LABEL_36:
              v24->__r_.__value_.__s.__data_[v23] = 0;
              goto LABEL_39;
            }
          }

          memmove(v24, v21, v22 - v21);
          goto LABEL_36;
        }
      }

      else
      {
        --__p.tm_mon;
        if (*(v12 + 88) == 1)
        {
          goto LABEL_32;
        }
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_39:
      util::convert<int>(&__dst, (&__p | 0xC), 10);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (*(v12 + 112) == 1)
        {
LABEL_41:
          v25 = *(v12 + 96);
          v26 = *(v12 + 104);
          v27 = v26 - v25;
          if ((v26 - v25) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v27 > 0x16)
          {
            if ((v27 | 7) == 0x17)
            {
              v41 = 25;
            }

            else
            {
              v41 = (v27 | 7) + 1;
            }

            v28 = operator new(v41);
            __dst.__r_.__value_.__l.__size_ = v26 - v25;
            __dst.__r_.__value_.__r.__words[2] = v41 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v28;
            if (v26 == v25)
            {
              goto LABEL_45;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v26 - v25;
            v28 = &__dst;
            if (v26 == v25)
            {
LABEL_45:
              v28->__r_.__value_.__s.__data_[v27] = 0;
              goto LABEL_48;
            }
          }

          memmove(v28, v25, v26 - v25);
          goto LABEL_45;
        }
      }

      else if (*(v12 + 112) == 1)
      {
        goto LABEL_41;
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_48:
      util::convert<int>(&__dst, &__p.tm_hour, 10);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (*(v12 + 136) == 1)
        {
LABEL_50:
          v29 = *(v12 + 120);
          v30 = *(v12 + 128);
          v31 = v30 - v29;
          if ((v30 - v29) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v31 > 0x16)
          {
            if ((v31 | 7) == 0x17)
            {
              v42 = 25;
            }

            else
            {
              v42 = (v31 | 7) + 1;
            }

            v32 = operator new(v42);
            __dst.__r_.__value_.__l.__size_ = v30 - v29;
            __dst.__r_.__value_.__r.__words[2] = v42 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v32;
            if (v30 == v29)
            {
              goto LABEL_54;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v30 - v29;
            v32 = &__dst;
            if (v30 == v29)
            {
LABEL_54:
              v32->__r_.__value_.__s.__data_[v31] = 0;
              goto LABEL_57;
            }
          }

          memmove(v32, v29, v30 - v29);
          goto LABEL_54;
        }
      }

      else if (*(v12 + 136) == 1)
      {
        goto LABEL_50;
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_57:
      util::convert<int>(&__dst, &__p.tm_min, 10);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (*(v12 + 160) == 1)
        {
LABEL_59:
          v33 = *(v12 + 144);
          v34 = *(v12 + 152);
          v35 = v34 - v33;
          if ((v34 - v33) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v35 > 0x16)
          {
            if ((v35 | 7) == 0x17)
            {
              v43 = 25;
            }

            else
            {
              v43 = (v35 | 7) + 1;
            }

            v36 = operator new(v43);
            __dst.__r_.__value_.__l.__size_ = v34 - v33;
            __dst.__r_.__value_.__r.__words[2] = v43 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v36;
            if (v34 == v33)
            {
              goto LABEL_63;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v34 - v33;
            v36 = &__dst;
            if (v34 == v33)
            {
LABEL_63:
              v36->__r_.__value_.__s.__data_[v35] = 0;
              goto LABEL_66;
            }
          }

          memmove(v36, v33, v34 - v33);
          goto LABEL_63;
        }
      }

      else if (*(v12 + 160) == 1)
      {
        goto LABEL_59;
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_66:
      util::convert<int>(&__dst, &__p, 10);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      __p.tm_isdst = -1;
      v37 = mktime(&__p);
      __dst.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
      __dst.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
      gettimeofday(&__dst, 0);
      v9 = (__dst.__r_.__value_.__r.__words[0] - v37) > a2;
      v10 = *v45;
      if (*v45)
      {
        goto LABEL_12;
      }

      return v9;
    }

    v13 = *(*v45 + 24);
    v14 = *(*v45 + 32);
    v15 = v14 - v13;
    if ((v14 - v13) > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v15 > 0x16)
    {
      if ((v15 | 7) == 0x17)
      {
        v38 = 25;
      }

      else
      {
        v38 = (v15 | 7) + 1;
      }

      v16 = operator new(v38);
      __dst.__r_.__value_.__l.__size_ = v14 - v13;
      __dst.__r_.__value_.__r.__words[2] = v38 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = v16;
      if (v14 == v13)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v14 - v13;
      v16 = &__dst;
      if (v14 == v13)
      {
LABEL_19:
        v16->__r_.__value_.__s.__data_[v15] = 0;
        goto LABEL_21;
      }
    }

    memmove(v16, v13, v14 - v13);
    goto LABEL_19;
  }

  v9 = 0;
  v10 = *v45;
  if (*v45)
  {
LABEL_12:
    *&v45[8] = v10;
    operator delete(v10);
  }

  return v9;
}

void sub_29758953C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void util::findBasebandLogInfoFile(const void **a1@<X0>, __int128 **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v50 = a2[1];
  if (v3 == v50)
  {
    return;
  }

  v49 = &v50 + 3;
  while (1)
  {
    memset(&v52, 170, sizeof(v52));
    if (*(v3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v52, *v3, *(v3 + 1));
    }

    else
    {
      v5 = *v3;
      v52.__r_.__value_.__r.__words[2] = *(v3 + 2);
      *&v52.__r_.__value_.__l.__data_ = v5;
    }

    memset(__p, 170, sizeof(__p));
    v6 = *(a1 + 23);
    if (v6 >= 0)
    {
      v7 = *(a1 + 23);
    }

    else
    {
      v7 = a1[1];
    }

    v8 = SHIBYTE(v52.__r_.__value_.__r.__words[2]);
    if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v52.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v52.__r_.__value_.__l.__size_;
    }

    v10 = size + v7;
    if (size + v7 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v10 <= 0x16)
    {
      memset(__p, 0, sizeof(__p));
      v12 = __p;
      HIBYTE(__p[2]) = size + v7;
      if (!v7)
      {
        goto LABEL_25;
      }

LABEL_21:
      v13 = *a1;
      if (v6 >= 0)
      {
        v14 = a1;
      }

      else
      {
        v14 = *a1;
      }

      memmove(v12, v14, v7);
      goto LABEL_25;
    }

    if ((v10 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v10 | 7) + 1;
    }

    v12 = operator new(v11);
    __p[1] = (size + v7);
    __p[2] = (v11 | 0x8000000000000000);
    __p[0] = v12;
    if (v7)
    {
      goto LABEL_21;
    }

LABEL_25:
    v15 = &v12[v7];
    if (size)
    {
      if (v8 >= 0)
      {
        v16 = &v52;
      }

      else
      {
        v16 = v52.__r_.__value_.__r.__words[0];
      }

      memmove(v15, v16, size);
    }

    v15[size] = 0;
    v17.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v17.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v53.st_blksize = v17;
    *v53.st_qspare = v17;
    v53.st_birthtimespec = v17;
    *&v53.st_size = v17;
    v53.st_mtimespec = v17;
    v53.st_ctimespec = v17;
    *&v53.st_uid = v17;
    v53.st_atimespec = v17;
    *&v53.st_dev = v17;
    if (SHIBYTE(__p[2]) >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    if (stat(v18, &v53) || (SHIBYTE(__p[2]) >= 0 ? (v20 = __p) : (v20 = __p[0]), v21 = opendir(v20), (v22 = v21) == 0))
    {
      v19 = HIBYTE(__p[2]);
      goto LABEL_35;
    }

    v23 = readdir(v21);
    closedir(v22);
    v19 = HIBYTE(__p[2]);
    if (v23)
    {
      break;
    }

LABEL_35:
    if (v19 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_60:
        operator delete(v52.__r_.__value_.__l.__data_);
      }
    }

    else if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_60;
    }

    v3 = (v3 + 24);
    if (v3 == v50)
    {
      return;
    }
  }

  if ((HIBYTE(__p[2]) & 0x80) == 0)
  {
    if (HIBYTE(__p[2]) <= 4u)
    {
      goto LABEL_100;
    }

    v24 = &v49[HIBYTE(__p[2])];
    if (*v24 == 1885626669 && v49[HIBYTE(__p[2]) + 4] == 108)
    {
      goto LABEL_80;
    }

    if (*v24 == 1935962413 && v24[4] == 115)
    {
      goto LABEL_80;
    }

    v27 = *v24;
    v28 = v24[4];
    if (v27 == 1634296877 && v28 == 103)
    {
      goto LABEL_80;
    }

    if (HIBYTE(__p[2]) < 9u)
    {
      goto LABEL_100;
    }

    v30 = __p;
    v31 = HIBYTE(__p[2]);
    goto LABEL_75;
  }

  v31 = __p[1];
  if (__p[1] < 5)
  {
    goto LABEL_100;
  }

  v30 = __p[0];
  v32 = __p[0] + __p[1];
  if ((*(__p[0] + __p[1] - 5) != 1885626669 || *(__p[0] + __p[1] - 1) != 108) && (*(v32 - 5) != 1935962413 || *(v32 - 1) != 115))
  {
    v35 = *(v32 - 5);
    v36 = *(v32 - 1);
    if (v35 != 1634296877 || v36 != 103)
    {
      if (__p[1] < 9)
      {
LABEL_100:
        std::string::__throw_out_of_range[abi:ne200100]();
      }

LABEL_75:
      v38 = v30 + v31;
      v39 = *(v38 - 9);
      v40 = *(v38 - 1);
      if (v39 == 0x636172742D62622DLL && v40 == 101)
      {
        goto LABEL_80;
      }

      goto LABEL_35;
    }
  }

LABEL_80:
  v42 = SHIBYTE(v52.__r_.__value_.__r.__words[2]);
  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v43 = v52.__r_.__value_.__l.__size_;
  }

  v44 = v43 + 9;
  if (v43 + 9 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v44 < 0x17)
  {
    memset(&v53, 0, 24);
    v46 = &v53;
    HIBYTE(v53.st_gid) = v43 + 9;
    if (v43)
    {
      goto LABEL_90;
    }
  }

  else
  {
    if ((v44 | 7) == 0x17)
    {
      v45 = 25;
    }

    else
    {
      v45 = (v44 | 7) + 1;
    }

    v46 = operator new(v45);
    v53.st_ino = v43 + 9;
    *&v53.st_uid = v45 | 0x8000000000000000;
    *&v53.st_dev = v46;
LABEL_90:
    if (v42 >= 0)
    {
      v47 = &v52;
    }

    else
    {
      v47 = v52.__r_.__value_.__r.__words[0];
    }

    memmove(v46, v47, v43);
  }

  strcpy(v46 + v43, "/info.txt");
  *a3 = *&v53.st_dev;
  a3[2] = *&v53.st_uid;
  if ((v19 & 0x80) == 0)
  {
    if ((v42 & 0x80) == 0)
    {
      return;
    }

LABEL_98:
    operator delete(v52.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p[0]);
  if ((*(&v52.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    goto LABEL_98;
  }
}

void sub_297589A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  _Unwind_Resume(exception_object);
}

uint64_t util::isDumpForSysdiagnose(uint64_t *a1, char *a2)
{
  __p[73] = *MEMORY[0x29EDCA608];
  v78 = 0;
  v79 = 0;
  v80 = 0;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v76[32] = v2;
  v77 = v2;
  *v76 = v2;
  *&v76[16] = v2;
  v3 = a2[23];
  if (v3 >= 0)
  {
    v4 = a2[23];
  }

  else
  {
    v4 = *(a2 + 1);
  }

  v5 = v4 + 2;
  if (v4 + 2 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = a2;
  if (v5 < 0x17)
  {
    v75[1] = 0;
    v75[2] = 0;
    HIBYTE(v75[2]) = v4 + 2;
    v10 = v75 + 2;
    v75[0] = 10798;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    v9 = operator new(v8);
    v75[1] = (v4 + 2);
    v75[2] = (v8 | 0x8000000000000000);
    v75[0] = v9;
    *v9 = 10798;
    v10 = v9 + 2;
  }

  v11 = *v6;
  if (v3 >= 0)
  {
    v12 = v6;
  }

  else
  {
    v12 = *v6;
  }

  memmove(v10, v12, v4);
LABEL_15:
  v10[v4] = 0;
  v13 = SHIBYTE(v75[2]);
  if ((SHIBYTE(v75[2]) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v75[2]) - 21) < 2)
    {
      v14 = (SHIBYTE(v75[2]) + 2);
      v15 = v75;
      v16 = 22;
LABEL_21:
      v17 = 2 * v16;
      if (v14 > 2 * v16)
      {
        v17 = v14;
      }

      if ((v17 | 7) == 0x17)
      {
        v18 = 25;
      }

      else
      {
        v18 = (v17 | 7) + 1;
      }

      if (v17 >= 0x17)
      {
        v19 = v18;
      }

      else
      {
        v19 = 23;
      }

      v20 = v16 == 22;
      goto LABEL_30;
    }

    v24 = v75;
    *(v75 + SHIBYTE(v75[2])) = 10798;
    v25 = (v13 + 2);
    if ((SHIBYTE(v75[2]) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  v13 = v75[1];
  v16 = (v75[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v16 - v75[1] >= 2)
  {
    v24 = v75[0];
    *(v75[0] + v75[1]) = 10798;
    v25 = (v13 + 2);
    if ((SHIBYTE(v75[2]) & 0x80000000) == 0)
    {
LABEL_36:
      HIBYTE(v75[2]) = v25 & 0x7F;
LABEL_39:
      v23 = &v25[v24];
      goto LABEL_40;
    }

LABEL_38:
    v75[1] = v25;
    goto LABEL_39;
  }

  v14 = v75[1] + 2;
  if ((0x7FFFFFFFFFFFFFF7 - (v75[2] & 0x7FFFFFFFFFFFFFFFLL)) < v75[1] - v16 + 2)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v75[0];
  if (v16 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_21;
  }

  v20 = 0;
  v19 = 0x7FFFFFFFFFFFFFF7;
LABEL_30:
  v21 = operator new(v19);
  v22 = v21;
  if (v13)
  {
    memmove(v21, v15, v13);
  }

  *(v22 + v13) = 10798;
  if (!v20)
  {
    operator delete(v15);
  }

  v75[1] = v14;
  v75[2] = (v19 | 0x8000000000000000);
  v75[0] = v22;
  v23 = &v14[v22];
LABEL_40:
  *v23 = 0;
  *__p = *v75;
  __p[2] = v75[2];
  memset(v75, 0, sizeof(v75));
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v76, __p, 0);
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v75[2]) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_45:
    operator delete(v75[0]);
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_46;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v75[2]) < 0)
  {
    goto LABEL_45;
  }

LABEL_42:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
LABEL_43:
    v74 = *a1;
    goto LABEL_47;
  }

LABEL_46:
  std::string::__init_copy_ctor_external(&v74, *a1, a1[1]);
LABEL_47:
  std::locale::locale(&v68, v76);
  v69 = *&v76[8];
  v70 = *&v76[24];
  v71 = *&v76[40];
  v72 = v77;
  if (v77)
  {
    atomic_fetch_add_explicit((v77 + 8), 1uLL, memory_order_relaxed);
  }

  v73 = *(&v77 + 1);
  FilteredFiles = support::fs::getFilteredFiles(&v74, &v68, &v78, 0);
  v27 = v72;
  if (v72 && !atomic_fetch_add(&v72->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
    std::locale::~locale(&v68);
    if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_52:
      if (FilteredFiles)
      {
        goto LABEL_53;
      }

LABEL_57:
      v28 = 0;
      v29 = v77;
      if (!v77)
      {
        goto LABEL_145;
      }

      goto LABEL_97;
    }
  }

  else
  {
    std::locale::~locale(&v68);
    if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_52;
    }
  }

  operator delete(v74.__r_.__value_.__l.__data_);
  if (!FilteredFiles)
  {
    goto LABEL_57;
  }

LABEL_53:
  memset(v75, 170, sizeof(v75));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v67, *a1, a1[1]);
  }

  else
  {
    v67 = *a1;
  }

  std::vector<std::string>::vector[abi:ne200100](&v65, &v78);
  util::findBasebandLogInfoFile(&v67.__r_.__value_.__l.__data_, &v65, v75);
  v30 = v65;
  if (v65)
  {
    v31 = v66;
    v32 = v65;
    if (v66 != v65)
    {
      do
      {
        v33 = *(v31 - 1);
        v31 -= 3;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = v65;
    }

    v66 = v30;
    operator delete(v32);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
    v34 = SHIBYTE(v75[2]);
    if (SHIBYTE(v75[2]) >= 0)
    {
      v35 = HIBYTE(v75[2]);
    }

    else
    {
      v35 = v75[1];
    }

    if (v35)
    {
LABEL_73:
      memset(__p, 170, 0x240uLL);
      v36 = *(a1 + 23);
      if (v36 >= 0)
      {
        v37 = *(a1 + 23);
      }

      else
      {
        v37 = a1[1];
      }

      v38 = v37 + v35;
      if (v37 + v35 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v38 <= 0x16)
      {
        memset(buf, 0, 24);
        v40 = buf;
        buf[23] = v37 + v35;
        if (!v37)
        {
          goto LABEL_104;
        }
      }

      else
      {
        if ((v38 | 7) == 0x17)
        {
          v39 = 25;
        }

        else
        {
          v39 = (v38 | 7) + 1;
        }

        v40 = operator new(v39);
        *&buf[8] = v37 + v35;
        *&buf[16] = v39 | 0x8000000000000000;
        *buf = v40;
        if (!v37)
        {
LABEL_104:
          v44 = &v40[v37];
          if (v34 >= 0)
          {
            v45 = v75;
          }

          else
          {
            v45 = v75[0];
          }

          memmove(v44, v45, v35);
          v44[v35] = 0;
          std::ifstream::basic_ifstream(__p, buf);
          if (buf[23] < 0)
          {
            operator delete(*buf);
            if (__p[17])
            {
              goto LABEL_109;
            }
          }

          else if (__p[17])
          {
LABEL_109:
            std::istream::seekg();
            memset(buf, 170, 24);
            v46 = buf;
            support::fs::readCurrentLine(__p, buf);
            v47 = buf[23];
            v49 = *buf;
            v48 = *&buf[8];
            if ((buf[23] & 0x80u) != 0)
            {
              v46 = *buf;
            }

            if ((buf[23] & 0x80u) == 0)
            {
              v48 = buf[23];
            }

            if (v48 >= 35)
            {
              v50 = &v46[v48];
              v51 = v46;
              do
              {
                v52 = memchr(v51, 98, v48 - 34);
                if (!v52)
                {
                  break;
                }

                if (*v52 == 0x6320676F6C206262 && *(v52 + 1) == 0x6F697463656C6C6FLL && *(v52 + 2) == 0x20726F66202D206ELL && *(v52 + 3) == 0x6E67616964737973 && *(v52 + 27) == 0x65736F6E67616964)
                {
                  if (v52 != v50 && v52 - v46 != -1)
                  {
                    v28 = 1;
                    goto LABEL_141;
                  }

                  break;
                }

                v51 = v52 + 1;
                v48 = v50 - v51;
              }

              while (v50 - v51 >= 35);
            }

            v28 = 0;
LABEL_141:
            if (v47 < 0)
            {
              operator delete(v49);
            }

LABEL_143:
            __p[0] = *MEMORY[0x29EDC9518];
            *(__p + *(__p[0] - 3)) = *(MEMORY[0x29EDC9518] + 24);
            MEMORY[0x29C271A60](&__p[2]);
            std::istream::~istream();
            MEMORY[0x29C271DA0](&__p[53]);
            if (SHIBYTE(v75[2]) < 0)
            {
              goto LABEL_144;
            }

            goto LABEL_96;
          }

          if ((atomic_load_explicit(&qword_2A18CB248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB248))
          {
            qword_2A18CB250 = 0;
            qword_2A18CB258 = 0;
            __cxa_guard_release(&qword_2A18CB248);
          }

          if (_MergedGlobals_6 == -1)
          {
            v57 = qword_2A18CB258;
            if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR))
            {
LABEL_135:
              v28 = 0;
              goto LABEL_143;
            }
          }

          else
          {
            dispatch_once(&_MergedGlobals_6, &__block_literal_global_5);
            v57 = qword_2A18CB258;
            if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_135;
            }
          }

          v64 = v75;
          if (SHIBYTE(v75[2]) < 0)
          {
            v64 = v75[0];
          }

          *buf = 136315138;
          *&buf[4] = v64;
          _os_log_error_impl(&dword_297476000, v57, OS_LOG_TYPE_ERROR, "Failed to open info baseband log info file %s", buf, 0xCu);
          goto LABEL_135;
        }
      }

      v42 = *a1;
      if (v36 >= 0)
      {
        v43 = a1;
      }

      else
      {
        v43 = *a1;
      }

      memmove(v40, v43, v37);
      goto LABEL_104;
    }
  }

  else
  {
    v34 = SHIBYTE(v75[2]);
    if (SHIBYTE(v75[2]) >= 0)
    {
      v35 = HIBYTE(v75[2]);
    }

    else
    {
      v35 = v75[1];
    }

    if (v35)
    {
      goto LABEL_73;
    }
  }

  if ((atomic_load_explicit(&qword_2A18CB248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB248))
  {
    qword_2A18CB250 = 0;
    qword_2A18CB258 = 0;
    __cxa_guard_release(&qword_2A18CB248);
  }

  if (_MergedGlobals_6 != -1)
  {
    dispatch_once(&_MergedGlobals_6, &__block_literal_global_5);
  }

  v41 = qword_2A18CB258;
  v28 = 0;
  if (os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_DEFAULT))
  {
    if (v6[23] < 0)
    {
      v6 = *v6;
    }

    LODWORD(__p[0]) = 136315138;
    *(__p + 4) = v6;
    _os_log_impl(&dword_297476000, v41, OS_LOG_TYPE_DEFAULT, "No baseband info file found for timestamp %s", __p, 0xCu);
    v28 = 0;
    if (SHIBYTE(v75[2]) < 0)
    {
LABEL_144:
      operator delete(v75[0]);
      v29 = v77;
      if (!v77)
      {
        goto LABEL_145;
      }

      goto LABEL_97;
    }
  }

  else if (SHIBYTE(v75[2]) < 0)
  {
    goto LABEL_144;
  }

LABEL_96:
  v29 = v77;
  if (!v77)
  {
    goto LABEL_145;
  }

LABEL_97:
  if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

LABEL_145:
  std::locale::~locale(v76);
  v58 = v78;
  if (v78)
  {
    v59 = v79;
    v60 = v78;
    if (v79 != v78)
    {
      do
      {
        v61 = *(v59 - 1);
        v59 -= 3;
        if (v61 < 0)
        {
          operator delete(*v59);
        }
      }

      while (v59 != v58);
      v60 = v78;
    }

    v79 = v58;
    operator delete(v60);
  }

  v62 = *MEMORY[0x29EDCA608];
  return v28;
}

void sub_29758A434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, std::locale a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void **a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, char a50)
{
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a31);
  std::vector<std::string>::~vector[abi:ne200100](&a40);
  _Unwind_Resume(a1);
}

void sub_29758A4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::locale a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void **a43)
{
  std::vector<std::string>::~vector[abi:ne200100](&a10);
  if (a18 < 0)
  {
    operator delete(a13);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a34);
  std::vector<std::string>::~vector[abi:ne200100](&a43);
  _Unwind_Resume(a1);
}

void sub_29758A4CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void **a43)
{
  if ((a33 & 0x80000000) == 0)
  {
    std::vector<std::string>::~vector[abi:ne200100](&a43);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::vector<std::string>::~vector[abi:ne200100](&a43);
  _Unwind_Resume(a1);
}

void sub_29758A4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::locale a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a17);
  if (a30 < 0)
  {
    JUMPOUT(0x29758A500);
  }

  JUMPOUT(0x29758A504);
}

void sub_29758A51C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (a55 < 0)
  {
    operator delete(__p);
    if (a33 < 0)
    {
LABEL_5:
      operator delete(a28);
      std::vector<std::string>::~vector[abi:ne200100](&a43);
      _Unwind_Resume(a1);
    }
  }

  else if (a33 < 0)
  {
    goto LABEL_5;
  }

  JUMPOUT(0x29758A4D8);
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1, uint64_t *a2)
{
  a1[59] = 0;
  v4 = MEMORY[0x29EDC9558] + 64;
  a1[53] = MEMORY[0x29EDC9558] + 64;
  v5 = *(MEMORY[0x29EDC9518] + 16);
  v6 = *(MEMORY[0x29EDC9518] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  a1[1] = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 2);
  v8 = MEMORY[0x29EDC9558] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[53] = v4;
  MEMORY[0x29C271A50](a1 + 2);
  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_29758A708(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x29C271DA0](v1);
  _Unwind_Resume(a1);
}

void util::findLastLogDumpTimestamp(util *this@<X0>, const char *__s@<X1>, const char *a3@<X2>, int a4@<W3>, char *a5@<X4>, std::string *a6@<X8>)
{
  v8 = a3;
  v10 = a6;
  v154 = *MEMORY[0x29EDCA608];
  a6->__r_.__value_.__r.__words[0] = 0;
  a6->__r_.__value_.__l.__size_ = 0;
  a6->__r_.__value_.__r.__words[2] = 0;
  v142 = 0;
  v143 = 0;
  v144 = 0;
  memset(v141, 170, sizeof(v141));
  v11 = strlen(__s);
  v106 = v10;
  if (v11 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (v11 | 7) + 1;
    }

    p_dst = operator new(v19);
    *(&__dst + 1) = v12;
    *v146 = v19 | 0x8000000000000000;
    *&__dst = p_dst;
  }

  else
  {
    v146[7] = v11;
    p_dst = &__dst;
    if (!v11)
    {
      LOBYTE(__dst) = 0;
      v14 = v146[7];
      if ((v146[7] & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  memcpy(p_dst, __s, v12);
  *(p_dst + v12) = 0;
  v14 = v146[7];
  if ((v146[7] & 0x8000000000000000) == 0)
  {
LABEL_5:
    if (v14 - 21 < 2)
    {
      v15 = v8;
      v16 = v14 + 2;
      v17 = &__dst;
      v18 = 22;
LABEL_15:
      v20 = 2 * v18;
      if (v16 > 2 * v18)
      {
        v20 = v16;
      }

      if ((v20 | 7) == 0x17)
      {
        v21 = 25;
      }

      else
      {
        v21 = (v20 | 7) + 1;
      }

      if (v20 >= 0x17)
      {
        v22 = v21;
      }

      else
      {
        v22 = 23;
      }

      v23 = v18 == 22;
      goto LABEL_24;
    }

    v27 = &__dst;
    *&v146[v14 - 16] = 10798;
    v28 = v14 + 2;
    if ((v146[7] & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_32;
  }

LABEL_12:
  v14 = *(&__dst + 1);
  v18 = (*v146 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v18 - *(&__dst + 1) >= 2)
  {
    v27 = __dst;
    *(__dst + *(&__dst + 1)) = 10798;
    v28 = v14 + 2;
    if ((v146[7] & 0x80000000) == 0)
    {
LABEL_30:
      v146[7] = v28 & 0x7F;
LABEL_33:
      v26 = v27 + v28;
      goto LABEL_34;
    }

LABEL_32:
    *(&__dst + 1) = v28;
    goto LABEL_33;
  }

  v16 = *(&__dst + 1) + 2;
  if (0x7FFFFFFFFFFFFFF7 - (*v146 & 0x7FFFFFFFFFFFFFFFuLL) < *(&__dst + 1) + 2 - v18)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v17 = __dst;
  v15 = v8;
  if (v18 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_15;
  }

  v23 = 0;
  v22 = 0x7FFFFFFFFFFFFFF7;
LABEL_24:
  v24 = operator new(v22);
  v25 = v24;
  if (v14)
  {
    memmove(v24, v17, v14);
  }

  *&v25[v14] = 10798;
  if (!v23)
  {
    operator delete(v17);
  }

  *(&__dst + 1) = v16;
  *v146 = v22 | 0x8000000000000000;
  *&__dst = v25;
  v26 = &v25[v16];
  v8 = v15;
LABEL_34:
  *v26 = 0;
  v141[2] = *v146;
  *&v29 = 0xAAAAAAAAAAAAAAAALL;
  *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v140 = v29;
  *v141 = __dst;
  *&v139[16] = v29;
  *&v139[32] = v29;
  *v139 = v29;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v139, v141, 0);
  *&v30 = 0xAAAAAAAAAAAAAAAALL;
  *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v137[32] = v30;
  v138 = v30;
  *v137 = v30;
  *&v137[16] = v30;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v137, "(\\d{4})-(\\d{2})-(\\d{2})-(\\d{2})-(\\d{2})-(\\d{2})-(\\d{3})", 0);
  v31 = strlen(this);
  if (v31 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v32 = v31;
  v108 = a5 == 0;
  if (v31 >= 0x17)
  {
    if ((v31 | 7) == 0x17)
    {
      v34 = 25;
    }

    else
    {
      v34 = (v31 | 7) + 1;
    }

    v33 = operator new(v34);
    __p[1] = v32;
    v136 = v34 | 0x8000000000000000;
    __p[0] = v33;
    goto LABEL_42;
  }

  HIBYTE(v136) = v31;
  v33 = __p;
  if (v31)
  {
LABEL_42:
    memcpy(v33, this, v32);
  }

  *(v32 + v33) = 0;
  std::locale::locale(&v129, v139);
  v130 = *&v139[8];
  v131 = *&v139[24];
  v132 = *&v139[40];
  v133 = v140;
  if (v140)
  {
    atomic_fetch_add_explicit((v140 + 8), 1uLL, memory_order_relaxed);
  }

  v134 = *(&v140 + 1);
  FilteredFiles = support::fs::getFilteredFiles(__p, &v129, &v142, 0);
  v36 = v133;
  if (v133 && !atomic_fetch_add(&v133->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
    std::locale::~locale(&v129);
    if ((SHIBYTE(v136) & 0x80000000) == 0)
    {
LABEL_48:
      if (!FilteredFiles)
      {
        goto LABEL_192;
      }

      goto LABEL_52;
    }
  }

  else
  {
    std::locale::~locale(&v129);
    if ((SHIBYTE(v136) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }
  }

  operator delete(__p[0]);
  if (!FilteredFiles)
  {
    goto LABEL_192;
  }

LABEL_52:
  v38 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v143 - v142));
  if (v143 == v142)
  {
    v39 = 0;
  }

  else
  {
    v39 = v38;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,false>(v142, v143, v39, 1, v37);
  memset(&v128, 0, sizeof(v128));
  v40 = v142;
  v105 = v143;
  if (v142 == v143)
  {
LABEL_192:
    if (!v8)
    {
      goto LABEL_209;
    }

LABEL_193:
    if (SHIBYTE(v10->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v115, v10->__r_.__value_.__l.__data_, v10->__r_.__value_.__l.__size_);
    }

    else
    {
      v115 = *v10;
    }

    std::locale::locale(&v109, v137);
    v110 = *&v137[8];
    v111 = *&v137[24];
    v112 = *&v137[40];
    v113 = v138;
    if (v138)
    {
      atomic_fetch_add_explicit((v138 + 8), 1uLL, memory_order_relaxed);
    }

    v114 = *(&v138 + 1);
    v92 = util::checkLogFileAge(&v115, v8, &v109);
    v93 = v113;
    if (v113 && !atomic_fetch_add(&v113->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v93->__on_zero_shared)(v93);
      std::__shared_weak_count::__release_weak(v93);
      std::locale::~locale(&v109);
      if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_201:
        if (!v92)
        {
          goto LABEL_209;
        }

LABEL_205:
        if (SHIBYTE(v10->__r_.__value_.__r.__words[2]) < 0)
        {
          *v10->__r_.__value_.__l.__data_ = 0;
          v10->__r_.__value_.__l.__size_ = 0;
        }

        else
        {
          v10->__r_.__value_.__s.__data_[0] = 0;
          *(&v10->__r_.__value_.__s + 23) = 0;
        }

        goto LABEL_209;
      }
    }

    else
    {
      std::locale::~locale(&v109);
      if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_201;
      }
    }

    operator delete(v115.__r_.__value_.__l.__data_);
    if (!v92)
    {
      goto LABEL_209;
    }

    goto LABEL_205;
  }

  v101 = v8;
  v103 = a5;
  while (1)
  {
    memset(&v127, 170, sizeof(v127));
    v107 = v40;
    v41 = &v127;
    if (*(v40 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v127, *v40, v40[1]);
    }

    else
    {
      v42 = *v40;
      v127.__r_.__value_.__r.__words[2] = v40[2];
      *&v127.__r_.__value_.__l.__data_ = v42;
    }

    if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v128.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v128.__r_.__value_.__l.__size_;
    }

    v44 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
    v45 = SHIBYTE(v127.__r_.__value_.__r.__words[2]);
    v46 = *&v127.__r_.__value_.__l.__data_;
    if (size)
    {
      if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v47 = v127.__r_.__value_.__l.__size_;
        v41 = v127.__r_.__value_.__r.__words[0];
      }

      v48 = (v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v128 : v128.__r_.__value_.__r.__words[0];
      if (v47 >= size)
      {
        v69 = v41 + v47;
        v70 = v48->__r_.__value_.__s.__data_[0];
        v71 = v41;
        do
        {
          v72 = v47 - size;
          if (v72 == -1)
          {
            break;
          }

          v73 = memchr(v71, v70, v72 + 1);
          if (!v73)
          {
            break;
          }

          v74 = v73;
          if (!memcmp(v73, v48, size))
          {
            if (v74 == v69 || v74 - v41 == -1)
            {
              break;
            }

            v67 = 3;
            v10 = v106;
            if ((v45 & 0x80) == 0)
            {
              goto LABEL_171;
            }

            goto LABEL_133;
          }

          v71 = (v74 + 1);
          v47 = v69 - (v74 + 1);
        }

        while (v47 >= size);
      }
    }

    *&v49 = 0xAAAAAAAAAAAAAAAALL;
    *(&v49 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v125 = v49;
    v122 = 0xAAAAAAAAAAAAAA00;
    v119[1].__end_cap_.__value_ = 0xAAAAAAAAAAAAAAAALL;
    v120 = 0;
    v121 = 0;
    v123 = 0;
    v124 = 0;
    LOBYTE(v125) = 0;
    BYTE8(v125) = 0;
    v126 = 0;
    memset(v119, 0, 41);
    if (v108)
    {
      v152 = v49;
      v149 = 0xAAAAAAAAAAAAAA00;
      *&v146[24] = v49;
      v147 = 0;
      v148 = 0;
      v150 = 0;
      v151 = 0;
      LOBYTE(v152) = 0;
      BYTE8(v152) = 0;
      v153 = 0;
      __dst = 0uLL;
      *v146 = 0uLL;
      if (v45 >= 0)
      {
        v50 = &v127;
      }

      else
      {
        v50 = v46;
      }

      if (v45 >= 0)
      {
        v51 = v44;
      }

      else
      {
        v51 = *(&v46 + 1);
      }

      *&v146[9] = 0uLL;
      v52 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v137, v50, (v50 + v51), &__dst, 0);
      v53 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
      if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v54 = &v127;
      }

      else
      {
        v54 = v127.__r_.__value_.__r.__words[0];
      }

      if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v53 = v127.__r_.__value_.__l.__size_;
      }

      std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v119, v54, (v54 + v53), &__dst, 0);
      v10 = v106;
      if (__dst)
      {
        *(&__dst + 1) = __dst;
        operator delete(__dst);
      }

      if (v52)
      {
        p_matched = &v119[0].__begin_->matched;
        if (v119[0].__end_ == v119[0].__begin_)
        {
          p_matched = &v119[1].__end_cap_;
        }

        if (*p_matched != 1)
        {
          __dst = 0uLL;
          *v146 = 0;
          if (SHIBYTE(v106->__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_99:
            operator delete(v106->__r_.__value_.__l.__data_);
            *&v106->__r_.__value_.__l.__data_ = __dst;
            v106->__r_.__value_.__r.__words[2] = *v146;
            if (!a4)
            {
              goto LABEL_162;
            }

            goto LABEL_125;
          }

LABEL_124:
          *&v106->__r_.__value_.__l.__data_ = __dst;
          v106->__r_.__value_.__r.__words[2] = *v146;
          if (!a4)
          {
            goto LABEL_162;
          }

LABEL_125:
          v80 = strlen(this);
          if (v80 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v81 = v80;
          if (v80 >= 0x17)
          {
            if ((v80 | 7) == 0x17)
            {
              v84 = 25;
            }

            else
            {
              v84 = (v80 | 7) + 1;
            }

            v82 = operator new(v84);
            v117[1] = v81;
            v118 = v84 | 0x8000000000000000;
            v117[0] = v82;
          }

          else
          {
            HIBYTE(v118) = v80;
            v82 = v117;
            if (!v80)
            {
              LOBYTE(v117[0]) = 0;
              if ((SHIBYTE(v106->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_129:
                v116 = *v106;
                goto LABEL_146;
              }

LABEL_145:
              std::string::__init_copy_ctor_external(&v116, v106->__r_.__value_.__l.__data_, v106->__r_.__value_.__l.__size_);
LABEL_146:
              isDumpForSysdiagnose = util::isDumpForSysdiagnose(v117, &v116);
              if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v116.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v118) & 0x80000000) == 0)
                {
LABEL_148:
                  if (isDumpForSysdiagnose)
                  {
LABEL_149:
                    if ((atomic_load_explicit(&qword_2A18CB248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB248))
                    {
                      qword_2A18CB250 = 0;
                      qword_2A18CB258 = 0;
                      __cxa_guard_release(&qword_2A18CB248);
                    }

                    if (_MergedGlobals_6 == -1)
                    {
                      v86 = qword_2A18CB258;
                      if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_156;
                      }
                    }

                    else
                    {
                      dispatch_once(&_MergedGlobals_6, &__block_literal_global_5);
                      v86 = qword_2A18CB258;
                      if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_156;
                      }
                    }

                    if ((v106->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v87 = v106;
                    }

                    else
                    {
                      v87 = v106->__r_.__value_.__r.__words[0];
                    }

                    LODWORD(__dst) = 136315138;
                    *(&__dst + 4) = v87;
                    _os_log_impl(&dword_297476000, v86, OS_LOG_TYPE_DEFAULT, "Ignoring dump with timestamp %s for sysdiagnose", &__dst, 0xCu);
LABEL_156:
                    if (&v128 != v106)
                    {
                      v88 = HIBYTE(v106->__r_.__value_.__r.__words[2]);
                      if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
                      {
                        if (v88 >= 0)
                        {
                          v90 = v106;
                        }

                        else
                        {
                          v90 = v106->__r_.__value_.__r.__words[0];
                        }

                        if (v88 >= 0)
                        {
                          v91 = HIBYTE(v106->__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v91 = v106->__r_.__value_.__l.__size_;
                        }

                        std::string::__assign_no_alias<false>(&v128.__r_.__value_.__l.__data_, v90, v91);
                      }

                      else
                      {
                        if ((*(&v106->__r_.__value_.__s + 23) & 0x80) == 0)
                        {
                          v128 = *v106;
LABEL_185:
                          v67 = 0;
                          v106->__r_.__value_.__s.__data_[0] = 0;
                          *(&v106->__r_.__value_.__s + 23) = 0;
                          goto LABEL_167;
                        }

                        std::string::__assign_no_alias<true>(&v128, v106->__r_.__value_.__l.__data_, v106->__r_.__value_.__l.__size_);
                      }
                    }

                    if (SHIBYTE(v106->__r_.__value_.__r.__words[2]) < 0)
                    {
                      v67 = 0;
                      *v106->__r_.__value_.__l.__data_ = 0;
                      v106->__r_.__value_.__l.__size_ = 0;
                      goto LABEL_167;
                    }

                    goto LABEL_185;
                  }

LABEL_162:
                  v67 = 2;
LABEL_167:
                  v89 = 1;
LABEL_168:
                  v108 = v89;
                  begin = v119[0].__begin_;
                  if (v119[0].__begin_)
                  {
                    goto LABEL_169;
                  }

                  goto LABEL_170;
                }
              }

              else if ((SHIBYTE(v118) & 0x80000000) == 0)
              {
                goto LABEL_148;
              }

              operator delete(v117[0]);
              if (isDumpForSysdiagnose)
              {
                goto LABEL_149;
              }

              goto LABEL_162;
            }
          }

          memcpy(v82, this, v81);
          *(v81 + v82) = 0;
          if ((SHIBYTE(v106->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_129;
          }

          goto LABEL_145;
        }

        v56 = &v119[1];
        if (v119[0].__end_ != v119[0].__begin_)
        {
          v56 = v119[0].__begin_;
        }

        i = v56->first.__i_;
        p_i = &v119[0].__begin_->second.__i_;
        if (v119[0].__end_ == v119[0].__begin_)
        {
          p_i = &v119[1].__end_;
        }

        v59 = *p_i;
        v60 = *p_i - i;
        if (v60 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v60 > 0x16)
        {
          if ((v60 | 7) == 0x17)
          {
            v83 = 25;
          }

          else
          {
            v83 = (v60 | 7) + 1;
          }

          v61 = operator new(v83);
          *(&__dst + 1) = v60;
          *v146 = v83 | 0x8000000000000000;
          *&__dst = v61;
          if (v59 == i)
          {
LABEL_98:
            *(v61 + v60) = 0;
            if (SHIBYTE(v106->__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_99;
            }

            goto LABEL_124;
          }
        }

        else
        {
          v146[7] = *p_i - i;
          v61 = &__dst;
          if (v59 == i)
          {
            goto LABEL_98;
          }
        }

        memmove(v61, i, v60);
        goto LABEL_98;
      }

LABEL_166:
      v67 = 0;
      goto LABEL_167;
    }

    v62 = v45 < 0;
    if (v45 >= 0)
    {
      v63 = &v127;
    }

    else
    {
      v63 = v46;
    }

    if (v62)
    {
      v64 = *(&v46 + 1);
    }

    else
    {
      v64 = v44;
    }

    v65 = strlen(v103);
    v10 = v106;
    if (!v65)
    {
LABEL_165:
      std::string::__assign_external(&v128, v103);
      goto LABEL_166;
    }

    v66 = v65;
    if (v64 >= v65)
    {
      v75 = v63 + v64;
      v76 = *v103;
      v77 = v63;
      do
      {
        if (v64 - v66 == -1)
        {
          break;
        }

        v78 = memchr(v77, v76, v64 - v66 + 1);
        if (!v78)
        {
          break;
        }

        v79 = v78;
        if (!memcmp(v78, v103, v66))
        {
          v89 = 0;
          if (v79 != v75)
          {
            v67 = 0;
            if (v79 - v63 == -1)
            {
              goto LABEL_168;
            }

            goto LABEL_165;
          }

          v67 = 0;
          v108 = 0;
          begin = v119[0].__begin_;
          if (v119[0].__begin_)
          {
            goto LABEL_169;
          }

          goto LABEL_170;
        }

        v77 = (v79 + 1);
        v64 = v75 - (v79 + 1);
      }

      while (v64 >= v66);
    }

    v67 = 0;
    v108 = 0;
    begin = v119[0].__begin_;
    if (v119[0].__begin_)
    {
LABEL_169:
      v119[0].__end_ = begin;
      operator delete(begin);
    }

LABEL_170:
    v40 = v107;
    if ((*(&v127.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      break;
    }

LABEL_171:
    if (v67 != 3)
    {
      goto LABEL_172;
    }

LABEL_57:
    v40 += 3;
    if (v40 == v105)
    {
      goto LABEL_191;
    }
  }

LABEL_133:
  operator delete(v127.__r_.__value_.__l.__data_);
  if (v67 == 3)
  {
    goto LABEL_57;
  }

LABEL_172:
  if (!v67)
  {
    goto LABEL_57;
  }

LABEL_191:
  v8 = v101;
  if ((SHIBYTE(v128.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_192;
  }

  operator delete(v128.__r_.__value_.__l.__data_);
  if (v101)
  {
    goto LABEL_193;
  }

LABEL_209:
  v94 = v138;
  if (v138 && !atomic_fetch_add((v138 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v94->__on_zero_shared)(v94);
    std::__shared_weak_count::__release_weak(v94);
    std::locale::~locale(v137);
    v95 = v140;
    if (!v140)
    {
      goto LABEL_213;
    }

LABEL_212:
    if (atomic_fetch_add(&v95->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_213;
    }

    (v95->__on_zero_shared)(v95);
    std::__shared_weak_count::__release_weak(v95);
    std::locale::~locale(v139);
    if (SHIBYTE(v141[2]) < 0)
    {
LABEL_214:
      operator delete(v141[0]);
    }
  }

  else
  {
    std::locale::~locale(v137);
    v95 = v140;
    if (v140)
    {
      goto LABEL_212;
    }

LABEL_213:
    std::locale::~locale(v139);
    if (SHIBYTE(v141[2]) < 0)
    {
      goto LABEL_214;
    }
  }

  v96 = v142;
  if (v142)
  {
    v97 = v143;
    v98 = v142;
    if (v143 != v142)
    {
      do
      {
        v99 = *(v97 - 1);
        v97 -= 3;
        if (v99 < 0)
        {
          operator delete(*v97);
        }
      }

      while (v97 != v96);
      v98 = v142;
    }

    v143 = v96;
    operator delete(v98);
  }

  v100 = *MEMORY[0x29EDCA608];
}

void sub_29758B4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&STACK[0x200]);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&STACK[0x240]);
  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  std::vector<std::string>::~vector[abi:ne200100]((v19 - 248));
  if (*(a19 + 23) < 0)
  {
    operator delete(*a19);
  }

  _Unwind_Resume(a1);
}

uint64_t util::getNumberOfLogDumps(uint64_t a1, uint64_t a2)
{
  v173 = *MEMORY[0x29EDCA608];
  v153 = 0;
  v154 = 0;
  v155 = 0;
  v150 = 0u;
  v151 = 0u;
  v152 = 0xAAAAAAAA3F800000;
  v3 = operator new(0x48uLL);
  v4 = v3;
  strcpy(v3, "[0-9]{4}-[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2,4}-[0-9]{3}");
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v148[32] = v5;
  v149 = v5;
  *v148 = v5;
  *&v148[16] = v5;
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = v7 + 64;
  v133 = v3;
  if (v7 + 64 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8 <= 0x16)
  {
    memset(buf, 0, 24);
    v10 = buf;
    HIBYTE(buf[0].__end_cap_.__value_) = v7 + 64;
LABEL_12:
    v11 = *a2;
    if (v6 >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    memmove(v10, v12, v7);
    goto LABEL_16;
  }

  if ((v8 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v8 | 7) + 1;
  }

  v10 = operator new(v9);
  buf[0].__end_ = (v7 + 64);
  buf[0].__end_cap_.__value_ = (v9 | 0x8000000000000000);
  buf[0].__begin_ = v10;
  if (v7)
  {
    goto LABEL_12;
  }

LABEL_16:
  v13 = v10 + v7;
  v14 = *(v4 + 3);
  v16 = *v4;
  v15 = *(v4 + 1);
  *(v13 + 2) = *(v4 + 2);
  *(v13 + 3) = v14;
  *v13 = v16;
  *(v13 + 1) = v15;
  v13[64] = 0;
  value_high = SHIBYTE(buf[0].__end_cap_.__value_);
  if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(buf[0].__end_cap_.__value_) - 21) < 2)
    {
      v18 = (SHIBYTE(buf[0].__end_cap_.__value_) + 2);
      v19 = buf;
      v20 = 22;
LABEL_22:
      v21 = 2 * v20;
      if (v18 > 2 * v20)
      {
        v21 = v18;
      }

      if ((v21 | 7) == 0x17)
      {
        v22 = 25;
      }

      else
      {
        v22 = (v21 | 7) + 1;
      }

      if (v21 >= 0x17)
      {
        v23 = v22;
      }

      else
      {
        v23 = 23;
      }

      v24 = v20 == 22;
      goto LABEL_31;
    }

    begin = buf;
    *(&buf[0].__begin_ + SHIBYTE(buf[0].__end_cap_.__value_)) = 10798;
    v29 = (value_high + 2);
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_39;
  }

  value_high = buf[0].__end_;
  v20 = (buf[0].__end_cap_.__value_ & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v20 - buf[0].__end_ >= 2)
  {
    begin = buf[0].__begin_;
    *(&buf[0].__begin_->first.__i_ + buf[0].__end_) = 10798;
    v29 = (value_high + 2);
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
LABEL_37:
      HIBYTE(buf[0].__end_cap_.__value_) = v29 & 0x7F;
LABEL_40:
      v27 = v29 + begin;
      goto LABEL_41;
    }

LABEL_39:
    buf[0].__end_ = v29;
    goto LABEL_40;
  }

  v18 = (&buf[0].__end_->first.__i_ + 2);
  if ((0x7FFFFFFFFFFFFFF7 - (buf[0].__end_cap_.__value_ & 0x7FFFFFFFFFFFFFFFLL)) < (&buf[0].__end_->first.__i_ - v20 + 2))
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v19 = buf[0].__begin_;
  if (v20 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_22;
  }

  v24 = 0;
  v23 = 0x7FFFFFFFFFFFFFF7;
LABEL_31:
  v25 = operator new(v23);
  v26 = v25;
  if (value_high)
  {
    memmove(v25, v19, value_high);
  }

  *(&v26->first.__i_ + value_high) = 10798;
  if (!v24)
  {
    operator delete(v19);
  }

  buf[0].__end_ = v18;
  buf[0].__end_cap_.__value_ = (v23 | 0x8000000000000000);
  buf[0].__begin_ = v26;
  v27 = v18 + v26;
LABEL_41:
  *v27 = 0;
  *__p = buf[0];
  memset(buf, 0, 24);
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v148, __p, 0);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }
  }

  else if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
  {
    goto LABEL_43;
  }

  operator delete(buf[0].__begin_);
LABEL_43:
  *&v30 = 0xAAAAAAAAAAAAAAAALL;
  *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v146 = v30;
  v147 = v30;
  v145 = v30;
  *&v144[0].__locale_ = v30;
  v31 = *(a2 + 23);
  if (v31 >= 0)
  {
    v32 = *(a2 + 23);
  }

  else
  {
    v32 = *(a2 + 8);
  }

  v33 = v32 + 64;
  if (v32 + 64 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v33 <= 0x16)
  {
    memset(buf, 0, 24);
    v35 = buf;
    HIBYTE(buf[0].__end_cap_.__value_) = v32 + 64;
LABEL_54:
    v36 = *a2;
    if (v31 >= 0)
    {
      v37 = a2;
    }

    else
    {
      v37 = *a2;
    }

    memmove(v35, v37, v32);
    goto LABEL_58;
  }

  if ((v33 | 7) == 0x17)
  {
    v34 = 25;
  }

  else
  {
    v34 = (v33 | 7) + 1;
  }

  v35 = operator new(v34);
  buf[0].__end_ = (v32 + 64);
  buf[0].__end_cap_.__value_ = (v34 | 0x8000000000000000);
  buf[0].__begin_ = v35;
  if (v32)
  {
    goto LABEL_54;
  }

LABEL_58:
  v38 = v35 + v32;
  v39 = *(v4 + 3);
  v41 = *v4;
  v40 = *(v4 + 1);
  *(v38 + 2) = *(v4 + 2);
  *(v38 + 3) = v39;
  *v38 = v41;
  *(v38 + 1) = v40;
  v38[64] = 0;
  end = SHIBYTE(buf[0].__end_cap_.__value_);
  if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x8000000000000000) == 0)
  {
    if (SHIBYTE(buf[0].__end_cap_.__value_) < 0x17)
    {
      v43 = (SHIBYTE(buf[0].__end_cap_.__value_) + 29);
      v44 = buf;
      v45 = 22;
LABEL_66:
      v46 = 2 * v45;
      if (v43 > 2 * v45)
      {
        v46 = v43;
      }

      if ((v46 | 7) == 0x17)
      {
        v47 = 25;
      }

      else
      {
        v47 = (v46 | 7) + 1;
      }

      if (v46 >= 0x17)
      {
        v48 = v47;
      }

      else
      {
        v48 = 23;
      }

      v49 = v45 == 22;
      goto LABEL_75;
    }

    v53 = buf;
    qmemcpy(buf + SHIBYTE(buf[0].__end_cap_.__value_), "(?=-*)(?!(\\.json|\\.tailspin))", 29);
    v54 = end + 29;
    HIBYTE(buf[0].__end_cap_.__value_) = (end + 29) & 0x7F;
LABEL_82:
    v52 = &v53[v54];
    goto LABEL_83;
  }

  end = buf[0].__end_;
  v45 = (buf[0].__end_cap_.__value_ & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v45 - buf[0].__end_ >= 0x1D)
  {
    v53 = buf[0].__begin_;
    qmemcpy(buf[0].__begin_ + buf[0].__end_, "(?=-*)(?!(\\.json|\\.tailspin))", 29);
    v54 = end + 29;
    buf[0].__end_ = (end + 29);
    goto LABEL_82;
  }

  v43 = (buf[0].__end_ + 29);
  if ((0x7FFFFFFFFFFFFFF7 - (buf[0].__end_cap_.__value_ & 0x7FFFFFFFFFFFFFFFLL)) < (&buf[0].__end_[1].first.__i_ - v45 + 5))
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v44 = buf[0].__begin_;
  if (v45 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_66;
  }

  v49 = 0;
  v48 = 0x7FFFFFFFFFFFFFF7;
LABEL_75:
  v50 = operator new(v48);
  v51 = v50;
  if (end)
  {
    memmove(v50, v44, end);
  }

  qmemcpy(v51 + end, "(?=-*)(?!(\\.json|\\.tailspin))", 29);
  if (!v49)
  {
    operator delete(v44);
  }

  buf[0].__end_ = v43;
  buf[0].__end_cap_.__value_ = (v48 | 0x8000000000000000);
  buf[0].__begin_ = v51;
  v52 = v43 + v51;
LABEL_83:
  *v52 = 0;
  *__p = buf[0];
  memset(buf, 0, 24);
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v144, __p, 0);
  if ((__p[23] & 0x80000000) == 0)
  {
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
      goto LABEL_85;
    }

LABEL_88:
    operator delete(buf[0].__begin_);
    v55 = a1;
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_89;
  }

  operator delete(*__p);
  if (SHIBYTE(buf[0].__end_cap_.__value_) < 0)
  {
    goto LABEL_88;
  }

LABEL_85:
  v55 = a1;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
LABEL_86:
    v143 = *v55;
    goto LABEL_90;
  }

LABEL_89:
  std::string::__init_copy_ctor_external(&v143, v55->__r_.__value_.__l.__data_, v55->__r_.__value_.__l.__size_);
LABEL_90:
  std::locale::locale(&v137, v148);
  v138 = *&v148[8];
  v139 = *&v148[24];
  v140 = *&v148[40];
  v141 = v149;
  if (v149)
  {
    atomic_fetch_add_explicit((v149 + 8), 1uLL, memory_order_relaxed);
  }

  v142 = *(&v149 + 1);
  support::fs::getFilteredFiles(&v143, &v137, &v153, 0);
  v56 = v141;
  if (!v141 || atomic_fetch_add(&v141->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    std::locale::~locale(&v137);
    if ((SHIBYTE(v143.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_95;
    }

LABEL_98:
    operator delete(v143.__r_.__value_.__l.__data_);
    v57 = v153;
    v134 = v154;
    if (v153 == v154)
    {
      goto LABEL_252;
    }

LABEL_101:
    *&v58 = 0xAAAAAAAAAAAAAAAALL;
    *(&v58 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v171 = v58;
    v168 = 0xAAAAAAAAAAAAAA00;
    buf[1].__end_cap_.__value_ = 0xAAAAAAAAAAAAAAAALL;
    v166 = 0;
    v167 = 0;
    v169 = 0;
    v170 = 0;
    LOBYTE(v171) = 0;
    BYTE8(v171) = 0;
    v172 = 0;
    memset(buf, 0, 41);
    v163 = v58;
    v160 = 0xAAAAAAAAAAAAAA00;
    v157 = 0xAAAAAAAAAAAAAAAALL;
    v158 = 0;
    v159 = 0;
    v161 = 0;
    v162 = 0;
    LOBYTE(v163) = 0;
    BYTE8(v163) = 0;
    v164 = 0;
    memset(__p, 0, sizeof(__p));
    second = *(&v57->matched + 7);
    if (second >= 0)
    {
      first = v57;
    }

    else
    {
      first = v57->first;
    }

    if (second < 0)
    {
      second = v57->second;
    }

    v61 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v144, first, &second[first], __p, 0);
    v62 = *(&v57->matched + 7);
    if (v62 >= 0)
    {
      v63 = v57;
    }

    else
    {
      v63 = v57->first;
    }

    if (v62 < 0)
    {
      v62 = v57->second;
    }

    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(buf, v63, &v62[v63], __p, 0);
    if (*__p)
    {
      *&__p[8] = *__p;
      operator delete(*__p);
    }

    if (!v61)
    {
      goto LABEL_188;
    }

    p_matched = &buf[0].__begin_->matched;
    if (buf[0].__end_ == buf[0].__begin_)
    {
      p_matched = &buf[1].__end_cap_;
    }

    if (*p_matched != 1)
    {
      v72 = 0;
      v73 = 0;
      v71 = 0;
      __dst = 0uLL;
      v136 = 0;
LABEL_127:
      if ((v71 & 0x80u) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = v73;
      }

      if ((v71 & 0x80u) == 0)
      {
        v75 = v71;
      }

      else
      {
        v75 = v72;
      }

      v76 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](__p, p_dst, v75);
      v77 = v76;
      v78 = *(&v150 + 1);
      if (!*(&v150 + 1))
      {
        v80 = 0xAAAAAAAAAAAAAAAALL;
        goto LABEL_181;
      }

      v79 = vcnt_s8(*(&v150 + 8));
      v79.i16[0] = vaddlv_u8(v79);
      if (v79.u32[0] > 1uLL)
      {
        v80 = v76;
        if (v76 >= *(&v150 + 1))
        {
          v80 = v76 % *(&v150 + 1);
        }
      }

      else
      {
        v80 = (*(&v150 + 1) - 1) & v76;
      }

      v81 = *(v150 + 8 * v80);
      if (!v81)
      {
        goto LABEL_181;
      }

      v82 = *v81;
      if (!*v81)
      {
        goto LABEL_181;
      }

      v83 = HIBYTE(v136);
      if (v136 >= 0)
      {
        v84 = HIBYTE(v136);
      }

      else
      {
        v84 = *(&__dst + 1);
      }

      if (v136 >= 0)
      {
        v85 = &__dst;
      }

      else
      {
        v85 = __dst;
      }

      if (v79.u32[0] < 2uLL)
      {
        do
        {
          v90 = v82[1];
          if (v90 == v77)
          {
            v91 = *(v82 + 39);
            v92 = v91;
            if (v91 < 0)
            {
              v91 = v82[3];
            }

            if (v91 == v84)
            {
              v93 = v92 >= 0 ? (v82 + 2) : v82[2];
              if (!memcmp(v93, v85, v84))
              {
                v4 = v133;
                goto LABEL_173;
              }
            }
          }

          else if ((v90 & (v78 - 1)) != v80)
          {
            break;
          }

          v82 = *v82;
        }

        while (v82);
        v4 = v133;
LABEL_181:
        v95 = operator new(0x28uLL);
        *__p = v95;
        *&__p[8] = &v150;
        *&__p[16] = 1;
        *v95 = 0;
        v95[1] = v77;
        *(v95 + 1) = __dst;
        v95[4] = v136;
        __dst = 0uLL;
        v136 = 0;
        v96 = (*(&v151 + 1) + 1);
        if (v78 && (*&v152 * v78) >= v96)
        {
          v97 = v150;
          v98 = *(v150 + 8 * v80);
          if (v98)
          {
            goto LABEL_184;
          }

LABEL_232:
          *v95 = v151;
          *&v151 = v95;
          *(v97 + 8 * v80) = &v151;
          if (*v95)
          {
            v117 = *(*v95 + 8);
            if ((v78 & (v78 - 1)) != 0)
            {
              if (v117 >= v78)
              {
                v117 %= v78;
              }

              v98 = (v97 + 8 * v117);
            }

            else
            {
              v98 = (v97 + 8 * (v117 & (v78 - 1)));
            }

LABEL_185:
            *v98 = v95;
          }

          ++*(&v151 + 1);
          if (v136 < 0)
          {
            goto LABEL_187;
          }

          goto LABEL_188;
        }

        v99 = (v78 & (v78 - 1)) != 0;
        if (v78 < 3)
        {
          v99 = 1;
        }

        v100 = v99 | (2 * v78);
        v101 = vcvtps_u32_f32(v96 / *&v152);
        if (v100 <= v101)
        {
          prime = v101;
        }

        else
        {
          prime = v100;
        }

        if (prime == 1)
        {
          prime = 2;
        }

        else if ((prime & (prime - 1)) != 0)
        {
          prime = std::__next_prime(prime);
          v78 = *(&v150 + 1);
        }

        if (prime <= v78)
        {
          if (prime >= v78)
          {
            goto LABEL_230;
          }

          v111 = vcvtps_u32_f32(*(&v151 + 1) / *&v152);
          if (v78 < 3 || (v112 = vcnt_s8(v78), v112.i16[0] = vaddlv_u8(v112), v112.u32[0] > 1uLL))
          {
            v111 = std::__next_prime(v111);
          }

          else
          {
            v113 = 1 << -__clz(v111 - 1);
            if (v111 >= 2)
            {
              v111 = v113;
            }
          }

          if (prime <= v111)
          {
            prime = v111;
          }

          if (prime < v78)
          {
            if (prime)
            {
              goto LABEL_200;
            }

            v118 = v150;
            *&v150 = 0;
            if (v118)
            {
              operator delete(v118);
            }

            v78 = 0;
            *(&v150 + 1) = 0;
            v116 = -1;
            goto LABEL_231;
          }

          v78 = *(&v150 + 1);
          v116 = *(&v150 + 1) - 1;
          if ((*(&v150 + 1) & (*(&v150 + 1) - 1)) == 0)
          {
            goto LABEL_231;
          }

          goto LABEL_247;
        }

LABEL_200:
        if (prime >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v103 = operator new(8 * prime);
        v104 = v150;
        *&v150 = v103;
        if (v104)
        {
          operator delete(v104);
          v103 = v150;
        }

        *(&v150 + 1) = prime;
        bzero(v103, 8 * prime);
        v105 = v151;
        if (!v151)
        {
          goto LABEL_229;
        }

        v106 = *(v151 + 8);
        v107 = prime - 1;
        if ((prime & (prime - 1)) == 0)
        {
          v108 = v106 & v107;
          *(v103 + v108) = &v151;
          while (1)
          {
            v109 = *v105;
            if (!*v105)
            {
              break;
            }

            v110 = v109[1] & v107;
            if (v110 == v108)
            {
              v105 = *v105;
            }

            else if (*(v103 + v110))
            {
              *v105 = *v109;
              *v109 = **(v103 + v110);
              **(v103 + v110) = v109;
            }

            else
            {
              *(v103 + v110) = v105;
              v105 = v109;
              v108 = v110;
            }
          }

          goto LABEL_229;
        }

        if (v106 >= prime)
        {
          v106 %= prime;
        }

        *(v103 + v106) = &v151;
        v114 = *v105;
        if (!*v105)
        {
LABEL_229:
          v78 = prime;
LABEL_230:
          v116 = v78 - 1;
          if ((v78 & (v78 - 1)) == 0)
          {
LABEL_231:
            v80 = v116 & v77;
            v97 = v150;
            v98 = *(v150 + 8 * v80);
            if (!v98)
            {
              goto LABEL_232;
            }

LABEL_184:
            *v95 = *v98;
            goto LABEL_185;
          }

LABEL_247:
          if (v77 >= v78)
          {
            v80 = v77 % v78;
            v97 = v150;
            v98 = *(v150 + 8 * (v77 % v78));
            if (!v98)
            {
              goto LABEL_232;
            }
          }

          else
          {
            v80 = v77;
            v97 = v150;
            v98 = *(v150 + 8 * v77);
            if (!v98)
            {
              goto LABEL_232;
            }
          }

          goto LABEL_184;
        }

        while (1)
        {
LABEL_224:
          v115 = v114[1];
          if (v115 >= prime)
          {
            v115 %= prime;
          }

          if (v115 == v106)
          {
            goto LABEL_223;
          }

          if (*(v103 + v115))
          {
            break;
          }

          *(v103 + v115) = v105;
          v105 = v114;
          v114 = *v114;
          v106 = v115;
          if (!v114)
          {
            goto LABEL_229;
          }
        }

        *v105 = *v114;
        *v114 = **(v103 + v115);
        **(v103 + v115) = v114;
        v114 = v105;
LABEL_223:
        v105 = v114;
        v114 = *v114;
        if (!v114)
        {
          goto LABEL_229;
        }

        goto LABEL_224;
      }

      while (1)
      {
        v86 = v82[1];
        if (v86 == v77)
        {
          v87 = *(v82 + 39);
          v88 = v87;
          if (v87 < 0)
          {
            v87 = v82[3];
          }

          if (v87 == v84)
          {
            v89 = v88 >= 0 ? (v82 + 2) : v82[2];
            if (!memcmp(v89, v85, v84))
            {
LABEL_173:
              if (v83 < 0)
              {
LABEL_187:
                operator delete(__dst);
              }

LABEL_188:
              if (buf[0].__begin_)
              {
                buf[0].__end_ = buf[0].__begin_;
                operator delete(buf[0].__begin_);
              }

              if (++v57 == v134)
              {
                goto LABEL_252;
              }

              goto LABEL_101;
            }
          }
        }

        else
        {
          if (v86 >= v78)
          {
            v86 %= v78;
          }

          if (v86 != v80)
          {
            goto LABEL_181;
          }
        }

        v82 = *v82;
        if (!v82)
        {
          goto LABEL_181;
        }
      }
    }

    v65 = &buf[1];
    if (buf[0].__end_ != buf[0].__begin_)
    {
      v65 = buf[0].__begin_;
    }

    i = v65->first.__i_;
    p_i = &buf[0].__begin_->second.__i_;
    if (buf[0].__end_ == buf[0].__begin_)
    {
      p_i = &buf[1].__end_;
    }

    v68 = *p_i;
    v69 = *p_i - i;
    if (v69 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v69 > 0x16)
    {
      if ((v69 | 7) == 0x17)
      {
        v94 = 25;
      }

      else
      {
        v94 = (v69 | 7) + 1;
      }

      v70 = operator new(v94);
      *(&__dst + 1) = v69;
      v136 = v94 | 0x8000000000000000;
      *&__dst = v70;
      if (v68 == i)
      {
        goto LABEL_125;
      }
    }

    else
    {
      HIBYTE(v136) = *p_i - i;
      v70 = &__dst;
      if (v68 == i)
      {
LABEL_125:
        *(v70 + v69) = 0;
        v71 = HIBYTE(v136);
        v72 = *(&__dst + 1);
        v73 = __dst;
        goto LABEL_127;
      }
    }

    memmove(v70, i, v69);
    goto LABEL_125;
  }

  (v56->__on_zero_shared)(v56);
  std::__shared_weak_count::__release_weak(v56);
  std::locale::~locale(&v137);
  if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_98;
  }

LABEL_95:
  v57 = v153;
  v134 = v154;
  if (v153 != v154)
  {
    goto LABEL_101;
  }

LABEL_252:
  v119 = *(&v151 + 1);
  v120 = v147;
  if (v147 && !atomic_fetch_add((v147 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v120->__on_zero_shared)(v120);
    std::__shared_weak_count::__release_weak(v120);
  }

  std::locale::~locale(v144);
  v121 = v149;
  if (v149 && !atomic_fetch_add((v149 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v121->__on_zero_shared)(v121);
    std::__shared_weak_count::__release_weak(v121);
  }

  std::locale::~locale(v148);
  operator delete(v4);
  v122 = v151;
  if (v151)
  {
    do
    {
      v130 = *v122;
      if (*(v122 + 39) < 0)
      {
        v131 = v122;
        operator delete(v122[2]);
        v122 = v131;
      }

      operator delete(v122);
      v122 = v130;
    }

    while (v130);
  }

  v123 = v150;
  *&v150 = 0;
  if (v123)
  {
    operator delete(v123);
  }

  v124 = v153;
  if (v153)
  {
    v125 = v154;
    v126 = v153;
    if (v154 != v153)
    {
      do
      {
        v127 = *(v125 - 1);
        v125 -= 3;
        if (v127 < 0)
        {
          operator delete(*v125);
        }
      }

      while (v125 != v124);
      v126 = v153;
    }

    v154 = v124;
    operator delete(v126);
  }

  v128 = *MEMORY[0x29EDCA608];
  return v119;
}

void sub_29758C780(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::unordered_set<std::string>::~unordered_set[abi:ne200100](&v3);
  std::vector<std::string>::~vector[abi:ne200100](&v4);
  _Unwind_Resume(a1);
}

void sub_29758C7B0(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x29758C7B8);
  }

  JUMPOUT(0x29758C634);
}

uint64_t util::compareTwoStringsWithPattern(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v93 = 0xAAAAAAAAAAAAAA00;
  v90[1].__end_cap_.__value_ = 0xAAAAAAAAAAAAAAAALL;
  v96 = v5;
  v91 = 0;
  v92 = 0;
  v94 = 0;
  v95 = 0;
  LOBYTE(v96) = 0;
  BYTE8(v96) = 0;
  v97 = 0;
  memset(v90, 0, 41);
  v88 = v5;
  v89 = v5;
  *&v86[0].__locale_ = v5;
  v87 = v5;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v86, a3, 0);
  v83 = 0;
  v84 = 0;
  v85 = 0;
  __p = 0;
  v81 = 0;
  v82 = 0;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v102 = 0xAAAAAAAAAAAAAA00;
  *(&v99[1] + 1) = 0xAAAAAAAAAAAAAAAALL;
  v105 = v6;
  v100 = 0;
  v101 = 0;
  v103 = 0;
  v104 = 0;
  LOBYTE(v105) = 0;
  BYTE8(v105) = 0;
  v106 = 0;
  __dst = 0u;
  v99[0] = 0u;
  v7 = *(a1 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 8);
  }

  *(v99 + 9) = 0uLL;
  v9 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v86, v8, (v8 + v7), &__dst, 0);
  v10 = *(a1 + 23);
  if ((v10 & 0x80u) == 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a1 + 8);
  }

  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v90, v11, (v11 + v10), &__dst, 0);
  if (__dst)
  {
    *(&__dst + 1) = __dst;
    operator delete(__dst);
  }

  if (!v9)
  {
LABEL_124:
    v38 = 0;
    v61 = __p;
    if (!__p)
    {
      goto LABEL_135;
    }

    goto LABEL_130;
  }

  v79 = a2;
  end = v90[0].__end_;
  begin = v90[0].__begin_;
  if (v90[0].__begin_ != v90[0].__end_)
  {
    while (!begin->matched)
    {
      __dst = 0uLL;
      *&v99[0] = 0;
      v20 = v84;
      v19 = v85;
      if (v84 >= v85)
      {
LABEL_26:
        v21 = v83;
        v22 = v20 - v83;
        v23 = 0xAAAAAAAAAAAAAAABLL * (v20 - v83);
        v24 = v23 + 1;
        if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__throw_length_error[abi:ne200100]();
        }

        v25 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v83) >> 3);
        if (2 * v25 > v24)
        {
          v24 = 2 * v25;
        }

        if (v25 >= 0x555555555555555)
        {
          v26 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v26 = v24;
        }

        if (v26)
        {
          if (v26 > 0xAAAAAAAAAAAAAAALL)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v27 = operator new(24 * v26);
        }

        else
        {
          v27 = 0;
        }

        v29 = &v27[24 * v23];
        v30 = &v27[24 * v26];
        *v29 = __dst;
        *(v29 + 2) = *&v99[0];
        v14 = (v29 + 24);
        v31 = &v29[-v22];
        memcpy(&v29[-v22], v83, v22);
        v83 = v31;
        v85 = v30;
        if (v21)
        {
          operator delete(v21);
        }

        goto LABEL_17;
      }

LABEL_16:
      *v20 = __dst;
      v20[2] = *&v99[0];
      v14 = v20 + 3;
LABEL_17:
      v84 = v14;
      if (++begin == end)
      {
        goto LABEL_44;
      }
    }

    i = begin->first.__i_;
    v16 = begin->second.__i_;
    v17 = v16 - begin->first.__i_;
    if (v17 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v17 > 0x16)
    {
      if ((v17 | 7) == 0x17)
      {
        v28 = 25;
      }

      else
      {
        v28 = (v17 | 7) + 1;
      }

      p_dst = operator new(v28);
      *(&__dst + 1) = v17;
      *&v99[0] = v28 | 0x8000000000000000;
      *&__dst = p_dst;
      if (v16 == i)
      {
LABEL_23:
        *(p_dst + v17) = 0;
        v20 = v84;
        v19 = v85;
        if (v84 >= v85)
        {
          goto LABEL_26;
        }

        goto LABEL_16;
      }
    }

    else
    {
      BYTE7(v99[0]) = v16 - LOBYTE(begin->first.__i_);
      p_dst = &__dst;
      if (v16 == i)
      {
        goto LABEL_23;
      }
    }

    memmove(p_dst, i, v17);
    goto LABEL_23;
  }

  v14 = 0;
LABEL_44:
  v32 = v83;
  if (v14 - v83 != 24)
  {
    v33 = v83 + 3;
    while (v33 != v14)
    {
      if (*(v32 + 23) < 0)
      {
        operator delete(*v32);
      }

      *v32 = *(v32 + 3);
      v32[2] = v32[5];
      *(v32 + 47) = 0;
      v33 = v32 + 6;
      *(v32 + 24) = 0;
      v32 += 3;
    }

    while (v14 != v32)
    {
      v34 = *(v14 - 1);
      v14 -= 3;
      if (v34 < 0)
      {
        operator delete(*v14);
      }
    }

    v84 = v32;
  }

  *&v35 = 0xAAAAAAAAAAAAAAAALL;
  *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v102 = 0xAAAAAAAAAAAAAA00;
  *(&v99[1] + 1) = 0xAAAAAAAAAAAAAAAALL;
  v105 = v35;
  v100 = 0;
  v101 = 0;
  v103 = 0;
  v104 = 0;
  LOBYTE(v105) = 0;
  BYTE8(v105) = 0;
  v106 = 0;
  __dst = 0u;
  v99[0] = 0u;
  v36 = *(v79 + 23);
  if ((v36 & 0x80u) == 0)
  {
    v37 = v79;
  }

  else
  {
    v37 = *v79;
  }

  if ((v36 & 0x80u) != 0)
  {
    v36 = *(v79 + 8);
  }

  *(v99 + 9) = 0uLL;
  v38 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v86, v37, (v37 + v36), &__dst, 0);
  v39 = *(v79 + 23);
  if ((v39 & 0x80u) == 0)
  {
    v40 = v79;
  }

  else
  {
    v40 = *v79;
  }

  if ((v39 & 0x80u) != 0)
  {
    v39 = *(v79 + 8);
  }

  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v90, v40, (v40 + v39), &__dst, 0);
  if (__dst)
  {
    *(&__dst + 1) = __dst;
    operator delete(__dst);
  }

  if (!v38)
  {
LABEL_129:
    v61 = __p;
    if (!__p)
    {
      goto LABEL_135;
    }

LABEL_130:
    v73 = v81;
    while (v73 != v61)
    {
      v74 = *(v73 - 1);
      v73 -= 3;
      if (v74 < 0)
      {
        operator delete(*v73);
      }
    }

    operator delete(v61);
    goto LABEL_135;
  }

  v42 = v90[0].__end_;
  v41 = v90[0].__begin_;
  if (v90[0].__begin_ != v90[0].__end_)
  {
    while (!v41->matched)
    {
      __dst = 0uLL;
      *&v99[0] = 0;
      v49 = v81;
      v48 = v82;
      if (v81 >= v82)
      {
LABEL_79:
        v50 = __p;
        v51 = v49 - __p;
        v52 = 0xAAAAAAAAAAAAAAABLL * (v49 - __p);
        v53 = v52 + 1;
        if (v52 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__throw_length_error[abi:ne200100]();
        }

        v54 = 0xAAAAAAAAAAAAAAABLL * ((v48 - __p) >> 3);
        if (2 * v54 > v53)
        {
          v53 = 2 * v54;
        }

        if (v54 >= 0x555555555555555)
        {
          v55 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v55 = v53;
        }

        if (v55)
        {
          if (v55 > 0xAAAAAAAAAAAAAAALL)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v56 = operator new(24 * v55);
        }

        else
        {
          v56 = 0;
        }

        v58 = &v56[24 * v52];
        v59 = &v56[24 * v55];
        *v58 = __dst;
        *(v58 + 2) = *&v99[0];
        v43 = (v58 + 24);
        v60 = &v58[-v51];
        memcpy(&v58[-v51], __p, v51);
        __p = v60;
        v82 = v59;
        if (v50)
        {
          operator delete(v50);
        }

        goto LABEL_70;
      }

LABEL_69:
      *v49 = __dst;
      v49[2] = *&v99[0];
      v43 = v49 + 3;
LABEL_70:
      v81 = v43;
      if (++v41 == v42)
      {
        goto LABEL_97;
      }
    }

    v44 = v41->first.__i_;
    v45 = v41->second.__i_;
    v46 = v45 - v41->first.__i_;
    if (v46 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v46 > 0x16)
    {
      if ((v46 | 7) == 0x17)
      {
        v57 = 25;
      }

      else
      {
        v57 = (v46 | 7) + 1;
      }

      v47 = operator new(v57);
      *(&__dst + 1) = v46;
      *&v99[0] = v57 | 0x8000000000000000;
      *&__dst = v47;
      if (v45 == v44)
      {
LABEL_76:
        *(v47 + v46) = 0;
        v49 = v81;
        v48 = v82;
        if (v81 >= v82)
        {
          goto LABEL_79;
        }

        goto LABEL_69;
      }
    }

    else
    {
      BYTE7(v99[0]) = v45 - LOBYTE(v41->first.__i_);
      v47 = &__dst;
      if (v45 == v44)
      {
        goto LABEL_76;
      }
    }

    memmove(v47, v44, v46);
    goto LABEL_76;
  }

  v43 = 0;
LABEL_97:
  v61 = __p;
  if (v43 - __p != 24)
  {
    v62 = __p;
    if (__p + 3 != v43)
    {
      v62 = __p;
      do
      {
        if (*(v62 + 23) < 0)
        {
          operator delete(*v62);
        }

        *v62 = *(v62 + 3);
        v62[2] = v62[5];
        *(v62 + 47) = 0;
        v63 = v62 + 6;
        *(v62 + 24) = 0;
        v62 += 3;
      }

      while (v63 != v43);
    }

    while (v43 != v62)
    {
      v64 = *(v43 - 1);
      v43 -= 3;
      if (v64 < 0)
      {
        operator delete(*v43);
      }
    }

    v81 = v62;
  }

  v65 = v83;
  if (v83 == v84)
  {
    v38 = 1;
    if (!__p)
    {
      goto LABEL_135;
    }

    goto LABEL_130;
  }

  do
  {
    v66 = *(v65 + 23);
    if (v66 >= 0)
    {
      v67 = *(v65 + 23);
    }

    else
    {
      v67 = v65[1];
    }

    v68 = *(v61 + 23);
    v69 = v68;
    if (v68 < 0)
    {
      v68 = v61[1];
    }

    if (v67 != v68)
    {
      v38 = 0;
      goto LABEL_129;
    }

    if (v66 >= 0)
    {
      v70 = v65;
    }

    else
    {
      v70 = *v65;
    }

    v71 = *v61;
    if (v69 >= 0)
    {
      v72 = v61;
    }

    else
    {
      v72 = *v61;
    }

    if (memcmp(v70, v72, v67))
    {
      goto LABEL_124;
    }

    v65 += 3;
    v61 += 3;
  }

  while (v65 != v84);
  v38 = 1;
  v61 = __p;
  if (__p)
  {
    goto LABEL_130;
  }

LABEL_135:
  if (v83)
  {
    v75 = v84;
    while (v75 != v83)
    {
      v76 = *(v75 - 1);
      v75 -= 3;
      if (v76 < 0)
      {
        operator delete(*v75);
      }
    }

    operator delete(v83);
  }

  v77 = v89;
  if (v89 && !atomic_fetch_add((v89 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v77->__on_zero_shared)(v77);
    std::__shared_weak_count::__release_weak(v77);
  }

  std::locale::~locale(v86);
  if (v90[0].__begin_)
  {
    v90[0].__end_ = v90[0].__begin_;
    operator delete(v90[0].__begin_);
  }

  return v38;
}